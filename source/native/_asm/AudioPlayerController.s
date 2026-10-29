// AudioPlayerController: ARM Thumb-2 disassembly of libcocos2dcpp.so (llvm-objdump), 4 functions.
// Address column = file offset in lib/armeabi-v7a/libcocos2dcpp.so. Pseudo-C: ../AudioPlayerController.cpp

// ==== AudioPlayerController::update
//      file offset 0x6014cc (= ELF address; Ghidra 0x6114cc), 296 bytes, Thumb-2
  6014cc: b500         	push	{lr}
  6014ce: b089         	sub	sp, #0x24
  6014d0: 9001         	str	r0, [sp, #0x4]
  6014d2: 9100         	str	r1, [sp]
  6014d4: ab06         	add	r3, sp, #0x18
  6014d6: 4618         	mov	r0, r3
  6014d8: f001 f916    	bl	0x602708 <std::list<CkSound*, std::allocator<CkSound*>>::list()> @ imm = #0x122c
  6014dc: f163 f850    	bl	0x764580 <CkUpdate>     @ imm = #0x1630a0
  6014e0: 4b40         	ldr	r3, [pc, #0x100]        @ 0x6015e4 <AudioPlayerController::update(float)+0x118>
  6014e2: 447b         	add	r3, pc
  6014e4: 4618         	mov	r0, r3
  6014e6: f001 f94f    	bl	0x602788 <std::list<CkSound*, std::allocator<CkSound*>>::end()> @ imm = #0x129e
  6014ea: 4603         	mov	r3, r0
  6014ec: 9303         	str	r3, [sp, #0xc]
  6014ee: 4b3e         	ldr	r3, [pc, #0xf8]         @ 0x6015e8 <AudioPlayerController::update(float)+0x11c>
  6014f0: 447b         	add	r3, pc
  6014f2: 4618         	mov	r0, r3
  6014f4: f001 f956    	bl	0x6027a4 <std::list<CkSound*, std::allocator<CkSound*>>::begin()> @ imm = #0x12ac
  6014f8: 4603         	mov	r3, r0
  6014fa: 9304         	str	r3, [sp, #0x10]
  6014fc: e033         	b	0x601566 <AudioPlayerController::update(float)+0x9a> @ imm = #0x66
  6014fe: ab04         	add	r3, sp, #0x10
  601500: 4618         	mov	r0, r3
  601502: f001 f97b    	bl	0x6027fc <std::_List_iterator<CkSound*>::operator*() const> @ imm = #0x12f6
  601506: 4603         	mov	r3, r0
  601508: 681b         	ldr	r3, [r3]
  60150a: 9305         	str	r3, [sp, #0x14]
  60150c: 9b05         	ldr	r3, [sp, #0x14]
  60150e: 681b         	ldr	r3, [r3]
  601510: 330c         	adds	r3, #0xc
  601512: 681b         	ldr	r3, [r3]
  601514: 9a05         	ldr	r2, [sp, #0x14]
  601516: 4610         	mov	r0, r2
  601518: 4798         	blx	r3
  60151a: 4603         	mov	r3, r0
  60151c: 2b00         	cmp	r3, #0x0
  60151e: d10c         	bne	0x60153a <AudioPlayerController::update(float)+0x6e> @ imm = #0x18
  601520: 9b05         	ldr	r3, [sp, #0x14]
  601522: 681b         	ldr	r3, [r3]
  601524: 3318         	adds	r3, #0x18
  601526: 681b         	ldr	r3, [r3]
  601528: 9a05         	ldr	r2, [sp, #0x14]
  60152a: 4610         	mov	r0, r2
  60152c: 4798         	blx	r3
  60152e: 4603         	mov	r3, r0
  601530: f083 0301    	eor	r3, r3, #0x1
  601534: b2db         	uxtb	r3, r3
  601536: 2b00         	cmp	r3, #0x0
  601538: d001         	beq	0x60153e <AudioPlayerController::update(float)+0x72> @ imm = #0x2
  60153a: 2301         	movs	r3, #0x1
  60153c: e000         	b	0x601540 <AudioPlayerController::update(float)+0x74> @ imm = #0x0
  60153e: 2300         	movs	r3, #0x0
  601540: 2b00         	cmp	r3, #0x0
  601542: d00c         	beq	0x60155e <AudioPlayerController::update(float)+0x92> @ imm = #0x18
  601544: 9b05         	ldr	r3, [sp, #0x14]
  601546: 681b         	ldr	r3, [r3]
  601548: 33bc         	adds	r3, #0xbc
  60154a: 681b         	ldr	r3, [r3]
  60154c: 9a05         	ldr	r2, [sp, #0x14]
  60154e: 4610         	mov	r0, r2
  601550: 4798         	blx	r3
  601552: aa06         	add	r2, sp, #0x18
  601554: ab05         	add	r3, sp, #0x14
  601556: 4610         	mov	r0, r2
  601558: 4619         	mov	r1, r3
  60155a: f001 f957    	bl	0x60280c <std::list<CkSound*, std::allocator<CkSound*>>::push_back(CkSound* const&)> @ imm = #0x12ae
  60155e: ab04         	add	r3, sp, #0x10
  601560: 4618         	mov	r0, r3
  601562: f001 f93f    	bl	0x6027e4 <std::_List_iterator<CkSound*>::operator++()> @ imm = #0x127e
  601566: aa04         	add	r2, sp, #0x10
  601568: ab03         	add	r3, sp, #0xc
  60156a: 4610         	mov	r0, r2
  60156c: 4619         	mov	r1, r3
  60156e: f001 f929    	bl	0x6027c4 <std::_List_iterator<CkSound*>::operator!=(std::_List_iterator<CkSound*> const&) const> @ imm = #0x1252
  601572: 4603         	mov	r3, r0
  601574: 2b00         	cmp	r3, #0x0
  601576: d1c2         	bne	0x6014fe <AudioPlayerController::update(float)+0x32> @ imm = #-0x7c
  601578: e018         	b	0x6015ac <AudioPlayerController::update(float)+0xe0> @ imm = #0x30
  60157a: ab06         	add	r3, sp, #0x18
  60157c: 4618         	mov	r0, r3
  60157e: f001 f969    	bl	0x602854 <std::list<CkSound*, std::allocator<CkSound*>>::front()> @ imm = #0x12d2
  601582: 4603         	mov	r3, r0
  601584: 681b         	ldr	r3, [r3]
  601586: 9305         	str	r3, [sp, #0x14]
  601588: ab06         	add	r3, sp, #0x18
  60158a: 4618         	mov	r0, r3
  60158c: f001 f974    	bl	0x602878 <std::list<CkSound*, std::allocator<CkSound*>>::pop_front()> @ imm = #0x12e8
  601590: ab05         	add	r3, sp, #0x14
  601592: 4a16         	ldr	r2, [pc, #0x58]         @ 0x6015ec <AudioPlayerController::update(float)+0x120>
  601594: 447a         	add	r2, pc
  601596: 4610         	mov	r0, r2
  601598: 4619         	mov	r1, r3
  60159a: f001 f97b    	bl	0x602894 <std::list<CkSound*, std::allocator<CkSound*>>::remove(CkSound* const&)> @ imm = #0x12f6
  60159e: ab05         	add	r3, sp, #0x14
  6015a0: 4a13         	ldr	r2, [pc, #0x4c]         @ 0x6015f0 <AudioPlayerController::update(float)+0x124>
  6015a2: 447a         	add	r2, pc
  6015a4: 4610         	mov	r0, r2
  6015a6: 4619         	mov	r1, r3
  6015a8: f001 f9d0    	bl	0x60294c <std::map<CkSound*, int, std::less<CkSound*>, std::allocator<std::pair<CkSound* const, int>>>::erase(CkSound* const&)> @ imm = #0x13a0
  6015ac: ab06         	add	r3, sp, #0x18
  6015ae: 4618         	mov	r0, r3
  6015b0: f001 f93c    	bl	0x60282c <std::list<CkSound*, std::allocator<CkSound*>>::size() const> @ imm = #0x1278
  6015b4: 4603         	mov	r3, r0
  6015b6: 2b00         	cmp	r3, #0x0
  6015b8: bf0c         	ite	eq
  6015ba: 2300         	moveq	r3, #0x0
  6015bc: 2301         	movne	r3, #0x1
  6015be: b2db         	uxtb	r3, r3
  6015c0: 2b00         	cmp	r3, #0x0
  6015c2: d1da         	bne	0x60157a <AudioPlayerController::update(float)+0xae> @ imm = #-0x4c
  6015c4: bf00         	nop
  6015c6: ab06         	add	r3, sp, #0x18
  6015c8: 4618         	mov	r0, r3
  6015ca: f7ff ff73    	bl	0x6014b4 <std::list<CkSound*, std::allocator<CkSound*>>::~list()> @ imm = #-0x11a
  6015ce: e005         	b	0x6015dc <AudioPlayerController::update(float)+0x110> @ imm = #0xa
  6015d0: ab06         	add	r3, sp, #0x18
  6015d2: 4618         	mov	r0, r3
  6015d4: f7ff ff6e    	bl	0x6014b4 <std::list<CkSound*, std::allocator<CkSound*>>::~list()> @ imm = #-0x124
  6015d8: f186 fd68    	bl	0x7880ac <__cxa_end_cleanup> @ imm = #0x186ad0
  6015dc: b009         	add	sp, #0x24
  6015de: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x6015e1); words below are literal-pool data ---
  6015e2: bf00         	nop
  6015e4: 5242         	strh	r2, [r0, r1]
  6015e6: 0035         	movs	r5, r6
  6015e8: 5234         	strh	r4, [r6, r0]
  6015ea: 0035         	movs	r5, r6
  6015ec: 5190         	str	r0, [r2, r6]
  6015ee: 0035         	movs	r5, r6
  6015f0: 51a2         	str	r2, [r4, r6]
  6015f2: 0035         	movs	r5, r6

// ==== AudioPlayerController::AudioPlayerController
//      file offset 0x6017c4 (= ELF address; Ghidra 0x6117c4), 44 bytes, Thumb-2
  6017c4: b510         	push	{r4, lr}
  6017c6: b082         	sub	sp, #0x8
  6017c8: 9001         	str	r0, [sp, #0x4]
  6017ca: 4c07         	ldr	r4, [pc, #0x1c]         @ 0x6017e8 <AudioPlayerController::AudioPlayerController()+0x24>
  6017cc: 447c         	add	r4, pc
  6017ce: 9b01         	ldr	r3, [sp, #0x4]
  6017d0: 4618         	mov	r0, r3
  6017d2: f796 facb    	bl	0x597d6c <cocos2d::CCObject::CCObject()> @ imm = #-0x69a6a
  6017d6: 9b01         	ldr	r3, [sp, #0x4]
  6017d8: 4a04         	ldr	r2, [pc, #0x10]         @ 0x6017ec <AudioPlayerController::AudioPlayerController()+0x28>
  6017da: 58a2         	ldr	r2, [r4, r2]
  6017dc: 3208         	adds	r2, #0x8
  6017de: 601a         	str	r2, [r3]
  6017e0: 9b01         	ldr	r3, [sp, #0x4]
  6017e2: 4618         	mov	r0, r3
  6017e4: b002         	add	sp, #0x8
  6017e6: bd10         	pop	{r4, pc}
  ; --- end of code (Ghidra body ends at 0x6017e7); words below are literal-pool data ---
  6017e8: 123c         	asrs	r4, r7, #0x8
  6017ea: 0033         	movs	r3, r6
  6017ec: f08c ffff    	bl	0x68e7ee <sha256_block_data_order+0x4e> @ imm = #0x8cffe

// ==== AudioPlayerController::~AudioPlayerController
//      file offset 0x604350 (= ELF address; Ghidra 0x614350), 60 bytes, Thumb-2
  604350: b500         	push	{lr}
  604352: b083         	sub	sp, #0xc
  604354: 9001         	str	r0, [sp, #0x4]
  604356: 490b         	ldr	r1, [pc, #0x2c]         @ 0x604384 <AudioPlayerController::~AudioPlayerController()+0x34>
  604358: 4479         	add	r1, pc
  60435a: 9b01         	ldr	r3, [sp, #0x4]
  60435c: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x604388 <AudioPlayerController::~AudioPlayerController()+0x38>
  60435e: 588a         	ldr	r2, [r1, r2]
  604360: 3208         	adds	r2, #0x8
  604362: 601a         	str	r2, [r3]
  604364: 9b01         	ldr	r3, [sp, #0x4]
  604366: 4618         	mov	r0, r3
  604368: f793 fd32    	bl	0x597dd0 <cocos2d::CCObject::~CCObject()> @ imm = #-0x6c59c
  60436c: 2300         	movs	r3, #0x0
  60436e: 2b00         	cmp	r3, #0x0
  604370: d002         	beq	0x604378 <AudioPlayerController::~AudioPlayerController()+0x28> @ imm = #0x4
  604372: 9801         	ldr	r0, [sp, #0x4]
  604374: f183 fe96    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x183d2c
  604378: 9b01         	ldr	r3, [sp, #0x4]
  60437a: 4618         	mov	r0, r3
  60437c: b003         	add	sp, #0xc
  60437e: f85d fb04    	ldr	pc, [sp], #4
  ; --- end of code (Ghidra body ends at 0x604381); words below are literal-pool data ---
  604382: bf00         	nop
  604384: e6b0         	b	0x6040e8 <__gnu_cxx::new_allocator<std::_Rb_tree_node<std::pair<CkSound* const, int>>>::deallocate(std::_Rb_tree_node<std::pair<CkSound* const, int>>*, unsigned int)+0x4> @ imm = #-0x2a0
  604386: 0032         	movs	r2, r6
  604388: f08c ffff    	bl	0x69138a <sha512_block_data_order+0x19aa> @ imm = #0x8cffe

// ==== AudioPlayerController::~AudioPlayerController
//      file offset 0x60438c (= ELF address; Ghidra 0x61438c), 28 bytes, Thumb-2
  60438c: b500         	push	{lr}
  60438e: b083         	sub	sp, #0xc
  604390: 9001         	str	r0, [sp, #0x4]
  604392: 9801         	ldr	r0, [sp, #0x4]
  604394: f7ff ffdc    	bl	0x604350 <AudioPlayerController::~AudioPlayerController()> @ imm = #-0x48
  604398: 9801         	ldr	r0, [sp, #0x4]
  60439a: f183 fe83    	bl	0x7880a4 <operator delete(void*)> @ imm = #0x183d06
  60439e: 9b01         	ldr	r3, [sp, #0x4]
  6043a0: 4618         	mov	r0, r3
  6043a2: b003         	add	sp, #0xc
  6043a4: f85d fb04    	ldr	pc, [sp], #4
