// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 5 functions

// ---- llvm::ConvertUTF8toWide  @ 0x5ef0ac
/* llvm::ConvertUTF8toWide(unsigned int, std::string const&, char*&, unsigned char const*&) */

bool llvm::ConvertUTF8toWide(uint param_1,string *param_2,char **param_3,uchar **param_4)

{
  uchar *puVar1;
  int iVar2;
  int iVar3;
  void *__src;
  size_t __n;
  uchar *puVar4;
  char *__dest;
  uchar *local_24;
  uchar *local_20;
  int local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  local_1c = 0;
  if (param_1 == 1) {
    local_20 = (uchar *)FUN_007c5058(param_2);
    iVar2 = FUN_007c5058(param_2);
    iVar3 = FUN_007c505c(param_2);
    iVar2 = isLegalUTF8String(&local_20,(uchar *)(iVar3 + iVar2));
    if (iVar2 == 0) {
      local_1c = 3;
      *param_4 = local_20;
    }
    else {
      __dest = *param_3;
      __src = (void *)FUN_007c5058(param_2);
      __n = FUN_007c521c(param_2);
      memcpy(__dest,__src,__n);
      iVar2 = FUN_007c521c(param_2);
      *param_3 = *param_3 + iVar2;
    }
  }
  else if (param_1 == 2) {
    puVar4 = (uchar *)FUN_007c5058(param_2);
    local_20 = (uchar *)*param_3;
    local_18 = 0;
    local_24 = puVar4;
    iVar2 = FUN_007c521c(param_2);
    puVar1 = local_20;
    iVar3 = FUN_007c521c(param_2);
    local_1c = ConvertUTF8toUTF16(&local_24,puVar4 + iVar2,&local_20,puVar1 + iVar3 * 4,local_18);
    if (local_1c == 0) {
      *param_3 = (char *)local_20;
    }
    else {
      *param_4 = local_24;
    }
  }
  else if (param_1 == 4) {
    puVar4 = (uchar *)FUN_007c5058(param_2);
    local_20 = (uchar *)*param_3;
    local_14 = 0;
    local_24 = puVar4;
    iVar2 = FUN_007c521c(param_2);
    puVar1 = local_20;
    iVar3 = FUN_007c521c(param_2);
    local_1c = ConvertUTF8toUTF32(&local_24,puVar4 + iVar2,&local_20,puVar1 + iVar3 * 0x10,local_14)
    ;
    if (local_1c == 0) {
      *param_3 = (char *)local_20;
    }
    else {
      *param_4 = local_24;
    }
  }
  return local_1c == 0;
}

// ---- llvm::ConvertCodePointToUTF8  @ 0x5ef204
/* llvm::ConvertCodePointToUTF8(unsigned int, char*&) */

bool llvm::ConvertCodePointToUTF8(uint param_1,char **param_2)

{
  int iVar1;
  uint local_24;
  undefined1 auStack_20 [4];
  uint *local_1c;
  char *local_18;
  undefined1 *local_14;
  char *local_10;
  
  local_1c = &local_24;
  local_14 = auStack_20;
  local_18 = *param_2;
  local_10 = local_18 + 4;
  local_24 = param_1;
  iVar1 = ConvertUTF32toUTF8(&local_1c,local_14,&local_18,local_10,0);
  if (iVar1 == 0) {
    *param_2 = local_18;
  }
  return iVar1 == 0;
}

// ---- llvm::hasUTF16ByteOrderMark  @ 0x5ef254
/* llvm::hasUTF16ByteOrderMark(char const*, unsigned int) */

undefined4 llvm::hasUTF16ByteOrderMark(char *param_1,uint param_2)

{
  undefined4 uVar1;
  
  if ((param_2 < 2) ||
     (((*param_1 != -1 || (param_1[1] != -2)) && ((*param_1 != -2 || (param_1[1] != -1)))))) {
    uVar1 = 0;
  }
  else {
    uVar1 = 1;
  }
  return uVar1;
}

// ---- llvm::SwapByteOrder_16  @ 0x5ef290
/* llvm::SwapByteOrder_16(unsigned short) */

ushort llvm::SwapByteOrder_16(ushort param_1)

{
  return param_1 >> 8 | param_1 << 8;
}

// ---- llvm::convertUTF16ToUTF8String  @ 0x5ef2c0
/* llvm::convertUTF16ToUTF8String(std::basic_string<unsigned short, std::char_traits<unsigned
   short>, std::allocator<unsigned short> > const&, std::string&) */

