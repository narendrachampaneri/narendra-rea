// Ghidra 12.1.4 pseudo-C via REA decompile-all (not original source)
// 12 functions

// ---- CSHA1::CSHA1  @ 0x47ca10
/* CSHA1::CSHA1() */

CSHA1 * __thiscall CSHA1::CSHA1(CSHA1 *this)

{
  *(CSHA1 **)(this + 0xc0) = this + 0x80;
  Reset(this);
  return this;
}

// ---- CSHA1::~CSHA1  @ 0x47ca34
/* CSHA1::~CSHA1() */

CSHA1 * __thiscall CSHA1::~CSHA1(CSHA1 *this)

{
  Reset(this);
  return this;
}

// ---- CSHA1::Reset  @ 0x47ca4c
/* CSHA1::Reset() */

void __thiscall CSHA1::Reset(CSHA1 *this)

{
  *(undefined4 *)this = 0x67452301;
  *(undefined4 *)(this + 4) = 0xefcdab89;
  *(undefined4 *)(this + 8) = 0x98badcfe;
  *(undefined4 *)(this + 0xc) = 0x10325476;
  *(undefined4 *)(this + 0x10) = 0xc3d2e1f0;
  *(undefined4 *)(this + 0x14) = 0;
  *(undefined4 *)(this + 0x18) = 0;
  return;
}

// ---- CSHA1::Transform  @ 0x47ca9c
/* CSHA1::Transform(unsigned long*, unsigned char const*) */

