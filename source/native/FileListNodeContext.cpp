// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 3 functions

// ---- FileListNodeContext::FileListNodeContext  @ 0x486f74
/* FileListNodeContext::FileListNodeContext(unsigned char, unsigned int, unsigned int, unsigned int)
    */

FileListNodeContext * __thiscall
FileListNodeContext::FileListNodeContext
          (FileListNodeContext *this,uchar param_1,uint param_2,uint param_3,uint param_4)

{
  *this = (FileListNodeContext)param_1;
  *(uint *)(this + 4) = param_2;
  *(uint *)(this + 8) = param_3;
  *(uint *)(this + 0xc) = param_4;
  *(undefined4 *)(this + 0x10) = 0;
  *(undefined4 *)(this + 0x14) = 0;
  return this;
}

// ---- FileListNodeContext::~FileListNodeContext  @ 0x486fb0
/* FileListNodeContext::~FileListNodeContext() */

FileListNodeContext * __thiscall
FileListNodeContext::~FileListNodeContext(FileListNodeContext *this)

{
  return this;
}

// ---- FileListNodeContext::FileListNodeContext  @ 0x4896c0
/* FileListNodeContext::FileListNodeContext() */

FileListNodeContext * __thiscall FileListNodeContext::FileListNodeContext(FileListNodeContext *this)

{
  *(undefined4 *)(this + 0x10) = 0;
  *(undefined4 *)(this + 0x14) = 0;
  return this;
}
