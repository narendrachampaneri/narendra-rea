// SoldierAIController::updateStep  ghidra=0x3ef840-0x3efbc9  elf=0x3df840-0x3dfbc9  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3df840:      	push	{r4, r5, r6, r7, lr}
  3df842:      	vpush	{d8}
  3df846:      	sub	sp, #0x174
  3df848:      	add	r3, sp, #0x24
  3df84a:      	str	r0, [r3]
  3df84c:      	add	r3, sp, #0x20
  3df84e:      	str	r1, [r3]
  3df850:      	ldr	r4, [pc, #0x3a4]        @ 0x3dfbf8 <_ZN19SoldierAIController10updateStepEf+0x3b8>
  3df852:      	add	r4, pc
  3df854:      	add	r3, sp, #0x24
  3df856:      	ldr	r3, [r3]
  3df858:      	vldr	s14, [r3, #388]
  3df85c:      	add	r3, sp, #0x20
  3df85e:      	vldr	s15, [r3]
  3df862:      	vadd.f32	s15, s14, s15
  3df866:      	add	r3, sp, #0x24
  3df868:      	ldr	r3, [r3]
  3df86a:      	vstr	s15, [r3, #388]
  3df86e:      	add	r3, sp, #0x24
  3df870:      	ldr	r3, [r3]
  3df872:      	vldr	s14, [r3, #264]
  3df876:      	add	r3, sp, #0x20
  3df878:      	vldr	s15, [r3]
  3df87c:      	vadd.f32	s15, s14, s15
  3df880:      	add	r3, sp, #0x24
  3df882:      	ldr	r3, [r3]
  3df884:      	vstr	s15, [r3, #264]
  3df888:      	add	r3, sp, #0x24
  3df88a:      	ldr	r3, [r3]
  3df88c:      	vldr	s14, [r3, #432]
  3df890:      	add	r3, sp, #0x20
  3df892:      	vldr	s15, [r3]
  3df896:      	vadd.f32	s15, s14, s15
  3df89a:      	add	r3, sp, #0x24
  3df89c:      	ldr	r3, [r3]
  3df89e:      	vstr	s15, [r3, #432]
  3df8a2:      	add	r3, sp, #0x24
  3df8a4:      	ldr	r3, [r3]
  3df8a6:      	vldr	s14, [r3, #404]
  3df8aa:      	add	r3, sp, #0x20
  3df8ac:      	vldr	s15, [r3]
  3df8b0:      	vadd.f32	s15, s14, s15
  3df8b4:      	add	r3, sp, #0x24
  3df8b6:      	ldr	r3, [r3]
  3df8b8:      	vstr	s15, [r3, #404]
  3df8bc:      	add	r3, sp, #0x24
  3df8be:      	ldr	r3, [r3]
  3df8c0:      	vldr	s14, [r3, #392]
  3df8c4:      	add	r3, sp, #0x20
  3df8c6:      	vldr	s15, [r3]
  3df8ca:      	vadd.f32	s15, s14, s15
  3df8ce:      	add	r3, sp, #0x24
  3df8d0:      	ldr	r3, [r3]
  3df8d2:      	vstr	s15, [r3, #392]
  3df8d6:      	add	r3, sp, #0x24
  3df8d8:      	ldr	r3, [r3]
  3df8da:      	vldr	s14, [r3, #448]
  3df8de:      	add	r3, sp, #0x20
  3df8e0:      	vldr	s15, [r3]
  3df8e4:      	vadd.f32	s15, s14, s15
  3df8e8:      	add	r3, sp, #0x24
  3df8ea:      	ldr	r3, [r3]
  3df8ec:      	vstr	s15, [r3, #448]
  3df8f0:      	add	r3, sp, #0x24
  3df8f2:      	ldr	r3, [r3]
  3df8f4:      	ldrb.w	r3, [r3, #0x166]
  3df8f8:      	cmp	r3, #0x0
  3df8fa:      	beq	0x3df928 <_ZN19SoldierAIController10updateStepEf+0xe8> @ imm = #0x2a
  3df8fc:      	add	r3, sp, #0x24
  3df8fe:      	ldr	r3, [r3]
  3df900:      	vldr	s14, [r3, #376]
  3df904:      	add	r3, sp, #0x20
  3df906:      	vldr	s15, [r3]
  3df90a:      	vadd.f32	s15, s14, s15
  3df90e:      	add	r3, sp, #0x24
  3df910:      	ldr	r3, [r3]
  3df912:      	vstr	s15, [r3, #376]
  3df916:      	add	r3, sp, #0x24
  3df918:      	ldr	r3, [r3]
  3df91a:      	ldr	r3, [r3]
  3df91c:      	add.w	r3, r3, #0x2d0
  3df920:      	ldr	r3, [r3]
  3df922:      	add	r2, sp, #0x24
  3df924:      	ldr	r0, [r2]
  3df926:      	blx	r3
  3df928:      	add	r3, sp, #0x24
  3df92a:      	ldr	r3, [r3]
  3df92c:      	vldr	s15, [r3, #376]
  3df930:      	vcvt.f64.f32	d6, s15
  3df934:      	vldr	d7, [pc, #664]          @ 0x3dfbd0 <_ZN19SoldierAIController10updateStepEf+0x390>
  3df938:      	vcmpe.f64	d6, d7
  3df93c:      	vmrs	APSR_nzcv, fpscr
  3df940:      	ble	0x3df982 <_ZN19SoldierAIController10updateStepEf+0x142> @ imm = #0x3e
  3df942:      	add	r3, sp, #0x24
  3df944:      	ldr	r3, [r3]
  3df946:      	ldr	r3, [r3]
  3df948:      	add.w	r3, r3, #0x2c8
  3df94c:      	ldr	r5, [r3]
  3df94e:      	add	r3, sp, #0x150
  3df950:      	mov	r0, r3
  3df952:      	bl	0x78a3f4 <_ZNSt9bad_allocD0Ev+0x1dc4> @ imm = #0x3aaa9e
  3df956:      	add	r2, sp, #0x160
  3df958:      	add	r3, sp, #0x150
  3df95a:      	mov	r0, r2
  3df95c:      	ldr	r2, [pc, #0x29c]        @ 0x3dfbfc <_ZN19SoldierAIController10updateStepEf+0x3bc>
  3df95e:      	add	r2, pc
  3df960:      	mov	r1, r2
  3df962:      	mov	r2, r3
  3df964:      	bl	0x7b6a60 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x19fb0> @ imm = #0x3d70f8
  3df968:      	add	r2, sp, #0x24
  3df96a:      	add	r3, sp, #0x160
  3df96c:      	ldr	r0, [r2]
  3df96e:      	mov	r1, r3
  3df970:      	blx	r5
  3df972:      	add	r3, sp, #0x160
  3df974:      	mov	r0, r3
  3df976:      	bl	0x7b5914 <_ZSt14__convert_to_vIeEvPKcRT_RSt12_Ios_IostateRKPi+0x18e64> @ imm = #0x3d5f9a
  3df97a:      	add	r3, sp, #0x150
  3df97c:      	mov	r0, r3
  3df97e:      	bl	0x78a3fc <_ZNSt9bad_allocD0Ev+0x1dcc> @ imm = #0x3aaa7a
  3df982:      	add	r3, sp, #0x24
  3df984:      	ldr	r3, [r3]
  3df986:      	ldr	r3, [r3]
  3df988:      	add.w	r3, r3, #0x2b4
  3df98c:      	ldr	r3, [r3]
  3df98e:      	add	r2, sp, #0x24
  3df990:      	ldr	r0, [r2]
  3df992:      	blx	r3
  3df994:      	mov	r3, r0
  3df996:      	cmp	r3, #0x0
  3df998:      	beq	0x3dfa04 <_ZN19SoldierAIController10updateStepEf+0x1c4> @ imm = #0x68
  3df99a:      	add	r3, sp, #0x24
  3df99c:      	ldr	r3, [r3]
  3df99e:      	ldrb.w	r3, [r3, #0x104]
  3df9a2:      	cmp	r3, #0x0
  3df9a4:      	beq	0x3dfa04 <_ZN19SoldierAIController10updateStepEf+0x1c4> @ imm = #0x5c
  3df9a6:      	add	r3, sp, #0x24
  3df9a8:      	ldr	r3, [r3]
  3df9aa:      	ldrb.w	r3, [r3, #0x11c]
  3df9ae:      	cmp	r3, #0x0
  3df9b0:      	beq	0x3dfa04 <_ZN19SoldierAIController10updateStepEf+0x1c4> @ imm = #0x50
  3df9b2:      	add	r3, sp, #0x24
  3df9b4:      	ldr	r3, [r3]
  3df9b6:      	vldr	s15, [r3, #280]
  3df9ba:      	vcvt.f64.f32	d6, s15
  3df9be:      	vmov.f64	d7, #5.000000e-01
  3df9c2:      	vmul.f64	d6, d6, d7
  3df9c6:      	vmov.f64	d7, #5.000000e-01
  3df9ca:      	vadd.f64	d7, d6, d7
  3df9ce:      	vcmpe.f64	d7, #0
  3df9d2:      	vmrs	APSR_nzcv, fpscr
  3df9d6:      	ble	0x3df9fa <_ZN19SoldierAIController10updateStepEf+0x1ba> @ imm = #0x20
  3df9d8:      	add	r3, sp, #0x24
  3df9da:      	ldr	r3, [r3]
  3df9dc:      	vldr	s15, [r3, #280]
  3df9e0:      	vcvt.f64.f32	d6, s15
  3df9e4:      	vmov.f64	d7, #5.000000e-01
  3df9e8:      	vmul.f64	d6, d6, d7
  3df9ec:      	vmov.f64	d7, #5.000000e-01
  3df9f0:      	vadd.f64	d7, d6, d7
  3df9f4:      	vcvt.f32.f64	s15, d7
  3df9f8:      	b	0x3df9fe <_ZN19SoldierAIController10updateStepEf+0x1be> @ imm = #0x2
  3df9fa:      	vldr	s15, [pc, #500]         @ 0x3dfbf0 <_ZN19SoldierAIController10updateStepEf+0x3b0>
  3df9fe:      	vmov	r3, s15
  3dfa02:      	b	0x3dfa08 <_ZN19SoldierAIController10updateStepEf+0x1c8> @ imm = #0x2
  3dfa04:      	mov.w	r3, #0x0
  3dfa08:      	add	r2, sp, #0x24
  3dfa0a:      	ldr	r2, [r2]
  3dfa0c:      	str.w	r3, [r2, #0x10c]
  3dfa10:      	add	r3, sp, #0x24
  3dfa12:      	ldr	r3, [r3]
  3dfa14:      	ldr	r3, [r3]
  3dfa16:      	adds	r3, #0x9c
  3dfa18:      	ldr	r3, [r3]
  3dfa1a:      	add	r2, sp, #0x24
  3dfa1c:      	ldr	r2, [r2]
  3dfa1e:      	mov	r0, r2
  3dfa20:      	blx	r3
  3dfa22:      	vmov	s14, r0
  3dfa26:      	vldr	s15, [pc, #460]         @ 0x3dfbf4 <_ZN19SoldierAIController10updateStepEf+0x3b4>
  3dfa2a:      	vmul.f32	s15, s14, s15
  3dfa2e:      	add	r3, sp, #0x38
  3dfa30:      	vcvt.f64.f32	d7, s15
  3dfa34:      	vstr	d7, [r3]
  3dfa38:      	add	r3, sp, #0x38
  3dfa3a:      	ldrd	r0, r1, [r3]
  3dfa3e:      	blx	0x2d5f08 <.plt+0x38>    @ imm = #-0x109b38
  3dfa42:      	mov	r6, r0
  3dfa44:      	mov	r7, r1
  3dfa46:      	add	r3, sp, #0x38
  3dfa48:      	ldrd	r0, r1, [r3]
  3dfa4c:      	blx	0x2d5f14 <.plt+0x44>    @ imm = #-0x109b3c
  3dfa50:      	mov	r2, r0
  3dfa52:      	mov	r3, r1
  3dfa54:      	add	r1, sp, #0x70
  3dfa56:      	mov	r0, r1
  3dfa58:      	vmov	d0, r6, r7
  3dfa5c:      	vmov	d1, r2, r3
  3dfa60:      	bl	0x3dda68 <_ZN4Slug11getVelocityEv+0x23c> @ imm = #-0x1ffc
  3dfa64:      	mov.w	r2, #0x0
  3dfa68:      	mov.w	r3, #0x0
  3dfa6c:      	strd	r2, r3, [sp, #128]
  3dfa70:      	mov.w	r2, #0x0
  3dfa74:      	mov.w	r3, #0x0
  3dfa78:      	strd	r2, r3, [sp, #136]
  3dfa7c:      	add	r3, sp, #0x24
  3dfa7e:      	ldr	r3, [r3]
  3dfa80:      	vldr	s15, [r3, #276]
  3dfa84:      	vneg.f32	s15, s15
  3dfa88:      	vcvt.f64.f32	d6, s15
  3dfa8c:      	add	r3, sp, #0x24
  3dfa8e:      	ldr	r3, [r3]
  3dfa90:      	vldr	s15, [r3, #280]
  3dfa94:      	vcvt.f64.f32	d7, s15
  3dfa98:      	add	r3, sp, #0xc0
  3dfa9a:      	mov	r0, r3
  3dfa9c:      	vmov.f64	d0, d6
  3dfaa0:      	vmov.f64	d1, d7
  3dfaa4:      	bl	0x3dda68 <_ZN4Slug11getVelocityEv+0x23c> @ imm = #-0x2040
  3dfaa8:      	add	r3, sp, #0x24
  3dfaaa:      	ldr	r3, [r3]
  3dfaac:      	vldr	s15, [r3, #268]
  3dfab0:      	vadd.f32	s15, s15, s15
  3dfab4:      	vcvt.f64.f32	d7, s15
  3dfab8:      	add	r3, sp, #0xd0
  3dfaba:      	vldr	d5, [sp, #192]
  3dfabe:      	vldr	d6, [sp, #200]
  3dfac2:      	mov	r0, r3
  3dfac4:      	vmov.f64	d0, d5
  3dfac8:      	vmov.f64	d1, d6
  3dfacc:      	vmov.f64	d2, d7
  3dfad0:      	bl	0x3ddb40 <_ZN4Slug11getVelocityEv+0x314> @ imm = #-0x1f94
  3dfad4:      	add	r5, sp, #0x90
  3dfad6:      	movw	r3, #0xfdb
  3dfada:      	movt	r3, #0xbfc9
  3dfade:      	str	r3, [sp, #0x8]
  3dfae0:      	mov	r3, sp
  3dfae2:      	add	r2, sp, #0xd8
  3dfae4:      	ldm.w	r2, {r0, r1}
  3dfae8:      	stm.w	r3, {r0, r1}
  3dfaec:      	add	r3, sp, #0xd0
  3dfaee:      	ldm	r3, {r2, r3}
  3dfaf0:      	mov	r0, r5
  3dfaf2:      	bl	0x3ddfe8 <_ZN4Slug11getVelocityEv+0x7bc> @ imm = #-0x1b0e
  3dfaf6:      	add	r3, sp, #0x24
  3dfaf8:      	ldr	r3, [r3]
  3dfafa:      	ldrb.w	r3, [r3, #0x104]
  3dfafe:      	cmp	r3, #0x0
  3dfb00:      	beq	0x3dfc00 <_ZN19SoldierAIController10updateStepEf+0x3c0> @ imm = #0xfc
  3dfb02:      	add	r3, sp, #0xe0
  3dfb04:      	mov	r0, r3
  3dfb06:      	vmov.f64	d0, #1.000000e+00
  3dfb0a:      	vldr	d1, [pc, #204]          @ 0x3dfbd8 <_ZN19SoldierAIController10updateStepEf+0x398>
  3dfb0e:      	bl	0x3dda68 <_ZN4Slug11getVelocityEv+0x23c> @ imm = #-0x20aa
  3dfb12:      	add	r3, sp, #0xf0
  3dfb14:      	vldr	d4, [sp, #144]
  3dfb18:      	vldr	d5, [sp, #152]
  3dfb1c:      	vldr	d6, [sp, #224]
  3dfb20:      	vldr	d7, [sp, #232]
  3dfb24:      	mov	r0, r3
  3dfb26:      	vmov.f64	d0, d4
  3dfb2a:      	vmov.f64	d1, d5
  3dfb2e:      	vmov.f64	d2, d6
  3dfb32:      	vmov.f64	d3, d7
  3dfb36:      	bl	0x3dda90 <_ZN4Slug11getVelocityEv+0x264> @ imm = #-0x20aa
  3dfb3a:      	add	r3, sp, #0x10
  3dfb3c:      	vldr	d6, [sp, #240]
  3dfb40:      	vldr	d7, [sp, #248]
  3dfb44:      	mov	r0, r3
  3dfb46:      	vmov.f64	d0, d6
  3dfb4a:      	vmov.f64	d1, d7
  3dfb4e:      	bl	0x3ddc1c <_ZN4Slug11getVelocityEv+0x3f0> @ imm = #-0x1f36
  3dfb52:      	add	r3, sp, #0x10
  3dfb54:      	add	r5, sp, #0x90
  3dfb56:      	ldm	r3, {r0, r1, r2, r3}
  3dfb58:      	stm.w	r5, {r0, r1, r2, r3}
  3dfb5c:      	add	r2, sp, #0x100
  3dfb5e:      	add	r3, sp, #0x70
  3dfb60:      	vldr	d6, [r3]
  3dfb64:      	vldr	d7, [r3, #8]
  3dfb68:      	mov	r0, r2
  3dfb6a:      	vmov.f64	d0, d6
  3dfb6e:      	vmov.f64	d1, d7
  3dfb72:      	vldr	d2, [pc, #108]          @ 0x3dfbe0 <_ZN19SoldierAIController10updateStepEf+0x3a0>
  3dfb76:      	bl	0x3ddb40 <_ZN4Slug11getVelocityEv+0x314> @ imm = #-0x203a
  3dfb7a:      	add	r3, sp, #0x110
  3dfb7c:      	vldr	d6, [sp, #144]
  3dfb80:      	vldr	d7, [sp, #152]
  3dfb84:      	mov	r0, r3
  3dfb86:      	vmov.f64	d0, d6
  3dfb8a:      	vmov.f64	d1, d7
  3dfb8e:      	vldr	d2, [pc, #88]           @ 0x3dfbe8 <_ZN19SoldierAIController10updateStepEf+0x3a8>
  3dfb92:      	bl	0x3ddb40 <_ZN4Slug11getVelocityEv+0x314> @ imm = #-0x2056
  3dfb96:      	add	r3, sp, #0x10
  3dfb98:      	vldr	d4, [sp, #256]
  3dfb9c:      	vldr	d5, [sp, #264]
  3dfba0:      	vldr	d6, [sp, #272]
  3dfba4:      	vldr	d7, [sp, #280]
  3dfba8:      	mov	r0, r3
  3dfbaa:      	vmov.f64	d0, d4
  3dfbae:      	vmov.f64	d1, d5
  3dfbb2:      	vmov.f64	d2, d6
  3dfbb6:      	vmov.f64	d3, d7
  3dfbba:      	bl	0x3dda90 <_ZN4Slug11getVelocityEv+0x264> @ imm = #-0x212e
  3dfbbe:      	add	r3, sp, #0x10
  3dfbc0:      	add	r5, sp, #0x80
  3dfbc2:      	ldm	r3, {r0, r1, r2, r3}
  3dfbc4:      	stm.w	r5, {r0, r1, r2, r3}
  3dfbc8:      	b	0x3dfc86 <_ZN19SoldierAIController10updateStepEf+0x446> @ imm = #0xba
// SoldierAIController::updateStep  ghidra=0x3efc00-0x3efedf  elf=0x3dfc00-0x3dfedf  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3dfc00:      	add	r3, sp, #0x10
  3dfc02:      	mov	r0, r3
  3dfc04:      	vmov.f64	d0, #1.000000e+00
  3dfc08:      	vldr	d1, [pc, #724]          @ 0x3dfee0 <_ZN19SoldierAIController10updateStepEf+0x6a0>
  3dfc0c:      	bl	0x3dda68 <_ZN4Slug11getVelocityEv+0x23c> @ imm = #-0x21a8
  3dfc10:      	add	r3, sp, #0x10
  3dfc12:      	add	r5, sp, #0x90
  3dfc14:      	ldm	r3, {r0, r1, r2, r3}
  3dfc16:      	stm.w	r5, {r0, r1, r2, r3}
  3dfc1a:      	add	r2, sp, #0x120
  3dfc1c:      	add	r3, sp, #0x70
  3dfc1e:      	vldr	d6, [r3]
  3dfc22:      	vldr	d7, [r3, #8]
  3dfc26:      	mov	r0, r2
  3dfc28:      	vmov.f64	d0, d6
  3dfc2c:      	vmov.f64	d1, d7
  3dfc30:      	vldr	d2, [pc, #692]          @ 0x3dfee8 <_ZN19SoldierAIController10updateStepEf+0x6a8>
  3dfc34:      	bl	0x3ddb40 <_ZN4Slug11getVelocityEv+0x314> @ imm = #-0x20f8
  3dfc38:      	add	r3, sp, #0x130
  3dfc3a:      	vldr	d6, [sp, #144]
  3dfc3e:      	vldr	d7, [sp, #152]
  3dfc42:      	mov	r0, r3
  3dfc44:      	vmov.f64	d0, d6
  3dfc48:      	vmov.f64	d1, d7
  3dfc4c:      	vldr	d2, [pc, #672]          @ 0x3dfef0 <_ZN19SoldierAIController10updateStepEf+0x6b0>
  3dfc50:      	bl	0x3ddb40 <_ZN4Slug11getVelocityEv+0x314> @ imm = #-0x2114
  3dfc54:      	add	r3, sp, #0x10
  3dfc56:      	vldr	d4, [sp, #288]
  3dfc5a:      	vldr	d5, [sp, #296]
  3dfc5e:      	vldr	d6, [sp, #304]
  3dfc62:      	vldr	d7, [sp, #312]
  3dfc66:      	mov	r0, r3
  3dfc68:      	vmov.f64	d0, d4
  3dfc6c:      	vmov.f64	d1, d5
  3dfc70:      	vmov.f64	d2, d6
  3dfc74:      	vmov.f64	d3, d7
  3dfc78:      	bl	0x3dda90 <_ZN4Slug11getVelocityEv+0x264> @ imm = #-0x21ec
  3dfc7c:      	add	r3, sp, #0x10
  3dfc7e:      	add	r5, sp, #0x80
  3dfc80:      	ldm	r3, {r0, r1, r2, r3}
  3dfc82:      	stm.w	r5, {r0, r1, r2, r3}
  3dfc86:      	add	r3, sp, #0x80
  3dfc88:      	ldm	r3, {r0, r1, r2, r3}
  3dfc8a:      	bl	0x3dde68 <_ZN4Slug11getVelocityEv+0x63c> @ imm = #-0x1e26
  3dfc8e:      	vmov	s14, r0
  3dfc92:      	vldr	s15, [pc, #636]         @ 0x3dff10 <_ZN19SoldierAIController10updateStepEf+0x6d0>
  3dfc96:      	vmul.f32	s15, s14, s15
  3dfc9a:      	add	r3, sp, #0x40
  3dfc9c:      	vcvt.f64.f32	d7, s15
  3dfca0:      	vstr	d7, [r3]
  3dfca4:      	add	r3, sp, #0x24
  3dfca6:      	ldr	r3, [r3]
  3dfca8:      	ldr.w	r2, [r3, #0x138]
  3dfcac:      	add	r3, sp, #0x40
  3dfcae:      	mov	r0, r2
  3dfcb0:      	ldrd	r2, r3, [r3]
  3dfcb4:      	bl	0x6d3192 <cpBodySetAngle> @ imm = #0x2f34da
  3dfcb8:      	add	r3, sp, #0x24
  3dfcba:      	ldr	r3, [r3]
  3dfcbc:      	ldrb.w	r3, [r3, #0xe6]
  3dfcc0:      	cmp	r3, #0x0
  3dfcc2:      	beq	0x3dfd0e <_ZN19SoldierAIController10updateStepEf+0x4ce> @ imm = #0x48
  3dfcc4:      	add	r3, sp, #0x24
  3dfcc6:      	ldr	r3, [r3]
  3dfcc8:      	ldrb.w	r3, [r3, #0x11c]
  3dfccc:      	eor	r3, r3, #0x1
  3dfcd0:      	uxtb	r3, r3
  3dfcd2:      	cmp	r3, #0x0
  3dfcd4:      	bne	0x3dfd0a <_ZN19SoldierAIController10updateStepEf+0x4ca> @ imm = #0x32
  3dfcd6:      	add	r3, sp, #0x24
  3dfcd8:      	ldr	r3, [r3]
  3dfcda:      	vldr	s15, [r3, #280]
  3dfcde:      	vcmpe.f32	s15, #0
  3dfce2:      	vmrs	APSR_nzcv, fpscr
  3dfce6:      	bpl	0x3dfd0e <_ZN19SoldierAIController10updateStepEf+0x4ce> @ imm = #0x24
  3dfce8:      	add	r3, sp, #0x24
  3dfcea:      	ldr	r3, [r3]
  3dfcec:      	ldr.w	r3, [r3, #0x138]
  3dfcf0:      	adds	r3, #0x38
  3dfcf2:      	ldm	r3, {r0, r1, r2, r3}
  3dfcf4:      	bl	0x6d70b8 <cpvlength>    @ imm = #0x2f73c0
  3dfcf8:      	vmov	d6, r0, r1
  3dfcfc:      	vldr	d7, [pc, #504]          @ 0x3dfef8 <_ZN19SoldierAIController10updateStepEf+0x6b8>
  3dfd00:      	vcmpe.f64	d6, d7
  3dfd04:      	vmrs	APSR_nzcv, fpscr
  3dfd08:      	bpl	0x3dfd0e <_ZN19SoldierAIController10updateStepEf+0x4ce> @ imm = #0x2
  3dfd0a:      	movs	r3, #0x1
  3dfd0c:      	b	0x3dfd10 <_ZN19SoldierAIController10updateStepEf+0x4d0> @ imm = #0x0
  3dfd0e:      	movs	r3, #0x0
  3dfd10:      	cmp	r3, #0x0
  3dfd12:      	beq	0x3dfd1e <_ZN19SoldierAIController10updateStepEf+0x4de> @ imm = #0x8
  3dfd14:      	add	r3, sp, #0x24
  3dfd16:      	ldr	r3, [r3]
  3dfd18:      	movs	r2, #0x0
  3dfd1a:      	strb.w	r2, [r3, #0x104]
  3dfd1e:      	add	r3, sp, #0x24
  3dfd20:      	ldr	r3, [r3]
  3dfd22:      	ldr.w	r3, [r3, #0x138]
  3dfd26:      	vldr	d6, [r3, #48]
  3dfd2a:      	vldr	d7, [pc, #468]          @ 0x3dff00 <_ZN19SoldierAIController10updateStepEf+0x6c0>
  3dfd2e:      	vcmpe.f64	d6, d7
  3dfd32:      	vmrs	APSR_nzcv, fpscr
  3dfd36:      	bpl	0x3dfd50 <_ZN19SoldierAIController10updateStepEf+0x510> @ imm = #0x16
  3dfd38:      	add	r3, sp, #0x24
  3dfd3a:      	ldr	r3, [r3]
  3dfd3c:      	vldr	s14, [r3, #324]
  3dfd40:      	vmov.f32	s15, #1.000000e+00
  3dfd44:      	vsub.f32	s15, s14, s15
  3dfd48:      	add	r3, sp, #0x24
  3dfd4a:      	ldr	r3, [r3]
  3dfd4c:      	vstr	s15, [r3, #324]
  3dfd50:      	add	r3, sp, #0x24
  3dfd52:      	ldr	r3, [r3]
  3dfd54:      	vldr	s15, [r3, #324]
  3dfd58:      	vcmpe.f32	s15, #0
  3dfd5c:      	vmrs	APSR_nzcv, fpscr
  3dfd60:      	bhi	0x3dfde8 <_ZN19SoldierAIController10updateStepEf+0x5a8> @ imm = #0x84
  3dfd62:      	add	r3, sp, #0x24
  3dfd64:      	ldr	r3, [r3]
  3dfd66:      	ldrb.w	r3, [r3, #0x159]
  3dfd6a:      	eor	r3, r3, #0x1
  3dfd6e:      	uxtb	r3, r3
  3dfd70:      	cmp	r3, #0x0
  3dfd72:      	beq	0x3dfdba <_ZN19SoldierAIController10updateStepEf+0x57a> @ imm = #0x44
  3dfd74:      	add	r3, sp, #0x24
  3dfd76:      	ldr	r3, [r3]
  3dfd78:      	ldr.w	r3, [r3, #0x148]
  3dfd7c:      	cmp	r3, #0x0
  3dfd7e:      	beq	0x3dfd92 <_ZN19SoldierAIController10updateStepEf+0x552> @ imm = #0x10
  3dfd80:      	add	r3, sp, #0x24
  3dfd82:      	ldr	r3, [r3]
  3dfd84:      	ldr	r3, [r3]
  3dfd86:      	add.w	r3, r3, #0x208
  3dfd8a:      	ldr	r3, [r3]
  3dfd8c:      	add	r2, sp, #0x24
  3dfd8e:      	ldr	r0, [r2]
  3dfd90:      	blx	r3
  3dfd92:      	add	r3, sp, #0x24
  3dfd94:      	ldr	r3, [r3]
  3dfd96:      	ldr.w	r3, [r3, #0x150]
  3dfd9a:      	cmp	r3, #0x0
  3dfd9c:      	beq	0x3dfdb0 <_ZN19SoldierAIController10updateStepEf+0x570> @ imm = #0x10
  3dfd9e:      	add	r3, sp, #0x24
  3dfda0:      	ldr	r3, [r3]
  3dfda2:      	ldr	r3, [r3]
  3dfda4:      	add.w	r3, r3, #0x20c
  3dfda8:      	ldr	r3, [r3]
  3dfdaa:      	add	r2, sp, #0x24
  3dfdac:      	ldr	r0, [r2]
  3dfdae:      	blx	r3
  3dfdb0:      	add	r3, sp, #0x24
  3dfdb2:      	ldr	r3, [r3]
  3dfdb4:      	movs	r2, #0x1
  3dfdb6:      	strb.w	r2, [r3, #0x159]
  3dfdba:      	add	r3, sp, #0x24
  3dfdbc:      	ldr	r3, [r3]
  3dfdbe:      	movs	r2, #0x0
  3dfdc0:      	strb.w	r2, [r3, #0x11c]
  3dfdc4:      	add	r3, sp, #0x24
  3dfdc6:      	ldr	r3, [r3]
  3dfdc8:      	movs	r2, #0x0
  3dfdca:      	strb.w	r2, [r3, #0x104]
  3dfdce:      	add	r3, sp, #0x24
  3dfdd0:      	ldr	r3, [r3]
  3dfdd2:      	mov.w	r2, #0x0
  3dfdd6:      	str.w	r2, [r3, #0x10c]
  3dfdda:      	add	r3, sp, #0x24
  3dfddc:      	ldr	r3, [r3]
  3dfdde:      	ldr.w	r3, [r3, #0x138]
  3dfde2:      	mov	r0, r3
  3dfde4:      	bl	0x6d3312 <cpBodyResetForces> @ imm = #0x2f352a
  3dfde8:      	add	r3, sp, #0x24
  3dfdea:      	ldr	r3, [r3]
  3dfdec:      	vldr	s14, [r3, #392]
  3dfdf0:      	vmov.f32	s15, #1.000000e+00
  3dfdf4:      	vcmpe.f32	s14, s15
  3dfdf8:      	vmrs	APSR_nzcv, fpscr
  3dfdfc:      	ble	0x3dfe58 <_ZN19SoldierAIController10updateStepEf+0x618> @ imm = #0x58
  3dfdfe:      	add	r3, sp, #0x24
  3dfe00:      	ldr	r3, [r3]
  3dfe02:      	ldrb.w	r3, [r3, #0x159]
  3dfe06:      	eor	r3, r3, #0x1
  3dfe0a:      	uxtb	r3, r3
  3dfe0c:      	cmp	r3, #0x0
  3dfe0e:      	beq	0x3dfe58 <_ZN19SoldierAIController10updateStepEf+0x618> @ imm = #0x46
  3dfe10:      	add	r3, sp, #0x24
  3dfe12:      	ldr	r3, [r3]
  3dfe14:      	mov.w	r2, #0x0
  3dfe18:      	str.w	r2, [r3, #0x188]
  3dfe1c:      	add	r3, sp, #0x24
  3dfe1e:      	ldr	r3, [r3]
  3dfe20:      	vldr	s14, [r3, #324]
  3dfe24:      	vmov.f32	s15, #1.000000e+00
  3dfe28:      	vadd.f32	s14, s14, s15
  3dfe2c:      	vldr	s15, [pc, #228]         @ 0x3dff14 <_ZN19SoldierAIController10updateStepEf+0x6d4>
  3dfe30:      	vcmpe.f32	s14, s15
  3dfe34:      	vmrs	APSR_nzcv, fpscr
  3dfe38:      	bpl	0x3dfe4c <_ZN19SoldierAIController10updateStepEf+0x60c> @ imm = #0x10
  3dfe3a:      	add	r3, sp, #0x24
  3dfe3c:      	ldr	r3, [r3]
  3dfe3e:      	vldr	s14, [r3, #324]
  3dfe42:      	vmov.f32	s15, #1.000000e+00
  3dfe46:      	vadd.f32	s15, s14, s15
  3dfe4a:      	b	0x3dfe50 <_ZN19SoldierAIController10updateStepEf+0x610> @ imm = #0x2
  3dfe4c:      	vldr	s15, [pc, #196]         @ 0x3dff14 <_ZN19SoldierAIController10updateStepEf+0x6d4>
  3dfe50:      	add	r3, sp, #0x24
  3dfe52:      	ldr	r3, [r3]
  3dfe54:      	vstr	s15, [r3, #324]
  3dfe58:      	add	r3, sp, #0x24
  3dfe5a:      	ldr	r3, [r3]
  3dfe5c:      	movs	r2, #0x0
  3dfe5e:      	strb.w	r2, [r3, #0x1ac]
  3dfe62:      	add	r3, sp, #0x24
  3dfe64:      	ldr	r3, [r3]
  3dfe66:      	ldrb.w	r3, [r3, #0x104]
  3dfe6a:      	eor	r3, r3, #0x1
  3dfe6e:      	uxtb	r3, r3
  3dfe70:      	cmp	r3, #0x0
  3dfe72:      	bne	0x3dfe92 <_ZN19SoldierAIController10updateStepEf+0x652> @ imm = #0x1c
  3dfe74:      	add	r3, sp, #0x24
  3dfe76:      	ldr	r3, [r3]
  3dfe78:      	ldrb.w	r3, [r3, #0x104]
  3dfe7c:      	cmp	r3, #0x0
  3dfe7e:      	beq	0x3dff48 <_ZN19SoldierAIController10updateStepEf+0x708> @ imm = #0xc6
  3dfe80:      	add	r3, sp, #0x24
  3dfe82:      	ldr	r3, [r3]
  3dfe84:      	ldrb.w	r3, [r3, #0x11c]
  3dfe88:      	eor	r3, r3, #0x1
  3dfe8c:      	uxtb	r3, r3
  3dfe8e:      	cmp	r3, #0x0
  3dfe90:      	beq	0x3dff48 <_ZN19SoldierAIController10updateStepEf+0x708> @ imm = #0xb4
  3dfe92:      	add	r3, sp, #0x24
  3dfe94:      	ldr	r3, [r3]
  3dfe96:      	vldr	s15, [r3, #388]
  3dfe9a:      	vcmpe.f32	s15, #0
  3dfe9e:      	vmrs	APSR_nzcv, fpscr
  3dfea2:      	ble	0x3dff48 <_ZN19SoldierAIController10updateStepEf+0x708> @ imm = #0xa2
  3dfea4:      	add	r3, sp, #0x24
  3dfea6:      	ldr	r3, [r3]
  3dfea8:      	vldr	s15, [r3, #408]
  3dfeac:      	vcvt.f64.f32	d6, s15
  3dfeb0:      	vmov.f64	d7, #2.500000e-01
  3dfeb4:      	vadd.f64	d6, d6, d7
  3dfeb8:      	vldr	d7, [pc, #76]           @ 0x3dff08 <_ZN19SoldierAIController10updateStepEf+0x6c8>
  3dfebc:      	vcmpe.f64	d6, d7
  3dfec0:      	vmrs	APSR_nzcv, fpscr
  3dfec4:      	bpl	0x3dff18 <_ZN19SoldierAIController10updateStepEf+0x6d8> @ imm = #0x50
  3dfec6:      	add	r3, sp, #0x24
  3dfec8:      	ldr	r3, [r3]
  3dfeca:      	vldr	s15, [r3, #408]
  3dfece:      	vcvt.f64.f32	d6, s15
  3dfed2:      	vmov.f64	d7, #2.500000e-01
  3dfed6:      	vadd.f64	d7, d6, d7
  3dfeda:      	vcvt.f32.f64	s15, d7
  3dfede:      	b	0x3dff1c <_ZN19SoldierAIController10updateStepEf+0x6dc> @ imm = #0x3a
// SoldierAIController::updateStep  ghidra=0x3eff18-0x3f031d  elf=0x3dff18-0x3e031d  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3dff18:      	vldr	s15, [pc, #-8]          @ 0x3dff14 <_ZN19SoldierAIController10updateStepEf+0x6d4>
  3dff1c:      	add	r3, sp, #0x24
  3dff1e:      	ldr	r3, [r3]
  3dff20:      	vstr	s15, [r3, #408]
  3dff24:      	add	r3, sp, #0x24
  3dff26:      	ldr	r3, [r3]
  3dff28:      	vldr	s14, [r3, #408]
  3dff2c:      	vldr	s15, [pc, #-28]         @ 0x3dff14 <_ZN19SoldierAIController10updateStepEf+0x6d4>
  3dff30:      	vcmpe.f32	s14, s15
  3dff34:      	vmrs	APSR_nzcv, fpscr
  3dff38:      	ite	pl
  3dff3a:      	movpl	r3, #0x0
  3dff3c:      	movmi	r3, #0x1
  3dff3e:      	uxtb	r2, r3
  3dff40:      	add	r3, sp, #0x24
  3dff42:      	ldr	r3, [r3]
  3dff44:      	strb.w	r2, [r3, #0x1ac]
  3dff48:      	add	r3, sp, #0x24
  3dff4a:      	ldr	r3, [r3]
  3dff4c:      	ldrb.w	r3, [r3, #0x104]
  3dff50:      	cmp	r3, #0x0
  3dff52:      	beq	0x3dff70 <_ZN19SoldierAIController10updateStepEf+0x730> @ imm = #0x1a
  3dff54:      	add	r3, sp, #0x24
  3dff56:      	ldr	r3, [r3]
  3dff58:      	ldr	r3, [r3]
  3dff5a:      	add.w	r3, r3, #0x2b4
  3dff5e:      	ldr	r3, [r3]
  3dff60:      	add	r2, sp, #0x24
  3dff62:      	ldr	r0, [r2]
  3dff64:      	blx	r3
  3dff66:      	mov	r3, r0
  3dff68:      	cmp	r3, #0x0
  3dff6a:      	beq	0x3dff70 <_ZN19SoldierAIController10updateStepEf+0x730> @ imm = #0x2
  3dff6c:      	movs	r3, #0x1
  3dff6e:      	b	0x3dff72 <_ZN19SoldierAIController10updateStepEf+0x732> @ imm = #0x0
  3dff70:      	movs	r3, #0x0
  3dff72:      	cmp	r3, #0x0
  3dff74:      	beq	0x3dfff6 <_ZN19SoldierAIController10updateStepEf+0x7b6> @ imm = #0x7e
  3dff76:      	add	r3, sp, #0x24
  3dff78:      	ldr	r3, [r3]
  3dff7a:      	ldrb.w	r3, [r3, #0x11c]
  3dff7e:      	cmp	r3, #0x0
  3dff80:      	beq	0x3e000c <_ZN19SoldierAIController10updateStepEf+0x7cc> @ imm = #0x88
  3dff82:      	add	r3, sp, #0x24
  3dff84:      	ldr	r3, [r3]
  3dff86:      	mov.w	r2, #0x0
  3dff8a:      	movt	r2, #0xc0a0
  3dff8e:      	str.w	r2, [r3, #0x184]
  3dff92:      	add	r3, sp, #0x24
  3dff94:      	ldr	r3, [r3]
  3dff96:      	vldr	s14, [r3, #264]
  3dff9a:      	vmov.f32	s15, #7.500000e-01
  3dff9e:      	vcmpe.f32	s14, s15
  3dffa2:      	vmrs	APSR_nzcv, fpscr
  3dffa6:      	ble	0x3e000c <_ZN19SoldierAIController10updateStepEf+0x7cc> @ imm = #0x62
  3dffa8:      	ldr	r3, [pc, #0x3a4]        @ 0x3e0350 <_ZN19SoldierAIController10updateStepEf+0xb10>
  3dffaa:      	ldr	r3, [r4, r3]
  3dffac:      	ldr	r5, [r3]
  3dffae:      	add	r3, sp, #0x24
  3dffb0:      	ldr	r3, [r3]
  3dffb2:      	ldr.w	r3, [r3, #0x138]
  3dffb6:      	add	r2, sp, #0x24
  3dffb8:      	ldr	r2, [r2]
  3dffba:      	vldr	s14, [r2, #268]
  3dffbe:      	vmov.f32	s15, #7.500000e-01
  3dffc2:      	vmul.f32	s15, s14, s15
  3dffc6:      	vstr	s15, [sp, #8]
  3dffca:      	mov.w	r2, #0x3f800000
  3dffce:      	str	r2, [sp, #0xc]
  3dffd0:      	mov	r2, sp
  3dffd2:      	add.w	r1, r3, #0x30
  3dffd6:      	ldm	r1, {r0, r1}
  3dffd8:      	stm.w	r2, {r0, r1}
  3dffdc:      	adds	r3, #0x28
  3dffde:      	ldm	r3, {r2, r3}
  3dffe0:      	mov	r0, r5
  3dffe2:      	movs	r1, #0x8
  3dffe4:      	bl	0x3f8044 <_ZN5Sound19playSoundPositionVPEi6cpVectff> @ imm = #0x1805c
  3dffe8:      	add	r3, sp, #0x24
  3dffea:      	ldr	r3, [r3]
  3dffec:      	mov.w	r2, #0x0
  3dfff0:      	str.w	r2, [r3, #0x108]
  3dfff4:      	b	0x3e000c <_ZN19SoldierAIController10updateStepEf+0x7cc> @ imm = #0x14
  3dfff6:      	add	r3, sp, #0x24
  3dfff8:      	ldr	r3, [r3]
  3dfffa:      	movs	r2, #0x0
  3dfffc:      	strb.w	r2, [r3, #0x104]
  3e0000:      	add	r3, sp, #0x24
  3e0002:      	ldr	r3, [r3]
  3e0004:      	mov.w	r2, #0x3f400000
  3e0008:      	str.w	r2, [r3, #0x108]
  3e000c:      	add	r3, sp, #0x24
  3e000e:      	ldr	r3, [r3]
  3e0010:      	ldrb.w	r3, [r3, #0x11c]
  3e0014:      	cmp	r3, #0x0
  3e0016:      	beq.w	0x3e0690 <_ZN19SoldierAIController10updateStepEf+0xe50> @ imm = #0x676
  3e001a:      	mov.w	r2, #0x0
  3e001e:      	mov.w	r3, #0x0
  3e0022:      	strd	r2, r3, [sp, #160]
  3e0026:      	mov.w	r2, #0x0
  3e002a:      	mov.w	r3, #0x0
  3e002e:      	strd	r2, r3, [sp, #168]
  3e0032:      	add	r1, sp, #0x48
  3e0034:      	mov.w	r2, #0x0
  3e0038:      	mov.w	r3, #0x0
  3e003c:      	strd	r2, r3, [r1]
  3e0040:      	mov.w	r2, #0x0
  3e0044:      	mov.w	r3, #0x0
  3e0048:      	strd	r2, r3, [sp, #176]
  3e004c:      	mov.w	r2, #0x0
  3e0050:      	mov.w	r3, #0x0
  3e0054:      	strd	r2, r3, [sp, #184]
  3e0058:      	add	r3, sp, #0x24
  3e005a:      	ldr	r3, [r3]
  3e005c:      	ldrb.w	r3, [r3, #0x104]
  3e0060:      	cmp	r3, #0x0
  3e0062:      	beq	0x3e0080 <_ZN19SoldierAIController10updateStepEf+0x840> @ imm = #0x1a
  3e0064:      	add	r3, sp, #0x24
  3e0066:      	ldr	r3, [r3]
  3e0068:      	ldr	r3, [r3]
  3e006a:      	add.w	r3, r3, #0x2b4
  3e006e:      	ldr	r3, [r3]
  3e0070:      	add	r2, sp, #0x24
  3e0072:      	ldr	r0, [r2]
  3e0074:      	blx	r3
  3e0076:      	mov	r3, r0
  3e0078:      	cmp	r3, #0x0
  3e007a:      	beq	0x3e0080 <_ZN19SoldierAIController10updateStepEf+0x840> @ imm = #0x2
  3e007c:      	movs	r3, #0x1
  3e007e:      	b	0x3e0082 <_ZN19SoldierAIController10updateStepEf+0x842> @ imm = #0x0
  3e0080:      	movs	r3, #0x0
  3e0082:      	cmp	r3, #0x0
  3e0084:      	beq.w	0x3e0358 <_ZN19SoldierAIController10updateStepEf+0xb18> @ imm = #0x2d0
  3e0088:      	add	r3, sp, #0x24
  3e008a:      	ldr	r4, [r3]
  3e008c:      	add	r3, sp, #0x10
  3e008e:      	mov	r0, r3
  3e0090:      	vldr	d0, [pc, #652]          @ 0x3e0320 <_ZN19SoldierAIController10updateStepEf+0xae0>
  3e0094:      	vldr	d1, [pc, #656]          @ 0x3e0328 <_ZN19SoldierAIController10updateStepEf+0xae8>
  3e0098:      	bl	0x3dda68 <_ZN4Slug11getVelocityEv+0x23c> @ imm = #-0x2634
  3e009c:      	add	r3, sp, #0x10
  3e009e:      	add.w	r4, r4, #0x128
  3e00a2:      	ldm	r3, {r0, r1, r2, r3}
  3e00a4:      	stm.w	r4, {r0, r1, r2, r3}
  3e00a8:      	add	r3, sp, #0x24
  3e00aa:      	ldr	r3, [r3]
  3e00ac:      	ldr.w	r1, [r3, #0x13c]
  3e00b0:      	mov.w	r2, #0x0
  3e00b4:      	mov.w	r3, #0x0
  3e00b8:      	movt	r3, #0x3fe0
  3e00bc:      	strd	r2, r3, [r1, #48]
  3e00c0:      	add	r3, sp, #0x24
  3e00c2:      	ldr	r3, [r3]
  3e00c4:      	ldr.w	r1, [r3, #0x13c]
  3e00c8:      	adr	r3, #636 <_ZN19SoldierAIController10updateStepEf+0x92b>
  3e00ca:      	ldrd	r2, r3, [r3]
  3e00ce:      	strd	r2, r3, [r1, #56]
  3e00d2:      	add	r3, sp, #0x24
  3e00d4:      	ldr	r3, [r3]
  3e00d6:      	vldr	s15, [r3, #276]
  3e00da:      	vcvt.f64.f32	d6, s15
  3e00de:      	add	r3, sp, #0x24
  3e00e0:      	ldr	r3, [r3]
  3e00e2:      	vldr	s15, [r3, #280]
  3e00e6:      	vcvt.f64.f32	d7, s15
  3e00ea:      	add	r3, sp, #0x150
  3e00ec:      	mov	r0, r3
  3e00ee:      	vmov.f64	d0, d6
  3e00f2:      	vmov.f64	d1, d7
  3e00f6:      	bl	0x3dda68 <_ZN4Slug11getVelocityEv+0x23c> @ imm = #-0x2692
  3e00fa:      	add	r3, sp, #0x150
  3e00fc:      	ldm	r3, {r0, r1, r2, r3}
  3e00fe:      	bl	0x6d70b8 <cpvlength>    @ imm = #0x2f6fb6
  3e0102:      	vmov	d7, r0, r1
  3e0106:      	vcmp.f64	d7, #0
  3e010a:      	vmrs	APSR_nzcv, fpscr
  3e010e:      	ite	eq
  3e0110:      	moveq	r3, #0x0
  3e0112:      	movne	r3, #0x1
  3e0114:      	uxtb	r3, r3
  3e0116:      	cmp	r3, #0x0
  3e0118:      	beq	0x3e013c <_ZN19SoldierAIController10updateStepEf+0x8fc> @ imm = #0x20
  3e011a:      	add	r3, sp, #0x10
  3e011c:      	vldr	d6, [sp, #336]
  3e0120:      	vldr	d7, [sp, #344]
  3e0124:      	mov	r0, r3
  3e0126:      	vmov.f64	d0, d6
  3e012a:      	vmov.f64	d1, d7
  3e012e:      	bl	0x3ddc1c <_ZN4Slug11getVelocityEv+0x3f0> @ imm = #-0x2516
  3e0132:      	add	r3, sp, #0x10
  3e0134:      	add	r4, sp, #0xb0
  3e0136:      	ldm	r3, {r0, r1, r2, r3}
  3e0138:      	stm.w	r4, {r0, r1, r2, r3}
  3e013c:      	add	r3, sp, #0x24
  3e013e:      	ldr	r3, [r3]
  3e0140:      	vldr	s15, [r3, #412]
  3e0144:      	vcvt.f64.f32	d7, s15
  3e0148:      	add	r3, sp, #0x10
  3e014a:      	vldr	d5, [sp, #176]
  3e014e:      	vldr	d6, [sp, #184]
  3e0152:      	mov	r0, r3
  3e0154:      	vmov.f64	d0, d5
  3e0158:      	vmov.f64	d1, d6
  3e015c:      	vmov.f64	d2, d7
  3e0160:      	bl	0x3ddb40 <_ZN4Slug11getVelocityEv+0x314> @ imm = #-0x2624
  3e0164:      	add	r3, sp, #0x10
  3e0166:      	add	r4, sp, #0xa0
  3e0168:      	ldm	r3, {r0, r1, r2, r3}
  3e016a:      	stm.w	r4, {r0, r1, r2, r3}
  3e016e:      	add	r3, sp, #0x24
  3e0170:      	ldr	r3, [r3]
  3e0172:      	vldr	s15, [r3, #408]
  3e0176:      	vcvt.f64.f32	d6, s15
  3e017a:      	add	r3, sp, #0x24
  3e017c:      	ldr	r3, [r3]
  3e017e:      	vldr	s15, [r3, #268]
  3e0182:      	vcvt.f64.f32	d5, s15
  3e0186:      	vldr	d7, [pc, #424]          @ 0x3e0330 <_ZN19SoldierAIController10updateStepEf+0xaf0>
  3e018a:      	vmul.f64	d7, d5, d7
  3e018e:      	vsub.f64	d7, d6, d7
  3e0192:      	vcmpe.f64	d7, #0
  3e0196:      	vmrs	APSR_nzcv, fpscr
  3e019a:      	ble	0x3e01c6 <_ZN19SoldierAIController10updateStepEf+0x986> @ imm = #0x28
  3e019c:      	add	r3, sp, #0x24
  3e019e:      	ldr	r3, [r3]
  3e01a0:      	vldr	s15, [r3, #408]
  3e01a4:      	vcvt.f64.f32	d6, s15
  3e01a8:      	add	r3, sp, #0x24
  3e01aa:      	ldr	r3, [r3]
  3e01ac:      	vldr	s15, [r3, #268]
  3e01b0:      	vcvt.f64.f32	d5, s15
  3e01b4:      	vldr	d7, [pc, #376]          @ 0x3e0330 <_ZN19SoldierAIController10updateStepEf+0xaf0>
  3e01b8:      	vmul.f64	d7, d5, d7
  3e01bc:      	vsub.f64	d7, d6, d7
  3e01c0:      	vcvt.f32.f64	s15, d7
  3e01c4:      	b	0x3e01ca <_ZN19SoldierAIController10updateStepEf+0x98a> @ imm = #0x2
  3e01c6:      	vldr	s15, [pc, #376]         @ 0x3e0340 <_ZN19SoldierAIController10updateStepEf+0xb00>
  3e01ca:      	add	r3, sp, #0x24
  3e01cc:      	ldr	r3, [r3]
  3e01ce:      	vstr	s15, [r3, #408]
  3e01d2:      	add	r3, sp, #0x24
  3e01d4:      	ldr	r3, [r3]
  3e01d6:      	movs	r2, #0x1
  3e01d8:      	strb.w	r2, [r3, #0x11d]
  3e01dc:      	add	r3, sp, #0xa0
  3e01de:      	ldm	r3, {r0, r1, r2, r3}
  3e01e0:      	bl	0x6d70b8 <cpvlength>    @ imm = #0x2f6ed4
  3e01e4:      	mov	r2, r0
  3e01e6:      	mov	r3, r1
  3e01e8:      	add	r1, sp, #0x48
  3e01ea:      	strd	r2, r3, [r1]
  3e01ee:      	add	r3, sp, #0x48
  3e01f0:      	vldr	d7, [r3]
  3e01f4:      	vcmp.f64	d7, #0
  3e01f8:      	vmrs	APSR_nzcv, fpscr
  3e01fc:      	beq.w	0x3e031c <_ZN19SoldierAIController10updateStepEf+0xadc> @ imm = #0x11c
  3e0200:      	add	r3, sp, #0x24
  3e0202:      	ldr	r3, [r3]
  3e0204:      	ldr.w	r3, [r3, #0x138]
  3e0208:      	add	r4, sp, #0x160
  3e020a:      	adds	r3, #0x38
  3e020c:      	ldm	r3, {r0, r1, r2, r3}
  3e020e:      	stm.w	r4, {r0, r1, r2, r3}
  3e0212:      	add	r4, sp, #0x50
  3e0214:      	vldr	d4, [sp, #352]
  3e0218:      	vldr	d5, [sp, #360]
  3e021c:      	vldr	d6, [sp, #176]
  3e0220:      	vldr	d7, [sp, #184]
  3e0224:      	vmov.f64	d0, d4
  3e0228:      	vmov.f64	d1, d5
  3e022c:      	vmov.f64	d2, d6
  3e0230:      	vmov.f64	d3, d7
  3e0234:      	bl	0x3ddb8c <_ZN4Slug11getVelocityEv+0x360> @ imm = #-0x26ac
  3e0238:      	vstr	d0, [r4]
  3e023c:      	add	r3, sp, #0x28
  3e023e:      	mov.w	r2, #0x3f800000
  3e0242:      	str	r2, [r3]
  3e0244:      	add	r3, sp, #0x24
  3e0246:      	ldr	r3, [r3]
  3e0248:      	add.w	r3, r3, #0x114
  3e024c:      	mov	r0, r3
  3e024e:      	bl	0x5e1730 <_ZN7cocos2d9ccpLengthERKNS_7CCPointE> @ imm = #0x2014de
  3e0252:      	vmov	s14, r0
  3e0256:      	add	r3, sp, #0x28
  3e0258:      	add	r2, sp, #0x28
  3e025a:      	vldr	s15, [r2]
  3e025e:      	vmul.f32	s15, s15, s14
  3e0262:      	vstr	s15, [r3]
  3e0266:      	add	r2, sp, #0x48
  3e0268:      	add	r3, sp, #0x50
  3e026a:      	vldr	d6, [r2]
  3e026e:      	vldr	d7, [r3]
  3e0272:      	vsub.f64	d6, d6, d7
  3e0276:      	vldr	d7, [pc, #192]          @ 0x3e0338 <_ZN19SoldierAIController10updateStepEf+0xaf8>
  3e027a:      	vcmpe.f64	d6, d7
  3e027e:      	vmrs	APSR_nzcv, fpscr
  3e0282:      	bpl	0x3e028a <_ZN19SoldierAIController10updateStepEf+0xa4a> @ imm = #0x4
  3e0284:      	vldr	s15, [pc, #188]         @ 0x3e0344 <_ZN19SoldierAIController10updateStepEf+0xb04>
  3e0288:      	b	0x3e029e <_ZN19SoldierAIController10updateStepEf+0xa5e> @ imm = #0x12
  3e028a:      	add	r2, sp, #0x48
  3e028c:      	add	r3, sp, #0x50
  3e028e:      	vldr	d6, [r2]
  3e0292:      	vldr	d7, [r3]
  3e0296:      	vsub.f64	d7, d6, d7
  3e029a:      	vcvt.f32.f64	s15, d7
  3e029e:      	add	r3, sp, #0x2c
  3e02a0:      	vstr	s15, [r3]
  3e02a4:      	add	r3, sp, #0x24
  3e02a6:      	ldr	r3, [r3]
  3e02a8:      	ldr.w	r4, [r3, #0x138]
  3e02ac:      	add	r2, sp, #0x28
  3e02ae:      	add	r3, sp, #0x20
  3e02b0:      	vldr	s14, [r2]
  3e02b4:      	vldr	s15, [r3]
  3e02b8:      	vmul.f32	s14, s14, s15
  3e02bc:      	add	r3, sp, #0x2c
  3e02be:      	vldr	s15, [r3]
  3e02c2:      	vmul.f32	s14, s14, s15
  3e02c6:      	add	r3, sp, #0x24
  3e02c8:      	ldr	r3, [r3]
  3e02ca:      	vldr	s15, [r3, #436]
  3e02ce:      	vmul.f32	s15, s14, s15
  3e02d2:      	vcvt.f64.f32	d7, s15
  3e02d6:      	add	r3, sp, #0x140
  3e02d8:      	vldr	d5, [sp, #176]
  3e02dc:      	vldr	d6, [sp, #184]
  3e02e0:      	mov	r0, r3
  3e02e2:      	vmov.f64	d0, d5
  3e02e6:      	vmov.f64	d1, d6
  3e02ea:      	vmov.f64	d2, d7
  3e02ee:      	bl	0x3ddb40 <_ZN4Slug11getVelocityEv+0x314> @ imm = #-0x27b2
  3e02f2:      	vldr	d4, [sp, #320]
  3e02f6:      	vldr	d5, [sp, #328]
  3e02fa:      	ldr	r3, [pc, #0x58]         @ 0x3e0354 <_ZN19SoldierAIController10updateStepEf+0xb14>
  3e02fc:      	add	r3, pc
  3e02fe:      	vldr	d6, [r3]
  3e0302:      	vldr	d7, [r3, #8]
  3e0306:      	mov	r0, r4
  3e0308:      	vmov.f64	d0, d4
  3e030c:      	vmov.f64	d1, d5
  3e0310:      	vmov.f64	d2, d6
  3e0314:      	vmov.f64	d3, d7
  3e0318:      	bl	0x3ddd3c <_ZN4Slug11getVelocityEv+0x510> @ imm = #-0x25e0
  3e031c:      	b	0x3e0644 <_ZN19SoldierAIController10updateStepEf+0xe04> @ imm = #0x324
// SoldierAIController::updateStep  ghidra=0x3f0358-0x3f0645  elf=0x3e0358-0x3e0645  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3e0358:      	add	r3, sp, #0x24
  3e035a:      	ldr	r5, [r3]
  3e035c:      	add	r3, sp, #0x10
  3e035e:      	mov	r0, r3
  3e0360:      	vldr	d0, [pc, #740]          @ 0x3e0648 <_ZN19SoldierAIController10updateStepEf+0xe08>
  3e0364:      	vldr	d1, [pc, #744]          @ 0x3e0650 <_ZN19SoldierAIController10updateStepEf+0xe10>
  3e0368:      	bl	0x3dda68 <_ZN4Slug11getVelocityEv+0x23c> @ imm = #-0x2904
  3e036c:      	add	r3, sp, #0x10
  3e036e:      	add.w	r5, r5, #0x128
  3e0372:      	ldm	r3, {r0, r1, r2, r3}
  3e0374:      	stm.w	r5, {r0, r1, r2, r3}
  3e0378:      	add	r3, sp, #0x24
  3e037a:      	ldr	r3, [r3]
  3e037c:      	ldr.w	r1, [r3, #0x13c]
  3e0380:      	adr	r3, #756 <_ZN19SoldierAIController10updateStepEf+0xc01>
  3e0382:      	ldrd	r2, r3, [r3]
  3e0386:      	strd	r2, r3, [r1, #48]
  3e038a:      	add	r3, sp, #0x24
  3e038c:      	ldr	r3, [r3]
  3e038e:      	ldr.w	r1, [r3, #0x13c]
  3e0392:      	adr	r3, #748 <_ZN19SoldierAIController10updateStepEf+0xc11>
  3e0394:      	ldrd	r2, r3, [r3]
  3e0398:      	strd	r2, r3, [r1, #56]
  3e039c:      	add	r3, sp, #0x24
  3e039e:      	ldr	r3, [r3]
  3e03a0:      	vldr	s15, [r3, #276]
  3e03a4:      	add	r3, sp, #0x58
  3e03a6:      	vcvt.f64.f32	d7, s15
  3e03aa:      	vstr	d7, [r3]
  3e03ae:      	add	r3, sp, #0x58
  3e03b0:      	vldr	d7, [r3]
  3e03b4:      	vcmp.f64	d7, #0
  3e03b8:      	vmrs	APSR_nzcv, fpscr
  3e03bc:      	beq	0x3e03f2 <_ZN19SoldierAIController10updateStepEf+0xbb2> @ imm = #0x32
  3e03be:      	add	r2, sp, #0x150
  3e03c0:      	add	r3, sp, #0x58
  3e03c2:      	mov	r0, r2
  3e03c4:      	vldr	d0, [r3]
  3e03c8:      	vldr	d1, [pc, #636]          @ 0x3e0648 <_ZN19SoldierAIController10updateStepEf+0xe08>
  3e03cc:      	bl	0x3dda68 <_ZN4Slug11getVelocityEv+0x23c> @ imm = #-0x2968
  3e03d0:      	add	r3, sp, #0x10
  3e03d2:      	vldr	d6, [sp, #336]
  3e03d6:      	vldr	d7, [sp, #344]
  3e03da:      	mov	r0, r3
  3e03dc:      	vmov.f64	d0, d6
  3e03e0:      	vmov.f64	d1, d7
  3e03e4:      	bl	0x3ddc1c <_ZN4Slug11getVelocityEv+0x3f0> @ imm = #-0x27cc
  3e03e8:      	add	r3, sp, #0x10
  3e03ea:      	add	r5, sp, #0xb0
  3e03ec:      	ldm	r3, {r0, r1, r2, r3}
  3e03ee:      	stm.w	r5, {r0, r1, r2, r3}
  3e03f2:      	add	r3, sp, #0x24
  3e03f4:      	ldr	r3, [r3]
  3e03f6:      	vldr	s15, [r3, #416]
  3e03fa:      	vcvt.f64.f32	d6, s15
  3e03fe:      	add	r3, sp, #0x58
  3e0400:      	vldr	d7, [r3]
  3e0404:      	vmul.f64	d7, d6, d7
  3e0408:      	add	r3, sp, #0x10
  3e040a:      	mov	r0, r3
  3e040c:      	vmov.f64	d0, d7
  3e0410:      	vldr	d1, [pc, #564]          @ 0x3e0648 <_ZN19SoldierAIController10updateStepEf+0xe08>
  3e0414:      	bl	0x3dda68 <_ZN4Slug11getVelocityEv+0x23c> @ imm = #-0x29b0
  3e0418:      	add	r3, sp, #0x10
  3e041a:      	add	r5, sp, #0xa0
  3e041c:      	ldm	r3, {r0, r1, r2, r3}
  3e041e:      	stm.w	r5, {r0, r1, r2, r3}
  3e0422:      	add	r3, sp, #0xa0
  3e0424:      	ldm	r3, {r0, r1, r2, r3}
  3e0426:      	bl	0x6d70b8 <cpvlength>    @ imm = #0x2f6c8e
  3e042a:      	mov	r2, r0
  3e042c:      	mov	r3, r1
  3e042e:      	add	r1, sp, #0x48
  3e0430:      	strd	r2, r3, [r1]
  3e0434:      	add	r3, sp, #0x48
  3e0436:      	vldr	d7, [r3]
  3e043a:      	vcmp.f64	d7, #0
  3e043e:      	vmrs	APSR_nzcv, fpscr
  3e0442:      	beq.w	0x3e060a <_ZN19SoldierAIController10updateStepEf+0xdca> @ imm = #0x1c4
  3e0446:      	add	r3, sp, #0x24
  3e0448:      	ldr	r3, [r3]
  3e044a:      	ldr.w	r3, [r3, #0x138]
  3e044e:      	add	r5, sp, #0x140
  3e0450:      	adds	r3, #0x38
  3e0452:      	ldm	r3, {r0, r1, r2, r3}
  3e0454:      	stm.w	r5, {r0, r1, r2, r3}
  3e0458:      	add	r5, sp, #0x60
  3e045a:      	vldr	d4, [sp, #320]
  3e045e:      	vldr	d5, [sp, #328]
  3e0462:      	vldr	d6, [sp, #176]
  3e0466:      	vldr	d7, [sp, #184]
  3e046a:      	vmov.f64	d0, d4
  3e046e:      	vmov.f64	d1, d5
  3e0472:      	vmov.f64	d2, d6
  3e0476:      	vmov.f64	d3, d7
  3e047a:      	bl	0x3ddb8c <_ZN4Slug11getVelocityEv+0x360> @ imm = #-0x28f2
  3e047e:      	vstr	d0, [r5]
  3e0482:      	add	r3, sp, #0x30
  3e0484:      	mov.w	r2, #0x40000000
  3e0488:      	str	r2, [r3]
  3e048a:      	add	r2, sp, #0x48
  3e048c:      	add	r3, sp, #0x60
  3e048e:      	vldr	d6, [r2]
  3e0492:      	vldr	d7, [r3]
  3e0496:      	vsub.f64	d6, d6, d7
  3e049a:      	vldr	d7, [pc, #444]          @ 0x3e0658 <_ZN19SoldierAIController10updateStepEf+0xe18>
  3e049e:      	vcmpe.f64	d6, d7
  3e04a2:      	vmrs	APSR_nzcv, fpscr
  3e04a6:      	bpl	0x3e04ae <_ZN19SoldierAIController10updateStepEf+0xc6e> @ imm = #0x4
  3e04a8:      	vldr	s15, [pc, #452]         @ 0x3e0670 <_ZN19SoldierAIController10updateStepEf+0xe30>
  3e04ac:      	b	0x3e04c2 <_ZN19SoldierAIController10updateStepEf+0xc82> @ imm = #0x12
  3e04ae:      	add	r2, sp, #0x48
  3e04b0:      	add	r3, sp, #0x60
  3e04b2:      	vldr	d6, [r2]
  3e04b6:      	vldr	d7, [r3]
  3e04ba:      	vsub.f64	d7, d6, d7
  3e04be:      	vcvt.f32.f64	s15, d7
  3e04c2:      	add	r3, sp, #0x34
  3e04c4:      	vstr	s15, [r3]
  3e04c8:      	add	r3, sp, #0x24
  3e04ca:      	ldr	r3, [r3]
  3e04cc:      	ldr.w	r5, [r3, #0x138]
  3e04d0:      	add	r2, sp, #0x30
  3e04d2:      	add	r3, sp, #0x20
  3e04d4:      	vldr	s14, [r2]
  3e04d8:      	vldr	s15, [r3]
  3e04dc:      	vmul.f32	s14, s14, s15
  3e04e0:      	add	r3, sp, #0x34
  3e04e2:      	vldr	s15, [r3]
  3e04e6:      	vmul.f32	s14, s14, s15
  3e04ea:      	add	r3, sp, #0x24
  3e04ec:      	ldr	r3, [r3]
  3e04ee:      	vldr	s15, [r3, #436]
  3e04f2:      	vmul.f32	s15, s14, s15
  3e04f6:      	vcvt.f64.f32	d7, s15
  3e04fa:      	add	r3, sp, #0x160
  3e04fc:      	vldr	d5, [sp, #176]
  3e0500:      	vldr	d6, [sp, #184]
  3e0504:      	mov	r0, r3
  3e0506:      	vmov.f64	d0, d5
  3e050a:      	vmov.f64	d1, d6
  3e050e:      	vmov.f64	d2, d7
  3e0512:      	bl	0x3ddb40 <_ZN4Slug11getVelocityEv+0x314> @ imm = #-0x29d6
  3e0516:      	vldr	d4, [sp, #352]
  3e051a:      	vldr	d5, [sp, #360]
  3e051e:      	ldr	r3, [pc, #0x168]        @ 0x3e0688 <_ZN19SoldierAIController10updateStepEf+0xe48>
  3e0520:      	add	r3, pc
  3e0522:      	vldr	d6, [r3]
  3e0526:      	vldr	d7, [r3, #8]
  3e052a:      	mov	r0, r5
  3e052c:      	vmov.f64	d0, d4
  3e0530:      	vmov.f64	d1, d5
  3e0534:      	vmov.f64	d2, d6
  3e0538:      	vmov.f64	d3, d7
  3e053c:      	bl	0x3ddd3c <_ZN4Slug11getVelocityEv+0x510> @ imm = #-0x2804
  3e0540:      	add	r3, sp, #0x24
  3e0542:      	ldr	r3, [r3]
  3e0544:      	vldr	s15, [r3, #448]
  3e0548:      	vcvt.f64.f32	d6, s15
  3e054c:      	add	r3, sp, #0x48
  3e054e:      	vldr	d5, [pc, #272]          @ 0x3e0660 <_ZN19SoldierAIController10updateStepEf+0xe20>
  3e0552:      	vldr	d7, [r3]
  3e0556:      	vdiv.f64	d7, d5, d7
  3e055a:      	vcmpe.f64	d6, d7
  3e055e:      	vmrs	APSR_nzcv, fpscr
  3e0562:      	bgt	0x3e0566 <_ZN19SoldierAIController10updateStepEf+0xd26> @ imm = #0x0
  3e0564:      	b	0x3e060a <_ZN19SoldierAIController10updateStepEf+0xdca> @ imm = #0xa2
  3e0566:      	add	r3, sp, #0x24
  3e0568:      	ldr	r3, [r3]
  3e056a:      	ldrb.w	r3, [r3, #0xe6]
  3e056e:      	cmp	r3, #0x0
  3e0570:      	beq	0x3e060a <_ZN19SoldierAIController10updateStepEf+0xdca> @ imm = #0x96
  3e0572:      	add	r3, sp, #0x24
  3e0574:      	ldr	r3, [r3]
  3e0576:      	ldrb.w	r3, [r3, #0x15a]
  3e057a:      	eor	r3, r3, #0x1
  3e057e:      	uxtb	r3, r3
  3e0580:      	cmp	r3, #0x0
  3e0582:      	beq	0x3e060a <_ZN19SoldierAIController10updateStepEf+0xdca> @ imm = #0x84
  3e0584:      	add	r3, sp, #0x24
  3e0586:      	ldr	r3, [r3]
  3e0588:      	mov.w	r2, #0x0
  3e058c:      	str.w	r2, [r3, #0x1c0]
  3e0590:      	ldr	r3, [pc, #0xf8]         @ 0x3e068c <_ZN19SoldierAIController10updateStepEf+0xe4c>
  3e0592:      	ldr	r3, [r4, r3]
  3e0594:      	ldr	r5, [r3]
  3e0596:      	add	r3, sp, #0x24
  3e0598:      	ldr	r3, [r3]
  3e059a:      	ldr.w	r4, [r3, #0x138]
  3e059e:      	add	r3, sp, #0x48
  3e05a0:      	vldr	d6, [r3]
  3e05a4:      	vldr	d7, [pc, #192]          @ 0x3e0668 <_ZN19SoldierAIController10updateStepEf+0xe28>
  3e05a8:      	vdiv.f64	d7, d6, d7
  3e05ac:      	vcvt.f32.f64	s16, d7
  3e05b0:      	bl	0x3dd95c <_ZN4Slug11getVelocityEv+0x130> @ imm = #-0x2c58
  3e05b4:      	mov	r3, r0
  3e05b6:      	vmov	s15, r3
  3e05ba:      	vcvt.f32.s32	s14, s15
  3e05be:      	vldr	s15, [pc, #180]         @ 0x3e0674 <_ZN19SoldierAIController10updateStepEf+0xe34>
  3e05c2:      	vdiv.f32	s14, s14, s15
  3e05c6:      	vmov.f32	s15, #1.000000e+00
  3e05ca:      	vsub.f32	s15, s14, s15
  3e05ce:      	vcvt.f64.f32	d6, s15
  3e05d2:      	vmov.f64	d7, #2.500000e-01
  3e05d6:      	vmul.f64	d6, d6, d7
  3e05da:      	vmov.f64	d7, #7.500000e-01
  3e05de:      	vadd.f64	d7, d6, d7
  3e05e2:      	vcvt.f32.f64	s15, d7
  3e05e6:      	vstr	s16, [sp, #8]
  3e05ea:      	vstr	s15, [sp, #12]
  3e05ee:      	mov	r3, sp
  3e05f0:      	add.w	r2, r4, #0x30
  3e05f4:      	ldm.w	r2, {r0, r1}
  3e05f8:      	stm.w	r3, {r0, r1}
  3e05fc:      	add.w	r3, r4, #0x28
  3e0600:      	ldm	r3, {r2, r3}
  3e0602:      	mov	r0, r5
  3e0604:      	movs	r1, #0xa
  3e0606:      	bl	0x3f8044 <_ZN5Sound19playSoundPositionVPEi6cpVectff> @ imm = #0x17a3a
  3e060a:      	add	r3, sp, #0x24
  3e060c:      	ldr	r3, [r3]
  3e060e:      	vldr	s14, [r3, #280]
  3e0612:      	vmov.f32	s15, #-7.500000e-01
  3e0616:      	vcmpe.f32	s14, s15
  3e061a:      	vmrs	APSR_nzcv, fpscr
  3e061e:      	bmi	0x3e0622 <_ZN19SoldierAIController10updateStepEf+0xde2> @ imm = #0x0
  3e0620:      	b	0x3e06b0 <_ZN19SoldierAIController10updateStepEf+0xe70> @ imm = #0x8c
  3e0622:      	add	r3, sp, #0x24
  3e0624:      	ldr	r3, [r3]
  3e0626:      	ldrb.w	r3, [r3, #0xe6]
  3e062a:      	cmp	r3, #0x0
  3e062c:      	beq	0x3e0644 <_ZN19SoldierAIController10updateStepEf+0xe04> @ imm = #0x14
  3e062e:      	add	r3, sp, #0x24
  3e0630:      	ldr	r3, [r3]
  3e0632:      	movs	r2, #0x1
  3e0634:      	strb.w	r2, [r3, #0x15a]
  3e0638:      	add	r3, sp, #0x24
  3e063a:      	ldr	r3, [r3]
  3e063c:      	mov.w	r2, #0x0
  3e0640:      	str.w	r2, [r3, #0x15c]
  3e0644:      	b	0x3e06b0 <_ZN19SoldierAIController10updateStepEf+0xe70> @ imm = #0x68
// SoldierAIController::updateStep  ghidra=0x3f0690-0x3f08e9  elf=0x3e0690-0x3e08e9  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3e0690:      	add	r3, sp, #0x24
  3e0692:      	ldr	r4, [r3]
  3e0694:      	add	r3, sp, #0x10
  3e0696:      	mov	r0, r3
  3e0698:      	vldr	d0, [pc, #620]          @ 0x3e0908 <_ZN19SoldierAIController10updateStepEf+0x10c8>
  3e069c:      	vldr	d1, [pc, #624]          @ 0x3e0910 <_ZN19SoldierAIController10updateStepEf+0x10d0>
  3e06a0:      	bl	0x3dda68 <_ZN4Slug11getVelocityEv+0x23c> @ imm = #-0x2c3c
  3e06a4:      	add	r3, sp, #0x10
  3e06a6:      	add.w	r4, r4, #0x128
  3e06aa:      	ldm	r3, {r0, r1, r2, r3}
  3e06ac:      	stm.w	r4, {r0, r1, r2, r3}
  3e06b0:      	add	r3, sp, #0x24
  3e06b2:      	ldr	r3, [r3]
  3e06b4:      	vldr	s14, [r3, #348]
  3e06b8:      	add	r3, sp, #0x20
  3e06ba:      	vldr	s15, [r3]
  3e06be:      	vadd.f32	s15, s14, s15
  3e06c2:      	add	r3, sp, #0x24
  3e06c4:      	ldr	r3, [r3]
  3e06c6:      	vstr	s15, [r3, #348]
  3e06ca:      	add	r3, sp, #0x24
  3e06cc:      	ldr	r3, [r3]
  3e06ce:      	vldr	s15, [r3, #348]
  3e06d2:      	vcvt.f64.f32	d6, s15
  3e06d6:      	vldr	d7, [pc, #576]          @ 0x3e0918 <_ZN19SoldierAIController10updateStepEf+0x10d8>
  3e06da:      	vcmpe.f64	d6, d7
  3e06de:      	vmrs	APSR_nzcv, fpscr
  3e06e2:      	ble	0x3e06fa <_ZN19SoldierAIController10updateStepEf+0xeba> @ imm = #0x14
  3e06e4:      	add	r3, sp, #0x24
  3e06e6:      	ldr	r3, [r3]
  3e06e8:      	movs	r2, #0x0
  3e06ea:      	strb.w	r2, [r3, #0x15a]
  3e06ee:      	add	r3, sp, #0x24
  3e06f0:      	ldr	r3, [r3]
  3e06f2:      	mov.w	r2, #0x0
  3e06f6:      	str.w	r2, [r3, #0x15c]
  3e06fa:      	add	r3, sp, #0x24
  3e06fc:      	ldr	r3, [r3]
  3e06fe:      	ldr.w	r2, [r3, #0xfc]
  3e0702:      	add	r3, sp, #0x24
  3e0704:      	ldr	r3, [r3]
  3e0706:      	ldr.w	r3, [r3, #0x148]
  3e070a:      	cmp	r3, #0x0
  3e070c:      	ite	eq
  3e070e:      	moveq	r3, #0x0
  3e0710:      	movne	r3, #0x1
  3e0712:      	uxtb	r3, r3
  3e0714:      	mov	r0, r2
  3e0716:      	mov	r1, r3
  3e0718:      	bl	0x3deb5c <_ZN11SoldierView12setHasWeaponEb> @ imm = #-0x1bc0
  3e071c:      	add	r3, sp, #0x24
  3e071e:      	ldr	r3, [r3]
  3e0720:      	ldr.w	r4, [r3, #0xfc]
  3e0724:      	add	r3, sp, #0x24
  3e0726:      	ldr	r3, [r3]
  3e0728:      	ldr.w	r3, [r3, #0x138]
  3e072c:      	vldr	d7, [r3, #40]
  3e0730:      	vcvt.f32.f64	s13, d7
  3e0734:      	add	r3, sp, #0x24
  3e0736:      	ldr	r3, [r3]
  3e0738:      	ldr.w	r3, [r3, #0x138]
  3e073c:      	vldr	d7, [r3, #48]
  3e0740:      	vcvt.f32.f64	s15, d7
  3e0744:      	add	r3, sp, #0x68
  3e0746:      	mov	r0, r3
  3e0748:      	vmov	r1, s13
  3e074c:      	vmov	r2, s15
  3e0750:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x1b259c
  3e0754:      	add	r3, sp, #0x24
  3e0756:      	ldr	r3, [r3]
  3e0758:      	ldr.w	r3, [r3, #0x138]
  3e075c:      	vldr	d7, [r3, #56]
  3e0760:      	vcvt.f32.f64	s13, d7
  3e0764:      	add	r3, sp, #0x24
  3e0766:      	ldr	r3, [r3]
  3e0768:      	ldr.w	r3, [r3, #0x138]
  3e076c:      	vldr	d7, [r3, #64]
  3e0770:      	vcvt.f32.f64	s15, d7
  3e0774:      	add	r3, sp, #0xa0
  3e0776:      	mov	r0, r3
  3e0778:      	vmov	r1, s13
  3e077c:      	vmov	r2, s15
  3e0780:      	bl	0x592cf0 <_ZN7cocos2d7CCPointC2Eff> @ imm = #0x1b256c
  3e0784:      	add	r3, sp, #0x24
  3e0786:      	ldr	r3, [r3]
  3e0788:      	ldr.w	r3, [r3, #0x138]
  3e078c:      	vldr	d7, [r3, #88]
  3e0790:      	vcvt.f32.f64	s16, d7
  3e0794:      	add	r3, sp, #0x24
  3e0796:      	ldr	r3, [r3]
  3e0798:      	ldr.w	r5, [r3, #0x110]
  3e079c:      	add	r3, sp, #0x24
  3e079e:      	ldr	r3, [r3]
  3e07a0:      	add.w	r3, r3, #0x114
  3e07a4:      	add	r2, sp, #0xb0
  3e07a6:      	mov	r0, r2
  3e07a8:      	mov	r1, r3
  3e07aa:      	bl	0x592d0c <_ZN7cocos2d7CCPointC2ERKS0_> @ imm = #0x1b255e
  3e07ae:      	add	r3, sp, #0x24
  3e07b0:      	ldr	r3, [r3]
  3e07b2:      	ldr.w	r0, [r3, #0x10c]
  3e07b6:      	add	r3, sp, #0x24
  3e07b8:      	ldr	r3, [r3]
  3e07ba:      	ldrb.w	r1, [r3, #0x15a]
  3e07be:      	add	r2, sp, #0x68
  3e07c0:      	add	r3, sp, #0xa0
  3e07c2:      	str	r5, [sp]
  3e07c4:      	add	r5, sp, #0xb0
  3e07c6:      	str	r5, [sp, #0x4]
  3e07c8:      	str	r0, [sp, #0x8]
  3e07ca:      	str	r1, [sp, #0xc]
  3e07cc:      	mov	r0, r4
  3e07ce:      	mov	r1, r2
  3e07d0:      	mov	r2, r3
  3e07d2:      	vmov	r3, s16
  3e07d6:      	bl	0x3f2908 <_ZN11SoldierView10updateBodyEN7cocos2d7CCPointES1_ffS1_fb> @ imm = #0x1212e
  3e07da:      	add	r3, sp, #0x24
  3e07dc:      	ldr	r3, [r3]
  3e07de:      	ldr.w	r2, [r3, #0xfc]
  3e07e2:      	add	r3, sp, #0x20
  3e07e4:      	mov	r0, r2
  3e07e6:      	ldr	r1, [r3]
  3e07e8:      	bl	0x3f2b80 <_ZN11SoldierView10updateStepEf> @ imm = #0x12394
  3e07ec:      	add	r3, sp, #0x24
  3e07ee:      	ldr	r3, [r3]
  3e07f0:      	ldr.w	r3, [r3, #0x148]
  3e07f4:      	cmp	r3, #0x0
  3e07f6:      	beq	0x3e084c <_ZN19SoldierAIController10updateStepEf+0x100c> @ imm = #0x52
  3e07f8:      	add	r3, sp, #0x24
  3e07fa:      	ldr	r3, [r3]
  3e07fc:      	ldr.w	r3, [r3, #0x148]
  3e0800:      	ldr	r3, [r3]
  3e0802:      	add.w	r3, r3, #0x304
  3e0806:      	ldr	r4, [r3]
  3e0808:      	add	r3, sp, #0x24
  3e080a:      	ldr	r3, [r3]
  3e080c:      	ldr.w	r5, [r3, #0x148]
  3e0810:      	add	r3, sp, #0x24
  3e0812:      	ldr	r3, [r3]
  3e0814:      	ldr	r3, [r3]
  3e0816:      	add.w	r3, r3, #0x23c
  3e081a:      	ldr	r3, [r3]
  3e081c:      	add	r2, sp, #0x24
  3e081e:      	ldr	r0, [r2]
  3e0820:      	blx	r3
  3e0822:      	mov	r3, r0
  3e0824:      	mov	r0, r5
  3e0826:      	mov	r1, r3
  3e0828:      	blx	r4
  3e082a:      	add	r3, sp, #0x24
  3e082c:      	ldr	r3, [r3]
  3e082e:      	ldr.w	r3, [r3, #0x148]
  3e0832:      	ldr	r3, [r3]
  3e0834:      	add.w	r3, r3, #0x1b4
  3e0838:      	ldr	r3, [r3]
  3e083a:      	add	r2, sp, #0x24
  3e083c:      	ldr	r2, [r2]
  3e083e:      	ldr.w	r2, [r2, #0x148]
  3e0842:      	mov	r1, r2
  3e0844:      	add	r2, sp, #0x20
  3e0846:      	mov	r0, r1
  3e0848:      	ldr	r1, [r2]
  3e084a:      	blx	r3
  3e084c:      	add	r3, sp, #0x24
  3e084e:      	ldr	r3, [r3]
  3e0850:      	ldr.w	r3, [r3, #0x150]
  3e0854:      	cmp	r3, #0x0
  3e0856:      	beq	0x3e08be <_ZN19SoldierAIController10updateStepEf+0x107e> @ imm = #0x64
  3e0858:      	add	r3, sp, #0x24
  3e085a:      	ldr	r3, [r3]
  3e085c:      	ldr.w	r3, [r3, #0x150]
  3e0860:      	ldr	r3, [r3]
  3e0862:      	add.w	r3, r3, #0x304
  3e0866:      	ldr	r4, [r3]
  3e0868:      	add	r3, sp, #0x24
  3e086a:      	ldr	r3, [r3]
  3e086c:      	ldr.w	r5, [r3, #0x150]
  3e0870:      	add	r3, sp, #0x24
  3e0872:      	ldr	r3, [r3]
  3e0874:      	ldr	r3, [r3]
  3e0876:      	add.w	r3, r3, #0x284
  3e087a:      	ldr	r3, [r3]
  3e087c:      	add	r2, sp, #0x24
  3e087e:      	ldr	r0, [r2]
  3e0880:      	blx	r3
  3e0882:      	mov	r3, r0
  3e0884:      	mov	r0, r5
  3e0886:      	mov	r1, r3
  3e0888:      	blx	r4
  3e088a:      	add	r3, sp, #0x24
  3e088c:      	ldr	r3, [r3]
  3e088e:      	ldr.w	r3, [r3, #0x150]
  3e0892:      	ldr	r3, [r3]
  3e0894:      	add.w	r3, r3, #0x1b4
  3e0898:      	ldr	r3, [r3]
  3e089a:      	add	r2, sp, #0x24
  3e089c:      	ldr	r2, [r2]
  3e089e:      	ldr.w	r2, [r2, #0x150]
  3e08a2:      	mov	r1, r2
  3e08a4:      	add	r2, sp, #0x20
  3e08a6:      	mov	r0, r1
  3e08a8:      	ldr	r1, [r2]
  3e08aa:      	blx	r3
  3e08ac:      	add	r3, sp, #0x24
  3e08ae:      	ldr	r3, [r3]
  3e08b0:      	ldr.w	r3, [r3, #0xfc]
  3e08b4:      	mov	r0, r3
  3e08b6:      	movs	r1, #0x1
  3e08b8:      	bl	0x3f4240 <_ZN11SoldierView25setDualWieldConfigurationEb> @ imm = #0x13984
  3e08bc:      	b	0x3e08ce <_ZN19SoldierAIController10updateStepEf+0x108e> @ imm = #0xe
  3e08be:      	add	r3, sp, #0x24
  3e08c0:      	ldr	r3, [r3]
  3e08c2:      	ldr.w	r3, [r3, #0xfc]
  3e08c6:      	mov	r0, r3
  3e08c8:      	movs	r1, #0x0
  3e08ca:      	bl	0x3f4240 <_ZN11SoldierView25setDualWieldConfigurationEb> @ imm = #0x13972
  3e08ce:      	add	r3, sp, #0x24
  3e08d0:      	ldr	r3, [r3]
  3e08d2:      	ldrb.w	r2, [r3, #0xe6]
  3e08d6:      	add	r3, sp, #0x24
  3e08d8:      	ldr	r3, [r3]
  3e08da:      	strb.w	r2, [r3, #0xe8]
  3e08de:      	add	r3, sp, #0x24
  3e08e0:      	ldr	r3, [r3]
  3e08e2:      	movs	r2, #0x0
  3e08e4:      	strb.w	r2, [r3, #0xe6]
  3e08e8:      	b	0x3e0900 <_ZN19SoldierAIController10updateStepEf+0x10c0> @ imm = #0x14
// SoldierAIController::updateStep  ghidra=0x3f0900-0x3f0907  elf=0x3e0900-0x3e0907  (Ghidra decompiler failed; ARM Thumb disassembly via llvm-objdump)
  3e0900:      	add	sp, #0x174
  3e0902:      	vpop	{d8}
  3e0906:      	pop	{r4, r5, r6, r7, pc}
