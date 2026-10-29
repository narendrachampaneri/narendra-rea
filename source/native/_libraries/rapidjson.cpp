// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 148 functions

// ---- rapidjson::CrtAllocator::Malloc  @ 0x3874d0
/* rapidjson::CrtAllocator::Malloc(unsigned int) */

void * __thiscall rapidjson::CrtAllocator::Malloc(CrtAllocator *this,uint param_1)

{
  void *pvVar1;
  
  pvVar1 = malloc(param_1);
  return pvVar1;
}

// ---- rapidjson::CrtAllocator::Free  @ 0x3874e8
/* rapidjson::CrtAllocator::Free(void*) */

void rapidjson::CrtAllocator::Free(void *param_1)

{
  free(param_1);
  return;
}

// ---- rapidjson::internal::Pow10  @ 0x3874fc
/* rapidjson::internal::Pow10(int) */

undefined8 rapidjson::internal::Pow10(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  
  if (param_1 < -0x134) {
    uVar1 = 0;
    uVar3 = 0;
  }
  else {
    iVar2 = (param_1 + 0x134) * 8;
    uVar1 = *(undefined4 *)(Pow10(int)::e + iVar2);
    uVar3 = *(undefined4 *)(Pow10(int)::e + iVar2 + 4);
  }
  return CONCAT44(uVar3,uVar1);
}

// ---- rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~GenericDocument  @ 0x38a924
/* rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::~GenericDocument() */

GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
__thiscall
rapidjson::
GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
~GenericDocument(GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                 *this)

{
  internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~Stack
            ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)(this + 0x10));
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  ~GenericValue((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                 *)this);
  return this;
}

// ---- rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericDocument  @ 0x38bf7c
/* rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::GenericDocument(rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>*, unsigned int) */

GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
__thiscall
rapidjson::
GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
GenericDocument(GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                *this,MemoryPoolAllocator *param_1,uint param_2)

{
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  GenericValue((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                *)this);
  internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Stack
            ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)(this + 0x10),param_1
             ,param_2);
  *(undefined4 *)(this + 0x28) = 0;
  *(undefined4 *)(this + 0x2c) = 0;
  return this;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~GenericValue  @ 0x38bfc0
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::~GenericValue() */

GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
__thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
~GenericValue(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *this)

{
  return this;
}

// ---- rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~Stack  @ 0x38bfcc
/* rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::~Stack() */

Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> * __thiscall
rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~Stack
          (Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *this)

{
  MemoryPoolAllocator<rapidjson::CrtAllocator> *this_00;
  
  MemoryPoolAllocator<rapidjson::CrtAllocator>::Free(*(void **)(this + 8));
  this_00 = *(MemoryPoolAllocator<rapidjson::CrtAllocator> **)(this + 4);
  if (this_00 != (MemoryPoolAllocator<rapidjson::CrtAllocator> *)0x0) {
    MemoryPoolAllocator<rapidjson::CrtAllocator>::~MemoryPoolAllocator(this_00);
    operator_delete(this_00);
  }
  return this;
}

// ---- rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Parse<0u>  @ 0x38bff8
/* rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >&
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Parse<0u>(char const*) */

GenericDocument * __thiscall
rapidjson::
GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
Parse<0u>(GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *this,char *param_1)

