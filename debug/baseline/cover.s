
cover.elf:     file format elf32-littlearm


Disassembly of section .text:

080001c0 <__do_global_dtors_aux>:
 80001c0:	b510      	push	{r4, lr}
 80001c2:	4c05      	ldr	r4, [pc, #20]	; (80001d8 <__do_global_dtors_aux+0x18>)
 80001c4:	7823      	ldrb	r3, [r4, #0]
 80001c6:	b933      	cbnz	r3, 80001d6 <__do_global_dtors_aux+0x16>
 80001c8:	4b04      	ldr	r3, [pc, #16]	; (80001dc <__do_global_dtors_aux+0x1c>)
 80001ca:	b113      	cbz	r3, 80001d2 <__do_global_dtors_aux+0x12>
 80001cc:	4804      	ldr	r0, [pc, #16]	; (80001e0 <__do_global_dtors_aux+0x20>)
 80001ce:	f3af 8000 	nop.w
 80001d2:	2301      	movs	r3, #1
 80001d4:	7023      	strb	r3, [r4, #0]
 80001d6:	bd10      	pop	{r4, pc}
 80001d8:	200009c8 	.word	0x200009c8
 80001dc:	00000000 	.word	0x00000000
 80001e0:	08007054 	.word	0x08007054

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	200009cc 	.word	0x200009cc
 80001fc:	08007054 	.word	0x08007054

08000200 <__aeabi_uldivmod>:
 8000200:	b953      	cbnz	r3, 8000218 <__aeabi_uldivmod+0x18>
 8000202:	b94a      	cbnz	r2, 8000218 <__aeabi_uldivmod+0x18>
 8000204:	2900      	cmp	r1, #0
 8000206:	bf08      	it	eq
 8000208:	2800      	cmpeq	r0, #0
 800020a:	bf1c      	itt	ne
 800020c:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
 8000210:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8000214:	f000 b972 	b.w	80004fc <__aeabi_idiv0>
 8000218:	f1ad 0c08 	sub.w	ip, sp, #8
 800021c:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8000220:	f000 f806 	bl	8000230 <__udivmoddi4>
 8000224:	f8dd e004 	ldr.w	lr, [sp, #4]
 8000228:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800022c:	b004      	add	sp, #16
 800022e:	4770      	bx	lr

08000230 <__udivmoddi4>:
 8000230:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000234:	9e08      	ldr	r6, [sp, #32]
 8000236:	4604      	mov	r4, r0
 8000238:	4688      	mov	r8, r1
 800023a:	2b00      	cmp	r3, #0
 800023c:	d14b      	bne.n	80002d6 <__udivmoddi4+0xa6>
 800023e:	428a      	cmp	r2, r1
 8000240:	4615      	mov	r5, r2
 8000242:	d967      	bls.n	8000314 <__udivmoddi4+0xe4>
 8000244:	fab2 f282 	clz	r2, r2
 8000248:	b14a      	cbz	r2, 800025e <__udivmoddi4+0x2e>
 800024a:	f1c2 0720 	rsb	r7, r2, #32
 800024e:	fa01 f302 	lsl.w	r3, r1, r2
 8000252:	fa20 f707 	lsr.w	r7, r0, r7
 8000256:	4095      	lsls	r5, r2
 8000258:	ea47 0803 	orr.w	r8, r7, r3
 800025c:	4094      	lsls	r4, r2
 800025e:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000262:	0c23      	lsrs	r3, r4, #16
 8000264:	fbb8 f7fe 	udiv	r7, r8, lr
 8000268:	fa1f fc85 	uxth.w	ip, r5
 800026c:	fb0e 8817 	mls	r8, lr, r7, r8
 8000270:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
 8000274:	fb07 f10c 	mul.w	r1, r7, ip
 8000278:	4299      	cmp	r1, r3
 800027a:	d909      	bls.n	8000290 <__udivmoddi4+0x60>
 800027c:	18eb      	adds	r3, r5, r3
 800027e:	f107 30ff 	add.w	r0, r7, #4294967295	; 0xffffffff
 8000282:	f080 811b 	bcs.w	80004bc <__udivmoddi4+0x28c>
 8000286:	4299      	cmp	r1, r3
 8000288:	f240 8118 	bls.w	80004bc <__udivmoddi4+0x28c>
 800028c:	3f02      	subs	r7, #2
 800028e:	442b      	add	r3, r5
 8000290:	1a5b      	subs	r3, r3, r1
 8000292:	b2a4      	uxth	r4, r4
 8000294:	fbb3 f0fe 	udiv	r0, r3, lr
 8000298:	fb0e 3310 	mls	r3, lr, r0, r3
 800029c:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 80002a0:	fb00 fc0c 	mul.w	ip, r0, ip
 80002a4:	45a4      	cmp	ip, r4
 80002a6:	d909      	bls.n	80002bc <__udivmoddi4+0x8c>
 80002a8:	192c      	adds	r4, r5, r4
 80002aa:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 80002ae:	f080 8107 	bcs.w	80004c0 <__udivmoddi4+0x290>
 80002b2:	45a4      	cmp	ip, r4
 80002b4:	f240 8104 	bls.w	80004c0 <__udivmoddi4+0x290>
 80002b8:	3802      	subs	r0, #2
 80002ba:	442c      	add	r4, r5
 80002bc:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
 80002c0:	eba4 040c 	sub.w	r4, r4, ip
 80002c4:	2700      	movs	r7, #0
 80002c6:	b11e      	cbz	r6, 80002d0 <__udivmoddi4+0xa0>
 80002c8:	40d4      	lsrs	r4, r2
 80002ca:	2300      	movs	r3, #0
 80002cc:	e9c6 4300 	strd	r4, r3, [r6]
 80002d0:	4639      	mov	r1, r7
 80002d2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80002d6:	428b      	cmp	r3, r1
 80002d8:	d909      	bls.n	80002ee <__udivmoddi4+0xbe>
 80002da:	2e00      	cmp	r6, #0
 80002dc:	f000 80eb 	beq.w	80004b6 <__udivmoddi4+0x286>
 80002e0:	2700      	movs	r7, #0
 80002e2:	e9c6 0100 	strd	r0, r1, [r6]
 80002e6:	4638      	mov	r0, r7
 80002e8:	4639      	mov	r1, r7
 80002ea:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80002ee:	fab3 f783 	clz	r7, r3
 80002f2:	2f00      	cmp	r7, #0
 80002f4:	d147      	bne.n	8000386 <__udivmoddi4+0x156>
 80002f6:	428b      	cmp	r3, r1
 80002f8:	d302      	bcc.n	8000300 <__udivmoddi4+0xd0>
 80002fa:	4282      	cmp	r2, r0
 80002fc:	f200 80fa 	bhi.w	80004f4 <__udivmoddi4+0x2c4>
 8000300:	1a84      	subs	r4, r0, r2
 8000302:	eb61 0303 	sbc.w	r3, r1, r3
 8000306:	2001      	movs	r0, #1
 8000308:	4698      	mov	r8, r3
 800030a:	2e00      	cmp	r6, #0
 800030c:	d0e0      	beq.n	80002d0 <__udivmoddi4+0xa0>
 800030e:	e9c6 4800 	strd	r4, r8, [r6]
 8000312:	e7dd      	b.n	80002d0 <__udivmoddi4+0xa0>
 8000314:	b902      	cbnz	r2, 8000318 <__udivmoddi4+0xe8>
 8000316:	deff      	udf	#255	; 0xff
 8000318:	fab2 f282 	clz	r2, r2
 800031c:	2a00      	cmp	r2, #0
 800031e:	f040 808f 	bne.w	8000440 <__udivmoddi4+0x210>
 8000322:	1b49      	subs	r1, r1, r5
 8000324:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000328:	fa1f f885 	uxth.w	r8, r5
 800032c:	2701      	movs	r7, #1
 800032e:	fbb1 fcfe 	udiv	ip, r1, lr
 8000332:	0c23      	lsrs	r3, r4, #16
 8000334:	fb0e 111c 	mls	r1, lr, ip, r1
 8000338:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 800033c:	fb08 f10c 	mul.w	r1, r8, ip
 8000340:	4299      	cmp	r1, r3
 8000342:	d907      	bls.n	8000354 <__udivmoddi4+0x124>
 8000344:	18eb      	adds	r3, r5, r3
 8000346:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
 800034a:	d202      	bcs.n	8000352 <__udivmoddi4+0x122>
 800034c:	4299      	cmp	r1, r3
 800034e:	f200 80cd 	bhi.w	80004ec <__udivmoddi4+0x2bc>
 8000352:	4684      	mov	ip, r0
 8000354:	1a59      	subs	r1, r3, r1
 8000356:	b2a3      	uxth	r3, r4
 8000358:	fbb1 f0fe 	udiv	r0, r1, lr
 800035c:	fb0e 1410 	mls	r4, lr, r0, r1
 8000360:	ea43 4404 	orr.w	r4, r3, r4, lsl #16
 8000364:	fb08 f800 	mul.w	r8, r8, r0
 8000368:	45a0      	cmp	r8, r4
 800036a:	d907      	bls.n	800037c <__udivmoddi4+0x14c>
 800036c:	192c      	adds	r4, r5, r4
 800036e:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000372:	d202      	bcs.n	800037a <__udivmoddi4+0x14a>
 8000374:	45a0      	cmp	r8, r4
 8000376:	f200 80b6 	bhi.w	80004e6 <__udivmoddi4+0x2b6>
 800037a:	4618      	mov	r0, r3
 800037c:	eba4 0408 	sub.w	r4, r4, r8
 8000380:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
 8000384:	e79f      	b.n	80002c6 <__udivmoddi4+0x96>
 8000386:	f1c7 0c20 	rsb	ip, r7, #32
 800038a:	40bb      	lsls	r3, r7
 800038c:	fa22 fe0c 	lsr.w	lr, r2, ip
 8000390:	ea4e 0e03 	orr.w	lr, lr, r3
 8000394:	fa01 f407 	lsl.w	r4, r1, r7
 8000398:	fa20 f50c 	lsr.w	r5, r0, ip
 800039c:	fa21 f30c 	lsr.w	r3, r1, ip
 80003a0:	ea4f 481e 	mov.w	r8, lr, lsr #16
 80003a4:	4325      	orrs	r5, r4
 80003a6:	fbb3 f9f8 	udiv	r9, r3, r8
 80003aa:	0c2c      	lsrs	r4, r5, #16
 80003ac:	fb08 3319 	mls	r3, r8, r9, r3
 80003b0:	fa1f fa8e 	uxth.w	sl, lr
 80003b4:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
 80003b8:	fb09 f40a 	mul.w	r4, r9, sl
 80003bc:	429c      	cmp	r4, r3
 80003be:	fa02 f207 	lsl.w	r2, r2, r7
 80003c2:	fa00 f107 	lsl.w	r1, r0, r7
 80003c6:	d90b      	bls.n	80003e0 <__udivmoddi4+0x1b0>
 80003c8:	eb1e 0303 	adds.w	r3, lr, r3
 80003cc:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
 80003d0:	f080 8087 	bcs.w	80004e2 <__udivmoddi4+0x2b2>
 80003d4:	429c      	cmp	r4, r3
 80003d6:	f240 8084 	bls.w	80004e2 <__udivmoddi4+0x2b2>
 80003da:	f1a9 0902 	sub.w	r9, r9, #2
 80003de:	4473      	add	r3, lr
 80003e0:	1b1b      	subs	r3, r3, r4
 80003e2:	b2ad      	uxth	r5, r5
 80003e4:	fbb3 f0f8 	udiv	r0, r3, r8
 80003e8:	fb08 3310 	mls	r3, r8, r0, r3
 80003ec:	ea45 4403 	orr.w	r4, r5, r3, lsl #16
 80003f0:	fb00 fa0a 	mul.w	sl, r0, sl
 80003f4:	45a2      	cmp	sl, r4
 80003f6:	d908      	bls.n	800040a <__udivmoddi4+0x1da>
 80003f8:	eb1e 0404 	adds.w	r4, lr, r4
 80003fc:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000400:	d26b      	bcs.n	80004da <__udivmoddi4+0x2aa>
 8000402:	45a2      	cmp	sl, r4
 8000404:	d969      	bls.n	80004da <__udivmoddi4+0x2aa>
 8000406:	3802      	subs	r0, #2
 8000408:	4474      	add	r4, lr
 800040a:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
 800040e:	fba0 8902 	umull	r8, r9, r0, r2
 8000412:	eba4 040a 	sub.w	r4, r4, sl
 8000416:	454c      	cmp	r4, r9
 8000418:	46c2      	mov	sl, r8
 800041a:	464b      	mov	r3, r9
 800041c:	d354      	bcc.n	80004c8 <__udivmoddi4+0x298>
 800041e:	d051      	beq.n	80004c4 <__udivmoddi4+0x294>
 8000420:	2e00      	cmp	r6, #0
 8000422:	d069      	beq.n	80004f8 <__udivmoddi4+0x2c8>
 8000424:	ebb1 050a 	subs.w	r5, r1, sl
 8000428:	eb64 0403 	sbc.w	r4, r4, r3
 800042c:	fa04 fc0c 	lsl.w	ip, r4, ip
 8000430:	40fd      	lsrs	r5, r7
 8000432:	40fc      	lsrs	r4, r7
 8000434:	ea4c 0505 	orr.w	r5, ip, r5
 8000438:	e9c6 5400 	strd	r5, r4, [r6]
 800043c:	2700      	movs	r7, #0
 800043e:	e747      	b.n	80002d0 <__udivmoddi4+0xa0>
 8000440:	f1c2 0320 	rsb	r3, r2, #32
 8000444:	fa20 f703 	lsr.w	r7, r0, r3
 8000448:	4095      	lsls	r5, r2
 800044a:	fa01 f002 	lsl.w	r0, r1, r2
 800044e:	fa21 f303 	lsr.w	r3, r1, r3
 8000452:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8000456:	4338      	orrs	r0, r7
 8000458:	0c01      	lsrs	r1, r0, #16
 800045a:	fbb3 f7fe 	udiv	r7, r3, lr
 800045e:	fa1f f885 	uxth.w	r8, r5
 8000462:	fb0e 3317 	mls	r3, lr, r7, r3
 8000466:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 800046a:	fb07 f308 	mul.w	r3, r7, r8
 800046e:	428b      	cmp	r3, r1
 8000470:	fa04 f402 	lsl.w	r4, r4, r2
 8000474:	d907      	bls.n	8000486 <__udivmoddi4+0x256>
 8000476:	1869      	adds	r1, r5, r1
 8000478:	f107 3cff 	add.w	ip, r7, #4294967295	; 0xffffffff
 800047c:	d22f      	bcs.n	80004de <__udivmoddi4+0x2ae>
 800047e:	428b      	cmp	r3, r1
 8000480:	d92d      	bls.n	80004de <__udivmoddi4+0x2ae>
 8000482:	3f02      	subs	r7, #2
 8000484:	4429      	add	r1, r5
 8000486:	1acb      	subs	r3, r1, r3
 8000488:	b281      	uxth	r1, r0
 800048a:	fbb3 f0fe 	udiv	r0, r3, lr
 800048e:	fb0e 3310 	mls	r3, lr, r0, r3
 8000492:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8000496:	fb00 f308 	mul.w	r3, r0, r8
 800049a:	428b      	cmp	r3, r1
 800049c:	d907      	bls.n	80004ae <__udivmoddi4+0x27e>
 800049e:	1869      	adds	r1, r5, r1
 80004a0:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
 80004a4:	d217      	bcs.n	80004d6 <__udivmoddi4+0x2a6>
 80004a6:	428b      	cmp	r3, r1
 80004a8:	d915      	bls.n	80004d6 <__udivmoddi4+0x2a6>
 80004aa:	3802      	subs	r0, #2
 80004ac:	4429      	add	r1, r5
 80004ae:	1ac9      	subs	r1, r1, r3
 80004b0:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
 80004b4:	e73b      	b.n	800032e <__udivmoddi4+0xfe>
 80004b6:	4637      	mov	r7, r6
 80004b8:	4630      	mov	r0, r6
 80004ba:	e709      	b.n	80002d0 <__udivmoddi4+0xa0>
 80004bc:	4607      	mov	r7, r0
 80004be:	e6e7      	b.n	8000290 <__udivmoddi4+0x60>
 80004c0:	4618      	mov	r0, r3
 80004c2:	e6fb      	b.n	80002bc <__udivmoddi4+0x8c>
 80004c4:	4541      	cmp	r1, r8
 80004c6:	d2ab      	bcs.n	8000420 <__udivmoddi4+0x1f0>
 80004c8:	ebb8 0a02 	subs.w	sl, r8, r2
 80004cc:	eb69 020e 	sbc.w	r2, r9, lr
 80004d0:	3801      	subs	r0, #1
 80004d2:	4613      	mov	r3, r2
 80004d4:	e7a4      	b.n	8000420 <__udivmoddi4+0x1f0>
 80004d6:	4660      	mov	r0, ip
 80004d8:	e7e9      	b.n	80004ae <__udivmoddi4+0x27e>
 80004da:	4618      	mov	r0, r3
 80004dc:	e795      	b.n	800040a <__udivmoddi4+0x1da>
 80004de:	4667      	mov	r7, ip
 80004e0:	e7d1      	b.n	8000486 <__udivmoddi4+0x256>
 80004e2:	4681      	mov	r9, r0
 80004e4:	e77c      	b.n	80003e0 <__udivmoddi4+0x1b0>
 80004e6:	3802      	subs	r0, #2
 80004e8:	442c      	add	r4, r5
 80004ea:	e747      	b.n	800037c <__udivmoddi4+0x14c>
 80004ec:	f1ac 0c02 	sub.w	ip, ip, #2
 80004f0:	442b      	add	r3, r5
 80004f2:	e72f      	b.n	8000354 <__udivmoddi4+0x124>
 80004f4:	4638      	mov	r0, r7
 80004f6:	e708      	b.n	800030a <__udivmoddi4+0xda>
 80004f8:	4637      	mov	r7, r6
 80004fa:	e6e9      	b.n	80002d0 <__udivmoddi4+0xa0>

080004fc <__aeabi_idiv0>:
 80004fc:	4770      	bx	lr
 80004fe:	bf00      	nop

08000500 <memcpy>:
 8000500:	4684      	mov	ip, r0
 8000502:	ea41 0300 	orr.w	r3, r1, r0
 8000506:	f013 0303 	ands.w	r3, r3, #3
 800050a:	d16d      	bne.n	80005e8 <memcpy+0xe8>
 800050c:	3a40      	subs	r2, #64	; 0x40
 800050e:	d341      	bcc.n	8000594 <memcpy+0x94>
 8000510:	f851 3b04 	ldr.w	r3, [r1], #4
 8000514:	f840 3b04 	str.w	r3, [r0], #4
 8000518:	f851 3b04 	ldr.w	r3, [r1], #4
 800051c:	f840 3b04 	str.w	r3, [r0], #4
 8000520:	f851 3b04 	ldr.w	r3, [r1], #4
 8000524:	f840 3b04 	str.w	r3, [r0], #4
 8000528:	f851 3b04 	ldr.w	r3, [r1], #4
 800052c:	f840 3b04 	str.w	r3, [r0], #4
 8000530:	f851 3b04 	ldr.w	r3, [r1], #4
 8000534:	f840 3b04 	str.w	r3, [r0], #4
 8000538:	f851 3b04 	ldr.w	r3, [r1], #4
 800053c:	f840 3b04 	str.w	r3, [r0], #4
 8000540:	f851 3b04 	ldr.w	r3, [r1], #4
 8000544:	f840 3b04 	str.w	r3, [r0], #4
 8000548:	f851 3b04 	ldr.w	r3, [r1], #4
 800054c:	f840 3b04 	str.w	r3, [r0], #4
 8000550:	f851 3b04 	ldr.w	r3, [r1], #4
 8000554:	f840 3b04 	str.w	r3, [r0], #4
 8000558:	f851 3b04 	ldr.w	r3, [r1], #4
 800055c:	f840 3b04 	str.w	r3, [r0], #4
 8000560:	f851 3b04 	ldr.w	r3, [r1], #4
 8000564:	f840 3b04 	str.w	r3, [r0], #4
 8000568:	f851 3b04 	ldr.w	r3, [r1], #4
 800056c:	f840 3b04 	str.w	r3, [r0], #4
 8000570:	f851 3b04 	ldr.w	r3, [r1], #4
 8000574:	f840 3b04 	str.w	r3, [r0], #4
 8000578:	f851 3b04 	ldr.w	r3, [r1], #4
 800057c:	f840 3b04 	str.w	r3, [r0], #4
 8000580:	f851 3b04 	ldr.w	r3, [r1], #4
 8000584:	f840 3b04 	str.w	r3, [r0], #4
 8000588:	f851 3b04 	ldr.w	r3, [r1], #4
 800058c:	f840 3b04 	str.w	r3, [r0], #4
 8000590:	3a40      	subs	r2, #64	; 0x40
 8000592:	d2bd      	bcs.n	8000510 <memcpy+0x10>
 8000594:	3230      	adds	r2, #48	; 0x30
 8000596:	d311      	bcc.n	80005bc <memcpy+0xbc>
 8000598:	f851 3b04 	ldr.w	r3, [r1], #4
 800059c:	f840 3b04 	str.w	r3, [r0], #4
 80005a0:	f851 3b04 	ldr.w	r3, [r1], #4
 80005a4:	f840 3b04 	str.w	r3, [r0], #4
 80005a8:	f851 3b04 	ldr.w	r3, [r1], #4
 80005ac:	f840 3b04 	str.w	r3, [r0], #4
 80005b0:	f851 3b04 	ldr.w	r3, [r1], #4
 80005b4:	f840 3b04 	str.w	r3, [r0], #4
 80005b8:	3a10      	subs	r2, #16
 80005ba:	d2ed      	bcs.n	8000598 <memcpy+0x98>
 80005bc:	320c      	adds	r2, #12
 80005be:	d305      	bcc.n	80005cc <memcpy+0xcc>
 80005c0:	f851 3b04 	ldr.w	r3, [r1], #4
 80005c4:	f840 3b04 	str.w	r3, [r0], #4
 80005c8:	3a04      	subs	r2, #4
 80005ca:	d2f9      	bcs.n	80005c0 <memcpy+0xc0>
 80005cc:	3204      	adds	r2, #4
 80005ce:	d008      	beq.n	80005e2 <memcpy+0xe2>
 80005d0:	07d2      	lsls	r2, r2, #31
 80005d2:	bf1c      	itt	ne
 80005d4:	f811 3b01 	ldrbne.w	r3, [r1], #1
 80005d8:	f800 3b01 	strbne.w	r3, [r0], #1
 80005dc:	d301      	bcc.n	80005e2 <memcpy+0xe2>
 80005de:	880b      	ldrh	r3, [r1, #0]
 80005e0:	8003      	strh	r3, [r0, #0]
 80005e2:	4660      	mov	r0, ip
 80005e4:	4770      	bx	lr
 80005e6:	bf00      	nop
 80005e8:	2a08      	cmp	r2, #8
 80005ea:	d313      	bcc.n	8000614 <memcpy+0x114>
 80005ec:	078b      	lsls	r3, r1, #30
 80005ee:	d08d      	beq.n	800050c <memcpy+0xc>
 80005f0:	f010 0303 	ands.w	r3, r0, #3
 80005f4:	d08a      	beq.n	800050c <memcpy+0xc>
 80005f6:	f1c3 0304 	rsb	r3, r3, #4
 80005fa:	1ad2      	subs	r2, r2, r3
 80005fc:	07db      	lsls	r3, r3, #31
 80005fe:	bf1c      	itt	ne
 8000600:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000604:	f800 3b01 	strbne.w	r3, [r0], #1
 8000608:	d380      	bcc.n	800050c <memcpy+0xc>
 800060a:	f831 3b02 	ldrh.w	r3, [r1], #2
 800060e:	f820 3b02 	strh.w	r3, [r0], #2
 8000612:	e77b      	b.n	800050c <memcpy+0xc>
 8000614:	3a04      	subs	r2, #4
 8000616:	d3d9      	bcc.n	80005cc <memcpy+0xcc>
 8000618:	3a01      	subs	r2, #1
 800061a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800061e:	f800 3b01 	strb.w	r3, [r0], #1
 8000622:	d2f9      	bcs.n	8000618 <memcpy+0x118>
 8000624:	780b      	ldrb	r3, [r1, #0]
 8000626:	7003      	strb	r3, [r0, #0]
 8000628:	784b      	ldrb	r3, [r1, #1]
 800062a:	7043      	strb	r3, [r0, #1]
 800062c:	788b      	ldrb	r3, [r1, #2]
 800062e:	7083      	strb	r3, [r0, #2]
 8000630:	4660      	mov	r0, ip
 8000632:	4770      	bx	lr
	...

08000640 <strlen>:
 8000640:	f890 f000 	pld	[r0]
 8000644:	e96d 4502 	strd	r4, r5, [sp, #-8]!
 8000648:	f020 0107 	bic.w	r1, r0, #7
 800064c:	f06f 0c00 	mvn.w	ip, #0
 8000650:	f010 0407 	ands.w	r4, r0, #7
 8000654:	f891 f020 	pld	[r1, #32]
 8000658:	f040 8049 	bne.w	80006ee <strlen+0xae>
 800065c:	f04f 0400 	mov.w	r4, #0
 8000660:	f06f 0007 	mvn.w	r0, #7
 8000664:	e9d1 2300 	ldrd	r2, r3, [r1]
 8000668:	f891 f040 	pld	[r1, #64]	; 0x40
 800066c:	f100 0008 	add.w	r0, r0, #8
 8000670:	fa82 f24c 	uadd8	r2, r2, ip
 8000674:	faa4 f28c 	sel	r2, r4, ip
 8000678:	fa83 f34c 	uadd8	r3, r3, ip
 800067c:	faa2 f38c 	sel	r3, r2, ip
 8000680:	bb4b      	cbnz	r3, 80006d6 <strlen+0x96>
 8000682:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
 8000686:	fa82 f24c 	uadd8	r2, r2, ip
 800068a:	f100 0008 	add.w	r0, r0, #8
 800068e:	faa4 f28c 	sel	r2, r4, ip
 8000692:	fa83 f34c 	uadd8	r3, r3, ip
 8000696:	faa2 f38c 	sel	r3, r2, ip
 800069a:	b9e3      	cbnz	r3, 80006d6 <strlen+0x96>
 800069c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
 80006a0:	fa82 f24c 	uadd8	r2, r2, ip
 80006a4:	f100 0008 	add.w	r0, r0, #8
 80006a8:	faa4 f28c 	sel	r2, r4, ip
 80006ac:	fa83 f34c 	uadd8	r3, r3, ip
 80006b0:	faa2 f38c 	sel	r3, r2, ip
 80006b4:	b97b      	cbnz	r3, 80006d6 <strlen+0x96>
 80006b6:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
 80006ba:	f101 0120 	add.w	r1, r1, #32
 80006be:	fa82 f24c 	uadd8	r2, r2, ip
 80006c2:	f100 0008 	add.w	r0, r0, #8
 80006c6:	faa4 f28c 	sel	r2, r4, ip
 80006ca:	fa83 f34c 	uadd8	r3, r3, ip
 80006ce:	faa2 f38c 	sel	r3, r2, ip
 80006d2:	2b00      	cmp	r3, #0
 80006d4:	d0c6      	beq.n	8000664 <strlen+0x24>
 80006d6:	2a00      	cmp	r2, #0
 80006d8:	bf04      	itt	eq
 80006da:	3004      	addeq	r0, #4
 80006dc:	461a      	moveq	r2, r3
 80006de:	ba12      	rev	r2, r2
 80006e0:	fab2 f282 	clz	r2, r2
 80006e4:	e8fd 4502 	ldrd	r4, r5, [sp], #8
 80006e8:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 80006ec:	4770      	bx	lr
 80006ee:	e9d1 2300 	ldrd	r2, r3, [r1]
 80006f2:	f004 0503 	and.w	r5, r4, #3
 80006f6:	f1c4 0000 	rsb	r0, r4, #0
 80006fa:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 80006fe:	f014 0f04 	tst.w	r4, #4
 8000702:	f891 f040 	pld	[r1, #64]	; 0x40
 8000706:	fa0c f505 	lsl.w	r5, ip, r5
 800070a:	ea62 0205 	orn	r2, r2, r5
 800070e:	bf1c      	itt	ne
 8000710:	ea63 0305 	ornne	r3, r3, r5
 8000714:	4662      	movne	r2, ip
 8000716:	f04f 0400 	mov.w	r4, #0
 800071a:	e7a9      	b.n	8000670 <strlen+0x30>
 800071c:	0000      	movs	r0, r0
	...

08000720 <memchr>:
 8000720:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8000724:	2a10      	cmp	r2, #16
 8000726:	db2b      	blt.n	8000780 <memchr+0x60>
 8000728:	f010 0f07 	tst.w	r0, #7
 800072c:	d008      	beq.n	8000740 <memchr+0x20>
 800072e:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000732:	3a01      	subs	r2, #1
 8000734:	428b      	cmp	r3, r1
 8000736:	d02d      	beq.n	8000794 <memchr+0x74>
 8000738:	f010 0f07 	tst.w	r0, #7
 800073c:	b342      	cbz	r2, 8000790 <memchr+0x70>
 800073e:	d1f6      	bne.n	800072e <memchr+0xe>
 8000740:	b4f0      	push	{r4, r5, r6, r7}
 8000742:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8000746:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 800074a:	f022 0407 	bic.w	r4, r2, #7
 800074e:	f07f 0700 	mvns.w	r7, #0
 8000752:	2300      	movs	r3, #0
 8000754:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8000758:	3c08      	subs	r4, #8
 800075a:	ea85 0501 	eor.w	r5, r5, r1
 800075e:	ea86 0601 	eor.w	r6, r6, r1
 8000762:	fa85 f547 	uadd8	r5, r5, r7
 8000766:	faa3 f587 	sel	r5, r3, r7
 800076a:	fa86 f647 	uadd8	r6, r6, r7
 800076e:	faa5 f687 	sel	r6, r5, r7
 8000772:	b98e      	cbnz	r6, 8000798 <memchr+0x78>
 8000774:	d1ee      	bne.n	8000754 <memchr+0x34>
 8000776:	bcf0      	pop	{r4, r5, r6, r7}
 8000778:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 800077c:	f002 0207 	and.w	r2, r2, #7
 8000780:	b132      	cbz	r2, 8000790 <memchr+0x70>
 8000782:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000786:	3a01      	subs	r2, #1
 8000788:	ea83 0301 	eor.w	r3, r3, r1
 800078c:	b113      	cbz	r3, 8000794 <memchr+0x74>
 800078e:	d1f8      	bne.n	8000782 <memchr+0x62>
 8000790:	2000      	movs	r0, #0
 8000792:	4770      	bx	lr
 8000794:	3801      	subs	r0, #1
 8000796:	4770      	bx	lr
 8000798:	2d00      	cmp	r5, #0
 800079a:	bf06      	itte	eq
 800079c:	4635      	moveq	r5, r6
 800079e:	3803      	subeq	r0, #3
 80007a0:	3807      	subne	r0, #7
 80007a2:	f015 0f01 	tst.w	r5, #1
 80007a6:	d107      	bne.n	80007b8 <memchr+0x98>
 80007a8:	3001      	adds	r0, #1
 80007aa:	f415 7f80 	tst.w	r5, #256	; 0x100
 80007ae:	bf02      	ittt	eq
 80007b0:	3001      	addeq	r0, #1
 80007b2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
 80007b6:	3001      	addeq	r0, #1
 80007b8:	bcf0      	pop	{r4, r5, r6, r7}
 80007ba:	3801      	subs	r0, #1
 80007bc:	4770      	bx	lr
 80007be:	bf00      	nop

080007c0 <__aeabi_drsub>:
 80007c0:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 80007c4:	e002      	b.n	80007cc <__adddf3>
 80007c6:	bf00      	nop

080007c8 <__aeabi_dsub>:
 80007c8:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

080007cc <__adddf3>:
 80007cc:	b530      	push	{r4, r5, lr}
 80007ce:	ea4f 0441 	mov.w	r4, r1, lsl #1
 80007d2:	ea4f 0543 	mov.w	r5, r3, lsl #1
 80007d6:	ea94 0f05 	teq	r4, r5
 80007da:	bf08      	it	eq
 80007dc:	ea90 0f02 	teqeq	r0, r2
 80007e0:	bf1f      	itttt	ne
 80007e2:	ea54 0c00 	orrsne.w	ip, r4, r0
 80007e6:	ea55 0c02 	orrsne.w	ip, r5, r2
 80007ea:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 80007ee:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 80007f2:	f000 80e2 	beq.w	80009ba <__adddf3+0x1ee>
 80007f6:	ea4f 5454 	mov.w	r4, r4, lsr #21
 80007fa:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 80007fe:	bfb8      	it	lt
 8000800:	426d      	neglt	r5, r5
 8000802:	dd0c      	ble.n	800081e <__adddf3+0x52>
 8000804:	442c      	add	r4, r5
 8000806:	ea80 0202 	eor.w	r2, r0, r2
 800080a:	ea81 0303 	eor.w	r3, r1, r3
 800080e:	ea82 0000 	eor.w	r0, r2, r0
 8000812:	ea83 0101 	eor.w	r1, r3, r1
 8000816:	ea80 0202 	eor.w	r2, r0, r2
 800081a:	ea81 0303 	eor.w	r3, r1, r3
 800081e:	2d36      	cmp	r5, #54	; 0x36
 8000820:	bf88      	it	hi
 8000822:	bd30      	pophi	{r4, r5, pc}
 8000824:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8000828:	ea4f 3101 	mov.w	r1, r1, lsl #12
 800082c:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 8000830:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 8000834:	d002      	beq.n	800083c <__adddf3+0x70>
 8000836:	4240      	negs	r0, r0
 8000838:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 800083c:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 8000840:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8000844:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 8000848:	d002      	beq.n	8000850 <__adddf3+0x84>
 800084a:	4252      	negs	r2, r2
 800084c:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 8000850:	ea94 0f05 	teq	r4, r5
 8000854:	f000 80a7 	beq.w	80009a6 <__adddf3+0x1da>
 8000858:	f1a4 0401 	sub.w	r4, r4, #1
 800085c:	f1d5 0e20 	rsbs	lr, r5, #32
 8000860:	db0d      	blt.n	800087e <__adddf3+0xb2>
 8000862:	fa02 fc0e 	lsl.w	ip, r2, lr
 8000866:	fa22 f205 	lsr.w	r2, r2, r5
 800086a:	1880      	adds	r0, r0, r2
 800086c:	f141 0100 	adc.w	r1, r1, #0
 8000870:	fa03 f20e 	lsl.w	r2, r3, lr
 8000874:	1880      	adds	r0, r0, r2
 8000876:	fa43 f305 	asr.w	r3, r3, r5
 800087a:	4159      	adcs	r1, r3
 800087c:	e00e      	b.n	800089c <__adddf3+0xd0>
 800087e:	f1a5 0520 	sub.w	r5, r5, #32
 8000882:	f10e 0e20 	add.w	lr, lr, #32
 8000886:	2a01      	cmp	r2, #1
 8000888:	fa03 fc0e 	lsl.w	ip, r3, lr
 800088c:	bf28      	it	cs
 800088e:	f04c 0c02 	orrcs.w	ip, ip, #2
 8000892:	fa43 f305 	asr.w	r3, r3, r5
 8000896:	18c0      	adds	r0, r0, r3
 8000898:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 800089c:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 80008a0:	d507      	bpl.n	80008b2 <__adddf3+0xe6>
 80008a2:	f04f 0e00 	mov.w	lr, #0
 80008a6:	f1dc 0c00 	rsbs	ip, ip, #0
 80008aa:	eb7e 0000 	sbcs.w	r0, lr, r0
 80008ae:	eb6e 0101 	sbc.w	r1, lr, r1
 80008b2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80008b6:	d31b      	bcc.n	80008f0 <__adddf3+0x124>
 80008b8:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 80008bc:	d30c      	bcc.n	80008d8 <__adddf3+0x10c>
 80008be:	0849      	lsrs	r1, r1, #1
 80008c0:	ea5f 0030 	movs.w	r0, r0, rrx
 80008c4:	ea4f 0c3c 	mov.w	ip, ip, rrx
 80008c8:	f104 0401 	add.w	r4, r4, #1
 80008cc:	ea4f 5244 	mov.w	r2, r4, lsl #21
 80008d0:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 80008d4:	f080 809a 	bcs.w	8000a0c <__adddf3+0x240>
 80008d8:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 80008dc:	bf08      	it	eq
 80008de:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 80008e2:	f150 0000 	adcs.w	r0, r0, #0
 80008e6:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 80008ea:	ea41 0105 	orr.w	r1, r1, r5
 80008ee:	bd30      	pop	{r4, r5, pc}
 80008f0:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 80008f4:	4140      	adcs	r0, r0
 80008f6:	eb41 0101 	adc.w	r1, r1, r1
 80008fa:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 80008fe:	f1a4 0401 	sub.w	r4, r4, #1
 8000902:	d1e9      	bne.n	80008d8 <__adddf3+0x10c>
 8000904:	f091 0f00 	teq	r1, #0
 8000908:	bf04      	itt	eq
 800090a:	4601      	moveq	r1, r0
 800090c:	2000      	moveq	r0, #0
 800090e:	fab1 f381 	clz	r3, r1
 8000912:	bf08      	it	eq
 8000914:	3320      	addeq	r3, #32
 8000916:	f1a3 030b 	sub.w	r3, r3, #11
 800091a:	f1b3 0220 	subs.w	r2, r3, #32
 800091e:	da0c      	bge.n	800093a <__adddf3+0x16e>
 8000920:	320c      	adds	r2, #12
 8000922:	dd08      	ble.n	8000936 <__adddf3+0x16a>
 8000924:	f102 0c14 	add.w	ip, r2, #20
 8000928:	f1c2 020c 	rsb	r2, r2, #12
 800092c:	fa01 f00c 	lsl.w	r0, r1, ip
 8000930:	fa21 f102 	lsr.w	r1, r1, r2
 8000934:	e00c      	b.n	8000950 <__adddf3+0x184>
 8000936:	f102 0214 	add.w	r2, r2, #20
 800093a:	bfd8      	it	le
 800093c:	f1c2 0c20 	rsble	ip, r2, #32
 8000940:	fa01 f102 	lsl.w	r1, r1, r2
 8000944:	fa20 fc0c 	lsr.w	ip, r0, ip
 8000948:	bfdc      	itt	le
 800094a:	ea41 010c 	orrle.w	r1, r1, ip
 800094e:	4090      	lslle	r0, r2
 8000950:	1ae4      	subs	r4, r4, r3
 8000952:	bfa2      	ittt	ge
 8000954:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 8000958:	4329      	orrge	r1, r5
 800095a:	bd30      	popge	{r4, r5, pc}
 800095c:	ea6f 0404 	mvn.w	r4, r4
 8000960:	3c1f      	subs	r4, #31
 8000962:	da1c      	bge.n	800099e <__adddf3+0x1d2>
 8000964:	340c      	adds	r4, #12
 8000966:	dc0e      	bgt.n	8000986 <__adddf3+0x1ba>
 8000968:	f104 0414 	add.w	r4, r4, #20
 800096c:	f1c4 0220 	rsb	r2, r4, #32
 8000970:	fa20 f004 	lsr.w	r0, r0, r4
 8000974:	fa01 f302 	lsl.w	r3, r1, r2
 8000978:	ea40 0003 	orr.w	r0, r0, r3
 800097c:	fa21 f304 	lsr.w	r3, r1, r4
 8000980:	ea45 0103 	orr.w	r1, r5, r3
 8000984:	bd30      	pop	{r4, r5, pc}
 8000986:	f1c4 040c 	rsb	r4, r4, #12
 800098a:	f1c4 0220 	rsb	r2, r4, #32
 800098e:	fa20 f002 	lsr.w	r0, r0, r2
 8000992:	fa01 f304 	lsl.w	r3, r1, r4
 8000996:	ea40 0003 	orr.w	r0, r0, r3
 800099a:	4629      	mov	r1, r5
 800099c:	bd30      	pop	{r4, r5, pc}
 800099e:	fa21 f004 	lsr.w	r0, r1, r4
 80009a2:	4629      	mov	r1, r5
 80009a4:	bd30      	pop	{r4, r5, pc}
 80009a6:	f094 0f00 	teq	r4, #0
 80009aa:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 80009ae:	bf06      	itte	eq
 80009b0:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 80009b4:	3401      	addeq	r4, #1
 80009b6:	3d01      	subne	r5, #1
 80009b8:	e74e      	b.n	8000858 <__adddf3+0x8c>
 80009ba:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 80009be:	bf18      	it	ne
 80009c0:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 80009c4:	d029      	beq.n	8000a1a <__adddf3+0x24e>
 80009c6:	ea94 0f05 	teq	r4, r5
 80009ca:	bf08      	it	eq
 80009cc:	ea90 0f02 	teqeq	r0, r2
 80009d0:	d005      	beq.n	80009de <__adddf3+0x212>
 80009d2:	ea54 0c00 	orrs.w	ip, r4, r0
 80009d6:	bf04      	itt	eq
 80009d8:	4619      	moveq	r1, r3
 80009da:	4610      	moveq	r0, r2
 80009dc:	bd30      	pop	{r4, r5, pc}
 80009de:	ea91 0f03 	teq	r1, r3
 80009e2:	bf1e      	ittt	ne
 80009e4:	2100      	movne	r1, #0
 80009e6:	2000      	movne	r0, #0
 80009e8:	bd30      	popne	{r4, r5, pc}
 80009ea:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 80009ee:	d105      	bne.n	80009fc <__adddf3+0x230>
 80009f0:	0040      	lsls	r0, r0, #1
 80009f2:	4149      	adcs	r1, r1
 80009f4:	bf28      	it	cs
 80009f6:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 80009fa:	bd30      	pop	{r4, r5, pc}
 80009fc:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 8000a00:	bf3c      	itt	cc
 8000a02:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 8000a06:	bd30      	popcc	{r4, r5, pc}
 8000a08:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000a0c:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 8000a10:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8000a14:	f04f 0000 	mov.w	r0, #0
 8000a18:	bd30      	pop	{r4, r5, pc}
 8000a1a:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8000a1e:	bf1a      	itte	ne
 8000a20:	4619      	movne	r1, r3
 8000a22:	4610      	movne	r0, r2
 8000a24:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 8000a28:	bf1c      	itt	ne
 8000a2a:	460b      	movne	r3, r1
 8000a2c:	4602      	movne	r2, r0
 8000a2e:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8000a32:	bf06      	itte	eq
 8000a34:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 8000a38:	ea91 0f03 	teqeq	r1, r3
 8000a3c:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 8000a40:	bd30      	pop	{r4, r5, pc}
 8000a42:	bf00      	nop

08000a44 <__aeabi_ui2d>:
 8000a44:	f090 0f00 	teq	r0, #0
 8000a48:	bf04      	itt	eq
 8000a4a:	2100      	moveq	r1, #0
 8000a4c:	4770      	bxeq	lr
 8000a4e:	b530      	push	{r4, r5, lr}
 8000a50:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000a54:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000a58:	f04f 0500 	mov.w	r5, #0
 8000a5c:	f04f 0100 	mov.w	r1, #0
 8000a60:	e750      	b.n	8000904 <__adddf3+0x138>
 8000a62:	bf00      	nop

08000a64 <__aeabi_i2d>:
 8000a64:	f090 0f00 	teq	r0, #0
 8000a68:	bf04      	itt	eq
 8000a6a:	2100      	moveq	r1, #0
 8000a6c:	4770      	bxeq	lr
 8000a6e:	b530      	push	{r4, r5, lr}
 8000a70:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000a74:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000a78:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 8000a7c:	bf48      	it	mi
 8000a7e:	4240      	negmi	r0, r0
 8000a80:	f04f 0100 	mov.w	r1, #0
 8000a84:	e73e      	b.n	8000904 <__adddf3+0x138>
 8000a86:	bf00      	nop

08000a88 <__aeabi_f2d>:
 8000a88:	0042      	lsls	r2, r0, #1
 8000a8a:	ea4f 01e2 	mov.w	r1, r2, asr #3
 8000a8e:	ea4f 0131 	mov.w	r1, r1, rrx
 8000a92:	ea4f 7002 	mov.w	r0, r2, lsl #28
 8000a96:	bf1f      	itttt	ne
 8000a98:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 8000a9c:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 8000aa0:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 8000aa4:	4770      	bxne	lr
 8000aa6:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
 8000aaa:	bf08      	it	eq
 8000aac:	4770      	bxeq	lr
 8000aae:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
 8000ab2:	bf04      	itt	eq
 8000ab4:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
 8000ab8:	4770      	bxeq	lr
 8000aba:	b530      	push	{r4, r5, lr}
 8000abc:	f44f 7460 	mov.w	r4, #896	; 0x380
 8000ac0:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000ac4:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8000ac8:	e71c      	b.n	8000904 <__adddf3+0x138>
 8000aca:	bf00      	nop

08000acc <__aeabi_ul2d>:
 8000acc:	ea50 0201 	orrs.w	r2, r0, r1
 8000ad0:	bf08      	it	eq
 8000ad2:	4770      	bxeq	lr
 8000ad4:	b530      	push	{r4, r5, lr}
 8000ad6:	f04f 0500 	mov.w	r5, #0
 8000ada:	e00a      	b.n	8000af2 <__aeabi_l2d+0x16>

08000adc <__aeabi_l2d>:
 8000adc:	ea50 0201 	orrs.w	r2, r0, r1
 8000ae0:	bf08      	it	eq
 8000ae2:	4770      	bxeq	lr
 8000ae4:	b530      	push	{r4, r5, lr}
 8000ae6:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 8000aea:	d502      	bpl.n	8000af2 <__aeabi_l2d+0x16>
 8000aec:	4240      	negs	r0, r0
 8000aee:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8000af2:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000af6:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000afa:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 8000afe:	f43f aed8 	beq.w	80008b2 <__adddf3+0xe6>
 8000b02:	f04f 0203 	mov.w	r2, #3
 8000b06:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8000b0a:	bf18      	it	ne
 8000b0c:	3203      	addne	r2, #3
 8000b0e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8000b12:	bf18      	it	ne
 8000b14:	3203      	addne	r2, #3
 8000b16:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 8000b1a:	f1c2 0320 	rsb	r3, r2, #32
 8000b1e:	fa00 fc03 	lsl.w	ip, r0, r3
 8000b22:	fa20 f002 	lsr.w	r0, r0, r2
 8000b26:	fa01 fe03 	lsl.w	lr, r1, r3
 8000b2a:	ea40 000e 	orr.w	r0, r0, lr
 8000b2e:	fa21 f102 	lsr.w	r1, r1, r2
 8000b32:	4414      	add	r4, r2
 8000b34:	e6bd      	b.n	80008b2 <__adddf3+0xe6>
 8000b36:	bf00      	nop

08000b38 <__aeabi_dmul>:
 8000b38:	b570      	push	{r4, r5, r6, lr}
 8000b3a:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8000b3e:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8000b42:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8000b46:	bf1d      	ittte	ne
 8000b48:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8000b4c:	ea94 0f0c 	teqne	r4, ip
 8000b50:	ea95 0f0c 	teqne	r5, ip
 8000b54:	f000 f8de 	bleq	8000d14 <__aeabi_dmul+0x1dc>
 8000b58:	442c      	add	r4, r5
 8000b5a:	ea81 0603 	eor.w	r6, r1, r3
 8000b5e:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
 8000b62:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
 8000b66:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
 8000b6a:	bf18      	it	ne
 8000b6c:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
 8000b70:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000b74:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8000b78:	d038      	beq.n	8000bec <__aeabi_dmul+0xb4>
 8000b7a:	fba0 ce02 	umull	ip, lr, r0, r2
 8000b7e:	f04f 0500 	mov.w	r5, #0
 8000b82:	fbe1 e502 	umlal	lr, r5, r1, r2
 8000b86:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
 8000b8a:	fbe0 e503 	umlal	lr, r5, r0, r3
 8000b8e:	f04f 0600 	mov.w	r6, #0
 8000b92:	fbe1 5603 	umlal	r5, r6, r1, r3
 8000b96:	f09c 0f00 	teq	ip, #0
 8000b9a:	bf18      	it	ne
 8000b9c:	f04e 0e01 	orrne.w	lr, lr, #1
 8000ba0:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
 8000ba4:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 8000ba8:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
 8000bac:	d204      	bcs.n	8000bb8 <__aeabi_dmul+0x80>
 8000bae:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
 8000bb2:	416d      	adcs	r5, r5
 8000bb4:	eb46 0606 	adc.w	r6, r6, r6
 8000bb8:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
 8000bbc:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
 8000bc0:	ea4f 20c5 	mov.w	r0, r5, lsl #11
 8000bc4:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
 8000bc8:	ea4f 2ece 	mov.w	lr, lr, lsl #11
 8000bcc:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8000bd0:	bf88      	it	hi
 8000bd2:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8000bd6:	d81e      	bhi.n	8000c16 <__aeabi_dmul+0xde>
 8000bd8:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
 8000bdc:	bf08      	it	eq
 8000bde:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
 8000be2:	f150 0000 	adcs.w	r0, r0, #0
 8000be6:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000bea:	bd70      	pop	{r4, r5, r6, pc}
 8000bec:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
 8000bf0:	ea46 0101 	orr.w	r1, r6, r1
 8000bf4:	ea40 0002 	orr.w	r0, r0, r2
 8000bf8:	ea81 0103 	eor.w	r1, r1, r3
 8000bfc:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 8000c00:	bfc2      	ittt	gt
 8000c02:	ebd4 050c 	rsbsgt	r5, r4, ip
 8000c06:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8000c0a:	bd70      	popgt	{r4, r5, r6, pc}
 8000c0c:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000c10:	f04f 0e00 	mov.w	lr, #0
 8000c14:	3c01      	subs	r4, #1
 8000c16:	f300 80ab 	bgt.w	8000d70 <__aeabi_dmul+0x238>
 8000c1a:	f114 0f36 	cmn.w	r4, #54	; 0x36
 8000c1e:	bfde      	ittt	le
 8000c20:	2000      	movle	r0, #0
 8000c22:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
 8000c26:	bd70      	pople	{r4, r5, r6, pc}
 8000c28:	f1c4 0400 	rsb	r4, r4, #0
 8000c2c:	3c20      	subs	r4, #32
 8000c2e:	da35      	bge.n	8000c9c <__aeabi_dmul+0x164>
 8000c30:	340c      	adds	r4, #12
 8000c32:	dc1b      	bgt.n	8000c6c <__aeabi_dmul+0x134>
 8000c34:	f104 0414 	add.w	r4, r4, #20
 8000c38:	f1c4 0520 	rsb	r5, r4, #32
 8000c3c:	fa00 f305 	lsl.w	r3, r0, r5
 8000c40:	fa20 f004 	lsr.w	r0, r0, r4
 8000c44:	fa01 f205 	lsl.w	r2, r1, r5
 8000c48:	ea40 0002 	orr.w	r0, r0, r2
 8000c4c:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
 8000c50:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8000c54:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8000c58:	fa21 f604 	lsr.w	r6, r1, r4
 8000c5c:	eb42 0106 	adc.w	r1, r2, r6
 8000c60:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000c64:	bf08      	it	eq
 8000c66:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000c6a:	bd70      	pop	{r4, r5, r6, pc}
 8000c6c:	f1c4 040c 	rsb	r4, r4, #12
 8000c70:	f1c4 0520 	rsb	r5, r4, #32
 8000c74:	fa00 f304 	lsl.w	r3, r0, r4
 8000c78:	fa20 f005 	lsr.w	r0, r0, r5
 8000c7c:	fa01 f204 	lsl.w	r2, r1, r4
 8000c80:	ea40 0002 	orr.w	r0, r0, r2
 8000c84:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000c88:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8000c8c:	f141 0100 	adc.w	r1, r1, #0
 8000c90:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000c94:	bf08      	it	eq
 8000c96:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000c9a:	bd70      	pop	{r4, r5, r6, pc}
 8000c9c:	f1c4 0520 	rsb	r5, r4, #32
 8000ca0:	fa00 f205 	lsl.w	r2, r0, r5
 8000ca4:	ea4e 0e02 	orr.w	lr, lr, r2
 8000ca8:	fa20 f304 	lsr.w	r3, r0, r4
 8000cac:	fa01 f205 	lsl.w	r2, r1, r5
 8000cb0:	ea43 0302 	orr.w	r3, r3, r2
 8000cb4:	fa21 f004 	lsr.w	r0, r1, r4
 8000cb8:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000cbc:	fa21 f204 	lsr.w	r2, r1, r4
 8000cc0:	ea20 0002 	bic.w	r0, r0, r2
 8000cc4:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 8000cc8:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000ccc:	bf08      	it	eq
 8000cce:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000cd2:	bd70      	pop	{r4, r5, r6, pc}
 8000cd4:	f094 0f00 	teq	r4, #0
 8000cd8:	d10f      	bne.n	8000cfa <__aeabi_dmul+0x1c2>
 8000cda:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
 8000cde:	0040      	lsls	r0, r0, #1
 8000ce0:	eb41 0101 	adc.w	r1, r1, r1
 8000ce4:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000ce8:	bf08      	it	eq
 8000cea:	3c01      	subeq	r4, #1
 8000cec:	d0f7      	beq.n	8000cde <__aeabi_dmul+0x1a6>
 8000cee:	ea41 0106 	orr.w	r1, r1, r6
 8000cf2:	f095 0f00 	teq	r5, #0
 8000cf6:	bf18      	it	ne
 8000cf8:	4770      	bxne	lr
 8000cfa:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
 8000cfe:	0052      	lsls	r2, r2, #1
 8000d00:	eb43 0303 	adc.w	r3, r3, r3
 8000d04:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 8000d08:	bf08      	it	eq
 8000d0a:	3d01      	subeq	r5, #1
 8000d0c:	d0f7      	beq.n	8000cfe <__aeabi_dmul+0x1c6>
 8000d0e:	ea43 0306 	orr.w	r3, r3, r6
 8000d12:	4770      	bx	lr
 8000d14:	ea94 0f0c 	teq	r4, ip
 8000d18:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8000d1c:	bf18      	it	ne
 8000d1e:	ea95 0f0c 	teqne	r5, ip
 8000d22:	d00c      	beq.n	8000d3e <__aeabi_dmul+0x206>
 8000d24:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000d28:	bf18      	it	ne
 8000d2a:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000d2e:	d1d1      	bne.n	8000cd4 <__aeabi_dmul+0x19c>
 8000d30:	ea81 0103 	eor.w	r1, r1, r3
 8000d34:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000d38:	f04f 0000 	mov.w	r0, #0
 8000d3c:	bd70      	pop	{r4, r5, r6, pc}
 8000d3e:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000d42:	bf06      	itte	eq
 8000d44:	4610      	moveq	r0, r2
 8000d46:	4619      	moveq	r1, r3
 8000d48:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000d4c:	d019      	beq.n	8000d82 <__aeabi_dmul+0x24a>
 8000d4e:	ea94 0f0c 	teq	r4, ip
 8000d52:	d102      	bne.n	8000d5a <__aeabi_dmul+0x222>
 8000d54:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 8000d58:	d113      	bne.n	8000d82 <__aeabi_dmul+0x24a>
 8000d5a:	ea95 0f0c 	teq	r5, ip
 8000d5e:	d105      	bne.n	8000d6c <__aeabi_dmul+0x234>
 8000d60:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 8000d64:	bf1c      	itt	ne
 8000d66:	4610      	movne	r0, r2
 8000d68:	4619      	movne	r1, r3
 8000d6a:	d10a      	bne.n	8000d82 <__aeabi_dmul+0x24a>
 8000d6c:	ea81 0103 	eor.w	r1, r1, r3
 8000d70:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000d74:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8000d78:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8000d7c:	f04f 0000 	mov.w	r0, #0
 8000d80:	bd70      	pop	{r4, r5, r6, pc}
 8000d82:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8000d86:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
 8000d8a:	bd70      	pop	{r4, r5, r6, pc}

08000d8c <__aeabi_ddiv>:
 8000d8c:	b570      	push	{r4, r5, r6, lr}
 8000d8e:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8000d92:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8000d96:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8000d9a:	bf1d      	ittte	ne
 8000d9c:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8000da0:	ea94 0f0c 	teqne	r4, ip
 8000da4:	ea95 0f0c 	teqne	r5, ip
 8000da8:	f000 f8a7 	bleq	8000efa <__aeabi_ddiv+0x16e>
 8000dac:	eba4 0405 	sub.w	r4, r4, r5
 8000db0:	ea81 0e03 	eor.w	lr, r1, r3
 8000db4:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8000db8:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8000dbc:	f000 8088 	beq.w	8000ed0 <__aeabi_ddiv+0x144>
 8000dc0:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8000dc4:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
 8000dc8:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 8000dcc:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 8000dd0:	ea4f 2202 	mov.w	r2, r2, lsl #8
 8000dd4:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 8000dd8:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 8000ddc:	ea4f 2600 	mov.w	r6, r0, lsl #8
 8000de0:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
 8000de4:	429d      	cmp	r5, r3
 8000de6:	bf08      	it	eq
 8000de8:	4296      	cmpeq	r6, r2
 8000dea:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
 8000dee:	f504 7440 	add.w	r4, r4, #768	; 0x300
 8000df2:	d202      	bcs.n	8000dfa <__aeabi_ddiv+0x6e>
 8000df4:	085b      	lsrs	r3, r3, #1
 8000df6:	ea4f 0232 	mov.w	r2, r2, rrx
 8000dfa:	1ab6      	subs	r6, r6, r2
 8000dfc:	eb65 0503 	sbc.w	r5, r5, r3
 8000e00:	085b      	lsrs	r3, r3, #1
 8000e02:	ea4f 0232 	mov.w	r2, r2, rrx
 8000e06:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 8000e0a:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
 8000e0e:	ebb6 0e02 	subs.w	lr, r6, r2
 8000e12:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000e16:	bf22      	ittt	cs
 8000e18:	1ab6      	subcs	r6, r6, r2
 8000e1a:	4675      	movcs	r5, lr
 8000e1c:	ea40 000c 	orrcs.w	r0, r0, ip
 8000e20:	085b      	lsrs	r3, r3, #1
 8000e22:	ea4f 0232 	mov.w	r2, r2, rrx
 8000e26:	ebb6 0e02 	subs.w	lr, r6, r2
 8000e2a:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000e2e:	bf22      	ittt	cs
 8000e30:	1ab6      	subcs	r6, r6, r2
 8000e32:	4675      	movcs	r5, lr
 8000e34:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 8000e38:	085b      	lsrs	r3, r3, #1
 8000e3a:	ea4f 0232 	mov.w	r2, r2, rrx
 8000e3e:	ebb6 0e02 	subs.w	lr, r6, r2
 8000e42:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000e46:	bf22      	ittt	cs
 8000e48:	1ab6      	subcs	r6, r6, r2
 8000e4a:	4675      	movcs	r5, lr
 8000e4c:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 8000e50:	085b      	lsrs	r3, r3, #1
 8000e52:	ea4f 0232 	mov.w	r2, r2, rrx
 8000e56:	ebb6 0e02 	subs.w	lr, r6, r2
 8000e5a:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000e5e:	bf22      	ittt	cs
 8000e60:	1ab6      	subcs	r6, r6, r2
 8000e62:	4675      	movcs	r5, lr
 8000e64:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 8000e68:	ea55 0e06 	orrs.w	lr, r5, r6
 8000e6c:	d018      	beq.n	8000ea0 <__aeabi_ddiv+0x114>
 8000e6e:	ea4f 1505 	mov.w	r5, r5, lsl #4
 8000e72:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 8000e76:	ea4f 1606 	mov.w	r6, r6, lsl #4
 8000e7a:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 8000e7e:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 8000e82:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 8000e86:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 8000e8a:	d1c0      	bne.n	8000e0e <__aeabi_ddiv+0x82>
 8000e8c:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000e90:	d10b      	bne.n	8000eaa <__aeabi_ddiv+0x11e>
 8000e92:	ea41 0100 	orr.w	r1, r1, r0
 8000e96:	f04f 0000 	mov.w	r0, #0
 8000e9a:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 8000e9e:	e7b6      	b.n	8000e0e <__aeabi_ddiv+0x82>
 8000ea0:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000ea4:	bf04      	itt	eq
 8000ea6:	4301      	orreq	r1, r0
 8000ea8:	2000      	moveq	r0, #0
 8000eaa:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8000eae:	bf88      	it	hi
 8000eb0:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8000eb4:	f63f aeaf 	bhi.w	8000c16 <__aeabi_dmul+0xde>
 8000eb8:	ebb5 0c03 	subs.w	ip, r5, r3
 8000ebc:	bf04      	itt	eq
 8000ebe:	ebb6 0c02 	subseq.w	ip, r6, r2
 8000ec2:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8000ec6:	f150 0000 	adcs.w	r0, r0, #0
 8000eca:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000ece:	bd70      	pop	{r4, r5, r6, pc}
 8000ed0:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
 8000ed4:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 8000ed8:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 8000edc:	bfc2      	ittt	gt
 8000ede:	ebd4 050c 	rsbsgt	r5, r4, ip
 8000ee2:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8000ee6:	bd70      	popgt	{r4, r5, r6, pc}
 8000ee8:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000eec:	f04f 0e00 	mov.w	lr, #0
 8000ef0:	3c01      	subs	r4, #1
 8000ef2:	e690      	b.n	8000c16 <__aeabi_dmul+0xde>
 8000ef4:	ea45 0e06 	orr.w	lr, r5, r6
 8000ef8:	e68d      	b.n	8000c16 <__aeabi_dmul+0xde>
 8000efa:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8000efe:	ea94 0f0c 	teq	r4, ip
 8000f02:	bf08      	it	eq
 8000f04:	ea95 0f0c 	teqeq	r5, ip
 8000f08:	f43f af3b 	beq.w	8000d82 <__aeabi_dmul+0x24a>
 8000f0c:	ea94 0f0c 	teq	r4, ip
 8000f10:	d10a      	bne.n	8000f28 <__aeabi_ddiv+0x19c>
 8000f12:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8000f16:	f47f af34 	bne.w	8000d82 <__aeabi_dmul+0x24a>
 8000f1a:	ea95 0f0c 	teq	r5, ip
 8000f1e:	f47f af25 	bne.w	8000d6c <__aeabi_dmul+0x234>
 8000f22:	4610      	mov	r0, r2
 8000f24:	4619      	mov	r1, r3
 8000f26:	e72c      	b.n	8000d82 <__aeabi_dmul+0x24a>
 8000f28:	ea95 0f0c 	teq	r5, ip
 8000f2c:	d106      	bne.n	8000f3c <__aeabi_ddiv+0x1b0>
 8000f2e:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8000f32:	f43f aefd 	beq.w	8000d30 <__aeabi_dmul+0x1f8>
 8000f36:	4610      	mov	r0, r2
 8000f38:	4619      	mov	r1, r3
 8000f3a:	e722      	b.n	8000d82 <__aeabi_dmul+0x24a>
 8000f3c:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000f40:	bf18      	it	ne
 8000f42:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000f46:	f47f aec5 	bne.w	8000cd4 <__aeabi_dmul+0x19c>
 8000f4a:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 8000f4e:	f47f af0d 	bne.w	8000d6c <__aeabi_dmul+0x234>
 8000f52:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 8000f56:	f47f aeeb 	bne.w	8000d30 <__aeabi_dmul+0x1f8>
 8000f5a:	e712      	b.n	8000d82 <__aeabi_dmul+0x24a>

08000f5c <__gedf2>:
 8000f5c:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
 8000f60:	e006      	b.n	8000f70 <__cmpdf2+0x4>
 8000f62:	bf00      	nop

08000f64 <__ledf2>:
 8000f64:	f04f 0c01 	mov.w	ip, #1
 8000f68:	e002      	b.n	8000f70 <__cmpdf2+0x4>
 8000f6a:	bf00      	nop

08000f6c <__cmpdf2>:
 8000f6c:	f04f 0c01 	mov.w	ip, #1
 8000f70:	f84d cd04 	str.w	ip, [sp, #-4]!
 8000f74:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8000f78:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000f7c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8000f80:	bf18      	it	ne
 8000f82:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 8000f86:	d01b      	beq.n	8000fc0 <__cmpdf2+0x54>
 8000f88:	b001      	add	sp, #4
 8000f8a:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 8000f8e:	bf0c      	ite	eq
 8000f90:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 8000f94:	ea91 0f03 	teqne	r1, r3
 8000f98:	bf02      	ittt	eq
 8000f9a:	ea90 0f02 	teqeq	r0, r2
 8000f9e:	2000      	moveq	r0, #0
 8000fa0:	4770      	bxeq	lr
 8000fa2:	f110 0f00 	cmn.w	r0, #0
 8000fa6:	ea91 0f03 	teq	r1, r3
 8000faa:	bf58      	it	pl
 8000fac:	4299      	cmppl	r1, r3
 8000fae:	bf08      	it	eq
 8000fb0:	4290      	cmpeq	r0, r2
 8000fb2:	bf2c      	ite	cs
 8000fb4:	17d8      	asrcs	r0, r3, #31
 8000fb6:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 8000fba:	f040 0001 	orr.w	r0, r0, #1
 8000fbe:	4770      	bx	lr
 8000fc0:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8000fc4:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000fc8:	d102      	bne.n	8000fd0 <__cmpdf2+0x64>
 8000fca:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8000fce:	d107      	bne.n	8000fe0 <__cmpdf2+0x74>
 8000fd0:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8000fd4:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000fd8:	d1d6      	bne.n	8000f88 <__cmpdf2+0x1c>
 8000fda:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8000fde:	d0d3      	beq.n	8000f88 <__cmpdf2+0x1c>
 8000fe0:	f85d 0b04 	ldr.w	r0, [sp], #4
 8000fe4:	4770      	bx	lr
 8000fe6:	bf00      	nop

08000fe8 <__aeabi_cdrcmple>:
 8000fe8:	4684      	mov	ip, r0
 8000fea:	4610      	mov	r0, r2
 8000fec:	4662      	mov	r2, ip
 8000fee:	468c      	mov	ip, r1
 8000ff0:	4619      	mov	r1, r3
 8000ff2:	4663      	mov	r3, ip
 8000ff4:	e000      	b.n	8000ff8 <__aeabi_cdcmpeq>
 8000ff6:	bf00      	nop

08000ff8 <__aeabi_cdcmpeq>:
 8000ff8:	b501      	push	{r0, lr}
 8000ffa:	f7ff ffb7 	bl	8000f6c <__cmpdf2>
 8000ffe:	2800      	cmp	r0, #0
 8001000:	bf48      	it	mi
 8001002:	f110 0f00 	cmnmi.w	r0, #0
 8001006:	bd01      	pop	{r0, pc}

08001008 <__aeabi_dcmpeq>:
 8001008:	f84d ed08 	str.w	lr, [sp, #-8]!
 800100c:	f7ff fff4 	bl	8000ff8 <__aeabi_cdcmpeq>
 8001010:	bf0c      	ite	eq
 8001012:	2001      	moveq	r0, #1
 8001014:	2000      	movne	r0, #0
 8001016:	f85d fb08 	ldr.w	pc, [sp], #8
 800101a:	bf00      	nop

0800101c <__aeabi_dcmplt>:
 800101c:	f84d ed08 	str.w	lr, [sp, #-8]!
 8001020:	f7ff ffea 	bl	8000ff8 <__aeabi_cdcmpeq>
 8001024:	bf34      	ite	cc
 8001026:	2001      	movcc	r0, #1
 8001028:	2000      	movcs	r0, #0
 800102a:	f85d fb08 	ldr.w	pc, [sp], #8
 800102e:	bf00      	nop

08001030 <__aeabi_dcmple>:
 8001030:	f84d ed08 	str.w	lr, [sp, #-8]!
 8001034:	f7ff ffe0 	bl	8000ff8 <__aeabi_cdcmpeq>
 8001038:	bf94      	ite	ls
 800103a:	2001      	movls	r0, #1
 800103c:	2000      	movhi	r0, #0
 800103e:	f85d fb08 	ldr.w	pc, [sp], #8
 8001042:	bf00      	nop

08001044 <__aeabi_dcmpge>:
 8001044:	f84d ed08 	str.w	lr, [sp, #-8]!
 8001048:	f7ff ffce 	bl	8000fe8 <__aeabi_cdrcmple>
 800104c:	bf94      	ite	ls
 800104e:	2001      	movls	r0, #1
 8001050:	2000      	movhi	r0, #0
 8001052:	f85d fb08 	ldr.w	pc, [sp], #8
 8001056:	bf00      	nop

08001058 <__aeabi_dcmpgt>:
 8001058:	f84d ed08 	str.w	lr, [sp, #-8]!
 800105c:	f7ff ffc4 	bl	8000fe8 <__aeabi_cdrcmple>
 8001060:	bf34      	ite	cc
 8001062:	2001      	movcc	r0, #1
 8001064:	2000      	movcs	r0, #0
 8001066:	f85d fb08 	ldr.w	pc, [sp], #8
 800106a:	bf00      	nop

0800106c <__aeabi_dcmpun>:
 800106c:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8001070:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001074:	d102      	bne.n	800107c <__aeabi_dcmpun+0x10>
 8001076:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 800107a:	d10a      	bne.n	8001092 <__aeabi_dcmpun+0x26>
 800107c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001080:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001084:	d102      	bne.n	800108c <__aeabi_dcmpun+0x20>
 8001086:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 800108a:	d102      	bne.n	8001092 <__aeabi_dcmpun+0x26>
 800108c:	f04f 0000 	mov.w	r0, #0
 8001090:	4770      	bx	lr
 8001092:	f04f 0001 	mov.w	r0, #1
 8001096:	4770      	bx	lr

08001098 <__aeabi_d2iz>:
 8001098:	ea4f 0241 	mov.w	r2, r1, lsl #1
 800109c:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 80010a0:	d215      	bcs.n	80010ce <__aeabi_d2iz+0x36>
 80010a2:	d511      	bpl.n	80010c8 <__aeabi_d2iz+0x30>
 80010a4:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 80010a8:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 80010ac:	d912      	bls.n	80010d4 <__aeabi_d2iz+0x3c>
 80010ae:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 80010b2:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 80010b6:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 80010ba:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 80010be:	fa23 f002 	lsr.w	r0, r3, r2
 80010c2:	bf18      	it	ne
 80010c4:	4240      	negne	r0, r0
 80010c6:	4770      	bx	lr
 80010c8:	f04f 0000 	mov.w	r0, #0
 80010cc:	4770      	bx	lr
 80010ce:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 80010d2:	d105      	bne.n	80010e0 <__aeabi_d2iz+0x48>
 80010d4:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 80010d8:	bf08      	it	eq
 80010da:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 80010de:	4770      	bx	lr
 80010e0:	f04f 0000 	mov.w	r0, #0
 80010e4:	4770      	bx	lr
 80010e6:	bf00      	nop

080010e8 <HAL_Init>:
 80010e8:	b580      	push	{r7, lr}
 80010ea:	466f      	mov	r7, sp
 80010ec:	2003      	movs	r0, #3
 80010ee:	f000 f81a 	bl	8001126 <HAL_NVIC_SetPriorityGrouping>
 80010f2:	200f      	movs	r0, #15
 80010f4:	f000 fbc1 	bl	800187a <HAL_InitTick>
 80010f8:	2800      	cmp	r0, #0
 80010fa:	bf1c      	itt	ne
 80010fc:	2001      	movne	r0, #1
 80010fe:	bd80      	popne	{r7, pc}
 8001100:	f000 f96b 	bl	80013da <HAL_MspInit>
 8001104:	2000      	movs	r0, #0
 8001106:	bd80      	pop	{r7, pc}

08001108 <HAL_IncTick>:
 8001108:	f640 20a0 	movw	r0, #2720	; 0xaa0
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	f840 1e00 	strt	r1, [r0]
 8001118:	4770      	bx	lr

0800111a <HAL_GetTick>:
 800111a:	f640 20a0 	movw	r0, #2720	; 0xaa0
 800111e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001122:	6800      	ldr	r0, [r0, #0]
 8001124:	4770      	bx	lr

08001126 <HAL_NVIC_SetPriorityGrouping>:
 8001126:	f64e 510c 	movw	r1, #60684	; 0xed0c
 800112a:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 800112e:	f2ce 0100 	movt	r1, #57344	; 0xe000
 8001132:	680a      	ldr	r2, [r1, #0]
 8001134:	401a      	ands	r2, r3
 8001136:	f360 220a 	bfi	r2, r0, #8, #3
 800113a:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 800113e:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 8001142:	6008      	str	r0, [r1, #0]
 8001144:	4770      	bx	lr

08001146 <HAL_NVIC_SetPriority>:
 8001146:	b580      	push	{r7, lr}
 8001148:	466f      	mov	r7, sp
 800114a:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 800114e:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 8001152:	2800      	cmp	r0, #0
 8001154:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 8001158:	f000 030f 	and.w	r3, r0, #15
 800115c:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 8001160:	f1a3 0304 	sub.w	r3, r3, #4
 8001164:	4473      	add	r3, lr
 8001166:	bfb8      	it	lt
 8001168:	f103 0c0c 	addlt.w	ip, r3, #12
 800116c:	f8de 0000 	ldr.w	r0, [lr]
 8001170:	f3c0 2002 	ubfx	r0, r0, #8, #3
 8001174:	f100 0e04 	add.w	lr, r0, #4
 8001178:	1ec3      	subs	r3, r0, #3
 800117a:	f080 0007 	eor.w	r0, r0, #7
 800117e:	f1be 0f07 	cmp.w	lr, #7
 8001182:	f04f 0e01 	mov.w	lr, #1
 8001186:	bf38      	it	cc
 8001188:	2300      	movcc	r3, #0
 800118a:	2804      	cmp	r0, #4
 800118c:	bf28      	it	cs
 800118e:	2004      	movcs	r0, #4
 8001190:	fa0e f000 	lsl.w	r0, lr, r0
 8001194:	3801      	subs	r0, #1
 8001196:	4008      	ands	r0, r1
 8001198:	fa0e f103 	lsl.w	r1, lr, r3
 800119c:	310f      	adds	r1, #15
 800119e:	4098      	lsls	r0, r3
 80011a0:	4011      	ands	r1, r2
 80011a2:	4308      	orrs	r0, r1
 80011a4:	0100      	lsls	r0, r0, #4
 80011a6:	f88c 0000 	strb.w	r0, [ip]
 80011aa:	bd80      	pop	{r7, pc}

080011ac <HAL_NVIC_EnableIRQ>:
 80011ac:	f000 011f 	and.w	r1, r0, #31
 80011b0:	2201      	movs	r2, #1
 80011b2:	0940      	lsrs	r0, r0, #5
 80011b4:	fa02 f101 	lsl.w	r1, r2, r1
 80011b8:	f24e 1200 	movw	r2, #57600	; 0xe100
 80011bc:	f2ce 0200 	movt	r2, #57344	; 0xe000
 80011c0:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 80011c4:	4770      	bx	lr

080011c6 <HAL_SYSTICK_IRQHandler>:
 80011c6:	f000 b800 	b.w	80011ca <HAL_SYSTICK_Callback>

080011ca <HAL_SYSTICK_Callback>:
 80011ca:	4770      	bx	lr

080011cc <HAL_GPIO_Init>:
 80011cc:	b085      	sub	sp, #20
 80011ce:	f84d 4e00 	strt	r4, [sp]
 80011d2:	f84d 5e04 	strt	r5, [sp, #4]
 80011d6:	f84d 6e08 	strt	r6, [sp, #8]
 80011da:	f84d 7e0c 	strt	r7, [sp, #12]
 80011de:	f84d ee10 	strt	lr, [sp, #16]
 80011e2:	af03      	add	r7, sp, #12
 80011e4:	b084      	sub	sp, #16
 80011e6:	f84d 8e00 	strt	r8, [sp]
 80011ea:	f84d 9e04 	strt	r9, [sp, #4]
 80011ee:	f84d ae08 	strt	sl, [sp, #8]
 80011f2:	f84d be0c 	strt	fp, [sp, #12]
 80011f6:	b082      	sub	sp, #8
 80011f8:	680e      	ldr	r6, [r1, #0]
 80011fa:	2e00      	cmp	r6, #0
 80011fc:	f000 80e9 	beq.w	80013d2 <HAL_GPIO_Init+0x206>
 8001200:	f641 0200 	movw	r2, #6144	; 0x1800
 8001204:	2507      	movs	r5, #7
 8001206:	f04f 0801 	mov.w	r8, #1
 800120a:	f6c4 0200 	movt	r2, #18432	; 0x4800
 800120e:	4290      	cmp	r0, r2
 8001210:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 8001214:	ea4f 23b2 	mov.w	r3, r2, ror #10
 8001218:	bf08      	it	eq
 800121a:	2506      	moveq	r5, #6
 800121c:	2b06      	cmp	r3, #6
 800121e:	bf38      	it	cc
 8001220:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 8001224:	2200      	movs	r2, #0
 8001226:	f84d 5e00 	strt	r5, [sp]
 800122a:	2500      	movs	r5, #0
 800122c:	f1a8 0a01 	sub.w	sl, r8, #1
 8001230:	2301      	movs	r3, #1
 8001232:	fa03 fb0a 	lsl.w	fp, r3, sl
 8001236:	ea16 090b 	ands.w	r9, r6, fp
 800123a:	f000 80c1 	beq.w	80013c0 <HAL_GPIO_Init+0x1f4>
 800123e:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001242:	f04e 0610 	orr.w	r6, lr, #16
 8001246:	2e12      	cmp	r6, #18
 8001248:	d116      	bne.n	8001278 <HAL_GPIO_Init+0xac>
 800124a:	f005 061c 	and.w	r6, r5, #28
 800124e:	230f      	movs	r3, #15
 8001250:	fa03 fc06 	lsl.w	ip, r3, r6
 8001254:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 8001258:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 800125c:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 8001260:	4404      	add	r4, r0
 8001262:	6a23      	ldr	r3, [r4, #32]
 8001264:	ea23 0c0c 	bic.w	ip, r3, ip
 8001268:	690b      	ldr	r3, [r1, #16]
 800126a:	40b3      	lsls	r3, r6
 800126c:	ea43 030c 	orr.w	r3, r3, ip
 8001270:	f844 3e20 	strt	r3, [r4, #32]
 8001274:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001278:	6806      	ldr	r6, [r0, #0]
 800127a:	2403      	movs	r4, #3
 800127c:	f00e 0c03 	and.w	ip, lr, #3
 8001280:	f1be 0f12 	cmp.w	lr, #18
 8001284:	fa04 f402 	lsl.w	r4, r4, r2
 8001288:	fa0c f302 	lsl.w	r3, ip, r2
 800128c:	ea26 0604 	bic.w	r6, r6, r4
 8001290:	ea43 0306 	orr.w	r3, r3, r6
 8001294:	ea6f 0604 	mvn.w	r6, r4
 8001298:	f840 3e00 	strt	r3, [r0]
 800129c:	d818      	bhi.n	80012d0 <HAL_GPIO_Init+0x104>
 800129e:	2301      	movs	r3, #1
 80012a0:	fa03 f30e 	lsl.w	r3, r3, lr
 80012a4:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 80012a8:	bf1f      	itttt	ne
 80012aa:	6883      	ldrne	r3, [r0, #8]
 80012ac:	4033      	andne	r3, r6
 80012ae:	68cc      	ldrne	r4, [r1, #12]
 80012b0:	4094      	lslne	r4, r2
 80012b2:	bf1f      	itttt	ne
 80012b4:	4323      	orrne	r3, r4
 80012b6:	f840 3e08 	strtne	r3, [r0, #8]
 80012ba:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 80012be:	fa03 f30a 	lslne.w	r3, r3, sl
 80012c2:	bf1f      	itttt	ne
 80012c4:	6844      	ldrne	r4, [r0, #4]
 80012c6:	ea24 040b 	bicne.w	r4, r4, fp
 80012ca:	4323      	orrne	r3, r4
 80012cc:	f840 3e04 	strtne	r3, [r0, #4]
 80012d0:	f1bc 0f03 	cmp.w	ip, #3
 80012d4:	d109      	bne.n	80012ea <HAL_GPIO_Init+0x11e>
 80012d6:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 80012da:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 80012dc:	fa03 f30a 	lsl.w	r3, r3, sl
 80012e0:	ea24 040b 	bic.w	r4, r4, fp
 80012e4:	4323      	orrs	r3, r4
 80012e6:	f840 3e2c 	strt	r3, [r0, #44]
 80012ea:	68c3      	ldr	r3, [r0, #12]
 80012ec:	4033      	ands	r3, r6
 80012ee:	688e      	ldr	r6, [r1, #8]
 80012f0:	4096      	lsls	r6, r2
 80012f2:	4333      	orrs	r3, r6
 80012f4:	f840 3e0c 	strt	r3, [r0, #12]
 80012f8:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 80012fc:	d560      	bpl.n	80013c0 <HAL_GPIO_Init+0x1f4>
 80012fe:	f241 0360 	movw	r3, #4192	; 0x1060
 8001302:	f005 040c 	and.w	r4, r5, #12
 8001306:	f2c4 0302 	movt	r3, #16386	; 0x4002
 800130a:	461e      	mov	r6, r3
 800130c:	6833      	ldr	r3, [r6, #0]
 800130e:	f043 0301 	orr.w	r3, r3, #1
 8001312:	f846 3e00 	strt	r3, [r6]
 8001316:	6833      	ldr	r3, [r6, #0]
 8001318:	f240 4600 	movw	r6, #1024	; 0x400
 800131c:	f2c4 0601 	movt	r6, #16385	; 0x4001
 8001320:	46b6      	mov	lr, r6
 8001322:	f003 0301 	and.w	r3, r3, #1
 8001326:	f84d 3e04 	strt	r3, [sp, #4]
 800132a:	f02a 0303 	bic.w	r3, sl, #3
 800132e:	9e01      	ldr	r6, [sp, #4]
 8001330:	4473      	add	r3, lr
 8001332:	f64f 4608 	movw	r6, #64520	; 0xfc08
 8001336:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 800133a:	46b2      	mov	sl, r6
 800133c:	260f      	movs	r6, #15
 800133e:	f853 c00a 	ldr.w	ip, [r3, sl]
 8001342:	40a6      	lsls	r6, r4
 8001344:	ea2c 0c06 	bic.w	ip, ip, r6
 8001348:	9e00      	ldr	r6, [sp, #0]
 800134a:	fa06 f404 	lsl.w	r4, r6, r4
 800134e:	ea4c 0604 	orr.w	r6, ip, r4
 8001352:	eb03 030a 	add.w	r3, r3, sl
 8001356:	f843 6e00 	strt	r6, [r3]
 800135a:	eba3 030a 	sub.w	r3, r3, sl
 800135e:	f8de 3000 	ldr.w	r3, [lr]
 8001362:	684e      	ldr	r6, [r1, #4]
 8001364:	ea23 0309 	bic.w	r3, r3, r9
 8001368:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 800136c:	bf18      	it	ne
 800136e:	ea43 0309 	orrne.w	r3, r3, r9
 8001372:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 8001376:	f84e 3e00 	strt	r3, [lr]
 800137a:	f8de 3004 	ldr.w	r3, [lr, #4]
 800137e:	ea23 0309 	bic.w	r3, r3, r9
 8001382:	bf18      	it	ne
 8001384:	ea43 0309 	orrne.w	r3, r3, r9
 8001388:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 800138c:	f84e 3e04 	strt	r3, [lr, #4]
 8001390:	f8de 3008 	ldr.w	r3, [lr, #8]
 8001394:	ea23 0309 	bic.w	r3, r3, r9
 8001398:	bf18      	it	ne
 800139a:	ea43 0309 	orrne.w	r3, r3, r9
 800139e:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 80013a2:	f84e 3e08 	strt	r3, [lr, #8]
 80013a6:	f240 430c 	movw	r3, #1036	; 0x40c
 80013aa:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80013ae:	461c      	mov	r4, r3
 80013b0:	6823      	ldr	r3, [r4, #0]
 80013b2:	ea23 0309 	bic.w	r3, r3, r9
 80013b6:	bf18      	it	ne
 80013b8:	ea43 0309 	orrne.w	r3, r3, r9
 80013bc:	f844 3e00 	strt	r3, [r4]
 80013c0:	680e      	ldr	r6, [r1, #0]
 80013c2:	3202      	adds	r2, #2
 80013c4:	3504      	adds	r5, #4
 80013c6:	fa36 f308 	lsrs.w	r3, r6, r8
 80013ca:	f108 0801 	add.w	r8, r8, #1
 80013ce:	f47f af2d 	bne.w	800122c <HAL_GPIO_Init+0x60>
 80013d2:	b002      	add	sp, #8
 80013d4:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80013d8:	bdf0      	pop	{r4, r5, r6, r7, pc}

080013da <HAL_MspInit>:
 80013da:	4770      	bx	lr

080013dc <HAL_RCC_GetSysClockFreq>:
 80013dc:	b082      	sub	sp, #8
 80013de:	f84d 7e00 	strt	r7, [sp]
 80013e2:	f84d ee04 	strt	lr, [sp, #4]
 80013e6:	466f      	mov	r7, sp
 80013e8:	f241 010c 	movw	r1, #4108	; 0x100c
 80013ec:	f241 2e00 	movw	lr, #4608	; 0x1200
 80013f0:	f242 4c00 	movw	ip, #9216	; 0x2400
 80013f4:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80013f8:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 80013fc:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 8001400:	f851 2c04 	ldr.w	r2, [r1, #-4]
 8001404:	6808      	ldr	r0, [r1, #0]
 8001406:	f012 030c 	ands.w	r3, r2, #12
 800140a:	d005      	beq.n	8001418 <HAL_RCC_GetSysClockFreq+0x3c>
 800140c:	2b0c      	cmp	r3, #12
 800140e:	bf04      	itt	eq
 8001410:	f000 0003 	andeq.w	r0, r0, #3
 8001414:	2801      	cmpeq	r0, #1
 8001416:	d118      	bne.n	800144a <HAL_RCC_GetSysClockFreq+0x6e>
 8001418:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 800141c:	f010 0f08 	tst.w	r0, #8
 8001420:	d103      	bne.n	800142a <HAL_RCC_GetSysClockFreq+0x4e>
 8001422:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 8001426:	0a00      	lsrs	r0, r0, #8
 8001428:	e002      	b.n	8001430 <HAL_RCC_GetSysClockFreq+0x54>
 800142a:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 800142e:	0900      	lsrs	r0, r0, #4
 8001430:	f247 0288 	movw	r2, #28808	; 0x7088
 8001434:	f000 000f 	and.w	r0, r0, #15
 8001438:	2b00      	cmp	r3, #0
 800143a:	f6c0 0200 	movt	r2, #2048	; 0x800
 800143e:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 8001442:	4610      	mov	r0, r2
 8001444:	bf18      	it	ne
 8001446:	2000      	movne	r0, #0
 8001448:	e00b      	b.n	8001462 <HAL_RCC_GetSysClockFreq+0x86>
 800144a:	f003 000f 	and.w	r0, r3, #15
 800144e:	2804      	cmp	r0, #4
 8001450:	bf04      	itt	eq
 8001452:	4660      	moveq	r0, ip
 8001454:	bd80      	popeq	{r7, pc}
 8001456:	2808      	cmp	r0, #8
 8001458:	bf04      	itt	eq
 800145a:	4670      	moveq	r0, lr
 800145c:	bd80      	popeq	{r7, pc}
 800145e:	2000      	movs	r0, #0
 8001460:	2200      	movs	r2, #0
 8001462:	2b0c      	cmp	r3, #12
 8001464:	bf18      	it	ne
 8001466:	bd80      	popne	{r7, pc}
 8001468:	6808      	ldr	r0, [r1, #0]
 800146a:	f000 0303 	and.w	r3, r0, #3
 800146e:	6808      	ldr	r0, [r1, #0]
 8001470:	2b03      	cmp	r3, #3
 8001472:	f3c0 1002 	ubfx	r0, r0, #4, #3
 8001476:	f100 0001 	add.w	r0, r0, #1
 800147a:	d003      	beq.n	8001484 <HAL_RCC_GetSysClockFreq+0xa8>
 800147c:	2b02      	cmp	r3, #2
 800147e:	46e6      	mov	lr, ip
 8001480:	bf18      	it	ne
 8001482:	4696      	movne	lr, r2
 8001484:	680a      	ldr	r2, [r1, #0]
 8001486:	fbbe f0f0 	udiv	r0, lr, r0
 800148a:	f3c2 2206 	ubfx	r2, r2, #8, #7
 800148e:	6809      	ldr	r1, [r1, #0]
 8001490:	4350      	muls	r0, r2
 8001492:	2202      	movs	r2, #2
 8001494:	f3c1 6141 	ubfx	r1, r1, #25, #2
 8001498:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 800149c:	fbb0 f0f1 	udiv	r0, r0, r1
 80014a0:	bd80      	pop	{r7, pc}

080014a2 <HAL_RCC_GetPCLK1Freq>:
 80014a2:	f240 0014 	movw	r0, #20
 80014a6:	f241 0108 	movw	r1, #4104	; 0x1008
 80014aa:	f247 0280 	movw	r2, #28800	; 0x7080
 80014ae:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80014b2:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80014b6:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014ba:	6800      	ldr	r0, [r0, #0]
 80014bc:	6809      	ldr	r1, [r1, #0]
 80014be:	f3c1 2102 	ubfx	r1, r1, #8, #3
 80014c2:	5c51      	ldrb	r1, [r2, r1]
 80014c4:	f001 011f 	and.w	r1, r1, #31
 80014c8:	40c8      	lsrs	r0, r1
 80014ca:	4770      	bx	lr

080014cc <HAL_RCC_GetPCLK2Freq>:
 80014cc:	f240 0014 	movw	r0, #20
 80014d0:	f241 0108 	movw	r1, #4104	; 0x1008
 80014d4:	f247 0280 	movw	r2, #28800	; 0x7080
 80014d8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80014dc:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80014e0:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014e4:	6800      	ldr	r0, [r0, #0]
 80014e6:	6809      	ldr	r1, [r1, #0]
 80014e8:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 80014ec:	5c51      	ldrb	r1, [r2, r1]
 80014ee:	f001 011f 	and.w	r1, r1, #31
 80014f2:	40c8      	lsrs	r0, r1
 80014f4:	4770      	bx	lr

080014f6 <HAL_RCC_GetClockConfig>:
 80014f6:	220f      	movs	r2, #15
 80014f8:	6002      	str	r2, [r0, #0]
 80014fa:	f241 0208 	movw	r2, #4104	; 0x1008
 80014fe:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8001502:	6813      	ldr	r3, [r2, #0]
 8001504:	f003 0303 	and.w	r3, r3, #3
 8001508:	6043      	str	r3, [r0, #4]
 800150a:	6813      	ldr	r3, [r2, #0]
 800150c:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8001510:	6083      	str	r3, [r0, #8]
 8001512:	6813      	ldr	r3, [r2, #0]
 8001514:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 8001518:	60c3      	str	r3, [r0, #12]
 800151a:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 800151e:	6812      	ldr	r2, [r2, #0]
 8001520:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 8001524:	6102      	str	r2, [r0, #16]
 8001526:	f242 0000 	movw	r0, #8192	; 0x2000
 800152a:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800152e:	6800      	ldr	r0, [r0, #0]
 8001530:	f000 0007 	and.w	r0, r0, #7
 8001534:	6008      	str	r0, [r1, #0]
 8001536:	4770      	bx	lr

08001538 <HAL_TIM_Base_Init>:
 8001538:	b5d0      	push	{r4, r6, r7, lr}
 800153a:	af02      	add	r7, sp, #8
 800153c:	4604      	mov	r4, r0
 800153e:	2c00      	cmp	r4, #0
 8001540:	bf04      	itt	eq
 8001542:	2001      	moveq	r0, #1
 8001544:	bdd0      	popeq	{r4, r6, r7, pc}
 8001546:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8001548:	b920      	cbnz	r0, 8001554 <HAL_TIM_Base_Init+0x1c>
 800154a:	2000      	movs	r0, #0
 800154c:	63e0      	str	r0, [r4, #60]	; 0x3c
 800154e:	4620      	mov	r0, r4
 8001550:	f000 f892 	bl	8001678 <HAL_TIM_Base_MspInit>
 8001554:	2002      	movs	r0, #2
 8001556:	f640 32ff 	movw	r2, #3071	; 0xbff
 800155a:	6420      	str	r0, [r4, #64]	; 0x40
 800155c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001560:	6820      	ldr	r0, [r4, #0]
 8001562:	6801      	ldr	r1, [r0, #0]
 8001564:	4290      	cmp	r0, r2
 8001566:	dc0f      	bgt.n	8001588 <HAL_TIM_Base_Init+0x50>
 8001568:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 800156c:	bf1e      	ittt	ne
 800156e:	f240 4200 	movwne	r2, #1024	; 0x400
 8001572:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 8001576:	4290      	cmpne	r0, r2
 8001578:	d018      	beq.n	80015ac <HAL_TIM_Base_Init+0x74>
 800157a:	f640 0200 	movw	r2, #2048	; 0x800
 800157e:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001582:	4290      	cmp	r0, r2
 8001584:	d012      	beq.n	80015ac <HAL_TIM_Base_Init+0x74>
 8001586:	e015      	b.n	80015b4 <HAL_TIM_Base_Init+0x7c>
 8001588:	f640 4200 	movw	r2, #3072	; 0xc00
 800158c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001590:	4290      	cmp	r0, r2
 8001592:	bf1e      	ittt	ne
 8001594:	f243 4200 	movwne	r2, #13312	; 0x3400
 8001598:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 800159c:	4290      	cmpne	r0, r2
 800159e:	d005      	beq.n	80015ac <HAL_TIM_Base_Init+0x74>
 80015a0:	f642 4200 	movw	r2, #11264	; 0x2c00
 80015a4:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015a8:	4290      	cmp	r0, r2
 80015aa:	d103      	bne.n	80015b4 <HAL_TIM_Base_Init+0x7c>
 80015ac:	68a2      	ldr	r2, [r4, #8]
 80015ae:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 80015b2:	4311      	orrs	r1, r2
 80015b4:	f642 32ff 	movw	r2, #11263	; 0x2bff
 80015b8:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015bc:	4290      	cmp	r0, r2
 80015be:	dd14      	ble.n	80015ea <HAL_TIM_Base_Init+0xb2>
 80015c0:	f643 72ff 	movw	r2, #16383	; 0x3fff
 80015c4:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015c8:	4290      	cmp	r0, r2
 80015ca:	dd1a      	ble.n	8001602 <HAL_TIM_Base_Init+0xca>
 80015cc:	f244 0200 	movw	r2, #16384	; 0x4000
 80015d0:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015d4:	4290      	cmp	r0, r2
 80015d6:	bf1e      	ittt	ne
 80015d8:	f644 0200 	movwne	r2, #18432	; 0x4800
 80015dc:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 80015e0:	4290      	cmpne	r0, r2
 80015e2:	d027      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 80015e4:	f244 4200 	movw	r2, #17408	; 0x4400
 80015e8:	e013      	b.n	8001612 <HAL_TIM_Base_Init+0xda>
 80015ea:	f240 72ff 	movw	r2, #2047	; 0x7ff
 80015ee:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015f2:	4290      	cmp	r0, r2
 80015f4:	dc12      	bgt.n	800161c <HAL_TIM_Base_Init+0xe4>
 80015f6:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80015fa:	d01b      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 80015fc:	f240 4200 	movw	r2, #1024	; 0x400
 8001600:	e014      	b.n	800162c <HAL_TIM_Base_Init+0xf4>
 8001602:	f642 4200 	movw	r2, #11264	; 0x2c00
 8001606:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800160a:	4290      	cmp	r0, r2
 800160c:	d012      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 800160e:	f243 4200 	movw	r2, #13312	; 0x3400
 8001612:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001616:	4290      	cmp	r0, r2
 8001618:	d00c      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 800161a:	e00f      	b.n	800163c <HAL_TIM_Base_Init+0x104>
 800161c:	f640 0200 	movw	r2, #2048	; 0x800
 8001620:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001624:	4290      	cmp	r0, r2
 8001626:	d005      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 8001628:	f640 4200 	movw	r2, #3072	; 0xc00
 800162c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001630:	4290      	cmp	r0, r2
 8001632:	d103      	bne.n	800163c <HAL_TIM_Base_Init+0x104>
 8001634:	6922      	ldr	r2, [r4, #16]
 8001636:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 800163a:	4311      	orrs	r1, r2
 800163c:	69a2      	ldr	r2, [r4, #24]
 800163e:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 8001642:	4311      	orrs	r1, r2
 8001644:	6001      	str	r1, [r0, #0]
 8001646:	68e1      	ldr	r1, [r4, #12]
 8001648:	62c1      	str	r1, [r0, #44]	; 0x2c
 800164a:	6861      	ldr	r1, [r4, #4]
 800164c:	6281      	str	r1, [r0, #40]	; 0x28
 800164e:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 8001652:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 8001656:	ea4f 21b1 	mov.w	r1, r1, ror #10
 800165a:	2907      	cmp	r1, #7
 800165c:	d807      	bhi.n	800166e <HAL_TIM_Base_Init+0x136>
 800165e:	2201      	movs	r2, #1
 8001660:	fa02 f101 	lsl.w	r1, r2, r1
 8001664:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 8001668:	bf1c      	itt	ne
 800166a:	6961      	ldrne	r1, [r4, #20]
 800166c:	6301      	strne	r1, [r0, #48]	; 0x30
 800166e:	2101      	movs	r1, #1
 8001670:	6141      	str	r1, [r0, #20]
 8001672:	2000      	movs	r0, #0
 8001674:	6421      	str	r1, [r4, #64]	; 0x40
 8001676:	bdd0      	pop	{r4, r6, r7, pc}

08001678 <HAL_TIM_Base_MspInit>:
 8001678:	4770      	bx	lr

0800167a <HAL_TIM_Base_Start_IT>:
 800167a:	6800      	ldr	r0, [r0, #0]
 800167c:	68c1      	ldr	r1, [r0, #12]
 800167e:	f041 0101 	orr.w	r1, r1, #1
 8001682:	60c1      	str	r1, [r0, #12]
 8001684:	2107      	movs	r1, #7
 8001686:	6882      	ldr	r2, [r0, #8]
 8001688:	f2c0 0101 	movt	r1, #1
 800168c:	400a      	ands	r2, r1
 800168e:	2a06      	cmp	r2, #6
 8001690:	d008      	beq.n	80016a4 <HAL_TIM_Base_Start_IT+0x2a>
 8001692:	6882      	ldr	r2, [r0, #8]
 8001694:	4011      	ands	r1, r2
 8001696:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 800169a:	bf1e      	ittt	ne
 800169c:	6801      	ldrne	r1, [r0, #0]
 800169e:	f041 0101 	orrne.w	r1, r1, #1
 80016a2:	6001      	strne	r1, [r0, #0]
 80016a4:	2000      	movs	r0, #0
 80016a6:	4770      	bx	lr

080016a8 <HAL_TIM_IRQHandler>:
 80016a8:	b084      	sub	sp, #16
 80016aa:	f84d 4e00 	strt	r4, [sp]
 80016ae:	f84d 6e04 	strt	r6, [sp, #4]
 80016b2:	f84d 7e08 	strt	r7, [sp, #8]
 80016b6:	f84d ee0c 	strt	lr, [sp, #12]
 80016ba:	af02      	add	r7, sp, #8
 80016bc:	4604      	mov	r4, r0
 80016be:	6820      	ldr	r0, [r4, #0]
 80016c0:	6901      	ldr	r1, [r0, #16]
 80016c2:	f011 0f02 	tst.w	r1, #2
 80016c6:	bf1c      	itt	ne
 80016c8:	68c1      	ldrne	r1, [r0, #12]
 80016ca:	f011 0f02 	tstne.w	r1, #2
 80016ce:	d018      	beq.n	8001702 <HAL_TIM_IRQHandler+0x5a>
 80016d0:	f06f 0102 	mvn.w	r1, #2
 80016d4:	f840 1e10 	strt	r1, [r0, #16]
 80016d8:	2101      	movs	r1, #1
 80016da:	f844 1e1c 	strt	r1, [r4, #28]
 80016de:	6980      	ldr	r0, [r0, #24]
 80016e0:	f010 0f03 	tst.w	r0, #3
 80016e4:	d003      	beq.n	80016ee <HAL_TIM_IRQHandler+0x46>
 80016e6:	4620      	mov	r0, r4
 80016e8:	f000 f8c0 	bl	800186c <HAL_TIM_IC_CaptureCallback>
 80016ec:	e005      	b.n	80016fa <HAL_TIM_IRQHandler+0x52>
 80016ee:	4620      	mov	r0, r4
 80016f0:	f000 f8bd 	bl	800186e <HAL_TIM_OC_DelayElapsedCallback>
 80016f4:	4620      	mov	r0, r4
 80016f6:	f000 f8bb 	bl	8001870 <HAL_TIM_PWM_PulseFinishedCallback>
 80016fa:	2000      	movs	r0, #0
 80016fc:	f844 0e1c 	strt	r0, [r4, #28]
 8001700:	6820      	ldr	r0, [r4, #0]
 8001702:	6901      	ldr	r1, [r0, #16]
 8001704:	f011 0f04 	tst.w	r1, #4
 8001708:	bf1c      	itt	ne
 800170a:	68c1      	ldrne	r1, [r0, #12]
 800170c:	f011 0f04 	tstne.w	r1, #4
 8001710:	d018      	beq.n	8001744 <HAL_TIM_IRQHandler+0x9c>
 8001712:	f06f 0104 	mvn.w	r1, #4
 8001716:	f840 1e10 	strt	r1, [r0, #16]
 800171a:	2102      	movs	r1, #2
 800171c:	f844 1e1c 	strt	r1, [r4, #28]
 8001720:	6980      	ldr	r0, [r0, #24]
 8001722:	f410 7f40 	tst.w	r0, #768	; 0x300
 8001726:	d003      	beq.n	8001730 <HAL_TIM_IRQHandler+0x88>
 8001728:	4620      	mov	r0, r4
 800172a:	f000 f89f 	bl	800186c <HAL_TIM_IC_CaptureCallback>
 800172e:	e005      	b.n	800173c <HAL_TIM_IRQHandler+0x94>
 8001730:	4620      	mov	r0, r4
 8001732:	f000 f89c 	bl	800186e <HAL_TIM_OC_DelayElapsedCallback>
 8001736:	4620      	mov	r0, r4
 8001738:	f000 f89a 	bl	8001870 <HAL_TIM_PWM_PulseFinishedCallback>
 800173c:	2000      	movs	r0, #0
 800173e:	f844 0e1c 	strt	r0, [r4, #28]
 8001742:	6820      	ldr	r0, [r4, #0]
 8001744:	6901      	ldr	r1, [r0, #16]
 8001746:	f011 0f08 	tst.w	r1, #8
 800174a:	bf1c      	itt	ne
 800174c:	68c1      	ldrne	r1, [r0, #12]
 800174e:	f011 0f08 	tstne.w	r1, #8
 8001752:	d018      	beq.n	8001786 <HAL_TIM_IRQHandler+0xde>
 8001754:	f06f 0108 	mvn.w	r1, #8
 8001758:	f840 1e10 	strt	r1, [r0, #16]
 800175c:	2104      	movs	r1, #4
 800175e:	f844 1e1c 	strt	r1, [r4, #28]
 8001762:	69c0      	ldr	r0, [r0, #28]
 8001764:	f010 0f03 	tst.w	r0, #3
 8001768:	d003      	beq.n	8001772 <HAL_TIM_IRQHandler+0xca>
 800176a:	4620      	mov	r0, r4
 800176c:	f000 f87e 	bl	800186c <HAL_TIM_IC_CaptureCallback>
 8001770:	e005      	b.n	800177e <HAL_TIM_IRQHandler+0xd6>
 8001772:	4620      	mov	r0, r4
 8001774:	f000 f87b 	bl	800186e <HAL_TIM_OC_DelayElapsedCallback>
 8001778:	4620      	mov	r0, r4
 800177a:	f000 f879 	bl	8001870 <HAL_TIM_PWM_PulseFinishedCallback>
 800177e:	2000      	movs	r0, #0
 8001780:	f844 0e1c 	strt	r0, [r4, #28]
 8001784:	6820      	ldr	r0, [r4, #0]
 8001786:	6901      	ldr	r1, [r0, #16]
 8001788:	f011 0f10 	tst.w	r1, #16
 800178c:	bf1c      	itt	ne
 800178e:	68c1      	ldrne	r1, [r0, #12]
 8001790:	f011 0f10 	tstne.w	r1, #16
 8001794:	d018      	beq.n	80017c8 <HAL_TIM_IRQHandler+0x120>
 8001796:	f06f 0110 	mvn.w	r1, #16
 800179a:	f840 1e10 	strt	r1, [r0, #16]
 800179e:	2108      	movs	r1, #8
 80017a0:	f844 1e1c 	strt	r1, [r4, #28]
 80017a4:	69c0      	ldr	r0, [r0, #28]
 80017a6:	f410 7f40 	tst.w	r0, #768	; 0x300
 80017aa:	d003      	beq.n	80017b4 <HAL_TIM_IRQHandler+0x10c>
 80017ac:	4620      	mov	r0, r4
 80017ae:	f000 f85d 	bl	800186c <HAL_TIM_IC_CaptureCallback>
 80017b2:	e005      	b.n	80017c0 <HAL_TIM_IRQHandler+0x118>
 80017b4:	4620      	mov	r0, r4
 80017b6:	f000 f85a 	bl	800186e <HAL_TIM_OC_DelayElapsedCallback>
 80017ba:	4620      	mov	r0, r4
 80017bc:	f000 f858 	bl	8001870 <HAL_TIM_PWM_PulseFinishedCallback>
 80017c0:	2000      	movs	r0, #0
 80017c2:	f844 0e1c 	strt	r0, [r4, #28]
 80017c6:	6820      	ldr	r0, [r4, #0]
 80017c8:	6901      	ldr	r1, [r0, #16]
 80017ca:	f011 0f01 	tst.w	r1, #1
 80017ce:	bf1c      	itt	ne
 80017d0:	68c1      	ldrne	r1, [r0, #12]
 80017d2:	f011 0f01 	tstne.w	r1, #1
 80017d6:	d007      	beq.n	80017e8 <HAL_TIM_IRQHandler+0x140>
 80017d8:	f06f 0101 	mvn.w	r1, #1
 80017dc:	f840 1e10 	strt	r1, [r0, #16]
 80017e0:	4620      	mov	r0, r4
 80017e2:	f000 f898 	bl	8001916 <HAL_TIM_PeriodElapsedCallback>
 80017e6:	6820      	ldr	r0, [r4, #0]
 80017e8:	6901      	ldr	r1, [r0, #16]
 80017ea:	f011 0f80 	tst.w	r1, #128	; 0x80
 80017ee:	bf1c      	itt	ne
 80017f0:	68c1      	ldrne	r1, [r0, #12]
 80017f2:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80017f6:	d007      	beq.n	8001808 <HAL_TIM_IRQHandler+0x160>
 80017f8:	f06f 0180 	mvn.w	r1, #128	; 0x80
 80017fc:	f840 1e10 	strt	r1, [r0, #16]
 8001800:	4620      	mov	r0, r4
 8001802:	f000 f838 	bl	8001876 <HAL_TIMEx_BreakCallback>
 8001806:	6820      	ldr	r0, [r4, #0]
 8001808:	6901      	ldr	r1, [r0, #16]
 800180a:	f411 7f80 	tst.w	r1, #256	; 0x100
 800180e:	bf1c      	itt	ne
 8001810:	68c1      	ldrne	r1, [r0, #12]
 8001812:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001816:	d007      	beq.n	8001828 <HAL_TIM_IRQHandler+0x180>
 8001818:	f46f 7180 	mvn.w	r1, #256	; 0x100
 800181c:	f840 1e10 	strt	r1, [r0, #16]
 8001820:	4620      	mov	r0, r4
 8001822:	f000 f829 	bl	8001878 <HAL_TIMEx_Break2Callback>
 8001826:	6820      	ldr	r0, [r4, #0]
 8001828:	6901      	ldr	r1, [r0, #16]
 800182a:	f011 0f40 	tst.w	r1, #64	; 0x40
 800182e:	bf1c      	itt	ne
 8001830:	68c1      	ldrne	r1, [r0, #12]
 8001832:	f011 0f40 	tstne.w	r1, #64	; 0x40
 8001836:	d007      	beq.n	8001848 <HAL_TIM_IRQHandler+0x1a0>
 8001838:	f06f 0140 	mvn.w	r1, #64	; 0x40
 800183c:	f840 1e10 	strt	r1, [r0, #16]
 8001840:	4620      	mov	r0, r4
 8001842:	f000 f816 	bl	8001872 <HAL_TIM_TriggerCallback>
 8001846:	6820      	ldr	r0, [r4, #0]
 8001848:	6901      	ldr	r1, [r0, #16]
 800184a:	f011 0f20 	tst.w	r1, #32
 800184e:	bf1c      	itt	ne
 8001850:	68c1      	ldrne	r1, [r0, #12]
 8001852:	f011 0f20 	tstne.w	r1, #32
 8001856:	d100      	bne.n	800185a <HAL_TIM_IRQHandler+0x1b2>
 8001858:	bdd0      	pop	{r4, r6, r7, pc}
 800185a:	f06f 0120 	mvn.w	r1, #32
 800185e:	f840 1e10 	strt	r1, [r0, #16]
 8001862:	4620      	mov	r0, r4
 8001864:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001868:	f000 b804 	b.w	8001874 <HAL_TIMEx_CommutationCallback>

0800186c <HAL_TIM_IC_CaptureCallback>:
 800186c:	4770      	bx	lr

0800186e <HAL_TIM_OC_DelayElapsedCallback>:
 800186e:	4770      	bx	lr

08001870 <HAL_TIM_PWM_PulseFinishedCallback>:
 8001870:	4770      	bx	lr

08001872 <HAL_TIM_TriggerCallback>:
 8001872:	4770      	bx	lr

08001874 <HAL_TIMEx_CommutationCallback>:
 8001874:	4770      	bx	lr

08001876 <HAL_TIMEx_BreakCallback>:
 8001876:	4770      	bx	lr

08001878 <HAL_TIMEx_Break2Callback>:
 8001878:	4770      	bx	lr

0800187a <HAL_InitTick>:
 800187a:	b5b0      	push	{r4, r5, r7, lr}
 800187c:	af02      	add	r7, sp, #8
 800187e:	b086      	sub	sp, #24
 8001880:	4601      	mov	r1, r0
 8001882:	2036      	movs	r0, #54	; 0x36
 8001884:	2200      	movs	r2, #0
 8001886:	2400      	movs	r4, #0
 8001888:	f7ff fc5d 	bl	8001146 <HAL_NVIC_SetPriority>
 800188c:	2036      	movs	r0, #54	; 0x36
 800188e:	f7ff fc8d 	bl	80011ac <HAL_NVIC_EnableIRQ>
 8001892:	f241 0058 	movw	r0, #4184	; 0x1058
 8001896:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800189a:	6801      	ldr	r1, [r0, #0]
 800189c:	f041 0110 	orr.w	r1, r1, #16
 80018a0:	6001      	str	r1, [r0, #0]
 80018a2:	4669      	mov	r1, sp
 80018a4:	6800      	ldr	r0, [r0, #0]
 80018a6:	f000 0010 	and.w	r0, r0, #16
 80018aa:	9001      	str	r0, [sp, #4]
 80018ac:	9801      	ldr	r0, [sp, #4]
 80018ae:	a801      	add	r0, sp, #4
 80018b0:	f7ff fe21 	bl	80014f6 <HAL_RCC_GetClockConfig>
 80018b4:	9d04      	ldr	r5, [sp, #16]
 80018b6:	f7ff fdf4 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 80018ba:	2d00      	cmp	r5, #0
 80018bc:	f640 21a4 	movw	r1, #2724	; 0xaa4
 80018c0:	f241 0200 	movw	r2, #4096	; 0x1000
 80018c4:	f240 33e7 	movw	r3, #999	; 0x3e7
 80018c8:	bf18      	it	ne
 80018ca:	2501      	movne	r5, #1
 80018cc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80018d0:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80018d4:	40a8      	lsls	r0, r5
 80018d6:	f64d 6583 	movw	r5, #56963	; 0xde83
 80018da:	618c      	str	r4, [r1, #24]
 80018dc:	f2c4 351b 	movt	r5, #17179	; 0x431b
 80018e0:	fba0 0505 	umull	r0, r5, r0, r5
 80018e4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80018e8:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 80018ec:	e9c1 2000 	strd	r2, r0, [r1]
 80018f0:	4608      	mov	r0, r1
 80018f2:	e9c1 4302 	strd	r4, r3, [r1, #8]
 80018f6:	610c      	str	r4, [r1, #16]
 80018f8:	f7ff fe1e 	bl	8001538 <HAL_TIM_Base_Init>
 80018fc:	2800      	cmp	r0, #0
 80018fe:	bf1e      	ittt	ne
 8001900:	2001      	movne	r0, #1
 8001902:	b006      	addne	sp, #24
 8001904:	bdb0      	popne	{r4, r5, r7, pc}
 8001906:	f640 20a4 	movw	r0, #2724	; 0xaa4
 800190a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800190e:	f7ff feb4 	bl	800167a <HAL_TIM_Base_Start_IT>
 8001912:	b006      	add	sp, #24
 8001914:	bdb0      	pop	{r4, r5, r7, pc}

08001916 <HAL_TIM_PeriodElapsedCallback>:
 8001916:	f7ff bbf7 	b.w	8001108 <HAL_IncTick>

0800191a <TIM6_DAC_IRQHandler>:
 800191a:	f640 20a4 	movw	r0, #2724	; 0xaa4
 800191e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001922:	f7ff bec1 	b.w	80016a8 <HAL_TIM_IRQHandler>

08001926 <HAL_UART_Init>:
 8001926:	b084      	sub	sp, #16
 8001928:	f84d 4e00 	strt	r4, [sp]
 800192c:	f84d 6e04 	strt	r6, [sp, #4]
 8001930:	f84d 7e08 	strt	r7, [sp, #8]
 8001934:	f84d ee0c 	strt	lr, [sp, #12]
 8001938:	af02      	add	r7, sp, #8
 800193a:	4604      	mov	r4, r0
 800193c:	b1ac      	cbz	r4, 800196a <HAL_UART_Init+0x44>
 800193e:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001940:	b928      	cbnz	r0, 800194e <HAL_UART_Init+0x28>
 8001942:	2000      	movs	r0, #0
 8001944:	f844 0e70 	strt	r0, [r4, #112]
 8001948:	4620      	mov	r0, r4
 800194a:	f000 f82b 	bl	80019a4 <HAL_UART_MspInit>
 800194e:	2024      	movs	r0, #36	; 0x24
 8001950:	f844 0e74 	strt	r0, [r4, #116]
 8001954:	6820      	ldr	r0, [r4, #0]
 8001956:	6801      	ldr	r1, [r0, #0]
 8001958:	f021 0101 	bic.w	r1, r1, #1
 800195c:	f840 1e00 	strt	r1, [r0]
 8001960:	4620      	mov	r0, r4
 8001962:	f000 f821 	bl	80019a8 <UART_SetConfig>
 8001966:	2801      	cmp	r0, #1
 8001968:	d101      	bne.n	800196e <HAL_UART_Init+0x48>
 800196a:	2001      	movs	r0, #1
 800196c:	bdd0      	pop	{r4, r6, r7, pc}
 800196e:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8001970:	2800      	cmp	r0, #0
 8001972:	bf1c      	itt	ne
 8001974:	4620      	movne	r0, r4
 8001976:	f000 f956 	blne	8001c26 <UART_AdvFeatureConfig>
 800197a:	6820      	ldr	r0, [r4, #0]
 800197c:	6841      	ldr	r1, [r0, #4]
 800197e:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 8001982:	f840 1e04 	strt	r1, [r0, #4]
 8001986:	6881      	ldr	r1, [r0, #8]
 8001988:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 800198c:	f840 1e08 	strt	r1, [r0, #8]
 8001990:	6801      	ldr	r1, [r0, #0]
 8001992:	f041 0101 	orr.w	r1, r1, #1
 8001996:	f840 1e00 	strt	r1, [r0]
 800199a:	4620      	mov	r0, r4
 800199c:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 80019a0:	f000 b9b7 	b.w	8001d12 <UART_CheckIdleState>

080019a4 <HAL_UART_MspInit>:
 80019a4:	4770      	bx	lr
	...

080019a8 <UART_SetConfig>:
 80019a8:	b084      	sub	sp, #16
 80019aa:	f84d 4e00 	strt	r4, [sp]
 80019ae:	f84d 5e04 	strt	r5, [sp, #4]
 80019b2:	f84d 7e08 	strt	r7, [sp, #8]
 80019b6:	f84d ee0c 	strt	lr, [sp, #12]
 80019ba:	af02      	add	r7, sp, #8
 80019bc:	4604      	mov	r4, r0
 80019be:	f646 15f3 	movw	r5, #27123	; 0x69f3
 80019c2:	f248 0e00 	movw	lr, #32768	; 0x8000
 80019c6:	f241 0c88 	movw	ip, #4232	; 0x1088
 80019ca:	6821      	ldr	r1, [r4, #0]
 80019cc:	68a0      	ldr	r0, [r4, #8]
 80019ce:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 80019d2:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 80019d6:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 80019da:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 80019de:	4310      	orrs	r0, r2
 80019e0:	69e2      	ldr	r2, [r4, #28]
 80019e2:	4571      	cmp	r1, lr
 80019e4:	ea40 0003 	orr.w	r0, r0, r3
 80019e8:	680b      	ldr	r3, [r1, #0]
 80019ea:	ea40 0002 	orr.w	r0, r0, r2
 80019ee:	ea03 0305 	and.w	r3, r3, r5
 80019f2:	f04f 0510 	mov.w	r5, #16
 80019f6:	ea40 0003 	orr.w	r0, r0, r3
 80019fa:	f841 0e00 	strt	r0, [r1]
 80019fe:	6848      	ldr	r0, [r1, #4]
 8001a00:	68e3      	ldr	r3, [r4, #12]
 8001a02:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001a06:	ea40 0003 	orr.w	r0, r0, r3
 8001a0a:	f841 0e04 	strt	r0, [r1, #4]
 8001a0e:	69a0      	ldr	r0, [r4, #24]
 8001a10:	bf1c      	itt	ne
 8001a12:	6a23      	ldrne	r3, [r4, #32]
 8001a14:	4318      	orrne	r0, r3
 8001a16:	688b      	ldr	r3, [r1, #8]
 8001a18:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001a1c:	4318      	orrs	r0, r3
 8001a1e:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001a22:	f841 0e08 	strt	r0, [r1, #8]
 8001a26:	f242 4000 	movw	r0, #9216	; 0x2400
 8001a2a:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a2e:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001a32:	4299      	cmp	r1, r3
 8001a34:	dc15      	bgt.n	8001a62 <UART_SetConfig+0xba>
 8001a36:	f244 4300 	movw	r3, #17408	; 0x4400
 8001a3a:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a3e:	4299      	cmp	r1, r3
 8001a40:	d024      	beq.n	8001a8c <UART_SetConfig+0xe4>
 8001a42:	f644 0300 	movw	r3, #18432	; 0x4800
 8001a46:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a4a:	4299      	cmp	r1, r3
 8001a4c:	d022      	beq.n	8001a94 <UART_SetConfig+0xec>
 8001a4e:	f644 4300 	movw	r3, #19456	; 0x4c00
 8001a52:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a56:	4299      	cmp	r1, r3
 8001a58:	d131      	bne.n	8001abe <UART_SetConfig+0x116>
 8001a5a:	f8dc 3000 	ldr.w	r3, [ip]
 8001a5e:	099d      	lsrs	r5, r3, #6
 8001a60:	e023      	b.n	8001aaa <UART_SetConfig+0x102>
 8001a62:	f245 0300 	movw	r3, #20480	; 0x5000
 8001a66:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a6a:	4299      	cmp	r1, r3
 8001a6c:	d016      	beq.n	8001a9c <UART_SetConfig+0xf4>
 8001a6e:	4571      	cmp	r1, lr
 8001a70:	d018      	beq.n	8001aa4 <UART_SetConfig+0xfc>
 8001a72:	f643 0300 	movw	r3, #14336	; 0x3800
 8001a76:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001a7a:	4299      	cmp	r1, r3
 8001a7c:	d11f      	bne.n	8001abe <UART_SetConfig+0x116>
 8001a7e:	f8dc 5000 	ldr.w	r5, [ip]
 8001a82:	f247 03b8 	movw	r3, #28856	; 0x70b8
 8001a86:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a8a:	e012      	b.n	8001ab2 <UART_SetConfig+0x10a>
 8001a8c:	f8dc 3000 	ldr.w	r3, [ip]
 8001a90:	089d      	lsrs	r5, r3, #2
 8001a92:	e00a      	b.n	8001aaa <UART_SetConfig+0x102>
 8001a94:	f8dc 3000 	ldr.w	r3, [ip]
 8001a98:	091d      	lsrs	r5, r3, #4
 8001a9a:	e006      	b.n	8001aaa <UART_SetConfig+0x102>
 8001a9c:	f8dc 3000 	ldr.w	r3, [ip]
 8001aa0:	0a1d      	lsrs	r5, r3, #8
 8001aa2:	e002      	b.n	8001aaa <UART_SetConfig+0x102>
 8001aa4:	f8dc 3000 	ldr.w	r3, [ip]
 8001aa8:	0a9d      	lsrs	r5, r3, #10
 8001aaa:	f247 03c8 	movw	r3, #28872	; 0x70c8
 8001aae:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001ab2:	f005 0503 	and.w	r5, r5, #3
 8001ab6:	f085 0502 	eor.w	r5, r5, #2
 8001aba:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001abe:	4571      	cmp	r1, lr
 8001ac0:	d012      	beq.n	8001ae8 <UART_SetConfig+0x140>
 8001ac2:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001ac6:	d11d      	bne.n	8001b04 <UART_SetConfig+0x15c>
 8001ac8:	f005 001f 	and.w	r0, r5, #31
 8001acc:	2101      	movs	r1, #1
 8001ace:	2808      	cmp	r0, #8
 8001ad0:	f200 80a0 	bhi.w	8001c14 <UART_SetConfig+0x26c>
 8001ad4:	e8df f000 	tbb	[pc, r0]
 8001ad8:	9e434005 	.word	0x9e434005
 8001adc:	9e9e9e49 	.word	0x9e9e9e49
 8001ae0:	004f      	.short	0x004f
 8001ae2:	f7ff fcde 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 8001ae6:	e042      	b.n	8001b6e <UART_SetConfig+0x1c6>
 8001ae8:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001aec:	2101      	movs	r1, #1
 8001aee:	2d04      	cmp	r5, #4
 8001af0:	f200 8090 	bhi.w	8001c14 <UART_SetConfig+0x26c>
 8001af4:	e8df f005 	tbb	[pc, r5]
 8001af8:	8e161c03 	.word	0x8e161c03
 8001afc:	001a      	.short	0x001a
 8001afe:	f7ff fcd0 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 8001b02:	e011      	b.n	8001b28 <UART_SetConfig+0x180>
 8001b04:	f005 021f 	and.w	r2, r5, #31
 8001b08:	2101      	movs	r1, #1
 8001b0a:	2a08      	cmp	r2, #8
 8001b0c:	f200 8082 	bhi.w	8001c14 <UART_SetConfig+0x26c>
 8001b10:	e8df f002 	tbb	[pc, r2]
 8001b14:	80464305 	.word	0x80464305
 8001b18:	80808048 	.word	0x80808048
 8001b1c:	004e      	.short	0x004e
 8001b1e:	f7ff fcc0 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 8001b22:	e041      	b.n	8001ba8 <UART_SetConfig+0x200>
 8001b24:	f7ff fc5a 	bl	80013dc <HAL_RCC_GetSysClockFreq>
 8001b28:	b910      	cbnz	r0, 8001b30 <UART_SetConfig+0x188>
 8001b2a:	e072      	b.n	8001c12 <UART_SetConfig+0x26a>
 8001b2c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b30:	6862      	ldr	r2, [r4, #4]
 8001b32:	2101      	movs	r1, #1
 8001b34:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001b38:	4298      	cmp	r0, r3
 8001b3a:	d36b      	bcc.n	8001c14 <UART_SetConfig+0x26c>
 8001b3c:	0313      	lsls	r3, r2, #12
 8001b3e:	4298      	cmp	r0, r3
 8001b40:	bf9c      	itt	ls
 8001b42:	2101      	movls	r1, #1
 8001b44:	2d04      	cmpls	r5, #4
 8001b46:	d865      	bhi.n	8001c14 <UART_SetConfig+0x26c>
 8001b48:	e8df f005 	tbb	[pc, r5]
 8001b4c:	64453e03 	.word	0x64453e03
 8001b50:	0052      	.short	0x0052
 8001b52:	f7ff fca6 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 8001b56:	e040      	b.n	8001bda <UART_SetConfig+0x232>
 8001b58:	f7ff fcb8 	bl	80014cc <HAL_RCC_GetPCLK2Freq>
 8001b5c:	e007      	b.n	8001b6e <UART_SetConfig+0x1c6>
 8001b5e:	6861      	ldr	r1, [r4, #4]
 8001b60:	f644 0200 	movw	r2, #18432	; 0x4800
 8001b64:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001b68:	e008      	b.n	8001b7c <UART_SetConfig+0x1d4>
 8001b6a:	f7ff fc37 	bl	80013dc <HAL_RCC_GetSysClockFreq>
 8001b6e:	6861      	ldr	r1, [r4, #4]
 8001b70:	0040      	lsls	r0, r0, #1
 8001b72:	084a      	lsrs	r2, r1, #1
 8001b74:	e003      	b.n	8001b7e <UART_SetConfig+0x1d6>
 8001b76:	6861      	ldr	r1, [r4, #4]
 8001b78:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001b7c:	0848      	lsrs	r0, r1, #1
 8001b7e:	4410      	add	r0, r2
 8001b80:	fbb0 f0f1 	udiv	r0, r0, r1
 8001b84:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001b88:	4001      	ands	r1, r0
 8001b8a:	2910      	cmp	r1, #16
 8001b8c:	d303      	bcc.n	8001b96 <UART_SetConfig+0x1ee>
 8001b8e:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001b92:	4308      	orrs	r0, r1
 8001b94:	e03a      	b.n	8001c0c <UART_SetConfig+0x264>
 8001b96:	2101      	movs	r1, #1
 8001b98:	e03c      	b.n	8001c14 <UART_SetConfig+0x26c>
 8001b9a:	f7ff fc97 	bl	80014cc <HAL_RCC_GetPCLK2Freq>
 8001b9e:	e003      	b.n	8001ba8 <UART_SetConfig+0x200>
 8001ba0:	6862      	ldr	r2, [r4, #4]
 8001ba2:	e008      	b.n	8001bb6 <UART_SetConfig+0x20e>
 8001ba4:	f7ff fc1a 	bl	80013dc <HAL_RCC_GetSysClockFreq>
 8001ba8:	6862      	ldr	r2, [r4, #4]
 8001baa:	4601      	mov	r1, r0
 8001bac:	0850      	lsrs	r0, r2, #1
 8001bae:	e003      	b.n	8001bb8 <UART_SetConfig+0x210>
 8001bb0:	6862      	ldr	r2, [r4, #4]
 8001bb2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001bb6:	0851      	lsrs	r1, r2, #1
 8001bb8:	4408      	add	r0, r1
 8001bba:	fbb0 f0f2 	udiv	r0, r0, r2
 8001bbe:	b280      	uxth	r0, r0
 8001bc0:	2810      	cmp	r0, #16
 8001bc2:	d223      	bcs.n	8001c0c <UART_SetConfig+0x264>
 8001bc4:	2101      	movs	r1, #1
 8001bc6:	e025      	b.n	8001c14 <UART_SetConfig+0x26c>
 8001bc8:	2000      	movs	r0, #0
 8001bca:	2100      	movs	r1, #0
 8001bcc:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001bd0:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001bd4:	e006      	b.n	8001be4 <UART_SetConfig+0x23c>
 8001bd6:	f7ff fc01 	bl	80013dc <HAL_RCC_GetSysClockFreq>
 8001bda:	6862      	ldr	r2, [r4, #4]
 8001bdc:	0e01      	lsrs	r1, r0, #24
 8001bde:	0853      	lsrs	r3, r2, #1
 8001be0:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001be4:	f141 0100 	adc.w	r1, r1, #0
 8001be8:	2300      	movs	r3, #0
 8001bea:	f7fe fb09 	bl	8000200 <__aeabi_uldivmod>
 8001bee:	e005      	b.n	8001bfc <UART_SetConfig+0x254>
 8001bf0:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001bf4:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001bf8:	fbb0 f0f2 	udiv	r0, r0, r2
 8001bfc:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001c00:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001c04:	f2c0 020f 	movt	r2, #15
 8001c08:	4291      	cmp	r1, r2
 8001c0a:	d80a      	bhi.n	8001c22 <UART_SetConfig+0x27a>
 8001c0c:	6821      	ldr	r1, [r4, #0]
 8001c0e:	f841 0e0c 	strt	r0, [r1, #12]
 8001c12:	2100      	movs	r1, #0
 8001c14:	2000      	movs	r0, #0
 8001c16:	f844 0e60 	strt	r0, [r4, #96]
 8001c1a:	f844 0e64 	strt	r0, [r4, #100]
 8001c1e:	4608      	mov	r0, r1
 8001c20:	bdb0      	pop	{r4, r5, r7, pc}
 8001c22:	2101      	movs	r1, #1
 8001c24:	e7f6      	b.n	8001c14 <UART_SetConfig+0x26c>

08001c26 <UART_AdvFeatureConfig>:
 8001c26:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001c28:	f011 0f01 	tst.w	r1, #1
 8001c2c:	d009      	beq.n	8001c42 <UART_AdvFeatureConfig+0x1c>
 8001c2e:	6802      	ldr	r2, [r0, #0]
 8001c30:	6853      	ldr	r3, [r2, #4]
 8001c32:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001c36:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001c3a:	ea43 030c 	orr.w	r3, r3, ip
 8001c3e:	f842 3e04 	strt	r3, [r2, #4]
 8001c42:	078a      	lsls	r2, r1, #30
 8001c44:	d509      	bpl.n	8001c5a <UART_AdvFeatureConfig+0x34>
 8001c46:	6802      	ldr	r2, [r0, #0]
 8001c48:	6853      	ldr	r3, [r2, #4]
 8001c4a:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001c4e:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001c52:	ea43 030c 	orr.w	r3, r3, ip
 8001c56:	f842 3e04 	strt	r3, [r2, #4]
 8001c5a:	074a      	lsls	r2, r1, #29
 8001c5c:	d509      	bpl.n	8001c72 <UART_AdvFeatureConfig+0x4c>
 8001c5e:	6802      	ldr	r2, [r0, #0]
 8001c60:	6853      	ldr	r3, [r2, #4]
 8001c62:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001c66:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001c6a:	ea43 030c 	orr.w	r3, r3, ip
 8001c6e:	f842 3e04 	strt	r3, [r2, #4]
 8001c72:	070a      	lsls	r2, r1, #28
 8001c74:	d509      	bpl.n	8001c8a <UART_AdvFeatureConfig+0x64>
 8001c76:	6802      	ldr	r2, [r0, #0]
 8001c78:	6853      	ldr	r3, [r2, #4]
 8001c7a:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001c7e:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001c82:	ea43 030c 	orr.w	r3, r3, ip
 8001c86:	f842 3e04 	strt	r3, [r2, #4]
 8001c8a:	06ca      	lsls	r2, r1, #27
 8001c8c:	d509      	bpl.n	8001ca2 <UART_AdvFeatureConfig+0x7c>
 8001c8e:	6802      	ldr	r2, [r0, #0]
 8001c90:	6893      	ldr	r3, [r2, #8]
 8001c92:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001c96:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001c9a:	ea43 030c 	orr.w	r3, r3, ip
 8001c9e:	f842 3e08 	strt	r3, [r2, #8]
 8001ca2:	068a      	lsls	r2, r1, #26
 8001ca4:	d509      	bpl.n	8001cba <UART_AdvFeatureConfig+0x94>
 8001ca6:	6802      	ldr	r2, [r0, #0]
 8001ca8:	6893      	ldr	r3, [r2, #8]
 8001caa:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001cae:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001cb2:	ea43 030c 	orr.w	r3, r3, ip
 8001cb6:	f842 3e08 	strt	r3, [r2, #8]
 8001cba:	b082      	sub	sp, #8
 8001cbc:	f84d 7e00 	strt	r7, [sp]
 8001cc0:	f84d ee04 	strt	lr, [sp, #4]
 8001cc4:	466f      	mov	r7, sp
 8001cc6:	064a      	lsls	r2, r1, #25
 8001cc8:	d515      	bpl.n	8001cf6 <UART_AdvFeatureConfig+0xd0>
 8001cca:	f8d0 e000 	ldr.w	lr, [r0]
 8001cce:	f8de c004 	ldr.w	ip, [lr, #4]
 8001cd2:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001cd4:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001cd8:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001cdc:	ea42 0203 	orr.w	r2, r2, r3
 8001ce0:	f84e 2e04 	strt	r2, [lr, #4]
 8001ce4:	d107      	bne.n	8001cf6 <UART_AdvFeatureConfig+0xd0>
 8001ce6:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001cea:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001cec:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001cf0:	431a      	orrs	r2, r3
 8001cf2:	f84e 2e04 	strt	r2, [lr, #4]
 8001cf6:	0609      	lsls	r1, r1, #24
 8001cf8:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001cfc:	bf58      	it	pl
 8001cfe:	4770      	bxpl	lr
 8001d00:	6801      	ldr	r1, [r0, #0]
 8001d02:	684a      	ldr	r2, [r1, #4]
 8001d04:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001d06:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001d0a:	4310      	orrs	r0, r2
 8001d0c:	f841 0e04 	strt	r0, [r1, #4]
 8001d10:	4770      	bx	lr

08001d12 <UART_CheckIdleState>:
 8001d12:	b085      	sub	sp, #20
 8001d14:	f84d 4e00 	strt	r4, [sp]
 8001d18:	f84d 5e04 	strt	r5, [sp, #4]
 8001d1c:	f84d 6e08 	strt	r6, [sp, #8]
 8001d20:	f84d 7e0c 	strt	r7, [sp, #12]
 8001d24:	f84d ee10 	strt	lr, [sp, #16]
 8001d28:	af03      	add	r7, sp, #12
 8001d2a:	b081      	sub	sp, #4
 8001d2c:	f84d be00 	strt	fp, [sp]
 8001d30:	4604      	mov	r4, r0
 8001d32:	2000      	movs	r0, #0
 8001d34:	f844 0e7c 	strt	r0, [r4, #124]
 8001d38:	f7ff f9ef 	bl	800111a <HAL_GetTick>
 8001d3c:	4605      	mov	r5, r0
 8001d3e:	6820      	ldr	r0, [r4, #0]
 8001d40:	6801      	ldr	r1, [r0, #0]
 8001d42:	f011 0f08 	tst.w	r1, #8
 8001d46:	d00f      	beq.n	8001d68 <UART_CheckIdleState+0x56>
 8001d48:	69c1      	ldr	r1, [r0, #28]
 8001d4a:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d4e:	d10b      	bne.n	8001d68 <UART_CheckIdleState+0x56>
 8001d50:	2600      	movs	r6, #0
 8001d52:	f7ff f9e2 	bl	800111a <HAL_GetTick>
 8001d56:	1b41      	subs	r1, r0, r5
 8001d58:	6820      	ldr	r0, [r4, #0]
 8001d5a:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d5e:	d11b      	bne.n	8001d98 <UART_CheckIdleState+0x86>
 8001d60:	69c1      	ldr	r1, [r0, #28]
 8001d62:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d66:	d0f4      	beq.n	8001d52 <UART_CheckIdleState+0x40>
 8001d68:	6801      	ldr	r1, [r0, #0]
 8001d6a:	f011 0f04 	tst.w	r1, #4
 8001d6e:	d101      	bne.n	8001d74 <UART_CheckIdleState+0x62>
 8001d70:	2600      	movs	r6, #0
 8001d72:	e01c      	b.n	8001dae <UART_CheckIdleState+0x9c>
 8001d74:	69c0      	ldr	r0, [r0, #28]
 8001d76:	2600      	movs	r6, #0
 8001d78:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d7c:	d117      	bne.n	8001dae <UART_CheckIdleState+0x9c>
 8001d7e:	f7ff f9cc 	bl	800111a <HAL_GetTick>
 8001d82:	1b41      	subs	r1, r0, r5
 8001d84:	6820      	ldr	r0, [r4, #0]
 8001d86:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d8a:	d105      	bne.n	8001d98 <UART_CheckIdleState+0x86>
 8001d8c:	69c0      	ldr	r0, [r0, #28]
 8001d8e:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d92:	d0f4      	beq.n	8001d7e <UART_CheckIdleState+0x6c>
 8001d94:	2600      	movs	r6, #0
 8001d96:	e00a      	b.n	8001dae <UART_CheckIdleState+0x9c>
 8001d98:	6801      	ldr	r1, [r0, #0]
 8001d9a:	2603      	movs	r6, #3
 8001d9c:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001da0:	f840 1e00 	strt	r1, [r0]
 8001da4:	6881      	ldr	r1, [r0, #8]
 8001da6:	f021 0101 	bic.w	r1, r1, #1
 8001daa:	f840 1e08 	strt	r1, [r0, #8]
 8001dae:	2020      	movs	r0, #32
 8001db0:	f844 0e74 	strt	r0, [r4, #116]
 8001db4:	f844 0e78 	strt	r0, [r4, #120]
 8001db8:	2000      	movs	r0, #0
 8001dba:	f844 0e70 	strt	r0, [r4, #112]
 8001dbe:	4630      	mov	r0, r6
 8001dc0:	f85d bb04 	ldr.w	fp, [sp], #4
 8001dc4:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001dc6 <HAL_UART_Transmit>:
 8001dc6:	b085      	sub	sp, #20
 8001dc8:	f84d 4e00 	strt	r4, [sp]
 8001dcc:	f84d 5e04 	strt	r5, [sp, #4]
 8001dd0:	f84d 6e08 	strt	r6, [sp, #8]
 8001dd4:	f84d 7e0c 	strt	r7, [sp, #12]
 8001dd8:	f84d ee10 	strt	lr, [sp, #16]
 8001ddc:	af03      	add	r7, sp, #12
 8001dde:	b084      	sub	sp, #16
 8001de0:	f84d 8e00 	strt	r8, [sp]
 8001de4:	f84d 9e04 	strt	r9, [sp, #4]
 8001de8:	f84d ae08 	strt	sl, [sp, #8]
 8001dec:	f84d be0c 	strt	fp, [sp, #12]
 8001df0:	b081      	sub	sp, #4
 8001df2:	4604      	mov	r4, r0
 8001df4:	461d      	mov	r5, r3
 8001df6:	4616      	mov	r6, r2
 8001df8:	4689      	mov	r9, r1
 8001dfa:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001dfc:	2820      	cmp	r0, #32
 8001dfe:	d109      	bne.n	8001e14 <HAL_UART_Transmit+0x4e>
 8001e00:	f1b9 0f00 	cmp.w	r9, #0
 8001e04:	f04f 0001 	mov.w	r0, #1
 8001e08:	bf18      	it	ne
 8001e0a:	2e00      	cmpne	r6, #0
 8001e0c:	d003      	beq.n	8001e16 <HAL_UART_Transmit+0x50>
 8001e0e:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001e10:	2801      	cmp	r0, #1
 8001e12:	d104      	bne.n	8001e1e <HAL_UART_Transmit+0x58>
 8001e14:	2002      	movs	r0, #2
 8001e16:	b001      	add	sp, #4
 8001e18:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001e1c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001e1e:	2001      	movs	r0, #1
 8001e20:	f844 0e70 	strt	r0, [r4, #112]
 8001e24:	2000      	movs	r0, #0
 8001e26:	f844 0e7c 	strt	r0, [r4, #124]
 8001e2a:	2021      	movs	r0, #33	; 0x21
 8001e2c:	f844 0e74 	strt	r0, [r4, #116]
 8001e30:	f7ff f973 	bl	800111a <HAL_GetTick>
 8001e34:	f824 6e50 	strht	r6, [r4, #80]
 8001e38:	f824 6e52 	strht	r6, [r4, #82]
 8001e3c:	4680      	mov	r8, r0
 8001e3e:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001e42:	f8d4 b000 	ldr.w	fp, [r4]
 8001e46:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001e4a:	2900      	cmp	r1, #0
 8001e4c:	d046      	beq.n	8001edc <HAL_UART_Transmit+0x116>
 8001e4e:	f105 0a01 	add.w	sl, r5, #1
 8001e52:	0600      	lsls	r0, r0, #24
 8001e54:	d410      	bmi.n	8001e78 <HAL_UART_Transmit+0xb2>
 8001e56:	465e      	mov	r6, fp
 8001e58:	f1ba 0f00 	cmp.w	sl, #0
 8001e5c:	d007      	beq.n	8001e6e <HAL_UART_Transmit+0xa8>
 8001e5e:	b345      	cbz	r5, 8001eb2 <HAL_UART_Transmit+0xec>
 8001e60:	f7ff f95b 	bl	800111a <HAL_GetTick>
 8001e64:	6826      	ldr	r6, [r4, #0]
 8001e66:	eba0 0008 	sub.w	r0, r0, r8
 8001e6a:	42a8      	cmp	r0, r5
 8001e6c:	d822      	bhi.n	8001eb4 <HAL_UART_Transmit+0xee>
 8001e6e:	69f0      	ldr	r0, [r6, #28]
 8001e70:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001e74:	d0f0      	beq.n	8001e58 <HAL_UART_Transmit+0x92>
 8001e76:	e000      	b.n	8001e7a <HAL_UART_Transmit+0xb4>
 8001e78:	465e      	mov	r6, fp
 8001e7a:	68a0      	ldr	r0, [r4, #8]
 8001e7c:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001e80:	bf04      	itt	eq
 8001e82:	6920      	ldreq	r0, [r4, #16]
 8001e84:	2800      	cmpeq	r0, #0
 8001e86:	d002      	beq.n	8001e8e <HAL_UART_Transmit+0xc8>
 8001e88:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001e8c:	e003      	b.n	8001e96 <HAL_UART_Transmit+0xd0>
 8001e8e:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001e92:	f36f 205f 	bfc	r0, #9, #23
 8001e96:	f826 0e28 	strht	r0, [r6, #40]
 8001e9a:	46b3      	mov	fp, r6
 8001e9c:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001ea0:	3801      	subs	r0, #1
 8001ea2:	f824 0e52 	strht	r0, [r4, #82]
 8001ea6:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001eaa:	69f0      	ldr	r0, [r6, #28]
 8001eac:	2900      	cmp	r1, #0
 8001eae:	d1d0      	bne.n	8001e52 <HAL_UART_Transmit+0x8c>
 8001eb0:	e015      	b.n	8001ede <HAL_UART_Transmit+0x118>
 8001eb2:	465e      	mov	r6, fp
 8001eb4:	6830      	ldr	r0, [r6, #0]
 8001eb6:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001eba:	f846 0e00 	strt	r0, [r6]
 8001ebe:	68b0      	ldr	r0, [r6, #8]
 8001ec0:	f020 0001 	bic.w	r0, r0, #1
 8001ec4:	f846 0e08 	strt	r0, [r6, #8]
 8001ec8:	2020      	movs	r0, #32
 8001eca:	f844 0e74 	strt	r0, [r4, #116]
 8001ece:	f844 0e78 	strt	r0, [r4, #120]
 8001ed2:	2000      	movs	r0, #0
 8001ed4:	f844 0e70 	strt	r0, [r4, #112]
 8001ed8:	2003      	movs	r0, #3
 8001eda:	e79c      	b.n	8001e16 <HAL_UART_Transmit+0x50>
 8001edc:	465e      	mov	r6, fp
 8001ede:	0640      	lsls	r0, r0, #25
 8001ee0:	d411      	bmi.n	8001f06 <HAL_UART_Transmit+0x140>
 8001ee2:	f105 0901 	add.w	r9, r5, #1
 8001ee6:	4630      	mov	r0, r6
 8001ee8:	f1b9 0f00 	cmp.w	r9, #0
 8001eec:	d007      	beq.n	8001efe <HAL_UART_Transmit+0x138>
 8001eee:	b18d      	cbz	r5, 8001f14 <HAL_UART_Transmit+0x14e>
 8001ef0:	f7ff f913 	bl	800111a <HAL_GetTick>
 8001ef4:	eba0 0108 	sub.w	r1, r0, r8
 8001ef8:	6820      	ldr	r0, [r4, #0]
 8001efa:	42a9      	cmp	r1, r5
 8001efc:	d80b      	bhi.n	8001f16 <HAL_UART_Transmit+0x150>
 8001efe:	69c1      	ldr	r1, [r0, #28]
 8001f00:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001f04:	d0f0      	beq.n	8001ee8 <HAL_UART_Transmit+0x122>
 8001f06:	2020      	movs	r0, #32
 8001f08:	f844 0e74 	strt	r0, [r4, #116]
 8001f0c:	2000      	movs	r0, #0
 8001f0e:	f844 0e70 	strt	r0, [r4, #112]
 8001f12:	e780      	b.n	8001e16 <HAL_UART_Transmit+0x50>
 8001f14:	4630      	mov	r0, r6
 8001f16:	6801      	ldr	r1, [r0, #0]
 8001f18:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001f1c:	f840 1e00 	strt	r1, [r0]
 8001f20:	6881      	ldr	r1, [r0, #8]
 8001f22:	f021 0101 	bic.w	r1, r1, #1
 8001f26:	f840 1e08 	strt	r1, [r0, #8]
 8001f2a:	e7cd      	b.n	8001ec8 <HAL_UART_Transmit+0x102>

08001f2c <BSP_COM_Init>:
 8001f2c:	b085      	sub	sp, #20
 8001f2e:	f84d 4e00 	strt	r4, [sp]
 8001f32:	f84d 5e04 	strt	r5, [sp, #4]
 8001f36:	f84d 6e08 	strt	r6, [sp, #8]
 8001f3a:	f84d 7e0c 	strt	r7, [sp, #12]
 8001f3e:	f84d ee10 	strt	lr, [sp, #16]
 8001f42:	af03      	add	r7, sp, #12
 8001f44:	b083      	sub	sp, #12
 8001f46:	f84d 8e00 	strt	r8, [sp]
 8001f4a:	f84d 9e04 	strt	r9, [sp, #4]
 8001f4e:	f84d be08 	strt	fp, [sp, #8]
 8001f52:	b086      	sub	sp, #24
 8001f54:	4605      	mov	r5, r0
 8001f56:	4688      	mov	r8, r1
 8001f58:	bb25      	cbnz	r5, 8001fa4 <BSP_COM_Init+0x78>
 8001f5a:	f241 004c 	movw	r0, #4172	; 0x104c
 8001f5e:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001f62:	6801      	ldr	r1, [r0, #0]
 8001f64:	f041 0102 	orr.w	r1, r1, #2
 8001f68:	f840 1e00 	strt	r1, [r0]
 8001f6c:	6801      	ldr	r1, [r0, #0]
 8001f6e:	f001 0102 	and.w	r1, r1, #2
 8001f72:	f84d 1e04 	strt	r1, [sp, #4]
 8001f76:	9901      	ldr	r1, [sp, #4]
 8001f78:	6801      	ldr	r1, [r0, #0]
 8001f7a:	f041 0102 	orr.w	r1, r1, #2
 8001f7e:	f840 1e00 	strt	r1, [r0]
 8001f82:	6801      	ldr	r1, [r0, #0]
 8001f84:	f001 0102 	and.w	r1, r1, #2
 8001f88:	f84d 1e04 	strt	r1, [sp, #4]
 8001f8c:	9901      	ldr	r1, [sp, #4]
 8001f8e:	6941      	ldr	r1, [r0, #20]
 8001f90:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001f94:	f840 1e14 	strt	r1, [r0, #20]
 8001f98:	6940      	ldr	r0, [r0, #20]
 8001f9a:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001f9e:	f84d 0e04 	strt	r0, [sp, #4]
 8001fa2:	9801      	ldr	r0, [sp, #4]
 8001fa4:	2040      	movs	r0, #64	; 0x40
 8001fa6:	2402      	movs	r4, #2
 8001fa8:	ae01      	add	r6, sp, #4
 8001faa:	f04f 0907 	mov.w	r9, #7
 8001fae:	f84d 0e04 	strt	r0, [sp, #4]
 8001fb2:	2000      	movs	r0, #0
 8001fb4:	f84d 4e08 	strt	r4, [sp, #8]
 8001fb8:	f84d 4e10 	strt	r4, [sp, #16]
 8001fbc:	4631      	mov	r1, r6
 8001fbe:	f84d 0e0c 	strt	r0, [sp, #12]
 8001fc2:	f240 000c 	movw	r0, #12
 8001fc6:	f84d 9e14 	strt	r9, [sp, #20]
 8001fca:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fce:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001fd2:	f7ff f8fb 	bl	80011cc <HAL_GPIO_Init>
 8001fd6:	2080      	movs	r0, #128	; 0x80
 8001fd8:	4631      	mov	r1, r6
 8001fda:	f84d 0e04 	strt	r0, [sp, #4]
 8001fde:	f84d 4e08 	strt	r4, [sp, #8]
 8001fe2:	f240 0010 	movw	r0, #16
 8001fe6:	f84d 9e14 	strt	r9, [sp, #20]
 8001fea:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fee:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001ff2:	f7ff f8eb 	bl	80011cc <HAL_GPIO_Init>
 8001ff6:	f240 0008 	movw	r0, #8
 8001ffa:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ffe:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8002002:	f848 0e00 	strt	r0, [r8]
 8002006:	4640      	mov	r0, r8
 8002008:	f7ff fc8d 	bl	8001926 <HAL_UART_Init>
 800200c:	b006      	add	sp, #24
 800200e:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8002012:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002014 <initialise_benchmark>:
 8002014:	4770      	bx	lr

08002016 <benchmark>:
 8002016:	b081      	sub	sp, #4
 8002018:	2000      	movs	r0, #0
 800201a:	f84d 0e00 	strt	r0, [sp]
 800201e:	9800      	ldr	r0, [sp, #0]
 8002020:	300a      	adds	r0, #10
 8002022:	f84d 0e00 	strt	r0, [sp]
 8002026:	9800      	ldr	r0, [sp, #0]
 8002028:	3032      	adds	r0, #50	; 0x32
 800202a:	f84d 0e00 	strt	r0, [sp]
 800202e:	9800      	ldr	r0, [sp, #0]
 8002030:	3078      	adds	r0, #120	; 0x78
 8002032:	f84d 0e00 	strt	r0, [sp]
 8002036:	9800      	ldr	r0, [sp, #0]
 8002038:	b001      	add	sp, #4
 800203a:	4770      	bx	lr

0800203c <verify_benchmark>:
 800203c:	2100      	movs	r1, #0
 800203e:	28b4      	cmp	r0, #180	; 0xb4
 8002040:	bf08      	it	eq
 8002042:	2101      	moveq	r1, #1
 8002044:	4608      	mov	r0, r1
 8002046:	4770      	bx	lr

08002048 <__io_putchar>:
 8002048:	b082      	sub	sp, #8
 800204a:	f84d 7e00 	strt	r7, [sp]
 800204e:	f84d ee04 	strt	lr, [sp, #4]
 8002052:	466f      	mov	r7, sp
 8002054:	b082      	sub	sp, #8
 8002056:	f84d 0e04 	strt	r0, [sp, #4]
 800205a:	f640 10e4 	movw	r0, #2532	; 0x9e4
 800205e:	a901      	add	r1, sp, #4
 8002060:	2201      	movs	r2, #1
 8002062:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002066:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800206a:	f7ff feac 	bl	8001dc6 <HAL_UART_Transmit>
 800206e:	9801      	ldr	r0, [sp, #4]
 8002070:	b002      	add	sp, #8
 8002072:	bd80      	pop	{r7, pc}

08002074 <main>:
 8002074:	b084      	sub	sp, #16
 8002076:	f84d 4e00 	strt	r4, [sp]
 800207a:	f84d 5e04 	strt	r5, [sp, #4]
 800207e:	f84d 7e08 	strt	r7, [sp, #8]
 8002082:	f84d ee0c 	strt	lr, [sp, #12]
 8002086:	af02      	add	r7, sp, #8
 8002088:	f640 11e4 	movw	r1, #2532	; 0x9e4
 800208c:	f643 0000 	movw	r0, #14336	; 0x3800
 8002090:	220c      	movs	r2, #12
 8002092:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002096:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800209a:	f841 0e00 	strt	r0, [r1]
 800209e:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80020a2:	f841 0e04 	strt	r0, [r1, #4]
 80020a6:	2000      	movs	r0, #0
 80020a8:	f841 0e08 	strt	r0, [r1, #8]
 80020ac:	f841 0e0c 	strt	r0, [r1, #12]
 80020b0:	f841 0e10 	strt	r0, [r1, #16]
 80020b4:	f841 0e24 	strt	r0, [r1, #36]
 80020b8:	f841 0e1c 	strt	r0, [r1, #28]
 80020bc:	f841 0e20 	strt	r0, [r1, #32]
 80020c0:	f841 2e14 	strt	r2, [r1, #20]
 80020c4:	f841 0e18 	strt	r0, [r1, #24]
 80020c8:	2000      	movs	r0, #0
 80020ca:	f7ff ff2f 	bl	8001f2c <BSP_COM_Init>
 80020ce:	f7ff ffa1 	bl	8002014 <initialise_benchmark>
 80020d2:	f247 00d8 	movw	r0, #28888	; 0x70d8
 80020d6:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020da:	f000 f96d 	bl	80023b8 <printf>
 80020de:	f247 1080 	movw	r0, #29056	; 0x7180
 80020e2:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020e6:	f000 f9c9 	bl	800247c <puts>
 80020ea:	f7fe fffd 	bl	80010e8 <HAL_Init>
 80020ee:	f7ff f814 	bl	800111a <HAL_GetTick>
 80020f2:	4604      	mov	r4, r0
 80020f4:	f7ff ff8f 	bl	8002016 <benchmark>
 80020f8:	4605      	mov	r5, r0
 80020fa:	f7ff f80e 	bl	800111a <HAL_GetTick>
 80020fe:	1b04      	subs	r4, r0, r4
 8002100:	4628      	mov	r0, r5
 8002102:	f7ff ff9b 	bl	800203c <verify_benchmark>
 8002106:	1c41      	adds	r1, r0, #1
 8002108:	d006      	beq.n	8002118 <main+0xa4>
 800210a:	2801      	cmp	r0, #1
 800210c:	d109      	bne.n	8002122 <main+0xae>
 800210e:	f247 00ec 	movw	r0, #28908	; 0x70ec
 8002112:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002116:	e008      	b.n	800212a <main+0xb6>
 8002118:	f247 1010 	movw	r0, #28944	; 0x7110
 800211c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002120:	e003      	b.n	800212a <main+0xb6>
 8002122:	f247 1045 	movw	r0, #28997	; 0x7145
 8002126:	f6c0 0000 	movt	r0, #2048	; 0x800
 800212a:	4621      	mov	r1, r4
 800212c:	f000 f944 	bl	80023b8 <printf>
 8002130:	2000      	movs	r0, #0
 8002132:	bdb0      	pop	{r4, r5, r7, pc}

08002134 <SysTick_Handler>:
 8002134:	b082      	sub	sp, #8
 8002136:	f84d 7e00 	strt	r7, [sp]
 800213a:	f84d ee04 	strt	lr, [sp, #4]
 800213e:	466f      	mov	r7, sp
 8002140:	f7fe ffe2 	bl	8001108 <HAL_IncTick>
 8002144:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002148:	f7ff b83d 	b.w	80011c6 <HAL_SYSTICK_IRQHandler>

0800214c <_read>:
 800214c:	b085      	sub	sp, #20
 800214e:	f84d 4e00 	strt	r4, [sp]
 8002152:	f84d 5e04 	strt	r5, [sp, #4]
 8002156:	f84d 6e08 	strt	r6, [sp, #8]
 800215a:	f84d 7e0c 	strt	r7, [sp, #12]
 800215e:	f84d ee10 	strt	lr, [sp, #16]
 8002162:	af03      	add	r7, sp, #12
 8002164:	b081      	sub	sp, #4
 8002166:	f84d be00 	strt	fp, [sp]
 800216a:	4614      	mov	r4, r2
 800216c:	460d      	mov	r5, r1
 800216e:	2c01      	cmp	r4, #1
 8002170:	db08      	blt.n	8002184 <_read+0x38>
 8002172:	4626      	mov	r6, r4
 8002174:	f3af 8000 	nop.w
 8002178:	f805 0e00 	strbt	r0, [r5]
 800217c:	bfe8      	it	al
 800217e:	3501      	addal	r5, #1
 8002180:	3e01      	subs	r6, #1
 8002182:	d1f7      	bne.n	8002174 <_read+0x28>
 8002184:	4620      	mov	r0, r4
 8002186:	f85d bb04 	ldr.w	fp, [sp], #4
 800218a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800218c <_write>:
 800218c:	b085      	sub	sp, #20
 800218e:	f84d 4e00 	strt	r4, [sp]
 8002192:	f84d 5e04 	strt	r5, [sp, #4]
 8002196:	f84d 6e08 	strt	r6, [sp, #8]
 800219a:	f84d 7e0c 	strt	r7, [sp, #12]
 800219e:	f84d ee10 	strt	lr, [sp, #16]
 80021a2:	af03      	add	r7, sp, #12
 80021a4:	b081      	sub	sp, #4
 80021a6:	f84d be00 	strt	fp, [sp]
 80021aa:	4614      	mov	r4, r2
 80021ac:	460d      	mov	r5, r1
 80021ae:	2c01      	cmp	r4, #1
 80021b0:	db06      	blt.n	80021c0 <_write+0x34>
 80021b2:	4626      	mov	r6, r4
 80021b4:	f815 0b01 	ldrb.w	r0, [r5], #1
 80021b8:	f7ff ff46 	bl	8002048 <__io_putchar>
 80021bc:	3e01      	subs	r6, #1
 80021be:	d1f9      	bne.n	80021b4 <_write+0x28>
 80021c0:	4620      	mov	r0, r4
 80021c2:	f85d bb04 	ldr.w	fp, [sp], #4
 80021c6:	bdf0      	pop	{r4, r5, r6, r7, pc}

080021c8 <_sbrk>:
 80021c8:	f640 2268 	movw	r2, #2664	; 0xa68
 80021cc:	4601      	mov	r1, r0
 80021ce:	466b      	mov	r3, sp
 80021d0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80021d4:	6810      	ldr	r0, [r2, #0]
 80021d6:	2800      	cmp	r0, #0
 80021d8:	bf02      	ittt	eq
 80021da:	f640 3010 	movweq	r0, #2832	; 0xb10
 80021de:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80021e2:	f842 0e00 	strteq	r0, [r2]
 80021e6:	4401      	add	r1, r0
 80021e8:	4299      	cmp	r1, r3
 80021ea:	bf9c      	itt	ls
 80021ec:	f842 1e00 	strtls	r1, [r2]
 80021f0:	4770      	bxls	lr
 80021f2:	b082      	sub	sp, #8
 80021f4:	f84d 7e00 	strt	r7, [sp]
 80021f8:	f84d ee04 	strt	lr, [sp, #4]
 80021fc:	466f      	mov	r7, sp
 80021fe:	f000 f867 	bl	80022d0 <__errno>
 8002202:	210c      	movs	r1, #12
 8002204:	f840 1e00 	strt	r1, [r0]
 8002208:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800220c:	bd80      	pop	{r7, pc}

0800220e <_close>:
 800220e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002212:	4770      	bx	lr

08002214 <_fstat>:
 8002214:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002218:	f841 0e04 	strt	r0, [r1, #4]
 800221c:	2000      	movs	r0, #0
 800221e:	4770      	bx	lr

08002220 <_isatty>:
 8002220:	2001      	movs	r0, #1
 8002222:	4770      	bx	lr

08002224 <_lseek>:
 8002224:	2000      	movs	r0, #0
 8002226:	4770      	bx	lr

08002228 <SystemInit>:
 8002228:	f64e 5088 	movw	r0, #60808	; 0xed88
 800222c:	f04f 0c00 	mov.w	ip, #0
 8002230:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002234:	6801      	ldr	r1, [r0, #0]
 8002236:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 800223a:	6001      	str	r1, [r0, #0]
 800223c:	f241 0100 	movw	r1, #4096	; 0x1000
 8002240:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002244:	680a      	ldr	r2, [r1, #0]
 8002246:	f042 0201 	orr.w	r2, r2, #1
 800224a:	600a      	str	r2, [r1, #0]
 800224c:	f8c1 c008 	str.w	ip, [r1, #8]
 8002250:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002254:	680b      	ldr	r3, [r1, #0]
 8002256:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 800225a:	401a      	ands	r2, r3
 800225c:	600a      	str	r2, [r1, #0]
 800225e:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002262:	60ca      	str	r2, [r1, #12]
 8002264:	680a      	ldr	r2, [r1, #0]
 8002266:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800226a:	600a      	str	r2, [r1, #0]
 800226c:	f8c1 c018 	str.w	ip, [r1, #24]
 8002270:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002274:	f840 1c80 	str.w	r1, [r0, #-128]
 8002278:	4770      	bx	lr
	...

0800227c <Reset_Handler>:
 800227c:	f8df d034 	ldr.w	sp, [pc, #52]	; 80022b4 <LoopForever+0x2>
 8002280:	2100      	movs	r1, #0
 8002282:	e003      	b.n	800228c <LoopCopyDataInit>

08002284 <CopyDataInit>:
 8002284:	4b0c      	ldr	r3, [pc, #48]	; (80022b8 <LoopForever+0x6>)
 8002286:	585b      	ldr	r3, [r3, r1]
 8002288:	5043      	str	r3, [r0, r1]
 800228a:	3104      	adds	r1, #4

0800228c <LoopCopyDataInit>:
 800228c:	480b      	ldr	r0, [pc, #44]	; (80022bc <LoopForever+0xa>)
 800228e:	4b0c      	ldr	r3, [pc, #48]	; (80022c0 <LoopForever+0xe>)
 8002290:	1842      	adds	r2, r0, r1
 8002292:	429a      	cmp	r2, r3
 8002294:	d3f6      	bcc.n	8002284 <CopyDataInit>
 8002296:	4a0b      	ldr	r2, [pc, #44]	; (80022c4 <LoopForever+0x12>)
 8002298:	e002      	b.n	80022a0 <LoopFillZerobss>

0800229a <FillZerobss>:
 800229a:	2300      	movs	r3, #0
 800229c:	f842 3b04 	str.w	r3, [r2], #4

080022a0 <LoopFillZerobss>:
 80022a0:	4b09      	ldr	r3, [pc, #36]	; (80022c8 <LoopForever+0x16>)
 80022a2:	429a      	cmp	r2, r3
 80022a4:	d3f9      	bcc.n	800229a <FillZerobss>
 80022a6:	f7ff ffbf 	bl	8002228 <SystemInit>
 80022aa:	f000 f817 	bl	80022dc <__libc_init_array>
 80022ae:	f7ff fee1 	bl	8002074 <main>

080022b2 <LoopForever>:
 80022b2:	e7fe      	b.n	80022b2 <LoopForever>
 80022b4:	20018000 	.word	0x20018000
 80022b8:	08007428 	.word	0x08007428
 80022bc:	20000000 	.word	0x20000000
 80022c0:	200009c8 	.word	0x200009c8
 80022c4:	200009c8 	.word	0x200009c8
 80022c8:	20000b10 	.word	0x20000b10

080022cc <ADC1_2_IRQHandler>:
 80022cc:	e7fe      	b.n	80022cc <ADC1_2_IRQHandler>
	...

080022d0 <__errno>:
 80022d0:	4b01      	ldr	r3, [pc, #4]	; (80022d8 <__errno+0x8>)
 80022d2:	6818      	ldr	r0, [r3, #0]
 80022d4:	4770      	bx	lr
 80022d6:	bf00      	nop
 80022d8:	20000018 	.word	0x20000018

080022dc <__libc_init_array>:
 80022dc:	b570      	push	{r4, r5, r6, lr}
 80022de:	4e0d      	ldr	r6, [pc, #52]	; (8002314 <__libc_init_array+0x38>)
 80022e0:	4d0d      	ldr	r5, [pc, #52]	; (8002318 <__libc_init_array+0x3c>)
 80022e2:	1b76      	subs	r6, r6, r5
 80022e4:	10b6      	asrs	r6, r6, #2
 80022e6:	d006      	beq.n	80022f6 <__libc_init_array+0x1a>
 80022e8:	2400      	movs	r4, #0
 80022ea:	3401      	adds	r4, #1
 80022ec:	f855 3b04 	ldr.w	r3, [r5], #4
 80022f0:	4798      	blx	r3
 80022f2:	42a6      	cmp	r6, r4
 80022f4:	d1f9      	bne.n	80022ea <__libc_init_array+0xe>
 80022f6:	4e09      	ldr	r6, [pc, #36]	; (800231c <__libc_init_array+0x40>)
 80022f8:	4d09      	ldr	r5, [pc, #36]	; (8002320 <__libc_init_array+0x44>)
 80022fa:	1b76      	subs	r6, r6, r5
 80022fc:	f004 feaa 	bl	8007054 <_init>
 8002300:	10b6      	asrs	r6, r6, #2
 8002302:	d006      	beq.n	8002312 <__libc_init_array+0x36>
 8002304:	2400      	movs	r4, #0
 8002306:	3401      	adds	r4, #1
 8002308:	f855 3b04 	ldr.w	r3, [r5], #4
 800230c:	4798      	blx	r3
 800230e:	42a6      	cmp	r6, r4
 8002310:	d1f9      	bne.n	8002306 <__libc_init_array+0x2a>
 8002312:	bd70      	pop	{r4, r5, r6, pc}
 8002314:	08007418 	.word	0x08007418
 8002318:	08007418 	.word	0x08007418
 800231c:	08007420 	.word	0x08007420
 8002320:	08007418 	.word	0x08007418

08002324 <memset>:
 8002324:	b4f0      	push	{r4, r5, r6, r7}
 8002326:	0786      	lsls	r6, r0, #30
 8002328:	d043      	beq.n	80023b2 <memset+0x8e>
 800232a:	1e54      	subs	r4, r2, #1
 800232c:	2a00      	cmp	r2, #0
 800232e:	d03e      	beq.n	80023ae <memset+0x8a>
 8002330:	b2ca      	uxtb	r2, r1
 8002332:	4603      	mov	r3, r0
 8002334:	e002      	b.n	800233c <memset+0x18>
 8002336:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 800233a:	d338      	bcc.n	80023ae <memset+0x8a>
 800233c:	f803 2b01 	strb.w	r2, [r3], #1
 8002340:	079d      	lsls	r5, r3, #30
 8002342:	d1f8      	bne.n	8002336 <memset+0x12>
 8002344:	2c03      	cmp	r4, #3
 8002346:	d92b      	bls.n	80023a0 <memset+0x7c>
 8002348:	b2cd      	uxtb	r5, r1
 800234a:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800234e:	2c0f      	cmp	r4, #15
 8002350:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002354:	d916      	bls.n	8002384 <memset+0x60>
 8002356:	f1a4 0710 	sub.w	r7, r4, #16
 800235a:	093f      	lsrs	r7, r7, #4
 800235c:	f103 0620 	add.w	r6, r3, #32
 8002360:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002364:	f103 0210 	add.w	r2, r3, #16
 8002368:	e942 5504 	strd	r5, r5, [r2, #-16]
 800236c:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002370:	3210      	adds	r2, #16
 8002372:	42b2      	cmp	r2, r6
 8002374:	d1f8      	bne.n	8002368 <memset+0x44>
 8002376:	f004 040f 	and.w	r4, r4, #15
 800237a:	3701      	adds	r7, #1
 800237c:	2c03      	cmp	r4, #3
 800237e:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002382:	d90d      	bls.n	80023a0 <memset+0x7c>
 8002384:	461e      	mov	r6, r3
 8002386:	4622      	mov	r2, r4
 8002388:	3a04      	subs	r2, #4
 800238a:	2a03      	cmp	r2, #3
 800238c:	f846 5b04 	str.w	r5, [r6], #4
 8002390:	d8fa      	bhi.n	8002388 <memset+0x64>
 8002392:	1f22      	subs	r2, r4, #4
 8002394:	f022 0203 	bic.w	r2, r2, #3
 8002398:	3204      	adds	r2, #4
 800239a:	4413      	add	r3, r2
 800239c:	f004 0403 	and.w	r4, r4, #3
 80023a0:	b12c      	cbz	r4, 80023ae <memset+0x8a>
 80023a2:	b2c9      	uxtb	r1, r1
 80023a4:	441c      	add	r4, r3
 80023a6:	f803 1b01 	strb.w	r1, [r3], #1
 80023aa:	429c      	cmp	r4, r3
 80023ac:	d1fb      	bne.n	80023a6 <memset+0x82>
 80023ae:	bcf0      	pop	{r4, r5, r6, r7}
 80023b0:	4770      	bx	lr
 80023b2:	4614      	mov	r4, r2
 80023b4:	4603      	mov	r3, r0
 80023b6:	e7c5      	b.n	8002344 <memset+0x20>

080023b8 <printf>:
 80023b8:	b40f      	push	{r0, r1, r2, r3}
 80023ba:	b500      	push	{lr}
 80023bc:	4907      	ldr	r1, [pc, #28]	; (80023dc <printf+0x24>)
 80023be:	b083      	sub	sp, #12
 80023c0:	ab04      	add	r3, sp, #16
 80023c2:	6808      	ldr	r0, [r1, #0]
 80023c4:	f853 2b04 	ldr.w	r2, [r3], #4
 80023c8:	6881      	ldr	r1, [r0, #8]
 80023ca:	9301      	str	r3, [sp, #4]
 80023cc:	f000 f860 	bl	8002490 <_vfprintf_r>
 80023d0:	b003      	add	sp, #12
 80023d2:	f85d eb04 	ldr.w	lr, [sp], #4
 80023d6:	b004      	add	sp, #16
 80023d8:	4770      	bx	lr
 80023da:	bf00      	nop
 80023dc:	20000018 	.word	0x20000018

080023e0 <_puts_r>:
 80023e0:	b570      	push	{r4, r5, r6, lr}
 80023e2:	4605      	mov	r5, r0
 80023e4:	b088      	sub	sp, #32
 80023e6:	4608      	mov	r0, r1
 80023e8:	460c      	mov	r4, r1
 80023ea:	f7fe f929 	bl	8000640 <strlen>
 80023ee:	4a22      	ldr	r2, [pc, #136]	; (8002478 <_puts_r+0x98>)
 80023f0:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80023f2:	9404      	str	r4, [sp, #16]
 80023f4:	2601      	movs	r6, #1
 80023f6:	1c44      	adds	r4, r0, #1
 80023f8:	a904      	add	r1, sp, #16
 80023fa:	9206      	str	r2, [sp, #24]
 80023fc:	2202      	movs	r2, #2
 80023fe:	9403      	str	r4, [sp, #12]
 8002400:	9005      	str	r0, [sp, #20]
 8002402:	68ac      	ldr	r4, [r5, #8]
 8002404:	9607      	str	r6, [sp, #28]
 8002406:	e9cd 1201 	strd	r1, r2, [sp, #4]
 800240a:	b31b      	cbz	r3, 8002454 <_puts_r+0x74>
 800240c:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800240e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002412:	07ce      	lsls	r6, r1, #31
 8002414:	b29a      	uxth	r2, r3
 8002416:	d401      	bmi.n	800241c <_puts_r+0x3c>
 8002418:	0590      	lsls	r0, r2, #22
 800241a:	d525      	bpl.n	8002468 <_puts_r+0x88>
 800241c:	0491      	lsls	r1, r2, #18
 800241e:	d406      	bmi.n	800242e <_puts_r+0x4e>
 8002420:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8002422:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002426:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 800242a:	81a3      	strh	r3, [r4, #12]
 800242c:	6662      	str	r2, [r4, #100]	; 0x64
 800242e:	4628      	mov	r0, r5
 8002430:	aa01      	add	r2, sp, #4
 8002432:	4621      	mov	r1, r4
 8002434:	f003 f860 	bl	80054f8 <__sfvwrite_r>
 8002438:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800243a:	2800      	cmp	r0, #0
 800243c:	bf0c      	ite	eq
 800243e:	250a      	moveq	r5, #10
 8002440:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002444:	07da      	lsls	r2, r3, #31
 8002446:	d402      	bmi.n	800244e <_puts_r+0x6e>
 8002448:	89a3      	ldrh	r3, [r4, #12]
 800244a:	059b      	lsls	r3, r3, #22
 800244c:	d506      	bpl.n	800245c <_puts_r+0x7c>
 800244e:	4628      	mov	r0, r5
 8002450:	b008      	add	sp, #32
 8002452:	bd70      	pop	{r4, r5, r6, pc}
 8002454:	4628      	mov	r0, r5
 8002456:	f002 feb9 	bl	80051cc <__sinit>
 800245a:	e7d7      	b.n	800240c <_puts_r+0x2c>
 800245c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800245e:	f003 fa07 	bl	8005870 <__retarget_lock_release_recursive>
 8002462:	4628      	mov	r0, r5
 8002464:	b008      	add	sp, #32
 8002466:	bd70      	pop	{r4, r5, r6, pc}
 8002468:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800246a:	f003 f9ff 	bl	800586c <__retarget_lock_acquire_recursive>
 800246e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002472:	b29a      	uxth	r2, r3
 8002474:	e7d2      	b.n	800241c <_puts_r+0x3c>
 8002476:	bf00      	nop
 8002478:	08007188 	.word	0x08007188

0800247c <puts>:
 800247c:	4b02      	ldr	r3, [pc, #8]	; (8002488 <puts+0xc>)
 800247e:	4601      	mov	r1, r0
 8002480:	6818      	ldr	r0, [r3, #0]
 8002482:	f7ff bfad 	b.w	80023e0 <_puts_r>
 8002486:	bf00      	nop
 8002488:	20000018 	.word	0x20000018
 800248c:	00000000 	.word	0x00000000

08002490 <_vfprintf_r>:
 8002490:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002494:	b0d7      	sub	sp, #348	; 0x15c
 8002496:	461c      	mov	r4, r3
 8002498:	4689      	mov	r9, r1
 800249a:	4617      	mov	r7, r2
 800249c:	4605      	mov	r5, r0
 800249e:	9003      	str	r0, [sp, #12]
 80024a0:	f003 f9d2 	bl	8005848 <_localeconv_r>
 80024a4:	6803      	ldr	r3, [r0, #0]
 80024a6:	9316      	str	r3, [sp, #88]	; 0x58
 80024a8:	4618      	mov	r0, r3
 80024aa:	f7fe f8c9 	bl	8000640 <strlen>
 80024ae:	9408      	str	r4, [sp, #32]
 80024b0:	9015      	str	r0, [sp, #84]	; 0x54
 80024b2:	b11d      	cbz	r5, 80024bc <_vfprintf_r+0x2c>
 80024b4:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80024b6:	2b00      	cmp	r3, #0
 80024b8:	f000 8107 	beq.w	80026ca <_vfprintf_r+0x23a>
 80024bc:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80024c0:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80024c4:	07c8      	lsls	r0, r1, #31
 80024c6:	b293      	uxth	r3, r2
 80024c8:	d402      	bmi.n	80024d0 <_vfprintf_r+0x40>
 80024ca:	0599      	lsls	r1, r3, #22
 80024cc:	f140 811f 	bpl.w	800270e <_vfprintf_r+0x27e>
 80024d0:	049e      	lsls	r6, r3, #18
 80024d2:	d40a      	bmi.n	80024ea <_vfprintf_r+0x5a>
 80024d4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80024d8:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 80024dc:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80024e0:	f8a9 300c 	strh.w	r3, [r9, #12]
 80024e4:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80024e8:	b29b      	uxth	r3, r3
 80024ea:	071d      	lsls	r5, r3, #28
 80024ec:	f140 80b2 	bpl.w	8002654 <_vfprintf_r+0x1c4>
 80024f0:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80024f4:	2a00      	cmp	r2, #0
 80024f6:	f000 80ad 	beq.w	8002654 <_vfprintf_r+0x1c4>
 80024fa:	f003 021a 	and.w	r2, r3, #26
 80024fe:	2a0a      	cmp	r2, #10
 8002500:	f000 80c9 	beq.w	8002696 <_vfprintf_r+0x206>
 8002504:	2300      	movs	r3, #0
 8002506:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002720 <_vfprintf_r+0x290>
 800250a:	9310      	str	r3, [sp, #64]	; 0x40
 800250c:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002510:	9317      	str	r3, [sp, #92]	; 0x5c
 8002512:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002516:	931b      	str	r3, [sp, #108]	; 0x6c
 8002518:	9318      	str	r3, [sp, #96]	; 0x60
 800251a:	9305      	str	r3, [sp, #20]
 800251c:	ab2d      	add	r3, sp, #180	; 0xb4
 800251e:	932a      	str	r3, [sp, #168]	; 0xa8
 8002520:	469b      	mov	fp, r3
 8002522:	783b      	ldrb	r3, [r7, #0]
 8002524:	f8cd 901c 	str.w	r9, [sp, #28]
 8002528:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800252c:	2b00      	cmp	r3, #0
 800252e:	f000 8259 	beq.w	80029e4 <_vfprintf_r+0x554>
 8002532:	2b25      	cmp	r3, #37	; 0x25
 8002534:	463c      	mov	r4, r7
 8002536:	d102      	bne.n	800253e <_vfprintf_r+0xae>
 8002538:	e01d      	b.n	8002576 <_vfprintf_r+0xe6>
 800253a:	2b25      	cmp	r3, #37	; 0x25
 800253c:	d003      	beq.n	8002546 <_vfprintf_r+0xb6>
 800253e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002542:	2b00      	cmp	r3, #0
 8002544:	d1f9      	bne.n	800253a <_vfprintf_r+0xaa>
 8002546:	1be5      	subs	r5, r4, r7
 8002548:	b18d      	cbz	r5, 800256e <_vfprintf_r+0xde>
 800254a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 800254e:	3301      	adds	r3, #1
 8002550:	442a      	add	r2, r5
 8002552:	2b07      	cmp	r3, #7
 8002554:	f8cb 7000 	str.w	r7, [fp]
 8002558:	f8cb 5004 	str.w	r5, [fp, #4]
 800255c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002560:	f300 80ca 	bgt.w	80026f8 <_vfprintf_r+0x268>
 8002564:	f10b 0b08 	add.w	fp, fp, #8
 8002568:	9b05      	ldr	r3, [sp, #20]
 800256a:	442b      	add	r3, r5
 800256c:	9305      	str	r3, [sp, #20]
 800256e:	7823      	ldrb	r3, [r4, #0]
 8002570:	2b00      	cmp	r3, #0
 8002572:	f000 8237 	beq.w	80029e4 <_vfprintf_r+0x554>
 8002576:	2300      	movs	r3, #0
 8002578:	7866      	ldrb	r6, [r4, #1]
 800257a:	9306      	str	r3, [sp, #24]
 800257c:	4698      	mov	r8, r3
 800257e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002582:	f104 0a01 	add.w	sl, r4, #1
 8002586:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 800258a:	252b      	movs	r5, #43	; 0x2b
 800258c:	f10a 0a01 	add.w	sl, sl, #1
 8002590:	f1a6 0320 	sub.w	r3, r6, #32
 8002594:	2b5a      	cmp	r3, #90	; 0x5a
 8002596:	f200 842a 	bhi.w	8002dee <_vfprintf_r+0x95e>
 800259a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800259e:	03aa      	.short	0x03aa
 80025a0:	04280428 	.word	0x04280428
 80025a4:	0428029c 	.word	0x0428029c
 80025a8:	04280428 	.word	0x04280428
 80025ac:	042802a7 	.word	0x042802a7
 80025b0:	02c60428 	.word	0x02c60428
 80025b4:	042802d2 	.word	0x042802d2
 80025b8:	02dc02d7 	.word	0x02dc02d7
 80025bc:	02f60428 	.word	0x02f60428
 80025c0:	026d026d 	.word	0x026d026d
 80025c4:	026d026d 	.word	0x026d026d
 80025c8:	026d026d 	.word	0x026d026d
 80025cc:	026d026d 	.word	0x026d026d
 80025d0:	0428026d 	.word	0x0428026d
 80025d4:	04280428 	.word	0x04280428
 80025d8:	04280428 	.word	0x04280428
 80025dc:	04280428 	.word	0x04280428
 80025e0:	042802fb 	.word	0x042802fb
 80025e4:	03f3033c 	.word	0x03f3033c
 80025e8:	02fb02fb 	.word	0x02fb02fb
 80025ec:	042802fb 	.word	0x042802fb
 80025f0:	04280428 	.word	0x04280428
 80025f4:	03ee0428 	.word	0x03ee0428
 80025f8:	04280428 	.word	0x04280428
 80025fc:	0428009a 	.word	0x0428009a
 8002600:	04280428 	.word	0x04280428
 8002604:	04280350 	.word	0x04280350
 8002608:	04280379 	.word	0x04280379
 800260c:	03900428 	.word	0x03900428
 8002610:	04280428 	.word	0x04280428
 8002614:	04280428 	.word	0x04280428
 8002618:	04280428 	.word	0x04280428
 800261c:	04280428 	.word	0x04280428
 8002620:	042802fb 	.word	0x042802fb
 8002624:	00c5033c 	.word	0x00c5033c
 8002628:	02fb02fb 	.word	0x02fb02fb
 800262c:	03d102fb 	.word	0x03d102fb
 8002630:	007000c5 	.word	0x007000c5
 8002634:	03b50428 	.word	0x03b50428
 8002638:	03c20428 	.word	0x03c20428
 800263c:	03de009c 	.word	0x03de009c
 8002640:	04280070 	.word	0x04280070
 8002644:	00720350 	.word	0x00720350
 8002648:	0428022c 	.word	0x0428022c
 800264c:	027c0428 	.word	0x027c0428
 8002650:	00720428 	.word	0x00720428
 8002654:	4649      	mov	r1, r9
 8002656:	9803      	ldr	r0, [sp, #12]
 8002658:	f001 fc9a 	bl	8003f90 <__swsetup_r>
 800265c:	b1a0      	cbz	r0, 8002688 <_vfprintf_r+0x1f8>
 800265e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002662:	07d8      	lsls	r0, r3, #31
 8002664:	d404      	bmi.n	8002670 <_vfprintf_r+0x1e0>
 8002666:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800266a:	0599      	lsls	r1, r3, #22
 800266c:	f140 83b7 	bpl.w	8002dde <_vfprintf_r+0x94e>
 8002670:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002674:	9305      	str	r3, [sp, #20]
 8002676:	9805      	ldr	r0, [sp, #20]
 8002678:	b057      	add	sp, #348	; 0x15c
 800267a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800267e:	f048 0820 	orr.w	r8, r8, #32
 8002682:	f89a 6000 	ldrb.w	r6, [sl]
 8002686:	e781      	b.n	800258c <_vfprintf_r+0xfc>
 8002688:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800268c:	f003 021a 	and.w	r2, r3, #26
 8002690:	2a0a      	cmp	r2, #10
 8002692:	f47f af37 	bne.w	8002504 <_vfprintf_r+0x74>
 8002696:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 800269a:	2a00      	cmp	r2, #0
 800269c:	f6ff af32 	blt.w	8002504 <_vfprintf_r+0x74>
 80026a0:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80026a4:	07d2      	lsls	r2, r2, #31
 80026a6:	d405      	bmi.n	80026b4 <_vfprintf_r+0x224>
 80026a8:	059b      	lsls	r3, r3, #22
 80026aa:	d403      	bmi.n	80026b4 <_vfprintf_r+0x224>
 80026ac:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80026b0:	f003 f8de 	bl	8005870 <__retarget_lock_release_recursive>
 80026b4:	4623      	mov	r3, r4
 80026b6:	463a      	mov	r2, r7
 80026b8:	4649      	mov	r1, r9
 80026ba:	9803      	ldr	r0, [sp, #12]
 80026bc:	f001 fc26 	bl	8003f0c <__sbprintf>
 80026c0:	9005      	str	r0, [sp, #20]
 80026c2:	9805      	ldr	r0, [sp, #20]
 80026c4:	b057      	add	sp, #348	; 0x15c
 80026c6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80026ca:	9803      	ldr	r0, [sp, #12]
 80026cc:	f002 fd7e 	bl	80051cc <__sinit>
 80026d0:	e6f4      	b.n	80024bc <_vfprintf_r+0x2c>
 80026d2:	f048 0810 	orr.w	r8, r8, #16
 80026d6:	f018 0f20 	tst.w	r8, #32
 80026da:	f000 836c 	beq.w	8002db6 <_vfprintf_r+0x926>
 80026de:	9c08      	ldr	r4, [sp, #32]
 80026e0:	3407      	adds	r4, #7
 80026e2:	f024 0307 	bic.w	r3, r4, #7
 80026e6:	e9d3 4500 	ldrd	r4, r5, [r3]
 80026ea:	f103 0208 	add.w	r2, r3, #8
 80026ee:	9208      	str	r2, [sp, #32]
 80026f0:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80026f4:	2200      	movs	r2, #0
 80026f6:	e18c      	b.n	8002a12 <_vfprintf_r+0x582>
 80026f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80026fa:	9907      	ldr	r1, [sp, #28]
 80026fc:	9803      	ldr	r0, [sp, #12]
 80026fe:	f004 f9f5 	bl	8006aec <__sprint_r>
 8002702:	2800      	cmp	r0, #0
 8002704:	f041 8376 	bne.w	8003df4 <_vfprintf_r+0x1964>
 8002708:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800270c:	e72c      	b.n	8002568 <_vfprintf_r+0xd8>
 800270e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002712:	f003 f8ab 	bl	800586c <__retarget_lock_acquire_recursive>
 8002716:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800271a:	b293      	uxth	r3, r2
 800271c:	e6d8      	b.n	80024d0 <_vfprintf_r+0x40>
 800271e:	bf00      	nop
	...
 8002728:	4643      	mov	r3, r8
 800272a:	069f      	lsls	r7, r3, #26
 800272c:	f140 832f 	bpl.w	8002d8e <_vfprintf_r+0x8fe>
 8002730:	9c08      	ldr	r4, [sp, #32]
 8002732:	3407      	adds	r4, #7
 8002734:	f024 0407 	bic.w	r4, r4, #7
 8002738:	e9d4 0100 	ldrd	r0, r1, [r4]
 800273c:	f104 0208 	add.w	r2, r4, #8
 8002740:	9208      	str	r2, [sp, #32]
 8002742:	4604      	mov	r4, r0
 8002744:	460d      	mov	r5, r1
 8002746:	2800      	cmp	r0, #0
 8002748:	f171 0200 	sbcs.w	r2, r1, #0
 800274c:	da05      	bge.n	800275a <_vfprintf_r+0x2ca>
 800274e:	222d      	movs	r2, #45	; 0x2d
 8002750:	4264      	negs	r4, r4
 8002752:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002756:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800275a:	aa56      	add	r2, sp, #344	; 0x158
 800275c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002760:	9204      	str	r2, [sp, #16]
 8002762:	f000 84b2 	beq.w	80030ca <_vfprintf_r+0xc3a>
 8002766:	2201      	movs	r2, #1
 8002768:	ea54 0105 	orrs.w	r1, r4, r5
 800276c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002770:	f040 8159 	bne.w	8002a26 <_vfprintf_r+0x596>
 8002774:	f1b9 0f00 	cmp.w	r9, #0
 8002778:	f040 8619 	bne.w	80033ae <_vfprintf_r+0xf1e>
 800277c:	2a00      	cmp	r2, #0
 800277e:	f040 8508 	bne.w	8003192 <_vfprintf_r+0xd02>
 8002782:	f013 0301 	ands.w	r3, r3, #1
 8002786:	af56      	add	r7, sp, #344	; 0x158
 8002788:	9309      	str	r3, [sp, #36]	; 0x24
 800278a:	d002      	beq.n	8002792 <_vfprintf_r+0x302>
 800278c:	2330      	movs	r3, #48	; 0x30
 800278e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002792:	2300      	movs	r3, #0
 8002794:	930a      	str	r3, [sp, #40]	; 0x28
 8002796:	930f      	str	r3, [sp, #60]	; 0x3c
 8002798:	9314      	str	r3, [sp, #80]	; 0x50
 800279a:	9311      	str	r3, [sp, #68]	; 0x44
 800279c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800279e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80027a2:	454b      	cmp	r3, r9
 80027a4:	bfb8      	it	lt
 80027a6:	464b      	movlt	r3, r9
 80027a8:	9304      	str	r3, [sp, #16]
 80027aa:	b112      	cbz	r2, 80027b2 <_vfprintf_r+0x322>
 80027ac:	9b04      	ldr	r3, [sp, #16]
 80027ae:	3301      	adds	r3, #1
 80027b0:	9304      	str	r3, [sp, #16]
 80027b2:	f018 0302 	ands.w	r3, r8, #2
 80027b6:	930b      	str	r3, [sp, #44]	; 0x2c
 80027b8:	d002      	beq.n	80027c0 <_vfprintf_r+0x330>
 80027ba:	9b04      	ldr	r3, [sp, #16]
 80027bc:	3302      	adds	r3, #2
 80027be:	9304      	str	r3, [sp, #16]
 80027c0:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 80027c4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80027c6:	930e      	str	r3, [sp, #56]	; 0x38
 80027c8:	d13f      	bne.n	800284a <_vfprintf_r+0x3ba>
 80027ca:	9b06      	ldr	r3, [sp, #24]
 80027cc:	9904      	ldr	r1, [sp, #16]
 80027ce:	1a5d      	subs	r5, r3, r1
 80027d0:	2d00      	cmp	r5, #0
 80027d2:	dd3a      	ble.n	800284a <_vfprintf_r+0x3ba>
 80027d4:	2d10      	cmp	r5, #16
 80027d6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80027d8:	dd29      	ble.n	800282e <_vfprintf_r+0x39e>
 80027da:	4659      	mov	r1, fp
 80027dc:	4620      	mov	r0, r4
 80027de:	9620      	str	r6, [sp, #128]	; 0x80
 80027e0:	2310      	movs	r3, #16
 80027e2:	9c03      	ldr	r4, [sp, #12]
 80027e4:	9e07      	ldr	r6, [sp, #28]
 80027e6:	46bb      	mov	fp, r7
 80027e8:	e004      	b.n	80027f4 <_vfprintf_r+0x364>
 80027ea:	3d10      	subs	r5, #16
 80027ec:	2d10      	cmp	r5, #16
 80027ee:	f101 0108 	add.w	r1, r1, #8
 80027f2:	dd18      	ble.n	8002826 <_vfprintf_r+0x396>
 80027f4:	3201      	adds	r2, #1
 80027f6:	4fba      	ldr	r7, [pc, #744]	; (8002ae0 <_vfprintf_r+0x650>)
 80027f8:	3010      	adds	r0, #16
 80027fa:	2a07      	cmp	r2, #7
 80027fc:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002800:	e9c1 7300 	strd	r7, r3, [r1]
 8002804:	ddf1      	ble.n	80027ea <_vfprintf_r+0x35a>
 8002806:	aa2a      	add	r2, sp, #168	; 0xa8
 8002808:	4631      	mov	r1, r6
 800280a:	4620      	mov	r0, r4
 800280c:	930c      	str	r3, [sp, #48]	; 0x30
 800280e:	f004 f96d 	bl	8006aec <__sprint_r>
 8002812:	2800      	cmp	r0, #0
 8002814:	f040 843d 	bne.w	8003092 <_vfprintf_r+0xc02>
 8002818:	3d10      	subs	r5, #16
 800281a:	2d10      	cmp	r5, #16
 800281c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002820:	a92d      	add	r1, sp, #180	; 0xb4
 8002822:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002824:	dce6      	bgt.n	80027f4 <_vfprintf_r+0x364>
 8002826:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002828:	465f      	mov	r7, fp
 800282a:	4604      	mov	r4, r0
 800282c:	468b      	mov	fp, r1
 800282e:	3201      	adds	r2, #1
 8002830:	4bab      	ldr	r3, [pc, #684]	; (8002ae0 <_vfprintf_r+0x650>)
 8002832:	442c      	add	r4, r5
 8002834:	2a07      	cmp	r2, #7
 8002836:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800283a:	e9cb 3500 	strd	r3, r5, [fp]
 800283e:	f300 84ff 	bgt.w	8003240 <_vfprintf_r+0xdb0>
 8002842:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002846:	f10b 0b08 	add.w	fp, fp, #8
 800284a:	b172      	cbz	r2, 800286a <_vfprintf_r+0x3da>
 800284c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800284e:	3201      	adds	r2, #1
 8002850:	3401      	adds	r4, #1
 8002852:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002856:	2101      	movs	r1, #1
 8002858:	2a07      	cmp	r2, #7
 800285a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800285e:	e9cb 0100 	strd	r0, r1, [fp]
 8002862:	f300 8418 	bgt.w	8003096 <_vfprintf_r+0xc06>
 8002866:	f10b 0b08 	add.w	fp, fp, #8
 800286a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800286c:	b16b      	cbz	r3, 800288a <_vfprintf_r+0x3fa>
 800286e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002870:	3301      	adds	r3, #1
 8002872:	3402      	adds	r4, #2
 8002874:	a923      	add	r1, sp, #140	; 0x8c
 8002876:	2202      	movs	r2, #2
 8002878:	2b07      	cmp	r3, #7
 800287a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800287e:	e9cb 1200 	strd	r1, r2, [fp]
 8002882:	f300 8415 	bgt.w	80030b0 <_vfprintf_r+0xc20>
 8002886:	f10b 0b08 	add.w	fp, fp, #8
 800288a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800288c:	2b80      	cmp	r3, #128	; 0x80
 800288e:	f000 8331 	beq.w	8002ef4 <_vfprintf_r+0xa64>
 8002892:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002894:	eba9 0503 	sub.w	r5, r9, r3
 8002898:	2d00      	cmp	r5, #0
 800289a:	dd37      	ble.n	800290c <_vfprintf_r+0x47c>
 800289c:	2d10      	cmp	r5, #16
 800289e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80028a0:	4b90      	ldr	r3, [pc, #576]	; (8002ae4 <_vfprintf_r+0x654>)
 80028a2:	dd28      	ble.n	80028f6 <_vfprintf_r+0x466>
 80028a4:	4659      	mov	r1, fp
 80028a6:	4620      	mov	r0, r4
 80028a8:	46bb      	mov	fp, r7
 80028aa:	f04f 0910 	mov.w	r9, #16
 80028ae:	4637      	mov	r7, r6
 80028b0:	461c      	mov	r4, r3
 80028b2:	9e07      	ldr	r6, [sp, #28]
 80028b4:	e004      	b.n	80028c0 <_vfprintf_r+0x430>
 80028b6:	3d10      	subs	r5, #16
 80028b8:	2d10      	cmp	r5, #16
 80028ba:	f101 0108 	add.w	r1, r1, #8
 80028be:	dd15      	ble.n	80028ec <_vfprintf_r+0x45c>
 80028c0:	3201      	adds	r2, #1
 80028c2:	3010      	adds	r0, #16
 80028c4:	2a07      	cmp	r2, #7
 80028c6:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80028ca:	e9c1 4900 	strd	r4, r9, [r1]
 80028ce:	ddf2      	ble.n	80028b6 <_vfprintf_r+0x426>
 80028d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80028d2:	4631      	mov	r1, r6
 80028d4:	9803      	ldr	r0, [sp, #12]
 80028d6:	f004 f909 	bl	8006aec <__sprint_r>
 80028da:	2800      	cmp	r0, #0
 80028dc:	f040 83d9 	bne.w	8003092 <_vfprintf_r+0xc02>
 80028e0:	3d10      	subs	r5, #16
 80028e2:	2d10      	cmp	r5, #16
 80028e4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80028e8:	a92d      	add	r1, sp, #180	; 0xb4
 80028ea:	dce9      	bgt.n	80028c0 <_vfprintf_r+0x430>
 80028ec:	463e      	mov	r6, r7
 80028ee:	4623      	mov	r3, r4
 80028f0:	465f      	mov	r7, fp
 80028f2:	4604      	mov	r4, r0
 80028f4:	468b      	mov	fp, r1
 80028f6:	3201      	adds	r2, #1
 80028f8:	442c      	add	r4, r5
 80028fa:	2a07      	cmp	r2, #7
 80028fc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002900:	e9cb 3500 	strd	r3, r5, [fp]
 8002904:	f300 83ef 	bgt.w	80030e6 <_vfprintf_r+0xc56>
 8002908:	f10b 0b08 	add.w	fp, fp, #8
 800290c:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002910:	f040 8280 	bne.w	8002e14 <_vfprintf_r+0x984>
 8002914:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002916:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002918:	f8cb 7000 	str.w	r7, [fp]
 800291c:	3301      	adds	r3, #1
 800291e:	4414      	add	r4, r2
 8002920:	2b07      	cmp	r3, #7
 8002922:	942c      	str	r4, [sp, #176]	; 0xb0
 8002924:	f8cb 2004 	str.w	r2, [fp, #4]
 8002928:	932b      	str	r3, [sp, #172]	; 0xac
 800292a:	f300 8392 	bgt.w	8003052 <_vfprintf_r+0xbc2>
 800292e:	f10b 0b08 	add.w	fp, fp, #8
 8002932:	f018 0f04 	tst.w	r8, #4
 8002936:	d03b      	beq.n	80029b0 <_vfprintf_r+0x520>
 8002938:	9b06      	ldr	r3, [sp, #24]
 800293a:	9a04      	ldr	r2, [sp, #16]
 800293c:	1a9d      	subs	r5, r3, r2
 800293e:	2d00      	cmp	r5, #0
 8002940:	dd36      	ble.n	80029b0 <_vfprintf_r+0x520>
 8002942:	2d10      	cmp	r5, #16
 8002944:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002946:	dd21      	ble.n	800298c <_vfprintf_r+0x4fc>
 8002948:	2610      	movs	r6, #16
 800294a:	9f03      	ldr	r7, [sp, #12]
 800294c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002950:	e004      	b.n	800295c <_vfprintf_r+0x4cc>
 8002952:	3d10      	subs	r5, #16
 8002954:	2d10      	cmp	r5, #16
 8002956:	f10b 0b08 	add.w	fp, fp, #8
 800295a:	dd17      	ble.n	800298c <_vfprintf_r+0x4fc>
 800295c:	3301      	adds	r3, #1
 800295e:	4a60      	ldr	r2, [pc, #384]	; (8002ae0 <_vfprintf_r+0x650>)
 8002960:	3410      	adds	r4, #16
 8002962:	2b07      	cmp	r3, #7
 8002964:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002968:	e9cb 2600 	strd	r2, r6, [fp]
 800296c:	ddf1      	ble.n	8002952 <_vfprintf_r+0x4c2>
 800296e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002970:	4641      	mov	r1, r8
 8002972:	4638      	mov	r0, r7
 8002974:	f004 f8ba 	bl	8006aec <__sprint_r>
 8002978:	2800      	cmp	r0, #0
 800297a:	f040 856c 	bne.w	8003456 <_vfprintf_r+0xfc6>
 800297e:	3d10      	subs	r5, #16
 8002980:	2d10      	cmp	r5, #16
 8002982:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002986:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800298a:	dce7      	bgt.n	800295c <_vfprintf_r+0x4cc>
 800298c:	3301      	adds	r3, #1
 800298e:	4a54      	ldr	r2, [pc, #336]	; (8002ae0 <_vfprintf_r+0x650>)
 8002990:	442c      	add	r4, r5
 8002992:	2b07      	cmp	r3, #7
 8002994:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002998:	e9cb 2500 	strd	r2, r5, [fp]
 800299c:	dd08      	ble.n	80029b0 <_vfprintf_r+0x520>
 800299e:	aa2a      	add	r2, sp, #168	; 0xa8
 80029a0:	9907      	ldr	r1, [sp, #28]
 80029a2:	9803      	ldr	r0, [sp, #12]
 80029a4:	f004 f8a2 	bl	8006aec <__sprint_r>
 80029a8:	2800      	cmp	r0, #0
 80029aa:	f040 82e9 	bne.w	8002f80 <_vfprintf_r+0xaf0>
 80029ae:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80029b0:	9904      	ldr	r1, [sp, #16]
 80029b2:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 80029b6:	428a      	cmp	r2, r1
 80029b8:	bfac      	ite	ge
 80029ba:	189b      	addge	r3, r3, r2
 80029bc:	185b      	addlt	r3, r3, r1
 80029be:	9305      	str	r3, [sp, #20]
 80029c0:	2c00      	cmp	r4, #0
 80029c2:	f040 82d5 	bne.w	8002f70 <_vfprintf_r+0xae0>
 80029c6:	2300      	movs	r3, #0
 80029c8:	932b      	str	r3, [sp, #172]	; 0xac
 80029ca:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80029cc:	b11b      	cbz	r3, 80029d6 <_vfprintf_r+0x546>
 80029ce:	990a      	ldr	r1, [sp, #40]	; 0x28
 80029d0:	9803      	ldr	r0, [sp, #12]
 80029d2:	f002 fc9d 	bl	8005310 <_free_r>
 80029d6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80029da:	4657      	mov	r7, sl
 80029dc:	783b      	ldrb	r3, [r7, #0]
 80029de:	2b00      	cmp	r3, #0
 80029e0:	f47f ada7 	bne.w	8002532 <_vfprintf_r+0xa2>
 80029e4:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80029e6:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80029ea:	2b00      	cmp	r3, #0
 80029ec:	f041 80e7 	bne.w	8003bbe <_vfprintf_r+0x172e>
 80029f0:	2300      	movs	r3, #0
 80029f2:	932b      	str	r3, [sp, #172]	; 0xac
 80029f4:	e2cb      	b.n	8002f8e <_vfprintf_r+0xafe>
 80029f6:	4643      	mov	r3, r8
 80029f8:	069a      	lsls	r2, r3, #26
 80029fa:	f140 814e 	bpl.w	8002c9a <_vfprintf_r+0x80a>
 80029fe:	9c08      	ldr	r4, [sp, #32]
 8002a00:	3407      	adds	r4, #7
 8002a02:	f024 0207 	bic.w	r2, r4, #7
 8002a06:	f102 0108 	add.w	r1, r2, #8
 8002a0a:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002a0e:	9108      	str	r1, [sp, #32]
 8002a10:	2201      	movs	r2, #1
 8002a12:	2100      	movs	r1, #0
 8002a14:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002a18:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002a1c:	a956      	add	r1, sp, #344	; 0x158
 8002a1e:	9104      	str	r1, [sp, #16]
 8002a20:	f47f aea2 	bne.w	8002768 <_vfprintf_r+0x2d8>
 8002a24:	4698      	mov	r8, r3
 8002a26:	2a01      	cmp	r2, #1
 8002a28:	f000 8350 	beq.w	80030cc <_vfprintf_r+0xc3c>
 8002a2c:	2a02      	cmp	r2, #2
 8002a2e:	f000 831b 	beq.w	8003068 <_vfprintf_r+0xbd8>
 8002a32:	a956      	add	r1, sp, #344	; 0x158
 8002a34:	e000      	b.n	8002a38 <_vfprintf_r+0x5a8>
 8002a36:	4639      	mov	r1, r7
 8002a38:	08e2      	lsrs	r2, r4, #3
 8002a3a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002a3e:	08e8      	lsrs	r0, r5, #3
 8002a40:	f004 0307 	and.w	r3, r4, #7
 8002a44:	4605      	mov	r5, r0
 8002a46:	4614      	mov	r4, r2
 8002a48:	3330      	adds	r3, #48	; 0x30
 8002a4a:	ea54 0205 	orrs.w	r2, r4, r5
 8002a4e:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002a52:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002a56:	d1ee      	bne.n	8002a36 <_vfprintf_r+0x5a6>
 8002a58:	f018 0f01 	tst.w	r8, #1
 8002a5c:	f000 8314 	beq.w	8003088 <_vfprintf_r+0xbf8>
 8002a60:	2b30      	cmp	r3, #48	; 0x30
 8002a62:	f000 8311 	beq.w	8003088 <_vfprintf_r+0xbf8>
 8002a66:	9a04      	ldr	r2, [sp, #16]
 8002a68:	3902      	subs	r1, #2
 8002a6a:	2330      	movs	r3, #48	; 0x30
 8002a6c:	1a52      	subs	r2, r2, r1
 8002a6e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002a72:	9209      	str	r2, [sp, #36]	; 0x24
 8002a74:	460f      	mov	r7, r1
 8002a76:	e68c      	b.n	8002792 <_vfprintf_r+0x302>
 8002a78:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a7c:	2200      	movs	r2, #0
 8002a7e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002a82:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002a86:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002a8a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a8e:	2b09      	cmp	r3, #9
 8002a90:	d9f5      	bls.n	8002a7e <_vfprintf_r+0x5ee>
 8002a92:	9206      	str	r2, [sp, #24]
 8002a94:	e57c      	b.n	8002590 <_vfprintf_r+0x100>
 8002a96:	4b14      	ldr	r3, [pc, #80]	; (8002ae8 <_vfprintf_r+0x658>)
 8002a98:	9317      	str	r3, [sp, #92]	; 0x5c
 8002a9a:	f018 0f20 	tst.w	r8, #32
 8002a9e:	f000 8114 	beq.w	8002cca <_vfprintf_r+0x83a>
 8002aa2:	9c08      	ldr	r4, [sp, #32]
 8002aa4:	3407      	adds	r4, #7
 8002aa6:	f024 0307 	bic.w	r3, r4, #7
 8002aaa:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002aae:	f103 0208 	add.w	r2, r3, #8
 8002ab2:	9208      	str	r2, [sp, #32]
 8002ab4:	f018 0f01 	tst.w	r8, #1
 8002ab8:	d009      	beq.n	8002ace <_vfprintf_r+0x63e>
 8002aba:	ea54 0305 	orrs.w	r3, r4, r5
 8002abe:	d006      	beq.n	8002ace <_vfprintf_r+0x63e>
 8002ac0:	2330      	movs	r3, #48	; 0x30
 8002ac2:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002ac6:	f048 0802 	orr.w	r8, r8, #2
 8002aca:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002ace:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002ad2:	2202      	movs	r2, #2
 8002ad4:	e79d      	b.n	8002a12 <_vfprintf_r+0x582>
 8002ad6:	f048 0801 	orr.w	r8, r8, #1
 8002ada:	f89a 6000 	ldrb.w	r6, [sl]
 8002ade:	e555      	b.n	800258c <_vfprintf_r+0xfc>
 8002ae0:	080071d0 	.word	0x080071d0
 8002ae4:	080071e0 	.word	0x080071e0
 8002ae8:	0800719c 	.word	0x0800719c
 8002aec:	9e03      	ldr	r6, [sp, #12]
 8002aee:	4630      	mov	r0, r6
 8002af0:	f002 feaa 	bl	8005848 <_localeconv_r>
 8002af4:	6843      	ldr	r3, [r0, #4]
 8002af6:	9318      	str	r3, [sp, #96]	; 0x60
 8002af8:	4618      	mov	r0, r3
 8002afa:	f7fd fda1 	bl	8000640 <strlen>
 8002afe:	901b      	str	r0, [sp, #108]	; 0x6c
 8002b00:	4604      	mov	r4, r0
 8002b02:	4630      	mov	r0, r6
 8002b04:	f002 fea0 	bl	8005848 <_localeconv_r>
 8002b08:	6883      	ldr	r3, [r0, #8]
 8002b0a:	931a      	str	r3, [sp, #104]	; 0x68
 8002b0c:	2c00      	cmp	r4, #0
 8002b0e:	f43f adb8 	beq.w	8002682 <_vfprintf_r+0x1f2>
 8002b12:	f89a 6000 	ldrb.w	r6, [sl]
 8002b16:	2b00      	cmp	r3, #0
 8002b18:	f43f ad38 	beq.w	800258c <_vfprintf_r+0xfc>
 8002b1c:	781b      	ldrb	r3, [r3, #0]
 8002b1e:	2b00      	cmp	r3, #0
 8002b20:	f43f ad34 	beq.w	800258c <_vfprintf_r+0xfc>
 8002b24:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002b28:	e530      	b.n	800258c <_vfprintf_r+0xfc>
 8002b2a:	9b08      	ldr	r3, [sp, #32]
 8002b2c:	f89a 6000 	ldrb.w	r6, [sl]
 8002b30:	681a      	ldr	r2, [r3, #0]
 8002b32:	9206      	str	r2, [sp, #24]
 8002b34:	2a00      	cmp	r2, #0
 8002b36:	f103 0304 	add.w	r3, r3, #4
 8002b3a:	f2c0 8697 	blt.w	800386c <_vfprintf_r+0x13dc>
 8002b3e:	9308      	str	r3, [sp, #32]
 8002b40:	e524      	b.n	800258c <_vfprintf_r+0xfc>
 8002b42:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002b46:	f89a 6000 	ldrb.w	r6, [sl]
 8002b4a:	e51f      	b.n	800258c <_vfprintf_r+0xfc>
 8002b4c:	f89a 6000 	ldrb.w	r6, [sl]
 8002b50:	f048 0804 	orr.w	r8, r8, #4
 8002b54:	e51a      	b.n	800258c <_vfprintf_r+0xfc>
 8002b56:	f89a 6000 	ldrb.w	r6, [sl]
 8002b5a:	2e2a      	cmp	r6, #42	; 0x2a
 8002b5c:	f10a 0201 	add.w	r2, sl, #1
 8002b60:	f001 81b0 	beq.w	8003ec4 <_vfprintf_r+0x1a34>
 8002b64:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b68:	2b09      	cmp	r3, #9
 8002b6a:	4692      	mov	sl, r2
 8002b6c:	f04f 0900 	mov.w	r9, #0
 8002b70:	f63f ad0e 	bhi.w	8002590 <_vfprintf_r+0x100>
 8002b74:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002b78:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002b7c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002b80:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b84:	2b09      	cmp	r3, #9
 8002b86:	d9f5      	bls.n	8002b74 <_vfprintf_r+0x6e4>
 8002b88:	e502      	b.n	8002590 <_vfprintf_r+0x100>
 8002b8a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002b8e:	f89a 6000 	ldrb.w	r6, [sl]
 8002b92:	e4fb      	b.n	800258c <_vfprintf_r+0xfc>
 8002b94:	9c08      	ldr	r4, [sp, #32]
 8002b96:	3407      	adds	r4, #7
 8002b98:	f024 0407 	bic.w	r4, r4, #7
 8002b9c:	ed94 7b00 	vldr	d7, [r4]
 8002ba0:	ec52 1b17 	vmov	r1, r2, d7
 8002ba4:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002ba8:	931d      	str	r3, [sp, #116]	; 0x74
 8002baa:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002bae:	3408      	adds	r4, #8
 8002bb0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002bb4:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002bb8:	4bba      	ldr	r3, [pc, #744]	; (8002ea4 <_vfprintf_r+0xa14>)
 8002bba:	9408      	str	r4, [sp, #32]
 8002bbc:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002bc0:	f7fe fa54 	bl	800106c <__aeabi_dcmpun>
 8002bc4:	2800      	cmp	r0, #0
 8002bc6:	f040 846f 	bne.w	80034a8 <_vfprintf_r+0x1018>
 8002bca:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002bce:	4bb5      	ldr	r3, [pc, #724]	; (8002ea4 <_vfprintf_r+0xa14>)
 8002bd0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002bd4:	f7fe fa2c 	bl	8001030 <__aeabi_dcmple>
 8002bd8:	2800      	cmp	r0, #0
 8002bda:	f040 8465 	bne.w	80034a8 <_vfprintf_r+0x1018>
 8002bde:	2200      	movs	r2, #0
 8002be0:	2300      	movs	r3, #0
 8002be2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002be6:	f7fe fa19 	bl	800101c <__aeabi_dcmplt>
 8002bea:	2800      	cmp	r0, #0
 8002bec:	f040 855b 	bne.w	80036a6 <_vfprintf_r+0x1216>
 8002bf0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002bf4:	4fac      	ldr	r7, [pc, #688]	; (8002ea8 <_vfprintf_r+0xa18>)
 8002bf6:	4bad      	ldr	r3, [pc, #692]	; (8002eac <_vfprintf_r+0xa1c>)
 8002bf8:	2000      	movs	r0, #0
 8002bfa:	2103      	movs	r1, #3
 8002bfc:	9104      	str	r1, [sp, #16]
 8002bfe:	900a      	str	r0, [sp, #40]	; 0x28
 8002c00:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002c04:	2e47      	cmp	r6, #71	; 0x47
 8002c06:	bfd8      	it	le
 8002c08:	461f      	movle	r7, r3
 8002c0a:	9109      	str	r1, [sp, #36]	; 0x24
 8002c0c:	4681      	mov	r9, r0
 8002c0e:	900f      	str	r0, [sp, #60]	; 0x3c
 8002c10:	9014      	str	r0, [sp, #80]	; 0x50
 8002c12:	9011      	str	r0, [sp, #68]	; 0x44
 8002c14:	e5c9      	b.n	80027aa <_vfprintf_r+0x31a>
 8002c16:	9808      	ldr	r0, [sp, #32]
 8002c18:	2300      	movs	r3, #0
 8002c1a:	6801      	ldr	r1, [r0, #0]
 8002c1c:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002c20:	461a      	mov	r2, r3
 8002c22:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002c26:	2301      	movs	r3, #1
 8002c28:	1d01      	adds	r1, r0, #4
 8002c2a:	9304      	str	r3, [sp, #16]
 8002c2c:	920a      	str	r2, [sp, #40]	; 0x28
 8002c2e:	4691      	mov	r9, r2
 8002c30:	920f      	str	r2, [sp, #60]	; 0x3c
 8002c32:	9214      	str	r2, [sp, #80]	; 0x50
 8002c34:	9211      	str	r2, [sp, #68]	; 0x44
 8002c36:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002c3a:	af3d      	add	r7, sp, #244	; 0xf4
 8002c3c:	e5b9      	b.n	80027b2 <_vfprintf_r+0x322>
 8002c3e:	9b08      	ldr	r3, [sp, #32]
 8002c40:	681f      	ldr	r7, [r3, #0]
 8002c42:	2500      	movs	r5, #0
 8002c44:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002c48:	1d1c      	adds	r4, r3, #4
 8002c4a:	2f00      	cmp	r7, #0
 8002c4c:	f000 8639 	beq.w	80038c2 <_vfprintf_r+0x1432>
 8002c50:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002c54:	f000 8711 	beq.w	8003a7a <_vfprintf_r+0x15ea>
 8002c58:	464a      	mov	r2, r9
 8002c5a:	4629      	mov	r1, r5
 8002c5c:	4638      	mov	r0, r7
 8002c5e:	f7fd fd5f 	bl	8000720 <memchr>
 8002c62:	900a      	str	r0, [sp, #40]	; 0x28
 8002c64:	2800      	cmp	r0, #0
 8002c66:	f000 85e7 	beq.w	8003838 <_vfprintf_r+0x13a8>
 8002c6a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002c6c:	1bdb      	subs	r3, r3, r7
 8002c6e:	9309      	str	r3, [sp, #36]	; 0x24
 8002c70:	46a9      	mov	r9, r5
 8002c72:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002c76:	9408      	str	r4, [sp, #32]
 8002c78:	9304      	str	r3, [sp, #16]
 8002c7a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002c7e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002c82:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002c86:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002c8a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002c8e:	e58c      	b.n	80027aa <_vfprintf_r+0x31a>
 8002c90:	f048 0310 	orr.w	r3, r8, #16
 8002c94:	069a      	lsls	r2, r3, #26
 8002c96:	f53f aeb2 	bmi.w	80029fe <_vfprintf_r+0x56e>
 8002c9a:	9a08      	ldr	r2, [sp, #32]
 8002c9c:	06df      	lsls	r7, r3, #27
 8002c9e:	f102 0104 	add.w	r1, r2, #4
 8002ca2:	f100 837e 	bmi.w	80033a2 <_vfprintf_r+0xf12>
 8002ca6:	065d      	lsls	r5, r3, #25
 8002ca8:	9a08      	ldr	r2, [sp, #32]
 8002caa:	f100 84e4 	bmi.w	8003676 <_vfprintf_r+0x11e6>
 8002cae:	059c      	lsls	r4, r3, #22
 8002cb0:	f140 8377 	bpl.w	80033a2 <_vfprintf_r+0xf12>
 8002cb4:	7814      	ldrb	r4, [r2, #0]
 8002cb6:	9108      	str	r1, [sp, #32]
 8002cb8:	2500      	movs	r5, #0
 8002cba:	2201      	movs	r2, #1
 8002cbc:	e6a9      	b.n	8002a12 <_vfprintf_r+0x582>
 8002cbe:	4b7c      	ldr	r3, [pc, #496]	; (8002eb0 <_vfprintf_r+0xa20>)
 8002cc0:	9317      	str	r3, [sp, #92]	; 0x5c
 8002cc2:	f018 0f20 	tst.w	r8, #32
 8002cc6:	f47f aeec 	bne.w	8002aa2 <_vfprintf_r+0x612>
 8002cca:	9a08      	ldr	r2, [sp, #32]
 8002ccc:	f018 0f10 	tst.w	r8, #16
 8002cd0:	f102 0304 	add.w	r3, r2, #4
 8002cd4:	f040 8354 	bne.w	8003380 <_vfprintf_r+0xef0>
 8002cd8:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002cdc:	9a08      	ldr	r2, [sp, #32]
 8002cde:	f040 84d0 	bne.w	8003682 <_vfprintf_r+0x11f2>
 8002ce2:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002ce6:	f000 834b 	beq.w	8003380 <_vfprintf_r+0xef0>
 8002cea:	7814      	ldrb	r4, [r2, #0]
 8002cec:	9308      	str	r3, [sp, #32]
 8002cee:	2500      	movs	r5, #0
 8002cf0:	e6e0      	b.n	8002ab4 <_vfprintf_r+0x624>
 8002cf2:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002cf6:	f89a 6000 	ldrb.w	r6, [sl]
 8002cfa:	2b00      	cmp	r3, #0
 8002cfc:	f47f ac46 	bne.w	800258c <_vfprintf_r+0xfc>
 8002d00:	2320      	movs	r3, #32
 8002d02:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002d06:	e441      	b.n	800258c <_vfprintf_r+0xfc>
 8002d08:	f89a 6000 	ldrb.w	r6, [sl]
 8002d0c:	2e6c      	cmp	r6, #108	; 0x6c
 8002d0e:	bf03      	ittte	eq
 8002d10:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002d14:	f048 0820 	orreq.w	r8, r8, #32
 8002d18:	f10a 0a01 	addeq.w	sl, sl, #1
 8002d1c:	f048 0810 	orrne.w	r8, r8, #16
 8002d20:	e434      	b.n	800258c <_vfprintf_r+0xfc>
 8002d22:	9a08      	ldr	r2, [sp, #32]
 8002d24:	f018 0f20 	tst.w	r8, #32
 8002d28:	f852 3b04 	ldr.w	r3, [r2], #4
 8002d2c:	9208      	str	r2, [sp, #32]
 8002d2e:	f000 83a1 	beq.w	8003474 <_vfprintf_r+0xfe4>
 8002d32:	9a05      	ldr	r2, [sp, #20]
 8002d34:	4610      	mov	r0, r2
 8002d36:	17d1      	asrs	r1, r2, #31
 8002d38:	e9c3 0100 	strd	r0, r1, [r3]
 8002d3c:	4657      	mov	r7, sl
 8002d3e:	e64d      	b.n	80029dc <_vfprintf_r+0x54c>
 8002d40:	f89a 6000 	ldrb.w	r6, [sl]
 8002d44:	2e68      	cmp	r6, #104	; 0x68
 8002d46:	bf03      	ittte	eq
 8002d48:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002d4c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002d50:	f10a 0a01 	addeq.w	sl, sl, #1
 8002d54:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002d58:	e418      	b.n	800258c <_vfprintf_r+0xfc>
 8002d5a:	9908      	ldr	r1, [sp, #32]
 8002d5c:	4b55      	ldr	r3, [pc, #340]	; (8002eb4 <_vfprintf_r+0xa24>)
 8002d5e:	680c      	ldr	r4, [r1, #0]
 8002d60:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d62:	f647 0230 	movw	r2, #30768	; 0x7830
 8002d66:	3104      	adds	r1, #4
 8002d68:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002d6c:	f048 0302 	orr.w	r3, r8, #2
 8002d70:	9108      	str	r1, [sp, #32]
 8002d72:	2500      	movs	r5, #0
 8002d74:	2202      	movs	r2, #2
 8002d76:	2678      	movs	r6, #120	; 0x78
 8002d78:	e64b      	b.n	8002a12 <_vfprintf_r+0x582>
 8002d7a:	f048 0808 	orr.w	r8, r8, #8
 8002d7e:	f89a 6000 	ldrb.w	r6, [sl]
 8002d82:	e403      	b.n	800258c <_vfprintf_r+0xfc>
 8002d84:	f048 0310 	orr.w	r3, r8, #16
 8002d88:	069f      	lsls	r7, r3, #26
 8002d8a:	f53f acd1 	bmi.w	8002730 <_vfprintf_r+0x2a0>
 8002d8e:	9908      	ldr	r1, [sp, #32]
 8002d90:	06dd      	lsls	r5, r3, #27
 8002d92:	f101 0204 	add.w	r2, r1, #4
 8002d96:	f100 82fd 	bmi.w	8003394 <_vfprintf_r+0xf04>
 8002d9a:	065c      	lsls	r4, r3, #25
 8002d9c:	9908      	ldr	r1, [sp, #32]
 8002d9e:	f100 8475 	bmi.w	800368c <_vfprintf_r+0x11fc>
 8002da2:	0598      	lsls	r0, r3, #22
 8002da4:	f140 82f6 	bpl.w	8003394 <_vfprintf_r+0xf04>
 8002da8:	f991 4000 	ldrsb.w	r4, [r1]
 8002dac:	9208      	str	r2, [sp, #32]
 8002dae:	17e5      	asrs	r5, r4, #31
 8002db0:	4620      	mov	r0, r4
 8002db2:	4629      	mov	r1, r5
 8002db4:	e4c7      	b.n	8002746 <_vfprintf_r+0x2b6>
 8002db6:	9a08      	ldr	r2, [sp, #32]
 8002db8:	f018 0f10 	tst.w	r8, #16
 8002dbc:	f102 0304 	add.w	r3, r2, #4
 8002dc0:	f040 82e3 	bne.w	800338a <_vfprintf_r+0xefa>
 8002dc4:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002dc8:	9a08      	ldr	r2, [sp, #32]
 8002dca:	f040 8467 	bne.w	800369c <_vfprintf_r+0x120c>
 8002dce:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002dd2:	f000 82da 	beq.w	800338a <_vfprintf_r+0xefa>
 8002dd6:	7814      	ldrb	r4, [r2, #0]
 8002dd8:	9308      	str	r3, [sp, #32]
 8002dda:	2500      	movs	r5, #0
 8002ddc:	e488      	b.n	80026f0 <_vfprintf_r+0x260>
 8002dde:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002de2:	f002 fd45 	bl	8005870 <__retarget_lock_release_recursive>
 8002de6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002dea:	9305      	str	r3, [sp, #20]
 8002dec:	e443      	b.n	8002676 <_vfprintf_r+0x1e6>
 8002dee:	2e00      	cmp	r6, #0
 8002df0:	f43f adf8 	beq.w	80029e4 <_vfprintf_r+0x554>
 8002df4:	2300      	movs	r3, #0
 8002df6:	2101      	movs	r1, #1
 8002df8:	461a      	mov	r2, r3
 8002dfa:	9104      	str	r1, [sp, #16]
 8002dfc:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002e00:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002e04:	930a      	str	r3, [sp, #40]	; 0x28
 8002e06:	4699      	mov	r9, r3
 8002e08:	930f      	str	r3, [sp, #60]	; 0x3c
 8002e0a:	9314      	str	r3, [sp, #80]	; 0x50
 8002e0c:	9311      	str	r3, [sp, #68]	; 0x44
 8002e0e:	9109      	str	r1, [sp, #36]	; 0x24
 8002e10:	af3d      	add	r7, sp, #244	; 0xf4
 8002e12:	e4ce      	b.n	80027b2 <_vfprintf_r+0x322>
 8002e14:	2e65      	cmp	r6, #101	; 0x65
 8002e16:	f340 80ca 	ble.w	8002fae <_vfprintf_r+0xb1e>
 8002e1a:	2200      	movs	r2, #0
 8002e1c:	2300      	movs	r3, #0
 8002e1e:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002e22:	f7fe f8f1 	bl	8001008 <__aeabi_dcmpeq>
 8002e26:	2800      	cmp	r0, #0
 8002e28:	f000 8169 	beq.w	80030fe <_vfprintf_r+0xc6e>
 8002e2c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e2e:	4a22      	ldr	r2, [pc, #136]	; (8002eb8 <_vfprintf_r+0xa28>)
 8002e30:	f8cb 2000 	str.w	r2, [fp]
 8002e34:	3301      	adds	r3, #1
 8002e36:	3401      	adds	r4, #1
 8002e38:	2201      	movs	r2, #1
 8002e3a:	2b07      	cmp	r3, #7
 8002e3c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e40:	f8cb 2004 	str.w	r2, [fp, #4]
 8002e44:	f300 8406 	bgt.w	8003654 <_vfprintf_r+0x11c4>
 8002e48:	f10b 0b08 	add.w	fp, fp, #8
 8002e4c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002e4e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002e50:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002e52:	4293      	cmp	r3, r2
 8002e54:	db03      	blt.n	8002e5e <_vfprintf_r+0x9ce>
 8002e56:	f018 0f01 	tst.w	r8, #1
 8002e5a:	f43f ad6a 	beq.w	8002932 <_vfprintf_r+0x4a2>
 8002e5e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e60:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002e62:	f8cb 2000 	str.w	r2, [fp]
 8002e66:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002e68:	f8cb 2004 	str.w	r2, [fp, #4]
 8002e6c:	3301      	adds	r3, #1
 8002e6e:	4414      	add	r4, r2
 8002e70:	2b07      	cmp	r3, #7
 8002e72:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e76:	f300 8517 	bgt.w	80038a8 <_vfprintf_r+0x1418>
 8002e7a:	f10b 0b08 	add.w	fp, fp, #8
 8002e7e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002e80:	1e5d      	subs	r5, r3, #1
 8002e82:	2d00      	cmp	r5, #0
 8002e84:	f77f ad55 	ble.w	8002932 <_vfprintf_r+0x4a2>
 8002e88:	2d10      	cmp	r5, #16
 8002e8a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e8c:	4b0b      	ldr	r3, [pc, #44]	; (8002ebc <_vfprintf_r+0xa2c>)
 8002e8e:	f340 82e7 	ble.w	8003460 <_vfprintf_r+0xfd0>
 8002e92:	4619      	mov	r1, r3
 8002e94:	2610      	movs	r6, #16
 8002e96:	4623      	mov	r3, r4
 8002e98:	9f03      	ldr	r7, [sp, #12]
 8002e9a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002e9e:	460c      	mov	r4, r1
 8002ea0:	e014      	b.n	8002ecc <_vfprintf_r+0xa3c>
 8002ea2:	bf00      	nop
 8002ea4:	7fefffff 	.word	0x7fefffff
 8002ea8:	08007190 	.word	0x08007190
 8002eac:	0800718c 	.word	0x0800718c
 8002eb0:	080071b0 	.word	0x080071b0
 8002eb4:	0800719c 	.word	0x0800719c
 8002eb8:	080071cc 	.word	0x080071cc
 8002ebc:	080071e0 	.word	0x080071e0
 8002ec0:	f10b 0b08 	add.w	fp, fp, #8
 8002ec4:	3d10      	subs	r5, #16
 8002ec6:	2d10      	cmp	r5, #16
 8002ec8:	f340 82c7 	ble.w	800345a <_vfprintf_r+0xfca>
 8002ecc:	3201      	adds	r2, #1
 8002ece:	3310      	adds	r3, #16
 8002ed0:	2a07      	cmp	r2, #7
 8002ed2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002ed6:	e9cb 4600 	strd	r4, r6, [fp]
 8002eda:	ddf1      	ble.n	8002ec0 <_vfprintf_r+0xa30>
 8002edc:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ede:	4649      	mov	r1, r9
 8002ee0:	4638      	mov	r0, r7
 8002ee2:	f003 fe03 	bl	8006aec <__sprint_r>
 8002ee6:	2800      	cmp	r0, #0
 8002ee8:	d14c      	bne.n	8002f84 <_vfprintf_r+0xaf4>
 8002eea:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002eee:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002ef2:	e7e7      	b.n	8002ec4 <_vfprintf_r+0xa34>
 8002ef4:	9b06      	ldr	r3, [sp, #24]
 8002ef6:	9a04      	ldr	r2, [sp, #16]
 8002ef8:	1a9d      	subs	r5, r3, r2
 8002efa:	2d00      	cmp	r5, #0
 8002efc:	f77f acc9 	ble.w	8002892 <_vfprintf_r+0x402>
 8002f00:	2d10      	cmp	r5, #16
 8002f02:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002f04:	4bbc      	ldr	r3, [pc, #752]	; (80031f8 <_vfprintf_r+0xd68>)
 8002f06:	dd27      	ble.n	8002f58 <_vfprintf_r+0xac8>
 8002f08:	4659      	mov	r1, fp
 8002f0a:	4620      	mov	r0, r4
 8002f0c:	46bb      	mov	fp, r7
 8002f0e:	461c      	mov	r4, r3
 8002f10:	4637      	mov	r7, r6
 8002f12:	9e07      	ldr	r6, [sp, #28]
 8002f14:	e004      	b.n	8002f20 <_vfprintf_r+0xa90>
 8002f16:	3d10      	subs	r5, #16
 8002f18:	2d10      	cmp	r5, #16
 8002f1a:	f101 0108 	add.w	r1, r1, #8
 8002f1e:	dd16      	ble.n	8002f4e <_vfprintf_r+0xabe>
 8002f20:	3201      	adds	r2, #1
 8002f22:	3010      	adds	r0, #16
 8002f24:	2310      	movs	r3, #16
 8002f26:	2a07      	cmp	r2, #7
 8002f28:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002f2c:	600c      	str	r4, [r1, #0]
 8002f2e:	604b      	str	r3, [r1, #4]
 8002f30:	ddf1      	ble.n	8002f16 <_vfprintf_r+0xa86>
 8002f32:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f34:	4631      	mov	r1, r6
 8002f36:	9803      	ldr	r0, [sp, #12]
 8002f38:	f003 fdd8 	bl	8006aec <__sprint_r>
 8002f3c:	2800      	cmp	r0, #0
 8002f3e:	f040 80a8 	bne.w	8003092 <_vfprintf_r+0xc02>
 8002f42:	3d10      	subs	r5, #16
 8002f44:	2d10      	cmp	r5, #16
 8002f46:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002f4a:	a92d      	add	r1, sp, #180	; 0xb4
 8002f4c:	dce8      	bgt.n	8002f20 <_vfprintf_r+0xa90>
 8002f4e:	463e      	mov	r6, r7
 8002f50:	4623      	mov	r3, r4
 8002f52:	465f      	mov	r7, fp
 8002f54:	4604      	mov	r4, r0
 8002f56:	468b      	mov	fp, r1
 8002f58:	3201      	adds	r2, #1
 8002f5a:	442c      	add	r4, r5
 8002f5c:	2a07      	cmp	r2, #7
 8002f5e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002f62:	e9cb 3500 	strd	r3, r5, [fp]
 8002f66:	f300 8292 	bgt.w	800348e <_vfprintf_r+0xffe>
 8002f6a:	f10b 0b08 	add.w	fp, fp, #8
 8002f6e:	e490      	b.n	8002892 <_vfprintf_r+0x402>
 8002f70:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f72:	9907      	ldr	r1, [sp, #28]
 8002f74:	9803      	ldr	r0, [sp, #12]
 8002f76:	f003 fdb9 	bl	8006aec <__sprint_r>
 8002f7a:	2800      	cmp	r0, #0
 8002f7c:	f43f ad23 	beq.w	80029c6 <_vfprintf_r+0x536>
 8002f80:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002f84:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002f86:	b111      	cbz	r1, 8002f8e <_vfprintf_r+0xafe>
 8002f88:	9803      	ldr	r0, [sp, #12]
 8002f8a:	f002 f9c1 	bl	8005310 <_free_r>
 8002f8e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002f92:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002f96:	07d0      	lsls	r0, r2, #31
 8002f98:	d402      	bmi.n	8002fa0 <_vfprintf_r+0xb10>
 8002f9a:	0599      	lsls	r1, r3, #22
 8002f9c:	f140 81d0 	bpl.w	8003340 <_vfprintf_r+0xeb0>
 8002fa0:	065a      	lsls	r2, r3, #25
 8002fa2:	f53f ab65 	bmi.w	8002670 <_vfprintf_r+0x1e0>
 8002fa6:	9805      	ldr	r0, [sp, #20]
 8002fa8:	b057      	add	sp, #348	; 0x15c
 8002faa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002fae:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002fb0:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002fb2:	2a01      	cmp	r2, #1
 8002fb4:	f104 0401 	add.w	r4, r4, #1
 8002fb8:	f103 0501 	add.w	r5, r3, #1
 8002fbc:	f10b 0608 	add.w	r6, fp, #8
 8002fc0:	f340 811c 	ble.w	80031fc <_vfprintf_r+0xd6c>
 8002fc4:	2301      	movs	r3, #1
 8002fc6:	2d07      	cmp	r5, #7
 8002fc8:	f8cb 7000 	str.w	r7, [fp]
 8002fcc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002fd0:	f8cb 3004 	str.w	r3, [fp, #4]
 8002fd4:	f300 81bb 	bgt.w	800334e <_vfprintf_r+0xebe>
 8002fd8:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002fda:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002fdc:	1c69      	adds	r1, r5, #1
 8002fde:	441c      	add	r4, r3
 8002fe0:	2907      	cmp	r1, #7
 8002fe2:	910b      	str	r1, [sp, #44]	; 0x2c
 8002fe4:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8002fe8:	e9c6 2300 	strd	r2, r3, [r6]
 8002fec:	f300 81bb 	bgt.w	8003366 <_vfprintf_r+0xed6>
 8002ff0:	3608      	adds	r6, #8
 8002ff2:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002ff4:	1c53      	adds	r3, r2, #1
 8002ff6:	461d      	mov	r5, r3
 8002ff8:	9509      	str	r5, [sp, #36]	; 0x24
 8002ffa:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8002ffc:	930e      	str	r3, [sp, #56]	; 0x38
 8002ffe:	2200      	movs	r2, #0
 8003000:	2300      	movs	r3, #0
 8003002:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003006:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 800300a:	f106 0b08 	add.w	fp, r6, #8
 800300e:	f7fd fffb 	bl	8001008 <__aeabi_dcmpeq>
 8003012:	2800      	cmp	r0, #0
 8003014:	f040 80c2 	bne.w	800319c <_vfprintf_r+0xd0c>
 8003018:	9d09      	ldr	r5, [sp, #36]	; 0x24
 800301a:	f8c6 9004 	str.w	r9, [r6, #4]
 800301e:	3701      	adds	r7, #1
 8003020:	444c      	add	r4, r9
 8003022:	2d07      	cmp	r5, #7
 8003024:	6037      	str	r7, [r6, #0]
 8003026:	942c      	str	r4, [sp, #176]	; 0xb0
 8003028:	952b      	str	r5, [sp, #172]	; 0xac
 800302a:	f300 80f9 	bgt.w	8003220 <_vfprintf_r+0xd90>
 800302e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003030:	f106 0310 	add.w	r3, r6, #16
 8003034:	3202      	adds	r2, #2
 8003036:	465e      	mov	r6, fp
 8003038:	9209      	str	r2, [sp, #36]	; 0x24
 800303a:	469b      	mov	fp, r3
 800303c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 800303e:	6072      	str	r2, [r6, #4]
 8003040:	4414      	add	r4, r2
 8003042:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003044:	942c      	str	r4, [sp, #176]	; 0xb0
 8003046:	ab26      	add	r3, sp, #152	; 0x98
 8003048:	2a07      	cmp	r2, #7
 800304a:	922b      	str	r2, [sp, #172]	; 0xac
 800304c:	6033      	str	r3, [r6, #0]
 800304e:	f77f ac70 	ble.w	8002932 <_vfprintf_r+0x4a2>
 8003052:	aa2a      	add	r2, sp, #168	; 0xa8
 8003054:	9907      	ldr	r1, [sp, #28]
 8003056:	9803      	ldr	r0, [sp, #12]
 8003058:	f003 fd48 	bl	8006aec <__sprint_r>
 800305c:	2800      	cmp	r0, #0
 800305e:	d18f      	bne.n	8002f80 <_vfprintf_r+0xaf0>
 8003060:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003062:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003066:	e464      	b.n	8002932 <_vfprintf_r+0x4a2>
 8003068:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800306a:	af56      	add	r7, sp, #344	; 0x158
 800306c:	0923      	lsrs	r3, r4, #4
 800306e:	f004 010f 	and.w	r1, r4, #15
 8003072:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8003076:	092a      	lsrs	r2, r5, #4
 8003078:	461c      	mov	r4, r3
 800307a:	4615      	mov	r5, r2
 800307c:	5c43      	ldrb	r3, [r0, r1]
 800307e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003082:	ea54 0305 	orrs.w	r3, r4, r5
 8003086:	d1f1      	bne.n	800306c <_vfprintf_r+0xbdc>
 8003088:	9b04      	ldr	r3, [sp, #16]
 800308a:	1bdb      	subs	r3, r3, r7
 800308c:	9309      	str	r3, [sp, #36]	; 0x24
 800308e:	f7ff bb80 	b.w	8002792 <_vfprintf_r+0x302>
 8003092:	46b1      	mov	r9, r6
 8003094:	e776      	b.n	8002f84 <_vfprintf_r+0xaf4>
 8003096:	aa2a      	add	r2, sp, #168	; 0xa8
 8003098:	9907      	ldr	r1, [sp, #28]
 800309a:	9803      	ldr	r0, [sp, #12]
 800309c:	f003 fd26 	bl	8006aec <__sprint_r>
 80030a0:	2800      	cmp	r0, #0
 80030a2:	f47f af6d 	bne.w	8002f80 <_vfprintf_r+0xaf0>
 80030a6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030a8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030ac:	f7ff bbdd 	b.w	800286a <_vfprintf_r+0x3da>
 80030b0:	aa2a      	add	r2, sp, #168	; 0xa8
 80030b2:	9907      	ldr	r1, [sp, #28]
 80030b4:	9803      	ldr	r0, [sp, #12]
 80030b6:	f003 fd19 	bl	8006aec <__sprint_r>
 80030ba:	2800      	cmp	r0, #0
 80030bc:	f47f af60 	bne.w	8002f80 <_vfprintf_r+0xaf0>
 80030c0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030c2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030c6:	f7ff bbe0 	b.w	800288a <_vfprintf_r+0x3fa>
 80030ca:	4698      	mov	r8, r3
 80030cc:	2d00      	cmp	r5, #0
 80030ce:	bf08      	it	eq
 80030d0:	2c0a      	cmpeq	r4, #10
 80030d2:	f080 8170 	bcs.w	80033b6 <_vfprintf_r+0xf26>
 80030d6:	af56      	add	r7, sp, #344	; 0x158
 80030d8:	3430      	adds	r4, #48	; 0x30
 80030da:	2301      	movs	r3, #1
 80030dc:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80030e0:	9309      	str	r3, [sp, #36]	; 0x24
 80030e2:	f7ff bb56 	b.w	8002792 <_vfprintf_r+0x302>
 80030e6:	aa2a      	add	r2, sp, #168	; 0xa8
 80030e8:	9907      	ldr	r1, [sp, #28]
 80030ea:	9803      	ldr	r0, [sp, #12]
 80030ec:	f003 fcfe 	bl	8006aec <__sprint_r>
 80030f0:	2800      	cmp	r0, #0
 80030f2:	f47f af45 	bne.w	8002f80 <_vfprintf_r+0xaf0>
 80030f6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030f8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030fc:	e406      	b.n	800290c <_vfprintf_r+0x47c>
 80030fe:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003100:	2b00      	cmp	r3, #0
 8003102:	f340 8273 	ble.w	80035ec <_vfprintf_r+0x115c>
 8003106:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 800310a:	4293      	cmp	r3, r2
 800310c:	bfa8      	it	ge
 800310e:	4613      	movge	r3, r2
 8003110:	2b00      	cmp	r3, #0
 8003112:	461d      	mov	r5, r3
 8003114:	dd0d      	ble.n	8003132 <_vfprintf_r+0xca2>
 8003116:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003118:	f8cb 7000 	str.w	r7, [fp]
 800311c:	3301      	adds	r3, #1
 800311e:	442c      	add	r4, r5
 8003120:	2b07      	cmp	r3, #7
 8003122:	942c      	str	r4, [sp, #176]	; 0xb0
 8003124:	f8cb 5004 	str.w	r5, [fp, #4]
 8003128:	932b      	str	r3, [sp, #172]	; 0xac
 800312a:	f300 82c1 	bgt.w	80036b0 <_vfprintf_r+0x1220>
 800312e:	f10b 0b08 	add.w	fp, fp, #8
 8003132:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003134:	2d00      	cmp	r5, #0
 8003136:	bfa8      	it	ge
 8003138:	1b5b      	subge	r3, r3, r5
 800313a:	2b00      	cmp	r3, #0
 800313c:	461d      	mov	r5, r3
 800313e:	f340 8099 	ble.w	8003274 <_vfprintf_r+0xde4>
 8003142:	2d10      	cmp	r5, #16
 8003144:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003146:	4b2c      	ldr	r3, [pc, #176]	; (80031f8 <_vfprintf_r+0xd68>)
 8003148:	f340 83db 	ble.w	8003902 <_vfprintf_r+0x1472>
 800314c:	4618      	mov	r0, r3
 800314e:	4621      	mov	r1, r4
 8003150:	465b      	mov	r3, fp
 8003152:	2610      	movs	r6, #16
 8003154:	46bb      	mov	fp, r7
 8003156:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800315a:	9c07      	ldr	r4, [sp, #28]
 800315c:	4607      	mov	r7, r0
 800315e:	e004      	b.n	800316a <_vfprintf_r+0xcda>
 8003160:	3308      	adds	r3, #8
 8003162:	3d10      	subs	r5, #16
 8003164:	2d10      	cmp	r5, #16
 8003166:	f340 83c7 	ble.w	80038f8 <_vfprintf_r+0x1468>
 800316a:	3201      	adds	r2, #1
 800316c:	3110      	adds	r1, #16
 800316e:	2a07      	cmp	r2, #7
 8003170:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003174:	e9c3 7600 	strd	r7, r6, [r3]
 8003178:	ddf2      	ble.n	8003160 <_vfprintf_r+0xcd0>
 800317a:	aa2a      	add	r2, sp, #168	; 0xa8
 800317c:	4621      	mov	r1, r4
 800317e:	4648      	mov	r0, r9
 8003180:	f003 fcb4 	bl	8006aec <__sprint_r>
 8003184:	2800      	cmp	r0, #0
 8003186:	f040 84a5 	bne.w	8003ad4 <_vfprintf_r+0x1644>
 800318a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 800318e:	ab2d      	add	r3, sp, #180	; 0xb4
 8003190:	e7e7      	b.n	8003162 <_vfprintf_r+0xcd2>
 8003192:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003196:	af56      	add	r7, sp, #344	; 0x158
 8003198:	f7ff bafb 	b.w	8002792 <_vfprintf_r+0x302>
 800319c:	f1b9 0f00 	cmp.w	r9, #0
 80031a0:	f77f af4c 	ble.w	800303c <_vfprintf_r+0xbac>
 80031a4:	f1b9 0f10 	cmp.w	r9, #16
 80031a8:	4b13      	ldr	r3, [pc, #76]	; (80031f8 <_vfprintf_r+0xd68>)
 80031aa:	f340 8659 	ble.w	8003e60 <_vfprintf_r+0x19d0>
 80031ae:	4619      	mov	r1, r3
 80031b0:	4622      	mov	r2, r4
 80031b2:	4633      	mov	r3, r6
 80031b4:	2710      	movs	r7, #16
 80031b6:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80031ba:	9c07      	ldr	r4, [sp, #28]
 80031bc:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80031be:	460e      	mov	r6, r1
 80031c0:	e007      	b.n	80031d2 <_vfprintf_r+0xd42>
 80031c2:	3308      	adds	r3, #8
 80031c4:	f1a9 0910 	sub.w	r9, r9, #16
 80031c8:	f1b9 0f10 	cmp.w	r9, #16
 80031cc:	f340 8353 	ble.w	8003876 <_vfprintf_r+0x13e6>
 80031d0:	3501      	adds	r5, #1
 80031d2:	3210      	adds	r2, #16
 80031d4:	2d07      	cmp	r5, #7
 80031d6:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80031da:	e9c3 6700 	strd	r6, r7, [r3]
 80031de:	ddf0      	ble.n	80031c2 <_vfprintf_r+0xd32>
 80031e0:	aa2a      	add	r2, sp, #168	; 0xa8
 80031e2:	4621      	mov	r1, r4
 80031e4:	4658      	mov	r0, fp
 80031e6:	f003 fc81 	bl	8006aec <__sprint_r>
 80031ea:	2800      	cmp	r0, #0
 80031ec:	f040 8472 	bne.w	8003ad4 <_vfprintf_r+0x1644>
 80031f0:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80031f4:	ab2d      	add	r3, sp, #180	; 0xb4
 80031f6:	e7e5      	b.n	80031c4 <_vfprintf_r+0xd34>
 80031f8:	080071e0 	.word	0x080071e0
 80031fc:	f018 0f01 	tst.w	r8, #1
 8003200:	f47f aee0 	bne.w	8002fc4 <_vfprintf_r+0xb34>
 8003204:	2201      	movs	r2, #1
 8003206:	2d07      	cmp	r5, #7
 8003208:	f8cb 7000 	str.w	r7, [fp]
 800320c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003210:	f8cb 2004 	str.w	r2, [fp, #4]
 8003214:	dc04      	bgt.n	8003220 <_vfprintf_r+0xd90>
 8003216:	3302      	adds	r3, #2
 8003218:	9309      	str	r3, [sp, #36]	; 0x24
 800321a:	f10b 0b10 	add.w	fp, fp, #16
 800321e:	e70d      	b.n	800303c <_vfprintf_r+0xbac>
 8003220:	aa2a      	add	r2, sp, #168	; 0xa8
 8003222:	9907      	ldr	r1, [sp, #28]
 8003224:	9803      	ldr	r0, [sp, #12]
 8003226:	f003 fc61 	bl	8006aec <__sprint_r>
 800322a:	2800      	cmp	r0, #0
 800322c:	f47f aea8 	bne.w	8002f80 <_vfprintf_r+0xaf0>
 8003230:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003234:	3301      	adds	r3, #1
 8003236:	9309      	str	r3, [sp, #36]	; 0x24
 8003238:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 800323c:	ae2d      	add	r6, sp, #180	; 0xb4
 800323e:	e6fd      	b.n	800303c <_vfprintf_r+0xbac>
 8003240:	aa2a      	add	r2, sp, #168	; 0xa8
 8003242:	9907      	ldr	r1, [sp, #28]
 8003244:	9803      	ldr	r0, [sp, #12]
 8003246:	f003 fc51 	bl	8006aec <__sprint_r>
 800324a:	2800      	cmp	r0, #0
 800324c:	f47f ae98 	bne.w	8002f80 <_vfprintf_r+0xaf0>
 8003250:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003254:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003256:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800325a:	f7ff baf6 	b.w	800284a <_vfprintf_r+0x3ba>
 800325e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003260:	9907      	ldr	r1, [sp, #28]
 8003262:	9803      	ldr	r0, [sp, #12]
 8003264:	f003 fc42 	bl	8006aec <__sprint_r>
 8003268:	2800      	cmp	r0, #0
 800326a:	f47f ae89 	bne.w	8002f80 <_vfprintf_r+0xaf0>
 800326e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003270:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003274:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003276:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800327a:	443b      	add	r3, r7
 800327c:	4699      	mov	r9, r3
 800327e:	f040 8357 	bne.w	8003930 <_vfprintf_r+0x14a0>
 8003282:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003284:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003286:	4293      	cmp	r3, r2
 8003288:	db49      	blt.n	800331e <_vfprintf_r+0xe8e>
 800328a:	f018 0f01 	tst.w	r8, #1
 800328e:	d146      	bne.n	800331e <_vfprintf_r+0xe8e>
 8003290:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003292:	18bd      	adds	r5, r7, r2
 8003294:	eba5 0509 	sub.w	r5, r5, r9
 8003298:	1ad3      	subs	r3, r2, r3
 800329a:	429d      	cmp	r5, r3
 800329c:	bfa8      	it	ge
 800329e:	461d      	movge	r5, r3
 80032a0:	2d00      	cmp	r5, #0
 80032a2:	dd0d      	ble.n	80032c0 <_vfprintf_r+0xe30>
 80032a4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80032a6:	f8cb 9000 	str.w	r9, [fp]
 80032aa:	3201      	adds	r2, #1
 80032ac:	442c      	add	r4, r5
 80032ae:	2a07      	cmp	r2, #7
 80032b0:	942c      	str	r4, [sp, #176]	; 0xb0
 80032b2:	f8cb 5004 	str.w	r5, [fp, #4]
 80032b6:	922b      	str	r2, [sp, #172]	; 0xac
 80032b8:	f300 8462 	bgt.w	8003b80 <_vfprintf_r+0x16f0>
 80032bc:	f10b 0b08 	add.w	fp, fp, #8
 80032c0:	2d00      	cmp	r5, #0
 80032c2:	bfac      	ite	ge
 80032c4:	1b5d      	subge	r5, r3, r5
 80032c6:	461d      	movlt	r5, r3
 80032c8:	2d00      	cmp	r5, #0
 80032ca:	f77f ab32 	ble.w	8002932 <_vfprintf_r+0x4a2>
 80032ce:	2d10      	cmp	r5, #16
 80032d0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80032d2:	4bc5      	ldr	r3, [pc, #788]	; (80035e8 <_vfprintf_r+0x1158>)
 80032d4:	f340 80c4 	ble.w	8003460 <_vfprintf_r+0xfd0>
 80032d8:	4619      	mov	r1, r3
 80032da:	2610      	movs	r6, #16
 80032dc:	4623      	mov	r3, r4
 80032de:	9f03      	ldr	r7, [sp, #12]
 80032e0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80032e4:	460c      	mov	r4, r1
 80032e6:	e005      	b.n	80032f4 <_vfprintf_r+0xe64>
 80032e8:	f10b 0b08 	add.w	fp, fp, #8
 80032ec:	3d10      	subs	r5, #16
 80032ee:	2d10      	cmp	r5, #16
 80032f0:	f340 80b3 	ble.w	800345a <_vfprintf_r+0xfca>
 80032f4:	3201      	adds	r2, #1
 80032f6:	3310      	adds	r3, #16
 80032f8:	2a07      	cmp	r2, #7
 80032fa:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80032fe:	e9cb 4600 	strd	r4, r6, [fp]
 8003302:	ddf1      	ble.n	80032e8 <_vfprintf_r+0xe58>
 8003304:	aa2a      	add	r2, sp, #168	; 0xa8
 8003306:	4649      	mov	r1, r9
 8003308:	4638      	mov	r0, r7
 800330a:	f003 fbef 	bl	8006aec <__sprint_r>
 800330e:	2800      	cmp	r0, #0
 8003310:	f47f ae38 	bne.w	8002f84 <_vfprintf_r+0xaf4>
 8003314:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003318:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800331c:	e7e6      	b.n	80032ec <_vfprintf_r+0xe5c>
 800331e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003320:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003322:	f8cb 1000 	str.w	r1, [fp]
 8003326:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003328:	f8cb 1004 	str.w	r1, [fp, #4]
 800332c:	3201      	adds	r2, #1
 800332e:	440c      	add	r4, r1
 8003330:	2a07      	cmp	r2, #7
 8003332:	942c      	str	r4, [sp, #176]	; 0xb0
 8003334:	922b      	str	r2, [sp, #172]	; 0xac
 8003336:	f300 828c 	bgt.w	8003852 <_vfprintf_r+0x13c2>
 800333a:	f10b 0b08 	add.w	fp, fp, #8
 800333e:	e7a7      	b.n	8003290 <_vfprintf_r+0xe00>
 8003340:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003344:	f002 fa94 	bl	8005870 <__retarget_lock_release_recursive>
 8003348:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800334c:	e628      	b.n	8002fa0 <_vfprintf_r+0xb10>
 800334e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003350:	9907      	ldr	r1, [sp, #28]
 8003352:	9803      	ldr	r0, [sp, #12]
 8003354:	f003 fbca 	bl	8006aec <__sprint_r>
 8003358:	2800      	cmp	r0, #0
 800335a:	f47f ae11 	bne.w	8002f80 <_vfprintf_r+0xaf0>
 800335e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003362:	ae2d      	add	r6, sp, #180	; 0xb4
 8003364:	e638      	b.n	8002fd8 <_vfprintf_r+0xb48>
 8003366:	aa2a      	add	r2, sp, #168	; 0xa8
 8003368:	9907      	ldr	r1, [sp, #28]
 800336a:	9803      	ldr	r0, [sp, #12]
 800336c:	f003 fbbe 	bl	8006aec <__sprint_r>
 8003370:	2800      	cmp	r0, #0
 8003372:	f47f ae05 	bne.w	8002f80 <_vfprintf_r+0xaf0>
 8003376:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800337a:	ae2d      	add	r6, sp, #180	; 0xb4
 800337c:	930b      	str	r3, [sp, #44]	; 0x2c
 800337e:	e638      	b.n	8002ff2 <_vfprintf_r+0xb62>
 8003380:	6814      	ldr	r4, [r2, #0]
 8003382:	9308      	str	r3, [sp, #32]
 8003384:	2500      	movs	r5, #0
 8003386:	f7ff bb95 	b.w	8002ab4 <_vfprintf_r+0x624>
 800338a:	6814      	ldr	r4, [r2, #0]
 800338c:	9308      	str	r3, [sp, #32]
 800338e:	2500      	movs	r5, #0
 8003390:	f7ff b9ae 	b.w	80026f0 <_vfprintf_r+0x260>
 8003394:	680c      	ldr	r4, [r1, #0]
 8003396:	9208      	str	r2, [sp, #32]
 8003398:	17e5      	asrs	r5, r4, #31
 800339a:	4620      	mov	r0, r4
 800339c:	4629      	mov	r1, r5
 800339e:	f7ff b9d2 	b.w	8002746 <_vfprintf_r+0x2b6>
 80033a2:	6814      	ldr	r4, [r2, #0]
 80033a4:	9108      	str	r1, [sp, #32]
 80033a6:	2201      	movs	r2, #1
 80033a8:	2500      	movs	r5, #0
 80033aa:	f7ff bb32 	b.w	8002a12 <_vfprintf_r+0x582>
 80033ae:	2a01      	cmp	r2, #1
 80033b0:	f47f ab3c 	bne.w	8002a2c <_vfprintf_r+0x59c>
 80033b4:	e68f      	b.n	80030d6 <_vfprintf_r+0xc46>
 80033b6:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 80033ba:	2200      	movs	r2, #0
 80033bc:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80033c0:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80033c4:	af56      	add	r7, sp, #344	; 0x158
 80033c6:	4692      	mov	sl, r2
 80033c8:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 80033cc:	461e      	mov	r6, r3
 80033ce:	e00a      	b.n	80033e6 <_vfprintf_r+0xf56>
 80033d0:	2300      	movs	r3, #0
 80033d2:	4620      	mov	r0, r4
 80033d4:	4629      	mov	r1, r5
 80033d6:	220a      	movs	r2, #10
 80033d8:	f7fc ff12 	bl	8000200 <__aeabi_uldivmod>
 80033dc:	4604      	mov	r4, r0
 80033de:	460d      	mov	r5, r1
 80033e0:	ea54 0305 	orrs.w	r3, r4, r5
 80033e4:	d029      	beq.n	800343a <_vfprintf_r+0xfaa>
 80033e6:	220a      	movs	r2, #10
 80033e8:	2300      	movs	r3, #0
 80033ea:	4620      	mov	r0, r4
 80033ec:	4629      	mov	r1, r5
 80033ee:	f7fc ff07 	bl	8000200 <__aeabi_uldivmod>
 80033f2:	3230      	adds	r2, #48	; 0x30
 80033f4:	f807 2c01 	strb.w	r2, [r7, #-1]
 80033f8:	f10a 0a01 	add.w	sl, sl, #1
 80033fc:	3f01      	subs	r7, #1
 80033fe:	2e00      	cmp	r6, #0
 8003400:	d0e6      	beq.n	80033d0 <_vfprintf_r+0xf40>
 8003402:	f898 3000 	ldrb.w	r3, [r8]
 8003406:	459a      	cmp	sl, r3
 8003408:	d1e2      	bne.n	80033d0 <_vfprintf_r+0xf40>
 800340a:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 800340e:	d0df      	beq.n	80033d0 <_vfprintf_r+0xf40>
 8003410:	2d00      	cmp	r5, #0
 8003412:	bf08      	it	eq
 8003414:	2c0a      	cmpeq	r4, #10
 8003416:	d3db      	bcc.n	80033d0 <_vfprintf_r+0xf40>
 8003418:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 800341a:	9918      	ldr	r1, [sp, #96]	; 0x60
 800341c:	1aff      	subs	r7, r7, r3
 800341e:	461a      	mov	r2, r3
 8003420:	4638      	mov	r0, r7
 8003422:	f003 faf5 	bl	8006a10 <strncpy>
 8003426:	f898 3001 	ldrb.w	r3, [r8, #1]
 800342a:	2b00      	cmp	r3, #0
 800342c:	f000 8496 	beq.w	8003d5c <_vfprintf_r+0x18cc>
 8003430:	f108 0801 	add.w	r8, r8, #1
 8003434:	f04f 0a00 	mov.w	sl, #0
 8003438:	e7ca      	b.n	80033d0 <_vfprintf_r+0xf40>
 800343a:	9b04      	ldr	r3, [sp, #16]
 800343c:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003440:	1bdb      	subs	r3, r3, r7
 8003442:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003446:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003448:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 800344c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003450:	9309      	str	r3, [sp, #36]	; 0x24
 8003452:	f7ff b99e 	b.w	8002792 <_vfprintf_r+0x302>
 8003456:	46c1      	mov	r9, r8
 8003458:	e594      	b.n	8002f84 <_vfprintf_r+0xaf4>
 800345a:	4621      	mov	r1, r4
 800345c:	461c      	mov	r4, r3
 800345e:	460b      	mov	r3, r1
 8003460:	3201      	adds	r2, #1
 8003462:	442c      	add	r4, r5
 8003464:	2a07      	cmp	r2, #7
 8003466:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800346a:	e9cb 3500 	strd	r3, r5, [fp]
 800346e:	f77f aa5e 	ble.w	800292e <_vfprintf_r+0x49e>
 8003472:	e5ee      	b.n	8003052 <_vfprintf_r+0xbc2>
 8003474:	f018 0f10 	tst.w	r8, #16
 8003478:	f040 80f8 	bne.w	800366c <_vfprintf_r+0x11dc>
 800347c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003480:	f000 8351 	beq.w	8003b26 <_vfprintf_r+0x1696>
 8003484:	9a05      	ldr	r2, [sp, #20]
 8003486:	801a      	strh	r2, [r3, #0]
 8003488:	4657      	mov	r7, sl
 800348a:	f7ff baa7 	b.w	80029dc <_vfprintf_r+0x54c>
 800348e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003490:	9907      	ldr	r1, [sp, #28]
 8003492:	9803      	ldr	r0, [sp, #12]
 8003494:	f003 fb2a 	bl	8006aec <__sprint_r>
 8003498:	2800      	cmp	r0, #0
 800349a:	f47f ad71 	bne.w	8002f80 <_vfprintf_r+0xaf0>
 800349e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80034a0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034a4:	f7ff b9f5 	b.w	8002892 <_vfprintf_r+0x402>
 80034a8:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80034ac:	4602      	mov	r2, r0
 80034ae:	460b      	mov	r3, r1
 80034b0:	f7fd fddc 	bl	800106c <__aeabi_dcmpun>
 80034b4:	2800      	cmp	r0, #0
 80034b6:	f040 8491 	bne.w	8003ddc <_vfprintf_r+0x194c>
 80034ba:	2e61      	cmp	r6, #97	; 0x61
 80034bc:	f000 8111 	beq.w	80036e2 <_vfprintf_r+0x1252>
 80034c0:	2e41      	cmp	r6, #65	; 0x41
 80034c2:	f000 8377 	beq.w	8003bb4 <_vfprintf_r+0x1724>
 80034c6:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80034ca:	f026 0220 	bic.w	r2, r6, #32
 80034ce:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80034d2:	930e      	str	r3, [sp, #56]	; 0x38
 80034d4:	9204      	str	r2, [sp, #16]
 80034d6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80034d8:	f000 842d 	beq.w	8003d36 <_vfprintf_r+0x18a6>
 80034dc:	2a47      	cmp	r2, #71	; 0x47
 80034de:	f000 8424 	beq.w	8003d2a <_vfprintf_r+0x189a>
 80034e2:	2b00      	cmp	r3, #0
 80034e4:	f2c0 82f9 	blt.w	8003ada <_vfprintf_r+0x164a>
 80034e8:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80034ec:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80034f0:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80034f4:	2e66      	cmp	r6, #102	; 0x66
 80034f6:	f000 83eb 	beq.w	8003cd0 <_vfprintf_r+0x1840>
 80034fa:	2e46      	cmp	r6, #70	; 0x46
 80034fc:	f000 847e 	beq.w	8003dfc <_vfprintf_r+0x196c>
 8003500:	9b04      	ldr	r3, [sp, #16]
 8003502:	9803      	ldr	r0, [sp, #12]
 8003504:	2b45      	cmp	r3, #69	; 0x45
 8003506:	bf0c      	ite	eq
 8003508:	f109 0501 	addeq.w	r5, r9, #1
 800350c:	464d      	movne	r5, r9
 800350e:	aa28      	add	r2, sp, #160	; 0xa0
 8003510:	ab25      	add	r3, sp, #148	; 0x94
 8003512:	e9cd 3200 	strd	r3, r2, [sp]
 8003516:	2102      	movs	r1, #2
 8003518:	ab24      	add	r3, sp, #144	; 0x90
 800351a:	462a      	mov	r2, r5
 800351c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003520:	f000 fe3e 	bl	80041a0 <_dtoa_r>
 8003524:	2e67      	cmp	r6, #103	; 0x67
 8003526:	4607      	mov	r7, r0
 8003528:	f040 849c 	bne.w	8003e64 <_vfprintf_r+0x19d4>
 800352c:	f018 0f01 	tst.w	r8, #1
 8003530:	f040 83f9 	bne.w	8003d26 <_vfprintf_r+0x1896>
 8003534:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003536:	4640      	mov	r0, r8
 8003538:	1bdb      	subs	r3, r3, r7
 800353a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800353e:	9310      	str	r3, [sp, #64]	; 0x40
 8003540:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003542:	9311      	str	r3, [sp, #68]	; 0x44
 8003544:	9b04      	ldr	r3, [sp, #16]
 8003546:	2b47      	cmp	r3, #71	; 0x47
 8003548:	f000 81e7 	beq.w	800391a <_vfprintf_r+0x148a>
 800354c:	9b04      	ldr	r3, [sp, #16]
 800354e:	2b46      	cmp	r3, #70	; 0x46
 8003550:	f000 8300 	beq.w	8003b54 <_vfprintf_r+0x16c4>
 8003554:	9904      	ldr	r1, [sp, #16]
 8003556:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003558:	b2f2      	uxtb	r2, r6
 800355a:	2941      	cmp	r1, #65	; 0x41
 800355c:	bf08      	it	eq
 800355e:	320f      	addeq	r2, #15
 8003560:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003564:	bf06      	itte	eq
 8003566:	b2d2      	uxtbeq	r2, r2
 8003568:	2101      	moveq	r1, #1
 800356a:	2100      	movne	r1, #0
 800356c:	2b00      	cmp	r3, #0
 800356e:	9324      	str	r3, [sp, #144]	; 0x90
 8003570:	bfb8      	it	lt
 8003572:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003574:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003578:	bfba      	itte	lt
 800357a:	f1c3 0301 	rsblt	r3, r3, #1
 800357e:	222d      	movlt	r2, #45	; 0x2d
 8003580:	222b      	movge	r2, #43	; 0x2b
 8003582:	2b09      	cmp	r3, #9
 8003584:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003588:	f300 83f9 	bgt.w	8003d7e <_vfprintf_r+0x18ee>
 800358c:	2900      	cmp	r1, #0
 800358e:	f040 8487 	bne.w	8003ea0 <_vfprintf_r+0x1a10>
 8003592:	2230      	movs	r2, #48	; 0x30
 8003594:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003598:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 800359c:	3330      	adds	r3, #48	; 0x30
 800359e:	7013      	strb	r3, [r2, #0]
 80035a0:	1c53      	adds	r3, r2, #1
 80035a2:	aa26      	add	r2, sp, #152	; 0x98
 80035a4:	1a9b      	subs	r3, r3, r2
 80035a6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80035a8:	9319      	str	r3, [sp, #100]	; 0x64
 80035aa:	2a01      	cmp	r2, #1
 80035ac:	4413      	add	r3, r2
 80035ae:	9309      	str	r3, [sp, #36]	; 0x24
 80035b0:	f340 8442 	ble.w	8003e38 <_vfprintf_r+0x19a8>
 80035b4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80035b6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80035b8:	4413      	add	r3, r2
 80035ba:	9309      	str	r3, [sp, #36]	; 0x24
 80035bc:	2300      	movs	r3, #0
 80035be:	930f      	str	r3, [sp, #60]	; 0x3c
 80035c0:	9314      	str	r3, [sp, #80]	; 0x50
 80035c2:	9311      	str	r3, [sp, #68]	; 0x44
 80035c4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80035c6:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 80035ca:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80035ce:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 80035d2:	9304      	str	r3, [sp, #16]
 80035d4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80035d6:	2b00      	cmp	r3, #0
 80035d8:	f040 8275 	bne.w	8003ac6 <_vfprintf_r+0x1636>
 80035dc:	4699      	mov	r9, r3
 80035de:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80035e2:	f7ff b8e2 	b.w	80027aa <_vfprintf_r+0x31a>
 80035e6:	bf00      	nop
 80035e8:	080071e0 	.word	0x080071e0
 80035ec:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035ee:	49bd      	ldr	r1, [pc, #756]	; (80038e4 <_vfprintf_r+0x1454>)
 80035f0:	f8cb 1000 	str.w	r1, [fp]
 80035f4:	3201      	adds	r2, #1
 80035f6:	3401      	adds	r4, #1
 80035f8:	2101      	movs	r1, #1
 80035fa:	2a07      	cmp	r2, #7
 80035fc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003600:	f8cb 1004 	str.w	r1, [fp, #4]
 8003604:	dc60      	bgt.n	80036c8 <_vfprintf_r+0x1238>
 8003606:	f10b 0b08 	add.w	fp, fp, #8
 800360a:	b92b      	cbnz	r3, 8003618 <_vfprintf_r+0x1188>
 800360c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800360e:	b91a      	cbnz	r2, 8003618 <_vfprintf_r+0x1188>
 8003610:	f018 0f01 	tst.w	r8, #1
 8003614:	f43f a98d 	beq.w	8002932 <_vfprintf_r+0x4a2>
 8003618:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800361a:	9916      	ldr	r1, [sp, #88]	; 0x58
 800361c:	f8cb 1000 	str.w	r1, [fp]
 8003620:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003622:	f8cb 1004 	str.w	r1, [fp, #4]
 8003626:	3201      	adds	r2, #1
 8003628:	440c      	add	r4, r1
 800362a:	2a07      	cmp	r2, #7
 800362c:	942c      	str	r4, [sp, #176]	; 0xb0
 800362e:	922b      	str	r2, [sp, #172]	; 0xac
 8003630:	f300 8282 	bgt.w	8003b38 <_vfprintf_r+0x16a8>
 8003634:	f10b 0b08 	add.w	fp, fp, #8
 8003638:	2b00      	cmp	r3, #0
 800363a:	f2c0 82e7 	blt.w	8003c0c <_vfprintf_r+0x177c>
 800363e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003640:	3201      	adds	r2, #1
 8003642:	441c      	add	r4, r3
 8003644:	2a07      	cmp	r2, #7
 8003646:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800364a:	e9cb 7300 	strd	r7, r3, [fp]
 800364e:	f77f a96e 	ble.w	800292e <_vfprintf_r+0x49e>
 8003652:	e4fe      	b.n	8003052 <_vfprintf_r+0xbc2>
 8003654:	aa2a      	add	r2, sp, #168	; 0xa8
 8003656:	9907      	ldr	r1, [sp, #28]
 8003658:	9803      	ldr	r0, [sp, #12]
 800365a:	f003 fa47 	bl	8006aec <__sprint_r>
 800365e:	2800      	cmp	r0, #0
 8003660:	f47f ac8e 	bne.w	8002f80 <_vfprintf_r+0xaf0>
 8003664:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003668:	f7ff bbf0 	b.w	8002e4c <_vfprintf_r+0x9bc>
 800366c:	9a05      	ldr	r2, [sp, #20]
 800366e:	601a      	str	r2, [r3, #0]
 8003670:	4657      	mov	r7, sl
 8003672:	f7ff b9b3 	b.w	80029dc <_vfprintf_r+0x54c>
 8003676:	8814      	ldrh	r4, [r2, #0]
 8003678:	9108      	str	r1, [sp, #32]
 800367a:	2500      	movs	r5, #0
 800367c:	2201      	movs	r2, #1
 800367e:	f7ff b9c8 	b.w	8002a12 <_vfprintf_r+0x582>
 8003682:	8814      	ldrh	r4, [r2, #0]
 8003684:	9308      	str	r3, [sp, #32]
 8003686:	2500      	movs	r5, #0
 8003688:	f7ff ba14 	b.w	8002ab4 <_vfprintf_r+0x624>
 800368c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003690:	9208      	str	r2, [sp, #32]
 8003692:	17e5      	asrs	r5, r4, #31
 8003694:	4620      	mov	r0, r4
 8003696:	4629      	mov	r1, r5
 8003698:	f7ff b855 	b.w	8002746 <_vfprintf_r+0x2b6>
 800369c:	8814      	ldrh	r4, [r2, #0]
 800369e:	9308      	str	r3, [sp, #32]
 80036a0:	2500      	movs	r5, #0
 80036a2:	f7ff b825 	b.w	80026f0 <_vfprintf_r+0x260>
 80036a6:	222d      	movs	r2, #45	; 0x2d
 80036a8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80036ac:	f7ff baa2 	b.w	8002bf4 <_vfprintf_r+0x764>
 80036b0:	aa2a      	add	r2, sp, #168	; 0xa8
 80036b2:	9907      	ldr	r1, [sp, #28]
 80036b4:	9803      	ldr	r0, [sp, #12]
 80036b6:	f003 fa19 	bl	8006aec <__sprint_r>
 80036ba:	2800      	cmp	r0, #0
 80036bc:	f47f ac60 	bne.w	8002f80 <_vfprintf_r+0xaf0>
 80036c0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036c2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036c6:	e534      	b.n	8003132 <_vfprintf_r+0xca2>
 80036c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80036ca:	9907      	ldr	r1, [sp, #28]
 80036cc:	9803      	ldr	r0, [sp, #12]
 80036ce:	f003 fa0d 	bl	8006aec <__sprint_r>
 80036d2:	2800      	cmp	r0, #0
 80036d4:	f47f ac54 	bne.w	8002f80 <_vfprintf_r+0xaf0>
 80036d8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80036da:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036dc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036e0:	e793      	b.n	800360a <_vfprintf_r+0x117a>
 80036e2:	2330      	movs	r3, #48	; 0x30
 80036e4:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80036e8:	2378      	movs	r3, #120	; 0x78
 80036ea:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 80036ee:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80036f2:	f048 0402 	orr.w	r4, r8, #2
 80036f6:	f300 82b0 	bgt.w	8003c5a <_vfprintf_r+0x17ca>
 80036fa:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80036fe:	930e      	str	r3, [sp, #56]	; 0x38
 8003700:	f026 0320 	bic.w	r3, r6, #32
 8003704:	9304      	str	r3, [sp, #16]
 8003706:	2200      	movs	r2, #0
 8003708:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800370a:	920a      	str	r2, [sp, #40]	; 0x28
 800370c:	46a0      	mov	r8, r4
 800370e:	af3d      	add	r7, sp, #244	; 0xf4
 8003710:	2b00      	cmp	r3, #0
 8003712:	f2c0 81e3 	blt.w	8003adc <_vfprintf_r+0x164c>
 8003716:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800371a:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800371e:	2300      	movs	r3, #0
 8003720:	930b      	str	r3, [sp, #44]	; 0x2c
 8003722:	2e61      	cmp	r6, #97	; 0x61
 8003724:	f000 8255 	beq.w	8003bd2 <_vfprintf_r+0x1742>
 8003728:	2e41      	cmp	r6, #65	; 0x41
 800372a:	f47f aee3 	bne.w	80034f4 <_vfprintf_r+0x1064>
 800372e:	a824      	add	r0, sp, #144	; 0x90
 8003730:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003734:	f003 f8e2 	bl	80068fc <frexp>
 8003738:	2200      	movs	r2, #0
 800373a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800373e:	ec51 0b10 	vmov	r0, r1, d0
 8003742:	f7fd f9f9 	bl	8000b38 <__aeabi_dmul>
 8003746:	2200      	movs	r2, #0
 8003748:	2300      	movs	r3, #0
 800374a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800374e:	f7fd fc5b 	bl	8001008 <__aeabi_dcmpeq>
 8003752:	2800      	cmp	r0, #0
 8003754:	f040 8305 	bne.w	8003d62 <_vfprintf_r+0x18d2>
 8003758:	4b63      	ldr	r3, [pc, #396]	; (80038e8 <_vfprintf_r+0x1458>)
 800375a:	9309      	str	r3, [sp, #36]	; 0x24
 800375c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003760:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003764:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003768:	9721      	str	r7, [sp, #132]	; 0x84
 800376a:	46b9      	mov	r9, r7
 800376c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003770:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003774:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003778:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 800377c:	e003      	b.n	8003786 <_vfprintf_r+0x12f6>
 800377e:	f7fd fc43 	bl	8001008 <__aeabi_dcmpeq>
 8003782:	bb20      	cbnz	r0, 80037ce <_vfprintf_r+0x133e>
 8003784:	46a9      	mov	r9, r5
 8003786:	2200      	movs	r2, #0
 8003788:	4b58      	ldr	r3, [pc, #352]	; (80038ec <_vfprintf_r+0x145c>)
 800378a:	4630      	mov	r0, r6
 800378c:	4639      	mov	r1, r7
 800378e:	f7fd f9d3 	bl	8000b38 <__aeabi_dmul>
 8003792:	460f      	mov	r7, r1
 8003794:	4606      	mov	r6, r0
 8003796:	f7fd fc7f 	bl	8001098 <__aeabi_d2iz>
 800379a:	4680      	mov	r8, r0
 800379c:	f7fd f962 	bl	8000a64 <__aeabi_i2d>
 80037a0:	4602      	mov	r2, r0
 80037a2:	460b      	mov	r3, r1
 80037a4:	4630      	mov	r0, r6
 80037a6:	4639      	mov	r1, r7
 80037a8:	f7fd f80e 	bl	80007c8 <__aeabi_dsub>
 80037ac:	464d      	mov	r5, r9
 80037ae:	f81a c008 	ldrb.w	ip, [sl, r8]
 80037b2:	f805 cb01 	strb.w	ip, [r5], #1
 80037b6:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 80037ba:	46a3      	mov	fp, r4
 80037bc:	4606      	mov	r6, r0
 80037be:	460f      	mov	r7, r1
 80037c0:	f04f 0200 	mov.w	r2, #0
 80037c4:	f04f 0300 	mov.w	r3, #0
 80037c8:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 80037cc:	d1d7      	bne.n	800377e <_vfprintf_r+0x12ee>
 80037ce:	4630      	mov	r0, r6
 80037d0:	4639      	mov	r1, r7
 80037d2:	2200      	movs	r2, #0
 80037d4:	4b46      	ldr	r3, [pc, #280]	; (80038f0 <_vfprintf_r+0x1460>)
 80037d6:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 80037da:	9e10      	ldr	r6, [sp, #64]	; 0x40
 80037dc:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 80037e0:	4644      	mov	r4, r8
 80037e2:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 80037e6:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 80037ea:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 80037ee:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 80037f2:	9f21      	ldr	r7, [sp, #132]	; 0x84
 80037f4:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80037f8:	f7fd fc2e 	bl	8001058 <__aeabi_dcmpgt>
 80037fc:	2800      	cmp	r0, #0
 80037fe:	f040 8176 	bne.w	8003aee <_vfprintf_r+0x165e>
 8003802:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003806:	2200      	movs	r2, #0
 8003808:	4b39      	ldr	r3, [pc, #228]	; (80038f0 <_vfprintf_r+0x1460>)
 800380a:	f7fd fbfd 	bl	8001008 <__aeabi_dcmpeq>
 800380e:	b110      	cbz	r0, 8003816 <_vfprintf_r+0x1386>
 8003810:	07e2      	lsls	r2, r4, #31
 8003812:	f100 816c 	bmi.w	8003aee <_vfprintf_r+0x165e>
 8003816:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003818:	2b00      	cmp	r3, #0
 800381a:	db07      	blt.n	800382c <_vfprintf_r+0x139c>
 800381c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800381e:	3301      	adds	r3, #1
 8003820:	442b      	add	r3, r5
 8003822:	2230      	movs	r2, #48	; 0x30
 8003824:	f805 2b01 	strb.w	r2, [r5], #1
 8003828:	42ab      	cmp	r3, r5
 800382a:	d1fb      	bne.n	8003824 <_vfprintf_r+0x1394>
 800382c:	1beb      	subs	r3, r5, r7
 800382e:	4640      	mov	r0, r8
 8003830:	9310      	str	r3, [sp, #64]	; 0x40
 8003832:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003836:	e683      	b.n	8003540 <_vfprintf_r+0x10b0>
 8003838:	f8cd 9010 	str.w	r9, [sp, #16]
 800383c:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003840:	9408      	str	r4, [sp, #32]
 8003842:	4681      	mov	r9, r0
 8003844:	900f      	str	r0, [sp, #60]	; 0x3c
 8003846:	9014      	str	r0, [sp, #80]	; 0x50
 8003848:	9011      	str	r0, [sp, #68]	; 0x44
 800384a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800384e:	f7fe bfac 	b.w	80027aa <_vfprintf_r+0x31a>
 8003852:	aa2a      	add	r2, sp, #168	; 0xa8
 8003854:	9907      	ldr	r1, [sp, #28]
 8003856:	9803      	ldr	r0, [sp, #12]
 8003858:	f003 f948 	bl	8006aec <__sprint_r>
 800385c:	2800      	cmp	r0, #0
 800385e:	f47f ab8f 	bne.w	8002f80 <_vfprintf_r+0xaf0>
 8003862:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003864:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003866:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800386a:	e511      	b.n	8003290 <_vfprintf_r+0xe00>
 800386c:	4252      	negs	r2, r2
 800386e:	9206      	str	r2, [sp, #24]
 8003870:	9308      	str	r3, [sp, #32]
 8003872:	f7ff b96d 	b.w	8002b50 <_vfprintf_r+0x6c0>
 8003876:	4614      	mov	r4, r2
 8003878:	4632      	mov	r2, r6
 800387a:	461e      	mov	r6, r3
 800387c:	4613      	mov	r3, r2
 800387e:	462a      	mov	r2, r5
 8003880:	3201      	adds	r2, #1
 8003882:	9209      	str	r2, [sp, #36]	; 0x24
 8003884:	f106 0208 	add.w	r2, r6, #8
 8003888:	e9c6 3900 	strd	r3, r9, [r6]
 800388c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800388e:	932b      	str	r3, [sp, #172]	; 0xac
 8003890:	444c      	add	r4, r9
 8003892:	2b07      	cmp	r3, #7
 8003894:	942c      	str	r4, [sp, #176]	; 0xb0
 8003896:	f73f acc3 	bgt.w	8003220 <_vfprintf_r+0xd90>
 800389a:	3301      	adds	r3, #1
 800389c:	9309      	str	r3, [sp, #36]	; 0x24
 800389e:	f102 0b08 	add.w	fp, r2, #8
 80038a2:	4616      	mov	r6, r2
 80038a4:	f7ff bbca 	b.w	800303c <_vfprintf_r+0xbac>
 80038a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80038aa:	9907      	ldr	r1, [sp, #28]
 80038ac:	9803      	ldr	r0, [sp, #12]
 80038ae:	f003 f91d 	bl	8006aec <__sprint_r>
 80038b2:	2800      	cmp	r0, #0
 80038b4:	f47f ab64 	bne.w	8002f80 <_vfprintf_r+0xaf0>
 80038b8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80038ba:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80038be:	f7ff bade 	b.w	8002e7e <_vfprintf_r+0x9ee>
 80038c2:	464b      	mov	r3, r9
 80038c4:	2b06      	cmp	r3, #6
 80038c6:	bf28      	it	cs
 80038c8:	2306      	movcs	r3, #6
 80038ca:	46b9      	mov	r9, r7
 80038cc:	970f      	str	r7, [sp, #60]	; 0x3c
 80038ce:	9714      	str	r7, [sp, #80]	; 0x50
 80038d0:	9711      	str	r7, [sp, #68]	; 0x44
 80038d2:	970a      	str	r7, [sp, #40]	; 0x28
 80038d4:	463a      	mov	r2, r7
 80038d6:	9304      	str	r3, [sp, #16]
 80038d8:	e9cd 4308 	strd	r4, r3, [sp, #32]
 80038dc:	4f05      	ldr	r7, [pc, #20]	; (80038f4 <_vfprintf_r+0x1464>)
 80038de:	f7fe bf64 	b.w	80027aa <_vfprintf_r+0x31a>
 80038e2:	bf00      	nop
 80038e4:	080071cc 	.word	0x080071cc
 80038e8:	080071b0 	.word	0x080071b0
 80038ec:	40300000 	.word	0x40300000
 80038f0:	3fe00000 	.word	0x3fe00000
 80038f4:	080071c4 	.word	0x080071c4
 80038f8:	460c      	mov	r4, r1
 80038fa:	4639      	mov	r1, r7
 80038fc:	465f      	mov	r7, fp
 80038fe:	469b      	mov	fp, r3
 8003900:	460b      	mov	r3, r1
 8003902:	3201      	adds	r2, #1
 8003904:	442c      	add	r4, r5
 8003906:	2a07      	cmp	r2, #7
 8003908:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800390c:	e9cb 3500 	strd	r3, r5, [fp]
 8003910:	f73f aca5 	bgt.w	800325e <_vfprintf_r+0xdce>
 8003914:	f10b 0b08 	add.w	fp, fp, #8
 8003918:	e4ac      	b.n	8003274 <_vfprintf_r+0xde4>
 800391a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800391c:	1cda      	adds	r2, r3, #3
 800391e:	db02      	blt.n	8003926 <_vfprintf_r+0x1496>
 8003920:	4599      	cmp	r9, r3
 8003922:	f280 80b5 	bge.w	8003a90 <_vfprintf_r+0x1600>
 8003926:	3e02      	subs	r6, #2
 8003928:	f026 0320 	bic.w	r3, r6, #32
 800392c:	9304      	str	r3, [sp, #16]
 800392e:	e611      	b.n	8003554 <_vfprintf_r+0x10c4>
 8003930:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003932:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003936:	465a      	mov	r2, fp
 8003938:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 800393c:	18fb      	adds	r3, r7, r3
 800393e:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003942:	970c      	str	r7, [sp, #48]	; 0x30
 8003944:	4eaf      	ldr	r6, [pc, #700]	; (8003c04 <_vfprintf_r+0x1774>)
 8003946:	f8dd a01c 	ldr.w	sl, [sp, #28]
 800394a:	9309      	str	r3, [sp, #36]	; 0x24
 800394c:	464f      	mov	r7, r9
 800394e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003952:	4621      	mov	r1, r4
 8003954:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003956:	2b00      	cmp	r3, #0
 8003958:	d05b      	beq.n	8003a12 <_vfprintf_r+0x1582>
 800395a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800395c:	2b00      	cmp	r3, #0
 800395e:	d154      	bne.n	8003a0a <_vfprintf_r+0x157a>
 8003960:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003962:	3b01      	subs	r3, #1
 8003964:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003968:	9314      	str	r3, [sp, #80]	; 0x50
 800396a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800396c:	9818      	ldr	r0, [sp, #96]	; 0x60
 800396e:	6010      	str	r0, [r2, #0]
 8003970:	3301      	adds	r3, #1
 8003972:	4459      	add	r1, fp
 8003974:	2b07      	cmp	r3, #7
 8003976:	912c      	str	r1, [sp, #176]	; 0xb0
 8003978:	f8c2 b004 	str.w	fp, [r2, #4]
 800397c:	932b      	str	r3, [sp, #172]	; 0xac
 800397e:	dc68      	bgt.n	8003a52 <_vfprintf_r+0x15c2>
 8003980:	3208      	adds	r2, #8
 8003982:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003984:	f898 3000 	ldrb.w	r3, [r8]
 8003988:	1bc5      	subs	r5, r0, r7
 800398a:	429d      	cmp	r5, r3
 800398c:	bfa8      	it	ge
 800398e:	461d      	movge	r5, r3
 8003990:	2d00      	cmp	r5, #0
 8003992:	dd0b      	ble.n	80039ac <_vfprintf_r+0x151c>
 8003994:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003996:	6017      	str	r7, [r2, #0]
 8003998:	3301      	adds	r3, #1
 800399a:	4429      	add	r1, r5
 800399c:	2b07      	cmp	r3, #7
 800399e:	912c      	str	r1, [sp, #176]	; 0xb0
 80039a0:	6055      	str	r5, [r2, #4]
 80039a2:	932b      	str	r3, [sp, #172]	; 0xac
 80039a4:	dc5e      	bgt.n	8003a64 <_vfprintf_r+0x15d4>
 80039a6:	f898 3000 	ldrb.w	r3, [r8]
 80039aa:	3208      	adds	r2, #8
 80039ac:	2d00      	cmp	r5, #0
 80039ae:	bfac      	ite	ge
 80039b0:	1b5d      	subge	r5, r3, r5
 80039b2:	461d      	movlt	r5, r3
 80039b4:	2d00      	cmp	r5, #0
 80039b6:	dd26      	ble.n	8003a06 <_vfprintf_r+0x1576>
 80039b8:	2d10      	cmp	r5, #16
 80039ba:	982b      	ldr	r0, [sp, #172]	; 0xac
 80039bc:	dd3c      	ble.n	8003a38 <_vfprintf_r+0x15a8>
 80039be:	2410      	movs	r4, #16
 80039c0:	e003      	b.n	80039ca <_vfprintf_r+0x153a>
 80039c2:	3208      	adds	r2, #8
 80039c4:	3d10      	subs	r5, #16
 80039c6:	2d10      	cmp	r5, #16
 80039c8:	dd36      	ble.n	8003a38 <_vfprintf_r+0x15a8>
 80039ca:	3001      	adds	r0, #1
 80039cc:	3110      	adds	r1, #16
 80039ce:	2807      	cmp	r0, #7
 80039d0:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80039d4:	e9c2 6400 	strd	r6, r4, [r2]
 80039d8:	ddf3      	ble.n	80039c2 <_vfprintf_r+0x1532>
 80039da:	aa2a      	add	r2, sp, #168	; 0xa8
 80039dc:	4651      	mov	r1, sl
 80039de:	4648      	mov	r0, r9
 80039e0:	f003 f884 	bl	8006aec <__sprint_r>
 80039e4:	2800      	cmp	r0, #0
 80039e6:	d150      	bne.n	8003a8a <_vfprintf_r+0x15fa>
 80039e8:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 80039ec:	aa2d      	add	r2, sp, #180	; 0xb4
 80039ee:	e7e9      	b.n	80039c4 <_vfprintf_r+0x1534>
 80039f0:	aa2a      	add	r2, sp, #168	; 0xa8
 80039f2:	4651      	mov	r1, sl
 80039f4:	4648      	mov	r0, r9
 80039f6:	f003 f879 	bl	8006aec <__sprint_r>
 80039fa:	2800      	cmp	r0, #0
 80039fc:	d145      	bne.n	8003a8a <_vfprintf_r+0x15fa>
 80039fe:	f898 3000 	ldrb.w	r3, [r8]
 8003a02:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a04:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a06:	441f      	add	r7, r3
 8003a08:	e7a4      	b.n	8003954 <_vfprintf_r+0x14c4>
 8003a0a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003a0c:	3b01      	subs	r3, #1
 8003a0e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003a10:	e7ab      	b.n	800396a <_vfprintf_r+0x14da>
 8003a12:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003a14:	2b00      	cmp	r3, #0
 8003a16:	d1f8      	bne.n	8003a0a <_vfprintf_r+0x157a>
 8003a18:	46b9      	mov	r9, r7
 8003a1a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a1c:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003a1e:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003a22:	18fb      	adds	r3, r7, r3
 8003a24:	4599      	cmp	r9, r3
 8003a26:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003a2a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003a2e:	4693      	mov	fp, r2
 8003a30:	460c      	mov	r4, r1
 8003a32:	bf28      	it	cs
 8003a34:	4699      	movcs	r9, r3
 8003a36:	e424      	b.n	8003282 <_vfprintf_r+0xdf2>
 8003a38:	3001      	adds	r0, #1
 8003a3a:	4429      	add	r1, r5
 8003a3c:	2807      	cmp	r0, #7
 8003a3e:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003a42:	e9c2 6500 	strd	r6, r5, [r2]
 8003a46:	dcd3      	bgt.n	80039f0 <_vfprintf_r+0x1560>
 8003a48:	f898 3000 	ldrb.w	r3, [r8]
 8003a4c:	3208      	adds	r2, #8
 8003a4e:	441f      	add	r7, r3
 8003a50:	e780      	b.n	8003954 <_vfprintf_r+0x14c4>
 8003a52:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a54:	4651      	mov	r1, sl
 8003a56:	4648      	mov	r0, r9
 8003a58:	f003 f848 	bl	8006aec <__sprint_r>
 8003a5c:	b9a8      	cbnz	r0, 8003a8a <_vfprintf_r+0x15fa>
 8003a5e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a60:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a62:	e78e      	b.n	8003982 <_vfprintf_r+0x14f2>
 8003a64:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a66:	4651      	mov	r1, sl
 8003a68:	4648      	mov	r0, r9
 8003a6a:	f003 f83f 	bl	8006aec <__sprint_r>
 8003a6e:	b960      	cbnz	r0, 8003a8a <_vfprintf_r+0x15fa>
 8003a70:	f898 3000 	ldrb.w	r3, [r8]
 8003a74:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a76:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a78:	e798      	b.n	80039ac <_vfprintf_r+0x151c>
 8003a7a:	4638      	mov	r0, r7
 8003a7c:	f7fc fde0 	bl	8000640 <strlen>
 8003a80:	46a9      	mov	r9, r5
 8003a82:	4603      	mov	r3, r0
 8003a84:	9009      	str	r0, [sp, #36]	; 0x24
 8003a86:	f7ff b8f4 	b.w	8002c72 <_vfprintf_r+0x7e2>
 8003a8a:	46d1      	mov	r9, sl
 8003a8c:	f7ff ba7a 	b.w	8002f84 <_vfprintf_r+0xaf4>
 8003a90:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a92:	4619      	mov	r1, r3
 8003a94:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a96:	4299      	cmp	r1, r3
 8003a98:	f300 8082 	bgt.w	8003ba0 <_vfprintf_r+0x1710>
 8003a9c:	07c4      	lsls	r4, r0, #31
 8003a9e:	f140 816b 	bpl.w	8003d78 <_vfprintf_r+0x18e8>
 8003aa2:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003aa4:	4413      	add	r3, r2
 8003aa6:	9309      	str	r3, [sp, #36]	; 0x24
 8003aa8:	0541      	lsls	r1, r0, #21
 8003aaa:	d503      	bpl.n	8003ab4 <_vfprintf_r+0x1624>
 8003aac:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003aae:	2b00      	cmp	r3, #0
 8003ab0:	f300 80e6 	bgt.w	8003c80 <_vfprintf_r+0x17f0>
 8003ab4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003ab6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003aba:	9304      	str	r3, [sp, #16]
 8003abc:	2667      	movs	r6, #103	; 0x67
 8003abe:	2300      	movs	r3, #0
 8003ac0:	930f      	str	r3, [sp, #60]	; 0x3c
 8003ac2:	9314      	str	r3, [sp, #80]	; 0x50
 8003ac4:	e586      	b.n	80035d4 <_vfprintf_r+0x1144>
 8003ac6:	222d      	movs	r2, #45	; 0x2d
 8003ac8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003acc:	f04f 0900 	mov.w	r9, #0
 8003ad0:	f7fe be6c 	b.w	80027ac <_vfprintf_r+0x31c>
 8003ad4:	46a1      	mov	r9, r4
 8003ad6:	f7ff ba55 	b.w	8002f84 <_vfprintf_r+0xaf4>
 8003ada:	900a      	str	r0, [sp, #40]	; 0x28
 8003adc:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003ae0:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003ae4:	931f      	str	r3, [sp, #124]	; 0x7c
 8003ae6:	232d      	movs	r3, #45	; 0x2d
 8003ae8:	911e      	str	r1, [sp, #120]	; 0x78
 8003aea:	930b      	str	r3, [sp, #44]	; 0x2c
 8003aec:	e619      	b.n	8003722 <_vfprintf_r+0x1292>
 8003aee:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003af0:	9328      	str	r3, [sp, #160]	; 0xa0
 8003af2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003af4:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003af8:	7bd9      	ldrb	r1, [r3, #15]
 8003afa:	4291      	cmp	r1, r2
 8003afc:	462b      	mov	r3, r5
 8003afe:	d109      	bne.n	8003b14 <_vfprintf_r+0x1684>
 8003b00:	2030      	movs	r0, #48	; 0x30
 8003b02:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003b06:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003b08:	1e5a      	subs	r2, r3, #1
 8003b0a:	9228      	str	r2, [sp, #160]	; 0xa0
 8003b0c:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003b10:	4291      	cmp	r1, r2
 8003b12:	d0f6      	beq.n	8003b02 <_vfprintf_r+0x1672>
 8003b14:	2a39      	cmp	r2, #57	; 0x39
 8003b16:	bf0b      	itete	eq
 8003b18:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003b1a:	3201      	addne	r2, #1
 8003b1c:	7a92      	ldrbeq	r2, [r2, #10]
 8003b1e:	b2d2      	uxtbne	r2, r2
 8003b20:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003b24:	e682      	b.n	800382c <_vfprintf_r+0x139c>
 8003b26:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003b2a:	f43f ad9f 	beq.w	800366c <_vfprintf_r+0x11dc>
 8003b2e:	9a05      	ldr	r2, [sp, #20]
 8003b30:	701a      	strb	r2, [r3, #0]
 8003b32:	4657      	mov	r7, sl
 8003b34:	f7fe bf52 	b.w	80029dc <_vfprintf_r+0x54c>
 8003b38:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b3a:	9907      	ldr	r1, [sp, #28]
 8003b3c:	9803      	ldr	r0, [sp, #12]
 8003b3e:	f002 ffd5 	bl	8006aec <__sprint_r>
 8003b42:	2800      	cmp	r0, #0
 8003b44:	f47f aa1c 	bne.w	8002f80 <_vfprintf_r+0xaf0>
 8003b48:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b4a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003b4e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b52:	e571      	b.n	8003638 <_vfprintf_r+0x11a8>
 8003b54:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b56:	2b00      	cmp	r3, #0
 8003b58:	f340 8164 	ble.w	8003e24 <_vfprintf_r+0x1994>
 8003b5c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b5e:	f1b9 0f00 	cmp.w	r9, #0
 8003b62:	f040 8103 	bne.w	8003d6c <_vfprintf_r+0x18dc>
 8003b66:	07c6      	lsls	r6, r0, #31
 8003b68:	f100 8100 	bmi.w	8003d6c <_vfprintf_r+0x18dc>
 8003b6c:	9309      	str	r3, [sp, #36]	; 0x24
 8003b6e:	2666      	movs	r6, #102	; 0x66
 8003b70:	0543      	lsls	r3, r0, #21
 8003b72:	f100 8086 	bmi.w	8003c82 <_vfprintf_r+0x17f2>
 8003b76:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b78:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b7c:	9304      	str	r3, [sp, #16]
 8003b7e:	e79e      	b.n	8003abe <_vfprintf_r+0x162e>
 8003b80:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b82:	9907      	ldr	r1, [sp, #28]
 8003b84:	9803      	ldr	r0, [sp, #12]
 8003b86:	f002 ffb1 	bl	8006aec <__sprint_r>
 8003b8a:	2800      	cmp	r0, #0
 8003b8c:	f47f a9f8 	bne.w	8002f80 <_vfprintf_r+0xaf0>
 8003b90:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b92:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003b94:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b96:	1ad3      	subs	r3, r2, r3
 8003b98:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b9c:	f7ff bb90 	b.w	80032c0 <_vfprintf_r+0xe30>
 8003ba0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003ba2:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003ba4:	4413      	add	r3, r2
 8003ba6:	9309      	str	r3, [sp, #36]	; 0x24
 8003ba8:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003baa:	2b00      	cmp	r3, #0
 8003bac:	f340 8149 	ble.w	8003e42 <_vfprintf_r+0x19b2>
 8003bb0:	2667      	movs	r6, #103	; 0x67
 8003bb2:	e7dd      	b.n	8003b70 <_vfprintf_r+0x16e0>
 8003bb4:	2330      	movs	r3, #48	; 0x30
 8003bb6:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003bba:	2358      	movs	r3, #88	; 0x58
 8003bbc:	e595      	b.n	80036ea <_vfprintf_r+0x125a>
 8003bbe:	9803      	ldr	r0, [sp, #12]
 8003bc0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bc2:	4649      	mov	r1, r9
 8003bc4:	f002 ff92 	bl	8006aec <__sprint_r>
 8003bc8:	2800      	cmp	r0, #0
 8003bca:	f47f a9e0 	bne.w	8002f8e <_vfprintf_r+0xafe>
 8003bce:	f7fe bf0f 	b.w	80029f0 <_vfprintf_r+0x560>
 8003bd2:	a824      	add	r0, sp, #144	; 0x90
 8003bd4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003bd8:	f002 fe90 	bl	80068fc <frexp>
 8003bdc:	2200      	movs	r2, #0
 8003bde:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003be2:	ec51 0b10 	vmov	r0, r1, d0
 8003be6:	f7fc ffa7 	bl	8000b38 <__aeabi_dmul>
 8003bea:	2200      	movs	r2, #0
 8003bec:	2300      	movs	r3, #0
 8003bee:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003bf2:	f7fd fa09 	bl	8001008 <__aeabi_dcmpeq>
 8003bf6:	b108      	cbz	r0, 8003bfc <_vfprintf_r+0x176c>
 8003bf8:	2301      	movs	r3, #1
 8003bfa:	9324      	str	r3, [sp, #144]	; 0x90
 8003bfc:	4b02      	ldr	r3, [pc, #8]	; (8003c08 <_vfprintf_r+0x1778>)
 8003bfe:	9309      	str	r3, [sp, #36]	; 0x24
 8003c00:	e5ac      	b.n	800375c <_vfprintf_r+0x12cc>
 8003c02:	bf00      	nop
 8003c04:	080071e0 	.word	0x080071e0
 8003c08:	0800719c 	.word	0x0800719c
 8003c0c:	425d      	negs	r5, r3
 8003c0e:	3310      	adds	r3, #16
 8003c10:	4bb9      	ldr	r3, [pc, #740]	; (8003ef8 <_vfprintf_r+0x1a68>)
 8003c12:	f280 8097 	bge.w	8003d44 <_vfprintf_r+0x18b4>
 8003c16:	4619      	mov	r1, r3
 8003c18:	2610      	movs	r6, #16
 8003c1a:	4623      	mov	r3, r4
 8003c1c:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003c20:	460c      	mov	r4, r1
 8003c22:	e005      	b.n	8003c30 <_vfprintf_r+0x17a0>
 8003c24:	f10b 0b08 	add.w	fp, fp, #8
 8003c28:	3d10      	subs	r5, #16
 8003c2a:	2d10      	cmp	r5, #16
 8003c2c:	f340 8087 	ble.w	8003d3e <_vfprintf_r+0x18ae>
 8003c30:	3201      	adds	r2, #1
 8003c32:	3310      	adds	r3, #16
 8003c34:	2a07      	cmp	r2, #7
 8003c36:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003c3a:	e9cb 4600 	strd	r4, r6, [fp]
 8003c3e:	ddf1      	ble.n	8003c24 <_vfprintf_r+0x1794>
 8003c40:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c42:	9907      	ldr	r1, [sp, #28]
 8003c44:	4648      	mov	r0, r9
 8003c46:	f002 ff51 	bl	8006aec <__sprint_r>
 8003c4a:	2800      	cmp	r0, #0
 8003c4c:	f47f a998 	bne.w	8002f80 <_vfprintf_r+0xaf0>
 8003c50:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003c54:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c58:	e7e6      	b.n	8003c28 <_vfprintf_r+0x1798>
 8003c5a:	f109 0101 	add.w	r1, r9, #1
 8003c5e:	9803      	ldr	r0, [sp, #12]
 8003c60:	f001 fe80 	bl	8005964 <_malloc_r>
 8003c64:	4607      	mov	r7, r0
 8003c66:	2800      	cmp	r0, #0
 8003c68:	f000 813b 	beq.w	8003ee2 <_vfprintf_r+0x1a52>
 8003c6c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003c70:	930e      	str	r3, [sp, #56]	; 0x38
 8003c72:	f026 0320 	bic.w	r3, r6, #32
 8003c76:	9304      	str	r3, [sp, #16]
 8003c78:	46a0      	mov	r8, r4
 8003c7a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003c7c:	900a      	str	r0, [sp, #40]	; 0x28
 8003c7e:	e547      	b.n	8003710 <_vfprintf_r+0x1280>
 8003c80:	2667      	movs	r6, #103	; 0x67
 8003c82:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003c84:	2200      	movs	r2, #0
 8003c86:	920f      	str	r2, [sp, #60]	; 0x3c
 8003c88:	9214      	str	r2, [sp, #80]	; 0x50
 8003c8a:	7803      	ldrb	r3, [r0, #0]
 8003c8c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003c8e:	2bff      	cmp	r3, #255	; 0xff
 8003c90:	d00c      	beq.n	8003cac <_vfprintf_r+0x181c>
 8003c92:	4293      	cmp	r3, r2
 8003c94:	da0a      	bge.n	8003cac <_vfprintf_r+0x181c>
 8003c96:	7841      	ldrb	r1, [r0, #1]
 8003c98:	1ad2      	subs	r2, r2, r3
 8003c9a:	b1a9      	cbz	r1, 8003cc8 <_vfprintf_r+0x1838>
 8003c9c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c9e:	3301      	adds	r3, #1
 8003ca0:	9314      	str	r3, [sp, #80]	; 0x50
 8003ca2:	460b      	mov	r3, r1
 8003ca4:	2bff      	cmp	r3, #255	; 0xff
 8003ca6:	f100 0001 	add.w	r0, r0, #1
 8003caa:	d1f2      	bne.n	8003c92 <_vfprintf_r+0x1802>
 8003cac:	9211      	str	r2, [sp, #68]	; 0x44
 8003cae:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003cb0:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003cb2:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003cb4:	901a      	str	r0, [sp, #104]	; 0x68
 8003cb6:	4413      	add	r3, r2
 8003cb8:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003cba:	fb02 1303 	mla	r3, r2, r3, r1
 8003cbe:	9309      	str	r3, [sp, #36]	; 0x24
 8003cc0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003cc4:	9304      	str	r3, [sp, #16]
 8003cc6:	e485      	b.n	80035d4 <_vfprintf_r+0x1144>
 8003cc8:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003cca:	3101      	adds	r1, #1
 8003ccc:	910f      	str	r1, [sp, #60]	; 0x3c
 8003cce:	e7de      	b.n	8003c8e <_vfprintf_r+0x17fe>
 8003cd0:	aa28      	add	r2, sp, #160	; 0xa0
 8003cd2:	ab25      	add	r3, sp, #148	; 0x94
 8003cd4:	e9cd 3200 	strd	r3, r2, [sp]
 8003cd8:	2103      	movs	r1, #3
 8003cda:	ab24      	add	r3, sp, #144	; 0x90
 8003cdc:	464a      	mov	r2, r9
 8003cde:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003ce2:	9803      	ldr	r0, [sp, #12]
 8003ce4:	f000 fa5c 	bl	80041a0 <_dtoa_r>
 8003ce8:	464d      	mov	r5, r9
 8003cea:	4607      	mov	r7, r0
 8003cec:	eb00 0409 	add.w	r4, r0, r9
 8003cf0:	783b      	ldrb	r3, [r7, #0]
 8003cf2:	2b30      	cmp	r3, #48	; 0x30
 8003cf4:	f000 80be 	beq.w	8003e74 <_vfprintf_r+0x19e4>
 8003cf8:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003cfa:	442c      	add	r4, r5
 8003cfc:	2200      	movs	r2, #0
 8003cfe:	2300      	movs	r3, #0
 8003d00:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003d04:	f7fd f980 	bl	8001008 <__aeabi_dcmpeq>
 8003d08:	b108      	cbz	r0, 8003d0e <_vfprintf_r+0x187e>
 8003d0a:	4623      	mov	r3, r4
 8003d0c:	e413      	b.n	8003536 <_vfprintf_r+0x10a6>
 8003d0e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003d10:	42a3      	cmp	r3, r4
 8003d12:	f4bf ac10 	bcs.w	8003536 <_vfprintf_r+0x10a6>
 8003d16:	2130      	movs	r1, #48	; 0x30
 8003d18:	1c5a      	adds	r2, r3, #1
 8003d1a:	9228      	str	r2, [sp, #160]	; 0xa0
 8003d1c:	7019      	strb	r1, [r3, #0]
 8003d1e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003d20:	429c      	cmp	r4, r3
 8003d22:	d8f9      	bhi.n	8003d18 <_vfprintf_r+0x1888>
 8003d24:	e407      	b.n	8003536 <_vfprintf_r+0x10a6>
 8003d26:	197c      	adds	r4, r7, r5
 8003d28:	e7e8      	b.n	8003cfc <_vfprintf_r+0x186c>
 8003d2a:	f1b9 0f00 	cmp.w	r9, #0
 8003d2e:	f000 8092 	beq.w	8003e56 <_vfprintf_r+0x19c6>
 8003d32:	900a      	str	r0, [sp, #40]	; 0x28
 8003d34:	e4ec      	b.n	8003710 <_vfprintf_r+0x1280>
 8003d36:	900a      	str	r0, [sp, #40]	; 0x28
 8003d38:	f04f 0906 	mov.w	r9, #6
 8003d3c:	e4e8      	b.n	8003710 <_vfprintf_r+0x1280>
 8003d3e:	4621      	mov	r1, r4
 8003d40:	461c      	mov	r4, r3
 8003d42:	460b      	mov	r3, r1
 8003d44:	3201      	adds	r2, #1
 8003d46:	442c      	add	r4, r5
 8003d48:	2a07      	cmp	r2, #7
 8003d4a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003d4e:	e9cb 3500 	strd	r3, r5, [fp]
 8003d52:	f300 80a9 	bgt.w	8003ea8 <_vfprintf_r+0x1a18>
 8003d56:	f10b 0b08 	add.w	fp, fp, #8
 8003d5a:	e470      	b.n	800363e <_vfprintf_r+0x11ae>
 8003d5c:	469a      	mov	sl, r3
 8003d5e:	f7ff bb37 	b.w	80033d0 <_vfprintf_r+0xf40>
 8003d62:	2301      	movs	r3, #1
 8003d64:	9324      	str	r3, [sp, #144]	; 0x90
 8003d66:	4b65      	ldr	r3, [pc, #404]	; (8003efc <_vfprintf_r+0x1a6c>)
 8003d68:	9309      	str	r3, [sp, #36]	; 0x24
 8003d6a:	e4f7      	b.n	800375c <_vfprintf_r+0x12cc>
 8003d6c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003d6e:	4413      	add	r3, r2
 8003d70:	444b      	add	r3, r9
 8003d72:	9309      	str	r3, [sp, #36]	; 0x24
 8003d74:	2666      	movs	r6, #102	; 0x66
 8003d76:	e6fb      	b.n	8003b70 <_vfprintf_r+0x16e0>
 8003d78:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d7a:	9309      	str	r3, [sp, #36]	; 0x24
 8003d7c:	e694      	b.n	8003aa8 <_vfprintf_r+0x1618>
 8003d7e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003d82:	4664      	mov	r4, ip
 8003d84:	4d5e      	ldr	r5, [pc, #376]	; (8003f00 <_vfprintf_r+0x1a70>)
 8003d86:	e000      	b.n	8003d8a <_vfprintf_r+0x18fa>
 8003d88:	4614      	mov	r4, r2
 8003d8a:	fba5 1203 	umull	r1, r2, r5, r3
 8003d8e:	08d2      	lsrs	r2, r2, #3
 8003d90:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003d94:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003d98:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003d9c:	4613      	mov	r3, r2
 8003d9e:	2b09      	cmp	r3, #9
 8003da0:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003da4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003da8:	dcee      	bgt.n	8003d88 <_vfprintf_r+0x18f8>
 8003daa:	3330      	adds	r3, #48	; 0x30
 8003dac:	3c02      	subs	r4, #2
 8003dae:	b2db      	uxtb	r3, r3
 8003db0:	45a4      	cmp	ip, r4
 8003db2:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003db6:	f240 8090 	bls.w	8003eda <_vfprintf_r+0x1a4a>
 8003dba:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003dbe:	4611      	mov	r1, r2
 8003dc0:	e001      	b.n	8003dc6 <_vfprintf_r+0x1936>
 8003dc2:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003dc6:	f804 3b01 	strb.w	r3, [r4], #1
 8003dca:	458c      	cmp	ip, r1
 8003dcc:	d1f9      	bne.n	8003dc2 <_vfprintf_r+0x1932>
 8003dce:	ab2a      	add	r3, sp, #168	; 0xa8
 8003dd0:	1a9b      	subs	r3, r3, r2
 8003dd2:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003dd6:	4413      	add	r3, r2
 8003dd8:	f7ff bbe3 	b.w	80035a2 <_vfprintf_r+0x1112>
 8003ddc:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003dde:	4f49      	ldr	r7, [pc, #292]	; (8003f04 <_vfprintf_r+0x1a74>)
 8003de0:	2b00      	cmp	r3, #0
 8003de2:	bfb6      	itet	lt
 8003de4:	222d      	movlt	r2, #45	; 0x2d
 8003de6:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003dea:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003dee:	4b46      	ldr	r3, [pc, #280]	; (8003f08 <_vfprintf_r+0x1a78>)
 8003df0:	f7fe bf02 	b.w	8002bf8 <_vfprintf_r+0x768>
 8003df4:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003df8:	f7ff b8c9 	b.w	8002f8e <_vfprintf_r+0xafe>
 8003dfc:	aa28      	add	r2, sp, #160	; 0xa0
 8003dfe:	ab25      	add	r3, sp, #148	; 0x94
 8003e00:	e9cd 3200 	strd	r3, r2, [sp]
 8003e04:	2103      	movs	r1, #3
 8003e06:	ab24      	add	r3, sp, #144	; 0x90
 8003e08:	464a      	mov	r2, r9
 8003e0a:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003e0e:	9803      	ldr	r0, [sp, #12]
 8003e10:	f000 f9c6 	bl	80041a0 <_dtoa_r>
 8003e14:	464d      	mov	r5, r9
 8003e16:	4607      	mov	r7, r0
 8003e18:	2e46      	cmp	r6, #70	; 0x46
 8003e1a:	eb07 0405 	add.w	r4, r7, r5
 8003e1e:	f43f af67 	beq.w	8003cf0 <_vfprintf_r+0x1860>
 8003e22:	e76b      	b.n	8003cfc <_vfprintf_r+0x186c>
 8003e24:	f1b9 0f00 	cmp.w	r9, #0
 8003e28:	d131      	bne.n	8003e8e <_vfprintf_r+0x19fe>
 8003e2a:	07c5      	lsls	r5, r0, #31
 8003e2c:	d42f      	bmi.n	8003e8e <_vfprintf_r+0x19fe>
 8003e2e:	2301      	movs	r3, #1
 8003e30:	9304      	str	r3, [sp, #16]
 8003e32:	9309      	str	r3, [sp, #36]	; 0x24
 8003e34:	2666      	movs	r6, #102	; 0x66
 8003e36:	e642      	b.n	8003abe <_vfprintf_r+0x162e>
 8003e38:	07c3      	lsls	r3, r0, #31
 8003e3a:	f57f abbf 	bpl.w	80035bc <_vfprintf_r+0x112c>
 8003e3e:	f7ff bbb9 	b.w	80035b4 <_vfprintf_r+0x1124>
 8003e42:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003e44:	f1c3 0301 	rsb	r3, r3, #1
 8003e48:	441a      	add	r2, r3
 8003e4a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003e4e:	9209      	str	r2, [sp, #36]	; 0x24
 8003e50:	9304      	str	r3, [sp, #16]
 8003e52:	2667      	movs	r6, #103	; 0x67
 8003e54:	e633      	b.n	8003abe <_vfprintf_r+0x162e>
 8003e56:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003e5a:	f04f 0901 	mov.w	r9, #1
 8003e5e:	e457      	b.n	8003710 <_vfprintf_r+0x1280>
 8003e60:	465a      	mov	r2, fp
 8003e62:	e511      	b.n	8003888 <_vfprintf_r+0x13f8>
 8003e64:	2e47      	cmp	r6, #71	; 0x47
 8003e66:	f47f af5e 	bne.w	8003d26 <_vfprintf_r+0x1896>
 8003e6a:	f018 0f01 	tst.w	r8, #1
 8003e6e:	f43f ab61 	beq.w	8003534 <_vfprintf_r+0x10a4>
 8003e72:	e7d1      	b.n	8003e18 <_vfprintf_r+0x1988>
 8003e74:	2200      	movs	r2, #0
 8003e76:	2300      	movs	r3, #0
 8003e78:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003e7c:	f7fd f8c4 	bl	8001008 <__aeabi_dcmpeq>
 8003e80:	2800      	cmp	r0, #0
 8003e82:	f47f af39 	bne.w	8003cf8 <_vfprintf_r+0x1868>
 8003e86:	f1c5 0501 	rsb	r5, r5, #1
 8003e8a:	9524      	str	r5, [sp, #144]	; 0x90
 8003e8c:	e735      	b.n	8003cfa <_vfprintf_r+0x186a>
 8003e8e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003e90:	3301      	adds	r3, #1
 8003e92:	444b      	add	r3, r9
 8003e94:	9309      	str	r3, [sp, #36]	; 0x24
 8003e96:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003e9a:	9304      	str	r3, [sp, #16]
 8003e9c:	2666      	movs	r6, #102	; 0x66
 8003e9e:	e60e      	b.n	8003abe <_vfprintf_r+0x162e>
 8003ea0:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003ea4:	f7ff bb7a 	b.w	800359c <_vfprintf_r+0x110c>
 8003ea8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003eaa:	9907      	ldr	r1, [sp, #28]
 8003eac:	9803      	ldr	r0, [sp, #12]
 8003eae:	f002 fe1d 	bl	8006aec <__sprint_r>
 8003eb2:	2800      	cmp	r0, #0
 8003eb4:	f47f a864 	bne.w	8002f80 <_vfprintf_r+0xaf0>
 8003eb8:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003ebc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ec0:	f7ff bbbd 	b.w	800363e <_vfprintf_r+0x11ae>
 8003ec4:	9908      	ldr	r1, [sp, #32]
 8003ec6:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003eca:	680b      	ldr	r3, [r1, #0]
 8003ecc:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003ed0:	1d0b      	adds	r3, r1, #4
 8003ed2:	4692      	mov	sl, r2
 8003ed4:	9308      	str	r3, [sp, #32]
 8003ed6:	f7fe bb59 	b.w	800258c <_vfprintf_r+0xfc>
 8003eda:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003ede:	f7ff bb60 	b.w	80035a2 <_vfprintf_r+0x1112>
 8003ee2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003ee6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003eea:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003eee:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003ef2:	f7ff b84c 	b.w	8002f8e <_vfprintf_r+0xafe>
 8003ef6:	bf00      	nop
 8003ef8:	080071e0 	.word	0x080071e0
 8003efc:	080071b0 	.word	0x080071b0
 8003f00:	cccccccd 	.word	0xcccccccd
 8003f04:	08007198 	.word	0x08007198
 8003f08:	08007194 	.word	0x08007194

08003f0c <__sbprintf>:
 8003f0c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003f10:	460c      	mov	r4, r1
 8003f12:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003f16:	8989      	ldrh	r1, [r1, #12]
 8003f18:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003f1a:	89e5      	ldrh	r5, [r4, #14]
 8003f1c:	9619      	str	r6, [sp, #100]	; 0x64
 8003f1e:	f021 0102 	bic.w	r1, r1, #2
 8003f22:	4606      	mov	r6, r0
 8003f24:	69e0      	ldr	r0, [r4, #28]
 8003f26:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003f2a:	4617      	mov	r7, r2
 8003f2c:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003f30:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003f32:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003f36:	4698      	mov	r8, r3
 8003f38:	ad1a      	add	r5, sp, #104	; 0x68
 8003f3a:	2300      	movs	r3, #0
 8003f3c:	9007      	str	r0, [sp, #28]
 8003f3e:	a816      	add	r0, sp, #88	; 0x58
 8003f40:	9209      	str	r2, [sp, #36]	; 0x24
 8003f42:	9306      	str	r3, [sp, #24]
 8003f44:	9500      	str	r5, [sp, #0]
 8003f46:	9504      	str	r5, [sp, #16]
 8003f48:	9102      	str	r1, [sp, #8]
 8003f4a:	9105      	str	r1, [sp, #20]
 8003f4c:	f001 fc8a 	bl	8005864 <__retarget_lock_init_recursive>
 8003f50:	4643      	mov	r3, r8
 8003f52:	463a      	mov	r2, r7
 8003f54:	4669      	mov	r1, sp
 8003f56:	4630      	mov	r0, r6
 8003f58:	f7fe fa9a 	bl	8002490 <_vfprintf_r>
 8003f5c:	1e05      	subs	r5, r0, #0
 8003f5e:	db07      	blt.n	8003f70 <__sbprintf+0x64>
 8003f60:	4630      	mov	r0, r6
 8003f62:	4669      	mov	r1, sp
 8003f64:	f001 f8d6 	bl	8005114 <_fflush_r>
 8003f68:	2800      	cmp	r0, #0
 8003f6a:	bf18      	it	ne
 8003f6c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003f70:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003f74:	065b      	lsls	r3, r3, #25
 8003f76:	d503      	bpl.n	8003f80 <__sbprintf+0x74>
 8003f78:	89a3      	ldrh	r3, [r4, #12]
 8003f7a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003f7e:	81a3      	strh	r3, [r4, #12]
 8003f80:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003f82:	f001 fc71 	bl	8005868 <__retarget_lock_close_recursive>
 8003f86:	4628      	mov	r0, r5
 8003f88:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003f8c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003f90 <__swsetup_r>:
 8003f90:	b538      	push	{r3, r4, r5, lr}
 8003f92:	4b31      	ldr	r3, [pc, #196]	; (8004058 <__swsetup_r+0xc8>)
 8003f94:	681b      	ldr	r3, [r3, #0]
 8003f96:	4605      	mov	r5, r0
 8003f98:	460c      	mov	r4, r1
 8003f9a:	b113      	cbz	r3, 8003fa2 <__swsetup_r+0x12>
 8003f9c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003f9e:	2a00      	cmp	r2, #0
 8003fa0:	d03a      	beq.n	8004018 <__swsetup_r+0x88>
 8003fa2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003fa6:	b293      	uxth	r3, r2
 8003fa8:	0718      	lsls	r0, r3, #28
 8003faa:	d50c      	bpl.n	8003fc6 <__swsetup_r+0x36>
 8003fac:	6920      	ldr	r0, [r4, #16]
 8003fae:	b1a8      	cbz	r0, 8003fdc <__swsetup_r+0x4c>
 8003fb0:	f013 0201 	ands.w	r2, r3, #1
 8003fb4:	d020      	beq.n	8003ff8 <__swsetup_r+0x68>
 8003fb6:	6963      	ldr	r3, [r4, #20]
 8003fb8:	2200      	movs	r2, #0
 8003fba:	425b      	negs	r3, r3
 8003fbc:	61a3      	str	r3, [r4, #24]
 8003fbe:	60a2      	str	r2, [r4, #8]
 8003fc0:	b300      	cbz	r0, 8004004 <__swsetup_r+0x74>
 8003fc2:	2000      	movs	r0, #0
 8003fc4:	bd38      	pop	{r3, r4, r5, pc}
 8003fc6:	06d9      	lsls	r1, r3, #27
 8003fc8:	d53e      	bpl.n	8004048 <__swsetup_r+0xb8>
 8003fca:	0758      	lsls	r0, r3, #29
 8003fcc:	d428      	bmi.n	8004020 <__swsetup_r+0x90>
 8003fce:	6920      	ldr	r0, [r4, #16]
 8003fd0:	f042 0308 	orr.w	r3, r2, #8
 8003fd4:	81a3      	strh	r3, [r4, #12]
 8003fd6:	b29b      	uxth	r3, r3
 8003fd8:	2800      	cmp	r0, #0
 8003fda:	d1e9      	bne.n	8003fb0 <__swsetup_r+0x20>
 8003fdc:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003fe0:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003fe4:	d0e4      	beq.n	8003fb0 <__swsetup_r+0x20>
 8003fe6:	4628      	mov	r0, r5
 8003fe8:	4621      	mov	r1, r4
 8003fea:	f001 fc71 	bl	80058d0 <__smakebuf_r>
 8003fee:	89a3      	ldrh	r3, [r4, #12]
 8003ff0:	6920      	ldr	r0, [r4, #16]
 8003ff2:	f013 0201 	ands.w	r2, r3, #1
 8003ff6:	d1de      	bne.n	8003fb6 <__swsetup_r+0x26>
 8003ff8:	0799      	lsls	r1, r3, #30
 8003ffa:	bf58      	it	pl
 8003ffc:	6962      	ldrpl	r2, [r4, #20]
 8003ffe:	60a2      	str	r2, [r4, #8]
 8004000:	2800      	cmp	r0, #0
 8004002:	d1de      	bne.n	8003fc2 <__swsetup_r+0x32>
 8004004:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004008:	061a      	lsls	r2, r3, #24
 800400a:	d5db      	bpl.n	8003fc4 <__swsetup_r+0x34>
 800400c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004010:	81a3      	strh	r3, [r4, #12]
 8004012:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004016:	bd38      	pop	{r3, r4, r5, pc}
 8004018:	4618      	mov	r0, r3
 800401a:	f001 f8d7 	bl	80051cc <__sinit>
 800401e:	e7c0      	b.n	8003fa2 <__swsetup_r+0x12>
 8004020:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004022:	b151      	cbz	r1, 800403a <__swsetup_r+0xaa>
 8004024:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004028:	4299      	cmp	r1, r3
 800402a:	d004      	beq.n	8004036 <__swsetup_r+0xa6>
 800402c:	4628      	mov	r0, r5
 800402e:	f001 f96f 	bl	8005310 <_free_r>
 8004032:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004036:	2300      	movs	r3, #0
 8004038:	6323      	str	r3, [r4, #48]	; 0x30
 800403a:	2300      	movs	r3, #0
 800403c:	6920      	ldr	r0, [r4, #16]
 800403e:	6063      	str	r3, [r4, #4]
 8004040:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8004044:	6020      	str	r0, [r4, #0]
 8004046:	e7c3      	b.n	8003fd0 <__swsetup_r+0x40>
 8004048:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 800404c:	2309      	movs	r3, #9
 800404e:	602b      	str	r3, [r5, #0]
 8004050:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004054:	81a2      	strh	r2, [r4, #12]
 8004056:	bd38      	pop	{r3, r4, r5, pc}
 8004058:	20000018 	.word	0x20000018

0800405c <register_fini>:
 800405c:	4b02      	ldr	r3, [pc, #8]	; (8004068 <register_fini+0xc>)
 800405e:	b113      	cbz	r3, 8004066 <register_fini+0xa>
 8004060:	4802      	ldr	r0, [pc, #8]	; (800406c <register_fini+0x10>)
 8004062:	f000 b805 	b.w	8004070 <atexit>
 8004066:	4770      	bx	lr
 8004068:	00000000 	.word	0x00000000
 800406c:	0800523d 	.word	0x0800523d

08004070 <atexit>:
 8004070:	2300      	movs	r3, #0
 8004072:	4601      	mov	r1, r0
 8004074:	461a      	mov	r2, r3
 8004076:	4618      	mov	r0, r3
 8004078:	f002 bd58 	b.w	8006b2c <__register_exitproc>

0800407c <quorem>:
 800407c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004080:	6903      	ldr	r3, [r0, #16]
 8004082:	690f      	ldr	r7, [r1, #16]
 8004084:	42bb      	cmp	r3, r7
 8004086:	b083      	sub	sp, #12
 8004088:	f2c0 8086 	blt.w	8004198 <quorem+0x11c>
 800408c:	3f01      	subs	r7, #1
 800408e:	f101 0914 	add.w	r9, r1, #20
 8004092:	f100 0a14 	add.w	sl, r0, #20
 8004096:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 800409a:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 800409e:	00bc      	lsls	r4, r7, #2
 80040a0:	3201      	adds	r2, #1
 80040a2:	fbb3 f8f2 	udiv	r8, r3, r2
 80040a6:	eb0a 0304 	add.w	r3, sl, r4
 80040aa:	9400      	str	r4, [sp, #0]
 80040ac:	eb09 0b04 	add.w	fp, r9, r4
 80040b0:	9301      	str	r3, [sp, #4]
 80040b2:	f1b8 0f00 	cmp.w	r8, #0
 80040b6:	d038      	beq.n	800412a <quorem+0xae>
 80040b8:	2500      	movs	r5, #0
 80040ba:	462e      	mov	r6, r5
 80040bc:	46ce      	mov	lr, r9
 80040be:	46d4      	mov	ip, sl
 80040c0:	f85e 4b04 	ldr.w	r4, [lr], #4
 80040c4:	f8dc 3000 	ldr.w	r3, [ip]
 80040c8:	b2a2      	uxth	r2, r4
 80040ca:	fb08 5502 	mla	r5, r8, r2, r5
 80040ce:	0c22      	lsrs	r2, r4, #16
 80040d0:	0c2c      	lsrs	r4, r5, #16
 80040d2:	fb08 4202 	mla	r2, r8, r2, r4
 80040d6:	b2ad      	uxth	r5, r5
 80040d8:	1b75      	subs	r5, r6, r5
 80040da:	b296      	uxth	r6, r2
 80040dc:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80040e0:	fa15 f383 	uxtah	r3, r5, r3
 80040e4:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80040e8:	b29b      	uxth	r3, r3
 80040ea:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80040ee:	45f3      	cmp	fp, lr
 80040f0:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80040f4:	f84c 3b04 	str.w	r3, [ip], #4
 80040f8:	ea4f 4626 	mov.w	r6, r6, asr #16
 80040fc:	d2e0      	bcs.n	80040c0 <quorem+0x44>
 80040fe:	9b00      	ldr	r3, [sp, #0]
 8004100:	f85a 3003 	ldr.w	r3, [sl, r3]
 8004104:	b98b      	cbnz	r3, 800412a <quorem+0xae>
 8004106:	9a01      	ldr	r2, [sp, #4]
 8004108:	1f13      	subs	r3, r2, #4
 800410a:	459a      	cmp	sl, r3
 800410c:	d20c      	bcs.n	8004128 <quorem+0xac>
 800410e:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8004112:	b94b      	cbnz	r3, 8004128 <quorem+0xac>
 8004114:	f1a2 0308 	sub.w	r3, r2, #8
 8004118:	e002      	b.n	8004120 <quorem+0xa4>
 800411a:	681a      	ldr	r2, [r3, #0]
 800411c:	3b04      	subs	r3, #4
 800411e:	b91a      	cbnz	r2, 8004128 <quorem+0xac>
 8004120:	459a      	cmp	sl, r3
 8004122:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004126:	d3f8      	bcc.n	800411a <quorem+0x9e>
 8004128:	6107      	str	r7, [r0, #16]
 800412a:	4604      	mov	r4, r0
 800412c:	f002 f944 	bl	80063b8 <__mcmp>
 8004130:	2800      	cmp	r0, #0
 8004132:	db2d      	blt.n	8004190 <quorem+0x114>
 8004134:	f108 0801 	add.w	r8, r8, #1
 8004138:	4655      	mov	r5, sl
 800413a:	2300      	movs	r3, #0
 800413c:	f859 1b04 	ldr.w	r1, [r9], #4
 8004140:	6828      	ldr	r0, [r5, #0]
 8004142:	b28a      	uxth	r2, r1
 8004144:	1a9a      	subs	r2, r3, r2
 8004146:	0c0b      	lsrs	r3, r1, #16
 8004148:	fa12 f280 	uxtah	r2, r2, r0
 800414c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004150:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004154:	b292      	uxth	r2, r2
 8004156:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800415a:	45cb      	cmp	fp, r9
 800415c:	f845 2b04 	str.w	r2, [r5], #4
 8004160:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004164:	d2ea      	bcs.n	800413c <quorem+0xc0>
 8004166:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 800416a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 800416e:	b97a      	cbnz	r2, 8004190 <quorem+0x114>
 8004170:	1f1a      	subs	r2, r3, #4
 8004172:	4592      	cmp	sl, r2
 8004174:	d20b      	bcs.n	800418e <quorem+0x112>
 8004176:	f853 2c04 	ldr.w	r2, [r3, #-4]
 800417a:	b942      	cbnz	r2, 800418e <quorem+0x112>
 800417c:	3b08      	subs	r3, #8
 800417e:	e002      	b.n	8004186 <quorem+0x10a>
 8004180:	681a      	ldr	r2, [r3, #0]
 8004182:	3b04      	subs	r3, #4
 8004184:	b91a      	cbnz	r2, 800418e <quorem+0x112>
 8004186:	459a      	cmp	sl, r3
 8004188:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800418c:	d3f8      	bcc.n	8004180 <quorem+0x104>
 800418e:	6127      	str	r7, [r4, #16]
 8004190:	4640      	mov	r0, r8
 8004192:	b003      	add	sp, #12
 8004194:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004198:	2000      	movs	r0, #0
 800419a:	b003      	add	sp, #12
 800419c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

080041a0 <_dtoa_r>:
 80041a0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80041a4:	ec55 4b10 	vmov	r4, r5, d0
 80041a8:	b09b      	sub	sp, #108	; 0x6c
 80041aa:	6c06      	ldr	r6, [r0, #64]	; 0x40
 80041ac:	9102      	str	r1, [sp, #8]
 80041ae:	4681      	mov	r9, r0
 80041b0:	9207      	str	r2, [sp, #28]
 80041b2:	9305      	str	r3, [sp, #20]
 80041b4:	e9cd 4500 	strd	r4, r5, [sp]
 80041b8:	b156      	cbz	r6, 80041d0 <_dtoa_r+0x30>
 80041ba:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80041bc:	6072      	str	r2, [r6, #4]
 80041be:	2301      	movs	r3, #1
 80041c0:	4093      	lsls	r3, r2
 80041c2:	60b3      	str	r3, [r6, #8]
 80041c4:	4631      	mov	r1, r6
 80041c6:	f001 ff07 	bl	8005fd8 <_Bfree>
 80041ca:	2300      	movs	r3, #0
 80041cc:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80041d0:	f1b5 0800 	subs.w	r8, r5, #0
 80041d4:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80041d6:	bfb4      	ite	lt
 80041d8:	2301      	movlt	r3, #1
 80041da:	2300      	movge	r3, #0
 80041dc:	6013      	str	r3, [r2, #0]
 80041de:	4b76      	ldr	r3, [pc, #472]	; (80043b8 <_dtoa_r+0x218>)
 80041e0:	bfbc      	itt	lt
 80041e2:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80041e6:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80041ea:	ea33 0308 	bics.w	r3, r3, r8
 80041ee:	f000 80a6 	beq.w	800433e <_dtoa_r+0x19e>
 80041f2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80041f6:	2200      	movs	r2, #0
 80041f8:	2300      	movs	r3, #0
 80041fa:	4630      	mov	r0, r6
 80041fc:	4639      	mov	r1, r7
 80041fe:	f7fc ff03 	bl	8001008 <__aeabi_dcmpeq>
 8004202:	4605      	mov	r5, r0
 8004204:	b178      	cbz	r0, 8004226 <_dtoa_r+0x86>
 8004206:	9a05      	ldr	r2, [sp, #20]
 8004208:	2301      	movs	r3, #1
 800420a:	6013      	str	r3, [r2, #0]
 800420c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800420e:	2b00      	cmp	r3, #0
 8004210:	f000 80c0 	beq.w	8004394 <_dtoa_r+0x1f4>
 8004214:	4b69      	ldr	r3, [pc, #420]	; (80043bc <_dtoa_r+0x21c>)
 8004216:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004218:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 800421c:	6013      	str	r3, [r2, #0]
 800421e:	4658      	mov	r0, fp
 8004220:	b01b      	add	sp, #108	; 0x6c
 8004222:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004226:	aa18      	add	r2, sp, #96	; 0x60
 8004228:	a919      	add	r1, sp, #100	; 0x64
 800422a:	ec47 6b10 	vmov	d0, r6, r7
 800422e:	4648      	mov	r0, r9
 8004230:	f002 f954 	bl	80064dc <__d2b>
 8004234:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004238:	4682      	mov	sl, r0
 800423a:	f040 80a0 	bne.w	800437e <_dtoa_r+0x1de>
 800423e:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004242:	442c      	add	r4, r5
 8004244:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004248:	2b20      	cmp	r3, #32
 800424a:	f340 842c 	ble.w	8004aa6 <_dtoa_r+0x906>
 800424e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004252:	fa08 f803 	lsl.w	r8, r8, r3
 8004256:	9b00      	ldr	r3, [sp, #0]
 8004258:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800425c:	fa23 f000 	lsr.w	r0, r3, r0
 8004260:	ea48 0000 	orr.w	r0, r8, r0
 8004264:	f7fc fbee 	bl	8000a44 <__aeabi_ui2d>
 8004268:	2301      	movs	r3, #1
 800426a:	4606      	mov	r6, r0
 800426c:	3c01      	subs	r4, #1
 800426e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004272:	930f      	str	r3, [sp, #60]	; 0x3c
 8004274:	4630      	mov	r0, r6
 8004276:	4639      	mov	r1, r7
 8004278:	2200      	movs	r2, #0
 800427a:	4b51      	ldr	r3, [pc, #324]	; (80043c0 <_dtoa_r+0x220>)
 800427c:	f7fc faa4 	bl	80007c8 <__aeabi_dsub>
 8004280:	a347      	add	r3, pc, #284	; (adr r3, 80043a0 <_dtoa_r+0x200>)
 8004282:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004286:	f7fc fc57 	bl	8000b38 <__aeabi_dmul>
 800428a:	a347      	add	r3, pc, #284	; (adr r3, 80043a8 <_dtoa_r+0x208>)
 800428c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004290:	f7fc fa9c 	bl	80007cc <__adddf3>
 8004294:	4606      	mov	r6, r0
 8004296:	4620      	mov	r0, r4
 8004298:	460f      	mov	r7, r1
 800429a:	f7fc fbe3 	bl	8000a64 <__aeabi_i2d>
 800429e:	a344      	add	r3, pc, #272	; (adr r3, 80043b0 <_dtoa_r+0x210>)
 80042a0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80042a4:	f7fc fc48 	bl	8000b38 <__aeabi_dmul>
 80042a8:	4602      	mov	r2, r0
 80042aa:	460b      	mov	r3, r1
 80042ac:	4630      	mov	r0, r6
 80042ae:	4639      	mov	r1, r7
 80042b0:	f7fc fa8c 	bl	80007cc <__adddf3>
 80042b4:	4606      	mov	r6, r0
 80042b6:	460f      	mov	r7, r1
 80042b8:	f7fc feee 	bl	8001098 <__aeabi_d2iz>
 80042bc:	2200      	movs	r2, #0
 80042be:	9006      	str	r0, [sp, #24]
 80042c0:	2300      	movs	r3, #0
 80042c2:	4630      	mov	r0, r6
 80042c4:	4639      	mov	r1, r7
 80042c6:	f7fc fea9 	bl	800101c <__aeabi_dcmplt>
 80042ca:	2800      	cmp	r0, #0
 80042cc:	f040 8273 	bne.w	80047b6 <_dtoa_r+0x616>
 80042d0:	9e06      	ldr	r6, [sp, #24]
 80042d2:	2e16      	cmp	r6, #22
 80042d4:	f200 825d 	bhi.w	8004792 <_dtoa_r+0x5f2>
 80042d8:	4b3a      	ldr	r3, [pc, #232]	; (80043c4 <_dtoa_r+0x224>)
 80042da:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80042de:	e9d3 0100 	ldrd	r0, r1, [r3]
 80042e2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80042e6:	f7fc feb7 	bl	8001058 <__aeabi_dcmpgt>
 80042ea:	2800      	cmp	r0, #0
 80042ec:	f000 83d7 	beq.w	8004a9e <_dtoa_r+0x8fe>
 80042f0:	1e73      	subs	r3, r6, #1
 80042f2:	9306      	str	r3, [sp, #24]
 80042f4:	2300      	movs	r3, #0
 80042f6:	930d      	str	r3, [sp, #52]	; 0x34
 80042f8:	1b2c      	subs	r4, r5, r4
 80042fa:	f1b4 0801 	subs.w	r8, r4, #1
 80042fe:	f100 8254 	bmi.w	80047aa <_dtoa_r+0x60a>
 8004302:	2300      	movs	r3, #0
 8004304:	9308      	str	r3, [sp, #32]
 8004306:	9b06      	ldr	r3, [sp, #24]
 8004308:	2b00      	cmp	r3, #0
 800430a:	f2c0 8245 	blt.w	8004798 <_dtoa_r+0x5f8>
 800430e:	4498      	add	r8, r3
 8004310:	930c      	str	r3, [sp, #48]	; 0x30
 8004312:	2300      	movs	r3, #0
 8004314:	930b      	str	r3, [sp, #44]	; 0x2c
 8004316:	9b02      	ldr	r3, [sp, #8]
 8004318:	2b09      	cmp	r3, #9
 800431a:	d85b      	bhi.n	80043d4 <_dtoa_r+0x234>
 800431c:	2b05      	cmp	r3, #5
 800431e:	f340 83c0 	ble.w	8004aa2 <_dtoa_r+0x902>
 8004322:	3b04      	subs	r3, #4
 8004324:	9302      	str	r3, [sp, #8]
 8004326:	2500      	movs	r5, #0
 8004328:	9b02      	ldr	r3, [sp, #8]
 800432a:	3b02      	subs	r3, #2
 800432c:	2b03      	cmp	r3, #3
 800432e:	f200 8498 	bhi.w	8004c62 <_dtoa_r+0xac2>
 8004332:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004336:	03df      	.short	0x03df
 8004338:	03e803bf 	.word	0x03e803bf
 800433c:	04f5      	.short	0x04f5
 800433e:	9a05      	ldr	r2, [sp, #20]
 8004340:	f242 730f 	movw	r3, #9999	; 0x270f
 8004344:	6013      	str	r3, [r2, #0]
 8004346:	9b00      	ldr	r3, [sp, #0]
 8004348:	b983      	cbnz	r3, 800436c <_dtoa_r+0x1cc>
 800434a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 800434e:	b96b      	cbnz	r3, 800436c <_dtoa_r+0x1cc>
 8004350:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004352:	f8df b074 	ldr.w	fp, [pc, #116]	; 80043c8 <_dtoa_r+0x228>
 8004356:	2b00      	cmp	r3, #0
 8004358:	f43f af61 	beq.w	800421e <_dtoa_r+0x7e>
 800435c:	f10b 0308 	add.w	r3, fp, #8
 8004360:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004362:	4658      	mov	r0, fp
 8004364:	6013      	str	r3, [r2, #0]
 8004366:	b01b      	add	sp, #108	; 0x6c
 8004368:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800436c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800436e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80043cc <_dtoa_r+0x22c>
 8004372:	2b00      	cmp	r3, #0
 8004374:	f43f af53 	beq.w	800421e <_dtoa_r+0x7e>
 8004378:	f10b 0303 	add.w	r3, fp, #3
 800437c:	e7f0      	b.n	8004360 <_dtoa_r+0x1c0>
 800437e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004382:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004386:	950f      	str	r5, [sp, #60]	; 0x3c
 8004388:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 800438c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004390:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004392:	e76f      	b.n	8004274 <_dtoa_r+0xd4>
 8004394:	f8df b038 	ldr.w	fp, [pc, #56]	; 80043d0 <_dtoa_r+0x230>
 8004398:	4658      	mov	r0, fp
 800439a:	b01b      	add	sp, #108	; 0x6c
 800439c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80043a0:	636f4361 	.word	0x636f4361
 80043a4:	3fd287a7 	.word	0x3fd287a7
 80043a8:	8b60c8b3 	.word	0x8b60c8b3
 80043ac:	3fc68a28 	.word	0x3fc68a28
 80043b0:	509f79fb 	.word	0x509f79fb
 80043b4:	3fd34413 	.word	0x3fd34413
 80043b8:	7ff00000 	.word	0x7ff00000
 80043bc:	080071cd 	.word	0x080071cd
 80043c0:	3ff80000 	.word	0x3ff80000
 80043c4:	08007228 	.word	0x08007228
 80043c8:	080071f0 	.word	0x080071f0
 80043cc:	080071fc 	.word	0x080071fc
 80043d0:	080071cc 	.word	0x080071cc
 80043d4:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80043d8:	2501      	movs	r5, #1
 80043da:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80043de:	2300      	movs	r3, #0
 80043e0:	9302      	str	r3, [sp, #8]
 80043e2:	9307      	str	r3, [sp, #28]
 80043e4:	2100      	movs	r1, #0
 80043e6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80043ea:	940e      	str	r4, [sp, #56]	; 0x38
 80043ec:	4648      	mov	r0, r9
 80043ee:	f001 fdcd 	bl	8005f8c <_Balloc>
 80043f2:	2c0e      	cmp	r4, #14
 80043f4:	4683      	mov	fp, r0
 80043f6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80043fa:	f200 80fb 	bhi.w	80045f4 <_dtoa_r+0x454>
 80043fe:	2d00      	cmp	r5, #0
 8004400:	f000 80f8 	beq.w	80045f4 <_dtoa_r+0x454>
 8004404:	ed9d 7b00 	vldr	d7, [sp]
 8004408:	9906      	ldr	r1, [sp, #24]
 800440a:	2900      	cmp	r1, #0
 800440c:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004410:	f340 83e5 	ble.w	8004bde <_dtoa_r+0xa3e>
 8004414:	4b9d      	ldr	r3, [pc, #628]	; (800468c <_dtoa_r+0x4ec>)
 8004416:	f001 020f 	and.w	r2, r1, #15
 800441a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800441e:	ed93 7b00 	vldr	d7, [r3]
 8004422:	110c      	asrs	r4, r1, #4
 8004424:	06e2      	lsls	r2, r4, #27
 8004426:	ed8d 7b00 	vstr	d7, [sp]
 800442a:	f140 849e 	bpl.w	8004d6a <_dtoa_r+0xbca>
 800442e:	4b98      	ldr	r3, [pc, #608]	; (8004690 <_dtoa_r+0x4f0>)
 8004430:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004434:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004438:	f7fc fca8 	bl	8000d8c <__aeabi_ddiv>
 800443c:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004440:	f004 040f 	and.w	r4, r4, #15
 8004444:	2603      	movs	r6, #3
 8004446:	b17c      	cbz	r4, 8004468 <_dtoa_r+0x2c8>
 8004448:	e9dd 0100 	ldrd	r0, r1, [sp]
 800444c:	4d90      	ldr	r5, [pc, #576]	; (8004690 <_dtoa_r+0x4f0>)
 800444e:	07e3      	lsls	r3, r4, #31
 8004450:	d504      	bpl.n	800445c <_dtoa_r+0x2bc>
 8004452:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004456:	f7fc fb6f 	bl	8000b38 <__aeabi_dmul>
 800445a:	3601      	adds	r6, #1
 800445c:	1064      	asrs	r4, r4, #1
 800445e:	f105 0508 	add.w	r5, r5, #8
 8004462:	d1f4      	bne.n	800444e <_dtoa_r+0x2ae>
 8004464:	e9cd 0100 	strd	r0, r1, [sp]
 8004468:	e9dd 2300 	ldrd	r2, r3, [sp]
 800446c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004470:	f7fc fc8c 	bl	8000d8c <__aeabi_ddiv>
 8004474:	e9cd 0100 	strd	r0, r1, [sp]
 8004478:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800447a:	b143      	cbz	r3, 800448e <_dtoa_r+0x2ee>
 800447c:	2200      	movs	r2, #0
 800447e:	4b85      	ldr	r3, [pc, #532]	; (8004694 <_dtoa_r+0x4f4>)
 8004480:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004484:	f7fc fdca 	bl	800101c <__aeabi_dcmplt>
 8004488:	2800      	cmp	r0, #0
 800448a:	f040 84ff 	bne.w	8004e8c <_dtoa_r+0xcec>
 800448e:	4630      	mov	r0, r6
 8004490:	f7fc fae8 	bl	8000a64 <__aeabi_i2d>
 8004494:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004498:	f7fc fb4e 	bl	8000b38 <__aeabi_dmul>
 800449c:	4b7e      	ldr	r3, [pc, #504]	; (8004698 <_dtoa_r+0x4f8>)
 800449e:	2200      	movs	r2, #0
 80044a0:	f7fc f994 	bl	80007cc <__adddf3>
 80044a4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80044a6:	4606      	mov	r6, r0
 80044a8:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80044ac:	2b00      	cmp	r3, #0
 80044ae:	f000 841c 	beq.w	8004cea <_dtoa_r+0xb4a>
 80044b2:	9b06      	ldr	r3, [sp, #24]
 80044b4:	9316      	str	r3, [sp, #88]	; 0x58
 80044b6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80044b8:	9312      	str	r3, [sp, #72]	; 0x48
 80044ba:	e9dd 0100 	ldrd	r0, r1, [sp]
 80044be:	f7fc fdeb 	bl	8001098 <__aeabi_d2iz>
 80044c2:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80044c4:	4b71      	ldr	r3, [pc, #452]	; (800468c <_dtoa_r+0x4ec>)
 80044c6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80044ca:	ed13 7b02 	vldr	d7, [r3, #-8]
 80044ce:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80044d2:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80044d6:	f7fc fac5 	bl	8000a64 <__aeabi_i2d>
 80044da:	460b      	mov	r3, r1
 80044dc:	4602      	mov	r2, r0
 80044de:	e9dd 0100 	ldrd	r0, r1, [sp]
 80044e2:	e9cd 6700 	strd	r6, r7, [sp]
 80044e6:	f7fc f96f 	bl	80007c8 <__aeabi_dsub>
 80044ea:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80044ec:	b2ed      	uxtb	r5, r5
 80044ee:	4606      	mov	r6, r0
 80044f0:	460f      	mov	r7, r1
 80044f2:	f10b 0401 	add.w	r4, fp, #1
 80044f6:	2b00      	cmp	r3, #0
 80044f8:	f000 8458 	beq.w	8004dac <_dtoa_r+0xc0c>
 80044fc:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004500:	2000      	movs	r0, #0
 8004502:	4966      	ldr	r1, [pc, #408]	; (800469c <_dtoa_r+0x4fc>)
 8004504:	f7fc fc42 	bl	8000d8c <__aeabi_ddiv>
 8004508:	e9dd 2300 	ldrd	r2, r3, [sp]
 800450c:	f7fc f95c 	bl	80007c8 <__aeabi_dsub>
 8004510:	f88b 5000 	strb.w	r5, [fp]
 8004514:	4632      	mov	r2, r6
 8004516:	463b      	mov	r3, r7
 8004518:	e9cd 0100 	strd	r0, r1, [sp]
 800451c:	f7fc fd9c 	bl	8001058 <__aeabi_dcmpgt>
 8004520:	2800      	cmp	r0, #0
 8004522:	f040 8502 	bne.w	8004f2a <_dtoa_r+0xd8a>
 8004526:	4632      	mov	r2, r6
 8004528:	463b      	mov	r3, r7
 800452a:	2000      	movs	r0, #0
 800452c:	4959      	ldr	r1, [pc, #356]	; (8004694 <_dtoa_r+0x4f4>)
 800452e:	f7fc f94b 	bl	80007c8 <__aeabi_dsub>
 8004532:	4602      	mov	r2, r0
 8004534:	460b      	mov	r3, r1
 8004536:	e9dd 0100 	ldrd	r0, r1, [sp]
 800453a:	f7fc fd8d 	bl	8001058 <__aeabi_dcmpgt>
 800453e:	2800      	cmp	r0, #0
 8004540:	f040 84fb 	bne.w	8004f3a <_dtoa_r+0xd9a>
 8004544:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004546:	2a01      	cmp	r2, #1
 8004548:	d050      	beq.n	80045ec <_dtoa_r+0x44c>
 800454a:	445a      	add	r2, fp
 800454c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004550:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004554:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004558:	4692      	mov	sl, r2
 800455a:	46cb      	mov	fp, r9
 800455c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004560:	e00c      	b.n	800457c <_dtoa_r+0x3dc>
 8004562:	2000      	movs	r0, #0
 8004564:	494b      	ldr	r1, [pc, #300]	; (8004694 <_dtoa_r+0x4f4>)
 8004566:	f7fc f92f 	bl	80007c8 <__aeabi_dsub>
 800456a:	4642      	mov	r2, r8
 800456c:	464b      	mov	r3, r9
 800456e:	f7fc fd55 	bl	800101c <__aeabi_dcmplt>
 8004572:	2800      	cmp	r0, #0
 8004574:	f040 84dc 	bne.w	8004f30 <_dtoa_r+0xd90>
 8004578:	4554      	cmp	r4, sl
 800457a:	d030      	beq.n	80045de <_dtoa_r+0x43e>
 800457c:	4640      	mov	r0, r8
 800457e:	4649      	mov	r1, r9
 8004580:	2200      	movs	r2, #0
 8004582:	4b47      	ldr	r3, [pc, #284]	; (80046a0 <_dtoa_r+0x500>)
 8004584:	f7fc fad8 	bl	8000b38 <__aeabi_dmul>
 8004588:	2200      	movs	r2, #0
 800458a:	4b45      	ldr	r3, [pc, #276]	; (80046a0 <_dtoa_r+0x500>)
 800458c:	4680      	mov	r8, r0
 800458e:	4689      	mov	r9, r1
 8004590:	4630      	mov	r0, r6
 8004592:	4639      	mov	r1, r7
 8004594:	f7fc fad0 	bl	8000b38 <__aeabi_dmul>
 8004598:	460f      	mov	r7, r1
 800459a:	4606      	mov	r6, r0
 800459c:	f7fc fd7c 	bl	8001098 <__aeabi_d2iz>
 80045a0:	4605      	mov	r5, r0
 80045a2:	f7fc fa5f 	bl	8000a64 <__aeabi_i2d>
 80045a6:	4602      	mov	r2, r0
 80045a8:	460b      	mov	r3, r1
 80045aa:	4630      	mov	r0, r6
 80045ac:	4639      	mov	r1, r7
 80045ae:	f7fc f90b 	bl	80007c8 <__aeabi_dsub>
 80045b2:	3530      	adds	r5, #48	; 0x30
 80045b4:	b2ed      	uxtb	r5, r5
 80045b6:	4642      	mov	r2, r8
 80045b8:	464b      	mov	r3, r9
 80045ba:	f804 5b01 	strb.w	r5, [r4], #1
 80045be:	4606      	mov	r6, r0
 80045c0:	460f      	mov	r7, r1
 80045c2:	f7fc fd2b 	bl	800101c <__aeabi_dcmplt>
 80045c6:	4632      	mov	r2, r6
 80045c8:	463b      	mov	r3, r7
 80045ca:	2800      	cmp	r0, #0
 80045cc:	d0c9      	beq.n	8004562 <_dtoa_r+0x3c2>
 80045ce:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80045d0:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80045d4:	9306      	str	r3, [sp, #24]
 80045d6:	46d9      	mov	r9, fp
 80045d8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80045dc:	e236      	b.n	8004a4c <_dtoa_r+0x8ac>
 80045de:	46d9      	mov	r9, fp
 80045e0:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80045e4:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80045e8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80045ec:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80045f0:	e9cd 3400 	strd	r3, r4, [sp]
 80045f4:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80045f6:	2b00      	cmp	r3, #0
 80045f8:	f2c0 80ae 	blt.w	8004758 <_dtoa_r+0x5b8>
 80045fc:	9a06      	ldr	r2, [sp, #24]
 80045fe:	2a0e      	cmp	r2, #14
 8004600:	f300 80aa 	bgt.w	8004758 <_dtoa_r+0x5b8>
 8004604:	4b21      	ldr	r3, [pc, #132]	; (800468c <_dtoa_r+0x4ec>)
 8004606:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800460a:	ed93 7b00 	vldr	d7, [r3]
 800460e:	9b07      	ldr	r3, [sp, #28]
 8004610:	2b00      	cmp	r3, #0
 8004612:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004616:	f2c0 82be 	blt.w	8004b96 <_dtoa_r+0x9f6>
 800461a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800461e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004622:	4630      	mov	r0, r6
 8004624:	4639      	mov	r1, r7
 8004626:	f7fc fbb1 	bl	8000d8c <__aeabi_ddiv>
 800462a:	f7fc fd35 	bl	8001098 <__aeabi_d2iz>
 800462e:	4605      	mov	r5, r0
 8004630:	f7fc fa18 	bl	8000a64 <__aeabi_i2d>
 8004634:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004638:	f7fc fa7e 	bl	8000b38 <__aeabi_dmul>
 800463c:	460b      	mov	r3, r1
 800463e:	4602      	mov	r2, r0
 8004640:	4639      	mov	r1, r7
 8004642:	4630      	mov	r0, r6
 8004644:	f7fc f8c0 	bl	80007c8 <__aeabi_dsub>
 8004648:	f105 0330 	add.w	r3, r5, #48	; 0x30
 800464c:	f88b 3000 	strb.w	r3, [fp]
 8004650:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004652:	2b01      	cmp	r3, #1
 8004654:	4606      	mov	r6, r0
 8004656:	460f      	mov	r7, r1
 8004658:	f10b 0401 	add.w	r4, fp, #1
 800465c:	d053      	beq.n	8004706 <_dtoa_r+0x566>
 800465e:	2200      	movs	r2, #0
 8004660:	4b0f      	ldr	r3, [pc, #60]	; (80046a0 <_dtoa_r+0x500>)
 8004662:	f7fc fa69 	bl	8000b38 <__aeabi_dmul>
 8004666:	2200      	movs	r2, #0
 8004668:	2300      	movs	r3, #0
 800466a:	4606      	mov	r6, r0
 800466c:	460f      	mov	r7, r1
 800466e:	f7fc fccb 	bl	8001008 <__aeabi_dcmpeq>
 8004672:	2800      	cmp	r0, #0
 8004674:	f040 81ea 	bne.w	8004a4c <_dtoa_r+0x8ac>
 8004678:	f8cd a000 	str.w	sl, [sp]
 800467c:	f8cd 901c 	str.w	r9, [sp, #28]
 8004680:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004684:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004688:	e017      	b.n	80046ba <_dtoa_r+0x51a>
 800468a:	bf00      	nop
 800468c:	08007228 	.word	0x08007228
 8004690:	08007200 	.word	0x08007200
 8004694:	3ff00000 	.word	0x3ff00000
 8004698:	401c0000 	.word	0x401c0000
 800469c:	3fe00000 	.word	0x3fe00000
 80046a0:	40240000 	.word	0x40240000
 80046a4:	f7fc fa48 	bl	8000b38 <__aeabi_dmul>
 80046a8:	2200      	movs	r2, #0
 80046aa:	2300      	movs	r3, #0
 80046ac:	4606      	mov	r6, r0
 80046ae:	460f      	mov	r7, r1
 80046b0:	f7fc fcaa 	bl	8001008 <__aeabi_dcmpeq>
 80046b4:	2800      	cmp	r0, #0
 80046b6:	f040 833d 	bne.w	8004d34 <_dtoa_r+0xb94>
 80046ba:	464a      	mov	r2, r9
 80046bc:	4653      	mov	r3, sl
 80046be:	4630      	mov	r0, r6
 80046c0:	4639      	mov	r1, r7
 80046c2:	f7fc fb63 	bl	8000d8c <__aeabi_ddiv>
 80046c6:	f7fc fce7 	bl	8001098 <__aeabi_d2iz>
 80046ca:	4605      	mov	r5, r0
 80046cc:	f7fc f9ca 	bl	8000a64 <__aeabi_i2d>
 80046d0:	464a      	mov	r2, r9
 80046d2:	4653      	mov	r3, sl
 80046d4:	f7fc fa30 	bl	8000b38 <__aeabi_dmul>
 80046d8:	4602      	mov	r2, r0
 80046da:	460b      	mov	r3, r1
 80046dc:	4630      	mov	r0, r6
 80046de:	4639      	mov	r1, r7
 80046e0:	f7fc f872 	bl	80007c8 <__aeabi_dsub>
 80046e4:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80046e8:	f804 cb01 	strb.w	ip, [r4], #1
 80046ec:	eba4 0c0b 	sub.w	ip, r4, fp
 80046f0:	45e0      	cmp	r8, ip
 80046f2:	4606      	mov	r6, r0
 80046f4:	460f      	mov	r7, r1
 80046f6:	f04f 0200 	mov.w	r2, #0
 80046fa:	4bc1      	ldr	r3, [pc, #772]	; (8004a00 <_dtoa_r+0x860>)
 80046fc:	d1d2      	bne.n	80046a4 <_dtoa_r+0x504>
 80046fe:	f8dd a000 	ldr.w	sl, [sp]
 8004702:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004706:	4632      	mov	r2, r6
 8004708:	463b      	mov	r3, r7
 800470a:	4630      	mov	r0, r6
 800470c:	4639      	mov	r1, r7
 800470e:	f7fc f85d 	bl	80007cc <__adddf3>
 8004712:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004716:	4606      	mov	r6, r0
 8004718:	460f      	mov	r7, r1
 800471a:	f7fc fc9d 	bl	8001058 <__aeabi_dcmpgt>
 800471e:	b958      	cbnz	r0, 8004738 <_dtoa_r+0x598>
 8004720:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004724:	4630      	mov	r0, r6
 8004726:	4639      	mov	r1, r7
 8004728:	f7fc fc6e 	bl	8001008 <__aeabi_dcmpeq>
 800472c:	2800      	cmp	r0, #0
 800472e:	f000 818d 	beq.w	8004a4c <_dtoa_r+0x8ac>
 8004732:	07e9      	lsls	r1, r5, #31
 8004734:	f140 818a 	bpl.w	8004a4c <_dtoa_r+0x8ac>
 8004738:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800473c:	e005      	b.n	800474a <_dtoa_r+0x5aa>
 800473e:	459b      	cmp	fp, r3
 8004740:	f000 8373 	beq.w	8004e2a <_dtoa_r+0xc8a>
 8004744:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004748:	461c      	mov	r4, r3
 800474a:	2d39      	cmp	r5, #57	; 0x39
 800474c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004750:	d0f5      	beq.n	800473e <_dtoa_r+0x59e>
 8004752:	3501      	adds	r5, #1
 8004754:	701d      	strb	r5, [r3, #0]
 8004756:	e179      	b.n	8004a4c <_dtoa_r+0x8ac>
 8004758:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800475a:	2a00      	cmp	r2, #0
 800475c:	d03b      	beq.n	80047d6 <_dtoa_r+0x636>
 800475e:	9a02      	ldr	r2, [sp, #8]
 8004760:	2a01      	cmp	r2, #1
 8004762:	f340 820b 	ble.w	8004b7c <_dtoa_r+0x9dc>
 8004766:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004768:	1e5f      	subs	r7, r3, #1
 800476a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800476c:	42bb      	cmp	r3, r7
 800476e:	f2c0 82e6 	blt.w	8004d3e <_dtoa_r+0xb9e>
 8004772:	1bdf      	subs	r7, r3, r7
 8004774:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004776:	2b00      	cmp	r3, #0
 8004778:	f2c0 830b 	blt.w	8004d92 <_dtoa_r+0xbf2>
 800477c:	9a08      	ldr	r2, [sp, #32]
 800477e:	4614      	mov	r4, r2
 8004780:	441a      	add	r2, r3
 8004782:	4498      	add	r8, r3
 8004784:	9208      	str	r2, [sp, #32]
 8004786:	2101      	movs	r1, #1
 8004788:	4648      	mov	r0, r9
 800478a:	f001 fcbf 	bl	800610c <__i2b>
 800478e:	4605      	mov	r5, r0
 8004790:	e024      	b.n	80047dc <_dtoa_r+0x63c>
 8004792:	2301      	movs	r3, #1
 8004794:	930d      	str	r3, [sp, #52]	; 0x34
 8004796:	e5af      	b.n	80042f8 <_dtoa_r+0x158>
 8004798:	9a08      	ldr	r2, [sp, #32]
 800479a:	9b06      	ldr	r3, [sp, #24]
 800479c:	1ad2      	subs	r2, r2, r3
 800479e:	425b      	negs	r3, r3
 80047a0:	930b      	str	r3, [sp, #44]	; 0x2c
 80047a2:	2300      	movs	r3, #0
 80047a4:	9208      	str	r2, [sp, #32]
 80047a6:	930c      	str	r3, [sp, #48]	; 0x30
 80047a8:	e5b5      	b.n	8004316 <_dtoa_r+0x176>
 80047aa:	f1c4 0301 	rsb	r3, r4, #1
 80047ae:	9308      	str	r3, [sp, #32]
 80047b0:	f04f 0800 	mov.w	r8, #0
 80047b4:	e5a7      	b.n	8004306 <_dtoa_r+0x166>
 80047b6:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80047ba:	4640      	mov	r0, r8
 80047bc:	f7fc f952 	bl	8000a64 <__aeabi_i2d>
 80047c0:	4632      	mov	r2, r6
 80047c2:	463b      	mov	r3, r7
 80047c4:	f7fc fc20 	bl	8001008 <__aeabi_dcmpeq>
 80047c8:	2800      	cmp	r0, #0
 80047ca:	f47f ad81 	bne.w	80042d0 <_dtoa_r+0x130>
 80047ce:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80047d2:	9306      	str	r3, [sp, #24]
 80047d4:	e57c      	b.n	80042d0 <_dtoa_r+0x130>
 80047d6:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80047d8:	9c08      	ldr	r4, [sp, #32]
 80047da:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80047dc:	2c00      	cmp	r4, #0
 80047de:	dd0c      	ble.n	80047fa <_dtoa_r+0x65a>
 80047e0:	f1b8 0f00 	cmp.w	r8, #0
 80047e4:	dd09      	ble.n	80047fa <_dtoa_r+0x65a>
 80047e6:	4544      	cmp	r4, r8
 80047e8:	9a08      	ldr	r2, [sp, #32]
 80047ea:	4623      	mov	r3, r4
 80047ec:	bfa8      	it	ge
 80047ee:	4643      	movge	r3, r8
 80047f0:	1ad2      	subs	r2, r2, r3
 80047f2:	9208      	str	r2, [sp, #32]
 80047f4:	1ae4      	subs	r4, r4, r3
 80047f6:	eba8 0803 	sub.w	r8, r8, r3
 80047fa:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80047fc:	b16b      	cbz	r3, 800481a <_dtoa_r+0x67a>
 80047fe:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004800:	2a00      	cmp	r2, #0
 8004802:	f000 8290 	beq.w	8004d26 <_dtoa_r+0xb86>
 8004806:	1bde      	subs	r6, r3, r7
 8004808:	2f00      	cmp	r7, #0
 800480a:	f040 819b 	bne.w	8004b44 <_dtoa_r+0x9a4>
 800480e:	4651      	mov	r1, sl
 8004810:	4632      	mov	r2, r6
 8004812:	4648      	mov	r0, r9
 8004814:	f001 fd2a 	bl	800626c <__pow5mult>
 8004818:	4682      	mov	sl, r0
 800481a:	2101      	movs	r1, #1
 800481c:	4648      	mov	r0, r9
 800481e:	f001 fc75 	bl	800610c <__i2b>
 8004822:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004824:	4606      	mov	r6, r0
 8004826:	2a00      	cmp	r2, #0
 8004828:	f040 8125 	bne.w	8004a76 <_dtoa_r+0x8d6>
 800482c:	9b02      	ldr	r3, [sp, #8]
 800482e:	2b01      	cmp	r3, #1
 8004830:	f340 816c 	ble.w	8004b0c <_dtoa_r+0x96c>
 8004834:	2001      	movs	r0, #1
 8004836:	4440      	add	r0, r8
 8004838:	f010 001f 	ands.w	r0, r0, #31
 800483c:	f000 8119 	beq.w	8004a72 <_dtoa_r+0x8d2>
 8004840:	f1c0 0320 	rsb	r3, r0, #32
 8004844:	2b04      	cmp	r3, #4
 8004846:	f340 83ac 	ble.w	8004fa2 <_dtoa_r+0xe02>
 800484a:	f1c0 001c 	rsb	r0, r0, #28
 800484e:	9b08      	ldr	r3, [sp, #32]
 8004850:	4403      	add	r3, r0
 8004852:	9308      	str	r3, [sp, #32]
 8004854:	4404      	add	r4, r0
 8004856:	4480      	add	r8, r0
 8004858:	9b08      	ldr	r3, [sp, #32]
 800485a:	2b00      	cmp	r3, #0
 800485c:	dd05      	ble.n	800486a <_dtoa_r+0x6ca>
 800485e:	4651      	mov	r1, sl
 8004860:	461a      	mov	r2, r3
 8004862:	4648      	mov	r0, r9
 8004864:	f001 fd52 	bl	800630c <__lshift>
 8004868:	4682      	mov	sl, r0
 800486a:	f1b8 0f00 	cmp.w	r8, #0
 800486e:	dd05      	ble.n	800487c <_dtoa_r+0x6dc>
 8004870:	4631      	mov	r1, r6
 8004872:	4642      	mov	r2, r8
 8004874:	4648      	mov	r0, r9
 8004876:	f001 fd49 	bl	800630c <__lshift>
 800487a:	4606      	mov	r6, r0
 800487c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800487e:	2b00      	cmp	r3, #0
 8004880:	d177      	bne.n	8004972 <_dtoa_r+0x7d2>
 8004882:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004884:	2b00      	cmp	r3, #0
 8004886:	f340 8209 	ble.w	8004c9c <_dtoa_r+0xafc>
 800488a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800488c:	2b00      	cmp	r3, #0
 800488e:	f000 8089 	beq.w	80049a4 <_dtoa_r+0x804>
 8004892:	2c00      	cmp	r4, #0
 8004894:	f300 816b 	bgt.w	8004b6e <_dtoa_r+0x9ce>
 8004898:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800489a:	2b00      	cmp	r3, #0
 800489c:	f040 81cd 	bne.w	8004c3a <_dtoa_r+0xa9a>
 80048a0:	46a8      	mov	r8, r5
 80048a2:	9a00      	ldr	r2, [sp, #0]
 80048a4:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 80048a8:	f002 0201 	and.w	r2, r2, #1
 80048ac:	920a      	str	r2, [sp, #40]	; 0x28
 80048ae:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80048b0:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 80048b4:	441a      	add	r2, r3
 80048b6:	465f      	mov	r7, fp
 80048b8:	9209      	str	r2, [sp, #36]	; 0x24
 80048ba:	46b3      	mov	fp, r6
 80048bc:	4659      	mov	r1, fp
 80048be:	4650      	mov	r0, sl
 80048c0:	f7ff fbdc 	bl	800407c <quorem>
 80048c4:	4629      	mov	r1, r5
 80048c6:	4604      	mov	r4, r0
 80048c8:	4650      	mov	r0, sl
 80048ca:	f001 fd75 	bl	80063b8 <__mcmp>
 80048ce:	4659      	mov	r1, fp
 80048d0:	4606      	mov	r6, r0
 80048d2:	4642      	mov	r2, r8
 80048d4:	4648      	mov	r0, r9
 80048d6:	f001 fd8b 	bl	80063f0 <__mdiff>
 80048da:	f104 0330 	add.w	r3, r4, #48	; 0x30
 80048de:	9300      	str	r3, [sp, #0]
 80048e0:	68c3      	ldr	r3, [r0, #12]
 80048e2:	4601      	mov	r1, r0
 80048e4:	2b00      	cmp	r3, #0
 80048e6:	f040 81d4 	bne.w	8004c92 <_dtoa_r+0xaf2>
 80048ea:	9008      	str	r0, [sp, #32]
 80048ec:	4650      	mov	r0, sl
 80048ee:	f001 fd63 	bl	80063b8 <__mcmp>
 80048f2:	9a08      	ldr	r2, [sp, #32]
 80048f4:	9007      	str	r0, [sp, #28]
 80048f6:	4611      	mov	r1, r2
 80048f8:	4648      	mov	r0, r9
 80048fa:	f001 fb6d 	bl	8005fd8 <_Bfree>
 80048fe:	9b07      	ldr	r3, [sp, #28]
 8004900:	b933      	cbnz	r3, 8004910 <_dtoa_r+0x770>
 8004902:	9a02      	ldr	r2, [sp, #8]
 8004904:	b922      	cbnz	r2, 8004910 <_dtoa_r+0x770>
 8004906:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004908:	2b00      	cmp	r3, #0
 800490a:	f000 8319 	beq.w	8004f40 <_dtoa_r+0xda0>
 800490e:	9b02      	ldr	r3, [sp, #8]
 8004910:	2e00      	cmp	r6, #0
 8004912:	f2c0 821c 	blt.w	8004d4e <_dtoa_r+0xbae>
 8004916:	d105      	bne.n	8004924 <_dtoa_r+0x784>
 8004918:	9a02      	ldr	r2, [sp, #8]
 800491a:	b91a      	cbnz	r2, 8004924 <_dtoa_r+0x784>
 800491c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800491e:	2a00      	cmp	r2, #0
 8004920:	f000 8215 	beq.w	8004d4e <_dtoa_r+0xbae>
 8004924:	2b00      	cmp	r3, #0
 8004926:	f107 0401 	add.w	r4, r7, #1
 800492a:	f300 8225 	bgt.w	8004d78 <_dtoa_r+0xbd8>
 800492e:	9b00      	ldr	r3, [sp, #0]
 8004930:	703b      	strb	r3, [r7, #0]
 8004932:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004934:	42bb      	cmp	r3, r7
 8004936:	f000 8230 	beq.w	8004d9a <_dtoa_r+0xbfa>
 800493a:	4651      	mov	r1, sl
 800493c:	2300      	movs	r3, #0
 800493e:	220a      	movs	r2, #10
 8004940:	4648      	mov	r0, r9
 8004942:	f001 fb53 	bl	8005fec <__multadd>
 8004946:	4545      	cmp	r5, r8
 8004948:	4682      	mov	sl, r0
 800494a:	4629      	mov	r1, r5
 800494c:	f04f 0300 	mov.w	r3, #0
 8004950:	f04f 020a 	mov.w	r2, #10
 8004954:	4648      	mov	r0, r9
 8004956:	f000 8196 	beq.w	8004c86 <_dtoa_r+0xae6>
 800495a:	f001 fb47 	bl	8005fec <__multadd>
 800495e:	4641      	mov	r1, r8
 8004960:	4605      	mov	r5, r0
 8004962:	2300      	movs	r3, #0
 8004964:	220a      	movs	r2, #10
 8004966:	4648      	mov	r0, r9
 8004968:	f001 fb40 	bl	8005fec <__multadd>
 800496c:	4627      	mov	r7, r4
 800496e:	4680      	mov	r8, r0
 8004970:	e7a4      	b.n	80048bc <_dtoa_r+0x71c>
 8004972:	4631      	mov	r1, r6
 8004974:	4650      	mov	r0, sl
 8004976:	f001 fd1f 	bl	80063b8 <__mcmp>
 800497a:	2800      	cmp	r0, #0
 800497c:	da81      	bge.n	8004882 <_dtoa_r+0x6e2>
 800497e:	9f06      	ldr	r7, [sp, #24]
 8004980:	4651      	mov	r1, sl
 8004982:	2300      	movs	r3, #0
 8004984:	220a      	movs	r2, #10
 8004986:	4648      	mov	r0, r9
 8004988:	3f01      	subs	r7, #1
 800498a:	9706      	str	r7, [sp, #24]
 800498c:	f001 fb2e 	bl	8005fec <__multadd>
 8004990:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004992:	4682      	mov	sl, r0
 8004994:	2b00      	cmp	r3, #0
 8004996:	f040 82eb 	bne.w	8004f70 <_dtoa_r+0xdd0>
 800499a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800499c:	2b00      	cmp	r3, #0
 800499e:	f340 82f3 	ble.w	8004f88 <_dtoa_r+0xde8>
 80049a2:	9309      	str	r3, [sp, #36]	; 0x24
 80049a4:	465c      	mov	r4, fp
 80049a6:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80049aa:	e002      	b.n	80049b2 <_dtoa_r+0x812>
 80049ac:	f001 fb1e 	bl	8005fec <__multadd>
 80049b0:	4682      	mov	sl, r0
 80049b2:	4631      	mov	r1, r6
 80049b4:	4650      	mov	r0, sl
 80049b6:	f7ff fb61 	bl	800407c <quorem>
 80049ba:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80049be:	f804 7b01 	strb.w	r7, [r4], #1
 80049c2:	eba4 030b 	sub.w	r3, r4, fp
 80049c6:	4598      	cmp	r8, r3
 80049c8:	f04f 020a 	mov.w	r2, #10
 80049cc:	f04f 0300 	mov.w	r3, #0
 80049d0:	4651      	mov	r1, sl
 80049d2:	4648      	mov	r0, r9
 80049d4:	dcea      	bgt.n	80049ac <_dtoa_r+0x80c>
 80049d6:	2300      	movs	r3, #0
 80049d8:	9700      	str	r7, [sp, #0]
 80049da:	9302      	str	r3, [sp, #8]
 80049dc:	4651      	mov	r1, sl
 80049de:	2201      	movs	r2, #1
 80049e0:	4648      	mov	r0, r9
 80049e2:	f001 fc93 	bl	800630c <__lshift>
 80049e6:	4631      	mov	r1, r6
 80049e8:	4682      	mov	sl, r0
 80049ea:	f001 fce5 	bl	80063b8 <__mcmp>
 80049ee:	2800      	cmp	r0, #0
 80049f0:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 80049f4:	dc14      	bgt.n	8004a20 <_dtoa_r+0x880>
 80049f6:	d108      	bne.n	8004a0a <_dtoa_r+0x86a>
 80049f8:	9b00      	ldr	r3, [sp, #0]
 80049fa:	07db      	lsls	r3, r3, #31
 80049fc:	d410      	bmi.n	8004a20 <_dtoa_r+0x880>
 80049fe:	e004      	b.n	8004a0a <_dtoa_r+0x86a>
 8004a00:	40240000 	.word	0x40240000
 8004a04:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004a08:	461c      	mov	r4, r3
 8004a0a:	2a30      	cmp	r2, #48	; 0x30
 8004a0c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004a10:	d0f8      	beq.n	8004a04 <_dtoa_r+0x864>
 8004a12:	e00b      	b.n	8004a2c <_dtoa_r+0x88c>
 8004a14:	459b      	cmp	fp, r3
 8004a16:	f000 814e 	beq.w	8004cb6 <_dtoa_r+0xb16>
 8004a1a:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004a1e:	461c      	mov	r4, r3
 8004a20:	2a39      	cmp	r2, #57	; 0x39
 8004a22:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004a26:	d0f5      	beq.n	8004a14 <_dtoa_r+0x874>
 8004a28:	3201      	adds	r2, #1
 8004a2a:	701a      	strb	r2, [r3, #0]
 8004a2c:	4631      	mov	r1, r6
 8004a2e:	4648      	mov	r0, r9
 8004a30:	f001 fad2 	bl	8005fd8 <_Bfree>
 8004a34:	b155      	cbz	r5, 8004a4c <_dtoa_r+0x8ac>
 8004a36:	9902      	ldr	r1, [sp, #8]
 8004a38:	b121      	cbz	r1, 8004a44 <_dtoa_r+0x8a4>
 8004a3a:	42a9      	cmp	r1, r5
 8004a3c:	d002      	beq.n	8004a44 <_dtoa_r+0x8a4>
 8004a3e:	4648      	mov	r0, r9
 8004a40:	f001 faca 	bl	8005fd8 <_Bfree>
 8004a44:	4629      	mov	r1, r5
 8004a46:	4648      	mov	r0, r9
 8004a48:	f001 fac6 	bl	8005fd8 <_Bfree>
 8004a4c:	4651      	mov	r1, sl
 8004a4e:	4648      	mov	r0, r9
 8004a50:	f001 fac2 	bl	8005fd8 <_Bfree>
 8004a54:	2200      	movs	r2, #0
 8004a56:	9b06      	ldr	r3, [sp, #24]
 8004a58:	7022      	strb	r2, [r4, #0]
 8004a5a:	9a05      	ldr	r2, [sp, #20]
 8004a5c:	3301      	adds	r3, #1
 8004a5e:	6013      	str	r3, [r2, #0]
 8004a60:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004a62:	2b00      	cmp	r3, #0
 8004a64:	f43f abdb 	beq.w	800421e <_dtoa_r+0x7e>
 8004a68:	4658      	mov	r0, fp
 8004a6a:	601c      	str	r4, [r3, #0]
 8004a6c:	b01b      	add	sp, #108	; 0x6c
 8004a6e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004a72:	201c      	movs	r0, #28
 8004a74:	e6eb      	b.n	800484e <_dtoa_r+0x6ae>
 8004a76:	4601      	mov	r1, r0
 8004a78:	4648      	mov	r0, r9
 8004a7a:	f001 fbf7 	bl	800626c <__pow5mult>
 8004a7e:	9b02      	ldr	r3, [sp, #8]
 8004a80:	2b01      	cmp	r3, #1
 8004a82:	4606      	mov	r6, r0
 8004a84:	f340 80d4 	ble.w	8004c30 <_dtoa_r+0xa90>
 8004a88:	2300      	movs	r3, #0
 8004a8a:	930c      	str	r3, [sp, #48]	; 0x30
 8004a8c:	6933      	ldr	r3, [r6, #16]
 8004a8e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004a92:	6918      	ldr	r0, [r3, #16]
 8004a94:	f001 faea 	bl	800606c <__hi0bits>
 8004a98:	f1c0 0020 	rsb	r0, r0, #32
 8004a9c:	e6cb      	b.n	8004836 <_dtoa_r+0x696>
 8004a9e:	900d      	str	r0, [sp, #52]	; 0x34
 8004aa0:	e42a      	b.n	80042f8 <_dtoa_r+0x158>
 8004aa2:	2501      	movs	r5, #1
 8004aa4:	e440      	b.n	8004328 <_dtoa_r+0x188>
 8004aa6:	f1c3 0820 	rsb	r8, r3, #32
 8004aaa:	9b00      	ldr	r3, [sp, #0]
 8004aac:	fa03 f008 	lsl.w	r0, r3, r8
 8004ab0:	f7ff bbd8 	b.w	8004264 <_dtoa_r+0xc4>
 8004ab4:	2300      	movs	r3, #0
 8004ab6:	930a      	str	r3, [sp, #40]	; 0x28
 8004ab8:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004abc:	4413      	add	r3, r2
 8004abe:	930e      	str	r3, [sp, #56]	; 0x38
 8004ac0:	3301      	adds	r3, #1
 8004ac2:	2b01      	cmp	r3, #1
 8004ac4:	461e      	mov	r6, r3
 8004ac6:	9309      	str	r3, [sp, #36]	; 0x24
 8004ac8:	bfb8      	it	lt
 8004aca:	2601      	movlt	r6, #1
 8004acc:	2100      	movs	r1, #0
 8004ace:	2e17      	cmp	r6, #23
 8004ad0:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004ad4:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004ad6:	f77f ac89 	ble.w	80043ec <_dtoa_r+0x24c>
 8004ada:	2201      	movs	r2, #1
 8004adc:	2304      	movs	r3, #4
 8004ade:	005b      	lsls	r3, r3, #1
 8004ae0:	f103 0014 	add.w	r0, r3, #20
 8004ae4:	42b0      	cmp	r0, r6
 8004ae6:	4611      	mov	r1, r2
 8004ae8:	f102 0201 	add.w	r2, r2, #1
 8004aec:	d9f7      	bls.n	8004ade <_dtoa_r+0x93e>
 8004aee:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004af2:	e47b      	b.n	80043ec <_dtoa_r+0x24c>
 8004af4:	2300      	movs	r3, #0
 8004af6:	930a      	str	r3, [sp, #40]	; 0x28
 8004af8:	9e07      	ldr	r6, [sp, #28]
 8004afa:	2e00      	cmp	r6, #0
 8004afc:	f340 80e2 	ble.w	8004cc4 <_dtoa_r+0xb24>
 8004b00:	960e      	str	r6, [sp, #56]	; 0x38
 8004b02:	9609      	str	r6, [sp, #36]	; 0x24
 8004b04:	e7e2      	b.n	8004acc <_dtoa_r+0x92c>
 8004b06:	2301      	movs	r3, #1
 8004b08:	930a      	str	r3, [sp, #40]	; 0x28
 8004b0a:	e7f5      	b.n	8004af8 <_dtoa_r+0x958>
 8004b0c:	9b00      	ldr	r3, [sp, #0]
 8004b0e:	2b00      	cmp	r3, #0
 8004b10:	f47f ae90 	bne.w	8004834 <_dtoa_r+0x694>
 8004b14:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004b18:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004b1c:	2b00      	cmp	r3, #0
 8004b1e:	f040 8192 	bne.w	8004e46 <_dtoa_r+0xca6>
 8004b22:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004b26:	0d1b      	lsrs	r3, r3, #20
 8004b28:	051b      	lsls	r3, r3, #20
 8004b2a:	b12b      	cbz	r3, 8004b38 <_dtoa_r+0x998>
 8004b2c:	9b08      	ldr	r3, [sp, #32]
 8004b2e:	3301      	adds	r3, #1
 8004b30:	9308      	str	r3, [sp, #32]
 8004b32:	f108 0801 	add.w	r8, r8, #1
 8004b36:	2301      	movs	r3, #1
 8004b38:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004b3a:	930c      	str	r3, [sp, #48]	; 0x30
 8004b3c:	2a00      	cmp	r2, #0
 8004b3e:	f43f ae79 	beq.w	8004834 <_dtoa_r+0x694>
 8004b42:	e7a3      	b.n	8004a8c <_dtoa_r+0x8ec>
 8004b44:	463a      	mov	r2, r7
 8004b46:	4629      	mov	r1, r5
 8004b48:	4648      	mov	r0, r9
 8004b4a:	f001 fb8f 	bl	800626c <__pow5mult>
 8004b4e:	4652      	mov	r2, sl
 8004b50:	4601      	mov	r1, r0
 8004b52:	4605      	mov	r5, r0
 8004b54:	4648      	mov	r0, r9
 8004b56:	f001 fae3 	bl	8006120 <__multiply>
 8004b5a:	4651      	mov	r1, sl
 8004b5c:	4607      	mov	r7, r0
 8004b5e:	4648      	mov	r0, r9
 8004b60:	f001 fa3a 	bl	8005fd8 <_Bfree>
 8004b64:	46ba      	mov	sl, r7
 8004b66:	2e00      	cmp	r6, #0
 8004b68:	f43f ae57 	beq.w	800481a <_dtoa_r+0x67a>
 8004b6c:	e64f      	b.n	800480e <_dtoa_r+0x66e>
 8004b6e:	4629      	mov	r1, r5
 8004b70:	4622      	mov	r2, r4
 8004b72:	4648      	mov	r0, r9
 8004b74:	f001 fbca 	bl	800630c <__lshift>
 8004b78:	4605      	mov	r5, r0
 8004b7a:	e68d      	b.n	8004898 <_dtoa_r+0x6f8>
 8004b7c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004b7e:	2a00      	cmp	r2, #0
 8004b80:	f000 815d 	beq.w	8004e3e <_dtoa_r+0xc9e>
 8004b84:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004b88:	9a08      	ldr	r2, [sp, #32]
 8004b8a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004b8c:	4614      	mov	r4, r2
 8004b8e:	441a      	add	r2, r3
 8004b90:	4498      	add	r8, r3
 8004b92:	9208      	str	r2, [sp, #32]
 8004b94:	e5f7      	b.n	8004786 <_dtoa_r+0x5e6>
 8004b96:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b98:	2b00      	cmp	r3, #0
 8004b9a:	f73f ad3e 	bgt.w	800461a <_dtoa_r+0x47a>
 8004b9e:	f040 80bc 	bne.w	8004d1a <_dtoa_r+0xb7a>
 8004ba2:	ec51 0b17 	vmov	r0, r1, d7
 8004ba6:	2200      	movs	r2, #0
 8004ba8:	4bb2      	ldr	r3, [pc, #712]	; (8004e74 <_dtoa_r+0xcd4>)
 8004baa:	f7fb ffc5 	bl	8000b38 <__aeabi_dmul>
 8004bae:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004bb2:	f7fc fa47 	bl	8001044 <__aeabi_dcmpge>
 8004bb6:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004bb8:	4635      	mov	r5, r6
 8004bba:	2800      	cmp	r0, #0
 8004bbc:	d176      	bne.n	8004cac <_dtoa_r+0xb0c>
 8004bbe:	9a06      	ldr	r2, [sp, #24]
 8004bc0:	2331      	movs	r3, #49	; 0x31
 8004bc2:	3201      	adds	r2, #1
 8004bc4:	9206      	str	r2, [sp, #24]
 8004bc6:	f88b 3000 	strb.w	r3, [fp]
 8004bca:	f10b 0401 	add.w	r4, fp, #1
 8004bce:	4631      	mov	r1, r6
 8004bd0:	4648      	mov	r0, r9
 8004bd2:	f001 fa01 	bl	8005fd8 <_Bfree>
 8004bd6:	2d00      	cmp	r5, #0
 8004bd8:	f47f af34 	bne.w	8004a44 <_dtoa_r+0x8a4>
 8004bdc:	e736      	b.n	8004a4c <_dtoa_r+0x8ac>
 8004bde:	f000 8142 	beq.w	8004e66 <_dtoa_r+0xcc6>
 8004be2:	9b06      	ldr	r3, [sp, #24]
 8004be4:	425c      	negs	r4, r3
 8004be6:	4ba4      	ldr	r3, [pc, #656]	; (8004e78 <_dtoa_r+0xcd8>)
 8004be8:	f004 020f 	and.w	r2, r4, #15
 8004bec:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004bf0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004bf4:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004bf8:	f7fb ff9e 	bl	8000b38 <__aeabi_dmul>
 8004bfc:	1124      	asrs	r4, r4, #4
 8004bfe:	e9cd 0100 	strd	r0, r1, [sp]
 8004c02:	f000 81c6 	beq.w	8004f92 <_dtoa_r+0xdf2>
 8004c06:	4d9d      	ldr	r5, [pc, #628]	; (8004e7c <_dtoa_r+0xcdc>)
 8004c08:	2300      	movs	r3, #0
 8004c0a:	2602      	movs	r6, #2
 8004c0c:	07e7      	lsls	r7, r4, #31
 8004c0e:	d505      	bpl.n	8004c1c <_dtoa_r+0xa7c>
 8004c10:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004c14:	f7fb ff90 	bl	8000b38 <__aeabi_dmul>
 8004c18:	3601      	adds	r6, #1
 8004c1a:	2301      	movs	r3, #1
 8004c1c:	1064      	asrs	r4, r4, #1
 8004c1e:	f105 0508 	add.w	r5, r5, #8
 8004c22:	d1f3      	bne.n	8004c0c <_dtoa_r+0xa6c>
 8004c24:	2b00      	cmp	r3, #0
 8004c26:	f43f ac27 	beq.w	8004478 <_dtoa_r+0x2d8>
 8004c2a:	e9cd 0100 	strd	r0, r1, [sp]
 8004c2e:	e423      	b.n	8004478 <_dtoa_r+0x2d8>
 8004c30:	9b00      	ldr	r3, [sp, #0]
 8004c32:	2b00      	cmp	r3, #0
 8004c34:	f43f af6e 	beq.w	8004b14 <_dtoa_r+0x974>
 8004c38:	e726      	b.n	8004a88 <_dtoa_r+0x8e8>
 8004c3a:	6869      	ldr	r1, [r5, #4]
 8004c3c:	4648      	mov	r0, r9
 8004c3e:	f001 f9a5 	bl	8005f8c <_Balloc>
 8004c42:	692b      	ldr	r3, [r5, #16]
 8004c44:	3302      	adds	r3, #2
 8004c46:	009a      	lsls	r2, r3, #2
 8004c48:	4604      	mov	r4, r0
 8004c4a:	f105 010c 	add.w	r1, r5, #12
 8004c4e:	300c      	adds	r0, #12
 8004c50:	f7fb fc56 	bl	8000500 <memcpy>
 8004c54:	4621      	mov	r1, r4
 8004c56:	2201      	movs	r2, #1
 8004c58:	4648      	mov	r0, r9
 8004c5a:	f001 fb57 	bl	800630c <__lshift>
 8004c5e:	4680      	mov	r8, r0
 8004c60:	e61f      	b.n	80048a2 <_dtoa_r+0x702>
 8004c62:	2400      	movs	r4, #0
 8004c64:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004c68:	4621      	mov	r1, r4
 8004c6a:	4648      	mov	r0, r9
 8004c6c:	f001 f98e 	bl	8005f8c <_Balloc>
 8004c70:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004c74:	930e      	str	r3, [sp, #56]	; 0x38
 8004c76:	9309      	str	r3, [sp, #36]	; 0x24
 8004c78:	2301      	movs	r3, #1
 8004c7a:	4683      	mov	fp, r0
 8004c7c:	9407      	str	r4, [sp, #28]
 8004c7e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004c82:	930a      	str	r3, [sp, #40]	; 0x28
 8004c84:	e4b6      	b.n	80045f4 <_dtoa_r+0x454>
 8004c86:	f001 f9b1 	bl	8005fec <__multadd>
 8004c8a:	4627      	mov	r7, r4
 8004c8c:	4605      	mov	r5, r0
 8004c8e:	4680      	mov	r8, r0
 8004c90:	e614      	b.n	80048bc <_dtoa_r+0x71c>
 8004c92:	4648      	mov	r0, r9
 8004c94:	f001 f9a0 	bl	8005fd8 <_Bfree>
 8004c98:	2301      	movs	r3, #1
 8004c9a:	e639      	b.n	8004910 <_dtoa_r+0x770>
 8004c9c:	9b02      	ldr	r3, [sp, #8]
 8004c9e:	2b02      	cmp	r3, #2
 8004ca0:	f77f adf3 	ble.w	800488a <_dtoa_r+0x6ea>
 8004ca4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004ca6:	2b00      	cmp	r3, #0
 8004ca8:	f000 80cf 	beq.w	8004e4a <_dtoa_r+0xcaa>
 8004cac:	9b07      	ldr	r3, [sp, #28]
 8004cae:	43db      	mvns	r3, r3
 8004cb0:	9306      	str	r3, [sp, #24]
 8004cb2:	465c      	mov	r4, fp
 8004cb4:	e78b      	b.n	8004bce <_dtoa_r+0xa2e>
 8004cb6:	9a06      	ldr	r2, [sp, #24]
 8004cb8:	2331      	movs	r3, #49	; 0x31
 8004cba:	3201      	adds	r2, #1
 8004cbc:	9206      	str	r2, [sp, #24]
 8004cbe:	f88b 3000 	strb.w	r3, [fp]
 8004cc2:	e6b3      	b.n	8004a2c <_dtoa_r+0x88c>
 8004cc4:	2401      	movs	r4, #1
 8004cc6:	9409      	str	r4, [sp, #36]	; 0x24
 8004cc8:	9407      	str	r4, [sp, #28]
 8004cca:	f7ff bb8b 	b.w	80043e4 <_dtoa_r+0x244>
 8004cce:	4630      	mov	r0, r6
 8004cd0:	f7fb fec8 	bl	8000a64 <__aeabi_i2d>
 8004cd4:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004cd8:	f7fb ff2e 	bl	8000b38 <__aeabi_dmul>
 8004cdc:	2200      	movs	r2, #0
 8004cde:	4b68      	ldr	r3, [pc, #416]	; (8004e80 <_dtoa_r+0xce0>)
 8004ce0:	f7fb fd74 	bl	80007cc <__adddf3>
 8004ce4:	4606      	mov	r6, r0
 8004ce6:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004cea:	2200      	movs	r2, #0
 8004cec:	4b61      	ldr	r3, [pc, #388]	; (8004e74 <_dtoa_r+0xcd4>)
 8004cee:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004cf2:	f7fb fd69 	bl	80007c8 <__aeabi_dsub>
 8004cf6:	4632      	mov	r2, r6
 8004cf8:	463b      	mov	r3, r7
 8004cfa:	4604      	mov	r4, r0
 8004cfc:	460d      	mov	r5, r1
 8004cfe:	f7fc f9ab 	bl	8001058 <__aeabi_dcmpgt>
 8004d02:	2800      	cmp	r0, #0
 8004d04:	d14f      	bne.n	8004da6 <_dtoa_r+0xc06>
 8004d06:	4632      	mov	r2, r6
 8004d08:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004d0c:	4620      	mov	r0, r4
 8004d0e:	4629      	mov	r1, r5
 8004d10:	f7fc f984 	bl	800101c <__aeabi_dcmplt>
 8004d14:	2800      	cmp	r0, #0
 8004d16:	f43f ac69 	beq.w	80045ec <_dtoa_r+0x44c>
 8004d1a:	2600      	movs	r6, #0
 8004d1c:	4635      	mov	r5, r6
 8004d1e:	e7c5      	b.n	8004cac <_dtoa_r+0xb0c>
 8004d20:	2301      	movs	r3, #1
 8004d22:	930a      	str	r3, [sp, #40]	; 0x28
 8004d24:	e6c8      	b.n	8004ab8 <_dtoa_r+0x918>
 8004d26:	4651      	mov	r1, sl
 8004d28:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004d2a:	4648      	mov	r0, r9
 8004d2c:	f001 fa9e 	bl	800626c <__pow5mult>
 8004d30:	4682      	mov	sl, r0
 8004d32:	e572      	b.n	800481a <_dtoa_r+0x67a>
 8004d34:	f8dd a000 	ldr.w	sl, [sp]
 8004d38:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004d3c:	e686      	b.n	8004a4c <_dtoa_r+0x8ac>
 8004d3e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004d40:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004d42:	1afb      	subs	r3, r7, r3
 8004d44:	441a      	add	r2, r3
 8004d46:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004d4a:	2700      	movs	r7, #0
 8004d4c:	e512      	b.n	8004774 <_dtoa_r+0x5d4>
 8004d4e:	2b00      	cmp	r3, #0
 8004d50:	9402      	str	r4, [sp, #8]
 8004d52:	465e      	mov	r6, fp
 8004d54:	f107 0401 	add.w	r4, r7, #1
 8004d58:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d5c:	f300 80ba 	bgt.w	8004ed4 <_dtoa_r+0xd34>
 8004d60:	9b00      	ldr	r3, [sp, #0]
 8004d62:	9502      	str	r5, [sp, #8]
 8004d64:	703b      	strb	r3, [r7, #0]
 8004d66:	4645      	mov	r5, r8
 8004d68:	e660      	b.n	8004a2c <_dtoa_r+0x88c>
 8004d6a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004d6e:	2602      	movs	r6, #2
 8004d70:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004d74:	f7ff bb67 	b.w	8004446 <_dtoa_r+0x2a6>
 8004d78:	9b00      	ldr	r3, [sp, #0]
 8004d7a:	2b39      	cmp	r3, #57	; 0x39
 8004d7c:	465e      	mov	r6, fp
 8004d7e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d82:	f000 80b9 	beq.w	8004ef8 <_dtoa_r+0xd58>
 8004d86:	9b00      	ldr	r3, [sp, #0]
 8004d88:	9502      	str	r5, [sp, #8]
 8004d8a:	3301      	adds	r3, #1
 8004d8c:	703b      	strb	r3, [r7, #0]
 8004d8e:	4645      	mov	r5, r8
 8004d90:	e64c      	b.n	8004a2c <_dtoa_r+0x88c>
 8004d92:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004d96:	1a9c      	subs	r4, r3, r2
 8004d98:	e4f5      	b.n	8004786 <_dtoa_r+0x5e6>
 8004d9a:	465e      	mov	r6, fp
 8004d9c:	9502      	str	r5, [sp, #8]
 8004d9e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004da2:	4645      	mov	r5, r8
 8004da4:	e61a      	b.n	80049dc <_dtoa_r+0x83c>
 8004da6:	2600      	movs	r6, #0
 8004da8:	4635      	mov	r5, r6
 8004daa:	e708      	b.n	8004bbe <_dtoa_r+0xa1e>
 8004dac:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004db0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004db4:	f7fb fec0 	bl	8000b38 <__aeabi_dmul>
 8004db8:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004dba:	f88b 5000 	strb.w	r5, [fp]
 8004dbe:	2b01      	cmp	r3, #1
 8004dc0:	e9cd 0100 	strd	r0, r1, [sp]
 8004dc4:	d020      	beq.n	8004e08 <_dtoa_r+0xc68>
 8004dc6:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004dc8:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004dcc:	445b      	add	r3, fp
 8004dce:	4698      	mov	r8, r3
 8004dd0:	2200      	movs	r2, #0
 8004dd2:	4b2c      	ldr	r3, [pc, #176]	; (8004e84 <_dtoa_r+0xce4>)
 8004dd4:	4630      	mov	r0, r6
 8004dd6:	4639      	mov	r1, r7
 8004dd8:	f7fb feae 	bl	8000b38 <__aeabi_dmul>
 8004ddc:	460f      	mov	r7, r1
 8004dde:	4606      	mov	r6, r0
 8004de0:	f7fc f95a 	bl	8001098 <__aeabi_d2iz>
 8004de4:	4605      	mov	r5, r0
 8004de6:	f7fb fe3d 	bl	8000a64 <__aeabi_i2d>
 8004dea:	3530      	adds	r5, #48	; 0x30
 8004dec:	4602      	mov	r2, r0
 8004dee:	460b      	mov	r3, r1
 8004df0:	4630      	mov	r0, r6
 8004df2:	4639      	mov	r1, r7
 8004df4:	f7fb fce8 	bl	80007c8 <__aeabi_dsub>
 8004df8:	f804 5b01 	strb.w	r5, [r4], #1
 8004dfc:	4544      	cmp	r4, r8
 8004dfe:	4606      	mov	r6, r0
 8004e00:	460f      	mov	r7, r1
 8004e02:	d1e5      	bne.n	8004dd0 <_dtoa_r+0xc30>
 8004e04:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004e08:	4b1f      	ldr	r3, [pc, #124]	; (8004e88 <_dtoa_r+0xce8>)
 8004e0a:	2200      	movs	r2, #0
 8004e0c:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e10:	f7fb fcdc 	bl	80007cc <__adddf3>
 8004e14:	4632      	mov	r2, r6
 8004e16:	463b      	mov	r3, r7
 8004e18:	f7fc f900 	bl	800101c <__aeabi_dcmplt>
 8004e1c:	2800      	cmp	r0, #0
 8004e1e:	d070      	beq.n	8004f02 <_dtoa_r+0xd62>
 8004e20:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004e22:	9306      	str	r3, [sp, #24]
 8004e24:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004e28:	e48f      	b.n	800474a <_dtoa_r+0x5aa>
 8004e2a:	2330      	movs	r3, #48	; 0x30
 8004e2c:	f88b 3000 	strb.w	r3, [fp]
 8004e30:	9b06      	ldr	r3, [sp, #24]
 8004e32:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004e36:	3301      	adds	r3, #1
 8004e38:	9306      	str	r3, [sp, #24]
 8004e3a:	465b      	mov	r3, fp
 8004e3c:	e489      	b.n	8004752 <_dtoa_r+0x5b2>
 8004e3e:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004e40:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004e44:	e6a0      	b.n	8004b88 <_dtoa_r+0x9e8>
 8004e46:	2300      	movs	r3, #0
 8004e48:	e676      	b.n	8004b38 <_dtoa_r+0x998>
 8004e4a:	4631      	mov	r1, r6
 8004e4c:	2205      	movs	r2, #5
 8004e4e:	4648      	mov	r0, r9
 8004e50:	f001 f8cc 	bl	8005fec <__multadd>
 8004e54:	4601      	mov	r1, r0
 8004e56:	4606      	mov	r6, r0
 8004e58:	4650      	mov	r0, sl
 8004e5a:	f001 faad 	bl	80063b8 <__mcmp>
 8004e5e:	2800      	cmp	r0, #0
 8004e60:	f73f aead 	bgt.w	8004bbe <_dtoa_r+0xa1e>
 8004e64:	e722      	b.n	8004cac <_dtoa_r+0xb0c>
 8004e66:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004e6a:	2602      	movs	r6, #2
 8004e6c:	ed8d 7b00 	vstr	d7, [sp]
 8004e70:	f7ff bb02 	b.w	8004478 <_dtoa_r+0x2d8>
 8004e74:	40140000 	.word	0x40140000
 8004e78:	08007228 	.word	0x08007228
 8004e7c:	08007200 	.word	0x08007200
 8004e80:	401c0000 	.word	0x401c0000
 8004e84:	40240000 	.word	0x40240000
 8004e88:	3fe00000 	.word	0x3fe00000
 8004e8c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e8e:	2b00      	cmp	r3, #0
 8004e90:	f43f af1d 	beq.w	8004cce <_dtoa_r+0xb2e>
 8004e94:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004e96:	2c00      	cmp	r4, #0
 8004e98:	f77f aba8 	ble.w	80045ec <_dtoa_r+0x44c>
 8004e9c:	2200      	movs	r2, #0
 8004e9e:	4b45      	ldr	r3, [pc, #276]	; (8004fb4 <_dtoa_r+0xe14>)
 8004ea0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004ea4:	f7fb fe48 	bl	8000b38 <__aeabi_dmul>
 8004ea8:	e9cd 0100 	strd	r0, r1, [sp]
 8004eac:	1c70      	adds	r0, r6, #1
 8004eae:	f7fb fdd9 	bl	8000a64 <__aeabi_i2d>
 8004eb2:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004eb6:	f7fb fe3f 	bl	8000b38 <__aeabi_dmul>
 8004eba:	4b3f      	ldr	r3, [pc, #252]	; (8004fb8 <_dtoa_r+0xe18>)
 8004ebc:	2200      	movs	r2, #0
 8004ebe:	f7fb fc85 	bl	80007cc <__adddf3>
 8004ec2:	9b06      	ldr	r3, [sp, #24]
 8004ec4:	9412      	str	r4, [sp, #72]	; 0x48
 8004ec6:	3b01      	subs	r3, #1
 8004ec8:	4606      	mov	r6, r0
 8004eca:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004ece:	9316      	str	r3, [sp, #88]	; 0x58
 8004ed0:	f7ff baf3 	b.w	80044ba <_dtoa_r+0x31a>
 8004ed4:	4651      	mov	r1, sl
 8004ed6:	2201      	movs	r2, #1
 8004ed8:	4648      	mov	r0, r9
 8004eda:	f001 fa17 	bl	800630c <__lshift>
 8004ede:	4631      	mov	r1, r6
 8004ee0:	4682      	mov	sl, r0
 8004ee2:	f001 fa69 	bl	80063b8 <__mcmp>
 8004ee6:	2800      	cmp	r0, #0
 8004ee8:	dd3b      	ble.n	8004f62 <_dtoa_r+0xdc2>
 8004eea:	9b00      	ldr	r3, [sp, #0]
 8004eec:	2b39      	cmp	r3, #57	; 0x39
 8004eee:	d003      	beq.n	8004ef8 <_dtoa_r+0xd58>
 8004ef0:	9b02      	ldr	r3, [sp, #8]
 8004ef2:	3331      	adds	r3, #49	; 0x31
 8004ef4:	9300      	str	r3, [sp, #0]
 8004ef6:	e733      	b.n	8004d60 <_dtoa_r+0xbc0>
 8004ef8:	2239      	movs	r2, #57	; 0x39
 8004efa:	9502      	str	r5, [sp, #8]
 8004efc:	703a      	strb	r2, [r7, #0]
 8004efe:	4645      	mov	r5, r8
 8004f00:	e58e      	b.n	8004a20 <_dtoa_r+0x880>
 8004f02:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f06:	2000      	movs	r0, #0
 8004f08:	492c      	ldr	r1, [pc, #176]	; (8004fbc <_dtoa_r+0xe1c>)
 8004f0a:	f7fb fc5d 	bl	80007c8 <__aeabi_dsub>
 8004f0e:	4632      	mov	r2, r6
 8004f10:	463b      	mov	r3, r7
 8004f12:	f7fc f8a1 	bl	8001058 <__aeabi_dcmpgt>
 8004f16:	b910      	cbnz	r0, 8004f1e <_dtoa_r+0xd7e>
 8004f18:	f7ff bb68 	b.w	80045ec <_dtoa_r+0x44c>
 8004f1c:	4614      	mov	r4, r2
 8004f1e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004f22:	2b30      	cmp	r3, #48	; 0x30
 8004f24:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004f28:	d0f8      	beq.n	8004f1c <_dtoa_r+0xd7c>
 8004f2a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004f2c:	9306      	str	r3, [sp, #24]
 8004f2e:	e58d      	b.n	8004a4c <_dtoa_r+0x8ac>
 8004f30:	46d9      	mov	r9, fp
 8004f32:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004f36:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004f3a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004f3c:	9306      	str	r3, [sp, #24]
 8004f3e:	e404      	b.n	800474a <_dtoa_r+0x5aa>
 8004f40:	9b00      	ldr	r3, [sp, #0]
 8004f42:	2b39      	cmp	r3, #57	; 0x39
 8004f44:	4621      	mov	r1, r4
 8004f46:	4632      	mov	r2, r6
 8004f48:	f107 0401 	add.w	r4, r7, #1
 8004f4c:	465e      	mov	r6, fp
 8004f4e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004f52:	d0d1      	beq.n	8004ef8 <_dtoa_r+0xd58>
 8004f54:	2a00      	cmp	r2, #0
 8004f56:	f77f af03 	ble.w	8004d60 <_dtoa_r+0xbc0>
 8004f5a:	460b      	mov	r3, r1
 8004f5c:	3331      	adds	r3, #49	; 0x31
 8004f5e:	9300      	str	r3, [sp, #0]
 8004f60:	e6fe      	b.n	8004d60 <_dtoa_r+0xbc0>
 8004f62:	f47f aefd 	bne.w	8004d60 <_dtoa_r+0xbc0>
 8004f66:	9b00      	ldr	r3, [sp, #0]
 8004f68:	07da      	lsls	r2, r3, #31
 8004f6a:	f57f aef9 	bpl.w	8004d60 <_dtoa_r+0xbc0>
 8004f6e:	e7bc      	b.n	8004eea <_dtoa_r+0xd4a>
 8004f70:	4629      	mov	r1, r5
 8004f72:	2300      	movs	r3, #0
 8004f74:	220a      	movs	r2, #10
 8004f76:	4648      	mov	r0, r9
 8004f78:	f001 f838 	bl	8005fec <__multadd>
 8004f7c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f7e:	2b00      	cmp	r3, #0
 8004f80:	4605      	mov	r5, r0
 8004f82:	dd09      	ble.n	8004f98 <_dtoa_r+0xdf8>
 8004f84:	9309      	str	r3, [sp, #36]	; 0x24
 8004f86:	e484      	b.n	8004892 <_dtoa_r+0x6f2>
 8004f88:	9b02      	ldr	r3, [sp, #8]
 8004f8a:	2b02      	cmp	r3, #2
 8004f8c:	dc0e      	bgt.n	8004fac <_dtoa_r+0xe0c>
 8004f8e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f90:	e507      	b.n	80049a2 <_dtoa_r+0x802>
 8004f92:	2602      	movs	r6, #2
 8004f94:	f7ff ba70 	b.w	8004478 <_dtoa_r+0x2d8>
 8004f98:	9b02      	ldr	r3, [sp, #8]
 8004f9a:	2b02      	cmp	r3, #2
 8004f9c:	dc06      	bgt.n	8004fac <_dtoa_r+0xe0c>
 8004f9e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004fa0:	e7f0      	b.n	8004f84 <_dtoa_r+0xde4>
 8004fa2:	f43f ac59 	beq.w	8004858 <_dtoa_r+0x6b8>
 8004fa6:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004faa:	e450      	b.n	800484e <_dtoa_r+0x6ae>
 8004fac:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004fae:	9309      	str	r3, [sp, #36]	; 0x24
 8004fb0:	e678      	b.n	8004ca4 <_dtoa_r+0xb04>
 8004fb2:	bf00      	nop
 8004fb4:	40240000 	.word	0x40240000
 8004fb8:	401c0000 	.word	0x401c0000
 8004fbc:	3fe00000 	.word	0x3fe00000

08004fc0 <__sflush_r>:
 8004fc0:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004fc4:	b29a      	uxth	r2, r3
 8004fc6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004fca:	460c      	mov	r4, r1
 8004fcc:	0711      	lsls	r1, r2, #28
 8004fce:	4680      	mov	r8, r0
 8004fd0:	d444      	bmi.n	800505c <__sflush_r+0x9c>
 8004fd2:	6862      	ldr	r2, [r4, #4]
 8004fd4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004fd8:	2a00      	cmp	r2, #0
 8004fda:	81a3      	strh	r3, [r4, #12]
 8004fdc:	dd59      	ble.n	8005092 <__sflush_r+0xd2>
 8004fde:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004fe0:	2d00      	cmp	r5, #0
 8004fe2:	d053      	beq.n	800508c <__sflush_r+0xcc>
 8004fe4:	2200      	movs	r2, #0
 8004fe6:	b29b      	uxth	r3, r3
 8004fe8:	f8d8 6000 	ldr.w	r6, [r8]
 8004fec:	69e1      	ldr	r1, [r4, #28]
 8004fee:	f8c8 2000 	str.w	r2, [r8]
 8004ff2:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8004ff6:	f040 8083 	bne.w	8005100 <__sflush_r+0x140>
 8004ffa:	2301      	movs	r3, #1
 8004ffc:	4640      	mov	r0, r8
 8004ffe:	47a8      	blx	r5
 8005000:	1c42      	adds	r2, r0, #1
 8005002:	d04a      	beq.n	800509a <__sflush_r+0xda>
 8005004:	89a3      	ldrh	r3, [r4, #12]
 8005006:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005008:	69e1      	ldr	r1, [r4, #28]
 800500a:	075b      	lsls	r3, r3, #29
 800500c:	d505      	bpl.n	800501a <__sflush_r+0x5a>
 800500e:	6862      	ldr	r2, [r4, #4]
 8005010:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8005012:	1a80      	subs	r0, r0, r2
 8005014:	b10b      	cbz	r3, 800501a <__sflush_r+0x5a>
 8005016:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005018:	1ac0      	subs	r0, r0, r3
 800501a:	4602      	mov	r2, r0
 800501c:	2300      	movs	r3, #0
 800501e:	4640      	mov	r0, r8
 8005020:	47a8      	blx	r5
 8005022:	1c47      	adds	r7, r0, #1
 8005024:	d045      	beq.n	80050b2 <__sflush_r+0xf2>
 8005026:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800502a:	6922      	ldr	r2, [r4, #16]
 800502c:	6022      	str	r2, [r4, #0]
 800502e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8005032:	2200      	movs	r2, #0
 8005034:	81a3      	strh	r3, [r4, #12]
 8005036:	04db      	lsls	r3, r3, #19
 8005038:	6062      	str	r2, [r4, #4]
 800503a:	d500      	bpl.n	800503e <__sflush_r+0x7e>
 800503c:	6520      	str	r0, [r4, #80]	; 0x50
 800503e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005040:	f8c8 6000 	str.w	r6, [r8]
 8005044:	b311      	cbz	r1, 800508c <__sflush_r+0xcc>
 8005046:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800504a:	4299      	cmp	r1, r3
 800504c:	d002      	beq.n	8005054 <__sflush_r+0x94>
 800504e:	4640      	mov	r0, r8
 8005050:	f000 f95e 	bl	8005310 <_free_r>
 8005054:	2000      	movs	r0, #0
 8005056:	6320      	str	r0, [r4, #48]	; 0x30
 8005058:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800505c:	6926      	ldr	r6, [r4, #16]
 800505e:	b1ae      	cbz	r6, 800508c <__sflush_r+0xcc>
 8005060:	6825      	ldr	r5, [r4, #0]
 8005062:	6026      	str	r6, [r4, #0]
 8005064:	0792      	lsls	r2, r2, #30
 8005066:	bf0c      	ite	eq
 8005068:	6963      	ldreq	r3, [r4, #20]
 800506a:	2300      	movne	r3, #0
 800506c:	1bad      	subs	r5, r5, r6
 800506e:	60a3      	str	r3, [r4, #8]
 8005070:	e00a      	b.n	8005088 <__sflush_r+0xc8>
 8005072:	462b      	mov	r3, r5
 8005074:	4632      	mov	r2, r6
 8005076:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005078:	69e1      	ldr	r1, [r4, #28]
 800507a:	4640      	mov	r0, r8
 800507c:	47b8      	blx	r7
 800507e:	2800      	cmp	r0, #0
 8005080:	eba5 0500 	sub.w	r5, r5, r0
 8005084:	4406      	add	r6, r0
 8005086:	dd2b      	ble.n	80050e0 <__sflush_r+0x120>
 8005088:	2d00      	cmp	r5, #0
 800508a:	dcf2      	bgt.n	8005072 <__sflush_r+0xb2>
 800508c:	2000      	movs	r0, #0
 800508e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005092:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005094:	2a00      	cmp	r2, #0
 8005096:	dca2      	bgt.n	8004fde <__sflush_r+0x1e>
 8005098:	e7f8      	b.n	800508c <__sflush_r+0xcc>
 800509a:	f8d8 3000 	ldr.w	r3, [r8]
 800509e:	2b00      	cmp	r3, #0
 80050a0:	d0b0      	beq.n	8005004 <__sflush_r+0x44>
 80050a2:	2b1d      	cmp	r3, #29
 80050a4:	d001      	beq.n	80050aa <__sflush_r+0xea>
 80050a6:	2b16      	cmp	r3, #22
 80050a8:	d12c      	bne.n	8005104 <__sflush_r+0x144>
 80050aa:	f8c8 6000 	str.w	r6, [r8]
 80050ae:	2000      	movs	r0, #0
 80050b0:	e7ed      	b.n	800508e <__sflush_r+0xce>
 80050b2:	f8d8 1000 	ldr.w	r1, [r8]
 80050b6:	291d      	cmp	r1, #29
 80050b8:	d81a      	bhi.n	80050f0 <__sflush_r+0x130>
 80050ba:	4b15      	ldr	r3, [pc, #84]	; (8005110 <__sflush_r+0x150>)
 80050bc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80050c0:	40cb      	lsrs	r3, r1
 80050c2:	43db      	mvns	r3, r3
 80050c4:	f013 0301 	ands.w	r3, r3, #1
 80050c8:	d114      	bne.n	80050f4 <__sflush_r+0x134>
 80050ca:	6925      	ldr	r5, [r4, #16]
 80050cc:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80050d0:	e9c4 5300 	strd	r5, r3, [r4]
 80050d4:	04d5      	lsls	r5, r2, #19
 80050d6:	81a2      	strh	r2, [r4, #12]
 80050d8:	d5b1      	bpl.n	800503e <__sflush_r+0x7e>
 80050da:	2900      	cmp	r1, #0
 80050dc:	d1af      	bne.n	800503e <__sflush_r+0x7e>
 80050de:	e7ad      	b.n	800503c <__sflush_r+0x7c>
 80050e0:	89a3      	ldrh	r3, [r4, #12]
 80050e2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80050e6:	81a3      	strh	r3, [r4, #12]
 80050e8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80050ec:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80050f0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80050f4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80050f8:	81a2      	strh	r2, [r4, #12]
 80050fa:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80050fe:	e7c6      	b.n	800508e <__sflush_r+0xce>
 8005100:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8005102:	e782      	b.n	800500a <__sflush_r+0x4a>
 8005104:	89a3      	ldrh	r3, [r4, #12]
 8005106:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800510a:	81a3      	strh	r3, [r4, #12]
 800510c:	e7bf      	b.n	800508e <__sflush_r+0xce>
 800510e:	bf00      	nop
 8005110:	20400001 	.word	0x20400001

08005114 <_fflush_r>:
 8005114:	b538      	push	{r3, r4, r5, lr}
 8005116:	460d      	mov	r5, r1
 8005118:	4604      	mov	r4, r0
 800511a:	b108      	cbz	r0, 8005120 <_fflush_r+0xc>
 800511c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800511e:	b1a3      	cbz	r3, 800514a <_fflush_r+0x36>
 8005120:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005124:	b1b8      	cbz	r0, 8005156 <_fflush_r+0x42>
 8005126:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005128:	07db      	lsls	r3, r3, #31
 800512a:	d401      	bmi.n	8005130 <_fflush_r+0x1c>
 800512c:	0581      	lsls	r1, r0, #22
 800512e:	d51a      	bpl.n	8005166 <_fflush_r+0x52>
 8005130:	4620      	mov	r0, r4
 8005132:	4629      	mov	r1, r5
 8005134:	f7ff ff44 	bl	8004fc0 <__sflush_r>
 8005138:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 800513a:	07da      	lsls	r2, r3, #31
 800513c:	4604      	mov	r4, r0
 800513e:	d402      	bmi.n	8005146 <_fflush_r+0x32>
 8005140:	89ab      	ldrh	r3, [r5, #12]
 8005142:	059b      	lsls	r3, r3, #22
 8005144:	d50a      	bpl.n	800515c <_fflush_r+0x48>
 8005146:	4620      	mov	r0, r4
 8005148:	bd38      	pop	{r3, r4, r5, pc}
 800514a:	f000 f83f 	bl	80051cc <__sinit>
 800514e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005152:	2800      	cmp	r0, #0
 8005154:	d1e7      	bne.n	8005126 <_fflush_r+0x12>
 8005156:	4604      	mov	r4, r0
 8005158:	4620      	mov	r0, r4
 800515a:	bd38      	pop	{r3, r4, r5, pc}
 800515c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 800515e:	f000 fb87 	bl	8005870 <__retarget_lock_release_recursive>
 8005162:	4620      	mov	r0, r4
 8005164:	bd38      	pop	{r3, r4, r5, pc}
 8005166:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005168:	f000 fb80 	bl	800586c <__retarget_lock_acquire_recursive>
 800516c:	e7e0      	b.n	8005130 <_fflush_r+0x1c>
 800516e:	bf00      	nop

08005170 <std>:
 8005170:	b510      	push	{r4, lr}
 8005172:	2300      	movs	r3, #0
 8005174:	4604      	mov	r4, r0
 8005176:	8181      	strh	r1, [r0, #12]
 8005178:	81c2      	strh	r2, [r0, #14]
 800517a:	e9c0 3300 	strd	r3, r3, [r0]
 800517e:	6083      	str	r3, [r0, #8]
 8005180:	6643      	str	r3, [r0, #100]	; 0x64
 8005182:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005186:	6183      	str	r3, [r0, #24]
 8005188:	4619      	mov	r1, r3
 800518a:	2208      	movs	r2, #8
 800518c:	305c      	adds	r0, #92	; 0x5c
 800518e:	f7fd f8c9 	bl	8002324 <memset>
 8005192:	4807      	ldr	r0, [pc, #28]	; (80051b0 <std+0x40>)
 8005194:	4907      	ldr	r1, [pc, #28]	; (80051b4 <std+0x44>)
 8005196:	4a08      	ldr	r2, [pc, #32]	; (80051b8 <std+0x48>)
 8005198:	4b08      	ldr	r3, [pc, #32]	; (80051bc <std+0x4c>)
 800519a:	62e3      	str	r3, [r4, #44]	; 0x2c
 800519c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 80051a0:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 80051a4:	f104 0058 	add.w	r0, r4, #88	; 0x58
 80051a8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80051ac:	f000 bb5a 	b.w	8005864 <__retarget_lock_init_recursive>
 80051b0:	08006989 	.word	0x08006989
 80051b4:	080069ad 	.word	0x080069ad
 80051b8:	080069e9 	.word	0x080069e9
 80051bc:	08006a09 	.word	0x08006a09

080051c0 <_cleanup_r>:
 80051c0:	4901      	ldr	r1, [pc, #4]	; (80051c8 <_cleanup_r+0x8>)
 80051c2:	f000 bb17 	b.w	80057f4 <_fwalk_reent>
 80051c6:	bf00      	nop
 80051c8:	08006c79 	.word	0x08006c79

080051cc <__sinit>:
 80051cc:	b510      	push	{r4, lr}
 80051ce:	4604      	mov	r4, r0
 80051d0:	4812      	ldr	r0, [pc, #72]	; (800521c <__sinit+0x50>)
 80051d2:	f000 fb4b 	bl	800586c <__retarget_lock_acquire_recursive>
 80051d6:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80051d8:	b9d2      	cbnz	r2, 8005210 <__sinit+0x44>
 80051da:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80051de:	4810      	ldr	r0, [pc, #64]	; (8005220 <__sinit+0x54>)
 80051e0:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80051e4:	2103      	movs	r1, #3
 80051e6:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80051ea:	63e0      	str	r0, [r4, #60]	; 0x3c
 80051ec:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80051f0:	6860      	ldr	r0, [r4, #4]
 80051f2:	2104      	movs	r1, #4
 80051f4:	f7ff ffbc 	bl	8005170 <std>
 80051f8:	2201      	movs	r2, #1
 80051fa:	2109      	movs	r1, #9
 80051fc:	68a0      	ldr	r0, [r4, #8]
 80051fe:	f7ff ffb7 	bl	8005170 <std>
 8005202:	2202      	movs	r2, #2
 8005204:	2112      	movs	r1, #18
 8005206:	68e0      	ldr	r0, [r4, #12]
 8005208:	f7ff ffb2 	bl	8005170 <std>
 800520c:	2301      	movs	r3, #1
 800520e:	63a3      	str	r3, [r4, #56]	; 0x38
 8005210:	4802      	ldr	r0, [pc, #8]	; (800521c <__sinit+0x50>)
 8005212:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005216:	f000 bb2b 	b.w	8005870 <__retarget_lock_release_recursive>
 800521a:	bf00      	nop
 800521c:	20000af4 	.word	0x20000af4
 8005220:	080051c1 	.word	0x080051c1

08005224 <__sfp_lock_acquire>:
 8005224:	4801      	ldr	r0, [pc, #4]	; (800522c <__sfp_lock_acquire+0x8>)
 8005226:	f000 bb21 	b.w	800586c <__retarget_lock_acquire_recursive>
 800522a:	bf00      	nop
 800522c:	20000b08 	.word	0x20000b08

08005230 <__sfp_lock_release>:
 8005230:	4801      	ldr	r0, [pc, #4]	; (8005238 <__sfp_lock_release+0x8>)
 8005232:	f000 bb1d 	b.w	8005870 <__retarget_lock_release_recursive>
 8005236:	bf00      	nop
 8005238:	20000b08 	.word	0x20000b08

0800523c <__libc_fini_array>:
 800523c:	b538      	push	{r3, r4, r5, lr}
 800523e:	4c0a      	ldr	r4, [pc, #40]	; (8005268 <__libc_fini_array+0x2c>)
 8005240:	4d0a      	ldr	r5, [pc, #40]	; (800526c <__libc_fini_array+0x30>)
 8005242:	1b64      	subs	r4, r4, r5
 8005244:	10a4      	asrs	r4, r4, #2
 8005246:	d00a      	beq.n	800525e <__libc_fini_array+0x22>
 8005248:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800524c:	3b01      	subs	r3, #1
 800524e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005252:	3c01      	subs	r4, #1
 8005254:	f855 3904 	ldr.w	r3, [r5], #-4
 8005258:	4798      	blx	r3
 800525a:	2c00      	cmp	r4, #0
 800525c:	d1f9      	bne.n	8005252 <__libc_fini_array+0x16>
 800525e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005262:	f001 befd 	b.w	8007060 <_fini>
 8005266:	bf00      	nop
 8005268:	08007424 	.word	0x08007424
 800526c:	08007420 	.word	0x08007420

08005270 <_malloc_trim_r>:
 8005270:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005272:	4f24      	ldr	r7, [pc, #144]	; (8005304 <_malloc_trim_r+0x94>)
 8005274:	460c      	mov	r4, r1
 8005276:	4606      	mov	r6, r0
 8005278:	f000 fe7c 	bl	8005f74 <__malloc_lock>
 800527c:	68bb      	ldr	r3, [r7, #8]
 800527e:	685d      	ldr	r5, [r3, #4]
 8005280:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005284:	310f      	adds	r1, #15
 8005286:	f025 0503 	bic.w	r5, r5, #3
 800528a:	4429      	add	r1, r5
 800528c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005290:	f021 010f 	bic.w	r1, r1, #15
 8005294:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005298:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800529c:	db07      	blt.n	80052ae <_malloc_trim_r+0x3e>
 800529e:	2100      	movs	r1, #0
 80052a0:	4630      	mov	r0, r6
 80052a2:	f001 fb5f 	bl	8006964 <_sbrk_r>
 80052a6:	68bb      	ldr	r3, [r7, #8]
 80052a8:	442b      	add	r3, r5
 80052aa:	4298      	cmp	r0, r3
 80052ac:	d004      	beq.n	80052b8 <_malloc_trim_r+0x48>
 80052ae:	4630      	mov	r0, r6
 80052b0:	f000 fe66 	bl	8005f80 <__malloc_unlock>
 80052b4:	2000      	movs	r0, #0
 80052b6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80052b8:	4261      	negs	r1, r4
 80052ba:	4630      	mov	r0, r6
 80052bc:	f001 fb52 	bl	8006964 <_sbrk_r>
 80052c0:	3001      	adds	r0, #1
 80052c2:	d00d      	beq.n	80052e0 <_malloc_trim_r+0x70>
 80052c4:	4b10      	ldr	r3, [pc, #64]	; (8005308 <_malloc_trim_r+0x98>)
 80052c6:	68ba      	ldr	r2, [r7, #8]
 80052c8:	6819      	ldr	r1, [r3, #0]
 80052ca:	1b2d      	subs	r5, r5, r4
 80052cc:	f045 0501 	orr.w	r5, r5, #1
 80052d0:	4630      	mov	r0, r6
 80052d2:	1b09      	subs	r1, r1, r4
 80052d4:	6055      	str	r5, [r2, #4]
 80052d6:	6019      	str	r1, [r3, #0]
 80052d8:	f000 fe52 	bl	8005f80 <__malloc_unlock>
 80052dc:	2001      	movs	r0, #1
 80052de:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80052e0:	2100      	movs	r1, #0
 80052e2:	4630      	mov	r0, r6
 80052e4:	f001 fb3e 	bl	8006964 <_sbrk_r>
 80052e8:	68ba      	ldr	r2, [r7, #8]
 80052ea:	1a83      	subs	r3, r0, r2
 80052ec:	2b0f      	cmp	r3, #15
 80052ee:	ddde      	ble.n	80052ae <_malloc_trim_r+0x3e>
 80052f0:	4c06      	ldr	r4, [pc, #24]	; (800530c <_malloc_trim_r+0x9c>)
 80052f2:	4905      	ldr	r1, [pc, #20]	; (8005308 <_malloc_trim_r+0x98>)
 80052f4:	6824      	ldr	r4, [r4, #0]
 80052f6:	f043 0301 	orr.w	r3, r3, #1
 80052fa:	1b00      	subs	r0, r0, r4
 80052fc:	6053      	str	r3, [r2, #4]
 80052fe:	6008      	str	r0, [r1, #0]
 8005300:	e7d5      	b.n	80052ae <_malloc_trim_r+0x3e>
 8005302:	bf00      	nop
 8005304:	2000044c 	.word	0x2000044c
 8005308:	20000a6c 	.word	0x20000a6c
 800530c:	20000854 	.word	0x20000854

08005310 <_free_r>:
 8005310:	2900      	cmp	r1, #0
 8005312:	d053      	beq.n	80053bc <_free_r+0xac>
 8005314:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005316:	460c      	mov	r4, r1
 8005318:	4606      	mov	r6, r0
 800531a:	f000 fe2b 	bl	8005f74 <__malloc_lock>
 800531e:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8005322:	4f71      	ldr	r7, [pc, #452]	; (80054e8 <_free_r+0x1d8>)
 8005324:	f02c 0101 	bic.w	r1, ip, #1
 8005328:	f1a4 0508 	sub.w	r5, r4, #8
 800532c:	186b      	adds	r3, r5, r1
 800532e:	68b8      	ldr	r0, [r7, #8]
 8005330:	685a      	ldr	r2, [r3, #4]
 8005332:	4298      	cmp	r0, r3
 8005334:	f022 0203 	bic.w	r2, r2, #3
 8005338:	d053      	beq.n	80053e2 <_free_r+0xd2>
 800533a:	f01c 0f01 	tst.w	ip, #1
 800533e:	605a      	str	r2, [r3, #4]
 8005340:	eb03 0002 	add.w	r0, r3, r2
 8005344:	d13b      	bne.n	80053be <_free_r+0xae>
 8005346:	f854 cc08 	ldr.w	ip, [r4, #-8]
 800534a:	6840      	ldr	r0, [r0, #4]
 800534c:	eba5 050c 	sub.w	r5, r5, ip
 8005350:	f107 0e08 	add.w	lr, r7, #8
 8005354:	68ac      	ldr	r4, [r5, #8]
 8005356:	4574      	cmp	r4, lr
 8005358:	4461      	add	r1, ip
 800535a:	f000 0001 	and.w	r0, r0, #1
 800535e:	d075      	beq.n	800544c <_free_r+0x13c>
 8005360:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005364:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005368:	f8cc 4008 	str.w	r4, [ip, #8]
 800536c:	b360      	cbz	r0, 80053c8 <_free_r+0xb8>
 800536e:	f041 0301 	orr.w	r3, r1, #1
 8005372:	606b      	str	r3, [r5, #4]
 8005374:	5069      	str	r1, [r5, r1]
 8005376:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800537a:	d350      	bcc.n	800541e <_free_r+0x10e>
 800537c:	0a4b      	lsrs	r3, r1, #9
 800537e:	2b04      	cmp	r3, #4
 8005380:	d870      	bhi.n	8005464 <_free_r+0x154>
 8005382:	098b      	lsrs	r3, r1, #6
 8005384:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005388:	00e4      	lsls	r4, r4, #3
 800538a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 800538e:	1938      	adds	r0, r7, r4
 8005390:	593b      	ldr	r3, [r7, r4]
 8005392:	3808      	subs	r0, #8
 8005394:	4298      	cmp	r0, r3
 8005396:	d078      	beq.n	800548a <_free_r+0x17a>
 8005398:	685a      	ldr	r2, [r3, #4]
 800539a:	f022 0203 	bic.w	r2, r2, #3
 800539e:	428a      	cmp	r2, r1
 80053a0:	d971      	bls.n	8005486 <_free_r+0x176>
 80053a2:	689b      	ldr	r3, [r3, #8]
 80053a4:	4298      	cmp	r0, r3
 80053a6:	d1f7      	bne.n	8005398 <_free_r+0x88>
 80053a8:	68c3      	ldr	r3, [r0, #12]
 80053aa:	e9c5 0302 	strd	r0, r3, [r5, #8]
 80053ae:	609d      	str	r5, [r3, #8]
 80053b0:	60c5      	str	r5, [r0, #12]
 80053b2:	4630      	mov	r0, r6
 80053b4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80053b8:	f000 bde2 	b.w	8005f80 <__malloc_unlock>
 80053bc:	4770      	bx	lr
 80053be:	6840      	ldr	r0, [r0, #4]
 80053c0:	f000 0001 	and.w	r0, r0, #1
 80053c4:	2800      	cmp	r0, #0
 80053c6:	d1d2      	bne.n	800536e <_free_r+0x5e>
 80053c8:	6898      	ldr	r0, [r3, #8]
 80053ca:	4c48      	ldr	r4, [pc, #288]	; (80054ec <_free_r+0x1dc>)
 80053cc:	4411      	add	r1, r2
 80053ce:	42a0      	cmp	r0, r4
 80053d0:	f041 0201 	orr.w	r2, r1, #1
 80053d4:	d062      	beq.n	800549c <_free_r+0x18c>
 80053d6:	68db      	ldr	r3, [r3, #12]
 80053d8:	60c3      	str	r3, [r0, #12]
 80053da:	6098      	str	r0, [r3, #8]
 80053dc:	606a      	str	r2, [r5, #4]
 80053de:	5069      	str	r1, [r5, r1]
 80053e0:	e7c9      	b.n	8005376 <_free_r+0x66>
 80053e2:	f01c 0f01 	tst.w	ip, #1
 80053e6:	440a      	add	r2, r1
 80053e8:	d107      	bne.n	80053fa <_free_r+0xea>
 80053ea:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80053ee:	1aed      	subs	r5, r5, r3
 80053f0:	441a      	add	r2, r3
 80053f2:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80053f6:	60cb      	str	r3, [r1, #12]
 80053f8:	6099      	str	r1, [r3, #8]
 80053fa:	4b3d      	ldr	r3, [pc, #244]	; (80054f0 <_free_r+0x1e0>)
 80053fc:	681b      	ldr	r3, [r3, #0]
 80053fe:	f042 0101 	orr.w	r1, r2, #1
 8005402:	4293      	cmp	r3, r2
 8005404:	6069      	str	r1, [r5, #4]
 8005406:	60bd      	str	r5, [r7, #8]
 8005408:	d804      	bhi.n	8005414 <_free_r+0x104>
 800540a:	4b3a      	ldr	r3, [pc, #232]	; (80054f4 <_free_r+0x1e4>)
 800540c:	4630      	mov	r0, r6
 800540e:	6819      	ldr	r1, [r3, #0]
 8005410:	f7ff ff2e 	bl	8005270 <_malloc_trim_r>
 8005414:	4630      	mov	r0, r6
 8005416:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800541a:	f000 bdb1 	b.w	8005f80 <__malloc_unlock>
 800541e:	08c9      	lsrs	r1, r1, #3
 8005420:	6878      	ldr	r0, [r7, #4]
 8005422:	1c4a      	adds	r2, r1, #1
 8005424:	2301      	movs	r3, #1
 8005426:	1089      	asrs	r1, r1, #2
 8005428:	408b      	lsls	r3, r1
 800542a:	4303      	orrs	r3, r0
 800542c:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005430:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005434:	607b      	str	r3, [r7, #4]
 8005436:	3908      	subs	r1, #8
 8005438:	e9c5 0102 	strd	r0, r1, [r5, #8]
 800543c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005440:	60c5      	str	r5, [r0, #12]
 8005442:	4630      	mov	r0, r6
 8005444:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005448:	f000 bd9a 	b.w	8005f80 <__malloc_unlock>
 800544c:	2800      	cmp	r0, #0
 800544e:	d145      	bne.n	80054dc <_free_r+0x1cc>
 8005450:	440a      	add	r2, r1
 8005452:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005456:	f042 0001 	orr.w	r0, r2, #1
 800545a:	60cb      	str	r3, [r1, #12]
 800545c:	6099      	str	r1, [r3, #8]
 800545e:	6068      	str	r0, [r5, #4]
 8005460:	50aa      	str	r2, [r5, r2]
 8005462:	e7d7      	b.n	8005414 <_free_r+0x104>
 8005464:	2b14      	cmp	r3, #20
 8005466:	d908      	bls.n	800547a <_free_r+0x16a>
 8005468:	2b54      	cmp	r3, #84	; 0x54
 800546a:	d81e      	bhi.n	80054aa <_free_r+0x19a>
 800546c:	0b0b      	lsrs	r3, r1, #12
 800546e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005472:	00e4      	lsls	r4, r4, #3
 8005474:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005478:	e789      	b.n	800538e <_free_r+0x7e>
 800547a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 800547e:	00e4      	lsls	r4, r4, #3
 8005480:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005484:	e783      	b.n	800538e <_free_r+0x7e>
 8005486:	4618      	mov	r0, r3
 8005488:	e78e      	b.n	80053a8 <_free_r+0x98>
 800548a:	1093      	asrs	r3, r2, #2
 800548c:	6879      	ldr	r1, [r7, #4]
 800548e:	2201      	movs	r2, #1
 8005490:	fa02 f303 	lsl.w	r3, r2, r3
 8005494:	430b      	orrs	r3, r1
 8005496:	607b      	str	r3, [r7, #4]
 8005498:	4603      	mov	r3, r0
 800549a:	e786      	b.n	80053aa <_free_r+0x9a>
 800549c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 80054a0:	e9c5 0002 	strd	r0, r0, [r5, #8]
 80054a4:	606a      	str	r2, [r5, #4]
 80054a6:	5069      	str	r1, [r5, r1]
 80054a8:	e7b4      	b.n	8005414 <_free_r+0x104>
 80054aa:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80054ae:	d806      	bhi.n	80054be <_free_r+0x1ae>
 80054b0:	0bcb      	lsrs	r3, r1, #15
 80054b2:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80054b6:	00e4      	lsls	r4, r4, #3
 80054b8:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80054bc:	e767      	b.n	800538e <_free_r+0x7e>
 80054be:	f240 5254 	movw	r2, #1364	; 0x554
 80054c2:	4293      	cmp	r3, r2
 80054c4:	d806      	bhi.n	80054d4 <_free_r+0x1c4>
 80054c6:	0c8b      	lsrs	r3, r1, #18
 80054c8:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80054cc:	00e4      	lsls	r4, r4, #3
 80054ce:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80054d2:	e75c      	b.n	800538e <_free_r+0x7e>
 80054d4:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80054d8:	227e      	movs	r2, #126	; 0x7e
 80054da:	e758      	b.n	800538e <_free_r+0x7e>
 80054dc:	f041 0201 	orr.w	r2, r1, #1
 80054e0:	606a      	str	r2, [r5, #4]
 80054e2:	6019      	str	r1, [r3, #0]
 80054e4:	e796      	b.n	8005414 <_free_r+0x104>
 80054e6:	bf00      	nop
 80054e8:	2000044c 	.word	0x2000044c
 80054ec:	20000454 	.word	0x20000454
 80054f0:	20000858 	.word	0x20000858
 80054f4:	20000a9c 	.word	0x20000a9c

080054f8 <__sfvwrite_r>:
 80054f8:	6893      	ldr	r3, [r2, #8]
 80054fa:	2b00      	cmp	r3, #0
 80054fc:	f000 80e4 	beq.w	80056c8 <__sfvwrite_r+0x1d0>
 8005500:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005504:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005508:	b29b      	uxth	r3, r3
 800550a:	460c      	mov	r4, r1
 800550c:	0719      	lsls	r1, r3, #28
 800550e:	b083      	sub	sp, #12
 8005510:	4682      	mov	sl, r0
 8005512:	4690      	mov	r8, r2
 8005514:	d535      	bpl.n	8005582 <__sfvwrite_r+0x8a>
 8005516:	6922      	ldr	r2, [r4, #16]
 8005518:	b39a      	cbz	r2, 8005582 <__sfvwrite_r+0x8a>
 800551a:	f013 0202 	ands.w	r2, r3, #2
 800551e:	f8d8 6000 	ldr.w	r6, [r8]
 8005522:	d03d      	beq.n	80055a0 <__sfvwrite_r+0xa8>
 8005524:	2700      	movs	r7, #0
 8005526:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 800552a:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800552e:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 80057f0 <__sfvwrite_r+0x2f8>
 8005532:	463d      	mov	r5, r7
 8005534:	454d      	cmp	r5, r9
 8005536:	462b      	mov	r3, r5
 8005538:	463a      	mov	r2, r7
 800553a:	bf28      	it	cs
 800553c:	464b      	movcs	r3, r9
 800553e:	4661      	mov	r1, ip
 8005540:	4650      	mov	r0, sl
 8005542:	b1d5      	cbz	r5, 800557a <__sfvwrite_r+0x82>
 8005544:	47d8      	blx	fp
 8005546:	2800      	cmp	r0, #0
 8005548:	f340 80c6 	ble.w	80056d8 <__sfvwrite_r+0x1e0>
 800554c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005550:	1a1b      	subs	r3, r3, r0
 8005552:	4407      	add	r7, r0
 8005554:	1a2d      	subs	r5, r5, r0
 8005556:	f8c8 3008 	str.w	r3, [r8, #8]
 800555a:	2b00      	cmp	r3, #0
 800555c:	f000 80b0 	beq.w	80056c0 <__sfvwrite_r+0x1c8>
 8005560:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005564:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005568:	454d      	cmp	r5, r9
 800556a:	462b      	mov	r3, r5
 800556c:	463a      	mov	r2, r7
 800556e:	bf28      	it	cs
 8005570:	464b      	movcs	r3, r9
 8005572:	4661      	mov	r1, ip
 8005574:	4650      	mov	r0, sl
 8005576:	2d00      	cmp	r5, #0
 8005578:	d1e4      	bne.n	8005544 <__sfvwrite_r+0x4c>
 800557a:	e9d6 7500 	ldrd	r7, r5, [r6]
 800557e:	3608      	adds	r6, #8
 8005580:	e7d8      	b.n	8005534 <__sfvwrite_r+0x3c>
 8005582:	4621      	mov	r1, r4
 8005584:	4650      	mov	r0, sl
 8005586:	f7fe fd03 	bl	8003f90 <__swsetup_r>
 800558a:	2800      	cmp	r0, #0
 800558c:	f040 812a 	bne.w	80057e4 <__sfvwrite_r+0x2ec>
 8005590:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005594:	f8d8 6000 	ldr.w	r6, [r8]
 8005598:	b29b      	uxth	r3, r3
 800559a:	f013 0202 	ands.w	r2, r3, #2
 800559e:	d1c1      	bne.n	8005524 <__sfvwrite_r+0x2c>
 80055a0:	f013 0901 	ands.w	r9, r3, #1
 80055a4:	d15d      	bne.n	8005662 <__sfvwrite_r+0x16a>
 80055a6:	68a7      	ldr	r7, [r4, #8]
 80055a8:	6820      	ldr	r0, [r4, #0]
 80055aa:	464d      	mov	r5, r9
 80055ac:	2d00      	cmp	r5, #0
 80055ae:	d054      	beq.n	800565a <__sfvwrite_r+0x162>
 80055b0:	059a      	lsls	r2, r3, #22
 80055b2:	f140 809b 	bpl.w	80056ec <__sfvwrite_r+0x1f4>
 80055b6:	42af      	cmp	r7, r5
 80055b8:	46bb      	mov	fp, r7
 80055ba:	f200 80d8 	bhi.w	800576e <__sfvwrite_r+0x276>
 80055be:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80055c2:	d02f      	beq.n	8005624 <__sfvwrite_r+0x12c>
 80055c4:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80055c8:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80055cc:	eba0 0b01 	sub.w	fp, r0, r1
 80055d0:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80055d4:	1c68      	adds	r0, r5, #1
 80055d6:	107f      	asrs	r7, r7, #1
 80055d8:	4458      	add	r0, fp
 80055da:	42b8      	cmp	r0, r7
 80055dc:	463a      	mov	r2, r7
 80055de:	bf84      	itt	hi
 80055e0:	4607      	movhi	r7, r0
 80055e2:	463a      	movhi	r2, r7
 80055e4:	055b      	lsls	r3, r3, #21
 80055e6:	f140 80d3 	bpl.w	8005790 <__sfvwrite_r+0x298>
 80055ea:	4611      	mov	r1, r2
 80055ec:	4650      	mov	r0, sl
 80055ee:	f000 f9b9 	bl	8005964 <_malloc_r>
 80055f2:	2800      	cmp	r0, #0
 80055f4:	f000 80f0 	beq.w	80057d8 <__sfvwrite_r+0x2e0>
 80055f8:	465a      	mov	r2, fp
 80055fa:	6921      	ldr	r1, [r4, #16]
 80055fc:	9001      	str	r0, [sp, #4]
 80055fe:	f7fa ff7f 	bl	8000500 <memcpy>
 8005602:	89a2      	ldrh	r2, [r4, #12]
 8005604:	9b01      	ldr	r3, [sp, #4]
 8005606:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 800560a:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800560e:	81a2      	strh	r2, [r4, #12]
 8005610:	eba7 020b 	sub.w	r2, r7, fp
 8005614:	eb03 000b 	add.w	r0, r3, fp
 8005618:	6167      	str	r7, [r4, #20]
 800561a:	6123      	str	r3, [r4, #16]
 800561c:	6020      	str	r0, [r4, #0]
 800561e:	60a2      	str	r2, [r4, #8]
 8005620:	462f      	mov	r7, r5
 8005622:	46ab      	mov	fp, r5
 8005624:	465a      	mov	r2, fp
 8005626:	4649      	mov	r1, r9
 8005628:	f000 fc40 	bl	8005eac <memmove>
 800562c:	68a2      	ldr	r2, [r4, #8]
 800562e:	6823      	ldr	r3, [r4, #0]
 8005630:	1bd2      	subs	r2, r2, r7
 8005632:	445b      	add	r3, fp
 8005634:	462f      	mov	r7, r5
 8005636:	60a2      	str	r2, [r4, #8]
 8005638:	6023      	str	r3, [r4, #0]
 800563a:	2500      	movs	r5, #0
 800563c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005640:	1bdb      	subs	r3, r3, r7
 8005642:	44b9      	add	r9, r7
 8005644:	f8c8 3008 	str.w	r3, [r8, #8]
 8005648:	2b00      	cmp	r3, #0
 800564a:	d039      	beq.n	80056c0 <__sfvwrite_r+0x1c8>
 800564c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005650:	68a7      	ldr	r7, [r4, #8]
 8005652:	6820      	ldr	r0, [r4, #0]
 8005654:	b29b      	uxth	r3, r3
 8005656:	2d00      	cmp	r5, #0
 8005658:	d1aa      	bne.n	80055b0 <__sfvwrite_r+0xb8>
 800565a:	e9d6 9500 	ldrd	r9, r5, [r6]
 800565e:	3608      	adds	r6, #8
 8005660:	e7a4      	b.n	80055ac <__sfvwrite_r+0xb4>
 8005662:	4633      	mov	r3, r6
 8005664:	4691      	mov	r9, r2
 8005666:	4610      	mov	r0, r2
 8005668:	4617      	mov	r7, r2
 800566a:	464e      	mov	r6, r9
 800566c:	469b      	mov	fp, r3
 800566e:	2f00      	cmp	r7, #0
 8005670:	d06b      	beq.n	800574a <__sfvwrite_r+0x252>
 8005672:	2800      	cmp	r0, #0
 8005674:	d071      	beq.n	800575a <__sfvwrite_r+0x262>
 8005676:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 800567a:	6820      	ldr	r0, [r4, #0]
 800567c:	45b9      	cmp	r9, r7
 800567e:	464b      	mov	r3, r9
 8005680:	bf28      	it	cs
 8005682:	463b      	movcs	r3, r7
 8005684:	4288      	cmp	r0, r1
 8005686:	d903      	bls.n	8005690 <__sfvwrite_r+0x198>
 8005688:	68a5      	ldr	r5, [r4, #8]
 800568a:	4415      	add	r5, r2
 800568c:	42ab      	cmp	r3, r5
 800568e:	dc71      	bgt.n	8005774 <__sfvwrite_r+0x27c>
 8005690:	429a      	cmp	r2, r3
 8005692:	f300 8093 	bgt.w	80057bc <__sfvwrite_r+0x2c4>
 8005696:	4613      	mov	r3, r2
 8005698:	6a65      	ldr	r5, [r4, #36]	; 0x24
 800569a:	69e1      	ldr	r1, [r4, #28]
 800569c:	4632      	mov	r2, r6
 800569e:	4650      	mov	r0, sl
 80056a0:	47a8      	blx	r5
 80056a2:	1e05      	subs	r5, r0, #0
 80056a4:	dd18      	ble.n	80056d8 <__sfvwrite_r+0x1e0>
 80056a6:	ebb9 0905 	subs.w	r9, r9, r5
 80056aa:	d00f      	beq.n	80056cc <__sfvwrite_r+0x1d4>
 80056ac:	2001      	movs	r0, #1
 80056ae:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80056b2:	1b5b      	subs	r3, r3, r5
 80056b4:	442e      	add	r6, r5
 80056b6:	1b7f      	subs	r7, r7, r5
 80056b8:	f8c8 3008 	str.w	r3, [r8, #8]
 80056bc:	2b00      	cmp	r3, #0
 80056be:	d1d6      	bne.n	800566e <__sfvwrite_r+0x176>
 80056c0:	2000      	movs	r0, #0
 80056c2:	b003      	add	sp, #12
 80056c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80056c8:	2000      	movs	r0, #0
 80056ca:	4770      	bx	lr
 80056cc:	4621      	mov	r1, r4
 80056ce:	4650      	mov	r0, sl
 80056d0:	f7ff fd20 	bl	8005114 <_fflush_r>
 80056d4:	2800      	cmp	r0, #0
 80056d6:	d0ea      	beq.n	80056ae <__sfvwrite_r+0x1b6>
 80056d8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80056dc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80056e0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80056e4:	81a3      	strh	r3, [r4, #12]
 80056e6:	b003      	add	sp, #12
 80056e8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80056ec:	6923      	ldr	r3, [r4, #16]
 80056ee:	4283      	cmp	r3, r0
 80056f0:	d315      	bcc.n	800571e <__sfvwrite_r+0x226>
 80056f2:	6961      	ldr	r1, [r4, #20]
 80056f4:	42a9      	cmp	r1, r5
 80056f6:	d812      	bhi.n	800571e <__sfvwrite_r+0x226>
 80056f8:	4b3c      	ldr	r3, [pc, #240]	; (80057ec <__sfvwrite_r+0x2f4>)
 80056fa:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80056fc:	429d      	cmp	r5, r3
 80056fe:	bf94      	ite	ls
 8005700:	462b      	movls	r3, r5
 8005702:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005706:	464a      	mov	r2, r9
 8005708:	fb93 f3f1 	sdiv	r3, r3, r1
 800570c:	4650      	mov	r0, sl
 800570e:	fb01 f303 	mul.w	r3, r1, r3
 8005712:	69e1      	ldr	r1, [r4, #28]
 8005714:	47b8      	blx	r7
 8005716:	1e07      	subs	r7, r0, #0
 8005718:	ddde      	ble.n	80056d8 <__sfvwrite_r+0x1e0>
 800571a:	1bed      	subs	r5, r5, r7
 800571c:	e78e      	b.n	800563c <__sfvwrite_r+0x144>
 800571e:	42af      	cmp	r7, r5
 8005720:	bf28      	it	cs
 8005722:	462f      	movcs	r7, r5
 8005724:	463a      	mov	r2, r7
 8005726:	4649      	mov	r1, r9
 8005728:	f000 fbc0 	bl	8005eac <memmove>
 800572c:	68a3      	ldr	r3, [r4, #8]
 800572e:	6822      	ldr	r2, [r4, #0]
 8005730:	1bdb      	subs	r3, r3, r7
 8005732:	443a      	add	r2, r7
 8005734:	60a3      	str	r3, [r4, #8]
 8005736:	6022      	str	r2, [r4, #0]
 8005738:	2b00      	cmp	r3, #0
 800573a:	d1ee      	bne.n	800571a <__sfvwrite_r+0x222>
 800573c:	4621      	mov	r1, r4
 800573e:	4650      	mov	r0, sl
 8005740:	f7ff fce8 	bl	8005114 <_fflush_r>
 8005744:	2800      	cmp	r0, #0
 8005746:	d0e8      	beq.n	800571a <__sfvwrite_r+0x222>
 8005748:	e7c6      	b.n	80056d8 <__sfvwrite_r+0x1e0>
 800574a:	f10b 0308 	add.w	r3, fp, #8
 800574e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005752:	469b      	mov	fp, r3
 8005754:	3308      	adds	r3, #8
 8005756:	2f00      	cmp	r7, #0
 8005758:	d0f9      	beq.n	800574e <__sfvwrite_r+0x256>
 800575a:	463a      	mov	r2, r7
 800575c:	210a      	movs	r1, #10
 800575e:	4630      	mov	r0, r6
 8005760:	f7fa ffde 	bl	8000720 <memchr>
 8005764:	b338      	cbz	r0, 80057b6 <__sfvwrite_r+0x2be>
 8005766:	3001      	adds	r0, #1
 8005768:	eba0 0906 	sub.w	r9, r0, r6
 800576c:	e783      	b.n	8005676 <__sfvwrite_r+0x17e>
 800576e:	462f      	mov	r7, r5
 8005770:	46ab      	mov	fp, r5
 8005772:	e757      	b.n	8005624 <__sfvwrite_r+0x12c>
 8005774:	4631      	mov	r1, r6
 8005776:	462a      	mov	r2, r5
 8005778:	f000 fb98 	bl	8005eac <memmove>
 800577c:	6823      	ldr	r3, [r4, #0]
 800577e:	442b      	add	r3, r5
 8005780:	6023      	str	r3, [r4, #0]
 8005782:	4621      	mov	r1, r4
 8005784:	4650      	mov	r0, sl
 8005786:	f7ff fcc5 	bl	8005114 <_fflush_r>
 800578a:	2800      	cmp	r0, #0
 800578c:	d08b      	beq.n	80056a6 <__sfvwrite_r+0x1ae>
 800578e:	e7a3      	b.n	80056d8 <__sfvwrite_r+0x1e0>
 8005790:	4650      	mov	r0, sl
 8005792:	f000 ff05 	bl	80065a0 <_realloc_r>
 8005796:	4603      	mov	r3, r0
 8005798:	2800      	cmp	r0, #0
 800579a:	f47f af39 	bne.w	8005610 <__sfvwrite_r+0x118>
 800579e:	6921      	ldr	r1, [r4, #16]
 80057a0:	4650      	mov	r0, sl
 80057a2:	f7ff fdb5 	bl	8005310 <_free_r>
 80057a6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80057aa:	220c      	movs	r2, #12
 80057ac:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80057b0:	f8ca 2000 	str.w	r2, [sl]
 80057b4:	e792      	b.n	80056dc <__sfvwrite_r+0x1e4>
 80057b6:	f107 0901 	add.w	r9, r7, #1
 80057ba:	e75c      	b.n	8005676 <__sfvwrite_r+0x17e>
 80057bc:	461a      	mov	r2, r3
 80057be:	4631      	mov	r1, r6
 80057c0:	9301      	str	r3, [sp, #4]
 80057c2:	f000 fb73 	bl	8005eac <memmove>
 80057c6:	9b01      	ldr	r3, [sp, #4]
 80057c8:	68a1      	ldr	r1, [r4, #8]
 80057ca:	6822      	ldr	r2, [r4, #0]
 80057cc:	1ac9      	subs	r1, r1, r3
 80057ce:	441a      	add	r2, r3
 80057d0:	60a1      	str	r1, [r4, #8]
 80057d2:	6022      	str	r2, [r4, #0]
 80057d4:	461d      	mov	r5, r3
 80057d6:	e766      	b.n	80056a6 <__sfvwrite_r+0x1ae>
 80057d8:	230c      	movs	r3, #12
 80057da:	f8ca 3000 	str.w	r3, [sl]
 80057de:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80057e2:	e77b      	b.n	80056dc <__sfvwrite_r+0x1e4>
 80057e4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80057e8:	e76b      	b.n	80056c2 <__sfvwrite_r+0x1ca>
 80057ea:	bf00      	nop
 80057ec:	7ffffffe 	.word	0x7ffffffe
 80057f0:	7ffffc00 	.word	0x7ffffc00

080057f4 <_fwalk_reent>:
 80057f4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80057f8:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80057fc:	d01f      	beq.n	800583e <_fwalk_reent+0x4a>
 80057fe:	4688      	mov	r8, r1
 8005800:	4606      	mov	r6, r0
 8005802:	f04f 0900 	mov.w	r9, #0
 8005806:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 800580a:	3d01      	subs	r5, #1
 800580c:	d411      	bmi.n	8005832 <_fwalk_reent+0x3e>
 800580e:	89a3      	ldrh	r3, [r4, #12]
 8005810:	2b01      	cmp	r3, #1
 8005812:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005816:	4621      	mov	r1, r4
 8005818:	4630      	mov	r0, r6
 800581a:	d906      	bls.n	800582a <_fwalk_reent+0x36>
 800581c:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005820:	3301      	adds	r3, #1
 8005822:	d002      	beq.n	800582a <_fwalk_reent+0x36>
 8005824:	47c0      	blx	r8
 8005826:	ea49 0900 	orr.w	r9, r9, r0
 800582a:	1c6b      	adds	r3, r5, #1
 800582c:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005830:	d1ed      	bne.n	800580e <_fwalk_reent+0x1a>
 8005832:	683f      	ldr	r7, [r7, #0]
 8005834:	2f00      	cmp	r7, #0
 8005836:	d1e6      	bne.n	8005806 <_fwalk_reent+0x12>
 8005838:	4648      	mov	r0, r9
 800583a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800583e:	46b9      	mov	r9, r7
 8005840:	4648      	mov	r0, r9
 8005842:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005846:	bf00      	nop

08005848 <_localeconv_r>:
 8005848:	4a04      	ldr	r2, [pc, #16]	; (800585c <_localeconv_r+0x14>)
 800584a:	4b05      	ldr	r3, [pc, #20]	; (8005860 <_localeconv_r+0x18>)
 800584c:	6812      	ldr	r2, [r2, #0]
 800584e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005850:	2800      	cmp	r0, #0
 8005852:	bf08      	it	eq
 8005854:	4618      	moveq	r0, r3
 8005856:	30f0      	adds	r0, #240	; 0xf0
 8005858:	4770      	bx	lr
 800585a:	bf00      	nop
 800585c:	20000018 	.word	0x20000018
 8005860:	2000085c 	.word	0x2000085c

08005864 <__retarget_lock_init_recursive>:
 8005864:	4770      	bx	lr
 8005866:	bf00      	nop

08005868 <__retarget_lock_close_recursive>:
 8005868:	4770      	bx	lr
 800586a:	bf00      	nop

0800586c <__retarget_lock_acquire_recursive>:
 800586c:	4770      	bx	lr
 800586e:	bf00      	nop

08005870 <__retarget_lock_release_recursive>:
 8005870:	4770      	bx	lr
 8005872:	bf00      	nop

08005874 <__swhatbuf_r>:
 8005874:	b570      	push	{r4, r5, r6, lr}
 8005876:	460c      	mov	r4, r1
 8005878:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800587c:	2900      	cmp	r1, #0
 800587e:	b096      	sub	sp, #88	; 0x58
 8005880:	4615      	mov	r5, r2
 8005882:	461e      	mov	r6, r3
 8005884:	da0f      	bge.n	80058a6 <__swhatbuf_r+0x32>
 8005886:	89a2      	ldrh	r2, [r4, #12]
 8005888:	2300      	movs	r3, #0
 800588a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 800588e:	6033      	str	r3, [r6, #0]
 8005890:	d104      	bne.n	800589c <__swhatbuf_r+0x28>
 8005892:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005896:	602b      	str	r3, [r5, #0]
 8005898:	b016      	add	sp, #88	; 0x58
 800589a:	bd70      	pop	{r4, r5, r6, pc}
 800589c:	2240      	movs	r2, #64	; 0x40
 800589e:	4618      	mov	r0, r3
 80058a0:	602a      	str	r2, [r5, #0]
 80058a2:	b016      	add	sp, #88	; 0x58
 80058a4:	bd70      	pop	{r4, r5, r6, pc}
 80058a6:	466a      	mov	r2, sp
 80058a8:	f001 fad0 	bl	8006e4c <_fstat_r>
 80058ac:	2800      	cmp	r0, #0
 80058ae:	dbea      	blt.n	8005886 <__swhatbuf_r+0x12>
 80058b0:	9b01      	ldr	r3, [sp, #4]
 80058b2:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 80058b6:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 80058ba:	fab3 f383 	clz	r3, r3
 80058be:	095b      	lsrs	r3, r3, #5
 80058c0:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80058c4:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80058c8:	6033      	str	r3, [r6, #0]
 80058ca:	602a      	str	r2, [r5, #0]
 80058cc:	b016      	add	sp, #88	; 0x58
 80058ce:	bd70      	pop	{r4, r5, r6, pc}

080058d0 <__smakebuf_r>:
 80058d0:	898a      	ldrh	r2, [r1, #12]
 80058d2:	0792      	lsls	r2, r2, #30
 80058d4:	460b      	mov	r3, r1
 80058d6:	d506      	bpl.n	80058e6 <__smakebuf_r+0x16>
 80058d8:	f101 0243 	add.w	r2, r1, #67	; 0x43
 80058dc:	2101      	movs	r1, #1
 80058de:	601a      	str	r2, [r3, #0]
 80058e0:	e9c3 2104 	strd	r2, r1, [r3, #16]
 80058e4:	4770      	bx	lr
 80058e6:	b570      	push	{r4, r5, r6, lr}
 80058e8:	b082      	sub	sp, #8
 80058ea:	ab01      	add	r3, sp, #4
 80058ec:	466a      	mov	r2, sp
 80058ee:	460c      	mov	r4, r1
 80058f0:	4605      	mov	r5, r0
 80058f2:	f7ff ffbf 	bl	8005874 <__swhatbuf_r>
 80058f6:	9900      	ldr	r1, [sp, #0]
 80058f8:	4606      	mov	r6, r0
 80058fa:	4628      	mov	r0, r5
 80058fc:	f000 f832 	bl	8005964 <_malloc_r>
 8005900:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005904:	b1d8      	cbz	r0, 800593e <__smakebuf_r+0x6e>
 8005906:	4916      	ldr	r1, [pc, #88]	; (8005960 <__smakebuf_r+0x90>)
 8005908:	63e9      	str	r1, [r5, #60]	; 0x3c
 800590a:	9a01      	ldr	r2, [sp, #4]
 800590c:	9900      	ldr	r1, [sp, #0]
 800590e:	6020      	str	r0, [r4, #0]
 8005910:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005914:	81a3      	strh	r3, [r4, #12]
 8005916:	e9c4 0104 	strd	r0, r1, [r4, #16]
 800591a:	b91a      	cbnz	r2, 8005924 <__smakebuf_r+0x54>
 800591c:	4333      	orrs	r3, r6
 800591e:	81a3      	strh	r3, [r4, #12]
 8005920:	b002      	add	sp, #8
 8005922:	bd70      	pop	{r4, r5, r6, pc}
 8005924:	4628      	mov	r0, r5
 8005926:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800592a:	f001 faa3 	bl	8006e74 <_isatty_r>
 800592e:	b1a0      	cbz	r0, 800595a <__smakebuf_r+0x8a>
 8005930:	89a3      	ldrh	r3, [r4, #12]
 8005932:	f023 0303 	bic.w	r3, r3, #3
 8005936:	f043 0301 	orr.w	r3, r3, #1
 800593a:	b21b      	sxth	r3, r3
 800593c:	e7ee      	b.n	800591c <__smakebuf_r+0x4c>
 800593e:	059a      	lsls	r2, r3, #22
 8005940:	d4ee      	bmi.n	8005920 <__smakebuf_r+0x50>
 8005942:	f023 0303 	bic.w	r3, r3, #3
 8005946:	f104 0243 	add.w	r2, r4, #67	; 0x43
 800594a:	f043 0302 	orr.w	r3, r3, #2
 800594e:	2101      	movs	r1, #1
 8005950:	81a3      	strh	r3, [r4, #12]
 8005952:	6022      	str	r2, [r4, #0]
 8005954:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005958:	e7e2      	b.n	8005920 <__smakebuf_r+0x50>
 800595a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800595e:	e7dd      	b.n	800591c <__smakebuf_r+0x4c>
 8005960:	080051c1 	.word	0x080051c1

08005964 <_malloc_r>:
 8005964:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005968:	f101 050b 	add.w	r5, r1, #11
 800596c:	2d16      	cmp	r5, #22
 800596e:	b083      	sub	sp, #12
 8005970:	4606      	mov	r6, r0
 8005972:	d823      	bhi.n	80059bc <_malloc_r+0x58>
 8005974:	2910      	cmp	r1, #16
 8005976:	f200 80b9 	bhi.w	8005aec <_malloc_r+0x188>
 800597a:	f000 fafb 	bl	8005f74 <__malloc_lock>
 800597e:	2510      	movs	r5, #16
 8005980:	2318      	movs	r3, #24
 8005982:	2002      	movs	r0, #2
 8005984:	4fc5      	ldr	r7, [pc, #788]	; (8005c9c <_malloc_r+0x338>)
 8005986:	443b      	add	r3, r7
 8005988:	f1a3 0208 	sub.w	r2, r3, #8
 800598c:	685c      	ldr	r4, [r3, #4]
 800598e:	4294      	cmp	r4, r2
 8005990:	f000 8166 	beq.w	8005c60 <_malloc_r+0x2fc>
 8005994:	6863      	ldr	r3, [r4, #4]
 8005996:	f023 0303 	bic.w	r3, r3, #3
 800599a:	4423      	add	r3, r4
 800599c:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 80059a0:	685a      	ldr	r2, [r3, #4]
 80059a2:	60e9      	str	r1, [r5, #12]
 80059a4:	f042 0201 	orr.w	r2, r2, #1
 80059a8:	608d      	str	r5, [r1, #8]
 80059aa:	4630      	mov	r0, r6
 80059ac:	605a      	str	r2, [r3, #4]
 80059ae:	f000 fae7 	bl	8005f80 <__malloc_unlock>
 80059b2:	3408      	adds	r4, #8
 80059b4:	4620      	mov	r0, r4
 80059b6:	b003      	add	sp, #12
 80059b8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80059bc:	f035 0507 	bics.w	r5, r5, #7
 80059c0:	f100 8094 	bmi.w	8005aec <_malloc_r+0x188>
 80059c4:	42a9      	cmp	r1, r5
 80059c6:	f200 8091 	bhi.w	8005aec <_malloc_r+0x188>
 80059ca:	f000 fad3 	bl	8005f74 <__malloc_lock>
 80059ce:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80059d2:	f0c0 8183 	bcc.w	8005cdc <_malloc_r+0x378>
 80059d6:	0a6b      	lsrs	r3, r5, #9
 80059d8:	f000 808f 	beq.w	8005afa <_malloc_r+0x196>
 80059dc:	2b04      	cmp	r3, #4
 80059de:	f200 8146 	bhi.w	8005c6e <_malloc_r+0x30a>
 80059e2:	09ab      	lsrs	r3, r5, #6
 80059e4:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80059e8:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80059ec:	00c3      	lsls	r3, r0, #3
 80059ee:	4fab      	ldr	r7, [pc, #684]	; (8005c9c <_malloc_r+0x338>)
 80059f0:	443b      	add	r3, r7
 80059f2:	f1a3 0108 	sub.w	r1, r3, #8
 80059f6:	685c      	ldr	r4, [r3, #4]
 80059f8:	42a1      	cmp	r1, r4
 80059fa:	d106      	bne.n	8005a0a <_malloc_r+0xa6>
 80059fc:	e00c      	b.n	8005a18 <_malloc_r+0xb4>
 80059fe:	2a00      	cmp	r2, #0
 8005a00:	f280 811d 	bge.w	8005c3e <_malloc_r+0x2da>
 8005a04:	68e4      	ldr	r4, [r4, #12]
 8005a06:	42a1      	cmp	r1, r4
 8005a08:	d006      	beq.n	8005a18 <_malloc_r+0xb4>
 8005a0a:	6863      	ldr	r3, [r4, #4]
 8005a0c:	f023 0303 	bic.w	r3, r3, #3
 8005a10:	1b5a      	subs	r2, r3, r5
 8005a12:	2a0f      	cmp	r2, #15
 8005a14:	ddf3      	ble.n	80059fe <_malloc_r+0x9a>
 8005a16:	4660      	mov	r0, ip
 8005a18:	693c      	ldr	r4, [r7, #16]
 8005a1a:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005cb0 <_malloc_r+0x34c>
 8005a1e:	4564      	cmp	r4, ip
 8005a20:	d071      	beq.n	8005b06 <_malloc_r+0x1a2>
 8005a22:	6863      	ldr	r3, [r4, #4]
 8005a24:	f023 0303 	bic.w	r3, r3, #3
 8005a28:	1b5a      	subs	r2, r3, r5
 8005a2a:	2a0f      	cmp	r2, #15
 8005a2c:	f300 8144 	bgt.w	8005cb8 <_malloc_r+0x354>
 8005a30:	2a00      	cmp	r2, #0
 8005a32:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005a36:	f280 8126 	bge.w	8005c86 <_malloc_r+0x322>
 8005a3a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005a3e:	f080 8169 	bcs.w	8005d14 <_malloc_r+0x3b0>
 8005a42:	08db      	lsrs	r3, r3, #3
 8005a44:	1c59      	adds	r1, r3, #1
 8005a46:	687a      	ldr	r2, [r7, #4]
 8005a48:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005a4c:	f8c4 8008 	str.w	r8, [r4, #8]
 8005a50:	f04f 0e01 	mov.w	lr, #1
 8005a54:	109b      	asrs	r3, r3, #2
 8005a56:	fa0e f303 	lsl.w	r3, lr, r3
 8005a5a:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005a5e:	4313      	orrs	r3, r2
 8005a60:	f1ae 0208 	sub.w	r2, lr, #8
 8005a64:	60e2      	str	r2, [r4, #12]
 8005a66:	607b      	str	r3, [r7, #4]
 8005a68:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005a6c:	f8c8 400c 	str.w	r4, [r8, #12]
 8005a70:	1082      	asrs	r2, r0, #2
 8005a72:	2401      	movs	r4, #1
 8005a74:	4094      	lsls	r4, r2
 8005a76:	429c      	cmp	r4, r3
 8005a78:	d84b      	bhi.n	8005b12 <_malloc_r+0x1ae>
 8005a7a:	421c      	tst	r4, r3
 8005a7c:	d106      	bne.n	8005a8c <_malloc_r+0x128>
 8005a7e:	f020 0003 	bic.w	r0, r0, #3
 8005a82:	0064      	lsls	r4, r4, #1
 8005a84:	421c      	tst	r4, r3
 8005a86:	f100 0004 	add.w	r0, r0, #4
 8005a8a:	d0fa      	beq.n	8005a82 <_malloc_r+0x11e>
 8005a8c:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005a90:	46ce      	mov	lr, r9
 8005a92:	4680      	mov	r8, r0
 8005a94:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005a98:	459e      	cmp	lr, r3
 8005a9a:	d107      	bne.n	8005aac <_malloc_r+0x148>
 8005a9c:	e122      	b.n	8005ce4 <_malloc_r+0x380>
 8005a9e:	2a00      	cmp	r2, #0
 8005aa0:	f280 8129 	bge.w	8005cf6 <_malloc_r+0x392>
 8005aa4:	68db      	ldr	r3, [r3, #12]
 8005aa6:	459e      	cmp	lr, r3
 8005aa8:	f000 811c 	beq.w	8005ce4 <_malloc_r+0x380>
 8005aac:	6859      	ldr	r1, [r3, #4]
 8005aae:	f021 0103 	bic.w	r1, r1, #3
 8005ab2:	1b4a      	subs	r2, r1, r5
 8005ab4:	2a0f      	cmp	r2, #15
 8005ab6:	ddf2      	ble.n	8005a9e <_malloc_r+0x13a>
 8005ab8:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005abc:	195c      	adds	r4, r3, r5
 8005abe:	f045 0501 	orr.w	r5, r5, #1
 8005ac2:	605d      	str	r5, [r3, #4]
 8005ac4:	f042 0501 	orr.w	r5, r2, #1
 8005ac8:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005acc:	4630      	mov	r0, r6
 8005ace:	f8ce 8008 	str.w	r8, [lr, #8]
 8005ad2:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005ad6:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005ada:	6065      	str	r5, [r4, #4]
 8005adc:	505a      	str	r2, [r3, r1]
 8005ade:	9301      	str	r3, [sp, #4]
 8005ae0:	f000 fa4e 	bl	8005f80 <__malloc_unlock>
 8005ae4:	9b01      	ldr	r3, [sp, #4]
 8005ae6:	f103 0408 	add.w	r4, r3, #8
 8005aea:	e763      	b.n	80059b4 <_malloc_r+0x50>
 8005aec:	2400      	movs	r4, #0
 8005aee:	230c      	movs	r3, #12
 8005af0:	4620      	mov	r0, r4
 8005af2:	6033      	str	r3, [r6, #0]
 8005af4:	b003      	add	sp, #12
 8005af6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005afa:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005afe:	2040      	movs	r0, #64	; 0x40
 8005b00:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005b04:	e773      	b.n	80059ee <_malloc_r+0x8a>
 8005b06:	687b      	ldr	r3, [r7, #4]
 8005b08:	1082      	asrs	r2, r0, #2
 8005b0a:	2401      	movs	r4, #1
 8005b0c:	4094      	lsls	r4, r2
 8005b0e:	429c      	cmp	r4, r3
 8005b10:	d9b3      	bls.n	8005a7a <_malloc_r+0x116>
 8005b12:	68bc      	ldr	r4, [r7, #8]
 8005b14:	6863      	ldr	r3, [r4, #4]
 8005b16:	f023 0903 	bic.w	r9, r3, #3
 8005b1a:	45a9      	cmp	r9, r5
 8005b1c:	d303      	bcc.n	8005b26 <_malloc_r+0x1c2>
 8005b1e:	eba9 0305 	sub.w	r3, r9, r5
 8005b22:	2b0f      	cmp	r3, #15
 8005b24:	dc7b      	bgt.n	8005c1e <_malloc_r+0x2ba>
 8005b26:	4b5e      	ldr	r3, [pc, #376]	; (8005ca0 <_malloc_r+0x33c>)
 8005b28:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005cb4 <_malloc_r+0x350>
 8005b2c:	681a      	ldr	r2, [r3, #0]
 8005b2e:	f8da 3000 	ldr.w	r3, [sl]
 8005b32:	3301      	adds	r3, #1
 8005b34:	eb05 0802 	add.w	r8, r5, r2
 8005b38:	f000 8148 	beq.w	8005dcc <_malloc_r+0x468>
 8005b3c:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005b40:	f108 080f 	add.w	r8, r8, #15
 8005b44:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005b48:	f028 080f 	bic.w	r8, r8, #15
 8005b4c:	4641      	mov	r1, r8
 8005b4e:	4630      	mov	r0, r6
 8005b50:	f000 ff08 	bl	8006964 <_sbrk_r>
 8005b54:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005b58:	4683      	mov	fp, r0
 8005b5a:	f000 8104 	beq.w	8005d66 <_malloc_r+0x402>
 8005b5e:	eb04 0009 	add.w	r0, r4, r9
 8005b62:	4558      	cmp	r0, fp
 8005b64:	f200 80fd 	bhi.w	8005d62 <_malloc_r+0x3fe>
 8005b68:	4a4e      	ldr	r2, [pc, #312]	; (8005ca4 <_malloc_r+0x340>)
 8005b6a:	6813      	ldr	r3, [r2, #0]
 8005b6c:	4443      	add	r3, r8
 8005b6e:	6013      	str	r3, [r2, #0]
 8005b70:	f000 814d 	beq.w	8005e0e <_malloc_r+0x4aa>
 8005b74:	f8da 1000 	ldr.w	r1, [sl]
 8005b78:	3101      	adds	r1, #1
 8005b7a:	bf1b      	ittet	ne
 8005b7c:	ebab 0000 	subne.w	r0, fp, r0
 8005b80:	181b      	addne	r3, r3, r0
 8005b82:	f8ca b000 	streq.w	fp, [sl]
 8005b86:	6013      	strne	r3, [r2, #0]
 8005b88:	f01b 0307 	ands.w	r3, fp, #7
 8005b8c:	f000 8134 	beq.w	8005df8 <_malloc_r+0x494>
 8005b90:	f1c3 0108 	rsb	r1, r3, #8
 8005b94:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005b98:	448b      	add	fp, r1
 8005b9a:	3308      	adds	r3, #8
 8005b9c:	44d8      	add	r8, fp
 8005b9e:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005ba2:	eba3 0808 	sub.w	r8, r3, r8
 8005ba6:	4641      	mov	r1, r8
 8005ba8:	4630      	mov	r0, r6
 8005baa:	9201      	str	r2, [sp, #4]
 8005bac:	f000 feda 	bl	8006964 <_sbrk_r>
 8005bb0:	1c43      	adds	r3, r0, #1
 8005bb2:	9a01      	ldr	r2, [sp, #4]
 8005bb4:	f000 8146 	beq.w	8005e44 <_malloc_r+0x4e0>
 8005bb8:	eba0 010b 	sub.w	r1, r0, fp
 8005bbc:	4441      	add	r1, r8
 8005bbe:	f041 0101 	orr.w	r1, r1, #1
 8005bc2:	6813      	ldr	r3, [r2, #0]
 8005bc4:	f8c7 b008 	str.w	fp, [r7, #8]
 8005bc8:	4443      	add	r3, r8
 8005bca:	42bc      	cmp	r4, r7
 8005bcc:	f8cb 1004 	str.w	r1, [fp, #4]
 8005bd0:	6013      	str	r3, [r2, #0]
 8005bd2:	d015      	beq.n	8005c00 <_malloc_r+0x29c>
 8005bd4:	f1b9 0f0f 	cmp.w	r9, #15
 8005bd8:	f240 8130 	bls.w	8005e3c <_malloc_r+0x4d8>
 8005bdc:	6860      	ldr	r0, [r4, #4]
 8005bde:	f1a9 010c 	sub.w	r1, r9, #12
 8005be2:	f021 0107 	bic.w	r1, r1, #7
 8005be6:	f000 0001 	and.w	r0, r0, #1
 8005bea:	eb04 0c01 	add.w	ip, r4, r1
 8005bee:	4308      	orrs	r0, r1
 8005bf0:	f04f 0e05 	mov.w	lr, #5
 8005bf4:	290f      	cmp	r1, #15
 8005bf6:	6060      	str	r0, [r4, #4]
 8005bf8:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005bfc:	f200 813a 	bhi.w	8005e74 <_malloc_r+0x510>
 8005c00:	4a29      	ldr	r2, [pc, #164]	; (8005ca8 <_malloc_r+0x344>)
 8005c02:	482a      	ldr	r0, [pc, #168]	; (8005cac <_malloc_r+0x348>)
 8005c04:	6811      	ldr	r1, [r2, #0]
 8005c06:	68bc      	ldr	r4, [r7, #8]
 8005c08:	428b      	cmp	r3, r1
 8005c0a:	6801      	ldr	r1, [r0, #0]
 8005c0c:	bf88      	it	hi
 8005c0e:	6013      	strhi	r3, [r2, #0]
 8005c10:	6862      	ldr	r2, [r4, #4]
 8005c12:	428b      	cmp	r3, r1
 8005c14:	f022 0203 	bic.w	r2, r2, #3
 8005c18:	bf88      	it	hi
 8005c1a:	6003      	strhi	r3, [r0, #0]
 8005c1c:	e0a7      	b.n	8005d6e <_malloc_r+0x40a>
 8005c1e:	1962      	adds	r2, r4, r5
 8005c20:	f043 0301 	orr.w	r3, r3, #1
 8005c24:	f045 0501 	orr.w	r5, r5, #1
 8005c28:	6065      	str	r5, [r4, #4]
 8005c2a:	4630      	mov	r0, r6
 8005c2c:	60ba      	str	r2, [r7, #8]
 8005c2e:	6053      	str	r3, [r2, #4]
 8005c30:	f000 f9a6 	bl	8005f80 <__malloc_unlock>
 8005c34:	3408      	adds	r4, #8
 8005c36:	4620      	mov	r0, r4
 8005c38:	b003      	add	sp, #12
 8005c3a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c3e:	4423      	add	r3, r4
 8005c40:	68e1      	ldr	r1, [r4, #12]
 8005c42:	685a      	ldr	r2, [r3, #4]
 8005c44:	68a5      	ldr	r5, [r4, #8]
 8005c46:	f042 0201 	orr.w	r2, r2, #1
 8005c4a:	60e9      	str	r1, [r5, #12]
 8005c4c:	4630      	mov	r0, r6
 8005c4e:	608d      	str	r5, [r1, #8]
 8005c50:	605a      	str	r2, [r3, #4]
 8005c52:	f000 f995 	bl	8005f80 <__malloc_unlock>
 8005c56:	3408      	adds	r4, #8
 8005c58:	4620      	mov	r0, r4
 8005c5a:	b003      	add	sp, #12
 8005c5c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c60:	68dc      	ldr	r4, [r3, #12]
 8005c62:	42a3      	cmp	r3, r4
 8005c64:	bf08      	it	eq
 8005c66:	3002      	addeq	r0, #2
 8005c68:	f43f aed6 	beq.w	8005a18 <_malloc_r+0xb4>
 8005c6c:	e692      	b.n	8005994 <_malloc_r+0x30>
 8005c6e:	2b14      	cmp	r3, #20
 8005c70:	d971      	bls.n	8005d56 <_malloc_r+0x3f2>
 8005c72:	2b54      	cmp	r3, #84	; 0x54
 8005c74:	f200 80ad 	bhi.w	8005dd2 <_malloc_r+0x46e>
 8005c78:	0b2b      	lsrs	r3, r5, #12
 8005c7a:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005c7e:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005c82:	00c3      	lsls	r3, r0, #3
 8005c84:	e6b3      	b.n	80059ee <_malloc_r+0x8a>
 8005c86:	4423      	add	r3, r4
 8005c88:	4630      	mov	r0, r6
 8005c8a:	685a      	ldr	r2, [r3, #4]
 8005c8c:	f042 0201 	orr.w	r2, r2, #1
 8005c90:	605a      	str	r2, [r3, #4]
 8005c92:	3408      	adds	r4, #8
 8005c94:	f000 f974 	bl	8005f80 <__malloc_unlock>
 8005c98:	e68c      	b.n	80059b4 <_malloc_r+0x50>
 8005c9a:	bf00      	nop
 8005c9c:	2000044c 	.word	0x2000044c
 8005ca0:	20000a9c 	.word	0x20000a9c
 8005ca4:	20000a6c 	.word	0x20000a6c
 8005ca8:	20000a94 	.word	0x20000a94
 8005cac:	20000a98 	.word	0x20000a98
 8005cb0:	20000454 	.word	0x20000454
 8005cb4:	20000854 	.word	0x20000854
 8005cb8:	1961      	adds	r1, r4, r5
 8005cba:	f045 0e01 	orr.w	lr, r5, #1
 8005cbe:	f042 0501 	orr.w	r5, r2, #1
 8005cc2:	f8c4 e004 	str.w	lr, [r4, #4]
 8005cc6:	4630      	mov	r0, r6
 8005cc8:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005ccc:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005cd0:	604d      	str	r5, [r1, #4]
 8005cd2:	50e2      	str	r2, [r4, r3]
 8005cd4:	f000 f954 	bl	8005f80 <__malloc_unlock>
 8005cd8:	3408      	adds	r4, #8
 8005cda:	e66b      	b.n	80059b4 <_malloc_r+0x50>
 8005cdc:	08e8      	lsrs	r0, r5, #3
 8005cde:	f105 0308 	add.w	r3, r5, #8
 8005ce2:	e64f      	b.n	8005984 <_malloc_r+0x20>
 8005ce4:	f108 0801 	add.w	r8, r8, #1
 8005ce8:	f018 0f03 	tst.w	r8, #3
 8005cec:	f10e 0e08 	add.w	lr, lr, #8
 8005cf0:	f47f aed0 	bne.w	8005a94 <_malloc_r+0x130>
 8005cf4:	e052      	b.n	8005d9c <_malloc_r+0x438>
 8005cf6:	4419      	add	r1, r3
 8005cf8:	461c      	mov	r4, r3
 8005cfa:	684a      	ldr	r2, [r1, #4]
 8005cfc:	68db      	ldr	r3, [r3, #12]
 8005cfe:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005d02:	f042 0201 	orr.w	r2, r2, #1
 8005d06:	604a      	str	r2, [r1, #4]
 8005d08:	4630      	mov	r0, r6
 8005d0a:	60eb      	str	r3, [r5, #12]
 8005d0c:	609d      	str	r5, [r3, #8]
 8005d0e:	f000 f937 	bl	8005f80 <__malloc_unlock>
 8005d12:	e64f      	b.n	80059b4 <_malloc_r+0x50>
 8005d14:	0a5a      	lsrs	r2, r3, #9
 8005d16:	2a04      	cmp	r2, #4
 8005d18:	d935      	bls.n	8005d86 <_malloc_r+0x422>
 8005d1a:	2a14      	cmp	r2, #20
 8005d1c:	d86f      	bhi.n	8005dfe <_malloc_r+0x49a>
 8005d1e:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005d22:	00c9      	lsls	r1, r1, #3
 8005d24:	325b      	adds	r2, #91	; 0x5b
 8005d26:	eb07 0e01 	add.w	lr, r7, r1
 8005d2a:	5879      	ldr	r1, [r7, r1]
 8005d2c:	f1ae 0e08 	sub.w	lr, lr, #8
 8005d30:	458e      	cmp	lr, r1
 8005d32:	d058      	beq.n	8005de6 <_malloc_r+0x482>
 8005d34:	684a      	ldr	r2, [r1, #4]
 8005d36:	f022 0203 	bic.w	r2, r2, #3
 8005d3a:	429a      	cmp	r2, r3
 8005d3c:	d902      	bls.n	8005d44 <_malloc_r+0x3e0>
 8005d3e:	6889      	ldr	r1, [r1, #8]
 8005d40:	458e      	cmp	lr, r1
 8005d42:	d1f7      	bne.n	8005d34 <_malloc_r+0x3d0>
 8005d44:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005d48:	687b      	ldr	r3, [r7, #4]
 8005d4a:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005d4e:	f8ce 4008 	str.w	r4, [lr, #8]
 8005d52:	60cc      	str	r4, [r1, #12]
 8005d54:	e68c      	b.n	8005a70 <_malloc_r+0x10c>
 8005d56:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005d5a:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005d5e:	00c3      	lsls	r3, r0, #3
 8005d60:	e645      	b.n	80059ee <_malloc_r+0x8a>
 8005d62:	42bc      	cmp	r4, r7
 8005d64:	d072      	beq.n	8005e4c <_malloc_r+0x4e8>
 8005d66:	68bc      	ldr	r4, [r7, #8]
 8005d68:	6862      	ldr	r2, [r4, #4]
 8005d6a:	f022 0203 	bic.w	r2, r2, #3
 8005d6e:	4295      	cmp	r5, r2
 8005d70:	eba2 0305 	sub.w	r3, r2, r5
 8005d74:	d802      	bhi.n	8005d7c <_malloc_r+0x418>
 8005d76:	2b0f      	cmp	r3, #15
 8005d78:	f73f af51 	bgt.w	8005c1e <_malloc_r+0x2ba>
 8005d7c:	4630      	mov	r0, r6
 8005d7e:	f000 f8ff 	bl	8005f80 <__malloc_unlock>
 8005d82:	2400      	movs	r4, #0
 8005d84:	e616      	b.n	80059b4 <_malloc_r+0x50>
 8005d86:	099a      	lsrs	r2, r3, #6
 8005d88:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005d8c:	00c9      	lsls	r1, r1, #3
 8005d8e:	3238      	adds	r2, #56	; 0x38
 8005d90:	e7c9      	b.n	8005d26 <_malloc_r+0x3c2>
 8005d92:	f8d9 9000 	ldr.w	r9, [r9]
 8005d96:	4599      	cmp	r9, r3
 8005d98:	f040 8083 	bne.w	8005ea2 <_malloc_r+0x53e>
 8005d9c:	f010 0f03 	tst.w	r0, #3
 8005da0:	f1a9 0308 	sub.w	r3, r9, #8
 8005da4:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005da8:	d1f3      	bne.n	8005d92 <_malloc_r+0x42e>
 8005daa:	687b      	ldr	r3, [r7, #4]
 8005dac:	ea23 0304 	bic.w	r3, r3, r4
 8005db0:	607b      	str	r3, [r7, #4]
 8005db2:	0064      	lsls	r4, r4, #1
 8005db4:	429c      	cmp	r4, r3
 8005db6:	f63f aeac 	bhi.w	8005b12 <_malloc_r+0x1ae>
 8005dba:	b91c      	cbnz	r4, 8005dc4 <_malloc_r+0x460>
 8005dbc:	e6a9      	b.n	8005b12 <_malloc_r+0x1ae>
 8005dbe:	0064      	lsls	r4, r4, #1
 8005dc0:	f108 0804 	add.w	r8, r8, #4
 8005dc4:	421c      	tst	r4, r3
 8005dc6:	d0fa      	beq.n	8005dbe <_malloc_r+0x45a>
 8005dc8:	4640      	mov	r0, r8
 8005dca:	e65f      	b.n	8005a8c <_malloc_r+0x128>
 8005dcc:	f108 0810 	add.w	r8, r8, #16
 8005dd0:	e6bc      	b.n	8005b4c <_malloc_r+0x1e8>
 8005dd2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005dd6:	d826      	bhi.n	8005e26 <_malloc_r+0x4c2>
 8005dd8:	0beb      	lsrs	r3, r5, #15
 8005dda:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005dde:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005de2:	00c3      	lsls	r3, r0, #3
 8005de4:	e603      	b.n	80059ee <_malloc_r+0x8a>
 8005de6:	687b      	ldr	r3, [r7, #4]
 8005de8:	1092      	asrs	r2, r2, #2
 8005dea:	f04f 0801 	mov.w	r8, #1
 8005dee:	fa08 f202 	lsl.w	r2, r8, r2
 8005df2:	4313      	orrs	r3, r2
 8005df4:	607b      	str	r3, [r7, #4]
 8005df6:	e7a8      	b.n	8005d4a <_malloc_r+0x3e6>
 8005df8:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005dfc:	e6ce      	b.n	8005b9c <_malloc_r+0x238>
 8005dfe:	2a54      	cmp	r2, #84	; 0x54
 8005e00:	d829      	bhi.n	8005e56 <_malloc_r+0x4f2>
 8005e02:	0b1a      	lsrs	r2, r3, #12
 8005e04:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005e08:	00c9      	lsls	r1, r1, #3
 8005e0a:	326e      	adds	r2, #110	; 0x6e
 8005e0c:	e78b      	b.n	8005d26 <_malloc_r+0x3c2>
 8005e0e:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005e12:	2900      	cmp	r1, #0
 8005e14:	f47f aeae 	bne.w	8005b74 <_malloc_r+0x210>
 8005e18:	eb09 0208 	add.w	r2, r9, r8
 8005e1c:	68b9      	ldr	r1, [r7, #8]
 8005e1e:	f042 0201 	orr.w	r2, r2, #1
 8005e22:	604a      	str	r2, [r1, #4]
 8005e24:	e6ec      	b.n	8005c00 <_malloc_r+0x29c>
 8005e26:	f240 5254 	movw	r2, #1364	; 0x554
 8005e2a:	4293      	cmp	r3, r2
 8005e2c:	d81c      	bhi.n	8005e68 <_malloc_r+0x504>
 8005e2e:	0cab      	lsrs	r3, r5, #18
 8005e30:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005e34:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005e38:	00c3      	lsls	r3, r0, #3
 8005e3a:	e5d8      	b.n	80059ee <_malloc_r+0x8a>
 8005e3c:	2301      	movs	r3, #1
 8005e3e:	f8cb 3004 	str.w	r3, [fp, #4]
 8005e42:	e79b      	b.n	8005d7c <_malloc_r+0x418>
 8005e44:	2101      	movs	r1, #1
 8005e46:	f04f 0800 	mov.w	r8, #0
 8005e4a:	e6ba      	b.n	8005bc2 <_malloc_r+0x25e>
 8005e4c:	4a16      	ldr	r2, [pc, #88]	; (8005ea8 <_malloc_r+0x544>)
 8005e4e:	6813      	ldr	r3, [r2, #0]
 8005e50:	4443      	add	r3, r8
 8005e52:	6013      	str	r3, [r2, #0]
 8005e54:	e68e      	b.n	8005b74 <_malloc_r+0x210>
 8005e56:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005e5a:	d814      	bhi.n	8005e86 <_malloc_r+0x522>
 8005e5c:	0bda      	lsrs	r2, r3, #15
 8005e5e:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005e62:	00c9      	lsls	r1, r1, #3
 8005e64:	3277      	adds	r2, #119	; 0x77
 8005e66:	e75e      	b.n	8005d26 <_malloc_r+0x3c2>
 8005e68:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005e6c:	207f      	movs	r0, #127	; 0x7f
 8005e6e:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005e72:	e5bc      	b.n	80059ee <_malloc_r+0x8a>
 8005e74:	f104 0108 	add.w	r1, r4, #8
 8005e78:	4630      	mov	r0, r6
 8005e7a:	9201      	str	r2, [sp, #4]
 8005e7c:	f7ff fa48 	bl	8005310 <_free_r>
 8005e80:	9a01      	ldr	r2, [sp, #4]
 8005e82:	6813      	ldr	r3, [r2, #0]
 8005e84:	e6bc      	b.n	8005c00 <_malloc_r+0x29c>
 8005e86:	f240 5154 	movw	r1, #1364	; 0x554
 8005e8a:	428a      	cmp	r2, r1
 8005e8c:	d805      	bhi.n	8005e9a <_malloc_r+0x536>
 8005e8e:	0c9a      	lsrs	r2, r3, #18
 8005e90:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005e94:	00c9      	lsls	r1, r1, #3
 8005e96:	327c      	adds	r2, #124	; 0x7c
 8005e98:	e745      	b.n	8005d26 <_malloc_r+0x3c2>
 8005e9a:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005e9e:	227e      	movs	r2, #126	; 0x7e
 8005ea0:	e741      	b.n	8005d26 <_malloc_r+0x3c2>
 8005ea2:	687b      	ldr	r3, [r7, #4]
 8005ea4:	e785      	b.n	8005db2 <_malloc_r+0x44e>
 8005ea6:	bf00      	nop
 8005ea8:	20000a6c 	.word	0x20000a6c

08005eac <memmove>:
 8005eac:	4288      	cmp	r0, r1
 8005eae:	b4f0      	push	{r4, r5, r6, r7}
 8005eb0:	d90d      	bls.n	8005ece <memmove+0x22>
 8005eb2:	188b      	adds	r3, r1, r2
 8005eb4:	4283      	cmp	r3, r0
 8005eb6:	d90a      	bls.n	8005ece <memmove+0x22>
 8005eb8:	1884      	adds	r4, r0, r2
 8005eba:	b132      	cbz	r2, 8005eca <memmove+0x1e>
 8005ebc:	4622      	mov	r2, r4
 8005ebe:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005ec2:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005ec6:	4299      	cmp	r1, r3
 8005ec8:	d1f9      	bne.n	8005ebe <memmove+0x12>
 8005eca:	bcf0      	pop	{r4, r5, r6, r7}
 8005ecc:	4770      	bx	lr
 8005ece:	2a0f      	cmp	r2, #15
 8005ed0:	d949      	bls.n	8005f66 <memmove+0xba>
 8005ed2:	ea40 0301 	orr.w	r3, r0, r1
 8005ed6:	079b      	lsls	r3, r3, #30
 8005ed8:	d147      	bne.n	8005f6a <memmove+0xbe>
 8005eda:	f1a2 0310 	sub.w	r3, r2, #16
 8005ede:	091b      	lsrs	r3, r3, #4
 8005ee0:	f101 0720 	add.w	r7, r1, #32
 8005ee4:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005ee8:	f101 0410 	add.w	r4, r1, #16
 8005eec:	f100 0510 	add.w	r5, r0, #16
 8005ef0:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005ef4:	f845 6c10 	str.w	r6, [r5, #-16]
 8005ef8:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005efc:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005f00:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005f04:	f845 6c08 	str.w	r6, [r5, #-8]
 8005f08:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005f0c:	f845 6c04 	str.w	r6, [r5, #-4]
 8005f10:	3410      	adds	r4, #16
 8005f12:	42bc      	cmp	r4, r7
 8005f14:	f105 0510 	add.w	r5, r5, #16
 8005f18:	d1ea      	bne.n	8005ef0 <memmove+0x44>
 8005f1a:	3301      	adds	r3, #1
 8005f1c:	f002 050f 	and.w	r5, r2, #15
 8005f20:	011b      	lsls	r3, r3, #4
 8005f22:	2d03      	cmp	r5, #3
 8005f24:	4419      	add	r1, r3
 8005f26:	4403      	add	r3, r0
 8005f28:	d921      	bls.n	8005f6e <memmove+0xc2>
 8005f2a:	1f1f      	subs	r7, r3, #4
 8005f2c:	460e      	mov	r6, r1
 8005f2e:	462c      	mov	r4, r5
 8005f30:	3c04      	subs	r4, #4
 8005f32:	f856 cb04 	ldr.w	ip, [r6], #4
 8005f36:	f847 cf04 	str.w	ip, [r7, #4]!
 8005f3a:	2c03      	cmp	r4, #3
 8005f3c:	d8f8      	bhi.n	8005f30 <memmove+0x84>
 8005f3e:	1f2c      	subs	r4, r5, #4
 8005f40:	f024 0403 	bic.w	r4, r4, #3
 8005f44:	3404      	adds	r4, #4
 8005f46:	4423      	add	r3, r4
 8005f48:	4421      	add	r1, r4
 8005f4a:	f002 0203 	and.w	r2, r2, #3
 8005f4e:	2a00      	cmp	r2, #0
 8005f50:	d0bb      	beq.n	8005eca <memmove+0x1e>
 8005f52:	3b01      	subs	r3, #1
 8005f54:	440a      	add	r2, r1
 8005f56:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005f5a:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005f5e:	4291      	cmp	r1, r2
 8005f60:	d1f9      	bne.n	8005f56 <memmove+0xaa>
 8005f62:	bcf0      	pop	{r4, r5, r6, r7}
 8005f64:	4770      	bx	lr
 8005f66:	4603      	mov	r3, r0
 8005f68:	e7f1      	b.n	8005f4e <memmove+0xa2>
 8005f6a:	4603      	mov	r3, r0
 8005f6c:	e7f1      	b.n	8005f52 <memmove+0xa6>
 8005f6e:	462a      	mov	r2, r5
 8005f70:	e7ed      	b.n	8005f4e <memmove+0xa2>
 8005f72:	bf00      	nop

08005f74 <__malloc_lock>:
 8005f74:	4801      	ldr	r0, [pc, #4]	; (8005f7c <__malloc_lock+0x8>)
 8005f76:	f7ff bc79 	b.w	800586c <__retarget_lock_acquire_recursive>
 8005f7a:	bf00      	nop
 8005f7c:	20000af8 	.word	0x20000af8

08005f80 <__malloc_unlock>:
 8005f80:	4801      	ldr	r0, [pc, #4]	; (8005f88 <__malloc_unlock+0x8>)
 8005f82:	f7ff bc75 	b.w	8005870 <__retarget_lock_release_recursive>
 8005f86:	bf00      	nop
 8005f88:	20000af8 	.word	0x20000af8

08005f8c <_Balloc>:
 8005f8c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005f8e:	b570      	push	{r4, r5, r6, lr}
 8005f90:	4605      	mov	r5, r0
 8005f92:	460c      	mov	r4, r1
 8005f94:	b14b      	cbz	r3, 8005faa <_Balloc+0x1e>
 8005f96:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005f9a:	b180      	cbz	r0, 8005fbe <_Balloc+0x32>
 8005f9c:	6802      	ldr	r2, [r0, #0]
 8005f9e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005fa2:	2300      	movs	r3, #0
 8005fa4:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005fa8:	bd70      	pop	{r4, r5, r6, pc}
 8005faa:	2221      	movs	r2, #33	; 0x21
 8005fac:	2104      	movs	r1, #4
 8005fae:	f000 fe1d 	bl	8006bec <_calloc_r>
 8005fb2:	4603      	mov	r3, r0
 8005fb4:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005fb6:	2800      	cmp	r0, #0
 8005fb8:	d1ed      	bne.n	8005f96 <_Balloc+0xa>
 8005fba:	2000      	movs	r0, #0
 8005fbc:	bd70      	pop	{r4, r5, r6, pc}
 8005fbe:	2101      	movs	r1, #1
 8005fc0:	fa01 f604 	lsl.w	r6, r1, r4
 8005fc4:	1d72      	adds	r2, r6, #5
 8005fc6:	4628      	mov	r0, r5
 8005fc8:	0092      	lsls	r2, r2, #2
 8005fca:	f000 fe0f 	bl	8006bec <_calloc_r>
 8005fce:	2800      	cmp	r0, #0
 8005fd0:	d0f3      	beq.n	8005fba <_Balloc+0x2e>
 8005fd2:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005fd6:	e7e4      	b.n	8005fa2 <_Balloc+0x16>

08005fd8 <_Bfree>:
 8005fd8:	b131      	cbz	r1, 8005fe8 <_Bfree+0x10>
 8005fda:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005fdc:	684a      	ldr	r2, [r1, #4]
 8005fde:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005fe2:	6008      	str	r0, [r1, #0]
 8005fe4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005fe8:	4770      	bx	lr
 8005fea:	bf00      	nop

08005fec <__multadd>:
 8005fec:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005fee:	690c      	ldr	r4, [r1, #16]
 8005ff0:	b083      	sub	sp, #12
 8005ff2:	460d      	mov	r5, r1
 8005ff4:	4606      	mov	r6, r0
 8005ff6:	f101 0c14 	add.w	ip, r1, #20
 8005ffa:	2700      	movs	r7, #0
 8005ffc:	f8dc 0000 	ldr.w	r0, [ip]
 8006000:	b281      	uxth	r1, r0
 8006002:	fb02 3301 	mla	r3, r2, r1, r3
 8006006:	0c01      	lsrs	r1, r0, #16
 8006008:	0c18      	lsrs	r0, r3, #16
 800600a:	fb02 0101 	mla	r1, r2, r1, r0
 800600e:	b29b      	uxth	r3, r3
 8006010:	3701      	adds	r7, #1
 8006012:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8006016:	42bc      	cmp	r4, r7
 8006018:	f84c 3b04 	str.w	r3, [ip], #4
 800601c:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006020:	dcec      	bgt.n	8005ffc <__multadd+0x10>
 8006022:	b13b      	cbz	r3, 8006034 <__multadd+0x48>
 8006024:	68aa      	ldr	r2, [r5, #8]
 8006026:	42a2      	cmp	r2, r4
 8006028:	dd07      	ble.n	800603a <__multadd+0x4e>
 800602a:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 800602e:	3401      	adds	r4, #1
 8006030:	6153      	str	r3, [r2, #20]
 8006032:	612c      	str	r4, [r5, #16]
 8006034:	4628      	mov	r0, r5
 8006036:	b003      	add	sp, #12
 8006038:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800603a:	6869      	ldr	r1, [r5, #4]
 800603c:	9301      	str	r3, [sp, #4]
 800603e:	3101      	adds	r1, #1
 8006040:	4630      	mov	r0, r6
 8006042:	f7ff ffa3 	bl	8005f8c <_Balloc>
 8006046:	692a      	ldr	r2, [r5, #16]
 8006048:	3202      	adds	r2, #2
 800604a:	f105 010c 	add.w	r1, r5, #12
 800604e:	4607      	mov	r7, r0
 8006050:	0092      	lsls	r2, r2, #2
 8006052:	300c      	adds	r0, #12
 8006054:	f7fa fa54 	bl	8000500 <memcpy>
 8006058:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 800605a:	6869      	ldr	r1, [r5, #4]
 800605c:	9b01      	ldr	r3, [sp, #4]
 800605e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8006062:	6028      	str	r0, [r5, #0]
 8006064:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006068:	463d      	mov	r5, r7
 800606a:	e7de      	b.n	800602a <__multadd+0x3e>

0800606c <__hi0bits>:
 800606c:	0c02      	lsrs	r2, r0, #16
 800606e:	0412      	lsls	r2, r2, #16
 8006070:	4603      	mov	r3, r0
 8006072:	b9c2      	cbnz	r2, 80060a6 <__hi0bits+0x3a>
 8006074:	0403      	lsls	r3, r0, #16
 8006076:	2010      	movs	r0, #16
 8006078:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 800607c:	bf04      	itt	eq
 800607e:	021b      	lsleq	r3, r3, #8
 8006080:	3008      	addeq	r0, #8
 8006082:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8006086:	bf04      	itt	eq
 8006088:	011b      	lsleq	r3, r3, #4
 800608a:	3004      	addeq	r0, #4
 800608c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006090:	bf04      	itt	eq
 8006092:	009b      	lsleq	r3, r3, #2
 8006094:	3002      	addeq	r0, #2
 8006096:	2b00      	cmp	r3, #0
 8006098:	db04      	blt.n	80060a4 <__hi0bits+0x38>
 800609a:	005b      	lsls	r3, r3, #1
 800609c:	d501      	bpl.n	80060a2 <__hi0bits+0x36>
 800609e:	3001      	adds	r0, #1
 80060a0:	4770      	bx	lr
 80060a2:	2020      	movs	r0, #32
 80060a4:	4770      	bx	lr
 80060a6:	2000      	movs	r0, #0
 80060a8:	e7e6      	b.n	8006078 <__hi0bits+0xc>
 80060aa:	bf00      	nop

080060ac <__lo0bits>:
 80060ac:	6803      	ldr	r3, [r0, #0]
 80060ae:	f013 0207 	ands.w	r2, r3, #7
 80060b2:	4601      	mov	r1, r0
 80060b4:	d007      	beq.n	80060c6 <__lo0bits+0x1a>
 80060b6:	07da      	lsls	r2, r3, #31
 80060b8:	d41f      	bmi.n	80060fa <__lo0bits+0x4e>
 80060ba:	0798      	lsls	r0, r3, #30
 80060bc:	d51f      	bpl.n	80060fe <__lo0bits+0x52>
 80060be:	085b      	lsrs	r3, r3, #1
 80060c0:	600b      	str	r3, [r1, #0]
 80060c2:	2001      	movs	r0, #1
 80060c4:	4770      	bx	lr
 80060c6:	b298      	uxth	r0, r3
 80060c8:	b1a0      	cbz	r0, 80060f4 <__lo0bits+0x48>
 80060ca:	4610      	mov	r0, r2
 80060cc:	f013 0fff 	tst.w	r3, #255	; 0xff
 80060d0:	bf04      	itt	eq
 80060d2:	0a1b      	lsreq	r3, r3, #8
 80060d4:	3008      	addeq	r0, #8
 80060d6:	071a      	lsls	r2, r3, #28
 80060d8:	bf04      	itt	eq
 80060da:	091b      	lsreq	r3, r3, #4
 80060dc:	3004      	addeq	r0, #4
 80060de:	079a      	lsls	r2, r3, #30
 80060e0:	bf04      	itt	eq
 80060e2:	089b      	lsreq	r3, r3, #2
 80060e4:	3002      	addeq	r0, #2
 80060e6:	07da      	lsls	r2, r3, #31
 80060e8:	d402      	bmi.n	80060f0 <__lo0bits+0x44>
 80060ea:	085b      	lsrs	r3, r3, #1
 80060ec:	d00b      	beq.n	8006106 <__lo0bits+0x5a>
 80060ee:	3001      	adds	r0, #1
 80060f0:	600b      	str	r3, [r1, #0]
 80060f2:	4770      	bx	lr
 80060f4:	0c1b      	lsrs	r3, r3, #16
 80060f6:	2010      	movs	r0, #16
 80060f8:	e7e8      	b.n	80060cc <__lo0bits+0x20>
 80060fa:	2000      	movs	r0, #0
 80060fc:	4770      	bx	lr
 80060fe:	089b      	lsrs	r3, r3, #2
 8006100:	600b      	str	r3, [r1, #0]
 8006102:	2002      	movs	r0, #2
 8006104:	4770      	bx	lr
 8006106:	2020      	movs	r0, #32
 8006108:	4770      	bx	lr
 800610a:	bf00      	nop

0800610c <__i2b>:
 800610c:	b510      	push	{r4, lr}
 800610e:	460c      	mov	r4, r1
 8006110:	2101      	movs	r1, #1
 8006112:	f7ff ff3b 	bl	8005f8c <_Balloc>
 8006116:	2201      	movs	r2, #1
 8006118:	e9c0 2404 	strd	r2, r4, [r0, #16]
 800611c:	bd10      	pop	{r4, pc}
 800611e:	bf00      	nop

08006120 <__multiply>:
 8006120:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006124:	690e      	ldr	r6, [r1, #16]
 8006126:	6914      	ldr	r4, [r2, #16]
 8006128:	42a6      	cmp	r6, r4
 800612a:	b083      	sub	sp, #12
 800612c:	460f      	mov	r7, r1
 800612e:	4615      	mov	r5, r2
 8006130:	da04      	bge.n	800613c <__multiply+0x1c>
 8006132:	4632      	mov	r2, r6
 8006134:	462f      	mov	r7, r5
 8006136:	4626      	mov	r6, r4
 8006138:	460d      	mov	r5, r1
 800613a:	4614      	mov	r4, r2
 800613c:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006140:	eb06 0804 	add.w	r8, r6, r4
 8006144:	4543      	cmp	r3, r8
 8006146:	bfb8      	it	lt
 8006148:	3101      	addlt	r1, #1
 800614a:	f7ff ff1f 	bl	8005f8c <_Balloc>
 800614e:	f100 0914 	add.w	r9, r0, #20
 8006152:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8006156:	45f1      	cmp	r9, lr
 8006158:	9000      	str	r0, [sp, #0]
 800615a:	d205      	bcs.n	8006168 <__multiply+0x48>
 800615c:	464b      	mov	r3, r9
 800615e:	2200      	movs	r2, #0
 8006160:	f843 2b04 	str.w	r2, [r3], #4
 8006164:	459e      	cmp	lr, r3
 8006166:	d8fb      	bhi.n	8006160 <__multiply+0x40>
 8006168:	f105 0a14 	add.w	sl, r5, #20
 800616c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006170:	f107 0314 	add.w	r3, r7, #20
 8006174:	45a2      	cmp	sl, r4
 8006176:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800617a:	d261      	bcs.n	8006240 <__multiply+0x120>
 800617c:	1b64      	subs	r4, r4, r5
 800617e:	3c15      	subs	r4, #21
 8006180:	f024 0403 	bic.w	r4, r4, #3
 8006184:	f8cd e004 	str.w	lr, [sp, #4]
 8006188:	44a2      	add	sl, r4
 800618a:	f105 0210 	add.w	r2, r5, #16
 800618e:	469e      	mov	lr, r3
 8006190:	e005      	b.n	800619e <__multiply+0x7e>
 8006192:	0c2d      	lsrs	r5, r5, #16
 8006194:	d12b      	bne.n	80061ee <__multiply+0xce>
 8006196:	4592      	cmp	sl, r2
 8006198:	f109 0904 	add.w	r9, r9, #4
 800619c:	d04e      	beq.n	800623c <__multiply+0x11c>
 800619e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 80061a2:	fa1f fb85 	uxth.w	fp, r5
 80061a6:	f1bb 0f00 	cmp.w	fp, #0
 80061aa:	d0f2      	beq.n	8006192 <__multiply+0x72>
 80061ac:	4677      	mov	r7, lr
 80061ae:	464e      	mov	r6, r9
 80061b0:	2000      	movs	r0, #0
 80061b2:	e000      	b.n	80061b6 <__multiply+0x96>
 80061b4:	4626      	mov	r6, r4
 80061b6:	f857 1b04 	ldr.w	r1, [r7], #4
 80061ba:	6834      	ldr	r4, [r6, #0]
 80061bc:	b28b      	uxth	r3, r1
 80061be:	b2a5      	uxth	r5, r4
 80061c0:	0c09      	lsrs	r1, r1, #16
 80061c2:	0c24      	lsrs	r4, r4, #16
 80061c4:	fb0b 5303 	mla	r3, fp, r3, r5
 80061c8:	4403      	add	r3, r0
 80061ca:	fb0b 4001 	mla	r0, fp, r1, r4
 80061ce:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80061d2:	4634      	mov	r4, r6
 80061d4:	b29b      	uxth	r3, r3
 80061d6:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80061da:	45bc      	cmp	ip, r7
 80061dc:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80061e0:	f844 3b04 	str.w	r3, [r4], #4
 80061e4:	d8e6      	bhi.n	80061b4 <__multiply+0x94>
 80061e6:	6070      	str	r0, [r6, #4]
 80061e8:	6815      	ldr	r5, [r2, #0]
 80061ea:	0c2d      	lsrs	r5, r5, #16
 80061ec:	d0d3      	beq.n	8006196 <__multiply+0x76>
 80061ee:	f8d9 3000 	ldr.w	r3, [r9]
 80061f2:	4676      	mov	r6, lr
 80061f4:	4618      	mov	r0, r3
 80061f6:	46cb      	mov	fp, r9
 80061f8:	2100      	movs	r1, #0
 80061fa:	e000      	b.n	80061fe <__multiply+0xde>
 80061fc:	46a3      	mov	fp, r4
 80061fe:	8834      	ldrh	r4, [r6, #0]
 8006200:	0c00      	lsrs	r0, r0, #16
 8006202:	fb05 0004 	mla	r0, r5, r4, r0
 8006206:	4401      	add	r1, r0
 8006208:	b29b      	uxth	r3, r3
 800620a:	465c      	mov	r4, fp
 800620c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006210:	f844 3b04 	str.w	r3, [r4], #4
 8006214:	f856 3b04 	ldr.w	r3, [r6], #4
 8006218:	f8db 0004 	ldr.w	r0, [fp, #4]
 800621c:	0c1b      	lsrs	r3, r3, #16
 800621e:	b287      	uxth	r7, r0
 8006220:	fb05 7303 	mla	r3, r5, r3, r7
 8006224:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006228:	45b4      	cmp	ip, r6
 800622a:	ea4f 4113 	mov.w	r1, r3, lsr #16
 800622e:	d8e5      	bhi.n	80061fc <__multiply+0xdc>
 8006230:	4592      	cmp	sl, r2
 8006232:	f8cb 3004 	str.w	r3, [fp, #4]
 8006236:	f109 0904 	add.w	r9, r9, #4
 800623a:	d1b0      	bne.n	800619e <__multiply+0x7e>
 800623c:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006240:	f1b8 0f00 	cmp.w	r8, #0
 8006244:	dd0b      	ble.n	800625e <__multiply+0x13e>
 8006246:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800624a:	f1ae 0e04 	sub.w	lr, lr, #4
 800624e:	b11b      	cbz	r3, 8006258 <__multiply+0x138>
 8006250:	e005      	b.n	800625e <__multiply+0x13e>
 8006252:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006256:	b913      	cbnz	r3, 800625e <__multiply+0x13e>
 8006258:	f1b8 0801 	subs.w	r8, r8, #1
 800625c:	d1f9      	bne.n	8006252 <__multiply+0x132>
 800625e:	9800      	ldr	r0, [sp, #0]
 8006260:	f8c0 8010 	str.w	r8, [r0, #16]
 8006264:	b003      	add	sp, #12
 8006266:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800626a:	bf00      	nop

0800626c <__pow5mult>:
 800626c:	f012 0303 	ands.w	r3, r2, #3
 8006270:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006274:	4614      	mov	r4, r2
 8006276:	4607      	mov	r7, r0
 8006278:	d12e      	bne.n	80062d8 <__pow5mult+0x6c>
 800627a:	460d      	mov	r5, r1
 800627c:	10a4      	asrs	r4, r4, #2
 800627e:	d01c      	beq.n	80062ba <__pow5mult+0x4e>
 8006280:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8006282:	b396      	cbz	r6, 80062ea <__pow5mult+0x7e>
 8006284:	07e3      	lsls	r3, r4, #31
 8006286:	f04f 0800 	mov.w	r8, #0
 800628a:	d406      	bmi.n	800629a <__pow5mult+0x2e>
 800628c:	1064      	asrs	r4, r4, #1
 800628e:	d014      	beq.n	80062ba <__pow5mult+0x4e>
 8006290:	6830      	ldr	r0, [r6, #0]
 8006292:	b1a8      	cbz	r0, 80062c0 <__pow5mult+0x54>
 8006294:	4606      	mov	r6, r0
 8006296:	07e3      	lsls	r3, r4, #31
 8006298:	d5f8      	bpl.n	800628c <__pow5mult+0x20>
 800629a:	4632      	mov	r2, r6
 800629c:	4629      	mov	r1, r5
 800629e:	4638      	mov	r0, r7
 80062a0:	f7ff ff3e 	bl	8006120 <__multiply>
 80062a4:	b1b5      	cbz	r5, 80062d4 <__pow5mult+0x68>
 80062a6:	686a      	ldr	r2, [r5, #4]
 80062a8:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80062aa:	1064      	asrs	r4, r4, #1
 80062ac:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80062b0:	6029      	str	r1, [r5, #0]
 80062b2:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80062b6:	4605      	mov	r5, r0
 80062b8:	d1ea      	bne.n	8006290 <__pow5mult+0x24>
 80062ba:	4628      	mov	r0, r5
 80062bc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80062c0:	4632      	mov	r2, r6
 80062c2:	4631      	mov	r1, r6
 80062c4:	4638      	mov	r0, r7
 80062c6:	f7ff ff2b 	bl	8006120 <__multiply>
 80062ca:	6030      	str	r0, [r6, #0]
 80062cc:	f8c0 8000 	str.w	r8, [r0]
 80062d0:	4606      	mov	r6, r0
 80062d2:	e7e0      	b.n	8006296 <__pow5mult+0x2a>
 80062d4:	4605      	mov	r5, r0
 80062d6:	e7d9      	b.n	800628c <__pow5mult+0x20>
 80062d8:	3b01      	subs	r3, #1
 80062da:	4a0b      	ldr	r2, [pc, #44]	; (8006308 <__pow5mult+0x9c>)
 80062dc:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80062e0:	2300      	movs	r3, #0
 80062e2:	f7ff fe83 	bl	8005fec <__multadd>
 80062e6:	4605      	mov	r5, r0
 80062e8:	e7c8      	b.n	800627c <__pow5mult+0x10>
 80062ea:	2101      	movs	r1, #1
 80062ec:	4638      	mov	r0, r7
 80062ee:	f7ff fe4d 	bl	8005f8c <_Balloc>
 80062f2:	f240 2371 	movw	r3, #625	; 0x271
 80062f6:	6143      	str	r3, [r0, #20]
 80062f8:	2201      	movs	r2, #1
 80062fa:	2300      	movs	r3, #0
 80062fc:	6102      	str	r2, [r0, #16]
 80062fe:	4606      	mov	r6, r0
 8006300:	64b8      	str	r0, [r7, #72]	; 0x48
 8006302:	6003      	str	r3, [r0, #0]
 8006304:	e7be      	b.n	8006284 <__pow5mult+0x18>
 8006306:	bf00      	nop
 8006308:	080072f0 	.word	0x080072f0

0800630c <__lshift>:
 800630c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006310:	4691      	mov	r9, r2
 8006312:	690a      	ldr	r2, [r1, #16]
 8006314:	460e      	mov	r6, r1
 8006316:	ea4f 1469 	mov.w	r4, r9, asr #5
 800631a:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 800631e:	eb04 0802 	add.w	r8, r4, r2
 8006322:	f108 0501 	add.w	r5, r8, #1
 8006326:	429d      	cmp	r5, r3
 8006328:	4607      	mov	r7, r0
 800632a:	dd04      	ble.n	8006336 <__lshift+0x2a>
 800632c:	005b      	lsls	r3, r3, #1
 800632e:	429d      	cmp	r5, r3
 8006330:	f101 0101 	add.w	r1, r1, #1
 8006334:	dcfa      	bgt.n	800632c <__lshift+0x20>
 8006336:	4638      	mov	r0, r7
 8006338:	f7ff fe28 	bl	8005f8c <_Balloc>
 800633c:	2c00      	cmp	r4, #0
 800633e:	f100 0314 	add.w	r3, r0, #20
 8006342:	dd37      	ble.n	80063b4 <__lshift+0xa8>
 8006344:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006348:	2200      	movs	r2, #0
 800634a:	f843 2b04 	str.w	r2, [r3], #4
 800634e:	428b      	cmp	r3, r1
 8006350:	d1fb      	bne.n	800634a <__lshift+0x3e>
 8006352:	6934      	ldr	r4, [r6, #16]
 8006354:	f106 0314 	add.w	r3, r6, #20
 8006358:	f019 091f 	ands.w	r9, r9, #31
 800635c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006360:	d020      	beq.n	80063a4 <__lshift+0x98>
 8006362:	f1c9 0e20 	rsb	lr, r9, #32
 8006366:	2200      	movs	r2, #0
 8006368:	e000      	b.n	800636c <__lshift+0x60>
 800636a:	4651      	mov	r1, sl
 800636c:	681c      	ldr	r4, [r3, #0]
 800636e:	468a      	mov	sl, r1
 8006370:	fa04 f409 	lsl.w	r4, r4, r9
 8006374:	4314      	orrs	r4, r2
 8006376:	f84a 4b04 	str.w	r4, [sl], #4
 800637a:	f853 2b04 	ldr.w	r2, [r3], #4
 800637e:	4563      	cmp	r3, ip
 8006380:	fa22 f20e 	lsr.w	r2, r2, lr
 8006384:	d3f1      	bcc.n	800636a <__lshift+0x5e>
 8006386:	604a      	str	r2, [r1, #4]
 8006388:	b10a      	cbz	r2, 800638e <__lshift+0x82>
 800638a:	f108 0502 	add.w	r5, r8, #2
 800638e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006390:	6872      	ldr	r2, [r6, #4]
 8006392:	3d01      	subs	r5, #1
 8006394:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006398:	6105      	str	r5, [r0, #16]
 800639a:	6031      	str	r1, [r6, #0]
 800639c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80063a0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80063a4:	3904      	subs	r1, #4
 80063a6:	f853 2b04 	ldr.w	r2, [r3], #4
 80063aa:	f841 2f04 	str.w	r2, [r1, #4]!
 80063ae:	459c      	cmp	ip, r3
 80063b0:	d8f9      	bhi.n	80063a6 <__lshift+0x9a>
 80063b2:	e7ec      	b.n	800638e <__lshift+0x82>
 80063b4:	4619      	mov	r1, r3
 80063b6:	e7cc      	b.n	8006352 <__lshift+0x46>

080063b8 <__mcmp>:
 80063b8:	b430      	push	{r4, r5}
 80063ba:	690b      	ldr	r3, [r1, #16]
 80063bc:	4605      	mov	r5, r0
 80063be:	6900      	ldr	r0, [r0, #16]
 80063c0:	1ac0      	subs	r0, r0, r3
 80063c2:	d10f      	bne.n	80063e4 <__mcmp+0x2c>
 80063c4:	009b      	lsls	r3, r3, #2
 80063c6:	3514      	adds	r5, #20
 80063c8:	3114      	adds	r1, #20
 80063ca:	4419      	add	r1, r3
 80063cc:	442b      	add	r3, r5
 80063ce:	e001      	b.n	80063d4 <__mcmp+0x1c>
 80063d0:	429d      	cmp	r5, r3
 80063d2:	d207      	bcs.n	80063e4 <__mcmp+0x2c>
 80063d4:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80063d8:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80063dc:	4294      	cmp	r4, r2
 80063de:	d0f7      	beq.n	80063d0 <__mcmp+0x18>
 80063e0:	d302      	bcc.n	80063e8 <__mcmp+0x30>
 80063e2:	2001      	movs	r0, #1
 80063e4:	bc30      	pop	{r4, r5}
 80063e6:	4770      	bx	lr
 80063e8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80063ec:	e7fa      	b.n	80063e4 <__mcmp+0x2c>
 80063ee:	bf00      	nop

080063f0 <__mdiff>:
 80063f0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80063f4:	6913      	ldr	r3, [r2, #16]
 80063f6:	690d      	ldr	r5, [r1, #16]
 80063f8:	1aed      	subs	r5, r5, r3
 80063fa:	2d00      	cmp	r5, #0
 80063fc:	460e      	mov	r6, r1
 80063fe:	4690      	mov	r8, r2
 8006400:	f101 0414 	add.w	r4, r1, #20
 8006404:	f102 0714 	add.w	r7, r2, #20
 8006408:	d114      	bne.n	8006434 <__mdiff+0x44>
 800640a:	009b      	lsls	r3, r3, #2
 800640c:	18e2      	adds	r2, r4, r3
 800640e:	443b      	add	r3, r7
 8006410:	e001      	b.n	8006416 <__mdiff+0x26>
 8006412:	42a2      	cmp	r2, r4
 8006414:	d959      	bls.n	80064ca <__mdiff+0xda>
 8006416:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 800641a:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800641e:	458c      	cmp	ip, r1
 8006420:	d0f7      	beq.n	8006412 <__mdiff+0x22>
 8006422:	d209      	bcs.n	8006438 <__mdiff+0x48>
 8006424:	4622      	mov	r2, r4
 8006426:	4633      	mov	r3, r6
 8006428:	463c      	mov	r4, r7
 800642a:	4646      	mov	r6, r8
 800642c:	4617      	mov	r7, r2
 800642e:	4698      	mov	r8, r3
 8006430:	2501      	movs	r5, #1
 8006432:	e001      	b.n	8006438 <__mdiff+0x48>
 8006434:	dbf6      	blt.n	8006424 <__mdiff+0x34>
 8006436:	2500      	movs	r5, #0
 8006438:	6871      	ldr	r1, [r6, #4]
 800643a:	f7ff fda7 	bl	8005f8c <_Balloc>
 800643e:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006442:	6936      	ldr	r6, [r6, #16]
 8006444:	60c5      	str	r5, [r0, #12]
 8006446:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 800644a:	46bc      	mov	ip, r7
 800644c:	f100 0514 	add.w	r5, r0, #20
 8006450:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006454:	2300      	movs	r3, #0
 8006456:	f85c 1b04 	ldr.w	r1, [ip], #4
 800645a:	f854 8b04 	ldr.w	r8, [r4], #4
 800645e:	b28a      	uxth	r2, r1
 8006460:	fa13 f388 	uxtah	r3, r3, r8
 8006464:	0c09      	lsrs	r1, r1, #16
 8006466:	1a9a      	subs	r2, r3, r2
 8006468:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 800646c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006470:	b292      	uxth	r2, r2
 8006472:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006476:	45e6      	cmp	lr, ip
 8006478:	f845 2b04 	str.w	r2, [r5], #4
 800647c:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006480:	d8e9      	bhi.n	8006456 <__mdiff+0x66>
 8006482:	42a7      	cmp	r7, r4
 8006484:	d917      	bls.n	80064b6 <__mdiff+0xc6>
 8006486:	46ae      	mov	lr, r5
 8006488:	46a4      	mov	ip, r4
 800648a:	f85c 2b04 	ldr.w	r2, [ip], #4
 800648e:	fa13 f382 	uxtah	r3, r3, r2
 8006492:	1419      	asrs	r1, r3, #16
 8006494:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006498:	b29b      	uxth	r3, r3
 800649a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800649e:	4567      	cmp	r7, ip
 80064a0:	f84e 2b04 	str.w	r2, [lr], #4
 80064a4:	ea4f 4321 	mov.w	r3, r1, asr #16
 80064a8:	d8ef      	bhi.n	800648a <__mdiff+0x9a>
 80064aa:	43e4      	mvns	r4, r4
 80064ac:	4427      	add	r7, r4
 80064ae:	f027 0703 	bic.w	r7, r7, #3
 80064b2:	3704      	adds	r7, #4
 80064b4:	443d      	add	r5, r7
 80064b6:	3d04      	subs	r5, #4
 80064b8:	b922      	cbnz	r2, 80064c4 <__mdiff+0xd4>
 80064ba:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80064be:	3e01      	subs	r6, #1
 80064c0:	2b00      	cmp	r3, #0
 80064c2:	d0fa      	beq.n	80064ba <__mdiff+0xca>
 80064c4:	6106      	str	r6, [r0, #16]
 80064c6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80064ca:	2100      	movs	r1, #0
 80064cc:	f7ff fd5e 	bl	8005f8c <_Balloc>
 80064d0:	2201      	movs	r2, #1
 80064d2:	2300      	movs	r3, #0
 80064d4:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80064d8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080064dc <__d2b>:
 80064dc:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80064e0:	460f      	mov	r7, r1
 80064e2:	b083      	sub	sp, #12
 80064e4:	2101      	movs	r1, #1
 80064e6:	ec55 4b10 	vmov	r4, r5, d0
 80064ea:	4616      	mov	r6, r2
 80064ec:	f7ff fd4e 	bl	8005f8c <_Balloc>
 80064f0:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80064f4:	4681      	mov	r9, r0
 80064f6:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80064fa:	f1b8 0f00 	cmp.w	r8, #0
 80064fe:	d001      	beq.n	8006504 <__d2b+0x28>
 8006500:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006504:	2c00      	cmp	r4, #0
 8006506:	9301      	str	r3, [sp, #4]
 8006508:	d024      	beq.n	8006554 <__d2b+0x78>
 800650a:	a802      	add	r0, sp, #8
 800650c:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006510:	f7ff fdcc 	bl	80060ac <__lo0bits>
 8006514:	2800      	cmp	r0, #0
 8006516:	d136      	bne.n	8006586 <__d2b+0xaa>
 8006518:	e9dd 2300 	ldrd	r2, r3, [sp]
 800651c:	f8c9 2014 	str.w	r2, [r9, #20]
 8006520:	2b00      	cmp	r3, #0
 8006522:	bf0c      	ite	eq
 8006524:	2101      	moveq	r1, #1
 8006526:	2102      	movne	r1, #2
 8006528:	f8c9 3018 	str.w	r3, [r9, #24]
 800652c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006530:	f1b8 0f00 	cmp.w	r8, #0
 8006534:	d11b      	bne.n	800656e <__d2b+0x92>
 8006536:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 800653a:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 800653e:	6038      	str	r0, [r7, #0]
 8006540:	6918      	ldr	r0, [r3, #16]
 8006542:	f7ff fd93 	bl	800606c <__hi0bits>
 8006546:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 800654a:	6030      	str	r0, [r6, #0]
 800654c:	4648      	mov	r0, r9
 800654e:	b003      	add	sp, #12
 8006550:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006554:	a801      	add	r0, sp, #4
 8006556:	f7ff fda9 	bl	80060ac <__lo0bits>
 800655a:	9b01      	ldr	r3, [sp, #4]
 800655c:	f8c9 3014 	str.w	r3, [r9, #20]
 8006560:	2101      	movs	r1, #1
 8006562:	3020      	adds	r0, #32
 8006564:	f8c9 1010 	str.w	r1, [r9, #16]
 8006568:	f1b8 0f00 	cmp.w	r8, #0
 800656c:	d0e3      	beq.n	8006536 <__d2b+0x5a>
 800656e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006572:	eb08 0300 	add.w	r3, r8, r0
 8006576:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 800657a:	603b      	str	r3, [r7, #0]
 800657c:	6030      	str	r0, [r6, #0]
 800657e:	4648      	mov	r0, r9
 8006580:	b003      	add	sp, #12
 8006582:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006586:	e9dd 1300 	ldrd	r1, r3, [sp]
 800658a:	f1c0 0220 	rsb	r2, r0, #32
 800658e:	fa03 f202 	lsl.w	r2, r3, r2
 8006592:	430a      	orrs	r2, r1
 8006594:	40c3      	lsrs	r3, r0
 8006596:	9301      	str	r3, [sp, #4]
 8006598:	f8c9 2014 	str.w	r2, [r9, #20]
 800659c:	e7c0      	b.n	8006520 <__d2b+0x44>
 800659e:	bf00      	nop

080065a0 <_realloc_r>:
 80065a0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80065a4:	4692      	mov	sl, r2
 80065a6:	b083      	sub	sp, #12
 80065a8:	2900      	cmp	r1, #0
 80065aa:	f000 80a1 	beq.w	80066f0 <_realloc_r+0x150>
 80065ae:	460d      	mov	r5, r1
 80065b0:	4680      	mov	r8, r0
 80065b2:	f10a 040b 	add.w	r4, sl, #11
 80065b6:	f7ff fcdd 	bl	8005f74 <__malloc_lock>
 80065ba:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80065be:	2c16      	cmp	r4, #22
 80065c0:	f022 0603 	bic.w	r6, r2, #3
 80065c4:	f1a5 0708 	sub.w	r7, r5, #8
 80065c8:	d83e      	bhi.n	8006648 <_realloc_r+0xa8>
 80065ca:	2410      	movs	r4, #16
 80065cc:	4621      	mov	r1, r4
 80065ce:	45a2      	cmp	sl, r4
 80065d0:	d83f      	bhi.n	8006652 <_realloc_r+0xb2>
 80065d2:	428e      	cmp	r6, r1
 80065d4:	eb07 0906 	add.w	r9, r7, r6
 80065d8:	da74      	bge.n	80066c4 <_realloc_r+0x124>
 80065da:	4bc7      	ldr	r3, [pc, #796]	; (80068f8 <_realloc_r+0x358>)
 80065dc:	6898      	ldr	r0, [r3, #8]
 80065de:	4548      	cmp	r0, r9
 80065e0:	f000 80aa 	beq.w	8006738 <_realloc_r+0x198>
 80065e4:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80065e8:	f020 0301 	bic.w	r3, r0, #1
 80065ec:	444b      	add	r3, r9
 80065ee:	685b      	ldr	r3, [r3, #4]
 80065f0:	07db      	lsls	r3, r3, #31
 80065f2:	f140 8083 	bpl.w	80066fc <_realloc_r+0x15c>
 80065f6:	07d2      	lsls	r2, r2, #31
 80065f8:	d534      	bpl.n	8006664 <_realloc_r+0xc4>
 80065fa:	4651      	mov	r1, sl
 80065fc:	4640      	mov	r0, r8
 80065fe:	f7ff f9b1 	bl	8005964 <_malloc_r>
 8006602:	4682      	mov	sl, r0
 8006604:	b1e0      	cbz	r0, 8006640 <_realloc_r+0xa0>
 8006606:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800660a:	f023 0301 	bic.w	r3, r3, #1
 800660e:	443b      	add	r3, r7
 8006610:	f1a0 0208 	sub.w	r2, r0, #8
 8006614:	4293      	cmp	r3, r2
 8006616:	f000 80f9 	beq.w	800680c <_realloc_r+0x26c>
 800661a:	1f32      	subs	r2, r6, #4
 800661c:	2a24      	cmp	r2, #36	; 0x24
 800661e:	f200 8107 	bhi.w	8006830 <_realloc_r+0x290>
 8006622:	2a13      	cmp	r2, #19
 8006624:	6829      	ldr	r1, [r5, #0]
 8006626:	f200 80e6 	bhi.w	80067f6 <_realloc_r+0x256>
 800662a:	4603      	mov	r3, r0
 800662c:	462a      	mov	r2, r5
 800662e:	6019      	str	r1, [r3, #0]
 8006630:	6851      	ldr	r1, [r2, #4]
 8006632:	6059      	str	r1, [r3, #4]
 8006634:	6892      	ldr	r2, [r2, #8]
 8006636:	609a      	str	r2, [r3, #8]
 8006638:	4629      	mov	r1, r5
 800663a:	4640      	mov	r0, r8
 800663c:	f7fe fe68 	bl	8005310 <_free_r>
 8006640:	4640      	mov	r0, r8
 8006642:	f7ff fc9d 	bl	8005f80 <__malloc_unlock>
 8006646:	e04f      	b.n	80066e8 <_realloc_r+0x148>
 8006648:	f024 0407 	bic.w	r4, r4, #7
 800664c:	2c00      	cmp	r4, #0
 800664e:	4621      	mov	r1, r4
 8006650:	dabd      	bge.n	80065ce <_realloc_r+0x2e>
 8006652:	f04f 0a00 	mov.w	sl, #0
 8006656:	230c      	movs	r3, #12
 8006658:	4650      	mov	r0, sl
 800665a:	f8c8 3000 	str.w	r3, [r8]
 800665e:	b003      	add	sp, #12
 8006660:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006664:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006668:	eba7 0b03 	sub.w	fp, r7, r3
 800666c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006670:	f022 0203 	bic.w	r2, r2, #3
 8006674:	18b3      	adds	r3, r6, r2
 8006676:	428b      	cmp	r3, r1
 8006678:	dbbf      	blt.n	80065fa <_realloc_r+0x5a>
 800667a:	46da      	mov	sl, fp
 800667c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006680:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006684:	1f32      	subs	r2, r6, #4
 8006686:	2a24      	cmp	r2, #36	; 0x24
 8006688:	60c1      	str	r1, [r0, #12]
 800668a:	eb0b 0903 	add.w	r9, fp, r3
 800668e:	6088      	str	r0, [r1, #8]
 8006690:	f200 80c6 	bhi.w	8006820 <_realloc_r+0x280>
 8006694:	2a13      	cmp	r2, #19
 8006696:	6829      	ldr	r1, [r5, #0]
 8006698:	f240 80c0 	bls.w	800681c <_realloc_r+0x27c>
 800669c:	f8cb 1008 	str.w	r1, [fp, #8]
 80066a0:	6869      	ldr	r1, [r5, #4]
 80066a2:	f8cb 100c 	str.w	r1, [fp, #12]
 80066a6:	2a1b      	cmp	r2, #27
 80066a8:	68a9      	ldr	r1, [r5, #8]
 80066aa:	f200 80d8 	bhi.w	800685e <_realloc_r+0x2be>
 80066ae:	f10b 0210 	add.w	r2, fp, #16
 80066b2:	3508      	adds	r5, #8
 80066b4:	6011      	str	r1, [r2, #0]
 80066b6:	6869      	ldr	r1, [r5, #4]
 80066b8:	6051      	str	r1, [r2, #4]
 80066ba:	68a9      	ldr	r1, [r5, #8]
 80066bc:	6091      	str	r1, [r2, #8]
 80066be:	461e      	mov	r6, r3
 80066c0:	465f      	mov	r7, fp
 80066c2:	4655      	mov	r5, sl
 80066c4:	687b      	ldr	r3, [r7, #4]
 80066c6:	1b32      	subs	r2, r6, r4
 80066c8:	2a0f      	cmp	r2, #15
 80066ca:	f003 0301 	and.w	r3, r3, #1
 80066ce:	d822      	bhi.n	8006716 <_realloc_r+0x176>
 80066d0:	4333      	orrs	r3, r6
 80066d2:	607b      	str	r3, [r7, #4]
 80066d4:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80066d8:	f043 0301 	orr.w	r3, r3, #1
 80066dc:	f8c9 3004 	str.w	r3, [r9, #4]
 80066e0:	4640      	mov	r0, r8
 80066e2:	f7ff fc4d 	bl	8005f80 <__malloc_unlock>
 80066e6:	46aa      	mov	sl, r5
 80066e8:	4650      	mov	r0, sl
 80066ea:	b003      	add	sp, #12
 80066ec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80066f0:	4611      	mov	r1, r2
 80066f2:	b003      	add	sp, #12
 80066f4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80066f8:	f7ff b934 	b.w	8005964 <_malloc_r>
 80066fc:	f020 0003 	bic.w	r0, r0, #3
 8006700:	1833      	adds	r3, r6, r0
 8006702:	428b      	cmp	r3, r1
 8006704:	db61      	blt.n	80067ca <_realloc_r+0x22a>
 8006706:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800670a:	461e      	mov	r6, r3
 800670c:	60ca      	str	r2, [r1, #12]
 800670e:	eb07 0903 	add.w	r9, r7, r3
 8006712:	6091      	str	r1, [r2, #8]
 8006714:	e7d6      	b.n	80066c4 <_realloc_r+0x124>
 8006716:	1939      	adds	r1, r7, r4
 8006718:	4323      	orrs	r3, r4
 800671a:	f042 0201 	orr.w	r2, r2, #1
 800671e:	607b      	str	r3, [r7, #4]
 8006720:	604a      	str	r2, [r1, #4]
 8006722:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006726:	f043 0301 	orr.w	r3, r3, #1
 800672a:	3108      	adds	r1, #8
 800672c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006730:	4640      	mov	r0, r8
 8006732:	f7fe fded 	bl	8005310 <_free_r>
 8006736:	e7d3      	b.n	80066e0 <_realloc_r+0x140>
 8006738:	6840      	ldr	r0, [r0, #4]
 800673a:	f020 0903 	bic.w	r9, r0, #3
 800673e:	44b1      	add	r9, r6
 8006740:	f104 0010 	add.w	r0, r4, #16
 8006744:	4581      	cmp	r9, r0
 8006746:	da77      	bge.n	8006838 <_realloc_r+0x298>
 8006748:	07d2      	lsls	r2, r2, #31
 800674a:	f53f af56 	bmi.w	80065fa <_realloc_r+0x5a>
 800674e:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006752:	eba7 0b02 	sub.w	fp, r7, r2
 8006756:	f8db 2004 	ldr.w	r2, [fp, #4]
 800675a:	f022 0203 	bic.w	r2, r2, #3
 800675e:	4491      	add	r9, r2
 8006760:	4548      	cmp	r0, r9
 8006762:	dc87      	bgt.n	8006674 <_realloc_r+0xd4>
 8006764:	46da      	mov	sl, fp
 8006766:	f8db 100c 	ldr.w	r1, [fp, #12]
 800676a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800676e:	1f32      	subs	r2, r6, #4
 8006770:	2a24      	cmp	r2, #36	; 0x24
 8006772:	60c1      	str	r1, [r0, #12]
 8006774:	6088      	str	r0, [r1, #8]
 8006776:	f200 80a1 	bhi.w	80068bc <_realloc_r+0x31c>
 800677a:	2a13      	cmp	r2, #19
 800677c:	6829      	ldr	r1, [r5, #0]
 800677e:	f240 809b 	bls.w	80068b8 <_realloc_r+0x318>
 8006782:	f8cb 1008 	str.w	r1, [fp, #8]
 8006786:	6869      	ldr	r1, [r5, #4]
 8006788:	f8cb 100c 	str.w	r1, [fp, #12]
 800678c:	2a1b      	cmp	r2, #27
 800678e:	68a9      	ldr	r1, [r5, #8]
 8006790:	f200 809b 	bhi.w	80068ca <_realloc_r+0x32a>
 8006794:	f10b 0210 	add.w	r2, fp, #16
 8006798:	3508      	adds	r5, #8
 800679a:	6011      	str	r1, [r2, #0]
 800679c:	6869      	ldr	r1, [r5, #4]
 800679e:	6051      	str	r1, [r2, #4]
 80067a0:	68a9      	ldr	r1, [r5, #8]
 80067a2:	6091      	str	r1, [r2, #8]
 80067a4:	eb0b 0104 	add.w	r1, fp, r4
 80067a8:	eba9 0204 	sub.w	r2, r9, r4
 80067ac:	f042 0201 	orr.w	r2, r2, #1
 80067b0:	6099      	str	r1, [r3, #8]
 80067b2:	604a      	str	r2, [r1, #4]
 80067b4:	f8db 3004 	ldr.w	r3, [fp, #4]
 80067b8:	f003 0301 	and.w	r3, r3, #1
 80067bc:	431c      	orrs	r4, r3
 80067be:	4640      	mov	r0, r8
 80067c0:	f8cb 4004 	str.w	r4, [fp, #4]
 80067c4:	f7ff fbdc 	bl	8005f80 <__malloc_unlock>
 80067c8:	e78e      	b.n	80066e8 <_realloc_r+0x148>
 80067ca:	07d3      	lsls	r3, r2, #31
 80067cc:	f53f af15 	bmi.w	80065fa <_realloc_r+0x5a>
 80067d0:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80067d4:	eba7 0b03 	sub.w	fp, r7, r3
 80067d8:	f8db 2004 	ldr.w	r2, [fp, #4]
 80067dc:	f022 0203 	bic.w	r2, r2, #3
 80067e0:	4410      	add	r0, r2
 80067e2:	1983      	adds	r3, r0, r6
 80067e4:	428b      	cmp	r3, r1
 80067e6:	f6ff af45 	blt.w	8006674 <_realloc_r+0xd4>
 80067ea:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80067ee:	46da      	mov	sl, fp
 80067f0:	60ca      	str	r2, [r1, #12]
 80067f2:	6091      	str	r1, [r2, #8]
 80067f4:	e742      	b.n	800667c <_realloc_r+0xdc>
 80067f6:	6001      	str	r1, [r0, #0]
 80067f8:	686b      	ldr	r3, [r5, #4]
 80067fa:	6043      	str	r3, [r0, #4]
 80067fc:	2a1b      	cmp	r2, #27
 80067fe:	d83a      	bhi.n	8006876 <_realloc_r+0x2d6>
 8006800:	f105 0208 	add.w	r2, r5, #8
 8006804:	f100 0308 	add.w	r3, r0, #8
 8006808:	68a9      	ldr	r1, [r5, #8]
 800680a:	e710      	b.n	800662e <_realloc_r+0x8e>
 800680c:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006810:	f023 0303 	bic.w	r3, r3, #3
 8006814:	441e      	add	r6, r3
 8006816:	eb07 0906 	add.w	r9, r7, r6
 800681a:	e753      	b.n	80066c4 <_realloc_r+0x124>
 800681c:	4652      	mov	r2, sl
 800681e:	e749      	b.n	80066b4 <_realloc_r+0x114>
 8006820:	4629      	mov	r1, r5
 8006822:	4650      	mov	r0, sl
 8006824:	461e      	mov	r6, r3
 8006826:	465f      	mov	r7, fp
 8006828:	f7ff fb40 	bl	8005eac <memmove>
 800682c:	4655      	mov	r5, sl
 800682e:	e749      	b.n	80066c4 <_realloc_r+0x124>
 8006830:	4629      	mov	r1, r5
 8006832:	f7ff fb3b 	bl	8005eac <memmove>
 8006836:	e6ff      	b.n	8006638 <_realloc_r+0x98>
 8006838:	4427      	add	r7, r4
 800683a:	eba9 0904 	sub.w	r9, r9, r4
 800683e:	f049 0201 	orr.w	r2, r9, #1
 8006842:	609f      	str	r7, [r3, #8]
 8006844:	607a      	str	r2, [r7, #4]
 8006846:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800684a:	f003 0301 	and.w	r3, r3, #1
 800684e:	431c      	orrs	r4, r3
 8006850:	4640      	mov	r0, r8
 8006852:	f845 4c04 	str.w	r4, [r5, #-4]
 8006856:	f7ff fb93 	bl	8005f80 <__malloc_unlock>
 800685a:	46aa      	mov	sl, r5
 800685c:	e744      	b.n	80066e8 <_realloc_r+0x148>
 800685e:	f8cb 1010 	str.w	r1, [fp, #16]
 8006862:	68e9      	ldr	r1, [r5, #12]
 8006864:	f8cb 1014 	str.w	r1, [fp, #20]
 8006868:	2a24      	cmp	r2, #36	; 0x24
 800686a:	d010      	beq.n	800688e <_realloc_r+0x2ee>
 800686c:	6929      	ldr	r1, [r5, #16]
 800686e:	f10b 0218 	add.w	r2, fp, #24
 8006872:	3510      	adds	r5, #16
 8006874:	e71e      	b.n	80066b4 <_realloc_r+0x114>
 8006876:	68ab      	ldr	r3, [r5, #8]
 8006878:	6083      	str	r3, [r0, #8]
 800687a:	68eb      	ldr	r3, [r5, #12]
 800687c:	60c3      	str	r3, [r0, #12]
 800687e:	2a24      	cmp	r2, #36	; 0x24
 8006880:	d010      	beq.n	80068a4 <_realloc_r+0x304>
 8006882:	f105 0210 	add.w	r2, r5, #16
 8006886:	f100 0310 	add.w	r3, r0, #16
 800688a:	6929      	ldr	r1, [r5, #16]
 800688c:	e6cf      	b.n	800662e <_realloc_r+0x8e>
 800688e:	692a      	ldr	r2, [r5, #16]
 8006890:	f8cb 2018 	str.w	r2, [fp, #24]
 8006894:	696a      	ldr	r2, [r5, #20]
 8006896:	f8cb 201c 	str.w	r2, [fp, #28]
 800689a:	69a9      	ldr	r1, [r5, #24]
 800689c:	f10b 0220 	add.w	r2, fp, #32
 80068a0:	3518      	adds	r5, #24
 80068a2:	e707      	b.n	80066b4 <_realloc_r+0x114>
 80068a4:	692b      	ldr	r3, [r5, #16]
 80068a6:	6103      	str	r3, [r0, #16]
 80068a8:	696b      	ldr	r3, [r5, #20]
 80068aa:	6143      	str	r3, [r0, #20]
 80068ac:	69a9      	ldr	r1, [r5, #24]
 80068ae:	f105 0218 	add.w	r2, r5, #24
 80068b2:	f100 0318 	add.w	r3, r0, #24
 80068b6:	e6ba      	b.n	800662e <_realloc_r+0x8e>
 80068b8:	4652      	mov	r2, sl
 80068ba:	e76e      	b.n	800679a <_realloc_r+0x1fa>
 80068bc:	4629      	mov	r1, r5
 80068be:	4650      	mov	r0, sl
 80068c0:	9301      	str	r3, [sp, #4]
 80068c2:	f7ff faf3 	bl	8005eac <memmove>
 80068c6:	9b01      	ldr	r3, [sp, #4]
 80068c8:	e76c      	b.n	80067a4 <_realloc_r+0x204>
 80068ca:	f8cb 1010 	str.w	r1, [fp, #16]
 80068ce:	68e9      	ldr	r1, [r5, #12]
 80068d0:	f8cb 1014 	str.w	r1, [fp, #20]
 80068d4:	2a24      	cmp	r2, #36	; 0x24
 80068d6:	d004      	beq.n	80068e2 <_realloc_r+0x342>
 80068d8:	6929      	ldr	r1, [r5, #16]
 80068da:	f10b 0218 	add.w	r2, fp, #24
 80068de:	3510      	adds	r5, #16
 80068e0:	e75b      	b.n	800679a <_realloc_r+0x1fa>
 80068e2:	692a      	ldr	r2, [r5, #16]
 80068e4:	f8cb 2018 	str.w	r2, [fp, #24]
 80068e8:	696a      	ldr	r2, [r5, #20]
 80068ea:	f8cb 201c 	str.w	r2, [fp, #28]
 80068ee:	69a9      	ldr	r1, [r5, #24]
 80068f0:	f10b 0220 	add.w	r2, fp, #32
 80068f4:	3518      	adds	r5, #24
 80068f6:	e750      	b.n	800679a <_realloc_r+0x1fa>
 80068f8:	2000044c 	.word	0x2000044c

080068fc <frexp>:
 80068fc:	ec53 2b10 	vmov	r2, r3, d0
 8006900:	b570      	push	{r4, r5, r6, lr}
 8006902:	4e16      	ldr	r6, [pc, #88]	; (800695c <frexp+0x60>)
 8006904:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006908:	2500      	movs	r5, #0
 800690a:	42b1      	cmp	r1, r6
 800690c:	4604      	mov	r4, r0
 800690e:	6005      	str	r5, [r0, #0]
 8006910:	dc21      	bgt.n	8006956 <frexp+0x5a>
 8006912:	ee10 6a10 	vmov	r6, s0
 8006916:	430e      	orrs	r6, r1
 8006918:	d01d      	beq.n	8006956 <frexp+0x5a>
 800691a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800691e:	4618      	mov	r0, r3
 8006920:	da0c      	bge.n	800693c <frexp+0x40>
 8006922:	4619      	mov	r1, r3
 8006924:	2200      	movs	r2, #0
 8006926:	ee10 0a10 	vmov	r0, s0
 800692a:	4b0d      	ldr	r3, [pc, #52]	; (8006960 <frexp+0x64>)
 800692c:	f7fa f904 	bl	8000b38 <__aeabi_dmul>
 8006930:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006934:	4602      	mov	r2, r0
 8006936:	4608      	mov	r0, r1
 8006938:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 800693c:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006940:	1509      	asrs	r1, r1, #20
 8006942:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006946:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 800694a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 800694e:	4429      	add	r1, r5
 8006950:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006954:	6021      	str	r1, [r4, #0]
 8006956:	ec43 2b10 	vmov	d0, r2, r3
 800695a:	bd70      	pop	{r4, r5, r6, pc}
 800695c:	7fefffff 	.word	0x7fefffff
 8006960:	43500000 	.word	0x43500000

08006964 <_sbrk_r>:
 8006964:	b538      	push	{r3, r4, r5, lr}
 8006966:	4c07      	ldr	r4, [pc, #28]	; (8006984 <_sbrk_r+0x20>)
 8006968:	2300      	movs	r3, #0
 800696a:	4605      	mov	r5, r0
 800696c:	4608      	mov	r0, r1
 800696e:	6023      	str	r3, [r4, #0]
 8006970:	f7fb fc2a 	bl	80021c8 <_sbrk>
 8006974:	1c43      	adds	r3, r0, #1
 8006976:	d000      	beq.n	800697a <_sbrk_r+0x16>
 8006978:	bd38      	pop	{r3, r4, r5, pc}
 800697a:	6823      	ldr	r3, [r4, #0]
 800697c:	2b00      	cmp	r3, #0
 800697e:	d0fb      	beq.n	8006978 <_sbrk_r+0x14>
 8006980:	602b      	str	r3, [r5, #0]
 8006982:	bd38      	pop	{r3, r4, r5, pc}
 8006984:	20000b0c 	.word	0x20000b0c

08006988 <__sread>:
 8006988:	b510      	push	{r4, lr}
 800698a:	460c      	mov	r4, r1
 800698c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006990:	f000 fabc 	bl	8006f0c <_read_r>
 8006994:	2800      	cmp	r0, #0
 8006996:	db03      	blt.n	80069a0 <__sread+0x18>
 8006998:	6d23      	ldr	r3, [r4, #80]	; 0x50
 800699a:	4403      	add	r3, r0
 800699c:	6523      	str	r3, [r4, #80]	; 0x50
 800699e:	bd10      	pop	{r4, pc}
 80069a0:	89a3      	ldrh	r3, [r4, #12]
 80069a2:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 80069a6:	81a3      	strh	r3, [r4, #12]
 80069a8:	bd10      	pop	{r4, pc}
 80069aa:	bf00      	nop

080069ac <__swrite>:
 80069ac:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80069b0:	4616      	mov	r6, r2
 80069b2:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 80069b6:	461f      	mov	r7, r3
 80069b8:	05d3      	lsls	r3, r2, #23
 80069ba:	460c      	mov	r4, r1
 80069bc:	4605      	mov	r5, r0
 80069be:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069c2:	d507      	bpl.n	80069d4 <__swrite+0x28>
 80069c4:	2200      	movs	r2, #0
 80069c6:	2302      	movs	r3, #2
 80069c8:	f000 fa74 	bl	8006eb4 <_lseek_r>
 80069cc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80069d0:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80069d4:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 80069d8:	81a2      	strh	r2, [r4, #12]
 80069da:	463b      	mov	r3, r7
 80069dc:	4632      	mov	r2, r6
 80069de:	4628      	mov	r0, r5
 80069e0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80069e4:	f000 b88c 	b.w	8006b00 <_write_r>

080069e8 <__sseek>:
 80069e8:	b510      	push	{r4, lr}
 80069ea:	460c      	mov	r4, r1
 80069ec:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069f0:	f000 fa60 	bl	8006eb4 <_lseek_r>
 80069f4:	89a3      	ldrh	r3, [r4, #12]
 80069f6:	1c42      	adds	r2, r0, #1
 80069f8:	bf0e      	itee	eq
 80069fa:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80069fe:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006a02:	6520      	strne	r0, [r4, #80]	; 0x50
 8006a04:	81a3      	strh	r3, [r4, #12]
 8006a06:	bd10      	pop	{r4, pc}

08006a08 <__sclose>:
 8006a08:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a0c:	f000 b922 	b.w	8006c54 <_close_r>

08006a10 <strncpy>:
 8006a10:	ea40 0301 	orr.w	r3, r0, r1
 8006a14:	079b      	lsls	r3, r3, #30
 8006a16:	b470      	push	{r4, r5, r6}
 8006a18:	d12a      	bne.n	8006a70 <strncpy+0x60>
 8006a1a:	2a03      	cmp	r2, #3
 8006a1c:	d928      	bls.n	8006a70 <strncpy+0x60>
 8006a1e:	460c      	mov	r4, r1
 8006a20:	4603      	mov	r3, r0
 8006a22:	4621      	mov	r1, r4
 8006a24:	f854 6b04 	ldr.w	r6, [r4], #4
 8006a28:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006a2c:	ea25 0506 	bic.w	r5, r5, r6
 8006a30:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006a34:	d106      	bne.n	8006a44 <strncpy+0x34>
 8006a36:	3a04      	subs	r2, #4
 8006a38:	2a03      	cmp	r2, #3
 8006a3a:	f843 6b04 	str.w	r6, [r3], #4
 8006a3e:	4621      	mov	r1, r4
 8006a40:	d8ef      	bhi.n	8006a22 <strncpy+0x12>
 8006a42:	b19a      	cbz	r2, 8006a6c <strncpy+0x5c>
 8006a44:	780c      	ldrb	r4, [r1, #0]
 8006a46:	701c      	strb	r4, [r3, #0]
 8006a48:	3a01      	subs	r2, #1
 8006a4a:	3301      	adds	r3, #1
 8006a4c:	b13c      	cbz	r4, 8006a5e <strncpy+0x4e>
 8006a4e:	b16a      	cbz	r2, 8006a6c <strncpy+0x5c>
 8006a50:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006a54:	f803 4b01 	strb.w	r4, [r3], #1
 8006a58:	3a01      	subs	r2, #1
 8006a5a:	2c00      	cmp	r4, #0
 8006a5c:	d1f7      	bne.n	8006a4e <strncpy+0x3e>
 8006a5e:	b12a      	cbz	r2, 8006a6c <strncpy+0x5c>
 8006a60:	441a      	add	r2, r3
 8006a62:	2100      	movs	r1, #0
 8006a64:	f803 1b01 	strb.w	r1, [r3], #1
 8006a68:	4293      	cmp	r3, r2
 8006a6a:	d1fb      	bne.n	8006a64 <strncpy+0x54>
 8006a6c:	bc70      	pop	{r4, r5, r6}
 8006a6e:	4770      	bx	lr
 8006a70:	4603      	mov	r3, r0
 8006a72:	e7e6      	b.n	8006a42 <strncpy+0x32>

08006a74 <__sprint_r.part.0>:
 8006a74:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006a78:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006a7a:	049c      	lsls	r4, r3, #18
 8006a7c:	4692      	mov	sl, r2
 8006a7e:	d52d      	bpl.n	8006adc <__sprint_r.part.0+0x68>
 8006a80:	6893      	ldr	r3, [r2, #8]
 8006a82:	6812      	ldr	r2, [r2, #0]
 8006a84:	b343      	cbz	r3, 8006ad8 <__sprint_r.part.0+0x64>
 8006a86:	460e      	mov	r6, r1
 8006a88:	4607      	mov	r7, r0
 8006a8a:	f102 0908 	add.w	r9, r2, #8
 8006a8e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006a92:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006a96:	d015      	beq.n	8006ac4 <__sprint_r.part.0+0x50>
 8006a98:	3d04      	subs	r5, #4
 8006a9a:	2400      	movs	r4, #0
 8006a9c:	e001      	b.n	8006aa2 <__sprint_r.part.0+0x2e>
 8006a9e:	45a0      	cmp	r8, r4
 8006aa0:	d00e      	beq.n	8006ac0 <__sprint_r.part.0+0x4c>
 8006aa2:	4632      	mov	r2, r6
 8006aa4:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006aa8:	4638      	mov	r0, r7
 8006aaa:	f000 f99d 	bl	8006de8 <_fputwc_r>
 8006aae:	1c43      	adds	r3, r0, #1
 8006ab0:	f104 0401 	add.w	r4, r4, #1
 8006ab4:	d1f3      	bne.n	8006a9e <__sprint_r.part.0+0x2a>
 8006ab6:	2300      	movs	r3, #0
 8006ab8:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006abc:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ac0:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006ac4:	f02b 0b03 	bic.w	fp, fp, #3
 8006ac8:	eba3 030b 	sub.w	r3, r3, fp
 8006acc:	f8ca 3008 	str.w	r3, [sl, #8]
 8006ad0:	f109 0908 	add.w	r9, r9, #8
 8006ad4:	2b00      	cmp	r3, #0
 8006ad6:	d1da      	bne.n	8006a8e <__sprint_r.part.0+0x1a>
 8006ad8:	2000      	movs	r0, #0
 8006ada:	e7ec      	b.n	8006ab6 <__sprint_r.part.0+0x42>
 8006adc:	f7fe fd0c 	bl	80054f8 <__sfvwrite_r>
 8006ae0:	2300      	movs	r3, #0
 8006ae2:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006ae6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006aea:	bf00      	nop

08006aec <__sprint_r>:
 8006aec:	6893      	ldr	r3, [r2, #8]
 8006aee:	b10b      	cbz	r3, 8006af4 <__sprint_r+0x8>
 8006af0:	f7ff bfc0 	b.w	8006a74 <__sprint_r.part.0>
 8006af4:	b410      	push	{r4}
 8006af6:	4618      	mov	r0, r3
 8006af8:	6053      	str	r3, [r2, #4]
 8006afa:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006afe:	4770      	bx	lr

08006b00 <_write_r>:
 8006b00:	b570      	push	{r4, r5, r6, lr}
 8006b02:	460d      	mov	r5, r1
 8006b04:	4c08      	ldr	r4, [pc, #32]	; (8006b28 <_write_r+0x28>)
 8006b06:	4611      	mov	r1, r2
 8006b08:	4606      	mov	r6, r0
 8006b0a:	461a      	mov	r2, r3
 8006b0c:	4628      	mov	r0, r5
 8006b0e:	2300      	movs	r3, #0
 8006b10:	6023      	str	r3, [r4, #0]
 8006b12:	f7fb fb3b 	bl	800218c <_write>
 8006b16:	1c43      	adds	r3, r0, #1
 8006b18:	d000      	beq.n	8006b1c <_write_r+0x1c>
 8006b1a:	bd70      	pop	{r4, r5, r6, pc}
 8006b1c:	6823      	ldr	r3, [r4, #0]
 8006b1e:	2b00      	cmp	r3, #0
 8006b20:	d0fb      	beq.n	8006b1a <_write_r+0x1a>
 8006b22:	6033      	str	r3, [r6, #0]
 8006b24:	bd70      	pop	{r4, r5, r6, pc}
 8006b26:	bf00      	nop
 8006b28:	20000b0c 	.word	0x20000b0c

08006b2c <__register_exitproc>:
 8006b2c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006b30:	4d2b      	ldr	r5, [pc, #172]	; (8006be0 <__register_exitproc+0xb4>)
 8006b32:	4606      	mov	r6, r0
 8006b34:	6828      	ldr	r0, [r5, #0]
 8006b36:	4698      	mov	r8, r3
 8006b38:	460f      	mov	r7, r1
 8006b3a:	4691      	mov	r9, r2
 8006b3c:	f7fe fe96 	bl	800586c <__retarget_lock_acquire_recursive>
 8006b40:	4b28      	ldr	r3, [pc, #160]	; (8006be4 <__register_exitproc+0xb8>)
 8006b42:	681c      	ldr	r4, [r3, #0]
 8006b44:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006b48:	2b00      	cmp	r3, #0
 8006b4a:	d03d      	beq.n	8006bc8 <__register_exitproc+0x9c>
 8006b4c:	685a      	ldr	r2, [r3, #4]
 8006b4e:	2a1f      	cmp	r2, #31
 8006b50:	dc0d      	bgt.n	8006b6e <__register_exitproc+0x42>
 8006b52:	f102 0c01 	add.w	ip, r2, #1
 8006b56:	bb16      	cbnz	r6, 8006b9e <__register_exitproc+0x72>
 8006b58:	3202      	adds	r2, #2
 8006b5a:	f8c3 c004 	str.w	ip, [r3, #4]
 8006b5e:	6828      	ldr	r0, [r5, #0]
 8006b60:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006b64:	f7fe fe84 	bl	8005870 <__retarget_lock_release_recursive>
 8006b68:	2000      	movs	r0, #0
 8006b6a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006b6e:	4b1e      	ldr	r3, [pc, #120]	; (8006be8 <__register_exitproc+0xbc>)
 8006b70:	b37b      	cbz	r3, 8006bd2 <__register_exitproc+0xa6>
 8006b72:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006b76:	f3af 8000 	nop.w
 8006b7a:	4603      	mov	r3, r0
 8006b7c:	b348      	cbz	r0, 8006bd2 <__register_exitproc+0xa6>
 8006b7e:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006b82:	2100      	movs	r1, #0
 8006b84:	e9c0 2100 	strd	r2, r1, [r0]
 8006b88:	f04f 0c01 	mov.w	ip, #1
 8006b8c:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006b90:	460a      	mov	r2, r1
 8006b92:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006b96:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006b9a:	2e00      	cmp	r6, #0
 8006b9c:	d0dc      	beq.n	8006b58 <__register_exitproc+0x2c>
 8006b9e:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006ba2:	2401      	movs	r4, #1
 8006ba4:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006ba8:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006bac:	4094      	lsls	r4, r2
 8006bae:	4320      	orrs	r0, r4
 8006bb0:	2e02      	cmp	r6, #2
 8006bb2:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006bb6:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006bba:	d1cd      	bne.n	8006b58 <__register_exitproc+0x2c>
 8006bbc:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006bc0:	430c      	orrs	r4, r1
 8006bc2:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006bc6:	e7c7      	b.n	8006b58 <__register_exitproc+0x2c>
 8006bc8:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006bcc:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006bd0:	e7bc      	b.n	8006b4c <__register_exitproc+0x20>
 8006bd2:	6828      	ldr	r0, [r5, #0]
 8006bd4:	f7fe fe4c 	bl	8005870 <__retarget_lock_release_recursive>
 8006bd8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006bdc:	e7c5      	b.n	8006b6a <__register_exitproc+0x3e>
 8006bde:	bf00      	nop
 8006be0:	20000448 	.word	0x20000448
 8006be4:	08007184 	.word	0x08007184
 8006be8:	00000000 	.word	0x00000000

08006bec <_calloc_r>:
 8006bec:	b510      	push	{r4, lr}
 8006bee:	fb02 f101 	mul.w	r1, r2, r1
 8006bf2:	f7fe feb7 	bl	8005964 <_malloc_r>
 8006bf6:	4604      	mov	r4, r0
 8006bf8:	b1d8      	cbz	r0, 8006c32 <_calloc_r+0x46>
 8006bfa:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006bfe:	f022 0203 	bic.w	r2, r2, #3
 8006c02:	3a04      	subs	r2, #4
 8006c04:	2a24      	cmp	r2, #36	; 0x24
 8006c06:	d81d      	bhi.n	8006c44 <_calloc_r+0x58>
 8006c08:	2a13      	cmp	r2, #19
 8006c0a:	d914      	bls.n	8006c36 <_calloc_r+0x4a>
 8006c0c:	2300      	movs	r3, #0
 8006c0e:	2a1b      	cmp	r2, #27
 8006c10:	e9c0 3300 	strd	r3, r3, [r0]
 8006c14:	d91b      	bls.n	8006c4e <_calloc_r+0x62>
 8006c16:	2a24      	cmp	r2, #36	; 0x24
 8006c18:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006c1c:	bf0a      	itet	eq
 8006c1e:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006c22:	f100 0210 	addne.w	r2, r0, #16
 8006c26:	f100 0218 	addeq.w	r2, r0, #24
 8006c2a:	2300      	movs	r3, #0
 8006c2c:	e9c2 3300 	strd	r3, r3, [r2]
 8006c30:	6093      	str	r3, [r2, #8]
 8006c32:	4620      	mov	r0, r4
 8006c34:	bd10      	pop	{r4, pc}
 8006c36:	4602      	mov	r2, r0
 8006c38:	2300      	movs	r3, #0
 8006c3a:	e9c2 3300 	strd	r3, r3, [r2]
 8006c3e:	6093      	str	r3, [r2, #8]
 8006c40:	4620      	mov	r0, r4
 8006c42:	bd10      	pop	{r4, pc}
 8006c44:	2100      	movs	r1, #0
 8006c46:	f7fb fb6d 	bl	8002324 <memset>
 8006c4a:	4620      	mov	r0, r4
 8006c4c:	bd10      	pop	{r4, pc}
 8006c4e:	f100 0208 	add.w	r2, r0, #8
 8006c52:	e7f1      	b.n	8006c38 <_calloc_r+0x4c>

08006c54 <_close_r>:
 8006c54:	b538      	push	{r3, r4, r5, lr}
 8006c56:	4c07      	ldr	r4, [pc, #28]	; (8006c74 <_close_r+0x20>)
 8006c58:	2300      	movs	r3, #0
 8006c5a:	4605      	mov	r5, r0
 8006c5c:	4608      	mov	r0, r1
 8006c5e:	6023      	str	r3, [r4, #0]
 8006c60:	f7fb fad5 	bl	800220e <_close>
 8006c64:	1c43      	adds	r3, r0, #1
 8006c66:	d000      	beq.n	8006c6a <_close_r+0x16>
 8006c68:	bd38      	pop	{r3, r4, r5, pc}
 8006c6a:	6823      	ldr	r3, [r4, #0]
 8006c6c:	2b00      	cmp	r3, #0
 8006c6e:	d0fb      	beq.n	8006c68 <_close_r+0x14>
 8006c70:	602b      	str	r3, [r5, #0]
 8006c72:	bd38      	pop	{r3, r4, r5, pc}
 8006c74:	20000b0c 	.word	0x20000b0c

08006c78 <_fclose_r>:
 8006c78:	b570      	push	{r4, r5, r6, lr}
 8006c7a:	2900      	cmp	r1, #0
 8006c7c:	d048      	beq.n	8006d10 <_fclose_r+0x98>
 8006c7e:	4605      	mov	r5, r0
 8006c80:	460c      	mov	r4, r1
 8006c82:	b110      	cbz	r0, 8006c8a <_fclose_r+0x12>
 8006c84:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006c86:	2b00      	cmp	r3, #0
 8006c88:	d048      	beq.n	8006d1c <_fclose_r+0xa4>
 8006c8a:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c8c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c90:	07d0      	lsls	r0, r2, #31
 8006c92:	d440      	bmi.n	8006d16 <_fclose_r+0x9e>
 8006c94:	0599      	lsls	r1, r3, #22
 8006c96:	d530      	bpl.n	8006cfa <_fclose_r+0x82>
 8006c98:	4621      	mov	r1, r4
 8006c9a:	4628      	mov	r0, r5
 8006c9c:	f7fe f990 	bl	8004fc0 <__sflush_r>
 8006ca0:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006ca2:	4606      	mov	r6, r0
 8006ca4:	b133      	cbz	r3, 8006cb4 <_fclose_r+0x3c>
 8006ca6:	69e1      	ldr	r1, [r4, #28]
 8006ca8:	4628      	mov	r0, r5
 8006caa:	4798      	blx	r3
 8006cac:	2800      	cmp	r0, #0
 8006cae:	bfb8      	it	lt
 8006cb0:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006cb4:	89a3      	ldrh	r3, [r4, #12]
 8006cb6:	061a      	lsls	r2, r3, #24
 8006cb8:	d43c      	bmi.n	8006d34 <_fclose_r+0xbc>
 8006cba:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006cbc:	b141      	cbz	r1, 8006cd0 <_fclose_r+0x58>
 8006cbe:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006cc2:	4299      	cmp	r1, r3
 8006cc4:	d002      	beq.n	8006ccc <_fclose_r+0x54>
 8006cc6:	4628      	mov	r0, r5
 8006cc8:	f7fe fb22 	bl	8005310 <_free_r>
 8006ccc:	2300      	movs	r3, #0
 8006cce:	6323      	str	r3, [r4, #48]	; 0x30
 8006cd0:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006cd2:	b121      	cbz	r1, 8006cde <_fclose_r+0x66>
 8006cd4:	4628      	mov	r0, r5
 8006cd6:	f7fe fb1b 	bl	8005310 <_free_r>
 8006cda:	2300      	movs	r3, #0
 8006cdc:	6463      	str	r3, [r4, #68]	; 0x44
 8006cde:	f7fe faa1 	bl	8005224 <__sfp_lock_acquire>
 8006ce2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006ce4:	2200      	movs	r2, #0
 8006ce6:	07db      	lsls	r3, r3, #31
 8006ce8:	81a2      	strh	r2, [r4, #12]
 8006cea:	d51f      	bpl.n	8006d2c <_fclose_r+0xb4>
 8006cec:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cee:	f7fe fdbb 	bl	8005868 <__retarget_lock_close_recursive>
 8006cf2:	f7fe fa9d 	bl	8005230 <__sfp_lock_release>
 8006cf6:	4630      	mov	r0, r6
 8006cf8:	bd70      	pop	{r4, r5, r6, pc}
 8006cfa:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cfc:	f7fe fdb6 	bl	800586c <__retarget_lock_acquire_recursive>
 8006d00:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d04:	2b00      	cmp	r3, #0
 8006d06:	d1c7      	bne.n	8006c98 <_fclose_r+0x20>
 8006d08:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006d0a:	f016 0601 	ands.w	r6, r6, #1
 8006d0e:	d016      	beq.n	8006d3e <_fclose_r+0xc6>
 8006d10:	2600      	movs	r6, #0
 8006d12:	4630      	mov	r0, r6
 8006d14:	bd70      	pop	{r4, r5, r6, pc}
 8006d16:	2b00      	cmp	r3, #0
 8006d18:	d0fa      	beq.n	8006d10 <_fclose_r+0x98>
 8006d1a:	e7bd      	b.n	8006c98 <_fclose_r+0x20>
 8006d1c:	f7fe fa56 	bl	80051cc <__sinit>
 8006d20:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006d22:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d26:	07d0      	lsls	r0, r2, #31
 8006d28:	d4f5      	bmi.n	8006d16 <_fclose_r+0x9e>
 8006d2a:	e7b3      	b.n	8006c94 <_fclose_r+0x1c>
 8006d2c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d2e:	f7fe fd9f 	bl	8005870 <__retarget_lock_release_recursive>
 8006d32:	e7db      	b.n	8006cec <_fclose_r+0x74>
 8006d34:	6921      	ldr	r1, [r4, #16]
 8006d36:	4628      	mov	r0, r5
 8006d38:	f7fe faea 	bl	8005310 <_free_r>
 8006d3c:	e7bd      	b.n	8006cba <_fclose_r+0x42>
 8006d3e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d40:	f7fe fd96 	bl	8005870 <__retarget_lock_release_recursive>
 8006d44:	4630      	mov	r0, r6
 8006d46:	bd70      	pop	{r4, r5, r6, pc}

08006d48 <__fputwc>:
 8006d48:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006d4c:	b082      	sub	sp, #8
 8006d4e:	4681      	mov	r9, r0
 8006d50:	4688      	mov	r8, r1
 8006d52:	4614      	mov	r4, r2
 8006d54:	f000 f8a0 	bl	8006e98 <__locale_mb_cur_max>
 8006d58:	2801      	cmp	r0, #1
 8006d5a:	d103      	bne.n	8006d64 <__fputwc+0x1c>
 8006d5c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006d60:	2bfe      	cmp	r3, #254	; 0xfe
 8006d62:	d933      	bls.n	8006dcc <__fputwc+0x84>
 8006d64:	4642      	mov	r2, r8
 8006d66:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006d6a:	a901      	add	r1, sp, #4
 8006d6c:	4648      	mov	r0, r9
 8006d6e:	f000 f93b 	bl	8006fe8 <_wcrtomb_r>
 8006d72:	1c42      	adds	r2, r0, #1
 8006d74:	4606      	mov	r6, r0
 8006d76:	d02f      	beq.n	8006dd8 <__fputwc+0x90>
 8006d78:	b320      	cbz	r0, 8006dc4 <__fputwc+0x7c>
 8006d7a:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006d7e:	2500      	movs	r5, #0
 8006d80:	f10d 0a04 	add.w	sl, sp, #4
 8006d84:	e009      	b.n	8006d9a <__fputwc+0x52>
 8006d86:	6823      	ldr	r3, [r4, #0]
 8006d88:	1c5a      	adds	r2, r3, #1
 8006d8a:	6022      	str	r2, [r4, #0]
 8006d8c:	f883 c000 	strb.w	ip, [r3]
 8006d90:	3501      	adds	r5, #1
 8006d92:	42b5      	cmp	r5, r6
 8006d94:	d216      	bcs.n	8006dc4 <__fputwc+0x7c>
 8006d96:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006d9a:	68a3      	ldr	r3, [r4, #8]
 8006d9c:	3b01      	subs	r3, #1
 8006d9e:	2b00      	cmp	r3, #0
 8006da0:	60a3      	str	r3, [r4, #8]
 8006da2:	daf0      	bge.n	8006d86 <__fputwc+0x3e>
 8006da4:	69a7      	ldr	r7, [r4, #24]
 8006da6:	42bb      	cmp	r3, r7
 8006da8:	4661      	mov	r1, ip
 8006daa:	4622      	mov	r2, r4
 8006dac:	4648      	mov	r0, r9
 8006dae:	db02      	blt.n	8006db6 <__fputwc+0x6e>
 8006db0:	f1bc 0f0a 	cmp.w	ip, #10
 8006db4:	d1e7      	bne.n	8006d86 <__fputwc+0x3e>
 8006db6:	f000 f8bf 	bl	8006f38 <__swbuf_r>
 8006dba:	1c43      	adds	r3, r0, #1
 8006dbc:	d1e8      	bne.n	8006d90 <__fputwc+0x48>
 8006dbe:	b002      	add	sp, #8
 8006dc0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006dc4:	4640      	mov	r0, r8
 8006dc6:	b002      	add	sp, #8
 8006dc8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006dcc:	fa5f fc88 	uxtb.w	ip, r8
 8006dd0:	4606      	mov	r6, r0
 8006dd2:	f88d c004 	strb.w	ip, [sp, #4]
 8006dd6:	e7d2      	b.n	8006d7e <__fputwc+0x36>
 8006dd8:	89a3      	ldrh	r3, [r4, #12]
 8006dda:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006dde:	81a3      	strh	r3, [r4, #12]
 8006de0:	b002      	add	sp, #8
 8006de2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006de6:	bf00      	nop

08006de8 <_fputwc_r>:
 8006de8:	b530      	push	{r4, r5, lr}
 8006dea:	4605      	mov	r5, r0
 8006dec:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006dee:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006df2:	07c0      	lsls	r0, r0, #31
 8006df4:	4614      	mov	r4, r2
 8006df6:	b083      	sub	sp, #12
 8006df8:	b29a      	uxth	r2, r3
 8006dfa:	d401      	bmi.n	8006e00 <_fputwc_r+0x18>
 8006dfc:	0590      	lsls	r0, r2, #22
 8006dfe:	d51c      	bpl.n	8006e3a <_fputwc_r+0x52>
 8006e00:	0490      	lsls	r0, r2, #18
 8006e02:	d406      	bmi.n	8006e12 <_fputwc_r+0x2a>
 8006e04:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006e06:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006e0a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006e0e:	81a3      	strh	r3, [r4, #12]
 8006e10:	6662      	str	r2, [r4, #100]	; 0x64
 8006e12:	4628      	mov	r0, r5
 8006e14:	4622      	mov	r2, r4
 8006e16:	f7ff ff97 	bl	8006d48 <__fputwc>
 8006e1a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006e1c:	07da      	lsls	r2, r3, #31
 8006e1e:	4605      	mov	r5, r0
 8006e20:	d402      	bmi.n	8006e28 <_fputwc_r+0x40>
 8006e22:	89a3      	ldrh	r3, [r4, #12]
 8006e24:	059b      	lsls	r3, r3, #22
 8006e26:	d502      	bpl.n	8006e2e <_fputwc_r+0x46>
 8006e28:	4628      	mov	r0, r5
 8006e2a:	b003      	add	sp, #12
 8006e2c:	bd30      	pop	{r4, r5, pc}
 8006e2e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e30:	f7fe fd1e 	bl	8005870 <__retarget_lock_release_recursive>
 8006e34:	4628      	mov	r0, r5
 8006e36:	b003      	add	sp, #12
 8006e38:	bd30      	pop	{r4, r5, pc}
 8006e3a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e3c:	9101      	str	r1, [sp, #4]
 8006e3e:	f7fe fd15 	bl	800586c <__retarget_lock_acquire_recursive>
 8006e42:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006e46:	9901      	ldr	r1, [sp, #4]
 8006e48:	b29a      	uxth	r2, r3
 8006e4a:	e7d9      	b.n	8006e00 <_fputwc_r+0x18>

08006e4c <_fstat_r>:
 8006e4c:	b538      	push	{r3, r4, r5, lr}
 8006e4e:	460b      	mov	r3, r1
 8006e50:	4c07      	ldr	r4, [pc, #28]	; (8006e70 <_fstat_r+0x24>)
 8006e52:	4605      	mov	r5, r0
 8006e54:	4611      	mov	r1, r2
 8006e56:	4618      	mov	r0, r3
 8006e58:	2300      	movs	r3, #0
 8006e5a:	6023      	str	r3, [r4, #0]
 8006e5c:	f7fb f9da 	bl	8002214 <_fstat>
 8006e60:	1c43      	adds	r3, r0, #1
 8006e62:	d000      	beq.n	8006e66 <_fstat_r+0x1a>
 8006e64:	bd38      	pop	{r3, r4, r5, pc}
 8006e66:	6823      	ldr	r3, [r4, #0]
 8006e68:	2b00      	cmp	r3, #0
 8006e6a:	d0fb      	beq.n	8006e64 <_fstat_r+0x18>
 8006e6c:	602b      	str	r3, [r5, #0]
 8006e6e:	bd38      	pop	{r3, r4, r5, pc}
 8006e70:	20000b0c 	.word	0x20000b0c

08006e74 <_isatty_r>:
 8006e74:	b538      	push	{r3, r4, r5, lr}
 8006e76:	4c07      	ldr	r4, [pc, #28]	; (8006e94 <_isatty_r+0x20>)
 8006e78:	2300      	movs	r3, #0
 8006e7a:	4605      	mov	r5, r0
 8006e7c:	4608      	mov	r0, r1
 8006e7e:	6023      	str	r3, [r4, #0]
 8006e80:	f7fb f9ce 	bl	8002220 <_isatty>
 8006e84:	1c43      	adds	r3, r0, #1
 8006e86:	d000      	beq.n	8006e8a <_isatty_r+0x16>
 8006e88:	bd38      	pop	{r3, r4, r5, pc}
 8006e8a:	6823      	ldr	r3, [r4, #0]
 8006e8c:	2b00      	cmp	r3, #0
 8006e8e:	d0fb      	beq.n	8006e88 <_isatty_r+0x14>
 8006e90:	602b      	str	r3, [r5, #0]
 8006e92:	bd38      	pop	{r3, r4, r5, pc}
 8006e94:	20000b0c 	.word	0x20000b0c

08006e98 <__locale_mb_cur_max>:
 8006e98:	4b04      	ldr	r3, [pc, #16]	; (8006eac <__locale_mb_cur_max+0x14>)
 8006e9a:	4a05      	ldr	r2, [pc, #20]	; (8006eb0 <__locale_mb_cur_max+0x18>)
 8006e9c:	681b      	ldr	r3, [r3, #0]
 8006e9e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006ea0:	2b00      	cmp	r3, #0
 8006ea2:	bf08      	it	eq
 8006ea4:	4613      	moveq	r3, r2
 8006ea6:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006eaa:	4770      	bx	lr
 8006eac:	20000018 	.word	0x20000018
 8006eb0:	2000085c 	.word	0x2000085c

08006eb4 <_lseek_r>:
 8006eb4:	b570      	push	{r4, r5, r6, lr}
 8006eb6:	460d      	mov	r5, r1
 8006eb8:	4c08      	ldr	r4, [pc, #32]	; (8006edc <_lseek_r+0x28>)
 8006eba:	4611      	mov	r1, r2
 8006ebc:	4606      	mov	r6, r0
 8006ebe:	461a      	mov	r2, r3
 8006ec0:	4628      	mov	r0, r5
 8006ec2:	2300      	movs	r3, #0
 8006ec4:	6023      	str	r3, [r4, #0]
 8006ec6:	f7fb f9ad 	bl	8002224 <_lseek>
 8006eca:	1c43      	adds	r3, r0, #1
 8006ecc:	d000      	beq.n	8006ed0 <_lseek_r+0x1c>
 8006ece:	bd70      	pop	{r4, r5, r6, pc}
 8006ed0:	6823      	ldr	r3, [r4, #0]
 8006ed2:	2b00      	cmp	r3, #0
 8006ed4:	d0fb      	beq.n	8006ece <_lseek_r+0x1a>
 8006ed6:	6033      	str	r3, [r6, #0]
 8006ed8:	bd70      	pop	{r4, r5, r6, pc}
 8006eda:	bf00      	nop
 8006edc:	20000b0c 	.word	0x20000b0c

08006ee0 <__ascii_mbtowc>:
 8006ee0:	b082      	sub	sp, #8
 8006ee2:	b149      	cbz	r1, 8006ef8 <__ascii_mbtowc+0x18>
 8006ee4:	b15a      	cbz	r2, 8006efe <__ascii_mbtowc+0x1e>
 8006ee6:	b16b      	cbz	r3, 8006f04 <__ascii_mbtowc+0x24>
 8006ee8:	7813      	ldrb	r3, [r2, #0]
 8006eea:	600b      	str	r3, [r1, #0]
 8006eec:	7812      	ldrb	r2, [r2, #0]
 8006eee:	1c10      	adds	r0, r2, #0
 8006ef0:	bf18      	it	ne
 8006ef2:	2001      	movne	r0, #1
 8006ef4:	b002      	add	sp, #8
 8006ef6:	4770      	bx	lr
 8006ef8:	a901      	add	r1, sp, #4
 8006efa:	2a00      	cmp	r2, #0
 8006efc:	d1f3      	bne.n	8006ee6 <__ascii_mbtowc+0x6>
 8006efe:	4610      	mov	r0, r2
 8006f00:	b002      	add	sp, #8
 8006f02:	4770      	bx	lr
 8006f04:	f06f 0001 	mvn.w	r0, #1
 8006f08:	e7f4      	b.n	8006ef4 <__ascii_mbtowc+0x14>
 8006f0a:	bf00      	nop

08006f0c <_read_r>:
 8006f0c:	b570      	push	{r4, r5, r6, lr}
 8006f0e:	460d      	mov	r5, r1
 8006f10:	4c08      	ldr	r4, [pc, #32]	; (8006f34 <_read_r+0x28>)
 8006f12:	4611      	mov	r1, r2
 8006f14:	4606      	mov	r6, r0
 8006f16:	461a      	mov	r2, r3
 8006f18:	4628      	mov	r0, r5
 8006f1a:	2300      	movs	r3, #0
 8006f1c:	6023      	str	r3, [r4, #0]
 8006f1e:	f7fb f915 	bl	800214c <_read>
 8006f22:	1c43      	adds	r3, r0, #1
 8006f24:	d000      	beq.n	8006f28 <_read_r+0x1c>
 8006f26:	bd70      	pop	{r4, r5, r6, pc}
 8006f28:	6823      	ldr	r3, [r4, #0]
 8006f2a:	2b00      	cmp	r3, #0
 8006f2c:	d0fb      	beq.n	8006f26 <_read_r+0x1a>
 8006f2e:	6033      	str	r3, [r6, #0]
 8006f30:	bd70      	pop	{r4, r5, r6, pc}
 8006f32:	bf00      	nop
 8006f34:	20000b0c 	.word	0x20000b0c

08006f38 <__swbuf_r>:
 8006f38:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006f3a:	460d      	mov	r5, r1
 8006f3c:	4614      	mov	r4, r2
 8006f3e:	4606      	mov	r6, r0
 8006f40:	b110      	cbz	r0, 8006f48 <__swbuf_r+0x10>
 8006f42:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006f44:	2b00      	cmp	r3, #0
 8006f46:	d043      	beq.n	8006fd0 <__swbuf_r+0x98>
 8006f48:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f4c:	69a3      	ldr	r3, [r4, #24]
 8006f4e:	60a3      	str	r3, [r4, #8]
 8006f50:	b291      	uxth	r1, r2
 8006f52:	0708      	lsls	r0, r1, #28
 8006f54:	d51b      	bpl.n	8006f8e <__swbuf_r+0x56>
 8006f56:	6923      	ldr	r3, [r4, #16]
 8006f58:	b1cb      	cbz	r3, 8006f8e <__swbuf_r+0x56>
 8006f5a:	b2ed      	uxtb	r5, r5
 8006f5c:	0489      	lsls	r1, r1, #18
 8006f5e:	462f      	mov	r7, r5
 8006f60:	d522      	bpl.n	8006fa8 <__swbuf_r+0x70>
 8006f62:	6822      	ldr	r2, [r4, #0]
 8006f64:	6961      	ldr	r1, [r4, #20]
 8006f66:	1ad3      	subs	r3, r2, r3
 8006f68:	4299      	cmp	r1, r3
 8006f6a:	dd29      	ble.n	8006fc0 <__swbuf_r+0x88>
 8006f6c:	3301      	adds	r3, #1
 8006f6e:	68a1      	ldr	r1, [r4, #8]
 8006f70:	1c50      	adds	r0, r2, #1
 8006f72:	3901      	subs	r1, #1
 8006f74:	60a1      	str	r1, [r4, #8]
 8006f76:	6020      	str	r0, [r4, #0]
 8006f78:	7015      	strb	r5, [r2, #0]
 8006f7a:	6962      	ldr	r2, [r4, #20]
 8006f7c:	429a      	cmp	r2, r3
 8006f7e:	d02a      	beq.n	8006fd6 <__swbuf_r+0x9e>
 8006f80:	89a3      	ldrh	r3, [r4, #12]
 8006f82:	07db      	lsls	r3, r3, #31
 8006f84:	d501      	bpl.n	8006f8a <__swbuf_r+0x52>
 8006f86:	2d0a      	cmp	r5, #10
 8006f88:	d025      	beq.n	8006fd6 <__swbuf_r+0x9e>
 8006f8a:	4638      	mov	r0, r7
 8006f8c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006f8e:	4621      	mov	r1, r4
 8006f90:	4630      	mov	r0, r6
 8006f92:	f7fc fffd 	bl	8003f90 <__swsetup_r>
 8006f96:	bb20      	cbnz	r0, 8006fe2 <__swbuf_r+0xaa>
 8006f98:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f9c:	6923      	ldr	r3, [r4, #16]
 8006f9e:	b291      	uxth	r1, r2
 8006fa0:	b2ed      	uxtb	r5, r5
 8006fa2:	0489      	lsls	r1, r1, #18
 8006fa4:	462f      	mov	r7, r5
 8006fa6:	d4dc      	bmi.n	8006f62 <__swbuf_r+0x2a>
 8006fa8:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006faa:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006fae:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006fb2:	81a2      	strh	r2, [r4, #12]
 8006fb4:	6822      	ldr	r2, [r4, #0]
 8006fb6:	6661      	str	r1, [r4, #100]	; 0x64
 8006fb8:	6961      	ldr	r1, [r4, #20]
 8006fba:	1ad3      	subs	r3, r2, r3
 8006fbc:	4299      	cmp	r1, r3
 8006fbe:	dcd5      	bgt.n	8006f6c <__swbuf_r+0x34>
 8006fc0:	4621      	mov	r1, r4
 8006fc2:	4630      	mov	r0, r6
 8006fc4:	f7fe f8a6 	bl	8005114 <_fflush_r>
 8006fc8:	b958      	cbnz	r0, 8006fe2 <__swbuf_r+0xaa>
 8006fca:	6822      	ldr	r2, [r4, #0]
 8006fcc:	2301      	movs	r3, #1
 8006fce:	e7ce      	b.n	8006f6e <__swbuf_r+0x36>
 8006fd0:	f7fe f8fc 	bl	80051cc <__sinit>
 8006fd4:	e7b8      	b.n	8006f48 <__swbuf_r+0x10>
 8006fd6:	4621      	mov	r1, r4
 8006fd8:	4630      	mov	r0, r6
 8006fda:	f7fe f89b 	bl	8005114 <_fflush_r>
 8006fde:	2800      	cmp	r0, #0
 8006fe0:	d0d3      	beq.n	8006f8a <__swbuf_r+0x52>
 8006fe2:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006fe6:	e7d0      	b.n	8006f8a <__swbuf_r+0x52>

08006fe8 <_wcrtomb_r>:
 8006fe8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006fea:	4c11      	ldr	r4, [pc, #68]	; (8007030 <_wcrtomb_r+0x48>)
 8006fec:	6824      	ldr	r4, [r4, #0]
 8006fee:	b085      	sub	sp, #20
 8006ff0:	4606      	mov	r6, r0
 8006ff2:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006ff4:	461f      	mov	r7, r3
 8006ff6:	b151      	cbz	r1, 800700e <_wcrtomb_r+0x26>
 8006ff8:	4d0e      	ldr	r5, [pc, #56]	; (8007034 <_wcrtomb_r+0x4c>)
 8006ffa:	2c00      	cmp	r4, #0
 8006ffc:	bf08      	it	eq
 8006ffe:	462c      	moveq	r4, r5
 8007000:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007004:	47a0      	blx	r4
 8007006:	1c43      	adds	r3, r0, #1
 8007008:	d00c      	beq.n	8007024 <_wcrtomb_r+0x3c>
 800700a:	b005      	add	sp, #20
 800700c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800700e:	4a09      	ldr	r2, [pc, #36]	; (8007034 <_wcrtomb_r+0x4c>)
 8007010:	2c00      	cmp	r4, #0
 8007012:	bf08      	it	eq
 8007014:	4614      	moveq	r4, r2
 8007016:	460a      	mov	r2, r1
 8007018:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800701c:	a901      	add	r1, sp, #4
 800701e:	47a0      	blx	r4
 8007020:	1c43      	adds	r3, r0, #1
 8007022:	d1f2      	bne.n	800700a <_wcrtomb_r+0x22>
 8007024:	2200      	movs	r2, #0
 8007026:	238a      	movs	r3, #138	; 0x8a
 8007028:	603a      	str	r2, [r7, #0]
 800702a:	6033      	str	r3, [r6, #0]
 800702c:	b005      	add	sp, #20
 800702e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007030:	20000018 	.word	0x20000018
 8007034:	2000085c 	.word	0x2000085c

08007038 <__ascii_wctomb>:
 8007038:	b121      	cbz	r1, 8007044 <__ascii_wctomb+0xc>
 800703a:	2aff      	cmp	r2, #255	; 0xff
 800703c:	d804      	bhi.n	8007048 <__ascii_wctomb+0x10>
 800703e:	700a      	strb	r2, [r1, #0]
 8007040:	2001      	movs	r0, #1
 8007042:	4770      	bx	lr
 8007044:	4608      	mov	r0, r1
 8007046:	4770      	bx	lr
 8007048:	238a      	movs	r3, #138	; 0x8a
 800704a:	6003      	str	r3, [r0, #0]
 800704c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007050:	4770      	bx	lr
 8007052:	bf00      	nop

08007054 <_init>:
 8007054:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007056:	bf00      	nop
 8007058:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800705a:	bc08      	pop	{r3}
 800705c:	469e      	mov	lr, r3
 800705e:	4770      	bx	lr

08007060 <_fini>:
 8007060:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007062:	bf00      	nop
 8007064:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007066:	bc08      	pop	{r3}
 8007068:	469e      	mov	lr, r3
 800706a:	4770      	bx	lr
 800706c:	0000      	movs	r0, r0
	...
