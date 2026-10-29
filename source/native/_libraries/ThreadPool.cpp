// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 13 functions

// ---- ThreadPool<RakNet::FileListTransfer::ThreadData,int>::ThreadPool  @ 0x48f4f4
/* ThreadPool<RakNet::FileListTransfer::ThreadData, int>::ThreadPool() */

ThreadPool<RakNet::FileListTransfer::ThreadData,int> * __thiscall
ThreadPool<RakNet::FileListTransfer::ThreadData,int>::ThreadPool
          (ThreadPool<RakNet::FileListTransfer::ThreadData,int> *this)

{
  RakNet::SimpleMutex::SimpleMutex((SimpleMutex *)this);
  RakNet::SimpleMutex::SimpleMutex((SimpleMutex *)(this + 4));
  RakNet::SimpleMutex::SimpleMutex((SimpleMutex *)(this + 8));
  RakNet::SimpleMutex::SimpleMutex((SimpleMutex *)(this + 0xc));
  DataStructures::Queue<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)>::Queue
            ((Queue<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)> *)(this + 0x18));
  DataStructures::Queue<RakNet::FileListTransfer::ThreadData>::Queue
            ((Queue<RakNet::FileListTransfer::ThreadData> *)(this + 0x28));
  DataStructures::Queue<int>::Queue((Queue<int> *)(this + 0x38));
  RakNet::SimpleMutex::SimpleMutex((SimpleMutex *)(this + 0x5c));
  RakNet::SignaledEvent::SignaledEvent((SignaledEvent *)(this + 0x60));
  this[0x50] = (ThreadPool<RakNet::FileListTransfer::ThreadData,int>)0x0;
  *(undefined4 *)(this + 0x54) = 0;
  *(undefined4 *)(this + 0x48) = 0;
  *(undefined4 *)(this + 0x4c) = 0;
  *(undefined4 *)(this + 0x58) = 0;
  return this;
}

// ---- ThreadPool<RakNet::FileListTransfer::ThreadData,int>::~ThreadPool  @ 0x48f5e0
/* ThreadPool<RakNet::FileListTransfer::ThreadData, int>::~ThreadPool() */

ThreadPool<RakNet::FileListTransfer::ThreadData,int> * __thiscall
ThreadPool<RakNet::FileListTransfer::ThreadData,int>::~ThreadPool
          (ThreadPool<RakNet::FileListTransfer::ThreadData,int> *this)

{
  StopThreads(this);
  Clear(this);
  RakNet::SignaledEvent::~SignaledEvent((SignaledEvent *)(this + 0x60));
  RakNet::SimpleMutex::~SimpleMutex((SimpleMutex *)(this + 0x5c));
  DataStructures::Queue<int>::~Queue((Queue<int> *)(this + 0x38));
  DataStructures::Queue<RakNet::FileListTransfer::ThreadData>::~Queue
            ((Queue<RakNet::FileListTransfer::ThreadData> *)(this + 0x28));
  DataStructures::Queue<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)>::~Queue
            ((Queue<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)> *)(this + 0x18));
  RakNet::SimpleMutex::~SimpleMutex((SimpleMutex *)(this + 0xc));
  RakNet::SimpleMutex::~SimpleMutex((SimpleMutex *)(this + 8));
  RakNet::SimpleMutex::~SimpleMutex((SimpleMutex *)(this + 4));
  RakNet::SimpleMutex::~SimpleMutex((SimpleMutex *)this);
  return this;
}

// ---- ThreadPool<RakNet::FileListTransfer::ThreadData,int>::StopThreads  @ 0x48f678
/* ThreadPool<RakNet::FileListTransfer::ThreadData, int>::StopThreads() */

void __thiscall
ThreadPool<RakNet::FileListTransfer::ThreadData,int>::StopThreads
          (ThreadPool<RakNet::FileListTransfer::ThreadData,int> *this)