{
  GenericDocument *pGVar1;
  GenericStringStream<rapidjson::UTF8<char>> aGStack_10 [12];
  
  GenericStringStream<rapidjson::UTF8<char>>::GenericStringStream(aGStack_10,param_1);
  pGVar1 = ParseStream<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>
                     (this,(GenericStringStream *)aGStack_10);
  return pGVar1;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsObject  @ 0x38c020
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::IsObject() const */

bool __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
IsObject(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
         *this)

{
  return *(int *)(this + 0xc) == 3;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::HasMember  @ 0x38c038
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::HasMember(char const*) const */

bool __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
HasMember(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *this,char *param_1)

{
  int iVar1;
  
  iVar1 = FindMember(this,param_1);
  return iVar1 != 0;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[]  @ 0x38c05c
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::operator[](char const*) */

undefined1 * __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
operator[](GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,char *param_1)

{
  int iVar1;
  undefined1 *puVar2;
  
  iVar1 = FindMember(this,param_1);
  if (iVar1 == 0) {
    if (((operator[](char_const*)::NullValue & 1) == 0) &&
       (iVar1 = __cxa_guard_acquire(&operator[](char_const*)::NullValue), iVar1 != 0)) {
      GenericValue((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                    *)operator[](char_const*)::NullValue);
      __cxa_guard_release(&operator[](char_const*)::NullValue);
      FUN_007985bc(operator[](char_const*)::NullValue,0x38bfc1,&DAT_00943000);
    }
    puVar2 = operator[](char_const*)::NullValue;
  }
  else {
    puVar2 = (undefined1 *)(iVar1 + 0x10);
  }
  return puVar2;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsNumber  @ 0x38c108
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::IsNumber() const */

bool __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
IsNumber(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
         *this)

{
  return (*(uint *)(this + 0xc) & 0x200) != 0;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetInt64  @ 0x38c124
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GetInt64() const */

undefined8 __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
GetInt64(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
         *this)

{
  return *(undefined8 *)this;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetInt  @ 0x38c138
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GetInt() const */

undefined4 __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetInt
          (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this)

{
  return *(undefined4 *)this;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsNull  @ 0x38c148
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::IsNull() const */

bool __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsNull
          (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this)

{
  return *(int *)(this + 0xc) == 0;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsArray  @ 0x38c160
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::IsArray() const */

bool __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsArray
          (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this)

{
  return *(int *)(this + 0xc) == 4;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Size  @ 0x38c190
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Size() const */

undefined4 __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Size
          (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this)

{
  return *(undefined4 *)(this + 4);
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[]  @ 0x38c1a0
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::operator[](unsigned int) const */

undefined4 __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
operator[](GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,uint param_1)

{
  undefined4 uVar1;
  
  uVar1 = operator[](this,param_1);
  return uVar1;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[]  @ 0x38c1bc
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::operator[](char const*) const */

undefined4 __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
operator[](GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,char *param_1)

{
  undefined4 uVar1;
  
  uVar1 = operator[](this,param_1);
  return uVar1;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetString  @ 0x38c1d8
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GetString() const */

undefined4 __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
GetString(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *this)

{
  return *(undefined4 *)this;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetStringLength  @ 0x38c2d4
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GetStringLength() const */

undefined4 __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
GetStringLength(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                *this)

{
  return *(undefined4 *)(this + 4);
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetBool  @ 0x38c2e4
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GetBool() const */

bool __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetBool
          (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this)

{
  return *(int *)(this + 0xc) == 0x102;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue  @ 0x38c918
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GenericValue() */

GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
__thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
GenericValue(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
             *this)

{
  *(undefined4 *)(this + 0xc) = 0;
  return this;
}

// ---- rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Stack  @ 0x38c92c
/* rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::Stack(rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>*, unsigned int) */

Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> * __thiscall
rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Stack
          (Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *this,
          MemoryPoolAllocator *param_1,uint param_2)

{
  MemoryPoolAllocator<rapidjson::CrtAllocator> *this_00;
  undefined4 uVar1;
  
  *(MemoryPoolAllocator **)this = param_1;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 0x10) = 0;
  *(uint *)(this + 0x14) = param_2;
  if (*(int *)this == 0) {
    this_00 = operator_new(0x14);
    MemoryPoolAllocator<rapidjson::CrtAllocator>::MemoryPoolAllocator
              (this_00,0x10000,(CrtAllocator *)0x0);
    *(MemoryPoolAllocator<rapidjson::CrtAllocator> **)this = this_00;
    *(undefined4 *)(this + 4) = *(undefined4 *)this;
  }
  uVar1 = MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc
                    (*(MemoryPoolAllocator<rapidjson::CrtAllocator> **)this,*(uint *)(this + 0x14));
  *(undefined4 *)(this + 8) = uVar1;
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(this + 8);
  *(int *)(this + 0x10) = *(int *)(this + 8) + *(int *)(this + 0x14);
  return this;
}

// ---- rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Free  @ 0x38c9c4
/* rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Free(void*) */

void rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Free(void *param_1)

{
  return;
}

// ---- rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::~MemoryPoolAllocator  @ 0x38c9cc
/* rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::~MemoryPoolAllocator() */

MemoryPoolAllocator<rapidjson::CrtAllocator> * __thiscall
rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::~MemoryPoolAllocator
          (MemoryPoolAllocator<rapidjson::CrtAllocator> *this)

{
  Clear(this);
  operator_delete(*(void **)(this + 0x10));
  return this;
}

// ---- rapidjson::GenericStringStream<rapidjson::UTF8<char>>::GenericStringStream  @ 0x38c9ec
/* rapidjson::GenericStringStream<rapidjson::UTF8<char> >::GenericStringStream(char const*) */

GenericStringStream<rapidjson::UTF8<char>> * __thiscall
rapidjson::GenericStringStream<rapidjson::UTF8<char>>::GenericStringStream
          (GenericStringStream<rapidjson::UTF8<char>> *this,char *param_1)

{
  *(char **)this = param_1;
  *(char **)(this + 4) = param_1;
  return this;
}

// ---- rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~GenericReader  @ 0x38ca08
/* rapidjson::GenericReader<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::~GenericReader() */

GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
__thiscall
rapidjson::
GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
~GenericReader(GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
               *this)

{
  internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~Stack
            ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)this);
  return this;
}

// ---- rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::ParseStream<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>  @ 0x38ca20
/* rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >&
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::ParseStream<0u,
   rapidjson::GenericStringStream<rapidjson::UTF8<char> >
   >(rapidjson::GenericStringStream<rapidjson::UTF8<char> >&) */

GenericDocument * __thiscall
rapidjson::
GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
ParseStream<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>>
          (GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,GenericStringStream *param_1)

{
  bool bVar1;
  GenericValue *pGVar2;
  undefined4 uVar3;
  GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  aGStack_128 [288];
  
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  SetNull((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *)this);
  GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  GenericReader(aGStack_128,(MemoryPoolAllocator *)0x0,0x100);
  bVar1 = GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          ::
          Parse<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                    (aGStack_128,param_1,(GenericDocument *)this);
  if (bVar1) {
    pGVar2 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
             Pop<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                       ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)
                        (this + 0x10),1);
    GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
    RawAssign((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
               *)this,pGVar2);
    *(undefined4 *)(this + 0x28) = 0;
    *(undefined4 *)(this + 0x2c) = 0;
  }
  else {
    uVar3 = GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::GetParseError(aGStack_128);
    *(undefined4 *)(this + 0x28) = uVar3;
    uVar3 = GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::GetErrorOffset(aGStack_128);
    *(undefined4 *)(this + 0x2c) = uVar3;
    ClearStack(this);
  }
  GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  ~GenericReader(aGStack_128);
  return (GenericDocument *)this;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember  @ 0x38cad4
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::FindMember(char const*) const */

undefined4 __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
FindMember(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,char *param_1)

{
  undefined4 uVar1;
  
  uVar1 = FindMember(this,param_1);
  return uVar1;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember  @ 0x38caf0
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::FindMember(char const*) */

undefined4 * __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
FindMember(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,char *param_1)

{
  uint __n;
  int iVar1;
  undefined4 *local_14;
  
  __n = internal::StrLen<char>(param_1);
  local_14 = *(undefined4 **)this;
  while( true ) {
    if ((undefined4 *)(*(int *)this + *(int *)(this + 4) * 0x20) == local_14) {
      return (undefined4 *)0x0;
    }
    if ((local_14[1] == __n) && (iVar1 = memcmp((void *)*local_14,param_1,__n), iVar1 == 0)) break;
    local_14 = local_14 + 8;
  }
  return local_14;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[]  @ 0x38cb80
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::operator[](unsigned int) */

int __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
operator[](GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,uint param_1)

{
  return param_1 * 0x10 + *(int *)this;
}

// ---- rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::MemoryPoolAllocator  @ 0x38d314
/* rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::MemoryPoolAllocator(unsigned int,
   rapidjson::CrtAllocator*) */

MemoryPoolAllocator<rapidjson::CrtAllocator> * __thiscall
rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::MemoryPoolAllocator
          (MemoryPoolAllocator<rapidjson::CrtAllocator> *this,uint param_1,CrtAllocator *param_2)

{
  void *pvVar1;
  
  *(undefined4 *)this = 0;
  *(uint *)(this + 4) = param_1;
  *(undefined4 *)(this + 8) = 0;
  *(CrtAllocator **)(this + 0xc) = param_2;
  *(undefined4 *)(this + 0x10) = 0;
  if (*(int *)(this + 0xc) == 0) {
    pvVar1 = operator_new(1);
    *(void **)(this + 0xc) = pvVar1;
    *(undefined4 *)(this + 0x10) = *(undefined4 *)(this + 0xc);
  }
  AddChunk(this,*(uint *)(this + 4));
  return this;
}

// ---- rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc  @ 0x38d370
/* rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(unsigned int) */

int __thiscall
rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc
          (MemoryPoolAllocator<rapidjson::CrtAllocator> *this,uint param_1)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  
  uVar2 = param_1 + 3 & 0xfffffffc;
  if (**(uint **)this < *(int *)(*(int *)this + 4) + uVar2) {
    uVar3 = uVar2;
    if (uVar2 < *(uint *)(this + 4)) {
      uVar3 = *(uint *)(this + 4);
    }
    AddChunk(this,uVar3);
  }
  iVar1 = *(int *)this;
  iVar4 = *(int *)(*(int *)this + 4);
  *(uint *)(*(int *)this + 4) = uVar2 + *(int *)(*(int *)this + 4);
  return iVar4 + 0xc + iVar1;
}

// ---- rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Clear  @ 0x38d3dc
/* rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Clear() */

void __thiscall
rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Clear
          (MemoryPoolAllocator<rapidjson::CrtAllocator> *this)

{
  undefined4 uVar1;
  
  while ((*(int *)this != 0 && (*(int *)this != *(int *)(this + 8)))) {
    uVar1 = *(undefined4 *)(*(int *)this + 8);
    CrtAllocator::Free(*(void **)this);
    *(undefined4 *)this = uVar1;
  }
  return;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetNull  @ 0x38d418
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::SetNull() */

GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
__thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetNull
          (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this)

{
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  *this_00;
  
  ~GenericValue(this);
  this_00 = operator_new(0x10,this);
  if (this_00 !=
      (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
      )0x0) {
    GenericValue(this_00);
  }
  return this;
}

// ---- rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericReader  @ 0x38d444
/* rapidjson::GenericReader<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::GenericReader(rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>*, unsigned int) */

GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
__thiscall
rapidjson::
GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
GenericReader(GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *this,MemoryPoolAllocator *param_1,uint param_2)

{
  internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Stack
            ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)this,param_1,param_2)
  ;
  *(undefined4 *)(this + 0x118) = 0;
  *(undefined4 *)(this + 0x11c) = 0;
  return this;
}

// ---- rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Parse<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>  @ 0x38d474
/* bool rapidjson::GenericReader<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Parse<0u,
   rapidjson::GenericStringStream<rapidjson::UTF8<char> >,
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >
   >(rapidjson::GenericStringStream<rapidjson::UTF8<char> >&,
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >&) */

bool __thiscall
rapidjson::
GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
Parse<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
          (GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,GenericStringStream *param_1,GenericDocument *param_2)

{
  int iVar1;
  undefined4 uVar2;
  bool bVar3;
  
  *(undefined4 *)(this + 0x118) = 0;
  *(undefined4 *)(this + 0x11c) = 0;
  iVar1 = setjmp((__jmp_buf_tag *)(this + 0x18));
  if (iVar1 == 0) {
    SkipWhitespace<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(param_1);
    iVar1 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                      ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
    if (iVar1 == 0) {
      *(char **)(this + 0x118) = "Text only contains white space(s)";
      uVar2 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                        ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
      *(undefined4 *)(this + 0x11c) = uVar2;
                    /* WARNING: Subroutine does not return */
      longjmp((__jmp_buf_tag *)(this + 0x18),1);
    }
    iVar1 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                      ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
    if (iVar1 == 0x5b) {
      ParseArray<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                (this,param_1,param_2);
    }
    else {
      if (iVar1 != 0x7b) {
        *(char **)(this + 0x118) = "Expect either an object or array at root";
        uVar2 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                          ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
        *(undefined4 *)(this + 0x11c) = uVar2;
                    /* WARNING: Subroutine does not return */
        longjmp((__jmp_buf_tag *)(this + 0x18),1);
      }
      ParseObject<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                (this,param_1,param_2);
    }
    SkipWhitespace<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(param_1);
    iVar1 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                      ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
    if (iVar1 != 0) {
      *(char **)(this + 0x118) = "Nothing should follow the root object or array.";
      uVar2 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                        ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
      *(undefined4 *)(this + 0x11c) = uVar2;
                    /* WARNING: Subroutine does not return */
      longjmp((__jmp_buf_tag *)(this + 0x18),1);
    }
    bVar3 = true;
  }
  else {
    internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Clear
              ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)this);
    bVar3 = false;
  }
  return bVar3;
}

// ---- rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Pop<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>  @ 0x38d598
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >*
   rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::Pop<rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> > >(unsigned int) */

GenericValue * __thiscall
rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
Pop<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
          (Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *this,uint param_1)

{
  *(uint *)(this + 0xc) = *(int *)(this + 0xc) + param_1 * -0x10;
  return *(GenericValue **)(this + 0xc);
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::RawAssign  @ 0x38d5b8
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::RawAssign(rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >&) */

void __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
RawAssign(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *this,GenericValue *param_1)

{
  memcpy(this,param_1,0x10);
  *(undefined4 *)(param_1 + 0xc) = 0;
  return;
}

// ---- rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetParseError  @ 0x38d5d8
/* rapidjson::GenericReader<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GetParseError() const */

undefined4 __thiscall
rapidjson::
GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
GetParseError(GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *this)

{
  return *(undefined4 *)(this + 0x118);
}

// ---- rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetErrorOffset  @ 0x38d5e8
/* rapidjson::GenericReader<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GetErrorOffset() const */

undefined4 __thiscall
rapidjson::
GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
GetErrorOffset(GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
               *this)

{
  return *(undefined4 *)(this + 0x11c);
}

// ---- rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::ClearStack  @ 0x38d5f8
/* rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::ClearStack() */

void __thiscall
rapidjson::
GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
ClearStack(GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this)

{
  internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Clear
            ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)(this + 0x10));
  return;
}

// ---- rapidjson::internal::StrLen<char>  @ 0x38d610
/* unsigned int rapidjson::internal::StrLen<char>(char const*) */

uint rapidjson::internal::StrLen<char>(char *param_1)

{
  char *local_4;
  
  for (local_4 = param_1; *local_4 != '\0'; local_4 = local_4 + 1) {
  }
  return (int)local_4 - (int)param_1;
}

// ---- rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::AddChunk  @ 0x38e0b0
/* rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::AddChunk(unsigned int) */

void __thiscall
rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::AddChunk
          (MemoryPoolAllocator<rapidjson::CrtAllocator> *this,uint param_1)

{
  uint *puVar1;
  
  puVar1 = (uint *)CrtAllocator::Malloc(*(CrtAllocator **)(this + 0xc),param_1 + 0xc);
  *puVar1 = param_1;
  puVar1[1] = 0;
  puVar1[2] = *(uint *)this;
  *(uint **)this = puVar1;
  return;
}

// ---- rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Clear  @ 0x38e0ec
/* rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Clear() */

void __thiscall
rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Clear
          (Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *this)

{
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(this + 8);
  return;
}

// ---- rapidjson::SkipWhitespace<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>  @ 0x38e0fc
/* void rapidjson::SkipWhitespace<rapidjson::GenericStringStream<rapidjson::UTF8<char> >
   >(rapidjson::GenericStringStream<rapidjson::UTF8<char> >&) */

void rapidjson::SkipWhitespace<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>
               (GenericStringStream *param_1)

{
  bool bVar1;
  int iVar2;
  undefined4 local_10;
  undefined4 uStack_c;
  
  local_10 = *(undefined4 *)param_1;
  uStack_c = *(undefined4 *)(param_1 + 4);
  while( true ) {
    iVar2 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                      ((GenericStringStream<rapidjson::UTF8<char>> *)&local_10);
    if ((((iVar2 == 0x20) ||
         (iVar2 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                            ((GenericStringStream<rapidjson::UTF8<char>> *)&local_10), iVar2 == 10))
        || (iVar2 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                              ((GenericStringStream<rapidjson::UTF8<char>> *)&local_10),
           iVar2 == 0xd)) ||
       (iVar2 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                          ((GenericStringStream<rapidjson::UTF8<char>> *)&local_10), iVar2 == 9)) {
      bVar1 = true;
    }
    else {
      bVar1 = false;
    }
    if (!bVar1) break;
    GenericStringStream<rapidjson::UTF8<char>>::Take
              ((GenericStringStream<rapidjson::UTF8<char>> *)&local_10);
  }
  *(undefined4 *)param_1 = local_10;
  *(undefined4 *)(param_1 + 4) = uStack_c;
  return;
}

// ---- rapidjson::GenericStringStream<rapidjson::UTF8<char>>::Peek  @ 0x38e16c
/* rapidjson::GenericStringStream<rapidjson::UTF8<char> >::Peek() const */

undefined1 __thiscall
rapidjson::GenericStringStream<rapidjson::UTF8<char>>::Peek
          (GenericStringStream<rapidjson::UTF8<char>> *this)

{
  return **(undefined1 **)this;
}

// ---- rapidjson::GenericStringStream<rapidjson::UTF8<char>>::Tell  @ 0x38e17c
/* rapidjson::GenericStringStream<rapidjson::UTF8<char> >::Tell() const */

int __thiscall
rapidjson::GenericStringStream<rapidjson::UTF8<char>>::Tell
          (GenericStringStream<rapidjson::UTF8<char>> *this)

{
  return *(int *)this - *(int *)(this + 4);
}

// ---- rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::ParseObject<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>  @ 0x38e194
/* void rapidjson::GenericReader<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::ParseObject<0u,
   rapidjson::GenericStringStream<rapidjson::UTF8<char> >,
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >
   >(rapidjson::GenericStringStream<rapidjson::UTF8<char> >&,
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >&) */

void __thiscall
rapidjson::
GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
ParseObject<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
          (GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,GenericStringStream *param_1,GenericDocument *param_2)

{
  int iVar1;
  undefined4 uVar2;
  uint local_c;
  
  GenericStringStream<rapidjson::UTF8<char>>::Take
            ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
  GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  StartObject((GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
               *)param_2);
  SkipWhitespace<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(param_1);
  iVar1 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                    ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
  if (iVar1 == 0x7d) {
    GenericStringStream<rapidjson::UTF8<char>>::Take
              ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
    GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
    EndObject((GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
               *)param_2,0);
  }
  else {
    local_c = 0;
    while( true ) {
      iVar1 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                        ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
      if (iVar1 != 0x22) {
        *(char **)(this + 0x118) = "Name of an object member must be a string";
        uVar2 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                          ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
        *(undefined4 *)(this + 0x11c) = uVar2;
                    /* WARNING: Subroutine does not return */
        longjmp((__jmp_buf_tag *)(this + 0x18),1);
      }
      ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                (this,param_1,param_2);
      SkipWhitespace<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(param_1);
      iVar1 = GenericStringStream<rapidjson::UTF8<char>>::Take
                        ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
      if (iVar1 != 0x3a) {
        *(char **)(this + 0x118) = "There must be a colon after the name of object member";
        uVar2 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                          ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
        *(undefined4 *)(this + 0x11c) = uVar2;
                    /* WARNING: Subroutine does not return */
        longjmp((__jmp_buf_tag *)(this + 0x18),1);
      }
      SkipWhitespace<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(param_1);
      ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                (this,param_1,param_2);
      SkipWhitespace<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(param_1);
      local_c = local_c + 1;
      iVar1 = GenericStringStream<rapidjson::UTF8<char>>::Take
                        ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
      if (iVar1 != 0x2c) break;
      SkipWhitespace<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(param_1);
    }
    if (iVar1 != 0x7d) {
      *(char **)(this + 0x118) = "Must be a comma or \'}\' after an object member";
      uVar2 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                        ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
      *(undefined4 *)(this + 0x11c) = uVar2;
                    /* WARNING: Subroutine does not return */
      longjmp((__jmp_buf_tag *)(this + 0x18),1);
    }
    GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
    EndObject((GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
               *)param_2,local_c);
  }
  return;
}

// ---- rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::ParseArray<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>  @ 0x38e2d8
/* void rapidjson::GenericReader<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::ParseArray<0u,
   rapidjson::GenericStringStream<rapidjson::UTF8<char> >,
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >
   >(rapidjson::GenericStringStream<rapidjson::UTF8<char> >&,
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >&) */

void __thiscall
rapidjson::
GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
ParseArray<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
          (GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,GenericStringStream *param_1,GenericDocument *param_2)

{
  int iVar1;
  undefined4 uVar2;
  uint local_c;
  
  GenericStringStream<rapidjson::UTF8<char>>::Take
            ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
  GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  StartArray((GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)param_2);
  SkipWhitespace<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(param_1);
  iVar1 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                    ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
  if (iVar1 == 0x5d) {
    GenericStringStream<rapidjson::UTF8<char>>::Take
              ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
    GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
    EndArray((GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)param_2,0);
  }
  else {
    local_c = 0;
    while( true ) {
      ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                (this,param_1,param_2);
      local_c = local_c + 1;
      SkipWhitespace<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(param_1);
      iVar1 = GenericStringStream<rapidjson::UTF8<char>>::Take
                        ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
      if (iVar1 != 0x2c) break;
      SkipWhitespace<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(param_1);
    }
    if (iVar1 != 0x5d) {
      *(char **)(this + 0x118) = "Must be a comma or \']\' after an array element.";
      uVar2 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                        ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
      *(undefined4 *)(this + 0x11c) = uVar2;
                    /* WARNING: Subroutine does not return */
      longjmp((__jmp_buf_tag *)(this + 0x18),1);
    }
    GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
    EndArray((GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)param_2,local_c);
  }
  return;
}

// ---- rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetSize  @ 0x38e388
/* rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GetSize()
   const */

int __thiscall
rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetSize
          (Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *this)

{
  return *(int *)(this + 0xc) - *(int *)(this + 8);
}

// ---- rapidjson::GenericStringStream<rapidjson::UTF8<char>>::Take  @ 0x38eb18
/* rapidjson::GenericStringStream<rapidjson::UTF8<char> >::Take() */

undefined1 __thiscall
rapidjson::GenericStringStream<rapidjson::UTF8<char>>::Take
          (GenericStringStream<rapidjson::UTF8<char>> *this)

{
  undefined1 *puVar1;
  
  puVar1 = *(undefined1 **)this;
  *(undefined1 **)this = puVar1 + 1;
  return *puVar1;
}

// ---- rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::StartObject  @ 0x38eb30
/* rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::StartObject() */

void __thiscall
rapidjson::
GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
StartObject(GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *this)

{
  GenericValue *pGVar1;
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  *pGVar2;
  
  pGVar1 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
           Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                     ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)
                      (this + 0x10),1);
  pGVar2 = operator_new(0x10,pGVar1);
  if (pGVar2 != (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                 *)0x0) {
    GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
    GenericValue(pGVar2,3);
  }
  return;
}

// ---- rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::EndObject  @ 0x38eb70
/* rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::EndObject(unsigned int) */

void __thiscall
rapidjson::
GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
EndObject(GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *this,uint param_1)

{
  Member *pMVar1;
  GenericValue *this_00;
  MemoryPoolAllocator *pMVar2;
  
  pMVar1 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
           Pop<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Member>
                     ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)
                      (this + 0x10),param_1);
  this_00 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
            Top<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                      ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)
                       (this + 0x10));
  pMVar2 = (MemoryPoolAllocator *)GetAllocator(this);
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  SetObjectRaw((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                *)this_00,pMVar1,param_1,pMVar2);
  return;
}

// ---- rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>  @ 0x38ebac
/* void rapidjson::GenericReader<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::ParseString<0u,
   rapidjson::GenericStringStream<rapidjson::UTF8<char> >,
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >
   >(rapidjson::GenericStringStream<rapidjson::UTF8<char> >&,
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >&) */

void __thiscall
rapidjson::
GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
          (GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,GenericStringStream *param_1,GenericDocument *param_2)

{
  bool bVar1;
  byte bVar2;
  char *pcVar3;
  int iVar4;
  byte *pbVar5;
  char acStack_24 [4];
  uint local_20;
  uint local_1c;
  uint local_18;
  size_t local_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  local_10 = *(undefined4 *)param_1;
  uStack_c = *(undefined4 *)(param_1 + 4);
  GenericStringStream<rapidjson::UTF8<char>>::Take
            ((GenericStringStream<rapidjson::UTF8<char>> *)&local_10);
  local_20 = 0;
  while( true ) {
    while (bVar2 = GenericStringStream<rapidjson::UTF8<char>>::Take
                             ((GenericStringStream<rapidjson::UTF8<char>> *)&local_10),
          bVar2 == 0x5c) {
      bVar2 = GenericStringStream<rapidjson::UTF8<char>>::Take
                        ((GenericStringStream<rapidjson::UTF8<char>> *)&local_10);
      if (ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(rapidjson::GenericStringStream<rapidjson::UTF8<char>>&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>&)
          ::escape[bVar2] == '\0') {
        if (bVar2 != 0x75) {
          *(char **)(this + 0x118) = "Unknown escape character";
          iVar4 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                            ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
          *(int *)(this + 0x11c) = iVar4 + -1;
                    /* WARNING: Subroutine does not return */
          longjmp((__jmp_buf_tag *)(this + 0x18),1);
        }
        local_1c = ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>
                             (this,(GenericStringStream *)&local_10);
        if ((0xd7ff < local_1c) && (local_1c < 0xdc00)) {
          iVar4 = GenericStringStream<rapidjson::UTF8<char>>::Take
                            ((GenericStringStream<rapidjson::UTF8<char>> *)&local_10);
          if ((iVar4 == 0x5c) &&
             (iVar4 = GenericStringStream<rapidjson::UTF8<char>>::Take
                                ((GenericStringStream<rapidjson::UTF8<char>> *)&local_10),
             iVar4 == 0x75)) {
            bVar1 = false;
          }
          else {
            bVar1 = true;
          }
          if (bVar1) {
            *(char **)(this + 0x118) = "Missing the second \\u in surrogate pair";
            iVar4 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                              ((GenericStringStream<rapidjson::UTF8<char>> *)&local_10);
            *(int *)(this + 0x11c) = iVar4 + -2;
                    /* WARNING: Subroutine does not return */
            longjmp((__jmp_buf_tag *)(this + 0x18),1);
          }
          local_18 = ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>
                               (this,(GenericStringStream *)&local_10);
          if ((local_18 < 0xdc00) || (0xdfff < local_18)) {
            *(char **)(this + 0x118) = "The second \\u in surrogate pair is invalid";
            iVar4 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                              ((GenericStringStream<rapidjson::UTF8<char>> *)&local_10);
            *(int *)(this + 0x11c) = iVar4 + -2;
                    /* WARNING: Subroutine does not return */
            longjmp((__jmp_buf_tag *)(this + 0x18),1);
          }
          local_1c = (local_18 - 0xdc00 | (local_1c - 0xd800) * 0x400) + 0x10000;
        }
        iVar4 = UTF8<char>::Encode(acStack_24,local_1c);
        local_14 = iVar4 - (int)acStack_24;
        pcVar3 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
                 Push<char>((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)this,
                            local_14);
        memcpy(pcVar3,acStack_24,local_14);
        local_20 = local_14 + local_20;
      }
      else {
        pcVar3 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
                 Push<char>((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)this,1
                           );
        *pcVar3 = ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(rapidjson::GenericStringStream<rapidjson::UTF8<char>>&,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>&)
                  ::escape[bVar2];
        local_20 = local_20 + 1;
      }
    }
    if (bVar2 == 0x22) {
      pcVar3 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Push<char>
                         ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)this,1);
      *pcVar3 = '\0';
      local_20 = local_20 + 1;
      pcVar3 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Pop<char>
                         ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)this,
                          local_20);
      GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
      ::String((GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                *)param_2,pcVar3,local_20 - 1,true);
      *(undefined4 *)param_1 = local_10;
      *(undefined4 *)(param_1 + 4) = uStack_c;
      return;
    }
    if (bVar2 == 0) break;
    if (bVar2 < 0x20) {
      *(char **)(this + 0x118) = "Incorrect unescaped character in string";
      iVar4 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                        ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
      *(int *)(this + 0x11c) = iVar4 + -1;
                    /* WARNING: Subroutine does not return */
      longjmp((__jmp_buf_tag *)(this + 0x18),1);
    }
    pbVar5 = (byte *)internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
                     Push<char>((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)
                                this,1);
    *pbVar5 = bVar2;
    local_20 = local_20 + 1;
  }
  *(char **)(this + 0x118) = "lacks ending quotation before the end of string";
  iVar4 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                    ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
  *(int *)(this + 0x11c) = iVar4 + -1;
                    /* WARNING: Subroutine does not return */
  longjmp((__jmp_buf_tag *)(this + 0x18),1);
}

