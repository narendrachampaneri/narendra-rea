// ApplicationManager: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 9 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../ApplicationManager.cpp

// ==== ApplicationManager::ApplicationManager
//      file offset 0x4213b8 (= ELF address; Ghidra 0x4313b8), 44 bytes, Thumb-2
  4213b8: b510         	push	{r4, lr}
  4213ba: b082         	sub	sp, #0x8
  4213bc: 9001         	str	r0, [sp, #0x4]
  4213be: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x4213dc <ApplicationManager::ApplicationManager()+0x24>
  4213c0: 447c         	add	r4, pc
  4213c2: 9b01         	ldr	r3, [sp, #0x4]
  4213c4: 4618         	mov	r0, r3
  4213c6: f16e f937    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x16e26e
  4213ca: 9b01         	ldr	r3, [sp, #0x4]
  4213cc: 4a04         	ldr	r2, [pc, #0x10]         @ 0x4213e0 <ApplicationManager::ApplicationManager()+0x28>
  4213ce: 58a2         	ldr	r2, [r4, r2]
  4213d0: 3208         	adds	r2, #0x8
  4213d2: 601a         	str	r2, [r3]
  4213d4: 9b01         	ldr	r3, [sp, #0x4]
  4213d6: 4618         	mov	r0, r3
  4213d8: b002         	add	sp, #0x8
  4213da: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x4213db); words below are literal-pool data ---
  4213dc: 1648         	asrs	r0, r1, #0x19
  4213de: 0051         	lsls	r1, r2, #0x1
  4213e0: dfe0         	svc	#0xe0
  4213e2: ffff b500    	<unknown>

// ==== ApplicationManager::~ApplicationManager
//      file offset 0x4213e4 (= ELF address; Ghidra 0x4313e4), 60 bytes, Thumb-2
  4213e4: b500         	push	{lr}
  4213e6: b083         	sub	sp, #0xc
  4213e8: 9001         	str	r0, [sp, #0x4]
  4213ea: 490b         	ldr	r1, [pc, #0x2c]         @ 0x421418 <ApplicationManager::~ApplicationManager()+0x34>
  4213ec: 4479         	add	r1, pc
  4213ee: 9b01         	ldr	r3, [sp, #0x4]
  4213f0: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x42141c <ApplicationManager::~ApplicationManager()+0x38>
  4213f2: 588a         	ldr	r2, [r1, r2]
  4213f4: 3208         	adds	r2, #0x8
  4213f6: 601a         	str	r2, [r3]
  4213f8: 9b01         	ldr	r3, [sp, #0x4]
  4213fa: 4618         	mov	r0, r3
  4213fc: f16e fa22    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x16e444
  421400: 2300         	movs	r3, #0x0
  421402: 2b00         	cmp	r3, #0x0
  421404: d002         	beq	0x42140c <ApplicationManager::~ApplicationManager()+0x28> @ imm = #0x4
  421406: 9801         	ldr	r0, [sp, #0x4]
  421408: f366 fe4c    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x366c98
  42140c: 9b01         	ldr	r3, [sp, #0x4]
  42140e: 4618         	mov	r0, r3
  421410: b003         	add	sp, #0xc
  421412: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x421415); words below are literal-pool data ---
  421416: bf00         	nop
  421418: 161c         	asrs	r4, r3, #0x18
  42141a: 0051         	lsls	r1, r2, #0x1
  42141c: dfe0         	svc	#0xe0
  42141e: ffff b500    	<unknown>

// ==== ApplicationManager::~ApplicationManager
//      file offset 0x421420 (= ELF address; Ghidra 0x431420), 28 bytes, Thumb-2
  421420: b500         	push	{lr}
  421422: b083         	sub	sp, #0xc
  421424: 9001         	str	r0, [sp, #0x4]
  421426: 9801         	ldr	r0, [sp, #0x4]
  421428: f7ff ffdc    	bl	0x4213e4 <ApplicationManager::~ApplicationManager()> @ imm = #-0x48
  42142c: 9801         	ldr	r0, [sp, #0x4]
  42142e: f366 fe39    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x366c72
  421432: 9b01         	ldr	r3, [sp, #0x4]
  421434: 4618         	mov	r0, r3
  421436: b003         	add	sp, #0xc
  421438: f85d fb04    	ldr	pc, [sp], #4

// ==== ApplicationManager::sharedApplicationManager
//      file offset 0x4230b4 (= ELF address; Ghidra 0x4330b4), 92 bytes, Thumb-2
  4230b4: b538         	push	{r3, r4, r5, lr}
  4230b6: 4c14         	ldr	r4, [pc, #0x50]         @ 0x423108 <ApplicationManager::sharedApplicationManager()+0x54>
  4230b8: 447c         	add	r4, pc
  4230ba: 4b14         	ldr	r3, [pc, #0x50]         @ 0x42310c <ApplicationManager::sharedApplicationManager()+0x58>
  4230bc: 58e3         	ldr	r3, [r4, r3]
  4230be: 681b         	ldr	r3, [r3]
  4230c0: 2b00         	cmp	r3, #0x0
  4230c2: d115         	bne	0x4230f0 <ApplicationManager::sharedApplicationManager()+0x3c> @ imm = #0x2a
  4230c4: 20ec         	movs	r0, #0xec
  4230c6: f364 fc4d    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x36489a
  4230ca: 4603         	mov	r3, r0
  4230cc: 461d         	mov	r5, r3
  4230ce: 4628         	mov	r0, r5
  4230d0: f7fe f972    	bl	0x4213b8 <ApplicationManager::ApplicationManager()> @ imm = #-0x1d1c
  4230d4: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x42310c <ApplicationManager::sharedApplicationManager()+0x58>
  4230d6: 58e3         	ldr	r3, [r4, r3]
  4230d8: 601d         	str	r5, [r3]
  4230da: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x42310c <ApplicationManager::sharedApplicationManager()+0x58>
  4230dc: 58e3         	ldr	r3, [r4, r3]
  4230de: 681b         	ldr	r3, [r3]
  4230e0: 681b         	ldr	r3, [r3]
  4230e2: 3318         	adds	r3, #0x18
  4230e4: 681b         	ldr	r3, [r3]
  4230e6: 4a09         	ldr	r2, [pc, #0x24]         @ 0x42310c <ApplicationManager::sharedApplicationManager()+0x58>
  4230e8: 58a2         	ldr	r2, [r4, r2]
  4230ea: 6812         	ldr	r2, [r2]
  4230ec: 4610         	mov	r0, r2
  4230ee: 4798         	blx	r3
  4230f0: 4b06         	ldr	r3, [pc, #0x18]         @ 0x42310c <ApplicationManager::sharedApplicationManager()+0x58>
  4230f2: 58e3         	ldr	r3, [r4, r3]
  4230f4: 681b         	ldr	r3, [r3]
  4230f6: e004         	b	0x423102 <ApplicationManager::sharedApplicationManager()+0x4e> @ imm = #0x8
  4230f8: 4628         	mov	r0, r5
  4230fa: f364 ffd3    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x364fa6
  4230fe: f364 ffd5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x364faa
  423102: 4618         	mov	r0, r3
  423104: bd38         	pop	{r3, r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x423105); words below are literal-pool data ---
  423106: bf00         	nop
  423108: f950 0050    	<unknown>
  42310c: dffc         	svc	#0xfc
  42310e: ffff b500    	<unknown>

// ==== ApplicationManager::init
//      file offset 0x423110 (= ELF address; Ghidra 0x433110), 66 bytes, Thumb-2
  423110: b500         	push	{lr}
  423112: b083         	sub	sp, #0xc
  423114: 9001         	str	r0, [sp, #0x4]
  423116: 9b01         	ldr	r3, [sp, #0x4]
  423118: 4618         	mov	r0, r3
  42311a: f16c fc97    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x16c92e
  42311e: 4603         	mov	r3, r0
  423120: f083 0301    	eor	r3, r3, #0x1
  423124: b2db         	uxtb	r3, r3
  423126: 2b00         	cmp	r3, #0x0
  423128: d001         	beq	0x42312e <ApplicationManager::init()+0x1e> @ imm = #0x2
  42312a: 2300         	movs	r3, #0x0
  42312c: e00d         	b	0x42314a <ApplicationManager::init()+0x3a> @ imm = #0x1a
  42312e: 9b01         	ldr	r3, [sp, #0x4]
  423130: 2200         	movs	r2, #0x0
  423132: f883 20e4    	strb.w	r2, [r3, #0xe4]
  423136: 9b01         	ldr	r3, [sp, #0x4]
  423138: 2200         	movs	r2, #0x0
  42313a: f883 20e5    	strb.w	r2, [r3, #0xe5]
  42313e: 9b01         	ldr	r3, [sp, #0x4]
  423140: f04f 0200    	mov.w	r2, #0x0
  423144: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  423148: 2301         	movs	r3, #0x1
  42314a: 4618         	mov	r0, r3
  42314c: b003         	add	sp, #0xc
  42314e: f85d fb04    	ldr	pc, [sp], #4

// ==== ApplicationManager::updateStep
//      file offset 0x423154 (= ELF address; Ghidra 0x433154), 94 bytes, Thumb-2
  423154: b500         	push	{lr}
  423156: b083         	sub	sp, #0xc
  423158: 9001         	str	r0, [sp, #0x4]
  42315a: 9100         	str	r1, [sp]
  42315c: 9b01         	ldr	r3, [sp, #0x4]
  42315e: f893 30e5    	ldrb.w	r3, [r3, #0xe5]
  423162: 2b00         	cmp	r3, #0x0
  423164: d022         	beq	0x4231ac <ApplicationManager::updateStep(float)+0x58> @ imm = #0x44
  423166: 9b01         	ldr	r3, [sp, #0x4]
  423168: ed93 7a3a    	vldr	s14, [r3, #232]
  42316c: eddd 7a00    	vldr	s15, [sp]
  423170: ee77 7a27    	vadd.f32	s15, s14, s15
  423174: 9b01         	ldr	r3, [sp, #0x4]
  423176: edc3 7a3a    	vstr	s15, [r3, #232]
  42317a: 9b01         	ldr	r3, [sp, #0x4]
  42317c: ed93 7a3a    	vldr	s14, [r3, #232]
  423180: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  423184: eeb4 7ae7    	vcmpe.f32	s14, s15
  423188: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  42318c: dd0e         	ble	0x4231ac <ApplicationManager::updateStep(float)+0x58> @ imm = #0x1c
  42318e: 9b01         	ldr	r3, [sp, #0x4]
  423190: 2200         	movs	r2, #0x0
  423192: f883 20e5    	strb.w	r2, [r3, #0xe5]
  423196: 9b01         	ldr	r3, [sp, #0x4]
  423198: f04f 0200    	mov.w	r2, #0x0
  42319c: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  4231a0: f178 f9e8    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x1783d0
  4231a4: 4603         	mov	r3, r0
  4231a6: 4618         	mov	r0, r3
  4231a8: f179 fae8    	bl	0x59c77c <cocos2d::CCDirector::pause()> @ imm = #0x1795d0
  4231ac: b003         	add	sp, #0xc
  4231ae: f85d fb04    	ldr	pc, [sp], #4

// ==== ApplicationManager::showVideoInterfaceAlert
//      file offset 0x4231b4 (= ELF address; Ghidra 0x4331b4), 268 bytes, Thumb-2
  4231b4: b530         	push	{r4, r5, lr}
  4231b6: b08b         	sub	sp, #0x2c
  4231b8: 9003         	str	r0, [sp, #0xc]
  4231ba: 4c3c         	ldr	r4, [pc, #0xf0]         @ 0x4232ac <ApplicationManager::showVideoInterfaceAlert()+0xf8>
  4231bc: 447c         	add	r4, pc
  4231be: ab05         	add	r3, sp, #0x14
  4231c0: 4618         	mov	r0, r3
  4231c2: f367 f917    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x36722e
  4231c6: aa08         	add	r2, sp, #0x20
  4231c8: ab05         	add	r3, sp, #0x14
  4231ca: 4610         	mov	r0, r2
  4231cc: 4a38         	ldr	r2, [pc, #0xe0]         @ 0x4232b0 <ApplicationManager::showVideoInterfaceAlert()+0xfc>
  4231ce: 447a         	add	r2, pc
  4231d0: 4611         	mov	r1, r2
  4231d2: 461a         	mov	r2, r3
  4231d4: f393 fc44    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x393888
  4231d8: ab06         	add	r3, sp, #0x18
  4231da: 4618         	mov	r0, r3
  4231dc: f367 f90a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x367214
  4231e0: aa09         	add	r2, sp, #0x24
  4231e2: ab06         	add	r3, sp, #0x18
  4231e4: 4610         	mov	r0, r2
  4231e6: 4a33         	ldr	r2, [pc, #0xcc]         @ 0x4232b4 <ApplicationManager::showVideoInterfaceAlert()+0x100>
  4231e8: 447a         	add	r2, pc
  4231ea: 4611         	mov	r1, r2
  4231ec: 461a         	mov	r2, r3
  4231ee: f393 fc37    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x39386e
  4231f2: ab04         	add	r3, sp, #0x10
  4231f4: 4618         	mov	r0, r3
  4231f6: f367 f8fd    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3671fa
  4231fa: aa07         	add	r2, sp, #0x1c
  4231fc: ab04         	add	r3, sp, #0x10
  4231fe: 4610         	mov	r0, r2
  423200: 4a2d         	ldr	r2, [pc, #0xb4]         @ 0x4232b8 <ApplicationManager::showVideoInterfaceAlert()+0x104>
  423202: 447a         	add	r2, pc
  423204: 4611         	mov	r1, r2
  423206: 461a         	mov	r2, r3
  423208: f393 fc2a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x393854
  42320c: ab07         	add	r3, sp, #0x1c
  42320e: 4618         	mov	r0, r3
  423210: f176 fc14    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x176828
  423214: 4603         	mov	r3, r0
  423216: 4618         	mov	r0, r3
  423218: 2100         	movs	r1, #0x0
  42321a: f176 fdf9    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x176bf2
  42321e: 4603         	mov	r3, r0
  423220: 9803         	ldr	r0, [sp, #0xc]
  423222: a908         	add	r1, sp, #0x20
  423224: aa09         	add	r2, sp, #0x24
  423226: 2500         	movs	r5, #0x0
  423228: 9500         	str	r5, [sp]
  42322a: 9001         	str	r0, [sp, #0x4]
  42322c: 4823         	ldr	r0, [pc, #0x8c]         @ 0x4232bc <ApplicationManager::showVideoInterfaceAlert()+0x108>
  42322e: 5820         	ldr	r0, [r4, r0]
  423230: f6bc fae0    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0x143a40
  423234: ab07         	add	r3, sp, #0x1c
  423236: 4618         	mov	r0, r3
  423238: f392 fb6c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3926d8
  42323c: ab04         	add	r3, sp, #0x10
  42323e: 4618         	mov	r0, r3
  423240: f367 f8dc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3671b8
  423244: ab09         	add	r3, sp, #0x24
  423246: 4618         	mov	r0, r3
  423248: f392 fb64    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3926c8
  42324c: ab06         	add	r3, sp, #0x18
  42324e: 4618         	mov	r0, r3
  423250: f367 f8d4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3671a8
  423254: ab08         	add	r3, sp, #0x20
  423256: 4618         	mov	r0, r3
  423258: f392 fb5c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x3926b8
  42325c: ab05         	add	r3, sp, #0x14
  42325e: 4618         	mov	r0, r3
  423260: f367 f8cc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x367198
  423264: 9b03         	ldr	r3, [sp, #0xc]
  423266: 2201         	movs	r2, #0x1
  423268: f883 20e5    	strb.w	r2, [r3, #0xe5]
  42326c: e01c         	b	0x4232a8 <ApplicationManager::showVideoInterfaceAlert()+0xf4> @ imm = #0x38
  42326e: ab07         	add	r3, sp, #0x1c
  423270: 4618         	mov	r0, r3
  423272: f392 fb4f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39269e
  423276: e7ff         	b	0x423278 <ApplicationManager::showVideoInterfaceAlert()+0xc4> @ imm = #-0x2
  423278: ab04         	add	r3, sp, #0x10
  42327a: 4618         	mov	r0, r3
  42327c: f367 f8be    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36717c
  423280: ab09         	add	r3, sp, #0x24
  423282: 4618         	mov	r0, r3
  423284: f392 fb46    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39268c
  423288: e7ff         	b	0x42328a <ApplicationManager::showVideoInterfaceAlert()+0xd6> @ imm = #-0x2
  42328a: ab06         	add	r3, sp, #0x18
  42328c: 4618         	mov	r0, r3
  42328e: f367 f8b5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x36716a
  423292: ab08         	add	r3, sp, #0x20
  423294: 4618         	mov	r0, r3
  423296: f392 fb3d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x39267a
  42329a: e7ff         	b	0x42329c <ApplicationManager::showVideoInterfaceAlert()+0xe8> @ imm = #-0x2
  42329c: ab05         	add	r3, sp, #0x14
  42329e: 4618         	mov	r0, r3
  4232a0: f367 f8ac    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x367158
  4232a4: f364 ff02    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x364e04
  4232a8: b00b         	add	sp, #0x2c
  4232aa: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x4232ab); words below are literal-pool data ---
  4232ac: f84c 0050    	<unknown>
  4232b0: 9196         	str	r1, [sp, #0x258]
  4232b2: 003b         	movs	r3, r7
  4232b4: 9188         	str	r1, [sp, #0x220]
  4232b6: 003b         	movs	r3, r7
  4232b8: 9186         	str	r1, [sp, #0x218]
  4232ba: 003b         	movs	r3, r7
  4232bc: e000         	b	0x4232c0 <ApplicationManager::videoMessageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #0x0
  4232be: ffff b500    	<unknown>

// ==== ApplicationManager::videoMessageBoxHandler
//      file offset 0x4232c0 (= ELF address; Ghidra 0x4332c0), 26 bytes, Thumb-2
  4232c0: b500         	push	{lr}
  4232c2: b085         	sub	sp, #0x14
  4232c4: 9003         	str	r0, [sp, #0xc]
  4232c6: 9102         	str	r1, [sp, #0x8]
  4232c8: 9201         	str	r2, [sp, #0x4]
  4232ca: 9b03         	ldr	r3, [sp, #0xc]
  4232cc: 2b00         	cmp	r3, #0x0
  4232ce: d101         	bne	0x4232d4 <ApplicationManager::videoMessageBoxHandler(int, cocos2d::CCObject*, cocos2d::CCObject*)+0x14> @ imm = #0x2
  4232d0: f7ff fe0c    	bl	0x422eec <ApplicationInterface::stopVideoRecording()> @ imm = #-0x3e8
  4232d4: b005         	add	sp, #0x14
  4232d6: f85d fb04    	ldr	pc, [sp], #4

// ==== ApplicationManager::videoInterfaceMessageBoxHandler
//      file offset 0x4232dc (= ELF address; Ghidra 0x4332dc), 28 bytes, Thumb-2
  4232dc: b500         	push	{lr}
  4232de: b085         	sub	sp, #0x14
  4232e0: 9003         	str	r0, [sp, #0xc]
  4232e2: 9102         	str	r1, [sp, #0x8]
  4232e4: 9201         	str	r2, [sp, #0x4]
  4232e6: f178 f945    	bl	0x59b574 <cocos2d::CCDirector::sharedDirector()> @ imm = #0x17828a
  4232ea: 4603         	mov	r3, r0
  4232ec: 4618         	mov	r0, r3
  4232ee: f179 fa67    	bl	0x59c7c0 <cocos2d::CCDirector::resume()> @ imm = #0x1794ce
  4232f2: b005         	add	sp, #0x14
  4232f4: f85d fb04    	ldr	pc, [sp], #4