{
  bool bVar1;
  
  RakNet::SimpleMutex::Lock((SimpleMutex *)(this + 0xc));
  if (this[0x50] == (ThreadPool<RakNet::FileListTransfer::ThreadData,int>)0x1) {
    this[0x50] = (ThreadPool<RakNet::FileListTransfer::ThreadData,int>)0x0;
    RakNet::SimpleMutex::Unlock((SimpleMutex *)(this + 0xc));
    bVar1 = false;
    while (!bVar1) {
      RakNet::SignaledEvent::SetEvent((SignaledEvent *)(this + 0x60));
      RakSleep(0x32);
      RakNet::SimpleMutex::Lock((SimpleMutex *)(this + 0x5c));
      if (*(int *)(this + 0x54) == 0) {
        bVar1 = true;
      }
      RakNet::SimpleMutex::Unlock((SimpleMutex *)(this + 0x5c));
    }
    RakNet::SignaledEvent::CloseEvent((SignaledEvent *)(this + 0x60));
  }
  else {
    RakNet::SimpleMutex::Unlock((SimpleMutex *)(this + 0xc));
  }
  return;
}

// ---- ThreadPool<RakNet::FileListTransfer::ThreadData,int>::StartThreads  @ 0x48f710
/* ThreadPool<RakNet::FileListTransfer::ThreadData, int>::StartThreads(int, int, void* (*)(), void
   (*)(void*)) */

undefined4 __thiscall
ThreadPool<RakNet::FileListTransfer::ThreadData,int>::StartThreads
          (ThreadPool<RakNet::FileListTransfer::ThreadData,int> *this,int param_1,int param_2,
          _func_void_ptr *param_3,_func_void_void_ptr *param_4)

{
  bool bVar1;
  int iVar2;
  undefined4 uVar3;
  int local_14;
  
  RakNet::SimpleMutex::Lock((SimpleMutex *)(this + 0xc));
  if (this[0x50] == (ThreadPool<RakNet::FileListTransfer::ThreadData,int>)0x0) {
    RakNet::SimpleMutex::Unlock((SimpleMutex *)(this + 0xc));
    RakNet::SignaledEvent::InitEvent((SignaledEvent *)(this + 0x60));
    *(_func_void_ptr **)(this + 0x10) = param_3;
    *(_func_void_void_ptr **)(this + 0x14) = param_4;
    RakNet::SimpleMutex::Lock((SimpleMutex *)(this + 0xc));
    this[0x50] = (ThreadPool<RakNet::FileListTransfer::ThreadData,int>)0x1;
    RakNet::SimpleMutex::Unlock((SimpleMutex *)(this + 0xc));
    *(undefined4 *)(this + 0x58) = 0;
    for (local_14 = 0; local_14 < param_1; local_14 = local_14 + 1) {
      iVar2 = RakNet::RakThread::Create((_func_void_ptr_void_ptr *)0x4905bd,this,0);
      if (iVar2 != 0) {
        StopThreads(this);
        return 0;
      }
    }
    bVar1 = false;
    while (!bVar1) {
      RakSleep(0x32);
      RakNet::SimpleMutex::Lock((SimpleMutex *)(this + 0x5c));
      if (*(int *)(this + 0x54) == param_1) {
        bVar1 = true;
      }
      RakNet::SimpleMutex::Unlock((SimpleMutex *)(this + 0x5c));
    }
    uVar3 = 1;
  }
  else {
    RakNet::SimpleMutex::Unlock((SimpleMutex *)(this + 0xc));
    uVar3 = 0;
  }
  return uVar3;
}

// ---- ThreadPool<RakNet::FileListTransfer::ThreadData,int>::ClearInput  @ 0x48fd54
/* ThreadPool<RakNet::FileListTransfer::ThreadData, int>::ClearInput() */

void __thiscall
ThreadPool<RakNet::FileListTransfer::ThreadData,int>::ClearInput
          (ThreadPool<RakNet::FileListTransfer::ThreadData,int> *this)

{
  DataStructures::Queue<RakNet::FileListTransfer::ThreadData>::Clear
            ((Queue<RakNet::FileListTransfer::ThreadData> *)(this + 0x28),
             "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/ThreadPool.h"
             ,0x22d);
  DataStructures::Queue<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)>::Clear
            ((Queue<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)> *)(this + 0x18),
             "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/ThreadPool.h"
             ,0x22e);
  return;
}

// ---- ThreadPool<RakNet::FileListTransfer::ThreadData,int>::LockInput  @ 0x48fe4c
/* ThreadPool<RakNet::FileListTransfer::ThreadData, int>::LockInput() */