// ---- rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>  @ 0x38ee34
/* void rapidjson::GenericReader<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::ParseValue<0u,
   rapidjson::GenericStringStream<rapidjson::UTF8<char> >,
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >
   >(rapidjson::GenericStringStream<rapidjson::UTF8<char> >&,
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >&) */

void __thiscall
rapidjson::
GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
          (GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,GenericStringStream *param_1,GenericDocument *param_2)

{
  int iVar1;
  
  iVar1 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                    ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
  if (iVar1 == 0x66) {
    ParseFalse<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
              (this,param_1,param_2);
    return;
  }
  if (iVar1 < 0x67) {
    if (iVar1 == 0x22) {
      ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                (this,param_1,param_2);
      return;
    }
    if (iVar1 == 0x5b) {
      ParseArray<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                (this,param_1,param_2);
      return;
    }
  }
  else {
    if (iVar1 == 0x74) {
      ParseTrue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                (this,param_1,param_2);
      return;
    }
    if (iVar1 == 0x7b) {
      ParseObject<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                (this,param_1,param_2);
      return;
    }
    if (iVar1 == 0x6e) {
      ParseNull<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                (this,param_1,param_2);
      return;
    }
  }
  ParseNumber<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
            (this,param_1,param_2);
  return;
}

// ---- rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::StartArray  @ 0x38eebc
/* rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::StartArray() */

void __thiscall
rapidjson::
GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
StartArray(GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this)

{
  GenericValue *pGVar1;
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  *pGVar2;
  
  pGVar1 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
           Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                     ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)
                      (this + 0x10),1);
  pGVar2 = operator_new(0x10,pGVar1);
  if (pGVar2 != (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                 *)0x0) {
    GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
    GenericValue(pGVar2,4);
  }
  return;
}

// ---- rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::EndArray  @ 0x38eefc
/* rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::EndArray(unsigned int) */

void __thiscall
rapidjson::
GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
EndArray(GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
         *this,uint param_1)

{
  GenericValue *pGVar1;
  GenericValue *this_00;
  MemoryPoolAllocator *pMVar2;
  
  pGVar1 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
           Pop<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                     ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)
                      (this + 0x10),param_1);
  this_00 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
            Top<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                      ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)
                       (this + 0x10));
  pMVar2 = (MemoryPoolAllocator *)GetAllocator(this);
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  SetArrayRaw((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
               *)this_00,pGVar1,param_1,pMVar2);
  return;
}

// ---- rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>  @ 0x38f3a0
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >*
   rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::Push<rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> > >(unsigned int) */

GenericValue * __thiscall
rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
          (Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *this,uint param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  GenericValue *pGVar6;
  uint local_18;
  
  if (*(uint *)(this + 0x10) <= *(int *)(this + 0xc) + param_1 * 0x10) {
    iVar4 = *(int *)(this + 0x14);
    iVar1 = GetSize(this);
    iVar2 = GetSize(this);
    uVar5 = param_1 * 0x10 + iVar2;
    local_18 = iVar4 << 1;
    if ((uint)(iVar4 << 1) < uVar5) {
      local_18 = uVar5;
    }
    uVar3 = MemoryPoolAllocator<rapidjson::CrtAllocator>::Realloc
                      (*(MemoryPoolAllocator<rapidjson::CrtAllocator> **)this,*(void **)(this + 8),
                       *(uint *)(this + 0x14),local_18);
    *(undefined4 *)(this + 8) = uVar3;
    *(uint *)(this + 0x14) = local_18;
    *(int *)(this + 0xc) = *(int *)(this + 8) + iVar1;
    *(int *)(this + 0x10) = *(int *)(this + 8) + *(int *)(this + 0x14);
  }
  pGVar6 = *(GenericValue **)(this + 0xc);
  *(uint *)(this + 0xc) = *(int *)(this + 0xc) + param_1 * 0x10;
  return pGVar6;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue  @ 0x38f444
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GenericValue(rapidjson::Type) */

GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
__thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
GenericValue(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
             *this,int param_2)

{
  *(undefined4 *)(this + 0xc) =
       *(undefined4 *)(GenericValue(rapidjson::Type)::defaultFlags + param_2 * 4);
  memset(this,0,0xc);
  return this;
}

// ---- rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Pop<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Member>  @ 0x38f480
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Member*
   rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::Pop<rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Member>(unsigned int) */

Member * __thiscall
rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
Pop<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Member>
          (Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *this,uint param_1)

{
  *(uint *)(this + 0xc) = *(int *)(this + 0xc) + param_1 * -0x20;
  return *(Member **)(this + 0xc);
}

// ---- rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Top<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>  @ 0x38f4a0
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >*
   rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::Top<rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> > >() */

GenericValue * __thiscall
rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
Top<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
          (Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *this)

{
  return (GenericValue *)(*(int *)(this + 0xc) + -0x10);
}

// ---- rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetAllocator  @ 0x38f4b4
/* rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GetAllocator() */

undefined4 __thiscall
rapidjson::
GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
GetAllocator(GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
             *this)

{
  undefined4 uVar1;
  
  uVar1 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetAllocator
                    ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)(this + 0x10)
                    );
  return uVar1;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetObjectRaw  @ 0x38f4d0
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::SetObjectRaw(rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Member*, unsigned int,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>&) */

