// Sound: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 20 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../Sound.cpp

// ==== Sound::Sound
//      file offset 0x3f4920 (= ELF address; Ghidra 0x404920), 1464 bytes, Thumb-2
  3f4920: b530         	push	{r4, r5, lr}
  3f4922: b091         	sub	sp, #0x44
  3f4924: 9001         	str	r0, [sp, #0x4]
  3f4926: f8df 1574    	ldr.w	r1, [pc, #0x574]        @ 0x3f4e9c <Sound::Sound()+0x57c>
  3f492a: 4479         	add	r1, pc
  3f492c: 9b01         	ldr	r3, [sp, #0x4]
  3f492e: f8df 2570    	ldr.w	r2, [pc, #0x570]        @ 0x3f4ea0 <Sound::Sound()+0x580>
  3f4932: 588a         	ldr	r2, [r1, r2]
  3f4934: 3208         	adds	r2, #0x8
  3f4936: 601a         	str	r2, [r3]
  3f4938: 9b01         	ldr	r3, [sp, #0x4]
  3f493a: 3310         	adds	r3, #0x10
  3f493c: 4618         	mov	r0, r3
  3f493e: f7d1 fa45    	bl	0x3c5dcc <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::map()> @ imm = #-0x2eb76
  3f4942: 9b01         	ldr	r3, [sp, #0x4]
  3f4944: f04f 527e    	mov.w	r2, #0x3f800000
  3f4948: 631a         	str	r2, [r3, #0x30]
  3f494a: 9b01         	ldr	r3, [sp, #0x4]
  3f494c: f04f 527e    	mov.w	r2, #0x3f800000
  3f4950: 635a         	str	r2, [r3, #0x34]
  3f4952: 9b01         	ldr	r3, [sp, #0x4]
  3f4954: 2201         	movs	r2, #0x1
  3f4956: f883 2028    	strb.w	r2, [r3, #0x28]
  3f495a: 9b01         	ldr	r3, [sp, #0x4]
  3f495c: 2201         	movs	r2, #0x1
  3f495e: f883 2029    	strb.w	r2, [r3, #0x29]
  3f4962: f1a2 fd25    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x1a2a4a
  3f4966: 4602         	mov	r2, r0
  3f4968: 9b01         	ldr	r3, [sp, #0x4]
  3f496a: 605a         	str	r2, [r3, #0x4]
  3f496c: 9b01         	ldr	r3, [sp, #0x4]
  3f496e: 685b         	ldr	r3, [r3, #0x4]
  3f4970: 4618         	mov	r0, r3
  3f4972: f1a3 fab9    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a3572
  3f4976: 9801         	ldr	r0, [sp, #0x4]
  3f4978: f000 faea    	bl	0x3f4f50 <Sound::loadSoundBuffers()> @ imm = #0x5d4
  3f497c: f1a2 fd18    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x1a2a30
  3f4980: 4602         	mov	r2, r0
  3f4982: 9b01         	ldr	r3, [sp, #0x4]
  3f4984: 609a         	str	r2, [r3, #0x8]
  3f4986: 9b01         	ldr	r3, [sp, #0x4]
  3f4988: 689d         	ldr	r5, [r3, #0x8]
  3f498a: 205c         	movs	r0, #0x5c
  3f498c: f6f0 f9bc    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x10fc88
  3f4990: 4604         	mov	r4, r0
  3f4992: ab0f         	add	r3, sp, #0x3c
  3f4994: 4618         	mov	r0, r3
  3f4996: f395 fd2d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x395a5a
  3f499a: aa03         	add	r2, sp, #0xc
  3f499c: ab0f         	add	r3, sp, #0x3c
  3f499e: 4610         	mov	r0, r2
  3f49a0: f8df 2500    	ldr.w	r2, [pc, #0x500]        @ 0x3f4ea4 <Sound::Sound()+0x584>
  3f49a4: 447a         	add	r2, pc
  3f49a6: 4611         	mov	r1, r2
  3f49a8: 461a         	mov	r2, r3
  3f49aa: f3c2 f859    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c20b2
  3f49ae: ab03         	add	r3, sp, #0xc
  3f49b0: 4628         	mov	r0, r5
  3f49b2: 4621         	mov	r1, r4
  3f49b4: 461a         	mov	r2, r3
  3f49b6: f19f ffbf    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x19ff7e
  3f49ba: ab03         	add	r3, sp, #0xc
  3f49bc: 4618         	mov	r0, r3
  3f49be: f3c0 ffa9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0f52
  3f49c2: ab0f         	add	r3, sp, #0x3c
  3f49c4: 4618         	mov	r0, r3
  3f49c6: f395 fd19    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x395a32
  3f49ca: 9b01         	ldr	r3, [sp, #0x4]
  3f49cc: 689d         	ldr	r5, [r3, #0x8]
  3f49ce: 205d         	movs	r0, #0x5d
  3f49d0: f6f0 f99a    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x10fccc
  3f49d4: 4604         	mov	r4, r0
  3f49d6: ab0f         	add	r3, sp, #0x3c
  3f49d8: 4618         	mov	r0, r3
  3f49da: f395 fd0b    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x395a16
  3f49de: aa04         	add	r2, sp, #0x10
  3f49e0: ab0f         	add	r3, sp, #0x3c
  3f49e2: 4610         	mov	r0, r2
  3f49e4: f8df 24c0    	ldr.w	r2, [pc, #0x4c0]        @ 0x3f4ea8 <Sound::Sound()+0x588>
  3f49e8: 447a         	add	r2, pc
  3f49ea: 4611         	mov	r1, r2
  3f49ec: 461a         	mov	r2, r3
  3f49ee: f3c2 f837    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c206e
  3f49f2: ab04         	add	r3, sp, #0x10
  3f49f4: 4628         	mov	r0, r5
  3f49f6: 4621         	mov	r1, r4
  3f49f8: 461a         	mov	r2, r3
  3f49fa: f19f ff9d    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x19ff3a
  3f49fe: ab04         	add	r3, sp, #0x10
  3f4a00: 4618         	mov	r0, r3
  3f4a02: f3c0 ff87    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0f0e
  3f4a06: ab0f         	add	r3, sp, #0x3c
  3f4a08: 4618         	mov	r0, r3
  3f4a0a: f395 fcf7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3959ee
  3f4a0e: 9b01         	ldr	r3, [sp, #0x4]
  3f4a10: 689d         	ldr	r5, [r3, #0x8]
  3f4a12: 205e         	movs	r0, #0x5e
  3f4a14: f6f0 f978    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x10fd10
  3f4a18: 4604         	mov	r4, r0
  3f4a1a: ab0f         	add	r3, sp, #0x3c
  3f4a1c: 4618         	mov	r0, r3
  3f4a1e: f395 fce9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3959d2
  3f4a22: aa05         	add	r2, sp, #0x14
  3f4a24: ab0f         	add	r3, sp, #0x3c
  3f4a26: 4610         	mov	r0, r2
  3f4a28: f8df 2480    	ldr.w	r2, [pc, #0x480]        @ 0x3f4eac <Sound::Sound()+0x58c>
  3f4a2c: 447a         	add	r2, pc
  3f4a2e: 4611         	mov	r1, r2
  3f4a30: 461a         	mov	r2, r3
  3f4a32: f3c2 f815    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c202a
  3f4a36: ab05         	add	r3, sp, #0x14
  3f4a38: 4628         	mov	r0, r5
  3f4a3a: 4621         	mov	r1, r4
  3f4a3c: 461a         	mov	r2, r3
  3f4a3e: f19f ff7b    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x19fef6
  3f4a42: ab05         	add	r3, sp, #0x14
  3f4a44: 4618         	mov	r0, r3
  3f4a46: f3c0 ff65    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0eca
  3f4a4a: ab0f         	add	r3, sp, #0x3c
  3f4a4c: 4618         	mov	r0, r3
  3f4a4e: f395 fcd5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3959aa
  3f4a52: 9b01         	ldr	r3, [sp, #0x4]
  3f4a54: 689d         	ldr	r5, [r3, #0x8]
  3f4a56: 205f         	movs	r0, #0x5f
  3f4a58: f6f0 f956    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x10fd54
  3f4a5c: 4604         	mov	r4, r0
  3f4a5e: ab0f         	add	r3, sp, #0x3c
  3f4a60: 4618         	mov	r0, r3
  3f4a62: f395 fcc7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x39598e
  3f4a66: aa06         	add	r2, sp, #0x18
  3f4a68: ab0f         	add	r3, sp, #0x3c
  3f4a6a: 4610         	mov	r0, r2
  3f4a6c: f8df 2440    	ldr.w	r2, [pc, #0x440]        @ 0x3f4eb0 <Sound::Sound()+0x590>
  3f4a70: 447a         	add	r2, pc
  3f4a72: 4611         	mov	r1, r2
  3f4a74: 461a         	mov	r2, r3
  3f4a76: f3c1 fff3    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c1fe6
  3f4a7a: ab06         	add	r3, sp, #0x18
  3f4a7c: 4628         	mov	r0, r5
  3f4a7e: 4621         	mov	r1, r4
  3f4a80: 461a         	mov	r2, r3
  3f4a82: f19f ff59    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x19feb2
  3f4a86: ab06         	add	r3, sp, #0x18
  3f4a88: 4618         	mov	r0, r3
  3f4a8a: f3c0 ff43    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0e86
  3f4a8e: ab0f         	add	r3, sp, #0x3c
  3f4a90: 4618         	mov	r0, r3
  3f4a92: f395 fcb3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x395966
  3f4a96: 9b01         	ldr	r3, [sp, #0x4]
  3f4a98: 689d         	ldr	r5, [r3, #0x8]
  3f4a9a: 2060         	movs	r0, #0x60
  3f4a9c: f6f0 f934    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x10fd98
  3f4aa0: 4604         	mov	r4, r0
  3f4aa2: ab0f         	add	r3, sp, #0x3c
  3f4aa4: 4618         	mov	r0, r3
  3f4aa6: f395 fca5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x39594a
  3f4aaa: aa07         	add	r2, sp, #0x1c
  3f4aac: ab0f         	add	r3, sp, #0x3c
  3f4aae: 4610         	mov	r0, r2
  3f4ab0: f8df 2400    	ldr.w	r2, [pc, #0x400]        @ 0x3f4eb4 <Sound::Sound()+0x594>
  3f4ab4: 447a         	add	r2, pc
  3f4ab6: 4611         	mov	r1, r2
  3f4ab8: 461a         	mov	r2, r3
  3f4aba: f3c1 ffd1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c1fa2
  3f4abe: ab07         	add	r3, sp, #0x1c
  3f4ac0: 4628         	mov	r0, r5
  3f4ac2: 4621         	mov	r1, r4
  3f4ac4: 461a         	mov	r2, r3
  3f4ac6: f19f ff37    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x19fe6e
  3f4aca: ab07         	add	r3, sp, #0x1c
  3f4acc: 4618         	mov	r0, r3
  3f4ace: f3c0 ff21    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0e42
  3f4ad2: ab0f         	add	r3, sp, #0x3c
  3f4ad4: 4618         	mov	r0, r3
  3f4ad6: f395 fc91    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x395922
  3f4ada: 9b01         	ldr	r3, [sp, #0x4]
  3f4adc: 689d         	ldr	r5, [r3, #0x8]
  3f4ade: 202c         	movs	r0, #0x2c
  3f4ae0: f6f0 f912    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x10fddc
  3f4ae4: 4604         	mov	r4, r0
  3f4ae6: ab0f         	add	r3, sp, #0x3c
  3f4ae8: 4618         	mov	r0, r3
  3f4aea: f395 fc83    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x395906
  3f4aee: aa08         	add	r2, sp, #0x20
  3f4af0: ab0f         	add	r3, sp, #0x3c
  3f4af2: 4610         	mov	r0, r2
  3f4af4: 4af0         	ldr	r2, [pc, #0x3c0]        @ 0x3f4eb8 <Sound::Sound()+0x598>
  3f4af6: 447a         	add	r2, pc
  3f4af8: 4611         	mov	r1, r2
  3f4afa: 461a         	mov	r2, r3
  3f4afc: f3c1 ffb0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c1f60
  3f4b00: ab08         	add	r3, sp, #0x20
  3f4b02: 4628         	mov	r0, r5
  3f4b04: 4621         	mov	r1, r4
  3f4b06: 461a         	mov	r2, r3
  3f4b08: f19f ff16    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x19fe2c
  3f4b0c: ab08         	add	r3, sp, #0x20
  3f4b0e: 4618         	mov	r0, r3
  3f4b10: f3c0 ff00    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0e00
  3f4b14: ab0f         	add	r3, sp, #0x3c
  3f4b16: 4618         	mov	r0, r3
  3f4b18: f395 fc70    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3958e0
  3f4b1c: 9b01         	ldr	r3, [sp, #0x4]
  3f4b1e: 689d         	ldr	r5, [r3, #0x8]
  3f4b20: 2028         	movs	r0, #0x28
  3f4b22: f6f0 f8f1    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x10fe1e
  3f4b26: 4604         	mov	r4, r0
  3f4b28: ab0f         	add	r3, sp, #0x3c
  3f4b2a: 4618         	mov	r0, r3
  3f4b2c: f395 fc62    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3958c4
  3f4b30: aa09         	add	r2, sp, #0x24
  3f4b32: ab0f         	add	r3, sp, #0x3c
  3f4b34: 4610         	mov	r0, r2
  3f4b36: 4ae1         	ldr	r2, [pc, #0x384]        @ 0x3f4ebc <Sound::Sound()+0x59c>
  3f4b38: 447a         	add	r2, pc
  3f4b3a: 4611         	mov	r1, r2
  3f4b3c: 461a         	mov	r2, r3
  3f4b3e: f3c1 ff8f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c1f1e
  3f4b42: ab09         	add	r3, sp, #0x24
  3f4b44: 4628         	mov	r0, r5
  3f4b46: 4621         	mov	r1, r4
  3f4b48: 461a         	mov	r2, r3
  3f4b4a: f19f fef5    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x19fdea
  3f4b4e: ab09         	add	r3, sp, #0x24
  3f4b50: 4618         	mov	r0, r3
  3f4b52: f3c0 fedf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0dbe
  3f4b56: ab0f         	add	r3, sp, #0x3c
  3f4b58: 4618         	mov	r0, r3
  3f4b5a: f395 fc4f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39589e
  3f4b5e: 9b01         	ldr	r3, [sp, #0x4]
  3f4b60: 689d         	ldr	r5, [r3, #0x8]
  3f4b62: 2029         	movs	r0, #0x29
  3f4b64: f6f0 f8d0    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x10fe60
  3f4b68: 4604         	mov	r4, r0
  3f4b6a: ab0f         	add	r3, sp, #0x3c
  3f4b6c: 4618         	mov	r0, r3
  3f4b6e: f395 fc41    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x395882
  3f4b72: aa0a         	add	r2, sp, #0x28
  3f4b74: ab0f         	add	r3, sp, #0x3c
  3f4b76: 4610         	mov	r0, r2
  3f4b78: 4ad1         	ldr	r2, [pc, #0x344]        @ 0x3f4ec0 <Sound::Sound()+0x5a0>
  3f4b7a: 447a         	add	r2, pc
  3f4b7c: 4611         	mov	r1, r2
  3f4b7e: 461a         	mov	r2, r3
  3f4b80: f3c1 ff6e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c1edc
  3f4b84: ab0a         	add	r3, sp, #0x28
  3f4b86: 4628         	mov	r0, r5
  3f4b88: 4621         	mov	r1, r4
  3f4b8a: 461a         	mov	r2, r3
  3f4b8c: f19f fed4    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x19fda8
  3f4b90: ab0a         	add	r3, sp, #0x28
  3f4b92: 4618         	mov	r0, r3
  3f4b94: f3c0 febe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0d7c
  3f4b98: ab0f         	add	r3, sp, #0x3c
  3f4b9a: 4618         	mov	r0, r3
  3f4b9c: f395 fc2e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39585c
  3f4ba0: 9b01         	ldr	r3, [sp, #0x4]
  3f4ba2: 689d         	ldr	r5, [r3, #0x8]
  3f4ba4: 202a         	movs	r0, #0x2a
  3f4ba6: f6f0 f8af    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x10fea2
  3f4baa: 4604         	mov	r4, r0
  3f4bac: ab0f         	add	r3, sp, #0x3c
  3f4bae: 4618         	mov	r0, r3
  3f4bb0: f395 fc20    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x395840
  3f4bb4: aa0b         	add	r2, sp, #0x2c
  3f4bb6: ab0f         	add	r3, sp, #0x3c
  3f4bb8: 4610         	mov	r0, r2
  3f4bba: 4ac2         	ldr	r2, [pc, #0x308]        @ 0x3f4ec4 <Sound::Sound()+0x5a4>
  3f4bbc: 447a         	add	r2, pc
  3f4bbe: 4611         	mov	r1, r2
  3f4bc0: 461a         	mov	r2, r3
  3f4bc2: f3c1 ff4d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c1e9a
  3f4bc6: ab0b         	add	r3, sp, #0x2c
  3f4bc8: 4628         	mov	r0, r5
  3f4bca: 4621         	mov	r1, r4
  3f4bcc: 461a         	mov	r2, r3
  3f4bce: f19f feb3    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x19fd66
  3f4bd2: ab0b         	add	r3, sp, #0x2c
  3f4bd4: 4618         	mov	r0, r3
  3f4bd6: f3c0 fe9d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0d3a
  3f4bda: ab0f         	add	r3, sp, #0x3c
  3f4bdc: 4618         	mov	r0, r3
  3f4bde: f395 fc0d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39581a
  3f4be2: 9b01         	ldr	r3, [sp, #0x4]
  3f4be4: 689d         	ldr	r5, [r3, #0x8]
  3f4be6: 2061         	movs	r0, #0x61
  3f4be8: f6f0 f88e    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x10fee4
  3f4bec: 4604         	mov	r4, r0
  3f4bee: ab0f         	add	r3, sp, #0x3c
  3f4bf0: 4618         	mov	r0, r3
  3f4bf2: f395 fbff    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3957fe
  3f4bf6: aa0c         	add	r2, sp, #0x30
  3f4bf8: ab0f         	add	r3, sp, #0x3c
  3f4bfa: 4610         	mov	r0, r2
  3f4bfc: 4ab2         	ldr	r2, [pc, #0x2c8]        @ 0x3f4ec8 <Sound::Sound()+0x5a8>
  3f4bfe: 447a         	add	r2, pc
  3f4c00: 4611         	mov	r1, r2
  3f4c02: 461a         	mov	r2, r3
  3f4c04: f3c1 ff2c    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c1e58
  3f4c08: ab0c         	add	r3, sp, #0x30
  3f4c0a: 4628         	mov	r0, r5
  3f4c0c: 4621         	mov	r1, r4
  3f4c0e: 461a         	mov	r2, r3
  3f4c10: f19f fe92    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x19fd24
  3f4c14: ab0c         	add	r3, sp, #0x30
  3f4c16: 4618         	mov	r0, r3
  3f4c18: f3c0 fe7c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0cf8
  3f4c1c: ab0f         	add	r3, sp, #0x3c
  3f4c1e: 4618         	mov	r0, r3
  3f4c20: f395 fbec    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3957d8
  3f4c24: 9b01         	ldr	r3, [sp, #0x4]
  3f4c26: 689d         	ldr	r5, [r3, #0x8]
  3f4c28: 202b         	movs	r0, #0x2b
  3f4c2a: f6f0 f86d    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x10ff26
  3f4c2e: 4604         	mov	r4, r0
  3f4c30: ab0f         	add	r3, sp, #0x3c
  3f4c32: 4618         	mov	r0, r3
  3f4c34: f395 fbde    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3957bc
  3f4c38: aa0d         	add	r2, sp, #0x34
  3f4c3a: ab0f         	add	r3, sp, #0x3c
  3f4c3c: 4610         	mov	r0, r2
  3f4c3e: 4aa3         	ldr	r2, [pc, #0x28c]        @ 0x3f4ecc <Sound::Sound()+0x5ac>
  3f4c40: 447a         	add	r2, pc
  3f4c42: 4611         	mov	r1, r2
  3f4c44: 461a         	mov	r2, r3
  3f4c46: f3c1 ff0b    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c1e16
  3f4c4a: ab0d         	add	r3, sp, #0x34
  3f4c4c: 4628         	mov	r0, r5
  3f4c4e: 4621         	mov	r1, r4
  3f4c50: 461a         	mov	r2, r3
  3f4c52: f19f fe71    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x19fce2
  3f4c56: ab0d         	add	r3, sp, #0x34
  3f4c58: 4618         	mov	r0, r3
  3f4c5a: f3c0 fe5b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0cb6
  3f4c5e: ab0f         	add	r3, sp, #0x3c
  3f4c60: 4618         	mov	r0, r3
  3f4c62: f395 fbcb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x395796
  3f4c66: 9b01         	ldr	r3, [sp, #0x4]
  3f4c68: 689d         	ldr	r5, [r3, #0x8]
  3f4c6a: 205b         	movs	r0, #0x5b
  3f4c6c: f6f0 f84c    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x10ff68
  3f4c70: 4604         	mov	r4, r0
  3f4c72: ab0f         	add	r3, sp, #0x3c
  3f4c74: 4618         	mov	r0, r3
  3f4c76: f395 fbbd    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x39577a
  3f4c7a: aa0e         	add	r2, sp, #0x38
  3f4c7c: ab0f         	add	r3, sp, #0x3c
  3f4c7e: 4610         	mov	r0, r2
  3f4c80: 4a93         	ldr	r2, [pc, #0x24c]        @ 0x3f4ed0 <Sound::Sound()+0x5b0>
  3f4c82: 447a         	add	r2, pc
  3f4c84: 4611         	mov	r1, r2
  3f4c86: 461a         	mov	r2, r3
  3f4c88: f3c1 feea    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c1dd4
  3f4c8c: ab0e         	add	r3, sp, #0x38
  3f4c8e: 4628         	mov	r0, r5
  3f4c90: 4621         	mov	r1, r4
  3f4c92: 461a         	mov	r2, r3
  3f4c94: f19f fe50    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x19fca0
  3f4c98: ab0e         	add	r3, sp, #0x38
  3f4c9a: 4618         	mov	r0, r3
  3f4c9c: f3c0 fe3a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0c74
  3f4ca0: ab0f         	add	r3, sp, #0x3c
  3f4ca2: 4618         	mov	r0, r3
  3f4ca4: f395 fbaa    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x395754
  3f4ca8: 9b01         	ldr	r3, [sp, #0x4]
  3f4caa: 689d         	ldr	r5, [r3, #0x8]
  3f4cac: 2032         	movs	r0, #0x32
  3f4cae: f6f0 f82b    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x10ffaa
  3f4cb2: 4604         	mov	r4, r0
  3f4cb4: ab0e         	add	r3, sp, #0x38
  3f4cb6: 4618         	mov	r0, r3
  3f4cb8: f395 fb9c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x395738
  3f4cbc: aa0f         	add	r2, sp, #0x3c
  3f4cbe: ab0e         	add	r3, sp, #0x38
  3f4cc0: 4610         	mov	r0, r2
  3f4cc2: 4a84         	ldr	r2, [pc, #0x210]        @ 0x3f4ed4 <Sound::Sound()+0x5b4>
  3f4cc4: 447a         	add	r2, pc
  3f4cc6: 4611         	mov	r1, r2
  3f4cc8: 461a         	mov	r2, r3
  3f4cca: f3c1 fec9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x3c1d92
  3f4cce: ab0f         	add	r3, sp, #0x3c
  3f4cd0: 4628         	mov	r0, r5
  3f4cd2: 4621         	mov	r1, r4
  3f4cd4: 461a         	mov	r2, r3
  3f4cd6: f19f fe2f    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x19fc5e
  3f4cda: ab0f         	add	r3, sp, #0x3c
  3f4cdc: 4618         	mov	r0, r3
  3f4cde: f3c0 fe19    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0c32
  3f4ce2: ab0e         	add	r3, sp, #0x38
  3f4ce4: 4618         	mov	r0, r3
  3f4ce6: f395 fb89    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x395712
  3f4cea: 9b01         	ldr	r3, [sp, #0x4]
  3f4cec: 689b         	ldr	r3, [r3, #0x8]
  3f4cee: 4618         	mov	r0, r3
  3f4cf0: f1a3 f8fa    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a31f4
  3f4cf4: f1a5 f81e    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x1a503c
  3f4cf8: 4602         	mov	r2, r0
  3f4cfa: 9b01         	ldr	r3, [sp, #0x4]
  3f4cfc: 60da         	str	r2, [r3, #0xc]
  3f4cfe: 9b01         	ldr	r3, [sp, #0x4]
  3f4d00: 68dc         	ldr	r4, [r3, #0xc]
  3f4d02: 2028         	movs	r0, #0x28
  3f4d04: f6f0 f800    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x110000
  3f4d08: 4603         	mov	r3, r0
  3f4d0a: 4620         	mov	r0, r4
  3f4d0c: 4619         	mov	r1, r3
  3f4d0e: f1a5 faad    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1a555a
  3f4d12: 9b01         	ldr	r3, [sp, #0x4]
  3f4d14: 68dc         	ldr	r4, [r3, #0xc]
  3f4d16: 2029         	movs	r0, #0x29
  3f4d18: f6ef fff6    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x110014
  3f4d1c: 4603         	mov	r3, r0
  3f4d1e: 4620         	mov	r0, r4
  3f4d20: 4619         	mov	r1, r3
  3f4d22: f1a5 faa3    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1a5546
  3f4d26: 9b01         	ldr	r3, [sp, #0x4]
  3f4d28: 68dc         	ldr	r4, [r3, #0xc]
  3f4d2a: 202a         	movs	r0, #0x2a
  3f4d2c: f6ef ffec    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x110028
  3f4d30: 4603         	mov	r3, r0
  3f4d32: 4620         	mov	r0, r4
  3f4d34: 4619         	mov	r1, r3
  3f4d36: f1a5 fa99    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1a5532
  3f4d3a: 9b01         	ldr	r3, [sp, #0x4]
  3f4d3c: 68dc         	ldr	r4, [r3, #0xc]
  3f4d3e: 2061         	movs	r0, #0x61
  3f4d40: f6ef ffe2    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x11003c
  3f4d44: 4603         	mov	r3, r0
  3f4d46: 4620         	mov	r0, r4
  3f4d48: 4619         	mov	r1, r3
  3f4d4a: f1a5 fa8f    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1a551e
  3f4d4e: 9b01         	ldr	r3, [sp, #0x4]
  3f4d50: 68dc         	ldr	r4, [r3, #0xc]
  3f4d52: 202b         	movs	r0, #0x2b
  3f4d54: f6ef ffd8    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x110050
  3f4d58: 4603         	mov	r3, r0
  3f4d5a: 4620         	mov	r0, r4
  3f4d5c: 4619         	mov	r1, r3
  3f4d5e: f1a5 fa85    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1a550a
  3f4d62: 9b01         	ldr	r3, [sp, #0x4]
  3f4d64: 68dc         	ldr	r4, [r3, #0xc]
  3f4d66: 205b         	movs	r0, #0x5b
  3f4d68: f6ef ffce    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0x110064
  3f4d6c: 4603         	mov	r3, r0
  3f4d6e: 4620         	mov	r0, r4
  3f4d70: 4619         	mov	r1, r3
  3f4d72: f1a5 fa7b    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1a54f6
  3f4d76: 9b01         	ldr	r3, [sp, #0x4]
  3f4d78: 68db         	ldr	r3, [r3, #0xc]
  3f4d7a: 4618         	mov	r0, r3
  3f4d7c: f1a3 f8b4    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1a3168
  3f4d80: 9b01         	ldr	r3, [sp, #0x4]
  3f4d82: e088         	b	0x3f4e96 <Sound::Sound()+0x576> @ imm = #0x110
  3f4d84: ab03         	add	r3, sp, #0xc
  3f4d86: 4618         	mov	r0, r3
  3f4d88: f3c0 fdc4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0b88
  3f4d8c: e7ff         	b	0x3f4d8e <Sound::Sound()+0x46e> @ imm = #-0x2
  3f4d8e: ab0f         	add	r3, sp, #0x3c
  3f4d90: 4618         	mov	r0, r3
  3f4d92: f395 fb33    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x395666
  3f4d96: e077         	b	0x3f4e88 <Sound::Sound()+0x568> @ imm = #0xee
  3f4d98: ab04         	add	r3, sp, #0x10
  3f4d9a: 4618         	mov	r0, r3
  3f4d9c: f3c0 fdba    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0b74
  3f4da0: e7ff         	b	0x3f4da2 <Sound::Sound()+0x482> @ imm = #-0x2
  3f4da2: ab0f         	add	r3, sp, #0x3c
  3f4da4: 4618         	mov	r0, r3
  3f4da6: f395 fb29    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x395652
  3f4daa: e06d         	b	0x3f4e88 <Sound::Sound()+0x568> @ imm = #0xda
  3f4dac: ab05         	add	r3, sp, #0x14
  3f4dae: 4618         	mov	r0, r3
  3f4db0: f3c0 fdb0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0b60
  3f4db4: e7ff         	b	0x3f4db6 <Sound::Sound()+0x496> @ imm = #-0x2
  3f4db6: ab0f         	add	r3, sp, #0x3c
  3f4db8: 4618         	mov	r0, r3
  3f4dba: f395 fb1f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39563e
  3f4dbe: e063         	b	0x3f4e88 <Sound::Sound()+0x568> @ imm = #0xc6
  3f4dc0: ab06         	add	r3, sp, #0x18
  3f4dc2: 4618         	mov	r0, r3
  3f4dc4: f3c0 fda6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0b4c
  3f4dc8: e7ff         	b	0x3f4dca <Sound::Sound()+0x4aa> @ imm = #-0x2
  3f4dca: ab0f         	add	r3, sp, #0x3c
  3f4dcc: 4618         	mov	r0, r3
  3f4dce: f395 fb15    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39562a
  3f4dd2: e059         	b	0x3f4e88 <Sound::Sound()+0x568> @ imm = #0xb2
  3f4dd4: ab07         	add	r3, sp, #0x1c
  3f4dd6: 4618         	mov	r0, r3
  3f4dd8: f3c0 fd9c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0b38
  3f4ddc: e7ff         	b	0x3f4dde <Sound::Sound()+0x4be> @ imm = #-0x2
  3f4dde: ab0f         	add	r3, sp, #0x3c
  3f4de0: 4618         	mov	r0, r3
  3f4de2: f395 fb0b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x395616
  3f4de6: e04f         	b	0x3f4e88 <Sound::Sound()+0x568> @ imm = #0x9e
  3f4de8: ab08         	add	r3, sp, #0x20
  3f4dea: 4618         	mov	r0, r3
  3f4dec: f3c0 fd92    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0b24
  3f4df0: e7ff         	b	0x3f4df2 <Sound::Sound()+0x4d2> @ imm = #-0x2
  3f4df2: ab0f         	add	r3, sp, #0x3c
  3f4df4: 4618         	mov	r0, r3
  3f4df6: f395 fb01    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x395602
  3f4dfa: e045         	b	0x3f4e88 <Sound::Sound()+0x568> @ imm = #0x8a
  3f4dfc: ab09         	add	r3, sp, #0x24
  3f4dfe: 4618         	mov	r0, r3
  3f4e00: f3c0 fd88    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0b10
  3f4e04: e7ff         	b	0x3f4e06 <Sound::Sound()+0x4e6> @ imm = #-0x2
  3f4e06: ab0f         	add	r3, sp, #0x3c
  3f4e08: 4618         	mov	r0, r3
  3f4e0a: f395 faf7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3955ee
  3f4e0e: e03b         	b	0x3f4e88 <Sound::Sound()+0x568> @ imm = #0x76
  3f4e10: ab0a         	add	r3, sp, #0x28
  3f4e12: 4618         	mov	r0, r3
  3f4e14: f3c0 fd7e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0afc
  3f4e18: e7ff         	b	0x3f4e1a <Sound::Sound()+0x4fa> @ imm = #-0x2
  3f4e1a: ab0f         	add	r3, sp, #0x3c
  3f4e1c: 4618         	mov	r0, r3
  3f4e1e: f395 faed    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3955da
  3f4e22: e031         	b	0x3f4e88 <Sound::Sound()+0x568> @ imm = #0x62
  3f4e24: ab0b         	add	r3, sp, #0x2c
  3f4e26: 4618         	mov	r0, r3
  3f4e28: f3c0 fd74    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0ae8
  3f4e2c: e7ff         	b	0x3f4e2e <Sound::Sound()+0x50e> @ imm = #-0x2
  3f4e2e: ab0f         	add	r3, sp, #0x3c
  3f4e30: 4618         	mov	r0, r3
  3f4e32: f395 fae3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3955c6
  3f4e36: e027         	b	0x3f4e88 <Sound::Sound()+0x568> @ imm = #0x4e
  3f4e38: ab0c         	add	r3, sp, #0x30
  3f4e3a: 4618         	mov	r0, r3
  3f4e3c: f3c0 fd6a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0ad4
  3f4e40: e7ff         	b	0x3f4e42 <Sound::Sound()+0x522> @ imm = #-0x2
  3f4e42: ab0f         	add	r3, sp, #0x3c
  3f4e44: 4618         	mov	r0, r3
  3f4e46: f395 fad9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3955b2
  3f4e4a: e01d         	b	0x3f4e88 <Sound::Sound()+0x568> @ imm = #0x3a
  3f4e4c: ab0d         	add	r3, sp, #0x34
  3f4e4e: 4618         	mov	r0, r3
  3f4e50: f3c0 fd60    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0ac0
  3f4e54: e7ff         	b	0x3f4e56 <Sound::Sound()+0x536> @ imm = #-0x2
  3f4e56: ab0f         	add	r3, sp, #0x3c
  3f4e58: 4618         	mov	r0, r3
  3f4e5a: f395 facf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39559e
  3f4e5e: e013         	b	0x3f4e88 <Sound::Sound()+0x568> @ imm = #0x26
  3f4e60: ab0e         	add	r3, sp, #0x38
  3f4e62: 4618         	mov	r0, r3
  3f4e64: f3c0 fd56    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0aac
  3f4e68: e7ff         	b	0x3f4e6a <Sound::Sound()+0x54a> @ imm = #-0x2
  3f4e6a: ab0f         	add	r3, sp, #0x3c
  3f4e6c: 4618         	mov	r0, r3
  3f4e6e: f395 fac5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x39558a
  3f4e72: e009         	b	0x3f4e88 <Sound::Sound()+0x568> @ imm = #0x12
  3f4e74: ab0f         	add	r3, sp, #0x3c
  3f4e76: 4618         	mov	r0, r3
  3f4e78: f3c0 fd4c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3c0a98
  3f4e7c: e7ff         	b	0x3f4e7e <Sound::Sound()+0x55e> @ imm = #-0x2
  3f4e7e: ab0e         	add	r3, sp, #0x38
  3f4e80: 4618         	mov	r0, r3
  3f4e82: f395 fabb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x395576
  3f4e86: e7ff         	b	0x3f4e88 <Sound::Sound()+0x568> @ imm = #-0x2
  3f4e88: 9b01         	ldr	r3, [sp, #0x4]
  3f4e8a: 3310         	adds	r3, #0x10
  3f4e8c: 4618         	mov	r0, r3
  3f4e8e: f7d0 fb13    	bl	0x3c54b8 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::~map()> @ imm = #-0x2f9da
  3f4e92: f393 f90b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x393216
  3f4e96: 4618         	mov	r0, r3
  3f4e98: b011         	add	sp, #0x44
  3f4e9a: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3f4e9b); words below are literal-pool data ---
  3f4e9c: e0de         	b	0x3f505c <Sound::loadSoundBuffers()+0x10c> @ imm = #0x1bc
  3f4e9e: 0053         	lsls	r3, r2, #0x1
  3f4ea0: df2c         	svc	#0x2c
  3f4ea2: ffff 434c    	<unknown>
  3f4ea6: 003e         	movs	r6, r7
  3f4ea8: 430c         	orrs	r4, r1
  3f4eaa: 003e         	movs	r6, r7
  3f4eac: 42cc         	cmn	r4, r1
  3f4eae: 003e         	movs	r6, r7
  3f4eb0: 428c         	cmp	r4, r1
  3f4eb2: 003e         	movs	r6, r7
  3f4eb4: 424c         	rsbs	r4, r1, #0
  3f4eb6: 003e         	movs	r6, r7
  3f4eb8: 420e         	tst	r6, r1
  3f4eba: 003e         	movs	r6, r7
  3f4ebc: 41d0         	rors	r0, r2
  3f4ebe: 003e         	movs	r6, r7
  3f4ec0: 4192         	sbcs	r2, r2
  3f4ec2: 003e         	movs	r6, r7
  3f4ec4: 4154         	adcs	r4, r2
  3f4ec6: 003e         	movs	r6, r7
  3f4ec8: 4116         	asrs	r6, r2
  3f4eca: 003e         	movs	r6, r7
  3f4ecc: 40d8         	lsrs	r0, r3
  3f4ece: 003e         	movs	r6, r7
  3f4ed0: 409a         	lsls	r2, r3
  3f4ed2: 003e         	movs	r6, r7
  3f4ed4: 405c         	eors	r4, r3
  3f4ed6: 003e         	movs	r6, r7

// ==== Sound::~Sound
//      file offset 0x3f4ed8 (= ELF address; Ghidra 0x404ed8), 92 bytes, Thumb-2
  3f4ed8: b500         	push	{lr}
  3f4eda: b083         	sub	sp, #0xc
  3f4edc: 9001         	str	r0, [sp, #0x4]
  3f4ede: 4913         	ldr	r1, [pc, #0x4c]         @ 0x3f4f2c <Sound::~Sound()+0x54>
  3f4ee0: 4479         	add	r1, pc
  3f4ee2: 9b01         	ldr	r3, [sp, #0x4]
  3f4ee4: 4a12         	ldr	r2, [pc, #0x48]         @ 0x3f4f30 <Sound::~Sound()+0x58>
  3f4ee6: 588a         	ldr	r2, [r1, r2]
  3f4ee8: 3208         	adds	r2, #0x8
  3f4eea: 601a         	str	r2, [r3]
  3f4eec: 9b01         	ldr	r3, [sp, #0x4]
  3f4eee: 685b         	ldr	r3, [r3, #0x4]
  3f4ef0: 4618         	mov	r0, r3
  3f4ef2: f1a2 ffe1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a2fc2
  3f4ef6: 9b01         	ldr	r3, [sp, #0x4]
  3f4ef8: 689b         	ldr	r3, [r3, #0x8]
  3f4efa: 4618         	mov	r0, r3
  3f4efc: f1a2 ffdc    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a2fb8
  3f4f00: 9b01         	ldr	r3, [sp, #0x4]
  3f4f02: 68db         	ldr	r3, [r3, #0xc]
  3f4f04: 4618         	mov	r0, r3
  3f4f06: f1a2 ffd7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1a2fae
  3f4f0a: 9b01         	ldr	r3, [sp, #0x4]
  3f4f0c: 3310         	adds	r3, #0x10
  3f4f0e: 4618         	mov	r0, r3
  3f4f10: f7d0 fad2    	bl	0x3c54b8 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::~map()> @ imm = #-0x2fa5c
  3f4f14: 2300         	movs	r3, #0x0
  3f4f16: 2b00         	cmp	r3, #0x0
  3f4f18: d002         	beq	0x3f4f20 <Sound::~Sound()+0x48> @ imm = #0x4
  3f4f1a: 9801         	ldr	r0, [sp, #0x4]
  3f4f1c: f393 f8c2    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x393184
  3f4f20: 9b01         	ldr	r3, [sp, #0x4]
  3f4f22: 4618         	mov	r0, r3
  3f4f24: b003         	add	sp, #0xc
  3f4f26: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3f4f29); words below are literal-pool data ---
  3f4f2a: bf00         	nop
  3f4f2c: db28         	blt	0x3f4f80 <Sound::loadSoundBuffers()+0x30> @ imm = #0x50
  3f4f2e: 0053         	lsls	r3, r2, #0x1
  3f4f30: df2c         	svc	#0x2c
  3f4f32: ffff b500    	<unknown>

// ==== Sound::~Sound
//      file offset 0x3f4f34 (= ELF address; Ghidra 0x404f34), 28 bytes, Thumb-2
  3f4f34: b500         	push	{lr}
  3f4f36: b083         	sub	sp, #0xc
  3f4f38: 9001         	str	r0, [sp, #0x4]
  3f4f3a: 9801         	ldr	r0, [sp, #0x4]
  3f4f3c: f7ff ffcc    	bl	0x3f4ed8 <Sound::~Sound()> @ imm = #-0x68
  3f4f40: 9801         	ldr	r0, [sp, #0x4]
  3f4f42: f393 f8af    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x39315e
  3f4f46: 9b01         	ldr	r3, [sp, #0x4]
  3f4f48: 4618         	mov	r0, r3
  3f4f4a: b003         	add	sp, #0xc
  3f4f4c: f85d fb04    	ldr	pc, [sp], #4

// ==== Sound::loadSoundBuffers
//      file offset 0x3f4f50 (= ELF address; Ghidra 0x404f50), 11384 bytes, Thumb-2
  3f4f50: b510         	push	{r4, lr}
  3f4f52: b0e6         	sub	sp, #0x198
  3f4f54: ab01         	add	r3, sp, #0x4
  3f4f56: 6018         	str	r0, [r3]
  3f4f58: f20c f8a4    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20c148
  3f4f5c: 4603         	mov	r3, r0
  3f4f5e: 4618         	mov	r0, r3
  3f4f60: 2100         	movs	r1, #0x0
  3f4f62: 220a         	movs	r2, #0xa
  3f4f64: f20c fa46    	bl	0x6013f4 <CocosDenshion::SimpleAudioEngine::createSoundGroup(int, int)> @ imm = #0x20c48c
  3f4f68: f20c f89c    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20c138
  3f4f6c: 4603         	mov	r3, r0
  3f4f6e: 4618         	mov	r0, r3
  3f4f70: 2103         	movs	r1, #0x3
  3f4f72: 2206         	movs	r2, #0x6
  3f4f74: f20c fa3e    	bl	0x6013f4 <CocosDenshion::SimpleAudioEngine::createSoundGroup(int, int)> @ imm = #0x20c47c
  3f4f78: f20c f894    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20c128
  3f4f7c: 4603         	mov	r3, r0
  3f4f7e: 4618         	mov	r0, r3
  3f4f80: 2101         	movs	r1, #0x1
  3f4f82: 2206         	movs	r2, #0x6
  3f4f84: f20c fa36    	bl	0x6013f4 <CocosDenshion::SimpleAudioEngine::createSoundGroup(int, int)> @ imm = #0x20c46c
  3f4f88: f20c f88c    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20c118
  3f4f8c: 4603         	mov	r3, r0
  3f4f8e: 4618         	mov	r0, r3
  3f4f90: 2102         	movs	r1, #0x2
  3f4f92: 2202         	movs	r2, #0x2
  3f4f94: f20c fa2e    	bl	0x6013f4 <CocosDenshion::SimpleAudioEngine::createSoundGroup(int, int)> @ imm = #0x20c45c
  3f4f98: f8df 3a7c    	ldr.w	r3, [pc, #0xa7c]        @ 0x3f5a18 <Sound::loadSoundBuffers()+0xac8>
  3f4f9c: 447b         	add	r3, pc
  3f4f9e: 4618         	mov	r0, r3
  3f4fa0: f8df 3a78    	ldr.w	r3, [pc, #0xa78]        @ 0x3f5a1c <Sound::loadSoundBuffers()+0xacc>
  3f4fa4: 447b         	add	r3, pc
  3f4fa6: 4619         	mov	r1, r3
  3f4fa8: f8df 3a74    	ldr.w	r3, [pc, #0xa74]        @ 0x3f5a20 <Sound::loadSoundBuffers()+0xad0>
  3f4fac: 447b         	add	r3, pc
  3f4fae: 461a         	mov	r2, r3
  3f4fb0: f1a4 fdae    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a4b5c
  3f4fb4: 4602         	mov	r2, r0
  3f4fb6: ab03         	add	r3, sp, #0xc
  3f4fb8: 601a         	str	r2, [r3]
  3f4fba: ab01         	add	r3, sp, #0x4
  3f4fbc: 681b         	ldr	r3, [r3]
  3f4fbe: 685a         	ldr	r2, [r3, #0x4]
  3f4fc0: ab03         	add	r3, sp, #0xc
  3f4fc2: 4610         	mov	r0, r2
  3f4fc4: 6819         	ldr	r1, [r3]
  3f4fc6: 2201         	movs	r2, #0x1
  3f4fc8: f19f ff30    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19fe60
  3f4fcc: f20c f86a    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20c0d4
  3f4fd0: 4604         	mov	r4, r0
  3f4fd2: ab03         	add	r3, sp, #0xc
  3f4fd4: 6818         	ldr	r0, [r3]
  3f4fd6: f1a4 fca7    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a494e
  3f4fda: 4603         	mov	r3, r0
  3f4fdc: 4620         	mov	r0, r4
  3f4fde: 4619         	mov	r1, r3
  3f4fe0: 2201         	movs	r2, #0x1
  3f4fe2: f20c f98f    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20c31e
  3f4fe6: ab01         	add	r3, sp, #0x4
  3f4fe8: 681b         	ldr	r3, [r3]
  3f4fea: f103 0210    	add.w	r2, r3, #0x10
  3f4fee: ab02         	add	r3, sp, #0x8
  3f4ff0: 2101         	movs	r1, #0x1
  3f4ff2: 6019         	str	r1, [r3]
  3f4ff4: ab02         	add	r3, sp, #0x8
  3f4ff6: 4610         	mov	r0, r2
  3f4ff8: 4619         	mov	r1, r3
  3f4ffa: f003 f8fb    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x31f6
  3f4ffe: 4603         	mov	r3, r0
  3f5000: 2201         	movs	r2, #0x1
  3f5002: 601a         	str	r2, [r3]
  3f5004: f8df 3a1c    	ldr.w	r3, [pc, #0xa1c]        @ 0x3f5a24 <Sound::loadSoundBuffers()+0xad4>
  3f5008: 447b         	add	r3, pc
  3f500a: 4618         	mov	r0, r3
  3f500c: f8df 3a18    	ldr.w	r3, [pc, #0xa18]        @ 0x3f5a28 <Sound::loadSoundBuffers()+0xad8>
  3f5010: 447b         	add	r3, pc
  3f5012: 4619         	mov	r1, r3
  3f5014: f8df 3a14    	ldr.w	r3, [pc, #0xa14]        @ 0x3f5a2c <Sound::loadSoundBuffers()+0xadc>
  3f5018: 447b         	add	r3, pc
  3f501a: 461a         	mov	r2, r3
  3f501c: f1a4 fd78    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a4af0
  3f5020: 4602         	mov	r2, r0
  3f5022: ab04         	add	r3, sp, #0x10
  3f5024: 601a         	str	r2, [r3]
  3f5026: ab01         	add	r3, sp, #0x4
  3f5028: 681b         	ldr	r3, [r3]
  3f502a: 685a         	ldr	r2, [r3, #0x4]
  3f502c: ab04         	add	r3, sp, #0x10
  3f502e: 4610         	mov	r0, r2
  3f5030: 6819         	ldr	r1, [r3]
  3f5032: 2200         	movs	r2, #0x0
  3f5034: f19f fefa    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19fdf4
  3f5038: f20c f834    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20c068
  3f503c: 4604         	mov	r4, r0
  3f503e: ab04         	add	r3, sp, #0x10
  3f5040: 6818         	ldr	r0, [r3]
  3f5042: f1a4 fc71    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a48e2
  3f5046: 4603         	mov	r3, r0
  3f5048: 4620         	mov	r0, r4
  3f504a: 4619         	mov	r1, r3
  3f504c: 2200         	movs	r2, #0x0
  3f504e: f20c f959    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20c2b2
  3f5052: ab01         	add	r3, sp, #0x4
  3f5054: 681b         	ldr	r3, [r3]
  3f5056: f103 0210    	add.w	r2, r3, #0x10
  3f505a: ab02         	add	r3, sp, #0x8
  3f505c: 2100         	movs	r1, #0x0
  3f505e: 6019         	str	r1, [r3]
  3f5060: ab02         	add	r3, sp, #0x8
  3f5062: 4610         	mov	r0, r2
  3f5064: 4619         	mov	r1, r3
  3f5066: f003 f8c5    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x318a
  3f506a: 4603         	mov	r3, r0
  3f506c: 2200         	movs	r2, #0x0
  3f506e: 601a         	str	r2, [r3]
  3f5070: f8df 39bc    	ldr.w	r3, [pc, #0x9bc]        @ 0x3f5a30 <Sound::loadSoundBuffers()+0xae0>
  3f5074: 447b         	add	r3, pc
  3f5076: 4618         	mov	r0, r3
  3f5078: f8df 39b8    	ldr.w	r3, [pc, #0x9b8]        @ 0x3f5a34 <Sound::loadSoundBuffers()+0xae4>
  3f507c: 447b         	add	r3, pc
  3f507e: 4619         	mov	r1, r3
  3f5080: f8df 39b4    	ldr.w	r3, [pc, #0x9b4]        @ 0x3f5a38 <Sound::loadSoundBuffers()+0xae8>
  3f5084: 447b         	add	r3, pc
  3f5086: 461a         	mov	r2, r3
  3f5088: f1a4 fd42    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a4a84
  3f508c: 4602         	mov	r2, r0
  3f508e: ab05         	add	r3, sp, #0x14
  3f5090: 601a         	str	r2, [r3]
  3f5092: ab01         	add	r3, sp, #0x4
  3f5094: 681b         	ldr	r3, [r3]
  3f5096: 685a         	ldr	r2, [r3, #0x4]
  3f5098: ab05         	add	r3, sp, #0x14
  3f509a: 4610         	mov	r0, r2
  3f509c: 6819         	ldr	r1, [r3]
  3f509e: 2205         	movs	r2, #0x5
  3f50a0: f19f fec4    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19fd88
  3f50a4: f20b fffe    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20bffc
  3f50a8: 4604         	mov	r4, r0
  3f50aa: ab05         	add	r3, sp, #0x14
  3f50ac: 6818         	ldr	r0, [r3]
  3f50ae: f1a4 fc3b    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a4876
  3f50b2: 4603         	mov	r3, r0
  3f50b4: 4620         	mov	r0, r4
  3f50b6: 4619         	mov	r1, r3
  3f50b8: 2200         	movs	r2, #0x0
  3f50ba: f20c f923    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20c246
  3f50be: ab01         	add	r3, sp, #0x4
  3f50c0: 681b         	ldr	r3, [r3]
  3f50c2: f103 0210    	add.w	r2, r3, #0x10
  3f50c6: ab02         	add	r3, sp, #0x8
  3f50c8: 2105         	movs	r1, #0x5
  3f50ca: 6019         	str	r1, [r3]
  3f50cc: ab02         	add	r3, sp, #0x8
  3f50ce: 4610         	mov	r0, r2
  3f50d0: 4619         	mov	r1, r3
  3f50d2: f003 f88f    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x311e
  3f50d6: 4603         	mov	r3, r0
  3f50d8: 2200         	movs	r2, #0x0
  3f50da: 601a         	str	r2, [r3]
  3f50dc: f8df 395c    	ldr.w	r3, [pc, #0x95c]        @ 0x3f5a3c <Sound::loadSoundBuffers()+0xaec>
  3f50e0: 447b         	add	r3, pc
  3f50e2: 4618         	mov	r0, r3
  3f50e4: f8df 3958    	ldr.w	r3, [pc, #0x958]        @ 0x3f5a40 <Sound::loadSoundBuffers()+0xaf0>
  3f50e8: 447b         	add	r3, pc
  3f50ea: 4619         	mov	r1, r3
  3f50ec: f8df 3954    	ldr.w	r3, [pc, #0x954]        @ 0x3f5a44 <Sound::loadSoundBuffers()+0xaf4>
  3f50f0: 447b         	add	r3, pc
  3f50f2: 461a         	mov	r2, r3
  3f50f4: f1a4 fd0c    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a4a18
  3f50f8: 4602         	mov	r2, r0
  3f50fa: ab06         	add	r3, sp, #0x18
  3f50fc: 601a         	str	r2, [r3]
  3f50fe: ab01         	add	r3, sp, #0x4
  3f5100: 681b         	ldr	r3, [r3]
  3f5102: 685a         	ldr	r2, [r3, #0x4]
  3f5104: ab06         	add	r3, sp, #0x18
  3f5106: 4610         	mov	r0, r2
  3f5108: 6819         	ldr	r1, [r3]
  3f510a: 2208         	movs	r2, #0x8
  3f510c: f19f fe8e    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19fd1c
  3f5110: f20b ffc8    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20bf90
  3f5114: 4604         	mov	r4, r0
  3f5116: ab06         	add	r3, sp, #0x18
  3f5118: 6818         	ldr	r0, [r3]
  3f511a: f1a4 fc05    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a480a
  3f511e: 4603         	mov	r3, r0
  3f5120: 4620         	mov	r0, r4
  3f5122: 4619         	mov	r1, r3
  3f5124: 2200         	movs	r2, #0x0
  3f5126: f20c f8ed    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20c1da
  3f512a: ab01         	add	r3, sp, #0x4
  3f512c: 681b         	ldr	r3, [r3]
  3f512e: f103 0210    	add.w	r2, r3, #0x10
  3f5132: ab02         	add	r3, sp, #0x8
  3f5134: 2108         	movs	r1, #0x8
  3f5136: 6019         	str	r1, [r3]
  3f5138: ab02         	add	r3, sp, #0x8
  3f513a: 4610         	mov	r0, r2
  3f513c: 4619         	mov	r1, r3
  3f513e: f003 f859    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x30b2
  3f5142: 4603         	mov	r3, r0
  3f5144: 2200         	movs	r2, #0x0
  3f5146: 601a         	str	r2, [r3]
  3f5148: f8df 38fc    	ldr.w	r3, [pc, #0x8fc]        @ 0x3f5a48 <Sound::loadSoundBuffers()+0xaf8>
  3f514c: 447b         	add	r3, pc
  3f514e: 4618         	mov	r0, r3
  3f5150: f8df 38f8    	ldr.w	r3, [pc, #0x8f8]        @ 0x3f5a4c <Sound::loadSoundBuffers()+0xafc>
  3f5154: 447b         	add	r3, pc
  3f5156: 4619         	mov	r1, r3
  3f5158: f8df 38f4    	ldr.w	r3, [pc, #0x8f4]        @ 0x3f5a50 <Sound::loadSoundBuffers()+0xb00>
  3f515c: 447b         	add	r3, pc
  3f515e: 461a         	mov	r2, r3
  3f5160: f1a4 fcd6    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a49ac
  3f5164: 4602         	mov	r2, r0
  3f5166: ab07         	add	r3, sp, #0x1c
  3f5168: 601a         	str	r2, [r3]
  3f516a: ab01         	add	r3, sp, #0x4
  3f516c: 681b         	ldr	r3, [r3]
  3f516e: 685a         	ldr	r2, [r3, #0x4]
  3f5170: ab07         	add	r3, sp, #0x1c
  3f5172: 4610         	mov	r0, r2
  3f5174: 6819         	ldr	r1, [r3]
  3f5176: 220a         	movs	r2, #0xa
  3f5178: f19f fe58    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19fcb0
  3f517c: f20b ff92    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20bf24
  3f5180: 4604         	mov	r4, r0
  3f5182: ab07         	add	r3, sp, #0x1c
  3f5184: 6818         	ldr	r0, [r3]
  3f5186: f1a4 fbcf    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a479e
  3f518a: 4603         	mov	r3, r0
  3f518c: 4620         	mov	r0, r4
  3f518e: 4619         	mov	r1, r3
  3f5190: 2200         	movs	r2, #0x0
  3f5192: f20c f8b7    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20c16e
  3f5196: ab01         	add	r3, sp, #0x4
  3f5198: 681b         	ldr	r3, [r3]
  3f519a: f103 0210    	add.w	r2, r3, #0x10
  3f519e: ab02         	add	r3, sp, #0x8
  3f51a0: 210a         	movs	r1, #0xa
  3f51a2: 6019         	str	r1, [r3]
  3f51a4: ab02         	add	r3, sp, #0x8
  3f51a6: 4610         	mov	r0, r2
  3f51a8: 4619         	mov	r1, r3
  3f51aa: f003 f823    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x3046
  3f51ae: 4603         	mov	r3, r0
  3f51b0: 2200         	movs	r2, #0x0
  3f51b2: 601a         	str	r2, [r3]
  3f51b4: f8df 389c    	ldr.w	r3, [pc, #0x89c]        @ 0x3f5a54 <Sound::loadSoundBuffers()+0xb04>
  3f51b8: 447b         	add	r3, pc
  3f51ba: 4618         	mov	r0, r3
  3f51bc: f8df 3898    	ldr.w	r3, [pc, #0x898]        @ 0x3f5a58 <Sound::loadSoundBuffers()+0xb08>
  3f51c0: 447b         	add	r3, pc
  3f51c2: 4619         	mov	r1, r3
  3f51c4: f8df 3894    	ldr.w	r3, [pc, #0x894]        @ 0x3f5a5c <Sound::loadSoundBuffers()+0xb0c>
  3f51c8: 447b         	add	r3, pc
  3f51ca: 461a         	mov	r2, r3
  3f51cc: f1a4 fca0    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a4940
  3f51d0: 4602         	mov	r2, r0
  3f51d2: ab08         	add	r3, sp, #0x20
  3f51d4: 601a         	str	r2, [r3]
  3f51d6: ab01         	add	r3, sp, #0x4
  3f51d8: 681b         	ldr	r3, [r3]
  3f51da: 685a         	ldr	r2, [r3, #0x4]
  3f51dc: ab08         	add	r3, sp, #0x20
  3f51de: 4610         	mov	r0, r2
  3f51e0: 6819         	ldr	r1, [r3]
  3f51e2: 220b         	movs	r2, #0xb
  3f51e4: f19f fe22    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19fc44
  3f51e8: f20b ff5c    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20beb8
  3f51ec: 4604         	mov	r4, r0
  3f51ee: ab08         	add	r3, sp, #0x20
  3f51f0: 6818         	ldr	r0, [r3]
  3f51f2: f1a4 fb99    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a4732
  3f51f6: 4603         	mov	r3, r0
  3f51f8: 4620         	mov	r0, r4
  3f51fa: 4619         	mov	r1, r3
  3f51fc: 2200         	movs	r2, #0x0
  3f51fe: f20c f881    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20c102
  3f5202: ab01         	add	r3, sp, #0x4
  3f5204: 681b         	ldr	r3, [r3]
  3f5206: f103 0210    	add.w	r2, r3, #0x10
  3f520a: ab02         	add	r3, sp, #0x8
  3f520c: 210b         	movs	r1, #0xb
  3f520e: 6019         	str	r1, [r3]
  3f5210: ab02         	add	r3, sp, #0x8
  3f5212: 4610         	mov	r0, r2
  3f5214: 4619         	mov	r1, r3
  3f5216: f002 ffed    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2fda
  3f521a: 4603         	mov	r3, r0
  3f521c: 2200         	movs	r2, #0x0
  3f521e: 601a         	str	r2, [r3]
  3f5220: f8df 383c    	ldr.w	r3, [pc, #0x83c]        @ 0x3f5a60 <Sound::loadSoundBuffers()+0xb10>
  3f5224: 447b         	add	r3, pc
  3f5226: 4618         	mov	r0, r3
  3f5228: f8df 3838    	ldr.w	r3, [pc, #0x838]        @ 0x3f5a64 <Sound::loadSoundBuffers()+0xb14>
  3f522c: 447b         	add	r3, pc
  3f522e: 4619         	mov	r1, r3
  3f5230: f8df 3834    	ldr.w	r3, [pc, #0x834]        @ 0x3f5a68 <Sound::loadSoundBuffers()+0xb18>
  3f5234: 447b         	add	r3, pc
  3f5236: 461a         	mov	r2, r3
  3f5238: f1a4 fc6a    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a48d4
  3f523c: 4602         	mov	r2, r0
  3f523e: ab09         	add	r3, sp, #0x24
  3f5240: 601a         	str	r2, [r3]
  3f5242: ab01         	add	r3, sp, #0x4
  3f5244: 681b         	ldr	r3, [r3]
  3f5246: 685a         	ldr	r2, [r3, #0x4]
  3f5248: ab09         	add	r3, sp, #0x24
  3f524a: 4610         	mov	r0, r2
  3f524c: 6819         	ldr	r1, [r3]
  3f524e: 220c         	movs	r2, #0xc
  3f5250: f19f fdec    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19fbd8
  3f5254: f20b ff26    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20be4c
  3f5258: 4604         	mov	r4, r0
  3f525a: ab09         	add	r3, sp, #0x24
  3f525c: 6818         	ldr	r0, [r3]
  3f525e: f1a4 fb63    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a46c6
  3f5262: 4603         	mov	r3, r0
  3f5264: 4620         	mov	r0, r4
  3f5266: 4619         	mov	r1, r3
  3f5268: 2201         	movs	r2, #0x1
  3f526a: f20c f84b    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20c096
  3f526e: ab01         	add	r3, sp, #0x4
  3f5270: 681b         	ldr	r3, [r3]
  3f5272: f103 0210    	add.w	r2, r3, #0x10
  3f5276: ab02         	add	r3, sp, #0x8
  3f5278: 210c         	movs	r1, #0xc
  3f527a: 6019         	str	r1, [r3]
  3f527c: ab02         	add	r3, sp, #0x8
  3f527e: 4610         	mov	r0, r2
  3f5280: 4619         	mov	r1, r3
  3f5282: f002 ffb7    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2f6e
  3f5286: 4603         	mov	r3, r0
  3f5288: 2201         	movs	r2, #0x1
  3f528a: 601a         	str	r2, [r3]
  3f528c: f8df 37dc    	ldr.w	r3, [pc, #0x7dc]        @ 0x3f5a6c <Sound::loadSoundBuffers()+0xb1c>
  3f5290: 447b         	add	r3, pc
  3f5292: 4618         	mov	r0, r3
  3f5294: f8df 37d8    	ldr.w	r3, [pc, #0x7d8]        @ 0x3f5a70 <Sound::loadSoundBuffers()+0xb20>
  3f5298: 447b         	add	r3, pc
  3f529a: 4619         	mov	r1, r3
  3f529c: f8df 37d4    	ldr.w	r3, [pc, #0x7d4]        @ 0x3f5a74 <Sound::loadSoundBuffers()+0xb24>
  3f52a0: 447b         	add	r3, pc
  3f52a2: 461a         	mov	r2, r3
  3f52a4: f1a4 fc34    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a4868
  3f52a8: 4602         	mov	r2, r0
  3f52aa: ab0a         	add	r3, sp, #0x28
  3f52ac: 601a         	str	r2, [r3]
  3f52ae: ab01         	add	r3, sp, #0x4
  3f52b0: 681b         	ldr	r3, [r3]
  3f52b2: 685a         	ldr	r2, [r3, #0x4]
  3f52b4: ab0a         	add	r3, sp, #0x28
  3f52b6: 4610         	mov	r0, r2
  3f52b8: 6819         	ldr	r1, [r3]
  3f52ba: 2206         	movs	r2, #0x6
  3f52bc: f19f fdb6    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19fb6c
  3f52c0: f20b fef0    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20bde0
  3f52c4: 4604         	mov	r4, r0
  3f52c6: ab0a         	add	r3, sp, #0x28
  3f52c8: 6818         	ldr	r0, [r3]
  3f52ca: f1a4 fb2d    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a465a
  3f52ce: 4603         	mov	r3, r0
  3f52d0: 4620         	mov	r0, r4
  3f52d2: 4619         	mov	r1, r3
  3f52d4: 2200         	movs	r2, #0x0
  3f52d6: f20c f815    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20c02a
  3f52da: ab01         	add	r3, sp, #0x4
  3f52dc: 681b         	ldr	r3, [r3]
  3f52de: f103 0210    	add.w	r2, r3, #0x10
  3f52e2: ab02         	add	r3, sp, #0x8
  3f52e4: 2106         	movs	r1, #0x6
  3f52e6: 6019         	str	r1, [r3]
  3f52e8: ab02         	add	r3, sp, #0x8
  3f52ea: 4610         	mov	r0, r2
  3f52ec: 4619         	mov	r1, r3
  3f52ee: f002 ff81    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2f02
  3f52f2: 4603         	mov	r3, r0
  3f52f4: 2200         	movs	r2, #0x0
  3f52f6: 601a         	str	r2, [r3]
  3f52f8: f8df 377c    	ldr.w	r3, [pc, #0x77c]        @ 0x3f5a78 <Sound::loadSoundBuffers()+0xb28>
  3f52fc: 447b         	add	r3, pc
  3f52fe: 4618         	mov	r0, r3
  3f5300: f8df 3778    	ldr.w	r3, [pc, #0x778]        @ 0x3f5a7c <Sound::loadSoundBuffers()+0xb2c>
  3f5304: 447b         	add	r3, pc
  3f5306: 4619         	mov	r1, r3
  3f5308: f8df 3774    	ldr.w	r3, [pc, #0x774]        @ 0x3f5a80 <Sound::loadSoundBuffers()+0xb30>
  3f530c: 447b         	add	r3, pc
  3f530e: 461a         	mov	r2, r3
  3f5310: f1a4 fbfe    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a47fc
  3f5314: 4602         	mov	r2, r0
  3f5316: ab0b         	add	r3, sp, #0x2c
  3f5318: 601a         	str	r2, [r3]
  3f531a: ab01         	add	r3, sp, #0x4
  3f531c: 681b         	ldr	r3, [r3]
  3f531e: 685a         	ldr	r2, [r3, #0x4]
  3f5320: ab0b         	add	r3, sp, #0x2c
  3f5322: 4610         	mov	r0, r2
  3f5324: 6819         	ldr	r1, [r3]
  3f5326: 2207         	movs	r2, #0x7
  3f5328: f19f fd80    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19fb00
  3f532c: f20b feba    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20bd74
  3f5330: 4604         	mov	r4, r0
  3f5332: ab0b         	add	r3, sp, #0x2c
  3f5334: 6818         	ldr	r0, [r3]
  3f5336: f1a4 faf7    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a45ee
  3f533a: 4603         	mov	r3, r0
  3f533c: 4620         	mov	r0, r4
  3f533e: 4619         	mov	r1, r3
  3f5340: 2200         	movs	r2, #0x0
  3f5342: f20b ffdf    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20bfbe
  3f5346: ab01         	add	r3, sp, #0x4
  3f5348: 681b         	ldr	r3, [r3]
  3f534a: f103 0210    	add.w	r2, r3, #0x10
  3f534e: ab02         	add	r3, sp, #0x8
  3f5350: 2107         	movs	r1, #0x7
  3f5352: 6019         	str	r1, [r3]
  3f5354: ab02         	add	r3, sp, #0x8
  3f5356: 4610         	mov	r0, r2
  3f5358: 4619         	mov	r1, r3
  3f535a: f002 ff4b    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2e96
  3f535e: 4603         	mov	r3, r0
  3f5360: 2200         	movs	r2, #0x0
  3f5362: 601a         	str	r2, [r3]
  3f5364: f8df 371c    	ldr.w	r3, [pc, #0x71c]        @ 0x3f5a84 <Sound::loadSoundBuffers()+0xb34>
  3f5368: 447b         	add	r3, pc
  3f536a: 4618         	mov	r0, r3
  3f536c: f8df 3718    	ldr.w	r3, [pc, #0x718]        @ 0x3f5a88 <Sound::loadSoundBuffers()+0xb38>
  3f5370: 447b         	add	r3, pc
  3f5372: 4619         	mov	r1, r3
  3f5374: f8df 3714    	ldr.w	r3, [pc, #0x714]        @ 0x3f5a8c <Sound::loadSoundBuffers()+0xb3c>
  3f5378: 447b         	add	r3, pc
  3f537a: 461a         	mov	r2, r3
  3f537c: f1a4 fbc8    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a4790
  3f5380: 4602         	mov	r2, r0
  3f5382: ab0c         	add	r3, sp, #0x30
  3f5384: 601a         	str	r2, [r3]
  3f5386: ab01         	add	r3, sp, #0x4
  3f5388: 681b         	ldr	r3, [r3]
  3f538a: 685a         	ldr	r2, [r3, #0x4]
  3f538c: ab0c         	add	r3, sp, #0x30
  3f538e: 4610         	mov	r0, r2
  3f5390: 6819         	ldr	r1, [r3]
  3f5392: 2202         	movs	r2, #0x2
  3f5394: f19f fd4a    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19fa94
  3f5398: f20b fe84    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20bd08
  3f539c: 4604         	mov	r4, r0
  3f539e: ab0c         	add	r3, sp, #0x30
  3f53a0: 6818         	ldr	r0, [r3]
  3f53a2: f1a4 fac1    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a4582
  3f53a6: 4603         	mov	r3, r0
  3f53a8: 4620         	mov	r0, r4
  3f53aa: 4619         	mov	r1, r3
  3f53ac: 2201         	movs	r2, #0x1
  3f53ae: f20b ffa9    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20bf52
  3f53b2: ab01         	add	r3, sp, #0x4
  3f53b4: 681b         	ldr	r3, [r3]
  3f53b6: f103 0210    	add.w	r2, r3, #0x10
  3f53ba: ab02         	add	r3, sp, #0x8
  3f53bc: 2102         	movs	r1, #0x2
  3f53be: 6019         	str	r1, [r3]
  3f53c0: ab02         	add	r3, sp, #0x8
  3f53c2: 4610         	mov	r0, r2
  3f53c4: 4619         	mov	r1, r3
  3f53c6: f002 ff15    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2e2a
  3f53ca: 4603         	mov	r3, r0
  3f53cc: 2201         	movs	r2, #0x1
  3f53ce: 601a         	str	r2, [r3]
  3f53d0: f8df 36bc    	ldr.w	r3, [pc, #0x6bc]        @ 0x3f5a90 <Sound::loadSoundBuffers()+0xb40>
  3f53d4: 447b         	add	r3, pc
  3f53d6: 4618         	mov	r0, r3
  3f53d8: f8df 36b8    	ldr.w	r3, [pc, #0x6b8]        @ 0x3f5a94 <Sound::loadSoundBuffers()+0xb44>
  3f53dc: 447b         	add	r3, pc
  3f53de: 4619         	mov	r1, r3
  3f53e0: f8df 36b4    	ldr.w	r3, [pc, #0x6b4]        @ 0x3f5a98 <Sound::loadSoundBuffers()+0xb48>
  3f53e4: 447b         	add	r3, pc
  3f53e6: 461a         	mov	r2, r3
  3f53e8: f1a4 fb92    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a4724
  3f53ec: 4602         	mov	r2, r0
  3f53ee: ab0d         	add	r3, sp, #0x34
  3f53f0: 601a         	str	r2, [r3]
  3f53f2: ab01         	add	r3, sp, #0x4
  3f53f4: 681b         	ldr	r3, [r3]
  3f53f6: 685a         	ldr	r2, [r3, #0x4]
  3f53f8: ab0d         	add	r3, sp, #0x34
  3f53fa: 4610         	mov	r0, r2
  3f53fc: 6819         	ldr	r1, [r3]
  3f53fe: 2211         	movs	r2, #0x11
  3f5400: f19f fd14    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19fa28
  3f5404: f20b fe4e    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20bc9c
  3f5408: 4604         	mov	r4, r0
  3f540a: ab0d         	add	r3, sp, #0x34
  3f540c: 6818         	ldr	r0, [r3]
  3f540e: f1a4 fa8b    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a4516
  3f5412: 4603         	mov	r3, r0
  3f5414: 4620         	mov	r0, r4
  3f5416: 4619         	mov	r1, r3
  3f5418: 2201         	movs	r2, #0x1
  3f541a: f20b ff73    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20bee6
  3f541e: ab01         	add	r3, sp, #0x4
  3f5420: 681b         	ldr	r3, [r3]
  3f5422: f103 0210    	add.w	r2, r3, #0x10
  3f5426: ab02         	add	r3, sp, #0x8
  3f5428: 2111         	movs	r1, #0x11
  3f542a: 6019         	str	r1, [r3]
  3f542c: ab02         	add	r3, sp, #0x8
  3f542e: 4610         	mov	r0, r2
  3f5430: 4619         	mov	r1, r3
  3f5432: f002 fedf    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2dbe
  3f5436: 4603         	mov	r3, r0
  3f5438: 2201         	movs	r2, #0x1
  3f543a: 601a         	str	r2, [r3]
  3f543c: f8df 365c    	ldr.w	r3, [pc, #0x65c]        @ 0x3f5a9c <Sound::loadSoundBuffers()+0xb4c>
  3f5440: 447b         	add	r3, pc
  3f5442: 4618         	mov	r0, r3
  3f5444: f8df 3658    	ldr.w	r3, [pc, #0x658]        @ 0x3f5aa0 <Sound::loadSoundBuffers()+0xb50>
  3f5448: 447b         	add	r3, pc
  3f544a: 4619         	mov	r1, r3
  3f544c: f8df 3654    	ldr.w	r3, [pc, #0x654]        @ 0x3f5aa4 <Sound::loadSoundBuffers()+0xb54>
  3f5450: 447b         	add	r3, pc
  3f5452: 461a         	mov	r2, r3
  3f5454: f1a4 fb5c    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a46b8
  3f5458: 4602         	mov	r2, r0
  3f545a: ab0e         	add	r3, sp, #0x38
  3f545c: 601a         	str	r2, [r3]
  3f545e: ab01         	add	r3, sp, #0x4
  3f5460: 681b         	ldr	r3, [r3]
  3f5462: 685a         	ldr	r2, [r3, #0x4]
  3f5464: ab0e         	add	r3, sp, #0x38
  3f5466: 4610         	mov	r0, r2
  3f5468: 6819         	ldr	r1, [r3]
  3f546a: 2203         	movs	r2, #0x3
  3f546c: f19f fcde    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f9bc
  3f5470: f20b fe18    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20bc30
  3f5474: 4604         	mov	r4, r0
  3f5476: ab0e         	add	r3, sp, #0x38
  3f5478: 6818         	ldr	r0, [r3]
  3f547a: f1a4 fa55    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a44aa
  3f547e: 4603         	mov	r3, r0
  3f5480: 4620         	mov	r0, r4
  3f5482: 4619         	mov	r1, r3
  3f5484: 2201         	movs	r2, #0x1
  3f5486: f20b ff3d    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20be7a
  3f548a: ab01         	add	r3, sp, #0x4
  3f548c: 681b         	ldr	r3, [r3]
  3f548e: f103 0210    	add.w	r2, r3, #0x10
  3f5492: ab02         	add	r3, sp, #0x8
  3f5494: 2103         	movs	r1, #0x3
  3f5496: 6019         	str	r1, [r3]
  3f5498: ab02         	add	r3, sp, #0x8
  3f549a: 4610         	mov	r0, r2
  3f549c: 4619         	mov	r1, r3
  3f549e: f002 fea9    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2d52
  3f54a2: 4603         	mov	r3, r0
  3f54a4: 2201         	movs	r2, #0x1
  3f54a6: 601a         	str	r2, [r3]
  3f54a8: f8df 35fc    	ldr.w	r3, [pc, #0x5fc]        @ 0x3f5aa8 <Sound::loadSoundBuffers()+0xb58>
  3f54ac: 447b         	add	r3, pc
  3f54ae: 4618         	mov	r0, r3
  3f54b0: f8df 35f8    	ldr.w	r3, [pc, #0x5f8]        @ 0x3f5aac <Sound::loadSoundBuffers()+0xb5c>
  3f54b4: 447b         	add	r3, pc
  3f54b6: 4619         	mov	r1, r3
  3f54b8: f8df 35f4    	ldr.w	r3, [pc, #0x5f4]        @ 0x3f5ab0 <Sound::loadSoundBuffers()+0xb60>
  3f54bc: 447b         	add	r3, pc
  3f54be: 461a         	mov	r2, r3
  3f54c0: f1a4 fb26    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a464c
  3f54c4: 4602         	mov	r2, r0
  3f54c6: ab0f         	add	r3, sp, #0x3c
  3f54c8: 601a         	str	r2, [r3]
  3f54ca: ab01         	add	r3, sp, #0x4
  3f54cc: 681b         	ldr	r3, [r3]
  3f54ce: 685a         	ldr	r2, [r3, #0x4]
  3f54d0: ab0f         	add	r3, sp, #0x3c
  3f54d2: 4610         	mov	r0, r2
  3f54d4: 6819         	ldr	r1, [r3]
  3f54d6: 2209         	movs	r2, #0x9
  3f54d8: f19f fca8    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f950
  3f54dc: f20b fde2    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20bbc4
  3f54e0: 4604         	mov	r4, r0
  3f54e2: ab0f         	add	r3, sp, #0x3c
  3f54e4: 6818         	ldr	r0, [r3]
  3f54e6: f1a4 fa1f    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a443e
  3f54ea: 4603         	mov	r3, r0
  3f54ec: 4620         	mov	r0, r4
  3f54ee: 4619         	mov	r1, r3
  3f54f0: 2201         	movs	r2, #0x1
  3f54f2: f20b ff07    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20be0e
  3f54f6: ab01         	add	r3, sp, #0x4
  3f54f8: 681b         	ldr	r3, [r3]
  3f54fa: f103 0210    	add.w	r2, r3, #0x10
  3f54fe: ab02         	add	r3, sp, #0x8
  3f5500: 2109         	movs	r1, #0x9
  3f5502: 6019         	str	r1, [r3]
  3f5504: ab02         	add	r3, sp, #0x8
  3f5506: 4610         	mov	r0, r2
  3f5508: 4619         	mov	r1, r3
  3f550a: f002 fe73    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2ce6
  3f550e: 4603         	mov	r3, r0
  3f5510: 2201         	movs	r2, #0x1
  3f5512: 601a         	str	r2, [r3]
  3f5514: f8df 359c    	ldr.w	r3, [pc, #0x59c]        @ 0x3f5ab4 <Sound::loadSoundBuffers()+0xb64>
  3f5518: 447b         	add	r3, pc
  3f551a: 4618         	mov	r0, r3
  3f551c: f8df 3598    	ldr.w	r3, [pc, #0x598]        @ 0x3f5ab8 <Sound::loadSoundBuffers()+0xb68>
  3f5520: 447b         	add	r3, pc
  3f5522: 4619         	mov	r1, r3
  3f5524: f8df 3594    	ldr.w	r3, [pc, #0x594]        @ 0x3f5abc <Sound::loadSoundBuffers()+0xb6c>
  3f5528: 447b         	add	r3, pc
  3f552a: 461a         	mov	r2, r3
  3f552c: f1a4 faf0    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a45e0
  3f5530: 4602         	mov	r2, r0
  3f5532: ab10         	add	r3, sp, #0x40
  3f5534: 601a         	str	r2, [r3]
  3f5536: ab01         	add	r3, sp, #0x4
  3f5538: 681b         	ldr	r3, [r3]
  3f553a: 685a         	ldr	r2, [r3, #0x4]
  3f553c: ab10         	add	r3, sp, #0x40
  3f553e: 4610         	mov	r0, r2
  3f5540: 6819         	ldr	r1, [r3]
  3f5542: 220d         	movs	r2, #0xd
  3f5544: f19f fc72    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f8e4
  3f5548: f20b fdac    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20bb58
  3f554c: 4604         	mov	r4, r0
  3f554e: ab10         	add	r3, sp, #0x40
  3f5550: 6818         	ldr	r0, [r3]
  3f5552: f1a4 f9e9    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a43d2
  3f5556: 4603         	mov	r3, r0
  3f5558: 4620         	mov	r0, r4
  3f555a: 4619         	mov	r1, r3
  3f555c: 2201         	movs	r2, #0x1
  3f555e: f20b fed1    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20bda2
  3f5562: ab01         	add	r3, sp, #0x4
  3f5564: 681b         	ldr	r3, [r3]
  3f5566: f103 0210    	add.w	r2, r3, #0x10
  3f556a: ab02         	add	r3, sp, #0x8
  3f556c: 210d         	movs	r1, #0xd
  3f556e: 6019         	str	r1, [r3]
  3f5570: ab02         	add	r3, sp, #0x8
  3f5572: 4610         	mov	r0, r2
  3f5574: 4619         	mov	r1, r3
  3f5576: f002 fe3d    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2c7a
  3f557a: 4603         	mov	r3, r0
  3f557c: 2201         	movs	r2, #0x1
  3f557e: 601a         	str	r2, [r3]
  3f5580: f8df 353c    	ldr.w	r3, [pc, #0x53c]        @ 0x3f5ac0 <Sound::loadSoundBuffers()+0xb70>
  3f5584: 447b         	add	r3, pc
  3f5586: 4618         	mov	r0, r3
  3f5588: f8df 3538    	ldr.w	r3, [pc, #0x538]        @ 0x3f5ac4 <Sound::loadSoundBuffers()+0xb74>
  3f558c: 447b         	add	r3, pc
  3f558e: 4619         	mov	r1, r3
  3f5590: f8df 3534    	ldr.w	r3, [pc, #0x534]        @ 0x3f5ac8 <Sound::loadSoundBuffers()+0xb78>
  3f5594: 447b         	add	r3, pc
  3f5596: 461a         	mov	r2, r3
  3f5598: f1a4 faba    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a4574
  3f559c: 4602         	mov	r2, r0
  3f559e: ab11         	add	r3, sp, #0x44
  3f55a0: 601a         	str	r2, [r3]
  3f55a2: ab01         	add	r3, sp, #0x4
  3f55a4: 681b         	ldr	r3, [r3]
  3f55a6: 685a         	ldr	r2, [r3, #0x4]
  3f55a8: ab11         	add	r3, sp, #0x44
  3f55aa: 4610         	mov	r0, r2
  3f55ac: 6819         	ldr	r1, [r3]
  3f55ae: 220e         	movs	r2, #0xe
  3f55b0: f19f fc3c    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f878
  3f55b4: f20b fd76    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20baec
  3f55b8: 4604         	mov	r4, r0
  3f55ba: ab11         	add	r3, sp, #0x44
  3f55bc: 6818         	ldr	r0, [r3]
  3f55be: f1a4 f9b3    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a4366
  3f55c2: 4603         	mov	r3, r0
  3f55c4: 4620         	mov	r0, r4
  3f55c6: 4619         	mov	r1, r3
  3f55c8: 2201         	movs	r2, #0x1
  3f55ca: f20b fe9b    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20bd36
  3f55ce: ab01         	add	r3, sp, #0x4
  3f55d0: 681b         	ldr	r3, [r3]
  3f55d2: f103 0210    	add.w	r2, r3, #0x10
  3f55d6: ab02         	add	r3, sp, #0x8
  3f55d8: 210e         	movs	r1, #0xe
  3f55da: 6019         	str	r1, [r3]
  3f55dc: ab02         	add	r3, sp, #0x8
  3f55de: 4610         	mov	r0, r2
  3f55e0: 4619         	mov	r1, r3
  3f55e2: f002 fe07    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2c0e
  3f55e6: 4603         	mov	r3, r0
  3f55e8: 2201         	movs	r2, #0x1
  3f55ea: 601a         	str	r2, [r3]
  3f55ec: f8df 34dc    	ldr.w	r3, [pc, #0x4dc]        @ 0x3f5acc <Sound::loadSoundBuffers()+0xb7c>
  3f55f0: 447b         	add	r3, pc
  3f55f2: 4618         	mov	r0, r3
  3f55f4: f8df 34d8    	ldr.w	r3, [pc, #0x4d8]        @ 0x3f5ad0 <Sound::loadSoundBuffers()+0xb80>
  3f55f8: 447b         	add	r3, pc
  3f55fa: 4619         	mov	r1, r3
  3f55fc: f8df 34d4    	ldr.w	r3, [pc, #0x4d4]        @ 0x3f5ad4 <Sound::loadSoundBuffers()+0xb84>
  3f5600: 447b         	add	r3, pc
  3f5602: 461a         	mov	r2, r3
  3f5604: f1a4 fa84    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a4508
  3f5608: 4602         	mov	r2, r0
  3f560a: ab12         	add	r3, sp, #0x48
  3f560c: 601a         	str	r2, [r3]
  3f560e: ab01         	add	r3, sp, #0x4
  3f5610: 681b         	ldr	r3, [r3]
  3f5612: 685a         	ldr	r2, [r3, #0x4]
  3f5614: ab12         	add	r3, sp, #0x48
  3f5616: 4610         	mov	r0, r2
  3f5618: 6819         	ldr	r1, [r3]
  3f561a: 2212         	movs	r2, #0x12
  3f561c: f19f fc06    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f80c
  3f5620: f20b fd40    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20ba80
  3f5624: 4604         	mov	r4, r0
  3f5626: ab12         	add	r3, sp, #0x48
  3f5628: 6818         	ldr	r0, [r3]
  3f562a: f1a4 f97d    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a42fa
  3f562e: 4603         	mov	r3, r0
  3f5630: 4620         	mov	r0, r4
  3f5632: 4619         	mov	r1, r3
  3f5634: 2200         	movs	r2, #0x0
  3f5636: f20b fe65    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20bcca
  3f563a: ab01         	add	r3, sp, #0x4
  3f563c: 681b         	ldr	r3, [r3]
  3f563e: f103 0210    	add.w	r2, r3, #0x10
  3f5642: ab02         	add	r3, sp, #0x8
  3f5644: 2112         	movs	r1, #0x12
  3f5646: 6019         	str	r1, [r3]
  3f5648: ab02         	add	r3, sp, #0x8
  3f564a: 4610         	mov	r0, r2
  3f564c: 4619         	mov	r1, r3
  3f564e: f002 fdd1    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2ba2
  3f5652: 4603         	mov	r3, r0
  3f5654: 2200         	movs	r2, #0x0
  3f5656: 601a         	str	r2, [r3]
  3f5658: f8df 347c    	ldr.w	r3, [pc, #0x47c]        @ 0x3f5ad8 <Sound::loadSoundBuffers()+0xb88>
  3f565c: 447b         	add	r3, pc
  3f565e: 4618         	mov	r0, r3
  3f5660: f8df 3478    	ldr.w	r3, [pc, #0x478]        @ 0x3f5adc <Sound::loadSoundBuffers()+0xb8c>
  3f5664: 447b         	add	r3, pc
  3f5666: 4619         	mov	r1, r3
  3f5668: f8df 3474    	ldr.w	r3, [pc, #0x474]        @ 0x3f5ae0 <Sound::loadSoundBuffers()+0xb90>
  3f566c: 447b         	add	r3, pc
  3f566e: 461a         	mov	r2, r3
  3f5670: f1a4 fa4e    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a449c
  3f5674: 4602         	mov	r2, r0
  3f5676: ab13         	add	r3, sp, #0x4c
  3f5678: 601a         	str	r2, [r3]
  3f567a: ab01         	add	r3, sp, #0x4
  3f567c: 681b         	ldr	r3, [r3]
  3f567e: 685a         	ldr	r2, [r3, #0x4]
  3f5680: ab13         	add	r3, sp, #0x4c
  3f5682: 4610         	mov	r0, r2
  3f5684: 6819         	ldr	r1, [r3]
  3f5686: 2217         	movs	r2, #0x17
  3f5688: f19f fbd0    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f7a0
  3f568c: f20b fd0a    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20ba14
  3f5690: 4604         	mov	r4, r0
  3f5692: ab13         	add	r3, sp, #0x4c
  3f5694: 6818         	ldr	r0, [r3]
  3f5696: f1a4 f947    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a428e
  3f569a: 4603         	mov	r3, r0
  3f569c: 4620         	mov	r0, r4
  3f569e: 4619         	mov	r1, r3
  3f56a0: 2200         	movs	r2, #0x0
  3f56a2: f20b fe2f    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20bc5e
  3f56a6: ab01         	add	r3, sp, #0x4
  3f56a8: 681b         	ldr	r3, [r3]
  3f56aa: f103 0210    	add.w	r2, r3, #0x10
  3f56ae: ab02         	add	r3, sp, #0x8
  3f56b0: 2117         	movs	r1, #0x17
  3f56b2: 6019         	str	r1, [r3]
  3f56b4: ab02         	add	r3, sp, #0x8
  3f56b6: 4610         	mov	r0, r2
  3f56b8: 4619         	mov	r1, r3
  3f56ba: f002 fd9b    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2b36
  3f56be: 4603         	mov	r3, r0
  3f56c0: 2200         	movs	r2, #0x0
  3f56c2: 601a         	str	r2, [r3]
  3f56c4: f8df 341c    	ldr.w	r3, [pc, #0x41c]        @ 0x3f5ae4 <Sound::loadSoundBuffers()+0xb94>
  3f56c8: 447b         	add	r3, pc
  3f56ca: 4618         	mov	r0, r3
  3f56cc: f8df 3418    	ldr.w	r3, [pc, #0x418]        @ 0x3f5ae8 <Sound::loadSoundBuffers()+0xb98>
  3f56d0: 447b         	add	r3, pc
  3f56d2: 4619         	mov	r1, r3
  3f56d4: f8df 3414    	ldr.w	r3, [pc, #0x414]        @ 0x3f5aec <Sound::loadSoundBuffers()+0xb9c>
  3f56d8: 447b         	add	r3, pc
  3f56da: 461a         	mov	r2, r3
  3f56dc: f1a4 fa18    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a4430
  3f56e0: 4602         	mov	r2, r0
  3f56e2: ab14         	add	r3, sp, #0x50
  3f56e4: 601a         	str	r2, [r3]
  3f56e6: ab01         	add	r3, sp, #0x4
  3f56e8: 681b         	ldr	r3, [r3]
  3f56ea: 685a         	ldr	r2, [r3, #0x4]
  3f56ec: ab14         	add	r3, sp, #0x50
  3f56ee: 4610         	mov	r0, r2
  3f56f0: 6819         	ldr	r1, [r3]
  3f56f2: 2213         	movs	r2, #0x13
  3f56f4: f19f fb9a    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f734
  3f56f8: f20b fcd4    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b9a8
  3f56fc: 4604         	mov	r4, r0
  3f56fe: ab14         	add	r3, sp, #0x50
  3f5700: 6818         	ldr	r0, [r3]
  3f5702: f1a4 f911    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a4222
  3f5706: 4603         	mov	r3, r0
  3f5708: 4620         	mov	r0, r4
  3f570a: 4619         	mov	r1, r3
  3f570c: 2200         	movs	r2, #0x0
  3f570e: f20b fdf9    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20bbf2
  3f5712: ab01         	add	r3, sp, #0x4
  3f5714: 681b         	ldr	r3, [r3]
  3f5716: f103 0210    	add.w	r2, r3, #0x10
  3f571a: ab02         	add	r3, sp, #0x8
  3f571c: 2113         	movs	r1, #0x13
  3f571e: 6019         	str	r1, [r3]
  3f5720: ab02         	add	r3, sp, #0x8
  3f5722: 4610         	mov	r0, r2
  3f5724: 4619         	mov	r1, r3
  3f5726: f002 fd65    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2aca
  3f572a: 4603         	mov	r3, r0
  3f572c: 2200         	movs	r2, #0x0
  3f572e: 601a         	str	r2, [r3]
  3f5730: 4bef         	ldr	r3, [pc, #0x3bc]        @ 0x3f5af0 <Sound::loadSoundBuffers()+0xba0>
  3f5732: 447b         	add	r3, pc
  3f5734: 4618         	mov	r0, r3
  3f5736: 4bef         	ldr	r3, [pc, #0x3bc]        @ 0x3f5af4 <Sound::loadSoundBuffers()+0xba4>
  3f5738: 447b         	add	r3, pc
  3f573a: 4619         	mov	r1, r3
  3f573c: 4bee         	ldr	r3, [pc, #0x3b8]        @ 0x3f5af8 <Sound::loadSoundBuffers()+0xba8>
  3f573e: 447b         	add	r3, pc
  3f5740: 461a         	mov	r2, r3
  3f5742: f1a4 f9e5    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a43ca
  3f5746: 4602         	mov	r2, r0
  3f5748: ab15         	add	r3, sp, #0x54
  3f574a: 601a         	str	r2, [r3]
  3f574c: ab01         	add	r3, sp, #0x4
  3f574e: 681b         	ldr	r3, [r3]
  3f5750: 685a         	ldr	r2, [r3, #0x4]
  3f5752: ab15         	add	r3, sp, #0x54
  3f5754: 4610         	mov	r0, r2
  3f5756: 6819         	ldr	r1, [r3]
  3f5758: 2204         	movs	r2, #0x4
  3f575a: f19f fb67    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f6ce
  3f575e: f20b fca1    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b942
  3f5762: 4604         	mov	r4, r0
  3f5764: ab15         	add	r3, sp, #0x54
  3f5766: 6818         	ldr	r0, [r3]
  3f5768: f1a4 f8de    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a41bc
  3f576c: 4603         	mov	r3, r0
  3f576e: 4620         	mov	r0, r4
  3f5770: 4619         	mov	r1, r3
  3f5772: 2201         	movs	r2, #0x1
  3f5774: f20b fdc6    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20bb8c
  3f5778: ab01         	add	r3, sp, #0x4
  3f577a: 681b         	ldr	r3, [r3]
  3f577c: f103 0210    	add.w	r2, r3, #0x10
  3f5780: ab02         	add	r3, sp, #0x8
  3f5782: 2104         	movs	r1, #0x4
  3f5784: 6019         	str	r1, [r3]
  3f5786: ab02         	add	r3, sp, #0x8
  3f5788: 4610         	mov	r0, r2
  3f578a: 4619         	mov	r1, r3
  3f578c: f002 fd32    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2a64
  3f5790: 4603         	mov	r3, r0
  3f5792: 2201         	movs	r2, #0x1
  3f5794: 601a         	str	r2, [r3]
  3f5796: 4bd9         	ldr	r3, [pc, #0x364]        @ 0x3f5afc <Sound::loadSoundBuffers()+0xbac>
  3f5798: 447b         	add	r3, pc
  3f579a: 4618         	mov	r0, r3
  3f579c: 4bd8         	ldr	r3, [pc, #0x360]        @ 0x3f5b00 <Sound::loadSoundBuffers()+0xbb0>
  3f579e: 447b         	add	r3, pc
  3f57a0: 4619         	mov	r1, r3
  3f57a2: 4bd8         	ldr	r3, [pc, #0x360]        @ 0x3f5b04 <Sound::loadSoundBuffers()+0xbb4>
  3f57a4: 447b         	add	r3, pc
  3f57a6: 461a         	mov	r2, r3
  3f57a8: f1a4 f9b2    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a4364
  3f57ac: 4602         	mov	r2, r0
  3f57ae: ab16         	add	r3, sp, #0x58
  3f57b0: 601a         	str	r2, [r3]
  3f57b2: ab01         	add	r3, sp, #0x4
  3f57b4: 681b         	ldr	r3, [r3]
  3f57b6: 685a         	ldr	r2, [r3, #0x4]
  3f57b8: ab16         	add	r3, sp, #0x58
  3f57ba: 4610         	mov	r0, r2
  3f57bc: 6819         	ldr	r1, [r3]
  3f57be: 2210         	movs	r2, #0x10
  3f57c0: f19f fb34    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f668
  3f57c4: f20b fc6e    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b8dc
  3f57c8: 4604         	mov	r4, r0
  3f57ca: ab16         	add	r3, sp, #0x58
  3f57cc: 6818         	ldr	r0, [r3]
  3f57ce: f1a4 f8ab    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a4156
  3f57d2: 4603         	mov	r3, r0
  3f57d4: 4620         	mov	r0, r4
  3f57d6: 4619         	mov	r1, r3
  3f57d8: 2200         	movs	r2, #0x0
  3f57da: f20b fd93    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20bb26
  3f57de: ab01         	add	r3, sp, #0x4
  3f57e0: 681b         	ldr	r3, [r3]
  3f57e2: f103 0210    	add.w	r2, r3, #0x10
  3f57e6: ab02         	add	r3, sp, #0x8
  3f57e8: 2110         	movs	r1, #0x10
  3f57ea: 6019         	str	r1, [r3]
  3f57ec: ab02         	add	r3, sp, #0x8
  3f57ee: 4610         	mov	r0, r2
  3f57f0: 4619         	mov	r1, r3
  3f57f2: f002 fcff    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x29fe
  3f57f6: 4603         	mov	r3, r0
  3f57f8: 2200         	movs	r2, #0x0
  3f57fa: 601a         	str	r2, [r3]
  3f57fc: 4bc2         	ldr	r3, [pc, #0x308]        @ 0x3f5b08 <Sound::loadSoundBuffers()+0xbb8>
  3f57fe: 447b         	add	r3, pc
  3f5800: 4618         	mov	r0, r3
  3f5802: 4bc2         	ldr	r3, [pc, #0x308]        @ 0x3f5b0c <Sound::loadSoundBuffers()+0xbbc>
  3f5804: 447b         	add	r3, pc
  3f5806: 4619         	mov	r1, r3
  3f5808: 4bc1         	ldr	r3, [pc, #0x304]        @ 0x3f5b10 <Sound::loadSoundBuffers()+0xbc0>
  3f580a: 447b         	add	r3, pc
  3f580c: 461a         	mov	r2, r3
  3f580e: f1a4 f97f    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a42fe
  3f5812: 4602         	mov	r2, r0
  3f5814: ab17         	add	r3, sp, #0x5c
  3f5816: 601a         	str	r2, [r3]
  3f5818: ab01         	add	r3, sp, #0x4
  3f581a: 681b         	ldr	r3, [r3]
  3f581c: 685a         	ldr	r2, [r3, #0x4]
  3f581e: ab17         	add	r3, sp, #0x5c
  3f5820: 4610         	mov	r0, r2
  3f5822: 6819         	ldr	r1, [r3]
  3f5824: 2214         	movs	r2, #0x14
  3f5826: f19f fb01    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f602
  3f582a: f20b fc3b    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b876
  3f582e: 4604         	mov	r4, r0
  3f5830: ab17         	add	r3, sp, #0x5c
  3f5832: 6818         	ldr	r0, [r3]
  3f5834: f1a4 f878    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a40f0
  3f5838: 4603         	mov	r3, r0
  3f583a: 4620         	mov	r0, r4
  3f583c: 4619         	mov	r1, r3
  3f583e: 2200         	movs	r2, #0x0
  3f5840: f20b fd60    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20bac0
  3f5844: ab01         	add	r3, sp, #0x4
  3f5846: 681b         	ldr	r3, [r3]
  3f5848: f103 0210    	add.w	r2, r3, #0x10
  3f584c: ab02         	add	r3, sp, #0x8
  3f584e: 2114         	movs	r1, #0x14
  3f5850: 6019         	str	r1, [r3]
  3f5852: ab02         	add	r3, sp, #0x8
  3f5854: 4610         	mov	r0, r2
  3f5856: 4619         	mov	r1, r3
  3f5858: f002 fccc    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2998
  3f585c: 4603         	mov	r3, r0
  3f585e: 2200         	movs	r2, #0x0
  3f5860: 601a         	str	r2, [r3]
  3f5862: 4bac         	ldr	r3, [pc, #0x2b0]        @ 0x3f5b14 <Sound::loadSoundBuffers()+0xbc4>
  3f5864: 447b         	add	r3, pc
  3f5866: 4618         	mov	r0, r3
  3f5868: 4bab         	ldr	r3, [pc, #0x2ac]        @ 0x3f5b18 <Sound::loadSoundBuffers()+0xbc8>
  3f586a: 447b         	add	r3, pc
  3f586c: 4619         	mov	r1, r3
  3f586e: 4bab         	ldr	r3, [pc, #0x2ac]        @ 0x3f5b1c <Sound::loadSoundBuffers()+0xbcc>
  3f5870: 447b         	add	r3, pc
  3f5872: 461a         	mov	r2, r3
  3f5874: f1a4 f94c    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a4298
  3f5878: 4602         	mov	r2, r0
  3f587a: ab18         	add	r3, sp, #0x60
  3f587c: 601a         	str	r2, [r3]
  3f587e: ab01         	add	r3, sp, #0x4
  3f5880: 681b         	ldr	r3, [r3]
  3f5882: 685a         	ldr	r2, [r3, #0x4]
  3f5884: ab18         	add	r3, sp, #0x60
  3f5886: 4610         	mov	r0, r2
  3f5888: 6819         	ldr	r1, [r3]
  3f588a: 2215         	movs	r2, #0x15
  3f588c: f19f face    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f59c
  3f5890: f20b fc08    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b810
  3f5894: 4604         	mov	r4, r0
  3f5896: ab18         	add	r3, sp, #0x60
  3f5898: 6818         	ldr	r0, [r3]
  3f589a: f1a4 f845    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a408a
  3f589e: 4603         	mov	r3, r0
  3f58a0: 4620         	mov	r0, r4
  3f58a2: 4619         	mov	r1, r3
  3f58a4: 2200         	movs	r2, #0x0
  3f58a6: f20b fd2d    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20ba5a
  3f58aa: ab01         	add	r3, sp, #0x4
  3f58ac: 681b         	ldr	r3, [r3]
  3f58ae: f103 0210    	add.w	r2, r3, #0x10
  3f58b2: ab02         	add	r3, sp, #0x8
  3f58b4: 2115         	movs	r1, #0x15
  3f58b6: 6019         	str	r1, [r3]
  3f58b8: ab02         	add	r3, sp, #0x8
  3f58ba: 4610         	mov	r0, r2
  3f58bc: 4619         	mov	r1, r3
  3f58be: f002 fc99    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2932
  3f58c2: 4603         	mov	r3, r0
  3f58c4: 2200         	movs	r2, #0x0
  3f58c6: 601a         	str	r2, [r3]
  3f58c8: 4b95         	ldr	r3, [pc, #0x254]        @ 0x3f5b20 <Sound::loadSoundBuffers()+0xbd0>
  3f58ca: 447b         	add	r3, pc
  3f58cc: 4618         	mov	r0, r3
  3f58ce: 4b95         	ldr	r3, [pc, #0x254]        @ 0x3f5b24 <Sound::loadSoundBuffers()+0xbd4>
  3f58d0: 447b         	add	r3, pc
  3f58d2: 4619         	mov	r1, r3
  3f58d4: 4b94         	ldr	r3, [pc, #0x250]        @ 0x3f5b28 <Sound::loadSoundBuffers()+0xbd8>
  3f58d6: 447b         	add	r3, pc
  3f58d8: 461a         	mov	r2, r3
  3f58da: f1a4 f919    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a4232
  3f58de: 4602         	mov	r2, r0
  3f58e0: ab19         	add	r3, sp, #0x64
  3f58e2: 601a         	str	r2, [r3]
  3f58e4: ab01         	add	r3, sp, #0x4
  3f58e6: 681b         	ldr	r3, [r3]
  3f58e8: 685a         	ldr	r2, [r3, #0x4]
  3f58ea: ab19         	add	r3, sp, #0x64
  3f58ec: 4610         	mov	r0, r2
  3f58ee: 6819         	ldr	r1, [r3]
  3f58f0: 2216         	movs	r2, #0x16
  3f58f2: f19f fa9b    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f536
  3f58f6: f20b fbd5    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b7aa
  3f58fa: 4604         	mov	r4, r0
  3f58fc: ab19         	add	r3, sp, #0x64
  3f58fe: 6818         	ldr	r0, [r3]
  3f5900: f1a4 f812    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a4024
  3f5904: 4603         	mov	r3, r0
  3f5906: 4620         	mov	r0, r4
  3f5908: 4619         	mov	r1, r3
  3f590a: 2201         	movs	r2, #0x1
  3f590c: f20b fcfa    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b9f4
  3f5910: ab01         	add	r3, sp, #0x4
  3f5912: 681b         	ldr	r3, [r3]
  3f5914: f103 0210    	add.w	r2, r3, #0x10
  3f5918: ab02         	add	r3, sp, #0x8
  3f591a: 2116         	movs	r1, #0x16
  3f591c: 6019         	str	r1, [r3]
  3f591e: ab02         	add	r3, sp, #0x8
  3f5920: 4610         	mov	r0, r2
  3f5922: 4619         	mov	r1, r3
  3f5924: f002 fc66    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x28cc
  3f5928: 4603         	mov	r3, r0
  3f592a: 2201         	movs	r2, #0x1
  3f592c: 601a         	str	r2, [r3]
  3f592e: 4b7f         	ldr	r3, [pc, #0x1fc]        @ 0x3f5b2c <Sound::loadSoundBuffers()+0xbdc>
  3f5930: 447b         	add	r3, pc
  3f5932: 4618         	mov	r0, r3
  3f5934: 4b7e         	ldr	r3, [pc, #0x1f8]        @ 0x3f5b30 <Sound::loadSoundBuffers()+0xbe0>
  3f5936: 447b         	add	r3, pc
  3f5938: 4619         	mov	r1, r3
  3f593a: 4b7e         	ldr	r3, [pc, #0x1f8]        @ 0x3f5b34 <Sound::loadSoundBuffers()+0xbe4>
  3f593c: 447b         	add	r3, pc
  3f593e: 461a         	mov	r2, r3
  3f5940: f1a4 f8e6    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a41cc
  3f5944: 4602         	mov	r2, r0
  3f5946: ab1a         	add	r3, sp, #0x68
  3f5948: 601a         	str	r2, [r3]
  3f594a: ab01         	add	r3, sp, #0x4
  3f594c: 681b         	ldr	r3, [r3]
  3f594e: 685a         	ldr	r2, [r3, #0x4]
  3f5950: ab1a         	add	r3, sp, #0x68
  3f5952: 4610         	mov	r0, r2
  3f5954: 6819         	ldr	r1, [r3]
  3f5956: 2218         	movs	r2, #0x18
  3f5958: f19f fa68    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f4d0
  3f595c: f20b fba2    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b744
  3f5960: 4604         	mov	r4, r0
  3f5962: ab1a         	add	r3, sp, #0x68
  3f5964: 6818         	ldr	r0, [r3]
  3f5966: f1a3 ffdf    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a3fbe
  3f596a: 4603         	mov	r3, r0
  3f596c: 4620         	mov	r0, r4
  3f596e: 4619         	mov	r1, r3
  3f5970: 2201         	movs	r2, #0x1
  3f5972: f20b fcc7    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b98e
  3f5976: ab01         	add	r3, sp, #0x4
  3f5978: 681b         	ldr	r3, [r3]
  3f597a: f103 0210    	add.w	r2, r3, #0x10
  3f597e: ab02         	add	r3, sp, #0x8
  3f5980: 2118         	movs	r1, #0x18
  3f5982: 6019         	str	r1, [r3]
  3f5984: ab02         	add	r3, sp, #0x8
  3f5986: 4610         	mov	r0, r2
  3f5988: 4619         	mov	r1, r3
  3f598a: f002 fc33    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2866
  3f598e: 4603         	mov	r3, r0
  3f5990: 2201         	movs	r2, #0x1
  3f5992: 601a         	str	r2, [r3]
  3f5994: 4b68         	ldr	r3, [pc, #0x1a0]        @ 0x3f5b38 <Sound::loadSoundBuffers()+0xbe8>
  3f5996: 447b         	add	r3, pc
  3f5998: 4618         	mov	r0, r3
  3f599a: 4b68         	ldr	r3, [pc, #0x1a0]        @ 0x3f5b3c <Sound::loadSoundBuffers()+0xbec>
  3f599c: 447b         	add	r3, pc
  3f599e: 4619         	mov	r1, r3
  3f59a0: 4b67         	ldr	r3, [pc, #0x19c]        @ 0x3f5b40 <Sound::loadSoundBuffers()+0xbf0>
  3f59a2: 447b         	add	r3, pc
  3f59a4: 461a         	mov	r2, r3
  3f59a6: f1a4 f8b3    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a4166
  3f59aa: 4602         	mov	r2, r0
  3f59ac: ab1b         	add	r3, sp, #0x6c
  3f59ae: 601a         	str	r2, [r3]
  3f59b0: ab01         	add	r3, sp, #0x4
  3f59b2: 681b         	ldr	r3, [r3]
  3f59b4: 685a         	ldr	r2, [r3, #0x4]
  3f59b6: ab1b         	add	r3, sp, #0x6c
  3f59b8: 4610         	mov	r0, r2
  3f59ba: 6819         	ldr	r1, [r3]
  3f59bc: 2219         	movs	r2, #0x19
  3f59be: f19f fa35    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f46a
  3f59c2: f20b fb6f    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b6de
  3f59c6: 4604         	mov	r4, r0
  3f59c8: ab1b         	add	r3, sp, #0x6c
  3f59ca: 6818         	ldr	r0, [r3]
  3f59cc: f1a3 ffac    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a3f58
  3f59d0: 4603         	mov	r3, r0
  3f59d2: 4620         	mov	r0, r4
  3f59d4: 4619         	mov	r1, r3
  3f59d6: 2201         	movs	r2, #0x1
  3f59d8: f20b fc94    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b928
  3f59dc: ab01         	add	r3, sp, #0x4
  3f59de: 681b         	ldr	r3, [r3]
  3f59e0: f103 0210    	add.w	r2, r3, #0x10
  3f59e4: ab02         	add	r3, sp, #0x8
  3f59e6: 2119         	movs	r1, #0x19
  3f59e8: 6019         	str	r1, [r3]
  3f59ea: ab02         	add	r3, sp, #0x8
  3f59ec: 4610         	mov	r0, r2
  3f59ee: 4619         	mov	r1, r3
  3f59f0: f002 fc00    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2800
  3f59f4: 4603         	mov	r3, r0
  3f59f6: 2201         	movs	r2, #0x1
  3f59f8: 601a         	str	r2, [r3]
  3f59fa: 4b52         	ldr	r3, [pc, #0x148]        @ 0x3f5b44 <Sound::loadSoundBuffers()+0xbf4>
  3f59fc: 447b         	add	r3, pc
  3f59fe: 4618         	mov	r0, r3
  3f5a00: 4b51         	ldr	r3, [pc, #0x144]        @ 0x3f5b48 <Sound::loadSoundBuffers()+0xbf8>
  3f5a02: 447b         	add	r3, pc
  3f5a04: 4619         	mov	r1, r3
  3f5a06: 4b51         	ldr	r3, [pc, #0x144]        @ 0x3f5b4c <Sound::loadSoundBuffers()+0xbfc>
  3f5a08: 447b         	add	r3, pc
  3f5a0a: 461a         	mov	r2, r3
  3f5a0c: f1a4 f880    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a4100
  3f5a10: 4602         	mov	r2, r0
  3f5a12: ab1c         	add	r3, sp, #0x70
  3f5a14: e09c         	b	0x3f5b50 <Sound::loadSoundBuffers()+0xc00> @ imm = #0x138
  3f5a16: bf00         	nop
  3f5a18: 3d88         	subs	r5, #0x88
  3f5a1a: 003e         	movs	r6, r7
  3f5a1c: 3d88         	subs	r5, #0x88
  3f5a1e: 003e         	movs	r6, r7
  3f5a20: 3d8c         	subs	r5, #0x8c
  3f5a22: 003e         	movs	r6, r7
  3f5a24: 3d1c         	subs	r5, #0x1c
  3f5a26: 003e         	movs	r6, r7
  3f5a28: 3d2c         	subs	r5, #0x2c
  3f5a2a: 003e         	movs	r6, r7
  3f5a2c: 3d20         	subs	r5, #0x20
  3f5a2e: 003e         	movs	r6, r7
  3f5a30: 3cb0         	subs	r4, #0xb0
  3f5a32: 003e         	movs	r6, r7
  3f5a34: 3cc8         	subs	r4, #0xc8
  3f5a36: 003e         	movs	r6, r7
  3f5a38: 3cb4         	subs	r4, #0xb4
  3f5a3a: 003e         	movs	r6, r7
  3f5a3c: 3c44         	subs	r4, #0x44
  3f5a3e: 003e         	movs	r6, r7
  3f5a40: 3c60         	subs	r4, #0x60
  3f5a42: 003e         	movs	r6, r7
  3f5a44: 3c48         	subs	r4, #0x48
  3f5a46: 003e         	movs	r6, r7
  3f5a48: 3bd8         	subs	r3, #0xd8
  3f5a4a: 003e         	movs	r6, r7
  3f5a4c: 3bf8         	subs	r3, #0xf8
  3f5a4e: 003e         	movs	r6, r7
  3f5a50: 3bdc         	subs	r3, #0xdc
  3f5a52: 003e         	movs	r6, r7
  3f5a54: 3b6c         	subs	r3, #0x6c
  3f5a56: 003e         	movs	r6, r7
  3f5a58: 3b94         	subs	r3, #0x94
  3f5a5a: 003e         	movs	r6, r7
  3f5a5c: 3b70         	subs	r3, #0x70
  3f5a5e: 003e         	movs	r6, r7
  3f5a60: 3b00         	subs	r3, #0x0
  3f5a62: 003e         	movs	r6, r7
  3f5a64: 3b30         	subs	r3, #0x30
  3f5a66: 003e         	movs	r6, r7
  3f5a68: 3b04         	subs	r3, #0x4
  3f5a6a: 003e         	movs	r6, r7
  3f5a6c: 3a94         	subs	r2, #0x94
  3f5a6e: 003e         	movs	r6, r7
  3f5a70: 3acc         	subs	r2, #0xcc
  3f5a72: 003e         	movs	r6, r7
  3f5a74: 3a98         	subs	r2, #0x98
  3f5a76: 003e         	movs	r6, r7
  3f5a78: 3a28         	subs	r2, #0x28
  3f5a7a: 003e         	movs	r6, r7
  3f5a7c: 3a68         	subs	r2, #0x68
  3f5a7e: 003e         	movs	r6, r7
  3f5a80: 3a2c         	subs	r2, #0x2c
  3f5a82: 003e         	movs	r6, r7
  3f5a84: 39bc         	subs	r1, #0xbc
  3f5a86: 003e         	movs	r6, r7
  3f5a88: 3a00         	subs	r2, #0x0
  3f5a8a: 003e         	movs	r6, r7
  3f5a8c: 39c0         	subs	r1, #0xc0
  3f5a8e: 003e         	movs	r6, r7
  3f5a90: 3950         	subs	r1, #0x50
  3f5a92: 003e         	movs	r6, r7
  3f5a94: 399c         	subs	r1, #0x9c
  3f5a96: 003e         	movs	r6, r7
  3f5a98: 3954         	subs	r1, #0x54
  3f5a9a: 003e         	movs	r6, r7
  3f5a9c: 38e4         	subs	r0, #0xe4
  3f5a9e: 003e         	movs	r6, r7
  3f5aa0: 3938         	subs	r1, #0x38
  3f5aa2: 003e         	movs	r6, r7
  3f5aa4: 38e8         	subs	r0, #0xe8
  3f5aa6: 003e         	movs	r6, r7
  3f5aa8: 3878         	subs	r0, #0x78
  3f5aaa: 003e         	movs	r6, r7
  3f5aac: 38d4         	subs	r0, #0xd4
  3f5aae: 003e         	movs	r6, r7
  3f5ab0: 387c         	subs	r0, #0x7c
  3f5ab2: 003e         	movs	r6, r7
  3f5ab4: 380c         	subs	r0, #0xc
  3f5ab6: 003e         	movs	r6, r7
  3f5ab8: 3870         	subs	r0, #0x70
  3f5aba: 003e         	movs	r6, r7
  3f5abc: 3810         	subs	r0, #0x10
  3f5abe: 003e         	movs	r6, r7
  3f5ac0: 37a0         	adds	r7, #0xa0
  3f5ac2: 003e         	movs	r6, r7
  3f5ac4: 3810         	subs	r0, #0x10
  3f5ac6: 003e         	movs	r6, r7
  3f5ac8: 37a4         	adds	r7, #0xa4
  3f5aca: 003e         	movs	r6, r7
  3f5acc: 3734         	adds	r7, #0x34
  3f5ace: 003e         	movs	r6, r7
  3f5ad0: 37b0         	adds	r7, #0xb0
  3f5ad2: 003e         	movs	r6, r7
  3f5ad4: 3738         	adds	r7, #0x38
  3f5ad6: 003e         	movs	r6, r7
  3f5ad8: 36c8         	adds	r6, #0xc8
  3f5ada: 003e         	movs	r6, r7
  3f5adc: 374c         	adds	r7, #0x4c
  3f5ade: 003e         	movs	r6, r7
  3f5ae0: 36cc         	adds	r6, #0xcc
  3f5ae2: 003e         	movs	r6, r7
  3f5ae4: 365c         	adds	r6, #0x5c
  3f5ae6: 003e         	movs	r6, r7
  3f5ae8: 36e8         	adds	r6, #0xe8
  3f5aea: 003e         	movs	r6, r7
  3f5aec: 3660         	adds	r6, #0x60
  3f5aee: 003e         	movs	r6, r7
  3f5af0: 35f2         	adds	r5, #0xf2
  3f5af2: 003e         	movs	r6, r7
  3f5af4: 3688         	adds	r6, #0x88
  3f5af6: 003e         	movs	r6, r7
  3f5af8: 35fa         	adds	r5, #0xfa
  3f5afa: 003e         	movs	r6, r7
  3f5afc: 358c         	adds	r5, #0x8c
  3f5afe: 003e         	movs	r6, r7
  3f5b00: 362a         	adds	r6, #0x2a
  3f5b02: 003e         	movs	r6, r7
  3f5b04: 3594         	adds	r5, #0x94
  3f5b06: 003e         	movs	r6, r7
  3f5b08: 3526         	adds	r5, #0x26
  3f5b0a: 003e         	movs	r6, r7
  3f5b0c: 35d0         	adds	r5, #0xd0
  3f5b0e: 003e         	movs	r6, r7
  3f5b10: 352e         	adds	r5, #0x2e
  3f5b12: 003e         	movs	r6, r7
  3f5b14: 34c0         	adds	r4, #0xc0
  3f5b16: 003e         	movs	r6, r7
  3f5b18: 356e         	adds	r5, #0x6e
  3f5b1a: 003e         	movs	r6, r7
  3f5b1c: 34c8         	adds	r4, #0xc8
  3f5b1e: 003e         	movs	r6, r7
  3f5b20: 345a         	adds	r4, #0x5a
  3f5b22: 003e         	movs	r6, r7
  3f5b24: 3510         	adds	r5, #0x10
  3f5b26: 003e         	movs	r6, r7
  3f5b28: 3462         	adds	r4, #0x62
  3f5b2a: 003e         	movs	r6, r7
  3f5b2c: 33f4         	adds	r3, #0xf4
  3f5b2e: 003e         	movs	r6, r7
  3f5b30: 34b2         	adds	r4, #0xb2
  3f5b32: 003e         	movs	r6, r7
  3f5b34: 33fc         	adds	r3, #0xfc
  3f5b36: 003e         	movs	r6, r7
  3f5b38: 338e         	adds	r3, #0x8e
  3f5b3a: 003e         	movs	r6, r7
  3f5b3c: 3454         	adds	r4, #0x54
  3f5b3e: 003e         	movs	r6, r7
  3f5b40: 3396         	adds	r3, #0x96
  3f5b42: 003e         	movs	r6, r7
  3f5b44: 3328         	adds	r3, #0x28
  3f5b46: 003e         	movs	r6, r7
  3f5b48: 33f6         	adds	r3, #0xf6
  3f5b4a: 003e         	movs	r6, r7
  3f5b4c: 3330         	adds	r3, #0x30
  3f5b4e: 003e         	movs	r6, r7
  3f5b50: 601a         	str	r2, [r3]
  3f5b52: ab01         	add	r3, sp, #0x4
  3f5b54: 681b         	ldr	r3, [r3]
  3f5b56: 685a         	ldr	r2, [r3, #0x4]
  3f5b58: ab1c         	add	r3, sp, #0x70
  3f5b5a: 4610         	mov	r0, r2
  3f5b5c: 6819         	ldr	r1, [r3]
  3f5b5e: 221a         	movs	r2, #0x1a
  3f5b60: f19f f964    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f2c8
  3f5b64: f20b fa9e    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b53c
  3f5b68: 4604         	mov	r4, r0
  3f5b6a: ab1c         	add	r3, sp, #0x70
  3f5b6c: 6818         	ldr	r0, [r3]
  3f5b6e: f1a3 fedb    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a3db6
  3f5b72: 4603         	mov	r3, r0
  3f5b74: 4620         	mov	r0, r4
  3f5b76: 4619         	mov	r1, r3
  3f5b78: 2201         	movs	r2, #0x1
  3f5b7a: f20b fbc3    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b786
  3f5b7e: ab01         	add	r3, sp, #0x4
  3f5b80: 681b         	ldr	r3, [r3]
  3f5b82: f103 0210    	add.w	r2, r3, #0x10
  3f5b86: ab02         	add	r3, sp, #0x8
  3f5b88: 211a         	movs	r1, #0x1a
  3f5b8a: 6019         	str	r1, [r3]
  3f5b8c: ab02         	add	r3, sp, #0x8
  3f5b8e: 4610         	mov	r0, r2
  3f5b90: 4619         	mov	r1, r3
  3f5b92: f002 fb2f    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x265e
  3f5b96: 4603         	mov	r3, r0
  3f5b98: 2201         	movs	r2, #0x1
  3f5b9a: 601a         	str	r2, [r3]
  3f5b9c: f8df 3a9c    	ldr.w	r3, [pc, #0xa9c]        @ 0x3f663c <Sound::loadSoundBuffers()+0x16ec>
  3f5ba0: 447b         	add	r3, pc
  3f5ba2: 4618         	mov	r0, r3
  3f5ba4: f8df 3a98    	ldr.w	r3, [pc, #0xa98]        @ 0x3f6640 <Sound::loadSoundBuffers()+0x16f0>
  3f5ba8: 447b         	add	r3, pc
  3f5baa: 4619         	mov	r1, r3
  3f5bac: f8df 3a94    	ldr.w	r3, [pc, #0xa94]        @ 0x3f6644 <Sound::loadSoundBuffers()+0x16f4>
  3f5bb0: 447b         	add	r3, pc
  3f5bb2: 461a         	mov	r2, r3
  3f5bb4: f1a3 ffac    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3f58
  3f5bb8: 4602         	mov	r2, r0
  3f5bba: ab1d         	add	r3, sp, #0x74
  3f5bbc: 601a         	str	r2, [r3]
  3f5bbe: ab01         	add	r3, sp, #0x4
  3f5bc0: 681b         	ldr	r3, [r3]
  3f5bc2: 685a         	ldr	r2, [r3, #0x4]
  3f5bc4: ab1d         	add	r3, sp, #0x74
  3f5bc6: 4610         	mov	r0, r2
  3f5bc8: 6819         	ldr	r1, [r3]
  3f5bca: 221b         	movs	r2, #0x1b
  3f5bcc: f19f f92e    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f25c
  3f5bd0: f20b fa68    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b4d0
  3f5bd4: 4604         	mov	r4, r0
  3f5bd6: ab1d         	add	r3, sp, #0x74
  3f5bd8: 6818         	ldr	r0, [r3]
  3f5bda: f1a3 fea5    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a3d4a
  3f5bde: 4603         	mov	r3, r0
  3f5be0: 4620         	mov	r0, r4
  3f5be2: 4619         	mov	r1, r3
  3f5be4: 2201         	movs	r2, #0x1
  3f5be6: f20b fb8d    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b71a
  3f5bea: ab01         	add	r3, sp, #0x4
  3f5bec: 681b         	ldr	r3, [r3]
  3f5bee: f103 0210    	add.w	r2, r3, #0x10
  3f5bf2: ab02         	add	r3, sp, #0x8
  3f5bf4: 211b         	movs	r1, #0x1b
  3f5bf6: 6019         	str	r1, [r3]
  3f5bf8: ab02         	add	r3, sp, #0x8
  3f5bfa: 4610         	mov	r0, r2
  3f5bfc: 4619         	mov	r1, r3
  3f5bfe: f002 faf9    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x25f2
  3f5c02: 4603         	mov	r3, r0
  3f5c04: 2201         	movs	r2, #0x1
  3f5c06: 601a         	str	r2, [r3]
  3f5c08: f8df 3a3c    	ldr.w	r3, [pc, #0xa3c]        @ 0x3f6648 <Sound::loadSoundBuffers()+0x16f8>
  3f5c0c: 447b         	add	r3, pc
  3f5c0e: 4618         	mov	r0, r3
  3f5c10: f8df 3a38    	ldr.w	r3, [pc, #0xa38]        @ 0x3f664c <Sound::loadSoundBuffers()+0x16fc>
  3f5c14: 447b         	add	r3, pc
  3f5c16: 4619         	mov	r1, r3
  3f5c18: f8df 3a34    	ldr.w	r3, [pc, #0xa34]        @ 0x3f6650 <Sound::loadSoundBuffers()+0x1700>
  3f5c1c: 447b         	add	r3, pc
  3f5c1e: 461a         	mov	r2, r3
  3f5c20: f1a3 ff76    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3eec
  3f5c24: 4602         	mov	r2, r0
  3f5c26: ab1e         	add	r3, sp, #0x78
  3f5c28: 601a         	str	r2, [r3]
  3f5c2a: ab01         	add	r3, sp, #0x4
  3f5c2c: 681b         	ldr	r3, [r3]
  3f5c2e: 685a         	ldr	r2, [r3, #0x4]
  3f5c30: ab1e         	add	r3, sp, #0x78
  3f5c32: 4610         	mov	r0, r2
  3f5c34: 6819         	ldr	r1, [r3]
  3f5c36: 221c         	movs	r2, #0x1c
  3f5c38: f19f f8f8    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f1f0
  3f5c3c: f20b fa32    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b464
  3f5c40: 4604         	mov	r4, r0
  3f5c42: ab1e         	add	r3, sp, #0x78
  3f5c44: 6818         	ldr	r0, [r3]
  3f5c46: f1a3 fe6f    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a3cde
  3f5c4a: 4603         	mov	r3, r0
  3f5c4c: 4620         	mov	r0, r4
  3f5c4e: 4619         	mov	r1, r3
  3f5c50: 2201         	movs	r2, #0x1
  3f5c52: f20b fb57    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b6ae
  3f5c56: ab01         	add	r3, sp, #0x4
  3f5c58: 681b         	ldr	r3, [r3]
  3f5c5a: f103 0210    	add.w	r2, r3, #0x10
  3f5c5e: ab02         	add	r3, sp, #0x8
  3f5c60: 211c         	movs	r1, #0x1c
  3f5c62: 6019         	str	r1, [r3]
  3f5c64: ab02         	add	r3, sp, #0x8
  3f5c66: 4610         	mov	r0, r2
  3f5c68: 4619         	mov	r1, r3
  3f5c6a: f002 fac3    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2586
  3f5c6e: 4603         	mov	r3, r0
  3f5c70: 2201         	movs	r2, #0x1
  3f5c72: 601a         	str	r2, [r3]
  3f5c74: f8df 39dc    	ldr.w	r3, [pc, #0x9dc]        @ 0x3f6654 <Sound::loadSoundBuffers()+0x1704>
  3f5c78: 447b         	add	r3, pc
  3f5c7a: 4618         	mov	r0, r3
  3f5c7c: f8df 39d8    	ldr.w	r3, [pc, #0x9d8]        @ 0x3f6658 <Sound::loadSoundBuffers()+0x1708>
  3f5c80: 447b         	add	r3, pc
  3f5c82: 4619         	mov	r1, r3
  3f5c84: f8df 39d4    	ldr.w	r3, [pc, #0x9d4]        @ 0x3f665c <Sound::loadSoundBuffers()+0x170c>
  3f5c88: 447b         	add	r3, pc
  3f5c8a: 461a         	mov	r2, r3
  3f5c8c: f1a3 ff40    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3e80
  3f5c90: 4602         	mov	r2, r0
  3f5c92: ab1f         	add	r3, sp, #0x7c
  3f5c94: 601a         	str	r2, [r3]
  3f5c96: ab01         	add	r3, sp, #0x4
  3f5c98: 681b         	ldr	r3, [r3]
  3f5c9a: 685a         	ldr	r2, [r3, #0x4]
  3f5c9c: ab1f         	add	r3, sp, #0x7c
  3f5c9e: 4610         	mov	r0, r2
  3f5ca0: 6819         	ldr	r1, [r3]
  3f5ca2: 221d         	movs	r2, #0x1d
  3f5ca4: f19f f8c2    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f184
  3f5ca8: f20b f9fc    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b3f8
  3f5cac: 4604         	mov	r4, r0
  3f5cae: ab1f         	add	r3, sp, #0x7c
  3f5cb0: 6818         	ldr	r0, [r3]
  3f5cb2: f1a3 fe39    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a3c72
  3f5cb6: 4603         	mov	r3, r0
  3f5cb8: 4620         	mov	r0, r4
  3f5cba: 4619         	mov	r1, r3
  3f5cbc: 2201         	movs	r2, #0x1
  3f5cbe: f20b fb21    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b642
  3f5cc2: ab01         	add	r3, sp, #0x4
  3f5cc4: 681b         	ldr	r3, [r3]
  3f5cc6: f103 0210    	add.w	r2, r3, #0x10
  3f5cca: ab02         	add	r3, sp, #0x8
  3f5ccc: 211d         	movs	r1, #0x1d
  3f5cce: 6019         	str	r1, [r3]
  3f5cd0: ab02         	add	r3, sp, #0x8
  3f5cd2: 4610         	mov	r0, r2
  3f5cd4: 4619         	mov	r1, r3
  3f5cd6: f002 fa8d    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x251a
  3f5cda: 4603         	mov	r3, r0
  3f5cdc: 2201         	movs	r2, #0x1
  3f5cde: 601a         	str	r2, [r3]
  3f5ce0: f8df 397c    	ldr.w	r3, [pc, #0x97c]        @ 0x3f6660 <Sound::loadSoundBuffers()+0x1710>
  3f5ce4: 447b         	add	r3, pc
  3f5ce6: 4618         	mov	r0, r3
  3f5ce8: f8df 3978    	ldr.w	r3, [pc, #0x978]        @ 0x3f6664 <Sound::loadSoundBuffers()+0x1714>
  3f5cec: 447b         	add	r3, pc
  3f5cee: 4619         	mov	r1, r3
  3f5cf0: f8df 3974    	ldr.w	r3, [pc, #0x974]        @ 0x3f6668 <Sound::loadSoundBuffers()+0x1718>
  3f5cf4: 447b         	add	r3, pc
  3f5cf6: 461a         	mov	r2, r3
  3f5cf8: f1a3 ff0a    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3e14
  3f5cfc: 4602         	mov	r2, r0
  3f5cfe: ab20         	add	r3, sp, #0x80
  3f5d00: 601a         	str	r2, [r3]
  3f5d02: ab01         	add	r3, sp, #0x4
  3f5d04: 681b         	ldr	r3, [r3]
  3f5d06: 685a         	ldr	r2, [r3, #0x4]
  3f5d08: ab20         	add	r3, sp, #0x80
  3f5d0a: 4610         	mov	r0, r2
  3f5d0c: 6819         	ldr	r1, [r3]
  3f5d0e: 221e         	movs	r2, #0x1e
  3f5d10: f19f f88c    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f118
  3f5d14: f20b f9c6    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b38c
  3f5d18: 4604         	mov	r4, r0
  3f5d1a: ab20         	add	r3, sp, #0x80
  3f5d1c: 6818         	ldr	r0, [r3]
  3f5d1e: f1a3 fe03    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a3c06
  3f5d22: 4603         	mov	r3, r0
  3f5d24: 4620         	mov	r0, r4
  3f5d26: 4619         	mov	r1, r3
  3f5d28: 2201         	movs	r2, #0x1
  3f5d2a: f20b faeb    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b5d6
  3f5d2e: ab01         	add	r3, sp, #0x4
  3f5d30: 681b         	ldr	r3, [r3]
  3f5d32: f103 0210    	add.w	r2, r3, #0x10
  3f5d36: ab02         	add	r3, sp, #0x8
  3f5d38: 211e         	movs	r1, #0x1e
  3f5d3a: 6019         	str	r1, [r3]
  3f5d3c: ab02         	add	r3, sp, #0x8
  3f5d3e: 4610         	mov	r0, r2
  3f5d40: 4619         	mov	r1, r3
  3f5d42: f002 fa57    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x24ae
  3f5d46: 4603         	mov	r3, r0
  3f5d48: 2201         	movs	r2, #0x1
  3f5d4a: 601a         	str	r2, [r3]
  3f5d4c: f8df 391c    	ldr.w	r3, [pc, #0x91c]        @ 0x3f666c <Sound::loadSoundBuffers()+0x171c>
  3f5d50: 447b         	add	r3, pc
  3f5d52: 4618         	mov	r0, r3
  3f5d54: f8df 3918    	ldr.w	r3, [pc, #0x918]        @ 0x3f6670 <Sound::loadSoundBuffers()+0x1720>
  3f5d58: 447b         	add	r3, pc
  3f5d5a: 4619         	mov	r1, r3
  3f5d5c: f8df 3914    	ldr.w	r3, [pc, #0x914]        @ 0x3f6674 <Sound::loadSoundBuffers()+0x1724>
  3f5d60: 447b         	add	r3, pc
  3f5d62: 461a         	mov	r2, r3
  3f5d64: f1a3 fed4    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3da8
  3f5d68: 4602         	mov	r2, r0
  3f5d6a: ab21         	add	r3, sp, #0x84
  3f5d6c: 601a         	str	r2, [r3]
  3f5d6e: ab01         	add	r3, sp, #0x4
  3f5d70: 681b         	ldr	r3, [r3]
  3f5d72: 685a         	ldr	r2, [r3, #0x4]
  3f5d74: ab21         	add	r3, sp, #0x84
  3f5d76: 4610         	mov	r0, r2
  3f5d78: 6819         	ldr	r1, [r3]
  3f5d7a: 221f         	movs	r2, #0x1f
  3f5d7c: f19f f856    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f0ac
  3f5d80: f20b f990    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b320
  3f5d84: 4604         	mov	r4, r0
  3f5d86: ab21         	add	r3, sp, #0x84
  3f5d88: 6818         	ldr	r0, [r3]
  3f5d8a: f1a3 fdcd    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a3b9a
  3f5d8e: 4603         	mov	r3, r0
  3f5d90: 4620         	mov	r0, r4
  3f5d92: 4619         	mov	r1, r3
  3f5d94: 2201         	movs	r2, #0x1
  3f5d96: f20b fab5    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b56a
  3f5d9a: ab01         	add	r3, sp, #0x4
  3f5d9c: 681b         	ldr	r3, [r3]
  3f5d9e: f103 0210    	add.w	r2, r3, #0x10
  3f5da2: ab02         	add	r3, sp, #0x8
  3f5da4: 211f         	movs	r1, #0x1f
  3f5da6: 6019         	str	r1, [r3]
  3f5da8: ab02         	add	r3, sp, #0x8
  3f5daa: 4610         	mov	r0, r2
  3f5dac: 4619         	mov	r1, r3
  3f5dae: f002 fa21    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2442
  3f5db2: 4603         	mov	r3, r0
  3f5db4: 2201         	movs	r2, #0x1
  3f5db6: 601a         	str	r2, [r3]
  3f5db8: f8df 38bc    	ldr.w	r3, [pc, #0x8bc]        @ 0x3f6678 <Sound::loadSoundBuffers()+0x1728>
  3f5dbc: 447b         	add	r3, pc
  3f5dbe: 4618         	mov	r0, r3
  3f5dc0: f8df 38b8    	ldr.w	r3, [pc, #0x8b8]        @ 0x3f667c <Sound::loadSoundBuffers()+0x172c>
  3f5dc4: 447b         	add	r3, pc
  3f5dc6: 4619         	mov	r1, r3
  3f5dc8: f8df 38b4    	ldr.w	r3, [pc, #0x8b4]        @ 0x3f6680 <Sound::loadSoundBuffers()+0x1730>
  3f5dcc: 447b         	add	r3, pc
  3f5dce: 461a         	mov	r2, r3
  3f5dd0: f1a3 fe9e    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3d3c
  3f5dd4: 4602         	mov	r2, r0
  3f5dd6: ab22         	add	r3, sp, #0x88
  3f5dd8: 601a         	str	r2, [r3]
  3f5dda: ab01         	add	r3, sp, #0x4
  3f5ddc: 681b         	ldr	r3, [r3]
  3f5dde: 685a         	ldr	r2, [r3, #0x4]
  3f5de0: ab22         	add	r3, sp, #0x88
  3f5de2: 4610         	mov	r0, r2
  3f5de4: 6819         	ldr	r1, [r3]
  3f5de6: 2220         	movs	r2, #0x20
  3f5de8: f19f f820    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19f040
  3f5dec: f20b f95a    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b2b4
  3f5df0: 4604         	mov	r4, r0
  3f5df2: ab22         	add	r3, sp, #0x88
  3f5df4: 6818         	ldr	r0, [r3]
  3f5df6: f1a3 fd97    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a3b2e
  3f5dfa: 4603         	mov	r3, r0
  3f5dfc: 4620         	mov	r0, r4
  3f5dfe: 4619         	mov	r1, r3
  3f5e00: 2201         	movs	r2, #0x1
  3f5e02: f20b fa7f    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b4fe
  3f5e06: ab01         	add	r3, sp, #0x4
  3f5e08: 681b         	ldr	r3, [r3]
  3f5e0a: f103 0210    	add.w	r2, r3, #0x10
  3f5e0e: ab02         	add	r3, sp, #0x8
  3f5e10: 2120         	movs	r1, #0x20
  3f5e12: 6019         	str	r1, [r3]
  3f5e14: ab02         	add	r3, sp, #0x8
  3f5e16: 4610         	mov	r0, r2
  3f5e18: 4619         	mov	r1, r3
  3f5e1a: f002 f9eb    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x23d6
  3f5e1e: 4603         	mov	r3, r0
  3f5e20: 2201         	movs	r2, #0x1
  3f5e22: 601a         	str	r2, [r3]
  3f5e24: f8df 385c    	ldr.w	r3, [pc, #0x85c]        @ 0x3f6684 <Sound::loadSoundBuffers()+0x1734>
  3f5e28: 447b         	add	r3, pc
  3f5e2a: 4618         	mov	r0, r3
  3f5e2c: f8df 3858    	ldr.w	r3, [pc, #0x858]        @ 0x3f6688 <Sound::loadSoundBuffers()+0x1738>
  3f5e30: 447b         	add	r3, pc
  3f5e32: 4619         	mov	r1, r3
  3f5e34: f8df 3854    	ldr.w	r3, [pc, #0x854]        @ 0x3f668c <Sound::loadSoundBuffers()+0x173c>
  3f5e38: 447b         	add	r3, pc
  3f5e3a: 461a         	mov	r2, r3
  3f5e3c: f1a3 fe68    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3cd0
  3f5e40: 4602         	mov	r2, r0
  3f5e42: ab23         	add	r3, sp, #0x8c
  3f5e44: 601a         	str	r2, [r3]
  3f5e46: ab01         	add	r3, sp, #0x4
  3f5e48: 681b         	ldr	r3, [r3]
  3f5e4a: 685a         	ldr	r2, [r3, #0x4]
  3f5e4c: ab23         	add	r3, sp, #0x8c
  3f5e4e: 4610         	mov	r0, r2
  3f5e50: 6819         	ldr	r1, [r3]
  3f5e52: 220f         	movs	r2, #0xf
  3f5e54: f19e ffea    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19efd4
  3f5e58: f20b f924    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b248
  3f5e5c: 4604         	mov	r4, r0
  3f5e5e: ab23         	add	r3, sp, #0x8c
  3f5e60: 6818         	ldr	r0, [r3]
  3f5e62: f1a3 fd61    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a3ac2
  3f5e66: 4603         	mov	r3, r0
  3f5e68: 4620         	mov	r0, r4
  3f5e6a: 4619         	mov	r1, r3
  3f5e6c: 2200         	movs	r2, #0x0
  3f5e6e: f20b fa49    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b492
  3f5e72: ab01         	add	r3, sp, #0x4
  3f5e74: 681b         	ldr	r3, [r3]
  3f5e76: f103 0210    	add.w	r2, r3, #0x10
  3f5e7a: ab02         	add	r3, sp, #0x8
  3f5e7c: 210f         	movs	r1, #0xf
  3f5e7e: 6019         	str	r1, [r3]
  3f5e80: ab02         	add	r3, sp, #0x8
  3f5e82: 4610         	mov	r0, r2
  3f5e84: 4619         	mov	r1, r3
  3f5e86: f002 f9b5    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x236a
  3f5e8a: 4603         	mov	r3, r0
  3f5e8c: 2200         	movs	r2, #0x0
  3f5e8e: 601a         	str	r2, [r3]
  3f5e90: f8df 37fc    	ldr.w	r3, [pc, #0x7fc]        @ 0x3f6690 <Sound::loadSoundBuffers()+0x1740>
  3f5e94: 447b         	add	r3, pc
  3f5e96: 4618         	mov	r0, r3
  3f5e98: f8df 37f8    	ldr.w	r3, [pc, #0x7f8]        @ 0x3f6694 <Sound::loadSoundBuffers()+0x1744>
  3f5e9c: 447b         	add	r3, pc
  3f5e9e: 4619         	mov	r1, r3
  3f5ea0: f8df 37f4    	ldr.w	r3, [pc, #0x7f4]        @ 0x3f6698 <Sound::loadSoundBuffers()+0x1748>
  3f5ea4: 447b         	add	r3, pc
  3f5ea6: 461a         	mov	r2, r3
  3f5ea8: f1a3 fe32    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3c64
  3f5eac: 4602         	mov	r2, r0
  3f5eae: ab24         	add	r3, sp, #0x90
  3f5eb0: 601a         	str	r2, [r3]
  3f5eb2: ab01         	add	r3, sp, #0x4
  3f5eb4: 681b         	ldr	r3, [r3]
  3f5eb6: 685a         	ldr	r2, [r3, #0x4]
  3f5eb8: ab24         	add	r3, sp, #0x90
  3f5eba: 4610         	mov	r0, r2
  3f5ebc: 6819         	ldr	r1, [r3]
  3f5ebe: 2221         	movs	r2, #0x21
  3f5ec0: f19e ffb4    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19ef68
  3f5ec4: f20b f8ee    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b1dc
  3f5ec8: 4604         	mov	r4, r0
  3f5eca: ab24         	add	r3, sp, #0x90
  3f5ecc: 6818         	ldr	r0, [r3]
  3f5ece: f1a3 fd2b    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a3a56
  3f5ed2: 4603         	mov	r3, r0
  3f5ed4: 4620         	mov	r0, r4
  3f5ed6: 4619         	mov	r1, r3
  3f5ed8: 2203         	movs	r2, #0x3
  3f5eda: f20b fa13    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b426
  3f5ede: ab01         	add	r3, sp, #0x4
  3f5ee0: 681b         	ldr	r3, [r3]
  3f5ee2: f103 0210    	add.w	r2, r3, #0x10
  3f5ee6: ab02         	add	r3, sp, #0x8
  3f5ee8: 2121         	movs	r1, #0x21
  3f5eea: 6019         	str	r1, [r3]
  3f5eec: ab02         	add	r3, sp, #0x8
  3f5eee: 4610         	mov	r0, r2
  3f5ef0: 4619         	mov	r1, r3
  3f5ef2: f002 f97f    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x22fe
  3f5ef6: 4603         	mov	r3, r0
  3f5ef8: 2203         	movs	r2, #0x3
  3f5efa: 601a         	str	r2, [r3]
  3f5efc: f8df 379c    	ldr.w	r3, [pc, #0x79c]        @ 0x3f669c <Sound::loadSoundBuffers()+0x174c>
  3f5f00: 447b         	add	r3, pc
  3f5f02: 4618         	mov	r0, r3
  3f5f04: f8df 3798    	ldr.w	r3, [pc, #0x798]        @ 0x3f66a0 <Sound::loadSoundBuffers()+0x1750>
  3f5f08: 447b         	add	r3, pc
  3f5f0a: 4619         	mov	r1, r3
  3f5f0c: f8df 3794    	ldr.w	r3, [pc, #0x794]        @ 0x3f66a4 <Sound::loadSoundBuffers()+0x1754>
  3f5f10: 447b         	add	r3, pc
  3f5f12: 461a         	mov	r2, r3
  3f5f14: f1a3 fdfc    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3bf8
  3f5f18: 4602         	mov	r2, r0
  3f5f1a: ab25         	add	r3, sp, #0x94
  3f5f1c: 601a         	str	r2, [r3]
  3f5f1e: ab01         	add	r3, sp, #0x4
  3f5f20: 681b         	ldr	r3, [r3]
  3f5f22: 685a         	ldr	r2, [r3, #0x4]
  3f5f24: ab25         	add	r3, sp, #0x94
  3f5f26: 4610         	mov	r0, r2
  3f5f28: 6819         	ldr	r1, [r3]
  3f5f2a: 2222         	movs	r2, #0x22
  3f5f2c: f19e ff7e    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19eefc
  3f5f30: f20b f8b8    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b170
  3f5f34: 4604         	mov	r4, r0
  3f5f36: ab25         	add	r3, sp, #0x94
  3f5f38: 6818         	ldr	r0, [r3]
  3f5f3a: f1a3 fcf5    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a39ea
  3f5f3e: 4603         	mov	r3, r0
  3f5f40: 4620         	mov	r0, r4
  3f5f42: 4619         	mov	r1, r3
  3f5f44: 2203         	movs	r2, #0x3
  3f5f46: f20b f9dd    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b3ba
  3f5f4a: ab01         	add	r3, sp, #0x4
  3f5f4c: 681b         	ldr	r3, [r3]
  3f5f4e: f103 0210    	add.w	r2, r3, #0x10
  3f5f52: ab02         	add	r3, sp, #0x8
  3f5f54: 2122         	movs	r1, #0x22
  3f5f56: 6019         	str	r1, [r3]
  3f5f58: ab02         	add	r3, sp, #0x8
  3f5f5a: 4610         	mov	r0, r2
  3f5f5c: 4619         	mov	r1, r3
  3f5f5e: f002 f949    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2292
  3f5f62: 4603         	mov	r3, r0
  3f5f64: 2203         	movs	r2, #0x3
  3f5f66: 601a         	str	r2, [r3]
  3f5f68: f8df 373c    	ldr.w	r3, [pc, #0x73c]        @ 0x3f66a8 <Sound::loadSoundBuffers()+0x1758>
  3f5f6c: 447b         	add	r3, pc
  3f5f6e: 4618         	mov	r0, r3
  3f5f70: f8df 3738    	ldr.w	r3, [pc, #0x738]        @ 0x3f66ac <Sound::loadSoundBuffers()+0x175c>
  3f5f74: 447b         	add	r3, pc
  3f5f76: 4619         	mov	r1, r3
  3f5f78: f8df 3734    	ldr.w	r3, [pc, #0x734]        @ 0x3f66b0 <Sound::loadSoundBuffers()+0x1760>
  3f5f7c: 447b         	add	r3, pc
  3f5f7e: 461a         	mov	r2, r3
  3f5f80: f1a3 fdc6    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3b8c
  3f5f84: 4602         	mov	r2, r0
  3f5f86: ab26         	add	r3, sp, #0x98
  3f5f88: 601a         	str	r2, [r3]
  3f5f8a: ab01         	add	r3, sp, #0x4
  3f5f8c: 681b         	ldr	r3, [r3]
  3f5f8e: 685a         	ldr	r2, [r3, #0x4]
  3f5f90: ab26         	add	r3, sp, #0x98
  3f5f92: 4610         	mov	r0, r2
  3f5f94: 6819         	ldr	r1, [r3]
  3f5f96: 222d         	movs	r2, #0x2d
  3f5f98: f19e ff48    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19ee90
  3f5f9c: f20b f882    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b104
  3f5fa0: 4604         	mov	r4, r0
  3f5fa2: ab26         	add	r3, sp, #0x98
  3f5fa4: 6818         	ldr	r0, [r3]
  3f5fa6: f1a3 fcbf    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a397e
  3f5faa: 4603         	mov	r3, r0
  3f5fac: 4620         	mov	r0, r4
  3f5fae: 4619         	mov	r1, r3
  3f5fb0: 2200         	movs	r2, #0x0
  3f5fb2: f20b f9a7    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b34e
  3f5fb6: ab01         	add	r3, sp, #0x4
  3f5fb8: 681b         	ldr	r3, [r3]
  3f5fba: f103 0210    	add.w	r2, r3, #0x10
  3f5fbe: ab02         	add	r3, sp, #0x8
  3f5fc0: 212d         	movs	r1, #0x2d
  3f5fc2: 6019         	str	r1, [r3]
  3f5fc4: ab02         	add	r3, sp, #0x8
  3f5fc6: 4610         	mov	r0, r2
  3f5fc8: 4619         	mov	r1, r3
  3f5fca: f002 f913    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2226
  3f5fce: 4603         	mov	r3, r0
  3f5fd0: 2200         	movs	r2, #0x0
  3f5fd2: 601a         	str	r2, [r3]
  3f5fd4: f8df 36dc    	ldr.w	r3, [pc, #0x6dc]        @ 0x3f66b4 <Sound::loadSoundBuffers()+0x1764>
  3f5fd8: 447b         	add	r3, pc
  3f5fda: 4618         	mov	r0, r3
  3f5fdc: f8df 36d8    	ldr.w	r3, [pc, #0x6d8]        @ 0x3f66b8 <Sound::loadSoundBuffers()+0x1768>
  3f5fe0: 447b         	add	r3, pc
  3f5fe2: 4619         	mov	r1, r3
  3f5fe4: f8df 36d4    	ldr.w	r3, [pc, #0x6d4]        @ 0x3f66bc <Sound::loadSoundBuffers()+0x176c>
  3f5fe8: 447b         	add	r3, pc
  3f5fea: 461a         	mov	r2, r3
  3f5fec: f1a3 fd90    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3b20
  3f5ff0: 4603         	mov	r3, r0
  3f5ff2: 9327         	str	r3, [sp, #0x9c]
  3f5ff4: ab01         	add	r3, sp, #0x4
  3f5ff6: 681b         	ldr	r3, [r3]
  3f5ff8: 685b         	ldr	r3, [r3, #0x4]
  3f5ffa: 4618         	mov	r0, r3
  3f5ffc: 9927         	ldr	r1, [sp, #0x9c]
  3f5ffe: 222e         	movs	r2, #0x2e
  3f6000: f19e ff14    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19ee28
  3f6004: f20b f84e    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b09c
  3f6008: 4604         	mov	r4, r0
  3f600a: 9827         	ldr	r0, [sp, #0x9c]
  3f600c: f1a3 fc8c    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a3918
  3f6010: 4603         	mov	r3, r0
  3f6012: 4620         	mov	r0, r4
  3f6014: 4619         	mov	r1, r3
  3f6016: 2203         	movs	r2, #0x3
  3f6018: f20b f974    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b2e8
  3f601c: ab01         	add	r3, sp, #0x4
  3f601e: 681b         	ldr	r3, [r3]
  3f6020: f103 0210    	add.w	r2, r3, #0x10
  3f6024: ab02         	add	r3, sp, #0x8
  3f6026: 212e         	movs	r1, #0x2e
  3f6028: 6019         	str	r1, [r3]
  3f602a: ab02         	add	r3, sp, #0x8
  3f602c: 4610         	mov	r0, r2
  3f602e: 4619         	mov	r1, r3
  3f6030: f002 f8e0    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x21c0
  3f6034: 4603         	mov	r3, r0
  3f6036: 2203         	movs	r2, #0x3
  3f6038: 601a         	str	r2, [r3]
  3f603a: f8df 3684    	ldr.w	r3, [pc, #0x684]        @ 0x3f66c0 <Sound::loadSoundBuffers()+0x1770>
  3f603e: 447b         	add	r3, pc
  3f6040: 4618         	mov	r0, r3
  3f6042: f8df 3680    	ldr.w	r3, [pc, #0x680]        @ 0x3f66c4 <Sound::loadSoundBuffers()+0x1774>
  3f6046: 447b         	add	r3, pc
  3f6048: 4619         	mov	r1, r3
  3f604a: f8df 367c    	ldr.w	r3, [pc, #0x67c]        @ 0x3f66c8 <Sound::loadSoundBuffers()+0x1778>
  3f604e: 447b         	add	r3, pc
  3f6050: 461a         	mov	r2, r3
  3f6052: f1a3 fd5d    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3aba
  3f6056: 4603         	mov	r3, r0
  3f6058: 9328         	str	r3, [sp, #0xa0]
  3f605a: ab01         	add	r3, sp, #0x4
  3f605c: 681b         	ldr	r3, [r3]
  3f605e: 685b         	ldr	r3, [r3, #0x4]
  3f6060: 4618         	mov	r0, r3
  3f6062: 9928         	ldr	r1, [sp, #0xa0]
  3f6064: 222f         	movs	r2, #0x2f
  3f6066: f19e fee1    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19edc2
  3f606a: f20b f81b    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20b036
  3f606e: 4604         	mov	r4, r0
  3f6070: 9828         	ldr	r0, [sp, #0xa0]
  3f6072: f1a3 fc59    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a38b2
  3f6076: 4603         	mov	r3, r0
  3f6078: 4620         	mov	r0, r4
  3f607a: 4619         	mov	r1, r3
  3f607c: 2203         	movs	r2, #0x3
  3f607e: f20b f941    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b282
  3f6082: ab01         	add	r3, sp, #0x4
  3f6084: 681b         	ldr	r3, [r3]
  3f6086: f103 0210    	add.w	r2, r3, #0x10
  3f608a: ab02         	add	r3, sp, #0x8
  3f608c: 212f         	movs	r1, #0x2f
  3f608e: 6019         	str	r1, [r3]
  3f6090: ab02         	add	r3, sp, #0x8
  3f6092: 4610         	mov	r0, r2
  3f6094: 4619         	mov	r1, r3
  3f6096: f002 f8ad    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x215a
  3f609a: 4603         	mov	r3, r0
  3f609c: 2203         	movs	r2, #0x3
  3f609e: 601a         	str	r2, [r3]
  3f60a0: f8df 3628    	ldr.w	r3, [pc, #0x628]        @ 0x3f66cc <Sound::loadSoundBuffers()+0x177c>
  3f60a4: 447b         	add	r3, pc
  3f60a6: 4618         	mov	r0, r3
  3f60a8: f8df 3624    	ldr.w	r3, [pc, #0x624]        @ 0x3f66d0 <Sound::loadSoundBuffers()+0x1780>
  3f60ac: 447b         	add	r3, pc
  3f60ae: 4619         	mov	r1, r3
  3f60b0: f8df 3620    	ldr.w	r3, [pc, #0x620]        @ 0x3f66d4 <Sound::loadSoundBuffers()+0x1784>
  3f60b4: 447b         	add	r3, pc
  3f60b6: 461a         	mov	r2, r3
  3f60b8: f1a3 fd2a    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3a54
  3f60bc: 4603         	mov	r3, r0
  3f60be: 9329         	str	r3, [sp, #0xa4]
  3f60c0: ab01         	add	r3, sp, #0x4
  3f60c2: 681b         	ldr	r3, [r3]
  3f60c4: 685b         	ldr	r3, [r3, #0x4]
  3f60c6: 4618         	mov	r0, r3
  3f60c8: 9929         	ldr	r1, [sp, #0xa4]
  3f60ca: 2230         	movs	r2, #0x30
  3f60cc: f19e feae    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19ed5c
  3f60d0: f20a ffe8    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20afd0
  3f60d4: 4604         	mov	r4, r0
  3f60d6: 9829         	ldr	r0, [sp, #0xa4]
  3f60d8: f1a3 fc26    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a384c
  3f60dc: 4603         	mov	r3, r0
  3f60de: 4620         	mov	r0, r4
  3f60e0: 4619         	mov	r1, r3
  3f60e2: 2200         	movs	r2, #0x0
  3f60e4: f20b f90e    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b21c
  3f60e8: ab01         	add	r3, sp, #0x4
  3f60ea: 681b         	ldr	r3, [r3]
  3f60ec: f103 0210    	add.w	r2, r3, #0x10
  3f60f0: ab02         	add	r3, sp, #0x8
  3f60f2: 2130         	movs	r1, #0x30
  3f60f4: 6019         	str	r1, [r3]
  3f60f6: ab02         	add	r3, sp, #0x8
  3f60f8: 4610         	mov	r0, r2
  3f60fa: 4619         	mov	r1, r3
  3f60fc: f002 f87a    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x20f4
  3f6100: 4603         	mov	r3, r0
  3f6102: 2200         	movs	r2, #0x0
  3f6104: 601a         	str	r2, [r3]
  3f6106: f8df 35d0    	ldr.w	r3, [pc, #0x5d0]        @ 0x3f66d8 <Sound::loadSoundBuffers()+0x1788>
  3f610a: 447b         	add	r3, pc
  3f610c: 4618         	mov	r0, r3
  3f610e: f8df 35cc    	ldr.w	r3, [pc, #0x5cc]        @ 0x3f66dc <Sound::loadSoundBuffers()+0x178c>
  3f6112: 447b         	add	r3, pc
  3f6114: 4619         	mov	r1, r3
  3f6116: f8df 35c8    	ldr.w	r3, [pc, #0x5c8]        @ 0x3f66e0 <Sound::loadSoundBuffers()+0x1790>
  3f611a: 447b         	add	r3, pc
  3f611c: 461a         	mov	r2, r3
  3f611e: f1a3 fcf7    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a39ee
  3f6122: 4603         	mov	r3, r0
  3f6124: 932a         	str	r3, [sp, #0xa8]
  3f6126: ab01         	add	r3, sp, #0x4
  3f6128: 681b         	ldr	r3, [r3]
  3f612a: 685b         	ldr	r3, [r3, #0x4]
  3f612c: 4618         	mov	r0, r3
  3f612e: 992a         	ldr	r1, [sp, #0xa8]
  3f6130: 2231         	movs	r2, #0x31
  3f6132: f19e fe7b    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19ecf6
  3f6136: f20a ffb5    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20af6a
  3f613a: 4604         	mov	r4, r0
  3f613c: 982a         	ldr	r0, [sp, #0xa8]
  3f613e: f1a3 fbf3    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a37e6
  3f6142: 4603         	mov	r3, r0
  3f6144: 4620         	mov	r0, r4
  3f6146: 4619         	mov	r1, r3
  3f6148: 2201         	movs	r2, #0x1
  3f614a: f20b f8db    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b1b6
  3f614e: ab01         	add	r3, sp, #0x4
  3f6150: 681b         	ldr	r3, [r3]
  3f6152: f103 0210    	add.w	r2, r3, #0x10
  3f6156: ab02         	add	r3, sp, #0x8
  3f6158: 2131         	movs	r1, #0x31
  3f615a: 6019         	str	r1, [r3]
  3f615c: ab02         	add	r3, sp, #0x8
  3f615e: 4610         	mov	r0, r2
  3f6160: 4619         	mov	r1, r3
  3f6162: f002 f847    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x208e
  3f6166: 4603         	mov	r3, r0
  3f6168: 2201         	movs	r2, #0x1
  3f616a: 601a         	str	r2, [r3]
  3f616c: f8df 3574    	ldr.w	r3, [pc, #0x574]        @ 0x3f66e4 <Sound::loadSoundBuffers()+0x1794>
  3f6170: 447b         	add	r3, pc
  3f6172: 4618         	mov	r0, r3
  3f6174: f8df 3570    	ldr.w	r3, [pc, #0x570]        @ 0x3f66e8 <Sound::loadSoundBuffers()+0x1798>
  3f6178: 447b         	add	r3, pc
  3f617a: 4619         	mov	r1, r3
  3f617c: f8df 356c    	ldr.w	r3, [pc, #0x56c]        @ 0x3f66ec <Sound::loadSoundBuffers()+0x179c>
  3f6180: 447b         	add	r3, pc
  3f6182: 461a         	mov	r2, r3
  3f6184: f1a3 fcc4    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3988
  3f6188: 4603         	mov	r3, r0
  3f618a: 932b         	str	r3, [sp, #0xac]
  3f618c: ab01         	add	r3, sp, #0x4
  3f618e: 681b         	ldr	r3, [r3]
  3f6190: 685b         	ldr	r3, [r3, #0x4]
  3f6192: 4618         	mov	r0, r3
  3f6194: 992b         	ldr	r1, [sp, #0xac]
  3f6196: 2228         	movs	r2, #0x28
  3f6198: f19e fe48    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19ec90
  3f619c: f20a ff82    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20af04
  3f61a0: 4604         	mov	r4, r0
  3f61a2: 982b         	ldr	r0, [sp, #0xac]
  3f61a4: f1a3 fbc0    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a3780
  3f61a8: 4603         	mov	r3, r0
  3f61aa: 4620         	mov	r0, r4
  3f61ac: 4619         	mov	r1, r3
  3f61ae: 2201         	movs	r2, #0x1
  3f61b0: f20b f8a8    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b150
  3f61b4: ab01         	add	r3, sp, #0x4
  3f61b6: 681b         	ldr	r3, [r3]
  3f61b8: f103 0210    	add.w	r2, r3, #0x10
  3f61bc: ab02         	add	r3, sp, #0x8
  3f61be: 2128         	movs	r1, #0x28
  3f61c0: 6019         	str	r1, [r3]
  3f61c2: ab02         	add	r3, sp, #0x8
  3f61c4: 4610         	mov	r0, r2
  3f61c6: 4619         	mov	r1, r3
  3f61c8: f002 f814    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x2028
  3f61cc: 4603         	mov	r3, r0
  3f61ce: 2201         	movs	r2, #0x1
  3f61d0: 601a         	str	r2, [r3]
  3f61d2: f8df 351c    	ldr.w	r3, [pc, #0x51c]        @ 0x3f66f0 <Sound::loadSoundBuffers()+0x17a0>
  3f61d6: 447b         	add	r3, pc
  3f61d8: 4618         	mov	r0, r3
  3f61da: f8df 3518    	ldr.w	r3, [pc, #0x518]        @ 0x3f66f4 <Sound::loadSoundBuffers()+0x17a4>
  3f61de: 447b         	add	r3, pc
  3f61e0: 4619         	mov	r1, r3
  3f61e2: f8df 3514    	ldr.w	r3, [pc, #0x514]        @ 0x3f66f8 <Sound::loadSoundBuffers()+0x17a8>
  3f61e6: 447b         	add	r3, pc
  3f61e8: 461a         	mov	r2, r3
  3f61ea: f1a3 fc91    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3922
  3f61ee: 4603         	mov	r3, r0
  3f61f0: 932c         	str	r3, [sp, #0xb0]
  3f61f2: ab01         	add	r3, sp, #0x4
  3f61f4: 681b         	ldr	r3, [r3]
  3f61f6: 685b         	ldr	r3, [r3, #0x4]
  3f61f8: 4618         	mov	r0, r3
  3f61fa: 992c         	ldr	r1, [sp, #0xb0]
  3f61fc: 2229         	movs	r2, #0x29
  3f61fe: f19e fe15    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19ec2a
  3f6202: f20a ff4f    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20ae9e
  3f6206: 4604         	mov	r4, r0
  3f6208: 982c         	ldr	r0, [sp, #0xb0]
  3f620a: f1a3 fb8d    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a371a
  3f620e: 4603         	mov	r3, r0
  3f6210: 4620         	mov	r0, r4
  3f6212: 4619         	mov	r1, r3
  3f6214: 2201         	movs	r2, #0x1
  3f6216: f20b f875    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b0ea
  3f621a: ab01         	add	r3, sp, #0x4
  3f621c: 681b         	ldr	r3, [r3]
  3f621e: f103 0210    	add.w	r2, r3, #0x10
  3f6222: ab02         	add	r3, sp, #0x8
  3f6224: 2129         	movs	r1, #0x29
  3f6226: 6019         	str	r1, [r3]
  3f6228: ab02         	add	r3, sp, #0x8
  3f622a: 4610         	mov	r0, r2
  3f622c: 4619         	mov	r1, r3
  3f622e: f001 ffe1    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1fc2
  3f6232: 4603         	mov	r3, r0
  3f6234: 2201         	movs	r2, #0x1
  3f6236: 601a         	str	r2, [r3]
  3f6238: f8df 34c0    	ldr.w	r3, [pc, #0x4c0]        @ 0x3f66fc <Sound::loadSoundBuffers()+0x17ac>
  3f623c: 447b         	add	r3, pc
  3f623e: 4618         	mov	r0, r3
  3f6240: f8df 34bc    	ldr.w	r3, [pc, #0x4bc]        @ 0x3f6700 <Sound::loadSoundBuffers()+0x17b0>
  3f6244: 447b         	add	r3, pc
  3f6246: 4619         	mov	r1, r3
  3f6248: f8df 34b8    	ldr.w	r3, [pc, #0x4b8]        @ 0x3f6704 <Sound::loadSoundBuffers()+0x17b4>
  3f624c: 447b         	add	r3, pc
  3f624e: 461a         	mov	r2, r3
  3f6250: f1a3 fc5e    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a38bc
  3f6254: 4603         	mov	r3, r0
  3f6256: 932d         	str	r3, [sp, #0xb4]
  3f6258: ab01         	add	r3, sp, #0x4
  3f625a: 681b         	ldr	r3, [r3]
  3f625c: 685b         	ldr	r3, [r3, #0x4]
  3f625e: 4618         	mov	r0, r3
  3f6260: 992d         	ldr	r1, [sp, #0xb4]
  3f6262: 222a         	movs	r2, #0x2a
  3f6264: f19e fde2    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19ebc4
  3f6268: f20a ff1c    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20ae38
  3f626c: 4604         	mov	r4, r0
  3f626e: 982d         	ldr	r0, [sp, #0xb4]
  3f6270: f1a3 fb5a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a36b4
  3f6274: 4603         	mov	r3, r0
  3f6276: 4620         	mov	r0, r4
  3f6278: 4619         	mov	r1, r3
  3f627a: 2201         	movs	r2, #0x1
  3f627c: f20b f842    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b084
  3f6280: ab01         	add	r3, sp, #0x4
  3f6282: 681b         	ldr	r3, [r3]
  3f6284: f103 0210    	add.w	r2, r3, #0x10
  3f6288: ab02         	add	r3, sp, #0x8
  3f628a: 212a         	movs	r1, #0x2a
  3f628c: 6019         	str	r1, [r3]
  3f628e: ab02         	add	r3, sp, #0x8
  3f6290: 4610         	mov	r0, r2
  3f6292: 4619         	mov	r1, r3
  3f6294: f001 ffae    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1f5c
  3f6298: 4603         	mov	r3, r0
  3f629a: 2201         	movs	r2, #0x1
  3f629c: 601a         	str	r2, [r3]
  3f629e: f8df 3468    	ldr.w	r3, [pc, #0x468]        @ 0x3f6708 <Sound::loadSoundBuffers()+0x17b8>
  3f62a2: 447b         	add	r3, pc
  3f62a4: 4618         	mov	r0, r3
  3f62a6: f8df 3464    	ldr.w	r3, [pc, #0x464]        @ 0x3f670c <Sound::loadSoundBuffers()+0x17bc>
  3f62aa: 447b         	add	r3, pc
  3f62ac: 4619         	mov	r1, r3
  3f62ae: f8df 3460    	ldr.w	r3, [pc, #0x460]        @ 0x3f6710 <Sound::loadSoundBuffers()+0x17c0>
  3f62b2: 447b         	add	r3, pc
  3f62b4: 461a         	mov	r2, r3
  3f62b6: f1a3 fc2b    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3856
  3f62ba: 4603         	mov	r3, r0
  3f62bc: 932e         	str	r3, [sp, #0xb8]
  3f62be: ab01         	add	r3, sp, #0x4
  3f62c0: 681b         	ldr	r3, [r3]
  3f62c2: 685b         	ldr	r3, [r3, #0x4]
  3f62c4: 4618         	mov	r0, r3
  3f62c6: 992e         	ldr	r1, [sp, #0xb8]
  3f62c8: 2261         	movs	r2, #0x61
  3f62ca: f19e fdaf    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19eb5e
  3f62ce: f20a fee9    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20add2
  3f62d2: 4604         	mov	r4, r0
  3f62d4: 982e         	ldr	r0, [sp, #0xb8]
  3f62d6: f1a3 fb27    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a364e
  3f62da: 4603         	mov	r3, r0
  3f62dc: 4620         	mov	r0, r4
  3f62de: 4619         	mov	r1, r3
  3f62e0: 2201         	movs	r2, #0x1
  3f62e2: f20b f80f    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20b01e
  3f62e6: ab01         	add	r3, sp, #0x4
  3f62e8: 681b         	ldr	r3, [r3]
  3f62ea: f103 0210    	add.w	r2, r3, #0x10
  3f62ee: ab02         	add	r3, sp, #0x8
  3f62f0: 2161         	movs	r1, #0x61
  3f62f2: 6019         	str	r1, [r3]
  3f62f4: ab02         	add	r3, sp, #0x8
  3f62f6: 4610         	mov	r0, r2
  3f62f8: 4619         	mov	r1, r3
  3f62fa: f001 ff7b    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1ef6
  3f62fe: 4603         	mov	r3, r0
  3f6300: 2201         	movs	r2, #0x1
  3f6302: 601a         	str	r2, [r3]
  3f6304: f8df 340c    	ldr.w	r3, [pc, #0x40c]        @ 0x3f6714 <Sound::loadSoundBuffers()+0x17c4>
  3f6308: 447b         	add	r3, pc
  3f630a: 4618         	mov	r0, r3
  3f630c: f8df 3408    	ldr.w	r3, [pc, #0x408]        @ 0x3f6718 <Sound::loadSoundBuffers()+0x17c8>
  3f6310: 447b         	add	r3, pc
  3f6312: 4619         	mov	r1, r3
  3f6314: f8df 3404    	ldr.w	r3, [pc, #0x404]        @ 0x3f671c <Sound::loadSoundBuffers()+0x17cc>
  3f6318: 447b         	add	r3, pc
  3f631a: 461a         	mov	r2, r3
  3f631c: f1a3 fbf8    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a37f0
  3f6320: 4603         	mov	r3, r0
  3f6322: 932f         	str	r3, [sp, #0xbc]
  3f6324: ab01         	add	r3, sp, #0x4
  3f6326: 681b         	ldr	r3, [r3]
  3f6328: 685b         	ldr	r3, [r3, #0x4]
  3f632a: 4618         	mov	r0, r3
  3f632c: 992f         	ldr	r1, [sp, #0xbc]
  3f632e: 222b         	movs	r2, #0x2b
  3f6330: f19e fd7c    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19eaf8
  3f6334: f20a feb6    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20ad6c
  3f6338: 4604         	mov	r4, r0
  3f633a: 982f         	ldr	r0, [sp, #0xbc]
  3f633c: f1a3 faf4    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a35e8
  3f6340: 4603         	mov	r3, r0
  3f6342: 4620         	mov	r0, r4
  3f6344: 4619         	mov	r1, r3
  3f6346: 2201         	movs	r2, #0x1
  3f6348: f20a ffdc    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20afb8
  3f634c: ab01         	add	r3, sp, #0x4
  3f634e: 681b         	ldr	r3, [r3]
  3f6350: f103 0210    	add.w	r2, r3, #0x10
  3f6354: ab02         	add	r3, sp, #0x8
  3f6356: 212b         	movs	r1, #0x2b
  3f6358: 6019         	str	r1, [r3]
  3f635a: ab02         	add	r3, sp, #0x8
  3f635c: 4610         	mov	r0, r2
  3f635e: 4619         	mov	r1, r3
  3f6360: f001 ff48    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1e90
  3f6364: 4603         	mov	r3, r0
  3f6366: 2201         	movs	r2, #0x1
  3f6368: 601a         	str	r2, [r3]
  3f636a: 4bed         	ldr	r3, [pc, #0x3b4]        @ 0x3f6720 <Sound::loadSoundBuffers()+0x17d0>
  3f636c: 447b         	add	r3, pc
  3f636e: 4618         	mov	r0, r3
  3f6370: 4bec         	ldr	r3, [pc, #0x3b0]        @ 0x3f6724 <Sound::loadSoundBuffers()+0x17d4>
  3f6372: 447b         	add	r3, pc
  3f6374: 4619         	mov	r1, r3
  3f6376: 4bec         	ldr	r3, [pc, #0x3b0]        @ 0x3f6728 <Sound::loadSoundBuffers()+0x17d8>
  3f6378: 447b         	add	r3, pc
  3f637a: 461a         	mov	r2, r3
  3f637c: f1a3 fbc8    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3790
  3f6380: 4603         	mov	r3, r0
  3f6382: 9330         	str	r3, [sp, #0xc0]
  3f6384: ab01         	add	r3, sp, #0x4
  3f6386: 681b         	ldr	r3, [r3]
  3f6388: 685b         	ldr	r3, [r3, #0x4]
  3f638a: 4618         	mov	r0, r3
  3f638c: 9930         	ldr	r1, [sp, #0xc0]
  3f638e: 225b         	movs	r2, #0x5b
  3f6390: f19e fd4c    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19ea98
  3f6394: f20a fe86    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20ad0c
  3f6398: 4604         	mov	r4, r0
  3f639a: 9830         	ldr	r0, [sp, #0xc0]
  3f639c: f1a3 fac4    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a3588
  3f63a0: 4603         	mov	r3, r0
  3f63a2: 4620         	mov	r0, r4
  3f63a4: 4619         	mov	r1, r3
  3f63a6: 2201         	movs	r2, #0x1
  3f63a8: f20a ffac    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20af58
  3f63ac: ab01         	add	r3, sp, #0x4
  3f63ae: 681b         	ldr	r3, [r3]
  3f63b0: f103 0210    	add.w	r2, r3, #0x10
  3f63b4: ab02         	add	r3, sp, #0x8
  3f63b6: 215b         	movs	r1, #0x5b
  3f63b8: 6019         	str	r1, [r3]
  3f63ba: ab02         	add	r3, sp, #0x8
  3f63bc: 4610         	mov	r0, r2
  3f63be: 4619         	mov	r1, r3
  3f63c0: f001 ff18    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1e30
  3f63c4: 4603         	mov	r3, r0
  3f63c6: 2201         	movs	r2, #0x1
  3f63c8: 601a         	str	r2, [r3]
  3f63ca: 4bd8         	ldr	r3, [pc, #0x360]        @ 0x3f672c <Sound::loadSoundBuffers()+0x17dc>
  3f63cc: 447b         	add	r3, pc
  3f63ce: 4618         	mov	r0, r3
  3f63d0: 4bd7         	ldr	r3, [pc, #0x35c]        @ 0x3f6730 <Sound::loadSoundBuffers()+0x17e0>
  3f63d2: 447b         	add	r3, pc
  3f63d4: 4619         	mov	r1, r3
  3f63d6: 4bd7         	ldr	r3, [pc, #0x35c]        @ 0x3f6734 <Sound::loadSoundBuffers()+0x17e4>
  3f63d8: 447b         	add	r3, pc
  3f63da: 461a         	mov	r2, r3
  3f63dc: f1a3 fb98    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3730
  3f63e0: 4603         	mov	r3, r0
  3f63e2: 9331         	str	r3, [sp, #0xc4]
  3f63e4: ab01         	add	r3, sp, #0x4
  3f63e6: 681b         	ldr	r3, [r3]
  3f63e8: 685b         	ldr	r3, [r3, #0x4]
  3f63ea: 4618         	mov	r0, r3
  3f63ec: 9931         	ldr	r1, [sp, #0xc4]
  3f63ee: 225c         	movs	r2, #0x5c
  3f63f0: f19e fd1c    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19ea38
  3f63f4: f20a fe56    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20acac
  3f63f8: 4604         	mov	r4, r0
  3f63fa: 9831         	ldr	r0, [sp, #0xc4]
  3f63fc: f1a3 fa94    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a3528
  3f6400: 4603         	mov	r3, r0
  3f6402: 4620         	mov	r0, r4
  3f6404: 4619         	mov	r1, r3
  3f6406: 2201         	movs	r2, #0x1
  3f6408: f20a ff7c    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20aef8
  3f640c: ab01         	add	r3, sp, #0x4
  3f640e: 681b         	ldr	r3, [r3]
  3f6410: f103 0210    	add.w	r2, r3, #0x10
  3f6414: ab02         	add	r3, sp, #0x8
  3f6416: 215c         	movs	r1, #0x5c
  3f6418: 6019         	str	r1, [r3]
  3f641a: ab02         	add	r3, sp, #0x8
  3f641c: 4610         	mov	r0, r2
  3f641e: 4619         	mov	r1, r3
  3f6420: f001 fee8    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1dd0
  3f6424: 4603         	mov	r3, r0
  3f6426: 2201         	movs	r2, #0x1
  3f6428: 601a         	str	r2, [r3]
  3f642a: 4bc3         	ldr	r3, [pc, #0x30c]        @ 0x3f6738 <Sound::loadSoundBuffers()+0x17e8>
  3f642c: 447b         	add	r3, pc
  3f642e: 4618         	mov	r0, r3
  3f6430: 4bc2         	ldr	r3, [pc, #0x308]        @ 0x3f673c <Sound::loadSoundBuffers()+0x17ec>
  3f6432: 447b         	add	r3, pc
  3f6434: 4619         	mov	r1, r3
  3f6436: 4bc2         	ldr	r3, [pc, #0x308]        @ 0x3f6740 <Sound::loadSoundBuffers()+0x17f0>
  3f6438: 447b         	add	r3, pc
  3f643a: 461a         	mov	r2, r3
  3f643c: f1a3 fb68    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a36d0
  3f6440: 4603         	mov	r3, r0
  3f6442: 9332         	str	r3, [sp, #0xc8]
  3f6444: ab01         	add	r3, sp, #0x4
  3f6446: 681b         	ldr	r3, [r3]
  3f6448: 685b         	ldr	r3, [r3, #0x4]
  3f644a: 4618         	mov	r0, r3
  3f644c: 9932         	ldr	r1, [sp, #0xc8]
  3f644e: 225d         	movs	r2, #0x5d
  3f6450: f19e fcec    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e9d8
  3f6454: f20a fe26    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20ac4c
  3f6458: 4604         	mov	r4, r0
  3f645a: 9832         	ldr	r0, [sp, #0xc8]
  3f645c: f1a3 fa64    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a34c8
  3f6460: 4603         	mov	r3, r0
  3f6462: 4620         	mov	r0, r4
  3f6464: 4619         	mov	r1, r3
  3f6466: 2201         	movs	r2, #0x1
  3f6468: f20a ff4c    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20ae98
  3f646c: ab01         	add	r3, sp, #0x4
  3f646e: 681b         	ldr	r3, [r3]
  3f6470: f103 0210    	add.w	r2, r3, #0x10
  3f6474: ab02         	add	r3, sp, #0x8
  3f6476: 215d         	movs	r1, #0x5d
  3f6478: 6019         	str	r1, [r3]
  3f647a: ab02         	add	r3, sp, #0x8
  3f647c: 4610         	mov	r0, r2
  3f647e: 4619         	mov	r1, r3
  3f6480: f001 feb8    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1d70
  3f6484: 4603         	mov	r3, r0
  3f6486: 2201         	movs	r2, #0x1
  3f6488: 601a         	str	r2, [r3]
  3f648a: 4bae         	ldr	r3, [pc, #0x2b8]        @ 0x3f6744 <Sound::loadSoundBuffers()+0x17f4>
  3f648c: 447b         	add	r3, pc
  3f648e: 4618         	mov	r0, r3
  3f6490: 4bad         	ldr	r3, [pc, #0x2b4]        @ 0x3f6748 <Sound::loadSoundBuffers()+0x17f8>
  3f6492: 447b         	add	r3, pc
  3f6494: 4619         	mov	r1, r3
  3f6496: 4bad         	ldr	r3, [pc, #0x2b4]        @ 0x3f674c <Sound::loadSoundBuffers()+0x17fc>
  3f6498: 447b         	add	r3, pc
  3f649a: 461a         	mov	r2, r3
  3f649c: f1a3 fb38    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3670
  3f64a0: 4603         	mov	r3, r0
  3f64a2: 9333         	str	r3, [sp, #0xcc]
  3f64a4: ab01         	add	r3, sp, #0x4
  3f64a6: 681b         	ldr	r3, [r3]
  3f64a8: 685b         	ldr	r3, [r3, #0x4]
  3f64aa: 4618         	mov	r0, r3
  3f64ac: 9933         	ldr	r1, [sp, #0xcc]
  3f64ae: 225e         	movs	r2, #0x5e
  3f64b0: f19e fcbc    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e978
  3f64b4: f20a fdf6    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20abec
  3f64b8: 4604         	mov	r4, r0
  3f64ba: 9833         	ldr	r0, [sp, #0xcc]
  3f64bc: f1a3 fa34    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a3468
  3f64c0: 4603         	mov	r3, r0
  3f64c2: 4620         	mov	r0, r4
  3f64c4: 4619         	mov	r1, r3
  3f64c6: 2201         	movs	r2, #0x1
  3f64c8: f20a ff1c    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20ae38
  3f64cc: ab01         	add	r3, sp, #0x4
  3f64ce: 681b         	ldr	r3, [r3]
  3f64d0: f103 0210    	add.w	r2, r3, #0x10
  3f64d4: ab02         	add	r3, sp, #0x8
  3f64d6: 215e         	movs	r1, #0x5e
  3f64d8: 6019         	str	r1, [r3]
  3f64da: ab02         	add	r3, sp, #0x8
  3f64dc: 4610         	mov	r0, r2
  3f64de: 4619         	mov	r1, r3
  3f64e0: f001 fe88    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1d10
  3f64e4: 4603         	mov	r3, r0
  3f64e6: 2201         	movs	r2, #0x1
  3f64e8: 601a         	str	r2, [r3]
  3f64ea: 4b99         	ldr	r3, [pc, #0x264]        @ 0x3f6750 <Sound::loadSoundBuffers()+0x1800>
  3f64ec: 447b         	add	r3, pc
  3f64ee: 4618         	mov	r0, r3
  3f64f0: 4b98         	ldr	r3, [pc, #0x260]        @ 0x3f6754 <Sound::loadSoundBuffers()+0x1804>
  3f64f2: 447b         	add	r3, pc
  3f64f4: 4619         	mov	r1, r3
  3f64f6: 4b98         	ldr	r3, [pc, #0x260]        @ 0x3f6758 <Sound::loadSoundBuffers()+0x1808>
  3f64f8: 447b         	add	r3, pc
  3f64fa: 461a         	mov	r2, r3
  3f64fc: f1a3 fb08    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3610
  3f6500: 4603         	mov	r3, r0
  3f6502: 9334         	str	r3, [sp, #0xd0]
  3f6504: ab01         	add	r3, sp, #0x4
  3f6506: 681b         	ldr	r3, [r3]
  3f6508: 685b         	ldr	r3, [r3, #0x4]
  3f650a: 4618         	mov	r0, r3
  3f650c: 9934         	ldr	r1, [sp, #0xd0]
  3f650e: 225f         	movs	r2, #0x5f
  3f6510: f19e fc8c    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e918
  3f6514: f20a fdc6    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20ab8c
  3f6518: 4604         	mov	r4, r0
  3f651a: 9834         	ldr	r0, [sp, #0xd0]
  3f651c: f1a3 fa04    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a3408
  3f6520: 4603         	mov	r3, r0
  3f6522: 4620         	mov	r0, r4
  3f6524: 4619         	mov	r1, r3
  3f6526: 2201         	movs	r2, #0x1
  3f6528: f20a feec    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20add8
  3f652c: ab01         	add	r3, sp, #0x4
  3f652e: 681b         	ldr	r3, [r3]
  3f6530: f103 0210    	add.w	r2, r3, #0x10
  3f6534: ab02         	add	r3, sp, #0x8
  3f6536: 215f         	movs	r1, #0x5f
  3f6538: 6019         	str	r1, [r3]
  3f653a: ab02         	add	r3, sp, #0x8
  3f653c: 4610         	mov	r0, r2
  3f653e: 4619         	mov	r1, r3
  3f6540: f001 fe58    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1cb0
  3f6544: 4603         	mov	r3, r0
  3f6546: 2201         	movs	r2, #0x1
  3f6548: 601a         	str	r2, [r3]
  3f654a: 4b84         	ldr	r3, [pc, #0x210]        @ 0x3f675c <Sound::loadSoundBuffers()+0x180c>
  3f654c: 447b         	add	r3, pc
  3f654e: 4618         	mov	r0, r3
  3f6550: 4b83         	ldr	r3, [pc, #0x20c]        @ 0x3f6760 <Sound::loadSoundBuffers()+0x1810>
  3f6552: 447b         	add	r3, pc
  3f6554: 4619         	mov	r1, r3
  3f6556: 4b83         	ldr	r3, [pc, #0x20c]        @ 0x3f6764 <Sound::loadSoundBuffers()+0x1814>
  3f6558: 447b         	add	r3, pc
  3f655a: 461a         	mov	r2, r3
  3f655c: f1a3 fad8    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a35b0
  3f6560: 4603         	mov	r3, r0
  3f6562: 9335         	str	r3, [sp, #0xd4]
  3f6564: ab01         	add	r3, sp, #0x4
  3f6566: 681b         	ldr	r3, [r3]
  3f6568: 685b         	ldr	r3, [r3, #0x4]
  3f656a: 4618         	mov	r0, r3
  3f656c: 9935         	ldr	r1, [sp, #0xd4]
  3f656e: 2260         	movs	r2, #0x60
  3f6570: f19e fc5c    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e8b8
  3f6574: f20a fd96    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20ab2c
  3f6578: 4604         	mov	r4, r0
  3f657a: 9835         	ldr	r0, [sp, #0xd4]
  3f657c: f1a3 f9d4    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a33a8
  3f6580: 4603         	mov	r3, r0
  3f6582: 4620         	mov	r0, r4
  3f6584: 4619         	mov	r1, r3
  3f6586: 2201         	movs	r2, #0x1
  3f6588: f20a febc    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20ad78
  3f658c: ab01         	add	r3, sp, #0x4
  3f658e: 681b         	ldr	r3, [r3]
  3f6590: f103 0210    	add.w	r2, r3, #0x10
  3f6594: ab02         	add	r3, sp, #0x8
  3f6596: 2160         	movs	r1, #0x60
  3f6598: 6019         	str	r1, [r3]
  3f659a: ab02         	add	r3, sp, #0x8
  3f659c: 4610         	mov	r0, r2
  3f659e: 4619         	mov	r1, r3
  3f65a0: f001 fe28    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1c50
  3f65a4: 4603         	mov	r3, r0
  3f65a6: 2201         	movs	r2, #0x1
  3f65a8: 601a         	str	r2, [r3]
  3f65aa: 4b6f         	ldr	r3, [pc, #0x1bc]        @ 0x3f6768 <Sound::loadSoundBuffers()+0x1818>
  3f65ac: 447b         	add	r3, pc
  3f65ae: 4618         	mov	r0, r3
  3f65b0: 4b6e         	ldr	r3, [pc, #0x1b8]        @ 0x3f676c <Sound::loadSoundBuffers()+0x181c>
  3f65b2: 447b         	add	r3, pc
  3f65b4: 4619         	mov	r1, r3
  3f65b6: 4b6e         	ldr	r3, [pc, #0x1b8]        @ 0x3f6770 <Sound::loadSoundBuffers()+0x1820>
  3f65b8: 447b         	add	r3, pc
  3f65ba: 461a         	mov	r2, r3
  3f65bc: f1a3 faa8    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3550
  3f65c0: 4603         	mov	r3, r0
  3f65c2: 9336         	str	r3, [sp, #0xd8]
  3f65c4: ab01         	add	r3, sp, #0x4
  3f65c6: 681b         	ldr	r3, [r3]
  3f65c8: 685b         	ldr	r3, [r3, #0x4]
  3f65ca: 4618         	mov	r0, r3
  3f65cc: 9936         	ldr	r1, [sp, #0xd8]
  3f65ce: 222c         	movs	r2, #0x2c
  3f65d0: f19e fc2c    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e858
  3f65d4: f20a fd66    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20aacc
  3f65d8: 4604         	mov	r4, r0
  3f65da: 9836         	ldr	r0, [sp, #0xd8]
  3f65dc: f1a3 f9a4    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a3348
  3f65e0: 4603         	mov	r3, r0
  3f65e2: 4620         	mov	r0, r4
  3f65e4: 4619         	mov	r1, r3
  3f65e6: 2201         	movs	r2, #0x1
  3f65e8: f20a fe8c    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20ad18
  3f65ec: ab01         	add	r3, sp, #0x4
  3f65ee: 681b         	ldr	r3, [r3]
  3f65f0: f103 0210    	add.w	r2, r3, #0x10
  3f65f4: ab02         	add	r3, sp, #0x8
  3f65f6: 212c         	movs	r1, #0x2c
  3f65f8: 6019         	str	r1, [r3]
  3f65fa: ab02         	add	r3, sp, #0x8
  3f65fc: 4610         	mov	r0, r2
  3f65fe: 4619         	mov	r1, r3
  3f6600: f001 fdf8    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1bf0
  3f6604: 4603         	mov	r3, r0
  3f6606: 2201         	movs	r2, #0x1
  3f6608: 601a         	str	r2, [r3]
  3f660a: 4b5a         	ldr	r3, [pc, #0x168]        @ 0x3f6774 <Sound::loadSoundBuffers()+0x1824>
  3f660c: 447b         	add	r3, pc
  3f660e: 4618         	mov	r0, r3
  3f6610: 4b59         	ldr	r3, [pc, #0x164]        @ 0x3f6778 <Sound::loadSoundBuffers()+0x1828>
  3f6612: 447b         	add	r3, pc
  3f6614: 4619         	mov	r1, r3
  3f6616: 4b59         	ldr	r3, [pc, #0x164]        @ 0x3f677c <Sound::loadSoundBuffers()+0x182c>
  3f6618: 447b         	add	r3, pc
  3f661a: 461a         	mov	r2, r3
  3f661c: f1a3 fa78    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a34f0
  3f6620: 4603         	mov	r3, r0
  3f6622: 9337         	str	r3, [sp, #0xdc]
  3f6624: ab01         	add	r3, sp, #0x4
  3f6626: 681b         	ldr	r3, [r3]
  3f6628: 685b         	ldr	r3, [r3, #0x4]
  3f662a: 4618         	mov	r0, r3
  3f662c: 9937         	ldr	r1, [sp, #0xdc]
  3f662e: 2232         	movs	r2, #0x32
  3f6630: f19e fbfc    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e7f8
  3f6634: f20a fd36    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20aa6c
  3f6638: e0a2         	b	0x3f6780 <Sound::loadSoundBuffers()+0x1830> @ imm = #0x144
  3f663a: bf00         	nop
  3f663c: 3184         	adds	r1, #0x84
  3f663e: 003e         	movs	r6, r7
  3f6640: 3258         	adds	r2, #0x58
  3f6642: 003e         	movs	r6, r7
  3f6644: 3188         	adds	r1, #0x88
  3f6646: 003e         	movs	r6, r7
  3f6648: 3118         	adds	r1, #0x18
  3f664a: 003e         	movs	r6, r7
  3f664c: 31f4         	adds	r1, #0xf4
  3f664e: 003e         	movs	r6, r7
  3f6650: 311c         	adds	r1, #0x1c
  3f6652: 003e         	movs	r6, r7
  3f6654: 30ac         	adds	r0, #0xac
  3f6656: 003e         	movs	r6, r7
  3f6658: 3190         	adds	r1, #0x90
  3f665a: 003e         	movs	r6, r7
  3f665c: 30b0         	adds	r0, #0xb0
  3f665e: 003e         	movs	r6, r7
  3f6660: 3040         	adds	r0, #0x40
  3f6662: 003e         	movs	r6, r7
  3f6664: 312c         	adds	r1, #0x2c
  3f6666: 003e         	movs	r6, r7
  3f6668: 3044         	adds	r0, #0x44
  3f666a: 003e         	movs	r6, r7
  3f666c: 2fd4         	cmp	r7, #0xd4
  3f666e: 003e         	movs	r6, r7
  3f6670: 30c8         	adds	r0, #0xc8
  3f6672: 003e         	movs	r6, r7
  3f6674: 2fd8         	cmp	r7, #0xd8
  3f6676: 003e         	movs	r6, r7
  3f6678: 2f68         	cmp	r7, #0x68
  3f667a: 003e         	movs	r6, r7
  3f667c: 3064         	adds	r0, #0x64
  3f667e: 003e         	movs	r6, r7
  3f6680: 2f6c         	cmp	r7, #0x6c
  3f6682: 003e         	movs	r6, r7
  3f6684: 2efc         	cmp	r6, #0xfc
  3f6686: 003e         	movs	r6, r7
  3f6688: 3000         	adds	r0, #0x0
  3f668a: 003e         	movs	r6, r7
  3f668c: 2f00         	cmp	r7, #0x0
  3f668e: 003e         	movs	r6, r7
  3f6690: 2e90         	cmp	r6, #0x90
  3f6692: 003e         	movs	r6, r7
  3f6694: 2f9c         	cmp	r7, #0x9c
  3f6696: 003e         	movs	r6, r7
  3f6698: 2e94         	cmp	r6, #0x94
  3f669a: 003e         	movs	r6, r7
  3f669c: 2e24         	cmp	r6, #0x24
  3f669e: 003e         	movs	r6, r7
  3f66a0: 2f34         	cmp	r7, #0x34
  3f66a2: 003e         	movs	r6, r7
  3f66a4: 2e28         	cmp	r6, #0x28
  3f66a6: 003e         	movs	r6, r7
  3f66a8: 2db8         	cmp	r5, #0xb8
  3f66aa: 003e         	movs	r6, r7
  3f66ac: 2ed0         	cmp	r6, #0xd0
  3f66ae: 003e         	movs	r6, r7
  3f66b0: 2dbc         	cmp	r5, #0xbc
  3f66b2: 003e         	movs	r6, r7
  3f66b4: 2d4c         	cmp	r5, #0x4c
  3f66b6: 003e         	movs	r6, r7
  3f66b8: 2e70         	cmp	r6, #0x70
  3f66ba: 003e         	movs	r6, r7
  3f66bc: 2d50         	cmp	r5, #0x50
  3f66be: 003e         	movs	r6, r7
  3f66c0: 2ce6         	cmp	r4, #0xe6
  3f66c2: 003e         	movs	r6, r7
  3f66c4: 2e12         	cmp	r6, #0x12
  3f66c6: 003e         	movs	r6, r7
  3f66c8: 2cea         	cmp	r4, #0xea
  3f66ca: 003e         	movs	r6, r7
  3f66cc: 2c80         	cmp	r4, #0x80
  3f66ce: 003e         	movs	r6, r7
  3f66d0: 2db0         	cmp	r5, #0xb0
  3f66d2: 003e         	movs	r6, r7
  3f66d4: 2c84         	cmp	r4, #0x84
  3f66d6: 003e         	movs	r6, r7
  3f66d8: 2c1a         	cmp	r4, #0x1a
  3f66da: 003e         	movs	r6, r7
  3f66dc: 2d52         	cmp	r5, #0x52
  3f66de: 003e         	movs	r6, r7
  3f66e0: 2c1e         	cmp	r4, #0x1e
  3f66e2: 003e         	movs	r6, r7
  3f66e4: 2bb4         	cmp	r3, #0xb4
  3f66e6: 003e         	movs	r6, r7
  3f66e8: 2cf4         	cmp	r4, #0xf4
  3f66ea: 003e         	movs	r6, r7
  3f66ec: 2bb8         	cmp	r3, #0xb8
  3f66ee: 003e         	movs	r6, r7
  3f66f0: 2b4e         	cmp	r3, #0x4e
  3f66f2: 003e         	movs	r6, r7
  3f66f4: 2c96         	cmp	r4, #0x96
  3f66f6: 003e         	movs	r6, r7
  3f66f8: 2b52         	cmp	r3, #0x52
  3f66fa: 003e         	movs	r6, r7
  3f66fc: 2ae8         	cmp	r2, #0xe8
  3f66fe: 003e         	movs	r6, r7
  3f6700: 2c38         	cmp	r4, #0x38
  3f6702: 003e         	movs	r6, r7
  3f6704: 2aec         	cmp	r2, #0xec
  3f6706: 003e         	movs	r6, r7
  3f6708: 2a82         	cmp	r2, #0x82
  3f670a: 003e         	movs	r6, r7
  3f670c: 2bda         	cmp	r3, #0xda
  3f670e: 003e         	movs	r6, r7
  3f6710: 2a86         	cmp	r2, #0x86
  3f6712: 003e         	movs	r6, r7
  3f6714: 2a1c         	cmp	r2, #0x1c
  3f6716: 003e         	movs	r6, r7
  3f6718: 2b7c         	cmp	r3, #0x7c
  3f671a: 003e         	movs	r6, r7
  3f671c: 2a20         	cmp	r2, #0x20
  3f671e: 003e         	movs	r6, r7
  3f6720: 29b8         	cmp	r1, #0xb8
  3f6722: 003e         	movs	r6, r7
  3f6724: 2b22         	cmp	r3, #0x22
  3f6726: 003e         	movs	r6, r7
  3f6728: 29c0         	cmp	r1, #0xc0
  3f672a: 003e         	movs	r6, r7
  3f672c: 2958         	cmp	r1, #0x58
  3f672e: 003e         	movs	r6, r7
  3f6730: 2aca         	cmp	r2, #0xca
  3f6732: 003e         	movs	r6, r7
  3f6734: 2960         	cmp	r1, #0x60
  3f6736: 003e         	movs	r6, r7
  3f6738: 28f8         	cmp	r0, #0xf8
  3f673a: 003e         	movs	r6, r7
  3f673c: 2a72         	cmp	r2, #0x72
  3f673e: 003e         	movs	r6, r7
  3f6740: 2900         	cmp	r1, #0x0
  3f6742: 003e         	movs	r6, r7
  3f6744: 2898         	cmp	r0, #0x98
  3f6746: 003e         	movs	r6, r7
  3f6748: 2a1a         	cmp	r2, #0x1a
  3f674a: 003e         	movs	r6, r7
  3f674c: 28a0         	cmp	r0, #0xa0
  3f674e: 003e         	movs	r6, r7
  3f6750: 2838         	cmp	r0, #0x38
  3f6752: 003e         	movs	r6, r7
  3f6754: 29c2         	cmp	r1, #0xc2
  3f6756: 003e         	movs	r6, r7
  3f6758: 2840         	cmp	r0, #0x40
  3f675a: 003e         	movs	r6, r7
  3f675c: 27d8         	movs	r7, #0xd8
  3f675e: 003e         	movs	r6, r7
  3f6760: 296e         	cmp	r1, #0x6e
  3f6762: 003e         	movs	r6, r7
  3f6764: 27e0         	movs	r7, #0xe0
  3f6766: 003e         	movs	r6, r7
  3f6768: 2778         	movs	r7, #0x78
  3f676a: 003e         	movs	r6, r7
  3f676c: 2912         	cmp	r1, #0x12
  3f676e: 003e         	movs	r6, r7
  3f6770: 2780         	movs	r7, #0x80
  3f6772: 003e         	movs	r6, r7
  3f6774: 2718         	movs	r7, #0x18
  3f6776: 003e         	movs	r6, r7
  3f6778: 28ba         	cmp	r0, #0xba
  3f677a: 003e         	movs	r6, r7
  3f677c: 2720         	movs	r7, #0x20
  3f677e: 003e         	movs	r6, r7
  3f6780: 4604         	mov	r4, r0
  3f6782: 9837         	ldr	r0, [sp, #0xdc]
  3f6784: f1a3 f8d0    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a31a0
  3f6788: 4603         	mov	r3, r0
  3f678a: 4620         	mov	r0, r4
  3f678c: 4619         	mov	r1, r3
  3f678e: 2201         	movs	r2, #0x1
  3f6790: f20a fdb8    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20ab70
  3f6794: ab01         	add	r3, sp, #0x4
  3f6796: 681b         	ldr	r3, [r3]
  3f6798: f103 0210    	add.w	r2, r3, #0x10
  3f679c: ab02         	add	r3, sp, #0x8
  3f679e: 2132         	movs	r1, #0x32
  3f67a0: 6019         	str	r1, [r3]
  3f67a2: ab02         	add	r3, sp, #0x8
  3f67a4: 4610         	mov	r0, r2
  3f67a6: 4619         	mov	r1, r3
  3f67a8: f001 fd24    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1a48
  3f67ac: 4603         	mov	r3, r0
  3f67ae: 2201         	movs	r2, #0x1
  3f67b0: 601a         	str	r2, [r3]
  3f67b2: f8df 3aac    	ldr.w	r3, [pc, #0xaac]        @ 0x3f7260 <Sound::loadSoundBuffers()+0x2310>
  3f67b6: 447b         	add	r3, pc
  3f67b8: 4618         	mov	r0, r3
  3f67ba: f8df 3aa8    	ldr.w	r3, [pc, #0xaa8]        @ 0x3f7264 <Sound::loadSoundBuffers()+0x2314>
  3f67be: 447b         	add	r3, pc
  3f67c0: 4619         	mov	r1, r3
  3f67c2: f8df 3aa4    	ldr.w	r3, [pc, #0xaa4]        @ 0x3f7268 <Sound::loadSoundBuffers()+0x2318>
  3f67c6: 447b         	add	r3, pc
  3f67c8: 461a         	mov	r2, r3
  3f67ca: f1a3 f9a1    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3342
  3f67ce: 4603         	mov	r3, r0
  3f67d0: 9338         	str	r3, [sp, #0xe0]
  3f67d2: ab01         	add	r3, sp, #0x4
  3f67d4: 681b         	ldr	r3, [r3]
  3f67d6: 685b         	ldr	r3, [r3, #0x4]
  3f67d8: 4618         	mov	r0, r3
  3f67da: 9938         	ldr	r1, [sp, #0xe0]
  3f67dc: 2225         	movs	r2, #0x25
  3f67de: f19e fb25    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e64a
  3f67e2: f20a fc5f    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a8be
  3f67e6: 4604         	mov	r4, r0
  3f67e8: 9838         	ldr	r0, [sp, #0xe0]
  3f67ea: f1a3 f89d    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a313a
  3f67ee: 4603         	mov	r3, r0
  3f67f0: 4620         	mov	r0, r4
  3f67f2: 4619         	mov	r1, r3
  3f67f4: 2202         	movs	r2, #0x2
  3f67f6: f20a fd85    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20ab0a
  3f67fa: ab01         	add	r3, sp, #0x4
  3f67fc: 681b         	ldr	r3, [r3]
  3f67fe: f103 0210    	add.w	r2, r3, #0x10
  3f6802: ab02         	add	r3, sp, #0x8
  3f6804: 2125         	movs	r1, #0x25
  3f6806: 6019         	str	r1, [r3]
  3f6808: ab02         	add	r3, sp, #0x8
  3f680a: 4610         	mov	r0, r2
  3f680c: 4619         	mov	r1, r3
  3f680e: f001 fcf1    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x19e2
  3f6812: 4603         	mov	r3, r0
  3f6814: 2202         	movs	r2, #0x2
  3f6816: 601a         	str	r2, [r3]
  3f6818: f8df 3a50    	ldr.w	r3, [pc, #0xa50]        @ 0x3f726c <Sound::loadSoundBuffers()+0x231c>
  3f681c: 447b         	add	r3, pc
  3f681e: 4618         	mov	r0, r3
  3f6820: f8df 3a4c    	ldr.w	r3, [pc, #0xa4c]        @ 0x3f7270 <Sound::loadSoundBuffers()+0x2320>
  3f6824: 447b         	add	r3, pc
  3f6826: 4619         	mov	r1, r3
  3f6828: f8df 3a48    	ldr.w	r3, [pc, #0xa48]        @ 0x3f7274 <Sound::loadSoundBuffers()+0x2324>
  3f682c: 447b         	add	r3, pc
  3f682e: 461a         	mov	r2, r3
  3f6830: f1a3 f96e    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a32dc
  3f6834: 4603         	mov	r3, r0
  3f6836: 9339         	str	r3, [sp, #0xe4]
  3f6838: ab01         	add	r3, sp, #0x4
  3f683a: 681b         	ldr	r3, [r3]
  3f683c: 685b         	ldr	r3, [r3, #0x4]
  3f683e: 4618         	mov	r0, r3
  3f6840: 9939         	ldr	r1, [sp, #0xe4]
  3f6842: 2226         	movs	r2, #0x26
  3f6844: f19e faf2    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e5e4
  3f6848: f20a fc2c    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a858
  3f684c: 4604         	mov	r4, r0
  3f684e: 9839         	ldr	r0, [sp, #0xe4]
  3f6850: f1a3 f86a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a30d4
  3f6854: 4603         	mov	r3, r0
  3f6856: 4620         	mov	r0, r4
  3f6858: 4619         	mov	r1, r3
  3f685a: 2202         	movs	r2, #0x2
  3f685c: f20a fd52    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20aaa4
  3f6860: ab01         	add	r3, sp, #0x4
  3f6862: 681b         	ldr	r3, [r3]
  3f6864: f103 0210    	add.w	r2, r3, #0x10
  3f6868: ab02         	add	r3, sp, #0x8
  3f686a: 2126         	movs	r1, #0x26
  3f686c: 6019         	str	r1, [r3]
  3f686e: ab02         	add	r3, sp, #0x8
  3f6870: 4610         	mov	r0, r2
  3f6872: 4619         	mov	r1, r3
  3f6874: f001 fcbe    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x197c
  3f6878: 4603         	mov	r3, r0
  3f687a: 2202         	movs	r2, #0x2
  3f687c: 601a         	str	r2, [r3]
  3f687e: f8df 39f8    	ldr.w	r3, [pc, #0x9f8]        @ 0x3f7278 <Sound::loadSoundBuffers()+0x2328>
  3f6882: 447b         	add	r3, pc
  3f6884: 4618         	mov	r0, r3
  3f6886: f8df 39f4    	ldr.w	r3, [pc, #0x9f4]        @ 0x3f727c <Sound::loadSoundBuffers()+0x232c>
  3f688a: 447b         	add	r3, pc
  3f688c: 4619         	mov	r1, r3
  3f688e: f8df 39f0    	ldr.w	r3, [pc, #0x9f0]        @ 0x3f7280 <Sound::loadSoundBuffers()+0x2330>
  3f6892: 447b         	add	r3, pc
  3f6894: 461a         	mov	r2, r3
  3f6896: f1a3 f93b    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3276
  3f689a: 4603         	mov	r3, r0
  3f689c: 933a         	str	r3, [sp, #0xe8]
  3f689e: ab01         	add	r3, sp, #0x4
  3f68a0: 681b         	ldr	r3, [r3]
  3f68a2: 685b         	ldr	r3, [r3, #0x4]
  3f68a4: 4618         	mov	r0, r3
  3f68a6: 993a         	ldr	r1, [sp, #0xe8]
  3f68a8: 2227         	movs	r2, #0x27
  3f68aa: f19e fabf    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e57e
  3f68ae: f20a fbf9    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a7f2
  3f68b2: 4604         	mov	r4, r0
  3f68b4: 983a         	ldr	r0, [sp, #0xe8]
  3f68b6: f1a3 f837    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a306e
  3f68ba: 4603         	mov	r3, r0
  3f68bc: 4620         	mov	r0, r4
  3f68be: 4619         	mov	r1, r3
  3f68c0: 2202         	movs	r2, #0x2
  3f68c2: f20a fd1f    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20aa3e
  3f68c6: ab01         	add	r3, sp, #0x4
  3f68c8: 681b         	ldr	r3, [r3]
  3f68ca: f103 0210    	add.w	r2, r3, #0x10
  3f68ce: ab02         	add	r3, sp, #0x8
  3f68d0: 2127         	movs	r1, #0x27
  3f68d2: 6019         	str	r1, [r3]
  3f68d4: ab02         	add	r3, sp, #0x8
  3f68d6: 4610         	mov	r0, r2
  3f68d8: 4619         	mov	r1, r3
  3f68da: f001 fc8b    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1916
  3f68de: 4603         	mov	r3, r0
  3f68e0: 2202         	movs	r2, #0x2
  3f68e2: 601a         	str	r2, [r3]
  3f68e4: f8df 399c    	ldr.w	r3, [pc, #0x99c]        @ 0x3f7284 <Sound::loadSoundBuffers()+0x2334>
  3f68e8: 447b         	add	r3, pc
  3f68ea: 4618         	mov	r0, r3
  3f68ec: f8df 3998    	ldr.w	r3, [pc, #0x998]        @ 0x3f7288 <Sound::loadSoundBuffers()+0x2338>
  3f68f0: 447b         	add	r3, pc
  3f68f2: 4619         	mov	r1, r3
  3f68f4: f8df 3994    	ldr.w	r3, [pc, #0x994]        @ 0x3f728c <Sound::loadSoundBuffers()+0x233c>
  3f68f8: 447b         	add	r3, pc
  3f68fa: 461a         	mov	r2, r3
  3f68fc: f1a3 f908    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3210
  3f6900: 4603         	mov	r3, r0
  3f6902: 933b         	str	r3, [sp, #0xec]
  3f6904: ab01         	add	r3, sp, #0x4
  3f6906: 681b         	ldr	r3, [r3]
  3f6908: 685b         	ldr	r3, [r3, #0x4]
  3f690a: 4618         	mov	r0, r3
  3f690c: 993b         	ldr	r1, [sp, #0xec]
  3f690e: 2224         	movs	r2, #0x24
  3f6910: f19e fa8c    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e518
  3f6914: f20a fbc6    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a78c
  3f6918: 4604         	mov	r4, r0
  3f691a: 983b         	ldr	r0, [sp, #0xec]
  3f691c: f1a3 f804    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a3008
  3f6920: 4603         	mov	r3, r0
  3f6922: 4620         	mov	r0, r4
  3f6924: 4619         	mov	r1, r3
  3f6926: 2203         	movs	r2, #0x3
  3f6928: f20a fcec    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a9d8
  3f692c: ab01         	add	r3, sp, #0x4
  3f692e: 681b         	ldr	r3, [r3]
  3f6930: f103 0210    	add.w	r2, r3, #0x10
  3f6934: ab02         	add	r3, sp, #0x8
  3f6936: 2124         	movs	r1, #0x24
  3f6938: 6019         	str	r1, [r3]
  3f693a: ab02         	add	r3, sp, #0x8
  3f693c: 4610         	mov	r0, r2
  3f693e: 4619         	mov	r1, r3
  3f6940: f001 fc58    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x18b0
  3f6944: 4603         	mov	r3, r0
  3f6946: 2203         	movs	r2, #0x3
  3f6948: 601a         	str	r2, [r3]
  3f694a: f8df 3944    	ldr.w	r3, [pc, #0x944]        @ 0x3f7290 <Sound::loadSoundBuffers()+0x2340>
  3f694e: 447b         	add	r3, pc
  3f6950: 4618         	mov	r0, r3
  3f6952: f8df 3940    	ldr.w	r3, [pc, #0x940]        @ 0x3f7294 <Sound::loadSoundBuffers()+0x2344>
  3f6956: 447b         	add	r3, pc
  3f6958: 4619         	mov	r1, r3
  3f695a: f8df 393c    	ldr.w	r3, [pc, #0x93c]        @ 0x3f7298 <Sound::loadSoundBuffers()+0x2348>
  3f695e: 447b         	add	r3, pc
  3f6960: 461a         	mov	r2, r3
  3f6962: f1a3 f8d5    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a31aa
  3f6966: 4603         	mov	r3, r0
  3f6968: 933c         	str	r3, [sp, #0xf0]
  3f696a: ab01         	add	r3, sp, #0x4
  3f696c: 681b         	ldr	r3, [r3]
  3f696e: 685b         	ldr	r3, [r3, #0x4]
  3f6970: 4618         	mov	r0, r3
  3f6972: 993c         	ldr	r1, [sp, #0xf0]
  3f6974: 2223         	movs	r2, #0x23
  3f6976: f19e fa59    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e4b2
  3f697a: f20a fb93    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a726
  3f697e: 4604         	mov	r4, r0
  3f6980: 983c         	ldr	r0, [sp, #0xf0]
  3f6982: f1a2 ffd1    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2fa2
  3f6986: 4603         	mov	r3, r0
  3f6988: 4620         	mov	r0, r4
  3f698a: 4619         	mov	r1, r3
  3f698c: 2200         	movs	r2, #0x0
  3f698e: f20a fcb9    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a972
  3f6992: ab01         	add	r3, sp, #0x4
  3f6994: 681b         	ldr	r3, [r3]
  3f6996: f103 0210    	add.w	r2, r3, #0x10
  3f699a: ab02         	add	r3, sp, #0x8
  3f699c: 2123         	movs	r1, #0x23
  3f699e: 6019         	str	r1, [r3]
  3f69a0: ab02         	add	r3, sp, #0x8
  3f69a2: 4610         	mov	r0, r2
  3f69a4: 4619         	mov	r1, r3
  3f69a6: f001 fc25    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x184a
  3f69aa: 4603         	mov	r3, r0
  3f69ac: 2200         	movs	r2, #0x0
  3f69ae: 601a         	str	r2, [r3]
  3f69b0: f8df 38e8    	ldr.w	r3, [pc, #0x8e8]        @ 0x3f729c <Sound::loadSoundBuffers()+0x234c>
  3f69b4: 447b         	add	r3, pc
  3f69b6: 4618         	mov	r0, r3
  3f69b8: f8df 38e4    	ldr.w	r3, [pc, #0x8e4]        @ 0x3f72a0 <Sound::loadSoundBuffers()+0x2350>
  3f69bc: 447b         	add	r3, pc
  3f69be: 4619         	mov	r1, r3
  3f69c0: f8df 38e0    	ldr.w	r3, [pc, #0x8e0]        @ 0x3f72a4 <Sound::loadSoundBuffers()+0x2354>
  3f69c4: 447b         	add	r3, pc
  3f69c6: 461a         	mov	r2, r3
  3f69c8: f1a3 f8a2    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3144
  3f69cc: 4603         	mov	r3, r0
  3f69ce: 933d         	str	r3, [sp, #0xf4]
  3f69d0: ab01         	add	r3, sp, #0x4
  3f69d2: 681b         	ldr	r3, [r3]
  3f69d4: 685b         	ldr	r3, [r3, #0x4]
  3f69d6: 4618         	mov	r0, r3
  3f69d8: 993d         	ldr	r1, [sp, #0xf4]
  3f69da: 225a         	movs	r2, #0x5a
  3f69dc: f19e fa26    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e44c
  3f69e0: f20a fb60    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a6c0
  3f69e4: 4604         	mov	r4, r0
  3f69e6: 983d         	ldr	r0, [sp, #0xf4]
  3f69e8: f1a2 ff9e    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2f3c
  3f69ec: 4603         	mov	r3, r0
  3f69ee: 4620         	mov	r0, r4
  3f69f0: 4619         	mov	r1, r3
  3f69f2: 2202         	movs	r2, #0x2
  3f69f4: f20a fc86    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a90c
  3f69f8: ab01         	add	r3, sp, #0x4
  3f69fa: 681b         	ldr	r3, [r3]
  3f69fc: f103 0210    	add.w	r2, r3, #0x10
  3f6a00: ab02         	add	r3, sp, #0x8
  3f6a02: 215a         	movs	r1, #0x5a
  3f6a04: 6019         	str	r1, [r3]
  3f6a06: ab02         	add	r3, sp, #0x8
  3f6a08: 4610         	mov	r0, r2
  3f6a0a: 4619         	mov	r1, r3
  3f6a0c: f001 fbf2    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x17e4
  3f6a10: 4603         	mov	r3, r0
  3f6a12: 2202         	movs	r2, #0x2
  3f6a14: 601a         	str	r2, [r3]
  3f6a16: f8df 3890    	ldr.w	r3, [pc, #0x890]        @ 0x3f72a8 <Sound::loadSoundBuffers()+0x2358>
  3f6a1a: 447b         	add	r3, pc
  3f6a1c: 4618         	mov	r0, r3
  3f6a1e: f8df 388c    	ldr.w	r3, [pc, #0x88c]        @ 0x3f72ac <Sound::loadSoundBuffers()+0x235c>
  3f6a22: 447b         	add	r3, pc
  3f6a24: 4619         	mov	r1, r3
  3f6a26: f8df 3888    	ldr.w	r3, [pc, #0x888]        @ 0x3f72b0 <Sound::loadSoundBuffers()+0x2360>
  3f6a2a: 447b         	add	r3, pc
  3f6a2c: 461a         	mov	r2, r3
  3f6a2e: f1a3 f86f    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a30de
  3f6a32: 4603         	mov	r3, r0
  3f6a34: 933e         	str	r3, [sp, #0xf8]
  3f6a36: ab01         	add	r3, sp, #0x4
  3f6a38: 681b         	ldr	r3, [r3]
  3f6a3a: 685b         	ldr	r3, [r3, #0x4]
  3f6a3c: 4618         	mov	r0, r3
  3f6a3e: 993e         	ldr	r1, [sp, #0xf8]
  3f6a40: 2233         	movs	r2, #0x33
  3f6a42: f19e f9f3    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e3e6
  3f6a46: f20a fb2d    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a65a
  3f6a4a: 4604         	mov	r4, r0
  3f6a4c: 983e         	ldr	r0, [sp, #0xf8]
  3f6a4e: f1a2 ff6b    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2ed6
  3f6a52: 4603         	mov	r3, r0
  3f6a54: 4620         	mov	r0, r4
  3f6a56: 4619         	mov	r1, r3
  3f6a58: 2202         	movs	r2, #0x2
  3f6a5a: f20a fc53    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a8a6
  3f6a5e: ab01         	add	r3, sp, #0x4
  3f6a60: 681b         	ldr	r3, [r3]
  3f6a62: f103 0210    	add.w	r2, r3, #0x10
  3f6a66: ab02         	add	r3, sp, #0x8
  3f6a68: 2133         	movs	r1, #0x33
  3f6a6a: 6019         	str	r1, [r3]
  3f6a6c: ab02         	add	r3, sp, #0x8
  3f6a6e: 4610         	mov	r0, r2
  3f6a70: 4619         	mov	r1, r3
  3f6a72: f001 fbbf    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x177e
  3f6a76: 4603         	mov	r3, r0
  3f6a78: 2202         	movs	r2, #0x2
  3f6a7a: 601a         	str	r2, [r3]
  3f6a7c: f8df 3834    	ldr.w	r3, [pc, #0x834]        @ 0x3f72b4 <Sound::loadSoundBuffers()+0x2364>
  3f6a80: 447b         	add	r3, pc
  3f6a82: 4618         	mov	r0, r3
  3f6a84: f8df 3830    	ldr.w	r3, [pc, #0x830]        @ 0x3f72b8 <Sound::loadSoundBuffers()+0x2368>
  3f6a88: 447b         	add	r3, pc
  3f6a8a: 4619         	mov	r1, r3
  3f6a8c: f8df 382c    	ldr.w	r3, [pc, #0x82c]        @ 0x3f72bc <Sound::loadSoundBuffers()+0x236c>
  3f6a90: 447b         	add	r3, pc
  3f6a92: 461a         	mov	r2, r3
  3f6a94: f1a3 f83c    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3078
  3f6a98: 4603         	mov	r3, r0
  3f6a9a: 933f         	str	r3, [sp, #0xfc]
  3f6a9c: ab01         	add	r3, sp, #0x4
  3f6a9e: 681b         	ldr	r3, [r3]
  3f6aa0: 685b         	ldr	r3, [r3, #0x4]
  3f6aa2: 4618         	mov	r0, r3
  3f6aa4: 993f         	ldr	r1, [sp, #0xfc]
  3f6aa6: 2234         	movs	r2, #0x34
  3f6aa8: f19e f9c0    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e380
  3f6aac: f20a fafa    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a5f4
  3f6ab0: 4604         	mov	r4, r0
  3f6ab2: 983f         	ldr	r0, [sp, #0xfc]
  3f6ab4: f1a2 ff38    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2e70
  3f6ab8: 4603         	mov	r3, r0
  3f6aba: 4620         	mov	r0, r4
  3f6abc: 4619         	mov	r1, r3
  3f6abe: 2202         	movs	r2, #0x2
  3f6ac0: f20a fc20    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a840
  3f6ac4: ab01         	add	r3, sp, #0x4
  3f6ac6: 681b         	ldr	r3, [r3]
  3f6ac8: f103 0210    	add.w	r2, r3, #0x10
  3f6acc: ab02         	add	r3, sp, #0x8
  3f6ace: 2134         	movs	r1, #0x34
  3f6ad0: 6019         	str	r1, [r3]
  3f6ad2: ab02         	add	r3, sp, #0x8
  3f6ad4: 4610         	mov	r0, r2
  3f6ad6: 4619         	mov	r1, r3
  3f6ad8: f001 fb8c    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1718
  3f6adc: 4603         	mov	r3, r0
  3f6ade: 2202         	movs	r2, #0x2
  3f6ae0: 601a         	str	r2, [r3]
  3f6ae2: f8df 37dc    	ldr.w	r3, [pc, #0x7dc]        @ 0x3f72c0 <Sound::loadSoundBuffers()+0x2370>
  3f6ae6: 447b         	add	r3, pc
  3f6ae8: 4618         	mov	r0, r3
  3f6aea: f8df 37d8    	ldr.w	r3, [pc, #0x7d8]        @ 0x3f72c4 <Sound::loadSoundBuffers()+0x2374>
  3f6aee: 447b         	add	r3, pc
  3f6af0: 4619         	mov	r1, r3
  3f6af2: f8df 37d4    	ldr.w	r3, [pc, #0x7d4]        @ 0x3f72c8 <Sound::loadSoundBuffers()+0x2378>
  3f6af6: 447b         	add	r3, pc
  3f6af8: 461a         	mov	r2, r3
  3f6afa: f1a3 f809    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a3012
  3f6afe: 4603         	mov	r3, r0
  3f6b00: 9340         	str	r3, [sp, #0x100]
  3f6b02: ab01         	add	r3, sp, #0x4
  3f6b04: 681b         	ldr	r3, [r3]
  3f6b06: 685b         	ldr	r3, [r3, #0x4]
  3f6b08: 4618         	mov	r0, r3
  3f6b0a: 9940         	ldr	r1, [sp, #0x100]
  3f6b0c: 2235         	movs	r2, #0x35
  3f6b0e: f19e f98d    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e31a
  3f6b12: f20a fac7    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a58e
  3f6b16: 4604         	mov	r4, r0
  3f6b18: 9840         	ldr	r0, [sp, #0x100]
  3f6b1a: f1a2 ff05    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2e0a
  3f6b1e: 4603         	mov	r3, r0
  3f6b20: 4620         	mov	r0, r4
  3f6b22: 4619         	mov	r1, r3
  3f6b24: 2202         	movs	r2, #0x2
  3f6b26: f20a fbed    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a7da
  3f6b2a: ab01         	add	r3, sp, #0x4
  3f6b2c: 681b         	ldr	r3, [r3]
  3f6b2e: f103 0210    	add.w	r2, r3, #0x10
  3f6b32: ab02         	add	r3, sp, #0x8
  3f6b34: 2135         	movs	r1, #0x35
  3f6b36: 6019         	str	r1, [r3]
  3f6b38: ab02         	add	r3, sp, #0x8
  3f6b3a: 4610         	mov	r0, r2
  3f6b3c: 4619         	mov	r1, r3
  3f6b3e: f001 fb59    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x16b2
  3f6b42: 4603         	mov	r3, r0
  3f6b44: 2202         	movs	r2, #0x2
  3f6b46: 601a         	str	r2, [r3]
  3f6b48: f8df 3780    	ldr.w	r3, [pc, #0x780]        @ 0x3f72cc <Sound::loadSoundBuffers()+0x237c>
  3f6b4c: 447b         	add	r3, pc
  3f6b4e: 4618         	mov	r0, r3
  3f6b50: f8df 377c    	ldr.w	r3, [pc, #0x77c]        @ 0x3f72d0 <Sound::loadSoundBuffers()+0x2380>
  3f6b54: 447b         	add	r3, pc
  3f6b56: 4619         	mov	r1, r3
  3f6b58: f8df 3778    	ldr.w	r3, [pc, #0x778]        @ 0x3f72d4 <Sound::loadSoundBuffers()+0x2384>
  3f6b5c: 447b         	add	r3, pc
  3f6b5e: 461a         	mov	r2, r3
  3f6b60: f1a2 ffd6    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2fac
  3f6b64: 4603         	mov	r3, r0
  3f6b66: 9341         	str	r3, [sp, #0x104]
  3f6b68: ab01         	add	r3, sp, #0x4
  3f6b6a: 681b         	ldr	r3, [r3]
  3f6b6c: 685b         	ldr	r3, [r3, #0x4]
  3f6b6e: 4618         	mov	r0, r3
  3f6b70: 9941         	ldr	r1, [sp, #0x104]
  3f6b72: 2236         	movs	r2, #0x36
  3f6b74: f19e f95a    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e2b4
  3f6b78: f20a fa94    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a528
  3f6b7c: 4604         	mov	r4, r0
  3f6b7e: 9841         	ldr	r0, [sp, #0x104]
  3f6b80: f1a2 fed2    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2da4
  3f6b84: 4603         	mov	r3, r0
  3f6b86: 4620         	mov	r0, r4
  3f6b88: 4619         	mov	r1, r3
  3f6b8a: 2202         	movs	r2, #0x2
  3f6b8c: f20a fbba    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a774
  3f6b90: ab01         	add	r3, sp, #0x4
  3f6b92: 681b         	ldr	r3, [r3]
  3f6b94: f103 0210    	add.w	r2, r3, #0x10
  3f6b98: ab02         	add	r3, sp, #0x8
  3f6b9a: 2136         	movs	r1, #0x36
  3f6b9c: 6019         	str	r1, [r3]
  3f6b9e: ab02         	add	r3, sp, #0x8
  3f6ba0: 4610         	mov	r0, r2
  3f6ba2: 4619         	mov	r1, r3
  3f6ba4: f001 fb26    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x164c
  3f6ba8: 4603         	mov	r3, r0
  3f6baa: 2202         	movs	r2, #0x2
  3f6bac: 601a         	str	r2, [r3]
  3f6bae: f8df 3728    	ldr.w	r3, [pc, #0x728]        @ 0x3f72d8 <Sound::loadSoundBuffers()+0x2388>
  3f6bb2: 447b         	add	r3, pc
  3f6bb4: 4618         	mov	r0, r3
  3f6bb6: f8df 3724    	ldr.w	r3, [pc, #0x724]        @ 0x3f72dc <Sound::loadSoundBuffers()+0x238c>
  3f6bba: 447b         	add	r3, pc
  3f6bbc: 4619         	mov	r1, r3
  3f6bbe: f8df 3720    	ldr.w	r3, [pc, #0x720]        @ 0x3f72e0 <Sound::loadSoundBuffers()+0x2390>
  3f6bc2: 447b         	add	r3, pc
  3f6bc4: 461a         	mov	r2, r3
  3f6bc6: f1a2 ffa3    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2f46
  3f6bca: 4603         	mov	r3, r0
  3f6bcc: 9342         	str	r3, [sp, #0x108]
  3f6bce: ab01         	add	r3, sp, #0x4
  3f6bd0: 681b         	ldr	r3, [r3]
  3f6bd2: 685b         	ldr	r3, [r3, #0x4]
  3f6bd4: 4618         	mov	r0, r3
  3f6bd6: 9942         	ldr	r1, [sp, #0x108]
  3f6bd8: 2237         	movs	r2, #0x37
  3f6bda: f19e f927    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e24e
  3f6bde: f20a fa61    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a4c2
  3f6be2: 4604         	mov	r4, r0
  3f6be4: 9842         	ldr	r0, [sp, #0x108]
  3f6be6: f1a2 fe9f    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2d3e
  3f6bea: 4603         	mov	r3, r0
  3f6bec: 4620         	mov	r0, r4
  3f6bee: 4619         	mov	r1, r3
  3f6bf0: 2202         	movs	r2, #0x2
  3f6bf2: f20a fb87    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a70e
  3f6bf6: ab01         	add	r3, sp, #0x4
  3f6bf8: 681b         	ldr	r3, [r3]
  3f6bfa: f103 0210    	add.w	r2, r3, #0x10
  3f6bfe: ab02         	add	r3, sp, #0x8
  3f6c00: 2137         	movs	r1, #0x37
  3f6c02: 6019         	str	r1, [r3]
  3f6c04: ab02         	add	r3, sp, #0x8
  3f6c06: 4610         	mov	r0, r2
  3f6c08: 4619         	mov	r1, r3
  3f6c0a: f001 faf3    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x15e6
  3f6c0e: 4603         	mov	r3, r0
  3f6c10: 2202         	movs	r2, #0x2
  3f6c12: 601a         	str	r2, [r3]
  3f6c14: f8df 36cc    	ldr.w	r3, [pc, #0x6cc]        @ 0x3f72e4 <Sound::loadSoundBuffers()+0x2394>
  3f6c18: 447b         	add	r3, pc
  3f6c1a: 4618         	mov	r0, r3
  3f6c1c: f8df 36c8    	ldr.w	r3, [pc, #0x6c8]        @ 0x3f72e8 <Sound::loadSoundBuffers()+0x2398>
  3f6c20: 447b         	add	r3, pc
  3f6c22: 4619         	mov	r1, r3
  3f6c24: f8df 36c4    	ldr.w	r3, [pc, #0x6c4]        @ 0x3f72ec <Sound::loadSoundBuffers()+0x239c>
  3f6c28: 447b         	add	r3, pc
  3f6c2a: 461a         	mov	r2, r3
  3f6c2c: f1a2 ff70    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2ee0
  3f6c30: 4603         	mov	r3, r0
  3f6c32: 9343         	str	r3, [sp, #0x10c]
  3f6c34: ab01         	add	r3, sp, #0x4
  3f6c36: 681b         	ldr	r3, [r3]
  3f6c38: 685b         	ldr	r3, [r3, #0x4]
  3f6c3a: 4618         	mov	r0, r3
  3f6c3c: 9943         	ldr	r1, [sp, #0x10c]
  3f6c3e: 2238         	movs	r2, #0x38
  3f6c40: f19e f8f4    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e1e8
  3f6c44: f20a fa2e    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a45c
  3f6c48: 4604         	mov	r4, r0
  3f6c4a: 9843         	ldr	r0, [sp, #0x10c]
  3f6c4c: f1a2 fe6c    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2cd8
  3f6c50: 4603         	mov	r3, r0
  3f6c52: 4620         	mov	r0, r4
  3f6c54: 4619         	mov	r1, r3
  3f6c56: 2202         	movs	r2, #0x2
  3f6c58: f20a fb54    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a6a8
  3f6c5c: ab01         	add	r3, sp, #0x4
  3f6c5e: 681b         	ldr	r3, [r3]
  3f6c60: f103 0210    	add.w	r2, r3, #0x10
  3f6c64: ab02         	add	r3, sp, #0x8
  3f6c66: 2138         	movs	r1, #0x38
  3f6c68: 6019         	str	r1, [r3]
  3f6c6a: ab02         	add	r3, sp, #0x8
  3f6c6c: 4610         	mov	r0, r2
  3f6c6e: 4619         	mov	r1, r3
  3f6c70: f001 fac0    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1580
  3f6c74: 4603         	mov	r3, r0
  3f6c76: 2202         	movs	r2, #0x2
  3f6c78: 601a         	str	r2, [r3]
  3f6c7a: f8df 3674    	ldr.w	r3, [pc, #0x674]        @ 0x3f72f0 <Sound::loadSoundBuffers()+0x23a0>
  3f6c7e: 447b         	add	r3, pc
  3f6c80: 4618         	mov	r0, r3
  3f6c82: f8df 3670    	ldr.w	r3, [pc, #0x670]        @ 0x3f72f4 <Sound::loadSoundBuffers()+0x23a4>
  3f6c86: 447b         	add	r3, pc
  3f6c88: 4619         	mov	r1, r3
  3f6c8a: f8df 366c    	ldr.w	r3, [pc, #0x66c]        @ 0x3f72f8 <Sound::loadSoundBuffers()+0x23a8>
  3f6c8e: 447b         	add	r3, pc
  3f6c90: 461a         	mov	r2, r3
  3f6c92: f1a2 ff3d    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2e7a
  3f6c96: 4603         	mov	r3, r0
  3f6c98: 9344         	str	r3, [sp, #0x110]
  3f6c9a: ab01         	add	r3, sp, #0x4
  3f6c9c: 681b         	ldr	r3, [r3]
  3f6c9e: 685b         	ldr	r3, [r3, #0x4]
  3f6ca0: 4618         	mov	r0, r3
  3f6ca2: 9944         	ldr	r1, [sp, #0x110]
  3f6ca4: 2239         	movs	r2, #0x39
  3f6ca6: f19e f8c1    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e182
  3f6caa: f20a f9fb    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a3f6
  3f6cae: 4604         	mov	r4, r0
  3f6cb0: 9844         	ldr	r0, [sp, #0x110]
  3f6cb2: f1a2 fe39    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2c72
  3f6cb6: 4603         	mov	r3, r0
  3f6cb8: 4620         	mov	r0, r4
  3f6cba: 4619         	mov	r1, r3
  3f6cbc: 2202         	movs	r2, #0x2
  3f6cbe: f20a fb21    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a642
  3f6cc2: ab01         	add	r3, sp, #0x4
  3f6cc4: 681b         	ldr	r3, [r3]
  3f6cc6: f103 0210    	add.w	r2, r3, #0x10
  3f6cca: ab02         	add	r3, sp, #0x8
  3f6ccc: 2139         	movs	r1, #0x39
  3f6cce: 6019         	str	r1, [r3]
  3f6cd0: ab02         	add	r3, sp, #0x8
  3f6cd2: 4610         	mov	r0, r2
  3f6cd4: 4619         	mov	r1, r3
  3f6cd6: f001 fa8d    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x151a
  3f6cda: 4603         	mov	r3, r0
  3f6cdc: 2202         	movs	r2, #0x2
  3f6cde: 601a         	str	r2, [r3]
  3f6ce0: f8df 3618    	ldr.w	r3, [pc, #0x618]        @ 0x3f72fc <Sound::loadSoundBuffers()+0x23ac>
  3f6ce4: 447b         	add	r3, pc
  3f6ce6: 4618         	mov	r0, r3
  3f6ce8: f8df 3614    	ldr.w	r3, [pc, #0x614]        @ 0x3f7300 <Sound::loadSoundBuffers()+0x23b0>
  3f6cec: 447b         	add	r3, pc
  3f6cee: 4619         	mov	r1, r3
  3f6cf0: f8df 3610    	ldr.w	r3, [pc, #0x610]        @ 0x3f7304 <Sound::loadSoundBuffers()+0x23b4>
  3f6cf4: 447b         	add	r3, pc
  3f6cf6: 461a         	mov	r2, r3
  3f6cf8: f1a2 ff0a    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2e14
  3f6cfc: 4603         	mov	r3, r0
  3f6cfe: 9345         	str	r3, [sp, #0x114]
  3f6d00: ab01         	add	r3, sp, #0x4
  3f6d02: 681b         	ldr	r3, [r3]
  3f6d04: 685b         	ldr	r3, [r3, #0x4]
  3f6d06: 4618         	mov	r0, r3
  3f6d08: 9945         	ldr	r1, [sp, #0x114]
  3f6d0a: 223a         	movs	r2, #0x3a
  3f6d0c: f19e f88e    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e11c
  3f6d10: f20a f9c8    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a390
  3f6d14: 4604         	mov	r4, r0
  3f6d16: 9845         	ldr	r0, [sp, #0x114]
  3f6d18: f1a2 fe06    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2c0c
  3f6d1c: 4603         	mov	r3, r0
  3f6d1e: 4620         	mov	r0, r4
  3f6d20: 4619         	mov	r1, r3
  3f6d22: 2202         	movs	r2, #0x2
  3f6d24: f20a faee    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a5dc
  3f6d28: ab01         	add	r3, sp, #0x4
  3f6d2a: 681b         	ldr	r3, [r3]
  3f6d2c: f103 0210    	add.w	r2, r3, #0x10
  3f6d30: ab02         	add	r3, sp, #0x8
  3f6d32: 213a         	movs	r1, #0x3a
  3f6d34: 6019         	str	r1, [r3]
  3f6d36: ab02         	add	r3, sp, #0x8
  3f6d38: 4610         	mov	r0, r2
  3f6d3a: 4619         	mov	r1, r3
  3f6d3c: f001 fa5a    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x14b4
  3f6d40: 4603         	mov	r3, r0
  3f6d42: 2202         	movs	r2, #0x2
  3f6d44: 601a         	str	r2, [r3]
  3f6d46: f8df 35c0    	ldr.w	r3, [pc, #0x5c0]        @ 0x3f7308 <Sound::loadSoundBuffers()+0x23b8>
  3f6d4a: 447b         	add	r3, pc
  3f6d4c: 4618         	mov	r0, r3
  3f6d4e: f8df 35bc    	ldr.w	r3, [pc, #0x5bc]        @ 0x3f730c <Sound::loadSoundBuffers()+0x23bc>
  3f6d52: 447b         	add	r3, pc
  3f6d54: 4619         	mov	r1, r3
  3f6d56: f8df 35b8    	ldr.w	r3, [pc, #0x5b8]        @ 0x3f7310 <Sound::loadSoundBuffers()+0x23c0>
  3f6d5a: 447b         	add	r3, pc
  3f6d5c: 461a         	mov	r2, r3
  3f6d5e: f1a2 fed7    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2dae
  3f6d62: 4603         	mov	r3, r0
  3f6d64: 9346         	str	r3, [sp, #0x118]
  3f6d66: ab01         	add	r3, sp, #0x4
  3f6d68: 681b         	ldr	r3, [r3]
  3f6d6a: 685b         	ldr	r3, [r3, #0x4]
  3f6d6c: 4618         	mov	r0, r3
  3f6d6e: 9946         	ldr	r1, [sp, #0x118]
  3f6d70: 223b         	movs	r2, #0x3b
  3f6d72: f19e f85b    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e0b6
  3f6d76: f20a f995    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a32a
  3f6d7a: 4604         	mov	r4, r0
  3f6d7c: 9846         	ldr	r0, [sp, #0x118]
  3f6d7e: f1a2 fdd3    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2ba6
  3f6d82: 4603         	mov	r3, r0
  3f6d84: 4620         	mov	r0, r4
  3f6d86: 4619         	mov	r1, r3
  3f6d88: 2202         	movs	r2, #0x2
  3f6d8a: f20a fabb    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a576
  3f6d8e: ab01         	add	r3, sp, #0x4
  3f6d90: 681b         	ldr	r3, [r3]
  3f6d92: f103 0210    	add.w	r2, r3, #0x10
  3f6d96: ab02         	add	r3, sp, #0x8
  3f6d98: 213b         	movs	r1, #0x3b
  3f6d9a: 6019         	str	r1, [r3]
  3f6d9c: ab02         	add	r3, sp, #0x8
  3f6d9e: 4610         	mov	r0, r2
  3f6da0: 4619         	mov	r1, r3
  3f6da2: f001 fa27    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x144e
  3f6da6: 4603         	mov	r3, r0
  3f6da8: 2202         	movs	r2, #0x2
  3f6daa: 601a         	str	r2, [r3]
  3f6dac: f8df 3564    	ldr.w	r3, [pc, #0x564]        @ 0x3f7314 <Sound::loadSoundBuffers()+0x23c4>
  3f6db0: 447b         	add	r3, pc
  3f6db2: 4618         	mov	r0, r3
  3f6db4: f8df 3560    	ldr.w	r3, [pc, #0x560]        @ 0x3f7318 <Sound::loadSoundBuffers()+0x23c8>
  3f6db8: 447b         	add	r3, pc
  3f6dba: 4619         	mov	r1, r3
  3f6dbc: f8df 355c    	ldr.w	r3, [pc, #0x55c]        @ 0x3f731c <Sound::loadSoundBuffers()+0x23cc>
  3f6dc0: 447b         	add	r3, pc
  3f6dc2: 461a         	mov	r2, r3
  3f6dc4: f1a2 fea4    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2d48
  3f6dc8: 4603         	mov	r3, r0
  3f6dca: 9347         	str	r3, [sp, #0x11c]
  3f6dcc: ab01         	add	r3, sp, #0x4
  3f6dce: 681b         	ldr	r3, [r3]
  3f6dd0: 685b         	ldr	r3, [r3, #0x4]
  3f6dd2: 4618         	mov	r0, r3
  3f6dd4: 9947         	ldr	r1, [sp, #0x11c]
  3f6dd6: 223c         	movs	r2, #0x3c
  3f6dd8: f19e f828    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19e050
  3f6ddc: f20a f962    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a2c4
  3f6de0: 4604         	mov	r4, r0
  3f6de2: 9847         	ldr	r0, [sp, #0x11c]
  3f6de4: f1a2 fda0    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2b40
  3f6de8: 4603         	mov	r3, r0
  3f6dea: 4620         	mov	r0, r4
  3f6dec: 4619         	mov	r1, r3
  3f6dee: 2202         	movs	r2, #0x2
  3f6df0: f20a fa88    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a510
  3f6df4: ab01         	add	r3, sp, #0x4
  3f6df6: 681b         	ldr	r3, [r3]
  3f6df8: f103 0210    	add.w	r2, r3, #0x10
  3f6dfc: ab02         	add	r3, sp, #0x8
  3f6dfe: 213c         	movs	r1, #0x3c
  3f6e00: 6019         	str	r1, [r3]
  3f6e02: ab02         	add	r3, sp, #0x8
  3f6e04: 4610         	mov	r0, r2
  3f6e06: 4619         	mov	r1, r3
  3f6e08: f001 f9f4    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x13e8
  3f6e0c: 4603         	mov	r3, r0
  3f6e0e: 2202         	movs	r2, #0x2
  3f6e10: 601a         	str	r2, [r3]
  3f6e12: f8df 350c    	ldr.w	r3, [pc, #0x50c]        @ 0x3f7320 <Sound::loadSoundBuffers()+0x23d0>
  3f6e16: 447b         	add	r3, pc
  3f6e18: 4618         	mov	r0, r3
  3f6e1a: f8df 3508    	ldr.w	r3, [pc, #0x508]        @ 0x3f7324 <Sound::loadSoundBuffers()+0x23d4>
  3f6e1e: 447b         	add	r3, pc
  3f6e20: 4619         	mov	r1, r3
  3f6e22: f8df 3504    	ldr.w	r3, [pc, #0x504]        @ 0x3f7328 <Sound::loadSoundBuffers()+0x23d8>
  3f6e26: 447b         	add	r3, pc
  3f6e28: 461a         	mov	r2, r3
  3f6e2a: f1a2 fe71    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2ce2
  3f6e2e: 4603         	mov	r3, r0
  3f6e30: 9348         	str	r3, [sp, #0x120]
  3f6e32: ab01         	add	r3, sp, #0x4
  3f6e34: 681b         	ldr	r3, [r3]
  3f6e36: 685b         	ldr	r3, [r3, #0x4]
  3f6e38: 4618         	mov	r0, r3
  3f6e3a: 9948         	ldr	r1, [sp, #0x120]
  3f6e3c: 223d         	movs	r2, #0x3d
  3f6e3e: f19d fff5    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19dfea
  3f6e42: f20a f92f    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a25e
  3f6e46: 4604         	mov	r4, r0
  3f6e48: 9848         	ldr	r0, [sp, #0x120]
  3f6e4a: f1a2 fd6d    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2ada
  3f6e4e: 4603         	mov	r3, r0
  3f6e50: 4620         	mov	r0, r4
  3f6e52: 4619         	mov	r1, r3
  3f6e54: 2202         	movs	r2, #0x2
  3f6e56: f20a fa55    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a4aa
  3f6e5a: ab01         	add	r3, sp, #0x4
  3f6e5c: 681b         	ldr	r3, [r3]
  3f6e5e: f103 0210    	add.w	r2, r3, #0x10
  3f6e62: ab02         	add	r3, sp, #0x8
  3f6e64: 213d         	movs	r1, #0x3d
  3f6e66: 6019         	str	r1, [r3]
  3f6e68: ab02         	add	r3, sp, #0x8
  3f6e6a: 4610         	mov	r0, r2
  3f6e6c: 4619         	mov	r1, r3
  3f6e6e: f001 f9c1    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1382
  3f6e72: 4603         	mov	r3, r0
  3f6e74: 2202         	movs	r2, #0x2
  3f6e76: 601a         	str	r2, [r3]
  3f6e78: f8df 34b0    	ldr.w	r3, [pc, #0x4b0]        @ 0x3f732c <Sound::loadSoundBuffers()+0x23dc>
  3f6e7c: 447b         	add	r3, pc
  3f6e7e: 4618         	mov	r0, r3
  3f6e80: f8df 34ac    	ldr.w	r3, [pc, #0x4ac]        @ 0x3f7330 <Sound::loadSoundBuffers()+0x23e0>
  3f6e84: 447b         	add	r3, pc
  3f6e86: 4619         	mov	r1, r3
  3f6e88: f8df 34a8    	ldr.w	r3, [pc, #0x4a8]        @ 0x3f7334 <Sound::loadSoundBuffers()+0x23e4>
  3f6e8c: 447b         	add	r3, pc
  3f6e8e: 461a         	mov	r2, r3
  3f6e90: f1a2 fe3e    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2c7c
  3f6e94: 4603         	mov	r3, r0
  3f6e96: 9349         	str	r3, [sp, #0x124]
  3f6e98: ab01         	add	r3, sp, #0x4
  3f6e9a: 681b         	ldr	r3, [r3]
  3f6e9c: 685b         	ldr	r3, [r3, #0x4]
  3f6e9e: 4618         	mov	r0, r3
  3f6ea0: 9949         	ldr	r1, [sp, #0x124]
  3f6ea2: 223e         	movs	r2, #0x3e
  3f6ea4: f19d ffc2    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19df84
  3f6ea8: f20a f8fc    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a1f8
  3f6eac: 4604         	mov	r4, r0
  3f6eae: 9849         	ldr	r0, [sp, #0x124]
  3f6eb0: f1a2 fd3a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2a74
  3f6eb4: 4603         	mov	r3, r0
  3f6eb6: 4620         	mov	r0, r4
  3f6eb8: 4619         	mov	r1, r3
  3f6eba: 2202         	movs	r2, #0x2
  3f6ebc: f20a fa22    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a444
  3f6ec0: ab01         	add	r3, sp, #0x4
  3f6ec2: 681b         	ldr	r3, [r3]
  3f6ec4: f103 0210    	add.w	r2, r3, #0x10
  3f6ec8: ab02         	add	r3, sp, #0x8
  3f6eca: 213e         	movs	r1, #0x3e
  3f6ecc: 6019         	str	r1, [r3]
  3f6ece: ab02         	add	r3, sp, #0x8
  3f6ed0: 4610         	mov	r0, r2
  3f6ed2: 4619         	mov	r1, r3
  3f6ed4: f001 f98e    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x131c
  3f6ed8: 4603         	mov	r3, r0
  3f6eda: 2202         	movs	r2, #0x2
  3f6edc: 601a         	str	r2, [r3]
  3f6ede: f8df 3458    	ldr.w	r3, [pc, #0x458]        @ 0x3f7338 <Sound::loadSoundBuffers()+0x23e8>
  3f6ee2: 447b         	add	r3, pc
  3f6ee4: 4618         	mov	r0, r3
  3f6ee6: f8df 3454    	ldr.w	r3, [pc, #0x454]        @ 0x3f733c <Sound::loadSoundBuffers()+0x23ec>
  3f6eea: 447b         	add	r3, pc
  3f6eec: 4619         	mov	r1, r3
  3f6eee: f8df 3450    	ldr.w	r3, [pc, #0x450]        @ 0x3f7340 <Sound::loadSoundBuffers()+0x23f0>
  3f6ef2: 447b         	add	r3, pc
  3f6ef4: 461a         	mov	r2, r3
  3f6ef6: f1a2 fe0b    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2c16
  3f6efa: 4603         	mov	r3, r0
  3f6efc: 934a         	str	r3, [sp, #0x128]
  3f6efe: ab01         	add	r3, sp, #0x4
  3f6f00: 681b         	ldr	r3, [r3]
  3f6f02: 685b         	ldr	r3, [r3, #0x4]
  3f6f04: 4618         	mov	r0, r3
  3f6f06: 994a         	ldr	r1, [sp, #0x128]
  3f6f08: 223f         	movs	r2, #0x3f
  3f6f0a: f19d ff8f    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19df1e
  3f6f0e: f20a f8c9    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a192
  3f6f12: 4604         	mov	r4, r0
  3f6f14: 984a         	ldr	r0, [sp, #0x128]
  3f6f16: f1a2 fd07    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2a0e
  3f6f1a: 4603         	mov	r3, r0
  3f6f1c: 4620         	mov	r0, r4
  3f6f1e: 4619         	mov	r1, r3
  3f6f20: 2202         	movs	r2, #0x2
  3f6f22: f20a f9ef    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a3de
  3f6f26: ab01         	add	r3, sp, #0x4
  3f6f28: 681b         	ldr	r3, [r3]
  3f6f2a: f103 0210    	add.w	r2, r3, #0x10
  3f6f2e: ab02         	add	r3, sp, #0x8
  3f6f30: 213f         	movs	r1, #0x3f
  3f6f32: 6019         	str	r1, [r3]
  3f6f34: ab02         	add	r3, sp, #0x8
  3f6f36: 4610         	mov	r0, r2
  3f6f38: 4619         	mov	r1, r3
  3f6f3a: f001 f95b    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x12b6
  3f6f3e: 4603         	mov	r3, r0
  3f6f40: 2202         	movs	r2, #0x2
  3f6f42: 601a         	str	r2, [r3]
  3f6f44: 4bff         	ldr	r3, [pc, #0x3fc]        @ 0x3f7344 <Sound::loadSoundBuffers()+0x23f4>
  3f6f46: 447b         	add	r3, pc
  3f6f48: 4618         	mov	r0, r3
  3f6f4a: 4bff         	ldr	r3, [pc, #0x3fc]        @ 0x3f7348 <Sound::loadSoundBuffers()+0x23f8>
  3f6f4c: 447b         	add	r3, pc
  3f6f4e: 4619         	mov	r1, r3
  3f6f50: 4bfe         	ldr	r3, [pc, #0x3f8]        @ 0x3f734c <Sound::loadSoundBuffers()+0x23fc>
  3f6f52: 447b         	add	r3, pc
  3f6f54: 461a         	mov	r2, r3
  3f6f56: f1a2 fddb    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2bb6
  3f6f5a: 4603         	mov	r3, r0
  3f6f5c: 934b         	str	r3, [sp, #0x12c]
  3f6f5e: ab01         	add	r3, sp, #0x4
  3f6f60: 681b         	ldr	r3, [r3]
  3f6f62: 685b         	ldr	r3, [r3, #0x4]
  3f6f64: 4618         	mov	r0, r3
  3f6f66: 994b         	ldr	r1, [sp, #0x12c]
  3f6f68: 2240         	movs	r2, #0x40
  3f6f6a: f19d ff5f    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19debe
  3f6f6e: f20a f899    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a132
  3f6f72: 4604         	mov	r4, r0
  3f6f74: 984b         	ldr	r0, [sp, #0x12c]
  3f6f76: f1a2 fcd7    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a29ae
  3f6f7a: 4603         	mov	r3, r0
  3f6f7c: 4620         	mov	r0, r4
  3f6f7e: 4619         	mov	r1, r3
  3f6f80: 2202         	movs	r2, #0x2
  3f6f82: f20a f9bf    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a37e
  3f6f86: ab01         	add	r3, sp, #0x4
  3f6f88: 681b         	ldr	r3, [r3]
  3f6f8a: f103 0210    	add.w	r2, r3, #0x10
  3f6f8e: ab02         	add	r3, sp, #0x8
  3f6f90: 2140         	movs	r1, #0x40
  3f6f92: 6019         	str	r1, [r3]
  3f6f94: ab02         	add	r3, sp, #0x8
  3f6f96: 4610         	mov	r0, r2
  3f6f98: 4619         	mov	r1, r3
  3f6f9a: f001 f92b    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1256
  3f6f9e: 4603         	mov	r3, r0
  3f6fa0: 2202         	movs	r2, #0x2
  3f6fa2: 601a         	str	r2, [r3]
  3f6fa4: 4bea         	ldr	r3, [pc, #0x3a8]        @ 0x3f7350 <Sound::loadSoundBuffers()+0x2400>
  3f6fa6: 447b         	add	r3, pc
  3f6fa8: 4618         	mov	r0, r3
  3f6faa: 4bea         	ldr	r3, [pc, #0x3a8]        @ 0x3f7354 <Sound::loadSoundBuffers()+0x2404>
  3f6fac: 447b         	add	r3, pc
  3f6fae: 4619         	mov	r1, r3
  3f6fb0: 4be9         	ldr	r3, [pc, #0x3a4]        @ 0x3f7358 <Sound::loadSoundBuffers()+0x2408>
  3f6fb2: 447b         	add	r3, pc
  3f6fb4: 461a         	mov	r2, r3
  3f6fb6: f1a2 fdab    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2b56
  3f6fba: 4603         	mov	r3, r0
  3f6fbc: 934c         	str	r3, [sp, #0x130]
  3f6fbe: ab01         	add	r3, sp, #0x4
  3f6fc0: 681b         	ldr	r3, [r3]
  3f6fc2: 685b         	ldr	r3, [r3, #0x4]
  3f6fc4: 4618         	mov	r0, r3
  3f6fc6: 994c         	ldr	r1, [sp, #0x130]
  3f6fc8: 2241         	movs	r2, #0x41
  3f6fca: f19d ff2f    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19de5e
  3f6fce: f20a f869    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a0d2
  3f6fd2: 4604         	mov	r4, r0
  3f6fd4: 984c         	ldr	r0, [sp, #0x130]
  3f6fd6: f1a2 fca7    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a294e
  3f6fda: 4603         	mov	r3, r0
  3f6fdc: 4620         	mov	r0, r4
  3f6fde: 4619         	mov	r1, r3
  3f6fe0: 2202         	movs	r2, #0x2
  3f6fe2: f20a f98f    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a31e
  3f6fe6: ab01         	add	r3, sp, #0x4
  3f6fe8: 681b         	ldr	r3, [r3]
  3f6fea: f103 0210    	add.w	r2, r3, #0x10
  3f6fee: ab02         	add	r3, sp, #0x8
  3f6ff0: 2141         	movs	r1, #0x41
  3f6ff2: 6019         	str	r1, [r3]
  3f6ff4: ab02         	add	r3, sp, #0x8
  3f6ff6: 4610         	mov	r0, r2
  3f6ff8: 4619         	mov	r1, r3
  3f6ffa: f001 f8fb    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x11f6
  3f6ffe: 4603         	mov	r3, r0
  3f7000: 2202         	movs	r2, #0x2
  3f7002: 601a         	str	r2, [r3]
  3f7004: 4bd5         	ldr	r3, [pc, #0x354]        @ 0x3f735c <Sound::loadSoundBuffers()+0x240c>
  3f7006: 447b         	add	r3, pc
  3f7008: 4618         	mov	r0, r3
  3f700a: 4bd5         	ldr	r3, [pc, #0x354]        @ 0x3f7360 <Sound::loadSoundBuffers()+0x2410>
  3f700c: 447b         	add	r3, pc
  3f700e: 4619         	mov	r1, r3
  3f7010: 4bd4         	ldr	r3, [pc, #0x350]        @ 0x3f7364 <Sound::loadSoundBuffers()+0x2414>
  3f7012: 447b         	add	r3, pc
  3f7014: 461a         	mov	r2, r3
  3f7016: f1a2 fd7b    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2af6
  3f701a: 4603         	mov	r3, r0
  3f701c: 934d         	str	r3, [sp, #0x134]
  3f701e: ab01         	add	r3, sp, #0x4
  3f7020: 681b         	ldr	r3, [r3]
  3f7022: 685b         	ldr	r3, [r3, #0x4]
  3f7024: 4618         	mov	r0, r3
  3f7026: 994d         	ldr	r1, [sp, #0x134]
  3f7028: 2242         	movs	r2, #0x42
  3f702a: f19d feff    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19ddfe
  3f702e: f20a f839    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a072
  3f7032: 4604         	mov	r4, r0
  3f7034: 984d         	ldr	r0, [sp, #0x134]
  3f7036: f1a2 fc77    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a28ee
  3f703a: 4603         	mov	r3, r0
  3f703c: 4620         	mov	r0, r4
  3f703e: 4619         	mov	r1, r3
  3f7040: 2202         	movs	r2, #0x2
  3f7042: f20a f95f    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a2be
  3f7046: ab01         	add	r3, sp, #0x4
  3f7048: 681b         	ldr	r3, [r3]
  3f704a: f103 0210    	add.w	r2, r3, #0x10
  3f704e: ab02         	add	r3, sp, #0x8
  3f7050: 2142         	movs	r1, #0x42
  3f7052: 6019         	str	r1, [r3]
  3f7054: ab02         	add	r3, sp, #0x8
  3f7056: 4610         	mov	r0, r2
  3f7058: 4619         	mov	r1, r3
  3f705a: f001 f8cb    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1196
  3f705e: 4603         	mov	r3, r0
  3f7060: 2202         	movs	r2, #0x2
  3f7062: 601a         	str	r2, [r3]
  3f7064: 4bc0         	ldr	r3, [pc, #0x300]        @ 0x3f7368 <Sound::loadSoundBuffers()+0x2418>
  3f7066: 447b         	add	r3, pc
  3f7068: 4618         	mov	r0, r3
  3f706a: 4bc0         	ldr	r3, [pc, #0x300]        @ 0x3f736c <Sound::loadSoundBuffers()+0x241c>
  3f706c: 447b         	add	r3, pc
  3f706e: 4619         	mov	r1, r3
  3f7070: 4bbf         	ldr	r3, [pc, #0x2fc]        @ 0x3f7370 <Sound::loadSoundBuffers()+0x2420>
  3f7072: 447b         	add	r3, pc
  3f7074: 461a         	mov	r2, r3
  3f7076: f1a2 fd4b    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2a96
  3f707a: 4603         	mov	r3, r0
  3f707c: 934e         	str	r3, [sp, #0x138]
  3f707e: ab01         	add	r3, sp, #0x4
  3f7080: 681b         	ldr	r3, [r3]
  3f7082: 685b         	ldr	r3, [r3, #0x4]
  3f7084: 4618         	mov	r0, r3
  3f7086: 994e         	ldr	r1, [sp, #0x138]
  3f7088: 225b         	movs	r2, #0x5b
  3f708a: f19d fecf    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19dd9e
  3f708e: f20a f809    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20a012
  3f7092: 4604         	mov	r4, r0
  3f7094: 984e         	ldr	r0, [sp, #0x138]
  3f7096: f1a2 fc47    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a288e
  3f709a: 4603         	mov	r3, r0
  3f709c: 4620         	mov	r0, r4
  3f709e: 4619         	mov	r1, r3
  3f70a0: 2202         	movs	r2, #0x2
  3f70a2: f20a f92f    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a25e
  3f70a6: ab01         	add	r3, sp, #0x4
  3f70a8: 681b         	ldr	r3, [r3]
  3f70aa: f103 0210    	add.w	r2, r3, #0x10
  3f70ae: ab02         	add	r3, sp, #0x8
  3f70b0: 215b         	movs	r1, #0x5b
  3f70b2: 6019         	str	r1, [r3]
  3f70b4: ab02         	add	r3, sp, #0x8
  3f70b6: 4610         	mov	r0, r2
  3f70b8: 4619         	mov	r1, r3
  3f70ba: f001 f89b    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1136
  3f70be: 4603         	mov	r3, r0
  3f70c0: 2202         	movs	r2, #0x2
  3f70c2: 601a         	str	r2, [r3]
  3f70c4: 4bab         	ldr	r3, [pc, #0x2ac]        @ 0x3f7374 <Sound::loadSoundBuffers()+0x2424>
  3f70c6: 447b         	add	r3, pc
  3f70c8: 4618         	mov	r0, r3
  3f70ca: 4bab         	ldr	r3, [pc, #0x2ac]        @ 0x3f7378 <Sound::loadSoundBuffers()+0x2428>
  3f70cc: 447b         	add	r3, pc
  3f70ce: 4619         	mov	r1, r3
  3f70d0: 4baa         	ldr	r3, [pc, #0x2a8]        @ 0x3f737c <Sound::loadSoundBuffers()+0x242c>
  3f70d2: 447b         	add	r3, pc
  3f70d4: 461a         	mov	r2, r3
  3f70d6: f1a2 fd1b    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2a36
  3f70da: 4603         	mov	r3, r0
  3f70dc: 934f         	str	r3, [sp, #0x13c]
  3f70de: ab01         	add	r3, sp, #0x4
  3f70e0: 681b         	ldr	r3, [r3]
  3f70e2: 685b         	ldr	r3, [r3, #0x4]
  3f70e4: 4618         	mov	r0, r3
  3f70e6: 994f         	ldr	r1, [sp, #0x13c]
  3f70e8: 2244         	movs	r2, #0x44
  3f70ea: f19d fe9f    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19dd3e
  3f70ee: f209 ffd9    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x209fb2
  3f70f2: 4604         	mov	r4, r0
  3f70f4: 984f         	ldr	r0, [sp, #0x13c]
  3f70f6: f1a2 fc17    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a282e
  3f70fa: 4603         	mov	r3, r0
  3f70fc: 4620         	mov	r0, r4
  3f70fe: 4619         	mov	r1, r3
  3f7100: 2202         	movs	r2, #0x2
  3f7102: f20a f8ff    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a1fe
  3f7106: ab01         	add	r3, sp, #0x4
  3f7108: 681b         	ldr	r3, [r3]
  3f710a: f103 0210    	add.w	r2, r3, #0x10
  3f710e: ab02         	add	r3, sp, #0x8
  3f7110: 2144         	movs	r1, #0x44
  3f7112: 6019         	str	r1, [r3]
  3f7114: ab02         	add	r3, sp, #0x8
  3f7116: 4610         	mov	r0, r2
  3f7118: 4619         	mov	r1, r3
  3f711a: f001 f86b    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x10d6
  3f711e: 4603         	mov	r3, r0
  3f7120: 2202         	movs	r2, #0x2
  3f7122: 601a         	str	r2, [r3]
  3f7124: 4b96         	ldr	r3, [pc, #0x258]        @ 0x3f7380 <Sound::loadSoundBuffers()+0x2430>
  3f7126: 447b         	add	r3, pc
  3f7128: 4618         	mov	r0, r3
  3f712a: 4b96         	ldr	r3, [pc, #0x258]        @ 0x3f7384 <Sound::loadSoundBuffers()+0x2434>
  3f712c: 447b         	add	r3, pc
  3f712e: 4619         	mov	r1, r3
  3f7130: 4b95         	ldr	r3, [pc, #0x254]        @ 0x3f7388 <Sound::loadSoundBuffers()+0x2438>
  3f7132: 447b         	add	r3, pc
  3f7134: 461a         	mov	r2, r3
  3f7136: f1a2 fceb    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a29d6
  3f713a: 4603         	mov	r3, r0
  3f713c: 9350         	str	r3, [sp, #0x140]
  3f713e: ab01         	add	r3, sp, #0x4
  3f7140: 681b         	ldr	r3, [r3]
  3f7142: 685b         	ldr	r3, [r3, #0x4]
  3f7144: 4618         	mov	r0, r3
  3f7146: 9950         	ldr	r1, [sp, #0x140]
  3f7148: 2245         	movs	r2, #0x45
  3f714a: f19d fe6f    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19dcde
  3f714e: f209 ffa9    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x209f52
  3f7152: 4604         	mov	r4, r0
  3f7154: 9850         	ldr	r0, [sp, #0x140]
  3f7156: f1a2 fbe7    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a27ce
  3f715a: 4603         	mov	r3, r0
  3f715c: 4620         	mov	r0, r4
  3f715e: 4619         	mov	r1, r3
  3f7160: 2202         	movs	r2, #0x2
  3f7162: f20a f8cf    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a19e
  3f7166: ab01         	add	r3, sp, #0x4
  3f7168: 681b         	ldr	r3, [r3]
  3f716a: f103 0210    	add.w	r2, r3, #0x10
  3f716e: ab02         	add	r3, sp, #0x8
  3f7170: 2145         	movs	r1, #0x45
  3f7172: 6019         	str	r1, [r3]
  3f7174: ab02         	add	r3, sp, #0x8
  3f7176: 4610         	mov	r0, r2
  3f7178: 4619         	mov	r1, r3
  3f717a: f001 f83b    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1076
  3f717e: 4603         	mov	r3, r0
  3f7180: 2202         	movs	r2, #0x2
  3f7182: 601a         	str	r2, [r3]
  3f7184: 4b81         	ldr	r3, [pc, #0x204]        @ 0x3f738c <Sound::loadSoundBuffers()+0x243c>
  3f7186: 447b         	add	r3, pc
  3f7188: 4618         	mov	r0, r3
  3f718a: 4b81         	ldr	r3, [pc, #0x204]        @ 0x3f7390 <Sound::loadSoundBuffers()+0x2440>
  3f718c: 447b         	add	r3, pc
  3f718e: 4619         	mov	r1, r3
  3f7190: 4b80         	ldr	r3, [pc, #0x200]        @ 0x3f7394 <Sound::loadSoundBuffers()+0x2444>
  3f7192: 447b         	add	r3, pc
  3f7194: 461a         	mov	r2, r3
  3f7196: f1a2 fcbb    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2976
  3f719a: 4603         	mov	r3, r0
  3f719c: 9351         	str	r3, [sp, #0x144]
  3f719e: ab01         	add	r3, sp, #0x4
  3f71a0: 681b         	ldr	r3, [r3]
  3f71a2: 685b         	ldr	r3, [r3, #0x4]
  3f71a4: 4618         	mov	r0, r3
  3f71a6: 9951         	ldr	r1, [sp, #0x144]
  3f71a8: 2246         	movs	r2, #0x46
  3f71aa: f19d fe3f    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19dc7e
  3f71ae: f209 ff79    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x209ef2
  3f71b2: 4604         	mov	r4, r0
  3f71b4: 9851         	ldr	r0, [sp, #0x144]
  3f71b6: f1a2 fbb7    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a276e
  3f71ba: 4603         	mov	r3, r0
  3f71bc: 4620         	mov	r0, r4
  3f71be: 4619         	mov	r1, r3
  3f71c0: 2202         	movs	r2, #0x2
  3f71c2: f20a f89f    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a13e
  3f71c6: ab01         	add	r3, sp, #0x4
  3f71c8: 681b         	ldr	r3, [r3]
  3f71ca: f103 0210    	add.w	r2, r3, #0x10
  3f71ce: ab02         	add	r3, sp, #0x8
  3f71d0: 2146         	movs	r1, #0x46
  3f71d2: 6019         	str	r1, [r3]
  3f71d4: ab02         	add	r3, sp, #0x8
  3f71d6: 4610         	mov	r0, r2
  3f71d8: 4619         	mov	r1, r3
  3f71da: f001 f80b    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x1016
  3f71de: 4603         	mov	r3, r0
  3f71e0: 2202         	movs	r2, #0x2
  3f71e2: 601a         	str	r2, [r3]
  3f71e4: 4b6c         	ldr	r3, [pc, #0x1b0]        @ 0x3f7398 <Sound::loadSoundBuffers()+0x2448>
  3f71e6: 447b         	add	r3, pc
  3f71e8: 4618         	mov	r0, r3
  3f71ea: 4b6c         	ldr	r3, [pc, #0x1b0]        @ 0x3f739c <Sound::loadSoundBuffers()+0x244c>
  3f71ec: 447b         	add	r3, pc
  3f71ee: 4619         	mov	r1, r3
  3f71f0: 4b6b         	ldr	r3, [pc, #0x1ac]        @ 0x3f73a0 <Sound::loadSoundBuffers()+0x2450>
  3f71f2: 447b         	add	r3, pc
  3f71f4: 461a         	mov	r2, r3
  3f71f6: f1a2 fc8b    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2916
  3f71fa: 4603         	mov	r3, r0
  3f71fc: 9352         	str	r3, [sp, #0x148]
  3f71fe: ab01         	add	r3, sp, #0x4
  3f7200: 681b         	ldr	r3, [r3]
  3f7202: 685b         	ldr	r3, [r3, #0x4]
  3f7204: 4618         	mov	r0, r3
  3f7206: 9952         	ldr	r1, [sp, #0x148]
  3f7208: 2247         	movs	r2, #0x47
  3f720a: f19d fe0f    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19dc1e
  3f720e: f209 ff49    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x209e92
  3f7212: 4604         	mov	r4, r0
  3f7214: 9852         	ldr	r0, [sp, #0x148]
  3f7216: f1a2 fb87    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a270e
  3f721a: 4603         	mov	r3, r0
  3f721c: 4620         	mov	r0, r4
  3f721e: 4619         	mov	r1, r3
  3f7220: 2202         	movs	r2, #0x2
  3f7222: f20a f86f    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x20a0de
  3f7226: ab01         	add	r3, sp, #0x4
  3f7228: 681b         	ldr	r3, [r3]
  3f722a: f103 0210    	add.w	r2, r3, #0x10
  3f722e: ab02         	add	r3, sp, #0x8
  3f7230: 2147         	movs	r1, #0x47
  3f7232: 6019         	str	r1, [r3]
  3f7234: ab02         	add	r3, sp, #0x8
  3f7236: 4610         	mov	r0, r2
  3f7238: 4619         	mov	r1, r3
  3f723a: f000 ffdb    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0xfb6
  3f723e: 4603         	mov	r3, r0
  3f7240: 2202         	movs	r2, #0x2
  3f7242: 601a         	str	r2, [r3]
  3f7244: 4b57         	ldr	r3, [pc, #0x15c]        @ 0x3f73a4 <Sound::loadSoundBuffers()+0x2454>
  3f7246: 447b         	add	r3, pc
  3f7248: 4618         	mov	r0, r3
  3f724a: 4b57         	ldr	r3, [pc, #0x15c]        @ 0x3f73a8 <Sound::loadSoundBuffers()+0x2458>
  3f724c: 447b         	add	r3, pc
  3f724e: 4619         	mov	r1, r3
  3f7250: 4b56         	ldr	r3, [pc, #0x158]        @ 0x3f73ac <Sound::loadSoundBuffers()+0x245c>
  3f7252: 447b         	add	r3, pc
  3f7254: 461a         	mov	r2, r3
  3f7256: f1a2 fc5b    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a28b6
  3f725a: 4603         	mov	r3, r0
  3f725c: 9353         	str	r3, [sp, #0x14c]
  3f725e: e0a7         	b	0x3f73b0 <Sound::loadSoundBuffers()+0x2460> @ imm = #0x14e
  3f7260: 256e         	movs	r5, #0x6e
  3f7262: 003e         	movs	r6, r7
  3f7264: 271a         	movs	r7, #0x1a
  3f7266: 003e         	movs	r6, r7
  3f7268: 2572         	movs	r5, #0x72
  3f726a: 003e         	movs	r6, r7
  3f726c: 2508         	movs	r5, #0x8
  3f726e: 003e         	movs	r6, r7
  3f7270: 26bc         	movs	r6, #0xbc
  3f7272: 003e         	movs	r6, r7
  3f7274: 250c         	movs	r5, #0xc
  3f7276: 003e         	movs	r6, r7
  3f7278: 24a2         	movs	r4, #0xa2
  3f727a: 003e         	movs	r6, r7
  3f727c: 265e         	movs	r6, #0x5e
  3f727e: 003e         	movs	r6, r7
  3f7280: 24a6         	movs	r4, #0xa6
  3f7282: 003e         	movs	r6, r7
  3f7284: 243c         	movs	r4, #0x3c
  3f7286: 003e         	movs	r6, r7
  3f7288: 2600         	movs	r6, #0x0
  3f728a: 003e         	movs	r6, r7
  3f728c: 2440         	movs	r4, #0x40
  3f728e: 003e         	movs	r6, r7
  3f7290: 23d6         	movs	r3, #0xd6
  3f7292: 003e         	movs	r6, r7
  3f7294: 25a2         	movs	r5, #0xa2
  3f7296: 003e         	movs	r6, r7
  3f7298: 23da         	movs	r3, #0xda
  3f729a: 003e         	movs	r6, r7
  3f729c: 2370         	movs	r3, #0x70
  3f729e: 003e         	movs	r6, r7
  3f72a0: 2540         	movs	r5, #0x40
  3f72a2: 003e         	movs	r6, r7
  3f72a4: 2374         	movs	r3, #0x74
  3f72a6: 003e         	movs	r6, r7
  3f72a8: 230a         	movs	r3, #0xa
  3f72aa: 003e         	movs	r6, r7
  3f72ac: 24e2         	movs	r4, #0xe2
  3f72ae: 003e         	movs	r6, r7
  3f72b0: 230e         	movs	r3, #0xe
  3f72b2: 003e         	movs	r6, r7
  3f72b4: 22a4         	movs	r2, #0xa4
  3f72b6: 003e         	movs	r6, r7
  3f72b8: 2484         	movs	r4, #0x84
  3f72ba: 003e         	movs	r6, r7
  3f72bc: 22a8         	movs	r2, #0xa8
  3f72be: 003e         	movs	r6, r7
  3f72c0: 223e         	movs	r2, #0x3e
  3f72c2: 003e         	movs	r6, r7
  3f72c4: 2426         	movs	r4, #0x26
  3f72c6: 003e         	movs	r6, r7
  3f72c8: 2242         	movs	r2, #0x42
  3f72ca: 003e         	movs	r6, r7
  3f72cc: 21d8         	movs	r1, #0xd8
  3f72ce: 003e         	movs	r6, r7
  3f72d0: 23c8         	movs	r3, #0xc8
  3f72d2: 003e         	movs	r6, r7
  3f72d4: 21dc         	movs	r1, #0xdc
  3f72d6: 003e         	movs	r6, r7
  3f72d8: 2172         	movs	r1, #0x72
  3f72da: 003e         	movs	r6, r7
  3f72dc: 236a         	movs	r3, #0x6a
  3f72de: 003e         	movs	r6, r7
  3f72e0: 2176         	movs	r1, #0x76
  3f72e2: 003e         	movs	r6, r7
  3f72e4: 210c         	movs	r1, #0xc
  3f72e6: 003e         	movs	r6, r7
  3f72e8: 230c         	movs	r3, #0xc
  3f72ea: 003e         	movs	r6, r7
  3f72ec: 2110         	movs	r1, #0x10
  3f72ee: 003e         	movs	r6, r7
  3f72f0: 20a6         	movs	r0, #0xa6
  3f72f2: 003e         	movs	r6, r7
  3f72f4: 22ae         	movs	r2, #0xae
  3f72f6: 003e         	movs	r6, r7
  3f72f8: 20aa         	movs	r0, #0xaa
  3f72fa: 003e         	movs	r6, r7
  3f72fc: 2040         	movs	r0, #0x40
  3f72fe: 003e         	movs	r6, r7
  3f7300: 2250         	movs	r2, #0x50
  3f7302: 003e         	movs	r6, r7
  3f7304: 2044         	movs	r0, #0x44
  3f7306: 003e         	movs	r6, r7
  3f7308: 1fda         	subs	r2, r3, #0x7
  3f730a: 003e         	movs	r6, r7
  3f730c: 21f2         	movs	r1, #0xf2
  3f730e: 003e         	movs	r6, r7
  3f7310: 1fde         	subs	r6, r3, #0x7
  3f7312: 003e         	movs	r6, r7
  3f7314: 1f74         	subs	r4, r6, #0x5
  3f7316: 003e         	movs	r6, r7
  3f7318: 2194         	movs	r1, #0x94
  3f731a: 003e         	movs	r6, r7
  3f731c: 1f78         	subs	r0, r7, #0x5
  3f731e: 003e         	movs	r6, r7
  3f7320: 1f0e         	subs	r6, r1, #0x4
  3f7322: 003e         	movs	r6, r7
  3f7324: 2136         	movs	r1, #0x36
  3f7326: 003e         	movs	r6, r7
  3f7328: 1f12         	subs	r2, r2, #0x4
  3f732a: 003e         	movs	r6, r7
  3f732c: 1ea8         	subs	r0, r5, #0x2
  3f732e: 003e         	movs	r6, r7
  3f7330: 20d8         	movs	r0, #0xd8
  3f7332: 003e         	movs	r6, r7
  3f7334: 1eac         	subs	r4, r5, #0x2
  3f7336: 003e         	movs	r6, r7
  3f7338: 1e42         	subs	r2, r0, #0x1
  3f733a: 003e         	movs	r6, r7
  3f733c: 207a         	movs	r0, #0x7a
  3f733e: 003e         	movs	r6, r7
  3f7340: 1e46         	subs	r6, r0, #0x1
  3f7342: 003e         	movs	r6, r7
  3f7344: 1dde         	adds	r6, r3, #0x7
  3f7346: 003e         	movs	r6, r7
  3f7348: 2020         	movs	r0, #0x20
  3f734a: 003e         	movs	r6, r7
  3f734c: 1de6         	adds	r6, r4, #0x7
  3f734e: 003e         	movs	r6, r7
  3f7350: 1d7e         	adds	r6, r7, #0x5
  3f7352: 003e         	movs	r6, r7
  3f7354: 1fc8         	subs	r0, r1, #0x7
  3f7356: 003e         	movs	r6, r7
  3f7358: 1d86         	adds	r6, r0, #0x6
  3f735a: 003e         	movs	r6, r7
  3f735c: 1d1e         	adds	r6, r3, #0x4
  3f735e: 003e         	movs	r6, r7
  3f7360: 1f70         	subs	r0, r6, #0x5
  3f7362: 003e         	movs	r6, r7
  3f7364: 1d26         	adds	r6, r4, #0x4
  3f7366: 003e         	movs	r6, r7
  3f7368: 1cbe         	adds	r6, r7, #0x2
  3f736a: 003e         	movs	r6, r7
  3f736c: 1e28         	subs	r0, r5, #0x0
  3f736e: 003e         	movs	r6, r7
  3f7370: 1cc6         	adds	r6, r0, #0x3
  3f7372: 003e         	movs	r6, r7
  3f7374: 1c5e         	adds	r6, r3, #0x1
  3f7376: 003e         	movs	r6, r7
  3f7378: 1eb8         	subs	r0, r7, #0x2
  3f737a: 003e         	movs	r6, r7
  3f737c: 1c66         	adds	r6, r4, #0x1
  3f737e: 003e         	movs	r6, r7
  3f7380: 1bfe         	subs	r6, r7, r7
  3f7382: 003e         	movs	r6, r7
  3f7384: 1e64         	subs	r4, r4, #0x1
  3f7386: 003e         	movs	r6, r7
  3f7388: 1c06         	adds	r6, r0, #0x0
  3f738a: 003e         	movs	r6, r7
  3f738c: 1b9e         	subs	r6, r3, r6
  3f738e: 003e         	movs	r6, r7
  3f7390: 1e10         	subs	r0, r2, #0x0
  3f7392: 003e         	movs	r6, r7
  3f7394: 1ba6         	subs	r6, r4, r6
  3f7396: 003e         	movs	r6, r7
  3f7398: 1b3e         	subs	r6, r7, r4
  3f739a: 003e         	movs	r6, r7
  3f739c: 1db8         	adds	r0, r7, #0x6
  3f739e: 003e         	movs	r6, r7
  3f73a0: 1b46         	subs	r6, r0, r5
  3f73a2: 003e         	movs	r6, r7
  3f73a4: 1ade         	subs	r6, r3, r3
  3f73a6: 003e         	movs	r6, r7
  3f73a8: 1d60         	adds	r0, r4, #0x5
  3f73aa: 003e         	movs	r6, r7
  3f73ac: 1ae6         	subs	r6, r4, r3
  3f73ae: 003e         	movs	r6, r7
  3f73b0: ab01         	add	r3, sp, #0x4
  3f73b2: 681b         	ldr	r3, [r3]
  3f73b4: 685b         	ldr	r3, [r3, #0x4]
  3f73b6: 4618         	mov	r0, r3
  3f73b8: 9953         	ldr	r1, [sp, #0x14c]
  3f73ba: 2248         	movs	r2, #0x48
  3f73bc: f19d fd36    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19da6c
  3f73c0: f209 fe70    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x209ce0
  3f73c4: 4604         	mov	r4, r0
  3f73c6: 9853         	ldr	r0, [sp, #0x14c]
  3f73c8: f1a2 faae    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a255c
  3f73cc: 4603         	mov	r3, r0
  3f73ce: 4620         	mov	r0, r4
  3f73d0: 4619         	mov	r1, r3
  3f73d2: 2202         	movs	r2, #0x2
  3f73d4: f209 ff96    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x209f2c
  3f73d8: ab01         	add	r3, sp, #0x4
  3f73da: 681b         	ldr	r3, [r3]
  3f73dc: f103 0210    	add.w	r2, r3, #0x10
  3f73e0: ab02         	add	r3, sp, #0x8
  3f73e2: 2148         	movs	r1, #0x48
  3f73e4: 6019         	str	r1, [r3]
  3f73e6: ab02         	add	r3, sp, #0x8
  3f73e8: 4610         	mov	r0, r2
  3f73ea: 4619         	mov	r1, r3
  3f73ec: f000 ff02    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0xe04
  3f73f0: 4603         	mov	r3, r0
  3f73f2: 2202         	movs	r2, #0x2
  3f73f4: 601a         	str	r2, [r3]
  3f73f6: f8df 36f8    	ldr.w	r3, [pc, #0x6f8]        @ 0x3f7af0 <Sound::loadSoundBuffers()+0x2ba0>
  3f73fa: 447b         	add	r3, pc
  3f73fc: 4618         	mov	r0, r3
  3f73fe: f8df 36f4    	ldr.w	r3, [pc, #0x6f4]        @ 0x3f7af4 <Sound::loadSoundBuffers()+0x2ba4>
  3f7402: 447b         	add	r3, pc
  3f7404: 4619         	mov	r1, r3
  3f7406: f8df 36f0    	ldr.w	r3, [pc, #0x6f0]        @ 0x3f7af8 <Sound::loadSoundBuffers()+0x2ba8>
  3f740a: 447b         	add	r3, pc
  3f740c: 461a         	mov	r2, r3
  3f740e: f1a2 fb7f    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a26fe
  3f7412: 4603         	mov	r3, r0
  3f7414: 9354         	str	r3, [sp, #0x150]
  3f7416: ab01         	add	r3, sp, #0x4
  3f7418: 681b         	ldr	r3, [r3]
  3f741a: 685b         	ldr	r3, [r3, #0x4]
  3f741c: 4618         	mov	r0, r3
  3f741e: 9954         	ldr	r1, [sp, #0x150]
  3f7420: 2249         	movs	r2, #0x49
  3f7422: f19d fd03    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19da06
  3f7426: f209 fe3d    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x209c7a
  3f742a: 4604         	mov	r4, r0
  3f742c: 9854         	ldr	r0, [sp, #0x150]
  3f742e: f1a2 fa7b    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a24f6
  3f7432: 4603         	mov	r3, r0
  3f7434: 4620         	mov	r0, r4
  3f7436: 4619         	mov	r1, r3
  3f7438: 2202         	movs	r2, #0x2
  3f743a: f209 ff63    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x209ec6
  3f743e: ab01         	add	r3, sp, #0x4
  3f7440: 681b         	ldr	r3, [r3]
  3f7442: f103 0210    	add.w	r2, r3, #0x10
  3f7446: ab02         	add	r3, sp, #0x8
  3f7448: 2149         	movs	r1, #0x49
  3f744a: 6019         	str	r1, [r3]
  3f744c: ab02         	add	r3, sp, #0x8
  3f744e: 4610         	mov	r0, r2
  3f7450: 4619         	mov	r1, r3
  3f7452: f000 fecf    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0xd9e
  3f7456: 4603         	mov	r3, r0
  3f7458: 2202         	movs	r2, #0x2
  3f745a: 601a         	str	r2, [r3]
  3f745c: f8df 369c    	ldr.w	r3, [pc, #0x69c]        @ 0x3f7afc <Sound::loadSoundBuffers()+0x2bac>
  3f7460: 447b         	add	r3, pc
  3f7462: 4618         	mov	r0, r3
  3f7464: f8df 3698    	ldr.w	r3, [pc, #0x698]        @ 0x3f7b00 <Sound::loadSoundBuffers()+0x2bb0>
  3f7468: 447b         	add	r3, pc
  3f746a: 4619         	mov	r1, r3
  3f746c: f8df 3694    	ldr.w	r3, [pc, #0x694]        @ 0x3f7b04 <Sound::loadSoundBuffers()+0x2bb4>
  3f7470: 447b         	add	r3, pc
  3f7472: 461a         	mov	r2, r3
  3f7474: f1a2 fb4c    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2698
  3f7478: 4603         	mov	r3, r0
  3f747a: 9355         	str	r3, [sp, #0x154]
  3f747c: ab01         	add	r3, sp, #0x4
  3f747e: 681b         	ldr	r3, [r3]
  3f7480: 685b         	ldr	r3, [r3, #0x4]
  3f7482: 4618         	mov	r0, r3
  3f7484: 9955         	ldr	r1, [sp, #0x154]
  3f7486: 224a         	movs	r2, #0x4a
  3f7488: f19d fcd0    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19d9a0
  3f748c: f209 fe0a    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x209c14
  3f7490: 4604         	mov	r4, r0
  3f7492: 9855         	ldr	r0, [sp, #0x154]
  3f7494: f1a2 fa48    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2490
  3f7498: 4603         	mov	r3, r0
  3f749a: 4620         	mov	r0, r4
  3f749c: 4619         	mov	r1, r3
  3f749e: 2202         	movs	r2, #0x2
  3f74a0: f209 ff30    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x209e60
  3f74a4: ab01         	add	r3, sp, #0x4
  3f74a6: 681b         	ldr	r3, [r3]
  3f74a8: f103 0210    	add.w	r2, r3, #0x10
  3f74ac: ab02         	add	r3, sp, #0x8
  3f74ae: 214a         	movs	r1, #0x4a
  3f74b0: 6019         	str	r1, [r3]
  3f74b2: ab02         	add	r3, sp, #0x8
  3f74b4: 4610         	mov	r0, r2
  3f74b6: 4619         	mov	r1, r3
  3f74b8: f000 fe9c    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0xd38
  3f74bc: 4603         	mov	r3, r0
  3f74be: 2202         	movs	r2, #0x2
  3f74c0: 601a         	str	r2, [r3]
  3f74c2: f8df 3644    	ldr.w	r3, [pc, #0x644]        @ 0x3f7b08 <Sound::loadSoundBuffers()+0x2bb8>
  3f74c6: 447b         	add	r3, pc
  3f74c8: 4618         	mov	r0, r3
  3f74ca: f8df 3640    	ldr.w	r3, [pc, #0x640]        @ 0x3f7b0c <Sound::loadSoundBuffers()+0x2bbc>
  3f74ce: 447b         	add	r3, pc
  3f74d0: 4619         	mov	r1, r3
  3f74d2: f8df 363c    	ldr.w	r3, [pc, #0x63c]        @ 0x3f7b10 <Sound::loadSoundBuffers()+0x2bc0>
  3f74d6: 447b         	add	r3, pc
  3f74d8: 461a         	mov	r2, r3
  3f74da: f1a2 fb19    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2632
  3f74de: 4603         	mov	r3, r0
  3f74e0: 9356         	str	r3, [sp, #0x158]
  3f74e2: ab01         	add	r3, sp, #0x4
  3f74e4: 681b         	ldr	r3, [r3]
  3f74e6: 685b         	ldr	r3, [r3, #0x4]
  3f74e8: 4618         	mov	r0, r3
  3f74ea: 9956         	ldr	r1, [sp, #0x158]
  3f74ec: 2259         	movs	r2, #0x59
  3f74ee: f19d fc9d    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19d93a
  3f74f2: f209 fdd7    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x209bae
  3f74f6: 4604         	mov	r4, r0
  3f74f8: 9856         	ldr	r0, [sp, #0x158]
  3f74fa: f1a2 fa15    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a242a
  3f74fe: 4603         	mov	r3, r0
  3f7500: 4620         	mov	r0, r4
  3f7502: 4619         	mov	r1, r3
  3f7504: 2202         	movs	r2, #0x2
  3f7506: f209 fefd    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x209dfa
  3f750a: ab01         	add	r3, sp, #0x4
  3f750c: 681b         	ldr	r3, [r3]
  3f750e: f103 0210    	add.w	r2, r3, #0x10
  3f7512: ab02         	add	r3, sp, #0x8
  3f7514: 2159         	movs	r1, #0x59
  3f7516: 6019         	str	r1, [r3]
  3f7518: ab02         	add	r3, sp, #0x8
  3f751a: 4610         	mov	r0, r2
  3f751c: 4619         	mov	r1, r3
  3f751e: f000 fe69    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0xcd2
  3f7522: 4603         	mov	r3, r0
  3f7524: 2202         	movs	r2, #0x2
  3f7526: 601a         	str	r2, [r3]
  3f7528: f8df 35e8    	ldr.w	r3, [pc, #0x5e8]        @ 0x3f7b14 <Sound::loadSoundBuffers()+0x2bc4>
  3f752c: 447b         	add	r3, pc
  3f752e: 4618         	mov	r0, r3
  3f7530: f8df 35e4    	ldr.w	r3, [pc, #0x5e4]        @ 0x3f7b18 <Sound::loadSoundBuffers()+0x2bc8>
  3f7534: 447b         	add	r3, pc
  3f7536: 4619         	mov	r1, r3
  3f7538: f8df 35e0    	ldr.w	r3, [pc, #0x5e0]        @ 0x3f7b1c <Sound::loadSoundBuffers()+0x2bcc>
  3f753c: 447b         	add	r3, pc
  3f753e: 461a         	mov	r2, r3
  3f7540: f1a2 fae6    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a25cc
  3f7544: 4603         	mov	r3, r0
  3f7546: 9357         	str	r3, [sp, #0x15c]
  3f7548: ab01         	add	r3, sp, #0x4
  3f754a: 681b         	ldr	r3, [r3]
  3f754c: 685b         	ldr	r3, [r3, #0x4]
  3f754e: 4618         	mov	r0, r3
  3f7550: 9957         	ldr	r1, [sp, #0x15c]
  3f7552: 224b         	movs	r2, #0x4b
  3f7554: f19d fc6a    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19d8d4
  3f7558: f209 fda4    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x209b48
  3f755c: 4604         	mov	r4, r0
  3f755e: 9857         	ldr	r0, [sp, #0x15c]
  3f7560: f1a2 f9e2    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a23c4
  3f7564: 4603         	mov	r3, r0
  3f7566: 4620         	mov	r0, r4
  3f7568: 4619         	mov	r1, r3
  3f756a: 2202         	movs	r2, #0x2
  3f756c: f209 feca    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x209d94
  3f7570: ab01         	add	r3, sp, #0x4
  3f7572: 681b         	ldr	r3, [r3]
  3f7574: f103 0210    	add.w	r2, r3, #0x10
  3f7578: ab02         	add	r3, sp, #0x8
  3f757a: 214b         	movs	r1, #0x4b
  3f757c: 6019         	str	r1, [r3]
  3f757e: ab02         	add	r3, sp, #0x8
  3f7580: 4610         	mov	r0, r2
  3f7582: 4619         	mov	r1, r3
  3f7584: f000 fe36    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0xc6c
  3f7588: 4603         	mov	r3, r0
  3f758a: 2202         	movs	r2, #0x2
  3f758c: 601a         	str	r2, [r3]
  3f758e: f8df 3590    	ldr.w	r3, [pc, #0x590]        @ 0x3f7b20 <Sound::loadSoundBuffers()+0x2bd0>
  3f7592: 447b         	add	r3, pc
  3f7594: 4618         	mov	r0, r3
  3f7596: f8df 358c    	ldr.w	r3, [pc, #0x58c]        @ 0x3f7b24 <Sound::loadSoundBuffers()+0x2bd4>
  3f759a: 447b         	add	r3, pc
  3f759c: 4619         	mov	r1, r3
  3f759e: f8df 3588    	ldr.w	r3, [pc, #0x588]        @ 0x3f7b28 <Sound::loadSoundBuffers()+0x2bd8>
  3f75a2: 447b         	add	r3, pc
  3f75a4: 461a         	mov	r2, r3
  3f75a6: f1a2 fab3    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2566
  3f75aa: 4603         	mov	r3, r0
  3f75ac: 9358         	str	r3, [sp, #0x160]
  3f75ae: ab01         	add	r3, sp, #0x4
  3f75b0: 681b         	ldr	r3, [r3]
  3f75b2: 685b         	ldr	r3, [r3, #0x4]
  3f75b4: 4618         	mov	r0, r3
  3f75b6: 9958         	ldr	r1, [sp, #0x160]
  3f75b8: 224c         	movs	r2, #0x4c
  3f75ba: f19d fc37    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19d86e
  3f75be: f209 fd71    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x209ae2
  3f75c2: 4604         	mov	r4, r0
  3f75c4: 9858         	ldr	r0, [sp, #0x160]
  3f75c6: f1a2 f9af    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a235e
  3f75ca: 4603         	mov	r3, r0
  3f75cc: 4620         	mov	r0, r4
  3f75ce: 4619         	mov	r1, r3
  3f75d0: 2201         	movs	r2, #0x1
  3f75d2: f209 fe97    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x209d2e
  3f75d6: ab01         	add	r3, sp, #0x4
  3f75d8: 681b         	ldr	r3, [r3]
  3f75da: f103 0210    	add.w	r2, r3, #0x10
  3f75de: ab02         	add	r3, sp, #0x8
  3f75e0: 214c         	movs	r1, #0x4c
  3f75e2: 6019         	str	r1, [r3]
  3f75e4: ab02         	add	r3, sp, #0x8
  3f75e6: 4610         	mov	r0, r2
  3f75e8: 4619         	mov	r1, r3
  3f75ea: f000 fe03    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0xc06
  3f75ee: 4603         	mov	r3, r0
  3f75f0: 2201         	movs	r2, #0x1
  3f75f2: 601a         	str	r2, [r3]
  3f75f4: f8df 3534    	ldr.w	r3, [pc, #0x534]        @ 0x3f7b2c <Sound::loadSoundBuffers()+0x2bdc>
  3f75f8: 447b         	add	r3, pc
  3f75fa: 4618         	mov	r0, r3
  3f75fc: f8df 3530    	ldr.w	r3, [pc, #0x530]        @ 0x3f7b30 <Sound::loadSoundBuffers()+0x2be0>
  3f7600: 447b         	add	r3, pc
  3f7602: 4619         	mov	r1, r3
  3f7604: f8df 352c    	ldr.w	r3, [pc, #0x52c]        @ 0x3f7b34 <Sound::loadSoundBuffers()+0x2be4>
  3f7608: 447b         	add	r3, pc
  3f760a: 461a         	mov	r2, r3
  3f760c: f1a2 fa80    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2500
  3f7610: 4603         	mov	r3, r0
  3f7612: 9359         	str	r3, [sp, #0x164]
  3f7614: ab01         	add	r3, sp, #0x4
  3f7616: 681b         	ldr	r3, [r3]
  3f7618: 685b         	ldr	r3, [r3, #0x4]
  3f761a: 4618         	mov	r0, r3
  3f761c: 9959         	ldr	r1, [sp, #0x164]
  3f761e: 224d         	movs	r2, #0x4d
  3f7620: f19d fc04    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19d808
  3f7624: f209 fd3e    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x209a7c
  3f7628: 4604         	mov	r4, r0
  3f762a: 9859         	ldr	r0, [sp, #0x164]
  3f762c: f1a2 f97c    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a22f8
  3f7630: 4603         	mov	r3, r0
  3f7632: 4620         	mov	r0, r4
  3f7634: 4619         	mov	r1, r3
  3f7636: 2202         	movs	r2, #0x2
  3f7638: f209 fe64    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x209cc8
  3f763c: ab01         	add	r3, sp, #0x4
  3f763e: 681b         	ldr	r3, [r3]
  3f7640: f103 0210    	add.w	r2, r3, #0x10
  3f7644: ab02         	add	r3, sp, #0x8
  3f7646: 214d         	movs	r1, #0x4d
  3f7648: 6019         	str	r1, [r3]
  3f764a: ab02         	add	r3, sp, #0x8
  3f764c: 4610         	mov	r0, r2
  3f764e: 4619         	mov	r1, r3
  3f7650: f000 fdd0    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0xba0
  3f7654: 4603         	mov	r3, r0
  3f7656: 2202         	movs	r2, #0x2
  3f7658: 601a         	str	r2, [r3]
  3f765a: f8df 34dc    	ldr.w	r3, [pc, #0x4dc]        @ 0x3f7b38 <Sound::loadSoundBuffers()+0x2be8>
  3f765e: 447b         	add	r3, pc
  3f7660: 4618         	mov	r0, r3
  3f7662: f8df 34d8    	ldr.w	r3, [pc, #0x4d8]        @ 0x3f7b3c <Sound::loadSoundBuffers()+0x2bec>
  3f7666: 447b         	add	r3, pc
  3f7668: 4619         	mov	r1, r3
  3f766a: f8df 34d4    	ldr.w	r3, [pc, #0x4d4]        @ 0x3f7b40 <Sound::loadSoundBuffers()+0x2bf0>
  3f766e: 447b         	add	r3, pc
  3f7670: 461a         	mov	r2, r3
  3f7672: f1a2 fa4d    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a249a
  3f7676: 4603         	mov	r3, r0
  3f7678: 935a         	str	r3, [sp, #0x168]
  3f767a: ab01         	add	r3, sp, #0x4
  3f767c: 681b         	ldr	r3, [r3]
  3f767e: 685b         	ldr	r3, [r3, #0x4]
  3f7680: 4618         	mov	r0, r3
  3f7682: 995a         	ldr	r1, [sp, #0x168]
  3f7684: 224e         	movs	r2, #0x4e
  3f7686: f19d fbd1    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19d7a2
  3f768a: f209 fd0b    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x209a16
  3f768e: 4604         	mov	r4, r0
  3f7690: 985a         	ldr	r0, [sp, #0x168]
  3f7692: f1a2 f949    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2292
  3f7696: 4603         	mov	r3, r0
  3f7698: 4620         	mov	r0, r4
  3f769a: 4619         	mov	r1, r3
  3f769c: 2202         	movs	r2, #0x2
  3f769e: f209 fe31    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x209c62
  3f76a2: ab01         	add	r3, sp, #0x4
  3f76a4: 681b         	ldr	r3, [r3]
  3f76a6: f103 0210    	add.w	r2, r3, #0x10
  3f76aa: ab02         	add	r3, sp, #0x8
  3f76ac: 214e         	movs	r1, #0x4e
  3f76ae: 6019         	str	r1, [r3]
  3f76b0: ab02         	add	r3, sp, #0x8
  3f76b2: 4610         	mov	r0, r2
  3f76b4: 4619         	mov	r1, r3
  3f76b6: f000 fd9d    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0xb3a
  3f76ba: 4603         	mov	r3, r0
  3f76bc: 2202         	movs	r2, #0x2
  3f76be: 601a         	str	r2, [r3]
  3f76c0: f8df 3480    	ldr.w	r3, [pc, #0x480]        @ 0x3f7b44 <Sound::loadSoundBuffers()+0x2bf4>
  3f76c4: 447b         	add	r3, pc
  3f76c6: 4618         	mov	r0, r3
  3f76c8: f8df 347c    	ldr.w	r3, [pc, #0x47c]        @ 0x3f7b48 <Sound::loadSoundBuffers()+0x2bf8>
  3f76cc: 447b         	add	r3, pc
  3f76ce: 4619         	mov	r1, r3
  3f76d0: f8df 3478    	ldr.w	r3, [pc, #0x478]        @ 0x3f7b4c <Sound::loadSoundBuffers()+0x2bfc>
  3f76d4: 447b         	add	r3, pc
  3f76d6: 461a         	mov	r2, r3
  3f76d8: f1a2 fa1a    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a2434
  3f76dc: 4603         	mov	r3, r0
  3f76de: 935b         	str	r3, [sp, #0x16c]
  3f76e0: ab01         	add	r3, sp, #0x4
  3f76e2: 681b         	ldr	r3, [r3]
  3f76e4: 685b         	ldr	r3, [r3, #0x4]
  3f76e6: 4618         	mov	r0, r3
  3f76e8: 995b         	ldr	r1, [sp, #0x16c]
  3f76ea: 224f         	movs	r2, #0x4f
  3f76ec: f19d fb9e    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19d73c
  3f76f0: f209 fcd8    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x2099b0
  3f76f4: 4604         	mov	r4, r0
  3f76f6: 985b         	ldr	r0, [sp, #0x16c]
  3f76f8: f1a2 f916    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a222c
  3f76fc: 4603         	mov	r3, r0
  3f76fe: 4620         	mov	r0, r4
  3f7700: 4619         	mov	r1, r3
  3f7702: 2202         	movs	r2, #0x2
  3f7704: f209 fdfe    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x209bfc
  3f7708: ab01         	add	r3, sp, #0x4
  3f770a: 681b         	ldr	r3, [r3]
  3f770c: f103 0210    	add.w	r2, r3, #0x10
  3f7710: ab02         	add	r3, sp, #0x8
  3f7712: 214f         	movs	r1, #0x4f
  3f7714: 6019         	str	r1, [r3]
  3f7716: ab02         	add	r3, sp, #0x8
  3f7718: 4610         	mov	r0, r2
  3f771a: 4619         	mov	r1, r3
  3f771c: f000 fd6a    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0xad4
  3f7720: 4603         	mov	r3, r0
  3f7722: 2202         	movs	r2, #0x2
  3f7724: 601a         	str	r2, [r3]
  3f7726: f8df 3428    	ldr.w	r3, [pc, #0x428]        @ 0x3f7b50 <Sound::loadSoundBuffers()+0x2c00>
  3f772a: 447b         	add	r3, pc
  3f772c: 4618         	mov	r0, r3
  3f772e: f8df 3424    	ldr.w	r3, [pc, #0x424]        @ 0x3f7b54 <Sound::loadSoundBuffers()+0x2c04>
  3f7732: 447b         	add	r3, pc
  3f7734: 4619         	mov	r1, r3
  3f7736: f8df 3420    	ldr.w	r3, [pc, #0x420]        @ 0x3f7b58 <Sound::loadSoundBuffers()+0x2c08>
  3f773a: 447b         	add	r3, pc
  3f773c: 461a         	mov	r2, r3
  3f773e: f1a2 f9e7    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a23ce
  3f7742: 4603         	mov	r3, r0
  3f7744: 935c         	str	r3, [sp, #0x170]
  3f7746: ab01         	add	r3, sp, #0x4
  3f7748: 681b         	ldr	r3, [r3]
  3f774a: 685b         	ldr	r3, [r3, #0x4]
  3f774c: 4618         	mov	r0, r3
  3f774e: 995c         	ldr	r1, [sp, #0x170]
  3f7750: 2250         	movs	r2, #0x50
  3f7752: f19d fb6b    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19d6d6
  3f7756: f209 fca5    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20994a
  3f775a: 4604         	mov	r4, r0
  3f775c: 985c         	ldr	r0, [sp, #0x170]
  3f775e: f1a2 f8e3    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a21c6
  3f7762: 4603         	mov	r3, r0
  3f7764: 4620         	mov	r0, r4
  3f7766: 4619         	mov	r1, r3
  3f7768: 2202         	movs	r2, #0x2
  3f776a: f209 fdcb    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x209b96
  3f776e: ab01         	add	r3, sp, #0x4
  3f7770: 681b         	ldr	r3, [r3]
  3f7772: f103 0210    	add.w	r2, r3, #0x10
  3f7776: ab02         	add	r3, sp, #0x8
  3f7778: 2150         	movs	r1, #0x50
  3f777a: 6019         	str	r1, [r3]
  3f777c: ab02         	add	r3, sp, #0x8
  3f777e: 4610         	mov	r0, r2
  3f7780: 4619         	mov	r1, r3
  3f7782: f000 fd37    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0xa6e
  3f7786: 4603         	mov	r3, r0
  3f7788: 2202         	movs	r2, #0x2
  3f778a: 601a         	str	r2, [r3]
  3f778c: 4bf3         	ldr	r3, [pc, #0x3cc]        @ 0x3f7b5c <Sound::loadSoundBuffers()+0x2c0c>
  3f778e: 447b         	add	r3, pc
  3f7790: 4618         	mov	r0, r3
  3f7792: 4bf3         	ldr	r3, [pc, #0x3cc]        @ 0x3f7b60 <Sound::loadSoundBuffers()+0x2c10>
  3f7794: 447b         	add	r3, pc
  3f7796: 4619         	mov	r1, r3
  3f7798: 4bf2         	ldr	r3, [pc, #0x3c8]        @ 0x3f7b64 <Sound::loadSoundBuffers()+0x2c14>
  3f779a: 447b         	add	r3, pc
  3f779c: 461a         	mov	r2, r3
  3f779e: f1a2 f9b7    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a236e
  3f77a2: 4603         	mov	r3, r0
  3f77a4: 935d         	str	r3, [sp, #0x174]
  3f77a6: ab01         	add	r3, sp, #0x4
  3f77a8: 681b         	ldr	r3, [r3]
  3f77aa: 685b         	ldr	r3, [r3, #0x4]
  3f77ac: 4618         	mov	r0, r3
  3f77ae: 995d         	ldr	r1, [sp, #0x174]
  3f77b0: 2251         	movs	r2, #0x51
  3f77b2: f19d fb3b    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19d676
  3f77b6: f209 fc75    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x2098ea
  3f77ba: 4604         	mov	r4, r0
  3f77bc: 985d         	ldr	r0, [sp, #0x174]
  3f77be: f1a2 f8b3    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2166
  3f77c2: 4603         	mov	r3, r0
  3f77c4: 4620         	mov	r0, r4
  3f77c6: 4619         	mov	r1, r3
  3f77c8: 2202         	movs	r2, #0x2
  3f77ca: f209 fd9b    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x209b36
  3f77ce: ab01         	add	r3, sp, #0x4
  3f77d0: 681b         	ldr	r3, [r3]
  3f77d2: f103 0210    	add.w	r2, r3, #0x10
  3f77d6: ab02         	add	r3, sp, #0x8
  3f77d8: 2151         	movs	r1, #0x51
  3f77da: 6019         	str	r1, [r3]
  3f77dc: ab02         	add	r3, sp, #0x8
  3f77de: 4610         	mov	r0, r2
  3f77e0: 4619         	mov	r1, r3
  3f77e2: f000 fd07    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0xa0e
  3f77e6: 4603         	mov	r3, r0
  3f77e8: 2202         	movs	r2, #0x2
  3f77ea: 601a         	str	r2, [r3]
  3f77ec: 4bde         	ldr	r3, [pc, #0x378]        @ 0x3f7b68 <Sound::loadSoundBuffers()+0x2c18>
  3f77ee: 447b         	add	r3, pc
  3f77f0: 4618         	mov	r0, r3
  3f77f2: 4bde         	ldr	r3, [pc, #0x378]        @ 0x3f7b6c <Sound::loadSoundBuffers()+0x2c1c>
  3f77f4: 447b         	add	r3, pc
  3f77f6: 4619         	mov	r1, r3
  3f77f8: 4bdd         	ldr	r3, [pc, #0x374]        @ 0x3f7b70 <Sound::loadSoundBuffers()+0x2c20>
  3f77fa: 447b         	add	r3, pc
  3f77fc: 461a         	mov	r2, r3
  3f77fe: f1a2 f987    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a230e
  3f7802: 4603         	mov	r3, r0
  3f7804: 935e         	str	r3, [sp, #0x178]
  3f7806: ab01         	add	r3, sp, #0x4
  3f7808: 681b         	ldr	r3, [r3]
  3f780a: 685b         	ldr	r3, [r3, #0x4]
  3f780c: 4618         	mov	r0, r3
  3f780e: 995e         	ldr	r1, [sp, #0x178]
  3f7810: 2252         	movs	r2, #0x52
  3f7812: f19d fb0b    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19d616
  3f7816: f209 fc45    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20988a
  3f781a: 4604         	mov	r4, r0
  3f781c: 985e         	ldr	r0, [sp, #0x178]
  3f781e: f1a2 f883    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2106
  3f7822: 4603         	mov	r3, r0
  3f7824: 4620         	mov	r0, r4
  3f7826: 4619         	mov	r1, r3
  3f7828: 2202         	movs	r2, #0x2
  3f782a: f209 fd6b    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x209ad6
  3f782e: ab01         	add	r3, sp, #0x4
  3f7830: 681b         	ldr	r3, [r3]
  3f7832: f103 0210    	add.w	r2, r3, #0x10
  3f7836: ab02         	add	r3, sp, #0x8
  3f7838: 2152         	movs	r1, #0x52
  3f783a: 6019         	str	r1, [r3]
  3f783c: ab02         	add	r3, sp, #0x8
  3f783e: 4610         	mov	r0, r2
  3f7840: 4619         	mov	r1, r3
  3f7842: f000 fcd7    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x9ae
  3f7846: 4603         	mov	r3, r0
  3f7848: 2202         	movs	r2, #0x2
  3f784a: 601a         	str	r2, [r3]
  3f784c: 4bc9         	ldr	r3, [pc, #0x324]        @ 0x3f7b74 <Sound::loadSoundBuffers()+0x2c24>
  3f784e: 447b         	add	r3, pc
  3f7850: 4618         	mov	r0, r3
  3f7852: 4bc9         	ldr	r3, [pc, #0x324]        @ 0x3f7b78 <Sound::loadSoundBuffers()+0x2c28>
  3f7854: 447b         	add	r3, pc
  3f7856: 4619         	mov	r1, r3
  3f7858: 4bc8         	ldr	r3, [pc, #0x320]        @ 0x3f7b7c <Sound::loadSoundBuffers()+0x2c2c>
  3f785a: 447b         	add	r3, pc
  3f785c: 461a         	mov	r2, r3
  3f785e: f1a2 f957    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a22ae
  3f7862: 4603         	mov	r3, r0
  3f7864: 935f         	str	r3, [sp, #0x17c]
  3f7866: ab01         	add	r3, sp, #0x4
  3f7868: 681b         	ldr	r3, [r3]
  3f786a: 685b         	ldr	r3, [r3, #0x4]
  3f786c: 4618         	mov	r0, r3
  3f786e: 995f         	ldr	r1, [sp, #0x17c]
  3f7870: 2253         	movs	r2, #0x53
  3f7872: f19d fadb    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19d5b6
  3f7876: f209 fc15    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20982a
  3f787a: 4604         	mov	r4, r0
  3f787c: 985f         	ldr	r0, [sp, #0x17c]
  3f787e: f1a2 f853    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a20a6
  3f7882: 4603         	mov	r3, r0
  3f7884: 4620         	mov	r0, r4
  3f7886: 4619         	mov	r1, r3
  3f7888: 2202         	movs	r2, #0x2
  3f788a: f209 fd3b    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x209a76
  3f788e: ab01         	add	r3, sp, #0x4
  3f7890: 681b         	ldr	r3, [r3]
  3f7892: f103 0210    	add.w	r2, r3, #0x10
  3f7896: ab02         	add	r3, sp, #0x8
  3f7898: 2153         	movs	r1, #0x53
  3f789a: 6019         	str	r1, [r3]
  3f789c: ab02         	add	r3, sp, #0x8
  3f789e: 4610         	mov	r0, r2
  3f78a0: 4619         	mov	r1, r3
  3f78a2: f000 fca7    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x94e
  3f78a6: 4603         	mov	r3, r0
  3f78a8: 2202         	movs	r2, #0x2
  3f78aa: 601a         	str	r2, [r3]
  3f78ac: 4bb4         	ldr	r3, [pc, #0x2d0]        @ 0x3f7b80 <Sound::loadSoundBuffers()+0x2c30>
  3f78ae: 447b         	add	r3, pc
  3f78b0: 4618         	mov	r0, r3
  3f78b2: 4bb4         	ldr	r3, [pc, #0x2d0]        @ 0x3f7b84 <Sound::loadSoundBuffers()+0x2c34>
  3f78b4: 447b         	add	r3, pc
  3f78b6: 4619         	mov	r1, r3
  3f78b8: 4bb3         	ldr	r3, [pc, #0x2cc]        @ 0x3f7b88 <Sound::loadSoundBuffers()+0x2c38>
  3f78ba: 447b         	add	r3, pc
  3f78bc: 461a         	mov	r2, r3
  3f78be: f1a2 f927    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a224e
  3f78c2: 4603         	mov	r3, r0
  3f78c4: 9360         	str	r3, [sp, #0x180]
  3f78c6: ab01         	add	r3, sp, #0x4
  3f78c8: 681b         	ldr	r3, [r3]
  3f78ca: 685b         	ldr	r3, [r3, #0x4]
  3f78cc: 4618         	mov	r0, r3
  3f78ce: 9960         	ldr	r1, [sp, #0x180]
  3f78d0: 2254         	movs	r2, #0x54
  3f78d2: f19d faab    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19d556
  3f78d6: f209 fbe5    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x2097ca
  3f78da: 4604         	mov	r4, r0
  3f78dc: 9860         	ldr	r0, [sp, #0x180]
  3f78de: f1a2 f823    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a2046
  3f78e2: 4603         	mov	r3, r0
  3f78e4: 4620         	mov	r0, r4
  3f78e6: 4619         	mov	r1, r3
  3f78e8: 2202         	movs	r2, #0x2
  3f78ea: f209 fd0b    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x209a16
  3f78ee: ab01         	add	r3, sp, #0x4
  3f78f0: 681b         	ldr	r3, [r3]
  3f78f2: f103 0210    	add.w	r2, r3, #0x10
  3f78f6: ab02         	add	r3, sp, #0x8
  3f78f8: 2154         	movs	r1, #0x54
  3f78fa: 6019         	str	r1, [r3]
  3f78fc: ab02         	add	r3, sp, #0x8
  3f78fe: 4610         	mov	r0, r2
  3f7900: 4619         	mov	r1, r3
  3f7902: f000 fc77    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x8ee
  3f7906: 4603         	mov	r3, r0
  3f7908: 2202         	movs	r2, #0x2
  3f790a: 601a         	str	r2, [r3]
  3f790c: 4b9f         	ldr	r3, [pc, #0x27c]        @ 0x3f7b8c <Sound::loadSoundBuffers()+0x2c3c>
  3f790e: 447b         	add	r3, pc
  3f7910: 4618         	mov	r0, r3
  3f7912: 4b9f         	ldr	r3, [pc, #0x27c]        @ 0x3f7b90 <Sound::loadSoundBuffers()+0x2c40>
  3f7914: 447b         	add	r3, pc
  3f7916: 4619         	mov	r1, r3
  3f7918: 4b9e         	ldr	r3, [pc, #0x278]        @ 0x3f7b94 <Sound::loadSoundBuffers()+0x2c44>
  3f791a: 447b         	add	r3, pc
  3f791c: 461a         	mov	r2, r3
  3f791e: f1a2 f8f7    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a21ee
  3f7922: 4603         	mov	r3, r0
  3f7924: 9361         	str	r3, [sp, #0x184]
  3f7926: ab01         	add	r3, sp, #0x4
  3f7928: 681b         	ldr	r3, [r3]
  3f792a: 685b         	ldr	r3, [r3, #0x4]
  3f792c: 4618         	mov	r0, r3
  3f792e: 9961         	ldr	r1, [sp, #0x184]
  3f7930: 2255         	movs	r2, #0x55
  3f7932: f19d fa7b    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19d4f6
  3f7936: f209 fbb5    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20976a
  3f793a: 4604         	mov	r4, r0
  3f793c: 9861         	ldr	r0, [sp, #0x184]
  3f793e: f1a1 fff3    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a1fe6
  3f7942: 4603         	mov	r3, r0
  3f7944: 4620         	mov	r0, r4
  3f7946: 4619         	mov	r1, r3
  3f7948: 2202         	movs	r2, #0x2
  3f794a: f209 fcdb    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x2099b6
  3f794e: ab01         	add	r3, sp, #0x4
  3f7950: 681b         	ldr	r3, [r3]
  3f7952: f103 0210    	add.w	r2, r3, #0x10
  3f7956: ab02         	add	r3, sp, #0x8
  3f7958: 2155         	movs	r1, #0x55
  3f795a: 6019         	str	r1, [r3]
  3f795c: ab02         	add	r3, sp, #0x8
  3f795e: 4610         	mov	r0, r2
  3f7960: 4619         	mov	r1, r3
  3f7962: f000 fc47    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x88e
  3f7966: 4603         	mov	r3, r0
  3f7968: 2202         	movs	r2, #0x2
  3f796a: 601a         	str	r2, [r3]
  3f796c: 4b8a         	ldr	r3, [pc, #0x228]        @ 0x3f7b98 <Sound::loadSoundBuffers()+0x2c48>
  3f796e: 447b         	add	r3, pc
  3f7970: 4618         	mov	r0, r3
  3f7972: 4b8a         	ldr	r3, [pc, #0x228]        @ 0x3f7b9c <Sound::loadSoundBuffers()+0x2c4c>
  3f7974: 447b         	add	r3, pc
  3f7976: 4619         	mov	r1, r3
  3f7978: 4b89         	ldr	r3, [pc, #0x224]        @ 0x3f7ba0 <Sound::loadSoundBuffers()+0x2c50>
  3f797a: 447b         	add	r3, pc
  3f797c: 461a         	mov	r2, r3
  3f797e: f1a2 f8c7    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a218e
  3f7982: 4603         	mov	r3, r0
  3f7984: 9362         	str	r3, [sp, #0x188]
  3f7986: ab01         	add	r3, sp, #0x4
  3f7988: 681b         	ldr	r3, [r3]
  3f798a: 685b         	ldr	r3, [r3, #0x4]
  3f798c: 4618         	mov	r0, r3
  3f798e: 9962         	ldr	r1, [sp, #0x188]
  3f7990: 2256         	movs	r2, #0x56
  3f7992: f19d fa4b    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19d496
  3f7996: f209 fb85    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20970a
  3f799a: 4604         	mov	r4, r0
  3f799c: 9862         	ldr	r0, [sp, #0x188]
  3f799e: f1a1 ffc3    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a1f86
  3f79a2: 4603         	mov	r3, r0
  3f79a4: 4620         	mov	r0, r4
  3f79a6: 4619         	mov	r1, r3
  3f79a8: 2202         	movs	r2, #0x2
  3f79aa: f209 fcab    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x209956
  3f79ae: ab01         	add	r3, sp, #0x4
  3f79b0: 681b         	ldr	r3, [r3]
  3f79b2: f103 0210    	add.w	r2, r3, #0x10
  3f79b6: ab02         	add	r3, sp, #0x8
  3f79b8: 2156         	movs	r1, #0x56
  3f79ba: 6019         	str	r1, [r3]
  3f79bc: ab02         	add	r3, sp, #0x8
  3f79be: 4610         	mov	r0, r2
  3f79c0: 4619         	mov	r1, r3
  3f79c2: f000 fc17    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x82e
  3f79c6: 4603         	mov	r3, r0
  3f79c8: 2202         	movs	r2, #0x2
  3f79ca: 601a         	str	r2, [r3]
  3f79cc: 4b75         	ldr	r3, [pc, #0x1d4]        @ 0x3f7ba4 <Sound::loadSoundBuffers()+0x2c54>
  3f79ce: 447b         	add	r3, pc
  3f79d0: 4618         	mov	r0, r3
  3f79d2: 4b75         	ldr	r3, [pc, #0x1d4]        @ 0x3f7ba8 <Sound::loadSoundBuffers()+0x2c58>
  3f79d4: 447b         	add	r3, pc
  3f79d6: 4619         	mov	r1, r3
  3f79d8: 4b74         	ldr	r3, [pc, #0x1d0]        @ 0x3f7bac <Sound::loadSoundBuffers()+0x2c5c>
  3f79da: 447b         	add	r3, pc
  3f79dc: 461a         	mov	r2, r3
  3f79de: f1a2 f897    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a212e
  3f79e2: 4603         	mov	r3, r0
  3f79e4: 9363         	str	r3, [sp, #0x18c]
  3f79e6: ab01         	add	r3, sp, #0x4
  3f79e8: 681b         	ldr	r3, [r3]
  3f79ea: 685b         	ldr	r3, [r3, #0x4]
  3f79ec: 4618         	mov	r0, r3
  3f79ee: 9963         	ldr	r1, [sp, #0x18c]
  3f79f0: 2257         	movs	r2, #0x57
  3f79f2: f19d fa1b    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19d436
  3f79f6: f209 fb55    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x2096aa
  3f79fa: 4604         	mov	r4, r0
  3f79fc: 9863         	ldr	r0, [sp, #0x18c]
  3f79fe: f1a1 ff93    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a1f26
  3f7a02: 4603         	mov	r3, r0
  3f7a04: 4620         	mov	r0, r4
  3f7a06: 4619         	mov	r1, r3
  3f7a08: 2202         	movs	r2, #0x2
  3f7a0a: f209 fc7b    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x2098f6
  3f7a0e: ab01         	add	r3, sp, #0x4
  3f7a10: 681b         	ldr	r3, [r3]
  3f7a12: f103 0210    	add.w	r2, r3, #0x10
  3f7a16: ab02         	add	r3, sp, #0x8
  3f7a18: 2157         	movs	r1, #0x57
  3f7a1a: 6019         	str	r1, [r3]
  3f7a1c: ab02         	add	r3, sp, #0x8
  3f7a1e: 4610         	mov	r0, r2
  3f7a20: 4619         	mov	r1, r3
  3f7a22: f000 fbe7    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x7ce
  3f7a26: 4603         	mov	r3, r0
  3f7a28: 2202         	movs	r2, #0x2
  3f7a2a: 601a         	str	r2, [r3]
  3f7a2c: 4b60         	ldr	r3, [pc, #0x180]        @ 0x3f7bb0 <Sound::loadSoundBuffers()+0x2c60>
  3f7a2e: 447b         	add	r3, pc
  3f7a30: 4618         	mov	r0, r3
  3f7a32: 4b60         	ldr	r3, [pc, #0x180]        @ 0x3f7bb4 <Sound::loadSoundBuffers()+0x2c64>
  3f7a34: 447b         	add	r3, pc
  3f7a36: 4619         	mov	r1, r3
  3f7a38: 4b5f         	ldr	r3, [pc, #0x17c]        @ 0x3f7bb8 <Sound::loadSoundBuffers()+0x2c68>
  3f7a3a: 447b         	add	r3, pc
  3f7a3c: 461a         	mov	r2, r3
  3f7a3e: f1a2 f867    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a20ce
  3f7a42: 4603         	mov	r3, r0
  3f7a44: 9364         	str	r3, [sp, #0x190]
  3f7a46: ab01         	add	r3, sp, #0x4
  3f7a48: 681b         	ldr	r3, [r3]
  3f7a4a: 685b         	ldr	r3, [r3, #0x4]
  3f7a4c: 4618         	mov	r0, r3
  3f7a4e: 9964         	ldr	r1, [sp, #0x190]
  3f7a50: 2258         	movs	r2, #0x58
  3f7a52: f19d f9eb    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19d3d6
  3f7a56: f209 fb25    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x20964a
  3f7a5a: 4604         	mov	r4, r0
  3f7a5c: 9864         	ldr	r0, [sp, #0x190]
  3f7a5e: f1a1 ff63    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a1ec6
  3f7a62: 4603         	mov	r3, r0
  3f7a64: 4620         	mov	r0, r4
  3f7a66: 4619         	mov	r1, r3
  3f7a68: 2202         	movs	r2, #0x2
  3f7a6a: f209 fc4b    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x209896
  3f7a6e: ab01         	add	r3, sp, #0x4
  3f7a70: 681b         	ldr	r3, [r3]
  3f7a72: f103 0210    	add.w	r2, r3, #0x10
  3f7a76: ab02         	add	r3, sp, #0x8
  3f7a78: 2158         	movs	r1, #0x58
  3f7a7a: 6019         	str	r1, [r3]
  3f7a7c: ab02         	add	r3, sp, #0x8
  3f7a7e: 4610         	mov	r0, r2
  3f7a80: 4619         	mov	r1, r3
  3f7a82: f000 fbb7    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x76e
  3f7a86: 4603         	mov	r3, r0
  3f7a88: 2202         	movs	r2, #0x2
  3f7a8a: 601a         	str	r2, [r3]
  3f7a8c: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x3f7bbc <Sound::loadSoundBuffers()+0x2c6c>
  3f7a8e: 447b         	add	r3, pc
  3f7a90: 4618         	mov	r0, r3
  3f7a92: 4b4b         	ldr	r3, [pc, #0x12c]        @ 0x3f7bc0 <Sound::loadSoundBuffers()+0x2c70>
  3f7a94: 447b         	add	r3, pc
  3f7a96: 4619         	mov	r1, r3
  3f7a98: 4b4a         	ldr	r3, [pc, #0x128]        @ 0x3f7bc4 <Sound::loadSoundBuffers()+0x2c74>
  3f7a9a: 447b         	add	r3, pc
  3f7a9c: 461a         	mov	r2, r3
  3f7a9e: f1a2 f837    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a206e
  3f7aa2: 4603         	mov	r3, r0
  3f7aa4: 9365         	str	r3, [sp, #0x194]
  3f7aa6: ab01         	add	r3, sp, #0x4
  3f7aa8: 681b         	ldr	r3, [r3]
  3f7aaa: 685b         	ldr	r3, [r3, #0x4]
  3f7aac: 4618         	mov	r0, r3
  3f7aae: 9965         	ldr	r1, [sp, #0x194]
  3f7ab0: 2243         	movs	r2, #0x43
  3f7ab2: f19d f9bb    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19d376
  3f7ab6: f209 faf5    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x2095ea
  3f7aba: 4604         	mov	r4, r0
  3f7abc: 9865         	ldr	r0, [sp, #0x194]
  3f7abe: f1a1 ff33    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a1e66
  3f7ac2: 4603         	mov	r3, r0
  3f7ac4: 4620         	mov	r0, r4
  3f7ac6: 4619         	mov	r1, r3
  3f7ac8: 2202         	movs	r2, #0x2
  3f7aca: f209 fc1b    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x209836
  3f7ace: ab01         	add	r3, sp, #0x4
  3f7ad0: 681b         	ldr	r3, [r3]
  3f7ad2: f103 0210    	add.w	r2, r3, #0x10
  3f7ad6: ab02         	add	r3, sp, #0x8
  3f7ad8: 2143         	movs	r1, #0x43
  3f7ada: 6019         	str	r1, [r3]
  3f7adc: ab02         	add	r3, sp, #0x8
  3f7ade: 4610         	mov	r0, r2
  3f7ae0: 4619         	mov	r1, r3
  3f7ae2: f000 fb87    	bl	0x3f81f4 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int&&)> @ imm = #0x70e
  3f7ae6: 4603         	mov	r3, r0
  3f7ae8: 2202         	movs	r2, #0x2
  3f7aea: 601a         	str	r2, [r3]
  3f7aec: b066         	add	sp, #0x198
  3f7aee: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3f7aef); words below are literal-pool data ---
  3f7af0: 192a         	adds	r2, r5, r4
  3f7af2: 003e         	movs	r6, r7
  3f7af4: 1bb2         	subs	r2, r6, r6
  3f7af6: 003e         	movs	r6, r7
  3f7af8: 192e         	adds	r6, r5, r4
  3f7afa: 003e         	movs	r6, r7
  3f7afc: 18c4         	adds	r4, r0, r3
  3f7afe: 003e         	movs	r6, r7
  3f7b00: 1b54         	subs	r4, r2, r5
  3f7b02: 003e         	movs	r6, r7
  3f7b04: 18c8         	adds	r0, r1, r3
  3f7b06: 003e         	movs	r6, r7
  3f7b08: 185e         	adds	r6, r3, r1
  3f7b0a: 003e         	movs	r6, r7
  3f7b0c: 1af6         	subs	r6, r6, r3
  3f7b0e: 003e         	movs	r6, r7
  3f7b10: 1862         	adds	r2, r4, r1
  3f7b12: 003e         	movs	r6, r7
  3f7b14: 17f8         	asrs	r0, r7, #0x1f
  3f7b16: 003e         	movs	r6, r7
  3f7b18: 1a9c         	subs	r4, r3, r2
  3f7b1a: 003e         	movs	r6, r7
  3f7b1c: 17fc         	asrs	r4, r7, #0x1f
  3f7b1e: 003e         	movs	r6, r7
  3f7b20: 1792         	asrs	r2, r2, #0x1e
  3f7b22: 003e         	movs	r6, r7
  3f7b24: 1a42         	subs	r2, r0, r1
  3f7b26: 003e         	movs	r6, r7
  3f7b28: 1796         	asrs	r6, r2, #0x1e
  3f7b2a: 003e         	movs	r6, r7
  3f7b2c: 172c         	asrs	r4, r5, #0x1c
  3f7b2e: 003e         	movs	r6, r7
  3f7b30: 19e4         	adds	r4, r4, r7
  3f7b32: 003e         	movs	r6, r7
  3f7b34: 1730         	asrs	r0, r6, #0x1c
  3f7b36: 003e         	movs	r6, r7
  3f7b38: 16c6         	asrs	r6, r0, #0x1b
  3f7b3a: 003e         	movs	r6, r7
  3f7b3c: 198a         	adds	r2, r1, r6
  3f7b3e: 003e         	movs	r6, r7
  3f7b40: 16ca         	asrs	r2, r1, #0x1b
  3f7b42: 003e         	movs	r6, r7
  3f7b44: 1660         	asrs	r0, r4, #0x19
  3f7b46: 003e         	movs	r6, r7
  3f7b48: 192c         	adds	r4, r5, r4
  3f7b4a: 003e         	movs	r6, r7
  3f7b4c: 1664         	asrs	r4, r4, #0x19
  3f7b4e: 003e         	movs	r6, r7
  3f7b50: 15fa         	asrs	r2, r7, #0x17
  3f7b52: 003e         	movs	r6, r7
  3f7b54: 18ce         	adds	r6, r1, r3
  3f7b56: 003e         	movs	r6, r7
  3f7b58: 15fe         	asrs	r6, r7, #0x17
  3f7b5a: 003e         	movs	r6, r7
  3f7b5c: 1596         	asrs	r6, r2, #0x16
  3f7b5e: 003e         	movs	r6, r7
  3f7b60: 1874         	adds	r4, r6, r1
  3f7b62: 003e         	movs	r6, r7
  3f7b64: 159e         	asrs	r6, r3, #0x16
  3f7b66: 003e         	movs	r6, r7
  3f7b68: 1536         	asrs	r6, r6, #0x14
  3f7b6a: 003e         	movs	r6, r7
  3f7b6c: 181c         	adds	r4, r3, r0
  3f7b6e: 003e         	movs	r6, r7
  3f7b70: 153e         	asrs	r6, r7, #0x14
  3f7b72: 003e         	movs	r6, r7
  3f7b74: 14d6         	asrs	r6, r2, #0x13
  3f7b76: 003e         	movs	r6, r7
  3f7b78: 17c4         	asrs	r4, r0, #0x1f
  3f7b7a: 003e         	movs	r6, r7
  3f7b7c: 14de         	asrs	r6, r3, #0x13
  3f7b7e: 003e         	movs	r6, r7
  3f7b80: 1476         	asrs	r6, r6, #0x11
  3f7b82: 003e         	movs	r6, r7
  3f7b84: 176c         	asrs	r4, r5, #0x1d
  3f7b86: 003e         	movs	r6, r7
  3f7b88: 147e         	asrs	r6, r7, #0x11
  3f7b8a: 003e         	movs	r6, r7
  3f7b8c: 1416         	asrs	r6, r2, #0x10
  3f7b8e: 003e         	movs	r6, r7
  3f7b90: 1714         	asrs	r4, r2, #0x1c
  3f7b92: 003e         	movs	r6, r7
  3f7b94: 141e         	asrs	r6, r3, #0x10
  3f7b96: 003e         	movs	r6, r7
  3f7b98: 13b6         	asrs	r6, r6, #0xe
  3f7b9a: 003e         	movs	r6, r7
  3f7b9c: 16bc         	asrs	r4, r7, #0x1a
  3f7b9e: 003e         	movs	r6, r7
  3f7ba0: 13be         	asrs	r6, r7, #0xe
  3f7ba2: 003e         	movs	r6, r7
  3f7ba4: 1356         	asrs	r6, r2, #0xd
  3f7ba6: 003e         	movs	r6, r7
  3f7ba8: 1664         	asrs	r4, r4, #0x19
  3f7baa: 003e         	movs	r6, r7
  3f7bac: 135e         	asrs	r6, r3, #0xd
  3f7bae: 003e         	movs	r6, r7
  3f7bb0: 12f6         	asrs	r6, r6, #0xb
  3f7bb2: 003e         	movs	r6, r7
  3f7bb4: 160c         	asrs	r4, r1, #0x18
  3f7bb6: 003e         	movs	r6, r7
  3f7bb8: 12fe         	asrs	r6, r7, #0xb
  3f7bba: 003e         	movs	r6, r7
  3f7bbc: 1296         	asrs	r6, r2, #0xa
  3f7bbe: 003e         	movs	r6, r7
  3f7bc0: 15b4         	asrs	r4, r6, #0x16
  3f7bc2: 003e         	movs	r6, r7
  3f7bc4: 129e         	asrs	r6, r3, #0xa
  3f7bc6: 003e         	movs	r6, r7

// ==== Sound::loadMapSounds
//      file offset 0x3f7bc8 (= ELF address; Ghidra 0x407bc8), 12 bytes, Thumb-2
  3f7bc8: b084         	sub	sp, #0x10
  3f7bca: 9001         	str	r0, [sp, #0x4]
  3f7bcc: 9100         	str	r1, [sp]
  3f7bce: bf00         	nop
  3f7bd0: b004         	add	sp, #0x10
  3f7bd2: 4770         	bx	lr

// ==== Sound::swapEffect
//      file offset 0x3f7bd4 (= ELF address; Ghidra 0x407bd4), 180 bytes, Thumb-2
  3f7bd4: b510         	push	{r4, lr}
  3f7bd6: b086         	sub	sp, #0x18
  3f7bd8: 9003         	str	r0, [sp, #0xc]
  3f7bda: 9102         	str	r1, [sp, #0x8]
  3f7bdc: 9201         	str	r2, [sp, #0x4]
  3f7bde: 9300         	str	r3, [sp]
  3f7be0: 9b03         	ldr	r3, [sp, #0xc]
  3f7be2: 685a         	ldr	r2, [r3, #0x4]
  3f7be4: 9b02         	ldr	r3, [sp, #0x8]
  3f7be6: 4610         	mov	r0, r2
  3f7be8: 4619         	mov	r1, r3
  3f7bea: f19c fbd7    	bl	0x59439c <cocos2d::CCDictionary::objectForKey(int)> @ imm = #0x19c7ae
  3f7bee: 4603         	mov	r3, r0
  3f7bf0: 9304         	str	r3, [sp, #0x10]
  3f7bf2: 9b04         	ldr	r3, [sp, #0x10]
  3f7bf4: 2b00         	cmp	r3, #0x0
  3f7bf6: d012         	beq	0x3f7c1e <Sound::swapEffect(int, std::string, int)+0x4a> @ imm = #0x24
  3f7bf8: f209 fa54    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x2094a8
  3f7bfc: 4604         	mov	r4, r0
  3f7bfe: 9804         	ldr	r0, [sp, #0x10]
  3f7c00: f1a1 fe92    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a1d24
  3f7c04: 4603         	mov	r3, r0
  3f7c06: 4620         	mov	r0, r4
  3f7c08: 4619         	mov	r1, r3
  3f7c0a: 2200         	movs	r2, #0x0
  3f7c0c: f209 fb9a    	bl	0x601344 <CocosDenshion::SimpleAudioEngine::unloadEffect(char const*, int)> @ imm = #0x209734
  3f7c10: 9b03         	ldr	r3, [sp, #0xc]
  3f7c12: 685a         	ldr	r2, [r3, #0x4]
  3f7c14: 9b02         	ldr	r3, [sp, #0x8]
  3f7c16: 4610         	mov	r0, r2
  3f7c18: 4619         	mov	r1, r3
  3f7c1a: f19d fd9f    	bl	0x59575c <cocos2d::CCDictionary::removeObjectForKey(int)> @ imm = #0x19db3e
  3f7c1e: 9801         	ldr	r0, [sp, #0x4]
  3f7c20: f3bd fb6e    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3bd6dc
  3f7c24: 4603         	mov	r3, r0
  3f7c26: 4a16         	ldr	r2, [pc, #0x58]         @ 0x3f7c80 <Sound::swapEffect(int, std::string, int)+0xac>
  3f7c28: 447a         	add	r2, pc
  3f7c2a: 4610         	mov	r0, r2
  3f7c2c: 4619         	mov	r1, r3
  3f7c2e: 4b15         	ldr	r3, [pc, #0x54]         @ 0x3f7c84 <Sound::swapEffect(int, std::string, int)+0xb0>
  3f7c30: 447b         	add	r3, pc
  3f7c32: 461a         	mov	r2, r3
  3f7c34: f1a1 ff6c    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1a1ed8
  3f7c38: 4603         	mov	r3, r0
  3f7c3a: 9305         	str	r3, [sp, #0x14]
  3f7c3c: 9b03         	ldr	r3, [sp, #0xc]
  3f7c3e: 685a         	ldr	r2, [r3, #0x4]
  3f7c40: 9b02         	ldr	r3, [sp, #0x8]
  3f7c42: 4610         	mov	r0, r2
  3f7c44: 9905         	ldr	r1, [sp, #0x14]
  3f7c46: 461a         	mov	r2, r3
  3f7c48: f19d f8f0    	bl	0x594e2c <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, int)> @ imm = #0x19d1e0
  3f7c4c: f209 fa2a    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x209454
  3f7c50: 4604         	mov	r4, r0
  3f7c52: 9805         	ldr	r0, [sp, #0x14]
  3f7c54: f1a1 fe68    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a1cd0
  3f7c58: 4603         	mov	r3, r0
  3f7c5a: 4620         	mov	r0, r4
  3f7c5c: 4619         	mov	r1, r3
  3f7c5e: 9a00         	ldr	r2, [sp]
  3f7c60: f209 fb50    	bl	0x601304 <CocosDenshion::SimpleAudioEngine::preloadEffect(char const*, int)> @ imm = #0x2096a0
  3f7c64: 9b03         	ldr	r3, [sp, #0xc]
  3f7c66: f103 0210    	add.w	r2, r3, #0x10
  3f7c6a: ab02         	add	r3, sp, #0x8
  3f7c6c: 4610         	mov	r0, r2
  3f7c6e: 4619         	mov	r1, r3
  3f7c70: f7ce f996    	bl	0x3c5fa0 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int const&)> @ imm = #-0x31cd4
  3f7c74: 4603         	mov	r3, r0
  3f7c76: 9a00         	ldr	r2, [sp]
  3f7c78: 601a         	str	r2, [r3]
  3f7c7a: b006         	add	sp, #0x18
  3f7c7c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3f7c7d); words below are literal-pool data ---
  3f7c7e: bf00         	nop
  3f7c80: 10fc         	asrs	r4, r7, #0x3
  3f7c82: 003e         	movs	r6, r7
  3f7c84: 1108         	asrs	r0, r1, #0x4
  3f7c86: 003e         	movs	r6, r7

// ==== Sound::isPlayingMusic
//      file offset 0x3f7c88 (= ELF address; Ghidra 0x407c88), 28 bytes, Thumb-2
  3f7c88: b500         	push	{lr}
  3f7c8a: b083         	sub	sp, #0xc
  3f7c8c: 9001         	str	r0, [sp, #0x4]
  3f7c8e: f209 fa09    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x209412
  3f7c92: 4603         	mov	r3, r0
  3f7c94: 4618         	mov	r0, r3
  3f7c96: f209 fa9b    	bl	0x6011d0 <CocosDenshion::SimpleAudioEngine::isBackgroundMusicPlaying()> @ imm = #0x209536
  3f7c9a: 4603         	mov	r3, r0
  3f7c9c: 4618         	mov	r0, r3
  3f7c9e: b003         	add	sp, #0xc
  3f7ca0: f85d fb04    	ldr	pc, [sp], #4

// ==== Sound::playMusicFile
//      file offset 0x3f7ca4 (= ELF address; Ghidra 0x407ca4), 98 bytes, Thumb-2
  3f7ca4: b510         	push	{r4, lr}
  3f7ca6: b084         	sub	sp, #0x10
  3f7ca8: 9003         	str	r0, [sp, #0xc]
  3f7caa: 9102         	str	r1, [sp, #0x8]
  3f7cac: 9201         	str	r2, [sp, #0x4]
  3f7cae: f88d 3003    	strb.w	r3, [sp, #0x3]
  3f7cb2: 9b03         	ldr	r3, [sp, #0xc]
  3f7cb4: f893 3029    	ldrb.w	r3, [r3, #0x29]
  3f7cb8: 2b00         	cmp	r3, #0x0
  3f7cba: d00a         	beq	0x3f7cd2 <Sound::playMusicFile(std::string, float, bool)+0x2e> @ imm = #0x14
  3f7cbc: 9803         	ldr	r0, [sp, #0xc]
  3f7cbe: f7ff ffe3    	bl	0x3f7c88 <Sound::isPlayingMusic()> @ imm = #-0x3a
  3f7cc2: 4603         	mov	r3, r0
  3f7cc4: f083 0301    	eor	r3, r3, #0x1
  3f7cc8: b2db         	uxtb	r3, r3
  3f7cca: 2b00         	cmp	r3, #0x0
  3f7ccc: d001         	beq	0x3f7cd2 <Sound::playMusicFile(std::string, float, bool)+0x2e> @ imm = #0x2
  3f7cce: 2301         	movs	r3, #0x1
  3f7cd0: e000         	b	0x3f7cd4 <Sound::playMusicFile(std::string, float, bool)+0x30> @ imm = #0x0
  3f7cd2: 2300         	movs	r3, #0x0
  3f7cd4: 2b00         	cmp	r3, #0x0
  3f7cd6: d00d         	beq	0x3f7cf4 <Sound::playMusicFile(std::string, float, bool)+0x50> @ imm = #0x1a
  3f7cd8: f209 f9e4    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x2093c8
  3f7cdc: 4604         	mov	r4, r0
  3f7cde: 9802         	ldr	r0, [sp, #0x8]
  3f7ce0: f3bd fb0e    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x3bd61c
  3f7ce4: 4602         	mov	r2, r0
  3f7ce6: f89d 3003    	ldrb.w	r3, [sp, #0x3]
  3f7cea: 4620         	mov	r0, r4
  3f7cec: 4611         	mov	r1, r2
  3f7cee: 461a         	mov	r2, r3
  3f7cf0: f209 fa1e    	bl	0x601130 <CocosDenshion::SimpleAudioEngine::playBackgroundMusic(char const*, bool)> @ imm = #0x20943c
  3f7cf4: f209 f9d6    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x2093ac
  3f7cf8: 4603         	mov	r3, r0
  3f7cfa: 4618         	mov	r0, r3
  3f7cfc: 9901         	ldr	r1, [sp, #0x4]
  3f7cfe: f209 fa7b    	bl	0x6011f8 <CocosDenshion::SimpleAudioEngine::setBackgroundMusicVolume(float)> @ imm = #0x2094f6
  3f7d02: b004         	add	sp, #0x10
  3f7d04: bd10         	pop	{r4, pc}

// ==== Sound::stopMusic
//      file offset 0x3f7d08 (= ELF address; Ghidra 0x407d08), 24 bytes, Thumb-2
  3f7d08: b500         	push	{lr}
  3f7d0a: b083         	sub	sp, #0xc
  3f7d0c: 9001         	str	r0, [sp, #0x4]
  3f7d0e: f209 f9c9    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x209392
  3f7d12: 4603         	mov	r3, r0
  3f7d14: 4618         	mov	r0, r3
  3f7d16: f7fc fdb9    	bl	0x3f488c <CocosDenshion::SimpleAudioEngine::stopBackgroundMusic()> @ imm = #-0x348e
  3f7d1a: b003         	add	sp, #0xc
  3f7d1c: f85d fb04    	ldr	pc, [sp], #4

// ==== Sound::stopAll
//      file offset 0x3f7d20 (= ELF address; Ghidra 0x407d20), 30 bytes, Thumb-2
  3f7d20: b500         	push	{lr}
  3f7d22: b083         	sub	sp, #0xc
  3f7d24: 9001         	str	r0, [sp, #0x4]
  3f7d26: 9801         	ldr	r0, [sp, #0x4]
  3f7d28: f7ff ffee    	bl	0x3f7d08 <Sound::stopMusic()> @ imm = #-0x24
  3f7d2c: f209 f9ba    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x209374
  3f7d30: 4603         	mov	r3, r0
  3f7d32: 4618         	mov	r0, r3
  3f7d34: f209 fb4e    	bl	0x6013d4 <CocosDenshion::SimpleAudioEngine::stopAllEffects()> @ imm = #0x20969c
  3f7d38: b003         	add	sp, #0xc
  3f7d3a: f85d fb04    	ldr	pc, [sp], #4

// ==== Sound::playSoundWithVoice
//      file offset 0x3f7d40 (= ELF address; Ghidra 0x407d40), 128 bytes, Thumb-2
  3f7d40: b530         	push	{r4, r5, lr}
  3f7d42: b08b         	sub	sp, #0x2c
  3f7d44: 9007         	str	r0, [sp, #0x1c]
  3f7d46: 9106         	str	r1, [sp, #0x18]
  3f7d48: 9205         	str	r2, [sp, #0x14]
  3f7d4a: 9b07         	ldr	r3, [sp, #0x1c]
  3f7d4c: f893 3028    	ldrb.w	r3, [r3, #0x28]
  3f7d50: 2b00         	cmp	r3, #0x0
  3f7d52: d02b         	beq	0x3f7dac <Sound::playSoundWithVoice(int, int)+0x6c> @ imm = #0x56
  3f7d54: 9b07         	ldr	r3, [sp, #0x1c]
  3f7d56: 685a         	ldr	r2, [r3, #0x4]
  3f7d58: 9b06         	ldr	r3, [sp, #0x18]
  3f7d5a: 4610         	mov	r0, r2
  3f7d5c: 4619         	mov	r1, r3
  3f7d5e: f19c fb1d    	bl	0x59439c <cocos2d::CCDictionary::objectForKey(int)> @ imm = #0x19c63a
  3f7d62: 4603         	mov	r3, r0
  3f7d64: 9309         	str	r3, [sp, #0x24]
  3f7d66: 9b09         	ldr	r3, [sp, #0x24]
  3f7d68: 2b00         	cmp	r3, #0x0
  3f7d6a: d01f         	beq	0x3f7dac <Sound::playSoundWithVoice(int, int)+0x6c> @ imm = #0x3e
  3f7d6c: f209 f99a    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x209334
  3f7d70: 4605         	mov	r5, r0
  3f7d72: 9809         	ldr	r0, [sp, #0x24]
  3f7d74: f1a1 fdd8    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a1bb0
  3f7d78: 4604         	mov	r4, r0
  3f7d7a: 9b07         	ldr	r3, [sp, #0x1c]
  3f7d7c: f103 0210    	add.w	r2, r3, #0x10
  3f7d80: ab06         	add	r3, sp, #0x18
  3f7d82: 4610         	mov	r0, r2
  3f7d84: 4619         	mov	r1, r3
  3f7d86: f7ce f90b    	bl	0x3c5fa0 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int const&)> @ imm = #-0x31dea
  3f7d8a: 4603         	mov	r3, r0
  3f7d8c: 681b         	ldr	r3, [r3]
  3f7d8e: 9a07         	ldr	r2, [sp, #0x1c]
  3f7d90: 6b51         	ldr	r1, [r2, #0x34]
  3f7d92: 9a07         	ldr	r2, [sp, #0x1c]
  3f7d94: 6b12         	ldr	r2, [r2, #0x30]
  3f7d96: 9100         	str	r1, [sp]
  3f7d98: f04f 0100    	mov.w	r1, #0x0
  3f7d9c: 9101         	str	r1, [sp, #0x4]
  3f7d9e: 9202         	str	r2, [sp, #0x8]
  3f7da0: 4628         	mov	r0, r5
  3f7da2: 4621         	mov	r1, r4
  3f7da4: 461a         	mov	r2, r3
  3f7da6: 2300         	movs	r3, #0x0
  3f7da8: f209 fa44    	bl	0x601234 <CocosDenshion::SimpleAudioEngine::playEffect(char const*, int, bool, float, float, float)> @ imm = #0x209488
  3f7dac: 9b07         	ldr	r3, [sp, #0x1c]
  3f7dae: f04f 527e    	mov.w	r2, #0x3f800000
  3f7db2: 631a         	str	r2, [r3, #0x30]
  3f7db4: 9b07         	ldr	r3, [sp, #0x1c]
  3f7db6: f04f 527e    	mov.w	r2, #0x3f800000
  3f7dba: 635a         	str	r2, [r3, #0x34]
  3f7dbc: b00b         	add	sp, #0x2c
  3f7dbe: bd30         	pop	{r4, r5, pc}

// ==== Sound::playSound
//      file offset 0x3f7dc0 (= ELF address; Ghidra 0x407dc0), 44 bytes, Thumb-2
  3f7dc0: b510         	push	{r4, lr}
  3f7dc2: b082         	sub	sp, #0x8
  3f7dc4: 9001         	str	r0, [sp, #0x4]
  3f7dc6: 9100         	str	r1, [sp]
  3f7dc8: 9c00         	ldr	r4, [sp]
  3f7dca: 9b01         	ldr	r3, [sp, #0x4]
  3f7dcc: f103 0210    	add.w	r2, r3, #0x10
  3f7dd0: 466b         	mov	r3, sp
  3f7dd2: 4610         	mov	r0, r2
  3f7dd4: 4619         	mov	r1, r3
  3f7dd6: f7ce f8e3    	bl	0x3c5fa0 <std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int>>>::operator[](int const&)> @ imm = #-0x31e3a
  3f7dda: 4603         	mov	r3, r0
  3f7ddc: 681b         	ldr	r3, [r3]
  3f7dde: 9801         	ldr	r0, [sp, #0x4]
  3f7de0: 4621         	mov	r1, r4
  3f7de2: 461a         	mov	r2, r3
  3f7de4: f7ff ffac    	bl	0x3f7d40 <Sound::playSoundWithVoice(int, int)> @ imm = #-0xa8
  3f7de8: b002         	add	sp, #0x8
  3f7dea: bd10         	pop	{r4, pc}

// ==== Sound::loopSoundVP
//      file offset 0x3f7dec (= ELF address; Ghidra 0x407dec), 114 bytes, Thumb-2
  3f7dec: b510         	push	{r4, lr}
  3f7dee: b08a         	sub	sp, #0x28
  3f7df0: 9007         	str	r0, [sp, #0x1c]
  3f7df2: 9106         	str	r1, [sp, #0x18]
  3f7df4: 9205         	str	r2, [sp, #0x14]
  3f7df6: 9304         	str	r3, [sp, #0x10]
  3f7df8: 9b07         	ldr	r3, [sp, #0x1c]
  3f7dfa: 9a05         	ldr	r2, [sp, #0x14]
  3f7dfc: 631a         	str	r2, [r3, #0x30]
  3f7dfe: 9b07         	ldr	r3, [sp, #0x1c]
  3f7e00: 9a04         	ldr	r2, [sp, #0x10]
  3f7e02: 635a         	str	r2, [r3, #0x34]
  3f7e04: 9b07         	ldr	r3, [sp, #0x1c]
  3f7e06: f893 3028    	ldrb.w	r3, [r3, #0x28]
  3f7e0a: 2b00         	cmp	r3, #0x0
  3f7e0c: d01d         	beq	0x3f7e4a <Sound::loopSoundVP(int, float, float)+0x5e> @ imm = #0x3a
  3f7e0e: 9b07         	ldr	r3, [sp, #0x1c]
  3f7e10: 685b         	ldr	r3, [r3, #0x4]
  3f7e12: 4618         	mov	r0, r3
  3f7e14: 9906         	ldr	r1, [sp, #0x18]
  3f7e16: f19c fac1    	bl	0x59439c <cocos2d::CCDictionary::objectForKey(int)> @ imm = #0x19c582
  3f7e1a: 4603         	mov	r3, r0
  3f7e1c: 9309         	str	r3, [sp, #0x24]
  3f7e1e: f209 f941    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x209282
  3f7e22: 4604         	mov	r4, r0
  3f7e24: 9809         	ldr	r0, [sp, #0x24]
  3f7e26: f1a1 fd7f    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1a1afe
  3f7e2a: 4603         	mov	r3, r0
  3f7e2c: 9a07         	ldr	r2, [sp, #0x1c]
  3f7e2e: 6b51         	ldr	r1, [r2, #0x34]
  3f7e30: 9a07         	ldr	r2, [sp, #0x1c]
  3f7e32: 6b12         	ldr	r2, [r2, #0x30]
  3f7e34: 9100         	str	r1, [sp]
  3f7e36: f04f 0100    	mov.w	r1, #0x0
  3f7e3a: 9101         	str	r1, [sp, #0x4]
  3f7e3c: 9202         	str	r2, [sp, #0x8]
  3f7e3e: 4620         	mov	r0, r4
  3f7e40: 4619         	mov	r1, r3
  3f7e42: 2200         	movs	r2, #0x0
  3f7e44: 2301         	movs	r3, #0x1
  3f7e46: f209 f9f5    	bl	0x601234 <CocosDenshion::SimpleAudioEngine::playEffect(char const*, int, bool, float, float, float)> @ imm = #0x2093ea
  3f7e4a: 9b07         	ldr	r3, [sp, #0x1c]
  3f7e4c: f04f 527e    	mov.w	r2, #0x3f800000
  3f7e50: 631a         	str	r2, [r3, #0x30]
  3f7e52: 9b07         	ldr	r3, [sp, #0x1c]
  3f7e54: f04f 527e    	mov.w	r2, #0x3f800000
  3f7e58: 635a         	str	r2, [r3, #0x34]
  3f7e5a: b00a         	add	sp, #0x28
  3f7e5c: bd10         	pop	{r4, pc}

// ==== Sound::stopSound
//      file offset 0x3f7e60 (= ELF address; Ghidra 0x407e60), 32 bytes, Thumb-2
  3f7e60: b500         	push	{lr}
  3f7e62: b083         	sub	sp, #0xc
  3f7e64: 9001         	str	r0, [sp, #0x4]
  3f7e66: 9100         	str	r1, [sp]
  3f7e68: f209 f91c    	bl	0x6010a4 <CocosDenshion::SimpleAudioEngine::sharedEngine()> @ imm = #0x209238
  3f7e6c: 4602         	mov	r2, r0
  3f7e6e: 9b00         	ldr	r3, [sp]
  3f7e70: 4610         	mov	r0, r2
  3f7e72: 4619         	mov	r1, r3
  3f7e74: 2200         	movs	r2, #0x0
  3f7e76: f209 fa39    	bl	0x6012ec <CocosDenshion::SimpleAudioEngine::stopEffect(unsigned int, int)> @ imm = #0x209472
  3f7e7a: b003         	add	sp, #0xc
  3f7e7c: f85d fb04    	ldr	pc, [sp], #4

// ==== Sound::playSoundVP
//      file offset 0x3f7e80 (= ELF address; Ghidra 0x407e80), 38 bytes, Thumb-2
  3f7e80: b500         	push	{lr}
  3f7e82: b085         	sub	sp, #0x14
  3f7e84: 9003         	str	r0, [sp, #0xc]
  3f7e86: 9102         	str	r1, [sp, #0x8]
  3f7e88: 9201         	str	r2, [sp, #0x4]
  3f7e8a: 9300         	str	r3, [sp]
  3f7e8c: 9b03         	ldr	r3, [sp, #0xc]
  3f7e8e: 9a01         	ldr	r2, [sp, #0x4]
  3f7e90: 631a         	str	r2, [r3, #0x30]
  3f7e92: 9b03         	ldr	r3, [sp, #0xc]
  3f7e94: 9a00         	ldr	r2, [sp]
  3f7e96: 635a         	str	r2, [r3, #0x34]
  3f7e98: 9803         	ldr	r0, [sp, #0xc]
  3f7e9a: 9902         	ldr	r1, [sp, #0x8]
  3f7e9c: f7ff ff90    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #-0xe0
  3f7ea0: b005         	add	sp, #0x14
  3f7ea2: f85d fb04    	ldr	pc, [sp], #4

// ==== Sound::volumeForPosition
//      file offset 0x3f7ea8 (= ELF address; Ghidra 0x407ea8), 336 bytes, Thumb-2
  3f7ea8: b082         	sub	sp, #0x8
  3f7eaa: b500         	push	{lr}
  3f7eac: b08d         	sub	sp, #0x34
  3f7eae: 9001         	str	r0, [sp, #0x4]
  3f7eb0: a90e         	add	r1, sp, #0x38
  3f7eb2: e881 000c    	stm.w	r1, {r2, r3}
  3f7eb6: 4b4e         	ldr	r3, [pc, #0x138]        @ 0x3f7ff0 <Sound::volumeForPosition(cpVect, int, int)+0x148>
  3f7eb8: 447b         	add	r3, pc
  3f7eba: 4a4e         	ldr	r2, [pc, #0x138]        @ 0x3f7ff4 <Sound::volumeForPosition(cpVect, int, int)+0x14c>
  3f7ebc: 589a         	ldr	r2, [r3, r2]
  3f7ebe: edd2 7a00    	vldr	s15, [r2]
  3f7ec2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  3f7ec6: 4a4b         	ldr	r2, [pc, #0x12c]        @ 0x3f7ff4 <Sound::volumeForPosition(cpVect, int, int)+0x14c>
  3f7ec8: 589b         	ldr	r3, [r3, r2]
  3f7eca: edd3 7a01    	vldr	s15, [r3, #4]
  3f7ece: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  3f7ed2: ab04         	add	r3, sp, #0x10
  3f7ed4: 4618         	mov	r0, r3
  3f7ed6: eeb0 0b46    	vmov.f64	d0, d6
  3f7eda: eeb0 1b47    	vmov.f64	d1, d7
  3f7ede: f7fc fcdf    	bl	0x3f48a0 <CocosDenshion::SimpleAudioEngine::stopBackgroundMusic()+0x14> @ imm = #-0x3642
  3f7ee2: ab08         	add	r3, sp, #0x20
  3f7ee4: ed9d 4b0e    	vldr	d4, [sp, #56]
  3f7ee8: ed9d 5b10    	vldr	d5, [sp, #64]
  3f7eec: ed9d 6b04    	vldr	d6, [sp, #16]
  3f7ef0: ed9d 7b06    	vldr	d7, [sp, #24]
  3f7ef4: 4618         	mov	r0, r3
  3f7ef6: eeb0 0b44    	vmov.f64	d0, d4
  3f7efa: eeb0 1b45    	vmov.f64	d1, d5
  3f7efe: eeb0 2b46    	vmov.f64	d2, d6
  3f7f02: eeb0 3b47    	vmov.f64	d3, d7
  3f7f06: f7fc fcdf    	bl	0x3f48c8 <CocosDenshion::SimpleAudioEngine::stopBackgroundMusic()+0x3c> @ imm = #-0x3642
  3f7f0a: ab08         	add	r3, sp, #0x20
  3f7f0c: cb0f         	ldm	r3, {r0, r1, r2, r3}
  3f7f0e: f2df f8d3    	bl	0x6d70b8 <cpvlength>    @ imm = #0x2df1a6
  3f7f12: ec41 0b17    	vmov	d7, r0, r1
  3f7f16: eef7 7bc7    	vcvt.f32.f64	s15, d7
  3f7f1a: edcd 7a03    	vstr	s15, [sp, #12]
  3f7f1e: 9b12         	ldr	r3, [sp, #0x48]
  3f7f20: ee06 3a90    	vmov	s13, r3
  3f7f24: eeb8 7ae6    	vcvt.f32.s32	s14, s13
  3f7f28: eddd 7a03    	vldr	s15, [sp, #12]
  3f7f2c: ee37 7a67    	vsub.f32	s14, s14, s15
  3f7f30: 9b13         	ldr	r3, [sp, #0x4c]
  3f7f32: ee06 3a90    	vmov	s13, r3
  3f7f36: eef8 7ae6    	vcvt.f32.s32	s15, s13
  3f7f3a: ee87 7a27    	vdiv.f32	s14, s14, s15
  3f7f3e: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3f7f42: eeb4 7ae7    	vcmpe.f32	s14, s15
  3f7f46: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f7f4a: d518         	bpl	0x3f7f7e <Sound::volumeForPosition(cpVect, int, int)+0xd6> @ imm = #0x30
  3f7f4c: 9b12         	ldr	r3, [sp, #0x48]
  3f7f4e: ee07 3a90    	vmov	s15, r3
  3f7f52: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3f7f56: eddd 7a03    	vldr	s15, [sp, #12]
  3f7f5a: ee37 7a67    	vsub.f32	s14, s14, s15
  3f7f5e: 9b13         	ldr	r3, [sp, #0x4c]
  3f7f60: ee06 3a90    	vmov	s13, r3
  3f7f64: eef8 7ae6    	vcvt.f32.s32	s15, s13
  3f7f68: eec7 7a27    	vdiv.f32	s15, s14, s15
  3f7f6c: eef5 7ac0    	vcmpe.f32	s15, #0
  3f7f70: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f7f74: bfd4         	ite	le
  3f7f76: 2300         	movle	r3, #0x0
  3f7f78: 2301         	movgt	r3, #0x1
  3f7f7a: b2db         	uxtb	r3, r3
  3f7f7c: e000         	b	0x3f7f80 <Sound::volumeForPosition(cpVect, int, int)+0xd8> @ imm = #0x0
  3f7f7e: 2301         	movs	r3, #0x1
  3f7f80: 2b00         	cmp	r3, #0x0
  3f7f82: d02c         	beq	0x3f7fde <Sound::volumeForPosition(cpVect, int, int)+0x136> @ imm = #0x58
  3f7f84: 9b12         	ldr	r3, [sp, #0x48]
  3f7f86: ee07 3a90    	vmov	s15, r3
  3f7f8a: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3f7f8e: eddd 7a03    	vldr	s15, [sp, #12]
  3f7f92: ee37 7a67    	vsub.f32	s14, s14, s15
  3f7f96: 9b13         	ldr	r3, [sp, #0x4c]
  3f7f98: ee06 3a90    	vmov	s13, r3
  3f7f9c: eef8 7ae6    	vcvt.f32.s32	s15, s13
  3f7fa0: ee87 7a27    	vdiv.f32	s14, s14, s15
  3f7fa4: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3f7fa8: eeb4 7ae7    	vcmpe.f32	s14, s15
  3f7fac: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  3f7fb0: d510         	bpl	0x3f7fd4 <Sound::volumeForPosition(cpVect, int, int)+0x12c> @ imm = #0x20
  3f7fb2: 9b12         	ldr	r3, [sp, #0x48]
  3f7fb4: ee07 3a90    	vmov	s15, r3
  3f7fb8: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  3f7fbc: eddd 7a03    	vldr	s15, [sp, #12]
  3f7fc0: ee37 7a67    	vsub.f32	s14, s14, s15
  3f7fc4: 9b13         	ldr	r3, [sp, #0x4c]
  3f7fc6: ee06 3a90    	vmov	s13, r3
  3f7fca: eef8 7ae6    	vcvt.f32.s32	s15, s13
  3f7fce: eec7 7a27    	vdiv.f32	s15, s14, s15
  3f7fd2: e001         	b	0x3f7fd8 <Sound::volumeForPosition(cpVect, int, int)+0x130> @ imm = #0x2
  3f7fd4: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  3f7fd8: ee17 3a90    	vmov	r3, s15
  3f7fdc: e001         	b	0x3f7fe2 <Sound::volumeForPosition(cpVect, int, int)+0x13a> @ imm = #0x2
  3f7fde: f04f 0300    	mov.w	r3, #0x0
  3f7fe2: 4618         	mov	r0, r3
  3f7fe4: b00d         	add	sp, #0x34
  3f7fe6: f85d eb04    	ldr	lr, [sp], #4
  3f7fea: b002         	add	sp, #0x8
  3f7fec: 4770         	bx	lr
  ; --- end of code (Ghidra body ends at 0x3f7fed); words below are literal-pool data ---
  3f7fee: bf00         	nop
  3f7ff0: ab50         	add	r3, sp, #0x140
  3f7ff2: 0053         	lsls	r3, r2, #0x1
  3f7ff4: d728         	bvc	0x3f8048 <Sound::playSoundPositionVP(int, cpVect, float, float)+0x4> @ imm = #0x50
  3f7ff6: ffff b082    	<unknown>

// ==== Sound::playSoundPosition
//      file offset 0x3f7ff8 (= ELF address; Ghidra 0x407ff8), 76 bytes, Thumb-2
  3f7ff8: b082         	sub	sp, #0x8
  3f7ffa: b500         	push	{lr}
  3f7ffc: b087         	sub	sp, #0x1c
  3f7ffe: 9005         	str	r0, [sp, #0x14]
  3f8000: 9104         	str	r1, [sp, #0x10]
  3f8002: a908         	add	r1, sp, #0x20
  3f8004: e881 000c    	stm.w	r1, {r2, r3}
  3f8008: f44f 737a    	mov.w	r3, #0x3e8
  3f800c: 9302         	str	r3, [sp, #0x8]
  3f800e: f240 5314    	movw	r3, #0x514
  3f8012: 9303         	str	r3, [sp, #0xc]
  3f8014: 466b         	mov	r3, sp
  3f8016: aa0a         	add	r2, sp, #0x28
  3f8018: e892 0003    	ldm.w	r2, {r0, r1}
  3f801c: e883 0003    	stm.w	r3, {r0, r1}
  3f8020: a908         	add	r1, sp, #0x20
  3f8022: e891 000c    	ldm.w	r1, {r2, r3}
  3f8026: 9805         	ldr	r0, [sp, #0x14]
  3f8028: f7ff ff3e    	bl	0x3f7ea8 <Sound::volumeForPosition(cpVect, int, int)> @ imm = #-0x184
  3f802c: 4602         	mov	r2, r0
  3f802e: 9b05         	ldr	r3, [sp, #0x14]
  3f8030: 631a         	str	r2, [r3, #0x30]
  3f8032: 9805         	ldr	r0, [sp, #0x14]
  3f8034: 9904         	ldr	r1, [sp, #0x10]
  3f8036: f7ff fec3    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #-0x27a
  3f803a: b007         	add	sp, #0x1c
  3f803c: f85d eb04    	ldr	lr, [sp], #4
  3f8040: b002         	add	sp, #0x8
  3f8042: 4770         	bx	lr

// ==== Sound::playSoundPositionVP
//      file offset 0x3f8044 (= ELF address; Ghidra 0x408044), 94 bytes, Thumb-2
  3f8044: b082         	sub	sp, #0x8
  3f8046: b500         	push	{lr}
  3f8048: b087         	sub	sp, #0x1c
  3f804a: 9005         	str	r0, [sp, #0x14]
  3f804c: 9104         	str	r1, [sp, #0x10]
  3f804e: a908         	add	r1, sp, #0x20
  3f8050: e881 000c    	stm.w	r1, {r2, r3}
  3f8054: f44f 737a    	mov.w	r3, #0x3e8
  3f8058: 9302         	str	r3, [sp, #0x8]
  3f805a: f240 5314    	movw	r3, #0x514
  3f805e: 9303         	str	r3, [sp, #0xc]
  3f8060: 466b         	mov	r3, sp
  3f8062: aa0a         	add	r2, sp, #0x28
  3f8064: e892 0003    	ldm.w	r2, {r0, r1}
  3f8068: e883 0003    	stm.w	r3, {r0, r1}
  3f806c: a908         	add	r1, sp, #0x20
  3f806e: e891 000c    	ldm.w	r1, {r2, r3}
  3f8072: 9805         	ldr	r0, [sp, #0x14]
  3f8074: f7ff ff18    	bl	0x3f7ea8 <Sound::volumeForPosition(cpVect, int, int)> @ imm = #-0x1d0
  3f8078: ee07 0a10    	vmov	s14, r0
  3f807c: eddd 7a0c    	vldr	s15, [sp, #48]
  3f8080: ee67 7a27    	vmul.f32	s15, s14, s15
  3f8084: 9b05         	ldr	r3, [sp, #0x14]
  3f8086: edc3 7a0c    	vstr	s15, [r3, #48]
  3f808a: 9b05         	ldr	r3, [sp, #0x14]
  3f808c: 9a0d         	ldr	r2, [sp, #0x34]
  3f808e: 635a         	str	r2, [r3, #0x34]
  3f8090: 9805         	ldr	r0, [sp, #0x14]
  3f8092: 9904         	ldr	r1, [sp, #0x10]
  3f8094: f7ff fe94    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #-0x2d8
  3f8098: b007         	add	sp, #0x1c
  3f809a: f85d eb04    	ldr	lr, [sp], #4
  3f809e: b002         	add	sp, #0x8
  3f80a0: 4770         	bx	lr

// ==== Sound::playTaunt
//      file offset 0x3f80a4 (= ELF address; Ghidra 0x4080a4), 90 bytes, Thumb-2
  3f80a4: b082         	sub	sp, #0x8
  3f80a6: b510         	push	{r4, lr}
  3f80a8: b086         	sub	sp, #0x18
  3f80aa: 9003         	str	r0, [sp, #0xc]
  3f80ac: 9102         	str	r1, [sp, #0x8]
  3f80ae: a908         	add	r1, sp, #0x20
  3f80b0: e881 000c    	stm.w	r1, {r2, r3}
  3f80b4: 9b03         	ldr	r3, [sp, #0xc]
  3f80b6: 689b         	ldr	r3, [r3, #0x8]
  3f80b8: 4618         	mov	r0, r3
  3f80ba: 9902         	ldr	r1, [sp, #0x8]
  3f80bc: f19b ff18    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x19be30
  3f80c0: 4603         	mov	r3, r0
  3f80c2: 9305         	str	r3, [sp, #0x14]
  3f80c4: 9b05         	ldr	r3, [sp, #0x14]
  3f80c6: 2b00         	cmp	r3, #0x0
  3f80c8: d012         	beq	0x3f80f0 <Sound::playTaunt(std::string, cpVect)+0x4c> @ imm = #0x24
  3f80ca: 9805         	ldr	r0, [sp, #0x14]
  3f80cc: f6f4 fec2    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x10b27c
  3f80d0: 4604         	mov	r4, r0
  3f80d2: 466b         	mov	r3, sp
  3f80d4: aa0a         	add	r2, sp, #0x28
  3f80d6: e892 0003    	ldm.w	r2, {r0, r1}
  3f80da: e883 0003    	stm.w	r3, {r0, r1}
  3f80de: a908         	add	r1, sp, #0x20
  3f80e0: e891 000c    	ldm.w	r1, {r2, r3}
  3f80e4: 9803         	ldr	r0, [sp, #0xc]
  3f80e6: 4621         	mov	r1, r4
  3f80e8: f7ff ff86    	bl	0x3f7ff8 <Sound::playSoundPosition(int, cpVect)> @ imm = #-0xf4
  3f80ec: 2301         	movs	r3, #0x1
  3f80ee: e000         	b	0x3f80f2 <Sound::playTaunt(std::string, cpVect)+0x4e> @ imm = #0x0
  3f80f0: 2300         	movs	r3, #0x0
  3f80f2: 4618         	mov	r0, r3
  3f80f4: b006         	add	sp, #0x18
  3f80f6: e8bd 4010    	pop.w	{r4, lr}
  3f80fa: b002         	add	sp, #0x8
  3f80fc: 4770         	bx	lr

// ==== Sound::getRandomTaunt
//      file offset 0x3f8100 (= ELF address; Ghidra 0x408100), 108 bytes, Thumb-2
  3f8100: b510         	push	{r4, lr}
  3f8102: b084         	sub	sp, #0x10
  3f8104: 9001         	str	r0, [sp, #0x4]
  3f8106: f7fc fbbb    	bl	0x3f4880 <SoldierView::setLegTexture(cocos2d::CCTexture2D*)+0x2a4> @ imm = #-0x388a
  3f810a: 4603         	mov	r3, r0
  3f810c: 461c         	mov	r4, r3
  3f810e: 9b01         	ldr	r3, [sp, #0x4]
  3f8110: 68db         	ldr	r3, [r3, #0xc]
  3f8112: 4618         	mov	r0, r3
  3f8114: f1a1 ffe4    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1a1fc8
  3f8118: 4603         	mov	r3, r0
  3f811a: 4620         	mov	r0, r4
  3f811c: 4619         	mov	r1, r3
  3f811e: f3c6 fc5d    	bl	0x7be9dc <__aeabi_uidivmod> @ imm = #0x3c68ba
  3f8122: 460b         	mov	r3, r1
  3f8124: 4618         	mov	r0, r3
  3f8126: f7fc fba1    	bl	0x3f486c <SoldierView::setLegTexture(cocos2d::CCTexture2D*)+0x290> @ imm = #-0x38be
  3f812a: 9002         	str	r0, [sp, #0x8]
  3f812c: 9c02         	ldr	r4, [sp, #0x8]
  3f812e: 9b01         	ldr	r3, [sp, #0x4]
  3f8130: 68db         	ldr	r3, [r3, #0xc]
  3f8132: 4618         	mov	r0, r3
  3f8134: f1a1 ffd4    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1a1fa8
  3f8138: 4603         	mov	r3, r0
  3f813a: 429c         	cmp	r4, r3
  3f813c: bf34         	ite	lo
  3f813e: 2300         	movlo	r3, #0x0
  3f8140: 2301         	movhs	r3, #0x1
  3f8142: b2db         	uxtb	r3, r3
  3f8144: 2b00         	cmp	r3, #0x0
  3f8146: d001         	beq	0x3f814c <Sound::getRandomTaunt()+0x4c> @ imm = #0x2
  3f8148: 2300         	movs	r3, #0x0
  3f814a: 9302         	str	r3, [sp, #0x8]
  3f814c: 9b01         	ldr	r3, [sp, #0x4]
  3f814e: 68da         	ldr	r2, [r3, #0xc]
  3f8150: 9b02         	ldr	r3, [sp, #0x8]
  3f8152: 4610         	mov	r0, r2
  3f8154: 4619         	mov	r1, r3
  3f8156: f1a1 ffe3    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1a1fc6
  3f815a: 4603         	mov	r3, r0
  3f815c: 9303         	str	r3, [sp, #0xc]
  3f815e: 9803         	ldr	r0, [sp, #0xc]
  3f8160: f6f4 fe78    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0x10b310
  3f8164: 4603         	mov	r3, r0
  3f8166: 4618         	mov	r0, r3
  3f8168: b004         	add	sp, #0x10
  3f816a: bd10         	pop	{r4, pc}
