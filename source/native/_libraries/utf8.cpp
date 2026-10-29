// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 26 functions

// ---- utf8::exception::exception  @ 0x5e1630
/* utf8::exception::exception() */

exception * __thiscall utf8::exception::exception(exception *this)

{
  std::exception::exception((exception *)this);
  *(undefined ***)this = &PTR__exception_1_00936330;
  return this;
}

// ---- utf8::exception::~exception  @ 0x5e165c
/* WARNING: Removing unreachable block (ram,0x005e167e) */
/* utf8::exception::~exception() */

exception * __thiscall utf8::exception::~exception(exception *this)

{
  *(undefined ***)this = &PTR__exception_1_00936330;
  std::exception::~exception((exception *)this);
  return this;
}

// ---- utf8::exception::~exception  @ 0x5e1698
/* utf8::exception::~exception() */

exception * __thiscall utf8::exception::~exception(exception *this)

{
  ~exception(this);
  operator_delete(this);
  return this;
}

// ---- utf8::invalid_code_point::invalid_code_point  @ 0x5e16b4
/* utf8::invalid_code_point::invalid_code_point(unsigned int) */

invalid_code_point * __thiscall
utf8::invalid_code_point::invalid_code_point(invalid_code_point *this,uint param_1)

{
  exception::exception((exception *)this);
  *(undefined ***)this = &PTR__invalid_code_point_1_00936318;
  *(uint *)(this + 4) = param_1;
  return this;
}

// ---- utf8::invalid_code_point::what  @ 0x5e16e8
/* utf8::invalid_code_point::what() const */

char * utf8::invalid_code_point::what(void)

{
  return "Invalid code point";
}

// ---- utf8::not_enough_room::what  @ 0x5e16fc
/* utf8::not_enough_room::what() const */

char * utf8::not_enough_room::what(void)

{
  return "Not enough space";
}

// ---- utf8::not_enough_room::not_enough_room  @ 0x5e2aa0
/* utf8::not_enough_room::not_enough_room() */

not_enough_room * __thiscall utf8::not_enough_room::not_enough_room(not_enough_room *this)

{
  exception::exception((exception *)this);
  *(undefined ***)this = &PTR__not_enough_room_1_00936300;
  return this;
}

// ---- utf8::not_enough_room::~not_enough_room  @ 0x5e2acc
/* WARNING: Removing unreachable block (ram,0x005e2aee) */
/* utf8::not_enough_room::~not_enough_room() */

not_enough_room * __thiscall utf8::not_enough_room::~not_enough_room(not_enough_room *this)

{
  *(undefined ***)this = &PTR__not_enough_room_1_00936300;
  exception::~exception((exception *)this);
  return this;
}

// ---- utf8::not_enough_room::~not_enough_room  @ 0x5e2b08
/* utf8::not_enough_room::~not_enough_room() */

not_enough_room * __thiscall utf8::not_enough_room::~not_enough_room(not_enough_room *this)

{
  ~not_enough_room(this);
  operator_delete(this);
  return this;
}

// ---- utf8::replace_invalid<__gnu_cxx::__normal_iterator<char*,std::string>,std::back_insert_iterator<std::string>>  @ 0x5e2b24
/* std::back_insert_iterator<std::string > utf8::replace_invalid<__gnu_cxx::__normal_iterator<char*,
   std::string >, std::back_insert_iterator<std::string > >(__gnu_cxx::__normal_iterator<char*,
   std::string >, __gnu_cxx::__normal_iterator<char*, std::string >,
   std::back_insert_iterator<std::string >, unsigned int) */