void __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
SetObjectRaw(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
             *this,Member *param_1,uint param_2,MemoryPoolAllocator *param_3)

{
  undefined4 uVar1;
  
  *(undefined4 *)(this + 0xc) = 3;
  uVar1 = MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc
                    ((MemoryPoolAllocator<rapidjson::CrtAllocator> *)param_3,param_2 << 5);
  *(undefined4 *)this = uVar1;
  memcpy(*(void **)this,param_1,param_2 << 5);
  *(uint *)(this + 8) = param_2;
  *(undefined4 *)(this + 4) = *(undefined4 *)(this + 8);
  return;
}

// ---- rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Push<char>  @ 0x38f51c
/* char* rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::Push<char>(unsigned int) */

char * __thiscall
rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Push<char>
          (Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *this,uint param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  char *pcVar5;
  uint local_18;
  
  if (*(uint *)(this + 0x10) <= *(int *)(this + 0xc) + param_1) {
    iVar4 = *(int *)(this + 0x14);
    iVar1 = GetSize(this);
    iVar2 = GetSize(this);
    local_18 = iVar4 << 1;
    if ((uint)(iVar4 << 1) < param_1 + iVar2) {
      local_18 = param_1 + iVar2;
    }
    uVar3 = MemoryPoolAllocator<rapidjson::CrtAllocator>::Realloc
                      (*(MemoryPoolAllocator<rapidjson::CrtAllocator> **)this,*(void **)(this + 8),
                       *(uint *)(this + 0x14),local_18);
    *(undefined4 *)(this + 8) = uVar3;
    *(uint *)(this + 0x14) = local_18;
    *(int *)(this + 0xc) = *(int *)(this + 8) + iVar1;
    *(int *)(this + 0x10) = *(int *)(this + 8) + *(int *)(this + 0x14);
  }
  pcVar5 = *(char **)(this + 0xc);
  *(uint *)(this + 0xc) = *(int *)(this + 0xc) + param_1;
  return pcVar5;
}

// ---- rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>  @ 0x38f5bc
/* unsigned int rapidjson::GenericReader<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char> >
   >(rapidjson::GenericStringStream<rapidjson::UTF8<char> >&) */

uint __thiscall
rapidjson::
GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>
          (GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,GenericStringStream *param_1)

{
  byte bVar1;
  int iVar2;
  uint local_18;
  int local_14;
  undefined4 local_10;
  undefined4 uStack_c;
  
  local_10 = *(undefined4 *)param_1;
  uStack_c = *(undefined4 *)(param_1 + 4);
  local_18 = 0;
  local_14 = 0;
  do {
    if (3 < local_14) {
      *(undefined4 *)param_1 = local_10;
      *(undefined4 *)(param_1 + 4) = uStack_c;
      return local_18;
    }
    bVar1 = GenericStringStream<rapidjson::UTF8<char>>::Take
                      ((GenericStringStream<rapidjson::UTF8<char>> *)&local_10);
    iVar2 = (uint)bVar1 + local_18 * 0x10;
    if ((bVar1 < 0x30) || (0x39 < bVar1)) {
      if ((bVar1 < 0x41) || (0x46 < bVar1)) {
        if ((bVar1 < 0x61) || (0x66 < bVar1)) {
          *(char **)(this + 0x118) = "Incorrect hex digit after \\u escape";
          iVar2 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                            ((GenericStringStream<rapidjson::UTF8<char>> *)&local_10);
          *(int *)(this + 0x11c) = iVar2 + -1;
                    /* WARNING: Subroutine does not return */
          longjmp((__jmp_buf_tag *)(this + 0x18),1);
        }
        local_18 = iVar2 - 0x57;
      }
      else {
        local_18 = iVar2 - 0x37;
      }
    }
    else {
      local_18 = iVar2 - 0x30;
    }
    local_14 = local_14 + 1;
  } while( true );
}

// ---- rapidjson::UTF8<char>::Encode  @ 0x38f690
/* rapidjson::UTF8<char>::Encode(char*, unsigned int) */

char * rapidjson::UTF8<char>::Encode(char *param_1,uint param_2)

{
  byte bVar1;
  char *local_4;
  
  bVar1 = (byte)param_2;
  if (param_2 < 0x80) {
    local_4 = param_1 + 1;
    *param_1 = bVar1;
  }
  else if (param_2 < 0x800) {
    *param_1 = (byte)(param_2 >> 6) | 0xc0;
    local_4 = param_1 + 2;
    param_1[1] = bVar1 & 0x3f | 0x80;
  }
  else if (param_2 < 0x10000) {
    *param_1 = (byte)(param_2 >> 0xc) | 0xe0;
    param_1[1] = (byte)(param_2 >> 6) & 0x3f | 0x80;
    local_4 = param_1 + 3;
    param_1[2] = bVar1 & 0x3f | 0x80;
  }
  else {
    *param_1 = (byte)(param_2 >> 0x12) | 0xf0;
    param_1[1] = (byte)(param_2 >> 0xc) & 0x3f | 0x80;
    param_1[2] = (byte)(param_2 >> 6) & 0x3f | 0x80;
    local_4 = param_1 + 4;
    param_1[3] = bVar1 & 0x3f | 0x80;
  }
  return local_4;
}

// ---- rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String  @ 0x38f798
/* rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::String(char const*, unsigned int,
   bool) */

void __thiscall
rapidjson::
GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
String(GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
       *this,char *param_1,uint param_2,bool param_3)

{
  MemoryPoolAllocator *pMVar1;
  GenericValue *pGVar2;
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  *pGVar3;
  
  if (param_3) {
    pMVar1 = (MemoryPoolAllocator *)GetAllocator(this);
    pGVar2 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
             Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                       ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)
                        (this + 0x10),1);
    pGVar3 = operator_new(0x10,pGVar2);
    if (pGVar3 != (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                   *)0x0) {
      GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
      GenericValue(pGVar3,param_1,param_2,pMVar1);
    }
  }
  else {
    pGVar2 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
             Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                       ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)
                        (this + 0x10),1);
    pGVar3 = operator_new(0x10,pGVar2);
    if (pGVar3 != (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                   *)0x0) {
      GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
      GenericValue(pGVar3,param_1,param_2);
    }
  }
  return;
}

// ---- rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Pop<char>  @ 0x38f828
/* char* rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::Pop<char>(unsigned int) */

char * __thiscall
rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Pop<char>
          (Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *this,uint param_1)

{
  *(uint *)(this + 0xc) = *(int *)(this + 0xc) - param_1;
  return *(char **)(this + 0xc);
}

// ---- rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::ParseNull<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>  @ 0x38f848
/* void rapidjson::GenericReader<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::ParseNull<0u,
   rapidjson::GenericStringStream<rapidjson::UTF8<char> >,
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >
   >(rapidjson::GenericStringStream<rapidjson::UTF8<char> >&,
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >&) */

void __thiscall
rapidjson::
GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
ParseNull<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
          (GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,GenericStringStream *param_1,GenericDocument *param_2)

{
  bool bVar1;
  int iVar2;
  
  GenericStringStream<rapidjson::UTF8<char>>::Take
            ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
  iVar2 = GenericStringStream<rapidjson::UTF8<char>>::Take
                    ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
  if (((iVar2 == 0x75) &&
      (iVar2 = GenericStringStream<rapidjson::UTF8<char>>::Take
                         ((GenericStringStream<rapidjson::UTF8<char>> *)param_1), iVar2 == 0x6c)) &&
     (iVar2 = GenericStringStream<rapidjson::UTF8<char>>::Take
                        ((GenericStringStream<rapidjson::UTF8<char>> *)param_1), iVar2 == 0x6c)) {
    bVar1 = true;
  }
  else {
    bVar1 = false;
  }
  if (bVar1) {
    GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
    Null((GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *)param_2);
    return;
  }
  *(char **)(this + 0x118) = "Invalid value";
  iVar2 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                    ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
  *(int *)(this + 0x11c) = iVar2 + -1;
                    /* WARNING: Subroutine does not return */
  longjmp((__jmp_buf_tag *)(this + 0x18),1);
}

// ---- rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::ParseTrue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>  @ 0x38f8c0
/* void rapidjson::GenericReader<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::ParseTrue<0u,
   rapidjson::GenericStringStream<rapidjson::UTF8<char> >,
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >
   >(rapidjson::GenericStringStream<rapidjson::UTF8<char> >&,
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >&) */

void __thiscall
rapidjson::
GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
ParseTrue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
          (GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,GenericStringStream *param_1,GenericDocument *param_2)

{
  bool bVar1;
  int iVar2;
  undefined4 uVar3;
  
  GenericStringStream<rapidjson::UTF8<char>>::Take
            ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
  iVar2 = GenericStringStream<rapidjson::UTF8<char>>::Take
                    ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
  if (((iVar2 == 0x72) &&
      (iVar2 = GenericStringStream<rapidjson::UTF8<char>>::Take
                         ((GenericStringStream<rapidjson::UTF8<char>> *)param_1), iVar2 == 0x75)) &&
     (iVar2 = GenericStringStream<rapidjson::UTF8<char>>::Take
                        ((GenericStringStream<rapidjson::UTF8<char>> *)param_1), iVar2 == 0x65)) {
    bVar1 = true;
  }
  else {
    bVar1 = false;
  }
  if (bVar1) {
    GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
    Bool((GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *)param_2,true);
    return;
  }
  *(char **)(this + 0x118) = "Invalid value";
  uVar3 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                    ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
  *(undefined4 *)(this + 0x11c) = uVar3;
                    /* WARNING: Subroutine does not return */
  longjmp((__jmp_buf_tag *)(this + 0x18),1);
}

// ---- rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::ParseFalse<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>  @ 0x38f938
/* void rapidjson::GenericReader<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::ParseFalse<0u,
   rapidjson::GenericStringStream<rapidjson::UTF8<char> >,
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >
   >(rapidjson::GenericStringStream<rapidjson::UTF8<char> >&,
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >&) */

void __thiscall
rapidjson::
GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
ParseFalse<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
          (GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,GenericStringStream *param_1,GenericDocument *param_2)

{
  bool bVar1;
  int iVar2;
  
  GenericStringStream<rapidjson::UTF8<char>>::Take
            ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
  iVar2 = GenericStringStream<rapidjson::UTF8<char>>::Take
                    ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
  if ((((iVar2 == 0x61) &&
       (iVar2 = GenericStringStream<rapidjson::UTF8<char>>::Take
                          ((GenericStringStream<rapidjson::UTF8<char>> *)param_1), iVar2 == 0x6c))
      && (iVar2 = GenericStringStream<rapidjson::UTF8<char>>::Take
                            ((GenericStringStream<rapidjson::UTF8<char>> *)param_1), iVar2 == 0x73))
     && (iVar2 = GenericStringStream<rapidjson::UTF8<char>>::Take
                           ((GenericStringStream<rapidjson::UTF8<char>> *)param_1), iVar2 == 0x65))
  {
    bVar1 = true;
  }
  else {
    bVar1 = false;
  }
  if (bVar1) {
    GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
    Bool((GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *)param_2,false);
    return;
  }
  *(char **)(this + 0x118) = "Invalid value";
  iVar2 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                    ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
  *(int *)(this + 0x11c) = iVar2 + -1;
                    /* WARNING: Subroutine does not return */
  longjmp((__jmp_buf_tag *)(this + 0x18),1);
}

// ---- rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::ParseNumber<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>  @ 0x38f9c0
/* void rapidjson::GenericReader<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::ParseNumber<0u,
   rapidjson::GenericStringStream<rapidjson::UTF8<char> >,
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >
   >(rapidjson::GenericStringStream<rapidjson::UTF8<char> >&,
   rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >&) */

void __thiscall
rapidjson::
GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
ParseNumber<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
          (GenericReader<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,GenericStringStream *param_1,GenericDocument *param_2)