bool llvm::convertUTF16ToUTF8String(basic_string *param_1,string *param_2)

{
  undefined2 uVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined2 *puVar5;
  ushort *puVar6;
  bool bVar7;
  short *local_30;
  int local_2c;
  int local_28;
  uint local_24;
  uint local_20;
  int local_1c;
  int local_18;
  vector<unsigned_short,std::allocator<unsigned_short>> avStack_14 [12];
  
  iVar2 = std::
          basic_string<unsigned_short,std::char_traits<unsigned_short>,std::allocator<unsigned_short>>
          ::empty((basic_string<unsigned_short,std::char_traits<unsigned_short>,std::allocator<unsigned_short>>
                   *)param_1);
  if (iVar2 == 0) {
    local_30 = (short *)std::
                        basic_string<unsigned_short,std::char_traits<unsigned_short>,std::allocator<unsigned_short>>
                        ::data((basic_string<unsigned_short,std::char_traits<unsigned_short>,std::allocator<unsigned_short>>
                                *)param_1);
    iVar2 = std::
            basic_string<unsigned_short,std::char_traits<unsigned_short>,std::allocator<unsigned_short>>
            ::data((basic_string<unsigned_short,std::char_traits<unsigned_short>,std::allocator<unsigned_short>>
                    *)param_1);
    iVar3 = std::
            basic_string<unsigned_short,std::char_traits<unsigned_short>,std::allocator<unsigned_short>>
            ::length((basic_string<unsigned_short,std::char_traits<unsigned_short>,std::allocator<unsigned_short>>
                      *)param_1);
    local_28 = iVar3 * 2 + iVar2;
    std::vector<unsigned_short,std::allocator<unsigned_short>>::vector(avStack_14);
    if (*local_30 == -2) {
      uVar4 = std::vector<unsigned_short,std::allocator<unsigned_short>>::end(avStack_14);
      std::vector<unsigned_short,std::allocator<unsigned_short>>::insert<unsigned_short_const*,void>
                (avStack_14,uVar4,local_30,local_28);
      local_24 = 0;
      local_20 = std::vector<unsigned_short,std::allocator<unsigned_short>>::size(avStack_14);
      for (; local_24 != local_20; local_24 = local_24 + 1) {
        puVar5 = (undefined2 *)
                 std::vector<unsigned_short,std::allocator<unsigned_short>>::operator[]
                           (avStack_14,local_24);
        puVar6 = (ushort *)
                 std::vector<unsigned_short,std::allocator<unsigned_short>>::operator[]
                           (avStack_14,local_24);
        uVar1 = SwapByteOrder_16(*puVar6);
        *puVar5 = uVar1;
      }
      local_30 = (short *)std::vector<unsigned_short,std::allocator<unsigned_short>>::operator[]
                                    (avStack_14,0);
      iVar2 = std::vector<unsigned_short,std::allocator<unsigned_short>>::size(avStack_14);
      local_28 = std::vector<unsigned_short,std::allocator<unsigned_short>>::operator[]
                           (avStack_14,iVar2 - 1);
      local_28 = local_28 + 2;
    }
    if (*local_30 == -0x101) {
      local_30 = local_30 + 1;
    }
    iVar2 = std::
            basic_string<unsigned_short,std::char_traits<unsigned_short>,std::allocator<unsigned_short>>
            ::length((basic_string<unsigned_short,std::char_traits<unsigned_short>,std::allocator<unsigned_short>>
                      *)param_1);
    FUN_007c6404(param_2,iVar2 * 4 + 1);
    iVar2 = FUN_007c5ac8(param_2,0);
    local_2c = iVar2;
    local_1c = FUN_007c521c(param_2);
    local_1c = local_1c + iVar2;
    local_18 = ConvertUTF16toUTF8(&local_30,local_28,&local_2c,local_1c,0);
    iVar2 = local_2c;
    bVar7 = local_18 == 0;
    if (bVar7) {
      iVar3 = FUN_007c5ac8(param_2,0);
      FUN_007c6404(param_2,iVar2 - iVar3);
    }
    else {
      FUN_007c5b70(param_2);
    }
    std::vector<unsigned_short,std::allocator<unsigned_short>>::~vector(avStack_14);
  }
  else {
    bVar7 = true;
  }
  return bVar7;
}