undefined4
utf8::
replace_invalid<__gnu_cxx::__normal_iterator<char*,std::string>,std::back_insert_iterator<std::string>>
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  back_insert_iterator<std::string> *this;
  not_enough_room *this_00;
  char *pcVar2;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  local_2c = param_3;
  local_28 = param_2;
  local_24 = param_1;
  do {
    bVar1 = __gnu_cxx::operator!=((__normal_iterator *)&local_24,(__normal_iterator *)&local_28);
    if (!bVar1) {
      return local_2c;
    }
    local_20 = local_24;
    local_14 = internal::validate_next<__gnu_cxx::__normal_iterator<char*,std::string>>
                         (&local_24,local_28);
    switch(local_14) {
    case 0:
      local_1c = local_20;
      while (bVar1 = __gnu_cxx::operator!=
                               ((__normal_iterator *)&local_1c,(__normal_iterator *)&local_24),
            bVar1) {
        local_18 = std::back_insert_iterator<std::string>::operator++
                             ((back_insert_iterator<std::string> *)&local_2c,0);
        this = (back_insert_iterator<std::string> *)
               std::back_insert_iterator<std::string>::operator*
                         ((back_insert_iterator<std::string> *)&local_18);
        pcVar2 = (char *)__gnu_cxx::__normal_iterator<char*,std::string>::operator*
                                   ((__normal_iterator<char*,std::string> *)&local_1c);
        std::back_insert_iterator<std::string>::operator=(this,pcVar2);
        __gnu_cxx::__normal_iterator<char*,std::string>::operator++
                  ((__normal_iterator<char*,std::string> *)&local_1c);
      }
      break;
    case 1:
      this_00 = (not_enough_room *)__cxa_allocate_exception(4);
      *(undefined4 *)this_00 = 0;
      not_enough_room::not_enough_room(this_00);
                    /* WARNING: Subroutine does not return */
      __cxa_throw(this_00,&not_enough_room::typeinfo,0x5e2acd);
    case 2:
      local_2c = append<std::back_insert_iterator<std::string>>(param_4,local_2c);
      __gnu_cxx::__normal_iterator<char*,std::string>::operator++
                ((__normal_iterator<char*,std::string> *)&local_24);
      break;
    case 3:
    case 4:
    case 5:
      local_2c = append<std::back_insert_iterator<std::string>>(param_4,local_2c);
      __gnu_cxx::__normal_iterator<char*,std::string>::operator++
                ((__normal_iterator<char*,std::string> *)&local_24);
      do {
        bVar1 = __gnu_cxx::operator!=((__normal_iterator *)&local_24,(__normal_iterator *)&local_28)
        ;
        if (bVar1) {
          pcVar2 = (char *)__gnu_cxx::__normal_iterator<char*,std::string>::operator*
                                     ((__normal_iterator<char*,std::string> *)&local_24);
          bVar1 = internal::is_trail<char>(*pcVar2);
          if (!bVar1) goto LAB_005e2c42;
          bVar1 = true;
        }
        else {
LAB_005e2c42:
          bVar1 = false;
        }
        if (!bVar1) break;
        __gnu_cxx::__normal_iterator<char*,std::string>::operator++
                  ((__normal_iterator<char*,std::string> *)&local_24);
      } while( true );
    }
  } while( true );
}

// ---- utf8::internal::validate_next<__gnu_cxx::__normal_iterator<char*,std::string>>  @ 0x5e2ca0
/* utf8::internal::utf_error utf8::internal::validate_next<__gnu_cxx::__normal_iterator<char*,
   std::string > >(__gnu_cxx::__normal_iterator<char*, std::string >&,
   __gnu_cxx::__normal_iterator<char*, std::string >) */

undefined4
utf8::internal::validate_next<__gnu_cxx::__normal_iterator<char*,std::string>>
          (undefined4 param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined1 auStack_c [8];
  
  uVar1 = validate_next<__gnu_cxx::__normal_iterator<char*,std::string>>(param_1,param_2,auStack_c);
  return uVar1;
}

// ---- utf8::invalid_code_point::~invalid_code_point  @ 0x5e2d00
/* WARNING: Removing unreachable block (ram,0x005e2d22) */
/* utf8::invalid_code_point::~invalid_code_point() */

invalid_code_point * __thiscall
utf8::invalid_code_point::~invalid_code_point(invalid_code_point *this)

{
  *(undefined ***)this = &PTR__invalid_code_point_1_00936318;
  exception::~exception((exception *)this);
  return this;
}

// ---- utf8::invalid_code_point::~invalid_code_point  @ 0x5e2d3c
/* utf8::invalid_code_point::~invalid_code_point() */

invalid_code_point * __thiscall
utf8::invalid_code_point::~invalid_code_point(invalid_code_point *this)

{
  ~invalid_code_point(this);
  operator_delete(this);
  return this;
}

