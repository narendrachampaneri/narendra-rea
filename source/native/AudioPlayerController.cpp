// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 4 functions

// ---- AudioPlayerController::update  @ 0x6114cc
/* AudioPlayerController::update(float) */

void AudioPlayerController::update(float param_1)

{
  bool bVar1;
  char cVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 local_1c;
  undefined4 local_18;
  CkSound *local_14;
  list<CkSound*,std::allocator<CkSound*>> alStack_10 [12];
  
  std::list<CkSound*,std::allocator<CkSound*>>::list(alStack_10);
  CkUpdate();
  local_1c = std::list<CkSound*,std::allocator<CkSound*>>::end
                       ((list<CkSound*,std::allocator<CkSound*>> *)&DAT_00966728);
  local_18 = std::list<CkSound*,std::allocator<CkSound*>>::begin
                       ((list<CkSound*,std::allocator<CkSound*>> *)&DAT_00966728);
  while (iVar3 = std::_List_iterator<CkSound*>::operator!=
                           ((_List_iterator<CkSound*> *)&local_18,(_List_iterator *)&local_1c),
        iVar3 != 0) {
    puVar4 = (undefined4 *)
             std::_List_iterator<CkSound*>::operator*((_List_iterator<CkSound*> *)&local_18);
    local_14 = (CkSound *)*puVar4;
    iVar3 = (**(code **)(*(int *)local_14 + 0xc))(local_14);
    if ((iVar3 == 0) && (cVar2 = (**(code **)(*(int *)local_14 + 0x18))(local_14), cVar2 == '\x01'))
    {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (bVar1) {
      (**(code **)(*(int *)local_14 + 0xbc))(local_14);
      std::list<CkSound*,std::allocator<CkSound*>>::push_back(alStack_10,&local_14);
    }
    std::_List_iterator<CkSound*>::operator++((_List_iterator<CkSound*> *)&local_18);
  }
  while (iVar3 = std::list<CkSound*,std::allocator<CkSound*>>::size(alStack_10), iVar3 != 0) {
    puVar4 = (undefined4 *)std::list<CkSound*,std::allocator<CkSound*>>::front(alStack_10);
    local_14 = (CkSound *)*puVar4;
    std::list<CkSound*,std::allocator<CkSound*>>::pop_front(alStack_10);
    std::list<CkSound*,std::allocator<CkSound*>>::remove
              ((list<CkSound*,std::allocator<CkSound*>> *)&DAT_00966728,&local_14);
    std::map<CkSound*,int,std::less<CkSound*>,std::allocator<std::pair<CkSound*const,int>>>::erase
              ((CkSound **)&DAT_00966748);
  }
  std::list<CkSound*,std::allocator<CkSound*>>::~list(alStack_10);
  return;
}

// ---- AudioPlayerController::AudioPlayerController  @ 0x6117c4
/* AudioPlayerController::AudioPlayerController() */

AudioPlayerController * __thiscall
AudioPlayerController::AudioPlayerController(AudioPlayerController *this)

{
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(undefined ***)this = &PTR_copyWithZone_1_00937f10;
  return this;
}

// ---- AudioPlayerController::~AudioPlayerController  @ 0x614350
/* WARNING: Removing unreachable block (ram,0x00614372) */
/* AudioPlayerController::~AudioPlayerController() */

AudioPlayerController * __thiscall
AudioPlayerController::~AudioPlayerController(AudioPlayerController *this)

{
  *(undefined ***)this = &PTR_copyWithZone_1_00937f10;
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}

// ---- AudioPlayerController::~AudioPlayerController  @ 0x61438c
/* AudioPlayerController::~AudioPlayerController() */

AudioPlayerController * __thiscall
AudioPlayerController::~AudioPlayerController(AudioPlayerController *this)

{
  ~AudioPlayerController(this);
  operator_delete(this);
  return this;
}
