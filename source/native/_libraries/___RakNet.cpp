// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 1 functions

// ---- (**RakNet::OP_NEW_ARRAY<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)>(int,char_const*,unsigned_int))  @ 0x491ab8
/* int (**RakNet::OP_NEW_ARRAY<int (*)(RakNet::FileListTransfer::ThreadData, bool*, void*)>(int,
   char const*, unsigned int))(RakNet::FileListTransfer::ThreadData, bool*, void*) */

int ___RakNet__OP_NEW_ARRAY<int(*)(RakNet::FileListTransfer::ThreadData,bool*,void*)>_int_char_const__unsigned_int__
              (uint param_1)

{
  void *pvVar1;
  
  if (param_1 == 0) {
    pvVar1 = (void *)0x0;
  }
  else {
    if (param_1 < 0x1fc00001) {
      param_1 = param_1 << 2;
    }
    else {
      param_1 = 0xffffffff;
    }
    pvVar1 = operator_new__(param_1);
  }
  return (int)pvVar1;
}