void __thiscall
ThreadPool<RakNet::FileListTransfer::ThreadData,int>::LockInput
          (ThreadPool<RakNet::FileListTransfer::ThreadData,int> *this)

{
  RakNet::SimpleMutex::Lock((SimpleMutex *)this);
  return;
}

// ---- ThreadPool<RakNet::FileListTransfer::ThreadData,int>::InputSize  @ 0x48fe60
/* ThreadPool<RakNet::FileListTransfer::ThreadData, int>::InputSize() */

undefined4 __thiscall
ThreadPool<RakNet::FileListTransfer::ThreadData,int>::InputSize
          (ThreadPool<RakNet::FileListTransfer::ThreadData,int> *this)

{
  undefined4 uVar1;
  
  uVar1 = DataStructures::Queue<RakNet::FileListTransfer::ThreadData>::Size
                    ((Queue<RakNet::FileListTransfer::ThreadData> *)(this + 0x28));
  return uVar1;
}

// ---- ThreadPool<RakNet::FileListTransfer::ThreadData,int>::GetInputAtIndex  @ 0x48fe7c
/* ThreadPool<RakNet::FileListTransfer::ThreadData, int>::GetInputAtIndex(unsigned int) */

uint ThreadPool<RakNet::FileListTransfer::ThreadData,int>::GetInputAtIndex(uint param_1)

{
  undefined4 *puVar1;
  int in_r1;
  undefined4 uVar2;
  uint in_r2;
  undefined4 uVar3;
  undefined4 uVar4;
  
  puVar1 = (undefined4 *)
           DataStructures::Queue<RakNet::FileListTransfer::ThreadData>::operator[]
                     ((Queue<RakNet::FileListTransfer::ThreadData> *)(in_r1 + 0x28),in_r2);
  uVar2 = puVar1[1];
  uVar3 = puVar1[2];
  uVar4 = puVar1[3];
  *(undefined4 *)param_1 = *puVar1;
  *(undefined4 *)(param_1 + 4) = uVar2;
  *(undefined4 *)(param_1 + 8) = uVar3;
  *(undefined4 *)(param_1 + 0xc) = uVar4;
  uVar2 = puVar1[5];
  uVar3 = puVar1[6];
  *(undefined4 *)(param_1 + 0x10) = puVar1[4];
  *(undefined4 *)(param_1 + 0x14) = uVar2;
  *(undefined4 *)(param_1 + 0x18) = uVar3;
  return param_1;
}

// ---- ThreadPool<RakNet::FileListTransfer::ThreadData,int>::RemoveInputAtIndex  @ 0x48feac
/* ThreadPool<RakNet::FileListTransfer::ThreadData, int>::RemoveInputAtIndex(unsigned int) */

void __thiscall
ThreadPool<RakNet::FileListTransfer::ThreadData,int>::RemoveInputAtIndex
          (ThreadPool<RakNet::FileListTransfer::ThreadData,int> *this,uint param_1)

{
  DataStructures::Queue<RakNet::FileListTransfer::ThreadData>::RemoveAtIndex
            ((Queue<RakNet::FileListTransfer::ThreadData> *)(this + 0x28),param_1);
  DataStructures::Queue<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)>::RemoveAtIndex
            ((Queue<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)> *)(this + 0x18),
             param_1);
  return;
}

// ---- ThreadPool<RakNet::FileListTransfer::ThreadData,int>::UnlockInput  @ 0x48fed4
/* ThreadPool<RakNet::FileListTransfer::ThreadData, int>::UnlockInput() */

void __thiscall
ThreadPool<RakNet::FileListTransfer::ThreadData,int>::UnlockInput
          (ThreadPool<RakNet::FileListTransfer::ThreadData,int> *this)

{
  RakNet::SimpleMutex::Unlock((SimpleMutex *)this);
  return;
}

// ---- ThreadPool<RakNet::FileListTransfer::ThreadData,int>::WasStarted  @ 0x49020c
/* ThreadPool<RakNet::FileListTransfer::ThreadData, int>::WasStarted() */

ThreadPool<RakNet::FileListTransfer::ThreadData,int> __thiscall
ThreadPool<RakNet::FileListTransfer::ThreadData,int>::WasStarted
          (ThreadPool<RakNet::FileListTransfer::ThreadData,int> *this)

