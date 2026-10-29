// PhysicsManager: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 6 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../PhysicsManager.cpp

// ==== PhysicsManager::PhysicsManager
//      file offset 0x3917a4 (= ELF address; Ghidra 0x3a17a4), 64 bytes, Thumb-2
  3917a4: b510         	push	{r4, lr}
  3917a6: b082         	sub	sp, #0x8
  3917a8: 9001         	str	r0, [sp, #0x4]
  3917aa: 4c0c         	ldr	r4, [pc, #0x30]         @ 0x3917dc <PhysicsManager::PhysicsManager()+0x38>
  3917ac: 447c         	add	r4, pc
  3917ae: 9b01         	ldr	r3, [sp, #0x4]
  3917b0: 4618         	mov	r0, r3
  3917b2: f206 fadb    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #0x2065b6
  3917b6: 9b01         	ldr	r3, [sp, #0x4]
  3917b8: 4a09         	ldr	r2, [pc, #0x24]         @ 0x3917e0 <PhysicsManager::PhysicsManager()+0x3c>
  3917ba: 58a2         	ldr	r2, [r4, r2]
  3917bc: 3208         	adds	r2, #0x8
  3917be: 601a         	str	r2, [r3]
  3917c0: 9801         	ldr	r0, [sp, #0x4]
  3917c2: f000 f811    	bl	0x3917e8 <PhysicsManager::init()> @ imm = #0x22
  3917c6: 9b01         	ldr	r3, [sp, #0x4]
  3917c8: e005         	b	0x3917d6 <PhysicsManager::PhysicsManager()+0x32> @ imm = #0xa
  3917ca: 9b01         	ldr	r3, [sp, #0x4]
  3917cc: 4618         	mov	r0, r3
  3917ce: f206 faff    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x2065fe
  3917d2: f3f6 fc6b    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3f68d6
  3917d6: 4618         	mov	r0, r3
  3917d8: b002         	add	sp, #0x8
  3917da: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x3917db); words below are literal-pool data ---
  3917dc: 125c         	asrs	r4, r3, #0x9
  3917de: 005a         	lsls	r2, r3, #0x1
  3917e0: dd14         	ble	0x39180c <PhysicsManager::init()+0x24> @ imm = #0x28
  3917e2: ffff 0000    	<unknown>

// ==== PhysicsManager::init
//      file offset 0x3917e8 (= ELF address; Ghidra 0x3a17e8), 548 bytes, Thumb-2
  3917e8: b530         	push	{r4, r5, lr}
  3917ea: b08b         	sub	sp, #0x2c
  3917ec: 9009         	str	r0, [sp, #0x24]
  3917ee: 4c78         	ldr	r4, [pc, #0x1e0]        @ 0x3919d0 <PhysicsManager::init()+0x1e8>
  3917f0: 447c         	add	r4, pc
  3917f2: f344 fa05    	bl	0x6d5c00 <cpSpaceNew>   @ imm = #0x34440a
  3917f6: 4603         	mov	r3, r0
  3917f8: 461a         	mov	r2, r3
  3917fa: 4b76         	ldr	r3, [pc, #0x1d8]        @ 0x3919d4 <PhysicsManager::init()+0x1ec>
  3917fc: 58e3         	ldr	r3, [r4, r3]
  3917fe: 601a         	str	r2, [r3]
  391800: 4b74         	ldr	r3, [pc, #0x1d0]        @ 0x3919d4 <PhysicsManager::init()+0x1ec>
  391802: 58e3         	ldr	r3, [r4, r3]
  391804: 681b         	ldr	r3, [r3]
  391806: 2202         	movs	r2, #0x2
  391808: 601a         	str	r2, [r3]
  39180a: 4b72         	ldr	r3, [pc, #0x1c8]        @ 0x3919d4 <PhysicsManager::init()+0x1ec>
  39180c: 58e3         	ldr	r3, [r4, r3]
  39180e: 681b         	ldr	r3, [r3]
  391810: f44f 727a    	mov.w	r2, #0x3e8
  391814: 9200         	str	r2, [sp]
  391816: 4618         	mov	r0, r3
  391818: f04f 0200    	mov.w	r2, #0x0
  39181c: f04f 0300    	mov.w	r3, #0x0
  391820: f2c4 0349    	movt	r3, #0x4049
  391824: f344 fca5    	bl	0x6d6172 <cpSpaceResizeActiveHash> @ imm = #0x34494a
  391828: 4b6a         	ldr	r3, [pc, #0x1a8]        @ 0x3919d4 <PhysicsManager::init()+0x1ec>
  39182a: 58e3         	ldr	r3, [r4, r3]
  39182c: 681b         	ldr	r3, [r3]
  39182e: f640 32b8    	movw	r2, #0xbb8
  391832: 9200         	str	r2, [sp]
  391834: 4618         	mov	r0, r3
  391836: f04f 0200    	mov.w	r2, #0x0
  39183a: f04f 0300    	mov.w	r3, #0x0
  39183e: f2c4 0350    	movt	r3, #0x4050
  391842: f344 fc89    	bl	0x6d6158 <cpSpaceResizeStaticHash> @ imm = #0x344912
  391846: f04f 0000    	mov.w	r0, #0x0
  39184a: f04f 0100    	mov.w	r1, #0x0
  39184e: f6c7 71f0    	movt	r1, #0x7ff0
  391852: f04f 0200    	mov.w	r2, #0x0
  391856: f04f 0300    	mov.w	r3, #0x0
  39185a: f6c7 73f0    	movt	r3, #0x7ff0
  39185e: f341 fcf5    	bl	0x6d324c <cpBodyNew>    @ imm = #0x3419ea
  391862: 4603         	mov	r3, r0
  391864: 461a         	mov	r2, r3
  391866: 4b5c         	ldr	r3, [pc, #0x170]        @ 0x3919d8 <PhysicsManager::init()+0x1f0>
  391868: 58e3         	ldr	r3, [r4, r3]
  39186a: 601a         	str	r2, [r3]
  39186c: 4b59         	ldr	r3, [pc, #0x164]        @ 0x3919d4 <PhysicsManager::init()+0x1ec>
  39186e: 58e3         	ldr	r3, [r4, r3]
  391870: 681d         	ldr	r5, [r3]
  391872: ab04         	add	r3, sp, #0x10
  391874: 4618         	mov	r0, r3
  391876: ed9f 0b54    	vldr	d0, [pc, #336]          @ 0x3919c8 <PhysicsManager::init()+0x1e0>
  39187a: ed9f 1b53    	vldr	d1, [pc, #332]          @ 0x3919c8 <PhysicsManager::init()+0x1e0>
  39187e: f7fe fb67    	bl	0x38ff50 <PROXYNADE::getWeaponRect()+0x190> @ imm = #-0x1932
  391882: 3508         	adds	r5, #0x8
  391884: ab04         	add	r3, sp, #0x10
  391886: cb0f         	ldm	r3, {r0, r1, r2, r3}
  391888: e885 000f    	stm.w	r5, {r0, r1, r2, r3}
  39188c: 4b51         	ldr	r3, [pc, #0x144]        @ 0x3919d4 <PhysicsManager::init()+0x1ec>
  39188e: 58e3         	ldr	r3, [r4, r3]
  391890: 681b         	ldr	r3, [r3]
  391892: 4a52         	ldr	r2, [pc, #0x148]        @ 0x3919dc <PhysicsManager::init()+0x1f4>
  391894: 447a         	add	r2, pc
  391896: 9200         	str	r2, [sp]
  391898: 4a51         	ldr	r2, [pc, #0x144]        @ 0x3919e0 <PhysicsManager::init()+0x1f8>
  39189a: 447a         	add	r2, pc
  39189c: 9201         	str	r2, [sp, #0x4]
  39189e: 2200         	movs	r2, #0x0
  3918a0: 9202         	str	r2, [sp, #0x8]
  3918a2: 2200         	movs	r2, #0x0
  3918a4: 9203         	str	r2, [sp, #0xc]
  3918a6: 4618         	mov	r0, r3
  3918a8: f240 1143    	movw	r1, #0x143
  3918ac: 2215         	movs	r2, #0x15
  3918ae: 4b4d         	ldr	r3, [pc, #0x134]        @ 0x3919e4 <PhysicsManager::init()+0x1fc>
  3918b0: 447b         	add	r3, pc
  3918b2: f344 fa0f    	bl	0x6d5cd4 <cpSpaceAddCollisionHandler> @ imm = #0x34441e
  3918b6: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x3919d4 <PhysicsManager::init()+0x1ec>
  3918b8: 58e3         	ldr	r3, [r4, r3]
  3918ba: 681b         	ldr	r3, [r3]
  3918bc: 2200         	movs	r2, #0x0
  3918be: 9200         	str	r2, [sp]
  3918c0: 4a49         	ldr	r2, [pc, #0x124]        @ 0x3919e8 <PhysicsManager::init()+0x200>
  3918c2: 447a         	add	r2, pc
  3918c4: 9201         	str	r2, [sp, #0x4]
  3918c6: 2200         	movs	r2, #0x0
  3918c8: 9202         	str	r2, [sp, #0x8]
  3918ca: 2200         	movs	r2, #0x0
  3918cc: 9203         	str	r2, [sp, #0xc]
  3918ce: 4618         	mov	r0, r3
  3918d0: f240 1143    	movw	r1, #0x143
  3918d4: f240 2241    	movw	r2, #0x241
  3918d8: 2300         	movs	r3, #0x0
  3918da: f344 f9fb    	bl	0x6d5cd4 <cpSpaceAddCollisionHandler> @ imm = #0x3443f6
  3918de: 4b3d         	ldr	r3, [pc, #0xf4]         @ 0x3919d4 <PhysicsManager::init()+0x1ec>
  3918e0: 58e3         	ldr	r3, [r4, r3]
  3918e2: 681b         	ldr	r3, [r3]
  3918e4: 2200         	movs	r2, #0x0
  3918e6: 9200         	str	r2, [sp]
  3918e8: 2200         	movs	r2, #0x0
  3918ea: 9201         	str	r2, [sp, #0x4]
  3918ec: 4a3f         	ldr	r2, [pc, #0xfc]         @ 0x3919ec <PhysicsManager::init()+0x204>
  3918ee: 447a         	add	r2, pc
  3918f0: 9202         	str	r2, [sp, #0x8]
  3918f2: 2200         	movs	r2, #0x0
  3918f4: 9203         	str	r2, [sp, #0xc]
  3918f6: 4618         	mov	r0, r3
  3918f8: f240 1143    	movw	r1, #0x143
  3918fc: 2244         	movs	r2, #0x44
  3918fe: 4b3c         	ldr	r3, [pc, #0xf0]         @ 0x3919f0 <PhysicsManager::init()+0x208>
  391900: 447b         	add	r3, pc
  391902: f344 f9e7    	bl	0x6d5cd4 <cpSpaceAddCollisionHandler> @ imm = #0x3443ce
  391906: 4b33         	ldr	r3, [pc, #0xcc]         @ 0x3919d4 <PhysicsManager::init()+0x1ec>
  391908: 58e3         	ldr	r3, [r4, r3]
  39190a: 681b         	ldr	r3, [r3]
  39190c: 2200         	movs	r2, #0x0
  39190e: 9200         	str	r2, [sp]
  391910: 2200         	movs	r2, #0x0
  391912: 9201         	str	r2, [sp, #0x4]
  391914: 2200         	movs	r2, #0x0
  391916: 9202         	str	r2, [sp, #0x8]
  391918: 2200         	movs	r2, #0x0
  39191a: 9203         	str	r2, [sp, #0xc]
  39191c: 4618         	mov	r0, r3
  39191e: 2184         	movs	r1, #0x84
  391920: 2244         	movs	r2, #0x44
  391922: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x3919f4 <PhysicsManager::init()+0x20c>
  391924: 447b         	add	r3, pc
  391926: f344 f9d5    	bl	0x6d5cd4 <cpSpaceAddCollisionHandler> @ imm = #0x3443aa
  39192a: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x3919d4 <PhysicsManager::init()+0x1ec>
  39192c: 58e3         	ldr	r3, [r4, r3]
  39192e: 681b         	ldr	r3, [r3]
  391930: 2200         	movs	r2, #0x0
  391932: 9200         	str	r2, [sp]
  391934: 2200         	movs	r2, #0x0
  391936: 9201         	str	r2, [sp, #0x4]
  391938: 2200         	movs	r2, #0x0
  39193a: 9202         	str	r2, [sp, #0x8]
  39193c: 2200         	movs	r2, #0x0
  39193e: 9203         	str	r2, [sp, #0xc]
  391940: 4618         	mov	r0, r3
  391942: f240 2141    	movw	r1, #0x241
  391946: 2244         	movs	r2, #0x44
  391948: 4b2b         	ldr	r3, [pc, #0xac]         @ 0x3919f8 <PhysicsManager::init()+0x210>
  39194a: 447b         	add	r3, pc
  39194c: f344 f9c2    	bl	0x6d5cd4 <cpSpaceAddCollisionHandler> @ imm = #0x344384
  391950: 4b20         	ldr	r3, [pc, #0x80]         @ 0x3919d4 <PhysicsManager::init()+0x1ec>
  391952: 58e3         	ldr	r3, [r4, r3]
  391954: 681b         	ldr	r3, [r3]
  391956: 2200         	movs	r2, #0x0
  391958: 9200         	str	r2, [sp]
  39195a: 2200         	movs	r2, #0x0
  39195c: 9201         	str	r2, [sp, #0x4]
  39195e: 2200         	movs	r2, #0x0
  391960: 9202         	str	r2, [sp, #0x8]
  391962: 2200         	movs	r2, #0x0
  391964: 9203         	str	r2, [sp, #0xc]
  391966: 4618         	mov	r0, r3
  391968: 2115         	movs	r1, #0x15
  39196a: 2244         	movs	r2, #0x44
  39196c: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x3919fc <PhysicsManager::init()+0x214>
  39196e: 447b         	add	r3, pc
  391970: f344 f9b0    	bl	0x6d5cd4 <cpSpaceAddCollisionHandler> @ imm = #0x344360
  391974: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x3919d4 <PhysicsManager::init()+0x1ec>
  391976: 58e3         	ldr	r3, [r4, r3]
  391978: 681b         	ldr	r3, [r3]
  39197a: 2200         	movs	r2, #0x0
  39197c: 9200         	str	r2, [sp]
  39197e: 2200         	movs	r2, #0x0
  391980: 9201         	str	r2, [sp, #0x4]
  391982: 2200         	movs	r2, #0x0
  391984: 9202         	str	r2, [sp, #0x8]
  391986: 2200         	movs	r2, #0x0
  391988: 9203         	str	r2, [sp, #0xc]
  39198a: 4618         	mov	r0, r3
  39198c: 210d         	movs	r1, #0xd
  39198e: 2215         	movs	r2, #0x15
  391990: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x391a00 <PhysicsManager::init()+0x218>
  391992: 447b         	add	r3, pc
  391994: f344 f99e    	bl	0x6d5cd4 <cpSpaceAddCollisionHandler> @ imm = #0x34433c
  391998: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x3919d4 <PhysicsManager::init()+0x1ec>
  39199a: 58e3         	ldr	r3, [r4, r3]
  39199c: 681b         	ldr	r3, [r3]
  39199e: 2200         	movs	r2, #0x0
  3919a0: 9200         	str	r2, [sp]
  3919a2: 2200         	movs	r2, #0x0
  3919a4: 9201         	str	r2, [sp, #0x4]
  3919a6: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x391a04 <PhysicsManager::init()+0x21c>
  3919a8: 447a         	add	r2, pc
  3919aa: 9202         	str	r2, [sp, #0x8]
  3919ac: 2200         	movs	r2, #0x0
  3919ae: 9203         	str	r2, [sp, #0xc]
  3919b0: 4618         	mov	r0, r3
  3919b2: 210d         	movs	r1, #0xd
  3919b4: 2244         	movs	r2, #0x44
  3919b6: 4b14         	ldr	r3, [pc, #0x50]         @ 0x391a08 <PhysicsManager::init()+0x220>
  3919b8: 447b         	add	r3, pc
  3919ba: f344 f98b    	bl	0x6d5cd4 <cpSpaceAddCollisionHandler> @ imm = #0x344316
  3919be: 2301         	movs	r3, #0x1
  3919c0: 4618         	mov	r0, r3
  3919c2: b00b         	add	sp, #0x2c
  3919c4: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x3919c5); words below are literal-pool data ---
  3919c6: bf00         	nop
  3919d0: 1218         	asrs	r0, r3, #0x8
  3919d2: 005a         	lsls	r2, r3, #0x1
  3919d4: da00         	bge	0x3919d8 <PhysicsManager::init()+0x1f0> @ imm = #0x0
  3919d6: ffff db9c    	<unknown>
  3919da: ffff faf5    	<unknown>
  3919de: ffff fb3b    	<unknown>
  3919e2: ffff fa75    	<unknown>
  3919e6: ffff fcc3    	<unknown>
  3919ea: ffff fe2f    	<unknown>
  3919ee: ffff fd95    	<unknown>
  3919f2: ffff fc95    	<unknown>
  3919f6: ffff fc6f    	<unknown>
  3919fa: ffff fc4b    	<unknown>
  3919fe: ffff f93b    	<unknown>
  391a02: ffff fd75    	<unknown>
  391a06: ffff fcdd    	<unknown>
  391a0a: ffff f3af    	<unknown>

// ==== PhysicsManager::~PhysicsManager
//      file offset 0x391a10 (= ELF address; Ghidra 0x3a1a10), 100 bytes, Thumb-2
  391a10: b510         	push	{r4, lr}
  391a12: b082         	sub	sp, #0x8
  391a14: 9001         	str	r0, [sp, #0x4]
  391a16: 4c13         	ldr	r4, [pc, #0x4c]         @ 0x391a64 <PhysicsManager::~PhysicsManager()+0x54>
  391a18: 447c         	add	r4, pc
  391a1a: 9b01         	ldr	r3, [sp, #0x4]
  391a1c: 4a12         	ldr	r2, [pc, #0x48]         @ 0x391a68 <PhysicsManager::~PhysicsManager()+0x58>
  391a1e: 58a2         	ldr	r2, [r4, r2]
  391a20: 3208         	adds	r2, #0x8
  391a22: 601a         	str	r2, [r3]
  391a24: 4b11         	ldr	r3, [pc, #0x44]         @ 0x391a6c <PhysicsManager::~PhysicsManager()+0x5c>
  391a26: 58e3         	ldr	r3, [r4, r3]
  391a28: 681b         	ldr	r3, [r3]
  391a2a: 4618         	mov	r0, r3
  391a2c: f344 fbc2    	bl	0x6d61b4 <cpSpaceFreeChildren> @ imm = #0x344784
  391a30: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x391a6c <PhysicsManager::~PhysicsManager()+0x5c>
  391a32: 58e3         	ldr	r3, [r4, r3]
  391a34: 681b         	ldr	r3, [r3]
  391a36: 4618         	mov	r0, r3
  391a38: f344 f92e    	bl	0x6d5c98 <cpSpaceFree>  @ imm = #0x34425c
  391a3c: 4b0c         	ldr	r3, [pc, #0x30]         @ 0x391a70 <PhysicsManager::~PhysicsManager()+0x60>
  391a3e: 58e3         	ldr	r3, [r4, r3]
  391a40: 681b         	ldr	r3, [r3]
  391a42: 4618         	mov	r0, r3
  391a44: f341 fb84    	bl	0x6d3150 <cpBodyFree>   @ imm = #0x341708
  391a48: 9b01         	ldr	r3, [sp, #0x4]
  391a4a: 4618         	mov	r0, r3
  391a4c: f206 f9c0    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #0x206380
  391a50: 2300         	movs	r3, #0x0
  391a52: 2b00         	cmp	r3, #0x0
  391a54: d002         	beq	0x391a5c <PhysicsManager::~PhysicsManager()+0x4c> @ imm = #0x4
  391a56: 9801         	ldr	r0, [sp, #0x4]
  391a58: f3f6 fb24    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3f6648
  391a5c: 9b01         	ldr	r3, [sp, #0x4]
  391a5e: 4618         	mov	r0, r3
  391a60: b002         	add	sp, #0x8
  391a62: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x391a63); words below are literal-pool data ---
  391a64: 0ff0         	lsrs	r0, r6, #0x1f
  391a66: 005a         	lsls	r2, r3, #0x1
  391a68: dd14         	ble	0x391a94 <PhysicsManager::drawShapes()+0x4> @ imm = #0x28
  391a6a: ffff da00    	vtbl.8	d29, {d15, d16, d17}, d0
  391a6e: ffff db9c    	<unknown>
  391a72: ffff b500    	<unknown>

// ==== PhysicsManager::~PhysicsManager
//      file offset 0x391a74 (= ELF address; Ghidra 0x3a1a74), 28 bytes, Thumb-2
  391a74: b500         	push	{lr}
  391a76: b083         	sub	sp, #0xc
  391a78: 9001         	str	r0, [sp, #0x4]
  391a7a: 9801         	ldr	r0, [sp, #0x4]
  391a7c: f7ff ffc8    	bl	0x391a10 <PhysicsManager::~PhysicsManager()> @ imm = #-0x70
  391a80: 9801         	ldr	r0, [sp, #0x4]
  391a82: f3f6 fb0f    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3f661e
  391a86: 9b01         	ldr	r3, [sp, #0x4]
  391a88: 4618         	mov	r0, r3
  391a8a: b003         	add	sp, #0xc
  391a8c: f85d fb04    	ldr	pc, [sp], #4

// ==== PhysicsManager::drawShapes
//      file offset 0x391a90 (= ELF address; Ghidra 0x3a1a90), 76 bytes, Thumb-2
  391a90: b510         	push	{r4, lr}
  391a92: b082         	sub	sp, #0x8
  391a94: 9001         	str	r0, [sp, #0x4]
  391a96: 4c0d         	ldr	r4, [pc, #0x34]         @ 0x391acc <PhysicsManager::drawShapes()+0x3c>
  391a98: 447c         	add	r4, pc
  391a9a: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x391ad0 <PhysicsManager::drawShapes()+0x40>
  391a9c: 58e3         	ldr	r3, [r4, r3]
  391a9e: 681b         	ldr	r3, [r3]
  391aa0: 6bdb         	ldr	r3, [r3, #0x3c]
  391aa2: 4618         	mov	r0, r3
  391aa4: 4b0b         	ldr	r3, [pc, #0x2c]         @ 0x391ad4 <PhysicsManager::drawShapes()+0x44>
  391aa6: 447b         	add	r3, pc
  391aa8: 4619         	mov	r1, r3
  391aaa: 2200         	movs	r2, #0x0
  391aac: f345 f946    	bl	0x6d6d3c <cpSpaceHashEach> @ imm = #0x34528c
  391ab0: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x391ad0 <PhysicsManager::drawShapes()+0x40>
  391ab2: 58e3         	ldr	r3, [r4, r3]
  391ab4: 681b         	ldr	r3, [r3]
  391ab6: 6b9b         	ldr	r3, [r3, #0x38]
  391ab8: 4618         	mov	r0, r3
  391aba: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x391ad8 <PhysicsManager::drawShapes()+0x48>
  391abc: 447b         	add	r3, pc
  391abe: 4619         	mov	r1, r3
  391ac0: 2200         	movs	r2, #0x0
  391ac2: f345 f93b    	bl	0x6d6d3c <cpSpaceHashEach> @ imm = #0x345276
  391ac6: b002         	add	sp, #0x8
  391ac8: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x391ac9); words below are literal-pool data ---
  391aca: bf00         	nop
  391acc: 0f70         	lsrs	r0, r6, #0x1d
  391ace: 005a         	lsls	r2, r3, #0x1
  391ad0: da00         	bge	0x391ad4 <PhysicsManager::drawShapes()+0x44> @ imm = #0x0
  391ad2: ffff f753    	<unknown>
  391ad6: ffff f73d    	vqshl.u32	d31, d29, #0x1f
  391ada: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== PhysicsManager::updateStep
//      file offset 0x391adc (= ELF address; Ghidra 0x3a1adc), 220 bytes, Thumb-2
  391adc: b510         	push	{r4, lr}
  391ade: b086         	sub	sp, #0x18
  391ae0: 9001         	str	r0, [sp, #0x4]
  391ae2: 9100         	str	r1, [sp]
  391ae4: 4c2e         	ldr	r4, [pc, #0xb8]         @ 0x391ba0 <PhysicsManager::updateStep(float)+0xc4>
  391ae6: 447c         	add	r4, pc
  391ae8: 4b2e         	ldr	r3, [pc, #0xb8]         @ 0x391ba4 <PhysicsManager::updateStep(float)+0xc8>
  391aea: 58e3         	ldr	r3, [r4, r3]
  391aec: 681b         	ldr	r3, [r3]
  391aee: 681b         	ldr	r3, [r3]
  391af0: 9303         	str	r3, [sp, #0xc]
  391af2: eddd 7a00    	vldr	s15, [sp]
  391af6: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  391afa: 9b03         	ldr	r3, [sp, #0xc]
  391afc: ee05 3a90    	vmov	s11, r3
  391b00: eeb8 7be5    	vcvt.f64.s32	d7, s11
  391b04: ee86 7b07    	vdiv.f64	d7, d6, d7
  391b08: ed8d 7b04    	vstr	d7, [sp, #16]
  391b0c: 2300         	movs	r3, #0x0
  391b0e: 9302         	str	r3, [sp, #0x8]
  391b10: e00a         	b	0x391b28 <PhysicsManager::updateStep(float)+0x4c> @ imm = #0x14
  391b12: 4b24         	ldr	r3, [pc, #0x90]         @ 0x391ba4 <PhysicsManager::updateStep(float)+0xc8>
  391b14: 58e3         	ldr	r3, [r4, r3]
  391b16: 681b         	ldr	r3, [r3]
  391b18: 4618         	mov	r0, r3
  391b1a: e9dd 2304    	ldrd	r2, r3, [sp, #16]
  391b1e: f344 fc03    	bl	0x6d6328 <cpSpaceStep>  @ imm = #0x344806
  391b22: 9b02         	ldr	r3, [sp, #0x8]
  391b24: 3301         	adds	r3, #0x1
  391b26: 9302         	str	r3, [sp, #0x8]
  391b28: 9a02         	ldr	r2, [sp, #0x8]
  391b2a: 9b03         	ldr	r3, [sp, #0xc]
  391b2c: 429a         	cmp	r2, r3
  391b2e: dbf0         	blt	0x391b12 <PhysicsManager::updateStep(float)+0x36> @ imm = #-0x20
  391b30: 4b1c         	ldr	r3, [pc, #0x70]         @ 0x391ba4 <PhysicsManager::updateStep(float)+0xc8>
  391b32: 58e3         	ldr	r3, [r4, r3]
  391b34: 681b         	ldr	r3, [r3]
  391b36: 6bdb         	ldr	r3, [r3, #0x3c]
  391b38: 4618         	mov	r0, r3
  391b3a: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x391ba8 <PhysicsManager::updateStep(float)+0xcc>
  391b3c: 447b         	add	r3, pc
  391b3e: 4619         	mov	r1, r3
  391b40: 2200         	movs	r2, #0x0
  391b42: f345 f8fb    	bl	0x6d6d3c <cpSpaceHashEach> @ imm = #0x3451f6
  391b46: 4b19         	ldr	r3, [pc, #0x64]         @ 0x391bac <PhysicsManager::updateStep(float)+0xd0>
  391b48: 58e3         	ldr	r3, [r4, r3]
  391b4a: 681b         	ldr	r3, [r3]
  391b4c: 681b         	ldr	r3, [r3]
  391b4e: 3350         	adds	r3, #0x50
  391b50: 681b         	ldr	r3, [r3]
  391b52: 4a16         	ldr	r2, [pc, #0x58]         @ 0x391bac <PhysicsManager::updateStep(float)+0xd0>
  391b54: 58a2         	ldr	r2, [r4, r2]
  391b56: 6812         	ldr	r2, [r2]
  391b58: 4610         	mov	r0, r2
  391b5a: 4798         	blx	r3
  391b5c: 4603         	mov	r3, r0
  391b5e: edd3 7a00    	vldr	s15, [r3]
  391b62: eefd 7ae7    	vcvt.s32.f32	s15, s15
  391b66: ee17 2a90    	vmov	r2, s15
  391b6a: 4b11         	ldr	r3, [pc, #0x44]         @ 0x391bb0 <PhysicsManager::updateStep(float)+0xd4>
  391b6c: 58e3         	ldr	r3, [r4, r3]
  391b6e: 601a         	str	r2, [r3]
  391b70: 4b0e         	ldr	r3, [pc, #0x38]         @ 0x391bac <PhysicsManager::updateStep(float)+0xd0>
  391b72: 58e3         	ldr	r3, [r4, r3]
  391b74: 681b         	ldr	r3, [r3]
  391b76: 681b         	ldr	r3, [r3]
  391b78: 3350         	adds	r3, #0x50
  391b7a: 681b         	ldr	r3, [r3]
  391b7c: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x391bac <PhysicsManager::updateStep(float)+0xd0>
  391b7e: 58a2         	ldr	r2, [r4, r2]
  391b80: 6812         	ldr	r2, [r2]
  391b82: 4610         	mov	r0, r2
  391b84: 4798         	blx	r3
  391b86: 4603         	mov	r3, r0
  391b88: edd3 7a01    	vldr	s15, [r3, #4]
  391b8c: eefd 7ae7    	vcvt.s32.f32	s15, s15
  391b90: ee17 2a90    	vmov	r2, s15
  391b94: 4b07         	ldr	r3, [pc, #0x1c]         @ 0x391bb4 <PhysicsManager::updateStep(float)+0xd8>
  391b96: 58e3         	ldr	r3, [r4, r3]
  391b98: 601a         	str	r2, [r3]
  391b9a: b006         	add	sp, #0x18
  391b9c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x391b9d); words below are literal-pool data ---
  391b9e: bf00         	nop
  391ba0: 0f22         	lsrs	r2, r4, #0x1c
  391ba2: 005a         	lsls	r2, r3, #0x1
  391ba4: da00         	bge	0x391ba8 <PhysicsManager::updateStep(float)+0xcc> @ imm = #0x0
  391ba6: ffff f709    	<unknown>
  391baa: ffff d744    	<unknown>
  391bae: ffff dd08    	<unknown>
  391bb2: ffff dd0c    	<unknown>
  391bb6: ffff b510    	vsli.32	d27, d0, #0x1f