// ---- utf8::append<std::back_insert_iterator<std::string>>  @ 0x5e2d58
/* std::back_insert_iterator<std::string > utf8::append<std::back_insert_iterator<std::string >
   >(unsigned int, std::back_insert_iterator<std::string >) */

undefined4 utf8::append<std::back_insert_iterator<std::string>>(uint param_1,undefined4 param_2)

{
  bool bVar1;
  invalid_code_point *this;
  back_insert_iterator<std::string> *pbVar2;
  undefined4 local_20;
  uint local_1c;
  byte local_15;
  undefined4 local_14 [2];
  
  local_20 = param_2;
  local_1c = param_1;
  bVar1 = internal::is_code_point_valid<unsigned_int>(param_1);
  if (!bVar1) {
    this = (invalid_code_point *)__cxa_allocate_exception(8);
    invalid_code_point::invalid_code_point(this,local_1c);
                    /* WARNING: Subroutine does not return */
    __cxa_throw(this,&invalid_code_point::typeinfo,0x5e2d01);
  }
  if (local_1c < 0x80) {
    local_14[0] = std::back_insert_iterator<std::string>::operator++
                            ((back_insert_iterator<std::string> *)&local_20,0);
    pbVar2 = (back_insert_iterator<std::string> *)
             std::back_insert_iterator<std::string>::operator*
                       ((back_insert_iterator<std::string> *)local_14);
    local_15 = (byte)local_1c;
    std::back_insert_iterator<std::string>::operator=(pbVar2,(char *)&local_15);
  }
  else if (local_1c < 0x800) {
    local_14[0] = std::back_insert_iterator<std::string>::operator++
                            ((back_insert_iterator<std::string> *)&local_20,0);
    pbVar2 = (back_insert_iterator<std::string> *)
             std::back_insert_iterator<std::string>::operator*
                       ((back_insert_iterator<std::string> *)local_14);
    local_15 = (byte)(local_1c >> 6) | 0xc0;
    std::back_insert_iterator<std::string>::operator=(pbVar2,(char *)&local_15);
    local_14[0] = std::back_insert_iterator<std::string>::operator++
                            ((back_insert_iterator<std::string> *)&local_20,0);
    pbVar2 = (back_insert_iterator<std::string> *)
             std::back_insert_iterator<std::string>::operator*
                       ((back_insert_iterator<std::string> *)local_14);
    local_15 = (byte)local_1c & 0x3f | 0x80;
    std::back_insert_iterator<std::string>::operator=(pbVar2,(char *)&local_15);
  }
  else if (local_1c < 0x10000) {
    local_14[0] = std::back_insert_iterator<std::string>::operator++
                            ((back_insert_iterator<std::string> *)&local_20,0);
    pbVar2 = (back_insert_iterator<std::string> *)
             std::back_insert_iterator<std::string>::operator*
                       ((back_insert_iterator<std::string> *)local_14);
    local_15 = (byte)(local_1c >> 0xc) | 0xe0;
    std::back_insert_iterator<std::string>::operator=(pbVar2,(char *)&local_15);
    local_14[0] = std::back_insert_iterator<std::string>::operator++
                            ((back_insert_iterator<std::string> *)&local_20,0);
    pbVar2 = (back_insert_iterator<std::string> *)
             std::back_insert_iterator<std::string>::operator*
                       ((back_insert_iterator<std::string> *)local_14);
    local_15 = (byte)(local_1c >> 6) & 0x3f | 0x80;
    std::back_insert_iterator<std::string>::operator=(pbVar2,(char *)&local_15);
    local_14[0] = std::back_insert_iterator<std::string>::operator++
                            ((back_insert_iterator<std::string> *)&local_20,0);
    pbVar2 = (back_insert_iterator<std::string> *)
             std::back_insert_iterator<std::string>::operator*
                       ((back_insert_iterator<std::string> *)local_14);
    local_15 = (byte)local_1c & 0x3f | 0x80;
    std::back_insert_iterator<std::string>::operator=(pbVar2,(char *)&local_15);
  }
  else {
    local_14[0] = std::back_insert_iterator<std::string>::operator++
                            ((back_insert_iterator<std::string> *)&local_20,0);
    pbVar2 = (back_insert_iterator<std::string> *)
             std::back_insert_iterator<std::string>::operator*
                       ((back_insert_iterator<std::string> *)local_14);
    local_15 = (byte)(local_1c >> 0x12) | 0xf0;
    std::back_insert_iterator<std::string>::operator=(pbVar2,(char *)&local_15);
    local_14[0] = std::back_insert_iterator<std::string>::operator++
                            ((back_insert_iterator<std::string> *)&local_20,0);
    pbVar2 = (back_insert_iterator<std::string> *)
             std::back_insert_iterator<std::string>::operator*
                       ((back_insert_iterator<std::string> *)local_14);
    local_15 = (byte)(local_1c >> 0xc) & 0x3f | 0x80;
    std::back_insert_iterator<std::string>::operator=(pbVar2,(char *)&local_15);
    local_14[0] = std::back_insert_iterator<std::string>::operator++
                            ((back_insert_iterator<std::string> *)&local_20,0);
    pbVar2 = (back_insert_iterator<std::string> *)
             std::back_insert_iterator<std::string>::operator*
                       ((back_insert_iterator<std::string> *)local_14);
    local_15 = (byte)(local_1c >> 6) & 0x3f | 0x80;
    std::back_insert_iterator<std::string>::operator=(pbVar2,(char *)&local_15);
    local_14[0] = std::back_insert_iterator<std::string>::operator++
                            ((back_insert_iterator<std::string> *)&local_20,0);
    pbVar2 = (back_insert_iterator<std::string> *)
             std::back_insert_iterator<std::string>::operator*
                       ((back_insert_iterator<std::string> *)local_14);
    local_15 = (byte)local_1c & 0x3f | 0x80;
    std::back_insert_iterator<std::string>::operator=(pbVar2,(char *)&local_15);
  }
  return local_20;
}

