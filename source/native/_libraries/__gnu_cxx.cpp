// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 518 functions

// ---- __gnu_cxx::new_allocator<std::string>::deallocate  @ 0x2ec4b8
/* __gnu_cxx::new_allocator<std::string >::deallocate(std::string*, unsigned int) */

void __gnu_cxx::new_allocator<std::string>::deallocate(string *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::string>::~new_allocator  @ 0x2ec4f8
/* __gnu_cxx::new_allocator<std::string >::~new_allocator() */

new_allocator<std::string> * __thiscall
__gnu_cxx::new_allocator<std::string>::~new_allocator(new_allocator<std::string> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::string>::allocate  @ 0x2ec79c
/* __gnu_cxx::new_allocator<std::string >::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<std::string>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::string>::new_allocator  @ 0x2ec808
/* __gnu_cxx::new_allocator<std::string >::new_allocator() */

new_allocator<std::string> * __thiscall
__gnu_cxx::new_allocator<std::string>::new_allocator(new_allocator<std::string> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::string>::construct<std::string,std::string>  @ 0x2ec834
/* void __gnu_cxx::new_allocator<std::string >::construct<std::string, std::string >(std::string*,
   std::string&&) */

void __thiscall
__gnu_cxx::new_allocator<std::string>::construct<std::string,std::string>
          (new_allocator<std::string> *this,string *param_1,string *param_2)

{
  string *psVar1;
  void *pvVar2;
  
  psVar1 = std::forward<std::string>((type *)param_2);
  pvVar2 = operator_new(4,param_1);
  if (pvVar2 != (void *)0x0) {
    FUN_007c51c0(pvVar2,psVar1);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<std::string>::max_size  @ 0x2ec8f8
/* __gnu_cxx::new_allocator<std::string >::max_size() const */

undefined4 __gnu_cxx::new_allocator<std::string>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<std::string>::destroy<std::string>  @ 0x2ec954
/* void __gnu_cxx::new_allocator<std::string >::destroy<std::string >(std::string*) */

void __thiscall
__gnu_cxx::new_allocator<std::string>::destroy<std::string>
          (new_allocator<std::string> *this,string *param_1)

{
  FUN_007c5914(param_1);
  return;
}

// ---- __gnu_cxx::operator!=  @ 0x2f924c
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<std::string*,
   std::vector<std::string, std::allocator<std::string > > > const&,
   __gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string >
   > > const&) */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                  ::base((__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                  ::base((__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                          *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>::operator++  @ 0x2f9278
/* __gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string >
   > >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>> * __thiscall
__gnu_cxx::__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>::
operator++(__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
           *this)

{
  *(int *)this = *(int *)this + 4;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>::operator*  @ 0x2f9290
/* __gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string >
   > >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>::
operator*(__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>> *this
         )

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>::__normal_iterator  @ 0x2f92a0
/* __gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string >
   > >::__normal_iterator(std::string* const&) */

__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>> * __thiscall
__gnu_cxx::__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>::
__normal_iterator(__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                  *this,string **param_1)

{
  *(string **)this = *param_1;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>::base  @ 0x2f92b8
/* __gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string >
   > >::base() const */

__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>> * __thiscall
__gnu_cxx::__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>::
base(__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>> *this)

{
  return this;
}

// ---- __gnu_cxx::__alloc_traits<std::allocator<gpg::MultiplayerParticipant>>::_S_propagate_on_move_assign  @ 0x33ae90
/* __gnu_cxx::__alloc_traits<std::allocator<gpg::MultiplayerParticipant>
   >::_S_propagate_on_move_assign() */

undefined4
__gnu_cxx::__alloc_traits<std::allocator<gpg::MultiplayerParticipant>>::_S_propagate_on_move_assign
          (void)

{
  return 1;
}

// ---- __gnu_cxx::operator!=  @ 0x33c440
/* bool 
   __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*,
   std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant> > > const&,
   __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*,
   std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant> > > const&)
    */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                  ::base((__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                  ::base((__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                          *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>::operator++  @ 0x33c46c
/* __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*,
   std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant> >
   >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
* __thiscall
__gnu_cxx::
__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
::operator++(__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
             *this)

{
  *(int *)this = *(int *)this + 8;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>::operator*  @ 0x33c484
/* __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*,
   std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant> >
   >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::
__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
::operator*(__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
            *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::operator!=  @ 0x33c664
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant
   const*, std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant> > >
   const&, __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant const*,
   std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant> > > const&)
    */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                  ::base((__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                  ::base((__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                          *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>::operator++  @ 0x33c690
/* __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant const*,
   std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant> >
   >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
* __thiscall
__gnu_cxx::
__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
::operator++(__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
             *this)

{
  *(int *)this = *(int *)this + 8;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>::operator*  @ 0x33c6a8
/* __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant const*,
   std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant> >
   >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::
__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
::operator*(__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
            *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::__alloc_traits<std::allocator<GPGSEventObject>>::_S_propagate_on_copy_assign  @ 0x33cbd4
/* __gnu_cxx::__alloc_traits<std::allocator<GPGSEventObject> >::_S_propagate_on_copy_assign() */

undefined4
__gnu_cxx::__alloc_traits<std::allocator<GPGSEventObject>>::_S_propagate_on_copy_assign(void)

{
  return 0;
}

// ---- __gnu_cxx::__alloc_traits<std::allocator<GPGSEventObject>>::_S_always_equal  @ 0x33cbdc
/* __gnu_cxx::__alloc_traits<std::allocator<GPGSEventObject> >::_S_always_equal() */

undefined4 __gnu_cxx::__alloc_traits<std::allocator<GPGSEventObject>>::_S_always_equal(void)

{
  return 1;
}

// ---- __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>::__normal_iterator  @ 0x33d60c
/* __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*,
   std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant> >
   >::__normal_iterator(gpg::MultiplayerParticipant* const&) */

__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
* __thiscall
__gnu_cxx::
__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
::__normal_iterator(__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                    *this,MultiplayerParticipant **param_1)

{
  *(MultiplayerParticipant **)this = *param_1;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>::base  @ 0x33d624
/* __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant*,
   std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant> > >::base()
   const */

__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
* __thiscall
__gnu_cxx::
__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
::base(__normal_iterator<gpg::MultiplayerParticipant*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
       *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<unsigned_char>::new_allocator  @ 0x33d7e0
/* __gnu_cxx::new_allocator<unsigned char>::new_allocator() */

new_allocator<unsigned_char> * __thiscall
__gnu_cxx::new_allocator<unsigned_char>::new_allocator(new_allocator<unsigned_char> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<unsigned_char>::~new_allocator  @ 0x33d7ec
/* __gnu_cxx::new_allocator<unsigned char>::~new_allocator() */

new_allocator<unsigned_char> * __thiscall
__gnu_cxx::new_allocator<unsigned_char>::~new_allocator(new_allocator<unsigned_char> *this)

{
  return this;
}

// ---- __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>::__normal_iterator  @ 0x33d8a4
/* __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant const*,
   std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant> >
   >::__normal_iterator(gpg::MultiplayerParticipant const* const&) */

__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
* __thiscall
__gnu_cxx::
__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
::__normal_iterator(__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
                    *this,MultiplayerParticipant **param_1)

{
  *(MultiplayerParticipant **)this = *param_1;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>::base  @ 0x33d8bc
/* __gnu_cxx::__normal_iterator<gpg::MultiplayerParticipant const*,
   std::vector<gpg::MultiplayerParticipant, std::allocator<gpg::MultiplayerParticipant> > >::base()
   const */

__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
* __thiscall
__gnu_cxx::
__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
::base(__normal_iterator<gpg::MultiplayerParticipant_const*,std::vector<gpg::MultiplayerParticipant,std::allocator<gpg::MultiplayerParticipant>>>
       *this)

{
  return this;
}

// ---- __gnu_cxx::__alloc_traits<std::allocator<unsigned_char>>::_S_select_on_copy  @ 0x33d8e0
/* __gnu_cxx::__alloc_traits<std::allocator<unsigned char>
   >::_S_select_on_copy(std::allocator<unsigned char> const&) */

allocator *
__gnu_cxx::__alloc_traits<std::allocator<unsigned_char>>::_S_select_on_copy(allocator *param_1)

{
  std::allocator_traits<std::allocator<unsigned_char>>::select_on_container_copy_construction
            (param_1);
  return param_1;
}

// ---- __gnu_cxx::__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>::__normal_iterator  @ 0x33dca4
/* __gnu_cxx::__normal_iterator<unsigned char*, std::vector<unsigned char, std::allocator<unsigned
   char> > >::__normal_iterator(unsigned char* const&) */

__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>> *
__thiscall
__gnu_cxx::
__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>::
__normal_iterator(__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>
                  *this,uchar **param_1)

{
  *(uchar **)this = *param_1;
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>::~new_allocator  @ 0x33e51c
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const,
   std::vector<std::vector<unsigned char, std::allocator<unsigned char> >,
   std::allocator<std::vector<unsigned char, std::allocator<unsigned char> > > > > >
   >::~new_allocator() */

new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
* __thiscall
__gnu_cxx::
new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
::~new_allocator(new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
                 *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>>::~new_allocator  @ 0x33e5b8
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, int> >
   >::~new_allocator() */

new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>>::~new_allocator
          (new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>> *this)

{
  return this;
}

// ---- __gnu_cxx::__normal_iterator<unsigned_char_const*,std::vector<unsigned_char,std::allocator<unsigned_char>>>::__normal_iterator  @ 0x33f110
/* __gnu_cxx::__normal_iterator<unsigned char const*, std::vector<unsigned char,
   std::allocator<unsigned char> > >::__normal_iterator(unsigned char const* const&) */

__normal_iterator<unsigned_char_const*,std::vector<unsigned_char,std::allocator<unsigned_char>>> *
__thiscall
__gnu_cxx::
__normal_iterator<unsigned_char_const*,std::vector<unsigned_char,std::allocator<unsigned_char>>>::
__normal_iterator(__normal_iterator<unsigned_char_const*,std::vector<unsigned_char,std::allocator<unsigned_char>>>
                  *this,uchar **param_1)

{
  *(uchar **)this = *param_1;
  return this;
}

// ---- __gnu_cxx::new_allocator<GPGSEventObject>::deallocate  @ 0x33fc30
/* __gnu_cxx::new_allocator<GPGSEventObject>::deallocate(GPGSEventObject*, unsigned int) */

void __gnu_cxx::new_allocator<GPGSEventObject>::deallocate(GPGSEventObject *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::__normal_iterator<GPGSEventObject_const*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>::__normal_iterator  @ 0x33fc58
/* __gnu_cxx::__normal_iterator<GPGSEventObject const*, std::vector<GPGSEventObject,
   std::allocator<GPGSEventObject> > >::__normal_iterator(GPGSEventObject const* const&) */

__normal_iterator<GPGSEventObject_const*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
* __thiscall
__gnu_cxx::
__normal_iterator<GPGSEventObject_const*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
::__normal_iterator(__normal_iterator<GPGSEventObject_const*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
                    *this,GPGSEventObject **param_1)

{
  *(GPGSEventObject **)this = *param_1;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>::__normal_iterator  @ 0x33fc90
/* __gnu_cxx::__normal_iterator<GPGSEventObject*, std::vector<GPGSEventObject,
   std::allocator<GPGSEventObject> > >::__normal_iterator(GPGSEventObject* const&) */

__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>> *
__thiscall
__gnu_cxx::
__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>::
__normal_iterator(__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
                  *this,GPGSEventObject **param_1)

{
  *(GPGSEventObject **)this = *param_1;
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>::destroy<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>  @ 0x33fe88
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const,
   std::vector<std::vector<unsigned char, std::allocator<unsigned char> >,
   std::allocator<std::vector<unsigned char, std::allocator<unsigned char> > > > > >
   >::destroy<std::_Rb_tree_node<std::pair<std::string const, std::vector<std::vector<unsigned char,
   std::allocator<unsigned char> >, std::allocator<std::vector<unsigned char,
   std::allocator<unsigned char> > > > > > >(std::_Rb_tree_node<std::pair<std::string const,
   std::vector<std::vector<unsigned char, std::allocator<unsigned char> >,
   std::allocator<std::vector<unsigned char, std::allocator<unsigned char> > > > > >*) */

void __thiscall
__gnu_cxx::
new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
::
destroy<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
          (new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
           *this,_Rb_tree_node *param_1)

{
  std::
  _Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>
  ::~_Rb_tree_node((_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>
                    *)param_1);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>>::destroy<std::_Rb_tree_node<std::pair<std::string_const,int>>>  @ 0x33ff34
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, int> >
   >::destroy<std::_Rb_tree_node<std::pair<std::string const, int> >
   >(std::_Rb_tree_node<std::pair<std::string const, int> >*) */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>>::
destroy<std::_Rb_tree_node<std::pair<std::string_const,int>>>
          (new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>> *this,
          _Rb_tree_node *param_1)

{
  std::_Rb_tree_node<std::pair<std::string_const,int>>::~_Rb_tree_node
            ((_Rb_tree_node<std::pair<std::string_const,int>> *)param_1);
  return;
}

// ---- __gnu_cxx::new_allocator<GPGSEventObject>::~new_allocator  @ 0x33ff7c
/* __gnu_cxx::new_allocator<GPGSEventObject>::~new_allocator() */

new_allocator<GPGSEventObject> * __thiscall
__gnu_cxx::new_allocator<GPGSEventObject>::~new_allocator(new_allocator<GPGSEventObject> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<GPGSEventObject>::construct<GPGSEventObject,GPGSEventObject_const&>  @ 0x340030
/* void __gnu_cxx::new_allocator<GPGSEventObject>::construct<GPGSEventObject, GPGSEventObject
   const&>(GPGSEventObject*, GPGSEventObject const&) */

void __thiscall
__gnu_cxx::new_allocator<GPGSEventObject>::construct<GPGSEventObject,GPGSEventObject_const&>
          (new_allocator<GPGSEventObject> *this,GPGSEventObject *param_1,GPGSEventObject *param_2)

{
  GPGSEventObject *pGVar1;
  GPGSEventObject *this_00;
  
  pGVar1 = std::forward<GPGSEventObject_const&>((type *)param_2);
  this_00 = operator_new(0xc,param_1);
  if (this_00 != (GPGSEventObject *)0x0) {
    GPGSEventObject::GPGSEventObject(this_00,pGVar1);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<GPGSEventObject>::allocate  @ 0x340090
/* __gnu_cxx::new_allocator<GPGSEventObject>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<GPGSEventObject>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0xc);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::~new_allocator  @ 0x340354
/* __gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::~new_allocator() */

new_allocator<gpg::MultiplayerParticipant> * __thiscall
__gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::~new_allocator
          (new_allocator<gpg::MultiplayerParticipant> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::deallocate  @ 0x340360
/* __gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::deallocate(gpg::MultiplayerParticipant*,
   unsigned int) */

void __gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::deallocate
               (MultiplayerParticipant *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<unsigned_char>::deallocate  @ 0x340474
/* __gnu_cxx::new_allocator<unsigned char>::deallocate(unsigned char*, unsigned int) */

void __gnu_cxx::new_allocator<unsigned_char>::deallocate(uchar *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<unsigned_char>::new_allocator  @ 0x34051c
/* __gnu_cxx::new_allocator<unsigned char>::new_allocator(__gnu_cxx::new_allocator<unsigned char>
   const&) */

new_allocator * __gnu_cxx::new_allocator<unsigned_char>::new_allocator(new_allocator *param_1)

{
  return param_1;
}

// ---- __gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::construct<gpg::MultiplayerParticipant,gpg::MultiplayerParticipant_const&>  @ 0x3405c0
/* void 
   __gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::construct<gpg::MultiplayerParticipant,
   gpg::MultiplayerParticipant const&>(gpg::MultiplayerParticipant*, gpg::MultiplayerParticipant
   const&) */

void __thiscall
__gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::
construct<gpg::MultiplayerParticipant,gpg::MultiplayerParticipant_const&>
          (new_allocator<gpg::MultiplayerParticipant> *this,MultiplayerParticipant *param_1,
          MultiplayerParticipant *param_2)

{
  MultiplayerParticipant *pMVar1;
  MultiplayerParticipant *this_00;
  
  pMVar1 = std::forward<gpg::MultiplayerParticipant_const&>((type *)param_2);
  this_00 = operator_new(8,param_1);
  if (this_00 != (MultiplayerParticipant *)0x0) {
    gpg::MultiplayerParticipant::MultiplayerParticipant(this_00,pMVar1);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::allocate  @ 0x340620
/* __gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 3);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>::construct<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::vector<unsigned_char,std::allocator<unsigned_char>>const&>  @ 0x340a50
/* void __gnu_cxx::new_allocator<std::vector<unsigned char, std::allocator<unsigned char> >
   >::construct<std::vector<unsigned char, std::allocator<unsigned char> >, std::vector<unsigned
   char, std::allocator<unsigned char> > const&>(std::vector<unsigned char, std::allocator<unsigned
   char> >*, std::vector<unsigned char, std::allocator<unsigned char> > const&) */

void __thiscall
__gnu_cxx::new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>::
construct<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::vector<unsigned_char,std::allocator<unsigned_char>>const&>
          (new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>> *this,
          vector *param_1,vector *param_2)

{
  vector *pvVar1;
  vector<unsigned_char,std::allocator<unsigned_char>> *this_00;
  
  pvVar1 = std::forward<std::vector<unsigned_char,std::allocator<unsigned_char>>const&>
                     ((type *)param_2);
  this_00 = operator_new(0xc,param_1);
  if (this_00 != (vector<unsigned_char,std::allocator<unsigned_char>> *)0x0) {
    std::vector<unsigned_char,std::allocator<unsigned_char>>::vector(this_00,pvVar1);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>::allocate  @ 0x340ab0
/* __gnu_cxx::new_allocator<std::vector<unsigned char, std::allocator<unsigned char> >
   >::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>::allocate
                 (uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0xc);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>::deallocate  @ 0x340b5c
/* __gnu_cxx::new_allocator<std::vector<unsigned char, std::allocator<unsigned char> >
   >::deallocate(std::vector<unsigned char, std::allocator<unsigned char> >*, unsigned int) */

void __gnu_cxx::new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>::deallocate
               (vector *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>::new_allocator  @ 0x340d74
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const,
   std::vector<std::vector<unsigned char, std::allocator<unsigned char> >,
   std::allocator<std::vector<unsigned char, std::allocator<unsigned char> > > > > >
   >::new_allocator() */

new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
* __thiscall
__gnu_cxx::
new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
::new_allocator(new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
                *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>::deallocate  @ 0x340db4
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const,
   std::vector<std::vector<unsigned char, std::allocator<unsigned char> >,
   std::allocator<std::vector<unsigned char, std::allocator<unsigned char> > > > > >
   >::deallocate(std::_Rb_tree_node<std::pair<std::string const, std::vector<std::vector<unsigned
   char, std::allocator<unsigned char> >, std::allocator<std::vector<unsigned char,
   std::allocator<unsigned char> > > > > >*, unsigned int) */

void __gnu_cxx::
     new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
     ::deallocate(_Rb_tree_node *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>>::new_allocator  @ 0x340dcc
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, int> >
   >::new_allocator() */

new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>>::new_allocator
          (new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>>::deallocate  @ 0x340dd8
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, int> >
   >::deallocate(std::_Rb_tree_node<std::pair<std::string const, int> >*, unsigned int) */

void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>>::deallocate
               (_Rb_tree_node *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<GPGSEventObject>::new_allocator  @ 0x340df0
/* __gnu_cxx::new_allocator<GPGSEventObject>::new_allocator() */

new_allocator<GPGSEventObject> * __thiscall
__gnu_cxx::new_allocator<GPGSEventObject>::new_allocator(new_allocator<GPGSEventObject> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<GPGSEventObject>::max_size  @ 0x340e40
/* __gnu_cxx::new_allocator<GPGSEventObject>::max_size() const */

undefined4 __gnu_cxx::new_allocator<GPGSEventObject>::max_size(void)

{
  return 0x15555555;
}

// ---- __gnu_cxx::new_allocator<GPGSEventObject>::destroy<GPGSEventObject>  @ 0x340e88
/* void __gnu_cxx::new_allocator<GPGSEventObject>::destroy<GPGSEventObject>(GPGSEventObject*) */

void __thiscall
__gnu_cxx::new_allocator<GPGSEventObject>::destroy<GPGSEventObject>
          (new_allocator<GPGSEventObject> *this,GPGSEventObject *param_1)

{
  GPGSEventObject::~GPGSEventObject(param_1);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>>::allocate  @ 0x340e9c
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, int> >
   >::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>>::allocate
                 (uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0x18);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::new_allocator  @ 0x340f54
/* __gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::new_allocator(__gnu_cxx::new_allocator<gpg::MultiplayerParticipant>
   const&) */

new_allocator *
__gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::new_allocator(new_allocator *param_1)

{
  return param_1;
}

// ---- __gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::new_allocator  @ 0x340f64
/* __gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::new_allocator() */

new_allocator<gpg::MultiplayerParticipant> * __thiscall
__gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::new_allocator
          (new_allocator<gpg::MultiplayerParticipant> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<unsigned_char>::allocate  @ 0x340fc0
/* __gnu_cxx::new_allocator<unsigned char>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<unsigned_char>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((uint)param_2);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::max_size  @ 0x3410a0
/* __gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::max_size() const */

undefined4 __gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::max_size(void)

{
  return 0x1fffffff;
}

// ---- __gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::destroy<gpg::MultiplayerParticipant>  @ 0x3410d0
/* void 
   __gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::destroy<gpg::MultiplayerParticipant>(gpg::MultiplayerParticipant*)
    */

void __thiscall
__gnu_cxx::new_allocator<gpg::MultiplayerParticipant>::destroy<gpg::MultiplayerParticipant>
          (new_allocator<gpg::MultiplayerParticipant> *this,MultiplayerParticipant *param_1)

{
  gpg::MultiplayerParticipant::~MultiplayerParticipant(param_1);
  return;
}

// ---- __gnu_cxx::operator==  @ 0x3410f4
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<unsigned char*,
   std::vector<unsigned char, std::allocator<unsigned char> > > const&,
   __gnu_cxx::__normal_iterator<unsigned char*, std::vector<unsigned char, std::allocator<unsigned
   char> > > const&) */

bool __gnu_cxx::operator==(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>
                  ::base((__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>
                  ::base((__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>
                          *)param_2);
  return iVar2 == *piVar1;
}

// ---- __gnu_cxx::operator!=  @ 0x341120
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<unsigned char*,
   std::vector<unsigned char, std::allocator<unsigned char> > > const&,
   __gnu_cxx::__normal_iterator<unsigned char*, std::vector<unsigned char, std::allocator<unsigned
   char> > > const&) */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>
                  ::base((__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>
                  ::base((__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>
                          *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::__is_null_pointer<__gnu_cxx::__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>>  @ 0x34114c
/* bool __gnu_cxx::__is_null_pointer<__gnu_cxx::__normal_iterator<unsigned char*,
   std::vector<unsigned char, std::allocator<unsigned char> > >
   >(__gnu_cxx::__normal_iterator<unsigned char*, std::vector<unsigned char, std::allocator<unsigned
   char> > >) */

bool __gnu_cxx::
     __is_null_pointer<__gnu_cxx::__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>>
               (void)

{
  return false;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>::allocate  @ 0x3411cc
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const,
   std::vector<std::vector<unsigned char, std::allocator<unsigned char> >,
   std::allocator<std::vector<unsigned char, std::allocator<unsigned char> > > > > >
   >::allocate(unsigned int, void const*) */

void * __gnu_cxx::
       new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
       ::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 5);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>::max_size  @ 0x341294
/* __gnu_cxx::new_allocator<std::vector<unsigned char, std::allocator<unsigned char> > >::max_size()
   const */

undefined4
__gnu_cxx::new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>::max_size(void)

{
  return 0x15555555;
}

// ---- __gnu_cxx::new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>::destroy<std::vector<unsigned_char,std::allocator<unsigned_char>>>  @ 0x3412dc
/* void __gnu_cxx::new_allocator<std::vector<unsigned char, std::allocator<unsigned char> >
   >::destroy<std::vector<unsigned char, std::allocator<unsigned char> > >(std::vector<unsigned
   char, std::allocator<unsigned char> >*) */

void __thiscall
__gnu_cxx::new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>::
destroy<std::vector<unsigned_char,std::allocator<unsigned_char>>>
          (new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>> *this,
          vector *param_1)

{
  std::vector<unsigned_char,std::allocator<unsigned_char>>::~vector
            ((vector<unsigned_char,std::allocator<unsigned_char>> *)param_1);
  return;
}

// ---- __gnu_cxx::operator!=  @ 0x3414ac
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<GPGSEventObject*,
   std::vector<GPGSEventObject, std::allocator<GPGSEventObject> > > const&,
   __gnu_cxx::__normal_iterator<GPGSEventObject*, std::vector<GPGSEventObject,
   std::allocator<GPGSEventObject> > > const&) */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
                  ::base((__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
                  ::base((__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
                          *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>::operator++  @ 0x3414d8
/* __gnu_cxx::__normal_iterator<GPGSEventObject*, std::vector<GPGSEventObject,
   std::allocator<GPGSEventObject> > >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>> *
__thiscall
__gnu_cxx::
__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>::
operator++(__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
           *this)

{
  *(int *)this = *(int *)this + 0xc;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>::operator*  @ 0x3414f0
/* __gnu_cxx::__normal_iterator<GPGSEventObject*, std::vector<GPGSEventObject,
   std::allocator<GPGSEventObject> > >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::
__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>::
operator*(__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
          *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>>::max_size  @ 0x341674
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, int> > >::max_size()
   const */

undefined4
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>>::max_size(void)

{
  return 0xaaaaaaa;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>>::construct<std::_Rb_tree_node<std::pair<std::string_const,int>>,std::piecewise_construct_t_const&,std::tuple<std::string_const&>,std::tuple<>>  @ 0x341688
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, int> >
   >::construct<std::_Rb_tree_node<std::pair<std::string const, int> >, std::piecewise_construct_t
   const&, std::tuple<std::string const&>, std::tuple<> >(std::_Rb_tree_node<std::pair<std::string
   const, int> >*, std::piecewise_construct_t const&, std::tuple<std::string const&>&&,
   std::tuple<>&&) */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>>::
construct<std::_Rb_tree_node<std::pair<std::string_const,int>>,std::piecewise_construct_t_const&,std::tuple<std::string_const&>,std::tuple<>>
          (new_allocator<std::_Rb_tree_node<std::pair<std::string_const,int>>> *this,
          _Rb_tree_node *param_1,piecewise_construct_t *param_2,tuple *param_3,tuple *param_4)

{
  piecewise_construct_t *ppVar1;
  tuple *ptVar2;
  tuple *ptVar3;
  _Rb_tree_node<std::pair<std::string_const,int>> *this_00;
  
  ppVar1 = std::forward<std::piecewise_construct_t_const&>((type *)param_2);
  ptVar2 = std::forward<std::tuple<std::string_const&>>((type *)param_3);
  ptVar3 = std::forward<std::tuple<>>((type *)param_4);
  this_00 = operator_new(0x18,param_1);
  if (this_00 != (_Rb_tree_node<std::pair<std::string_const,int>> *)0x0) {
    std::_Rb_tree_node<std::pair<std::string_const,int>>::
    _Rb_tree_node<std::piecewise_construct_t_const&,std::tuple<std::string_const&>,std::tuple<>>
              (this_00,ppVar1,ptVar2,ptVar3);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<unsigned_char>::max_size  @ 0x3416e0
/* __gnu_cxx::new_allocator<unsigned char>::max_size() const */

undefined4 __gnu_cxx::new_allocator<unsigned_char>::max_size(void)

{
  return 0xffffffff;
}

// ---- __gnu_cxx::__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>::base  @ 0x3417f0
/* __gnu_cxx::__normal_iterator<unsigned char*, std::vector<unsigned char, std::allocator<unsigned
   char> > >::base() const */

__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>> *
__thiscall
__gnu_cxx::
__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>::base
          (__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>
           *this)

{
  return this;
}

// ---- __gnu_cxx::__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>::operator++  @ 0x34182c
/* __gnu_cxx::__normal_iterator<unsigned char*, std::vector<unsigned char, std::allocator<unsigned
   char> > >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>> *
__thiscall
__gnu_cxx::
__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>::
operator++(__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>
           *this)

{
  *(int *)this = *(int *)this + 1;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>::operator*  @ 0x341844
/* __gnu_cxx::__normal_iterator<unsigned char*, std::vector<unsigned char, std::allocator<unsigned
   char> > >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::
__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>::
operator*(__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>
          *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>::max_size  @ 0x341854
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const,
   std::vector<std::vector<unsigned char, std::allocator<unsigned char> >,
   std::allocator<std::vector<unsigned char, std::allocator<unsigned char> > > > > > >::max_size()
   const */

undefined4
__gnu_cxx::
new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
::max_size(void)

{
  return 0x7ffffff;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>::construct<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>,std::piecewise_construct_t_const&,std::tuple<std::string_const&>,std::tuple<>>  @ 0x341864
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const,
   std::vector<std::vector<unsigned char, std::allocator<unsigned char> >,
   std::allocator<std::vector<unsigned char, std::allocator<unsigned char> > > > > >
   >::construct<std::_Rb_tree_node<std::pair<std::string const, std::vector<std::vector<unsigned
   char, std::allocator<unsigned char> >, std::allocator<std::vector<unsigned char,
   std::allocator<unsigned char> > > > > >, std::piecewise_construct_t const&,
   std::tuple<std::string const&>, std::tuple<> >(std::_Rb_tree_node<std::pair<std::string const,
   std::vector<std::vector<unsigned char, std::allocator<unsigned char> >,
   std::allocator<std::vector<unsigned char, std::allocator<unsigned char> > > > > >*,
   std::piecewise_construct_t const&, std::tuple<std::string const&>&&, std::tuple<>&&) */

void __thiscall
__gnu_cxx::
new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
::
construct<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>,std::piecewise_construct_t_const&,std::tuple<std::string_const&>,std::tuple<>>
          (new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
           *this,_Rb_tree_node *param_1,piecewise_construct_t *param_2,tuple *param_3,tuple *param_4
          )

{
  piecewise_construct_t *ppVar1;
  tuple *ptVar2;
  tuple *ptVar3;
  _Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>
  *this_00;
  
  ppVar1 = std::forward<std::piecewise_construct_t_const&>((type *)param_2);
  ptVar2 = std::forward<std::tuple<std::string_const&>>((type *)param_3);
  ptVar3 = std::forward<std::tuple<>>((type *)param_4);
  this_00 = operator_new(0x20,param_1);
  if (this_00 !=
      (_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>
       *)0x0) {
    std::
    _Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>
    ::_Rb_tree_node<std::piecewise_construct_t_const&,std::tuple<std::string_const&>,std::tuple<>>
              (this_00,ppVar1,ptVar2,ptVar3);
  }
  return;
}

// ---- __gnu_cxx::operator!=  @ 0x341988
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<GPGSEventObject const*,
   std::vector<GPGSEventObject, std::allocator<GPGSEventObject> > > const&,
   __gnu_cxx::__normal_iterator<GPGSEventObject const*, std::vector<GPGSEventObject,
   std::allocator<GPGSEventObject> > > const&) */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<GPGSEventObject_const*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
                  ::base((__normal_iterator<GPGSEventObject_const*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<GPGSEventObject_const*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
                  ::base((__normal_iterator<GPGSEventObject_const*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
                          *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<GPGSEventObject_const*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>::operator++  @ 0x3419b4
/* __gnu_cxx::__normal_iterator<GPGSEventObject const*, std::vector<GPGSEventObject,
   std::allocator<GPGSEventObject> > >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<GPGSEventObject_const*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
* __thiscall
__gnu_cxx::
__normal_iterator<GPGSEventObject_const*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
::operator++(__normal_iterator<GPGSEventObject_const*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
             *this)

{
  *(int *)this = *(int *)this + 0xc;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<GPGSEventObject_const*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>::operator*  @ 0x3419cc
/* __gnu_cxx::__normal_iterator<GPGSEventObject const*, std::vector<GPGSEventObject,
   std::allocator<GPGSEventObject> > >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::
__normal_iterator<GPGSEventObject_const*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
::operator*(__normal_iterator<GPGSEventObject_const*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
            *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::__normal_iterator<GPGSEventObject_const*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>::base  @ 0x341a18
/* __gnu_cxx::__normal_iterator<GPGSEventObject const*, std::vector<GPGSEventObject,
   std::allocator<GPGSEventObject> > >::base() const */

__normal_iterator<GPGSEventObject_const*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
* __thiscall
__gnu_cxx::
__normal_iterator<GPGSEventObject_const*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
::base(__normal_iterator<GPGSEventObject_const*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
       *this)

{
  return this;
}

// ---- __gnu_cxx::__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>::base  @ 0x341a24
/* __gnu_cxx::__normal_iterator<GPGSEventObject*, std::vector<GPGSEventObject,
   std::allocator<GPGSEventObject> > >::base() const */

__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>> *
__thiscall
__gnu_cxx::
__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>::
base(__normal_iterator<GPGSEventObject*,std::vector<GPGSEventObject,std::allocator<GPGSEventObject>>>
     *this)

{
  return this;
}

// ---- __gnu_cxx::operator-  @ 0x341c98
/* __gnu_cxx::__normal_iterator<unsigned char*, std::vector<unsigned char, std::allocator<unsigned
   char> > >::difference_type
   __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<unsigned char*,
   std::vector<unsigned char, std::allocator<unsigned char> > > const&,
   __gnu_cxx::__normal_iterator<unsigned char*, std::vector<unsigned char, std::allocator<unsigned
   char> > > const&) */

int __gnu_cxx::operator-(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>
                  ::base((__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>
                  ::base((__normal_iterator<unsigned_char*,std::vector<unsigned_char,std::allocator<unsigned_char>>>
                          *)param_2);
  return iVar2 - *piVar1;
}

// ---- __gnu_cxx::new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>::~new_allocator  @ 0x341ddc
/* __gnu_cxx::new_allocator<std::vector<unsigned char, std::allocator<unsigned char> >
   >::~new_allocator() */

new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>> * __thiscall
__gnu_cxx::new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>::~new_allocator
          (new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>::construct<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>,std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>const&>  @ 0x341fa8
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const,
   std::vector<std::vector<unsigned char, std::allocator<unsigned char> >,
   std::allocator<std::vector<unsigned char, std::allocator<unsigned char> > > > > >
   >::construct<std::_Rb_tree_node<std::pair<std::string const, std::vector<std::vector<unsigned
   char, std::allocator<unsigned char> >, std::allocator<std::vector<unsigned char,
   std::allocator<unsigned char> > > > > >, std::pair<std::string const,
   std::vector<std::vector<unsigned char, std::allocator<unsigned char> >,
   std::allocator<std::vector<unsigned char, std::allocator<unsigned char> > > > >
   const&>(std::_Rb_tree_node<std::pair<std::string const, std::vector<std::vector<unsigned char,
   std::allocator<unsigned char> >, std::allocator<std::vector<unsigned char,
   std::allocator<unsigned char> > > > > >*, std::pair<std::string const,
   std::vector<std::vector<unsigned char, std::allocator<unsigned char> >,
   std::allocator<std::vector<unsigned char, std::allocator<unsigned char> > > > > const&) */

void __thiscall
__gnu_cxx::
new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
::
construct<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>,std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>const&>
          (new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>>
           *this,_Rb_tree_node *param_1,pair *param_2)

{
  pair *ppVar1;
  _Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>
  *this_00;
  
  ppVar1 = std::
           forward<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>const&>
                     ((type *)param_2);
  this_00 = operator_new(0x20,param_1);
  if (this_00 !=
      (_Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>
       *)0x0) {
    std::
    _Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>>
    ::
    _Rb_tree_node<std::pair<std::string_const,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>const&>
              (this_00,ppVar1);
  }
  return;
}

// ---- __gnu_cxx::__normal_iterator<unsigned_char_const*,std::vector<unsigned_char,std::allocator<unsigned_char>>>::base  @ 0x342084
/* __gnu_cxx::__normal_iterator<unsigned char const*, std::vector<unsigned char,
   std::allocator<unsigned char> > >::base() const */

__normal_iterator<unsigned_char_const*,std::vector<unsigned_char,std::allocator<unsigned_char>>> *
__thiscall
__gnu_cxx::
__normal_iterator<unsigned_char_const*,std::vector<unsigned_char,std::allocator<unsigned_char>>>::
base(__normal_iterator<unsigned_char_const*,std::vector<unsigned_char,std::allocator<unsigned_char>>>
     *this)

{
  return this;
}

// ---- __gnu_cxx::__alloc_traits<std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>::_S_select_on_copy  @ 0x342348
/* __gnu_cxx::__alloc_traits<std::allocator<std::vector<unsigned char, std::allocator<unsigned char>
   > > >::_S_select_on_copy(std::allocator<std::vector<unsigned char, std::allocator<unsigned char>
   > > const&) */

allocator *
__gnu_cxx::__alloc_traits<std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>
::_S_select_on_copy(allocator *param_1)

{
  std::allocator_traits<std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>::
  select_on_container_copy_construction(param_1);
  return param_1;
}

// ---- __gnu_cxx::__normal_iterator<std::vector<unsigned_char,std::allocator<unsigned_char>>const*,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>::__normal_iterator  @ 0x3424c4
/* __gnu_cxx::__normal_iterator<std::vector<unsigned char, std::allocator<unsigned char> > const*,
   std::vector<std::vector<unsigned char, std::allocator<unsigned char> >,
   std::allocator<std::vector<unsigned char, std::allocator<unsigned char> > > >
   >::__normal_iterator(std::vector<unsigned char, std::allocator<unsigned char> > const* const&) */

__normal_iterator<std::vector<unsigned_char,std::allocator<unsigned_char>>const*,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>
* __thiscall
__gnu_cxx::
__normal_iterator<std::vector<unsigned_char,std::allocator<unsigned_char>>const*,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>
::__normal_iterator(__normal_iterator<std::vector<unsigned_char,std::allocator<unsigned_char>>const*,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>
                    *this,vector **param_1)

{
  *(vector **)this = *param_1;
  return this;
}

// ---- __gnu_cxx::new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>::new_allocator  @ 0x34252c
/* __gnu_cxx::new_allocator<std::vector<unsigned char, std::allocator<unsigned char> >
   >::new_allocator(__gnu_cxx::new_allocator<std::vector<unsigned char, std::allocator<unsigned
   char> > > const&) */

new_allocator *
__gnu_cxx::new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>::new_allocator
          (new_allocator *param_1)

{
  return param_1;
}

// ---- __gnu_cxx::new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>::new_allocator  @ 0x3425ac
/* __gnu_cxx::new_allocator<std::vector<unsigned char, std::allocator<unsigned char> >
   >::new_allocator() */

new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>> * __thiscall
__gnu_cxx::new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>::new_allocator
          (new_allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>> *this)

{
  return this;
}

// ---- __gnu_cxx::operator!=  @ 0x3425b8
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<std::vector<unsigned char,
   std::allocator<unsigned char> > const*, std::vector<std::vector<unsigned char,
   std::allocator<unsigned char> >, std::allocator<std::vector<unsigned char,
   std::allocator<unsigned char> > > > > const&, __gnu_cxx::__normal_iterator<std::vector<unsigned
   char, std::allocator<unsigned char> > const*, std::vector<std::vector<unsigned char,
   std::allocator<unsigned char> >, std::allocator<std::vector<unsigned char,
   std::allocator<unsigned char> > > > > const&) */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<std::vector<unsigned_char,std::allocator<unsigned_char>>const*,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>
                  ::base((__normal_iterator<std::vector<unsigned_char,std::allocator<unsigned_char>>const*,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<std::vector<unsigned_char,std::allocator<unsigned_char>>const*,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>
                  ::base((__normal_iterator<std::vector<unsigned_char,std::allocator<unsigned_char>>const*,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>
                          *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<std::vector<unsigned_char,std::allocator<unsigned_char>>const*,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>::operator++  @ 0x3425e4
/* __gnu_cxx::__normal_iterator<std::vector<unsigned char, std::allocator<unsigned char> > const*,
   std::vector<std::vector<unsigned char, std::allocator<unsigned char> >,
   std::allocator<std::vector<unsigned char, std::allocator<unsigned char> > > >
   >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<std::vector<unsigned_char,std::allocator<unsigned_char>>const*,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>
* __thiscall
__gnu_cxx::
__normal_iterator<std::vector<unsigned_char,std::allocator<unsigned_char>>const*,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>
::operator++(__normal_iterator<std::vector<unsigned_char,std::allocator<unsigned_char>>const*,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>
             *this)

{
  *(int *)this = *(int *)this + 0xc;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<std::vector<unsigned_char,std::allocator<unsigned_char>>const*,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>::operator*  @ 0x3425fc
/* __gnu_cxx::__normal_iterator<std::vector<unsigned char, std::allocator<unsigned char> > const*,
   std::vector<std::vector<unsigned char, std::allocator<unsigned char> >,
   std::allocator<std::vector<unsigned char, std::allocator<unsigned char> > > >
   >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::
__normal_iterator<std::vector<unsigned_char,std::allocator<unsigned_char>>const*,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>
::operator*(__normal_iterator<std::vector<unsigned_char,std::allocator<unsigned_char>>const*,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>
            *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::__normal_iterator<std::vector<unsigned_char,std::allocator<unsigned_char>>const*,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>::base  @ 0x342648
/* __gnu_cxx::__normal_iterator<std::vector<unsigned char, std::allocator<unsigned char> > const*,
   std::vector<std::vector<unsigned char, std::allocator<unsigned char> >,
   std::allocator<std::vector<unsigned char, std::allocator<unsigned char> > > > >::base() const */

__normal_iterator<std::vector<unsigned_char,std::allocator<unsigned_char>>const*,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>
* __thiscall
__gnu_cxx::
__normal_iterator<std::vector<unsigned_char,std::allocator<unsigned_char>>const*,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>
::base(__normal_iterator<std::vector<unsigned_char,std::allocator<unsigned_char>>const*,std::vector<std::vector<unsigned_char,std::allocator<unsigned_char>>,std::allocator<std::vector<unsigned_char,std::allocator<unsigned_char>>>>>
       *this)

{
  return this;
}

// ---- __gnu_cxx::operator!=  @ 0x343acc
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<gpg::Achievement*,
   std::vector<gpg::Achievement, std::allocator<gpg::Achievement> > > const&,
   __gnu_cxx::__normal_iterator<gpg::Achievement*, std::vector<gpg::Achievement,
   std::allocator<gpg::Achievement> > > const&) */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
                  ::base((__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
                  ::base((__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
                          *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>::operator++  @ 0x343af8
/* __gnu_cxx::__normal_iterator<gpg::Achievement*, std::vector<gpg::Achievement,
   std::allocator<gpg::Achievement> > >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
* __thiscall
__gnu_cxx::
__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
::operator++(__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
             *this)

{
  *(int *)this = *(int *)this + 8;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>::operator*  @ 0x343b10
/* __gnu_cxx::__normal_iterator<gpg::Achievement*, std::vector<gpg::Achievement,
   std::allocator<gpg::Achievement> > >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::
__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
::operator*(__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
            *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>::__normal_iterator  @ 0x3443d8
/* __gnu_cxx::__normal_iterator<gpg::Achievement*, std::vector<gpg::Achievement,
   std::allocator<gpg::Achievement> > >::__normal_iterator(gpg::Achievement* const&) */

__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
* __thiscall
__gnu_cxx::
__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
::__normal_iterator(__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
                    *this,Achievement **param_1)

{
  *(Achievement **)this = *param_1;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>::base  @ 0x3443f0
/* __gnu_cxx::__normal_iterator<gpg::Achievement*, std::vector<gpg::Achievement,
   std::allocator<gpg::Achievement> > >::base() const */

__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
* __thiscall
__gnu_cxx::
__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
::base(__normal_iterator<gpg::Achievement*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
       *this)

{
  return this;
}

// ---- __gnu_cxx::__alloc_traits<std::allocator<gpg::Achievement>>::_S_select_on_copy  @ 0x345078
/* __gnu_cxx::__alloc_traits<std::allocator<gpg::Achievement>
   >::_S_select_on_copy(std::allocator<gpg::Achievement> const&) */

allocator *
__gnu_cxx::__alloc_traits<std::allocator<gpg::Achievement>>::_S_select_on_copy(allocator *param_1)

{
  std::allocator_traits<std::allocator<gpg::Achievement>>::select_on_container_copy_construction
            (param_1);
  return param_1;
}

// ---- __gnu_cxx::new_allocator<gpg::Achievement>::~new_allocator  @ 0x34522c
/* __gnu_cxx::new_allocator<gpg::Achievement>::~new_allocator() */

new_allocator<gpg::Achievement> * __thiscall
__gnu_cxx::new_allocator<gpg::Achievement>::~new_allocator(new_allocator<gpg::Achievement> *this)

{
  return this;
}

// ---- __gnu_cxx::__normal_iterator<gpg::Achievement_const*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>::__normal_iterator  @ 0x3452bc
/* __gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement,
   std::allocator<gpg::Achievement> > >::__normal_iterator(gpg::Achievement const* const&) */

__normal_iterator<gpg::Achievement_const*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
* __thiscall
__gnu_cxx::
__normal_iterator<gpg::Achievement_const*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
::__normal_iterator(__normal_iterator<gpg::Achievement_const*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
                    *this,Achievement **param_1)

{
  *(Achievement **)this = *param_1;
  return this;
}

// ---- __gnu_cxx::new_allocator<gpg::Achievement>::new_allocator  @ 0x345324
/* __gnu_cxx::new_allocator<gpg::Achievement>::new_allocator(__gnu_cxx::new_allocator<gpg::Achievement>
   const&) */

new_allocator * __gnu_cxx::new_allocator<gpg::Achievement>::new_allocator(new_allocator *param_1)

{
  return param_1;
}

// ---- __gnu_cxx::new_allocator<gpg::Achievement>::deallocate  @ 0x34535c
/* __gnu_cxx::new_allocator<gpg::Achievement>::deallocate(gpg::Achievement*, unsigned int) */

void __gnu_cxx::new_allocator<gpg::Achievement>::deallocate(Achievement *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<gpg::Achievement>::allocate  @ 0x345410
/* __gnu_cxx::new_allocator<gpg::Achievement>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<gpg::Achievement>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 3);
  return pvVar1;
}

// ---- __gnu_cxx::operator!=  @ 0x34544c
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<gpg::Achievement const*,
   std::vector<gpg::Achievement, std::allocator<gpg::Achievement> > > const&,
   __gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement,
   std::allocator<gpg::Achievement> > > const&) */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<gpg::Achievement_const*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
                  ::base((__normal_iterator<gpg::Achievement_const*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<gpg::Achievement_const*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
                  ::base((__normal_iterator<gpg::Achievement_const*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
                          *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<gpg::Achievement_const*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>::operator++  @ 0x345478
/* __gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement,
   std::allocator<gpg::Achievement> > >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<gpg::Achievement_const*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
* __thiscall
__gnu_cxx::
__normal_iterator<gpg::Achievement_const*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
::operator++(__normal_iterator<gpg::Achievement_const*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
             *this)

{
  *(int *)this = *(int *)this + 8;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<gpg::Achievement_const*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>::operator*  @ 0x34549c
/* __gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement,
   std::allocator<gpg::Achievement> > >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::
__normal_iterator<gpg::Achievement_const*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
::operator*(__normal_iterator<gpg::Achievement_const*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
            *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::new_allocator<gpg::Achievement>::max_size  @ 0x345508
/* __gnu_cxx::new_allocator<gpg::Achievement>::max_size() const */

undefined4 __gnu_cxx::new_allocator<gpg::Achievement>::max_size(void)

{
  return 0x1fffffff;
}

// ---- __gnu_cxx::__normal_iterator<gpg::Achievement_const*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>::base  @ 0x345518
/* __gnu_cxx::__normal_iterator<gpg::Achievement const*, std::vector<gpg::Achievement,
   std::allocator<gpg::Achievement> > >::base() const */

__normal_iterator<gpg::Achievement_const*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
* __thiscall
__gnu_cxx::
__normal_iterator<gpg::Achievement_const*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
::base(__normal_iterator<gpg::Achievement_const*,std::vector<gpg::Achievement,std::allocator<gpg::Achievement>>>
       *this)

{
  return this;
}

// ---- __gnu_cxx::__alloc_traits<std::allocator<ItemInfo>>::_S_select_on_copy  @ 0x35aa1c
/* __gnu_cxx::__alloc_traits<std::allocator<ItemInfo> >::_S_select_on_copy(std::allocator<ItemInfo>
   const&) */

allocator *
__gnu_cxx::__alloc_traits<std::allocator<ItemInfo>>::_S_select_on_copy(allocator *param_1)

{
  std::allocator_traits<std::allocator<ItemInfo>>::select_on_container_copy_construction(param_1);
  return param_1;
}

// ---- __gnu_cxx::new_allocator<ItemInfo>::~new_allocator  @ 0x35acb0
/* __gnu_cxx::new_allocator<ItemInfo>::~new_allocator() */

new_allocator<ItemInfo> * __thiscall
__gnu_cxx::new_allocator<ItemInfo>::~new_allocator(new_allocator<ItemInfo> *this)

{
  return this;
}

// ---- __gnu_cxx::__normal_iterator<ItemInfo_const*,std::vector<ItemInfo,std::allocator<ItemInfo>>>::__normal_iterator  @ 0x35ad20
/* __gnu_cxx::__normal_iterator<ItemInfo const*, std::vector<ItemInfo, std::allocator<ItemInfo> >
   >::__normal_iterator(ItemInfo const* const&) */

__normal_iterator<ItemInfo_const*,std::vector<ItemInfo,std::allocator<ItemInfo>>> * __thiscall
__gnu_cxx::__normal_iterator<ItemInfo_const*,std::vector<ItemInfo,std::allocator<ItemInfo>>>::
__normal_iterator(__normal_iterator<ItemInfo_const*,std::vector<ItemInfo,std::allocator<ItemInfo>>>
                  *this,ItemInfo **param_1)

{
  *(ItemInfo **)this = *param_1;
  return this;
}

// ---- __gnu_cxx::new_allocator<ItemInfo>::deallocate  @ 0x35ad70
/* __gnu_cxx::new_allocator<ItemInfo>::deallocate(ItemInfo*, unsigned int) */

void __gnu_cxx::new_allocator<ItemInfo>::deallocate(ItemInfo *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<ItemInfo>::construct<ItemInfo,ItemInfo_const&>  @ 0x35adb4
/* void __gnu_cxx::new_allocator<ItemInfo>::construct<ItemInfo, ItemInfo const&>(ItemInfo*, ItemInfo
   const&) */

void __thiscall
__gnu_cxx::new_allocator<ItemInfo>::construct<ItemInfo,ItemInfo_const&>
          (new_allocator<ItemInfo> *this,ItemInfo *param_1,ItemInfo *param_2)

{
  ItemInfo *pIVar1;
  ItemInfo *this_00;
  
  pIVar1 = std::forward<ItemInfo_const&>((type *)param_2);
  this_00 = operator_new(0x30,param_1);
  if (this_00 != (ItemInfo *)0x0) {
    ItemInfo::ItemInfo(this_00,pIVar1);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<ItemInfo>::allocate  @ 0x35ae14
/* __gnu_cxx::new_allocator<ItemInfo>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<ItemInfo>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0x30);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<ItemInfo>::new_allocator  @ 0x35aeb0
/* __gnu_cxx::new_allocator<ItemInfo>::new_allocator(__gnu_cxx::new_allocator<ItemInfo> const&) */

new_allocator * __gnu_cxx::new_allocator<ItemInfo>::new_allocator(new_allocator *param_1)

{
  return param_1;
}

// ---- __gnu_cxx::new_allocator<ItemInfo>::new_allocator  @ 0x35af30
/* __gnu_cxx::new_allocator<ItemInfo>::new_allocator() */

new_allocator<ItemInfo> * __thiscall
__gnu_cxx::new_allocator<ItemInfo>::new_allocator(new_allocator<ItemInfo> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<ItemInfo>::max_size  @ 0x35af74
/* __gnu_cxx::new_allocator<ItemInfo>::max_size() const */

undefined4 __gnu_cxx::new_allocator<ItemInfo>::max_size(void)

{
  return 0x5555555;
}

// ---- __gnu_cxx::new_allocator<ItemInfo>::destroy<ItemInfo>  @ 0x35afa8
/* void __gnu_cxx::new_allocator<ItemInfo>::destroy<ItemInfo>(ItemInfo*) */

void __thiscall
__gnu_cxx::new_allocator<ItemInfo>::destroy<ItemInfo>
          (new_allocator<ItemInfo> *this,ItemInfo *param_1)

{
  ItemInfo::~ItemInfo(param_1);
  return;
}

// ---- __gnu_cxx::operator!=  @ 0x35afbc
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<ItemInfo const*,
   std::vector<ItemInfo, std::allocator<ItemInfo> > > const&, __gnu_cxx::__normal_iterator<ItemInfo
   const*, std::vector<ItemInfo, std::allocator<ItemInfo> > > const&) */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<ItemInfo_const*,std::vector<ItemInfo,std::allocator<ItemInfo>>>
                  ::base((__normal_iterator<ItemInfo_const*,std::vector<ItemInfo,std::allocator<ItemInfo>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<ItemInfo_const*,std::vector<ItemInfo,std::allocator<ItemInfo>>>
                  ::base((__normal_iterator<ItemInfo_const*,std::vector<ItemInfo,std::allocator<ItemInfo>>>
                          *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<ItemInfo_const*,std::vector<ItemInfo,std::allocator<ItemInfo>>>::operator++  @ 0x35afe8
/* __gnu_cxx::__normal_iterator<ItemInfo const*, std::vector<ItemInfo, std::allocator<ItemInfo> >
   >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<ItemInfo_const*,std::vector<ItemInfo,std::allocator<ItemInfo>>> * __thiscall
__gnu_cxx::__normal_iterator<ItemInfo_const*,std::vector<ItemInfo,std::allocator<ItemInfo>>>::
operator++(__normal_iterator<ItemInfo_const*,std::vector<ItemInfo,std::allocator<ItemInfo>>> *this)

{
  *(int *)this = *(int *)this + 0x30;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<ItemInfo_const*,std::vector<ItemInfo,std::allocator<ItemInfo>>>::operator*  @ 0x35b000
/* __gnu_cxx::__normal_iterator<ItemInfo const*, std::vector<ItemInfo, std::allocator<ItemInfo> >
   >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::__normal_iterator<ItemInfo_const*,std::vector<ItemInfo,std::allocator<ItemInfo>>>::
operator*(__normal_iterator<ItemInfo_const*,std::vector<ItemInfo,std::allocator<ItemInfo>>> *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::__normal_iterator<ItemInfo_const*,std::vector<ItemInfo,std::allocator<ItemInfo>>>::base  @ 0x35b0c0
/* __gnu_cxx::__normal_iterator<ItemInfo const*, std::vector<ItemInfo, std::allocator<ItemInfo> >
   >::base() const */

__normal_iterator<ItemInfo_const*,std::vector<ItemInfo,std::allocator<ItemInfo>>> * __thiscall
__gnu_cxx::__normal_iterator<ItemInfo_const*,std::vector<ItemInfo,std::allocator<ItemInfo>>>::base
          (__normal_iterator<ItemInfo_const*,std::vector<ItemInfo,std::allocator<ItemInfo>>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCMenu*>::~new_allocator  @ 0x384830
/* __gnu_cxx::new_allocator<cocos2d::CCMenu*>::~new_allocator() */

new_allocator<cocos2d::CCMenu*> * __thiscall
__gnu_cxx::new_allocator<cocos2d::CCMenu*>::~new_allocator(new_allocator<cocos2d::CCMenu*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCMenu*>::deallocate  @ 0x38483c
/* __gnu_cxx::new_allocator<cocos2d::CCMenu*>::deallocate(cocos2d::CCMenu**, unsigned int) */

void __gnu_cxx::new_allocator<cocos2d::CCMenu*>::deallocate(CCMenu **param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCMenu*>::construct<cocos2d::CCMenu*,cocos2d::CCMenu*const&>  @ 0x384860
/* void __gnu_cxx::new_allocator<cocos2d::CCMenu*>::construct<cocos2d::CCMenu*, cocos2d::CCMenu*
   const&>(cocos2d::CCMenu**, cocos2d::CCMenu* const&) */

void __thiscall
__gnu_cxx::new_allocator<cocos2d::CCMenu*>::construct<cocos2d::CCMenu*,cocos2d::CCMenu*const&>
          (new_allocator<cocos2d::CCMenu*> *this,CCMenu **param_1,CCMenu **param_2)

{
  CCMenu **ppCVar1;
  undefined4 *puVar2;
  CCMenu *pCVar3;
  
  ppCVar1 = std::forward<cocos2d::CCMenu*const&>((type *)param_2);
  pCVar3 = *ppCVar1;
  puVar2 = operator_new(4,param_1);
  if (puVar2 != (undefined4 *)0x0) {
    *puVar2 = pCVar3;
  }
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCMenu*>::allocate  @ 0x3848ac
/* __gnu_cxx::new_allocator<cocos2d::CCMenu*>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<cocos2d::CCMenu*>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCMenu*>::new_allocator  @ 0x38493c
/* __gnu_cxx::new_allocator<cocos2d::CCMenu*>::new_allocator() */

new_allocator<cocos2d::CCMenu*> * __thiscall
__gnu_cxx::new_allocator<cocos2d::CCMenu*>::new_allocator(new_allocator<cocos2d::CCMenu*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCMenu*>::max_size  @ 0x38496c
/* __gnu_cxx::new_allocator<cocos2d::CCMenu*>::max_size() const */

undefined4 __gnu_cxx::new_allocator<cocos2d::CCMenu*>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCMenu*>::destroy<cocos2d::CCMenu*>  @ 0x3849b0
/* void __gnu_cxx::new_allocator<cocos2d::CCMenu*>::destroy<cocos2d::CCMenu*>(cocos2d::CCMenu**) */

void __gnu_cxx::new_allocator<cocos2d::CCMenu*>::destroy<cocos2d::CCMenu*>(CCMenu **param_1)

{
  return;
}

// ---- __gnu_cxx::__alloc_traits<std::allocator<std::string>>::_S_propagate_on_copy_assign  @ 0x38bbbc
/* __gnu_cxx::__alloc_traits<std::allocator<std::string > >::_S_propagate_on_copy_assign() */

undefined4 __gnu_cxx::__alloc_traits<std::allocator<std::string>>::_S_propagate_on_copy_assign(void)

{
  return 0;
}

// ---- __gnu_cxx::__alloc_traits<std::allocator<std::string>>::_S_always_equal  @ 0x38bbc4
/* __gnu_cxx::__alloc_traits<std::allocator<std::string > >::_S_always_equal() */

undefined4 __gnu_cxx::__alloc_traits<std::allocator<std::string>>::_S_always_equal(void)

{
  return 1;
}

// ---- __gnu_cxx::__normal_iterator<char*,std::vector<char,std::allocator<char>>>::operator*  @ 0x38c3d4
/* __gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char> >
   >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::__normal_iterator<char*,std::vector<char,std::allocator<char>>>::operator*
          (__normal_iterator<char*,std::vector<char,std::allocator<char>>> *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::__alloc_traits<std::allocator<std::string>>::_S_select_on_copy  @ 0x38c570
/* __gnu_cxx::__alloc_traits<std::allocator<std::string >
   >::_S_select_on_copy(std::allocator<std::string > const&) */

allocator *
__gnu_cxx::__alloc_traits<std::allocator<std::string>>::_S_select_on_copy(allocator *param_1)

{
  std::allocator_traits<std::allocator<std::string>>::select_on_container_copy_construction(param_1)
  ;
  return param_1;
}

// ---- __gnu_cxx::operator-  @ 0x38c7cc
/* __gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string >
   > >::difference_type
   __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<std::string*,
   std::vector<std::string, std::allocator<std::string > > > const&,
   __gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string >
   > > const&) */

int __gnu_cxx::operator-(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                  ::base((__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                  ::base((__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                          *)param_2);
  return iVar2 - *piVar1 >> 2;
}

// ---- __gnu_cxx::__normal_iterator<char*,std::vector<char,std::allocator<char>>>::__normal_iterator  @ 0x38c8e0
/* __gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char> >
   >::__normal_iterator(char* const&) */

__normal_iterator<char*,std::vector<char,std::allocator<char>>> * __thiscall
__gnu_cxx::__normal_iterator<char*,std::vector<char,std::allocator<char>>>::__normal_iterator
          (__normal_iterator<char*,std::vector<char,std::allocator<char>>> *this,char **param_1)

{
  *(char **)this = *param_1;
  return this;
}

// ---- __gnu_cxx::__alloc_traits<std::allocator<ServerListObject>>::_S_select_on_copy  @ 0x38cc0c
/* __gnu_cxx::__alloc_traits<std::allocator<ServerListObject>
   >::_S_select_on_copy(std::allocator<ServerListObject> const&) */

allocator *
__gnu_cxx::__alloc_traits<std::allocator<ServerListObject>>::_S_select_on_copy(allocator *param_1)

{
  std::allocator_traits<std::allocator<ServerListObject>>::select_on_container_copy_construction
            (param_1);
  return param_1;
}

// ---- __gnu_cxx::__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>::__normal_iterator  @ 0x38ce9c
/* __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string,
   std::allocator<std::string > > >::__normal_iterator(std::string const* const&) */

__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>> *
__thiscall
__gnu_cxx::
__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>::
__normal_iterator(__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>
                  *this,string **param_1)

{
  *(string **)this = *param_1;
  return this;
}

// ---- __gnu_cxx::new_allocator<char>::deallocate  @ 0x38d04c
/* __gnu_cxx::new_allocator<char>::deallocate(char*, unsigned int) */

void __gnu_cxx::new_allocator<char>::deallocate(char *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>::operator+  @ 0x38d1ac
/* __gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string >
   > >::TEMPNAMEPLACEHOLDERVALUE(int const&) const */

undefined4 __thiscall
__gnu_cxx::__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>::
operator+(__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>> *this
         ,int *param_1)

{
  string *local_10;
  undefined4 local_c [2];
  
  local_10 = (string *)(*param_1 * 4 + *(int *)this);
  __normal_iterator((__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                     *)local_c,&local_10);
  return local_c[0];
}

// ---- __gnu_cxx::new_allocator<ServerListObject>::~new_allocator  @ 0x38d7b8
/* __gnu_cxx::new_allocator<ServerListObject>::~new_allocator() */

new_allocator<ServerListObject> * __thiscall
__gnu_cxx::new_allocator<ServerListObject>::~new_allocator(new_allocator<ServerListObject> *this)

{
  return this;
}

// ---- __gnu_cxx::__normal_iterator<ServerListObject_const*,std::vector<ServerListObject,std::allocator<ServerListObject>>>::__normal_iterator  @ 0x38d824
/* __gnu_cxx::__normal_iterator<ServerListObject const*, std::vector<ServerListObject,
   std::allocator<ServerListObject> > >::__normal_iterator(ServerListObject const* const&) */

__normal_iterator<ServerListObject_const*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
* __thiscall
__gnu_cxx::
__normal_iterator<ServerListObject_const*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
::__normal_iterator(__normal_iterator<ServerListObject_const*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
                    *this,ServerListObject **param_1)

{
  *(ServerListObject **)this = *param_1;
  return this;
}

// ---- __gnu_cxx::new_allocator<std::string>::new_allocator  @ 0x38dacc
/* __gnu_cxx::new_allocator<std::string >::new_allocator(__gnu_cxx::new_allocator<std::string >
   const&) */

new_allocator * __gnu_cxx::new_allocator<std::string>::new_allocator(new_allocator *param_1)

{
  return param_1;
}

// ---- __gnu_cxx::new_allocator<char>::allocate  @ 0x38db4c
/* __gnu_cxx::new_allocator<char>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<char>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((uint)param_2);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<ServerListObject>::deallocate  @ 0x38dbe4
/* __gnu_cxx::new_allocator<ServerListObject>::deallocate(ServerListObject*, unsigned int) */

void __gnu_cxx::new_allocator<ServerListObject>::deallocate(ServerListObject *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::string>::construct<std::string,std::string_const&>  @ 0x38dbfc
/* void __gnu_cxx::new_allocator<std::string >::construct<std::string, std::string
   const&>(std::string*, std::string const&) */

void __thiscall
__gnu_cxx::new_allocator<std::string>::construct<std::string,std::string_const&>
          (new_allocator<std::string> *this,string *param_1,string *param_2)

{
  string *psVar1;
  void *pvVar2;
  
  psVar1 = std::forward<std::string_const&>((type *)param_2);
  pvVar2 = operator_new(4,param_1);
  if (pvVar2 != (void *)0x0) {
    FUN_007c64e8(pvVar2,psVar1);
  }
  return;
}

// ---- __gnu_cxx::__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>::operator-  @ 0x38dce0
/* __gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string >
   > >::TEMPNAMEPLACEHOLDERVALUE(int const&) const */

undefined4 __thiscall
__gnu_cxx::__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>::
operator-(__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>> *this
         ,int *param_1)

{
  string *local_10;
  undefined4 local_c [2];
  
  local_10 = (string *)(*param_1 * -4 + *(int *)this);
  __normal_iterator((__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                     *)local_c,&local_10);
  return local_c[0];
}

// ---- __gnu_cxx::operator==  @ 0x38de94
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<std::string*,
   std::vector<std::string, std::allocator<std::string > > > const&,
   __gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string >
   > > const&) */

bool __gnu_cxx::operator==(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                  ::base((__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                  ::base((__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                          *)param_2);
  return iVar2 == *piVar1;
}

// ---- __gnu_cxx::new_allocator<ServerListObject>::new_allocator  @ 0x38e4d4
/* __gnu_cxx::new_allocator<ServerListObject>::new_allocator(__gnu_cxx::new_allocator<ServerListObject>
   const&) */

new_allocator * __gnu_cxx::new_allocator<ServerListObject>::new_allocator(new_allocator *param_1)

{
  return param_1;
}

// ---- __gnu_cxx::operator!=  @ 0x38e72c
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<std::string const*,
   std::vector<std::string, std::allocator<std::string > > > const&,
   __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string,
   std::allocator<std::string > > > const&) */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>
                  ::base((__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>
                  ::base((__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>
                          *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>::operator++  @ 0x38e758
/* __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string,
   std::allocator<std::string > > >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>> *
__thiscall
__gnu_cxx::
__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>::
operator++(__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>
           *this)

{
  *(int *)this = *(int *)this + 4;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>::operator*  @ 0x38e770
/* __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string,
   std::allocator<std::string > > >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::
__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>::
operator*(__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>
          *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::new_allocator<char>::max_size  @ 0x38e7bc
/* __gnu_cxx::new_allocator<char>::max_size() const */

undefined4 __gnu_cxx::new_allocator<char>::max_size(void)

{
  return 0xffffffff;
}

// ---- __gnu_cxx::new_allocator<ServerListObject>::new_allocator  @ 0x38e800
/* __gnu_cxx::new_allocator<ServerListObject>::new_allocator() */

new_allocator<ServerListObject> * __thiscall
__gnu_cxx::new_allocator<ServerListObject>::new_allocator(new_allocator<ServerListObject> *this)

{
  return this;
}

// ---- __gnu_cxx::operator<  @ 0x38e8e0
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<std::string*,
   std::vector<std::string, std::allocator<std::string > > > const&,
   __gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string >
   > > const&) */

bool __gnu_cxx::operator<(__normal_iterator *param_1,__normal_iterator *param_2)

{
  uint *puVar1;
  uint uVar2;
  
  puVar1 = (uint *)__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                   ::base((__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                           *)param_1);
  uVar2 = *puVar1;
  puVar1 = (uint *)__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                   ::base((__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
                           *)param_2);
  return uVar2 < *puVar1;
}

// ---- __gnu_cxx::__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>::operator--  @ 0x38e9b0
/* __gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string >
   > >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>> * __thiscall
__gnu_cxx::__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>::
operator--(__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
           *this)

{
  *(int *)this = *(int *)this + -4;
  return this;
}

// ---- __gnu_cxx::operator==  @ 0x38ea4c
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<char*, std::vector<char,
   std::allocator<char> > > const&, __gnu_cxx::__normal_iterator<char*, std::vector<char,
   std::allocator<char> > > const&) */

bool __gnu_cxx::operator==(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<char*,std::vector<char,std::allocator<char>>>::base
                            ((__normal_iterator<char*,std::vector<char,std::allocator<char>>> *)
                             param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<char*,std::vector<char,std::allocator<char>>>::base
                            ((__normal_iterator<char*,std::vector<char,std::allocator<char>>> *)
                             param_2);
  return iVar2 == *piVar1;
}

// ---- __gnu_cxx::operator!=  @ 0x38ea78
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<char*, std::vector<char,
   std::allocator<char> > > const&, __gnu_cxx::__normal_iterator<char*, std::vector<char,
   std::allocator<char> > > const&) */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<char*,std::vector<char,std::allocator<char>>>::base
                            ((__normal_iterator<char*,std::vector<char,std::allocator<char>>> *)
                             param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<char*,std::vector<char,std::allocator<char>>>::base
                            ((__normal_iterator<char*,std::vector<char,std::allocator<char>>> *)
                             param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::__is_null_pointer<__gnu_cxx::__normal_iterator<char*,std::vector<char,std::allocator<char>>>>  @ 0x38eaa4
/* bool __gnu_cxx::__is_null_pointer<__gnu_cxx::__normal_iterator<char*, std::vector<char,
   std::allocator<char> > > >(__gnu_cxx::__normal_iterator<char*, std::vector<char,
   std::allocator<char> > >) */

bool __gnu_cxx::
     __is_null_pointer<__gnu_cxx::__normal_iterator<char*,std::vector<char,std::allocator<char>>>>
               (void)

{
  return false;
}

// ---- __gnu_cxx::new_allocator<ServerListObject>::construct<ServerListObject,ServerListObject>  @ 0x38ef68
/* void __gnu_cxx::new_allocator<ServerListObject>::construct<ServerListObject,
   ServerListObject>(ServerListObject*, ServerListObject&&) */

void __thiscall
__gnu_cxx::new_allocator<ServerListObject>::construct<ServerListObject,ServerListObject>
          (new_allocator<ServerListObject> *this,ServerListObject *param_1,ServerListObject *param_2
          )

{
  ServerListObject *pSVar1;
  ServerListObject *this_00;
  
  pSVar1 = std::forward<ServerListObject>((type *)param_2);
  this_00 = operator_new(8,param_1);
  if (this_00 != (ServerListObject *)0x0) {
    ServerListObject::ServerListObject(this_00,pSVar1);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<ServerListObject>::allocate  @ 0x38efb8
/* __gnu_cxx::new_allocator<ServerListObject>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<ServerListObject>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 3);
  return pvVar1;
}

// ---- __gnu_cxx::operator!=  @ 0x38f048
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<ServerListObject const*,
   std::vector<ServerListObject, std::allocator<ServerListObject> > > const&,
   __gnu_cxx::__normal_iterator<ServerListObject const*, std::vector<ServerListObject,
   std::allocator<ServerListObject> > > const&) */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<ServerListObject_const*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
                  ::base((__normal_iterator<ServerListObject_const*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<ServerListObject_const*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
                  ::base((__normal_iterator<ServerListObject_const*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
                          *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<ServerListObject_const*,std::vector<ServerListObject,std::allocator<ServerListObject>>>::operator++  @ 0x38f074
/* __gnu_cxx::__normal_iterator<ServerListObject const*, std::vector<ServerListObject,
   std::allocator<ServerListObject> > >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<ServerListObject_const*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
* __thiscall
__gnu_cxx::
__normal_iterator<ServerListObject_const*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
::operator++(__normal_iterator<ServerListObject_const*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
             *this)

{
  *(int *)this = *(int *)this + 8;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<ServerListObject_const*,std::vector<ServerListObject,std::allocator<ServerListObject>>>::operator*  @ 0x38f098
/* __gnu_cxx::__normal_iterator<ServerListObject const*, std::vector<ServerListObject,
   std::allocator<ServerListObject> > >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::
__normal_iterator<ServerListObject_const*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
::operator*(__normal_iterator<ServerListObject_const*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
            *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>::base  @ 0x38f184
/* __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string,
   std::allocator<std::string > > >::base() const */

__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>> *
__thiscall
__gnu_cxx::
__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>::base
          (__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>
           *this)

{
  return this;
}

// ---- __gnu_cxx::__normal_iterator<char*,std::vector<char,std::allocator<char>>>::base  @ 0x38f190
/* __gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char> > >::base() const */

__normal_iterator<char*,std::vector<char,std::allocator<char>>> * __thiscall
__gnu_cxx::__normal_iterator<char*,std::vector<char,std::allocator<char>>>::base
          (__normal_iterator<char*,std::vector<char,std::allocator<char>>> *this)

{
  return this;
}

// ---- __gnu_cxx::__normal_iterator<char*,std::vector<char,std::allocator<char>>>::operator++  @ 0x38f388
/* __gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char> >
   >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<char*,std::vector<char,std::allocator<char>>> * __thiscall
__gnu_cxx::__normal_iterator<char*,std::vector<char,std::allocator<char>>>::operator++
          (__normal_iterator<char*,std::vector<char,std::allocator<char>>> *this)

{
  *(int *)this = *(int *)this + 1;
  return this;
}

// ---- __gnu_cxx::new_allocator<ServerListObject>::max_size  @ 0x3901e4
/* __gnu_cxx::new_allocator<ServerListObject>::max_size() const */

undefined4 __gnu_cxx::new_allocator<ServerListObject>::max_size(void)

{
  return 0x1fffffff;
}

// ---- __gnu_cxx::new_allocator<ServerListObject>::destroy<ServerListObject>  @ 0x390228
/* void __gnu_cxx::new_allocator<ServerListObject>::destroy<ServerListObject>(ServerListObject*) */

void __thiscall
__gnu_cxx::new_allocator<ServerListObject>::destroy<ServerListObject>
          (new_allocator<ServerListObject> *this,ServerListObject *param_1)

{
  ServerListObject::~ServerListObject(param_1);
  return;
}

// ---- __gnu_cxx::__normal_iterator<ServerListObject_const*,std::vector<ServerListObject,std::allocator<ServerListObject>>>::base  @ 0x39023c
/* __gnu_cxx::__normal_iterator<ServerListObject const*, std::vector<ServerListObject,
   std::allocator<ServerListObject> > >::base() const */

__normal_iterator<ServerListObject_const*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
* __thiscall
__gnu_cxx::
__normal_iterator<ServerListObject_const*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
::base(__normal_iterator<ServerListObject_const*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
       *this)

{
  return this;
}

// ---- __gnu_cxx::operator-  @ 0x390378
/* __gnu_cxx::__normal_iterator<char*, std::vector<char, std::allocator<char> > >::difference_type
   __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<char*, std::vector<char,
   std::allocator<char> > > const&, __gnu_cxx::__normal_iterator<char*, std::vector<char,
   std::allocator<char> > > const&) */

int __gnu_cxx::operator-(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<char*,std::vector<char,std::allocator<char>>>::base
                            ((__normal_iterator<char*,std::vector<char,std::allocator<char>>> *)
                             param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<char*,std::vector<char,std::allocator<char>>>::base
                            ((__normal_iterator<char*,std::vector<char,std::allocator<char>>> *)
                             param_2);
  return iVar2 - *piVar1;
}

// ---- __gnu_cxx::operator!=  @ 0x397db0
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<char*, std::string >
   const&, __gnu_cxx::__normal_iterator<char*, std::string > const&) */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<char*,std::string>::base
                            ((__normal_iterator<char*,std::string> *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<char*,std::string>::base
                            ((__normal_iterator<char*,std::string> *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<char*,std::string>::operator++  @ 0x397ddc
/* __gnu_cxx::__normal_iterator<char*, std::string >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<char*,std::string> * __thiscall
__gnu_cxx::__normal_iterator<char*,std::string>::operator++
          (__normal_iterator<char*,std::string> *this)

{
  *(int *)this = *(int *)this + 1;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<char*,std::string>::operator*  @ 0x397df4
/* __gnu_cxx::__normal_iterator<char*, std::string >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::__normal_iterator<char*,std::string>::operator*
          (__normal_iterator<char*,std::string> *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::__normal_iterator<char*,std::string>::base  @ 0x397e04
/* __gnu_cxx::__normal_iterator<char*, std::string >::base() const */

__normal_iterator<char*,std::string> * __thiscall
__gnu_cxx::__normal_iterator<char*,std::string>::base(__normal_iterator<char*,std::string> *this)

{
  return this;
}

// ---- __gnu_cxx::__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::__normal_iterator  @ 0x3aea48
/* __gnu_cxx::__normal_iterator<LobbyRow**, std::vector<LobbyRow*, std::allocator<LobbyRow*> >
   >::__normal_iterator(LobbyRow** const&) */

__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>> * __thiscall
__gnu_cxx::__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::
__normal_iterator(__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>
                  *this,LobbyRow ***param_1)

{
  *(LobbyRow ***)this = *param_1;
  return this;
}

// ---- __gnu_cxx::operator!=  @ 0x3aea60
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<LobbyRow**,
   std::vector<LobbyRow*, std::allocator<LobbyRow*> > > const&,
   __gnu_cxx::__normal_iterator<LobbyRow**, std::vector<LobbyRow*, std::allocator<LobbyRow*> > >
   const&) */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::
                  base((__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>
                        *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::
                  base((__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>
                        *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::operator-  @ 0x3aea8c
/* __gnu_cxx::__normal_iterator<LobbyRow**, std::vector<LobbyRow*, std::allocator<LobbyRow*> >
   >::difference_type __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<LobbyRow**,
   std::vector<LobbyRow*, std::allocator<LobbyRow*> > > const&,
   __gnu_cxx::__normal_iterator<LobbyRow**, std::vector<LobbyRow*, std::allocator<LobbyRow*> > >
   const&) */

int __gnu_cxx::operator-(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::
                  base((__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>
                        *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::
                  base((__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>
                        *)param_2);
  return iVar2 - *piVar1 >> 2;
}

// ---- __gnu_cxx::__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::base  @ 0x3aed24
/* __gnu_cxx::__normal_iterator<LobbyRow**, std::vector<LobbyRow*, std::allocator<LobbyRow*> >
   >::base() const */

__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>> * __thiscall
__gnu_cxx::__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::base
          (__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>> *this)

{
  return this;
}

// ---- __gnu_cxx::__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::operator+  @ 0x3aedec
/* __gnu_cxx::__normal_iterator<LobbyRow**, std::vector<LobbyRow*, std::allocator<LobbyRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE(int const&) const */

undefined4 __thiscall
__gnu_cxx::__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::operator+
          (__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>> *this,
          int *param_1)

{
  LobbyRow **local_10;
  undefined4 local_c [2];
  
  local_10 = (LobbyRow **)(*param_1 * 4 + *(int *)this);
  __normal_iterator((__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>
                     *)local_c,&local_10);
  return local_c[0];
}

// ---- __gnu_cxx::new_allocator<LobbyRow*>::~new_allocator  @ 0x3aef40
/* __gnu_cxx::new_allocator<LobbyRow*>::~new_allocator() */

new_allocator<LobbyRow*> * __thiscall
__gnu_cxx::new_allocator<LobbyRow*>::~new_allocator(new_allocator<LobbyRow*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<LobbyRow*>::deallocate  @ 0x3aef4c
/* __gnu_cxx::new_allocator<LobbyRow*>::deallocate(LobbyRow**, unsigned int) */

void __gnu_cxx::new_allocator<LobbyRow*>::deallocate(LobbyRow **param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<LobbyRow*>::construct<LobbyRow*,LobbyRow*const&>  @ 0x3aef70
/* void __gnu_cxx::new_allocator<LobbyRow*>::construct<LobbyRow*, LobbyRow* const&>(LobbyRow**,
   LobbyRow* const&) */

void __thiscall
__gnu_cxx::new_allocator<LobbyRow*>::construct<LobbyRow*,LobbyRow*const&>
          (new_allocator<LobbyRow*> *this,LobbyRow **param_1,LobbyRow **param_2)

{
  LobbyRow **ppLVar1;
  undefined4 *puVar2;
  LobbyRow *pLVar3;
  
  ppLVar1 = std::forward<LobbyRow*const&>((type *)param_2);
  pLVar3 = *ppLVar1;
  puVar2 = operator_new(4,param_1);
  if (puVar2 != (undefined4 *)0x0) {
    *puVar2 = pLVar3;
  }
  return;
}

// ---- __gnu_cxx::new_allocator<LobbyRow*>::allocate  @ 0x3aefbc
/* __gnu_cxx::new_allocator<LobbyRow*>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<LobbyRow*>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::operator-  @ 0x3af0fc
/* __gnu_cxx::__normal_iterator<LobbyRow**, std::vector<LobbyRow*, std::allocator<LobbyRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE(int const&) const */

undefined4 __thiscall
__gnu_cxx::__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::operator-
          (__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>> *this,
          int *param_1)

{
  LobbyRow **local_10;
  undefined4 local_c [2];
  
  local_10 = (LobbyRow **)(*param_1 * -4 + *(int *)this);
  __normal_iterator((__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>
                     *)local_c,&local_10);
  return local_c[0];
}

// ---- __gnu_cxx::__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::operator*  @ 0x3af234
/* __gnu_cxx::__normal_iterator<LobbyRow**, std::vector<LobbyRow*, std::allocator<LobbyRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::operator*
          (__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>> *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::operator==  @ 0x3af2e0
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<LobbyRow**,
   std::vector<LobbyRow*, std::allocator<LobbyRow*> > > const&,
   __gnu_cxx::__normal_iterator<LobbyRow**, std::vector<LobbyRow*, std::allocator<LobbyRow*> > >
   const&) */

bool __gnu_cxx::operator==(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::
                  base((__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>
                        *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::
                  base((__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>
                        *)param_2);
  return iVar2 == *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::operator++  @ 0x3af30c
/* __gnu_cxx::__normal_iterator<LobbyRow**, std::vector<LobbyRow*, std::allocator<LobbyRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>> * __thiscall
__gnu_cxx::__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::
operator++(__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>> *this)

{
  *(int *)this = *(int *)this + 4;
  return this;
}

// ---- __gnu_cxx::new_allocator<LobbyRow*>::new_allocator  @ 0x3af3e0
/* __gnu_cxx::new_allocator<LobbyRow*>::new_allocator() */

new_allocator<LobbyRow*> * __thiscall
__gnu_cxx::new_allocator<LobbyRow*>::new_allocator(new_allocator<LobbyRow*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<LobbyRow*>::max_size  @ 0x3af410
/* __gnu_cxx::new_allocator<LobbyRow*>::max_size() const */

undefined4 __gnu_cxx::new_allocator<LobbyRow*>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<LobbyRow*>::destroy<LobbyRow*>  @ 0x3af454
/* void __gnu_cxx::new_allocator<LobbyRow*>::destroy<LobbyRow*>(LobbyRow**) */

void __gnu_cxx::new_allocator<LobbyRow*>::destroy<LobbyRow*>(LobbyRow **param_1)

{
  return;
}

// ---- __gnu_cxx::operator<  @ 0x3af4f8
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<LobbyRow**,
   std::vector<LobbyRow*, std::allocator<LobbyRow*> > > const&,
   __gnu_cxx::__normal_iterator<LobbyRow**, std::vector<LobbyRow*, std::allocator<LobbyRow*> > >
   const&) */

bool __gnu_cxx::operator<(__normal_iterator *param_1,__normal_iterator *param_2)

{
  uint *puVar1;
  uint uVar2;
  
  puVar1 = (uint *)__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::
                   base((__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>
                         *)param_1);
  uVar2 = *puVar1;
  puVar1 = (uint *)__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::
                   base((__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>
                         *)param_2);
  return uVar2 < *puVar1;
}

// ---- __gnu_cxx::__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::operator--  @ 0x3af594
/* __gnu_cxx::__normal_iterator<LobbyRow**, std::vector<LobbyRow*, std::allocator<LobbyRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>> * __thiscall
__gnu_cxx::__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>>::
operator--(__normal_iterator<LobbyRow**,std::vector<LobbyRow*,std::allocator<LobbyRow*>>> *this)

{
  *(int *)this = *(int *)this + -4;
  return this;
}

// ---- __gnu_cxx::__alloc_traits<std::allocator<ServerListObject>>::_S_propagate_on_copy_assign  @ 0x3d33d0
/* __gnu_cxx::__alloc_traits<std::allocator<ServerListObject> >::_S_propagate_on_copy_assign() */

undefined4
__gnu_cxx::__alloc_traits<std::allocator<ServerListObject>>::_S_propagate_on_copy_assign(void)

{
  return 0;
}

// ---- __gnu_cxx::__alloc_traits<std::allocator<ServerListObject>>::_S_always_equal  @ 0x3d33d8
/* __gnu_cxx::__alloc_traits<std::allocator<ServerListObject> >::_S_always_equal() */

undefined4 __gnu_cxx::__alloc_traits<std::allocator<ServerListObject>>::_S_always_equal(void)

{
  return 1;
}

// ---- __gnu_cxx::__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>::__normal_iterator  @ 0x3d3e88
/* __gnu_cxx::__normal_iterator<ServerListObject*, std::vector<ServerListObject,
   std::allocator<ServerListObject> > >::__normal_iterator(ServerListObject* const&) */

__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
* __thiscall
__gnu_cxx::
__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
::__normal_iterator(__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
                    *this,ServerListObject **param_1)

{
  *(ServerListObject **)this = *param_1;
  return this;
}

// ---- __gnu_cxx::operator==  @ 0x3d3ea0
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<ServerListObject*,
   std::vector<ServerListObject, std::allocator<ServerListObject> > > const&,
   __gnu_cxx::__normal_iterator<ServerListObject*, std::vector<ServerListObject,
   std::allocator<ServerListObject> > > const&) */

bool __gnu_cxx::operator==(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
                  ::base((__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
                  ::base((__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
                          *)param_2);
  return iVar2 == *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>::operator+  @ 0x3d3ecc
/* __gnu_cxx::__normal_iterator<ServerListObject*, std::vector<ServerListObject,
   std::allocator<ServerListObject> > >::TEMPNAMEPLACEHOLDERVALUE(int const&) const */

undefined4 __thiscall
__gnu_cxx::
__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
::operator+(__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
            *this,int *param_1)

{
  ServerListObject *local_10;
  undefined4 local_c [2];
  
  local_10 = (ServerListObject *)(*param_1 * 8 + *(int *)this);
  __normal_iterator((__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
                     *)local_c,&local_10);
  return local_c[0];
}

// ---- __gnu_cxx::operator!=  @ 0x3d3ef8
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<ServerListObject*,
   std::vector<ServerListObject, std::allocator<ServerListObject> > > const&,
   __gnu_cxx::__normal_iterator<ServerListObject*, std::vector<ServerListObject,
   std::allocator<ServerListObject> > > const&) */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
                  ::base((__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
                  ::base((__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
                          *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>::operator++  @ 0x3d3f24
/* __gnu_cxx::__normal_iterator<ServerListObject*, std::vector<ServerListObject,
   std::allocator<ServerListObject> > >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
* __thiscall
__gnu_cxx::
__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
::operator++(__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
             *this)

{
  *(int *)this = *(int *)this + 8;
  return this;
}

// ---- __gnu_cxx::operator-  @ 0x3d3f3c
/* __gnu_cxx::__normal_iterator<ServerListObject*, std::vector<ServerListObject,
   std::allocator<ServerListObject> > >::difference_type
   __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<ServerListObject*,
   std::vector<ServerListObject, std::allocator<ServerListObject> > > const&,
   __gnu_cxx::__normal_iterator<ServerListObject*, std::vector<ServerListObject,
   std::allocator<ServerListObject> > > const&) */

int __gnu_cxx::operator-(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
                  ::base((__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
                  ::base((__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
                          *)param_2);
  return iVar2 - *piVar1 >> 3;
}

// ---- __gnu_cxx::__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>::base  @ 0x3d49d0
/* __gnu_cxx::__normal_iterator<ServerListObject*, std::vector<ServerListObject,
   std::allocator<ServerListObject> > >::base() const */

__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
* __thiscall
__gnu_cxx::
__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
::base(__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
       *this)

{
  return this;
}

// ---- __gnu_cxx::__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>::operator*  @ 0x3d49dc
/* __gnu_cxx::__normal_iterator<ServerListObject*, std::vector<ServerListObject,
   std::allocator<ServerListObject> > >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::
__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
::operator*(__normal_iterator<ServerListObject*,std::vector<ServerListObject,std::allocator<ServerListObject>>>
            *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::new_allocator<ServerListObject>::construct<ServerListObject,ServerListObject_const&>  @ 0x3d4da8
/* void __gnu_cxx::new_allocator<ServerListObject>::construct<ServerListObject, ServerListObject
   const&>(ServerListObject*, ServerListObject const&) */

void __thiscall
__gnu_cxx::new_allocator<ServerListObject>::construct<ServerListObject,ServerListObject_const&>
          (new_allocator<ServerListObject> *this,ServerListObject *param_1,ServerListObject *param_2
          )

{
  ServerListObject *pSVar1;
  ServerListObject *this_00;
  
  pSVar1 = std::forward<ServerListObject_const&>((type *)param_2);
  this_00 = operator_new(8,param_1);
  if (this_00 != (ServerListObject *)0x0) {
    ServerListObject::ServerListObject(this_00,pSVar1);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>>::~new_allocator  @ 0x3d65d4
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, int> > >::~new_allocator() */

new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>>::~new_allocator
          (new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>>::~new_allocator  @ 0x3d6670
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, std::string > >
   >::~new_allocator() */

new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>>::~new_allocator
          (new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>>::destroy<std::_Rb_tree_node<std::pair<int_const,int>>>  @ 0x3d703c
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, int> >
   >::destroy<std::_Rb_tree_node<std::pair<int const, int> > >(std::_Rb_tree_node<std::pair<int
   const, int> >*) */

void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>>::
     destroy<std::_Rb_tree_node<std::pair<int_const,int>>>(_Rb_tree_node *param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>>::destroy<std::_Rb_tree_node<std::pair<int_const,std::string>>>  @ 0x3d70e4
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, std::string > >
   >::destroy<std::_Rb_tree_node<std::pair<int const, std::string > >
   >(std::_Rb_tree_node<std::pair<int const, std::string > >*) */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>>::
destroy<std::_Rb_tree_node<std::pair<int_const,std::string>>>
          (new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>> *this,
          _Rb_tree_node *param_1)

{
  std::_Rb_tree_node<std::pair<int_const,std::string>>::~_Rb_tree_node
            ((_Rb_tree_node<std::pair<int_const,std::string>> *)param_1);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>>::new_allocator  @ 0x3d7730
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, int> > >::new_allocator() */

new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>>::new_allocator
          (new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>>::deallocate  @ 0x3d773c
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, int> >
   >::deallocate(std::_Rb_tree_node<std::pair<int const, int> >*, unsigned int) */

void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>>::deallocate
               (_Rb_tree_node *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>>::new_allocator  @ 0x3d7754
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, std::string > >
   >::new_allocator() */

new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>>::new_allocator
          (new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>>::deallocate  @ 0x3d7760
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, std::string > >
   >::deallocate(std::_Rb_tree_node<std::pair<int const, std::string > >*, unsigned int) */

void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>>::deallocate
               (_Rb_tree_node *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>>::allocate  @ 0x3d7778
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, int> > >::allocate(unsigned int,
   void const*) */

void * __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>>::allocate
                 (uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0x18);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>>::allocate  @ 0x3d78f8
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, std::string > >
   >::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>>::allocate
                 (uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0x18);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>>::max_size  @ 0x3d79a0
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, int> > >::max_size() const */

undefined4 __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>>::max_size(void)

{
  return 0xaaaaaaa;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>>::construct<std::_Rb_tree_node<std::pair<int_const,int>>,std::piecewise_construct_t_const&,std::tuple<int_const&>,std::tuple<>>  @ 0x3d79b4
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, int> >
   >::construct<std::_Rb_tree_node<std::pair<int const, int> >, std::piecewise_construct_t const&,
   std::tuple<int const&>, std::tuple<> >(std::_Rb_tree_node<std::pair<int const, int> >*,
   std::piecewise_construct_t const&, std::tuple<int const&>&&, std::tuple<>&&) */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>>::
construct<std::_Rb_tree_node<std::pair<int_const,int>>,std::piecewise_construct_t_const&,std::tuple<int_const&>,std::tuple<>>
          (new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>> *this,_Rb_tree_node *param_1,
          piecewise_construct_t *param_2,tuple *param_3,tuple *param_4)

{
  piecewise_construct_t *ppVar1;
  tuple *ptVar2;
  tuple *ptVar3;
  _Rb_tree_node<std::pair<int_const,int>> *this_00;
  
  ppVar1 = std::forward<std::piecewise_construct_t_const&>((type *)param_2);
  ptVar2 = std::forward<std::tuple<int_const&>>((type *)param_3);
  ptVar3 = std::forward<std::tuple<>>((type *)param_4);
  this_00 = operator_new(0x18,param_1);
  if (this_00 != (_Rb_tree_node<std::pair<int_const,int>> *)0x0) {
    std::_Rb_tree_node<std::pair<int_const,int>>::
    _Rb_tree_node<std::piecewise_construct_t_const&,std::tuple<int_const&>,std::tuple<>>
              (this_00,ppVar1,ptVar2,ptVar3);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>>::max_size  @ 0x3d7a6c
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, std::string > > >::max_size()
   const */

undefined4
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>>::max_size(void)

{
  return 0xaaaaaaa;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>>::construct<std::_Rb_tree_node<std::pair<int_const,std::string>>,std::piecewise_construct_t_const&,std::tuple<int_const&>,std::tuple<>>  @ 0x3d7a80
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, std::string > >
   >::construct<std::_Rb_tree_node<std::pair<int const, std::string > >, std::piecewise_construct_t
   const&, std::tuple<int const&>, std::tuple<> >(std::_Rb_tree_node<std::pair<int const,
   std::string > >*, std::piecewise_construct_t const&, std::tuple<int const&>&&, std::tuple<>&&) */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>>::
construct<std::_Rb_tree_node<std::pair<int_const,std::string>>,std::piecewise_construct_t_const&,std::tuple<int_const&>,std::tuple<>>
          (new_allocator<std::_Rb_tree_node<std::pair<int_const,std::string>>> *this,
          _Rb_tree_node *param_1,piecewise_construct_t *param_2,tuple *param_3,tuple *param_4)

{
  piecewise_construct_t *ppVar1;
  tuple *ptVar2;
  tuple *ptVar3;
  _Rb_tree_node<std::pair<int_const,std::string>> *this_00;
  
  ppVar1 = std::forward<std::piecewise_construct_t_const&>((type *)param_2);
  ptVar2 = std::forward<std::tuple<int_const&>>((type *)param_3);
  ptVar3 = std::forward<std::tuple<>>((type *)param_4);
  this_00 = operator_new(0x18,param_1);
  if (this_00 != (_Rb_tree_node<std::pair<int_const,std::string>> *)0x0) {
    std::_Rb_tree_node<std::pair<int_const,std::string>>::
    _Rb_tree_node<std::piecewise_construct_t_const&,std::tuple<int_const&>,std::tuple<>>
              (this_00,ppVar1,ptVar2,ptVar3);
  }
  return;
}

// ---- __gnu_cxx::__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::__normal_iterator  @ 0x3e7618
/* __gnu_cxx::__normal_iterator<ScoreRow**, std::vector<ScoreRow*, std::allocator<ScoreRow*> >
   >::__normal_iterator(ScoreRow** const&) */

__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>> * __thiscall
__gnu_cxx::__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::
__normal_iterator(__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>
                  *this,ScoreRow ***param_1)

{
  *(ScoreRow ***)this = *param_1;
  return this;
}

// ---- __gnu_cxx::operator!=  @ 0x3e7630
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<ScoreRow**,
   std::vector<ScoreRow*, std::allocator<ScoreRow*> > > const&,
   __gnu_cxx::__normal_iterator<ScoreRow**, std::vector<ScoreRow*, std::allocator<ScoreRow*> > >
   const&) */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::
                  base((__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>
                        *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::
                  base((__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>
                        *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::operator-  @ 0x3e765c
/* __gnu_cxx::__normal_iterator<ScoreRow**, std::vector<ScoreRow*, std::allocator<ScoreRow*> >
   >::difference_type __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<ScoreRow**,
   std::vector<ScoreRow*, std::allocator<ScoreRow*> > > const&,
   __gnu_cxx::__normal_iterator<ScoreRow**, std::vector<ScoreRow*, std::allocator<ScoreRow*> > >
   const&) */

int __gnu_cxx::operator-(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::
                  base((__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>
                        *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::
                  base((__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>
                        *)param_2);
  return iVar2 - *piVar1 >> 2;
}

// ---- __gnu_cxx::__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::__normal_iterator  @ 0x3e775c
/* __gnu_cxx::__normal_iterator<TeamRow**, std::vector<TeamRow*, std::allocator<TeamRow*> >
   >::__normal_iterator(TeamRow** const&) */

__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>> * __thiscall
__gnu_cxx::__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::
__normal_iterator(__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>> *this,
                 TeamRow ***param_1)

{
  *(TeamRow ***)this = *param_1;
  return this;
}

// ---- __gnu_cxx::operator!=  @ 0x3e7774
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<TeamRow**,
   std::vector<TeamRow*, std::allocator<TeamRow*> > > const&,
   __gnu_cxx::__normal_iterator<TeamRow**, std::vector<TeamRow*, std::allocator<TeamRow*> > >
   const&) */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::base
                            ((__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>
                              *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::base
                            ((__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>
                              *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::operator-  @ 0x3e77a0
/* __gnu_cxx::__normal_iterator<TeamRow**, std::vector<TeamRow*, std::allocator<TeamRow*> >
   >::difference_type __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<TeamRow**,
   std::vector<TeamRow*, std::allocator<TeamRow*> > > const&,
   __gnu_cxx::__normal_iterator<TeamRow**, std::vector<TeamRow*, std::allocator<TeamRow*> > >
   const&) */

int __gnu_cxx::operator-(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::base
                            ((__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>
                              *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::base
                            ((__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>
                              *)param_2);
  return iVar2 - *piVar1 >> 2;
}

// ---- __gnu_cxx::__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::base  @ 0x3e7c30
/* __gnu_cxx::__normal_iterator<ScoreRow**, std::vector<ScoreRow*, std::allocator<ScoreRow*> >
   >::base() const */

__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>> * __thiscall
__gnu_cxx::__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::base
          (__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>> *this)

{
  return this;
}

// ---- __gnu_cxx::__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::operator+  @ 0x3e7cf8
/* __gnu_cxx::__normal_iterator<ScoreRow**, std::vector<ScoreRow*, std::allocator<ScoreRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE(int const&) const */

undefined4 __thiscall
__gnu_cxx::__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::operator+
          (__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>> *this,
          int *param_1)

{
  ScoreRow **local_10;
  undefined4 local_c [2];
  
  local_10 = (ScoreRow **)(*param_1 * 4 + *(int *)this);
  __normal_iterator((__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>
                     *)local_c,&local_10);
  return local_c[0];
}

// ---- __gnu_cxx::__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::base  @ 0x3e7e28
/* __gnu_cxx::__normal_iterator<TeamRow**, std::vector<TeamRow*, std::allocator<TeamRow*> >
   >::base() const */

__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>> * __thiscall
__gnu_cxx::__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::base
          (__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>> *this)

{
  return this;
}

// ---- __gnu_cxx::__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::operator+  @ 0x3e7ef0
/* __gnu_cxx::__normal_iterator<TeamRow**, std::vector<TeamRow*, std::allocator<TeamRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE(int const&) const */

undefined4 __thiscall
__gnu_cxx::__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::operator+
          (__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>> *this,
          int *param_1)

{
  TeamRow **local_10;
  undefined4 local_c [2];
  
  local_10 = (TeamRow **)(*param_1 * 4 + *(int *)this);
  __normal_iterator((__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>> *)
                    local_c,&local_10);
  return local_c[0];
}

// ---- __gnu_cxx::new_allocator<TeamRow*>::~new_allocator  @ 0x3e8038
/* __gnu_cxx::new_allocator<TeamRow*>::~new_allocator() */

new_allocator<TeamRow*> * __thiscall
__gnu_cxx::new_allocator<TeamRow*>::~new_allocator(new_allocator<TeamRow*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<TeamRow*>::deallocate  @ 0x3e8044
/* __gnu_cxx::new_allocator<TeamRow*>::deallocate(TeamRow**, unsigned int) */

void __gnu_cxx::new_allocator<TeamRow*>::deallocate(TeamRow **param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<ScoreRow*>::~new_allocator  @ 0x3e8080
/* __gnu_cxx::new_allocator<ScoreRow*>::~new_allocator() */

new_allocator<ScoreRow*> * __thiscall
__gnu_cxx::new_allocator<ScoreRow*>::~new_allocator(new_allocator<ScoreRow*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<ScoreRow*>::deallocate  @ 0x3e808c
/* __gnu_cxx::new_allocator<ScoreRow*>::deallocate(ScoreRow**, unsigned int) */

void __gnu_cxx::new_allocator<ScoreRow*>::deallocate(ScoreRow **param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::operator-  @ 0x3e8398
/* __gnu_cxx::__normal_iterator<ScoreRow**, std::vector<ScoreRow*, std::allocator<ScoreRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE(int const&) const */

undefined4 __thiscall
__gnu_cxx::__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::operator-
          (__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>> *this,
          int *param_1)

{
  ScoreRow **local_10;
  undefined4 local_c [2];
  
  local_10 = (ScoreRow **)(*param_1 * -4 + *(int *)this);
  __normal_iterator((__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>
                     *)local_c,&local_10);
  return local_c[0];
}

// ---- __gnu_cxx::__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::operator*  @ 0x3e84d0
/* __gnu_cxx::__normal_iterator<ScoreRow**, std::vector<ScoreRow*, std::allocator<ScoreRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::operator*
          (__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>> *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::operator==  @ 0x3e857c
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<ScoreRow**,
   std::vector<ScoreRow*, std::allocator<ScoreRow*> > > const&,
   __gnu_cxx::__normal_iterator<ScoreRow**, std::vector<ScoreRow*, std::allocator<ScoreRow*> > >
   const&) */

bool __gnu_cxx::operator==(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::
                  base((__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>
                        *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::
                  base((__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>
                        *)param_2);
  return iVar2 == *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::operator++  @ 0x3e85a8
/* __gnu_cxx::__normal_iterator<ScoreRow**, std::vector<ScoreRow*, std::allocator<ScoreRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>> * __thiscall
__gnu_cxx::__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::
operator++(__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>> *this)

{
  *(int *)this = *(int *)this + 4;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::operator-  @ 0x3e872c
/* __gnu_cxx::__normal_iterator<TeamRow**, std::vector<TeamRow*, std::allocator<TeamRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE(int const&) const */

undefined4 __thiscall
__gnu_cxx::__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::operator-
          (__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>> *this,
          int *param_1)

{
  TeamRow **local_10;
  undefined4 local_c [2];
  
  local_10 = (TeamRow **)(*param_1 * -4 + *(int *)this);
  __normal_iterator((__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>> *)
                    local_c,&local_10);
  return local_c[0];
}

// ---- __gnu_cxx::__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::operator*  @ 0x3e8864
/* __gnu_cxx::__normal_iterator<TeamRow**, std::vector<TeamRow*, std::allocator<TeamRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::operator*
          (__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>> *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::operator==  @ 0x3e8910
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<TeamRow**,
   std::vector<TeamRow*, std::allocator<TeamRow*> > > const&,
   __gnu_cxx::__normal_iterator<TeamRow**, std::vector<TeamRow*, std::allocator<TeamRow*> > >
   const&) */

bool __gnu_cxx::operator==(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::base
                            ((__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>
                              *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::base
                            ((__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>
                              *)param_2);
  return iVar2 == *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::operator++  @ 0x3e893c
/* __gnu_cxx::__normal_iterator<TeamRow**, std::vector<TeamRow*, std::allocator<TeamRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>> * __thiscall
__gnu_cxx::__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::operator++
          (__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>> *this)

{
  *(int *)this = *(int *)this + 4;
  return this;
}

// ---- __gnu_cxx::new_allocator<TeamRow*>::new_allocator  @ 0x3e8a10
/* __gnu_cxx::new_allocator<TeamRow*>::new_allocator() */

new_allocator<TeamRow*> * __thiscall
__gnu_cxx::new_allocator<TeamRow*>::new_allocator(new_allocator<TeamRow*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<ScoreRow*>::new_allocator  @ 0x3e8a1c
/* __gnu_cxx::new_allocator<ScoreRow*>::new_allocator() */

new_allocator<ScoreRow*> * __thiscall
__gnu_cxx::new_allocator<ScoreRow*>::new_allocator(new_allocator<ScoreRow*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<TeamRow*>::construct<TeamRow*,TeamRow*>  @ 0x3e8a28
/* void __gnu_cxx::new_allocator<TeamRow*>::construct<TeamRow*, TeamRow*>(TeamRow**, TeamRow*&&) */

void __thiscall
__gnu_cxx::new_allocator<TeamRow*>::construct<TeamRow*,TeamRow*>
          (new_allocator<TeamRow*> *this,TeamRow **param_1,TeamRow **param_2)

{
  TeamRow **ppTVar1;
  undefined4 *puVar2;
  TeamRow *pTVar3;
  
  ppTVar1 = std::forward<TeamRow*>((type *)param_2);
  pTVar3 = *ppTVar1;
  puVar2 = operator_new(4,param_1);
  if (puVar2 != (undefined4 *)0x0) {
    *puVar2 = pTVar3;
  }
  return;
}

// ---- __gnu_cxx::new_allocator<TeamRow*>::allocate  @ 0x3e8a74
/* __gnu_cxx::new_allocator<TeamRow*>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<TeamRow*>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<ScoreRow*>::construct<ScoreRow*,ScoreRow*>  @ 0x3e8b04
/* void __gnu_cxx::new_allocator<ScoreRow*>::construct<ScoreRow*, ScoreRow*>(ScoreRow**,
   ScoreRow*&&) */

void __thiscall
__gnu_cxx::new_allocator<ScoreRow*>::construct<ScoreRow*,ScoreRow*>
          (new_allocator<ScoreRow*> *this,ScoreRow **param_1,ScoreRow **param_2)

{
  ScoreRow **ppSVar1;
  undefined4 *puVar2;
  ScoreRow *pSVar3;
  
  ppSVar1 = std::forward<ScoreRow*>((type *)param_2);
  pSVar3 = *ppSVar1;
  puVar2 = operator_new(4,param_1);
  if (puVar2 != (undefined4 *)0x0) {
    *puVar2 = pSVar3;
  }
  return;
}

// ---- __gnu_cxx::new_allocator<ScoreRow*>::allocate  @ 0x3e8b50
/* __gnu_cxx::new_allocator<ScoreRow*>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<ScoreRow*>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::operator<  @ 0x3e8c78
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<ScoreRow**,
   std::vector<ScoreRow*, std::allocator<ScoreRow*> > > const&,
   __gnu_cxx::__normal_iterator<ScoreRow**, std::vector<ScoreRow*, std::allocator<ScoreRow*> > >
   const&) */

bool __gnu_cxx::operator<(__normal_iterator *param_1,__normal_iterator *param_2)

{
  uint *puVar1;
  uint uVar2;
  
  puVar1 = (uint *)__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::
                   base((__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>
                         *)param_1);
  uVar2 = *puVar1;
  puVar1 = (uint *)__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::
                   base((__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>
                         *)param_2);
  return uVar2 < *puVar1;
}

// ---- __gnu_cxx::__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::operator--  @ 0x3e8d14
/* __gnu_cxx::__normal_iterator<ScoreRow**, std::vector<ScoreRow*, std::allocator<ScoreRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>> * __thiscall
__gnu_cxx::__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>>::
operator--(__normal_iterator<ScoreRow**,std::vector<ScoreRow*,std::allocator<ScoreRow*>>> *this)

{
  *(int *)this = *(int *)this + -4;
  return this;
}

// ---- __gnu_cxx::operator<  @ 0x3e8e48
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<TeamRow**,
   std::vector<TeamRow*, std::allocator<TeamRow*> > > const&,
   __gnu_cxx::__normal_iterator<TeamRow**, std::vector<TeamRow*, std::allocator<TeamRow*> > >
   const&) */

bool __gnu_cxx::operator<(__normal_iterator *param_1,__normal_iterator *param_2)

{
  uint *puVar1;
  uint uVar2;
  
  puVar1 = (uint *)__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::base
                             ((__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>
                               *)param_1);
  uVar2 = *puVar1;
  puVar1 = (uint *)__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::base
                             ((__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>
                               *)param_2);
  return uVar2 < *puVar1;
}

// ---- __gnu_cxx::__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::operator--  @ 0x3e8ee4
/* __gnu_cxx::__normal_iterator<TeamRow**, std::vector<TeamRow*, std::allocator<TeamRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>> * __thiscall
__gnu_cxx::__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>>::operator--
          (__normal_iterator<TeamRow**,std::vector<TeamRow*,std::allocator<TeamRow*>>> *this)

{
  *(int *)this = *(int *)this + -4;
  return this;
}

// ---- __gnu_cxx::new_allocator<TeamRow*>::max_size  @ 0x3e8fa4
/* __gnu_cxx::new_allocator<TeamRow*>::max_size() const */

undefined4 __gnu_cxx::new_allocator<TeamRow*>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<TeamRow*>::destroy<TeamRow*>  @ 0x3e8fe8
/* void __gnu_cxx::new_allocator<TeamRow*>::destroy<TeamRow*>(TeamRow**) */

void __gnu_cxx::new_allocator<TeamRow*>::destroy<TeamRow*>(TeamRow **param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<ScoreRow*>::max_size  @ 0x3e9018
/* __gnu_cxx::new_allocator<ScoreRow*>::max_size() const */

undefined4 __gnu_cxx::new_allocator<ScoreRow*>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<ScoreRow*>::destroy<ScoreRow*>  @ 0x3e905c
/* void __gnu_cxx::new_allocator<ScoreRow*>::destroy<ScoreRow*>(ScoreRow**) */

void __gnu_cxx::new_allocator<ScoreRow*>::destroy<ScoreRow*>(ScoreRow **param_1)

{
  return;
}

// ---- __gnu_cxx::__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::__normal_iterator  @ 0x3fd018
/* __gnu_cxx::__normal_iterator<SpawnRow**, std::vector<SpawnRow*, std::allocator<SpawnRow*> >
   >::__normal_iterator(SpawnRow** const&) */

__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>> * __thiscall
__gnu_cxx::__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::
__normal_iterator(__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>
                  *this,SpawnRow ***param_1)

{
  *(SpawnRow ***)this = *param_1;
  return this;
}

// ---- __gnu_cxx::operator!=  @ 0x3fd030
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<SpawnRow**,
   std::vector<SpawnRow*, std::allocator<SpawnRow*> > > const&,
   __gnu_cxx::__normal_iterator<SpawnRow**, std::vector<SpawnRow*, std::allocator<SpawnRow*> > >
   const&) */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::
                  base((__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>
                        *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::
                  base((__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>
                        *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::operator-  @ 0x3fd05c
/* __gnu_cxx::__normal_iterator<SpawnRow**, std::vector<SpawnRow*, std::allocator<SpawnRow*> >
   >::difference_type __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<SpawnRow**,
   std::vector<SpawnRow*, std::allocator<SpawnRow*> > > const&,
   __gnu_cxx::__normal_iterator<SpawnRow**, std::vector<SpawnRow*, std::allocator<SpawnRow*> > >
   const&) */

int __gnu_cxx::operator-(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::
                  base((__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>
                        *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::
                  base((__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>
                        *)param_2);
  return iVar2 - *piVar1 >> 2;
}

// ---- __gnu_cxx::__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::base  @ 0x3fd2f4
/* __gnu_cxx::__normal_iterator<SpawnRow**, std::vector<SpawnRow*, std::allocator<SpawnRow*> >
   >::base() const */

__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>> * __thiscall
__gnu_cxx::__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::base
          (__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>> *this)

{
  return this;
}

// ---- __gnu_cxx::__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::operator+  @ 0x3fd3bc
/* __gnu_cxx::__normal_iterator<SpawnRow**, std::vector<SpawnRow*, std::allocator<SpawnRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE(int const&) const */

undefined4 __thiscall
__gnu_cxx::__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::operator+
          (__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>> *this,
          int *param_1)

{
  SpawnRow **local_10;
  undefined4 local_c [2];
  
  local_10 = (SpawnRow **)(*param_1 * 4 + *(int *)this);
  __normal_iterator((__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>
                     *)local_c,&local_10);
  return local_c[0];
}

// ---- __gnu_cxx::new_allocator<SpawnRow*>::~new_allocator  @ 0x3fd510
/* __gnu_cxx::new_allocator<SpawnRow*>::~new_allocator() */

new_allocator<SpawnRow*> * __thiscall
__gnu_cxx::new_allocator<SpawnRow*>::~new_allocator(new_allocator<SpawnRow*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<SpawnRow*>::deallocate  @ 0x3fd51c
/* __gnu_cxx::new_allocator<SpawnRow*>::deallocate(SpawnRow**, unsigned int) */

void __gnu_cxx::new_allocator<SpawnRow*>::deallocate(SpawnRow **param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<SpawnRow*>::construct<SpawnRow*,SpawnRow*const&>  @ 0x3fd540
/* void __gnu_cxx::new_allocator<SpawnRow*>::construct<SpawnRow*, SpawnRow* const&>(SpawnRow**,
   SpawnRow* const&) */

void __thiscall
__gnu_cxx::new_allocator<SpawnRow*>::construct<SpawnRow*,SpawnRow*const&>
          (new_allocator<SpawnRow*> *this,SpawnRow **param_1,SpawnRow **param_2)

{
  SpawnRow **ppSVar1;
  undefined4 *puVar2;
  SpawnRow *pSVar3;
  
  ppSVar1 = std::forward<SpawnRow*const&>((type *)param_2);
  pSVar3 = *ppSVar1;
  puVar2 = operator_new(4,param_1);
  if (puVar2 != (undefined4 *)0x0) {
    *puVar2 = pSVar3;
  }
  return;
}

// ---- __gnu_cxx::new_allocator<SpawnRow*>::allocate  @ 0x3fd58c
/* __gnu_cxx::new_allocator<SpawnRow*>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<SpawnRow*>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::operator-  @ 0x3fd6cc
/* __gnu_cxx::__normal_iterator<SpawnRow**, std::vector<SpawnRow*, std::allocator<SpawnRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE(int const&) const */

undefined4 __thiscall
__gnu_cxx::__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::operator-
          (__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>> *this,
          int *param_1)

{
  SpawnRow **local_10;
  undefined4 local_c [2];
  
  local_10 = (SpawnRow **)(*param_1 * -4 + *(int *)this);
  __normal_iterator((__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>
                     *)local_c,&local_10);
  return local_c[0];
}

// ---- __gnu_cxx::__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::operator*  @ 0x3fd804
/* __gnu_cxx::__normal_iterator<SpawnRow**, std::vector<SpawnRow*, std::allocator<SpawnRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::operator*
          (__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>> *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::operator==  @ 0x3fd8b0
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<SpawnRow**,
   std::vector<SpawnRow*, std::allocator<SpawnRow*> > > const&,
   __gnu_cxx::__normal_iterator<SpawnRow**, std::vector<SpawnRow*, std::allocator<SpawnRow*> > >
   const&) */

bool __gnu_cxx::operator==(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::
                  base((__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>
                        *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::
                  base((__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>
                        *)param_2);
  return iVar2 == *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::operator++  @ 0x3fd8dc
/* __gnu_cxx::__normal_iterator<SpawnRow**, std::vector<SpawnRow*, std::allocator<SpawnRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>> * __thiscall
__gnu_cxx::__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::
operator++(__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>> *this)

{
  *(int *)this = *(int *)this + 4;
  return this;
}

// ---- __gnu_cxx::new_allocator<SpawnRow*>::new_allocator  @ 0x3fd9b0
/* __gnu_cxx::new_allocator<SpawnRow*>::new_allocator() */

new_allocator<SpawnRow*> * __thiscall
__gnu_cxx::new_allocator<SpawnRow*>::new_allocator(new_allocator<SpawnRow*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<SpawnRow*>::max_size  @ 0x3fd9e0
/* __gnu_cxx::new_allocator<SpawnRow*>::max_size() const */

undefined4 __gnu_cxx::new_allocator<SpawnRow*>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<SpawnRow*>::destroy<SpawnRow*>  @ 0x3fda24
/* void __gnu_cxx::new_allocator<SpawnRow*>::destroy<SpawnRow*>(SpawnRow**) */

void __gnu_cxx::new_allocator<SpawnRow*>::destroy<SpawnRow*>(SpawnRow **param_1)

{
  return;
}

// ---- __gnu_cxx::operator<  @ 0x3fdac8
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<SpawnRow**,
   std::vector<SpawnRow*, std::allocator<SpawnRow*> > > const&,
   __gnu_cxx::__normal_iterator<SpawnRow**, std::vector<SpawnRow*, std::allocator<SpawnRow*> > >
   const&) */

bool __gnu_cxx::operator<(__normal_iterator *param_1,__normal_iterator *param_2)

{
  uint *puVar1;
  uint uVar2;
  
  puVar1 = (uint *)__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::
                   base((__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>
                         *)param_1);
  uVar2 = *puVar1;
  puVar1 = (uint *)__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::
                   base((__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>
                         *)param_2);
  return uVar2 < *puVar1;
}

// ---- __gnu_cxx::__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::operator--  @ 0x3fdb64
/* __gnu_cxx::__normal_iterator<SpawnRow**, std::vector<SpawnRow*, std::allocator<SpawnRow*> >
   >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>> * __thiscall
__gnu_cxx::__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>>::
operator--(__normal_iterator<SpawnRow**,std::vector<SpawnRow*,std::allocator<SpawnRow*>>> *this)

{
  *(int *)this = *(int *)this + -4;
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>>::construct<std::_Rb_tree_node<std::pair<int_const,int>>,std::piecewise_construct_t_const&,std::tuple<int&&>,std::tuple<>>  @ 0x4084ec
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, int> >
   >::construct<std::_Rb_tree_node<std::pair<int const, int> >, std::piecewise_construct_t const&,
   std::tuple<int&&>, std::tuple<> >(std::_Rb_tree_node<std::pair<int const, int> >*,
   std::piecewise_construct_t const&, std::tuple<int&&>&&, std::tuple<>&&) */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>>::
construct<std::_Rb_tree_node<std::pair<int_const,int>>,std::piecewise_construct_t_const&,std::tuple<int&&>,std::tuple<>>
          (new_allocator<std::_Rb_tree_node<std::pair<int_const,int>>> *this,_Rb_tree_node *param_1,
          piecewise_construct_t *param_2,tuple *param_3,tuple *param_4)

{
  piecewise_construct_t *ppVar1;
  tuple *ptVar2;
  tuple *ptVar3;
  _Rb_tree_node<std::pair<int_const,int>> *this_00;
  
  ppVar1 = std::forward<std::piecewise_construct_t_const&>((type *)param_2);
  ptVar2 = std::forward<std::tuple<int&&>>((type *)param_3);
  ptVar3 = std::forward<std::tuple<>>((type *)param_4);
  this_00 = operator_new(0x18,param_1);
  if (this_00 != (_Rb_tree_node<std::pair<int_const,int>> *)0x0) {
    std::_Rb_tree_node<std::pair<int_const,int>>::
    _Rb_tree_node<std::piecewise_construct_t_const&,std::tuple<int&&>,std::tuple<>>
              (this_00,ppVar1,ptVar2,ptVar3);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>>::~new_allocator  @ 0x440350
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, bool> >
   >::~new_allocator() */

new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>>::~new_allocator
          (new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>>::new_allocator  @ 0x44049c
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, bool> >
   >::new_allocator() */

new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>>::new_allocator
          (new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>>::destroy<std::_Rb_tree_node<std::pair<std::string_const,bool>>>  @ 0x4404e8
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, bool> >
   >::destroy<std::_Rb_tree_node<std::pair<std::string const, bool> >
   >(std::_Rb_tree_node<std::pair<std::string const, bool> >*) */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>>::
destroy<std::_Rb_tree_node<std::pair<std::string_const,bool>>>
          (new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>> *this,
          _Rb_tree_node *param_1)

{
  std::_Rb_tree_node<std::pair<std::string_const,bool>>::~_Rb_tree_node
            ((_Rb_tree_node<std::pair<std::string_const,bool>> *)param_1);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>>::deallocate  @ 0x440568
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, bool> >
   >::deallocate(std::_Rb_tree_node<std::pair<std::string const, bool> >*, unsigned int) */

void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>>::deallocate
               (_Rb_tree_node *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>>::allocate  @ 0x440580
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, bool> >
   >::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>>::allocate
                 (uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0x18);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>>::max_size  @ 0x4405e4
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, bool> > >::max_size()
   const */

undefined4
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>>::max_size(void)

{
  return 0xaaaaaaa;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>>::construct<std::_Rb_tree_node<std::pair<std::string_const,bool>>,std::pair<std::string,bool>>  @ 0x4405f8
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, bool> >
   >::construct<std::_Rb_tree_node<std::pair<std::string const, bool> >, std::pair<std::string,
   bool> >(std::_Rb_tree_node<std::pair<std::string const, bool> >*, std::pair<std::string, bool>&&)
    */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>>::
construct<std::_Rb_tree_node<std::pair<std::string_const,bool>>,std::pair<std::string,bool>>
          (new_allocator<std::_Rb_tree_node<std::pair<std::string_const,bool>>> *this,
          _Rb_tree_node *param_1,pair *param_2)

{
  pair *ppVar1;
  _Rb_tree_node<std::pair<std::string_const,bool>> *this_00;
  
  ppVar1 = std::forward<std::pair<std::string,bool>>((type *)param_2);
  this_00 = operator_new(0x18,param_1);
  if (this_00 != (_Rb_tree_node<std::pair<std::string_const,bool>> *)0x0) {
    std::_Rb_tree_node<std::pair<std::string_const,bool>>::
    _Rb_tree_node<std::pair<std::string,bool>>(this_00,ppVar1);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>>::~new_allocator  @ 0x445b24
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>
   >::~new_allocator() */

new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>> * __thiscall
__gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>>::
~new_allocator(new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>>::destroy<std::_List_node<cocos2d::extension::AssetsManager::_Message*>>  @ 0x445b3c
/* void __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>
   >::destroy<std::_List_node<cocos2d::extension::AssetsManager::_Message*>
   >(std::_List_node<cocos2d::extension::AssetsManager::_Message*>*) */

void __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>>::
     destroy<std::_List_node<cocos2d::extension::AssetsManager::_Message*>>(_List_node *param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>>::deallocate  @ 0x445c64
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>
   >::deallocate(std::_List_node<cocos2d::extension::AssetsManager::_Message*>*, unsigned int) */

void __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>>::
     deallocate(_List_node *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>>::construct<std::_List_node<cocos2d::extension::AssetsManager::_Message*>,cocos2d::extension::AssetsManager::_Message*const&>  @ 0x445c98
/* void __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>
   >::construct<std::_List_node<cocos2d::extension::AssetsManager::_Message*>,
   cocos2d::extension::AssetsManager::_Message*
   const&>(std::_List_node<cocos2d::extension::AssetsManager::_Message*>*,
   cocos2d::extension::AssetsManager::_Message* const&) */

void __thiscall
__gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>>::
construct<std::_List_node<cocos2d::extension::AssetsManager::_Message*>,cocos2d::extension::AssetsManager::_Message*const&>
          (new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>> *this,
          _List_node *param_1,_Message **param_2)

{
  _Message **pp_Var1;
  _List_node<cocos2d::extension::AssetsManager::_Message*> *this_00;
  
  pp_Var1 = std::forward<cocos2d::extension::AssetsManager::_Message*const&>((type *)param_2);
  this_00 = operator_new(0xc,param_1);
  if (this_00 != (_List_node<cocos2d::extension::AssetsManager::_Message*> *)0x0) {
    std::_List_node<cocos2d::extension::AssetsManager::_Message*>::
    _List_node<cocos2d::extension::AssetsManager::_Message*const&>(this_00,pp_Var1);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>>::new_allocator  @ 0x445d10
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>
   >::new_allocator() */

new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>> * __thiscall
__gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>>::
new_allocator(new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>>::allocate  @ 0x445d1c
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>
   >::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>>::
       allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0xc);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>>::max_size  @ 0x445d88
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>
   >::max_size() const */

undefined4
__gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::AssetsManager::_Message*>>::max_size
          (void)

{
  return 0x15555555;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::string>>::~new_allocator  @ 0x448b24
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::string > >::~new_allocator() */

new_allocator<std::_Rb_tree_node<std::string>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::string>>::~new_allocator
          (new_allocator<std::_Rb_tree_node<std::string>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::string>>::destroy<std::_Rb_tree_node<std::string>>  @ 0x449104
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::string >
   >::destroy<std::_Rb_tree_node<std::string > >(std::_Rb_tree_node<std::string >*) */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::string>>::destroy<std::_Rb_tree_node<std::string>>
          (new_allocator<std::_Rb_tree_node<std::string>> *this,_Rb_tree_node *param_1)

{
  std::_Rb_tree_node<std::string>::~_Rb_tree_node((_Rb_tree_node<std::string> *)param_1);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::string>>::new_allocator  @ 0x4492a8
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::string > >::new_allocator() */

new_allocator<std::_Rb_tree_node<std::string>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::string>>::new_allocator
          (new_allocator<std::_Rb_tree_node<std::string>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::string>>::deallocate  @ 0x4492b4
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::string >
   >::deallocate(std::_Rb_tree_node<std::string >*, unsigned int) */

void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::string>>::deallocate
               (_Rb_tree_node *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::string>>::allocate  @ 0x449340
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::string > >::allocate(unsigned int, void const*)
    */

void * __gnu_cxx::new_allocator<std::_Rb_tree_node<std::string>>::allocate
                 (uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0x14);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::string>>::max_size  @ 0x4493c8
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::string > >::max_size() const */

undefined4 __gnu_cxx::new_allocator<std::_Rb_tree_node<std::string>>::max_size(void)

{
  return 0xccccccc;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::string>>::construct<std::_Rb_tree_node<std::string>,std::string>  @ 0x4493dc
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::string >
   >::construct<std::_Rb_tree_node<std::string >, std::string >(std::_Rb_tree_node<std::string >*,
   std::string&&) */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::string>>::
construct<std::_Rb_tree_node<std::string>,std::string>
          (new_allocator<std::_Rb_tree_node<std::string>> *this,_Rb_tree_node *param_1,
          string *param_2)

{
  string *psVar1;
  _Rb_tree_node<std::string> *this_00;
  
  psVar1 = std::forward<std::string>((type *)param_2);
  this_00 = operator_new(0x14,param_1);
  if (this_00 != (_Rb_tree_node<std::string> *)0x0) {
    std::_Rb_tree_node<std::string>::_Rb_tree_node<std::string>(this_00,psVar1);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::string>>::construct<std::_Rb_tree_node<std::string>,std::string_const&>  @ 0x44941c
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::string >
   >::construct<std::_Rb_tree_node<std::string >, std::string const&>(std::_Rb_tree_node<std::string
   >*, std::string const&) */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::string>>::
construct<std::_Rb_tree_node<std::string>,std::string_const&>
          (new_allocator<std::_Rb_tree_node<std::string>> *this,_Rb_tree_node *param_1,
          string *param_2)

{
  string *psVar1;
  _Rb_tree_node<std::string> *this_00;
  
  psVar1 = std::forward<std::string_const&>((type *)param_2);
  this_00 = operator_new(0x14,param_1);
  if (this_00 != (_Rb_tree_node<std::string> *)0x0) {
    std::_Rb_tree_node<std::string>::_Rb_tree_node<std::string_const&>(this_00,psVar1);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>::~new_allocator  @ 0x44ee20
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const,
   cocos2d::extension::CCNodeLoader*> > >::~new_allocator() */

new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>> *
__thiscall
__gnu_cxx::
new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>::
~new_allocator(new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>
               *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>::destroy<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>  @ 0x44f238
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const,
   cocos2d::extension::CCNodeLoader*> > >::destroy<std::_Rb_tree_node<std::pair<std::string const,
   cocos2d::extension::CCNodeLoader*> > >(std::_Rb_tree_node<std::pair<std::string const,
   cocos2d::extension::CCNodeLoader*> >*) */

void __thiscall
__gnu_cxx::
new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>::
destroy<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>
          (new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>
           *this,_Rb_tree_node *param_1)

{
  std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>::~_Rb_tree_node
            ((_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>> *)
             param_1);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>::new_allocator  @ 0x44f320
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const,
   cocos2d::extension::CCNodeLoader*> > >::new_allocator() */

new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>> *
__thiscall
__gnu_cxx::
new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>::
new_allocator(new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>
              *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>::deallocate  @ 0x44f32c
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const,
   cocos2d::extension::CCNodeLoader*> > >::deallocate(std::_Rb_tree_node<std::pair<std::string
   const, cocos2d::extension::CCNodeLoader*> >*, unsigned int) */

void __gnu_cxx::
     new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>
     ::deallocate(_Rb_tree_node *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>::allocate  @ 0x44f394
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const,
   cocos2d::extension::CCNodeLoader*> > >::allocate(unsigned int, void const*) */

void * __gnu_cxx::
       new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>
       ::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0x18);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>::max_size  @ 0x44f3f8
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const,
   cocos2d::extension::CCNodeLoader*> > >::max_size() const */

undefined4
__gnu_cxx::
new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>::
max_size(void)

{
  return 0xaaaaaaa;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>::construct<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>,std::pair<std::string,cocos2d::extension::CCNodeLoader*>>  @ 0x44f40c
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const,
   cocos2d::extension::CCNodeLoader*> > >::construct<std::_Rb_tree_node<std::pair<std::string const,
   cocos2d::extension::CCNodeLoader*> >, std::pair<std::string, cocos2d::extension::CCNodeLoader*>
   >(std::_Rb_tree_node<std::pair<std::string const, cocos2d::extension::CCNodeLoader*> >*,
   std::pair<std::string, cocos2d::extension::CCNodeLoader*>&&) */

void __thiscall
__gnu_cxx::
new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>::
construct<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>,std::pair<std::string,cocos2d::extension::CCNodeLoader*>>
          (new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>>
           *this,_Rb_tree_node *param_1,pair *param_2)

{
  pair *ppVar1;
  _Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>> *this_00;
  
  ppVar1 = std::forward<std::pair<std::string,cocos2d::extension::CCNodeLoader*>>((type *)param_2);
  this_00 = operator_new(0x18,param_1);
  if (this_00 !=
      (_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>> *)0x0) {
    std::_Rb_tree_node<std::pair<std::string_const,cocos2d::extension::CCNodeLoader*>>::
    _Rb_tree_node<std::pair<std::string,cocos2d::extension::CCNodeLoader*>>(this_00,ppVar1);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned_int>>::~new_allocator  @ 0x464c1c
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned int> >::~new_allocator() */

new_allocator<std::_Rb_tree_node<unsigned_int>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned_int>>::~new_allocator
          (new_allocator<std::_Rb_tree_node<unsigned_int>> *this)

{
  return this;
}

// ---- __gnu_cxx::__normal_iterator<float*,std::vector<float,std::allocator<float>>>::__normal_iterator  @ 0x4650fc
/* __gnu_cxx::__normal_iterator<float*, std::vector<float, std::allocator<float> >
   >::__normal_iterator(float* const&) */

__normal_iterator<float*,std::vector<float,std::allocator<float>>> * __thiscall
__gnu_cxx::__normal_iterator<float*,std::vector<float,std::allocator<float>>>::__normal_iterator
          (__normal_iterator<float*,std::vector<float,std::allocator<float>>> *this,float **param_1)

{
  *(float **)this = *param_1;
  return this;
}

// ---- __gnu_cxx::new_allocator<float>::~new_allocator  @ 0x46543c
/* __gnu_cxx::new_allocator<float>::~new_allocator() */

new_allocator<float> * __thiscall
__gnu_cxx::new_allocator<float>::~new_allocator(new_allocator<float> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<float>::deallocate  @ 0x465448
/* __gnu_cxx::new_allocator<float>::deallocate(float*, unsigned int) */

void __gnu_cxx::new_allocator<float>::deallocate(float *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned_int>>::destroy<std::_Rb_tree_node<unsigned_int>>  @ 0x465478
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned int>
   >::destroy<std::_Rb_tree_node<unsigned int> >(std::_Rb_tree_node<unsigned int>*) */

void __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned_int>>::
     destroy<std::_Rb_tree_node<unsigned_int>>(_Rb_tree_node *param_1)

{
  return;
}

// ---- __gnu_cxx::operator-  @ 0x4656b0
/* __gnu_cxx::__normal_iterator<float*, std::vector<float, std::allocator<float> >
   >::difference_type __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<float*,
   std::vector<float, std::allocator<float> > > const&, __gnu_cxx::__normal_iterator<float*,
   std::vector<float, std::allocator<float> > > const&) */

int __gnu_cxx::operator-(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<float*,std::vector<float,std::allocator<float>>>::base
                            ((__normal_iterator<float*,std::vector<float,std::allocator<float>>> *)
                             param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<float*,std::vector<float,std::allocator<float>>>::base
                            ((__normal_iterator<float*,std::vector<float,std::allocator<float>>> *)
                             param_2);
  return iVar2 - *piVar1 >> 2;
}

// ---- __gnu_cxx::__normal_iterator<float*,std::vector<float,std::allocator<float>>>::base  @ 0x465708
/* __gnu_cxx::__normal_iterator<float*, std::vector<float, std::allocator<float> > >::base() const
    */

__normal_iterator<float*,std::vector<float,std::allocator<float>>> * __thiscall
__gnu_cxx::__normal_iterator<float*,std::vector<float,std::allocator<float>>>::base
          (__normal_iterator<float*,std::vector<float,std::allocator<float>>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned_int>>::new_allocator  @ 0x465880
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned int> >::new_allocator() */

new_allocator<std::_Rb_tree_node<unsigned_int>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned_int>>::new_allocator
          (new_allocator<std::_Rb_tree_node<unsigned_int>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<float>::new_allocator  @ 0x46588c
/* __gnu_cxx::new_allocator<float>::new_allocator() */

new_allocator<float> * __thiscall
__gnu_cxx::new_allocator<float>::new_allocator(new_allocator<float> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned_int>>::deallocate  @ 0x465898
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned int>
   >::deallocate(std::_Rb_tree_node<unsigned int>*, unsigned int) */

void __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned_int>>::deallocate
               (_Rb_tree_node *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<float>::allocate  @ 0x465a7c
/* __gnu_cxx::new_allocator<float>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<float>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned_int>>::allocate  @ 0x465b24
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned int> >::allocate(unsigned int, void const*)
    */

void * __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned_int>>::allocate
                 (uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0x14);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<float>::max_size  @ 0x465c2c
/* __gnu_cxx::new_allocator<float>::max_size() const */

undefined4 __gnu_cxx::new_allocator<float>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned_int>>::max_size  @ 0x465c3c
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned int> >::max_size() const */

undefined4 __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned_int>>::max_size(void)

{
  return 0xccccccc;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned_int>>::construct<std::_Rb_tree_node<unsigned_int>,unsigned_int>  @ 0x465c50
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned int>
   >::construct<std::_Rb_tree_node<unsigned int>, unsigned int>(std::_Rb_tree_node<unsigned int>*,
   unsigned int&&) */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned_int>>::
construct<std::_Rb_tree_node<unsigned_int>,unsigned_int>
          (new_allocator<std::_Rb_tree_node<unsigned_int>> *this,_Rb_tree_node *param_1,
          uint *param_2)

{
  uint *puVar1;
  _Rb_tree_node<unsigned_int> *this_00;
  
  puVar1 = std::forward<unsigned_int>((type *)param_2);
  this_00 = operator_new(0x14,param_1);
  if (this_00 != (_Rb_tree_node<unsigned_int> *)0x0) {
    std::_Rb_tree_node<unsigned_int>::_Rb_tree_node<unsigned_int>(this_00,puVar1);
  }
  return;
}

// ---- __gnu_cxx::__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>::operator->  @ 0x468f5c
/* __gnu_cxx::__normal_iterator<std::string*, std::vector<std::string, std::allocator<std::string >
   > >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>::
operator->(__normal_iterator<std::string*,std::vector<std::string,std::allocator<std::string>>>
           *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::operator==  @ 0x469120
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<std::string const*,
   std::vector<std::string, std::allocator<std::string > > > const&,
   __gnu_cxx::__normal_iterator<std::string const*, std::vector<std::string,
   std::allocator<std::string > > > const&) */

bool __gnu_cxx::operator==(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>
                  ::base((__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>
                  ::base((__normal_iterator<std::string_const*,std::vector<std::string,std::allocator<std::string>>>
                          *)param_2);
  return iVar2 == *piVar1;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*>>::~new_allocator  @ 0x46ad48
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*> >::~new_allocator() */

new_allocator<std::_List_node<cocos2d::extension::WsMessage*>> * __thiscall
__gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*>>::~new_allocator
          (new_allocator<std::_List_node<cocos2d::extension::WsMessage*>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*>>::destroy<std::_List_node<cocos2d::extension::WsMessage*>>  @ 0x46ad60
/* void __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*>
   >::destroy<std::_List_node<cocos2d::extension::WsMessage*>
   >(std::_List_node<cocos2d::extension::WsMessage*>*) */

void __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*>>::
     destroy<std::_List_node<cocos2d::extension::WsMessage*>>(_List_node *param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*>>::deallocate  @ 0x46ae54
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*>
   >::deallocate(std::_List_node<cocos2d::extension::WsMessage*>*, unsigned int) */

void __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*>>::deallocate
               (_List_node *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*>>::construct<std::_List_node<cocos2d::extension::WsMessage*>,cocos2d::extension::WsMessage*const&>  @ 0x46ae88
/* void __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*>
   >::construct<std::_List_node<cocos2d::extension::WsMessage*>, cocos2d::extension::WsMessage*
   const&>(std::_List_node<cocos2d::extension::WsMessage*>*, cocos2d::extension::WsMessage* const&)
    */

void __thiscall
__gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*>>::
construct<std::_List_node<cocos2d::extension::WsMessage*>,cocos2d::extension::WsMessage*const&>
          (new_allocator<std::_List_node<cocos2d::extension::WsMessage*>> *this,_List_node *param_1,
          WsMessage **param_2)

{
  WsMessage **ppWVar1;
  _List_node<cocos2d::extension::WsMessage*> *this_00;
  
  ppWVar1 = std::forward<cocos2d::extension::WsMessage*const&>((type *)param_2);
  this_00 = operator_new(0xc,param_1);
  if (this_00 != (_List_node<cocos2d::extension::WsMessage*> *)0x0) {
    std::_List_node<cocos2d::extension::WsMessage*>::
    _List_node<cocos2d::extension::WsMessage*const&>(this_00,ppWVar1);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*>>::new_allocator  @ 0x46af00
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*> >::new_allocator() */

new_allocator<std::_List_node<cocos2d::extension::WsMessage*>> * __thiscall
__gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*>>::new_allocator
          (new_allocator<std::_List_node<cocos2d::extension::WsMessage*>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*>>::allocate  @ 0x46af0c
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*> >::allocate(unsigned
   int, void const*) */

void * __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*>>::allocate
                 (uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0xc);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*>>::max_size  @ 0x46af78
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*> >::max_size() const */

undefined4 __gnu_cxx::new_allocator<std::_List_node<cocos2d::extension::WsMessage*>>::max_size(void)

{
  return 0x15555555;
}

// ---- __gnu_cxx::new_allocator<gpg::Achievement>::construct<gpg::Achievement,std::shared_ptr<gpg::AchievementImpl>>  @ 0x5337be
/* void __gnu_cxx::new_allocator<gpg::Achievement>::construct<gpg::Achievement,
   std::shared_ptr<gpg::AchievementImpl> >(gpg::Achievement*,
   std::shared_ptr<gpg::AchievementImpl>&&) */

void __thiscall
__gnu_cxx::new_allocator<gpg::Achievement>::
construct<gpg::Achievement,std::shared_ptr<gpg::AchievementImpl>>
          (new_allocator<gpg::Achievement> *this,Achievement *param_1,shared_ptr *param_2)

{
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = *(undefined4 *)param_2;
  local_c = *(undefined4 *)(param_2 + 4);
  *(undefined4 *)(param_2 + 4) = 0;
  *(undefined4 *)param_2 = 0;
  if (param_1 != (Achievement *)0x0) {
    gpg::Achievement::Achievement(param_1,&local_10);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return;
}

// ---- __gnu_cxx::new_allocator<gpg::ScoreSummary>::construct<gpg::ScoreSummary,std::shared_ptr<gpg::ScoreSummaryImpl>>  @ 0x54aa8c
/* void __gnu_cxx::new_allocator<gpg::ScoreSummary>::construct<gpg::ScoreSummary,
   std::shared_ptr<gpg::ScoreSummaryImpl> >(gpg::ScoreSummary*,
   std::shared_ptr<gpg::ScoreSummaryImpl>&&) */

void __thiscall
__gnu_cxx::new_allocator<gpg::ScoreSummary>::
construct<gpg::ScoreSummary,std::shared_ptr<gpg::ScoreSummaryImpl>>
          (new_allocator<gpg::ScoreSummary> *this,ScoreSummary *param_1,shared_ptr *param_2)

{
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = *(undefined4 *)param_2;
  local_c = *(undefined4 *)(param_2 + 4);
  *(undefined4 *)(param_2 + 4) = 0;
  *(undefined4 *)param_2 = 0;
  if (param_1 != (ScoreSummary *)0x0) {
    gpg::ScoreSummary::ScoreSummary(param_1,&local_10);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return;
}

// ---- __gnu_cxx::new_allocator<gpg::MultiplayerInvitation>::construct<gpg::MultiplayerInvitation,std::shared_ptr<gpg::RealTimeRoomImpl>>  @ 0x559b7e
/* void __gnu_cxx::new_allocator<gpg::MultiplayerInvitation>::construct<gpg::MultiplayerInvitation,
   std::shared_ptr<gpg::RealTimeRoomImpl> >(gpg::MultiplayerInvitation*,
   std::shared_ptr<gpg::RealTimeRoomImpl>&&) */

void __thiscall
__gnu_cxx::new_allocator<gpg::MultiplayerInvitation>::
construct<gpg::MultiplayerInvitation,std::shared_ptr<gpg::RealTimeRoomImpl>>
          (new_allocator<gpg::MultiplayerInvitation> *this,MultiplayerInvitation *param_1,
          shared_ptr *param_2)

{
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = *(undefined4 *)param_2;
  local_c = *(undefined4 *)(param_2 + 4);
  *(undefined4 *)(param_2 + 4) = 0;
  *(undefined4 *)param_2 = 0;
  if (param_1 != (MultiplayerInvitation *)0x0) {
    gpg::MultiplayerInvitation::MultiplayerInvitation(param_1,&local_10);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return;
}

// ---- __gnu_cxx::new_allocator<gpg::SnapshotMetadata>::construct<gpg::SnapshotMetadata,std::shared_ptr<gpg::SnapshotMetadataImpl>>  @ 0x55f3be
/* void __gnu_cxx::new_allocator<gpg::SnapshotMetadata>::construct<gpg::SnapshotMetadata,
   std::shared_ptr<gpg::SnapshotMetadataImpl> >(gpg::SnapshotMetadata*,
   std::shared_ptr<gpg::SnapshotMetadataImpl>&&) */

void __thiscall
__gnu_cxx::new_allocator<gpg::SnapshotMetadata>::
construct<gpg::SnapshotMetadata,std::shared_ptr<gpg::SnapshotMetadataImpl>>
          (new_allocator<gpg::SnapshotMetadata> *this,SnapshotMetadata *param_1,shared_ptr *param_2)

{
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = *(undefined4 *)param_2;
  local_c = *(undefined4 *)(param_2 + 4);
  *(undefined4 *)(param_2 + 4) = 0;
  *(undefined4 *)param_2 = 0;
  if (param_1 != (SnapshotMetadata *)0x0) {
    gpg::SnapshotMetadata::SnapshotMetadata(param_1,&local_10);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return;
}

// ---- __gnu_cxx::new_allocator<gpg::TurnBasedMatch>::construct<gpg::TurnBasedMatch,std::shared_ptr<gpg::TurnBasedMatchImpl>>  @ 0x565bcc
/* void __gnu_cxx::new_allocator<gpg::TurnBasedMatch>::construct<gpg::TurnBasedMatch,
   std::shared_ptr<gpg::TurnBasedMatchImpl> >(gpg::TurnBasedMatch*,
   std::shared_ptr<gpg::TurnBasedMatchImpl>&&) */

void __thiscall
__gnu_cxx::new_allocator<gpg::TurnBasedMatch>::
construct<gpg::TurnBasedMatch,std::shared_ptr<gpg::TurnBasedMatchImpl>>
          (new_allocator<gpg::TurnBasedMatch> *this,TurnBasedMatch *param_1,shared_ptr *param_2)

{
  undefined4 local_10;
  undefined4 local_c;
  
  local_10 = *(undefined4 *)param_2;
  local_c = *(undefined4 *)(param_2 + 4);
  *(undefined4 *)(param_2 + 4) = 0;
  *(undefined4 *)param_2 = 0;
  if (param_1 != (TurnBasedMatch *)0x0) {
    gpg::TurnBasedMatch::TurnBasedMatch(param_1,&local_10);
  }
  std::__shared_count<(__gnu_cxx::_Lock_policy)2>::~__shared_count
            ((__shared_count<(__gnu_cxx::_Lock_policy)2> *)&local_c);
  return;
}

// ---- __gnu_cxx::__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>::__normal_iterator  @ 0x586a6c
/* __gnu_cxx::__normal_iterator<cocos2d::CCPoint**, std::vector<cocos2d::CCPoint*,
   std::allocator<cocos2d::CCPoint*> > >::__normal_iterator() */

__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
* __thiscall
__gnu_cxx::
__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
::__normal_iterator(__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
                    *this)

{
  *(undefined4 *)this = 0;
  return this;
}

// ---- __gnu_cxx::operator!=  @ 0x587abc
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<cocos2d::CCPoint**,
   std::vector<cocos2d::CCPoint*, std::allocator<cocos2d::CCPoint*> > > const&,
   __gnu_cxx::__normal_iterator<cocos2d::CCPoint**, std::vector<cocos2d::CCPoint*,
   std::allocator<cocos2d::CCPoint*> > > const&) */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
                  ::base((__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
                  ::base((__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
                          *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>::operator++  @ 0x587ae8
/* __gnu_cxx::__normal_iterator<cocos2d::CCPoint**, std::vector<cocos2d::CCPoint*,
   std::allocator<cocos2d::CCPoint*> > >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
* __thiscall
__gnu_cxx::
__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
::operator++(__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
             *this)

{
  *(int *)this = *(int *)this + 4;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>::operator*  @ 0x587b00
/* __gnu_cxx::__normal_iterator<cocos2d::CCPoint**, std::vector<cocos2d::CCPoint*,
   std::allocator<cocos2d::CCPoint*> > >::TEMPNAMEPLACEHOLDERVALUE() const */

undefined4 __thiscall
__gnu_cxx::
__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
::operator*(__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
            *this)

{
  return *(undefined4 *)this;
}

// ---- __gnu_cxx::__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>::operator+  @ 0x587b70
/* __gnu_cxx::__normal_iterator<cocos2d::CCPoint**, std::vector<cocos2d::CCPoint*,
   std::allocator<cocos2d::CCPoint*> > >::TEMPNAMEPLACEHOLDERVALUE(int const&) const */

undefined4 __thiscall
__gnu_cxx::
__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
::operator+(__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
            *this,int *param_1)

{
  CCPoint **local_10;
  undefined4 local_c [2];
  
  local_10 = (CCPoint **)(*param_1 * 4 + *(int *)this);
  __normal_iterator((__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
                     *)local_c,&local_10);
  return local_c[0];
}

// ---- __gnu_cxx::__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>::__normal_iterator  @ 0x587e64
/* __gnu_cxx::__normal_iterator<cocos2d::CCPoint**, std::vector<cocos2d::CCPoint*,
   std::allocator<cocos2d::CCPoint*> > >::__normal_iterator(cocos2d::CCPoint** const&) */

__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
* __thiscall
__gnu_cxx::
__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
::__normal_iterator(__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
                    *this,CCPoint ***param_1)

{
  *(CCPoint ***)this = *param_1;
  return this;
}

// ---- __gnu_cxx::__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>::base  @ 0x587e7c
/* __gnu_cxx::__normal_iterator<cocos2d::CCPoint**, std::vector<cocos2d::CCPoint*,
   std::allocator<cocos2d::CCPoint*> > >::base() const */

__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
* __thiscall
__gnu_cxx::
__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
::base(__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
       *this)

{
  return this;
}

// ---- __gnu_cxx::operator-  @ 0x587f04
/* __gnu_cxx::__normal_iterator<cocos2d::CCPoint**, std::vector<cocos2d::CCPoint*,
   std::allocator<cocos2d::CCPoint*> > >::difference_type
   __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<cocos2d::CCPoint**,
   std::vector<cocos2d::CCPoint*, std::allocator<cocos2d::CCPoint*> > > const&,
   __gnu_cxx::__normal_iterator<cocos2d::CCPoint**, std::vector<cocos2d::CCPoint*,
   std::allocator<cocos2d::CCPoint*> > > const&) */

int __gnu_cxx::operator-(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
                  ::base((__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
                  ::base((__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
                          *)param_2);
  return iVar2 - *piVar1 >> 2;
}

// ---- __gnu_cxx::operator==  @ 0x587f2c
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<cocos2d::CCPoint**,
   std::vector<cocos2d::CCPoint*, std::allocator<cocos2d::CCPoint*> > > const&,
   __gnu_cxx::__normal_iterator<cocos2d::CCPoint**, std::vector<cocos2d::CCPoint*,
   std::allocator<cocos2d::CCPoint*> > > const&) */

bool __gnu_cxx::operator==(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
                  ::base((__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
                  ::base((__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
                          *)param_2);
  return iVar2 == *piVar1;
}

// ---- __gnu_cxx::__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>::operator--  @ 0x588410
/* __gnu_cxx::__normal_iterator<cocos2d::CCPoint**, std::vector<cocos2d::CCPoint*,
   std::allocator<cocos2d::CCPoint*> > >::TEMPNAMEPLACEHOLDERVALUE() */

__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
* __thiscall
__gnu_cxx::
__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
::operator--(__normal_iterator<cocos2d::CCPoint**,std::vector<cocos2d::CCPoint*,std::allocator<cocos2d::CCPoint*>>>
             *this)

{
  *(int *)this = *(int *)this + -4;
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCPoint*>::~new_allocator  @ 0x5887bc
/* __gnu_cxx::new_allocator<cocos2d::CCPoint*>::~new_allocator() */

new_allocator<cocos2d::CCPoint*> * __thiscall
__gnu_cxx::new_allocator<cocos2d::CCPoint*>::~new_allocator(new_allocator<cocos2d::CCPoint*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCPoint*>::deallocate  @ 0x5887c8
/* __gnu_cxx::new_allocator<cocos2d::CCPoint*>::deallocate(cocos2d::CCPoint**, unsigned int) */

void __gnu_cxx::new_allocator<cocos2d::CCPoint*>::deallocate(CCPoint **param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCPoint*>::construct<cocos2d::CCPoint*,cocos2d::CCPoint*const&>  @ 0x588810
/* void __gnu_cxx::new_allocator<cocos2d::CCPoint*>::construct<cocos2d::CCPoint*, cocos2d::CCPoint*
   const&>(cocos2d::CCPoint**, cocos2d::CCPoint* const&) */

void __thiscall
__gnu_cxx::new_allocator<cocos2d::CCPoint*>::construct<cocos2d::CCPoint*,cocos2d::CCPoint*const&>
          (new_allocator<cocos2d::CCPoint*> *this,CCPoint **param_1,CCPoint **param_2)

{
  CCPoint **ppCVar1;
  undefined4 *puVar2;
  CCPoint *pCVar3;
  
  ppCVar1 = std::forward<cocos2d::CCPoint*const&>((type *)param_2);
  pCVar3 = *ppCVar1;
  puVar2 = operator_new(4,param_1);
  if (puVar2 != (undefined4 *)0x0) {
    *puVar2 = pCVar3;
  }
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCPoint*>::allocate  @ 0x5888a8
/* __gnu_cxx::new_allocator<cocos2d::CCPoint*>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<cocos2d::CCPoint*>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCPoint*>::destroy<cocos2d::CCPoint*>  @ 0x588968
/* void __gnu_cxx::new_allocator<cocos2d::CCPoint*>::destroy<cocos2d::CCPoint*>(cocos2d::CCPoint**)
    */

void __gnu_cxx::new_allocator<cocos2d::CCPoint*>::destroy<cocos2d::CCPoint*>(CCPoint **param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCPoint*>::new_allocator  @ 0x588974
/* __gnu_cxx::new_allocator<cocos2d::CCPoint*>::new_allocator() */

new_allocator<cocos2d::CCPoint*> * __thiscall
__gnu_cxx::new_allocator<cocos2d::CCPoint*>::new_allocator(new_allocator<cocos2d::CCPoint*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCPoint*>::construct<cocos2d::CCPoint*,cocos2d::CCPoint*>  @ 0x588980
/* void __gnu_cxx::new_allocator<cocos2d::CCPoint*>::construct<cocos2d::CCPoint*,
   cocos2d::CCPoint*>(cocos2d::CCPoint**, cocos2d::CCPoint*&&) */

void __thiscall
__gnu_cxx::new_allocator<cocos2d::CCPoint*>::construct<cocos2d::CCPoint*,cocos2d::CCPoint*>
          (new_allocator<cocos2d::CCPoint*> *this,CCPoint **param_1,CCPoint **param_2)

{
  CCPoint **ppCVar1;
  undefined4 *puVar2;
  CCPoint *pCVar3;
  
  ppCVar1 = std::forward<cocos2d::CCPoint*>((type *)param_2);
  pCVar3 = *ppCVar1;
  puVar2 = operator_new(4,param_1);
  if (puVar2 != (undefined4 *)0x0) {
    *puVar2 = pCVar3;
  }
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCPoint*>::max_size  @ 0x588a18
/* __gnu_cxx::new_allocator<cocos2d::CCPoint*>::max_size() const */

undefined4 __gnu_cxx::new_allocator<cocos2d::CCPoint*>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<float>::construct<float,float_const&>  @ 0x59794c
/* void __gnu_cxx::new_allocator<float>::construct<float, float const&>(float*, float const&) */

void __thiscall
__gnu_cxx::new_allocator<float>::construct<float,float_const&>
          (new_allocator<float> *this,float *param_1,float *param_2)

{
  float *pfVar1;
  float fVar2;
  
  pfVar1 = std::forward<float_const&>((type *)param_2);
  fVar2 = *pfVar1;
  pfVar1 = operator_new(4,param_1);
  if (pfVar1 != (float *)0x0) {
    *pfVar1 = fVar2;
  }
  return;
}

// ---- __gnu_cxx::new_allocator<float>::destroy<float>  @ 0x597990
/* void __gnu_cxx::new_allocator<float>::destroy<float>(float*) */

void __gnu_cxx::new_allocator<float>::destroy<float>(float *param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>>::~new_allocator  @ 0x5a8b34
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*> >::~new_allocator() */

new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>>::~new_allocator
          (new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>>::destroy<std::_Rb_tree_node<cocos2d::CCObject*>>  @ 0x5a906c
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>
   >::destroy<std::_Rb_tree_node<cocos2d::CCObject*> >(std::_Rb_tree_node<cocos2d::CCObject*>*) */

void __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>>::
     destroy<std::_Rb_tree_node<cocos2d::CCObject*>>(_Rb_tree_node *param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>>::new_allocator  @ 0x5a9294
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*> >::new_allocator() */

new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>>::new_allocator
          (new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>>::new_allocator  @ 0x5a92a0
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>
   >::new_allocator(__gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*> > const&) */

new_allocator *
__gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>>::new_allocator
          (new_allocator *param_1)

{
  return param_1;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>>::deallocate  @ 0x5a92b0
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>
   >::deallocate(std::_Rb_tree_node<cocos2d::CCObject*>*, unsigned int) */

void __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>>::deallocate
               (_Rb_tree_node *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>>::allocate  @ 0x5a93b8
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*> >::allocate(unsigned int, void
   const*) */

void * __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>>::allocate
                 (uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0x14);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>>::max_size  @ 0x5a944c
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*> >::max_size() const */

undefined4 __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>>::max_size(void)

{
  return 0xccccccc;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>>::construct<std::_Rb_tree_node<cocos2d::CCObject*>,cocos2d::CCObject*const&>  @ 0x5a9460
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>
   >::construct<std::_Rb_tree_node<cocos2d::CCObject*>, cocos2d::CCObject*
   const&>(std::_Rb_tree_node<cocos2d::CCObject*>*, cocos2d::CCObject* const&) */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>>::
construct<std::_Rb_tree_node<cocos2d::CCObject*>,cocos2d::CCObject*const&>
          (new_allocator<std::_Rb_tree_node<cocos2d::CCObject*>> *this,_Rb_tree_node *param_1,
          CCObject **param_2)

{
  CCObject **ppCVar1;
  _Rb_tree_node<cocos2d::CCObject*> *this_00;
  
  ppCVar1 = std::forward<cocos2d::CCObject*const&>((type *)param_2);
  this_00 = operator_new(0x14,param_1);
  if (this_00 != (_Rb_tree_node<cocos2d::CCObject*> *)0x0) {
    std::_Rb_tree_node<cocos2d::CCObject*>::_Rb_tree_node<cocos2d::CCObject*const&>(this_00,ppCVar1)
    ;
  }
  return;
}

// ---- __gnu_cxx::__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>::__normal_iterator  @ 0x5bacbc
/* __gnu_cxx::__normal_iterator<unsigned short*, std::vector<unsigned short, std::allocator<unsigned
   short> > >::__normal_iterator(unsigned short* const&) */

__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>> *
__thiscall
__gnu_cxx::
__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>::
__normal_iterator(__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>
                  *this,ushort **param_1)

{
  *(ushort **)this = *param_1;
  return this;
}

// ---- __gnu_cxx::new_allocator<unsigned_short>::deallocate  @ 0x5bafe8
/* __gnu_cxx::new_allocator<unsigned short>::deallocate(unsigned short*, unsigned int) */

void __gnu_cxx::new_allocator<unsigned_short>::deallocate(ushort *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<unsigned_short>::~new_allocator  @ 0x5bb4f4
/* __gnu_cxx::new_allocator<unsigned short>::~new_allocator() */

new_allocator<unsigned_short> * __thiscall
__gnu_cxx::new_allocator<unsigned_short>::~new_allocator(new_allocator<unsigned_short> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<unsigned_short>::allocate  @ 0x5bb53c
/* __gnu_cxx::new_allocator<unsigned short>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<unsigned_short>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 1);
  return pvVar1;
}

// ---- __gnu_cxx::operator!=  @ 0x5bb5bc
/* bool __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<unsigned short*,
   std::vector<unsigned short, std::allocator<unsigned short> > > const&,
   __gnu_cxx::__normal_iterator<unsigned short*, std::vector<unsigned short, std::allocator<unsigned
   short> > > const&) */

bool __gnu_cxx::operator!=(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>
                  ::base((__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>
                  ::base((__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>
                          *)param_2);
  return iVar2 != *piVar1;
}

// ---- __gnu_cxx::operator-  @ 0x5bb60c
/* __gnu_cxx::__normal_iterator<unsigned short*, std::vector<unsigned short, std::allocator<unsigned
   short> > >::difference_type
   __gnu_cxx::TEMPNAMEPLACEHOLDERVALUE(__gnu_cxx::__normal_iterator<unsigned short*,
   std::vector<unsigned short, std::allocator<unsigned short> > > const&,
   __gnu_cxx::__normal_iterator<unsigned short*, std::vector<unsigned short, std::allocator<unsigned
   short> > > const&) */

int __gnu_cxx::operator-(__normal_iterator *param_1,__normal_iterator *param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>
                  ::base((__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>
                          *)param_1);
  iVar2 = *piVar1;
  piVar1 = (int *)__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>
                  ::base((__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>
                          *)param_2);
  return iVar2 - *piVar1 >> 1;
}

// ---- __gnu_cxx::__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>::base  @ 0x5bb664
/* __gnu_cxx::__normal_iterator<unsigned short*, std::vector<unsigned short, std::allocator<unsigned
   short> > >::base() const */

__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>> *
__thiscall
__gnu_cxx::
__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>::base
          (__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>
           *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<unsigned_short>::construct<unsigned_short,unsigned_short_const&>  @ 0x5bb708
/* void __gnu_cxx::new_allocator<unsigned short>::construct<unsigned short, unsigned short
   const&>(unsigned short*, unsigned short const&) */

void __thiscall
__gnu_cxx::new_allocator<unsigned_short>::construct<unsigned_short,unsigned_short_const&>
          (new_allocator<unsigned_short> *this,ushort *param_1,ushort *param_2)

{
  ushort uVar1;
  ushort *puVar2;
  
  puVar2 = std::forward<unsigned_short_const&>((type *)param_2);
  uVar1 = *puVar2;
  puVar2 = operator_new(2,param_1);
  if (puVar2 != (ushort *)0x0) {
    *puVar2 = uVar1;
  }
  return;
}

// ---- __gnu_cxx::new_allocator<unsigned_short>::new_allocator  @ 0x5bb770
/* __gnu_cxx::new_allocator<unsigned short>::new_allocator() */

new_allocator<unsigned_short> * __thiscall
__gnu_cxx::new_allocator<unsigned_short>::new_allocator(new_allocator<unsigned_short> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<unsigned_short>::max_size  @ 0x5bb77c
/* __gnu_cxx::new_allocator<unsigned short>::max_size() const */

undefined4 __gnu_cxx::new_allocator<unsigned_short>::max_size(void)

{
  return 0x7fffffff;
}

// ---- __gnu_cxx::new_allocator<unsigned_short>::construct<unsigned_short,unsigned_short>  @ 0x5bb7ac
/* void __gnu_cxx::new_allocator<unsigned short>::construct<unsigned short, unsigned short>(unsigned
   short*, unsigned short&&) */

void __thiscall
__gnu_cxx::new_allocator<unsigned_short>::construct<unsigned_short,unsigned_short>
          (new_allocator<unsigned_short> *this,ushort *param_1,ushort *param_2)

{
  ushort uVar1;
  ushort *puVar2;
  
  puVar2 = std::forward<unsigned_short>((type *)param_2);
  uVar1 = *puVar2;
  puVar2 = operator_new(2,param_1);
  if (puVar2 != (ushort *)0x0) {
    *puVar2 = uVar1;
  }
  return;
}

// ---- __gnu_cxx::new_allocator<unsigned_short>::destroy<unsigned_short>  @ 0x5bb908
/* void __gnu_cxx::new_allocator<unsigned short>::destroy<unsigned short>(unsigned short*) */

void __gnu_cxx::new_allocator<unsigned_short>::destroy<unsigned_short>(ushort *param_1)

{
  return;
}

// ---- __gnu_cxx::__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>::operator+=  @ 0x5bb9f4
/* __gnu_cxx::__normal_iterator<unsigned short*, std::vector<unsigned short, std::allocator<unsigned
   short> > >::TEMPNAMEPLACEHOLDERVALUE(int const&) */

__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>> *
__thiscall
__gnu_cxx::
__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>::
operator+=(__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>
           *this,int *param_1)

{
  *(int *)this = *(int *)this + *param_1 * 2;
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned_int>>::construct<std::_Rb_tree_node<unsigned_int>,unsigned_int_const&>  @ 0x5bba34
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned int>
   >::construct<std::_Rb_tree_node<unsigned int>, unsigned int const&>(std::_Rb_tree_node<unsigned
   int>*, unsigned int const&) */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<unsigned_int>>::
construct<std::_Rb_tree_node<unsigned_int>,unsigned_int_const&>
          (new_allocator<std::_Rb_tree_node<unsigned_int>> *this,_Rb_tree_node *param_1,
          uint *param_2)

{
  uint *puVar1;
  _Rb_tree_node<unsigned_int> *this_00;
  
  puVar1 = std::forward<unsigned_int_const&>((type *)param_2);
  this_00 = operator_new(0x14,param_1);
  if (this_00 != (_Rb_tree_node<unsigned_int> *)0x0) {
    std::_Rb_tree_node<unsigned_int>::_Rb_tree_node<unsigned_int_const&>(this_00,puVar1);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<unsigned_int>::~new_allocator  @ 0x5c6d24
/* __gnu_cxx::new_allocator<unsigned int>::~new_allocator() */

new_allocator<unsigned_int> * __thiscall
__gnu_cxx::new_allocator<unsigned_int>::~new_allocator(new_allocator<unsigned_int> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<unsigned_int>::deallocate  @ 0x5c6d30
/* __gnu_cxx::new_allocator<unsigned int>::deallocate(unsigned int*, unsigned int) */

void __gnu_cxx::new_allocator<unsigned_int>::deallocate(uint *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<unsigned_int>::construct<unsigned_int,unsigned_int_const&>  @ 0x5c6d78
/* void __gnu_cxx::new_allocator<unsigned int>::construct<unsigned int, unsigned int
   const&>(unsigned int*, unsigned int const&) */

void __thiscall
__gnu_cxx::new_allocator<unsigned_int>::construct<unsigned_int,unsigned_int_const&>
          (new_allocator<unsigned_int> *this,uint *param_1,uint *param_2)

{
  uint *puVar1;
  uint uVar2;
  
  puVar1 = std::forward<unsigned_int_const&>((type *)param_2);
  uVar2 = *puVar1;
  puVar1 = operator_new(4,param_1);
  if (puVar1 != (uint *)0x0) {
    *puVar1 = uVar2;
  }
  return;
}

// ---- __gnu_cxx::new_allocator<unsigned_int>::allocate  @ 0x5c6dc4
/* __gnu_cxx::new_allocator<unsigned int>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<unsigned_int>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<unsigned_int>::new_allocator  @ 0x5c6e54
/* __gnu_cxx::new_allocator<unsigned int>::new_allocator() */

new_allocator<unsigned_int> * __thiscall
__gnu_cxx::new_allocator<unsigned_int>::new_allocator(new_allocator<unsigned_int> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<unsigned_int>::construct<unsigned_int,unsigned_int>  @ 0x5c6e60
/* void __gnu_cxx::new_allocator<unsigned int>::construct<unsigned int, unsigned int>(unsigned int*,
   unsigned int&&) */

void __thiscall
__gnu_cxx::new_allocator<unsigned_int>::construct<unsigned_int,unsigned_int>
          (new_allocator<unsigned_int> *this,uint *param_1,uint *param_2)

{
  uint *puVar1;
  uint uVar2;
  
  puVar1 = std::forward<unsigned_int>((type *)param_2);
  uVar2 = *puVar1;
  puVar1 = operator_new(4,param_1);
  if (puVar1 != (uint *)0x0) {
    *puVar1 = uVar2;
  }
  return;
}

// ---- __gnu_cxx::new_allocator<unsigned_int>::max_size  @ 0x5c6eb0
/* __gnu_cxx::new_allocator<unsigned int>::max_size() const */

undefined4 __gnu_cxx::new_allocator<unsigned_int>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<unsigned_int>::destroy<unsigned_int>  @ 0x5c6ef4
/* void __gnu_cxx::new_allocator<unsigned int>::destroy<unsigned int>(unsigned int*) */

void __gnu_cxx::new_allocator<unsigned_int>::destroy<unsigned_int>(uint *param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<char_const*>::~new_allocator  @ 0x5d6990
/* __gnu_cxx::new_allocator<char const*>::~new_allocator() */

new_allocator<char_const*> * __thiscall
__gnu_cxx::new_allocator<char_const*>::~new_allocator(new_allocator<char_const*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<char_const*>::deallocate  @ 0x5d699c
/* __gnu_cxx::new_allocator<char const*>::deallocate(char const**, unsigned int) */

void __gnu_cxx::new_allocator<char_const*>::deallocate(char **param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<char_const*>::new_allocator  @ 0x5d6af4
/* __gnu_cxx::new_allocator<char const*>::new_allocator() */

new_allocator<char_const*> * __thiscall
__gnu_cxx::new_allocator<char_const*>::new_allocator(new_allocator<char_const*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<char_const*>::construct<char_const*,char_const*>  @ 0x5d6b00
/* void __gnu_cxx::new_allocator<char const*>::construct<char const*, char const*>(char const**,
   char const*&&) */

void __thiscall
__gnu_cxx::new_allocator<char_const*>::construct<char_const*,char_const*>
          (new_allocator<char_const*> *this,char **param_1,char **param_2)

{
  char **ppcVar1;
  undefined4 *puVar2;
  char *pcVar3;
  
  ppcVar1 = std::forward<char_const*>((type *)param_2);
  pcVar3 = *ppcVar1;
  puVar2 = operator_new(4,param_1);
  if (puVar2 != (undefined4 *)0x0) {
    *puVar2 = pcVar3;
  }
  return;
}

// ---- __gnu_cxx::new_allocator<char_const*>::allocate  @ 0x5d6b4c
/* __gnu_cxx::new_allocator<char const*>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<char_const*>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<char_const*>::max_size  @ 0x5d6c00
/* __gnu_cxx::new_allocator<char const*>::max_size() const */

undefined4 __gnu_cxx::new_allocator<char_const*>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<char_const*>::destroy<char_const*>  @ 0x5d6c44
/* void __gnu_cxx::new_allocator<char const*>::destroy<char const*>(char const**) */

void __gnu_cxx::new_allocator<char_const*>::destroy<char_const*>(char **param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCSAXState>::construct<cocos2d::CCSAXState,cocos2d::CCSAXState_const&>  @ 0x5da8dc
/* void __gnu_cxx::new_allocator<cocos2d::CCSAXState>::construct<cocos2d::CCSAXState,
   cocos2d::CCSAXState const&>(cocos2d::CCSAXState*, cocos2d::CCSAXState const&) */

void __thiscall
__gnu_cxx::new_allocator<cocos2d::CCSAXState>::
construct<cocos2d::CCSAXState,cocos2d::CCSAXState_const&>
          (new_allocator<cocos2d::CCSAXState> *this,CCSAXState *param_1,CCSAXState *param_2)

{
  CCSAXState *pCVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  pCVar1 = std::forward<cocos2d::CCSAXState_const&>((type *)param_2);
  uVar3 = *(undefined4 *)pCVar1;
  puVar2 = operator_new(4,param_1);
  if (puVar2 != (undefined4 *)0x0) {
    *puVar2 = uVar3;
  }
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::construct<cocos2d::CCDictionary*,cocos2d::CCDictionary*const&>  @ 0x5da998
/* void __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::construct<cocos2d::CCDictionary*,
   cocos2d::CCDictionary* const&>(cocos2d::CCDictionary**, cocos2d::CCDictionary* const&) */

void __thiscall
__gnu_cxx::new_allocator<cocos2d::CCDictionary*>::
construct<cocos2d::CCDictionary*,cocos2d::CCDictionary*const&>
          (new_allocator<cocos2d::CCDictionary*> *this,CCDictionary **param_1,CCDictionary **param_2
          )

{
  CCDictionary **ppCVar1;
  undefined4 *puVar2;
  CCDictionary *pCVar3;
  
  ppCVar1 = std::forward<cocos2d::CCDictionary*const&>((type *)param_2);
  pCVar3 = *ppCVar1;
  puVar2 = operator_new(4,param_1);
  if (puVar2 != (undefined4 *)0x0) {
    *puVar2 = pCVar3;
  }
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCArray*>::construct<cocos2d::CCArray*,cocos2d::CCArray*const&>  @ 0x5daac0
/* void __gnu_cxx::new_allocator<cocos2d::CCArray*>::construct<cocos2d::CCArray*, cocos2d::CCArray*
   const&>(cocos2d::CCArray**, cocos2d::CCArray* const&) */

void __thiscall
__gnu_cxx::new_allocator<cocos2d::CCArray*>::construct<cocos2d::CCArray*,cocos2d::CCArray*const&>
          (new_allocator<cocos2d::CCArray*> *this,CCArray **param_1,CCArray **param_2)

{
  CCArray **ppCVar1;
  undefined4 *puVar2;
  CCArray *pCVar3;
  
  ppCVar1 = std::forward<cocos2d::CCArray*const&>((type *)param_2);
  pCVar3 = *ppCVar1;
  puVar2 = operator_new(4,param_1);
  if (puVar2 != (undefined4 *)0x0) {
    *puVar2 = pCVar3;
  }
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCSAXState>::destroy<cocos2d::CCSAXState>  @ 0x5dab70
/* void 
   __gnu_cxx::new_allocator<cocos2d::CCSAXState>::destroy<cocos2d::CCSAXState>(cocos2d::CCSAXState*)
    */

void __gnu_cxx::new_allocator<cocos2d::CCSAXState>::destroy<cocos2d::CCSAXState>
               (CCSAXState *param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::destroy<cocos2d::CCDictionary*>  @ 0x5dabc4
/* void 
   __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::destroy<cocos2d::CCDictionary*>(cocos2d::CCDictionary**)
    */

void __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::destroy<cocos2d::CCDictionary*>
               (CCDictionary **param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCArray*>::destroy<cocos2d::CCArray*>  @ 0x5dac18
/* void __gnu_cxx::new_allocator<cocos2d::CCArray*>::destroy<cocos2d::CCArray*>(cocos2d::CCArray**)
    */

void __gnu_cxx::new_allocator<cocos2d::CCArray*>::destroy<cocos2d::CCArray*>(CCArray **param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>>::~new_allocator  @ 0x5dacb4
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, std::string > >
   >::~new_allocator() */

new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>>::
~new_allocator(new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::~new_allocator  @ 0x5db068
/* __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::~new_allocator() */

new_allocator<cocos2d::CCDictionary*> * __thiscall
__gnu_cxx::new_allocator<cocos2d::CCDictionary*>::~new_allocator
          (new_allocator<cocos2d::CCDictionary*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCDictionary**>::deallocate  @ 0x5db188
/* __gnu_cxx::new_allocator<cocos2d::CCDictionary**>::deallocate(cocos2d::CCDictionary***, unsigned
   int) */

void __gnu_cxx::new_allocator<cocos2d::CCDictionary**>::deallocate
               (CCDictionary ***param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCArray*>::~new_allocator  @ 0x5db2ec
/* __gnu_cxx::new_allocator<cocos2d::CCArray*>::~new_allocator() */

new_allocator<cocos2d::CCArray*> * __thiscall
__gnu_cxx::new_allocator<cocos2d::CCArray*>::~new_allocator(new_allocator<cocos2d::CCArray*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCArray**>::deallocate  @ 0x5db40c
/* __gnu_cxx::new_allocator<cocos2d::CCArray**>::deallocate(cocos2d::CCArray***, unsigned int) */

void __gnu_cxx::new_allocator<cocos2d::CCArray**>::deallocate(CCArray ***param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCSAXState>::~new_allocator  @ 0x5db538
/* __gnu_cxx::new_allocator<cocos2d::CCSAXState>::~new_allocator() */

new_allocator<cocos2d::CCSAXState> * __thiscall
__gnu_cxx::new_allocator<cocos2d::CCSAXState>::~new_allocator
          (new_allocator<cocos2d::CCSAXState> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCSAXState*>::deallocate  @ 0x5db658
/* __gnu_cxx::new_allocator<cocos2d::CCSAXState*>::deallocate(cocos2d::CCSAXState**, unsigned int)
    */

void __gnu_cxx::new_allocator<cocos2d::CCSAXState*>::deallocate(CCSAXState **param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>>::destroy<std::_Rb_tree_node<std::pair<std::string_const,std::string>>>  @ 0x5db8d8
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, std::string > >
   >::destroy<std::_Rb_tree_node<std::pair<std::string const, std::string > >
   >(std::_Rb_tree_node<std::pair<std::string const, std::string > >*) */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>>::
destroy<std::_Rb_tree_node<std::pair<std::string_const,std::string>>>
          (new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>> *this,
          _Rb_tree_node *param_1)

{
  std::_Rb_tree_node<std::pair<std::string_const,std::string>>::~_Rb_tree_node
            ((_Rb_tree_node<std::pair<std::string_const,std::string>> *)param_1);
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::new_allocator  @ 0x5dba04
/* __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::new_allocator() */

new_allocator<cocos2d::CCDictionary*> * __thiscall
__gnu_cxx::new_allocator<cocos2d::CCDictionary*>::new_allocator
          (new_allocator<cocos2d::CCDictionary*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCDictionary**>::allocate  @ 0x5dba10
/* __gnu_cxx::new_allocator<cocos2d::CCDictionary**>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<cocos2d::CCDictionary**>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::deallocate  @ 0x5dba5c
/* __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::deallocate(cocos2d::CCDictionary**, unsigned
   int) */

void __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::deallocate
               (CCDictionary **param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCDictionary**>::~new_allocator  @ 0x5dba98
/* __gnu_cxx::new_allocator<cocos2d::CCDictionary**>::~new_allocator() */

new_allocator<cocos2d::CCDictionary**> * __thiscall
__gnu_cxx::new_allocator<cocos2d::CCDictionary**>::~new_allocator
          (new_allocator<cocos2d::CCDictionary**> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCArray*>::new_allocator  @ 0x5dbac0
/* __gnu_cxx::new_allocator<cocos2d::CCArray*>::new_allocator() */

new_allocator<cocos2d::CCArray*> * __thiscall
__gnu_cxx::new_allocator<cocos2d::CCArray*>::new_allocator(new_allocator<cocos2d::CCArray*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCArray**>::allocate  @ 0x5dbacc
/* __gnu_cxx::new_allocator<cocos2d::CCArray**>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<cocos2d::CCArray**>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCArray*>::deallocate  @ 0x5dbb18
/* __gnu_cxx::new_allocator<cocos2d::CCArray*>::deallocate(cocos2d::CCArray**, unsigned int) */

void __gnu_cxx::new_allocator<cocos2d::CCArray*>::deallocate(CCArray **param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCArray**>::~new_allocator  @ 0x5dbb54
/* __gnu_cxx::new_allocator<cocos2d::CCArray**>::~new_allocator() */

new_allocator<cocos2d::CCArray**> * __thiscall
__gnu_cxx::new_allocator<cocos2d::CCArray**>::~new_allocator
          (new_allocator<cocos2d::CCArray**> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCSAXState>::new_allocator  @ 0x5dbb7c
/* __gnu_cxx::new_allocator<cocos2d::CCSAXState>::new_allocator() */

new_allocator<cocos2d::CCSAXState> * __thiscall
__gnu_cxx::new_allocator<cocos2d::CCSAXState>::new_allocator
          (new_allocator<cocos2d::CCSAXState> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCSAXState*>::allocate  @ 0x5dbb88
/* __gnu_cxx::new_allocator<cocos2d::CCSAXState*>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<cocos2d::CCSAXState*>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCSAXState>::deallocate  @ 0x5dbbd4
/* __gnu_cxx::new_allocator<cocos2d::CCSAXState>::deallocate(cocos2d::CCSAXState*, unsigned int) */

void __gnu_cxx::new_allocator<cocos2d::CCSAXState>::deallocate(CCSAXState *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCSAXState*>::~new_allocator  @ 0x5dbc10
/* __gnu_cxx::new_allocator<cocos2d::CCSAXState*>::~new_allocator() */

new_allocator<cocos2d::CCSAXState*> * __thiscall
__gnu_cxx::new_allocator<cocos2d::CCSAXState*>::~new_allocator
          (new_allocator<cocos2d::CCSAXState*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCSAXState>::allocate  @ 0x5dbd7c
/* __gnu_cxx::new_allocator<cocos2d::CCSAXState>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<cocos2d::CCSAXState>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::allocate  @ 0x5dbefc
/* __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCArray*>::allocate  @ 0x5dc07c
/* __gnu_cxx::new_allocator<cocos2d::CCArray*>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<cocos2d::CCArray*>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>>::new_allocator  @ 0x5dc0b8
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, std::string > >
   >::new_allocator() */

new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>>::
new_allocator(new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>>::deallocate  @ 0x5dc0c4
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, std::string > >
   >::deallocate(std::_Rb_tree_node<std::pair<std::string const, std::string > >*, unsigned int) */

void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>>::
     deallocate(_Rb_tree_node *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCDictionary**>::max_size  @ 0x5dc174
/* __gnu_cxx::new_allocator<cocos2d::CCDictionary**>::max_size() const */

undefined4 __gnu_cxx::new_allocator<cocos2d::CCDictionary**>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCDictionary**>::new_allocator  @ 0x5dc184
/* __gnu_cxx::new_allocator<cocos2d::CCDictionary**>::new_allocator() */

new_allocator<cocos2d::CCDictionary**> * __thiscall
__gnu_cxx::new_allocator<cocos2d::CCDictionary**>::new_allocator
          (new_allocator<cocos2d::CCDictionary**> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::new_allocator  @ 0x5dc190
/* __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::new_allocator(__gnu_cxx::new_allocator<cocos2d::CCDictionary*>
   const&) */

new_allocator *
__gnu_cxx::new_allocator<cocos2d::CCDictionary*>::new_allocator(new_allocator *param_1)

{
  return param_1;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCArray**>::max_size  @ 0x5dc1a0
/* __gnu_cxx::new_allocator<cocos2d::CCArray**>::max_size() const */

undefined4 __gnu_cxx::new_allocator<cocos2d::CCArray**>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCArray**>::new_allocator  @ 0x5dc1b0
/* __gnu_cxx::new_allocator<cocos2d::CCArray**>::new_allocator() */

new_allocator<cocos2d::CCArray**> * __thiscall
__gnu_cxx::new_allocator<cocos2d::CCArray**>::new_allocator(new_allocator<cocos2d::CCArray**> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCArray*>::new_allocator  @ 0x5dc1bc
/* __gnu_cxx::new_allocator<cocos2d::CCArray*>::new_allocator(__gnu_cxx::new_allocator<cocos2d::CCArray*>
   const&) */

new_allocator * __gnu_cxx::new_allocator<cocos2d::CCArray*>::new_allocator(new_allocator *param_1)

{
  return param_1;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCSAXState*>::max_size  @ 0x5dc1cc
/* __gnu_cxx::new_allocator<cocos2d::CCSAXState*>::max_size() const */

undefined4 __gnu_cxx::new_allocator<cocos2d::CCSAXState*>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCSAXState*>::new_allocator  @ 0x5dc1dc
/* __gnu_cxx::new_allocator<cocos2d::CCSAXState*>::new_allocator() */

new_allocator<cocos2d::CCSAXState*> * __thiscall
__gnu_cxx::new_allocator<cocos2d::CCSAXState*>::new_allocator
          (new_allocator<cocos2d::CCSAXState*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCSAXState>::new_allocator  @ 0x5dc1e8
/* __gnu_cxx::new_allocator<cocos2d::CCSAXState>::new_allocator(__gnu_cxx::new_allocator<cocos2d::CCSAXState>
   const&) */

new_allocator * __gnu_cxx::new_allocator<cocos2d::CCSAXState>::new_allocator(new_allocator *param_1)

{
  return param_1;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCSAXState>::max_size  @ 0x5dc250
/* __gnu_cxx::new_allocator<cocos2d::CCSAXState>::max_size() const */

undefined4 __gnu_cxx::new_allocator<cocos2d::CCSAXState>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::max_size  @ 0x5dc2b8
/* __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::max_size() const */

undefined4 __gnu_cxx::new_allocator<cocos2d::CCDictionary*>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<cocos2d::CCArray*>::max_size  @ 0x5dc320
/* __gnu_cxx::new_allocator<cocos2d::CCArray*>::max_size() const */

undefined4 __gnu_cxx::new_allocator<cocos2d::CCArray*>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>>::allocate  @ 0x5dc330
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, std::string > >
   >::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>>::
       allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0x18);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>>::max_size  @ 0x5dc514
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, std::string > >
   >::max_size() const */

undefined4
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>>::max_size
          (void)

{
  return 0xaaaaaaa;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>>::construct<std::_Rb_tree_node<std::pair<std::string_const,std::string>>,std::pair<std::string,std::string>>  @ 0x5dc528
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, std::string > >
   >::construct<std::_Rb_tree_node<std::pair<std::string const, std::string > >,
   std::pair<std::string, std::string > >(std::_Rb_tree_node<std::pair<std::string const,
   std::string > >*, std::pair<std::string, std::string >&&) */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>>::
construct<std::_Rb_tree_node<std::pair<std::string_const,std::string>>,std::pair<std::string,std::string>>
          (new_allocator<std::_Rb_tree_node<std::pair<std::string_const,std::string>>> *this,
          _Rb_tree_node *param_1,pair *param_2)

{
  pair *ppVar1;
  _Rb_tree_node<std::pair<std::string_const,std::string>> *this_00;
  
  ppVar1 = std::forward<std::pair<std::string,std::string>>((type *)param_2);
  this_00 = operator_new(0x18,param_1);
  if (this_00 != (_Rb_tree_node<std::pair<std::string_const,std::string>> *)0x0) {
    std::_Rb_tree_node<std::pair<std::string_const,std::string>>::
    _Rb_tree_node<std::pair<std::string,std::string>>(this_00,ppVar1);
  }
  return;
}

// ---- __gnu_cxx::__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>::operator+  @ 0x5efa48
/* __gnu_cxx::__normal_iterator<unsigned short*, std::vector<unsigned short, std::allocator<unsigned
   short> > >::TEMPNAMEPLACEHOLDERVALUE(int const&) const */

undefined4 __thiscall
__gnu_cxx::
__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>::
operator+(__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>
          *this,int *param_1)

{
  ushort *local_10;
  undefined4 local_c [2];
  
  local_10 = (ushort *)(*param_1 * 2 + *(int *)this);
  __normal_iterator((__normal_iterator<unsigned_short*,std::vector<unsigned_short,std::allocator<unsigned_short>>>
                     *)local_c,&local_10);
  return local_c[0];
}

// ---- __gnu_cxx::new_allocator<char>::new_allocator  @ 0x5efca0
/* __gnu_cxx::new_allocator<char>::new_allocator() */

new_allocator<char> * __thiscall
__gnu_cxx::new_allocator<char>::new_allocator(new_allocator<char> *this)

{
  return this;
}

// ---- __gnu_cxx::char_traits<unsigned_short>::assign  @ 0x5efe44
/* __gnu_cxx::char_traits<unsigned short>::assign(unsigned short&, unsigned short const&) */

void __gnu_cxx::char_traits<unsigned_short>::assign(ushort *param_1,ushort *param_2)

{
  *param_1 = *param_2;
  return;
}

// ---- __gnu_cxx::new_allocator<unsigned_short>::new_allocator  @ 0x5f0308
/* __gnu_cxx::new_allocator<unsigned short>::new_allocator(__gnu_cxx::new_allocator<unsigned short>
   const&) */

new_allocator * __gnu_cxx::new_allocator<unsigned_short>::new_allocator(new_allocator *param_1)

{
  return param_1;
}

// ---- __gnu_cxx::char_traits<unsigned_short>::copy  @ 0x5f0508
/* __gnu_cxx::char_traits<unsigned short>::copy(unsigned short*, unsigned short const*, unsigned
   int) */

ushort * __gnu_cxx::char_traits<unsigned_short>::copy(ushort *param_1,ushort *param_2,uint param_3)

{
  std::copy<unsigned_short_const*,unsigned_short*>(param_2,param_2 + param_3,param_1);
  return param_1;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>::~new_allocator  @ 0x5fa548
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, cocos2d::ZipEntryInfo> >
   >::~new_allocator() */

new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>::
~new_allocator(new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>
               *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>::destroy<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>  @ 0x5faa68
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const,
   cocos2d::ZipEntryInfo> > >::destroy<std::_Rb_tree_node<std::pair<std::string const,
   cocos2d::ZipEntryInfo> > >(std::_Rb_tree_node<std::pair<std::string const, cocos2d::ZipEntryInfo>
   >*) */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>::
destroy<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>
          (new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>
           *this,_Rb_tree_node *param_1)

{
  std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>::~_Rb_tree_node
            ((_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>> *)param_1);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>::new_allocator  @ 0x5facc0
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, cocos2d::ZipEntryInfo> >
   >::new_allocator() */

new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>::
new_allocator(new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>
              *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>::deallocate  @ 0x5faccc
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, cocos2d::ZipEntryInfo> >
   >::deallocate(std::_Rb_tree_node<std::pair<std::string const, cocos2d::ZipEntryInfo> >*, unsigned
   int) */

void __gnu_cxx::
     new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>::
     deallocate(_Rb_tree_node *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>::allocate  @ 0x5face4
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, cocos2d::ZipEntryInfo> >
   >::allocate(unsigned int, void const*) */

void * __gnu_cxx::
       new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>::
       allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 5);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>::max_size  @ 0x5fad78
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const, cocos2d::ZipEntryInfo> >
   >::max_size() const */

undefined4
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>::
max_size(void)

{
  return 0x7ffffff;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>::construct<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>,std::piecewise_construct_t_const&,std::tuple<std::string_const&>,std::tuple<>>  @ 0x5fad88
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string const,
   cocos2d::ZipEntryInfo> > >::construct<std::_Rb_tree_node<std::pair<std::string const,
   cocos2d::ZipEntryInfo> >, std::piecewise_construct_t const&, std::tuple<std::string const&>,
   std::tuple<> >(std::_Rb_tree_node<std::pair<std::string const, cocos2d::ZipEntryInfo> >*,
   std::piecewise_construct_t const&, std::tuple<std::string const&>&&, std::tuple<>&&) */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>::
construct<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>,std::piecewise_construct_t_const&,std::tuple<std::string_const&>,std::tuple<>>
          (new_allocator<std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>>
           *this,_Rb_tree_node *param_1,piecewise_construct_t *param_2,tuple *param_3,tuple *param_4
          )

{
  piecewise_construct_t *ppVar1;
  tuple *ptVar2;
  tuple *ptVar3;
  _Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>> *this_00;
  
  ppVar1 = std::forward<std::piecewise_construct_t_const&>((type *)param_2);
  ptVar2 = std::forward<std::tuple<std::string_const&>>((type *)param_3);
  ptVar3 = std::forward<std::tuple<>>((type *)param_4);
  this_00 = operator_new(0x20,param_1);
  if (this_00 != (_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>> *)0x0) {
    std::_Rb_tree_node<std::pair<std::string_const,cocos2d::ZipEntryInfo>>::
    _Rb_tree_node<std::piecewise_construct_t_const&,std::tuple<std::string_const&>,std::tuple<>>
              (this_00,ppVar1,ptVar2,ptVar3);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>>::~new_allocator  @ 0x5ffb6c
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*> >::~new_allocator() */

new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>> * __thiscall
__gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>>::~new_allocator
          (new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>>::destroy<std::_List_node<cocos2d::CCIMEDelegate*>>  @ 0x5ffb84
/* void __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>
   >::destroy<std::_List_node<cocos2d::CCIMEDelegate*> >(std::_List_node<cocos2d::CCIMEDelegate*>*)
    */

void __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>>::
     destroy<std::_List_node<cocos2d::CCIMEDelegate*>>(_List_node *param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>>::deallocate  @ 0x5ffc1c
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>
   >::deallocate(std::_List_node<cocos2d::CCIMEDelegate*>*, unsigned int) */

void __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>>::deallocate
               (_List_node *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>>::construct<std::_List_node<cocos2d::CCIMEDelegate*>,cocos2d::CCIMEDelegate*const&>  @ 0x5ffc50
/* void __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>
   >::construct<std::_List_node<cocos2d::CCIMEDelegate*>, cocos2d::CCIMEDelegate*
   const&>(std::_List_node<cocos2d::CCIMEDelegate*>*, cocos2d::CCIMEDelegate* const&) */

void __thiscall
__gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>>::
construct<std::_List_node<cocos2d::CCIMEDelegate*>,cocos2d::CCIMEDelegate*const&>
          (new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>> *this,_List_node *param_1,
          CCIMEDelegate **param_2)

{
  CCIMEDelegate **ppCVar1;
  _List_node<cocos2d::CCIMEDelegate*> *this_00;
  
  ppCVar1 = std::forward<cocos2d::CCIMEDelegate*const&>((type *)param_2);
  this_00 = operator_new(0xc,param_1);
  if (this_00 != (_List_node<cocos2d::CCIMEDelegate*> *)0x0) {
    std::_List_node<cocos2d::CCIMEDelegate*>::_List_node<cocos2d::CCIMEDelegate*const&>
              (this_00,ppCVar1);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>>::new_allocator  @ 0x5ffc90
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*> >::new_allocator() */

new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>> * __thiscall
__gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>>::new_allocator
          (new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>>::allocate  @ 0x5ffc9c
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*> >::allocate(unsigned int, void
   const*) */

void * __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>>::allocate
                 (uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0xc);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>>::max_size  @ 0x5ffd08
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*> >::max_size() const */

undefined4 __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCIMEDelegate*>>::max_size(void)

{
  return 0x15555555;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::construct<cocos2d::_ImageInfo*,cocos2d::_ImageInfo*const&>  @ 0x605ad8
/* void __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::construct<cocos2d::_ImageInfo*,
   cocos2d::_ImageInfo* const&>(cocos2d::_ImageInfo**, cocos2d::_ImageInfo* const&) */

void __thiscall
__gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::
construct<cocos2d::_ImageInfo*,cocos2d::_ImageInfo*const&>
          (new_allocator<cocos2d::_ImageInfo*> *this,_ImageInfo **param_1,_ImageInfo **param_2)

{
  _ImageInfo **pp_Var1;
  undefined4 *puVar2;
  _ImageInfo *p_Var3;
  
  pp_Var1 = std::forward<cocos2d::_ImageInfo*const&>((type *)param_2);
  p_Var3 = *pp_Var1;
  puVar2 = operator_new(4,param_1);
  if (puVar2 != (undefined4 *)0x0) {
    *puVar2 = p_Var3;
  }
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::destroy<cocos2d::_AsyncStruct*>  @ 0x605bb8
/* void 
   __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::destroy<cocos2d::_AsyncStruct*>(cocos2d::_AsyncStruct**)
    */

void __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::destroy<cocos2d::_AsyncStruct*>
               (_AsyncStruct **param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::construct<cocos2d::_AsyncStruct*,cocos2d::_AsyncStruct*const&>  @ 0x6060b4
/* void __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::construct<cocos2d::_AsyncStruct*,
   cocos2d::_AsyncStruct* const&>(cocos2d::_AsyncStruct**, cocos2d::_AsyncStruct* const&) */

void __thiscall
__gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::
construct<cocos2d::_AsyncStruct*,cocos2d::_AsyncStruct*const&>
          (new_allocator<cocos2d::_AsyncStruct*> *this,_AsyncStruct **param_1,_AsyncStruct **param_2
          )

{
  _AsyncStruct **pp_Var1;
  undefined4 *puVar2;
  _AsyncStruct *p_Var3;
  
  pp_Var1 = std::forward<cocos2d::_AsyncStruct*const&>((type *)param_2);
  p_Var3 = *pp_Var1;
  puVar2 = operator_new(4,param_1);
  if (puVar2 != (undefined4 *)0x0) {
    *puVar2 = p_Var3;
  }
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::destroy<cocos2d::_ImageInfo*>  @ 0x606194
/* void 
   __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::destroy<cocos2d::_ImageInfo*>(cocos2d::_ImageInfo**)
    */

void __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::destroy<cocos2d::_ImageInfo*>
               (_ImageInfo **param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*>>::~new_allocator  @ 0x60621c
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*> >::~new_allocator() */

new_allocator<std::_List_node<cocos2d::CCDictElement*>> * __thiscall
__gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*>>::~new_allocator
          (new_allocator<std::_List_node<cocos2d::CCDictElement*>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*>>::destroy<std::_List_node<cocos2d::CCDictElement*>>  @ 0x606234
/* void __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*>
   >::destroy<std::_List_node<cocos2d::CCDictElement*> >(std::_List_node<cocos2d::CCDictElement*>*)
    */

void __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*>>::
     destroy<std::_List_node<cocos2d::CCDictElement*>>(_List_node *param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*>>::destroy<std::_List_node<cocos2d::VolatileTexture*>>  @ 0x6063a8
/* void __gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*>
   >::destroy<std::_List_node<cocos2d::VolatileTexture*>
   >(std::_List_node<cocos2d::VolatileTexture*>*) */

void __gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*>>::
     destroy<std::_List_node<cocos2d::VolatileTexture*>>(_List_node *param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::~new_allocator  @ 0x6064c0
/* __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::~new_allocator() */

new_allocator<cocos2d::_AsyncStruct*> * __thiscall
__gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::~new_allocator
          (new_allocator<cocos2d::_AsyncStruct*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_AsyncStruct**>::deallocate  @ 0x606504
/* __gnu_cxx::new_allocator<cocos2d::_AsyncStruct**>::deallocate(cocos2d::_AsyncStruct***, unsigned
   int) */

void __gnu_cxx::new_allocator<cocos2d::_AsyncStruct**>::deallocate
               (_AsyncStruct ***param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::~new_allocator  @ 0x60651c
/* __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::~new_allocator() */

new_allocator<cocos2d::_ImageInfo*> * __thiscall
__gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::~new_allocator
          (new_allocator<cocos2d::_ImageInfo*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_ImageInfo**>::deallocate  @ 0x606560
/* __gnu_cxx::new_allocator<cocos2d::_ImageInfo**>::deallocate(cocos2d::_ImageInfo***, unsigned int)
    */

void __gnu_cxx::new_allocator<cocos2d::_ImageInfo**>::deallocate(_ImageInfo ***param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*>>::deallocate  @ 0x606930
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*>
   >::deallocate(std::_List_node<cocos2d::CCDictElement*>*, unsigned int) */

void __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*>>::deallocate
               (_List_node *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*>>::construct<std::_List_node<cocos2d::CCDictElement*>,cocos2d::CCDictElement*const&>  @ 0x606964
/* void __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*>
   >::construct<std::_List_node<cocos2d::CCDictElement*>, cocos2d::CCDictElement*
   const&>(std::_List_node<cocos2d::CCDictElement*>*, cocos2d::CCDictElement* const&) */

void __thiscall
__gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*>>::
construct<std::_List_node<cocos2d::CCDictElement*>,cocos2d::CCDictElement*const&>
          (new_allocator<std::_List_node<cocos2d::CCDictElement*>> *this,_List_node *param_1,
          CCDictElement **param_2)

{
  CCDictElement **ppCVar1;
  _List_node<cocos2d::CCDictElement*> *this_00;
  
  ppCVar1 = std::forward<cocos2d::CCDictElement*const&>((type *)param_2);
  this_00 = operator_new(0xc,param_1);
  if (this_00 != (_List_node<cocos2d::CCDictElement*> *)0x0) {
    std::_List_node<cocos2d::CCDictElement*>::_List_node<cocos2d::CCDictElement*const&>
              (this_00,ppCVar1);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*>>::~new_allocator  @ 0x6069bc
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*> >::~new_allocator() */

new_allocator<std::_List_node<cocos2d::VolatileTexture*>> * __thiscall
__gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*>>::~new_allocator
          (new_allocator<std::_List_node<cocos2d::VolatileTexture*>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*>>::construct<std::_List_node<cocos2d::VolatileTexture*>,cocos2d::VolatileTexture*const&>  @ 0x6069e4
/* void __gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*>
   >::construct<std::_List_node<cocos2d::VolatileTexture*>, cocos2d::VolatileTexture*
   const&>(std::_List_node<cocos2d::VolatileTexture*>*, cocos2d::VolatileTexture* const&) */

void __thiscall
__gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*>>::
construct<std::_List_node<cocos2d::VolatileTexture*>,cocos2d::VolatileTexture*const&>
          (new_allocator<std::_List_node<cocos2d::VolatileTexture*>> *this,_List_node *param_1,
          VolatileTexture **param_2)

{
  VolatileTexture **ppVVar1;
  _List_node<cocos2d::VolatileTexture*> *this_00;
  
  ppVVar1 = std::forward<cocos2d::VolatileTexture*const&>((type *)param_2);
  this_00 = operator_new(0xc,param_1);
  if (this_00 != (_List_node<cocos2d::VolatileTexture*> *)0x0) {
    std::_List_node<cocos2d::VolatileTexture*>::_List_node<cocos2d::VolatileTexture*const&>
              (this_00,ppVVar1);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*>>::deallocate  @ 0x606a24
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*>
   >::deallocate(std::_List_node<cocos2d::VolatileTexture*>*, unsigned int) */

void __gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*>>::deallocate
               (_List_node *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::allocate  @ 0x606b80
/* __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::deallocate  @ 0x606bcc
/* __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::deallocate(cocos2d::_ImageInfo**, unsigned int)
    */

void __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::deallocate(_ImageInfo **param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::deallocate  @ 0x606be4
/* __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::deallocate(cocos2d::_AsyncStruct**, unsigned
   int) */

void __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::deallocate
               (_AsyncStruct **param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_AsyncStruct**>::~new_allocator  @ 0x606c30
/* __gnu_cxx::new_allocator<cocos2d::_AsyncStruct**>::~new_allocator() */

new_allocator<cocos2d::_AsyncStruct**> * __thiscall
__gnu_cxx::new_allocator<cocos2d::_AsyncStruct**>::~new_allocator
          (new_allocator<cocos2d::_AsyncStruct**> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_ImageInfo**>::~new_allocator  @ 0x606c60
/* __gnu_cxx::new_allocator<cocos2d::_ImageInfo**>::~new_allocator() */

new_allocator<cocos2d::_ImageInfo**> * __thiscall
__gnu_cxx::new_allocator<cocos2d::_ImageInfo**>::~new_allocator
          (new_allocator<cocos2d::_ImageInfo**> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::new_allocator  @ 0x606c6c
/* __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::new_allocator() */

new_allocator<cocos2d::_AsyncStruct*> * __thiscall
__gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::new_allocator
          (new_allocator<cocos2d::_AsyncStruct*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_AsyncStruct**>::allocate  @ 0x606c78
/* __gnu_cxx::new_allocator<cocos2d::_AsyncStruct**>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<cocos2d::_AsyncStruct**>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::new_allocator  @ 0x606cd0
/* __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::new_allocator() */

new_allocator<cocos2d::_ImageInfo*> * __thiscall
__gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::new_allocator
          (new_allocator<cocos2d::_ImageInfo*> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_ImageInfo**>::allocate  @ 0x606cdc
/* __gnu_cxx::new_allocator<cocos2d::_ImageInfo**>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<cocos2d::_ImageInfo**>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::allocate  @ 0x606e78
/* __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 << 2);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*>>::new_allocator  @ 0x606eb4
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*> >::new_allocator() */

new_allocator<std::_List_node<cocos2d::CCDictElement*>> * __thiscall
__gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*>>::new_allocator
          (new_allocator<std::_List_node<cocos2d::CCDictElement*>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*>>::allocate  @ 0x606ec0
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*> >::allocate(unsigned int, void
   const*) */

void * __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*>>::allocate
                 (uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0xc);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*>>::new_allocator  @ 0x606f2c
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*> >::new_allocator() */

new_allocator<std::_List_node<cocos2d::VolatileTexture*>> * __thiscall
__gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*>>::new_allocator
          (new_allocator<std::_List_node<cocos2d::VolatileTexture*>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*>>::allocate  @ 0x606f38
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*> >::allocate(unsigned int,
   void const*) */

void * __gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*>>::allocate
                 (uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0xc);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::max_size  @ 0x606ffc
/* __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::max_size() const */

undefined4 __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_AsyncStruct**>::new_allocator  @ 0x60700c
/* __gnu_cxx::new_allocator<cocos2d::_AsyncStruct**>::new_allocator() */

new_allocator<cocos2d::_AsyncStruct**> * __thiscall
__gnu_cxx::new_allocator<cocos2d::_AsyncStruct**>::new_allocator
          (new_allocator<cocos2d::_AsyncStruct**> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_ImageInfo**>::new_allocator  @ 0x607018
/* __gnu_cxx::new_allocator<cocos2d::_ImageInfo**>::new_allocator() */

new_allocator<cocos2d::_ImageInfo**> * __thiscall
__gnu_cxx::new_allocator<cocos2d::_ImageInfo**>::new_allocator
          (new_allocator<cocos2d::_ImageInfo**> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_AsyncStruct**>::max_size  @ 0x607024
/* __gnu_cxx::new_allocator<cocos2d::_AsyncStruct**>::max_size() const */

undefined4 __gnu_cxx::new_allocator<cocos2d::_AsyncStruct**>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::new_allocator  @ 0x607034
/* __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::new_allocator(__gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>
   const&) */

new_allocator *
__gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::new_allocator(new_allocator *param_1)

{
  return param_1;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_ImageInfo**>::max_size  @ 0x607044
/* __gnu_cxx::new_allocator<cocos2d::_ImageInfo**>::max_size() const */

undefined4 __gnu_cxx::new_allocator<cocos2d::_ImageInfo**>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::new_allocator  @ 0x607054
/* __gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::new_allocator(__gnu_cxx::new_allocator<cocos2d::_ImageInfo*>
   const&) */

new_allocator *
__gnu_cxx::new_allocator<cocos2d::_ImageInfo*>::new_allocator(new_allocator *param_1)

{
  return param_1;
}

// ---- __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::max_size  @ 0x6070bc
/* __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::max_size() const */

undefined4 __gnu_cxx::new_allocator<cocos2d::_AsyncStruct*>::max_size(void)

{
  return 0x3fffffff;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*>>::max_size  @ 0x6070cc
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*> >::max_size() const */

undefined4 __gnu_cxx::new_allocator<std::_List_node<cocos2d::CCDictElement*>>::max_size(void)

{
  return 0x15555555;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*>>::max_size  @ 0x6070e0
/* __gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*> >::max_size() const */

undefined4 __gnu_cxx::new_allocator<std::_List_node<cocos2d::VolatileTexture*>>::max_size(void)

{
  return 0x15555555;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<CkSound*>>::~new_allocator  @ 0x61316c
/* __gnu_cxx::new_allocator<std::_List_node<CkSound*> >::~new_allocator() */

new_allocator<std::_List_node<CkSound*>> * __thiscall
__gnu_cxx::new_allocator<std::_List_node<CkSound*>>::~new_allocator
          (new_allocator<std::_List_node<CkSound*>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<CkSound*>>::destroy<std::_List_node<CkSound*>>  @ 0x613184
/* void __gnu_cxx::new_allocator<std::_List_node<CkSound*> >::destroy<std::_List_node<CkSound*>
   >(std::_List_node<CkSound*>*) */

void __gnu_cxx::new_allocator<std::_List_node<CkSound*>>::destroy<std::_List_node<CkSound*>>
               (_List_node *param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,CkSound*>>>::~new_allocator  @ 0x613940
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, CkSound*> > >::~new_allocator()
    */

new_allocator<std::_Rb_tree_node<std::pair<int_const,CkSound*>>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,CkSound*>>>::~new_allocator
          (new_allocator<std::_Rb_tree_node<std::pair<int_const,CkSound*>>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound*const,int>>>::~new_allocator  @ 0x6139d0
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound* const, int> > >::~new_allocator()
    */

new_allocator<std::_Rb_tree_node<std::pair<CkSound*const,int>>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound*const,int>>>::~new_allocator
          (new_allocator<std::_Rb_tree_node<std::pair<CkSound*const,int>>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<CkSound*>>::deallocate  @ 0x613a24
/* __gnu_cxx::new_allocator<std::_List_node<CkSound*> >::deallocate(std::_List_node<CkSound*>*,
   unsigned int) */

void __gnu_cxx::new_allocator<std::_List_node<CkSound*>>::deallocate
               (_List_node *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<CkSound*>>::construct<std::_List_node<CkSound*>,CkSound*const&>  @ 0x613a58
/* void __gnu_cxx::new_allocator<std::_List_node<CkSound*> >::construct<std::_List_node<CkSound*>,
   CkSound* const&>(std::_List_node<CkSound*>*, CkSound* const&) */

void __thiscall
__gnu_cxx::new_allocator<std::_List_node<CkSound*>>::
construct<std::_List_node<CkSound*>,CkSound*const&>
          (new_allocator<std::_List_node<CkSound*>> *this,_List_node *param_1,CkSound **param_2)

{
  CkSound **ppCVar1;
  _List_node<CkSound*> *this_00;
  
  ppCVar1 = std::forward<CkSound*const&>((type *)param_2);
  this_00 = operator_new(0xc,param_1);
  if (this_00 != (_List_node<CkSound*> *)0x0) {
    std::_List_node<CkSound*>::_List_node<CkSound*const&>(this_00,ppCVar1);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<CkSound*>>::new_allocator  @ 0x613e5c
/* __gnu_cxx::new_allocator<std::_List_node<CkSound*> >::new_allocator() */

new_allocator<std::_List_node<CkSound*>> * __thiscall
__gnu_cxx::new_allocator<std::_List_node<CkSound*>>::new_allocator
          (new_allocator<std::_List_node<CkSound*>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,CkSound*>>>::new_allocator  @ 0x613e68
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, CkSound*> > >::new_allocator()
    */

new_allocator<std::_Rb_tree_node<std::pair<int_const,CkSound*>>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,CkSound*>>>::new_allocator
          (new_allocator<std::_Rb_tree_node<std::pair<int_const,CkSound*>>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,CkSound*>>>::destroy<std::_Rb_tree_node<std::pair<int_const,CkSound*>>>  @ 0x613e80
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, CkSound*> >
   >::destroy<std::_Rb_tree_node<std::pair<int const, CkSound*> > >(std::_Rb_tree_node<std::pair<int
   const, CkSound*> >*) */

void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,CkSound*>>>::
     destroy<std::_Rb_tree_node<std::pair<int_const,CkSound*>>>(_Rb_tree_node *param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound*const,int>>>::new_allocator  @ 0x613ea8
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound* const, int> > >::new_allocator()
    */

new_allocator<std::_Rb_tree_node<std::pair<CkSound*const,int>>> * __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound*const,int>>>::new_allocator
          (new_allocator<std::_Rb_tree_node<std::pair<CkSound*const,int>>> *this)

{
  return this;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound*const,int>>>::destroy<std::_Rb_tree_node<std::pair<CkSound*const,int>>>  @ 0x613ec0
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound* const, int> >
   >::destroy<std::_Rb_tree_node<std::pair<CkSound* const, int> >
   >(std::_Rb_tree_node<std::pair<CkSound* const, int> >*) */

void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound*const,int>>>::
     destroy<std::_Rb_tree_node<std::pair<CkSound*const,int>>>(_Rb_tree_node *param_1)

{
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<CkSound*>>::allocate  @ 0x613ee8
/* __gnu_cxx::new_allocator<std::_List_node<CkSound*> >::allocate(unsigned int, void const*) */

void * __gnu_cxx::new_allocator<std::_List_node<CkSound*>>::allocate(uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0xc);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,CkSound*>>>::deallocate  @ 0x6140cc
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, CkSound*> >
   >::deallocate(std::_Rb_tree_node<std::pair<int const, CkSound*> >*, unsigned int) */

void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,CkSound*>>>::deallocate
               (_Rb_tree_node *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound*const,int>>>::deallocate  @ 0x6140e4
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound* const, int> >
   >::deallocate(std::_Rb_tree_node<std::pair<CkSound* const, int> >*, unsigned int) */

void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound*const,int>>>::deallocate
               (_Rb_tree_node *param_1,uint param_2)

{
  operator_delete((void *)param_2);
  return;
}

// ---- __gnu_cxx::new_allocator<std::_List_node<CkSound*>>::max_size  @ 0x6140fc
/* __gnu_cxx::new_allocator<std::_List_node<CkSound*> >::max_size() const */

undefined4 __gnu_cxx::new_allocator<std::_List_node<CkSound*>>::max_size(void)

{
  return 0x15555555;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,CkSound*>>>::allocate  @ 0x614160
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, CkSound*> > >::allocate(unsigned
   int, void const*) */

void * __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,CkSound*>>>::allocate
                 (uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0x18);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound*const,int>>>::allocate  @ 0x6141c4
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound* const, int> > >::allocate(unsigned
   int, void const*) */

void * __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound*const,int>>>::allocate
                 (uint param_1,void *param_2)

{
  void *pvVar1;
  
  pvVar1 = (void *)max_size();
  if (pvVar1 < param_2) {
    FUN_007c4844();
  }
  pvVar1 = operator_new((int)param_2 * 0x18);
  return pvVar1;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,CkSound*>>>::max_size  @ 0x614228
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, CkSound*> > >::max_size() const
    */

undefined4
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,CkSound*>>>::max_size(void)

{
  return 0xaaaaaaa;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,CkSound*>>>::construct<std::_Rb_tree_node<std::pair<int_const,CkSound*>>,std::pair<int,CkSound*>>  @ 0x61423c
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int const, CkSound*> >
   >::construct<std::_Rb_tree_node<std::pair<int const, CkSound*> >, std::pair<int, CkSound*>
   >(std::_Rb_tree_node<std::pair<int const, CkSound*> >*, std::pair<int, CkSound*>&&) */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<int_const,CkSound*>>>::
construct<std::_Rb_tree_node<std::pair<int_const,CkSound*>>,std::pair<int,CkSound*>>
          (new_allocator<std::_Rb_tree_node<std::pair<int_const,CkSound*>>> *this,
          _Rb_tree_node *param_1,pair *param_2)

{
  pair *ppVar1;
  _Rb_tree_node<std::pair<int_const,CkSound*>> *this_00;
  
  ppVar1 = std::forward<std::pair<int,CkSound*>>((type *)param_2);
  this_00 = operator_new(0x18,param_1);
  if (this_00 != (_Rb_tree_node<std::pair<int_const,CkSound*>> *)0x0) {
    std::_Rb_tree_node<std::pair<int_const,CkSound*>>::_Rb_tree_node<std::pair<int,CkSound*>>
              (this_00,ppVar1);
  }
  return;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound*const,int>>>::max_size  @ 0x61427c
/* __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound* const, int> > >::max_size() const
    */

undefined4
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound*const,int>>>::max_size(void)

{
  return 0xaaaaaaa;
}

// ---- __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound*const,int>>>::construct<std::_Rb_tree_node<std::pair<CkSound*const,int>>,std::pair<CkSound*,int>>  @ 0x614290
/* void __gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound* const, int> >
   >::construct<std::_Rb_tree_node<std::pair<CkSound* const, int> >, std::pair<CkSound*, int>
   >(std::_Rb_tree_node<std::pair<CkSound* const, int> >*, std::pair<CkSound*, int>&&) */

void __thiscall
__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound*const,int>>>::
construct<std::_Rb_tree_node<std::pair<CkSound*const,int>>,std::pair<CkSound*,int>>
          (new_allocator<std::_Rb_tree_node<std::pair<CkSound*const,int>>> *this,
          _Rb_tree_node *param_1,pair *param_2)

{
  pair *ppVar1;
  _Rb_tree_node<std::pair<CkSound*const,int>> *this_00;
  
  ppVar1 = std::forward<std::pair<CkSound*,int>>((type *)param_2);
  this_00 = operator_new(0x18,param_1);
  if (this_00 != (_Rb_tree_node<std::pair<CkSound*const,int>> *)0x0) {
    std::_Rb_tree_node<std::pair<CkSound*const,int>>::_Rb_tree_node<std::pair<CkSound*,int>>
              (this_00,ppVar1);
  }
  return;
}

// ---- __gnu_cxx::__verbose_terminate_handler  @ 0x7c82d8
/* __gnu_cxx::__verbose_terminate_handler() */

void __gnu_cxx::__verbose_terminate_handler(void)

{
  int iVar1;
  char *__s;
  char *__s_00;
  int local_1c [2];
  
  if (DAT_00972534 != '\0') {
    fwrite("terminate called recursively\n",1,0x1d,(FILE *)recv);
                    /* WARNING: Subroutine does not return */
    abort();
  }
  DAT_00972534 = 1;
  iVar1 = __cxa_current_exception_type();
  if (iVar1 != 0) {
    __s = *(char **)(iVar1 + 4);
    if (*__s == '*') {
      __s = __s + 1;
    }
    local_1c[0] = -1;
    __s_00 = (char *)__cxa_demangle(__s,0,0,local_1c);
    fwrite("terminate called after throwing an instance of \'",1,0x30,(FILE *)recv);
    if (local_1c[0] == 0) goto LAB_007c8352;
    fputs(__s,(FILE *)recv);
    do {
      fwrite(&DAT_00853954,1,2,(FILE *)recv);
      if (local_1c[0] == 0) {
        free(__s_00);
      }
      __cxa_rethrow();
LAB_007c8352:
      fputs(__s_00,(FILE *)recv);
    } while( true );
  }
  fwrite("terminate called without an active exception\n",1,0x2d,(FILE *)recv);
                    /* WARNING: Subroutine does not return */
  abort();
}