void __thiscall CSHA1::Transform(CSHA1 *this,ulong *param_1,uchar *param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  ulong uVar6;
  uint *puVar7;
  uint uVar8;
  int iVar9;
  
  uVar2 = *param_1;
  uVar3 = param_1[1];
  uVar4 = param_1[2];
  uVar5 = param_1[3];
  uVar6 = param_1[4];
  memcpy(*(void **)(this + 0xc0),param_2,0x40);
  puVar7 = *(uint **)(this + 0xc0);
  *puVar7 = **(uint **)(this + 0xc0) >> 0x18 | (**(uint **)(this + 0xc0) & 0xff00) << 8 |
            **(uint **)(this + 0xc0) >> 8 & 0xff00ff00 | **(uint **)(this + 0xc0) << 0x18;
  uVar8 = ((uVar4 ^ uVar5) & uVar3 ^ uVar5) + *puVar7 + (uVar2 >> 0x1b | uVar2 << 5) + 0x5a827999 +
          uVar6;
  uVar3 = uVar3 >> 2 | uVar3 << 0x1e;
  iVar9 = *(int *)(this + 0xc0);
  *(uint *)(iVar9 + 4) =
       *(uint *)(*(int *)(this + 0xc0) + 4) >> 0x18 |
       (*(uint *)(*(int *)(this + 0xc0) + 4) & 0xff00) << 8 |
       *(uint *)(*(int *)(this + 0xc0) + 4) >> 8 & 0xff00ff00 |
       *(uint *)(*(int *)(this + 0xc0) + 4) << 0x18;
  uVar5 = ((uVar3 ^ uVar4) & uVar2 ^ uVar4) + *(int *)(iVar9 + 4) + (uVar8 >> 0x1b | uVar8 * 0x20) +
          0x5a827999 + uVar5;
  uVar2 = uVar2 >> 2 | uVar2 << 0x1e;
  iVar9 = *(int *)(this + 0xc0);
  *(uint *)(iVar9 + 8) =
       *(uint *)(*(int *)(this + 0xc0) + 8) >> 0x18 |
       (*(uint *)(*(int *)(this + 0xc0) + 8) & 0xff00) << 8 |
       *(uint *)(*(int *)(this + 0xc0) + 8) >> 8 & 0xff00ff00 |
       *(uint *)(*(int *)(this + 0xc0) + 8) << 0x18;
  uVar4 = ((uVar2 ^ uVar3) & uVar8 ^ uVar3) + *(int *)(iVar9 + 8) + (uVar5 >> 0x1b | uVar5 * 0x20) +
          0x5a827999 + uVar4;
  uVar8 = uVar8 >> 2 | uVar8 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  *(uint *)(iVar9 + 0xc) =
       *(uint *)(*(int *)(this + 0xc0) + 0xc) >> 0x18 |
       (*(uint *)(*(int *)(this + 0xc0) + 0xc) & 0xff00) << 8 |
       *(uint *)(*(int *)(this + 0xc0) + 0xc) >> 8 & 0xff00ff00 |
       *(uint *)(*(int *)(this + 0xc0) + 0xc) << 0x18;
  uVar3 = ((uVar8 ^ uVar2) & uVar5 ^ uVar2) + *(int *)(iVar9 + 0xc) + (uVar4 >> 0x1b | uVar4 * 0x20)
          + 0x5a827999 + uVar3;
  uVar5 = uVar5 >> 2 | uVar5 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  *(uint *)(iVar9 + 0x10) =
       *(uint *)(*(int *)(this + 0xc0) + 0x10) >> 0x18 |
       (*(uint *)(*(int *)(this + 0xc0) + 0x10) & 0xff00) << 8 |
       *(uint *)(*(int *)(this + 0xc0) + 0x10) >> 8 & 0xff00ff00 |
       *(uint *)(*(int *)(this + 0xc0) + 0x10) << 0x18;
  uVar2 = ((uVar5 ^ uVar8) & uVar4 ^ uVar8) + *(int *)(iVar9 + 0x10) +
          (uVar3 >> 0x1b | uVar3 * 0x20) + 0x5a827999 + uVar2;
  uVar4 = uVar4 >> 2 | uVar4 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  *(uint *)(iVar9 + 0x14) =
       *(uint *)(*(int *)(this + 0xc0) + 0x14) >> 0x18 |
       (*(uint *)(*(int *)(this + 0xc0) + 0x14) & 0xff00) << 8 |
       *(uint *)(*(int *)(this + 0xc0) + 0x14) >> 8 & 0xff00ff00 |
       *(uint *)(*(int *)(this + 0xc0) + 0x14) << 0x18;
  uVar8 = ((uVar4 ^ uVar5) & uVar3 ^ uVar5) + *(int *)(iVar9 + 0x14) +
          (uVar2 >> 0x1b | uVar2 * 0x20) + 0x5a827999 + uVar8;
  uVar3 = uVar3 >> 2 | uVar3 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  *(uint *)(iVar9 + 0x18) =
       *(uint *)(*(int *)(this + 0xc0) + 0x18) >> 0x18 |
       (*(uint *)(*(int *)(this + 0xc0) + 0x18) & 0xff00) << 8 |
       *(uint *)(*(int *)(this + 0xc0) + 0x18) >> 8 & 0xff00ff00 |
       *(uint *)(*(int *)(this + 0xc0) + 0x18) << 0x18;
  uVar5 = ((uVar3 ^ uVar4) & uVar2 ^ uVar4) + *(int *)(iVar9 + 0x18) +
          (uVar8 >> 0x1b | uVar8 * 0x20) + 0x5a827999 + uVar5;
  uVar2 = uVar2 >> 2 | uVar2 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  *(uint *)(iVar9 + 0x1c) =
       *(uint *)(*(int *)(this + 0xc0) + 0x1c) >> 0x18 |
       (*(uint *)(*(int *)(this + 0xc0) + 0x1c) & 0xff00) << 8 |
       *(uint *)(*(int *)(this + 0xc0) + 0x1c) >> 8 & 0xff00ff00 |
       *(uint *)(*(int *)(this + 0xc0) + 0x1c) << 0x18;
  uVar4 = ((uVar2 ^ uVar3) & uVar8 ^ uVar3) + *(int *)(iVar9 + 0x1c) +
          (uVar5 >> 0x1b | uVar5 * 0x20) + 0x5a827999 + uVar4;
  uVar8 = uVar8 >> 2 | uVar8 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  *(uint *)(iVar9 + 0x20) =
       *(uint *)(*(int *)(this + 0xc0) + 0x20) >> 0x18 |
       (*(uint *)(*(int *)(this + 0xc0) + 0x20) & 0xff00) << 8 |
       *(uint *)(*(int *)(this + 0xc0) + 0x20) >> 8 & 0xff00ff00 |
       *(uint *)(*(int *)(this + 0xc0) + 0x20) << 0x18;
  uVar3 = ((uVar8 ^ uVar2) & uVar5 ^ uVar2) + *(int *)(iVar9 + 0x20) +
          (uVar4 >> 0x1b | uVar4 * 0x20) + 0x5a827999 + uVar3;
  uVar5 = uVar5 >> 2 | uVar5 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  *(uint *)(iVar9 + 0x24) =
       *(uint *)(*(int *)(this + 0xc0) + 0x24) >> 0x18 |
       (*(uint *)(*(int *)(this + 0xc0) + 0x24) & 0xff00) << 8 |
       *(uint *)(*(int *)(this + 0xc0) + 0x24) >> 8 & 0xff00ff00 |
       *(uint *)(*(int *)(this + 0xc0) + 0x24) << 0x18;
  uVar2 = ((uVar5 ^ uVar8) & uVar4 ^ uVar8) + *(int *)(iVar9 + 0x24) +
          (uVar3 >> 0x1b | uVar3 * 0x20) + 0x5a827999 + uVar2;
  uVar4 = uVar4 >> 2 | uVar4 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  *(uint *)(iVar9 + 0x28) =
       *(uint *)(*(int *)(this + 0xc0) + 0x28) >> 0x18 |
       (*(uint *)(*(int *)(this + 0xc0) + 0x28) & 0xff00) << 8 |
       *(uint *)(*(int *)(this + 0xc0) + 0x28) >> 8 & 0xff00ff00 |
       *(uint *)(*(int *)(this + 0xc0) + 0x28) << 0x18;
  uVar8 = ((uVar4 ^ uVar5) & uVar3 ^ uVar5) + *(int *)(iVar9 + 0x28) +
          (uVar2 >> 0x1b | uVar2 * 0x20) + 0x5a827999 + uVar8;
  uVar3 = uVar3 >> 2 | uVar3 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  *(uint *)(iVar9 + 0x2c) =
       *(uint *)(*(int *)(this + 0xc0) + 0x2c) >> 0x18 |
       (*(uint *)(*(int *)(this + 0xc0) + 0x2c) & 0xff00) << 8 |
       *(uint *)(*(int *)(this + 0xc0) + 0x2c) >> 8 & 0xff00ff00 |
       *(uint *)(*(int *)(this + 0xc0) + 0x2c) << 0x18;
  uVar5 = ((uVar3 ^ uVar4) & uVar2 ^ uVar4) + *(int *)(iVar9 + 0x2c) +
          (uVar8 >> 0x1b | uVar8 * 0x20) + 0x5a827999 + uVar5;
  uVar2 = uVar2 >> 2 | uVar2 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  *(uint *)(iVar9 + 0x30) =
       *(uint *)(*(int *)(this + 0xc0) + 0x30) >> 0x18 |
       (*(uint *)(*(int *)(this + 0xc0) + 0x30) & 0xff00) << 8 |
       *(uint *)(*(int *)(this + 0xc0) + 0x30) >> 8 & 0xff00ff00 |
       *(uint *)(*(int *)(this + 0xc0) + 0x30) << 0x18;
  uVar4 = ((uVar2 ^ uVar3) & uVar8 ^ uVar3) + *(int *)(iVar9 + 0x30) +
          (uVar5 >> 0x1b | uVar5 * 0x20) + 0x5a827999 + uVar4;
  uVar8 = uVar8 >> 2 | uVar8 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  *(uint *)(iVar9 + 0x34) =
       *(uint *)(*(int *)(this + 0xc0) + 0x34) >> 0x18 |
       (*(uint *)(*(int *)(this + 0xc0) + 0x34) & 0xff00) << 8 |
       *(uint *)(*(int *)(this + 0xc0) + 0x34) >> 8 & 0xff00ff00 |
       *(uint *)(*(int *)(this + 0xc0) + 0x34) << 0x18;
  uVar3 = ((uVar8 ^ uVar2) & uVar5 ^ uVar2) + *(int *)(iVar9 + 0x34) +
          (uVar4 >> 0x1b | uVar4 * 0x20) + 0x5a827999 + uVar3;
  uVar5 = uVar5 >> 2 | uVar5 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  *(uint *)(iVar9 + 0x38) =
       *(uint *)(*(int *)(this + 0xc0) + 0x38) >> 0x18 |
       (*(uint *)(*(int *)(this + 0xc0) + 0x38) & 0xff00) << 8 |
       *(uint *)(*(int *)(this + 0xc0) + 0x38) >> 8 & 0xff00ff00 |
       *(uint *)(*(int *)(this + 0xc0) + 0x38) << 0x18;
  uVar2 = ((uVar5 ^ uVar8) & uVar4 ^ uVar8) + *(int *)(iVar9 + 0x38) +
          (uVar3 >> 0x1b | uVar3 * 0x20) + 0x5a827999 + uVar2;
  uVar4 = uVar4 >> 2 | uVar4 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  *(uint *)(iVar9 + 0x3c) =
       *(uint *)(*(int *)(this + 0xc0) + 0x3c) >> 0x18 |
       (*(uint *)(*(int *)(this + 0xc0) + 0x3c) & 0xff00) << 8 |
       *(uint *)(*(int *)(this + 0xc0) + 0x3c) >> 8 & 0xff00ff00 |
       *(uint *)(*(int *)(this + 0xc0) + 0x3c) << 0x18;
  uVar8 = ((uVar4 ^ uVar5) & uVar3 ^ uVar5) + *(int *)(iVar9 + 0x3c) +
          (uVar2 >> 0x1b | uVar2 * 0x20) + 0x5a827999 + uVar8;
  uVar3 = uVar3 >> 2 | uVar3 * 0x40000000;
  puVar7 = *(uint **)(this + 0xc0);
  uVar1 = **(uint **)(this + 0xc0) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x34) ^ *(uint *)(*(int *)(this + 0xc0) + 0x20) ^
          *(uint *)(*(int *)(this + 0xc0) + 8);
  *puVar7 = uVar1 >> 0x1f | uVar1 << 1;
  uVar5 = ((uVar3 ^ uVar4) & uVar2 ^ uVar4) + *puVar7 + (uVar8 >> 0x1b | uVar8 * 0x20) + 0x5a827999
          + uVar5;
  uVar2 = uVar2 >> 2 | uVar2 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 4) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x38) ^ *(uint *)(*(int *)(this + 0xc0) + 0x24) ^
          *(uint *)(*(int *)(this + 0xc0) + 0xc);
  *(uint *)(iVar9 + 4) = uVar1 >> 0x1f | uVar1 << 1;
  uVar4 = ((uVar2 ^ uVar3) & uVar8 ^ uVar3) + *(int *)(iVar9 + 4) + (uVar5 >> 0x1b | uVar5 * 0x20) +
          0x5a827999 + uVar4;
  uVar8 = uVar8 >> 2 | uVar8 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 8) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x3c) ^ *(uint *)(*(int *)(this + 0xc0) + 0x28) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x10);
  *(uint *)(iVar9 + 8) = uVar1 >> 0x1f | uVar1 << 1;
  uVar3 = ((uVar8 ^ uVar2) & uVar5 ^ uVar2) + *(int *)(iVar9 + 8) + (uVar4 >> 0x1b | uVar4 * 0x20) +
          0x5a827999 + uVar3;
  uVar5 = uVar5 >> 2 | uVar5 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0xc) ^
          **(uint **)(this + 0xc0) ^ *(uint *)(*(int *)(this + 0xc0) + 0x2c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x14);
  *(uint *)(iVar9 + 0xc) = uVar1 >> 0x1f | uVar1 << 1;
  uVar2 = ((uVar5 ^ uVar8) & uVar4 ^ uVar8) + *(int *)(iVar9 + 0xc) + (uVar3 >> 0x1b | uVar3 * 0x20)
          + 0x5a827999 + uVar2;
  uVar4 = uVar4 >> 2 | uVar4 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x10) ^
          *(uint *)(*(int *)(this + 0xc0) + 4) ^ *(uint *)(*(int *)(this + 0xc0) + 0x30) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x18);
  *(uint *)(iVar9 + 0x10) = uVar1 >> 0x1f | uVar1 << 1;
  uVar8 = (uVar3 ^ uVar4 ^ uVar5) + *(int *)(iVar9 + 0x10) + (uVar2 >> 0x1b | uVar2 * 0x20) +
          0x6ed9eba1 + uVar8;
  uVar3 = uVar3 >> 2 | uVar3 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x14) ^
          *(uint *)(*(int *)(this + 0xc0) + 8) ^ *(uint *)(*(int *)(this + 0xc0) + 0x34) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x1c);
  *(uint *)(iVar9 + 0x14) = uVar1 >> 0x1f | uVar1 << 1;
  uVar5 = (uVar2 ^ uVar3 ^ uVar4) + *(int *)(iVar9 + 0x14) + (uVar8 >> 0x1b | uVar8 * 0x20) +
          0x6ed9eba1 + uVar5;
  uVar2 = uVar2 >> 2 | uVar2 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x18) ^
          *(uint *)(*(int *)(this + 0xc0) + 0xc) ^ *(uint *)(*(int *)(this + 0xc0) + 0x38) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x20);
  *(uint *)(iVar9 + 0x18) = uVar1 >> 0x1f | uVar1 << 1;
  uVar4 = (uVar8 ^ uVar2 ^ uVar3) + *(int *)(iVar9 + 0x18) + (uVar5 >> 0x1b | uVar5 * 0x20) +
          0x6ed9eba1 + uVar4;
  uVar8 = uVar8 >> 2 | uVar8 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x1c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x10) ^ *(uint *)(*(int *)(this + 0xc0) + 0x3c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x24);
  *(uint *)(iVar9 + 0x1c) = uVar1 >> 0x1f | uVar1 << 1;
  uVar3 = (uVar5 ^ uVar8 ^ uVar2) + *(int *)(iVar9 + 0x1c) + (uVar4 >> 0x1b | uVar4 * 0x20) +
          0x6ed9eba1 + uVar3;
  uVar5 = uVar5 >> 2 | uVar5 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x20) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x14) ^ **(uint **)(this + 0xc0) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x28);
  *(uint *)(iVar9 + 0x20) = uVar1 >> 0x1f | uVar1 << 1;
  uVar2 = (uVar4 ^ uVar5 ^ uVar8) + *(int *)(iVar9 + 0x20) + (uVar3 >> 0x1b | uVar3 * 0x20) +
          0x6ed9eba1 + uVar2;
  uVar4 = uVar4 >> 2 | uVar4 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x24) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x18) ^ *(uint *)(*(int *)(this + 0xc0) + 4) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x2c);
  *(uint *)(iVar9 + 0x24) = uVar1 >> 0x1f | uVar1 << 1;
  uVar8 = (uVar3 ^ uVar4 ^ uVar5) + *(int *)(iVar9 + 0x24) + (uVar2 >> 0x1b | uVar2 * 0x20) +
          0x6ed9eba1 + uVar8;
  uVar3 = uVar3 >> 2 | uVar3 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x28) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x1c) ^ *(uint *)(*(int *)(this + 0xc0) + 8) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x30);
  *(uint *)(iVar9 + 0x28) = uVar1 >> 0x1f | uVar1 << 1;
  uVar5 = (uVar2 ^ uVar3 ^ uVar4) + *(int *)(iVar9 + 0x28) + (uVar8 >> 0x1b | uVar8 * 0x20) +
          0x6ed9eba1 + uVar5;
  uVar2 = uVar2 >> 2 | uVar2 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x2c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x20) ^ *(uint *)(*(int *)(this + 0xc0) + 0xc) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x34);
  *(uint *)(iVar9 + 0x2c) = uVar1 >> 0x1f | uVar1 << 1;
  uVar4 = (uVar8 ^ uVar2 ^ uVar3) + *(int *)(iVar9 + 0x2c) + (uVar5 >> 0x1b | uVar5 * 0x20) +
          0x6ed9eba1 + uVar4;
  uVar8 = uVar8 >> 2 | uVar8 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x30) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x24) ^ *(uint *)(*(int *)(this + 0xc0) + 0x10) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x38);
  *(uint *)(iVar9 + 0x30) = uVar1 >> 0x1f | uVar1 << 1;
  uVar3 = (uVar5 ^ uVar8 ^ uVar2) + *(int *)(iVar9 + 0x30) + (uVar4 >> 0x1b | uVar4 * 0x20) +
          0x6ed9eba1 + uVar3;
  uVar5 = uVar5 >> 2 | uVar5 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x34) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x28) ^ *(uint *)(*(int *)(this + 0xc0) + 0x14) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x3c);
  *(uint *)(iVar9 + 0x34) = uVar1 >> 0x1f | uVar1 << 1;
  uVar2 = (uVar4 ^ uVar5 ^ uVar8) + *(int *)(iVar9 + 0x34) + (uVar3 >> 0x1b | uVar3 * 0x20) +
          0x6ed9eba1 + uVar2;
  uVar4 = uVar4 >> 2 | uVar4 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x38) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x2c) ^ *(uint *)(*(int *)(this + 0xc0) + 0x18) ^
          **(uint **)(this + 0xc0);
  *(uint *)(iVar9 + 0x38) = uVar1 >> 0x1f | uVar1 << 1;
  uVar8 = (uVar3 ^ uVar4 ^ uVar5) + *(int *)(iVar9 + 0x38) + (uVar2 >> 0x1b | uVar2 * 0x20) +
          0x6ed9eba1 + uVar8;
  uVar3 = uVar3 >> 2 | uVar3 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x3c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x30) ^ *(uint *)(*(int *)(this + 0xc0) + 0x1c) ^
          *(uint *)(*(int *)(this + 0xc0) + 4);
  *(uint *)(iVar9 + 0x3c) = uVar1 >> 0x1f | uVar1 << 1;
  uVar5 = (uVar2 ^ uVar3 ^ uVar4) + *(int *)(iVar9 + 0x3c) + (uVar8 >> 0x1b | uVar8 * 0x20) +
          0x6ed9eba1 + uVar5;
  uVar2 = uVar2 >> 2 | uVar2 * 0x40000000;
  puVar7 = *(uint **)(this + 0xc0);
  uVar1 = **(uint **)(this + 0xc0) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x34) ^ *(uint *)(*(int *)(this + 0xc0) + 0x20) ^
          *(uint *)(*(int *)(this + 0xc0) + 8);
  *puVar7 = uVar1 >> 0x1f | uVar1 << 1;
  uVar4 = (uVar8 ^ uVar2 ^ uVar3) + *puVar7 + (uVar5 >> 0x1b | uVar5 * 0x20) + 0x6ed9eba1 + uVar4;
  uVar8 = uVar8 >> 2 | uVar8 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 4) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x38) ^ *(uint *)(*(int *)(this + 0xc0) + 0x24) ^
          *(uint *)(*(int *)(this + 0xc0) + 0xc);
  *(uint *)(iVar9 + 4) = uVar1 >> 0x1f | uVar1 << 1;
  uVar3 = (uVar5 ^ uVar8 ^ uVar2) + *(int *)(iVar9 + 4) + (uVar4 >> 0x1b | uVar4 * 0x20) +
          0x6ed9eba1 + uVar3;
  uVar5 = uVar5 >> 2 | uVar5 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 8) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x3c) ^ *(uint *)(*(int *)(this + 0xc0) + 0x28) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x10);
  *(uint *)(iVar9 + 8) = uVar1 >> 0x1f | uVar1 << 1;
  uVar2 = (uVar4 ^ uVar5 ^ uVar8) + *(int *)(iVar9 + 8) + (uVar3 >> 0x1b | uVar3 * 0x20) +
          0x6ed9eba1 + uVar2;
  uVar4 = uVar4 >> 2 | uVar4 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0xc) ^
          **(uint **)(this + 0xc0) ^ *(uint *)(*(int *)(this + 0xc0) + 0x2c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x14);
  *(uint *)(iVar9 + 0xc) = uVar1 >> 0x1f | uVar1 << 1;
  uVar8 = (uVar3 ^ uVar4 ^ uVar5) + *(int *)(iVar9 + 0xc) + (uVar2 >> 0x1b | uVar2 * 0x20) +
          0x6ed9eba1 + uVar8;
  uVar3 = uVar3 >> 2 | uVar3 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x10) ^
          *(uint *)(*(int *)(this + 0xc0) + 4) ^ *(uint *)(*(int *)(this + 0xc0) + 0x30) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x18);
  *(uint *)(iVar9 + 0x10) = uVar1 >> 0x1f | uVar1 << 1;
  uVar5 = (uVar2 ^ uVar3 ^ uVar4) + *(int *)(iVar9 + 0x10) + (uVar8 >> 0x1b | uVar8 * 0x20) +
          0x6ed9eba1 + uVar5;
  uVar2 = uVar2 >> 2 | uVar2 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x14) ^
          *(uint *)(*(int *)(this + 0xc0) + 8) ^ *(uint *)(*(int *)(this + 0xc0) + 0x34) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x1c);
  *(uint *)(iVar9 + 0x14) = uVar1 >> 0x1f | uVar1 << 1;
  uVar4 = (uVar8 ^ uVar2 ^ uVar3) + *(int *)(iVar9 + 0x14) + (uVar5 >> 0x1b | uVar5 * 0x20) +
          0x6ed9eba1 + uVar4;
  uVar8 = uVar8 >> 2 | uVar8 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x18) ^
          *(uint *)(*(int *)(this + 0xc0) + 0xc) ^ *(uint *)(*(int *)(this + 0xc0) + 0x38) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x20);
  *(uint *)(iVar9 + 0x18) = uVar1 >> 0x1f | uVar1 << 1;
  uVar3 = (uVar5 ^ uVar8 ^ uVar2) + *(int *)(iVar9 + 0x18) + (uVar4 >> 0x1b | uVar4 * 0x20) +
          0x6ed9eba1 + uVar3;
  uVar5 = uVar5 >> 2 | uVar5 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x1c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x10) ^ *(uint *)(*(int *)(this + 0xc0) + 0x3c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x24);
  *(uint *)(iVar9 + 0x1c) = uVar1 >> 0x1f | uVar1 << 1;
  uVar2 = (uVar4 ^ uVar5 ^ uVar8) + *(int *)(iVar9 + 0x1c) + (uVar3 >> 0x1b | uVar3 * 0x20) +
          0x6ed9eba1 + uVar2;
  uVar4 = uVar4 >> 2 | uVar4 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x20) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x14) ^ **(uint **)(this + 0xc0) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x28);
  *(uint *)(iVar9 + 0x20) = uVar1 >> 0x1f | uVar1 << 1;
  uVar8 = ((uVar3 | uVar4) & uVar5 | uVar4 & uVar3) + *(int *)(iVar9 + 0x20) +
          (uVar2 >> 0x1b | uVar2 * 0x20) + -0x70e44324 + uVar8;
  uVar3 = uVar3 >> 2 | uVar3 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x24) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x18) ^ *(uint *)(*(int *)(this + 0xc0) + 4) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x2c);
  *(uint *)(iVar9 + 0x24) = uVar1 >> 0x1f | uVar1 << 1;
  uVar5 = ((uVar2 | uVar3) & uVar4 | uVar3 & uVar2) + *(int *)(iVar9 + 0x24) +
          (uVar8 >> 0x1b | uVar8 * 0x20) + -0x70e44324 + uVar5;
  uVar2 = uVar2 >> 2 | uVar2 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x28) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x1c) ^ *(uint *)(*(int *)(this + 0xc0) + 8) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x30);
  *(uint *)(iVar9 + 0x28) = uVar1 >> 0x1f | uVar1 << 1;
  uVar4 = ((uVar8 | uVar2) & uVar3 | uVar2 & uVar8) + *(int *)(iVar9 + 0x28) +
          (uVar5 >> 0x1b | uVar5 * 0x20) + -0x70e44324 + uVar4;
  uVar8 = uVar8 >> 2 | uVar8 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x2c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x20) ^ *(uint *)(*(int *)(this + 0xc0) + 0xc) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x34);
  *(uint *)(iVar9 + 0x2c) = uVar1 >> 0x1f | uVar1 << 1;
  uVar3 = ((uVar5 | uVar8) & uVar2 | uVar8 & uVar5) + *(int *)(iVar9 + 0x2c) +
          (uVar4 >> 0x1b | uVar4 * 0x20) + -0x70e44324 + uVar3;
  uVar5 = uVar5 >> 2 | uVar5 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x30) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x24) ^ *(uint *)(*(int *)(this + 0xc0) + 0x10) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x38);
  *(uint *)(iVar9 + 0x30) = uVar1 >> 0x1f | uVar1 << 1;
  uVar2 = ((uVar4 | uVar5) & uVar8 | uVar5 & uVar4) + *(int *)(iVar9 + 0x30) +
          (uVar3 >> 0x1b | uVar3 * 0x20) + -0x70e44324 + uVar2;
  uVar4 = uVar4 >> 2 | uVar4 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x34) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x28) ^ *(uint *)(*(int *)(this + 0xc0) + 0x14) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x3c);
  *(uint *)(iVar9 + 0x34) = uVar1 >> 0x1f | uVar1 << 1;
  uVar8 = ((uVar3 | uVar4) & uVar5 | uVar4 & uVar3) + *(int *)(iVar9 + 0x34) +
          (uVar2 >> 0x1b | uVar2 * 0x20) + -0x70e44324 + uVar8;
  uVar3 = uVar3 >> 2 | uVar3 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x38) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x2c) ^ *(uint *)(*(int *)(this + 0xc0) + 0x18) ^
          **(uint **)(this + 0xc0);
  *(uint *)(iVar9 + 0x38) = uVar1 >> 0x1f | uVar1 << 1;
  uVar5 = ((uVar2 | uVar3) & uVar4 | uVar3 & uVar2) + *(int *)(iVar9 + 0x38) +
          (uVar8 >> 0x1b | uVar8 * 0x20) + -0x70e44324 + uVar5;
  uVar2 = uVar2 >> 2 | uVar2 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x3c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x30) ^ *(uint *)(*(int *)(this + 0xc0) + 0x1c) ^
          *(uint *)(*(int *)(this + 0xc0) + 4);
  *(uint *)(iVar9 + 0x3c) = uVar1 >> 0x1f | uVar1 << 1;
  uVar4 = ((uVar8 | uVar2) & uVar3 | uVar2 & uVar8) + *(int *)(iVar9 + 0x3c) +
          (uVar5 >> 0x1b | uVar5 * 0x20) + -0x70e44324 + uVar4;
  uVar8 = uVar8 >> 2 | uVar8 * 0x40000000;
  puVar7 = *(uint **)(this + 0xc0);
  uVar1 = **(uint **)(this + 0xc0) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x34) ^ *(uint *)(*(int *)(this + 0xc0) + 0x20) ^
          *(uint *)(*(int *)(this + 0xc0) + 8);
  *puVar7 = uVar1 >> 0x1f | uVar1 << 1;
  uVar3 = ((uVar5 | uVar8) & uVar2 | uVar8 & uVar5) + *puVar7 + (uVar4 >> 0x1b | uVar4 * 0x20) +
          -0x70e44324 + uVar3;
  uVar5 = uVar5 >> 2 | uVar5 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 4) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x38) ^ *(uint *)(*(int *)(this + 0xc0) + 0x24) ^
          *(uint *)(*(int *)(this + 0xc0) + 0xc);
  *(uint *)(iVar9 + 4) = uVar1 >> 0x1f | uVar1 << 1;
  uVar2 = ((uVar4 | uVar5) & uVar8 | uVar5 & uVar4) + *(int *)(iVar9 + 4) +
          (uVar3 >> 0x1b | uVar3 * 0x20) + -0x70e44324 + uVar2;
  uVar4 = uVar4 >> 2 | uVar4 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 8) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x3c) ^ *(uint *)(*(int *)(this + 0xc0) + 0x28) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x10);
  *(uint *)(iVar9 + 8) = uVar1 >> 0x1f | uVar1 << 1;
  uVar8 = ((uVar3 | uVar4) & uVar5 | uVar4 & uVar3) + *(int *)(iVar9 + 8) +
          (uVar2 >> 0x1b | uVar2 * 0x20) + -0x70e44324 + uVar8;
  uVar3 = uVar3 >> 2 | uVar3 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0xc) ^
          **(uint **)(this + 0xc0) ^ *(uint *)(*(int *)(this + 0xc0) + 0x2c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x14);
  *(uint *)(iVar9 + 0xc) = uVar1 >> 0x1f | uVar1 << 1;
  uVar5 = ((uVar2 | uVar3) & uVar4 | uVar3 & uVar2) + *(int *)(iVar9 + 0xc) +
          (uVar8 >> 0x1b | uVar8 * 0x20) + -0x70e44324 + uVar5;
  uVar2 = uVar2 >> 2 | uVar2 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x10) ^
          *(uint *)(*(int *)(this + 0xc0) + 4) ^ *(uint *)(*(int *)(this + 0xc0) + 0x30) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x18);
  *(uint *)(iVar9 + 0x10) = uVar1 >> 0x1f | uVar1 << 1;
  uVar4 = ((uVar8 | uVar2) & uVar3 | uVar2 & uVar8) + *(int *)(iVar9 + 0x10) +
          (uVar5 >> 0x1b | uVar5 * 0x20) + -0x70e44324 + uVar4;
  uVar8 = uVar8 >> 2 | uVar8 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x14) ^
          *(uint *)(*(int *)(this + 0xc0) + 8) ^ *(uint *)(*(int *)(this + 0xc0) + 0x34) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x1c);
  *(uint *)(iVar9 + 0x14) = uVar1 >> 0x1f | uVar1 << 1;
  uVar3 = ((uVar5 | uVar8) & uVar2 | uVar8 & uVar5) + *(int *)(iVar9 + 0x14) +
          (uVar4 >> 0x1b | uVar4 * 0x20) + -0x70e44324 + uVar3;
  uVar5 = uVar5 >> 2 | uVar5 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x18) ^
          *(uint *)(*(int *)(this + 0xc0) + 0xc) ^ *(uint *)(*(int *)(this + 0xc0) + 0x38) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x20);
  *(uint *)(iVar9 + 0x18) = uVar1 >> 0x1f | uVar1 << 1;
  uVar2 = ((uVar4 | uVar5) & uVar8 | uVar5 & uVar4) + *(int *)(iVar9 + 0x18) +
          (uVar3 >> 0x1b | uVar3 * 0x20) + -0x70e44324 + uVar2;
  uVar4 = uVar4 >> 2 | uVar4 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x1c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x10) ^ *(uint *)(*(int *)(this + 0xc0) + 0x3c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x24);
  *(uint *)(iVar9 + 0x1c) = uVar1 >> 0x1f | uVar1 << 1;
  uVar8 = ((uVar3 | uVar4) & uVar5 | uVar4 & uVar3) + *(int *)(iVar9 + 0x1c) +
          (uVar2 >> 0x1b | uVar2 * 0x20) + -0x70e44324 + uVar8;
  uVar3 = uVar3 >> 2 | uVar3 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x20) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x14) ^ **(uint **)(this + 0xc0) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x28);
  *(uint *)(iVar9 + 0x20) = uVar1 >> 0x1f | uVar1 << 1;
  uVar5 = ((uVar2 | uVar3) & uVar4 | uVar3 & uVar2) + *(int *)(iVar9 + 0x20) +
          (uVar8 >> 0x1b | uVar8 * 0x20) + -0x70e44324 + uVar5;
  uVar2 = uVar2 >> 2 | uVar2 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x24) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x18) ^ *(uint *)(*(int *)(this + 0xc0) + 4) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x2c);
  *(uint *)(iVar9 + 0x24) = uVar1 >> 0x1f | uVar1 << 1;
  uVar4 = ((uVar8 | uVar2) & uVar3 | uVar2 & uVar8) + *(int *)(iVar9 + 0x24) +
          (uVar5 >> 0x1b | uVar5 * 0x20) + -0x70e44324 + uVar4;
  uVar8 = uVar8 >> 2 | uVar8 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x28) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x1c) ^ *(uint *)(*(int *)(this + 0xc0) + 8) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x30);
  *(uint *)(iVar9 + 0x28) = uVar1 >> 0x1f | uVar1 << 1;
  uVar3 = ((uVar5 | uVar8) & uVar2 | uVar8 & uVar5) + *(int *)(iVar9 + 0x28) +
          (uVar4 >> 0x1b | uVar4 * 0x20) + -0x70e44324 + uVar3;
  uVar5 = uVar5 >> 2 | uVar5 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x2c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x20) ^ *(uint *)(*(int *)(this + 0xc0) + 0xc) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x34);
  *(uint *)(iVar9 + 0x2c) = uVar1 >> 0x1f | uVar1 << 1;
  uVar2 = ((uVar4 | uVar5) & uVar8 | uVar5 & uVar4) + *(int *)(iVar9 + 0x2c) +
          (uVar3 >> 0x1b | uVar3 * 0x20) + -0x70e44324 + uVar2;
  uVar4 = uVar4 >> 2 | uVar4 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x30) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x24) ^ *(uint *)(*(int *)(this + 0xc0) + 0x10) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x38);
  *(uint *)(iVar9 + 0x30) = uVar1 >> 0x1f | uVar1 << 1;
  uVar8 = (uVar3 ^ uVar4 ^ uVar5) + *(int *)(iVar9 + 0x30) + (uVar2 >> 0x1b | uVar2 * 0x20) +
          -0x359d3e2a + uVar8;
  uVar3 = uVar3 >> 2 | uVar3 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x34) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x28) ^ *(uint *)(*(int *)(this + 0xc0) + 0x14) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x3c);
  *(uint *)(iVar9 + 0x34) = uVar1 >> 0x1f | uVar1 << 1;
  uVar5 = (uVar2 ^ uVar3 ^ uVar4) + *(int *)(iVar9 + 0x34) + (uVar8 >> 0x1b | uVar8 * 0x20) +
          -0x359d3e2a + uVar5;
  uVar2 = uVar2 >> 2 | uVar2 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x38) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x2c) ^ *(uint *)(*(int *)(this + 0xc0) + 0x18) ^
          **(uint **)(this + 0xc0);
  *(uint *)(iVar9 + 0x38) = uVar1 >> 0x1f | uVar1 << 1;
  uVar4 = (uVar8 ^ uVar2 ^ uVar3) + *(int *)(iVar9 + 0x38) + (uVar5 >> 0x1b | uVar5 * 0x20) +
          -0x359d3e2a + uVar4;
  uVar8 = uVar8 >> 2 | uVar8 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x3c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x30) ^ *(uint *)(*(int *)(this + 0xc0) + 0x1c) ^
          *(uint *)(*(int *)(this + 0xc0) + 4);
  *(uint *)(iVar9 + 0x3c) = uVar1 >> 0x1f | uVar1 << 1;
  uVar3 = (uVar5 ^ uVar8 ^ uVar2) + *(int *)(iVar9 + 0x3c) + (uVar4 >> 0x1b | uVar4 * 0x20) +
          -0x359d3e2a + uVar3;
  uVar5 = uVar5 >> 2 | uVar5 * 0x40000000;
  puVar7 = *(uint **)(this + 0xc0);
  uVar1 = **(uint **)(this + 0xc0) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x34) ^ *(uint *)(*(int *)(this + 0xc0) + 0x20) ^
          *(uint *)(*(int *)(this + 0xc0) + 8);
  *puVar7 = uVar1 >> 0x1f | uVar1 << 1;
  uVar2 = (uVar4 ^ uVar5 ^ uVar8) + *puVar7 + (uVar3 >> 0x1b | uVar3 * 0x20) + -0x359d3e2a + uVar2;
  uVar4 = uVar4 >> 2 | uVar4 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 4) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x38) ^ *(uint *)(*(int *)(this + 0xc0) + 0x24) ^
          *(uint *)(*(int *)(this + 0xc0) + 0xc);
  *(uint *)(iVar9 + 4) = uVar1 >> 0x1f | uVar1 << 1;
  uVar8 = (uVar3 ^ uVar4 ^ uVar5) + *(int *)(iVar9 + 4) + (uVar2 >> 0x1b | uVar2 * 0x20) +
          -0x359d3e2a + uVar8;
  uVar3 = uVar3 >> 2 | uVar3 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 8) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x3c) ^ *(uint *)(*(int *)(this + 0xc0) + 0x28) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x10);
  *(uint *)(iVar9 + 8) = uVar1 >> 0x1f | uVar1 << 1;
  uVar5 = (uVar2 ^ uVar3 ^ uVar4) + *(int *)(iVar9 + 8) + (uVar8 >> 0x1b | uVar8 * 0x20) +
          -0x359d3e2a + uVar5;
  uVar2 = uVar2 >> 2 | uVar2 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0xc) ^
          **(uint **)(this + 0xc0) ^ *(uint *)(*(int *)(this + 0xc0) + 0x2c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x14);
  *(uint *)(iVar9 + 0xc) = uVar1 >> 0x1f | uVar1 << 1;
  uVar4 = (uVar8 ^ uVar2 ^ uVar3) + *(int *)(iVar9 + 0xc) + (uVar5 >> 0x1b | uVar5 * 0x20) +
          -0x359d3e2a + uVar4;
  uVar8 = uVar8 >> 2 | uVar8 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x10) ^
          *(uint *)(*(int *)(this + 0xc0) + 4) ^ *(uint *)(*(int *)(this + 0xc0) + 0x30) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x18);
  *(uint *)(iVar9 + 0x10) = uVar1 >> 0x1f | uVar1 << 1;
  uVar3 = (uVar5 ^ uVar8 ^ uVar2) + *(int *)(iVar9 + 0x10) + (uVar4 >> 0x1b | uVar4 * 0x20) +
          -0x359d3e2a + uVar3;
  uVar5 = uVar5 >> 2 | uVar5 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x14) ^
          *(uint *)(*(int *)(this + 0xc0) + 8) ^ *(uint *)(*(int *)(this + 0xc0) + 0x34) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x1c);
  *(uint *)(iVar9 + 0x14) = uVar1 >> 0x1f | uVar1 << 1;
  uVar2 = (uVar4 ^ uVar5 ^ uVar8) + *(int *)(iVar9 + 0x14) + (uVar3 >> 0x1b | uVar3 * 0x20) +
          -0x359d3e2a + uVar2;
  uVar4 = uVar4 >> 2 | uVar4 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x18) ^
          *(uint *)(*(int *)(this + 0xc0) + 0xc) ^ *(uint *)(*(int *)(this + 0xc0) + 0x38) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x20);
  *(uint *)(iVar9 + 0x18) = uVar1 >> 0x1f | uVar1 << 1;
  uVar8 = (uVar3 ^ uVar4 ^ uVar5) + *(int *)(iVar9 + 0x18) + (uVar2 >> 0x1b | uVar2 * 0x20) +
          -0x359d3e2a + uVar8;
  uVar3 = uVar3 >> 2 | uVar3 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x1c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x10) ^ *(uint *)(*(int *)(this + 0xc0) + 0x3c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x24);
  *(uint *)(iVar9 + 0x1c) = uVar1 >> 0x1f | uVar1 << 1;
  uVar5 = (uVar2 ^ uVar3 ^ uVar4) + *(int *)(iVar9 + 0x1c) + (uVar8 >> 0x1b | uVar8 * 0x20) +
          -0x359d3e2a + uVar5;
  uVar2 = uVar2 >> 2 | uVar2 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x20) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x14) ^ **(uint **)(this + 0xc0) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x28);
  *(uint *)(iVar9 + 0x20) = uVar1 >> 0x1f | uVar1 << 1;
  uVar4 = (uVar8 ^ uVar2 ^ uVar3) + *(int *)(iVar9 + 0x20) + (uVar5 >> 0x1b | uVar5 * 0x20) +
          -0x359d3e2a + uVar4;
  uVar8 = uVar8 >> 2 | uVar8 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x24) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x18) ^ *(uint *)(*(int *)(this + 0xc0) + 4) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x2c);
  *(uint *)(iVar9 + 0x24) = uVar1 >> 0x1f | uVar1 << 1;
  uVar3 = (uVar5 ^ uVar8 ^ uVar2) + *(int *)(iVar9 + 0x24) + (uVar4 >> 0x1b | uVar4 * 0x20) +
          -0x359d3e2a + uVar3;
  uVar5 = uVar5 >> 2 | uVar5 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x28) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x1c) ^ *(uint *)(*(int *)(this + 0xc0) + 8) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x30);
  *(uint *)(iVar9 + 0x28) = uVar1 >> 0x1f | uVar1 << 1;
  uVar2 = (uVar4 ^ uVar5 ^ uVar8) + *(int *)(iVar9 + 0x28) + (uVar3 >> 0x1b | uVar3 * 0x20) +
          -0x359d3e2a + uVar2;
  uVar4 = uVar4 >> 2 | uVar4 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x2c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x20) ^ *(uint *)(*(int *)(this + 0xc0) + 0xc) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x34);
  *(uint *)(iVar9 + 0x2c) = uVar1 >> 0x1f | uVar1 << 1;
  uVar8 = (uVar3 ^ uVar4 ^ uVar5) + *(int *)(iVar9 + 0x2c) + (uVar2 >> 0x1b | uVar2 * 0x20) +
          -0x359d3e2a + uVar8;
  uVar3 = uVar3 >> 2 | uVar3 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x30) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x24) ^ *(uint *)(*(int *)(this + 0xc0) + 0x10) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x38);
  *(uint *)(iVar9 + 0x30) = uVar1 >> 0x1f | uVar1 << 1;
  uVar5 = (uVar2 ^ uVar3 ^ uVar4) + *(int *)(iVar9 + 0x30) + (uVar8 >> 0x1b | uVar8 * 0x20) +
          -0x359d3e2a + uVar5;
  uVar2 = uVar2 >> 2 | uVar2 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x34) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x28) ^ *(uint *)(*(int *)(this + 0xc0) + 0x14) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x3c);
  *(uint *)(iVar9 + 0x34) = uVar1 >> 0x1f | uVar1 << 1;
  uVar4 = (uVar8 ^ uVar2 ^ uVar3) + *(int *)(iVar9 + 0x34) + (uVar5 >> 0x1b | uVar5 * 0x20) +
          -0x359d3e2a + uVar4;
  uVar8 = uVar8 >> 2 | uVar8 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x38) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x2c) ^ *(uint *)(*(int *)(this + 0xc0) + 0x18) ^
          **(uint **)(this + 0xc0);
  *(uint *)(iVar9 + 0x38) = uVar1 >> 0x1f | uVar1 << 1;
  uVar3 = (uVar5 ^ uVar8 ^ uVar2) + *(int *)(iVar9 + 0x38) + (uVar4 >> 0x1b | uVar4 * 0x20) +
          -0x359d3e2a + uVar3;
  uVar5 = uVar5 >> 2 | uVar5 * 0x40000000;
  iVar9 = *(int *)(this + 0xc0);
  uVar1 = *(uint *)(*(int *)(this + 0xc0) + 0x3c) ^
          *(uint *)(*(int *)(this + 0xc0) + 0x30) ^ *(uint *)(*(int *)(this + 0xc0) + 0x1c) ^
          *(uint *)(*(int *)(this + 0xc0) + 4);
  *(uint *)(iVar9 + 0x3c) = uVar1 >> 0x1f | uVar1 << 1;
  *param_1 = *param_1 +
             (uVar4 ^ uVar5 ^ uVar8) + *(int *)(iVar9 + 0x3c) + (uVar3 >> 0x1b | uVar3 * 0x20) +
             -0x359d3e2a + uVar2;
  param_1[1] = uVar3 + param_1[1];
  param_1[2] = (uVar4 >> 2 | uVar4 * 0x40000000) + param_1[2];
  param_1[3] = uVar5 + param_1[3];
  param_1[4] = uVar8 + param_1[4];
  return;
}