// ---- utf8::internal::is_trail<char>  @ 0x5e2fe8
/* bool utf8::internal::is_trail<char>(char) */

bool utf8::internal::is_trail<char>(char param_1)

{
  byte bVar1;
  
  bVar1 = mask8<char>(param_1);
  return (int)(uint)bVar1 >> 6 == 2;
}

// ---- utf8::internal::validate_next<__gnu_cxx::__normal_iterator<char*,std::string>>  @ 0x5e3014
/* utf8::internal::utf_error utf8::internal::validate_next<__gnu_cxx::__normal_iterator<char*,
   std::string > >(__gnu_cxx::__normal_iterator<char*, std::string >&,
   __gnu_cxx::__normal_iterator<char*, std::string >, unsigned int&) */

int utf8::internal::validate_next<__gnu_cxx::__normal_iterator<char*,std::string>>
              (__normal_iterator<char*,std::string> *param_1,undefined4 param_2,uint *param_3)

{
  bool bVar1;
  undefined4 uVar2;
  uint local_14;
  int local_10;
  int local_c;
  
  uVar2 = *(undefined4 *)param_1;
  local_14 = 0;
  local_c = sequence_length<__gnu_cxx::__normal_iterator<char*,std::string>>(*(undefined4 *)param_1)
  ;
  local_10 = 0;
  switch(local_c) {
  case 0:
    return 2;
  case 1:
    local_10 = get_sequence_1<__gnu_cxx::__normal_iterator<char*,std::string>>
                         (param_1,param_2,&local_14);
    break;
  case 2:
    local_10 = get_sequence_2<__gnu_cxx::__normal_iterator<char*,std::string>>
                         (param_1,param_2,&local_14);
    break;
  case 3:
    local_10 = get_sequence_3<__gnu_cxx::__normal_iterator<char*,std::string>>
                         (param_1,param_2,&local_14);
    break;
  case 4:
    local_10 = get_sequence_4<__gnu_cxx::__normal_iterator<char*,std::string>>
                         (param_1,param_2,&local_14);
  }
  if (local_10 == 0) {
    bVar1 = is_code_point_valid<unsigned_int>(local_14);
    if (bVar1) {
      bVar1 = is_overlong_sequence<int>(local_14,local_c);
      if (!bVar1) {
        *param_3 = local_14;
        __gnu_cxx::__normal_iterator<char*,std::string>::operator++(param_1);
        return 0;
      }
      local_10 = 4;
    }
    else {
      local_10 = 5;
    }
  }
  *(undefined4 *)param_1 = uVar2;
  return local_10;
}