{
  bool bVar1;
  bool bVar2;
  longlong lVar3;
  bool bVar4;
  int iVar5;
  uint uVar6;
  bool bVar7;
  bool bVar8;
  uint in_fpscr;
  undefined4 uVar9;
  undefined4 extraout_s1;
  double dVar10;
  undefined8 uVar11;
  uint local_3c;
  int local_38;
  int local_34;
  uint local_30;
  uint local_2c;
  double local_28;
  undefined4 local_20;
  undefined4 uStack_1c;
  
  local_20 = *(undefined4 *)param_1;
  uStack_1c = *(undefined4 *)(param_1 + 4);
  iVar5 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                    ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
  bVar7 = iVar5 == 0x2d;
  if (bVar7) {
    GenericStringStream<rapidjson::UTF8<char>>::Take
              ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
  }
  bVar4 = false;
  iVar5 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                    ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
  if (iVar5 != 0x30) {
    uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                      ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
    if ((uVar6 < 0x31) ||
       (uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                          ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20), 0x39 < uVar6))
    {
      bVar1 = false;
    }
    else {
      bVar1 = true;
    }
    if (!bVar1) {
      *(char **)(this + 0x118) = "Expect a value here.";
      uVar9 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                        ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
      *(undefined4 *)(this + 0x11c) = uVar9;
                    /* WARNING: Subroutine does not return */
      longjmp((__jmp_buf_tag *)(this + 0x18),1);
    }
    iVar5 = GenericStringStream<rapidjson::UTF8<char>>::Take
                      ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
    local_3c = iVar5 - 0x30;
    if (!bVar7) {
      do {
        uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                          ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
        if ((uVar6 < 0x30) ||
           (uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                              ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20),
           0x39 < uVar6)) {
          bVar1 = false;
        }
        else {
          bVar1 = true;
        }
        if (!bVar1) goto LAB_0038fb9e;
        if (0x19999998 < local_3c) {
          if ((local_3c == 0x19999999) &&
             (uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                                ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20),
             uVar6 < 0x36)) {
            bVar1 = false;
          }
          else {
            bVar1 = true;
          }
          if (bVar1) goto code_r0x0038fb2a;
        }
        iVar5 = GenericStringStream<rapidjson::UTF8<char>>::Take
                          ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
        local_3c = (iVar5 + local_3c * 10) - 0x30;
      } while( true );
    }
    do {
      uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                        ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
      if ((uVar6 < 0x30) ||
         (uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                            ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20), 0x39 < uVar6)
         ) {
        bVar1 = false;
      }
      else {
        bVar1 = true;
      }
      if (!bVar1) goto LAB_0038fb9e;
      if (0xccccccb < local_3c) {
        if ((local_3c == 0xccccccc) &&
           (uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                              ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20),
           uVar6 < 0x39)) {
          bVar1 = false;
        }
        else {
          bVar1 = true;
        }
        if (bVar1) goto code_r0x0038faa6;
      }
      iVar5 = GenericStringStream<rapidjson::UTF8<char>>::Take
                        ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
      local_3c = (iVar5 + local_3c * 10) - 0x30;
    } while( true );
  }
  local_3c = 0;
  GenericStringStream<rapidjson::UTF8<char>>::Take
            ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
LAB_0038fb9e:
  local_30 = 0;
  local_2c = 0;
  bVar1 = false;
  if (bVar4) {
    local_30 = local_3c;
    local_2c = 0;
    if (!bVar7) {
      do {
        uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                          ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
        if ((uVar6 < 0x30) ||
           (uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                              ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20),
           0x39 < uVar6)) {
          bVar8 = false;
        }
        else {
          bVar8 = true;
        }
        if (!bVar8) goto LAB_0038fd2e;
        bVar8 = local_2c < 0x1999999a;
        if (local_2c == 0x19999999) {
          bVar8 = local_30 < 0x99999999;
        }
        if (!bVar8) {
          if ((local_2c == 0x19999999 && local_30 == 0x99999999) &&
             (uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                                ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20),
             uVar6 < 0x36)) {
            bVar8 = false;
          }
          else {
            bVar8 = true;
          }
          if (bVar8) goto code_r0x0038fcc4;
        }
        iVar5 = GenericStringStream<rapidjson::UTF8<char>>::Take
                          ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
        lVar3 = (ulonglong)local_30 * 10 + CONCAT44(local_2c * 10,iVar5 + -0x30);
        local_30 = (uint)lVar3;
        local_2c = (iVar5 + -0x30 >> 0x1f) + (int)((ulonglong)lVar3 >> 0x20);
      } while( true );
    }
    do {
      uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                        ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
      if ((uVar6 < 0x30) ||
         (uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                            ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20), 0x39 < uVar6)
         ) {
        bVar8 = false;
      }
      else {
        bVar8 = true;
      }
      if (!bVar8) break;
      bVar8 = local_2c < 0xccccccd;
      if (local_2c == 0xccccccc) {
        bVar8 = local_30 < 0xcccccccc;
      }
      if (!bVar8) {
        if ((local_2c == 0xccccccc && local_30 == 0xcccccccc) &&
           (uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                              ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20),
           uVar6 < 0x39)) {
          bVar8 = false;
        }
        else {
          bVar8 = true;
        }
        if (bVar8) goto code_r0x0038fc14;
      }
      iVar5 = GenericStringStream<rapidjson::UTF8<char>>::Take
                        ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
      lVar3 = (ulonglong)local_30 * 10 + CONCAT44(local_2c * 10,iVar5 + -0x30);
      local_30 = (uint)lVar3;
      local_2c = (iVar5 + -0x30 >> 0x1f) + (int)((ulonglong)lVar3 >> 0x20);
    } while( true );
  }
LAB_0038fd2e:
  if (bVar1) {
    local_28 = (double)__floatundidf(local_30,local_2c);
    while( true ) {
      uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                        ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
      if ((uVar6 < 0x30) ||
         (uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                            ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20), 0x39 < uVar6)
         ) {
        bVar8 = false;
      }
      else {
        bVar8 = true;
      }
      if (!bVar8) break;
      uVar6 = in_fpscr & 0xfffffff | (uint)(local_28 < 1e+307) << 0x1f;
      in_fpscr = uVar6 | (uint)NAN(local_28) << 0x1c;
      if ((byte)(uVar6 >> 0x1f) == ((byte)(in_fpscr >> 0x1c) & 1)) {
        *(char **)(this + 0x118) = "Number too big to store in double";
        uVar9 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                          ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
        *(undefined4 *)(this + 0x11c) = uVar9;
                    /* WARNING: Subroutine does not return */
        longjmp((__jmp_buf_tag *)(this + 0x18),1);
      }
      iVar5 = GenericStringStream<rapidjson::UTF8<char>>::Take
                        ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
      dVar10 = (double)VectorSignedToFloat(iVar5 + -0x30,(byte)(in_fpscr >> 0x16) & 3);
      local_28 = local_28 * 10.0 + dVar10;
    }
  }
  local_38 = 0;
  iVar5 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                    ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
  if (iVar5 == 0x2e) {
    if (!bVar1) {
      if (bVar4) {
        __floatundidf(local_30,local_2c);
      }
      else {
        VectorUnsignedToFloat(local_3c,(byte)(in_fpscr >> 0x16) & 3);
      }
      bVar1 = true;
    }
    GenericStringStream<rapidjson::UTF8<char>>::Take
              ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
    uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                      ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
    if ((uVar6 < 0x30) ||
       (uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                          ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20), 0x39 < uVar6))
    {
      bVar8 = false;
    }
    else {
      bVar8 = true;
    }
    if (!bVar8) {
      *(char **)(this + 0x118) = "At least one digit in fraction part";
      uVar9 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                        ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
      *(undefined4 *)(this + 0x11c) = uVar9;
                    /* WARNING: Subroutine does not return */
      longjmp((__jmp_buf_tag *)(this + 0x18),1);
    }
    iVar5 = GenericStringStream<rapidjson::UTF8<char>>::Take
                      ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
    VectorSignedToFloat(iVar5 + -0x30,(byte)(in_fpscr >> 0x16) & 3);
    local_38 = -1;
    while( true ) {
      uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                        ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
      if ((uVar6 < 0x30) ||
         (uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                            ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20), 0x39 < uVar6)
         ) {
        bVar8 = false;
      }
      else {
        bVar8 = true;
      }
      if (!bVar8) break;
      if (-0x10 < local_38) {
        iVar5 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                          ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
        VectorSignedToFloat(iVar5 + -0x30,(byte)(in_fpscr >> 0x16) & 3);
        local_38 = local_38 + -1;
      }
      GenericStringStream<rapidjson::UTF8<char>>::Take
                ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
    }
  }
  local_34 = 0;
  uVar11 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                     ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
  uVar9 = (undefined4)((ulonglong)uVar11 >> 0x20);
  if ((int)uVar11 != 0x65) {
    uVar11 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                       ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
    uVar9 = (undefined4)((ulonglong)uVar11 >> 0x20);
    if ((int)uVar11 != 0x45) {
      bVar8 = false;
      goto LAB_0038ff3a;
    }
  }
  bVar8 = true;
LAB_0038ff3a:
  if (!bVar8) {
LAB_003900d0:
    if (bVar1) {
      uVar9 = internal::Pow10(local_38 + local_34);
      GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
      ::Double((double)CONCAT44(extraout_s1,uVar9));
    }
    else if (bVar4) {
      if (bVar7) {
        GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
        ::Int64(CONCAT44(uVar9,param_2));
      }
      else {
        GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
        ::Uint64(CONCAT44(uVar9,param_2));
      }
    }
    else if (bVar7) {
      GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
      ::Int((GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
             *)param_2,-local_3c);
    }
    else {
      GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
      ::Uint((GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *)param_2,local_3c);
    }
    *(undefined4 *)param_1 = local_20;
    *(undefined4 *)(param_1 + 4) = uStack_1c;
    return;
  }
  if (!bVar1) {
    if (bVar4) {
      __floatundidf(local_30,local_2c);
    }
    else {
      VectorUnsignedToFloat(local_3c,(byte)(in_fpscr >> 0x16) & 3);
    }
    bVar1 = true;
  }
  GenericStringStream<rapidjson::UTF8<char>>::Take
            ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
  bVar8 = false;
  iVar5 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                    ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
  if (iVar5 == 0x2b) {
    GenericStringStream<rapidjson::UTF8<char>>::Take
              ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
  }
  else {
    iVar5 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                      ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
    if (iVar5 == 0x2d) {
      GenericStringStream<rapidjson::UTF8<char>>::Take
                ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
      bVar8 = true;
    }
  }
  uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                    ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
  if ((uVar6 < 0x30) ||
     (uVar6 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                        ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20), 0x39 < uVar6)) {
    bVar2 = false;
  }
  else {
    bVar2 = true;
  }
  if (!bVar2) {
    *(char **)(this + 0x118) = "At least one digit in exponent";
    uVar9 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                      ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
    *(undefined4 *)(this + 0x11c) = uVar9;
                    /* WARNING: Subroutine does not return */
    longjmp((__jmp_buf_tag *)(this + 0x18),1);
  }
  local_34 = GenericStringStream<rapidjson::UTF8<char>>::Take
                       ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
  local_34 = local_34 + -0x30;
  do {
    uVar11 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                       ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
    uVar9 = (undefined4)((ulonglong)uVar11 >> 0x20);
    if ((uint)uVar11 < 0x30) {
LAB_00390094:
      bVar2 = false;
    }
    else {
      uVar11 = GenericStringStream<rapidjson::UTF8<char>>::Peek
                         ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
      uVar9 = (undefined4)((ulonglong)uVar11 >> 0x20);
      if (0x39 < (uint)uVar11) goto LAB_00390094;
      bVar2 = true;
    }
    if (!bVar2) {
      if (bVar8) {
        local_34 = -local_34;
      }
      goto LAB_003900d0;
    }
    iVar5 = GenericStringStream<rapidjson::UTF8<char>>::Take
                      ((GenericStringStream<rapidjson::UTF8<char>> *)&local_20);
    local_34 = iVar5 + -0x30 + local_34 * 10;
    if (0x134 < local_34) {
      *(char **)(this + 0x118) = "Number too big to store in double";
      uVar9 = GenericStringStream<rapidjson::UTF8<char>>::Tell
                        ((GenericStringStream<rapidjson::UTF8<char>> *)param_1);
      *(undefined4 *)(this + 0x11c) = uVar9;
                    /* WARNING: Subroutine does not return */
      longjmp((__jmp_buf_tag *)(this + 0x18),1);
    }
  } while( true );
code_r0x0038fb2a:
  bVar4 = true;
  goto LAB_0038fb9e;
code_r0x0038faa6:
  bVar4 = true;
  goto LAB_0038fb9e;
code_r0x0038fcc4:
  bVar1 = true;
  goto LAB_0038fd2e;