// ---- CSHA1::Update  @ 0x47e9ac
/* CSHA1::Update(unsigned char const*, unsigned long) */

void __thiscall CSHA1::Update(CSHA1 *this,uchar *param_1,ulong param_2)

{
  uint local_10;
  ulong local_c;
  
  local_10 = *(uint *)(this + 0x14) >> 3 & 0x3f;
  *(ulong *)(this + 0x14) = *(int *)(this + 0x14) + param_2 * 8;
  if (*(uint *)(this + 0x14) < param_2 << 3) {
    *(int *)(this + 0x18) = *(int *)(this + 0x18) + 1;
  }
  *(ulong *)(this + 0x18) = *(int *)(this + 0x18) + (param_2 >> 0x1d);
  if (param_2 + local_10 < 0x40) {
    local_c = 0;
  }
  else {
    local_c = 0x40 - local_10;
    memcpy(this + local_10 + 0x20,param_1,local_c);
    Transform(this,(ulong *)this,(uchar *)(this + 0x20));
    for (; local_c + 0x3f < param_2; local_c = local_c + 0x40) {
      Transform(this,(ulong *)this,param_1 + local_c);
    }
    local_10 = 0;
  }
  if (param_2 != local_c) {
    memcpy(this + local_10 + 0x20,param_1 + local_c,param_2 - local_c);
  }
  return;
}

