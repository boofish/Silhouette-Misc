
sglib-arraybinsearch.elf:     file format elf32-littlearm


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
 80001d8:	20000b58 	.word	0x20000b58
 80001dc:	00000000 	.word	0x00000000
 80001e0:	08006ecc 	.word	0x08006ecc

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	20000b5c 	.word	0x20000b5c
 80001fc:	08006ecc 	.word	0x08006ecc

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
 80010ee:	f000 f819 	bl	8001124 <HAL_NVIC_SetPriorityGrouping>
 80010f2:	200f      	movs	r0, #15
 80010f4:	f000 fb84 	bl	8001800 <HAL_InitTick>
 80010f8:	2800      	cmp	r0, #0
 80010fa:	bf1c      	itt	ne
 80010fc:	2001      	movne	r0, #1
 80010fe:	bd80      	popne	{r7, pc}
 8001100:	f000 f94b 	bl	800139a <HAL_MspInit>
 8001104:	2000      	movs	r0, #0
 8001106:	bd80      	pop	{r7, pc}

08001108 <HAL_IncTick>:
 8001108:	f640 4034 	movw	r0, #3124	; 0xc34
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 4034 	movw	r0, #3124	; 0xc34
 800111c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001120:	6800      	ldr	r0, [r0, #0]
 8001122:	4770      	bx	lr

08001124 <HAL_NVIC_SetPriorityGrouping>:
 8001124:	f64e 510c 	movw	r1, #60684	; 0xed0c
 8001128:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 800112c:	f2ce 0100 	movt	r1, #57344	; 0xe000
 8001130:	680a      	ldr	r2, [r1, #0]
 8001132:	401a      	ands	r2, r3
 8001134:	f360 220a 	bfi	r2, r0, #8, #3
 8001138:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 800113c:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 8001140:	6008      	str	r0, [r1, #0]
 8001142:	4770      	bx	lr

08001144 <HAL_NVIC_SetPriority>:
 8001144:	b580      	push	{r7, lr}
 8001146:	466f      	mov	r7, sp
 8001148:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 800114c:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 8001150:	2800      	cmp	r0, #0
 8001152:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 8001156:	f000 030f 	and.w	r3, r0, #15
 800115a:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 800115e:	f1a3 0304 	sub.w	r3, r3, #4
 8001162:	4473      	add	r3, lr
 8001164:	bfb8      	it	lt
 8001166:	f103 0c0c 	addlt.w	ip, r3, #12
 800116a:	f8de 0000 	ldr.w	r0, [lr]
 800116e:	f3c0 2002 	ubfx	r0, r0, #8, #3
 8001172:	f100 0e04 	add.w	lr, r0, #4
 8001176:	1ec3      	subs	r3, r0, #3
 8001178:	f080 0007 	eor.w	r0, r0, #7
 800117c:	f1be 0f07 	cmp.w	lr, #7
 8001180:	f04f 0e01 	mov.w	lr, #1
 8001184:	bf38      	it	cc
 8001186:	2300      	movcc	r3, #0
 8001188:	2804      	cmp	r0, #4
 800118a:	bf28      	it	cs
 800118c:	2004      	movcs	r0, #4
 800118e:	fa0e f000 	lsl.w	r0, lr, r0
 8001192:	3801      	subs	r0, #1
 8001194:	4008      	ands	r0, r1
 8001196:	fa0e f103 	lsl.w	r1, lr, r3
 800119a:	310f      	adds	r1, #15
 800119c:	4098      	lsls	r0, r3
 800119e:	4011      	ands	r1, r2
 80011a0:	4308      	orrs	r0, r1
 80011a2:	0100      	lsls	r0, r0, #4
 80011a4:	f88c 0000 	strb.w	r0, [ip]
 80011a8:	bd80      	pop	{r7, pc}

080011aa <HAL_NVIC_EnableIRQ>:
 80011aa:	f000 011f 	and.w	r1, r0, #31
 80011ae:	2201      	movs	r2, #1
 80011b0:	0940      	lsrs	r0, r0, #5
 80011b2:	fa02 f101 	lsl.w	r1, r2, r1
 80011b6:	f24e 1200 	movw	r2, #57600	; 0xe100
 80011ba:	f2ce 0200 	movt	r2, #57344	; 0xe000
 80011be:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 80011c2:	4770      	bx	lr

080011c4 <HAL_SYSTICK_IRQHandler>:
 80011c4:	f000 b800 	b.w	80011c8 <HAL_SYSTICK_Callback>

080011c8 <HAL_SYSTICK_Callback>:
 80011c8:	4770      	bx	lr

080011ca <HAL_GPIO_Init>:
 80011ca:	b5f0      	push	{r4, r5, r6, r7, lr}
 80011cc:	af03      	add	r7, sp, #12
 80011ce:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80011d2:	b082      	sub	sp, #8
 80011d4:	680e      	ldr	r6, [r1, #0]
 80011d6:	2e00      	cmp	r6, #0
 80011d8:	f000 80db 	beq.w	8001392 <HAL_GPIO_Init+0x1c8>
 80011dc:	f641 0200 	movw	r2, #6144	; 0x1800
 80011e0:	2507      	movs	r5, #7
 80011e2:	f04f 0801 	mov.w	r8, #1
 80011e6:	f6c4 0200 	movt	r2, #18432	; 0x4800
 80011ea:	4290      	cmp	r0, r2
 80011ec:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 80011f0:	ea4f 23b2 	mov.w	r3, r2, ror #10
 80011f4:	bf08      	it	eq
 80011f6:	2506      	moveq	r5, #6
 80011f8:	2b06      	cmp	r3, #6
 80011fa:	bf38      	it	cc
 80011fc:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 8001200:	2200      	movs	r2, #0
 8001202:	9500      	str	r5, [sp, #0]
 8001204:	2500      	movs	r5, #0
 8001206:	f1a8 0a01 	sub.w	sl, r8, #1
 800120a:	2301      	movs	r3, #1
 800120c:	fa03 fb0a 	lsl.w	fp, r3, sl
 8001210:	ea16 090b 	ands.w	r9, r6, fp
 8001214:	f000 80b4 	beq.w	8001380 <HAL_GPIO_Init+0x1b6>
 8001218:	f8d1 e004 	ldr.w	lr, [r1, #4]
 800121c:	f04e 0610 	orr.w	r6, lr, #16
 8001220:	2e12      	cmp	r6, #18
 8001222:	d115      	bne.n	8001250 <HAL_GPIO_Init+0x86>
 8001224:	f005 061c 	and.w	r6, r5, #28
 8001228:	230f      	movs	r3, #15
 800122a:	fa03 fc06 	lsl.w	ip, r3, r6
 800122e:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 8001232:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 8001236:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 800123a:	4404      	add	r4, r0
 800123c:	6a23      	ldr	r3, [r4, #32]
 800123e:	ea23 0c0c 	bic.w	ip, r3, ip
 8001242:	690b      	ldr	r3, [r1, #16]
 8001244:	40b3      	lsls	r3, r6
 8001246:	ea43 030c 	orr.w	r3, r3, ip
 800124a:	6223      	str	r3, [r4, #32]
 800124c:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001250:	6806      	ldr	r6, [r0, #0]
 8001252:	2403      	movs	r4, #3
 8001254:	f00e 0c03 	and.w	ip, lr, #3
 8001258:	f1be 0f12 	cmp.w	lr, #18
 800125c:	fa04 f402 	lsl.w	r4, r4, r2
 8001260:	fa0c f302 	lsl.w	r3, ip, r2
 8001264:	ea26 0604 	bic.w	r6, r6, r4
 8001268:	ea43 0306 	orr.w	r3, r3, r6
 800126c:	ea6f 0604 	mvn.w	r6, r4
 8001270:	6003      	str	r3, [r0, #0]
 8001272:	d816      	bhi.n	80012a2 <HAL_GPIO_Init+0xd8>
 8001274:	2301      	movs	r3, #1
 8001276:	fa03 f30e 	lsl.w	r3, r3, lr
 800127a:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 800127e:	bf1f      	itttt	ne
 8001280:	6883      	ldrne	r3, [r0, #8]
 8001282:	4033      	andne	r3, r6
 8001284:	68cc      	ldrne	r4, [r1, #12]
 8001286:	4094      	lslne	r4, r2
 8001288:	bf1f      	itttt	ne
 800128a:	4323      	orrne	r3, r4
 800128c:	6083      	strne	r3, [r0, #8]
 800128e:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 8001292:	fa03 f30a 	lslne.w	r3, r3, sl
 8001296:	bf1f      	itttt	ne
 8001298:	6844      	ldrne	r4, [r0, #4]
 800129a:	ea24 040b 	bicne.w	r4, r4, fp
 800129e:	4323      	orrne	r3, r4
 80012a0:	6043      	strne	r3, [r0, #4]
 80012a2:	f1bc 0f03 	cmp.w	ip, #3
 80012a6:	d108      	bne.n	80012ba <HAL_GPIO_Init+0xf0>
 80012a8:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 80012ac:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 80012ae:	fa03 f30a 	lsl.w	r3, r3, sl
 80012b2:	ea24 040b 	bic.w	r4, r4, fp
 80012b6:	4323      	orrs	r3, r4
 80012b8:	62c3      	str	r3, [r0, #44]	; 0x2c
 80012ba:	68c3      	ldr	r3, [r0, #12]
 80012bc:	4033      	ands	r3, r6
 80012be:	688e      	ldr	r6, [r1, #8]
 80012c0:	4096      	lsls	r6, r2
 80012c2:	4333      	orrs	r3, r6
 80012c4:	60c3      	str	r3, [r0, #12]
 80012c6:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 80012ca:	d559      	bpl.n	8001380 <HAL_GPIO_Init+0x1b6>
 80012cc:	f241 0360 	movw	r3, #4192	; 0x1060
 80012d0:	f005 040c 	and.w	r4, r5, #12
 80012d4:	f2c4 0302 	movt	r3, #16386	; 0x4002
 80012d8:	461e      	mov	r6, r3
 80012da:	6833      	ldr	r3, [r6, #0]
 80012dc:	f043 0301 	orr.w	r3, r3, #1
 80012e0:	6033      	str	r3, [r6, #0]
 80012e2:	6833      	ldr	r3, [r6, #0]
 80012e4:	f240 4600 	movw	r6, #1024	; 0x400
 80012e8:	f2c4 0601 	movt	r6, #16385	; 0x4001
 80012ec:	46b6      	mov	lr, r6
 80012ee:	f003 0301 	and.w	r3, r3, #1
 80012f2:	9301      	str	r3, [sp, #4]
 80012f4:	f02a 0303 	bic.w	r3, sl, #3
 80012f8:	9e01      	ldr	r6, [sp, #4]
 80012fa:	4473      	add	r3, lr
 80012fc:	f64f 4608 	movw	r6, #64520	; 0xfc08
 8001300:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 8001304:	46b2      	mov	sl, r6
 8001306:	260f      	movs	r6, #15
 8001308:	f853 c00a 	ldr.w	ip, [r3, sl]
 800130c:	40a6      	lsls	r6, r4
 800130e:	ea2c 0c06 	bic.w	ip, ip, r6
 8001312:	9e00      	ldr	r6, [sp, #0]
 8001314:	fa06 f404 	lsl.w	r4, r6, r4
 8001318:	ea4c 0604 	orr.w	r6, ip, r4
 800131c:	f843 600a 	str.w	r6, [r3, sl]
 8001320:	f8de 3000 	ldr.w	r3, [lr]
 8001324:	684e      	ldr	r6, [r1, #4]
 8001326:	ea23 0309 	bic.w	r3, r3, r9
 800132a:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 800132e:	bf18      	it	ne
 8001330:	ea43 0309 	orrne.w	r3, r3, r9
 8001334:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 8001338:	f8ce 3000 	str.w	r3, [lr]
 800133c:	f8de 3004 	ldr.w	r3, [lr, #4]
 8001340:	ea23 0309 	bic.w	r3, r3, r9
 8001344:	bf18      	it	ne
 8001346:	ea43 0309 	orrne.w	r3, r3, r9
 800134a:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 800134e:	f8ce 3004 	str.w	r3, [lr, #4]
 8001352:	f8de 3008 	ldr.w	r3, [lr, #8]
 8001356:	ea23 0309 	bic.w	r3, r3, r9
 800135a:	bf18      	it	ne
 800135c:	ea43 0309 	orrne.w	r3, r3, r9
 8001360:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 8001364:	f8ce 3008 	str.w	r3, [lr, #8]
 8001368:	f240 430c 	movw	r3, #1036	; 0x40c
 800136c:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001370:	461c      	mov	r4, r3
 8001372:	6823      	ldr	r3, [r4, #0]
 8001374:	ea23 0309 	bic.w	r3, r3, r9
 8001378:	bf18      	it	ne
 800137a:	ea43 0309 	orrne.w	r3, r3, r9
 800137e:	6023      	str	r3, [r4, #0]
 8001380:	680e      	ldr	r6, [r1, #0]
 8001382:	3202      	adds	r2, #2
 8001384:	3504      	adds	r5, #4
 8001386:	fa36 f308 	lsrs.w	r3, r6, r8
 800138a:	f108 0801 	add.w	r8, r8, #1
 800138e:	f47f af3a 	bne.w	8001206 <HAL_GPIO_Init+0x3c>
 8001392:	b002      	add	sp, #8
 8001394:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001398:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800139a <HAL_MspInit>:
 800139a:	4770      	bx	lr

0800139c <HAL_RCC_GetSysClockFreq>:
 800139c:	b580      	push	{r7, lr}
 800139e:	466f      	mov	r7, sp
 80013a0:	f241 010c 	movw	r1, #4108	; 0x100c
 80013a4:	f241 2e00 	movw	lr, #4608	; 0x1200
 80013a8:	f242 4c00 	movw	ip, #9216	; 0x2400
 80013ac:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80013b0:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 80013b4:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 80013b8:	f851 2c04 	ldr.w	r2, [r1, #-4]
 80013bc:	6808      	ldr	r0, [r1, #0]
 80013be:	f012 030c 	ands.w	r3, r2, #12
 80013c2:	d005      	beq.n	80013d0 <HAL_RCC_GetSysClockFreq+0x34>
 80013c4:	2b0c      	cmp	r3, #12
 80013c6:	bf04      	itt	eq
 80013c8:	f000 0003 	andeq.w	r0, r0, #3
 80013cc:	2801      	cmpeq	r0, #1
 80013ce:	d118      	bne.n	8001402 <HAL_RCC_GetSysClockFreq+0x66>
 80013d0:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80013d4:	f010 0f08 	tst.w	r0, #8
 80013d8:	d103      	bne.n	80013e2 <HAL_RCC_GetSysClockFreq+0x46>
 80013da:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 80013de:	0a00      	lsrs	r0, r0, #8
 80013e0:	e002      	b.n	80013e8 <HAL_RCC_GetSysClockFreq+0x4c>
 80013e2:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80013e6:	0900      	lsrs	r0, r0, #4
 80013e8:	f646 7200 	movw	r2, #28416	; 0x6f00
 80013ec:	f000 000f 	and.w	r0, r0, #15
 80013f0:	2b00      	cmp	r3, #0
 80013f2:	f6c0 0200 	movt	r2, #2048	; 0x800
 80013f6:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 80013fa:	4610      	mov	r0, r2
 80013fc:	bf18      	it	ne
 80013fe:	2000      	movne	r0, #0
 8001400:	e00b      	b.n	800141a <HAL_RCC_GetSysClockFreq+0x7e>
 8001402:	f003 000f 	and.w	r0, r3, #15
 8001406:	2804      	cmp	r0, #4
 8001408:	bf04      	itt	eq
 800140a:	4660      	moveq	r0, ip
 800140c:	bd80      	popeq	{r7, pc}
 800140e:	2808      	cmp	r0, #8
 8001410:	bf04      	itt	eq
 8001412:	4670      	moveq	r0, lr
 8001414:	bd80      	popeq	{r7, pc}
 8001416:	2000      	movs	r0, #0
 8001418:	2200      	movs	r2, #0
 800141a:	2b0c      	cmp	r3, #12
 800141c:	bf18      	it	ne
 800141e:	bd80      	popne	{r7, pc}
 8001420:	6808      	ldr	r0, [r1, #0]
 8001422:	f000 0303 	and.w	r3, r0, #3
 8001426:	6808      	ldr	r0, [r1, #0]
 8001428:	2b03      	cmp	r3, #3
 800142a:	f3c0 1002 	ubfx	r0, r0, #4, #3
 800142e:	f100 0001 	add.w	r0, r0, #1
 8001432:	d003      	beq.n	800143c <HAL_RCC_GetSysClockFreq+0xa0>
 8001434:	2b02      	cmp	r3, #2
 8001436:	46e6      	mov	lr, ip
 8001438:	bf18      	it	ne
 800143a:	4696      	movne	lr, r2
 800143c:	680a      	ldr	r2, [r1, #0]
 800143e:	fbbe f0f0 	udiv	r0, lr, r0
 8001442:	f3c2 2206 	ubfx	r2, r2, #8, #7
 8001446:	6809      	ldr	r1, [r1, #0]
 8001448:	4350      	muls	r0, r2
 800144a:	2202      	movs	r2, #2
 800144c:	f3c1 6141 	ubfx	r1, r1, #25, #2
 8001450:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8001454:	fbb0 f0f1 	udiv	r0, r0, r1
 8001458:	bd80      	pop	{r7, pc}

0800145a <HAL_RCC_GetPCLK1Freq>:
 800145a:	f240 10a4 	movw	r0, #420	; 0x1a4
 800145e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001462:	f646 62f8 	movw	r2, #28408	; 0x6ef8
 8001466:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800146a:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800146e:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001472:	6800      	ldr	r0, [r0, #0]
 8001474:	6809      	ldr	r1, [r1, #0]
 8001476:	f3c1 2102 	ubfx	r1, r1, #8, #3
 800147a:	5c51      	ldrb	r1, [r2, r1]
 800147c:	f001 011f 	and.w	r1, r1, #31
 8001480:	40c8      	lsrs	r0, r1
 8001482:	4770      	bx	lr

08001484 <HAL_RCC_GetPCLK2Freq>:
 8001484:	f240 10a4 	movw	r0, #420	; 0x1a4
 8001488:	f241 0108 	movw	r1, #4104	; 0x1008
 800148c:	f646 62f8 	movw	r2, #28408	; 0x6ef8
 8001490:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001494:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001498:	f6c0 0200 	movt	r2, #2048	; 0x800
 800149c:	6800      	ldr	r0, [r0, #0]
 800149e:	6809      	ldr	r1, [r1, #0]
 80014a0:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 80014a4:	5c51      	ldrb	r1, [r2, r1]
 80014a6:	f001 011f 	and.w	r1, r1, #31
 80014aa:	40c8      	lsrs	r0, r1
 80014ac:	4770      	bx	lr

080014ae <HAL_RCC_GetClockConfig>:
 80014ae:	220f      	movs	r2, #15
 80014b0:	6002      	str	r2, [r0, #0]
 80014b2:	f241 0208 	movw	r2, #4104	; 0x1008
 80014b6:	f2c4 0202 	movt	r2, #16386	; 0x4002
 80014ba:	6813      	ldr	r3, [r2, #0]
 80014bc:	f003 0303 	and.w	r3, r3, #3
 80014c0:	6043      	str	r3, [r0, #4]
 80014c2:	6813      	ldr	r3, [r2, #0]
 80014c4:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 80014c8:	6083      	str	r3, [r0, #8]
 80014ca:	6813      	ldr	r3, [r2, #0]
 80014cc:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 80014d0:	60c3      	str	r3, [r0, #12]
 80014d2:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 80014d6:	6812      	ldr	r2, [r2, #0]
 80014d8:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 80014dc:	6102      	str	r2, [r0, #16]
 80014de:	f242 0000 	movw	r0, #8192	; 0x2000
 80014e2:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80014e6:	6800      	ldr	r0, [r0, #0]
 80014e8:	f000 0007 	and.w	r0, r0, #7
 80014ec:	6008      	str	r0, [r1, #0]
 80014ee:	4770      	bx	lr

080014f0 <HAL_TIM_Base_Init>:
 80014f0:	b5d0      	push	{r4, r6, r7, lr}
 80014f2:	af02      	add	r7, sp, #8
 80014f4:	4604      	mov	r4, r0
 80014f6:	2c00      	cmp	r4, #0
 80014f8:	bf04      	itt	eq
 80014fa:	2001      	moveq	r0, #1
 80014fc:	bdd0      	popeq	{r4, r6, r7, pc}
 80014fe:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8001500:	b920      	cbnz	r0, 800150c <HAL_TIM_Base_Init+0x1c>
 8001502:	2000      	movs	r0, #0
 8001504:	63e0      	str	r0, [r4, #60]	; 0x3c
 8001506:	4620      	mov	r0, r4
 8001508:	f000 f892 	bl	8001630 <HAL_TIM_Base_MspInit>
 800150c:	2002      	movs	r0, #2
 800150e:	f640 32ff 	movw	r2, #3071	; 0xbff
 8001512:	6420      	str	r0, [r4, #64]	; 0x40
 8001514:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001518:	6820      	ldr	r0, [r4, #0]
 800151a:	6801      	ldr	r1, [r0, #0]
 800151c:	4290      	cmp	r0, r2
 800151e:	dc0f      	bgt.n	8001540 <HAL_TIM_Base_Init+0x50>
 8001520:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001524:	bf1e      	ittt	ne
 8001526:	f240 4200 	movwne	r2, #1024	; 0x400
 800152a:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 800152e:	4290      	cmpne	r0, r2
 8001530:	d018      	beq.n	8001564 <HAL_TIM_Base_Init+0x74>
 8001532:	f640 0200 	movw	r2, #2048	; 0x800
 8001536:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800153a:	4290      	cmp	r0, r2
 800153c:	d012      	beq.n	8001564 <HAL_TIM_Base_Init+0x74>
 800153e:	e015      	b.n	800156c <HAL_TIM_Base_Init+0x7c>
 8001540:	f640 4200 	movw	r2, #3072	; 0xc00
 8001544:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001548:	4290      	cmp	r0, r2
 800154a:	bf1e      	ittt	ne
 800154c:	f243 4200 	movwne	r2, #13312	; 0x3400
 8001550:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001554:	4290      	cmpne	r0, r2
 8001556:	d005      	beq.n	8001564 <HAL_TIM_Base_Init+0x74>
 8001558:	f642 4200 	movw	r2, #11264	; 0x2c00
 800155c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001560:	4290      	cmp	r0, r2
 8001562:	d103      	bne.n	800156c <HAL_TIM_Base_Init+0x7c>
 8001564:	68a2      	ldr	r2, [r4, #8]
 8001566:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 800156a:	4311      	orrs	r1, r2
 800156c:	f642 32ff 	movw	r2, #11263	; 0x2bff
 8001570:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001574:	4290      	cmp	r0, r2
 8001576:	dd14      	ble.n	80015a2 <HAL_TIM_Base_Init+0xb2>
 8001578:	f643 72ff 	movw	r2, #16383	; 0x3fff
 800157c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001580:	4290      	cmp	r0, r2
 8001582:	dd1a      	ble.n	80015ba <HAL_TIM_Base_Init+0xca>
 8001584:	f244 0200 	movw	r2, #16384	; 0x4000
 8001588:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800158c:	4290      	cmp	r0, r2
 800158e:	bf1e      	ittt	ne
 8001590:	f644 0200 	movwne	r2, #18432	; 0x4800
 8001594:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001598:	4290      	cmpne	r0, r2
 800159a:	d027      	beq.n	80015ec <HAL_TIM_Base_Init+0xfc>
 800159c:	f244 4200 	movw	r2, #17408	; 0x4400
 80015a0:	e013      	b.n	80015ca <HAL_TIM_Base_Init+0xda>
 80015a2:	f240 72ff 	movw	r2, #2047	; 0x7ff
 80015a6:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015aa:	4290      	cmp	r0, r2
 80015ac:	dc12      	bgt.n	80015d4 <HAL_TIM_Base_Init+0xe4>
 80015ae:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80015b2:	d01b      	beq.n	80015ec <HAL_TIM_Base_Init+0xfc>
 80015b4:	f240 4200 	movw	r2, #1024	; 0x400
 80015b8:	e014      	b.n	80015e4 <HAL_TIM_Base_Init+0xf4>
 80015ba:	f642 4200 	movw	r2, #11264	; 0x2c00
 80015be:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015c2:	4290      	cmp	r0, r2
 80015c4:	d012      	beq.n	80015ec <HAL_TIM_Base_Init+0xfc>
 80015c6:	f243 4200 	movw	r2, #13312	; 0x3400
 80015ca:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015ce:	4290      	cmp	r0, r2
 80015d0:	d00c      	beq.n	80015ec <HAL_TIM_Base_Init+0xfc>
 80015d2:	e00f      	b.n	80015f4 <HAL_TIM_Base_Init+0x104>
 80015d4:	f640 0200 	movw	r2, #2048	; 0x800
 80015d8:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015dc:	4290      	cmp	r0, r2
 80015de:	d005      	beq.n	80015ec <HAL_TIM_Base_Init+0xfc>
 80015e0:	f640 4200 	movw	r2, #3072	; 0xc00
 80015e4:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015e8:	4290      	cmp	r0, r2
 80015ea:	d103      	bne.n	80015f4 <HAL_TIM_Base_Init+0x104>
 80015ec:	6922      	ldr	r2, [r4, #16]
 80015ee:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 80015f2:	4311      	orrs	r1, r2
 80015f4:	69a2      	ldr	r2, [r4, #24]
 80015f6:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 80015fa:	4311      	orrs	r1, r2
 80015fc:	6001      	str	r1, [r0, #0]
 80015fe:	68e1      	ldr	r1, [r4, #12]
 8001600:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001602:	6861      	ldr	r1, [r4, #4]
 8001604:	6281      	str	r1, [r0, #40]	; 0x28
 8001606:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 800160a:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 800160e:	ea4f 21b1 	mov.w	r1, r1, ror #10
 8001612:	2907      	cmp	r1, #7
 8001614:	d807      	bhi.n	8001626 <HAL_TIM_Base_Init+0x136>
 8001616:	2201      	movs	r2, #1
 8001618:	fa02 f101 	lsl.w	r1, r2, r1
 800161c:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 8001620:	bf1c      	itt	ne
 8001622:	6961      	ldrne	r1, [r4, #20]
 8001624:	6301      	strne	r1, [r0, #48]	; 0x30
 8001626:	2101      	movs	r1, #1
 8001628:	6141      	str	r1, [r0, #20]
 800162a:	2000      	movs	r0, #0
 800162c:	6421      	str	r1, [r4, #64]	; 0x40
 800162e:	bdd0      	pop	{r4, r6, r7, pc}

08001630 <HAL_TIM_Base_MspInit>:
 8001630:	4770      	bx	lr

08001632 <HAL_TIM_Base_Start_IT>:
 8001632:	6800      	ldr	r0, [r0, #0]
 8001634:	68c1      	ldr	r1, [r0, #12]
 8001636:	f041 0101 	orr.w	r1, r1, #1
 800163a:	60c1      	str	r1, [r0, #12]
 800163c:	2107      	movs	r1, #7
 800163e:	6882      	ldr	r2, [r0, #8]
 8001640:	f2c0 0101 	movt	r1, #1
 8001644:	400a      	ands	r2, r1
 8001646:	2a06      	cmp	r2, #6
 8001648:	d008      	beq.n	800165c <HAL_TIM_Base_Start_IT+0x2a>
 800164a:	6882      	ldr	r2, [r0, #8]
 800164c:	4011      	ands	r1, r2
 800164e:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001652:	bf1e      	ittt	ne
 8001654:	6801      	ldrne	r1, [r0, #0]
 8001656:	f041 0101 	orrne.w	r1, r1, #1
 800165a:	6001      	strne	r1, [r0, #0]
 800165c:	2000      	movs	r0, #0
 800165e:	4770      	bx	lr

08001660 <HAL_TIM_IRQHandler>:
 8001660:	b5d0      	push	{r4, r6, r7, lr}
 8001662:	af02      	add	r7, sp, #8
 8001664:	4604      	mov	r4, r0
 8001666:	6820      	ldr	r0, [r4, #0]
 8001668:	6901      	ldr	r1, [r0, #16]
 800166a:	f011 0f02 	tst.w	r1, #2
 800166e:	bf1c      	itt	ne
 8001670:	68c1      	ldrne	r1, [r0, #12]
 8001672:	f011 0f02 	tstne.w	r1, #2
 8001676:	d015      	beq.n	80016a4 <HAL_TIM_IRQHandler+0x44>
 8001678:	f06f 0102 	mvn.w	r1, #2
 800167c:	6101      	str	r1, [r0, #16]
 800167e:	2101      	movs	r1, #1
 8001680:	61e1      	str	r1, [r4, #28]
 8001682:	6980      	ldr	r0, [r0, #24]
 8001684:	f010 0f03 	tst.w	r0, #3
 8001688:	d003      	beq.n	8001692 <HAL_TIM_IRQHandler+0x32>
 800168a:	4620      	mov	r0, r4
 800168c:	f000 f8b1 	bl	80017f2 <HAL_TIM_IC_CaptureCallback>
 8001690:	e005      	b.n	800169e <HAL_TIM_IRQHandler+0x3e>
 8001692:	4620      	mov	r0, r4
 8001694:	f000 f8ae 	bl	80017f4 <HAL_TIM_OC_DelayElapsedCallback>
 8001698:	4620      	mov	r0, r4
 800169a:	f000 f8ac 	bl	80017f6 <HAL_TIM_PWM_PulseFinishedCallback>
 800169e:	2000      	movs	r0, #0
 80016a0:	61e0      	str	r0, [r4, #28]
 80016a2:	6820      	ldr	r0, [r4, #0]
 80016a4:	6901      	ldr	r1, [r0, #16]
 80016a6:	f011 0f04 	tst.w	r1, #4
 80016aa:	bf1c      	itt	ne
 80016ac:	68c1      	ldrne	r1, [r0, #12]
 80016ae:	f011 0f04 	tstne.w	r1, #4
 80016b2:	d015      	beq.n	80016e0 <HAL_TIM_IRQHandler+0x80>
 80016b4:	f06f 0104 	mvn.w	r1, #4
 80016b8:	6101      	str	r1, [r0, #16]
 80016ba:	2102      	movs	r1, #2
 80016bc:	61e1      	str	r1, [r4, #28]
 80016be:	6980      	ldr	r0, [r0, #24]
 80016c0:	f410 7f40 	tst.w	r0, #768	; 0x300
 80016c4:	d003      	beq.n	80016ce <HAL_TIM_IRQHandler+0x6e>
 80016c6:	4620      	mov	r0, r4
 80016c8:	f000 f893 	bl	80017f2 <HAL_TIM_IC_CaptureCallback>
 80016cc:	e005      	b.n	80016da <HAL_TIM_IRQHandler+0x7a>
 80016ce:	4620      	mov	r0, r4
 80016d0:	f000 f890 	bl	80017f4 <HAL_TIM_OC_DelayElapsedCallback>
 80016d4:	4620      	mov	r0, r4
 80016d6:	f000 f88e 	bl	80017f6 <HAL_TIM_PWM_PulseFinishedCallback>
 80016da:	2000      	movs	r0, #0
 80016dc:	61e0      	str	r0, [r4, #28]
 80016de:	6820      	ldr	r0, [r4, #0]
 80016e0:	6901      	ldr	r1, [r0, #16]
 80016e2:	f011 0f08 	tst.w	r1, #8
 80016e6:	bf1c      	itt	ne
 80016e8:	68c1      	ldrne	r1, [r0, #12]
 80016ea:	f011 0f08 	tstne.w	r1, #8
 80016ee:	d015      	beq.n	800171c <HAL_TIM_IRQHandler+0xbc>
 80016f0:	f06f 0108 	mvn.w	r1, #8
 80016f4:	6101      	str	r1, [r0, #16]
 80016f6:	2104      	movs	r1, #4
 80016f8:	61e1      	str	r1, [r4, #28]
 80016fa:	69c0      	ldr	r0, [r0, #28]
 80016fc:	f010 0f03 	tst.w	r0, #3
 8001700:	d003      	beq.n	800170a <HAL_TIM_IRQHandler+0xaa>
 8001702:	4620      	mov	r0, r4
 8001704:	f000 f875 	bl	80017f2 <HAL_TIM_IC_CaptureCallback>
 8001708:	e005      	b.n	8001716 <HAL_TIM_IRQHandler+0xb6>
 800170a:	4620      	mov	r0, r4
 800170c:	f000 f872 	bl	80017f4 <HAL_TIM_OC_DelayElapsedCallback>
 8001710:	4620      	mov	r0, r4
 8001712:	f000 f870 	bl	80017f6 <HAL_TIM_PWM_PulseFinishedCallback>
 8001716:	2000      	movs	r0, #0
 8001718:	61e0      	str	r0, [r4, #28]
 800171a:	6820      	ldr	r0, [r4, #0]
 800171c:	6901      	ldr	r1, [r0, #16]
 800171e:	f011 0f10 	tst.w	r1, #16
 8001722:	bf1c      	itt	ne
 8001724:	68c1      	ldrne	r1, [r0, #12]
 8001726:	f011 0f10 	tstne.w	r1, #16
 800172a:	d015      	beq.n	8001758 <HAL_TIM_IRQHandler+0xf8>
 800172c:	f06f 0110 	mvn.w	r1, #16
 8001730:	6101      	str	r1, [r0, #16]
 8001732:	2108      	movs	r1, #8
 8001734:	61e1      	str	r1, [r4, #28]
 8001736:	69c0      	ldr	r0, [r0, #28]
 8001738:	f410 7f40 	tst.w	r0, #768	; 0x300
 800173c:	d003      	beq.n	8001746 <HAL_TIM_IRQHandler+0xe6>
 800173e:	4620      	mov	r0, r4
 8001740:	f000 f857 	bl	80017f2 <HAL_TIM_IC_CaptureCallback>
 8001744:	e005      	b.n	8001752 <HAL_TIM_IRQHandler+0xf2>
 8001746:	4620      	mov	r0, r4
 8001748:	f000 f854 	bl	80017f4 <HAL_TIM_OC_DelayElapsedCallback>
 800174c:	4620      	mov	r0, r4
 800174e:	f000 f852 	bl	80017f6 <HAL_TIM_PWM_PulseFinishedCallback>
 8001752:	2000      	movs	r0, #0
 8001754:	61e0      	str	r0, [r4, #28]
 8001756:	6820      	ldr	r0, [r4, #0]
 8001758:	6901      	ldr	r1, [r0, #16]
 800175a:	f011 0f01 	tst.w	r1, #1
 800175e:	bf1c      	itt	ne
 8001760:	68c1      	ldrne	r1, [r0, #12]
 8001762:	f011 0f01 	tstne.w	r1, #1
 8001766:	d006      	beq.n	8001776 <HAL_TIM_IRQHandler+0x116>
 8001768:	f06f 0101 	mvn.w	r1, #1
 800176c:	6101      	str	r1, [r0, #16]
 800176e:	4620      	mov	r0, r4
 8001770:	f000 f894 	bl	800189c <HAL_TIM_PeriodElapsedCallback>
 8001774:	6820      	ldr	r0, [r4, #0]
 8001776:	6901      	ldr	r1, [r0, #16]
 8001778:	f011 0f80 	tst.w	r1, #128	; 0x80
 800177c:	bf1c      	itt	ne
 800177e:	68c1      	ldrne	r1, [r0, #12]
 8001780:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001784:	d006      	beq.n	8001794 <HAL_TIM_IRQHandler+0x134>
 8001786:	f06f 0180 	mvn.w	r1, #128	; 0x80
 800178a:	6101      	str	r1, [r0, #16]
 800178c:	4620      	mov	r0, r4
 800178e:	f000 f835 	bl	80017fc <HAL_TIMEx_BreakCallback>
 8001792:	6820      	ldr	r0, [r4, #0]
 8001794:	6901      	ldr	r1, [r0, #16]
 8001796:	f411 7f80 	tst.w	r1, #256	; 0x100
 800179a:	bf1c      	itt	ne
 800179c:	68c1      	ldrne	r1, [r0, #12]
 800179e:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80017a2:	d006      	beq.n	80017b2 <HAL_TIM_IRQHandler+0x152>
 80017a4:	f46f 7180 	mvn.w	r1, #256	; 0x100
 80017a8:	6101      	str	r1, [r0, #16]
 80017aa:	4620      	mov	r0, r4
 80017ac:	f000 f827 	bl	80017fe <HAL_TIMEx_Break2Callback>
 80017b0:	6820      	ldr	r0, [r4, #0]
 80017b2:	6901      	ldr	r1, [r0, #16]
 80017b4:	f011 0f40 	tst.w	r1, #64	; 0x40
 80017b8:	bf1c      	itt	ne
 80017ba:	68c1      	ldrne	r1, [r0, #12]
 80017bc:	f011 0f40 	tstne.w	r1, #64	; 0x40
 80017c0:	d006      	beq.n	80017d0 <HAL_TIM_IRQHandler+0x170>
 80017c2:	f06f 0140 	mvn.w	r1, #64	; 0x40
 80017c6:	6101      	str	r1, [r0, #16]
 80017c8:	4620      	mov	r0, r4
 80017ca:	f000 f815 	bl	80017f8 <HAL_TIM_TriggerCallback>
 80017ce:	6820      	ldr	r0, [r4, #0]
 80017d0:	6901      	ldr	r1, [r0, #16]
 80017d2:	f011 0f20 	tst.w	r1, #32
 80017d6:	bf1c      	itt	ne
 80017d8:	68c1      	ldrne	r1, [r0, #12]
 80017da:	f011 0f20 	tstne.w	r1, #32
 80017de:	d100      	bne.n	80017e2 <HAL_TIM_IRQHandler+0x182>
 80017e0:	bdd0      	pop	{r4, r6, r7, pc}
 80017e2:	f06f 0120 	mvn.w	r1, #32
 80017e6:	6101      	str	r1, [r0, #16]
 80017e8:	4620      	mov	r0, r4
 80017ea:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 80017ee:	f000 b804 	b.w	80017fa <HAL_TIMEx_CommutationCallback>

080017f2 <HAL_TIM_IC_CaptureCallback>:
 80017f2:	4770      	bx	lr

080017f4 <HAL_TIM_OC_DelayElapsedCallback>:
 80017f4:	4770      	bx	lr

080017f6 <HAL_TIM_PWM_PulseFinishedCallback>:
 80017f6:	4770      	bx	lr

080017f8 <HAL_TIM_TriggerCallback>:
 80017f8:	4770      	bx	lr

080017fa <HAL_TIMEx_CommutationCallback>:
 80017fa:	4770      	bx	lr

080017fc <HAL_TIMEx_BreakCallback>:
 80017fc:	4770      	bx	lr

080017fe <HAL_TIMEx_Break2Callback>:
 80017fe:	4770      	bx	lr

08001800 <HAL_InitTick>:
 8001800:	b5b0      	push	{r4, r5, r7, lr}
 8001802:	af02      	add	r7, sp, #8
 8001804:	b086      	sub	sp, #24
 8001806:	4601      	mov	r1, r0
 8001808:	2036      	movs	r0, #54	; 0x36
 800180a:	2200      	movs	r2, #0
 800180c:	2400      	movs	r4, #0
 800180e:	f7ff fc99 	bl	8001144 <HAL_NVIC_SetPriority>
 8001812:	2036      	movs	r0, #54	; 0x36
 8001814:	f7ff fcc9 	bl	80011aa <HAL_NVIC_EnableIRQ>
 8001818:	f241 0058 	movw	r0, #4184	; 0x1058
 800181c:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001820:	6801      	ldr	r1, [r0, #0]
 8001822:	f041 0110 	orr.w	r1, r1, #16
 8001826:	6001      	str	r1, [r0, #0]
 8001828:	4669      	mov	r1, sp
 800182a:	6800      	ldr	r0, [r0, #0]
 800182c:	f000 0010 	and.w	r0, r0, #16
 8001830:	9001      	str	r0, [sp, #4]
 8001832:	9801      	ldr	r0, [sp, #4]
 8001834:	a801      	add	r0, sp, #4
 8001836:	f7ff fe3a 	bl	80014ae <HAL_RCC_GetClockConfig>
 800183a:	9d04      	ldr	r5, [sp, #16]
 800183c:	f7ff fe0d 	bl	800145a <HAL_RCC_GetPCLK1Freq>
 8001840:	2d00      	cmp	r5, #0
 8001842:	f640 4138 	movw	r1, #3128	; 0xc38
 8001846:	f241 0200 	movw	r2, #4096	; 0x1000
 800184a:	f240 33e7 	movw	r3, #999	; 0x3e7
 800184e:	bf18      	it	ne
 8001850:	2501      	movne	r5, #1
 8001852:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001856:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800185a:	40a8      	lsls	r0, r5
 800185c:	f64d 6583 	movw	r5, #56963	; 0xde83
 8001860:	618c      	str	r4, [r1, #24]
 8001862:	f2c4 351b 	movt	r5, #17179	; 0x431b
 8001866:	fba0 0505 	umull	r0, r5, r0, r5
 800186a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800186e:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 8001872:	e9c1 2000 	strd	r2, r0, [r1]
 8001876:	4608      	mov	r0, r1
 8001878:	e9c1 4302 	strd	r4, r3, [r1, #8]
 800187c:	610c      	str	r4, [r1, #16]
 800187e:	f7ff fe37 	bl	80014f0 <HAL_TIM_Base_Init>
 8001882:	2800      	cmp	r0, #0
 8001884:	bf1e      	ittt	ne
 8001886:	2001      	movne	r0, #1
 8001888:	b006      	addne	sp, #24
 800188a:	bdb0      	popne	{r4, r5, r7, pc}
 800188c:	f640 4038 	movw	r0, #3128	; 0xc38
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 4038 	movw	r0, #3128	; 0xc38
 80018a4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80018a8:	f7ff beda 	b.w	8001660 <HAL_TIM_IRQHandler>

080018ac <HAL_UART_Init>:
 80018ac:	b5d0      	push	{r4, r6, r7, lr}
 80018ae:	af02      	add	r7, sp, #8
 80018b0:	4604      	mov	r4, r0
 80018b2:	b194      	cbz	r4, 80018da <HAL_UART_Init+0x2e>
 80018b4:	6f60      	ldr	r0, [r4, #116]	; 0x74
 80018b6:	b920      	cbnz	r0, 80018c2 <HAL_UART_Init+0x16>
 80018b8:	2000      	movs	r0, #0
 80018ba:	6720      	str	r0, [r4, #112]	; 0x70
 80018bc:	4620      	mov	r0, r4
 80018be:	f000 f826 	bl	800190e <HAL_UART_MspInit>
 80018c2:	2024      	movs	r0, #36	; 0x24
 80018c4:	6760      	str	r0, [r4, #116]	; 0x74
 80018c6:	6820      	ldr	r0, [r4, #0]
 80018c8:	6801      	ldr	r1, [r0, #0]
 80018ca:	f021 0101 	bic.w	r1, r1, #1
 80018ce:	6001      	str	r1, [r0, #0]
 80018d0:	4620      	mov	r0, r4
 80018d2:	f000 f81d 	bl	8001910 <UART_SetConfig>
 80018d6:	2801      	cmp	r0, #1
 80018d8:	d101      	bne.n	80018de <HAL_UART_Init+0x32>
 80018da:	2001      	movs	r0, #1
 80018dc:	bdd0      	pop	{r4, r6, r7, pc}
 80018de:	6a60      	ldr	r0, [r4, #36]	; 0x24
 80018e0:	2800      	cmp	r0, #0
 80018e2:	bf1c      	itt	ne
 80018e4:	4620      	movne	r0, r4
 80018e6:	f000 f944 	blne	8001b72 <UART_AdvFeatureConfig>
 80018ea:	6820      	ldr	r0, [r4, #0]
 80018ec:	6841      	ldr	r1, [r0, #4]
 80018ee:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 80018f2:	6041      	str	r1, [r0, #4]
 80018f4:	6881      	ldr	r1, [r0, #8]
 80018f6:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 80018fa:	6081      	str	r1, [r0, #8]
 80018fc:	6801      	ldr	r1, [r0, #0]
 80018fe:	f041 0101 	orr.w	r1, r1, #1
 8001902:	6001      	str	r1, [r0, #0]
 8001904:	4620      	mov	r0, r4
 8001906:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 800190a:	f000 b99d 	b.w	8001c48 <UART_CheckIdleState>

0800190e <HAL_UART_MspInit>:
 800190e:	4770      	bx	lr

08001910 <UART_SetConfig>:
 8001910:	b5b0      	push	{r4, r5, r7, lr}
 8001912:	af02      	add	r7, sp, #8
 8001914:	4604      	mov	r4, r0
 8001916:	f646 15f3 	movw	r5, #27123	; 0x69f3
 800191a:	f248 0e00 	movw	lr, #32768	; 0x8000
 800191e:	f241 0c88 	movw	ip, #4232	; 0x1088
 8001922:	6821      	ldr	r1, [r4, #0]
 8001924:	68a0      	ldr	r0, [r4, #8]
 8001926:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 800192a:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 800192e:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 8001932:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 8001936:	4310      	orrs	r0, r2
 8001938:	69e2      	ldr	r2, [r4, #28]
 800193a:	4571      	cmp	r1, lr
 800193c:	ea40 0003 	orr.w	r0, r0, r3
 8001940:	680b      	ldr	r3, [r1, #0]
 8001942:	ea40 0002 	orr.w	r0, r0, r2
 8001946:	ea03 0305 	and.w	r3, r3, r5
 800194a:	f04f 0510 	mov.w	r5, #16
 800194e:	ea40 0003 	orr.w	r0, r0, r3
 8001952:	6008      	str	r0, [r1, #0]
 8001954:	6848      	ldr	r0, [r1, #4]
 8001956:	68e3      	ldr	r3, [r4, #12]
 8001958:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 800195c:	ea40 0003 	orr.w	r0, r0, r3
 8001960:	6048      	str	r0, [r1, #4]
 8001962:	69a0      	ldr	r0, [r4, #24]
 8001964:	bf1c      	itt	ne
 8001966:	6a23      	ldrne	r3, [r4, #32]
 8001968:	4318      	orrne	r0, r3
 800196a:	688b      	ldr	r3, [r1, #8]
 800196c:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001970:	4318      	orrs	r0, r3
 8001972:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001976:	6088      	str	r0, [r1, #8]
 8001978:	f242 4000 	movw	r0, #9216	; 0x2400
 800197c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001980:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001984:	4299      	cmp	r1, r3
 8001986:	dc15      	bgt.n	80019b4 <UART_SetConfig+0xa4>
 8001988:	f244 4300 	movw	r3, #17408	; 0x4400
 800198c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001990:	4299      	cmp	r1, r3
 8001992:	d024      	beq.n	80019de <UART_SetConfig+0xce>
 8001994:	f644 0300 	movw	r3, #18432	; 0x4800
 8001998:	f2c4 0300 	movt	r3, #16384	; 0x4000
 800199c:	4299      	cmp	r1, r3
 800199e:	d022      	beq.n	80019e6 <UART_SetConfig+0xd6>
 80019a0:	f644 4300 	movw	r3, #19456	; 0x4c00
 80019a4:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019a8:	4299      	cmp	r1, r3
 80019aa:	d131      	bne.n	8001a10 <UART_SetConfig+0x100>
 80019ac:	f8dc 3000 	ldr.w	r3, [ip]
 80019b0:	099d      	lsrs	r5, r3, #6
 80019b2:	e023      	b.n	80019fc <UART_SetConfig+0xec>
 80019b4:	f245 0300 	movw	r3, #20480	; 0x5000
 80019b8:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019bc:	4299      	cmp	r1, r3
 80019be:	d016      	beq.n	80019ee <UART_SetConfig+0xde>
 80019c0:	4571      	cmp	r1, lr
 80019c2:	d018      	beq.n	80019f6 <UART_SetConfig+0xe6>
 80019c4:	f643 0300 	movw	r3, #14336	; 0x3800
 80019c8:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80019cc:	4299      	cmp	r1, r3
 80019ce:	d11f      	bne.n	8001a10 <UART_SetConfig+0x100>
 80019d0:	f8dc 5000 	ldr.w	r5, [ip]
 80019d4:	f646 7330 	movw	r3, #28464	; 0x6f30
 80019d8:	f6c0 0300 	movt	r3, #2048	; 0x800
 80019dc:	e012      	b.n	8001a04 <UART_SetConfig+0xf4>
 80019de:	f8dc 3000 	ldr.w	r3, [ip]
 80019e2:	089d      	lsrs	r5, r3, #2
 80019e4:	e00a      	b.n	80019fc <UART_SetConfig+0xec>
 80019e6:	f8dc 3000 	ldr.w	r3, [ip]
 80019ea:	091d      	lsrs	r5, r3, #4
 80019ec:	e006      	b.n	80019fc <UART_SetConfig+0xec>
 80019ee:	f8dc 3000 	ldr.w	r3, [ip]
 80019f2:	0a1d      	lsrs	r5, r3, #8
 80019f4:	e002      	b.n	80019fc <UART_SetConfig+0xec>
 80019f6:	f8dc 3000 	ldr.w	r3, [ip]
 80019fa:	0a9d      	lsrs	r5, r3, #10
 80019fc:	f646 7340 	movw	r3, #28480	; 0x6f40
 8001a00:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a04:	f005 0503 	and.w	r5, r5, #3
 8001a08:	f085 0502 	eor.w	r5, r5, #2
 8001a0c:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001a10:	4571      	cmp	r1, lr
 8001a12:	d012      	beq.n	8001a3a <UART_SetConfig+0x12a>
 8001a14:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001a18:	d11d      	bne.n	8001a56 <UART_SetConfig+0x146>
 8001a1a:	f005 001f 	and.w	r0, r5, #31
 8001a1e:	2101      	movs	r1, #1
 8001a20:	2808      	cmp	r0, #8
 8001a22:	f200 809f 	bhi.w	8001b64 <UART_SetConfig+0x254>
 8001a26:	e8df f000 	tbb	[pc, r0]
 8001a2a:	4005      	.short	0x4005
 8001a2c:	9d499d43 	.word	0x9d499d43
 8001a30:	004f9d9d 	.word	0x004f9d9d
 8001a34:	f7ff fd11 	bl	800145a <HAL_RCC_GetPCLK1Freq>
 8001a38:	e042      	b.n	8001ac0 <UART_SetConfig+0x1b0>
 8001a3a:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001a3e:	2101      	movs	r1, #1
 8001a40:	2d04      	cmp	r5, #4
 8001a42:	f200 808f 	bhi.w	8001b64 <UART_SetConfig+0x254>
 8001a46:	e8df f005 	tbb	[pc, r5]
 8001a4a:	1c03      	.short	0x1c03
 8001a4c:	001a8d16 	.word	0x001a8d16
 8001a50:	f7ff fd03 	bl	800145a <HAL_RCC_GetPCLK1Freq>
 8001a54:	e011      	b.n	8001a7a <UART_SetConfig+0x16a>
 8001a56:	f005 021f 	and.w	r2, r5, #31
 8001a5a:	2101      	movs	r1, #1
 8001a5c:	2a08      	cmp	r2, #8
 8001a5e:	f200 8081 	bhi.w	8001b64 <UART_SetConfig+0x254>
 8001a62:	e8df f002 	tbb	[pc, r2]
 8001a66:	4305      	.short	0x4305
 8001a68:	7f487f46 	.word	0x7f487f46
 8001a6c:	004e7f7f 	.word	0x004e7f7f
 8001a70:	f7ff fcf3 	bl	800145a <HAL_RCC_GetPCLK1Freq>
 8001a74:	e041      	b.n	8001afa <UART_SetConfig+0x1ea>
 8001a76:	f7ff fc91 	bl	800139c <HAL_RCC_GetSysClockFreq>
 8001a7a:	b910      	cbnz	r0, 8001a82 <UART_SetConfig+0x172>
 8001a7c:	e071      	b.n	8001b62 <UART_SetConfig+0x252>
 8001a7e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001a82:	6862      	ldr	r2, [r4, #4]
 8001a84:	2101      	movs	r1, #1
 8001a86:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001a8a:	4298      	cmp	r0, r3
 8001a8c:	d36a      	bcc.n	8001b64 <UART_SetConfig+0x254>
 8001a8e:	0313      	lsls	r3, r2, #12
 8001a90:	4298      	cmp	r0, r3
 8001a92:	bf9c      	itt	ls
 8001a94:	2101      	movls	r1, #1
 8001a96:	2d04      	cmpls	r5, #4
 8001a98:	d864      	bhi.n	8001b64 <UART_SetConfig+0x254>
 8001a9a:	e8df f005 	tbb	[pc, r5]
 8001a9e:	3e03      	.short	0x3e03
 8001aa0:	00526345 	.word	0x00526345
 8001aa4:	f7ff fcd9 	bl	800145a <HAL_RCC_GetPCLK1Freq>
 8001aa8:	e040      	b.n	8001b2c <UART_SetConfig+0x21c>
 8001aaa:	f7ff fceb 	bl	8001484 <HAL_RCC_GetPCLK2Freq>
 8001aae:	e007      	b.n	8001ac0 <UART_SetConfig+0x1b0>
 8001ab0:	6861      	ldr	r1, [r4, #4]
 8001ab2:	f644 0200 	movw	r2, #18432	; 0x4800
 8001ab6:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001aba:	e008      	b.n	8001ace <UART_SetConfig+0x1be>
 8001abc:	f7ff fc6e 	bl	800139c <HAL_RCC_GetSysClockFreq>
 8001ac0:	6861      	ldr	r1, [r4, #4]
 8001ac2:	0040      	lsls	r0, r0, #1
 8001ac4:	084a      	lsrs	r2, r1, #1
 8001ac6:	e003      	b.n	8001ad0 <UART_SetConfig+0x1c0>
 8001ac8:	6861      	ldr	r1, [r4, #4]
 8001aca:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001ace:	0848      	lsrs	r0, r1, #1
 8001ad0:	4410      	add	r0, r2
 8001ad2:	fbb0 f0f1 	udiv	r0, r0, r1
 8001ad6:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001ada:	4001      	ands	r1, r0
 8001adc:	2910      	cmp	r1, #16
 8001ade:	d303      	bcc.n	8001ae8 <UART_SetConfig+0x1d8>
 8001ae0:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001ae4:	4308      	orrs	r0, r1
 8001ae6:	e03a      	b.n	8001b5e <UART_SetConfig+0x24e>
 8001ae8:	2101      	movs	r1, #1
 8001aea:	e03b      	b.n	8001b64 <UART_SetConfig+0x254>
 8001aec:	f7ff fcca 	bl	8001484 <HAL_RCC_GetPCLK2Freq>
 8001af0:	e003      	b.n	8001afa <UART_SetConfig+0x1ea>
 8001af2:	6862      	ldr	r2, [r4, #4]
 8001af4:	e008      	b.n	8001b08 <UART_SetConfig+0x1f8>
 8001af6:	f7ff fc51 	bl	800139c <HAL_RCC_GetSysClockFreq>
 8001afa:	6862      	ldr	r2, [r4, #4]
 8001afc:	4601      	mov	r1, r0
 8001afe:	0850      	lsrs	r0, r2, #1
 8001b00:	e003      	b.n	8001b0a <UART_SetConfig+0x1fa>
 8001b02:	6862      	ldr	r2, [r4, #4]
 8001b04:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b08:	0851      	lsrs	r1, r2, #1
 8001b0a:	4408      	add	r0, r1
 8001b0c:	fbb0 f0f2 	udiv	r0, r0, r2
 8001b10:	b280      	uxth	r0, r0
 8001b12:	2810      	cmp	r0, #16
 8001b14:	d223      	bcs.n	8001b5e <UART_SetConfig+0x24e>
 8001b16:	2101      	movs	r1, #1
 8001b18:	e024      	b.n	8001b64 <UART_SetConfig+0x254>
 8001b1a:	2000      	movs	r0, #0
 8001b1c:	2100      	movs	r1, #0
 8001b1e:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001b22:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001b26:	e006      	b.n	8001b36 <UART_SetConfig+0x226>
 8001b28:	f7ff fc38 	bl	800139c <HAL_RCC_GetSysClockFreq>
 8001b2c:	6862      	ldr	r2, [r4, #4]
 8001b2e:	0e01      	lsrs	r1, r0, #24
 8001b30:	0853      	lsrs	r3, r2, #1
 8001b32:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001b36:	f141 0100 	adc.w	r1, r1, #0
 8001b3a:	2300      	movs	r3, #0
 8001b3c:	f7fe fb60 	bl	8000200 <__aeabi_uldivmod>
 8001b40:	e005      	b.n	8001b4e <UART_SetConfig+0x23e>
 8001b42:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001b46:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001b4a:	fbb0 f0f2 	udiv	r0, r0, r2
 8001b4e:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001b52:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001b56:	f2c0 020f 	movt	r2, #15
 8001b5a:	4291      	cmp	r1, r2
 8001b5c:	d807      	bhi.n	8001b6e <UART_SetConfig+0x25e>
 8001b5e:	6821      	ldr	r1, [r4, #0]
 8001b60:	60c8      	str	r0, [r1, #12]
 8001b62:	2100      	movs	r1, #0
 8001b64:	2000      	movs	r0, #0
 8001b66:	e9c4 0018 	strd	r0, r0, [r4, #96]	; 0x60
 8001b6a:	4608      	mov	r0, r1
 8001b6c:	bdb0      	pop	{r4, r5, r7, pc}
 8001b6e:	2101      	movs	r1, #1
 8001b70:	e7f8      	b.n	8001b64 <UART_SetConfig+0x254>

08001b72 <UART_AdvFeatureConfig>:
 8001b72:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001b74:	f011 0f01 	tst.w	r1, #1
 8001b78:	d008      	beq.n	8001b8c <UART_AdvFeatureConfig+0x1a>
 8001b7a:	6802      	ldr	r2, [r0, #0]
 8001b7c:	6853      	ldr	r3, [r2, #4]
 8001b7e:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001b82:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001b86:	ea43 030c 	orr.w	r3, r3, ip
 8001b8a:	6053      	str	r3, [r2, #4]
 8001b8c:	078a      	lsls	r2, r1, #30
 8001b8e:	d508      	bpl.n	8001ba2 <UART_AdvFeatureConfig+0x30>
 8001b90:	6802      	ldr	r2, [r0, #0]
 8001b92:	6853      	ldr	r3, [r2, #4]
 8001b94:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001b98:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001b9c:	ea43 030c 	orr.w	r3, r3, ip
 8001ba0:	6053      	str	r3, [r2, #4]
 8001ba2:	074a      	lsls	r2, r1, #29
 8001ba4:	d508      	bpl.n	8001bb8 <UART_AdvFeatureConfig+0x46>
 8001ba6:	6802      	ldr	r2, [r0, #0]
 8001ba8:	6853      	ldr	r3, [r2, #4]
 8001baa:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001bae:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001bb2:	ea43 030c 	orr.w	r3, r3, ip
 8001bb6:	6053      	str	r3, [r2, #4]
 8001bb8:	070a      	lsls	r2, r1, #28
 8001bba:	d508      	bpl.n	8001bce <UART_AdvFeatureConfig+0x5c>
 8001bbc:	6802      	ldr	r2, [r0, #0]
 8001bbe:	6853      	ldr	r3, [r2, #4]
 8001bc0:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001bc4:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001bc8:	ea43 030c 	orr.w	r3, r3, ip
 8001bcc:	6053      	str	r3, [r2, #4]
 8001bce:	06ca      	lsls	r2, r1, #27
 8001bd0:	d508      	bpl.n	8001be4 <UART_AdvFeatureConfig+0x72>
 8001bd2:	6802      	ldr	r2, [r0, #0]
 8001bd4:	6893      	ldr	r3, [r2, #8]
 8001bd6:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001bda:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001bde:	ea43 030c 	orr.w	r3, r3, ip
 8001be2:	6093      	str	r3, [r2, #8]
 8001be4:	068a      	lsls	r2, r1, #26
 8001be6:	d508      	bpl.n	8001bfa <UART_AdvFeatureConfig+0x88>
 8001be8:	6802      	ldr	r2, [r0, #0]
 8001bea:	6893      	ldr	r3, [r2, #8]
 8001bec:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001bf0:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001bf4:	ea43 030c 	orr.w	r3, r3, ip
 8001bf8:	6093      	str	r3, [r2, #8]
 8001bfa:	b580      	push	{r7, lr}
 8001bfc:	466f      	mov	r7, sp
 8001bfe:	064a      	lsls	r2, r1, #25
 8001c00:	d515      	bpl.n	8001c2e <UART_AdvFeatureConfig+0xbc>
 8001c02:	f8d0 e000 	ldr.w	lr, [r0]
 8001c06:	f8de c004 	ldr.w	ip, [lr, #4]
 8001c0a:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001c0c:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001c10:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001c14:	ea42 0203 	orr.w	r2, r2, r3
 8001c18:	f8ce 2004 	str.w	r2, [lr, #4]
 8001c1c:	d107      	bne.n	8001c2e <UART_AdvFeatureConfig+0xbc>
 8001c1e:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001c22:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001c24:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001c28:	431a      	orrs	r2, r3
 8001c2a:	f8ce 2004 	str.w	r2, [lr, #4]
 8001c2e:	0609      	lsls	r1, r1, #24
 8001c30:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001c34:	bf58      	it	pl
 8001c36:	4770      	bxpl	lr
 8001c38:	6801      	ldr	r1, [r0, #0]
 8001c3a:	684a      	ldr	r2, [r1, #4]
 8001c3c:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001c3e:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001c42:	4310      	orrs	r0, r2
 8001c44:	6048      	str	r0, [r1, #4]
 8001c46:	4770      	bx	lr

08001c48 <UART_CheckIdleState>:
 8001c48:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001c4a:	af03      	add	r7, sp, #12
 8001c4c:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001c50:	4604      	mov	r4, r0
 8001c52:	2000      	movs	r0, #0
 8001c54:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001c56:	f7ff fa5f 	bl	8001118 <HAL_GetTick>
 8001c5a:	4605      	mov	r5, r0
 8001c5c:	6820      	ldr	r0, [r4, #0]
 8001c5e:	6801      	ldr	r1, [r0, #0]
 8001c60:	f011 0f08 	tst.w	r1, #8
 8001c64:	d00f      	beq.n	8001c86 <UART_CheckIdleState+0x3e>
 8001c66:	69c1      	ldr	r1, [r0, #28]
 8001c68:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001c6c:	d10b      	bne.n	8001c86 <UART_CheckIdleState+0x3e>
 8001c6e:	2600      	movs	r6, #0
 8001c70:	f7ff fa52 	bl	8001118 <HAL_GetTick>
 8001c74:	1b41      	subs	r1, r0, r5
 8001c76:	6820      	ldr	r0, [r4, #0]
 8001c78:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001c7c:	d11b      	bne.n	8001cb6 <UART_CheckIdleState+0x6e>
 8001c7e:	69c1      	ldr	r1, [r0, #28]
 8001c80:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001c84:	d0f4      	beq.n	8001c70 <UART_CheckIdleState+0x28>
 8001c86:	6801      	ldr	r1, [r0, #0]
 8001c88:	f011 0f04 	tst.w	r1, #4
 8001c8c:	d101      	bne.n	8001c92 <UART_CheckIdleState+0x4a>
 8001c8e:	2600      	movs	r6, #0
 8001c90:	e01a      	b.n	8001cc8 <UART_CheckIdleState+0x80>
 8001c92:	69c0      	ldr	r0, [r0, #28]
 8001c94:	2600      	movs	r6, #0
 8001c96:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001c9a:	d115      	bne.n	8001cc8 <UART_CheckIdleState+0x80>
 8001c9c:	f7ff fa3c 	bl	8001118 <HAL_GetTick>
 8001ca0:	1b41      	subs	r1, r0, r5
 8001ca2:	6820      	ldr	r0, [r4, #0]
 8001ca4:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001ca8:	d105      	bne.n	8001cb6 <UART_CheckIdleState+0x6e>
 8001caa:	69c0      	ldr	r0, [r0, #28]
 8001cac:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001cb0:	d0f4      	beq.n	8001c9c <UART_CheckIdleState+0x54>
 8001cb2:	2600      	movs	r6, #0
 8001cb4:	e008      	b.n	8001cc8 <UART_CheckIdleState+0x80>
 8001cb6:	6801      	ldr	r1, [r0, #0]
 8001cb8:	2603      	movs	r6, #3
 8001cba:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001cbe:	6001      	str	r1, [r0, #0]
 8001cc0:	6881      	ldr	r1, [r0, #8]
 8001cc2:	f021 0101 	bic.w	r1, r1, #1
 8001cc6:	6081      	str	r1, [r0, #8]
 8001cc8:	2020      	movs	r0, #32
 8001cca:	6760      	str	r0, [r4, #116]	; 0x74
 8001ccc:	67a0      	str	r0, [r4, #120]	; 0x78
 8001cce:	2000      	movs	r0, #0
 8001cd0:	6720      	str	r0, [r4, #112]	; 0x70
 8001cd2:	4630      	mov	r0, r6
 8001cd4:	f85d bb04 	ldr.w	fp, [sp], #4
 8001cd8:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001cda <HAL_UART_Transmit>:
 8001cda:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001cdc:	af03      	add	r7, sp, #12
 8001cde:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ce2:	b081      	sub	sp, #4
 8001ce4:	4604      	mov	r4, r0
 8001ce6:	461d      	mov	r5, r3
 8001ce8:	4616      	mov	r6, r2
 8001cea:	4689      	mov	r9, r1
 8001cec:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001cee:	2820      	cmp	r0, #32
 8001cf0:	d109      	bne.n	8001d06 <HAL_UART_Transmit+0x2c>
 8001cf2:	f1b9 0f00 	cmp.w	r9, #0
 8001cf6:	f04f 0001 	mov.w	r0, #1
 8001cfa:	bf18      	it	ne
 8001cfc:	2e00      	cmpne	r6, #0
 8001cfe:	d003      	beq.n	8001d08 <HAL_UART_Transmit+0x2e>
 8001d00:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001d02:	2801      	cmp	r0, #1
 8001d04:	d104      	bne.n	8001d10 <HAL_UART_Transmit+0x36>
 8001d06:	2002      	movs	r0, #2
 8001d08:	b001      	add	sp, #4
 8001d0a:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001d0e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001d10:	2001      	movs	r0, #1
 8001d12:	6720      	str	r0, [r4, #112]	; 0x70
 8001d14:	2000      	movs	r0, #0
 8001d16:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001d18:	2021      	movs	r0, #33	; 0x21
 8001d1a:	6760      	str	r0, [r4, #116]	; 0x74
 8001d1c:	f7ff f9fc 	bl	8001118 <HAL_GetTick>
 8001d20:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
 8001d24:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
 8001d28:	4680      	mov	r8, r0
 8001d2a:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001d2e:	f8d4 b000 	ldr.w	fp, [r4]
 8001d32:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001d36:	2900      	cmp	r1, #0
 8001d38:	d040      	beq.n	8001dbc <HAL_UART_Transmit+0xe2>
 8001d3a:	f105 0a01 	add.w	sl, r5, #1
 8001d3e:	0600      	lsls	r0, r0, #24
 8001d40:	d410      	bmi.n	8001d64 <HAL_UART_Transmit+0x8a>
 8001d42:	465e      	mov	r6, fp
 8001d44:	f1ba 0f00 	cmp.w	sl, #0
 8001d48:	d007      	beq.n	8001d5a <HAL_UART_Transmit+0x80>
 8001d4a:	b33d      	cbz	r5, 8001d9c <HAL_UART_Transmit+0xc2>
 8001d4c:	f7ff f9e4 	bl	8001118 <HAL_GetTick>
 8001d50:	6826      	ldr	r6, [r4, #0]
 8001d52:	eba0 0008 	sub.w	r0, r0, r8
 8001d56:	42a8      	cmp	r0, r5
 8001d58:	d821      	bhi.n	8001d9e <HAL_UART_Transmit+0xc4>
 8001d5a:	69f0      	ldr	r0, [r6, #28]
 8001d5c:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001d60:	d0f0      	beq.n	8001d44 <HAL_UART_Transmit+0x6a>
 8001d62:	e000      	b.n	8001d66 <HAL_UART_Transmit+0x8c>
 8001d64:	465e      	mov	r6, fp
 8001d66:	68a0      	ldr	r0, [r4, #8]
 8001d68:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001d6c:	bf04      	itt	eq
 8001d6e:	6920      	ldreq	r0, [r4, #16]
 8001d70:	2800      	cmpeq	r0, #0
 8001d72:	d002      	beq.n	8001d7a <HAL_UART_Transmit+0xa0>
 8001d74:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001d78:	e003      	b.n	8001d82 <HAL_UART_Transmit+0xa8>
 8001d7a:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001d7e:	f36f 205f 	bfc	r0, #9, #23
 8001d82:	8530      	strh	r0, [r6, #40]	; 0x28
 8001d84:	46b3      	mov	fp, r6
 8001d86:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001d8a:	3801      	subs	r0, #1
 8001d8c:	f8a4 0052 	strh.w	r0, [r4, #82]	; 0x52
 8001d90:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001d94:	69f0      	ldr	r0, [r6, #28]
 8001d96:	2900      	cmp	r1, #0
 8001d98:	d1d1      	bne.n	8001d3e <HAL_UART_Transmit+0x64>
 8001d9a:	e010      	b.n	8001dbe <HAL_UART_Transmit+0xe4>
 8001d9c:	465e      	mov	r6, fp
 8001d9e:	6830      	ldr	r0, [r6, #0]
 8001da0:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001da4:	6030      	str	r0, [r6, #0]
 8001da6:	68b0      	ldr	r0, [r6, #8]
 8001da8:	f020 0001 	bic.w	r0, r0, #1
 8001dac:	60b0      	str	r0, [r6, #8]
 8001dae:	2020      	movs	r0, #32
 8001db0:	6760      	str	r0, [r4, #116]	; 0x74
 8001db2:	67a0      	str	r0, [r4, #120]	; 0x78
 8001db4:	2000      	movs	r0, #0
 8001db6:	6720      	str	r0, [r4, #112]	; 0x70
 8001db8:	2003      	movs	r0, #3
 8001dba:	e7a5      	b.n	8001d08 <HAL_UART_Transmit+0x2e>
 8001dbc:	465e      	mov	r6, fp
 8001dbe:	0640      	lsls	r0, r0, #25
 8001dc0:	d411      	bmi.n	8001de6 <HAL_UART_Transmit+0x10c>
 8001dc2:	f105 0901 	add.w	r9, r5, #1
 8001dc6:	4630      	mov	r0, r6
 8001dc8:	f1b9 0f00 	cmp.w	r9, #0
 8001dcc:	d007      	beq.n	8001dde <HAL_UART_Transmit+0x104>
 8001dce:	b17d      	cbz	r5, 8001df0 <HAL_UART_Transmit+0x116>
 8001dd0:	f7ff f9a2 	bl	8001118 <HAL_GetTick>
 8001dd4:	eba0 0108 	sub.w	r1, r0, r8
 8001dd8:	6820      	ldr	r0, [r4, #0]
 8001dda:	42a9      	cmp	r1, r5
 8001ddc:	d809      	bhi.n	8001df2 <HAL_UART_Transmit+0x118>
 8001dde:	69c1      	ldr	r1, [r0, #28]
 8001de0:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001de4:	d0f0      	beq.n	8001dc8 <HAL_UART_Transmit+0xee>
 8001de6:	2020      	movs	r0, #32
 8001de8:	6760      	str	r0, [r4, #116]	; 0x74
 8001dea:	2000      	movs	r0, #0
 8001dec:	6720      	str	r0, [r4, #112]	; 0x70
 8001dee:	e78b      	b.n	8001d08 <HAL_UART_Transmit+0x2e>
 8001df0:	4630      	mov	r0, r6
 8001df2:	6801      	ldr	r1, [r0, #0]
 8001df4:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001df8:	6001      	str	r1, [r0, #0]
 8001dfa:	6881      	ldr	r1, [r0, #8]
 8001dfc:	f021 0101 	bic.w	r1, r1, #1
 8001e00:	6081      	str	r1, [r0, #8]
 8001e02:	e7d4      	b.n	8001dae <HAL_UART_Transmit+0xd4>

08001e04 <BSP_COM_Init>:
 8001e04:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001e06:	af03      	add	r7, sp, #12
 8001e08:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8001e0c:	b086      	sub	sp, #24
 8001e0e:	4605      	mov	r5, r0
 8001e10:	4688      	mov	r8, r1
 8001e12:	b9f5      	cbnz	r5, 8001e52 <BSP_COM_Init+0x4e>
 8001e14:	f241 004c 	movw	r0, #4172	; 0x104c
 8001e18:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001e1c:	6801      	ldr	r1, [r0, #0]
 8001e1e:	f041 0102 	orr.w	r1, r1, #2
 8001e22:	6001      	str	r1, [r0, #0]
 8001e24:	6801      	ldr	r1, [r0, #0]
 8001e26:	f001 0102 	and.w	r1, r1, #2
 8001e2a:	9101      	str	r1, [sp, #4]
 8001e2c:	9901      	ldr	r1, [sp, #4]
 8001e2e:	6801      	ldr	r1, [r0, #0]
 8001e30:	f041 0102 	orr.w	r1, r1, #2
 8001e34:	6001      	str	r1, [r0, #0]
 8001e36:	6801      	ldr	r1, [r0, #0]
 8001e38:	f001 0102 	and.w	r1, r1, #2
 8001e3c:	9101      	str	r1, [sp, #4]
 8001e3e:	9901      	ldr	r1, [sp, #4]
 8001e40:	6941      	ldr	r1, [r0, #20]
 8001e42:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001e46:	6141      	str	r1, [r0, #20]
 8001e48:	6940      	ldr	r0, [r0, #20]
 8001e4a:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001e4e:	9001      	str	r0, [sp, #4]
 8001e50:	9801      	ldr	r0, [sp, #4]
 8001e52:	2040      	movs	r0, #64	; 0x40
 8001e54:	2402      	movs	r4, #2
 8001e56:	ae01      	add	r6, sp, #4
 8001e58:	f04f 0907 	mov.w	r9, #7
 8001e5c:	9001      	str	r0, [sp, #4]
 8001e5e:	2000      	movs	r0, #0
 8001e60:	9402      	str	r4, [sp, #8]
 8001e62:	9404      	str	r4, [sp, #16]
 8001e64:	4631      	mov	r1, r6
 8001e66:	9003      	str	r0, [sp, #12]
 8001e68:	f240 000c 	movw	r0, #12
 8001e6c:	f8cd 9014 	str.w	r9, [sp, #20]
 8001e70:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001e74:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001e78:	f7ff f9a7 	bl	80011ca <HAL_GPIO_Init>
 8001e7c:	2080      	movs	r0, #128	; 0x80
 8001e7e:	4631      	mov	r1, r6
 8001e80:	e9cd 0401 	strd	r0, r4, [sp, #4]
 8001e84:	f240 0010 	movw	r0, #16
 8001e88:	f8cd 9014 	str.w	r9, [sp, #20]
 8001e8c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001e90:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001e94:	f7ff f999 	bl	80011ca <HAL_GPIO_Init>
 8001e98:	f240 0008 	movw	r0, #8
 8001e9c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ea0:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001ea4:	f8c8 0000 	str.w	r0, [r8]
 8001ea8:	4640      	mov	r0, r8
 8001eaa:	f7ff fcff 	bl	80018ac <HAL_UART_Init>
 8001eae:	b006      	add	sp, #24
 8001eb0:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8001eb4:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001eb6 <initialise_benchmark>:
 8001eb6:	4770      	bx	lr

08001eb8 <benchmark>:
 8001eb8:	b5b0      	push	{r4, r5, r7, lr}
 8001eba:	af02      	add	r7, sp, #8
 8001ebc:	b081      	sub	sp, #4
 8001ebe:	f240 0e14 	movw	lr, #20
 8001ec2:	f640 3c74 	movw	ip, #2932	; 0xb74
 8001ec6:	2200      	movs	r2, #0
 8001ec8:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8001ecc:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8001ed0:	9200      	str	r2, [sp, #0]
 8001ed2:	f85e 3022 	ldr.w	r3, [lr, r2, lsl #2]
 8001ed6:	2100      	movs	r1, #0
 8001ed8:	4610      	mov	r0, r2
 8001eda:	1844      	adds	r4, r0, r1
 8001edc:	eb04 74d4 	add.w	r4, r4, r4, lsr #31
 8001ee0:	1064      	asrs	r4, r4, #1
 8001ee2:	f85e 5024 	ldr.w	r5, [lr, r4, lsl #2]
 8001ee6:	429d      	cmp	r5, r3
 8001ee8:	f04f 0500 	mov.w	r5, #0
 8001eec:	bfb8      	it	lt
 8001eee:	f04f 35ff 	movlt.w	r5, #4294967295	; 0xffffffff
 8001ef2:	bfc8      	it	gt
 8001ef4:	2501      	movgt	r5, #1
 8001ef6:	b165      	cbz	r5, 8001f12 <benchmark+0x5a>
 8001ef8:	f1b5 3fff 	cmp.w	r5, #4294967295	; 0xffffffff
 8001efc:	dd03      	ble.n	8001f06 <benchmark+0x4e>
 8001efe:	1e60      	subs	r0, r4, #1
 8001f00:	42a1      	cmp	r1, r4
 8001f02:	dbea      	blt.n	8001eda <benchmark+0x22>
 8001f04:	e002      	b.n	8001f0c <benchmark+0x54>
 8001f06:	1c61      	adds	r1, r4, #1
 8001f08:	4284      	cmp	r4, r0
 8001f0a:	dbe6      	blt.n	8001eda <benchmark+0x22>
 8001f0c:	1c44      	adds	r4, r0, #1
 8001f0e:	2000      	movs	r0, #0
 8001f10:	e000      	b.n	8001f14 <benchmark+0x5c>
 8001f12:	2001      	movs	r0, #1
 8001f14:	f8cc 0000 	str.w	r0, [ip]
 8001f18:	3201      	adds	r2, #1
 8001f1a:	9800      	ldr	r0, [sp, #0]
 8001f1c:	2a64      	cmp	r2, #100	; 0x64
 8001f1e:	4420      	add	r0, r4
 8001f20:	9000      	str	r0, [sp, #0]
 8001f22:	d1d6      	bne.n	8001ed2 <benchmark+0x1a>
 8001f24:	9800      	ldr	r0, [sp, #0]
 8001f26:	b001      	add	sp, #4
 8001f28:	bdb0      	pop	{r4, r5, r7, pc}

08001f2a <verify_benchmark>:
 8001f2a:	f640 1297 	movw	r2, #2455	; 0x997
 8001f2e:	2100      	movs	r1, #0
 8001f30:	4290      	cmp	r0, r2
 8001f32:	bf08      	it	eq
 8001f34:	2101      	moveq	r1, #1
 8001f36:	4608      	mov	r0, r1
 8001f38:	4770      	bx	lr

08001f3a <__io_putchar>:
 8001f3a:	b580      	push	{r7, lr}
 8001f3c:	466f      	mov	r7, sp
 8001f3e:	b082      	sub	sp, #8
 8001f40:	9001      	str	r0, [sp, #4]
 8001f42:	f640 3078 	movw	r0, #2936	; 0xb78
 8001f46:	a901      	add	r1, sp, #4
 8001f48:	2201      	movs	r2, #1
 8001f4a:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001f4e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f52:	f7ff fec2 	bl	8001cda <HAL_UART_Transmit>
 8001f56:	9801      	ldr	r0, [sp, #4]
 8001f58:	b002      	add	sp, #8
 8001f5a:	bd80      	pop	{r7, pc}

08001f5c <main>:
 8001f5c:	b5b0      	push	{r4, r5, r7, lr}
 8001f5e:	af02      	add	r7, sp, #8
 8001f60:	f640 3178 	movw	r1, #2936	; 0xb78
 8001f64:	f643 0000 	movw	r0, #14336	; 0x3800
 8001f68:	220c      	movs	r2, #12
 8001f6a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001f6e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001f72:	6008      	str	r0, [r1, #0]
 8001f74:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8001f78:	6048      	str	r0, [r1, #4]
 8001f7a:	2000      	movs	r0, #0
 8001f7c:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8001f80:	6108      	str	r0, [r1, #16]
 8001f82:	6248      	str	r0, [r1, #36]	; 0x24
 8001f84:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8001f88:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8001f8c:	2000      	movs	r0, #0
 8001f8e:	f7ff ff39 	bl	8001e04 <BSP_COM_Init>
 8001f92:	f7ff ff90 	bl	8001eb6 <initialise_benchmark>
 8001f96:	f646 7050 	movw	r0, #28496	; 0x6f50
 8001f9a:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f9e:	f000 f949 	bl	8002234 <printf>
 8001fa2:	f247 0007 	movw	r0, #28679	; 0x7007
 8001fa6:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001faa:	f000 f9a5 	bl	80022f8 <puts>
 8001fae:	f7ff f89b 	bl	80010e8 <HAL_Init>
 8001fb2:	f7ff f8b1 	bl	8001118 <HAL_GetTick>
 8001fb6:	4604      	mov	r4, r0
 8001fb8:	f7ff ff7e 	bl	8001eb8 <benchmark>
 8001fbc:	4605      	mov	r5, r0
 8001fbe:	f7ff f8ab 	bl	8001118 <HAL_GetTick>
 8001fc2:	1b04      	subs	r4, r0, r4
 8001fc4:	4628      	mov	r0, r5
 8001fc6:	f7ff ffb0 	bl	8001f2a <verify_benchmark>
 8001fca:	1c41      	adds	r1, r0, #1
 8001fcc:	d006      	beq.n	8001fdc <main+0x80>
 8001fce:	2801      	cmp	r0, #1
 8001fd0:	d109      	bne.n	8001fe6 <main+0x8a>
 8001fd2:	f646 7073 	movw	r0, #28531	; 0x6f73
 8001fd6:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fda:	e008      	b.n	8001fee <main+0x92>
 8001fdc:	f646 7097 	movw	r0, #28567	; 0x6f97
 8001fe0:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fe4:	e003      	b.n	8001fee <main+0x92>
 8001fe6:	f646 70cc 	movw	r0, #28620	; 0x6fcc
 8001fea:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fee:	4621      	mov	r1, r4
 8001ff0:	f000 f920 	bl	8002234 <printf>
 8001ff4:	2000      	movs	r0, #0
 8001ff6:	bdb0      	pop	{r4, r5, r7, pc}

08001ff8 <SysTick_Handler>:
 8001ff8:	b580      	push	{r7, lr}
 8001ffa:	466f      	mov	r7, sp
 8001ffc:	f7ff f884 	bl	8001108 <HAL_IncTick>
 8002000:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002004:	f7ff b8de 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

08002008 <_read>:
 8002008:	b5f0      	push	{r4, r5, r6, r7, lr}
 800200a:	af03      	add	r7, sp, #12
 800200c:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002010:	4614      	mov	r4, r2
 8002012:	460d      	mov	r5, r1
 8002014:	2c01      	cmp	r4, #1
 8002016:	db06      	blt.n	8002026 <_read+0x1e>
 8002018:	4626      	mov	r6, r4
 800201a:	f3af 8000 	nop.w
 800201e:	f805 0b01 	strb.w	r0, [r5], #1
 8002022:	3e01      	subs	r6, #1
 8002024:	d1f9      	bne.n	800201a <_read+0x12>
 8002026:	4620      	mov	r0, r4
 8002028:	f85d bb04 	ldr.w	fp, [sp], #4
 800202c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800202e <_write>:
 800202e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002030:	af03      	add	r7, sp, #12
 8002032:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002036:	4614      	mov	r4, r2
 8002038:	460d      	mov	r5, r1
 800203a:	2c01      	cmp	r4, #1
 800203c:	db06      	blt.n	800204c <_write+0x1e>
 800203e:	4626      	mov	r6, r4
 8002040:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002044:	f7ff ff79 	bl	8001f3a <__io_putchar>
 8002048:	3e01      	subs	r6, #1
 800204a:	d1f9      	bne.n	8002040 <_write+0x12>
 800204c:	4620      	mov	r0, r4
 800204e:	f85d bb04 	ldr.w	fp, [sp], #4
 8002052:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002054 <_sbrk>:
 8002054:	f640 32fc 	movw	r2, #3068	; 0xbfc
 8002058:	4601      	mov	r1, r0
 800205a:	466b      	mov	r3, sp
 800205c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002060:	6810      	ldr	r0, [r2, #0]
 8002062:	2800      	cmp	r0, #0
 8002064:	bf02      	ittt	eq
 8002066:	f640 40a8 	movweq	r0, #3240	; 0xca8
 800206a:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 800206e:	6010      	streq	r0, [r2, #0]
 8002070:	4401      	add	r1, r0
 8002072:	4299      	cmp	r1, r3
 8002074:	bf9c      	itt	ls
 8002076:	6011      	strls	r1, [r2, #0]
 8002078:	4770      	bxls	lr
 800207a:	b580      	push	{r7, lr}
 800207c:	466f      	mov	r7, sp
 800207e:	f000 f865 	bl	800214c <__errno>
 8002082:	210c      	movs	r1, #12
 8002084:	6001      	str	r1, [r0, #0]
 8002086:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800208a:	bd80      	pop	{r7, pc}

0800208c <_close>:
 800208c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002090:	4770      	bx	lr

08002092 <_fstat>:
 8002092:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002096:	6048      	str	r0, [r1, #4]
 8002098:	2000      	movs	r0, #0
 800209a:	4770      	bx	lr

0800209c <_isatty>:
 800209c:	2001      	movs	r0, #1
 800209e:	4770      	bx	lr

080020a0 <_lseek>:
 80020a0:	2000      	movs	r0, #0
 80020a2:	4770      	bx	lr

080020a4 <SystemInit>:
 80020a4:	f64e 5088 	movw	r0, #60808	; 0xed88
 80020a8:	f04f 0c00 	mov.w	ip, #0
 80020ac:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80020b0:	6801      	ldr	r1, [r0, #0]
 80020b2:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80020b6:	6001      	str	r1, [r0, #0]
 80020b8:	f241 0100 	movw	r1, #4096	; 0x1000
 80020bc:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80020c0:	680a      	ldr	r2, [r1, #0]
 80020c2:	f042 0201 	orr.w	r2, r2, #1
 80020c6:	600a      	str	r2, [r1, #0]
 80020c8:	f8c1 c008 	str.w	ip, [r1, #8]
 80020cc:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80020d0:	680b      	ldr	r3, [r1, #0]
 80020d2:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 80020d6:	401a      	ands	r2, r3
 80020d8:	600a      	str	r2, [r1, #0]
 80020da:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80020de:	60ca      	str	r2, [r1, #12]
 80020e0:	680a      	ldr	r2, [r1, #0]
 80020e2:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80020e6:	600a      	str	r2, [r1, #0]
 80020e8:	f8c1 c018 	str.w	ip, [r1, #24]
 80020ec:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80020f0:	f840 1c80 	str.w	r1, [r0, #-128]
 80020f4:	4770      	bx	lr
	...

080020f8 <Reset_Handler>:
 80020f8:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002130 <LoopForever+0x2>
 80020fc:	2100      	movs	r1, #0
 80020fe:	e003      	b.n	8002108 <LoopCopyDataInit>

08002100 <CopyDataInit>:
 8002100:	4b0c      	ldr	r3, [pc, #48]	; (8002134 <LoopForever+0x6>)
 8002102:	585b      	ldr	r3, [r3, r1]
 8002104:	5043      	str	r3, [r0, r1]
 8002106:	3104      	adds	r1, #4

08002108 <LoopCopyDataInit>:
 8002108:	480b      	ldr	r0, [pc, #44]	; (8002138 <LoopForever+0xa>)
 800210a:	4b0c      	ldr	r3, [pc, #48]	; (800213c <LoopForever+0xe>)
 800210c:	1842      	adds	r2, r0, r1
 800210e:	429a      	cmp	r2, r3
 8002110:	d3f6      	bcc.n	8002100 <CopyDataInit>
 8002112:	4a0b      	ldr	r2, [pc, #44]	; (8002140 <LoopForever+0x12>)
 8002114:	e002      	b.n	800211c <LoopFillZerobss>

08002116 <FillZerobss>:
 8002116:	2300      	movs	r3, #0
 8002118:	f842 3b04 	str.w	r3, [r2], #4

0800211c <LoopFillZerobss>:
 800211c:	4b09      	ldr	r3, [pc, #36]	; (8002144 <LoopForever+0x16>)
 800211e:	429a      	cmp	r2, r3
 8002120:	d3f9      	bcc.n	8002116 <FillZerobss>
 8002122:	f7ff ffbf 	bl	80020a4 <SystemInit>
 8002126:	f000 f817 	bl	8002158 <__libc_init_array>
 800212a:	f7ff ff17 	bl	8001f5c <main>

0800212e <LoopForever>:
 800212e:	e7fe      	b.n	800212e <LoopForever>
 8002130:	20018000 	.word	0x20018000
 8002134:	080072b0 	.word	0x080072b0
 8002138:	20000000 	.word	0x20000000
 800213c:	20000b58 	.word	0x20000b58
 8002140:	20000b58 	.word	0x20000b58
 8002144:	20000ca4 	.word	0x20000ca4

08002148 <ADC1_2_IRQHandler>:
 8002148:	e7fe      	b.n	8002148 <ADC1_2_IRQHandler>
	...

0800214c <__errno>:
 800214c:	4b01      	ldr	r3, [pc, #4]	; (8002154 <__errno+0x8>)
 800214e:	6818      	ldr	r0, [r3, #0]
 8002150:	4770      	bx	lr
 8002152:	bf00      	nop
 8002154:	200001a8 	.word	0x200001a8

08002158 <__libc_init_array>:
 8002158:	b570      	push	{r4, r5, r6, lr}
 800215a:	4e0d      	ldr	r6, [pc, #52]	; (8002190 <__libc_init_array+0x38>)
 800215c:	4d0d      	ldr	r5, [pc, #52]	; (8002194 <__libc_init_array+0x3c>)
 800215e:	1b76      	subs	r6, r6, r5
 8002160:	10b6      	asrs	r6, r6, #2
 8002162:	d006      	beq.n	8002172 <__libc_init_array+0x1a>
 8002164:	2400      	movs	r4, #0
 8002166:	3401      	adds	r4, #1
 8002168:	f855 3b04 	ldr.w	r3, [r5], #4
 800216c:	4798      	blx	r3
 800216e:	42a6      	cmp	r6, r4
 8002170:	d1f9      	bne.n	8002166 <__libc_init_array+0xe>
 8002172:	4e09      	ldr	r6, [pc, #36]	; (8002198 <__libc_init_array+0x40>)
 8002174:	4d09      	ldr	r5, [pc, #36]	; (800219c <__libc_init_array+0x44>)
 8002176:	1b76      	subs	r6, r6, r5
 8002178:	f004 fea8 	bl	8006ecc <_init>
 800217c:	10b6      	asrs	r6, r6, #2
 800217e:	d006      	beq.n	800218e <__libc_init_array+0x36>
 8002180:	2400      	movs	r4, #0
 8002182:	3401      	adds	r4, #1
 8002184:	f855 3b04 	ldr.w	r3, [r5], #4
 8002188:	4798      	blx	r3
 800218a:	42a6      	cmp	r6, r4
 800218c:	d1f9      	bne.n	8002182 <__libc_init_array+0x2a>
 800218e:	bd70      	pop	{r4, r5, r6, pc}
 8002190:	080072a0 	.word	0x080072a0
 8002194:	080072a0 	.word	0x080072a0
 8002198:	080072a8 	.word	0x080072a8
 800219c:	080072a0 	.word	0x080072a0

080021a0 <memset>:
 80021a0:	b4f0      	push	{r4, r5, r6, r7}
 80021a2:	0786      	lsls	r6, r0, #30
 80021a4:	d043      	beq.n	800222e <memset+0x8e>
 80021a6:	1e54      	subs	r4, r2, #1
 80021a8:	2a00      	cmp	r2, #0
 80021aa:	d03e      	beq.n	800222a <memset+0x8a>
 80021ac:	b2ca      	uxtb	r2, r1
 80021ae:	4603      	mov	r3, r0
 80021b0:	e002      	b.n	80021b8 <memset+0x18>
 80021b2:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80021b6:	d338      	bcc.n	800222a <memset+0x8a>
 80021b8:	f803 2b01 	strb.w	r2, [r3], #1
 80021bc:	079d      	lsls	r5, r3, #30
 80021be:	d1f8      	bne.n	80021b2 <memset+0x12>
 80021c0:	2c03      	cmp	r4, #3
 80021c2:	d92b      	bls.n	800221c <memset+0x7c>
 80021c4:	b2cd      	uxtb	r5, r1
 80021c6:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80021ca:	2c0f      	cmp	r4, #15
 80021cc:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80021d0:	d916      	bls.n	8002200 <memset+0x60>
 80021d2:	f1a4 0710 	sub.w	r7, r4, #16
 80021d6:	093f      	lsrs	r7, r7, #4
 80021d8:	f103 0620 	add.w	r6, r3, #32
 80021dc:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80021e0:	f103 0210 	add.w	r2, r3, #16
 80021e4:	e942 5504 	strd	r5, r5, [r2, #-16]
 80021e8:	e942 5502 	strd	r5, r5, [r2, #-8]
 80021ec:	3210      	adds	r2, #16
 80021ee:	42b2      	cmp	r2, r6
 80021f0:	d1f8      	bne.n	80021e4 <memset+0x44>
 80021f2:	f004 040f 	and.w	r4, r4, #15
 80021f6:	3701      	adds	r7, #1
 80021f8:	2c03      	cmp	r4, #3
 80021fa:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80021fe:	d90d      	bls.n	800221c <memset+0x7c>
 8002200:	461e      	mov	r6, r3
 8002202:	4622      	mov	r2, r4
 8002204:	3a04      	subs	r2, #4
 8002206:	2a03      	cmp	r2, #3
 8002208:	f846 5b04 	str.w	r5, [r6], #4
 800220c:	d8fa      	bhi.n	8002204 <memset+0x64>
 800220e:	1f22      	subs	r2, r4, #4
 8002210:	f022 0203 	bic.w	r2, r2, #3
 8002214:	3204      	adds	r2, #4
 8002216:	4413      	add	r3, r2
 8002218:	f004 0403 	and.w	r4, r4, #3
 800221c:	b12c      	cbz	r4, 800222a <memset+0x8a>
 800221e:	b2c9      	uxtb	r1, r1
 8002220:	441c      	add	r4, r3
 8002222:	f803 1b01 	strb.w	r1, [r3], #1
 8002226:	429c      	cmp	r4, r3
 8002228:	d1fb      	bne.n	8002222 <memset+0x82>
 800222a:	bcf0      	pop	{r4, r5, r6, r7}
 800222c:	4770      	bx	lr
 800222e:	4614      	mov	r4, r2
 8002230:	4603      	mov	r3, r0
 8002232:	e7c5      	b.n	80021c0 <memset+0x20>

08002234 <printf>:
 8002234:	b40f      	push	{r0, r1, r2, r3}
 8002236:	b500      	push	{lr}
 8002238:	4907      	ldr	r1, [pc, #28]	; (8002258 <printf+0x24>)
 800223a:	b083      	sub	sp, #12
 800223c:	ab04      	add	r3, sp, #16
 800223e:	6808      	ldr	r0, [r1, #0]
 8002240:	f853 2b04 	ldr.w	r2, [r3], #4
 8002244:	6881      	ldr	r1, [r0, #8]
 8002246:	9301      	str	r3, [sp, #4]
 8002248:	f000 f85e 	bl	8002308 <_vfprintf_r>
 800224c:	b003      	add	sp, #12
 800224e:	f85d eb04 	ldr.w	lr, [sp], #4
 8002252:	b004      	add	sp, #16
 8002254:	4770      	bx	lr
 8002256:	bf00      	nop
 8002258:	200001a8 	.word	0x200001a8

0800225c <_puts_r>:
 800225c:	b570      	push	{r4, r5, r6, lr}
 800225e:	4605      	mov	r5, r0
 8002260:	b088      	sub	sp, #32
 8002262:	4608      	mov	r0, r1
 8002264:	460c      	mov	r4, r1
 8002266:	f7fe f9eb 	bl	8000640 <strlen>
 800226a:	4a22      	ldr	r2, [pc, #136]	; (80022f4 <_puts_r+0x98>)
 800226c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800226e:	9404      	str	r4, [sp, #16]
 8002270:	2601      	movs	r6, #1
 8002272:	1c44      	adds	r4, r0, #1
 8002274:	a904      	add	r1, sp, #16
 8002276:	9206      	str	r2, [sp, #24]
 8002278:	2202      	movs	r2, #2
 800227a:	9403      	str	r4, [sp, #12]
 800227c:	9005      	str	r0, [sp, #20]
 800227e:	68ac      	ldr	r4, [r5, #8]
 8002280:	9607      	str	r6, [sp, #28]
 8002282:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002286:	b31b      	cbz	r3, 80022d0 <_puts_r+0x74>
 8002288:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800228a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800228e:	07ce      	lsls	r6, r1, #31
 8002290:	b29a      	uxth	r2, r3
 8002292:	d401      	bmi.n	8002298 <_puts_r+0x3c>
 8002294:	0590      	lsls	r0, r2, #22
 8002296:	d525      	bpl.n	80022e4 <_puts_r+0x88>
 8002298:	0491      	lsls	r1, r2, #18
 800229a:	d406      	bmi.n	80022aa <_puts_r+0x4e>
 800229c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800229e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80022a2:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80022a6:	81a3      	strh	r3, [r4, #12]
 80022a8:	6662      	str	r2, [r4, #100]	; 0x64
 80022aa:	4628      	mov	r0, r5
 80022ac:	aa01      	add	r2, sp, #4
 80022ae:	4621      	mov	r1, r4
 80022b0:	f003 f85e 	bl	8005370 <__sfvwrite_r>
 80022b4:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80022b6:	2800      	cmp	r0, #0
 80022b8:	bf0c      	ite	eq
 80022ba:	250a      	moveq	r5, #10
 80022bc:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80022c0:	07da      	lsls	r2, r3, #31
 80022c2:	d402      	bmi.n	80022ca <_puts_r+0x6e>
 80022c4:	89a3      	ldrh	r3, [r4, #12]
 80022c6:	059b      	lsls	r3, r3, #22
 80022c8:	d506      	bpl.n	80022d8 <_puts_r+0x7c>
 80022ca:	4628      	mov	r0, r5
 80022cc:	b008      	add	sp, #32
 80022ce:	bd70      	pop	{r4, r5, r6, pc}
 80022d0:	4628      	mov	r0, r5
 80022d2:	f002 feb7 	bl	8005044 <__sinit>
 80022d6:	e7d7      	b.n	8002288 <_puts_r+0x2c>
 80022d8:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80022da:	f003 fa05 	bl	80056e8 <__retarget_lock_release_recursive>
 80022de:	4628      	mov	r0, r5
 80022e0:	b008      	add	sp, #32
 80022e2:	bd70      	pop	{r4, r5, r6, pc}
 80022e4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80022e6:	f003 f9fd 	bl	80056e4 <__retarget_lock_acquire_recursive>
 80022ea:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80022ee:	b29a      	uxth	r2, r3
 80022f0:	e7d2      	b.n	8002298 <_puts_r+0x3c>
 80022f2:	bf00      	nop
 80022f4:	08007010 	.word	0x08007010

080022f8 <puts>:
 80022f8:	4b02      	ldr	r3, [pc, #8]	; (8002304 <puts+0xc>)
 80022fa:	4601      	mov	r1, r0
 80022fc:	6818      	ldr	r0, [r3, #0]
 80022fe:	f7ff bfad 	b.w	800225c <_puts_r>
 8002302:	bf00      	nop
 8002304:	200001a8 	.word	0x200001a8

08002308 <_vfprintf_r>:
 8002308:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800230c:	b0d7      	sub	sp, #348	; 0x15c
 800230e:	461c      	mov	r4, r3
 8002310:	4689      	mov	r9, r1
 8002312:	4617      	mov	r7, r2
 8002314:	4605      	mov	r5, r0
 8002316:	9003      	str	r0, [sp, #12]
 8002318:	f003 f9d2 	bl	80056c0 <_localeconv_r>
 800231c:	6803      	ldr	r3, [r0, #0]
 800231e:	9316      	str	r3, [sp, #88]	; 0x58
 8002320:	4618      	mov	r0, r3
 8002322:	f7fe f98d 	bl	8000640 <strlen>
 8002326:	9408      	str	r4, [sp, #32]
 8002328:	9015      	str	r0, [sp, #84]	; 0x54
 800232a:	b11d      	cbz	r5, 8002334 <_vfprintf_r+0x2c>
 800232c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800232e:	2b00      	cmp	r3, #0
 8002330:	f000 8107 	beq.w	8002542 <_vfprintf_r+0x23a>
 8002334:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002338:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800233c:	07c8      	lsls	r0, r1, #31
 800233e:	b293      	uxth	r3, r2
 8002340:	d402      	bmi.n	8002348 <_vfprintf_r+0x40>
 8002342:	0599      	lsls	r1, r3, #22
 8002344:	f140 811f 	bpl.w	8002586 <_vfprintf_r+0x27e>
 8002348:	049e      	lsls	r6, r3, #18
 800234a:	d40a      	bmi.n	8002362 <_vfprintf_r+0x5a>
 800234c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002350:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002354:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002358:	f8a9 300c 	strh.w	r3, [r9, #12]
 800235c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002360:	b29b      	uxth	r3, r3
 8002362:	071d      	lsls	r5, r3, #28
 8002364:	f140 80b2 	bpl.w	80024cc <_vfprintf_r+0x1c4>
 8002368:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800236c:	2a00      	cmp	r2, #0
 800236e:	f000 80ad 	beq.w	80024cc <_vfprintf_r+0x1c4>
 8002372:	f003 021a 	and.w	r2, r3, #26
 8002376:	2a0a      	cmp	r2, #10
 8002378:	f000 80c9 	beq.w	800250e <_vfprintf_r+0x206>
 800237c:	2300      	movs	r3, #0
 800237e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002598 <_vfprintf_r+0x290>
 8002382:	9310      	str	r3, [sp, #64]	; 0x40
 8002384:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002388:	9317      	str	r3, [sp, #92]	; 0x5c
 800238a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 800238e:	931b      	str	r3, [sp, #108]	; 0x6c
 8002390:	9318      	str	r3, [sp, #96]	; 0x60
 8002392:	9305      	str	r3, [sp, #20]
 8002394:	ab2d      	add	r3, sp, #180	; 0xb4
 8002396:	932a      	str	r3, [sp, #168]	; 0xa8
 8002398:	469b      	mov	fp, r3
 800239a:	783b      	ldrb	r3, [r7, #0]
 800239c:	f8cd 901c 	str.w	r9, [sp, #28]
 80023a0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80023a4:	2b00      	cmp	r3, #0
 80023a6:	f000 8259 	beq.w	800285c <_vfprintf_r+0x554>
 80023aa:	2b25      	cmp	r3, #37	; 0x25
 80023ac:	463c      	mov	r4, r7
 80023ae:	d102      	bne.n	80023b6 <_vfprintf_r+0xae>
 80023b0:	e01d      	b.n	80023ee <_vfprintf_r+0xe6>
 80023b2:	2b25      	cmp	r3, #37	; 0x25
 80023b4:	d003      	beq.n	80023be <_vfprintf_r+0xb6>
 80023b6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80023ba:	2b00      	cmp	r3, #0
 80023bc:	d1f9      	bne.n	80023b2 <_vfprintf_r+0xaa>
 80023be:	1be5      	subs	r5, r4, r7
 80023c0:	b18d      	cbz	r5, 80023e6 <_vfprintf_r+0xde>
 80023c2:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 80023c6:	3301      	adds	r3, #1
 80023c8:	442a      	add	r2, r5
 80023ca:	2b07      	cmp	r3, #7
 80023cc:	f8cb 7000 	str.w	r7, [fp]
 80023d0:	f8cb 5004 	str.w	r5, [fp, #4]
 80023d4:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 80023d8:	f300 80ca 	bgt.w	8002570 <_vfprintf_r+0x268>
 80023dc:	f10b 0b08 	add.w	fp, fp, #8
 80023e0:	9b05      	ldr	r3, [sp, #20]
 80023e2:	442b      	add	r3, r5
 80023e4:	9305      	str	r3, [sp, #20]
 80023e6:	7823      	ldrb	r3, [r4, #0]
 80023e8:	2b00      	cmp	r3, #0
 80023ea:	f000 8237 	beq.w	800285c <_vfprintf_r+0x554>
 80023ee:	2300      	movs	r3, #0
 80023f0:	7866      	ldrb	r6, [r4, #1]
 80023f2:	9306      	str	r3, [sp, #24]
 80023f4:	4698      	mov	r8, r3
 80023f6:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80023fa:	f104 0a01 	add.w	sl, r4, #1
 80023fe:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002402:	252b      	movs	r5, #43	; 0x2b
 8002404:	f10a 0a01 	add.w	sl, sl, #1
 8002408:	f1a6 0320 	sub.w	r3, r6, #32
 800240c:	2b5a      	cmp	r3, #90	; 0x5a
 800240e:	f200 842a 	bhi.w	8002c66 <_vfprintf_r+0x95e>
 8002412:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002416:	03aa      	.short	0x03aa
 8002418:	04280428 	.word	0x04280428
 800241c:	0428029c 	.word	0x0428029c
 8002420:	04280428 	.word	0x04280428
 8002424:	042802a7 	.word	0x042802a7
 8002428:	02c60428 	.word	0x02c60428
 800242c:	042802d2 	.word	0x042802d2
 8002430:	02dc02d7 	.word	0x02dc02d7
 8002434:	02f60428 	.word	0x02f60428
 8002438:	026d026d 	.word	0x026d026d
 800243c:	026d026d 	.word	0x026d026d
 8002440:	026d026d 	.word	0x026d026d
 8002444:	026d026d 	.word	0x026d026d
 8002448:	0428026d 	.word	0x0428026d
 800244c:	04280428 	.word	0x04280428
 8002450:	04280428 	.word	0x04280428
 8002454:	04280428 	.word	0x04280428
 8002458:	042802fb 	.word	0x042802fb
 800245c:	03f3033c 	.word	0x03f3033c
 8002460:	02fb02fb 	.word	0x02fb02fb
 8002464:	042802fb 	.word	0x042802fb
 8002468:	04280428 	.word	0x04280428
 800246c:	03ee0428 	.word	0x03ee0428
 8002470:	04280428 	.word	0x04280428
 8002474:	0428009a 	.word	0x0428009a
 8002478:	04280428 	.word	0x04280428
 800247c:	04280350 	.word	0x04280350
 8002480:	04280379 	.word	0x04280379
 8002484:	03900428 	.word	0x03900428
 8002488:	04280428 	.word	0x04280428
 800248c:	04280428 	.word	0x04280428
 8002490:	04280428 	.word	0x04280428
 8002494:	04280428 	.word	0x04280428
 8002498:	042802fb 	.word	0x042802fb
 800249c:	00c5033c 	.word	0x00c5033c
 80024a0:	02fb02fb 	.word	0x02fb02fb
 80024a4:	03d102fb 	.word	0x03d102fb
 80024a8:	007000c5 	.word	0x007000c5
 80024ac:	03b50428 	.word	0x03b50428
 80024b0:	03c20428 	.word	0x03c20428
 80024b4:	03de009c 	.word	0x03de009c
 80024b8:	04280070 	.word	0x04280070
 80024bc:	00720350 	.word	0x00720350
 80024c0:	0428022c 	.word	0x0428022c
 80024c4:	027c0428 	.word	0x027c0428
 80024c8:	00720428 	.word	0x00720428
 80024cc:	4649      	mov	r1, r9
 80024ce:	9803      	ldr	r0, [sp, #12]
 80024d0:	f001 fc9a 	bl	8003e08 <__swsetup_r>
 80024d4:	b1a0      	cbz	r0, 8002500 <_vfprintf_r+0x1f8>
 80024d6:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 80024da:	07d8      	lsls	r0, r3, #31
 80024dc:	d404      	bmi.n	80024e8 <_vfprintf_r+0x1e0>
 80024de:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80024e2:	0599      	lsls	r1, r3, #22
 80024e4:	f140 83b7 	bpl.w	8002c56 <_vfprintf_r+0x94e>
 80024e8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80024ec:	9305      	str	r3, [sp, #20]
 80024ee:	9805      	ldr	r0, [sp, #20]
 80024f0:	b057      	add	sp, #348	; 0x15c
 80024f2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80024f6:	f048 0820 	orr.w	r8, r8, #32
 80024fa:	f89a 6000 	ldrb.w	r6, [sl]
 80024fe:	e781      	b.n	8002404 <_vfprintf_r+0xfc>
 8002500:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002504:	f003 021a 	and.w	r2, r3, #26
 8002508:	2a0a      	cmp	r2, #10
 800250a:	f47f af37 	bne.w	800237c <_vfprintf_r+0x74>
 800250e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002512:	2a00      	cmp	r2, #0
 8002514:	f6ff af32 	blt.w	800237c <_vfprintf_r+0x74>
 8002518:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800251c:	07d2      	lsls	r2, r2, #31
 800251e:	d405      	bmi.n	800252c <_vfprintf_r+0x224>
 8002520:	059b      	lsls	r3, r3, #22
 8002522:	d403      	bmi.n	800252c <_vfprintf_r+0x224>
 8002524:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002528:	f003 f8de 	bl	80056e8 <__retarget_lock_release_recursive>
 800252c:	4623      	mov	r3, r4
 800252e:	463a      	mov	r2, r7
 8002530:	4649      	mov	r1, r9
 8002532:	9803      	ldr	r0, [sp, #12]
 8002534:	f001 fc26 	bl	8003d84 <__sbprintf>
 8002538:	9005      	str	r0, [sp, #20]
 800253a:	9805      	ldr	r0, [sp, #20]
 800253c:	b057      	add	sp, #348	; 0x15c
 800253e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002542:	9803      	ldr	r0, [sp, #12]
 8002544:	f002 fd7e 	bl	8005044 <__sinit>
 8002548:	e6f4      	b.n	8002334 <_vfprintf_r+0x2c>
 800254a:	f048 0810 	orr.w	r8, r8, #16
 800254e:	f018 0f20 	tst.w	r8, #32
 8002552:	f000 836c 	beq.w	8002c2e <_vfprintf_r+0x926>
 8002556:	9c08      	ldr	r4, [sp, #32]
 8002558:	3407      	adds	r4, #7
 800255a:	f024 0307 	bic.w	r3, r4, #7
 800255e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002562:	f103 0208 	add.w	r2, r3, #8
 8002566:	9208      	str	r2, [sp, #32]
 8002568:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800256c:	2200      	movs	r2, #0
 800256e:	e18c      	b.n	800288a <_vfprintf_r+0x582>
 8002570:	aa2a      	add	r2, sp, #168	; 0xa8
 8002572:	9907      	ldr	r1, [sp, #28]
 8002574:	9803      	ldr	r0, [sp, #12]
 8002576:	f004 f9f5 	bl	8006964 <__sprint_r>
 800257a:	2800      	cmp	r0, #0
 800257c:	f041 8376 	bne.w	8003c6c <_vfprintf_r+0x1964>
 8002580:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002584:	e72c      	b.n	80023e0 <_vfprintf_r+0xd8>
 8002586:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800258a:	f003 f8ab 	bl	80056e4 <__retarget_lock_acquire_recursive>
 800258e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002592:	b293      	uxth	r3, r2
 8002594:	e6d8      	b.n	8002348 <_vfprintf_r+0x40>
 8002596:	bf00      	nop
	...
 80025a0:	4643      	mov	r3, r8
 80025a2:	069f      	lsls	r7, r3, #26
 80025a4:	f140 832f 	bpl.w	8002c06 <_vfprintf_r+0x8fe>
 80025a8:	9c08      	ldr	r4, [sp, #32]
 80025aa:	3407      	adds	r4, #7
 80025ac:	f024 0407 	bic.w	r4, r4, #7
 80025b0:	e9d4 0100 	ldrd	r0, r1, [r4]
 80025b4:	f104 0208 	add.w	r2, r4, #8
 80025b8:	9208      	str	r2, [sp, #32]
 80025ba:	4604      	mov	r4, r0
 80025bc:	460d      	mov	r5, r1
 80025be:	2800      	cmp	r0, #0
 80025c0:	f171 0200 	sbcs.w	r2, r1, #0
 80025c4:	da05      	bge.n	80025d2 <_vfprintf_r+0x2ca>
 80025c6:	222d      	movs	r2, #45	; 0x2d
 80025c8:	4264      	negs	r4, r4
 80025ca:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80025ce:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80025d2:	aa56      	add	r2, sp, #344	; 0x158
 80025d4:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80025d8:	9204      	str	r2, [sp, #16]
 80025da:	f000 84b2 	beq.w	8002f42 <_vfprintf_r+0xc3a>
 80025de:	2201      	movs	r2, #1
 80025e0:	ea54 0105 	orrs.w	r1, r4, r5
 80025e4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 80025e8:	f040 8159 	bne.w	800289e <_vfprintf_r+0x596>
 80025ec:	f1b9 0f00 	cmp.w	r9, #0
 80025f0:	f040 8619 	bne.w	8003226 <_vfprintf_r+0xf1e>
 80025f4:	2a00      	cmp	r2, #0
 80025f6:	f040 8508 	bne.w	800300a <_vfprintf_r+0xd02>
 80025fa:	f013 0301 	ands.w	r3, r3, #1
 80025fe:	af56      	add	r7, sp, #344	; 0x158
 8002600:	9309      	str	r3, [sp, #36]	; 0x24
 8002602:	d002      	beq.n	800260a <_vfprintf_r+0x302>
 8002604:	2330      	movs	r3, #48	; 0x30
 8002606:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800260a:	2300      	movs	r3, #0
 800260c:	930a      	str	r3, [sp, #40]	; 0x28
 800260e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002610:	9314      	str	r3, [sp, #80]	; 0x50
 8002612:	9311      	str	r3, [sp, #68]	; 0x44
 8002614:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002616:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800261a:	454b      	cmp	r3, r9
 800261c:	bfb8      	it	lt
 800261e:	464b      	movlt	r3, r9
 8002620:	9304      	str	r3, [sp, #16]
 8002622:	b112      	cbz	r2, 800262a <_vfprintf_r+0x322>
 8002624:	9b04      	ldr	r3, [sp, #16]
 8002626:	3301      	adds	r3, #1
 8002628:	9304      	str	r3, [sp, #16]
 800262a:	f018 0302 	ands.w	r3, r8, #2
 800262e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002630:	d002      	beq.n	8002638 <_vfprintf_r+0x330>
 8002632:	9b04      	ldr	r3, [sp, #16]
 8002634:	3302      	adds	r3, #2
 8002636:	9304      	str	r3, [sp, #16]
 8002638:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 800263c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800263e:	930e      	str	r3, [sp, #56]	; 0x38
 8002640:	d13f      	bne.n	80026c2 <_vfprintf_r+0x3ba>
 8002642:	9b06      	ldr	r3, [sp, #24]
 8002644:	9904      	ldr	r1, [sp, #16]
 8002646:	1a5d      	subs	r5, r3, r1
 8002648:	2d00      	cmp	r5, #0
 800264a:	dd3a      	ble.n	80026c2 <_vfprintf_r+0x3ba>
 800264c:	2d10      	cmp	r5, #16
 800264e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002650:	dd29      	ble.n	80026a6 <_vfprintf_r+0x39e>
 8002652:	4659      	mov	r1, fp
 8002654:	4620      	mov	r0, r4
 8002656:	9620      	str	r6, [sp, #128]	; 0x80
 8002658:	2310      	movs	r3, #16
 800265a:	9c03      	ldr	r4, [sp, #12]
 800265c:	9e07      	ldr	r6, [sp, #28]
 800265e:	46bb      	mov	fp, r7
 8002660:	e004      	b.n	800266c <_vfprintf_r+0x364>
 8002662:	3d10      	subs	r5, #16
 8002664:	2d10      	cmp	r5, #16
 8002666:	f101 0108 	add.w	r1, r1, #8
 800266a:	dd18      	ble.n	800269e <_vfprintf_r+0x396>
 800266c:	3201      	adds	r2, #1
 800266e:	4fba      	ldr	r7, [pc, #744]	; (8002958 <_vfprintf_r+0x650>)
 8002670:	3010      	adds	r0, #16
 8002672:	2a07      	cmp	r2, #7
 8002674:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002678:	e9c1 7300 	strd	r7, r3, [r1]
 800267c:	ddf1      	ble.n	8002662 <_vfprintf_r+0x35a>
 800267e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002680:	4631      	mov	r1, r6
 8002682:	4620      	mov	r0, r4
 8002684:	930c      	str	r3, [sp, #48]	; 0x30
 8002686:	f004 f96d 	bl	8006964 <__sprint_r>
 800268a:	2800      	cmp	r0, #0
 800268c:	f040 843d 	bne.w	8002f0a <_vfprintf_r+0xc02>
 8002690:	3d10      	subs	r5, #16
 8002692:	2d10      	cmp	r5, #16
 8002694:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002698:	a92d      	add	r1, sp, #180	; 0xb4
 800269a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800269c:	dce6      	bgt.n	800266c <_vfprintf_r+0x364>
 800269e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80026a0:	465f      	mov	r7, fp
 80026a2:	4604      	mov	r4, r0
 80026a4:	468b      	mov	fp, r1
 80026a6:	3201      	adds	r2, #1
 80026a8:	4bab      	ldr	r3, [pc, #684]	; (8002958 <_vfprintf_r+0x650>)
 80026aa:	442c      	add	r4, r5
 80026ac:	2a07      	cmp	r2, #7
 80026ae:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80026b2:	e9cb 3500 	strd	r3, r5, [fp]
 80026b6:	f300 84ff 	bgt.w	80030b8 <_vfprintf_r+0xdb0>
 80026ba:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80026be:	f10b 0b08 	add.w	fp, fp, #8
 80026c2:	b172      	cbz	r2, 80026e2 <_vfprintf_r+0x3da>
 80026c4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80026c6:	3201      	adds	r2, #1
 80026c8:	3401      	adds	r4, #1
 80026ca:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 80026ce:	2101      	movs	r1, #1
 80026d0:	2a07      	cmp	r2, #7
 80026d2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80026d6:	e9cb 0100 	strd	r0, r1, [fp]
 80026da:	f300 8418 	bgt.w	8002f0e <_vfprintf_r+0xc06>
 80026de:	f10b 0b08 	add.w	fp, fp, #8
 80026e2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80026e4:	b16b      	cbz	r3, 8002702 <_vfprintf_r+0x3fa>
 80026e6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80026e8:	3301      	adds	r3, #1
 80026ea:	3402      	adds	r4, #2
 80026ec:	a923      	add	r1, sp, #140	; 0x8c
 80026ee:	2202      	movs	r2, #2
 80026f0:	2b07      	cmp	r3, #7
 80026f2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80026f6:	e9cb 1200 	strd	r1, r2, [fp]
 80026fa:	f300 8415 	bgt.w	8002f28 <_vfprintf_r+0xc20>
 80026fe:	f10b 0b08 	add.w	fp, fp, #8
 8002702:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002704:	2b80      	cmp	r3, #128	; 0x80
 8002706:	f000 8331 	beq.w	8002d6c <_vfprintf_r+0xa64>
 800270a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800270c:	eba9 0503 	sub.w	r5, r9, r3
 8002710:	2d00      	cmp	r5, #0
 8002712:	dd37      	ble.n	8002784 <_vfprintf_r+0x47c>
 8002714:	2d10      	cmp	r5, #16
 8002716:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002718:	4b90      	ldr	r3, [pc, #576]	; (800295c <_vfprintf_r+0x654>)
 800271a:	dd28      	ble.n	800276e <_vfprintf_r+0x466>
 800271c:	4659      	mov	r1, fp
 800271e:	4620      	mov	r0, r4
 8002720:	46bb      	mov	fp, r7
 8002722:	f04f 0910 	mov.w	r9, #16
 8002726:	4637      	mov	r7, r6
 8002728:	461c      	mov	r4, r3
 800272a:	9e07      	ldr	r6, [sp, #28]
 800272c:	e004      	b.n	8002738 <_vfprintf_r+0x430>
 800272e:	3d10      	subs	r5, #16
 8002730:	2d10      	cmp	r5, #16
 8002732:	f101 0108 	add.w	r1, r1, #8
 8002736:	dd15      	ble.n	8002764 <_vfprintf_r+0x45c>
 8002738:	3201      	adds	r2, #1
 800273a:	3010      	adds	r0, #16
 800273c:	2a07      	cmp	r2, #7
 800273e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002742:	e9c1 4900 	strd	r4, r9, [r1]
 8002746:	ddf2      	ble.n	800272e <_vfprintf_r+0x426>
 8002748:	aa2a      	add	r2, sp, #168	; 0xa8
 800274a:	4631      	mov	r1, r6
 800274c:	9803      	ldr	r0, [sp, #12]
 800274e:	f004 f909 	bl	8006964 <__sprint_r>
 8002752:	2800      	cmp	r0, #0
 8002754:	f040 83d9 	bne.w	8002f0a <_vfprintf_r+0xc02>
 8002758:	3d10      	subs	r5, #16
 800275a:	2d10      	cmp	r5, #16
 800275c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002760:	a92d      	add	r1, sp, #180	; 0xb4
 8002762:	dce9      	bgt.n	8002738 <_vfprintf_r+0x430>
 8002764:	463e      	mov	r6, r7
 8002766:	4623      	mov	r3, r4
 8002768:	465f      	mov	r7, fp
 800276a:	4604      	mov	r4, r0
 800276c:	468b      	mov	fp, r1
 800276e:	3201      	adds	r2, #1
 8002770:	442c      	add	r4, r5
 8002772:	2a07      	cmp	r2, #7
 8002774:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002778:	e9cb 3500 	strd	r3, r5, [fp]
 800277c:	f300 83ef 	bgt.w	8002f5e <_vfprintf_r+0xc56>
 8002780:	f10b 0b08 	add.w	fp, fp, #8
 8002784:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002788:	f040 8280 	bne.w	8002c8c <_vfprintf_r+0x984>
 800278c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800278e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002790:	f8cb 7000 	str.w	r7, [fp]
 8002794:	3301      	adds	r3, #1
 8002796:	4414      	add	r4, r2
 8002798:	2b07      	cmp	r3, #7
 800279a:	942c      	str	r4, [sp, #176]	; 0xb0
 800279c:	f8cb 2004 	str.w	r2, [fp, #4]
 80027a0:	932b      	str	r3, [sp, #172]	; 0xac
 80027a2:	f300 8392 	bgt.w	8002eca <_vfprintf_r+0xbc2>
 80027a6:	f10b 0b08 	add.w	fp, fp, #8
 80027aa:	f018 0f04 	tst.w	r8, #4
 80027ae:	d03b      	beq.n	8002828 <_vfprintf_r+0x520>
 80027b0:	9b06      	ldr	r3, [sp, #24]
 80027b2:	9a04      	ldr	r2, [sp, #16]
 80027b4:	1a9d      	subs	r5, r3, r2
 80027b6:	2d00      	cmp	r5, #0
 80027b8:	dd36      	ble.n	8002828 <_vfprintf_r+0x520>
 80027ba:	2d10      	cmp	r5, #16
 80027bc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80027be:	dd21      	ble.n	8002804 <_vfprintf_r+0x4fc>
 80027c0:	2610      	movs	r6, #16
 80027c2:	9f03      	ldr	r7, [sp, #12]
 80027c4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 80027c8:	e004      	b.n	80027d4 <_vfprintf_r+0x4cc>
 80027ca:	3d10      	subs	r5, #16
 80027cc:	2d10      	cmp	r5, #16
 80027ce:	f10b 0b08 	add.w	fp, fp, #8
 80027d2:	dd17      	ble.n	8002804 <_vfprintf_r+0x4fc>
 80027d4:	3301      	adds	r3, #1
 80027d6:	4a60      	ldr	r2, [pc, #384]	; (8002958 <_vfprintf_r+0x650>)
 80027d8:	3410      	adds	r4, #16
 80027da:	2b07      	cmp	r3, #7
 80027dc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80027e0:	e9cb 2600 	strd	r2, r6, [fp]
 80027e4:	ddf1      	ble.n	80027ca <_vfprintf_r+0x4c2>
 80027e6:	aa2a      	add	r2, sp, #168	; 0xa8
 80027e8:	4641      	mov	r1, r8
 80027ea:	4638      	mov	r0, r7
 80027ec:	f004 f8ba 	bl	8006964 <__sprint_r>
 80027f0:	2800      	cmp	r0, #0
 80027f2:	f040 856c 	bne.w	80032ce <_vfprintf_r+0xfc6>
 80027f6:	3d10      	subs	r5, #16
 80027f8:	2d10      	cmp	r5, #16
 80027fa:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80027fe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002802:	dce7      	bgt.n	80027d4 <_vfprintf_r+0x4cc>
 8002804:	3301      	adds	r3, #1
 8002806:	4a54      	ldr	r2, [pc, #336]	; (8002958 <_vfprintf_r+0x650>)
 8002808:	442c      	add	r4, r5
 800280a:	2b07      	cmp	r3, #7
 800280c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002810:	e9cb 2500 	strd	r2, r5, [fp]
 8002814:	dd08      	ble.n	8002828 <_vfprintf_r+0x520>
 8002816:	aa2a      	add	r2, sp, #168	; 0xa8
 8002818:	9907      	ldr	r1, [sp, #28]
 800281a:	9803      	ldr	r0, [sp, #12]
 800281c:	f004 f8a2 	bl	8006964 <__sprint_r>
 8002820:	2800      	cmp	r0, #0
 8002822:	f040 82e9 	bne.w	8002df8 <_vfprintf_r+0xaf0>
 8002826:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002828:	9904      	ldr	r1, [sp, #16]
 800282a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 800282e:	428a      	cmp	r2, r1
 8002830:	bfac      	ite	ge
 8002832:	189b      	addge	r3, r3, r2
 8002834:	185b      	addlt	r3, r3, r1
 8002836:	9305      	str	r3, [sp, #20]
 8002838:	2c00      	cmp	r4, #0
 800283a:	f040 82d5 	bne.w	8002de8 <_vfprintf_r+0xae0>
 800283e:	2300      	movs	r3, #0
 8002840:	932b      	str	r3, [sp, #172]	; 0xac
 8002842:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002844:	b11b      	cbz	r3, 800284e <_vfprintf_r+0x546>
 8002846:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002848:	9803      	ldr	r0, [sp, #12]
 800284a:	f002 fc9d 	bl	8005188 <_free_r>
 800284e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002852:	4657      	mov	r7, sl
 8002854:	783b      	ldrb	r3, [r7, #0]
 8002856:	2b00      	cmp	r3, #0
 8002858:	f47f ada7 	bne.w	80023aa <_vfprintf_r+0xa2>
 800285c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 800285e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002862:	2b00      	cmp	r3, #0
 8002864:	f041 80e7 	bne.w	8003a36 <_vfprintf_r+0x172e>
 8002868:	2300      	movs	r3, #0
 800286a:	932b      	str	r3, [sp, #172]	; 0xac
 800286c:	e2cb      	b.n	8002e06 <_vfprintf_r+0xafe>
 800286e:	4643      	mov	r3, r8
 8002870:	069a      	lsls	r2, r3, #26
 8002872:	f140 814e 	bpl.w	8002b12 <_vfprintf_r+0x80a>
 8002876:	9c08      	ldr	r4, [sp, #32]
 8002878:	3407      	adds	r4, #7
 800287a:	f024 0207 	bic.w	r2, r4, #7
 800287e:	f102 0108 	add.w	r1, r2, #8
 8002882:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002886:	9108      	str	r1, [sp, #32]
 8002888:	2201      	movs	r2, #1
 800288a:	2100      	movs	r1, #0
 800288c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002890:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002894:	a956      	add	r1, sp, #344	; 0x158
 8002896:	9104      	str	r1, [sp, #16]
 8002898:	f47f aea2 	bne.w	80025e0 <_vfprintf_r+0x2d8>
 800289c:	4698      	mov	r8, r3
 800289e:	2a01      	cmp	r2, #1
 80028a0:	f000 8350 	beq.w	8002f44 <_vfprintf_r+0xc3c>
 80028a4:	2a02      	cmp	r2, #2
 80028a6:	f000 831b 	beq.w	8002ee0 <_vfprintf_r+0xbd8>
 80028aa:	a956      	add	r1, sp, #344	; 0x158
 80028ac:	e000      	b.n	80028b0 <_vfprintf_r+0x5a8>
 80028ae:	4639      	mov	r1, r7
 80028b0:	08e2      	lsrs	r2, r4, #3
 80028b2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 80028b6:	08e8      	lsrs	r0, r5, #3
 80028b8:	f004 0307 	and.w	r3, r4, #7
 80028bc:	4605      	mov	r5, r0
 80028be:	4614      	mov	r4, r2
 80028c0:	3330      	adds	r3, #48	; 0x30
 80028c2:	ea54 0205 	orrs.w	r2, r4, r5
 80028c6:	f801 3c01 	strb.w	r3, [r1, #-1]
 80028ca:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 80028ce:	d1ee      	bne.n	80028ae <_vfprintf_r+0x5a6>
 80028d0:	f018 0f01 	tst.w	r8, #1
 80028d4:	f000 8314 	beq.w	8002f00 <_vfprintf_r+0xbf8>
 80028d8:	2b30      	cmp	r3, #48	; 0x30
 80028da:	f000 8311 	beq.w	8002f00 <_vfprintf_r+0xbf8>
 80028de:	9a04      	ldr	r2, [sp, #16]
 80028e0:	3902      	subs	r1, #2
 80028e2:	2330      	movs	r3, #48	; 0x30
 80028e4:	1a52      	subs	r2, r2, r1
 80028e6:	f807 3c01 	strb.w	r3, [r7, #-1]
 80028ea:	9209      	str	r2, [sp, #36]	; 0x24
 80028ec:	460f      	mov	r7, r1
 80028ee:	e68c      	b.n	800260a <_vfprintf_r+0x302>
 80028f0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80028f4:	2200      	movs	r2, #0
 80028f6:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80028fa:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 80028fe:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002902:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002906:	2b09      	cmp	r3, #9
 8002908:	d9f5      	bls.n	80028f6 <_vfprintf_r+0x5ee>
 800290a:	9206      	str	r2, [sp, #24]
 800290c:	e57c      	b.n	8002408 <_vfprintf_r+0x100>
 800290e:	4b14      	ldr	r3, [pc, #80]	; (8002960 <_vfprintf_r+0x658>)
 8002910:	9317      	str	r3, [sp, #92]	; 0x5c
 8002912:	f018 0f20 	tst.w	r8, #32
 8002916:	f000 8114 	beq.w	8002b42 <_vfprintf_r+0x83a>
 800291a:	9c08      	ldr	r4, [sp, #32]
 800291c:	3407      	adds	r4, #7
 800291e:	f024 0307 	bic.w	r3, r4, #7
 8002922:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002926:	f103 0208 	add.w	r2, r3, #8
 800292a:	9208      	str	r2, [sp, #32]
 800292c:	f018 0f01 	tst.w	r8, #1
 8002930:	d009      	beq.n	8002946 <_vfprintf_r+0x63e>
 8002932:	ea54 0305 	orrs.w	r3, r4, r5
 8002936:	d006      	beq.n	8002946 <_vfprintf_r+0x63e>
 8002938:	2330      	movs	r3, #48	; 0x30
 800293a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 800293e:	f048 0802 	orr.w	r8, r8, #2
 8002942:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002946:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800294a:	2202      	movs	r2, #2
 800294c:	e79d      	b.n	800288a <_vfprintf_r+0x582>
 800294e:	f048 0801 	orr.w	r8, r8, #1
 8002952:	f89a 6000 	ldrb.w	r6, [sl]
 8002956:	e555      	b.n	8002404 <_vfprintf_r+0xfc>
 8002958:	08007058 	.word	0x08007058
 800295c:	08007068 	.word	0x08007068
 8002960:	08007024 	.word	0x08007024
 8002964:	9e03      	ldr	r6, [sp, #12]
 8002966:	4630      	mov	r0, r6
 8002968:	f002 feaa 	bl	80056c0 <_localeconv_r>
 800296c:	6843      	ldr	r3, [r0, #4]
 800296e:	9318      	str	r3, [sp, #96]	; 0x60
 8002970:	4618      	mov	r0, r3
 8002972:	f7fd fe65 	bl	8000640 <strlen>
 8002976:	901b      	str	r0, [sp, #108]	; 0x6c
 8002978:	4604      	mov	r4, r0
 800297a:	4630      	mov	r0, r6
 800297c:	f002 fea0 	bl	80056c0 <_localeconv_r>
 8002980:	6883      	ldr	r3, [r0, #8]
 8002982:	931a      	str	r3, [sp, #104]	; 0x68
 8002984:	2c00      	cmp	r4, #0
 8002986:	f43f adb8 	beq.w	80024fa <_vfprintf_r+0x1f2>
 800298a:	f89a 6000 	ldrb.w	r6, [sl]
 800298e:	2b00      	cmp	r3, #0
 8002990:	f43f ad38 	beq.w	8002404 <_vfprintf_r+0xfc>
 8002994:	781b      	ldrb	r3, [r3, #0]
 8002996:	2b00      	cmp	r3, #0
 8002998:	f43f ad34 	beq.w	8002404 <_vfprintf_r+0xfc>
 800299c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 80029a0:	e530      	b.n	8002404 <_vfprintf_r+0xfc>
 80029a2:	9b08      	ldr	r3, [sp, #32]
 80029a4:	f89a 6000 	ldrb.w	r6, [sl]
 80029a8:	681a      	ldr	r2, [r3, #0]
 80029aa:	9206      	str	r2, [sp, #24]
 80029ac:	2a00      	cmp	r2, #0
 80029ae:	f103 0304 	add.w	r3, r3, #4
 80029b2:	f2c0 8697 	blt.w	80036e4 <_vfprintf_r+0x13dc>
 80029b6:	9308      	str	r3, [sp, #32]
 80029b8:	e524      	b.n	8002404 <_vfprintf_r+0xfc>
 80029ba:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80029be:	f89a 6000 	ldrb.w	r6, [sl]
 80029c2:	e51f      	b.n	8002404 <_vfprintf_r+0xfc>
 80029c4:	f89a 6000 	ldrb.w	r6, [sl]
 80029c8:	f048 0804 	orr.w	r8, r8, #4
 80029cc:	e51a      	b.n	8002404 <_vfprintf_r+0xfc>
 80029ce:	f89a 6000 	ldrb.w	r6, [sl]
 80029d2:	2e2a      	cmp	r6, #42	; 0x2a
 80029d4:	f10a 0201 	add.w	r2, sl, #1
 80029d8:	f001 81b0 	beq.w	8003d3c <_vfprintf_r+0x1a34>
 80029dc:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80029e0:	2b09      	cmp	r3, #9
 80029e2:	4692      	mov	sl, r2
 80029e4:	f04f 0900 	mov.w	r9, #0
 80029e8:	f63f ad0e 	bhi.w	8002408 <_vfprintf_r+0x100>
 80029ec:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80029f0:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 80029f4:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 80029f8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80029fc:	2b09      	cmp	r3, #9
 80029fe:	d9f5      	bls.n	80029ec <_vfprintf_r+0x6e4>
 8002a00:	e502      	b.n	8002408 <_vfprintf_r+0x100>
 8002a02:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002a06:	f89a 6000 	ldrb.w	r6, [sl]
 8002a0a:	e4fb      	b.n	8002404 <_vfprintf_r+0xfc>
 8002a0c:	9c08      	ldr	r4, [sp, #32]
 8002a0e:	3407      	adds	r4, #7
 8002a10:	f024 0407 	bic.w	r4, r4, #7
 8002a14:	ed94 7b00 	vldr	d7, [r4]
 8002a18:	ec52 1b17 	vmov	r1, r2, d7
 8002a1c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002a20:	931d      	str	r3, [sp, #116]	; 0x74
 8002a22:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002a26:	3408      	adds	r4, #8
 8002a28:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002a2c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002a30:	4bba      	ldr	r3, [pc, #744]	; (8002d1c <_vfprintf_r+0xa14>)
 8002a32:	9408      	str	r4, [sp, #32]
 8002a34:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002a38:	f7fe fb18 	bl	800106c <__aeabi_dcmpun>
 8002a3c:	2800      	cmp	r0, #0
 8002a3e:	f040 846f 	bne.w	8003320 <_vfprintf_r+0x1018>
 8002a42:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002a46:	4bb5      	ldr	r3, [pc, #724]	; (8002d1c <_vfprintf_r+0xa14>)
 8002a48:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002a4c:	f7fe faf0 	bl	8001030 <__aeabi_dcmple>
 8002a50:	2800      	cmp	r0, #0
 8002a52:	f040 8465 	bne.w	8003320 <_vfprintf_r+0x1018>
 8002a56:	2200      	movs	r2, #0
 8002a58:	2300      	movs	r3, #0
 8002a5a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002a5e:	f7fe fadd 	bl	800101c <__aeabi_dcmplt>
 8002a62:	2800      	cmp	r0, #0
 8002a64:	f040 855b 	bne.w	800351e <_vfprintf_r+0x1216>
 8002a68:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002a6c:	4fac      	ldr	r7, [pc, #688]	; (8002d20 <_vfprintf_r+0xa18>)
 8002a6e:	4bad      	ldr	r3, [pc, #692]	; (8002d24 <_vfprintf_r+0xa1c>)
 8002a70:	2000      	movs	r0, #0
 8002a72:	2103      	movs	r1, #3
 8002a74:	9104      	str	r1, [sp, #16]
 8002a76:	900a      	str	r0, [sp, #40]	; 0x28
 8002a78:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002a7c:	2e47      	cmp	r6, #71	; 0x47
 8002a7e:	bfd8      	it	le
 8002a80:	461f      	movle	r7, r3
 8002a82:	9109      	str	r1, [sp, #36]	; 0x24
 8002a84:	4681      	mov	r9, r0
 8002a86:	900f      	str	r0, [sp, #60]	; 0x3c
 8002a88:	9014      	str	r0, [sp, #80]	; 0x50
 8002a8a:	9011      	str	r0, [sp, #68]	; 0x44
 8002a8c:	e5c9      	b.n	8002622 <_vfprintf_r+0x31a>
 8002a8e:	9808      	ldr	r0, [sp, #32]
 8002a90:	2300      	movs	r3, #0
 8002a92:	6801      	ldr	r1, [r0, #0]
 8002a94:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002a98:	461a      	mov	r2, r3
 8002a9a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002a9e:	2301      	movs	r3, #1
 8002aa0:	1d01      	adds	r1, r0, #4
 8002aa2:	9304      	str	r3, [sp, #16]
 8002aa4:	920a      	str	r2, [sp, #40]	; 0x28
 8002aa6:	4691      	mov	r9, r2
 8002aa8:	920f      	str	r2, [sp, #60]	; 0x3c
 8002aaa:	9214      	str	r2, [sp, #80]	; 0x50
 8002aac:	9211      	str	r2, [sp, #68]	; 0x44
 8002aae:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002ab2:	af3d      	add	r7, sp, #244	; 0xf4
 8002ab4:	e5b9      	b.n	800262a <_vfprintf_r+0x322>
 8002ab6:	9b08      	ldr	r3, [sp, #32]
 8002ab8:	681f      	ldr	r7, [r3, #0]
 8002aba:	2500      	movs	r5, #0
 8002abc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002ac0:	1d1c      	adds	r4, r3, #4
 8002ac2:	2f00      	cmp	r7, #0
 8002ac4:	f000 8639 	beq.w	800373a <_vfprintf_r+0x1432>
 8002ac8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002acc:	f000 8711 	beq.w	80038f2 <_vfprintf_r+0x15ea>
 8002ad0:	464a      	mov	r2, r9
 8002ad2:	4629      	mov	r1, r5
 8002ad4:	4638      	mov	r0, r7
 8002ad6:	f7fd fe23 	bl	8000720 <memchr>
 8002ada:	900a      	str	r0, [sp, #40]	; 0x28
 8002adc:	2800      	cmp	r0, #0
 8002ade:	f000 85e7 	beq.w	80036b0 <_vfprintf_r+0x13a8>
 8002ae2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002ae4:	1bdb      	subs	r3, r3, r7
 8002ae6:	9309      	str	r3, [sp, #36]	; 0x24
 8002ae8:	46a9      	mov	r9, r5
 8002aea:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002aee:	9408      	str	r4, [sp, #32]
 8002af0:	9304      	str	r3, [sp, #16]
 8002af2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002af6:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002afa:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002afe:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002b02:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002b06:	e58c      	b.n	8002622 <_vfprintf_r+0x31a>
 8002b08:	f048 0310 	orr.w	r3, r8, #16
 8002b0c:	069a      	lsls	r2, r3, #26
 8002b0e:	f53f aeb2 	bmi.w	8002876 <_vfprintf_r+0x56e>
 8002b12:	9a08      	ldr	r2, [sp, #32]
 8002b14:	06df      	lsls	r7, r3, #27
 8002b16:	f102 0104 	add.w	r1, r2, #4
 8002b1a:	f100 837e 	bmi.w	800321a <_vfprintf_r+0xf12>
 8002b1e:	065d      	lsls	r5, r3, #25
 8002b20:	9a08      	ldr	r2, [sp, #32]
 8002b22:	f100 84e4 	bmi.w	80034ee <_vfprintf_r+0x11e6>
 8002b26:	059c      	lsls	r4, r3, #22
 8002b28:	f140 8377 	bpl.w	800321a <_vfprintf_r+0xf12>
 8002b2c:	7814      	ldrb	r4, [r2, #0]
 8002b2e:	9108      	str	r1, [sp, #32]
 8002b30:	2500      	movs	r5, #0
 8002b32:	2201      	movs	r2, #1
 8002b34:	e6a9      	b.n	800288a <_vfprintf_r+0x582>
 8002b36:	4b7c      	ldr	r3, [pc, #496]	; (8002d28 <_vfprintf_r+0xa20>)
 8002b38:	9317      	str	r3, [sp, #92]	; 0x5c
 8002b3a:	f018 0f20 	tst.w	r8, #32
 8002b3e:	f47f aeec 	bne.w	800291a <_vfprintf_r+0x612>
 8002b42:	9a08      	ldr	r2, [sp, #32]
 8002b44:	f018 0f10 	tst.w	r8, #16
 8002b48:	f102 0304 	add.w	r3, r2, #4
 8002b4c:	f040 8354 	bne.w	80031f8 <_vfprintf_r+0xef0>
 8002b50:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002b54:	9a08      	ldr	r2, [sp, #32]
 8002b56:	f040 84d0 	bne.w	80034fa <_vfprintf_r+0x11f2>
 8002b5a:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002b5e:	f000 834b 	beq.w	80031f8 <_vfprintf_r+0xef0>
 8002b62:	7814      	ldrb	r4, [r2, #0]
 8002b64:	9308      	str	r3, [sp, #32]
 8002b66:	2500      	movs	r5, #0
 8002b68:	e6e0      	b.n	800292c <_vfprintf_r+0x624>
 8002b6a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002b6e:	f89a 6000 	ldrb.w	r6, [sl]
 8002b72:	2b00      	cmp	r3, #0
 8002b74:	f47f ac46 	bne.w	8002404 <_vfprintf_r+0xfc>
 8002b78:	2320      	movs	r3, #32
 8002b7a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002b7e:	e441      	b.n	8002404 <_vfprintf_r+0xfc>
 8002b80:	f89a 6000 	ldrb.w	r6, [sl]
 8002b84:	2e6c      	cmp	r6, #108	; 0x6c
 8002b86:	bf03      	ittte	eq
 8002b88:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002b8c:	f048 0820 	orreq.w	r8, r8, #32
 8002b90:	f10a 0a01 	addeq.w	sl, sl, #1
 8002b94:	f048 0810 	orrne.w	r8, r8, #16
 8002b98:	e434      	b.n	8002404 <_vfprintf_r+0xfc>
 8002b9a:	9a08      	ldr	r2, [sp, #32]
 8002b9c:	f018 0f20 	tst.w	r8, #32
 8002ba0:	f852 3b04 	ldr.w	r3, [r2], #4
 8002ba4:	9208      	str	r2, [sp, #32]
 8002ba6:	f000 83a1 	beq.w	80032ec <_vfprintf_r+0xfe4>
 8002baa:	9a05      	ldr	r2, [sp, #20]
 8002bac:	4610      	mov	r0, r2
 8002bae:	17d1      	asrs	r1, r2, #31
 8002bb0:	e9c3 0100 	strd	r0, r1, [r3]
 8002bb4:	4657      	mov	r7, sl
 8002bb6:	e64d      	b.n	8002854 <_vfprintf_r+0x54c>
 8002bb8:	f89a 6000 	ldrb.w	r6, [sl]
 8002bbc:	2e68      	cmp	r6, #104	; 0x68
 8002bbe:	bf03      	ittte	eq
 8002bc0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002bc4:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002bc8:	f10a 0a01 	addeq.w	sl, sl, #1
 8002bcc:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002bd0:	e418      	b.n	8002404 <_vfprintf_r+0xfc>
 8002bd2:	9908      	ldr	r1, [sp, #32]
 8002bd4:	4b55      	ldr	r3, [pc, #340]	; (8002d2c <_vfprintf_r+0xa24>)
 8002bd6:	680c      	ldr	r4, [r1, #0]
 8002bd8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002bda:	f647 0230 	movw	r2, #30768	; 0x7830
 8002bde:	3104      	adds	r1, #4
 8002be0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002be4:	f048 0302 	orr.w	r3, r8, #2
 8002be8:	9108      	str	r1, [sp, #32]
 8002bea:	2500      	movs	r5, #0
 8002bec:	2202      	movs	r2, #2
 8002bee:	2678      	movs	r6, #120	; 0x78
 8002bf0:	e64b      	b.n	800288a <_vfprintf_r+0x582>
 8002bf2:	f048 0808 	orr.w	r8, r8, #8
 8002bf6:	f89a 6000 	ldrb.w	r6, [sl]
 8002bfa:	e403      	b.n	8002404 <_vfprintf_r+0xfc>
 8002bfc:	f048 0310 	orr.w	r3, r8, #16
 8002c00:	069f      	lsls	r7, r3, #26
 8002c02:	f53f acd1 	bmi.w	80025a8 <_vfprintf_r+0x2a0>
 8002c06:	9908      	ldr	r1, [sp, #32]
 8002c08:	06dd      	lsls	r5, r3, #27
 8002c0a:	f101 0204 	add.w	r2, r1, #4
 8002c0e:	f100 82fd 	bmi.w	800320c <_vfprintf_r+0xf04>
 8002c12:	065c      	lsls	r4, r3, #25
 8002c14:	9908      	ldr	r1, [sp, #32]
 8002c16:	f100 8475 	bmi.w	8003504 <_vfprintf_r+0x11fc>
 8002c1a:	0598      	lsls	r0, r3, #22
 8002c1c:	f140 82f6 	bpl.w	800320c <_vfprintf_r+0xf04>
 8002c20:	f991 4000 	ldrsb.w	r4, [r1]
 8002c24:	9208      	str	r2, [sp, #32]
 8002c26:	17e5      	asrs	r5, r4, #31
 8002c28:	4620      	mov	r0, r4
 8002c2a:	4629      	mov	r1, r5
 8002c2c:	e4c7      	b.n	80025be <_vfprintf_r+0x2b6>
 8002c2e:	9a08      	ldr	r2, [sp, #32]
 8002c30:	f018 0f10 	tst.w	r8, #16
 8002c34:	f102 0304 	add.w	r3, r2, #4
 8002c38:	f040 82e3 	bne.w	8003202 <_vfprintf_r+0xefa>
 8002c3c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002c40:	9a08      	ldr	r2, [sp, #32]
 8002c42:	f040 8467 	bne.w	8003514 <_vfprintf_r+0x120c>
 8002c46:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002c4a:	f000 82da 	beq.w	8003202 <_vfprintf_r+0xefa>
 8002c4e:	7814      	ldrb	r4, [r2, #0]
 8002c50:	9308      	str	r3, [sp, #32]
 8002c52:	2500      	movs	r5, #0
 8002c54:	e488      	b.n	8002568 <_vfprintf_r+0x260>
 8002c56:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002c5a:	f002 fd45 	bl	80056e8 <__retarget_lock_release_recursive>
 8002c5e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002c62:	9305      	str	r3, [sp, #20]
 8002c64:	e443      	b.n	80024ee <_vfprintf_r+0x1e6>
 8002c66:	2e00      	cmp	r6, #0
 8002c68:	f43f adf8 	beq.w	800285c <_vfprintf_r+0x554>
 8002c6c:	2300      	movs	r3, #0
 8002c6e:	2101      	movs	r1, #1
 8002c70:	461a      	mov	r2, r3
 8002c72:	9104      	str	r1, [sp, #16]
 8002c74:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002c78:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002c7c:	930a      	str	r3, [sp, #40]	; 0x28
 8002c7e:	4699      	mov	r9, r3
 8002c80:	930f      	str	r3, [sp, #60]	; 0x3c
 8002c82:	9314      	str	r3, [sp, #80]	; 0x50
 8002c84:	9311      	str	r3, [sp, #68]	; 0x44
 8002c86:	9109      	str	r1, [sp, #36]	; 0x24
 8002c88:	af3d      	add	r7, sp, #244	; 0xf4
 8002c8a:	e4ce      	b.n	800262a <_vfprintf_r+0x322>
 8002c8c:	2e65      	cmp	r6, #101	; 0x65
 8002c8e:	f340 80ca 	ble.w	8002e26 <_vfprintf_r+0xb1e>
 8002c92:	2200      	movs	r2, #0
 8002c94:	2300      	movs	r3, #0
 8002c96:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002c9a:	f7fe f9b5 	bl	8001008 <__aeabi_dcmpeq>
 8002c9e:	2800      	cmp	r0, #0
 8002ca0:	f000 8169 	beq.w	8002f76 <_vfprintf_r+0xc6e>
 8002ca4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002ca6:	4a22      	ldr	r2, [pc, #136]	; (8002d30 <_vfprintf_r+0xa28>)
 8002ca8:	f8cb 2000 	str.w	r2, [fp]
 8002cac:	3301      	adds	r3, #1
 8002cae:	3401      	adds	r4, #1
 8002cb0:	2201      	movs	r2, #1
 8002cb2:	2b07      	cmp	r3, #7
 8002cb4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002cb8:	f8cb 2004 	str.w	r2, [fp, #4]
 8002cbc:	f300 8406 	bgt.w	80034cc <_vfprintf_r+0x11c4>
 8002cc0:	f10b 0b08 	add.w	fp, fp, #8
 8002cc4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002cc6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002cc8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002cca:	4293      	cmp	r3, r2
 8002ccc:	db03      	blt.n	8002cd6 <_vfprintf_r+0x9ce>
 8002cce:	f018 0f01 	tst.w	r8, #1
 8002cd2:	f43f ad6a 	beq.w	80027aa <_vfprintf_r+0x4a2>
 8002cd6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002cd8:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002cda:	f8cb 2000 	str.w	r2, [fp]
 8002cde:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002ce0:	f8cb 2004 	str.w	r2, [fp, #4]
 8002ce4:	3301      	adds	r3, #1
 8002ce6:	4414      	add	r4, r2
 8002ce8:	2b07      	cmp	r3, #7
 8002cea:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002cee:	f300 8517 	bgt.w	8003720 <_vfprintf_r+0x1418>
 8002cf2:	f10b 0b08 	add.w	fp, fp, #8
 8002cf6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002cf8:	1e5d      	subs	r5, r3, #1
 8002cfa:	2d00      	cmp	r5, #0
 8002cfc:	f77f ad55 	ble.w	80027aa <_vfprintf_r+0x4a2>
 8002d00:	2d10      	cmp	r5, #16
 8002d02:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002d04:	4b0b      	ldr	r3, [pc, #44]	; (8002d34 <_vfprintf_r+0xa2c>)
 8002d06:	f340 82e7 	ble.w	80032d8 <_vfprintf_r+0xfd0>
 8002d0a:	4619      	mov	r1, r3
 8002d0c:	2610      	movs	r6, #16
 8002d0e:	4623      	mov	r3, r4
 8002d10:	9f03      	ldr	r7, [sp, #12]
 8002d12:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002d16:	460c      	mov	r4, r1
 8002d18:	e014      	b.n	8002d44 <_vfprintf_r+0xa3c>
 8002d1a:	bf00      	nop
 8002d1c:	7fefffff 	.word	0x7fefffff
 8002d20:	08007018 	.word	0x08007018
 8002d24:	08007014 	.word	0x08007014
 8002d28:	08007038 	.word	0x08007038
 8002d2c:	08007024 	.word	0x08007024
 8002d30:	08007054 	.word	0x08007054
 8002d34:	08007068 	.word	0x08007068
 8002d38:	f10b 0b08 	add.w	fp, fp, #8
 8002d3c:	3d10      	subs	r5, #16
 8002d3e:	2d10      	cmp	r5, #16
 8002d40:	f340 82c7 	ble.w	80032d2 <_vfprintf_r+0xfca>
 8002d44:	3201      	adds	r2, #1
 8002d46:	3310      	adds	r3, #16
 8002d48:	2a07      	cmp	r2, #7
 8002d4a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002d4e:	e9cb 4600 	strd	r4, r6, [fp]
 8002d52:	ddf1      	ble.n	8002d38 <_vfprintf_r+0xa30>
 8002d54:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d56:	4649      	mov	r1, r9
 8002d58:	4638      	mov	r0, r7
 8002d5a:	f003 fe03 	bl	8006964 <__sprint_r>
 8002d5e:	2800      	cmp	r0, #0
 8002d60:	d14c      	bne.n	8002dfc <_vfprintf_r+0xaf4>
 8002d62:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002d66:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002d6a:	e7e7      	b.n	8002d3c <_vfprintf_r+0xa34>
 8002d6c:	9b06      	ldr	r3, [sp, #24]
 8002d6e:	9a04      	ldr	r2, [sp, #16]
 8002d70:	1a9d      	subs	r5, r3, r2
 8002d72:	2d00      	cmp	r5, #0
 8002d74:	f77f acc9 	ble.w	800270a <_vfprintf_r+0x402>
 8002d78:	2d10      	cmp	r5, #16
 8002d7a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002d7c:	4bbc      	ldr	r3, [pc, #752]	; (8003070 <_vfprintf_r+0xd68>)
 8002d7e:	dd27      	ble.n	8002dd0 <_vfprintf_r+0xac8>
 8002d80:	4659      	mov	r1, fp
 8002d82:	4620      	mov	r0, r4
 8002d84:	46bb      	mov	fp, r7
 8002d86:	461c      	mov	r4, r3
 8002d88:	4637      	mov	r7, r6
 8002d8a:	9e07      	ldr	r6, [sp, #28]
 8002d8c:	e004      	b.n	8002d98 <_vfprintf_r+0xa90>
 8002d8e:	3d10      	subs	r5, #16
 8002d90:	2d10      	cmp	r5, #16
 8002d92:	f101 0108 	add.w	r1, r1, #8
 8002d96:	dd16      	ble.n	8002dc6 <_vfprintf_r+0xabe>
 8002d98:	3201      	adds	r2, #1
 8002d9a:	3010      	adds	r0, #16
 8002d9c:	2310      	movs	r3, #16
 8002d9e:	2a07      	cmp	r2, #7
 8002da0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002da4:	600c      	str	r4, [r1, #0]
 8002da6:	604b      	str	r3, [r1, #4]
 8002da8:	ddf1      	ble.n	8002d8e <_vfprintf_r+0xa86>
 8002daa:	aa2a      	add	r2, sp, #168	; 0xa8
 8002dac:	4631      	mov	r1, r6
 8002dae:	9803      	ldr	r0, [sp, #12]
 8002db0:	f003 fdd8 	bl	8006964 <__sprint_r>
 8002db4:	2800      	cmp	r0, #0
 8002db6:	f040 80a8 	bne.w	8002f0a <_vfprintf_r+0xc02>
 8002dba:	3d10      	subs	r5, #16
 8002dbc:	2d10      	cmp	r5, #16
 8002dbe:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002dc2:	a92d      	add	r1, sp, #180	; 0xb4
 8002dc4:	dce8      	bgt.n	8002d98 <_vfprintf_r+0xa90>
 8002dc6:	463e      	mov	r6, r7
 8002dc8:	4623      	mov	r3, r4
 8002dca:	465f      	mov	r7, fp
 8002dcc:	4604      	mov	r4, r0
 8002dce:	468b      	mov	fp, r1
 8002dd0:	3201      	adds	r2, #1
 8002dd2:	442c      	add	r4, r5
 8002dd4:	2a07      	cmp	r2, #7
 8002dd6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002dda:	e9cb 3500 	strd	r3, r5, [fp]
 8002dde:	f300 8292 	bgt.w	8003306 <_vfprintf_r+0xffe>
 8002de2:	f10b 0b08 	add.w	fp, fp, #8
 8002de6:	e490      	b.n	800270a <_vfprintf_r+0x402>
 8002de8:	aa2a      	add	r2, sp, #168	; 0xa8
 8002dea:	9907      	ldr	r1, [sp, #28]
 8002dec:	9803      	ldr	r0, [sp, #12]
 8002dee:	f003 fdb9 	bl	8006964 <__sprint_r>
 8002df2:	2800      	cmp	r0, #0
 8002df4:	f43f ad23 	beq.w	800283e <_vfprintf_r+0x536>
 8002df8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002dfc:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002dfe:	b111      	cbz	r1, 8002e06 <_vfprintf_r+0xafe>
 8002e00:	9803      	ldr	r0, [sp, #12]
 8002e02:	f002 f9c1 	bl	8005188 <_free_r>
 8002e06:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002e0a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002e0e:	07d0      	lsls	r0, r2, #31
 8002e10:	d402      	bmi.n	8002e18 <_vfprintf_r+0xb10>
 8002e12:	0599      	lsls	r1, r3, #22
 8002e14:	f140 81d0 	bpl.w	80031b8 <_vfprintf_r+0xeb0>
 8002e18:	065a      	lsls	r2, r3, #25
 8002e1a:	f53f ab65 	bmi.w	80024e8 <_vfprintf_r+0x1e0>
 8002e1e:	9805      	ldr	r0, [sp, #20]
 8002e20:	b057      	add	sp, #348	; 0x15c
 8002e22:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002e26:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002e28:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e2a:	2a01      	cmp	r2, #1
 8002e2c:	f104 0401 	add.w	r4, r4, #1
 8002e30:	f103 0501 	add.w	r5, r3, #1
 8002e34:	f10b 0608 	add.w	r6, fp, #8
 8002e38:	f340 811c 	ble.w	8003074 <_vfprintf_r+0xd6c>
 8002e3c:	2301      	movs	r3, #1
 8002e3e:	2d07      	cmp	r5, #7
 8002e40:	f8cb 7000 	str.w	r7, [fp]
 8002e44:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002e48:	f8cb 3004 	str.w	r3, [fp, #4]
 8002e4c:	f300 81bb 	bgt.w	80031c6 <_vfprintf_r+0xebe>
 8002e50:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002e52:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002e54:	1c69      	adds	r1, r5, #1
 8002e56:	441c      	add	r4, r3
 8002e58:	2907      	cmp	r1, #7
 8002e5a:	910b      	str	r1, [sp, #44]	; 0x2c
 8002e5c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8002e60:	e9c6 2300 	strd	r2, r3, [r6]
 8002e64:	f300 81bb 	bgt.w	80031de <_vfprintf_r+0xed6>
 8002e68:	3608      	adds	r6, #8
 8002e6a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002e6c:	1c53      	adds	r3, r2, #1
 8002e6e:	461d      	mov	r5, r3
 8002e70:	9509      	str	r5, [sp, #36]	; 0x24
 8002e72:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8002e74:	930e      	str	r3, [sp, #56]	; 0x38
 8002e76:	2200      	movs	r2, #0
 8002e78:	2300      	movs	r3, #0
 8002e7a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002e7e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8002e82:	f106 0b08 	add.w	fp, r6, #8
 8002e86:	f7fe f8bf 	bl	8001008 <__aeabi_dcmpeq>
 8002e8a:	2800      	cmp	r0, #0
 8002e8c:	f040 80c2 	bne.w	8003014 <_vfprintf_r+0xd0c>
 8002e90:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002e92:	f8c6 9004 	str.w	r9, [r6, #4]
 8002e96:	3701      	adds	r7, #1
 8002e98:	444c      	add	r4, r9
 8002e9a:	2d07      	cmp	r5, #7
 8002e9c:	6037      	str	r7, [r6, #0]
 8002e9e:	942c      	str	r4, [sp, #176]	; 0xb0
 8002ea0:	952b      	str	r5, [sp, #172]	; 0xac
 8002ea2:	f300 80f9 	bgt.w	8003098 <_vfprintf_r+0xd90>
 8002ea6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002ea8:	f106 0310 	add.w	r3, r6, #16
 8002eac:	3202      	adds	r2, #2
 8002eae:	465e      	mov	r6, fp
 8002eb0:	9209      	str	r2, [sp, #36]	; 0x24
 8002eb2:	469b      	mov	fp, r3
 8002eb4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8002eb6:	6072      	str	r2, [r6, #4]
 8002eb8:	4414      	add	r4, r2
 8002eba:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002ebc:	942c      	str	r4, [sp, #176]	; 0xb0
 8002ebe:	ab26      	add	r3, sp, #152	; 0x98
 8002ec0:	2a07      	cmp	r2, #7
 8002ec2:	922b      	str	r2, [sp, #172]	; 0xac
 8002ec4:	6033      	str	r3, [r6, #0]
 8002ec6:	f77f ac70 	ble.w	80027aa <_vfprintf_r+0x4a2>
 8002eca:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ecc:	9907      	ldr	r1, [sp, #28]
 8002ece:	9803      	ldr	r0, [sp, #12]
 8002ed0:	f003 fd48 	bl	8006964 <__sprint_r>
 8002ed4:	2800      	cmp	r0, #0
 8002ed6:	d18f      	bne.n	8002df8 <_vfprintf_r+0xaf0>
 8002ed8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002eda:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002ede:	e464      	b.n	80027aa <_vfprintf_r+0x4a2>
 8002ee0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8002ee2:	af56      	add	r7, sp, #344	; 0x158
 8002ee4:	0923      	lsrs	r3, r4, #4
 8002ee6:	f004 010f 	and.w	r1, r4, #15
 8002eea:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8002eee:	092a      	lsrs	r2, r5, #4
 8002ef0:	461c      	mov	r4, r3
 8002ef2:	4615      	mov	r5, r2
 8002ef4:	5c43      	ldrb	r3, [r0, r1]
 8002ef6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002efa:	ea54 0305 	orrs.w	r3, r4, r5
 8002efe:	d1f1      	bne.n	8002ee4 <_vfprintf_r+0xbdc>
 8002f00:	9b04      	ldr	r3, [sp, #16]
 8002f02:	1bdb      	subs	r3, r3, r7
 8002f04:	9309      	str	r3, [sp, #36]	; 0x24
 8002f06:	f7ff bb80 	b.w	800260a <_vfprintf_r+0x302>
 8002f0a:	46b1      	mov	r9, r6
 8002f0c:	e776      	b.n	8002dfc <_vfprintf_r+0xaf4>
 8002f0e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f10:	9907      	ldr	r1, [sp, #28]
 8002f12:	9803      	ldr	r0, [sp, #12]
 8002f14:	f003 fd26 	bl	8006964 <__sprint_r>
 8002f18:	2800      	cmp	r0, #0
 8002f1a:	f47f af6d 	bne.w	8002df8 <_vfprintf_r+0xaf0>
 8002f1e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f20:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f24:	f7ff bbdd 	b.w	80026e2 <_vfprintf_r+0x3da>
 8002f28:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f2a:	9907      	ldr	r1, [sp, #28]
 8002f2c:	9803      	ldr	r0, [sp, #12]
 8002f2e:	f003 fd19 	bl	8006964 <__sprint_r>
 8002f32:	2800      	cmp	r0, #0
 8002f34:	f47f af60 	bne.w	8002df8 <_vfprintf_r+0xaf0>
 8002f38:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f3a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f3e:	f7ff bbe0 	b.w	8002702 <_vfprintf_r+0x3fa>
 8002f42:	4698      	mov	r8, r3
 8002f44:	2d00      	cmp	r5, #0
 8002f46:	bf08      	it	eq
 8002f48:	2c0a      	cmpeq	r4, #10
 8002f4a:	f080 8170 	bcs.w	800322e <_vfprintf_r+0xf26>
 8002f4e:	af56      	add	r7, sp, #344	; 0x158
 8002f50:	3430      	adds	r4, #48	; 0x30
 8002f52:	2301      	movs	r3, #1
 8002f54:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8002f58:	9309      	str	r3, [sp, #36]	; 0x24
 8002f5a:	f7ff bb56 	b.w	800260a <_vfprintf_r+0x302>
 8002f5e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f60:	9907      	ldr	r1, [sp, #28]
 8002f62:	9803      	ldr	r0, [sp, #12]
 8002f64:	f003 fcfe 	bl	8006964 <__sprint_r>
 8002f68:	2800      	cmp	r0, #0
 8002f6a:	f47f af45 	bne.w	8002df8 <_vfprintf_r+0xaf0>
 8002f6e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f70:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f74:	e406      	b.n	8002784 <_vfprintf_r+0x47c>
 8002f76:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002f78:	2b00      	cmp	r3, #0
 8002f7a:	f340 8273 	ble.w	8003464 <_vfprintf_r+0x115c>
 8002f7e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8002f82:	4293      	cmp	r3, r2
 8002f84:	bfa8      	it	ge
 8002f86:	4613      	movge	r3, r2
 8002f88:	2b00      	cmp	r3, #0
 8002f8a:	461d      	mov	r5, r3
 8002f8c:	dd0d      	ble.n	8002faa <_vfprintf_r+0xca2>
 8002f8e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f90:	f8cb 7000 	str.w	r7, [fp]
 8002f94:	3301      	adds	r3, #1
 8002f96:	442c      	add	r4, r5
 8002f98:	2b07      	cmp	r3, #7
 8002f9a:	942c      	str	r4, [sp, #176]	; 0xb0
 8002f9c:	f8cb 5004 	str.w	r5, [fp, #4]
 8002fa0:	932b      	str	r3, [sp, #172]	; 0xac
 8002fa2:	f300 82c1 	bgt.w	8003528 <_vfprintf_r+0x1220>
 8002fa6:	f10b 0b08 	add.w	fp, fp, #8
 8002faa:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002fac:	2d00      	cmp	r5, #0
 8002fae:	bfa8      	it	ge
 8002fb0:	1b5b      	subge	r3, r3, r5
 8002fb2:	2b00      	cmp	r3, #0
 8002fb4:	461d      	mov	r5, r3
 8002fb6:	f340 8099 	ble.w	80030ec <_vfprintf_r+0xde4>
 8002fba:	2d10      	cmp	r5, #16
 8002fbc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002fbe:	4b2c      	ldr	r3, [pc, #176]	; (8003070 <_vfprintf_r+0xd68>)
 8002fc0:	f340 83db 	ble.w	800377a <_vfprintf_r+0x1472>
 8002fc4:	4618      	mov	r0, r3
 8002fc6:	4621      	mov	r1, r4
 8002fc8:	465b      	mov	r3, fp
 8002fca:	2610      	movs	r6, #16
 8002fcc:	46bb      	mov	fp, r7
 8002fce:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8002fd2:	9c07      	ldr	r4, [sp, #28]
 8002fd4:	4607      	mov	r7, r0
 8002fd6:	e004      	b.n	8002fe2 <_vfprintf_r+0xcda>
 8002fd8:	3308      	adds	r3, #8
 8002fda:	3d10      	subs	r5, #16
 8002fdc:	2d10      	cmp	r5, #16
 8002fde:	f340 83c7 	ble.w	8003770 <_vfprintf_r+0x1468>
 8002fe2:	3201      	adds	r2, #1
 8002fe4:	3110      	adds	r1, #16
 8002fe6:	2a07      	cmp	r2, #7
 8002fe8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8002fec:	e9c3 7600 	strd	r7, r6, [r3]
 8002ff0:	ddf2      	ble.n	8002fd8 <_vfprintf_r+0xcd0>
 8002ff2:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ff4:	4621      	mov	r1, r4
 8002ff6:	4648      	mov	r0, r9
 8002ff8:	f003 fcb4 	bl	8006964 <__sprint_r>
 8002ffc:	2800      	cmp	r0, #0
 8002ffe:	f040 84a5 	bne.w	800394c <_vfprintf_r+0x1644>
 8003002:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003006:	ab2d      	add	r3, sp, #180	; 0xb4
 8003008:	e7e7      	b.n	8002fda <_vfprintf_r+0xcd2>
 800300a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800300e:	af56      	add	r7, sp, #344	; 0x158
 8003010:	f7ff bafb 	b.w	800260a <_vfprintf_r+0x302>
 8003014:	f1b9 0f00 	cmp.w	r9, #0
 8003018:	f77f af4c 	ble.w	8002eb4 <_vfprintf_r+0xbac>
 800301c:	f1b9 0f10 	cmp.w	r9, #16
 8003020:	4b13      	ldr	r3, [pc, #76]	; (8003070 <_vfprintf_r+0xd68>)
 8003022:	f340 8659 	ble.w	8003cd8 <_vfprintf_r+0x19d0>
 8003026:	4619      	mov	r1, r3
 8003028:	4622      	mov	r2, r4
 800302a:	4633      	mov	r3, r6
 800302c:	2710      	movs	r7, #16
 800302e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003032:	9c07      	ldr	r4, [sp, #28]
 8003034:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003036:	460e      	mov	r6, r1
 8003038:	e007      	b.n	800304a <_vfprintf_r+0xd42>
 800303a:	3308      	adds	r3, #8
 800303c:	f1a9 0910 	sub.w	r9, r9, #16
 8003040:	f1b9 0f10 	cmp.w	r9, #16
 8003044:	f340 8353 	ble.w	80036ee <_vfprintf_r+0x13e6>
 8003048:	3501      	adds	r5, #1
 800304a:	3210      	adds	r2, #16
 800304c:	2d07      	cmp	r5, #7
 800304e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003052:	e9c3 6700 	strd	r6, r7, [r3]
 8003056:	ddf0      	ble.n	800303a <_vfprintf_r+0xd32>
 8003058:	aa2a      	add	r2, sp, #168	; 0xa8
 800305a:	4621      	mov	r1, r4
 800305c:	4658      	mov	r0, fp
 800305e:	f003 fc81 	bl	8006964 <__sprint_r>
 8003062:	2800      	cmp	r0, #0
 8003064:	f040 8472 	bne.w	800394c <_vfprintf_r+0x1644>
 8003068:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800306c:	ab2d      	add	r3, sp, #180	; 0xb4
 800306e:	e7e5      	b.n	800303c <_vfprintf_r+0xd34>
 8003070:	08007068 	.word	0x08007068
 8003074:	f018 0f01 	tst.w	r8, #1
 8003078:	f47f aee0 	bne.w	8002e3c <_vfprintf_r+0xb34>
 800307c:	2201      	movs	r2, #1
 800307e:	2d07      	cmp	r5, #7
 8003080:	f8cb 7000 	str.w	r7, [fp]
 8003084:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003088:	f8cb 2004 	str.w	r2, [fp, #4]
 800308c:	dc04      	bgt.n	8003098 <_vfprintf_r+0xd90>
 800308e:	3302      	adds	r3, #2
 8003090:	9309      	str	r3, [sp, #36]	; 0x24
 8003092:	f10b 0b10 	add.w	fp, fp, #16
 8003096:	e70d      	b.n	8002eb4 <_vfprintf_r+0xbac>
 8003098:	aa2a      	add	r2, sp, #168	; 0xa8
 800309a:	9907      	ldr	r1, [sp, #28]
 800309c:	9803      	ldr	r0, [sp, #12]
 800309e:	f003 fc61 	bl	8006964 <__sprint_r>
 80030a2:	2800      	cmp	r0, #0
 80030a4:	f47f aea8 	bne.w	8002df8 <_vfprintf_r+0xaf0>
 80030a8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80030ac:	3301      	adds	r3, #1
 80030ae:	9309      	str	r3, [sp, #36]	; 0x24
 80030b0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80030b4:	ae2d      	add	r6, sp, #180	; 0xb4
 80030b6:	e6fd      	b.n	8002eb4 <_vfprintf_r+0xbac>
 80030b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80030ba:	9907      	ldr	r1, [sp, #28]
 80030bc:	9803      	ldr	r0, [sp, #12]
 80030be:	f003 fc51 	bl	8006964 <__sprint_r>
 80030c2:	2800      	cmp	r0, #0
 80030c4:	f47f ae98 	bne.w	8002df8 <_vfprintf_r+0xaf0>
 80030c8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80030cc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030ce:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030d2:	f7ff baf6 	b.w	80026c2 <_vfprintf_r+0x3ba>
 80030d6:	aa2a      	add	r2, sp, #168	; 0xa8
 80030d8:	9907      	ldr	r1, [sp, #28]
 80030da:	9803      	ldr	r0, [sp, #12]
 80030dc:	f003 fc42 	bl	8006964 <__sprint_r>
 80030e0:	2800      	cmp	r0, #0
 80030e2:	f47f ae89 	bne.w	8002df8 <_vfprintf_r+0xaf0>
 80030e6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030e8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030ec:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80030ee:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80030f2:	443b      	add	r3, r7
 80030f4:	4699      	mov	r9, r3
 80030f6:	f040 8357 	bne.w	80037a8 <_vfprintf_r+0x14a0>
 80030fa:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80030fc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80030fe:	4293      	cmp	r3, r2
 8003100:	db49      	blt.n	8003196 <_vfprintf_r+0xe8e>
 8003102:	f018 0f01 	tst.w	r8, #1
 8003106:	d146      	bne.n	8003196 <_vfprintf_r+0xe8e>
 8003108:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800310a:	18bd      	adds	r5, r7, r2
 800310c:	eba5 0509 	sub.w	r5, r5, r9
 8003110:	1ad3      	subs	r3, r2, r3
 8003112:	429d      	cmp	r5, r3
 8003114:	bfa8      	it	ge
 8003116:	461d      	movge	r5, r3
 8003118:	2d00      	cmp	r5, #0
 800311a:	dd0d      	ble.n	8003138 <_vfprintf_r+0xe30>
 800311c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800311e:	f8cb 9000 	str.w	r9, [fp]
 8003122:	3201      	adds	r2, #1
 8003124:	442c      	add	r4, r5
 8003126:	2a07      	cmp	r2, #7
 8003128:	942c      	str	r4, [sp, #176]	; 0xb0
 800312a:	f8cb 5004 	str.w	r5, [fp, #4]
 800312e:	922b      	str	r2, [sp, #172]	; 0xac
 8003130:	f300 8462 	bgt.w	80039f8 <_vfprintf_r+0x16f0>
 8003134:	f10b 0b08 	add.w	fp, fp, #8
 8003138:	2d00      	cmp	r5, #0
 800313a:	bfac      	ite	ge
 800313c:	1b5d      	subge	r5, r3, r5
 800313e:	461d      	movlt	r5, r3
 8003140:	2d00      	cmp	r5, #0
 8003142:	f77f ab32 	ble.w	80027aa <_vfprintf_r+0x4a2>
 8003146:	2d10      	cmp	r5, #16
 8003148:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800314a:	4bc5      	ldr	r3, [pc, #788]	; (8003460 <_vfprintf_r+0x1158>)
 800314c:	f340 80c4 	ble.w	80032d8 <_vfprintf_r+0xfd0>
 8003150:	4619      	mov	r1, r3
 8003152:	2610      	movs	r6, #16
 8003154:	4623      	mov	r3, r4
 8003156:	9f03      	ldr	r7, [sp, #12]
 8003158:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800315c:	460c      	mov	r4, r1
 800315e:	e005      	b.n	800316c <_vfprintf_r+0xe64>
 8003160:	f10b 0b08 	add.w	fp, fp, #8
 8003164:	3d10      	subs	r5, #16
 8003166:	2d10      	cmp	r5, #16
 8003168:	f340 80b3 	ble.w	80032d2 <_vfprintf_r+0xfca>
 800316c:	3201      	adds	r2, #1
 800316e:	3310      	adds	r3, #16
 8003170:	2a07      	cmp	r2, #7
 8003172:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003176:	e9cb 4600 	strd	r4, r6, [fp]
 800317a:	ddf1      	ble.n	8003160 <_vfprintf_r+0xe58>
 800317c:	aa2a      	add	r2, sp, #168	; 0xa8
 800317e:	4649      	mov	r1, r9
 8003180:	4638      	mov	r0, r7
 8003182:	f003 fbef 	bl	8006964 <__sprint_r>
 8003186:	2800      	cmp	r0, #0
 8003188:	f47f ae38 	bne.w	8002dfc <_vfprintf_r+0xaf4>
 800318c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003190:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003194:	e7e6      	b.n	8003164 <_vfprintf_r+0xe5c>
 8003196:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003198:	9916      	ldr	r1, [sp, #88]	; 0x58
 800319a:	f8cb 1000 	str.w	r1, [fp]
 800319e:	9915      	ldr	r1, [sp, #84]	; 0x54
 80031a0:	f8cb 1004 	str.w	r1, [fp, #4]
 80031a4:	3201      	adds	r2, #1
 80031a6:	440c      	add	r4, r1
 80031a8:	2a07      	cmp	r2, #7
 80031aa:	942c      	str	r4, [sp, #176]	; 0xb0
 80031ac:	922b      	str	r2, [sp, #172]	; 0xac
 80031ae:	f300 828c 	bgt.w	80036ca <_vfprintf_r+0x13c2>
 80031b2:	f10b 0b08 	add.w	fp, fp, #8
 80031b6:	e7a7      	b.n	8003108 <_vfprintf_r+0xe00>
 80031b8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80031bc:	f002 fa94 	bl	80056e8 <__retarget_lock_release_recursive>
 80031c0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80031c4:	e628      	b.n	8002e18 <_vfprintf_r+0xb10>
 80031c6:	aa2a      	add	r2, sp, #168	; 0xa8
 80031c8:	9907      	ldr	r1, [sp, #28]
 80031ca:	9803      	ldr	r0, [sp, #12]
 80031cc:	f003 fbca 	bl	8006964 <__sprint_r>
 80031d0:	2800      	cmp	r0, #0
 80031d2:	f47f ae11 	bne.w	8002df8 <_vfprintf_r+0xaf0>
 80031d6:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 80031da:	ae2d      	add	r6, sp, #180	; 0xb4
 80031dc:	e638      	b.n	8002e50 <_vfprintf_r+0xb48>
 80031de:	aa2a      	add	r2, sp, #168	; 0xa8
 80031e0:	9907      	ldr	r1, [sp, #28]
 80031e2:	9803      	ldr	r0, [sp, #12]
 80031e4:	f003 fbbe 	bl	8006964 <__sprint_r>
 80031e8:	2800      	cmp	r0, #0
 80031ea:	f47f ae05 	bne.w	8002df8 <_vfprintf_r+0xaf0>
 80031ee:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80031f2:	ae2d      	add	r6, sp, #180	; 0xb4
 80031f4:	930b      	str	r3, [sp, #44]	; 0x2c
 80031f6:	e638      	b.n	8002e6a <_vfprintf_r+0xb62>
 80031f8:	6814      	ldr	r4, [r2, #0]
 80031fa:	9308      	str	r3, [sp, #32]
 80031fc:	2500      	movs	r5, #0
 80031fe:	f7ff bb95 	b.w	800292c <_vfprintf_r+0x624>
 8003202:	6814      	ldr	r4, [r2, #0]
 8003204:	9308      	str	r3, [sp, #32]
 8003206:	2500      	movs	r5, #0
 8003208:	f7ff b9ae 	b.w	8002568 <_vfprintf_r+0x260>
 800320c:	680c      	ldr	r4, [r1, #0]
 800320e:	9208      	str	r2, [sp, #32]
 8003210:	17e5      	asrs	r5, r4, #31
 8003212:	4620      	mov	r0, r4
 8003214:	4629      	mov	r1, r5
 8003216:	f7ff b9d2 	b.w	80025be <_vfprintf_r+0x2b6>
 800321a:	6814      	ldr	r4, [r2, #0]
 800321c:	9108      	str	r1, [sp, #32]
 800321e:	2201      	movs	r2, #1
 8003220:	2500      	movs	r5, #0
 8003222:	f7ff bb32 	b.w	800288a <_vfprintf_r+0x582>
 8003226:	2a01      	cmp	r2, #1
 8003228:	f47f ab3c 	bne.w	80028a4 <_vfprintf_r+0x59c>
 800322c:	e68f      	b.n	8002f4e <_vfprintf_r+0xc46>
 800322e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003232:	2200      	movs	r2, #0
 8003234:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003238:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800323c:	af56      	add	r7, sp, #344	; 0x158
 800323e:	4692      	mov	sl, r2
 8003240:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003244:	461e      	mov	r6, r3
 8003246:	e00a      	b.n	800325e <_vfprintf_r+0xf56>
 8003248:	2300      	movs	r3, #0
 800324a:	4620      	mov	r0, r4
 800324c:	4629      	mov	r1, r5
 800324e:	220a      	movs	r2, #10
 8003250:	f7fc ffd6 	bl	8000200 <__aeabi_uldivmod>
 8003254:	4604      	mov	r4, r0
 8003256:	460d      	mov	r5, r1
 8003258:	ea54 0305 	orrs.w	r3, r4, r5
 800325c:	d029      	beq.n	80032b2 <_vfprintf_r+0xfaa>
 800325e:	220a      	movs	r2, #10
 8003260:	2300      	movs	r3, #0
 8003262:	4620      	mov	r0, r4
 8003264:	4629      	mov	r1, r5
 8003266:	f7fc ffcb 	bl	8000200 <__aeabi_uldivmod>
 800326a:	3230      	adds	r2, #48	; 0x30
 800326c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003270:	f10a 0a01 	add.w	sl, sl, #1
 8003274:	3f01      	subs	r7, #1
 8003276:	2e00      	cmp	r6, #0
 8003278:	d0e6      	beq.n	8003248 <_vfprintf_r+0xf40>
 800327a:	f898 3000 	ldrb.w	r3, [r8]
 800327e:	459a      	cmp	sl, r3
 8003280:	d1e2      	bne.n	8003248 <_vfprintf_r+0xf40>
 8003282:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003286:	d0df      	beq.n	8003248 <_vfprintf_r+0xf40>
 8003288:	2d00      	cmp	r5, #0
 800328a:	bf08      	it	eq
 800328c:	2c0a      	cmpeq	r4, #10
 800328e:	d3db      	bcc.n	8003248 <_vfprintf_r+0xf40>
 8003290:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003292:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003294:	1aff      	subs	r7, r7, r3
 8003296:	461a      	mov	r2, r3
 8003298:	4638      	mov	r0, r7
 800329a:	f003 faf5 	bl	8006888 <strncpy>
 800329e:	f898 3001 	ldrb.w	r3, [r8, #1]
 80032a2:	2b00      	cmp	r3, #0
 80032a4:	f000 8496 	beq.w	8003bd4 <_vfprintf_r+0x18cc>
 80032a8:	f108 0801 	add.w	r8, r8, #1
 80032ac:	f04f 0a00 	mov.w	sl, #0
 80032b0:	e7ca      	b.n	8003248 <_vfprintf_r+0xf40>
 80032b2:	9b04      	ldr	r3, [sp, #16]
 80032b4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80032b8:	1bdb      	subs	r3, r3, r7
 80032ba:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80032be:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80032c0:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80032c4:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 80032c8:	9309      	str	r3, [sp, #36]	; 0x24
 80032ca:	f7ff b99e 	b.w	800260a <_vfprintf_r+0x302>
 80032ce:	46c1      	mov	r9, r8
 80032d0:	e594      	b.n	8002dfc <_vfprintf_r+0xaf4>
 80032d2:	4621      	mov	r1, r4
 80032d4:	461c      	mov	r4, r3
 80032d6:	460b      	mov	r3, r1
 80032d8:	3201      	adds	r2, #1
 80032da:	442c      	add	r4, r5
 80032dc:	2a07      	cmp	r2, #7
 80032de:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80032e2:	e9cb 3500 	strd	r3, r5, [fp]
 80032e6:	f77f aa5e 	ble.w	80027a6 <_vfprintf_r+0x49e>
 80032ea:	e5ee      	b.n	8002eca <_vfprintf_r+0xbc2>
 80032ec:	f018 0f10 	tst.w	r8, #16
 80032f0:	f040 80f8 	bne.w	80034e4 <_vfprintf_r+0x11dc>
 80032f4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80032f8:	f000 8351 	beq.w	800399e <_vfprintf_r+0x1696>
 80032fc:	9a05      	ldr	r2, [sp, #20]
 80032fe:	801a      	strh	r2, [r3, #0]
 8003300:	4657      	mov	r7, sl
 8003302:	f7ff baa7 	b.w	8002854 <_vfprintf_r+0x54c>
 8003306:	aa2a      	add	r2, sp, #168	; 0xa8
 8003308:	9907      	ldr	r1, [sp, #28]
 800330a:	9803      	ldr	r0, [sp, #12]
 800330c:	f003 fb2a 	bl	8006964 <__sprint_r>
 8003310:	2800      	cmp	r0, #0
 8003312:	f47f ad71 	bne.w	8002df8 <_vfprintf_r+0xaf0>
 8003316:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003318:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800331c:	f7ff b9f5 	b.w	800270a <_vfprintf_r+0x402>
 8003320:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003324:	4602      	mov	r2, r0
 8003326:	460b      	mov	r3, r1
 8003328:	f7fd fea0 	bl	800106c <__aeabi_dcmpun>
 800332c:	2800      	cmp	r0, #0
 800332e:	f040 8491 	bne.w	8003c54 <_vfprintf_r+0x194c>
 8003332:	2e61      	cmp	r6, #97	; 0x61
 8003334:	f000 8111 	beq.w	800355a <_vfprintf_r+0x1252>
 8003338:	2e41      	cmp	r6, #65	; 0x41
 800333a:	f000 8377 	beq.w	8003a2c <_vfprintf_r+0x1724>
 800333e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003342:	f026 0220 	bic.w	r2, r6, #32
 8003346:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800334a:	930e      	str	r3, [sp, #56]	; 0x38
 800334c:	9204      	str	r2, [sp, #16]
 800334e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003350:	f000 842d 	beq.w	8003bae <_vfprintf_r+0x18a6>
 8003354:	2a47      	cmp	r2, #71	; 0x47
 8003356:	f000 8424 	beq.w	8003ba2 <_vfprintf_r+0x189a>
 800335a:	2b00      	cmp	r3, #0
 800335c:	f2c0 82f9 	blt.w	8003952 <_vfprintf_r+0x164a>
 8003360:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003364:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003368:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800336c:	2e66      	cmp	r6, #102	; 0x66
 800336e:	f000 83eb 	beq.w	8003b48 <_vfprintf_r+0x1840>
 8003372:	2e46      	cmp	r6, #70	; 0x46
 8003374:	f000 847e 	beq.w	8003c74 <_vfprintf_r+0x196c>
 8003378:	9b04      	ldr	r3, [sp, #16]
 800337a:	9803      	ldr	r0, [sp, #12]
 800337c:	2b45      	cmp	r3, #69	; 0x45
 800337e:	bf0c      	ite	eq
 8003380:	f109 0501 	addeq.w	r5, r9, #1
 8003384:	464d      	movne	r5, r9
 8003386:	aa28      	add	r2, sp, #160	; 0xa0
 8003388:	ab25      	add	r3, sp, #148	; 0x94
 800338a:	e9cd 3200 	strd	r3, r2, [sp]
 800338e:	2102      	movs	r1, #2
 8003390:	ab24      	add	r3, sp, #144	; 0x90
 8003392:	462a      	mov	r2, r5
 8003394:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003398:	f000 fe3e 	bl	8004018 <_dtoa_r>
 800339c:	2e67      	cmp	r6, #103	; 0x67
 800339e:	4607      	mov	r7, r0
 80033a0:	f040 849c 	bne.w	8003cdc <_vfprintf_r+0x19d4>
 80033a4:	f018 0f01 	tst.w	r8, #1
 80033a8:	f040 83f9 	bne.w	8003b9e <_vfprintf_r+0x1896>
 80033ac:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80033ae:	4640      	mov	r0, r8
 80033b0:	1bdb      	subs	r3, r3, r7
 80033b2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80033b6:	9310      	str	r3, [sp, #64]	; 0x40
 80033b8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80033ba:	9311      	str	r3, [sp, #68]	; 0x44
 80033bc:	9b04      	ldr	r3, [sp, #16]
 80033be:	2b47      	cmp	r3, #71	; 0x47
 80033c0:	f000 81e7 	beq.w	8003792 <_vfprintf_r+0x148a>
 80033c4:	9b04      	ldr	r3, [sp, #16]
 80033c6:	2b46      	cmp	r3, #70	; 0x46
 80033c8:	f000 8300 	beq.w	80039cc <_vfprintf_r+0x16c4>
 80033cc:	9904      	ldr	r1, [sp, #16]
 80033ce:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80033d0:	b2f2      	uxtb	r2, r6
 80033d2:	2941      	cmp	r1, #65	; 0x41
 80033d4:	bf08      	it	eq
 80033d6:	320f      	addeq	r2, #15
 80033d8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 80033dc:	bf06      	itte	eq
 80033de:	b2d2      	uxtbeq	r2, r2
 80033e0:	2101      	moveq	r1, #1
 80033e2:	2100      	movne	r1, #0
 80033e4:	2b00      	cmp	r3, #0
 80033e6:	9324      	str	r3, [sp, #144]	; 0x90
 80033e8:	bfb8      	it	lt
 80033ea:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 80033ec:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 80033f0:	bfba      	itte	lt
 80033f2:	f1c3 0301 	rsblt	r3, r3, #1
 80033f6:	222d      	movlt	r2, #45	; 0x2d
 80033f8:	222b      	movge	r2, #43	; 0x2b
 80033fa:	2b09      	cmp	r3, #9
 80033fc:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003400:	f300 83f9 	bgt.w	8003bf6 <_vfprintf_r+0x18ee>
 8003404:	2900      	cmp	r1, #0
 8003406:	f040 8487 	bne.w	8003d18 <_vfprintf_r+0x1a10>
 800340a:	2230      	movs	r2, #48	; 0x30
 800340c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003410:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003414:	3330      	adds	r3, #48	; 0x30
 8003416:	7013      	strb	r3, [r2, #0]
 8003418:	1c53      	adds	r3, r2, #1
 800341a:	aa26      	add	r2, sp, #152	; 0x98
 800341c:	1a9b      	subs	r3, r3, r2
 800341e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003420:	9319      	str	r3, [sp, #100]	; 0x64
 8003422:	2a01      	cmp	r2, #1
 8003424:	4413      	add	r3, r2
 8003426:	9309      	str	r3, [sp, #36]	; 0x24
 8003428:	f340 8442 	ble.w	8003cb0 <_vfprintf_r+0x19a8>
 800342c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800342e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003430:	4413      	add	r3, r2
 8003432:	9309      	str	r3, [sp, #36]	; 0x24
 8003434:	2300      	movs	r3, #0
 8003436:	930f      	str	r3, [sp, #60]	; 0x3c
 8003438:	9314      	str	r3, [sp, #80]	; 0x50
 800343a:	9311      	str	r3, [sp, #68]	; 0x44
 800343c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800343e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003442:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003446:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 800344a:	9304      	str	r3, [sp, #16]
 800344c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800344e:	2b00      	cmp	r3, #0
 8003450:	f040 8275 	bne.w	800393e <_vfprintf_r+0x1636>
 8003454:	4699      	mov	r9, r3
 8003456:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800345a:	f7ff b8e2 	b.w	8002622 <_vfprintf_r+0x31a>
 800345e:	bf00      	nop
 8003460:	08007068 	.word	0x08007068
 8003464:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003466:	49bd      	ldr	r1, [pc, #756]	; (800375c <_vfprintf_r+0x1454>)
 8003468:	f8cb 1000 	str.w	r1, [fp]
 800346c:	3201      	adds	r2, #1
 800346e:	3401      	adds	r4, #1
 8003470:	2101      	movs	r1, #1
 8003472:	2a07      	cmp	r2, #7
 8003474:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003478:	f8cb 1004 	str.w	r1, [fp, #4]
 800347c:	dc60      	bgt.n	8003540 <_vfprintf_r+0x1238>
 800347e:	f10b 0b08 	add.w	fp, fp, #8
 8003482:	b92b      	cbnz	r3, 8003490 <_vfprintf_r+0x1188>
 8003484:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003486:	b91a      	cbnz	r2, 8003490 <_vfprintf_r+0x1188>
 8003488:	f018 0f01 	tst.w	r8, #1
 800348c:	f43f a98d 	beq.w	80027aa <_vfprintf_r+0x4a2>
 8003490:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003492:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003494:	f8cb 1000 	str.w	r1, [fp]
 8003498:	9915      	ldr	r1, [sp, #84]	; 0x54
 800349a:	f8cb 1004 	str.w	r1, [fp, #4]
 800349e:	3201      	adds	r2, #1
 80034a0:	440c      	add	r4, r1
 80034a2:	2a07      	cmp	r2, #7
 80034a4:	942c      	str	r4, [sp, #176]	; 0xb0
 80034a6:	922b      	str	r2, [sp, #172]	; 0xac
 80034a8:	f300 8282 	bgt.w	80039b0 <_vfprintf_r+0x16a8>
 80034ac:	f10b 0b08 	add.w	fp, fp, #8
 80034b0:	2b00      	cmp	r3, #0
 80034b2:	f2c0 82e7 	blt.w	8003a84 <_vfprintf_r+0x177c>
 80034b6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80034b8:	3201      	adds	r2, #1
 80034ba:	441c      	add	r4, r3
 80034bc:	2a07      	cmp	r2, #7
 80034be:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80034c2:	e9cb 7300 	strd	r7, r3, [fp]
 80034c6:	f77f a96e 	ble.w	80027a6 <_vfprintf_r+0x49e>
 80034ca:	e4fe      	b.n	8002eca <_vfprintf_r+0xbc2>
 80034cc:	aa2a      	add	r2, sp, #168	; 0xa8
 80034ce:	9907      	ldr	r1, [sp, #28]
 80034d0:	9803      	ldr	r0, [sp, #12]
 80034d2:	f003 fa47 	bl	8006964 <__sprint_r>
 80034d6:	2800      	cmp	r0, #0
 80034d8:	f47f ac8e 	bne.w	8002df8 <_vfprintf_r+0xaf0>
 80034dc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034e0:	f7ff bbf0 	b.w	8002cc4 <_vfprintf_r+0x9bc>
 80034e4:	9a05      	ldr	r2, [sp, #20]
 80034e6:	601a      	str	r2, [r3, #0]
 80034e8:	4657      	mov	r7, sl
 80034ea:	f7ff b9b3 	b.w	8002854 <_vfprintf_r+0x54c>
 80034ee:	8814      	ldrh	r4, [r2, #0]
 80034f0:	9108      	str	r1, [sp, #32]
 80034f2:	2500      	movs	r5, #0
 80034f4:	2201      	movs	r2, #1
 80034f6:	f7ff b9c8 	b.w	800288a <_vfprintf_r+0x582>
 80034fa:	8814      	ldrh	r4, [r2, #0]
 80034fc:	9308      	str	r3, [sp, #32]
 80034fe:	2500      	movs	r5, #0
 8003500:	f7ff ba14 	b.w	800292c <_vfprintf_r+0x624>
 8003504:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003508:	9208      	str	r2, [sp, #32]
 800350a:	17e5      	asrs	r5, r4, #31
 800350c:	4620      	mov	r0, r4
 800350e:	4629      	mov	r1, r5
 8003510:	f7ff b855 	b.w	80025be <_vfprintf_r+0x2b6>
 8003514:	8814      	ldrh	r4, [r2, #0]
 8003516:	9308      	str	r3, [sp, #32]
 8003518:	2500      	movs	r5, #0
 800351a:	f7ff b825 	b.w	8002568 <_vfprintf_r+0x260>
 800351e:	222d      	movs	r2, #45	; 0x2d
 8003520:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003524:	f7ff baa2 	b.w	8002a6c <_vfprintf_r+0x764>
 8003528:	aa2a      	add	r2, sp, #168	; 0xa8
 800352a:	9907      	ldr	r1, [sp, #28]
 800352c:	9803      	ldr	r0, [sp, #12]
 800352e:	f003 fa19 	bl	8006964 <__sprint_r>
 8003532:	2800      	cmp	r0, #0
 8003534:	f47f ac60 	bne.w	8002df8 <_vfprintf_r+0xaf0>
 8003538:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800353a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800353e:	e534      	b.n	8002faa <_vfprintf_r+0xca2>
 8003540:	aa2a      	add	r2, sp, #168	; 0xa8
 8003542:	9907      	ldr	r1, [sp, #28]
 8003544:	9803      	ldr	r0, [sp, #12]
 8003546:	f003 fa0d 	bl	8006964 <__sprint_r>
 800354a:	2800      	cmp	r0, #0
 800354c:	f47f ac54 	bne.w	8002df8 <_vfprintf_r+0xaf0>
 8003550:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003552:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003554:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003558:	e793      	b.n	8003482 <_vfprintf_r+0x117a>
 800355a:	2330      	movs	r3, #48	; 0x30
 800355c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003560:	2378      	movs	r3, #120	; 0x78
 8003562:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003566:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 800356a:	f048 0402 	orr.w	r4, r8, #2
 800356e:	f300 82b0 	bgt.w	8003ad2 <_vfprintf_r+0x17ca>
 8003572:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003576:	930e      	str	r3, [sp, #56]	; 0x38
 8003578:	f026 0320 	bic.w	r3, r6, #32
 800357c:	9304      	str	r3, [sp, #16]
 800357e:	2200      	movs	r2, #0
 8003580:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003582:	920a      	str	r2, [sp, #40]	; 0x28
 8003584:	46a0      	mov	r8, r4
 8003586:	af3d      	add	r7, sp, #244	; 0xf4
 8003588:	2b00      	cmp	r3, #0
 800358a:	f2c0 81e3 	blt.w	8003954 <_vfprintf_r+0x164c>
 800358e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003592:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003596:	2300      	movs	r3, #0
 8003598:	930b      	str	r3, [sp, #44]	; 0x2c
 800359a:	2e61      	cmp	r6, #97	; 0x61
 800359c:	f000 8255 	beq.w	8003a4a <_vfprintf_r+0x1742>
 80035a0:	2e41      	cmp	r6, #65	; 0x41
 80035a2:	f47f aee3 	bne.w	800336c <_vfprintf_r+0x1064>
 80035a6:	a824      	add	r0, sp, #144	; 0x90
 80035a8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80035ac:	f003 f8e2 	bl	8006774 <frexp>
 80035b0:	2200      	movs	r2, #0
 80035b2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80035b6:	ec51 0b10 	vmov	r0, r1, d0
 80035ba:	f7fd fabd 	bl	8000b38 <__aeabi_dmul>
 80035be:	2200      	movs	r2, #0
 80035c0:	2300      	movs	r3, #0
 80035c2:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80035c6:	f7fd fd1f 	bl	8001008 <__aeabi_dcmpeq>
 80035ca:	2800      	cmp	r0, #0
 80035cc:	f040 8305 	bne.w	8003bda <_vfprintf_r+0x18d2>
 80035d0:	4b63      	ldr	r3, [pc, #396]	; (8003760 <_vfprintf_r+0x1458>)
 80035d2:	9309      	str	r3, [sp, #36]	; 0x24
 80035d4:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 80035d8:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 80035dc:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80035e0:	9721      	str	r7, [sp, #132]	; 0x84
 80035e2:	46b9      	mov	r9, r7
 80035e4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 80035e8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 80035ec:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80035f0:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 80035f4:	e003      	b.n	80035fe <_vfprintf_r+0x12f6>
 80035f6:	f7fd fd07 	bl	8001008 <__aeabi_dcmpeq>
 80035fa:	bb20      	cbnz	r0, 8003646 <_vfprintf_r+0x133e>
 80035fc:	46a9      	mov	r9, r5
 80035fe:	2200      	movs	r2, #0
 8003600:	4b58      	ldr	r3, [pc, #352]	; (8003764 <_vfprintf_r+0x145c>)
 8003602:	4630      	mov	r0, r6
 8003604:	4639      	mov	r1, r7
 8003606:	f7fd fa97 	bl	8000b38 <__aeabi_dmul>
 800360a:	460f      	mov	r7, r1
 800360c:	4606      	mov	r6, r0
 800360e:	f7fd fd43 	bl	8001098 <__aeabi_d2iz>
 8003612:	4680      	mov	r8, r0
 8003614:	f7fd fa26 	bl	8000a64 <__aeabi_i2d>
 8003618:	4602      	mov	r2, r0
 800361a:	460b      	mov	r3, r1
 800361c:	4630      	mov	r0, r6
 800361e:	4639      	mov	r1, r7
 8003620:	f7fd f8d2 	bl	80007c8 <__aeabi_dsub>
 8003624:	464d      	mov	r5, r9
 8003626:	f81a c008 	ldrb.w	ip, [sl, r8]
 800362a:	f805 cb01 	strb.w	ip, [r5], #1
 800362e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003632:	46a3      	mov	fp, r4
 8003634:	4606      	mov	r6, r0
 8003636:	460f      	mov	r7, r1
 8003638:	f04f 0200 	mov.w	r2, #0
 800363c:	f04f 0300 	mov.w	r3, #0
 8003640:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003644:	d1d7      	bne.n	80035f6 <_vfprintf_r+0x12ee>
 8003646:	4630      	mov	r0, r6
 8003648:	4639      	mov	r1, r7
 800364a:	2200      	movs	r2, #0
 800364c:	4b46      	ldr	r3, [pc, #280]	; (8003768 <_vfprintf_r+0x1460>)
 800364e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003652:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003654:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003658:	4644      	mov	r4, r8
 800365a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 800365e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003662:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003666:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 800366a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 800366c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003670:	f7fd fcf2 	bl	8001058 <__aeabi_dcmpgt>
 8003674:	2800      	cmp	r0, #0
 8003676:	f040 8176 	bne.w	8003966 <_vfprintf_r+0x165e>
 800367a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 800367e:	2200      	movs	r2, #0
 8003680:	4b39      	ldr	r3, [pc, #228]	; (8003768 <_vfprintf_r+0x1460>)
 8003682:	f7fd fcc1 	bl	8001008 <__aeabi_dcmpeq>
 8003686:	b110      	cbz	r0, 800368e <_vfprintf_r+0x1386>
 8003688:	07e2      	lsls	r2, r4, #31
 800368a:	f100 816c 	bmi.w	8003966 <_vfprintf_r+0x165e>
 800368e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003690:	2b00      	cmp	r3, #0
 8003692:	db07      	blt.n	80036a4 <_vfprintf_r+0x139c>
 8003694:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003696:	3301      	adds	r3, #1
 8003698:	442b      	add	r3, r5
 800369a:	2230      	movs	r2, #48	; 0x30
 800369c:	f805 2b01 	strb.w	r2, [r5], #1
 80036a0:	42ab      	cmp	r3, r5
 80036a2:	d1fb      	bne.n	800369c <_vfprintf_r+0x1394>
 80036a4:	1beb      	subs	r3, r5, r7
 80036a6:	4640      	mov	r0, r8
 80036a8:	9310      	str	r3, [sp, #64]	; 0x40
 80036aa:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80036ae:	e683      	b.n	80033b8 <_vfprintf_r+0x10b0>
 80036b0:	f8cd 9010 	str.w	r9, [sp, #16]
 80036b4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80036b8:	9408      	str	r4, [sp, #32]
 80036ba:	4681      	mov	r9, r0
 80036bc:	900f      	str	r0, [sp, #60]	; 0x3c
 80036be:	9014      	str	r0, [sp, #80]	; 0x50
 80036c0:	9011      	str	r0, [sp, #68]	; 0x44
 80036c2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80036c6:	f7fe bfac 	b.w	8002622 <_vfprintf_r+0x31a>
 80036ca:	aa2a      	add	r2, sp, #168	; 0xa8
 80036cc:	9907      	ldr	r1, [sp, #28]
 80036ce:	9803      	ldr	r0, [sp, #12]
 80036d0:	f003 f948 	bl	8006964 <__sprint_r>
 80036d4:	2800      	cmp	r0, #0
 80036d6:	f47f ab8f 	bne.w	8002df8 <_vfprintf_r+0xaf0>
 80036da:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80036dc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036de:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036e2:	e511      	b.n	8003108 <_vfprintf_r+0xe00>
 80036e4:	4252      	negs	r2, r2
 80036e6:	9206      	str	r2, [sp, #24]
 80036e8:	9308      	str	r3, [sp, #32]
 80036ea:	f7ff b96d 	b.w	80029c8 <_vfprintf_r+0x6c0>
 80036ee:	4614      	mov	r4, r2
 80036f0:	4632      	mov	r2, r6
 80036f2:	461e      	mov	r6, r3
 80036f4:	4613      	mov	r3, r2
 80036f6:	462a      	mov	r2, r5
 80036f8:	3201      	adds	r2, #1
 80036fa:	9209      	str	r2, [sp, #36]	; 0x24
 80036fc:	f106 0208 	add.w	r2, r6, #8
 8003700:	e9c6 3900 	strd	r3, r9, [r6]
 8003704:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003706:	932b      	str	r3, [sp, #172]	; 0xac
 8003708:	444c      	add	r4, r9
 800370a:	2b07      	cmp	r3, #7
 800370c:	942c      	str	r4, [sp, #176]	; 0xb0
 800370e:	f73f acc3 	bgt.w	8003098 <_vfprintf_r+0xd90>
 8003712:	3301      	adds	r3, #1
 8003714:	9309      	str	r3, [sp, #36]	; 0x24
 8003716:	f102 0b08 	add.w	fp, r2, #8
 800371a:	4616      	mov	r6, r2
 800371c:	f7ff bbca 	b.w	8002eb4 <_vfprintf_r+0xbac>
 8003720:	aa2a      	add	r2, sp, #168	; 0xa8
 8003722:	9907      	ldr	r1, [sp, #28]
 8003724:	9803      	ldr	r0, [sp, #12]
 8003726:	f003 f91d 	bl	8006964 <__sprint_r>
 800372a:	2800      	cmp	r0, #0
 800372c:	f47f ab64 	bne.w	8002df8 <_vfprintf_r+0xaf0>
 8003730:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003732:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003736:	f7ff bade 	b.w	8002cf6 <_vfprintf_r+0x9ee>
 800373a:	464b      	mov	r3, r9
 800373c:	2b06      	cmp	r3, #6
 800373e:	bf28      	it	cs
 8003740:	2306      	movcs	r3, #6
 8003742:	46b9      	mov	r9, r7
 8003744:	970f      	str	r7, [sp, #60]	; 0x3c
 8003746:	9714      	str	r7, [sp, #80]	; 0x50
 8003748:	9711      	str	r7, [sp, #68]	; 0x44
 800374a:	970a      	str	r7, [sp, #40]	; 0x28
 800374c:	463a      	mov	r2, r7
 800374e:	9304      	str	r3, [sp, #16]
 8003750:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003754:	4f05      	ldr	r7, [pc, #20]	; (800376c <_vfprintf_r+0x1464>)
 8003756:	f7fe bf64 	b.w	8002622 <_vfprintf_r+0x31a>
 800375a:	bf00      	nop
 800375c:	08007054 	.word	0x08007054
 8003760:	08007038 	.word	0x08007038
 8003764:	40300000 	.word	0x40300000
 8003768:	3fe00000 	.word	0x3fe00000
 800376c:	0800704c 	.word	0x0800704c
 8003770:	460c      	mov	r4, r1
 8003772:	4639      	mov	r1, r7
 8003774:	465f      	mov	r7, fp
 8003776:	469b      	mov	fp, r3
 8003778:	460b      	mov	r3, r1
 800377a:	3201      	adds	r2, #1
 800377c:	442c      	add	r4, r5
 800377e:	2a07      	cmp	r2, #7
 8003780:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003784:	e9cb 3500 	strd	r3, r5, [fp]
 8003788:	f73f aca5 	bgt.w	80030d6 <_vfprintf_r+0xdce>
 800378c:	f10b 0b08 	add.w	fp, fp, #8
 8003790:	e4ac      	b.n	80030ec <_vfprintf_r+0xde4>
 8003792:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003794:	1cda      	adds	r2, r3, #3
 8003796:	db02      	blt.n	800379e <_vfprintf_r+0x1496>
 8003798:	4599      	cmp	r9, r3
 800379a:	f280 80b5 	bge.w	8003908 <_vfprintf_r+0x1600>
 800379e:	3e02      	subs	r6, #2
 80037a0:	f026 0320 	bic.w	r3, r6, #32
 80037a4:	9304      	str	r3, [sp, #16]
 80037a6:	e611      	b.n	80033cc <_vfprintf_r+0x10c4>
 80037a8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80037aa:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80037ae:	465a      	mov	r2, fp
 80037b0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 80037b4:	18fb      	adds	r3, r7, r3
 80037b6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80037ba:	970c      	str	r7, [sp, #48]	; 0x30
 80037bc:	4eaf      	ldr	r6, [pc, #700]	; (8003a7c <_vfprintf_r+0x1774>)
 80037be:	f8dd a01c 	ldr.w	sl, [sp, #28]
 80037c2:	9309      	str	r3, [sp, #36]	; 0x24
 80037c4:	464f      	mov	r7, r9
 80037c6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80037ca:	4621      	mov	r1, r4
 80037cc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80037ce:	2b00      	cmp	r3, #0
 80037d0:	d05b      	beq.n	800388a <_vfprintf_r+0x1582>
 80037d2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80037d4:	2b00      	cmp	r3, #0
 80037d6:	d154      	bne.n	8003882 <_vfprintf_r+0x157a>
 80037d8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80037da:	3b01      	subs	r3, #1
 80037dc:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80037e0:	9314      	str	r3, [sp, #80]	; 0x50
 80037e2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80037e4:	9818      	ldr	r0, [sp, #96]	; 0x60
 80037e6:	6010      	str	r0, [r2, #0]
 80037e8:	3301      	adds	r3, #1
 80037ea:	4459      	add	r1, fp
 80037ec:	2b07      	cmp	r3, #7
 80037ee:	912c      	str	r1, [sp, #176]	; 0xb0
 80037f0:	f8c2 b004 	str.w	fp, [r2, #4]
 80037f4:	932b      	str	r3, [sp, #172]	; 0xac
 80037f6:	dc68      	bgt.n	80038ca <_vfprintf_r+0x15c2>
 80037f8:	3208      	adds	r2, #8
 80037fa:	9809      	ldr	r0, [sp, #36]	; 0x24
 80037fc:	f898 3000 	ldrb.w	r3, [r8]
 8003800:	1bc5      	subs	r5, r0, r7
 8003802:	429d      	cmp	r5, r3
 8003804:	bfa8      	it	ge
 8003806:	461d      	movge	r5, r3
 8003808:	2d00      	cmp	r5, #0
 800380a:	dd0b      	ble.n	8003824 <_vfprintf_r+0x151c>
 800380c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800380e:	6017      	str	r7, [r2, #0]
 8003810:	3301      	adds	r3, #1
 8003812:	4429      	add	r1, r5
 8003814:	2b07      	cmp	r3, #7
 8003816:	912c      	str	r1, [sp, #176]	; 0xb0
 8003818:	6055      	str	r5, [r2, #4]
 800381a:	932b      	str	r3, [sp, #172]	; 0xac
 800381c:	dc5e      	bgt.n	80038dc <_vfprintf_r+0x15d4>
 800381e:	f898 3000 	ldrb.w	r3, [r8]
 8003822:	3208      	adds	r2, #8
 8003824:	2d00      	cmp	r5, #0
 8003826:	bfac      	ite	ge
 8003828:	1b5d      	subge	r5, r3, r5
 800382a:	461d      	movlt	r5, r3
 800382c:	2d00      	cmp	r5, #0
 800382e:	dd26      	ble.n	800387e <_vfprintf_r+0x1576>
 8003830:	2d10      	cmp	r5, #16
 8003832:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003834:	dd3c      	ble.n	80038b0 <_vfprintf_r+0x15a8>
 8003836:	2410      	movs	r4, #16
 8003838:	e003      	b.n	8003842 <_vfprintf_r+0x153a>
 800383a:	3208      	adds	r2, #8
 800383c:	3d10      	subs	r5, #16
 800383e:	2d10      	cmp	r5, #16
 8003840:	dd36      	ble.n	80038b0 <_vfprintf_r+0x15a8>
 8003842:	3001      	adds	r0, #1
 8003844:	3110      	adds	r1, #16
 8003846:	2807      	cmp	r0, #7
 8003848:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800384c:	e9c2 6400 	strd	r6, r4, [r2]
 8003850:	ddf3      	ble.n	800383a <_vfprintf_r+0x1532>
 8003852:	aa2a      	add	r2, sp, #168	; 0xa8
 8003854:	4651      	mov	r1, sl
 8003856:	4648      	mov	r0, r9
 8003858:	f003 f884 	bl	8006964 <__sprint_r>
 800385c:	2800      	cmp	r0, #0
 800385e:	d150      	bne.n	8003902 <_vfprintf_r+0x15fa>
 8003860:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003864:	aa2d      	add	r2, sp, #180	; 0xb4
 8003866:	e7e9      	b.n	800383c <_vfprintf_r+0x1534>
 8003868:	aa2a      	add	r2, sp, #168	; 0xa8
 800386a:	4651      	mov	r1, sl
 800386c:	4648      	mov	r0, r9
 800386e:	f003 f879 	bl	8006964 <__sprint_r>
 8003872:	2800      	cmp	r0, #0
 8003874:	d145      	bne.n	8003902 <_vfprintf_r+0x15fa>
 8003876:	f898 3000 	ldrb.w	r3, [r8]
 800387a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800387c:	aa2d      	add	r2, sp, #180	; 0xb4
 800387e:	441f      	add	r7, r3
 8003880:	e7a4      	b.n	80037cc <_vfprintf_r+0x14c4>
 8003882:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003884:	3b01      	subs	r3, #1
 8003886:	930f      	str	r3, [sp, #60]	; 0x3c
 8003888:	e7ab      	b.n	80037e2 <_vfprintf_r+0x14da>
 800388a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800388c:	2b00      	cmp	r3, #0
 800388e:	d1f8      	bne.n	8003882 <_vfprintf_r+0x157a>
 8003890:	46b9      	mov	r9, r7
 8003892:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003894:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003896:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 800389a:	18fb      	adds	r3, r7, r3
 800389c:	4599      	cmp	r9, r3
 800389e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 80038a2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80038a6:	4693      	mov	fp, r2
 80038a8:	460c      	mov	r4, r1
 80038aa:	bf28      	it	cs
 80038ac:	4699      	movcs	r9, r3
 80038ae:	e424      	b.n	80030fa <_vfprintf_r+0xdf2>
 80038b0:	3001      	adds	r0, #1
 80038b2:	4429      	add	r1, r5
 80038b4:	2807      	cmp	r0, #7
 80038b6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80038ba:	e9c2 6500 	strd	r6, r5, [r2]
 80038be:	dcd3      	bgt.n	8003868 <_vfprintf_r+0x1560>
 80038c0:	f898 3000 	ldrb.w	r3, [r8]
 80038c4:	3208      	adds	r2, #8
 80038c6:	441f      	add	r7, r3
 80038c8:	e780      	b.n	80037cc <_vfprintf_r+0x14c4>
 80038ca:	aa2a      	add	r2, sp, #168	; 0xa8
 80038cc:	4651      	mov	r1, sl
 80038ce:	4648      	mov	r0, r9
 80038d0:	f003 f848 	bl	8006964 <__sprint_r>
 80038d4:	b9a8      	cbnz	r0, 8003902 <_vfprintf_r+0x15fa>
 80038d6:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80038d8:	aa2d      	add	r2, sp, #180	; 0xb4
 80038da:	e78e      	b.n	80037fa <_vfprintf_r+0x14f2>
 80038dc:	aa2a      	add	r2, sp, #168	; 0xa8
 80038de:	4651      	mov	r1, sl
 80038e0:	4648      	mov	r0, r9
 80038e2:	f003 f83f 	bl	8006964 <__sprint_r>
 80038e6:	b960      	cbnz	r0, 8003902 <_vfprintf_r+0x15fa>
 80038e8:	f898 3000 	ldrb.w	r3, [r8]
 80038ec:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80038ee:	aa2d      	add	r2, sp, #180	; 0xb4
 80038f0:	e798      	b.n	8003824 <_vfprintf_r+0x151c>
 80038f2:	4638      	mov	r0, r7
 80038f4:	f7fc fea4 	bl	8000640 <strlen>
 80038f8:	46a9      	mov	r9, r5
 80038fa:	4603      	mov	r3, r0
 80038fc:	9009      	str	r0, [sp, #36]	; 0x24
 80038fe:	f7ff b8f4 	b.w	8002aea <_vfprintf_r+0x7e2>
 8003902:	46d1      	mov	r9, sl
 8003904:	f7ff ba7a 	b.w	8002dfc <_vfprintf_r+0xaf4>
 8003908:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800390a:	4619      	mov	r1, r3
 800390c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800390e:	4299      	cmp	r1, r3
 8003910:	f300 8082 	bgt.w	8003a18 <_vfprintf_r+0x1710>
 8003914:	07c4      	lsls	r4, r0, #31
 8003916:	f140 816b 	bpl.w	8003bf0 <_vfprintf_r+0x18e8>
 800391a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800391c:	4413      	add	r3, r2
 800391e:	9309      	str	r3, [sp, #36]	; 0x24
 8003920:	0541      	lsls	r1, r0, #21
 8003922:	d503      	bpl.n	800392c <_vfprintf_r+0x1624>
 8003924:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003926:	2b00      	cmp	r3, #0
 8003928:	f300 80e6 	bgt.w	8003af8 <_vfprintf_r+0x17f0>
 800392c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800392e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003932:	9304      	str	r3, [sp, #16]
 8003934:	2667      	movs	r6, #103	; 0x67
 8003936:	2300      	movs	r3, #0
 8003938:	930f      	str	r3, [sp, #60]	; 0x3c
 800393a:	9314      	str	r3, [sp, #80]	; 0x50
 800393c:	e586      	b.n	800344c <_vfprintf_r+0x1144>
 800393e:	222d      	movs	r2, #45	; 0x2d
 8003940:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003944:	f04f 0900 	mov.w	r9, #0
 8003948:	f7fe be6c 	b.w	8002624 <_vfprintf_r+0x31c>
 800394c:	46a1      	mov	r9, r4
 800394e:	f7ff ba55 	b.w	8002dfc <_vfprintf_r+0xaf4>
 8003952:	900a      	str	r0, [sp, #40]	; 0x28
 8003954:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003958:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 800395c:	931f      	str	r3, [sp, #124]	; 0x7c
 800395e:	232d      	movs	r3, #45	; 0x2d
 8003960:	911e      	str	r1, [sp, #120]	; 0x78
 8003962:	930b      	str	r3, [sp, #44]	; 0x2c
 8003964:	e619      	b.n	800359a <_vfprintf_r+0x1292>
 8003966:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003968:	9328      	str	r3, [sp, #160]	; 0xa0
 800396a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800396c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003970:	7bd9      	ldrb	r1, [r3, #15]
 8003972:	4291      	cmp	r1, r2
 8003974:	462b      	mov	r3, r5
 8003976:	d109      	bne.n	800398c <_vfprintf_r+0x1684>
 8003978:	2030      	movs	r0, #48	; 0x30
 800397a:	f803 0c01 	strb.w	r0, [r3, #-1]
 800397e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003980:	1e5a      	subs	r2, r3, #1
 8003982:	9228      	str	r2, [sp, #160]	; 0xa0
 8003984:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003988:	4291      	cmp	r1, r2
 800398a:	d0f6      	beq.n	800397a <_vfprintf_r+0x1672>
 800398c:	2a39      	cmp	r2, #57	; 0x39
 800398e:	bf0b      	itete	eq
 8003990:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003992:	3201      	addne	r2, #1
 8003994:	7a92      	ldrbeq	r2, [r2, #10]
 8003996:	b2d2      	uxtbne	r2, r2
 8003998:	f803 2c01 	strb.w	r2, [r3, #-1]
 800399c:	e682      	b.n	80036a4 <_vfprintf_r+0x139c>
 800399e:	f418 7f00 	tst.w	r8, #512	; 0x200
 80039a2:	f43f ad9f 	beq.w	80034e4 <_vfprintf_r+0x11dc>
 80039a6:	9a05      	ldr	r2, [sp, #20]
 80039a8:	701a      	strb	r2, [r3, #0]
 80039aa:	4657      	mov	r7, sl
 80039ac:	f7fe bf52 	b.w	8002854 <_vfprintf_r+0x54c>
 80039b0:	aa2a      	add	r2, sp, #168	; 0xa8
 80039b2:	9907      	ldr	r1, [sp, #28]
 80039b4:	9803      	ldr	r0, [sp, #12]
 80039b6:	f002 ffd5 	bl	8006964 <__sprint_r>
 80039ba:	2800      	cmp	r0, #0
 80039bc:	f47f aa1c 	bne.w	8002df8 <_vfprintf_r+0xaf0>
 80039c0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80039c2:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80039c6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039ca:	e571      	b.n	80034b0 <_vfprintf_r+0x11a8>
 80039cc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039ce:	2b00      	cmp	r3, #0
 80039d0:	f340 8164 	ble.w	8003c9c <_vfprintf_r+0x1994>
 80039d4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039d6:	f1b9 0f00 	cmp.w	r9, #0
 80039da:	f040 8103 	bne.w	8003be4 <_vfprintf_r+0x18dc>
 80039de:	07c6      	lsls	r6, r0, #31
 80039e0:	f100 8100 	bmi.w	8003be4 <_vfprintf_r+0x18dc>
 80039e4:	9309      	str	r3, [sp, #36]	; 0x24
 80039e6:	2666      	movs	r6, #102	; 0x66
 80039e8:	0543      	lsls	r3, r0, #21
 80039ea:	f100 8086 	bmi.w	8003afa <_vfprintf_r+0x17f2>
 80039ee:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80039f0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80039f4:	9304      	str	r3, [sp, #16]
 80039f6:	e79e      	b.n	8003936 <_vfprintf_r+0x162e>
 80039f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80039fa:	9907      	ldr	r1, [sp, #28]
 80039fc:	9803      	ldr	r0, [sp, #12]
 80039fe:	f002 ffb1 	bl	8006964 <__sprint_r>
 8003a02:	2800      	cmp	r0, #0
 8003a04:	f47f a9f8 	bne.w	8002df8 <_vfprintf_r+0xaf0>
 8003a08:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003a0a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003a0c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a0e:	1ad3      	subs	r3, r2, r3
 8003a10:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a14:	f7ff bb90 	b.w	8003138 <_vfprintf_r+0xe30>
 8003a18:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a1a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003a1c:	4413      	add	r3, r2
 8003a1e:	9309      	str	r3, [sp, #36]	; 0x24
 8003a20:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a22:	2b00      	cmp	r3, #0
 8003a24:	f340 8149 	ble.w	8003cba <_vfprintf_r+0x19b2>
 8003a28:	2667      	movs	r6, #103	; 0x67
 8003a2a:	e7dd      	b.n	80039e8 <_vfprintf_r+0x16e0>
 8003a2c:	2330      	movs	r3, #48	; 0x30
 8003a2e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003a32:	2358      	movs	r3, #88	; 0x58
 8003a34:	e595      	b.n	8003562 <_vfprintf_r+0x125a>
 8003a36:	9803      	ldr	r0, [sp, #12]
 8003a38:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a3a:	4649      	mov	r1, r9
 8003a3c:	f002 ff92 	bl	8006964 <__sprint_r>
 8003a40:	2800      	cmp	r0, #0
 8003a42:	f47f a9e0 	bne.w	8002e06 <_vfprintf_r+0xafe>
 8003a46:	f7fe bf0f 	b.w	8002868 <_vfprintf_r+0x560>
 8003a4a:	a824      	add	r0, sp, #144	; 0x90
 8003a4c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003a50:	f002 fe90 	bl	8006774 <frexp>
 8003a54:	2200      	movs	r2, #0
 8003a56:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003a5a:	ec51 0b10 	vmov	r0, r1, d0
 8003a5e:	f7fd f86b 	bl	8000b38 <__aeabi_dmul>
 8003a62:	2200      	movs	r2, #0
 8003a64:	2300      	movs	r3, #0
 8003a66:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003a6a:	f7fd facd 	bl	8001008 <__aeabi_dcmpeq>
 8003a6e:	b108      	cbz	r0, 8003a74 <_vfprintf_r+0x176c>
 8003a70:	2301      	movs	r3, #1
 8003a72:	9324      	str	r3, [sp, #144]	; 0x90
 8003a74:	4b02      	ldr	r3, [pc, #8]	; (8003a80 <_vfprintf_r+0x1778>)
 8003a76:	9309      	str	r3, [sp, #36]	; 0x24
 8003a78:	e5ac      	b.n	80035d4 <_vfprintf_r+0x12cc>
 8003a7a:	bf00      	nop
 8003a7c:	08007068 	.word	0x08007068
 8003a80:	08007024 	.word	0x08007024
 8003a84:	425d      	negs	r5, r3
 8003a86:	3310      	adds	r3, #16
 8003a88:	4bb9      	ldr	r3, [pc, #740]	; (8003d70 <_vfprintf_r+0x1a68>)
 8003a8a:	f280 8097 	bge.w	8003bbc <_vfprintf_r+0x18b4>
 8003a8e:	4619      	mov	r1, r3
 8003a90:	2610      	movs	r6, #16
 8003a92:	4623      	mov	r3, r4
 8003a94:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003a98:	460c      	mov	r4, r1
 8003a9a:	e005      	b.n	8003aa8 <_vfprintf_r+0x17a0>
 8003a9c:	f10b 0b08 	add.w	fp, fp, #8
 8003aa0:	3d10      	subs	r5, #16
 8003aa2:	2d10      	cmp	r5, #16
 8003aa4:	f340 8087 	ble.w	8003bb6 <_vfprintf_r+0x18ae>
 8003aa8:	3201      	adds	r2, #1
 8003aaa:	3310      	adds	r3, #16
 8003aac:	2a07      	cmp	r2, #7
 8003aae:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003ab2:	e9cb 4600 	strd	r4, r6, [fp]
 8003ab6:	ddf1      	ble.n	8003a9c <_vfprintf_r+0x1794>
 8003ab8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003aba:	9907      	ldr	r1, [sp, #28]
 8003abc:	4648      	mov	r0, r9
 8003abe:	f002 ff51 	bl	8006964 <__sprint_r>
 8003ac2:	2800      	cmp	r0, #0
 8003ac4:	f47f a998 	bne.w	8002df8 <_vfprintf_r+0xaf0>
 8003ac8:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003acc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ad0:	e7e6      	b.n	8003aa0 <_vfprintf_r+0x1798>
 8003ad2:	f109 0101 	add.w	r1, r9, #1
 8003ad6:	9803      	ldr	r0, [sp, #12]
 8003ad8:	f001 fe80 	bl	80057dc <_malloc_r>
 8003adc:	4607      	mov	r7, r0
 8003ade:	2800      	cmp	r0, #0
 8003ae0:	f000 813b 	beq.w	8003d5a <_vfprintf_r+0x1a52>
 8003ae4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003ae8:	930e      	str	r3, [sp, #56]	; 0x38
 8003aea:	f026 0320 	bic.w	r3, r6, #32
 8003aee:	9304      	str	r3, [sp, #16]
 8003af0:	46a0      	mov	r8, r4
 8003af2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003af4:	900a      	str	r0, [sp, #40]	; 0x28
 8003af6:	e547      	b.n	8003588 <_vfprintf_r+0x1280>
 8003af8:	2667      	movs	r6, #103	; 0x67
 8003afa:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003afc:	2200      	movs	r2, #0
 8003afe:	920f      	str	r2, [sp, #60]	; 0x3c
 8003b00:	9214      	str	r2, [sp, #80]	; 0x50
 8003b02:	7803      	ldrb	r3, [r0, #0]
 8003b04:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003b06:	2bff      	cmp	r3, #255	; 0xff
 8003b08:	d00c      	beq.n	8003b24 <_vfprintf_r+0x181c>
 8003b0a:	4293      	cmp	r3, r2
 8003b0c:	da0a      	bge.n	8003b24 <_vfprintf_r+0x181c>
 8003b0e:	7841      	ldrb	r1, [r0, #1]
 8003b10:	1ad2      	subs	r2, r2, r3
 8003b12:	b1a9      	cbz	r1, 8003b40 <_vfprintf_r+0x1838>
 8003b14:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003b16:	3301      	adds	r3, #1
 8003b18:	9314      	str	r3, [sp, #80]	; 0x50
 8003b1a:	460b      	mov	r3, r1
 8003b1c:	2bff      	cmp	r3, #255	; 0xff
 8003b1e:	f100 0001 	add.w	r0, r0, #1
 8003b22:	d1f2      	bne.n	8003b0a <_vfprintf_r+0x1802>
 8003b24:	9211      	str	r2, [sp, #68]	; 0x44
 8003b26:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003b28:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003b2a:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003b2c:	901a      	str	r0, [sp, #104]	; 0x68
 8003b2e:	4413      	add	r3, r2
 8003b30:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003b32:	fb02 1303 	mla	r3, r2, r3, r1
 8003b36:	9309      	str	r3, [sp, #36]	; 0x24
 8003b38:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b3c:	9304      	str	r3, [sp, #16]
 8003b3e:	e485      	b.n	800344c <_vfprintf_r+0x1144>
 8003b40:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003b42:	3101      	adds	r1, #1
 8003b44:	910f      	str	r1, [sp, #60]	; 0x3c
 8003b46:	e7de      	b.n	8003b06 <_vfprintf_r+0x17fe>
 8003b48:	aa28      	add	r2, sp, #160	; 0xa0
 8003b4a:	ab25      	add	r3, sp, #148	; 0x94
 8003b4c:	e9cd 3200 	strd	r3, r2, [sp]
 8003b50:	2103      	movs	r1, #3
 8003b52:	ab24      	add	r3, sp, #144	; 0x90
 8003b54:	464a      	mov	r2, r9
 8003b56:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003b5a:	9803      	ldr	r0, [sp, #12]
 8003b5c:	f000 fa5c 	bl	8004018 <_dtoa_r>
 8003b60:	464d      	mov	r5, r9
 8003b62:	4607      	mov	r7, r0
 8003b64:	eb00 0409 	add.w	r4, r0, r9
 8003b68:	783b      	ldrb	r3, [r7, #0]
 8003b6a:	2b30      	cmp	r3, #48	; 0x30
 8003b6c:	f000 80be 	beq.w	8003cec <_vfprintf_r+0x19e4>
 8003b70:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003b72:	442c      	add	r4, r5
 8003b74:	2200      	movs	r2, #0
 8003b76:	2300      	movs	r3, #0
 8003b78:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003b7c:	f7fd fa44 	bl	8001008 <__aeabi_dcmpeq>
 8003b80:	b108      	cbz	r0, 8003b86 <_vfprintf_r+0x187e>
 8003b82:	4623      	mov	r3, r4
 8003b84:	e413      	b.n	80033ae <_vfprintf_r+0x10a6>
 8003b86:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003b88:	42a3      	cmp	r3, r4
 8003b8a:	f4bf ac10 	bcs.w	80033ae <_vfprintf_r+0x10a6>
 8003b8e:	2130      	movs	r1, #48	; 0x30
 8003b90:	1c5a      	adds	r2, r3, #1
 8003b92:	9228      	str	r2, [sp, #160]	; 0xa0
 8003b94:	7019      	strb	r1, [r3, #0]
 8003b96:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003b98:	429c      	cmp	r4, r3
 8003b9a:	d8f9      	bhi.n	8003b90 <_vfprintf_r+0x1888>
 8003b9c:	e407      	b.n	80033ae <_vfprintf_r+0x10a6>
 8003b9e:	197c      	adds	r4, r7, r5
 8003ba0:	e7e8      	b.n	8003b74 <_vfprintf_r+0x186c>
 8003ba2:	f1b9 0f00 	cmp.w	r9, #0
 8003ba6:	f000 8092 	beq.w	8003cce <_vfprintf_r+0x19c6>
 8003baa:	900a      	str	r0, [sp, #40]	; 0x28
 8003bac:	e4ec      	b.n	8003588 <_vfprintf_r+0x1280>
 8003bae:	900a      	str	r0, [sp, #40]	; 0x28
 8003bb0:	f04f 0906 	mov.w	r9, #6
 8003bb4:	e4e8      	b.n	8003588 <_vfprintf_r+0x1280>
 8003bb6:	4621      	mov	r1, r4
 8003bb8:	461c      	mov	r4, r3
 8003bba:	460b      	mov	r3, r1
 8003bbc:	3201      	adds	r2, #1
 8003bbe:	442c      	add	r4, r5
 8003bc0:	2a07      	cmp	r2, #7
 8003bc2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003bc6:	e9cb 3500 	strd	r3, r5, [fp]
 8003bca:	f300 80a9 	bgt.w	8003d20 <_vfprintf_r+0x1a18>
 8003bce:	f10b 0b08 	add.w	fp, fp, #8
 8003bd2:	e470      	b.n	80034b6 <_vfprintf_r+0x11ae>
 8003bd4:	469a      	mov	sl, r3
 8003bd6:	f7ff bb37 	b.w	8003248 <_vfprintf_r+0xf40>
 8003bda:	2301      	movs	r3, #1
 8003bdc:	9324      	str	r3, [sp, #144]	; 0x90
 8003bde:	4b65      	ldr	r3, [pc, #404]	; (8003d74 <_vfprintf_r+0x1a6c>)
 8003be0:	9309      	str	r3, [sp, #36]	; 0x24
 8003be2:	e4f7      	b.n	80035d4 <_vfprintf_r+0x12cc>
 8003be4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003be6:	4413      	add	r3, r2
 8003be8:	444b      	add	r3, r9
 8003bea:	9309      	str	r3, [sp, #36]	; 0x24
 8003bec:	2666      	movs	r6, #102	; 0x66
 8003bee:	e6fb      	b.n	80039e8 <_vfprintf_r+0x16e0>
 8003bf0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003bf2:	9309      	str	r3, [sp, #36]	; 0x24
 8003bf4:	e694      	b.n	8003920 <_vfprintf_r+0x1618>
 8003bf6:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003bfa:	4664      	mov	r4, ip
 8003bfc:	4d5e      	ldr	r5, [pc, #376]	; (8003d78 <_vfprintf_r+0x1a70>)
 8003bfe:	e000      	b.n	8003c02 <_vfprintf_r+0x18fa>
 8003c00:	4614      	mov	r4, r2
 8003c02:	fba5 1203 	umull	r1, r2, r5, r3
 8003c06:	08d2      	lsrs	r2, r2, #3
 8003c08:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003c0c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003c10:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003c14:	4613      	mov	r3, r2
 8003c16:	2b09      	cmp	r3, #9
 8003c18:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003c1c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003c20:	dcee      	bgt.n	8003c00 <_vfprintf_r+0x18f8>
 8003c22:	3330      	adds	r3, #48	; 0x30
 8003c24:	3c02      	subs	r4, #2
 8003c26:	b2db      	uxtb	r3, r3
 8003c28:	45a4      	cmp	ip, r4
 8003c2a:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003c2e:	f240 8090 	bls.w	8003d52 <_vfprintf_r+0x1a4a>
 8003c32:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003c36:	4611      	mov	r1, r2
 8003c38:	e001      	b.n	8003c3e <_vfprintf_r+0x1936>
 8003c3a:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003c3e:	f804 3b01 	strb.w	r3, [r4], #1
 8003c42:	458c      	cmp	ip, r1
 8003c44:	d1f9      	bne.n	8003c3a <_vfprintf_r+0x1932>
 8003c46:	ab2a      	add	r3, sp, #168	; 0xa8
 8003c48:	1a9b      	subs	r3, r3, r2
 8003c4a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003c4e:	4413      	add	r3, r2
 8003c50:	f7ff bbe3 	b.w	800341a <_vfprintf_r+0x1112>
 8003c54:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003c56:	4f49      	ldr	r7, [pc, #292]	; (8003d7c <_vfprintf_r+0x1a74>)
 8003c58:	2b00      	cmp	r3, #0
 8003c5a:	bfb6      	itet	lt
 8003c5c:	222d      	movlt	r2, #45	; 0x2d
 8003c5e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003c62:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003c66:	4b46      	ldr	r3, [pc, #280]	; (8003d80 <_vfprintf_r+0x1a78>)
 8003c68:	f7fe bf02 	b.w	8002a70 <_vfprintf_r+0x768>
 8003c6c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003c70:	f7ff b8c9 	b.w	8002e06 <_vfprintf_r+0xafe>
 8003c74:	aa28      	add	r2, sp, #160	; 0xa0
 8003c76:	ab25      	add	r3, sp, #148	; 0x94
 8003c78:	e9cd 3200 	strd	r3, r2, [sp]
 8003c7c:	2103      	movs	r1, #3
 8003c7e:	ab24      	add	r3, sp, #144	; 0x90
 8003c80:	464a      	mov	r2, r9
 8003c82:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c86:	9803      	ldr	r0, [sp, #12]
 8003c88:	f000 f9c6 	bl	8004018 <_dtoa_r>
 8003c8c:	464d      	mov	r5, r9
 8003c8e:	4607      	mov	r7, r0
 8003c90:	2e46      	cmp	r6, #70	; 0x46
 8003c92:	eb07 0405 	add.w	r4, r7, r5
 8003c96:	f43f af67 	beq.w	8003b68 <_vfprintf_r+0x1860>
 8003c9a:	e76b      	b.n	8003b74 <_vfprintf_r+0x186c>
 8003c9c:	f1b9 0f00 	cmp.w	r9, #0
 8003ca0:	d131      	bne.n	8003d06 <_vfprintf_r+0x19fe>
 8003ca2:	07c5      	lsls	r5, r0, #31
 8003ca4:	d42f      	bmi.n	8003d06 <_vfprintf_r+0x19fe>
 8003ca6:	2301      	movs	r3, #1
 8003ca8:	9304      	str	r3, [sp, #16]
 8003caa:	9309      	str	r3, [sp, #36]	; 0x24
 8003cac:	2666      	movs	r6, #102	; 0x66
 8003cae:	e642      	b.n	8003936 <_vfprintf_r+0x162e>
 8003cb0:	07c3      	lsls	r3, r0, #31
 8003cb2:	f57f abbf 	bpl.w	8003434 <_vfprintf_r+0x112c>
 8003cb6:	f7ff bbb9 	b.w	800342c <_vfprintf_r+0x1124>
 8003cba:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003cbc:	f1c3 0301 	rsb	r3, r3, #1
 8003cc0:	441a      	add	r2, r3
 8003cc2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003cc6:	9209      	str	r2, [sp, #36]	; 0x24
 8003cc8:	9304      	str	r3, [sp, #16]
 8003cca:	2667      	movs	r6, #103	; 0x67
 8003ccc:	e633      	b.n	8003936 <_vfprintf_r+0x162e>
 8003cce:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003cd2:	f04f 0901 	mov.w	r9, #1
 8003cd6:	e457      	b.n	8003588 <_vfprintf_r+0x1280>
 8003cd8:	465a      	mov	r2, fp
 8003cda:	e511      	b.n	8003700 <_vfprintf_r+0x13f8>
 8003cdc:	2e47      	cmp	r6, #71	; 0x47
 8003cde:	f47f af5e 	bne.w	8003b9e <_vfprintf_r+0x1896>
 8003ce2:	f018 0f01 	tst.w	r8, #1
 8003ce6:	f43f ab61 	beq.w	80033ac <_vfprintf_r+0x10a4>
 8003cea:	e7d1      	b.n	8003c90 <_vfprintf_r+0x1988>
 8003cec:	2200      	movs	r2, #0
 8003cee:	2300      	movs	r3, #0
 8003cf0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003cf4:	f7fd f988 	bl	8001008 <__aeabi_dcmpeq>
 8003cf8:	2800      	cmp	r0, #0
 8003cfa:	f47f af39 	bne.w	8003b70 <_vfprintf_r+0x1868>
 8003cfe:	f1c5 0501 	rsb	r5, r5, #1
 8003d02:	9524      	str	r5, [sp, #144]	; 0x90
 8003d04:	e735      	b.n	8003b72 <_vfprintf_r+0x186a>
 8003d06:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003d08:	3301      	adds	r3, #1
 8003d0a:	444b      	add	r3, r9
 8003d0c:	9309      	str	r3, [sp, #36]	; 0x24
 8003d0e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003d12:	9304      	str	r3, [sp, #16]
 8003d14:	2666      	movs	r6, #102	; 0x66
 8003d16:	e60e      	b.n	8003936 <_vfprintf_r+0x162e>
 8003d18:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003d1c:	f7ff bb7a 	b.w	8003414 <_vfprintf_r+0x110c>
 8003d20:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d22:	9907      	ldr	r1, [sp, #28]
 8003d24:	9803      	ldr	r0, [sp, #12]
 8003d26:	f002 fe1d 	bl	8006964 <__sprint_r>
 8003d2a:	2800      	cmp	r0, #0
 8003d2c:	f47f a864 	bne.w	8002df8 <_vfprintf_r+0xaf0>
 8003d30:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003d34:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d38:	f7ff bbbd 	b.w	80034b6 <_vfprintf_r+0x11ae>
 8003d3c:	9908      	ldr	r1, [sp, #32]
 8003d3e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003d42:	680b      	ldr	r3, [r1, #0]
 8003d44:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003d48:	1d0b      	adds	r3, r1, #4
 8003d4a:	4692      	mov	sl, r2
 8003d4c:	9308      	str	r3, [sp, #32]
 8003d4e:	f7fe bb59 	b.w	8002404 <_vfprintf_r+0xfc>
 8003d52:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003d56:	f7ff bb60 	b.w	800341a <_vfprintf_r+0x1112>
 8003d5a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003d5e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003d62:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003d66:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003d6a:	f7ff b84c 	b.w	8002e06 <_vfprintf_r+0xafe>
 8003d6e:	bf00      	nop
 8003d70:	08007068 	.word	0x08007068
 8003d74:	08007038 	.word	0x08007038
 8003d78:	cccccccd 	.word	0xcccccccd
 8003d7c:	08007020 	.word	0x08007020
 8003d80:	0800701c 	.word	0x0800701c

08003d84 <__sbprintf>:
 8003d84:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003d88:	460c      	mov	r4, r1
 8003d8a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003d8e:	8989      	ldrh	r1, [r1, #12]
 8003d90:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003d92:	89e5      	ldrh	r5, [r4, #14]
 8003d94:	9619      	str	r6, [sp, #100]	; 0x64
 8003d96:	f021 0102 	bic.w	r1, r1, #2
 8003d9a:	4606      	mov	r6, r0
 8003d9c:	69e0      	ldr	r0, [r4, #28]
 8003d9e:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003da2:	4617      	mov	r7, r2
 8003da4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003da8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003daa:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003dae:	4698      	mov	r8, r3
 8003db0:	ad1a      	add	r5, sp, #104	; 0x68
 8003db2:	2300      	movs	r3, #0
 8003db4:	9007      	str	r0, [sp, #28]
 8003db6:	a816      	add	r0, sp, #88	; 0x58
 8003db8:	9209      	str	r2, [sp, #36]	; 0x24
 8003dba:	9306      	str	r3, [sp, #24]
 8003dbc:	9500      	str	r5, [sp, #0]
 8003dbe:	9504      	str	r5, [sp, #16]
 8003dc0:	9102      	str	r1, [sp, #8]
 8003dc2:	9105      	str	r1, [sp, #20]
 8003dc4:	f001 fc8a 	bl	80056dc <__retarget_lock_init_recursive>
 8003dc8:	4643      	mov	r3, r8
 8003dca:	463a      	mov	r2, r7
 8003dcc:	4669      	mov	r1, sp
 8003dce:	4630      	mov	r0, r6
 8003dd0:	f7fe fa9a 	bl	8002308 <_vfprintf_r>
 8003dd4:	1e05      	subs	r5, r0, #0
 8003dd6:	db07      	blt.n	8003de8 <__sbprintf+0x64>
 8003dd8:	4630      	mov	r0, r6
 8003dda:	4669      	mov	r1, sp
 8003ddc:	f001 f8d6 	bl	8004f8c <_fflush_r>
 8003de0:	2800      	cmp	r0, #0
 8003de2:	bf18      	it	ne
 8003de4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003de8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003dec:	065b      	lsls	r3, r3, #25
 8003dee:	d503      	bpl.n	8003df8 <__sbprintf+0x74>
 8003df0:	89a3      	ldrh	r3, [r4, #12]
 8003df2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003df6:	81a3      	strh	r3, [r4, #12]
 8003df8:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003dfa:	f001 fc71 	bl	80056e0 <__retarget_lock_close_recursive>
 8003dfe:	4628      	mov	r0, r5
 8003e00:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003e04:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003e08 <__swsetup_r>:
 8003e08:	b538      	push	{r3, r4, r5, lr}
 8003e0a:	4b31      	ldr	r3, [pc, #196]	; (8003ed0 <__swsetup_r+0xc8>)
 8003e0c:	681b      	ldr	r3, [r3, #0]
 8003e0e:	4605      	mov	r5, r0
 8003e10:	460c      	mov	r4, r1
 8003e12:	b113      	cbz	r3, 8003e1a <__swsetup_r+0x12>
 8003e14:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003e16:	2a00      	cmp	r2, #0
 8003e18:	d03a      	beq.n	8003e90 <__swsetup_r+0x88>
 8003e1a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003e1e:	b293      	uxth	r3, r2
 8003e20:	0718      	lsls	r0, r3, #28
 8003e22:	d50c      	bpl.n	8003e3e <__swsetup_r+0x36>
 8003e24:	6920      	ldr	r0, [r4, #16]
 8003e26:	b1a8      	cbz	r0, 8003e54 <__swsetup_r+0x4c>
 8003e28:	f013 0201 	ands.w	r2, r3, #1
 8003e2c:	d020      	beq.n	8003e70 <__swsetup_r+0x68>
 8003e2e:	6963      	ldr	r3, [r4, #20]
 8003e30:	2200      	movs	r2, #0
 8003e32:	425b      	negs	r3, r3
 8003e34:	61a3      	str	r3, [r4, #24]
 8003e36:	60a2      	str	r2, [r4, #8]
 8003e38:	b300      	cbz	r0, 8003e7c <__swsetup_r+0x74>
 8003e3a:	2000      	movs	r0, #0
 8003e3c:	bd38      	pop	{r3, r4, r5, pc}
 8003e3e:	06d9      	lsls	r1, r3, #27
 8003e40:	d53e      	bpl.n	8003ec0 <__swsetup_r+0xb8>
 8003e42:	0758      	lsls	r0, r3, #29
 8003e44:	d428      	bmi.n	8003e98 <__swsetup_r+0x90>
 8003e46:	6920      	ldr	r0, [r4, #16]
 8003e48:	f042 0308 	orr.w	r3, r2, #8
 8003e4c:	81a3      	strh	r3, [r4, #12]
 8003e4e:	b29b      	uxth	r3, r3
 8003e50:	2800      	cmp	r0, #0
 8003e52:	d1e9      	bne.n	8003e28 <__swsetup_r+0x20>
 8003e54:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003e58:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003e5c:	d0e4      	beq.n	8003e28 <__swsetup_r+0x20>
 8003e5e:	4628      	mov	r0, r5
 8003e60:	4621      	mov	r1, r4
 8003e62:	f001 fc71 	bl	8005748 <__smakebuf_r>
 8003e66:	89a3      	ldrh	r3, [r4, #12]
 8003e68:	6920      	ldr	r0, [r4, #16]
 8003e6a:	f013 0201 	ands.w	r2, r3, #1
 8003e6e:	d1de      	bne.n	8003e2e <__swsetup_r+0x26>
 8003e70:	0799      	lsls	r1, r3, #30
 8003e72:	bf58      	it	pl
 8003e74:	6962      	ldrpl	r2, [r4, #20]
 8003e76:	60a2      	str	r2, [r4, #8]
 8003e78:	2800      	cmp	r0, #0
 8003e7a:	d1de      	bne.n	8003e3a <__swsetup_r+0x32>
 8003e7c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003e80:	061a      	lsls	r2, r3, #24
 8003e82:	d5db      	bpl.n	8003e3c <__swsetup_r+0x34>
 8003e84:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003e88:	81a3      	strh	r3, [r4, #12]
 8003e8a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003e8e:	bd38      	pop	{r3, r4, r5, pc}
 8003e90:	4618      	mov	r0, r3
 8003e92:	f001 f8d7 	bl	8005044 <__sinit>
 8003e96:	e7c0      	b.n	8003e1a <__swsetup_r+0x12>
 8003e98:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8003e9a:	b151      	cbz	r1, 8003eb2 <__swsetup_r+0xaa>
 8003e9c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8003ea0:	4299      	cmp	r1, r3
 8003ea2:	d004      	beq.n	8003eae <__swsetup_r+0xa6>
 8003ea4:	4628      	mov	r0, r5
 8003ea6:	f001 f96f 	bl	8005188 <_free_r>
 8003eaa:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003eae:	2300      	movs	r3, #0
 8003eb0:	6323      	str	r3, [r4, #48]	; 0x30
 8003eb2:	2300      	movs	r3, #0
 8003eb4:	6920      	ldr	r0, [r4, #16]
 8003eb6:	6063      	str	r3, [r4, #4]
 8003eb8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8003ebc:	6020      	str	r0, [r4, #0]
 8003ebe:	e7c3      	b.n	8003e48 <__swsetup_r+0x40>
 8003ec0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8003ec4:	2309      	movs	r3, #9
 8003ec6:	602b      	str	r3, [r5, #0]
 8003ec8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003ecc:	81a2      	strh	r2, [r4, #12]
 8003ece:	bd38      	pop	{r3, r4, r5, pc}
 8003ed0:	200001a8 	.word	0x200001a8

08003ed4 <register_fini>:
 8003ed4:	4b02      	ldr	r3, [pc, #8]	; (8003ee0 <register_fini+0xc>)
 8003ed6:	b113      	cbz	r3, 8003ede <register_fini+0xa>
 8003ed8:	4802      	ldr	r0, [pc, #8]	; (8003ee4 <register_fini+0x10>)
 8003eda:	f000 b805 	b.w	8003ee8 <atexit>
 8003ede:	4770      	bx	lr
 8003ee0:	00000000 	.word	0x00000000
 8003ee4:	080050b5 	.word	0x080050b5

08003ee8 <atexit>:
 8003ee8:	2300      	movs	r3, #0
 8003eea:	4601      	mov	r1, r0
 8003eec:	461a      	mov	r2, r3
 8003eee:	4618      	mov	r0, r3
 8003ef0:	f002 bd58 	b.w	80069a4 <__register_exitproc>

08003ef4 <quorem>:
 8003ef4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003ef8:	6903      	ldr	r3, [r0, #16]
 8003efa:	690f      	ldr	r7, [r1, #16]
 8003efc:	42bb      	cmp	r3, r7
 8003efe:	b083      	sub	sp, #12
 8003f00:	f2c0 8086 	blt.w	8004010 <quorem+0x11c>
 8003f04:	3f01      	subs	r7, #1
 8003f06:	f101 0914 	add.w	r9, r1, #20
 8003f0a:	f100 0a14 	add.w	sl, r0, #20
 8003f0e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8003f12:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8003f16:	00bc      	lsls	r4, r7, #2
 8003f18:	3201      	adds	r2, #1
 8003f1a:	fbb3 f8f2 	udiv	r8, r3, r2
 8003f1e:	eb0a 0304 	add.w	r3, sl, r4
 8003f22:	9400      	str	r4, [sp, #0]
 8003f24:	eb09 0b04 	add.w	fp, r9, r4
 8003f28:	9301      	str	r3, [sp, #4]
 8003f2a:	f1b8 0f00 	cmp.w	r8, #0
 8003f2e:	d038      	beq.n	8003fa2 <quorem+0xae>
 8003f30:	2500      	movs	r5, #0
 8003f32:	462e      	mov	r6, r5
 8003f34:	46ce      	mov	lr, r9
 8003f36:	46d4      	mov	ip, sl
 8003f38:	f85e 4b04 	ldr.w	r4, [lr], #4
 8003f3c:	f8dc 3000 	ldr.w	r3, [ip]
 8003f40:	b2a2      	uxth	r2, r4
 8003f42:	fb08 5502 	mla	r5, r8, r2, r5
 8003f46:	0c22      	lsrs	r2, r4, #16
 8003f48:	0c2c      	lsrs	r4, r5, #16
 8003f4a:	fb08 4202 	mla	r2, r8, r2, r4
 8003f4e:	b2ad      	uxth	r5, r5
 8003f50:	1b75      	subs	r5, r6, r5
 8003f52:	b296      	uxth	r6, r2
 8003f54:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8003f58:	fa15 f383 	uxtah	r3, r5, r3
 8003f5c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8003f60:	b29b      	uxth	r3, r3
 8003f62:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8003f66:	45f3      	cmp	fp, lr
 8003f68:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8003f6c:	f84c 3b04 	str.w	r3, [ip], #4
 8003f70:	ea4f 4626 	mov.w	r6, r6, asr #16
 8003f74:	d2e0      	bcs.n	8003f38 <quorem+0x44>
 8003f76:	9b00      	ldr	r3, [sp, #0]
 8003f78:	f85a 3003 	ldr.w	r3, [sl, r3]
 8003f7c:	b98b      	cbnz	r3, 8003fa2 <quorem+0xae>
 8003f7e:	9a01      	ldr	r2, [sp, #4]
 8003f80:	1f13      	subs	r3, r2, #4
 8003f82:	459a      	cmp	sl, r3
 8003f84:	d20c      	bcs.n	8003fa0 <quorem+0xac>
 8003f86:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8003f8a:	b94b      	cbnz	r3, 8003fa0 <quorem+0xac>
 8003f8c:	f1a2 0308 	sub.w	r3, r2, #8
 8003f90:	e002      	b.n	8003f98 <quorem+0xa4>
 8003f92:	681a      	ldr	r2, [r3, #0]
 8003f94:	3b04      	subs	r3, #4
 8003f96:	b91a      	cbnz	r2, 8003fa0 <quorem+0xac>
 8003f98:	459a      	cmp	sl, r3
 8003f9a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8003f9e:	d3f8      	bcc.n	8003f92 <quorem+0x9e>
 8003fa0:	6107      	str	r7, [r0, #16]
 8003fa2:	4604      	mov	r4, r0
 8003fa4:	f002 f944 	bl	8006230 <__mcmp>
 8003fa8:	2800      	cmp	r0, #0
 8003faa:	db2d      	blt.n	8004008 <quorem+0x114>
 8003fac:	f108 0801 	add.w	r8, r8, #1
 8003fb0:	4655      	mov	r5, sl
 8003fb2:	2300      	movs	r3, #0
 8003fb4:	f859 1b04 	ldr.w	r1, [r9], #4
 8003fb8:	6828      	ldr	r0, [r5, #0]
 8003fba:	b28a      	uxth	r2, r1
 8003fbc:	1a9a      	subs	r2, r3, r2
 8003fbe:	0c0b      	lsrs	r3, r1, #16
 8003fc0:	fa12 f280 	uxtah	r2, r2, r0
 8003fc4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8003fc8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8003fcc:	b292      	uxth	r2, r2
 8003fce:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8003fd2:	45cb      	cmp	fp, r9
 8003fd4:	f845 2b04 	str.w	r2, [r5], #4
 8003fd8:	ea4f 4323 	mov.w	r3, r3, asr #16
 8003fdc:	d2ea      	bcs.n	8003fb4 <quorem+0xc0>
 8003fde:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8003fe2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8003fe6:	b97a      	cbnz	r2, 8004008 <quorem+0x114>
 8003fe8:	1f1a      	subs	r2, r3, #4
 8003fea:	4592      	cmp	sl, r2
 8003fec:	d20b      	bcs.n	8004006 <quorem+0x112>
 8003fee:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8003ff2:	b942      	cbnz	r2, 8004006 <quorem+0x112>
 8003ff4:	3b08      	subs	r3, #8
 8003ff6:	e002      	b.n	8003ffe <quorem+0x10a>
 8003ff8:	681a      	ldr	r2, [r3, #0]
 8003ffa:	3b04      	subs	r3, #4
 8003ffc:	b91a      	cbnz	r2, 8004006 <quorem+0x112>
 8003ffe:	459a      	cmp	sl, r3
 8004000:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004004:	d3f8      	bcc.n	8003ff8 <quorem+0x104>
 8004006:	6127      	str	r7, [r4, #16]
 8004008:	4640      	mov	r0, r8
 800400a:	b003      	add	sp, #12
 800400c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004010:	2000      	movs	r0, #0
 8004012:	b003      	add	sp, #12
 8004014:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004018 <_dtoa_r>:
 8004018:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800401c:	ec55 4b10 	vmov	r4, r5, d0
 8004020:	b09b      	sub	sp, #108	; 0x6c
 8004022:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004024:	9102      	str	r1, [sp, #8]
 8004026:	4681      	mov	r9, r0
 8004028:	9207      	str	r2, [sp, #28]
 800402a:	9305      	str	r3, [sp, #20]
 800402c:	e9cd 4500 	strd	r4, r5, [sp]
 8004030:	b156      	cbz	r6, 8004048 <_dtoa_r+0x30>
 8004032:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004034:	6072      	str	r2, [r6, #4]
 8004036:	2301      	movs	r3, #1
 8004038:	4093      	lsls	r3, r2
 800403a:	60b3      	str	r3, [r6, #8]
 800403c:	4631      	mov	r1, r6
 800403e:	f001 ff07 	bl	8005e50 <_Bfree>
 8004042:	2300      	movs	r3, #0
 8004044:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004048:	f1b5 0800 	subs.w	r8, r5, #0
 800404c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800404e:	bfb4      	ite	lt
 8004050:	2301      	movlt	r3, #1
 8004052:	2300      	movge	r3, #0
 8004054:	6013      	str	r3, [r2, #0]
 8004056:	4b76      	ldr	r3, [pc, #472]	; (8004230 <_dtoa_r+0x218>)
 8004058:	bfbc      	itt	lt
 800405a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800405e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004062:	ea33 0308 	bics.w	r3, r3, r8
 8004066:	f000 80a6 	beq.w	80041b6 <_dtoa_r+0x19e>
 800406a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800406e:	2200      	movs	r2, #0
 8004070:	2300      	movs	r3, #0
 8004072:	4630      	mov	r0, r6
 8004074:	4639      	mov	r1, r7
 8004076:	f7fc ffc7 	bl	8001008 <__aeabi_dcmpeq>
 800407a:	4605      	mov	r5, r0
 800407c:	b178      	cbz	r0, 800409e <_dtoa_r+0x86>
 800407e:	9a05      	ldr	r2, [sp, #20]
 8004080:	2301      	movs	r3, #1
 8004082:	6013      	str	r3, [r2, #0]
 8004084:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004086:	2b00      	cmp	r3, #0
 8004088:	f000 80c0 	beq.w	800420c <_dtoa_r+0x1f4>
 800408c:	4b69      	ldr	r3, [pc, #420]	; (8004234 <_dtoa_r+0x21c>)
 800408e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004090:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004094:	6013      	str	r3, [r2, #0]
 8004096:	4658      	mov	r0, fp
 8004098:	b01b      	add	sp, #108	; 0x6c
 800409a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800409e:	aa18      	add	r2, sp, #96	; 0x60
 80040a0:	a919      	add	r1, sp, #100	; 0x64
 80040a2:	ec47 6b10 	vmov	d0, r6, r7
 80040a6:	4648      	mov	r0, r9
 80040a8:	f002 f954 	bl	8006354 <__d2b>
 80040ac:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80040b0:	4682      	mov	sl, r0
 80040b2:	f040 80a0 	bne.w	80041f6 <_dtoa_r+0x1de>
 80040b6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80040ba:	442c      	add	r4, r5
 80040bc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80040c0:	2b20      	cmp	r3, #32
 80040c2:	f340 842c 	ble.w	800491e <_dtoa_r+0x906>
 80040c6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80040ca:	fa08 f803 	lsl.w	r8, r8, r3
 80040ce:	9b00      	ldr	r3, [sp, #0]
 80040d0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80040d4:	fa23 f000 	lsr.w	r0, r3, r0
 80040d8:	ea48 0000 	orr.w	r0, r8, r0
 80040dc:	f7fc fcb2 	bl	8000a44 <__aeabi_ui2d>
 80040e0:	2301      	movs	r3, #1
 80040e2:	4606      	mov	r6, r0
 80040e4:	3c01      	subs	r4, #1
 80040e6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80040ea:	930f      	str	r3, [sp, #60]	; 0x3c
 80040ec:	4630      	mov	r0, r6
 80040ee:	4639      	mov	r1, r7
 80040f0:	2200      	movs	r2, #0
 80040f2:	4b51      	ldr	r3, [pc, #324]	; (8004238 <_dtoa_r+0x220>)
 80040f4:	f7fc fb68 	bl	80007c8 <__aeabi_dsub>
 80040f8:	a347      	add	r3, pc, #284	; (adr r3, 8004218 <_dtoa_r+0x200>)
 80040fa:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040fe:	f7fc fd1b 	bl	8000b38 <__aeabi_dmul>
 8004102:	a347      	add	r3, pc, #284	; (adr r3, 8004220 <_dtoa_r+0x208>)
 8004104:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004108:	f7fc fb60 	bl	80007cc <__adddf3>
 800410c:	4606      	mov	r6, r0
 800410e:	4620      	mov	r0, r4
 8004110:	460f      	mov	r7, r1
 8004112:	f7fc fca7 	bl	8000a64 <__aeabi_i2d>
 8004116:	a344      	add	r3, pc, #272	; (adr r3, 8004228 <_dtoa_r+0x210>)
 8004118:	e9d3 2300 	ldrd	r2, r3, [r3]
 800411c:	f7fc fd0c 	bl	8000b38 <__aeabi_dmul>
 8004120:	4602      	mov	r2, r0
 8004122:	460b      	mov	r3, r1
 8004124:	4630      	mov	r0, r6
 8004126:	4639      	mov	r1, r7
 8004128:	f7fc fb50 	bl	80007cc <__adddf3>
 800412c:	4606      	mov	r6, r0
 800412e:	460f      	mov	r7, r1
 8004130:	f7fc ffb2 	bl	8001098 <__aeabi_d2iz>
 8004134:	2200      	movs	r2, #0
 8004136:	9006      	str	r0, [sp, #24]
 8004138:	2300      	movs	r3, #0
 800413a:	4630      	mov	r0, r6
 800413c:	4639      	mov	r1, r7
 800413e:	f7fc ff6d 	bl	800101c <__aeabi_dcmplt>
 8004142:	2800      	cmp	r0, #0
 8004144:	f040 8273 	bne.w	800462e <_dtoa_r+0x616>
 8004148:	9e06      	ldr	r6, [sp, #24]
 800414a:	2e16      	cmp	r6, #22
 800414c:	f200 825d 	bhi.w	800460a <_dtoa_r+0x5f2>
 8004150:	4b3a      	ldr	r3, [pc, #232]	; (800423c <_dtoa_r+0x224>)
 8004152:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004156:	e9d3 0100 	ldrd	r0, r1, [r3]
 800415a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800415e:	f7fc ff7b 	bl	8001058 <__aeabi_dcmpgt>
 8004162:	2800      	cmp	r0, #0
 8004164:	f000 83d7 	beq.w	8004916 <_dtoa_r+0x8fe>
 8004168:	1e73      	subs	r3, r6, #1
 800416a:	9306      	str	r3, [sp, #24]
 800416c:	2300      	movs	r3, #0
 800416e:	930d      	str	r3, [sp, #52]	; 0x34
 8004170:	1b2c      	subs	r4, r5, r4
 8004172:	f1b4 0801 	subs.w	r8, r4, #1
 8004176:	f100 8254 	bmi.w	8004622 <_dtoa_r+0x60a>
 800417a:	2300      	movs	r3, #0
 800417c:	9308      	str	r3, [sp, #32]
 800417e:	9b06      	ldr	r3, [sp, #24]
 8004180:	2b00      	cmp	r3, #0
 8004182:	f2c0 8245 	blt.w	8004610 <_dtoa_r+0x5f8>
 8004186:	4498      	add	r8, r3
 8004188:	930c      	str	r3, [sp, #48]	; 0x30
 800418a:	2300      	movs	r3, #0
 800418c:	930b      	str	r3, [sp, #44]	; 0x2c
 800418e:	9b02      	ldr	r3, [sp, #8]
 8004190:	2b09      	cmp	r3, #9
 8004192:	d85b      	bhi.n	800424c <_dtoa_r+0x234>
 8004194:	2b05      	cmp	r3, #5
 8004196:	f340 83c0 	ble.w	800491a <_dtoa_r+0x902>
 800419a:	3b04      	subs	r3, #4
 800419c:	9302      	str	r3, [sp, #8]
 800419e:	2500      	movs	r5, #0
 80041a0:	9b02      	ldr	r3, [sp, #8]
 80041a2:	3b02      	subs	r3, #2
 80041a4:	2b03      	cmp	r3, #3
 80041a6:	f200 8498 	bhi.w	8004ada <_dtoa_r+0xac2>
 80041aa:	e8df f013 	tbh	[pc, r3, lsl #1]
 80041ae:	03df      	.short	0x03df
 80041b0:	03e803bf 	.word	0x03e803bf
 80041b4:	04f5      	.short	0x04f5
 80041b6:	9a05      	ldr	r2, [sp, #20]
 80041b8:	f242 730f 	movw	r3, #9999	; 0x270f
 80041bc:	6013      	str	r3, [r2, #0]
 80041be:	9b00      	ldr	r3, [sp, #0]
 80041c0:	b983      	cbnz	r3, 80041e4 <_dtoa_r+0x1cc>
 80041c2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80041c6:	b96b      	cbnz	r3, 80041e4 <_dtoa_r+0x1cc>
 80041c8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80041ca:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004240 <_dtoa_r+0x228>
 80041ce:	2b00      	cmp	r3, #0
 80041d0:	f43f af61 	beq.w	8004096 <_dtoa_r+0x7e>
 80041d4:	f10b 0308 	add.w	r3, fp, #8
 80041d8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80041da:	4658      	mov	r0, fp
 80041dc:	6013      	str	r3, [r2, #0]
 80041de:	b01b      	add	sp, #108	; 0x6c
 80041e0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80041e4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80041e6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004244 <_dtoa_r+0x22c>
 80041ea:	2b00      	cmp	r3, #0
 80041ec:	f43f af53 	beq.w	8004096 <_dtoa_r+0x7e>
 80041f0:	f10b 0303 	add.w	r3, fp, #3
 80041f4:	e7f0      	b.n	80041d8 <_dtoa_r+0x1c0>
 80041f6:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80041fa:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80041fe:	950f      	str	r5, [sp, #60]	; 0x3c
 8004200:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004204:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004208:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800420a:	e76f      	b.n	80040ec <_dtoa_r+0xd4>
 800420c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004248 <_dtoa_r+0x230>
 8004210:	4658      	mov	r0, fp
 8004212:	b01b      	add	sp, #108	; 0x6c
 8004214:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004218:	636f4361 	.word	0x636f4361
 800421c:	3fd287a7 	.word	0x3fd287a7
 8004220:	8b60c8b3 	.word	0x8b60c8b3
 8004224:	3fc68a28 	.word	0x3fc68a28
 8004228:	509f79fb 	.word	0x509f79fb
 800422c:	3fd34413 	.word	0x3fd34413
 8004230:	7ff00000 	.word	0x7ff00000
 8004234:	08007055 	.word	0x08007055
 8004238:	3ff80000 	.word	0x3ff80000
 800423c:	080070b0 	.word	0x080070b0
 8004240:	08007078 	.word	0x08007078
 8004244:	08007084 	.word	0x08007084
 8004248:	08007054 	.word	0x08007054
 800424c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004250:	2501      	movs	r5, #1
 8004252:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004256:	2300      	movs	r3, #0
 8004258:	9302      	str	r3, [sp, #8]
 800425a:	9307      	str	r3, [sp, #28]
 800425c:	2100      	movs	r1, #0
 800425e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004262:	940e      	str	r4, [sp, #56]	; 0x38
 8004264:	4648      	mov	r0, r9
 8004266:	f001 fdcd 	bl	8005e04 <_Balloc>
 800426a:	2c0e      	cmp	r4, #14
 800426c:	4683      	mov	fp, r0
 800426e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004272:	f200 80fb 	bhi.w	800446c <_dtoa_r+0x454>
 8004276:	2d00      	cmp	r5, #0
 8004278:	f000 80f8 	beq.w	800446c <_dtoa_r+0x454>
 800427c:	ed9d 7b00 	vldr	d7, [sp]
 8004280:	9906      	ldr	r1, [sp, #24]
 8004282:	2900      	cmp	r1, #0
 8004284:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004288:	f340 83e5 	ble.w	8004a56 <_dtoa_r+0xa3e>
 800428c:	4b9d      	ldr	r3, [pc, #628]	; (8004504 <_dtoa_r+0x4ec>)
 800428e:	f001 020f 	and.w	r2, r1, #15
 8004292:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004296:	ed93 7b00 	vldr	d7, [r3]
 800429a:	110c      	asrs	r4, r1, #4
 800429c:	06e2      	lsls	r2, r4, #27
 800429e:	ed8d 7b00 	vstr	d7, [sp]
 80042a2:	f140 849e 	bpl.w	8004be2 <_dtoa_r+0xbca>
 80042a6:	4b98      	ldr	r3, [pc, #608]	; (8004508 <_dtoa_r+0x4f0>)
 80042a8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80042ac:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80042b0:	f7fc fd6c 	bl	8000d8c <__aeabi_ddiv>
 80042b4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80042b8:	f004 040f 	and.w	r4, r4, #15
 80042bc:	2603      	movs	r6, #3
 80042be:	b17c      	cbz	r4, 80042e0 <_dtoa_r+0x2c8>
 80042c0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80042c4:	4d90      	ldr	r5, [pc, #576]	; (8004508 <_dtoa_r+0x4f0>)
 80042c6:	07e3      	lsls	r3, r4, #31
 80042c8:	d504      	bpl.n	80042d4 <_dtoa_r+0x2bc>
 80042ca:	e9d5 2300 	ldrd	r2, r3, [r5]
 80042ce:	f7fc fc33 	bl	8000b38 <__aeabi_dmul>
 80042d2:	3601      	adds	r6, #1
 80042d4:	1064      	asrs	r4, r4, #1
 80042d6:	f105 0508 	add.w	r5, r5, #8
 80042da:	d1f4      	bne.n	80042c6 <_dtoa_r+0x2ae>
 80042dc:	e9cd 0100 	strd	r0, r1, [sp]
 80042e0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80042e4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80042e8:	f7fc fd50 	bl	8000d8c <__aeabi_ddiv>
 80042ec:	e9cd 0100 	strd	r0, r1, [sp]
 80042f0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80042f2:	b143      	cbz	r3, 8004306 <_dtoa_r+0x2ee>
 80042f4:	2200      	movs	r2, #0
 80042f6:	4b85      	ldr	r3, [pc, #532]	; (800450c <_dtoa_r+0x4f4>)
 80042f8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80042fc:	f7fc fe8e 	bl	800101c <__aeabi_dcmplt>
 8004300:	2800      	cmp	r0, #0
 8004302:	f040 84ff 	bne.w	8004d04 <_dtoa_r+0xcec>
 8004306:	4630      	mov	r0, r6
 8004308:	f7fc fbac 	bl	8000a64 <__aeabi_i2d>
 800430c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004310:	f7fc fc12 	bl	8000b38 <__aeabi_dmul>
 8004314:	4b7e      	ldr	r3, [pc, #504]	; (8004510 <_dtoa_r+0x4f8>)
 8004316:	2200      	movs	r2, #0
 8004318:	f7fc fa58 	bl	80007cc <__adddf3>
 800431c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800431e:	4606      	mov	r6, r0
 8004320:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004324:	2b00      	cmp	r3, #0
 8004326:	f000 841c 	beq.w	8004b62 <_dtoa_r+0xb4a>
 800432a:	9b06      	ldr	r3, [sp, #24]
 800432c:	9316      	str	r3, [sp, #88]	; 0x58
 800432e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004330:	9312      	str	r3, [sp, #72]	; 0x48
 8004332:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004336:	f7fc feaf 	bl	8001098 <__aeabi_d2iz>
 800433a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800433c:	4b71      	ldr	r3, [pc, #452]	; (8004504 <_dtoa_r+0x4ec>)
 800433e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004342:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004346:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800434a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800434e:	f7fc fb89 	bl	8000a64 <__aeabi_i2d>
 8004352:	460b      	mov	r3, r1
 8004354:	4602      	mov	r2, r0
 8004356:	e9dd 0100 	ldrd	r0, r1, [sp]
 800435a:	e9cd 6700 	strd	r6, r7, [sp]
 800435e:	f7fc fa33 	bl	80007c8 <__aeabi_dsub>
 8004362:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004364:	b2ed      	uxtb	r5, r5
 8004366:	4606      	mov	r6, r0
 8004368:	460f      	mov	r7, r1
 800436a:	f10b 0401 	add.w	r4, fp, #1
 800436e:	2b00      	cmp	r3, #0
 8004370:	f000 8458 	beq.w	8004c24 <_dtoa_r+0xc0c>
 8004374:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004378:	2000      	movs	r0, #0
 800437a:	4966      	ldr	r1, [pc, #408]	; (8004514 <_dtoa_r+0x4fc>)
 800437c:	f7fc fd06 	bl	8000d8c <__aeabi_ddiv>
 8004380:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004384:	f7fc fa20 	bl	80007c8 <__aeabi_dsub>
 8004388:	f88b 5000 	strb.w	r5, [fp]
 800438c:	4632      	mov	r2, r6
 800438e:	463b      	mov	r3, r7
 8004390:	e9cd 0100 	strd	r0, r1, [sp]
 8004394:	f7fc fe60 	bl	8001058 <__aeabi_dcmpgt>
 8004398:	2800      	cmp	r0, #0
 800439a:	f040 8502 	bne.w	8004da2 <_dtoa_r+0xd8a>
 800439e:	4632      	mov	r2, r6
 80043a0:	463b      	mov	r3, r7
 80043a2:	2000      	movs	r0, #0
 80043a4:	4959      	ldr	r1, [pc, #356]	; (800450c <_dtoa_r+0x4f4>)
 80043a6:	f7fc fa0f 	bl	80007c8 <__aeabi_dsub>
 80043aa:	4602      	mov	r2, r0
 80043ac:	460b      	mov	r3, r1
 80043ae:	e9dd 0100 	ldrd	r0, r1, [sp]
 80043b2:	f7fc fe51 	bl	8001058 <__aeabi_dcmpgt>
 80043b6:	2800      	cmp	r0, #0
 80043b8:	f040 84fb 	bne.w	8004db2 <_dtoa_r+0xd9a>
 80043bc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80043be:	2a01      	cmp	r2, #1
 80043c0:	d050      	beq.n	8004464 <_dtoa_r+0x44c>
 80043c2:	445a      	add	r2, fp
 80043c4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 80043c8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 80043cc:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 80043d0:	4692      	mov	sl, r2
 80043d2:	46cb      	mov	fp, r9
 80043d4:	e9dd 8900 	ldrd	r8, r9, [sp]
 80043d8:	e00c      	b.n	80043f4 <_dtoa_r+0x3dc>
 80043da:	2000      	movs	r0, #0
 80043dc:	494b      	ldr	r1, [pc, #300]	; (800450c <_dtoa_r+0x4f4>)
 80043de:	f7fc f9f3 	bl	80007c8 <__aeabi_dsub>
 80043e2:	4642      	mov	r2, r8
 80043e4:	464b      	mov	r3, r9
 80043e6:	f7fc fe19 	bl	800101c <__aeabi_dcmplt>
 80043ea:	2800      	cmp	r0, #0
 80043ec:	f040 84dc 	bne.w	8004da8 <_dtoa_r+0xd90>
 80043f0:	4554      	cmp	r4, sl
 80043f2:	d030      	beq.n	8004456 <_dtoa_r+0x43e>
 80043f4:	4640      	mov	r0, r8
 80043f6:	4649      	mov	r1, r9
 80043f8:	2200      	movs	r2, #0
 80043fa:	4b47      	ldr	r3, [pc, #284]	; (8004518 <_dtoa_r+0x500>)
 80043fc:	f7fc fb9c 	bl	8000b38 <__aeabi_dmul>
 8004400:	2200      	movs	r2, #0
 8004402:	4b45      	ldr	r3, [pc, #276]	; (8004518 <_dtoa_r+0x500>)
 8004404:	4680      	mov	r8, r0
 8004406:	4689      	mov	r9, r1
 8004408:	4630      	mov	r0, r6
 800440a:	4639      	mov	r1, r7
 800440c:	f7fc fb94 	bl	8000b38 <__aeabi_dmul>
 8004410:	460f      	mov	r7, r1
 8004412:	4606      	mov	r6, r0
 8004414:	f7fc fe40 	bl	8001098 <__aeabi_d2iz>
 8004418:	4605      	mov	r5, r0
 800441a:	f7fc fb23 	bl	8000a64 <__aeabi_i2d>
 800441e:	4602      	mov	r2, r0
 8004420:	460b      	mov	r3, r1
 8004422:	4630      	mov	r0, r6
 8004424:	4639      	mov	r1, r7
 8004426:	f7fc f9cf 	bl	80007c8 <__aeabi_dsub>
 800442a:	3530      	adds	r5, #48	; 0x30
 800442c:	b2ed      	uxtb	r5, r5
 800442e:	4642      	mov	r2, r8
 8004430:	464b      	mov	r3, r9
 8004432:	f804 5b01 	strb.w	r5, [r4], #1
 8004436:	4606      	mov	r6, r0
 8004438:	460f      	mov	r7, r1
 800443a:	f7fc fdef 	bl	800101c <__aeabi_dcmplt>
 800443e:	4632      	mov	r2, r6
 8004440:	463b      	mov	r3, r7
 8004442:	2800      	cmp	r0, #0
 8004444:	d0c9      	beq.n	80043da <_dtoa_r+0x3c2>
 8004446:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004448:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800444c:	9306      	str	r3, [sp, #24]
 800444e:	46d9      	mov	r9, fp
 8004450:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004454:	e236      	b.n	80048c4 <_dtoa_r+0x8ac>
 8004456:	46d9      	mov	r9, fp
 8004458:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 800445c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004460:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004464:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004468:	e9cd 3400 	strd	r3, r4, [sp]
 800446c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 800446e:	2b00      	cmp	r3, #0
 8004470:	f2c0 80ae 	blt.w	80045d0 <_dtoa_r+0x5b8>
 8004474:	9a06      	ldr	r2, [sp, #24]
 8004476:	2a0e      	cmp	r2, #14
 8004478:	f300 80aa 	bgt.w	80045d0 <_dtoa_r+0x5b8>
 800447c:	4b21      	ldr	r3, [pc, #132]	; (8004504 <_dtoa_r+0x4ec>)
 800447e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004482:	ed93 7b00 	vldr	d7, [r3]
 8004486:	9b07      	ldr	r3, [sp, #28]
 8004488:	2b00      	cmp	r3, #0
 800448a:	ed8d 7b02 	vstr	d7, [sp, #8]
 800448e:	f2c0 82be 	blt.w	8004a0e <_dtoa_r+0x9f6>
 8004492:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004496:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800449a:	4630      	mov	r0, r6
 800449c:	4639      	mov	r1, r7
 800449e:	f7fc fc75 	bl	8000d8c <__aeabi_ddiv>
 80044a2:	f7fc fdf9 	bl	8001098 <__aeabi_d2iz>
 80044a6:	4605      	mov	r5, r0
 80044a8:	f7fc fadc 	bl	8000a64 <__aeabi_i2d>
 80044ac:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80044b0:	f7fc fb42 	bl	8000b38 <__aeabi_dmul>
 80044b4:	460b      	mov	r3, r1
 80044b6:	4602      	mov	r2, r0
 80044b8:	4639      	mov	r1, r7
 80044ba:	4630      	mov	r0, r6
 80044bc:	f7fc f984 	bl	80007c8 <__aeabi_dsub>
 80044c0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 80044c4:	f88b 3000 	strb.w	r3, [fp]
 80044c8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80044ca:	2b01      	cmp	r3, #1
 80044cc:	4606      	mov	r6, r0
 80044ce:	460f      	mov	r7, r1
 80044d0:	f10b 0401 	add.w	r4, fp, #1
 80044d4:	d053      	beq.n	800457e <_dtoa_r+0x566>
 80044d6:	2200      	movs	r2, #0
 80044d8:	4b0f      	ldr	r3, [pc, #60]	; (8004518 <_dtoa_r+0x500>)
 80044da:	f7fc fb2d 	bl	8000b38 <__aeabi_dmul>
 80044de:	2200      	movs	r2, #0
 80044e0:	2300      	movs	r3, #0
 80044e2:	4606      	mov	r6, r0
 80044e4:	460f      	mov	r7, r1
 80044e6:	f7fc fd8f 	bl	8001008 <__aeabi_dcmpeq>
 80044ea:	2800      	cmp	r0, #0
 80044ec:	f040 81ea 	bne.w	80048c4 <_dtoa_r+0x8ac>
 80044f0:	f8cd a000 	str.w	sl, [sp]
 80044f4:	f8cd 901c 	str.w	r9, [sp, #28]
 80044f8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80044fc:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004500:	e017      	b.n	8004532 <_dtoa_r+0x51a>
 8004502:	bf00      	nop
 8004504:	080070b0 	.word	0x080070b0
 8004508:	08007088 	.word	0x08007088
 800450c:	3ff00000 	.word	0x3ff00000
 8004510:	401c0000 	.word	0x401c0000
 8004514:	3fe00000 	.word	0x3fe00000
 8004518:	40240000 	.word	0x40240000
 800451c:	f7fc fb0c 	bl	8000b38 <__aeabi_dmul>
 8004520:	2200      	movs	r2, #0
 8004522:	2300      	movs	r3, #0
 8004524:	4606      	mov	r6, r0
 8004526:	460f      	mov	r7, r1
 8004528:	f7fc fd6e 	bl	8001008 <__aeabi_dcmpeq>
 800452c:	2800      	cmp	r0, #0
 800452e:	f040 833d 	bne.w	8004bac <_dtoa_r+0xb94>
 8004532:	464a      	mov	r2, r9
 8004534:	4653      	mov	r3, sl
 8004536:	4630      	mov	r0, r6
 8004538:	4639      	mov	r1, r7
 800453a:	f7fc fc27 	bl	8000d8c <__aeabi_ddiv>
 800453e:	f7fc fdab 	bl	8001098 <__aeabi_d2iz>
 8004542:	4605      	mov	r5, r0
 8004544:	f7fc fa8e 	bl	8000a64 <__aeabi_i2d>
 8004548:	464a      	mov	r2, r9
 800454a:	4653      	mov	r3, sl
 800454c:	f7fc faf4 	bl	8000b38 <__aeabi_dmul>
 8004550:	4602      	mov	r2, r0
 8004552:	460b      	mov	r3, r1
 8004554:	4630      	mov	r0, r6
 8004556:	4639      	mov	r1, r7
 8004558:	f7fc f936 	bl	80007c8 <__aeabi_dsub>
 800455c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004560:	f804 cb01 	strb.w	ip, [r4], #1
 8004564:	eba4 0c0b 	sub.w	ip, r4, fp
 8004568:	45e0      	cmp	r8, ip
 800456a:	4606      	mov	r6, r0
 800456c:	460f      	mov	r7, r1
 800456e:	f04f 0200 	mov.w	r2, #0
 8004572:	4bc1      	ldr	r3, [pc, #772]	; (8004878 <_dtoa_r+0x860>)
 8004574:	d1d2      	bne.n	800451c <_dtoa_r+0x504>
 8004576:	f8dd a000 	ldr.w	sl, [sp]
 800457a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800457e:	4632      	mov	r2, r6
 8004580:	463b      	mov	r3, r7
 8004582:	4630      	mov	r0, r6
 8004584:	4639      	mov	r1, r7
 8004586:	f7fc f921 	bl	80007cc <__adddf3>
 800458a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800458e:	4606      	mov	r6, r0
 8004590:	460f      	mov	r7, r1
 8004592:	f7fc fd61 	bl	8001058 <__aeabi_dcmpgt>
 8004596:	b958      	cbnz	r0, 80045b0 <_dtoa_r+0x598>
 8004598:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800459c:	4630      	mov	r0, r6
 800459e:	4639      	mov	r1, r7
 80045a0:	f7fc fd32 	bl	8001008 <__aeabi_dcmpeq>
 80045a4:	2800      	cmp	r0, #0
 80045a6:	f000 818d 	beq.w	80048c4 <_dtoa_r+0x8ac>
 80045aa:	07e9      	lsls	r1, r5, #31
 80045ac:	f140 818a 	bpl.w	80048c4 <_dtoa_r+0x8ac>
 80045b0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80045b4:	e005      	b.n	80045c2 <_dtoa_r+0x5aa>
 80045b6:	459b      	cmp	fp, r3
 80045b8:	f000 8373 	beq.w	8004ca2 <_dtoa_r+0xc8a>
 80045bc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 80045c0:	461c      	mov	r4, r3
 80045c2:	2d39      	cmp	r5, #57	; 0x39
 80045c4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80045c8:	d0f5      	beq.n	80045b6 <_dtoa_r+0x59e>
 80045ca:	3501      	adds	r5, #1
 80045cc:	701d      	strb	r5, [r3, #0]
 80045ce:	e179      	b.n	80048c4 <_dtoa_r+0x8ac>
 80045d0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80045d2:	2a00      	cmp	r2, #0
 80045d4:	d03b      	beq.n	800464e <_dtoa_r+0x636>
 80045d6:	9a02      	ldr	r2, [sp, #8]
 80045d8:	2a01      	cmp	r2, #1
 80045da:	f340 820b 	ble.w	80049f4 <_dtoa_r+0x9dc>
 80045de:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80045e0:	1e5f      	subs	r7, r3, #1
 80045e2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80045e4:	42bb      	cmp	r3, r7
 80045e6:	f2c0 82e6 	blt.w	8004bb6 <_dtoa_r+0xb9e>
 80045ea:	1bdf      	subs	r7, r3, r7
 80045ec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80045ee:	2b00      	cmp	r3, #0
 80045f0:	f2c0 830b 	blt.w	8004c0a <_dtoa_r+0xbf2>
 80045f4:	9a08      	ldr	r2, [sp, #32]
 80045f6:	4614      	mov	r4, r2
 80045f8:	441a      	add	r2, r3
 80045fa:	4498      	add	r8, r3
 80045fc:	9208      	str	r2, [sp, #32]
 80045fe:	2101      	movs	r1, #1
 8004600:	4648      	mov	r0, r9
 8004602:	f001 fcbf 	bl	8005f84 <__i2b>
 8004606:	4605      	mov	r5, r0
 8004608:	e024      	b.n	8004654 <_dtoa_r+0x63c>
 800460a:	2301      	movs	r3, #1
 800460c:	930d      	str	r3, [sp, #52]	; 0x34
 800460e:	e5af      	b.n	8004170 <_dtoa_r+0x158>
 8004610:	9a08      	ldr	r2, [sp, #32]
 8004612:	9b06      	ldr	r3, [sp, #24]
 8004614:	1ad2      	subs	r2, r2, r3
 8004616:	425b      	negs	r3, r3
 8004618:	930b      	str	r3, [sp, #44]	; 0x2c
 800461a:	2300      	movs	r3, #0
 800461c:	9208      	str	r2, [sp, #32]
 800461e:	930c      	str	r3, [sp, #48]	; 0x30
 8004620:	e5b5      	b.n	800418e <_dtoa_r+0x176>
 8004622:	f1c4 0301 	rsb	r3, r4, #1
 8004626:	9308      	str	r3, [sp, #32]
 8004628:	f04f 0800 	mov.w	r8, #0
 800462c:	e5a7      	b.n	800417e <_dtoa_r+0x166>
 800462e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004632:	4640      	mov	r0, r8
 8004634:	f7fc fa16 	bl	8000a64 <__aeabi_i2d>
 8004638:	4632      	mov	r2, r6
 800463a:	463b      	mov	r3, r7
 800463c:	f7fc fce4 	bl	8001008 <__aeabi_dcmpeq>
 8004640:	2800      	cmp	r0, #0
 8004642:	f47f ad81 	bne.w	8004148 <_dtoa_r+0x130>
 8004646:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800464a:	9306      	str	r3, [sp, #24]
 800464c:	e57c      	b.n	8004148 <_dtoa_r+0x130>
 800464e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004650:	9c08      	ldr	r4, [sp, #32]
 8004652:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004654:	2c00      	cmp	r4, #0
 8004656:	dd0c      	ble.n	8004672 <_dtoa_r+0x65a>
 8004658:	f1b8 0f00 	cmp.w	r8, #0
 800465c:	dd09      	ble.n	8004672 <_dtoa_r+0x65a>
 800465e:	4544      	cmp	r4, r8
 8004660:	9a08      	ldr	r2, [sp, #32]
 8004662:	4623      	mov	r3, r4
 8004664:	bfa8      	it	ge
 8004666:	4643      	movge	r3, r8
 8004668:	1ad2      	subs	r2, r2, r3
 800466a:	9208      	str	r2, [sp, #32]
 800466c:	1ae4      	subs	r4, r4, r3
 800466e:	eba8 0803 	sub.w	r8, r8, r3
 8004672:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004674:	b16b      	cbz	r3, 8004692 <_dtoa_r+0x67a>
 8004676:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004678:	2a00      	cmp	r2, #0
 800467a:	f000 8290 	beq.w	8004b9e <_dtoa_r+0xb86>
 800467e:	1bde      	subs	r6, r3, r7
 8004680:	2f00      	cmp	r7, #0
 8004682:	f040 819b 	bne.w	80049bc <_dtoa_r+0x9a4>
 8004686:	4651      	mov	r1, sl
 8004688:	4632      	mov	r2, r6
 800468a:	4648      	mov	r0, r9
 800468c:	f001 fd2a 	bl	80060e4 <__pow5mult>
 8004690:	4682      	mov	sl, r0
 8004692:	2101      	movs	r1, #1
 8004694:	4648      	mov	r0, r9
 8004696:	f001 fc75 	bl	8005f84 <__i2b>
 800469a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800469c:	4606      	mov	r6, r0
 800469e:	2a00      	cmp	r2, #0
 80046a0:	f040 8125 	bne.w	80048ee <_dtoa_r+0x8d6>
 80046a4:	9b02      	ldr	r3, [sp, #8]
 80046a6:	2b01      	cmp	r3, #1
 80046a8:	f340 816c 	ble.w	8004984 <_dtoa_r+0x96c>
 80046ac:	2001      	movs	r0, #1
 80046ae:	4440      	add	r0, r8
 80046b0:	f010 001f 	ands.w	r0, r0, #31
 80046b4:	f000 8119 	beq.w	80048ea <_dtoa_r+0x8d2>
 80046b8:	f1c0 0320 	rsb	r3, r0, #32
 80046bc:	2b04      	cmp	r3, #4
 80046be:	f340 83ac 	ble.w	8004e1a <_dtoa_r+0xe02>
 80046c2:	f1c0 001c 	rsb	r0, r0, #28
 80046c6:	9b08      	ldr	r3, [sp, #32]
 80046c8:	4403      	add	r3, r0
 80046ca:	9308      	str	r3, [sp, #32]
 80046cc:	4404      	add	r4, r0
 80046ce:	4480      	add	r8, r0
 80046d0:	9b08      	ldr	r3, [sp, #32]
 80046d2:	2b00      	cmp	r3, #0
 80046d4:	dd05      	ble.n	80046e2 <_dtoa_r+0x6ca>
 80046d6:	4651      	mov	r1, sl
 80046d8:	461a      	mov	r2, r3
 80046da:	4648      	mov	r0, r9
 80046dc:	f001 fd52 	bl	8006184 <__lshift>
 80046e0:	4682      	mov	sl, r0
 80046e2:	f1b8 0f00 	cmp.w	r8, #0
 80046e6:	dd05      	ble.n	80046f4 <_dtoa_r+0x6dc>
 80046e8:	4631      	mov	r1, r6
 80046ea:	4642      	mov	r2, r8
 80046ec:	4648      	mov	r0, r9
 80046ee:	f001 fd49 	bl	8006184 <__lshift>
 80046f2:	4606      	mov	r6, r0
 80046f4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80046f6:	2b00      	cmp	r3, #0
 80046f8:	d177      	bne.n	80047ea <_dtoa_r+0x7d2>
 80046fa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80046fc:	2b00      	cmp	r3, #0
 80046fe:	f340 8209 	ble.w	8004b14 <_dtoa_r+0xafc>
 8004702:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004704:	2b00      	cmp	r3, #0
 8004706:	f000 8089 	beq.w	800481c <_dtoa_r+0x804>
 800470a:	2c00      	cmp	r4, #0
 800470c:	f300 816b 	bgt.w	80049e6 <_dtoa_r+0x9ce>
 8004710:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004712:	2b00      	cmp	r3, #0
 8004714:	f040 81cd 	bne.w	8004ab2 <_dtoa_r+0xa9a>
 8004718:	46a8      	mov	r8, r5
 800471a:	9a00      	ldr	r2, [sp, #0]
 800471c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004720:	f002 0201 	and.w	r2, r2, #1
 8004724:	920a      	str	r2, [sp, #40]	; 0x28
 8004726:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004728:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 800472c:	441a      	add	r2, r3
 800472e:	465f      	mov	r7, fp
 8004730:	9209      	str	r2, [sp, #36]	; 0x24
 8004732:	46b3      	mov	fp, r6
 8004734:	4659      	mov	r1, fp
 8004736:	4650      	mov	r0, sl
 8004738:	f7ff fbdc 	bl	8003ef4 <quorem>
 800473c:	4629      	mov	r1, r5
 800473e:	4604      	mov	r4, r0
 8004740:	4650      	mov	r0, sl
 8004742:	f001 fd75 	bl	8006230 <__mcmp>
 8004746:	4659      	mov	r1, fp
 8004748:	4606      	mov	r6, r0
 800474a:	4642      	mov	r2, r8
 800474c:	4648      	mov	r0, r9
 800474e:	f001 fd8b 	bl	8006268 <__mdiff>
 8004752:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004756:	9300      	str	r3, [sp, #0]
 8004758:	68c3      	ldr	r3, [r0, #12]
 800475a:	4601      	mov	r1, r0
 800475c:	2b00      	cmp	r3, #0
 800475e:	f040 81d4 	bne.w	8004b0a <_dtoa_r+0xaf2>
 8004762:	9008      	str	r0, [sp, #32]
 8004764:	4650      	mov	r0, sl
 8004766:	f001 fd63 	bl	8006230 <__mcmp>
 800476a:	9a08      	ldr	r2, [sp, #32]
 800476c:	9007      	str	r0, [sp, #28]
 800476e:	4611      	mov	r1, r2
 8004770:	4648      	mov	r0, r9
 8004772:	f001 fb6d 	bl	8005e50 <_Bfree>
 8004776:	9b07      	ldr	r3, [sp, #28]
 8004778:	b933      	cbnz	r3, 8004788 <_dtoa_r+0x770>
 800477a:	9a02      	ldr	r2, [sp, #8]
 800477c:	b922      	cbnz	r2, 8004788 <_dtoa_r+0x770>
 800477e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004780:	2b00      	cmp	r3, #0
 8004782:	f000 8319 	beq.w	8004db8 <_dtoa_r+0xda0>
 8004786:	9b02      	ldr	r3, [sp, #8]
 8004788:	2e00      	cmp	r6, #0
 800478a:	f2c0 821c 	blt.w	8004bc6 <_dtoa_r+0xbae>
 800478e:	d105      	bne.n	800479c <_dtoa_r+0x784>
 8004790:	9a02      	ldr	r2, [sp, #8]
 8004792:	b91a      	cbnz	r2, 800479c <_dtoa_r+0x784>
 8004794:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004796:	2a00      	cmp	r2, #0
 8004798:	f000 8215 	beq.w	8004bc6 <_dtoa_r+0xbae>
 800479c:	2b00      	cmp	r3, #0
 800479e:	f107 0401 	add.w	r4, r7, #1
 80047a2:	f300 8225 	bgt.w	8004bf0 <_dtoa_r+0xbd8>
 80047a6:	9b00      	ldr	r3, [sp, #0]
 80047a8:	703b      	strb	r3, [r7, #0]
 80047aa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80047ac:	42bb      	cmp	r3, r7
 80047ae:	f000 8230 	beq.w	8004c12 <_dtoa_r+0xbfa>
 80047b2:	4651      	mov	r1, sl
 80047b4:	2300      	movs	r3, #0
 80047b6:	220a      	movs	r2, #10
 80047b8:	4648      	mov	r0, r9
 80047ba:	f001 fb53 	bl	8005e64 <__multadd>
 80047be:	4545      	cmp	r5, r8
 80047c0:	4682      	mov	sl, r0
 80047c2:	4629      	mov	r1, r5
 80047c4:	f04f 0300 	mov.w	r3, #0
 80047c8:	f04f 020a 	mov.w	r2, #10
 80047cc:	4648      	mov	r0, r9
 80047ce:	f000 8196 	beq.w	8004afe <_dtoa_r+0xae6>
 80047d2:	f001 fb47 	bl	8005e64 <__multadd>
 80047d6:	4641      	mov	r1, r8
 80047d8:	4605      	mov	r5, r0
 80047da:	2300      	movs	r3, #0
 80047dc:	220a      	movs	r2, #10
 80047de:	4648      	mov	r0, r9
 80047e0:	f001 fb40 	bl	8005e64 <__multadd>
 80047e4:	4627      	mov	r7, r4
 80047e6:	4680      	mov	r8, r0
 80047e8:	e7a4      	b.n	8004734 <_dtoa_r+0x71c>
 80047ea:	4631      	mov	r1, r6
 80047ec:	4650      	mov	r0, sl
 80047ee:	f001 fd1f 	bl	8006230 <__mcmp>
 80047f2:	2800      	cmp	r0, #0
 80047f4:	da81      	bge.n	80046fa <_dtoa_r+0x6e2>
 80047f6:	9f06      	ldr	r7, [sp, #24]
 80047f8:	4651      	mov	r1, sl
 80047fa:	2300      	movs	r3, #0
 80047fc:	220a      	movs	r2, #10
 80047fe:	4648      	mov	r0, r9
 8004800:	3f01      	subs	r7, #1
 8004802:	9706      	str	r7, [sp, #24]
 8004804:	f001 fb2e 	bl	8005e64 <__multadd>
 8004808:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800480a:	4682      	mov	sl, r0
 800480c:	2b00      	cmp	r3, #0
 800480e:	f040 82eb 	bne.w	8004de8 <_dtoa_r+0xdd0>
 8004812:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004814:	2b00      	cmp	r3, #0
 8004816:	f340 82f3 	ble.w	8004e00 <_dtoa_r+0xde8>
 800481a:	9309      	str	r3, [sp, #36]	; 0x24
 800481c:	465c      	mov	r4, fp
 800481e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004822:	e002      	b.n	800482a <_dtoa_r+0x812>
 8004824:	f001 fb1e 	bl	8005e64 <__multadd>
 8004828:	4682      	mov	sl, r0
 800482a:	4631      	mov	r1, r6
 800482c:	4650      	mov	r0, sl
 800482e:	f7ff fb61 	bl	8003ef4 <quorem>
 8004832:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004836:	f804 7b01 	strb.w	r7, [r4], #1
 800483a:	eba4 030b 	sub.w	r3, r4, fp
 800483e:	4598      	cmp	r8, r3
 8004840:	f04f 020a 	mov.w	r2, #10
 8004844:	f04f 0300 	mov.w	r3, #0
 8004848:	4651      	mov	r1, sl
 800484a:	4648      	mov	r0, r9
 800484c:	dcea      	bgt.n	8004824 <_dtoa_r+0x80c>
 800484e:	2300      	movs	r3, #0
 8004850:	9700      	str	r7, [sp, #0]
 8004852:	9302      	str	r3, [sp, #8]
 8004854:	4651      	mov	r1, sl
 8004856:	2201      	movs	r2, #1
 8004858:	4648      	mov	r0, r9
 800485a:	f001 fc93 	bl	8006184 <__lshift>
 800485e:	4631      	mov	r1, r6
 8004860:	4682      	mov	sl, r0
 8004862:	f001 fce5 	bl	8006230 <__mcmp>
 8004866:	2800      	cmp	r0, #0
 8004868:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 800486c:	dc14      	bgt.n	8004898 <_dtoa_r+0x880>
 800486e:	d108      	bne.n	8004882 <_dtoa_r+0x86a>
 8004870:	9b00      	ldr	r3, [sp, #0]
 8004872:	07db      	lsls	r3, r3, #31
 8004874:	d410      	bmi.n	8004898 <_dtoa_r+0x880>
 8004876:	e004      	b.n	8004882 <_dtoa_r+0x86a>
 8004878:	40240000 	.word	0x40240000
 800487c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004880:	461c      	mov	r4, r3
 8004882:	2a30      	cmp	r2, #48	; 0x30
 8004884:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004888:	d0f8      	beq.n	800487c <_dtoa_r+0x864>
 800488a:	e00b      	b.n	80048a4 <_dtoa_r+0x88c>
 800488c:	459b      	cmp	fp, r3
 800488e:	f000 814e 	beq.w	8004b2e <_dtoa_r+0xb16>
 8004892:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004896:	461c      	mov	r4, r3
 8004898:	2a39      	cmp	r2, #57	; 0x39
 800489a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 800489e:	d0f5      	beq.n	800488c <_dtoa_r+0x874>
 80048a0:	3201      	adds	r2, #1
 80048a2:	701a      	strb	r2, [r3, #0]
 80048a4:	4631      	mov	r1, r6
 80048a6:	4648      	mov	r0, r9
 80048a8:	f001 fad2 	bl	8005e50 <_Bfree>
 80048ac:	b155      	cbz	r5, 80048c4 <_dtoa_r+0x8ac>
 80048ae:	9902      	ldr	r1, [sp, #8]
 80048b0:	b121      	cbz	r1, 80048bc <_dtoa_r+0x8a4>
 80048b2:	42a9      	cmp	r1, r5
 80048b4:	d002      	beq.n	80048bc <_dtoa_r+0x8a4>
 80048b6:	4648      	mov	r0, r9
 80048b8:	f001 faca 	bl	8005e50 <_Bfree>
 80048bc:	4629      	mov	r1, r5
 80048be:	4648      	mov	r0, r9
 80048c0:	f001 fac6 	bl	8005e50 <_Bfree>
 80048c4:	4651      	mov	r1, sl
 80048c6:	4648      	mov	r0, r9
 80048c8:	f001 fac2 	bl	8005e50 <_Bfree>
 80048cc:	2200      	movs	r2, #0
 80048ce:	9b06      	ldr	r3, [sp, #24]
 80048d0:	7022      	strb	r2, [r4, #0]
 80048d2:	9a05      	ldr	r2, [sp, #20]
 80048d4:	3301      	adds	r3, #1
 80048d6:	6013      	str	r3, [r2, #0]
 80048d8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80048da:	2b00      	cmp	r3, #0
 80048dc:	f43f abdb 	beq.w	8004096 <_dtoa_r+0x7e>
 80048e0:	4658      	mov	r0, fp
 80048e2:	601c      	str	r4, [r3, #0]
 80048e4:	b01b      	add	sp, #108	; 0x6c
 80048e6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80048ea:	201c      	movs	r0, #28
 80048ec:	e6eb      	b.n	80046c6 <_dtoa_r+0x6ae>
 80048ee:	4601      	mov	r1, r0
 80048f0:	4648      	mov	r0, r9
 80048f2:	f001 fbf7 	bl	80060e4 <__pow5mult>
 80048f6:	9b02      	ldr	r3, [sp, #8]
 80048f8:	2b01      	cmp	r3, #1
 80048fa:	4606      	mov	r6, r0
 80048fc:	f340 80d4 	ble.w	8004aa8 <_dtoa_r+0xa90>
 8004900:	2300      	movs	r3, #0
 8004902:	930c      	str	r3, [sp, #48]	; 0x30
 8004904:	6933      	ldr	r3, [r6, #16]
 8004906:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 800490a:	6918      	ldr	r0, [r3, #16]
 800490c:	f001 faea 	bl	8005ee4 <__hi0bits>
 8004910:	f1c0 0020 	rsb	r0, r0, #32
 8004914:	e6cb      	b.n	80046ae <_dtoa_r+0x696>
 8004916:	900d      	str	r0, [sp, #52]	; 0x34
 8004918:	e42a      	b.n	8004170 <_dtoa_r+0x158>
 800491a:	2501      	movs	r5, #1
 800491c:	e440      	b.n	80041a0 <_dtoa_r+0x188>
 800491e:	f1c3 0820 	rsb	r8, r3, #32
 8004922:	9b00      	ldr	r3, [sp, #0]
 8004924:	fa03 f008 	lsl.w	r0, r3, r8
 8004928:	f7ff bbd8 	b.w	80040dc <_dtoa_r+0xc4>
 800492c:	2300      	movs	r3, #0
 800492e:	930a      	str	r3, [sp, #40]	; 0x28
 8004930:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004934:	4413      	add	r3, r2
 8004936:	930e      	str	r3, [sp, #56]	; 0x38
 8004938:	3301      	adds	r3, #1
 800493a:	2b01      	cmp	r3, #1
 800493c:	461e      	mov	r6, r3
 800493e:	9309      	str	r3, [sp, #36]	; 0x24
 8004940:	bfb8      	it	lt
 8004942:	2601      	movlt	r6, #1
 8004944:	2100      	movs	r1, #0
 8004946:	2e17      	cmp	r6, #23
 8004948:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800494c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800494e:	f77f ac89 	ble.w	8004264 <_dtoa_r+0x24c>
 8004952:	2201      	movs	r2, #1
 8004954:	2304      	movs	r3, #4
 8004956:	005b      	lsls	r3, r3, #1
 8004958:	f103 0014 	add.w	r0, r3, #20
 800495c:	42b0      	cmp	r0, r6
 800495e:	4611      	mov	r1, r2
 8004960:	f102 0201 	add.w	r2, r2, #1
 8004964:	d9f7      	bls.n	8004956 <_dtoa_r+0x93e>
 8004966:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800496a:	e47b      	b.n	8004264 <_dtoa_r+0x24c>
 800496c:	2300      	movs	r3, #0
 800496e:	930a      	str	r3, [sp, #40]	; 0x28
 8004970:	9e07      	ldr	r6, [sp, #28]
 8004972:	2e00      	cmp	r6, #0
 8004974:	f340 80e2 	ble.w	8004b3c <_dtoa_r+0xb24>
 8004978:	960e      	str	r6, [sp, #56]	; 0x38
 800497a:	9609      	str	r6, [sp, #36]	; 0x24
 800497c:	e7e2      	b.n	8004944 <_dtoa_r+0x92c>
 800497e:	2301      	movs	r3, #1
 8004980:	930a      	str	r3, [sp, #40]	; 0x28
 8004982:	e7f5      	b.n	8004970 <_dtoa_r+0x958>
 8004984:	9b00      	ldr	r3, [sp, #0]
 8004986:	2b00      	cmp	r3, #0
 8004988:	f47f ae90 	bne.w	80046ac <_dtoa_r+0x694>
 800498c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004990:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004994:	2b00      	cmp	r3, #0
 8004996:	f040 8192 	bne.w	8004cbe <_dtoa_r+0xca6>
 800499a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 800499e:	0d1b      	lsrs	r3, r3, #20
 80049a0:	051b      	lsls	r3, r3, #20
 80049a2:	b12b      	cbz	r3, 80049b0 <_dtoa_r+0x998>
 80049a4:	9b08      	ldr	r3, [sp, #32]
 80049a6:	3301      	adds	r3, #1
 80049a8:	9308      	str	r3, [sp, #32]
 80049aa:	f108 0801 	add.w	r8, r8, #1
 80049ae:	2301      	movs	r3, #1
 80049b0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80049b2:	930c      	str	r3, [sp, #48]	; 0x30
 80049b4:	2a00      	cmp	r2, #0
 80049b6:	f43f ae79 	beq.w	80046ac <_dtoa_r+0x694>
 80049ba:	e7a3      	b.n	8004904 <_dtoa_r+0x8ec>
 80049bc:	463a      	mov	r2, r7
 80049be:	4629      	mov	r1, r5
 80049c0:	4648      	mov	r0, r9
 80049c2:	f001 fb8f 	bl	80060e4 <__pow5mult>
 80049c6:	4652      	mov	r2, sl
 80049c8:	4601      	mov	r1, r0
 80049ca:	4605      	mov	r5, r0
 80049cc:	4648      	mov	r0, r9
 80049ce:	f001 fae3 	bl	8005f98 <__multiply>
 80049d2:	4651      	mov	r1, sl
 80049d4:	4607      	mov	r7, r0
 80049d6:	4648      	mov	r0, r9
 80049d8:	f001 fa3a 	bl	8005e50 <_Bfree>
 80049dc:	46ba      	mov	sl, r7
 80049de:	2e00      	cmp	r6, #0
 80049e0:	f43f ae57 	beq.w	8004692 <_dtoa_r+0x67a>
 80049e4:	e64f      	b.n	8004686 <_dtoa_r+0x66e>
 80049e6:	4629      	mov	r1, r5
 80049e8:	4622      	mov	r2, r4
 80049ea:	4648      	mov	r0, r9
 80049ec:	f001 fbca 	bl	8006184 <__lshift>
 80049f0:	4605      	mov	r5, r0
 80049f2:	e68d      	b.n	8004710 <_dtoa_r+0x6f8>
 80049f4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80049f6:	2a00      	cmp	r2, #0
 80049f8:	f000 815d 	beq.w	8004cb6 <_dtoa_r+0xc9e>
 80049fc:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004a00:	9a08      	ldr	r2, [sp, #32]
 8004a02:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004a04:	4614      	mov	r4, r2
 8004a06:	441a      	add	r2, r3
 8004a08:	4498      	add	r8, r3
 8004a0a:	9208      	str	r2, [sp, #32]
 8004a0c:	e5f7      	b.n	80045fe <_dtoa_r+0x5e6>
 8004a0e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a10:	2b00      	cmp	r3, #0
 8004a12:	f73f ad3e 	bgt.w	8004492 <_dtoa_r+0x47a>
 8004a16:	f040 80bc 	bne.w	8004b92 <_dtoa_r+0xb7a>
 8004a1a:	ec51 0b17 	vmov	r0, r1, d7
 8004a1e:	2200      	movs	r2, #0
 8004a20:	4bb2      	ldr	r3, [pc, #712]	; (8004cec <_dtoa_r+0xcd4>)
 8004a22:	f7fc f889 	bl	8000b38 <__aeabi_dmul>
 8004a26:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004a2a:	f7fc fb0b 	bl	8001044 <__aeabi_dcmpge>
 8004a2e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004a30:	4635      	mov	r5, r6
 8004a32:	2800      	cmp	r0, #0
 8004a34:	d176      	bne.n	8004b24 <_dtoa_r+0xb0c>
 8004a36:	9a06      	ldr	r2, [sp, #24]
 8004a38:	2331      	movs	r3, #49	; 0x31
 8004a3a:	3201      	adds	r2, #1
 8004a3c:	9206      	str	r2, [sp, #24]
 8004a3e:	f88b 3000 	strb.w	r3, [fp]
 8004a42:	f10b 0401 	add.w	r4, fp, #1
 8004a46:	4631      	mov	r1, r6
 8004a48:	4648      	mov	r0, r9
 8004a4a:	f001 fa01 	bl	8005e50 <_Bfree>
 8004a4e:	2d00      	cmp	r5, #0
 8004a50:	f47f af34 	bne.w	80048bc <_dtoa_r+0x8a4>
 8004a54:	e736      	b.n	80048c4 <_dtoa_r+0x8ac>
 8004a56:	f000 8142 	beq.w	8004cde <_dtoa_r+0xcc6>
 8004a5a:	9b06      	ldr	r3, [sp, #24]
 8004a5c:	425c      	negs	r4, r3
 8004a5e:	4ba4      	ldr	r3, [pc, #656]	; (8004cf0 <_dtoa_r+0xcd8>)
 8004a60:	f004 020f 	and.w	r2, r4, #15
 8004a64:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004a68:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004a6c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004a70:	f7fc f862 	bl	8000b38 <__aeabi_dmul>
 8004a74:	1124      	asrs	r4, r4, #4
 8004a76:	e9cd 0100 	strd	r0, r1, [sp]
 8004a7a:	f000 81c6 	beq.w	8004e0a <_dtoa_r+0xdf2>
 8004a7e:	4d9d      	ldr	r5, [pc, #628]	; (8004cf4 <_dtoa_r+0xcdc>)
 8004a80:	2300      	movs	r3, #0
 8004a82:	2602      	movs	r6, #2
 8004a84:	07e7      	lsls	r7, r4, #31
 8004a86:	d505      	bpl.n	8004a94 <_dtoa_r+0xa7c>
 8004a88:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004a8c:	f7fc f854 	bl	8000b38 <__aeabi_dmul>
 8004a90:	3601      	adds	r6, #1
 8004a92:	2301      	movs	r3, #1
 8004a94:	1064      	asrs	r4, r4, #1
 8004a96:	f105 0508 	add.w	r5, r5, #8
 8004a9a:	d1f3      	bne.n	8004a84 <_dtoa_r+0xa6c>
 8004a9c:	2b00      	cmp	r3, #0
 8004a9e:	f43f ac27 	beq.w	80042f0 <_dtoa_r+0x2d8>
 8004aa2:	e9cd 0100 	strd	r0, r1, [sp]
 8004aa6:	e423      	b.n	80042f0 <_dtoa_r+0x2d8>
 8004aa8:	9b00      	ldr	r3, [sp, #0]
 8004aaa:	2b00      	cmp	r3, #0
 8004aac:	f43f af6e 	beq.w	800498c <_dtoa_r+0x974>
 8004ab0:	e726      	b.n	8004900 <_dtoa_r+0x8e8>
 8004ab2:	6869      	ldr	r1, [r5, #4]
 8004ab4:	4648      	mov	r0, r9
 8004ab6:	f001 f9a5 	bl	8005e04 <_Balloc>
 8004aba:	692b      	ldr	r3, [r5, #16]
 8004abc:	3302      	adds	r3, #2
 8004abe:	009a      	lsls	r2, r3, #2
 8004ac0:	4604      	mov	r4, r0
 8004ac2:	f105 010c 	add.w	r1, r5, #12
 8004ac6:	300c      	adds	r0, #12
 8004ac8:	f7fb fd1a 	bl	8000500 <memcpy>
 8004acc:	4621      	mov	r1, r4
 8004ace:	2201      	movs	r2, #1
 8004ad0:	4648      	mov	r0, r9
 8004ad2:	f001 fb57 	bl	8006184 <__lshift>
 8004ad6:	4680      	mov	r8, r0
 8004ad8:	e61f      	b.n	800471a <_dtoa_r+0x702>
 8004ada:	2400      	movs	r4, #0
 8004adc:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004ae0:	4621      	mov	r1, r4
 8004ae2:	4648      	mov	r0, r9
 8004ae4:	f001 f98e 	bl	8005e04 <_Balloc>
 8004ae8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004aec:	930e      	str	r3, [sp, #56]	; 0x38
 8004aee:	9309      	str	r3, [sp, #36]	; 0x24
 8004af0:	2301      	movs	r3, #1
 8004af2:	4683      	mov	fp, r0
 8004af4:	9407      	str	r4, [sp, #28]
 8004af6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004afa:	930a      	str	r3, [sp, #40]	; 0x28
 8004afc:	e4b6      	b.n	800446c <_dtoa_r+0x454>
 8004afe:	f001 f9b1 	bl	8005e64 <__multadd>
 8004b02:	4627      	mov	r7, r4
 8004b04:	4605      	mov	r5, r0
 8004b06:	4680      	mov	r8, r0
 8004b08:	e614      	b.n	8004734 <_dtoa_r+0x71c>
 8004b0a:	4648      	mov	r0, r9
 8004b0c:	f001 f9a0 	bl	8005e50 <_Bfree>
 8004b10:	2301      	movs	r3, #1
 8004b12:	e639      	b.n	8004788 <_dtoa_r+0x770>
 8004b14:	9b02      	ldr	r3, [sp, #8]
 8004b16:	2b02      	cmp	r3, #2
 8004b18:	f77f adf3 	ble.w	8004702 <_dtoa_r+0x6ea>
 8004b1c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b1e:	2b00      	cmp	r3, #0
 8004b20:	f000 80cf 	beq.w	8004cc2 <_dtoa_r+0xcaa>
 8004b24:	9b07      	ldr	r3, [sp, #28]
 8004b26:	43db      	mvns	r3, r3
 8004b28:	9306      	str	r3, [sp, #24]
 8004b2a:	465c      	mov	r4, fp
 8004b2c:	e78b      	b.n	8004a46 <_dtoa_r+0xa2e>
 8004b2e:	9a06      	ldr	r2, [sp, #24]
 8004b30:	2331      	movs	r3, #49	; 0x31
 8004b32:	3201      	adds	r2, #1
 8004b34:	9206      	str	r2, [sp, #24]
 8004b36:	f88b 3000 	strb.w	r3, [fp]
 8004b3a:	e6b3      	b.n	80048a4 <_dtoa_r+0x88c>
 8004b3c:	2401      	movs	r4, #1
 8004b3e:	9409      	str	r4, [sp, #36]	; 0x24
 8004b40:	9407      	str	r4, [sp, #28]
 8004b42:	f7ff bb8b 	b.w	800425c <_dtoa_r+0x244>
 8004b46:	4630      	mov	r0, r6
 8004b48:	f7fb ff8c 	bl	8000a64 <__aeabi_i2d>
 8004b4c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004b50:	f7fb fff2 	bl	8000b38 <__aeabi_dmul>
 8004b54:	2200      	movs	r2, #0
 8004b56:	4b68      	ldr	r3, [pc, #416]	; (8004cf8 <_dtoa_r+0xce0>)
 8004b58:	f7fb fe38 	bl	80007cc <__adddf3>
 8004b5c:	4606      	mov	r6, r0
 8004b5e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004b62:	2200      	movs	r2, #0
 8004b64:	4b61      	ldr	r3, [pc, #388]	; (8004cec <_dtoa_r+0xcd4>)
 8004b66:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004b6a:	f7fb fe2d 	bl	80007c8 <__aeabi_dsub>
 8004b6e:	4632      	mov	r2, r6
 8004b70:	463b      	mov	r3, r7
 8004b72:	4604      	mov	r4, r0
 8004b74:	460d      	mov	r5, r1
 8004b76:	f7fc fa6f 	bl	8001058 <__aeabi_dcmpgt>
 8004b7a:	2800      	cmp	r0, #0
 8004b7c:	d14f      	bne.n	8004c1e <_dtoa_r+0xc06>
 8004b7e:	4632      	mov	r2, r6
 8004b80:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004b84:	4620      	mov	r0, r4
 8004b86:	4629      	mov	r1, r5
 8004b88:	f7fc fa48 	bl	800101c <__aeabi_dcmplt>
 8004b8c:	2800      	cmp	r0, #0
 8004b8e:	f43f ac69 	beq.w	8004464 <_dtoa_r+0x44c>
 8004b92:	2600      	movs	r6, #0
 8004b94:	4635      	mov	r5, r6
 8004b96:	e7c5      	b.n	8004b24 <_dtoa_r+0xb0c>
 8004b98:	2301      	movs	r3, #1
 8004b9a:	930a      	str	r3, [sp, #40]	; 0x28
 8004b9c:	e6c8      	b.n	8004930 <_dtoa_r+0x918>
 8004b9e:	4651      	mov	r1, sl
 8004ba0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004ba2:	4648      	mov	r0, r9
 8004ba4:	f001 fa9e 	bl	80060e4 <__pow5mult>
 8004ba8:	4682      	mov	sl, r0
 8004baa:	e572      	b.n	8004692 <_dtoa_r+0x67a>
 8004bac:	f8dd a000 	ldr.w	sl, [sp]
 8004bb0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004bb4:	e686      	b.n	80048c4 <_dtoa_r+0x8ac>
 8004bb6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004bb8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004bba:	1afb      	subs	r3, r7, r3
 8004bbc:	441a      	add	r2, r3
 8004bbe:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004bc2:	2700      	movs	r7, #0
 8004bc4:	e512      	b.n	80045ec <_dtoa_r+0x5d4>
 8004bc6:	2b00      	cmp	r3, #0
 8004bc8:	9402      	str	r4, [sp, #8]
 8004bca:	465e      	mov	r6, fp
 8004bcc:	f107 0401 	add.w	r4, r7, #1
 8004bd0:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004bd4:	f300 80ba 	bgt.w	8004d4c <_dtoa_r+0xd34>
 8004bd8:	9b00      	ldr	r3, [sp, #0]
 8004bda:	9502      	str	r5, [sp, #8]
 8004bdc:	703b      	strb	r3, [r7, #0]
 8004bde:	4645      	mov	r5, r8
 8004be0:	e660      	b.n	80048a4 <_dtoa_r+0x88c>
 8004be2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004be6:	2602      	movs	r6, #2
 8004be8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004bec:	f7ff bb67 	b.w	80042be <_dtoa_r+0x2a6>
 8004bf0:	9b00      	ldr	r3, [sp, #0]
 8004bf2:	2b39      	cmp	r3, #57	; 0x39
 8004bf4:	465e      	mov	r6, fp
 8004bf6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004bfa:	f000 80b9 	beq.w	8004d70 <_dtoa_r+0xd58>
 8004bfe:	9b00      	ldr	r3, [sp, #0]
 8004c00:	9502      	str	r5, [sp, #8]
 8004c02:	3301      	adds	r3, #1
 8004c04:	703b      	strb	r3, [r7, #0]
 8004c06:	4645      	mov	r5, r8
 8004c08:	e64c      	b.n	80048a4 <_dtoa_r+0x88c>
 8004c0a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004c0e:	1a9c      	subs	r4, r3, r2
 8004c10:	e4f5      	b.n	80045fe <_dtoa_r+0x5e6>
 8004c12:	465e      	mov	r6, fp
 8004c14:	9502      	str	r5, [sp, #8]
 8004c16:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004c1a:	4645      	mov	r5, r8
 8004c1c:	e61a      	b.n	8004854 <_dtoa_r+0x83c>
 8004c1e:	2600      	movs	r6, #0
 8004c20:	4635      	mov	r5, r6
 8004c22:	e708      	b.n	8004a36 <_dtoa_r+0xa1e>
 8004c24:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004c28:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004c2c:	f7fb ff84 	bl	8000b38 <__aeabi_dmul>
 8004c30:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004c32:	f88b 5000 	strb.w	r5, [fp]
 8004c36:	2b01      	cmp	r3, #1
 8004c38:	e9cd 0100 	strd	r0, r1, [sp]
 8004c3c:	d020      	beq.n	8004c80 <_dtoa_r+0xc68>
 8004c3e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004c40:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004c44:	445b      	add	r3, fp
 8004c46:	4698      	mov	r8, r3
 8004c48:	2200      	movs	r2, #0
 8004c4a:	4b2c      	ldr	r3, [pc, #176]	; (8004cfc <_dtoa_r+0xce4>)
 8004c4c:	4630      	mov	r0, r6
 8004c4e:	4639      	mov	r1, r7
 8004c50:	f7fb ff72 	bl	8000b38 <__aeabi_dmul>
 8004c54:	460f      	mov	r7, r1
 8004c56:	4606      	mov	r6, r0
 8004c58:	f7fc fa1e 	bl	8001098 <__aeabi_d2iz>
 8004c5c:	4605      	mov	r5, r0
 8004c5e:	f7fb ff01 	bl	8000a64 <__aeabi_i2d>
 8004c62:	3530      	adds	r5, #48	; 0x30
 8004c64:	4602      	mov	r2, r0
 8004c66:	460b      	mov	r3, r1
 8004c68:	4630      	mov	r0, r6
 8004c6a:	4639      	mov	r1, r7
 8004c6c:	f7fb fdac 	bl	80007c8 <__aeabi_dsub>
 8004c70:	f804 5b01 	strb.w	r5, [r4], #1
 8004c74:	4544      	cmp	r4, r8
 8004c76:	4606      	mov	r6, r0
 8004c78:	460f      	mov	r7, r1
 8004c7a:	d1e5      	bne.n	8004c48 <_dtoa_r+0xc30>
 8004c7c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004c80:	4b1f      	ldr	r3, [pc, #124]	; (8004d00 <_dtoa_r+0xce8>)
 8004c82:	2200      	movs	r2, #0
 8004c84:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004c88:	f7fb fda0 	bl	80007cc <__adddf3>
 8004c8c:	4632      	mov	r2, r6
 8004c8e:	463b      	mov	r3, r7
 8004c90:	f7fc f9c4 	bl	800101c <__aeabi_dcmplt>
 8004c94:	2800      	cmp	r0, #0
 8004c96:	d070      	beq.n	8004d7a <_dtoa_r+0xd62>
 8004c98:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004c9a:	9306      	str	r3, [sp, #24]
 8004c9c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004ca0:	e48f      	b.n	80045c2 <_dtoa_r+0x5aa>
 8004ca2:	2330      	movs	r3, #48	; 0x30
 8004ca4:	f88b 3000 	strb.w	r3, [fp]
 8004ca8:	9b06      	ldr	r3, [sp, #24]
 8004caa:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004cae:	3301      	adds	r3, #1
 8004cb0:	9306      	str	r3, [sp, #24]
 8004cb2:	465b      	mov	r3, fp
 8004cb4:	e489      	b.n	80045ca <_dtoa_r+0x5b2>
 8004cb6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004cb8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004cbc:	e6a0      	b.n	8004a00 <_dtoa_r+0x9e8>
 8004cbe:	2300      	movs	r3, #0
 8004cc0:	e676      	b.n	80049b0 <_dtoa_r+0x998>
 8004cc2:	4631      	mov	r1, r6
 8004cc4:	2205      	movs	r2, #5
 8004cc6:	4648      	mov	r0, r9
 8004cc8:	f001 f8cc 	bl	8005e64 <__multadd>
 8004ccc:	4601      	mov	r1, r0
 8004cce:	4606      	mov	r6, r0
 8004cd0:	4650      	mov	r0, sl
 8004cd2:	f001 faad 	bl	8006230 <__mcmp>
 8004cd6:	2800      	cmp	r0, #0
 8004cd8:	f73f aead 	bgt.w	8004a36 <_dtoa_r+0xa1e>
 8004cdc:	e722      	b.n	8004b24 <_dtoa_r+0xb0c>
 8004cde:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004ce2:	2602      	movs	r6, #2
 8004ce4:	ed8d 7b00 	vstr	d7, [sp]
 8004ce8:	f7ff bb02 	b.w	80042f0 <_dtoa_r+0x2d8>
 8004cec:	40140000 	.word	0x40140000
 8004cf0:	080070b0 	.word	0x080070b0
 8004cf4:	08007088 	.word	0x08007088
 8004cf8:	401c0000 	.word	0x401c0000
 8004cfc:	40240000 	.word	0x40240000
 8004d00:	3fe00000 	.word	0x3fe00000
 8004d04:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d06:	2b00      	cmp	r3, #0
 8004d08:	f43f af1d 	beq.w	8004b46 <_dtoa_r+0xb2e>
 8004d0c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004d0e:	2c00      	cmp	r4, #0
 8004d10:	f77f aba8 	ble.w	8004464 <_dtoa_r+0x44c>
 8004d14:	2200      	movs	r2, #0
 8004d16:	4b45      	ldr	r3, [pc, #276]	; (8004e2c <_dtoa_r+0xe14>)
 8004d18:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d1c:	f7fb ff0c 	bl	8000b38 <__aeabi_dmul>
 8004d20:	e9cd 0100 	strd	r0, r1, [sp]
 8004d24:	1c70      	adds	r0, r6, #1
 8004d26:	f7fb fe9d 	bl	8000a64 <__aeabi_i2d>
 8004d2a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d2e:	f7fb ff03 	bl	8000b38 <__aeabi_dmul>
 8004d32:	4b3f      	ldr	r3, [pc, #252]	; (8004e30 <_dtoa_r+0xe18>)
 8004d34:	2200      	movs	r2, #0
 8004d36:	f7fb fd49 	bl	80007cc <__adddf3>
 8004d3a:	9b06      	ldr	r3, [sp, #24]
 8004d3c:	9412      	str	r4, [sp, #72]	; 0x48
 8004d3e:	3b01      	subs	r3, #1
 8004d40:	4606      	mov	r6, r0
 8004d42:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004d46:	9316      	str	r3, [sp, #88]	; 0x58
 8004d48:	f7ff baf3 	b.w	8004332 <_dtoa_r+0x31a>
 8004d4c:	4651      	mov	r1, sl
 8004d4e:	2201      	movs	r2, #1
 8004d50:	4648      	mov	r0, r9
 8004d52:	f001 fa17 	bl	8006184 <__lshift>
 8004d56:	4631      	mov	r1, r6
 8004d58:	4682      	mov	sl, r0
 8004d5a:	f001 fa69 	bl	8006230 <__mcmp>
 8004d5e:	2800      	cmp	r0, #0
 8004d60:	dd3b      	ble.n	8004dda <_dtoa_r+0xdc2>
 8004d62:	9b00      	ldr	r3, [sp, #0]
 8004d64:	2b39      	cmp	r3, #57	; 0x39
 8004d66:	d003      	beq.n	8004d70 <_dtoa_r+0xd58>
 8004d68:	9b02      	ldr	r3, [sp, #8]
 8004d6a:	3331      	adds	r3, #49	; 0x31
 8004d6c:	9300      	str	r3, [sp, #0]
 8004d6e:	e733      	b.n	8004bd8 <_dtoa_r+0xbc0>
 8004d70:	2239      	movs	r2, #57	; 0x39
 8004d72:	9502      	str	r5, [sp, #8]
 8004d74:	703a      	strb	r2, [r7, #0]
 8004d76:	4645      	mov	r5, r8
 8004d78:	e58e      	b.n	8004898 <_dtoa_r+0x880>
 8004d7a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d7e:	2000      	movs	r0, #0
 8004d80:	492c      	ldr	r1, [pc, #176]	; (8004e34 <_dtoa_r+0xe1c>)
 8004d82:	f7fb fd21 	bl	80007c8 <__aeabi_dsub>
 8004d86:	4632      	mov	r2, r6
 8004d88:	463b      	mov	r3, r7
 8004d8a:	f7fc f965 	bl	8001058 <__aeabi_dcmpgt>
 8004d8e:	b910      	cbnz	r0, 8004d96 <_dtoa_r+0xd7e>
 8004d90:	f7ff bb68 	b.w	8004464 <_dtoa_r+0x44c>
 8004d94:	4614      	mov	r4, r2
 8004d96:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004d9a:	2b30      	cmp	r3, #48	; 0x30
 8004d9c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004da0:	d0f8      	beq.n	8004d94 <_dtoa_r+0xd7c>
 8004da2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004da4:	9306      	str	r3, [sp, #24]
 8004da6:	e58d      	b.n	80048c4 <_dtoa_r+0x8ac>
 8004da8:	46d9      	mov	r9, fp
 8004daa:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004dae:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004db2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004db4:	9306      	str	r3, [sp, #24]
 8004db6:	e404      	b.n	80045c2 <_dtoa_r+0x5aa>
 8004db8:	9b00      	ldr	r3, [sp, #0]
 8004dba:	2b39      	cmp	r3, #57	; 0x39
 8004dbc:	4621      	mov	r1, r4
 8004dbe:	4632      	mov	r2, r6
 8004dc0:	f107 0401 	add.w	r4, r7, #1
 8004dc4:	465e      	mov	r6, fp
 8004dc6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004dca:	d0d1      	beq.n	8004d70 <_dtoa_r+0xd58>
 8004dcc:	2a00      	cmp	r2, #0
 8004dce:	f77f af03 	ble.w	8004bd8 <_dtoa_r+0xbc0>
 8004dd2:	460b      	mov	r3, r1
 8004dd4:	3331      	adds	r3, #49	; 0x31
 8004dd6:	9300      	str	r3, [sp, #0]
 8004dd8:	e6fe      	b.n	8004bd8 <_dtoa_r+0xbc0>
 8004dda:	f47f aefd 	bne.w	8004bd8 <_dtoa_r+0xbc0>
 8004dde:	9b00      	ldr	r3, [sp, #0]
 8004de0:	07da      	lsls	r2, r3, #31
 8004de2:	f57f aef9 	bpl.w	8004bd8 <_dtoa_r+0xbc0>
 8004de6:	e7bc      	b.n	8004d62 <_dtoa_r+0xd4a>
 8004de8:	4629      	mov	r1, r5
 8004dea:	2300      	movs	r3, #0
 8004dec:	220a      	movs	r2, #10
 8004dee:	4648      	mov	r0, r9
 8004df0:	f001 f838 	bl	8005e64 <__multadd>
 8004df4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004df6:	2b00      	cmp	r3, #0
 8004df8:	4605      	mov	r5, r0
 8004dfa:	dd09      	ble.n	8004e10 <_dtoa_r+0xdf8>
 8004dfc:	9309      	str	r3, [sp, #36]	; 0x24
 8004dfe:	e484      	b.n	800470a <_dtoa_r+0x6f2>
 8004e00:	9b02      	ldr	r3, [sp, #8]
 8004e02:	2b02      	cmp	r3, #2
 8004e04:	dc0e      	bgt.n	8004e24 <_dtoa_r+0xe0c>
 8004e06:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004e08:	e507      	b.n	800481a <_dtoa_r+0x802>
 8004e0a:	2602      	movs	r6, #2
 8004e0c:	f7ff ba70 	b.w	80042f0 <_dtoa_r+0x2d8>
 8004e10:	9b02      	ldr	r3, [sp, #8]
 8004e12:	2b02      	cmp	r3, #2
 8004e14:	dc06      	bgt.n	8004e24 <_dtoa_r+0xe0c>
 8004e16:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004e18:	e7f0      	b.n	8004dfc <_dtoa_r+0xde4>
 8004e1a:	f43f ac59 	beq.w	80046d0 <_dtoa_r+0x6b8>
 8004e1e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004e22:	e450      	b.n	80046c6 <_dtoa_r+0x6ae>
 8004e24:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004e26:	9309      	str	r3, [sp, #36]	; 0x24
 8004e28:	e678      	b.n	8004b1c <_dtoa_r+0xb04>
 8004e2a:	bf00      	nop
 8004e2c:	40240000 	.word	0x40240000
 8004e30:	401c0000 	.word	0x401c0000
 8004e34:	3fe00000 	.word	0x3fe00000

08004e38 <__sflush_r>:
 8004e38:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004e3c:	b29a      	uxth	r2, r3
 8004e3e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004e42:	460c      	mov	r4, r1
 8004e44:	0711      	lsls	r1, r2, #28
 8004e46:	4680      	mov	r8, r0
 8004e48:	d444      	bmi.n	8004ed4 <__sflush_r+0x9c>
 8004e4a:	6862      	ldr	r2, [r4, #4]
 8004e4c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004e50:	2a00      	cmp	r2, #0
 8004e52:	81a3      	strh	r3, [r4, #12]
 8004e54:	dd59      	ble.n	8004f0a <__sflush_r+0xd2>
 8004e56:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004e58:	2d00      	cmp	r5, #0
 8004e5a:	d053      	beq.n	8004f04 <__sflush_r+0xcc>
 8004e5c:	2200      	movs	r2, #0
 8004e5e:	b29b      	uxth	r3, r3
 8004e60:	f8d8 6000 	ldr.w	r6, [r8]
 8004e64:	69e1      	ldr	r1, [r4, #28]
 8004e66:	f8c8 2000 	str.w	r2, [r8]
 8004e6a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8004e6e:	f040 8083 	bne.w	8004f78 <__sflush_r+0x140>
 8004e72:	2301      	movs	r3, #1
 8004e74:	4640      	mov	r0, r8
 8004e76:	47a8      	blx	r5
 8004e78:	1c42      	adds	r2, r0, #1
 8004e7a:	d04a      	beq.n	8004f12 <__sflush_r+0xda>
 8004e7c:	89a3      	ldrh	r3, [r4, #12]
 8004e7e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004e80:	69e1      	ldr	r1, [r4, #28]
 8004e82:	075b      	lsls	r3, r3, #29
 8004e84:	d505      	bpl.n	8004e92 <__sflush_r+0x5a>
 8004e86:	6862      	ldr	r2, [r4, #4]
 8004e88:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8004e8a:	1a80      	subs	r0, r0, r2
 8004e8c:	b10b      	cbz	r3, 8004e92 <__sflush_r+0x5a>
 8004e8e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8004e90:	1ac0      	subs	r0, r0, r3
 8004e92:	4602      	mov	r2, r0
 8004e94:	2300      	movs	r3, #0
 8004e96:	4640      	mov	r0, r8
 8004e98:	47a8      	blx	r5
 8004e9a:	1c47      	adds	r7, r0, #1
 8004e9c:	d045      	beq.n	8004f2a <__sflush_r+0xf2>
 8004e9e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004ea2:	6922      	ldr	r2, [r4, #16]
 8004ea4:	6022      	str	r2, [r4, #0]
 8004ea6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8004eaa:	2200      	movs	r2, #0
 8004eac:	81a3      	strh	r3, [r4, #12]
 8004eae:	04db      	lsls	r3, r3, #19
 8004eb0:	6062      	str	r2, [r4, #4]
 8004eb2:	d500      	bpl.n	8004eb6 <__sflush_r+0x7e>
 8004eb4:	6520      	str	r0, [r4, #80]	; 0x50
 8004eb6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004eb8:	f8c8 6000 	str.w	r6, [r8]
 8004ebc:	b311      	cbz	r1, 8004f04 <__sflush_r+0xcc>
 8004ebe:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004ec2:	4299      	cmp	r1, r3
 8004ec4:	d002      	beq.n	8004ecc <__sflush_r+0x94>
 8004ec6:	4640      	mov	r0, r8
 8004ec8:	f000 f95e 	bl	8005188 <_free_r>
 8004ecc:	2000      	movs	r0, #0
 8004ece:	6320      	str	r0, [r4, #48]	; 0x30
 8004ed0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004ed4:	6926      	ldr	r6, [r4, #16]
 8004ed6:	b1ae      	cbz	r6, 8004f04 <__sflush_r+0xcc>
 8004ed8:	6825      	ldr	r5, [r4, #0]
 8004eda:	6026      	str	r6, [r4, #0]
 8004edc:	0792      	lsls	r2, r2, #30
 8004ede:	bf0c      	ite	eq
 8004ee0:	6963      	ldreq	r3, [r4, #20]
 8004ee2:	2300      	movne	r3, #0
 8004ee4:	1bad      	subs	r5, r5, r6
 8004ee6:	60a3      	str	r3, [r4, #8]
 8004ee8:	e00a      	b.n	8004f00 <__sflush_r+0xc8>
 8004eea:	462b      	mov	r3, r5
 8004eec:	4632      	mov	r2, r6
 8004eee:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8004ef0:	69e1      	ldr	r1, [r4, #28]
 8004ef2:	4640      	mov	r0, r8
 8004ef4:	47b8      	blx	r7
 8004ef6:	2800      	cmp	r0, #0
 8004ef8:	eba5 0500 	sub.w	r5, r5, r0
 8004efc:	4406      	add	r6, r0
 8004efe:	dd2b      	ble.n	8004f58 <__sflush_r+0x120>
 8004f00:	2d00      	cmp	r5, #0
 8004f02:	dcf2      	bgt.n	8004eea <__sflush_r+0xb2>
 8004f04:	2000      	movs	r0, #0
 8004f06:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004f0a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8004f0c:	2a00      	cmp	r2, #0
 8004f0e:	dca2      	bgt.n	8004e56 <__sflush_r+0x1e>
 8004f10:	e7f8      	b.n	8004f04 <__sflush_r+0xcc>
 8004f12:	f8d8 3000 	ldr.w	r3, [r8]
 8004f16:	2b00      	cmp	r3, #0
 8004f18:	d0b0      	beq.n	8004e7c <__sflush_r+0x44>
 8004f1a:	2b1d      	cmp	r3, #29
 8004f1c:	d001      	beq.n	8004f22 <__sflush_r+0xea>
 8004f1e:	2b16      	cmp	r3, #22
 8004f20:	d12c      	bne.n	8004f7c <__sflush_r+0x144>
 8004f22:	f8c8 6000 	str.w	r6, [r8]
 8004f26:	2000      	movs	r0, #0
 8004f28:	e7ed      	b.n	8004f06 <__sflush_r+0xce>
 8004f2a:	f8d8 1000 	ldr.w	r1, [r8]
 8004f2e:	291d      	cmp	r1, #29
 8004f30:	d81a      	bhi.n	8004f68 <__sflush_r+0x130>
 8004f32:	4b15      	ldr	r3, [pc, #84]	; (8004f88 <__sflush_r+0x150>)
 8004f34:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004f38:	40cb      	lsrs	r3, r1
 8004f3a:	43db      	mvns	r3, r3
 8004f3c:	f013 0301 	ands.w	r3, r3, #1
 8004f40:	d114      	bne.n	8004f6c <__sflush_r+0x134>
 8004f42:	6925      	ldr	r5, [r4, #16]
 8004f44:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8004f48:	e9c4 5300 	strd	r5, r3, [r4]
 8004f4c:	04d5      	lsls	r5, r2, #19
 8004f4e:	81a2      	strh	r2, [r4, #12]
 8004f50:	d5b1      	bpl.n	8004eb6 <__sflush_r+0x7e>
 8004f52:	2900      	cmp	r1, #0
 8004f54:	d1af      	bne.n	8004eb6 <__sflush_r+0x7e>
 8004f56:	e7ad      	b.n	8004eb4 <__sflush_r+0x7c>
 8004f58:	89a3      	ldrh	r3, [r4, #12]
 8004f5a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004f5e:	81a3      	strh	r3, [r4, #12]
 8004f60:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004f64:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004f68:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004f6c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004f70:	81a2      	strh	r2, [r4, #12]
 8004f72:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004f76:	e7c6      	b.n	8004f06 <__sflush_r+0xce>
 8004f78:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8004f7a:	e782      	b.n	8004e82 <__sflush_r+0x4a>
 8004f7c:	89a3      	ldrh	r3, [r4, #12]
 8004f7e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004f82:	81a3      	strh	r3, [r4, #12]
 8004f84:	e7bf      	b.n	8004f06 <__sflush_r+0xce>
 8004f86:	bf00      	nop
 8004f88:	20400001 	.word	0x20400001

08004f8c <_fflush_r>:
 8004f8c:	b538      	push	{r3, r4, r5, lr}
 8004f8e:	460d      	mov	r5, r1
 8004f90:	4604      	mov	r4, r0
 8004f92:	b108      	cbz	r0, 8004f98 <_fflush_r+0xc>
 8004f94:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8004f96:	b1a3      	cbz	r3, 8004fc2 <_fflush_r+0x36>
 8004f98:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8004f9c:	b1b8      	cbz	r0, 8004fce <_fflush_r+0x42>
 8004f9e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8004fa0:	07db      	lsls	r3, r3, #31
 8004fa2:	d401      	bmi.n	8004fa8 <_fflush_r+0x1c>
 8004fa4:	0581      	lsls	r1, r0, #22
 8004fa6:	d51a      	bpl.n	8004fde <_fflush_r+0x52>
 8004fa8:	4620      	mov	r0, r4
 8004faa:	4629      	mov	r1, r5
 8004fac:	f7ff ff44 	bl	8004e38 <__sflush_r>
 8004fb0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8004fb2:	07da      	lsls	r2, r3, #31
 8004fb4:	4604      	mov	r4, r0
 8004fb6:	d402      	bmi.n	8004fbe <_fflush_r+0x32>
 8004fb8:	89ab      	ldrh	r3, [r5, #12]
 8004fba:	059b      	lsls	r3, r3, #22
 8004fbc:	d50a      	bpl.n	8004fd4 <_fflush_r+0x48>
 8004fbe:	4620      	mov	r0, r4
 8004fc0:	bd38      	pop	{r3, r4, r5, pc}
 8004fc2:	f000 f83f 	bl	8005044 <__sinit>
 8004fc6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8004fca:	2800      	cmp	r0, #0
 8004fcc:	d1e7      	bne.n	8004f9e <_fflush_r+0x12>
 8004fce:	4604      	mov	r4, r0
 8004fd0:	4620      	mov	r0, r4
 8004fd2:	bd38      	pop	{r3, r4, r5, pc}
 8004fd4:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8004fd6:	f000 fb87 	bl	80056e8 <__retarget_lock_release_recursive>
 8004fda:	4620      	mov	r0, r4
 8004fdc:	bd38      	pop	{r3, r4, r5, pc}
 8004fde:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8004fe0:	f000 fb80 	bl	80056e4 <__retarget_lock_acquire_recursive>
 8004fe4:	e7e0      	b.n	8004fa8 <_fflush_r+0x1c>
 8004fe6:	bf00      	nop

08004fe8 <std>:
 8004fe8:	b510      	push	{r4, lr}
 8004fea:	2300      	movs	r3, #0
 8004fec:	4604      	mov	r4, r0
 8004fee:	8181      	strh	r1, [r0, #12]
 8004ff0:	81c2      	strh	r2, [r0, #14]
 8004ff2:	e9c0 3300 	strd	r3, r3, [r0]
 8004ff6:	6083      	str	r3, [r0, #8]
 8004ff8:	6643      	str	r3, [r0, #100]	; 0x64
 8004ffa:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8004ffe:	6183      	str	r3, [r0, #24]
 8005000:	4619      	mov	r1, r3
 8005002:	2208      	movs	r2, #8
 8005004:	305c      	adds	r0, #92	; 0x5c
 8005006:	f7fd f8cb 	bl	80021a0 <memset>
 800500a:	4807      	ldr	r0, [pc, #28]	; (8005028 <std+0x40>)
 800500c:	4907      	ldr	r1, [pc, #28]	; (800502c <std+0x44>)
 800500e:	4a08      	ldr	r2, [pc, #32]	; (8005030 <std+0x48>)
 8005010:	4b08      	ldr	r3, [pc, #32]	; (8005034 <std+0x4c>)
 8005012:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005014:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005018:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800501c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005020:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005024:	f000 bb5a 	b.w	80056dc <__retarget_lock_init_recursive>
 8005028:	08006801 	.word	0x08006801
 800502c:	08006825 	.word	0x08006825
 8005030:	08006861 	.word	0x08006861
 8005034:	08006881 	.word	0x08006881

08005038 <_cleanup_r>:
 8005038:	4901      	ldr	r1, [pc, #4]	; (8005040 <_cleanup_r+0x8>)
 800503a:	f000 bb17 	b.w	800566c <_fwalk_reent>
 800503e:	bf00      	nop
 8005040:	08006af1 	.word	0x08006af1

08005044 <__sinit>:
 8005044:	b510      	push	{r4, lr}
 8005046:	4604      	mov	r4, r0
 8005048:	4812      	ldr	r0, [pc, #72]	; (8005094 <__sinit+0x50>)
 800504a:	f000 fb4b 	bl	80056e4 <__retarget_lock_acquire_recursive>
 800504e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005050:	b9d2      	cbnz	r2, 8005088 <__sinit+0x44>
 8005052:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005056:	4810      	ldr	r0, [pc, #64]	; (8005098 <__sinit+0x54>)
 8005058:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800505c:	2103      	movs	r1, #3
 800505e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005062:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005064:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005068:	6860      	ldr	r0, [r4, #4]
 800506a:	2104      	movs	r1, #4
 800506c:	f7ff ffbc 	bl	8004fe8 <std>
 8005070:	2201      	movs	r2, #1
 8005072:	2109      	movs	r1, #9
 8005074:	68a0      	ldr	r0, [r4, #8]
 8005076:	f7ff ffb7 	bl	8004fe8 <std>
 800507a:	2202      	movs	r2, #2
 800507c:	2112      	movs	r1, #18
 800507e:	68e0      	ldr	r0, [r4, #12]
 8005080:	f7ff ffb2 	bl	8004fe8 <std>
 8005084:	2301      	movs	r3, #1
 8005086:	63a3      	str	r3, [r4, #56]	; 0x38
 8005088:	4802      	ldr	r0, [pc, #8]	; (8005094 <__sinit+0x50>)
 800508a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800508e:	f000 bb2b 	b.w	80056e8 <__retarget_lock_release_recursive>
 8005092:	bf00      	nop
 8005094:	20000c88 	.word	0x20000c88
 8005098:	08005039 	.word	0x08005039

0800509c <__sfp_lock_acquire>:
 800509c:	4801      	ldr	r0, [pc, #4]	; (80050a4 <__sfp_lock_acquire+0x8>)
 800509e:	f000 bb21 	b.w	80056e4 <__retarget_lock_acquire_recursive>
 80050a2:	bf00      	nop
 80050a4:	20000c9c 	.word	0x20000c9c

080050a8 <__sfp_lock_release>:
 80050a8:	4801      	ldr	r0, [pc, #4]	; (80050b0 <__sfp_lock_release+0x8>)
 80050aa:	f000 bb1d 	b.w	80056e8 <__retarget_lock_release_recursive>
 80050ae:	bf00      	nop
 80050b0:	20000c9c 	.word	0x20000c9c

080050b4 <__libc_fini_array>:
 80050b4:	b538      	push	{r3, r4, r5, lr}
 80050b6:	4c0a      	ldr	r4, [pc, #40]	; (80050e0 <__libc_fini_array+0x2c>)
 80050b8:	4d0a      	ldr	r5, [pc, #40]	; (80050e4 <__libc_fini_array+0x30>)
 80050ba:	1b64      	subs	r4, r4, r5
 80050bc:	10a4      	asrs	r4, r4, #2
 80050be:	d00a      	beq.n	80050d6 <__libc_fini_array+0x22>
 80050c0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80050c4:	3b01      	subs	r3, #1
 80050c6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80050ca:	3c01      	subs	r4, #1
 80050cc:	f855 3904 	ldr.w	r3, [r5], #-4
 80050d0:	4798      	blx	r3
 80050d2:	2c00      	cmp	r4, #0
 80050d4:	d1f9      	bne.n	80050ca <__libc_fini_array+0x16>
 80050d6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80050da:	f001 befd 	b.w	8006ed8 <_fini>
 80050de:	bf00      	nop
 80050e0:	080072ac 	.word	0x080072ac
 80050e4:	080072a8 	.word	0x080072a8

080050e8 <_malloc_trim_r>:
 80050e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80050ea:	4f24      	ldr	r7, [pc, #144]	; (800517c <_malloc_trim_r+0x94>)
 80050ec:	460c      	mov	r4, r1
 80050ee:	4606      	mov	r6, r0
 80050f0:	f000 fe7c 	bl	8005dec <__malloc_lock>
 80050f4:	68bb      	ldr	r3, [r7, #8]
 80050f6:	685d      	ldr	r5, [r3, #4]
 80050f8:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80050fc:	310f      	adds	r1, #15
 80050fe:	f025 0503 	bic.w	r5, r5, #3
 8005102:	4429      	add	r1, r5
 8005104:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005108:	f021 010f 	bic.w	r1, r1, #15
 800510c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005110:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005114:	db07      	blt.n	8005126 <_malloc_trim_r+0x3e>
 8005116:	2100      	movs	r1, #0
 8005118:	4630      	mov	r0, r6
 800511a:	f001 fb5f 	bl	80067dc <_sbrk_r>
 800511e:	68bb      	ldr	r3, [r7, #8]
 8005120:	442b      	add	r3, r5
 8005122:	4298      	cmp	r0, r3
 8005124:	d004      	beq.n	8005130 <_malloc_trim_r+0x48>
 8005126:	4630      	mov	r0, r6
 8005128:	f000 fe66 	bl	8005df8 <__malloc_unlock>
 800512c:	2000      	movs	r0, #0
 800512e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005130:	4261      	negs	r1, r4
 8005132:	4630      	mov	r0, r6
 8005134:	f001 fb52 	bl	80067dc <_sbrk_r>
 8005138:	3001      	adds	r0, #1
 800513a:	d00d      	beq.n	8005158 <_malloc_trim_r+0x70>
 800513c:	4b10      	ldr	r3, [pc, #64]	; (8005180 <_malloc_trim_r+0x98>)
 800513e:	68ba      	ldr	r2, [r7, #8]
 8005140:	6819      	ldr	r1, [r3, #0]
 8005142:	1b2d      	subs	r5, r5, r4
 8005144:	f045 0501 	orr.w	r5, r5, #1
 8005148:	4630      	mov	r0, r6
 800514a:	1b09      	subs	r1, r1, r4
 800514c:	6055      	str	r5, [r2, #4]
 800514e:	6019      	str	r1, [r3, #0]
 8005150:	f000 fe52 	bl	8005df8 <__malloc_unlock>
 8005154:	2001      	movs	r0, #1
 8005156:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005158:	2100      	movs	r1, #0
 800515a:	4630      	mov	r0, r6
 800515c:	f001 fb3e 	bl	80067dc <_sbrk_r>
 8005160:	68ba      	ldr	r2, [r7, #8]
 8005162:	1a83      	subs	r3, r0, r2
 8005164:	2b0f      	cmp	r3, #15
 8005166:	ddde      	ble.n	8005126 <_malloc_trim_r+0x3e>
 8005168:	4c06      	ldr	r4, [pc, #24]	; (8005184 <_malloc_trim_r+0x9c>)
 800516a:	4905      	ldr	r1, [pc, #20]	; (8005180 <_malloc_trim_r+0x98>)
 800516c:	6824      	ldr	r4, [r4, #0]
 800516e:	f043 0301 	orr.w	r3, r3, #1
 8005172:	1b00      	subs	r0, r0, r4
 8005174:	6053      	str	r3, [r2, #4]
 8005176:	6008      	str	r0, [r1, #0]
 8005178:	e7d5      	b.n	8005126 <_malloc_trim_r+0x3e>
 800517a:	bf00      	nop
 800517c:	200005dc 	.word	0x200005dc
 8005180:	20000c00 	.word	0x20000c00
 8005184:	200009e4 	.word	0x200009e4

08005188 <_free_r>:
 8005188:	2900      	cmp	r1, #0
 800518a:	d053      	beq.n	8005234 <_free_r+0xac>
 800518c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800518e:	460c      	mov	r4, r1
 8005190:	4606      	mov	r6, r0
 8005192:	f000 fe2b 	bl	8005dec <__malloc_lock>
 8005196:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800519a:	4f71      	ldr	r7, [pc, #452]	; (8005360 <_free_r+0x1d8>)
 800519c:	f02c 0101 	bic.w	r1, ip, #1
 80051a0:	f1a4 0508 	sub.w	r5, r4, #8
 80051a4:	186b      	adds	r3, r5, r1
 80051a6:	68b8      	ldr	r0, [r7, #8]
 80051a8:	685a      	ldr	r2, [r3, #4]
 80051aa:	4298      	cmp	r0, r3
 80051ac:	f022 0203 	bic.w	r2, r2, #3
 80051b0:	d053      	beq.n	800525a <_free_r+0xd2>
 80051b2:	f01c 0f01 	tst.w	ip, #1
 80051b6:	605a      	str	r2, [r3, #4]
 80051b8:	eb03 0002 	add.w	r0, r3, r2
 80051bc:	d13b      	bne.n	8005236 <_free_r+0xae>
 80051be:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80051c2:	6840      	ldr	r0, [r0, #4]
 80051c4:	eba5 050c 	sub.w	r5, r5, ip
 80051c8:	f107 0e08 	add.w	lr, r7, #8
 80051cc:	68ac      	ldr	r4, [r5, #8]
 80051ce:	4574      	cmp	r4, lr
 80051d0:	4461      	add	r1, ip
 80051d2:	f000 0001 	and.w	r0, r0, #1
 80051d6:	d075      	beq.n	80052c4 <_free_r+0x13c>
 80051d8:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 80051dc:	f8c4 c00c 	str.w	ip, [r4, #12]
 80051e0:	f8cc 4008 	str.w	r4, [ip, #8]
 80051e4:	b360      	cbz	r0, 8005240 <_free_r+0xb8>
 80051e6:	f041 0301 	orr.w	r3, r1, #1
 80051ea:	606b      	str	r3, [r5, #4]
 80051ec:	5069      	str	r1, [r5, r1]
 80051ee:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80051f2:	d350      	bcc.n	8005296 <_free_r+0x10e>
 80051f4:	0a4b      	lsrs	r3, r1, #9
 80051f6:	2b04      	cmp	r3, #4
 80051f8:	d870      	bhi.n	80052dc <_free_r+0x154>
 80051fa:	098b      	lsrs	r3, r1, #6
 80051fc:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005200:	00e4      	lsls	r4, r4, #3
 8005202:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005206:	1938      	adds	r0, r7, r4
 8005208:	593b      	ldr	r3, [r7, r4]
 800520a:	3808      	subs	r0, #8
 800520c:	4298      	cmp	r0, r3
 800520e:	d078      	beq.n	8005302 <_free_r+0x17a>
 8005210:	685a      	ldr	r2, [r3, #4]
 8005212:	f022 0203 	bic.w	r2, r2, #3
 8005216:	428a      	cmp	r2, r1
 8005218:	d971      	bls.n	80052fe <_free_r+0x176>
 800521a:	689b      	ldr	r3, [r3, #8]
 800521c:	4298      	cmp	r0, r3
 800521e:	d1f7      	bne.n	8005210 <_free_r+0x88>
 8005220:	68c3      	ldr	r3, [r0, #12]
 8005222:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005226:	609d      	str	r5, [r3, #8]
 8005228:	60c5      	str	r5, [r0, #12]
 800522a:	4630      	mov	r0, r6
 800522c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005230:	f000 bde2 	b.w	8005df8 <__malloc_unlock>
 8005234:	4770      	bx	lr
 8005236:	6840      	ldr	r0, [r0, #4]
 8005238:	f000 0001 	and.w	r0, r0, #1
 800523c:	2800      	cmp	r0, #0
 800523e:	d1d2      	bne.n	80051e6 <_free_r+0x5e>
 8005240:	6898      	ldr	r0, [r3, #8]
 8005242:	4c48      	ldr	r4, [pc, #288]	; (8005364 <_free_r+0x1dc>)
 8005244:	4411      	add	r1, r2
 8005246:	42a0      	cmp	r0, r4
 8005248:	f041 0201 	orr.w	r2, r1, #1
 800524c:	d062      	beq.n	8005314 <_free_r+0x18c>
 800524e:	68db      	ldr	r3, [r3, #12]
 8005250:	60c3      	str	r3, [r0, #12]
 8005252:	6098      	str	r0, [r3, #8]
 8005254:	606a      	str	r2, [r5, #4]
 8005256:	5069      	str	r1, [r5, r1]
 8005258:	e7c9      	b.n	80051ee <_free_r+0x66>
 800525a:	f01c 0f01 	tst.w	ip, #1
 800525e:	440a      	add	r2, r1
 8005260:	d107      	bne.n	8005272 <_free_r+0xea>
 8005262:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005266:	1aed      	subs	r5, r5, r3
 8005268:	441a      	add	r2, r3
 800526a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800526e:	60cb      	str	r3, [r1, #12]
 8005270:	6099      	str	r1, [r3, #8]
 8005272:	4b3d      	ldr	r3, [pc, #244]	; (8005368 <_free_r+0x1e0>)
 8005274:	681b      	ldr	r3, [r3, #0]
 8005276:	f042 0101 	orr.w	r1, r2, #1
 800527a:	4293      	cmp	r3, r2
 800527c:	6069      	str	r1, [r5, #4]
 800527e:	60bd      	str	r5, [r7, #8]
 8005280:	d804      	bhi.n	800528c <_free_r+0x104>
 8005282:	4b3a      	ldr	r3, [pc, #232]	; (800536c <_free_r+0x1e4>)
 8005284:	4630      	mov	r0, r6
 8005286:	6819      	ldr	r1, [r3, #0]
 8005288:	f7ff ff2e 	bl	80050e8 <_malloc_trim_r>
 800528c:	4630      	mov	r0, r6
 800528e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005292:	f000 bdb1 	b.w	8005df8 <__malloc_unlock>
 8005296:	08c9      	lsrs	r1, r1, #3
 8005298:	6878      	ldr	r0, [r7, #4]
 800529a:	1c4a      	adds	r2, r1, #1
 800529c:	2301      	movs	r3, #1
 800529e:	1089      	asrs	r1, r1, #2
 80052a0:	408b      	lsls	r3, r1
 80052a2:	4303      	orrs	r3, r0
 80052a4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80052a8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80052ac:	607b      	str	r3, [r7, #4]
 80052ae:	3908      	subs	r1, #8
 80052b0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80052b4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80052b8:	60c5      	str	r5, [r0, #12]
 80052ba:	4630      	mov	r0, r6
 80052bc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80052c0:	f000 bd9a 	b.w	8005df8 <__malloc_unlock>
 80052c4:	2800      	cmp	r0, #0
 80052c6:	d145      	bne.n	8005354 <_free_r+0x1cc>
 80052c8:	440a      	add	r2, r1
 80052ca:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 80052ce:	f042 0001 	orr.w	r0, r2, #1
 80052d2:	60cb      	str	r3, [r1, #12]
 80052d4:	6099      	str	r1, [r3, #8]
 80052d6:	6068      	str	r0, [r5, #4]
 80052d8:	50aa      	str	r2, [r5, r2]
 80052da:	e7d7      	b.n	800528c <_free_r+0x104>
 80052dc:	2b14      	cmp	r3, #20
 80052de:	d908      	bls.n	80052f2 <_free_r+0x16a>
 80052e0:	2b54      	cmp	r3, #84	; 0x54
 80052e2:	d81e      	bhi.n	8005322 <_free_r+0x19a>
 80052e4:	0b0b      	lsrs	r3, r1, #12
 80052e6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80052ea:	00e4      	lsls	r4, r4, #3
 80052ec:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80052f0:	e789      	b.n	8005206 <_free_r+0x7e>
 80052f2:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80052f6:	00e4      	lsls	r4, r4, #3
 80052f8:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80052fc:	e783      	b.n	8005206 <_free_r+0x7e>
 80052fe:	4618      	mov	r0, r3
 8005300:	e78e      	b.n	8005220 <_free_r+0x98>
 8005302:	1093      	asrs	r3, r2, #2
 8005304:	6879      	ldr	r1, [r7, #4]
 8005306:	2201      	movs	r2, #1
 8005308:	fa02 f303 	lsl.w	r3, r2, r3
 800530c:	430b      	orrs	r3, r1
 800530e:	607b      	str	r3, [r7, #4]
 8005310:	4603      	mov	r3, r0
 8005312:	e786      	b.n	8005222 <_free_r+0x9a>
 8005314:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005318:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800531c:	606a      	str	r2, [r5, #4]
 800531e:	5069      	str	r1, [r5, r1]
 8005320:	e7b4      	b.n	800528c <_free_r+0x104>
 8005322:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005326:	d806      	bhi.n	8005336 <_free_r+0x1ae>
 8005328:	0bcb      	lsrs	r3, r1, #15
 800532a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800532e:	00e4      	lsls	r4, r4, #3
 8005330:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005334:	e767      	b.n	8005206 <_free_r+0x7e>
 8005336:	f240 5254 	movw	r2, #1364	; 0x554
 800533a:	4293      	cmp	r3, r2
 800533c:	d806      	bhi.n	800534c <_free_r+0x1c4>
 800533e:	0c8b      	lsrs	r3, r1, #18
 8005340:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005344:	00e4      	lsls	r4, r4, #3
 8005346:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800534a:	e75c      	b.n	8005206 <_free_r+0x7e>
 800534c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005350:	227e      	movs	r2, #126	; 0x7e
 8005352:	e758      	b.n	8005206 <_free_r+0x7e>
 8005354:	f041 0201 	orr.w	r2, r1, #1
 8005358:	606a      	str	r2, [r5, #4]
 800535a:	6019      	str	r1, [r3, #0]
 800535c:	e796      	b.n	800528c <_free_r+0x104>
 800535e:	bf00      	nop
 8005360:	200005dc 	.word	0x200005dc
 8005364:	200005e4 	.word	0x200005e4
 8005368:	200009e8 	.word	0x200009e8
 800536c:	20000c30 	.word	0x20000c30

08005370 <__sfvwrite_r>:
 8005370:	6893      	ldr	r3, [r2, #8]
 8005372:	2b00      	cmp	r3, #0
 8005374:	f000 80e4 	beq.w	8005540 <__sfvwrite_r+0x1d0>
 8005378:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800537c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005380:	b29b      	uxth	r3, r3
 8005382:	460c      	mov	r4, r1
 8005384:	0719      	lsls	r1, r3, #28
 8005386:	b083      	sub	sp, #12
 8005388:	4682      	mov	sl, r0
 800538a:	4690      	mov	r8, r2
 800538c:	d535      	bpl.n	80053fa <__sfvwrite_r+0x8a>
 800538e:	6922      	ldr	r2, [r4, #16]
 8005390:	b39a      	cbz	r2, 80053fa <__sfvwrite_r+0x8a>
 8005392:	f013 0202 	ands.w	r2, r3, #2
 8005396:	f8d8 6000 	ldr.w	r6, [r8]
 800539a:	d03d      	beq.n	8005418 <__sfvwrite_r+0xa8>
 800539c:	2700      	movs	r7, #0
 800539e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80053a2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80053a6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005668 <__sfvwrite_r+0x2f8>
 80053aa:	463d      	mov	r5, r7
 80053ac:	454d      	cmp	r5, r9
 80053ae:	462b      	mov	r3, r5
 80053b0:	463a      	mov	r2, r7
 80053b2:	bf28      	it	cs
 80053b4:	464b      	movcs	r3, r9
 80053b6:	4661      	mov	r1, ip
 80053b8:	4650      	mov	r0, sl
 80053ba:	b1d5      	cbz	r5, 80053f2 <__sfvwrite_r+0x82>
 80053bc:	47d8      	blx	fp
 80053be:	2800      	cmp	r0, #0
 80053c0:	f340 80c6 	ble.w	8005550 <__sfvwrite_r+0x1e0>
 80053c4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80053c8:	1a1b      	subs	r3, r3, r0
 80053ca:	4407      	add	r7, r0
 80053cc:	1a2d      	subs	r5, r5, r0
 80053ce:	f8c8 3008 	str.w	r3, [r8, #8]
 80053d2:	2b00      	cmp	r3, #0
 80053d4:	f000 80b0 	beq.w	8005538 <__sfvwrite_r+0x1c8>
 80053d8:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80053dc:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80053e0:	454d      	cmp	r5, r9
 80053e2:	462b      	mov	r3, r5
 80053e4:	463a      	mov	r2, r7
 80053e6:	bf28      	it	cs
 80053e8:	464b      	movcs	r3, r9
 80053ea:	4661      	mov	r1, ip
 80053ec:	4650      	mov	r0, sl
 80053ee:	2d00      	cmp	r5, #0
 80053f0:	d1e4      	bne.n	80053bc <__sfvwrite_r+0x4c>
 80053f2:	e9d6 7500 	ldrd	r7, r5, [r6]
 80053f6:	3608      	adds	r6, #8
 80053f8:	e7d8      	b.n	80053ac <__sfvwrite_r+0x3c>
 80053fa:	4621      	mov	r1, r4
 80053fc:	4650      	mov	r0, sl
 80053fe:	f7fe fd03 	bl	8003e08 <__swsetup_r>
 8005402:	2800      	cmp	r0, #0
 8005404:	f040 812a 	bne.w	800565c <__sfvwrite_r+0x2ec>
 8005408:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800540c:	f8d8 6000 	ldr.w	r6, [r8]
 8005410:	b29b      	uxth	r3, r3
 8005412:	f013 0202 	ands.w	r2, r3, #2
 8005416:	d1c1      	bne.n	800539c <__sfvwrite_r+0x2c>
 8005418:	f013 0901 	ands.w	r9, r3, #1
 800541c:	d15d      	bne.n	80054da <__sfvwrite_r+0x16a>
 800541e:	68a7      	ldr	r7, [r4, #8]
 8005420:	6820      	ldr	r0, [r4, #0]
 8005422:	464d      	mov	r5, r9
 8005424:	2d00      	cmp	r5, #0
 8005426:	d054      	beq.n	80054d2 <__sfvwrite_r+0x162>
 8005428:	059a      	lsls	r2, r3, #22
 800542a:	f140 809b 	bpl.w	8005564 <__sfvwrite_r+0x1f4>
 800542e:	42af      	cmp	r7, r5
 8005430:	46bb      	mov	fp, r7
 8005432:	f200 80d8 	bhi.w	80055e6 <__sfvwrite_r+0x276>
 8005436:	f413 6f90 	tst.w	r3, #1152	; 0x480
 800543a:	d02f      	beq.n	800549c <__sfvwrite_r+0x12c>
 800543c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005440:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005444:	eba0 0b01 	sub.w	fp, r0, r1
 8005448:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 800544c:	1c68      	adds	r0, r5, #1
 800544e:	107f      	asrs	r7, r7, #1
 8005450:	4458      	add	r0, fp
 8005452:	42b8      	cmp	r0, r7
 8005454:	463a      	mov	r2, r7
 8005456:	bf84      	itt	hi
 8005458:	4607      	movhi	r7, r0
 800545a:	463a      	movhi	r2, r7
 800545c:	055b      	lsls	r3, r3, #21
 800545e:	f140 80d3 	bpl.w	8005608 <__sfvwrite_r+0x298>
 8005462:	4611      	mov	r1, r2
 8005464:	4650      	mov	r0, sl
 8005466:	f000 f9b9 	bl	80057dc <_malloc_r>
 800546a:	2800      	cmp	r0, #0
 800546c:	f000 80f0 	beq.w	8005650 <__sfvwrite_r+0x2e0>
 8005470:	465a      	mov	r2, fp
 8005472:	6921      	ldr	r1, [r4, #16]
 8005474:	9001      	str	r0, [sp, #4]
 8005476:	f7fb f843 	bl	8000500 <memcpy>
 800547a:	89a2      	ldrh	r2, [r4, #12]
 800547c:	9b01      	ldr	r3, [sp, #4]
 800547e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005482:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005486:	81a2      	strh	r2, [r4, #12]
 8005488:	eba7 020b 	sub.w	r2, r7, fp
 800548c:	eb03 000b 	add.w	r0, r3, fp
 8005490:	6167      	str	r7, [r4, #20]
 8005492:	6123      	str	r3, [r4, #16]
 8005494:	6020      	str	r0, [r4, #0]
 8005496:	60a2      	str	r2, [r4, #8]
 8005498:	462f      	mov	r7, r5
 800549a:	46ab      	mov	fp, r5
 800549c:	465a      	mov	r2, fp
 800549e:	4649      	mov	r1, r9
 80054a0:	f000 fc40 	bl	8005d24 <memmove>
 80054a4:	68a2      	ldr	r2, [r4, #8]
 80054a6:	6823      	ldr	r3, [r4, #0]
 80054a8:	1bd2      	subs	r2, r2, r7
 80054aa:	445b      	add	r3, fp
 80054ac:	462f      	mov	r7, r5
 80054ae:	60a2      	str	r2, [r4, #8]
 80054b0:	6023      	str	r3, [r4, #0]
 80054b2:	2500      	movs	r5, #0
 80054b4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80054b8:	1bdb      	subs	r3, r3, r7
 80054ba:	44b9      	add	r9, r7
 80054bc:	f8c8 3008 	str.w	r3, [r8, #8]
 80054c0:	2b00      	cmp	r3, #0
 80054c2:	d039      	beq.n	8005538 <__sfvwrite_r+0x1c8>
 80054c4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80054c8:	68a7      	ldr	r7, [r4, #8]
 80054ca:	6820      	ldr	r0, [r4, #0]
 80054cc:	b29b      	uxth	r3, r3
 80054ce:	2d00      	cmp	r5, #0
 80054d0:	d1aa      	bne.n	8005428 <__sfvwrite_r+0xb8>
 80054d2:	e9d6 9500 	ldrd	r9, r5, [r6]
 80054d6:	3608      	adds	r6, #8
 80054d8:	e7a4      	b.n	8005424 <__sfvwrite_r+0xb4>
 80054da:	4633      	mov	r3, r6
 80054dc:	4691      	mov	r9, r2
 80054de:	4610      	mov	r0, r2
 80054e0:	4617      	mov	r7, r2
 80054e2:	464e      	mov	r6, r9
 80054e4:	469b      	mov	fp, r3
 80054e6:	2f00      	cmp	r7, #0
 80054e8:	d06b      	beq.n	80055c2 <__sfvwrite_r+0x252>
 80054ea:	2800      	cmp	r0, #0
 80054ec:	d071      	beq.n	80055d2 <__sfvwrite_r+0x262>
 80054ee:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 80054f2:	6820      	ldr	r0, [r4, #0]
 80054f4:	45b9      	cmp	r9, r7
 80054f6:	464b      	mov	r3, r9
 80054f8:	bf28      	it	cs
 80054fa:	463b      	movcs	r3, r7
 80054fc:	4288      	cmp	r0, r1
 80054fe:	d903      	bls.n	8005508 <__sfvwrite_r+0x198>
 8005500:	68a5      	ldr	r5, [r4, #8]
 8005502:	4415      	add	r5, r2
 8005504:	42ab      	cmp	r3, r5
 8005506:	dc71      	bgt.n	80055ec <__sfvwrite_r+0x27c>
 8005508:	429a      	cmp	r2, r3
 800550a:	f300 8093 	bgt.w	8005634 <__sfvwrite_r+0x2c4>
 800550e:	4613      	mov	r3, r2
 8005510:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005512:	69e1      	ldr	r1, [r4, #28]
 8005514:	4632      	mov	r2, r6
 8005516:	4650      	mov	r0, sl
 8005518:	47a8      	blx	r5
 800551a:	1e05      	subs	r5, r0, #0
 800551c:	dd18      	ble.n	8005550 <__sfvwrite_r+0x1e0>
 800551e:	ebb9 0905 	subs.w	r9, r9, r5
 8005522:	d00f      	beq.n	8005544 <__sfvwrite_r+0x1d4>
 8005524:	2001      	movs	r0, #1
 8005526:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800552a:	1b5b      	subs	r3, r3, r5
 800552c:	442e      	add	r6, r5
 800552e:	1b7f      	subs	r7, r7, r5
 8005530:	f8c8 3008 	str.w	r3, [r8, #8]
 8005534:	2b00      	cmp	r3, #0
 8005536:	d1d6      	bne.n	80054e6 <__sfvwrite_r+0x176>
 8005538:	2000      	movs	r0, #0
 800553a:	b003      	add	sp, #12
 800553c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005540:	2000      	movs	r0, #0
 8005542:	4770      	bx	lr
 8005544:	4621      	mov	r1, r4
 8005546:	4650      	mov	r0, sl
 8005548:	f7ff fd20 	bl	8004f8c <_fflush_r>
 800554c:	2800      	cmp	r0, #0
 800554e:	d0ea      	beq.n	8005526 <__sfvwrite_r+0x1b6>
 8005550:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005554:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005558:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800555c:	81a3      	strh	r3, [r4, #12]
 800555e:	b003      	add	sp, #12
 8005560:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005564:	6923      	ldr	r3, [r4, #16]
 8005566:	4283      	cmp	r3, r0
 8005568:	d315      	bcc.n	8005596 <__sfvwrite_r+0x226>
 800556a:	6961      	ldr	r1, [r4, #20]
 800556c:	42a9      	cmp	r1, r5
 800556e:	d812      	bhi.n	8005596 <__sfvwrite_r+0x226>
 8005570:	4b3c      	ldr	r3, [pc, #240]	; (8005664 <__sfvwrite_r+0x2f4>)
 8005572:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005574:	429d      	cmp	r5, r3
 8005576:	bf94      	ite	ls
 8005578:	462b      	movls	r3, r5
 800557a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 800557e:	464a      	mov	r2, r9
 8005580:	fb93 f3f1 	sdiv	r3, r3, r1
 8005584:	4650      	mov	r0, sl
 8005586:	fb01 f303 	mul.w	r3, r1, r3
 800558a:	69e1      	ldr	r1, [r4, #28]
 800558c:	47b8      	blx	r7
 800558e:	1e07      	subs	r7, r0, #0
 8005590:	ddde      	ble.n	8005550 <__sfvwrite_r+0x1e0>
 8005592:	1bed      	subs	r5, r5, r7
 8005594:	e78e      	b.n	80054b4 <__sfvwrite_r+0x144>
 8005596:	42af      	cmp	r7, r5
 8005598:	bf28      	it	cs
 800559a:	462f      	movcs	r7, r5
 800559c:	463a      	mov	r2, r7
 800559e:	4649      	mov	r1, r9
 80055a0:	f000 fbc0 	bl	8005d24 <memmove>
 80055a4:	68a3      	ldr	r3, [r4, #8]
 80055a6:	6822      	ldr	r2, [r4, #0]
 80055a8:	1bdb      	subs	r3, r3, r7
 80055aa:	443a      	add	r2, r7
 80055ac:	60a3      	str	r3, [r4, #8]
 80055ae:	6022      	str	r2, [r4, #0]
 80055b0:	2b00      	cmp	r3, #0
 80055b2:	d1ee      	bne.n	8005592 <__sfvwrite_r+0x222>
 80055b4:	4621      	mov	r1, r4
 80055b6:	4650      	mov	r0, sl
 80055b8:	f7ff fce8 	bl	8004f8c <_fflush_r>
 80055bc:	2800      	cmp	r0, #0
 80055be:	d0e8      	beq.n	8005592 <__sfvwrite_r+0x222>
 80055c0:	e7c6      	b.n	8005550 <__sfvwrite_r+0x1e0>
 80055c2:	f10b 0308 	add.w	r3, fp, #8
 80055c6:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 80055ca:	469b      	mov	fp, r3
 80055cc:	3308      	adds	r3, #8
 80055ce:	2f00      	cmp	r7, #0
 80055d0:	d0f9      	beq.n	80055c6 <__sfvwrite_r+0x256>
 80055d2:	463a      	mov	r2, r7
 80055d4:	210a      	movs	r1, #10
 80055d6:	4630      	mov	r0, r6
 80055d8:	f7fb f8a2 	bl	8000720 <memchr>
 80055dc:	b338      	cbz	r0, 800562e <__sfvwrite_r+0x2be>
 80055de:	3001      	adds	r0, #1
 80055e0:	eba0 0906 	sub.w	r9, r0, r6
 80055e4:	e783      	b.n	80054ee <__sfvwrite_r+0x17e>
 80055e6:	462f      	mov	r7, r5
 80055e8:	46ab      	mov	fp, r5
 80055ea:	e757      	b.n	800549c <__sfvwrite_r+0x12c>
 80055ec:	4631      	mov	r1, r6
 80055ee:	462a      	mov	r2, r5
 80055f0:	f000 fb98 	bl	8005d24 <memmove>
 80055f4:	6823      	ldr	r3, [r4, #0]
 80055f6:	442b      	add	r3, r5
 80055f8:	6023      	str	r3, [r4, #0]
 80055fa:	4621      	mov	r1, r4
 80055fc:	4650      	mov	r0, sl
 80055fe:	f7ff fcc5 	bl	8004f8c <_fflush_r>
 8005602:	2800      	cmp	r0, #0
 8005604:	d08b      	beq.n	800551e <__sfvwrite_r+0x1ae>
 8005606:	e7a3      	b.n	8005550 <__sfvwrite_r+0x1e0>
 8005608:	4650      	mov	r0, sl
 800560a:	f000 ff05 	bl	8006418 <_realloc_r>
 800560e:	4603      	mov	r3, r0
 8005610:	2800      	cmp	r0, #0
 8005612:	f47f af39 	bne.w	8005488 <__sfvwrite_r+0x118>
 8005616:	6921      	ldr	r1, [r4, #16]
 8005618:	4650      	mov	r0, sl
 800561a:	f7ff fdb5 	bl	8005188 <_free_r>
 800561e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005622:	220c      	movs	r2, #12
 8005624:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005628:	f8ca 2000 	str.w	r2, [sl]
 800562c:	e792      	b.n	8005554 <__sfvwrite_r+0x1e4>
 800562e:	f107 0901 	add.w	r9, r7, #1
 8005632:	e75c      	b.n	80054ee <__sfvwrite_r+0x17e>
 8005634:	461a      	mov	r2, r3
 8005636:	4631      	mov	r1, r6
 8005638:	9301      	str	r3, [sp, #4]
 800563a:	f000 fb73 	bl	8005d24 <memmove>
 800563e:	9b01      	ldr	r3, [sp, #4]
 8005640:	68a1      	ldr	r1, [r4, #8]
 8005642:	6822      	ldr	r2, [r4, #0]
 8005644:	1ac9      	subs	r1, r1, r3
 8005646:	441a      	add	r2, r3
 8005648:	60a1      	str	r1, [r4, #8]
 800564a:	6022      	str	r2, [r4, #0]
 800564c:	461d      	mov	r5, r3
 800564e:	e766      	b.n	800551e <__sfvwrite_r+0x1ae>
 8005650:	230c      	movs	r3, #12
 8005652:	f8ca 3000 	str.w	r3, [sl]
 8005656:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800565a:	e77b      	b.n	8005554 <__sfvwrite_r+0x1e4>
 800565c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005660:	e76b      	b.n	800553a <__sfvwrite_r+0x1ca>
 8005662:	bf00      	nop
 8005664:	7ffffffe 	.word	0x7ffffffe
 8005668:	7ffffc00 	.word	0x7ffffc00

0800566c <_fwalk_reent>:
 800566c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005670:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005674:	d01f      	beq.n	80056b6 <_fwalk_reent+0x4a>
 8005676:	4688      	mov	r8, r1
 8005678:	4606      	mov	r6, r0
 800567a:	f04f 0900 	mov.w	r9, #0
 800567e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005682:	3d01      	subs	r5, #1
 8005684:	d411      	bmi.n	80056aa <_fwalk_reent+0x3e>
 8005686:	89a3      	ldrh	r3, [r4, #12]
 8005688:	2b01      	cmp	r3, #1
 800568a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 800568e:	4621      	mov	r1, r4
 8005690:	4630      	mov	r0, r6
 8005692:	d906      	bls.n	80056a2 <_fwalk_reent+0x36>
 8005694:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005698:	3301      	adds	r3, #1
 800569a:	d002      	beq.n	80056a2 <_fwalk_reent+0x36>
 800569c:	47c0      	blx	r8
 800569e:	ea49 0900 	orr.w	r9, r9, r0
 80056a2:	1c6b      	adds	r3, r5, #1
 80056a4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 80056a8:	d1ed      	bne.n	8005686 <_fwalk_reent+0x1a>
 80056aa:	683f      	ldr	r7, [r7, #0]
 80056ac:	2f00      	cmp	r7, #0
 80056ae:	d1e6      	bne.n	800567e <_fwalk_reent+0x12>
 80056b0:	4648      	mov	r0, r9
 80056b2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80056b6:	46b9      	mov	r9, r7
 80056b8:	4648      	mov	r0, r9
 80056ba:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80056be:	bf00      	nop

080056c0 <_localeconv_r>:
 80056c0:	4a04      	ldr	r2, [pc, #16]	; (80056d4 <_localeconv_r+0x14>)
 80056c2:	4b05      	ldr	r3, [pc, #20]	; (80056d8 <_localeconv_r+0x18>)
 80056c4:	6812      	ldr	r2, [r2, #0]
 80056c6:	6b50      	ldr	r0, [r2, #52]	; 0x34
 80056c8:	2800      	cmp	r0, #0
 80056ca:	bf08      	it	eq
 80056cc:	4618      	moveq	r0, r3
 80056ce:	30f0      	adds	r0, #240	; 0xf0
 80056d0:	4770      	bx	lr
 80056d2:	bf00      	nop
 80056d4:	200001a8 	.word	0x200001a8
 80056d8:	200009ec 	.word	0x200009ec

080056dc <__retarget_lock_init_recursive>:
 80056dc:	4770      	bx	lr
 80056de:	bf00      	nop

080056e0 <__retarget_lock_close_recursive>:
 80056e0:	4770      	bx	lr
 80056e2:	bf00      	nop

080056e4 <__retarget_lock_acquire_recursive>:
 80056e4:	4770      	bx	lr
 80056e6:	bf00      	nop

080056e8 <__retarget_lock_release_recursive>:
 80056e8:	4770      	bx	lr
 80056ea:	bf00      	nop

080056ec <__swhatbuf_r>:
 80056ec:	b570      	push	{r4, r5, r6, lr}
 80056ee:	460c      	mov	r4, r1
 80056f0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80056f4:	2900      	cmp	r1, #0
 80056f6:	b096      	sub	sp, #88	; 0x58
 80056f8:	4615      	mov	r5, r2
 80056fa:	461e      	mov	r6, r3
 80056fc:	da0f      	bge.n	800571e <__swhatbuf_r+0x32>
 80056fe:	89a2      	ldrh	r2, [r4, #12]
 8005700:	2300      	movs	r3, #0
 8005702:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005706:	6033      	str	r3, [r6, #0]
 8005708:	d104      	bne.n	8005714 <__swhatbuf_r+0x28>
 800570a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800570e:	602b      	str	r3, [r5, #0]
 8005710:	b016      	add	sp, #88	; 0x58
 8005712:	bd70      	pop	{r4, r5, r6, pc}
 8005714:	2240      	movs	r2, #64	; 0x40
 8005716:	4618      	mov	r0, r3
 8005718:	602a      	str	r2, [r5, #0]
 800571a:	b016      	add	sp, #88	; 0x58
 800571c:	bd70      	pop	{r4, r5, r6, pc}
 800571e:	466a      	mov	r2, sp
 8005720:	f001 fad0 	bl	8006cc4 <_fstat_r>
 8005724:	2800      	cmp	r0, #0
 8005726:	dbea      	blt.n	80056fe <__swhatbuf_r+0x12>
 8005728:	9b01      	ldr	r3, [sp, #4]
 800572a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 800572e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005732:	fab3 f383 	clz	r3, r3
 8005736:	095b      	lsrs	r3, r3, #5
 8005738:	f44f 6280 	mov.w	r2, #1024	; 0x400
 800573c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005740:	6033      	str	r3, [r6, #0]
 8005742:	602a      	str	r2, [r5, #0]
 8005744:	b016      	add	sp, #88	; 0x58
 8005746:	bd70      	pop	{r4, r5, r6, pc}

08005748 <__smakebuf_r>:
 8005748:	898a      	ldrh	r2, [r1, #12]
 800574a:	0792      	lsls	r2, r2, #30
 800574c:	460b      	mov	r3, r1
 800574e:	d506      	bpl.n	800575e <__smakebuf_r+0x16>
 8005750:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005754:	2101      	movs	r1, #1
 8005756:	601a      	str	r2, [r3, #0]
 8005758:	e9c3 2104 	strd	r2, r1, [r3, #16]
 800575c:	4770      	bx	lr
 800575e:	b570      	push	{r4, r5, r6, lr}
 8005760:	b082      	sub	sp, #8
 8005762:	ab01      	add	r3, sp, #4
 8005764:	466a      	mov	r2, sp
 8005766:	460c      	mov	r4, r1
 8005768:	4605      	mov	r5, r0
 800576a:	f7ff ffbf 	bl	80056ec <__swhatbuf_r>
 800576e:	9900      	ldr	r1, [sp, #0]
 8005770:	4606      	mov	r6, r0
 8005772:	4628      	mov	r0, r5
 8005774:	f000 f832 	bl	80057dc <_malloc_r>
 8005778:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800577c:	b1d8      	cbz	r0, 80057b6 <__smakebuf_r+0x6e>
 800577e:	4916      	ldr	r1, [pc, #88]	; (80057d8 <__smakebuf_r+0x90>)
 8005780:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005782:	9a01      	ldr	r2, [sp, #4]
 8005784:	9900      	ldr	r1, [sp, #0]
 8005786:	6020      	str	r0, [r4, #0]
 8005788:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800578c:	81a3      	strh	r3, [r4, #12]
 800578e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005792:	b91a      	cbnz	r2, 800579c <__smakebuf_r+0x54>
 8005794:	4333      	orrs	r3, r6
 8005796:	81a3      	strh	r3, [r4, #12]
 8005798:	b002      	add	sp, #8
 800579a:	bd70      	pop	{r4, r5, r6, pc}
 800579c:	4628      	mov	r0, r5
 800579e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80057a2:	f001 faa3 	bl	8006cec <_isatty_r>
 80057a6:	b1a0      	cbz	r0, 80057d2 <__smakebuf_r+0x8a>
 80057a8:	89a3      	ldrh	r3, [r4, #12]
 80057aa:	f023 0303 	bic.w	r3, r3, #3
 80057ae:	f043 0301 	orr.w	r3, r3, #1
 80057b2:	b21b      	sxth	r3, r3
 80057b4:	e7ee      	b.n	8005794 <__smakebuf_r+0x4c>
 80057b6:	059a      	lsls	r2, r3, #22
 80057b8:	d4ee      	bmi.n	8005798 <__smakebuf_r+0x50>
 80057ba:	f023 0303 	bic.w	r3, r3, #3
 80057be:	f104 0243 	add.w	r2, r4, #67	; 0x43
 80057c2:	f043 0302 	orr.w	r3, r3, #2
 80057c6:	2101      	movs	r1, #1
 80057c8:	81a3      	strh	r3, [r4, #12]
 80057ca:	6022      	str	r2, [r4, #0]
 80057cc:	e9c4 2104 	strd	r2, r1, [r4, #16]
 80057d0:	e7e2      	b.n	8005798 <__smakebuf_r+0x50>
 80057d2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80057d6:	e7dd      	b.n	8005794 <__smakebuf_r+0x4c>
 80057d8:	08005039 	.word	0x08005039

080057dc <_malloc_r>:
 80057dc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80057e0:	f101 050b 	add.w	r5, r1, #11
 80057e4:	2d16      	cmp	r5, #22
 80057e6:	b083      	sub	sp, #12
 80057e8:	4606      	mov	r6, r0
 80057ea:	d823      	bhi.n	8005834 <_malloc_r+0x58>
 80057ec:	2910      	cmp	r1, #16
 80057ee:	f200 80b9 	bhi.w	8005964 <_malloc_r+0x188>
 80057f2:	f000 fafb 	bl	8005dec <__malloc_lock>
 80057f6:	2510      	movs	r5, #16
 80057f8:	2318      	movs	r3, #24
 80057fa:	2002      	movs	r0, #2
 80057fc:	4fc5      	ldr	r7, [pc, #788]	; (8005b14 <_malloc_r+0x338>)
 80057fe:	443b      	add	r3, r7
 8005800:	f1a3 0208 	sub.w	r2, r3, #8
 8005804:	685c      	ldr	r4, [r3, #4]
 8005806:	4294      	cmp	r4, r2
 8005808:	f000 8166 	beq.w	8005ad8 <_malloc_r+0x2fc>
 800580c:	6863      	ldr	r3, [r4, #4]
 800580e:	f023 0303 	bic.w	r3, r3, #3
 8005812:	4423      	add	r3, r4
 8005814:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005818:	685a      	ldr	r2, [r3, #4]
 800581a:	60e9      	str	r1, [r5, #12]
 800581c:	f042 0201 	orr.w	r2, r2, #1
 8005820:	608d      	str	r5, [r1, #8]
 8005822:	4630      	mov	r0, r6
 8005824:	605a      	str	r2, [r3, #4]
 8005826:	f000 fae7 	bl	8005df8 <__malloc_unlock>
 800582a:	3408      	adds	r4, #8
 800582c:	4620      	mov	r0, r4
 800582e:	b003      	add	sp, #12
 8005830:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005834:	f035 0507 	bics.w	r5, r5, #7
 8005838:	f100 8094 	bmi.w	8005964 <_malloc_r+0x188>
 800583c:	42a9      	cmp	r1, r5
 800583e:	f200 8091 	bhi.w	8005964 <_malloc_r+0x188>
 8005842:	f000 fad3 	bl	8005dec <__malloc_lock>
 8005846:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 800584a:	f0c0 8183 	bcc.w	8005b54 <_malloc_r+0x378>
 800584e:	0a6b      	lsrs	r3, r5, #9
 8005850:	f000 808f 	beq.w	8005972 <_malloc_r+0x196>
 8005854:	2b04      	cmp	r3, #4
 8005856:	f200 8146 	bhi.w	8005ae6 <_malloc_r+0x30a>
 800585a:	09ab      	lsrs	r3, r5, #6
 800585c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005860:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005864:	00c3      	lsls	r3, r0, #3
 8005866:	4fab      	ldr	r7, [pc, #684]	; (8005b14 <_malloc_r+0x338>)
 8005868:	443b      	add	r3, r7
 800586a:	f1a3 0108 	sub.w	r1, r3, #8
 800586e:	685c      	ldr	r4, [r3, #4]
 8005870:	42a1      	cmp	r1, r4
 8005872:	d106      	bne.n	8005882 <_malloc_r+0xa6>
 8005874:	e00c      	b.n	8005890 <_malloc_r+0xb4>
 8005876:	2a00      	cmp	r2, #0
 8005878:	f280 811d 	bge.w	8005ab6 <_malloc_r+0x2da>
 800587c:	68e4      	ldr	r4, [r4, #12]
 800587e:	42a1      	cmp	r1, r4
 8005880:	d006      	beq.n	8005890 <_malloc_r+0xb4>
 8005882:	6863      	ldr	r3, [r4, #4]
 8005884:	f023 0303 	bic.w	r3, r3, #3
 8005888:	1b5a      	subs	r2, r3, r5
 800588a:	2a0f      	cmp	r2, #15
 800588c:	ddf3      	ble.n	8005876 <_malloc_r+0x9a>
 800588e:	4660      	mov	r0, ip
 8005890:	693c      	ldr	r4, [r7, #16]
 8005892:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005b28 <_malloc_r+0x34c>
 8005896:	4564      	cmp	r4, ip
 8005898:	d071      	beq.n	800597e <_malloc_r+0x1a2>
 800589a:	6863      	ldr	r3, [r4, #4]
 800589c:	f023 0303 	bic.w	r3, r3, #3
 80058a0:	1b5a      	subs	r2, r3, r5
 80058a2:	2a0f      	cmp	r2, #15
 80058a4:	f300 8144 	bgt.w	8005b30 <_malloc_r+0x354>
 80058a8:	2a00      	cmp	r2, #0
 80058aa:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 80058ae:	f280 8126 	bge.w	8005afe <_malloc_r+0x322>
 80058b2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80058b6:	f080 8169 	bcs.w	8005b8c <_malloc_r+0x3b0>
 80058ba:	08db      	lsrs	r3, r3, #3
 80058bc:	1c59      	adds	r1, r3, #1
 80058be:	687a      	ldr	r2, [r7, #4]
 80058c0:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 80058c4:	f8c4 8008 	str.w	r8, [r4, #8]
 80058c8:	f04f 0e01 	mov.w	lr, #1
 80058cc:	109b      	asrs	r3, r3, #2
 80058ce:	fa0e f303 	lsl.w	r3, lr, r3
 80058d2:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 80058d6:	4313      	orrs	r3, r2
 80058d8:	f1ae 0208 	sub.w	r2, lr, #8
 80058dc:	60e2      	str	r2, [r4, #12]
 80058de:	607b      	str	r3, [r7, #4]
 80058e0:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 80058e4:	f8c8 400c 	str.w	r4, [r8, #12]
 80058e8:	1082      	asrs	r2, r0, #2
 80058ea:	2401      	movs	r4, #1
 80058ec:	4094      	lsls	r4, r2
 80058ee:	429c      	cmp	r4, r3
 80058f0:	d84b      	bhi.n	800598a <_malloc_r+0x1ae>
 80058f2:	421c      	tst	r4, r3
 80058f4:	d106      	bne.n	8005904 <_malloc_r+0x128>
 80058f6:	f020 0003 	bic.w	r0, r0, #3
 80058fa:	0064      	lsls	r4, r4, #1
 80058fc:	421c      	tst	r4, r3
 80058fe:	f100 0004 	add.w	r0, r0, #4
 8005902:	d0fa      	beq.n	80058fa <_malloc_r+0x11e>
 8005904:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005908:	46ce      	mov	lr, r9
 800590a:	4680      	mov	r8, r0
 800590c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005910:	459e      	cmp	lr, r3
 8005912:	d107      	bne.n	8005924 <_malloc_r+0x148>
 8005914:	e122      	b.n	8005b5c <_malloc_r+0x380>
 8005916:	2a00      	cmp	r2, #0
 8005918:	f280 8129 	bge.w	8005b6e <_malloc_r+0x392>
 800591c:	68db      	ldr	r3, [r3, #12]
 800591e:	459e      	cmp	lr, r3
 8005920:	f000 811c 	beq.w	8005b5c <_malloc_r+0x380>
 8005924:	6859      	ldr	r1, [r3, #4]
 8005926:	f021 0103 	bic.w	r1, r1, #3
 800592a:	1b4a      	subs	r2, r1, r5
 800592c:	2a0f      	cmp	r2, #15
 800592e:	ddf2      	ble.n	8005916 <_malloc_r+0x13a>
 8005930:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005934:	195c      	adds	r4, r3, r5
 8005936:	f045 0501 	orr.w	r5, r5, #1
 800593a:	605d      	str	r5, [r3, #4]
 800593c:	f042 0501 	orr.w	r5, r2, #1
 8005940:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005944:	4630      	mov	r0, r6
 8005946:	f8ce 8008 	str.w	r8, [lr, #8]
 800594a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 800594e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005952:	6065      	str	r5, [r4, #4]
 8005954:	505a      	str	r2, [r3, r1]
 8005956:	9301      	str	r3, [sp, #4]
 8005958:	f000 fa4e 	bl	8005df8 <__malloc_unlock>
 800595c:	9b01      	ldr	r3, [sp, #4]
 800595e:	f103 0408 	add.w	r4, r3, #8
 8005962:	e763      	b.n	800582c <_malloc_r+0x50>
 8005964:	2400      	movs	r4, #0
 8005966:	230c      	movs	r3, #12
 8005968:	4620      	mov	r0, r4
 800596a:	6033      	str	r3, [r6, #0]
 800596c:	b003      	add	sp, #12
 800596e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005972:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005976:	2040      	movs	r0, #64	; 0x40
 8005978:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 800597c:	e773      	b.n	8005866 <_malloc_r+0x8a>
 800597e:	687b      	ldr	r3, [r7, #4]
 8005980:	1082      	asrs	r2, r0, #2
 8005982:	2401      	movs	r4, #1
 8005984:	4094      	lsls	r4, r2
 8005986:	429c      	cmp	r4, r3
 8005988:	d9b3      	bls.n	80058f2 <_malloc_r+0x116>
 800598a:	68bc      	ldr	r4, [r7, #8]
 800598c:	6863      	ldr	r3, [r4, #4]
 800598e:	f023 0903 	bic.w	r9, r3, #3
 8005992:	45a9      	cmp	r9, r5
 8005994:	d303      	bcc.n	800599e <_malloc_r+0x1c2>
 8005996:	eba9 0305 	sub.w	r3, r9, r5
 800599a:	2b0f      	cmp	r3, #15
 800599c:	dc7b      	bgt.n	8005a96 <_malloc_r+0x2ba>
 800599e:	4b5e      	ldr	r3, [pc, #376]	; (8005b18 <_malloc_r+0x33c>)
 80059a0:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005b2c <_malloc_r+0x350>
 80059a4:	681a      	ldr	r2, [r3, #0]
 80059a6:	f8da 3000 	ldr.w	r3, [sl]
 80059aa:	3301      	adds	r3, #1
 80059ac:	eb05 0802 	add.w	r8, r5, r2
 80059b0:	f000 8148 	beq.w	8005c44 <_malloc_r+0x468>
 80059b4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 80059b8:	f108 080f 	add.w	r8, r8, #15
 80059bc:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 80059c0:	f028 080f 	bic.w	r8, r8, #15
 80059c4:	4641      	mov	r1, r8
 80059c6:	4630      	mov	r0, r6
 80059c8:	f000 ff08 	bl	80067dc <_sbrk_r>
 80059cc:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 80059d0:	4683      	mov	fp, r0
 80059d2:	f000 8104 	beq.w	8005bde <_malloc_r+0x402>
 80059d6:	eb04 0009 	add.w	r0, r4, r9
 80059da:	4558      	cmp	r0, fp
 80059dc:	f200 80fd 	bhi.w	8005bda <_malloc_r+0x3fe>
 80059e0:	4a4e      	ldr	r2, [pc, #312]	; (8005b1c <_malloc_r+0x340>)
 80059e2:	6813      	ldr	r3, [r2, #0]
 80059e4:	4443      	add	r3, r8
 80059e6:	6013      	str	r3, [r2, #0]
 80059e8:	f000 814d 	beq.w	8005c86 <_malloc_r+0x4aa>
 80059ec:	f8da 1000 	ldr.w	r1, [sl]
 80059f0:	3101      	adds	r1, #1
 80059f2:	bf1b      	ittet	ne
 80059f4:	ebab 0000 	subne.w	r0, fp, r0
 80059f8:	181b      	addne	r3, r3, r0
 80059fa:	f8ca b000 	streq.w	fp, [sl]
 80059fe:	6013      	strne	r3, [r2, #0]
 8005a00:	f01b 0307 	ands.w	r3, fp, #7
 8005a04:	f000 8134 	beq.w	8005c70 <_malloc_r+0x494>
 8005a08:	f1c3 0108 	rsb	r1, r3, #8
 8005a0c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005a10:	448b      	add	fp, r1
 8005a12:	3308      	adds	r3, #8
 8005a14:	44d8      	add	r8, fp
 8005a16:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005a1a:	eba3 0808 	sub.w	r8, r3, r8
 8005a1e:	4641      	mov	r1, r8
 8005a20:	4630      	mov	r0, r6
 8005a22:	9201      	str	r2, [sp, #4]
 8005a24:	f000 feda 	bl	80067dc <_sbrk_r>
 8005a28:	1c43      	adds	r3, r0, #1
 8005a2a:	9a01      	ldr	r2, [sp, #4]
 8005a2c:	f000 8146 	beq.w	8005cbc <_malloc_r+0x4e0>
 8005a30:	eba0 010b 	sub.w	r1, r0, fp
 8005a34:	4441      	add	r1, r8
 8005a36:	f041 0101 	orr.w	r1, r1, #1
 8005a3a:	6813      	ldr	r3, [r2, #0]
 8005a3c:	f8c7 b008 	str.w	fp, [r7, #8]
 8005a40:	4443      	add	r3, r8
 8005a42:	42bc      	cmp	r4, r7
 8005a44:	f8cb 1004 	str.w	r1, [fp, #4]
 8005a48:	6013      	str	r3, [r2, #0]
 8005a4a:	d015      	beq.n	8005a78 <_malloc_r+0x29c>
 8005a4c:	f1b9 0f0f 	cmp.w	r9, #15
 8005a50:	f240 8130 	bls.w	8005cb4 <_malloc_r+0x4d8>
 8005a54:	6860      	ldr	r0, [r4, #4]
 8005a56:	f1a9 010c 	sub.w	r1, r9, #12
 8005a5a:	f021 0107 	bic.w	r1, r1, #7
 8005a5e:	f000 0001 	and.w	r0, r0, #1
 8005a62:	eb04 0c01 	add.w	ip, r4, r1
 8005a66:	4308      	orrs	r0, r1
 8005a68:	f04f 0e05 	mov.w	lr, #5
 8005a6c:	290f      	cmp	r1, #15
 8005a6e:	6060      	str	r0, [r4, #4]
 8005a70:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005a74:	f200 813a 	bhi.w	8005cec <_malloc_r+0x510>
 8005a78:	4a29      	ldr	r2, [pc, #164]	; (8005b20 <_malloc_r+0x344>)
 8005a7a:	482a      	ldr	r0, [pc, #168]	; (8005b24 <_malloc_r+0x348>)
 8005a7c:	6811      	ldr	r1, [r2, #0]
 8005a7e:	68bc      	ldr	r4, [r7, #8]
 8005a80:	428b      	cmp	r3, r1
 8005a82:	6801      	ldr	r1, [r0, #0]
 8005a84:	bf88      	it	hi
 8005a86:	6013      	strhi	r3, [r2, #0]
 8005a88:	6862      	ldr	r2, [r4, #4]
 8005a8a:	428b      	cmp	r3, r1
 8005a8c:	f022 0203 	bic.w	r2, r2, #3
 8005a90:	bf88      	it	hi
 8005a92:	6003      	strhi	r3, [r0, #0]
 8005a94:	e0a7      	b.n	8005be6 <_malloc_r+0x40a>
 8005a96:	1962      	adds	r2, r4, r5
 8005a98:	f043 0301 	orr.w	r3, r3, #1
 8005a9c:	f045 0501 	orr.w	r5, r5, #1
 8005aa0:	6065      	str	r5, [r4, #4]
 8005aa2:	4630      	mov	r0, r6
 8005aa4:	60ba      	str	r2, [r7, #8]
 8005aa6:	6053      	str	r3, [r2, #4]
 8005aa8:	f000 f9a6 	bl	8005df8 <__malloc_unlock>
 8005aac:	3408      	adds	r4, #8
 8005aae:	4620      	mov	r0, r4
 8005ab0:	b003      	add	sp, #12
 8005ab2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ab6:	4423      	add	r3, r4
 8005ab8:	68e1      	ldr	r1, [r4, #12]
 8005aba:	685a      	ldr	r2, [r3, #4]
 8005abc:	68a5      	ldr	r5, [r4, #8]
 8005abe:	f042 0201 	orr.w	r2, r2, #1
 8005ac2:	60e9      	str	r1, [r5, #12]
 8005ac4:	4630      	mov	r0, r6
 8005ac6:	608d      	str	r5, [r1, #8]
 8005ac8:	605a      	str	r2, [r3, #4]
 8005aca:	f000 f995 	bl	8005df8 <__malloc_unlock>
 8005ace:	3408      	adds	r4, #8
 8005ad0:	4620      	mov	r0, r4
 8005ad2:	b003      	add	sp, #12
 8005ad4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ad8:	68dc      	ldr	r4, [r3, #12]
 8005ada:	42a3      	cmp	r3, r4
 8005adc:	bf08      	it	eq
 8005ade:	3002      	addeq	r0, #2
 8005ae0:	f43f aed6 	beq.w	8005890 <_malloc_r+0xb4>
 8005ae4:	e692      	b.n	800580c <_malloc_r+0x30>
 8005ae6:	2b14      	cmp	r3, #20
 8005ae8:	d971      	bls.n	8005bce <_malloc_r+0x3f2>
 8005aea:	2b54      	cmp	r3, #84	; 0x54
 8005aec:	f200 80ad 	bhi.w	8005c4a <_malloc_r+0x46e>
 8005af0:	0b2b      	lsrs	r3, r5, #12
 8005af2:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005af6:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005afa:	00c3      	lsls	r3, r0, #3
 8005afc:	e6b3      	b.n	8005866 <_malloc_r+0x8a>
 8005afe:	4423      	add	r3, r4
 8005b00:	4630      	mov	r0, r6
 8005b02:	685a      	ldr	r2, [r3, #4]
 8005b04:	f042 0201 	orr.w	r2, r2, #1
 8005b08:	605a      	str	r2, [r3, #4]
 8005b0a:	3408      	adds	r4, #8
 8005b0c:	f000 f974 	bl	8005df8 <__malloc_unlock>
 8005b10:	e68c      	b.n	800582c <_malloc_r+0x50>
 8005b12:	bf00      	nop
 8005b14:	200005dc 	.word	0x200005dc
 8005b18:	20000c30 	.word	0x20000c30
 8005b1c:	20000c00 	.word	0x20000c00
 8005b20:	20000c28 	.word	0x20000c28
 8005b24:	20000c2c 	.word	0x20000c2c
 8005b28:	200005e4 	.word	0x200005e4
 8005b2c:	200009e4 	.word	0x200009e4
 8005b30:	1961      	adds	r1, r4, r5
 8005b32:	f045 0e01 	orr.w	lr, r5, #1
 8005b36:	f042 0501 	orr.w	r5, r2, #1
 8005b3a:	f8c4 e004 	str.w	lr, [r4, #4]
 8005b3e:	4630      	mov	r0, r6
 8005b40:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005b44:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005b48:	604d      	str	r5, [r1, #4]
 8005b4a:	50e2      	str	r2, [r4, r3]
 8005b4c:	f000 f954 	bl	8005df8 <__malloc_unlock>
 8005b50:	3408      	adds	r4, #8
 8005b52:	e66b      	b.n	800582c <_malloc_r+0x50>
 8005b54:	08e8      	lsrs	r0, r5, #3
 8005b56:	f105 0308 	add.w	r3, r5, #8
 8005b5a:	e64f      	b.n	80057fc <_malloc_r+0x20>
 8005b5c:	f108 0801 	add.w	r8, r8, #1
 8005b60:	f018 0f03 	tst.w	r8, #3
 8005b64:	f10e 0e08 	add.w	lr, lr, #8
 8005b68:	f47f aed0 	bne.w	800590c <_malloc_r+0x130>
 8005b6c:	e052      	b.n	8005c14 <_malloc_r+0x438>
 8005b6e:	4419      	add	r1, r3
 8005b70:	461c      	mov	r4, r3
 8005b72:	684a      	ldr	r2, [r1, #4]
 8005b74:	68db      	ldr	r3, [r3, #12]
 8005b76:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005b7a:	f042 0201 	orr.w	r2, r2, #1
 8005b7e:	604a      	str	r2, [r1, #4]
 8005b80:	4630      	mov	r0, r6
 8005b82:	60eb      	str	r3, [r5, #12]
 8005b84:	609d      	str	r5, [r3, #8]
 8005b86:	f000 f937 	bl	8005df8 <__malloc_unlock>
 8005b8a:	e64f      	b.n	800582c <_malloc_r+0x50>
 8005b8c:	0a5a      	lsrs	r2, r3, #9
 8005b8e:	2a04      	cmp	r2, #4
 8005b90:	d935      	bls.n	8005bfe <_malloc_r+0x422>
 8005b92:	2a14      	cmp	r2, #20
 8005b94:	d86f      	bhi.n	8005c76 <_malloc_r+0x49a>
 8005b96:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005b9a:	00c9      	lsls	r1, r1, #3
 8005b9c:	325b      	adds	r2, #91	; 0x5b
 8005b9e:	eb07 0e01 	add.w	lr, r7, r1
 8005ba2:	5879      	ldr	r1, [r7, r1]
 8005ba4:	f1ae 0e08 	sub.w	lr, lr, #8
 8005ba8:	458e      	cmp	lr, r1
 8005baa:	d058      	beq.n	8005c5e <_malloc_r+0x482>
 8005bac:	684a      	ldr	r2, [r1, #4]
 8005bae:	f022 0203 	bic.w	r2, r2, #3
 8005bb2:	429a      	cmp	r2, r3
 8005bb4:	d902      	bls.n	8005bbc <_malloc_r+0x3e0>
 8005bb6:	6889      	ldr	r1, [r1, #8]
 8005bb8:	458e      	cmp	lr, r1
 8005bba:	d1f7      	bne.n	8005bac <_malloc_r+0x3d0>
 8005bbc:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005bc0:	687b      	ldr	r3, [r7, #4]
 8005bc2:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005bc6:	f8ce 4008 	str.w	r4, [lr, #8]
 8005bca:	60cc      	str	r4, [r1, #12]
 8005bcc:	e68c      	b.n	80058e8 <_malloc_r+0x10c>
 8005bce:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005bd2:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005bd6:	00c3      	lsls	r3, r0, #3
 8005bd8:	e645      	b.n	8005866 <_malloc_r+0x8a>
 8005bda:	42bc      	cmp	r4, r7
 8005bdc:	d072      	beq.n	8005cc4 <_malloc_r+0x4e8>
 8005bde:	68bc      	ldr	r4, [r7, #8]
 8005be0:	6862      	ldr	r2, [r4, #4]
 8005be2:	f022 0203 	bic.w	r2, r2, #3
 8005be6:	4295      	cmp	r5, r2
 8005be8:	eba2 0305 	sub.w	r3, r2, r5
 8005bec:	d802      	bhi.n	8005bf4 <_malloc_r+0x418>
 8005bee:	2b0f      	cmp	r3, #15
 8005bf0:	f73f af51 	bgt.w	8005a96 <_malloc_r+0x2ba>
 8005bf4:	4630      	mov	r0, r6
 8005bf6:	f000 f8ff 	bl	8005df8 <__malloc_unlock>
 8005bfa:	2400      	movs	r4, #0
 8005bfc:	e616      	b.n	800582c <_malloc_r+0x50>
 8005bfe:	099a      	lsrs	r2, r3, #6
 8005c00:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005c04:	00c9      	lsls	r1, r1, #3
 8005c06:	3238      	adds	r2, #56	; 0x38
 8005c08:	e7c9      	b.n	8005b9e <_malloc_r+0x3c2>
 8005c0a:	f8d9 9000 	ldr.w	r9, [r9]
 8005c0e:	4599      	cmp	r9, r3
 8005c10:	f040 8083 	bne.w	8005d1a <_malloc_r+0x53e>
 8005c14:	f010 0f03 	tst.w	r0, #3
 8005c18:	f1a9 0308 	sub.w	r3, r9, #8
 8005c1c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005c20:	d1f3      	bne.n	8005c0a <_malloc_r+0x42e>
 8005c22:	687b      	ldr	r3, [r7, #4]
 8005c24:	ea23 0304 	bic.w	r3, r3, r4
 8005c28:	607b      	str	r3, [r7, #4]
 8005c2a:	0064      	lsls	r4, r4, #1
 8005c2c:	429c      	cmp	r4, r3
 8005c2e:	f63f aeac 	bhi.w	800598a <_malloc_r+0x1ae>
 8005c32:	b91c      	cbnz	r4, 8005c3c <_malloc_r+0x460>
 8005c34:	e6a9      	b.n	800598a <_malloc_r+0x1ae>
 8005c36:	0064      	lsls	r4, r4, #1
 8005c38:	f108 0804 	add.w	r8, r8, #4
 8005c3c:	421c      	tst	r4, r3
 8005c3e:	d0fa      	beq.n	8005c36 <_malloc_r+0x45a>
 8005c40:	4640      	mov	r0, r8
 8005c42:	e65f      	b.n	8005904 <_malloc_r+0x128>
 8005c44:	f108 0810 	add.w	r8, r8, #16
 8005c48:	e6bc      	b.n	80059c4 <_malloc_r+0x1e8>
 8005c4a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005c4e:	d826      	bhi.n	8005c9e <_malloc_r+0x4c2>
 8005c50:	0beb      	lsrs	r3, r5, #15
 8005c52:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005c56:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005c5a:	00c3      	lsls	r3, r0, #3
 8005c5c:	e603      	b.n	8005866 <_malloc_r+0x8a>
 8005c5e:	687b      	ldr	r3, [r7, #4]
 8005c60:	1092      	asrs	r2, r2, #2
 8005c62:	f04f 0801 	mov.w	r8, #1
 8005c66:	fa08 f202 	lsl.w	r2, r8, r2
 8005c6a:	4313      	orrs	r3, r2
 8005c6c:	607b      	str	r3, [r7, #4]
 8005c6e:	e7a8      	b.n	8005bc2 <_malloc_r+0x3e6>
 8005c70:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005c74:	e6ce      	b.n	8005a14 <_malloc_r+0x238>
 8005c76:	2a54      	cmp	r2, #84	; 0x54
 8005c78:	d829      	bhi.n	8005cce <_malloc_r+0x4f2>
 8005c7a:	0b1a      	lsrs	r2, r3, #12
 8005c7c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005c80:	00c9      	lsls	r1, r1, #3
 8005c82:	326e      	adds	r2, #110	; 0x6e
 8005c84:	e78b      	b.n	8005b9e <_malloc_r+0x3c2>
 8005c86:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005c8a:	2900      	cmp	r1, #0
 8005c8c:	f47f aeae 	bne.w	80059ec <_malloc_r+0x210>
 8005c90:	eb09 0208 	add.w	r2, r9, r8
 8005c94:	68b9      	ldr	r1, [r7, #8]
 8005c96:	f042 0201 	orr.w	r2, r2, #1
 8005c9a:	604a      	str	r2, [r1, #4]
 8005c9c:	e6ec      	b.n	8005a78 <_malloc_r+0x29c>
 8005c9e:	f240 5254 	movw	r2, #1364	; 0x554
 8005ca2:	4293      	cmp	r3, r2
 8005ca4:	d81c      	bhi.n	8005ce0 <_malloc_r+0x504>
 8005ca6:	0cab      	lsrs	r3, r5, #18
 8005ca8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005cac:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005cb0:	00c3      	lsls	r3, r0, #3
 8005cb2:	e5d8      	b.n	8005866 <_malloc_r+0x8a>
 8005cb4:	2301      	movs	r3, #1
 8005cb6:	f8cb 3004 	str.w	r3, [fp, #4]
 8005cba:	e79b      	b.n	8005bf4 <_malloc_r+0x418>
 8005cbc:	2101      	movs	r1, #1
 8005cbe:	f04f 0800 	mov.w	r8, #0
 8005cc2:	e6ba      	b.n	8005a3a <_malloc_r+0x25e>
 8005cc4:	4a16      	ldr	r2, [pc, #88]	; (8005d20 <_malloc_r+0x544>)
 8005cc6:	6813      	ldr	r3, [r2, #0]
 8005cc8:	4443      	add	r3, r8
 8005cca:	6013      	str	r3, [r2, #0]
 8005ccc:	e68e      	b.n	80059ec <_malloc_r+0x210>
 8005cce:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005cd2:	d814      	bhi.n	8005cfe <_malloc_r+0x522>
 8005cd4:	0bda      	lsrs	r2, r3, #15
 8005cd6:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005cda:	00c9      	lsls	r1, r1, #3
 8005cdc:	3277      	adds	r2, #119	; 0x77
 8005cde:	e75e      	b.n	8005b9e <_malloc_r+0x3c2>
 8005ce0:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005ce4:	207f      	movs	r0, #127	; 0x7f
 8005ce6:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005cea:	e5bc      	b.n	8005866 <_malloc_r+0x8a>
 8005cec:	f104 0108 	add.w	r1, r4, #8
 8005cf0:	4630      	mov	r0, r6
 8005cf2:	9201      	str	r2, [sp, #4]
 8005cf4:	f7ff fa48 	bl	8005188 <_free_r>
 8005cf8:	9a01      	ldr	r2, [sp, #4]
 8005cfa:	6813      	ldr	r3, [r2, #0]
 8005cfc:	e6bc      	b.n	8005a78 <_malloc_r+0x29c>
 8005cfe:	f240 5154 	movw	r1, #1364	; 0x554
 8005d02:	428a      	cmp	r2, r1
 8005d04:	d805      	bhi.n	8005d12 <_malloc_r+0x536>
 8005d06:	0c9a      	lsrs	r2, r3, #18
 8005d08:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005d0c:	00c9      	lsls	r1, r1, #3
 8005d0e:	327c      	adds	r2, #124	; 0x7c
 8005d10:	e745      	b.n	8005b9e <_malloc_r+0x3c2>
 8005d12:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005d16:	227e      	movs	r2, #126	; 0x7e
 8005d18:	e741      	b.n	8005b9e <_malloc_r+0x3c2>
 8005d1a:	687b      	ldr	r3, [r7, #4]
 8005d1c:	e785      	b.n	8005c2a <_malloc_r+0x44e>
 8005d1e:	bf00      	nop
 8005d20:	20000c00 	.word	0x20000c00

08005d24 <memmove>:
 8005d24:	4288      	cmp	r0, r1
 8005d26:	b4f0      	push	{r4, r5, r6, r7}
 8005d28:	d90d      	bls.n	8005d46 <memmove+0x22>
 8005d2a:	188b      	adds	r3, r1, r2
 8005d2c:	4283      	cmp	r3, r0
 8005d2e:	d90a      	bls.n	8005d46 <memmove+0x22>
 8005d30:	1884      	adds	r4, r0, r2
 8005d32:	b132      	cbz	r2, 8005d42 <memmove+0x1e>
 8005d34:	4622      	mov	r2, r4
 8005d36:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005d3a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005d3e:	4299      	cmp	r1, r3
 8005d40:	d1f9      	bne.n	8005d36 <memmove+0x12>
 8005d42:	bcf0      	pop	{r4, r5, r6, r7}
 8005d44:	4770      	bx	lr
 8005d46:	2a0f      	cmp	r2, #15
 8005d48:	d949      	bls.n	8005dde <memmove+0xba>
 8005d4a:	ea40 0301 	orr.w	r3, r0, r1
 8005d4e:	079b      	lsls	r3, r3, #30
 8005d50:	d147      	bne.n	8005de2 <memmove+0xbe>
 8005d52:	f1a2 0310 	sub.w	r3, r2, #16
 8005d56:	091b      	lsrs	r3, r3, #4
 8005d58:	f101 0720 	add.w	r7, r1, #32
 8005d5c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005d60:	f101 0410 	add.w	r4, r1, #16
 8005d64:	f100 0510 	add.w	r5, r0, #16
 8005d68:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005d6c:	f845 6c10 	str.w	r6, [r5, #-16]
 8005d70:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005d74:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005d78:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005d7c:	f845 6c08 	str.w	r6, [r5, #-8]
 8005d80:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005d84:	f845 6c04 	str.w	r6, [r5, #-4]
 8005d88:	3410      	adds	r4, #16
 8005d8a:	42bc      	cmp	r4, r7
 8005d8c:	f105 0510 	add.w	r5, r5, #16
 8005d90:	d1ea      	bne.n	8005d68 <memmove+0x44>
 8005d92:	3301      	adds	r3, #1
 8005d94:	f002 050f 	and.w	r5, r2, #15
 8005d98:	011b      	lsls	r3, r3, #4
 8005d9a:	2d03      	cmp	r5, #3
 8005d9c:	4419      	add	r1, r3
 8005d9e:	4403      	add	r3, r0
 8005da0:	d921      	bls.n	8005de6 <memmove+0xc2>
 8005da2:	1f1f      	subs	r7, r3, #4
 8005da4:	460e      	mov	r6, r1
 8005da6:	462c      	mov	r4, r5
 8005da8:	3c04      	subs	r4, #4
 8005daa:	f856 cb04 	ldr.w	ip, [r6], #4
 8005dae:	f847 cf04 	str.w	ip, [r7, #4]!
 8005db2:	2c03      	cmp	r4, #3
 8005db4:	d8f8      	bhi.n	8005da8 <memmove+0x84>
 8005db6:	1f2c      	subs	r4, r5, #4
 8005db8:	f024 0403 	bic.w	r4, r4, #3
 8005dbc:	3404      	adds	r4, #4
 8005dbe:	4423      	add	r3, r4
 8005dc0:	4421      	add	r1, r4
 8005dc2:	f002 0203 	and.w	r2, r2, #3
 8005dc6:	2a00      	cmp	r2, #0
 8005dc8:	d0bb      	beq.n	8005d42 <memmove+0x1e>
 8005dca:	3b01      	subs	r3, #1
 8005dcc:	440a      	add	r2, r1
 8005dce:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005dd2:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005dd6:	4291      	cmp	r1, r2
 8005dd8:	d1f9      	bne.n	8005dce <memmove+0xaa>
 8005dda:	bcf0      	pop	{r4, r5, r6, r7}
 8005ddc:	4770      	bx	lr
 8005dde:	4603      	mov	r3, r0
 8005de0:	e7f1      	b.n	8005dc6 <memmove+0xa2>
 8005de2:	4603      	mov	r3, r0
 8005de4:	e7f1      	b.n	8005dca <memmove+0xa6>
 8005de6:	462a      	mov	r2, r5
 8005de8:	e7ed      	b.n	8005dc6 <memmove+0xa2>
 8005dea:	bf00      	nop

08005dec <__malloc_lock>:
 8005dec:	4801      	ldr	r0, [pc, #4]	; (8005df4 <__malloc_lock+0x8>)
 8005dee:	f7ff bc79 	b.w	80056e4 <__retarget_lock_acquire_recursive>
 8005df2:	bf00      	nop
 8005df4:	20000c8c 	.word	0x20000c8c

08005df8 <__malloc_unlock>:
 8005df8:	4801      	ldr	r0, [pc, #4]	; (8005e00 <__malloc_unlock+0x8>)
 8005dfa:	f7ff bc75 	b.w	80056e8 <__retarget_lock_release_recursive>
 8005dfe:	bf00      	nop
 8005e00:	20000c8c 	.word	0x20000c8c

08005e04 <_Balloc>:
 8005e04:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005e06:	b570      	push	{r4, r5, r6, lr}
 8005e08:	4605      	mov	r5, r0
 8005e0a:	460c      	mov	r4, r1
 8005e0c:	b14b      	cbz	r3, 8005e22 <_Balloc+0x1e>
 8005e0e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005e12:	b180      	cbz	r0, 8005e36 <_Balloc+0x32>
 8005e14:	6802      	ldr	r2, [r0, #0]
 8005e16:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005e1a:	2300      	movs	r3, #0
 8005e1c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005e20:	bd70      	pop	{r4, r5, r6, pc}
 8005e22:	2221      	movs	r2, #33	; 0x21
 8005e24:	2104      	movs	r1, #4
 8005e26:	f000 fe1d 	bl	8006a64 <_calloc_r>
 8005e2a:	4603      	mov	r3, r0
 8005e2c:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005e2e:	2800      	cmp	r0, #0
 8005e30:	d1ed      	bne.n	8005e0e <_Balloc+0xa>
 8005e32:	2000      	movs	r0, #0
 8005e34:	bd70      	pop	{r4, r5, r6, pc}
 8005e36:	2101      	movs	r1, #1
 8005e38:	fa01 f604 	lsl.w	r6, r1, r4
 8005e3c:	1d72      	adds	r2, r6, #5
 8005e3e:	4628      	mov	r0, r5
 8005e40:	0092      	lsls	r2, r2, #2
 8005e42:	f000 fe0f 	bl	8006a64 <_calloc_r>
 8005e46:	2800      	cmp	r0, #0
 8005e48:	d0f3      	beq.n	8005e32 <_Balloc+0x2e>
 8005e4a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005e4e:	e7e4      	b.n	8005e1a <_Balloc+0x16>

08005e50 <_Bfree>:
 8005e50:	b131      	cbz	r1, 8005e60 <_Bfree+0x10>
 8005e52:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005e54:	684a      	ldr	r2, [r1, #4]
 8005e56:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005e5a:	6008      	str	r0, [r1, #0]
 8005e5c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005e60:	4770      	bx	lr
 8005e62:	bf00      	nop

08005e64 <__multadd>:
 8005e64:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005e66:	690c      	ldr	r4, [r1, #16]
 8005e68:	b083      	sub	sp, #12
 8005e6a:	460d      	mov	r5, r1
 8005e6c:	4606      	mov	r6, r0
 8005e6e:	f101 0c14 	add.w	ip, r1, #20
 8005e72:	2700      	movs	r7, #0
 8005e74:	f8dc 0000 	ldr.w	r0, [ip]
 8005e78:	b281      	uxth	r1, r0
 8005e7a:	fb02 3301 	mla	r3, r2, r1, r3
 8005e7e:	0c01      	lsrs	r1, r0, #16
 8005e80:	0c18      	lsrs	r0, r3, #16
 8005e82:	fb02 0101 	mla	r1, r2, r1, r0
 8005e86:	b29b      	uxth	r3, r3
 8005e88:	3701      	adds	r7, #1
 8005e8a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005e8e:	42bc      	cmp	r4, r7
 8005e90:	f84c 3b04 	str.w	r3, [ip], #4
 8005e94:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8005e98:	dcec      	bgt.n	8005e74 <__multadd+0x10>
 8005e9a:	b13b      	cbz	r3, 8005eac <__multadd+0x48>
 8005e9c:	68aa      	ldr	r2, [r5, #8]
 8005e9e:	42a2      	cmp	r2, r4
 8005ea0:	dd07      	ble.n	8005eb2 <__multadd+0x4e>
 8005ea2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8005ea6:	3401      	adds	r4, #1
 8005ea8:	6153      	str	r3, [r2, #20]
 8005eaa:	612c      	str	r4, [r5, #16]
 8005eac:	4628      	mov	r0, r5
 8005eae:	b003      	add	sp, #12
 8005eb0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005eb2:	6869      	ldr	r1, [r5, #4]
 8005eb4:	9301      	str	r3, [sp, #4]
 8005eb6:	3101      	adds	r1, #1
 8005eb8:	4630      	mov	r0, r6
 8005eba:	f7ff ffa3 	bl	8005e04 <_Balloc>
 8005ebe:	692a      	ldr	r2, [r5, #16]
 8005ec0:	3202      	adds	r2, #2
 8005ec2:	f105 010c 	add.w	r1, r5, #12
 8005ec6:	4607      	mov	r7, r0
 8005ec8:	0092      	lsls	r2, r2, #2
 8005eca:	300c      	adds	r0, #12
 8005ecc:	f7fa fb18 	bl	8000500 <memcpy>
 8005ed0:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8005ed2:	6869      	ldr	r1, [r5, #4]
 8005ed4:	9b01      	ldr	r3, [sp, #4]
 8005ed6:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8005eda:	6028      	str	r0, [r5, #0]
 8005edc:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8005ee0:	463d      	mov	r5, r7
 8005ee2:	e7de      	b.n	8005ea2 <__multadd+0x3e>

08005ee4 <__hi0bits>:
 8005ee4:	0c02      	lsrs	r2, r0, #16
 8005ee6:	0412      	lsls	r2, r2, #16
 8005ee8:	4603      	mov	r3, r0
 8005eea:	b9c2      	cbnz	r2, 8005f1e <__hi0bits+0x3a>
 8005eec:	0403      	lsls	r3, r0, #16
 8005eee:	2010      	movs	r0, #16
 8005ef0:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8005ef4:	bf04      	itt	eq
 8005ef6:	021b      	lsleq	r3, r3, #8
 8005ef8:	3008      	addeq	r0, #8
 8005efa:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8005efe:	bf04      	itt	eq
 8005f00:	011b      	lsleq	r3, r3, #4
 8005f02:	3004      	addeq	r0, #4
 8005f04:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8005f08:	bf04      	itt	eq
 8005f0a:	009b      	lsleq	r3, r3, #2
 8005f0c:	3002      	addeq	r0, #2
 8005f0e:	2b00      	cmp	r3, #0
 8005f10:	db04      	blt.n	8005f1c <__hi0bits+0x38>
 8005f12:	005b      	lsls	r3, r3, #1
 8005f14:	d501      	bpl.n	8005f1a <__hi0bits+0x36>
 8005f16:	3001      	adds	r0, #1
 8005f18:	4770      	bx	lr
 8005f1a:	2020      	movs	r0, #32
 8005f1c:	4770      	bx	lr
 8005f1e:	2000      	movs	r0, #0
 8005f20:	e7e6      	b.n	8005ef0 <__hi0bits+0xc>
 8005f22:	bf00      	nop

08005f24 <__lo0bits>:
 8005f24:	6803      	ldr	r3, [r0, #0]
 8005f26:	f013 0207 	ands.w	r2, r3, #7
 8005f2a:	4601      	mov	r1, r0
 8005f2c:	d007      	beq.n	8005f3e <__lo0bits+0x1a>
 8005f2e:	07da      	lsls	r2, r3, #31
 8005f30:	d41f      	bmi.n	8005f72 <__lo0bits+0x4e>
 8005f32:	0798      	lsls	r0, r3, #30
 8005f34:	d51f      	bpl.n	8005f76 <__lo0bits+0x52>
 8005f36:	085b      	lsrs	r3, r3, #1
 8005f38:	600b      	str	r3, [r1, #0]
 8005f3a:	2001      	movs	r0, #1
 8005f3c:	4770      	bx	lr
 8005f3e:	b298      	uxth	r0, r3
 8005f40:	b1a0      	cbz	r0, 8005f6c <__lo0bits+0x48>
 8005f42:	4610      	mov	r0, r2
 8005f44:	f013 0fff 	tst.w	r3, #255	; 0xff
 8005f48:	bf04      	itt	eq
 8005f4a:	0a1b      	lsreq	r3, r3, #8
 8005f4c:	3008      	addeq	r0, #8
 8005f4e:	071a      	lsls	r2, r3, #28
 8005f50:	bf04      	itt	eq
 8005f52:	091b      	lsreq	r3, r3, #4
 8005f54:	3004      	addeq	r0, #4
 8005f56:	079a      	lsls	r2, r3, #30
 8005f58:	bf04      	itt	eq
 8005f5a:	089b      	lsreq	r3, r3, #2
 8005f5c:	3002      	addeq	r0, #2
 8005f5e:	07da      	lsls	r2, r3, #31
 8005f60:	d402      	bmi.n	8005f68 <__lo0bits+0x44>
 8005f62:	085b      	lsrs	r3, r3, #1
 8005f64:	d00b      	beq.n	8005f7e <__lo0bits+0x5a>
 8005f66:	3001      	adds	r0, #1
 8005f68:	600b      	str	r3, [r1, #0]
 8005f6a:	4770      	bx	lr
 8005f6c:	0c1b      	lsrs	r3, r3, #16
 8005f6e:	2010      	movs	r0, #16
 8005f70:	e7e8      	b.n	8005f44 <__lo0bits+0x20>
 8005f72:	2000      	movs	r0, #0
 8005f74:	4770      	bx	lr
 8005f76:	089b      	lsrs	r3, r3, #2
 8005f78:	600b      	str	r3, [r1, #0]
 8005f7a:	2002      	movs	r0, #2
 8005f7c:	4770      	bx	lr
 8005f7e:	2020      	movs	r0, #32
 8005f80:	4770      	bx	lr
 8005f82:	bf00      	nop

08005f84 <__i2b>:
 8005f84:	b510      	push	{r4, lr}
 8005f86:	460c      	mov	r4, r1
 8005f88:	2101      	movs	r1, #1
 8005f8a:	f7ff ff3b 	bl	8005e04 <_Balloc>
 8005f8e:	2201      	movs	r2, #1
 8005f90:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8005f94:	bd10      	pop	{r4, pc}
 8005f96:	bf00      	nop

08005f98 <__multiply>:
 8005f98:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005f9c:	690e      	ldr	r6, [r1, #16]
 8005f9e:	6914      	ldr	r4, [r2, #16]
 8005fa0:	42a6      	cmp	r6, r4
 8005fa2:	b083      	sub	sp, #12
 8005fa4:	460f      	mov	r7, r1
 8005fa6:	4615      	mov	r5, r2
 8005fa8:	da04      	bge.n	8005fb4 <__multiply+0x1c>
 8005faa:	4632      	mov	r2, r6
 8005fac:	462f      	mov	r7, r5
 8005fae:	4626      	mov	r6, r4
 8005fb0:	460d      	mov	r5, r1
 8005fb2:	4614      	mov	r4, r2
 8005fb4:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8005fb8:	eb06 0804 	add.w	r8, r6, r4
 8005fbc:	4543      	cmp	r3, r8
 8005fbe:	bfb8      	it	lt
 8005fc0:	3101      	addlt	r1, #1
 8005fc2:	f7ff ff1f 	bl	8005e04 <_Balloc>
 8005fc6:	f100 0914 	add.w	r9, r0, #20
 8005fca:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8005fce:	45f1      	cmp	r9, lr
 8005fd0:	9000      	str	r0, [sp, #0]
 8005fd2:	d205      	bcs.n	8005fe0 <__multiply+0x48>
 8005fd4:	464b      	mov	r3, r9
 8005fd6:	2200      	movs	r2, #0
 8005fd8:	f843 2b04 	str.w	r2, [r3], #4
 8005fdc:	459e      	cmp	lr, r3
 8005fde:	d8fb      	bhi.n	8005fd8 <__multiply+0x40>
 8005fe0:	f105 0a14 	add.w	sl, r5, #20
 8005fe4:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8005fe8:	f107 0314 	add.w	r3, r7, #20
 8005fec:	45a2      	cmp	sl, r4
 8005fee:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8005ff2:	d261      	bcs.n	80060b8 <__multiply+0x120>
 8005ff4:	1b64      	subs	r4, r4, r5
 8005ff6:	3c15      	subs	r4, #21
 8005ff8:	f024 0403 	bic.w	r4, r4, #3
 8005ffc:	f8cd e004 	str.w	lr, [sp, #4]
 8006000:	44a2      	add	sl, r4
 8006002:	f105 0210 	add.w	r2, r5, #16
 8006006:	469e      	mov	lr, r3
 8006008:	e005      	b.n	8006016 <__multiply+0x7e>
 800600a:	0c2d      	lsrs	r5, r5, #16
 800600c:	d12b      	bne.n	8006066 <__multiply+0xce>
 800600e:	4592      	cmp	sl, r2
 8006010:	f109 0904 	add.w	r9, r9, #4
 8006014:	d04e      	beq.n	80060b4 <__multiply+0x11c>
 8006016:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800601a:	fa1f fb85 	uxth.w	fp, r5
 800601e:	f1bb 0f00 	cmp.w	fp, #0
 8006022:	d0f2      	beq.n	800600a <__multiply+0x72>
 8006024:	4677      	mov	r7, lr
 8006026:	464e      	mov	r6, r9
 8006028:	2000      	movs	r0, #0
 800602a:	e000      	b.n	800602e <__multiply+0x96>
 800602c:	4626      	mov	r6, r4
 800602e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006032:	6834      	ldr	r4, [r6, #0]
 8006034:	b28b      	uxth	r3, r1
 8006036:	b2a5      	uxth	r5, r4
 8006038:	0c09      	lsrs	r1, r1, #16
 800603a:	0c24      	lsrs	r4, r4, #16
 800603c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006040:	4403      	add	r3, r0
 8006042:	fb0b 4001 	mla	r0, fp, r1, r4
 8006046:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800604a:	4634      	mov	r4, r6
 800604c:	b29b      	uxth	r3, r3
 800604e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006052:	45bc      	cmp	ip, r7
 8006054:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006058:	f844 3b04 	str.w	r3, [r4], #4
 800605c:	d8e6      	bhi.n	800602c <__multiply+0x94>
 800605e:	6070      	str	r0, [r6, #4]
 8006060:	6815      	ldr	r5, [r2, #0]
 8006062:	0c2d      	lsrs	r5, r5, #16
 8006064:	d0d3      	beq.n	800600e <__multiply+0x76>
 8006066:	f8d9 3000 	ldr.w	r3, [r9]
 800606a:	4676      	mov	r6, lr
 800606c:	4618      	mov	r0, r3
 800606e:	46cb      	mov	fp, r9
 8006070:	2100      	movs	r1, #0
 8006072:	e000      	b.n	8006076 <__multiply+0xde>
 8006074:	46a3      	mov	fp, r4
 8006076:	8834      	ldrh	r4, [r6, #0]
 8006078:	0c00      	lsrs	r0, r0, #16
 800607a:	fb05 0004 	mla	r0, r5, r4, r0
 800607e:	4401      	add	r1, r0
 8006080:	b29b      	uxth	r3, r3
 8006082:	465c      	mov	r4, fp
 8006084:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006088:	f844 3b04 	str.w	r3, [r4], #4
 800608c:	f856 3b04 	ldr.w	r3, [r6], #4
 8006090:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006094:	0c1b      	lsrs	r3, r3, #16
 8006096:	b287      	uxth	r7, r0
 8006098:	fb05 7303 	mla	r3, r5, r3, r7
 800609c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80060a0:	45b4      	cmp	ip, r6
 80060a2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80060a6:	d8e5      	bhi.n	8006074 <__multiply+0xdc>
 80060a8:	4592      	cmp	sl, r2
 80060aa:	f8cb 3004 	str.w	r3, [fp, #4]
 80060ae:	f109 0904 	add.w	r9, r9, #4
 80060b2:	d1b0      	bne.n	8006016 <__multiply+0x7e>
 80060b4:	f8dd e004 	ldr.w	lr, [sp, #4]
 80060b8:	f1b8 0f00 	cmp.w	r8, #0
 80060bc:	dd0b      	ble.n	80060d6 <__multiply+0x13e>
 80060be:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80060c2:	f1ae 0e04 	sub.w	lr, lr, #4
 80060c6:	b11b      	cbz	r3, 80060d0 <__multiply+0x138>
 80060c8:	e005      	b.n	80060d6 <__multiply+0x13e>
 80060ca:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80060ce:	b913      	cbnz	r3, 80060d6 <__multiply+0x13e>
 80060d0:	f1b8 0801 	subs.w	r8, r8, #1
 80060d4:	d1f9      	bne.n	80060ca <__multiply+0x132>
 80060d6:	9800      	ldr	r0, [sp, #0]
 80060d8:	f8c0 8010 	str.w	r8, [r0, #16]
 80060dc:	b003      	add	sp, #12
 80060de:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80060e2:	bf00      	nop

080060e4 <__pow5mult>:
 80060e4:	f012 0303 	ands.w	r3, r2, #3
 80060e8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80060ec:	4614      	mov	r4, r2
 80060ee:	4607      	mov	r7, r0
 80060f0:	d12e      	bne.n	8006150 <__pow5mult+0x6c>
 80060f2:	460d      	mov	r5, r1
 80060f4:	10a4      	asrs	r4, r4, #2
 80060f6:	d01c      	beq.n	8006132 <__pow5mult+0x4e>
 80060f8:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80060fa:	b396      	cbz	r6, 8006162 <__pow5mult+0x7e>
 80060fc:	07e3      	lsls	r3, r4, #31
 80060fe:	f04f 0800 	mov.w	r8, #0
 8006102:	d406      	bmi.n	8006112 <__pow5mult+0x2e>
 8006104:	1064      	asrs	r4, r4, #1
 8006106:	d014      	beq.n	8006132 <__pow5mult+0x4e>
 8006108:	6830      	ldr	r0, [r6, #0]
 800610a:	b1a8      	cbz	r0, 8006138 <__pow5mult+0x54>
 800610c:	4606      	mov	r6, r0
 800610e:	07e3      	lsls	r3, r4, #31
 8006110:	d5f8      	bpl.n	8006104 <__pow5mult+0x20>
 8006112:	4632      	mov	r2, r6
 8006114:	4629      	mov	r1, r5
 8006116:	4638      	mov	r0, r7
 8006118:	f7ff ff3e 	bl	8005f98 <__multiply>
 800611c:	b1b5      	cbz	r5, 800614c <__pow5mult+0x68>
 800611e:	686a      	ldr	r2, [r5, #4]
 8006120:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006122:	1064      	asrs	r4, r4, #1
 8006124:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006128:	6029      	str	r1, [r5, #0]
 800612a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800612e:	4605      	mov	r5, r0
 8006130:	d1ea      	bne.n	8006108 <__pow5mult+0x24>
 8006132:	4628      	mov	r0, r5
 8006134:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006138:	4632      	mov	r2, r6
 800613a:	4631      	mov	r1, r6
 800613c:	4638      	mov	r0, r7
 800613e:	f7ff ff2b 	bl	8005f98 <__multiply>
 8006142:	6030      	str	r0, [r6, #0]
 8006144:	f8c0 8000 	str.w	r8, [r0]
 8006148:	4606      	mov	r6, r0
 800614a:	e7e0      	b.n	800610e <__pow5mult+0x2a>
 800614c:	4605      	mov	r5, r0
 800614e:	e7d9      	b.n	8006104 <__pow5mult+0x20>
 8006150:	3b01      	subs	r3, #1
 8006152:	4a0b      	ldr	r2, [pc, #44]	; (8006180 <__pow5mult+0x9c>)
 8006154:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006158:	2300      	movs	r3, #0
 800615a:	f7ff fe83 	bl	8005e64 <__multadd>
 800615e:	4605      	mov	r5, r0
 8006160:	e7c8      	b.n	80060f4 <__pow5mult+0x10>
 8006162:	2101      	movs	r1, #1
 8006164:	4638      	mov	r0, r7
 8006166:	f7ff fe4d 	bl	8005e04 <_Balloc>
 800616a:	f240 2371 	movw	r3, #625	; 0x271
 800616e:	6143      	str	r3, [r0, #20]
 8006170:	2201      	movs	r2, #1
 8006172:	2300      	movs	r3, #0
 8006174:	6102      	str	r2, [r0, #16]
 8006176:	4606      	mov	r6, r0
 8006178:	64b8      	str	r0, [r7, #72]	; 0x48
 800617a:	6003      	str	r3, [r0, #0]
 800617c:	e7be      	b.n	80060fc <__pow5mult+0x18>
 800617e:	bf00      	nop
 8006180:	08007178 	.word	0x08007178

08006184 <__lshift>:
 8006184:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006188:	4691      	mov	r9, r2
 800618a:	690a      	ldr	r2, [r1, #16]
 800618c:	460e      	mov	r6, r1
 800618e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8006192:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8006196:	eb04 0802 	add.w	r8, r4, r2
 800619a:	f108 0501 	add.w	r5, r8, #1
 800619e:	429d      	cmp	r5, r3
 80061a0:	4607      	mov	r7, r0
 80061a2:	dd04      	ble.n	80061ae <__lshift+0x2a>
 80061a4:	005b      	lsls	r3, r3, #1
 80061a6:	429d      	cmp	r5, r3
 80061a8:	f101 0101 	add.w	r1, r1, #1
 80061ac:	dcfa      	bgt.n	80061a4 <__lshift+0x20>
 80061ae:	4638      	mov	r0, r7
 80061b0:	f7ff fe28 	bl	8005e04 <_Balloc>
 80061b4:	2c00      	cmp	r4, #0
 80061b6:	f100 0314 	add.w	r3, r0, #20
 80061ba:	dd37      	ble.n	800622c <__lshift+0xa8>
 80061bc:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80061c0:	2200      	movs	r2, #0
 80061c2:	f843 2b04 	str.w	r2, [r3], #4
 80061c6:	428b      	cmp	r3, r1
 80061c8:	d1fb      	bne.n	80061c2 <__lshift+0x3e>
 80061ca:	6934      	ldr	r4, [r6, #16]
 80061cc:	f106 0314 	add.w	r3, r6, #20
 80061d0:	f019 091f 	ands.w	r9, r9, #31
 80061d4:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80061d8:	d020      	beq.n	800621c <__lshift+0x98>
 80061da:	f1c9 0e20 	rsb	lr, r9, #32
 80061de:	2200      	movs	r2, #0
 80061e0:	e000      	b.n	80061e4 <__lshift+0x60>
 80061e2:	4651      	mov	r1, sl
 80061e4:	681c      	ldr	r4, [r3, #0]
 80061e6:	468a      	mov	sl, r1
 80061e8:	fa04 f409 	lsl.w	r4, r4, r9
 80061ec:	4314      	orrs	r4, r2
 80061ee:	f84a 4b04 	str.w	r4, [sl], #4
 80061f2:	f853 2b04 	ldr.w	r2, [r3], #4
 80061f6:	4563      	cmp	r3, ip
 80061f8:	fa22 f20e 	lsr.w	r2, r2, lr
 80061fc:	d3f1      	bcc.n	80061e2 <__lshift+0x5e>
 80061fe:	604a      	str	r2, [r1, #4]
 8006200:	b10a      	cbz	r2, 8006206 <__lshift+0x82>
 8006202:	f108 0502 	add.w	r5, r8, #2
 8006206:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006208:	6872      	ldr	r2, [r6, #4]
 800620a:	3d01      	subs	r5, #1
 800620c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006210:	6105      	str	r5, [r0, #16]
 8006212:	6031      	str	r1, [r6, #0]
 8006214:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006218:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800621c:	3904      	subs	r1, #4
 800621e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006222:	f841 2f04 	str.w	r2, [r1, #4]!
 8006226:	459c      	cmp	ip, r3
 8006228:	d8f9      	bhi.n	800621e <__lshift+0x9a>
 800622a:	e7ec      	b.n	8006206 <__lshift+0x82>
 800622c:	4619      	mov	r1, r3
 800622e:	e7cc      	b.n	80061ca <__lshift+0x46>

08006230 <__mcmp>:
 8006230:	b430      	push	{r4, r5}
 8006232:	690b      	ldr	r3, [r1, #16]
 8006234:	4605      	mov	r5, r0
 8006236:	6900      	ldr	r0, [r0, #16]
 8006238:	1ac0      	subs	r0, r0, r3
 800623a:	d10f      	bne.n	800625c <__mcmp+0x2c>
 800623c:	009b      	lsls	r3, r3, #2
 800623e:	3514      	adds	r5, #20
 8006240:	3114      	adds	r1, #20
 8006242:	4419      	add	r1, r3
 8006244:	442b      	add	r3, r5
 8006246:	e001      	b.n	800624c <__mcmp+0x1c>
 8006248:	429d      	cmp	r5, r3
 800624a:	d207      	bcs.n	800625c <__mcmp+0x2c>
 800624c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006250:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006254:	4294      	cmp	r4, r2
 8006256:	d0f7      	beq.n	8006248 <__mcmp+0x18>
 8006258:	d302      	bcc.n	8006260 <__mcmp+0x30>
 800625a:	2001      	movs	r0, #1
 800625c:	bc30      	pop	{r4, r5}
 800625e:	4770      	bx	lr
 8006260:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006264:	e7fa      	b.n	800625c <__mcmp+0x2c>
 8006266:	bf00      	nop

08006268 <__mdiff>:
 8006268:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800626c:	6913      	ldr	r3, [r2, #16]
 800626e:	690d      	ldr	r5, [r1, #16]
 8006270:	1aed      	subs	r5, r5, r3
 8006272:	2d00      	cmp	r5, #0
 8006274:	460e      	mov	r6, r1
 8006276:	4690      	mov	r8, r2
 8006278:	f101 0414 	add.w	r4, r1, #20
 800627c:	f102 0714 	add.w	r7, r2, #20
 8006280:	d114      	bne.n	80062ac <__mdiff+0x44>
 8006282:	009b      	lsls	r3, r3, #2
 8006284:	18e2      	adds	r2, r4, r3
 8006286:	443b      	add	r3, r7
 8006288:	e001      	b.n	800628e <__mdiff+0x26>
 800628a:	42a2      	cmp	r2, r4
 800628c:	d959      	bls.n	8006342 <__mdiff+0xda>
 800628e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006292:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006296:	458c      	cmp	ip, r1
 8006298:	d0f7      	beq.n	800628a <__mdiff+0x22>
 800629a:	d209      	bcs.n	80062b0 <__mdiff+0x48>
 800629c:	4622      	mov	r2, r4
 800629e:	4633      	mov	r3, r6
 80062a0:	463c      	mov	r4, r7
 80062a2:	4646      	mov	r6, r8
 80062a4:	4617      	mov	r7, r2
 80062a6:	4698      	mov	r8, r3
 80062a8:	2501      	movs	r5, #1
 80062aa:	e001      	b.n	80062b0 <__mdiff+0x48>
 80062ac:	dbf6      	blt.n	800629c <__mdiff+0x34>
 80062ae:	2500      	movs	r5, #0
 80062b0:	6871      	ldr	r1, [r6, #4]
 80062b2:	f7ff fda7 	bl	8005e04 <_Balloc>
 80062b6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80062ba:	6936      	ldr	r6, [r6, #16]
 80062bc:	60c5      	str	r5, [r0, #12]
 80062be:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80062c2:	46bc      	mov	ip, r7
 80062c4:	f100 0514 	add.w	r5, r0, #20
 80062c8:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80062cc:	2300      	movs	r3, #0
 80062ce:	f85c 1b04 	ldr.w	r1, [ip], #4
 80062d2:	f854 8b04 	ldr.w	r8, [r4], #4
 80062d6:	b28a      	uxth	r2, r1
 80062d8:	fa13 f388 	uxtah	r3, r3, r8
 80062dc:	0c09      	lsrs	r1, r1, #16
 80062de:	1a9a      	subs	r2, r3, r2
 80062e0:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80062e4:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80062e8:	b292      	uxth	r2, r2
 80062ea:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80062ee:	45e6      	cmp	lr, ip
 80062f0:	f845 2b04 	str.w	r2, [r5], #4
 80062f4:	ea4f 4323 	mov.w	r3, r3, asr #16
 80062f8:	d8e9      	bhi.n	80062ce <__mdiff+0x66>
 80062fa:	42a7      	cmp	r7, r4
 80062fc:	d917      	bls.n	800632e <__mdiff+0xc6>
 80062fe:	46ae      	mov	lr, r5
 8006300:	46a4      	mov	ip, r4
 8006302:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006306:	fa13 f382 	uxtah	r3, r3, r2
 800630a:	1419      	asrs	r1, r3, #16
 800630c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006310:	b29b      	uxth	r3, r3
 8006312:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006316:	4567      	cmp	r7, ip
 8006318:	f84e 2b04 	str.w	r2, [lr], #4
 800631c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006320:	d8ef      	bhi.n	8006302 <__mdiff+0x9a>
 8006322:	43e4      	mvns	r4, r4
 8006324:	4427      	add	r7, r4
 8006326:	f027 0703 	bic.w	r7, r7, #3
 800632a:	3704      	adds	r7, #4
 800632c:	443d      	add	r5, r7
 800632e:	3d04      	subs	r5, #4
 8006330:	b922      	cbnz	r2, 800633c <__mdiff+0xd4>
 8006332:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006336:	3e01      	subs	r6, #1
 8006338:	2b00      	cmp	r3, #0
 800633a:	d0fa      	beq.n	8006332 <__mdiff+0xca>
 800633c:	6106      	str	r6, [r0, #16]
 800633e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006342:	2100      	movs	r1, #0
 8006344:	f7ff fd5e 	bl	8005e04 <_Balloc>
 8006348:	2201      	movs	r2, #1
 800634a:	2300      	movs	r3, #0
 800634c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006350:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006354 <__d2b>:
 8006354:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006358:	460f      	mov	r7, r1
 800635a:	b083      	sub	sp, #12
 800635c:	2101      	movs	r1, #1
 800635e:	ec55 4b10 	vmov	r4, r5, d0
 8006362:	4616      	mov	r6, r2
 8006364:	f7ff fd4e 	bl	8005e04 <_Balloc>
 8006368:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800636c:	4681      	mov	r9, r0
 800636e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006372:	f1b8 0f00 	cmp.w	r8, #0
 8006376:	d001      	beq.n	800637c <__d2b+0x28>
 8006378:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800637c:	2c00      	cmp	r4, #0
 800637e:	9301      	str	r3, [sp, #4]
 8006380:	d024      	beq.n	80063cc <__d2b+0x78>
 8006382:	a802      	add	r0, sp, #8
 8006384:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006388:	f7ff fdcc 	bl	8005f24 <__lo0bits>
 800638c:	2800      	cmp	r0, #0
 800638e:	d136      	bne.n	80063fe <__d2b+0xaa>
 8006390:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006394:	f8c9 2014 	str.w	r2, [r9, #20]
 8006398:	2b00      	cmp	r3, #0
 800639a:	bf0c      	ite	eq
 800639c:	2101      	moveq	r1, #1
 800639e:	2102      	movne	r1, #2
 80063a0:	f8c9 3018 	str.w	r3, [r9, #24]
 80063a4:	f8c9 1010 	str.w	r1, [r9, #16]
 80063a8:	f1b8 0f00 	cmp.w	r8, #0
 80063ac:	d11b      	bne.n	80063e6 <__d2b+0x92>
 80063ae:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80063b2:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80063b6:	6038      	str	r0, [r7, #0]
 80063b8:	6918      	ldr	r0, [r3, #16]
 80063ba:	f7ff fd93 	bl	8005ee4 <__hi0bits>
 80063be:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80063c2:	6030      	str	r0, [r6, #0]
 80063c4:	4648      	mov	r0, r9
 80063c6:	b003      	add	sp, #12
 80063c8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80063cc:	a801      	add	r0, sp, #4
 80063ce:	f7ff fda9 	bl	8005f24 <__lo0bits>
 80063d2:	9b01      	ldr	r3, [sp, #4]
 80063d4:	f8c9 3014 	str.w	r3, [r9, #20]
 80063d8:	2101      	movs	r1, #1
 80063da:	3020      	adds	r0, #32
 80063dc:	f8c9 1010 	str.w	r1, [r9, #16]
 80063e0:	f1b8 0f00 	cmp.w	r8, #0
 80063e4:	d0e3      	beq.n	80063ae <__d2b+0x5a>
 80063e6:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80063ea:	eb08 0300 	add.w	r3, r8, r0
 80063ee:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80063f2:	603b      	str	r3, [r7, #0]
 80063f4:	6030      	str	r0, [r6, #0]
 80063f6:	4648      	mov	r0, r9
 80063f8:	b003      	add	sp, #12
 80063fa:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80063fe:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006402:	f1c0 0220 	rsb	r2, r0, #32
 8006406:	fa03 f202 	lsl.w	r2, r3, r2
 800640a:	430a      	orrs	r2, r1
 800640c:	40c3      	lsrs	r3, r0
 800640e:	9301      	str	r3, [sp, #4]
 8006410:	f8c9 2014 	str.w	r2, [r9, #20]
 8006414:	e7c0      	b.n	8006398 <__d2b+0x44>
 8006416:	bf00      	nop

08006418 <_realloc_r>:
 8006418:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800641c:	4692      	mov	sl, r2
 800641e:	b083      	sub	sp, #12
 8006420:	2900      	cmp	r1, #0
 8006422:	f000 80a1 	beq.w	8006568 <_realloc_r+0x150>
 8006426:	460d      	mov	r5, r1
 8006428:	4680      	mov	r8, r0
 800642a:	f10a 040b 	add.w	r4, sl, #11
 800642e:	f7ff fcdd 	bl	8005dec <__malloc_lock>
 8006432:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006436:	2c16      	cmp	r4, #22
 8006438:	f022 0603 	bic.w	r6, r2, #3
 800643c:	f1a5 0708 	sub.w	r7, r5, #8
 8006440:	d83e      	bhi.n	80064c0 <_realloc_r+0xa8>
 8006442:	2410      	movs	r4, #16
 8006444:	4621      	mov	r1, r4
 8006446:	45a2      	cmp	sl, r4
 8006448:	d83f      	bhi.n	80064ca <_realloc_r+0xb2>
 800644a:	428e      	cmp	r6, r1
 800644c:	eb07 0906 	add.w	r9, r7, r6
 8006450:	da74      	bge.n	800653c <_realloc_r+0x124>
 8006452:	4bc7      	ldr	r3, [pc, #796]	; (8006770 <_realloc_r+0x358>)
 8006454:	6898      	ldr	r0, [r3, #8]
 8006456:	4548      	cmp	r0, r9
 8006458:	f000 80aa 	beq.w	80065b0 <_realloc_r+0x198>
 800645c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006460:	f020 0301 	bic.w	r3, r0, #1
 8006464:	444b      	add	r3, r9
 8006466:	685b      	ldr	r3, [r3, #4]
 8006468:	07db      	lsls	r3, r3, #31
 800646a:	f140 8083 	bpl.w	8006574 <_realloc_r+0x15c>
 800646e:	07d2      	lsls	r2, r2, #31
 8006470:	d534      	bpl.n	80064dc <_realloc_r+0xc4>
 8006472:	4651      	mov	r1, sl
 8006474:	4640      	mov	r0, r8
 8006476:	f7ff f9b1 	bl	80057dc <_malloc_r>
 800647a:	4682      	mov	sl, r0
 800647c:	b1e0      	cbz	r0, 80064b8 <_realloc_r+0xa0>
 800647e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006482:	f023 0301 	bic.w	r3, r3, #1
 8006486:	443b      	add	r3, r7
 8006488:	f1a0 0208 	sub.w	r2, r0, #8
 800648c:	4293      	cmp	r3, r2
 800648e:	f000 80f9 	beq.w	8006684 <_realloc_r+0x26c>
 8006492:	1f32      	subs	r2, r6, #4
 8006494:	2a24      	cmp	r2, #36	; 0x24
 8006496:	f200 8107 	bhi.w	80066a8 <_realloc_r+0x290>
 800649a:	2a13      	cmp	r2, #19
 800649c:	6829      	ldr	r1, [r5, #0]
 800649e:	f200 80e6 	bhi.w	800666e <_realloc_r+0x256>
 80064a2:	4603      	mov	r3, r0
 80064a4:	462a      	mov	r2, r5
 80064a6:	6019      	str	r1, [r3, #0]
 80064a8:	6851      	ldr	r1, [r2, #4]
 80064aa:	6059      	str	r1, [r3, #4]
 80064ac:	6892      	ldr	r2, [r2, #8]
 80064ae:	609a      	str	r2, [r3, #8]
 80064b0:	4629      	mov	r1, r5
 80064b2:	4640      	mov	r0, r8
 80064b4:	f7fe fe68 	bl	8005188 <_free_r>
 80064b8:	4640      	mov	r0, r8
 80064ba:	f7ff fc9d 	bl	8005df8 <__malloc_unlock>
 80064be:	e04f      	b.n	8006560 <_realloc_r+0x148>
 80064c0:	f024 0407 	bic.w	r4, r4, #7
 80064c4:	2c00      	cmp	r4, #0
 80064c6:	4621      	mov	r1, r4
 80064c8:	dabd      	bge.n	8006446 <_realloc_r+0x2e>
 80064ca:	f04f 0a00 	mov.w	sl, #0
 80064ce:	230c      	movs	r3, #12
 80064d0:	4650      	mov	r0, sl
 80064d2:	f8c8 3000 	str.w	r3, [r8]
 80064d6:	b003      	add	sp, #12
 80064d8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80064dc:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80064e0:	eba7 0b03 	sub.w	fp, r7, r3
 80064e4:	f8db 2004 	ldr.w	r2, [fp, #4]
 80064e8:	f022 0203 	bic.w	r2, r2, #3
 80064ec:	18b3      	adds	r3, r6, r2
 80064ee:	428b      	cmp	r3, r1
 80064f0:	dbbf      	blt.n	8006472 <_realloc_r+0x5a>
 80064f2:	46da      	mov	sl, fp
 80064f4:	f8db 100c 	ldr.w	r1, [fp, #12]
 80064f8:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80064fc:	1f32      	subs	r2, r6, #4
 80064fe:	2a24      	cmp	r2, #36	; 0x24
 8006500:	60c1      	str	r1, [r0, #12]
 8006502:	eb0b 0903 	add.w	r9, fp, r3
 8006506:	6088      	str	r0, [r1, #8]
 8006508:	f200 80c6 	bhi.w	8006698 <_realloc_r+0x280>
 800650c:	2a13      	cmp	r2, #19
 800650e:	6829      	ldr	r1, [r5, #0]
 8006510:	f240 80c0 	bls.w	8006694 <_realloc_r+0x27c>
 8006514:	f8cb 1008 	str.w	r1, [fp, #8]
 8006518:	6869      	ldr	r1, [r5, #4]
 800651a:	f8cb 100c 	str.w	r1, [fp, #12]
 800651e:	2a1b      	cmp	r2, #27
 8006520:	68a9      	ldr	r1, [r5, #8]
 8006522:	f200 80d8 	bhi.w	80066d6 <_realloc_r+0x2be>
 8006526:	f10b 0210 	add.w	r2, fp, #16
 800652a:	3508      	adds	r5, #8
 800652c:	6011      	str	r1, [r2, #0]
 800652e:	6869      	ldr	r1, [r5, #4]
 8006530:	6051      	str	r1, [r2, #4]
 8006532:	68a9      	ldr	r1, [r5, #8]
 8006534:	6091      	str	r1, [r2, #8]
 8006536:	461e      	mov	r6, r3
 8006538:	465f      	mov	r7, fp
 800653a:	4655      	mov	r5, sl
 800653c:	687b      	ldr	r3, [r7, #4]
 800653e:	1b32      	subs	r2, r6, r4
 8006540:	2a0f      	cmp	r2, #15
 8006542:	f003 0301 	and.w	r3, r3, #1
 8006546:	d822      	bhi.n	800658e <_realloc_r+0x176>
 8006548:	4333      	orrs	r3, r6
 800654a:	607b      	str	r3, [r7, #4]
 800654c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006550:	f043 0301 	orr.w	r3, r3, #1
 8006554:	f8c9 3004 	str.w	r3, [r9, #4]
 8006558:	4640      	mov	r0, r8
 800655a:	f7ff fc4d 	bl	8005df8 <__malloc_unlock>
 800655e:	46aa      	mov	sl, r5
 8006560:	4650      	mov	r0, sl
 8006562:	b003      	add	sp, #12
 8006564:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006568:	4611      	mov	r1, r2
 800656a:	b003      	add	sp, #12
 800656c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006570:	f7ff b934 	b.w	80057dc <_malloc_r>
 8006574:	f020 0003 	bic.w	r0, r0, #3
 8006578:	1833      	adds	r3, r6, r0
 800657a:	428b      	cmp	r3, r1
 800657c:	db61      	blt.n	8006642 <_realloc_r+0x22a>
 800657e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006582:	461e      	mov	r6, r3
 8006584:	60ca      	str	r2, [r1, #12]
 8006586:	eb07 0903 	add.w	r9, r7, r3
 800658a:	6091      	str	r1, [r2, #8]
 800658c:	e7d6      	b.n	800653c <_realloc_r+0x124>
 800658e:	1939      	adds	r1, r7, r4
 8006590:	4323      	orrs	r3, r4
 8006592:	f042 0201 	orr.w	r2, r2, #1
 8006596:	607b      	str	r3, [r7, #4]
 8006598:	604a      	str	r2, [r1, #4]
 800659a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800659e:	f043 0301 	orr.w	r3, r3, #1
 80065a2:	3108      	adds	r1, #8
 80065a4:	f8c9 3004 	str.w	r3, [r9, #4]
 80065a8:	4640      	mov	r0, r8
 80065aa:	f7fe fded 	bl	8005188 <_free_r>
 80065ae:	e7d3      	b.n	8006558 <_realloc_r+0x140>
 80065b0:	6840      	ldr	r0, [r0, #4]
 80065b2:	f020 0903 	bic.w	r9, r0, #3
 80065b6:	44b1      	add	r9, r6
 80065b8:	f104 0010 	add.w	r0, r4, #16
 80065bc:	4581      	cmp	r9, r0
 80065be:	da77      	bge.n	80066b0 <_realloc_r+0x298>
 80065c0:	07d2      	lsls	r2, r2, #31
 80065c2:	f53f af56 	bmi.w	8006472 <_realloc_r+0x5a>
 80065c6:	f855 2c08 	ldr.w	r2, [r5, #-8]
 80065ca:	eba7 0b02 	sub.w	fp, r7, r2
 80065ce:	f8db 2004 	ldr.w	r2, [fp, #4]
 80065d2:	f022 0203 	bic.w	r2, r2, #3
 80065d6:	4491      	add	r9, r2
 80065d8:	4548      	cmp	r0, r9
 80065da:	dc87      	bgt.n	80064ec <_realloc_r+0xd4>
 80065dc:	46da      	mov	sl, fp
 80065de:	f8db 100c 	ldr.w	r1, [fp, #12]
 80065e2:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80065e6:	1f32      	subs	r2, r6, #4
 80065e8:	2a24      	cmp	r2, #36	; 0x24
 80065ea:	60c1      	str	r1, [r0, #12]
 80065ec:	6088      	str	r0, [r1, #8]
 80065ee:	f200 80a1 	bhi.w	8006734 <_realloc_r+0x31c>
 80065f2:	2a13      	cmp	r2, #19
 80065f4:	6829      	ldr	r1, [r5, #0]
 80065f6:	f240 809b 	bls.w	8006730 <_realloc_r+0x318>
 80065fa:	f8cb 1008 	str.w	r1, [fp, #8]
 80065fe:	6869      	ldr	r1, [r5, #4]
 8006600:	f8cb 100c 	str.w	r1, [fp, #12]
 8006604:	2a1b      	cmp	r2, #27
 8006606:	68a9      	ldr	r1, [r5, #8]
 8006608:	f200 809b 	bhi.w	8006742 <_realloc_r+0x32a>
 800660c:	f10b 0210 	add.w	r2, fp, #16
 8006610:	3508      	adds	r5, #8
 8006612:	6011      	str	r1, [r2, #0]
 8006614:	6869      	ldr	r1, [r5, #4]
 8006616:	6051      	str	r1, [r2, #4]
 8006618:	68a9      	ldr	r1, [r5, #8]
 800661a:	6091      	str	r1, [r2, #8]
 800661c:	eb0b 0104 	add.w	r1, fp, r4
 8006620:	eba9 0204 	sub.w	r2, r9, r4
 8006624:	f042 0201 	orr.w	r2, r2, #1
 8006628:	6099      	str	r1, [r3, #8]
 800662a:	604a      	str	r2, [r1, #4]
 800662c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006630:	f003 0301 	and.w	r3, r3, #1
 8006634:	431c      	orrs	r4, r3
 8006636:	4640      	mov	r0, r8
 8006638:	f8cb 4004 	str.w	r4, [fp, #4]
 800663c:	f7ff fbdc 	bl	8005df8 <__malloc_unlock>
 8006640:	e78e      	b.n	8006560 <_realloc_r+0x148>
 8006642:	07d3      	lsls	r3, r2, #31
 8006644:	f53f af15 	bmi.w	8006472 <_realloc_r+0x5a>
 8006648:	f855 3c08 	ldr.w	r3, [r5, #-8]
 800664c:	eba7 0b03 	sub.w	fp, r7, r3
 8006650:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006654:	f022 0203 	bic.w	r2, r2, #3
 8006658:	4410      	add	r0, r2
 800665a:	1983      	adds	r3, r0, r6
 800665c:	428b      	cmp	r3, r1
 800665e:	f6ff af45 	blt.w	80064ec <_realloc_r+0xd4>
 8006662:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006666:	46da      	mov	sl, fp
 8006668:	60ca      	str	r2, [r1, #12]
 800666a:	6091      	str	r1, [r2, #8]
 800666c:	e742      	b.n	80064f4 <_realloc_r+0xdc>
 800666e:	6001      	str	r1, [r0, #0]
 8006670:	686b      	ldr	r3, [r5, #4]
 8006672:	6043      	str	r3, [r0, #4]
 8006674:	2a1b      	cmp	r2, #27
 8006676:	d83a      	bhi.n	80066ee <_realloc_r+0x2d6>
 8006678:	f105 0208 	add.w	r2, r5, #8
 800667c:	f100 0308 	add.w	r3, r0, #8
 8006680:	68a9      	ldr	r1, [r5, #8]
 8006682:	e710      	b.n	80064a6 <_realloc_r+0x8e>
 8006684:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006688:	f023 0303 	bic.w	r3, r3, #3
 800668c:	441e      	add	r6, r3
 800668e:	eb07 0906 	add.w	r9, r7, r6
 8006692:	e753      	b.n	800653c <_realloc_r+0x124>
 8006694:	4652      	mov	r2, sl
 8006696:	e749      	b.n	800652c <_realloc_r+0x114>
 8006698:	4629      	mov	r1, r5
 800669a:	4650      	mov	r0, sl
 800669c:	461e      	mov	r6, r3
 800669e:	465f      	mov	r7, fp
 80066a0:	f7ff fb40 	bl	8005d24 <memmove>
 80066a4:	4655      	mov	r5, sl
 80066a6:	e749      	b.n	800653c <_realloc_r+0x124>
 80066a8:	4629      	mov	r1, r5
 80066aa:	f7ff fb3b 	bl	8005d24 <memmove>
 80066ae:	e6ff      	b.n	80064b0 <_realloc_r+0x98>
 80066b0:	4427      	add	r7, r4
 80066b2:	eba9 0904 	sub.w	r9, r9, r4
 80066b6:	f049 0201 	orr.w	r2, r9, #1
 80066ba:	609f      	str	r7, [r3, #8]
 80066bc:	607a      	str	r2, [r7, #4]
 80066be:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80066c2:	f003 0301 	and.w	r3, r3, #1
 80066c6:	431c      	orrs	r4, r3
 80066c8:	4640      	mov	r0, r8
 80066ca:	f845 4c04 	str.w	r4, [r5, #-4]
 80066ce:	f7ff fb93 	bl	8005df8 <__malloc_unlock>
 80066d2:	46aa      	mov	sl, r5
 80066d4:	e744      	b.n	8006560 <_realloc_r+0x148>
 80066d6:	f8cb 1010 	str.w	r1, [fp, #16]
 80066da:	68e9      	ldr	r1, [r5, #12]
 80066dc:	f8cb 1014 	str.w	r1, [fp, #20]
 80066e0:	2a24      	cmp	r2, #36	; 0x24
 80066e2:	d010      	beq.n	8006706 <_realloc_r+0x2ee>
 80066e4:	6929      	ldr	r1, [r5, #16]
 80066e6:	f10b 0218 	add.w	r2, fp, #24
 80066ea:	3510      	adds	r5, #16
 80066ec:	e71e      	b.n	800652c <_realloc_r+0x114>
 80066ee:	68ab      	ldr	r3, [r5, #8]
 80066f0:	6083      	str	r3, [r0, #8]
 80066f2:	68eb      	ldr	r3, [r5, #12]
 80066f4:	60c3      	str	r3, [r0, #12]
 80066f6:	2a24      	cmp	r2, #36	; 0x24
 80066f8:	d010      	beq.n	800671c <_realloc_r+0x304>
 80066fa:	f105 0210 	add.w	r2, r5, #16
 80066fe:	f100 0310 	add.w	r3, r0, #16
 8006702:	6929      	ldr	r1, [r5, #16]
 8006704:	e6cf      	b.n	80064a6 <_realloc_r+0x8e>
 8006706:	692a      	ldr	r2, [r5, #16]
 8006708:	f8cb 2018 	str.w	r2, [fp, #24]
 800670c:	696a      	ldr	r2, [r5, #20]
 800670e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006712:	69a9      	ldr	r1, [r5, #24]
 8006714:	f10b 0220 	add.w	r2, fp, #32
 8006718:	3518      	adds	r5, #24
 800671a:	e707      	b.n	800652c <_realloc_r+0x114>
 800671c:	692b      	ldr	r3, [r5, #16]
 800671e:	6103      	str	r3, [r0, #16]
 8006720:	696b      	ldr	r3, [r5, #20]
 8006722:	6143      	str	r3, [r0, #20]
 8006724:	69a9      	ldr	r1, [r5, #24]
 8006726:	f105 0218 	add.w	r2, r5, #24
 800672a:	f100 0318 	add.w	r3, r0, #24
 800672e:	e6ba      	b.n	80064a6 <_realloc_r+0x8e>
 8006730:	4652      	mov	r2, sl
 8006732:	e76e      	b.n	8006612 <_realloc_r+0x1fa>
 8006734:	4629      	mov	r1, r5
 8006736:	4650      	mov	r0, sl
 8006738:	9301      	str	r3, [sp, #4]
 800673a:	f7ff faf3 	bl	8005d24 <memmove>
 800673e:	9b01      	ldr	r3, [sp, #4]
 8006740:	e76c      	b.n	800661c <_realloc_r+0x204>
 8006742:	f8cb 1010 	str.w	r1, [fp, #16]
 8006746:	68e9      	ldr	r1, [r5, #12]
 8006748:	f8cb 1014 	str.w	r1, [fp, #20]
 800674c:	2a24      	cmp	r2, #36	; 0x24
 800674e:	d004      	beq.n	800675a <_realloc_r+0x342>
 8006750:	6929      	ldr	r1, [r5, #16]
 8006752:	f10b 0218 	add.w	r2, fp, #24
 8006756:	3510      	adds	r5, #16
 8006758:	e75b      	b.n	8006612 <_realloc_r+0x1fa>
 800675a:	692a      	ldr	r2, [r5, #16]
 800675c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006760:	696a      	ldr	r2, [r5, #20]
 8006762:	f8cb 201c 	str.w	r2, [fp, #28]
 8006766:	69a9      	ldr	r1, [r5, #24]
 8006768:	f10b 0220 	add.w	r2, fp, #32
 800676c:	3518      	adds	r5, #24
 800676e:	e750      	b.n	8006612 <_realloc_r+0x1fa>
 8006770:	200005dc 	.word	0x200005dc

08006774 <frexp>:
 8006774:	ec53 2b10 	vmov	r2, r3, d0
 8006778:	b570      	push	{r4, r5, r6, lr}
 800677a:	4e16      	ldr	r6, [pc, #88]	; (80067d4 <frexp+0x60>)
 800677c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006780:	2500      	movs	r5, #0
 8006782:	42b1      	cmp	r1, r6
 8006784:	4604      	mov	r4, r0
 8006786:	6005      	str	r5, [r0, #0]
 8006788:	dc21      	bgt.n	80067ce <frexp+0x5a>
 800678a:	ee10 6a10 	vmov	r6, s0
 800678e:	430e      	orrs	r6, r1
 8006790:	d01d      	beq.n	80067ce <frexp+0x5a>
 8006792:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006796:	4618      	mov	r0, r3
 8006798:	da0c      	bge.n	80067b4 <frexp+0x40>
 800679a:	4619      	mov	r1, r3
 800679c:	2200      	movs	r2, #0
 800679e:	ee10 0a10 	vmov	r0, s0
 80067a2:	4b0d      	ldr	r3, [pc, #52]	; (80067d8 <frexp+0x64>)
 80067a4:	f7fa f9c8 	bl	8000b38 <__aeabi_dmul>
 80067a8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 80067ac:	4602      	mov	r2, r0
 80067ae:	4608      	mov	r0, r1
 80067b0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80067b4:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 80067b8:	1509      	asrs	r1, r1, #20
 80067ba:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 80067be:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 80067c2:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 80067c6:	4429      	add	r1, r5
 80067c8:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80067cc:	6021      	str	r1, [r4, #0]
 80067ce:	ec43 2b10 	vmov	d0, r2, r3
 80067d2:	bd70      	pop	{r4, r5, r6, pc}
 80067d4:	7fefffff 	.word	0x7fefffff
 80067d8:	43500000 	.word	0x43500000

080067dc <_sbrk_r>:
 80067dc:	b538      	push	{r3, r4, r5, lr}
 80067de:	4c07      	ldr	r4, [pc, #28]	; (80067fc <_sbrk_r+0x20>)
 80067e0:	2300      	movs	r3, #0
 80067e2:	4605      	mov	r5, r0
 80067e4:	4608      	mov	r0, r1
 80067e6:	6023      	str	r3, [r4, #0]
 80067e8:	f7fb fc34 	bl	8002054 <_sbrk>
 80067ec:	1c43      	adds	r3, r0, #1
 80067ee:	d000      	beq.n	80067f2 <_sbrk_r+0x16>
 80067f0:	bd38      	pop	{r3, r4, r5, pc}
 80067f2:	6823      	ldr	r3, [r4, #0]
 80067f4:	2b00      	cmp	r3, #0
 80067f6:	d0fb      	beq.n	80067f0 <_sbrk_r+0x14>
 80067f8:	602b      	str	r3, [r5, #0]
 80067fa:	bd38      	pop	{r3, r4, r5, pc}
 80067fc:	20000ca0 	.word	0x20000ca0

08006800 <__sread>:
 8006800:	b510      	push	{r4, lr}
 8006802:	460c      	mov	r4, r1
 8006804:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006808:	f000 fabc 	bl	8006d84 <_read_r>
 800680c:	2800      	cmp	r0, #0
 800680e:	db03      	blt.n	8006818 <__sread+0x18>
 8006810:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006812:	4403      	add	r3, r0
 8006814:	6523      	str	r3, [r4, #80]	; 0x50
 8006816:	bd10      	pop	{r4, pc}
 8006818:	89a3      	ldrh	r3, [r4, #12]
 800681a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 800681e:	81a3      	strh	r3, [r4, #12]
 8006820:	bd10      	pop	{r4, pc}
 8006822:	bf00      	nop

08006824 <__swrite>:
 8006824:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006828:	4616      	mov	r6, r2
 800682a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 800682e:	461f      	mov	r7, r3
 8006830:	05d3      	lsls	r3, r2, #23
 8006832:	460c      	mov	r4, r1
 8006834:	4605      	mov	r5, r0
 8006836:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800683a:	d507      	bpl.n	800684c <__swrite+0x28>
 800683c:	2200      	movs	r2, #0
 800683e:	2302      	movs	r3, #2
 8006840:	f000 fa74 	bl	8006d2c <_lseek_r>
 8006844:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006848:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800684c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006850:	81a2      	strh	r2, [r4, #12]
 8006852:	463b      	mov	r3, r7
 8006854:	4632      	mov	r2, r6
 8006856:	4628      	mov	r0, r5
 8006858:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800685c:	f000 b88c 	b.w	8006978 <_write_r>

08006860 <__sseek>:
 8006860:	b510      	push	{r4, lr}
 8006862:	460c      	mov	r4, r1
 8006864:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006868:	f000 fa60 	bl	8006d2c <_lseek_r>
 800686c:	89a3      	ldrh	r3, [r4, #12]
 800686e:	1c42      	adds	r2, r0, #1
 8006870:	bf0e      	itee	eq
 8006872:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006876:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 800687a:	6520      	strne	r0, [r4, #80]	; 0x50
 800687c:	81a3      	strh	r3, [r4, #12]
 800687e:	bd10      	pop	{r4, pc}

08006880 <__sclose>:
 8006880:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006884:	f000 b922 	b.w	8006acc <_close_r>

08006888 <strncpy>:
 8006888:	ea40 0301 	orr.w	r3, r0, r1
 800688c:	079b      	lsls	r3, r3, #30
 800688e:	b470      	push	{r4, r5, r6}
 8006890:	d12a      	bne.n	80068e8 <strncpy+0x60>
 8006892:	2a03      	cmp	r2, #3
 8006894:	d928      	bls.n	80068e8 <strncpy+0x60>
 8006896:	460c      	mov	r4, r1
 8006898:	4603      	mov	r3, r0
 800689a:	4621      	mov	r1, r4
 800689c:	f854 6b04 	ldr.w	r6, [r4], #4
 80068a0:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 80068a4:	ea25 0506 	bic.w	r5, r5, r6
 80068a8:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 80068ac:	d106      	bne.n	80068bc <strncpy+0x34>
 80068ae:	3a04      	subs	r2, #4
 80068b0:	2a03      	cmp	r2, #3
 80068b2:	f843 6b04 	str.w	r6, [r3], #4
 80068b6:	4621      	mov	r1, r4
 80068b8:	d8ef      	bhi.n	800689a <strncpy+0x12>
 80068ba:	b19a      	cbz	r2, 80068e4 <strncpy+0x5c>
 80068bc:	780c      	ldrb	r4, [r1, #0]
 80068be:	701c      	strb	r4, [r3, #0]
 80068c0:	3a01      	subs	r2, #1
 80068c2:	3301      	adds	r3, #1
 80068c4:	b13c      	cbz	r4, 80068d6 <strncpy+0x4e>
 80068c6:	b16a      	cbz	r2, 80068e4 <strncpy+0x5c>
 80068c8:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 80068cc:	f803 4b01 	strb.w	r4, [r3], #1
 80068d0:	3a01      	subs	r2, #1
 80068d2:	2c00      	cmp	r4, #0
 80068d4:	d1f7      	bne.n	80068c6 <strncpy+0x3e>
 80068d6:	b12a      	cbz	r2, 80068e4 <strncpy+0x5c>
 80068d8:	441a      	add	r2, r3
 80068da:	2100      	movs	r1, #0
 80068dc:	f803 1b01 	strb.w	r1, [r3], #1
 80068e0:	4293      	cmp	r3, r2
 80068e2:	d1fb      	bne.n	80068dc <strncpy+0x54>
 80068e4:	bc70      	pop	{r4, r5, r6}
 80068e6:	4770      	bx	lr
 80068e8:	4603      	mov	r3, r0
 80068ea:	e7e6      	b.n	80068ba <strncpy+0x32>

080068ec <__sprint_r.part.0>:
 80068ec:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80068f0:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 80068f2:	049c      	lsls	r4, r3, #18
 80068f4:	4692      	mov	sl, r2
 80068f6:	d52d      	bpl.n	8006954 <__sprint_r.part.0+0x68>
 80068f8:	6893      	ldr	r3, [r2, #8]
 80068fa:	6812      	ldr	r2, [r2, #0]
 80068fc:	b343      	cbz	r3, 8006950 <__sprint_r.part.0+0x64>
 80068fe:	460e      	mov	r6, r1
 8006900:	4607      	mov	r7, r0
 8006902:	f102 0908 	add.w	r9, r2, #8
 8006906:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 800690a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 800690e:	d015      	beq.n	800693c <__sprint_r.part.0+0x50>
 8006910:	3d04      	subs	r5, #4
 8006912:	2400      	movs	r4, #0
 8006914:	e001      	b.n	800691a <__sprint_r.part.0+0x2e>
 8006916:	45a0      	cmp	r8, r4
 8006918:	d00e      	beq.n	8006938 <__sprint_r.part.0+0x4c>
 800691a:	4632      	mov	r2, r6
 800691c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006920:	4638      	mov	r0, r7
 8006922:	f000 f99d 	bl	8006c60 <_fputwc_r>
 8006926:	1c43      	adds	r3, r0, #1
 8006928:	f104 0401 	add.w	r4, r4, #1
 800692c:	d1f3      	bne.n	8006916 <__sprint_r.part.0+0x2a>
 800692e:	2300      	movs	r3, #0
 8006930:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006934:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006938:	f8da 3008 	ldr.w	r3, [sl, #8]
 800693c:	f02b 0b03 	bic.w	fp, fp, #3
 8006940:	eba3 030b 	sub.w	r3, r3, fp
 8006944:	f8ca 3008 	str.w	r3, [sl, #8]
 8006948:	f109 0908 	add.w	r9, r9, #8
 800694c:	2b00      	cmp	r3, #0
 800694e:	d1da      	bne.n	8006906 <__sprint_r.part.0+0x1a>
 8006950:	2000      	movs	r0, #0
 8006952:	e7ec      	b.n	800692e <__sprint_r.part.0+0x42>
 8006954:	f7fe fd0c 	bl	8005370 <__sfvwrite_r>
 8006958:	2300      	movs	r3, #0
 800695a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 800695e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006962:	bf00      	nop

08006964 <__sprint_r>:
 8006964:	6893      	ldr	r3, [r2, #8]
 8006966:	b10b      	cbz	r3, 800696c <__sprint_r+0x8>
 8006968:	f7ff bfc0 	b.w	80068ec <__sprint_r.part.0>
 800696c:	b410      	push	{r4}
 800696e:	4618      	mov	r0, r3
 8006970:	6053      	str	r3, [r2, #4]
 8006972:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006976:	4770      	bx	lr

08006978 <_write_r>:
 8006978:	b570      	push	{r4, r5, r6, lr}
 800697a:	460d      	mov	r5, r1
 800697c:	4c08      	ldr	r4, [pc, #32]	; (80069a0 <_write_r+0x28>)
 800697e:	4611      	mov	r1, r2
 8006980:	4606      	mov	r6, r0
 8006982:	461a      	mov	r2, r3
 8006984:	4628      	mov	r0, r5
 8006986:	2300      	movs	r3, #0
 8006988:	6023      	str	r3, [r4, #0]
 800698a:	f7fb fb50 	bl	800202e <_write>
 800698e:	1c43      	adds	r3, r0, #1
 8006990:	d000      	beq.n	8006994 <_write_r+0x1c>
 8006992:	bd70      	pop	{r4, r5, r6, pc}
 8006994:	6823      	ldr	r3, [r4, #0]
 8006996:	2b00      	cmp	r3, #0
 8006998:	d0fb      	beq.n	8006992 <_write_r+0x1a>
 800699a:	6033      	str	r3, [r6, #0]
 800699c:	bd70      	pop	{r4, r5, r6, pc}
 800699e:	bf00      	nop
 80069a0:	20000ca0 	.word	0x20000ca0

080069a4 <__register_exitproc>:
 80069a4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80069a8:	4d2b      	ldr	r5, [pc, #172]	; (8006a58 <__register_exitproc+0xb4>)
 80069aa:	4606      	mov	r6, r0
 80069ac:	6828      	ldr	r0, [r5, #0]
 80069ae:	4698      	mov	r8, r3
 80069b0:	460f      	mov	r7, r1
 80069b2:	4691      	mov	r9, r2
 80069b4:	f7fe fe96 	bl	80056e4 <__retarget_lock_acquire_recursive>
 80069b8:	4b28      	ldr	r3, [pc, #160]	; (8006a5c <__register_exitproc+0xb8>)
 80069ba:	681c      	ldr	r4, [r3, #0]
 80069bc:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 80069c0:	2b00      	cmp	r3, #0
 80069c2:	d03d      	beq.n	8006a40 <__register_exitproc+0x9c>
 80069c4:	685a      	ldr	r2, [r3, #4]
 80069c6:	2a1f      	cmp	r2, #31
 80069c8:	dc0d      	bgt.n	80069e6 <__register_exitproc+0x42>
 80069ca:	f102 0c01 	add.w	ip, r2, #1
 80069ce:	bb16      	cbnz	r6, 8006a16 <__register_exitproc+0x72>
 80069d0:	3202      	adds	r2, #2
 80069d2:	f8c3 c004 	str.w	ip, [r3, #4]
 80069d6:	6828      	ldr	r0, [r5, #0]
 80069d8:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 80069dc:	f7fe fe84 	bl	80056e8 <__retarget_lock_release_recursive>
 80069e0:	2000      	movs	r0, #0
 80069e2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80069e6:	4b1e      	ldr	r3, [pc, #120]	; (8006a60 <__register_exitproc+0xbc>)
 80069e8:	b37b      	cbz	r3, 8006a4a <__register_exitproc+0xa6>
 80069ea:	f44f 70c8 	mov.w	r0, #400	; 0x190
 80069ee:	f3af 8000 	nop.w
 80069f2:	4603      	mov	r3, r0
 80069f4:	b348      	cbz	r0, 8006a4a <__register_exitproc+0xa6>
 80069f6:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 80069fa:	2100      	movs	r1, #0
 80069fc:	e9c0 2100 	strd	r2, r1, [r0]
 8006a00:	f04f 0c01 	mov.w	ip, #1
 8006a04:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006a08:	460a      	mov	r2, r1
 8006a0a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006a0e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006a12:	2e00      	cmp	r6, #0
 8006a14:	d0dc      	beq.n	80069d0 <__register_exitproc+0x2c>
 8006a16:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006a1a:	2401      	movs	r4, #1
 8006a1c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006a20:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006a24:	4094      	lsls	r4, r2
 8006a26:	4320      	orrs	r0, r4
 8006a28:	2e02      	cmp	r6, #2
 8006a2a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006a2e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006a32:	d1cd      	bne.n	80069d0 <__register_exitproc+0x2c>
 8006a34:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006a38:	430c      	orrs	r4, r1
 8006a3a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006a3e:	e7c7      	b.n	80069d0 <__register_exitproc+0x2c>
 8006a40:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006a44:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006a48:	e7bc      	b.n	80069c4 <__register_exitproc+0x20>
 8006a4a:	6828      	ldr	r0, [r5, #0]
 8006a4c:	f7fe fe4c 	bl	80056e8 <__retarget_lock_release_recursive>
 8006a50:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006a54:	e7c5      	b.n	80069e2 <__register_exitproc+0x3e>
 8006a56:	bf00      	nop
 8006a58:	200005d8 	.word	0x200005d8
 8006a5c:	0800700c 	.word	0x0800700c
 8006a60:	00000000 	.word	0x00000000

08006a64 <_calloc_r>:
 8006a64:	b510      	push	{r4, lr}
 8006a66:	fb02 f101 	mul.w	r1, r2, r1
 8006a6a:	f7fe feb7 	bl	80057dc <_malloc_r>
 8006a6e:	4604      	mov	r4, r0
 8006a70:	b1d8      	cbz	r0, 8006aaa <_calloc_r+0x46>
 8006a72:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006a76:	f022 0203 	bic.w	r2, r2, #3
 8006a7a:	3a04      	subs	r2, #4
 8006a7c:	2a24      	cmp	r2, #36	; 0x24
 8006a7e:	d81d      	bhi.n	8006abc <_calloc_r+0x58>
 8006a80:	2a13      	cmp	r2, #19
 8006a82:	d914      	bls.n	8006aae <_calloc_r+0x4a>
 8006a84:	2300      	movs	r3, #0
 8006a86:	2a1b      	cmp	r2, #27
 8006a88:	e9c0 3300 	strd	r3, r3, [r0]
 8006a8c:	d91b      	bls.n	8006ac6 <_calloc_r+0x62>
 8006a8e:	2a24      	cmp	r2, #36	; 0x24
 8006a90:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006a94:	bf0a      	itet	eq
 8006a96:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006a9a:	f100 0210 	addne.w	r2, r0, #16
 8006a9e:	f100 0218 	addeq.w	r2, r0, #24
 8006aa2:	2300      	movs	r3, #0
 8006aa4:	e9c2 3300 	strd	r3, r3, [r2]
 8006aa8:	6093      	str	r3, [r2, #8]
 8006aaa:	4620      	mov	r0, r4
 8006aac:	bd10      	pop	{r4, pc}
 8006aae:	4602      	mov	r2, r0
 8006ab0:	2300      	movs	r3, #0
 8006ab2:	e9c2 3300 	strd	r3, r3, [r2]
 8006ab6:	6093      	str	r3, [r2, #8]
 8006ab8:	4620      	mov	r0, r4
 8006aba:	bd10      	pop	{r4, pc}
 8006abc:	2100      	movs	r1, #0
 8006abe:	f7fb fb6f 	bl	80021a0 <memset>
 8006ac2:	4620      	mov	r0, r4
 8006ac4:	bd10      	pop	{r4, pc}
 8006ac6:	f100 0208 	add.w	r2, r0, #8
 8006aca:	e7f1      	b.n	8006ab0 <_calloc_r+0x4c>

08006acc <_close_r>:
 8006acc:	b538      	push	{r3, r4, r5, lr}
 8006ace:	4c07      	ldr	r4, [pc, #28]	; (8006aec <_close_r+0x20>)
 8006ad0:	2300      	movs	r3, #0
 8006ad2:	4605      	mov	r5, r0
 8006ad4:	4608      	mov	r0, r1
 8006ad6:	6023      	str	r3, [r4, #0]
 8006ad8:	f7fb fad8 	bl	800208c <_close>
 8006adc:	1c43      	adds	r3, r0, #1
 8006ade:	d000      	beq.n	8006ae2 <_close_r+0x16>
 8006ae0:	bd38      	pop	{r3, r4, r5, pc}
 8006ae2:	6823      	ldr	r3, [r4, #0]
 8006ae4:	2b00      	cmp	r3, #0
 8006ae6:	d0fb      	beq.n	8006ae0 <_close_r+0x14>
 8006ae8:	602b      	str	r3, [r5, #0]
 8006aea:	bd38      	pop	{r3, r4, r5, pc}
 8006aec:	20000ca0 	.word	0x20000ca0

08006af0 <_fclose_r>:
 8006af0:	b570      	push	{r4, r5, r6, lr}
 8006af2:	2900      	cmp	r1, #0
 8006af4:	d048      	beq.n	8006b88 <_fclose_r+0x98>
 8006af6:	4605      	mov	r5, r0
 8006af8:	460c      	mov	r4, r1
 8006afa:	b110      	cbz	r0, 8006b02 <_fclose_r+0x12>
 8006afc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006afe:	2b00      	cmp	r3, #0
 8006b00:	d048      	beq.n	8006b94 <_fclose_r+0xa4>
 8006b02:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006b04:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b08:	07d0      	lsls	r0, r2, #31
 8006b0a:	d440      	bmi.n	8006b8e <_fclose_r+0x9e>
 8006b0c:	0599      	lsls	r1, r3, #22
 8006b0e:	d530      	bpl.n	8006b72 <_fclose_r+0x82>
 8006b10:	4621      	mov	r1, r4
 8006b12:	4628      	mov	r0, r5
 8006b14:	f7fe f990 	bl	8004e38 <__sflush_r>
 8006b18:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006b1a:	4606      	mov	r6, r0
 8006b1c:	b133      	cbz	r3, 8006b2c <_fclose_r+0x3c>
 8006b1e:	69e1      	ldr	r1, [r4, #28]
 8006b20:	4628      	mov	r0, r5
 8006b22:	4798      	blx	r3
 8006b24:	2800      	cmp	r0, #0
 8006b26:	bfb8      	it	lt
 8006b28:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006b2c:	89a3      	ldrh	r3, [r4, #12]
 8006b2e:	061a      	lsls	r2, r3, #24
 8006b30:	d43c      	bmi.n	8006bac <_fclose_r+0xbc>
 8006b32:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006b34:	b141      	cbz	r1, 8006b48 <_fclose_r+0x58>
 8006b36:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006b3a:	4299      	cmp	r1, r3
 8006b3c:	d002      	beq.n	8006b44 <_fclose_r+0x54>
 8006b3e:	4628      	mov	r0, r5
 8006b40:	f7fe fb22 	bl	8005188 <_free_r>
 8006b44:	2300      	movs	r3, #0
 8006b46:	6323      	str	r3, [r4, #48]	; 0x30
 8006b48:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006b4a:	b121      	cbz	r1, 8006b56 <_fclose_r+0x66>
 8006b4c:	4628      	mov	r0, r5
 8006b4e:	f7fe fb1b 	bl	8005188 <_free_r>
 8006b52:	2300      	movs	r3, #0
 8006b54:	6463      	str	r3, [r4, #68]	; 0x44
 8006b56:	f7fe faa1 	bl	800509c <__sfp_lock_acquire>
 8006b5a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006b5c:	2200      	movs	r2, #0
 8006b5e:	07db      	lsls	r3, r3, #31
 8006b60:	81a2      	strh	r2, [r4, #12]
 8006b62:	d51f      	bpl.n	8006ba4 <_fclose_r+0xb4>
 8006b64:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b66:	f7fe fdbb 	bl	80056e0 <__retarget_lock_close_recursive>
 8006b6a:	f7fe fa9d 	bl	80050a8 <__sfp_lock_release>
 8006b6e:	4630      	mov	r0, r6
 8006b70:	bd70      	pop	{r4, r5, r6, pc}
 8006b72:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b74:	f7fe fdb6 	bl	80056e4 <__retarget_lock_acquire_recursive>
 8006b78:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b7c:	2b00      	cmp	r3, #0
 8006b7e:	d1c7      	bne.n	8006b10 <_fclose_r+0x20>
 8006b80:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006b82:	f016 0601 	ands.w	r6, r6, #1
 8006b86:	d016      	beq.n	8006bb6 <_fclose_r+0xc6>
 8006b88:	2600      	movs	r6, #0
 8006b8a:	4630      	mov	r0, r6
 8006b8c:	bd70      	pop	{r4, r5, r6, pc}
 8006b8e:	2b00      	cmp	r3, #0
 8006b90:	d0fa      	beq.n	8006b88 <_fclose_r+0x98>
 8006b92:	e7bd      	b.n	8006b10 <_fclose_r+0x20>
 8006b94:	f7fe fa56 	bl	8005044 <__sinit>
 8006b98:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006b9a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b9e:	07d0      	lsls	r0, r2, #31
 8006ba0:	d4f5      	bmi.n	8006b8e <_fclose_r+0x9e>
 8006ba2:	e7b3      	b.n	8006b0c <_fclose_r+0x1c>
 8006ba4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ba6:	f7fe fd9f 	bl	80056e8 <__retarget_lock_release_recursive>
 8006baa:	e7db      	b.n	8006b64 <_fclose_r+0x74>
 8006bac:	6921      	ldr	r1, [r4, #16]
 8006bae:	4628      	mov	r0, r5
 8006bb0:	f7fe faea 	bl	8005188 <_free_r>
 8006bb4:	e7bd      	b.n	8006b32 <_fclose_r+0x42>
 8006bb6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006bb8:	f7fe fd96 	bl	80056e8 <__retarget_lock_release_recursive>
 8006bbc:	4630      	mov	r0, r6
 8006bbe:	bd70      	pop	{r4, r5, r6, pc}

08006bc0 <__fputwc>:
 8006bc0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006bc4:	b082      	sub	sp, #8
 8006bc6:	4681      	mov	r9, r0
 8006bc8:	4688      	mov	r8, r1
 8006bca:	4614      	mov	r4, r2
 8006bcc:	f000 f8a0 	bl	8006d10 <__locale_mb_cur_max>
 8006bd0:	2801      	cmp	r0, #1
 8006bd2:	d103      	bne.n	8006bdc <__fputwc+0x1c>
 8006bd4:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006bd8:	2bfe      	cmp	r3, #254	; 0xfe
 8006bda:	d933      	bls.n	8006c44 <__fputwc+0x84>
 8006bdc:	4642      	mov	r2, r8
 8006bde:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006be2:	a901      	add	r1, sp, #4
 8006be4:	4648      	mov	r0, r9
 8006be6:	f000 f93b 	bl	8006e60 <_wcrtomb_r>
 8006bea:	1c42      	adds	r2, r0, #1
 8006bec:	4606      	mov	r6, r0
 8006bee:	d02f      	beq.n	8006c50 <__fputwc+0x90>
 8006bf0:	b320      	cbz	r0, 8006c3c <__fputwc+0x7c>
 8006bf2:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006bf6:	2500      	movs	r5, #0
 8006bf8:	f10d 0a04 	add.w	sl, sp, #4
 8006bfc:	e009      	b.n	8006c12 <__fputwc+0x52>
 8006bfe:	6823      	ldr	r3, [r4, #0]
 8006c00:	1c5a      	adds	r2, r3, #1
 8006c02:	6022      	str	r2, [r4, #0]
 8006c04:	f883 c000 	strb.w	ip, [r3]
 8006c08:	3501      	adds	r5, #1
 8006c0a:	42b5      	cmp	r5, r6
 8006c0c:	d216      	bcs.n	8006c3c <__fputwc+0x7c>
 8006c0e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006c12:	68a3      	ldr	r3, [r4, #8]
 8006c14:	3b01      	subs	r3, #1
 8006c16:	2b00      	cmp	r3, #0
 8006c18:	60a3      	str	r3, [r4, #8]
 8006c1a:	daf0      	bge.n	8006bfe <__fputwc+0x3e>
 8006c1c:	69a7      	ldr	r7, [r4, #24]
 8006c1e:	42bb      	cmp	r3, r7
 8006c20:	4661      	mov	r1, ip
 8006c22:	4622      	mov	r2, r4
 8006c24:	4648      	mov	r0, r9
 8006c26:	db02      	blt.n	8006c2e <__fputwc+0x6e>
 8006c28:	f1bc 0f0a 	cmp.w	ip, #10
 8006c2c:	d1e7      	bne.n	8006bfe <__fputwc+0x3e>
 8006c2e:	f000 f8bf 	bl	8006db0 <__swbuf_r>
 8006c32:	1c43      	adds	r3, r0, #1
 8006c34:	d1e8      	bne.n	8006c08 <__fputwc+0x48>
 8006c36:	b002      	add	sp, #8
 8006c38:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c3c:	4640      	mov	r0, r8
 8006c3e:	b002      	add	sp, #8
 8006c40:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c44:	fa5f fc88 	uxtb.w	ip, r8
 8006c48:	4606      	mov	r6, r0
 8006c4a:	f88d c004 	strb.w	ip, [sp, #4]
 8006c4e:	e7d2      	b.n	8006bf6 <__fputwc+0x36>
 8006c50:	89a3      	ldrh	r3, [r4, #12]
 8006c52:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006c56:	81a3      	strh	r3, [r4, #12]
 8006c58:	b002      	add	sp, #8
 8006c5a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c5e:	bf00      	nop

08006c60 <_fputwc_r>:
 8006c60:	b530      	push	{r4, r5, lr}
 8006c62:	4605      	mov	r5, r0
 8006c64:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006c66:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006c6a:	07c0      	lsls	r0, r0, #31
 8006c6c:	4614      	mov	r4, r2
 8006c6e:	b083      	sub	sp, #12
 8006c70:	b29a      	uxth	r2, r3
 8006c72:	d401      	bmi.n	8006c78 <_fputwc_r+0x18>
 8006c74:	0590      	lsls	r0, r2, #22
 8006c76:	d51c      	bpl.n	8006cb2 <_fputwc_r+0x52>
 8006c78:	0490      	lsls	r0, r2, #18
 8006c7a:	d406      	bmi.n	8006c8a <_fputwc_r+0x2a>
 8006c7c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c7e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006c82:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006c86:	81a3      	strh	r3, [r4, #12]
 8006c88:	6662      	str	r2, [r4, #100]	; 0x64
 8006c8a:	4628      	mov	r0, r5
 8006c8c:	4622      	mov	r2, r4
 8006c8e:	f7ff ff97 	bl	8006bc0 <__fputwc>
 8006c92:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006c94:	07da      	lsls	r2, r3, #31
 8006c96:	4605      	mov	r5, r0
 8006c98:	d402      	bmi.n	8006ca0 <_fputwc_r+0x40>
 8006c9a:	89a3      	ldrh	r3, [r4, #12]
 8006c9c:	059b      	lsls	r3, r3, #22
 8006c9e:	d502      	bpl.n	8006ca6 <_fputwc_r+0x46>
 8006ca0:	4628      	mov	r0, r5
 8006ca2:	b003      	add	sp, #12
 8006ca4:	bd30      	pop	{r4, r5, pc}
 8006ca6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ca8:	f7fe fd1e 	bl	80056e8 <__retarget_lock_release_recursive>
 8006cac:	4628      	mov	r0, r5
 8006cae:	b003      	add	sp, #12
 8006cb0:	bd30      	pop	{r4, r5, pc}
 8006cb2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cb4:	9101      	str	r1, [sp, #4]
 8006cb6:	f7fe fd15 	bl	80056e4 <__retarget_lock_acquire_recursive>
 8006cba:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006cbe:	9901      	ldr	r1, [sp, #4]
 8006cc0:	b29a      	uxth	r2, r3
 8006cc2:	e7d9      	b.n	8006c78 <_fputwc_r+0x18>

08006cc4 <_fstat_r>:
 8006cc4:	b538      	push	{r3, r4, r5, lr}
 8006cc6:	460b      	mov	r3, r1
 8006cc8:	4c07      	ldr	r4, [pc, #28]	; (8006ce8 <_fstat_r+0x24>)
 8006cca:	4605      	mov	r5, r0
 8006ccc:	4611      	mov	r1, r2
 8006cce:	4618      	mov	r0, r3
 8006cd0:	2300      	movs	r3, #0
 8006cd2:	6023      	str	r3, [r4, #0]
 8006cd4:	f7fb f9dd 	bl	8002092 <_fstat>
 8006cd8:	1c43      	adds	r3, r0, #1
 8006cda:	d000      	beq.n	8006cde <_fstat_r+0x1a>
 8006cdc:	bd38      	pop	{r3, r4, r5, pc}
 8006cde:	6823      	ldr	r3, [r4, #0]
 8006ce0:	2b00      	cmp	r3, #0
 8006ce2:	d0fb      	beq.n	8006cdc <_fstat_r+0x18>
 8006ce4:	602b      	str	r3, [r5, #0]
 8006ce6:	bd38      	pop	{r3, r4, r5, pc}
 8006ce8:	20000ca0 	.word	0x20000ca0

08006cec <_isatty_r>:
 8006cec:	b538      	push	{r3, r4, r5, lr}
 8006cee:	4c07      	ldr	r4, [pc, #28]	; (8006d0c <_isatty_r+0x20>)
 8006cf0:	2300      	movs	r3, #0
 8006cf2:	4605      	mov	r5, r0
 8006cf4:	4608      	mov	r0, r1
 8006cf6:	6023      	str	r3, [r4, #0]
 8006cf8:	f7fb f9d0 	bl	800209c <_isatty>
 8006cfc:	1c43      	adds	r3, r0, #1
 8006cfe:	d000      	beq.n	8006d02 <_isatty_r+0x16>
 8006d00:	bd38      	pop	{r3, r4, r5, pc}
 8006d02:	6823      	ldr	r3, [r4, #0]
 8006d04:	2b00      	cmp	r3, #0
 8006d06:	d0fb      	beq.n	8006d00 <_isatty_r+0x14>
 8006d08:	602b      	str	r3, [r5, #0]
 8006d0a:	bd38      	pop	{r3, r4, r5, pc}
 8006d0c:	20000ca0 	.word	0x20000ca0

08006d10 <__locale_mb_cur_max>:
 8006d10:	4b04      	ldr	r3, [pc, #16]	; (8006d24 <__locale_mb_cur_max+0x14>)
 8006d12:	4a05      	ldr	r2, [pc, #20]	; (8006d28 <__locale_mb_cur_max+0x18>)
 8006d14:	681b      	ldr	r3, [r3, #0]
 8006d16:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006d18:	2b00      	cmp	r3, #0
 8006d1a:	bf08      	it	eq
 8006d1c:	4613      	moveq	r3, r2
 8006d1e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006d22:	4770      	bx	lr
 8006d24:	200001a8 	.word	0x200001a8
 8006d28:	200009ec 	.word	0x200009ec

08006d2c <_lseek_r>:
 8006d2c:	b570      	push	{r4, r5, r6, lr}
 8006d2e:	460d      	mov	r5, r1
 8006d30:	4c08      	ldr	r4, [pc, #32]	; (8006d54 <_lseek_r+0x28>)
 8006d32:	4611      	mov	r1, r2
 8006d34:	4606      	mov	r6, r0
 8006d36:	461a      	mov	r2, r3
 8006d38:	4628      	mov	r0, r5
 8006d3a:	2300      	movs	r3, #0
 8006d3c:	6023      	str	r3, [r4, #0]
 8006d3e:	f7fb f9af 	bl	80020a0 <_lseek>
 8006d42:	1c43      	adds	r3, r0, #1
 8006d44:	d000      	beq.n	8006d48 <_lseek_r+0x1c>
 8006d46:	bd70      	pop	{r4, r5, r6, pc}
 8006d48:	6823      	ldr	r3, [r4, #0]
 8006d4a:	2b00      	cmp	r3, #0
 8006d4c:	d0fb      	beq.n	8006d46 <_lseek_r+0x1a>
 8006d4e:	6033      	str	r3, [r6, #0]
 8006d50:	bd70      	pop	{r4, r5, r6, pc}
 8006d52:	bf00      	nop
 8006d54:	20000ca0 	.word	0x20000ca0

08006d58 <__ascii_mbtowc>:
 8006d58:	b082      	sub	sp, #8
 8006d5a:	b149      	cbz	r1, 8006d70 <__ascii_mbtowc+0x18>
 8006d5c:	b15a      	cbz	r2, 8006d76 <__ascii_mbtowc+0x1e>
 8006d5e:	b16b      	cbz	r3, 8006d7c <__ascii_mbtowc+0x24>
 8006d60:	7813      	ldrb	r3, [r2, #0]
 8006d62:	600b      	str	r3, [r1, #0]
 8006d64:	7812      	ldrb	r2, [r2, #0]
 8006d66:	1c10      	adds	r0, r2, #0
 8006d68:	bf18      	it	ne
 8006d6a:	2001      	movne	r0, #1
 8006d6c:	b002      	add	sp, #8
 8006d6e:	4770      	bx	lr
 8006d70:	a901      	add	r1, sp, #4
 8006d72:	2a00      	cmp	r2, #0
 8006d74:	d1f3      	bne.n	8006d5e <__ascii_mbtowc+0x6>
 8006d76:	4610      	mov	r0, r2
 8006d78:	b002      	add	sp, #8
 8006d7a:	4770      	bx	lr
 8006d7c:	f06f 0001 	mvn.w	r0, #1
 8006d80:	e7f4      	b.n	8006d6c <__ascii_mbtowc+0x14>
 8006d82:	bf00      	nop

08006d84 <_read_r>:
 8006d84:	b570      	push	{r4, r5, r6, lr}
 8006d86:	460d      	mov	r5, r1
 8006d88:	4c08      	ldr	r4, [pc, #32]	; (8006dac <_read_r+0x28>)
 8006d8a:	4611      	mov	r1, r2
 8006d8c:	4606      	mov	r6, r0
 8006d8e:	461a      	mov	r2, r3
 8006d90:	4628      	mov	r0, r5
 8006d92:	2300      	movs	r3, #0
 8006d94:	6023      	str	r3, [r4, #0]
 8006d96:	f7fb f937 	bl	8002008 <_read>
 8006d9a:	1c43      	adds	r3, r0, #1
 8006d9c:	d000      	beq.n	8006da0 <_read_r+0x1c>
 8006d9e:	bd70      	pop	{r4, r5, r6, pc}
 8006da0:	6823      	ldr	r3, [r4, #0]
 8006da2:	2b00      	cmp	r3, #0
 8006da4:	d0fb      	beq.n	8006d9e <_read_r+0x1a>
 8006da6:	6033      	str	r3, [r6, #0]
 8006da8:	bd70      	pop	{r4, r5, r6, pc}
 8006daa:	bf00      	nop
 8006dac:	20000ca0 	.word	0x20000ca0

08006db0 <__swbuf_r>:
 8006db0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006db2:	460d      	mov	r5, r1
 8006db4:	4614      	mov	r4, r2
 8006db6:	4606      	mov	r6, r0
 8006db8:	b110      	cbz	r0, 8006dc0 <__swbuf_r+0x10>
 8006dba:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006dbc:	2b00      	cmp	r3, #0
 8006dbe:	d043      	beq.n	8006e48 <__swbuf_r+0x98>
 8006dc0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006dc4:	69a3      	ldr	r3, [r4, #24]
 8006dc6:	60a3      	str	r3, [r4, #8]
 8006dc8:	b291      	uxth	r1, r2
 8006dca:	0708      	lsls	r0, r1, #28
 8006dcc:	d51b      	bpl.n	8006e06 <__swbuf_r+0x56>
 8006dce:	6923      	ldr	r3, [r4, #16]
 8006dd0:	b1cb      	cbz	r3, 8006e06 <__swbuf_r+0x56>
 8006dd2:	b2ed      	uxtb	r5, r5
 8006dd4:	0489      	lsls	r1, r1, #18
 8006dd6:	462f      	mov	r7, r5
 8006dd8:	d522      	bpl.n	8006e20 <__swbuf_r+0x70>
 8006dda:	6822      	ldr	r2, [r4, #0]
 8006ddc:	6961      	ldr	r1, [r4, #20]
 8006dde:	1ad3      	subs	r3, r2, r3
 8006de0:	4299      	cmp	r1, r3
 8006de2:	dd29      	ble.n	8006e38 <__swbuf_r+0x88>
 8006de4:	3301      	adds	r3, #1
 8006de6:	68a1      	ldr	r1, [r4, #8]
 8006de8:	1c50      	adds	r0, r2, #1
 8006dea:	3901      	subs	r1, #1
 8006dec:	60a1      	str	r1, [r4, #8]
 8006dee:	6020      	str	r0, [r4, #0]
 8006df0:	7015      	strb	r5, [r2, #0]
 8006df2:	6962      	ldr	r2, [r4, #20]
 8006df4:	429a      	cmp	r2, r3
 8006df6:	d02a      	beq.n	8006e4e <__swbuf_r+0x9e>
 8006df8:	89a3      	ldrh	r3, [r4, #12]
 8006dfa:	07db      	lsls	r3, r3, #31
 8006dfc:	d501      	bpl.n	8006e02 <__swbuf_r+0x52>
 8006dfe:	2d0a      	cmp	r5, #10
 8006e00:	d025      	beq.n	8006e4e <__swbuf_r+0x9e>
 8006e02:	4638      	mov	r0, r7
 8006e04:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006e06:	4621      	mov	r1, r4
 8006e08:	4630      	mov	r0, r6
 8006e0a:	f7fc fffd 	bl	8003e08 <__swsetup_r>
 8006e0e:	bb20      	cbnz	r0, 8006e5a <__swbuf_r+0xaa>
 8006e10:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006e14:	6923      	ldr	r3, [r4, #16]
 8006e16:	b291      	uxth	r1, r2
 8006e18:	b2ed      	uxtb	r5, r5
 8006e1a:	0489      	lsls	r1, r1, #18
 8006e1c:	462f      	mov	r7, r5
 8006e1e:	d4dc      	bmi.n	8006dda <__swbuf_r+0x2a>
 8006e20:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006e22:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006e26:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006e2a:	81a2      	strh	r2, [r4, #12]
 8006e2c:	6822      	ldr	r2, [r4, #0]
 8006e2e:	6661      	str	r1, [r4, #100]	; 0x64
 8006e30:	6961      	ldr	r1, [r4, #20]
 8006e32:	1ad3      	subs	r3, r2, r3
 8006e34:	4299      	cmp	r1, r3
 8006e36:	dcd5      	bgt.n	8006de4 <__swbuf_r+0x34>
 8006e38:	4621      	mov	r1, r4
 8006e3a:	4630      	mov	r0, r6
 8006e3c:	f7fe f8a6 	bl	8004f8c <_fflush_r>
 8006e40:	b958      	cbnz	r0, 8006e5a <__swbuf_r+0xaa>
 8006e42:	6822      	ldr	r2, [r4, #0]
 8006e44:	2301      	movs	r3, #1
 8006e46:	e7ce      	b.n	8006de6 <__swbuf_r+0x36>
 8006e48:	f7fe f8fc 	bl	8005044 <__sinit>
 8006e4c:	e7b8      	b.n	8006dc0 <__swbuf_r+0x10>
 8006e4e:	4621      	mov	r1, r4
 8006e50:	4630      	mov	r0, r6
 8006e52:	f7fe f89b 	bl	8004f8c <_fflush_r>
 8006e56:	2800      	cmp	r0, #0
 8006e58:	d0d3      	beq.n	8006e02 <__swbuf_r+0x52>
 8006e5a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006e5e:	e7d0      	b.n	8006e02 <__swbuf_r+0x52>

08006e60 <_wcrtomb_r>:
 8006e60:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006e62:	4c11      	ldr	r4, [pc, #68]	; (8006ea8 <_wcrtomb_r+0x48>)
 8006e64:	6824      	ldr	r4, [r4, #0]
 8006e66:	b085      	sub	sp, #20
 8006e68:	4606      	mov	r6, r0
 8006e6a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006e6c:	461f      	mov	r7, r3
 8006e6e:	b151      	cbz	r1, 8006e86 <_wcrtomb_r+0x26>
 8006e70:	4d0e      	ldr	r5, [pc, #56]	; (8006eac <_wcrtomb_r+0x4c>)
 8006e72:	2c00      	cmp	r4, #0
 8006e74:	bf08      	it	eq
 8006e76:	462c      	moveq	r4, r5
 8006e78:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006e7c:	47a0      	blx	r4
 8006e7e:	1c43      	adds	r3, r0, #1
 8006e80:	d00c      	beq.n	8006e9c <_wcrtomb_r+0x3c>
 8006e82:	b005      	add	sp, #20
 8006e84:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006e86:	4a09      	ldr	r2, [pc, #36]	; (8006eac <_wcrtomb_r+0x4c>)
 8006e88:	2c00      	cmp	r4, #0
 8006e8a:	bf08      	it	eq
 8006e8c:	4614      	moveq	r4, r2
 8006e8e:	460a      	mov	r2, r1
 8006e90:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006e94:	a901      	add	r1, sp, #4
 8006e96:	47a0      	blx	r4
 8006e98:	1c43      	adds	r3, r0, #1
 8006e9a:	d1f2      	bne.n	8006e82 <_wcrtomb_r+0x22>
 8006e9c:	2200      	movs	r2, #0
 8006e9e:	238a      	movs	r3, #138	; 0x8a
 8006ea0:	603a      	str	r2, [r7, #0]
 8006ea2:	6033      	str	r3, [r6, #0]
 8006ea4:	b005      	add	sp, #20
 8006ea6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006ea8:	200001a8 	.word	0x200001a8
 8006eac:	200009ec 	.word	0x200009ec

08006eb0 <__ascii_wctomb>:
 8006eb0:	b121      	cbz	r1, 8006ebc <__ascii_wctomb+0xc>
 8006eb2:	2aff      	cmp	r2, #255	; 0xff
 8006eb4:	d804      	bhi.n	8006ec0 <__ascii_wctomb+0x10>
 8006eb6:	700a      	strb	r2, [r1, #0]
 8006eb8:	2001      	movs	r0, #1
 8006eba:	4770      	bx	lr
 8006ebc:	4608      	mov	r0, r1
 8006ebe:	4770      	bx	lr
 8006ec0:	238a      	movs	r3, #138	; 0x8a
 8006ec2:	6003      	str	r3, [r0, #0]
 8006ec4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006ec8:	4770      	bx	lr
 8006eca:	bf00      	nop

08006ecc <_init>:
 8006ecc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006ece:	bf00      	nop
 8006ed0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006ed2:	bc08      	pop	{r3}
 8006ed4:	469e      	mov	lr, r3
 8006ed6:	4770      	bx	lr

08006ed8 <_fini>:
 8006ed8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006eda:	bf00      	nop
 8006edc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006ede:	bc08      	pop	{r3}
 8006ee0:	469e      	mov	lr, r3
 8006ee2:	4770      	bx	lr
 8006ee4:	0000      	movs	r0, r0
	...
