// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 4 functions

// ---- CheckSum::Add  @ 0x46e034
/* CheckSum::Add(unsigned int) */

void __thiscall CheckSum::Add(CheckSum *this,uint param_1)

{
  uint local_10;
  uint local_c;
  
  local_10 = param_1;
  for (local_c = 0; local_c < 4; local_c = local_c + 1) {
    Add(this,*(uchar *)((int)&local_10 + local_c));
  }
  return;
}

// ---- CheckSum::Add  @ 0x46e068
/* CheckSum::Add(unsigned short) */

void __thiscall CheckSum::Add(CheckSum *this,ushort param_1)

{
  ushort local_10 [2];
  uint local_c;
  
  local_10[0] = param_1;
  for (local_c = 0; local_c < 2; local_c = local_c + 1) {
    Add(this,*(uchar *)((int)local_10 + local_c));
  }
  return;
}

// ---- CheckSum::Add  @ 0x46e0a4
/* CheckSum::Add(unsigned char) */

void __thiscall CheckSum::Add(CheckSum *this,uchar param_1)

{
  byte bVar1;
  
  bVar1 = param_1 ^ (byte)((ushort)*(undefined2 *)this >> 8);
  *(ushort *)this = *(short *)(this + 4) + *(short *)(this + 2) * (*(short *)this + (ushort)bVar1);
  *(uint *)(this + 8) = *(int *)(this + 8) + (uint)bVar1;
  return;
}

// ---- CheckSum::Add  @ 0x46e0f8
/* CheckSum::Add(unsigned char*, unsigned int) */

void __thiscall CheckSum::Add(CheckSum *this,uchar *param_1,uint param_2)

{
  uint local_c;
  
  for (local_c = 0; local_c < param_2; local_c = local_c + 1) {
    Add(this,param_1[local_c]);
  }
  return;
}