// ---- CSHA1::HashFile  @ 0x47ea90
/* CSHA1::HashFile(char const*) */

bool __thiscall CSHA1::HashFile(CSHA1 *this,char *param_1)

{
  FILE *__stream;
  uchar *__ptr;
  size_t sVar1;
  bool bVar2;
  
  if (param_1 == (char *)0x0) {
    bVar2 = false;
  }
  else {
    __stream = fopen(param_1,"rb");
    if (__stream == (FILE *)0x0) {
      bVar2 = false;
    }
    else {
      __ptr = operator_new__(0x80200);
      if (__ptr == (uchar *)0x0) {
        fclose(__stream);
        bVar2 = false;
      }
      else {
        do {
          sVar1 = fread(__ptr,1,0x80200,__stream);
          if (sVar1 != 0) {
            Update(this,__ptr,sVar1);
          }
        } while (0x801ff < sVar1);
        bVar2 = ((uint)__stream->_IO_read_base & 0x20) != 0;
        fclose(__stream);
        if (__ptr != (uchar *)0x0) {
          operator_delete__(__ptr);
        }
      }
    }
  }
  return bVar2;
}

// ---- CSHA1::Final  @ 0x47eb54
/* CSHA1::Final() */

void __thiscall CSHA1::Final(CSHA1 *this)