// ---- utf8::internal::is_code_point_valid<unsigned_int>  @ 0x5e30fc
/* bool utf8::internal::is_code_point_valid<unsigned int>(unsigned int) */

bool utf8::internal::is_code_point_valid<unsigned_int>(uint param_1)

{
  bool bVar1;
  
  if (("rite9setScaleYEf" < param_1) || (bVar1 = is_surrogate<unsigned_int>(param_1), bVar1)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  return bVar1;
}

// ---- utf8::internal::mask8<char>  @ 0x5e3160
/* unsigned char utf8::internal::mask8<char>(char) */

uchar utf8::internal::mask8<char>(char param_1)

{
  return param_1;
}

// ---- utf8::internal::sequence_length<__gnu_cxx::__normal_iterator<char*,std::string>>  @ 0x5e3174
/* std::iterator_traits<__gnu_cxx::__normal_iterator<char*, std::string > >::difference_type
   utf8::internal::sequence_length<__gnu_cxx::__normal_iterator<char*, std::string >
   >(__gnu_cxx::__normal_iterator<char*, std::string >) */

undefined4
utf8::internal::sequence_length<__gnu_cxx::__normal_iterator<char*,std::string>>(undefined4 param_1)

{
  byte bVar1;
  char *pcVar2;
  undefined4 uVar3;
  undefined4 local_14 [4];
  
  local_14[0] = param_1;
  pcVar2 = (char *)__gnu_cxx::__normal_iterator<char*,std::string>::operator*
                             ((__normal_iterator<char*,std::string> *)local_14);
  bVar1 = mask8<char>(*pcVar2);
  if ((char)bVar1 < '\0') {
    if ((int)(uint)bVar1 >> 5 == 6) {
      uVar3 = 2;
    }
    else if ((int)(uint)bVar1 >> 4 == 0xe) {
      uVar3 = 3;
    }
    else if ((int)(uint)bVar1 >> 3 == 0x1e) {
      uVar3 = 4;
    }
    else {
      uVar3 = 0;
    }
  }
  else {
    uVar3 = 1;
  }
  return uVar3;
}

// ---- utf8::internal::get_sequence_1<__gnu_cxx::__normal_iterator<char*,std::string>>  @ 0x5e31d4
/* utf8::internal::utf_error utf8::internal::get_sequence_1<__gnu_cxx::__normal_iterator<char*,
   std::string > >(__gnu_cxx::__normal_iterator<char*, std::string >&,
   __gnu_cxx::__normal_iterator<char*, std::string >, unsigned int&) */

bool utf8::internal::get_sequence_1<__gnu_cxx::__normal_iterator<char*,std::string>>
               (__normal_iterator<char*,std::string> *param_1,undefined4 param_2,uint *param_3)

{
  byte bVar1;
  int iVar2;
  char *pcVar3;
  undefined4 local_10;
  __normal_iterator<char*,std::string> *local_c;
  
  local_10 = param_2;
  local_c = param_1;
  iVar2 = FUN_005e3478(param_1,&local_10);
  if (iVar2 == 0) {
    pcVar3 = (char *)__gnu_cxx::__normal_iterator<char*,std::string>::operator*(local_c);
    bVar1 = mask8<char>(*pcVar3);
    *param_3 = (uint)bVar1;
  }
  return iVar2 != 0;
}

// ---- utf8::internal::get_sequence_2<__gnu_cxx::__normal_iterator<char*,std::string>>  @ 0x5e3214
/* utf8::internal::utf_error utf8::internal::get_sequence_2<__gnu_cxx::__normal_iterator<char*,
   std::string > >(__gnu_cxx::__normal_iterator<char*, std::string >&,
   __gnu_cxx::__normal_iterator<char*, std::string >, unsigned int&) */

int utf8::internal::get_sequence_2<__gnu_cxx::__normal_iterator<char*,std::string>>
              (__normal_iterator<char*,std::string> *param_1,undefined4 param_2,uint *param_3)

{
  byte bVar1;
  int iVar2;
  char *pcVar3;
  byte *pbVar4;
  uint uVar5;
  undefined4 local_18;
  __normal_iterator<char*,std::string> *local_14;
  int local_c;
  
  local_18 = param_2;
  local_14 = param_1;
  iVar2 = FUN_005e3478(param_1,&local_18);
  if (iVar2 == 0) {
    pcVar3 = (char *)__gnu_cxx::__normal_iterator<char*,std::string>::operator*(local_14);
    bVar1 = mask8<char>(*pcVar3);
    *param_3 = (uint)bVar1;
    local_c = increase_safely<__gnu_cxx::__normal_iterator<char*,std::string>>(local_14,local_18);
    if (local_c == 0) {
      uVar5 = *param_3;
      pbVar4 = (byte *)__gnu_cxx::__normal_iterator<char*,std::string>::operator*(local_14);
      *param_3 = (uVar5 & 0x1f) * 0x40 + (*pbVar4 & 0x3f);
      local_c = 0;
    }
  }
  else {
    local_c = 1;
  }
  return local_c;
}

// ---- utf8::internal::get_sequence_3<__gnu_cxx::__normal_iterator<char*,std::string>>  @ 0x5e3288
/* utf8::internal::utf_error utf8::internal::get_sequence_3<__gnu_cxx::__normal_iterator<char*,
   std::string > >(__gnu_cxx::__normal_iterator<char*, std::string >&,
   __gnu_cxx::__normal_iterator<char*, std::string >, unsigned int&) */

int utf8::internal::get_sequence_3<__gnu_cxx::__normal_iterator<char*,std::string>>
              (__normal_iterator<char*,std::string> *param_1,undefined4 param_2,uint *param_3)

{
  byte bVar1;
  int iVar2;
  char *pcVar3;
  byte *pbVar4;
  uint uVar5;
  undefined4 local_18;
  __normal_iterator<char*,std::string> *local_14;
  int local_10;
  int local_c;
  
  local_18 = param_2;
  local_14 = param_1;
  iVar2 = FUN_005e3478(param_1,&local_18);
  if (iVar2 == 0) {
    pcVar3 = (char *)__gnu_cxx::__normal_iterator<char*,std::string>::operator*(local_14);
    bVar1 = mask8<char>(*pcVar3);
    *param_3 = (uint)bVar1;
    local_c = increase_safely<__gnu_cxx::__normal_iterator<char*,std::string>>(local_14,local_18);
    if (local_c == 0) {
      uVar5 = *param_3;
      local_10 = local_c;
      pcVar3 = (char *)__gnu_cxx::__normal_iterator<char*,std::string>::operator*(local_14);
      bVar1 = mask8<char>(*pcVar3);
      *param_3 = (uVar5 & 0xf) * 0x1000 + (bVar1 & 0x3f) * 0x40;
      local_c = increase_safely<__gnu_cxx::__normal_iterator<char*,std::string>>(local_14,local_18);
      if (local_c == 0) {
        pbVar4 = (byte *)__gnu_cxx::__normal_iterator<char*,std::string>::operator*(local_14);
        *param_3 = *param_3 + (*pbVar4 & 0x3f);
        local_c = 0;
      }
    }
  }
  else {
    local_c = 1;
  }
  return local_c;
}

// ---- utf8::internal::get_sequence_4<__gnu_cxx::__normal_iterator<char*,std::string>>  @ 0x5e3330
/* utf8::internal::utf_error utf8::internal::get_sequence_4<__gnu_cxx::__normal_iterator<char*,
   std::string > >(__gnu_cxx::__normal_iterator<char*, std::string >&,
   __gnu_cxx::__normal_iterator<char*, std::string >, unsigned int&) */

int utf8::internal::get_sequence_4<__gnu_cxx::__normal_iterator<char*,std::string>>
              (__normal_iterator<char*,std::string> *param_1,undefined4 param_2,uint *param_3)

{
  byte bVar1;
  int iVar2;
  char *pcVar3;
  byte *pbVar4;
  uint uVar5;
  undefined4 local_20;
  __normal_iterator<char*,std::string> *local_1c;
  int local_14;
  int local_10;
  int local_c;
  
  local_20 = param_2;
  local_1c = param_1;
  iVar2 = FUN_005e3478(param_1,&local_20);
  if (iVar2 == 0) {
    pcVar3 = (char *)__gnu_cxx::__normal_iterator<char*,std::string>::operator*(local_1c);
    bVar1 = mask8<char>(*pcVar3);
    *param_3 = (uint)bVar1;
    local_c = increase_safely<__gnu_cxx::__normal_iterator<char*,std::string>>(local_1c,local_20);
    if (local_c == 0) {
      uVar5 = *param_3;
      local_14 = local_c;
      pcVar3 = (char *)__gnu_cxx::__normal_iterator<char*,std::string>::operator*(local_1c);
      bVar1 = mask8<char>(*pcVar3);
      *param_3 = (uVar5 & 7) * 0x40000 + (bVar1 & 0x3f) * 0x1000;
      local_c = increase_safely<__gnu_cxx::__normal_iterator<char*,std::string>>(local_1c,local_20);
      if (local_c == 0) {
        local_10 = local_c;
        pcVar3 = (char *)__gnu_cxx::__normal_iterator<char*,std::string>::operator*(local_1c);
        bVar1 = mask8<char>(*pcVar3);
        *param_3 = *param_3 + (bVar1 & 0x3f) * 0x40;
        local_c = increase_safely<__gnu_cxx::__normal_iterator<char*,std::string>>
                            (local_1c,local_20);
        if (local_c == 0) {
          pbVar4 = (byte *)__gnu_cxx::__normal_iterator<char*,std::string>::operator*(local_1c);
          *param_3 = *param_3 + (*pbVar4 & 0x3f);
          local_c = 0;
        }
      }
    }
  }
  else {
    local_c = 1;
  }
  return local_c;
}

// ---- utf8::internal::is_overlong_sequence<int>  @ 0x5e3414
/* bool utf8::internal::is_overlong_sequence<int>(unsigned int, int) */

bool utf8::internal::is_overlong_sequence<int>(uint param_1,int param_2)

{
  if (param_1 < 0x80) {
    if (param_2 != 1) {
      return true;
    }
  }
  else if (param_1 < 0x800) {
    if (param_2 != 2) {
      return true;
    }
  }
  else if ((param_1 < 0x10000) && (param_2 != 3)) {
    return true;
  }
  return false;
}

// ---- utf8::internal::is_surrogate<unsigned_int>  @ 0x5e3458
/* bool utf8::internal::is_surrogate<unsigned int>(unsigned int) */

bool utf8::internal::is_surrogate<unsigned_int>(uint param_1)

{
  bool bVar1;
  
  if ((param_1 < 0xd800) || (0xdfff < param_1)) {
    bVar1 = false;
  }
  else {
    bVar1 = true;
  }
  return bVar1;
}

// ---- utf8::internal::increase_safely<__gnu_cxx::__normal_iterator<char*,std::string>>  @ 0x5e34a4
/* utf8::internal::utf_error utf8::internal::increase_safely<__gnu_cxx::__normal_iterator<char*,
   std::string > >(__gnu_cxx::__normal_iterator<char*, std::string >&,
   __gnu_cxx::__normal_iterator<char*, std::string >) */

undefined4
utf8::internal::increase_safely<__gnu_cxx::__normal_iterator<char*,std::string>>
          (__normal_iterator<char*,std::string> *param_1,undefined4 param_2)

{
  bool bVar1;
  undefined4 uVar2;
  int iVar3;
  char *pcVar4;
  undefined4 local_10;
  __normal_iterator<char*,std::string> *local_c;
  
  local_10 = param_2;
  local_c = param_1;
  uVar2 = __gnu_cxx::__normal_iterator<char*,std::string>::operator++(param_1);
  iVar3 = FUN_005e3478(uVar2,&local_10);
  if (iVar3 == 0) {
    pcVar4 = (char *)__gnu_cxx::__normal_iterator<char*,std::string>::operator*(local_c);
    bVar1 = is_trail<char>(*pcVar4);
    if (bVar1) {
      uVar2 = 0;
    }
    else {
      uVar2 = 3;
    }
  }
  else {
    uVar2 = 1;
  }
  return uVar2;
}
