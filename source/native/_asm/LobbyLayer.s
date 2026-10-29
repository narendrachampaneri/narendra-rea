// LobbyLayer: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 18 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../LobbyLayer.cpp

// ==== LobbyLayer::create
//      file offset 0x350dc4 (= ELF address; Ghidra 0x360dc4), 112 bytes, Thumb-2
  350dc4: b510         	push	{r4, lr}
  350dc6: b082         	sub	sp, #0x8
  350dc8: f44f 7088    	mov.w	r0, #0x110
  350dcc: f036 f5ca    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x436b94
  350dd0: 4603         	mov	r3, r0
  350dd2: 461c         	mov	r4, r3
  350dd4: 4620         	mov	r0, r4
  350dd6: f000 f8e7    	bl	0x350fa8 <LobbyLayer::LobbyLayer()> @ imm = #0x1ce
  350dda: 9401         	str	r4, [sp, #0x4]
  350ddc: 9b01         	ldr	r3, [sp, #0x4]
  350dde: 2b00         	cmp	r3, #0x0
  350de0: d00a         	beq	0x350df8 <LobbyLayer::create()+0x34> @ imm = #0x14
  350de2: 9b01         	ldr	r3, [sp, #0x4]
  350de4: 681b         	ldr	r3, [r3]
  350de6: 3318         	adds	r3, #0x18
  350de8: 681b         	ldr	r3, [r3]
  350dea: 9801         	ldr	r0, [sp, #0x4]
  350dec: 4798         	blx	r3
  350dee: 4603         	mov	r3, r0
  350df0: 2b00         	cmp	r3, #0x0
  350df2: d001         	beq	0x350df8 <LobbyLayer::create()+0x34> @ imm = #0x2
  350df4: 2301         	movs	r3, #0x1
  350df6: e000         	b	0x350dfa <LobbyLayer::create()+0x36> @ imm = #0x0
  350df8: 2300         	movs	r3, #0x0
  350dfa: 2b00         	cmp	r3, #0x0
  350dfc: d005         	beq	0x350e0a <LobbyLayer::create()+0x46> @ imm = #0xa
  350dfe: 9b01         	ldr	r3, [sp, #0x4]
  350e00: 4618         	mov	r0, r3
  350e02: f247 f87b    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x2470f6
  350e06: 9b01         	ldr	r3, [sp, #0x4]
  350e08: e011         	b	0x350e2e <LobbyLayer::create()+0x6a> @ imm = #0x22
  350e0a: 9b01         	ldr	r3, [sp, #0x4]
  350e0c: 2b00         	cmp	r3, #0x0
  350e0e: d005         	beq	0x350e1c <LobbyLayer::create()+0x58> @ imm = #0xa
  350e10: 9b01         	ldr	r3, [sp, #0x4]
  350e12: 681b         	ldr	r3, [r3]
  350e14: 3308         	adds	r3, #0x8
  350e16: 681b         	ldr	r3, [r3]
  350e18: 9801         	ldr	r0, [sp, #0x4]
  350e1a: 4798         	blx	r3
  350e1c: 2300         	movs	r3, #0x0
  350e1e: 9301         	str	r3, [sp, #0x4]
  350e20: 2300         	movs	r3, #0x0
  350e22: e004         	b	0x350e2e <LobbyLayer::create()+0x6a> @ imm = #0x8
  350e24: 4620         	mov	r0, r4
  350e26: f037 f13d    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x43727a
  350e2a: f037 f13f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x43727e
  350e2e: 4618         	mov	r0, r3
  350e30: b002         	add	sp, #0x8
  350e32: bd10         	pop	{r4, pc}

// ==== LobbyLayer::LobbyLayer
//      file offset 0x350fa8 (= ELF address; Ghidra 0x360fa8), 112 bytes, Thumb-2
  350fa8: b510         	push	{r4, lr}
  350faa: b082         	sub	sp, #0x8
  350fac: 9001         	str	r0, [sp, #0x4]
  350fae: 4c18         	ldr	r4, [pc, #0x60]         @ 0x351010 <LobbyLayer::LobbyLayer()+0x68>
  350fb0: 447c         	add	r4, pc
  350fb2: 9b01         	ldr	r3, [sp, #0x4]
  350fb4: 4618         	mov	r0, r3
  350fb6: f25c f851    	bl	0x5ad05c <cocos2d::CCLayer::CCLayer()> @ imm = #0x25c0a2
  350fba: 9b01         	ldr	r3, [sp, #0x4]
  350fbc: f503 7384    	add.w	r3, r3, #0x108
  350fc0: 4618         	mov	r0, r3
  350fc2: f7ff ffdf    	bl	0x350f84 <LobbyDelegate::LobbyDelegate()> @ imm = #-0x42
  350fc6: 9b01         	ldr	r3, [sp, #0x4]
  350fc8: 4a12         	ldr	r2, [pc, #0x48]         @ 0x351014 <LobbyLayer::LobbyLayer()+0x6c>
  350fca: 58a2         	ldr	r2, [r4, r2]
  350fcc: 3208         	adds	r2, #0x8
  350fce: 601a         	str	r2, [r3]
  350fd0: 9b01         	ldr	r3, [sp, #0x4]
  350fd2: 4a10         	ldr	r2, [pc, #0x40]         @ 0x351014 <LobbyLayer::LobbyLayer()+0x6c>
  350fd4: 58a2         	ldr	r2, [r4, r2]
  350fd6: f502 7207    	add.w	r2, r2, #0x21c
  350fda: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  350fde: 9b01         	ldr	r3, [sp, #0x4]
  350fe0: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x351014 <LobbyLayer::LobbyLayer()+0x6c>
  350fe2: 58a2         	ldr	r2, [r4, r2]
  350fe4: f502 7213    	add.w	r2, r2, #0x24c
  350fe8: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  350fec: 9b01         	ldr	r3, [sp, #0x4]
  350fee: 4a09         	ldr	r2, [pc, #0x24]         @ 0x351014 <LobbyLayer::LobbyLayer()+0x6c>
  350ff0: 58a2         	ldr	r2, [r4, r2]
  350ff2: f502 7216    	add.w	r2, r2, #0x258
  350ff6: f8c3 20ec    	str.w	r2, [r3, #0xec]
  350ffa: 9b01         	ldr	r3, [sp, #0x4]
  350ffc: 4a05         	ldr	r2, [pc, #0x14]         @ 0x351014 <LobbyLayer::LobbyLayer()+0x6c>
  350ffe: 58a2         	ldr	r2, [r4, r2]
  351000: f502 721a    	add.w	r2, r2, #0x268
  351004: f8c3 2108    	str.w	r2, [r3, #0x108]
  351008: 9b01         	ldr	r3, [sp, #0x4]
  35100a: 4618         	mov	r0, r3
  35100c: b002         	add	sp, #0x8
  35100e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x35100f); words below are literal-pool data ---
  351010: 1a58         	subs	r0, r3, r1
  351012: 005e         	lsls	r6, r3, #0x1
  351014: db5c         	blt	0x3510d0 <LobbyLayer::init()+0xb8> @ imm = #0xb8
  351016: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== LobbyLayer::init
//      file offset 0x351018 (= ELF address; Ghidra 0x361018), 780 bytes, Thumb-2
  351018: b530         	push	{r4, r5, lr}
  35101a: b08d         	sub	sp, #0x34
  35101c: 9003         	str	r0, [sp, #0xc]
  35101e: 4cb7         	ldr	r4, [pc, #0x2dc]        @ 0x3512fc <LobbyLayer::init()+0x2e4>
  351020: 447c         	add	r4, pc
  351022: 9b03         	ldr	r3, [sp, #0xc]
  351024: 4618         	mov	r0, r3
  351026: f25c f8e7    	bl	0x5ad1f8 <cocos2d::CCLayer::init()> @ imm = #0x25c1ce
  35102a: 4603         	mov	r3, r0
  35102c: f88d 301e    	strb.w	r3, [sp, #0x1e]
  351030: f89d 301e    	ldrb.w	r3, [sp, #0x1e]
  351034: f083 0301    	eor	r3, r3, #0x1
  351038: b2db         	uxtb	r3, r3
  35103a: 2b00         	cmp	r3, #0x0
  35103c: d001         	beq	0x351042 <LobbyLayer::init()+0x2a> @ imm = #0x2
  35103e: 2300         	movs	r3, #0x0
  351040: e158         	b	0x3512f4 <LobbyLayer::init()+0x2dc> @ imm = #0x2b0
  351042: 9b03         	ldr	r3, [sp, #0xc]
  351044: 2200         	movs	r2, #0x0
  351046: f8c3 210c    	str.w	r2, [r3, #0x10c]
  35104a: f291 faef    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x2915de
  35104e: 4603         	mov	r3, r0
  351050: 4618         	mov	r0, r3
  351052: 4bab         	ldr	r3, [pc, #0x2ac]        @ 0x351300 <LobbyLayer::init()+0x2e8>
  351054: 447b         	add	r3, pc
  351056: 4619         	mov	r1, r3
  351058: 2200         	movs	r2, #0x0
  35105a: f291 f8e5    	bl	0x5e2228 <cocos2d::CCUserDefault::getIntegerForKey(char const*, int)> @ imm = #0x2911ca
  35105e: 4603         	mov	r3, r0
  351060: 930b         	str	r3, [sp, #0x2c]
  351062: 9b0b         	ldr	r3, [sp, #0x2c]
  351064: 2b00         	cmp	r3, #0x0
  351066: dd59         	ble	0x35111c <LobbyLayer::init()+0x104> @ imm = #0xb2
  351068: 4ba6         	ldr	r3, [pc, #0x298]        @ 0x351304 <LobbyLayer::init()+0x2ec>
  35106a: 58e3         	ldr	r3, [r4, r3]
  35106c: 681b         	ldr	r3, [r3]
  35106e: 2b04         	cmp	r3, #0x4
  351070: d154         	bne	0x35111c <LobbyLayer::init()+0x104> @ imm = #0xa8
  351072: ab06         	add	r3, sp, #0x18
  351074: 4618         	mov	r0, r3
  351076: f039 f1bd    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x43937a
  35107a: aa09         	add	r2, sp, #0x24
  35107c: ab06         	add	r3, sp, #0x18
  35107e: 4610         	mov	r0, r2
  351080: 4aa1         	ldr	r2, [pc, #0x284]        @ 0x351308 <LobbyLayer::init()+0x2f0>
  351082: 447a         	add	r2, pc
  351084: 4611         	mov	r1, r2
  351086: 461a         	mov	r2, r3
  351088: f065 f4ea    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4659d4
  35108c: ab07         	add	r3, sp, #0x1c
  35108e: 4618         	mov	r0, r3
  351090: f039 f1b0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x439360
  351094: aa0a         	add	r2, sp, #0x28
  351096: ab07         	add	r3, sp, #0x1c
  351098: 4610         	mov	r0, r2
  35109a: 4a9c         	ldr	r2, [pc, #0x270]        @ 0x35130c <LobbyLayer::init()+0x2f4>
  35109c: 447a         	add	r2, pc
  35109e: 4611         	mov	r1, r2
  3510a0: 461a         	mov	r2, r3
  3510a2: f065 f4dd    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4659ba
  3510a6: ab05         	add	r3, sp, #0x14
  3510a8: 4618         	mov	r0, r3
  3510aa: f039 f1a3    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x439346
  3510ae: aa08         	add	r2, sp, #0x20
  3510b0: ab05         	add	r3, sp, #0x14
  3510b2: 4610         	mov	r0, r2
  3510b4: 4a96         	ldr	r2, [pc, #0x258]        @ 0x351310 <LobbyLayer::init()+0x2f8>
  3510b6: 447a         	add	r2, pc
  3510b8: 4611         	mov	r1, r2
  3510ba: 461a         	mov	r2, r3
  3510bc: f065 f4d0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4659a0
  3510c0: ab08         	add	r3, sp, #0x20
  3510c2: 4618         	mov	r0, r3
  3510c4: f248 fcba    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x248974
  3510c8: 4603         	mov	r3, r0
  3510ca: 4618         	mov	r0, r3
  3510cc: 2100         	movs	r1, #0x0
  3510ce: f248 fe9f    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x248d3e
  3510d2: 4603         	mov	r3, r0
  3510d4: 9803         	ldr	r0, [sp, #0xc]
  3510d6: a909         	add	r1, sp, #0x24
  3510d8: aa0a         	add	r2, sp, #0x28
  3510da: 2500         	movs	r5, #0x0
  3510dc: 9500         	str	r5, [sp]
  3510de: 9001         	str	r0, [sp, #0x4]
  3510e0: 488c         	ldr	r0, [pc, #0x230]        @ 0x351314 <LobbyLayer::init()+0x2fc>
  3510e2: 5820         	ldr	r0, [r4, r0]
  3510e4: f78e fb86    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x718f4
  3510e8: ab08         	add	r3, sp, #0x20
  3510ea: 4618         	mov	r0, r3
  3510ec: f064 f412    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x464824
  3510f0: ab05         	add	r3, sp, #0x14
  3510f2: 4618         	mov	r0, r3
  3510f4: f039 f182    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x439304
  3510f8: ab0a         	add	r3, sp, #0x28
  3510fa: 4618         	mov	r0, r3
  3510fc: f064 f40a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x464814
  351100: ab07         	add	r3, sp, #0x1c
  351102: 4618         	mov	r0, r3
  351104: f039 f17a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4392f4
  351108: ab09         	add	r3, sp, #0x24
  35110a: 4618         	mov	r0, r3
  35110c: f064 f402    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x464804
  351110: ab06         	add	r3, sp, #0x18
  351112: 4618         	mov	r0, r3
  351114: f039 f172    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4392e4
  351118: 2301         	movs	r3, #0x1
  35111a: e0eb         	b	0x3512f4 <LobbyLayer::init()+0x2dc> @ imm = #0x1d6
  35111c: f026 fd10    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x26a20
  351120: 4603         	mov	r3, r0
  351122: 4618         	mov	r0, r3
  351124: f029 fafe    	bl	0x37a724 <NetworkManager::isUsingHostedServer()> @ imm = #0x295fc
  351128: 4603         	mov	r3, r0
  35112a: f88d 301f    	strb.w	r3, [sp, #0x1f]
  35112e: 4b75         	ldr	r3, [pc, #0x1d4]        @ 0x351304 <LobbyLayer::init()+0x2ec>
  351130: 58e3         	ldr	r3, [r4, r3]
  351132: 681b         	ldr	r3, [r3]
  351134: 3b02         	subs	r3, #0x2
  351136: 2b03         	cmp	r3, #0x3
  351138: f200 8085    	bhi.w	0x351246 <LobbyLayer::init()+0x22e> @ imm = #0x10a
  35113c: a102         	adr	r1, #8 <LobbyLayer::init()+0x12a>
  35113e: f851 2023    	ldr.w	r2, [r1, r3, lsl #2]
  351142: 4411         	add	r1, r2
  351144: 4708         	bx	r1
  351146: bf00         	nop
  351148: 00f1         	lsls	r1, r6, #0x3
  35114a: 0000         	movs	r0, r0
  35114c: 0011         	movs	r1, r2
  35114e: 0000         	movs	r0, r0
  351150: 00cd         	lsls	r5, r1, #0x3
  351152: 0000         	movs	r0, r0
  351154: 006f         	lsls	r7, r5, #0x1
  351156: 0000         	movs	r0, r0
  351158: f7ff fe6c    	bl	0x350e34 <PlayerLobbyLocal::create()> @ imm = #-0x328
  35115c: 4602         	mov	r2, r0
  35115e: 9b03         	ldr	r3, [sp, #0xc]
  351160: f8c3 210c    	str.w	r2, [r3, #0x10c]
  351164: 4b6c         	ldr	r3, [pc, #0x1b0]        @ 0x351318 <LobbyLayer::init()+0x300>
  351166: 58e3         	ldr	r3, [r4, r3]
  351168: 781b         	ldrb	r3, [r3]
  35116a: 2b00         	cmp	r3, #0x0
  35116c: d022         	beq	0x3511b4 <LobbyLayer::init()+0x19c> @ imm = #0x44
  35116e: 9b03         	ldr	r3, [sp, #0xc]
  351170: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  351174: 681b         	ldr	r3, [r3]
  351176: f503 73e4    	add.w	r3, r3, #0x1c8
  35117a: 681c         	ldr	r4, [r3]
  35117c: 9b03         	ldr	r3, [sp, #0xc]
  35117e: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  351182: ab09         	add	r3, sp, #0x24
  351184: 4618         	mov	r0, r3
  351186: f039 f135    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x43926a
  35118a: aa0a         	add	r2, sp, #0x28
  35118c: ab09         	add	r3, sp, #0x24
  35118e: 4610         	mov	r0, r2
  351190: 4a62         	ldr	r2, [pc, #0x188]        @ 0x35131c <LobbyLayer::init()+0x304>
  351192: 447a         	add	r2, pc
  351194: 4611         	mov	r1, r2
  351196: 461a         	mov	r2, r3
  351198: f065 f462    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4658c4
  35119c: ab0a         	add	r3, sp, #0x28
  35119e: 4628         	mov	r0, r5
  3511a0: 4619         	mov	r1, r3
  3511a2: 47a0         	blx	r4
  3511a4: ab0a         	add	r3, sp, #0x28
  3511a6: 4618         	mov	r0, r3
  3511a8: f064 f3b4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x464768
  3511ac: ab09         	add	r3, sp, #0x24
  3511ae: 4618         	mov	r0, r3
  3511b0: f039 f124    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x439248
  3511b4: e048         	b	0x351248 <LobbyLayer::init()+0x230> @ imm = #0x90
  3511b6: f7ff fe3d    	bl	0x350e34 <PlayerLobbyLocal::create()> @ imm = #-0x386
  3511ba: 4602         	mov	r2, r0
  3511bc: 9b03         	ldr	r3, [sp, #0xc]
  3511be: f8c3 210c    	str.w	r2, [r3, #0x10c]
  3511c2: 4b55         	ldr	r3, [pc, #0x154]        @ 0x351318 <LobbyLayer::init()+0x300>
  3511c4: 58e3         	ldr	r3, [r4, r3]
  3511c6: 781b         	ldrb	r3, [r3]
  3511c8: 2b00         	cmp	r3, #0x0
  3511ca: d022         	beq	0x351212 <LobbyLayer::init()+0x1fa> @ imm = #0x44
  3511cc: 9b03         	ldr	r3, [sp, #0xc]
  3511ce: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3511d2: 681b         	ldr	r3, [r3]
  3511d4: f503 73e4    	add.w	r3, r3, #0x1c8
  3511d8: 681c         	ldr	r4, [r3]
  3511da: 9b03         	ldr	r3, [sp, #0xc]
  3511dc: f8d3 510c    	ldr.w	r5, [r3, #0x10c]
  3511e0: ab09         	add	r3, sp, #0x24
  3511e2: 4618         	mov	r0, r3
  3511e4: f039 f106    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x43920c
  3511e8: aa0a         	add	r2, sp, #0x28
  3511ea: ab09         	add	r3, sp, #0x24
  3511ec: 4610         	mov	r0, r2
  3511ee: 4a4c         	ldr	r2, [pc, #0x130]        @ 0x351320 <LobbyLayer::init()+0x308>
  3511f0: 447a         	add	r2, pc
  3511f2: 4611         	mov	r1, r2
  3511f4: 461a         	mov	r2, r3
  3511f6: f065 f433    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x465866
  3511fa: ab0a         	add	r3, sp, #0x28
  3511fc: 4628         	mov	r0, r5
  3511fe: 4619         	mov	r1, r3
  351200: 47a0         	blx	r4
  351202: ab0a         	add	r3, sp, #0x28
  351204: 4618         	mov	r0, r3
  351206: f064 f385    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46470a
  35120a: ab09         	add	r3, sp, #0x24
  35120c: 4618         	mov	r0, r3
  35120e: f039 f0f5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x4391ea
  351212: e019         	b	0x351248 <LobbyLayer::init()+0x230> @ imm = #0x32
  351214: f89d 301f    	ldrb.w	r3, [sp, #0x1f]
  351218: 2b00         	cmp	r3, #0x0
  35121a: d006         	beq	0x35122a <LobbyLayer::init()+0x212> @ imm = #0xc
  35121c: f7ff fe42    	bl	0x350ea4 <PlayerLobbyOnlineHosted::create()> @ imm = #-0x37c
  351220: 4602         	mov	r2, r0
  351222: 9b03         	ldr	r3, [sp, #0xc]
  351224: f8c3 210c    	str.w	r2, [r3, #0x10c]
  351228: e00e         	b	0x351248 <LobbyLayer::init()+0x230> @ imm = #0x1c
  35122a: f7ff fe73    	bl	0x350f14 <PlayerLobbyOnline::create()> @ imm = #-0x31a
  35122e: 4602         	mov	r2, r0
  351230: 9b03         	ldr	r3, [sp, #0xc]
  351232: f8c3 210c    	str.w	r2, [r3, #0x10c]
  351236: e007         	b	0x351248 <LobbyLayer::init()+0x230> @ imm = #0xe
  351238: f7ff fe6c    	bl	0x350f14 <PlayerLobbyOnline::create()> @ imm = #-0x328
  35123c: 4602         	mov	r2, r0
  35123e: 9b03         	ldr	r3, [sp, #0xc]
  351240: f8c3 210c    	str.w	r2, [r3, #0x10c]
  351244: e000         	b	0x351248 <LobbyLayer::init()+0x230> @ imm = #0x0
  351246: bf00         	nop
  351248: 9b03         	ldr	r3, [sp, #0xc]
  35124a: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  35124e: 4618         	mov	r0, r3
  351250: f246 fe4a    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x246c94
  351254: 9b03         	ldr	r3, [sp, #0xc]
  351256: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  35125a: 681b         	ldr	r3, [r3]
  35125c: f503 730d    	add.w	r3, r3, #0x234
  351260: 681b         	ldr	r3, [r3]
  351262: 9a03         	ldr	r2, [sp, #0xc]
  351264: f8d2 110c    	ldr.w	r1, [r2, #0x10c]
  351268: 9a03         	ldr	r2, [sp, #0xc]
  35126a: f502 7284    	add.w	r2, r2, #0x108
  35126e: 4608         	mov	r0, r1
  351270: 4611         	mov	r1, r2
  351272: 4798         	blx	r3
  351274: 9b03         	ldr	r3, [sp, #0xc]
  351276: 681b         	ldr	r3, [r3]
  351278: 33c8         	adds	r3, #0xc8
  35127a: 681b         	ldr	r3, [r3]
  35127c: 9903         	ldr	r1, [sp, #0xc]
  35127e: 9a03         	ldr	r2, [sp, #0xc]
  351280: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  351284: 4608         	mov	r0, r1
  351286: 4611         	mov	r1, r2
  351288: 4798         	blx	r3
  35128a: 2301         	movs	r3, #0x1
  35128c: e032         	b	0x3512f4 <LobbyLayer::init()+0x2dc> @ imm = #0x64
  35128e: ab08         	add	r3, sp, #0x20
  351290: 4618         	mov	r0, r3
  351292: f064 f33f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46467e
  351296: e7ff         	b	0x351298 <LobbyLayer::init()+0x280> @ imm = #-0x2
  351298: ab05         	add	r3, sp, #0x14
  35129a: 4618         	mov	r0, r3
  35129c: f039 f0ae    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43915c
  3512a0: ab0a         	add	r3, sp, #0x28
  3512a2: 4618         	mov	r0, r3
  3512a4: f064 f336    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46466c
  3512a8: e7ff         	b	0x3512aa <LobbyLayer::init()+0x292> @ imm = #-0x2
  3512aa: ab07         	add	r3, sp, #0x1c
  3512ac: 4618         	mov	r0, r3
  3512ae: f039 f0a5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43914a
  3512b2: ab09         	add	r3, sp, #0x24
  3512b4: 4618         	mov	r0, r3
  3512b6: f064 f32d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46465a
  3512ba: e7ff         	b	0x3512bc <LobbyLayer::init()+0x2a4> @ imm = #-0x2
  3512bc: ab06         	add	r3, sp, #0x18
  3512be: 4618         	mov	r0, r3
  3512c0: f039 f09c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x439138
  3512c4: f036 f6f2    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x436de4
  3512c8: ab0a         	add	r3, sp, #0x28
  3512ca: 4618         	mov	r0, r3
  3512cc: f064 f322    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x464644
  3512d0: e7ff         	b	0x3512d2 <LobbyLayer::init()+0x2ba> @ imm = #-0x2
  3512d2: ab09         	add	r3, sp, #0x24
  3512d4: 4618         	mov	r0, r3
  3512d6: f039 f091    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x439122
  3512da: f036 f6e7    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x436dce
  3512de: ab0a         	add	r3, sp, #0x28
  3512e0: 4618         	mov	r0, r3
  3512e2: f064 f317    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x46462e
  3512e6: e7ff         	b	0x3512e8 <LobbyLayer::init()+0x2d0> @ imm = #-0x2
  3512e8: ab09         	add	r3, sp, #0x24
  3512ea: 4618         	mov	r0, r3
  3512ec: f039 f086    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x43910c
  3512f0: f036 f6dc    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x436db8
  3512f4: 4618         	mov	r0, r3
  3512f6: b00d         	add	sp, #0x34
  3512f8: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3512f9); words below are literal-pool data ---
  3512fa: bf00         	nop
  3512fc: 19e8         	adds	r0, r5, r7
  3512fe: 005e         	lsls	r6, r3, #0x1
  351300: a8b0         	add	r0, sp, #0x2c0
  351302: 0047         	lsls	r7, r0, #0x1
  351304: d838         	bhi	0x351378 <LobbyLayer::~LobbyLayer()+0x54> @ imm = #0x70
  351306: ffff a88e    	vtbl.8	d26, {d31}, d14
  35130a: 0047         	lsls	r7, r0, #0x1
  35130c: a884         	add	r0, sp, #0x210
  35130e: 0047         	lsls	r7, r0, #0x1
  351310: a8c6         	add	r0, sp, #0x318
  351312: 0047         	lsls	r7, r0, #0x1
  351314: db60         	blt	0x3513d8 <LobbyLayer::messageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #0xc0
  351316: ffff da54    	<unknown>
  35131a: ffff a7ee    	<unknown>
  35131e: 0047         	lsls	r7, r0, #0x1
  351320: a790         	adr	r7, #576 <LobbyLayer::~LobbyLayer()>
  351322: 0047         	lsls	r7, r0, #0x1

// ==== LobbyLayer::~LobbyLayer
//      file offset 0x351324 (= ELF address; Ghidra 0x361324), 136 bytes, Thumb-2
  351324: b500         	push	{lr}
  351326: b083         	sub	sp, #0xc
  351328: 9001         	str	r0, [sp, #0x4]
  35132a: 4b1e         	ldr	r3, [pc, #0x78]         @ 0x3513a4 <LobbyLayer::~LobbyLayer()+0x80>
  35132c: 447b         	add	r3, pc
  35132e: 9a01         	ldr	r2, [sp, #0x4]
  351330: 491d         	ldr	r1, [pc, #0x74]         @ 0x3513a8 <LobbyLayer::~LobbyLayer()+0x84>
  351332: 5859         	ldr	r1, [r3, r1]
  351334: 3108         	adds	r1, #0x8
  351336: 6011         	str	r1, [r2]
  351338: 9a01         	ldr	r2, [sp, #0x4]
  35133a: 491b         	ldr	r1, [pc, #0x6c]         @ 0x3513a8 <LobbyLayer::~LobbyLayer()+0x84>
  35133c: 5859         	ldr	r1, [r3, r1]
  35133e: f501 7107    	add.w	r1, r1, #0x21c
  351342: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  351346: 9a01         	ldr	r2, [sp, #0x4]
  351348: 4917         	ldr	r1, [pc, #0x5c]         @ 0x3513a8 <LobbyLayer::~LobbyLayer()+0x84>
  35134a: 5859         	ldr	r1, [r3, r1]
  35134c: f501 7113    	add.w	r1, r1, #0x24c
  351350: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  351354: 9a01         	ldr	r2, [sp, #0x4]
  351356: 4914         	ldr	r1, [pc, #0x50]         @ 0x3513a8 <LobbyLayer::~LobbyLayer()+0x84>
  351358: 5859         	ldr	r1, [r3, r1]
  35135a: f501 7116    	add.w	r1, r1, #0x258
  35135e: f8c2 10ec    	str.w	r1, [r2, #0xec]
  351362: 9a01         	ldr	r2, [sp, #0x4]
  351364: 4910         	ldr	r1, [pc, #0x40]         @ 0x3513a8 <LobbyLayer::~LobbyLayer()+0x84>
  351366: 585b         	ldr	r3, [r3, r1]
  351368: f503 731a    	add.w	r3, r3, #0x268
  35136c: f8c2 3108    	str.w	r3, [r2, #0x108]
  351370: 9b01         	ldr	r3, [sp, #0x4]
  351372: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  351376: 2b00         	cmp	r3, #0x0
  351378: d005         	beq	0x351386 <LobbyLayer::~LobbyLayer()+0x62> @ imm = #0xa
  35137a: 9b01         	ldr	r3, [sp, #0x4]
  35137c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  351380: 4618         	mov	r0, r3
  351382: f246 fd99    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x246b32
  351386: 9b01         	ldr	r3, [sp, #0x4]
  351388: 4618         	mov	r0, r3
  35138a: f25b fedf    	bl	0x5ad14c <cocos2d::CCLayer::~CCLayer()> @ imm = #0x25bdbe
  35138e: 2300         	movs	r3, #0x0
  351390: 2b00         	cmp	r3, #0x0
  351392: d002         	beq	0x35139a <LobbyLayer::~LobbyLayer()+0x76> @ imm = #0x4
  351394: 9801         	ldr	r0, [sp, #0x4]
  351396: f036 f685    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x436d0a
  35139a: 9b01         	ldr	r3, [sp, #0x4]
  35139c: 4618         	mov	r0, r3
  35139e: b003         	add	sp, #0xc
  3513a0: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x3513a3); words below are literal-pool data ---
  3513a4: 16dc         	asrs	r4, r3, #0x1b
  3513a6: 005e         	lsls	r6, r3, #0x1
  3513a8: db5c         	blt	0x351464 <LobbyLayer::onExit()+0x14> @ imm = #0xb8
  3513aa: ffff f1a0    	<unknown>

// ==== LobbyLayer::~LobbyLayer
//      file offset 0x3513ac (= ELF address; Ghidra 0x3613ac), 8 bytes, Thumb-2
  3513ac: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3513b0: f7ff bfb8    	b.w	0x351324 <LobbyLayer::~LobbyLayer()> @ imm = #-0x90

// ==== LobbyLayer::~LobbyLayer
//      file offset 0x3513b4 (= ELF address; Ghidra 0x3613b4), 28 bytes, Thumb-2
  3513b4: b500         	push	{lr}
  3513b6: b083         	sub	sp, #0xc
  3513b8: 9001         	str	r0, [sp, #0x4]
  3513ba: 9801         	ldr	r0, [sp, #0x4]
  3513bc: f7ff ffb2    	bl	0x351324 <LobbyLayer::~LobbyLayer()> @ imm = #-0x9c
  3513c0: 9801         	ldr	r0, [sp, #0x4]
  3513c2: f036 f66f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x436cde
  3513c6: 9b01         	ldr	r3, [sp, #0x4]
  3513c8: 4618         	mov	r0, r3
  3513ca: b003         	add	sp, #0xc
  3513cc: f85d fb04    	ldr	pc, [sp], #4

// ==== LobbyLayer::~LobbyLayer
//      file offset 0x3513d0 (= ELF address; Ghidra 0x3613d0), 8 bytes, Thumb-2
  3513d0: f1a0 00e4    	sub.w	r0, r0, #0xe4
  3513d4: f7ff bfee    	b.w	0x3513b4 <LobbyLayer::~LobbyLayer()> @ imm = #-0x24

// ==== LobbyLayer::messageBoxHandler
//      file offset 0x3513d8 (= ELF address; Ghidra 0x3613d8), 30 bytes, Thumb-2
  3513d8: b500         	push	{lr}
  3513da: b087         	sub	sp, #0x1c
  3513dc: 9003         	str	r0, [sp, #0xc]
  3513de: 9102         	str	r1, [sp, #0x8]
  3513e0: 9201         	str	r2, [sp, #0x4]
  3513e2: 9b01         	ldr	r3, [sp, #0x4]
  3513e4: 9305         	str	r3, [sp, #0x14]
  3513e6: 9805         	ldr	r0, [sp, #0x14]
  3513e8: f000 f806    	bl	0x3513f8 <LobbyLayer::goBack()> @ imm = #0xc
  3513ec: f0da feb8    	bl	0x42c160 <ApplicationInterface::showInterstitial()> @ imm = #0xdad70
  3513f0: b007         	add	sp, #0x1c
  3513f2: f85d fb04    	ldr	pc, [sp], #4

// ==== LobbyLayer::goBack
//      file offset 0x3513f8 (= ELF address; Ghidra 0x3613f8), 30 bytes, Thumb-2
  3513f8: b510         	push	{r4, lr}
  3513fa: b082         	sub	sp, #0x8
  3513fc: 9001         	str	r0, [sp, #0x4]
  3513fe: f24a f8b9    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x24a172
  351402: 4604         	mov	r4, r0
  351404: f018 fb66    	bl	0x369ad4 <MenuLayer::scene()> @ imm = #0x186cc
  351408: 4603         	mov	r3, r0
  35140a: 4620         	mov	r0, r4
  35140c: 4619         	mov	r1, r3
  35140e: f24a ffa5    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x24af4a
  351412: b002         	add	sp, #0x8
  351414: bd10         	pop	{r4, pc}

// ==== LobbyLayer::onEnter
//      file offset 0x351418 (= ELF address; Ghidra 0x361418), 54 bytes, Thumb-2
  351418: b500         	push	{lr}
  35141a: b083         	sub	sp, #0xc
  35141c: 9001         	str	r0, [sp, #0x4]
  35141e: 9b01         	ldr	r3, [sp, #0x4]
  351420: 4618         	mov	r0, r3
  351422: f25c fa1b    	bl	0x5ad85c <cocos2d::CCLayer::onEnter()> @ imm = #0x25c436
  351426: 9b01         	ldr	r3, [sp, #0x4]
  351428: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  35142c: 2b00         	cmp	r3, #0x0
  35142e: d00b         	beq	0x351448 <LobbyLayer::onEnter()+0x30> @ imm = #0x16
  351430: 9b01         	ldr	r3, [sp, #0x4]
  351432: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  351436: 681b         	ldr	r3, [r3]
  351438: f503 73d0    	add.w	r3, r3, #0x1a0
  35143c: 681b         	ldr	r3, [r3]
  35143e: 9a01         	ldr	r2, [sp, #0x4]
  351440: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  351444: 4610         	mov	r0, r2
  351446: 4798         	blx	r3
  351448: b003         	add	sp, #0xc
  35144a: f85d fb04    	ldr	pc, [sp], #4

// ==== LobbyLayer::onExit
//      file offset 0x351450 (= ELF address; Ghidra 0x361450), 54 bytes, Thumb-2
  351450: b500         	push	{lr}
  351452: b083         	sub	sp, #0xc
  351454: 9001         	str	r0, [sp, #0x4]
  351456: 9b01         	ldr	r3, [sp, #0x4]
  351458: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  35145c: 2b00         	cmp	r3, #0x0
  35145e: d00b         	beq	0x351478 <LobbyLayer::onExit()+0x28> @ imm = #0x16
  351460: 9b01         	ldr	r3, [sp, #0x4]
  351462: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  351466: 681b         	ldr	r3, [r3]
  351468: f503 73d2    	add.w	r3, r3, #0x1a4
  35146c: 681b         	ldr	r3, [r3]
  35146e: 9a01         	ldr	r2, [sp, #0x4]
  351470: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  351474: 4610         	mov	r0, r2
  351476: 4798         	blx	r3
  351478: 9b01         	ldr	r3, [sp, #0x4]
  35147a: 4618         	mov	r0, r3
  35147c: f25c fa2c    	bl	0x5ad8d8 <cocos2d::CCLayer::onExit()> @ imm = #0x25c458
  351480: b003         	add	sp, #0xc
  351482: f85d fb04    	ldr	pc, [sp], #4

// ==== LobbyLayer::onStartGame
//      file offset 0x351488 (= ELF address; Ghidra 0x361488), 76 bytes, Thumb-2
  351488: b530         	push	{r4, r5, lr}
  35148a: b083         	sub	sp, #0xc
  35148c: 9001         	str	r0, [sp, #0x4]
  35148e: 9b01         	ldr	r3, [sp, #0x4]
  351490: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  351494: 681b         	ldr	r3, [r3]
  351496: f503 730d    	add.w	r3, r3, #0x234
  35149a: 681b         	ldr	r3, [r3]
  35149c: 9a01         	ldr	r2, [sp, #0x4]
  35149e: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3514a2: 4610         	mov	r0, r2
  3514a4: 2100         	movs	r1, #0x0
  3514a6: 4798         	blx	r3
  3514a8: f24a f864    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x24a0c8
  3514ac: 4604         	mov	r4, r0
  3514ae: 4b08         	ldr	r3, [pc, #0x20]         @ 0x3514d0 <LobbyLayer::onStartGame()+0x48>
  3514b0: 447b         	add	r3, pc
  3514b2: 681d         	ldr	r5, [r3]
  3514b4: f0ad f972    	bl	0x3fe79c <StageLayer::scene()> @ imm = #0xad2e4
  3514b8: 4603         	mov	r3, r0
  3514ba: 4628         	mov	r0, r5
  3514bc: 4619         	mov	r1, r3
  3514be: f25f ffb3    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x25ff66
  3514c2: 4603         	mov	r3, r0
  3514c4: 4620         	mov	r0, r4
  3514c6: 4619         	mov	r1, r3
  3514c8: f24a ff48    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x24ae90
  3514cc: b003         	add	sp, #0xc
  3514ce: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3514cf); words below are literal-pool data ---
  3514d0: 1eec         	subs	r4, r5, #0x3
  3514d2: 005e         	lsls	r6, r3, #0x1

// ==== LobbyLayer::onStartGame
//      file offset 0x3514d4 (= ELF address; Ghidra 0x3614d4), 8 bytes, Thumb-2
  3514d4: f5a0 7084    	sub.w	r0, r0, #0x108
  3514d8: f7ff bfd6    	b.w	0x351488 <LobbyLayer::onStartGame()> @ imm = #-0x54

// ==== LobbyLayer::onExitGame
//      file offset 0x3514dc (= ELF address; Ghidra 0x3614dc), 76 bytes, Thumb-2
  3514dc: b530         	push	{r4, r5, lr}
  3514de: b083         	sub	sp, #0xc
  3514e0: 9001         	str	r0, [sp, #0x4]
  3514e2: 9b01         	ldr	r3, [sp, #0x4]
  3514e4: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  3514e8: 681b         	ldr	r3, [r3]
  3514ea: f503 730d    	add.w	r3, r3, #0x234
  3514ee: 681b         	ldr	r3, [r3]
  3514f0: 9a01         	ldr	r2, [sp, #0x4]
  3514f2: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  3514f6: 4610         	mov	r0, r2
  3514f8: 2100         	movs	r1, #0x0
  3514fa: 4798         	blx	r3
  3514fc: f24a f83a    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x24a074
  351500: 4604         	mov	r4, r0
  351502: 4b08         	ldr	r3, [pc, #0x20]         @ 0x351524 <LobbyLayer::onExitGame()+0x48>
  351504: 447b         	add	r3, pc
  351506: 681d         	ldr	r5, [r3]
  351508: f018 fae4    	bl	0x369ad4 <MenuLayer::scene()> @ imm = #0x185c8
  35150c: 4603         	mov	r3, r0
  35150e: 4628         	mov	r0, r5
  351510: 4619         	mov	r1, r3
  351512: f25f ff89    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x25ff12
  351516: 4603         	mov	r3, r0
  351518: 4620         	mov	r0, r4
  35151a: 4619         	mov	r1, r3
  35151c: f24a ff1e    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x24ae3c
  351520: b003         	add	sp, #0xc
  351522: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x351523); words below are literal-pool data ---
  351524: 1e98         	subs	r0, r3, #0x2
  351526: 005e         	lsls	r6, r3, #0x1

// ==== LobbyLayer::onExitGame
//      file offset 0x351528 (= ELF address; Ghidra 0x361528), 8 bytes, Thumb-2
  351528: f5a0 7084    	sub.w	r0, r0, #0x108
  35152c: f7ff bfd6    	b.w	0x3514dc <LobbyLayer::onExitGame()> @ imm = #-0x54

// ==== LobbyLayer::onSwitchToPeer2Peer
//      file offset 0x351530 (= ELF address; Ghidra 0x361530), 148 bytes, Thumb-2
  351530: b530         	push	{r4, r5, lr}
  351532: b083         	sub	sp, #0xc
  351534: 9001         	str	r0, [sp, #0x4]
  351536: 4c1e         	ldr	r4, [pc, #0x78]         @ 0x3515b0 <LobbyLayer::onSwitchToPeer2Peer()+0x80>
  351538: 447c         	add	r4, pc
  35153a: 9b01         	ldr	r3, [sp, #0x4]
  35153c: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  351540: 681b         	ldr	r3, [r3]
  351542: f503 730d    	add.w	r3, r3, #0x234
  351546: 681b         	ldr	r3, [r3]
  351548: 9a01         	ldr	r2, [sp, #0x4]
  35154a: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  35154e: 4610         	mov	r0, r2
  351550: 2100         	movs	r1, #0x0
  351552: 4798         	blx	r3
  351554: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x3515b4 <LobbyLayer::onSwitchToPeer2Peer()+0x84>
  351556: 58e3         	ldr	r3, [r4, r3]
  351558: 2200         	movs	r2, #0x0
  35155a: 701a         	strb	r2, [r3]
  35155c: f026 faf0    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x265e0
  351560: 4603         	mov	r3, r0
  351562: 4618         	mov	r0, r3
  351564: 2104         	movs	r1, #0x4
  351566: f028 fbc5    	bl	0x379cf4 <NetworkManager::setMaxPlayers(int)> @ imm = #0x2878a
  35156a: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x3515b8 <LobbyLayer::onSwitchToPeer2Peer()+0x88>
  35156c: 58e3         	ldr	r3, [r4, r3]
  35156e: 2204         	movs	r2, #0x4
  351570: 601a         	str	r2, [r3]
  351572: 4b12         	ldr	r3, [pc, #0x48]         @ 0x3515bc <LobbyLayer::onSwitchToPeer2Peer()+0x8c>
  351574: 58e3         	ldr	r3, [r4, r3]
  351576: 2203         	movs	r2, #0x3
  351578: 601a         	str	r2, [r3]
  35157a: f026 fae1    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #0x265c2
  35157e: 4603         	mov	r3, r0
  351580: 4618         	mov	r0, r3
  351582: 2100         	movs	r1, #0x0
  351584: f029 f8a4    	bl	0x37a6d0 <NetworkManager::setUseHostedServer(bool)> @ imm = #0x29148
  351588: f249 fff4    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x249fe8
  35158c: 4604         	mov	r4, r0
  35158e: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x3515c0 <LobbyLayer::onSwitchToPeer2Peer()+0x90>
  351590: 447b         	add	r3, pc
  351592: 681d         	ldr	r5, [r3]
  351594: f000 f81a    	bl	0x3515cc <LobbyLayer::scene()> @ imm = #0x34
  351598: 4603         	mov	r3, r0
  35159a: 4628         	mov	r0, r5
  35159c: 4619         	mov	r1, r3
  35159e: f25f ff43    	bl	0x5b1428 <cocos2d::CCTransitionSlideInR::create(float, cocos2d::CCScene*)> @ imm = #0x25fe86
  3515a2: 4603         	mov	r3, r0
  3515a4: 4620         	mov	r0, r4
  3515a6: 4619         	mov	r1, r3
  3515a8: f24a fed8    	bl	0x59c35c <cocos2d::CCDirector::replaceScene(cocos2d::CCScene*)> @ imm = #0x24adb0
  3515ac: b003         	add	sp, #0xc
  3515ae: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3515af); words below are literal-pool data ---
  3515b0: 14d0         	asrs	r0, r2, #0x13
  3515b2: 005e         	lsls	r6, r3, #0x1
  3515b4: da58         	bge	0x351668 <LobbyLayer::scene()+0x9c> @ imm = #0xb0
  3515b6: ffff d838    	vqshrun.s64	d29, q12, #0x1
  3515ba: ffff daa0    	vtbl.8	d29, {d31, fpinst2, mvfr0}, d16
  3515be: ffff 1e0c    	<unknown>
  3515c2: 005e         	lsls	r6, r3, #0x1

// ==== LobbyLayer::onSwitchToPeer2Peer
//      file offset 0x3515c4 (= ELF address; Ghidra 0x3615c4), 8 bytes, Thumb-2
  3515c4: f5a0 7084    	sub.w	r0, r0, #0x108
  3515c8: f7ff bfb2    	b.w	0x351530 <LobbyLayer::onSwitchToPeer2Peer()> @ imm = #-0x9c

// ==== LobbyLayer::scene
//      file offset 0x3515cc (= ELF address; Ghidra 0x3615cc), 46 bytes, Thumb-2
  3515cc: b500         	push	{lr}
  3515ce: b083         	sub	sp, #0xc
  3515d0: f25e fa46    	bl	0x5afa60 <cocos2d::CCScene::create()> @ imm = #0x25e48c
  3515d4: 4603         	mov	r3, r0
  3515d6: 9300         	str	r3, [sp]
  3515d8: f7ff fbf4    	bl	0x350dc4 <LobbyLayer::create()> @ imm = #-0x818
  3515dc: 4603         	mov	r3, r0
  3515de: 9301         	str	r3, [sp, #0x4]
  3515e0: 9b00         	ldr	r3, [sp]
  3515e2: 681b         	ldr	r3, [r3]
  3515e4: 33c8         	adds	r3, #0xc8
  3515e6: 681b         	ldr	r3, [r3]
  3515e8: 9a00         	ldr	r2, [sp]
  3515ea: 4610         	mov	r0, r2
  3515ec: 9901         	ldr	r1, [sp, #0x4]
  3515ee: 4798         	blx	r3
  3515f0: 9b00         	ldr	r3, [sp]
  3515f2: 4618         	mov	r0, r3
  3515f4: b003         	add	sp, #0xc
  3515f6: f85d fb04    	ldr	pc, [sp], #4