{
  ThreadPool<RakNet::FileListTransfer::ThreadData,int> TVar1;
  
  RakNet::SimpleMutex::Lock((SimpleMutex *)(this + 0xc));
  TVar1 = this[0x50];
  RakNet::SimpleMutex::Unlock((SimpleMutex *)(this + 0xc));
  return TVar1;
}

// ---- ThreadPool<RakNet::FileListTransfer::ThreadData,int>::AddInput  @ 0x49023c
/* ThreadPool<RakNet::FileListTransfer::ThreadData, int>::AddInput(int
   (*)(RakNet::FileListTransfer::ThreadData, bool*, void*), RakNet::FileListTransfer::ThreadData) */

void ThreadPool<RakNet::FileListTransfer::ThreadData,int>::AddInput
               (SimpleMutex *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 local_18;
  SimpleMutex *local_14;
  undefined4 local_8;
  undefined4 uStack_4;
  
  local_18 = param_2;
  local_14 = param_1;
  local_8 = param_3;
  uStack_4 = param_4;
  RakNet::SimpleMutex::Lock(param_1);
  DataStructures::Queue<RakNet::FileListTransfer::ThreadData>::Push
            ((Queue<RakNet::FileListTransfer::ThreadData> *)(local_14 + 0x28),(ThreadData *)&local_8
             ,
             "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/ThreadPool.h"
             ,0x1ad);
  DataStructures::Queue<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)>::Push
            ((Queue<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)> *)(local_14 + 0x18),
             (_func_int_ThreadData_bool_ptr_void_ptr_conflict *)&local_18,
             "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/ThreadPool.h"
             ,0x1ae);
  RakNet::SimpleMutex::Unlock(local_14);
  RakNet::SignaledEvent::SetEvent((SignaledEvent *)(local_14 + 0x60));
  return;
}

// ---- ThreadPool<RakNet::FileListTransfer::ThreadData,int>::Clear  @ 0x4904a8
/* ThreadPool<RakNet::FileListTransfer::ThreadData, int>::Clear() */

void __thiscall
ThreadPool<RakNet::FileListTransfer::ThreadData,int>::Clear
          (ThreadPool<RakNet::FileListTransfer::ThreadData,int> *this)

{
  RakNet::SimpleMutex::Lock((SimpleMutex *)(this + 0xc));
  if (this[0x50] == (ThreadPool<RakNet::FileListTransfer::ThreadData,int>)0x0) {
    DataStructures::Queue<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)>::Clear
              ((Queue<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)> *)(this + 0x18),
               "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/ThreadPool.h"
               ,0x1f2);
    DataStructures::Queue<RakNet::FileListTransfer::ThreadData>::Clear
              ((Queue<RakNet::FileListTransfer::ThreadData> *)(this + 0x28),
               "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/ThreadPool.h"
               ,499);
    DataStructures::Queue<int>::Clear
              ((Queue<int> *)(this + 0x38),
               "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/ThreadPool.h"
               ,500);
  }
  else {
    RakNet::SimpleMutex::Unlock((SimpleMutex *)(this + 0xc));
    RakNet::SimpleMutex::Lock((SimpleMutex *)this);
    DataStructures::Queue<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)>::Clear
              ((Queue<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)> *)(this + 0x18),
               "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/ThreadPool.h"
               ,0x1e8);
    DataStructures::Queue<RakNet::FileListTransfer::ThreadData>::Clear
              ((Queue<RakNet::FileListTransfer::ThreadData> *)(this + 0x28),
               "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/ThreadPool.h"
               ,0x1e9);
    RakNet::SimpleMutex::Unlock((SimpleMutex *)this);
    RakNet::SimpleMutex::Lock((SimpleMutex *)(this + 4));
    DataStructures::Queue<int>::Clear
              ((Queue<int> *)(this + 0x38),
               "/Users/hunter/Appsomniacs/DoodleArmy2/cocos2d-x-2.2.5/projects/dam/proj.android-studio/dam/src/main/jni/../../../../../../../projects/dam/PlatformClasses/RakNet/Source/ThreadPool.h"
               ,0x1ed);
    RakNet::SimpleMutex::Unlock((SimpleMutex *)(this + 4));
  }
  return;
}