code_r0x0038fc14:
  bVar1 = true;
  goto LAB_0038fd2e;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetArrayRaw  @ 0x390180
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::SetArrayRaw(rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >*, unsigned int,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>&) */

void __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
SetArrayRaw(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *this,GenericValue *param_1,uint param_2,MemoryPoolAllocator *param_3)

{
  undefined4 uVar1;
  
  *(undefined4 *)(this + 0xc) = 4;
  uVar1 = MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc
                    ((MemoryPoolAllocator<rapidjson::CrtAllocator> *)param_3,param_2 << 4);
  *(undefined4 *)this = uVar1;
  memcpy(*(void **)this,param_1,param_2 << 4);
  *(uint *)(this + 8) = param_2;
  *(undefined4 *)(this + 4) = *(undefined4 *)(this + 8);
  return;
}

// ---- rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Realloc  @ 0x3903a0
/* rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Realloc(void*, unsigned int, unsigned
   int) */

void * __thiscall
rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Realloc
          (MemoryPoolAllocator<rapidjson::CrtAllocator> *this,void *param_1,uint param_2,
          uint param_3)

{
  void *__dest;
  uint uVar1;
  
  if (param_1 == (void *)0x0) {
    param_1 = (void *)Malloc(this,param_3);
  }
  else if (param_2 < param_3) {
    if (((void *)(*(int *)this + (*(int *)(*(int *)this + 4) - param_2) + 0xc) == param_1) &&
       (uVar1 = (param_3 - param_2) + 3 & 0xfffffffc,
       *(int *)(*(int *)this + 4) + uVar1 <= **(uint **)this)) {
      *(uint *)(*(int *)this + 4) = uVar1 + *(int *)(*(int *)this + 4);
    }
    else {
      __dest = (void *)Malloc(this,param_3);
      param_1 = memcpy(__dest,param_1,param_2);
    }
  }
  return param_1;
}

// ---- rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetAllocator  @ 0x39043c
/* rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::GetAllocator() */

undefined4 __thiscall
rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetAllocator
          (Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *this)

{
  return *(undefined4 *)this;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue  @ 0x39044c
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GenericValue(char const*, unsigned
   int, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>&) */

GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
__thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
GenericValue(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
             *this,char *param_1,uint param_2,MemoryPoolAllocator *param_3)

{
  SetStringRaw(this,param_1,param_2,param_3);
  return this;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue  @ 0x390470
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GenericValue(char const*, unsigned
   int) */

GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
__thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
GenericValue(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
             *this,char *param_1,uint param_2)

{
  *(char **)(this + 0xc) = "2_PS7_DpOS8_";
  *(char **)this = param_1;
  *(uint *)(this + 4) = param_2;
  return this;
}

// ---- rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Null  @ 0x390498
/* rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Null() */

void __thiscall
rapidjson::
GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Null
          (GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this)

{
  GenericValue *pGVar1;
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  *this_00;
  
  pGVar1 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
           Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                     ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)
                      (this + 0x10),1);
  this_00 = operator_new(0x10,pGVar1);
  if (this_00 !=
      (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
      )0x0) {
    GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
    GenericValue(this_00);
  }
  return;
}

// ---- rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Bool  @ 0x3904c8
/* rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Bool(bool) */

void __thiscall
rapidjson::
GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Bool
          (GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,bool param_1)

{
  GenericValue *pGVar1;
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  *this_00;
  
  pGVar1 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
           Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                     ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)
                      (this + 0x10),1);
  this_00 = operator_new(0x10,pGVar1);
  if (this_00 !=
      (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
      )0x0) {
    GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
    GenericValue(this_00,param_1);
  }
  return;
}

// ---- rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Double  @ 0x390510
/* rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Double(double) */

void rapidjson::
     GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
     ::Double(double param_1)

{
  int in_r0;
  GenericValue *pGVar1;
  void *pvVar2;
  double extraout_d0;
  
  pGVar1 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
           Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                     ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)
                      (in_r0 + 0x10),1);
  pvVar2 = operator_new(0x10,pGVar1);
  if (pvVar2 != (void *)0x0) {
    GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
    GenericValue(extraout_d0);
  }
  return;
}

// ---- rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Int64  @ 0x390554
/* rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Int64(long long) */

void rapidjson::
     GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
     ::Int64(longlong param_1)

{
  GenericValue *pGVar1;
  void *pvVar2;
  undefined4 extraout_r1;
  
  pGVar1 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
           Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                     ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)
                      ((int)param_1 + 0x10),1);
  pvVar2 = operator_new(0x10,pGVar1);
  if (pvVar2 != (void *)0x0) {
    GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
    GenericValue(CONCAT44(extraout_r1,pvVar2));
  }
  return;
}

// ---- rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Uint64  @ 0x390598
/* rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Uint64(unsigned long long) */

void rapidjson::
     GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
     ::Uint64(ulonglong param_1)

{
  GenericValue *pGVar1;
  void *pvVar2;
  undefined4 extraout_r1;
  
  pGVar1 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
           Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                     ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)
                      ((int)param_1 + 0x10),1);
  pvVar2 = operator_new(0x10,pGVar1);
  if (pvVar2 != (void *)0x0) {
    GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
    GenericValue(CONCAT44(extraout_r1,pvVar2));
  }
  return;
}

// ---- rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Int  @ 0x3905dc
/* rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Int(int) */

void __thiscall
rapidjson::
GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Int
          (GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,int param_1)

{
  GenericValue *pGVar1;
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  *this_00;
  
  pGVar1 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
           Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                     ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)
                      (this + 0x10),1);
  this_00 = operator_new(0x10,pGVar1);
  if (this_00 !=
      (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
      )0x0) {
    GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
    GenericValue(this_00,param_1);
  }
  return;
}

// ---- rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Uint  @ 0x39061c
/* rapidjson::GenericDocument<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Uint(unsigned int) */

void __thiscall
rapidjson::
GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Uint
          (GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,uint param_1)

{
  GenericValue *pGVar1;
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  *this_00;
  
  pGVar1 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
           Push<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                     ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)
                      (this + 0x10),1);
  this_00 = operator_new(0x10,pGVar1);
  if (this_00 !=
      (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
      )0x0) {
    GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
    GenericValue(this_00,param_1);
  }
  return;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetStringRaw  @ 0x3906e4
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::SetStringRaw(char const*, unsigned
   int, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>&) */

void __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
SetStringRaw(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
             *this,char *param_1,uint param_2,MemoryPoolAllocator *param_3)

