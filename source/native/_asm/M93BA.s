// M93BA: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 20 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../M93BA.cpp

// ==== M93BA::M93BA
//      file offset 0x357abc (= ELF address; Ghidra 0x367abc), 44 bytes, Thumb-2
  357abc: b510         	push	{r4, lr}
  357abe: b082         	sub	sp, #0x8
  357ac0: 9001         	str	r0, [sp, #0x4]
  357ac2: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x357ae0 <M93BA::M93BA()+0x24>
  357ac4: 447c         	add	r4, pc
  357ac6: 9b01         	ldr	r3, [sp, #0x4]
  357ac8: 4618         	mov	r0, r3
  357aca: f0bd fa6d    	bl	0x414fa8 <Weapon::Weapon()> @ imm = #0xbd4da
  357ace: 9b01         	ldr	r3, [sp, #0x4]
  357ad0: 4a04         	ldr	r2, [pc, #0x10]         @ 0x357ae4 <M93BA::M93BA()+0x28>
  357ad2: 58a2         	ldr	r2, [r4, r2]
  357ad4: 3208         	adds	r2, #0x8
  357ad6: 601a         	str	r2, [r3]
  357ad8: 9b01         	ldr	r3, [sp, #0x4]
  357ada: 4618         	mov	r0, r3
  357adc: b002         	add	sp, #0x8
  357ade: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x357adf); words below are literal-pool data ---
  357ae0: af44         	add	r7, sp, #0x110
  357ae2: 005d         	lsls	r5, r3, #0x1
  357ae4: db80         	blt	0x3579e8 <M16::getDAMAGE()+0xe6c> @ imm = #-0x100
  357ae6: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== M93BA::init
//      file offset 0x357ae8 (= ELF address; Ghidra 0x367ae8), 1072 bytes, Thumb-2
  357ae8: b530         	push	{r4, r5, lr}
  357aea: b08b         	sub	sp, #0x2c
  357aec: 9005         	str	r0, [sp, #0x14]
  357aee: 9b05         	ldr	r3, [sp, #0x14]
  357af0: 4618         	mov	r0, r3
  357af2: f0bd fa7d    	bl	0x414ff0 <Weapon::init()> @ imm = #0xbd4fa
  357af6: 4603         	mov	r3, r0
  357af8: f88d 301f    	strb.w	r3, [sp, #0x1f]
  357afc: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  357b00: f083 0301    	eor	r3, r3, #0x1
  357b04: b2db         	uxtb	r3, r3
  357b06: 2b00         	cmp	r3, #0x0
  357b08: d001         	beq	0x357b0e <M93BA::init()+0x26> @ imm = #0x2
  357b0a: 2300         	movs	r3, #0x0
  357b0c: e1ea         	b	0x357ee4 <M93BA::init()+0x3fc> @ imm = #0x3d4
  357b0e: 4bfa         	ldr	r3, [pc, #0x3e8]        @ 0x357ef8 <M93BA::init()+0x410>
  357b10: 447b         	add	r3, pc
  357b12: 4618         	mov	r0, r3
  357b14: f280 fbf6    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2807ec
  357b18: 4602         	mov	r2, r0
  357b1a: 9b05         	ldr	r3, [sp, #0x14]
  357b1c: f8c3 21ec    	str.w	r2, [r3, #0x1ec]
  357b20: 9b05         	ldr	r3, [sp, #0x14]
  357b22: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  357b26: 4618         	mov	r0, r3
  357b28: f240 f9de    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x2403bc
  357b2c: 4bf3         	ldr	r3, [pc, #0x3cc]        @ 0x357efc <M93BA::init()+0x414>
  357b2e: 447b         	add	r3, pc
  357b30: 4618         	mov	r0, r3
  357b32: f280 fbe7    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x2807ce
  357b36: 4602         	mov	r2, r0
  357b38: 9b05         	ldr	r3, [sp, #0x14]
  357b3a: f8c3 21f0    	str.w	r2, [r3, #0x1f0]
  357b3e: 9b05         	ldr	r3, [sp, #0x14]
  357b40: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  357b44: 4618         	mov	r0, r3
  357b46: f240 f9cf    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x24039e
  357b4a: 9b05         	ldr	r3, [sp, #0x14]
  357b4c: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  357b50: 681b         	ldr	r3, [r3]
  357b52: 337c         	adds	r3, #0x7c
  357b54: 681c         	ldr	r4, [r3]
  357b56: 9b05         	ldr	r3, [sp, #0x14]
  357b58: f8d3 51f0    	ldr.w	r5, [r3, #0x1f0]
  357b5c: ab08         	add	r3, sp, #0x20
  357b5e: 4618         	mov	r0, r3
  357b60: f04f 0100    	mov.w	r1, #0x0
  357b64: f6cb 71c0    	movt	r1, #0xbfc0
  357b68: f246 6266    	movw	r2, #0x6666
  357b6c: f6c3 62e6    	movt	r2, #0x3ee6
  357b70: f23b f8be    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23b17c
  357b74: ab08         	add	r3, sp, #0x20
  357b76: 4628         	mov	r0, r5
  357b78: 4619         	mov	r1, r3
  357b7a: 47a0         	blx	r4
  357b7c: 9b05         	ldr	r3, [sp, #0x14]
  357b7e: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  357b82: 681b         	ldr	r3, [r3]
  357b84: 3330         	adds	r3, #0x30
  357b86: 681b         	ldr	r3, [r3]
  357b88: 9a05         	ldr	r2, [sp, #0x14]
  357b8a: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  357b8e: 4610         	mov	r0, r2
  357b90: f04f 0100    	mov.w	r1, #0x0
  357b94: f2c4 0120    	movt	r1, #0x4020
  357b98: 4798         	blx	r3
  357b9a: 9b05         	ldr	r3, [sp, #0x14]
  357b9c: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  357ba0: 681b         	ldr	r3, [r3]
  357ba2: 3338         	adds	r3, #0x38
  357ba4: 681b         	ldr	r3, [r3]
  357ba6: 9a05         	ldr	r2, [sp, #0x14]
  357ba8: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  357bac: 4610         	mov	r0, r2
  357bae: f04f 0100    	mov.w	r1, #0x0
  357bb2: f2c4 0120    	movt	r1, #0x4020
  357bb6: 4798         	blx	r3
  357bb8: 9b05         	ldr	r3, [sp, #0x14]
  357bba: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  357bbe: 681b         	ldr	r3, [r3]
  357bc0: 3390         	adds	r3, #0x90
  357bc2: 681b         	ldr	r3, [r3]
  357bc4: 9a05         	ldr	r2, [sp, #0x14]
  357bc6: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  357bca: 4610         	mov	r0, r2
  357bcc: 2100         	movs	r1, #0x0
  357bce: 4798         	blx	r3
  357bd0: 9b05         	ldr	r3, [sp, #0x14]
  357bd2: 681b         	ldr	r3, [r3]
  357bd4: f503 73f0    	add.w	r3, r3, #0x1e0
  357bd8: 681b         	ldr	r3, [r3]
  357bda: 9805         	ldr	r0, [sp, #0x14]
  357bdc: 4798         	blx	r3
  357bde: 9b05         	ldr	r3, [sp, #0x14]
  357be0: 681b         	ldr	r3, [r3]
  357be2: 33cc         	adds	r3, #0xcc
  357be4: 681b         	ldr	r3, [r3]
  357be6: 9905         	ldr	r1, [sp, #0x14]
  357be8: 9a05         	ldr	r2, [sp, #0x14]
  357bea: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  357bee: 4608         	mov	r0, r1
  357bf0: 4611         	mov	r1, r2
  357bf2: 2200         	movs	r2, #0x0
  357bf4: 4798         	blx	r3
  357bf6: 9b05         	ldr	r3, [sp, #0x14]
  357bf8: 681b         	ldr	r3, [r3]
  357bfa: 33cc         	adds	r3, #0xcc
  357bfc: 681b         	ldr	r3, [r3]
  357bfe: 9905         	ldr	r1, [sp, #0x14]
  357c00: 9a05         	ldr	r2, [sp, #0x14]
  357c02: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  357c06: 4608         	mov	r0, r1
  357c08: 4611         	mov	r1, r2
  357c0a: 2200         	movs	r2, #0x0
  357c0c: 4798         	blx	r3
  357c0e: 9b05         	ldr	r3, [sp, #0x14]
  357c10: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  357c14: f04f 507e    	mov.w	r0, #0x3f800000
  357c18: f785 f834    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x7af98
  357c1c: 4603         	mov	r3, r0
  357c1e: 4620         	mov	r0, r4
  357c20: 4619         	mov	r1, r3
  357c22: f242 fb23    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x242646
  357c26: 9b05         	ldr	r3, [sp, #0x14]
  357c28: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  357c2c: ab07         	add	r3, sp, #0x1c
  357c2e: 4618         	mov	r0, r3
  357c30: f032 f3e0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4327c0
  357c34: aa08         	add	r2, sp, #0x20
  357c36: ab07         	add	r3, sp, #0x1c
  357c38: 4610         	mov	r0, r2
  357c3a: 4ab1         	ldr	r2, [pc, #0x2c4]        @ 0x357f00 <M93BA::init()+0x418>
  357c3c: 447a         	add	r2, pc
  357c3e: 4611         	mov	r1, r2
  357c40: 461a         	mov	r2, r3
  357c42: f05e f70d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x45ee1a
  357c46: ab08         	add	r3, sp, #0x20
  357c48: 4618         	mov	r0, r3
  357c4a: f241 fef7    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x241dee
  357c4e: 4603         	mov	r3, r0
  357c50: 4620         	mov	r0, r4
  357c52: 4619         	mov	r1, r3
  357c54: f242 fb0a    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x242614
  357c58: ab08         	add	r3, sp, #0x20
  357c5a: 4618         	mov	r0, r3
  357c5c: f05d f65a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45dcb4
  357c60: ab07         	add	r3, sp, #0x1c
  357c62: 4618         	mov	r0, r3
  357c64: f032 f3ca    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x432794
  357c68: 9b05         	ldr	r3, [sp, #0x14]
  357c6a: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  357c6e: f64c 40cd    	movw	r0, #0xcccd
  357c72: f6c3 704c    	movt	r0, #0x3f4c
  357c76: f785 f805    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x7aff6
  357c7a: 4603         	mov	r3, r0
  357c7c: 4620         	mov	r0, r4
  357c7e: 4619         	mov	r1, r3
  357c80: f242 faf4    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2425e8
  357c84: 9b05         	ldr	r3, [sp, #0x14]
  357c86: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  357c8a: ab07         	add	r3, sp, #0x1c
  357c8c: 4618         	mov	r0, r3
  357c8e: f032 f3b1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x432762
  357c92: aa08         	add	r2, sp, #0x20
  357c94: ab07         	add	r3, sp, #0x1c
  357c96: 4610         	mov	r0, r2
  357c98: 4a9a         	ldr	r2, [pc, #0x268]        @ 0x357f04 <M93BA::init()+0x41c>
  357c9a: 447a         	add	r2, pc
  357c9c: 4611         	mov	r1, r2
  357c9e: 461a         	mov	r2, r3
  357ca0: f05e f6de    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x45edbc
  357ca4: ab08         	add	r3, sp, #0x20
  357ca6: 4618         	mov	r0, r3
  357ca8: f241 fec8    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x241d90
  357cac: 4603         	mov	r3, r0
  357cae: 4620         	mov	r0, r4
  357cb0: 4619         	mov	r1, r3
  357cb2: f242 fadb    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2425b6
  357cb6: ab08         	add	r3, sp, #0x20
  357cb8: 4618         	mov	r0, r3
  357cba: f05d f62b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45dc56
  357cbe: ab07         	add	r3, sp, #0x1c
  357cc0: 4618         	mov	r0, r3
  357cc2: f032 f39b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x432736
  357cc6: 9b05         	ldr	r3, [sp, #0x14]
  357cc8: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  357ccc: f649 109a    	movw	r0, #0x999a
  357cd0: f6c3 7019    	movt	r0, #0x3f19
  357cd4: f784 ffd6    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x7b054
  357cd8: 4603         	mov	r3, r0
  357cda: 4620         	mov	r0, r4
  357cdc: 4619         	mov	r1, r3
  357cde: f242 fac5    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x24258a
  357ce2: 9b05         	ldr	r3, [sp, #0x14]
  357ce4: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  357ce8: ab07         	add	r3, sp, #0x1c
  357cea: 4618         	mov	r0, r3
  357cec: f032 f382    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x432704
  357cf0: aa08         	add	r2, sp, #0x20
  357cf2: ab07         	add	r3, sp, #0x1c
  357cf4: 4610         	mov	r0, r2
  357cf6: 4a84         	ldr	r2, [pc, #0x210]        @ 0x357f08 <M93BA::init()+0x420>
  357cf8: 447a         	add	r2, pc
  357cfa: 4611         	mov	r1, r2
  357cfc: 461a         	mov	r2, r3
  357cfe: f05e f6af    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x45ed5e
  357d02: ab08         	add	r3, sp, #0x20
  357d04: 4618         	mov	r0, r3
  357d06: f241 fe99    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x241d32
  357d0a: 4603         	mov	r3, r0
  357d0c: 4620         	mov	r0, r4
  357d0e: 4619         	mov	r1, r3
  357d10: f242 faac    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x242558
  357d14: ab08         	add	r3, sp, #0x20
  357d16: 4618         	mov	r0, r3
  357d18: f05d f5fc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45dbf8
  357d1c: ab07         	add	r3, sp, #0x1c
  357d1e: 4618         	mov	r0, r3
  357d20: f032 f36c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4326d8
  357d24: 9b05         	ldr	r3, [sp, #0x14]
  357d26: f8d3 4150    	ldr.w	r4, [r3, #0x150]
  357d2a: f64c 40cd    	movw	r0, #0xcccd
  357d2e: f6c3 60cc    	movt	r0, #0x3ecc
  357d32: f784 ffa7    	bl	0x2dcc84 <cocos2d::CCFloat::create(float)> @ imm = #-0x7b0b2
  357d36: 4603         	mov	r3, r0
  357d38: 4620         	mov	r0, r4
  357d3a: 4619         	mov	r1, r3
  357d3c: f242 fa96    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x24252c
  357d40: 9b05         	ldr	r3, [sp, #0x14]
  357d42: f8d3 414c    	ldr.w	r4, [r3, #0x14c]
  357d46: ab07         	add	r3, sp, #0x1c
  357d48: 4618         	mov	r0, r3
  357d4a: f032 f353    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x4326a6
  357d4e: aa08         	add	r2, sp, #0x20
  357d50: ab07         	add	r3, sp, #0x1c
  357d52: 4610         	mov	r0, r2
  357d54: 4a6d         	ldr	r2, [pc, #0x1b4]        @ 0x357f0c <M93BA::init()+0x424>
  357d56: 447a         	add	r2, pc
  357d58: 4611         	mov	r1, r2
  357d5a: 461a         	mov	r2, r3
  357d5c: f05e f680    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x45ed00
  357d60: ab08         	add	r3, sp, #0x20
  357d62: 4618         	mov	r0, r3
  357d64: f241 fe6a    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x241cd4
  357d68: 4603         	mov	r3, r0
  357d6a: 4620         	mov	r0, r4
  357d6c: 4619         	mov	r1, r3
  357d6e: f242 fa7d    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x2424fa
  357d72: ab08         	add	r3, sp, #0x20
  357d74: 4618         	mov	r0, r3
  357d76: f05d f5cd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45db9a
  357d7a: ab07         	add	r3, sp, #0x1c
  357d7c: 4618         	mov	r0, r3
  357d7e: f032 f33d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43267a
  357d82: 9b05         	ldr	r3, [sp, #0x14]
  357d84: 2200         	movs	r2, #0x0
  357d86: f8c3 2144    	str.w	r2, [r3, #0x144]
  357d8a: 9b05         	ldr	r3, [sp, #0x14]
  357d8c: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  357d90: 4618         	mov	r0, r3
  357d92: 2100         	movs	r1, #0x0
  357d94: f242 f9c4    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x242388
  357d98: 4603         	mov	r3, r0
  357d9a: 4618         	mov	r0, r3
  357d9c: f784 ff6a    	bl	0x2dcc74 <cocos2d::CCFloat::getValue() const> @ imm = #-0x7b12c
  357da0: 4602         	mov	r2, r0
  357da2: 9b05         	ldr	r3, [sp, #0x14]
  357da4: f8c3 2148    	str.w	r2, [r3, #0x148]
  357da8: 9b05         	ldr	r3, [sp, #0x14]
  357daa: f64c 42cd    	movw	r2, #0xcccd
  357dae: f6c3 724c    	movt	r2, #0x3f4c
  357db2: f8c3 215c    	str.w	r2, [r3, #0x15c]
  357db6: 9b05         	ldr	r3, [sp, #0x14]
  357db8: f04f 0200    	mov.w	r2, #0x0
  357dbc: f2c4 0220    	movt	r2, #0x4020
  357dc0: f8c3 2160    	str.w	r2, [r3, #0x160]
  357dc4: 9b05         	ldr	r3, [sp, #0x14]
  357dc6: f04f 0200    	mov.w	r2, #0x0
  357dca: f8c3 2164    	str.w	r2, [r3, #0x164]
  357dce: 9b05         	ldr	r3, [sp, #0x14]
  357dd0: f04f 0200    	mov.w	r2, #0x0
  357dd4: f2c4 12f0    	movt	r2, #0x41f0
  357dd8: f8c3 216c    	str.w	r2, [r3, #0x16c]
  357ddc: 9b05         	ldr	r3, [sp, #0x14]
  357dde: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  357de2: 681b         	ldr	r3, [r3]
  357de4: 3398         	adds	r3, #0x98
  357de6: 681b         	ldr	r3, [r3]
  357de8: 9a05         	ldr	r2, [sp, #0x14]
  357dea: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  357dee: 4610         	mov	r0, r2
  357df0: f04f 0100    	mov.w	r1, #0x0
  357df4: f2c4 11a0    	movt	r1, #0x41a0
  357df8: 4798         	blx	r3
  357dfa: 9b05         	ldr	r3, [sp, #0x14]
  357dfc: 2214         	movs	r2, #0x14
  357dfe: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  357e02: 9b05         	ldr	r3, [sp, #0x14]
  357e04: 2204         	movs	r2, #0x4
  357e06: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  357e0a: 9b05         	ldr	r3, [sp, #0x14]
  357e0c: 2296         	movs	r2, #0x96
  357e0e: f8c3 218c    	str.w	r2, [r3, #0x18c]
  357e12: 9b05         	ldr	r3, [sp, #0x14]
  357e14: 220a         	movs	r2, #0xa
  357e16: f8c3 2188    	str.w	r2, [r3, #0x188]
  357e1a: 9b05         	ldr	r3, [sp, #0x14]
  357e1c: 2223         	movs	r2, #0x23
  357e1e: f8c3 219c    	str.w	r2, [r3, #0x19c]
  357e22: 9b05         	ldr	r3, [sp, #0x14]
  357e24: 2232         	movs	r2, #0x32
  357e26: f8c3 21a0    	str.w	r2, [r3, #0x1a0]
  357e2a: 4b39         	ldr	r3, [pc, #0xe4]         @ 0x357f10 <M93BA::init()+0x428>
  357e2c: 447b         	add	r3, pc
  357e2e: 681a         	ldr	r2, [r3]
  357e30: 9b05         	ldr	r3, [sp, #0x14]
  357e32: f8c3 21a4    	str.w	r2, [r3, #0x1a4]
  357e36: 9b05         	ldr	r3, [sp, #0x14]
  357e38: f242 7210    	movw	r2, #0x2710
  357e3c: f8c3 21bc    	str.w	r2, [r3, #0x1bc]
  357e40: 9b05         	ldr	r3, [sp, #0x14]
  357e42: f243 3233    	movw	r2, #0x3333
  357e46: f6c3 7273    	movt	r2, #0x3f73
  357e4a: f8c3 21cc    	str.w	r2, [r3, #0x1cc]
  357e4e: 9b05         	ldr	r3, [sp, #0x14]
  357e50: 2204         	movs	r2, #0x4
  357e52: f8c3 2170    	str.w	r2, [r3, #0x170]
  357e56: 9b05         	ldr	r3, [sp, #0x14]
  357e58: 2214         	movs	r2, #0x14
  357e5a: f8c3 2174    	str.w	r2, [r3, #0x174]
  357e5e: 9c05         	ldr	r4, [sp, #0x14]
  357e60: 466b         	mov	r3, sp
  357e62: 4618         	mov	r0, r3
  357e64: ed9f 0b22    	vldr	d0, [pc, #136]          @ 0x357ef0 <M93BA::init()+0x408>
  357e68: eeb3 1b04    	vmov.f64	d1, #2.000000e+01
  357e6c: f7fe ff52    	bl	0x356d14 <M16::getDAMAGE()+0x198> @ imm = #-0x115c
  357e70: f504 74ec    	add.w	r4, r4, #0x1d8
  357e74: 466b         	mov	r3, sp
  357e76: cb0f         	ldm	r3, {r0, r1, r2, r3}
  357e78: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
  357e7c: 4b25         	ldr	r3, [pc, #0x94]         @ 0x357f14 <M93BA::init()+0x42c>
  357e7e: 447b         	add	r3, pc
  357e80: 681a         	ldr	r2, [r3]
  357e82: 9b05         	ldr	r3, [sp, #0x14]
  357e84: f8c3 2198    	str.w	r2, [r3, #0x198]
  357e88: 2301         	movs	r3, #0x1
  357e8a: e02b         	b	0x357ee4 <M93BA::init()+0x3fc> @ imm = #0x56
  357e8c: ab08         	add	r3, sp, #0x20
  357e8e: 4618         	mov	r0, r3
  357e90: f05d f540    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45da80
  357e94: e7ff         	b	0x357e96 <M93BA::init()+0x3ae> @ imm = #-0x2
  357e96: ab07         	add	r3, sp, #0x1c
  357e98: 4618         	mov	r0, r3
  357e9a: f032 f2af    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43255e
  357e9e: f030 f105    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43020a
  357ea2: ab08         	add	r3, sp, #0x20
  357ea4: 4618         	mov	r0, r3
  357ea6: f05d f535    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45da6a
  357eaa: e7ff         	b	0x357eac <M93BA::init()+0x3c4> @ imm = #-0x2
  357eac: ab07         	add	r3, sp, #0x1c
  357eae: 4618         	mov	r0, r3
  357eb0: f032 f2a4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x432548
  357eb4: f030 f0fa    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4301f4
  357eb8: ab08         	add	r3, sp, #0x20
  357eba: 4618         	mov	r0, r3
  357ebc: f05d f52a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45da54
  357ec0: e7ff         	b	0x357ec2 <M93BA::init()+0x3da> @ imm = #-0x2
  357ec2: ab07         	add	r3, sp, #0x1c
  357ec4: 4618         	mov	r0, r3
  357ec6: f032 f299    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x432532
  357eca: f030 f0ef    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4301de
  357ece: ab08         	add	r3, sp, #0x20
  357ed0: 4618         	mov	r0, r3
  357ed2: f05d f51f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x45da3e
  357ed6: e7ff         	b	0x357ed8 <M93BA::init()+0x3f0> @ imm = #-0x2
  357ed8: ab07         	add	r3, sp, #0x1c
  357eda: 4618         	mov	r0, r3
  357edc: f032 f28e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43251c
  357ee0: f030 f0e4    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x4301c8
  357ee4: 4618         	mov	r0, r3
  357ee6: b00b         	add	sp, #0x2c
  357ee8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x357ee9); words below are literal-pool data ---
  357eea: bf00         	nop
  357eec: f3af 8000    	nop.w
  357ef0: 0000         	movs	r0, r0
  357ef2: 0000         	movs	r0, r0
  357ef4: 4000         	ands	r0, r0
  357ef6: 405f         	eors	r7, r3
  357ef8: 486c         	ldr	r0, [pc, #0x1b0]        @ 0x3580ac <M93BA::triggerPull(float)+0x11c>
  357efa: 0047         	lsls	r7, r0, #0x1
  357efc: 485a         	ldr	r0, [pc, #0x168]        @ 0x358068 <M93BA::triggerPull(float)+0xd8>
  357efe: 0047         	lsls	r7, r0, #0x1
  357f00: 4758         	bx	r11
  357f02: 0047         	lsls	r7, r0, #0x1
  357f04: 46fe         	mov	lr, pc
  357f06: 0047         	lsls	r7, r0, #0x1
  357f08: 46a4         	mov	r12, r4
  357f0a: 0047         	lsls	r7, r0, #0x1
  357f0c: 464a         	mov	r2, r9
  357f0e: 0047         	lsls	r7, r0, #0x1
  357f10: b5a8         	push	{r3, r5, r7, lr}
  357f12: 005d         	lsls	r5, r3, #0x1
  357f14: b552         	push	{r1, r4, r6, lr}
  357f16: 005d         	lsls	r5, r3, #0x1

// ==== M93BA::~M93BA
//      file offset 0x357f18 (= ELF address; Ghidra 0x367f18), 92 bytes, Thumb-2
  357f18: b500         	push	{lr}
  357f1a: b083         	sub	sp, #0xc
  357f1c: 9001         	str	r0, [sp, #0x4]
  357f1e: 4913         	ldr	r1, [pc, #0x4c]         @ 0x357f6c <M93BA::~M93BA()+0x54>
  357f20: 4479         	add	r1, pc
  357f22: 9b01         	ldr	r3, [sp, #0x4]
  357f24: 4a12         	ldr	r2, [pc, #0x48]         @ 0x357f70 <M93BA::~M93BA()+0x58>
  357f26: 588a         	ldr	r2, [r1, r2]
  357f28: 3208         	adds	r2, #0x8
  357f2a: 601a         	str	r2, [r3]
  357f2c: 9b01         	ldr	r3, [sp, #0x4]
  357f2e: 4618         	mov	r0, r3
  357f30: f238 fb7c    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x2386f8
  357f34: 9b01         	ldr	r3, [sp, #0x4]
  357f36: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  357f3a: 4618         	mov	r0, r3
  357f3c: f23f ffbc    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x23ff78
  357f40: 9b01         	ldr	r3, [sp, #0x4]
  357f42: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  357f46: 4618         	mov	r0, r3
  357f48: f23f ffb6    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x23ff6c
  357f4c: 9b01         	ldr	r3, [sp, #0x4]
  357f4e: 4618         	mov	r0, r3
  357f50: f0bd f94e    	bl	0x4151f0 <Weapon::~Weapon()> @ imm = #0xbd29c
  357f54: 2300         	movs	r3, #0x0
  357f56: 2b00         	cmp	r3, #0x0
  357f58: d002         	beq	0x357f60 <M93BA::~M93BA()+0x48> @ imm = #0x4
  357f5a: 9801         	ldr	r0, [sp, #0x4]
  357f5c: f030 f0a2    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x430144
  357f60: 9b01         	ldr	r3, [sp, #0x4]
  357f62: 4618         	mov	r0, r3
  357f64: b003         	add	sp, #0xc
  357f66: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x357f69); words below are literal-pool data ---
  357f6a: bf00         	nop
  357f6c: aae8         	add	r2, sp, #0x3a0
  357f6e: 005d         	lsls	r5, r3, #0x1
  357f70: db80         	blt	0x357e74 <M93BA::init()+0x38c> @ imm = #-0x100
  357f72: ffff b500    	<unknown>

// ==== M93BA::~M93BA
//      file offset 0x357f74 (= ELF address; Ghidra 0x367f74), 28 bytes, Thumb-2
  357f74: b500         	push	{lr}
  357f76: b083         	sub	sp, #0xc
  357f78: 9001         	str	r0, [sp, #0x4]
  357f7a: 9801         	ldr	r0, [sp, #0x4]
  357f7c: f7ff ffcc    	bl	0x357f18 <M93BA::~M93BA()> @ imm = #-0x68
  357f80: 9801         	ldr	r0, [sp, #0x4]
  357f82: f030 f08f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x43011e
  357f86: 9b01         	ldr	r3, [sp, #0x4]
  357f88: 4618         	mov	r0, r3
  357f8a: b003         	add	sp, #0xc
  357f8c: f85d fb04    	ldr	pc, [sp], #4

// ==== M93BA::triggerPull
//      file offset 0x357f90 (= ELF address; Ghidra 0x367f90), 352 bytes, Thumb-2
  357f90: b510         	push	{r4, lr}
  357f92: b088         	sub	sp, #0x20
  357f94: 9003         	str	r0, [sp, #0xc]
  357f96: 9102         	str	r1, [sp, #0x8]
  357f98: 4c53         	ldr	r4, [pc, #0x14c]        @ 0x3580e8 <M93BA::triggerPull(float)+0x158>
  357f9a: 447c         	add	r4, pc
  357f9c: 9b03         	ldr	r3, [sp, #0xc]
  357f9e: ed93 7a44    	vldr	s14, [r3, #272]
  357fa2: 9b03         	ldr	r3, [sp, #0xc]
  357fa4: edd3 7a57    	vldr	s15, [r3, #348]
  357fa8: eeb4 7ae7    	vcmpe.f32	s14, s15
  357fac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  357fb0: dd71         	ble	0x358096 <M93BA::triggerPull(float)+0x106> @ imm = #0xe2
  357fb2: 9b03         	ldr	r3, [sp, #0xc]
  357fb4: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  357fb8: b21b         	sxth	r3, r3
  357fba: 2b00         	cmp	r3, #0x0
  357fbc: dd0f         	ble	0x357fde <M93BA::triggerPull(float)+0x4e> @ imm = #0x1e
  357fbe: 9b03         	ldr	r3, [sp, #0xc]
  357fc0: 681b         	ldr	r3, [r3]
  357fc2: f503 7333    	add.w	r3, r3, #0x2cc
  357fc6: 681b         	ldr	r3, [r3]
  357fc8: 9a03         	ldr	r2, [sp, #0xc]
  357fca: 4610         	mov	r0, r2
  357fcc: 4798         	blx	r3
  357fce: 4603         	mov	r3, r0
  357fd0: f083 0301    	eor	r3, r3, #0x1
  357fd4: b2db         	uxtb	r3, r3
  357fd6: 2b00         	cmp	r3, #0x0
  357fd8: d001         	beq	0x357fde <M93BA::triggerPull(float)+0x4e> @ imm = #0x2
  357fda: 2301         	movs	r3, #0x1
  357fdc: e000         	b	0x357fe0 <M93BA::triggerPull(float)+0x50> @ imm = #0x0
  357fde: 2300         	movs	r3, #0x0
  357fe0: 2b00         	cmp	r3, #0x0
  357fe2: d02c         	beq	0x35803e <M93BA::triggerPull(float)+0xae> @ imm = #0x58
  357fe4: 9b03         	ldr	r3, [sp, #0xc]
  357fe6: 2201         	movs	r2, #0x1
  357fe8: f883 2180    	strb.w	r2, [r3, #0x180]
  357fec: 9b03         	ldr	r3, [sp, #0xc]
  357fee: 681b         	ldr	r3, [r3]
  357ff0: f503 7325    	add.w	r3, r3, #0x294
  357ff4: 681b         	ldr	r3, [r3]
  357ff6: 9803         	ldr	r0, [sp, #0xc]
  357ff8: 4798         	blx	r3
  357ffa: 9b03         	ldr	r3, [sp, #0xc]
  357ffc: 681b         	ldr	r3, [r3]
  357ffe: f503 7342    	add.w	r3, r3, #0x308
  358002: 681b         	ldr	r3, [r3]
  358004: 9a03         	ldr	r2, [sp, #0xc]
  358006: 4610         	mov	r0, r2
  358008: 4798         	blx	r3
  35800a: 9b03         	ldr	r3, [sp, #0xc]
  35800c: 681b         	ldr	r3, [r3]
  35800e: f503 7343    	add.w	r3, r3, #0x30c
  358012: 681b         	ldr	r3, [r3]
  358014: 9a03         	ldr	r2, [sp, #0xc]
  358016: 4610         	mov	r0, r2
  358018: 4798         	blx	r3
  35801a: 9b03         	ldr	r3, [sp, #0xc]
  35801c: f893 3195    	ldrb.w	r3, [r3, #0x195]
  358020: 3301         	adds	r3, #0x1
  358022: b2da         	uxtb	r2, r3
  358024: 9b03         	ldr	r3, [sp, #0xc]
  358026: f883 2195    	strb.w	r2, [r3, #0x195]
  35802a: 9b03         	ldr	r3, [sp, #0xc]
  35802c: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  358030: b29b         	uxth	r3, r3
  358032: 3b00         	subs	r3, #0x0
  358034: b29a         	uxth	r2, r3
  358036: 9b03         	ldr	r3, [sp, #0xc]
  358038: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  35803c: e026         	b	0x35808c <M93BA::triggerPull(float)+0xfc> @ imm = #0x4c
  35803e: 9b03         	ldr	r3, [sp, #0xc]
  358040: 681b         	ldr	r3, [r3]
  358042: f503 7333    	add.w	r3, r3, #0x2cc
  358046: 681b         	ldr	r3, [r3]
  358048: 9a03         	ldr	r2, [sp, #0xc]
  35804a: 4610         	mov	r0, r2
  35804c: 4798         	blx	r3
  35804e: 4603         	mov	r3, r0
  358050: f083 0301    	eor	r3, r3, #0x1
  358054: b2db         	uxtb	r3, r3
  358056: 2b00         	cmp	r3, #0x0
  358058: d018         	beq	0x35808c <M93BA::triggerPull(float)+0xfc> @ imm = #0x30
  35805a: 4b24         	ldr	r3, [pc, #0x90]         @ 0x3580ec <M93BA::triggerPull(float)+0x15c>
  35805c: 58e3         	ldr	r3, [r4, r3]
  35805e: 681c         	ldr	r4, [r3]
  358060: 9b03         	ldr	r3, [sp, #0xc]
  358062: 681b         	ldr	r3, [r3]
  358064: f503 7348    	add.w	r3, r3, #0x320
  358068: 681b         	ldr	r3, [r3]
  35806a: 9a03         	ldr	r2, [sp, #0xc]
  35806c: a904         	add	r1, sp, #0x10
  35806e: 4608         	mov	r0, r1
  358070: 4611         	mov	r1, r2
  358072: 4798         	blx	r3
  358074: 466b         	mov	r3, sp
  358076: aa06         	add	r2, sp, #0x18
  358078: e892 0003    	ldm.w	r2, {r0, r1}
  35807c: e883 0003    	stm.w	r3, {r0, r1}
  358080: ab04         	add	r3, sp, #0x10
  358082: cb0c         	ldm	r3, {r2, r3}
  358084: 4620         	mov	r0, r4
  358086: 2100         	movs	r1, #0x0
  358088: f09f ffb6    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x9ff6c
  35808c: 9b03         	ldr	r3, [sp, #0xc]
  35808e: f04f 0200    	mov.w	r2, #0x0
  358092: f8c3 2110    	str.w	r2, [r3, #0x110]
  358096: 9b03         	ldr	r3, [sp, #0xc]
  358098: 681b         	ldr	r3, [r3]
  35809a: f503 7333    	add.w	r3, r3, #0x2cc
  35809e: 681b         	ldr	r3, [r3]
  3580a0: 9a03         	ldr	r2, [sp, #0xc]
  3580a2: 4610         	mov	r0, r2
  3580a4: 4798         	blx	r3
  3580a6: 4603         	mov	r3, r0
  3580a8: f083 0301    	eor	r3, r3, #0x1
  3580ac: b2db         	uxtb	r3, r3
  3580ae: 2b00         	cmp	r3, #0x0
  3580b0: d00c         	beq	0x3580cc <M93BA::triggerPull(float)+0x13c> @ imm = #0x18
  3580b2: 9b03         	ldr	r3, [sp, #0xc]
  3580b4: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3580b8: 2b00         	cmp	r3, #0x0
  3580ba: d107         	bne	0x3580cc <M93BA::triggerPull(float)+0x13c> @ imm = #0xe
  3580bc: 9b03         	ldr	r3, [sp, #0xc]
  3580be: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3580c2: b21b         	sxth	r3, r3
  3580c4: 2b00         	cmp	r3, #0x0
  3580c6: dd01         	ble	0x3580cc <M93BA::triggerPull(float)+0x13c> @ imm = #0x2
  3580c8: 2301         	movs	r3, #0x1
  3580ca: e000         	b	0x3580ce <M93BA::triggerPull(float)+0x13e> @ imm = #0x0
  3580cc: 2300         	movs	r3, #0x0
  3580ce: 2b00         	cmp	r3, #0x0
  3580d0: d008         	beq	0x3580e4 <M93BA::triggerPull(float)+0x154> @ imm = #0x10
  3580d2: 9b03         	ldr	r3, [sp, #0xc]
  3580d4: 2201         	movs	r2, #0x1
  3580d6: f883 2181    	strb.w	r2, [r3, #0x181]
  3580da: 9b03         	ldr	r3, [sp, #0xc]
  3580dc: f04f 0200    	mov.w	r2, #0x0
  3580e0: f8c3 2158    	str.w	r2, [r3, #0x158]
  3580e4: b008         	add	sp, #0x20
  3580e6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3580e7); words below are literal-pool data ---
  3580e8: aa6e         	add	r2, sp, #0x1b8
  3580ea: 005d         	lsls	r5, r3, #0x1
  3580ec: d730         	bvc	0x358150 <M93BA::updateItemStep(float)+0x60> @ imm = #0x60
  3580ee: ffff b500    	<unknown>

// ==== M93BA::updateItemStep
//      file offset 0x3580f0 (= ELF address; Ghidra 0x3680f0), 282 bytes, Thumb-2
  3580f0: b500         	push	{lr}
  3580f2: ed2d 8b02    	vpush	{d8}
  3580f6: b085         	sub	sp, #0x14
  3580f8: 9001         	str	r0, [sp, #0x4]
  3580fa: 9100         	str	r1, [sp]
  3580fc: 9b01         	ldr	r3, [sp, #0x4]
  3580fe: ed93 7a56    	vldr	s14, [r3, #344]
  358102: eddd 7a00    	vldr	s15, [sp]
  358106: ee77 7a27    	vadd.f32	s15, s14, s15
  35810a: 9b01         	ldr	r3, [sp, #0x4]
  35810c: edc3 7a56    	vstr	s15, [r3, #344]
  358110: 9b01         	ldr	r3, [sp, #0x4]
  358112: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  358116: 681b         	ldr	r3, [r3]
  358118: 3390         	adds	r3, #0x90
  35811a: 681b         	ldr	r3, [r3]
  35811c: 9a01         	ldr	r2, [sp, #0x4]
  35811e: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  358122: 9a01         	ldr	r2, [sp, #0x4]
  358124: f892 2180    	ldrb.w	r2, [r2, #0x180]
  358128: 4608         	mov	r0, r1
  35812a: 4611         	mov	r1, r2
  35812c: 4798         	blx	r3
  35812e: 9b01         	ldr	r3, [sp, #0x4]
  358130: 681b         	ldr	r3, [r3]
  358132: f503 7315    	add.w	r3, r3, #0x254
  358136: 681b         	ldr	r3, [r3]
  358138: 9a01         	ldr	r2, [sp, #0x4]
  35813a: 4610         	mov	r0, r2
  35813c: 9900         	ldr	r1, [sp]
  35813e: 4798         	blx	r3
  358140: 9b01         	ldr	r3, [sp, #0x4]
  358142: f893 3181    	ldrb.w	r3, [r3, #0x181]
  358146: 2b00         	cmp	r3, #0x0
  358148: d013         	beq	0x358172 <M93BA::updateItemStep(float)+0x82> @ imm = #0x26
  35814a: 9b01         	ldr	r3, [sp, #0x4]
  35814c: ed93 8a56    	vldr	s16, [r3, #344]
  358150: 9b01         	ldr	r3, [sp, #0x4]
  358152: 681b         	ldr	r3, [r3]
  358154: f503 732e    	add.w	r3, r3, #0x2b8
  358158: 681b         	ldr	r3, [r3]
  35815a: 9a01         	ldr	r2, [sp, #0x4]
  35815c: 4610         	mov	r0, r2
  35815e: 4798         	blx	r3
  358160: ee07 0a90    	vmov	s15, r0
  358164: eeb4 8ae7    	vcmpe.f32	s16, s15
  358168: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  35816c: dd01         	ble	0x358172 <M93BA::updateItemStep(float)+0x82> @ imm = #0x2
  35816e: 2301         	movs	r3, #0x1
  358170: e000         	b	0x358174 <M93BA::updateItemStep(float)+0x84> @ imm = #0x0
  358172: 2300         	movs	r3, #0x0
  358174: 2b00         	cmp	r3, #0x0
  358176: d043         	beq	0x358200 <M93BA::updateItemStep(float)+0x110> @ imm = #0x86
  358178: 9b01         	ldr	r3, [sp, #0x4]
  35817a: 2200         	movs	r2, #0x0
  35817c: f883 2181    	strb.w	r2, [r3, #0x181]
  358180: 9b01         	ldr	r3, [sp, #0x4]
  358182: f04f 0200    	mov.w	r2, #0x0
  358186: f8c3 2110    	str.w	r2, [r3, #0x110]
  35818a: 9b01         	ldr	r3, [sp, #0x4]
  35818c: 681b         	ldr	r3, [r3]
  35818e: f503 732d    	add.w	r3, r3, #0x2b4
  358192: 681b         	ldr	r3, [r3]
  358194: 9a01         	ldr	r2, [sp, #0x4]
  358196: 4610         	mov	r0, r2
  358198: 4798         	blx	r3
  35819a: 4602         	mov	r2, r0
  35819c: 9b01         	ldr	r3, [sp, #0x4]
  35819e: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3581a2: b21b         	sxth	r3, r3
  3581a4: 1ad3         	subs	r3, r2, r3
  3581a6: 9303         	str	r3, [sp, #0xc]
  3581a8: 9b01         	ldr	r3, [sp, #0x4]
  3581aa: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3581ae: b29a         	uxth	r2, r3
  3581b0: 9b03         	ldr	r3, [sp, #0xc]
  3581b2: b29b         	uxth	r3, r3
  3581b4: 1ad3         	subs	r3, r2, r3
  3581b6: b29b         	uxth	r3, r3
  3581b8: b29a         	uxth	r2, r3
  3581ba: 9b01         	ldr	r3, [sp, #0x4]
  3581bc: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  3581c0: 9b01         	ldr	r3, [sp, #0x4]
  3581c2: f8b3 31ea    	ldrh.w	r3, [r3, #0x1ea]
  3581c6: b29a         	uxth	r2, r3
  3581c8: 9b03         	ldr	r3, [sp, #0xc]
  3581ca: b29b         	uxth	r3, r3
  3581cc: 4413         	add	r3, r2
  3581ce: b29a         	uxth	r2, r3
  3581d0: 9b01         	ldr	r3, [sp, #0x4]
  3581d2: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3581d6: b21b         	sxth	r3, r3
  3581d8: ea03 73e3    	and.w	r3, r3, r3, asr #31
  3581dc: b29b         	uxth	r3, r3
  3581de: b29b         	uxth	r3, r3
  3581e0: 4413         	add	r3, r2
  3581e2: b29b         	uxth	r3, r3
  3581e4: b29a         	uxth	r2, r3
  3581e6: 9b01         	ldr	r3, [sp, #0x4]
  3581e8: f8a3 21ea    	strh.w	r2, [r3, #0x1ea]
  3581ec: 9b01         	ldr	r3, [sp, #0x4]
  3581ee: f8b3 31e8    	ldrh.w	r3, [r3, #0x1e8]
  3581f2: b21b         	sxth	r3, r3
  3581f4: ea23 73e3    	bic.w	r3, r3, r3, asr #31
  3581f8: b29a         	uxth	r2, r3
  3581fa: 9b01         	ldr	r3, [sp, #0x4]
  3581fc: f8a3 21e8    	strh.w	r2, [r3, #0x1e8]
  358200: b005         	add	sp, #0x14
  358202: ecbd 8b02    	vpop	{d8}
  358206: f85d fb04    	ldr	pc, [sp], #4

// ==== M93BA::updateRemoteItemStep
//      file offset 0x35820c (= ELF address; Ghidra 0x36820c), 94 bytes, Thumb-2
  35820c: b500         	push	{lr}
  35820e: b083         	sub	sp, #0xc
  358210: 9001         	str	r0, [sp, #0x4]
  358212: 9100         	str	r1, [sp]
  358214: 9b01         	ldr	r3, [sp, #0x4]
  358216: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  35821a: 681b         	ldr	r3, [r3]
  35821c: 3390         	adds	r3, #0x90
  35821e: 681b         	ldr	r3, [r3]
  358220: 9a01         	ldr	r2, [sp, #0x4]
  358222: f8d2 11f0    	ldr.w	r1, [r2, #0x1f0]
  358226: 9a01         	ldr	r2, [sp, #0x4]
  358228: f892 2180    	ldrb.w	r2, [r2, #0x180]
  35822c: 4608         	mov	r0, r1
  35822e: 4611         	mov	r1, r2
  358230: 4798         	blx	r3
  358232: 9b01         	ldr	r3, [sp, #0x4]
  358234: 681b         	ldr	r3, [r3]
  358236: f503 7315    	add.w	r3, r3, #0x254
  35823a: 681b         	ldr	r3, [r3]
  35823c: 9a01         	ldr	r2, [sp, #0x4]
  35823e: 4610         	mov	r0, r2
  358240: 9900         	ldr	r1, [sp]
  358242: 4798         	blx	r3
  358244: 9b01         	ldr	r3, [sp, #0x4]
  358246: f893 2194    	ldrb.w	r2, [r3, #0x194]
  35824a: 9b01         	ldr	r3, [sp, #0x4]
  35824c: f893 3195    	ldrb.w	r3, [r3, #0x195]
  358250: 429a         	cmp	r2, r3
  358252: d007         	beq	0x358264 <M93BA::updateRemoteItemStep(float)+0x58> @ imm = #0xe
  358254: 9b01         	ldr	r3, [sp, #0x4]
  358256: 681b         	ldr	r3, [r3]
  358258: f503 7318    	add.w	r3, r3, #0x260
  35825c: 681b         	ldr	r3, [r3]
  35825e: 9801         	ldr	r0, [sp, #0x4]
  358260: 9900         	ldr	r1, [sp]
  358262: 4798         	blx	r3
  358264: b003         	add	sp, #0xc
  358266: f85d fb04    	ldr	pc, [sp], #4

// ==== M93BA::remoteTriggerPull
//      file offset 0x35826c (= ELF address; Ghidra 0x36826c), 116 bytes, Thumb-2
  35826c: b500         	push	{lr}
  35826e: b083         	sub	sp, #0xc
  358270: 9001         	str	r0, [sp, #0x4]
  358272: 9100         	str	r1, [sp]
  358274: 9b01         	ldr	r3, [sp, #0x4]
  358276: ed93 7a44    	vldr	s14, [r3, #272]
  35827a: 9b01         	ldr	r3, [sp, #0x4]
  35827c: edd3 7a57    	vldr	s15, [r3, #348]
  358280: eeb4 7ae7    	vcmpe.f32	s14, s15
  358284: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  358288: dd27         	ble	0x3582da <M93BA::remoteTriggerPull(float)+0x6e> @ imm = #0x4e
  35828a: 9b01         	ldr	r3, [sp, #0x4]
  35828c: f04f 0200    	mov.w	r2, #0x0
  358290: f8c3 2110    	str.w	r2, [r3, #0x110]
  358294: 9b01         	ldr	r3, [sp, #0x4]
  358296: 2201         	movs	r2, #0x1
  358298: f883 2180    	strb.w	r2, [r3, #0x180]
  35829c: 9b01         	ldr	r3, [sp, #0x4]
  35829e: 681b         	ldr	r3, [r3]
  3582a0: f503 7325    	add.w	r3, r3, #0x294
  3582a4: 681b         	ldr	r3, [r3]
  3582a6: 9801         	ldr	r0, [sp, #0x4]
  3582a8: 4798         	blx	r3
  3582aa: 9b01         	ldr	r3, [sp, #0x4]
  3582ac: 681b         	ldr	r3, [r3]
  3582ae: f503 7342    	add.w	r3, r3, #0x308
  3582b2: 681b         	ldr	r3, [r3]
  3582b4: 9a01         	ldr	r2, [sp, #0x4]
  3582b6: 4610         	mov	r0, r2
  3582b8: 4798         	blx	r3
  3582ba: 9b01         	ldr	r3, [sp, #0x4]
  3582bc: 681b         	ldr	r3, [r3]
  3582be: f503 7343    	add.w	r3, r3, #0x30c
  3582c2: 681b         	ldr	r3, [r3]
  3582c4: 9a01         	ldr	r2, [sp, #0x4]
  3582c6: 4610         	mov	r0, r2
  3582c8: 4798         	blx	r3
  3582ca: 9b01         	ldr	r3, [sp, #0x4]
  3582cc: f893 3195    	ldrb.w	r3, [r3, #0x195]
  3582d0: 3301         	adds	r3, #0x1
  3582d2: b2da         	uxtb	r2, r3
  3582d4: 9b01         	ldr	r3, [sp, #0x4]
  3582d6: f883 2195    	strb.w	r2, [r3, #0x195]
  3582da: b003         	add	sp, #0xc
  3582dc: f85d fb04    	ldr	pc, [sp], #4

// ==== M93BA::getShellPoint
//      file offset 0x3582e0 (= ELF address; Ghidra 0x3682e0), 204 bytes, Thumb-2
  3582e0: b510         	push	{r4, lr}
  3582e2: b08e         	sub	sp, #0x38
  3582e4: 9001         	str	r0, [sp, #0x4]
  3582e6: 9100         	str	r1, [sp]
  3582e8: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x3583a4 <M93BA::getShellPoint()+0xc4>
  3582ea: 447c         	add	r4, pc
  3582ec: ab02         	add	r3, sp, #0x8
  3582ee: 4618         	mov	r0, r3
  3582f0: f04f 0100    	mov.w	r1, #0x0
  3582f4: f2c4 2148    	movt	r1, #0x4248
  3582f8: f04f 0200    	mov.w	r2, #0x0
  3582fc: f2c4 12a0    	movt	r2, #0x41a0
  358300: f23a fcf6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23a9ec
  358304: 9b00         	ldr	r3, [sp]
  358306: 681b         	ldr	r3, [r3]
  358308: 3350         	adds	r3, #0x50
  35830a: 681b         	ldr	r3, [r3]
  35830c: 9a00         	ldr	r2, [sp]
  35830e: 4610         	mov	r0, r2
  358310: 4798         	blx	r3
  358312: 4602         	mov	r2, r0
  358314: a906         	add	r1, sp, #0x18
  358316: ab02         	add	r3, sp, #0x8
  358318: 4608         	mov	r0, r1
  35831a: 4611         	mov	r1, r2
  35831c: 461a         	mov	r2, r3
  35831e: f7fe fce9    	bl	0x356cf4 <M16::getDAMAGE()+0x178> @ imm = #-0x162e
  358322: 9b00         	ldr	r3, [sp]
  358324: 681b         	ldr	r3, [r3]
  358326: f503 73c2    	add.w	r3, r3, #0x184
  35832a: 681b         	ldr	r3, [r3]
  35832c: 9a00         	ldr	r2, [sp]
  35832e: a908         	add	r1, sp, #0x20
  358330: 4608         	mov	r0, r1
  358332: 4611         	mov	r1, r2
  358334: 4798         	blx	r3
  358336: a904         	add	r1, sp, #0x10
  358338: aa06         	add	r2, sp, #0x18
  35833a: ab08         	add	r3, sp, #0x20
  35833c: 4608         	mov	r0, r1
  35833e: 4611         	mov	r1, r2
  358340: 461a         	mov	r2, r3
  358342: f239 ffef    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x239fde
  358346: 4b18         	ldr	r3, [pc, #0x60]         @ 0x3583a8 <M93BA::getShellPoint()+0xc8>
  358348: 58e3         	ldr	r3, [r4, r3]
  35834a: 681b         	ldr	r3, [r3]
  35834c: 681b         	ldr	r3, [r3]
  35834e: f503 73c4    	add.w	r3, r3, #0x188
  358352: 681b         	ldr	r3, [r3]
  358354: 4a14         	ldr	r2, [pc, #0x50]         @ 0x3583a8 <M93BA::getShellPoint()+0xc8>
  358356: 58a2         	ldr	r2, [r4, r2]
  358358: 6812         	ldr	r2, [r2]
  35835a: a908         	add	r1, sp, #0x20
  35835c: 4608         	mov	r0, r1
  35835e: 4611         	mov	r1, r2
  358360: 4798         	blx	r3
  358362: a906         	add	r1, sp, #0x18
  358364: aa04         	add	r2, sp, #0x10
  358366: ab08         	add	r3, sp, #0x20
  358368: 4608         	mov	r0, r1
  35836a: 4611         	mov	r1, r2
  35836c: 461a         	mov	r2, r3
  35836e: f239 ffd9    	bl	0x592324 <cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&)> @ imm = #0x239fb2
  358372: aa04         	add	r2, sp, #0x10
  358374: ab06         	add	r3, sp, #0x18
  358376: 4610         	mov	r0, r2
  358378: 4619         	mov	r1, r3
  35837a: f23a fce7    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x23a9ce
  35837e: eddd 7a04    	vldr	s15, [sp, #16]
  358382: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  358386: eddd 7a05    	vldr	s15, [sp, #20]
  35838a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  35838e: 9b01         	ldr	r3, [sp, #0x4]
  358390: 4618         	mov	r0, r3
  358392: eeb0 0b46    	vmov.f64	d0, d6
  358396: eeb0 1b47    	vmov.f64	d1, d7
  35839a: f7fe fcbb    	bl	0x356d14 <M16::getDAMAGE()+0x198> @ imm = #-0x168a
  35839e: 9801         	ldr	r0, [sp, #0x4]
  3583a0: b00e         	add	sp, #0x38
  3583a2: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3583a3); words below are literal-pool data ---
  3583a4: a71e         	adr	r7, #120 <M93BA::playSound()+0x1a>
  3583a6: 005d         	lsls	r5, r3, #0x1
  3583a8: d744         	bvc	0x358434 <M93BA::setPrimaryConfiguration()+0x40> @ imm = #0x88
  3583aa: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== M93BA::playSound
//      file offset 0x3583ac (= ELF address; Ghidra 0x3683ac), 72 bytes, Thumb-2
  3583ac: b510         	push	{r4, lr}
  3583ae: b088         	sub	sp, #0x20
  3583b0: 9003         	str	r0, [sp, #0xc]
  3583b2: 4a0e         	ldr	r2, [pc, #0x38]         @ 0x3583ec <M93BA::playSound()+0x40>
  3583b4: 447a         	add	r2, pc
  3583b6: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3583f0 <M93BA::playSound()+0x44>
  3583b8: 58d3         	ldr	r3, [r2, r3]
  3583ba: 681c         	ldr	r4, [r3]
  3583bc: 9b03         	ldr	r3, [sp, #0xc]
  3583be: 681b         	ldr	r3, [r3]
  3583c0: f503 7348    	add.w	r3, r3, #0x320
  3583c4: 681b         	ldr	r3, [r3]
  3583c6: 9a03         	ldr	r2, [sp, #0xc]
  3583c8: a904         	add	r1, sp, #0x10
  3583ca: 4608         	mov	r0, r1
  3583cc: 4611         	mov	r1, r2
  3583ce: 4798         	blx	r3
  3583d0: 466b         	mov	r3, sp
  3583d2: aa06         	add	r2, sp, #0x18
  3583d4: e892 0003    	ldm.w	r2, {r0, r1}
  3583d8: e883 0003    	stm.w	r3, {r0, r1}
  3583dc: ab04         	add	r3, sp, #0x10
  3583de: cb0c         	ldm	r3, {r2, r3}
  3583e0: 4620         	mov	r0, r4
  3583e2: 2116         	movs	r1, #0x16
  3583e4: f09f fe08    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #0x9fc10
  3583e8: b008         	add	sp, #0x20
  3583ea: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3583eb); words below are literal-pool data ---
  3583ec: a654         	adr	r6, #336 <M93BA::setPrimaryConfiguration()+0x50>
  3583ee: 005d         	lsls	r5, r3, #0x1
  3583f0: d730         	bvc	0x358454 <M93BA::setPrimaryConfiguration()+0x60> @ imm = #0x60
  3583f2: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== M93BA::setPrimaryConfiguration
//      file offset 0x3583f4 (= ELF address; Ghidra 0x3683f4), 312 bytes, Thumb-2
  3583f4: b530         	push	{r4, r5, lr}
  3583f6: b085         	sub	sp, #0x14
  3583f8: 9001         	str	r0, [sp, #0x4]
  3583fa: 9b01         	ldr	r3, [sp, #0x4]
  3583fc: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  358400: 2b00         	cmp	r3, #0x0
  358402: d019         	beq	0x358438 <M93BA::setPrimaryConfiguration()+0x44> @ imm = #0x32
  358404: 9b01         	ldr	r3, [sp, #0x4]
  358406: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  35840a: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x358528 <M93BA::setPrimaryConfiguration()+0x134>
  35840c: 447b         	add	r3, pc
  35840e: ed93 6b00    	vldr	d6, [r3]
  358412: ed93 7b02    	vldr	d7, [r3, #8]
  358416: 4610         	mov	r0, r2
  358418: eeb0 0b46    	vmov.f64	d0, d6
  35841c: eeb0 1b47    	vmov.f64	d1, d7
  358420: f7fe fc8c    	bl	0x356d3c <M16::getDAMAGE()+0x1c0> @ imm = #-0x16e8
  358424: 9b01         	ldr	r3, [sp, #0x4]
  358426: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  35842a: 4618         	mov	r0, r3
  35842c: f04f 0200    	mov.w	r2, #0x0
  358430: f04f 0300    	mov.w	r3, #0x0
  358434: f37a fead    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x37ad5a
  358438: 9b01         	ldr	r3, [sp, #0x4]
  35843a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35843e: 681b         	ldr	r3, [r3]
  358440: 334c         	adds	r3, #0x4c
  358442: 681c         	ldr	r4, [r3]
  358444: 9b01         	ldr	r3, [sp, #0x4]
  358446: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  35844a: ab02         	add	r3, sp, #0x8
  35844c: 4618         	mov	r0, r3
  35844e: f04f 0100    	mov.w	r1, #0x0
  358452: f04f 0200    	mov.w	r2, #0x0
  358456: f23a fc4b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23a896
  35845a: ab02         	add	r3, sp, #0x8
  35845c: 4628         	mov	r0, r5
  35845e: 4619         	mov	r1, r3
  358460: 47a0         	blx	r4
  358462: 9b01         	ldr	r3, [sp, #0x4]
  358464: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  358468: 681b         	ldr	r3, [r3]
  35846a: 337c         	adds	r3, #0x7c
  35846c: 681c         	ldr	r4, [r3]
  35846e: 9b01         	ldr	r3, [sp, #0x4]
  358470: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  358474: ab02         	add	r3, sp, #0x8
  358476: 4618         	mov	r0, r3
  358478: f64c 41cd    	movw	r1, #0xcccd
  35847c: f6cb 514c    	movt	r1, #0xbd4c
  358480: f04f 527a    	mov.w	r2, #0x3e800000
  358484: f23a fc34    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23a868
  358488: ab02         	add	r3, sp, #0x8
  35848a: 4628         	mov	r0, r5
  35848c: 4619         	mov	r1, r3
  35848e: 47a0         	blx	r4
  358490: 9b01         	ldr	r3, [sp, #0x4]
  358492: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  358496: 681b         	ldr	r3, [r3]
  358498: 3398         	adds	r3, #0x98
  35849a: 681b         	ldr	r3, [r3]
  35849c: 9a01         	ldr	r2, [sp, #0x4]
  35849e: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3584a2: 4610         	mov	r0, r2
  3584a4: f04f 0100    	mov.w	r1, #0x0
  3584a8: 4798         	blx	r3
  3584aa: 9b01         	ldr	r3, [sp, #0x4]
  3584ac: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3584b0: 681b         	ldr	r3, [r3]
  3584b2: 3340         	adds	r3, #0x40
  3584b4: 681b         	ldr	r3, [r3]
  3584b6: 9a01         	ldr	r2, [sp, #0x4]
  3584b8: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3584bc: 4610         	mov	r0, r2
  3584be: f04f 517e    	mov.w	r1, #0x3f800000
  3584c2: 4798         	blx	r3
  3584c4: 9b01         	ldr	r3, [sp, #0x4]
  3584c6: 681b         	ldr	r3, [r3]
  3584c8: 334c         	adds	r3, #0x4c
  3584ca: 681c         	ldr	r4, [r3]
  3584cc: 9d01         	ldr	r5, [sp, #0x4]
  3584ce: ab02         	add	r3, sp, #0x8
  3584d0: 4618         	mov	r0, r3
  3584d2: f04f 0100    	mov.w	r1, #0x0
  3584d6: f04f 0200    	mov.w	r2, #0x0
  3584da: f23a fc09    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23a812
  3584de: ab02         	add	r3, sp, #0x8
  3584e0: 4628         	mov	r0, r5
  3584e2: 4619         	mov	r1, r3
  3584e4: 47a0         	blx	r4
  3584e6: 9b01         	ldr	r3, [sp, #0x4]
  3584e8: 681b         	ldr	r3, [r3]
  3584ea: 3340         	adds	r3, #0x40
  3584ec: 681b         	ldr	r3, [r3]
  3584ee: 9a01         	ldr	r2, [sp, #0x4]
  3584f0: 4610         	mov	r0, r2
  3584f2: f04f 517e    	mov.w	r1, #0x3f800000
  3584f6: 4798         	blx	r3
  3584f8: 9b01         	ldr	r3, [sp, #0x4]
  3584fa: 681b         	ldr	r3, [r3]
  3584fc: 3398         	adds	r3, #0x98
  3584fe: 681b         	ldr	r3, [r3]
  358500: 9a01         	ldr	r2, [sp, #0x4]
  358502: 4610         	mov	r0, r2
  358504: f04f 0100    	mov.w	r1, #0x0
  358508: 4798         	blx	r3
  35850a: 9b01         	ldr	r3, [sp, #0x4]
  35850c: 2200         	movs	r2, #0x0
  35850e: f883 2195    	strb.w	r2, [r3, #0x195]
  358512: 9b01         	ldr	r3, [sp, #0x4]
  358514: 2200         	movs	r2, #0x0
  358516: f883 2194    	strb.w	r2, [r3, #0x194]
  35851a: 9b01         	ldr	r3, [sp, #0x4]
  35851c: f04f 0200    	mov.w	r2, #0x0
  358520: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  358524: b005         	add	sp, #0x14
  358526: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x358527); words below are literal-pool data ---
  358528: 3fd8         	subs	r7, #0xd8
  35852a: 0047         	lsls	r7, r0, #0x1

// ==== M93BA::setSecondaryConfiguration
//      file offset 0x35852c (= ELF address; Ghidra 0x36852c), 344 bytes, Thumb-2
  35852c: b530         	push	{r4, r5, lr}
  35852e: b085         	sub	sp, #0x14
  358530: 9001         	str	r0, [sp, #0x4]
  358532: 9b01         	ldr	r3, [sp, #0x4]
  358534: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  358538: 2b00         	cmp	r3, #0x0
  35853a: d019         	beq	0x358570 <M93BA::setSecondaryConfiguration()+0x44> @ imm = #0x32
  35853c: 9b01         	ldr	r3, [sp, #0x4]
  35853e: f8d3 20e8    	ldr.w	r2, [r3, #0xe8]
  358542: 4b4f         	ldr	r3, [pc, #0x13c]        @ 0x358680 <M93BA::setSecondaryConfiguration()+0x154>
  358544: 447b         	add	r3, pc
  358546: ed93 6b00    	vldr	d6, [r3]
  35854a: ed93 7b02    	vldr	d7, [r3, #8]
  35854e: 4610         	mov	r0, r2
  358550: eeb0 0b46    	vmov.f64	d0, d6
  358554: eeb0 1b47    	vmov.f64	d1, d7
  358558: f7fe fbf0    	bl	0x356d3c <M16::getDAMAGE()+0x1c0> @ imm = #-0x1820
  35855c: 9b01         	ldr	r3, [sp, #0x4]
  35855e: f8d3 30e8    	ldr.w	r3, [r3, #0xe8]
  358562: 4618         	mov	r0, r3
  358564: f04f 0200    	mov.w	r2, #0x0
  358568: f04f 0300    	mov.w	r3, #0x0
  35856c: f37a fe11    	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x37ac22
  358570: 9b01         	ldr	r3, [sp, #0x4]
  358572: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  358576: 681b         	ldr	r3, [r3]
  358578: 334c         	adds	r3, #0x4c
  35857a: 681c         	ldr	r4, [r3]
  35857c: 9b01         	ldr	r3, [sp, #0x4]
  35857e: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  358582: ab02         	add	r3, sp, #0x8
  358584: 4618         	mov	r0, r3
  358586: f04f 0100    	mov.w	r1, #0x0
  35858a: f2cc 01a0    	movt	r1, #0xc0a0
  35858e: f04f 0200    	mov.w	r2, #0x0
  358592: f2c4 1220    	movt	r2, #0x4120
  358596: f23a fbab    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23a756
  35859a: ab02         	add	r3, sp, #0x8
  35859c: 4628         	mov	r0, r5
  35859e: 4619         	mov	r1, r3
  3585a0: 47a0         	blx	r4
  3585a2: 9b01         	ldr	r3, [sp, #0x4]
  3585a4: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3585a8: 681b         	ldr	r3, [r3]
  3585aa: 337c         	adds	r3, #0x7c
  3585ac: 681c         	ldr	r4, [r3]
  3585ae: 9b01         	ldr	r3, [sp, #0x4]
  3585b0: f8d3 51ec    	ldr.w	r5, [r3, #0x1ec]
  3585b4: ab02         	add	r3, sp, #0x8
  3585b6: 4618         	mov	r0, r3
  3585b8: f04f 517c    	mov.w	r1, #0x3f000000
  3585bc: f04f 527c    	mov.w	r2, #0x3f000000
  3585c0: f23a fb96    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23a72c
  3585c4: ab02         	add	r3, sp, #0x8
  3585c6: 4628         	mov	r0, r5
  3585c8: 4619         	mov	r1, r3
  3585ca: 47a0         	blx	r4
  3585cc: 9b01         	ldr	r3, [sp, #0x4]
  3585ce: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3585d2: 681b         	ldr	r3, [r3]
  3585d4: 3398         	adds	r3, #0x98
  3585d6: 681b         	ldr	r3, [r3]
  3585d8: 9a01         	ldr	r2, [sp, #0x4]
  3585da: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3585de: 4610         	mov	r0, r2
  3585e0: f04f 0100    	mov.w	r1, #0x0
  3585e4: f2c4 215c    	movt	r1, #0x425c
  3585e8: 4798         	blx	r3
  3585ea: 9b01         	ldr	r3, [sp, #0x4]
  3585ec: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3585f0: 681b         	ldr	r3, [r3]
  3585f2: 3340         	adds	r3, #0x40
  3585f4: 681b         	ldr	r3, [r3]
  3585f6: 9a01         	ldr	r2, [sp, #0x4]
  3585f8: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3585fc: 4610         	mov	r0, r2
  3585fe: f04f 517e    	mov.w	r1, #0x3f800000
  358602: 4798         	blx	r3
  358604: 9b01         	ldr	r3, [sp, #0x4]
  358606: 681b         	ldr	r3, [r3]
  358608: 334c         	adds	r3, #0x4c
  35860a: 681c         	ldr	r4, [r3]
  35860c: 9d01         	ldr	r5, [sp, #0x4]
  35860e: ab02         	add	r3, sp, #0x8
  358610: 4618         	mov	r0, r3
  358612: f04f 0100    	mov.w	r1, #0x0
  358616: f04f 0200    	mov.w	r2, #0x0
  35861a: f23a fb69    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23a6d2
  35861e: ab02         	add	r3, sp, #0x8
  358620: 4628         	mov	r0, r5
  358622: 4619         	mov	r1, r3
  358624: 47a0         	blx	r4
  358626: 9b01         	ldr	r3, [sp, #0x4]
  358628: 681b         	ldr	r3, [r3]
  35862a: 3340         	adds	r3, #0x40
  35862c: 681b         	ldr	r3, [r3]
  35862e: 9a01         	ldr	r2, [sp, #0x4]
  358630: 4610         	mov	r0, r2
  358632: f04f 517e    	mov.w	r1, #0x3f800000
  358636: 4798         	blx	r3
  358638: 9b01         	ldr	r3, [sp, #0x4]
  35863a: 681b         	ldr	r3, [r3]
  35863c: 3398         	adds	r3, #0x98
  35863e: 681b         	ldr	r3, [r3]
  358640: 9a01         	ldr	r2, [sp, #0x4]
  358642: 4610         	mov	r0, r2
  358644: f04f 0100    	mov.w	r1, #0x0
  358648: 4798         	blx	r3
  35864a: 9b01         	ldr	r3, [sp, #0x4]
  35864c: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  358650: 681b         	ldr	r3, [r3]
  358652: 3390         	adds	r3, #0x90
  358654: 681b         	ldr	r3, [r3]
  358656: 9a01         	ldr	r2, [sp, #0x4]
  358658: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  35865c: 4610         	mov	r0, r2
  35865e: 2100         	movs	r1, #0x0
  358660: 4798         	blx	r3
  358662: 9b01         	ldr	r3, [sp, #0x4]
  358664: 2200         	movs	r2, #0x0
  358666: f883 2195    	strb.w	r2, [r3, #0x195]
  35866a: 9b01         	ldr	r3, [sp, #0x4]
  35866c: 2200         	movs	r2, #0x0
  35866e: f883 2194    	strb.w	r2, [r3, #0x194]
  358672: 9b01         	ldr	r3, [sp, #0x4]
  358674: f04f 0200    	mov.w	r2, #0x0
  358678: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  35867c: b005         	add	sp, #0x14
  35867e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x35867f); words below are literal-pool data ---
  358680: 3ea0         	subs	r6, #0xa0
  358682: 0047         	lsls	r7, r0, #0x1

// ==== M93BA::setMapConfiguration
//      file offset 0x358684 (= ELF address; Ghidra 0x368684), 248 bytes, Thumb-2
  358684: b570         	push	{r4, r5, r6, lr}
  358686: b084         	sub	sp, #0x10
  358688: 9001         	str	r0, [sp, #0x4]
  35868a: 4c3a         	ldr	r4, [pc, #0xe8]         @ 0x358774 <M93BA::setMapConfiguration()+0xf0>
  35868c: 447c         	add	r4, pc
  35868e: 9b01         	ldr	r3, [sp, #0x4]
  358690: f04f 0200    	mov.w	r2, #0x0
  358694: f8c3 2190    	str.w	r2, [r3, #0x190]
  358698: 9b01         	ldr	r3, [sp, #0x4]
  35869a: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35869e: 681b         	ldr	r3, [r3]
  3586a0: 334c         	adds	r3, #0x4c
  3586a2: 681d         	ldr	r5, [r3]
  3586a4: 9b01         	ldr	r3, [sp, #0x4]
  3586a6: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3586aa: ab02         	add	r3, sp, #0x8
  3586ac: 4618         	mov	r0, r3
  3586ae: f04f 0100    	mov.w	r1, #0x0
  3586b2: f04f 0200    	mov.w	r2, #0x0
  3586b6: f23a fb1b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23a636
  3586ba: ab02         	add	r3, sp, #0x8
  3586bc: 4630         	mov	r0, r6
  3586be: 4619         	mov	r1, r3
  3586c0: 47a8         	blx	r5
  3586c2: 9b01         	ldr	r3, [sp, #0x4]
  3586c4: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3586c8: 681b         	ldr	r3, [r3]
  3586ca: 337c         	adds	r3, #0x7c
  3586cc: 681d         	ldr	r5, [r3]
  3586ce: 9b01         	ldr	r3, [sp, #0x4]
  3586d0: f8d3 61ec    	ldr.w	r6, [r3, #0x1ec]
  3586d4: ab02         	add	r3, sp, #0x8
  3586d6: 4618         	mov	r0, r3
  3586d8: f04f 517c    	mov.w	r1, #0x3f000000
  3586dc: f04f 527c    	mov.w	r2, #0x3f000000
  3586e0: f23a fb06    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23a60c
  3586e4: ab02         	add	r3, sp, #0x8
  3586e6: 4630         	mov	r0, r6
  3586e8: 4619         	mov	r1, r3
  3586ea: 47a8         	blx	r5
  3586ec: 9b01         	ldr	r3, [sp, #0x4]
  3586ee: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3586f2: 681b         	ldr	r3, [r3]
  3586f4: 3398         	adds	r3, #0x98
  3586f6: 681b         	ldr	r3, [r3]
  3586f8: 9a01         	ldr	r2, [sp, #0x4]
  3586fa: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3586fe: 4610         	mov	r0, r2
  358700: f04f 0100    	mov.w	r1, #0x0
  358704: 4798         	blx	r3
  358706: 9b01         	ldr	r3, [sp, #0x4]
  358708: 681b         	ldr	r3, [r3]
  35870a: 334c         	adds	r3, #0x4c
  35870c: 681d         	ldr	r5, [r3]
  35870e: 9e01         	ldr	r6, [sp, #0x4]
  358710: ab02         	add	r3, sp, #0x8
  358712: 4618         	mov	r0, r3
  358714: f04f 0100    	mov.w	r1, #0x0
  358718: f04f 0200    	mov.w	r2, #0x0
  35871c: f23a fae8    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x23a5d0
  358720: ab02         	add	r3, sp, #0x8
  358722: 4630         	mov	r0, r6
  358724: 4619         	mov	r1, r3
  358726: 47a8         	blx	r5
  358728: 9b01         	ldr	r3, [sp, #0x4]
  35872a: 681b         	ldr	r3, [r3]
  35872c: 3340         	adds	r3, #0x40
  35872e: 681b         	ldr	r3, [r3]
  358730: 9901         	ldr	r1, [sp, #0x4]
  358732: 4a11         	ldr	r2, [pc, #0x44]         @ 0x358778 <M93BA::setMapConfiguration()+0xf4>
  358734: 58a2         	ldr	r2, [r4, r2]
  358736: 6812         	ldr	r2, [r2]
  358738: 4608         	mov	r0, r1
  35873a: 4611         	mov	r1, r2
  35873c: 4798         	blx	r3
  35873e: 9b01         	ldr	r3, [sp, #0x4]
  358740: f8d3 31f0    	ldr.w	r3, [r3, #0x1f0]
  358744: 681b         	ldr	r3, [r3]
  358746: 3390         	adds	r3, #0x90
  358748: 681b         	ldr	r3, [r3]
  35874a: 9a01         	ldr	r2, [sp, #0x4]
  35874c: f8d2 21f0    	ldr.w	r2, [r2, #0x1f0]
  358750: 4610         	mov	r0, r2
  358752: 2100         	movs	r1, #0x0
  358754: 4798         	blx	r3
  358756: 9b01         	ldr	r3, [sp, #0x4]
  358758: 2200         	movs	r2, #0x0
  35875a: f883 2195    	strb.w	r2, [r3, #0x195]
  35875e: 9b01         	ldr	r3, [sp, #0x4]
  358760: 2200         	movs	r2, #0x0
  358762: f883 2194    	strb.w	r2, [r3, #0x194]
  358766: 9b01         	ldr	r3, [sp, #0x4]
  358768: f04f 0200    	mov.w	r2, #0x0
  35876c: f8c3 21c0    	str.w	r2, [r3, #0x1c0]
  358770: b004         	add	sp, #0x10
  358772: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x358773); words below are literal-pool data ---
  358774: a37c         	adr	r3, #496 <M93BA::isRight()+0x28>
  358776: 005d         	lsls	r5, r3, #0x1
  358778: d748         	bvc	0x35880c <M93BA::setRight(bool)+0x4> @ imm = #0x90
  35877a: ffff b500    	<unknown>

// ==== M93BA::getWeaponTexture
//      file offset 0x35877c (= ELF address; Ghidra 0x36877c), 40 bytes, Thumb-2
  35877c: b500         	push	{lr}
  35877e: b083         	sub	sp, #0xc
  358780: 9001         	str	r0, [sp, #0x4]
  358782: 9b01         	ldr	r3, [sp, #0x4]
  358784: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  358788: 681b         	ldr	r3, [r3]
  35878a: f503 73fa    	add.w	r3, r3, #0x1f4
  35878e: 681b         	ldr	r3, [r3]
  358790: 9a01         	ldr	r2, [sp, #0x4]
  358792: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  358796: 4610         	mov	r0, r2
  358798: 4798         	blx	r3
  35879a: 4603         	mov	r3, r0
  35879c: 4618         	mov	r0, r3
  35879e: b003         	add	sp, #0xc
  3587a0: f85d fb04    	ldr	pc, [sp], #4

// ==== M93BA::getWeaponRect
//      file offset 0x3587a4 (= ELF address; Ghidra 0x3687a4), 38 bytes, Thumb-2
  3587a4: b500         	push	{lr}
  3587a6: b083         	sub	sp, #0xc
  3587a8: 9001         	str	r0, [sp, #0x4]
  3587aa: 9100         	str	r1, [sp]
  3587ac: 9b00         	ldr	r3, [sp]
  3587ae: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3587b2: 4618         	mov	r0, r3
  3587b4: f784 fa92    	bl	0x2dccdc <cocos2d::CCSprite::getTextureRect()> @ imm = #-0x7badc
  3587b8: 4603         	mov	r3, r0
  3587ba: 9801         	ldr	r0, [sp, #0x4]
  3587bc: 4619         	mov	r1, r3
  3587be: f23a fdab    	bl	0x593318 <cocos2d::CCRect::CCRect(cocos2d::CCRect const&)> @ imm = #0x23ab56
  3587c2: 9801         	ldr	r0, [sp, #0x4]
  3587c4: b003         	add	sp, #0xc
  3587c6: f85d fb04    	ldr	pc, [sp], #4

// ==== M93BA::isRight
//      file offset 0x3587cc (= ELF address; Ghidra 0x3687cc), 60 bytes, Thumb-2
  3587cc: b500         	push	{lr}
  3587ce: b083         	sub	sp, #0xc
  3587d0: 9001         	str	r0, [sp, #0x4]
  3587d2: 9b01         	ldr	r3, [sp, #0x4]
  3587d4: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  3587d8: 681b         	ldr	r3, [r3]
  3587da: 3334         	adds	r3, #0x34
  3587dc: 681b         	ldr	r3, [r3]
  3587de: 9a01         	ldr	r2, [sp, #0x4]
  3587e0: f8d2 21ec    	ldr.w	r2, [r2, #0x1ec]
  3587e4: 4610         	mov	r0, r2
  3587e6: 4798         	blx	r3
  3587e8: ee07 0a10    	vmov	s14, r0
  3587ec: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3587f0: eeb4 7ae7    	vcmpe.f32	s14, s15
  3587f4: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3587f8: bfd4         	ite	le
  3587fa: 2300         	movle	r3, #0x0
  3587fc: 2301         	movgt	r3, #0x1
  3587fe: b2db         	uxtb	r3, r3
  358800: 4618         	mov	r0, r3
  358802: b003         	add	sp, #0xc
  358804: f85d fb04    	ldr	pc, [sp], #4

// ==== M93BA::setRight
//      file offset 0x358808 (= ELF address; Ghidra 0x368808), 64 bytes, Thumb-2
  358808: b500         	push	{lr}
  35880a: b083         	sub	sp, #0xc
  35880c: 9001         	str	r0, [sp, #0x4]
  35880e: 460b         	mov	r3, r1
  358810: f88d 3003    	strb.w	r3, [sp, #0x3]
  358814: 9b01         	ldr	r3, [sp, #0x4]
  358816: f8d3 31ec    	ldr.w	r3, [r3, #0x1ec]
  35881a: 681b         	ldr	r3, [r3]
  35881c: 3330         	adds	r3, #0x30
  35881e: 681a         	ldr	r2, [r3]
  358820: 9b01         	ldr	r3, [sp, #0x4]
  358822: f8d3 11ec    	ldr.w	r1, [r3, #0x1ec]
  358826: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  35882a: 2b00         	cmp	r3, #0x0
  35882c: d002         	beq	0x358834 <M93BA::setRight(bool)+0x2c> @ imm = #0x4
  35882e: f04f 537e    	mov.w	r3, #0x3f800000
  358832: e003         	b	0x35883c <M93BA::setRight(bool)+0x34> @ imm = #0x6
  358834: f04f 0300    	mov.w	r3, #0x0
  358838: f6cb 7380    	movt	r3, #0xbf80
  35883c: 4608         	mov	r0, r1
  35883e: 4619         	mov	r1, r3
  358840: 4790         	blx	r2
  358842: b003         	add	sp, #0xc
  358844: f85d fb04    	ldr	pc, [sp], #4

// ==== M93BA::getRANGE
//      file offset 0x358848 (= ELF address; Ghidra 0x368848), 16 bytes, Thumb-2
  358848: 4b02         	ldr	r3, [pc, #0x8]          @ 0x358854 <M93BA::getRANGE()+0xc>
  35884a: 447b         	add	r3, pc
  35884c: 681b         	ldr	r3, [r3]
  35884e: 4618         	mov	r0, r3
  358850: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x358851); words below are literal-pool data ---
  358852: bf00         	nop
  358854: ab8a         	add	r3, sp, #0x228
  358856: 005d         	lsls	r5, r3, #0x1

// ==== M93BA::getDAMAGE
//      file offset 0x358858 (= ELF address; Ghidra 0x368858), 16 bytes, Thumb-2
  358858: 4b02         	ldr	r3, [pc, #0x8]          @ 0x358864 <M93BA::getDAMAGE()+0xc>
  35885a: 447b         	add	r3, pc
  35885c: 681b         	ldr	r3, [r3]
  35885e: 4618         	mov	r0, r3
  358860: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x358861); words below are literal-pool data ---
  358862: bf00         	nop
  358864: ab76         	add	r3, sp, #0x1d8
  358866: 005d         	lsls	r5, r3, #0x1

// ==== M93BA::create
//      file offset 0x4172bc (= ELF address; Ghidra 0x4272bc), 112 bytes, Thumb-2
  4172bc: b510         	push	{r4, lr}
  4172be: b082         	sub	sp, #0x8
  4172c0: f44f 70fc    	mov.w	r0, #0x1f8
  4172c4: f370 fb4e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x37069c
  4172c8: 4603         	mov	r3, r0
  4172ca: 461c         	mov	r4, r3
  4172cc: 4620         	mov	r0, r4
  4172ce: f740 fbf5    	bl	0x357abc <M93BA::M93BA()> @ imm = #-0xbf816
  4172d2: 9401         	str	r4, [sp, #0x4]
  4172d4: 9b01         	ldr	r3, [sp, #0x4]
  4172d6: 2b00         	cmp	r3, #0x0
  4172d8: d00a         	beq	0x4172f0 <M93BA::create()+0x34> @ imm = #0x14
  4172da: 9b01         	ldr	r3, [sp, #0x4]
  4172dc: 681b         	ldr	r3, [r3]
  4172de: 3318         	adds	r3, #0x18
  4172e0: 681b         	ldr	r3, [r3]
  4172e2: 9801         	ldr	r0, [sp, #0x4]
  4172e4: 4798         	blx	r3
  4172e6: 4603         	mov	r3, r0
  4172e8: 2b00         	cmp	r3, #0x0
  4172ea: d001         	beq	0x4172f0 <M93BA::create()+0x34> @ imm = #0x2
  4172ec: 2301         	movs	r3, #0x1
  4172ee: e000         	b	0x4172f2 <M93BA::create()+0x36> @ imm = #0x0
  4172f0: 2300         	movs	r3, #0x0
  4172f2: 2b00         	cmp	r3, #0x0
  4172f4: d005         	beq	0x417302 <M93BA::create()+0x46> @ imm = #0xa
  4172f6: 9b01         	ldr	r3, [sp, #0x4]
  4172f8: 4618         	mov	r0, r3
  4172fa: f180 fdff    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x180bfe
  4172fe: 9b01         	ldr	r3, [sp, #0x4]
  417300: e011         	b	0x417326 <M93BA::create()+0x6a> @ imm = #0x22
  417302: 9b01         	ldr	r3, [sp, #0x4]
  417304: 2b00         	cmp	r3, #0x0
  417306: d005         	beq	0x417314 <M93BA::create()+0x58> @ imm = #0xa
  417308: 9b01         	ldr	r3, [sp, #0x4]
  41730a: 681b         	ldr	r3, [r3]
  41730c: 3308         	adds	r3, #0x8
  41730e: 681b         	ldr	r3, [r3]
  417310: 9801         	ldr	r0, [sp, #0x4]
  417312: 4798         	blx	r3
  417314: 2300         	movs	r3, #0x0
  417316: 9301         	str	r3, [sp, #0x4]
  417318: 2300         	movs	r3, #0x0
  41731a: e004         	b	0x417326 <M93BA::create()+0x6a> @ imm = #0x8
  41731c: 4620         	mov	r0, r4
  41731e: f370 fec1    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x370d82
  417322: f370 fec3    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x370d86
  417326: 4618         	mov	r0, r3
  417328: b002         	add	sp, #0x8
  41732a: bd10         	pop	{r4, pc}