{
  uint local_18;
  uchar auStack_14 [8];
  int local_c;
  
  local_c = __stack_chk_guard;
  for (local_18 = 0; local_18 < 8; local_18 = local_18 + 1) {
    auStack_14[local_18] =
         (uchar)(*(uint *)(this + ((local_18 < 4) + 4) * 4 + 4) >> ((~local_18 & 3) << 3));
  }
  Update(this,&DAT_007f2290,1);
  while ((*(uint *)(this + 0x14) & 0x1f8) != 0x1c0) {
    Update(this,"",1);
  }
  Update(this,auStack_14,8);
  for (local_18 = 0; local_18 < 0x14; local_18 = local_18 + 1) {
    this[local_18 + 0x60] =
         SUB41(*(uint *)(this + (local_18 & 0xfffffffc)) >> ((~local_18 & 3) << 3),0);
  }
  memset(this + 0x20,0,0x40);
  memset(this,0,0x14);
  memset(this + 0x14,0,8);
  memset(auStack_14,0,8);
  Transform(this,(ulong *)this,(uchar *)(this + 0x20));
  if (local_c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

// ---- CSHA1::ReportHash  @ 0x47ec7c
/* CSHA1::ReportHash(char*, CSHA1::REPORT_TYPE) const */

void __thiscall CSHA1::ReportHash(CSHA1 *this,char *param_1,int param_3)

{
  undefined4 uVar1;
  char *__format;
  uint local_28;
  uint local_24;
  char acStack_1c [16];
  int local_c;
  
  local_c = __stack_chk_guard;
  if (param_1 == (char *)0x0) {
    uVar1 = 0;
  }
  else {
    if ((param_3 == 0) || (param_3 == 2)) {
      snprintf(acStack_1c,0xf,"%02X",(uint)(byte)this[0x60]);
      strcpy(param_1,acStack_1c);
      if (param_3 == 0) {
        __format = " %02X";
      }
      else {
        __format = "%02X";
      }
      for (local_28 = 1; local_28 < 0x14; local_28 = local_28 + 1) {
        snprintf(acStack_1c,0xf,__format,(uint)(byte)this[local_28 + 0x60]);
        strcat(param_1,acStack_1c);
      }
    }
    else {
      if (param_3 != 1) {
        uVar1 = 0;
        goto LAB_0047ed6c;
      }
      snprintf(acStack_1c,0xf,"%u",(uint)(byte)this[0x60]);
      strcpy(param_1,acStack_1c);
      for (local_24 = 1; local_24 < 0x14; local_24 = local_24 + 1) {
        snprintf(acStack_1c,0xf," %u",(uint)(byte)this[local_24 + 0x60]);
        strcat(param_1,acStack_1c);
      }
    }
    uVar1 = 1;
  }
LAB_0047ed6c:
  if (local_c == __stack_chk_guard) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar1);
}

// ---- CSHA1::ReportHashStl  @ 0x47eda0
/* CSHA1::ReportHashStl(std::string&, CSHA1::REPORT_TYPE) const */

void __thiscall CSHA1::ReportHashStl(CSHA1 *this,undefined4 param_1,undefined4 param_3)

{
  char cVar1;
  undefined1 auStack_60 [84];
  int local_c;
  
  local_c = __stack_chk_guard;
  cVar1 = ReportHash(this,auStack_60,param_3);
  if (cVar1 != '\0') {
    FUN_007c5e70(param_1,auStack_60);
  }
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(cVar1);
  }
  return;
}