{
  undefined4 uVar1;
  
  *(undefined **)(this + 0xc) = &DAT_00300005;
  uVar1 = MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc
                    ((MemoryPoolAllocator<rapidjson::CrtAllocator> *)param_3,param_2 + 1);
  *(undefined4 *)this = uVar1;
  *(uint *)(this + 4) = param_2;
  memcpy(*(void **)this,param_1,param_2);
  *(undefined1 *)(param_2 + *(int *)this) = 0;
  return;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue  @ 0x390734
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GenericValue(bool) */

GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
__thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
GenericValue(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
             *this,bool param_1)

{
  undefined4 uVar1;
  
  if (param_1) {
    uVar1 = 0x102;
  }
  else {
    uVar1 = 0x101;
  }
  *(undefined4 *)(this + 0xc) = uVar1;
  return this;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue  @ 0x39075c
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GenericValue(double) */

undefined4 *
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
GenericValue(double param_1)

{
  undefined4 *in_r0;
  undefined4 in_r2;
  undefined4 in_r3;
  
  in_r0[3] = 0x4206;
  *in_r0 = in_r2;
  in_r0[1] = in_r3;
  return in_r0;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue  @ 0x390780
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GenericValue(long long) */

uint * rapidjson::
       GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
       GenericValue(longlong param_1)

{
  uint *puVar1;
  uint in_r2;
  uint in_r3;
  
  puVar1 = (uint *)param_1;
  puVar1[3] = 0x1206;
  *puVar1 = in_r2;
  puVar1[1] = in_r3;
  if ((int)in_r3 < 0) {
    if ((int)((in_r3 + 1) - (uint)(in_r2 < 0x80000000)) < 0 ==
        (SBORROW4(in_r3,-1) != SBORROW4(in_r3 + 1,(uint)(in_r2 < 0x80000000)))) {
      puVar1[3] = puVar1[3] | 0x400;
    }
  }
  else {
    puVar1[3] = puVar1[3] | 0x2206;
    if (in_r3 == 0) {
      puVar1[3] = puVar1[3] | 0x800;
    }
    if ((in_r2 & 0x80000000) == 0 && in_r3 == 0) {
      puVar1[3] = puVar1[3] | 0x400;
    }
  }
  return puVar1;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue  @ 0x390828
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GenericValue(unsigned long long) */

uint * rapidjson::
       GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
       GenericValue(ulonglong param_1)

{
  uint *puVar1;
  uint in_r2;
  uint in_r3;
  
  puVar1 = (uint *)param_1;
  puVar1[3] = 0x2206;
  *puVar1 = in_r2;
  puVar1[1] = in_r3;
  if (-1 < (int)in_r3) {
    puVar1[3] = puVar1[3] | 0x1000;
  }
  if (in_r3 == 0) {
    puVar1[3] = puVar1[3] | 0x800;
  }
  if ((in_r2 & 0x80000000) == 0 && in_r3 == 0) {
    puVar1[3] = puVar1[3] | 0x400;
  }
  return puVar1;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue  @ 0x3908b0
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GenericValue(int) */

GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
__thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
GenericValue(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
             *this,int param_1)

{
  *(undefined4 *)(this + 0xc) = 0x1606;
  *(int *)this = param_1;
  *(int *)(this + 4) = param_1 >> 0x1f;
  if (-1 < param_1) {
    *(uint *)(this + 0xc) = *(uint *)(this + 0xc) | 0x2800;
  }
  return this;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue  @ 0x3908e8
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GenericValue(unsigned int) */

GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
__thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
GenericValue(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
             *this,uint param_1)

{
  *(undefined4 *)(this + 0xc) = 0x3a06;
  *(uint *)this = param_1;
  *(undefined4 *)(this + 4) = 0;
  if (-1 < (int)param_1) {
    *(uint *)(this + 0xc) = *(uint *)(this + 0xc) | 0x1400;
  }
  return this;
}

// ---- rapidjson::CrtAllocator::Realloc  @ 0x432194
/* rapidjson::CrtAllocator::Realloc(void*, unsigned int, unsigned int) */

void * __thiscall
rapidjson::CrtAllocator::Realloc(CrtAllocator *this,void *param_1,uint param_2,uint param_3)

{
  void *pvVar1;
  
  pvVar1 = realloc(param_1,param_3);
  return pvVar1;
}

// ---- rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::~GenericStringBuffer  @ 0x43255c
/* rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,
   rapidjson::CrtAllocator>::~GenericStringBuffer() */

GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> * __thiscall
rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::~GenericStringBuffer
          (GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> *this)

{
  internal::Stack<rapidjson::CrtAllocator>::~Stack((Stack<rapidjson::CrtAllocator> *)this);
  return this;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~Writer  @ 0x432574
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::~Writer() */

Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
* __thiscall
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::~Writer(Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *this)

{
  internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::~Stack
            ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)(this + 4));
  return this;
}

// ---- rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<char>  @ 0x4332f8
/* char* rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<char>(unsigned int) */

char * __thiscall
rapidjson::internal::Stack<rapidjson::CrtAllocator>::Push<char>
          (Stack<rapidjson::CrtAllocator> *this,uint param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  char *pcVar5;
  uint local_18;
  
  if (*(uint *)(this + 0x10) <= *(int *)(this + 0xc) + param_1) {
    iVar4 = *(int *)(this + 0x14);
    iVar1 = GetSize(this);
    iVar2 = GetSize(this);
    local_18 = iVar4 << 1;
    if ((uint)(iVar4 << 1) < param_1 + iVar2) {
      local_18 = param_1 + iVar2;
    }
    uVar3 = CrtAllocator::Realloc
                      (*(CrtAllocator **)this,*(void **)(this + 8),*(uint *)(this + 0x14),local_18);
    *(undefined4 *)(this + 8) = uVar3;
    *(uint *)(this + 0x14) = local_18;
    *(int *)(this + 0xc) = *(int *)(this + 8) + iVar1;
    *(int *)(this + 0x10) = *(int *)(this + 8) + *(int *)(this + 0x14);
  }
  pcVar5 = *(char **)(this + 0xc);
  *(uint *)(this + 0xc) = *(int *)(this + 0xc) + param_1;
  return pcVar5;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetObject  @ 0x433458
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::SetObject() */

GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
__thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
SetObject(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *this)

{
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  *pGVar1;
  
  ~GenericValue(this);
  pGVar1 = operator_new(0x10,this);
  if (pGVar1 != (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                 *)0x0) {
    GenericValue(pGVar1,3);
  }
  return this;
}

// ---- rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::GenericStringBuffer  @ 0x433494
/* rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,
   rapidjson::CrtAllocator>::GenericStringBuffer(rapidjson::CrtAllocator*, unsigned int) */

GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> * __thiscall
rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::GenericStringBuffer
          (GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> *this,
          CrtAllocator *param_1,uint param_2)

{
  internal::Stack<rapidjson::CrtAllocator>::Stack
            ((Stack<rapidjson::CrtAllocator> *)this,param_1,param_2);
  return this;
}

// ---- rapidjson::internal::Stack<rapidjson::CrtAllocator>::~Stack  @ 0x4334b4
/* rapidjson::internal::Stack<rapidjson::CrtAllocator>::~Stack() */

Stack<rapidjson::CrtAllocator> * __thiscall
rapidjson::internal::Stack<rapidjson::CrtAllocator>::~Stack(Stack<rapidjson::CrtAllocator> *this)

{
  CrtAllocator::Free(*(void **)(this + 8));
  operator_delete(*(void **)(this + 4));
  return this;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Writer  @ 0x4334d8
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::Writer(rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>&,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>*, unsigned int) */

Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
* __thiscall
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::Writer(Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
         *this,GenericStringBuffer *param_1,MemoryPoolAllocator *param_2,uint param_3)

{
  *(GenericStringBuffer **)this = param_1;
  internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Stack
            ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)(this + 4),param_2,
             param_3 << 3);
  return this;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>  @ 0x433508
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> > const&
   rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,
   rapidjson::CrtAllocator>, rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >
   >(rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,
   rapidjson::CrtAllocator>, rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >&) const */

GenericValue * __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
          (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,Writer *param_1)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 extraout_s0;
  undefined4 extraout_s1;
  uint *local_10;
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  *local_c;
  
  uVar1 = GetType(this);
  switch(uVar1) {
  case 0:
    Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
    ::Null((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)param_1);
    break;
  case 1:
    Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
    ::Bool((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)param_1,false);
    break;
  case 2:
    Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
    ::Bool((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *)param_1,true);
    break;
  case 3:
    Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
    ::StartObject((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                   *)param_1);
    for (local_10 = *(uint **)this; (uint *)(*(int *)this + *(int *)(this + 4) * 0x20) != local_10;
        local_10 = local_10 + 8) {
      Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
      ::String((char *)param_1,*local_10,SUB41(local_10[1],0));
      Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                ((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  *)(local_10 + 4),param_1);
    }
    Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
    ::EndObject((uint)param_1);
    break;
  case 4:
    Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
    ::StartArray((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  *)param_1);
    for (local_c = *(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                     **)this;
        (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
         *)(*(int *)this + *(int *)(this + 4) * 0x10) != local_c; local_c = local_c + 0x10) {
      Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>
                (local_c,param_1);
    }
    Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
    ::EndArray((uint)param_1);
    break;
  case 5:
    Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
    ::String((char *)param_1,*(uint *)this,SUB41(*(undefined4 *)(this + 4),0));
    break;
  case 6:
    iVar2 = IsInt(this);
    if (iVar2 == 0) {
      iVar2 = IsUint(this);
      if (iVar2 == 0) {
        iVar2 = IsInt64(this);
        if (iVar2 == 0) {
          iVar2 = IsUint64(this);
          if (iVar2 == 0) {
            Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::Double((double)CONCAT44(extraout_s1,extraout_s0));
          }
          else {
            Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            ::Uint64(CONCAT44(this,param_1));
          }
        }
        else {
          Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          ::Int64(CONCAT44(this,param_1));
        }
      }
      else {
        Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
        ::Uint((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                *)param_1,*(uint *)this);
      }
    }
    else {
      Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
      ::Int((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
             *)param_1,*(int *)this);
    }
  }
  return (GenericValue *)this;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::StartObject  @ 0x433688
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::StartObject()
    */

Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
* __thiscall
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::StartObject(Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *this)

{
  Level *pLVar1;
  
  Prefix(this,3);
  pLVar1 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
           Push<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Level>
                     ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)(this + 4),1
                     );
  pLVar1 = operator_new(8,pLVar1);
  if (pLVar1 != (Level *)0x0) {
    Level::Level(pLVar1,false);
  }
  WriteStartObject(this);
  return this;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String  @ 0x4336d8
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::String(char
   const*) */

undefined4 __thiscall
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::String(Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
         *this,char *param_1)

{
  uint uVar1;
  undefined4 uVar2;
  
  uVar1 = internal::StrLen<char>(param_1);
  uVar2 = String((char *)this,(uint)param_1,SUB41(uVar1,0));
  return uVar2;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Int  @ 0x433700
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Int(int) */

Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
* __thiscall
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::Int(Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
      *this,int param_1)

{
  Prefix(this,6);
  WriteInt(this,param_1);
  return this;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Bool  @ 0x433724
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Bool(bool) */

Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
* __thiscall
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::Bool(Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
       *this,bool param_1)

{
  undefined4 uVar1;
  
  if (param_1) {
    uVar1 = 2;
  }
  else {
    uVar1 = 1;
  }
  Prefix(this,uVar1);
  WriteBool(this,param_1);
  return this;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Double  @ 0x43375c
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Double(double)
    */

undefined4
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::Double(double param_1)

{
  undefined4 in_r0;
  undefined4 uVar1;
  undefined4 extraout_s1;
  
  uVar1 = Prefix(SUB84(param_1,0),in_r0,6);
  WriteDouble((double)CONCAT44(extraout_s1,uVar1));
  return in_r0;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::EndObject  @ 0x433784
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::EndObject(unsigned int) */

uint rapidjson::
     Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
     ::EndObject(uint param_1)

{
  internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  Pop<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Level>
            ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)(param_1 + 4),1);
  WriteEndObject((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  *)param_1);
  return param_1;
}

// ---- rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::GetString  @ 0x4337a8
/* rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>::GetString() const
    */

char * __thiscall
rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::GetString
          (GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> *this)

{
  char *pcVar1;
  
  pcVar1 = internal::Stack<rapidjson::CrtAllocator>::Push<char>
                     ((Stack<rapidjson::CrtAllocator> *)this,1);
  *pcVar1 = '\0';
  internal::Stack<rapidjson::CrtAllocator>::Pop<char>((Stack<rapidjson::CrtAllocator> *)this,1);
  pcVar1 = internal::Stack<rapidjson::CrtAllocator>::Bottom<char>
                     ((Stack<rapidjson::CrtAllocator> *)this);
  return pcVar1;
}

// ---- rapidjson::internal::Stack<rapidjson::CrtAllocator>::GetSize  @ 0x4337dc
/* rapidjson::internal::Stack<rapidjson::CrtAllocator>::GetSize() const */

int __thiscall
rapidjson::internal::Stack<rapidjson::CrtAllocator>::GetSize(Stack<rapidjson::CrtAllocator> *this)

{
  return *(int *)(this + 0xc) - *(int *)(this + 8);
}

// ---- rapidjson::internal::Stack<rapidjson::CrtAllocator>::Stack  @ 0x4337f4
/* rapidjson::internal::Stack<rapidjson::CrtAllocator>::Stack(rapidjson::CrtAllocator*, unsigned
   int) */

Stack<rapidjson::CrtAllocator> * __thiscall
rapidjson::internal::Stack<rapidjson::CrtAllocator>::Stack
          (Stack<rapidjson::CrtAllocator> *this,CrtAllocator *param_1,uint param_2)

{
  void *pvVar1;
  undefined4 uVar2;
  
  *(CrtAllocator **)this = param_1;
  *(undefined4 *)(this + 4) = 0;
  *(undefined4 *)(this + 8) = 0;
  *(undefined4 *)(this + 0xc) = 0;
  *(undefined4 *)(this + 0x10) = 0;
  *(uint *)(this + 0x14) = param_2;
  if (*(int *)this == 0) {
    pvVar1 = operator_new(1);
    *(void **)this = pvVar1;
    *(undefined4 *)(this + 4) = *(undefined4 *)this;
  }
  uVar2 = CrtAllocator::Malloc(*(CrtAllocator **)this,*(uint *)(this + 0x14));
  *(undefined4 *)(this + 8) = uVar2;
  *(undefined4 *)(this + 0xc) = *(undefined4 *)(this + 8);
  *(int *)(this + 0x10) = *(int *)(this + 8) + *(int *)(this + 0x14);
  return this;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetType  @ 0x433874
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::GetType() const */

uint __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetType
          (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this)

{
  return *(uint *)(this + 0xc) & 0xff;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Null  @ 0x433884
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Null() */

Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
* __thiscall
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::Null(Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
       *this)

{
  Prefix(this,0);
  WriteNull(this);
  return this;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::String  @ 0x4338a4
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::String(char
   const*, unsigned int, bool) */

char * rapidjson::
       Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
       ::String(char *param_1,uint param_2,bool param_3)

{
  Prefix(param_1,5);
  WriteString((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
               *)param_1,(char *)param_2,(uint)param_3);
  return param_1;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::StartArray  @ 0x4338d0
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::StartArray() */

Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
* __thiscall
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::StartArray(Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
             *this)

{
  Level *pLVar1;
  
  Prefix(this,4);
  pLVar1 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
           Push<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Level>
                     ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)(this + 4),1
                     );
  pLVar1 = operator_new(8,pLVar1);
  if (pLVar1 != (Level *)0x0) {
    Level::Level(pLVar1,true);
  }
  WriteStartArray(this);
  return this;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::EndArray  @ 0x433920
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::EndArray(unsigned int) */

uint rapidjson::
     Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
     ::EndArray(uint param_1)

{
  internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
  Pop<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Level>
            ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)(param_1 + 4),1);
  WriteEndArray((Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                 *)param_1);
  return param_1;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsInt  @ 0x433944
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::IsInt() const */

bool __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsInt
          (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this)

{
  return (*(uint *)(this + 0xc) & 0x400) != 0;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsUint  @ 0x433960
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::IsUint() const */

bool __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsUint
          (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this)

{
  return (*(uint *)(this + 0xc) & 0x800) != 0;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Uint  @ 0x43397c
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Uint(unsigned
   int) */

Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
* __thiscall
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::Uint(Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
       *this,uint param_1)

{
  Prefix(this,6);
  WriteUint(this,param_1);
  return this;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsInt64  @ 0x4339a0
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::IsInt64() const */

bool __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsInt64
          (GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this)

{
  return (*(uint *)(this + 0xc) & 0x1000) != 0;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Int64  @ 0x4339bc
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Int64(long
   long) */

undefined4
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::Int64(longlong param_1)

{
  undefined4 uVar1;
  undefined4 extraout_r1;
  
  uVar1 = (undefined4)param_1;
  Prefix(uVar1,6);
  WriteInt64(CONCAT44(extraout_r1,uVar1));
  return uVar1;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::IsUint64  @ 0x4339e4
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::IsUint64() const */

bool __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
IsUint64(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
         *this)

{
  return (*(uint *)(this + 0xc) & 0x2000) != 0;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Uint64  @ 0x433a00
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Uint64(unsigned
   long long) */

undefined4
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::Uint64(ulonglong param_1)

{
  undefined4 uVar1;
  undefined4 extraout_r1;
  
  uVar1 = (undefined4)param_1;
  Prefix(uVar1,6);
  WriteUint64(CONCAT44(extraout_r1,uVar1));
  return uVar1;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Prefix  @ 0x433a28
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::Prefix(rapidjson::Type) */

void rapidjson::
     Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
     ::Prefix(undefined4 *param_1)

{
  int iVar1;
  Level *pLVar2;
  char cVar3;
  
  iVar1 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GetSize
                    ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)(param_1 + 1)
                    );
  if (iVar1 != 0) {
    pLVar2 = internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
             Top<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Level>
                       ((Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *)
                        (param_1 + 1));
    if (*(int *)(pLVar2 + 4) != 0) {
      if (*pLVar2 == (Level)0x0) {
        if ((*(uint *)(pLVar2 + 4) & 1) == 0) {
          cVar3 = ',';
        }
        else {
          cVar3 = ':';
        }
        GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
                  ((GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> *)*param_1,
                   cVar3);
      }
      else {
        GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
                  ((GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> *)*param_1,
                   ',');
      }
    }
    *(int *)(pLVar2 + 4) = *(int *)(pLVar2 + 4) + 1;
  }
  return;
}

// ---- rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Push<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Level>  @ 0x433ab0
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Level*
   rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::Push<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,
   rapidjson::CrtAllocator>, rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Level>(unsigned int) */

Level * __thiscall
rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
Push<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Level>
          (Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *this,uint param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  Level *pLVar6;
  uint local_18;
  
  if (*(uint *)(this + 0x10) <= *(int *)(this + 0xc) + param_1 * 8) {
    iVar4 = *(int *)(this + 0x14);
    iVar1 = GetSize(this);
    iVar2 = GetSize(this);
    uVar5 = param_1 * 8 + iVar2;
    local_18 = iVar4 << 1;
    if ((uint)(iVar4 << 1) < uVar5) {
      local_18 = uVar5;
    }
    uVar3 = MemoryPoolAllocator<rapidjson::CrtAllocator>::Realloc
                      (*(MemoryPoolAllocator<rapidjson::CrtAllocator> **)this,*(void **)(this + 8),
                       *(uint *)(this + 0x14),local_18);
    *(undefined4 *)(this + 8) = uVar3;
    *(uint *)(this + 0x14) = local_18;
    *(int *)(this + 0xc) = *(int *)(this + 8) + iVar1;
    *(int *)(this + 0x10) = *(int *)(this + 8) + *(int *)(this + 0x14);
  }
  pLVar6 = *(Level **)(this + 0xc);
  *(uint *)(this + 0xc) = *(int *)(this + 0xc) + param_1 * 8;
  return pLVar6;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Level::Level  @ 0x433b54
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::Level::Level(bool) */

Level * __thiscall
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::Level::Level(Level *this,bool param_1)

{
  *this = (Level)param_1;
  *(undefined4 *)(this + 4) = 0;
  return this;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::WriteStartObject  @ 0x433b74
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::WriteStartObject() */

void __thiscall
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::WriteStartObject(Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                   *this)

{
  GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
            (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'{');
  return;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::WriteInt  @ 0x433b8c
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::WriteInt(int)
    */

void __thiscall
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::WriteInt(Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
           *this,int param_1)

{
  undefined4 local_10;
  
  local_10 = param_1;
  if (param_1 < 0) {
    GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
              (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'-');
    local_10 = -param_1;
  }
  WriteUint(this,local_10);
  return;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::WriteBool  @ 0x433bbc
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::WriteBool(bool)
    */

void __thiscall
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::WriteBool(Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *this,bool param_1)

{
  if (param_1) {
    GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
              (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'t');
    GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
              (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'r');
    GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
              (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'u');
    GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
              (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'e');
  }
  else {
    GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
              (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'f');
    GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
              (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'a');
    GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
              (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'l');
    GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
              (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'s');
    GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
              (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'e');
  }
  return;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::WriteDouble  @ 0x433c44
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::WriteDouble(double) */

void rapidjson::
     Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
     ::WriteDouble(double param_1)

{
  undefined4 *in_r0;
  int iVar1;
  int local_78;
  char acStack_70 [100];
  int local_c;
  
  local_c = __stack_chk_guard;
  iVar1 = snprintf(acStack_70,100,"%g",SUB84(param_1,0));
  for (local_78 = 0; local_78 < iVar1; local_78 = local_78 + 1) {
    GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
              ((GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> *)*in_r0,
               acStack_70[local_78]);
  }
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Pop<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Level>  @ 0x433cc0
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Level*
   rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::Pop<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,
   rapidjson::CrtAllocator>, rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Level>(unsigned int) */

Level * __thiscall
rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
Pop<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Level>
          (Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *this,uint param_1)

{
  *(uint *)(this + 0xc) = *(int *)(this + 0xc) + param_1 * -8;
  return *(Level **)(this + 0xc);
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::WriteEndObject  @ 0x433ce0
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::WriteEndObject() */

void __thiscall
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::WriteEndObject(Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                 *this)

{
  GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
            (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'}');
  return;
}

// ---- rapidjson::internal::Stack<rapidjson::CrtAllocator>::Pop<char>  @ 0x433cf8
/* char* rapidjson::internal::Stack<rapidjson::CrtAllocator>::Pop<char>(unsigned int) */

char * __thiscall
rapidjson::internal::Stack<rapidjson::CrtAllocator>::Pop<char>
          (Stack<rapidjson::CrtAllocator> *this,uint param_1)

{
  *(uint *)(this + 0xc) = *(int *)(this + 0xc) - param_1;
  return *(char **)(this + 0xc);
}

// ---- rapidjson::internal::Stack<rapidjson::CrtAllocator>::Bottom<char>  @ 0x433d18
/* char* rapidjson::internal::Stack<rapidjson::CrtAllocator>::Bottom<char>() */

char * __thiscall
rapidjson::internal::Stack<rapidjson::CrtAllocator>::Bottom<char>
          (Stack<rapidjson::CrtAllocator> *this)

{
  return *(char **)(this + 8);
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::WriteNull  @ 0x433d28
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::WriteNull() */

void __thiscall
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::WriteNull(Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *this)

{
  GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
            (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'n');
  GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
            (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'u');
  GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
            (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'l');
  GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
            (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'l');
  return;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::WriteString  @ 0x433d64
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::WriteString(char const*, unsigned int) */

void __thiscall
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::WriteString(Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
              *this,char *param_1,uint param_2)

{
  byte *local_c;
  
  GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
            (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'\"');
  for (local_c = (byte *)param_1; (byte *)(param_1 + param_2) != local_c; local_c = local_c + 1) {
    if ("uuuuuuuubtnufruuuuuuuuuuuuuuuuuu"[*local_c] == '\0') {
      GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
                (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,
                 *local_c);
    }
    else {
      GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
                (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'\\');
      GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
                (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,
                 "uuuuuuuubtnufruuuuuuuuuuuuuuuuuu"[*local_c]);
      if ("uuuuuuuubtnufruuuuuuuuuuuuuuuuuu"[*local_c] == 'u') {
        GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
                  (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'0')
        ;
        GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
                  (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'0')
        ;
        GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
                  (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,
                   "0123456789ABCDEF"[(int)(uint)*local_c >> 4]);
        GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
                  (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,
                   "0123456789ABCDEF"[*local_c & 0xf]);
      }
    }
  }
  GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
            (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'\"');
  return;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::WriteStartArray  @ 0x433e4c
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::WriteStartArray() */

void __thiscall
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::WriteStartArray(Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                  *this)

{
  GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
            (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,'[');
  return;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::WriteEndArray  @ 0x433e64
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::WriteEndArray()
    */

void __thiscall
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::WriteEndArray(Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
                *this)

{
  GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
            (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,']');
  return;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::WriteUint  @ 0x433e7c
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::WriteUint(unsigned int) */

void __thiscall
rapidjson::
Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
::WriteUint(Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
            *this,uint param_1)

{
  char *pcVar1;
  uint local_28;
  char *local_1c;
  char local_18 [12];
  int local_c;
  
  local_c = __stack_chk_guard;
  local_28 = param_1;
  local_1c = local_18;
  do {
    pcVar1 = local_1c + 1;
    *local_1c = (char)local_28 + (char)(local_28 / 10) * -10 + '0';
    local_28 = local_28 / 10;
    local_1c = pcVar1;
  } while (local_28 != 0);
  do {
    local_1c = local_1c + -1;
    GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
              (*(GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> **)this,
               *local_1c);
  } while (local_1c != local_18);
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::WriteInt64  @ 0x433f10
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::WriteInt64(long
   long) */

void rapidjson::
     Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
     ::WriteInt64(longlong param_1)

{
  int extraout_r1;
  int in_r3;
  
  if (in_r3 < 0) {
    GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
              ((GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> *)
               *(undefined4 *)param_1,'-');
    in_r3 = extraout_r1;
  }
  WriteUint64(CONCAT44(in_r3,(undefined4 *)param_1));
  return;
}

// ---- rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::WriteUint64  @ 0x433f50
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::WriteUint64(unsigned long long) */

void rapidjson::
     Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
     ::WriteUint64(ulonglong param_1)

{
  char extraout_r2;
  undefined4 in_r2;
  undefined4 in_r3;
  char *pcVar1;
  longlong lVar2;
  undefined4 local_40;
  undefined4 uStack_3c;
  char *local_2c;
  char local_28 [20];
  int local_14;
  
  lVar2 = CONCAT44(in_r3,in_r2);
  local_14 = __stack_chk_guard;
  local_2c = local_28;
  do {
    uStack_3c = (undefined4)((ulonglong)lVar2 >> 0x20);
    local_40 = (undefined4)lVar2;
    pcVar1 = local_2c + 1;
    __aeabi_uldivmod(local_40,uStack_3c,10,0);
    *local_2c = extraout_r2 + '0';
    lVar2 = __aeabi_uldivmod(local_40,uStack_3c,10,0);
    local_2c = pcVar1;
  } while (lVar2 != 0);
  do {
    local_2c = local_2c + -1;
    GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
              ((GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> *)
               *(undefined4 *)param_1,*local_2c);
  } while (local_2c != local_28);
  if (local_14 != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

// ---- rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Top<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Level>  @ 0x433fec
/* rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>,
   rapidjson::UTF8<char>, rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Level*
   rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::Top<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,
   rapidjson::CrtAllocator>, rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::Level>() */

Level * __thiscall
rapidjson::internal::Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
Top<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Level>
          (Stack<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *this)

{
  return (Level *)(*(int *)(this + 0xc) + -8);
}

// ---- rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put  @ 0x434000
/* rapidjson::GenericStringBuffer<rapidjson::UTF8<char>, rapidjson::CrtAllocator>::Put(char) */

void __thiscall
rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::Put
          (GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator> *this,char param_1)

{
  char *pcVar1;
  
  pcVar1 = internal::Stack<rapidjson::CrtAllocator>::Push<char>
                     ((Stack<rapidjson::CrtAllocator> *)this,1);
  *pcVar1 = param_1;
  return;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetString  @ 0x43faa0
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::SetString(char const*) */

undefined4 __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
SetString(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *this,char *param_1)

{
  uint uVar1;
  undefined4 uVar2;
  
  uVar1 = internal::StrLen<char>(param_1);
  uVar2 = SetString(this,param_1,uVar1);
  return uVar2;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::AddMember  @ 0x43fac4
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::AddMember(char const*,
   rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >&,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>&) */

undefined4 __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
AddMember(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *this,char *param_1,GenericValue *param_2,MemoryPoolAllocator *param_3)

{
  uint uVar1;
  undefined4 uVar2;
  GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
  aGStack_18 [16];
  
  uVar1 = internal::StrLen<char>(param_1);
  GenericValue(aGStack_18,param_1,uVar1);
  uVar2 = AddMember(this,(GenericValue *)aGStack_18,param_2,param_3);
  ~GenericValue(aGStack_18);
  return uVar2;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetString  @ 0x43fe24
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::SetString(char const*, unsigned int)
    */

GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
__thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
SetString(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *this,char *param_1,uint param_2)

{
  ~GenericValue(this);
  SetStringRaw(this,param_1,param_2);
  return this;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::AddMember  @ 0x43fe48
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>
   >::AddMember(rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >&,
   rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >&,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>&) */

GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>> *
__thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
AddMember(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
          *this,GenericValue *param_1,GenericValue *param_2,MemoryPoolAllocator *param_3)

{
  undefined4 uVar1;
  int iVar2;
  
  if (*(uint *)(this + 8) <= *(uint *)(this + 4)) {
    if (*(int *)(this + 8) == 0) {
      *(undefined4 *)(this + 8) = 0x10;
      uVar1 = MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc
                        ((MemoryPoolAllocator<rapidjson::CrtAllocator> *)param_3,
                         *(int *)(this + 8) << 5);
      *(undefined4 *)this = uVar1;
    }
    else {
      iVar2 = *(int *)(this + 8);
      *(int *)(this + 8) = *(int *)(this + 8) << 1;
      uVar1 = MemoryPoolAllocator<rapidjson::CrtAllocator>::Realloc
                        ((MemoryPoolAllocator<rapidjson::CrtAllocator> *)param_3,*(void **)this,
                         iVar2 << 5,*(int *)(this + 8) << 5);
      *(undefined4 *)this = uVar1;
    }
  }
  RawAssign((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
             *)(*(int *)(this + 4) * 0x20 + *(int *)this),param_1);
  RawAssign((GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
             *)(*(int *)(this + 4) * 0x20 + *(int *)this + 0x10),param_2);
  *(int *)(this + 4) = *(int *)(this + 4) + 1;
  return this;
}

// ---- rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetStringRaw  @ 0x4402f0
/* rapidjson::GenericValue<rapidjson::UTF8<char>,
   rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator> >::SetStringRaw(char const*, unsigned
   int) */

void __thiscall
rapidjson::
GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::
SetStringRaw(GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>
             *this,char *param_1,uint param_2)

{
  *(char **)(this + 0xc) = "2_PS7_DpOS8_";
  *(char **)this = param_1;
  *(uint *)(this + 4) = param_2;
  return;
}
