// PlayerLobby: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 64 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../PlayerLobby.cpp

// ==== PlayerLobby::scrollViewDidScroll
//      file offset 0x397f44 (= ELF address; Ghidra 0x3a7f44), 10 bytes, Thumb-2
  397f44: b082         	sub	sp, #0x8
  397f46: 9001         	str	r0, [sp, #0x4]
  397f48: 9100         	str	r1, [sp]
  397f4a: b002         	add	sp, #0x8
  397f4c: 4770         	bx	lr

// ==== PlayerLobby::scrollViewDidScroll
//      file offset 0x397f50 (= ELF address; Ghidra 0x3a7f50), 6 bytes, Thumb-2
  397f50: f1a0 00e4    	sub.w	r0, r0, #0xe4
  397f54: e7f6         	b	0x397f44 <PlayerLobby::scrollViewDidScroll(cocos2d::extension::CCScrollView*)> @ imm = #-0x14

// ==== PlayerLobby::scrollViewDidZoom
//      file offset 0x397f58 (= ELF address; Ghidra 0x3a7f58), 10 bytes, Thumb-2
  397f58: b082         	sub	sp, #0x8
  397f5a: 9001         	str	r0, [sp, #0x4]
  397f5c: 9100         	str	r1, [sp]
  397f5e: b002         	add	sp, #0x8
  397f60: 4770         	bx	lr

// ==== PlayerLobby::scrollViewDidZoom
//      file offset 0x397f64 (= ELF address; Ghidra 0x3a7f64), 6 bytes, Thumb-2
  397f64: f1a0 00e4    	sub.w	r0, r0, #0xe4
  397f68: e7f6         	b	0x397f58 <PlayerLobby::scrollViewDidZoom(cocos2d::extension::CCScrollView*)> @ imm = #-0x14

// ==== PlayerLobby::PlayerLobby
//      file offset 0x399e0c (= ELF address; Ghidra 0x3a9e0c), 224 bytes, Thumb-2
  399e0c: b510         	push	{r4, lr}
  399e0e: b082         	sub	sp, #0x8
  399e10: 9001         	str	r0, [sp, #0x4]
  399e12: 4c34         	ldr	r4, [pc, #0xd0]         @ 0x399ee4 <PlayerLobby::PlayerLobby()+0xd8>
  399e14: 447c         	add	r4, pc
  399e16: 9b01         	ldr	r3, [sp, #0x4]
  399e18: 4618         	mov	r0, r3
  399e1a: f1f5 fc0d    	bl	0x58f638 <cocos2d::CCNode::CCNode()> @ imm = #0x1f581a
  399e1e: 9b01         	ldr	r3, [sp, #0x4]
  399e20: 33e4         	adds	r3, #0xe4
  399e22: 4618         	mov	r0, r3
  399e24: f750 fb52    	bl	0x2ea4cc <cocos2d::extension::CCTableViewDelegate::CCTableViewDelegate()> @ imm = #-0xaf95c
  399e28: 9b01         	ldr	r3, [sp, #0x4]
  399e2a: 33e8         	adds	r3, #0xe8
  399e2c: 4618         	mov	r0, r3
  399e2e: f750 fb8f    	bl	0x2ea550 <cocos2d::extension::CCTableViewDataSource::CCTableViewDataSource()> @ imm = #-0xaf8e2
  399e32: 9b01         	ldr	r3, [sp, #0x4]
  399e34: 33ec         	adds	r3, #0xec
  399e36: 4618         	mov	r0, r3
  399e38: f753 ff56    	bl	0x2edce8 <cocos2d::extension::CCEditBoxDelegate::CCEditBoxDelegate()> @ imm = #-0xac154
  399e3c: 9b01         	ldr	r3, [sp, #0x4]
  399e3e: 4a2a         	ldr	r2, [pc, #0xa8]         @ 0x399ee8 <PlayerLobby::PlayerLobby()+0xdc>
  399e40: 58a2         	ldr	r2, [r4, r2]
  399e42: 3208         	adds	r2, #0x8
  399e44: 601a         	str	r2, [r3]
  399e46: 9b01         	ldr	r3, [sp, #0x4]
  399e48: 4a27         	ldr	r2, [pc, #0x9c]         @ 0x399ee8 <PlayerLobby::PlayerLobby()+0xdc>
  399e4a: 58a2         	ldr	r2, [r4, r2]
  399e4c: f502 7219    	add.w	r2, r2, #0x264
  399e50: f8c3 20e4    	str.w	r2, [r3, #0xe4]
  399e54: 9b01         	ldr	r3, [sp, #0x4]
  399e56: 4a24         	ldr	r2, [pc, #0x90]         @ 0x399ee8 <PlayerLobby::PlayerLobby()+0xdc>
  399e58: 58a2         	ldr	r2, [r4, r2]
  399e5a: f502 7223    	add.w	r2, r2, #0x28c
  399e5e: f8c3 20e8    	str.w	r2, [r3, #0xe8]
  399e62: 9b01         	ldr	r3, [sp, #0x4]
  399e64: 4a20         	ldr	r2, [pc, #0x80]         @ 0x399ee8 <PlayerLobby::PlayerLobby()+0xdc>
  399e66: 58a2         	ldr	r2, [r4, r2]
  399e68: f502 722b    	add.w	r2, r2, #0x2ac
  399e6c: f8c3 20ec    	str.w	r2, [r3, #0xec]
  399e70: 9b01         	ldr	r3, [sp, #0x4]
  399e72: f503 7396    	add.w	r3, r3, #0x12c
  399e76: 4618         	mov	r0, r3
  399e78: f01b f19a    	bl	0x7b51b0 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18700> @ imm = #0x41b334
  399e7c: 9b01         	ldr	r3, [sp, #0x4]
  399e7e: f503 73aa    	add.w	r3, r3, #0x154
  399e82: 4618         	mov	r0, r3
  399e84: f1f8 ff26    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1f8e4c
  399e88: 9b01         	ldr	r3, [sp, #0x4]
  399e8a: f503 73ae    	add.w	r3, r3, #0x15c
  399e8e: 4618         	mov	r0, r3
  399e90: f1f8 ff20    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1f8e40
  399e94: 9b01         	ldr	r3, [sp, #0x4]
  399e96: f503 73b8    	add.w	r3, r3, #0x170
  399e9a: 4618         	mov	r0, r3
  399e9c: f1f8 ff1a    	bl	0x592cd4 <cocos2d::CCPoint::CCPoint()> @ imm = #0x1f8e34
  399ea0: 9b01         	ldr	r3, [sp, #0x4]
  399ea2: e01b         	b	0x399edc <PlayerLobby::PlayerLobby()+0xd0> @ imm = #0x36
  399ea4: 9b01         	ldr	r3, [sp, #0x4]
  399ea6: f503 7396    	add.w	r3, r3, #0x12c
  399eaa: 4618         	mov	r0, r3
  399eac: f01b f532    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41ba64
  399eb0: e7ff         	b	0x399eb2 <PlayerLobby::PlayerLobby()+0xa6> @ imm = #-0x2
  399eb2: 9b01         	ldr	r3, [sp, #0x4]
  399eb4: 33ec         	adds	r3, #0xec
  399eb6: 4618         	mov	r0, r3
  399eb8: f753 fea4    	bl	0x2edc04 <cocos2d::extension::CCEditBoxDelegate::~CCEditBoxDelegate()> @ imm = #-0xac2b8
  399ebc: 9b01         	ldr	r3, [sp, #0x4]
  399ebe: 33e8         	adds	r3, #0xe8
  399ec0: 4618         	mov	r0, r3
  399ec2: f750 fa6d    	bl	0x2ea3a0 <cocos2d::extension::CCTableViewDataSource::~CCTableViewDataSource()> @ imm = #-0xafb26
  399ec6: 9b01         	ldr	r3, [sp, #0x4]
  399ec8: 33e4         	adds	r3, #0xe4
  399eca: 4618         	mov	r0, r3
  399ecc: f750 fb14    	bl	0x2ea4f8 <cocos2d::extension::CCTableViewDelegate::~CCTableViewDelegate()> @ imm = #-0xaf9d8
  399ed0: 9b01         	ldr	r3, [sp, #0x4]
  399ed2: 4618         	mov	r0, r3
  399ed4: f1f5 fcb6    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1f596c
  399ed8: f3ee f8e8    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ee1d0
  399edc: 4618         	mov	r0, r3
  399ede: b002         	add	sp, #0x8
  399ee0: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x399ee1); words below are literal-pool data ---
  399ee2: bf00         	nop
  399ee4: 8bf4         	ldrh	r4, [r6, #0x1e]
  399ee6: 0059         	lsls	r1, r3, #0x1
  399ee8: dd48         	ble	0x399f7c <PlayerLobby::init()+0x90> @ imm = #0x90
  399eea: ffff b570    	<unknown>

// ==== PlayerLobby::init
//      file offset 0x399eec (= ELF address; Ghidra 0x3a9eec), 1840 bytes, Thumb-2
  399eec: b570         	push	{r4, r5, r6, lr}
  399eee: b096         	sub	sp, #0x58
  399ef0: 9003         	str	r0, [sp, #0xc]
  399ef2: 4c09         	ldr	r4, [pc, #0x24]         @ 0x399f18 <PlayerLobby::init()+0x2c>
  399ef4: 447c         	add	r4, pc
  399ef6: 9b03         	ldr	r3, [sp, #0xc]
  399ef8: 4618         	mov	r0, r3
  399efa: f1f5 fda7    	bl	0x58fa4c <cocos2d::CCNode::init()> @ imm = #0x1f5b4e
  399efe: 4603         	mov	r3, r0
  399f00: f88d 3013    	strb.w	r3, [sp, #0x13]
  399f04: f89d 3013    	ldrb.w	r3, [sp, #0x13]
  399f08: f083 0301    	eor	r3, r3, #0x1
  399f0c: b2db         	uxtb	r3, r3
  399f0e: 2b00         	cmp	r3, #0x0
  399f10: d004         	beq	0x399f1c <PlayerLobby::init()+0x30> @ imm = #0x8
  399f12: 2300         	movs	r3, #0x0
  399f14: e359         	b	0x39a5ca <PlayerLobby::init()+0x6de> @ imm = #0x6b2
  399f16: bf00         	nop
  399f18: 8b14         	ldrh	r4, [r2, #0x18]
  399f1a: 0059         	lsls	r1, r3, #0x1
  399f1c: 9b03         	ldr	r3, [sp, #0xc]
  399f1e: f04f 0200    	mov.w	r2, #0x0
  399f22: f8c3 2168    	str.w	r2, [r3, #0x168]
  399f26: 9b03         	ldr	r3, [sp, #0xc]
  399f28: 2200         	movs	r2, #0x0
  399f2a: f883 20f1    	strb.w	r2, [r3, #0xf1]
  399f2e: 9b03         	ldr	r3, [sp, #0xc]
  399f30: 2200         	movs	r2, #0x0
  399f32: f8c3 2178    	str.w	r2, [r3, #0x178]
  399f36: f1f6 f94b    	bl	0x5901d0 <cocos2d::CCNode::create()> @ imm = #0x1f6296
  399f3a: 4602         	mov	r2, r0
  399f3c: 9b03         	ldr	r3, [sp, #0xc]
  399f3e: f8c3 2144    	str.w	r2, [r3, #0x144]
  399f42: 9b03         	ldr	r3, [sp, #0xc]
  399f44: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  399f48: 4618         	mov	r0, r3
  399f4a: f1fd ffcd    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fdf9a
  399f4e: f7fd ff89    	bl	0x397e64 <LobbyOptionsLayer::create()> @ imm = #-0x20ee
  399f52: 4602         	mov	r2, r0
  399f54: 9b03         	ldr	r3, [sp, #0xc]
  399f56: f8c3 216c    	str.w	r2, [r3, #0x16c]
  399f5a: 9b03         	ldr	r3, [sp, #0xc]
  399f5c: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  399f60: 4618         	mov	r0, r3
  399f62: f1fd ffc1    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fdf82
  399f66: f1ff fee5    	bl	0x599d34 <cocos2d::CCArray::create()> @ imm = #0x1ffdca
  399f6a: 4602         	mov	r2, r0
  399f6c: 9b03         	ldr	r3, [sp, #0xc]
  399f6e: f8c3 20fc    	str.w	r2, [r3, #0xfc]
  399f72: 9b03         	ldr	r3, [sp, #0xc]
  399f74: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  399f78: 4618         	mov	r0, r3
  399f7a: f1fd ffb5    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fdf6a
  399f7e: 9b03         	ldr	r3, [sp, #0xc]
  399f80: f103 05e8    	add.w	r5, r3, #0xe8
  399f84: 4bcd         	ldr	r3, [pc, #0x334]        @ 0x39a2bc <PlayerLobby::init()+0x3d0>
  399f86: 58e3         	ldr	r3, [r4, r3]
  399f88: ed93 7a00    	vldr	s14, [r3]
  399f8c: eef2 7a04    	vmov.f32	s15, #1.000000e+01
  399f90: ee77 7a67    	vsub.f32	s15, s14, s15
  399f94: ab14         	add	r3, sp, #0x50
  399f96: 4618         	mov	r0, r3
  399f98: ee17 1a90    	vmov	r1, s15
  399f9c: f04f 0200    	mov.w	r2, #0x0
  399fa0: f2c4 22a0    	movt	r2, #0x42a0
  399fa4: f1f9 f876    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x1f90ec
  399fa8: ab14         	add	r3, sp, #0x50
  399faa: 4628         	mov	r0, r5
  399fac: 4619         	mov	r1, r3
  399fae: f0b9 f823    	bl	0x452ff8 <cocos2d::extension::CCTableView::create(cocos2d::extension::CCTableViewDataSource*, cocos2d::CCSize)> @ imm = #0xb9046
  399fb2: 4602         	mov	r2, r0
  399fb4: 9b03         	ldr	r3, [sp, #0xc]
  399fb6: f8c3 20f8    	str.w	r2, [r3, #0xf8]
  399fba: 9b03         	ldr	r3, [sp, #0xc]
  399fbc: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  399fc0: 4618         	mov	r0, r3
  399fc2: f1fd ff91    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fdf22
  399fc6: 9b03         	ldr	r3, [sp, #0xc]
  399fc8: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  399fcc: 681b         	ldr	r3, [r3]
  399fce: f503 7300    	add.w	r3, r3, #0x200
  399fd2: 681b         	ldr	r3, [r3]
  399fd4: 9a03         	ldr	r2, [sp, #0xc]
  399fd6: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  399fda: 4610         	mov	r0, r2
  399fdc: 2101         	movs	r1, #0x1
  399fde: 4798         	blx	r3
  399fe0: 9b03         	ldr	r3, [sp, #0xc]
  399fe2: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  399fe6: 681b         	ldr	r3, [r3]
  399fe8: 334c         	adds	r3, #0x4c
  399fea: 681d         	ldr	r5, [r3]
  399fec: 9b03         	ldr	r3, [sp, #0xc]
  399fee: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  399ff2: 461e         	mov	r6, r3
  399ff4: 4bb1         	ldr	r3, [pc, #0x2c4]        @ 0x39a2bc <PlayerLobby::init()+0x3d0>
  399ff6: 58e3         	ldr	r3, [r4, r3]
  399ff8: ed93 7a01    	vldr	s14, [r3, #4]
  399ffc: eddf 7aae    	vldr	s15, [pc, #696]         @ 0x39a2b8 <PlayerLobby::init()+0x3cc>
  39a000: ee77 7a67    	vsub.f32	s15, s14, s15
  39a004: ab14         	add	r3, sp, #0x50
  39a006: 4618         	mov	r0, r3
  39a008: f04f 0100    	mov.w	r1, #0x0
  39a00c: f2c4 01a0    	movt	r1, #0x40a0
  39a010: ee17 2a90    	vmov	r2, s15
  39a014: f1f8 fe6c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f8cd8
  39a018: ab14         	add	r3, sp, #0x50
  39a01a: 4630         	mov	r0, r6
  39a01c: 4619         	mov	r1, r3
  39a01e: 47a8         	blx	r5
  39a020: 9b03         	ldr	r3, [sp, #0xc]
  39a022: f8d3 20f8    	ldr.w	r2, [r3, #0xf8]
  39a026: 9b03         	ldr	r3, [sp, #0xc]
  39a028: 33e4         	adds	r3, #0xe4
  39a02a: 4610         	mov	r0, r2
  39a02c: 4619         	mov	r1, r3
  39a02e: f750 fa05    	bl	0x2ea43c <cocos2d::extension::CCTableView::setDelegate(cocos2d::extension::CCTableViewDelegate*)> @ imm = #-0xafbf6
  39a032: 9b03         	ldr	r3, [sp, #0xc]
  39a034: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  39a038: 4618         	mov	r0, r3
  39a03a: 2100         	movs	r1, #0x0
  39a03c: f0b9 f984    	bl	0x453348 <cocos2d::extension::CCTableView::setVerticalFillOrder(cocos2d::extension::CCTableViewVerticalFillOrder)> @ imm = #0xb9308
  39a040: 9b03         	ldr	r3, [sp, #0xc]
  39a042: 681b         	ldr	r3, [r3]
  39a044: 33cc         	adds	r3, #0xcc
  39a046: 681b         	ldr	r3, [r3]
  39a048: 9903         	ldr	r1, [sp, #0xc]
  39a04a: 9a03         	ldr	r2, [sp, #0xc]
  39a04c: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  39a050: 4608         	mov	r0, r1
  39a052: 4611         	mov	r1, r2
  39a054: 2201         	movs	r2, #0x1
  39a056: 4798         	blx	r3
  39a058: 9b03         	ldr	r3, [sp, #0xc]
  39a05a: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  39a05e: 4618         	mov	r0, r3
  39a060: f0b9 f99c    	bl	0x45339c <cocos2d::extension::CCTableView::reloadData()> @ imm = #0xb9338
  39a064: 4b95         	ldr	r3, [pc, #0x254]        @ 0x39a2bc <PlayerLobby::init()+0x3d0>
  39a066: 58e3         	ldr	r3, [r4, r3]
  39a068: 681b         	ldr	r3, [r3]
  39a06a: aa14         	add	r2, sp, #0x50
  39a06c: 4610         	mov	r0, r2
  39a06e: 4619         	mov	r1, r3
  39a070: f04f 0200    	mov.w	r2, #0x0
  39a074: f2c4 12c8    	movt	r2, #0x41c8
  39a078: f1f9 f80c    	bl	0x593094 <cocos2d::CCSize::CCSize(float, float)> @ imm = #0x1f9018
  39a07c: 4b90         	ldr	r3, [pc, #0x240]        @ 0x39a2c0 <PlayerLobby::init()+0x3d4>
  39a07e: 447b         	add	r3, pc
  39a080: 4618         	mov	r0, r3
  39a082: f0b4 f877    	bl	0x44e174 <cocos2d::extension::CCScale9Sprite::create(char const*)> @ imm = #0xb40ee
  39a086: 4603         	mov	r3, r0
  39a088: aa14         	add	r2, sp, #0x50
  39a08a: 4610         	mov	r0, r2
  39a08c: 4619         	mov	r1, r3
  39a08e: 2200         	movs	r2, #0x0
  39a090: 2300         	movs	r3, #0x0
  39a092: f0bc fc5d    	bl	0x456950 <cocos2d::extension::CCEditBox::create(cocos2d::CCSize const&, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*)> @ imm = #0xbc8ba
  39a096: 4602         	mov	r2, r0
  39a098: 9b03         	ldr	r3, [sp, #0xc]
  39a09a: f8c3 2100    	str.w	r2, [r3, #0x100]
  39a09e: 9b03         	ldr	r3, [sp, #0xc]
  39a0a0: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  39a0a4: 4618         	mov	r0, r3
  39a0a6: f1fd ff1f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fde3e
  39a0aa: 9b03         	ldr	r3, [sp, #0xc]
  39a0ac: f8d3 5100    	ldr.w	r5, [r3, #0x100]
  39a0b0: 9b03         	ldr	r3, [sp, #0xc]
  39a0b2: f503 7396    	add.w	r3, r3, #0x12c
  39a0b6: 4618         	mov	r0, r3
  39a0b8: f01b f122    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x41b244
  39a0bc: 4603         	mov	r3, r0
  39a0be: 4628         	mov	r0, r5
  39a0c0: 4619         	mov	r1, r3
  39a0c2: f0bc fd21    	bl	0x456b08 <cocos2d::extension::CCEditBox::setText(char const*)> @ imm = #0xbca42
  39a0c6: 9b03         	ldr	r3, [sp, #0xc]
  39a0c8: f8d3 2100    	ldr.w	r2, [r3, #0x100]
  39a0cc: 9b03         	ldr	r3, [sp, #0xc]
  39a0ce: 33ec         	adds	r3, #0xec
  39a0d0: 4610         	mov	r0, r2
  39a0d2: 4619         	mov	r1, r3
  39a0d4: f0bc fcf8    	bl	0x456ac8 <cocos2d::extension::CCEditBox::setDelegate(cocos2d::extension::CCEditBoxDelegate*)> @ imm = #0xbc9f0
  39a0d8: 9b03         	ldr	r3, [sp, #0xc]
  39a0da: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  39a0de: 681b         	ldr	r3, [r3]
  39a0e0: 334c         	adds	r3, #0x4c
  39a0e2: 681d         	ldr	r5, [r3]
  39a0e4: 9b03         	ldr	r3, [sp, #0xc]
  39a0e6: f8d3 6100    	ldr.w	r6, [r3, #0x100]
  39a0ea: 9b03         	ldr	r3, [sp, #0xc]
  39a0ec: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  39a0f0: 681b         	ldr	r3, [r3]
  39a0f2: 3350         	adds	r3, #0x50
  39a0f4: 681b         	ldr	r3, [r3]
  39a0f6: 9a03         	ldr	r2, [sp, #0xc]
  39a0f8: f8d2 20f8    	ldr.w	r2, [r2, #0xf8]
  39a0fc: 4610         	mov	r0, r2
  39a0fe: 4798         	blx	r3
  39a100: 4603         	mov	r3, r0
  39a102: 4630         	mov	r0, r6
  39a104: 4619         	mov	r1, r3
  39a106: 47a8         	blx	r5
  39a108: 9b03         	ldr	r3, [sp, #0xc]
  39a10a: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  39a10e: 681b         	ldr	r3, [r3]
  39a110: 337c         	adds	r3, #0x7c
  39a112: 681d         	ldr	r5, [r3]
  39a114: 9b03         	ldr	r3, [sp, #0xc]
  39a116: f8d3 6100    	ldr.w	r6, [r3, #0x100]
  39a11a: ab14         	add	r3, sp, #0x50
  39a11c: 4618         	mov	r0, r3
  39a11e: f04f 0100    	mov.w	r1, #0x0
  39a122: f04f 527e    	mov.w	r2, #0x3f800000
  39a126: f1f8 fde3    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f8bc6
  39a12a: ab14         	add	r3, sp, #0x50
  39a12c: 4630         	mov	r0, r6
  39a12e: 4619         	mov	r1, r3
  39a130: 47a8         	blx	r5
  39a132: 9b03         	ldr	r3, [sp, #0xc]
  39a134: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  39a138: 4618         	mov	r0, r3
  39a13a: 4b62         	ldr	r3, [pc, #0x188]        @ 0x39a2c4 <PlayerLobby::init()+0x3d8>
  39a13c: 447b         	add	r3, pc
  39a13e: 4619         	mov	r1, r3
  39a140: f0bc fdaa    	bl	0x456c98 <cocos2d::extension::CCEditBox::setFontColor(cocos2d::_ccColor3B const&)> @ imm = #0xbcb54
  39a144: 9b03         	ldr	r3, [sp, #0xc]
  39a146: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  39a14a: 4618         	mov	r0, r3
  39a14c: 2132         	movs	r1, #0x32
  39a14e: f0bc feb3    	bl	0x456eb8 <cocos2d::extension::CCEditBox::setMaxLength(int)> @ imm = #0xbcd66
  39a152: 9b03         	ldr	r3, [sp, #0xc]
  39a154: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  39a158: 4618         	mov	r0, r3
  39a15a: 4b5b         	ldr	r3, [pc, #0x16c]        @ 0x39a2c8 <PlayerLobby::init()+0x3dc>
  39a15c: 447b         	add	r3, pc
  39a15e: 4619         	mov	r1, r3
  39a160: 220e         	movs	r2, #0xe
  39a162: f0bc fd15    	bl	0x456b90 <cocos2d::extension::CCEditBox::setFont(char const*, int)> @ imm = #0xbca2a
  39a166: 9b03         	ldr	r3, [sp, #0xc]
  39a168: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  39a16c: 4618         	mov	r0, r3
  39a16e: 2106         	movs	r1, #0x6
  39a170: f0bc fe86    	bl	0x456e80 <cocos2d::extension::CCEditBox::setInputMode(cocos2d::extension::EditBoxInputMode)> @ imm = #0xbcd0c
  39a174: 9b03         	ldr	r3, [sp, #0xc]
  39a176: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  39a17a: 4618         	mov	r0, r3
  39a17c: 2103         	movs	r1, #0x3
  39a17e: f0bc febf    	bl	0x456f00 <cocos2d::extension::CCEditBox::setInputFlag(cocos2d::extension::EditBoxInputFlag)> @ imm = #0xbcd7e
  39a182: 9b03         	ldr	r3, [sp, #0xc]
  39a184: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  39a188: 4618         	mov	r0, r3
  39a18a: 2101         	movs	r1, #0x1
  39a18c: f0bc fed4    	bl	0x456f38 <cocos2d::extension::CCEditBox::setReturnType(cocos2d::extension::KeyboardReturnType)> @ imm = #0xbcda8
  39a190: 9b03         	ldr	r3, [sp, #0xc]
  39a192: 681b         	ldr	r3, [r3]
  39a194: 33cc         	adds	r3, #0xcc
  39a196: 681b         	ldr	r3, [r3]
  39a198: 9903         	ldr	r1, [sp, #0xc]
  39a19a: 9a03         	ldr	r2, [sp, #0xc]
  39a19c: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  39a1a0: 4608         	mov	r0, r1
  39a1a2: 4611         	mov	r1, r2
  39a1a4: 2201         	movs	r2, #0x1
  39a1a6: 4798         	blx	r3
  39a1a8: 9b03         	ldr	r3, [sp, #0xc]
  39a1aa: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  39a1ae: 681b         	ldr	r3, [r3]
  39a1b0: 3390         	adds	r3, #0x90
  39a1b2: 681b         	ldr	r3, [r3]
  39a1b4: 9a03         	ldr	r2, [sp, #0xc]
  39a1b6: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  39a1ba: 4610         	mov	r0, r2
  39a1bc: 2100         	movs	r1, #0x0
  39a1be: 4798         	blx	r3
  39a1c0: 9b03         	ldr	r3, [sp, #0xc]
  39a1c2: 2200         	movs	r2, #0x0
  39a1c4: f883 20f0    	strb.w	r2, [r3, #0xf0]
  39a1c8: 9b03         	ldr	r3, [sp, #0xc]
  39a1ca: f04f 0200    	mov.w	r2, #0x0
  39a1ce: f2c4 1220    	movt	r2, #0x4120
  39a1d2: f8c3 2148    	str.w	r2, [r3, #0x148]
  39a1d6: 9b03         	ldr	r3, [sp, #0xc]
  39a1d8: 2200         	movs	r2, #0x0
  39a1da: f883 214c    	strb.w	r2, [r3, #0x14c]
  39a1de: f7dd fcaf    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x226a2
  39a1e2: 4603         	mov	r3, r0
  39a1e4: 4618         	mov	r0, r3
  39a1e6: f7df fd97    	bl	0x379d18 <NetworkManager::getOnlinePlayers()> @ imm = #-0x204d2
  39a1ea: 4602         	mov	r2, r0
  39a1ec: 9b03         	ldr	r3, [sp, #0xc]
  39a1ee: f8c3 2150    	str.w	r2, [r3, #0x150]
  39a1f2: 9b03         	ldr	r3, [sp, #0xc]
  39a1f4: 681b         	ldr	r3, [r3]
  39a1f6: f503 73f6    	add.w	r3, r3, #0x1ec
  39a1fa: 681b         	ldr	r3, [r3]
  39a1fc: 9803         	ldr	r0, [sp, #0xc]
  39a1fe: 4798         	blx	r3
  39a200: 9b03         	ldr	r3, [sp, #0xc]
  39a202: f503 7596    	add.w	r5, r3, #0x12c
  39a206: f248 fa11    	bl	0x5e262c <cocos2d::CCUserDefault::sharedUserDefault()> @ imm = #0x248422
  39a20a: 4606         	mov	r6, r0
  39a20c: ab10         	add	r3, sp, #0x40
  39a20e: 4618         	mov	r0, r3
  39a210: f3f0 f8f0    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3f01e0
  39a214: aa12         	add	r2, sp, #0x48
  39a216: ab10         	add	r3, sp, #0x40
  39a218: 4610         	mov	r0, r2
  39a21a: 4a2c         	ldr	r2, [pc, #0xb0]         @ 0x39a2cc <PlayerLobby::init()+0x3e0>
  39a21c: 447a         	add	r2, pc
  39a21e: 4611         	mov	r1, r2
  39a220: 461a         	mov	r2, r3
  39a222: f01c f41d    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41c83a
  39a226: aa14         	add	r2, sp, #0x50
  39a228: ab12         	add	r3, sp, #0x48
  39a22a: 4610         	mov	r0, r2
  39a22c: 4631         	mov	r1, r6
  39a22e: 4a28         	ldr	r2, [pc, #0xa0]         @ 0x39a2d0 <PlayerLobby::init()+0x3e4>
  39a230: 447a         	add	r2, pc
  39a232: f248 f933    	bl	0x5e249c <cocos2d::CCUserDefault::getStringForKey(char const*, std::string const&)> @ imm = #0x248266
  39a236: ab14         	add	r3, sp, #0x50
  39a238: 4628         	mov	r0, r5
  39a23a: 4619         	mov	r1, r3
  39a23c: f01b f054    	bl	0x7b52e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18838> @ imm = #0x41b0a8
  39a240: ab14         	add	r3, sp, #0x50
  39a242: 4618         	mov	r0, r3
  39a244: f01b f366    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41b6cc
  39a248: ab12         	add	r3, sp, #0x48
  39a24a: 4618         	mov	r0, r3
  39a24c: f01b f362    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41b6c4
  39a250: ab10         	add	r3, sp, #0x40
  39a252: 4618         	mov	r0, r3
  39a254: f3f0 f8d2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3f01a4
  39a258: 9b03         	ldr	r3, [sp, #0xc]
  39a25a: 2201         	movs	r2, #0x1
  39a25c: f883 214d    	strb.w	r2, [r3, #0x14d]
  39a260: 9b03         	ldr	r3, [sp, #0xc]
  39a262: f04f 0200    	mov.w	r2, #0x0
  39a266: f8c3 2164    	str.w	r2, [r3, #0x164]
  39a26a: 9b03         	ldr	r3, [sp, #0xc]
  39a26c: 2200         	movs	r2, #0x0
  39a26e: f883 20f2    	strb.w	r2, [r3, #0xf2]
  39a272: 9b03         	ldr	r3, [sp, #0xc]
  39a274: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  39a278: 681b         	ldr	r3, [r3]
  39a27a: 3390         	adds	r3, #0x90
  39a27c: 681b         	ldr	r3, [r3]
  39a27e: 9a03         	ldr	r2, [sp, #0xc]
  39a280: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  39a284: 4610         	mov	r0, r2
  39a286: 2100         	movs	r1, #0x0
  39a288: 4798         	blx	r3
  39a28a: 9b03         	ldr	r3, [sp, #0xc]
  39a28c: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  39a290: 681b         	ldr	r3, [r3]
  39a292: 3390         	adds	r3, #0x90
  39a294: 681b         	ldr	r3, [r3]
  39a296: 9a03         	ldr	r2, [sp, #0xc]
  39a298: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  39a29c: 4610         	mov	r0, r2
  39a29e: 2100         	movs	r1, #0x0
  39a2a0: 4798         	blx	r3
  39a2a2: 9b03         	ldr	r3, [sp, #0xc]
  39a2a4: 681b         	ldr	r3, [r3]
  39a2a6: 33c8         	adds	r3, #0xc8
  39a2a8: 681b         	ldr	r3, [r3]
  39a2aa: 9903         	ldr	r1, [sp, #0xc]
  39a2ac: 9a03         	ldr	r2, [sp, #0xc]
  39a2ae: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  39a2b2: 4608         	mov	r0, r1
  39a2b4: e00e         	b	0x39a2d4 <PlayerLobby::init()+0x3e8> @ imm = #0x1c
  39a2b6: bf00         	nop
  39a2b8: 0000         	movs	r0, r0
  39a2ba: 42a0         	cmp	r0, r4
  39a2bc: d724         	bvc	0x39a308 <PlayerLobby::init()+0x41c> @ imm = #0x48
  39a2be: ffff 7ebe    	<unknown>
  39a2c2: 0043         	lsls	r3, r0, #0x1
  39a2c4: 8208         	strh	r0, [r1, #0x10]
  39a2c6: 0043         	lsls	r3, r0, #0x1
  39a2c8: 7df0         	ldrb	r0, [r6, #0x17]
  39a2ca: 0043         	lsls	r3, r0, #0x1
  39a2cc: 7d38         	ldrb	r0, [r7, #0x14]
  39a2ce: 0043         	lsls	r3, r0, #0x1
  39a2d0: 7d2c         	ldrb	r4, [r5, #0x14]
  39a2d2: 0043         	lsls	r3, r0, #0x1
  39a2d4: 4611         	mov	r1, r2
  39a2d6: 4798         	blx	r3
  39a2d8: f246 f9ea    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2463d4
  39a2dc: 4602         	mov	r2, r0
  39a2de: 9b03         	ldr	r3, [sp, #0xc]
  39a2e0: 49bb         	ldr	r1, [pc, #0x2ec]        @ 0x39a5d0 <PlayerLobby::init()+0x6e4>
  39a2e2: 4479         	add	r1, pc
  39a2e4: ad06         	add	r5, sp, #0x18
  39a2e6: c903         	ldm	r1, {r0, r1}
  39a2e8: e885 0003    	stm.w	r5, {r0, r1}
  39a2ec: 49b9         	ldr	r1, [pc, #0x2e4]        @ 0x39a5d4 <PlayerLobby::init()+0x6e8>
  39a2ee: 4479         	add	r1, pc
  39a2f0: 9100         	str	r1, [sp]
  39a2f2: 2100         	movs	r1, #0x0
  39a2f4: 9101         	str	r1, [sp, #0x4]
  39a2f6: 4610         	mov	r0, r2
  39a2f8: 4619         	mov	r1, r3
  39a2fa: ab06         	add	r3, sp, #0x18
  39a2fc: cb0c         	ldm	r3, {r2, r3}
  39a2fe: f246 fa73    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2464e6
  39a302: f246 f9d5    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2463aa
  39a306: 4602         	mov	r2, r0
  39a308: 9b03         	ldr	r3, [sp, #0xc]
  39a30a: 49b3         	ldr	r1, [pc, #0x2cc]        @ 0x39a5d8 <PlayerLobby::init()+0x6ec>
  39a30c: 4479         	add	r1, pc
  39a30e: ad08         	add	r5, sp, #0x20
  39a310: c903         	ldm	r1, {r0, r1}
  39a312: e885 0003    	stm.w	r5, {r0, r1}
  39a316: 49b1         	ldr	r1, [pc, #0x2c4]        @ 0x39a5dc <PlayerLobby::init()+0x6f0>
  39a318: 4479         	add	r1, pc
  39a31a: 9100         	str	r1, [sp]
  39a31c: 2100         	movs	r1, #0x0
  39a31e: 9101         	str	r1, [sp, #0x4]
  39a320: 4610         	mov	r0, r2
  39a322: 4619         	mov	r1, r3
  39a324: ab08         	add	r3, sp, #0x20
  39a326: cb0c         	ldm	r3, {r2, r3}
  39a328: f246 fa5e    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2464bc
  39a32c: f246 f9c0    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x246380
  39a330: 4602         	mov	r2, r0
  39a332: 9b03         	ldr	r3, [sp, #0xc]
  39a334: 49aa         	ldr	r1, [pc, #0x2a8]        @ 0x39a5e0 <PlayerLobby::init()+0x6f4>
  39a336: 4479         	add	r1, pc
  39a338: ad0a         	add	r5, sp, #0x28
  39a33a: c903         	ldm	r1, {r0, r1}
  39a33c: e885 0003    	stm.w	r5, {r0, r1}
  39a340: 49a8         	ldr	r1, [pc, #0x2a0]        @ 0x39a5e4 <PlayerLobby::init()+0x6f8>
  39a342: 4479         	add	r1, pc
  39a344: 9100         	str	r1, [sp]
  39a346: 2100         	movs	r1, #0x0
  39a348: 9101         	str	r1, [sp, #0x4]
  39a34a: 4610         	mov	r0, r2
  39a34c: 4619         	mov	r1, r3
  39a34e: ab0a         	add	r3, sp, #0x28
  39a350: cb0c         	ldm	r3, {r2, r3}
  39a352: f246 fa49    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x246492
  39a356: f246 f9ab    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x246356
  39a35a: 4602         	mov	r2, r0
  39a35c: 9b03         	ldr	r3, [sp, #0xc]
  39a35e: 49a2         	ldr	r1, [pc, #0x288]        @ 0x39a5e8 <PlayerLobby::init()+0x6fc>
  39a360: 4479         	add	r1, pc
  39a362: ad0c         	add	r5, sp, #0x30
  39a364: c903         	ldm	r1, {r0, r1}
  39a366: e885 0003    	stm.w	r5, {r0, r1}
  39a36a: 49a0         	ldr	r1, [pc, #0x280]        @ 0x39a5ec <PlayerLobby::init()+0x700>
  39a36c: 4479         	add	r1, pc
  39a36e: 9100         	str	r1, [sp]
  39a370: 2100         	movs	r1, #0x0
  39a372: 9101         	str	r1, [sp, #0x4]
  39a374: 4610         	mov	r0, r2
  39a376: 4619         	mov	r1, r3
  39a378: ab0c         	add	r3, sp, #0x30
  39a37a: cb0c         	ldm	r3, {r2, r3}
  39a37c: f246 fa34    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x246468
  39a380: f246 f996    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x24632c
  39a384: 4602         	mov	r2, r0
  39a386: 9b03         	ldr	r3, [sp, #0xc]
  39a388: 4999         	ldr	r1, [pc, #0x264]        @ 0x39a5f0 <PlayerLobby::init()+0x704>
  39a38a: 4479         	add	r1, pc
  39a38c: ad0e         	add	r5, sp, #0x38
  39a38e: c903         	ldm	r1, {r0, r1}
  39a390: e885 0003    	stm.w	r5, {r0, r1}
  39a394: 4997         	ldr	r1, [pc, #0x25c]        @ 0x39a5f4 <PlayerLobby::init()+0x708>
  39a396: 4479         	add	r1, pc
  39a398: 9100         	str	r1, [sp]
  39a39a: 2100         	movs	r1, #0x0
  39a39c: 9101         	str	r1, [sp, #0x4]
  39a39e: 4610         	mov	r0, r2
  39a3a0: 4619         	mov	r1, r3
  39a3a2: ab0e         	add	r3, sp, #0x38
  39a3a4: cb0c         	ldm	r3, {r2, r3}
  39a3a6: f246 fa1f    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x24643e
  39a3aa: f246 f981    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x246302
  39a3ae: 4602         	mov	r2, r0
  39a3b0: 9b03         	ldr	r3, [sp, #0xc]
  39a3b2: 4991         	ldr	r1, [pc, #0x244]        @ 0x39a5f8 <PlayerLobby::init()+0x70c>
  39a3b4: 4479         	add	r1, pc
  39a3b6: ad10         	add	r5, sp, #0x40
  39a3b8: c903         	ldm	r1, {r0, r1}
  39a3ba: e885 0003    	stm.w	r5, {r0, r1}
  39a3be: 498f         	ldr	r1, [pc, #0x23c]        @ 0x39a5fc <PlayerLobby::init()+0x710>
  39a3c0: 4479         	add	r1, pc
  39a3c2: 9100         	str	r1, [sp]
  39a3c4: 2100         	movs	r1, #0x0
  39a3c6: 9101         	str	r1, [sp, #0x4]
  39a3c8: 4610         	mov	r0, r2
  39a3ca: 4619         	mov	r1, r3
  39a3cc: ab10         	add	r3, sp, #0x40
  39a3ce: cb0c         	ldm	r3, {r2, r3}
  39a3d0: f246 fa0a    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x246414
  39a3d4: f246 f96c    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2462d8
  39a3d8: 4602         	mov	r2, r0
  39a3da: 9b03         	ldr	r3, [sp, #0xc]
  39a3dc: 4988         	ldr	r1, [pc, #0x220]        @ 0x39a600 <PlayerLobby::init()+0x714>
  39a3de: 4479         	add	r1, pc
  39a3e0: ad12         	add	r5, sp, #0x48
  39a3e2: c903         	ldm	r1, {r0, r1}
  39a3e4: e885 0003    	stm.w	r5, {r0, r1}
  39a3e8: 4986         	ldr	r1, [pc, #0x218]        @ 0x39a604 <PlayerLobby::init()+0x718>
  39a3ea: 4479         	add	r1, pc
  39a3ec: 9100         	str	r1, [sp]
  39a3ee: 2100         	movs	r1, #0x0
  39a3f0: 9101         	str	r1, [sp, #0x4]
  39a3f2: 4610         	mov	r0, r2
  39a3f4: 4619         	mov	r1, r3
  39a3f6: ab12         	add	r3, sp, #0x48
  39a3f8: cb0c         	ldm	r3, {r2, r3}
  39a3fa: f246 f9f5    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2463ea
  39a3fe: f246 f957    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x2462ae
  39a402: 4602         	mov	r2, r0
  39a404: 9b03         	ldr	r3, [sp, #0xc]
  39a406: 4980         	ldr	r1, [pc, #0x200]        @ 0x39a608 <PlayerLobby::init()+0x71c>
  39a408: 4479         	add	r1, pc
  39a40a: ad14         	add	r5, sp, #0x50
  39a40c: c903         	ldm	r1, {r0, r1}
  39a40e: e885 0003    	stm.w	r5, {r0, r1}
  39a412: 497e         	ldr	r1, [pc, #0x1f8]        @ 0x39a60c <PlayerLobby::init()+0x720>
  39a414: 4479         	add	r1, pc
  39a416: 9100         	str	r1, [sp]
  39a418: 2100         	movs	r1, #0x0
  39a41a: 9101         	str	r1, [sp, #0x4]
  39a41c: 4610         	mov	r0, r2
  39a41e: 4619         	mov	r1, r3
  39a420: ab14         	add	r3, sp, #0x50
  39a422: cb0c         	ldm	r3, {r2, r3}
  39a424: f246 f9e0    	bl	0x5e07e8 <cocos2d::CCNotificationCenter::addObserver(cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, cocos2d::CCObject*)> @ imm = #0x2463c0
  39a428: f1fc ffc2    	bl	0x5973b0 <cocos2d::CCDictionary::create()> @ imm = #0x1fcf84
  39a42c: 4602         	mov	r2, r0
  39a42e: 9b03         	ldr	r3, [sp, #0xc]
  39a430: f8c3 2124    	str.w	r2, [r3, #0x124]
  39a434: 9b03         	ldr	r3, [sp, #0xc]
  39a436: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  39a43a: 4618         	mov	r0, r3
  39a43c: f1fd fd54    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fdaa8
  39a440: 9b03         	ldr	r3, [sp, #0xc]
  39a442: 681b         	ldr	r3, [r3]
  39a444: f503 73da    	add.w	r3, r3, #0x1b4
  39a448: 681d         	ldr	r5, [r3]
  39a44a: ab04         	add	r3, sp, #0x10
  39a44c: 4618         	mov	r0, r3
  39a44e: f3ef ffd1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3effa2
  39a452: aa05         	add	r2, sp, #0x14
  39a454: ab04         	add	r3, sp, #0x10
  39a456: 4610         	mov	r0, r2
  39a458: 4a6d         	ldr	r2, [pc, #0x1b4]        @ 0x39a610 <PlayerLobby::init()+0x724>
  39a45a: 447a         	add	r2, pc
  39a45c: 4611         	mov	r1, r2
  39a45e: 461a         	mov	r2, r3
  39a460: f01c f2fe    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41c5fc
  39a464: ab05         	add	r3, sp, #0x14
  39a466: 9803         	ldr	r0, [sp, #0xc]
  39a468: 4619         	mov	r1, r3
  39a46a: 47a8         	blx	r5
  39a46c: ab05         	add	r3, sp, #0x14
  39a46e: 4618         	mov	r0, r3
  39a470: f01b f250    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41b4a0
  39a474: ab04         	add	r3, sp, #0x10
  39a476: 4618         	mov	r0, r3
  39a478: f3ef ffc0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3eff80
  39a47c: f7dd fb60    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x22940
  39a480: 4603         	mov	r3, r0
  39a482: 4618         	mov	r0, r3
  39a484: f099 fc0c    	bl	0x433ca0 <NetworkManagerBridge::startReachability()> @ imm = #0x99818
  39a488: f091 fde0    	bl	0x42c04c <ApplicationInterface::createAdBanner()> @ imm = #0x91bc0
  39a48c: 9b03         	ldr	r3, [sp, #0xc]
  39a48e: 681b         	ldr	r3, [r3]
  39a490: 33c8         	adds	r3, #0xc8
  39a492: 681b         	ldr	r3, [r3]
  39a494: 9903         	ldr	r1, [sp, #0xc]
  39a496: 9a03         	ldr	r2, [sp, #0xc]
  39a498: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  39a49c: 4608         	mov	r0, r1
  39a49e: 4611         	mov	r1, r2
  39a4a0: 4798         	blx	r3
  39a4a2: 9b03         	ldr	r3, [sp, #0xc]
  39a4a4: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  39a4a8: 681b         	ldr	r3, [r3]
  39a4aa: 3390         	adds	r3, #0x90
  39a4ac: 681b         	ldr	r3, [r3]
  39a4ae: 9a03         	ldr	r2, [sp, #0xc]
  39a4b0: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  39a4b4: 4610         	mov	r0, r2
  39a4b6: 2100         	movs	r1, #0x0
  39a4b8: 4798         	blx	r3
  39a4ba: 9b03         	ldr	r3, [sp, #0xc]
  39a4bc: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  39a4c0: 681b         	ldr	r3, [r3]
  39a4c2: 334c         	adds	r3, #0x4c
  39a4c4: 681b         	ldr	r3, [r3]
  39a4c6: 9a03         	ldr	r2, [sp, #0xc]
  39a4c8: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  39a4cc: 4610         	mov	r0, r2
  39a4ce: 4a51         	ldr	r2, [pc, #0x144]        @ 0x39a614 <PlayerLobby::init()+0x728>
  39a4d0: 58a2         	ldr	r2, [r4, r2]
  39a4d2: 4611         	mov	r1, r2
  39a4d4: 4798         	blx	r3
  39a4d6: f7fd fc8d    	bl	0x397df4 <PostGameScreen::create()> @ imm = #-0x26e6
  39a4da: 4602         	mov	r2, r0
  39a4dc: 9b03         	ldr	r3, [sp, #0xc]
  39a4de: f8c3 20f4    	str.w	r2, [r3, #0xf4]
  39a4e2: 9b03         	ldr	r3, [sp, #0xc]
  39a4e4: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  39a4e8: 4618         	mov	r0, r3
  39a4ea: f1fd fcfd    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fd9fa
  39a4ee: 9b03         	ldr	r3, [sp, #0xc]
  39a4f0: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  39a4f4: 681b         	ldr	r3, [r3]
  39a4f6: 334c         	adds	r3, #0x4c
  39a4f8: 681b         	ldr	r3, [r3]
  39a4fa: 9a03         	ldr	r2, [sp, #0xc]
  39a4fc: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  39a500: 4610         	mov	r0, r2
  39a502: 4a44         	ldr	r2, [pc, #0x110]        @ 0x39a614 <PlayerLobby::init()+0x728>
  39a504: 58a2         	ldr	r2, [r4, r2]
  39a506: 4611         	mov	r1, r2
  39a508: 4798         	blx	r3
  39a50a: 9b03         	ldr	r3, [sp, #0xc]
  39a50c: 681b         	ldr	r3, [r3]
  39a50e: 33cc         	adds	r3, #0xcc
  39a510: 681b         	ldr	r3, [r3]
  39a512: 9903         	ldr	r1, [sp, #0xc]
  39a514: 9a03         	ldr	r2, [sp, #0xc]
  39a516: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  39a51a: 4608         	mov	r0, r1
  39a51c: 4611         	mov	r1, r2
  39a51e: 2201         	movs	r2, #0x1
  39a520: 4798         	blx	r3
  39a522: f037 fed1    	bl	0x3d22c8 <ScoreKeeper::sharedScoreKeeper()> @ imm = #0x37da2
  39a526: 4603         	mov	r3, r0
  39a528: f893 3028    	ldrb.w	r3, [r3, #0x28]
  39a52c: f083 0301    	eor	r3, r3, #0x1
  39a530: b2db         	uxtb	r3, r3
  39a532: 2b00         	cmp	r3, #0x0
  39a534: d007         	beq	0x39a546 <PlayerLobby::init()+0x65a> @ imm = #0xe
  39a536: 9b03         	ldr	r3, [sp, #0xc]
  39a538: 681b         	ldr	r3, [r3]
  39a53a: f503 73e0    	add.w	r3, r3, #0x1c0
  39a53e: 681b         	ldr	r3, [r3]
  39a540: 9803         	ldr	r0, [sp, #0xc]
  39a542: 2100         	movs	r1, #0x0
  39a544: 4798         	blx	r3
  39a546: 4b34         	ldr	r3, [pc, #0xd0]         @ 0x39a618 <PlayerLobby::init()+0x72c>
  39a548: 58e3         	ldr	r3, [r4, r3]
  39a54a: 681b         	ldr	r3, [r3]
  39a54c: 2b02         	cmp	r3, #0x2
  39a54e: d012         	beq	0x39a576 <PlayerLobby::init()+0x68a> @ imm = #0x24
  39a550: 2b03         	cmp	r3, #0x3
  39a552: d009         	beq	0x39a568 <PlayerLobby::init()+0x67c> @ imm = #0x12
  39a554: 2b01         	cmp	r3, #0x1
  39a556: d000         	beq	0x39a55a <PlayerLobby::init()+0x66e> @ imm = #0x0
  39a558: e014         	b	0x39a584 <PlayerLobby::init()+0x698> @ imm = #0x28
  39a55a: 9b03         	ldr	r3, [sp, #0xc]
  39a55c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  39a560: 4618         	mov	r0, r3
  39a562: f016 f8f7    	bl	0x3b0754 <PostGameScreen::playerQuitGame()> @ imm = #0x161ee
  39a566: e00d         	b	0x39a584 <PlayerLobby::init()+0x698> @ imm = #0x1a
  39a568: 9b03         	ldr	r3, [sp, #0xc]
  39a56a: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  39a56e: 4618         	mov	r0, r3
  39a570: f015 fc62    	bl	0x3afe38 <PostGameScreen::playerCompletedGame()> @ imm = #0x158c4
  39a574: e006         	b	0x39a584 <PlayerLobby::init()+0x698> @ imm = #0xc
  39a576: 9b03         	ldr	r3, [sp, #0xc]
  39a578: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  39a57c: 4618         	mov	r0, r3
  39a57e: f015 fedf    	bl	0x3b0340 <PostGameScreen::playerEndedGame()> @ imm = #0x15dbe
  39a582: bf00         	nop
  39a584: f08a fd98    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x8ab30
  39a588: 4603         	mov	r3, r0
  39a58a: 4618         	mov	r0, r3
  39a58c: f08a fdc2    	bl	0x425114 <LeaderBoardBridge::calcPlayerSkill()> @ imm = #0x8ab84
  39a590: 2301         	movs	r3, #0x1
  39a592: e01a         	b	0x39a5ca <PlayerLobby::init()+0x6de> @ imm = #0x34
  39a594: ab14         	add	r3, sp, #0x50
  39a596: 4618         	mov	r0, r3
  39a598: f01b f1bc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41b378
  39a59c: e7ff         	b	0x39a59e <PlayerLobby::init()+0x6b2> @ imm = #-0x2
  39a59e: ab12         	add	r3, sp, #0x48
  39a5a0: 4618         	mov	r0, r3
  39a5a2: f01b f1b7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41b36e
  39a5a6: e7ff         	b	0x39a5a8 <PlayerLobby::init()+0x6bc> @ imm = #-0x2
  39a5a8: ab10         	add	r3, sp, #0x40
  39a5aa: 4618         	mov	r0, r3
  39a5ac: f3ef ff26    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3efe4c
  39a5b0: f3ed fd7c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3edaf8
  39a5b4: ab05         	add	r3, sp, #0x14
  39a5b6: 4618         	mov	r0, r3
  39a5b8: f01b f1ac    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41b358
  39a5bc: e7ff         	b	0x39a5be <PlayerLobby::init()+0x6d2> @ imm = #-0x2
  39a5be: ab04         	add	r3, sp, #0x10
  39a5c0: 4618         	mov	r0, r3
  39a5c2: f3ef ff1b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3efe36
  39a5c6: f3ed fd71    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3edae2
  39a5ca: 4618         	mov	r0, r3
  39a5cc: b016         	add	sp, #0x58
  39a5ce: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x39a5cf); words below are literal-pool data ---
  39a5d0: 7d02         	ldrb	r2, [r0, #0x14]
  39a5d2: 0043         	lsls	r3, r0, #0x1
  39a5d4: 7c7a         	ldrb	r2, [r7, #0x11]
  39a5d6: 0043         	lsls	r3, r0, #0x1
  39a5d8: 7ce0         	ldrb	r0, [r4, #0x13]
  39a5da: 0043         	lsls	r3, r0, #0x1
  39a5dc: 7c60         	ldrb	r0, [r4, #0x11]
  39a5de: 0043         	lsls	r3, r0, #0x1
  39a5e0: 7cbe         	ldrb	r6, [r7, #0x12]
  39a5e2: 0043         	lsls	r3, r0, #0x1
  39a5e4: 7c4e         	ldrb	r6, [r1, #0x11]
  39a5e6: 0043         	lsls	r3, r0, #0x1
  39a5e8: 7c9c         	ldrb	r4, [r3, #0x12]
  39a5ea: 0043         	lsls	r3, r0, #0x1
  39a5ec: 7c38         	ldrb	r0, [r7, #0x10]
  39a5ee: 0043         	lsls	r3, r0, #0x1
  39a5f0: 7c7a         	ldrb	r2, [r7, #0x11]
  39a5f2: 0043         	lsls	r3, r0, #0x1
  39a5f4: 7ae2         	ldrb	r2, [r4, #0xb]
  39a5f6: 0043         	lsls	r3, r0, #0x1
  39a5f8: 7c58         	ldrb	r0, [r3, #0x11]
  39a5fa: 0043         	lsls	r3, r0, #0x1
  39a5fc: 7aec         	ldrb	r4, [r5, #0xb]
  39a5fe: 0043         	lsls	r3, r0, #0x1
  39a600: 7c36         	ldrb	r6, [r6, #0x10]
  39a602: 0043         	lsls	r3, r0, #0x1
  39a604: 7bd2         	ldrb	r2, [r2, #0xf]
  39a606: 0043         	lsls	r3, r0, #0x1
  39a608: 7bdc         	ldrb	r4, [r3, #0xf]
  39a60a: 0043         	lsls	r3, r0, #0x1
  39a60c: 7bb8         	ldrb	r0, [r7, #0xe]
  39a60e: 0043         	lsls	r3, r0, #0x1
  39a610: 7aa6         	ldrb	r6, [r4, #0xa]
  39a612: 0043         	lsls	r3, r0, #0x1
  39a614: d954         	bls	0x39a6c0 <PlayerLobby::~PlayerLobby()+0xa4> @ imm = #0xa8
  39a616: ffff dd4c    	<unknown>
  39a61a: ffff b500    	<unknown>

// ==== PlayerLobby::~PlayerLobby
//      file offset 0x39a61c (= ELF address; Ghidra 0x3aa61c), 456 bytes, Thumb-2
  39a61c: b500         	push	{lr}
  39a61e: b083         	sub	sp, #0xc
  39a620: 9001         	str	r0, [sp, #0x4]
  39a622: 4b6e         	ldr	r3, [pc, #0x1b8]        @ 0x39a7dc <PlayerLobby::~PlayerLobby()+0x1c0>
  39a624: 447b         	add	r3, pc
  39a626: 9a01         	ldr	r2, [sp, #0x4]
  39a628: 496d         	ldr	r1, [pc, #0x1b4]        @ 0x39a7e0 <PlayerLobby::~PlayerLobby()+0x1c4>
  39a62a: 5859         	ldr	r1, [r3, r1]
  39a62c: 3108         	adds	r1, #0x8
  39a62e: 6011         	str	r1, [r2]
  39a630: 9a01         	ldr	r2, [sp, #0x4]
  39a632: 496b         	ldr	r1, [pc, #0x1ac]        @ 0x39a7e0 <PlayerLobby::~PlayerLobby()+0x1c4>
  39a634: 5859         	ldr	r1, [r3, r1]
  39a636: f501 7119    	add.w	r1, r1, #0x264
  39a63a: f8c2 10e4    	str.w	r1, [r2, #0xe4]
  39a63e: 9a01         	ldr	r2, [sp, #0x4]
  39a640: 4967         	ldr	r1, [pc, #0x19c]        @ 0x39a7e0 <PlayerLobby::~PlayerLobby()+0x1c4>
  39a642: 5859         	ldr	r1, [r3, r1]
  39a644: f501 7123    	add.w	r1, r1, #0x28c
  39a648: f8c2 10e8    	str.w	r1, [r2, #0xe8]
  39a64c: 9a01         	ldr	r2, [sp, #0x4]
  39a64e: 4964         	ldr	r1, [pc, #0x190]        @ 0x39a7e0 <PlayerLobby::~PlayerLobby()+0x1c4>
  39a650: 585b         	ldr	r3, [r3, r1]
  39a652: f503 732b    	add.w	r3, r3, #0x2ac
  39a656: f8c2 30ec    	str.w	r3, [r2, #0xec]
  39a65a: f246 f829    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x246052
  39a65e: 4602         	mov	r2, r0
  39a660: 9b01         	ldr	r3, [sp, #0x4]
  39a662: 4610         	mov	r0, r2
  39a664: 4619         	mov	r1, r3
  39a666: f246 f95b    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x2462b6
  39a66a: 9b01         	ldr	r3, [sp, #0x4]
  39a66c: 4618         	mov	r0, r3
  39a66e: f1f5 ffdd    	bl	0x59062c <cocos2d::CCNode::removeAllChildren()> @ imm = #0x1f5fba
  39a672: 9b01         	ldr	r3, [sp, #0x4]
  39a674: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39a678: 681b         	ldr	r3, [r3]
  39a67a: f503 7380    	add.w	r3, r3, #0x100
  39a67e: 681b         	ldr	r3, [r3]
  39a680: 9a01         	ldr	r2, [sp, #0x4]
  39a682: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  39a686: 4610         	mov	r0, r2
  39a688: 4798         	blx	r3
  39a68a: 9b01         	ldr	r3, [sp, #0x4]
  39a68c: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39a690: 4618         	mov	r0, r3
  39a692: f1fd fc11    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd822
  39a696: 9b01         	ldr	r3, [sp, #0x4]
  39a698: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  39a69c: 4618         	mov	r0, r3
  39a69e: f1fd fc0b    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd816
  39a6a2: 9b01         	ldr	r3, [sp, #0x4]
  39a6a4: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  39a6a8: 4618         	mov	r0, r3
  39a6aa: f1fd fc05    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd80a
  39a6ae: 9b01         	ldr	r3, [sp, #0x4]
  39a6b0: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  39a6b4: 4618         	mov	r0, r3
  39a6b6: f1fd fbff    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd7fe
  39a6ba: 9b01         	ldr	r3, [sp, #0x4]
  39a6bc: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  39a6c0: 4618         	mov	r0, r3
  39a6c2: f1fd fbf9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd7f2
  39a6c6: 9b01         	ldr	r3, [sp, #0x4]
  39a6c8: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  39a6cc: 4618         	mov	r0, r3
  39a6ce: f1fd fbf3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd7e6
  39a6d2: 9b01         	ldr	r3, [sp, #0x4]
  39a6d4: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  39a6d8: 4618         	mov	r0, r3
  39a6da: f1fd fbed    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd7da
  39a6de: 9b01         	ldr	r3, [sp, #0x4]
  39a6e0: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39a6e4: 4618         	mov	r0, r3
  39a6e6: f1fd fbe7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd7ce
  39a6ea: 9b01         	ldr	r3, [sp, #0x4]
  39a6ec: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  39a6f0: 4618         	mov	r0, r3
  39a6f2: f1fd fbe1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd7c2
  39a6f6: 9b01         	ldr	r3, [sp, #0x4]
  39a6f8: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  39a6fc: 4618         	mov	r0, r3
  39a6fe: f1fd fbdb    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd7b6
  39a702: 9b01         	ldr	r3, [sp, #0x4]
  39a704: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  39a708: 4618         	mov	r0, r3
  39a70a: f1fd fbd5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd7aa
  39a70e: 9b01         	ldr	r3, [sp, #0x4]
  39a710: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  39a714: 4618         	mov	r0, r3
  39a716: f1fd fbcf    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd79e
  39a71a: 9b01         	ldr	r3, [sp, #0x4]
  39a71c: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  39a720: 4618         	mov	r0, r3
  39a722: f1fd fbc9    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd792
  39a726: 9b01         	ldr	r3, [sp, #0x4]
  39a728: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  39a72c: 4618         	mov	r0, r3
  39a72e: f1fd fbc3    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd786
  39a732: 9b01         	ldr	r3, [sp, #0x4]
  39a734: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  39a738: 4618         	mov	r0, r3
  39a73a: f1fd fbbd    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd77a
  39a73e: 9b01         	ldr	r3, [sp, #0x4]
  39a740: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  39a744: 4618         	mov	r0, r3
  39a746: f1fd fbb7    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd76e
  39a74a: 9b01         	ldr	r3, [sp, #0x4]
  39a74c: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  39a750: 4618         	mov	r0, r3
  39a752: f1fd fbb1    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd762
  39a756: f7dd f9f3    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x22c1a
  39a75a: 4603         	mov	r3, r0
  39a75c: 4618         	mov	r0, r3
  39a75e: f099 faa3    	bl	0x433ca8 <NetworkManagerBridge::stopReachability()> @ imm = #0x99546
  39a762: 9b01         	ldr	r3, [sp, #0x4]
  39a764: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  39a768: 4618         	mov	r0, r3
  39a76a: f1fd fba5    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd74a
  39a76e: 9b01         	ldr	r3, [sp, #0x4]
  39a770: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  39a774: 4618         	mov	r0, r3
  39a776: f1fd fb9f    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd73e
  39a77a: 9b01         	ldr	r3, [sp, #0x4]
  39a77c: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  39a780: 4618         	mov	r0, r3
  39a782: f1fd fb99    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd732
  39a786: 9b01         	ldr	r3, [sp, #0x4]
  39a788: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  39a78c: 4618         	mov	r0, r3
  39a78e: f1fd fb93    	bl	0x597eb8 <cocos2d::CCObject::release()> @ imm = #0x1fd726
  39a792: 9b01         	ldr	r3, [sp, #0x4]
  39a794: f503 7396    	add.w	r3, r3, #0x12c
  39a798: 4618         	mov	r0, r3
  39a79a: f01b f0bb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41b176
  39a79e: 9b01         	ldr	r3, [sp, #0x4]
  39a7a0: 33ec         	adds	r3, #0xec
  39a7a2: 4618         	mov	r0, r3
  39a7a4: f753 fa2e    	bl	0x2edc04 <cocos2d::extension::CCEditBoxDelegate::~CCEditBoxDelegate()> @ imm = #-0xacba4
  39a7a8: 9b01         	ldr	r3, [sp, #0x4]
  39a7aa: 33e8         	adds	r3, #0xe8
  39a7ac: 4618         	mov	r0, r3
  39a7ae: f74f fdf7    	bl	0x2ea3a0 <cocos2d::extension::CCTableViewDataSource::~CCTableViewDataSource()> @ imm = #-0xb0412
  39a7b2: 9b01         	ldr	r3, [sp, #0x4]
  39a7b4: 33e4         	adds	r3, #0xe4
  39a7b6: 4618         	mov	r0, r3
  39a7b8: f74f fe9e    	bl	0x2ea4f8 <cocos2d::extension::CCTableViewDelegate::~CCTableViewDelegate()> @ imm = #-0xb02c4
  39a7bc: 9b01         	ldr	r3, [sp, #0x4]
  39a7be: 4618         	mov	r0, r3
  39a7c0: f1f5 f840    	bl	0x58f844 <cocos2d::CCNode::~CCNode()> @ imm = #0x1f5080
  39a7c4: 2300         	movs	r3, #0x0
  39a7c6: 2b00         	cmp	r3, #0x0
  39a7c8: d002         	beq	0x39a7d0 <PlayerLobby::~PlayerLobby()+0x1b4> @ imm = #0x4
  39a7ca: 9801         	ldr	r0, [sp, #0x4]
  39a7cc: f3ed fc6a    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3ed8d4
  39a7d0: 9b01         	ldr	r3, [sp, #0x4]
  39a7d2: 4618         	mov	r0, r3
  39a7d4: b003         	add	sp, #0xc
  39a7d6: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x39a7d9); words below are literal-pool data ---
  39a7da: bf00         	nop
  39a7dc: 83e4         	strh	r4, [r4, #0x1e]
  39a7de: 0059         	lsls	r1, r3, #0x1
  39a7e0: dd48         	ble	0x39a874 <PlayerLobby::initMenu()+0x44> @ imm = #0x90
  39a7e2: ffff f1a0    	<unknown>

// ==== PlayerLobby::~PlayerLobby
//      file offset 0x39a7e4 (= ELF address; Ghidra 0x3aa7e4), 8 bytes, Thumb-2
  39a7e4: f1a0 00e4    	sub.w	r0, r0, #0xe4
  39a7e8: f7ff bf18    	b.w	0x39a61c <PlayerLobby::~PlayerLobby()> @ imm = #-0x1d0

// ==== PlayerLobby::~PlayerLobby
//      file offset 0x39a7ec (= ELF address; Ghidra 0x3aa7ec), 8 bytes, Thumb-2
  39a7ec: f1a0 00e8    	sub.w	r0, r0, #0xe8
  39a7f0: f7ff bf14    	b.w	0x39a61c <PlayerLobby::~PlayerLobby()> @ imm = #-0x1d8

// ==== PlayerLobby::~PlayerLobby
//      file offset 0x39a7f4 (= ELF address; Ghidra 0x3aa7f4), 8 bytes, Thumb-2
  39a7f4: f1a0 00ec    	sub.w	r0, r0, #0xec
  39a7f8: f7ff bf10    	b.w	0x39a61c <PlayerLobby::~PlayerLobby()> @ imm = #-0x1e0

// ==== PlayerLobby::~PlayerLobby
//      file offset 0x39a7fc (= ELF address; Ghidra 0x3aa7fc), 28 bytes, Thumb-2
  39a7fc: b500         	push	{lr}
  39a7fe: b083         	sub	sp, #0xc
  39a800: 9001         	str	r0, [sp, #0x4]
  39a802: 9801         	ldr	r0, [sp, #0x4]
  39a804: f7ff ff0a    	bl	0x39a61c <PlayerLobby::~PlayerLobby()> @ imm = #-0x1ec
  39a808: 9801         	ldr	r0, [sp, #0x4]
  39a80a: f3ed fc4b    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3ed896
  39a80e: 9b01         	ldr	r3, [sp, #0x4]
  39a810: 4618         	mov	r0, r3
  39a812: b003         	add	sp, #0xc
  39a814: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobby::~PlayerLobby
//      file offset 0x39a818 (= ELF address; Ghidra 0x3aa818), 8 bytes, Thumb-2
  39a818: f1a0 00e4    	sub.w	r0, r0, #0xe4
  39a81c: f7ff bfee    	b.w	0x39a7fc <PlayerLobby::~PlayerLobby()> @ imm = #-0x24

// ==== PlayerLobby::~PlayerLobby
//      file offset 0x39a820 (= ELF address; Ghidra 0x3aa820), 8 bytes, Thumb-2
  39a820: f1a0 00e8    	sub.w	r0, r0, #0xe8
  39a824: f7ff bfea    	b.w	0x39a7fc <PlayerLobby::~PlayerLobby()> @ imm = #-0x2c

// ==== PlayerLobby::~PlayerLobby
//      file offset 0x39a828 (= ELF address; Ghidra 0x3aa828), 8 bytes, Thumb-2
  39a828: f1a0 00ec    	sub.w	r0, r0, #0xec
  39a82c: f7ff bfe6    	b.w	0x39a7fc <PlayerLobby::~PlayerLobby()> @ imm = #-0x34

// ==== PlayerLobby::initMenu
//      file offset 0x39a830 (= ELF address; Ghidra 0x3aa830), 4236 bytes, Thumb-2
  39a830: b5f0         	push	{r4, r5, r6, r7, lr}
  39a832: ed2d 8b02    	vpush	{d8}
  39a836: b0bb         	sub	sp, #0xec
  39a838: 9003         	str	r0, [sp, #0xc]
  39a83a: f8df 46bc    	ldr.w	r4, [pc, #0x6bc]        @ 0x39aef8 <PlayerLobby::initMenu()+0x6c8>
  39a83e: 447c         	add	r4, pc
  39a840: f8df 36b8    	ldr.w	r3, [pc, #0x6b8]        @ 0x39aefc <PlayerLobby::initMenu()+0x6cc>
  39a844: 58e3         	ldr	r3, [r4, r3]
  39a846: 681b         	ldr	r3, [r3]
  39a848: f8df 26b0    	ldr.w	r2, [pc, #0x6b0]        @ 0x39aefc <PlayerLobby::initMenu()+0x6cc>
  39a84c: 58a2         	ldr	r2, [r4, r2]
  39a84e: ed92 7a01    	vldr	s14, [r2, #4]
  39a852: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  39a856: eec7 7a27    	vdiv.f32	s15, s14, s15
  39a85a: aa1e         	add	r2, sp, #0x78
  39a85c: 4610         	mov	r0, r2
  39a85e: 4619         	mov	r1, r3
  39a860: ee17 2a90    	vmov	r2, s15
  39a864: f1f8 fa44    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f8488
  39a868: 9b03         	ldr	r3, [sp, #0xc]
  39a86a: f503 75b8    	add.w	r5, r3, #0x170
  39a86e: f8df 368c    	ldr.w	r3, [pc, #0x68c]        @ 0x39aefc <PlayerLobby::initMenu()+0x6cc>
  39a872: 58e3         	ldr	r3, [r4, r3]
  39a874: ed93 7a00    	vldr	s14, [r3]
  39a878: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  39a87c: eec7 6a27    	vdiv.f32	s13, s14, s15
  39a880: f8df 3678    	ldr.w	r3, [pc, #0x678]        @ 0x39aefc <PlayerLobby::initMenu()+0x6cc>
  39a884: 58e3         	ldr	r3, [r4, r3]
  39a886: ed93 7a01    	vldr	s14, [r3, #4]
  39a88a: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  39a88e: eec7 7a27    	vdiv.f32	s15, s14, s15
  39a892: ab36         	add	r3, sp, #0xd8
  39a894: 4618         	mov	r0, r3
  39a896: ee16 1a90    	vmov	r1, s13
  39a89a: ee17 2a90    	vmov	r2, s15
  39a89e: f1f8 fa27    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f844e
  39a8a2: ab36         	add	r3, sp, #0xd8
  39a8a4: 4628         	mov	r0, r5
  39a8a6: 4619         	mov	r1, r3
  39a8a8: f1f8 fa50    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1f84a0
  39a8ac: f04f 0300    	mov.w	r3, #0x0
  39a8b0: f2cc 23b4    	movt	r3, #0xc2b4
  39a8b4: 9307         	str	r3, [sp, #0x1c]
  39a8b6: f8df 3648    	ldr.w	r3, [pc, #0x648]        @ 0x39af00 <PlayerLobby::initMenu()+0x6d0>
  39a8ba: 447b         	add	r3, pc
  39a8bc: 4618         	mov	r0, r3
  39a8be: f23d fd21    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23da42
  39a8c2: 4603         	mov	r3, r0
  39a8c4: 9308         	str	r3, [sp, #0x20]
  39a8c6: f8df 363c    	ldr.w	r3, [pc, #0x63c]        @ 0x39af04 <PlayerLobby::initMenu()+0x6d4>
  39a8ca: 447b         	add	r3, pc
  39a8cc: 4618         	mov	r0, r3
  39a8ce: f23d fd19    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23da32
  39a8d2: 4603         	mov	r3, r0
  39a8d4: 9309         	str	r3, [sp, #0x24]
  39a8d6: f8df 3630    	ldr.w	r3, [pc, #0x630]        @ 0x39af08 <PlayerLobby::initMenu()+0x6d8>
  39a8da: 447b         	add	r3, pc
  39a8dc: 4618         	mov	r0, r3
  39a8de: f23d fd11    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23da22
  39a8e2: 4603         	mov	r3, r0
  39a8e4: 930a         	str	r3, [sp, #0x28]
  39a8e6: f8df 3624    	ldr.w	r3, [pc, #0x624]        @ 0x39af0c <PlayerLobby::initMenu()+0x6dc>
  39a8ea: 447b         	add	r3, pc
  39a8ec: 4618         	mov	r0, r3
  39a8ee: f23d fd09    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23da12
  39a8f2: 4603         	mov	r3, r0
  39a8f4: 930b         	str	r3, [sp, #0x2c]
  39a8f6: f8df 3618    	ldr.w	r3, [pc, #0x618]        @ 0x39af10 <PlayerLobby::initMenu()+0x6e0>
  39a8fa: 447b         	add	r3, pc
  39a8fc: 4618         	mov	r0, r3
  39a8fe: f23d fd01    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23da02
  39a902: 4603         	mov	r3, r0
  39a904: 930c         	str	r3, [sp, #0x30]
  39a906: f8df 360c    	ldr.w	r3, [pc, #0x60c]        @ 0x39af14 <PlayerLobby::initMenu()+0x6e4>
  39a90a: 447b         	add	r3, pc
  39a90c: 4618         	mov	r0, r3
  39a90e: f23d fcf9    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23d9f2
  39a912: 4603         	mov	r3, r0
  39a914: 930d         	str	r3, [sp, #0x34]
  39a916: f8df 3600    	ldr.w	r3, [pc, #0x600]        @ 0x39af18 <PlayerLobby::initMenu()+0x6e8>
  39a91a: 447b         	add	r3, pc
  39a91c: 4618         	mov	r0, r3
  39a91e: f23d fcf1    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23d9e2
  39a922: 4603         	mov	r3, r0
  39a924: 930e         	str	r3, [sp, #0x38]
  39a926: f8df 35f4    	ldr.w	r3, [pc, #0x5f4]        @ 0x39af1c <PlayerLobby::initMenu()+0x6ec>
  39a92a: 447b         	add	r3, pc
  39a92c: 4618         	mov	r0, r3
  39a92e: f23d fce9    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23d9d2
  39a932: 4603         	mov	r3, r0
  39a934: 930f         	str	r3, [sp, #0x3c]
  39a936: f8df 35e8    	ldr.w	r3, [pc, #0x5e8]        @ 0x39af20 <PlayerLobby::initMenu()+0x6f0>
  39a93a: 447b         	add	r3, pc
  39a93c: 4618         	mov	r0, r3
  39a93e: f23d fce1    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23d9c2
  39a942: 4603         	mov	r3, r0
  39a944: 9310         	str	r3, [sp, #0x40]
  39a946: f8df 35dc    	ldr.w	r3, [pc, #0x5dc]        @ 0x39af24 <PlayerLobby::initMenu()+0x6f4>
  39a94a: 447b         	add	r3, pc
  39a94c: 4618         	mov	r0, r3
  39a94e: f23d fcd9    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23d9b2
  39a952: 4603         	mov	r3, r0
  39a954: 9311         	str	r3, [sp, #0x44]
  39a956: f8df 35d0    	ldr.w	r3, [pc, #0x5d0]        @ 0x39af28 <PlayerLobby::initMenu()+0x6f8>
  39a95a: 447b         	add	r3, pc
  39a95c: 4618         	mov	r0, r3
  39a95e: f23d fcd1    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23d9a2
  39a962: 4603         	mov	r3, r0
  39a964: 9312         	str	r3, [sp, #0x48]
  39a966: f8df 35c4    	ldr.w	r3, [pc, #0x5c4]        @ 0x39af2c <PlayerLobby::initMenu()+0x6fc>
  39a96a: 447b         	add	r3, pc
  39a96c: 4618         	mov	r0, r3
  39a96e: f23d fcc9    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23d992
  39a972: 4603         	mov	r3, r0
  39a974: 9313         	str	r3, [sp, #0x4c]
  39a976: 9a03         	ldr	r2, [sp, #0xc]
  39a978: f8df 35b4    	ldr.w	r3, [pc, #0x5b4]        @ 0x39af30 <PlayerLobby::initMenu()+0x700>
  39a97c: 447b         	add	r3, pc
  39a97e: 4619         	mov	r1, r3
  39a980: ab26         	add	r3, sp, #0x98
  39a982: c903         	ldm	r1, {r0, r1}
  39a984: e883 0003    	stm.w	r3, {r0, r1}
  39a988: 9b27         	ldr	r3, [sp, #0x9c]
  39a98a: 9300         	str	r3, [sp]
  39a98c: 9b26         	ldr	r3, [sp, #0x98]
  39a98e: 980c         	ldr	r0, [sp, #0x30]
  39a990: 990d         	ldr	r1, [sp, #0x34]
  39a992: f21d fccb    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x21d996
  39a996: 4603         	mov	r3, r0
  39a998: 9314         	str	r3, [sp, #0x50]
  39a99a: 9a03         	ldr	r2, [sp, #0xc]
  39a99c: f8df 3594    	ldr.w	r3, [pc, #0x594]        @ 0x39af34 <PlayerLobby::initMenu()+0x704>
  39a9a0: 447b         	add	r3, pc
  39a9a2: 4619         	mov	r1, r3
  39a9a4: ab28         	add	r3, sp, #0xa0
  39a9a6: c903         	ldm	r1, {r0, r1}
  39a9a8: e883 0003    	stm.w	r3, {r0, r1}
  39a9ac: 9b29         	ldr	r3, [sp, #0xa4]
  39a9ae: 9300         	str	r3, [sp]
  39a9b0: 9b28         	ldr	r3, [sp, #0xa0]
  39a9b2: 9808         	ldr	r0, [sp, #0x20]
  39a9b4: 9909         	ldr	r1, [sp, #0x24]
  39a9b6: f21d fcb9    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x21d972
  39a9ba: 4603         	mov	r3, r0
  39a9bc: 9315         	str	r3, [sp, #0x54]
  39a9be: 9a03         	ldr	r2, [sp, #0xc]
  39a9c0: f8df 3574    	ldr.w	r3, [pc, #0x574]        @ 0x39af38 <PlayerLobby::initMenu()+0x708>
  39a9c4: 447b         	add	r3, pc
  39a9c6: 4619         	mov	r1, r3
  39a9c8: ab2a         	add	r3, sp, #0xa8
  39a9ca: c903         	ldm	r1, {r0, r1}
  39a9cc: e883 0003    	stm.w	r3, {r0, r1}
  39a9d0: 9b2b         	ldr	r3, [sp, #0xac]
  39a9d2: 9300         	str	r3, [sp]
  39a9d4: 9b2a         	ldr	r3, [sp, #0xa8]
  39a9d6: 980a         	ldr	r0, [sp, #0x28]
  39a9d8: 990b         	ldr	r1, [sp, #0x2c]
  39a9da: f21d fca7    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x21d94e
  39a9de: 4603         	mov	r3, r0
  39a9e0: 9316         	str	r3, [sp, #0x58]
  39a9e2: 9a03         	ldr	r2, [sp, #0xc]
  39a9e4: f8df 3554    	ldr.w	r3, [pc, #0x554]        @ 0x39af3c <PlayerLobby::initMenu()+0x70c>
  39a9e8: 447b         	add	r3, pc
  39a9ea: 4619         	mov	r1, r3
  39a9ec: ab2c         	add	r3, sp, #0xb0
  39a9ee: c903         	ldm	r1, {r0, r1}
  39a9f0: e883 0003    	stm.w	r3, {r0, r1}
  39a9f4: 9b2d         	ldr	r3, [sp, #0xb4]
  39a9f6: 9300         	str	r3, [sp]
  39a9f8: 9b2c         	ldr	r3, [sp, #0xb0]
  39a9fa: 980e         	ldr	r0, [sp, #0x38]
  39a9fc: 990f         	ldr	r1, [sp, #0x3c]
  39a9fe: f21d fc95    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x21d92a
  39aa02: 4603         	mov	r3, r0
  39aa04: 9317         	str	r3, [sp, #0x5c]
  39aa06: 9a03         	ldr	r2, [sp, #0xc]
  39aa08: f8df 3534    	ldr.w	r3, [pc, #0x534]        @ 0x39af40 <PlayerLobby::initMenu()+0x710>
  39aa0c: 447b         	add	r3, pc
  39aa0e: 4619         	mov	r1, r3
  39aa10: ab2e         	add	r3, sp, #0xb8
  39aa12: c903         	ldm	r1, {r0, r1}
  39aa14: e883 0003    	stm.w	r3, {r0, r1}
  39aa18: 9b2f         	ldr	r3, [sp, #0xbc]
  39aa1a: 9300         	str	r3, [sp]
  39aa1c: 9b2e         	ldr	r3, [sp, #0xb8]
  39aa1e: 9810         	ldr	r0, [sp, #0x40]
  39aa20: 9911         	ldr	r1, [sp, #0x44]
  39aa22: f21d fc83    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x21d906
  39aa26: 4603         	mov	r3, r0
  39aa28: 9318         	str	r3, [sp, #0x60]
  39aa2a: 9a03         	ldr	r2, [sp, #0xc]
  39aa2c: f8df 3514    	ldr.w	r3, [pc, #0x514]        @ 0x39af44 <PlayerLobby::initMenu()+0x714>
  39aa30: 447b         	add	r3, pc
  39aa32: 4619         	mov	r1, r3
  39aa34: ab30         	add	r3, sp, #0xc0
  39aa36: c903         	ldm	r1, {r0, r1}
  39aa38: e883 0003    	stm.w	r3, {r0, r1}
  39aa3c: 9b31         	ldr	r3, [sp, #0xc4]
  39aa3e: 9300         	str	r3, [sp]
  39aa40: 9b30         	ldr	r3, [sp, #0xc0]
  39aa42: 9812         	ldr	r0, [sp, #0x48]
  39aa44: 9913         	ldr	r1, [sp, #0x4c]
  39aa46: f21d fc71    	bl	0x5b832c <cocos2d::CCMenuItemSprite::create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*))> @ imm = #0x21d8e2
  39aa4a: 4603         	mov	r3, r0
  39aa4c: 9319         	str	r3, [sp, #0x64]
  39aa4e: 9818         	ldr	r0, [sp, #0x60]
  39aa50: 2100         	movs	r1, #0x0
  39aa52: f21a fb73    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x21a6e6
  39aa56: 4602         	mov	r2, r0
  39aa58: 9b03         	ldr	r3, [sp, #0xc]
  39aa5a: f8c3 211c    	str.w	r2, [r3, #0x11c]
  39aa5e: 9b03         	ldr	r3, [sp, #0xc]
  39aa60: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  39aa64: 4618         	mov	r0, r3
  39aa66: f1fd fa3f    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fd47e
  39aa6a: 9b03         	ldr	r3, [sp, #0xc]
  39aa6c: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  39aa70: 681b         	ldr	r3, [r3]
  39aa72: 334c         	adds	r3, #0x4c
  39aa74: 681d         	ldr	r5, [r3]
  39aa76: 9b03         	ldr	r3, [sp, #0xc]
  39aa78: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  39aa7c: 461e         	mov	r6, r3
  39aa7e: ed9d 7a1e    	vldr	s14, [sp, #120]
  39aa82: eddd 7a07    	vldr	s15, [sp, #28]
  39aa86: ee77 6a27    	vadd.f32	s13, s14, s15
  39aa8a: ed9d 7a1f    	vldr	s14, [sp, #124]
  39aa8e: eef3 7a09    	vmov.f32	s15, #2.500000e+01
  39aa92: ee77 7a27    	vadd.f32	s15, s14, s15
  39aa96: ab36         	add	r3, sp, #0xd8
  39aa98: 4618         	mov	r0, r3
  39aa9a: ee16 1a90    	vmov	r1, s13
  39aa9e: ee17 2a90    	vmov	r2, s15
  39aaa2: f1f8 f925    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f824a
  39aaa6: ab36         	add	r3, sp, #0xd8
  39aaa8: 4630         	mov	r0, r6
  39aaaa: 4619         	mov	r1, r3
  39aaac: 47a8         	blx	r5
  39aaae: 9b03         	ldr	r3, [sp, #0xc]
  39aab0: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39aab4: 681b         	ldr	r3, [r3]
  39aab6: 33c8         	adds	r3, #0xc8
  39aab8: 681b         	ldr	r3, [r3]
  39aaba: 9a03         	ldr	r2, [sp, #0xc]
  39aabc: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  39aac0: 9a03         	ldr	r2, [sp, #0xc]
  39aac2: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  39aac6: 4608         	mov	r0, r1
  39aac8: 4611         	mov	r1, r2
  39aaca: 4798         	blx	r3
  39aacc: 9814         	ldr	r0, [sp, #0x50]
  39aace: 2100         	movs	r1, #0x0
  39aad0: f21a fb34    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x21a668
  39aad4: 4602         	mov	r2, r0
  39aad6: 9b03         	ldr	r3, [sp, #0xc]
  39aad8: f8c3 2104    	str.w	r2, [r3, #0x104]
  39aadc: 9b03         	ldr	r3, [sp, #0xc]
  39aade: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  39aae2: 4618         	mov	r0, r3
  39aae4: f1fd fa00    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fd400
  39aae8: 9b03         	ldr	r3, [sp, #0xc]
  39aaea: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  39aaee: 681b         	ldr	r3, [r3]
  39aaf0: 334c         	adds	r3, #0x4c
  39aaf2: 681d         	ldr	r5, [r3]
  39aaf4: 9b03         	ldr	r3, [sp, #0xc]
  39aaf6: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  39aafa: 461e         	mov	r6, r3
  39aafc: ed9d 7a1e    	vldr	s14, [sp, #120]
  39ab00: eddd 7a07    	vldr	s15, [sp, #28]
  39ab04: ee77 6a27    	vadd.f32	s13, s14, s15
  39ab08: ed9d 7a1f    	vldr	s14, [sp, #124]
  39ab0c: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  39ab10: ee77 7a67    	vsub.f32	s15, s14, s15
  39ab14: ab36         	add	r3, sp, #0xd8
  39ab16: 4618         	mov	r0, r3
  39ab18: ee16 1a90    	vmov	r1, s13
  39ab1c: ee17 2a90    	vmov	r2, s15
  39ab20: f1f8 f8e6    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f81cc
  39ab24: ab36         	add	r3, sp, #0xd8
  39ab26: 4630         	mov	r0, r6
  39ab28: 4619         	mov	r1, r3
  39ab2a: 47a8         	blx	r5
  39ab2c: 9b03         	ldr	r3, [sp, #0xc]
  39ab2e: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39ab32: 681b         	ldr	r3, [r3]
  39ab34: 33c8         	adds	r3, #0xc8
  39ab36: 681b         	ldr	r3, [r3]
  39ab38: 9a03         	ldr	r2, [sp, #0xc]
  39ab3a: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  39ab3e: 9a03         	ldr	r2, [sp, #0xc]
  39ab40: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  39ab44: 4608         	mov	r0, r1
  39ab46: 4611         	mov	r1, r2
  39ab48: 4798         	blx	r3
  39ab4a: 9817         	ldr	r0, [sp, #0x5c]
  39ab4c: 2100         	movs	r1, #0x0
  39ab4e: f21a faf5    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x21a5ea
  39ab52: 4602         	mov	r2, r0
  39ab54: 9b03         	ldr	r3, [sp, #0xc]
  39ab56: f8c3 2114    	str.w	r2, [r3, #0x114]
  39ab5a: 9b03         	ldr	r3, [sp, #0xc]
  39ab5c: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  39ab60: 4618         	mov	r0, r3
  39ab62: f1fd f9c1    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fd382
  39ab66: 9b03         	ldr	r3, [sp, #0xc]
  39ab68: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  39ab6c: 681b         	ldr	r3, [r3]
  39ab6e: 334c         	adds	r3, #0x4c
  39ab70: 681d         	ldr	r5, [r3]
  39ab72: 9b03         	ldr	r3, [sp, #0xc]
  39ab74: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  39ab78: 461e         	mov	r6, r3
  39ab7a: ed9d 7a1e    	vldr	s14, [sp, #120]
  39ab7e: eddd 7a07    	vldr	s15, [sp, #28]
  39ab82: ee77 6a27    	vadd.f32	s13, s14, s15
  39ab86: ed9d 7a1f    	vldr	s14, [sp, #124]
  39ab8a: eef3 7a04    	vmov.f32	s15, #2.000000e+01
  39ab8e: ee77 7a67    	vsub.f32	s15, s14, s15
  39ab92: ab36         	add	r3, sp, #0xd8
  39ab94: 4618         	mov	r0, r3
  39ab96: ee16 1a90    	vmov	r1, s13
  39ab9a: ee17 2a90    	vmov	r2, s15
  39ab9e: f1f8 f8a7    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f814e
  39aba2: ab36         	add	r3, sp, #0xd8
  39aba4: 4630         	mov	r0, r6
  39aba6: 4619         	mov	r1, r3
  39aba8: 47a8         	blx	r5
  39abaa: 9b03         	ldr	r3, [sp, #0xc]
  39abac: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39abb0: 681b         	ldr	r3, [r3]
  39abb2: 33c8         	adds	r3, #0xc8
  39abb4: 681b         	ldr	r3, [r3]
  39abb6: 9a03         	ldr	r2, [sp, #0xc]
  39abb8: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  39abbc: 9a03         	ldr	r2, [sp, #0xc]
  39abbe: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  39abc2: 4608         	mov	r0, r1
  39abc4: 4611         	mov	r1, r2
  39abc6: 4798         	blx	r3
  39abc8: 9819         	ldr	r0, [sp, #0x64]
  39abca: 2100         	movs	r1, #0x0
  39abcc: f21a fab6    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x21a56c
  39abd0: 4602         	mov	r2, r0
  39abd2: 9b03         	ldr	r3, [sp, #0xc]
  39abd4: f8c3 2134    	str.w	r2, [r3, #0x134]
  39abd8: 9b03         	ldr	r3, [sp, #0xc]
  39abda: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  39abde: 4618         	mov	r0, r3
  39abe0: f1fd f982    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fd304
  39abe4: 9b03         	ldr	r3, [sp, #0xc]
  39abe6: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  39abea: 681b         	ldr	r3, [r3]
  39abec: 334c         	adds	r3, #0x4c
  39abee: 681d         	ldr	r5, [r3]
  39abf0: 9b03         	ldr	r3, [sp, #0xc]
  39abf2: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  39abf6: 461e         	mov	r6, r3
  39abf8: ed9d 7a1e    	vldr	s14, [sp, #120]
  39abfc: eddd 7a07    	vldr	s15, [sp, #28]
  39ac00: ee77 6a27    	vadd.f32	s13, s14, s15
  39ac04: ed9d 7a1f    	vldr	s14, [sp, #124]
  39ac08: eddf 7ab7    	vldr	s15, [pc, #732]         @ 0x39aee8 <PlayerLobby::initMenu()+0x6b8>
  39ac0c: ee77 7a67    	vsub.f32	s15, s14, s15
  39ac10: ab36         	add	r3, sp, #0xd8
  39ac12: 4618         	mov	r0, r3
  39ac14: ee16 1a90    	vmov	r1, s13
  39ac18: ee17 2a90    	vmov	r2, s15
  39ac1c: f1f8 f868    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f80d0
  39ac20: ab36         	add	r3, sp, #0xd8
  39ac22: 4630         	mov	r0, r6
  39ac24: 4619         	mov	r1, r3
  39ac26: 47a8         	blx	r5
  39ac28: 9b03         	ldr	r3, [sp, #0xc]
  39ac2a: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39ac2e: 681b         	ldr	r3, [r3]
  39ac30: 33c8         	adds	r3, #0xc8
  39ac32: 681b         	ldr	r3, [r3]
  39ac34: 9a03         	ldr	r2, [sp, #0xc]
  39ac36: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  39ac3a: 9a03         	ldr	r2, [sp, #0xc]
  39ac3c: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  39ac40: 4608         	mov	r0, r1
  39ac42: 4611         	mov	r1, r2
  39ac44: 4798         	blx	r3
  39ac46: 9815         	ldr	r0, [sp, #0x54]
  39ac48: 2100         	movs	r1, #0x0
  39ac4a: f21a fa77    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x21a4ee
  39ac4e: 4602         	mov	r2, r0
  39ac50: 9b03         	ldr	r3, [sp, #0xc]
  39ac52: f8c3 210c    	str.w	r2, [r3, #0x10c]
  39ac56: 9b03         	ldr	r3, [sp, #0xc]
  39ac58: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  39ac5c: 4618         	mov	r0, r3
  39ac5e: f1fd f943    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fd286
  39ac62: 9b03         	ldr	r3, [sp, #0xc]
  39ac64: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  39ac68: 681b         	ldr	r3, [r3]
  39ac6a: 334c         	adds	r3, #0x4c
  39ac6c: 681d         	ldr	r5, [r3]
  39ac6e: 9b03         	ldr	r3, [sp, #0xc]
  39ac70: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  39ac74: 461e         	mov	r6, r3
  39ac76: ed9d 7a1e    	vldr	s14, [sp, #120]
  39ac7a: eddd 7a07    	vldr	s15, [sp, #28]
  39ac7e: ee37 7a27    	vadd.f32	s14, s14, s15
  39ac82: eddf 7a9a    	vldr	s15, [pc, #616]         @ 0x39aeec <PlayerLobby::initMenu()+0x6bc>
  39ac86: ee77 6a67    	vsub.f32	s13, s14, s15
  39ac8a: ed9d 7a1f    	vldr	s14, [sp, #124]
  39ac8e: eddf 7a98    	vldr	s15, [pc, #608]         @ 0x39aef0 <PlayerLobby::initMenu()+0x6c0>
  39ac92: ee77 7a67    	vsub.f32	s15, s14, s15
  39ac96: ab36         	add	r3, sp, #0xd8
  39ac98: 4618         	mov	r0, r3
  39ac9a: ee16 1a90    	vmov	r1, s13
  39ac9e: ee17 2a90    	vmov	r2, s15
  39aca2: f1f8 f825    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f804a
  39aca6: ab36         	add	r3, sp, #0xd8
  39aca8: 4630         	mov	r0, r6
  39acaa: 4619         	mov	r1, r3
  39acac: 47a8         	blx	r5
  39acae: 9b03         	ldr	r3, [sp, #0xc]
  39acb0: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39acb4: 681b         	ldr	r3, [r3]
  39acb6: 33c8         	adds	r3, #0xc8
  39acb8: 681b         	ldr	r3, [r3]
  39acba: 9a03         	ldr	r2, [sp, #0xc]
  39acbc: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  39acc0: 9a03         	ldr	r2, [sp, #0xc]
  39acc2: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  39acc6: 4608         	mov	r0, r1
  39acc8: 4611         	mov	r1, r2
  39acca: 4798         	blx	r3
  39accc: 9816         	ldr	r0, [sp, #0x58]
  39acce: 2100         	movs	r1, #0x0
  39acd0: f21a fa34    	bl	0x5b513c <cocos2d::CCMenu::create(cocos2d::CCMenuItem*, ...)> @ imm = #0x21a468
  39acd4: 4602         	mov	r2, r0
  39acd6: 9b03         	ldr	r3, [sp, #0xc]
  39acd8: f8c3 213c    	str.w	r2, [r3, #0x13c]
  39acdc: 9b03         	ldr	r3, [sp, #0xc]
  39acde: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  39ace2: 4618         	mov	r0, r3
  39ace4: f1fd f900    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fd200
  39ace8: 9b03         	ldr	r3, [sp, #0xc]
  39acea: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  39acee: 681b         	ldr	r3, [r3]
  39acf0: 334c         	adds	r3, #0x4c
  39acf2: 681d         	ldr	r5, [r3]
  39acf4: 9b03         	ldr	r3, [sp, #0xc]
  39acf6: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  39acfa: 461e         	mov	r6, r3
  39acfc: ed9d 7a1e    	vldr	s14, [sp, #120]
  39ad00: eddd 7a07    	vldr	s15, [sp, #28]
  39ad04: ee37 7a27    	vadd.f32	s14, s14, s15
  39ad08: eddf 7a7a    	vldr	s15, [pc, #488]         @ 0x39aef4 <PlayerLobby::initMenu()+0x6c4>
  39ad0c: ee77 6a27    	vadd.f32	s13, s14, s15
  39ad10: ed9d 7a1f    	vldr	s14, [sp, #124]
  39ad14: eddf 7a76    	vldr	s15, [pc, #472]         @ 0x39aef0 <PlayerLobby::initMenu()+0x6c0>
  39ad18: ee77 7a67    	vsub.f32	s15, s14, s15
  39ad1c: ab36         	add	r3, sp, #0xd8
  39ad1e: 4618         	mov	r0, r3
  39ad20: ee16 1a90    	vmov	r1, s13
  39ad24: ee17 2a90    	vmov	r2, s15
  39ad28: f1f7 ffe2    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f7fc4
  39ad2c: ab36         	add	r3, sp, #0xd8
  39ad2e: 4630         	mov	r0, r6
  39ad30: 4619         	mov	r1, r3
  39ad32: 47a8         	blx	r5
  39ad34: 9b03         	ldr	r3, [sp, #0xc]
  39ad36: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39ad3a: 681b         	ldr	r3, [r3]
  39ad3c: 33c8         	adds	r3, #0xc8
  39ad3e: 681b         	ldr	r3, [r3]
  39ad40: 9a03         	ldr	r2, [sp, #0xc]
  39ad42: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  39ad46: 9a03         	ldr	r2, [sp, #0xc]
  39ad48: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  39ad4c: 4608         	mov	r0, r1
  39ad4e: 4611         	mov	r1, r2
  39ad50: 4798         	blx	r3
  39ad52: f64c 43cd    	movw	r3, #0xcccd
  39ad56: f6c3 730c    	movt	r3, #0x3f0c
  39ad5a: 931a         	str	r3, [sp, #0x68]
  39ad5c: f04f 0300    	mov.w	r3, #0x0
  39ad60: f2c4 13c0    	movt	r3, #0x41c0
  39ad64: 931b         	str	r3, [sp, #0x6c]
  39ad66: f04f 4341    	mov.w	r3, #0xc1000000
  39ad6a: 931c         	str	r3, [sp, #0x70]
  39ad6c: 4b76         	ldr	r3, [pc, #0x1d8]        @ 0x39af48 <PlayerLobby::initMenu()+0x718>
  39ad6e: 447b         	add	r3, pc
  39ad70: 4618         	mov	r0, r3
  39ad72: f01a f2c5    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x41a58a
  39ad76: 4603         	mov	r3, r0
  39ad78: 2220         	movs	r2, #0x20
  39ad7a: 9200         	str	r2, [sp]
  39ad7c: 4a73         	ldr	r2, [pc, #0x1cc]        @ 0x39af4c <PlayerLobby::initMenu()+0x71c>
  39ad7e: 447a         	add	r2, pc
  39ad80: 4610         	mov	r0, r2
  39ad82: 4619         	mov	r1, r3
  39ad84: 2220         	movs	r2, #0x20
  39ad86: 2320         	movs	r3, #0x20
  39ad88: f20a faf6    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x20a5ec
  39ad8c: 4602         	mov	r2, r0
  39ad8e: 9b03         	ldr	r3, [sp, #0xc]
  39ad90: f8c3 2108    	str.w	r2, [r3, #0x108]
  39ad94: 9b03         	ldr	r3, [sp, #0xc]
  39ad96: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  39ad9a: 4618         	mov	r0, r3
  39ad9c: f1fd f8a4    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fd148
  39ada0: 9b03         	ldr	r3, [sp, #0xc]
  39ada2: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  39ada6: eddd 7a1b    	vldr	s15, [sp, #108]
  39adaa: eefd 7ae7    	vcvt.s32.f32	s15, s15
  39adae: ee17 2a90    	vmov	r2, s15
  39adb2: 4618         	mov	r0, r3
  39adb4: 4611         	mov	r1, r2
  39adb6: f20a ffe5    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x20afca
  39adba: 9b03         	ldr	r3, [sp, #0xc]
  39adbc: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  39adc0: 681b         	ldr	r3, [r3]
  39adc2: 3340         	adds	r3, #0x40
  39adc4: 681b         	ldr	r3, [r3]
  39adc6: 9a03         	ldr	r2, [sp, #0xc]
  39adc8: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  39adcc: 4610         	mov	r0, r2
  39adce: 991a         	ldr	r1, [sp, #0x68]
  39add0: 4798         	blx	r3
  39add2: 9b03         	ldr	r3, [sp, #0xc]
  39add4: f503 75ae    	add.w	r5, r3, #0x15c
  39add8: 9b03         	ldr	r3, [sp, #0xc]
  39adda: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  39adde: 681b         	ldr	r3, [r3]
  39ade0: 3350         	adds	r3, #0x50
  39ade2: 681b         	ldr	r3, [r3]
  39ade4: 9a03         	ldr	r2, [sp, #0xc]
  39ade6: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  39adea: 4610         	mov	r0, r2
  39adec: 4798         	blx	r3
  39adee: 4603         	mov	r3, r0
  39adf0: 681e         	ldr	r6, [r3]
  39adf2: 9b03         	ldr	r3, [sp, #0xc]
  39adf4: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  39adf8: 681b         	ldr	r3, [r3]
  39adfa: 3350         	adds	r3, #0x50
  39adfc: 681b         	ldr	r3, [r3]
  39adfe: 9a03         	ldr	r2, [sp, #0xc]
  39ae00: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  39ae04: 4610         	mov	r0, r2
  39ae06: 4798         	blx	r3
  39ae08: 4603         	mov	r3, r0
  39ae0a: 685b         	ldr	r3, [r3, #0x4]
  39ae0c: aa20         	add	r2, sp, #0x80
  39ae0e: 4610         	mov	r0, r2
  39ae10: 4631         	mov	r1, r6
  39ae12: 461a         	mov	r2, r3
  39ae14: f1f7 ff6c    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f7ed8
  39ae18: eddd 7a1c    	vldr	s15, [sp, #112]
  39ae1c: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39ae20: ab32         	add	r3, sp, #0xc8
  39ae22: 4618         	mov	r0, r3
  39ae24: ed9f 0b2e    	vldr	d0, [pc, #184]          @ 0x39aee0 <PlayerLobby::initMenu()+0x6b0>
  39ae28: eeb0 1b47    	vmov.f64	d1, d7
  39ae2c: f7fc f924    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x3db8
  39ae30: ed9d 8b32    	vldr	d8, [sp, #200]
  39ae34: 9b03         	ldr	r3, [sp, #0xc]
  39ae36: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  39ae3a: 681b         	ldr	r3, [r3]
  39ae3c: f503 73fe    	add.w	r3, r3, #0x1fc
  39ae40: 681b         	ldr	r3, [r3]
  39ae42: 9a03         	ldr	r2, [sp, #0xc]
  39ae44: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  39ae48: 4610         	mov	r0, r2
  39ae4a: 4798         	blx	r3
  39ae4c: 4606         	mov	r6, r0
  39ae4e: ab05         	add	r3, sp, #0x14
  39ae50: 4618         	mov	r0, r3
  39ae52: f3ef facf    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ef59e
  39ae56: aa06         	add	r2, sp, #0x18
  39ae58: ab05         	add	r3, sp, #0x14
  39ae5a: 4610         	mov	r0, r2
  39ae5c: 4631         	mov	r1, r6
  39ae5e: 461a         	mov	r2, r3
  39ae60: f01b f5fe    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41bbfc
  39ae64: ab06         	add	r3, sp, #0x18
  39ae66: 4618         	mov	r0, r3
  39ae68: f01a f0f8    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x41a1f0
  39ae6c: 4603         	mov	r3, r0
  39ae6e: ee07 3a90    	vmov	s15, r3
  39ae72: eeb8 7a67    	vcvt.f32.u32	s14, s15
  39ae76: eddd 7a1b    	vldr	s15, [sp, #108]
  39ae7a: ee27 7a27    	vmul.f32	s14, s14, s15
  39ae7e: eddd 7a1a    	vldr	s15, [sp, #104]
  39ae82: ee27 7a27    	vmul.f32	s14, s14, s15
  39ae86: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  39ae8a: eec7 7a27    	vdiv.f32	s15, s14, s15
  39ae8e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39ae92: ee38 7b47    	vsub.f64	d7, d8, d7
  39ae96: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  39ae9a: eddd 7a1c    	vldr	s15, [sp, #112]
  39ae9e: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39aea2: ab36         	add	r3, sp, #0xd8
  39aea4: 4618         	mov	r0, r3
  39aea6: ed9f 0b0e    	vldr	d0, [pc, #56]           @ 0x39aee0 <PlayerLobby::initMenu()+0x6b0>
  39aeaa: eeb0 1b47    	vmov.f64	d1, d7
  39aeae: f7fc f8e3    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x3e3a
  39aeb2: ed9d 7b38    	vldr	d7, [sp, #224]
  39aeb6: eef7 7bc7    	vcvt.f32.f64	s15, d7
  39aeba: ab22         	add	r3, sp, #0x88
  39aebc: 4618         	mov	r0, r3
  39aebe: ee18 1a10    	vmov	r1, s16
  39aec2: ee17 2a90    	vmov	r2, s15
  39aec6: f1f7 ff13    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f7e26
  39aeca: a924         	add	r1, sp, #0x90
  39aecc: aa20         	add	r2, sp, #0x80
  39aece: ab22         	add	r3, sp, #0x88
  39aed0: 4608         	mov	r0, r1
  39aed2: 4611         	mov	r1, r2
  39aed4: 461a         	mov	r2, r3
  39aed6: f7fc f8bf    	bl	0x397058 <BodyShape::~BodyShape()+0x184> @ imm = #-0x3e82
  39aeda: ab24         	add	r3, sp, #0x90
  39aedc: 4628         	mov	r0, r5
  39aede: e037         	b	0x39af50 <PlayerLobby::initMenu()+0x720> @ imm = #0x6e
  39aee8: 0000         	movs	r0, r0
  39aeea: 4282         	cmp	r2, r0
  39aeec: 0000         	movs	r0, r0
  39aeee: 425c         	rsbs	r4, r3, #0
  39aef0: 0000         	movs	r0, r0
  39aef2: 42dc         	cmn	r4, r3
  39aef4: 0000         	movs	r0, r0
  39aef6: 4220         	tst	r0, r4
  39aef8: 81ca         	strh	r2, [r1, #0xe]
  39aefa: 0059         	lsls	r1, r3, #0x1
  39aefc: d724         	bvc	0x39af48 <PlayerLobby::initMenu()+0x718> @ imm = #0x48
  39aefe: ffff 7762    	<unknown>
  39af02: 0043         	lsls	r3, r0, #0x1
  39af04: 7752         	strb	r2, [r2, #0x1d]
  39af06: 0043         	lsls	r3, r0, #0x1
  39af08: 7742         	strb	r2, [r0, #0x1d]
  39af0a: 0043         	lsls	r3, r0, #0x1
  39af0c: 7732         	strb	r2, [r6, #0x1c]
  39af0e: 0043         	lsls	r3, r0, #0x1
  39af10: 7512         	strb	r2, [r2, #0x14]
  39af12: 0043         	lsls	r3, r0, #0x1
  39af14: 7502         	strb	r2, [r0, #0x14]
  39af16: 0043         	lsls	r3, r0, #0x1
  39af18: 74f2         	strb	r2, [r6, #0x13]
  39af1a: 0043         	lsls	r3, r0, #0x1
  39af1c: 74e2         	strb	r2, [r4, #0x13]
  39af1e: 0043         	lsls	r3, r0, #0x1
  39af20: 74d2         	strb	r2, [r2, #0x13]
  39af22: 0043         	lsls	r3, r0, #0x1
  39af24: 74c2         	strb	r2, [r0, #0x13]
  39af26: 0043         	lsls	r3, r0, #0x1
  39af28: 74b2         	strb	r2, [r6, #0x12]
  39af2a: 0043         	lsls	r3, r0, #0x1
  39af2c: 74a2         	strb	r2, [r4, #0x12]
  39af2e: 0043         	lsls	r3, r0, #0x1
  39af30: 7720         	strb	r0, [r4, #0x1c]
  39af32: 0043         	lsls	r3, r0, #0x1
  39af34: 7704         	strb	r4, [r0, #0x1c]
  39af36: 0043         	lsls	r3, r0, #0x1
  39af38: 76e8         	strb	r0, [r5, #0x1b]
  39af3a: 0043         	lsls	r3, r0, #0x1
  39af3c: 76cc         	strb	r4, [r1, #0x1b]
  39af3e: 0043         	lsls	r3, r0, #0x1
  39af40: 76b0         	strb	r0, [r6, #0x1a]
  39af42: 0043         	lsls	r3, r0, #0x1
  39af44: 7694         	strb	r4, [r2, #0x1a]
  39af46: 0043         	lsls	r3, r0, #0x1
  39af48: 62e2         	str	r2, [r4, #0x2c]
  39af4a: 005a         	lsls	r2, r3, #0x1
  39af4c: 72aa         	strb	r2, [r5, #0xa]
  39af4e: 0043         	lsls	r3, r0, #0x1
  39af50: 4619         	mov	r1, r3
  39af52: f1f7 fefb    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1f7df6
  39af56: ab06         	add	r3, sp, #0x18
  39af58: 4618         	mov	r0, r3
  39af5a: f01a f4db    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41a9b6
  39af5e: ab05         	add	r3, sp, #0x14
  39af60: 4618         	mov	r0, r3
  39af62: f3ef fa4b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ef496
  39af66: 9b03         	ldr	r3, [sp, #0xc]
  39af68: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  39af6c: 681b         	ldr	r3, [r3]
  39af6e: 334c         	adds	r3, #0x4c
  39af70: 681b         	ldr	r3, [r3]
  39af72: 9a03         	ldr	r2, [sp, #0xc]
  39af74: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  39af78: 4611         	mov	r1, r2
  39af7a: 9a03         	ldr	r2, [sp, #0xc]
  39af7c: f502 72ae    	add.w	r2, r2, #0x15c
  39af80: 4608         	mov	r0, r1
  39af82: 4611         	mov	r1, r2
  39af84: 4798         	blx	r3
  39af86: 9b03         	ldr	r3, [sp, #0xc]
  39af88: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39af8c: 681b         	ldr	r3, [r3]
  39af8e: 33c8         	adds	r3, #0xc8
  39af90: 681b         	ldr	r3, [r3]
  39af92: 9a03         	ldr	r2, [sp, #0xc]
  39af94: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  39af98: 9a03         	ldr	r2, [sp, #0xc]
  39af9a: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  39af9e: 4608         	mov	r0, r1
  39afa0: 4611         	mov	r1, r2
  39afa2: 4798         	blx	r3
  39afa4: 4bd8         	ldr	r3, [pc, #0x360]        @ 0x39b308 <PlayerLobby::initMenu()+0xad8>
  39afa6: 447b         	add	r3, pc
  39afa8: 4618         	mov	r0, r3
  39afaa: f01a f1a9    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x41a352
  39afae: 4603         	mov	r3, r0
  39afb0: 2220         	movs	r2, #0x20
  39afb2: 9200         	str	r2, [sp]
  39afb4: 4ad5         	ldr	r2, [pc, #0x354]        @ 0x39b30c <PlayerLobby::initMenu()+0xadc>
  39afb6: 447a         	add	r2, pc
  39afb8: 4610         	mov	r0, r2
  39afba: 4619         	mov	r1, r3
  39afbc: 2220         	movs	r2, #0x20
  39afbe: 2320         	movs	r3, #0x20
  39afc0: f20a f9da    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x20a3b4
  39afc4: 4602         	mov	r2, r0
  39afc6: 9b03         	ldr	r3, [sp, #0xc]
  39afc8: f8c3 2130    	str.w	r2, [r3, #0x130]
  39afcc: 9b03         	ldr	r3, [sp, #0xc]
  39afce: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  39afd2: 4618         	mov	r0, r3
  39afd4: f1fc ff88    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fcf10
  39afd8: 9b03         	ldr	r3, [sp, #0xc]
  39afda: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  39afde: eddd 7a1b    	vldr	s15, [sp, #108]
  39afe2: eefd 7ae7    	vcvt.s32.f32	s15, s15
  39afe6: ee17 2a90    	vmov	r2, s15
  39afea: 4618         	mov	r0, r3
  39afec: 4611         	mov	r1, r2
  39afee: f20a fec9    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x20ad92
  39aff2: 9b03         	ldr	r3, [sp, #0xc]
  39aff4: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  39aff8: 681b         	ldr	r3, [r3]
  39affa: 3340         	adds	r3, #0x40
  39affc: 681b         	ldr	r3, [r3]
  39affe: 9a03         	ldr	r2, [sp, #0xc]
  39b000: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  39b004: 4610         	mov	r0, r2
  39b006: f243 3133    	movw	r1, #0x3333
  39b00a: f6c3 61b3    	movt	r1, #0x3eb3
  39b00e: 4798         	blx	r3
  39b010: 9b03         	ldr	r3, [sp, #0xc]
  39b012: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  39b016: 681b         	ldr	r3, [r3]
  39b018: 334c         	adds	r3, #0x4c
  39b01a: 681d         	ldr	r5, [r3]
  39b01c: 9b03         	ldr	r3, [sp, #0xc]
  39b01e: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  39b022: 461e         	mov	r6, r3
  39b024: 9b03         	ldr	r3, [sp, #0xc]
  39b026: ed93 7a5c    	vldr	s14, [r3, #368]
  39b02a: eddf 7ab5    	vldr	s15, [pc, #724]         @ 0x39b300 <PlayerLobby::initMenu()+0xad0>
  39b02e: ee77 6a27    	vadd.f32	s13, s14, s15
  39b032: 9b03         	ldr	r3, [sp, #0xc]
  39b034: ed93 7a5d    	vldr	s14, [r3, #372]
  39b038: eddf 7ab2    	vldr	s15, [pc, #712]         @ 0x39b304 <PlayerLobby::initMenu()+0xad4>
  39b03c: ee77 7a27    	vadd.f32	s15, s14, s15
  39b040: ab36         	add	r3, sp, #0xd8
  39b042: 4618         	mov	r0, r3
  39b044: ee16 1a90    	vmov	r1, s13
  39b048: ee17 2a90    	vmov	r2, s15
  39b04c: f1f7 fe50    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f7ca0
  39b050: ab36         	add	r3, sp, #0xd8
  39b052: 4630         	mov	r0, r6
  39b054: 4619         	mov	r1, r3
  39b056: 47a8         	blx	r5
  39b058: 9b03         	ldr	r3, [sp, #0xc]
  39b05a: 681b         	ldr	r3, [r3]
  39b05c: 33c8         	adds	r3, #0xc8
  39b05e: 681b         	ldr	r3, [r3]
  39b060: 9903         	ldr	r1, [sp, #0xc]
  39b062: 9a03         	ldr	r2, [sp, #0xc]
  39b064: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  39b068: 4608         	mov	r0, r1
  39b06a: 4611         	mov	r1, r2
  39b06c: 4798         	blx	r3
  39b06e: 9b03         	ldr	r3, [sp, #0xc]
  39b070: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  39b074: 681b         	ldr	r3, [r3]
  39b076: f503 73de    	add.w	r3, r3, #0x1bc
  39b07a: 681d         	ldr	r5, [r3]
  39b07c: 9b03         	ldr	r3, [sp, #0xc]
  39b07e: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  39b082: 461e         	mov	r6, r3
  39b084: 20ff         	movs	r0, #0xff
  39b086: 2100         	movs	r1, #0x0
  39b088: 2200         	movs	r2, #0x0
  39b08a: f7fb ffb7    	bl	0x396ffc <BodyShape::~BodyShape()+0x128> @ imm = #-0x4092
  39b08e: 4603         	mov	r3, r0
  39b090: 461a         	mov	r2, r3
  39b092: f88d 20d8    	strb.w	r2, [sp, #0xd8]
  39b096: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  39b09a: f88d 20d9    	strb.w	r2, [sp, #0xd9]
  39b09e: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  39b0a2: f88d 30da    	strb.w	r3, [sp, #0xda]
  39b0a6: ab36         	add	r3, sp, #0xd8
  39b0a8: 4630         	mov	r0, r6
  39b0aa: 4619         	mov	r1, r3
  39b0ac: 47a8         	blx	r5
  39b0ae: 9b03         	ldr	r3, [sp, #0xc]
  39b0b0: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  39b0b4: 681b         	ldr	r3, [r3]
  39b0b6: 3390         	adds	r3, #0x90
  39b0b8: 681b         	ldr	r3, [r3]
  39b0ba: 9a03         	ldr	r2, [sp, #0xc]
  39b0bc: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  39b0c0: 4610         	mov	r0, r2
  39b0c2: 2100         	movs	r1, #0x0
  39b0c4: 4798         	blx	r3
  39b0c6: 4b92         	ldr	r3, [pc, #0x248]        @ 0x39b310 <PlayerLobby::initMenu()+0xae0>
  39b0c8: 447b         	add	r3, pc
  39b0ca: 4618         	mov	r0, r3
  39b0cc: f01a f118    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x41a230
  39b0d0: 4603         	mov	r3, r0
  39b0d2: 2220         	movs	r2, #0x20
  39b0d4: 9200         	str	r2, [sp]
  39b0d6: 4a8f         	ldr	r2, [pc, #0x23c]        @ 0x39b314 <PlayerLobby::initMenu()+0xae4>
  39b0d8: 447a         	add	r2, pc
  39b0da: 4610         	mov	r0, r2
  39b0dc: 4619         	mov	r1, r3
  39b0de: 2220         	movs	r2, #0x20
  39b0e0: 2320         	movs	r3, #0x20
  39b0e2: f20a f949    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x20a292
  39b0e6: 4602         	mov	r2, r0
  39b0e8: 9b03         	ldr	r3, [sp, #0xc]
  39b0ea: f8c3 2120    	str.w	r2, [r3, #0x120]
  39b0ee: 9b03         	ldr	r3, [sp, #0xc]
  39b0f0: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  39b0f4: 4618         	mov	r0, r3
  39b0f6: f1fc fef7    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fcdee
  39b0fa: 9b03         	ldr	r3, [sp, #0xc]
  39b0fc: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  39b100: eddd 7a1b    	vldr	s15, [sp, #108]
  39b104: eefd 7ae7    	vcvt.s32.f32	s15, s15
  39b108: ee17 2a90    	vmov	r2, s15
  39b10c: 4618         	mov	r0, r3
  39b10e: 4611         	mov	r1, r2
  39b110: f20a fe38    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x20ac70
  39b114: 9b03         	ldr	r3, [sp, #0xc]
  39b116: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  39b11a: 681b         	ldr	r3, [r3]
  39b11c: 3340         	adds	r3, #0x40
  39b11e: 681b         	ldr	r3, [r3]
  39b120: 9a03         	ldr	r2, [sp, #0xc]
  39b122: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  39b126: 4610         	mov	r0, r2
  39b128: 991a         	ldr	r1, [sp, #0x68]
  39b12a: 4798         	blx	r3
  39b12c: 9b03         	ldr	r3, [sp, #0xc]
  39b12e: f503 75aa    	add.w	r5, r3, #0x154
  39b132: 9b03         	ldr	r3, [sp, #0xc]
  39b134: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  39b138: 681b         	ldr	r3, [r3]
  39b13a: 3350         	adds	r3, #0x50
  39b13c: 681b         	ldr	r3, [r3]
  39b13e: 9a03         	ldr	r2, [sp, #0xc]
  39b140: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  39b144: 4610         	mov	r0, r2
  39b146: 4798         	blx	r3
  39b148: 4603         	mov	r3, r0
  39b14a: 681e         	ldr	r6, [r3]
  39b14c: 9b03         	ldr	r3, [sp, #0xc]
  39b14e: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  39b152: 681b         	ldr	r3, [r3]
  39b154: 3350         	adds	r3, #0x50
  39b156: 681b         	ldr	r3, [r3]
  39b158: 9a03         	ldr	r2, [sp, #0xc]
  39b15a: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  39b15e: 4610         	mov	r0, r2
  39b160: 4798         	blx	r3
  39b162: 4603         	mov	r3, r0
  39b164: 685b         	ldr	r3, [r3, #0x4]
  39b166: aa20         	add	r2, sp, #0x80
  39b168: 4610         	mov	r0, r2
  39b16a: 4631         	mov	r1, r6
  39b16c: 461a         	mov	r2, r3
  39b16e: f1f7 fdbf    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f7b7e
  39b172: eddd 7a1c    	vldr	s15, [sp, #112]
  39b176: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39b17a: ab32         	add	r3, sp, #0xc8
  39b17c: 4618         	mov	r0, r3
  39b17e: ed9f 0b5e    	vldr	d0, [pc, #376]          @ 0x39b2f8 <PlayerLobby::initMenu()+0xac8>
  39b182: eeb0 1b47    	vmov.f64	d1, d7
  39b186: f7fb ff77    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x4112
  39b18a: ed9d 8b32    	vldr	d8, [sp, #200]
  39b18e: 9b03         	ldr	r3, [sp, #0xc]
  39b190: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  39b194: 681b         	ldr	r3, [r3]
  39b196: f503 73fe    	add.w	r3, r3, #0x1fc
  39b19a: 681b         	ldr	r3, [r3]
  39b19c: 9a03         	ldr	r2, [sp, #0xc]
  39b19e: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  39b1a2: 4610         	mov	r0, r2
  39b1a4: 4798         	blx	r3
  39b1a6: 4606         	mov	r6, r0
  39b1a8: ab05         	add	r3, sp, #0x14
  39b1aa: 4618         	mov	r0, r3
  39b1ac: f3ef f922    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ef244
  39b1b0: aa06         	add	r2, sp, #0x18
  39b1b2: ab05         	add	r3, sp, #0x14
  39b1b4: 4610         	mov	r0, r2
  39b1b6: 4631         	mov	r1, r6
  39b1b8: 461a         	mov	r2, r3
  39b1ba: f01b f451    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41b8a2
  39b1be: ab06         	add	r3, sp, #0x18
  39b1c0: 4618         	mov	r0, r3
  39b1c2: f019 f74b    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x419e96
  39b1c6: 4603         	mov	r3, r0
  39b1c8: ee07 3a90    	vmov	s15, r3
  39b1cc: eeb8 7a67    	vcvt.f32.u32	s14, s15
  39b1d0: eddd 7a1b    	vldr	s15, [sp, #108]
  39b1d4: ee27 7a27    	vmul.f32	s14, s14, s15
  39b1d8: eddd 7a1a    	vldr	s15, [sp, #104]
  39b1dc: ee27 7a27    	vmul.f32	s14, s14, s15
  39b1e0: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  39b1e4: eec7 7a27    	vdiv.f32	s15, s14, s15
  39b1e8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39b1ec: ee38 7b47    	vsub.f64	d7, d8, d7
  39b1f0: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  39b1f4: eddd 7a1c    	vldr	s15, [sp, #112]
  39b1f8: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39b1fc: ab36         	add	r3, sp, #0xd8
  39b1fe: 4618         	mov	r0, r3
  39b200: ed9f 0b3d    	vldr	d0, [pc, #244]          @ 0x39b2f8 <PlayerLobby::initMenu()+0xac8>
  39b204: eeb0 1b47    	vmov.f64	d1, d7
  39b208: f7fb ff36    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x4194
  39b20c: ed9d 7b38    	vldr	d7, [sp, #224]
  39b210: eef7 7bc7    	vcvt.f32.f64	s15, d7
  39b214: ab22         	add	r3, sp, #0x88
  39b216: 4618         	mov	r0, r3
  39b218: ee18 1a10    	vmov	r1, s16
  39b21c: ee17 2a90    	vmov	r2, s15
  39b220: f1f7 fd66    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f7acc
  39b224: a924         	add	r1, sp, #0x90
  39b226: aa20         	add	r2, sp, #0x80
  39b228: ab22         	add	r3, sp, #0x88
  39b22a: 4608         	mov	r0, r1
  39b22c: 4611         	mov	r1, r2
  39b22e: 461a         	mov	r2, r3
  39b230: f7fb ff12    	bl	0x397058 <BodyShape::~BodyShape()+0x184> @ imm = #-0x41dc
  39b234: ab24         	add	r3, sp, #0x90
  39b236: 4628         	mov	r0, r5
  39b238: 4619         	mov	r1, r3
  39b23a: f1f7 fd87    	bl	0x592d4c <cocos2d::CCPoint::operator=(cocos2d::CCPoint const&)> @ imm = #0x1f7b0e
  39b23e: ab06         	add	r3, sp, #0x18
  39b240: 4618         	mov	r0, r3
  39b242: f01a f367    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41a6ce
  39b246: ab05         	add	r3, sp, #0x14
  39b248: 4618         	mov	r0, r3
  39b24a: f3ef f8d7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ef1ae
  39b24e: 9b03         	ldr	r3, [sp, #0xc]
  39b250: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  39b254: 681b         	ldr	r3, [r3]
  39b256: 334c         	adds	r3, #0x4c
  39b258: 681b         	ldr	r3, [r3]
  39b25a: 9a03         	ldr	r2, [sp, #0xc]
  39b25c: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  39b260: 4611         	mov	r1, r2
  39b262: 9a03         	ldr	r2, [sp, #0xc]
  39b264: f502 72aa    	add.w	r2, r2, #0x154
  39b268: 4608         	mov	r0, r1
  39b26a: 4611         	mov	r1, r2
  39b26c: 4798         	blx	r3
  39b26e: 9b03         	ldr	r3, [sp, #0xc]
  39b270: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39b274: 681b         	ldr	r3, [r3]
  39b276: 33c8         	adds	r3, #0xc8
  39b278: 681b         	ldr	r3, [r3]
  39b27a: 9a03         	ldr	r2, [sp, #0xc]
  39b27c: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  39b280: 9a03         	ldr	r2, [sp, #0xc]
  39b282: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  39b286: 4608         	mov	r0, r1
  39b288: 4611         	mov	r1, r2
  39b28a: 4798         	blx	r3
  39b28c: 4b22         	ldr	r3, [pc, #0x88]         @ 0x39b318 <PlayerLobby::initMenu()+0xae8>
  39b28e: 447b         	add	r3, pc
  39b290: 4618         	mov	r0, r3
  39b292: f01a f035    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x41a06a
  39b296: 4603         	mov	r3, r0
  39b298: 2220         	movs	r2, #0x20
  39b29a: 9200         	str	r2, [sp]
  39b29c: 4a1f         	ldr	r2, [pc, #0x7c]         @ 0x39b31c <PlayerLobby::initMenu()+0xaec>
  39b29e: 447a         	add	r2, pc
  39b2a0: 4610         	mov	r0, r2
  39b2a2: 4619         	mov	r1, r3
  39b2a4: 2220         	movs	r2, #0x20
  39b2a6: 2320         	movs	r3, #0x20
  39b2a8: f20a f866    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x20a0cc
  39b2ac: 4602         	mov	r2, r0
  39b2ae: 9b03         	ldr	r3, [sp, #0xc]
  39b2b0: f8c3 2118    	str.w	r2, [r3, #0x118]
  39b2b4: 9b03         	ldr	r3, [sp, #0xc]
  39b2b6: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39b2ba: 4618         	mov	r0, r3
  39b2bc: f1fc fe14    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fcc28
  39b2c0: 9b03         	ldr	r3, [sp, #0xc]
  39b2c2: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39b2c6: eddd 7a1b    	vldr	s15, [sp, #108]
  39b2ca: eefd 7ae7    	vcvt.s32.f32	s15, s15
  39b2ce: ee17 2a90    	vmov	r2, s15
  39b2d2: 4618         	mov	r0, r3
  39b2d4: 4611         	mov	r1, r2
  39b2d6: f20a fd55    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x20aaaa
  39b2da: 9b03         	ldr	r3, [sp, #0xc]
  39b2dc: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39b2e0: 681b         	ldr	r3, [r3]
  39b2e2: 3340         	adds	r3, #0x40
  39b2e4: 681b         	ldr	r3, [r3]
  39b2e6: 9a03         	ldr	r2, [sp, #0xc]
  39b2e8: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  39b2ec: 4610         	mov	r0, r2
  39b2ee: 991a         	ldr	r1, [sp, #0x68]
  39b2f0: e016         	b	0x39b320 <PlayerLobby::initMenu()+0xaf0> @ imm = #0x2c
  39b2f2: bf00         	nop
  39b2f4: f3af 8000    	nop.w
  39b300: 0000         	movs	r0, r0
  39b302: 420c         	tst	r4, r1
  39b304: 0000         	movs	r0, r0
  39b306: 4248         	rsbs	r0, r1, #0
  39b308: 60aa         	str	r2, [r5, #0x8]
  39b30a: 005a         	lsls	r2, r3, #0x1
  39b30c: 707a         	strb	r2, [r7, #0x1]
  39b30e: 0043         	lsls	r3, r0, #0x1
  39b310: 5f88         	ldrsh	r0, [r1, r6]
  39b312: 005a         	lsls	r2, r3, #0x1
  39b314: 6f70         	ldr	r0, [r6, #0x74]
  39b316: 0043         	lsls	r3, r0, #0x1
  39b318: 5dc2         	ldrb	r2, [r0, r7]
  39b31a: 005a         	lsls	r2, r3, #0x1
  39b31c: 6db2         	ldr	r2, [r6, #0x58]
  39b31e: 0043         	lsls	r3, r0, #0x1
  39b320: 4798         	blx	r3
  39b322: 9b03         	ldr	r3, [sp, #0xc]
  39b324: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39b328: 681b         	ldr	r3, [r3]
  39b32a: 334c         	adds	r3, #0x4c
  39b32c: 681d         	ldr	r5, [r3]
  39b32e: 9b03         	ldr	r3, [sp, #0xc]
  39b330: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39b334: 461e         	mov	r6, r3
  39b336: 9b03         	ldr	r3, [sp, #0xc]
  39b338: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  39b33c: 681b         	ldr	r3, [r3]
  39b33e: 3350         	adds	r3, #0x50
  39b340: 681b         	ldr	r3, [r3]
  39b342: 9a03         	ldr	r2, [sp, #0xc]
  39b344: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  39b348: 4610         	mov	r0, r2
  39b34a: 4798         	blx	r3
  39b34c: 4603         	mov	r3, r0
  39b34e: 681f         	ldr	r7, [r3]
  39b350: 9b03         	ldr	r3, [sp, #0xc]
  39b352: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  39b356: 681b         	ldr	r3, [r3]
  39b358: 3350         	adds	r3, #0x50
  39b35a: 681b         	ldr	r3, [r3]
  39b35c: 9a03         	ldr	r2, [sp, #0xc]
  39b35e: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  39b362: 4610         	mov	r0, r2
  39b364: 4798         	blx	r3
  39b366: 4603         	mov	r3, r0
  39b368: 685b         	ldr	r3, [r3, #0x4]
  39b36a: aa20         	add	r2, sp, #0x80
  39b36c: 4610         	mov	r0, r2
  39b36e: 4639         	mov	r1, r7
  39b370: 461a         	mov	r2, r3
  39b372: f1f7 fcbd    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f797a
  39b376: eddd 7a1c    	vldr	s15, [sp, #112]
  39b37a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39b37e: ab32         	add	r3, sp, #0xc8
  39b380: 4618         	mov	r0, r3
  39b382: ed9f 0bb5    	vldr	d0, [pc, #724]          @ 0x39b658 <PlayerLobby::initMenu()+0xe28>
  39b386: eeb0 1b47    	vmov.f64	d1, d7
  39b38a: f7fb fe75    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x4316
  39b38e: ed9d 8b32    	vldr	d8, [sp, #200]
  39b392: 9b03         	ldr	r3, [sp, #0xc]
  39b394: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39b398: 681b         	ldr	r3, [r3]
  39b39a: f503 73fe    	add.w	r3, r3, #0x1fc
  39b39e: 681b         	ldr	r3, [r3]
  39b3a0: 9a03         	ldr	r2, [sp, #0xc]
  39b3a2: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  39b3a6: 4610         	mov	r0, r2
  39b3a8: 4798         	blx	r3
  39b3aa: 4607         	mov	r7, r0
  39b3ac: ab05         	add	r3, sp, #0x14
  39b3ae: 4618         	mov	r0, r3
  39b3b0: f3ef f820    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ef040
  39b3b4: aa06         	add	r2, sp, #0x18
  39b3b6: ab05         	add	r3, sp, #0x14
  39b3b8: 4610         	mov	r0, r2
  39b3ba: 4639         	mov	r1, r7
  39b3bc: 461a         	mov	r2, r3
  39b3be: f01b f34f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41b69e
  39b3c2: ab06         	add	r3, sp, #0x18
  39b3c4: 4618         	mov	r0, r3
  39b3c6: f019 f649    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x419c92
  39b3ca: 4603         	mov	r3, r0
  39b3cc: ee07 3a90    	vmov	s15, r3
  39b3d0: eeb8 7a67    	vcvt.f32.u32	s14, s15
  39b3d4: eddd 7a1b    	vldr	s15, [sp, #108]
  39b3d8: ee27 7a27    	vmul.f32	s14, s14, s15
  39b3dc: eddd 7a1a    	vldr	s15, [sp, #104]
  39b3e0: ee27 7a27    	vmul.f32	s14, s14, s15
  39b3e4: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  39b3e8: eec7 7a27    	vdiv.f32	s15, s14, s15
  39b3ec: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39b3f0: ee38 7b47    	vsub.f64	d7, d8, d7
  39b3f4: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  39b3f8: eddd 7a1c    	vldr	s15, [sp, #112]
  39b3fc: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39b400: ab36         	add	r3, sp, #0xd8
  39b402: 4618         	mov	r0, r3
  39b404: ed9f 0b94    	vldr	d0, [pc, #592]          @ 0x39b658 <PlayerLobby::initMenu()+0xe28>
  39b408: eeb0 1b47    	vmov.f64	d1, d7
  39b40c: f7fb fe34    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x4398
  39b410: ed9d 7b38    	vldr	d7, [sp, #224]
  39b414: eef7 7bc7    	vcvt.f32.f64	s15, d7
  39b418: ab22         	add	r3, sp, #0x88
  39b41a: 4618         	mov	r0, r3
  39b41c: ee18 1a10    	vmov	r1, s16
  39b420: ee17 2a90    	vmov	r2, s15
  39b424: f1f7 fc64    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f78c8
  39b428: a924         	add	r1, sp, #0x90
  39b42a: aa20         	add	r2, sp, #0x80
  39b42c: ab22         	add	r3, sp, #0x88
  39b42e: 4608         	mov	r0, r1
  39b430: 4611         	mov	r1, r2
  39b432: 461a         	mov	r2, r3
  39b434: f7fb fe10    	bl	0x397058 <BodyShape::~BodyShape()+0x184> @ imm = #-0x43e0
  39b438: ab24         	add	r3, sp, #0x90
  39b43a: 4630         	mov	r0, r6
  39b43c: 4619         	mov	r1, r3
  39b43e: 47a8         	blx	r5
  39b440: ab06         	add	r3, sp, #0x18
  39b442: 4618         	mov	r0, r3
  39b444: f01a f266    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41a4cc
  39b448: ab05         	add	r3, sp, #0x14
  39b44a: 4618         	mov	r0, r3
  39b44c: f3ee ffd6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3eefac
  39b450: 9b03         	ldr	r3, [sp, #0xc]
  39b452: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39b456: 681b         	ldr	r3, [r3]
  39b458: 33c8         	adds	r3, #0xc8
  39b45a: 681b         	ldr	r3, [r3]
  39b45c: 9a03         	ldr	r2, [sp, #0xc]
  39b45e: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  39b462: 9a03         	ldr	r2, [sp, #0xc]
  39b464: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  39b468: 4608         	mov	r0, r1
  39b46a: 4611         	mov	r1, r2
  39b46c: 4798         	blx	r3
  39b46e: 4b7c         	ldr	r3, [pc, #0x1f0]        @ 0x39b660 <PlayerLobby::initMenu()+0xe30>
  39b470: 447b         	add	r3, pc
  39b472: 4618         	mov	r0, r3
  39b474: f23c ff46    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23ce8c
  39b478: 4602         	mov	r2, r0
  39b47a: 9b03         	ldr	r3, [sp, #0xc]
  39b47c: f8c3 2138    	str.w	r2, [r3, #0x138]
  39b480: 9b03         	ldr	r3, [sp, #0xc]
  39b482: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  39b486: 4618         	mov	r0, r3
  39b488: f1fc fd2e    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fca5c
  39b48c: 9b03         	ldr	r3, [sp, #0xc]
  39b48e: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  39b492: 681b         	ldr	r3, [r3]
  39b494: 334c         	adds	r3, #0x4c
  39b496: 681d         	ldr	r5, [r3]
  39b498: 9b03         	ldr	r3, [sp, #0xc]
  39b49a: f8d3 6138    	ldr.w	r6, [r3, #0x138]
  39b49e: 9b03         	ldr	r3, [sp, #0xc]
  39b4a0: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  39b4a4: 681b         	ldr	r3, [r3]
  39b4a6: 3350         	adds	r3, #0x50
  39b4a8: 681b         	ldr	r3, [r3]
  39b4aa: 9a03         	ldr	r2, [sp, #0xc]
  39b4ac: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  39b4b0: 4610         	mov	r0, r2
  39b4b2: 4798         	blx	r3
  39b4b4: 4603         	mov	r3, r0
  39b4b6: 4630         	mov	r0, r6
  39b4b8: 4619         	mov	r1, r3
  39b4ba: 47a8         	blx	r5
  39b4bc: 9b03         	ldr	r3, [sp, #0xc]
  39b4be: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39b4c2: 681b         	ldr	r3, [r3]
  39b4c4: 33c8         	adds	r3, #0xc8
  39b4c6: 681b         	ldr	r3, [r3]
  39b4c8: 9a03         	ldr	r2, [sp, #0xc]
  39b4ca: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  39b4ce: 9a03         	ldr	r2, [sp, #0xc]
  39b4d0: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  39b4d4: 4608         	mov	r0, r1
  39b4d6: 4611         	mov	r1, r2
  39b4d8: 4798         	blx	r3
  39b4da: 4b62         	ldr	r3, [pc, #0x188]        @ 0x39b664 <PlayerLobby::initMenu()+0xe34>
  39b4dc: 447b         	add	r3, pc
  39b4de: 4618         	mov	r0, r3
  39b4e0: f019 f70e    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x419e1c
  39b4e4: 4603         	mov	r3, r0
  39b4e6: 2220         	movs	r2, #0x20
  39b4e8: 9200         	str	r2, [sp]
  39b4ea: 4a5f         	ldr	r2, [pc, #0x17c]        @ 0x39b668 <PlayerLobby::initMenu()+0xe38>
  39b4ec: 447a         	add	r2, pc
  39b4ee: 4610         	mov	r0, r2
  39b4f0: 4619         	mov	r1, r3
  39b4f2: 2220         	movs	r2, #0x20
  39b4f4: 2320         	movs	r3, #0x20
  39b4f6: f209 ff3f    	bl	0x5a5378 <cocos2d::CCLabelAtlas::create(char const*, char const*, unsigned int, unsigned int, unsigned int)> @ imm = #0x209e7e
  39b4fa: 4602         	mov	r2, r0
  39b4fc: 9b03         	ldr	r3, [sp, #0xc]
  39b4fe: f8c3 2110    	str.w	r2, [r3, #0x110]
  39b502: 9b03         	ldr	r3, [sp, #0xc]
  39b504: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  39b508: 4618         	mov	r0, r3
  39b50a: f1fc fced    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fc9da
  39b50e: 9b03         	ldr	r3, [sp, #0xc]
  39b510: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  39b514: eddd 7a1b    	vldr	s15, [sp, #108]
  39b518: eefd 7ae7    	vcvt.s32.f32	s15, s15
  39b51c: ee17 2a90    	vmov	r2, s15
  39b520: 4618         	mov	r0, r3
  39b522: 4611         	mov	r1, r2
  39b524: f20a fc2e    	bl	0x5a5d84 <cocos2d::CCLabelAtlas::setDrawWidth(int)> @ imm = #0x20a85c
  39b528: 9b03         	ldr	r3, [sp, #0xc]
  39b52a: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  39b52e: 681b         	ldr	r3, [r3]
  39b530: 3340         	adds	r3, #0x40
  39b532: 681b         	ldr	r3, [r3]
  39b534: 9a03         	ldr	r2, [sp, #0xc]
  39b536: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  39b53a: 4610         	mov	r0, r2
  39b53c: 991a         	ldr	r1, [sp, #0x68]
  39b53e: 4798         	blx	r3
  39b540: 9b03         	ldr	r3, [sp, #0xc]
  39b542: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  39b546: 681b         	ldr	r3, [r3]
  39b548: 334c         	adds	r3, #0x4c
  39b54a: 681d         	ldr	r5, [r3]
  39b54c: 9b03         	ldr	r3, [sp, #0xc]
  39b54e: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  39b552: 461e         	mov	r6, r3
  39b554: 9b03         	ldr	r3, [sp, #0xc]
  39b556: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  39b55a: 681b         	ldr	r3, [r3]
  39b55c: 3350         	adds	r3, #0x50
  39b55e: 681b         	ldr	r3, [r3]
  39b560: 9a03         	ldr	r2, [sp, #0xc]
  39b562: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  39b566: 4610         	mov	r0, r2
  39b568: 4798         	blx	r3
  39b56a: 4603         	mov	r3, r0
  39b56c: 681f         	ldr	r7, [r3]
  39b56e: 9b03         	ldr	r3, [sp, #0xc]
  39b570: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  39b574: 681b         	ldr	r3, [r3]
  39b576: 3350         	adds	r3, #0x50
  39b578: 681b         	ldr	r3, [r3]
  39b57a: 9a03         	ldr	r2, [sp, #0xc]
  39b57c: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  39b580: 4610         	mov	r0, r2
  39b582: 4798         	blx	r3
  39b584: 4603         	mov	r3, r0
  39b586: 685b         	ldr	r3, [r3, #0x4]
  39b588: aa20         	add	r2, sp, #0x80
  39b58a: 4610         	mov	r0, r2
  39b58c: 4639         	mov	r1, r7
  39b58e: 461a         	mov	r2, r3
  39b590: f1f7 fbae    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f775c
  39b594: eddd 7a1c    	vldr	s15, [sp, #112]
  39b598: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39b59c: ab32         	add	r3, sp, #0xc8
  39b59e: 4618         	mov	r0, r3
  39b5a0: ed9f 0b2d    	vldr	d0, [pc, #180]          @ 0x39b658 <PlayerLobby::initMenu()+0xe28>
  39b5a4: eeb0 1b47    	vmov.f64	d1, d7
  39b5a8: f7fb fd66    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x4534
  39b5ac: ed9d 8b32    	vldr	d8, [sp, #200]
  39b5b0: 9b03         	ldr	r3, [sp, #0xc]
  39b5b2: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  39b5b6: 681b         	ldr	r3, [r3]
  39b5b8: f503 73fe    	add.w	r3, r3, #0x1fc
  39b5bc: 681b         	ldr	r3, [r3]
  39b5be: 9a03         	ldr	r2, [sp, #0xc]
  39b5c0: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  39b5c4: 4610         	mov	r0, r2
  39b5c6: 4798         	blx	r3
  39b5c8: 4607         	mov	r7, r0
  39b5ca: ab05         	add	r3, sp, #0x14
  39b5cc: 4618         	mov	r0, r3
  39b5ce: f3ee ff11    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3eee22
  39b5d2: aa06         	add	r2, sp, #0x18
  39b5d4: ab05         	add	r3, sp, #0x14
  39b5d6: 4610         	mov	r0, r2
  39b5d8: 4639         	mov	r1, r7
  39b5da: 461a         	mov	r2, r3
  39b5dc: f01b f240    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41b480
  39b5e0: ab06         	add	r3, sp, #0x18
  39b5e2: 4618         	mov	r0, r3
  39b5e4: f019 f53a    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x419a74
  39b5e8: 4603         	mov	r3, r0
  39b5ea: ee07 3a90    	vmov	s15, r3
  39b5ee: eeb8 7a67    	vcvt.f32.u32	s14, s15
  39b5f2: eddd 7a1b    	vldr	s15, [sp, #108]
  39b5f6: ee27 7a27    	vmul.f32	s14, s14, s15
  39b5fa: eddd 7a1a    	vldr	s15, [sp, #104]
  39b5fe: ee27 7a27    	vmul.f32	s14, s14, s15
  39b602: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  39b606: eec7 7a27    	vdiv.f32	s15, s14, s15
  39b60a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39b60e: ee38 7b47    	vsub.f64	d7, d8, d7
  39b612: eeb7 8bc7    	vcvt.f32.f64	s16, d7
  39b616: eddd 7a1c    	vldr	s15, [sp, #112]
  39b61a: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39b61e: ab36         	add	r3, sp, #0xd8
  39b620: 4618         	mov	r0, r3
  39b622: ed9f 0b0d    	vldr	d0, [pc, #52]           @ 0x39b658 <PlayerLobby::initMenu()+0xe28>
  39b626: eeb0 1b47    	vmov.f64	d1, d7
  39b62a: f7fb fd25    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x45b6
  39b62e: ed9d 7b38    	vldr	d7, [sp, #224]
  39b632: eef7 7bc7    	vcvt.f32.f64	s15, d7
  39b636: ab22         	add	r3, sp, #0x88
  39b638: 4618         	mov	r0, r3
  39b63a: ee18 1a10    	vmov	r1, s16
  39b63e: ee17 2a90    	vmov	r2, s15
  39b642: f1f7 fb55    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f76aa
  39b646: a924         	add	r1, sp, #0x90
  39b648: aa20         	add	r2, sp, #0x80
  39b64a: ab22         	add	r3, sp, #0x88
  39b64c: 4608         	mov	r0, r1
  39b64e: 4611         	mov	r1, r2
  39b650: 461a         	mov	r2, r3
  39b652: e00b         	b	0x39b66c <PlayerLobby::initMenu()+0xe3c> @ imm = #0x16
  39b654: f3af 8000    	nop.w
  39b660: 6be8         	ldr	r0, [r5, #0x3c]
  39b662: 0043         	lsls	r3, r0, #0x1
  39b664: 5b74         	ldrh	r4, [r6, r5]
  39b666: 005a         	lsls	r2, r3, #0x1
  39b668: 6b74         	ldr	r4, [r6, #0x34]
  39b66a: 0043         	lsls	r3, r0, #0x1
  39b66c: f7fb fcf4    	bl	0x397058 <BodyShape::~BodyShape()+0x184> @ imm = #-0x4618
  39b670: ab24         	add	r3, sp, #0x90
  39b672: 4630         	mov	r0, r6
  39b674: 4619         	mov	r1, r3
  39b676: 47a8         	blx	r5
  39b678: ab06         	add	r3, sp, #0x18
  39b67a: 4618         	mov	r0, r3
  39b67c: f01a f14a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41a294
  39b680: ab05         	add	r3, sp, #0x14
  39b682: 4618         	mov	r0, r3
  39b684: f3ee feba    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3eed74
  39b688: 9b03         	ldr	r3, [sp, #0xc]
  39b68a: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39b68e: 681b         	ldr	r3, [r3]
  39b690: 33c8         	adds	r3, #0xc8
  39b692: 681b         	ldr	r3, [r3]
  39b694: 9a03         	ldr	r2, [sp, #0xc]
  39b696: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  39b69a: 9a03         	ldr	r2, [sp, #0xc]
  39b69c: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  39b6a0: 4608         	mov	r0, r1
  39b6a2: 4611         	mov	r1, r2
  39b6a4: 4798         	blx	r3
  39b6a6: 4b80         	ldr	r3, [pc, #0x200]        @ 0x39b8a8 <PlayerLobby::initMenu()+0x1078>
  39b6a8: 447b         	add	r3, pc
  39b6aa: 4618         	mov	r0, r3
  39b6ac: f23c fe2a    	bl	0x5d8304 <cocos2d::CCSprite::createWithSpriteFrameName(char const*)> @ imm = #0x23cc54
  39b6b0: 4602         	mov	r2, r0
  39b6b2: 9b03         	ldr	r3, [sp, #0xc]
  39b6b4: f8c3 2140    	str.w	r2, [r3, #0x140]
  39b6b8: 9b03         	ldr	r3, [sp, #0xc]
  39b6ba: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  39b6be: 4618         	mov	r0, r3
  39b6c0: f1fc fc12    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fc824
  39b6c4: 9b03         	ldr	r3, [sp, #0xc]
  39b6c6: f8d3 3140    	ldr.w	r3, [r3, #0x140]
  39b6ca: 681b         	ldr	r3, [r3]
  39b6cc: 334c         	adds	r3, #0x4c
  39b6ce: 681d         	ldr	r5, [r3]
  39b6d0: 9b03         	ldr	r3, [sp, #0xc]
  39b6d2: f8d3 6140    	ldr.w	r6, [r3, #0x140]
  39b6d6: 9b03         	ldr	r3, [sp, #0xc]
  39b6d8: f8d3 313c    	ldr.w	r3, [r3, #0x13c]
  39b6dc: 681b         	ldr	r3, [r3]
  39b6de: 3350         	adds	r3, #0x50
  39b6e0: 681b         	ldr	r3, [r3]
  39b6e2: 9a03         	ldr	r2, [sp, #0xc]
  39b6e4: f8d2 213c    	ldr.w	r2, [r2, #0x13c]
  39b6e8: 4610         	mov	r0, r2
  39b6ea: 4798         	blx	r3
  39b6ec: 4603         	mov	r3, r0
  39b6ee: 4630         	mov	r0, r6
  39b6f0: 4619         	mov	r1, r3
  39b6f2: 47a8         	blx	r5
  39b6f4: 9b03         	ldr	r3, [sp, #0xc]
  39b6f6: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39b6fa: 681b         	ldr	r3, [r3]
  39b6fc: 33c8         	adds	r3, #0xc8
  39b6fe: 681b         	ldr	r3, [r3]
  39b700: 9a03         	ldr	r2, [sp, #0xc]
  39b702: f8d2 1144    	ldr.w	r1, [r2, #0x144]
  39b706: 9a03         	ldr	r2, [sp, #0xc]
  39b708: f8d2 2140    	ldr.w	r2, [r2, #0x140]
  39b70c: 4608         	mov	r0, r1
  39b70e: 4611         	mov	r1, r2
  39b710: 4798         	blx	r3
  39b712: 9b03         	ldr	r3, [sp, #0xc]
  39b714: f8d3 3150    	ldr.w	r3, [r3, #0x150]
  39b718: 4a64         	ldr	r2, [pc, #0x190]        @ 0x39b8ac <PlayerLobby::initMenu()+0x107c>
  39b71a: 447a         	add	r2, pc
  39b71c: 4610         	mov	r0, r2
  39b71e: 4619         	mov	r1, r3
  39b720: f1fe f9f6    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1fe3ec
  39b724: 4603         	mov	r3, r0
  39b726: 4618         	mov	r0, r3
  39b728: f1fe f8fe    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1fe1fc
  39b72c: 4603         	mov	r3, r0
  39b72e: 4618         	mov	r0, r3
  39b730: 4b5f         	ldr	r3, [pc, #0x17c]        @ 0x39b8b0 <PlayerLobby::initMenu()+0x1080>
  39b732: 447b         	add	r3, pc
  39b734: 4619         	mov	r1, r3
  39b736: f04f 0200    	mov.w	r2, #0x0
  39b73a: f2c4 1240    	movt	r2, #0x4140
  39b73e: f210 fc6f    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x2108de
  39b742: 4602         	mov	r2, r0
  39b744: 9b03         	ldr	r3, [sp, #0xc]
  39b746: f8c3 2128    	str.w	r2, [r3, #0x128]
  39b74a: 9b03         	ldr	r3, [sp, #0xc]
  39b74c: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  39b750: 4618         	mov	r0, r3
  39b752: f1fc fbc9    	bl	0x597ee8 <cocos2d::CCObject::retain()> @ imm = #0x1fc792
  39b756: 9b03         	ldr	r3, [sp, #0xc]
  39b758: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  39b75c: 681b         	ldr	r3, [r3]
  39b75e: 337c         	adds	r3, #0x7c
  39b760: 681d         	ldr	r5, [r3]
  39b762: 9b03         	ldr	r3, [sp, #0xc]
  39b764: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  39b768: 461e         	mov	r6, r3
  39b76a: ab36         	add	r3, sp, #0xd8
  39b76c: 4618         	mov	r0, r3
  39b76e: f04f 517e    	mov.w	r1, #0x3f800000
  39b772: f04f 527c    	mov.w	r2, #0x3f000000
  39b776: f1f7 fabb    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f7576
  39b77a: ab36         	add	r3, sp, #0xd8
  39b77c: 4630         	mov	r0, r6
  39b77e: 4619         	mov	r1, r3
  39b780: 47a8         	blx	r5
  39b782: 9b03         	ldr	r3, [sp, #0xc]
  39b784: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  39b788: 681b         	ldr	r3, [r3]
  39b78a: 334c         	adds	r3, #0x4c
  39b78c: 681d         	ldr	r5, [r3]
  39b78e: 9b03         	ldr	r3, [sp, #0xc]
  39b790: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  39b794: 461e         	mov	r6, r3
  39b796: 4b47         	ldr	r3, [pc, #0x11c]        @ 0x39b8b4 <PlayerLobby::initMenu()+0x1084>
  39b798: 58e3         	ldr	r3, [r4, r3]
  39b79a: ed93 7a00    	vldr	s14, [r3]
  39b79e: eef2 7a08    	vmov.f32	s15, #1.200000e+01
  39b7a2: ee77 7a67    	vsub.f32	s15, s14, s15
  39b7a6: ab36         	add	r3, sp, #0xd8
  39b7a8: 4618         	mov	r0, r3
  39b7aa: ee17 1a90    	vmov	r1, s15
  39b7ae: f04f 0200    	mov.w	r2, #0x0
  39b7b2: f2c4 1220    	movt	r2, #0x4120
  39b7b6: f1f7 fa9b    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f7536
  39b7ba: ab36         	add	r3, sp, #0xd8
  39b7bc: 4630         	mov	r0, r6
  39b7be: 4619         	mov	r1, r3
  39b7c0: 47a8         	blx	r5
  39b7c2: 9b03         	ldr	r3, [sp, #0xc]
  39b7c4: 681b         	ldr	r3, [r3]
  39b7c6: 33c8         	adds	r3, #0xc8
  39b7c8: 681b         	ldr	r3, [r3]
  39b7ca: 9903         	ldr	r1, [sp, #0xc]
  39b7cc: 9a03         	ldr	r2, [sp, #0xc]
  39b7ce: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  39b7d2: 4608         	mov	r0, r1
  39b7d4: 4611         	mov	r1, r2
  39b7d6: 4798         	blx	r3
  39b7d8: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x39b8b8 <PlayerLobby::initMenu()+0x1088>
  39b7da: 447b         	add	r3, pc
  39b7dc: 4618         	mov	r0, r3
  39b7de: f23c fcd1    	bl	0x5d8184 <cocos2d::CCSprite::create(char const*)> @ imm = #0x23c9a2
  39b7e2: 4603         	mov	r3, r0
  39b7e4: 931d         	str	r3, [sp, #0x74]
  39b7e6: 9b1d         	ldr	r3, [sp, #0x74]
  39b7e8: 681b         	ldr	r3, [r3]
  39b7ea: 334c         	adds	r3, #0x4c
  39b7ec: 681d         	ldr	r5, [r3]
  39b7ee: 4b31         	ldr	r3, [pc, #0xc4]         @ 0x39b8b4 <PlayerLobby::initMenu()+0x1084>
  39b7f0: 58e3         	ldr	r3, [r4, r3]
  39b7f2: ed93 7a00    	vldr	s14, [r3]
  39b7f6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  39b7fa: eec7 6a27    	vdiv.f32	s13, s14, s15
  39b7fe: 4b2d         	ldr	r3, [pc, #0xb4]         @ 0x39b8b4 <PlayerLobby::initMenu()+0x1084>
  39b800: 58e3         	ldr	r3, [r4, r3]
  39b802: ed93 7a01    	vldr	s14, [r3, #4]
  39b806: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  39b80a: eec7 7a27    	vdiv.f32	s15, s14, s15
  39b80e: ab36         	add	r3, sp, #0xd8
  39b810: 4618         	mov	r0, r3
  39b812: ee16 1a90    	vmov	r1, s13
  39b816: ee17 2a90    	vmov	r2, s15
  39b81a: f1f7 fa69    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f74d2
  39b81e: ab36         	add	r3, sp, #0xd8
  39b820: 981d         	ldr	r0, [sp, #0x74]
  39b822: 4619         	mov	r1, r3
  39b824: 47a8         	blx	r5
  39b826: 9b1d         	ldr	r3, [sp, #0x74]
  39b828: 681b         	ldr	r3, [r3]
  39b82a: f503 73d2    	add.w	r3, r3, #0x1a4
  39b82e: 681b         	ldr	r3, [r3]
  39b830: 981d         	ldr	r0, [sp, #0x74]
  39b832: 2123         	movs	r1, #0x23
  39b834: 4798         	blx	r3
  39b836: 9b03         	ldr	r3, [sp, #0xc]
  39b838: 681b         	ldr	r3, [r3]
  39b83a: 33c8         	adds	r3, #0xc8
  39b83c: 681b         	ldr	r3, [r3]
  39b83e: 9a03         	ldr	r2, [sp, #0xc]
  39b840: 4610         	mov	r0, r2
  39b842: 991d         	ldr	r1, [sp, #0x74]
  39b844: 4798         	blx	r3
  39b846: e02b         	b	0x39b8a0 <PlayerLobby::initMenu()+0x1070> @ imm = #0x56
  39b848: ab06         	add	r3, sp, #0x18
  39b84a: 4618         	mov	r0, r3
  39b84c: f01a f062    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41a0c4
  39b850: e7ff         	b	0x39b852 <PlayerLobby::initMenu()+0x1022> @ imm = #-0x2
  39b852: ab05         	add	r3, sp, #0x14
  39b854: 4618         	mov	r0, r3
  39b856: f3ee fdd1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3eeba2
  39b85a: f3ec fc27    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ec84e
  39b85e: ab06         	add	r3, sp, #0x18
  39b860: 4618         	mov	r0, r3
  39b862: f01a f057    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41a0ae
  39b866: e7ff         	b	0x39b868 <PlayerLobby::initMenu()+0x1038> @ imm = #-0x2
  39b868: ab05         	add	r3, sp, #0x14
  39b86a: 4618         	mov	r0, r3
  39b86c: f3ee fdc6    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3eeb8c
  39b870: f3ec fc1c    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ec838
  39b874: ab06         	add	r3, sp, #0x18
  39b876: 4618         	mov	r0, r3
  39b878: f01a f04c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41a098
  39b87c: e7ff         	b	0x39b87e <PlayerLobby::initMenu()+0x104e> @ imm = #-0x2
  39b87e: ab05         	add	r3, sp, #0x14
  39b880: 4618         	mov	r0, r3
  39b882: f3ee fdbb    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3eeb76
  39b886: f3ec fc11    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ec822
  39b88a: ab06         	add	r3, sp, #0x18
  39b88c: 4618         	mov	r0, r3
  39b88e: f01a f041    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41a082
  39b892: e7ff         	b	0x39b894 <PlayerLobby::initMenu()+0x1064> @ imm = #-0x2
  39b894: ab05         	add	r3, sp, #0x14
  39b896: 4618         	mov	r0, r3
  39b898: f3ee fdb0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3eeb60
  39b89c: f3ec fc06    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ec80c
  39b8a0: b03b         	add	sp, #0xec
  39b8a2: ecbd 8b02    	vpop	{d8}
  39b8a6: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x39b8a7); words below are literal-pool data ---
  39b8a8: 69c0         	ldr	r0, [r0, #0x1c]
  39b8aa: 0043         	lsls	r3, r0, #0x1
  39b8ac: 6956         	ldr	r6, [r2, #0x14]
  39b8ae: 0043         	lsls	r3, r0, #0x1
  39b8b0: 67be         	str	r6, [r7, #0x78]
  39b8b2: 0043         	lsls	r3, r0, #0x1
  39b8b4: d724         	bvc	0x39b900 <PlayerLobby::entered()+0x40> @ imm = #0x48
  39b8b6: ffff 68ae    	vtbl.8	d22, {d31}, d30
  39b8ba: 0043         	lsls	r3, r0, #0x1

// ==== PlayerLobby::entered
//      file offset 0x39b8c0 (= ELF address; Ghidra 0x3ab8c0), 160 bytes, Thumb-2
  39b8c0: b500         	push	{lr}
  39b8c2: b08b         	sub	sp, #0x2c
  39b8c4: 9001         	str	r0, [sp, #0x4]
  39b8c6: 9b01         	ldr	r3, [sp, #0x4]
  39b8c8: 4a21         	ldr	r2, [pc, #0x84]         @ 0x39b950 <PlayerLobby::entered()+0x90>
  39b8ca: 447a         	add	r2, pc
  39b8cc: 4611         	mov	r1, r2
  39b8ce: aa02         	add	r2, sp, #0x8
  39b8d0: c903         	ldm	r1, {r0, r1}
  39b8d2: e882 0003    	stm.w	r2, {r0, r1}
  39b8d6: 4618         	mov	r0, r3
  39b8d8: ab02         	add	r3, sp, #0x8
  39b8da: e893 0006    	ldm.w	r3, {r1, r2}
  39b8de: f1f5 fc89    	bl	0x5911f4 <cocos2d::CCNode::schedule(void (cocos2d::CCObject::*)(float))> @ imm = #0x1f5912
  39b8e2: 9b01         	ldr	r3, [sp, #0x4]
  39b8e4: 4a1b         	ldr	r2, [pc, #0x6c]         @ 0x39b954 <PlayerLobby::entered()+0x94>
  39b8e6: 447a         	add	r2, pc
  39b8e8: 4611         	mov	r1, r2
  39b8ea: aa04         	add	r2, sp, #0x10
  39b8ec: c903         	ldm	r1, {r0, r1}
  39b8ee: e882 0003    	stm.w	r2, {r0, r1}
  39b8f2: 4618         	mov	r0, r3
  39b8f4: ab04         	add	r3, sp, #0x10
  39b8f6: e893 0006    	ldm.w	r3, {r1, r2}
  39b8fa: f64c 43cd    	movw	r3, #0xcccd
  39b8fe: f6c3 634c    	movt	r3, #0x3e4c
  39b902: f1f5 fc8f    	bl	0x591224 <cocos2d::CCNode::schedule(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x1f591e
  39b906: 9b01         	ldr	r3, [sp, #0x4]
  39b908: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x39b958 <PlayerLobby::entered()+0x98>
  39b90a: 447a         	add	r2, pc
  39b90c: 4611         	mov	r1, r2
  39b90e: aa06         	add	r2, sp, #0x18
  39b910: c903         	ldm	r1, {r0, r1}
  39b912: e882 0003    	stm.w	r2, {r0, r1}
  39b916: 4618         	mov	r0, r3
  39b918: ab06         	add	r3, sp, #0x18
  39b91a: e893 0006    	ldm.w	r3, {r1, r2}
  39b91e: f04f 537e    	mov.w	r3, #0x3f800000
  39b922: f1f5 fc7f    	bl	0x591224 <cocos2d::CCNode::schedule(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x1f58fe
  39b926: 9b01         	ldr	r3, [sp, #0x4]
  39b928: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x39b95c <PlayerLobby::entered()+0x9c>
  39b92a: 447a         	add	r2, pc
  39b92c: 4611         	mov	r1, r2
  39b92e: aa08         	add	r2, sp, #0x20
  39b930: c903         	ldm	r1, {r0, r1}
  39b932: e882 0003    	stm.w	r2, {r0, r1}
  39b936: 4618         	mov	r0, r3
  39b938: ab08         	add	r3, sp, #0x20
  39b93a: e893 0006    	ldm.w	r3, {r1, r2}
  39b93e: f04f 0300    	mov.w	r3, #0x0
  39b942: f2c4 0340    	movt	r3, #0x4040
  39b946: f1f5 fc6d    	bl	0x591224 <cocos2d::CCNode::schedule(void (cocos2d::CCObject::*)(float), float)> @ imm = #0x1f58da
  39b94a: b00b         	add	sp, #0x2c
  39b94c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x39b94f); words below are literal-pool data ---
  39b950: 6802         	ldr	r2, [r0]
  39b952: 0043         	lsls	r3, r0, #0x1
  39b954: 67ee         	str	r6, [r5, #0x7c]
  39b956: 0043         	lsls	r3, r0, #0x1
  39b958: 67d2         	str	r2, [r2, #0x7c]
  39b95a: 0043         	lsls	r3, r0, #0x1
  39b95c: 67ba         	str	r2, [r7, #0x78]
  39b95e: 0043         	lsls	r3, r0, #0x1

// ==== PlayerLobby::exited
//      file offset 0x39b960 (= ELF address; Ghidra 0x3ab960), 50 bytes, Thumb-2
  39b960: b500         	push	{lr}
  39b962: b083         	sub	sp, #0xc
  39b964: 9001         	str	r0, [sp, #0x4]
  39b966: f244 fea3    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x244d46
  39b96a: 4602         	mov	r2, r0
  39b96c: 9b01         	ldr	r3, [sp, #0x4]
  39b96e: 4610         	mov	r0, r2
  39b970: 4619         	mov	r1, r3
  39b972: f244 ffd5    	bl	0x5e0920 <cocos2d::CCNotificationCenter::removeAllObservers(cocos2d::CCObject*)> @ imm = #0x244faa
  39b976: 9b01         	ldr	r3, [sp, #0x4]
  39b978: 4618         	mov	r0, r3
  39b97a: f1f5 fcbd    	bl	0x5912f8 <cocos2d::CCNode::unscheduleAllSelectors()> @ imm = #0x1f597a
  39b97e: f7dc f8df    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x23e42
  39b982: 4603         	mov	r3, r0
  39b984: 4618         	mov	r0, r3
  39b986: 2100         	movs	r1, #0x0
  39b988: f7de fedc    	bl	0x37a744 <NetworkManager::setWasInvited(bool)> @ imm = #-0x21248
  39b98c: b003         	add	sp, #0xc
  39b98e: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobby::setReadyLabel
//      file offset 0x39b994 (= ELF address; Ghidra 0x3ab994), 46 bytes, Thumb-2
  39b994: b530         	push	{r4, r5, lr}
  39b996: b083         	sub	sp, #0xc
  39b998: 9001         	str	r0, [sp, #0x4]
  39b99a: 9100         	str	r1, [sp]
  39b99c: 9b01         	ldr	r3, [sp, #0x4]
  39b99e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  39b9a2: 681b         	ldr	r3, [r3]
  39b9a4: f503 73fc    	add.w	r3, r3, #0x1f8
  39b9a8: 681c         	ldr	r4, [r3]
  39b9aa: 9b01         	ldr	r3, [sp, #0x4]
  39b9ac: f8d3 5108    	ldr.w	r5, [r3, #0x108]
  39b9b0: 9800         	ldr	r0, [sp]
  39b9b2: f019 f4a5    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x41994a
  39b9b6: 4603         	mov	r3, r0
  39b9b8: 4628         	mov	r0, r5
  39b9ba: 4619         	mov	r1, r3
  39b9bc: 47a0         	blx	r4
  39b9be: b003         	add	sp, #0xc
  39b9c0: bd30         	pop	{r4, r5, pc}

// ==== PlayerLobby::addIMRow
//      file offset 0x39b9c4 (= ELF address; Ghidra 0x3ab9c4), 240 bytes, Thumb-2
  39b9c4: b570         	push	{r4, r5, r6, lr}
  39b9c6: b088         	sub	sp, #0x20
  39b9c8: 9003         	str	r0, [sp, #0xc]
  39b9ca: 9102         	str	r1, [sp, #0x8]
  39b9cc: 4613         	mov	r3, r2
  39b9ce: f88d 3007    	strb.w	r3, [sp, #0x7]
  39b9d2: 4c35         	ldr	r4, [pc, #0xd4]         @ 0x39baa8 <PlayerLobby::addIMRow(std::string, bool)+0xe4>
  39b9d4: 447c         	add	r4, pc
  39b9d6: 9802         	ldr	r0, [sp, #0x8]
  39b9d8: f019 f492    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x419924
  39b9dc: 4603         	mov	r3, r0
  39b9de: 4618         	mov	r0, r3
  39b9e0: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x39baac <PlayerLobby::addIMRow(std::string, bool)+0xe8>
  39b9e2: 447b         	add	r3, pc
  39b9e4: 4619         	mov	r1, r3
  39b9e6: f04f 0200    	mov.w	r2, #0x0
  39b9ea: f2c4 1260    	movt	r2, #0x4160
  39b9ee: f210 fb17    	bl	0x5ac020 <cocos2d::CCLabelTTF::create(char const*, char const*, float)> @ imm = #0x21062e
  39b9f2: 4603         	mov	r3, r0
  39b9f4: 9305         	str	r3, [sp, #0x14]
  39b9f6: 9b05         	ldr	r3, [sp, #0x14]
  39b9f8: 681b         	ldr	r3, [r3]
  39b9fa: f503 73de    	add.w	r3, r3, #0x1bc
  39b9fe: 681d         	ldr	r5, [r3]
  39ba00: 9e05         	ldr	r6, [sp, #0x14]
  39ba02: 20ff         	movs	r0, #0xff
  39ba04: 21ff         	movs	r1, #0xff
  39ba06: 22ff         	movs	r2, #0xff
  39ba08: f7fb faf8    	bl	0x396ffc <BodyShape::~BodyShape()+0x128> @ imm = #-0x4a10
  39ba0c: 4603         	mov	r3, r0
  39ba0e: 461a         	mov	r2, r3
  39ba10: f88d 2018    	strb.w	r2, [sp, #0x18]
  39ba14: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  39ba18: f88d 2019    	strb.w	r2, [sp, #0x19]
  39ba1c: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  39ba20: f88d 301a    	strb.w	r3, [sp, #0x1a]
  39ba24: ab06         	add	r3, sp, #0x18
  39ba26: 4630         	mov	r0, r6
  39ba28: 4619         	mov	r1, r3
  39ba2a: 47a8         	blx	r5
  39ba2c: 9b05         	ldr	r3, [sp, #0x14]
  39ba2e: 681b         	ldr	r3, [r3]
  39ba30: 337c         	adds	r3, #0x7c
  39ba32: 681d         	ldr	r5, [r3]
  39ba34: 9e05         	ldr	r6, [sp, #0x14]
  39ba36: ab06         	add	r3, sp, #0x18
  39ba38: 4618         	mov	r0, r3
  39ba3a: f04f 0100    	mov.w	r1, #0x0
  39ba3e: f04f 0200    	mov.w	r2, #0x0
  39ba42: f1f7 f955    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f72aa
  39ba46: ab06         	add	r3, sp, #0x18
  39ba48: 4630         	mov	r0, r6
  39ba4a: 4619         	mov	r1, r3
  39ba4c: 47a8         	blx	r5
  39ba4e: 9b03         	ldr	r3, [sp, #0xc]
  39ba50: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  39ba54: 4618         	mov	r0, r3
  39ba56: 9905         	ldr	r1, [sp, #0x14]
  39ba58: f1fe fc08    	bl	0x59a26c <cocos2d::CCArray::addObject(cocos2d::CCObject*)> @ imm = #0x1fe810
  39ba5c: 9b03         	ldr	r3, [sp, #0xc]
  39ba5e: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  39ba62: 4618         	mov	r0, r3
  39ba64: f0b7 fc9a    	bl	0x45339c <cocos2d::extension::CCTableView::reloadData()> @ imm = #0xb7934
  39ba68: 9b03         	ldr	r3, [sp, #0xc]
  39ba6a: f8d3 30f8    	ldr.w	r3, [r3, #0xf8]
  39ba6e: 461d         	mov	r5, r3
  39ba70: ab06         	add	r3, sp, #0x18
  39ba72: 4618         	mov	r0, r3
  39ba74: f04f 0100    	mov.w	r1, #0x0
  39ba78: f04f 0200    	mov.w	r2, #0x0
  39ba7c: f1f7 f938    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f7270
  39ba80: ab06         	add	r3, sp, #0x18
  39ba82: 4628         	mov	r0, r5
  39ba84: 4619         	mov	r1, r3
  39ba86: 2200         	movs	r2, #0x0
  39ba88: f0b5 fcd2    	bl	0x451430 <cocos2d::extension::CCScrollView::setContentOffset(cocos2d::CCPoint, bool)> @ imm = #0xb59a4
  39ba8c: f89d 3007    	ldrb.w	r3, [sp, #0x7]
  39ba90: 2b00         	cmp	r3, #0x0
  39ba92: d006         	beq	0x39baa2 <PlayerLobby::addIMRow(std::string, bool)+0xde> @ imm = #0xc
  39ba94: 4b06         	ldr	r3, [pc, #0x18]         @ 0x39bab0 <PlayerLobby::addIMRow(std::string, bool)+0xec>
  39ba96: 58e3         	ldr	r3, [r4, r3]
  39ba98: 681b         	ldr	r3, [r3]
  39ba9a: 4618         	mov	r0, r3
  39ba9c: 2110         	movs	r1, #0x10
  39ba9e: f05c f98f    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x5c31e
  39baa2: b008         	add	sp, #0x20
  39baa4: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x39baa5); words below are literal-pool data ---
  39baa6: bf00         	nop
  39baa8: 7034         	strb	r4, [r6]
  39baaa: 0059         	lsls	r1, r3, #0x1
  39baac: 670a         	str	r2, [r1, #0x70]
  39baae: 0043         	lsls	r3, r0, #0x1
  39bab0: d730         	bvc	0x39bb14 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x60> @ imm = #0x60
  39bab2: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== PlayerLobby::onReceiveIM
//      file offset 0x39bab4 (= ELF address; Ghidra 0x3abab4), 684 bytes, Thumb-2
  39bab4: b530         	push	{r4, r5, lr}
  39bab6: b093         	sub	sp, #0x4c
  39bab8: 9003         	str	r0, [sp, #0xc]
  39baba: 9102         	str	r1, [sp, #0x8]
  39babc: 4ca2         	ldr	r4, [pc, #0x288]        @ 0x39bd48 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x294>
  39babe: 447c         	add	r4, pc
  39bac0: 9b02         	ldr	r3, [sp, #0x8]
  39bac2: 930b         	str	r3, [sp, #0x2c]
  39bac4: 9b0b         	ldr	r3, [sp, #0x2c]
  39bac6: 2b00         	cmp	r3, #0x0
  39bac8: d100         	bne	0x39bacc <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x18> @ imm = #0x0
  39baca: e13a         	b	0x39bd42 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x28e> @ imm = #0x274
  39bacc: 980b         	ldr	r0, [sp, #0x2c]
  39bace: 2100         	movs	r1, #0x0
  39bad0: f1fe fb26    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1fe64c
  39bad4: 4603         	mov	r3, r0
  39bad6: 4618         	mov	r0, r3
  39bad8: f1fd ff26    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1fde4c
  39badc: 4605         	mov	r5, r0
  39bade: ab0e         	add	r3, sp, #0x38
  39bae0: 4618         	mov	r0, r3
  39bae2: f3ee fc87    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ee90e
  39bae6: aa06         	add	r2, sp, #0x18
  39bae8: ab0e         	add	r3, sp, #0x38
  39baea: 4610         	mov	r0, r2
  39baec: 4629         	mov	r1, r5
  39baee: 461a         	mov	r2, r3
  39baf0: f01a f7b6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41af6c
  39baf4: ab0e         	add	r3, sp, #0x38
  39baf6: 4618         	mov	r0, r3
  39baf8: f3ee fc80    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ee900
  39bafc: 980b         	ldr	r0, [sp, #0x2c]
  39bafe: 2101         	movs	r1, #0x1
  39bb00: f1fe fb0e    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1fe61c
  39bb04: 4603         	mov	r3, r0
  39bb06: 4618         	mov	r0, r3
  39bb08: f1fd ff0e    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1fde1c
  39bb0c: 4605         	mov	r5, r0
  39bb0e: ab0e         	add	r3, sp, #0x38
  39bb10: 4618         	mov	r0, r3
  39bb12: f3ee fc6f    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ee8de
  39bb16: aa07         	add	r2, sp, #0x1c
  39bb18: ab0e         	add	r3, sp, #0x38
  39bb1a: 4610         	mov	r0, r2
  39bb1c: 4629         	mov	r1, r5
  39bb1e: 461a         	mov	r2, r3
  39bb20: f01a f79e    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41af3c
  39bb24: ab0e         	add	r3, sp, #0x38
  39bb26: 4618         	mov	r0, r3
  39bb28: f3ee fc68    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ee8d0
  39bb2c: ab07         	add	r3, sp, #0x1c
  39bb2e: 4618         	mov	r0, r3
  39bb30: f019 f294    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x419528
  39bb34: 4603         	mov	r3, r0
  39bb36: 2b00         	cmp	r3, #0x0
  39bb38: bf14         	ite	ne
  39bb3a: 2300         	movne	r3, #0x0
  39bb3c: 2301         	moveq	r3, #0x1
  39bb3e: b2db         	uxtb	r3, r3
  39bb40: 2b00         	cmp	r3, #0x0
  39bb42: d001         	beq	0x39bb48 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x94> @ imm = #0x2
  39bb44: 2400         	movs	r4, #0x0
  39bb46: e0bc         	b	0x39bcc2 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x20e> @ imm = #0x178
  39bb48: ab0e         	add	r3, sp, #0x38
  39bb4a: 4618         	mov	r0, r3
  39bb4c: f3ee fc52    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ee8a4
  39bb50: aa08         	add	r2, sp, #0x20
  39bb52: ab0e         	add	r3, sp, #0x38
  39bb54: 4610         	mov	r0, r2
  39bb56: 4a7d         	ldr	r2, [pc, #0x1f4]        @ 0x39bd4c <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x298>
  39bb58: 447a         	add	r2, pc
  39bb5a: 4611         	mov	r1, r2
  39bb5c: 461a         	mov	r2, r3
  39bb5e: f01a f77f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41aefe
  39bb62: ab0e         	add	r3, sp, #0x38
  39bb64: 4618         	mov	r0, r3
  39bb66: f3ee fc49    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ee892
  39bb6a: ab06         	add	r3, sp, #0x18
  39bb6c: 4618         	mov	r0, r3
  39bb6e: f019 f275    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x4194ea
  39bb72: 4603         	mov	r3, r0
  39bb74: 2b00         	cmp	r3, #0x0
  39bb76: d00b         	beq	0x39bb90 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0xdc> @ imm = #0x16
  39bb78: ab06         	add	r3, sp, #0x18
  39bb7a: 4618         	mov	r0, r3
  39bb7c: 4b74         	ldr	r3, [pc, #0x1d0]        @ 0x39bd50 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x29c>
  39bb7e: 447b         	add	r3, pc
  39bb80: 4619         	mov	r1, r3
  39bb82: f019 f5cf    	bl	0x7b5724 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18c74> @ imm = #0x419b9e
  39bb86: 4603         	mov	r3, r0
  39bb88: 2b00         	cmp	r3, #0x0
  39bb8a: d001         	beq	0x39bb90 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0xdc> @ imm = #0x2
  39bb8c: 2301         	movs	r3, #0x1
  39bb8e: e000         	b	0x39bb92 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0xde> @ imm = #0x0
  39bb90: 2300         	movs	r3, #0x0
  39bb92: 2b00         	cmp	r3, #0x0
  39bb94: d020         	beq	0x39bbd8 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x124> @ imm = #0x40
  39bb96: f7db ffd3    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2405a
  39bb9a: 4603         	mov	r3, r0
  39bb9c: 4618         	mov	r0, r3
  39bb9e: f7dc fd6b    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #-0x2352a
  39bba2: 4602         	mov	r2, r0
  39bba4: ab06         	add	r3, sp, #0x18
  39bba6: 4610         	mov	r0, r2
  39bba8: 4619         	mov	r1, r3
  39bbaa: f1f8 f9a1    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1f8342
  39bbae: 4603         	mov	r3, r0
  39bbb0: 930c         	str	r3, [sp, #0x30]
  39bbb2: 9b0c         	ldr	r3, [sp, #0x30]
  39bbb4: 2b00         	cmp	r3, #0x0
  39bbb6: d101         	bne	0x39bbbc <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x108> @ imm = #0x2
  39bbb8: 2400         	movs	r4, #0x0
  39bbba: e078         	b	0x39bcae <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x1fa> @ imm = #0xf0
  39bbbc: 980c         	ldr	r0, [sp, #0x30]
  39bbbe: 2101         	movs	r1, #0x1
  39bbc0: f1fe faae    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1fe55c
  39bbc4: 4603         	mov	r3, r0
  39bbc6: 4618         	mov	r0, r3
  39bbc8: f1fd feae    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1fdd5c
  39bbcc: 4603         	mov	r3, r0
  39bbce: aa08         	add	r2, sp, #0x20
  39bbd0: 4610         	mov	r0, r2
  39bbd2: 4619         	mov	r1, r3
  39bbd4: f01a f14c    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x41a298
  39bbd8: 4b5e         	ldr	r3, [pc, #0x178]        @ 0x39bd54 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x2a0>
  39bbda: 58e3         	ldr	r3, [r4, r3]
  39bbdc: 681d         	ldr	r5, [r3]
  39bbde: aa09         	add	r2, sp, #0x24
  39bbe0: ab07         	add	r3, sp, #0x1c
  39bbe2: 4610         	mov	r0, r2
  39bbe4: 4619         	mov	r1, r3
  39bbe6: f01a f47f    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x41a8fe
  39bbea: 4b5b         	ldr	r3, [pc, #0x16c]        @ 0x39bd58 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x2a4>
  39bbec: 58e3         	ldr	r3, [r4, r3]
  39bbee: edd3 7a00    	vldr	s15, [r3]
  39bbf2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  39bbf6: 4b58         	ldr	r3, [pc, #0x160]        @ 0x39bd58 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x2a4>
  39bbf8: 58e3         	ldr	r3, [r4, r3]
  39bbfa: edd3 7a01    	vldr	s15, [r3, #4]
  39bbfe: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39bc02: ab0e         	add	r3, sp, #0x38
  39bc04: 4618         	mov	r0, r3
  39bc06: eeb0 0b46    	vmov.f64	d0, d6
  39bc0a: eeb0 1b47    	vmov.f64	d1, d7
  39bc0e: f7fb fa33    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x4b9a
  39bc12: ac09         	add	r4, sp, #0x24
  39bc14: 466b         	mov	r3, sp
  39bc16: aa10         	add	r2, sp, #0x40
  39bc18: e892 0003    	ldm.w	r2, {r0, r1}
  39bc1c: e883 0003    	stm.w	r3, {r0, r1}
  39bc20: ab0e         	add	r3, sp, #0x38
  39bc22: cb0c         	ldm	r3, {r2, r3}
  39bc24: 4628         	mov	r0, r5
  39bc26: 4621         	mov	r1, r4
  39bc28: f05c fa3c    	bl	0x3f80a4 <Sound::playTaunt(std::string, cpVect)> @ imm = #0x5c478
  39bc2c: 4603         	mov	r3, r0
  39bc2e: f88d 3017    	strb.w	r3, [sp, #0x17]
  39bc32: ab09         	add	r3, sp, #0x24
  39bc34: 4618         	mov	r0, r3
  39bc36: f019 f66d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419cda
  39bc3a: ab08         	add	r3, sp, #0x20
  39bc3c: 4618         	mov	r0, r3
  39bc3e: f019 f35f    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4196be
  39bc42: 4604         	mov	r4, r0
  39bc44: ab07         	add	r3, sp, #0x1c
  39bc46: 4618         	mov	r0, r3
  39bc48: f019 f35a    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x4196b4
  39bc4c: 4603         	mov	r3, r0
  39bc4e: 4a43         	ldr	r2, [pc, #0x10c]        @ 0x39bd5c <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x2a8>
  39bc50: 447a         	add	r2, pc
  39bc52: 4610         	mov	r0, r2
  39bc54: 4621         	mov	r1, r4
  39bc56: 461a         	mov	r2, r3
  39bc58: f1fd ff5a    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1fdeb4
  39bc5c: 4603         	mov	r3, r0
  39bc5e: 930d         	str	r3, [sp, #0x34]
  39bc60: 9b03         	ldr	r3, [sp, #0xc]
  39bc62: 681b         	ldr	r3, [r3]
  39bc64: f503 7308    	add.w	r3, r3, #0x220
  39bc68: 681c         	ldr	r4, [r3]
  39bc6a: 980d         	ldr	r0, [sp, #0x34]
  39bc6c: f1fd fe5c    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1fdcb8
  39bc70: 4605         	mov	r5, r0
  39bc72: ab09         	add	r3, sp, #0x24
  39bc74: 4618         	mov	r0, r3
  39bc76: f3ee fbbd    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ee77a
  39bc7a: aa0a         	add	r2, sp, #0x28
  39bc7c: ab09         	add	r3, sp, #0x24
  39bc7e: 4610         	mov	r0, r2
  39bc80: 4629         	mov	r1, r5
  39bc82: 461a         	mov	r2, r3
  39bc84: f01a f6ec    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41add8
  39bc88: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  39bc8c: f083 0301    	eor	r3, r3, #0x1
  39bc90: b2db         	uxtb	r3, r3
  39bc92: aa0a         	add	r2, sp, #0x28
  39bc94: 9803         	ldr	r0, [sp, #0xc]
  39bc96: 4611         	mov	r1, r2
  39bc98: 461a         	mov	r2, r3
  39bc9a: 47a0         	blx	r4
  39bc9c: ab0a         	add	r3, sp, #0x28
  39bc9e: 4618         	mov	r0, r3
  39bca0: f019 f638    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419c70
  39bca4: ab09         	add	r3, sp, #0x24
  39bca6: 4618         	mov	r0, r3
  39bca8: f3ee fba8    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ee750
  39bcac: 2401         	movs	r4, #0x1
  39bcae: ab08         	add	r3, sp, #0x20
  39bcb0: 4618         	mov	r0, r3
  39bcb2: f019 f62f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419c5e
  39bcb6: 2c01         	cmp	r4, #0x1
  39bcb8: d001         	beq	0x39bcbe <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x20a> @ imm = #0x2
  39bcba: 2400         	movs	r4, #0x0
  39bcbc: e001         	b	0x39bcc2 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x20e> @ imm = #0x2
  39bcbe: bf00         	nop
  39bcc0: 2401         	movs	r4, #0x1
  39bcc2: ab07         	add	r3, sp, #0x1c
  39bcc4: 4618         	mov	r0, r3
  39bcc6: f019 f625    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419c4a
  39bcca: 2c01         	cmp	r4, #0x1
  39bccc: d001         	beq	0x39bcd2 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x21e> @ imm = #0x2
  39bcce: 2400         	movs	r4, #0x0
  39bcd0: e001         	b	0x39bcd6 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x222> @ imm = #0x2
  39bcd2: bf00         	nop
  39bcd4: 2401         	movs	r4, #0x1
  39bcd6: ab06         	add	r3, sp, #0x18
  39bcd8: 4618         	mov	r0, r3
  39bcda: f019 f61b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419c36
  39bcde: 2c01         	cmp	r4, #0x1
  39bce0: d12f         	bne	0x39bd42 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x28e> @ imm = #0x5e
  39bce2: bf00         	nop
  39bce4: e02d         	b	0x39bd42 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x28e> @ imm = #0x5a
  39bce6: ab0e         	add	r3, sp, #0x38
  39bce8: 4618         	mov	r0, r3
  39bcea: f3ee fb87    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ee70e
  39bcee: f3ec f9dd    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ec3ba
  39bcf2: ab0e         	add	r3, sp, #0x38
  39bcf4: 4618         	mov	r0, r3
  39bcf6: f3ee fb81    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ee702
  39bcfa: e01c         	b	0x39bd36 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x282> @ imm = #0x38
  39bcfc: ab0e         	add	r3, sp, #0x38
  39bcfe: 4618         	mov	r0, r3
  39bd00: f3ee fb7c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ee6f8
  39bd04: e012         	b	0x39bd2c <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x278> @ imm = #0x24
  39bd06: ab09         	add	r3, sp, #0x24
  39bd08: 4618         	mov	r0, r3
  39bd0a: f019 f603    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419c06
  39bd0e: e009         	b	0x39bd24 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x270> @ imm = #0x12
  39bd10: ab0a         	add	r3, sp, #0x28
  39bd12: 4618         	mov	r0, r3
  39bd14: f019 f5fe    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419bfc
  39bd18: e7ff         	b	0x39bd1a <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x266> @ imm = #-0x2
  39bd1a: ab09         	add	r3, sp, #0x24
  39bd1c: 4618         	mov	r0, r3
  39bd1e: f3ee fb6d    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ee6da
  39bd22: e7ff         	b	0x39bd24 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x270> @ imm = #-0x2
  39bd24: ab08         	add	r3, sp, #0x20
  39bd26: 4618         	mov	r0, r3
  39bd28: f019 f5f4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419be8
  39bd2c: ab07         	add	r3, sp, #0x1c
  39bd2e: 4618         	mov	r0, r3
  39bd30: f019 f5f0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419be0
  39bd34: e7ff         	b	0x39bd36 <PlayerLobby::onReceiveIM(cocos2d::CCObject*)+0x282> @ imm = #-0x2
  39bd36: ab06         	add	r3, sp, #0x18
  39bd38: 4618         	mov	r0, r3
  39bd3a: f019 f5eb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419bd6
  39bd3e: f3ec f9b5    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ec36a
  39bd42: b013         	add	sp, #0x4c
  39bd44: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x39bd45); words below are literal-pool data ---
  39bd46: bf00         	nop
  39bd48: 6f4a         	ldr	r2, [r1, #0x74]
  39bd4a: 0059         	lsls	r1, r3, #0x1
  39bd4c: 659c         	str	r4, [r3, #0x58]
  39bd4e: 0043         	lsls	r3, r0, #0x1
  39bd50: 6576         	str	r6, [r6, #0x54]
  39bd52: 0043         	lsls	r3, r0, #0x1
  39bd54: d730         	bvc	0x39bdb8 <PlayerLobby::getHostLobbyRow()+0x58> @ imm = #0x60
  39bd56: ffff d728    	<unknown>
  39bd5a: ffff 64ac    	<unknown>
  39bd5e: 0043         	lsls	r3, r0, #0x1

// ==== PlayerLobby::getHostLobbyRow
//      file offset 0x39bd60 (= ELF address; Ghidra 0x3abd60), 180 bytes, Thumb-2
  39bd60: b510         	push	{r4, lr}
  39bd62: b086         	sub	sp, #0x18
  39bd64: 9001         	str	r0, [sp, #0x4]
  39bd66: f7db feeb    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2422a
  39bd6a: 4603         	mov	r3, r0
  39bd6c: aa02         	add	r2, sp, #0x8
  39bd6e: 4610         	mov	r0, r2
  39bd70: 4619         	mov	r1, r3
  39bd72: f7dd fee9    	bl	0x379b48 <NetworkManager::getHostPeerID()> @ imm = #-0x2222e
  39bd76: 9b01         	ldr	r3, [sp, #0x4]
  39bd78: f8d3 4124    	ldr.w	r4, [r3, #0x124]
  39bd7c: ab04         	add	r3, sp, #0x10
  39bd7e: 4618         	mov	r0, r3
  39bd80: f3ee fb38    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ee670
  39bd84: aa03         	add	r2, sp, #0xc
  39bd86: ab04         	add	r3, sp, #0x10
  39bd88: 4610         	mov	r0, r2
  39bd8a: 4a21         	ldr	r2, [pc, #0x84]         @ 0x39be10 <PlayerLobby::getHostLobbyRow()+0xb0>
  39bd8c: 447a         	add	r2, pc
  39bd8e: 4611         	mov	r1, r2
  39bd90: 461a         	mov	r2, r3
  39bd92: f01a f665    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41acca
  39bd96: ab03         	add	r3, sp, #0xc
  39bd98: 4620         	mov	r0, r4
  39bd9a: 4619         	mov	r1, r3
  39bd9c: f1f8 f8a8    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1f8150
  39bda0: 4603         	mov	r3, r0
  39bda2: 9305         	str	r3, [sp, #0x14]
  39bda4: ab03         	add	r3, sp, #0xc
  39bda6: 4618         	mov	r0, r3
  39bda8: f019 f5b4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419b68
  39bdac: ab04         	add	r3, sp, #0x10
  39bdae: 4618         	mov	r0, r3
  39bdb0: f3ee fb24    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ee648
  39bdb4: aa04         	add	r2, sp, #0x10
  39bdb6: ab02         	add	r3, sp, #0x8
  39bdb8: 4610         	mov	r0, r2
  39bdba: 4619         	mov	r1, r3
  39bdbc: f01a f394    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x41a728
  39bdc0: ab04         	add	r3, sp, #0x10
  39bdc2: 9805         	ldr	r0, [sp, #0x14]
  39bdc4: 4619         	mov	r1, r3
  39bdc6: f7fd fd25    	bl	0x399814 <LobbyRow::setPeerId(std::string)> @ imm = #-0x25b6
  39bdca: ab04         	add	r3, sp, #0x10
  39bdcc: 4618         	mov	r0, r3
  39bdce: f019 f5a1    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419b42
  39bdd2: 9c05         	ldr	r4, [sp, #0x14]
  39bdd4: ab02         	add	r3, sp, #0x8
  39bdd6: 4618         	mov	r0, r3
  39bdd8: f019 f59c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419b38
  39bddc: 4623         	mov	r3, r4
  39bdde: e014         	b	0x39be0a <PlayerLobby::getHostLobbyRow()+0xaa> @ imm = #0x28
  39bde0: ab03         	add	r3, sp, #0xc
  39bde2: 4618         	mov	r0, r3
  39bde4: f019 f596    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419b2c
  39bde8: e7ff         	b	0x39bdea <PlayerLobby::getHostLobbyRow()+0x8a> @ imm = #-0x2
  39bdea: ab04         	add	r3, sp, #0x10
  39bdec: 4618         	mov	r0, r3
  39bdee: f3ee fb05    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ee60a
  39bdf2: e004         	b	0x39bdfe <PlayerLobby::getHostLobbyRow()+0x9e> @ imm = #0x8
  39bdf4: ab04         	add	r3, sp, #0x10
  39bdf6: 4618         	mov	r0, r3
  39bdf8: f019 f58c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419b18
  39bdfc: e7ff         	b	0x39bdfe <PlayerLobby::getHostLobbyRow()+0x9e> @ imm = #-0x2
  39bdfe: ab02         	add	r3, sp, #0x8
  39be00: 4618         	mov	r0, r3
  39be02: f019 f587    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419b0e
  39be06: f3ec f951    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ec2a2
  39be0a: 4618         	mov	r0, r3
  39be0c: b006         	add	sp, #0x18
  39be0e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x39be0f); words below are literal-pool data ---
  39be10: 6174         	str	r4, [r6, #0x14]
  39be12: 0043         	lsls	r3, r0, #0x1

// ==== PlayerLobby::endSearch
//      file offset 0x39be14 (= ELF address; Ghidra 0x3abe14), 46 bytes, Thumb-2
  39be14: b500         	push	{lr}
  39be16: b085         	sub	sp, #0x14
  39be18: 9001         	str	r0, [sp, #0x4]
  39be1a: 9b01         	ldr	r3, [sp, #0x4]
  39be1c: 681b         	ldr	r3, [r3]
  39be1e: f503 73ee    	add.w	r3, r3, #0x1dc
  39be22: 681b         	ldr	r3, [r3]
  39be24: 9801         	ldr	r0, [sp, #0x4]
  39be26: 4798         	blx	r3
  39be28: 4603         	mov	r3, r0
  39be2a: 9303         	str	r3, [sp, #0xc]
  39be2c: 9b03         	ldr	r3, [sp, #0xc]
  39be2e: 2201         	movs	r2, #0x1
  39be30: f8c3 2118    	str.w	r2, [r3, #0x118]
  39be34: 9b01         	ldr	r3, [sp, #0x4]
  39be36: 2200         	movs	r2, #0x0
  39be38: f883 214d    	strb.w	r2, [r3, #0x14d]
  39be3c: b005         	add	sp, #0x14
  39be3e: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobby::searchBegan
//      file offset 0x39be44 (= ELF address; Ghidra 0x3abe44), 38 bytes, Thumb-2
  39be44: b500         	push	{lr}
  39be46: b085         	sub	sp, #0x14
  39be48: 9001         	str	r0, [sp, #0x4]
  39be4a: 9b01         	ldr	r3, [sp, #0x4]
  39be4c: 681b         	ldr	r3, [r3]
  39be4e: f503 73ee    	add.w	r3, r3, #0x1dc
  39be52: 681b         	ldr	r3, [r3]
  39be54: 9801         	ldr	r0, [sp, #0x4]
  39be56: 4798         	blx	r3
  39be58: 4603         	mov	r3, r0
  39be5a: 9303         	str	r3, [sp, #0xc]
  39be5c: 9b03         	ldr	r3, [sp, #0xc]
  39be5e: 2202         	movs	r2, #0x2
  39be60: f8c3 2118    	str.w	r2, [r3, #0x118]
  39be64: b005         	add	sp, #0x14
  39be66: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobby::beginSearch
//      file offset 0x39be6c (= ELF address; Ghidra 0x3abe6c), 248 bytes, Thumb-2
  39be6c: b510         	push	{r4, lr}
  39be6e: b084         	sub	sp, #0x10
  39be70: 9001         	str	r0, [sp, #0x4]
  39be72: 4c39         	ldr	r4, [pc, #0xe4]         @ 0x39bf58 <PlayerLobby::beginSearch()+0xec>
  39be74: 447c         	add	r4, pc
  39be76: f7db fe63    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2433a
  39be7a: 4602         	mov	r2, r0
  39be7c: 4b37         	ldr	r3, [pc, #0xdc]         @ 0x39bf5c <PlayerLobby::beginSearch()+0xf0>
  39be7e: 58e3         	ldr	r3, [r4, r3]
  39be80: 681b         	ldr	r3, [r3]
  39be82: 4610         	mov	r0, r2
  39be84: 2100         	movs	r1, #0x0
  39be86: 461a         	mov	r2, r3
  39be88: f7de f8f2    	bl	0x37a070 <NetworkManager::addPlayersToMatch(bool, int)> @ imm = #-0x21e1c
  39be8c: 9b01         	ldr	r3, [sp, #0x4]
  39be8e: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  39be92: 681b         	ldr	r3, [r3]
  39be94: 3390         	adds	r3, #0x90
  39be96: 681b         	ldr	r3, [r3]
  39be98: 9a01         	ldr	r2, [sp, #0x4]
  39be9a: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  39be9e: 4610         	mov	r0, r2
  39bea0: 2100         	movs	r1, #0x0
  39bea2: 4798         	blx	r3
  39bea4: 9b01         	ldr	r3, [sp, #0x4]
  39bea6: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  39beaa: 681b         	ldr	r3, [r3]
  39beac: 3390         	adds	r3, #0x90
  39beae: 681b         	ldr	r3, [r3]
  39beb0: 9a01         	ldr	r2, [sp, #0x4]
  39beb2: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  39beb6: 4610         	mov	r0, r2
  39beb8: 2100         	movs	r1, #0x0
  39beba: 4798         	blx	r3
  39bebc: 9b01         	ldr	r3, [sp, #0x4]
  39bebe: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  39bec2: 681b         	ldr	r3, [r3]
  39bec4: 3390         	adds	r3, #0x90
  39bec6: 681b         	ldr	r3, [r3]
  39bec8: 9a01         	ldr	r2, [sp, #0x4]
  39beca: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  39bece: 4610         	mov	r0, r2
  39bed0: 2100         	movs	r1, #0x0
  39bed2: 4798         	blx	r3
  39bed4: 9b01         	ldr	r3, [sp, #0x4]
  39bed6: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  39beda: 681b         	ldr	r3, [r3]
  39bedc: 3390         	adds	r3, #0x90
  39bede: 681b         	ldr	r3, [r3]
  39bee0: 9a01         	ldr	r2, [sp, #0x4]
  39bee2: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  39bee6: 4610         	mov	r0, r2
  39bee8: 2100         	movs	r1, #0x0
  39beea: 4798         	blx	r3
  39beec: 9b01         	ldr	r3, [sp, #0x4]
  39beee: 681b         	ldr	r3, [r3]
  39bef0: f503 73ee    	add.w	r3, r3, #0x1dc
  39bef4: 681b         	ldr	r3, [r3]
  39bef6: 9801         	ldr	r0, [sp, #0x4]
  39bef8: 4798         	blx	r3
  39befa: 4603         	mov	r3, r0
  39befc: 9303         	str	r3, [sp, #0xc]
  39befe: 9b03         	ldr	r3, [sp, #0xc]
  39bf00: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39bf04: 2b03         	cmp	r3, #0x3
  39bf06: d10d         	bne	0x39bf24 <PlayerLobby::beginSearch()+0xb8> @ imm = #0x1a
  39bf08: 4b15         	ldr	r3, [pc, #0x54]         @ 0x39bf60 <PlayerLobby::beginSearch()+0xf4>
  39bf0a: 58e3         	ldr	r3, [r4, r3]
  39bf0c: 681b         	ldr	r3, [r3]
  39bf0e: 4618         	mov	r0, r3
  39bf10: 210d         	movs	r1, #0xd
  39bf12: f05b ff55    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x5beaa
  39bf16: 9b01         	ldr	r3, [sp, #0x4]
  39bf18: 681b         	ldr	r3, [r3]
  39bf1a: f503 73de    	add.w	r3, r3, #0x1bc
  39bf1e: 681b         	ldr	r3, [r3]
  39bf20: 9801         	ldr	r0, [sp, #0x4]
  39bf22: 4798         	blx	r3
  39bf24: 9b01         	ldr	r3, [sp, #0x4]
  39bf26: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  39bf2a: 681b         	ldr	r3, [r3]
  39bf2c: 3390         	adds	r3, #0x90
  39bf2e: 681b         	ldr	r3, [r3]
  39bf30: 9a01         	ldr	r2, [sp, #0x4]
  39bf32: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  39bf36: 4610         	mov	r0, r2
  39bf38: 2101         	movs	r1, #0x1
  39bf3a: 4798         	blx	r3
  39bf3c: 9b01         	ldr	r3, [sp, #0x4]
  39bf3e: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  39bf42: 681b         	ldr	r3, [r3]
  39bf44: 3390         	adds	r3, #0x90
  39bf46: 681b         	ldr	r3, [r3]
  39bf48: 9a01         	ldr	r2, [sp, #0x4]
  39bf4a: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  39bf4e: 4610         	mov	r0, r2
  39bf50: 2101         	movs	r1, #0x1
  39bf52: 4798         	blx	r3
  39bf54: b004         	add	sp, #0x10
  39bf56: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x39bf57); words below are literal-pool data ---
  39bf58: 6b94         	ldr	r4, [r2, #0x38]
  39bf5a: 0059         	lsls	r1, r3, #0x1
  39bf5c: d838         	bhi	0x39bfd0 <PlayerLobby::updateCountDown(float)+0x6c> @ imm = #0x70
  39bf5e: ffff d730    	vqshl.u32	d29, d16, #0x1f
  39bf62: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== PlayerLobby::updateCountDown
//      file offset 0x39bf64 (= ELF address; Ghidra 0x3abf64), 604 bytes, Thumb-2
  39bf64: b530         	push	{r4, r5, lr}
  39bf66: b087         	sub	sp, #0x1c
  39bf68: 9001         	str	r0, [sp, #0x4]
  39bf6a: 9100         	str	r1, [sp]
  39bf6c: 9b01         	ldr	r3, [sp, #0x4]
  39bf6e: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  39bf72: 4618         	mov	r0, r3
  39bf74: f1f7 fe7a    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1f7cf4
  39bf78: 4603         	mov	r3, r0
  39bf7a: 2b01         	cmp	r3, #0x1
  39bf7c: bf94         	ite	ls
  39bf7e: 2300         	movls	r3, #0x0
  39bf80: 2301         	movhi	r3, #0x1
  39bf82: b2da         	uxtb	r2, r3
  39bf84: 9b01         	ldr	r3, [sp, #0x4]
  39bf86: f883 214c    	strb.w	r2, [r3, #0x14c]
  39bf8a: 2300         	movs	r3, #0x0
  39bf8c: 9303         	str	r3, [sp, #0xc]
  39bf8e: 2300         	movs	r3, #0x0
  39bf90: 9304         	str	r3, [sp, #0x10]
  39bf92: 9b01         	ldr	r3, [sp, #0x4]
  39bf94: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  39bf98: 2b00         	cmp	r3, #0x0
  39bf9a: d00a         	beq	0x39bfb2 <PlayerLobby::updateCountDown(float)+0x4e> @ imm = #0x14
  39bf9c: 9b01         	ldr	r3, [sp, #0x4]
  39bf9e: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  39bfa2: 4618         	mov	r0, r3
  39bfa4: f1f7 fe62    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1f7cc4
  39bfa8: 4603         	mov	r3, r0
  39bfaa: 2b00         	cmp	r3, #0x0
  39bfac: d001         	beq	0x39bfb2 <PlayerLobby::updateCountDown(float)+0x4e> @ imm = #0x2
  39bfae: 2301         	movs	r3, #0x1
  39bfb0: e000         	b	0x39bfb4 <PlayerLobby::updateCountDown(float)+0x50> @ imm = #0x0
  39bfb2: 2300         	movs	r3, #0x0
  39bfb4: 2b00         	cmp	r3, #0x0
  39bfb6: d037         	beq	0x39c028 <PlayerLobby::updateCountDown(float)+0xc4> @ imm = #0x6e
  39bfb8: 9b01         	ldr	r3, [sp, #0x4]
  39bfba: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  39bfbe: 695b         	ldr	r3, [r3, #0x14]
  39bfc0: 9303         	str	r3, [sp, #0xc]
  39bfc2: 9b01         	ldr	r3, [sp, #0x4]
  39bfc4: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  39bfc8: 695b         	ldr	r3, [r3, #0x14]
  39bfca: 2b00         	cmp	r3, #0x0
  39bfcc: d006         	beq	0x39bfdc <PlayerLobby::updateCountDown(float)+0x78> @ imm = #0xc
  39bfce: 9b01         	ldr	r3, [sp, #0x4]
  39bfd0: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  39bfd4: 695b         	ldr	r3, [r3, #0x14]
  39bfd6: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  39bfda: e000         	b	0x39bfde <PlayerLobby::updateCountDown(float)+0x7a> @ imm = #0x0
  39bfdc: 2300         	movs	r3, #0x0
  39bfde: 9304         	str	r3, [sp, #0x10]
  39bfe0: e01f         	b	0x39c022 <PlayerLobby::updateCountDown(float)+0xbe> @ imm = #0x3e
  39bfe2: 9803         	ldr	r0, [sp, #0xc]
  39bfe4: f762 fb26    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x9d9b4
  39bfe8: 4603         	mov	r3, r0
  39bfea: 9305         	str	r3, [sp, #0x14]
  39bfec: 9b01         	ldr	r3, [sp, #0x4]
  39bfee: f893 314c    	ldrb.w	r3, [r3, #0x14c]
  39bff2: 2b00         	cmp	r3, #0x0
  39bff4: d006         	beq	0x39c004 <PlayerLobby::updateCountDown(float)+0xa0> @ imm = #0xc
  39bff6: 9b05         	ldr	r3, [sp, #0x14]
  39bff8: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39bffc: 2b03         	cmp	r3, #0x3
  39bffe: d101         	bne	0x39c004 <PlayerLobby::updateCountDown(float)+0xa0> @ imm = #0x2
  39c000: 2301         	movs	r3, #0x1
  39c002: e000         	b	0x39c006 <PlayerLobby::updateCountDown(float)+0xa2> @ imm = #0x0
  39c004: 2300         	movs	r3, #0x0
  39c006: 9a01         	ldr	r2, [sp, #0x4]
  39c008: f882 314c    	strb.w	r3, [r2, #0x14c]
  39c00c: 9b04         	ldr	r3, [sp, #0x10]
  39c00e: 9303         	str	r3, [sp, #0xc]
  39c010: 9b04         	ldr	r3, [sp, #0x10]
  39c012: 2b00         	cmp	r3, #0x0
  39c014: d003         	beq	0x39c01e <PlayerLobby::updateCountDown(float)+0xba> @ imm = #0x6
  39c016: 9b04         	ldr	r3, [sp, #0x10]
  39c018: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  39c01c: e000         	b	0x39c020 <PlayerLobby::updateCountDown(float)+0xbc> @ imm = #0x0
  39c01e: 2300         	movs	r3, #0x0
  39c020: 9304         	str	r3, [sp, #0x10]
  39c022: 9b03         	ldr	r3, [sp, #0xc]
  39c024: 2b00         	cmp	r3, #0x0
  39c026: d1dc         	bne	0x39bfe2 <PlayerLobby::updateCountDown(float)+0x7e> @ imm = #-0x48
  39c028: 9b01         	ldr	r3, [sp, #0x4]
  39c02a: f893 314c    	ldrb.w	r3, [r3, #0x14c]
  39c02e: 2b00         	cmp	r3, #0x0
  39c030: f000 80b8    	beq.w	0x39c1a4 <PlayerLobby::updateCountDown(float)+0x240> @ imm = #0x170
  39c034: 9b01         	ldr	r3, [sp, #0x4]
  39c036: ed93 7a52    	vldr	s14, [r3, #328]
  39c03a: eddd 7a00    	vldr	s15, [sp]
  39c03e: ee77 7a67    	vsub.f32	s15, s14, s15
  39c042: eef5 7ac0    	vcmpe.f32	s15, #0
  39c046: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  39c04a: dd07         	ble	0x39c05c <PlayerLobby::updateCountDown(float)+0xf8> @ imm = #0xe
  39c04c: 9b01         	ldr	r3, [sp, #0x4]
  39c04e: ed93 7a52    	vldr	s14, [r3, #328]
  39c052: eddd 7a00    	vldr	s15, [sp]
  39c056: ee77 7a67    	vsub.f32	s15, s14, s15
  39c05a: e001         	b	0x39c060 <PlayerLobby::updateCountDown(float)+0xfc> @ imm = #0x2
  39c05c: eddf 7a56    	vldr	s15, [pc, #344]         @ 0x39c1b8 <PlayerLobby::updateCountDown(float)+0x254>
  39c060: 9b01         	ldr	r3, [sp, #0x4]
  39c062: edc3 7a52    	vstr	s15, [r3, #328]
  39c066: 9b01         	ldr	r3, [sp, #0x4]
  39c068: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  39c06c: 681b         	ldr	r3, [r3]
  39c06e: f503 730f    	add.w	r3, r3, #0x23c
  39c072: 681c         	ldr	r4, [r3]
  39c074: 9b01         	ldr	r3, [sp, #0x4]
  39c076: f8d3 5128    	ldr.w	r5, [r3, #0x128]
  39c07a: 9b01         	ldr	r3, [sp, #0x4]
  39c07c: edd3 7a52    	vldr	s15, [r3, #328]
  39c080: eefd 7ae7    	vcvt.s32.f32	s15, s15
  39c084: ee17 2a90    	vmov	r2, s15
  39c088: 4b4c         	ldr	r3, [pc, #0x130]        @ 0x39c1bc <PlayerLobby::updateCountDown(float)+0x258>
  39c08a: 447b         	add	r3, pc
  39c08c: 4618         	mov	r0, r3
  39c08e: 4611         	mov	r1, r2
  39c090: f1fd fd3e    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1fda7c
  39c094: 4603         	mov	r3, r0
  39c096: 4618         	mov	r0, r3
  39c098: f1fd fc46    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1fd88c
  39c09c: 4603         	mov	r3, r0
  39c09e: 4628         	mov	r0, r5
  39c0a0: 4619         	mov	r1, r3
  39c0a2: 47a0         	blx	r4
  39c0a4: 9b01         	ldr	r3, [sp, #0x4]
  39c0a6: ed93 7a52    	vldr	s14, [r3, #328]
  39c0aa: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  39c0ae: eeb4 7ae7    	vcmpe.f32	s14, s15
  39c0b2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  39c0b6: d565         	bpl	0x39c184 <PlayerLobby::updateCountDown(float)+0x220> @ imm = #0xca
  39c0b8: 9b01         	ldr	r3, [sp, #0x4]
  39c0ba: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  39c0be: 681b         	ldr	r3, [r3]
  39c0c0: f503 73de    	add.w	r3, r3, #0x1bc
  39c0c4: 681c         	ldr	r4, [r3]
  39c0c6: 9b01         	ldr	r3, [sp, #0x4]
  39c0c8: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  39c0cc: 461d         	mov	r5, r3
  39c0ce: 20ff         	movs	r0, #0xff
  39c0d0: 2100         	movs	r1, #0x0
  39c0d2: 2200         	movs	r2, #0x0
  39c0d4: f7fa ff92    	bl	0x396ffc <BodyShape::~BodyShape()+0x128> @ imm = #-0x50dc
  39c0d8: 4603         	mov	r3, r0
  39c0da: 461a         	mov	r2, r3
  39c0dc: f88d 2008    	strb.w	r2, [sp, #0x8]
  39c0e0: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  39c0e4: f88d 2009    	strb.w	r2, [sp, #0x9]
  39c0e8: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  39c0ec: f88d 300a    	strb.w	r3, [sp, #0xa]
  39c0f0: ab02         	add	r3, sp, #0x8
  39c0f2: 4628         	mov	r0, r5
  39c0f4: 4619         	mov	r1, r3
  39c0f6: 47a0         	blx	r4
  39c0f8: 9b01         	ldr	r3, [sp, #0x4]
  39c0fa: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  39c0fe: 681b         	ldr	r3, [r3]
  39c100: 3390         	adds	r3, #0x90
  39c102: 681b         	ldr	r3, [r3]
  39c104: 9a01         	ldr	r2, [sp, #0x4]
  39c106: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  39c10a: 4610         	mov	r0, r2
  39c10c: 2100         	movs	r1, #0x0
  39c10e: 4798         	blx	r3
  39c110: 9b01         	ldr	r3, [sp, #0x4]
  39c112: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  39c116: 681b         	ldr	r3, [r3]
  39c118: 3390         	adds	r3, #0x90
  39c11a: 681b         	ldr	r3, [r3]
  39c11c: 9a01         	ldr	r2, [sp, #0x4]
  39c11e: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  39c122: 4610         	mov	r0, r2
  39c124: 2100         	movs	r1, #0x0
  39c126: 4798         	blx	r3
  39c128: 9b01         	ldr	r3, [sp, #0x4]
  39c12a: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  39c12e: 681b         	ldr	r3, [r3]
  39c130: 3390         	adds	r3, #0x90
  39c132: 681b         	ldr	r3, [r3]
  39c134: 9a01         	ldr	r2, [sp, #0x4]
  39c136: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  39c13a: 4610         	mov	r0, r2
  39c13c: 2100         	movs	r1, #0x0
  39c13e: 4798         	blx	r3
  39c140: 9b01         	ldr	r3, [sp, #0x4]
  39c142: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  39c146: 681b         	ldr	r3, [r3]
  39c148: 3390         	adds	r3, #0x90
  39c14a: 681b         	ldr	r3, [r3]
  39c14c: 9a01         	ldr	r2, [sp, #0x4]
  39c14e: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  39c152: 4610         	mov	r0, r2
  39c154: 2100         	movs	r1, #0x0
  39c156: 4798         	blx	r3
  39c158: 9b01         	ldr	r3, [sp, #0x4]
  39c15a: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  39c15e: 681b         	ldr	r3, [r3]
  39c160: 3394         	adds	r3, #0x94
  39c162: 681b         	ldr	r3, [r3]
  39c164: 9a01         	ldr	r2, [sp, #0x4]
  39c166: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  39c16a: 4610         	mov	r0, r2
  39c16c: 4798         	blx	r3
  39c16e: 4603         	mov	r3, r0
  39c170: 2b00         	cmp	r3, #0x0
  39c172: d007         	beq	0x39c184 <PlayerLobby::updateCountDown(float)+0x220> @ imm = #0xe
  39c174: 9b01         	ldr	r3, [sp, #0x4]
  39c176: 681b         	ldr	r3, [r3]
  39c178: f503 73f4    	add.w	r3, r3, #0x1e8
  39c17c: 681b         	ldr	r3, [r3]
  39c17e: 9801         	ldr	r0, [sp, #0x4]
  39c180: 2100         	movs	r1, #0x0
  39c182: 4798         	blx	r3
  39c184: 9b01         	ldr	r3, [sp, #0x4]
  39c186: edd3 7a52    	vldr	s15, [r3, #328]
  39c18a: eef5 7a40    	vcmp.f32	s15, #0
  39c18e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  39c192: d10e         	bne	0x39c1b2 <PlayerLobby::updateCountDown(float)+0x24e> @ imm = #0x1c
  39c194: 9b01         	ldr	r3, [sp, #0x4]
  39c196: 681b         	ldr	r3, [r3]
  39c198: f503 73dc    	add.w	r3, r3, #0x1b8
  39c19c: 681b         	ldr	r3, [r3]
  39c19e: 9801         	ldr	r0, [sp, #0x4]
  39c1a0: 4798         	blx	r3
  39c1a2: e006         	b	0x39c1b2 <PlayerLobby::updateCountDown(float)+0x24e> @ imm = #0xc
  39c1a4: 9b01         	ldr	r3, [sp, #0x4]
  39c1a6: f04f 0200    	mov.w	r2, #0x0
  39c1aa: f2c4 1220    	movt	r2, #0x4120
  39c1ae: f8c3 2148    	str.w	r2, [r3, #0x148]
  39c1b2: b007         	add	sp, #0x1c
  39c1b4: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x39c1b5); words below are literal-pool data ---
  39c1b6: bf00         	nop
  39c1b8: 0000         	movs	r0, r0
  39c1ba: 0000         	movs	r0, r0
  39c1bc: 607a         	str	r2, [r7, #0x4]
  39c1be: 0043         	lsls	r3, r0, #0x1

// ==== PlayerLobby::updateButtonVisibility
//      file offset 0x39c1c0 (= ELF address; Ghidra 0x3ac1c0), 340 bytes, Thumb-2
  39c1c0: b500         	push	{lr}
  39c1c2: b083         	sub	sp, #0xc
  39c1c4: 9001         	str	r0, [sp, #0x4]
  39c1c6: f7db fcbb    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2468a
  39c1ca: 4603         	mov	r3, r0
  39c1cc: 4618         	mov	r0, r3
  39c1ce: f7dd ff79    	bl	0x37a0c4 <NetworkManager::isSearching()> @ imm = #-0x2210e
  39c1d2: 4603         	mov	r3, r0
  39c1d4: f083 0301    	eor	r3, r3, #0x1
  39c1d8: b2db         	uxtb	r3, r3
  39c1da: 2b00         	cmp	r3, #0x0
  39c1dc: d00a         	beq	0x39c1f4 <PlayerLobby::updateButtonVisibility()+0x34> @ imm = #0x14
  39c1de: 9b01         	ldr	r3, [sp, #0x4]
  39c1e0: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  39c1e4: 4618         	mov	r0, r3
  39c1e6: f1f7 fd41    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1f7a82
  39c1ea: 4603         	mov	r3, r0
  39c1ec: 2b01         	cmp	r3, #0x1
  39c1ee: d901         	bls	0x39c1f4 <PlayerLobby::updateButtonVisibility()+0x34> @ imm = #0x2
  39c1f0: 2301         	movs	r3, #0x1
  39c1f2: e000         	b	0x39c1f6 <PlayerLobby::updateButtonVisibility()+0x36> @ imm = #0x0
  39c1f4: 2300         	movs	r3, #0x0
  39c1f6: 2b00         	cmp	r3, #0x0
  39c1f8: d041         	beq	0x39c27e <PlayerLobby::updateButtonVisibility()+0xbe> @ imm = #0x82
  39c1fa: 9b01         	ldr	r3, [sp, #0x4]
  39c1fc: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  39c200: 681b         	ldr	r3, [r3]
  39c202: 3390         	adds	r3, #0x90
  39c204: 681b         	ldr	r3, [r3]
  39c206: 9a01         	ldr	r2, [sp, #0x4]
  39c208: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  39c20c: 4610         	mov	r0, r2
  39c20e: 2101         	movs	r1, #0x1
  39c210: 4798         	blx	r3
  39c212: 9b01         	ldr	r3, [sp, #0x4]
  39c214: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  39c218: 681b         	ldr	r3, [r3]
  39c21a: 3390         	adds	r3, #0x90
  39c21c: 681b         	ldr	r3, [r3]
  39c21e: 9a01         	ldr	r2, [sp, #0x4]
  39c220: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  39c224: 4610         	mov	r0, r2
  39c226: 2101         	movs	r1, #0x1
  39c228: 4798         	blx	r3
  39c22a: 9b01         	ldr	r3, [sp, #0x4]
  39c22c: 681b         	ldr	r3, [r3]
  39c22e: f503 73ee    	add.w	r3, r3, #0x1dc
  39c232: 681b         	ldr	r3, [r3]
  39c234: 9801         	ldr	r0, [sp, #0x4]
  39c236: 4798         	blx	r3
  39c238: 4603         	mov	r3, r0
  39c23a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39c23e: 2b03         	cmp	r3, #0x3
  39c240: bf0c         	ite	eq
  39c242: 2300         	moveq	r3, #0x0
  39c244: 2301         	movne	r3, #0x1
  39c246: b2db         	uxtb	r3, r3
  39c248: 2b00         	cmp	r3, #0x0
  39c24a: d060         	beq	0x39c30e <PlayerLobby::updateButtonVisibility()+0x14e> @ imm = #0xc0
  39c24c: 9b01         	ldr	r3, [sp, #0x4]
  39c24e: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  39c252: 681b         	ldr	r3, [r3]
  39c254: 3390         	adds	r3, #0x90
  39c256: 681b         	ldr	r3, [r3]
  39c258: 9a01         	ldr	r2, [sp, #0x4]
  39c25a: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  39c25e: 4610         	mov	r0, r2
  39c260: 2101         	movs	r1, #0x1
  39c262: 4798         	blx	r3
  39c264: 9b01         	ldr	r3, [sp, #0x4]
  39c266: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  39c26a: 681b         	ldr	r3, [r3]
  39c26c: 3390         	adds	r3, #0x90
  39c26e: 681b         	ldr	r3, [r3]
  39c270: 9a01         	ldr	r2, [sp, #0x4]
  39c272: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  39c276: 4610         	mov	r0, r2
  39c278: 2101         	movs	r1, #0x1
  39c27a: 4798         	blx	r3
  39c27c: e047         	b	0x39c30e <PlayerLobby::updateButtonVisibility()+0x14e> @ imm = #0x8e
  39c27e: 9b01         	ldr	r3, [sp, #0x4]
  39c280: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  39c284: 681b         	ldr	r3, [r3]
  39c286: 3390         	adds	r3, #0x90
  39c288: 681b         	ldr	r3, [r3]
  39c28a: 9a01         	ldr	r2, [sp, #0x4]
  39c28c: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  39c290: 4610         	mov	r0, r2
  39c292: 2100         	movs	r1, #0x0
  39c294: 4798         	blx	r3
  39c296: 9b01         	ldr	r3, [sp, #0x4]
  39c298: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  39c29c: 681b         	ldr	r3, [r3]
  39c29e: 3390         	adds	r3, #0x90
  39c2a0: 681b         	ldr	r3, [r3]
  39c2a2: 9a01         	ldr	r2, [sp, #0x4]
  39c2a4: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  39c2a8: 4610         	mov	r0, r2
  39c2aa: 2100         	movs	r1, #0x0
  39c2ac: 4798         	blx	r3
  39c2ae: 9b01         	ldr	r3, [sp, #0x4]
  39c2b0: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  39c2b4: 681b         	ldr	r3, [r3]
  39c2b6: 3390         	adds	r3, #0x90
  39c2b8: 681b         	ldr	r3, [r3]
  39c2ba: 9a01         	ldr	r2, [sp, #0x4]
  39c2bc: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  39c2c0: 4610         	mov	r0, r2
  39c2c2: 2100         	movs	r1, #0x0
  39c2c4: 4798         	blx	r3
  39c2c6: 9b01         	ldr	r3, [sp, #0x4]
  39c2c8: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  39c2cc: 681b         	ldr	r3, [r3]
  39c2ce: 3390         	adds	r3, #0x90
  39c2d0: 681b         	ldr	r3, [r3]
  39c2d2: 9a01         	ldr	r2, [sp, #0x4]
  39c2d4: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  39c2d8: 4610         	mov	r0, r2
  39c2da: 2100         	movs	r1, #0x0
  39c2dc: 4798         	blx	r3
  39c2de: 9b01         	ldr	r3, [sp, #0x4]
  39c2e0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  39c2e4: 681b         	ldr	r3, [r3]
  39c2e6: 3390         	adds	r3, #0x90
  39c2e8: 681b         	ldr	r3, [r3]
  39c2ea: 9a01         	ldr	r2, [sp, #0x4]
  39c2ec: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  39c2f0: 4610         	mov	r0, r2
  39c2f2: 2101         	movs	r1, #0x1
  39c2f4: 4798         	blx	r3
  39c2f6: 9b01         	ldr	r3, [sp, #0x4]
  39c2f8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  39c2fc: 681b         	ldr	r3, [r3]
  39c2fe: 3390         	adds	r3, #0x90
  39c300: 681b         	ldr	r3, [r3]
  39c302: 9a01         	ldr	r2, [sp, #0x4]
  39c304: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  39c308: 4610         	mov	r0, r2
  39c30a: 2101         	movs	r1, #0x1
  39c30c: 4798         	blx	r3
  39c30e: b003         	add	sp, #0xc
  39c310: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobby::updateNetworkStep
//      file offset 0x39c314 (= ELF address; Ghidra 0x3ac314), 28 bytes, Thumb-2
  39c314: b500         	push	{lr}
  39c316: b083         	sub	sp, #0xc
  39c318: 9001         	str	r0, [sp, #0x4]
  39c31a: 9100         	str	r1, [sp]
  39c31c: f7db fc10    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x247e0
  39c320: 4603         	mov	r3, r0
  39c322: 4618         	mov	r0, r3
  39c324: 9900         	ldr	r1, [sp]
  39c326: f7dd fb71    	bl	0x379a0c <NetworkManager::updateNetworkObjects(float)> @ imm = #-0x2291e
  39c32a: b003         	add	sp, #0xc
  39c32c: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobby::viewUpdateStep
//      file offset 0x39c330 (= ELF address; Ghidra 0x3ac330), 928 bytes, Thumb-2
  39c330: b5f0         	push	{r4, r5, r6, r7, lr}
  39c332: b089         	sub	sp, #0x24
  39c334: 9001         	str	r0, [sp, #0x4]
  39c336: 9100         	str	r1, [sp]
  39c338: 4cdb         	ldr	r4, [pc, #0x36c]        @ 0x39c6a8 <PlayerLobby::viewUpdateStep(float)+0x378>
  39c33a: 447c         	add	r4, pc
  39c33c: 9b01         	ldr	r3, [sp, #0x4]
  39c33e: 681b         	ldr	r3, [r3]
  39c340: f503 73e6    	add.w	r3, r3, #0x1cc
  39c344: 681b         	ldr	r3, [r3]
  39c346: 9801         	ldr	r0, [sp, #0x4]
  39c348: 4798         	blx	r3
  39c34a: 9b01         	ldr	r3, [sp, #0x4]
  39c34c: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  39c350: 681b         	ldr	r3, [r3]
  39c352: f503 73de    	add.w	r3, r3, #0x1bc
  39c356: 681d         	ldr	r5, [r3]
  39c358: 9b01         	ldr	r3, [sp, #0x4]
  39c35a: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  39c35e: 461e         	mov	r6, r3
  39c360: 20ff         	movs	r0, #0xff
  39c362: 21ff         	movs	r1, #0xff
  39c364: 22ff         	movs	r2, #0xff
  39c366: f7fa fe49    	bl	0x396ffc <BodyShape::~BodyShape()+0x128> @ imm = #-0x536e
  39c36a: 4603         	mov	r3, r0
  39c36c: 461a         	mov	r2, r3
  39c36e: f88d 2018    	strb.w	r2, [sp, #0x18]
  39c372: f3c3 2207    	ubfx	r2, r3, #0x8, #0x8
  39c376: f88d 2019    	strb.w	r2, [sp, #0x19]
  39c37a: f3c3 4307    	ubfx	r3, r3, #0x10, #0x8
  39c37e: f88d 301a    	strb.w	r3, [sp, #0x1a]
  39c382: ab06         	add	r3, sp, #0x18
  39c384: 4630         	mov	r0, r6
  39c386: 4619         	mov	r1, r3
  39c388: 47a8         	blx	r5
  39c38a: 9b01         	ldr	r3, [sp, #0x4]
  39c38c: 681b         	ldr	r3, [r3]
  39c38e: f503 73e8    	add.w	r3, r3, #0x1d0
  39c392: 681b         	ldr	r3, [r3]
  39c394: 9801         	ldr	r0, [sp, #0x4]
  39c396: 9900         	ldr	r1, [sp]
  39c398: 4798         	blx	r3
  39c39a: 9b01         	ldr	r3, [sp, #0x4]
  39c39c: ed93 7a59    	vldr	s14, [r3, #356]
  39c3a0: eddd 7a00    	vldr	s15, [sp]
  39c3a4: ee77 7a27    	vadd.f32	s15, s14, s15
  39c3a8: 9b01         	ldr	r3, [sp, #0x4]
  39c3aa: edc3 7a59    	vstr	s15, [r3, #356]
  39c3ae: f7db fbc7    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x24872
  39c3b2: 4603         	mov	r3, r0
  39c3b4: 4618         	mov	r0, r3
  39c3b6: f7dd fe85    	bl	0x37a0c4 <NetworkManager::isSearching()> @ imm = #-0x222f6
  39c3ba: 4603         	mov	r3, r0
  39c3bc: 2b00         	cmp	r3, #0x0
  39c3be: f000 80c2    	beq.w	0x39c546 <PlayerLobby::viewUpdateStep(float)+0x216> @ imm = #0x184
  39c3c2: 9b01         	ldr	r3, [sp, #0x4]
  39c3c4: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  39c3c8: 681b         	ldr	r3, [r3]
  39c3ca: f503 730f    	add.w	r3, r3, #0x23c
  39c3ce: 681b         	ldr	r3, [r3]
  39c3d0: 9a01         	ldr	r2, [sp, #0x4]
  39c3d2: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  39c3d6: 4610         	mov	r0, r2
  39c3d8: 4ab4         	ldr	r2, [pc, #0x2d0]        @ 0x39c6ac <PlayerLobby::viewUpdateStep(float)+0x37c>
  39c3da: 447a         	add	r2, pc
  39c3dc: 4611         	mov	r1, r2
  39c3de: 4798         	blx	r3
  39c3e0: 9b01         	ldr	r3, [sp, #0x4]
  39c3e2: ed93 7a59    	vldr	s14, [r3, #356]
  39c3e6: eef5 7a00    	vmov.f32	s15, #2.500000e-01
  39c3ea: eeb4 7ae7    	vcmpe.f32	s14, s15
  39c3ee: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  39c3f2: d50f         	bpl	0x39c414 <PlayerLobby::viewUpdateStep(float)+0xe4> @ imm = #0x1e
  39c3f4: 9b01         	ldr	r3, [sp, #0x4]
  39c3f6: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  39c3fa: 681b         	ldr	r3, [r3]
  39c3fc: f503 730f    	add.w	r3, r3, #0x23c
  39c400: 681b         	ldr	r3, [r3]
  39c402: 9a01         	ldr	r2, [sp, #0x4]
  39c404: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  39c408: 4610         	mov	r0, r2
  39c40a: 4aa9         	ldr	r2, [pc, #0x2a4]        @ 0x39c6b0 <PlayerLobby::viewUpdateStep(float)+0x380>
  39c40c: 447a         	add	r2, pc
  39c40e: 4611         	mov	r1, r2
  39c410: 4798         	blx	r3
  39c412: e066         	b	0x39c4e2 <PlayerLobby::viewUpdateStep(float)+0x1b2> @ imm = #0xcc
  39c414: 9b01         	ldr	r3, [sp, #0x4]
  39c416: ed93 7a59    	vldr	s14, [r3, #356]
  39c41a: eef6 7a00    	vmov.f32	s15, #5.000000e-01
  39c41e: eeb4 7ae7    	vcmpe.f32	s14, s15
  39c422: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  39c426: d519         	bpl	0x39c45c <PlayerLobby::viewUpdateStep(float)+0x12c> @ imm = #0x32
  39c428: 9b01         	ldr	r3, [sp, #0x4]
  39c42a: ed93 7a59    	vldr	s14, [r3, #356]
  39c42e: eef5 7a00    	vmov.f32	s15, #2.500000e-01
  39c432: eeb4 7ae7    	vcmpe.f32	s14, s15
  39c436: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  39c43a: dd0f         	ble	0x39c45c <PlayerLobby::viewUpdateStep(float)+0x12c> @ imm = #0x1e
  39c43c: 9b01         	ldr	r3, [sp, #0x4]
  39c43e: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  39c442: 681b         	ldr	r3, [r3]
  39c444: f503 730f    	add.w	r3, r3, #0x23c
  39c448: 681b         	ldr	r3, [r3]
  39c44a: 9a01         	ldr	r2, [sp, #0x4]
  39c44c: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  39c450: 4610         	mov	r0, r2
  39c452: 4a98         	ldr	r2, [pc, #0x260]        @ 0x39c6b4 <PlayerLobby::viewUpdateStep(float)+0x384>
  39c454: 447a         	add	r2, pc
  39c456: 4611         	mov	r1, r2
  39c458: 4798         	blx	r3
  39c45a: e042         	b	0x39c4e2 <PlayerLobby::viewUpdateStep(float)+0x1b2> @ imm = #0x84
  39c45c: 9b01         	ldr	r3, [sp, #0x4]
  39c45e: ed93 7a59    	vldr	s14, [r3, #356]
  39c462: eef6 7a08    	vmov.f32	s15, #7.500000e-01
  39c466: eeb4 7ae7    	vcmpe.f32	s14, s15
  39c46a: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  39c46e: d50f         	bpl	0x39c490 <PlayerLobby::viewUpdateStep(float)+0x160> @ imm = #0x1e
  39c470: 9b01         	ldr	r3, [sp, #0x4]
  39c472: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  39c476: 681b         	ldr	r3, [r3]
  39c478: f503 730f    	add.w	r3, r3, #0x23c
  39c47c: 681b         	ldr	r3, [r3]
  39c47e: 9a01         	ldr	r2, [sp, #0x4]
  39c480: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  39c484: 4610         	mov	r0, r2
  39c486: 4a8c         	ldr	r2, [pc, #0x230]        @ 0x39c6b8 <PlayerLobby::viewUpdateStep(float)+0x388>
  39c488: 447a         	add	r2, pc
  39c48a: 4611         	mov	r1, r2
  39c48c: 4798         	blx	r3
  39c48e: e028         	b	0x39c4e2 <PlayerLobby::viewUpdateStep(float)+0x1b2> @ imm = #0x50
  39c490: 9b01         	ldr	r3, [sp, #0x4]
  39c492: ed93 7a59    	vldr	s14, [r3, #356]
  39c496: eef7 7a00    	vmov.f32	s15, #1.000000e+00
  39c49a: eeb4 7ae7    	vcmpe.f32	s14, s15
  39c49e: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  39c4a2: d50f         	bpl	0x39c4c4 <PlayerLobby::viewUpdateStep(float)+0x194> @ imm = #0x1e
  39c4a4: 9b01         	ldr	r3, [sp, #0x4]
  39c4a6: f8d3 3128    	ldr.w	r3, [r3, #0x128]
  39c4aa: 681b         	ldr	r3, [r3]
  39c4ac: f503 730f    	add.w	r3, r3, #0x23c
  39c4b0: 681b         	ldr	r3, [r3]
  39c4b2: 9a01         	ldr	r2, [sp, #0x4]
  39c4b4: f8d2 2128    	ldr.w	r2, [r2, #0x128]
  39c4b8: 4610         	mov	r0, r2
  39c4ba: 4a80         	ldr	r2, [pc, #0x200]        @ 0x39c6bc <PlayerLobby::viewUpdateStep(float)+0x38c>
  39c4bc: 447a         	add	r2, pc
  39c4be: 4611         	mov	r1, r2
  39c4c0: 4798         	blx	r3
  39c4c2: e00e         	b	0x39c4e2 <PlayerLobby::viewUpdateStep(float)+0x1b2> @ imm = #0x1c
  39c4c4: 9b01         	ldr	r3, [sp, #0x4]
  39c4c6: ed93 7a59    	vldr	s14, [r3, #356]
  39c4ca: eef7 7a04    	vmov.f32	s15, #1.250000e+00
  39c4ce: eeb4 7ae7    	vcmpe.f32	s14, s15
  39c4d2: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  39c4d6: dd04         	ble	0x39c4e2 <PlayerLobby::viewUpdateStep(float)+0x1b2> @ imm = #0x8
  39c4d8: 9b01         	ldr	r3, [sp, #0x4]
  39c4da: f04f 0200    	mov.w	r2, #0x0
  39c4de: f8c3 2164    	str.w	r2, [r3, #0x164]
  39c4e2: 9b01         	ldr	r3, [sp, #0x4]
  39c4e4: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  39c4e8: 681b         	ldr	r3, [r3]
  39c4ea: f503 73fc    	add.w	r3, r3, #0x1f8
  39c4ee: 681b         	ldr	r3, [r3]
  39c4f0: 9a01         	ldr	r2, [sp, #0x4]
  39c4f2: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  39c4f6: 4610         	mov	r0, r2
  39c4f8: 4a71         	ldr	r2, [pc, #0x1c4]        @ 0x39c6c0 <PlayerLobby::viewUpdateStep(float)+0x390>
  39c4fa: 447a         	add	r2, pc
  39c4fc: 4611         	mov	r1, r2
  39c4fe: 4798         	blx	r3
  39c500: 9b01         	ldr	r3, [sp, #0x4]
  39c502: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  39c506: 681b         	ldr	r3, [r3]
  39c508: 334c         	adds	r3, #0x4c
  39c50a: 681d         	ldr	r5, [r3]
  39c50c: 9b01         	ldr	r3, [sp, #0x4]
  39c50e: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  39c512: 461e         	mov	r6, r3
  39c514: 9b01         	ldr	r3, [sp, #0x4]
  39c516: f503 77aa    	add.w	r7, r3, #0x154
  39c51a: ab04         	add	r3, sp, #0x10
  39c51c: 4618         	mov	r0, r3
  39c51e: f04f 0100    	mov.w	r1, #0x0
  39c522: f2c4 1170    	movt	r1, #0x4170
  39c526: f04f 0200    	mov.w	r2, #0x0
  39c52a: f1f6 fbe1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f67c2
  39c52e: aa06         	add	r2, sp, #0x18
  39c530: ab04         	add	r3, sp, #0x10
  39c532: 4610         	mov	r0, r2
  39c534: 4639         	mov	r1, r7
  39c536: 461a         	mov	r2, r3
  39c538: f7fa fd8e    	bl	0x397058 <BodyShape::~BodyShape()+0x184> @ imm = #-0x54e4
  39c53c: ab06         	add	r3, sp, #0x18
  39c53e: 4630         	mov	r0, r6
  39c540: 4619         	mov	r1, r3
  39c542: 47a8         	blx	r5
  39c544: e01e         	b	0x39c584 <PlayerLobby::viewUpdateStep(float)+0x254> @ imm = #0x3c
  39c546: 9b01         	ldr	r3, [sp, #0x4]
  39c548: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  39c54c: 681b         	ldr	r3, [r3]
  39c54e: f503 73fc    	add.w	r3, r3, #0x1f8
  39c552: 681b         	ldr	r3, [r3]
  39c554: 9a01         	ldr	r2, [sp, #0x4]
  39c556: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  39c55a: 4610         	mov	r0, r2
  39c55c: 4a59         	ldr	r2, [pc, #0x164]        @ 0x39c6c4 <PlayerLobby::viewUpdateStep(float)+0x394>
  39c55e: 447a         	add	r2, pc
  39c560: 4611         	mov	r1, r2
  39c562: 4798         	blx	r3
  39c564: 9b01         	ldr	r3, [sp, #0x4]
  39c566: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  39c56a: 681b         	ldr	r3, [r3]
  39c56c: 334c         	adds	r3, #0x4c
  39c56e: 681b         	ldr	r3, [r3]
  39c570: 9a01         	ldr	r2, [sp, #0x4]
  39c572: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  39c576: 4611         	mov	r1, r2
  39c578: 9a01         	ldr	r2, [sp, #0x4]
  39c57a: f502 72aa    	add.w	r2, r2, #0x154
  39c57e: 4608         	mov	r0, r1
  39c580: 4611         	mov	r1, r2
  39c582: 4798         	blx	r3
  39c584: 4b50         	ldr	r3, [pc, #0x140]        @ 0x39c6c8 <PlayerLobby::viewUpdateStep(float)+0x398>
  39c586: 58e3         	ldr	r3, [r4, r3]
  39c588: 681b         	ldr	r3, [r3]
  39c58a: 2b00         	cmp	r3, #0x0
  39c58c: d10c         	bne	0x39c5a8 <PlayerLobby::viewUpdateStep(float)+0x278> @ imm = #0x18
  39c58e: 9b01         	ldr	r3, [sp, #0x4]
  39c590: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  39c594: 681b         	ldr	r3, [r3]
  39c596: 3390         	adds	r3, #0x90
  39c598: 681b         	ldr	r3, [r3]
  39c59a: 9a01         	ldr	r2, [sp, #0x4]
  39c59c: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  39c5a0: 4610         	mov	r0, r2
  39c5a2: 2100         	movs	r1, #0x0
  39c5a4: 4798         	blx	r3
  39c5a6: e00b         	b	0x39c5c0 <PlayerLobby::viewUpdateStep(float)+0x290> @ imm = #0x16
  39c5a8: 9b01         	ldr	r3, [sp, #0x4]
  39c5aa: f8d3 3130    	ldr.w	r3, [r3, #0x130]
  39c5ae: 681b         	ldr	r3, [r3]
  39c5b0: 3390         	adds	r3, #0x90
  39c5b2: 681b         	ldr	r3, [r3]
  39c5b4: 9a01         	ldr	r2, [sp, #0x4]
  39c5b6: f8d2 2130    	ldr.w	r2, [r2, #0x130]
  39c5ba: 4610         	mov	r0, r2
  39c5bc: 2101         	movs	r1, #0x1
  39c5be: 4798         	blx	r3
  39c5c0: 4b42         	ldr	r3, [pc, #0x108]        @ 0x39c6cc <PlayerLobby::viewUpdateStep(float)+0x39c>
  39c5c2: 58e3         	ldr	r3, [r4, r3]
  39c5c4: 681b         	ldr	r3, [r3]
  39c5c6: 2b04         	cmp	r3, #0x4
  39c5c8: d004         	beq	0x39c5d4 <PlayerLobby::viewUpdateStep(float)+0x2a4> @ imm = #0x8
  39c5ca: 4b40         	ldr	r3, [pc, #0x100]        @ 0x39c6cc <PlayerLobby::viewUpdateStep(float)+0x39c>
  39c5cc: 58e3         	ldr	r3, [r4, r3]
  39c5ce: 681b         	ldr	r3, [r3]
  39c5d0: 2b02         	cmp	r3, #0x2
  39c5d2: d166         	bne	0x39c6a2 <PlayerLobby::viewUpdateStep(float)+0x372> @ imm = #0xcc
  39c5d4: f7db fab4    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x24a98
  39c5d8: 4603         	mov	r3, r0
  39c5da: 4618         	mov	r0, r3
  39c5dc: f7dd fd72    	bl	0x37a0c4 <NetworkManager::isSearching()> @ imm = #-0x2251c
  39c5e0: 4603         	mov	r3, r0
  39c5e2: 2b00         	cmp	r3, #0x0
  39c5e4: d009         	beq	0x39c5fa <PlayerLobby::viewUpdateStep(float)+0x2ca> @ imm = #0x12
  39c5e6: 9b01         	ldr	r3, [sp, #0x4]
  39c5e8: f893 314d    	ldrb.w	r3, [r3, #0x14d]
  39c5ec: f083 0301    	eor	r3, r3, #0x1
  39c5f0: b2db         	uxtb	r3, r3
  39c5f2: 2b00         	cmp	r3, #0x0
  39c5f4: d001         	beq	0x39c5fa <PlayerLobby::viewUpdateStep(float)+0x2ca> @ imm = #0x2
  39c5f6: 2301         	movs	r3, #0x1
  39c5f8: e000         	b	0x39c5fc <PlayerLobby::viewUpdateStep(float)+0x2cc> @ imm = #0x0
  39c5fa: 2300         	movs	r3, #0x0
  39c5fc: 2b00         	cmp	r3, #0x0
  39c5fe: d005         	beq	0x39c60c <PlayerLobby::viewUpdateStep(float)+0x2dc> @ imm = #0xa
  39c600: f7db fa9e    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x24ac4
  39c604: 4603         	mov	r3, r0
  39c606: 4618         	mov	r0, r3
  39c608: f7dd fcf0    	bl	0x379fec <NetworkManager::cancelSearch()> @ imm = #-0x22620
  39c60c: 9b01         	ldr	r3, [sp, #0x4]
  39c60e: 681b         	ldr	r3, [r3]
  39c610: f503 73ee    	add.w	r3, r3, #0x1dc
  39c614: 681b         	ldr	r3, [r3]
  39c616: 9801         	ldr	r0, [sp, #0x4]
  39c618: 4798         	blx	r3
  39c61a: 4603         	mov	r3, r0
  39c61c: 9303         	str	r3, [sp, #0xc]
  39c61e: 9b03         	ldr	r3, [sp, #0xc]
  39c620: 2b00         	cmp	r3, #0x0
  39c622: d037         	beq	0x39c694 <PlayerLobby::viewUpdateStep(float)+0x364> @ imm = #0x6e
  39c624: 9b03         	ldr	r3, [sp, #0xc]
  39c626: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39c62a: 2b01         	cmp	r3, #0x1
  39c62c: d10a         	bne	0x39c644 <PlayerLobby::viewUpdateStep(float)+0x314> @ imm = #0x14
  39c62e: f7db fa87    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x24af2
  39c632: 4603         	mov	r3, r0
  39c634: 4618         	mov	r0, r3
  39c636: f7dd fd45    	bl	0x37a0c4 <NetworkManager::isSearching()> @ imm = #-0x22576
  39c63a: 4603         	mov	r3, r0
  39c63c: 2b00         	cmp	r3, #0x0
  39c63e: d001         	beq	0x39c644 <PlayerLobby::viewUpdateStep(float)+0x314> @ imm = #0x2
  39c640: 2301         	movs	r3, #0x1
  39c642: e000         	b	0x39c646 <PlayerLobby::viewUpdateStep(float)+0x316> @ imm = #0x0
  39c644: 2300         	movs	r3, #0x0
  39c646: 2b00         	cmp	r3, #0x0
  39c648: d007         	beq	0x39c65a <PlayerLobby::viewUpdateStep(float)+0x32a> @ imm = #0xe
  39c64a: 9b01         	ldr	r3, [sp, #0x4]
  39c64c: 681b         	ldr	r3, [r3]
  39c64e: f503 730a    	add.w	r3, r3, #0x228
  39c652: 681b         	ldr	r3, [r3]
  39c654: 9801         	ldr	r0, [sp, #0x4]
  39c656: 4798         	blx	r3
  39c658: e01c         	b	0x39c694 <PlayerLobby::viewUpdateStep(float)+0x364> @ imm = #0x38
  39c65a: 9b03         	ldr	r3, [sp, #0xc]
  39c65c: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39c660: 2b02         	cmp	r3, #0x2
  39c662: d10d         	bne	0x39c680 <PlayerLobby::viewUpdateStep(float)+0x350> @ imm = #0x1a
  39c664: f7db fa6c    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x24b28
  39c668: 4603         	mov	r3, r0
  39c66a: 4618         	mov	r0, r3
  39c66c: f7dd fd2a    	bl	0x37a0c4 <NetworkManager::isSearching()> @ imm = #-0x225ac
  39c670: 4603         	mov	r3, r0
  39c672: f083 0301    	eor	r3, r3, #0x1
  39c676: b2db         	uxtb	r3, r3
  39c678: 2b00         	cmp	r3, #0x0
  39c67a: d001         	beq	0x39c680 <PlayerLobby::viewUpdateStep(float)+0x350> @ imm = #0x2
  39c67c: 2301         	movs	r3, #0x1
  39c67e: e000         	b	0x39c682 <PlayerLobby::viewUpdateStep(float)+0x352> @ imm = #0x0
  39c680: 2300         	movs	r3, #0x0
  39c682: 2b00         	cmp	r3, #0x0
  39c684: d006         	beq	0x39c694 <PlayerLobby::viewUpdateStep(float)+0x364> @ imm = #0xc
  39c686: 9b01         	ldr	r3, [sp, #0x4]
  39c688: 681b         	ldr	r3, [r3]
  39c68a: f503 7309    	add.w	r3, r3, #0x224
  39c68e: 681b         	ldr	r3, [r3]
  39c690: 9801         	ldr	r0, [sp, #0x4]
  39c692: 4798         	blx	r3
  39c694: 9b01         	ldr	r3, [sp, #0x4]
  39c696: 681b         	ldr	r3, [r3]
  39c698: f503 73f0    	add.w	r3, r3, #0x1e0
  39c69c: 681b         	ldr	r3, [r3]
  39c69e: 9801         	ldr	r0, [sp, #0x4]
  39c6a0: 4798         	blx	r3
  39c6a2: b009         	add	sp, #0x24
  39c6a4: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x39c6a5); words below are literal-pool data ---
  39c6a6: bf00         	nop
  39c6a8: 66ce         	str	r6, [r1, #0x6c]
  39c6aa: 0059         	lsls	r1, r3, #0x1
  39c6ac: 5d3e         	ldrb	r6, [r7, r4]
  39c6ae: 0043         	lsls	r3, r0, #0x1
  39c6b0: 5d0c         	ldrb	r4, [r1, r4]
  39c6b2: 0043         	lsls	r3, r0, #0x1
  39c6b4: 5cd0         	ldrb	r0, [r2, r3]
  39c6b6: 0043         	lsls	r3, r0, #0x1
  39c6b8: 5ca8         	ldrb	r0, [r5, r2]
  39c6ba: 0043         	lsls	r3, r0, #0x1
  39c6bc: 5a5c         	ldrh	r4, [r3, r1]
  39c6be: 0043         	lsls	r3, r0, #0x1
  39c6c0: 5c42         	ldrb	r2, [r0, r1]
  39c6c2: 0043         	lsls	r3, r0, #0x1
  39c6c4: 5aea         	ldrh	r2, [r5, r3]
  39c6c6: 0043         	lsls	r3, r0, #0x1
  39c6c8: d790         	bvc	0x39c5ec <PlayerLobby::viewUpdateStep(float)+0x2bc> @ imm = #-0xe0
  39c6ca: ffff d838    	vqshrun.s64	d29, q12, #0x1
  39c6ce: ffff b500    	<unknown>

// ==== PlayerLobby::pingUpdateStep
//      file offset 0x39c6d0 (= ELF address; Ghidra 0x3ac6d0), 28 bytes, Thumb-2
  39c6d0: b500         	push	{lr}
  39c6d2: b083         	sub	sp, #0xc
  39c6d4: 9001         	str	r0, [sp, #0x4]
  39c6d6: 9100         	str	r1, [sp]
  39c6d8: f7db fa32    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x24b9c
  39c6dc: 4603         	mov	r3, r0
  39c6de: 4618         	mov	r0, r3
  39c6e0: 2100         	movs	r1, #0x0
  39c6e2: f7dc fd2f    	bl	0x379144 <NetworkManager::sendPing(cocos2d::CCObject*)> @ imm = #-0x235a2
  39c6e6: b003         	add	sp, #0xc
  39c6e8: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobby::updateStep
//      file offset 0x39c6ec (= ELF address; Ghidra 0x3ac6ec), 40 bytes, Thumb-2
  39c6ec: b500         	push	{lr}
  39c6ee: b083         	sub	sp, #0xc
  39c6f0: 9001         	str	r0, [sp, #0x4]
  39c6f2: 9100         	str	r1, [sp]
  39c6f4: 9b01         	ldr	r3, [sp, #0x4]
  39c6f6: 681b         	ldr	r3, [r3]
  39c6f8: f503 73d4    	add.w	r3, r3, #0x1a8
  39c6fc: 681b         	ldr	r3, [r3]
  39c6fe: 9801         	ldr	r0, [sp, #0x4]
  39c700: 4798         	blx	r3
  39c702: f7db fa1d    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x24bc6
  39c706: 4603         	mov	r3, r0
  39c708: 4618         	mov	r0, r3
  39c70a: f7dd fb45    	bl	0x379d98 <NetworkManager::refreshPlayersList()> @ imm = #-0x22976
  39c70e: b003         	add	sp, #0xc
  39c710: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobby::onPeerRequestedSetupData
//      file offset 0x39c714 (= ELF address; Ghidra 0x3ac714), 164 bytes, Thumb-2
  39c714: b570         	push	{r4, r5, r6, lr}
  39c716: b088         	sub	sp, #0x20
  39c718: 9003         	str	r0, [sp, #0xc]
  39c71a: 9102         	str	r1, [sp, #0x8]
  39c71c: 4c22         	ldr	r4, [pc, #0x88]         @ 0x39c7a8 <PlayerLobby::onPeerRequestedSetupData(cocos2d::CCObject*)+0x94>
  39c71e: 447c         	add	r4, pc
  39c720: f7db fa0e    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x24be4
  39c724: 4606         	mov	r6, r0
  39c726: 9b03         	ldr	r3, [sp, #0xc]
  39c728: f503 7396    	add.w	r3, r3, #0x12c
  39c72c: aa06         	add	r2, sp, #0x18
  39c72e: 4610         	mov	r0, r2
  39c730: 4619         	mov	r1, r3
  39c732: f019 f6d9    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x419db2
  39c736: 4b1d         	ldr	r3, [pc, #0x74]         @ 0x39c7ac <PlayerLobby::onPeerRequestedSetupData(cocos2d::CCObject*)+0x98>
  39c738: 58e3         	ldr	r3, [r4, r3]
  39c73a: 681d         	ldr	r5, [r3]
  39c73c: ab05         	add	r3, sp, #0x14
  39c73e: 4618         	mov	r0, r3
  39c740: f3ed fe58    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3edcb0
  39c744: aa07         	add	r2, sp, #0x1c
  39c746: ab05         	add	r3, sp, #0x14
  39c748: 4610         	mov	r0, r2
  39c74a: 4a19         	ldr	r2, [pc, #0x64]         @ 0x39c7b0 <PlayerLobby::onPeerRequestedSetupData(cocos2d::CCObject*)+0x9c>
  39c74c: 447a         	add	r2, pc
  39c74e: 4611         	mov	r1, r2
  39c750: 461a         	mov	r2, r3
  39c752: f01a f185    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41a30a
  39c756: 4b17         	ldr	r3, [pc, #0x5c]         @ 0x39c7b4 <PlayerLobby::onPeerRequestedSetupData(cocos2d::CCObject*)+0xa0>
  39c758: 58e3         	ldr	r3, [r4, r3]
  39c75a: 6819         	ldr	r1, [r3]
  39c75c: aa06         	add	r2, sp, #0x18
  39c75e: ab07         	add	r3, sp, #0x1c
  39c760: 9100         	str	r1, [sp]
  39c762: 4630         	mov	r0, r6
  39c764: 4611         	mov	r1, r2
  39c766: 462a         	mov	r2, r5
  39c768: f7dc fda0    	bl	0x3792ac <NetworkManager::sendPlayerSetup(std::string, int, std::string, int)> @ imm = #-0x234c0
  39c76c: ab07         	add	r3, sp, #0x1c
  39c76e: 4618         	mov	r0, r3
  39c770: f019 f0d0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4191a0
  39c774: ab05         	add	r3, sp, #0x14
  39c776: 4618         	mov	r0, r3
  39c778: f3ed fe40    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3edc80
  39c77c: ab06         	add	r3, sp, #0x18
  39c77e: 4618         	mov	r0, r3
  39c780: f019 f0c8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419190
  39c784: e00e         	b	0x39c7a4 <PlayerLobby::onPeerRequestedSetupData(cocos2d::CCObject*)+0x90> @ imm = #0x1c
  39c786: ab07         	add	r3, sp, #0x1c
  39c788: 4618         	mov	r0, r3
  39c78a: f019 f0c3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419186
  39c78e: e7ff         	b	0x39c790 <PlayerLobby::onPeerRequestedSetupData(cocos2d::CCObject*)+0x7c> @ imm = #-0x2
  39c790: ab05         	add	r3, sp, #0x14
  39c792: 4618         	mov	r0, r3
  39c794: f3ed fe32    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3edc64
  39c798: ab06         	add	r3, sp, #0x18
  39c79a: 4618         	mov	r0, r3
  39c79c: f019 f0ba    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419174
  39c7a0: f3eb fc84    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3eb908
  39c7a4: b008         	add	sp, #0x20
  39c7a6: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x39c7a7); words below are literal-pool data ---
  39c7a8: 62ea         	str	r2, [r5, #0x2c]
  39c7aa: 0059         	lsls	r1, r3, #0x1
  39c7ac: d8b0         	bhi	0x39c710 <PlayerLobby::updateStep(float)+0x24> @ imm = #-0xa0
  39c7ae: ffff 5770    	<unknown>
  39c7b2: 0043         	lsls	r3, r0, #0x1
  39c7b4: d7d0         	bvc	0x39c758 <PlayerLobby::onPeerRequestedSetupData(cocos2d::CCObject*)+0x44> @ imm = #-0x60
  39c7b6: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== PlayerLobby::onLobbyStatus
//      file offset 0x39c7b8 (= ELF address; Ghidra 0x3ac7b8), 530 bytes, Thumb-2
  39c7b8: b530         	push	{r4, r5, lr}
  39c7ba: b08f         	sub	sp, #0x3c
  39c7bc: 9001         	str	r0, [sp, #0x4]
  39c7be: 9100         	str	r1, [sp]
  39c7c0: 9b00         	ldr	r3, [sp]
  39c7c2: 9307         	str	r3, [sp, #0x1c]
  39c7c4: 9807         	ldr	r0, [sp, #0x1c]
  39c7c6: 2100         	movs	r1, #0x0
  39c7c8: f1fd fcaa    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1fd954
  39c7cc: 4603         	mov	r3, r0
  39c7ce: 9308         	str	r3, [sp, #0x20]
  39c7d0: 9807         	ldr	r0, [sp, #0x1c]
  39c7d2: 2101         	movs	r1, #0x1
  39c7d4: f1fd fca4    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1fd948
  39c7d8: 4603         	mov	r3, r0
  39c7da: 9309         	str	r3, [sp, #0x24]
  39c7dc: 9807         	ldr	r0, [sp, #0x1c]
  39c7de: 2102         	movs	r1, #0x2
  39c7e0: f1fd fc9e    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1fd93c
  39c7e4: 4603         	mov	r3, r0
  39c7e6: 930a         	str	r3, [sp, #0x28]
  39c7e8: 9807         	ldr	r0, [sp, #0x1c]
  39c7ea: 2103         	movs	r1, #0x3
  39c7ec: f1fd fc98    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1fd930
  39c7f0: 4603         	mov	r3, r0
  39c7f2: 930b         	str	r3, [sp, #0x2c]
  39c7f4: 9808         	ldr	r0, [sp, #0x20]
  39c7f6: f1fd f897    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1fd12e
  39c7fa: 4604         	mov	r4, r0
  39c7fc: ab06         	add	r3, sp, #0x18
  39c7fe: 4618         	mov	r0, r3
  39c800: f3ed fdf8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3edbf0
  39c804: aa03         	add	r2, sp, #0xc
  39c806: ab06         	add	r3, sp, #0x18
  39c808: 4610         	mov	r0, r2
  39c80a: 4621         	mov	r1, r4
  39c80c: 461a         	mov	r2, r3
  39c80e: f01a f127    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41a24e
  39c812: ab06         	add	r3, sp, #0x18
  39c814: 4618         	mov	r0, r3
  39c816: f3ed fdf1    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3edbe2
  39c81a: ab03         	add	r3, sp, #0xc
  39c81c: 4618         	mov	r0, r3
  39c81e: 2100         	movs	r1, #0x0
  39c820: f019 f17c    	bl	0x7b5b1c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x1906c> @ imm = #0x4192f8
  39c824: 4603         	mov	r3, r0
  39c826: 781b         	ldrb	r3, [r3]
  39c828: f88d 300b    	strb.w	r3, [sp, #0xb]
  39c82c: 9b01         	ldr	r3, [sp, #0x4]
  39c82e: f8d3 4124    	ldr.w	r4, [r3, #0x124]
  39c832: 9809         	ldr	r0, [sp, #0x24]
  39c834: f1fd f878    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1fd0f0
  39c838: 4605         	mov	r5, r0
  39c83a: ab06         	add	r3, sp, #0x18
  39c83c: 4618         	mov	r0, r3
  39c83e: f3ed fdd9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3edbb2
  39c842: aa04         	add	r2, sp, #0x10
  39c844: ab06         	add	r3, sp, #0x18
  39c846: 4610         	mov	r0, r2
  39c848: 4629         	mov	r1, r5
  39c84a: 461a         	mov	r2, r3
  39c84c: f01a f108    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41a210
  39c850: ab04         	add	r3, sp, #0x10
  39c852: 4620         	mov	r0, r4
  39c854: 4619         	mov	r1, r3
  39c856: f1f7 fb4b    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1f7696
  39c85a: 4603         	mov	r3, r0
  39c85c: 930c         	str	r3, [sp, #0x30]
  39c85e: ab04         	add	r3, sp, #0x10
  39c860: 4618         	mov	r0, r3
  39c862: f019 f057    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4190ae
  39c866: ab06         	add	r3, sp, #0x18
  39c868: 4618         	mov	r0, r3
  39c86a: f3ed fdc7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3edb8e
  39c86e: 9b0c         	ldr	r3, [sp, #0x30]
  39c870: 2b00         	cmp	r3, #0x0
  39c872: d079         	beq	0x39c968 <PlayerLobby::onLobbyStatus(cocos2d::CCObject*)+0x1b0> @ imm = #0xf2
  39c874: f89d 300b    	ldrb.w	r3, [sp, #0xb]
  39c878: 2b52         	cmp	r3, #0x52
  39c87a: d004         	beq	0x39c886 <PlayerLobby::onLobbyStatus(cocos2d::CCObject*)+0xce> @ imm = #0x8
  39c87c: 2b53         	cmp	r3, #0x53
  39c87e: d00c         	beq	0x39c89a <PlayerLobby::onLobbyStatus(cocos2d::CCObject*)+0xe2> @ imm = #0x18
  39c880: 2b4e         	cmp	r3, #0x4e
  39c882: d005         	beq	0x39c890 <PlayerLobby::onLobbyStatus(cocos2d::CCObject*)+0xd8> @ imm = #0xa
  39c884: e00e         	b	0x39c8a4 <PlayerLobby::onLobbyStatus(cocos2d::CCObject*)+0xec> @ imm = #0x1c
  39c886: 9b0c         	ldr	r3, [sp, #0x30]
  39c888: 2203         	movs	r2, #0x3
  39c88a: f8c3 2118    	str.w	r2, [r3, #0x118]
  39c88e: e00e         	b	0x39c8ae <PlayerLobby::onLobbyStatus(cocos2d::CCObject*)+0xf6> @ imm = #0x1c
  39c890: 9b0c         	ldr	r3, [sp, #0x30]
  39c892: 2201         	movs	r2, #0x1
  39c894: f8c3 2118    	str.w	r2, [r3, #0x118]
  39c898: e009         	b	0x39c8ae <PlayerLobby::onLobbyStatus(cocos2d::CCObject*)+0xf6> @ imm = #0x12
  39c89a: 9b0c         	ldr	r3, [sp, #0x30]
  39c89c: 2202         	movs	r2, #0x2
  39c89e: f8c3 2118    	str.w	r2, [r3, #0x118]
  39c8a2: e004         	b	0x39c8ae <PlayerLobby::onLobbyStatus(cocos2d::CCObject*)+0xf6> @ imm = #0x8
  39c8a4: 9b0c         	ldr	r3, [sp, #0x30]
  39c8a6: 2204         	movs	r2, #0x4
  39c8a8: f8c3 2118    	str.w	r2, [r3, #0x118]
  39c8ac: bf00         	nop
  39c8ae: 980a         	ldr	r0, [sp, #0x28]
  39c8b0: f750 fad0    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xafa60
  39c8b4: 4603         	mov	r3, r0
  39c8b6: 980c         	ldr	r0, [sp, #0x30]
  39c8b8: 4619         	mov	r1, r3
  39c8ba: f7fc ffc7    	bl	0x39984c <LobbyRow::setTeamId(int)> @ imm = #-0x3072
  39c8be: f7db f93f    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x24d82
  39c8c2: 4603         	mov	r3, r0
  39c8c4: 4618         	mov	r0, r3
  39c8c6: f7db fed7    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #-0x24252
  39c8ca: 4604         	mov	r4, r0
  39c8cc: 9809         	ldr	r0, [sp, #0x24]
  39c8ce: f1fd f82b    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1fd056
  39c8d2: 4605         	mov	r5, r0
  39c8d4: ab06         	add	r3, sp, #0x18
  39c8d6: 4618         	mov	r0, r3
  39c8d8: f3ed fd8c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3edb18
  39c8dc: aa05         	add	r2, sp, #0x14
  39c8de: ab06         	add	r3, sp, #0x18
  39c8e0: 4610         	mov	r0, r2
  39c8e2: 4629         	mov	r1, r5
  39c8e4: 461a         	mov	r2, r3
  39c8e6: f01a f0bb    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41a176
  39c8ea: ab05         	add	r3, sp, #0x14
  39c8ec: 4620         	mov	r0, r4
  39c8ee: 4619         	mov	r1, r3
  39c8f0: f1f7 fafe    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1f75fc
  39c8f4: 4603         	mov	r3, r0
  39c8f6: 930d         	str	r3, [sp, #0x34]
  39c8f8: ab05         	add	r3, sp, #0x14
  39c8fa: 4618         	mov	r0, r3
  39c8fc: f019 f00a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x419014
  39c900: ab06         	add	r3, sp, #0x18
  39c902: 4618         	mov	r0, r3
  39c904: f3ed fd7a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3edaf4
  39c908: 980a         	ldr	r0, [sp, #0x28]
  39c90a: f750 faa3    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xafaba
  39c90e: 4603         	mov	r3, r0
  39c910: 4618         	mov	r0, r3
  39c912: f748 f9f9    	bl	0x2e4d08 <cocos2d::CCInteger::create(int)> @ imm = #-0xb7c0e
  39c916: 4603         	mov	r3, r0
  39c918: 980d         	ldr	r0, [sp, #0x34]
  39c91a: 2104         	movs	r1, #0x4
  39c91c: 461a         	mov	r2, r3
  39c91e: 2301         	movs	r3, #0x1
  39c920: f1fd fd82    	bl	0x59a428 <cocos2d::CCArray::replaceObjectAtIndex(unsigned int, cocos2d::CCObject*, bool)> @ imm = #0x1fdb04
  39c924: 980b         	ldr	r0, [sp, #0x2c]
  39c926: f1fc ffff    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1fcffe
  39c92a: 4604         	mov	r4, r0
  39c92c: ab05         	add	r3, sp, #0x14
  39c92e: 4618         	mov	r0, r3
  39c930: f3ed fd60    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3edac0
  39c934: aa06         	add	r2, sp, #0x18
  39c936: ab05         	add	r3, sp, #0x14
  39c938: 4610         	mov	r0, r2
  39c93a: 4621         	mov	r1, r4
  39c93c: 461a         	mov	r2, r3
  39c93e: f01a f08f    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41a11e
  39c942: ab06         	add	r3, sp, #0x18
  39c944: 4618         	mov	r0, r3
  39c946: f1fd f879    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1fd0f2
  39c94a: 4603         	mov	r3, r0
  39c94c: 980d         	ldr	r0, [sp, #0x34]
  39c94e: 2103         	movs	r1, #0x3
  39c950: 461a         	mov	r2, r3
  39c952: 2301         	movs	r3, #0x1
  39c954: f1fd fd68    	bl	0x59a428 <cocos2d::CCArray::replaceObjectAtIndex(unsigned int, cocos2d::CCObject*, bool)> @ imm = #0x1fdad0
  39c958: ab06         	add	r3, sp, #0x18
  39c95a: 4618         	mov	r0, r3
  39c95c: f018 f7da    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x418fb4
  39c960: ab05         	add	r3, sp, #0x14
  39c962: 4618         	mov	r0, r3
  39c964: f3ed fd4a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3eda94
  39c968: ab03         	add	r3, sp, #0xc
  39c96a: 4618         	mov	r0, r3
  39c96c: f018 f7d2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x418fa4
  39c970: e029         	b	0x39c9c6 <PlayerLobby::onLobbyStatus(cocos2d::CCObject*)+0x20e> @ imm = #0x52
  39c972: ab06         	add	r3, sp, #0x18
  39c974: 4618         	mov	r0, r3
  39c976: f3ed fd41    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3eda82
  39c97a: f3eb fb97    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3eb72e
  39c97e: ab04         	add	r3, sp, #0x10
  39c980: 4618         	mov	r0, r3
  39c982: f018 f7c7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x418f8e
  39c986: e7ff         	b	0x39c988 <PlayerLobby::onLobbyStatus(cocos2d::CCObject*)+0x1d0> @ imm = #-0x2
  39c988: ab06         	add	r3, sp, #0x18
  39c98a: 4618         	mov	r0, r3
  39c98c: f3ed fd36    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3eda6c
  39c990: e013         	b	0x39c9ba <PlayerLobby::onLobbyStatus(cocos2d::CCObject*)+0x202> @ imm = #0x26
  39c992: ab05         	add	r3, sp, #0x14
  39c994: 4618         	mov	r0, r3
  39c996: f018 f7bd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x418f7a
  39c99a: e7ff         	b	0x39c99c <PlayerLobby::onLobbyStatus(cocos2d::CCObject*)+0x1e4> @ imm = #-0x2
  39c99c: ab06         	add	r3, sp, #0x18
  39c99e: 4618         	mov	r0, r3
  39c9a0: f3ed fd2c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3eda58
  39c9a4: e009         	b	0x39c9ba <PlayerLobby::onLobbyStatus(cocos2d::CCObject*)+0x202> @ imm = #0x12
  39c9a6: ab06         	add	r3, sp, #0x18
  39c9a8: 4618         	mov	r0, r3
  39c9aa: f018 f7b3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x418f66
  39c9ae: e7ff         	b	0x39c9b0 <PlayerLobby::onLobbyStatus(cocos2d::CCObject*)+0x1f8> @ imm = #-0x2
  39c9b0: ab05         	add	r3, sp, #0x14
  39c9b2: 4618         	mov	r0, r3
  39c9b4: f3ed fd22    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3eda44
  39c9b8: e7ff         	b	0x39c9ba <PlayerLobby::onLobbyStatus(cocos2d::CCObject*)+0x202> @ imm = #-0x2
  39c9ba: ab03         	add	r3, sp, #0xc
  39c9bc: 4618         	mov	r0, r3
  39c9be: f018 f7a9    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x418f52
  39c9c2: f3eb fb73    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3eb6e6
  39c9c6: b00f         	add	sp, #0x3c
  39c9c8: bd30         	pop	{r4, r5, pc}

// ==== PlayerLobby::startGame
//      file offset 0x39c9cc (= ELF address; Ghidra 0x3ac9cc), 88 bytes, Thumb-2
  39c9cc: b500         	push	{lr}
  39c9ce: b083         	sub	sp, #0xc
  39c9d0: 9001         	str	r0, [sp, #0x4]
  39c9d2: 4a12         	ldr	r2, [pc, #0x48]         @ 0x39ca1c <PlayerLobby::startGame()+0x50>
  39c9d4: 447a         	add	r2, pc
  39c9d6: 9b01         	ldr	r3, [sp, #0x4]
  39c9d8: f893 30f0    	ldrb.w	r3, [r3, #0xf0]
  39c9dc: 2b00         	cmp	r3, #0x0
  39c9de: d000         	beq	0x39c9e2 <PlayerLobby::startGame()+0x16> @ imm = #0x0
  39c9e0: e019         	b	0x39ca16 <PlayerLobby::startGame()+0x4a> @ imm = #0x32
  39c9e2: 9b01         	ldr	r3, [sp, #0x4]
  39c9e4: 2101         	movs	r1, #0x1
  39c9e6: f883 10f0    	strb.w	r1, [r3, #0xf0]
  39c9ea: 4b0d         	ldr	r3, [pc, #0x34]         @ 0x39ca20 <PlayerLobby::startGame()+0x54>
  39c9ec: 58d3         	ldr	r3, [r2, r3]
  39c9ee: 681b         	ldr	r3, [r3]
  39c9f0: 4618         	mov	r0, r3
  39c9f2: 210d         	movs	r1, #0xd
  39c9f4: f05b f9e4    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x5b3c8
  39c9f8: 9b01         	ldr	r3, [sp, #0x4]
  39c9fa: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  39c9fe: 2b00         	cmp	r3, #0x0
  39ca00: d009         	beq	0x39ca16 <PlayerLobby::startGame()+0x4a> @ imm = #0x12
  39ca02: 9b01         	ldr	r3, [sp, #0x4]
  39ca04: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  39ca08: 681b         	ldr	r3, [r3]
  39ca0a: 681b         	ldr	r3, [r3]
  39ca0c: 9a01         	ldr	r2, [sp, #0x4]
  39ca0e: f8d2 2178    	ldr.w	r2, [r2, #0x178]
  39ca12: 4610         	mov	r0, r2
  39ca14: 4798         	blx	r3
  39ca16: b003         	add	sp, #0xc
  39ca18: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x39ca1b); words below are literal-pool data ---
  39ca1c: 6034         	str	r4, [r6]
  39ca1e: 0059         	lsls	r1, r3, #0x1
  39ca20: d730         	bvc	0x39ca84 <PlayerLobby::afterReady()+0x60> @ imm = #0x60
  39ca22: ffff b570    	<unknown>

// ==== PlayerLobby::afterReady
//      file offset 0x39ca24 (= ELF address; Ghidra 0x3aca24), 468 bytes, Thumb-2
  39ca24: b570         	push	{r4, r5, r6, lr}
  39ca26: b088         	sub	sp, #0x20
  39ca28: 9001         	str	r0, [sp, #0x4]
  39ca2a: 9b01         	ldr	r3, [sp, #0x4]
  39ca2c: ed93 7a52    	vldr	s14, [r3, #328]
  39ca30: eef1 7a04    	vmov.f32	s15, #5.000000e+00
  39ca34: eeb4 7ae7    	vcmpe.f32	s14, s15
  39ca38: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  39ca3c: d500         	bpl	0x39ca40 <PlayerLobby::afterReady()+0x1c> @ imm = #0x0
  39ca3e: e0d6         	b	0x39cbee <PlayerLobby::afterReady()+0x1ca> @ imm = #0x1ac
  39ca40: 9b01         	ldr	r3, [sp, #0x4]
  39ca42: 681b         	ldr	r3, [r3]
  39ca44: f503 73ee    	add.w	r3, r3, #0x1dc
  39ca48: 681b         	ldr	r3, [r3]
  39ca4a: 9801         	ldr	r0, [sp, #0x4]
  39ca4c: 4798         	blx	r3
  39ca4e: 4603         	mov	r3, r0
  39ca50: 9303         	str	r3, [sp, #0xc]
  39ca52: 9b03         	ldr	r3, [sp, #0xc]
  39ca54: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39ca58: 2b03         	cmp	r3, #0x3
  39ca5a: d07d         	beq	0x39cb58 <PlayerLobby::afterReady()+0x134> @ imm = #0xfa
  39ca5c: 9b01         	ldr	r3, [sp, #0x4]
  39ca5e: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  39ca62: 681b         	ldr	r3, [r3]
  39ca64: f503 73fc    	add.w	r3, r3, #0x1f8
  39ca68: 681b         	ldr	r3, [r3]
  39ca6a: 9a01         	ldr	r2, [sp, #0x4]
  39ca6c: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  39ca70: 4610         	mov	r0, r2
  39ca72: 4a60         	ldr	r2, [pc, #0x180]        @ 0x39cbf4 <PlayerLobby::afterReady()+0x1d0>
  39ca74: 447a         	add	r2, pc
  39ca76: 4611         	mov	r1, r2
  39ca78: 4798         	blx	r3
  39ca7a: 9b01         	ldr	r3, [sp, #0x4]
  39ca7c: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  39ca80: 681b         	ldr	r3, [r3]
  39ca82: 334c         	adds	r3, #0x4c
  39ca84: 681c         	ldr	r4, [r3]
  39ca86: 9b01         	ldr	r3, [sp, #0x4]
  39ca88: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  39ca8c: 461d         	mov	r5, r3
  39ca8e: 9b01         	ldr	r3, [sp, #0x4]
  39ca90: f503 76ae    	add.w	r6, r3, #0x15c
  39ca94: ab04         	add	r3, sp, #0x10
  39ca96: 4618         	mov	r0, r3
  39ca98: f04f 0100    	mov.w	r1, #0x0
  39ca9c: f2cc 11f0    	movt	r1, #0xc1f0
  39caa0: f04f 0200    	mov.w	r2, #0x0
  39caa4: f1f6 f924    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f6248
  39caa8: aa06         	add	r2, sp, #0x18
  39caaa: ab04         	add	r3, sp, #0x10
  39caac: 4610         	mov	r0, r2
  39caae: 4631         	mov	r1, r6
  39cab0: 461a         	mov	r2, r3
  39cab2: f7fa fad1    	bl	0x397058 <BodyShape::~BodyShape()+0x184> @ imm = #-0x5a5e
  39cab6: ab06         	add	r3, sp, #0x18
  39cab8: 4628         	mov	r0, r5
  39caba: 4619         	mov	r1, r3
  39cabc: 47a0         	blx	r4
  39cabe: 9b03         	ldr	r3, [sp, #0xc]
  39cac0: 2203         	movs	r2, #0x3
  39cac2: f8c3 2118    	str.w	r2, [r3, #0x118]
  39cac6: 9b01         	ldr	r3, [sp, #0x4]
  39cac8: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  39cacc: 681b         	ldr	r3, [r3]
  39cace: 3390         	adds	r3, #0x90
  39cad0: 681b         	ldr	r3, [r3]
  39cad2: 9a01         	ldr	r2, [sp, #0x4]
  39cad4: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  39cad8: 4610         	mov	r0, r2
  39cada: 2100         	movs	r1, #0x0
  39cadc: 4798         	blx	r3
  39cade: 9b01         	ldr	r3, [sp, #0x4]
  39cae0: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  39cae4: 681b         	ldr	r3, [r3]
  39cae6: 3390         	adds	r3, #0x90
  39cae8: 681b         	ldr	r3, [r3]
  39caea: 9a01         	ldr	r2, [sp, #0x4]
  39caec: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  39caf0: 4610         	mov	r0, r2
  39caf2: 2100         	movs	r1, #0x0
  39caf4: 4798         	blx	r3
  39caf6: 9b01         	ldr	r3, [sp, #0x4]
  39caf8: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  39cafc: 681b         	ldr	r3, [r3]
  39cafe: 3390         	adds	r3, #0x90
  39cb00: 681b         	ldr	r3, [r3]
  39cb02: 9a01         	ldr	r2, [sp, #0x4]
  39cb04: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  39cb08: 4610         	mov	r0, r2
  39cb0a: 2100         	movs	r1, #0x0
  39cb0c: 4798         	blx	r3
  39cb0e: 9b01         	ldr	r3, [sp, #0x4]
  39cb10: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  39cb14: 681b         	ldr	r3, [r3]
  39cb16: 3390         	adds	r3, #0x90
  39cb18: 681b         	ldr	r3, [r3]
  39cb1a: 9a01         	ldr	r2, [sp, #0x4]
  39cb1c: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  39cb20: 4610         	mov	r0, r2
  39cb22: 2100         	movs	r1, #0x0
  39cb24: 4798         	blx	r3
  39cb26: 9b01         	ldr	r3, [sp, #0x4]
  39cb28: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  39cb2c: 681b         	ldr	r3, [r3]
  39cb2e: 3390         	adds	r3, #0x90
  39cb30: 681b         	ldr	r3, [r3]
  39cb32: 9a01         	ldr	r2, [sp, #0x4]
  39cb34: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  39cb38: 4610         	mov	r0, r2
  39cb3a: 2100         	movs	r1, #0x0
  39cb3c: 4798         	blx	r3
  39cb3e: 9b01         	ldr	r3, [sp, #0x4]
  39cb40: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  39cb44: 681b         	ldr	r3, [r3]
  39cb46: 3390         	adds	r3, #0x90
  39cb48: 681b         	ldr	r3, [r3]
  39cb4a: 9a01         	ldr	r2, [sp, #0x4]
  39cb4c: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  39cb50: 4610         	mov	r0, r2
  39cb52: 2100         	movs	r1, #0x0
  39cb54: 4798         	blx	r3
  39cb56: e04a         	b	0x39cbee <PlayerLobby::afterReady()+0x1ca> @ imm = #0x94
  39cb58: 9b01         	ldr	r3, [sp, #0x4]
  39cb5a: 681b         	ldr	r3, [r3]
  39cb5c: f503 73ec    	add.w	r3, r3, #0x1d8
  39cb60: 681b         	ldr	r3, [r3]
  39cb62: 9801         	ldr	r0, [sp, #0x4]
  39cb64: 4798         	blx	r3
  39cb66: 9b01         	ldr	r3, [sp, #0x4]
  39cb68: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  39cb6c: 681b         	ldr	r3, [r3]
  39cb6e: 334c         	adds	r3, #0x4c
  39cb70: 681b         	ldr	r3, [r3]
  39cb72: 9a01         	ldr	r2, [sp, #0x4]
  39cb74: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  39cb78: 4611         	mov	r1, r2
  39cb7a: 9a01         	ldr	r2, [sp, #0x4]
  39cb7c: f502 72ae    	add.w	r2, r2, #0x15c
  39cb80: 4608         	mov	r0, r1
  39cb82: 4611         	mov	r1, r2
  39cb84: 4798         	blx	r3
  39cb86: 9b03         	ldr	r3, [sp, #0xc]
  39cb88: 2201         	movs	r2, #0x1
  39cb8a: f8c3 2118    	str.w	r2, [r3, #0x118]
  39cb8e: 9b01         	ldr	r3, [sp, #0x4]
  39cb90: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  39cb94: 681b         	ldr	r3, [r3]
  39cb96: 3390         	adds	r3, #0x90
  39cb98: 681b         	ldr	r3, [r3]
  39cb9a: 9a01         	ldr	r2, [sp, #0x4]
  39cb9c: f8d2 2110    	ldr.w	r2, [r2, #0x110]
  39cba0: 4610         	mov	r0, r2
  39cba2: 2101         	movs	r1, #0x1
  39cba4: 4798         	blx	r3
  39cba6: 9b01         	ldr	r3, [sp, #0x4]
  39cba8: f8d3 310c    	ldr.w	r3, [r3, #0x10c]
  39cbac: 681b         	ldr	r3, [r3]
  39cbae: 3390         	adds	r3, #0x90
  39cbb0: 681b         	ldr	r3, [r3]
  39cbb2: 9a01         	ldr	r2, [sp, #0x4]
  39cbb4: f8d2 210c    	ldr.w	r2, [r2, #0x10c]
  39cbb8: 4610         	mov	r0, r2
  39cbba: 2101         	movs	r1, #0x1
  39cbbc: 4798         	blx	r3
  39cbbe: 9b01         	ldr	r3, [sp, #0x4]
  39cbc0: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  39cbc4: 681b         	ldr	r3, [r3]
  39cbc6: 3390         	adds	r3, #0x90
  39cbc8: 681b         	ldr	r3, [r3]
  39cbca: 9a01         	ldr	r2, [sp, #0x4]
  39cbcc: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  39cbd0: 4610         	mov	r0, r2
  39cbd2: 2101         	movs	r1, #0x1
  39cbd4: 4798         	blx	r3
  39cbd6: 9b01         	ldr	r3, [sp, #0x4]
  39cbd8: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  39cbdc: 681b         	ldr	r3, [r3]
  39cbde: 3390         	adds	r3, #0x90
  39cbe0: 681b         	ldr	r3, [r3]
  39cbe2: 9a01         	ldr	r2, [sp, #0x4]
  39cbe4: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  39cbe8: 4610         	mov	r0, r2
  39cbea: 2101         	movs	r1, #0x1
  39cbec: 4798         	blx	r3
  39cbee: b008         	add	sp, #0x20
  39cbf0: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x39cbf1); words below are literal-pool data ---
  39cbf2: bf00         	nop
  39cbf4: 54b4         	strb	r4, [r6, r2]
  39cbf6: 0043         	lsls	r3, r0, #0x1

// ==== PlayerLobby::onReady
//      file offset 0x39cbf8 (= ELF address; Ghidra 0x3acbf8), 160 bytes, Thumb-2
  39cbf8: b510         	push	{r4, lr}
  39cbfa: b082         	sub	sp, #0x8
  39cbfc: 9001         	str	r0, [sp, #0x4]
  39cbfe: 9100         	str	r1, [sp]
  39cc00: 4c23         	ldr	r4, [pc, #0x8c]         @ 0x39cc90 <PlayerLobby::onReady(cocos2d::CCObject*)+0x98>
  39cc02: 447c         	add	r4, pc
  39cc04: 9b01         	ldr	r3, [sp, #0x4]
  39cc06: f8d3 3104    	ldr.w	r3, [r3, #0x104]
  39cc0a: 681b         	ldr	r3, [r3]
  39cc0c: 3394         	adds	r3, #0x94
  39cc0e: 681b         	ldr	r3, [r3]
  39cc10: 9a01         	ldr	r2, [sp, #0x4]
  39cc12: f8d2 2104    	ldr.w	r2, [r2, #0x104]
  39cc16: 4610         	mov	r0, r2
  39cc18: 4798         	blx	r3
  39cc1a: 4603         	mov	r3, r0
  39cc1c: f083 0301    	eor	r3, r3, #0x1
  39cc20: b2db         	uxtb	r3, r3
  39cc22: 2b00         	cmp	r3, #0x0
  39cc24: d11e         	bne	0x39cc64 <PlayerLobby::onReady(cocos2d::CCObject*)+0x6c> @ imm = #0x3c
  39cc26: 9b01         	ldr	r3, [sp, #0x4]
  39cc28: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  39cc2c: 681b         	ldr	r3, [r3]
  39cc2e: 3394         	adds	r3, #0x94
  39cc30: 681b         	ldr	r3, [r3]
  39cc32: 9a01         	ldr	r2, [sp, #0x4]
  39cc34: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  39cc38: 4610         	mov	r0, r2
  39cc3a: 4798         	blx	r3
  39cc3c: 4603         	mov	r3, r0
  39cc3e: f083 0301    	eor	r3, r3, #0x1
  39cc42: b2db         	uxtb	r3, r3
  39cc44: 2b00         	cmp	r3, #0x0
  39cc46: d10d         	bne	0x39cc64 <PlayerLobby::onReady(cocos2d::CCObject*)+0x6c> @ imm = #0x1a
  39cc48: 9b01         	ldr	r3, [sp, #0x4]
  39cc4a: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  39cc4e: 681b         	ldr	r3, [r3]
  39cc50: 3394         	adds	r3, #0x94
  39cc52: 681b         	ldr	r3, [r3]
  39cc54: 9a01         	ldr	r2, [sp, #0x4]
  39cc56: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  39cc5a: 4610         	mov	r0, r2
  39cc5c: 4798         	blx	r3
  39cc5e: 4603         	mov	r3, r0
  39cc60: 2b00         	cmp	r3, #0x0
  39cc62: d001         	beq	0x39cc68 <PlayerLobby::onReady(cocos2d::CCObject*)+0x70> @ imm = #0x2
  39cc64: 2301         	movs	r3, #0x1
  39cc66: e000         	b	0x39cc6a <PlayerLobby::onReady(cocos2d::CCObject*)+0x72> @ imm = #0x0
  39cc68: 2300         	movs	r3, #0x0
  39cc6a: 2b00         	cmp	r3, #0x0
  39cc6c: d000         	beq	0x39cc70 <PlayerLobby::onReady(cocos2d::CCObject*)+0x78> @ imm = #0x0
  39cc6e: e00d         	b	0x39cc8c <PlayerLobby::onReady(cocos2d::CCObject*)+0x94> @ imm = #0x1a
  39cc70: 4b08         	ldr	r3, [pc, #0x20]         @ 0x39cc94 <PlayerLobby::onReady(cocos2d::CCObject*)+0x9c>
  39cc72: 58e3         	ldr	r3, [r4, r3]
  39cc74: 681b         	ldr	r3, [r3]
  39cc76: 4618         	mov	r0, r3
  39cc78: 210d         	movs	r1, #0xd
  39cc7a: f05b f8a1    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x5b142
  39cc7e: 9b01         	ldr	r3, [sp, #0x4]
  39cc80: 681b         	ldr	r3, [r3]
  39cc82: f503 73de    	add.w	r3, r3, #0x1bc
  39cc86: 681b         	ldr	r3, [r3]
  39cc88: 9801         	ldr	r0, [sp, #0x4]
  39cc8a: 4798         	blx	r3
  39cc8c: b002         	add	sp, #0x8
  39cc8e: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x39cc8f); words below are literal-pool data ---
  39cc90: 5e06         	ldrsh	r6, [r0, r0]
  39cc92: 0059         	lsls	r1, r3, #0x1
  39cc94: d730         	bvc	0x39ccf8 <PlayerLobby::setCoopMode()+0x60> @ imm = #0x60
  39cc96: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== PlayerLobby::setCoopMode
//      file offset 0x39cc98 (= ELF address; Ghidra 0x3acc98), 104 bytes, Thumb-2
  39cc98: b510         	push	{r4, lr}
  39cc9a: b082         	sub	sp, #0x8
  39cc9c: 9001         	str	r0, [sp, #0x4]
  39cc9e: 4c14         	ldr	r4, [pc, #0x50]         @ 0x39ccf0 <PlayerLobby::setCoopMode()+0x58>
  39cca0: 447c         	add	r4, pc
  39cca2: 4b14         	ldr	r3, [pc, #0x50]         @ 0x39ccf4 <PlayerLobby::setCoopMode()+0x5c>
  39cca4: 58e3         	ldr	r3, [r4, r3]
  39cca6: 2202         	movs	r2, #0x2
  39cca8: 601a         	str	r2, [r3]
  39ccaa: 4b13         	ldr	r3, [pc, #0x4c]         @ 0x39ccf8 <PlayerLobby::setCoopMode()+0x60>
  39ccac: 58e3         	ldr	r3, [r4, r3]
  39ccae: 2201         	movs	r2, #0x1
  39ccb0: 601a         	str	r2, [r3]
  39ccb2: 9b01         	ldr	r3, [sp, #0x4]
  39ccb4: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  39ccb8: 681b         	ldr	r3, [r3]
  39ccba: 334c         	adds	r3, #0x4c
  39ccbc: 681b         	ldr	r3, [r3]
  39ccbe: 9a01         	ldr	r2, [sp, #0x4]
  39ccc0: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  39ccc4: 4610         	mov	r0, r2
  39ccc6: 4a0d         	ldr	r2, [pc, #0x34]         @ 0x39ccfc <PlayerLobby::setCoopMode()+0x64>
  39ccc8: 58a2         	ldr	r2, [r4, r2]
  39ccca: 4611         	mov	r1, r2
  39cccc: 4798         	blx	r3
  39ccce: 9b01         	ldr	r3, [sp, #0x4]
  39ccd0: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  39ccd4: 681b         	ldr	r3, [r3]
  39ccd6: 334c         	adds	r3, #0x4c
  39ccd8: 681b         	ldr	r3, [r3]
  39ccda: 9a01         	ldr	r2, [sp, #0x4]
  39ccdc: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  39cce0: 4610         	mov	r0, r2
  39cce2: 4a06         	ldr	r2, [pc, #0x18]         @ 0x39ccfc <PlayerLobby::setCoopMode()+0x64>
  39cce4: 58a2         	ldr	r2, [r4, r2]
  39cce6: 4611         	mov	r1, r2
  39cce8: 4798         	blx	r3
  39ccea: b002         	add	sp, #0x8
  39ccec: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x39cced); words below are literal-pool data ---
  39ccee: bf00         	nop
  39ccf0: 5d68         	ldrb	r0, [r5, r5]
  39ccf2: 0059         	lsls	r1, r3, #0x1
  39ccf4: daa0         	bge	0x39cc38 <PlayerLobby::onReady(cocos2d::CCObject*)+0x40> @ imm = #-0xc0
  39ccf6: ffff d7d0    	<unknown>
  39ccfa: ffff d954    	vqrshrn.u64	d29, q2, #0x1
  39ccfe: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== PlayerLobby::onConfirmedExitGame
//      file offset 0x39cd00 (= ELF address; Ghidra 0x3acd00), 168 bytes, Thumb-2
  39cd00: b510         	push	{r4, lr}
  39cd02: b084         	sub	sp, #0x10
  39cd04: 9001         	str	r0, [sp, #0x4]
  39cd06: 9b01         	ldr	r3, [sp, #0x4]
  39cd08: 2201         	movs	r2, #0x1
  39cd0a: f883 20f0    	strb.w	r2, [r3, #0xf0]
  39cd0e: f243 fccf    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x24399e
  39cd12: 4604         	mov	r4, r0
  39cd14: ab02         	add	r3, sp, #0x8
  39cd16: 4618         	mov	r0, r3
  39cd18: f3ed fb6c    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ed6d8
  39cd1c: aa03         	add	r2, sp, #0xc
  39cd1e: ab02         	add	r3, sp, #0x8
  39cd20: 4610         	mov	r0, r2
  39cd22: 4a1f         	ldr	r2, [pc, #0x7c]         @ 0x39cda0 <PlayerLobby::onConfirmedExitGame()+0xa0>
  39cd24: 447a         	add	r2, pc
  39cd26: 4611         	mov	r1, r2
  39cd28: 461a         	mov	r2, r3
  39cd2a: f019 f699    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x419d32
  39cd2e: ab03         	add	r3, sp, #0xc
  39cd30: 4618         	mov	r0, r3
  39cd32: f1fc fe83    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1fcd06
  39cd36: 4603         	mov	r3, r0
  39cd38: 4620         	mov	r0, r4
  39cd3a: 4a1a         	ldr	r2, [pc, #0x68]         @ 0x39cda4 <PlayerLobby::onConfirmedExitGame()+0xa4>
  39cd3c: 447a         	add	r2, pc
  39cd3e: 4611         	mov	r1, r2
  39cd40: 461a         	mov	r2, r3
  39cd42: f243 fef3    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x243de6
  39cd46: ab03         	add	r3, sp, #0xc
  39cd48: 4618         	mov	r0, r3
  39cd4a: f018 f5e3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x418bc6
  39cd4e: ab02         	add	r3, sp, #0x8
  39cd50: 4618         	mov	r0, r3
  39cd52: f3ed fb53    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed6a6
  39cd56: f7da fef3    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2521a
  39cd5a: 4603         	mov	r3, r0
  39cd5c: 4618         	mov	r0, r3
  39cd5e: f7dc ffa1    	bl	0x379ca4 <NetworkManager::endMatch()> @ imm = #-0x230be
  39cd62: 9b01         	ldr	r3, [sp, #0x4]
  39cd64: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  39cd68: 2b00         	cmp	r3, #0x0
  39cd6a: d016         	beq	0x39cd9a <PlayerLobby::onConfirmedExitGame()+0x9a> @ imm = #0x2c
  39cd6c: 9b01         	ldr	r3, [sp, #0x4]
  39cd6e: f8d3 3178    	ldr.w	r3, [r3, #0x178]
  39cd72: 681b         	ldr	r3, [r3]
  39cd74: 3304         	adds	r3, #0x4
  39cd76: 681b         	ldr	r3, [r3]
  39cd78: 9a01         	ldr	r2, [sp, #0x4]
  39cd7a: f8d2 2178    	ldr.w	r2, [r2, #0x178]
  39cd7e: 4610         	mov	r0, r2
  39cd80: 4798         	blx	r3
  39cd82: e00a         	b	0x39cd9a <PlayerLobby::onConfirmedExitGame()+0x9a> @ imm = #0x14
  39cd84: ab03         	add	r3, sp, #0xc
  39cd86: 4618         	mov	r0, r3
  39cd88: f018 f5c4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x418b88
  39cd8c: e7ff         	b	0x39cd8e <PlayerLobby::onConfirmedExitGame()+0x8e> @ imm = #-0x2
  39cd8e: ab02         	add	r3, sp, #0x8
  39cd90: 4618         	mov	r0, r3
  39cd92: f3ed fb33    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed666
  39cd96: f3eb f989    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3eb312
  39cd9a: b004         	add	sp, #0x10
  39cd9c: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x39cd9d); words below are literal-pool data ---
  39cd9e: bf00         	nop
  39cda0: 5420         	strb	r0, [r4, r0]
  39cda2: 0043         	lsls	r3, r0, #0x1
  39cda4: 5418         	strb	r0, [r3, r0]
  39cda6: 0043         	lsls	r3, r0, #0x1

// ==== PlayerLobby::onExitGame
//      file offset 0x39cda8 (= ELF address; Ghidra 0x3acda8), 424 bytes, Thumb-2
  39cda8: b530         	push	{r4, r5, lr}
  39cdaa: b08d         	sub	sp, #0x34
  39cdac: 9003         	str	r0, [sp, #0xc]
  39cdae: 9102         	str	r1, [sp, #0x8]
  39cdb0: 4c60         	ldr	r4, [pc, #0x180]        @ 0x39cf34 <PlayerLobby::onExitGame(cocos2d::CCObject*)+0x18c>
  39cdb2: 447c         	add	r4, pc
  39cdb4: 9b03         	ldr	r3, [sp, #0xc]
  39cdb6: f893 30f0    	ldrb.w	r3, [r3, #0xf0]
  39cdba: 2b00         	cmp	r3, #0x0
  39cdbc: d000         	beq	0x39cdc0 <PlayerLobby::onExitGame(cocos2d::CCObject*)+0x18> @ imm = #0x0
  39cdbe: e0b6         	b	0x39cf2e <PlayerLobby::onExitGame(cocos2d::CCObject*)+0x186> @ imm = #0x16c
  39cdc0: 4b5d         	ldr	r3, [pc, #0x174]        @ 0x39cf38 <PlayerLobby::onExitGame(cocos2d::CCObject*)+0x190>
  39cdc2: 58e3         	ldr	r3, [r4, r3]
  39cdc4: 681b         	ldr	r3, [r3]
  39cdc6: 4618         	mov	r0, r3
  39cdc8: 210d         	movs	r1, #0xd
  39cdca: f05a fff9    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x5aff2
  39cdce: f7da feb7    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x25292
  39cdd2: 4603         	mov	r3, r0
  39cdd4: 4618         	mov	r0, r3
  39cdd6: f7db fc57    	bl	0x378688 <NetworkManager::getPeerCount()> @ imm = #-0x24752
  39cdda: 4603         	mov	r3, r0
  39cddc: 2b00         	cmp	r3, #0x0
  39cdde: bf14         	ite	ne
  39cde0: 2300         	movne	r3, #0x0
  39cde2: 2301         	moveq	r3, #0x1
  39cde4: b2db         	uxtb	r3, r3
  39cde6: 2b00         	cmp	r3, #0x0
  39cde8: d007         	beq	0x39cdfa <PlayerLobby::onExitGame(cocos2d::CCObject*)+0x52> @ imm = #0xe
  39cdea: 9b03         	ldr	r3, [sp, #0xc]
  39cdec: 681b         	ldr	r3, [r3]
  39cdee: f503 730c    	add.w	r3, r3, #0x230
  39cdf2: 681b         	ldr	r3, [r3]
  39cdf4: 9803         	ldr	r0, [sp, #0xc]
  39cdf6: 4798         	blx	r3
  39cdf8: e099         	b	0x39cf2e <PlayerLobby::onExitGame(cocos2d::CCObject*)+0x186> @ imm = #0x132
  39cdfa: 9b03         	ldr	r3, [sp, #0xc]
  39cdfc: 2201         	movs	r2, #0x1
  39cdfe: f883 20f1    	strb.w	r2, [r3, #0xf1]
  39ce02: ab06         	add	r3, sp, #0x18
  39ce04: 4618         	mov	r0, r3
  39ce06: f3ed faf5    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ed5ea
  39ce0a: aa0a         	add	r2, sp, #0x28
  39ce0c: ab06         	add	r3, sp, #0x18
  39ce0e: 4610         	mov	r0, r2
  39ce10: 4a4a         	ldr	r2, [pc, #0x128]        @ 0x39cf3c <PlayerLobby::onExitGame(cocos2d::CCObject*)+0x194>
  39ce12: 447a         	add	r2, pc
  39ce14: 4611         	mov	r1, r2
  39ce16: 461a         	mov	r2, r3
  39ce18: f019 f622    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x419c44
  39ce1c: ab07         	add	r3, sp, #0x1c
  39ce1e: 4618         	mov	r0, r3
  39ce20: f3ed fae8    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ed5d0
  39ce24: aa0b         	add	r2, sp, #0x2c
  39ce26: ab07         	add	r3, sp, #0x1c
  39ce28: 4610         	mov	r0, r2
  39ce2a: 4a45         	ldr	r2, [pc, #0x114]        @ 0x39cf40 <PlayerLobby::onExitGame(cocos2d::CCObject*)+0x198>
  39ce2c: 447a         	add	r2, pc
  39ce2e: 4611         	mov	r1, r2
  39ce30: 461a         	mov	r2, r3
  39ce32: f019 f615    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x419c2a
  39ce36: ab04         	add	r3, sp, #0x10
  39ce38: 4618         	mov	r0, r3
  39ce3a: f3ed fadb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ed5b6
  39ce3e: aa08         	add	r2, sp, #0x20
  39ce40: ab04         	add	r3, sp, #0x10
  39ce42: 4610         	mov	r0, r2
  39ce44: 4a3f         	ldr	r2, [pc, #0xfc]         @ 0x39cf44 <PlayerLobby::onExitGame(cocos2d::CCObject*)+0x19c>
  39ce46: 447a         	add	r2, pc
  39ce48: 4611         	mov	r1, r2
  39ce4a: 461a         	mov	r2, r3
  39ce4c: f019 f608    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x419c10
  39ce50: ab08         	add	r3, sp, #0x20
  39ce52: 4618         	mov	r0, r3
  39ce54: f1fc fdf2    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1fcbe4
  39ce58: 4605         	mov	r5, r0
  39ce5a: ab05         	add	r3, sp, #0x14
  39ce5c: 4618         	mov	r0, r3
  39ce5e: f3ed fac9    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ed592
  39ce62: aa09         	add	r2, sp, #0x24
  39ce64: ab05         	add	r3, sp, #0x14
  39ce66: 4610         	mov	r0, r2
  39ce68: 4a37         	ldr	r2, [pc, #0xdc]         @ 0x39cf48 <PlayerLobby::onExitGame(cocos2d::CCObject*)+0x1a0>
  39ce6a: 447a         	add	r2, pc
  39ce6c: 4611         	mov	r1, r2
  39ce6e: 461a         	mov	r2, r3
  39ce70: f019 f5f6    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x419bec
  39ce74: ab09         	add	r3, sp, #0x24
  39ce76: 4618         	mov	r0, r3
  39ce78: f1fc fde0    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1fcbc0
  39ce7c: 4603         	mov	r3, r0
  39ce7e: 4628         	mov	r0, r5
  39ce80: 4619         	mov	r1, r3
  39ce82: 2200         	movs	r2, #0x0
  39ce84: f1fc ffc4    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1fcf88
  39ce88: 4603         	mov	r3, r0
  39ce8a: 9803         	ldr	r0, [sp, #0xc]
  39ce8c: a90a         	add	r1, sp, #0x28
  39ce8e: aa0b         	add	r2, sp, #0x2c
  39ce90: 2500         	movs	r5, #0x0
  39ce92: 9500         	str	r5, [sp]
  39ce94: 9001         	str	r0, [sp, #0x4]
  39ce96: 482d         	ldr	r0, [pc, #0xb4]         @ 0x39cf4c <PlayerLobby::onExitGame(cocos2d::CCObject*)+0x1a4>
  39ce98: 5820         	ldr	r0, [r4, r0]
  39ce9a: f742 fcab    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xbd6aa
  39ce9e: ab09         	add	r3, sp, #0x24
  39cea0: 4618         	mov	r0, r3
  39cea2: f018 f537    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x418a6e
  39cea6: ab05         	add	r3, sp, #0x14
  39cea8: 4618         	mov	r0, r3
  39ceaa: f3ed faa7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed54e
  39ceae: ab08         	add	r3, sp, #0x20
  39ceb0: 4618         	mov	r0, r3
  39ceb2: f018 f52f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x418a5e
  39ceb6: ab04         	add	r3, sp, #0x10
  39ceb8: 4618         	mov	r0, r3
  39ceba: f3ed fa9f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed53e
  39cebe: ab0b         	add	r3, sp, #0x2c
  39cec0: 4618         	mov	r0, r3
  39cec2: f018 f527    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x418a4e
  39cec6: ab07         	add	r3, sp, #0x1c
  39cec8: 4618         	mov	r0, r3
  39ceca: f3ed fa97    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed52e
  39cece: ab0a         	add	r3, sp, #0x28
  39ced0: 4618         	mov	r0, r3
  39ced2: f018 f51f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x418a3e
  39ced6: ab06         	add	r3, sp, #0x18
  39ced8: 4618         	mov	r0, r3
  39ceda: f3ed fa8f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed51e
  39cede: e026         	b	0x39cf2e <PlayerLobby::onExitGame(cocos2d::CCObject*)+0x186> @ imm = #0x4c
  39cee0: ab09         	add	r3, sp, #0x24
  39cee2: 4618         	mov	r0, r3
  39cee4: f018 f516    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x418a2c
  39cee8: e7ff         	b	0x39ceea <PlayerLobby::onExitGame(cocos2d::CCObject*)+0x142> @ imm = #-0x2
  39ceea: ab05         	add	r3, sp, #0x14
  39ceec: 4618         	mov	r0, r3
  39ceee: f3ed fa85    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed50a
  39cef2: e7ff         	b	0x39cef4 <PlayerLobby::onExitGame(cocos2d::CCObject*)+0x14c> @ imm = #-0x2
  39cef4: ab08         	add	r3, sp, #0x20
  39cef6: 4618         	mov	r0, r3
  39cef8: f018 f50c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x418a18
  39cefc: e7ff         	b	0x39cefe <PlayerLobby::onExitGame(cocos2d::CCObject*)+0x156> @ imm = #-0x2
  39cefe: ab04         	add	r3, sp, #0x10
  39cf00: 4618         	mov	r0, r3
  39cf02: f3ed fa7b    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed4f6
  39cf06: ab0b         	add	r3, sp, #0x2c
  39cf08: 4618         	mov	r0, r3
  39cf0a: f018 f503    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x418a06
  39cf0e: e7ff         	b	0x39cf10 <PlayerLobby::onExitGame(cocos2d::CCObject*)+0x168> @ imm = #-0x2
  39cf10: ab07         	add	r3, sp, #0x1c
  39cf12: 4618         	mov	r0, r3
  39cf14: f3ed fa72    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed4e4
  39cf18: ab0a         	add	r3, sp, #0x28
  39cf1a: 4618         	mov	r0, r3
  39cf1c: f018 f4fa    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4189f4
  39cf20: e7ff         	b	0x39cf22 <PlayerLobby::onExitGame(cocos2d::CCObject*)+0x17a> @ imm = #-0x2
  39cf22: ab06         	add	r3, sp, #0x18
  39cf24: 4618         	mov	r0, r3
  39cf26: f3ed fa69    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed4d2
  39cf2a: f3eb f8bf    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3eb17e
  39cf2e: b00d         	add	sp, #0x34
  39cf30: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x39cf31); words below are literal-pool data ---
  39cf32: bf00         	nop
  39cf34: 5c56         	ldrb	r6, [r2, r1]
  39cf36: 0059         	lsls	r1, r3, #0x1
  39cf38: d730         	bvc	0x39cf9c <PlayerLobby::alertResponse(int)+0x28> @ imm = #0x60
  39cf3a: ffff 5356    	<unknown>
  39cf3e: 0043         	lsls	r3, r0, #0x1
  39cf40: 534c         	strh	r4, [r1, r5]
  39cf42: 0043         	lsls	r3, r0, #0x1
  39cf44: 535e         	strh	r6, [r3, r5]
  39cf46: 0043         	lsls	r3, r0, #0x1
  39cf48: 51f6         	str	r6, [r6, r7]
  39cf4a: 0043         	lsls	r3, r0, #0x1
  39cf4c: dd50         	ble	0x39cff0 <PlayerLobby::onChat(cocos2d::CCObject*)+0x28> @ imm = #0xa0
  39cf4e: ffff b500    	<unknown>

// ==== PlayerLobby::messageBoxHandler
//      file offset 0x39cf50 (= ELF address; Ghidra 0x3acf50), 36 bytes, Thumb-2
  39cf50: b500         	push	{lr}
  39cf52: b087         	sub	sp, #0x1c
  39cf54: 9003         	str	r0, [sp, #0xc]
  39cf56: 9102         	str	r1, [sp, #0x8]
  39cf58: 9201         	str	r2, [sp, #0x4]
  39cf5a: 9b01         	ldr	r3, [sp, #0x4]
  39cf5c: 9305         	str	r3, [sp, #0x14]
  39cf5e: 9b05         	ldr	r3, [sp, #0x14]
  39cf60: 681b         	ldr	r3, [r3]
  39cf62: f503 73ce    	add.w	r3, r3, #0x19c
  39cf66: 681b         	ldr	r3, [r3]
  39cf68: 9805         	ldr	r0, [sp, #0x14]
  39cf6a: 9903         	ldr	r1, [sp, #0xc]
  39cf6c: 4798         	blx	r3
  39cf6e: b007         	add	sp, #0x1c
  39cf70: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobby::alertResponse
//      file offset 0x39cf74 (= ELF address; Ghidra 0x3acf74), 84 bytes, Thumb-2
  39cf74: b500         	push	{lr}
  39cf76: b083         	sub	sp, #0xc
  39cf78: 9001         	str	r0, [sp, #0x4]
  39cf7a: 9100         	str	r1, [sp]
  39cf7c: 9b01         	ldr	r3, [sp, #0x4]
  39cf7e: f893 30f2    	ldrb.w	r3, [r3, #0xf2]
  39cf82: 2b00         	cmp	r3, #0x0
  39cf84: d009         	beq	0x39cf9a <PlayerLobby::alertResponse(int)+0x26> @ imm = #0x12
  39cf86: 9b01         	ldr	r3, [sp, #0x4]
  39cf88: 2200         	movs	r2, #0x0
  39cf8a: f883 20f2    	strb.w	r2, [r3, #0xf2]
  39cf8e: f7da fdd7    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x25452
  39cf92: 4603         	mov	r3, r0
  39cf94: 4618         	mov	r0, r3
  39cf96: f7dc ff9b    	bl	0x379ed0 <NetworkManager::authenticateLocalPlayer()> @ imm = #-0x230ca
  39cf9a: 9b01         	ldr	r3, [sp, #0x4]
  39cf9c: f893 30f1    	ldrb.w	r3, [r3, #0xf1]
  39cfa0: 2b00         	cmp	r3, #0x0
  39cfa2: d00e         	beq	0x39cfc2 <PlayerLobby::alertResponse(int)+0x4e> @ imm = #0x1c
  39cfa4: 9b00         	ldr	r3, [sp]
  39cfa6: 2b01         	cmp	r3, #0x1
  39cfa8: d106         	bne	0x39cfb8 <PlayerLobby::alertResponse(int)+0x44> @ imm = #0xc
  39cfaa: 9b01         	ldr	r3, [sp, #0x4]
  39cfac: 681b         	ldr	r3, [r3]
  39cfae: f503 730c    	add.w	r3, r3, #0x230
  39cfb2: 681b         	ldr	r3, [r3]
  39cfb4: 9801         	ldr	r0, [sp, #0x4]
  39cfb6: 4798         	blx	r3
  39cfb8: 9b01         	ldr	r3, [sp, #0x4]
  39cfba: 2200         	movs	r2, #0x0
  39cfbc: f883 20f1    	strb.w	r2, [r3, #0xf1]
  39cfc0: bf00         	nop
  39cfc2: b003         	add	sp, #0xc
  39cfc4: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobby::onChat
//      file offset 0x39cfc8 (= ELF address; Ghidra 0x3acfc8), 80 bytes, Thumb-2
  39cfc8: b500         	push	{lr}
  39cfca: b083         	sub	sp, #0xc
  39cfcc: 9001         	str	r0, [sp, #0x4]
  39cfce: 9100         	str	r1, [sp]
  39cfd0: 4a0f         	ldr	r2, [pc, #0x3c]         @ 0x39d010 <PlayerLobby::onChat(cocos2d::CCObject*)+0x48>
  39cfd2: 447a         	add	r2, pc
  39cfd4: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x39d014 <PlayerLobby::onChat(cocos2d::CCObject*)+0x4c>
  39cfd6: 58d3         	ldr	r3, [r2, r3]
  39cfd8: 681b         	ldr	r3, [r3]
  39cfda: 4618         	mov	r0, r3
  39cfdc: 210e         	movs	r1, #0xe
  39cfde: f05a feef    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x5adde
  39cfe2: 9b01         	ldr	r3, [sp, #0x4]
  39cfe4: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  39cfe8: 681b         	ldr	r3, [r3]
  39cfea: 3390         	adds	r3, #0x90
  39cfec: 681b         	ldr	r3, [r3]
  39cfee: 9a01         	ldr	r2, [sp, #0x4]
  39cff0: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  39cff4: 4610         	mov	r0, r2
  39cff6: 2101         	movs	r1, #0x1
  39cff8: 4798         	blx	r3
  39cffa: 9b01         	ldr	r3, [sp, #0x4]
  39cffc: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  39d000: 4618         	mov	r0, r3
  39d002: 2100         	movs	r1, #0x0
  39d004: 2201         	movs	r2, #0x1
  39d006: f0b9 fc8f    	bl	0x456928 <cocos2d::extension::CCEditBox::touchDownAction(cocos2d::CCObject*, unsigned int)> @ imm = #0xb991e
  39d00a: b003         	add	sp, #0xc
  39d00c: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x39d00f); words below are literal-pool data ---
  39d010: 5a36         	ldrh	r6, [r6, r0]
  39d012: 0059         	lsls	r1, r3, #0x1
  39d014: d730         	bvc	0x39d078 <PlayerLobby::onInvite(cocos2d::CCObject*)+0x60> @ imm = #0x60
  39d016: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== PlayerLobby::onInvite
//      file offset 0x39d018 (= ELF address; Ghidra 0x3ad018), 404 bytes, Thumb-2
  39d018: b530         	push	{r4, r5, lr}
  39d01a: b08d         	sub	sp, #0x34
  39d01c: 9003         	str	r0, [sp, #0xc]
  39d01e: 9102         	str	r1, [sp, #0x8]
  39d020: 4c5b         	ldr	r4, [pc, #0x16c]        @ 0x39d190 <PlayerLobby::onInvite(cocos2d::CCObject*)+0x178>
  39d022: 447c         	add	r4, pc
  39d024: f7da fd8c    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x254e8
  39d028: 4603         	mov	r3, r0
  39d02a: 4618         	mov	r0, r3
  39d02c: f096 fe40    	bl	0x433cb0 <NetworkManagerBridge::isInternetReachable()> @ imm = #0x96c80
  39d030: 4603         	mov	r3, r0
  39d032: f083 0301    	eor	r3, r3, #0x1
  39d036: b2db         	uxtb	r3, r3
  39d038: 2b00         	cmp	r3, #0x0
  39d03a: d05a         	beq	0x39d0f2 <PlayerLobby::onInvite(cocos2d::CCObject*)+0xda> @ imm = #0xb4
  39d03c: 4b55         	ldr	r3, [pc, #0x154]        @ 0x39d194 <PlayerLobby::onInvite(cocos2d::CCObject*)+0x17c>
  39d03e: 58e3         	ldr	r3, [r4, r3]
  39d040: 681b         	ldr	r3, [r3]
  39d042: 4618         	mov	r0, r3
  39d044: 210e         	movs	r1, #0xe
  39d046: f05a febb    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x5ad76
  39d04a: ab06         	add	r3, sp, #0x18
  39d04c: 4618         	mov	r0, r3
  39d04e: f3ed f9d1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ed3a2
  39d052: aa09         	add	r2, sp, #0x24
  39d054: ab06         	add	r3, sp, #0x18
  39d056: 4610         	mov	r0, r2
  39d058: 4a4f         	ldr	r2, [pc, #0x13c]        @ 0x39d198 <PlayerLobby::onInvite(cocos2d::CCObject*)+0x180>
  39d05a: 447a         	add	r2, pc
  39d05c: 4611         	mov	r1, r2
  39d05e: 461a         	mov	r2, r3
  39d060: f019 f4fe    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4199fc
  39d064: ab07         	add	r3, sp, #0x1c
  39d066: 4618         	mov	r0, r3
  39d068: f3ed f9c4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ed388
  39d06c: aa0a         	add	r2, sp, #0x28
  39d06e: ab07         	add	r3, sp, #0x1c
  39d070: 4610         	mov	r0, r2
  39d072: 4a4a         	ldr	r2, [pc, #0x128]        @ 0x39d19c <PlayerLobby::onInvite(cocos2d::CCObject*)+0x184>
  39d074: 447a         	add	r2, pc
  39d076: 4611         	mov	r1, r2
  39d078: 461a         	mov	r2, r3
  39d07a: f019 f4f1    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4199e2
  39d07e: ab05         	add	r3, sp, #0x14
  39d080: 4618         	mov	r0, r3
  39d082: f3ed f9b7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ed36e
  39d086: aa08         	add	r2, sp, #0x20
  39d088: ab05         	add	r3, sp, #0x14
  39d08a: 4610         	mov	r0, r2
  39d08c: 4a44         	ldr	r2, [pc, #0x110]        @ 0x39d1a0 <PlayerLobby::onInvite(cocos2d::CCObject*)+0x188>
  39d08e: 447a         	add	r2, pc
  39d090: 4611         	mov	r1, r2
  39d092: 461a         	mov	r2, r3
  39d094: f019 f4e4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4199c8
  39d098: ab08         	add	r3, sp, #0x20
  39d09a: 4618         	mov	r0, r3
  39d09c: f1fc fcce    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1fc99c
  39d0a0: 4603         	mov	r3, r0
  39d0a2: 4618         	mov	r0, r3
  39d0a4: 2100         	movs	r1, #0x0
  39d0a6: f1fc feb3    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1fcd66
  39d0aa: 4603         	mov	r3, r0
  39d0ac: 9803         	ldr	r0, [sp, #0xc]
  39d0ae: a909         	add	r1, sp, #0x24
  39d0b0: aa0a         	add	r2, sp, #0x28
  39d0b2: 2500         	movs	r5, #0x0
  39d0b4: 9500         	str	r5, [sp]
  39d0b6: 9001         	str	r0, [sp, #0x4]
  39d0b8: 483a         	ldr	r0, [pc, #0xe8]         @ 0x39d1a4 <PlayerLobby::onInvite(cocos2d::CCObject*)+0x18c>
  39d0ba: 5820         	ldr	r0, [r4, r0]
  39d0bc: f742 fb9a    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xbd8cc
  39d0c0: ab08         	add	r3, sp, #0x20
  39d0c2: 4618         	mov	r0, r3
  39d0c4: f018 f426    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41884c
  39d0c8: ab05         	add	r3, sp, #0x14
  39d0ca: 4618         	mov	r0, r3
  39d0cc: f3ed f996    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed32c
  39d0d0: ab0a         	add	r3, sp, #0x28
  39d0d2: 4618         	mov	r0, r3
  39d0d4: f018 f41e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41883c
  39d0d8: ab07         	add	r3, sp, #0x1c
  39d0da: 4618         	mov	r0, r3
  39d0dc: f3ed f98e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed31c
  39d0e0: ab09         	add	r3, sp, #0x24
  39d0e2: 4618         	mov	r0, r3
  39d0e4: f018 f416    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41882c
  39d0e8: ab06         	add	r3, sp, #0x18
  39d0ea: 4618         	mov	r0, r3
  39d0ec: f3ed f986    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed30c
  39d0f0: e04c         	b	0x39d18c <PlayerLobby::onInvite(cocos2d::CCObject*)+0x174> @ imm = #0x98
  39d0f2: 4b28         	ldr	r3, [pc, #0xa0]         @ 0x39d194 <PlayerLobby::onInvite(cocos2d::CCObject*)+0x17c>
  39d0f4: 58e3         	ldr	r3, [r4, r3]
  39d0f6: 681b         	ldr	r3, [r3]
  39d0f8: 4618         	mov	r0, r3
  39d0fa: 210d         	movs	r1, #0xd
  39d0fc: f05a fe60    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x5acc0
  39d100: f7da fd1e    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x255c4
  39d104: 4603         	mov	r3, r0
  39d106: 4618         	mov	r0, r3
  39d108: f7db f9bc    	bl	0x378484 <NetworkManager::isPlayerAuthenticated()> @ imm = #-0x24c88
  39d10c: 4603         	mov	r3, r0
  39d10e: 2b00         	cmp	r3, #0x0
  39d110: d018         	beq	0x39d144 <PlayerLobby::onInvite(cocos2d::CCObject*)+0x12c> @ imm = #0x30
  39d112: f7da fd15    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x255d6
  39d116: 4602         	mov	r2, r0
  39d118: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x39d1a8 <PlayerLobby::onInvite(cocos2d::CCObject*)+0x190>
  39d11a: 58e3         	ldr	r3, [r4, r3]
  39d11c: 681b         	ldr	r3, [r3]
  39d11e: 4610         	mov	r0, r2
  39d120: 2101         	movs	r1, #0x1
  39d122: 461a         	mov	r2, r3
  39d124: f7dc ffa4    	bl	0x37a070 <NetworkManager::addPlayersToMatch(bool, int)> @ imm = #-0x230b8
  39d128: 9b03         	ldr	r3, [sp, #0xc]
  39d12a: 681b         	ldr	r3, [r3]
  39d12c: f503 73ee    	add.w	r3, r3, #0x1dc
  39d130: 681b         	ldr	r3, [r3]
  39d132: 9803         	ldr	r0, [sp, #0xc]
  39d134: 4798         	blx	r3
  39d136: 4603         	mov	r3, r0
  39d138: 930b         	str	r3, [sp, #0x2c]
  39d13a: 9b0b         	ldr	r3, [sp, #0x2c]
  39d13c: 2201         	movs	r2, #0x1
  39d13e: f8c3 2118    	str.w	r2, [r3, #0x118]
  39d142: e023         	b	0x39d18c <PlayerLobby::onInvite(cocos2d::CCObject*)+0x174> @ imm = #0x46
  39d144: f7da fcfc    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x25608
  39d148: 4603         	mov	r3, r0
  39d14a: 4618         	mov	r0, r3
  39d14c: f7dc fec0    	bl	0x379ed0 <NetworkManager::authenticateLocalPlayer()> @ imm = #-0x23280
  39d150: e01c         	b	0x39d18c <PlayerLobby::onInvite(cocos2d::CCObject*)+0x174> @ imm = #0x38
  39d152: ab08         	add	r3, sp, #0x20
  39d154: 4618         	mov	r0, r3
  39d156: f018 f3dd    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4187ba
  39d15a: e7ff         	b	0x39d15c <PlayerLobby::onInvite(cocos2d::CCObject*)+0x144> @ imm = #-0x2
  39d15c: ab05         	add	r3, sp, #0x14
  39d15e: 4618         	mov	r0, r3
  39d160: f3ed f94c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed298
  39d164: ab0a         	add	r3, sp, #0x28
  39d166: 4618         	mov	r0, r3
  39d168: f018 f3d4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4187a8
  39d16c: e7ff         	b	0x39d16e <PlayerLobby::onInvite(cocos2d::CCObject*)+0x156> @ imm = #-0x2
  39d16e: ab07         	add	r3, sp, #0x1c
  39d170: 4618         	mov	r0, r3
  39d172: f3ed f943    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed286
  39d176: ab09         	add	r3, sp, #0x24
  39d178: 4618         	mov	r0, r3
  39d17a: f018 f3cb    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x418796
  39d17e: e7ff         	b	0x39d180 <PlayerLobby::onInvite(cocos2d::CCObject*)+0x168> @ imm = #-0x2
  39d180: ab06         	add	r3, sp, #0x18
  39d182: 4618         	mov	r0, r3
  39d184: f3ed f93a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed274
  39d188: f3ea ff90    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3eaf20
  39d18c: b00d         	add	sp, #0x34
  39d18e: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x39d18f); words below are literal-pool data ---
  39d190: 59e6         	ldr	r6, [r4, r7]
  39d192: 0059         	lsls	r1, r3, #0x1
  39d194: d730         	bvc	0x39d1f8 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x4c> @ imm = #0x60
  39d196: ffff 5152    	<unknown>
  39d19a: 0043         	lsls	r3, r0, #0x1
  39d19c: 5154         	str	r4, [r2, r5]
  39d19e: 0043         	lsls	r3, r0, #0x1
  39d1a0: 516e         	str	r6, [r5, r5]
  39d1a2: 0043         	lsls	r3, r0, #0x1
  39d1a4: dd50         	ble	0x39d248 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x9c> @ imm = #0xa0
  39d1a6: ffff d838    	vqshrun.s64	d29, q12, #0x1
  39d1aa: ffff b530    	vsli.32	d27, d16, #0x1f

// ==== PlayerLobby::onSearch
//      file offset 0x39d1ac (= ELF address; Ghidra 0x3ad1ac), 700 bytes, Thumb-2
  39d1ac: b530         	push	{r4, r5, lr}
  39d1ae: b08b         	sub	sp, #0x2c
  39d1b0: 9003         	str	r0, [sp, #0xc]
  39d1b2: 9102         	str	r1, [sp, #0x8]
  39d1b4: 4ca3         	ldr	r4, [pc, #0x28c]        @ 0x39d444 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x298>
  39d1b6: 447c         	add	r4, pc
  39d1b8: f7da fcc2    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2567c
  39d1bc: 4603         	mov	r3, r0
  39d1be: 4618         	mov	r0, r3
  39d1c0: f096 fd76    	bl	0x433cb0 <NetworkManagerBridge::isInternetReachable()> @ imm = #0x96aec
  39d1c4: 4603         	mov	r3, r0
  39d1c6: f083 0301    	eor	r3, r3, #0x1
  39d1ca: b2db         	uxtb	r3, r3
  39d1cc: 2b00         	cmp	r3, #0x0
  39d1ce: d05a         	beq	0x39d286 <PlayerLobby::onSearch(cocos2d::CCObject*)+0xda> @ imm = #0xb4
  39d1d0: 4b9d         	ldr	r3, [pc, #0x274]        @ 0x39d448 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x29c>
  39d1d2: 58e3         	ldr	r3, [r4, r3]
  39d1d4: 681b         	ldr	r3, [r3]
  39d1d6: 4618         	mov	r0, r3
  39d1d8: 210e         	movs	r1, #0xe
  39d1da: f05a fdf1    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x5abe2
  39d1de: ab05         	add	r3, sp, #0x14
  39d1e0: 4618         	mov	r0, r3
  39d1e2: f3ed f907    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ed20e
  39d1e6: aa08         	add	r2, sp, #0x20
  39d1e8: ab05         	add	r3, sp, #0x14
  39d1ea: 4610         	mov	r0, r2
  39d1ec: 4a97         	ldr	r2, [pc, #0x25c]        @ 0x39d44c <PlayerLobby::onSearch(cocos2d::CCObject*)+0x2a0>
  39d1ee: 447a         	add	r2, pc
  39d1f0: 4611         	mov	r1, r2
  39d1f2: 461a         	mov	r2, r3
  39d1f4: f019 f434    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x419868
  39d1f8: ab06         	add	r3, sp, #0x18
  39d1fa: 4618         	mov	r0, r3
  39d1fc: f3ed f8fa    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ed1f4
  39d200: aa09         	add	r2, sp, #0x24
  39d202: ab06         	add	r3, sp, #0x18
  39d204: 4610         	mov	r0, r2
  39d206: 4a92         	ldr	r2, [pc, #0x248]        @ 0x39d450 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x2a4>
  39d208: 447a         	add	r2, pc
  39d20a: 4611         	mov	r1, r2
  39d20c: 461a         	mov	r2, r3
  39d20e: f019 f427    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41984e
  39d212: ab04         	add	r3, sp, #0x10
  39d214: 4618         	mov	r0, r3
  39d216: f3ed f8ed    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ed1da
  39d21a: aa07         	add	r2, sp, #0x1c
  39d21c: ab04         	add	r3, sp, #0x10
  39d21e: 4610         	mov	r0, r2
  39d220: 4a8c         	ldr	r2, [pc, #0x230]        @ 0x39d454 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x2a8>
  39d222: 447a         	add	r2, pc
  39d224: 4611         	mov	r1, r2
  39d226: 461a         	mov	r2, r3
  39d228: f019 f41a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x419834
  39d22c: ab07         	add	r3, sp, #0x1c
  39d22e: 4618         	mov	r0, r3
  39d230: f1fc fc04    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1fc808
  39d234: 4603         	mov	r3, r0
  39d236: 4618         	mov	r0, r3
  39d238: 2100         	movs	r1, #0x0
  39d23a: f1fc fde9    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1fcbd2
  39d23e: 4603         	mov	r3, r0
  39d240: 9803         	ldr	r0, [sp, #0xc]
  39d242: a908         	add	r1, sp, #0x20
  39d244: aa09         	add	r2, sp, #0x24
  39d246: 2500         	movs	r5, #0x0
  39d248: 9500         	str	r5, [sp]
  39d24a: 9001         	str	r0, [sp, #0x4]
  39d24c: 4882         	ldr	r0, [pc, #0x208]        @ 0x39d458 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x2ac>
  39d24e: 5820         	ldr	r0, [r4, r0]
  39d250: f742 fad0    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xbda60
  39d254: ab07         	add	r3, sp, #0x1c
  39d256: 4618         	mov	r0, r3
  39d258: f018 f35c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4186b8
  39d25c: ab04         	add	r3, sp, #0x10
  39d25e: 4618         	mov	r0, r3
  39d260: f3ed f8cc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed198
  39d264: ab09         	add	r3, sp, #0x24
  39d266: 4618         	mov	r0, r3
  39d268: f018 f354    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4186a8
  39d26c: ab06         	add	r3, sp, #0x18
  39d26e: 4618         	mov	r0, r3
  39d270: f3ed f8c4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed188
  39d274: ab08         	add	r3, sp, #0x20
  39d276: 4618         	mov	r0, r3
  39d278: f018 f34c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x418698
  39d27c: ab05         	add	r3, sp, #0x14
  39d27e: 4618         	mov	r0, r3
  39d280: f3ed f8bc    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed178
  39d284: e0dc         	b	0x39d440 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x294> @ imm = #0x1b8
  39d286: f7da fc5b    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2574a
  39d28a: 4603         	mov	r3, r0
  39d28c: 4618         	mov	r0, r3
  39d28e: f7db f8f9    	bl	0x378484 <NetworkManager::isPlayerAuthenticated()> @ imm = #-0x24e0e
  39d292: 4603         	mov	r3, r0
  39d294: f083 0301    	eor	r3, r3, #0x1
  39d298: b2db         	uxtb	r3, r3
  39d29a: 2b00         	cmp	r3, #0x0
  39d29c: d057         	beq	0x39d34e <PlayerLobby::onSearch(cocos2d::CCObject*)+0x1a2> @ imm = #0xae
  39d29e: ab05         	add	r3, sp, #0x14
  39d2a0: 4618         	mov	r0, r3
  39d2a2: f3ed f8a7    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ed14e
  39d2a6: aa08         	add	r2, sp, #0x20
  39d2a8: ab05         	add	r3, sp, #0x14
  39d2aa: 4610         	mov	r0, r2
  39d2ac: 4a6b         	ldr	r2, [pc, #0x1ac]        @ 0x39d45c <PlayerLobby::onSearch(cocos2d::CCObject*)+0x2b0>
  39d2ae: 447a         	add	r2, pc
  39d2b0: 4611         	mov	r1, r2
  39d2b2: 461a         	mov	r2, r3
  39d2b4: f019 f3d4    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x4197a8
  39d2b8: ab06         	add	r3, sp, #0x18
  39d2ba: 4618         	mov	r0, r3
  39d2bc: f3ed f89a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ed134
  39d2c0: aa09         	add	r2, sp, #0x24
  39d2c2: ab06         	add	r3, sp, #0x18
  39d2c4: 4610         	mov	r0, r2
  39d2c6: 4a66         	ldr	r2, [pc, #0x198]        @ 0x39d460 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x2b4>
  39d2c8: 447a         	add	r2, pc
  39d2ca: 4611         	mov	r1, r2
  39d2cc: 461a         	mov	r2, r3
  39d2ce: f019 f3c7    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x41978e
  39d2d2: ab04         	add	r3, sp, #0x10
  39d2d4: 4618         	mov	r0, r3
  39d2d6: f3ed f88d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ed11a
  39d2da: aa07         	add	r2, sp, #0x1c
  39d2dc: ab04         	add	r3, sp, #0x10
  39d2de: 4610         	mov	r0, r2
  39d2e0: 4a60         	ldr	r2, [pc, #0x180]        @ 0x39d464 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x2b8>
  39d2e2: 447a         	add	r2, pc
  39d2e4: 4611         	mov	r1, r2
  39d2e6: 461a         	mov	r2, r3
  39d2e8: f019 f3ba    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x419774
  39d2ec: ab07         	add	r3, sp, #0x1c
  39d2ee: 4618         	mov	r0, r3
  39d2f0: f1fc fba4    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1fc748
  39d2f4: 4603         	mov	r3, r0
  39d2f6: 4618         	mov	r0, r3
  39d2f8: 2100         	movs	r1, #0x0
  39d2fa: f1fc fd89    	bl	0x599e10 <cocos2d::CCArray::create(cocos2d::CCObject*, ...)> @ imm = #0x1fcb12
  39d2fe: 4603         	mov	r3, r0
  39d300: 9803         	ldr	r0, [sp, #0xc]
  39d302: a908         	add	r1, sp, #0x20
  39d304: aa09         	add	r2, sp, #0x24
  39d306: 2500         	movs	r5, #0x0
  39d308: 9500         	str	r5, [sp]
  39d30a: 9001         	str	r0, [sp, #0x4]
  39d30c: 4852         	ldr	r0, [pc, #0x148]        @ 0x39d458 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x2ac>
  39d30e: 5820         	ldr	r0, [r4, r0]
  39d310: f742 fa70    	bl	0x2df7f4 <AMessageBox::showAlert(void (*)(int, cocos2d::CCObject*, cocos2d::CCObject*), std::string, std::string, cocos2d::CCArray*, cocos2d::CCObject*, cocos2d::CCObject*)> @ imm = #-0xbdb20
  39d314: ab07         	add	r3, sp, #0x1c
  39d316: 4618         	mov	r0, r3
  39d318: f018 f2fc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4185f8
  39d31c: ab04         	add	r3, sp, #0x10
  39d31e: 4618         	mov	r0, r3
  39d320: f3ed f86c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed0d8
  39d324: ab09         	add	r3, sp, #0x24
  39d326: 4618         	mov	r0, r3
  39d328: f018 f2f4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4185e8
  39d32c: ab06         	add	r3, sp, #0x18
  39d32e: 4618         	mov	r0, r3
  39d330: f3ed f864    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed0c8
  39d334: ab08         	add	r3, sp, #0x20
  39d336: 4618         	mov	r0, r3
  39d338: f018 f2ec    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4185d8
  39d33c: ab05         	add	r3, sp, #0x14
  39d33e: 4618         	mov	r0, r3
  39d340: f3ed f85c    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed0b8
  39d344: 9b03         	ldr	r3, [sp, #0xc]
  39d346: 2201         	movs	r2, #0x1
  39d348: f883 20f2    	strb.w	r2, [r3, #0xf2]
  39d34c: e078         	b	0x39d440 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x294> @ imm = #0xf0
  39d34e: f7da fbf7    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x25812
  39d352: 4603         	mov	r3, r0
  39d354: 4618         	mov	r0, r3
  39d356: f7dc feb5    	bl	0x37a0c4 <NetworkManager::isSearching()> @ imm = #-0x23296
  39d35a: 4603         	mov	r3, r0
  39d35c: 2b00         	cmp	r3, #0x0
  39d35e: d014         	beq	0x39d38a <PlayerLobby::onSearch(cocos2d::CCObject*)+0x1de> @ imm = #0x28
  39d360: f7da fbee    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x25824
  39d364: 4603         	mov	r3, r0
  39d366: 4618         	mov	r0, r3
  39d368: f7dc fe40    	bl	0x379fec <NetworkManager::cancelSearch()> @ imm = #-0x23380
  39d36c: 9b03         	ldr	r3, [sp, #0xc]
  39d36e: 681b         	ldr	r3, [r3]
  39d370: f503 7309    	add.w	r3, r3, #0x224
  39d374: 681b         	ldr	r3, [r3]
  39d376: 9803         	ldr	r0, [sp, #0xc]
  39d378: 4798         	blx	r3
  39d37a: 4b33         	ldr	r3, [pc, #0xcc]         @ 0x39d448 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x29c>
  39d37c: 58e3         	ldr	r3, [r4, r3]
  39d37e: 681b         	ldr	r3, [r3]
  39d380: 4618         	mov	r0, r3
  39d382: 210e         	movs	r1, #0xe
  39d384: f05a fd1c    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x5aa38
  39d388: e05a         	b	0x39d440 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x294> @ imm = #0xb4
  39d38a: f7da fbd9    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2584e
  39d38e: 4603         	mov	r3, r0
  39d390: 4618         	mov	r0, r3
  39d392: f7dc fec3    	bl	0x37a11c <NetworkManager::canSearch()> @ imm = #-0x2327a
  39d396: 4603         	mov	r3, r0
  39d398: 2b00         	cmp	r3, #0x0
  39d39a: d051         	beq	0x39d440 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x294> @ imm = #0xa2
  39d39c: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x39d448 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x29c>
  39d39e: 58e3         	ldr	r3, [r4, r3]
  39d3a0: 681b         	ldr	r3, [r3]
  39d3a2: 4618         	mov	r0, r3
  39d3a4: 210d         	movs	r1, #0xd
  39d3a6: f05a fd0b    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x5aa16
  39d3aa: f7da fbc9    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2586e
  39d3ae: 4603         	mov	r3, r0
  39d3b0: 4618         	mov	r0, r3
  39d3b2: f7db f867    	bl	0x378484 <NetworkManager::isPlayerAuthenticated()> @ imm = #-0x24f32
  39d3b6: 4603         	mov	r3, r0
  39d3b8: 2b00         	cmp	r3, #0x0
  39d3ba: d041         	beq	0x39d440 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x294> @ imm = #0x82
  39d3bc: 9b03         	ldr	r3, [sp, #0xc]
  39d3be: 681b         	ldr	r3, [r3]
  39d3c0: f503 730b    	add.w	r3, r3, #0x22c
  39d3c4: 681b         	ldr	r3, [r3]
  39d3c6: 9803         	ldr	r0, [sp, #0xc]
  39d3c8: 4798         	blx	r3
  39d3ca: e039         	b	0x39d440 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x294> @ imm = #0x72
  39d3cc: ab07         	add	r3, sp, #0x1c
  39d3ce: 4618         	mov	r0, r3
  39d3d0: f018 f2a0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x418540
  39d3d4: e7ff         	b	0x39d3d6 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x22a> @ imm = #-0x2
  39d3d6: ab04         	add	r3, sp, #0x10
  39d3d8: 4618         	mov	r0, r3
  39d3da: f3ed f80f    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed01e
  39d3de: ab09         	add	r3, sp, #0x24
  39d3e0: 4618         	mov	r0, r3
  39d3e2: f018 f297    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41852e
  39d3e6: e7ff         	b	0x39d3e8 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x23c> @ imm = #-0x2
  39d3e8: ab06         	add	r3, sp, #0x18
  39d3ea: 4618         	mov	r0, r3
  39d3ec: f3ed f806    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ed00c
  39d3f0: ab08         	add	r3, sp, #0x20
  39d3f2: 4618         	mov	r0, r3
  39d3f4: f018 f28e    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41851c
  39d3f8: e7ff         	b	0x39d3fa <PlayerLobby::onSearch(cocos2d::CCObject*)+0x24e> @ imm = #-0x2
  39d3fa: ab05         	add	r3, sp, #0x14
  39d3fc: 4618         	mov	r0, r3
  39d3fe: f3ec fffd    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ecffa
  39d402: f3ea fe53    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3eaca6
  39d406: ab07         	add	r3, sp, #0x1c
  39d408: 4618         	mov	r0, r3
  39d40a: f018 f283    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x418506
  39d40e: e7ff         	b	0x39d410 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x264> @ imm = #-0x2
  39d410: ab04         	add	r3, sp, #0x10
  39d412: 4618         	mov	r0, r3
  39d414: f3ec fff2    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ecfe4
  39d418: ab09         	add	r3, sp, #0x24
  39d41a: 4618         	mov	r0, r3
  39d41c: f018 f27a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4184f4
  39d420: e7ff         	b	0x39d422 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x276> @ imm = #-0x2
  39d422: ab06         	add	r3, sp, #0x18
  39d424: 4618         	mov	r0, r3
  39d426: f3ec ffe9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ecfd2
  39d42a: ab08         	add	r3, sp, #0x20
  39d42c: 4618         	mov	r0, r3
  39d42e: f018 f271    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4184e2
  39d432: e7ff         	b	0x39d434 <PlayerLobby::onSearch(cocos2d::CCObject*)+0x288> @ imm = #-0x2
  39d434: ab05         	add	r3, sp, #0x14
  39d436: 4618         	mov	r0, r3
  39d438: f3ec ffe0    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ecfc0
  39d43c: f3ea fe36    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3eac6c
  39d440: b00b         	add	sp, #0x2c
  39d442: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x39d443); words below are literal-pool data ---
  39d444: 5852         	ldr	r2, [r2, r1]
  39d446: 0059         	lsls	r1, r3, #0x1
  39d448: d730         	bvc	0x39d4ac <PlayerLobby::onOptions(cocos2d::CCObject*)+0x44> @ imm = #0x60
  39d44a: ffff 4fbe    	<unknown>
  39d44e: 0043         	lsls	r3, r0, #0x1
  39d450: 4fc0         	ldr	r7, [pc, #0x300]        @ 0x39d754 <PlayerLobby::addLobbyRow(std::string)+0x54>
  39d452: 0043         	lsls	r3, r0, #0x1
  39d454: 4fda         	ldr	r7, [pc, #0x368]        @ 0x39d7c0 <PlayerLobby::updateLabels()+0x3c>
  39d456: 0043         	lsls	r3, r0, #0x1
  39d458: dd50         	ble	0x39d4fc <PlayerLobby::onOptions(cocos2d::CCObject*)+0x94> @ imm = #0xa0
  39d45a: ffff 4f5a    	vcvt.u32.f32	q10, q5, #0x1
  39d45e: 0043         	lsls	r3, r0, #0x1
  39d460: 4f58         	ldr	r7, [pc, #0x160]        @ 0x39d5c4 <PlayerLobby::onShowGameStats(cocos2d::CCObject*)+0xc>
  39d462: 0043         	lsls	r3, r0, #0x1
  39d464: 4f7e         	ldr	r7, [pc, #0x1f8]        @ 0x39d660 <PlayerLobby::onShowGameStats(cocos2d::CCObject*)+0xa8>
  39d466: 0043         	lsls	r3, r0, #0x1

// ==== PlayerLobby::onOptions
//      file offset 0x39d468 (= ELF address; Ghidra 0x3ad468), 192 bytes, Thumb-2
  39d468: b530         	push	{r4, r5, lr}
  39d46a: b087         	sub	sp, #0x1c
  39d46c: 9001         	str	r0, [sp, #0x4]
  39d46e: 9100         	str	r1, [sp]
  39d470: 4c2a         	ldr	r4, [pc, #0xa8]         @ 0x39d51c <PlayerLobby::onOptions(cocos2d::CCObject*)+0xb4>
  39d472: 447c         	add	r4, pc
  39d474: 9b01         	ldr	r3, [sp, #0x4]
  39d476: 681b         	ldr	r3, [r3]
  39d478: f503 73ee    	add.w	r3, r3, #0x1dc
  39d47c: 681b         	ldr	r3, [r3]
  39d47e: 9801         	ldr	r0, [sp, #0x4]
  39d480: 4798         	blx	r3
  39d482: 4603         	mov	r3, r0
  39d484: 9303         	str	r3, [sp, #0xc]
  39d486: 9b03         	ldr	r3, [sp, #0xc]
  39d488: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39d48c: 2b03         	cmp	r3, #0x3
  39d48e: d042         	beq	0x39d516 <PlayerLobby::onOptions(cocos2d::CCObject*)+0xae> @ imm = #0x84
  39d490: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x39d520 <PlayerLobby::onOptions(cocos2d::CCObject*)+0xb8>
  39d492: 58e3         	ldr	r3, [r4, r3]
  39d494: 681b         	ldr	r3, [r3]
  39d496: 4618         	mov	r0, r3
  39d498: 210e         	movs	r1, #0xe
  39d49a: f05a fc91    	bl	0x3f7dc0 <Sound::playSound(int)> @ imm = #0x5a922
  39d49e: 9b01         	ldr	r3, [sp, #0x4]
  39d4a0: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39d4a4: 681b         	ldr	r3, [r3]
  39d4a6: 3390         	adds	r3, #0x90
  39d4a8: 681b         	ldr	r3, [r3]
  39d4aa: 9a01         	ldr	r2, [sp, #0x4]
  39d4ac: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  39d4b0: 4610         	mov	r0, r2
  39d4b2: 2100         	movs	r1, #0x0
  39d4b4: 4798         	blx	r3
  39d4b6: 9b01         	ldr	r3, [sp, #0x4]
  39d4b8: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39d4bc: 681b         	ldr	r3, [r3]
  39d4be: 334c         	adds	r3, #0x4c
  39d4c0: 681b         	ldr	r3, [r3]
  39d4c2: 9a01         	ldr	r2, [sp, #0x4]
  39d4c4: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  39d4c8: 4610         	mov	r0, r2
  39d4ca: 4a16         	ldr	r2, [pc, #0x58]         @ 0x39d524 <PlayerLobby::onOptions(cocos2d::CCObject*)+0xbc>
  39d4cc: 58a2         	ldr	r2, [r4, r2]
  39d4ce: 4611         	mov	r1, r2
  39d4d0: 4798         	blx	r3
  39d4d2: 9b01         	ldr	r3, [sp, #0x4]
  39d4d4: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  39d4d8: 681b         	ldr	r3, [r3]
  39d4da: 3390         	adds	r3, #0x90
  39d4dc: 681b         	ldr	r3, [r3]
  39d4de: 9a01         	ldr	r2, [sp, #0x4]
  39d4e0: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  39d4e4: 4610         	mov	r0, r2
  39d4e6: 2101         	movs	r1, #0x1
  39d4e8: 4798         	blx	r3
  39d4ea: 9b01         	ldr	r3, [sp, #0x4]
  39d4ec: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  39d4f0: 681b         	ldr	r3, [r3]
  39d4f2: 334c         	adds	r3, #0x4c
  39d4f4: 681c         	ldr	r4, [r3]
  39d4f6: 9b01         	ldr	r3, [sp, #0x4]
  39d4f8: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  39d4fc: 461d         	mov	r5, r3
  39d4fe: ab04         	add	r3, sp, #0x10
  39d500: 4618         	mov	r0, r3
  39d502: f04f 0100    	mov.w	r1, #0x0
  39d506: f04f 0200    	mov.w	r2, #0x0
  39d50a: f1f5 fbf1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f57e2
  39d50e: ab04         	add	r3, sp, #0x10
  39d510: 4628         	mov	r0, r5
  39d512: 4619         	mov	r1, r3
  39d514: 47a0         	blx	r4
  39d516: b007         	add	sp, #0x1c
  39d518: bd30         	pop	{r4, r5, pc}
  ; --- end of code (Ghidra body ends at 0x39d519); words below are literal-pool data ---
  39d51a: bf00         	nop
  39d51c: 5596         	strb	r6, [r2, r6]
  39d51e: 0059         	lsls	r1, r3, #0x1
  39d520: d730         	bvc	0x39d584 <PlayerLobby::onAfterOption(cocos2d::CCObject*)+0x5c> @ imm = #0x60
  39d522: ffff d954    	vqrshrn.u64	d29, q2, #0x1
  39d526: ffff b570    	<unknown>

// ==== PlayerLobby::onAfterOption
//      file offset 0x39d528 (= ELF address; Ghidra 0x3ad528), 144 bytes, Thumb-2
  39d528: b570         	push	{r4, r5, r6, lr}
  39d52a: b084         	sub	sp, #0x10
  39d52c: 9001         	str	r0, [sp, #0x4]
  39d52e: 9100         	str	r1, [sp]
  39d530: 4c1f         	ldr	r4, [pc, #0x7c]         @ 0x39d5b0 <PlayerLobby::onAfterOption(cocos2d::CCObject*)+0x88>
  39d532: 447c         	add	r4, pc
  39d534: 9b01         	ldr	r3, [sp, #0x4]
  39d536: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39d53a: 681b         	ldr	r3, [r3]
  39d53c: 3390         	adds	r3, #0x90
  39d53e: 681b         	ldr	r3, [r3]
  39d540: 9a01         	ldr	r2, [sp, #0x4]
  39d542: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  39d546: 4610         	mov	r0, r2
  39d548: 2101         	movs	r1, #0x1
  39d54a: 4798         	blx	r3
  39d54c: 9b01         	ldr	r3, [sp, #0x4]
  39d54e: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39d552: 681b         	ldr	r3, [r3]
  39d554: 334c         	adds	r3, #0x4c
  39d556: 681d         	ldr	r5, [r3]
  39d558: 9b01         	ldr	r3, [sp, #0x4]
  39d55a: f8d3 6144    	ldr.w	r6, [r3, #0x144]
  39d55e: ab02         	add	r3, sp, #0x8
  39d560: 4618         	mov	r0, r3
  39d562: f04f 0100    	mov.w	r1, #0x0
  39d566: f04f 0200    	mov.w	r2, #0x0
  39d56a: f1f5 fbc1    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f5782
  39d56e: ab02         	add	r3, sp, #0x8
  39d570: 4630         	mov	r0, r6
  39d572: 4619         	mov	r1, r3
  39d574: 47a8         	blx	r5
  39d576: 9b01         	ldr	r3, [sp, #0x4]
  39d578: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  39d57c: 681b         	ldr	r3, [r3]
  39d57e: 3390         	adds	r3, #0x90
  39d580: 681b         	ldr	r3, [r3]
  39d582: 9a01         	ldr	r2, [sp, #0x4]
  39d584: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  39d588: 4610         	mov	r0, r2
  39d58a: 2100         	movs	r1, #0x0
  39d58c: 4798         	blx	r3
  39d58e: 9b01         	ldr	r3, [sp, #0x4]
  39d590: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  39d594: 681b         	ldr	r3, [r3]
  39d596: 334c         	adds	r3, #0x4c
  39d598: 681b         	ldr	r3, [r3]
  39d59a: 9a01         	ldr	r2, [sp, #0x4]
  39d59c: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  39d5a0: 4610         	mov	r0, r2
  39d5a2: 4a04         	ldr	r2, [pc, #0x10]         @ 0x39d5b4 <PlayerLobby::onAfterOption(cocos2d::CCObject*)+0x8c>
  39d5a4: 58a2         	ldr	r2, [r4, r2]
  39d5a6: 4611         	mov	r1, r2
  39d5a8: 4798         	blx	r3
  39d5aa: b004         	add	sp, #0x10
  39d5ac: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x39d5ad); words below are literal-pool data ---
  39d5ae: bf00         	nop
  39d5b0: 54d6         	strb	r6, [r2, r3]
  39d5b2: 0059         	lsls	r1, r3, #0x1
  39d5b4: d954         	bls	0x39d660 <PlayerLobby::onShowGameStats(cocos2d::CCObject*)+0xa8> @ imm = #0xa8
  39d5b6: ffff b510    	vsli.32	d27, d0, #0x1f

// ==== PlayerLobby::onShowGameStats
//      file offset 0x39d5b8 (= ELF address; Ghidra 0x3ad5b8), 184 bytes, Thumb-2
  39d5b8: b510         	push	{r4, lr}
  39d5ba: b082         	sub	sp, #0x8
  39d5bc: 9001         	str	r0, [sp, #0x4]
  39d5be: 9100         	str	r1, [sp]
  39d5c0: 4c29         	ldr	r4, [pc, #0xa4]         @ 0x39d668 <PlayerLobby::onShowGameStats(cocos2d::CCObject*)+0xb0>
  39d5c2: 447c         	add	r4, pc
  39d5c4: 9b01         	ldr	r3, [sp, #0x4]
  39d5c6: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39d5ca: 681b         	ldr	r3, [r3]
  39d5cc: 3390         	adds	r3, #0x90
  39d5ce: 681b         	ldr	r3, [r3]
  39d5d0: 9a01         	ldr	r2, [sp, #0x4]
  39d5d2: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  39d5d6: 4610         	mov	r0, r2
  39d5d8: 2100         	movs	r1, #0x0
  39d5da: 4798         	blx	r3
  39d5dc: 9b01         	ldr	r3, [sp, #0x4]
  39d5de: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39d5e2: 681b         	ldr	r3, [r3]
  39d5e4: 334c         	adds	r3, #0x4c
  39d5e6: 681b         	ldr	r3, [r3]
  39d5e8: 9a01         	ldr	r2, [sp, #0x4]
  39d5ea: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  39d5ee: 4610         	mov	r0, r2
  39d5f0: 4a1e         	ldr	r2, [pc, #0x78]         @ 0x39d66c <PlayerLobby::onShowGameStats(cocos2d::CCObject*)+0xb4>
  39d5f2: 58a2         	ldr	r2, [r4, r2]
  39d5f4: 4611         	mov	r1, r2
  39d5f6: 4798         	blx	r3
  39d5f8: 9b01         	ldr	r3, [sp, #0x4]
  39d5fa: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  39d5fe: 681b         	ldr	r3, [r3]
  39d600: 3390         	adds	r3, #0x90
  39d602: 681b         	ldr	r3, [r3]
  39d604: 9a01         	ldr	r2, [sp, #0x4]
  39d606: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  39d60a: 4610         	mov	r0, r2
  39d60c: 2100         	movs	r1, #0x0
  39d60e: 4798         	blx	r3
  39d610: 9b01         	ldr	r3, [sp, #0x4]
  39d612: f8d3 316c    	ldr.w	r3, [r3, #0x16c]
  39d616: 681b         	ldr	r3, [r3]
  39d618: 334c         	adds	r3, #0x4c
  39d61a: 681b         	ldr	r3, [r3]
  39d61c: 9a01         	ldr	r2, [sp, #0x4]
  39d61e: f8d2 216c    	ldr.w	r2, [r2, #0x16c]
  39d622: 4610         	mov	r0, r2
  39d624: 4a11         	ldr	r2, [pc, #0x44]         @ 0x39d66c <PlayerLobby::onShowGameStats(cocos2d::CCObject*)+0xb4>
  39d626: 58a2         	ldr	r2, [r4, r2]
  39d628: 4611         	mov	r1, r2
  39d62a: 4798         	blx	r3
  39d62c: 9b01         	ldr	r3, [sp, #0x4]
  39d62e: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  39d632: 681b         	ldr	r3, [r3]
  39d634: 3390         	adds	r3, #0x90
  39d636: 681b         	ldr	r3, [r3]
  39d638: 9a01         	ldr	r2, [sp, #0x4]
  39d63a: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  39d63e: 4610         	mov	r0, r2
  39d640: 2101         	movs	r1, #0x1
  39d642: 4798         	blx	r3
  39d644: 9b01         	ldr	r3, [sp, #0x4]
  39d646: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  39d64a: 681b         	ldr	r3, [r3]
  39d64c: 334c         	adds	r3, #0x4c
  39d64e: 681b         	ldr	r3, [r3]
  39d650: 9a01         	ldr	r2, [sp, #0x4]
  39d652: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  39d656: 4611         	mov	r1, r2
  39d658: 9a01         	ldr	r2, [sp, #0x4]
  39d65a: f502 72b8    	add.w	r2, r2, #0x170
  39d65e: 4608         	mov	r0, r1
  39d660: 4611         	mov	r1, r2
  39d662: 4798         	blx	r3
  39d664: b002         	add	sp, #0x8
  39d666: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x39d667); words below are literal-pool data ---
  39d668: 5446         	strb	r6, [r0, r1]
  39d66a: 0059         	lsls	r1, r3, #0x1
  39d66c: d954         	bls	0x39d718 <PlayerLobby::addLobbyRow(std::string)+0x18> @ imm = #0xa8
  39d66e: ffff b570    	<unknown>

// ==== PlayerLobby::onPostGameClose
//      file offset 0x39d670 (= ELF address; Ghidra 0x3ad670), 144 bytes, Thumb-2
  39d670: b570         	push	{r4, r5, r6, lr}
  39d672: b084         	sub	sp, #0x10
  39d674: 9001         	str	r0, [sp, #0x4]
  39d676: 9100         	str	r1, [sp]
  39d678: 4c1f         	ldr	r4, [pc, #0x7c]         @ 0x39d6f8 <PlayerLobby::onPostGameClose(cocos2d::CCObject*)+0x88>
  39d67a: 447c         	add	r4, pc
  39d67c: 9b01         	ldr	r3, [sp, #0x4]
  39d67e: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39d682: 681b         	ldr	r3, [r3]
  39d684: 3390         	adds	r3, #0x90
  39d686: 681b         	ldr	r3, [r3]
  39d688: 9a01         	ldr	r2, [sp, #0x4]
  39d68a: f8d2 2144    	ldr.w	r2, [r2, #0x144]
  39d68e: 4610         	mov	r0, r2
  39d690: 2101         	movs	r1, #0x1
  39d692: 4798         	blx	r3
  39d694: 9b01         	ldr	r3, [sp, #0x4]
  39d696: f8d3 3144    	ldr.w	r3, [r3, #0x144]
  39d69a: 681b         	ldr	r3, [r3]
  39d69c: 334c         	adds	r3, #0x4c
  39d69e: 681d         	ldr	r5, [r3]
  39d6a0: 9b01         	ldr	r3, [sp, #0x4]
  39d6a2: f8d3 6144    	ldr.w	r6, [r3, #0x144]
  39d6a6: ab02         	add	r3, sp, #0x8
  39d6a8: 4618         	mov	r0, r3
  39d6aa: f04f 0100    	mov.w	r1, #0x0
  39d6ae: f04f 0200    	mov.w	r2, #0x0
  39d6b2: f1f5 fb1d    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f563a
  39d6b6: ab02         	add	r3, sp, #0x8
  39d6b8: 4630         	mov	r0, r6
  39d6ba: 4619         	mov	r1, r3
  39d6bc: 47a8         	blx	r5
  39d6be: 9b01         	ldr	r3, [sp, #0x4]
  39d6c0: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  39d6c4: 681b         	ldr	r3, [r3]
  39d6c6: 3390         	adds	r3, #0x90
  39d6c8: 681b         	ldr	r3, [r3]
  39d6ca: 9a01         	ldr	r2, [sp, #0x4]
  39d6cc: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  39d6d0: 4610         	mov	r0, r2
  39d6d2: 2100         	movs	r1, #0x0
  39d6d4: 4798         	blx	r3
  39d6d6: 9b01         	ldr	r3, [sp, #0x4]
  39d6d8: f8d3 30f4    	ldr.w	r3, [r3, #0xf4]
  39d6dc: 681b         	ldr	r3, [r3]
  39d6de: 334c         	adds	r3, #0x4c
  39d6e0: 681b         	ldr	r3, [r3]
  39d6e2: 9a01         	ldr	r2, [sp, #0x4]
  39d6e4: f8d2 20f4    	ldr.w	r2, [r2, #0xf4]
  39d6e8: 4610         	mov	r0, r2
  39d6ea: 4a04         	ldr	r2, [pc, #0x10]         @ 0x39d6fc <PlayerLobby::onPostGameClose(cocos2d::CCObject*)+0x8c>
  39d6ec: 58a2         	ldr	r2, [r4, r2]
  39d6ee: 4611         	mov	r1, r2
  39d6f0: 4798         	blx	r3
  39d6f2: b004         	add	sp, #0x10
  39d6f4: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x39d6f5); words below are literal-pool data ---
  39d6f6: bf00         	nop
  39d6f8: 538e         	strh	r6, [r1, r6]
  39d6fa: 0059         	lsls	r1, r3, #0x1
  39d6fc: d954         	bls	0x39d7a8 <PlayerLobby::updateLabels()+0x24> @ imm = #0xa8
  39d6fe: ffff b500    	<unknown>

// ==== PlayerLobby::addLobbyRow
//      file offset 0x39d700 (= ELF address; Ghidra 0x3ad700), 96 bytes, Thumb-2
  39d700: b500         	push	{lr}
  39d702: b085         	sub	sp, #0x14
  39d704: 9001         	str	r0, [sp, #0x4]
  39d706: 9100         	str	r1, [sp]
  39d708: f7fa fbe4    	bl	0x397ed4 <LobbyRow::create()> @ imm = #-0x5838
  39d70c: 4603         	mov	r3, r0
  39d70e: 9303         	str	r3, [sp, #0xc]
  39d710: ab02         	add	r3, sp, #0x8
  39d712: 4618         	mov	r0, r3
  39d714: 9900         	ldr	r1, [sp]
  39d716: f018 f6e7    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x418dce
  39d71a: ab02         	add	r3, sp, #0x8
  39d71c: 9803         	ldr	r0, [sp, #0xc]
  39d71e: 4619         	mov	r1, r3
  39d720: f7fc f878    	bl	0x399814 <LobbyRow::setPeerId(std::string)> @ imm = #-0x3f10
  39d724: ab02         	add	r3, sp, #0x8
  39d726: 4618         	mov	r0, r3
  39d728: f018 f0f4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4181e8
  39d72c: 9b01         	ldr	r3, [sp, #0x4]
  39d72e: 681b         	ldr	r3, [r3]
  39d730: 33c8         	adds	r3, #0xc8
  39d732: 681b         	ldr	r3, [r3]
  39d734: 9a01         	ldr	r2, [sp, #0x4]
  39d736: 4610         	mov	r0, r2
  39d738: 9903         	ldr	r1, [sp, #0xc]
  39d73a: 4798         	blx	r3
  39d73c: 9b01         	ldr	r3, [sp, #0x4]
  39d73e: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  39d742: 4618         	mov	r0, r3
  39d744: 9903         	ldr	r1, [sp, #0xc]
  39d746: 9a00         	ldr	r2, [sp]
  39d748: f1f7 f8f6    	bl	0x594938 <cocos2d::CCDictionary::setObject(cocos2d::CCObject*, std::string const&)> @ imm = #0x1f71ec
  39d74c: e005         	b	0x39d75a <PlayerLobby::addLobbyRow(std::string)+0x5a> @ imm = #0xa
  39d74e: ab02         	add	r3, sp, #0x8
  39d750: 4618         	mov	r0, r3
  39d752: f018 f0df    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4181be
  39d756: f3ea fca9    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ea952
  39d75a: b005         	add	sp, #0x14
  39d75c: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobby::updateLabels
//      file offset 0x39d784 (= ELF address; Ghidra 0x3ad784), 2352 bytes, Thumb-2
  39d784: b5f0         	push	{r4, r5, r6, r7, lr}
  39d786: b0a3         	sub	sp, #0x8c
  39d788: 9001         	str	r0, [sp, #0x4]
  39d78a: f8df 48f4    	ldr.w	r4, [pc, #0x8f4]        @ 0x39e080 <PlayerLobby::updateLabels()+0x8fc>
  39d78e: 447c         	add	r4, pc
  39d790: 9b01         	ldr	r3, [sp, #0x4]
  39d792: 2200         	movs	r2, #0x0
  39d794: f883 214d    	strb.w	r2, [r3, #0x14d]
  39d798: f7da f9d2    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x25c5c
  39d79c: 4603         	mov	r3, r0
  39d79e: 4618         	mov	r0, r3
  39d7a0: f7da ff6a    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #-0x2512c
  39d7a4: 4603         	mov	r3, r0
  39d7a6: 4618         	mov	r0, r3
  39d7a8: f1f6 fa60    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1f64c0
  39d7ac: 4603         	mov	r3, r0
  39d7ae: 2b00         	cmp	r3, #0x0
  39d7b0: bf0c         	ite	eq
  39d7b2: 2300         	moveq	r3, #0x0
  39d7b4: 2301         	movne	r3, #0x1
  39d7b6: b2db         	uxtb	r3, r3
  39d7b8: 2b00         	cmp	r3, #0x0
  39d7ba: d06b         	beq	0x39d894 <PlayerLobby::updateLabels()+0x110> @ imm = #0xd6
  39d7bc: f7da f9c0    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x25c80
  39d7c0: 4603         	mov	r3, r0
  39d7c2: 4618         	mov	r0, r3
  39d7c4: f7da ff58    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #-0x25150
  39d7c8: 4603         	mov	r3, r0
  39d7ca: 4618         	mov	r0, r3
  39d7cc: f1f6 fa5e    	bl	0x593c8c <cocos2d::CCDictionary::allKeys()> @ imm = #0x1f64bc
  39d7d0: 4603         	mov	r3, r0
  39d7d2: 9318         	str	r3, [sp, #0x60]
  39d7d4: 2300         	movs	r3, #0x0
  39d7d6: 930d         	str	r3, [sp, #0x34]
  39d7d8: e050         	b	0x39d87c <PlayerLobby::updateLabels()+0xf8> @ imm = #0xa0
  39d7da: 9b0d         	ldr	r3, [sp, #0x34]
  39d7dc: 9818         	ldr	r0, [sp, #0x60]
  39d7de: 4619         	mov	r1, r3
  39d7e0: f1fc fc9e    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1fc93c
  39d7e4: 4603         	mov	r3, r0
  39d7e6: 9319         	str	r3, [sp, #0x64]
  39d7e8: 9b01         	ldr	r3, [sp, #0x4]
  39d7ea: f8d3 5124    	ldr.w	r5, [r3, #0x124]
  39d7ee: 9819         	ldr	r0, [sp, #0x64]
  39d7f0: f1fc f89a    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1fc134
  39d7f4: 4606         	mov	r6, r0
  39d7f6: ab1d         	add	r3, sp, #0x74
  39d7f8: 4618         	mov	r0, r3
  39d7fa: f3ec fdfb    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ecbf6
  39d7fe: aa1f         	add	r2, sp, #0x7c
  39d800: ab1d         	add	r3, sp, #0x74
  39d802: 4610         	mov	r0, r2
  39d804: 4631         	mov	r1, r6
  39d806: 461a         	mov	r2, r3
  39d808: f019 f12a    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x419254
  39d80c: ab1f         	add	r3, sp, #0x7c
  39d80e: 4628         	mov	r0, r5
  39d810: 4619         	mov	r1, r3
  39d812: f1f6 fb6d    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1f66da
  39d816: 4603         	mov	r3, r0
  39d818: 2b00         	cmp	r3, #0x0
  39d81a: bf14         	ite	ne
  39d81c: 2300         	movne	r3, #0x0
  39d81e: 2301         	moveq	r3, #0x1
  39d820: b2dd         	uxtb	r5, r3
  39d822: ab1f         	add	r3, sp, #0x7c
  39d824: 4618         	mov	r0, r3
  39d826: f018 f075    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4180ea
  39d82a: ab1d         	add	r3, sp, #0x74
  39d82c: 4618         	mov	r0, r3
  39d82e: f3ec fde5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ecbca
  39d832: 2d00         	cmp	r5, #0x0
  39d834: d01f         	beq	0x39d876 <PlayerLobby::updateLabels()+0xf2> @ imm = #0x3e
  39d836: 9b01         	ldr	r3, [sp, #0x4]
  39d838: 681b         	ldr	r3, [r3]
  39d83a: f503 73da    	add.w	r3, r3, #0x1b4
  39d83e: 681d         	ldr	r5, [r3]
  39d840: 9819         	ldr	r0, [sp, #0x64]
  39d842: f1fc f871    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1fc0e2
  39d846: 4606         	mov	r6, r0
  39d848: ab1d         	add	r3, sp, #0x74
  39d84a: 4618         	mov	r0, r3
  39d84c: f3ec fdd2    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ecba4
  39d850: aa1f         	add	r2, sp, #0x7c
  39d852: ab1d         	add	r3, sp, #0x74
  39d854: 4610         	mov	r0, r2
  39d856: 4631         	mov	r1, r6
  39d858: 461a         	mov	r2, r3
  39d85a: f019 f101    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x419202
  39d85e: ab1f         	add	r3, sp, #0x7c
  39d860: 9801         	ldr	r0, [sp, #0x4]
  39d862: 4619         	mov	r1, r3
  39d864: 47a8         	blx	r5
  39d866: ab1f         	add	r3, sp, #0x7c
  39d868: 4618         	mov	r0, r3
  39d86a: f018 f053    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4180a6
  39d86e: ab1d         	add	r3, sp, #0x74
  39d870: 4618         	mov	r0, r3
  39d872: f3ec fdc3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ecb86
  39d876: 9b0d         	ldr	r3, [sp, #0x34]
  39d878: 3301         	adds	r3, #0x1
  39d87a: 930d         	str	r3, [sp, #0x34]
  39d87c: 9d0d         	ldr	r5, [sp, #0x34]
  39d87e: 9818         	ldr	r0, [sp, #0x60]
  39d880: f1fc fc2e    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1fc85c
  39d884: 4603         	mov	r3, r0
  39d886: 429d         	cmp	r5, r3
  39d888: bf2c         	ite	hs
  39d88a: 2300         	movhs	r3, #0x0
  39d88c: 2301         	movlo	r3, #0x1
  39d88e: b2db         	uxtb	r3, r3
  39d890: 2b00         	cmp	r3, #0x0
  39d892: d1a2         	bne	0x39d7da <PlayerLobby::updateLabels()+0x56> @ imm = #-0xbc
  39d894: ab1f         	add	r3, sp, #0x7c
  39d896: 4618         	mov	r0, r3
  39d898: f000 ff42    	bl	0x39e720 <std::vector<LobbyRow*, std::allocator<LobbyRow*>>::vector()> @ imm = #0xe84
  39d89c: 2300         	movs	r3, #0x0
  39d89e: 930e         	str	r3, [sp, #0x38]
  39d8a0: 2300         	movs	r3, #0x0
  39d8a2: 930f         	str	r3, [sp, #0x3c]
  39d8a4: 9b01         	ldr	r3, [sp, #0x4]
  39d8a6: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  39d8aa: 2b00         	cmp	r3, #0x0
  39d8ac: d00a         	beq	0x39d8c4 <PlayerLobby::updateLabels()+0x140> @ imm = #0x14
  39d8ae: 9b01         	ldr	r3, [sp, #0x4]
  39d8b0: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  39d8b4: 4618         	mov	r0, r3
  39d8b6: f1f6 f9d9    	bl	0x593c6c <cocos2d::CCDictionary::count()> @ imm = #0x1f63b2
  39d8ba: 4603         	mov	r3, r0
  39d8bc: 2b00         	cmp	r3, #0x0
  39d8be: d001         	beq	0x39d8c4 <PlayerLobby::updateLabels()+0x140> @ imm = #0x2
  39d8c0: 2301         	movs	r3, #0x1
  39d8c2: e000         	b	0x39d8c6 <PlayerLobby::updateLabels()+0x142> @ imm = #0x0
  39d8c4: 2300         	movs	r3, #0x0
  39d8c6: 2b00         	cmp	r3, #0x0
  39d8c8: f000 80ac    	beq.w	0x39da24 <PlayerLobby::updateLabels()+0x2a0> @ imm = #0x158
  39d8cc: 9b01         	ldr	r3, [sp, #0x4]
  39d8ce: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  39d8d2: 695b         	ldr	r3, [r3, #0x14]
  39d8d4: 930e         	str	r3, [sp, #0x38]
  39d8d6: 9b01         	ldr	r3, [sp, #0x4]
  39d8d8: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  39d8dc: 695b         	ldr	r3, [r3, #0x14]
  39d8de: 2b00         	cmp	r3, #0x0
  39d8e0: d006         	beq	0x39d8f0 <PlayerLobby::updateLabels()+0x16c> @ imm = #0xc
  39d8e2: 9b01         	ldr	r3, [sp, #0x4]
  39d8e4: f8d3 3124    	ldr.w	r3, [r3, #0x124]
  39d8e8: 695b         	ldr	r3, [r3, #0x14]
  39d8ea: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  39d8ee: e000         	b	0x39d8f2 <PlayerLobby::updateLabels()+0x16e> @ imm = #0x0
  39d8f0: 2300         	movs	r3, #0x0
  39d8f2: 930f         	str	r3, [sp, #0x3c]
  39d8f4: e092         	b	0x39da1c <PlayerLobby::updateLabels()+0x298> @ imm = #0x124
  39d8f6: 980e         	ldr	r0, [sp, #0x38]
  39d8f8: f760 fe9c    	bl	0x2fe634 <cocos2d::CCDictElement::getObject() const> @ imm = #-0x9f2c8
  39d8fc: 4603         	mov	r3, r0
  39d8fe: 930c         	str	r3, [sp, #0x30]
  39d900: 9b01         	ldr	r3, [sp, #0x4]
  39d902: 681b         	ldr	r3, [r3]
  39d904: f503 73ee    	add.w	r3, r3, #0x1dc
  39d908: 681b         	ldr	r3, [r3]
  39d90a: 9801         	ldr	r0, [sp, #0x4]
  39d90c: 4798         	blx	r3
  39d90e: 4603         	mov	r3, r0
  39d910: aa1d         	add	r2, sp, #0x74
  39d912: 4610         	mov	r0, r2
  39d914: 4619         	mov	r1, r3
  39d916: f7fb ff8b    	bl	0x399830 <LobbyRow::getPeerId()> @ imm = #-0x40ea
  39d91a: 9b01         	ldr	r3, [sp, #0x4]
  39d91c: f04f 0200    	mov.w	r2, #0x0
  39d920: f8c3 2168    	str.w	r2, [r3, #0x168]
  39d924: 9b0c         	ldr	r3, [sp, #0x30]
  39d926: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39d92a: 2b04         	cmp	r3, #0x4
  39d92c: d104         	bne	0x39d938 <PlayerLobby::updateLabels()+0x1b4> @ imm = #0x8
  39d92e: 9b01         	ldr	r3, [sp, #0x4]
  39d930: f04f 527e    	mov.w	r2, #0x3f800000
  39d934: f8c3 2168    	str.w	r2, [r3, #0x168]
  39d938: 2500         	movs	r5, #0x0
  39d93a: 2600         	movs	r6, #0x0
  39d93c: 9b0c         	ldr	r3, [sp, #0x30]
  39d93e: aa02         	add	r2, sp, #0x8
  39d940: 4610         	mov	r0, r2
  39d942: 4619         	mov	r1, r3
  39d944: f7fb ff74    	bl	0x399830 <LobbyRow::getPeerId()> @ imm = #-0x4118
  39d948: 2501         	movs	r5, #0x1
  39d94a: aa1d         	add	r2, sp, #0x74
  39d94c: ab02         	add	r3, sp, #0x8
  39d94e: 4610         	mov	r0, r2
  39d950: 4619         	mov	r1, r3
  39d952: f017 f693    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x417d26
  39d956: 4603         	mov	r3, r0
  39d958: 2b00         	cmp	r3, #0x0
  39d95a: d017         	beq	0x39d98c <PlayerLobby::updateLabels()+0x208> @ imm = #0x2e
  39d95c: f7da f8f0    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x25e20
  39d960: 4603         	mov	r3, r0
  39d962: 4618         	mov	r0, r3
  39d964: f7da fe88    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #-0x252f0
  39d968: 4607         	mov	r7, r0
  39d96a: 9b0c         	ldr	r3, [sp, #0x30]
  39d96c: aa03         	add	r2, sp, #0xc
  39d96e: 4610         	mov	r0, r2
  39d970: 4619         	mov	r1, r3
  39d972: f7fb ff5d    	bl	0x399830 <LobbyRow::getPeerId()> @ imm = #-0x4146
  39d976: 2601         	movs	r6, #0x1
  39d978: ab03         	add	r3, sp, #0xc
  39d97a: 4638         	mov	r0, r7
  39d97c: 4619         	mov	r1, r3
  39d97e: f1f6 fab7    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1f656e
  39d982: 4603         	mov	r3, r0
  39d984: 2b00         	cmp	r3, #0x0
  39d986: d101         	bne	0x39d98c <PlayerLobby::updateLabels()+0x208> @ imm = #0x2
  39d988: 2301         	movs	r3, #0x1
  39d98a: e000         	b	0x39d98e <PlayerLobby::updateLabels()+0x20a> @ imm = #0x0
  39d98c: 2300         	movs	r3, #0x0
  39d98e: 461f         	mov	r7, r3
  39d990: 2e00         	cmp	r6, #0x0
  39d992: d003         	beq	0x39d99c <PlayerLobby::updateLabels()+0x218> @ imm = #0x6
  39d994: ab03         	add	r3, sp, #0xc
  39d996: 4618         	mov	r0, r3
  39d998: f017 f7bc    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417f78
  39d99c: 2d00         	cmp	r5, #0x0
  39d99e: d004         	beq	0x39d9aa <PlayerLobby::updateLabels()+0x226> @ imm = #0x8
  39d9a0: bf00         	nop
  39d9a2: ab02         	add	r3, sp, #0x8
  39d9a4: 4618         	mov	r0, r3
  39d9a6: f017 f7b5    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417f6a
  39d9aa: 2f00         	cmp	r7, #0x0
  39d9ac: d01d         	beq	0x39d9ea <PlayerLobby::updateLabels()+0x266> @ imm = #0x3a
  39d9ae: 9b01         	ldr	r3, [sp, #0x4]
  39d9b0: 681b         	ldr	r3, [r3]
  39d9b2: 33f4         	adds	r3, #0xf4
  39d9b4: 681b         	ldr	r3, [r3]
  39d9b6: 9901         	ldr	r1, [sp, #0x4]
  39d9b8: 9a0c         	ldr	r2, [sp, #0x30]
  39d9ba: 4608         	mov	r0, r1
  39d9bc: 4611         	mov	r1, r2
  39d9be: 2200         	movs	r2, #0x0
  39d9c0: 4798         	blx	r3
  39d9c2: 9b01         	ldr	r3, [sp, #0x4]
  39d9c4: f8d3 5124    	ldr.w	r5, [r3, #0x124]
  39d9c8: 9b0c         	ldr	r3, [sp, #0x30]
  39d9ca: aa06         	add	r2, sp, #0x18
  39d9cc: 4610         	mov	r0, r2
  39d9ce: 4619         	mov	r1, r3
  39d9d0: f7fb ff2e    	bl	0x399830 <LobbyRow::getPeerId()> @ imm = #-0x41a4
  39d9d4: ab06         	add	r3, sp, #0x18
  39d9d6: 4628         	mov	r0, r5
  39d9d8: 4619         	mov	r1, r3
  39d9da: f1f7 fc6d    	bl	0x5952b8 <cocos2d::CCDictionary::removeObjectForKey(std::string const&)> @ imm = #0x1f78da
  39d9de: ab06         	add	r3, sp, #0x18
  39d9e0: 4618         	mov	r0, r3
  39d9e2: f017 f797    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417f2e
  39d9e6: 2500         	movs	r5, #0x0
  39d9e8: e006         	b	0x39d9f8 <PlayerLobby::updateLabels()+0x274> @ imm = #0xc
  39d9ea: aa1f         	add	r2, sp, #0x7c
  39d9ec: ab0c         	add	r3, sp, #0x30
  39d9ee: 4610         	mov	r0, r2
  39d9f0: 4619         	mov	r1, r3
  39d9f2: f000 fec1    	bl	0x39e778 <std::vector<LobbyRow*, std::allocator<LobbyRow*>>::push_back(LobbyRow* const&)> @ imm = #0xd82
  39d9f6: 2501         	movs	r5, #0x1
  39d9f8: ab1d         	add	r3, sp, #0x74
  39d9fa: 4618         	mov	r0, r3
  39d9fc: f017 f78a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417f14
  39da00: 2d01         	cmp	r5, #0x1
  39da02: d10f         	bne	0x39da24 <PlayerLobby::updateLabels()+0x2a0> @ imm = #0x1e
  39da04: bf00         	nop
  39da06: 9b0f         	ldr	r3, [sp, #0x3c]
  39da08: 930e         	str	r3, [sp, #0x38]
  39da0a: 9b0f         	ldr	r3, [sp, #0x3c]
  39da0c: 2b00         	cmp	r3, #0x0
  39da0e: d003         	beq	0x39da18 <PlayerLobby::updateLabels()+0x294> @ imm = #0x6
  39da10: 9b0f         	ldr	r3, [sp, #0x3c]
  39da12: f8d3 3110    	ldr.w	r3, [r3, #0x110]
  39da16: e000         	b	0x39da1a <PlayerLobby::updateLabels()+0x296> @ imm = #0x0
  39da18: 2300         	movs	r3, #0x0
  39da1a: 930f         	str	r3, [sp, #0x3c]
  39da1c: 9b0e         	ldr	r3, [sp, #0x38]
  39da1e: 2b00         	cmp	r3, #0x0
  39da20: f47f af69    	bne.w	0x39d8f6 <PlayerLobby::updateLabels()+0x172> @ imm = #-0x12e
  39da24: ab1f         	add	r3, sp, #0x7c
  39da26: 4618         	mov	r0, r3
  39da28: f000 fec6    	bl	0x39e7b8 <std::vector<LobbyRow*, std::allocator<LobbyRow*>>::begin()> @ imm = #0xd8c
  39da2c: 4605         	mov	r5, r0
  39da2e: ab1f         	add	r3, sp, #0x7c
  39da30: 4618         	mov	r0, r3
  39da32: f000 fecf    	bl	0x39e7d4 <std::vector<LobbyRow*, std::allocator<LobbyRow*>>::end()> @ imm = #0xd9e
  39da36: 4603         	mov	r3, r0
  39da38: 4628         	mov	r0, r5
  39da3a: 4619         	mov	r1, r3
  39da3c: f8df 3644    	ldr.w	r3, [pc, #0x644]        @ 0x39e084 <PlayerLobby::updateLabels()+0x900>
  39da40: 58e3         	ldr	r3, [r4, r3]
  39da42: 461a         	mov	r2, r3
  39da44: f000 fed6    	bl	0x39e7f4 <void std::sort<__gnu_cxx::__normal_iterator<LobbyRow**, std::vector<LobbyRow*, std::allocator<LobbyRow*>>>, bool (*)(LobbyRow*, LobbyRow*)>(__gnu_cxx::__normal_iterator<LobbyRow**, std::vector<LobbyRow*, std::allocator<LobbyRow*>>>, __gnu_cxx::__normal_iterator<LobbyRow**, std::vector<LobbyRow*, std::allocator<LobbyRow*>>>, bool (*)(LobbyRow*, LobbyRow*))> @ imm = #0xdac
  39da48: f04f 0300    	mov.w	r3, #0x0
  39da4c: f2c4 230c    	movt	r3, #0x420c
  39da50: 931a         	str	r3, [sp, #0x68]
  39da52: 2300         	movs	r3, #0x0
  39da54: 9310         	str	r3, [sp, #0x40]
  39da56: e207         	b	0x39de68 <PlayerLobby::updateLabels()+0x6e4> @ imm = #0x40e
  39da58: 9b10         	ldr	r3, [sp, #0x40]
  39da5a: aa1f         	add	r2, sp, #0x7c
  39da5c: 4610         	mov	r0, r2
  39da5e: 4619         	mov	r1, r3
  39da60: f000 fefc    	bl	0x39e85c <std::vector<LobbyRow*, std::allocator<LobbyRow*>>::operator[](unsigned int)> @ imm = #0xdf8
  39da64: 4603         	mov	r3, r0
  39da66: 681b         	ldr	r3, [r3]
  39da68: 931b         	str	r3, [sp, #0x6c]
  39da6a: ab1d         	add	r3, sp, #0x74
  39da6c: 4618         	mov	r0, r3
  39da6e: f3ec fcc1    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ec982
  39da72: aa04         	add	r2, sp, #0x10
  39da74: ab1d         	add	r3, sp, #0x74
  39da76: 4610         	mov	r0, r2
  39da78: f8df 260c    	ldr.w	r2, [pc, #0x60c]        @ 0x39e088 <PlayerLobby::updateLabels()+0x904>
  39da7c: 447a         	add	r2, pc
  39da7e: 4611         	mov	r1, r2
  39da80: 461a         	mov	r2, r3
  39da82: f018 f7ed    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x418fda
  39da86: ab1d         	add	r3, sp, #0x74
  39da88: 4618         	mov	r0, r3
  39da8a: f3ec fcb7    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ec96e
  39da8e: ab1d         	add	r3, sp, #0x74
  39da90: 4618         	mov	r0, r3
  39da92: f3ec fcaf    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ec95e
  39da96: aa05         	add	r2, sp, #0x14
  39da98: ab1d         	add	r3, sp, #0x74
  39da9a: 4610         	mov	r0, r2
  39da9c: f8df 25ec    	ldr.w	r2, [pc, #0x5ec]        @ 0x39e08c <PlayerLobby::updateLabels()+0x908>
  39daa0: 447a         	add	r2, pc
  39daa2: 4611         	mov	r1, r2
  39daa4: 461a         	mov	r2, r3
  39daa6: f018 f7db    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x418fb6
  39daaa: ab1d         	add	r3, sp, #0x74
  39daac: 4618         	mov	r0, r3
  39daae: f3ec fca5    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ec94a
  39dab2: ab06         	add	r3, sp, #0x18
  39dab4: 4618         	mov	r0, r3
  39dab6: 991b         	ldr	r1, [sp, #0x6c]
  39dab8: f7fb feba    	bl	0x399830 <LobbyRow::getPeerId()> @ imm = #-0x428c
  39dabc: 9b01         	ldr	r3, [sp, #0x4]
  39dabe: 681b         	ldr	r3, [r3]
  39dac0: f503 73ee    	add.w	r3, r3, #0x1dc
  39dac4: 681b         	ldr	r3, [r3]
  39dac6: 9801         	ldr	r0, [sp, #0x4]
  39dac8: 4798         	blx	r3
  39daca: 4603         	mov	r3, r0
  39dacc: aa0c         	add	r2, sp, #0x30
  39dace: 4610         	mov	r0, r2
  39dad0: 4619         	mov	r1, r3
  39dad2: f7fb fead    	bl	0x399830 <LobbyRow::getPeerId()> @ imm = #-0x42a6
  39dad6: 2300         	movs	r3, #0x0
  39dad8: 9311         	str	r3, [sp, #0x44]
  39dada: 2300         	movs	r3, #0x0
  39dadc: 9312         	str	r3, [sp, #0x48]
  39dade: 2300         	movs	r3, #0x0
  39dae0: 9313         	str	r3, [sp, #0x4c]
  39dae2: 2300         	movs	r3, #0x0
  39dae4: 9314         	str	r3, [sp, #0x50]
  39dae6: 2300         	movs	r3, #0x0
  39dae8: 9315         	str	r3, [sp, #0x54]
  39daea: f04f 33ff    	mov.w	r3, #0xffffffff
  39daee: 9316         	str	r3, [sp, #0x58]
  39daf0: f04f 537e    	mov.w	r3, #0x3f800000
  39daf4: 9317         	str	r3, [sp, #0x5c]
  39daf6: aa06         	add	r2, sp, #0x18
  39daf8: ab0c         	add	r3, sp, #0x30
  39dafa: 4610         	mov	r0, r2
  39dafc: 4619         	mov	r1, r3
  39dafe: f017 f5bd    	bl	0x7b567c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18bcc> @ imm = #0x417b7a
  39db02: 4603         	mov	r3, r0
  39db04: 2b00         	cmp	r3, #0x0
  39db06: bf14         	ite	ne
  39db08: 2300         	movne	r3, #0x0
  39db0a: 2301         	moveq	r3, #0x1
  39db0c: b2db         	uxtb	r3, r3
  39db0e: 2b00         	cmp	r3, #0x0
  39db10: d061         	beq	0x39dbd6 <PlayerLobby::updateLabels()+0x452> @ imm = #0xc2
  39db12: 9b01         	ldr	r3, [sp, #0x4]
  39db14: f503 7396    	add.w	r3, r3, #0x12c
  39db18: aa04         	add	r2, sp, #0x10
  39db1a: 4610         	mov	r0, r2
  39db1c: 4619         	mov	r1, r3
  39db1e: f018 f549    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x418a92
  39db22: f8df 356c    	ldr.w	r3, [pc, #0x56c]        @ 0x39e090 <PlayerLobby::updateLabels()+0x90c>
  39db26: 58e3         	ldr	r3, [r4, r3]
  39db28: 681b         	ldr	r3, [r3]
  39db2a: 9312         	str	r3, [sp, #0x48]
  39db2c: f7da f808    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x25ff0
  39db30: 4605         	mov	r5, r0
  39db32: ab1d         	add	r3, sp, #0x74
  39db34: 4618         	mov	r0, r3
  39db36: f3ec fc5d    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ec8ba
  39db3a: aa07         	add	r2, sp, #0x1c
  39db3c: ab1d         	add	r3, sp, #0x74
  39db3e: 4610         	mov	r0, r2
  39db40: f8df 2550    	ldr.w	r2, [pc, #0x550]        @ 0x39e094 <PlayerLobby::updateLabels()+0x910>
  39db44: 447a         	add	r2, pc
  39db46: 4611         	mov	r1, r2
  39db48: 461a         	mov	r2, r3
  39db4a: f018 f789    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x418f12
  39db4e: ab07         	add	r3, sp, #0x1c
  39db50: 4628         	mov	r0, r5
  39db52: 4619         	mov	r1, r3
  39db54: f7dc f806    	bl	0x379b64 <NetworkManager::getPingTimeFor(std::string)> @ imm = #-0x23ff4
  39db58: ec41 0b17    	vmov	d7, r0, r1
  39db5c: eef7 7bc7    	vcvt.f32.f64	s15, d7
  39db60: edcd 7a17    	vstr	s15, [sp, #92]
  39db64: ab07         	add	r3, sp, #0x1c
  39db66: 4618         	mov	r0, r3
  39db68: f017 f6d4    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417da8
  39db6c: ab1d         	add	r3, sp, #0x74
  39db6e: 4618         	mov	r0, r3
  39db70: f3ec fc44    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ec888
  39db74: f8df 3520    	ldr.w	r3, [pc, #0x520]        @ 0x39e098 <PlayerLobby::updateLabels()+0x914>
  39db78: 58e3         	ldr	r3, [r4, r3]
  39db7a: 681b         	ldr	r3, [r3]
  39db7c: 9313         	str	r3, [sp, #0x4c]
  39db7e: f087 fa9b    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x87536
  39db82: 4603         	mov	r3, r0
  39db84: 4618         	mov	r0, r3
  39db86: f087 fc2d    	bl	0x4253e4 <LeaderBoardBridge::calcPlayerExp()> @ imm = #0x8785a
  39db8a: 4603         	mov	r3, r0
  39db8c: 4618         	mov	r0, r3
  39db8e: f7fa f8cd    	bl	0x397d2c <BodyShape::~BodyShape()+0xe58> @ imm = #-0x5e66
  39db92: 9014         	str	r0, [sp, #0x50]
  39db94: f087 fa90    	bl	0x4250b8 <LeaderBoardBridge::sharedLeaderBoardBridge()> @ imm = #0x87520
  39db98: 4603         	mov	r3, r0
  39db9a: 4618         	mov	r0, r3
  39db9c: f087 fc0c    	bl	0x4253b8 <LeaderBoardBridge::getCachedPlayerSkill()> @ imm = #0x87818
  39dba0: 4603         	mov	r3, r0
  39dba2: 9315         	str	r3, [sp, #0x54]
  39dba4: f755 ff88    	bl	0x2f3ab8 <AvatarRenderer::sharedAvatarRenderer()> @ imm = #-0xaa0f0
  39dba8: 4603         	mov	r3, r0
  39dbaa: 4618         	mov	r0, r3
  39dbac: f75a fbd0    	bl	0x2f8350 <AvatarRenderer::getCustomAvatarProperties()> @ imm = #-0xa5860
  39dbb0: 4603         	mov	r3, r0
  39dbb2: 9311         	str	r3, [sp, #0x44]
  39dbb4: 9b10         	ldr	r3, [sp, #0x40]
  39dbb6: 2b00         	cmp	r3, #0x0
  39dbb8: d103         	bne	0x39dbc2 <PlayerLobby::updateLabels()+0x43e> @ imm = #0x6
  39dbba: 9b01         	ldr	r3, [sp, #0x4]
  39dbbc: 2201         	movs	r2, #0x1
  39dbbe: f883 214d    	strb.w	r2, [r3, #0x14d]
  39dbc2: f8df 34d8    	ldr.w	r3, [pc, #0x4d8]        @ 0x39e09c <PlayerLobby::updateLabels()+0x918>
  39dbc6: 58e3         	ldr	r3, [r4, r3]
  39dbc8: 9a10         	ldr	r2, [sp, #0x40]
  39dbca: 601a         	str	r2, [r3]
  39dbcc: f08e fe92    	bl	0x42c8f4 <ApplicationInterface::getOSType()> @ imm = #0x8ed24
  39dbd0: 4603         	mov	r3, r0
  39dbd2: 9316         	str	r3, [sp, #0x58]
  39dbd4: e0de         	b	0x39dd94 <PlayerLobby::updateLabels()+0x610> @ imm = #0x1bc
  39dbd6: f7d9 ffb3    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2609a
  39dbda: 4603         	mov	r3, r0
  39dbdc: 4618         	mov	r0, r3
  39dbde: f7da fd4b    	bl	0x378678 <NetworkManager::getPeerPlayers()> @ imm = #-0x2556a
  39dbe2: 4602         	mov	r2, r0
  39dbe4: ab06         	add	r3, sp, #0x18
  39dbe6: 4610         	mov	r0, r2
  39dbe8: 4619         	mov	r1, r3
  39dbea: f1f6 f981    	bl	0x593ef0 <cocos2d::CCDictionary::objectForKey(std::string const&)> @ imm = #0x1f6302
  39dbee: 4603         	mov	r3, r0
  39dbf0: 931c         	str	r3, [sp, #0x70]
  39dbf2: 9b1c         	ldr	r3, [sp, #0x70]
  39dbf4: 2b00         	cmp	r3, #0x0
  39dbf6: f000 80ad    	beq.w	0x39dd54 <PlayerLobby::updateLabels()+0x5d0> @ imm = #0x15a
  39dbfa: 981c         	ldr	r0, [sp, #0x70]
  39dbfc: f1fc fa70    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1fc4e0
  39dc00: 4603         	mov	r3, r0
  39dc02: 2b08         	cmp	r3, #0x8
  39dc04: d909         	bls	0x39dc1a <PlayerLobby::updateLabels()+0x496> @ imm = #0x12
  39dc06: 981c         	ldr	r0, [sp, #0x70]
  39dc08: 2108         	movs	r1, #0x8
  39dc0a: f1fc fa89    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1fc512
  39dc0e: 4603         	mov	r3, r0
  39dc10: 4618         	mov	r0, r3
  39dc12: f74f f91f    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xb0dc2
  39dc16: 4603         	mov	r3, r0
  39dc18: e001         	b	0x39dc1e <PlayerLobby::updateLabels()+0x49a> @ imm = #0x2
  39dc1a: f04f 33ff    	mov.w	r3, #0xffffffff
  39dc1e: 9316         	str	r3, [sp, #0x58]
  39dc20: 981c         	ldr	r0, [sp, #0x70]
  39dc22: 2100         	movs	r1, #0x0
  39dc24: f1fc fa7c    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1fc4f8
  39dc28: 4603         	mov	r3, r0
  39dc2a: 4618         	mov	r0, r3
  39dc2c: f1fb fe7c    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1fbcf8
  39dc30: 4603         	mov	r3, r0
  39dc32: aa06         	add	r2, sp, #0x18
  39dc34: 4610         	mov	r0, r2
  39dc36: 4619         	mov	r1, r3
  39dc38: f018 f11a    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x418234
  39dc3c: 981c         	ldr	r0, [sp, #0x70]
  39dc3e: 2101         	movs	r1, #0x1
  39dc40: f1fc fa6e    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1fc4dc
  39dc44: 4603         	mov	r3, r0
  39dc46: 4618         	mov	r0, r3
  39dc48: f1fb fe6e    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1fbcdc
  39dc4c: 4603         	mov	r3, r0
  39dc4e: aa04         	add	r2, sp, #0x10
  39dc50: 4610         	mov	r0, r2
  39dc52: 4619         	mov	r1, r3
  39dc54: f018 f10c    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x418218
  39dc58: 981c         	ldr	r0, [sp, #0x70]
  39dc5a: 2102         	movs	r1, #0x2
  39dc5c: f1fc fa60    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1fc4c0
  39dc60: 4603         	mov	r3, r0
  39dc62: 4618         	mov	r0, r3
  39dc64: f74f f8f6    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xb0e14
  39dc68: 4603         	mov	r3, r0
  39dc6a: 9312         	str	r3, [sp, #0x48]
  39dc6c: 981c         	ldr	r0, [sp, #0x70]
  39dc6e: 2104         	movs	r1, #0x4
  39dc70: f1fc fa56    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1fc4ac
  39dc74: 4603         	mov	r3, r0
  39dc76: 4618         	mov	r0, r3
  39dc78: f74f f8ec    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xb0e28
  39dc7c: 4603         	mov	r3, r0
  39dc7e: 9313         	str	r3, [sp, #0x4c]
  39dc80: 981c         	ldr	r0, [sp, #0x70]
  39dc82: 2105         	movs	r1, #0x5
  39dc84: f1fc fa4c    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1fc498
  39dc88: 4603         	mov	r3, r0
  39dc8a: 4618         	mov	r0, r3
  39dc8c: f74f f8e2    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xb0e3c
  39dc90: 4603         	mov	r3, r0
  39dc92: 9314         	str	r3, [sp, #0x50]
  39dc94: 981c         	ldr	r0, [sp, #0x70]
  39dc96: 2106         	movs	r1, #0x6
  39dc98: f1fc fa42    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1fc484
  39dc9c: 4603         	mov	r3, r0
  39dc9e: 4618         	mov	r0, r3
  39dca0: f74f f8d8    	bl	0x2ece54 <cocos2d::CCInteger::getValue() const> @ imm = #-0xb0e50
  39dca4: 4603         	mov	r3, r0
  39dca6: 9315         	str	r3, [sp, #0x54]
  39dca8: 981c         	ldr	r0, [sp, #0x70]
  39dcaa: 2107         	movs	r1, #0x7
  39dcac: f1fc fa38    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1fc470
  39dcb0: 4603         	mov	r3, r0
  39dcb2: 9311         	str	r3, [sp, #0x44]
  39dcb4: 981c         	ldr	r0, [sp, #0x70]
  39dcb6: 2103         	movs	r1, #0x3
  39dcb8: f1fc fa32    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1fc464
  39dcbc: 4603         	mov	r3, r0
  39dcbe: 4618         	mov	r0, r3
  39dcc0: f1fb fe32    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1fbc64
  39dcc4: 4603         	mov	r3, r0
  39dcc6: aa05         	add	r2, sp, #0x14
  39dcc8: 4610         	mov	r0, r2
  39dcca: 4619         	mov	r1, r3
  39dccc: f018 f0d0    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x4181a0
  39dcd0: f7d9 ff36    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x26194
  39dcd4: 4605         	mov	r5, r0
  39dcd6: aa08         	add	r2, sp, #0x20
  39dcd8: ab06         	add	r3, sp, #0x18
  39dcda: 4610         	mov	r0, r2
  39dcdc: 4619         	mov	r1, r3
  39dcde: f018 f403    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x418806
  39dce2: ab08         	add	r3, sp, #0x20
  39dce4: 4628         	mov	r0, r5
  39dce6: 4619         	mov	r1, r3
  39dce8: f7db ff3c    	bl	0x379b64 <NetworkManager::getPingTimeFor(std::string)> @ imm = #-0x24188
  39dcec: ec41 0b17    	vmov	d7, r0, r1
  39dcf0: eef7 7bc7    	vcvt.f32.f64	s15, d7
  39dcf4: edcd 7a17    	vstr	s15, [sp, #92]
  39dcf8: ab08         	add	r3, sp, #0x20
  39dcfa: 4618         	mov	r0, r3
  39dcfc: f017 f60a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417c14
  39dd00: 9b01         	ldr	r3, [sp, #0x4]
  39dd02: 681b         	ldr	r3, [r3]
  39dd04: f503 73ea    	add.w	r3, r3, #0x1d4
  39dd08: 681d         	ldr	r5, [r3]
  39dd0a: aa09         	add	r2, sp, #0x24
  39dd0c: ab05         	add	r3, sp, #0x14
  39dd0e: 4610         	mov	r0, r2
  39dd10: 4619         	mov	r1, r3
  39dd12: f018 f3e9    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4187d2
  39dd16: ab09         	add	r3, sp, #0x24
  39dd18: 9801         	ldr	r0, [sp, #0x4]
  39dd1a: 4619         	mov	r1, r3
  39dd1c: 9a10         	ldr	r2, [sp, #0x40]
  39dd1e: 47a8         	blx	r5
  39dd20: ab09         	add	r3, sp, #0x24
  39dd22: 4618         	mov	r0, r3
  39dd24: f017 f5f6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417bec
  39dd28: 9b12         	ldr	r3, [sp, #0x48]
  39dd2a: f1b3 3fff    	cmp.w	r3, #0xffffffff
  39dd2e: d111         	bne	0x39dd54 <PlayerLobby::updateLabels()+0x5d0> @ imm = #0x22
  39dd30: f7d9 ff06    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x261f4
  39dd34: 4605         	mov	r5, r0
  39dd36: aa0a         	add	r2, sp, #0x28
  39dd38: ab06         	add	r3, sp, #0x18
  39dd3a: 4610         	mov	r0, r2
  39dd3c: 4619         	mov	r1, r3
  39dd3e: f018 f3d3    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x4187a6
  39dd42: ab0a         	add	r3, sp, #0x28
  39dd44: 4628         	mov	r0, r5
  39dd46: 4619         	mov	r1, r3
  39dd48: f7db fb90    	bl	0x37946c <NetworkManager::requestPlayerSetup(std::string)> @ imm = #-0x248e0
  39dd4c: ab0a         	add	r3, sp, #0x28
  39dd4e: 4618         	mov	r0, r3
  39dd50: f017 f5e0    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417bc0
  39dd54: f7d9 fef4    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x26218
  39dd58: 4603         	mov	r3, r0
  39dd5a: 4618         	mov	r0, r3
  39dd5c: f7dc fb8e    	bl	0x37a47c <NetworkManager::getPlayerTimeout()> @ imm = #-0x238e4
  39dd60: 4603         	mov	r3, r0
  39dd62: ee07 3a90    	vmov	s15, r3
  39dd66: eeb8 7ae7    	vcvt.f32.s32	s14, s15
  39dd6a: eddd 7a17    	vldr	s15, [sp, #92]
  39dd6e: eeb4 7ae7    	vcmpe.f32	s14, s15
  39dd72: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  39dd76: d506         	bpl	0x39dd86 <PlayerLobby::updateLabels()+0x602> @ imm = #0xc
  39dd78: 9b1b         	ldr	r3, [sp, #0x6c]
  39dd7a: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39dd7e: 2b04         	cmp	r3, #0x4
  39dd80: d001         	beq	0x39dd86 <PlayerLobby::updateLabels()+0x602> @ imm = #0x2
  39dd82: 2301         	movs	r3, #0x1
  39dd84: e000         	b	0x39dd88 <PlayerLobby::updateLabels()+0x604> @ imm = #0x0
  39dd86: 2300         	movs	r3, #0x0
  39dd88: 2b00         	cmp	r3, #0x0
  39dd8a: d003         	beq	0x39dd94 <PlayerLobby::updateLabels()+0x610> @ imm = #0x6
  39dd8c: 9b1b         	ldr	r3, [sp, #0x6c]
  39dd8e: 2204         	movs	r2, #0x4
  39dd90: f8c3 2118    	str.w	r2, [r3, #0x118]
  39dd94: 981b         	ldr	r0, [sp, #0x6c]
  39dd96: 9911         	ldr	r1, [sp, #0x44]
  39dd98: 9a12         	ldr	r2, [sp, #0x48]
  39dd9a: f7fb fdc3    	bl	0x399924 <LobbyRow::setHead(cocos2d::CCArray*, int)> @ imm = #-0x447a
  39dd9e: 981b         	ldr	r0, [sp, #0x6c]
  39dda0: 9913         	ldr	r1, [sp, #0x4c]
  39dda2: f7fb fd53    	bl	0x39984c <LobbyRow::setTeamId(int)> @ imm = #-0x455a
  39dda6: aa0b         	add	r2, sp, #0x2c
  39dda8: ab04         	add	r3, sp, #0x10
  39ddaa: 4610         	mov	r0, r2
  39ddac: 4619         	mov	r1, r3
  39ddae: f018 f39b    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x418736
  39ddb2: ab0b         	add	r3, sp, #0x2c
  39ddb4: 981b         	ldr	r0, [sp, #0x6c]
  39ddb6: 4619         	mov	r1, r3
  39ddb8: f7fb fd84    	bl	0x3998c4 <LobbyRow::setPlayerName(std::string)> @ imm = #-0x44f8
  39ddbc: ab0b         	add	r3, sp, #0x2c
  39ddbe: 4618         	mov	r0, r3
  39ddc0: f017 f5a8    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417b50
  39ddc4: 9b1b         	ldr	r3, [sp, #0x6c]
  39ddc6: 681b         	ldr	r3, [r3]
  39ddc8: 334c         	adds	r3, #0x4c
  39ddca: 681d         	ldr	r5, [r3]
  39ddcc: 9e1b         	ldr	r6, [sp, #0x6c]
  39ddce: 4bb4         	ldr	r3, [pc, #0x2d0]        @ 0x39e0a0 <PlayerLobby::updateLabels()+0x91c>
  39ddd0: 58e3         	ldr	r3, [r4, r3]
  39ddd2: ed93 7a01    	vldr	s14, [r3, #4]
  39ddd6: eef0 7a00    	vmov.f32	s15, #2.000000e+00
  39ddda: ee87 7a27    	vdiv.f32	s14, s14, s15
  39ddde: eddf 7aa7    	vldr	s15, [pc, #668]         @ 0x39e07c <PlayerLobby::updateLabels()+0x8f8>
  39dde2: ee37 7a27    	vadd.f32	s14, s14, s15
  39dde6: 9b10         	ldr	r3, [sp, #0x40]
  39dde8: ee07 3a90    	vmov	s15, r3
  39ddec: eef8 6ae7    	vcvt.f32.s32	s13, s15
  39ddf0: eddd 7a1a    	vldr	s15, [sp, #104]
  39ddf4: ee66 7aa7    	vmul.f32	s15, s13, s15
  39ddf8: ee77 7a67    	vsub.f32	s15, s14, s15
  39ddfc: ab1d         	add	r3, sp, #0x74
  39ddfe: 4618         	mov	r0, r3
  39de00: f04f 0100    	mov.w	r1, #0x0
  39de04: f2c4 21d8    	movt	r1, #0x42d8
  39de08: ee17 2a90    	vmov	r2, s15
  39de0c: f1f4 ff70    	bl	0x592cf0 <cocos2d::CCPoint::CCPoint(float, float)> @ imm = #0x1f4ee0
  39de10: ab1d         	add	r3, sp, #0x74
  39de12: 4630         	mov	r0, r6
  39de14: 4619         	mov	r1, r3
  39de16: 47a8         	blx	r5
  39de18: 981b         	ldr	r0, [sp, #0x6c]
  39de1a: f7fb ff1f    	bl	0x399c5c <LobbyRow::updateState()> @ imm = #-0x41c2
  39de1e: 981b         	ldr	r0, [sp, #0x6c]
  39de20: 9914         	ldr	r1, [sp, #0x50]
  39de22: f7fb feb3    	bl	0x399b8c <LobbyRow::setRank(int)> @ imm = #-0x429a
  39de26: 981b         	ldr	r0, [sp, #0x6c]
  39de28: 9915         	ldr	r1, [sp, #0x54]
  39de2a: f7fb fef7    	bl	0x399c1c <LobbyRow::setSkill(int)> @ imm = #-0x4212
  39de2e: 9b16         	ldr	r3, [sp, #0x58]
  39de30: 2b00         	cmp	r3, #0x0
  39de32: db06         	blt	0x39de42 <PlayerLobby::updateLabels()+0x6be> @ imm = #0xc
  39de34: 9b16         	ldr	r3, [sp, #0x58]
  39de36: 2b02         	cmp	r3, #0x2
  39de38: dc03         	bgt	0x39de42 <PlayerLobby::updateLabels()+0x6be> @ imm = #0x6
  39de3a: 981b         	ldr	r0, [sp, #0x6c]
  39de3c: 9916         	ldr	r1, [sp, #0x58]
  39de3e: f7fb fec3    	bl	0x399bc8 <LobbyRow::setOS(int)> @ imm = #-0x427a
  39de42: ab0c         	add	r3, sp, #0x30
  39de44: 4618         	mov	r0, r3
  39de46: f017 f565    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417aca
  39de4a: ab06         	add	r3, sp, #0x18
  39de4c: 4618         	mov	r0, r3
  39de4e: f017 f561    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417ac2
  39de52: ab05         	add	r3, sp, #0x14
  39de54: 4618         	mov	r0, r3
  39de56: f017 f55d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417aba
  39de5a: ab04         	add	r3, sp, #0x10
  39de5c: 4618         	mov	r0, r3
  39de5e: f017 f559    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417ab2
  39de62: 9b10         	ldr	r3, [sp, #0x40]
  39de64: 3301         	adds	r3, #0x1
  39de66: 9310         	str	r3, [sp, #0x40]
  39de68: 9d10         	ldr	r5, [sp, #0x40]
  39de6a: ab1f         	add	r3, sp, #0x7c
  39de6c: 4618         	mov	r0, r3
  39de6e: f000 fce9    	bl	0x39e844 <std::vector<LobbyRow*, std::allocator<LobbyRow*>>::size() const> @ imm = #0x9d2
  39de72: 4603         	mov	r3, r0
  39de74: 429d         	cmp	r5, r3
  39de76: bf2c         	ite	hs
  39de78: 2300         	movhs	r3, #0x0
  39de7a: 2301         	movlo	r3, #0x1
  39de7c: b2db         	uxtb	r3, r3
  39de7e: 2b00         	cmp	r3, #0x0
  39de80: f47f adea    	bne.w	0x39da58 <PlayerLobby::updateLabels()+0x2d4> @ imm = #-0x42c
  39de84: f7d9 fe5c    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x26348
  39de88: 4603         	mov	r3, r0
  39de8a: 4618         	mov	r0, r3
  39de8c: f7dc f91a    	bl	0x37a0c4 <NetworkManager::isSearching()> @ imm = #-0x23dcc
  39de90: 4603         	mov	r3, r0
  39de92: f083 0301    	eor	r3, r3, #0x1
  39de96: b2db         	uxtb	r3, r3
  39de98: 2b00         	cmp	r3, #0x0
  39de9a: d00d         	beq	0x39deb8 <PlayerLobby::updateLabels()+0x734> @ imm = #0x1a
  39de9c: f7d9 fe50    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x26360
  39dea0: 4603         	mov	r3, r0
  39dea2: 4618         	mov	r0, r3
  39dea4: f7dc f93a    	bl	0x37a11c <NetworkManager::canSearch()> @ imm = #-0x23d8c
  39dea8: 4603         	mov	r3, r0
  39deaa: f083 0301    	eor	r3, r3, #0x1
  39deae: b2db         	uxtb	r3, r3
  39deb0: 2b00         	cmp	r3, #0x0
  39deb2: d001         	beq	0x39deb8 <PlayerLobby::updateLabels()+0x734> @ imm = #0x2
  39deb4: 2301         	movs	r3, #0x1
  39deb6: e000         	b	0x39deba <PlayerLobby::updateLabels()+0x736> @ imm = #0x0
  39deb8: 2300         	movs	r3, #0x0
  39deba: 2b00         	cmp	r3, #0x0
  39debc: d003         	beq	0x39dec6 <PlayerLobby::updateLabels()+0x742> @ imm = #0x6
  39debe: 9b01         	ldr	r3, [sp, #0x4]
  39dec0: 2200         	movs	r2, #0x0
  39dec2: f883 214d    	strb.w	r2, [r3, #0x14d]
  39dec6: ab1d         	add	r3, sp, #0x74
  39dec8: 4618         	mov	r0, r3
  39deca: f3ec fa93    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ec526
  39dece: aa0c         	add	r2, sp, #0x30
  39ded0: ab1d         	add	r3, sp, #0x74
  39ded2: 4610         	mov	r0, r2
  39ded4: 4a73         	ldr	r2, [pc, #0x1cc]        @ 0x39e0a4 <PlayerLobby::updateLabels()+0x920>
  39ded6: 447a         	add	r2, pc
  39ded8: 4611         	mov	r1, r2
  39deda: 461a         	mov	r2, r3
  39dedc: f018 f5c0    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x418b80
  39dee0: ab1d         	add	r3, sp, #0x74
  39dee2: 4618         	mov	r0, r3
  39dee4: f3ec fa8a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ec514
  39dee8: 9b01         	ldr	r3, [sp, #0x4]
  39deea: 681b         	ldr	r3, [r3]
  39deec: f503 73ee    	add.w	r3, r3, #0x1dc
  39def0: 681b         	ldr	r3, [r3]
  39def2: 9801         	ldr	r0, [sp, #0x4]
  39def4: 4798         	blx	r3
  39def6: 4603         	mov	r3, r0
  39def8: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39defc: 2b02         	cmp	r3, #0x2
  39defe: d00c         	beq	0x39df1a <PlayerLobby::updateLabels()+0x796> @ imm = #0x18
  39df00: 2b03         	cmp	r3, #0x3
  39df02: d002         	beq	0x39df0a <PlayerLobby::updateLabels()+0x786> @ imm = #0x4
  39df04: 2b01         	cmp	r3, #0x1
  39df06: d010         	beq	0x39df2a <PlayerLobby::updateLabels()+0x7a6> @ imm = #0x20
  39df08: e017         	b	0x39df3a <PlayerLobby::updateLabels()+0x7b6> @ imm = #0x2e
  39df0a: ab0c         	add	r3, sp, #0x30
  39df0c: 4618         	mov	r0, r3
  39df0e: 4b66         	ldr	r3, [pc, #0x198]        @ 0x39e0a8 <PlayerLobby::updateLabels()+0x924>
  39df10: 447b         	add	r3, pc
  39df12: 4619         	mov	r1, r3
  39df14: f017 f7ac    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x417f58
  39df18: e00f         	b	0x39df3a <PlayerLobby::updateLabels()+0x7b6> @ imm = #0x1e
  39df1a: ab0c         	add	r3, sp, #0x30
  39df1c: 4618         	mov	r0, r3
  39df1e: 4b63         	ldr	r3, [pc, #0x18c]        @ 0x39e0ac <PlayerLobby::updateLabels()+0x928>
  39df20: 447b         	add	r3, pc
  39df22: 4619         	mov	r1, r3
  39df24: f017 f7a4    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x417f48
  39df28: e007         	b	0x39df3a <PlayerLobby::updateLabels()+0x7b6> @ imm = #0xe
  39df2a: ab0c         	add	r3, sp, #0x30
  39df2c: 4618         	mov	r0, r3
  39df2e: 4b60         	ldr	r3, [pc, #0x180]        @ 0x39e0b0 <PlayerLobby::updateLabels()+0x92c>
  39df30: 447b         	add	r3, pc
  39df32: 4619         	mov	r1, r3
  39df34: f017 f79c    	bl	0x7b5e70 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x193c0> @ imm = #0x417f38
  39df38: bf00         	nop
  39df3a: f7d9 fe01    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x263fe
  39df3e: 4605         	mov	r5, r0
  39df40: aa1d         	add	r2, sp, #0x74
  39df42: ab0c         	add	r3, sp, #0x30
  39df44: 4610         	mov	r0, r2
  39df46: 4619         	mov	r1, r3
  39df48: f018 f2ce    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x41859c
  39df4c: 4b52         	ldr	r3, [pc, #0x148]        @ 0x39e098 <PlayerLobby::updateLabels()+0x914>
  39df4e: 58e3         	ldr	r3, [r4, r3]
  39df50: 681b         	ldr	r3, [r3]
  39df52: aa1d         	add	r2, sp, #0x74
  39df54: 4628         	mov	r0, r5
  39df56: 4611         	mov	r1, r2
  39df58: 461a         	mov	r2, r3
  39df5a: f7db f90f    	bl	0x37917c <NetworkManager::sendLobbyStatus(std::string, int)> @ imm = #-0x24de2
  39df5e: ab1d         	add	r3, sp, #0x74
  39df60: 4618         	mov	r0, r3
  39df62: f017 f4d7    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4179ae
  39df66: ab0c         	add	r3, sp, #0x30
  39df68: 4618         	mov	r0, r3
  39df6a: f017 f4d3    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4179a6
  39df6e: ab1f         	add	r3, sp, #0x7c
  39df70: 4618         	mov	r0, r3
  39df72: f000 fbe1    	bl	0x39e738 <std::vector<LobbyRow*, std::allocator<LobbyRow*>>::~vector()> @ imm = #0x7c2
  39df76: e07f         	b	0x39e078 <PlayerLobby::updateLabels()+0x8f4> @ imm = #0xfe
  39df78: ab1f         	add	r3, sp, #0x7c
  39df7a: 4618         	mov	r0, r3
  39df7c: f017 f4ca    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417994
  39df80: e7ff         	b	0x39df82 <PlayerLobby::updateLabels()+0x7fe> @ imm = #-0x2
  39df82: ab1d         	add	r3, sp, #0x74
  39df84: 4618         	mov	r0, r3
  39df86: f3ec fa39    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ec472
  39df8a: f3ea f88f    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ea11e
  39df8e: ab1f         	add	r3, sp, #0x7c
  39df90: 4618         	mov	r0, r3
  39df92: f017 f4bf    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41797e
  39df96: e7ff         	b	0x39df98 <PlayerLobby::updateLabels()+0x814> @ imm = #-0x2
  39df98: ab1d         	add	r3, sp, #0x74
  39df9a: 4618         	mov	r0, r3
  39df9c: f3ec fa2e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ec45c
  39dfa0: f3ea f884    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ea108
  39dfa4: 2e00         	cmp	r6, #0x0
  39dfa6: d003         	beq	0x39dfb0 <PlayerLobby::updateLabels()+0x82c> @ imm = #0x6
  39dfa8: ab03         	add	r3, sp, #0xc
  39dfaa: 4618         	mov	r0, r3
  39dfac: f017 f4b2    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417964
  39dfb0: 2d00         	cmp	r5, #0x0
  39dfb2: d00b         	beq	0x39dfcc <PlayerLobby::updateLabels()+0x848> @ imm = #0x16
  39dfb4: bf00         	nop
  39dfb6: ab02         	add	r3, sp, #0x8
  39dfb8: 4618         	mov	r0, r3
  39dfba: f017 f4ab    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417956
  39dfbe: e006         	b	0x39dfce <PlayerLobby::updateLabels()+0x84a> @ imm = #0xc
  39dfc0: ab06         	add	r3, sp, #0x18
  39dfc2: 4618         	mov	r0, r3
  39dfc4: f017 f4a6    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41794c
  39dfc8: e001         	b	0x39dfce <PlayerLobby::updateLabels()+0x84a> @ imm = #0x2
  39dfca: e000         	b	0x39dfce <PlayerLobby::updateLabels()+0x84a> @ imm = #0x0
  39dfcc: bf00         	nop
  39dfce: ab1d         	add	r3, sp, #0x74
  39dfd0: 4618         	mov	r0, r3
  39dfd2: f017 f49f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41793e
  39dfd6: e049         	b	0x39e06c <PlayerLobby::updateLabels()+0x8e8> @ imm = #0x92
  39dfd8: ab1d         	add	r3, sp, #0x74
  39dfda: 4618         	mov	r0, r3
  39dfdc: f3ec fa0e    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ec41c
  39dfe0: e044         	b	0x39e06c <PlayerLobby::updateLabels()+0x8e8> @ imm = #0x88
  39dfe2: ab1d         	add	r3, sp, #0x74
  39dfe4: 4618         	mov	r0, r3
  39dfe6: f3ec fa09    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ec412
  39dfea: e02b         	b	0x39e044 <PlayerLobby::updateLabels()+0x8c0> @ imm = #0x56
  39dfec: ab07         	add	r3, sp, #0x1c
  39dfee: 4618         	mov	r0, r3
  39dff0: f017 f490    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417920
  39dff4: e7ff         	b	0x39dff6 <PlayerLobby::updateLabels()+0x872> @ imm = #-0x2
  39dff6: ab1d         	add	r3, sp, #0x74
  39dff8: 4618         	mov	r0, r3
  39dffa: f3ec f9ff    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ec3fe
  39dffe: e013         	b	0x39e028 <PlayerLobby::updateLabels()+0x8a4> @ imm = #0x26
  39e000: ab08         	add	r3, sp, #0x20
  39e002: 4618         	mov	r0, r3
  39e004: f017 f486    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41790c
  39e008: e00e         	b	0x39e028 <PlayerLobby::updateLabels()+0x8a4> @ imm = #0x1c
  39e00a: ab09         	add	r3, sp, #0x24
  39e00c: 4618         	mov	r0, r3
  39e00e: f017 f481    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417902
  39e012: e009         	b	0x39e028 <PlayerLobby::updateLabels()+0x8a4> @ imm = #0x12
  39e014: ab0a         	add	r3, sp, #0x28
  39e016: 4618         	mov	r0, r3
  39e018: f017 f47c    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4178f8
  39e01c: e004         	b	0x39e028 <PlayerLobby::updateLabels()+0x8a4> @ imm = #0x8
  39e01e: ab0b         	add	r3, sp, #0x2c
  39e020: 4618         	mov	r0, r3
  39e022: f017 f477    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4178ee
  39e026: e7ff         	b	0x39e028 <PlayerLobby::updateLabels()+0x8a4> @ imm = #-0x2
  39e028: ab0c         	add	r3, sp, #0x30
  39e02a: 4618         	mov	r0, r3
  39e02c: f017 f472    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4178e4
  39e030: e7ff         	b	0x39e032 <PlayerLobby::updateLabels()+0x8ae> @ imm = #-0x2
  39e032: ab06         	add	r3, sp, #0x18
  39e034: 4618         	mov	r0, r3
  39e036: f017 f46d    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4178da
  39e03a: e7ff         	b	0x39e03c <PlayerLobby::updateLabels()+0x8b8> @ imm = #-0x2
  39e03c: ab05         	add	r3, sp, #0x14
  39e03e: 4618         	mov	r0, r3
  39e040: f017 f468    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4178d0
  39e044: ab04         	add	r3, sp, #0x10
  39e046: 4618         	mov	r0, r3
  39e048: f017 f464    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4178c8
  39e04c: e00e         	b	0x39e06c <PlayerLobby::updateLabels()+0x8e8> @ imm = #0x1c
  39e04e: ab1d         	add	r3, sp, #0x74
  39e050: 4618         	mov	r0, r3
  39e052: f3ec f9d3    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ec3a6
  39e056: e009         	b	0x39e06c <PlayerLobby::updateLabels()+0x8e8> @ imm = #0x12
  39e058: ab1d         	add	r3, sp, #0x74
  39e05a: 4618         	mov	r0, r3
  39e05c: f017 f45a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4178b4
  39e060: e7ff         	b	0x39e062 <PlayerLobby::updateLabels()+0x8de> @ imm = #-0x2
  39e062: ab0c         	add	r3, sp, #0x30
  39e064: 4618         	mov	r0, r3
  39e066: f017 f455    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4178aa
  39e06a: e7ff         	b	0x39e06c <PlayerLobby::updateLabels()+0x8e8> @ imm = #-0x2
  39e06c: ab1f         	add	r3, sp, #0x7c
  39e06e: 4618         	mov	r0, r3
  39e070: f000 fb62    	bl	0x39e738 <std::vector<LobbyRow*, std::allocator<LobbyRow*>>::~vector()> @ imm = #0x6c4
  39e074: f3ea f81a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3ea034
  39e078: b023         	add	sp, #0x8c
  39e07a: bdf0         	pop	{r4, r5, r6, r7, pc}
  ; --- end of code (Ghidra body ends at 0x39e07b); words below are literal-pool data ---
  39e07c: 0000         	movs	r0, r0
  39e07e: 4234         	tst	r4, r6
  39e080: 527a         	strh	r2, [r7, r1]
  39e082: 0059         	lsls	r1, r3, #0x1
  39e084: dd54         	ble	0x39e130 <PlayerLobby::setMapName(std::string, int)+0x70> @ imm = #0xa8
  39e086: ffff 4440    	<unknown>
  39e08a: 0043         	lsls	r3, r0, #0x1
  39e08c: 441c         	add	r4, r3
  39e08e: 0043         	lsls	r3, r0, #0x1
  39e090: d8b0         	bhi	0x39dff4 <PlayerLobby::updateLabels()+0x870> @ imm = #-0xa0
  39e092: ffff 43bc    	vrsra.u64	d20, d28, #0x1
  39e096: 0043         	lsls	r3, r0, #0x1
  39e098: d7d0         	bvc	0x39e03c <PlayerLobby::updateLabels()+0x8b8> @ imm = #-0x60
  39e09a: ffff dd58    	<unknown>
  39e09e: ffff d724    	<unknown>
  39e0a2: ffff 438e    	<unknown>
  39e0a6: 0043         	lsls	r3, r0, #0x1
  39e0a8: 4358         	muls	r0, r3, r0
  39e0aa: 0043         	lsls	r3, r0, #0x1
  39e0ac: 434c         	muls	r4, r1, r4
  39e0ae: 0043         	lsls	r3, r0, #0x1
  39e0b0: 4334         	orrs	r4, r6
  39e0b2: 0043         	lsls	r3, r0, #0x1

// ==== PlayerLobby::onPlayerDisconnected
//      file offset 0x39e0b4 (= ELF address; Ghidra 0x3ae0b4), 10 bytes, Thumb-2
  39e0b4: b082         	sub	sp, #0x8
  39e0b6: 9001         	str	r0, [sp, #0x4]
  39e0b8: 9100         	str	r1, [sp]
  39e0ba: b002         	add	sp, #0x8
  39e0bc: 4770         	bx	lr

// ==== PlayerLobby::setMapName
//      file offset 0x39e0c0 (= ELF address; Ghidra 0x3ae0c0), 220 bytes, Thumb-2
  39e0c0: b510         	push	{r4, lr}
  39e0c2: b084         	sub	sp, #0x10
  39e0c4: 9003         	str	r0, [sp, #0xc]
  39e0c6: 9102         	str	r1, [sp, #0x8]
  39e0c8: 9201         	str	r2, [sp, #0x4]
  39e0ca: 4c30         	ldr	r4, [pc, #0xc0]         @ 0x39e18c <PlayerLobby::setMapName(std::string, int)+0xcc>
  39e0cc: 447c         	add	r4, pc
  39e0ce: 9802         	ldr	r0, [sp, #0x8]
  39e0d0: f016 f7c4    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x416f88
  39e0d4: 4603         	mov	r3, r0
  39e0d6: 2b00         	cmp	r3, #0x0
  39e0d8: d00a         	beq	0x39e0f0 <PlayerLobby::setMapName(std::string, int)+0x30> @ imm = #0x14
  39e0da: 9802         	ldr	r0, [sp, #0x8]
  39e0dc: 4b2c         	ldr	r3, [pc, #0xb0]         @ 0x39e190 <PlayerLobby::setMapName(std::string, int)+0xd0>
  39e0de: 447b         	add	r3, pc
  39e0e0: 4619         	mov	r1, r3
  39e0e2: f017 f31f    	bl	0x7b5724 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18c74> @ imm = #0x41763e
  39e0e6: 4603         	mov	r3, r0
  39e0e8: 2b00         	cmp	r3, #0x0
  39e0ea: d101         	bne	0x39e0f0 <PlayerLobby::setMapName(std::string, int)+0x30> @ imm = #0x2
  39e0ec: 2301         	movs	r3, #0x1
  39e0ee: e000         	b	0x39e0f2 <PlayerLobby::setMapName(std::string, int)+0x32> @ imm = #0x0
  39e0f0: 2300         	movs	r3, #0x0
  39e0f2: 2b00         	cmp	r3, #0x0
  39e0f4: d018         	beq	0x39e128 <PlayerLobby::setMapName(std::string, int)+0x68> @ imm = #0x30
  39e0f6: 4b27         	ldr	r3, [pc, #0x9c]         @ 0x39e194 <PlayerLobby::setMapName(std::string, int)+0xd4>
  39e0f8: 58e3         	ldr	r3, [r4, r3]
  39e0fa: 4618         	mov	r0, r3
  39e0fc: 9902         	ldr	r1, [sp, #0x8]
  39e0fe: f018 f259    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x4184b2
  39e102: 9b03         	ldr	r3, [sp, #0xc]
  39e104: 681b         	ldr	r3, [r3]
  39e106: f503 73e2    	add.w	r3, r3, #0x1c4
  39e10a: 681b         	ldr	r3, [r3]
  39e10c: 9803         	ldr	r0, [sp, #0xc]
  39e10e: 4798         	blx	r3
  39e110: 4b21         	ldr	r3, [pc, #0x84]         @ 0x39e198 <PlayerLobby::setMapName(std::string, int)+0xd8>
  39e112: 58e3         	ldr	r3, [r4, r3]
  39e114: 681b         	ldr	r3, [r3]
  39e116: 2b02         	cmp	r3, #0x2
  39e118: d001         	beq	0x39e11e <PlayerLobby::setMapName(std::string, int)+0x5e> @ imm = #0x2
  39e11a: 2305         	movs	r3, #0x5
  39e11c: e000         	b	0x39e120 <PlayerLobby::setMapName(std::string, int)+0x60> @ imm = #0x0
  39e11e: 2302         	movs	r3, #0x2
  39e120: 4a1d         	ldr	r2, [pc, #0x74]         @ 0x39e198 <PlayerLobby::setMapName(std::string, int)+0xd8>
  39e122: 58a2         	ldr	r2, [r4, r2]
  39e124: 6013         	str	r3, [r2]
  39e126: e02f         	b	0x39e188 <PlayerLobby::setMapName(std::string, int)+0xc8> @ imm = #0x5e
  39e128: 4b1b         	ldr	r3, [pc, #0x6c]         @ 0x39e198 <PlayerLobby::setMapName(std::string, int)+0xd8>
  39e12a: 58e3         	ldr	r3, [r4, r3]
  39e12c: 681b         	ldr	r3, [r3]
  39e12e: 2b03         	cmp	r3, #0x3
  39e130: d107         	bne	0x39e142 <PlayerLobby::setMapName(std::string, int)+0x82> @ imm = #0xe
  39e132: 9802         	ldr	r0, [sp, #0x8]
  39e134: f016 f792    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x416f24
  39e138: 4603         	mov	r3, r0
  39e13a: 2b00         	cmp	r3, #0x0
  39e13c: d001         	beq	0x39e142 <PlayerLobby::setMapName(std::string, int)+0x82> @ imm = #0x2
  39e13e: 2301         	movs	r3, #0x1
  39e140: e000         	b	0x39e144 <PlayerLobby::setMapName(std::string, int)+0x84> @ imm = #0x0
  39e142: 2300         	movs	r3, #0x0
  39e144: 2b00         	cmp	r3, #0x0
  39e146: d006         	beq	0x39e156 <PlayerLobby::setMapName(std::string, int)+0x96> @ imm = #0xc
  39e148: 4b12         	ldr	r3, [pc, #0x48]         @ 0x39e194 <PlayerLobby::setMapName(std::string, int)+0xd4>
  39e14a: 58e3         	ldr	r3, [r4, r3]
  39e14c: 4618         	mov	r0, r3
  39e14e: 9902         	ldr	r1, [sp, #0x8]
  39e150: f018 f230    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x418460
  39e154: e018         	b	0x39e188 <PlayerLobby::setMapName(std::string, int)+0xc8> @ imm = #0x30
  39e156: 4b10         	ldr	r3, [pc, #0x40]         @ 0x39e198 <PlayerLobby::setMapName(std::string, int)+0xd8>
  39e158: 58e3         	ldr	r3, [r4, r3]
  39e15a: 681b         	ldr	r3, [r3]
  39e15c: 2b04         	cmp	r3, #0x4
  39e15e: d10a         	bne	0x39e176 <PlayerLobby::setMapName(std::string, int)+0xb6> @ imm = #0x14
  39e160: 9b01         	ldr	r3, [sp, #0x4]
  39e162: 2b00         	cmp	r3, #0x0
  39e164: d107         	bne	0x39e176 <PlayerLobby::setMapName(std::string, int)+0xb6> @ imm = #0xe
  39e166: 9802         	ldr	r0, [sp, #0x8]
  39e168: f016 f778    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x416ef0
  39e16c: 4603         	mov	r3, r0
  39e16e: 2b00         	cmp	r3, #0x0
  39e170: d001         	beq	0x39e176 <PlayerLobby::setMapName(std::string, int)+0xb6> @ imm = #0x2
  39e172: 2301         	movs	r3, #0x1
  39e174: e000         	b	0x39e178 <PlayerLobby::setMapName(std::string, int)+0xb8> @ imm = #0x0
  39e176: 2300         	movs	r3, #0x0
  39e178: 2b00         	cmp	r3, #0x0
  39e17a: d005         	beq	0x39e188 <PlayerLobby::setMapName(std::string, int)+0xc8> @ imm = #0xa
  39e17c: 4b05         	ldr	r3, [pc, #0x14]         @ 0x39e194 <PlayerLobby::setMapName(std::string, int)+0xd4>
  39e17e: 58e3         	ldr	r3, [r4, r3]
  39e180: 4618         	mov	r0, r3
  39e182: 9902         	ldr	r1, [sp, #0x8]
  39e184: f018 f216    	bl	0x7b65b4 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19b04> @ imm = #0x41842c
  39e188: b004         	add	sp, #0x10
  39e18a: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x39e18b); words below are literal-pool data ---
  39e18c: 493c         	ldr	r1, [pc, #0xf0]         @ 0x39e280 <PlayerLobby::updateMenuVisibility()+0xb4>
  39e18e: 0059         	lsls	r1, r3, #0x1
  39e190: 4192         	sbcs	r2, r2
  39e192: 0043         	lsls	r3, r0, #0x1
  39e194: d958         	bls	0x39e248 <PlayerLobby::updateMenuVisibility()+0x7c> @ imm = #0xb0
  39e196: ffff d838    	vqshrun.s64	d29, q12, #0x1
  39e19a: ffff b500    	<unknown>

// ==== PlayerLobby::updateReadyLabel
//      file offset 0x39e19c (= ELF address; Ghidra 0x3ae19c), 48 bytes, Thumb-2
  39e19c: b500         	push	{lr}
  39e19e: b083         	sub	sp, #0xc
  39e1a0: 9001         	str	r0, [sp, #0x4]
  39e1a2: 9b01         	ldr	r3, [sp, #0x4]
  39e1a4: f8d3 3108    	ldr.w	r3, [r3, #0x108]
  39e1a8: 681b         	ldr	r3, [r3]
  39e1aa: f503 73fc    	add.w	r3, r3, #0x1f8
  39e1ae: 681b         	ldr	r3, [r3]
  39e1b0: 9a01         	ldr	r2, [sp, #0x4]
  39e1b2: f8d2 2108    	ldr.w	r2, [r2, #0x108]
  39e1b6: 4610         	mov	r0, r2
  39e1b8: 4a03         	ldr	r2, [pc, #0xc]          @ 0x39e1c8 <PlayerLobby::updateReadyLabel()+0x2c>
  39e1ba: 447a         	add	r2, pc
  39e1bc: 4611         	mov	r1, r2
  39e1be: 4798         	blx	r3
  39e1c0: b003         	add	sp, #0xc
  39e1c2: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x39e1c5); words below are literal-pool data ---
  39e1c6: bf00         	nop
  39e1c8: 3e6e         	subs	r6, #0x6e
  39e1ca: 0043         	lsls	r3, r0, #0x1

// ==== PlayerLobby::updateMenuVisibility
//      file offset 0x39e1cc (= ELF address; Ghidra 0x3ae1cc), 454 bytes, Thumb-2
  39e1cc: b510         	push	{r4, lr}
  39e1ce: b082         	sub	sp, #0x8
  39e1d0: 9001         	str	r0, [sp, #0x4]
  39e1d2: 9b01         	ldr	r3, [sp, #0x4]
  39e1d4: f893 314d    	ldrb.w	r3, [r3, #0x14d]
  39e1d8: 2b00         	cmp	r3, #0x0
  39e1da: d038         	beq	0x39e24e <PlayerLobby::updateMenuVisibility()+0x82> @ imm = #0x70
  39e1dc: 9b01         	ldr	r3, [sp, #0x4]
  39e1de: 681b         	ldr	r3, [r3]
  39e1e0: f503 73ee    	add.w	r3, r3, #0x1dc
  39e1e4: 681b         	ldr	r3, [r3]
  39e1e6: 9801         	ldr	r0, [sp, #0x4]
  39e1e8: 4798         	blx	r3
  39e1ea: 4603         	mov	r3, r0
  39e1ec: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39e1f0: 2b03         	cmp	r3, #0x3
  39e1f2: d02c         	beq	0x39e24e <PlayerLobby::updateMenuVisibility()+0x82> @ imm = #0x58
  39e1f4: f7d9 fca4    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x266b8
  39e1f8: 4603         	mov	r3, r0
  39e1fa: 4618         	mov	r0, r3
  39e1fc: f7da fa44    	bl	0x378688 <NetworkManager::getPeerCount()> @ imm = #-0x25b78
  39e200: 4604         	mov	r4, r0
  39e202: f7d9 fc9d    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x266c6
  39e206: 4603         	mov	r3, r0
  39e208: 4618         	mov	r0, r3
  39e20a: f7db fd7d    	bl	0x379d08 <NetworkManager::getMaxPlayers()> @ imm = #-0x24506
  39e20e: 4603         	mov	r3, r0
  39e210: 3b01         	subs	r3, #0x1
  39e212: 429c         	cmp	r4, r3
  39e214: da1b         	bge	0x39e24e <PlayerLobby::updateMenuVisibility()+0x82> @ imm = #0x36
  39e216: f7d9 fc93    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x266da
  39e21a: 4603         	mov	r3, r0
  39e21c: 4618         	mov	r0, r3
  39e21e: f7db ff7d    	bl	0x37a11c <NetworkManager::canSearch()> @ imm = #-0x24106
  39e222: 4603         	mov	r3, r0
  39e224: 2b00         	cmp	r3, #0x0
  39e226: d108         	bne	0x39e23a <PlayerLobby::updateMenuVisibility()+0x6e> @ imm = #0x10
  39e228: f7d9 fc8a    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x266ec
  39e22c: 4603         	mov	r3, r0
  39e22e: 4618         	mov	r0, r3
  39e230: f7db ff48    	bl	0x37a0c4 <NetworkManager::isSearching()> @ imm = #-0x24170
  39e234: 4603         	mov	r3, r0
  39e236: 2b00         	cmp	r3, #0x0
  39e238: d009         	beq	0x39e24e <PlayerLobby::updateMenuVisibility()+0x82> @ imm = #0x12
  39e23a: 9b01         	ldr	r3, [sp, #0x4]
  39e23c: edd3 7a5a    	vldr	s15, [r3, #360]
  39e240: eef5 7a40    	vcmp.f32	s15, #0
  39e244: eef1 fa10    	vmrs	APSR_nzcv, fpscr
  39e248: d101         	bne	0x39e24e <PlayerLobby::updateMenuVisibility()+0x82> @ imm = #0x2
  39e24a: 2301         	movs	r3, #0x1
  39e24c: e000         	b	0x39e250 <PlayerLobby::updateMenuVisibility()+0x84> @ imm = #0x0
  39e24e: 2300         	movs	r3, #0x0
  39e250: 2b00         	cmp	r3, #0x0
  39e252: d018         	beq	0x39e286 <PlayerLobby::updateMenuVisibility()+0xba> @ imm = #0x30
  39e254: 9b01         	ldr	r3, [sp, #0x4]
  39e256: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  39e25a: 681b         	ldr	r3, [r3]
  39e25c: 3390         	adds	r3, #0x90
  39e25e: 681b         	ldr	r3, [r3]
  39e260: 9a01         	ldr	r2, [sp, #0x4]
  39e262: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  39e266: 4610         	mov	r0, r2
  39e268: 2101         	movs	r1, #0x1
  39e26a: 4798         	blx	r3
  39e26c: 9b01         	ldr	r3, [sp, #0x4]
  39e26e: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  39e272: 681b         	ldr	r3, [r3]
  39e274: 3390         	adds	r3, #0x90
  39e276: 681b         	ldr	r3, [r3]
  39e278: 9a01         	ldr	r2, [sp, #0x4]
  39e27a: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  39e27e: 4610         	mov	r0, r2
  39e280: 2101         	movs	r1, #0x1
  39e282: 4798         	blx	r3
  39e284: e017         	b	0x39e2b6 <PlayerLobby::updateMenuVisibility()+0xea> @ imm = #0x2e
  39e286: 9b01         	ldr	r3, [sp, #0x4]
  39e288: f8d3 3120    	ldr.w	r3, [r3, #0x120]
  39e28c: 681b         	ldr	r3, [r3]
  39e28e: 3390         	adds	r3, #0x90
  39e290: 681b         	ldr	r3, [r3]
  39e292: 9a01         	ldr	r2, [sp, #0x4]
  39e294: f8d2 2120    	ldr.w	r2, [r2, #0x120]
  39e298: 4610         	mov	r0, r2
  39e29a: 2100         	movs	r1, #0x0
  39e29c: 4798         	blx	r3
  39e29e: 9b01         	ldr	r3, [sp, #0x4]
  39e2a0: f8d3 311c    	ldr.w	r3, [r3, #0x11c]
  39e2a4: 681b         	ldr	r3, [r3]
  39e2a6: 3390         	adds	r3, #0x90
  39e2a8: 681b         	ldr	r3, [r3]
  39e2aa: 9a01         	ldr	r2, [sp, #0x4]
  39e2ac: f8d2 211c    	ldr.w	r2, [r2, #0x11c]
  39e2b0: 4610         	mov	r0, r2
  39e2b2: 2100         	movs	r1, #0x0
  39e2b4: 4798         	blx	r3
  39e2b6: f7d9 fc43    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2677a
  39e2ba: 4603         	mov	r3, r0
  39e2bc: 4618         	mov	r0, r3
  39e2be: f7da f9e3    	bl	0x378688 <NetworkManager::getPeerCount()> @ imm = #-0x25c3a
  39e2c2: 4603         	mov	r3, r0
  39e2c4: 2b00         	cmp	r3, #0x0
  39e2c6: d116         	bne	0x39e2f6 <PlayerLobby::updateMenuVisibility()+0x12a> @ imm = #0x2c
  39e2c8: f7d9 fc3a    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x2678c
  39e2cc: 4603         	mov	r3, r0
  39e2ce: 4618         	mov	r0, r3
  39e2d0: f7db fef8    	bl	0x37a0c4 <NetworkManager::isSearching()> @ imm = #-0x24210
  39e2d4: 4603         	mov	r3, r0
  39e2d6: f083 0301    	eor	r3, r3, #0x1
  39e2da: b2db         	uxtb	r3, r3
  39e2dc: 2b00         	cmp	r3, #0x0
  39e2de: d00a         	beq	0x39e2f6 <PlayerLobby::updateMenuVisibility()+0x12a> @ imm = #0x14
  39e2e0: f7d9 fc2e    	bl	0x377b40 <NetworkManager::sharedNetworkManager()> @ imm = #-0x267a4
  39e2e4: 4603         	mov	r3, r0
  39e2e6: 4618         	mov	r0, r3
  39e2e8: f7db ff18    	bl	0x37a11c <NetworkManager::canSearch()> @ imm = #-0x241d0
  39e2ec: 4603         	mov	r3, r0
  39e2ee: 2b00         	cmp	r3, #0x0
  39e2f0: d001         	beq	0x39e2f6 <PlayerLobby::updateMenuVisibility()+0x12a> @ imm = #0x2
  39e2f2: 2301         	movs	r3, #0x1
  39e2f4: e000         	b	0x39e2f8 <PlayerLobby::updateMenuVisibility()+0x12c> @ imm = #0x0
  39e2f6: 2300         	movs	r3, #0x0
  39e2f8: 2b00         	cmp	r3, #0x0
  39e2fa: d030         	beq	0x39e35e <PlayerLobby::updateMenuVisibility()+0x192> @ imm = #0x60
  39e2fc: 9b01         	ldr	r3, [sp, #0x4]
  39e2fe: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  39e302: 681b         	ldr	r3, [r3]
  39e304: 3390         	adds	r3, #0x90
  39e306: 681b         	ldr	r3, [r3]
  39e308: 9a01         	ldr	r2, [sp, #0x4]
  39e30a: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  39e30e: 4610         	mov	r0, r2
  39e310: 2101         	movs	r1, #0x1
  39e312: 4798         	blx	r3
  39e314: 9b01         	ldr	r3, [sp, #0x4]
  39e316: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39e31a: 681b         	ldr	r3, [r3]
  39e31c: 3390         	adds	r3, #0x90
  39e31e: 681b         	ldr	r3, [r3]
  39e320: 9a01         	ldr	r2, [sp, #0x4]
  39e322: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  39e326: 4610         	mov	r0, r2
  39e328: 2101         	movs	r1, #0x1
  39e32a: 4798         	blx	r3
  39e32c: 9b01         	ldr	r3, [sp, #0x4]
  39e32e: f8d3 3134    	ldr.w	r3, [r3, #0x134]
  39e332: 681b         	ldr	r3, [r3]
  39e334: 3390         	adds	r3, #0x90
  39e336: 681b         	ldr	r3, [r3]
  39e338: 9a01         	ldr	r2, [sp, #0x4]
  39e33a: f8d2 2134    	ldr.w	r2, [r2, #0x134]
  39e33e: 4610         	mov	r0, r2
  39e340: 2101         	movs	r1, #0x1
  39e342: 4798         	blx	r3
  39e344: 9b01         	ldr	r3, [sp, #0x4]
  39e346: f8d3 3138    	ldr.w	r3, [r3, #0x138]
  39e34a: 681b         	ldr	r3, [r3]
  39e34c: 3390         	adds	r3, #0x90
  39e34e: 681b         	ldr	r3, [r3]
  39e350: 9a01         	ldr	r2, [sp, #0x4]
  39e352: f8d2 2138    	ldr.w	r2, [r2, #0x138]
  39e356: 4610         	mov	r0, r2
  39e358: 2101         	movs	r1, #0x1
  39e35a: 4798         	blx	r3
  39e35c: e017         	b	0x39e38e <PlayerLobby::updateMenuVisibility()+0x1c2> @ imm = #0x2e
  39e35e: 9b01         	ldr	r3, [sp, #0x4]
  39e360: f8d3 3114    	ldr.w	r3, [r3, #0x114]
  39e364: 681b         	ldr	r3, [r3]
  39e366: 3390         	adds	r3, #0x90
  39e368: 681b         	ldr	r3, [r3]
  39e36a: 9a01         	ldr	r2, [sp, #0x4]
  39e36c: f8d2 2114    	ldr.w	r2, [r2, #0x114]
  39e370: 4610         	mov	r0, r2
  39e372: 2100         	movs	r1, #0x0
  39e374: 4798         	blx	r3
  39e376: 9b01         	ldr	r3, [sp, #0x4]
  39e378: f8d3 3118    	ldr.w	r3, [r3, #0x118]
  39e37c: 681b         	ldr	r3, [r3]
  39e37e: 3390         	adds	r3, #0x90
  39e380: 681b         	ldr	r3, [r3]
  39e382: 9a01         	ldr	r2, [sp, #0x4]
  39e384: f8d2 2118    	ldr.w	r2, [r2, #0x118]
  39e388: 4610         	mov	r0, r2
  39e38a: 2100         	movs	r1, #0x0
  39e38c: 4798         	blx	r3
  39e38e: b002         	add	sp, #0x8
  39e390: bd10         	pop	{r4, pc}

// ==== PlayerLobby::setLobbyDelegate
//      file offset 0x39e394 (= ELF address; Ghidra 0x3ae394), 18 bytes, Thumb-2
  39e394: b082         	sub	sp, #0x8
  39e396: 9001         	str	r0, [sp, #0x4]
  39e398: 9100         	str	r1, [sp]
  39e39a: 9b01         	ldr	r3, [sp, #0x4]
  39e39c: 9a00         	ldr	r2, [sp]
  39e39e: f8c3 2178    	str.w	r2, [r3, #0x178]
  39e3a2: b002         	add	sp, #0x8
  39e3a4: 4770         	bx	lr

// ==== PlayerLobby::tableCellSizeForIndex
//      file offset 0x39e3a8 (= ELF address; Ghidra 0x3ae3a8), 62 bytes, Thumb-2
  39e3a8: b500         	push	{lr}
  39e3aa: b087         	sub	sp, #0x1c
  39e3ac: 9003         	str	r0, [sp, #0xc]
  39e3ae: 9102         	str	r1, [sp, #0x8]
  39e3b0: 9201         	str	r2, [sp, #0x4]
  39e3b2: 9300         	str	r3, [sp]
  39e3b4: 9b02         	ldr	r3, [sp, #0x8]
  39e3b6: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  39e3ba: 4618         	mov	r0, r3
  39e3bc: 9900         	ldr	r1, [sp]
  39e3be: f1fb feaf    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1fbd5e
  39e3c2: 4603         	mov	r3, r0
  39e3c4: 9305         	str	r3, [sp, #0x14]
  39e3c6: 9b05         	ldr	r3, [sp, #0x14]
  39e3c8: 681b         	ldr	r3, [r3]
  39e3ca: 338c         	adds	r3, #0x8c
  39e3cc: 681b         	ldr	r3, [r3]
  39e3ce: 9a05         	ldr	r2, [sp, #0x14]
  39e3d0: 4610         	mov	r0, r2
  39e3d2: 4798         	blx	r3
  39e3d4: 4603         	mov	r3, r0
  39e3d6: 9803         	ldr	r0, [sp, #0xc]
  39e3d8: 4619         	mov	r1, r3
  39e3da: f1f4 fe69    	bl	0x5930b0 <cocos2d::CCSize::CCSize(cocos2d::CCSize const&)> @ imm = #0x1f4cd2
  39e3de: 9803         	ldr	r0, [sp, #0xc]
  39e3e0: b007         	add	sp, #0x1c
  39e3e2: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobby::tableCellSizeForIndex
//      file offset 0x39e3e8 (= ELF address; Ghidra 0x3ae3e8), 8 bytes, Thumb-2
  39e3e8: f1a1 01e8    	sub.w	r1, r1, #0xe8
  39e3ec: f7ff bfdc    	b.w	0x39e3a8 <PlayerLobby::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x48

// ==== PlayerLobby::tableCellAtIndex
//      file offset 0x39e3f0 (= ELF address; Ghidra 0x3ae3f0), 144 bytes, Thumb-2
  39e3f0: b510         	push	{r4, lr}
  39e3f2: b086         	sub	sp, #0x18
  39e3f4: 9003         	str	r0, [sp, #0xc]
  39e3f6: 9102         	str	r1, [sp, #0x8]
  39e3f8: 9201         	str	r2, [sp, #0x4]
  39e3fa: 9802         	ldr	r0, [sp, #0x8]
  39e3fc: f0b5 fa0c    	bl	0x453818 <cocos2d::extension::CCTableView::dequeueCell()> @ imm = #0xb5418
  39e400: 4603         	mov	r3, r0
  39e402: 9304         	str	r3, [sp, #0x10]
  39e404: 9b04         	ldr	r3, [sp, #0x10]
  39e406: 2b00         	cmp	r3, #0x0
  39e408: d006         	beq	0x39e418 <PlayerLobby::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x28> @ imm = #0xc
  39e40a: 9804         	ldr	r0, [sp, #0x10]
  39e40c: f0b7 fdee    	bl	0x455fec <cocos2d::extension::CCTableViewCell::getIdx()> @ imm = #0xb7bdc
  39e410: 4602         	mov	r2, r0
  39e412: 9b01         	ldr	r3, [sp, #0x4]
  39e414: 429a         	cmp	r2, r3
  39e416: d001         	beq	0x39e41c <PlayerLobby::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2c> @ imm = #0x2
  39e418: 2301         	movs	r3, #0x1
  39e41a: e000         	b	0x39e41e <PlayerLobby::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x2e> @ imm = #0x0
  39e41c: 2300         	movs	r3, #0x0
  39e41e: 2b00         	cmp	r3, #0x0
  39e420: d024         	beq	0x39e46c <PlayerLobby::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x7c> @ imm = #0x48
  39e422: 20ec         	movs	r0, #0xec
  39e424: f3e9 fa9e    	bl	0x787964 <operator new(unsigned int)> @ imm = #0x3e953c
  39e428: 4603         	mov	r3, r0
  39e42a: 461c         	mov	r4, r3
  39e42c: 4620         	mov	r0, r4
  39e42e: f75a ffc5    	bl	0x2f93bc <cocos2d::extension::CCTableViewCell::CCTableViewCell()> @ imm = #-0xa5076
  39e432: 9404         	str	r4, [sp, #0x10]
  39e434: 9b04         	ldr	r3, [sp, #0x10]
  39e436: 4618         	mov	r0, r3
  39e438: f1f9 fd60    	bl	0x597efc <cocos2d::CCObject::autorelease()> @ imm = #0x1f9ac0
  39e43c: 9b03         	ldr	r3, [sp, #0xc]
  39e43e: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  39e442: 4618         	mov	r0, r3
  39e444: 9901         	ldr	r1, [sp, #0x4]
  39e446: f1fb fe6b    	bl	0x59a120 <cocos2d::CCArray::objectAtIndex(unsigned int)> @ imm = #0x1fbcd6
  39e44a: 4603         	mov	r3, r0
  39e44c: 9305         	str	r3, [sp, #0x14]
  39e44e: 9b05         	ldr	r3, [sp, #0x14]
  39e450: 681b         	ldr	r3, [r3]
  39e452: 33e8         	adds	r3, #0xe8
  39e454: 681b         	ldr	r3, [r3]
  39e456: 9a05         	ldr	r2, [sp, #0x14]
  39e458: 4610         	mov	r0, r2
  39e45a: 4798         	blx	r3
  39e45c: 9b04         	ldr	r3, [sp, #0x10]
  39e45e: 681b         	ldr	r3, [r3]
  39e460: 33c8         	adds	r3, #0xc8
  39e462: 681b         	ldr	r3, [r3]
  39e464: 9a04         	ldr	r2, [sp, #0x10]
  39e466: 4610         	mov	r0, r2
  39e468: 9905         	ldr	r1, [sp, #0x14]
  39e46a: 4798         	blx	r3
  39e46c: 9b04         	ldr	r3, [sp, #0x10]
  39e46e: e004         	b	0x39e47a <PlayerLobby::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)+0x8a> @ imm = #0x8
  39e470: 4620         	mov	r0, r4
  39e472: f3e9 fe17    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x3e9c2e
  39e476: f3e9 fe19    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3e9c32
  39e47a: 4618         	mov	r0, r3
  39e47c: b006         	add	sp, #0x18
  39e47e: bd10         	pop	{r4, pc}

// ==== PlayerLobby::tableCellAtIndex
//      file offset 0x39e480 (= ELF address; Ghidra 0x3ae480), 8 bytes, Thumb-2
  39e480: f1a0 00e8    	sub.w	r0, r0, #0xe8
  39e484: f7ff bfb4    	b.w	0x39e3f0 <PlayerLobby::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int)> @ imm = #-0x98

// ==== PlayerLobby::numberOfCellsInTableView
//      file offset 0x39e488 (= ELF address; Ghidra 0x3ae488), 30 bytes, Thumb-2
  39e488: b500         	push	{lr}
  39e48a: b083         	sub	sp, #0xc
  39e48c: 9001         	str	r0, [sp, #0x4]
  39e48e: 9100         	str	r1, [sp]
  39e490: 9b01         	ldr	r3, [sp, #0x4]
  39e492: f8d3 30fc    	ldr.w	r3, [r3, #0xfc]
  39e496: 4618         	mov	r0, r3
  39e498: f1fb fe22    	bl	0x59a0e0 <cocos2d::CCArray::count() const> @ imm = #0x1fbc44
  39e49c: 4603         	mov	r3, r0
  39e49e: 4618         	mov	r0, r3
  39e4a0: b003         	add	sp, #0xc
  39e4a2: f85d fb04    	ldr	pc, [sp], #4

// ==== PlayerLobby::numberOfCellsInTableView
//      file offset 0x39e4a8 (= ELF address; Ghidra 0x3ae4a8), 8 bytes, Thumb-2
  39e4a8: f1a0 00e8    	sub.w	r0, r0, #0xe8
  39e4ac: f7ff bfec    	b.w	0x39e488 <PlayerLobby::numberOfCellsInTableView(cocos2d::extension::CCTableView*)> @ imm = #-0x28

// ==== PlayerLobby::tableCellTouched
//      file offset 0x39e4b0 (= ELF address; Ghidra 0x3ae4b0), 12 bytes, Thumb-2
  39e4b0: b084         	sub	sp, #0x10
  39e4b2: 9003         	str	r0, [sp, #0xc]
  39e4b4: 9102         	str	r1, [sp, #0x8]
  39e4b6: 9201         	str	r2, [sp, #0x4]
  39e4b8: b004         	add	sp, #0x10
  39e4ba: 4770         	bx	lr

// ==== PlayerLobby::tableCellTouched
//      file offset 0x39e4bc (= ELF address; Ghidra 0x3ae4bc), 8 bytes, Thumb-2
  39e4bc: f1a0 00e4    	sub.w	r0, r0, #0xe4
  39e4c0: f7ff bff6    	b.w	0x39e4b0 <PlayerLobby::tableCellTouched(cocos2d::extension::CCTableView*, cocos2d::extension::CCTableViewCell*)> @ imm = #-0x14

// ==== PlayerLobby::editBoxReturn
//      file offset 0x39e4c4 (= ELF address; Ghidra 0x3ae4c4), 560 bytes, Thumb-2
  39e4c4: b570         	push	{r4, r5, r6, lr}
  39e4c6: b08e         	sub	sp, #0x38
  39e4c8: 9003         	str	r0, [sp, #0xc]
  39e4ca: 9102         	str	r1, [sp, #0x8]
  39e4cc: 4c83         	ldr	r4, [pc, #0x20c]        @ 0x39e6dc <PlayerLobby::editBoxReturn(cocos2d::extension::CCEditBox*)+0x218>
  39e4ce: 447c         	add	r4, pc
  39e4d0: 9802         	ldr	r0, [sp, #0x8]
  39e4d2: f0b8 fb3b    	bl	0x456b4c <cocos2d::extension::CCEditBox::getText()> @ imm = #0xb8676
  39e4d6: 4605         	mov	r5, r0
  39e4d8: ab0a         	add	r3, sp, #0x28
  39e4da: 4618         	mov	r0, r3
  39e4dc: f3eb ff8a    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ebf14
  39e4e0: aa06         	add	r2, sp, #0x18
  39e4e2: ab0a         	add	r3, sp, #0x28
  39e4e4: 4610         	mov	r0, r2
  39e4e6: 4629         	mov	r1, r5
  39e4e8: 461a         	mov	r2, r3
  39e4ea: f018 f2b9    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x418572
  39e4ee: ab0a         	add	r3, sp, #0x28
  39e4f0: 4618         	mov	r0, r3
  39e4f2: f3eb ff83    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ebf06
  39e4f6: ab06         	add	r3, sp, #0x18
  39e4f8: 4618         	mov	r0, r3
  39e4fa: f016 f5af    	bl	0x7b505c <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x185ac> @ imm = #0x416b5e
  39e4fe: 4603         	mov	r3, r0
  39e500: 2b00         	cmp	r3, #0x0
  39e502: bf0c         	ite	eq
  39e504: 2300         	moveq	r3, #0x0
  39e506: 2301         	movne	r3, #0x1
  39e508: b2db         	uxtb	r3, r3
  39e50a: 2b00         	cmp	r3, #0x0
  39e50c: f000 80ad    	beq.w	0x39e66a <PlayerLobby::editBoxReturn(cocos2d::extension::CCEditBox*)+0x1a6> @ imm = #0x15a
  39e510: ab06         	add	r3, sp, #0x18
  39e512: 4618         	mov	r0, r3
  39e514: f017 f2ae    	bl	0x7b5a74 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18fc4> @ imm = #0x41755c
  39e518: 4605         	mov	r5, r0
  39e51a: ab06         	add	r3, sp, #0x18
  39e51c: 4618         	mov	r0, r3
  39e51e: f017 f2c5    	bl	0x7b5aac <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18ffc> @ imm = #0x41758a
  39e522: 4601         	mov	r1, r0
  39e524: 233a         	movs	r3, #0x3a
  39e526: f88d 3024    	strb.w	r3, [sp, #0x24]
  39e52a: 2320         	movs	r3, #0x20
  39e52c: f88d 3028    	strb.w	r3, [sp, #0x28]
  39e530: aa09         	add	r2, sp, #0x24
  39e532: ab0a         	add	r3, sp, #0x28
  39e534: 4628         	mov	r0, r5
  39e536: f7e9 fc0d    	bl	0x387d54 <void std::replace<__gnu_cxx::__normal_iterator<char*, std::string>, char>(__gnu_cxx::__normal_iterator<char*, std::string>, __gnu_cxx::__normal_iterator<char*, std::string>, char const&, char const&)> @ imm = #-0x167e6
  39e53a: f242 f8b9    	bl	0x5e06b0 <cocos2d::CCNotificationCenter::sharedNotificationCenter()> @ imm = #0x242172
  39e53e: 4605         	mov	r5, r0
  39e540: ab06         	add	r3, sp, #0x18
  39e542: 4618         	mov	r0, r3
  39e544: f016 f6dc    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x416db8
  39e548: 4606         	mov	r6, r0
  39e54a: ab0a         	add	r3, sp, #0x28
  39e54c: 4618         	mov	r0, r3
  39e54e: f3eb ff51    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ebea2
  39e552: aa07         	add	r2, sp, #0x1c
  39e554: ab0a         	add	r3, sp, #0x28
  39e556: 4610         	mov	r0, r2
  39e558: 4631         	mov	r1, r6
  39e55a: 461a         	mov	r2, r3
  39e55c: f018 f280    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x418500
  39e560: ab07         	add	r3, sp, #0x1c
  39e562: 4618         	mov	r0, r3
  39e564: f1fb fa6a    	bl	0x599a3c <cocos2d::CCString::create(std::string const&)> @ imm = #0x1fb4d4
  39e568: 4603         	mov	r3, r0
  39e56a: 4628         	mov	r0, r5
  39e56c: 4a5c         	ldr	r2, [pc, #0x170]        @ 0x39e6e0 <PlayerLobby::editBoxReturn(cocos2d::extension::CCEditBox*)+0x21c>
  39e56e: 447a         	add	r2, pc
  39e570: 4611         	mov	r1, r2
  39e572: 461a         	mov	r2, r3
  39e574: f242 fada    	bl	0x5e0b2c <cocos2d::CCNotificationCenter::postNotification(char const*, cocos2d::CCObject*)> @ imm = #0x2425b4
  39e578: ab07         	add	r3, sp, #0x1c
  39e57a: 4618         	mov	r0, r3
  39e57c: f017 f1ca    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417394
  39e580: ab0a         	add	r3, sp, #0x28
  39e582: 4618         	mov	r0, r3
  39e584: f3eb ff3a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ebe74
  39e588: 4b56         	ldr	r3, [pc, #0x158]        @ 0x39e6e4 <PlayerLobby::editBoxReturn(cocos2d::extension::CCEditBox*)+0x220>
  39e58a: 58e3         	ldr	r3, [r4, r3]
  39e58c: 681d         	ldr	r5, [r3]
  39e58e: aa08         	add	r2, sp, #0x20
  39e590: ab06         	add	r3, sp, #0x18
  39e592: 4610         	mov	r0, r2
  39e594: 4619         	mov	r1, r3
  39e596: f017 f7a7    	bl	0x7b64e8 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19a38> @ imm = #0x417f4e
  39e59a: 4b53         	ldr	r3, [pc, #0x14c]        @ 0x39e6e8 <PlayerLobby::editBoxReturn(cocos2d::extension::CCEditBox*)+0x224>
  39e59c: 58e3         	ldr	r3, [r4, r3]
  39e59e: edd3 7a00    	vldr	s15, [r3]
  39e5a2: eeb7 6ae7    	vcvt.f64.f32	d6, s15
  39e5a6: 4b50         	ldr	r3, [pc, #0x140]        @ 0x39e6e8 <PlayerLobby::editBoxReturn(cocos2d::extension::CCEditBox*)+0x224>
  39e5a8: 58e3         	ldr	r3, [r4, r3]
  39e5aa: edd3 7a01    	vldr	s15, [r3, #4]
  39e5ae: eeb7 7ae7    	vcvt.f64.f32	d7, s15
  39e5b2: ab0a         	add	r3, sp, #0x28
  39e5b4: 4618         	mov	r0, r3
  39e5b6: eeb0 0b46    	vmov.f64	d0, d6
  39e5ba: eeb0 1b47    	vmov.f64	d1, d7
  39e5be: f7f8 fd5b    	bl	0x397078 <BodyShape::~BodyShape()+0x1a4> @ imm = #-0x754a
  39e5c2: ac08         	add	r4, sp, #0x20
  39e5c4: 466b         	mov	r3, sp
  39e5c6: aa0c         	add	r2, sp, #0x30
  39e5c8: e892 0003    	ldm.w	r2, {r0, r1}
  39e5cc: e883 0003    	stm.w	r3, {r0, r1}
  39e5d0: ab0a         	add	r3, sp, #0x28
  39e5d2: cb0c         	ldm	r3, {r2, r3}
  39e5d4: 4628         	mov	r0, r5
  39e5d6: 4621         	mov	r1, r4
  39e5d8: f059 fd64    	bl	0x3f80a4 <Sound::playTaunt(std::string, cpVect)> @ imm = #0x59ac8
  39e5dc: 4603         	mov	r3, r0
  39e5de: f88d 3017    	strb.w	r3, [sp, #0x17]
  39e5e2: ab08         	add	r3, sp, #0x20
  39e5e4: 4618         	mov	r0, r3
  39e5e6: f017 f195    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41732a
  39e5ea: 9b03         	ldr	r3, [sp, #0xc]
  39e5ec: 681b         	ldr	r3, [r3]
  39e5ee: f503 7308    	add.w	r3, r3, #0x220
  39e5f2: 681c         	ldr	r4, [r3]
  39e5f4: 9b03         	ldr	r3, [sp, #0xc]
  39e5f6: f503 7396    	add.w	r3, r3, #0x12c
  39e5fa: 4618         	mov	r0, r3
  39e5fc: f016 f680    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x416d00
  39e600: 4605         	mov	r5, r0
  39e602: ab06         	add	r3, sp, #0x18
  39e604: 4618         	mov	r0, r3
  39e606: f016 f67b    	bl	0x7b5300 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18850> @ imm = #0x416cf6
  39e60a: 4603         	mov	r3, r0
  39e60c: 4a37         	ldr	r2, [pc, #0xdc]         @ 0x39e6ec <PlayerLobby::editBoxReturn(cocos2d::extension::CCEditBox*)+0x228>
  39e60e: 447a         	add	r2, pc
  39e610: 4610         	mov	r0, r2
  39e612: 4629         	mov	r1, r5
  39e614: 461a         	mov	r2, r3
  39e616: f1fb fa7b    	bl	0x599b10 <cocos2d::CCString::createWithFormat(char const*, ...)> @ imm = #0x1fb4f6
  39e61a: 4603         	mov	r3, r0
  39e61c: 4618         	mov	r0, r3
  39e61e: f1fb f983    	bl	0x599928 <cocos2d::CCString::getCString() const> @ imm = #0x1fb306
  39e622: 4605         	mov	r5, r0
  39e624: ab08         	add	r3, sp, #0x20
  39e626: 4618         	mov	r0, r3
  39e628: f3eb fee4    	bl	0x78a3f4 <std::bad_alloc::~bad_alloc()+0x1dc4> @ imm = #0x3ebdc8
  39e62c: aa09         	add	r2, sp, #0x24
  39e62e: ab08         	add	r3, sp, #0x20
  39e630: 4610         	mov	r0, r2
  39e632: 4629         	mov	r1, r5
  39e634: 461a         	mov	r2, r3
  39e636: f018 f213    	bl	0x7b6a60 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x19fb0> @ imm = #0x418426
  39e63a: f89d 3017    	ldrb.w	r3, [sp, #0x17]
  39e63e: f083 0301    	eor	r3, r3, #0x1
  39e642: b2db         	uxtb	r3, r3
  39e644: aa09         	add	r2, sp, #0x24
  39e646: 9803         	ldr	r0, [sp, #0xc]
  39e648: 4611         	mov	r1, r2
  39e64a: 461a         	mov	r2, r3
  39e64c: 47a0         	blx	r4
  39e64e: ab09         	add	r3, sp, #0x24
  39e650: 4618         	mov	r0, r3
  39e652: f017 f15f    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x4172be
  39e656: ab08         	add	r3, sp, #0x20
  39e658: 4618         	mov	r0, r3
  39e65a: f3eb fecf    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ebd9e
  39e65e: 9802         	ldr	r0, [sp, #0x8]
  39e660: 4b23         	ldr	r3, [pc, #0x8c]         @ 0x39e6f0 <PlayerLobby::editBoxReturn(cocos2d::extension::CCEditBox*)+0x22c>
  39e662: 447b         	add	r3, pc
  39e664: 4619         	mov	r1, r3
  39e666: f0b8 fa4f    	bl	0x456b08 <cocos2d::extension::CCEditBox::setText(char const*)> @ imm = #0xb849e
  39e66a: 9b03         	ldr	r3, [sp, #0xc]
  39e66c: f8d3 3100    	ldr.w	r3, [r3, #0x100]
  39e670: 681b         	ldr	r3, [r3]
  39e672: 3390         	adds	r3, #0x90
  39e674: 681b         	ldr	r3, [r3]
  39e676: 9a03         	ldr	r2, [sp, #0xc]
  39e678: f8d2 2100    	ldr.w	r2, [r2, #0x100]
  39e67c: 4610         	mov	r0, r2
  39e67e: 2100         	movs	r1, #0x0
  39e680: 4798         	blx	r3
  39e682: ab06         	add	r3, sp, #0x18
  39e684: 4618         	mov	r0, r3
  39e686: f017 f145    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x41728a
  39e68a: e024         	b	0x39e6d6 <PlayerLobby::editBoxReturn(cocos2d::extension::CCEditBox*)+0x212> @ imm = #0x48
  39e68c: ab0a         	add	r3, sp, #0x28
  39e68e: 4618         	mov	r0, r3
  39e690: f3eb feb4    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ebd68
  39e694: f3e9 fd0a    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3e9a14
  39e698: ab07         	add	r3, sp, #0x1c
  39e69a: 4618         	mov	r0, r3
  39e69c: f017 f13a    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417274
  39e6a0: e7ff         	b	0x39e6a2 <PlayerLobby::editBoxReturn(cocos2d::extension::CCEditBox*)+0x1de> @ imm = #-0x2
  39e6a2: ab0a         	add	r3, sp, #0x28
  39e6a4: 4618         	mov	r0, r3
  39e6a6: f3eb fea9    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ebd52
  39e6aa: e00e         	b	0x39e6ca <PlayerLobby::editBoxReturn(cocos2d::extension::CCEditBox*)+0x206> @ imm = #0x1c
  39e6ac: ab08         	add	r3, sp, #0x20
  39e6ae: 4618         	mov	r0, r3
  39e6b0: f017 f130    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417260
  39e6b4: e009         	b	0x39e6ca <PlayerLobby::editBoxReturn(cocos2d::extension::CCEditBox*)+0x206> @ imm = #0x12
  39e6b6: ab09         	add	r3, sp, #0x24
  39e6b8: 4618         	mov	r0, r3
  39e6ba: f017 f12b    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417256
  39e6be: e7ff         	b	0x39e6c0 <PlayerLobby::editBoxReturn(cocos2d::extension::CCEditBox*)+0x1fc> @ imm = #-0x2
  39e6c0: ab08         	add	r3, sp, #0x20
  39e6c2: 4618         	mov	r0, r3
  39e6c4: f3eb fe9a    	bl	0x78a3fc <std::bad_alloc::~bad_alloc()+0x1dcc> @ imm = #0x3ebd34
  39e6c8: e7ff         	b	0x39e6ca <PlayerLobby::editBoxReturn(cocos2d::extension::CCEditBox*)+0x206> @ imm = #-0x2
  39e6ca: ab06         	add	r3, sp, #0x18
  39e6cc: 4618         	mov	r0, r3
  39e6ce: f017 f121    	bl	0x7b5914 <void std::__convert_to_v<long double>(char const*, long double&, std::_Ios_Iostate&, int* const&)+0x18e64> @ imm = #0x417242
  39e6d2: f3e9 fceb    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x3e99d6
  39e6d6: b00e         	add	sp, #0x38
  39e6d8: bd70         	pop	{r4, r5, r6, pc}
  ; --- end of code (Ghidra body ends at 0x39e6d9); words below are literal-pool data ---
  39e6da: bf00         	nop
  39e6dc: 453a         	cmp	r2, r7
  39e6de: 0059         	lsls	r1, r3, #0x1
  39e6e0: 3be6         	subs	r3, #0xe6
  39e6e2: 0043         	lsls	r3, r0, #0x1
  39e6e4: d730         	bvc	0x39e748 <std::vector<LobbyRow*, std::allocator<LobbyRow*>>::~vector()+0x10> @ imm = #0x60
  39e6e6: ffff d728    	<unknown>
  39e6ea: ffff 3aee    	vtbx.8	d19, {d31, fpinst2, mvfr0}, d30
  39e6ee: 0043         	lsls	r3, r0, #0x1
  39e6f0: 385a         	subs	r0, #0x5a
  39e6f2: 0043         	lsls	r3, r0, #0x1

// ==== PlayerLobby::editBoxReturn
//      file offset 0x39e6f4 (= ELF address; Ghidra 0x3ae6f4), 8 bytes, Thumb-2
  39e6f4: f1a0 00ec    	sub.w	r0, r0, #0xec
  39e6f8: f7ff bee4    	b.w	0x39e4c4 <PlayerLobby::editBoxReturn(cocos2d::extension::CCEditBox*)> @ imm = #-0x238