// ---- CSHA1::GetHash  @ 0x47edfc
/* CSHA1::GetHash(unsigned char*) const */

bool __thiscall CSHA1::GetHash(CSHA1 *this,uchar *param_1)

{
  if (param_1 != (uchar *)0x0) {
    memcpy(param_1,this + 0x60,0x14);
  }
  return param_1 != (uchar *)0x0;
}

// ---- CSHA1::GetHash  @ 0x47ee28
/* CSHA1::GetHash() const */

CSHA1 * __thiscall CSHA1::GetHash(CSHA1 *this)

{
  return this + 0x60;
}

// ---- CSHA1::HMAC  @ 0x47ee38
/* CSHA1::HMAC(unsigned char*, int, unsigned char*, int, unsigned char*) */

void CSHA1::HMAC(uchar *param_1,int param_2,uchar *param_3,int param_4,uchar *param_5)

{
  uchar *puVar1;
  void *__src;
  size_t local_220;
  int local_218;
  byte abStack_214 [64];
  byte abStack_1d4 [64];
  CSHA1 aCStack_194 [196];
  CSHA1 aCStack_d0 [196];
  int local_c;
  
  local_c = __stack_chk_guard;
  local_220 = param_2;
  if (0x40 < param_2) {
    local_220 = 0x40;
  }
  memset(abStack_214,0,0x40);
  memset(abStack_1d4,0,0x40);
  memcpy(abStack_214,param_1,local_220);
  memcpy(abStack_1d4,param_1,local_220);
  for (local_218 = 0; local_218 < 0x40; local_218 = local_218 + 1) {
    abStack_214[local_218] = abStack_214[local_218] ^ 0x36;
    abStack_1d4[local_218] = abStack_1d4[local_218] ^ 0x5c;
  }
  CSHA1(aCStack_194);
  Reset(aCStack_194);
  Update(aCStack_194,abStack_214,0x40);
  Update(aCStack_194,param_3,param_4);
  Final(aCStack_194);
  CSHA1(aCStack_d0);
  Reset(aCStack_d0);
  Update(aCStack_d0,abStack_1d4,0x40);
  puVar1 = (uchar *)GetHash(aCStack_194);
  Update(aCStack_d0,puVar1,0x14);
  Final(aCStack_d0);
  __src = (void *)GetHash(aCStack_d0);
  memcpy(param_5,__src,0x14);
  ~CSHA1(aCStack_d0);
  ~CSHA1(aCStack_194);
  if (local_c != __stack_chk_guard) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}
