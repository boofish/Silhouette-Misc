
slre.elf:     file format elf32-littlearm


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
 80001d8:	20000a08 	.word	0x20000a08
 80001dc:	00000000 	.word	0x00000000
 80001e0:	08007ac8 	.word	0x08007ac8

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	20000a0c 	.word	0x20000a0c
 80001fc:	08007ac8 	.word	0x08007ac8

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

08000500 <memchr>:
 8000500:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8000504:	2a10      	cmp	r2, #16
 8000506:	db2b      	blt.n	8000560 <memchr+0x60>
 8000508:	f010 0f07 	tst.w	r0, #7
 800050c:	d008      	beq.n	8000520 <memchr+0x20>
 800050e:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000512:	3a01      	subs	r2, #1
 8000514:	428b      	cmp	r3, r1
 8000516:	d02d      	beq.n	8000574 <memchr+0x74>
 8000518:	f010 0f07 	tst.w	r0, #7
 800051c:	b342      	cbz	r2, 8000570 <memchr+0x70>
 800051e:	d1f6      	bne.n	800050e <memchr+0xe>
 8000520:	b4f0      	push	{r4, r5, r6, r7}
 8000522:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8000526:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 800052a:	f022 0407 	bic.w	r4, r2, #7
 800052e:	f07f 0700 	mvns.w	r7, #0
 8000532:	2300      	movs	r3, #0
 8000534:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8000538:	3c08      	subs	r4, #8
 800053a:	ea85 0501 	eor.w	r5, r5, r1
 800053e:	ea86 0601 	eor.w	r6, r6, r1
 8000542:	fa85 f547 	uadd8	r5, r5, r7
 8000546:	faa3 f587 	sel	r5, r3, r7
 800054a:	fa86 f647 	uadd8	r6, r6, r7
 800054e:	faa5 f687 	sel	r6, r5, r7
 8000552:	b98e      	cbnz	r6, 8000578 <memchr+0x78>
 8000554:	d1ee      	bne.n	8000534 <memchr+0x34>
 8000556:	bcf0      	pop	{r4, r5, r6, r7}
 8000558:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 800055c:	f002 0207 	and.w	r2, r2, #7
 8000560:	b132      	cbz	r2, 8000570 <memchr+0x70>
 8000562:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000566:	3a01      	subs	r2, #1
 8000568:	ea83 0301 	eor.w	r3, r3, r1
 800056c:	b113      	cbz	r3, 8000574 <memchr+0x74>
 800056e:	d1f8      	bne.n	8000562 <memchr+0x62>
 8000570:	2000      	movs	r0, #0
 8000572:	4770      	bx	lr
 8000574:	3801      	subs	r0, #1
 8000576:	4770      	bx	lr
 8000578:	2d00      	cmp	r5, #0
 800057a:	bf06      	itte	eq
 800057c:	4635      	moveq	r5, r6
 800057e:	3803      	subeq	r0, #3
 8000580:	3807      	subne	r0, #7
 8000582:	f015 0f01 	tst.w	r5, #1
 8000586:	d107      	bne.n	8000598 <memchr+0x98>
 8000588:	3001      	adds	r0, #1
 800058a:	f415 7f80 	tst.w	r5, #256	; 0x100
 800058e:	bf02      	ittt	eq
 8000590:	3001      	addeq	r0, #1
 8000592:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
 8000596:	3001      	addeq	r0, #1
 8000598:	bcf0      	pop	{r4, r5, r6, r7}
 800059a:	3801      	subs	r0, #1
 800059c:	4770      	bx	lr
 800059e:	bf00      	nop

080005a0 <memcpy>:
 80005a0:	4684      	mov	ip, r0
 80005a2:	ea41 0300 	orr.w	r3, r1, r0
 80005a6:	f013 0303 	ands.w	r3, r3, #3
 80005aa:	d16d      	bne.n	8000688 <memcpy+0xe8>
 80005ac:	3a40      	subs	r2, #64	; 0x40
 80005ae:	d341      	bcc.n	8000634 <memcpy+0x94>
 80005b0:	f851 3b04 	ldr.w	r3, [r1], #4
 80005b4:	f840 3b04 	str.w	r3, [r0], #4
 80005b8:	f851 3b04 	ldr.w	r3, [r1], #4
 80005bc:	f840 3b04 	str.w	r3, [r0], #4
 80005c0:	f851 3b04 	ldr.w	r3, [r1], #4
 80005c4:	f840 3b04 	str.w	r3, [r0], #4
 80005c8:	f851 3b04 	ldr.w	r3, [r1], #4
 80005cc:	f840 3b04 	str.w	r3, [r0], #4
 80005d0:	f851 3b04 	ldr.w	r3, [r1], #4
 80005d4:	f840 3b04 	str.w	r3, [r0], #4
 80005d8:	f851 3b04 	ldr.w	r3, [r1], #4
 80005dc:	f840 3b04 	str.w	r3, [r0], #4
 80005e0:	f851 3b04 	ldr.w	r3, [r1], #4
 80005e4:	f840 3b04 	str.w	r3, [r0], #4
 80005e8:	f851 3b04 	ldr.w	r3, [r1], #4
 80005ec:	f840 3b04 	str.w	r3, [r0], #4
 80005f0:	f851 3b04 	ldr.w	r3, [r1], #4
 80005f4:	f840 3b04 	str.w	r3, [r0], #4
 80005f8:	f851 3b04 	ldr.w	r3, [r1], #4
 80005fc:	f840 3b04 	str.w	r3, [r0], #4
 8000600:	f851 3b04 	ldr.w	r3, [r1], #4
 8000604:	f840 3b04 	str.w	r3, [r0], #4
 8000608:	f851 3b04 	ldr.w	r3, [r1], #4
 800060c:	f840 3b04 	str.w	r3, [r0], #4
 8000610:	f851 3b04 	ldr.w	r3, [r1], #4
 8000614:	f840 3b04 	str.w	r3, [r0], #4
 8000618:	f851 3b04 	ldr.w	r3, [r1], #4
 800061c:	f840 3b04 	str.w	r3, [r0], #4
 8000620:	f851 3b04 	ldr.w	r3, [r1], #4
 8000624:	f840 3b04 	str.w	r3, [r0], #4
 8000628:	f851 3b04 	ldr.w	r3, [r1], #4
 800062c:	f840 3b04 	str.w	r3, [r0], #4
 8000630:	3a40      	subs	r2, #64	; 0x40
 8000632:	d2bd      	bcs.n	80005b0 <memcpy+0x10>
 8000634:	3230      	adds	r2, #48	; 0x30
 8000636:	d311      	bcc.n	800065c <memcpy+0xbc>
 8000638:	f851 3b04 	ldr.w	r3, [r1], #4
 800063c:	f840 3b04 	str.w	r3, [r0], #4
 8000640:	f851 3b04 	ldr.w	r3, [r1], #4
 8000644:	f840 3b04 	str.w	r3, [r0], #4
 8000648:	f851 3b04 	ldr.w	r3, [r1], #4
 800064c:	f840 3b04 	str.w	r3, [r0], #4
 8000650:	f851 3b04 	ldr.w	r3, [r1], #4
 8000654:	f840 3b04 	str.w	r3, [r0], #4
 8000658:	3a10      	subs	r2, #16
 800065a:	d2ed      	bcs.n	8000638 <memcpy+0x98>
 800065c:	320c      	adds	r2, #12
 800065e:	d305      	bcc.n	800066c <memcpy+0xcc>
 8000660:	f851 3b04 	ldr.w	r3, [r1], #4
 8000664:	f840 3b04 	str.w	r3, [r0], #4
 8000668:	3a04      	subs	r2, #4
 800066a:	d2f9      	bcs.n	8000660 <memcpy+0xc0>
 800066c:	3204      	adds	r2, #4
 800066e:	d008      	beq.n	8000682 <memcpy+0xe2>
 8000670:	07d2      	lsls	r2, r2, #31
 8000672:	bf1c      	itt	ne
 8000674:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000678:	f800 3b01 	strbne.w	r3, [r0], #1
 800067c:	d301      	bcc.n	8000682 <memcpy+0xe2>
 800067e:	880b      	ldrh	r3, [r1, #0]
 8000680:	8003      	strh	r3, [r0, #0]
 8000682:	4660      	mov	r0, ip
 8000684:	4770      	bx	lr
 8000686:	bf00      	nop
 8000688:	2a08      	cmp	r2, #8
 800068a:	d313      	bcc.n	80006b4 <memcpy+0x114>
 800068c:	078b      	lsls	r3, r1, #30
 800068e:	d08d      	beq.n	80005ac <memcpy+0xc>
 8000690:	f010 0303 	ands.w	r3, r0, #3
 8000694:	d08a      	beq.n	80005ac <memcpy+0xc>
 8000696:	f1c3 0304 	rsb	r3, r3, #4
 800069a:	1ad2      	subs	r2, r2, r3
 800069c:	07db      	lsls	r3, r3, #31
 800069e:	bf1c      	itt	ne
 80006a0:	f811 3b01 	ldrbne.w	r3, [r1], #1
 80006a4:	f800 3b01 	strbne.w	r3, [r0], #1
 80006a8:	d380      	bcc.n	80005ac <memcpy+0xc>
 80006aa:	f831 3b02 	ldrh.w	r3, [r1], #2
 80006ae:	f820 3b02 	strh.w	r3, [r0], #2
 80006b2:	e77b      	b.n	80005ac <memcpy+0xc>
 80006b4:	3a04      	subs	r2, #4
 80006b6:	d3d9      	bcc.n	800066c <memcpy+0xcc>
 80006b8:	3a01      	subs	r2, #1
 80006ba:	f811 3b01 	ldrb.w	r3, [r1], #1
 80006be:	f800 3b01 	strb.w	r3, [r0], #1
 80006c2:	d2f9      	bcs.n	80006b8 <memcpy+0x118>
 80006c4:	780b      	ldrb	r3, [r1, #0]
 80006c6:	7003      	strb	r3, [r0, #0]
 80006c8:	784b      	ldrb	r3, [r1, #1]
 80006ca:	7043      	strb	r3, [r0, #1]
 80006cc:	788b      	ldrb	r3, [r1, #2]
 80006ce:	7083      	strb	r3, [r0, #2]
 80006d0:	4660      	mov	r0, ip
 80006d2:	4770      	bx	lr
	...

08000700 <strlen>:
 8000700:	f890 f000 	pld	[r0]
 8000704:	e96d 4502 	strd	r4, r5, [sp, #-8]!
 8000708:	f020 0107 	bic.w	r1, r0, #7
 800070c:	f06f 0c00 	mvn.w	ip, #0
 8000710:	f010 0407 	ands.w	r4, r0, #7
 8000714:	f891 f020 	pld	[r1, #32]
 8000718:	f040 8049 	bne.w	80007ae <strlen+0xae>
 800071c:	f04f 0400 	mov.w	r4, #0
 8000720:	f06f 0007 	mvn.w	r0, #7
 8000724:	e9d1 2300 	ldrd	r2, r3, [r1]
 8000728:	f891 f040 	pld	[r1, #64]	; 0x40
 800072c:	f100 0008 	add.w	r0, r0, #8
 8000730:	fa82 f24c 	uadd8	r2, r2, ip
 8000734:	faa4 f28c 	sel	r2, r4, ip
 8000738:	fa83 f34c 	uadd8	r3, r3, ip
 800073c:	faa2 f38c 	sel	r3, r2, ip
 8000740:	bb4b      	cbnz	r3, 8000796 <strlen+0x96>
 8000742:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
 8000746:	fa82 f24c 	uadd8	r2, r2, ip
 800074a:	f100 0008 	add.w	r0, r0, #8
 800074e:	faa4 f28c 	sel	r2, r4, ip
 8000752:	fa83 f34c 	uadd8	r3, r3, ip
 8000756:	faa2 f38c 	sel	r3, r2, ip
 800075a:	b9e3      	cbnz	r3, 8000796 <strlen+0x96>
 800075c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
 8000760:	fa82 f24c 	uadd8	r2, r2, ip
 8000764:	f100 0008 	add.w	r0, r0, #8
 8000768:	faa4 f28c 	sel	r2, r4, ip
 800076c:	fa83 f34c 	uadd8	r3, r3, ip
 8000770:	faa2 f38c 	sel	r3, r2, ip
 8000774:	b97b      	cbnz	r3, 8000796 <strlen+0x96>
 8000776:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
 800077a:	f101 0120 	add.w	r1, r1, #32
 800077e:	fa82 f24c 	uadd8	r2, r2, ip
 8000782:	f100 0008 	add.w	r0, r0, #8
 8000786:	faa4 f28c 	sel	r2, r4, ip
 800078a:	fa83 f34c 	uadd8	r3, r3, ip
 800078e:	faa2 f38c 	sel	r3, r2, ip
 8000792:	2b00      	cmp	r3, #0
 8000794:	d0c6      	beq.n	8000724 <strlen+0x24>
 8000796:	2a00      	cmp	r2, #0
 8000798:	bf04      	itt	eq
 800079a:	3004      	addeq	r0, #4
 800079c:	461a      	moveq	r2, r3
 800079e:	ba12      	rev	r2, r2
 80007a0:	fab2 f282 	clz	r2, r2
 80007a4:	e8fd 4502 	ldrd	r4, r5, [sp], #8
 80007a8:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 80007ac:	4770      	bx	lr
 80007ae:	e9d1 2300 	ldrd	r2, r3, [r1]
 80007b2:	f004 0503 	and.w	r5, r4, #3
 80007b6:	f1c4 0000 	rsb	r0, r4, #0
 80007ba:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 80007be:	f014 0f04 	tst.w	r4, #4
 80007c2:	f891 f040 	pld	[r1, #64]	; 0x40
 80007c6:	fa0c f505 	lsl.w	r5, ip, r5
 80007ca:	ea62 0205 	orn	r2, r2, r5
 80007ce:	bf1c      	itt	ne
 80007d0:	ea63 0305 	ornne	r3, r3, r5
 80007d4:	4662      	movne	r2, ip
 80007d6:	f04f 0400 	mov.w	r4, #0
 80007da:	e7a9      	b.n	8000730 <strlen+0x30>

080007dc <__aeabi_drsub>:
 80007dc:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 80007e0:	e002      	b.n	80007e8 <__adddf3>
 80007e2:	bf00      	nop

080007e4 <__aeabi_dsub>:
 80007e4:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

080007e8 <__adddf3>:
 80007e8:	b530      	push	{r4, r5, lr}
 80007ea:	ea4f 0441 	mov.w	r4, r1, lsl #1
 80007ee:	ea4f 0543 	mov.w	r5, r3, lsl #1
 80007f2:	ea94 0f05 	teq	r4, r5
 80007f6:	bf08      	it	eq
 80007f8:	ea90 0f02 	teqeq	r0, r2
 80007fc:	bf1f      	itttt	ne
 80007fe:	ea54 0c00 	orrsne.w	ip, r4, r0
 8000802:	ea55 0c02 	orrsne.w	ip, r5, r2
 8000806:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 800080a:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 800080e:	f000 80e2 	beq.w	80009d6 <__adddf3+0x1ee>
 8000812:	ea4f 5454 	mov.w	r4, r4, lsr #21
 8000816:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 800081a:	bfb8      	it	lt
 800081c:	426d      	neglt	r5, r5
 800081e:	dd0c      	ble.n	800083a <__adddf3+0x52>
 8000820:	442c      	add	r4, r5
 8000822:	ea80 0202 	eor.w	r2, r0, r2
 8000826:	ea81 0303 	eor.w	r3, r1, r3
 800082a:	ea82 0000 	eor.w	r0, r2, r0
 800082e:	ea83 0101 	eor.w	r1, r3, r1
 8000832:	ea80 0202 	eor.w	r2, r0, r2
 8000836:	ea81 0303 	eor.w	r3, r1, r3
 800083a:	2d36      	cmp	r5, #54	; 0x36
 800083c:	bf88      	it	hi
 800083e:	bd30      	pophi	{r4, r5, pc}
 8000840:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8000844:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8000848:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 800084c:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 8000850:	d002      	beq.n	8000858 <__adddf3+0x70>
 8000852:	4240      	negs	r0, r0
 8000854:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8000858:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 800085c:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8000860:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 8000864:	d002      	beq.n	800086c <__adddf3+0x84>
 8000866:	4252      	negs	r2, r2
 8000868:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 800086c:	ea94 0f05 	teq	r4, r5
 8000870:	f000 80a7 	beq.w	80009c2 <__adddf3+0x1da>
 8000874:	f1a4 0401 	sub.w	r4, r4, #1
 8000878:	f1d5 0e20 	rsbs	lr, r5, #32
 800087c:	db0d      	blt.n	800089a <__adddf3+0xb2>
 800087e:	fa02 fc0e 	lsl.w	ip, r2, lr
 8000882:	fa22 f205 	lsr.w	r2, r2, r5
 8000886:	1880      	adds	r0, r0, r2
 8000888:	f141 0100 	adc.w	r1, r1, #0
 800088c:	fa03 f20e 	lsl.w	r2, r3, lr
 8000890:	1880      	adds	r0, r0, r2
 8000892:	fa43 f305 	asr.w	r3, r3, r5
 8000896:	4159      	adcs	r1, r3
 8000898:	e00e      	b.n	80008b8 <__adddf3+0xd0>
 800089a:	f1a5 0520 	sub.w	r5, r5, #32
 800089e:	f10e 0e20 	add.w	lr, lr, #32
 80008a2:	2a01      	cmp	r2, #1
 80008a4:	fa03 fc0e 	lsl.w	ip, r3, lr
 80008a8:	bf28      	it	cs
 80008aa:	f04c 0c02 	orrcs.w	ip, ip, #2
 80008ae:	fa43 f305 	asr.w	r3, r3, r5
 80008b2:	18c0      	adds	r0, r0, r3
 80008b4:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 80008b8:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 80008bc:	d507      	bpl.n	80008ce <__adddf3+0xe6>
 80008be:	f04f 0e00 	mov.w	lr, #0
 80008c2:	f1dc 0c00 	rsbs	ip, ip, #0
 80008c6:	eb7e 0000 	sbcs.w	r0, lr, r0
 80008ca:	eb6e 0101 	sbc.w	r1, lr, r1
 80008ce:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80008d2:	d31b      	bcc.n	800090c <__adddf3+0x124>
 80008d4:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 80008d8:	d30c      	bcc.n	80008f4 <__adddf3+0x10c>
 80008da:	0849      	lsrs	r1, r1, #1
 80008dc:	ea5f 0030 	movs.w	r0, r0, rrx
 80008e0:	ea4f 0c3c 	mov.w	ip, ip, rrx
 80008e4:	f104 0401 	add.w	r4, r4, #1
 80008e8:	ea4f 5244 	mov.w	r2, r4, lsl #21
 80008ec:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 80008f0:	f080 809a 	bcs.w	8000a28 <__adddf3+0x240>
 80008f4:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 80008f8:	bf08      	it	eq
 80008fa:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 80008fe:	f150 0000 	adcs.w	r0, r0, #0
 8000902:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000906:	ea41 0105 	orr.w	r1, r1, r5
 800090a:	bd30      	pop	{r4, r5, pc}
 800090c:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 8000910:	4140      	adcs	r0, r0
 8000912:	eb41 0101 	adc.w	r1, r1, r1
 8000916:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 800091a:	f1a4 0401 	sub.w	r4, r4, #1
 800091e:	d1e9      	bne.n	80008f4 <__adddf3+0x10c>
 8000920:	f091 0f00 	teq	r1, #0
 8000924:	bf04      	itt	eq
 8000926:	4601      	moveq	r1, r0
 8000928:	2000      	moveq	r0, #0
 800092a:	fab1 f381 	clz	r3, r1
 800092e:	bf08      	it	eq
 8000930:	3320      	addeq	r3, #32
 8000932:	f1a3 030b 	sub.w	r3, r3, #11
 8000936:	f1b3 0220 	subs.w	r2, r3, #32
 800093a:	da0c      	bge.n	8000956 <__adddf3+0x16e>
 800093c:	320c      	adds	r2, #12
 800093e:	dd08      	ble.n	8000952 <__adddf3+0x16a>
 8000940:	f102 0c14 	add.w	ip, r2, #20
 8000944:	f1c2 020c 	rsb	r2, r2, #12
 8000948:	fa01 f00c 	lsl.w	r0, r1, ip
 800094c:	fa21 f102 	lsr.w	r1, r1, r2
 8000950:	e00c      	b.n	800096c <__adddf3+0x184>
 8000952:	f102 0214 	add.w	r2, r2, #20
 8000956:	bfd8      	it	le
 8000958:	f1c2 0c20 	rsble	ip, r2, #32
 800095c:	fa01 f102 	lsl.w	r1, r1, r2
 8000960:	fa20 fc0c 	lsr.w	ip, r0, ip
 8000964:	bfdc      	itt	le
 8000966:	ea41 010c 	orrle.w	r1, r1, ip
 800096a:	4090      	lslle	r0, r2
 800096c:	1ae4      	subs	r4, r4, r3
 800096e:	bfa2      	ittt	ge
 8000970:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 8000974:	4329      	orrge	r1, r5
 8000976:	bd30      	popge	{r4, r5, pc}
 8000978:	ea6f 0404 	mvn.w	r4, r4
 800097c:	3c1f      	subs	r4, #31
 800097e:	da1c      	bge.n	80009ba <__adddf3+0x1d2>
 8000980:	340c      	adds	r4, #12
 8000982:	dc0e      	bgt.n	80009a2 <__adddf3+0x1ba>
 8000984:	f104 0414 	add.w	r4, r4, #20
 8000988:	f1c4 0220 	rsb	r2, r4, #32
 800098c:	fa20 f004 	lsr.w	r0, r0, r4
 8000990:	fa01 f302 	lsl.w	r3, r1, r2
 8000994:	ea40 0003 	orr.w	r0, r0, r3
 8000998:	fa21 f304 	lsr.w	r3, r1, r4
 800099c:	ea45 0103 	orr.w	r1, r5, r3
 80009a0:	bd30      	pop	{r4, r5, pc}
 80009a2:	f1c4 040c 	rsb	r4, r4, #12
 80009a6:	f1c4 0220 	rsb	r2, r4, #32
 80009aa:	fa20 f002 	lsr.w	r0, r0, r2
 80009ae:	fa01 f304 	lsl.w	r3, r1, r4
 80009b2:	ea40 0003 	orr.w	r0, r0, r3
 80009b6:	4629      	mov	r1, r5
 80009b8:	bd30      	pop	{r4, r5, pc}
 80009ba:	fa21 f004 	lsr.w	r0, r1, r4
 80009be:	4629      	mov	r1, r5
 80009c0:	bd30      	pop	{r4, r5, pc}
 80009c2:	f094 0f00 	teq	r4, #0
 80009c6:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 80009ca:	bf06      	itte	eq
 80009cc:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 80009d0:	3401      	addeq	r4, #1
 80009d2:	3d01      	subne	r5, #1
 80009d4:	e74e      	b.n	8000874 <__adddf3+0x8c>
 80009d6:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 80009da:	bf18      	it	ne
 80009dc:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 80009e0:	d029      	beq.n	8000a36 <__adddf3+0x24e>
 80009e2:	ea94 0f05 	teq	r4, r5
 80009e6:	bf08      	it	eq
 80009e8:	ea90 0f02 	teqeq	r0, r2
 80009ec:	d005      	beq.n	80009fa <__adddf3+0x212>
 80009ee:	ea54 0c00 	orrs.w	ip, r4, r0
 80009f2:	bf04      	itt	eq
 80009f4:	4619      	moveq	r1, r3
 80009f6:	4610      	moveq	r0, r2
 80009f8:	bd30      	pop	{r4, r5, pc}
 80009fa:	ea91 0f03 	teq	r1, r3
 80009fe:	bf1e      	ittt	ne
 8000a00:	2100      	movne	r1, #0
 8000a02:	2000      	movne	r0, #0
 8000a04:	bd30      	popne	{r4, r5, pc}
 8000a06:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 8000a0a:	d105      	bne.n	8000a18 <__adddf3+0x230>
 8000a0c:	0040      	lsls	r0, r0, #1
 8000a0e:	4149      	adcs	r1, r1
 8000a10:	bf28      	it	cs
 8000a12:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 8000a16:	bd30      	pop	{r4, r5, pc}
 8000a18:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 8000a1c:	bf3c      	itt	cc
 8000a1e:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 8000a22:	bd30      	popcc	{r4, r5, pc}
 8000a24:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000a28:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 8000a2c:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8000a30:	f04f 0000 	mov.w	r0, #0
 8000a34:	bd30      	pop	{r4, r5, pc}
 8000a36:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8000a3a:	bf1a      	itte	ne
 8000a3c:	4619      	movne	r1, r3
 8000a3e:	4610      	movne	r0, r2
 8000a40:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 8000a44:	bf1c      	itt	ne
 8000a46:	460b      	movne	r3, r1
 8000a48:	4602      	movne	r2, r0
 8000a4a:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8000a4e:	bf06      	itte	eq
 8000a50:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 8000a54:	ea91 0f03 	teqeq	r1, r3
 8000a58:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 8000a5c:	bd30      	pop	{r4, r5, pc}
 8000a5e:	bf00      	nop

08000a60 <__aeabi_ui2d>:
 8000a60:	f090 0f00 	teq	r0, #0
 8000a64:	bf04      	itt	eq
 8000a66:	2100      	moveq	r1, #0
 8000a68:	4770      	bxeq	lr
 8000a6a:	b530      	push	{r4, r5, lr}
 8000a6c:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000a70:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000a74:	f04f 0500 	mov.w	r5, #0
 8000a78:	f04f 0100 	mov.w	r1, #0
 8000a7c:	e750      	b.n	8000920 <__adddf3+0x138>
 8000a7e:	bf00      	nop

08000a80 <__aeabi_i2d>:
 8000a80:	f090 0f00 	teq	r0, #0
 8000a84:	bf04      	itt	eq
 8000a86:	2100      	moveq	r1, #0
 8000a88:	4770      	bxeq	lr
 8000a8a:	b530      	push	{r4, r5, lr}
 8000a8c:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000a90:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000a94:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 8000a98:	bf48      	it	mi
 8000a9a:	4240      	negmi	r0, r0
 8000a9c:	f04f 0100 	mov.w	r1, #0
 8000aa0:	e73e      	b.n	8000920 <__adddf3+0x138>
 8000aa2:	bf00      	nop

08000aa4 <__aeabi_f2d>:
 8000aa4:	0042      	lsls	r2, r0, #1
 8000aa6:	ea4f 01e2 	mov.w	r1, r2, asr #3
 8000aaa:	ea4f 0131 	mov.w	r1, r1, rrx
 8000aae:	ea4f 7002 	mov.w	r0, r2, lsl #28
 8000ab2:	bf1f      	itttt	ne
 8000ab4:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 8000ab8:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 8000abc:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 8000ac0:	4770      	bxne	lr
 8000ac2:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
 8000ac6:	bf08      	it	eq
 8000ac8:	4770      	bxeq	lr
 8000aca:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
 8000ace:	bf04      	itt	eq
 8000ad0:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
 8000ad4:	4770      	bxeq	lr
 8000ad6:	b530      	push	{r4, r5, lr}
 8000ad8:	f44f 7460 	mov.w	r4, #896	; 0x380
 8000adc:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000ae0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8000ae4:	e71c      	b.n	8000920 <__adddf3+0x138>
 8000ae6:	bf00      	nop

08000ae8 <__aeabi_ul2d>:
 8000ae8:	ea50 0201 	orrs.w	r2, r0, r1
 8000aec:	bf08      	it	eq
 8000aee:	4770      	bxeq	lr
 8000af0:	b530      	push	{r4, r5, lr}
 8000af2:	f04f 0500 	mov.w	r5, #0
 8000af6:	e00a      	b.n	8000b0e <__aeabi_l2d+0x16>

08000af8 <__aeabi_l2d>:
 8000af8:	ea50 0201 	orrs.w	r2, r0, r1
 8000afc:	bf08      	it	eq
 8000afe:	4770      	bxeq	lr
 8000b00:	b530      	push	{r4, r5, lr}
 8000b02:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 8000b06:	d502      	bpl.n	8000b0e <__aeabi_l2d+0x16>
 8000b08:	4240      	negs	r0, r0
 8000b0a:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8000b0e:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000b12:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000b16:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 8000b1a:	f43f aed8 	beq.w	80008ce <__adddf3+0xe6>
 8000b1e:	f04f 0203 	mov.w	r2, #3
 8000b22:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8000b26:	bf18      	it	ne
 8000b28:	3203      	addne	r2, #3
 8000b2a:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8000b2e:	bf18      	it	ne
 8000b30:	3203      	addne	r2, #3
 8000b32:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 8000b36:	f1c2 0320 	rsb	r3, r2, #32
 8000b3a:	fa00 fc03 	lsl.w	ip, r0, r3
 8000b3e:	fa20 f002 	lsr.w	r0, r0, r2
 8000b42:	fa01 fe03 	lsl.w	lr, r1, r3
 8000b46:	ea40 000e 	orr.w	r0, r0, lr
 8000b4a:	fa21 f102 	lsr.w	r1, r1, r2
 8000b4e:	4414      	add	r4, r2
 8000b50:	e6bd      	b.n	80008ce <__adddf3+0xe6>
 8000b52:	bf00      	nop

08000b54 <__aeabi_dmul>:
 8000b54:	b570      	push	{r4, r5, r6, lr}
 8000b56:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8000b5a:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8000b5e:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8000b62:	bf1d      	ittte	ne
 8000b64:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8000b68:	ea94 0f0c 	teqne	r4, ip
 8000b6c:	ea95 0f0c 	teqne	r5, ip
 8000b70:	f000 f8de 	bleq	8000d30 <__aeabi_dmul+0x1dc>
 8000b74:	442c      	add	r4, r5
 8000b76:	ea81 0603 	eor.w	r6, r1, r3
 8000b7a:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
 8000b7e:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
 8000b82:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
 8000b86:	bf18      	it	ne
 8000b88:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
 8000b8c:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000b90:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8000b94:	d038      	beq.n	8000c08 <__aeabi_dmul+0xb4>
 8000b96:	fba0 ce02 	umull	ip, lr, r0, r2
 8000b9a:	f04f 0500 	mov.w	r5, #0
 8000b9e:	fbe1 e502 	umlal	lr, r5, r1, r2
 8000ba2:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
 8000ba6:	fbe0 e503 	umlal	lr, r5, r0, r3
 8000baa:	f04f 0600 	mov.w	r6, #0
 8000bae:	fbe1 5603 	umlal	r5, r6, r1, r3
 8000bb2:	f09c 0f00 	teq	ip, #0
 8000bb6:	bf18      	it	ne
 8000bb8:	f04e 0e01 	orrne.w	lr, lr, #1
 8000bbc:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
 8000bc0:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 8000bc4:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
 8000bc8:	d204      	bcs.n	8000bd4 <__aeabi_dmul+0x80>
 8000bca:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
 8000bce:	416d      	adcs	r5, r5
 8000bd0:	eb46 0606 	adc.w	r6, r6, r6
 8000bd4:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
 8000bd8:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
 8000bdc:	ea4f 20c5 	mov.w	r0, r5, lsl #11
 8000be0:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
 8000be4:	ea4f 2ece 	mov.w	lr, lr, lsl #11
 8000be8:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8000bec:	bf88      	it	hi
 8000bee:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8000bf2:	d81e      	bhi.n	8000c32 <__aeabi_dmul+0xde>
 8000bf4:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
 8000bf8:	bf08      	it	eq
 8000bfa:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
 8000bfe:	f150 0000 	adcs.w	r0, r0, #0
 8000c02:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000c06:	bd70      	pop	{r4, r5, r6, pc}
 8000c08:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
 8000c0c:	ea46 0101 	orr.w	r1, r6, r1
 8000c10:	ea40 0002 	orr.w	r0, r0, r2
 8000c14:	ea81 0103 	eor.w	r1, r1, r3
 8000c18:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 8000c1c:	bfc2      	ittt	gt
 8000c1e:	ebd4 050c 	rsbsgt	r5, r4, ip
 8000c22:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8000c26:	bd70      	popgt	{r4, r5, r6, pc}
 8000c28:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000c2c:	f04f 0e00 	mov.w	lr, #0
 8000c30:	3c01      	subs	r4, #1
 8000c32:	f300 80ab 	bgt.w	8000d8c <__aeabi_dmul+0x238>
 8000c36:	f114 0f36 	cmn.w	r4, #54	; 0x36
 8000c3a:	bfde      	ittt	le
 8000c3c:	2000      	movle	r0, #0
 8000c3e:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
 8000c42:	bd70      	pople	{r4, r5, r6, pc}
 8000c44:	f1c4 0400 	rsb	r4, r4, #0
 8000c48:	3c20      	subs	r4, #32
 8000c4a:	da35      	bge.n	8000cb8 <__aeabi_dmul+0x164>
 8000c4c:	340c      	adds	r4, #12
 8000c4e:	dc1b      	bgt.n	8000c88 <__aeabi_dmul+0x134>
 8000c50:	f104 0414 	add.w	r4, r4, #20
 8000c54:	f1c4 0520 	rsb	r5, r4, #32
 8000c58:	fa00 f305 	lsl.w	r3, r0, r5
 8000c5c:	fa20 f004 	lsr.w	r0, r0, r4
 8000c60:	fa01 f205 	lsl.w	r2, r1, r5
 8000c64:	ea40 0002 	orr.w	r0, r0, r2
 8000c68:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
 8000c6c:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8000c70:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8000c74:	fa21 f604 	lsr.w	r6, r1, r4
 8000c78:	eb42 0106 	adc.w	r1, r2, r6
 8000c7c:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000c80:	bf08      	it	eq
 8000c82:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000c86:	bd70      	pop	{r4, r5, r6, pc}
 8000c88:	f1c4 040c 	rsb	r4, r4, #12
 8000c8c:	f1c4 0520 	rsb	r5, r4, #32
 8000c90:	fa00 f304 	lsl.w	r3, r0, r4
 8000c94:	fa20 f005 	lsr.w	r0, r0, r5
 8000c98:	fa01 f204 	lsl.w	r2, r1, r4
 8000c9c:	ea40 0002 	orr.w	r0, r0, r2
 8000ca0:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000ca4:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8000ca8:	f141 0100 	adc.w	r1, r1, #0
 8000cac:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000cb0:	bf08      	it	eq
 8000cb2:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000cb6:	bd70      	pop	{r4, r5, r6, pc}
 8000cb8:	f1c4 0520 	rsb	r5, r4, #32
 8000cbc:	fa00 f205 	lsl.w	r2, r0, r5
 8000cc0:	ea4e 0e02 	orr.w	lr, lr, r2
 8000cc4:	fa20 f304 	lsr.w	r3, r0, r4
 8000cc8:	fa01 f205 	lsl.w	r2, r1, r5
 8000ccc:	ea43 0302 	orr.w	r3, r3, r2
 8000cd0:	fa21 f004 	lsr.w	r0, r1, r4
 8000cd4:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000cd8:	fa21 f204 	lsr.w	r2, r1, r4
 8000cdc:	ea20 0002 	bic.w	r0, r0, r2
 8000ce0:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 8000ce4:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000ce8:	bf08      	it	eq
 8000cea:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000cee:	bd70      	pop	{r4, r5, r6, pc}
 8000cf0:	f094 0f00 	teq	r4, #0
 8000cf4:	d10f      	bne.n	8000d16 <__aeabi_dmul+0x1c2>
 8000cf6:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
 8000cfa:	0040      	lsls	r0, r0, #1
 8000cfc:	eb41 0101 	adc.w	r1, r1, r1
 8000d00:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000d04:	bf08      	it	eq
 8000d06:	3c01      	subeq	r4, #1
 8000d08:	d0f7      	beq.n	8000cfa <__aeabi_dmul+0x1a6>
 8000d0a:	ea41 0106 	orr.w	r1, r1, r6
 8000d0e:	f095 0f00 	teq	r5, #0
 8000d12:	bf18      	it	ne
 8000d14:	4770      	bxne	lr
 8000d16:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
 8000d1a:	0052      	lsls	r2, r2, #1
 8000d1c:	eb43 0303 	adc.w	r3, r3, r3
 8000d20:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 8000d24:	bf08      	it	eq
 8000d26:	3d01      	subeq	r5, #1
 8000d28:	d0f7      	beq.n	8000d1a <__aeabi_dmul+0x1c6>
 8000d2a:	ea43 0306 	orr.w	r3, r3, r6
 8000d2e:	4770      	bx	lr
 8000d30:	ea94 0f0c 	teq	r4, ip
 8000d34:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8000d38:	bf18      	it	ne
 8000d3a:	ea95 0f0c 	teqne	r5, ip
 8000d3e:	d00c      	beq.n	8000d5a <__aeabi_dmul+0x206>
 8000d40:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000d44:	bf18      	it	ne
 8000d46:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000d4a:	d1d1      	bne.n	8000cf0 <__aeabi_dmul+0x19c>
 8000d4c:	ea81 0103 	eor.w	r1, r1, r3
 8000d50:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000d54:	f04f 0000 	mov.w	r0, #0
 8000d58:	bd70      	pop	{r4, r5, r6, pc}
 8000d5a:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000d5e:	bf06      	itte	eq
 8000d60:	4610      	moveq	r0, r2
 8000d62:	4619      	moveq	r1, r3
 8000d64:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000d68:	d019      	beq.n	8000d9e <__aeabi_dmul+0x24a>
 8000d6a:	ea94 0f0c 	teq	r4, ip
 8000d6e:	d102      	bne.n	8000d76 <__aeabi_dmul+0x222>
 8000d70:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 8000d74:	d113      	bne.n	8000d9e <__aeabi_dmul+0x24a>
 8000d76:	ea95 0f0c 	teq	r5, ip
 8000d7a:	d105      	bne.n	8000d88 <__aeabi_dmul+0x234>
 8000d7c:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 8000d80:	bf1c      	itt	ne
 8000d82:	4610      	movne	r0, r2
 8000d84:	4619      	movne	r1, r3
 8000d86:	d10a      	bne.n	8000d9e <__aeabi_dmul+0x24a>
 8000d88:	ea81 0103 	eor.w	r1, r1, r3
 8000d8c:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000d90:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8000d94:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8000d98:	f04f 0000 	mov.w	r0, #0
 8000d9c:	bd70      	pop	{r4, r5, r6, pc}
 8000d9e:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8000da2:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
 8000da6:	bd70      	pop	{r4, r5, r6, pc}

08000da8 <__aeabi_ddiv>:
 8000da8:	b570      	push	{r4, r5, r6, lr}
 8000daa:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8000dae:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8000db2:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8000db6:	bf1d      	ittte	ne
 8000db8:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8000dbc:	ea94 0f0c 	teqne	r4, ip
 8000dc0:	ea95 0f0c 	teqne	r5, ip
 8000dc4:	f000 f8a7 	bleq	8000f16 <__aeabi_ddiv+0x16e>
 8000dc8:	eba4 0405 	sub.w	r4, r4, r5
 8000dcc:	ea81 0e03 	eor.w	lr, r1, r3
 8000dd0:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8000dd4:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8000dd8:	f000 8088 	beq.w	8000eec <__aeabi_ddiv+0x144>
 8000ddc:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8000de0:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
 8000de4:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 8000de8:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 8000dec:	ea4f 2202 	mov.w	r2, r2, lsl #8
 8000df0:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 8000df4:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 8000df8:	ea4f 2600 	mov.w	r6, r0, lsl #8
 8000dfc:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
 8000e00:	429d      	cmp	r5, r3
 8000e02:	bf08      	it	eq
 8000e04:	4296      	cmpeq	r6, r2
 8000e06:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
 8000e0a:	f504 7440 	add.w	r4, r4, #768	; 0x300
 8000e0e:	d202      	bcs.n	8000e16 <__aeabi_ddiv+0x6e>
 8000e10:	085b      	lsrs	r3, r3, #1
 8000e12:	ea4f 0232 	mov.w	r2, r2, rrx
 8000e16:	1ab6      	subs	r6, r6, r2
 8000e18:	eb65 0503 	sbc.w	r5, r5, r3
 8000e1c:	085b      	lsrs	r3, r3, #1
 8000e1e:	ea4f 0232 	mov.w	r2, r2, rrx
 8000e22:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 8000e26:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
 8000e2a:	ebb6 0e02 	subs.w	lr, r6, r2
 8000e2e:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000e32:	bf22      	ittt	cs
 8000e34:	1ab6      	subcs	r6, r6, r2
 8000e36:	4675      	movcs	r5, lr
 8000e38:	ea40 000c 	orrcs.w	r0, r0, ip
 8000e3c:	085b      	lsrs	r3, r3, #1
 8000e3e:	ea4f 0232 	mov.w	r2, r2, rrx
 8000e42:	ebb6 0e02 	subs.w	lr, r6, r2
 8000e46:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000e4a:	bf22      	ittt	cs
 8000e4c:	1ab6      	subcs	r6, r6, r2
 8000e4e:	4675      	movcs	r5, lr
 8000e50:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 8000e54:	085b      	lsrs	r3, r3, #1
 8000e56:	ea4f 0232 	mov.w	r2, r2, rrx
 8000e5a:	ebb6 0e02 	subs.w	lr, r6, r2
 8000e5e:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000e62:	bf22      	ittt	cs
 8000e64:	1ab6      	subcs	r6, r6, r2
 8000e66:	4675      	movcs	r5, lr
 8000e68:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 8000e6c:	085b      	lsrs	r3, r3, #1
 8000e6e:	ea4f 0232 	mov.w	r2, r2, rrx
 8000e72:	ebb6 0e02 	subs.w	lr, r6, r2
 8000e76:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000e7a:	bf22      	ittt	cs
 8000e7c:	1ab6      	subcs	r6, r6, r2
 8000e7e:	4675      	movcs	r5, lr
 8000e80:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 8000e84:	ea55 0e06 	orrs.w	lr, r5, r6
 8000e88:	d018      	beq.n	8000ebc <__aeabi_ddiv+0x114>
 8000e8a:	ea4f 1505 	mov.w	r5, r5, lsl #4
 8000e8e:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 8000e92:	ea4f 1606 	mov.w	r6, r6, lsl #4
 8000e96:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 8000e9a:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 8000e9e:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 8000ea2:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 8000ea6:	d1c0      	bne.n	8000e2a <__aeabi_ddiv+0x82>
 8000ea8:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000eac:	d10b      	bne.n	8000ec6 <__aeabi_ddiv+0x11e>
 8000eae:	ea41 0100 	orr.w	r1, r1, r0
 8000eb2:	f04f 0000 	mov.w	r0, #0
 8000eb6:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 8000eba:	e7b6      	b.n	8000e2a <__aeabi_ddiv+0x82>
 8000ebc:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000ec0:	bf04      	itt	eq
 8000ec2:	4301      	orreq	r1, r0
 8000ec4:	2000      	moveq	r0, #0
 8000ec6:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8000eca:	bf88      	it	hi
 8000ecc:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8000ed0:	f63f aeaf 	bhi.w	8000c32 <__aeabi_dmul+0xde>
 8000ed4:	ebb5 0c03 	subs.w	ip, r5, r3
 8000ed8:	bf04      	itt	eq
 8000eda:	ebb6 0c02 	subseq.w	ip, r6, r2
 8000ede:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8000ee2:	f150 0000 	adcs.w	r0, r0, #0
 8000ee6:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000eea:	bd70      	pop	{r4, r5, r6, pc}
 8000eec:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
 8000ef0:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 8000ef4:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 8000ef8:	bfc2      	ittt	gt
 8000efa:	ebd4 050c 	rsbsgt	r5, r4, ip
 8000efe:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8000f02:	bd70      	popgt	{r4, r5, r6, pc}
 8000f04:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000f08:	f04f 0e00 	mov.w	lr, #0
 8000f0c:	3c01      	subs	r4, #1
 8000f0e:	e690      	b.n	8000c32 <__aeabi_dmul+0xde>
 8000f10:	ea45 0e06 	orr.w	lr, r5, r6
 8000f14:	e68d      	b.n	8000c32 <__aeabi_dmul+0xde>
 8000f16:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8000f1a:	ea94 0f0c 	teq	r4, ip
 8000f1e:	bf08      	it	eq
 8000f20:	ea95 0f0c 	teqeq	r5, ip
 8000f24:	f43f af3b 	beq.w	8000d9e <__aeabi_dmul+0x24a>
 8000f28:	ea94 0f0c 	teq	r4, ip
 8000f2c:	d10a      	bne.n	8000f44 <__aeabi_ddiv+0x19c>
 8000f2e:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8000f32:	f47f af34 	bne.w	8000d9e <__aeabi_dmul+0x24a>
 8000f36:	ea95 0f0c 	teq	r5, ip
 8000f3a:	f47f af25 	bne.w	8000d88 <__aeabi_dmul+0x234>
 8000f3e:	4610      	mov	r0, r2
 8000f40:	4619      	mov	r1, r3
 8000f42:	e72c      	b.n	8000d9e <__aeabi_dmul+0x24a>
 8000f44:	ea95 0f0c 	teq	r5, ip
 8000f48:	d106      	bne.n	8000f58 <__aeabi_ddiv+0x1b0>
 8000f4a:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8000f4e:	f43f aefd 	beq.w	8000d4c <__aeabi_dmul+0x1f8>
 8000f52:	4610      	mov	r0, r2
 8000f54:	4619      	mov	r1, r3
 8000f56:	e722      	b.n	8000d9e <__aeabi_dmul+0x24a>
 8000f58:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000f5c:	bf18      	it	ne
 8000f5e:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000f62:	f47f aec5 	bne.w	8000cf0 <__aeabi_dmul+0x19c>
 8000f66:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 8000f6a:	f47f af0d 	bne.w	8000d88 <__aeabi_dmul+0x234>
 8000f6e:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 8000f72:	f47f aeeb 	bne.w	8000d4c <__aeabi_dmul+0x1f8>
 8000f76:	e712      	b.n	8000d9e <__aeabi_dmul+0x24a>

08000f78 <__gedf2>:
 8000f78:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
 8000f7c:	e006      	b.n	8000f8c <__cmpdf2+0x4>
 8000f7e:	bf00      	nop

08000f80 <__ledf2>:
 8000f80:	f04f 0c01 	mov.w	ip, #1
 8000f84:	e002      	b.n	8000f8c <__cmpdf2+0x4>
 8000f86:	bf00      	nop

08000f88 <__cmpdf2>:
 8000f88:	f04f 0c01 	mov.w	ip, #1
 8000f8c:	f84d cd04 	str.w	ip, [sp, #-4]!
 8000f90:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8000f94:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000f98:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8000f9c:	bf18      	it	ne
 8000f9e:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 8000fa2:	d01b      	beq.n	8000fdc <__cmpdf2+0x54>
 8000fa4:	b001      	add	sp, #4
 8000fa6:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 8000faa:	bf0c      	ite	eq
 8000fac:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 8000fb0:	ea91 0f03 	teqne	r1, r3
 8000fb4:	bf02      	ittt	eq
 8000fb6:	ea90 0f02 	teqeq	r0, r2
 8000fba:	2000      	moveq	r0, #0
 8000fbc:	4770      	bxeq	lr
 8000fbe:	f110 0f00 	cmn.w	r0, #0
 8000fc2:	ea91 0f03 	teq	r1, r3
 8000fc6:	bf58      	it	pl
 8000fc8:	4299      	cmppl	r1, r3
 8000fca:	bf08      	it	eq
 8000fcc:	4290      	cmpeq	r0, r2
 8000fce:	bf2c      	ite	cs
 8000fd0:	17d8      	asrcs	r0, r3, #31
 8000fd2:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 8000fd6:	f040 0001 	orr.w	r0, r0, #1
 8000fda:	4770      	bx	lr
 8000fdc:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8000fe0:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000fe4:	d102      	bne.n	8000fec <__cmpdf2+0x64>
 8000fe6:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8000fea:	d107      	bne.n	8000ffc <__cmpdf2+0x74>
 8000fec:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8000ff0:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000ff4:	d1d6      	bne.n	8000fa4 <__cmpdf2+0x1c>
 8000ff6:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8000ffa:	d0d3      	beq.n	8000fa4 <__cmpdf2+0x1c>
 8000ffc:	f85d 0b04 	ldr.w	r0, [sp], #4
 8001000:	4770      	bx	lr
 8001002:	bf00      	nop

08001004 <__aeabi_cdrcmple>:
 8001004:	4684      	mov	ip, r0
 8001006:	4610      	mov	r0, r2
 8001008:	4662      	mov	r2, ip
 800100a:	468c      	mov	ip, r1
 800100c:	4619      	mov	r1, r3
 800100e:	4663      	mov	r3, ip
 8001010:	e000      	b.n	8001014 <__aeabi_cdcmpeq>
 8001012:	bf00      	nop

08001014 <__aeabi_cdcmpeq>:
 8001014:	b501      	push	{r0, lr}
 8001016:	f7ff ffb7 	bl	8000f88 <__cmpdf2>
 800101a:	2800      	cmp	r0, #0
 800101c:	bf48      	it	mi
 800101e:	f110 0f00 	cmnmi.w	r0, #0
 8001022:	bd01      	pop	{r0, pc}

08001024 <__aeabi_dcmpeq>:
 8001024:	f84d ed08 	str.w	lr, [sp, #-8]!
 8001028:	f7ff fff4 	bl	8001014 <__aeabi_cdcmpeq>
 800102c:	bf0c      	ite	eq
 800102e:	2001      	moveq	r0, #1
 8001030:	2000      	movne	r0, #0
 8001032:	f85d fb08 	ldr.w	pc, [sp], #8
 8001036:	bf00      	nop

08001038 <__aeabi_dcmplt>:
 8001038:	f84d ed08 	str.w	lr, [sp, #-8]!
 800103c:	f7ff ffea 	bl	8001014 <__aeabi_cdcmpeq>
 8001040:	bf34      	ite	cc
 8001042:	2001      	movcc	r0, #1
 8001044:	2000      	movcs	r0, #0
 8001046:	f85d fb08 	ldr.w	pc, [sp], #8
 800104a:	bf00      	nop

0800104c <__aeabi_dcmple>:
 800104c:	f84d ed08 	str.w	lr, [sp, #-8]!
 8001050:	f7ff ffe0 	bl	8001014 <__aeabi_cdcmpeq>
 8001054:	bf94      	ite	ls
 8001056:	2001      	movls	r0, #1
 8001058:	2000      	movhi	r0, #0
 800105a:	f85d fb08 	ldr.w	pc, [sp], #8
 800105e:	bf00      	nop

08001060 <__aeabi_dcmpge>:
 8001060:	f84d ed08 	str.w	lr, [sp, #-8]!
 8001064:	f7ff ffce 	bl	8001004 <__aeabi_cdrcmple>
 8001068:	bf94      	ite	ls
 800106a:	2001      	movls	r0, #1
 800106c:	2000      	movhi	r0, #0
 800106e:	f85d fb08 	ldr.w	pc, [sp], #8
 8001072:	bf00      	nop

08001074 <__aeabi_dcmpgt>:
 8001074:	f84d ed08 	str.w	lr, [sp, #-8]!
 8001078:	f7ff ffc4 	bl	8001004 <__aeabi_cdrcmple>
 800107c:	bf34      	ite	cc
 800107e:	2001      	movcc	r0, #1
 8001080:	2000      	movcs	r0, #0
 8001082:	f85d fb08 	ldr.w	pc, [sp], #8
 8001086:	bf00      	nop

08001088 <__aeabi_dcmpun>:
 8001088:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 800108c:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001090:	d102      	bne.n	8001098 <__aeabi_dcmpun+0x10>
 8001092:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8001096:	d10a      	bne.n	80010ae <__aeabi_dcmpun+0x26>
 8001098:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 800109c:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 80010a0:	d102      	bne.n	80010a8 <__aeabi_dcmpun+0x20>
 80010a2:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 80010a6:	d102      	bne.n	80010ae <__aeabi_dcmpun+0x26>
 80010a8:	f04f 0000 	mov.w	r0, #0
 80010ac:	4770      	bx	lr
 80010ae:	f04f 0001 	mov.w	r0, #1
 80010b2:	4770      	bx	lr

080010b4 <__aeabi_d2iz>:
 80010b4:	ea4f 0241 	mov.w	r2, r1, lsl #1
 80010b8:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 80010bc:	d215      	bcs.n	80010ea <__aeabi_d2iz+0x36>
 80010be:	d511      	bpl.n	80010e4 <__aeabi_d2iz+0x30>
 80010c0:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 80010c4:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 80010c8:	d912      	bls.n	80010f0 <__aeabi_d2iz+0x3c>
 80010ca:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 80010ce:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 80010d2:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 80010d6:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 80010da:	fa23 f002 	lsr.w	r0, r3, r2
 80010de:	bf18      	it	ne
 80010e0:	4240      	negne	r0, r0
 80010e2:	4770      	bx	lr
 80010e4:	f04f 0000 	mov.w	r0, #0
 80010e8:	4770      	bx	lr
 80010ea:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 80010ee:	d105      	bne.n	80010fc <__aeabi_d2iz+0x48>
 80010f0:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 80010f4:	bf08      	it	eq
 80010f6:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 80010fa:	4770      	bx	lr
 80010fc:	f04f 0000 	mov.w	r0, #0
 8001100:	4770      	bx	lr
 8001102:	bf00      	nop

08001104 <HAL_Init>:
 8001104:	b580      	push	{r7, lr}
 8001106:	466f      	mov	r7, sp
 8001108:	2003      	movs	r0, #3
 800110a:	f000 f819 	bl	8001140 <HAL_NVIC_SetPriorityGrouping>
 800110e:	200f      	movs	r0, #15
 8001110:	f000 fb84 	bl	800181c <HAL_InitTick>
 8001114:	2800      	cmp	r0, #0
 8001116:	bf1c      	itt	ne
 8001118:	2001      	movne	r0, #1
 800111a:	bd80      	popne	{r7, pc}
 800111c:	f000 f94b 	bl	80013b6 <HAL_MspInit>
 8001120:	2000      	movs	r0, #0
 8001122:	bd80      	pop	{r7, pc}

08001124 <HAL_IncTick>:
 8001124:	f640 20e0 	movw	r0, #2784	; 0xae0
 8001128:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800112c:	6801      	ldr	r1, [r0, #0]
 800112e:	3101      	adds	r1, #1
 8001130:	6001      	str	r1, [r0, #0]
 8001132:	4770      	bx	lr

08001134 <HAL_GetTick>:
 8001134:	f640 20e0 	movw	r0, #2784	; 0xae0
 8001138:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800113c:	6800      	ldr	r0, [r0, #0]
 800113e:	4770      	bx	lr

08001140 <HAL_NVIC_SetPriorityGrouping>:
 8001140:	f64e 510c 	movw	r1, #60684	; 0xed0c
 8001144:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 8001148:	f2ce 0100 	movt	r1, #57344	; 0xe000
 800114c:	680a      	ldr	r2, [r1, #0]
 800114e:	401a      	ands	r2, r3
 8001150:	f360 220a 	bfi	r2, r0, #8, #3
 8001154:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 8001158:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 800115c:	6008      	str	r0, [r1, #0]
 800115e:	4770      	bx	lr

08001160 <HAL_NVIC_SetPriority>:
 8001160:	b580      	push	{r7, lr}
 8001162:	466f      	mov	r7, sp
 8001164:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 8001168:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 800116c:	2800      	cmp	r0, #0
 800116e:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 8001172:	f000 030f 	and.w	r3, r0, #15
 8001176:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 800117a:	f1a3 0304 	sub.w	r3, r3, #4
 800117e:	4473      	add	r3, lr
 8001180:	bfb8      	it	lt
 8001182:	f103 0c0c 	addlt.w	ip, r3, #12
 8001186:	f8de 0000 	ldr.w	r0, [lr]
 800118a:	f3c0 2002 	ubfx	r0, r0, #8, #3
 800118e:	f100 0e04 	add.w	lr, r0, #4
 8001192:	1ec3      	subs	r3, r0, #3
 8001194:	f080 0007 	eor.w	r0, r0, #7
 8001198:	f1be 0f07 	cmp.w	lr, #7
 800119c:	f04f 0e01 	mov.w	lr, #1
 80011a0:	bf38      	it	cc
 80011a2:	2300      	movcc	r3, #0
 80011a4:	2804      	cmp	r0, #4
 80011a6:	bf28      	it	cs
 80011a8:	2004      	movcs	r0, #4
 80011aa:	fa0e f000 	lsl.w	r0, lr, r0
 80011ae:	3801      	subs	r0, #1
 80011b0:	4008      	ands	r0, r1
 80011b2:	fa0e f103 	lsl.w	r1, lr, r3
 80011b6:	310f      	adds	r1, #15
 80011b8:	4098      	lsls	r0, r3
 80011ba:	4011      	ands	r1, r2
 80011bc:	4308      	orrs	r0, r1
 80011be:	0100      	lsls	r0, r0, #4
 80011c0:	f88c 0000 	strb.w	r0, [ip]
 80011c4:	bd80      	pop	{r7, pc}

080011c6 <HAL_NVIC_EnableIRQ>:
 80011c6:	f000 011f 	and.w	r1, r0, #31
 80011ca:	2201      	movs	r2, #1
 80011cc:	0940      	lsrs	r0, r0, #5
 80011ce:	fa02 f101 	lsl.w	r1, r2, r1
 80011d2:	f24e 1200 	movw	r2, #57600	; 0xe100
 80011d6:	f2ce 0200 	movt	r2, #57344	; 0xe000
 80011da:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 80011de:	4770      	bx	lr

080011e0 <HAL_SYSTICK_IRQHandler>:
 80011e0:	f000 b800 	b.w	80011e4 <HAL_SYSTICK_Callback>

080011e4 <HAL_SYSTICK_Callback>:
 80011e4:	4770      	bx	lr

080011e6 <HAL_GPIO_Init>:
 80011e6:	b5f0      	push	{r4, r5, r6, r7, lr}
 80011e8:	af03      	add	r7, sp, #12
 80011ea:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80011ee:	b082      	sub	sp, #8
 80011f0:	680e      	ldr	r6, [r1, #0]
 80011f2:	2e00      	cmp	r6, #0
 80011f4:	f000 80db 	beq.w	80013ae <HAL_GPIO_Init+0x1c8>
 80011f8:	f641 0200 	movw	r2, #6144	; 0x1800
 80011fc:	2507      	movs	r5, #7
 80011fe:	f04f 0801 	mov.w	r8, #1
 8001202:	f6c4 0200 	movt	r2, #18432	; 0x4800
 8001206:	4290      	cmp	r0, r2
 8001208:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 800120c:	ea4f 23b2 	mov.w	r3, r2, ror #10
 8001210:	bf08      	it	eq
 8001212:	2506      	moveq	r5, #6
 8001214:	2b06      	cmp	r3, #6
 8001216:	bf38      	it	cc
 8001218:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 800121c:	2200      	movs	r2, #0
 800121e:	9500      	str	r5, [sp, #0]
 8001220:	2500      	movs	r5, #0
 8001222:	f1a8 0a01 	sub.w	sl, r8, #1
 8001226:	2301      	movs	r3, #1
 8001228:	fa03 fb0a 	lsl.w	fp, r3, sl
 800122c:	ea16 090b 	ands.w	r9, r6, fp
 8001230:	f000 80b4 	beq.w	800139c <HAL_GPIO_Init+0x1b6>
 8001234:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001238:	f04e 0610 	orr.w	r6, lr, #16
 800123c:	2e12      	cmp	r6, #18
 800123e:	d115      	bne.n	800126c <HAL_GPIO_Init+0x86>
 8001240:	f005 061c 	and.w	r6, r5, #28
 8001244:	230f      	movs	r3, #15
 8001246:	fa03 fc06 	lsl.w	ip, r3, r6
 800124a:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 800124e:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 8001252:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 8001256:	4404      	add	r4, r0
 8001258:	6a23      	ldr	r3, [r4, #32]
 800125a:	ea23 0c0c 	bic.w	ip, r3, ip
 800125e:	690b      	ldr	r3, [r1, #16]
 8001260:	40b3      	lsls	r3, r6
 8001262:	ea43 030c 	orr.w	r3, r3, ip
 8001266:	6223      	str	r3, [r4, #32]
 8001268:	f8d1 e004 	ldr.w	lr, [r1, #4]
 800126c:	6806      	ldr	r6, [r0, #0]
 800126e:	2403      	movs	r4, #3
 8001270:	f00e 0c03 	and.w	ip, lr, #3
 8001274:	f1be 0f12 	cmp.w	lr, #18
 8001278:	fa04 f402 	lsl.w	r4, r4, r2
 800127c:	fa0c f302 	lsl.w	r3, ip, r2
 8001280:	ea26 0604 	bic.w	r6, r6, r4
 8001284:	ea43 0306 	orr.w	r3, r3, r6
 8001288:	ea6f 0604 	mvn.w	r6, r4
 800128c:	6003      	str	r3, [r0, #0]
 800128e:	d816      	bhi.n	80012be <HAL_GPIO_Init+0xd8>
 8001290:	2301      	movs	r3, #1
 8001292:	fa03 f30e 	lsl.w	r3, r3, lr
 8001296:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 800129a:	bf1f      	itttt	ne
 800129c:	6883      	ldrne	r3, [r0, #8]
 800129e:	4033      	andne	r3, r6
 80012a0:	68cc      	ldrne	r4, [r1, #12]
 80012a2:	4094      	lslne	r4, r2
 80012a4:	bf1f      	itttt	ne
 80012a6:	4323      	orrne	r3, r4
 80012a8:	6083      	strne	r3, [r0, #8]
 80012aa:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 80012ae:	fa03 f30a 	lslne.w	r3, r3, sl
 80012b2:	bf1f      	itttt	ne
 80012b4:	6844      	ldrne	r4, [r0, #4]
 80012b6:	ea24 040b 	bicne.w	r4, r4, fp
 80012ba:	4323      	orrne	r3, r4
 80012bc:	6043      	strne	r3, [r0, #4]
 80012be:	f1bc 0f03 	cmp.w	ip, #3
 80012c2:	d108      	bne.n	80012d6 <HAL_GPIO_Init+0xf0>
 80012c4:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 80012c8:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 80012ca:	fa03 f30a 	lsl.w	r3, r3, sl
 80012ce:	ea24 040b 	bic.w	r4, r4, fp
 80012d2:	4323      	orrs	r3, r4
 80012d4:	62c3      	str	r3, [r0, #44]	; 0x2c
 80012d6:	68c3      	ldr	r3, [r0, #12]
 80012d8:	4033      	ands	r3, r6
 80012da:	688e      	ldr	r6, [r1, #8]
 80012dc:	4096      	lsls	r6, r2
 80012de:	4333      	orrs	r3, r6
 80012e0:	60c3      	str	r3, [r0, #12]
 80012e2:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 80012e6:	d559      	bpl.n	800139c <HAL_GPIO_Init+0x1b6>
 80012e8:	f241 0360 	movw	r3, #4192	; 0x1060
 80012ec:	f005 040c 	and.w	r4, r5, #12
 80012f0:	f2c4 0302 	movt	r3, #16386	; 0x4002
 80012f4:	461e      	mov	r6, r3
 80012f6:	6833      	ldr	r3, [r6, #0]
 80012f8:	f043 0301 	orr.w	r3, r3, #1
 80012fc:	6033      	str	r3, [r6, #0]
 80012fe:	6833      	ldr	r3, [r6, #0]
 8001300:	f240 4600 	movw	r6, #1024	; 0x400
 8001304:	f2c4 0601 	movt	r6, #16385	; 0x4001
 8001308:	46b6      	mov	lr, r6
 800130a:	f003 0301 	and.w	r3, r3, #1
 800130e:	9301      	str	r3, [sp, #4]
 8001310:	f02a 0303 	bic.w	r3, sl, #3
 8001314:	9e01      	ldr	r6, [sp, #4]
 8001316:	4473      	add	r3, lr
 8001318:	f64f 4608 	movw	r6, #64520	; 0xfc08
 800131c:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 8001320:	46b2      	mov	sl, r6
 8001322:	260f      	movs	r6, #15
 8001324:	f853 c00a 	ldr.w	ip, [r3, sl]
 8001328:	40a6      	lsls	r6, r4
 800132a:	ea2c 0c06 	bic.w	ip, ip, r6
 800132e:	9e00      	ldr	r6, [sp, #0]
 8001330:	fa06 f404 	lsl.w	r4, r6, r4
 8001334:	ea4c 0604 	orr.w	r6, ip, r4
 8001338:	f843 600a 	str.w	r6, [r3, sl]
 800133c:	f8de 3000 	ldr.w	r3, [lr]
 8001340:	684e      	ldr	r6, [r1, #4]
 8001342:	ea23 0309 	bic.w	r3, r3, r9
 8001346:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 800134a:	bf18      	it	ne
 800134c:	ea43 0309 	orrne.w	r3, r3, r9
 8001350:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 8001354:	f8ce 3000 	str.w	r3, [lr]
 8001358:	f8de 3004 	ldr.w	r3, [lr, #4]
 800135c:	ea23 0309 	bic.w	r3, r3, r9
 8001360:	bf18      	it	ne
 8001362:	ea43 0309 	orrne.w	r3, r3, r9
 8001366:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 800136a:	f8ce 3004 	str.w	r3, [lr, #4]
 800136e:	f8de 3008 	ldr.w	r3, [lr, #8]
 8001372:	ea23 0309 	bic.w	r3, r3, r9
 8001376:	bf18      	it	ne
 8001378:	ea43 0309 	orrne.w	r3, r3, r9
 800137c:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 8001380:	f8ce 3008 	str.w	r3, [lr, #8]
 8001384:	f240 430c 	movw	r3, #1036	; 0x40c
 8001388:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800138c:	461c      	mov	r4, r3
 800138e:	6823      	ldr	r3, [r4, #0]
 8001390:	ea23 0309 	bic.w	r3, r3, r9
 8001394:	bf18      	it	ne
 8001396:	ea43 0309 	orrne.w	r3, r3, r9
 800139a:	6023      	str	r3, [r4, #0]
 800139c:	680e      	ldr	r6, [r1, #0]
 800139e:	3202      	adds	r2, #2
 80013a0:	3504      	adds	r5, #4
 80013a2:	fa36 f308 	lsrs.w	r3, r6, r8
 80013a6:	f108 0801 	add.w	r8, r8, #1
 80013aa:	f47f af3a 	bne.w	8001222 <HAL_GPIO_Init+0x3c>
 80013ae:	b002      	add	sp, #8
 80013b0:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80013b4:	bdf0      	pop	{r4, r5, r6, r7, pc}

080013b6 <HAL_MspInit>:
 80013b6:	4770      	bx	lr

080013b8 <HAL_RCC_GetSysClockFreq>:
 80013b8:	b580      	push	{r7, lr}
 80013ba:	466f      	mov	r7, sp
 80013bc:	f241 010c 	movw	r1, #4108	; 0x100c
 80013c0:	f241 2e00 	movw	lr, #4608	; 0x1200
 80013c4:	f242 4c00 	movw	ip, #9216	; 0x2400
 80013c8:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80013cc:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 80013d0:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 80013d4:	f851 2c04 	ldr.w	r2, [r1, #-4]
 80013d8:	6808      	ldr	r0, [r1, #0]
 80013da:	f012 030c 	ands.w	r3, r2, #12
 80013de:	d005      	beq.n	80013ec <HAL_RCC_GetSysClockFreq+0x34>
 80013e0:	2b0c      	cmp	r3, #12
 80013e2:	bf04      	itt	eq
 80013e4:	f000 0003 	andeq.w	r0, r0, #3
 80013e8:	2801      	cmpeq	r0, #1
 80013ea:	d118      	bne.n	800141e <HAL_RCC_GetSysClockFreq+0x66>
 80013ec:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80013f0:	f010 0f08 	tst.w	r0, #8
 80013f4:	d103      	bne.n	80013fe <HAL_RCC_GetSysClockFreq+0x46>
 80013f6:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 80013fa:	0a00      	lsrs	r0, r0, #8
 80013fc:	e002      	b.n	8001404 <HAL_RCC_GetSysClockFreq+0x4c>
 80013fe:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 8001402:	0900      	lsrs	r0, r0, #4
 8001404:	f647 22f8 	movw	r2, #31480	; 0x7af8
 8001408:	f000 000f 	and.w	r0, r0, #15
 800140c:	2b00      	cmp	r3, #0
 800140e:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001412:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 8001416:	4610      	mov	r0, r2
 8001418:	bf18      	it	ne
 800141a:	2000      	movne	r0, #0
 800141c:	e00b      	b.n	8001436 <HAL_RCC_GetSysClockFreq+0x7e>
 800141e:	f003 000f 	and.w	r0, r3, #15
 8001422:	2804      	cmp	r0, #4
 8001424:	bf04      	itt	eq
 8001426:	4660      	moveq	r0, ip
 8001428:	bd80      	popeq	{r7, pc}
 800142a:	2808      	cmp	r0, #8
 800142c:	bf04      	itt	eq
 800142e:	4670      	moveq	r0, lr
 8001430:	bd80      	popeq	{r7, pc}
 8001432:	2000      	movs	r0, #0
 8001434:	2200      	movs	r2, #0
 8001436:	2b0c      	cmp	r3, #12
 8001438:	bf18      	it	ne
 800143a:	bd80      	popne	{r7, pc}
 800143c:	6808      	ldr	r0, [r1, #0]
 800143e:	f000 0303 	and.w	r3, r0, #3
 8001442:	6808      	ldr	r0, [r1, #0]
 8001444:	2b03      	cmp	r3, #3
 8001446:	f3c0 1002 	ubfx	r0, r0, #4, #3
 800144a:	f100 0001 	add.w	r0, r0, #1
 800144e:	d003      	beq.n	8001458 <HAL_RCC_GetSysClockFreq+0xa0>
 8001450:	2b02      	cmp	r3, #2
 8001452:	46e6      	mov	lr, ip
 8001454:	bf18      	it	ne
 8001456:	4696      	movne	lr, r2
 8001458:	680a      	ldr	r2, [r1, #0]
 800145a:	fbbe f0f0 	udiv	r0, lr, r0
 800145e:	f3c2 2206 	ubfx	r2, r2, #8, #7
 8001462:	6809      	ldr	r1, [r1, #0]
 8001464:	4350      	muls	r0, r2
 8001466:	2202      	movs	r2, #2
 8001468:	f3c1 6141 	ubfx	r1, r1, #25, #2
 800146c:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8001470:	fbb0 f0f1 	udiv	r0, r0, r1
 8001474:	bd80      	pop	{r7, pc}

08001476 <HAL_RCC_GetPCLK1Freq>:
 8001476:	f240 0054 	movw	r0, #84	; 0x54
 800147a:	f241 0108 	movw	r1, #4104	; 0x1008
 800147e:	f647 22f0 	movw	r2, #31472	; 0x7af0
 8001482:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001486:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800148a:	f6c0 0200 	movt	r2, #2048	; 0x800
 800148e:	6800      	ldr	r0, [r0, #0]
 8001490:	6809      	ldr	r1, [r1, #0]
 8001492:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8001496:	5c51      	ldrb	r1, [r2, r1]
 8001498:	f001 011f 	and.w	r1, r1, #31
 800149c:	40c8      	lsrs	r0, r1
 800149e:	4770      	bx	lr

080014a0 <HAL_RCC_GetPCLK2Freq>:
 80014a0:	f240 0054 	movw	r0, #84	; 0x54
 80014a4:	f241 0108 	movw	r1, #4104	; 0x1008
 80014a8:	f647 22f0 	movw	r2, #31472	; 0x7af0
 80014ac:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80014b0:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80014b4:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014b8:	6800      	ldr	r0, [r0, #0]
 80014ba:	6809      	ldr	r1, [r1, #0]
 80014bc:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 80014c0:	5c51      	ldrb	r1, [r2, r1]
 80014c2:	f001 011f 	and.w	r1, r1, #31
 80014c6:	40c8      	lsrs	r0, r1
 80014c8:	4770      	bx	lr

080014ca <HAL_RCC_GetClockConfig>:
 80014ca:	220f      	movs	r2, #15
 80014cc:	6002      	str	r2, [r0, #0]
 80014ce:	f241 0208 	movw	r2, #4104	; 0x1008
 80014d2:	f2c4 0202 	movt	r2, #16386	; 0x4002
 80014d6:	6813      	ldr	r3, [r2, #0]
 80014d8:	f003 0303 	and.w	r3, r3, #3
 80014dc:	6043      	str	r3, [r0, #4]
 80014de:	6813      	ldr	r3, [r2, #0]
 80014e0:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 80014e4:	6083      	str	r3, [r0, #8]
 80014e6:	6813      	ldr	r3, [r2, #0]
 80014e8:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 80014ec:	60c3      	str	r3, [r0, #12]
 80014ee:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 80014f2:	6812      	ldr	r2, [r2, #0]
 80014f4:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 80014f8:	6102      	str	r2, [r0, #16]
 80014fa:	f242 0000 	movw	r0, #8192	; 0x2000
 80014fe:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001502:	6800      	ldr	r0, [r0, #0]
 8001504:	f000 0007 	and.w	r0, r0, #7
 8001508:	6008      	str	r0, [r1, #0]
 800150a:	4770      	bx	lr

0800150c <HAL_TIM_Base_Init>:
 800150c:	b5d0      	push	{r4, r6, r7, lr}
 800150e:	af02      	add	r7, sp, #8
 8001510:	4604      	mov	r4, r0
 8001512:	2c00      	cmp	r4, #0
 8001514:	bf04      	itt	eq
 8001516:	2001      	moveq	r0, #1
 8001518:	bdd0      	popeq	{r4, r6, r7, pc}
 800151a:	6c20      	ldr	r0, [r4, #64]	; 0x40
 800151c:	b920      	cbnz	r0, 8001528 <HAL_TIM_Base_Init+0x1c>
 800151e:	2000      	movs	r0, #0
 8001520:	63e0      	str	r0, [r4, #60]	; 0x3c
 8001522:	4620      	mov	r0, r4
 8001524:	f000 f892 	bl	800164c <HAL_TIM_Base_MspInit>
 8001528:	2002      	movs	r0, #2
 800152a:	f640 32ff 	movw	r2, #3071	; 0xbff
 800152e:	6420      	str	r0, [r4, #64]	; 0x40
 8001530:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001534:	6820      	ldr	r0, [r4, #0]
 8001536:	6801      	ldr	r1, [r0, #0]
 8001538:	4290      	cmp	r0, r2
 800153a:	dc0f      	bgt.n	800155c <HAL_TIM_Base_Init+0x50>
 800153c:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001540:	bf1e      	ittt	ne
 8001542:	f240 4200 	movwne	r2, #1024	; 0x400
 8001546:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 800154a:	4290      	cmpne	r0, r2
 800154c:	d018      	beq.n	8001580 <HAL_TIM_Base_Init+0x74>
 800154e:	f640 0200 	movw	r2, #2048	; 0x800
 8001552:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001556:	4290      	cmp	r0, r2
 8001558:	d012      	beq.n	8001580 <HAL_TIM_Base_Init+0x74>
 800155a:	e015      	b.n	8001588 <HAL_TIM_Base_Init+0x7c>
 800155c:	f640 4200 	movw	r2, #3072	; 0xc00
 8001560:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001564:	4290      	cmp	r0, r2
 8001566:	bf1e      	ittt	ne
 8001568:	f243 4200 	movwne	r2, #13312	; 0x3400
 800156c:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001570:	4290      	cmpne	r0, r2
 8001572:	d005      	beq.n	8001580 <HAL_TIM_Base_Init+0x74>
 8001574:	f642 4200 	movw	r2, #11264	; 0x2c00
 8001578:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800157c:	4290      	cmp	r0, r2
 800157e:	d103      	bne.n	8001588 <HAL_TIM_Base_Init+0x7c>
 8001580:	68a2      	ldr	r2, [r4, #8]
 8001582:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 8001586:	4311      	orrs	r1, r2
 8001588:	f642 32ff 	movw	r2, #11263	; 0x2bff
 800158c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001590:	4290      	cmp	r0, r2
 8001592:	dd14      	ble.n	80015be <HAL_TIM_Base_Init+0xb2>
 8001594:	f643 72ff 	movw	r2, #16383	; 0x3fff
 8001598:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800159c:	4290      	cmp	r0, r2
 800159e:	dd1a      	ble.n	80015d6 <HAL_TIM_Base_Init+0xca>
 80015a0:	f244 0200 	movw	r2, #16384	; 0x4000
 80015a4:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015a8:	4290      	cmp	r0, r2
 80015aa:	bf1e      	ittt	ne
 80015ac:	f644 0200 	movwne	r2, #18432	; 0x4800
 80015b0:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 80015b4:	4290      	cmpne	r0, r2
 80015b6:	d027      	beq.n	8001608 <HAL_TIM_Base_Init+0xfc>
 80015b8:	f244 4200 	movw	r2, #17408	; 0x4400
 80015bc:	e013      	b.n	80015e6 <HAL_TIM_Base_Init+0xda>
 80015be:	f240 72ff 	movw	r2, #2047	; 0x7ff
 80015c2:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015c6:	4290      	cmp	r0, r2
 80015c8:	dc12      	bgt.n	80015f0 <HAL_TIM_Base_Init+0xe4>
 80015ca:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80015ce:	d01b      	beq.n	8001608 <HAL_TIM_Base_Init+0xfc>
 80015d0:	f240 4200 	movw	r2, #1024	; 0x400
 80015d4:	e014      	b.n	8001600 <HAL_TIM_Base_Init+0xf4>
 80015d6:	f642 4200 	movw	r2, #11264	; 0x2c00
 80015da:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015de:	4290      	cmp	r0, r2
 80015e0:	d012      	beq.n	8001608 <HAL_TIM_Base_Init+0xfc>
 80015e2:	f243 4200 	movw	r2, #13312	; 0x3400
 80015e6:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015ea:	4290      	cmp	r0, r2
 80015ec:	d00c      	beq.n	8001608 <HAL_TIM_Base_Init+0xfc>
 80015ee:	e00f      	b.n	8001610 <HAL_TIM_Base_Init+0x104>
 80015f0:	f640 0200 	movw	r2, #2048	; 0x800
 80015f4:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015f8:	4290      	cmp	r0, r2
 80015fa:	d005      	beq.n	8001608 <HAL_TIM_Base_Init+0xfc>
 80015fc:	f640 4200 	movw	r2, #3072	; 0xc00
 8001600:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001604:	4290      	cmp	r0, r2
 8001606:	d103      	bne.n	8001610 <HAL_TIM_Base_Init+0x104>
 8001608:	6922      	ldr	r2, [r4, #16]
 800160a:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 800160e:	4311      	orrs	r1, r2
 8001610:	69a2      	ldr	r2, [r4, #24]
 8001612:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 8001616:	4311      	orrs	r1, r2
 8001618:	6001      	str	r1, [r0, #0]
 800161a:	68e1      	ldr	r1, [r4, #12]
 800161c:	62c1      	str	r1, [r0, #44]	; 0x2c
 800161e:	6861      	ldr	r1, [r4, #4]
 8001620:	6281      	str	r1, [r0, #40]	; 0x28
 8001622:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 8001626:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 800162a:	ea4f 21b1 	mov.w	r1, r1, ror #10
 800162e:	2907      	cmp	r1, #7
 8001630:	d807      	bhi.n	8001642 <HAL_TIM_Base_Init+0x136>
 8001632:	2201      	movs	r2, #1
 8001634:	fa02 f101 	lsl.w	r1, r2, r1
 8001638:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 800163c:	bf1c      	itt	ne
 800163e:	6961      	ldrne	r1, [r4, #20]
 8001640:	6301      	strne	r1, [r0, #48]	; 0x30
 8001642:	2101      	movs	r1, #1
 8001644:	6141      	str	r1, [r0, #20]
 8001646:	2000      	movs	r0, #0
 8001648:	6421      	str	r1, [r4, #64]	; 0x40
 800164a:	bdd0      	pop	{r4, r6, r7, pc}

0800164c <HAL_TIM_Base_MspInit>:
 800164c:	4770      	bx	lr

0800164e <HAL_TIM_Base_Start_IT>:
 800164e:	6800      	ldr	r0, [r0, #0]
 8001650:	68c1      	ldr	r1, [r0, #12]
 8001652:	f041 0101 	orr.w	r1, r1, #1
 8001656:	60c1      	str	r1, [r0, #12]
 8001658:	2107      	movs	r1, #7
 800165a:	6882      	ldr	r2, [r0, #8]
 800165c:	f2c0 0101 	movt	r1, #1
 8001660:	400a      	ands	r2, r1
 8001662:	2a06      	cmp	r2, #6
 8001664:	d008      	beq.n	8001678 <HAL_TIM_Base_Start_IT+0x2a>
 8001666:	6882      	ldr	r2, [r0, #8]
 8001668:	4011      	ands	r1, r2
 800166a:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 800166e:	bf1e      	ittt	ne
 8001670:	6801      	ldrne	r1, [r0, #0]
 8001672:	f041 0101 	orrne.w	r1, r1, #1
 8001676:	6001      	strne	r1, [r0, #0]
 8001678:	2000      	movs	r0, #0
 800167a:	4770      	bx	lr

0800167c <HAL_TIM_IRQHandler>:
 800167c:	b5d0      	push	{r4, r6, r7, lr}
 800167e:	af02      	add	r7, sp, #8
 8001680:	4604      	mov	r4, r0
 8001682:	6820      	ldr	r0, [r4, #0]
 8001684:	6901      	ldr	r1, [r0, #16]
 8001686:	f011 0f02 	tst.w	r1, #2
 800168a:	bf1c      	itt	ne
 800168c:	68c1      	ldrne	r1, [r0, #12]
 800168e:	f011 0f02 	tstne.w	r1, #2
 8001692:	d015      	beq.n	80016c0 <HAL_TIM_IRQHandler+0x44>
 8001694:	f06f 0102 	mvn.w	r1, #2
 8001698:	6101      	str	r1, [r0, #16]
 800169a:	2101      	movs	r1, #1
 800169c:	61e1      	str	r1, [r4, #28]
 800169e:	6980      	ldr	r0, [r0, #24]
 80016a0:	f010 0f03 	tst.w	r0, #3
 80016a4:	d003      	beq.n	80016ae <HAL_TIM_IRQHandler+0x32>
 80016a6:	4620      	mov	r0, r4
 80016a8:	f000 f8b1 	bl	800180e <HAL_TIM_IC_CaptureCallback>
 80016ac:	e005      	b.n	80016ba <HAL_TIM_IRQHandler+0x3e>
 80016ae:	4620      	mov	r0, r4
 80016b0:	f000 f8ae 	bl	8001810 <HAL_TIM_OC_DelayElapsedCallback>
 80016b4:	4620      	mov	r0, r4
 80016b6:	f000 f8ac 	bl	8001812 <HAL_TIM_PWM_PulseFinishedCallback>
 80016ba:	2000      	movs	r0, #0
 80016bc:	61e0      	str	r0, [r4, #28]
 80016be:	6820      	ldr	r0, [r4, #0]
 80016c0:	6901      	ldr	r1, [r0, #16]
 80016c2:	f011 0f04 	tst.w	r1, #4
 80016c6:	bf1c      	itt	ne
 80016c8:	68c1      	ldrne	r1, [r0, #12]
 80016ca:	f011 0f04 	tstne.w	r1, #4
 80016ce:	d015      	beq.n	80016fc <HAL_TIM_IRQHandler+0x80>
 80016d0:	f06f 0104 	mvn.w	r1, #4
 80016d4:	6101      	str	r1, [r0, #16]
 80016d6:	2102      	movs	r1, #2
 80016d8:	61e1      	str	r1, [r4, #28]
 80016da:	6980      	ldr	r0, [r0, #24]
 80016dc:	f410 7f40 	tst.w	r0, #768	; 0x300
 80016e0:	d003      	beq.n	80016ea <HAL_TIM_IRQHandler+0x6e>
 80016e2:	4620      	mov	r0, r4
 80016e4:	f000 f893 	bl	800180e <HAL_TIM_IC_CaptureCallback>
 80016e8:	e005      	b.n	80016f6 <HAL_TIM_IRQHandler+0x7a>
 80016ea:	4620      	mov	r0, r4
 80016ec:	f000 f890 	bl	8001810 <HAL_TIM_OC_DelayElapsedCallback>
 80016f0:	4620      	mov	r0, r4
 80016f2:	f000 f88e 	bl	8001812 <HAL_TIM_PWM_PulseFinishedCallback>
 80016f6:	2000      	movs	r0, #0
 80016f8:	61e0      	str	r0, [r4, #28]
 80016fa:	6820      	ldr	r0, [r4, #0]
 80016fc:	6901      	ldr	r1, [r0, #16]
 80016fe:	f011 0f08 	tst.w	r1, #8
 8001702:	bf1c      	itt	ne
 8001704:	68c1      	ldrne	r1, [r0, #12]
 8001706:	f011 0f08 	tstne.w	r1, #8
 800170a:	d015      	beq.n	8001738 <HAL_TIM_IRQHandler+0xbc>
 800170c:	f06f 0108 	mvn.w	r1, #8
 8001710:	6101      	str	r1, [r0, #16]
 8001712:	2104      	movs	r1, #4
 8001714:	61e1      	str	r1, [r4, #28]
 8001716:	69c0      	ldr	r0, [r0, #28]
 8001718:	f010 0f03 	tst.w	r0, #3
 800171c:	d003      	beq.n	8001726 <HAL_TIM_IRQHandler+0xaa>
 800171e:	4620      	mov	r0, r4
 8001720:	f000 f875 	bl	800180e <HAL_TIM_IC_CaptureCallback>
 8001724:	e005      	b.n	8001732 <HAL_TIM_IRQHandler+0xb6>
 8001726:	4620      	mov	r0, r4
 8001728:	f000 f872 	bl	8001810 <HAL_TIM_OC_DelayElapsedCallback>
 800172c:	4620      	mov	r0, r4
 800172e:	f000 f870 	bl	8001812 <HAL_TIM_PWM_PulseFinishedCallback>
 8001732:	2000      	movs	r0, #0
 8001734:	61e0      	str	r0, [r4, #28]
 8001736:	6820      	ldr	r0, [r4, #0]
 8001738:	6901      	ldr	r1, [r0, #16]
 800173a:	f011 0f10 	tst.w	r1, #16
 800173e:	bf1c      	itt	ne
 8001740:	68c1      	ldrne	r1, [r0, #12]
 8001742:	f011 0f10 	tstne.w	r1, #16
 8001746:	d015      	beq.n	8001774 <HAL_TIM_IRQHandler+0xf8>
 8001748:	f06f 0110 	mvn.w	r1, #16
 800174c:	6101      	str	r1, [r0, #16]
 800174e:	2108      	movs	r1, #8
 8001750:	61e1      	str	r1, [r4, #28]
 8001752:	69c0      	ldr	r0, [r0, #28]
 8001754:	f410 7f40 	tst.w	r0, #768	; 0x300
 8001758:	d003      	beq.n	8001762 <HAL_TIM_IRQHandler+0xe6>
 800175a:	4620      	mov	r0, r4
 800175c:	f000 f857 	bl	800180e <HAL_TIM_IC_CaptureCallback>
 8001760:	e005      	b.n	800176e <HAL_TIM_IRQHandler+0xf2>
 8001762:	4620      	mov	r0, r4
 8001764:	f000 f854 	bl	8001810 <HAL_TIM_OC_DelayElapsedCallback>
 8001768:	4620      	mov	r0, r4
 800176a:	f000 f852 	bl	8001812 <HAL_TIM_PWM_PulseFinishedCallback>
 800176e:	2000      	movs	r0, #0
 8001770:	61e0      	str	r0, [r4, #28]
 8001772:	6820      	ldr	r0, [r4, #0]
 8001774:	6901      	ldr	r1, [r0, #16]
 8001776:	f011 0f01 	tst.w	r1, #1
 800177a:	bf1c      	itt	ne
 800177c:	68c1      	ldrne	r1, [r0, #12]
 800177e:	f011 0f01 	tstne.w	r1, #1
 8001782:	d006      	beq.n	8001792 <HAL_TIM_IRQHandler+0x116>
 8001784:	f06f 0101 	mvn.w	r1, #1
 8001788:	6101      	str	r1, [r0, #16]
 800178a:	4620      	mov	r0, r4
 800178c:	f000 f894 	bl	80018b8 <HAL_TIM_PeriodElapsedCallback>
 8001790:	6820      	ldr	r0, [r4, #0]
 8001792:	6901      	ldr	r1, [r0, #16]
 8001794:	f011 0f80 	tst.w	r1, #128	; 0x80
 8001798:	bf1c      	itt	ne
 800179a:	68c1      	ldrne	r1, [r0, #12]
 800179c:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80017a0:	d006      	beq.n	80017b0 <HAL_TIM_IRQHandler+0x134>
 80017a2:	f06f 0180 	mvn.w	r1, #128	; 0x80
 80017a6:	6101      	str	r1, [r0, #16]
 80017a8:	4620      	mov	r0, r4
 80017aa:	f000 f835 	bl	8001818 <HAL_TIMEx_BreakCallback>
 80017ae:	6820      	ldr	r0, [r4, #0]
 80017b0:	6901      	ldr	r1, [r0, #16]
 80017b2:	f411 7f80 	tst.w	r1, #256	; 0x100
 80017b6:	bf1c      	itt	ne
 80017b8:	68c1      	ldrne	r1, [r0, #12]
 80017ba:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80017be:	d006      	beq.n	80017ce <HAL_TIM_IRQHandler+0x152>
 80017c0:	f46f 7180 	mvn.w	r1, #256	; 0x100
 80017c4:	6101      	str	r1, [r0, #16]
 80017c6:	4620      	mov	r0, r4
 80017c8:	f000 f827 	bl	800181a <HAL_TIMEx_Break2Callback>
 80017cc:	6820      	ldr	r0, [r4, #0]
 80017ce:	6901      	ldr	r1, [r0, #16]
 80017d0:	f011 0f40 	tst.w	r1, #64	; 0x40
 80017d4:	bf1c      	itt	ne
 80017d6:	68c1      	ldrne	r1, [r0, #12]
 80017d8:	f011 0f40 	tstne.w	r1, #64	; 0x40
 80017dc:	d006      	beq.n	80017ec <HAL_TIM_IRQHandler+0x170>
 80017de:	f06f 0140 	mvn.w	r1, #64	; 0x40
 80017e2:	6101      	str	r1, [r0, #16]
 80017e4:	4620      	mov	r0, r4
 80017e6:	f000 f815 	bl	8001814 <HAL_TIM_TriggerCallback>
 80017ea:	6820      	ldr	r0, [r4, #0]
 80017ec:	6901      	ldr	r1, [r0, #16]
 80017ee:	f011 0f20 	tst.w	r1, #32
 80017f2:	bf1c      	itt	ne
 80017f4:	68c1      	ldrne	r1, [r0, #12]
 80017f6:	f011 0f20 	tstne.w	r1, #32
 80017fa:	d100      	bne.n	80017fe <HAL_TIM_IRQHandler+0x182>
 80017fc:	bdd0      	pop	{r4, r6, r7, pc}
 80017fe:	f06f 0120 	mvn.w	r1, #32
 8001802:	6101      	str	r1, [r0, #16]
 8001804:	4620      	mov	r0, r4
 8001806:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 800180a:	f000 b804 	b.w	8001816 <HAL_TIMEx_CommutationCallback>

0800180e <HAL_TIM_IC_CaptureCallback>:
 800180e:	4770      	bx	lr

08001810 <HAL_TIM_OC_DelayElapsedCallback>:
 8001810:	4770      	bx	lr

08001812 <HAL_TIM_PWM_PulseFinishedCallback>:
 8001812:	4770      	bx	lr

08001814 <HAL_TIM_TriggerCallback>:
 8001814:	4770      	bx	lr

08001816 <HAL_TIMEx_CommutationCallback>:
 8001816:	4770      	bx	lr

08001818 <HAL_TIMEx_BreakCallback>:
 8001818:	4770      	bx	lr

0800181a <HAL_TIMEx_Break2Callback>:
 800181a:	4770      	bx	lr

0800181c <HAL_InitTick>:
 800181c:	b5b0      	push	{r4, r5, r7, lr}
 800181e:	af02      	add	r7, sp, #8
 8001820:	b086      	sub	sp, #24
 8001822:	4601      	mov	r1, r0
 8001824:	2036      	movs	r0, #54	; 0x36
 8001826:	2200      	movs	r2, #0
 8001828:	2400      	movs	r4, #0
 800182a:	f7ff fc99 	bl	8001160 <HAL_NVIC_SetPriority>
 800182e:	2036      	movs	r0, #54	; 0x36
 8001830:	f7ff fcc9 	bl	80011c6 <HAL_NVIC_EnableIRQ>
 8001834:	f241 0058 	movw	r0, #4184	; 0x1058
 8001838:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800183c:	6801      	ldr	r1, [r0, #0]
 800183e:	f041 0110 	orr.w	r1, r1, #16
 8001842:	6001      	str	r1, [r0, #0]
 8001844:	4669      	mov	r1, sp
 8001846:	6800      	ldr	r0, [r0, #0]
 8001848:	f000 0010 	and.w	r0, r0, #16
 800184c:	9001      	str	r0, [sp, #4]
 800184e:	9801      	ldr	r0, [sp, #4]
 8001850:	a801      	add	r0, sp, #4
 8001852:	f7ff fe3a 	bl	80014ca <HAL_RCC_GetClockConfig>
 8001856:	9d04      	ldr	r5, [sp, #16]
 8001858:	f7ff fe0d 	bl	8001476 <HAL_RCC_GetPCLK1Freq>
 800185c:	2d00      	cmp	r5, #0
 800185e:	f640 21e4 	movw	r1, #2788	; 0xae4
 8001862:	f241 0200 	movw	r2, #4096	; 0x1000
 8001866:	f240 33e7 	movw	r3, #999	; 0x3e7
 800186a:	bf18      	it	ne
 800186c:	2501      	movne	r5, #1
 800186e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001872:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001876:	40a8      	lsls	r0, r5
 8001878:	f64d 6583 	movw	r5, #56963	; 0xde83
 800187c:	618c      	str	r4, [r1, #24]
 800187e:	f2c4 351b 	movt	r5, #17179	; 0x431b
 8001882:	fba0 0505 	umull	r0, r5, r0, r5
 8001886:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800188a:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 800188e:	e9c1 2000 	strd	r2, r0, [r1]
 8001892:	4608      	mov	r0, r1
 8001894:	e9c1 4302 	strd	r4, r3, [r1, #8]
 8001898:	610c      	str	r4, [r1, #16]
 800189a:	f7ff fe37 	bl	800150c <HAL_TIM_Base_Init>
 800189e:	2800      	cmp	r0, #0
 80018a0:	bf1e      	ittt	ne
 80018a2:	2001      	movne	r0, #1
 80018a4:	b006      	addne	sp, #24
 80018a6:	bdb0      	popne	{r4, r5, r7, pc}
 80018a8:	f640 20e4 	movw	r0, #2788	; 0xae4
 80018ac:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80018b0:	f7ff fecd 	bl	800164e <HAL_TIM_Base_Start_IT>
 80018b4:	b006      	add	sp, #24
 80018b6:	bdb0      	pop	{r4, r5, r7, pc}

080018b8 <HAL_TIM_PeriodElapsedCallback>:
 80018b8:	f7ff bc34 	b.w	8001124 <HAL_IncTick>

080018bc <TIM6_DAC_IRQHandler>:
 80018bc:	f640 20e4 	movw	r0, #2788	; 0xae4
 80018c0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80018c4:	f7ff beda 	b.w	800167c <HAL_TIM_IRQHandler>

080018c8 <HAL_UART_Init>:
 80018c8:	b5d0      	push	{r4, r6, r7, lr}
 80018ca:	af02      	add	r7, sp, #8
 80018cc:	4604      	mov	r4, r0
 80018ce:	b194      	cbz	r4, 80018f6 <HAL_UART_Init+0x2e>
 80018d0:	6f60      	ldr	r0, [r4, #116]	; 0x74
 80018d2:	b920      	cbnz	r0, 80018de <HAL_UART_Init+0x16>
 80018d4:	2000      	movs	r0, #0
 80018d6:	6720      	str	r0, [r4, #112]	; 0x70
 80018d8:	4620      	mov	r0, r4
 80018da:	f000 f826 	bl	800192a <HAL_UART_MspInit>
 80018de:	2024      	movs	r0, #36	; 0x24
 80018e0:	6760      	str	r0, [r4, #116]	; 0x74
 80018e2:	6820      	ldr	r0, [r4, #0]
 80018e4:	6801      	ldr	r1, [r0, #0]
 80018e6:	f021 0101 	bic.w	r1, r1, #1
 80018ea:	6001      	str	r1, [r0, #0]
 80018ec:	4620      	mov	r0, r4
 80018ee:	f000 f81d 	bl	800192c <UART_SetConfig>
 80018f2:	2801      	cmp	r0, #1
 80018f4:	d101      	bne.n	80018fa <HAL_UART_Init+0x32>
 80018f6:	2001      	movs	r0, #1
 80018f8:	bdd0      	pop	{r4, r6, r7, pc}
 80018fa:	6a60      	ldr	r0, [r4, #36]	; 0x24
 80018fc:	2800      	cmp	r0, #0
 80018fe:	bf1c      	itt	ne
 8001900:	4620      	movne	r0, r4
 8001902:	f000 f944 	blne	8001b8e <UART_AdvFeatureConfig>
 8001906:	6820      	ldr	r0, [r4, #0]
 8001908:	6841      	ldr	r1, [r0, #4]
 800190a:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 800190e:	6041      	str	r1, [r0, #4]
 8001910:	6881      	ldr	r1, [r0, #8]
 8001912:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 8001916:	6081      	str	r1, [r0, #8]
 8001918:	6801      	ldr	r1, [r0, #0]
 800191a:	f041 0101 	orr.w	r1, r1, #1
 800191e:	6001      	str	r1, [r0, #0]
 8001920:	4620      	mov	r0, r4
 8001922:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001926:	f000 b99d 	b.w	8001c64 <UART_CheckIdleState>

0800192a <HAL_UART_MspInit>:
 800192a:	4770      	bx	lr

0800192c <UART_SetConfig>:
 800192c:	b5b0      	push	{r4, r5, r7, lr}
 800192e:	af02      	add	r7, sp, #8
 8001930:	4604      	mov	r4, r0
 8001932:	f646 15f3 	movw	r5, #27123	; 0x69f3
 8001936:	f248 0e00 	movw	lr, #32768	; 0x8000
 800193a:	f241 0c88 	movw	ip, #4232	; 0x1088
 800193e:	6821      	ldr	r1, [r4, #0]
 8001940:	68a0      	ldr	r0, [r4, #8]
 8001942:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 8001946:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 800194a:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 800194e:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 8001952:	4310      	orrs	r0, r2
 8001954:	69e2      	ldr	r2, [r4, #28]
 8001956:	4571      	cmp	r1, lr
 8001958:	ea40 0003 	orr.w	r0, r0, r3
 800195c:	680b      	ldr	r3, [r1, #0]
 800195e:	ea40 0002 	orr.w	r0, r0, r2
 8001962:	ea03 0305 	and.w	r3, r3, r5
 8001966:	f04f 0510 	mov.w	r5, #16
 800196a:	ea40 0003 	orr.w	r0, r0, r3
 800196e:	6008      	str	r0, [r1, #0]
 8001970:	6848      	ldr	r0, [r1, #4]
 8001972:	68e3      	ldr	r3, [r4, #12]
 8001974:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001978:	ea40 0003 	orr.w	r0, r0, r3
 800197c:	6048      	str	r0, [r1, #4]
 800197e:	69a0      	ldr	r0, [r4, #24]
 8001980:	bf1c      	itt	ne
 8001982:	6a23      	ldrne	r3, [r4, #32]
 8001984:	4318      	orrne	r0, r3
 8001986:	688b      	ldr	r3, [r1, #8]
 8001988:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 800198c:	4318      	orrs	r0, r3
 800198e:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001992:	6088      	str	r0, [r1, #8]
 8001994:	f242 4000 	movw	r0, #9216	; 0x2400
 8001998:	f2c4 0300 	movt	r3, #16384	; 0x4000
 800199c:	f2c0 00f4 	movt	r0, #244	; 0xf4
 80019a0:	4299      	cmp	r1, r3
 80019a2:	dc15      	bgt.n	80019d0 <UART_SetConfig+0xa4>
 80019a4:	f244 4300 	movw	r3, #17408	; 0x4400
 80019a8:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019ac:	4299      	cmp	r1, r3
 80019ae:	d024      	beq.n	80019fa <UART_SetConfig+0xce>
 80019b0:	f644 0300 	movw	r3, #18432	; 0x4800
 80019b4:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019b8:	4299      	cmp	r1, r3
 80019ba:	d022      	beq.n	8001a02 <UART_SetConfig+0xd6>
 80019bc:	f644 4300 	movw	r3, #19456	; 0x4c00
 80019c0:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019c4:	4299      	cmp	r1, r3
 80019c6:	d131      	bne.n	8001a2c <UART_SetConfig+0x100>
 80019c8:	f8dc 3000 	ldr.w	r3, [ip]
 80019cc:	099d      	lsrs	r5, r3, #6
 80019ce:	e023      	b.n	8001a18 <UART_SetConfig+0xec>
 80019d0:	f245 0300 	movw	r3, #20480	; 0x5000
 80019d4:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019d8:	4299      	cmp	r1, r3
 80019da:	d016      	beq.n	8001a0a <UART_SetConfig+0xde>
 80019dc:	4571      	cmp	r1, lr
 80019de:	d018      	beq.n	8001a12 <UART_SetConfig+0xe6>
 80019e0:	f643 0300 	movw	r3, #14336	; 0x3800
 80019e4:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80019e8:	4299      	cmp	r1, r3
 80019ea:	d11f      	bne.n	8001a2c <UART_SetConfig+0x100>
 80019ec:	f8dc 5000 	ldr.w	r5, [ip]
 80019f0:	f647 3328 	movw	r3, #31528	; 0x7b28
 80019f4:	f6c0 0300 	movt	r3, #2048	; 0x800
 80019f8:	e012      	b.n	8001a20 <UART_SetConfig+0xf4>
 80019fa:	f8dc 3000 	ldr.w	r3, [ip]
 80019fe:	089d      	lsrs	r5, r3, #2
 8001a00:	e00a      	b.n	8001a18 <UART_SetConfig+0xec>
 8001a02:	f8dc 3000 	ldr.w	r3, [ip]
 8001a06:	091d      	lsrs	r5, r3, #4
 8001a08:	e006      	b.n	8001a18 <UART_SetConfig+0xec>
 8001a0a:	f8dc 3000 	ldr.w	r3, [ip]
 8001a0e:	0a1d      	lsrs	r5, r3, #8
 8001a10:	e002      	b.n	8001a18 <UART_SetConfig+0xec>
 8001a12:	f8dc 3000 	ldr.w	r3, [ip]
 8001a16:	0a9d      	lsrs	r5, r3, #10
 8001a18:	f647 3338 	movw	r3, #31544	; 0x7b38
 8001a1c:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a20:	f005 0503 	and.w	r5, r5, #3
 8001a24:	f085 0502 	eor.w	r5, r5, #2
 8001a28:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001a2c:	4571      	cmp	r1, lr
 8001a2e:	d012      	beq.n	8001a56 <UART_SetConfig+0x12a>
 8001a30:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001a34:	d11d      	bne.n	8001a72 <UART_SetConfig+0x146>
 8001a36:	f005 001f 	and.w	r0, r5, #31
 8001a3a:	2101      	movs	r1, #1
 8001a3c:	2808      	cmp	r0, #8
 8001a3e:	f200 809f 	bhi.w	8001b80 <UART_SetConfig+0x254>
 8001a42:	e8df f000 	tbb	[pc, r0]
 8001a46:	4005      	.short	0x4005
 8001a48:	9d499d43 	.word	0x9d499d43
 8001a4c:	004f9d9d 	.word	0x004f9d9d
 8001a50:	f7ff fd11 	bl	8001476 <HAL_RCC_GetPCLK1Freq>
 8001a54:	e042      	b.n	8001adc <UART_SetConfig+0x1b0>
 8001a56:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001a5a:	2101      	movs	r1, #1
 8001a5c:	2d04      	cmp	r5, #4
 8001a5e:	f200 808f 	bhi.w	8001b80 <UART_SetConfig+0x254>
 8001a62:	e8df f005 	tbb	[pc, r5]
 8001a66:	1c03      	.short	0x1c03
 8001a68:	001a8d16 	.word	0x001a8d16
 8001a6c:	f7ff fd03 	bl	8001476 <HAL_RCC_GetPCLK1Freq>
 8001a70:	e011      	b.n	8001a96 <UART_SetConfig+0x16a>
 8001a72:	f005 021f 	and.w	r2, r5, #31
 8001a76:	2101      	movs	r1, #1
 8001a78:	2a08      	cmp	r2, #8
 8001a7a:	f200 8081 	bhi.w	8001b80 <UART_SetConfig+0x254>
 8001a7e:	e8df f002 	tbb	[pc, r2]
 8001a82:	4305      	.short	0x4305
 8001a84:	7f487f46 	.word	0x7f487f46
 8001a88:	004e7f7f 	.word	0x004e7f7f
 8001a8c:	f7ff fcf3 	bl	8001476 <HAL_RCC_GetPCLK1Freq>
 8001a90:	e041      	b.n	8001b16 <UART_SetConfig+0x1ea>
 8001a92:	f7ff fc91 	bl	80013b8 <HAL_RCC_GetSysClockFreq>
 8001a96:	b910      	cbnz	r0, 8001a9e <UART_SetConfig+0x172>
 8001a98:	e071      	b.n	8001b7e <UART_SetConfig+0x252>
 8001a9a:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001a9e:	6862      	ldr	r2, [r4, #4]
 8001aa0:	2101      	movs	r1, #1
 8001aa2:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001aa6:	4298      	cmp	r0, r3
 8001aa8:	d36a      	bcc.n	8001b80 <UART_SetConfig+0x254>
 8001aaa:	0313      	lsls	r3, r2, #12
 8001aac:	4298      	cmp	r0, r3
 8001aae:	bf9c      	itt	ls
 8001ab0:	2101      	movls	r1, #1
 8001ab2:	2d04      	cmpls	r5, #4
 8001ab4:	d864      	bhi.n	8001b80 <UART_SetConfig+0x254>
 8001ab6:	e8df f005 	tbb	[pc, r5]
 8001aba:	3e03      	.short	0x3e03
 8001abc:	00526345 	.word	0x00526345
 8001ac0:	f7ff fcd9 	bl	8001476 <HAL_RCC_GetPCLK1Freq>
 8001ac4:	e040      	b.n	8001b48 <UART_SetConfig+0x21c>
 8001ac6:	f7ff fceb 	bl	80014a0 <HAL_RCC_GetPCLK2Freq>
 8001aca:	e007      	b.n	8001adc <UART_SetConfig+0x1b0>
 8001acc:	6861      	ldr	r1, [r4, #4]
 8001ace:	f644 0200 	movw	r2, #18432	; 0x4800
 8001ad2:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001ad6:	e008      	b.n	8001aea <UART_SetConfig+0x1be>
 8001ad8:	f7ff fc6e 	bl	80013b8 <HAL_RCC_GetSysClockFreq>
 8001adc:	6861      	ldr	r1, [r4, #4]
 8001ade:	0040      	lsls	r0, r0, #1
 8001ae0:	084a      	lsrs	r2, r1, #1
 8001ae2:	e003      	b.n	8001aec <UART_SetConfig+0x1c0>
 8001ae4:	6861      	ldr	r1, [r4, #4]
 8001ae6:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001aea:	0848      	lsrs	r0, r1, #1
 8001aec:	4410      	add	r0, r2
 8001aee:	fbb0 f0f1 	udiv	r0, r0, r1
 8001af2:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001af6:	4001      	ands	r1, r0
 8001af8:	2910      	cmp	r1, #16
 8001afa:	d303      	bcc.n	8001b04 <UART_SetConfig+0x1d8>
 8001afc:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001b00:	4308      	orrs	r0, r1
 8001b02:	e03a      	b.n	8001b7a <UART_SetConfig+0x24e>
 8001b04:	2101      	movs	r1, #1
 8001b06:	e03b      	b.n	8001b80 <UART_SetConfig+0x254>
 8001b08:	f7ff fcca 	bl	80014a0 <HAL_RCC_GetPCLK2Freq>
 8001b0c:	e003      	b.n	8001b16 <UART_SetConfig+0x1ea>
 8001b0e:	6862      	ldr	r2, [r4, #4]
 8001b10:	e008      	b.n	8001b24 <UART_SetConfig+0x1f8>
 8001b12:	f7ff fc51 	bl	80013b8 <HAL_RCC_GetSysClockFreq>
 8001b16:	6862      	ldr	r2, [r4, #4]
 8001b18:	4601      	mov	r1, r0
 8001b1a:	0850      	lsrs	r0, r2, #1
 8001b1c:	e003      	b.n	8001b26 <UART_SetConfig+0x1fa>
 8001b1e:	6862      	ldr	r2, [r4, #4]
 8001b20:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b24:	0851      	lsrs	r1, r2, #1
 8001b26:	4408      	add	r0, r1
 8001b28:	fbb0 f0f2 	udiv	r0, r0, r2
 8001b2c:	b280      	uxth	r0, r0
 8001b2e:	2810      	cmp	r0, #16
 8001b30:	d223      	bcs.n	8001b7a <UART_SetConfig+0x24e>
 8001b32:	2101      	movs	r1, #1
 8001b34:	e024      	b.n	8001b80 <UART_SetConfig+0x254>
 8001b36:	2000      	movs	r0, #0
 8001b38:	2100      	movs	r1, #0
 8001b3a:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001b3e:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001b42:	e006      	b.n	8001b52 <UART_SetConfig+0x226>
 8001b44:	f7ff fc38 	bl	80013b8 <HAL_RCC_GetSysClockFreq>
 8001b48:	6862      	ldr	r2, [r4, #4]
 8001b4a:	0e01      	lsrs	r1, r0, #24
 8001b4c:	0853      	lsrs	r3, r2, #1
 8001b4e:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001b52:	f141 0100 	adc.w	r1, r1, #0
 8001b56:	2300      	movs	r3, #0
 8001b58:	f7fe fb52 	bl	8000200 <__aeabi_uldivmod>
 8001b5c:	e005      	b.n	8001b6a <UART_SetConfig+0x23e>
 8001b5e:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001b62:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001b66:	fbb0 f0f2 	udiv	r0, r0, r2
 8001b6a:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001b6e:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001b72:	f2c0 020f 	movt	r2, #15
 8001b76:	4291      	cmp	r1, r2
 8001b78:	d807      	bhi.n	8001b8a <UART_SetConfig+0x25e>
 8001b7a:	6821      	ldr	r1, [r4, #0]
 8001b7c:	60c8      	str	r0, [r1, #12]
 8001b7e:	2100      	movs	r1, #0
 8001b80:	2000      	movs	r0, #0
 8001b82:	e9c4 0018 	strd	r0, r0, [r4, #96]	; 0x60
 8001b86:	4608      	mov	r0, r1
 8001b88:	bdb0      	pop	{r4, r5, r7, pc}
 8001b8a:	2101      	movs	r1, #1
 8001b8c:	e7f8      	b.n	8001b80 <UART_SetConfig+0x254>

08001b8e <UART_AdvFeatureConfig>:
 8001b8e:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001b90:	f011 0f01 	tst.w	r1, #1
 8001b94:	d008      	beq.n	8001ba8 <UART_AdvFeatureConfig+0x1a>
 8001b96:	6802      	ldr	r2, [r0, #0]
 8001b98:	6853      	ldr	r3, [r2, #4]
 8001b9a:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001b9e:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001ba2:	ea43 030c 	orr.w	r3, r3, ip
 8001ba6:	6053      	str	r3, [r2, #4]
 8001ba8:	078a      	lsls	r2, r1, #30
 8001baa:	d508      	bpl.n	8001bbe <UART_AdvFeatureConfig+0x30>
 8001bac:	6802      	ldr	r2, [r0, #0]
 8001bae:	6853      	ldr	r3, [r2, #4]
 8001bb0:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001bb4:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001bb8:	ea43 030c 	orr.w	r3, r3, ip
 8001bbc:	6053      	str	r3, [r2, #4]
 8001bbe:	074a      	lsls	r2, r1, #29
 8001bc0:	d508      	bpl.n	8001bd4 <UART_AdvFeatureConfig+0x46>
 8001bc2:	6802      	ldr	r2, [r0, #0]
 8001bc4:	6853      	ldr	r3, [r2, #4]
 8001bc6:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001bca:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001bce:	ea43 030c 	orr.w	r3, r3, ip
 8001bd2:	6053      	str	r3, [r2, #4]
 8001bd4:	070a      	lsls	r2, r1, #28
 8001bd6:	d508      	bpl.n	8001bea <UART_AdvFeatureConfig+0x5c>
 8001bd8:	6802      	ldr	r2, [r0, #0]
 8001bda:	6853      	ldr	r3, [r2, #4]
 8001bdc:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001be0:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001be4:	ea43 030c 	orr.w	r3, r3, ip
 8001be8:	6053      	str	r3, [r2, #4]
 8001bea:	06ca      	lsls	r2, r1, #27
 8001bec:	d508      	bpl.n	8001c00 <UART_AdvFeatureConfig+0x72>
 8001bee:	6802      	ldr	r2, [r0, #0]
 8001bf0:	6893      	ldr	r3, [r2, #8]
 8001bf2:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001bf6:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001bfa:	ea43 030c 	orr.w	r3, r3, ip
 8001bfe:	6093      	str	r3, [r2, #8]
 8001c00:	068a      	lsls	r2, r1, #26
 8001c02:	d508      	bpl.n	8001c16 <UART_AdvFeatureConfig+0x88>
 8001c04:	6802      	ldr	r2, [r0, #0]
 8001c06:	6893      	ldr	r3, [r2, #8]
 8001c08:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001c0c:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001c10:	ea43 030c 	orr.w	r3, r3, ip
 8001c14:	6093      	str	r3, [r2, #8]
 8001c16:	b580      	push	{r7, lr}
 8001c18:	466f      	mov	r7, sp
 8001c1a:	064a      	lsls	r2, r1, #25
 8001c1c:	d515      	bpl.n	8001c4a <UART_AdvFeatureConfig+0xbc>
 8001c1e:	f8d0 e000 	ldr.w	lr, [r0]
 8001c22:	f8de c004 	ldr.w	ip, [lr, #4]
 8001c26:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001c28:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001c2c:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001c30:	ea42 0203 	orr.w	r2, r2, r3
 8001c34:	f8ce 2004 	str.w	r2, [lr, #4]
 8001c38:	d107      	bne.n	8001c4a <UART_AdvFeatureConfig+0xbc>
 8001c3a:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001c3e:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001c40:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001c44:	431a      	orrs	r2, r3
 8001c46:	f8ce 2004 	str.w	r2, [lr, #4]
 8001c4a:	0609      	lsls	r1, r1, #24
 8001c4c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001c50:	bf58      	it	pl
 8001c52:	4770      	bxpl	lr
 8001c54:	6801      	ldr	r1, [r0, #0]
 8001c56:	684a      	ldr	r2, [r1, #4]
 8001c58:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001c5a:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001c5e:	4310      	orrs	r0, r2
 8001c60:	6048      	str	r0, [r1, #4]
 8001c62:	4770      	bx	lr

08001c64 <UART_CheckIdleState>:
 8001c64:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001c66:	af03      	add	r7, sp, #12
 8001c68:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001c6c:	4604      	mov	r4, r0
 8001c6e:	2000      	movs	r0, #0
 8001c70:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001c72:	f7ff fa5f 	bl	8001134 <HAL_GetTick>
 8001c76:	4605      	mov	r5, r0
 8001c78:	6820      	ldr	r0, [r4, #0]
 8001c7a:	6801      	ldr	r1, [r0, #0]
 8001c7c:	f011 0f08 	tst.w	r1, #8
 8001c80:	d00f      	beq.n	8001ca2 <UART_CheckIdleState+0x3e>
 8001c82:	69c1      	ldr	r1, [r0, #28]
 8001c84:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001c88:	d10b      	bne.n	8001ca2 <UART_CheckIdleState+0x3e>
 8001c8a:	2600      	movs	r6, #0
 8001c8c:	f7ff fa52 	bl	8001134 <HAL_GetTick>
 8001c90:	1b41      	subs	r1, r0, r5
 8001c92:	6820      	ldr	r0, [r4, #0]
 8001c94:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001c98:	d11b      	bne.n	8001cd2 <UART_CheckIdleState+0x6e>
 8001c9a:	69c1      	ldr	r1, [r0, #28]
 8001c9c:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001ca0:	d0f4      	beq.n	8001c8c <UART_CheckIdleState+0x28>
 8001ca2:	6801      	ldr	r1, [r0, #0]
 8001ca4:	f011 0f04 	tst.w	r1, #4
 8001ca8:	d101      	bne.n	8001cae <UART_CheckIdleState+0x4a>
 8001caa:	2600      	movs	r6, #0
 8001cac:	e01a      	b.n	8001ce4 <UART_CheckIdleState+0x80>
 8001cae:	69c0      	ldr	r0, [r0, #28]
 8001cb0:	2600      	movs	r6, #0
 8001cb2:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001cb6:	d115      	bne.n	8001ce4 <UART_CheckIdleState+0x80>
 8001cb8:	f7ff fa3c 	bl	8001134 <HAL_GetTick>
 8001cbc:	1b41      	subs	r1, r0, r5
 8001cbe:	6820      	ldr	r0, [r4, #0]
 8001cc0:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001cc4:	d105      	bne.n	8001cd2 <UART_CheckIdleState+0x6e>
 8001cc6:	69c0      	ldr	r0, [r0, #28]
 8001cc8:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001ccc:	d0f4      	beq.n	8001cb8 <UART_CheckIdleState+0x54>
 8001cce:	2600      	movs	r6, #0
 8001cd0:	e008      	b.n	8001ce4 <UART_CheckIdleState+0x80>
 8001cd2:	6801      	ldr	r1, [r0, #0]
 8001cd4:	2603      	movs	r6, #3
 8001cd6:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001cda:	6001      	str	r1, [r0, #0]
 8001cdc:	6881      	ldr	r1, [r0, #8]
 8001cde:	f021 0101 	bic.w	r1, r1, #1
 8001ce2:	6081      	str	r1, [r0, #8]
 8001ce4:	2020      	movs	r0, #32
 8001ce6:	6760      	str	r0, [r4, #116]	; 0x74
 8001ce8:	67a0      	str	r0, [r4, #120]	; 0x78
 8001cea:	2000      	movs	r0, #0
 8001cec:	6720      	str	r0, [r4, #112]	; 0x70
 8001cee:	4630      	mov	r0, r6
 8001cf0:	f85d bb04 	ldr.w	fp, [sp], #4
 8001cf4:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001cf6 <HAL_UART_Transmit>:
 8001cf6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001cf8:	af03      	add	r7, sp, #12
 8001cfa:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001cfe:	b081      	sub	sp, #4
 8001d00:	4604      	mov	r4, r0
 8001d02:	461d      	mov	r5, r3
 8001d04:	4616      	mov	r6, r2
 8001d06:	4689      	mov	r9, r1
 8001d08:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001d0a:	2820      	cmp	r0, #32
 8001d0c:	d109      	bne.n	8001d22 <HAL_UART_Transmit+0x2c>
 8001d0e:	f1b9 0f00 	cmp.w	r9, #0
 8001d12:	f04f 0001 	mov.w	r0, #1
 8001d16:	bf18      	it	ne
 8001d18:	2e00      	cmpne	r6, #0
 8001d1a:	d003      	beq.n	8001d24 <HAL_UART_Transmit+0x2e>
 8001d1c:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001d1e:	2801      	cmp	r0, #1
 8001d20:	d104      	bne.n	8001d2c <HAL_UART_Transmit+0x36>
 8001d22:	2002      	movs	r0, #2
 8001d24:	b001      	add	sp, #4
 8001d26:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001d2a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001d2c:	2001      	movs	r0, #1
 8001d2e:	6720      	str	r0, [r4, #112]	; 0x70
 8001d30:	2000      	movs	r0, #0
 8001d32:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001d34:	2021      	movs	r0, #33	; 0x21
 8001d36:	6760      	str	r0, [r4, #116]	; 0x74
 8001d38:	f7ff f9fc 	bl	8001134 <HAL_GetTick>
 8001d3c:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
 8001d40:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
 8001d44:	4680      	mov	r8, r0
 8001d46:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001d4a:	f8d4 b000 	ldr.w	fp, [r4]
 8001d4e:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001d52:	2900      	cmp	r1, #0
 8001d54:	d040      	beq.n	8001dd8 <HAL_UART_Transmit+0xe2>
 8001d56:	f105 0a01 	add.w	sl, r5, #1
 8001d5a:	0600      	lsls	r0, r0, #24
 8001d5c:	d410      	bmi.n	8001d80 <HAL_UART_Transmit+0x8a>
 8001d5e:	465e      	mov	r6, fp
 8001d60:	f1ba 0f00 	cmp.w	sl, #0
 8001d64:	d007      	beq.n	8001d76 <HAL_UART_Transmit+0x80>
 8001d66:	b33d      	cbz	r5, 8001db8 <HAL_UART_Transmit+0xc2>
 8001d68:	f7ff f9e4 	bl	8001134 <HAL_GetTick>
 8001d6c:	6826      	ldr	r6, [r4, #0]
 8001d6e:	eba0 0008 	sub.w	r0, r0, r8
 8001d72:	42a8      	cmp	r0, r5
 8001d74:	d821      	bhi.n	8001dba <HAL_UART_Transmit+0xc4>
 8001d76:	69f0      	ldr	r0, [r6, #28]
 8001d78:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001d7c:	d0f0      	beq.n	8001d60 <HAL_UART_Transmit+0x6a>
 8001d7e:	e000      	b.n	8001d82 <HAL_UART_Transmit+0x8c>
 8001d80:	465e      	mov	r6, fp
 8001d82:	68a0      	ldr	r0, [r4, #8]
 8001d84:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001d88:	bf04      	itt	eq
 8001d8a:	6920      	ldreq	r0, [r4, #16]
 8001d8c:	2800      	cmpeq	r0, #0
 8001d8e:	d002      	beq.n	8001d96 <HAL_UART_Transmit+0xa0>
 8001d90:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001d94:	e003      	b.n	8001d9e <HAL_UART_Transmit+0xa8>
 8001d96:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001d9a:	f36f 205f 	bfc	r0, #9, #23
 8001d9e:	8530      	strh	r0, [r6, #40]	; 0x28
 8001da0:	46b3      	mov	fp, r6
 8001da2:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001da6:	3801      	subs	r0, #1
 8001da8:	f8a4 0052 	strh.w	r0, [r4, #82]	; 0x52
 8001dac:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001db0:	69f0      	ldr	r0, [r6, #28]
 8001db2:	2900      	cmp	r1, #0
 8001db4:	d1d1      	bne.n	8001d5a <HAL_UART_Transmit+0x64>
 8001db6:	e010      	b.n	8001dda <HAL_UART_Transmit+0xe4>
 8001db8:	465e      	mov	r6, fp
 8001dba:	6830      	ldr	r0, [r6, #0]
 8001dbc:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001dc0:	6030      	str	r0, [r6, #0]
 8001dc2:	68b0      	ldr	r0, [r6, #8]
 8001dc4:	f020 0001 	bic.w	r0, r0, #1
 8001dc8:	60b0      	str	r0, [r6, #8]
 8001dca:	2020      	movs	r0, #32
 8001dcc:	6760      	str	r0, [r4, #116]	; 0x74
 8001dce:	67a0      	str	r0, [r4, #120]	; 0x78
 8001dd0:	2000      	movs	r0, #0
 8001dd2:	6720      	str	r0, [r4, #112]	; 0x70
 8001dd4:	2003      	movs	r0, #3
 8001dd6:	e7a5      	b.n	8001d24 <HAL_UART_Transmit+0x2e>
 8001dd8:	465e      	mov	r6, fp
 8001dda:	0640      	lsls	r0, r0, #25
 8001ddc:	d411      	bmi.n	8001e02 <HAL_UART_Transmit+0x10c>
 8001dde:	f105 0901 	add.w	r9, r5, #1
 8001de2:	4630      	mov	r0, r6
 8001de4:	f1b9 0f00 	cmp.w	r9, #0
 8001de8:	d007      	beq.n	8001dfa <HAL_UART_Transmit+0x104>
 8001dea:	b17d      	cbz	r5, 8001e0c <HAL_UART_Transmit+0x116>
 8001dec:	f7ff f9a2 	bl	8001134 <HAL_GetTick>
 8001df0:	eba0 0108 	sub.w	r1, r0, r8
 8001df4:	6820      	ldr	r0, [r4, #0]
 8001df6:	42a9      	cmp	r1, r5
 8001df8:	d809      	bhi.n	8001e0e <HAL_UART_Transmit+0x118>
 8001dfa:	69c1      	ldr	r1, [r0, #28]
 8001dfc:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001e00:	d0f0      	beq.n	8001de4 <HAL_UART_Transmit+0xee>
 8001e02:	2020      	movs	r0, #32
 8001e04:	6760      	str	r0, [r4, #116]	; 0x74
 8001e06:	2000      	movs	r0, #0
 8001e08:	6720      	str	r0, [r4, #112]	; 0x70
 8001e0a:	e78b      	b.n	8001d24 <HAL_UART_Transmit+0x2e>
 8001e0c:	4630      	mov	r0, r6
 8001e0e:	6801      	ldr	r1, [r0, #0]
 8001e10:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001e14:	6001      	str	r1, [r0, #0]
 8001e16:	6881      	ldr	r1, [r0, #8]
 8001e18:	f021 0101 	bic.w	r1, r1, #1
 8001e1c:	6081      	str	r1, [r0, #8]
 8001e1e:	e7d4      	b.n	8001dca <HAL_UART_Transmit+0xd4>

08001e20 <BSP_COM_Init>:
 8001e20:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001e22:	af03      	add	r7, sp, #12
 8001e24:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8001e28:	b086      	sub	sp, #24
 8001e2a:	4605      	mov	r5, r0
 8001e2c:	4688      	mov	r8, r1
 8001e2e:	b9f5      	cbnz	r5, 8001e6e <BSP_COM_Init+0x4e>
 8001e30:	f241 004c 	movw	r0, #4172	; 0x104c
 8001e34:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001e38:	6801      	ldr	r1, [r0, #0]
 8001e3a:	f041 0102 	orr.w	r1, r1, #2
 8001e3e:	6001      	str	r1, [r0, #0]
 8001e40:	6801      	ldr	r1, [r0, #0]
 8001e42:	f001 0102 	and.w	r1, r1, #2
 8001e46:	9101      	str	r1, [sp, #4]
 8001e48:	9901      	ldr	r1, [sp, #4]
 8001e4a:	6801      	ldr	r1, [r0, #0]
 8001e4c:	f041 0102 	orr.w	r1, r1, #2
 8001e50:	6001      	str	r1, [r0, #0]
 8001e52:	6801      	ldr	r1, [r0, #0]
 8001e54:	f001 0102 	and.w	r1, r1, #2
 8001e58:	9101      	str	r1, [sp, #4]
 8001e5a:	9901      	ldr	r1, [sp, #4]
 8001e5c:	6941      	ldr	r1, [r0, #20]
 8001e5e:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001e62:	6141      	str	r1, [r0, #20]
 8001e64:	6940      	ldr	r0, [r0, #20]
 8001e66:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001e6a:	9001      	str	r0, [sp, #4]
 8001e6c:	9801      	ldr	r0, [sp, #4]
 8001e6e:	2040      	movs	r0, #64	; 0x40
 8001e70:	2402      	movs	r4, #2
 8001e72:	ae01      	add	r6, sp, #4
 8001e74:	f04f 0907 	mov.w	r9, #7
 8001e78:	9001      	str	r0, [sp, #4]
 8001e7a:	2000      	movs	r0, #0
 8001e7c:	9402      	str	r4, [sp, #8]
 8001e7e:	9404      	str	r4, [sp, #16]
 8001e80:	4631      	mov	r1, r6
 8001e82:	9003      	str	r0, [sp, #12]
 8001e84:	f240 000c 	movw	r0, #12
 8001e88:	f8cd 9014 	str.w	r9, [sp, #20]
 8001e8c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001e90:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001e94:	f7ff f9a7 	bl	80011e6 <HAL_GPIO_Init>
 8001e98:	2080      	movs	r0, #128	; 0x80
 8001e9a:	4631      	mov	r1, r6
 8001e9c:	e9cd 0401 	strd	r0, r4, [sp, #4]
 8001ea0:	f240 0010 	movw	r0, #16
 8001ea4:	f8cd 9014 	str.w	r9, [sp, #20]
 8001ea8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001eac:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001eb0:	f7ff f999 	bl	80011e6 <HAL_GPIO_Init>
 8001eb4:	f240 0008 	movw	r0, #8
 8001eb8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ebc:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001ec0:	f8c8 0000 	str.w	r0, [r8]
 8001ec4:	4640      	mov	r0, r8
 8001ec6:	f7ff fcff 	bl	80018c8 <HAL_UART_Init>
 8001eca:	b006      	add	sp, #24
 8001ecc:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8001ed0:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001ed2 <slre_match>:
 8001ed2:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001ed4:	af03      	add	r7, sp, #12
 8001ed6:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001eda:	f5ad 6d19 	sub.w	sp, sp, #2448	; 0x990
 8001ede:	b081      	sub	sp, #4
 8001ee0:	4681      	mov	r9, r0
 8001ee2:	2000      	movs	r0, #0
 8001ee4:	9103      	str	r1, [sp, #12]
 8001ee6:	4692      	mov	sl, r2
 8001ee8:	f8cd 0984 	str.w	r0, [sp, #2436]	; 0x984
 8001eec:	f8cd 0660 	str.w	r0, [sp, #1632]	; 0x660
 8001ef0:	f8cd 0990 	str.w	r0, [sp, #2448]	; 0x990
 8001ef4:	68b8      	ldr	r0, [r7, #8]
 8001ef6:	f8cd 098c 	str.w	r0, [sp, #2444]	; 0x98c
 8001efa:	f8cd 3988 	str.w	r3, [sp, #2440]	; 0x988
 8001efe:	f899 0000 	ldrb.w	r0, [r9]
 8001f02:	f899 1001 	ldrb.w	r1, [r9, #1]
 8001f06:	f899 2002 	ldrb.w	r2, [r9, #2]
 8001f0a:	f899 3003 	ldrb.w	r3, [r9, #3]
 8001f0e:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
 8001f12:	f643 7128 	movw	r1, #16168	; 0x3f28
 8001f16:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
 8001f1a:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
 8001f1e:	f6c2 1169 	movt	r1, #10601	; 0x2969
 8001f22:	4288      	cmp	r0, r1
 8001f24:	bf02      	ittt	eq
 8001f26:	2001      	moveq	r0, #1
 8001f28:	f8cd 0990 	streq.w	r0, [sp, #2448]	; 0x990
 8001f2c:	f109 0904 	addeq.w	r9, r9, #4
 8001f30:	4648      	mov	r0, r9
 8001f32:	f7fe fbe5 	bl	8000700 <strlen>
 8001f36:	4684      	mov	ip, r0
 8001f38:	2101      	movs	r1, #1
 8001f3a:	2001      	movs	r0, #1
 8001f3c:	f04f 0800 	mov.w	r8, #0
 8001f40:	f1bc 0f01 	cmp.w	ip, #1
 8001f44:	e9cd 9c08 	strd	r9, ip, [sp, #32]
 8001f48:	9007      	str	r0, [sp, #28]
 8001f4a:	f8cd 1660 	str.w	r1, [sp, #1632]	; 0x660
 8001f4e:	f2c0 80ea 	blt.w	8002126 <slre_match+0x254>
 8001f52:	f1ac 0003 	sub.w	r0, ip, #3
 8001f56:	f8cd a008 	str.w	sl, [sp, #8]
 8001f5a:	f04f 0e00 	mov.w	lr, #0
 8001f5e:	f04f 0a00 	mov.w	sl, #0
 8001f62:	f8cd c014 	str.w	ip, [sp, #20]
 8001f66:	9004      	str	r0, [sp, #16]
 8001f68:	f1ac 0001 	sub.w	r0, ip, #1
 8001f6c:	9006      	str	r0, [sp, #24]
 8001f6e:	f819 000a 	ldrb.w	r0, [r9, sl]
 8001f72:	eb09 0b0a 	add.w	fp, r9, sl
 8001f76:	285b      	cmp	r0, #91	; 0x5b
 8001f78:	d11b      	bne.n	8001fb2 <slre_match+0xe0>
 8001f7a:	ebac 010a 	sub.w	r1, ip, sl
 8001f7e:	2902      	cmp	r1, #2
 8001f80:	db26      	blt.n	8001fd0 <slre_match+0xfe>
 8001f82:	1e4b      	subs	r3, r1, #1
 8001f84:	f10b 0501 	add.w	r5, fp, #1
 8001f88:	2200      	movs	r2, #0
 8001f8a:	5cac      	ldrb	r4, [r5, r2]
 8001f8c:	2c5d      	cmp	r4, #93	; 0x5d
 8001f8e:	d020      	beq.n	8001fd2 <slre_match+0x100>
 8001f90:	2c5c      	cmp	r4, #92	; 0x5c
 8001f92:	d105      	bne.n	8001fa0 <slre_match+0xce>
 8001f94:	18ae      	adds	r6, r5, r2
 8001f96:	7876      	ldrb	r6, [r6, #1]
 8001f98:	2e78      	cmp	r6, #120	; 0x78
 8001f9a:	d101      	bne.n	8001fa0 <slre_match+0xce>
 8001f9c:	2404      	movs	r4, #4
 8001f9e:	e004      	b.n	8001faa <slre_match+0xd8>
 8001fa0:	2c5c      	cmp	r4, #92	; 0x5c
 8001fa2:	f04f 0401 	mov.w	r4, #1
 8001fa6:	bf08      	it	eq
 8001fa8:	2402      	moveq	r4, #2
 8001faa:	4422      	add	r2, r4
 8001fac:	429a      	cmp	r2, r3
 8001fae:	dbec      	blt.n	8001f8a <slre_match+0xb8>
 8001fb0:	e00f      	b.n	8001fd2 <slre_match+0x100>
 8001fb2:	285c      	cmp	r0, #92	; 0x5c
 8001fb4:	bf04      	itt	eq
 8001fb6:	f89b 1001 	ldrbeq.w	r1, [fp, #1]
 8001fba:	2978      	cmpeq	r1, #120	; 0x78
 8001fbc:	d057      	beq.n	800206e <slre_match+0x19c>
 8001fbe:	285c      	cmp	r0, #92	; 0x5c
 8001fc0:	f04f 0801 	mov.w	r8, #1
 8001fc4:	bf08      	it	eq
 8001fc6:	f04f 0802 	moveq.w	r8, #2
 8001fca:	285b      	cmp	r0, #91	; 0x5b
 8001fcc:	dd09      	ble.n	8001fe2 <slre_match+0x110>
 8001fce:	e02d      	b.n	800202c <slre_match+0x15a>
 8001fd0:	2200      	movs	r2, #0
 8001fd2:	428a      	cmp	r2, r1
 8001fd4:	f04f 0800 	mov.w	r8, #0
 8001fd8:	bfb8      	it	lt
 8001fda:	f102 0802 	addlt.w	r8, r2, #2
 8001fde:	285b      	cmp	r0, #91	; 0x5b
 8001fe0:	dc24      	bgt.n	800202c <slre_match+0x15a>
 8001fe2:	2828      	cmp	r0, #40	; 0x28
 8001fe4:	d069      	beq.n	80020ba <slre_match+0x1e8>
 8001fe6:	2829      	cmp	r0, #41	; 0x29
 8001fe8:	f040 8093 	bne.w	8002112 <slre_match+0x240>
 8001fec:	9807      	ldr	r0, [sp, #28]
 8001fee:	a908      	add	r1, sp, #32
 8001ff0:	460a      	mov	r2, r1
 8001ff2:	3801      	subs	r0, #1
 8001ff4:	eb02 1100 	add.w	r1, r2, r0, lsl #4
 8001ff8:	6849      	ldr	r1, [r1, #4]
 8001ffa:	3101      	adds	r1, #1
 8001ffc:	bf18      	it	ne
 8001ffe:	4670      	movne	r0, lr
 8002000:	f1be 0f01 	cmp.w	lr, #1
 8002004:	eb02 1100 	add.w	r1, r2, r0, lsl #4
 8002008:	ea4f 1000 	mov.w	r0, r0, lsl #4
 800200c:	5810      	ldr	r0, [r2, r0]
 800200e:	ebab 0000 	sub.w	r0, fp, r0
 8002012:	6048      	str	r0, [r1, #4]
 8002014:	f2c0 8137 	blt.w	8002286 <slre_match+0x3b4>
 8002018:	f1ae 0e01 	sub.w	lr, lr, #1
 800201c:	f1ba 0f01 	cmp.w	sl, #1
 8002020:	db77      	blt.n	8002112 <slre_match+0x240>
 8002022:	f81b 0c01 	ldrb.w	r0, [fp, #-1]
 8002026:	2828      	cmp	r0, #40	; 0x28
 8002028:	d173      	bne.n	8002112 <slre_match+0x240>
 800202a:	e0e9      	b.n	8002200 <slre_match+0x32e>
 800202c:	285c      	cmp	r0, #92	; 0x5c
 800202e:	d020      	beq.n	8002072 <slre_match+0x1a0>
 8002030:	287c      	cmp	r0, #124	; 0x7c
 8002032:	d16e      	bne.n	8002112 <slre_match+0x240>
 8002034:	f8dd 0984 	ldr.w	r0, [sp, #2436]	; 0x984
 8002038:	2863      	cmp	r0, #99	; 0x63
 800203a:	f300 8127 	bgt.w	800228c <slre_match+0x3ba>
 800203e:	9907      	ldr	r1, [sp, #28]
 8002040:	aa08      	add	r2, sp, #32
 8002042:	4613      	mov	r3, r2
 8002044:	3901      	subs	r1, #1
 8002046:	eb03 1201 	add.w	r2, r3, r1, lsl #4
 800204a:	6852      	ldr	r2, [r2, #4]
 800204c:	3201      	adds	r2, #1
 800204e:	bf18      	it	ne
 8002050:	4671      	movne	r1, lr
 8002052:	f203 6244 	addw	r2, r3, #1604	; 0x644
 8002056:	f842 1030 	str.w	r1, [r2, r0, lsl #3]
 800205a:	f8dd 0984 	ldr.w	r0, [sp, #2436]	; 0x984
 800205e:	eb02 01c0 	add.w	r1, r2, r0, lsl #3
 8002062:	3001      	adds	r0, #1
 8002064:	f8c1 b004 	str.w	fp, [r1, #4]
 8002068:	f8cd 0984 	str.w	r0, [sp, #2436]	; 0x984
 800206c:	e051      	b.n	8002112 <slre_match+0x240>
 800206e:	f04f 0804 	mov.w	r8, #4
 8002072:	9806      	ldr	r0, [sp, #24]
 8002074:	4582      	cmp	sl, r0
 8002076:	f280 80fa 	bge.w	800226e <slre_match+0x39c>
 800207a:	f89b 1001 	ldrb.w	r1, [fp, #1]
 800207e:	2978      	cmp	r1, #120	; 0x78
 8002080:	d139      	bne.n	80020f6 <slre_match+0x224>
 8002082:	9804      	ldr	r0, [sp, #16]
 8002084:	4582      	cmp	sl, r0
 8002086:	f280 80f5 	bge.w	8002274 <slre_match+0x3a2>
 800208a:	4674      	mov	r4, lr
 800208c:	f000 fe84 	bl	8002d98 <__locale_ctype_ptr>
 8002090:	f89b 1002 	ldrb.w	r1, [fp, #2]
 8002094:	4408      	add	r0, r1
 8002096:	7840      	ldrb	r0, [r0, #1]
 8002098:	f010 0f44 	tst.w	r0, #68	; 0x44
 800209c:	f000 80ea 	beq.w	8002274 <slre_match+0x3a2>
 80020a0:	f000 fe7a 	bl	8002d98 <__locale_ctype_ptr>
 80020a4:	f89b 1003 	ldrb.w	r1, [fp, #3]
 80020a8:	f8dd c014 	ldr.w	ip, [sp, #20]
 80020ac:	46a6      	mov	lr, r4
 80020ae:	4408      	add	r0, r1
 80020b0:	7840      	ldrb	r0, [r0, #1]
 80020b2:	f010 0f44 	tst.w	r0, #68	; 0x44
 80020b6:	d12c      	bne.n	8002112 <slre_match+0x240>
 80020b8:	e0e2      	b.n	8002280 <slre_match+0x3ae>
 80020ba:	9807      	ldr	r0, [sp, #28]
 80020bc:	2863      	cmp	r0, #99	; 0x63
 80020be:	f300 80e8 	bgt.w	8002292 <slre_match+0x3c0>
 80020c2:	0100      	lsls	r0, r0, #4
 80020c4:	f10b 0101 	add.w	r1, fp, #1
 80020c8:	aa08      	add	r2, sp, #32
 80020ca:	f10e 0e01 	add.w	lr, lr, #1
 80020ce:	5011      	str	r1, [r2, r0]
 80020d0:	f8dd 0660 	ldr.w	r0, [sp, #1632]	; 0x660
 80020d4:	eb02 1100 	add.w	r1, r2, r0, lsl #4
 80020d8:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80020dc:	604a      	str	r2, [r1, #4]
 80020de:	1c42      	adds	r2, r0, #1
 80020e0:	4611      	mov	r1, r2
 80020e2:	f8cd 2660 	str.w	r2, [sp, #1632]	; 0x660
 80020e6:	9107      	str	r1, [sp, #28]
 80020e8:	f8dd 198c 	ldr.w	r1, [sp, #2444]	; 0x98c
 80020ec:	2901      	cmp	r1, #1
 80020ee:	bfa8      	it	ge
 80020f0:	4288      	cmpge	r0, r1
 80020f2:	dd0e      	ble.n	8002112 <slre_match+0x240>
 80020f4:	e0c1      	b.n	800227a <slre_match+0x3a8>
 80020f6:	f647 3071 	movw	r0, #31601	; 0x7b71
 80020fa:	2210      	movs	r2, #16
 80020fc:	4674      	mov	r4, lr
 80020fe:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002102:	f7fe f9fd 	bl	8000500 <memchr>
 8002106:	f8dd c014 	ldr.w	ip, [sp, #20]
 800210a:	46a6      	mov	lr, r4
 800210c:	2800      	cmp	r0, #0
 800210e:	f000 80b7 	beq.w	8002280 <slre_match+0x3ae>
 8002112:	44c2      	add	sl, r8
 8002114:	45e2      	cmp	sl, ip
 8002116:	f6ff af2a 	blt.w	8001f6e <slre_match+0x9c>
 800211a:	f1be 0f00 	cmp.w	lr, #0
 800211e:	d072      	beq.n	8002206 <slre_match+0x334>
 8002120:	f06f 0002 	mvn.w	r0, #2
 8002124:	e0b7      	b.n	8002296 <slre_match+0x3c4>
 8002126:	2000      	movs	r0, #0
 8002128:	f04f 0901 	mov.w	r9, #1
 800212c:	f10d 0c20 	add.w	ip, sp, #32
 8002130:	2200      	movs	r2, #0
 8002132:	2300      	movs	r3, #0
 8002134:	f20c 6e44 	addw	lr, ip, #1604	; 0x644
 8002138:	eb0c 1503 	add.w	r5, ip, r3, lsl #4
 800213c:	4282      	cmp	r2, r0
 800213e:	f845 8f0c 	str.w	r8, [r5, #12]!
 8002142:	f845 2c04 	str.w	r2, [r5, #-4]
 8002146:	da0e      	bge.n	8002166 <slre_match+0x294>
 8002148:	eb0e 01c2 	add.w	r1, lr, r2, lsl #3
 800214c:	2400      	movs	r4, #0
 800214e:	f851 6034 	ldr.w	r6, [r1, r4, lsl #3]
 8002152:	429e      	cmp	r6, r3
 8002154:	d106      	bne.n	8002164 <slre_match+0x292>
 8002156:	3401      	adds	r4, #1
 8002158:	1916      	adds	r6, r2, r4
 800215a:	602c      	str	r4, [r5, #0]
 800215c:	4286      	cmp	r6, r0
 800215e:	dbf6      	blt.n	800214e <slre_match+0x27c>
 8002160:	4632      	mov	r2, r6
 8002162:	e000      	b.n	8002166 <slre_match+0x294>
 8002164:	4422      	add	r2, r4
 8002166:	3301      	adds	r3, #1
 8002168:	454b      	cmp	r3, r9
 800216a:	d1e5      	bne.n	8002138 <slre_match+0x266>
 800216c:	f1ba 0f00 	cmp.w	sl, #0
 8002170:	db46      	blt.n	8002200 <slre_match+0x32e>
 8002172:	9808      	ldr	r0, [sp, #32]
 8002174:	4652      	mov	r2, sl
 8002176:	f04f 0900 	mov.w	r9, #0
 800217a:	f10d 0b20 	add.w	fp, sp, #32
 800217e:	f04f 0a00 	mov.w	sl, #0
 8002182:	7800      	ldrb	r0, [r0, #0]
 8002184:	9007      	str	r0, [sp, #28]
 8002186:	9803      	ldr	r0, [sp, #12]
 8002188:	4690      	mov	r8, r2
 800218a:	eba2 050a 	sub.w	r5, r2, sl
 800218e:	2400      	movs	r4, #0
 8002190:	eb00 060a 	add.w	r6, r0, sl
 8002194:	b13c      	cbz	r4, 80021a6 <slre_match+0x2d4>
 8002196:	980a      	ldr	r0, [sp, #40]	; 0x28
 8002198:	4420      	add	r0, r4
 800219a:	eb0b 00c0 	add.w	r0, fp, r0, lsl #3
 800219e:	f8d0 0640 	ldr.w	r0, [r0, #1600]	; 0x640
 80021a2:	3001      	adds	r0, #1
 80021a4:	e000      	b.n	80021a8 <slre_match+0x2d6>
 80021a6:	9808      	ldr	r0, [sp, #32]
 80021a8:	990b      	ldr	r1, [sp, #44]	; 0x2c
 80021aa:	b129      	cbz	r1, 80021b8 <slre_match+0x2e6>
 80021ac:	428c      	cmp	r4, r1
 80021ae:	d105      	bne.n	80021bc <slre_match+0x2ea>
 80021b0:	e9dd 1208 	ldrd	r1, r2, [sp, #32]
 80021b4:	4411      	add	r1, r2
 80021b6:	e007      	b.n	80021c8 <slre_match+0x2f6>
 80021b8:	9909      	ldr	r1, [sp, #36]	; 0x24
 80021ba:	e006      	b.n	80021ca <slre_match+0x2f8>
 80021bc:	990a      	ldr	r1, [sp, #40]	; 0x28
 80021be:	4421      	add	r1, r4
 80021c0:	eb0b 01c1 	add.w	r1, fp, r1, lsl #3
 80021c4:	f8d1 1648 	ldr.w	r1, [r1, #1608]	; 0x648
 80021c8:	1a09      	subs	r1, r1, r0
 80021ca:	4632      	mov	r2, r6
 80021cc:	462b      	mov	r3, r5
 80021ce:	e9cd b900 	strd	fp, r9, [sp]
 80021d2:	f000 f8c0 	bl	8002356 <bar>
 80021d6:	2800      	cmp	r0, #0
 80021d8:	dc10      	bgt.n	80021fc <slre_match+0x32a>
 80021da:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80021dc:	1c61      	adds	r1, r4, #1
 80021de:	4294      	cmp	r4, r2
 80021e0:	460c      	mov	r4, r1
 80021e2:	dbd7      	blt.n	8002194 <slre_match+0x2c2>
 80021e4:	2800      	cmp	r0, #0
 80021e6:	da09      	bge.n	80021fc <slre_match+0x32a>
 80021e8:	9907      	ldr	r1, [sp, #28]
 80021ea:	295e      	cmp	r1, #94	; 0x5e
 80021ec:	d053      	beq.n	8002296 <slre_match+0x3c4>
 80021ee:	4642      	mov	r2, r8
 80021f0:	f10a 0101 	add.w	r1, sl, #1
 80021f4:	4592      	cmp	sl, r2
 80021f6:	468a      	mov	sl, r1
 80021f8:	dbc5      	blt.n	8002186 <slre_match+0x2b4>
 80021fa:	e04c      	b.n	8002296 <slre_match+0x3c4>
 80021fc:	4450      	add	r0, sl
 80021fe:	e04a      	b.n	8002296 <slre_match+0x3c4>
 8002200:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002204:	e047      	b.n	8002296 <slre_match+0x3c4>
 8002206:	f8dd 0984 	ldr.w	r0, [sp, #2436]	; 0x984
 800220a:	2801      	cmp	r0, #1
 800220c:	db49      	blt.n	80022a2 <slre_match+0x3d0>
 800220e:	f8dd a008 	ldr.w	sl, [sp, #8]
 8002212:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002216:	a908      	add	r1, sp, #32
 8002218:	f04f 0c00 	mov.w	ip, #0
 800221c:	f04f 0800 	mov.w	r8, #0
 8002220:	f201 6e4c 	addw	lr, r1, #1612	; 0x64c
 8002224:	4663      	mov	r3, ip
 8002226:	f103 0c01 	add.w	ip, r3, #1
 800222a:	4584      	cmp	ip, r0
 800222c:	da1c      	bge.n	8002268 <slre_match+0x396>
 800222e:	a908      	add	r1, sp, #32
 8002230:	eb01 06c3 	add.w	r6, r1, r3, lsl #3
 8002234:	f206 6644 	addw	r6, r6, #1604	; 0x644
 8002238:	f85e 5033 	ldr.w	r5, [lr, r3, lsl #3]
 800223c:	6834      	ldr	r4, [r6, #0]
 800223e:	42ac      	cmp	r4, r5
 8002240:	dd0d      	ble.n	800225e <slre_match+0x38c>
 8002242:	eb0e 00c3 	add.w	r0, lr, r3, lsl #3
 8002246:	f85e 4033 	ldr.w	r4, [lr, r3, lsl #3]
 800224a:	6845      	ldr	r5, [r0, #4]
 800224c:	e9d6 2100 	ldrd	r2, r1, [r6]
 8002250:	e9c6 4500 	strd	r4, r5, [r6]
 8002254:	f84e 2033 	str.w	r2, [lr, r3, lsl #3]
 8002258:	6041      	str	r1, [r0, #4]
 800225a:	f8dd 0984 	ldr.w	r0, [sp, #2436]	; 0x984
 800225e:	1c9a      	adds	r2, r3, #2
 8002260:	1c59      	adds	r1, r3, #1
 8002262:	4282      	cmp	r2, r0
 8002264:	460b      	mov	r3, r1
 8002266:	dbe7      	blt.n	8002238 <slre_match+0x366>
 8002268:	4584      	cmp	ip, r0
 800226a:	dbdb      	blt.n	8002224 <slre_match+0x352>
 800226c:	e01f      	b.n	80022ae <slre_match+0x3dc>
 800226e:	f06f 0005 	mvn.w	r0, #5
 8002272:	e010      	b.n	8002296 <slre_match+0x3c4>
 8002274:	f06f 0005 	mvn.w	r0, #5
 8002278:	e00d      	b.n	8002296 <slre_match+0x3c4>
 800227a:	f06f 0006 	mvn.w	r0, #6
 800227e:	e00a      	b.n	8002296 <slre_match+0x3c4>
 8002280:	f06f 0005 	mvn.w	r0, #5
 8002284:	e007      	b.n	8002296 <slre_match+0x3c4>
 8002286:	f06f 0002 	mvn.w	r0, #2
 800228a:	e004      	b.n	8002296 <slre_match+0x3c4>
 800228c:	f06f 0007 	mvn.w	r0, #7
 8002290:	e001      	b.n	8002296 <slre_match+0x3c4>
 8002292:	f06f 0008 	mvn.w	r0, #8
 8002296:	f50d 6d19 	add.w	sp, sp, #2448	; 0x990
 800229a:	b001      	add	sp, #4
 800229c:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80022a0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80022a2:	f8dd a008 	ldr.w	sl, [sp, #8]
 80022a6:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80022aa:	f04f 0800 	mov.w	r8, #0
 80022ae:	f1b9 0f01 	cmp.w	r9, #1
 80022b2:	f6bf af3b 	bge.w	800212c <slre_match+0x25a>
 80022b6:	e759      	b.n	800216c <slre_match+0x29a>

080022b8 <initialise_benchmark>:
 80022b8:	4770      	bx	lr

080022ba <benchmark>:
 80022ba:	b5f0      	push	{r4, r5, r6, r7, lr}
 80022bc:	af03      	add	r7, sp, #12
 80022be:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 80022c2:	b084      	sub	sp, #16
 80022c4:	f240 0414 	movw	r4, #20
 80022c8:	f2c2 0400 	movt	r4, #8192	; 0x2000
 80022cc:	4620      	mov	r0, r4
 80022ce:	f7fe fa17 	bl	8000700 <strlen>
 80022d2:	4605      	mov	r5, r0
 80022d4:	f240 0644 	movw	r6, #68	; 0x44
 80022d8:	2000      	movs	r0, #0
 80022da:	f10d 0808 	add.w	r8, sp, #8
 80022de:	f04f 0901 	mov.w	r9, #1
 80022e2:	4621      	mov	r1, r4
 80022e4:	9001      	str	r0, [sp, #4]
 80022e6:	f2c2 0600 	movt	r6, #8192	; 0x2000
 80022ea:	462a      	mov	r2, r5
 80022ec:	4643      	mov	r3, r8
 80022ee:	f8cd 9000 	str.w	r9, [sp]
 80022f2:	6830      	ldr	r0, [r6, #0]
 80022f4:	f7ff fded 	bl	8001ed2 <slre_match>
 80022f8:	9901      	ldr	r1, [sp, #4]
 80022fa:	462a      	mov	r2, r5
 80022fc:	4643      	mov	r3, r8
 80022fe:	4408      	add	r0, r1
 8002300:	4621      	mov	r1, r4
 8002302:	9001      	str	r0, [sp, #4]
 8002304:	f8cd 9000 	str.w	r9, [sp]
 8002308:	6870      	ldr	r0, [r6, #4]
 800230a:	f7ff fde2 	bl	8001ed2 <slre_match>
 800230e:	9901      	ldr	r1, [sp, #4]
 8002310:	462a      	mov	r2, r5
 8002312:	4643      	mov	r3, r8
 8002314:	4408      	add	r0, r1
 8002316:	4621      	mov	r1, r4
 8002318:	9001      	str	r0, [sp, #4]
 800231a:	f8cd 9000 	str.w	r9, [sp]
 800231e:	68b0      	ldr	r0, [r6, #8]
 8002320:	f7ff fdd7 	bl	8001ed2 <slre_match>
 8002324:	9901      	ldr	r1, [sp, #4]
 8002326:	462a      	mov	r2, r5
 8002328:	4643      	mov	r3, r8
 800232a:	4408      	add	r0, r1
 800232c:	4621      	mov	r1, r4
 800232e:	9001      	str	r0, [sp, #4]
 8002330:	f8cd 9000 	str.w	r9, [sp]
 8002334:	68f0      	ldr	r0, [r6, #12]
 8002336:	f7ff fdcc 	bl	8001ed2 <slre_match>
 800233a:	9901      	ldr	r1, [sp, #4]
 800233c:	4408      	add	r0, r1
 800233e:	9001      	str	r0, [sp, #4]
 8002340:	9801      	ldr	r0, [sp, #4]
 8002342:	b004      	add	sp, #16
 8002344:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8002348:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800234a <verify_benchmark>:
 800234a:	2100      	movs	r1, #0
 800234c:	2866      	cmp	r0, #102	; 0x66
 800234e:	bf08      	it	eq
 8002350:	2101      	moveq	r1, #1
 8002352:	4608      	mov	r0, r1
 8002354:	4770      	bx	lr

08002356 <bar>:
 8002356:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002358:	af03      	add	r7, sp, #12
 800235a:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 800235e:	b093      	sub	sp, #76	; 0x4c
 8002360:	461d      	mov	r5, r3
 8002362:	4688      	mov	r8, r1
 8002364:	9207      	str	r2, [sp, #28]
 8002366:	4683      	mov	fp, r0
 8002368:	2400      	movs	r4, #0
 800236a:	2d00      	cmp	r5, #0
 800236c:	bfa8      	it	ge
 800236e:	f1b8 0f01 	cmpge.w	r8, #1
 8002372:	f2c0 8319 	blt.w	80029a8 <bar+0x652>
 8002376:	68f8      	ldr	r0, [r7, #12]
 8002378:	f04f 0e00 	mov.w	lr, #0
 800237c:	2600      	movs	r6, #0
 800237e:	f04f 0a00 	mov.w	sl, #0
 8002382:	9008      	str	r0, [sp, #32]
 8002384:	f1a8 0002 	sub.w	r0, r8, #2
 8002388:	9003      	str	r0, [sp, #12]
 800238a:	e9cd 8b04 	strd	r8, fp, [sp, #16]
 800238e:	9509      	str	r5, [sp, #36]	; 0x24
 8002390:	f81b 1006 	ldrb.w	r1, [fp, r6]
 8002394:	eb0b 0906 	add.w	r9, fp, r6
 8002398:	2928      	cmp	r1, #40	; 0x28
 800239a:	d108      	bne.n	80023ae <bar+0x58>
 800239c:	68ba      	ldr	r2, [r7, #8]
 800239e:	9b08      	ldr	r3, [sp, #32]
 80023a0:	eb02 1203 	add.w	r2, r2, r3, lsl #4
 80023a4:	6952      	ldr	r2, [r2, #20]
 80023a6:	1c94      	adds	r4, r2, #2
 80023a8:	2c01      	cmp	r4, #1
 80023aa:	da45      	bge.n	8002438 <bar+0xe2>
 80023ac:	e26f      	b.n	800288e <bar+0x538>
 80023ae:	295b      	cmp	r1, #91	; 0x5b
 80023b0:	d11d      	bne.n	80023ee <bar+0x98>
 80023b2:	eba8 0c06 	sub.w	ip, r8, r6
 80023b6:	f1bc 0f02 	cmp.w	ip, #2
 80023ba:	db25      	blt.n	8002408 <bar+0xb2>
 80023bc:	f1ac 0001 	sub.w	r0, ip, #1
 80023c0:	f109 0501 	add.w	r5, r9, #1
 80023c4:	2300      	movs	r3, #0
 80023c6:	5cea      	ldrb	r2, [r5, r3]
 80023c8:	2a5d      	cmp	r2, #93	; 0x5d
 80023ca:	d01e      	beq.n	800240a <bar+0xb4>
 80023cc:	2a5c      	cmp	r2, #92	; 0x5c
 80023ce:	d105      	bne.n	80023dc <bar+0x86>
 80023d0:	18ec      	adds	r4, r5, r3
 80023d2:	7864      	ldrb	r4, [r4, #1]
 80023d4:	2c78      	cmp	r4, #120	; 0x78
 80023d6:	d101      	bne.n	80023dc <bar+0x86>
 80023d8:	2204      	movs	r2, #4
 80023da:	e004      	b.n	80023e6 <bar+0x90>
 80023dc:	2a5c      	cmp	r2, #92	; 0x5c
 80023de:	f04f 0201 	mov.w	r2, #1
 80023e2:	bf08      	it	eq
 80023e4:	2202      	moveq	r2, #2
 80023e6:	4413      	add	r3, r2
 80023e8:	4283      	cmp	r3, r0
 80023ea:	dbec      	blt.n	80023c6 <bar+0x70>
 80023ec:	e00d      	b.n	800240a <bar+0xb4>
 80023ee:	295c      	cmp	r1, #92	; 0x5c
 80023f0:	bf04      	itt	eq
 80023f2:	f899 2001 	ldrbeq.w	r2, [r9, #1]
 80023f6:	2a78      	cmpeq	r2, #120	; 0x78
 80023f8:	f000 81a5 	beq.w	8002746 <bar+0x3f0>
 80023fc:	295c      	cmp	r1, #92	; 0x5c
 80023fe:	f04f 0401 	mov.w	r4, #1
 8002402:	bf08      	it	eq
 8002404:	2402      	moveq	r4, #2
 8002406:	e005      	b.n	8002414 <bar+0xbe>
 8002408:	2300      	movs	r3, #0
 800240a:	4563      	cmp	r3, ip
 800240c:	f04f 0400 	mov.w	r4, #0
 8002410:	bfb8      	it	lt
 8002412:	1c9c      	addlt	r4, r3, #2
 8002414:	f1a1 022a 	sub.w	r2, r1, #42	; 0x2a
 8002418:	b2d2      	uxtb	r2, r2
 800241a:	2a15      	cmp	r2, #21
 800241c:	d809      	bhi.n	8002432 <bar+0xdc>
 800241e:	2303      	movs	r3, #3
 8002420:	f2c0 0320 	movt	r3, #32
 8002424:	f36f 539f 	bfc	r3, #22, #10
 8002428:	fa23 f202 	lsr.w	r2, r3, r2
 800242c:	07d2      	lsls	r2, r2, #31
 800242e:	f040 8233 	bne.w	8002898 <bar+0x542>
 8002432:	2c01      	cmp	r4, #1
 8002434:	f2c0 822b 	blt.w	800288e <bar+0x538>
 8002438:	f8cd a034 	str.w	sl, [sp, #52]	; 0x34
 800243c:	eb04 0a06 	add.w	sl, r4, r6
 8002440:	960e      	str	r6, [sp, #56]	; 0x38
 8002442:	45c2      	cmp	sl, r8
 8002444:	da0f      	bge.n	8002466 <bar+0x110>
 8002446:	f819 2004 	ldrb.w	r2, [r9, r4]
 800244a:	3a2a      	subs	r2, #42	; 0x2a
 800244c:	b2d2      	uxtb	r2, r2
 800244e:	2a15      	cmp	r2, #21
 8002450:	d809      	bhi.n	8002466 <bar+0x110>
 8002452:	2303      	movs	r3, #3
 8002454:	f2c0 0320 	movt	r3, #32
 8002458:	f36f 539f 	bfc	r3, #22, #10
 800245c:	fa23 f202 	lsr.w	r2, r3, r2
 8002460:	07d2      	lsls	r2, r2, #31
 8002462:	f040 8160 	bne.w	8002726 <bar+0x3d0>
 8002466:	295a      	cmp	r1, #90	; 0x5a
 8002468:	f300 8084 	bgt.w	8002574 <bar+0x21e>
 800246c:	2924      	cmp	r1, #36	; 0x24
 800246e:	f000 812e 	beq.w	80026ce <bar+0x378>
 8002472:	2928      	cmp	r1, #40	; 0x28
 8002474:	f040 813d 	bne.w	80026f2 <bar+0x39c>
 8002478:	9908      	ldr	r1, [sp, #32]
 800247a:	1c4a      	adds	r2, r1, #1
 800247c:	68b9      	ldr	r1, [r7, #8]
 800247e:	4610      	mov	r0, r2
 8002480:	f8d1 1640 	ldr.w	r1, [r1, #1600]	; 0x640
 8002484:	9012      	str	r0, [sp, #72]	; 0x48
 8002486:	428a      	cmp	r2, r1
 8002488:	f280 8209 	bge.w	800289e <bar+0x548>
 800248c:	eba8 000a 	sub.w	r0, r8, sl
 8002490:	9406      	str	r4, [sp, #24]
 8002492:	2801      	cmp	r0, #1
 8002494:	900b      	str	r0, [sp, #44]	; 0x2c
 8002496:	f2c0 8162 	blt.w	800275e <bar+0x408>
 800249a:	990d      	ldr	r1, [sp, #52]	; 0x34
 800249c:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800249e:	1a53      	subs	r3, r2, r1
 80024a0:	4618      	mov	r0, r3
 80024a2:	2b00      	cmp	r3, #0
 80024a4:	900c      	str	r0, [sp, #48]	; 0x30
 80024a6:	f2c0 827d 	blt.w	80029a4 <bar+0x64e>
 80024aa:	eb09 0004 	add.w	r0, r9, r4
 80024ae:	900a      	str	r0, [sp, #40]	; 0x28
 80024b0:	eb0e 0002 	add.w	r0, lr, r2
 80024b4:	900f      	str	r0, [sp, #60]	; 0x3c
 80024b6:	9807      	ldr	r0, [sp, #28]
 80024b8:	eb00 0a01 	add.w	sl, r0, r1
 80024bc:	68b8      	ldr	r0, [r7, #8]
 80024be:	9912      	ldr	r1, [sp, #72]	; 0x48
 80024c0:	eb00 1501 	add.w	r5, r0, r1, lsl #4
 80024c4:	1d28      	adds	r0, r5, #4
 80024c6:	f105 0908 	add.w	r9, r5, #8
 80024ca:	f105 080c 	add.w	r8, r5, #12
 80024ce:	9011      	str	r0, [sp, #68]	; 0x44
 80024d0:	2000      	movs	r0, #0
 80024d2:	4601      	mov	r1, r0
 80024d4:	980f      	ldr	r0, [sp, #60]	; 0x3c
 80024d6:	2600      	movs	r6, #0
 80024d8:	9110      	str	r1, [sp, #64]	; 0x40
 80024da:	eba0 0b01 	sub.w	fp, r0, r1
 80024de:	b14e      	cbz	r6, 80024f4 <bar+0x19e>
 80024e0:	f8d9 0000 	ldr.w	r0, [r9]
 80024e4:	68b9      	ldr	r1, [r7, #8]
 80024e6:	4430      	add	r0, r6
 80024e8:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
 80024ec:	f8d0 0640 	ldr.w	r0, [r0, #1600]	; 0x640
 80024f0:	3001      	adds	r0, #1
 80024f2:	e000      	b.n	80024f6 <bar+0x1a0>
 80024f4:	6828      	ldr	r0, [r5, #0]
 80024f6:	f8d8 1000 	ldr.w	r1, [r8]
 80024fa:	b131      	cbz	r1, 800250a <bar+0x1b4>
 80024fc:	428e      	cmp	r6, r1
 80024fe:	d107      	bne.n	8002510 <bar+0x1ba>
 8002500:	9911      	ldr	r1, [sp, #68]	; 0x44
 8002502:	682a      	ldr	r2, [r5, #0]
 8002504:	6809      	ldr	r1, [r1, #0]
 8002506:	4411      	add	r1, r2
 8002508:	e00a      	b.n	8002520 <bar+0x1ca>
 800250a:	9911      	ldr	r1, [sp, #68]	; 0x44
 800250c:	6809      	ldr	r1, [r1, #0]
 800250e:	e008      	b.n	8002522 <bar+0x1cc>
 8002510:	f8d9 1000 	ldr.w	r1, [r9]
 8002514:	68ba      	ldr	r2, [r7, #8]
 8002516:	4431      	add	r1, r6
 8002518:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
 800251c:	f8d1 1648 	ldr.w	r1, [r1, #1608]	; 0x648
 8002520:	1a09      	subs	r1, r1, r0
 8002522:	68ba      	ldr	r2, [r7, #8]
 8002524:	465b      	mov	r3, fp
 8002526:	9200      	str	r2, [sp, #0]
 8002528:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800252a:	9201      	str	r2, [sp, #4]
 800252c:	4652      	mov	r2, sl
 800252e:	f7ff ff12 	bl	8002356 <bar>
 8002532:	4604      	mov	r4, r0
 8002534:	2c00      	cmp	r4, #0
 8002536:	dc07      	bgt.n	8002548 <bar+0x1f2>
 8002538:	f8d8 0000 	ldr.w	r0, [r8]
 800253c:	1c71      	adds	r1, r6, #1
 800253e:	4286      	cmp	r6, r0
 8002540:	460e      	mov	r6, r1
 8002542:	dbcc      	blt.n	80024de <bar+0x188>
 8002544:	2c00      	cmp	r4, #0
 8002546:	db0f      	blt.n	8002568 <bar+0x212>
 8002548:	68b8      	ldr	r0, [r7, #8]
 800254a:	eb0a 0204 	add.w	r2, sl, r4
 800254e:	9000      	str	r0, [sp, #0]
 8002550:	9812      	ldr	r0, [sp, #72]	; 0x48
 8002552:	9001      	str	r0, [sp, #4]
 8002554:	980f      	ldr	r0, [sp, #60]	; 0x3c
 8002556:	1b03      	subs	r3, r0, r4
 8002558:	e9dd 010a 	ldrd	r0, r1, [sp, #40]	; 0x28
 800255c:	f7ff fefb 	bl	8002356 <bar>
 8002560:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8002564:	f300 814c 	bgt.w	8002800 <bar+0x4aa>
 8002568:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800256a:	990c      	ldr	r1, [sp, #48]	; 0x30
 800256c:	1c50      	adds	r0, r2, #1
 800256e:	428a      	cmp	r2, r1
 8002570:	dbaf      	blt.n	80024d2 <bar+0x17c>
 8002572:	e13d      	b.n	80027f0 <bar+0x49a>
 8002574:	295e      	cmp	r1, #94	; 0x5e
 8002576:	f000 80b1 	beq.w	80026dc <bar+0x386>
 800257a:	295b      	cmp	r1, #91	; 0x5b
 800257c:	f040 80b9 	bne.w	80026f2 <bar+0x39c>
 8002580:	9803      	ldr	r0, [sp, #12]
 8002582:	eba0 0b06 	sub.w	fp, r0, r6
 8002586:	f819 0f01 	ldrb.w	r0, [r9, #1]!
 800258a:	285e      	cmp	r0, #94	; 0x5e
 800258c:	9011      	str	r0, [sp, #68]	; 0x44
 800258e:	bf04      	itt	eq
 8002590:	f1ab 0b01 	subeq.w	fp, fp, #1
 8002594:	f109 0901 	addeq.w	r9, r9, #1
 8002598:	f1bb 0f00 	cmp.w	fp, #0
 800259c:	f2c0 80d5 	blt.w	800274a <bar+0x3f4>
 80025a0:	980d      	ldr	r0, [sp, #52]	; 0x34
 80025a2:	9907      	ldr	r1, [sp, #28]
 80025a4:	f04f 0a00 	mov.w	sl, #0
 80025a8:	9406      	str	r4, [sp, #24]
 80025aa:	4408      	add	r0, r1
 80025ac:	9012      	str	r0, [sp, #72]	; 0x48
 80025ae:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80025b2:	2800      	cmp	r0, #0
 80025b4:	dc79      	bgt.n	80026aa <bar+0x354>
 80025b6:	f819 100a 	ldrb.w	r1, [r9, sl]
 80025ba:	295d      	cmp	r1, #93	; 0x5d
 80025bc:	d075      	beq.n	80026aa <bar+0x354>
 80025be:	eb09 050a 	add.w	r5, r9, sl
 80025c2:	292d      	cmp	r1, #45	; 0x2d
 80025c4:	d00a      	beq.n	80025dc <bar+0x286>
 80025c6:	7868      	ldrb	r0, [r5, #1]
 80025c8:	282d      	cmp	r0, #45	; 0x2d
 80025ca:	d107      	bne.n	80025dc <bar+0x286>
 80025cc:	f10a 0802 	add.w	r8, sl, #2
 80025d0:	f819 0008 	ldrb.w	r0, [r9, r8]
 80025d4:	2800      	cmp	r0, #0
 80025d6:	bf18      	it	ne
 80025d8:	285d      	cmpne	r0, #93	; 0x5d
 80025da:	d116      	bne.n	800260a <bar+0x2b4>
 80025dc:	9912      	ldr	r1, [sp, #72]	; 0x48
 80025de:	68ba      	ldr	r2, [r7, #8]
 80025e0:	4628      	mov	r0, r5
 80025e2:	f000 f9f5 	bl	80029d0 <match_op>
 80025e6:	7829      	ldrb	r1, [r5, #0]
 80025e8:	295c      	cmp	r1, #92	; 0x5c
 80025ea:	bf04      	itt	eq
 80025ec:	786a      	ldrbeq	r2, [r5, #1]
 80025ee:	2a78      	cmpeq	r2, #120	; 0x78
 80025f0:	d005      	beq.n	80025fe <bar+0x2a8>
 80025f2:	295c      	cmp	r1, #92	; 0x5c
 80025f4:	f04f 0101 	mov.w	r1, #1
 80025f8:	bf08      	it	eq
 80025fa:	2102      	moveq	r1, #2
 80025fc:	e000      	b.n	8002600 <bar+0x2aa>
 80025fe:	2104      	movs	r1, #4
 8002600:	9e0e      	ldr	r6, [sp, #56]	; 0x38
 8002602:	448a      	add	sl, r1
 8002604:	45da      	cmp	sl, fp
 8002606:	ddd4      	ble.n	80025b2 <bar+0x25c>
 8002608:	e04f      	b.n	80026aa <bar+0x354>
 800260a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800260c:	7814      	ldrb	r4, [r2, #0]
 800260e:	68ba      	ldr	r2, [r7, #8]
 8002610:	f8d2 2970 	ldr.w	r2, [r2, #2416]	; 0x970
 8002614:	b182      	cbz	r2, 8002638 <bar+0x2e2>
 8002616:	428c      	cmp	r4, r1
 8002618:	f04f 0100 	mov.w	r1, #0
 800261c:	f10a 0a03 	add.w	sl, sl, #3
 8002620:	bf28      	it	cs
 8002622:	2101      	movcs	r1, #1
 8002624:	4284      	cmp	r4, r0
 8002626:	f04f 0000 	mov.w	r0, #0
 800262a:	bf98      	it	ls
 800262c:	2001      	movls	r0, #1
 800262e:	9c06      	ldr	r4, [sp, #24]
 8002630:	4008      	ands	r0, r1
 8002632:	45da      	cmp	sl, fp
 8002634:	ddbd      	ble.n	80025b2 <bar+0x25c>
 8002636:	e038      	b.n	80026aa <bar+0x354>
 8002638:	f000 fbae 	bl	8002d98 <__locale_ctype_ptr>
 800263c:	4420      	add	r0, r4
 800263e:	7840      	ldrb	r0, [r0, #1]
 8002640:	f000 0003 	and.w	r0, r0, #3
 8002644:	2801      	cmp	r0, #1
 8002646:	bf08      	it	eq
 8002648:	3420      	addeq	r4, #32
 800264a:	782d      	ldrb	r5, [r5, #0]
 800264c:	f000 fba4 	bl	8002d98 <__locale_ctype_ptr>
 8002650:	4428      	add	r0, r5
 8002652:	7840      	ldrb	r0, [r0, #1]
 8002654:	f000 0003 	and.w	r0, r0, #3
 8002658:	2801      	cmp	r0, #1
 800265a:	bf08      	it	eq
 800265c:	3520      	addeq	r5, #32
 800265e:	42ac      	cmp	r4, r5
 8002660:	d201      	bcs.n	8002666 <bar+0x310>
 8002662:	2000      	movs	r0, #0
 8002664:	e01a      	b.n	800269c <bar+0x346>
 8002666:	9812      	ldr	r0, [sp, #72]	; 0x48
 8002668:	7804      	ldrb	r4, [r0, #0]
 800266a:	f000 fb95 	bl	8002d98 <__locale_ctype_ptr>
 800266e:	4420      	add	r0, r4
 8002670:	f819 6008 	ldrb.w	r6, [r9, r8]
 8002674:	7845      	ldrb	r5, [r0, #1]
 8002676:	f000 fb8f 	bl	8002d98 <__locale_ctype_ptr>
 800267a:	4430      	add	r0, r6
 800267c:	7840      	ldrb	r0, [r0, #1]
 800267e:	f000 0003 	and.w	r0, r0, #3
 8002682:	2801      	cmp	r0, #1
 8002684:	f005 0003 	and.w	r0, r5, #3
 8002688:	bf08      	it	eq
 800268a:	3620      	addeq	r6, #32
 800268c:	2801      	cmp	r0, #1
 800268e:	f04f 0000 	mov.w	r0, #0
 8002692:	bf08      	it	eq
 8002694:	3420      	addeq	r4, #32
 8002696:	42b4      	cmp	r4, r6
 8002698:	bf98      	it	ls
 800269a:	2001      	movls	r0, #1
 800269c:	9c06      	ldr	r4, [sp, #24]
 800269e:	9e0e      	ldr	r6, [sp, #56]	; 0x38
 80026a0:	f10a 0a03 	add.w	sl, sl, #3
 80026a4:	45da      	cmp	sl, fp
 80026a6:	f77f af84 	ble.w	80025b2 <bar+0x25c>
 80026aa:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80026ac:	2100      	movs	r1, #0
 80026ae:	4622      	mov	r2, r4
 80026b0:	2b5e      	cmp	r3, #94	; 0x5e
 80026b2:	bf18      	it	ne
 80026b4:	2101      	movne	r1, #1
 80026b6:	e9dd 8b04 	ldrd	r8, fp, [sp, #16]
 80026ba:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80026bc:	2801      	cmp	r0, #1
 80026be:	f2c0 80cf 	blt.w	8002860 <bar+0x50a>
 80026c2:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
 80026c6:	2900      	cmp	r1, #0
 80026c8:	f040 80d4 	bne.w	8002874 <bar+0x51e>
 80026cc:	e0ca      	b.n	8002864 <bar+0x50e>
 80026ce:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80026d0:	980d      	ldr	r0, [sp, #52]	; 0x34
 80026d2:	42a8      	cmp	r0, r5
 80026d4:	46aa      	mov	sl, r5
 80026d6:	f000 80d0 	beq.w	800287a <bar+0x524>
 80026da:	e163      	b.n	80029a4 <bar+0x64e>
 80026dc:	980d      	ldr	r0, [sp, #52]	; 0x34
 80026de:	2800      	cmp	r0, #0
 80026e0:	f040 8160 	bne.w	80029a4 <bar+0x64e>
 80026e4:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80026e6:	f04f 0a00 	mov.w	sl, #0
 80026ea:	45aa      	cmp	sl, r5
 80026ec:	f340 80c7 	ble.w	800287e <bar+0x528>
 80026f0:	e0d0      	b.n	8002894 <bar+0x53e>
 80026f2:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
 80026f6:	9809      	ldr	r0, [sp, #36]	; 0x24
 80026f8:	4582      	cmp	sl, r0
 80026fa:	f280 8153 	bge.w	80029a4 <bar+0x64e>
 80026fe:	9807      	ldr	r0, [sp, #28]
 8002700:	68ba      	ldr	r2, [r7, #8]
 8002702:	4626      	mov	r6, r4
 8002704:	eb00 010a 	add.w	r1, r0, sl
 8002708:	4648      	mov	r0, r9
 800270a:	f000 f961 	bl	80029d0 <match_op>
 800270e:	4604      	mov	r4, r0
 8002710:	2c01      	cmp	r4, #1
 8002712:	f2c0 8149 	blt.w	80029a8 <bar+0x652>
 8002716:	44a2      	add	sl, r4
 8002718:	4634      	mov	r4, r6
 800271a:	9d09      	ldr	r5, [sp, #36]	; 0x24
 800271c:	9e0e      	ldr	r6, [sp, #56]	; 0x38
 800271e:	45aa      	cmp	sl, r5
 8002720:	f340 80ad 	ble.w	800287e <bar+0x528>
 8002724:	e0b6      	b.n	8002894 <bar+0x53e>
 8002726:	f81b 000a 	ldrb.w	r0, [fp, sl]
 800272a:	283f      	cmp	r0, #63	; 0x3f
 800272c:	f000 8080 	beq.w	8002830 <bar+0x4da>
 8002730:	382a      	subs	r0, #42	; 0x2a
 8002732:	2802      	cmp	r0, #2
 8002734:	f0c0 80b6 	bcc.w	80028a4 <bar+0x54e>
 8002738:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
 800273c:	9d09      	ldr	r5, [sp, #36]	; 0x24
 800273e:	45aa      	cmp	sl, r5
 8002740:	f340 809d 	ble.w	800287e <bar+0x528>
 8002744:	e0a6      	b.n	8002894 <bar+0x53e>
 8002746:	2404      	movs	r4, #4
 8002748:	e676      	b.n	8002438 <bar+0xe2>
 800274a:	f8dd b014 	ldr.w	fp, [sp, #20]
 800274e:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
 8002752:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002754:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002756:	4622      	mov	r2, r4
 8002758:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800275c:	e082      	b.n	8002864 <bar+0x50e>
 800275e:	980d      	ldr	r0, [sp, #52]	; 0x34
 8002760:	9909      	ldr	r1, [sp, #36]	; 0x24
 8002762:	f04f 0900 	mov.w	r9, #0
 8002766:	eba1 0a00 	sub.w	sl, r1, r0
 800276a:	9907      	ldr	r1, [sp, #28]
 800276c:	180d      	adds	r5, r1, r0
 800276e:	68b8      	ldr	r0, [r7, #8]
 8002770:	9912      	ldr	r1, [sp, #72]	; 0x48
 8002772:	eb00 1801 	add.w	r8, r0, r1, lsl #4
 8002776:	f108 0004 	add.w	r0, r8, #4
 800277a:	f108 0b08 	add.w	fp, r8, #8
 800277e:	f108 060c 	add.w	r6, r8, #12
 8002782:	9011      	str	r0, [sp, #68]	; 0x44
 8002784:	f1b9 0f00 	cmp.w	r9, #0
 8002788:	d009      	beq.n	800279e <bar+0x448>
 800278a:	f8db 0000 	ldr.w	r0, [fp]
 800278e:	68b9      	ldr	r1, [r7, #8]
 8002790:	4448      	add	r0, r9
 8002792:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
 8002796:	f8d0 0640 	ldr.w	r0, [r0, #1600]	; 0x640
 800279a:	3001      	adds	r0, #1
 800279c:	e001      	b.n	80027a2 <bar+0x44c>
 800279e:	f8d8 0000 	ldr.w	r0, [r8]
 80027a2:	6831      	ldr	r1, [r6, #0]
 80027a4:	b139      	cbz	r1, 80027b6 <bar+0x460>
 80027a6:	4589      	cmp	r9, r1
 80027a8:	d108      	bne.n	80027bc <bar+0x466>
 80027aa:	9911      	ldr	r1, [sp, #68]	; 0x44
 80027ac:	f8d8 2000 	ldr.w	r2, [r8]
 80027b0:	6809      	ldr	r1, [r1, #0]
 80027b2:	4411      	add	r1, r2
 80027b4:	e00a      	b.n	80027cc <bar+0x476>
 80027b6:	9911      	ldr	r1, [sp, #68]	; 0x44
 80027b8:	6809      	ldr	r1, [r1, #0]
 80027ba:	e008      	b.n	80027ce <bar+0x478>
 80027bc:	f8db 1000 	ldr.w	r1, [fp]
 80027c0:	68ba      	ldr	r2, [r7, #8]
 80027c2:	4449      	add	r1, r9
 80027c4:	eb02 01c1 	add.w	r1, r2, r1, lsl #3
 80027c8:	f8d1 1648 	ldr.w	r1, [r1, #1608]	; 0x648
 80027cc:	1a09      	subs	r1, r1, r0
 80027ce:	68ba      	ldr	r2, [r7, #8]
 80027d0:	4653      	mov	r3, sl
 80027d2:	9200      	str	r2, [sp, #0]
 80027d4:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80027d6:	9201      	str	r2, [sp, #4]
 80027d8:	462a      	mov	r2, r5
 80027da:	f7ff fdbc 	bl	8002356 <bar>
 80027de:	4604      	mov	r4, r0
 80027e0:	2c00      	cmp	r4, #0
 80027e2:	dc0d      	bgt.n	8002800 <bar+0x4aa>
 80027e4:	6830      	ldr	r0, [r6, #0]
 80027e6:	f109 0101 	add.w	r1, r9, #1
 80027ea:	4581      	cmp	r9, r0
 80027ec:	4689      	mov	r9, r1
 80027ee:	dbc9      	blt.n	8002784 <bar+0x42e>
 80027f0:	e9dd 8b04 	ldrd	r8, fp, [sp, #16]
 80027f4:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80027f6:	e9dd a60d 	ldrd	sl, r6, [sp, #52]	; 0x34
 80027fa:	2c00      	cmp	r4, #0
 80027fc:	da05      	bge.n	800280a <bar+0x4b4>
 80027fe:	e0d3      	b.n	80029a8 <bar+0x652>
 8002800:	e9dd 8b04 	ldrd	r8, fp, [sp, #16]
 8002804:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002806:	e9dd a60d 	ldrd	sl, r6, [sp, #52]	; 0x34
 800280a:	68b8      	ldr	r0, [r7, #8]
 800280c:	f8d0 0968 	ldr.w	r0, [r0, #2408]	; 0x968
 8002810:	b138      	cbz	r0, 8002822 <bar+0x4cc>
 8002812:	9907      	ldr	r1, [sp, #28]
 8002814:	9a08      	ldr	r2, [sp, #32]
 8002816:	4451      	add	r1, sl
 8002818:	f840 1032 	str.w	r1, [r0, r2, lsl #3]
 800281c:	eb00 00c2 	add.w	r0, r0, r2, lsl #3
 8002820:	6044      	str	r4, [r0, #4]
 8002822:	9812      	ldr	r0, [sp, #72]	; 0x48
 8002824:	44a2      	add	sl, r4
 8002826:	9c06      	ldr	r4, [sp, #24]
 8002828:	9008      	str	r0, [sp, #32]
 800282a:	45aa      	cmp	sl, r5
 800282c:	dd27      	ble.n	800287e <bar+0x528>
 800282e:	e031      	b.n	8002894 <bar+0x53e>
 8002830:	68b8      	ldr	r0, [r7, #8]
 8002832:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
 8002836:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002838:	4621      	mov	r1, r4
 800283a:	9000      	str	r0, [sp, #0]
 800283c:	9808      	ldr	r0, [sp, #32]
 800283e:	eba5 030a 	sub.w	r3, r5, sl
 8002842:	9001      	str	r0, [sp, #4]
 8002844:	9807      	ldr	r0, [sp, #28]
 8002846:	eb00 020a 	add.w	r2, r0, sl
 800284a:	4648      	mov	r0, r9
 800284c:	f7ff fd83 	bl	8002356 <bar>
 8002850:	9e0e      	ldr	r6, [sp, #56]	; 0x38
 8002852:	2800      	cmp	r0, #0
 8002854:	bfc8      	it	gt
 8002856:	4482      	addgt	sl, r0
 8002858:	3601      	adds	r6, #1
 800285a:	45aa      	cmp	sl, r5
 800285c:	dd0f      	ble.n	800287e <bar+0x528>
 800285e:	e019      	b.n	8002894 <bar+0x53e>
 8002860:	f8dd a034 	ldr.w	sl, [sp, #52]	; 0x34
 8002864:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8002868:	2b5e      	cmp	r3, #94	; 0x5e
 800286a:	f040 809d 	bne.w	80029a8 <bar+0x652>
 800286e:	2800      	cmp	r0, #0
 8002870:	f300 809a 	bgt.w	80029a8 <bar+0x652>
 8002874:	f10a 0a01 	add.w	sl, sl, #1
 8002878:	4614      	mov	r4, r2
 800287a:	45aa      	cmp	sl, r5
 800287c:	dc0a      	bgt.n	8002894 <bar+0x53e>
 800287e:	4426      	add	r6, r4
 8002880:	f1ca 0e00 	rsb	lr, sl, #0
 8002884:	4654      	mov	r4, sl
 8002886:	4546      	cmp	r6, r8
 8002888:	f6ff ad82 	blt.w	8002390 <bar+0x3a>
 800288c:	e08c      	b.n	80029a8 <bar+0x652>
 800288e:	f06f 0404 	mvn.w	r4, #4
 8002892:	e089      	b.n	80029a8 <bar+0x652>
 8002894:	4654      	mov	r4, sl
 8002896:	e087      	b.n	80029a8 <bar+0x652>
 8002898:	f06f 0401 	mvn.w	r4, #1
 800289c:	e084      	b.n	80029a8 <bar+0x652>
 800289e:	f06f 0403 	mvn.w	r4, #3
 80028a2:	e081      	b.n	80029a8 <bar+0x652>
 80028a4:	f10a 0101 	add.w	r1, sl, #1
 80028a8:	9406      	str	r4, [sp, #24]
 80028aa:	4541      	cmp	r1, r8
 80028ac:	da0a      	bge.n	80028c4 <bar+0x56e>
 80028ae:	f81b 0001 	ldrb.w	r0, [fp, r1]
 80028b2:	283f      	cmp	r0, #63	; 0x3f
 80028b4:	f04f 0000 	mov.w	r0, #0
 80028b8:	bf08      	it	eq
 80028ba:	f10a 0102 	addeq.w	r1, sl, #2
 80028be:	bf18      	it	ne
 80028c0:	2001      	movne	r0, #1
 80028c2:	e000      	b.n	80028c6 <bar+0x570>
 80028c4:	2001      	movs	r0, #1
 80028c6:	9011      	str	r0, [sp, #68]	; 0x44
 80028c8:	eba8 0001 	sub.w	r0, r8, r1
 80028cc:	f8dd 8034 	ldr.w	r8, [sp, #52]	; 0x34
 80028d0:	9112      	str	r1, [sp, #72]	; 0x48
 80028d2:	9010      	str	r0, [sp, #64]	; 0x40
 80028d4:	eb0b 0001 	add.w	r0, fp, r1
 80028d8:	f04f 3bff 	mov.w	fp, #4294967295	; 0xffffffff
 80028dc:	900f      	str	r0, [sp, #60]	; 0x3c
 80028de:	4644      	mov	r4, r8
 80028e0:	68b8      	ldr	r0, [r7, #8]
 80028e2:	9906      	ldr	r1, [sp, #24]
 80028e4:	9000      	str	r0, [sp, #0]
 80028e6:	9808      	ldr	r0, [sp, #32]
 80028e8:	9001      	str	r0, [sp, #4]
 80028ea:	9807      	ldr	r0, [sp, #28]
 80028ec:	1902      	adds	r2, r0, r4
 80028ee:	9809      	ldr	r0, [sp, #36]	; 0x24
 80028f0:	1b03      	subs	r3, r0, r4
 80028f2:	4648      	mov	r0, r9
 80028f4:	f7ff fd2f 	bl	8002356 <bar>
 80028f8:	4605      	mov	r5, r0
 80028fa:	2d00      	cmp	r5, #0
 80028fc:	bfc8      	it	gt
 80028fe:	442c      	addgt	r4, r5
 8002900:	f1b5 3fff 	cmp.w	r5, #4294967295	; 0xffffffff
 8002904:	dc04      	bgt.n	8002910 <bar+0x5ba>
 8002906:	9805      	ldr	r0, [sp, #20]
 8002908:	f810 000a 	ldrb.w	r0, [r0, sl]
 800290c:	282b      	cmp	r0, #43	; 0x2b
 800290e:	d03f      	beq.n	8002990 <bar+0x63a>
 8002910:	9804      	ldr	r0, [sp, #16]
 8002912:	9912      	ldr	r1, [sp, #72]	; 0x48
 8002914:	4626      	mov	r6, r4
 8002916:	4281      	cmp	r1, r0
 8002918:	da12      	bge.n	8002940 <bar+0x5ea>
 800291a:	68b8      	ldr	r0, [r7, #8]
 800291c:	9000      	str	r0, [sp, #0]
 800291e:	9808      	ldr	r0, [sp, #32]
 8002920:	9001      	str	r0, [sp, #4]
 8002922:	9807      	ldr	r0, [sp, #28]
 8002924:	1902      	adds	r2, r0, r4
 8002926:	9809      	ldr	r0, [sp, #36]	; 0x24
 8002928:	1b03      	subs	r3, r0, r4
 800292a:	e9dd 010f 	ldrd	r0, r1, [sp, #60]	; 0x3c
 800292e:	f7ff fd12 	bl	8002356 <bar>
 8002932:	4683      	mov	fp, r0
 8002934:	f1bb 3fff 	cmp.w	fp, #4294967295	; 0xffffffff
 8002938:	bfc8      	it	gt
 800293a:	eb0b 0804 	addgt.w	r8, fp, r4
 800293e:	4646      	mov	r6, r8
 8002940:	980d      	ldr	r0, [sp, #52]	; 0x34
 8002942:	4286      	cmp	r6, r0
 8002944:	f04f 0000 	mov.w	r0, #0
 8002948:	bfd8      	it	le
 800294a:	2001      	movle	r0, #1
 800294c:	2d01      	cmp	r5, #1
 800294e:	db03      	blt.n	8002958 <bar+0x602>
 8002950:	9911      	ldr	r1, [sp, #68]	; 0x44
 8002952:	46b0      	mov	r8, r6
 8002954:	4308      	orrs	r0, r1
 8002956:	d1c3      	bne.n	80028e0 <bar+0x58a>
 8002958:	f1b5 3fff 	cmp.w	r5, #4294967295	; 0xffffffff
 800295c:	dc19      	bgt.n	8002992 <bar+0x63c>
 800295e:	9805      	ldr	r0, [sp, #20]
 8002960:	f810 000a 	ldrb.w	r0, [r0, sl]
 8002964:	282a      	cmp	r0, #42	; 0x2a
 8002966:	d114      	bne.n	8002992 <bar+0x63c>
 8002968:	68b8      	ldr	r0, [r7, #8]
 800296a:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 800296c:	9000      	str	r0, [sp, #0]
 800296e:	9808      	ldr	r0, [sp, #32]
 8002970:	9001      	str	r0, [sp, #4]
 8002972:	9807      	ldr	r0, [sp, #28]
 8002974:	1902      	adds	r2, r0, r4
 8002976:	9809      	ldr	r0, [sp, #36]	; 0x24
 8002978:	1b03      	subs	r3, r0, r4
 800297a:	e9dd 010f 	ldrd	r0, r1, [sp, #60]	; 0x3c
 800297e:	f7ff fcea 	bl	8002356 <bar>
 8002982:	4683      	mov	fp, r0
 8002984:	f1bb 0f00 	cmp.w	fp, #0
 8002988:	bfc8      	it	gt
 800298a:	eb0b 0604 	addgt.w	r6, fp, r4
 800298e:	e000      	b.n	8002992 <bar+0x63c>
 8002990:	4646      	mov	r6, r8
 8002992:	980d      	ldr	r0, [sp, #52]	; 0x34
 8002994:	9904      	ldr	r1, [sp, #16]
 8002996:	4286      	cmp	r6, r0
 8002998:	bf02      	ittt	eq
 800299a:	9805      	ldreq	r0, [sp, #20]
 800299c:	f810 000a 	ldrbeq.w	r0, [r0, sl]
 80029a0:	282b      	cmpeq	r0, #43	; 0x2b
 80029a2:	d106      	bne.n	80029b2 <bar+0x65c>
 80029a4:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80029a8:	4620      	mov	r0, r4
 80029aa:	b013      	add	sp, #76	; 0x4c
 80029ac:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80029b0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80029b2:	f1bb 0f00 	cmp.w	fp, #0
 80029b6:	4630      	mov	r0, r6
 80029b8:	bfb8      	it	lt
 80029ba:	f04f 30ff 	movlt.w	r0, #4294967295	; 0xffffffff
 80029be:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80029c0:	428a      	cmp	r2, r1
 80029c2:	bfa8      	it	ge
 80029c4:	4630      	movge	r0, r6
 80029c6:	990d      	ldr	r1, [sp, #52]	; 0x34
 80029c8:	428e      	cmp	r6, r1
 80029ca:	bf18      	it	ne
 80029cc:	4630      	movne	r0, r6
 80029ce:	e7ec      	b.n	80029aa <bar+0x654>

080029d0 <match_op>:
 80029d0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80029d2:	af03      	add	r7, sp, #12
 80029d4:	f84d 8d04 	str.w	r8, [sp, #-4]!
 80029d8:	4605      	mov	r5, r0
 80029da:	460c      	mov	r4, r1
 80029dc:	782e      	ldrb	r6, [r5, #0]
 80029de:	2e5b      	cmp	r6, #91	; 0x5b
 80029e0:	dc06      	bgt.n	80029f0 <match_op+0x20>
 80029e2:	2e24      	cmp	r6, #36	; 0x24
 80029e4:	f000 8092 	beq.w	8002b0c <match_op+0x13c>
 80029e8:	2e2e      	cmp	r6, #46	; 0x2e
 80029ea:	f000 808b 	beq.w	8002b04 <match_op+0x134>
 80029ee:	e02b      	b.n	8002a48 <match_op+0x78>
 80029f0:	2e7c      	cmp	r6, #124	; 0x7c
 80029f2:	bf02      	ittt	eq
 80029f4:	f06f 0003 	mvneq.w	r0, #3
 80029f8:	f85d 8b04 	ldreq.w	r8, [sp], #4
 80029fc:	bdf0      	popeq	{r4, r5, r6, r7, pc}
 80029fe:	2e5c      	cmp	r6, #92	; 0x5c
 8002a00:	d122      	bne.n	8002a48 <match_op+0x78>
 8002a02:	7868      	ldrb	r0, [r5, #1]
 8002a04:	f1a0 0153 	sub.w	r1, r0, #83	; 0x53
 8002a08:	2925      	cmp	r1, #37	; 0x25
 8002a0a:	f200 8078 	bhi.w	8002afe <match_op+0x12e>
 8002a0e:	e8df f001 	tbb	[pc, r1]
 8002a12:	7613      	.short	0x7613
 8002a14:	76767676 	.word	0x76767676
 8002a18:	76767676 	.word	0x76767676
 8002a1c:	76767676 	.word	0x76767676
 8002a20:	39767676 	.word	0x39767676
 8002a24:	76767676 	.word	0x76767676
 8002a28:	76767676 	.word	0x76767676
 8002a2c:	76767676 	.word	0x76767676
 8002a30:	76417676 	.word	0x76417676
 8002a34:	49767676 	.word	0x49767676
 8002a38:	f000 f9ae 	bl	8002d98 <__locale_ctype_ptr>
 8002a3c:	7821      	ldrb	r1, [r4, #0]
 8002a3e:	4408      	add	r0, r1
 8002a40:	7840      	ldrb	r0, [r0, #1]
 8002a42:	0700      	lsls	r0, r0, #28
 8002a44:	d55e      	bpl.n	8002b04 <match_op+0x134>
 8002a46:	e061      	b.n	8002b0c <match_op+0x13c>
 8002a48:	f892 0970 	ldrb.w	r0, [r2, #2416]	; 0x970
 8002a4c:	07c0      	lsls	r0, r0, #31
 8002a4e:	d103      	bne.n	8002a58 <match_op+0x88>
 8002a50:	7820      	ldrb	r0, [r4, #0]
 8002a52:	4286      	cmp	r6, r0
 8002a54:	d056      	beq.n	8002b04 <match_op+0x134>
 8002a56:	e059      	b.n	8002b0c <match_op+0x13c>
 8002a58:	f000 f99e 	bl	8002d98 <__locale_ctype_ptr>
 8002a5c:	4430      	add	r0, r6
 8002a5e:	7840      	ldrb	r0, [r0, #1]
 8002a60:	f000 0003 	and.w	r0, r0, #3
 8002a64:	2801      	cmp	r0, #1
 8002a66:	bf08      	it	eq
 8002a68:	3620      	addeq	r6, #32
 8002a6a:	7824      	ldrb	r4, [r4, #0]
 8002a6c:	f000 f994 	bl	8002d98 <__locale_ctype_ptr>
 8002a70:	4420      	add	r0, r4
 8002a72:	7840      	ldrb	r0, [r0, #1]
 8002a74:	f000 0003 	and.w	r0, r0, #3
 8002a78:	2801      	cmp	r0, #1
 8002a7a:	bf08      	it	eq
 8002a7c:	3420      	addeq	r4, #32
 8002a7e:	42a6      	cmp	r6, r4
 8002a80:	d040      	beq.n	8002b04 <match_op+0x134>
 8002a82:	e043      	b.n	8002b0c <match_op+0x13c>
 8002a84:	f000 f988 	bl	8002d98 <__locale_ctype_ptr>
 8002a88:	7821      	ldrb	r1, [r4, #0]
 8002a8a:	4408      	add	r0, r1
 8002a8c:	7840      	ldrb	r0, [r0, #1]
 8002a8e:	0740      	lsls	r0, r0, #29
 8002a90:	d438      	bmi.n	8002b04 <match_op+0x134>
 8002a92:	e03b      	b.n	8002b0c <match_op+0x13c>
 8002a94:	f000 f980 	bl	8002d98 <__locale_ctype_ptr>
 8002a98:	7821      	ldrb	r1, [r4, #0]
 8002a9a:	4408      	add	r0, r1
 8002a9c:	7840      	ldrb	r0, [r0, #1]
 8002a9e:	0700      	lsls	r0, r0, #28
 8002aa0:	d430      	bmi.n	8002b04 <match_op+0x134>
 8002aa2:	e033      	b.n	8002b0c <match_op+0x13c>
 8002aa4:	78ae      	ldrb	r6, [r5, #2]
 8002aa6:	f000 f977 	bl	8002d98 <__locale_ctype_ptr>
 8002aaa:	4430      	add	r0, r6
 8002aac:	7840      	ldrb	r0, [r0, #1]
 8002aae:	f000 0003 	and.w	r0, r0, #3
 8002ab2:	2801      	cmp	r0, #1
 8002ab4:	bf08      	it	eq
 8002ab6:	3620      	addeq	r6, #32
 8002ab8:	f000 f96e 	bl	8002d98 <__locale_ctype_ptr>
 8002abc:	4430      	add	r0, r6
 8002abe:	f04f 0857 	mov.w	r8, #87	; 0x57
 8002ac2:	7840      	ldrb	r0, [r0, #1]
 8002ac4:	f010 0f04 	tst.w	r0, #4
 8002ac8:	f04f 0057 	mov.w	r0, #87	; 0x57
 8002acc:	bf18      	it	ne
 8002ace:	2030      	movne	r0, #48	; 0x30
 8002ad0:	78ed      	ldrb	r5, [r5, #3]
 8002ad2:	1a36      	subs	r6, r6, r0
 8002ad4:	f000 f960 	bl	8002d98 <__locale_ctype_ptr>
 8002ad8:	4428      	add	r0, r5
 8002ada:	7840      	ldrb	r0, [r0, #1]
 8002adc:	f000 0003 	and.w	r0, r0, #3
 8002ae0:	2801      	cmp	r0, #1
 8002ae2:	bf08      	it	eq
 8002ae4:	3520      	addeq	r5, #32
 8002ae6:	f000 f957 	bl	8002d98 <__locale_ctype_ptr>
 8002aea:	4428      	add	r0, r5
 8002aec:	7840      	ldrb	r0, [r0, #1]
 8002aee:	0740      	lsls	r0, r0, #29
 8002af0:	bf48      	it	mi
 8002af2:	f04f 0830 	movmi.w	r8, #48	; 0x30
 8002af6:	eba5 0008 	sub.w	r0, r5, r8
 8002afa:	ea40 1006 	orr.w	r0, r0, r6, lsl #4
 8002afe:	7821      	ldrb	r1, [r4, #0]
 8002b00:	4288      	cmp	r0, r1
 8002b02:	d103      	bne.n	8002b0c <match_op+0x13c>
 8002b04:	2001      	movs	r0, #1
 8002b06:	f85d 8b04 	ldr.w	r8, [sp], #4
 8002b0a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002b0c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002b10:	f85d 8b04 	ldr.w	r8, [sp], #4
 8002b14:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002b16 <__io_putchar>:
 8002b16:	b580      	push	{r7, lr}
 8002b18:	466f      	mov	r7, sp
 8002b1a:	b082      	sub	sp, #8
 8002b1c:	9001      	str	r0, [sp, #4]
 8002b1e:	f640 2024 	movw	r0, #2596	; 0xa24
 8002b22:	a901      	add	r1, sp, #4
 8002b24:	2201      	movs	r2, #1
 8002b26:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002b2a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002b2e:	f7ff f8e2 	bl	8001cf6 <HAL_UART_Transmit>
 8002b32:	9801      	ldr	r0, [sp, #4]
 8002b34:	b002      	add	sp, #8
 8002b36:	bd80      	pop	{r7, pc}

08002b38 <main>:
 8002b38:	b5b0      	push	{r4, r5, r7, lr}
 8002b3a:	af02      	add	r7, sp, #8
 8002b3c:	f640 2124 	movw	r1, #2596	; 0xa24
 8002b40:	f643 0000 	movw	r0, #14336	; 0x3800
 8002b44:	220c      	movs	r2, #12
 8002b46:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002b4a:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002b4e:	6008      	str	r0, [r1, #0]
 8002b50:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8002b54:	6048      	str	r0, [r1, #4]
 8002b56:	2000      	movs	r0, #0
 8002b58:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8002b5c:	6108      	str	r0, [r1, #16]
 8002b5e:	6248      	str	r0, [r1, #36]	; 0x24
 8002b60:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8002b64:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8002b68:	2000      	movs	r0, #0
 8002b6a:	f7ff f959 	bl	8001e20 <BSP_COM_Init>
 8002b6e:	f7ff fba3 	bl	80022b8 <initialise_benchmark>
 8002b72:	f647 3081 	movw	r0, #31617	; 0x7b81
 8002b76:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002b7a:	f000 f97b 	bl	8002e74 <printf>
 8002b7e:	f647 4028 	movw	r0, #31784	; 0x7c28
 8002b82:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002b86:	f000 f9d7 	bl	8002f38 <puts>
 8002b8a:	f7fe fabb 	bl	8001104 <HAL_Init>
 8002b8e:	f7fe fad1 	bl	8001134 <HAL_GetTick>
 8002b92:	4604      	mov	r4, r0
 8002b94:	f7ff fb91 	bl	80022ba <benchmark>
 8002b98:	4605      	mov	r5, r0
 8002b9a:	f7fe facb 	bl	8001134 <HAL_GetTick>
 8002b9e:	1b04      	subs	r4, r0, r4
 8002ba0:	4628      	mov	r0, r5
 8002ba2:	f7ff fbd2 	bl	800234a <verify_benchmark>
 8002ba6:	1c41      	adds	r1, r0, #1
 8002ba8:	d006      	beq.n	8002bb8 <main+0x80>
 8002baa:	2801      	cmp	r0, #1
 8002bac:	d109      	bne.n	8002bc2 <main+0x8a>
 8002bae:	f647 3094 	movw	r0, #31636	; 0x7b94
 8002bb2:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002bb6:	e008      	b.n	8002bca <main+0x92>
 8002bb8:	f647 30b8 	movw	r0, #31672	; 0x7bb8
 8002bbc:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002bc0:	e003      	b.n	8002bca <main+0x92>
 8002bc2:	f647 30ed 	movw	r0, #31725	; 0x7bed
 8002bc6:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002bca:	4621      	mov	r1, r4
 8002bcc:	f000 f952 	bl	8002e74 <printf>
 8002bd0:	2000      	movs	r0, #0
 8002bd2:	bdb0      	pop	{r4, r5, r7, pc}

08002bd4 <SysTick_Handler>:
 8002bd4:	b580      	push	{r7, lr}
 8002bd6:	466f      	mov	r7, sp
 8002bd8:	f7fe faa4 	bl	8001124 <HAL_IncTick>
 8002bdc:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002be0:	f7fe bafe 	b.w	80011e0 <HAL_SYSTICK_IRQHandler>

08002be4 <_read>:
 8002be4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002be6:	af03      	add	r7, sp, #12
 8002be8:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002bec:	4614      	mov	r4, r2
 8002bee:	460d      	mov	r5, r1
 8002bf0:	2c01      	cmp	r4, #1
 8002bf2:	db06      	blt.n	8002c02 <_read+0x1e>
 8002bf4:	4626      	mov	r6, r4
 8002bf6:	f3af 8000 	nop.w
 8002bfa:	f805 0b01 	strb.w	r0, [r5], #1
 8002bfe:	3e01      	subs	r6, #1
 8002c00:	d1f9      	bne.n	8002bf6 <_read+0x12>
 8002c02:	4620      	mov	r0, r4
 8002c04:	f85d bb04 	ldr.w	fp, [sp], #4
 8002c08:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002c0a <_write>:
 8002c0a:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002c0c:	af03      	add	r7, sp, #12
 8002c0e:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002c12:	4614      	mov	r4, r2
 8002c14:	460d      	mov	r5, r1
 8002c16:	2c01      	cmp	r4, #1
 8002c18:	db06      	blt.n	8002c28 <_write+0x1e>
 8002c1a:	4626      	mov	r6, r4
 8002c1c:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002c20:	f7ff ff79 	bl	8002b16 <__io_putchar>
 8002c24:	3e01      	subs	r6, #1
 8002c26:	d1f9      	bne.n	8002c1c <_write+0x12>
 8002c28:	4620      	mov	r0, r4
 8002c2a:	f85d bb04 	ldr.w	fp, [sp], #4
 8002c2e:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002c30 <_sbrk>:
 8002c30:	f640 22a8 	movw	r2, #2728	; 0xaa8
 8002c34:	4601      	mov	r1, r0
 8002c36:	466b      	mov	r3, sp
 8002c38:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002c3c:	6810      	ldr	r0, [r2, #0]
 8002c3e:	2800      	cmp	r0, #0
 8002c40:	bf02      	ittt	eq
 8002c42:	f640 3050 	movweq	r0, #2896	; 0xb50
 8002c46:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002c4a:	6010      	streq	r0, [r2, #0]
 8002c4c:	4401      	add	r1, r0
 8002c4e:	4299      	cmp	r1, r3
 8002c50:	bf9c      	itt	ls
 8002c52:	6011      	strls	r1, [r2, #0]
 8002c54:	4770      	bxls	lr
 8002c56:	b580      	push	{r7, lr}
 8002c58:	466f      	mov	r7, sp
 8002c5a:	f000 f865 	bl	8002d28 <__errno>
 8002c5e:	210c      	movs	r1, #12
 8002c60:	6001      	str	r1, [r0, #0]
 8002c62:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002c66:	bd80      	pop	{r7, pc}

08002c68 <_close>:
 8002c68:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002c6c:	4770      	bx	lr

08002c6e <_fstat>:
 8002c6e:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002c72:	6048      	str	r0, [r1, #4]
 8002c74:	2000      	movs	r0, #0
 8002c76:	4770      	bx	lr

08002c78 <_isatty>:
 8002c78:	2001      	movs	r0, #1
 8002c7a:	4770      	bx	lr

08002c7c <_lseek>:
 8002c7c:	2000      	movs	r0, #0
 8002c7e:	4770      	bx	lr

08002c80 <SystemInit>:
 8002c80:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002c84:	f04f 0c00 	mov.w	ip, #0
 8002c88:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002c8c:	6801      	ldr	r1, [r0, #0]
 8002c8e:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002c92:	6001      	str	r1, [r0, #0]
 8002c94:	f241 0100 	movw	r1, #4096	; 0x1000
 8002c98:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002c9c:	680a      	ldr	r2, [r1, #0]
 8002c9e:	f042 0201 	orr.w	r2, r2, #1
 8002ca2:	600a      	str	r2, [r1, #0]
 8002ca4:	f8c1 c008 	str.w	ip, [r1, #8]
 8002ca8:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002cac:	680b      	ldr	r3, [r1, #0]
 8002cae:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002cb2:	401a      	ands	r2, r3
 8002cb4:	600a      	str	r2, [r1, #0]
 8002cb6:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002cba:	60ca      	str	r2, [r1, #12]
 8002cbc:	680a      	ldr	r2, [r1, #0]
 8002cbe:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002cc2:	600a      	str	r2, [r1, #0]
 8002cc4:	f8c1 c018 	str.w	ip, [r1, #24]
 8002cc8:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002ccc:	f840 1c80 	str.w	r1, [r0, #-128]
 8002cd0:	4770      	bx	lr
	...

08002cd4 <Reset_Handler>:
 8002cd4:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002d0c <LoopForever+0x2>
 8002cd8:	2100      	movs	r1, #0
 8002cda:	e003      	b.n	8002ce4 <LoopCopyDataInit>

08002cdc <CopyDataInit>:
 8002cdc:	4b0c      	ldr	r3, [pc, #48]	; (8002d10 <LoopForever+0x6>)
 8002cde:	585b      	ldr	r3, [r3, r1]
 8002ce0:	5043      	str	r3, [r0, r1]
 8002ce2:	3104      	adds	r1, #4

08002ce4 <LoopCopyDataInit>:
 8002ce4:	480b      	ldr	r0, [pc, #44]	; (8002d14 <LoopForever+0xa>)
 8002ce6:	4b0c      	ldr	r3, [pc, #48]	; (8002d18 <LoopForever+0xe>)
 8002ce8:	1842      	adds	r2, r0, r1
 8002cea:	429a      	cmp	r2, r3
 8002cec:	d3f6      	bcc.n	8002cdc <CopyDataInit>
 8002cee:	4a0b      	ldr	r2, [pc, #44]	; (8002d1c <LoopForever+0x12>)
 8002cf0:	e002      	b.n	8002cf8 <LoopFillZerobss>

08002cf2 <FillZerobss>:
 8002cf2:	2300      	movs	r3, #0
 8002cf4:	f842 3b04 	str.w	r3, [r2], #4

08002cf8 <LoopFillZerobss>:
 8002cf8:	4b09      	ldr	r3, [pc, #36]	; (8002d20 <LoopForever+0x16>)
 8002cfa:	429a      	cmp	r2, r3
 8002cfc:	d3f9      	bcc.n	8002cf2 <FillZerobss>
 8002cfe:	f7ff ffbf 	bl	8002c80 <SystemInit>
 8002d02:	f000 f817 	bl	8002d34 <__libc_init_array>
 8002d06:	f7ff ff17 	bl	8002b38 <main>

08002d0a <LoopForever>:
 8002d0a:	e7fe      	b.n	8002d0a <LoopForever>
 8002d0c:	20018000 	.word	0x20018000
 8002d10:	08007ed8 	.word	0x08007ed8
 8002d14:	20000000 	.word	0x20000000
 8002d18:	20000a08 	.word	0x20000a08
 8002d1c:	20000a08 	.word	0x20000a08
 8002d20:	20000b50 	.word	0x20000b50

08002d24 <ADC1_2_IRQHandler>:
 8002d24:	e7fe      	b.n	8002d24 <ADC1_2_IRQHandler>
	...

08002d28 <__errno>:
 8002d28:	4b01      	ldr	r3, [pc, #4]	; (8002d30 <__errno+0x8>)
 8002d2a:	6818      	ldr	r0, [r3, #0]
 8002d2c:	4770      	bx	lr
 8002d2e:	bf00      	nop
 8002d30:	20000058 	.word	0x20000058

08002d34 <__libc_init_array>:
 8002d34:	b570      	push	{r4, r5, r6, lr}
 8002d36:	4e0d      	ldr	r6, [pc, #52]	; (8002d6c <__libc_init_array+0x38>)
 8002d38:	4d0d      	ldr	r5, [pc, #52]	; (8002d70 <__libc_init_array+0x3c>)
 8002d3a:	1b76      	subs	r6, r6, r5
 8002d3c:	10b6      	asrs	r6, r6, #2
 8002d3e:	d006      	beq.n	8002d4e <__libc_init_array+0x1a>
 8002d40:	2400      	movs	r4, #0
 8002d42:	3401      	adds	r4, #1
 8002d44:	f855 3b04 	ldr.w	r3, [r5], #4
 8002d48:	4798      	blx	r3
 8002d4a:	42a6      	cmp	r6, r4
 8002d4c:	d1f9      	bne.n	8002d42 <__libc_init_array+0xe>
 8002d4e:	4e09      	ldr	r6, [pc, #36]	; (8002d74 <__libc_init_array+0x40>)
 8002d50:	4d09      	ldr	r5, [pc, #36]	; (8002d78 <__libc_init_array+0x44>)
 8002d52:	1b76      	subs	r6, r6, r5
 8002d54:	f004 feb8 	bl	8007ac8 <_init>
 8002d58:	10b6      	asrs	r6, r6, #2
 8002d5a:	d006      	beq.n	8002d6a <__libc_init_array+0x36>
 8002d5c:	2400      	movs	r4, #0
 8002d5e:	3401      	adds	r4, #1
 8002d60:	f855 3b04 	ldr.w	r3, [r5], #4
 8002d64:	4798      	blx	r3
 8002d66:	42a6      	cmp	r6, r4
 8002d68:	d1f9      	bne.n	8002d5e <__libc_init_array+0x2a>
 8002d6a:	bd70      	pop	{r4, r5, r6, pc}
 8002d6c:	08007ec8 	.word	0x08007ec8
 8002d70:	08007ec8 	.word	0x08007ec8
 8002d74:	08007ed0 	.word	0x08007ed0
 8002d78:	08007ec8 	.word	0x08007ec8

08002d7c <__locale_mb_cur_max>:
 8002d7c:	4b04      	ldr	r3, [pc, #16]	; (8002d90 <__locale_mb_cur_max+0x14>)
 8002d7e:	4a05      	ldr	r2, [pc, #20]	; (8002d94 <__locale_mb_cur_max+0x18>)
 8002d80:	681b      	ldr	r3, [r3, #0]
 8002d82:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8002d84:	2b00      	cmp	r3, #0
 8002d86:	bf08      	it	eq
 8002d88:	4613      	moveq	r3, r2
 8002d8a:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8002d8e:	4770      	bx	lr
 8002d90:	20000058 	.word	0x20000058
 8002d94:	20000488 	.word	0x20000488

08002d98 <__locale_ctype_ptr>:
 8002d98:	4b04      	ldr	r3, [pc, #16]	; (8002dac <__locale_ctype_ptr+0x14>)
 8002d9a:	4a05      	ldr	r2, [pc, #20]	; (8002db0 <__locale_ctype_ptr+0x18>)
 8002d9c:	681b      	ldr	r3, [r3, #0]
 8002d9e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8002da0:	2b00      	cmp	r3, #0
 8002da2:	bf08      	it	eq
 8002da4:	4613      	moveq	r3, r2
 8002da6:	f8d3 00ec 	ldr.w	r0, [r3, #236]	; 0xec
 8002daa:	4770      	bx	lr
 8002dac:	20000058 	.word	0x20000058
 8002db0:	20000488 	.word	0x20000488

08002db4 <__ascii_mbtowc>:
 8002db4:	b082      	sub	sp, #8
 8002db6:	b149      	cbz	r1, 8002dcc <__ascii_mbtowc+0x18>
 8002db8:	b15a      	cbz	r2, 8002dd2 <__ascii_mbtowc+0x1e>
 8002dba:	b16b      	cbz	r3, 8002dd8 <__ascii_mbtowc+0x24>
 8002dbc:	7813      	ldrb	r3, [r2, #0]
 8002dbe:	600b      	str	r3, [r1, #0]
 8002dc0:	7812      	ldrb	r2, [r2, #0]
 8002dc2:	1c10      	adds	r0, r2, #0
 8002dc4:	bf18      	it	ne
 8002dc6:	2001      	movne	r0, #1
 8002dc8:	b002      	add	sp, #8
 8002dca:	4770      	bx	lr
 8002dcc:	a901      	add	r1, sp, #4
 8002dce:	2a00      	cmp	r2, #0
 8002dd0:	d1f3      	bne.n	8002dba <__ascii_mbtowc+0x6>
 8002dd2:	4610      	mov	r0, r2
 8002dd4:	b002      	add	sp, #8
 8002dd6:	4770      	bx	lr
 8002dd8:	f06f 0001 	mvn.w	r0, #1
 8002ddc:	e7f4      	b.n	8002dc8 <__ascii_mbtowc+0x14>
 8002dde:	bf00      	nop

08002de0 <memset>:
 8002de0:	b4f0      	push	{r4, r5, r6, r7}
 8002de2:	0786      	lsls	r6, r0, #30
 8002de4:	d043      	beq.n	8002e6e <memset+0x8e>
 8002de6:	1e54      	subs	r4, r2, #1
 8002de8:	2a00      	cmp	r2, #0
 8002dea:	d03e      	beq.n	8002e6a <memset+0x8a>
 8002dec:	b2ca      	uxtb	r2, r1
 8002dee:	4603      	mov	r3, r0
 8002df0:	e002      	b.n	8002df8 <memset+0x18>
 8002df2:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002df6:	d338      	bcc.n	8002e6a <memset+0x8a>
 8002df8:	f803 2b01 	strb.w	r2, [r3], #1
 8002dfc:	079d      	lsls	r5, r3, #30
 8002dfe:	d1f8      	bne.n	8002df2 <memset+0x12>
 8002e00:	2c03      	cmp	r4, #3
 8002e02:	d92b      	bls.n	8002e5c <memset+0x7c>
 8002e04:	b2cd      	uxtb	r5, r1
 8002e06:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002e0a:	2c0f      	cmp	r4, #15
 8002e0c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002e10:	d916      	bls.n	8002e40 <memset+0x60>
 8002e12:	f1a4 0710 	sub.w	r7, r4, #16
 8002e16:	093f      	lsrs	r7, r7, #4
 8002e18:	f103 0620 	add.w	r6, r3, #32
 8002e1c:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002e20:	f103 0210 	add.w	r2, r3, #16
 8002e24:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002e28:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002e2c:	3210      	adds	r2, #16
 8002e2e:	42b2      	cmp	r2, r6
 8002e30:	d1f8      	bne.n	8002e24 <memset+0x44>
 8002e32:	f004 040f 	and.w	r4, r4, #15
 8002e36:	3701      	adds	r7, #1
 8002e38:	2c03      	cmp	r4, #3
 8002e3a:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002e3e:	d90d      	bls.n	8002e5c <memset+0x7c>
 8002e40:	461e      	mov	r6, r3
 8002e42:	4622      	mov	r2, r4
 8002e44:	3a04      	subs	r2, #4
 8002e46:	2a03      	cmp	r2, #3
 8002e48:	f846 5b04 	str.w	r5, [r6], #4
 8002e4c:	d8fa      	bhi.n	8002e44 <memset+0x64>
 8002e4e:	1f22      	subs	r2, r4, #4
 8002e50:	f022 0203 	bic.w	r2, r2, #3
 8002e54:	3204      	adds	r2, #4
 8002e56:	4413      	add	r3, r2
 8002e58:	f004 0403 	and.w	r4, r4, #3
 8002e5c:	b12c      	cbz	r4, 8002e6a <memset+0x8a>
 8002e5e:	b2c9      	uxtb	r1, r1
 8002e60:	441c      	add	r4, r3
 8002e62:	f803 1b01 	strb.w	r1, [r3], #1
 8002e66:	429c      	cmp	r4, r3
 8002e68:	d1fb      	bne.n	8002e62 <memset+0x82>
 8002e6a:	bcf0      	pop	{r4, r5, r6, r7}
 8002e6c:	4770      	bx	lr
 8002e6e:	4614      	mov	r4, r2
 8002e70:	4603      	mov	r3, r0
 8002e72:	e7c5      	b.n	8002e00 <memset+0x20>

08002e74 <printf>:
 8002e74:	b40f      	push	{r0, r1, r2, r3}
 8002e76:	b500      	push	{lr}
 8002e78:	4907      	ldr	r1, [pc, #28]	; (8002e98 <printf+0x24>)
 8002e7a:	b083      	sub	sp, #12
 8002e7c:	ab04      	add	r3, sp, #16
 8002e7e:	6808      	ldr	r0, [r1, #0]
 8002e80:	f853 2b04 	ldr.w	r2, [r3], #4
 8002e84:	6881      	ldr	r1, [r0, #8]
 8002e86:	9301      	str	r3, [sp, #4]
 8002e88:	f000 f85e 	bl	8002f48 <_vfprintf_r>
 8002e8c:	b003      	add	sp, #12
 8002e8e:	f85d eb04 	ldr.w	lr, [sp], #4
 8002e92:	b004      	add	sp, #16
 8002e94:	4770      	bx	lr
 8002e96:	bf00      	nop
 8002e98:	20000058 	.word	0x20000058

08002e9c <_puts_r>:
 8002e9c:	b570      	push	{r4, r5, r6, lr}
 8002e9e:	4605      	mov	r5, r0
 8002ea0:	b088      	sub	sp, #32
 8002ea2:	4608      	mov	r0, r1
 8002ea4:	460c      	mov	r4, r1
 8002ea6:	f7fd fc2b 	bl	8000700 <strlen>
 8002eaa:	4a22      	ldr	r2, [pc, #136]	; (8002f34 <_puts_r+0x98>)
 8002eac:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002eae:	9404      	str	r4, [sp, #16]
 8002eb0:	2601      	movs	r6, #1
 8002eb2:	1c44      	adds	r4, r0, #1
 8002eb4:	a904      	add	r1, sp, #16
 8002eb6:	9206      	str	r2, [sp, #24]
 8002eb8:	2202      	movs	r2, #2
 8002eba:	9403      	str	r4, [sp, #12]
 8002ebc:	9005      	str	r0, [sp, #20]
 8002ebe:	68ac      	ldr	r4, [r5, #8]
 8002ec0:	9607      	str	r6, [sp, #28]
 8002ec2:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002ec6:	b31b      	cbz	r3, 8002f10 <_puts_r+0x74>
 8002ec8:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002eca:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002ece:	07ce      	lsls	r6, r1, #31
 8002ed0:	b29a      	uxth	r2, r3
 8002ed2:	d401      	bmi.n	8002ed8 <_puts_r+0x3c>
 8002ed4:	0590      	lsls	r0, r2, #22
 8002ed6:	d525      	bpl.n	8002f24 <_puts_r+0x88>
 8002ed8:	0491      	lsls	r1, r2, #18
 8002eda:	d406      	bmi.n	8002eea <_puts_r+0x4e>
 8002edc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8002ede:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002ee2:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002ee6:	81a3      	strh	r3, [r4, #12]
 8002ee8:	6662      	str	r2, [r4, #100]	; 0x64
 8002eea:	4628      	mov	r0, r5
 8002eec:	aa01      	add	r2, sp, #4
 8002eee:	4621      	mov	r1, r4
 8002ef0:	f003 f86e 	bl	8005fd0 <__sfvwrite_r>
 8002ef4:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002ef6:	2800      	cmp	r0, #0
 8002ef8:	bf0c      	ite	eq
 8002efa:	250a      	moveq	r5, #10
 8002efc:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002f00:	07da      	lsls	r2, r3, #31
 8002f02:	d402      	bmi.n	8002f0a <_puts_r+0x6e>
 8002f04:	89a3      	ldrh	r3, [r4, #12]
 8002f06:	059b      	lsls	r3, r3, #22
 8002f08:	d506      	bpl.n	8002f18 <_puts_r+0x7c>
 8002f0a:	4628      	mov	r0, r5
 8002f0c:	b008      	add	sp, #32
 8002f0e:	bd70      	pop	{r4, r5, r6, pc}
 8002f10:	4628      	mov	r0, r5
 8002f12:	f002 fec7 	bl	8005ca4 <__sinit>
 8002f16:	e7d7      	b.n	8002ec8 <_puts_r+0x2c>
 8002f18:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002f1a:	f003 fa15 	bl	8006348 <__retarget_lock_release_recursive>
 8002f1e:	4628      	mov	r0, r5
 8002f20:	b008      	add	sp, #32
 8002f22:	bd70      	pop	{r4, r5, r6, pc}
 8002f24:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002f26:	f003 fa0d 	bl	8006344 <__retarget_lock_acquire_recursive>
 8002f2a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002f2e:	b29a      	uxth	r2, r3
 8002f30:	e7d2      	b.n	8002ed8 <_puts_r+0x3c>
 8002f32:	bf00      	nop
 8002f34:	08007c40 	.word	0x08007c40

08002f38 <puts>:
 8002f38:	4b02      	ldr	r3, [pc, #8]	; (8002f44 <puts+0xc>)
 8002f3a:	4601      	mov	r1, r0
 8002f3c:	6818      	ldr	r0, [r3, #0]
 8002f3e:	f7ff bfad 	b.w	8002e9c <_puts_r>
 8002f42:	bf00      	nop
 8002f44:	20000058 	.word	0x20000058

08002f48 <_vfprintf_r>:
 8002f48:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002f4c:	b0d7      	sub	sp, #348	; 0x15c
 8002f4e:	461c      	mov	r4, r3
 8002f50:	4689      	mov	r9, r1
 8002f52:	4617      	mov	r7, r2
 8002f54:	4605      	mov	r5, r0
 8002f56:	9003      	str	r0, [sp, #12]
 8002f58:	f003 f9e2 	bl	8006320 <_localeconv_r>
 8002f5c:	6803      	ldr	r3, [r0, #0]
 8002f5e:	9316      	str	r3, [sp, #88]	; 0x58
 8002f60:	4618      	mov	r0, r3
 8002f62:	f7fd fbcd 	bl	8000700 <strlen>
 8002f66:	9408      	str	r4, [sp, #32]
 8002f68:	9015      	str	r0, [sp, #84]	; 0x54
 8002f6a:	b11d      	cbz	r5, 8002f74 <_vfprintf_r+0x2c>
 8002f6c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002f6e:	2b00      	cmp	r3, #0
 8002f70:	f000 8107 	beq.w	8003182 <_vfprintf_r+0x23a>
 8002f74:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002f78:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002f7c:	07c8      	lsls	r0, r1, #31
 8002f7e:	b293      	uxth	r3, r2
 8002f80:	d402      	bmi.n	8002f88 <_vfprintf_r+0x40>
 8002f82:	0599      	lsls	r1, r3, #22
 8002f84:	f140 811f 	bpl.w	80031c6 <_vfprintf_r+0x27e>
 8002f88:	049e      	lsls	r6, r3, #18
 8002f8a:	d40a      	bmi.n	8002fa2 <_vfprintf_r+0x5a>
 8002f8c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002f90:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002f94:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002f98:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002f9c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002fa0:	b29b      	uxth	r3, r3
 8002fa2:	071d      	lsls	r5, r3, #28
 8002fa4:	f140 80b2 	bpl.w	800310c <_vfprintf_r+0x1c4>
 8002fa8:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002fac:	2a00      	cmp	r2, #0
 8002fae:	f000 80ad 	beq.w	800310c <_vfprintf_r+0x1c4>
 8002fb2:	f003 021a 	and.w	r2, r3, #26
 8002fb6:	2a0a      	cmp	r2, #10
 8002fb8:	f000 80c9 	beq.w	800314e <_vfprintf_r+0x206>
 8002fbc:	2300      	movs	r3, #0
 8002fbe:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80031d8 <_vfprintf_r+0x290>
 8002fc2:	9310      	str	r3, [sp, #64]	; 0x40
 8002fc4:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002fc8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002fca:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002fce:	931b      	str	r3, [sp, #108]	; 0x6c
 8002fd0:	9318      	str	r3, [sp, #96]	; 0x60
 8002fd2:	9305      	str	r3, [sp, #20]
 8002fd4:	ab2d      	add	r3, sp, #180	; 0xb4
 8002fd6:	932a      	str	r3, [sp, #168]	; 0xa8
 8002fd8:	469b      	mov	fp, r3
 8002fda:	783b      	ldrb	r3, [r7, #0]
 8002fdc:	f8cd 901c 	str.w	r9, [sp, #28]
 8002fe0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002fe4:	2b00      	cmp	r3, #0
 8002fe6:	f000 8259 	beq.w	800349c <_vfprintf_r+0x554>
 8002fea:	2b25      	cmp	r3, #37	; 0x25
 8002fec:	463c      	mov	r4, r7
 8002fee:	d102      	bne.n	8002ff6 <_vfprintf_r+0xae>
 8002ff0:	e01d      	b.n	800302e <_vfprintf_r+0xe6>
 8002ff2:	2b25      	cmp	r3, #37	; 0x25
 8002ff4:	d003      	beq.n	8002ffe <_vfprintf_r+0xb6>
 8002ff6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002ffa:	2b00      	cmp	r3, #0
 8002ffc:	d1f9      	bne.n	8002ff2 <_vfprintf_r+0xaa>
 8002ffe:	1be5      	subs	r5, r4, r7
 8003000:	b18d      	cbz	r5, 8003026 <_vfprintf_r+0xde>
 8003002:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8003006:	3301      	adds	r3, #1
 8003008:	442a      	add	r2, r5
 800300a:	2b07      	cmp	r3, #7
 800300c:	f8cb 7000 	str.w	r7, [fp]
 8003010:	f8cb 5004 	str.w	r5, [fp, #4]
 8003014:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8003018:	f300 80ca 	bgt.w	80031b0 <_vfprintf_r+0x268>
 800301c:	f10b 0b08 	add.w	fp, fp, #8
 8003020:	9b05      	ldr	r3, [sp, #20]
 8003022:	442b      	add	r3, r5
 8003024:	9305      	str	r3, [sp, #20]
 8003026:	7823      	ldrb	r3, [r4, #0]
 8003028:	2b00      	cmp	r3, #0
 800302a:	f000 8237 	beq.w	800349c <_vfprintf_r+0x554>
 800302e:	2300      	movs	r3, #0
 8003030:	7866      	ldrb	r6, [r4, #1]
 8003032:	9306      	str	r3, [sp, #24]
 8003034:	4698      	mov	r8, r3
 8003036:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800303a:	f104 0a01 	add.w	sl, r4, #1
 800303e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8003042:	252b      	movs	r5, #43	; 0x2b
 8003044:	f10a 0a01 	add.w	sl, sl, #1
 8003048:	f1a6 0320 	sub.w	r3, r6, #32
 800304c:	2b5a      	cmp	r3, #90	; 0x5a
 800304e:	f200 842a 	bhi.w	80038a6 <_vfprintf_r+0x95e>
 8003052:	e8df f013 	tbh	[pc, r3, lsl #1]
 8003056:	03aa      	.short	0x03aa
 8003058:	04280428 	.word	0x04280428
 800305c:	0428029c 	.word	0x0428029c
 8003060:	04280428 	.word	0x04280428
 8003064:	042802a7 	.word	0x042802a7
 8003068:	02c60428 	.word	0x02c60428
 800306c:	042802d2 	.word	0x042802d2
 8003070:	02dc02d7 	.word	0x02dc02d7
 8003074:	02f60428 	.word	0x02f60428
 8003078:	026d026d 	.word	0x026d026d
 800307c:	026d026d 	.word	0x026d026d
 8003080:	026d026d 	.word	0x026d026d
 8003084:	026d026d 	.word	0x026d026d
 8003088:	0428026d 	.word	0x0428026d
 800308c:	04280428 	.word	0x04280428
 8003090:	04280428 	.word	0x04280428
 8003094:	04280428 	.word	0x04280428
 8003098:	042802fb 	.word	0x042802fb
 800309c:	03f3033c 	.word	0x03f3033c
 80030a0:	02fb02fb 	.word	0x02fb02fb
 80030a4:	042802fb 	.word	0x042802fb
 80030a8:	04280428 	.word	0x04280428
 80030ac:	03ee0428 	.word	0x03ee0428
 80030b0:	04280428 	.word	0x04280428
 80030b4:	0428009a 	.word	0x0428009a
 80030b8:	04280428 	.word	0x04280428
 80030bc:	04280350 	.word	0x04280350
 80030c0:	04280379 	.word	0x04280379
 80030c4:	03900428 	.word	0x03900428
 80030c8:	04280428 	.word	0x04280428
 80030cc:	04280428 	.word	0x04280428
 80030d0:	04280428 	.word	0x04280428
 80030d4:	04280428 	.word	0x04280428
 80030d8:	042802fb 	.word	0x042802fb
 80030dc:	00c5033c 	.word	0x00c5033c
 80030e0:	02fb02fb 	.word	0x02fb02fb
 80030e4:	03d102fb 	.word	0x03d102fb
 80030e8:	007000c5 	.word	0x007000c5
 80030ec:	03b50428 	.word	0x03b50428
 80030f0:	03c20428 	.word	0x03c20428
 80030f4:	03de009c 	.word	0x03de009c
 80030f8:	04280070 	.word	0x04280070
 80030fc:	00720350 	.word	0x00720350
 8003100:	0428022c 	.word	0x0428022c
 8003104:	027c0428 	.word	0x027c0428
 8003108:	00720428 	.word	0x00720428
 800310c:	4649      	mov	r1, r9
 800310e:	9803      	ldr	r0, [sp, #12]
 8003110:	f001 fca8 	bl	8004a64 <__swsetup_r>
 8003114:	b1a0      	cbz	r0, 8003140 <_vfprintf_r+0x1f8>
 8003116:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 800311a:	07d8      	lsls	r0, r3, #31
 800311c:	d404      	bmi.n	8003128 <_vfprintf_r+0x1e0>
 800311e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003122:	0599      	lsls	r1, r3, #22
 8003124:	f140 83b7 	bpl.w	8003896 <_vfprintf_r+0x94e>
 8003128:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800312c:	9305      	str	r3, [sp, #20]
 800312e:	9805      	ldr	r0, [sp, #20]
 8003130:	b057      	add	sp, #348	; 0x15c
 8003132:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003136:	f048 0820 	orr.w	r8, r8, #32
 800313a:	f89a 6000 	ldrb.w	r6, [sl]
 800313e:	e781      	b.n	8003044 <_vfprintf_r+0xfc>
 8003140:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003144:	f003 021a 	and.w	r2, r3, #26
 8003148:	2a0a      	cmp	r2, #10
 800314a:	f47f af37 	bne.w	8002fbc <_vfprintf_r+0x74>
 800314e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8003152:	2a00      	cmp	r2, #0
 8003154:	f6ff af32 	blt.w	8002fbc <_vfprintf_r+0x74>
 8003158:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800315c:	07d2      	lsls	r2, r2, #31
 800315e:	d405      	bmi.n	800316c <_vfprintf_r+0x224>
 8003160:	059b      	lsls	r3, r3, #22
 8003162:	d403      	bmi.n	800316c <_vfprintf_r+0x224>
 8003164:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003168:	f003 f8ee 	bl	8006348 <__retarget_lock_release_recursive>
 800316c:	4623      	mov	r3, r4
 800316e:	463a      	mov	r2, r7
 8003170:	4649      	mov	r1, r9
 8003172:	9803      	ldr	r0, [sp, #12]
 8003174:	f001 fc26 	bl	80049c4 <__sbprintf>
 8003178:	9005      	str	r0, [sp, #20]
 800317a:	9805      	ldr	r0, [sp, #20]
 800317c:	b057      	add	sp, #348	; 0x15c
 800317e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003182:	9803      	ldr	r0, [sp, #12]
 8003184:	f002 fd8e 	bl	8005ca4 <__sinit>
 8003188:	e6f4      	b.n	8002f74 <_vfprintf_r+0x2c>
 800318a:	f048 0810 	orr.w	r8, r8, #16
 800318e:	f018 0f20 	tst.w	r8, #32
 8003192:	f000 836c 	beq.w	800386e <_vfprintf_r+0x926>
 8003196:	9c08      	ldr	r4, [sp, #32]
 8003198:	3407      	adds	r4, #7
 800319a:	f024 0307 	bic.w	r3, r4, #7
 800319e:	e9d3 4500 	ldrd	r4, r5, [r3]
 80031a2:	f103 0208 	add.w	r2, r3, #8
 80031a6:	9208      	str	r2, [sp, #32]
 80031a8:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80031ac:	2200      	movs	r2, #0
 80031ae:	e18c      	b.n	80034ca <_vfprintf_r+0x582>
 80031b0:	aa2a      	add	r2, sp, #168	; 0xa8
 80031b2:	9907      	ldr	r1, [sp, #28]
 80031b4:	9803      	ldr	r0, [sp, #12]
 80031b6:	f004 fa05 	bl	80075c4 <__sprint_r>
 80031ba:	2800      	cmp	r0, #0
 80031bc:	f041 8376 	bne.w	80048ac <_vfprintf_r+0x1964>
 80031c0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80031c4:	e72c      	b.n	8003020 <_vfprintf_r+0xd8>
 80031c6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80031ca:	f003 f8bb 	bl	8006344 <__retarget_lock_acquire_recursive>
 80031ce:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80031d2:	b293      	uxth	r3, r2
 80031d4:	e6d8      	b.n	8002f88 <_vfprintf_r+0x40>
 80031d6:	bf00      	nop
	...
 80031e0:	4643      	mov	r3, r8
 80031e2:	069f      	lsls	r7, r3, #26
 80031e4:	f140 832f 	bpl.w	8003846 <_vfprintf_r+0x8fe>
 80031e8:	9c08      	ldr	r4, [sp, #32]
 80031ea:	3407      	adds	r4, #7
 80031ec:	f024 0407 	bic.w	r4, r4, #7
 80031f0:	e9d4 0100 	ldrd	r0, r1, [r4]
 80031f4:	f104 0208 	add.w	r2, r4, #8
 80031f8:	9208      	str	r2, [sp, #32]
 80031fa:	4604      	mov	r4, r0
 80031fc:	460d      	mov	r5, r1
 80031fe:	2800      	cmp	r0, #0
 8003200:	f171 0200 	sbcs.w	r2, r1, #0
 8003204:	da05      	bge.n	8003212 <_vfprintf_r+0x2ca>
 8003206:	222d      	movs	r2, #45	; 0x2d
 8003208:	4264      	negs	r4, r4
 800320a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 800320e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003212:	aa56      	add	r2, sp, #344	; 0x158
 8003214:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003218:	9204      	str	r2, [sp, #16]
 800321a:	f000 84b2 	beq.w	8003b82 <_vfprintf_r+0xc3a>
 800321e:	2201      	movs	r2, #1
 8003220:	ea54 0105 	orrs.w	r1, r4, r5
 8003224:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8003228:	f040 8159 	bne.w	80034de <_vfprintf_r+0x596>
 800322c:	f1b9 0f00 	cmp.w	r9, #0
 8003230:	f040 8619 	bne.w	8003e66 <_vfprintf_r+0xf1e>
 8003234:	2a00      	cmp	r2, #0
 8003236:	f040 8508 	bne.w	8003c4a <_vfprintf_r+0xd02>
 800323a:	f013 0301 	ands.w	r3, r3, #1
 800323e:	af56      	add	r7, sp, #344	; 0x158
 8003240:	9309      	str	r3, [sp, #36]	; 0x24
 8003242:	d002      	beq.n	800324a <_vfprintf_r+0x302>
 8003244:	2330      	movs	r3, #48	; 0x30
 8003246:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800324a:	2300      	movs	r3, #0
 800324c:	930a      	str	r3, [sp, #40]	; 0x28
 800324e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003250:	9314      	str	r3, [sp, #80]	; 0x50
 8003252:	9311      	str	r3, [sp, #68]	; 0x44
 8003254:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003256:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800325a:	454b      	cmp	r3, r9
 800325c:	bfb8      	it	lt
 800325e:	464b      	movlt	r3, r9
 8003260:	9304      	str	r3, [sp, #16]
 8003262:	b112      	cbz	r2, 800326a <_vfprintf_r+0x322>
 8003264:	9b04      	ldr	r3, [sp, #16]
 8003266:	3301      	adds	r3, #1
 8003268:	9304      	str	r3, [sp, #16]
 800326a:	f018 0302 	ands.w	r3, r8, #2
 800326e:	930b      	str	r3, [sp, #44]	; 0x2c
 8003270:	d002      	beq.n	8003278 <_vfprintf_r+0x330>
 8003272:	9b04      	ldr	r3, [sp, #16]
 8003274:	3302      	adds	r3, #2
 8003276:	9304      	str	r3, [sp, #16]
 8003278:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 800327c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800327e:	930e      	str	r3, [sp, #56]	; 0x38
 8003280:	d13f      	bne.n	8003302 <_vfprintf_r+0x3ba>
 8003282:	9b06      	ldr	r3, [sp, #24]
 8003284:	9904      	ldr	r1, [sp, #16]
 8003286:	1a5d      	subs	r5, r3, r1
 8003288:	2d00      	cmp	r5, #0
 800328a:	dd3a      	ble.n	8003302 <_vfprintf_r+0x3ba>
 800328c:	2d10      	cmp	r5, #16
 800328e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003290:	dd29      	ble.n	80032e6 <_vfprintf_r+0x39e>
 8003292:	4659      	mov	r1, fp
 8003294:	4620      	mov	r0, r4
 8003296:	9620      	str	r6, [sp, #128]	; 0x80
 8003298:	2310      	movs	r3, #16
 800329a:	9c03      	ldr	r4, [sp, #12]
 800329c:	9e07      	ldr	r6, [sp, #28]
 800329e:	46bb      	mov	fp, r7
 80032a0:	e004      	b.n	80032ac <_vfprintf_r+0x364>
 80032a2:	3d10      	subs	r5, #16
 80032a4:	2d10      	cmp	r5, #16
 80032a6:	f101 0108 	add.w	r1, r1, #8
 80032aa:	dd18      	ble.n	80032de <_vfprintf_r+0x396>
 80032ac:	3201      	adds	r2, #1
 80032ae:	4fba      	ldr	r7, [pc, #744]	; (8003598 <_vfprintf_r+0x650>)
 80032b0:	3010      	adds	r0, #16
 80032b2:	2a07      	cmp	r2, #7
 80032b4:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80032b8:	e9c1 7300 	strd	r7, r3, [r1]
 80032bc:	ddf1      	ble.n	80032a2 <_vfprintf_r+0x35a>
 80032be:	aa2a      	add	r2, sp, #168	; 0xa8
 80032c0:	4631      	mov	r1, r6
 80032c2:	4620      	mov	r0, r4
 80032c4:	930c      	str	r3, [sp, #48]	; 0x30
 80032c6:	f004 f97d 	bl	80075c4 <__sprint_r>
 80032ca:	2800      	cmp	r0, #0
 80032cc:	f040 843d 	bne.w	8003b4a <_vfprintf_r+0xc02>
 80032d0:	3d10      	subs	r5, #16
 80032d2:	2d10      	cmp	r5, #16
 80032d4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80032d8:	a92d      	add	r1, sp, #180	; 0xb4
 80032da:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80032dc:	dce6      	bgt.n	80032ac <_vfprintf_r+0x364>
 80032de:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80032e0:	465f      	mov	r7, fp
 80032e2:	4604      	mov	r4, r0
 80032e4:	468b      	mov	fp, r1
 80032e6:	3201      	adds	r2, #1
 80032e8:	4bab      	ldr	r3, [pc, #684]	; (8003598 <_vfprintf_r+0x650>)
 80032ea:	442c      	add	r4, r5
 80032ec:	2a07      	cmp	r2, #7
 80032ee:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80032f2:	e9cb 3500 	strd	r3, r5, [fp]
 80032f6:	f300 84ff 	bgt.w	8003cf8 <_vfprintf_r+0xdb0>
 80032fa:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80032fe:	f10b 0b08 	add.w	fp, fp, #8
 8003302:	b172      	cbz	r2, 8003322 <_vfprintf_r+0x3da>
 8003304:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003306:	3201      	adds	r2, #1
 8003308:	3401      	adds	r4, #1
 800330a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 800330e:	2101      	movs	r1, #1
 8003310:	2a07      	cmp	r2, #7
 8003312:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003316:	e9cb 0100 	strd	r0, r1, [fp]
 800331a:	f300 8418 	bgt.w	8003b4e <_vfprintf_r+0xc06>
 800331e:	f10b 0b08 	add.w	fp, fp, #8
 8003322:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003324:	b16b      	cbz	r3, 8003342 <_vfprintf_r+0x3fa>
 8003326:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003328:	3301      	adds	r3, #1
 800332a:	3402      	adds	r4, #2
 800332c:	a923      	add	r1, sp, #140	; 0x8c
 800332e:	2202      	movs	r2, #2
 8003330:	2b07      	cmp	r3, #7
 8003332:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003336:	e9cb 1200 	strd	r1, r2, [fp]
 800333a:	f300 8415 	bgt.w	8003b68 <_vfprintf_r+0xc20>
 800333e:	f10b 0b08 	add.w	fp, fp, #8
 8003342:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8003344:	2b80      	cmp	r3, #128	; 0x80
 8003346:	f000 8331 	beq.w	80039ac <_vfprintf_r+0xa64>
 800334a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800334c:	eba9 0503 	sub.w	r5, r9, r3
 8003350:	2d00      	cmp	r5, #0
 8003352:	dd37      	ble.n	80033c4 <_vfprintf_r+0x47c>
 8003354:	2d10      	cmp	r5, #16
 8003356:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003358:	4b90      	ldr	r3, [pc, #576]	; (800359c <_vfprintf_r+0x654>)
 800335a:	dd28      	ble.n	80033ae <_vfprintf_r+0x466>
 800335c:	4659      	mov	r1, fp
 800335e:	4620      	mov	r0, r4
 8003360:	46bb      	mov	fp, r7
 8003362:	f04f 0910 	mov.w	r9, #16
 8003366:	4637      	mov	r7, r6
 8003368:	461c      	mov	r4, r3
 800336a:	9e07      	ldr	r6, [sp, #28]
 800336c:	e004      	b.n	8003378 <_vfprintf_r+0x430>
 800336e:	3d10      	subs	r5, #16
 8003370:	2d10      	cmp	r5, #16
 8003372:	f101 0108 	add.w	r1, r1, #8
 8003376:	dd15      	ble.n	80033a4 <_vfprintf_r+0x45c>
 8003378:	3201      	adds	r2, #1
 800337a:	3010      	adds	r0, #16
 800337c:	2a07      	cmp	r2, #7
 800337e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003382:	e9c1 4900 	strd	r4, r9, [r1]
 8003386:	ddf2      	ble.n	800336e <_vfprintf_r+0x426>
 8003388:	aa2a      	add	r2, sp, #168	; 0xa8
 800338a:	4631      	mov	r1, r6
 800338c:	9803      	ldr	r0, [sp, #12]
 800338e:	f004 f919 	bl	80075c4 <__sprint_r>
 8003392:	2800      	cmp	r0, #0
 8003394:	f040 83d9 	bne.w	8003b4a <_vfprintf_r+0xc02>
 8003398:	3d10      	subs	r5, #16
 800339a:	2d10      	cmp	r5, #16
 800339c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80033a0:	a92d      	add	r1, sp, #180	; 0xb4
 80033a2:	dce9      	bgt.n	8003378 <_vfprintf_r+0x430>
 80033a4:	463e      	mov	r6, r7
 80033a6:	4623      	mov	r3, r4
 80033a8:	465f      	mov	r7, fp
 80033aa:	4604      	mov	r4, r0
 80033ac:	468b      	mov	fp, r1
 80033ae:	3201      	adds	r2, #1
 80033b0:	442c      	add	r4, r5
 80033b2:	2a07      	cmp	r2, #7
 80033b4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80033b8:	e9cb 3500 	strd	r3, r5, [fp]
 80033bc:	f300 83ef 	bgt.w	8003b9e <_vfprintf_r+0xc56>
 80033c0:	f10b 0b08 	add.w	fp, fp, #8
 80033c4:	f418 7f80 	tst.w	r8, #256	; 0x100
 80033c8:	f040 8280 	bne.w	80038cc <_vfprintf_r+0x984>
 80033cc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80033ce:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80033d0:	f8cb 7000 	str.w	r7, [fp]
 80033d4:	3301      	adds	r3, #1
 80033d6:	4414      	add	r4, r2
 80033d8:	2b07      	cmp	r3, #7
 80033da:	942c      	str	r4, [sp, #176]	; 0xb0
 80033dc:	f8cb 2004 	str.w	r2, [fp, #4]
 80033e0:	932b      	str	r3, [sp, #172]	; 0xac
 80033e2:	f300 8392 	bgt.w	8003b0a <_vfprintf_r+0xbc2>
 80033e6:	f10b 0b08 	add.w	fp, fp, #8
 80033ea:	f018 0f04 	tst.w	r8, #4
 80033ee:	d03b      	beq.n	8003468 <_vfprintf_r+0x520>
 80033f0:	9b06      	ldr	r3, [sp, #24]
 80033f2:	9a04      	ldr	r2, [sp, #16]
 80033f4:	1a9d      	subs	r5, r3, r2
 80033f6:	2d00      	cmp	r5, #0
 80033f8:	dd36      	ble.n	8003468 <_vfprintf_r+0x520>
 80033fa:	2d10      	cmp	r5, #16
 80033fc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80033fe:	dd21      	ble.n	8003444 <_vfprintf_r+0x4fc>
 8003400:	2610      	movs	r6, #16
 8003402:	9f03      	ldr	r7, [sp, #12]
 8003404:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8003408:	e004      	b.n	8003414 <_vfprintf_r+0x4cc>
 800340a:	3d10      	subs	r5, #16
 800340c:	2d10      	cmp	r5, #16
 800340e:	f10b 0b08 	add.w	fp, fp, #8
 8003412:	dd17      	ble.n	8003444 <_vfprintf_r+0x4fc>
 8003414:	3301      	adds	r3, #1
 8003416:	4a60      	ldr	r2, [pc, #384]	; (8003598 <_vfprintf_r+0x650>)
 8003418:	3410      	adds	r4, #16
 800341a:	2b07      	cmp	r3, #7
 800341c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003420:	e9cb 2600 	strd	r2, r6, [fp]
 8003424:	ddf1      	ble.n	800340a <_vfprintf_r+0x4c2>
 8003426:	aa2a      	add	r2, sp, #168	; 0xa8
 8003428:	4641      	mov	r1, r8
 800342a:	4638      	mov	r0, r7
 800342c:	f004 f8ca 	bl	80075c4 <__sprint_r>
 8003430:	2800      	cmp	r0, #0
 8003432:	f040 856c 	bne.w	8003f0e <_vfprintf_r+0xfc6>
 8003436:	3d10      	subs	r5, #16
 8003438:	2d10      	cmp	r5, #16
 800343a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800343e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003442:	dce7      	bgt.n	8003414 <_vfprintf_r+0x4cc>
 8003444:	3301      	adds	r3, #1
 8003446:	4a54      	ldr	r2, [pc, #336]	; (8003598 <_vfprintf_r+0x650>)
 8003448:	442c      	add	r4, r5
 800344a:	2b07      	cmp	r3, #7
 800344c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003450:	e9cb 2500 	strd	r2, r5, [fp]
 8003454:	dd08      	ble.n	8003468 <_vfprintf_r+0x520>
 8003456:	aa2a      	add	r2, sp, #168	; 0xa8
 8003458:	9907      	ldr	r1, [sp, #28]
 800345a:	9803      	ldr	r0, [sp, #12]
 800345c:	f004 f8b2 	bl	80075c4 <__sprint_r>
 8003460:	2800      	cmp	r0, #0
 8003462:	f040 82e9 	bne.w	8003a38 <_vfprintf_r+0xaf0>
 8003466:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003468:	9904      	ldr	r1, [sp, #16]
 800346a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 800346e:	428a      	cmp	r2, r1
 8003470:	bfac      	ite	ge
 8003472:	189b      	addge	r3, r3, r2
 8003474:	185b      	addlt	r3, r3, r1
 8003476:	9305      	str	r3, [sp, #20]
 8003478:	2c00      	cmp	r4, #0
 800347a:	f040 82d5 	bne.w	8003a28 <_vfprintf_r+0xae0>
 800347e:	2300      	movs	r3, #0
 8003480:	932b      	str	r3, [sp, #172]	; 0xac
 8003482:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003484:	b11b      	cbz	r3, 800348e <_vfprintf_r+0x546>
 8003486:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003488:	9803      	ldr	r0, [sp, #12]
 800348a:	f002 fcad 	bl	8005de8 <_free_r>
 800348e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003492:	4657      	mov	r7, sl
 8003494:	783b      	ldrb	r3, [r7, #0]
 8003496:	2b00      	cmp	r3, #0
 8003498:	f47f ada7 	bne.w	8002fea <_vfprintf_r+0xa2>
 800349c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 800349e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80034a2:	2b00      	cmp	r3, #0
 80034a4:	f041 80e7 	bne.w	8004676 <_vfprintf_r+0x172e>
 80034a8:	2300      	movs	r3, #0
 80034aa:	932b      	str	r3, [sp, #172]	; 0xac
 80034ac:	e2cb      	b.n	8003a46 <_vfprintf_r+0xafe>
 80034ae:	4643      	mov	r3, r8
 80034b0:	069a      	lsls	r2, r3, #26
 80034b2:	f140 814e 	bpl.w	8003752 <_vfprintf_r+0x80a>
 80034b6:	9c08      	ldr	r4, [sp, #32]
 80034b8:	3407      	adds	r4, #7
 80034ba:	f024 0207 	bic.w	r2, r4, #7
 80034be:	f102 0108 	add.w	r1, r2, #8
 80034c2:	e9d2 4500 	ldrd	r4, r5, [r2]
 80034c6:	9108      	str	r1, [sp, #32]
 80034c8:	2201      	movs	r2, #1
 80034ca:	2100      	movs	r1, #0
 80034cc:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 80034d0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80034d4:	a956      	add	r1, sp, #344	; 0x158
 80034d6:	9104      	str	r1, [sp, #16]
 80034d8:	f47f aea2 	bne.w	8003220 <_vfprintf_r+0x2d8>
 80034dc:	4698      	mov	r8, r3
 80034de:	2a01      	cmp	r2, #1
 80034e0:	f000 8350 	beq.w	8003b84 <_vfprintf_r+0xc3c>
 80034e4:	2a02      	cmp	r2, #2
 80034e6:	f000 831b 	beq.w	8003b20 <_vfprintf_r+0xbd8>
 80034ea:	a956      	add	r1, sp, #344	; 0x158
 80034ec:	e000      	b.n	80034f0 <_vfprintf_r+0x5a8>
 80034ee:	4639      	mov	r1, r7
 80034f0:	08e2      	lsrs	r2, r4, #3
 80034f2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 80034f6:	08e8      	lsrs	r0, r5, #3
 80034f8:	f004 0307 	and.w	r3, r4, #7
 80034fc:	4605      	mov	r5, r0
 80034fe:	4614      	mov	r4, r2
 8003500:	3330      	adds	r3, #48	; 0x30
 8003502:	ea54 0205 	orrs.w	r2, r4, r5
 8003506:	f801 3c01 	strb.w	r3, [r1, #-1]
 800350a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 800350e:	d1ee      	bne.n	80034ee <_vfprintf_r+0x5a6>
 8003510:	f018 0f01 	tst.w	r8, #1
 8003514:	f000 8314 	beq.w	8003b40 <_vfprintf_r+0xbf8>
 8003518:	2b30      	cmp	r3, #48	; 0x30
 800351a:	f000 8311 	beq.w	8003b40 <_vfprintf_r+0xbf8>
 800351e:	9a04      	ldr	r2, [sp, #16]
 8003520:	3902      	subs	r1, #2
 8003522:	2330      	movs	r3, #48	; 0x30
 8003524:	1a52      	subs	r2, r2, r1
 8003526:	f807 3c01 	strb.w	r3, [r7, #-1]
 800352a:	9209      	str	r2, [sp, #36]	; 0x24
 800352c:	460f      	mov	r7, r1
 800352e:	e68c      	b.n	800324a <_vfprintf_r+0x302>
 8003530:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003534:	2200      	movs	r2, #0
 8003536:	f81a 6b01 	ldrb.w	r6, [sl], #1
 800353a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 800353e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8003542:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003546:	2b09      	cmp	r3, #9
 8003548:	d9f5      	bls.n	8003536 <_vfprintf_r+0x5ee>
 800354a:	9206      	str	r2, [sp, #24]
 800354c:	e57c      	b.n	8003048 <_vfprintf_r+0x100>
 800354e:	4b14      	ldr	r3, [pc, #80]	; (80035a0 <_vfprintf_r+0x658>)
 8003550:	9317      	str	r3, [sp, #92]	; 0x5c
 8003552:	f018 0f20 	tst.w	r8, #32
 8003556:	f000 8114 	beq.w	8003782 <_vfprintf_r+0x83a>
 800355a:	9c08      	ldr	r4, [sp, #32]
 800355c:	3407      	adds	r4, #7
 800355e:	f024 0307 	bic.w	r3, r4, #7
 8003562:	e9d3 4500 	ldrd	r4, r5, [r3]
 8003566:	f103 0208 	add.w	r2, r3, #8
 800356a:	9208      	str	r2, [sp, #32]
 800356c:	f018 0f01 	tst.w	r8, #1
 8003570:	d009      	beq.n	8003586 <_vfprintf_r+0x63e>
 8003572:	ea54 0305 	orrs.w	r3, r4, r5
 8003576:	d006      	beq.n	8003586 <_vfprintf_r+0x63e>
 8003578:	2330      	movs	r3, #48	; 0x30
 800357a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 800357e:	f048 0802 	orr.w	r8, r8, #2
 8003582:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003586:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800358a:	2202      	movs	r2, #2
 800358c:	e79d      	b.n	80034ca <_vfprintf_r+0x582>
 800358e:	f048 0801 	orr.w	r8, r8, #1
 8003592:	f89a 6000 	ldrb.w	r6, [sl]
 8003596:	e555      	b.n	8003044 <_vfprintf_r+0xfc>
 8003598:	08007c88 	.word	0x08007c88
 800359c:	08007c98 	.word	0x08007c98
 80035a0:	08007c54 	.word	0x08007c54
 80035a4:	9e03      	ldr	r6, [sp, #12]
 80035a6:	4630      	mov	r0, r6
 80035a8:	f002 feba 	bl	8006320 <_localeconv_r>
 80035ac:	6843      	ldr	r3, [r0, #4]
 80035ae:	9318      	str	r3, [sp, #96]	; 0x60
 80035b0:	4618      	mov	r0, r3
 80035b2:	f7fd f8a5 	bl	8000700 <strlen>
 80035b6:	901b      	str	r0, [sp, #108]	; 0x6c
 80035b8:	4604      	mov	r4, r0
 80035ba:	4630      	mov	r0, r6
 80035bc:	f002 feb0 	bl	8006320 <_localeconv_r>
 80035c0:	6883      	ldr	r3, [r0, #8]
 80035c2:	931a      	str	r3, [sp, #104]	; 0x68
 80035c4:	2c00      	cmp	r4, #0
 80035c6:	f43f adb8 	beq.w	800313a <_vfprintf_r+0x1f2>
 80035ca:	f89a 6000 	ldrb.w	r6, [sl]
 80035ce:	2b00      	cmp	r3, #0
 80035d0:	f43f ad38 	beq.w	8003044 <_vfprintf_r+0xfc>
 80035d4:	781b      	ldrb	r3, [r3, #0]
 80035d6:	2b00      	cmp	r3, #0
 80035d8:	f43f ad34 	beq.w	8003044 <_vfprintf_r+0xfc>
 80035dc:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 80035e0:	e530      	b.n	8003044 <_vfprintf_r+0xfc>
 80035e2:	9b08      	ldr	r3, [sp, #32]
 80035e4:	f89a 6000 	ldrb.w	r6, [sl]
 80035e8:	681a      	ldr	r2, [r3, #0]
 80035ea:	9206      	str	r2, [sp, #24]
 80035ec:	2a00      	cmp	r2, #0
 80035ee:	f103 0304 	add.w	r3, r3, #4
 80035f2:	f2c0 8697 	blt.w	8004324 <_vfprintf_r+0x13dc>
 80035f6:	9308      	str	r3, [sp, #32]
 80035f8:	e524      	b.n	8003044 <_vfprintf_r+0xfc>
 80035fa:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80035fe:	f89a 6000 	ldrb.w	r6, [sl]
 8003602:	e51f      	b.n	8003044 <_vfprintf_r+0xfc>
 8003604:	f89a 6000 	ldrb.w	r6, [sl]
 8003608:	f048 0804 	orr.w	r8, r8, #4
 800360c:	e51a      	b.n	8003044 <_vfprintf_r+0xfc>
 800360e:	f89a 6000 	ldrb.w	r6, [sl]
 8003612:	2e2a      	cmp	r6, #42	; 0x2a
 8003614:	f10a 0201 	add.w	r2, sl, #1
 8003618:	f001 81b0 	beq.w	800497c <_vfprintf_r+0x1a34>
 800361c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003620:	2b09      	cmp	r3, #9
 8003622:	4692      	mov	sl, r2
 8003624:	f04f 0900 	mov.w	r9, #0
 8003628:	f63f ad0e 	bhi.w	8003048 <_vfprintf_r+0x100>
 800362c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003630:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8003634:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8003638:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800363c:	2b09      	cmp	r3, #9
 800363e:	d9f5      	bls.n	800362c <_vfprintf_r+0x6e4>
 8003640:	e502      	b.n	8003048 <_vfprintf_r+0x100>
 8003642:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8003646:	f89a 6000 	ldrb.w	r6, [sl]
 800364a:	e4fb      	b.n	8003044 <_vfprintf_r+0xfc>
 800364c:	9c08      	ldr	r4, [sp, #32]
 800364e:	3407      	adds	r4, #7
 8003650:	f024 0407 	bic.w	r4, r4, #7
 8003654:	ed94 7b00 	vldr	d7, [r4]
 8003658:	ec52 1b17 	vmov	r1, r2, d7
 800365c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8003660:	931d      	str	r3, [sp, #116]	; 0x74
 8003662:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8003666:	3408      	adds	r4, #8
 8003668:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800366c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003670:	4bba      	ldr	r3, [pc, #744]	; (800395c <_vfprintf_r+0xa14>)
 8003672:	9408      	str	r4, [sp, #32]
 8003674:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003678:	f7fd fd06 	bl	8001088 <__aeabi_dcmpun>
 800367c:	2800      	cmp	r0, #0
 800367e:	f040 846f 	bne.w	8003f60 <_vfprintf_r+0x1018>
 8003682:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003686:	4bb5      	ldr	r3, [pc, #724]	; (800395c <_vfprintf_r+0xa14>)
 8003688:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800368c:	f7fd fcde 	bl	800104c <__aeabi_dcmple>
 8003690:	2800      	cmp	r0, #0
 8003692:	f040 8465 	bne.w	8003f60 <_vfprintf_r+0x1018>
 8003696:	2200      	movs	r2, #0
 8003698:	2300      	movs	r3, #0
 800369a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800369e:	f7fd fccb 	bl	8001038 <__aeabi_dcmplt>
 80036a2:	2800      	cmp	r0, #0
 80036a4:	f040 855b 	bne.w	800415e <_vfprintf_r+0x1216>
 80036a8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80036ac:	4fac      	ldr	r7, [pc, #688]	; (8003960 <_vfprintf_r+0xa18>)
 80036ae:	4bad      	ldr	r3, [pc, #692]	; (8003964 <_vfprintf_r+0xa1c>)
 80036b0:	2000      	movs	r0, #0
 80036b2:	2103      	movs	r1, #3
 80036b4:	9104      	str	r1, [sp, #16]
 80036b6:	900a      	str	r0, [sp, #40]	; 0x28
 80036b8:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 80036bc:	2e47      	cmp	r6, #71	; 0x47
 80036be:	bfd8      	it	le
 80036c0:	461f      	movle	r7, r3
 80036c2:	9109      	str	r1, [sp, #36]	; 0x24
 80036c4:	4681      	mov	r9, r0
 80036c6:	900f      	str	r0, [sp, #60]	; 0x3c
 80036c8:	9014      	str	r0, [sp, #80]	; 0x50
 80036ca:	9011      	str	r0, [sp, #68]	; 0x44
 80036cc:	e5c9      	b.n	8003262 <_vfprintf_r+0x31a>
 80036ce:	9808      	ldr	r0, [sp, #32]
 80036d0:	2300      	movs	r3, #0
 80036d2:	6801      	ldr	r1, [r0, #0]
 80036d4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80036d8:	461a      	mov	r2, r3
 80036da:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 80036de:	2301      	movs	r3, #1
 80036e0:	1d01      	adds	r1, r0, #4
 80036e2:	9304      	str	r3, [sp, #16]
 80036e4:	920a      	str	r2, [sp, #40]	; 0x28
 80036e6:	4691      	mov	r9, r2
 80036e8:	920f      	str	r2, [sp, #60]	; 0x3c
 80036ea:	9214      	str	r2, [sp, #80]	; 0x50
 80036ec:	9211      	str	r2, [sp, #68]	; 0x44
 80036ee:	e9cd 1308 	strd	r1, r3, [sp, #32]
 80036f2:	af3d      	add	r7, sp, #244	; 0xf4
 80036f4:	e5b9      	b.n	800326a <_vfprintf_r+0x322>
 80036f6:	9b08      	ldr	r3, [sp, #32]
 80036f8:	681f      	ldr	r7, [r3, #0]
 80036fa:	2500      	movs	r5, #0
 80036fc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003700:	1d1c      	adds	r4, r3, #4
 8003702:	2f00      	cmp	r7, #0
 8003704:	f000 8639 	beq.w	800437a <_vfprintf_r+0x1432>
 8003708:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800370c:	f000 8711 	beq.w	8004532 <_vfprintf_r+0x15ea>
 8003710:	464a      	mov	r2, r9
 8003712:	4629      	mov	r1, r5
 8003714:	4638      	mov	r0, r7
 8003716:	f7fc fef3 	bl	8000500 <memchr>
 800371a:	900a      	str	r0, [sp, #40]	; 0x28
 800371c:	2800      	cmp	r0, #0
 800371e:	f000 85e7 	beq.w	80042f0 <_vfprintf_r+0x13a8>
 8003722:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003724:	1bdb      	subs	r3, r3, r7
 8003726:	9309      	str	r3, [sp, #36]	; 0x24
 8003728:	46a9      	mov	r9, r5
 800372a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800372e:	9408      	str	r4, [sp, #32]
 8003730:	9304      	str	r3, [sp, #16]
 8003732:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003736:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 800373a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 800373e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8003742:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003746:	e58c      	b.n	8003262 <_vfprintf_r+0x31a>
 8003748:	f048 0310 	orr.w	r3, r8, #16
 800374c:	069a      	lsls	r2, r3, #26
 800374e:	f53f aeb2 	bmi.w	80034b6 <_vfprintf_r+0x56e>
 8003752:	9a08      	ldr	r2, [sp, #32]
 8003754:	06df      	lsls	r7, r3, #27
 8003756:	f102 0104 	add.w	r1, r2, #4
 800375a:	f100 837e 	bmi.w	8003e5a <_vfprintf_r+0xf12>
 800375e:	065d      	lsls	r5, r3, #25
 8003760:	9a08      	ldr	r2, [sp, #32]
 8003762:	f100 84e4 	bmi.w	800412e <_vfprintf_r+0x11e6>
 8003766:	059c      	lsls	r4, r3, #22
 8003768:	f140 8377 	bpl.w	8003e5a <_vfprintf_r+0xf12>
 800376c:	7814      	ldrb	r4, [r2, #0]
 800376e:	9108      	str	r1, [sp, #32]
 8003770:	2500      	movs	r5, #0
 8003772:	2201      	movs	r2, #1
 8003774:	e6a9      	b.n	80034ca <_vfprintf_r+0x582>
 8003776:	4b7c      	ldr	r3, [pc, #496]	; (8003968 <_vfprintf_r+0xa20>)
 8003778:	9317      	str	r3, [sp, #92]	; 0x5c
 800377a:	f018 0f20 	tst.w	r8, #32
 800377e:	f47f aeec 	bne.w	800355a <_vfprintf_r+0x612>
 8003782:	9a08      	ldr	r2, [sp, #32]
 8003784:	f018 0f10 	tst.w	r8, #16
 8003788:	f102 0304 	add.w	r3, r2, #4
 800378c:	f040 8354 	bne.w	8003e38 <_vfprintf_r+0xef0>
 8003790:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003794:	9a08      	ldr	r2, [sp, #32]
 8003796:	f040 84d0 	bne.w	800413a <_vfprintf_r+0x11f2>
 800379a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800379e:	f000 834b 	beq.w	8003e38 <_vfprintf_r+0xef0>
 80037a2:	7814      	ldrb	r4, [r2, #0]
 80037a4:	9308      	str	r3, [sp, #32]
 80037a6:	2500      	movs	r5, #0
 80037a8:	e6e0      	b.n	800356c <_vfprintf_r+0x624>
 80037aa:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 80037ae:	f89a 6000 	ldrb.w	r6, [sl]
 80037b2:	2b00      	cmp	r3, #0
 80037b4:	f47f ac46 	bne.w	8003044 <_vfprintf_r+0xfc>
 80037b8:	2320      	movs	r3, #32
 80037ba:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80037be:	e441      	b.n	8003044 <_vfprintf_r+0xfc>
 80037c0:	f89a 6000 	ldrb.w	r6, [sl]
 80037c4:	2e6c      	cmp	r6, #108	; 0x6c
 80037c6:	bf03      	ittte	eq
 80037c8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80037cc:	f048 0820 	orreq.w	r8, r8, #32
 80037d0:	f10a 0a01 	addeq.w	sl, sl, #1
 80037d4:	f048 0810 	orrne.w	r8, r8, #16
 80037d8:	e434      	b.n	8003044 <_vfprintf_r+0xfc>
 80037da:	9a08      	ldr	r2, [sp, #32]
 80037dc:	f018 0f20 	tst.w	r8, #32
 80037e0:	f852 3b04 	ldr.w	r3, [r2], #4
 80037e4:	9208      	str	r2, [sp, #32]
 80037e6:	f000 83a1 	beq.w	8003f2c <_vfprintf_r+0xfe4>
 80037ea:	9a05      	ldr	r2, [sp, #20]
 80037ec:	4610      	mov	r0, r2
 80037ee:	17d1      	asrs	r1, r2, #31
 80037f0:	e9c3 0100 	strd	r0, r1, [r3]
 80037f4:	4657      	mov	r7, sl
 80037f6:	e64d      	b.n	8003494 <_vfprintf_r+0x54c>
 80037f8:	f89a 6000 	ldrb.w	r6, [sl]
 80037fc:	2e68      	cmp	r6, #104	; 0x68
 80037fe:	bf03      	ittte	eq
 8003800:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8003804:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003808:	f10a 0a01 	addeq.w	sl, sl, #1
 800380c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8003810:	e418      	b.n	8003044 <_vfprintf_r+0xfc>
 8003812:	9908      	ldr	r1, [sp, #32]
 8003814:	4b55      	ldr	r3, [pc, #340]	; (800396c <_vfprintf_r+0xa24>)
 8003816:	680c      	ldr	r4, [r1, #0]
 8003818:	9317      	str	r3, [sp, #92]	; 0x5c
 800381a:	f647 0230 	movw	r2, #30768	; 0x7830
 800381e:	3104      	adds	r1, #4
 8003820:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8003824:	f048 0302 	orr.w	r3, r8, #2
 8003828:	9108      	str	r1, [sp, #32]
 800382a:	2500      	movs	r5, #0
 800382c:	2202      	movs	r2, #2
 800382e:	2678      	movs	r6, #120	; 0x78
 8003830:	e64b      	b.n	80034ca <_vfprintf_r+0x582>
 8003832:	f048 0808 	orr.w	r8, r8, #8
 8003836:	f89a 6000 	ldrb.w	r6, [sl]
 800383a:	e403      	b.n	8003044 <_vfprintf_r+0xfc>
 800383c:	f048 0310 	orr.w	r3, r8, #16
 8003840:	069f      	lsls	r7, r3, #26
 8003842:	f53f acd1 	bmi.w	80031e8 <_vfprintf_r+0x2a0>
 8003846:	9908      	ldr	r1, [sp, #32]
 8003848:	06dd      	lsls	r5, r3, #27
 800384a:	f101 0204 	add.w	r2, r1, #4
 800384e:	f100 82fd 	bmi.w	8003e4c <_vfprintf_r+0xf04>
 8003852:	065c      	lsls	r4, r3, #25
 8003854:	9908      	ldr	r1, [sp, #32]
 8003856:	f100 8475 	bmi.w	8004144 <_vfprintf_r+0x11fc>
 800385a:	0598      	lsls	r0, r3, #22
 800385c:	f140 82f6 	bpl.w	8003e4c <_vfprintf_r+0xf04>
 8003860:	f991 4000 	ldrsb.w	r4, [r1]
 8003864:	9208      	str	r2, [sp, #32]
 8003866:	17e5      	asrs	r5, r4, #31
 8003868:	4620      	mov	r0, r4
 800386a:	4629      	mov	r1, r5
 800386c:	e4c7      	b.n	80031fe <_vfprintf_r+0x2b6>
 800386e:	9a08      	ldr	r2, [sp, #32]
 8003870:	f018 0f10 	tst.w	r8, #16
 8003874:	f102 0304 	add.w	r3, r2, #4
 8003878:	f040 82e3 	bne.w	8003e42 <_vfprintf_r+0xefa>
 800387c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003880:	9a08      	ldr	r2, [sp, #32]
 8003882:	f040 8467 	bne.w	8004154 <_vfprintf_r+0x120c>
 8003886:	f418 7f00 	tst.w	r8, #512	; 0x200
 800388a:	f000 82da 	beq.w	8003e42 <_vfprintf_r+0xefa>
 800388e:	7814      	ldrb	r4, [r2, #0]
 8003890:	9308      	str	r3, [sp, #32]
 8003892:	2500      	movs	r5, #0
 8003894:	e488      	b.n	80031a8 <_vfprintf_r+0x260>
 8003896:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800389a:	f002 fd55 	bl	8006348 <__retarget_lock_release_recursive>
 800389e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80038a2:	9305      	str	r3, [sp, #20]
 80038a4:	e443      	b.n	800312e <_vfprintf_r+0x1e6>
 80038a6:	2e00      	cmp	r6, #0
 80038a8:	f43f adf8 	beq.w	800349c <_vfprintf_r+0x554>
 80038ac:	2300      	movs	r3, #0
 80038ae:	2101      	movs	r1, #1
 80038b0:	461a      	mov	r2, r3
 80038b2:	9104      	str	r1, [sp, #16]
 80038b4:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 80038b8:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80038bc:	930a      	str	r3, [sp, #40]	; 0x28
 80038be:	4699      	mov	r9, r3
 80038c0:	930f      	str	r3, [sp, #60]	; 0x3c
 80038c2:	9314      	str	r3, [sp, #80]	; 0x50
 80038c4:	9311      	str	r3, [sp, #68]	; 0x44
 80038c6:	9109      	str	r1, [sp, #36]	; 0x24
 80038c8:	af3d      	add	r7, sp, #244	; 0xf4
 80038ca:	e4ce      	b.n	800326a <_vfprintf_r+0x322>
 80038cc:	2e65      	cmp	r6, #101	; 0x65
 80038ce:	f340 80ca 	ble.w	8003a66 <_vfprintf_r+0xb1e>
 80038d2:	2200      	movs	r2, #0
 80038d4:	2300      	movs	r3, #0
 80038d6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80038da:	f7fd fba3 	bl	8001024 <__aeabi_dcmpeq>
 80038de:	2800      	cmp	r0, #0
 80038e0:	f000 8169 	beq.w	8003bb6 <_vfprintf_r+0xc6e>
 80038e4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80038e6:	4a22      	ldr	r2, [pc, #136]	; (8003970 <_vfprintf_r+0xa28>)
 80038e8:	f8cb 2000 	str.w	r2, [fp]
 80038ec:	3301      	adds	r3, #1
 80038ee:	3401      	adds	r4, #1
 80038f0:	2201      	movs	r2, #1
 80038f2:	2b07      	cmp	r3, #7
 80038f4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80038f8:	f8cb 2004 	str.w	r2, [fp, #4]
 80038fc:	f300 8406 	bgt.w	800410c <_vfprintf_r+0x11c4>
 8003900:	f10b 0b08 	add.w	fp, fp, #8
 8003904:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003906:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003908:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800390a:	4293      	cmp	r3, r2
 800390c:	db03      	blt.n	8003916 <_vfprintf_r+0x9ce>
 800390e:	f018 0f01 	tst.w	r8, #1
 8003912:	f43f ad6a 	beq.w	80033ea <_vfprintf_r+0x4a2>
 8003916:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003918:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800391a:	f8cb 2000 	str.w	r2, [fp]
 800391e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003920:	f8cb 2004 	str.w	r2, [fp, #4]
 8003924:	3301      	adds	r3, #1
 8003926:	4414      	add	r4, r2
 8003928:	2b07      	cmp	r3, #7
 800392a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800392e:	f300 8517 	bgt.w	8004360 <_vfprintf_r+0x1418>
 8003932:	f10b 0b08 	add.w	fp, fp, #8
 8003936:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003938:	1e5d      	subs	r5, r3, #1
 800393a:	2d00      	cmp	r5, #0
 800393c:	f77f ad55 	ble.w	80033ea <_vfprintf_r+0x4a2>
 8003940:	2d10      	cmp	r5, #16
 8003942:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003944:	4b0b      	ldr	r3, [pc, #44]	; (8003974 <_vfprintf_r+0xa2c>)
 8003946:	f340 82e7 	ble.w	8003f18 <_vfprintf_r+0xfd0>
 800394a:	4619      	mov	r1, r3
 800394c:	2610      	movs	r6, #16
 800394e:	4623      	mov	r3, r4
 8003950:	9f03      	ldr	r7, [sp, #12]
 8003952:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003956:	460c      	mov	r4, r1
 8003958:	e014      	b.n	8003984 <_vfprintf_r+0xa3c>
 800395a:	bf00      	nop
 800395c:	7fefffff 	.word	0x7fefffff
 8003960:	08007c48 	.word	0x08007c48
 8003964:	08007c44 	.word	0x08007c44
 8003968:	08007c68 	.word	0x08007c68
 800396c:	08007c54 	.word	0x08007c54
 8003970:	08007c84 	.word	0x08007c84
 8003974:	08007c98 	.word	0x08007c98
 8003978:	f10b 0b08 	add.w	fp, fp, #8
 800397c:	3d10      	subs	r5, #16
 800397e:	2d10      	cmp	r5, #16
 8003980:	f340 82c7 	ble.w	8003f12 <_vfprintf_r+0xfca>
 8003984:	3201      	adds	r2, #1
 8003986:	3310      	adds	r3, #16
 8003988:	2a07      	cmp	r2, #7
 800398a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800398e:	e9cb 4600 	strd	r4, r6, [fp]
 8003992:	ddf1      	ble.n	8003978 <_vfprintf_r+0xa30>
 8003994:	aa2a      	add	r2, sp, #168	; 0xa8
 8003996:	4649      	mov	r1, r9
 8003998:	4638      	mov	r0, r7
 800399a:	f003 fe13 	bl	80075c4 <__sprint_r>
 800399e:	2800      	cmp	r0, #0
 80039a0:	d14c      	bne.n	8003a3c <_vfprintf_r+0xaf4>
 80039a2:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80039a6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039aa:	e7e7      	b.n	800397c <_vfprintf_r+0xa34>
 80039ac:	9b06      	ldr	r3, [sp, #24]
 80039ae:	9a04      	ldr	r2, [sp, #16]
 80039b0:	1a9d      	subs	r5, r3, r2
 80039b2:	2d00      	cmp	r5, #0
 80039b4:	f77f acc9 	ble.w	800334a <_vfprintf_r+0x402>
 80039b8:	2d10      	cmp	r5, #16
 80039ba:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80039bc:	4bbc      	ldr	r3, [pc, #752]	; (8003cb0 <_vfprintf_r+0xd68>)
 80039be:	dd27      	ble.n	8003a10 <_vfprintf_r+0xac8>
 80039c0:	4659      	mov	r1, fp
 80039c2:	4620      	mov	r0, r4
 80039c4:	46bb      	mov	fp, r7
 80039c6:	461c      	mov	r4, r3
 80039c8:	4637      	mov	r7, r6
 80039ca:	9e07      	ldr	r6, [sp, #28]
 80039cc:	e004      	b.n	80039d8 <_vfprintf_r+0xa90>
 80039ce:	3d10      	subs	r5, #16
 80039d0:	2d10      	cmp	r5, #16
 80039d2:	f101 0108 	add.w	r1, r1, #8
 80039d6:	dd16      	ble.n	8003a06 <_vfprintf_r+0xabe>
 80039d8:	3201      	adds	r2, #1
 80039da:	3010      	adds	r0, #16
 80039dc:	2310      	movs	r3, #16
 80039de:	2a07      	cmp	r2, #7
 80039e0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80039e4:	600c      	str	r4, [r1, #0]
 80039e6:	604b      	str	r3, [r1, #4]
 80039e8:	ddf1      	ble.n	80039ce <_vfprintf_r+0xa86>
 80039ea:	aa2a      	add	r2, sp, #168	; 0xa8
 80039ec:	4631      	mov	r1, r6
 80039ee:	9803      	ldr	r0, [sp, #12]
 80039f0:	f003 fde8 	bl	80075c4 <__sprint_r>
 80039f4:	2800      	cmp	r0, #0
 80039f6:	f040 80a8 	bne.w	8003b4a <_vfprintf_r+0xc02>
 80039fa:	3d10      	subs	r5, #16
 80039fc:	2d10      	cmp	r5, #16
 80039fe:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003a02:	a92d      	add	r1, sp, #180	; 0xb4
 8003a04:	dce8      	bgt.n	80039d8 <_vfprintf_r+0xa90>
 8003a06:	463e      	mov	r6, r7
 8003a08:	4623      	mov	r3, r4
 8003a0a:	465f      	mov	r7, fp
 8003a0c:	4604      	mov	r4, r0
 8003a0e:	468b      	mov	fp, r1
 8003a10:	3201      	adds	r2, #1
 8003a12:	442c      	add	r4, r5
 8003a14:	2a07      	cmp	r2, #7
 8003a16:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003a1a:	e9cb 3500 	strd	r3, r5, [fp]
 8003a1e:	f300 8292 	bgt.w	8003f46 <_vfprintf_r+0xffe>
 8003a22:	f10b 0b08 	add.w	fp, fp, #8
 8003a26:	e490      	b.n	800334a <_vfprintf_r+0x402>
 8003a28:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a2a:	9907      	ldr	r1, [sp, #28]
 8003a2c:	9803      	ldr	r0, [sp, #12]
 8003a2e:	f003 fdc9 	bl	80075c4 <__sprint_r>
 8003a32:	2800      	cmp	r0, #0
 8003a34:	f43f ad23 	beq.w	800347e <_vfprintf_r+0x536>
 8003a38:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003a3c:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003a3e:	b111      	cbz	r1, 8003a46 <_vfprintf_r+0xafe>
 8003a40:	9803      	ldr	r0, [sp, #12]
 8003a42:	f002 f9d1 	bl	8005de8 <_free_r>
 8003a46:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8003a4a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003a4e:	07d0      	lsls	r0, r2, #31
 8003a50:	d402      	bmi.n	8003a58 <_vfprintf_r+0xb10>
 8003a52:	0599      	lsls	r1, r3, #22
 8003a54:	f140 81d0 	bpl.w	8003df8 <_vfprintf_r+0xeb0>
 8003a58:	065a      	lsls	r2, r3, #25
 8003a5a:	f53f ab65 	bmi.w	8003128 <_vfprintf_r+0x1e0>
 8003a5e:	9805      	ldr	r0, [sp, #20]
 8003a60:	b057      	add	sp, #348	; 0x15c
 8003a62:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003a66:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003a68:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003a6a:	2a01      	cmp	r2, #1
 8003a6c:	f104 0401 	add.w	r4, r4, #1
 8003a70:	f103 0501 	add.w	r5, r3, #1
 8003a74:	f10b 0608 	add.w	r6, fp, #8
 8003a78:	f340 811c 	ble.w	8003cb4 <_vfprintf_r+0xd6c>
 8003a7c:	2301      	movs	r3, #1
 8003a7e:	2d07      	cmp	r5, #7
 8003a80:	f8cb 7000 	str.w	r7, [fp]
 8003a84:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003a88:	f8cb 3004 	str.w	r3, [fp, #4]
 8003a8c:	f300 81bb 	bgt.w	8003e06 <_vfprintf_r+0xebe>
 8003a90:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003a92:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003a94:	1c69      	adds	r1, r5, #1
 8003a96:	441c      	add	r4, r3
 8003a98:	2907      	cmp	r1, #7
 8003a9a:	910b      	str	r1, [sp, #44]	; 0x2c
 8003a9c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003aa0:	e9c6 2300 	strd	r2, r3, [r6]
 8003aa4:	f300 81bb 	bgt.w	8003e1e <_vfprintf_r+0xed6>
 8003aa8:	3608      	adds	r6, #8
 8003aaa:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003aac:	1c53      	adds	r3, r2, #1
 8003aae:	461d      	mov	r5, r3
 8003ab0:	9509      	str	r5, [sp, #36]	; 0x24
 8003ab2:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8003ab4:	930e      	str	r3, [sp, #56]	; 0x38
 8003ab6:	2200      	movs	r2, #0
 8003ab8:	2300      	movs	r3, #0
 8003aba:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003abe:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8003ac2:	f106 0b08 	add.w	fp, r6, #8
 8003ac6:	f7fd faad 	bl	8001024 <__aeabi_dcmpeq>
 8003aca:	2800      	cmp	r0, #0
 8003acc:	f040 80c2 	bne.w	8003c54 <_vfprintf_r+0xd0c>
 8003ad0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8003ad2:	f8c6 9004 	str.w	r9, [r6, #4]
 8003ad6:	3701      	adds	r7, #1
 8003ad8:	444c      	add	r4, r9
 8003ada:	2d07      	cmp	r5, #7
 8003adc:	6037      	str	r7, [r6, #0]
 8003ade:	942c      	str	r4, [sp, #176]	; 0xb0
 8003ae0:	952b      	str	r5, [sp, #172]	; 0xac
 8003ae2:	f300 80f9 	bgt.w	8003cd8 <_vfprintf_r+0xd90>
 8003ae6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003ae8:	f106 0310 	add.w	r3, r6, #16
 8003aec:	3202      	adds	r2, #2
 8003aee:	465e      	mov	r6, fp
 8003af0:	9209      	str	r2, [sp, #36]	; 0x24
 8003af2:	469b      	mov	fp, r3
 8003af4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003af6:	6072      	str	r2, [r6, #4]
 8003af8:	4414      	add	r4, r2
 8003afa:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003afc:	942c      	str	r4, [sp, #176]	; 0xb0
 8003afe:	ab26      	add	r3, sp, #152	; 0x98
 8003b00:	2a07      	cmp	r2, #7
 8003b02:	922b      	str	r2, [sp, #172]	; 0xac
 8003b04:	6033      	str	r3, [r6, #0]
 8003b06:	f77f ac70 	ble.w	80033ea <_vfprintf_r+0x4a2>
 8003b0a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b0c:	9907      	ldr	r1, [sp, #28]
 8003b0e:	9803      	ldr	r0, [sp, #12]
 8003b10:	f003 fd58 	bl	80075c4 <__sprint_r>
 8003b14:	2800      	cmp	r0, #0
 8003b16:	d18f      	bne.n	8003a38 <_vfprintf_r+0xaf0>
 8003b18:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b1a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b1e:	e464      	b.n	80033ea <_vfprintf_r+0x4a2>
 8003b20:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003b22:	af56      	add	r7, sp, #344	; 0x158
 8003b24:	0923      	lsrs	r3, r4, #4
 8003b26:	f004 010f 	and.w	r1, r4, #15
 8003b2a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8003b2e:	092a      	lsrs	r2, r5, #4
 8003b30:	461c      	mov	r4, r3
 8003b32:	4615      	mov	r5, r2
 8003b34:	5c43      	ldrb	r3, [r0, r1]
 8003b36:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003b3a:	ea54 0305 	orrs.w	r3, r4, r5
 8003b3e:	d1f1      	bne.n	8003b24 <_vfprintf_r+0xbdc>
 8003b40:	9b04      	ldr	r3, [sp, #16]
 8003b42:	1bdb      	subs	r3, r3, r7
 8003b44:	9309      	str	r3, [sp, #36]	; 0x24
 8003b46:	f7ff bb80 	b.w	800324a <_vfprintf_r+0x302>
 8003b4a:	46b1      	mov	r9, r6
 8003b4c:	e776      	b.n	8003a3c <_vfprintf_r+0xaf4>
 8003b4e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b50:	9907      	ldr	r1, [sp, #28]
 8003b52:	9803      	ldr	r0, [sp, #12]
 8003b54:	f003 fd36 	bl	80075c4 <__sprint_r>
 8003b58:	2800      	cmp	r0, #0
 8003b5a:	f47f af6d 	bne.w	8003a38 <_vfprintf_r+0xaf0>
 8003b5e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b60:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b64:	f7ff bbdd 	b.w	8003322 <_vfprintf_r+0x3da>
 8003b68:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b6a:	9907      	ldr	r1, [sp, #28]
 8003b6c:	9803      	ldr	r0, [sp, #12]
 8003b6e:	f003 fd29 	bl	80075c4 <__sprint_r>
 8003b72:	2800      	cmp	r0, #0
 8003b74:	f47f af60 	bne.w	8003a38 <_vfprintf_r+0xaf0>
 8003b78:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b7a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b7e:	f7ff bbe0 	b.w	8003342 <_vfprintf_r+0x3fa>
 8003b82:	4698      	mov	r8, r3
 8003b84:	2d00      	cmp	r5, #0
 8003b86:	bf08      	it	eq
 8003b88:	2c0a      	cmpeq	r4, #10
 8003b8a:	f080 8170 	bcs.w	8003e6e <_vfprintf_r+0xf26>
 8003b8e:	af56      	add	r7, sp, #344	; 0x158
 8003b90:	3430      	adds	r4, #48	; 0x30
 8003b92:	2301      	movs	r3, #1
 8003b94:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003b98:	9309      	str	r3, [sp, #36]	; 0x24
 8003b9a:	f7ff bb56 	b.w	800324a <_vfprintf_r+0x302>
 8003b9e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ba0:	9907      	ldr	r1, [sp, #28]
 8003ba2:	9803      	ldr	r0, [sp, #12]
 8003ba4:	f003 fd0e 	bl	80075c4 <__sprint_r>
 8003ba8:	2800      	cmp	r0, #0
 8003baa:	f47f af45 	bne.w	8003a38 <_vfprintf_r+0xaf0>
 8003bae:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003bb0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003bb4:	e406      	b.n	80033c4 <_vfprintf_r+0x47c>
 8003bb6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003bb8:	2b00      	cmp	r3, #0
 8003bba:	f340 8273 	ble.w	80040a4 <_vfprintf_r+0x115c>
 8003bbe:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003bc2:	4293      	cmp	r3, r2
 8003bc4:	bfa8      	it	ge
 8003bc6:	4613      	movge	r3, r2
 8003bc8:	2b00      	cmp	r3, #0
 8003bca:	461d      	mov	r5, r3
 8003bcc:	dd0d      	ble.n	8003bea <_vfprintf_r+0xca2>
 8003bce:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003bd0:	f8cb 7000 	str.w	r7, [fp]
 8003bd4:	3301      	adds	r3, #1
 8003bd6:	442c      	add	r4, r5
 8003bd8:	2b07      	cmp	r3, #7
 8003bda:	942c      	str	r4, [sp, #176]	; 0xb0
 8003bdc:	f8cb 5004 	str.w	r5, [fp, #4]
 8003be0:	932b      	str	r3, [sp, #172]	; 0xac
 8003be2:	f300 82c1 	bgt.w	8004168 <_vfprintf_r+0x1220>
 8003be6:	f10b 0b08 	add.w	fp, fp, #8
 8003bea:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003bec:	2d00      	cmp	r5, #0
 8003bee:	bfa8      	it	ge
 8003bf0:	1b5b      	subge	r3, r3, r5
 8003bf2:	2b00      	cmp	r3, #0
 8003bf4:	461d      	mov	r5, r3
 8003bf6:	f340 8099 	ble.w	8003d2c <_vfprintf_r+0xde4>
 8003bfa:	2d10      	cmp	r5, #16
 8003bfc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003bfe:	4b2c      	ldr	r3, [pc, #176]	; (8003cb0 <_vfprintf_r+0xd68>)
 8003c00:	f340 83db 	ble.w	80043ba <_vfprintf_r+0x1472>
 8003c04:	4618      	mov	r0, r3
 8003c06:	4621      	mov	r1, r4
 8003c08:	465b      	mov	r3, fp
 8003c0a:	2610      	movs	r6, #16
 8003c0c:	46bb      	mov	fp, r7
 8003c0e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003c12:	9c07      	ldr	r4, [sp, #28]
 8003c14:	4607      	mov	r7, r0
 8003c16:	e004      	b.n	8003c22 <_vfprintf_r+0xcda>
 8003c18:	3308      	adds	r3, #8
 8003c1a:	3d10      	subs	r5, #16
 8003c1c:	2d10      	cmp	r5, #16
 8003c1e:	f340 83c7 	ble.w	80043b0 <_vfprintf_r+0x1468>
 8003c22:	3201      	adds	r2, #1
 8003c24:	3110      	adds	r1, #16
 8003c26:	2a07      	cmp	r2, #7
 8003c28:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003c2c:	e9c3 7600 	strd	r7, r6, [r3]
 8003c30:	ddf2      	ble.n	8003c18 <_vfprintf_r+0xcd0>
 8003c32:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c34:	4621      	mov	r1, r4
 8003c36:	4648      	mov	r0, r9
 8003c38:	f003 fcc4 	bl	80075c4 <__sprint_r>
 8003c3c:	2800      	cmp	r0, #0
 8003c3e:	f040 84a5 	bne.w	800458c <_vfprintf_r+0x1644>
 8003c42:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003c46:	ab2d      	add	r3, sp, #180	; 0xb4
 8003c48:	e7e7      	b.n	8003c1a <_vfprintf_r+0xcd2>
 8003c4a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003c4e:	af56      	add	r7, sp, #344	; 0x158
 8003c50:	f7ff bafb 	b.w	800324a <_vfprintf_r+0x302>
 8003c54:	f1b9 0f00 	cmp.w	r9, #0
 8003c58:	f77f af4c 	ble.w	8003af4 <_vfprintf_r+0xbac>
 8003c5c:	f1b9 0f10 	cmp.w	r9, #16
 8003c60:	4b13      	ldr	r3, [pc, #76]	; (8003cb0 <_vfprintf_r+0xd68>)
 8003c62:	f340 8659 	ble.w	8004918 <_vfprintf_r+0x19d0>
 8003c66:	4619      	mov	r1, r3
 8003c68:	4622      	mov	r2, r4
 8003c6a:	4633      	mov	r3, r6
 8003c6c:	2710      	movs	r7, #16
 8003c6e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003c72:	9c07      	ldr	r4, [sp, #28]
 8003c74:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003c76:	460e      	mov	r6, r1
 8003c78:	e007      	b.n	8003c8a <_vfprintf_r+0xd42>
 8003c7a:	3308      	adds	r3, #8
 8003c7c:	f1a9 0910 	sub.w	r9, r9, #16
 8003c80:	f1b9 0f10 	cmp.w	r9, #16
 8003c84:	f340 8353 	ble.w	800432e <_vfprintf_r+0x13e6>
 8003c88:	3501      	adds	r5, #1
 8003c8a:	3210      	adds	r2, #16
 8003c8c:	2d07      	cmp	r5, #7
 8003c8e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003c92:	e9c3 6700 	strd	r6, r7, [r3]
 8003c96:	ddf0      	ble.n	8003c7a <_vfprintf_r+0xd32>
 8003c98:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c9a:	4621      	mov	r1, r4
 8003c9c:	4658      	mov	r0, fp
 8003c9e:	f003 fc91 	bl	80075c4 <__sprint_r>
 8003ca2:	2800      	cmp	r0, #0
 8003ca4:	f040 8472 	bne.w	800458c <_vfprintf_r+0x1644>
 8003ca8:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8003cac:	ab2d      	add	r3, sp, #180	; 0xb4
 8003cae:	e7e5      	b.n	8003c7c <_vfprintf_r+0xd34>
 8003cb0:	08007c98 	.word	0x08007c98
 8003cb4:	f018 0f01 	tst.w	r8, #1
 8003cb8:	f47f aee0 	bne.w	8003a7c <_vfprintf_r+0xb34>
 8003cbc:	2201      	movs	r2, #1
 8003cbe:	2d07      	cmp	r5, #7
 8003cc0:	f8cb 7000 	str.w	r7, [fp]
 8003cc4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003cc8:	f8cb 2004 	str.w	r2, [fp, #4]
 8003ccc:	dc04      	bgt.n	8003cd8 <_vfprintf_r+0xd90>
 8003cce:	3302      	adds	r3, #2
 8003cd0:	9309      	str	r3, [sp, #36]	; 0x24
 8003cd2:	f10b 0b10 	add.w	fp, fp, #16
 8003cd6:	e70d      	b.n	8003af4 <_vfprintf_r+0xbac>
 8003cd8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cda:	9907      	ldr	r1, [sp, #28]
 8003cdc:	9803      	ldr	r0, [sp, #12]
 8003cde:	f003 fc71 	bl	80075c4 <__sprint_r>
 8003ce2:	2800      	cmp	r0, #0
 8003ce4:	f47f aea8 	bne.w	8003a38 <_vfprintf_r+0xaf0>
 8003ce8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003cec:	3301      	adds	r3, #1
 8003cee:	9309      	str	r3, [sp, #36]	; 0x24
 8003cf0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003cf4:	ae2d      	add	r6, sp, #180	; 0xb4
 8003cf6:	e6fd      	b.n	8003af4 <_vfprintf_r+0xbac>
 8003cf8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cfa:	9907      	ldr	r1, [sp, #28]
 8003cfc:	9803      	ldr	r0, [sp, #12]
 8003cfe:	f003 fc61 	bl	80075c4 <__sprint_r>
 8003d02:	2800      	cmp	r0, #0
 8003d04:	f47f ae98 	bne.w	8003a38 <_vfprintf_r+0xaf0>
 8003d08:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003d0c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003d0e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d12:	f7ff baf6 	b.w	8003302 <_vfprintf_r+0x3ba>
 8003d16:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d18:	9907      	ldr	r1, [sp, #28]
 8003d1a:	9803      	ldr	r0, [sp, #12]
 8003d1c:	f003 fc52 	bl	80075c4 <__sprint_r>
 8003d20:	2800      	cmp	r0, #0
 8003d22:	f47f ae89 	bne.w	8003a38 <_vfprintf_r+0xaf0>
 8003d26:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003d28:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d2c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d2e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003d32:	443b      	add	r3, r7
 8003d34:	4699      	mov	r9, r3
 8003d36:	f040 8357 	bne.w	80043e8 <_vfprintf_r+0x14a0>
 8003d3a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003d3c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003d3e:	4293      	cmp	r3, r2
 8003d40:	db49      	blt.n	8003dd6 <_vfprintf_r+0xe8e>
 8003d42:	f018 0f01 	tst.w	r8, #1
 8003d46:	d146      	bne.n	8003dd6 <_vfprintf_r+0xe8e>
 8003d48:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003d4a:	18bd      	adds	r5, r7, r2
 8003d4c:	eba5 0509 	sub.w	r5, r5, r9
 8003d50:	1ad3      	subs	r3, r2, r3
 8003d52:	429d      	cmp	r5, r3
 8003d54:	bfa8      	it	ge
 8003d56:	461d      	movge	r5, r3
 8003d58:	2d00      	cmp	r5, #0
 8003d5a:	dd0d      	ble.n	8003d78 <_vfprintf_r+0xe30>
 8003d5c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003d5e:	f8cb 9000 	str.w	r9, [fp]
 8003d62:	3201      	adds	r2, #1
 8003d64:	442c      	add	r4, r5
 8003d66:	2a07      	cmp	r2, #7
 8003d68:	942c      	str	r4, [sp, #176]	; 0xb0
 8003d6a:	f8cb 5004 	str.w	r5, [fp, #4]
 8003d6e:	922b      	str	r2, [sp, #172]	; 0xac
 8003d70:	f300 8462 	bgt.w	8004638 <_vfprintf_r+0x16f0>
 8003d74:	f10b 0b08 	add.w	fp, fp, #8
 8003d78:	2d00      	cmp	r5, #0
 8003d7a:	bfac      	ite	ge
 8003d7c:	1b5d      	subge	r5, r3, r5
 8003d7e:	461d      	movlt	r5, r3
 8003d80:	2d00      	cmp	r5, #0
 8003d82:	f77f ab32 	ble.w	80033ea <_vfprintf_r+0x4a2>
 8003d86:	2d10      	cmp	r5, #16
 8003d88:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003d8a:	4bc5      	ldr	r3, [pc, #788]	; (80040a0 <_vfprintf_r+0x1158>)
 8003d8c:	f340 80c4 	ble.w	8003f18 <_vfprintf_r+0xfd0>
 8003d90:	4619      	mov	r1, r3
 8003d92:	2610      	movs	r6, #16
 8003d94:	4623      	mov	r3, r4
 8003d96:	9f03      	ldr	r7, [sp, #12]
 8003d98:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003d9c:	460c      	mov	r4, r1
 8003d9e:	e005      	b.n	8003dac <_vfprintf_r+0xe64>
 8003da0:	f10b 0b08 	add.w	fp, fp, #8
 8003da4:	3d10      	subs	r5, #16
 8003da6:	2d10      	cmp	r5, #16
 8003da8:	f340 80b3 	ble.w	8003f12 <_vfprintf_r+0xfca>
 8003dac:	3201      	adds	r2, #1
 8003dae:	3310      	adds	r3, #16
 8003db0:	2a07      	cmp	r2, #7
 8003db2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003db6:	e9cb 4600 	strd	r4, r6, [fp]
 8003dba:	ddf1      	ble.n	8003da0 <_vfprintf_r+0xe58>
 8003dbc:	aa2a      	add	r2, sp, #168	; 0xa8
 8003dbe:	4649      	mov	r1, r9
 8003dc0:	4638      	mov	r0, r7
 8003dc2:	f003 fbff 	bl	80075c4 <__sprint_r>
 8003dc6:	2800      	cmp	r0, #0
 8003dc8:	f47f ae38 	bne.w	8003a3c <_vfprintf_r+0xaf4>
 8003dcc:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003dd0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003dd4:	e7e6      	b.n	8003da4 <_vfprintf_r+0xe5c>
 8003dd6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003dd8:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003dda:	f8cb 1000 	str.w	r1, [fp]
 8003dde:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003de0:	f8cb 1004 	str.w	r1, [fp, #4]
 8003de4:	3201      	adds	r2, #1
 8003de6:	440c      	add	r4, r1
 8003de8:	2a07      	cmp	r2, #7
 8003dea:	942c      	str	r4, [sp, #176]	; 0xb0
 8003dec:	922b      	str	r2, [sp, #172]	; 0xac
 8003dee:	f300 828c 	bgt.w	800430a <_vfprintf_r+0x13c2>
 8003df2:	f10b 0b08 	add.w	fp, fp, #8
 8003df6:	e7a7      	b.n	8003d48 <_vfprintf_r+0xe00>
 8003df8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003dfc:	f002 faa4 	bl	8006348 <__retarget_lock_release_recursive>
 8003e00:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003e04:	e628      	b.n	8003a58 <_vfprintf_r+0xb10>
 8003e06:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e08:	9907      	ldr	r1, [sp, #28]
 8003e0a:	9803      	ldr	r0, [sp, #12]
 8003e0c:	f003 fbda 	bl	80075c4 <__sprint_r>
 8003e10:	2800      	cmp	r0, #0
 8003e12:	f47f ae11 	bne.w	8003a38 <_vfprintf_r+0xaf0>
 8003e16:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003e1a:	ae2d      	add	r6, sp, #180	; 0xb4
 8003e1c:	e638      	b.n	8003a90 <_vfprintf_r+0xb48>
 8003e1e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e20:	9907      	ldr	r1, [sp, #28]
 8003e22:	9803      	ldr	r0, [sp, #12]
 8003e24:	f003 fbce 	bl	80075c4 <__sprint_r>
 8003e28:	2800      	cmp	r0, #0
 8003e2a:	f47f ae05 	bne.w	8003a38 <_vfprintf_r+0xaf0>
 8003e2e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003e32:	ae2d      	add	r6, sp, #180	; 0xb4
 8003e34:	930b      	str	r3, [sp, #44]	; 0x2c
 8003e36:	e638      	b.n	8003aaa <_vfprintf_r+0xb62>
 8003e38:	6814      	ldr	r4, [r2, #0]
 8003e3a:	9308      	str	r3, [sp, #32]
 8003e3c:	2500      	movs	r5, #0
 8003e3e:	f7ff bb95 	b.w	800356c <_vfprintf_r+0x624>
 8003e42:	6814      	ldr	r4, [r2, #0]
 8003e44:	9308      	str	r3, [sp, #32]
 8003e46:	2500      	movs	r5, #0
 8003e48:	f7ff b9ae 	b.w	80031a8 <_vfprintf_r+0x260>
 8003e4c:	680c      	ldr	r4, [r1, #0]
 8003e4e:	9208      	str	r2, [sp, #32]
 8003e50:	17e5      	asrs	r5, r4, #31
 8003e52:	4620      	mov	r0, r4
 8003e54:	4629      	mov	r1, r5
 8003e56:	f7ff b9d2 	b.w	80031fe <_vfprintf_r+0x2b6>
 8003e5a:	6814      	ldr	r4, [r2, #0]
 8003e5c:	9108      	str	r1, [sp, #32]
 8003e5e:	2201      	movs	r2, #1
 8003e60:	2500      	movs	r5, #0
 8003e62:	f7ff bb32 	b.w	80034ca <_vfprintf_r+0x582>
 8003e66:	2a01      	cmp	r2, #1
 8003e68:	f47f ab3c 	bne.w	80034e4 <_vfprintf_r+0x59c>
 8003e6c:	e68f      	b.n	8003b8e <_vfprintf_r+0xc46>
 8003e6e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003e72:	2200      	movs	r2, #0
 8003e74:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003e78:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003e7c:	af56      	add	r7, sp, #344	; 0x158
 8003e7e:	4692      	mov	sl, r2
 8003e80:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003e84:	461e      	mov	r6, r3
 8003e86:	e00a      	b.n	8003e9e <_vfprintf_r+0xf56>
 8003e88:	2300      	movs	r3, #0
 8003e8a:	4620      	mov	r0, r4
 8003e8c:	4629      	mov	r1, r5
 8003e8e:	220a      	movs	r2, #10
 8003e90:	f7fc f9b6 	bl	8000200 <__aeabi_uldivmod>
 8003e94:	4604      	mov	r4, r0
 8003e96:	460d      	mov	r5, r1
 8003e98:	ea54 0305 	orrs.w	r3, r4, r5
 8003e9c:	d029      	beq.n	8003ef2 <_vfprintf_r+0xfaa>
 8003e9e:	220a      	movs	r2, #10
 8003ea0:	2300      	movs	r3, #0
 8003ea2:	4620      	mov	r0, r4
 8003ea4:	4629      	mov	r1, r5
 8003ea6:	f7fc f9ab 	bl	8000200 <__aeabi_uldivmod>
 8003eaa:	3230      	adds	r2, #48	; 0x30
 8003eac:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003eb0:	f10a 0a01 	add.w	sl, sl, #1
 8003eb4:	3f01      	subs	r7, #1
 8003eb6:	2e00      	cmp	r6, #0
 8003eb8:	d0e6      	beq.n	8003e88 <_vfprintf_r+0xf40>
 8003eba:	f898 3000 	ldrb.w	r3, [r8]
 8003ebe:	459a      	cmp	sl, r3
 8003ec0:	d1e2      	bne.n	8003e88 <_vfprintf_r+0xf40>
 8003ec2:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003ec6:	d0df      	beq.n	8003e88 <_vfprintf_r+0xf40>
 8003ec8:	2d00      	cmp	r5, #0
 8003eca:	bf08      	it	eq
 8003ecc:	2c0a      	cmpeq	r4, #10
 8003ece:	d3db      	bcc.n	8003e88 <_vfprintf_r+0xf40>
 8003ed0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003ed2:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003ed4:	1aff      	subs	r7, r7, r3
 8003ed6:	461a      	mov	r2, r3
 8003ed8:	4638      	mov	r0, r7
 8003eda:	f003 fb05 	bl	80074e8 <strncpy>
 8003ede:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003ee2:	2b00      	cmp	r3, #0
 8003ee4:	f000 8496 	beq.w	8004814 <_vfprintf_r+0x18cc>
 8003ee8:	f108 0801 	add.w	r8, r8, #1
 8003eec:	f04f 0a00 	mov.w	sl, #0
 8003ef0:	e7ca      	b.n	8003e88 <_vfprintf_r+0xf40>
 8003ef2:	9b04      	ldr	r3, [sp, #16]
 8003ef4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003ef8:	1bdb      	subs	r3, r3, r7
 8003efa:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003efe:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003f00:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003f04:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003f08:	9309      	str	r3, [sp, #36]	; 0x24
 8003f0a:	f7ff b99e 	b.w	800324a <_vfprintf_r+0x302>
 8003f0e:	46c1      	mov	r9, r8
 8003f10:	e594      	b.n	8003a3c <_vfprintf_r+0xaf4>
 8003f12:	4621      	mov	r1, r4
 8003f14:	461c      	mov	r4, r3
 8003f16:	460b      	mov	r3, r1
 8003f18:	3201      	adds	r2, #1
 8003f1a:	442c      	add	r4, r5
 8003f1c:	2a07      	cmp	r2, #7
 8003f1e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003f22:	e9cb 3500 	strd	r3, r5, [fp]
 8003f26:	f77f aa5e 	ble.w	80033e6 <_vfprintf_r+0x49e>
 8003f2a:	e5ee      	b.n	8003b0a <_vfprintf_r+0xbc2>
 8003f2c:	f018 0f10 	tst.w	r8, #16
 8003f30:	f040 80f8 	bne.w	8004124 <_vfprintf_r+0x11dc>
 8003f34:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003f38:	f000 8351 	beq.w	80045de <_vfprintf_r+0x1696>
 8003f3c:	9a05      	ldr	r2, [sp, #20]
 8003f3e:	801a      	strh	r2, [r3, #0]
 8003f40:	4657      	mov	r7, sl
 8003f42:	f7ff baa7 	b.w	8003494 <_vfprintf_r+0x54c>
 8003f46:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f48:	9907      	ldr	r1, [sp, #28]
 8003f4a:	9803      	ldr	r0, [sp, #12]
 8003f4c:	f003 fb3a 	bl	80075c4 <__sprint_r>
 8003f50:	2800      	cmp	r0, #0
 8003f52:	f47f ad71 	bne.w	8003a38 <_vfprintf_r+0xaf0>
 8003f56:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003f58:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f5c:	f7ff b9f5 	b.w	800334a <_vfprintf_r+0x402>
 8003f60:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003f64:	4602      	mov	r2, r0
 8003f66:	460b      	mov	r3, r1
 8003f68:	f7fd f88e 	bl	8001088 <__aeabi_dcmpun>
 8003f6c:	2800      	cmp	r0, #0
 8003f6e:	f040 8491 	bne.w	8004894 <_vfprintf_r+0x194c>
 8003f72:	2e61      	cmp	r6, #97	; 0x61
 8003f74:	f000 8111 	beq.w	800419a <_vfprintf_r+0x1252>
 8003f78:	2e41      	cmp	r6, #65	; 0x41
 8003f7a:	f000 8377 	beq.w	800466c <_vfprintf_r+0x1724>
 8003f7e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003f82:	f026 0220 	bic.w	r2, r6, #32
 8003f86:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003f8a:	930e      	str	r3, [sp, #56]	; 0x38
 8003f8c:	9204      	str	r2, [sp, #16]
 8003f8e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003f90:	f000 842d 	beq.w	80047ee <_vfprintf_r+0x18a6>
 8003f94:	2a47      	cmp	r2, #71	; 0x47
 8003f96:	f000 8424 	beq.w	80047e2 <_vfprintf_r+0x189a>
 8003f9a:	2b00      	cmp	r3, #0
 8003f9c:	f2c0 82f9 	blt.w	8004592 <_vfprintf_r+0x164a>
 8003fa0:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003fa4:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003fa8:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003fac:	2e66      	cmp	r6, #102	; 0x66
 8003fae:	f000 83eb 	beq.w	8004788 <_vfprintf_r+0x1840>
 8003fb2:	2e46      	cmp	r6, #70	; 0x46
 8003fb4:	f000 847e 	beq.w	80048b4 <_vfprintf_r+0x196c>
 8003fb8:	9b04      	ldr	r3, [sp, #16]
 8003fba:	9803      	ldr	r0, [sp, #12]
 8003fbc:	2b45      	cmp	r3, #69	; 0x45
 8003fbe:	bf0c      	ite	eq
 8003fc0:	f109 0501 	addeq.w	r5, r9, #1
 8003fc4:	464d      	movne	r5, r9
 8003fc6:	aa28      	add	r2, sp, #160	; 0xa0
 8003fc8:	ab25      	add	r3, sp, #148	; 0x94
 8003fca:	e9cd 3200 	strd	r3, r2, [sp]
 8003fce:	2102      	movs	r1, #2
 8003fd0:	ab24      	add	r3, sp, #144	; 0x90
 8003fd2:	462a      	mov	r2, r5
 8003fd4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003fd8:	f000 fe4e 	bl	8004c78 <_dtoa_r>
 8003fdc:	2e67      	cmp	r6, #103	; 0x67
 8003fde:	4607      	mov	r7, r0
 8003fe0:	f040 849c 	bne.w	800491c <_vfprintf_r+0x19d4>
 8003fe4:	f018 0f01 	tst.w	r8, #1
 8003fe8:	f040 83f9 	bne.w	80047de <_vfprintf_r+0x1896>
 8003fec:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003fee:	4640      	mov	r0, r8
 8003ff0:	1bdb      	subs	r3, r3, r7
 8003ff2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003ff6:	9310      	str	r3, [sp, #64]	; 0x40
 8003ff8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003ffa:	9311      	str	r3, [sp, #68]	; 0x44
 8003ffc:	9b04      	ldr	r3, [sp, #16]
 8003ffe:	2b47      	cmp	r3, #71	; 0x47
 8004000:	f000 81e7 	beq.w	80043d2 <_vfprintf_r+0x148a>
 8004004:	9b04      	ldr	r3, [sp, #16]
 8004006:	2b46      	cmp	r3, #70	; 0x46
 8004008:	f000 8300 	beq.w	800460c <_vfprintf_r+0x16c4>
 800400c:	9904      	ldr	r1, [sp, #16]
 800400e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004010:	b2f2      	uxtb	r2, r6
 8004012:	2941      	cmp	r1, #65	; 0x41
 8004014:	bf08      	it	eq
 8004016:	320f      	addeq	r2, #15
 8004018:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 800401c:	bf06      	itte	eq
 800401e:	b2d2      	uxtbeq	r2, r2
 8004020:	2101      	moveq	r1, #1
 8004022:	2100      	movne	r1, #0
 8004024:	2b00      	cmp	r3, #0
 8004026:	9324      	str	r3, [sp, #144]	; 0x90
 8004028:	bfb8      	it	lt
 800402a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 800402c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8004030:	bfba      	itte	lt
 8004032:	f1c3 0301 	rsblt	r3, r3, #1
 8004036:	222d      	movlt	r2, #45	; 0x2d
 8004038:	222b      	movge	r2, #43	; 0x2b
 800403a:	2b09      	cmp	r3, #9
 800403c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8004040:	f300 83f9 	bgt.w	8004836 <_vfprintf_r+0x18ee>
 8004044:	2900      	cmp	r1, #0
 8004046:	f040 8487 	bne.w	8004958 <_vfprintf_r+0x1a10>
 800404a:	2230      	movs	r2, #48	; 0x30
 800404c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8004050:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8004054:	3330      	adds	r3, #48	; 0x30
 8004056:	7013      	strb	r3, [r2, #0]
 8004058:	1c53      	adds	r3, r2, #1
 800405a:	aa26      	add	r2, sp, #152	; 0x98
 800405c:	1a9b      	subs	r3, r3, r2
 800405e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004060:	9319      	str	r3, [sp, #100]	; 0x64
 8004062:	2a01      	cmp	r2, #1
 8004064:	4413      	add	r3, r2
 8004066:	9309      	str	r3, [sp, #36]	; 0x24
 8004068:	f340 8442 	ble.w	80048f0 <_vfprintf_r+0x19a8>
 800406c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800406e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004070:	4413      	add	r3, r2
 8004072:	9309      	str	r3, [sp, #36]	; 0x24
 8004074:	2300      	movs	r3, #0
 8004076:	930f      	str	r3, [sp, #60]	; 0x3c
 8004078:	9314      	str	r3, [sp, #80]	; 0x50
 800407a:	9311      	str	r3, [sp, #68]	; 0x44
 800407c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800407e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8004082:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004086:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 800408a:	9304      	str	r3, [sp, #16]
 800408c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800408e:	2b00      	cmp	r3, #0
 8004090:	f040 8275 	bne.w	800457e <_vfprintf_r+0x1636>
 8004094:	4699      	mov	r9, r3
 8004096:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800409a:	f7ff b8e2 	b.w	8003262 <_vfprintf_r+0x31a>
 800409e:	bf00      	nop
 80040a0:	08007c98 	.word	0x08007c98
 80040a4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80040a6:	49bd      	ldr	r1, [pc, #756]	; (800439c <_vfprintf_r+0x1454>)
 80040a8:	f8cb 1000 	str.w	r1, [fp]
 80040ac:	3201      	adds	r2, #1
 80040ae:	3401      	adds	r4, #1
 80040b0:	2101      	movs	r1, #1
 80040b2:	2a07      	cmp	r2, #7
 80040b4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80040b8:	f8cb 1004 	str.w	r1, [fp, #4]
 80040bc:	dc60      	bgt.n	8004180 <_vfprintf_r+0x1238>
 80040be:	f10b 0b08 	add.w	fp, fp, #8
 80040c2:	b92b      	cbnz	r3, 80040d0 <_vfprintf_r+0x1188>
 80040c4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80040c6:	b91a      	cbnz	r2, 80040d0 <_vfprintf_r+0x1188>
 80040c8:	f018 0f01 	tst.w	r8, #1
 80040cc:	f43f a98d 	beq.w	80033ea <_vfprintf_r+0x4a2>
 80040d0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80040d2:	9916      	ldr	r1, [sp, #88]	; 0x58
 80040d4:	f8cb 1000 	str.w	r1, [fp]
 80040d8:	9915      	ldr	r1, [sp, #84]	; 0x54
 80040da:	f8cb 1004 	str.w	r1, [fp, #4]
 80040de:	3201      	adds	r2, #1
 80040e0:	440c      	add	r4, r1
 80040e2:	2a07      	cmp	r2, #7
 80040e4:	942c      	str	r4, [sp, #176]	; 0xb0
 80040e6:	922b      	str	r2, [sp, #172]	; 0xac
 80040e8:	f300 8282 	bgt.w	80045f0 <_vfprintf_r+0x16a8>
 80040ec:	f10b 0b08 	add.w	fp, fp, #8
 80040f0:	2b00      	cmp	r3, #0
 80040f2:	f2c0 82e7 	blt.w	80046c4 <_vfprintf_r+0x177c>
 80040f6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80040f8:	3201      	adds	r2, #1
 80040fa:	441c      	add	r4, r3
 80040fc:	2a07      	cmp	r2, #7
 80040fe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004102:	e9cb 7300 	strd	r7, r3, [fp]
 8004106:	f77f a96e 	ble.w	80033e6 <_vfprintf_r+0x49e>
 800410a:	e4fe      	b.n	8003b0a <_vfprintf_r+0xbc2>
 800410c:	aa2a      	add	r2, sp, #168	; 0xa8
 800410e:	9907      	ldr	r1, [sp, #28]
 8004110:	9803      	ldr	r0, [sp, #12]
 8004112:	f003 fa57 	bl	80075c4 <__sprint_r>
 8004116:	2800      	cmp	r0, #0
 8004118:	f47f ac8e 	bne.w	8003a38 <_vfprintf_r+0xaf0>
 800411c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004120:	f7ff bbf0 	b.w	8003904 <_vfprintf_r+0x9bc>
 8004124:	9a05      	ldr	r2, [sp, #20]
 8004126:	601a      	str	r2, [r3, #0]
 8004128:	4657      	mov	r7, sl
 800412a:	f7ff b9b3 	b.w	8003494 <_vfprintf_r+0x54c>
 800412e:	8814      	ldrh	r4, [r2, #0]
 8004130:	9108      	str	r1, [sp, #32]
 8004132:	2500      	movs	r5, #0
 8004134:	2201      	movs	r2, #1
 8004136:	f7ff b9c8 	b.w	80034ca <_vfprintf_r+0x582>
 800413a:	8814      	ldrh	r4, [r2, #0]
 800413c:	9308      	str	r3, [sp, #32]
 800413e:	2500      	movs	r5, #0
 8004140:	f7ff ba14 	b.w	800356c <_vfprintf_r+0x624>
 8004144:	f9b1 4000 	ldrsh.w	r4, [r1]
 8004148:	9208      	str	r2, [sp, #32]
 800414a:	17e5      	asrs	r5, r4, #31
 800414c:	4620      	mov	r0, r4
 800414e:	4629      	mov	r1, r5
 8004150:	f7ff b855 	b.w	80031fe <_vfprintf_r+0x2b6>
 8004154:	8814      	ldrh	r4, [r2, #0]
 8004156:	9308      	str	r3, [sp, #32]
 8004158:	2500      	movs	r5, #0
 800415a:	f7ff b825 	b.w	80031a8 <_vfprintf_r+0x260>
 800415e:	222d      	movs	r2, #45	; 0x2d
 8004160:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8004164:	f7ff baa2 	b.w	80036ac <_vfprintf_r+0x764>
 8004168:	aa2a      	add	r2, sp, #168	; 0xa8
 800416a:	9907      	ldr	r1, [sp, #28]
 800416c:	9803      	ldr	r0, [sp, #12]
 800416e:	f003 fa29 	bl	80075c4 <__sprint_r>
 8004172:	2800      	cmp	r0, #0
 8004174:	f47f ac60 	bne.w	8003a38 <_vfprintf_r+0xaf0>
 8004178:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800417a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800417e:	e534      	b.n	8003bea <_vfprintf_r+0xca2>
 8004180:	aa2a      	add	r2, sp, #168	; 0xa8
 8004182:	9907      	ldr	r1, [sp, #28]
 8004184:	9803      	ldr	r0, [sp, #12]
 8004186:	f003 fa1d 	bl	80075c4 <__sprint_r>
 800418a:	2800      	cmp	r0, #0
 800418c:	f47f ac54 	bne.w	8003a38 <_vfprintf_r+0xaf0>
 8004190:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004192:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004194:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004198:	e793      	b.n	80040c2 <_vfprintf_r+0x117a>
 800419a:	2330      	movs	r3, #48	; 0x30
 800419c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80041a0:	2378      	movs	r3, #120	; 0x78
 80041a2:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 80041a6:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80041aa:	f048 0402 	orr.w	r4, r8, #2
 80041ae:	f300 82b0 	bgt.w	8004712 <_vfprintf_r+0x17ca>
 80041b2:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80041b6:	930e      	str	r3, [sp, #56]	; 0x38
 80041b8:	f026 0320 	bic.w	r3, r6, #32
 80041bc:	9304      	str	r3, [sp, #16]
 80041be:	2200      	movs	r2, #0
 80041c0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80041c2:	920a      	str	r2, [sp, #40]	; 0x28
 80041c4:	46a0      	mov	r8, r4
 80041c6:	af3d      	add	r7, sp, #244	; 0xf4
 80041c8:	2b00      	cmp	r3, #0
 80041ca:	f2c0 81e3 	blt.w	8004594 <_vfprintf_r+0x164c>
 80041ce:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80041d2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80041d6:	2300      	movs	r3, #0
 80041d8:	930b      	str	r3, [sp, #44]	; 0x2c
 80041da:	2e61      	cmp	r6, #97	; 0x61
 80041dc:	f000 8255 	beq.w	800468a <_vfprintf_r+0x1742>
 80041e0:	2e41      	cmp	r6, #65	; 0x41
 80041e2:	f47f aee3 	bne.w	8003fac <_vfprintf_r+0x1064>
 80041e6:	a824      	add	r0, sp, #144	; 0x90
 80041e8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80041ec:	f003 f8f2 	bl	80073d4 <frexp>
 80041f0:	2200      	movs	r2, #0
 80041f2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80041f6:	ec51 0b10 	vmov	r0, r1, d0
 80041fa:	f7fc fcab 	bl	8000b54 <__aeabi_dmul>
 80041fe:	2200      	movs	r2, #0
 8004200:	2300      	movs	r3, #0
 8004202:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8004206:	f7fc ff0d 	bl	8001024 <__aeabi_dcmpeq>
 800420a:	2800      	cmp	r0, #0
 800420c:	f040 8305 	bne.w	800481a <_vfprintf_r+0x18d2>
 8004210:	4b63      	ldr	r3, [pc, #396]	; (80043a0 <_vfprintf_r+0x1458>)
 8004212:	9309      	str	r3, [sp, #36]	; 0x24
 8004214:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8004218:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 800421c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8004220:	9721      	str	r7, [sp, #132]	; 0x84
 8004222:	46b9      	mov	r9, r7
 8004224:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8004228:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 800422c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8004230:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8004234:	e003      	b.n	800423e <_vfprintf_r+0x12f6>
 8004236:	f7fc fef5 	bl	8001024 <__aeabi_dcmpeq>
 800423a:	bb20      	cbnz	r0, 8004286 <_vfprintf_r+0x133e>
 800423c:	46a9      	mov	r9, r5
 800423e:	2200      	movs	r2, #0
 8004240:	4b58      	ldr	r3, [pc, #352]	; (80043a4 <_vfprintf_r+0x145c>)
 8004242:	4630      	mov	r0, r6
 8004244:	4639      	mov	r1, r7
 8004246:	f7fc fc85 	bl	8000b54 <__aeabi_dmul>
 800424a:	460f      	mov	r7, r1
 800424c:	4606      	mov	r6, r0
 800424e:	f7fc ff31 	bl	80010b4 <__aeabi_d2iz>
 8004252:	4680      	mov	r8, r0
 8004254:	f7fc fc14 	bl	8000a80 <__aeabi_i2d>
 8004258:	4602      	mov	r2, r0
 800425a:	460b      	mov	r3, r1
 800425c:	4630      	mov	r0, r6
 800425e:	4639      	mov	r1, r7
 8004260:	f7fc fac0 	bl	80007e4 <__aeabi_dsub>
 8004264:	464d      	mov	r5, r9
 8004266:	f81a c008 	ldrb.w	ip, [sl, r8]
 800426a:	f805 cb01 	strb.w	ip, [r5], #1
 800426e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8004272:	46a3      	mov	fp, r4
 8004274:	4606      	mov	r6, r0
 8004276:	460f      	mov	r7, r1
 8004278:	f04f 0200 	mov.w	r2, #0
 800427c:	f04f 0300 	mov.w	r3, #0
 8004280:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8004284:	d1d7      	bne.n	8004236 <_vfprintf_r+0x12ee>
 8004286:	4630      	mov	r0, r6
 8004288:	4639      	mov	r1, r7
 800428a:	2200      	movs	r2, #0
 800428c:	4b46      	ldr	r3, [pc, #280]	; (80043a8 <_vfprintf_r+0x1460>)
 800428e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8004292:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8004294:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8004298:	4644      	mov	r4, r8
 800429a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 800429e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 80042a2:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 80042a6:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 80042aa:	9f21      	ldr	r7, [sp, #132]	; 0x84
 80042ac:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80042b0:	f7fc fee0 	bl	8001074 <__aeabi_dcmpgt>
 80042b4:	2800      	cmp	r0, #0
 80042b6:	f040 8176 	bne.w	80045a6 <_vfprintf_r+0x165e>
 80042ba:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80042be:	2200      	movs	r2, #0
 80042c0:	4b39      	ldr	r3, [pc, #228]	; (80043a8 <_vfprintf_r+0x1460>)
 80042c2:	f7fc feaf 	bl	8001024 <__aeabi_dcmpeq>
 80042c6:	b110      	cbz	r0, 80042ce <_vfprintf_r+0x1386>
 80042c8:	07e2      	lsls	r2, r4, #31
 80042ca:	f100 816c 	bmi.w	80045a6 <_vfprintf_r+0x165e>
 80042ce:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80042d0:	2b00      	cmp	r3, #0
 80042d2:	db07      	blt.n	80042e4 <_vfprintf_r+0x139c>
 80042d4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80042d6:	3301      	adds	r3, #1
 80042d8:	442b      	add	r3, r5
 80042da:	2230      	movs	r2, #48	; 0x30
 80042dc:	f805 2b01 	strb.w	r2, [r5], #1
 80042e0:	42ab      	cmp	r3, r5
 80042e2:	d1fb      	bne.n	80042dc <_vfprintf_r+0x1394>
 80042e4:	1beb      	subs	r3, r5, r7
 80042e6:	4640      	mov	r0, r8
 80042e8:	9310      	str	r3, [sp, #64]	; 0x40
 80042ea:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80042ee:	e683      	b.n	8003ff8 <_vfprintf_r+0x10b0>
 80042f0:	f8cd 9010 	str.w	r9, [sp, #16]
 80042f4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80042f8:	9408      	str	r4, [sp, #32]
 80042fa:	4681      	mov	r9, r0
 80042fc:	900f      	str	r0, [sp, #60]	; 0x3c
 80042fe:	9014      	str	r0, [sp, #80]	; 0x50
 8004300:	9011      	str	r0, [sp, #68]	; 0x44
 8004302:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004306:	f7fe bfac 	b.w	8003262 <_vfprintf_r+0x31a>
 800430a:	aa2a      	add	r2, sp, #168	; 0xa8
 800430c:	9907      	ldr	r1, [sp, #28]
 800430e:	9803      	ldr	r0, [sp, #12]
 8004310:	f003 f958 	bl	80075c4 <__sprint_r>
 8004314:	2800      	cmp	r0, #0
 8004316:	f47f ab8f 	bne.w	8003a38 <_vfprintf_r+0xaf0>
 800431a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800431c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800431e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004322:	e511      	b.n	8003d48 <_vfprintf_r+0xe00>
 8004324:	4252      	negs	r2, r2
 8004326:	9206      	str	r2, [sp, #24]
 8004328:	9308      	str	r3, [sp, #32]
 800432a:	f7ff b96d 	b.w	8003608 <_vfprintf_r+0x6c0>
 800432e:	4614      	mov	r4, r2
 8004330:	4632      	mov	r2, r6
 8004332:	461e      	mov	r6, r3
 8004334:	4613      	mov	r3, r2
 8004336:	462a      	mov	r2, r5
 8004338:	3201      	adds	r2, #1
 800433a:	9209      	str	r2, [sp, #36]	; 0x24
 800433c:	f106 0208 	add.w	r2, r6, #8
 8004340:	e9c6 3900 	strd	r3, r9, [r6]
 8004344:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004346:	932b      	str	r3, [sp, #172]	; 0xac
 8004348:	444c      	add	r4, r9
 800434a:	2b07      	cmp	r3, #7
 800434c:	942c      	str	r4, [sp, #176]	; 0xb0
 800434e:	f73f acc3 	bgt.w	8003cd8 <_vfprintf_r+0xd90>
 8004352:	3301      	adds	r3, #1
 8004354:	9309      	str	r3, [sp, #36]	; 0x24
 8004356:	f102 0b08 	add.w	fp, r2, #8
 800435a:	4616      	mov	r6, r2
 800435c:	f7ff bbca 	b.w	8003af4 <_vfprintf_r+0xbac>
 8004360:	aa2a      	add	r2, sp, #168	; 0xa8
 8004362:	9907      	ldr	r1, [sp, #28]
 8004364:	9803      	ldr	r0, [sp, #12]
 8004366:	f003 f92d 	bl	80075c4 <__sprint_r>
 800436a:	2800      	cmp	r0, #0
 800436c:	f47f ab64 	bne.w	8003a38 <_vfprintf_r+0xaf0>
 8004370:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004372:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004376:	f7ff bade 	b.w	8003936 <_vfprintf_r+0x9ee>
 800437a:	464b      	mov	r3, r9
 800437c:	2b06      	cmp	r3, #6
 800437e:	bf28      	it	cs
 8004380:	2306      	movcs	r3, #6
 8004382:	46b9      	mov	r9, r7
 8004384:	970f      	str	r7, [sp, #60]	; 0x3c
 8004386:	9714      	str	r7, [sp, #80]	; 0x50
 8004388:	9711      	str	r7, [sp, #68]	; 0x44
 800438a:	970a      	str	r7, [sp, #40]	; 0x28
 800438c:	463a      	mov	r2, r7
 800438e:	9304      	str	r3, [sp, #16]
 8004390:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8004394:	4f05      	ldr	r7, [pc, #20]	; (80043ac <_vfprintf_r+0x1464>)
 8004396:	f7fe bf64 	b.w	8003262 <_vfprintf_r+0x31a>
 800439a:	bf00      	nop
 800439c:	08007c84 	.word	0x08007c84
 80043a0:	08007c68 	.word	0x08007c68
 80043a4:	40300000 	.word	0x40300000
 80043a8:	3fe00000 	.word	0x3fe00000
 80043ac:	08007c7c 	.word	0x08007c7c
 80043b0:	460c      	mov	r4, r1
 80043b2:	4639      	mov	r1, r7
 80043b4:	465f      	mov	r7, fp
 80043b6:	469b      	mov	fp, r3
 80043b8:	460b      	mov	r3, r1
 80043ba:	3201      	adds	r2, #1
 80043bc:	442c      	add	r4, r5
 80043be:	2a07      	cmp	r2, #7
 80043c0:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80043c4:	e9cb 3500 	strd	r3, r5, [fp]
 80043c8:	f73f aca5 	bgt.w	8003d16 <_vfprintf_r+0xdce>
 80043cc:	f10b 0b08 	add.w	fp, fp, #8
 80043d0:	e4ac      	b.n	8003d2c <_vfprintf_r+0xde4>
 80043d2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80043d4:	1cda      	adds	r2, r3, #3
 80043d6:	db02      	blt.n	80043de <_vfprintf_r+0x1496>
 80043d8:	4599      	cmp	r9, r3
 80043da:	f280 80b5 	bge.w	8004548 <_vfprintf_r+0x1600>
 80043de:	3e02      	subs	r6, #2
 80043e0:	f026 0320 	bic.w	r3, r6, #32
 80043e4:	9304      	str	r3, [sp, #16]
 80043e6:	e611      	b.n	800400c <_vfprintf_r+0x10c4>
 80043e8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80043ea:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80043ee:	465a      	mov	r2, fp
 80043f0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 80043f4:	18fb      	adds	r3, r7, r3
 80043f6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80043fa:	970c      	str	r7, [sp, #48]	; 0x30
 80043fc:	4eaf      	ldr	r6, [pc, #700]	; (80046bc <_vfprintf_r+0x1774>)
 80043fe:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8004402:	9309      	str	r3, [sp, #36]	; 0x24
 8004404:	464f      	mov	r7, r9
 8004406:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800440a:	4621      	mov	r1, r4
 800440c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800440e:	2b00      	cmp	r3, #0
 8004410:	d05b      	beq.n	80044ca <_vfprintf_r+0x1582>
 8004412:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004414:	2b00      	cmp	r3, #0
 8004416:	d154      	bne.n	80044c2 <_vfprintf_r+0x157a>
 8004418:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800441a:	3b01      	subs	r3, #1
 800441c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8004420:	9314      	str	r3, [sp, #80]	; 0x50
 8004422:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004424:	9818      	ldr	r0, [sp, #96]	; 0x60
 8004426:	6010      	str	r0, [r2, #0]
 8004428:	3301      	adds	r3, #1
 800442a:	4459      	add	r1, fp
 800442c:	2b07      	cmp	r3, #7
 800442e:	912c      	str	r1, [sp, #176]	; 0xb0
 8004430:	f8c2 b004 	str.w	fp, [r2, #4]
 8004434:	932b      	str	r3, [sp, #172]	; 0xac
 8004436:	dc68      	bgt.n	800450a <_vfprintf_r+0x15c2>
 8004438:	3208      	adds	r2, #8
 800443a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800443c:	f898 3000 	ldrb.w	r3, [r8]
 8004440:	1bc5      	subs	r5, r0, r7
 8004442:	429d      	cmp	r5, r3
 8004444:	bfa8      	it	ge
 8004446:	461d      	movge	r5, r3
 8004448:	2d00      	cmp	r5, #0
 800444a:	dd0b      	ble.n	8004464 <_vfprintf_r+0x151c>
 800444c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800444e:	6017      	str	r7, [r2, #0]
 8004450:	3301      	adds	r3, #1
 8004452:	4429      	add	r1, r5
 8004454:	2b07      	cmp	r3, #7
 8004456:	912c      	str	r1, [sp, #176]	; 0xb0
 8004458:	6055      	str	r5, [r2, #4]
 800445a:	932b      	str	r3, [sp, #172]	; 0xac
 800445c:	dc5e      	bgt.n	800451c <_vfprintf_r+0x15d4>
 800445e:	f898 3000 	ldrb.w	r3, [r8]
 8004462:	3208      	adds	r2, #8
 8004464:	2d00      	cmp	r5, #0
 8004466:	bfac      	ite	ge
 8004468:	1b5d      	subge	r5, r3, r5
 800446a:	461d      	movlt	r5, r3
 800446c:	2d00      	cmp	r5, #0
 800446e:	dd26      	ble.n	80044be <_vfprintf_r+0x1576>
 8004470:	2d10      	cmp	r5, #16
 8004472:	982b      	ldr	r0, [sp, #172]	; 0xac
 8004474:	dd3c      	ble.n	80044f0 <_vfprintf_r+0x15a8>
 8004476:	2410      	movs	r4, #16
 8004478:	e003      	b.n	8004482 <_vfprintf_r+0x153a>
 800447a:	3208      	adds	r2, #8
 800447c:	3d10      	subs	r5, #16
 800447e:	2d10      	cmp	r5, #16
 8004480:	dd36      	ble.n	80044f0 <_vfprintf_r+0x15a8>
 8004482:	3001      	adds	r0, #1
 8004484:	3110      	adds	r1, #16
 8004486:	2807      	cmp	r0, #7
 8004488:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800448c:	e9c2 6400 	strd	r6, r4, [r2]
 8004490:	ddf3      	ble.n	800447a <_vfprintf_r+0x1532>
 8004492:	aa2a      	add	r2, sp, #168	; 0xa8
 8004494:	4651      	mov	r1, sl
 8004496:	4648      	mov	r0, r9
 8004498:	f003 f894 	bl	80075c4 <__sprint_r>
 800449c:	2800      	cmp	r0, #0
 800449e:	d150      	bne.n	8004542 <_vfprintf_r+0x15fa>
 80044a0:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 80044a4:	aa2d      	add	r2, sp, #180	; 0xb4
 80044a6:	e7e9      	b.n	800447c <_vfprintf_r+0x1534>
 80044a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80044aa:	4651      	mov	r1, sl
 80044ac:	4648      	mov	r0, r9
 80044ae:	f003 f889 	bl	80075c4 <__sprint_r>
 80044b2:	2800      	cmp	r0, #0
 80044b4:	d145      	bne.n	8004542 <_vfprintf_r+0x15fa>
 80044b6:	f898 3000 	ldrb.w	r3, [r8]
 80044ba:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80044bc:	aa2d      	add	r2, sp, #180	; 0xb4
 80044be:	441f      	add	r7, r3
 80044c0:	e7a4      	b.n	800440c <_vfprintf_r+0x14c4>
 80044c2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80044c4:	3b01      	subs	r3, #1
 80044c6:	930f      	str	r3, [sp, #60]	; 0x3c
 80044c8:	e7ab      	b.n	8004422 <_vfprintf_r+0x14da>
 80044ca:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80044cc:	2b00      	cmp	r3, #0
 80044ce:	d1f8      	bne.n	80044c2 <_vfprintf_r+0x157a>
 80044d0:	46b9      	mov	r9, r7
 80044d2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80044d4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 80044d6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80044da:	18fb      	adds	r3, r7, r3
 80044dc:	4599      	cmp	r9, r3
 80044de:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 80044e2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80044e6:	4693      	mov	fp, r2
 80044e8:	460c      	mov	r4, r1
 80044ea:	bf28      	it	cs
 80044ec:	4699      	movcs	r9, r3
 80044ee:	e424      	b.n	8003d3a <_vfprintf_r+0xdf2>
 80044f0:	3001      	adds	r0, #1
 80044f2:	4429      	add	r1, r5
 80044f4:	2807      	cmp	r0, #7
 80044f6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80044fa:	e9c2 6500 	strd	r6, r5, [r2]
 80044fe:	dcd3      	bgt.n	80044a8 <_vfprintf_r+0x1560>
 8004500:	f898 3000 	ldrb.w	r3, [r8]
 8004504:	3208      	adds	r2, #8
 8004506:	441f      	add	r7, r3
 8004508:	e780      	b.n	800440c <_vfprintf_r+0x14c4>
 800450a:	aa2a      	add	r2, sp, #168	; 0xa8
 800450c:	4651      	mov	r1, sl
 800450e:	4648      	mov	r0, r9
 8004510:	f003 f858 	bl	80075c4 <__sprint_r>
 8004514:	b9a8      	cbnz	r0, 8004542 <_vfprintf_r+0x15fa>
 8004516:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004518:	aa2d      	add	r2, sp, #180	; 0xb4
 800451a:	e78e      	b.n	800443a <_vfprintf_r+0x14f2>
 800451c:	aa2a      	add	r2, sp, #168	; 0xa8
 800451e:	4651      	mov	r1, sl
 8004520:	4648      	mov	r0, r9
 8004522:	f003 f84f 	bl	80075c4 <__sprint_r>
 8004526:	b960      	cbnz	r0, 8004542 <_vfprintf_r+0x15fa>
 8004528:	f898 3000 	ldrb.w	r3, [r8]
 800452c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800452e:	aa2d      	add	r2, sp, #180	; 0xb4
 8004530:	e798      	b.n	8004464 <_vfprintf_r+0x151c>
 8004532:	4638      	mov	r0, r7
 8004534:	f7fc f8e4 	bl	8000700 <strlen>
 8004538:	46a9      	mov	r9, r5
 800453a:	4603      	mov	r3, r0
 800453c:	9009      	str	r0, [sp, #36]	; 0x24
 800453e:	f7ff b8f4 	b.w	800372a <_vfprintf_r+0x7e2>
 8004542:	46d1      	mov	r9, sl
 8004544:	f7ff ba7a 	b.w	8003a3c <_vfprintf_r+0xaf4>
 8004548:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800454a:	4619      	mov	r1, r3
 800454c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800454e:	4299      	cmp	r1, r3
 8004550:	f300 8082 	bgt.w	8004658 <_vfprintf_r+0x1710>
 8004554:	07c4      	lsls	r4, r0, #31
 8004556:	f140 816b 	bpl.w	8004830 <_vfprintf_r+0x18e8>
 800455a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800455c:	4413      	add	r3, r2
 800455e:	9309      	str	r3, [sp, #36]	; 0x24
 8004560:	0541      	lsls	r1, r0, #21
 8004562:	d503      	bpl.n	800456c <_vfprintf_r+0x1624>
 8004564:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004566:	2b00      	cmp	r3, #0
 8004568:	f300 80e6 	bgt.w	8004738 <_vfprintf_r+0x17f0>
 800456c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800456e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004572:	9304      	str	r3, [sp, #16]
 8004574:	2667      	movs	r6, #103	; 0x67
 8004576:	2300      	movs	r3, #0
 8004578:	930f      	str	r3, [sp, #60]	; 0x3c
 800457a:	9314      	str	r3, [sp, #80]	; 0x50
 800457c:	e586      	b.n	800408c <_vfprintf_r+0x1144>
 800457e:	222d      	movs	r2, #45	; 0x2d
 8004580:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8004584:	f04f 0900 	mov.w	r9, #0
 8004588:	f7fe be6c 	b.w	8003264 <_vfprintf_r+0x31c>
 800458c:	46a1      	mov	r9, r4
 800458e:	f7ff ba55 	b.w	8003a3c <_vfprintf_r+0xaf4>
 8004592:	900a      	str	r0, [sp, #40]	; 0x28
 8004594:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8004598:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 800459c:	931f      	str	r3, [sp, #124]	; 0x7c
 800459e:	232d      	movs	r3, #45	; 0x2d
 80045a0:	911e      	str	r1, [sp, #120]	; 0x78
 80045a2:	930b      	str	r3, [sp, #44]	; 0x2c
 80045a4:	e619      	b.n	80041da <_vfprintf_r+0x1292>
 80045a6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80045a8:	9328      	str	r3, [sp, #160]	; 0xa0
 80045aa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80045ac:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 80045b0:	7bd9      	ldrb	r1, [r3, #15]
 80045b2:	4291      	cmp	r1, r2
 80045b4:	462b      	mov	r3, r5
 80045b6:	d109      	bne.n	80045cc <_vfprintf_r+0x1684>
 80045b8:	2030      	movs	r0, #48	; 0x30
 80045ba:	f803 0c01 	strb.w	r0, [r3, #-1]
 80045be:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80045c0:	1e5a      	subs	r2, r3, #1
 80045c2:	9228      	str	r2, [sp, #160]	; 0xa0
 80045c4:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80045c8:	4291      	cmp	r1, r2
 80045ca:	d0f6      	beq.n	80045ba <_vfprintf_r+0x1672>
 80045cc:	2a39      	cmp	r2, #57	; 0x39
 80045ce:	bf0b      	itete	eq
 80045d0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 80045d2:	3201      	addne	r2, #1
 80045d4:	7a92      	ldrbeq	r2, [r2, #10]
 80045d6:	b2d2      	uxtbne	r2, r2
 80045d8:	f803 2c01 	strb.w	r2, [r3, #-1]
 80045dc:	e682      	b.n	80042e4 <_vfprintf_r+0x139c>
 80045de:	f418 7f00 	tst.w	r8, #512	; 0x200
 80045e2:	f43f ad9f 	beq.w	8004124 <_vfprintf_r+0x11dc>
 80045e6:	9a05      	ldr	r2, [sp, #20]
 80045e8:	701a      	strb	r2, [r3, #0]
 80045ea:	4657      	mov	r7, sl
 80045ec:	f7fe bf52 	b.w	8003494 <_vfprintf_r+0x54c>
 80045f0:	aa2a      	add	r2, sp, #168	; 0xa8
 80045f2:	9907      	ldr	r1, [sp, #28]
 80045f4:	9803      	ldr	r0, [sp, #12]
 80045f6:	f002 ffe5 	bl	80075c4 <__sprint_r>
 80045fa:	2800      	cmp	r0, #0
 80045fc:	f47f aa1c 	bne.w	8003a38 <_vfprintf_r+0xaf0>
 8004600:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004602:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004606:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800460a:	e571      	b.n	80040f0 <_vfprintf_r+0x11a8>
 800460c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800460e:	2b00      	cmp	r3, #0
 8004610:	f340 8164 	ble.w	80048dc <_vfprintf_r+0x1994>
 8004614:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004616:	f1b9 0f00 	cmp.w	r9, #0
 800461a:	f040 8103 	bne.w	8004824 <_vfprintf_r+0x18dc>
 800461e:	07c6      	lsls	r6, r0, #31
 8004620:	f100 8100 	bmi.w	8004824 <_vfprintf_r+0x18dc>
 8004624:	9309      	str	r3, [sp, #36]	; 0x24
 8004626:	2666      	movs	r6, #102	; 0x66
 8004628:	0543      	lsls	r3, r0, #21
 800462a:	f100 8086 	bmi.w	800473a <_vfprintf_r+0x17f2>
 800462e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004630:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004634:	9304      	str	r3, [sp, #16]
 8004636:	e79e      	b.n	8004576 <_vfprintf_r+0x162e>
 8004638:	aa2a      	add	r2, sp, #168	; 0xa8
 800463a:	9907      	ldr	r1, [sp, #28]
 800463c:	9803      	ldr	r0, [sp, #12]
 800463e:	f002 ffc1 	bl	80075c4 <__sprint_r>
 8004642:	2800      	cmp	r0, #0
 8004644:	f47f a9f8 	bne.w	8003a38 <_vfprintf_r+0xaf0>
 8004648:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800464a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800464c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800464e:	1ad3      	subs	r3, r2, r3
 8004650:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004654:	f7ff bb90 	b.w	8003d78 <_vfprintf_r+0xe30>
 8004658:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800465a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800465c:	4413      	add	r3, r2
 800465e:	9309      	str	r3, [sp, #36]	; 0x24
 8004660:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004662:	2b00      	cmp	r3, #0
 8004664:	f340 8149 	ble.w	80048fa <_vfprintf_r+0x19b2>
 8004668:	2667      	movs	r6, #103	; 0x67
 800466a:	e7dd      	b.n	8004628 <_vfprintf_r+0x16e0>
 800466c:	2330      	movs	r3, #48	; 0x30
 800466e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004672:	2358      	movs	r3, #88	; 0x58
 8004674:	e595      	b.n	80041a2 <_vfprintf_r+0x125a>
 8004676:	9803      	ldr	r0, [sp, #12]
 8004678:	aa2a      	add	r2, sp, #168	; 0xa8
 800467a:	4649      	mov	r1, r9
 800467c:	f002 ffa2 	bl	80075c4 <__sprint_r>
 8004680:	2800      	cmp	r0, #0
 8004682:	f47f a9e0 	bne.w	8003a46 <_vfprintf_r+0xafe>
 8004686:	f7fe bf0f 	b.w	80034a8 <_vfprintf_r+0x560>
 800468a:	a824      	add	r0, sp, #144	; 0x90
 800468c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004690:	f002 fea0 	bl	80073d4 <frexp>
 8004694:	2200      	movs	r2, #0
 8004696:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800469a:	ec51 0b10 	vmov	r0, r1, d0
 800469e:	f7fc fa59 	bl	8000b54 <__aeabi_dmul>
 80046a2:	2200      	movs	r2, #0
 80046a4:	2300      	movs	r3, #0
 80046a6:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80046aa:	f7fc fcbb 	bl	8001024 <__aeabi_dcmpeq>
 80046ae:	b108      	cbz	r0, 80046b4 <_vfprintf_r+0x176c>
 80046b0:	2301      	movs	r3, #1
 80046b2:	9324      	str	r3, [sp, #144]	; 0x90
 80046b4:	4b02      	ldr	r3, [pc, #8]	; (80046c0 <_vfprintf_r+0x1778>)
 80046b6:	9309      	str	r3, [sp, #36]	; 0x24
 80046b8:	e5ac      	b.n	8004214 <_vfprintf_r+0x12cc>
 80046ba:	bf00      	nop
 80046bc:	08007c98 	.word	0x08007c98
 80046c0:	08007c54 	.word	0x08007c54
 80046c4:	425d      	negs	r5, r3
 80046c6:	3310      	adds	r3, #16
 80046c8:	4bb9      	ldr	r3, [pc, #740]	; (80049b0 <_vfprintf_r+0x1a68>)
 80046ca:	f280 8097 	bge.w	80047fc <_vfprintf_r+0x18b4>
 80046ce:	4619      	mov	r1, r3
 80046d0:	2610      	movs	r6, #16
 80046d2:	4623      	mov	r3, r4
 80046d4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80046d8:	460c      	mov	r4, r1
 80046da:	e005      	b.n	80046e8 <_vfprintf_r+0x17a0>
 80046dc:	f10b 0b08 	add.w	fp, fp, #8
 80046e0:	3d10      	subs	r5, #16
 80046e2:	2d10      	cmp	r5, #16
 80046e4:	f340 8087 	ble.w	80047f6 <_vfprintf_r+0x18ae>
 80046e8:	3201      	adds	r2, #1
 80046ea:	3310      	adds	r3, #16
 80046ec:	2a07      	cmp	r2, #7
 80046ee:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80046f2:	e9cb 4600 	strd	r4, r6, [fp]
 80046f6:	ddf1      	ble.n	80046dc <_vfprintf_r+0x1794>
 80046f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80046fa:	9907      	ldr	r1, [sp, #28]
 80046fc:	4648      	mov	r0, r9
 80046fe:	f002 ff61 	bl	80075c4 <__sprint_r>
 8004702:	2800      	cmp	r0, #0
 8004704:	f47f a998 	bne.w	8003a38 <_vfprintf_r+0xaf0>
 8004708:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 800470c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004710:	e7e6      	b.n	80046e0 <_vfprintf_r+0x1798>
 8004712:	f109 0101 	add.w	r1, r9, #1
 8004716:	9803      	ldr	r0, [sp, #12]
 8004718:	f001 fe90 	bl	800643c <_malloc_r>
 800471c:	4607      	mov	r7, r0
 800471e:	2800      	cmp	r0, #0
 8004720:	f000 813b 	beq.w	800499a <_vfprintf_r+0x1a52>
 8004724:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004728:	930e      	str	r3, [sp, #56]	; 0x38
 800472a:	f026 0320 	bic.w	r3, r6, #32
 800472e:	9304      	str	r3, [sp, #16]
 8004730:	46a0      	mov	r8, r4
 8004732:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004734:	900a      	str	r0, [sp, #40]	; 0x28
 8004736:	e547      	b.n	80041c8 <_vfprintf_r+0x1280>
 8004738:	2667      	movs	r6, #103	; 0x67
 800473a:	981a      	ldr	r0, [sp, #104]	; 0x68
 800473c:	2200      	movs	r2, #0
 800473e:	920f      	str	r2, [sp, #60]	; 0x3c
 8004740:	9214      	str	r2, [sp, #80]	; 0x50
 8004742:	7803      	ldrb	r3, [r0, #0]
 8004744:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8004746:	2bff      	cmp	r3, #255	; 0xff
 8004748:	d00c      	beq.n	8004764 <_vfprintf_r+0x181c>
 800474a:	4293      	cmp	r3, r2
 800474c:	da0a      	bge.n	8004764 <_vfprintf_r+0x181c>
 800474e:	7841      	ldrb	r1, [r0, #1]
 8004750:	1ad2      	subs	r2, r2, r3
 8004752:	b1a9      	cbz	r1, 8004780 <_vfprintf_r+0x1838>
 8004754:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004756:	3301      	adds	r3, #1
 8004758:	9314      	str	r3, [sp, #80]	; 0x50
 800475a:	460b      	mov	r3, r1
 800475c:	2bff      	cmp	r3, #255	; 0xff
 800475e:	f100 0001 	add.w	r0, r0, #1
 8004762:	d1f2      	bne.n	800474a <_vfprintf_r+0x1802>
 8004764:	9211      	str	r2, [sp, #68]	; 0x44
 8004766:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004768:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800476a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800476c:	901a      	str	r0, [sp, #104]	; 0x68
 800476e:	4413      	add	r3, r2
 8004770:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8004772:	fb02 1303 	mla	r3, r2, r3, r1
 8004776:	9309      	str	r3, [sp, #36]	; 0x24
 8004778:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800477c:	9304      	str	r3, [sp, #16]
 800477e:	e485      	b.n	800408c <_vfprintf_r+0x1144>
 8004780:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004782:	3101      	adds	r1, #1
 8004784:	910f      	str	r1, [sp, #60]	; 0x3c
 8004786:	e7de      	b.n	8004746 <_vfprintf_r+0x17fe>
 8004788:	aa28      	add	r2, sp, #160	; 0xa0
 800478a:	ab25      	add	r3, sp, #148	; 0x94
 800478c:	e9cd 3200 	strd	r3, r2, [sp]
 8004790:	2103      	movs	r1, #3
 8004792:	ab24      	add	r3, sp, #144	; 0x90
 8004794:	464a      	mov	r2, r9
 8004796:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800479a:	9803      	ldr	r0, [sp, #12]
 800479c:	f000 fa6c 	bl	8004c78 <_dtoa_r>
 80047a0:	464d      	mov	r5, r9
 80047a2:	4607      	mov	r7, r0
 80047a4:	eb00 0409 	add.w	r4, r0, r9
 80047a8:	783b      	ldrb	r3, [r7, #0]
 80047aa:	2b30      	cmp	r3, #48	; 0x30
 80047ac:	f000 80be 	beq.w	800492c <_vfprintf_r+0x19e4>
 80047b0:	9d24      	ldr	r5, [sp, #144]	; 0x90
 80047b2:	442c      	add	r4, r5
 80047b4:	2200      	movs	r2, #0
 80047b6:	2300      	movs	r3, #0
 80047b8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80047bc:	f7fc fc32 	bl	8001024 <__aeabi_dcmpeq>
 80047c0:	b108      	cbz	r0, 80047c6 <_vfprintf_r+0x187e>
 80047c2:	4623      	mov	r3, r4
 80047c4:	e413      	b.n	8003fee <_vfprintf_r+0x10a6>
 80047c6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80047c8:	42a3      	cmp	r3, r4
 80047ca:	f4bf ac10 	bcs.w	8003fee <_vfprintf_r+0x10a6>
 80047ce:	2130      	movs	r1, #48	; 0x30
 80047d0:	1c5a      	adds	r2, r3, #1
 80047d2:	9228      	str	r2, [sp, #160]	; 0xa0
 80047d4:	7019      	strb	r1, [r3, #0]
 80047d6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80047d8:	429c      	cmp	r4, r3
 80047da:	d8f9      	bhi.n	80047d0 <_vfprintf_r+0x1888>
 80047dc:	e407      	b.n	8003fee <_vfprintf_r+0x10a6>
 80047de:	197c      	adds	r4, r7, r5
 80047e0:	e7e8      	b.n	80047b4 <_vfprintf_r+0x186c>
 80047e2:	f1b9 0f00 	cmp.w	r9, #0
 80047e6:	f000 8092 	beq.w	800490e <_vfprintf_r+0x19c6>
 80047ea:	900a      	str	r0, [sp, #40]	; 0x28
 80047ec:	e4ec      	b.n	80041c8 <_vfprintf_r+0x1280>
 80047ee:	900a      	str	r0, [sp, #40]	; 0x28
 80047f0:	f04f 0906 	mov.w	r9, #6
 80047f4:	e4e8      	b.n	80041c8 <_vfprintf_r+0x1280>
 80047f6:	4621      	mov	r1, r4
 80047f8:	461c      	mov	r4, r3
 80047fa:	460b      	mov	r3, r1
 80047fc:	3201      	adds	r2, #1
 80047fe:	442c      	add	r4, r5
 8004800:	2a07      	cmp	r2, #7
 8004802:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004806:	e9cb 3500 	strd	r3, r5, [fp]
 800480a:	f300 80a9 	bgt.w	8004960 <_vfprintf_r+0x1a18>
 800480e:	f10b 0b08 	add.w	fp, fp, #8
 8004812:	e470      	b.n	80040f6 <_vfprintf_r+0x11ae>
 8004814:	469a      	mov	sl, r3
 8004816:	f7ff bb37 	b.w	8003e88 <_vfprintf_r+0xf40>
 800481a:	2301      	movs	r3, #1
 800481c:	9324      	str	r3, [sp, #144]	; 0x90
 800481e:	4b65      	ldr	r3, [pc, #404]	; (80049b4 <_vfprintf_r+0x1a6c>)
 8004820:	9309      	str	r3, [sp, #36]	; 0x24
 8004822:	e4f7      	b.n	8004214 <_vfprintf_r+0x12cc>
 8004824:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004826:	4413      	add	r3, r2
 8004828:	444b      	add	r3, r9
 800482a:	9309      	str	r3, [sp, #36]	; 0x24
 800482c:	2666      	movs	r6, #102	; 0x66
 800482e:	e6fb      	b.n	8004628 <_vfprintf_r+0x16e0>
 8004830:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004832:	9309      	str	r3, [sp, #36]	; 0x24
 8004834:	e694      	b.n	8004560 <_vfprintf_r+0x1618>
 8004836:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 800483a:	4664      	mov	r4, ip
 800483c:	4d5e      	ldr	r5, [pc, #376]	; (80049b8 <_vfprintf_r+0x1a70>)
 800483e:	e000      	b.n	8004842 <_vfprintf_r+0x18fa>
 8004840:	4614      	mov	r4, r2
 8004842:	fba5 1203 	umull	r1, r2, r5, r3
 8004846:	08d2      	lsrs	r2, r2, #3
 8004848:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800484c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004850:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004854:	4613      	mov	r3, r2
 8004856:	2b09      	cmp	r3, #9
 8004858:	f804 1c01 	strb.w	r1, [r4, #-1]
 800485c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004860:	dcee      	bgt.n	8004840 <_vfprintf_r+0x18f8>
 8004862:	3330      	adds	r3, #48	; 0x30
 8004864:	3c02      	subs	r4, #2
 8004866:	b2db      	uxtb	r3, r3
 8004868:	45a4      	cmp	ip, r4
 800486a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800486e:	f240 8090 	bls.w	8004992 <_vfprintf_r+0x1a4a>
 8004872:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004876:	4611      	mov	r1, r2
 8004878:	e001      	b.n	800487e <_vfprintf_r+0x1936>
 800487a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800487e:	f804 3b01 	strb.w	r3, [r4], #1
 8004882:	458c      	cmp	ip, r1
 8004884:	d1f9      	bne.n	800487a <_vfprintf_r+0x1932>
 8004886:	ab2a      	add	r3, sp, #168	; 0xa8
 8004888:	1a9b      	subs	r3, r3, r2
 800488a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800488e:	4413      	add	r3, r2
 8004890:	f7ff bbe3 	b.w	800405a <_vfprintf_r+0x1112>
 8004894:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004896:	4f49      	ldr	r7, [pc, #292]	; (80049bc <_vfprintf_r+0x1a74>)
 8004898:	2b00      	cmp	r3, #0
 800489a:	bfb6      	itet	lt
 800489c:	222d      	movlt	r2, #45	; 0x2d
 800489e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80048a2:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80048a6:	4b46      	ldr	r3, [pc, #280]	; (80049c0 <_vfprintf_r+0x1a78>)
 80048a8:	f7fe bf02 	b.w	80036b0 <_vfprintf_r+0x768>
 80048ac:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80048b0:	f7ff b8c9 	b.w	8003a46 <_vfprintf_r+0xafe>
 80048b4:	aa28      	add	r2, sp, #160	; 0xa0
 80048b6:	ab25      	add	r3, sp, #148	; 0x94
 80048b8:	e9cd 3200 	strd	r3, r2, [sp]
 80048bc:	2103      	movs	r1, #3
 80048be:	ab24      	add	r3, sp, #144	; 0x90
 80048c0:	464a      	mov	r2, r9
 80048c2:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80048c6:	9803      	ldr	r0, [sp, #12]
 80048c8:	f000 f9d6 	bl	8004c78 <_dtoa_r>
 80048cc:	464d      	mov	r5, r9
 80048ce:	4607      	mov	r7, r0
 80048d0:	2e46      	cmp	r6, #70	; 0x46
 80048d2:	eb07 0405 	add.w	r4, r7, r5
 80048d6:	f43f af67 	beq.w	80047a8 <_vfprintf_r+0x1860>
 80048da:	e76b      	b.n	80047b4 <_vfprintf_r+0x186c>
 80048dc:	f1b9 0f00 	cmp.w	r9, #0
 80048e0:	d131      	bne.n	8004946 <_vfprintf_r+0x19fe>
 80048e2:	07c5      	lsls	r5, r0, #31
 80048e4:	d42f      	bmi.n	8004946 <_vfprintf_r+0x19fe>
 80048e6:	2301      	movs	r3, #1
 80048e8:	9304      	str	r3, [sp, #16]
 80048ea:	9309      	str	r3, [sp, #36]	; 0x24
 80048ec:	2666      	movs	r6, #102	; 0x66
 80048ee:	e642      	b.n	8004576 <_vfprintf_r+0x162e>
 80048f0:	07c3      	lsls	r3, r0, #31
 80048f2:	f57f abbf 	bpl.w	8004074 <_vfprintf_r+0x112c>
 80048f6:	f7ff bbb9 	b.w	800406c <_vfprintf_r+0x1124>
 80048fa:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80048fc:	f1c3 0301 	rsb	r3, r3, #1
 8004900:	441a      	add	r2, r3
 8004902:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8004906:	9209      	str	r2, [sp, #36]	; 0x24
 8004908:	9304      	str	r3, [sp, #16]
 800490a:	2667      	movs	r6, #103	; 0x67
 800490c:	e633      	b.n	8004576 <_vfprintf_r+0x162e>
 800490e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8004912:	f04f 0901 	mov.w	r9, #1
 8004916:	e457      	b.n	80041c8 <_vfprintf_r+0x1280>
 8004918:	465a      	mov	r2, fp
 800491a:	e511      	b.n	8004340 <_vfprintf_r+0x13f8>
 800491c:	2e47      	cmp	r6, #71	; 0x47
 800491e:	f47f af5e 	bne.w	80047de <_vfprintf_r+0x1896>
 8004922:	f018 0f01 	tst.w	r8, #1
 8004926:	f43f ab61 	beq.w	8003fec <_vfprintf_r+0x10a4>
 800492a:	e7d1      	b.n	80048d0 <_vfprintf_r+0x1988>
 800492c:	2200      	movs	r2, #0
 800492e:	2300      	movs	r3, #0
 8004930:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004934:	f7fc fb76 	bl	8001024 <__aeabi_dcmpeq>
 8004938:	2800      	cmp	r0, #0
 800493a:	f47f af39 	bne.w	80047b0 <_vfprintf_r+0x1868>
 800493e:	f1c5 0501 	rsb	r5, r5, #1
 8004942:	9524      	str	r5, [sp, #144]	; 0x90
 8004944:	e735      	b.n	80047b2 <_vfprintf_r+0x186a>
 8004946:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004948:	3301      	adds	r3, #1
 800494a:	444b      	add	r3, r9
 800494c:	9309      	str	r3, [sp, #36]	; 0x24
 800494e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004952:	9304      	str	r3, [sp, #16]
 8004954:	2666      	movs	r6, #102	; 0x66
 8004956:	e60e      	b.n	8004576 <_vfprintf_r+0x162e>
 8004958:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800495c:	f7ff bb7a 	b.w	8004054 <_vfprintf_r+0x110c>
 8004960:	aa2a      	add	r2, sp, #168	; 0xa8
 8004962:	9907      	ldr	r1, [sp, #28]
 8004964:	9803      	ldr	r0, [sp, #12]
 8004966:	f002 fe2d 	bl	80075c4 <__sprint_r>
 800496a:	2800      	cmp	r0, #0
 800496c:	f47f a864 	bne.w	8003a38 <_vfprintf_r+0xaf0>
 8004970:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004974:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004978:	f7ff bbbd 	b.w	80040f6 <_vfprintf_r+0x11ae>
 800497c:	9908      	ldr	r1, [sp, #32]
 800497e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004982:	680b      	ldr	r3, [r1, #0]
 8004984:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004988:	1d0b      	adds	r3, r1, #4
 800498a:	4692      	mov	sl, r2
 800498c:	9308      	str	r3, [sp, #32]
 800498e:	f7fe bb59 	b.w	8003044 <_vfprintf_r+0xfc>
 8004992:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004996:	f7ff bb60 	b.w	800405a <_vfprintf_r+0x1112>
 800499a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800499e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80049a2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80049a6:	f8a9 300c 	strh.w	r3, [r9, #12]
 80049aa:	f7ff b84c 	b.w	8003a46 <_vfprintf_r+0xafe>
 80049ae:	bf00      	nop
 80049b0:	08007c98 	.word	0x08007c98
 80049b4:	08007c68 	.word	0x08007c68
 80049b8:	cccccccd 	.word	0xcccccccd
 80049bc:	08007c50 	.word	0x08007c50
 80049c0:	08007c4c 	.word	0x08007c4c

080049c4 <__sbprintf>:
 80049c4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80049c8:	460c      	mov	r4, r1
 80049ca:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 80049ce:	8989      	ldrh	r1, [r1, #12]
 80049d0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80049d2:	89e5      	ldrh	r5, [r4, #14]
 80049d4:	9619      	str	r6, [sp, #100]	; 0x64
 80049d6:	f021 0102 	bic.w	r1, r1, #2
 80049da:	4606      	mov	r6, r0
 80049dc:	69e0      	ldr	r0, [r4, #28]
 80049de:	f8ad 100c 	strh.w	r1, [sp, #12]
 80049e2:	4617      	mov	r7, r2
 80049e4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80049e8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80049ea:	f8ad 500e 	strh.w	r5, [sp, #14]
 80049ee:	4698      	mov	r8, r3
 80049f0:	ad1a      	add	r5, sp, #104	; 0x68
 80049f2:	2300      	movs	r3, #0
 80049f4:	9007      	str	r0, [sp, #28]
 80049f6:	a816      	add	r0, sp, #88	; 0x58
 80049f8:	9209      	str	r2, [sp, #36]	; 0x24
 80049fa:	9306      	str	r3, [sp, #24]
 80049fc:	9500      	str	r5, [sp, #0]
 80049fe:	9504      	str	r5, [sp, #16]
 8004a00:	9102      	str	r1, [sp, #8]
 8004a02:	9105      	str	r1, [sp, #20]
 8004a04:	f001 fc9a 	bl	800633c <__retarget_lock_init_recursive>
 8004a08:	4643      	mov	r3, r8
 8004a0a:	463a      	mov	r2, r7
 8004a0c:	4669      	mov	r1, sp
 8004a0e:	4630      	mov	r0, r6
 8004a10:	f7fe fa9a 	bl	8002f48 <_vfprintf_r>
 8004a14:	1e05      	subs	r5, r0, #0
 8004a16:	db07      	blt.n	8004a28 <__sbprintf+0x64>
 8004a18:	4630      	mov	r0, r6
 8004a1a:	4669      	mov	r1, sp
 8004a1c:	f001 f8e6 	bl	8005bec <_fflush_r>
 8004a20:	2800      	cmp	r0, #0
 8004a22:	bf18      	it	ne
 8004a24:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004a28:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8004a2c:	065b      	lsls	r3, r3, #25
 8004a2e:	d503      	bpl.n	8004a38 <__sbprintf+0x74>
 8004a30:	89a3      	ldrh	r3, [r4, #12]
 8004a32:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004a36:	81a3      	strh	r3, [r4, #12]
 8004a38:	9816      	ldr	r0, [sp, #88]	; 0x58
 8004a3a:	f001 fc81 	bl	8006340 <__retarget_lock_close_recursive>
 8004a3e:	4628      	mov	r0, r5
 8004a40:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004a44:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004a48 <__ascii_wctomb>:
 8004a48:	b121      	cbz	r1, 8004a54 <__ascii_wctomb+0xc>
 8004a4a:	2aff      	cmp	r2, #255	; 0xff
 8004a4c:	d804      	bhi.n	8004a58 <__ascii_wctomb+0x10>
 8004a4e:	700a      	strb	r2, [r1, #0]
 8004a50:	2001      	movs	r0, #1
 8004a52:	4770      	bx	lr
 8004a54:	4608      	mov	r0, r1
 8004a56:	4770      	bx	lr
 8004a58:	238a      	movs	r3, #138	; 0x8a
 8004a5a:	6003      	str	r3, [r0, #0]
 8004a5c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004a60:	4770      	bx	lr
 8004a62:	bf00      	nop

08004a64 <__swsetup_r>:
 8004a64:	b538      	push	{r3, r4, r5, lr}
 8004a66:	4b31      	ldr	r3, [pc, #196]	; (8004b2c <__swsetup_r+0xc8>)
 8004a68:	681b      	ldr	r3, [r3, #0]
 8004a6a:	4605      	mov	r5, r0
 8004a6c:	460c      	mov	r4, r1
 8004a6e:	b113      	cbz	r3, 8004a76 <__swsetup_r+0x12>
 8004a70:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004a72:	2a00      	cmp	r2, #0
 8004a74:	d03a      	beq.n	8004aec <__swsetup_r+0x88>
 8004a76:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004a7a:	b293      	uxth	r3, r2
 8004a7c:	0718      	lsls	r0, r3, #28
 8004a7e:	d50c      	bpl.n	8004a9a <__swsetup_r+0x36>
 8004a80:	6920      	ldr	r0, [r4, #16]
 8004a82:	b1a8      	cbz	r0, 8004ab0 <__swsetup_r+0x4c>
 8004a84:	f013 0201 	ands.w	r2, r3, #1
 8004a88:	d020      	beq.n	8004acc <__swsetup_r+0x68>
 8004a8a:	6963      	ldr	r3, [r4, #20]
 8004a8c:	2200      	movs	r2, #0
 8004a8e:	425b      	negs	r3, r3
 8004a90:	61a3      	str	r3, [r4, #24]
 8004a92:	60a2      	str	r2, [r4, #8]
 8004a94:	b300      	cbz	r0, 8004ad8 <__swsetup_r+0x74>
 8004a96:	2000      	movs	r0, #0
 8004a98:	bd38      	pop	{r3, r4, r5, pc}
 8004a9a:	06d9      	lsls	r1, r3, #27
 8004a9c:	d53e      	bpl.n	8004b1c <__swsetup_r+0xb8>
 8004a9e:	0758      	lsls	r0, r3, #29
 8004aa0:	d428      	bmi.n	8004af4 <__swsetup_r+0x90>
 8004aa2:	6920      	ldr	r0, [r4, #16]
 8004aa4:	f042 0308 	orr.w	r3, r2, #8
 8004aa8:	81a3      	strh	r3, [r4, #12]
 8004aaa:	b29b      	uxth	r3, r3
 8004aac:	2800      	cmp	r0, #0
 8004aae:	d1e9      	bne.n	8004a84 <__swsetup_r+0x20>
 8004ab0:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004ab4:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8004ab8:	d0e4      	beq.n	8004a84 <__swsetup_r+0x20>
 8004aba:	4628      	mov	r0, r5
 8004abc:	4621      	mov	r1, r4
 8004abe:	f001 fc73 	bl	80063a8 <__smakebuf_r>
 8004ac2:	89a3      	ldrh	r3, [r4, #12]
 8004ac4:	6920      	ldr	r0, [r4, #16]
 8004ac6:	f013 0201 	ands.w	r2, r3, #1
 8004aca:	d1de      	bne.n	8004a8a <__swsetup_r+0x26>
 8004acc:	0799      	lsls	r1, r3, #30
 8004ace:	bf58      	it	pl
 8004ad0:	6962      	ldrpl	r2, [r4, #20]
 8004ad2:	60a2      	str	r2, [r4, #8]
 8004ad4:	2800      	cmp	r0, #0
 8004ad6:	d1de      	bne.n	8004a96 <__swsetup_r+0x32>
 8004ad8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004adc:	061a      	lsls	r2, r3, #24
 8004ade:	d5db      	bpl.n	8004a98 <__swsetup_r+0x34>
 8004ae0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004ae4:	81a3      	strh	r3, [r4, #12]
 8004ae6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004aea:	bd38      	pop	{r3, r4, r5, pc}
 8004aec:	4618      	mov	r0, r3
 8004aee:	f001 f8d9 	bl	8005ca4 <__sinit>
 8004af2:	e7c0      	b.n	8004a76 <__swsetup_r+0x12>
 8004af4:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004af6:	b151      	cbz	r1, 8004b0e <__swsetup_r+0xaa>
 8004af8:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004afc:	4299      	cmp	r1, r3
 8004afe:	d004      	beq.n	8004b0a <__swsetup_r+0xa6>
 8004b00:	4628      	mov	r0, r5
 8004b02:	f001 f971 	bl	8005de8 <_free_r>
 8004b06:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004b0a:	2300      	movs	r3, #0
 8004b0c:	6323      	str	r3, [r4, #48]	; 0x30
 8004b0e:	2300      	movs	r3, #0
 8004b10:	6920      	ldr	r0, [r4, #16]
 8004b12:	6063      	str	r3, [r4, #4]
 8004b14:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8004b18:	6020      	str	r0, [r4, #0]
 8004b1a:	e7c3      	b.n	8004aa4 <__swsetup_r+0x40>
 8004b1c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004b20:	2309      	movs	r3, #9
 8004b22:	602b      	str	r3, [r5, #0]
 8004b24:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004b28:	81a2      	strh	r2, [r4, #12]
 8004b2a:	bd38      	pop	{r3, r4, r5, pc}
 8004b2c:	20000058 	.word	0x20000058

08004b30 <register_fini>:
 8004b30:	4b02      	ldr	r3, [pc, #8]	; (8004b3c <register_fini+0xc>)
 8004b32:	b113      	cbz	r3, 8004b3a <register_fini+0xa>
 8004b34:	4802      	ldr	r0, [pc, #8]	; (8004b40 <register_fini+0x10>)
 8004b36:	f000 b805 	b.w	8004b44 <atexit>
 8004b3a:	4770      	bx	lr
 8004b3c:	00000000 	.word	0x00000000
 8004b40:	08005d15 	.word	0x08005d15

08004b44 <atexit>:
 8004b44:	2300      	movs	r3, #0
 8004b46:	4601      	mov	r1, r0
 8004b48:	461a      	mov	r2, r3
 8004b4a:	4618      	mov	r0, r3
 8004b4c:	f002 bd5a 	b.w	8007604 <__register_exitproc>

08004b50 <quorem>:
 8004b50:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004b54:	6903      	ldr	r3, [r0, #16]
 8004b56:	690f      	ldr	r7, [r1, #16]
 8004b58:	42bb      	cmp	r3, r7
 8004b5a:	b083      	sub	sp, #12
 8004b5c:	f2c0 8086 	blt.w	8004c6c <quorem+0x11c>
 8004b60:	3f01      	subs	r7, #1
 8004b62:	f101 0914 	add.w	r9, r1, #20
 8004b66:	f100 0a14 	add.w	sl, r0, #20
 8004b6a:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004b6e:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004b72:	00bc      	lsls	r4, r7, #2
 8004b74:	3201      	adds	r2, #1
 8004b76:	fbb3 f8f2 	udiv	r8, r3, r2
 8004b7a:	eb0a 0304 	add.w	r3, sl, r4
 8004b7e:	9400      	str	r4, [sp, #0]
 8004b80:	eb09 0b04 	add.w	fp, r9, r4
 8004b84:	9301      	str	r3, [sp, #4]
 8004b86:	f1b8 0f00 	cmp.w	r8, #0
 8004b8a:	d038      	beq.n	8004bfe <quorem+0xae>
 8004b8c:	2500      	movs	r5, #0
 8004b8e:	462e      	mov	r6, r5
 8004b90:	46ce      	mov	lr, r9
 8004b92:	46d4      	mov	ip, sl
 8004b94:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004b98:	f8dc 3000 	ldr.w	r3, [ip]
 8004b9c:	b2a2      	uxth	r2, r4
 8004b9e:	fb08 5502 	mla	r5, r8, r2, r5
 8004ba2:	0c22      	lsrs	r2, r4, #16
 8004ba4:	0c2c      	lsrs	r4, r5, #16
 8004ba6:	fb08 4202 	mla	r2, r8, r2, r4
 8004baa:	b2ad      	uxth	r5, r5
 8004bac:	1b75      	subs	r5, r6, r5
 8004bae:	b296      	uxth	r6, r2
 8004bb0:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004bb4:	fa15 f383 	uxtah	r3, r5, r3
 8004bb8:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004bbc:	b29b      	uxth	r3, r3
 8004bbe:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004bc2:	45f3      	cmp	fp, lr
 8004bc4:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8004bc8:	f84c 3b04 	str.w	r3, [ip], #4
 8004bcc:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004bd0:	d2e0      	bcs.n	8004b94 <quorem+0x44>
 8004bd2:	9b00      	ldr	r3, [sp, #0]
 8004bd4:	f85a 3003 	ldr.w	r3, [sl, r3]
 8004bd8:	b98b      	cbnz	r3, 8004bfe <quorem+0xae>
 8004bda:	9a01      	ldr	r2, [sp, #4]
 8004bdc:	1f13      	subs	r3, r2, #4
 8004bde:	459a      	cmp	sl, r3
 8004be0:	d20c      	bcs.n	8004bfc <quorem+0xac>
 8004be2:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8004be6:	b94b      	cbnz	r3, 8004bfc <quorem+0xac>
 8004be8:	f1a2 0308 	sub.w	r3, r2, #8
 8004bec:	e002      	b.n	8004bf4 <quorem+0xa4>
 8004bee:	681a      	ldr	r2, [r3, #0]
 8004bf0:	3b04      	subs	r3, #4
 8004bf2:	b91a      	cbnz	r2, 8004bfc <quorem+0xac>
 8004bf4:	459a      	cmp	sl, r3
 8004bf6:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004bfa:	d3f8      	bcc.n	8004bee <quorem+0x9e>
 8004bfc:	6107      	str	r7, [r0, #16]
 8004bfe:	4604      	mov	r4, r0
 8004c00:	f002 f946 	bl	8006e90 <__mcmp>
 8004c04:	2800      	cmp	r0, #0
 8004c06:	db2d      	blt.n	8004c64 <quorem+0x114>
 8004c08:	f108 0801 	add.w	r8, r8, #1
 8004c0c:	4655      	mov	r5, sl
 8004c0e:	2300      	movs	r3, #0
 8004c10:	f859 1b04 	ldr.w	r1, [r9], #4
 8004c14:	6828      	ldr	r0, [r5, #0]
 8004c16:	b28a      	uxth	r2, r1
 8004c18:	1a9a      	subs	r2, r3, r2
 8004c1a:	0c0b      	lsrs	r3, r1, #16
 8004c1c:	fa12 f280 	uxtah	r2, r2, r0
 8004c20:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004c24:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004c28:	b292      	uxth	r2, r2
 8004c2a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004c2e:	45cb      	cmp	fp, r9
 8004c30:	f845 2b04 	str.w	r2, [r5], #4
 8004c34:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004c38:	d2ea      	bcs.n	8004c10 <quorem+0xc0>
 8004c3a:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004c3e:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004c42:	b97a      	cbnz	r2, 8004c64 <quorem+0x114>
 8004c44:	1f1a      	subs	r2, r3, #4
 8004c46:	4592      	cmp	sl, r2
 8004c48:	d20b      	bcs.n	8004c62 <quorem+0x112>
 8004c4a:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004c4e:	b942      	cbnz	r2, 8004c62 <quorem+0x112>
 8004c50:	3b08      	subs	r3, #8
 8004c52:	e002      	b.n	8004c5a <quorem+0x10a>
 8004c54:	681a      	ldr	r2, [r3, #0]
 8004c56:	3b04      	subs	r3, #4
 8004c58:	b91a      	cbnz	r2, 8004c62 <quorem+0x112>
 8004c5a:	459a      	cmp	sl, r3
 8004c5c:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004c60:	d3f8      	bcc.n	8004c54 <quorem+0x104>
 8004c62:	6127      	str	r7, [r4, #16]
 8004c64:	4640      	mov	r0, r8
 8004c66:	b003      	add	sp, #12
 8004c68:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004c6c:	2000      	movs	r0, #0
 8004c6e:	b003      	add	sp, #12
 8004c70:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004c74:	0000      	movs	r0, r0
	...

08004c78 <_dtoa_r>:
 8004c78:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004c7c:	ec55 4b10 	vmov	r4, r5, d0
 8004c80:	b09b      	sub	sp, #108	; 0x6c
 8004c82:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004c84:	9102      	str	r1, [sp, #8]
 8004c86:	4681      	mov	r9, r0
 8004c88:	9207      	str	r2, [sp, #28]
 8004c8a:	9305      	str	r3, [sp, #20]
 8004c8c:	e9cd 4500 	strd	r4, r5, [sp]
 8004c90:	b156      	cbz	r6, 8004ca8 <_dtoa_r+0x30>
 8004c92:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004c94:	6072      	str	r2, [r6, #4]
 8004c96:	2301      	movs	r3, #1
 8004c98:	4093      	lsls	r3, r2
 8004c9a:	60b3      	str	r3, [r6, #8]
 8004c9c:	4631      	mov	r1, r6
 8004c9e:	f001 ff07 	bl	8006ab0 <_Bfree>
 8004ca2:	2300      	movs	r3, #0
 8004ca4:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004ca8:	f1b5 0800 	subs.w	r8, r5, #0
 8004cac:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004cae:	bfb4      	ite	lt
 8004cb0:	2301      	movlt	r3, #1
 8004cb2:	2300      	movge	r3, #0
 8004cb4:	6013      	str	r3, [r2, #0]
 8004cb6:	4b76      	ldr	r3, [pc, #472]	; (8004e90 <_dtoa_r+0x218>)
 8004cb8:	bfbc      	itt	lt
 8004cba:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8004cbe:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004cc2:	ea33 0308 	bics.w	r3, r3, r8
 8004cc6:	f000 80a6 	beq.w	8004e16 <_dtoa_r+0x19e>
 8004cca:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004cce:	2200      	movs	r2, #0
 8004cd0:	2300      	movs	r3, #0
 8004cd2:	4630      	mov	r0, r6
 8004cd4:	4639      	mov	r1, r7
 8004cd6:	f7fc f9a5 	bl	8001024 <__aeabi_dcmpeq>
 8004cda:	4605      	mov	r5, r0
 8004cdc:	b178      	cbz	r0, 8004cfe <_dtoa_r+0x86>
 8004cde:	9a05      	ldr	r2, [sp, #20]
 8004ce0:	2301      	movs	r3, #1
 8004ce2:	6013      	str	r3, [r2, #0]
 8004ce4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004ce6:	2b00      	cmp	r3, #0
 8004ce8:	f000 80c0 	beq.w	8004e6c <_dtoa_r+0x1f4>
 8004cec:	4b69      	ldr	r3, [pc, #420]	; (8004e94 <_dtoa_r+0x21c>)
 8004cee:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004cf0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004cf4:	6013      	str	r3, [r2, #0]
 8004cf6:	4658      	mov	r0, fp
 8004cf8:	b01b      	add	sp, #108	; 0x6c
 8004cfa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004cfe:	aa18      	add	r2, sp, #96	; 0x60
 8004d00:	a919      	add	r1, sp, #100	; 0x64
 8004d02:	ec47 6b10 	vmov	d0, r6, r7
 8004d06:	4648      	mov	r0, r9
 8004d08:	f002 f954 	bl	8006fb4 <__d2b>
 8004d0c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004d10:	4682      	mov	sl, r0
 8004d12:	f040 80a0 	bne.w	8004e56 <_dtoa_r+0x1de>
 8004d16:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004d1a:	442c      	add	r4, r5
 8004d1c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004d20:	2b20      	cmp	r3, #32
 8004d22:	f340 842c 	ble.w	800557e <_dtoa_r+0x906>
 8004d26:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004d2a:	fa08 f803 	lsl.w	r8, r8, r3
 8004d2e:	9b00      	ldr	r3, [sp, #0]
 8004d30:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004d34:	fa23 f000 	lsr.w	r0, r3, r0
 8004d38:	ea48 0000 	orr.w	r0, r8, r0
 8004d3c:	f7fb fe90 	bl	8000a60 <__aeabi_ui2d>
 8004d40:	2301      	movs	r3, #1
 8004d42:	4606      	mov	r6, r0
 8004d44:	3c01      	subs	r4, #1
 8004d46:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004d4a:	930f      	str	r3, [sp, #60]	; 0x3c
 8004d4c:	4630      	mov	r0, r6
 8004d4e:	4639      	mov	r1, r7
 8004d50:	2200      	movs	r2, #0
 8004d52:	4b51      	ldr	r3, [pc, #324]	; (8004e98 <_dtoa_r+0x220>)
 8004d54:	f7fb fd46 	bl	80007e4 <__aeabi_dsub>
 8004d58:	a347      	add	r3, pc, #284	; (adr r3, 8004e78 <_dtoa_r+0x200>)
 8004d5a:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004d5e:	f7fb fef9 	bl	8000b54 <__aeabi_dmul>
 8004d62:	a347      	add	r3, pc, #284	; (adr r3, 8004e80 <_dtoa_r+0x208>)
 8004d64:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004d68:	f7fb fd3e 	bl	80007e8 <__adddf3>
 8004d6c:	4606      	mov	r6, r0
 8004d6e:	4620      	mov	r0, r4
 8004d70:	460f      	mov	r7, r1
 8004d72:	f7fb fe85 	bl	8000a80 <__aeabi_i2d>
 8004d76:	a344      	add	r3, pc, #272	; (adr r3, 8004e88 <_dtoa_r+0x210>)
 8004d78:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004d7c:	f7fb feea 	bl	8000b54 <__aeabi_dmul>
 8004d80:	4602      	mov	r2, r0
 8004d82:	460b      	mov	r3, r1
 8004d84:	4630      	mov	r0, r6
 8004d86:	4639      	mov	r1, r7
 8004d88:	f7fb fd2e 	bl	80007e8 <__adddf3>
 8004d8c:	4606      	mov	r6, r0
 8004d8e:	460f      	mov	r7, r1
 8004d90:	f7fc f990 	bl	80010b4 <__aeabi_d2iz>
 8004d94:	2200      	movs	r2, #0
 8004d96:	9006      	str	r0, [sp, #24]
 8004d98:	2300      	movs	r3, #0
 8004d9a:	4630      	mov	r0, r6
 8004d9c:	4639      	mov	r1, r7
 8004d9e:	f7fc f94b 	bl	8001038 <__aeabi_dcmplt>
 8004da2:	2800      	cmp	r0, #0
 8004da4:	f040 8273 	bne.w	800528e <_dtoa_r+0x616>
 8004da8:	9e06      	ldr	r6, [sp, #24]
 8004daa:	2e16      	cmp	r6, #22
 8004dac:	f200 825d 	bhi.w	800526a <_dtoa_r+0x5f2>
 8004db0:	4b3a      	ldr	r3, [pc, #232]	; (8004e9c <_dtoa_r+0x224>)
 8004db2:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004db6:	e9d3 0100 	ldrd	r0, r1, [r3]
 8004dba:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004dbe:	f7fc f959 	bl	8001074 <__aeabi_dcmpgt>
 8004dc2:	2800      	cmp	r0, #0
 8004dc4:	f000 83d7 	beq.w	8005576 <_dtoa_r+0x8fe>
 8004dc8:	1e73      	subs	r3, r6, #1
 8004dca:	9306      	str	r3, [sp, #24]
 8004dcc:	2300      	movs	r3, #0
 8004dce:	930d      	str	r3, [sp, #52]	; 0x34
 8004dd0:	1b2c      	subs	r4, r5, r4
 8004dd2:	f1b4 0801 	subs.w	r8, r4, #1
 8004dd6:	f100 8254 	bmi.w	8005282 <_dtoa_r+0x60a>
 8004dda:	2300      	movs	r3, #0
 8004ddc:	9308      	str	r3, [sp, #32]
 8004dde:	9b06      	ldr	r3, [sp, #24]
 8004de0:	2b00      	cmp	r3, #0
 8004de2:	f2c0 8245 	blt.w	8005270 <_dtoa_r+0x5f8>
 8004de6:	4498      	add	r8, r3
 8004de8:	930c      	str	r3, [sp, #48]	; 0x30
 8004dea:	2300      	movs	r3, #0
 8004dec:	930b      	str	r3, [sp, #44]	; 0x2c
 8004dee:	9b02      	ldr	r3, [sp, #8]
 8004df0:	2b09      	cmp	r3, #9
 8004df2:	d85b      	bhi.n	8004eac <_dtoa_r+0x234>
 8004df4:	2b05      	cmp	r3, #5
 8004df6:	f340 83c0 	ble.w	800557a <_dtoa_r+0x902>
 8004dfa:	3b04      	subs	r3, #4
 8004dfc:	9302      	str	r3, [sp, #8]
 8004dfe:	2500      	movs	r5, #0
 8004e00:	9b02      	ldr	r3, [sp, #8]
 8004e02:	3b02      	subs	r3, #2
 8004e04:	2b03      	cmp	r3, #3
 8004e06:	f200 8498 	bhi.w	800573a <_dtoa_r+0xac2>
 8004e0a:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004e0e:	03df      	.short	0x03df
 8004e10:	03e803bf 	.word	0x03e803bf
 8004e14:	04f5      	.short	0x04f5
 8004e16:	9a05      	ldr	r2, [sp, #20]
 8004e18:	f242 730f 	movw	r3, #9999	; 0x270f
 8004e1c:	6013      	str	r3, [r2, #0]
 8004e1e:	9b00      	ldr	r3, [sp, #0]
 8004e20:	b983      	cbnz	r3, 8004e44 <_dtoa_r+0x1cc>
 8004e22:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004e26:	b96b      	cbnz	r3, 8004e44 <_dtoa_r+0x1cc>
 8004e28:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004e2a:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004ea0 <_dtoa_r+0x228>
 8004e2e:	2b00      	cmp	r3, #0
 8004e30:	f43f af61 	beq.w	8004cf6 <_dtoa_r+0x7e>
 8004e34:	f10b 0308 	add.w	r3, fp, #8
 8004e38:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004e3a:	4658      	mov	r0, fp
 8004e3c:	6013      	str	r3, [r2, #0]
 8004e3e:	b01b      	add	sp, #108	; 0x6c
 8004e40:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004e44:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004e46:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004ea4 <_dtoa_r+0x22c>
 8004e4a:	2b00      	cmp	r3, #0
 8004e4c:	f43f af53 	beq.w	8004cf6 <_dtoa_r+0x7e>
 8004e50:	f10b 0303 	add.w	r3, fp, #3
 8004e54:	e7f0      	b.n	8004e38 <_dtoa_r+0x1c0>
 8004e56:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004e5a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004e5e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004e60:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004e64:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004e68:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004e6a:	e76f      	b.n	8004d4c <_dtoa_r+0xd4>
 8004e6c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004ea8 <_dtoa_r+0x230>
 8004e70:	4658      	mov	r0, fp
 8004e72:	b01b      	add	sp, #108	; 0x6c
 8004e74:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004e78:	636f4361 	.word	0x636f4361
 8004e7c:	3fd287a7 	.word	0x3fd287a7
 8004e80:	8b60c8b3 	.word	0x8b60c8b3
 8004e84:	3fc68a28 	.word	0x3fc68a28
 8004e88:	509f79fb 	.word	0x509f79fb
 8004e8c:	3fd34413 	.word	0x3fd34413
 8004e90:	7ff00000 	.word	0x7ff00000
 8004e94:	08007c85 	.word	0x08007c85
 8004e98:	3ff80000 	.word	0x3ff80000
 8004e9c:	08007de8 	.word	0x08007de8
 8004ea0:	08007dac 	.word	0x08007dac
 8004ea4:	08007db8 	.word	0x08007db8
 8004ea8:	08007c84 	.word	0x08007c84
 8004eac:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004eb0:	2501      	movs	r5, #1
 8004eb2:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004eb6:	2300      	movs	r3, #0
 8004eb8:	9302      	str	r3, [sp, #8]
 8004eba:	9307      	str	r3, [sp, #28]
 8004ebc:	2100      	movs	r1, #0
 8004ebe:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004ec2:	940e      	str	r4, [sp, #56]	; 0x38
 8004ec4:	4648      	mov	r0, r9
 8004ec6:	f001 fdcd 	bl	8006a64 <_Balloc>
 8004eca:	2c0e      	cmp	r4, #14
 8004ecc:	4683      	mov	fp, r0
 8004ece:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004ed2:	f200 80fb 	bhi.w	80050cc <_dtoa_r+0x454>
 8004ed6:	2d00      	cmp	r5, #0
 8004ed8:	f000 80f8 	beq.w	80050cc <_dtoa_r+0x454>
 8004edc:	ed9d 7b00 	vldr	d7, [sp]
 8004ee0:	9906      	ldr	r1, [sp, #24]
 8004ee2:	2900      	cmp	r1, #0
 8004ee4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004ee8:	f340 83e5 	ble.w	80056b6 <_dtoa_r+0xa3e>
 8004eec:	4b9d      	ldr	r3, [pc, #628]	; (8005164 <_dtoa_r+0x4ec>)
 8004eee:	f001 020f 	and.w	r2, r1, #15
 8004ef2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004ef6:	ed93 7b00 	vldr	d7, [r3]
 8004efa:	110c      	asrs	r4, r1, #4
 8004efc:	06e2      	lsls	r2, r4, #27
 8004efe:	ed8d 7b00 	vstr	d7, [sp]
 8004f02:	f140 849e 	bpl.w	8005842 <_dtoa_r+0xbca>
 8004f06:	4b98      	ldr	r3, [pc, #608]	; (8005168 <_dtoa_r+0x4f0>)
 8004f08:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004f0c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004f10:	f7fb ff4a 	bl	8000da8 <__aeabi_ddiv>
 8004f14:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004f18:	f004 040f 	and.w	r4, r4, #15
 8004f1c:	2603      	movs	r6, #3
 8004f1e:	b17c      	cbz	r4, 8004f40 <_dtoa_r+0x2c8>
 8004f20:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004f24:	4d90      	ldr	r5, [pc, #576]	; (8005168 <_dtoa_r+0x4f0>)
 8004f26:	07e3      	lsls	r3, r4, #31
 8004f28:	d504      	bpl.n	8004f34 <_dtoa_r+0x2bc>
 8004f2a:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004f2e:	f7fb fe11 	bl	8000b54 <__aeabi_dmul>
 8004f32:	3601      	adds	r6, #1
 8004f34:	1064      	asrs	r4, r4, #1
 8004f36:	f105 0508 	add.w	r5, r5, #8
 8004f3a:	d1f4      	bne.n	8004f26 <_dtoa_r+0x2ae>
 8004f3c:	e9cd 0100 	strd	r0, r1, [sp]
 8004f40:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f44:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004f48:	f7fb ff2e 	bl	8000da8 <__aeabi_ddiv>
 8004f4c:	e9cd 0100 	strd	r0, r1, [sp]
 8004f50:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004f52:	b143      	cbz	r3, 8004f66 <_dtoa_r+0x2ee>
 8004f54:	2200      	movs	r2, #0
 8004f56:	4b85      	ldr	r3, [pc, #532]	; (800516c <_dtoa_r+0x4f4>)
 8004f58:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004f5c:	f7fc f86c 	bl	8001038 <__aeabi_dcmplt>
 8004f60:	2800      	cmp	r0, #0
 8004f62:	f040 84ff 	bne.w	8005964 <_dtoa_r+0xcec>
 8004f66:	4630      	mov	r0, r6
 8004f68:	f7fb fd8a 	bl	8000a80 <__aeabi_i2d>
 8004f6c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f70:	f7fb fdf0 	bl	8000b54 <__aeabi_dmul>
 8004f74:	4b7e      	ldr	r3, [pc, #504]	; (8005170 <_dtoa_r+0x4f8>)
 8004f76:	2200      	movs	r2, #0
 8004f78:	f7fb fc36 	bl	80007e8 <__adddf3>
 8004f7c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f7e:	4606      	mov	r6, r0
 8004f80:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004f84:	2b00      	cmp	r3, #0
 8004f86:	f000 841c 	beq.w	80057c2 <_dtoa_r+0xb4a>
 8004f8a:	9b06      	ldr	r3, [sp, #24]
 8004f8c:	9316      	str	r3, [sp, #88]	; 0x58
 8004f8e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f90:	9312      	str	r3, [sp, #72]	; 0x48
 8004f92:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004f96:	f7fc f88d 	bl	80010b4 <__aeabi_d2iz>
 8004f9a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004f9c:	4b71      	ldr	r3, [pc, #452]	; (8005164 <_dtoa_r+0x4ec>)
 8004f9e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004fa2:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004fa6:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004faa:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004fae:	f7fb fd67 	bl	8000a80 <__aeabi_i2d>
 8004fb2:	460b      	mov	r3, r1
 8004fb4:	4602      	mov	r2, r0
 8004fb6:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004fba:	e9cd 6700 	strd	r6, r7, [sp]
 8004fbe:	f7fb fc11 	bl	80007e4 <__aeabi_dsub>
 8004fc2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004fc4:	b2ed      	uxtb	r5, r5
 8004fc6:	4606      	mov	r6, r0
 8004fc8:	460f      	mov	r7, r1
 8004fca:	f10b 0401 	add.w	r4, fp, #1
 8004fce:	2b00      	cmp	r3, #0
 8004fd0:	f000 8458 	beq.w	8005884 <_dtoa_r+0xc0c>
 8004fd4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004fd8:	2000      	movs	r0, #0
 8004fda:	4966      	ldr	r1, [pc, #408]	; (8005174 <_dtoa_r+0x4fc>)
 8004fdc:	f7fb fee4 	bl	8000da8 <__aeabi_ddiv>
 8004fe0:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004fe4:	f7fb fbfe 	bl	80007e4 <__aeabi_dsub>
 8004fe8:	f88b 5000 	strb.w	r5, [fp]
 8004fec:	4632      	mov	r2, r6
 8004fee:	463b      	mov	r3, r7
 8004ff0:	e9cd 0100 	strd	r0, r1, [sp]
 8004ff4:	f7fc f83e 	bl	8001074 <__aeabi_dcmpgt>
 8004ff8:	2800      	cmp	r0, #0
 8004ffa:	f040 8502 	bne.w	8005a02 <_dtoa_r+0xd8a>
 8004ffe:	4632      	mov	r2, r6
 8005000:	463b      	mov	r3, r7
 8005002:	2000      	movs	r0, #0
 8005004:	4959      	ldr	r1, [pc, #356]	; (800516c <_dtoa_r+0x4f4>)
 8005006:	f7fb fbed 	bl	80007e4 <__aeabi_dsub>
 800500a:	4602      	mov	r2, r0
 800500c:	460b      	mov	r3, r1
 800500e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005012:	f7fc f82f 	bl	8001074 <__aeabi_dcmpgt>
 8005016:	2800      	cmp	r0, #0
 8005018:	f040 84fb 	bne.w	8005a12 <_dtoa_r+0xd9a>
 800501c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800501e:	2a01      	cmp	r2, #1
 8005020:	d050      	beq.n	80050c4 <_dtoa_r+0x44c>
 8005022:	445a      	add	r2, fp
 8005024:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8005028:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 800502c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8005030:	4692      	mov	sl, r2
 8005032:	46cb      	mov	fp, r9
 8005034:	e9dd 8900 	ldrd	r8, r9, [sp]
 8005038:	e00c      	b.n	8005054 <_dtoa_r+0x3dc>
 800503a:	2000      	movs	r0, #0
 800503c:	494b      	ldr	r1, [pc, #300]	; (800516c <_dtoa_r+0x4f4>)
 800503e:	f7fb fbd1 	bl	80007e4 <__aeabi_dsub>
 8005042:	4642      	mov	r2, r8
 8005044:	464b      	mov	r3, r9
 8005046:	f7fb fff7 	bl	8001038 <__aeabi_dcmplt>
 800504a:	2800      	cmp	r0, #0
 800504c:	f040 84dc 	bne.w	8005a08 <_dtoa_r+0xd90>
 8005050:	4554      	cmp	r4, sl
 8005052:	d030      	beq.n	80050b6 <_dtoa_r+0x43e>
 8005054:	4640      	mov	r0, r8
 8005056:	4649      	mov	r1, r9
 8005058:	2200      	movs	r2, #0
 800505a:	4b47      	ldr	r3, [pc, #284]	; (8005178 <_dtoa_r+0x500>)
 800505c:	f7fb fd7a 	bl	8000b54 <__aeabi_dmul>
 8005060:	2200      	movs	r2, #0
 8005062:	4b45      	ldr	r3, [pc, #276]	; (8005178 <_dtoa_r+0x500>)
 8005064:	4680      	mov	r8, r0
 8005066:	4689      	mov	r9, r1
 8005068:	4630      	mov	r0, r6
 800506a:	4639      	mov	r1, r7
 800506c:	f7fb fd72 	bl	8000b54 <__aeabi_dmul>
 8005070:	460f      	mov	r7, r1
 8005072:	4606      	mov	r6, r0
 8005074:	f7fc f81e 	bl	80010b4 <__aeabi_d2iz>
 8005078:	4605      	mov	r5, r0
 800507a:	f7fb fd01 	bl	8000a80 <__aeabi_i2d>
 800507e:	4602      	mov	r2, r0
 8005080:	460b      	mov	r3, r1
 8005082:	4630      	mov	r0, r6
 8005084:	4639      	mov	r1, r7
 8005086:	f7fb fbad 	bl	80007e4 <__aeabi_dsub>
 800508a:	3530      	adds	r5, #48	; 0x30
 800508c:	b2ed      	uxtb	r5, r5
 800508e:	4642      	mov	r2, r8
 8005090:	464b      	mov	r3, r9
 8005092:	f804 5b01 	strb.w	r5, [r4], #1
 8005096:	4606      	mov	r6, r0
 8005098:	460f      	mov	r7, r1
 800509a:	f7fb ffcd 	bl	8001038 <__aeabi_dcmplt>
 800509e:	4632      	mov	r2, r6
 80050a0:	463b      	mov	r3, r7
 80050a2:	2800      	cmp	r0, #0
 80050a4:	d0c9      	beq.n	800503a <_dtoa_r+0x3c2>
 80050a6:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80050a8:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80050ac:	9306      	str	r3, [sp, #24]
 80050ae:	46d9      	mov	r9, fp
 80050b0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80050b4:	e236      	b.n	8005524 <_dtoa_r+0x8ac>
 80050b6:	46d9      	mov	r9, fp
 80050b8:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80050bc:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80050c0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80050c4:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80050c8:	e9cd 3400 	strd	r3, r4, [sp]
 80050cc:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80050ce:	2b00      	cmp	r3, #0
 80050d0:	f2c0 80ae 	blt.w	8005230 <_dtoa_r+0x5b8>
 80050d4:	9a06      	ldr	r2, [sp, #24]
 80050d6:	2a0e      	cmp	r2, #14
 80050d8:	f300 80aa 	bgt.w	8005230 <_dtoa_r+0x5b8>
 80050dc:	4b21      	ldr	r3, [pc, #132]	; (8005164 <_dtoa_r+0x4ec>)
 80050de:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80050e2:	ed93 7b00 	vldr	d7, [r3]
 80050e6:	9b07      	ldr	r3, [sp, #28]
 80050e8:	2b00      	cmp	r3, #0
 80050ea:	ed8d 7b02 	vstr	d7, [sp, #8]
 80050ee:	f2c0 82be 	blt.w	800566e <_dtoa_r+0x9f6>
 80050f2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80050f6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80050fa:	4630      	mov	r0, r6
 80050fc:	4639      	mov	r1, r7
 80050fe:	f7fb fe53 	bl	8000da8 <__aeabi_ddiv>
 8005102:	f7fb ffd7 	bl	80010b4 <__aeabi_d2iz>
 8005106:	4605      	mov	r5, r0
 8005108:	f7fb fcba 	bl	8000a80 <__aeabi_i2d>
 800510c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005110:	f7fb fd20 	bl	8000b54 <__aeabi_dmul>
 8005114:	460b      	mov	r3, r1
 8005116:	4602      	mov	r2, r0
 8005118:	4639      	mov	r1, r7
 800511a:	4630      	mov	r0, r6
 800511c:	f7fb fb62 	bl	80007e4 <__aeabi_dsub>
 8005120:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8005124:	f88b 3000 	strb.w	r3, [fp]
 8005128:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800512a:	2b01      	cmp	r3, #1
 800512c:	4606      	mov	r6, r0
 800512e:	460f      	mov	r7, r1
 8005130:	f10b 0401 	add.w	r4, fp, #1
 8005134:	d053      	beq.n	80051de <_dtoa_r+0x566>
 8005136:	2200      	movs	r2, #0
 8005138:	4b0f      	ldr	r3, [pc, #60]	; (8005178 <_dtoa_r+0x500>)
 800513a:	f7fb fd0b 	bl	8000b54 <__aeabi_dmul>
 800513e:	2200      	movs	r2, #0
 8005140:	2300      	movs	r3, #0
 8005142:	4606      	mov	r6, r0
 8005144:	460f      	mov	r7, r1
 8005146:	f7fb ff6d 	bl	8001024 <__aeabi_dcmpeq>
 800514a:	2800      	cmp	r0, #0
 800514c:	f040 81ea 	bne.w	8005524 <_dtoa_r+0x8ac>
 8005150:	f8cd a000 	str.w	sl, [sp]
 8005154:	f8cd 901c 	str.w	r9, [sp, #28]
 8005158:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800515c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8005160:	e017      	b.n	8005192 <_dtoa_r+0x51a>
 8005162:	bf00      	nop
 8005164:	08007de8 	.word	0x08007de8
 8005168:	08007dc0 	.word	0x08007dc0
 800516c:	3ff00000 	.word	0x3ff00000
 8005170:	401c0000 	.word	0x401c0000
 8005174:	3fe00000 	.word	0x3fe00000
 8005178:	40240000 	.word	0x40240000
 800517c:	f7fb fcea 	bl	8000b54 <__aeabi_dmul>
 8005180:	2200      	movs	r2, #0
 8005182:	2300      	movs	r3, #0
 8005184:	4606      	mov	r6, r0
 8005186:	460f      	mov	r7, r1
 8005188:	f7fb ff4c 	bl	8001024 <__aeabi_dcmpeq>
 800518c:	2800      	cmp	r0, #0
 800518e:	f040 833d 	bne.w	800580c <_dtoa_r+0xb94>
 8005192:	464a      	mov	r2, r9
 8005194:	4653      	mov	r3, sl
 8005196:	4630      	mov	r0, r6
 8005198:	4639      	mov	r1, r7
 800519a:	f7fb fe05 	bl	8000da8 <__aeabi_ddiv>
 800519e:	f7fb ff89 	bl	80010b4 <__aeabi_d2iz>
 80051a2:	4605      	mov	r5, r0
 80051a4:	f7fb fc6c 	bl	8000a80 <__aeabi_i2d>
 80051a8:	464a      	mov	r2, r9
 80051aa:	4653      	mov	r3, sl
 80051ac:	f7fb fcd2 	bl	8000b54 <__aeabi_dmul>
 80051b0:	4602      	mov	r2, r0
 80051b2:	460b      	mov	r3, r1
 80051b4:	4630      	mov	r0, r6
 80051b6:	4639      	mov	r1, r7
 80051b8:	f7fb fb14 	bl	80007e4 <__aeabi_dsub>
 80051bc:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80051c0:	f804 cb01 	strb.w	ip, [r4], #1
 80051c4:	eba4 0c0b 	sub.w	ip, r4, fp
 80051c8:	45e0      	cmp	r8, ip
 80051ca:	4606      	mov	r6, r0
 80051cc:	460f      	mov	r7, r1
 80051ce:	f04f 0200 	mov.w	r2, #0
 80051d2:	4bc1      	ldr	r3, [pc, #772]	; (80054d8 <_dtoa_r+0x860>)
 80051d4:	d1d2      	bne.n	800517c <_dtoa_r+0x504>
 80051d6:	f8dd a000 	ldr.w	sl, [sp]
 80051da:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80051de:	4632      	mov	r2, r6
 80051e0:	463b      	mov	r3, r7
 80051e2:	4630      	mov	r0, r6
 80051e4:	4639      	mov	r1, r7
 80051e6:	f7fb faff 	bl	80007e8 <__adddf3>
 80051ea:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80051ee:	4606      	mov	r6, r0
 80051f0:	460f      	mov	r7, r1
 80051f2:	f7fb ff3f 	bl	8001074 <__aeabi_dcmpgt>
 80051f6:	b958      	cbnz	r0, 8005210 <_dtoa_r+0x598>
 80051f8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80051fc:	4630      	mov	r0, r6
 80051fe:	4639      	mov	r1, r7
 8005200:	f7fb ff10 	bl	8001024 <__aeabi_dcmpeq>
 8005204:	2800      	cmp	r0, #0
 8005206:	f000 818d 	beq.w	8005524 <_dtoa_r+0x8ac>
 800520a:	07e9      	lsls	r1, r5, #31
 800520c:	f140 818a 	bpl.w	8005524 <_dtoa_r+0x8ac>
 8005210:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005214:	e005      	b.n	8005222 <_dtoa_r+0x5aa>
 8005216:	459b      	cmp	fp, r3
 8005218:	f000 8373 	beq.w	8005902 <_dtoa_r+0xc8a>
 800521c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8005220:	461c      	mov	r4, r3
 8005222:	2d39      	cmp	r5, #57	; 0x39
 8005224:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8005228:	d0f5      	beq.n	8005216 <_dtoa_r+0x59e>
 800522a:	3501      	adds	r5, #1
 800522c:	701d      	strb	r5, [r3, #0]
 800522e:	e179      	b.n	8005524 <_dtoa_r+0x8ac>
 8005230:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005232:	2a00      	cmp	r2, #0
 8005234:	d03b      	beq.n	80052ae <_dtoa_r+0x636>
 8005236:	9a02      	ldr	r2, [sp, #8]
 8005238:	2a01      	cmp	r2, #1
 800523a:	f340 820b 	ble.w	8005654 <_dtoa_r+0x9dc>
 800523e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005240:	1e5f      	subs	r7, r3, #1
 8005242:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005244:	42bb      	cmp	r3, r7
 8005246:	f2c0 82e6 	blt.w	8005816 <_dtoa_r+0xb9e>
 800524a:	1bdf      	subs	r7, r3, r7
 800524c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800524e:	2b00      	cmp	r3, #0
 8005250:	f2c0 830b 	blt.w	800586a <_dtoa_r+0xbf2>
 8005254:	9a08      	ldr	r2, [sp, #32]
 8005256:	4614      	mov	r4, r2
 8005258:	441a      	add	r2, r3
 800525a:	4498      	add	r8, r3
 800525c:	9208      	str	r2, [sp, #32]
 800525e:	2101      	movs	r1, #1
 8005260:	4648      	mov	r0, r9
 8005262:	f001 fcbf 	bl	8006be4 <__i2b>
 8005266:	4605      	mov	r5, r0
 8005268:	e024      	b.n	80052b4 <_dtoa_r+0x63c>
 800526a:	2301      	movs	r3, #1
 800526c:	930d      	str	r3, [sp, #52]	; 0x34
 800526e:	e5af      	b.n	8004dd0 <_dtoa_r+0x158>
 8005270:	9a08      	ldr	r2, [sp, #32]
 8005272:	9b06      	ldr	r3, [sp, #24]
 8005274:	1ad2      	subs	r2, r2, r3
 8005276:	425b      	negs	r3, r3
 8005278:	930b      	str	r3, [sp, #44]	; 0x2c
 800527a:	2300      	movs	r3, #0
 800527c:	9208      	str	r2, [sp, #32]
 800527e:	930c      	str	r3, [sp, #48]	; 0x30
 8005280:	e5b5      	b.n	8004dee <_dtoa_r+0x176>
 8005282:	f1c4 0301 	rsb	r3, r4, #1
 8005286:	9308      	str	r3, [sp, #32]
 8005288:	f04f 0800 	mov.w	r8, #0
 800528c:	e5a7      	b.n	8004dde <_dtoa_r+0x166>
 800528e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8005292:	4640      	mov	r0, r8
 8005294:	f7fb fbf4 	bl	8000a80 <__aeabi_i2d>
 8005298:	4632      	mov	r2, r6
 800529a:	463b      	mov	r3, r7
 800529c:	f7fb fec2 	bl	8001024 <__aeabi_dcmpeq>
 80052a0:	2800      	cmp	r0, #0
 80052a2:	f47f ad81 	bne.w	8004da8 <_dtoa_r+0x130>
 80052a6:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80052aa:	9306      	str	r3, [sp, #24]
 80052ac:	e57c      	b.n	8004da8 <_dtoa_r+0x130>
 80052ae:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80052b0:	9c08      	ldr	r4, [sp, #32]
 80052b2:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80052b4:	2c00      	cmp	r4, #0
 80052b6:	dd0c      	ble.n	80052d2 <_dtoa_r+0x65a>
 80052b8:	f1b8 0f00 	cmp.w	r8, #0
 80052bc:	dd09      	ble.n	80052d2 <_dtoa_r+0x65a>
 80052be:	4544      	cmp	r4, r8
 80052c0:	9a08      	ldr	r2, [sp, #32]
 80052c2:	4623      	mov	r3, r4
 80052c4:	bfa8      	it	ge
 80052c6:	4643      	movge	r3, r8
 80052c8:	1ad2      	subs	r2, r2, r3
 80052ca:	9208      	str	r2, [sp, #32]
 80052cc:	1ae4      	subs	r4, r4, r3
 80052ce:	eba8 0803 	sub.w	r8, r8, r3
 80052d2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80052d4:	b16b      	cbz	r3, 80052f2 <_dtoa_r+0x67a>
 80052d6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80052d8:	2a00      	cmp	r2, #0
 80052da:	f000 8290 	beq.w	80057fe <_dtoa_r+0xb86>
 80052de:	1bde      	subs	r6, r3, r7
 80052e0:	2f00      	cmp	r7, #0
 80052e2:	f040 819b 	bne.w	800561c <_dtoa_r+0x9a4>
 80052e6:	4651      	mov	r1, sl
 80052e8:	4632      	mov	r2, r6
 80052ea:	4648      	mov	r0, r9
 80052ec:	f001 fd2a 	bl	8006d44 <__pow5mult>
 80052f0:	4682      	mov	sl, r0
 80052f2:	2101      	movs	r1, #1
 80052f4:	4648      	mov	r0, r9
 80052f6:	f001 fc75 	bl	8006be4 <__i2b>
 80052fa:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80052fc:	4606      	mov	r6, r0
 80052fe:	2a00      	cmp	r2, #0
 8005300:	f040 8125 	bne.w	800554e <_dtoa_r+0x8d6>
 8005304:	9b02      	ldr	r3, [sp, #8]
 8005306:	2b01      	cmp	r3, #1
 8005308:	f340 816c 	ble.w	80055e4 <_dtoa_r+0x96c>
 800530c:	2001      	movs	r0, #1
 800530e:	4440      	add	r0, r8
 8005310:	f010 001f 	ands.w	r0, r0, #31
 8005314:	f000 8119 	beq.w	800554a <_dtoa_r+0x8d2>
 8005318:	f1c0 0320 	rsb	r3, r0, #32
 800531c:	2b04      	cmp	r3, #4
 800531e:	f340 83ac 	ble.w	8005a7a <_dtoa_r+0xe02>
 8005322:	f1c0 001c 	rsb	r0, r0, #28
 8005326:	9b08      	ldr	r3, [sp, #32]
 8005328:	4403      	add	r3, r0
 800532a:	9308      	str	r3, [sp, #32]
 800532c:	4404      	add	r4, r0
 800532e:	4480      	add	r8, r0
 8005330:	9b08      	ldr	r3, [sp, #32]
 8005332:	2b00      	cmp	r3, #0
 8005334:	dd05      	ble.n	8005342 <_dtoa_r+0x6ca>
 8005336:	4651      	mov	r1, sl
 8005338:	461a      	mov	r2, r3
 800533a:	4648      	mov	r0, r9
 800533c:	f001 fd52 	bl	8006de4 <__lshift>
 8005340:	4682      	mov	sl, r0
 8005342:	f1b8 0f00 	cmp.w	r8, #0
 8005346:	dd05      	ble.n	8005354 <_dtoa_r+0x6dc>
 8005348:	4631      	mov	r1, r6
 800534a:	4642      	mov	r2, r8
 800534c:	4648      	mov	r0, r9
 800534e:	f001 fd49 	bl	8006de4 <__lshift>
 8005352:	4606      	mov	r6, r0
 8005354:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8005356:	2b00      	cmp	r3, #0
 8005358:	d177      	bne.n	800544a <_dtoa_r+0x7d2>
 800535a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800535c:	2b00      	cmp	r3, #0
 800535e:	f340 8209 	ble.w	8005774 <_dtoa_r+0xafc>
 8005362:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005364:	2b00      	cmp	r3, #0
 8005366:	f000 8089 	beq.w	800547c <_dtoa_r+0x804>
 800536a:	2c00      	cmp	r4, #0
 800536c:	f300 816b 	bgt.w	8005646 <_dtoa_r+0x9ce>
 8005370:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8005372:	2b00      	cmp	r3, #0
 8005374:	f040 81cd 	bne.w	8005712 <_dtoa_r+0xa9a>
 8005378:	46a8      	mov	r8, r5
 800537a:	9a00      	ldr	r2, [sp, #0]
 800537c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8005380:	f002 0201 	and.w	r2, r2, #1
 8005384:	920a      	str	r2, [sp, #40]	; 0x28
 8005386:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005388:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 800538c:	441a      	add	r2, r3
 800538e:	465f      	mov	r7, fp
 8005390:	9209      	str	r2, [sp, #36]	; 0x24
 8005392:	46b3      	mov	fp, r6
 8005394:	4659      	mov	r1, fp
 8005396:	4650      	mov	r0, sl
 8005398:	f7ff fbda 	bl	8004b50 <quorem>
 800539c:	4629      	mov	r1, r5
 800539e:	4604      	mov	r4, r0
 80053a0:	4650      	mov	r0, sl
 80053a2:	f001 fd75 	bl	8006e90 <__mcmp>
 80053a6:	4659      	mov	r1, fp
 80053a8:	4606      	mov	r6, r0
 80053aa:	4642      	mov	r2, r8
 80053ac:	4648      	mov	r0, r9
 80053ae:	f001 fd8b 	bl	8006ec8 <__mdiff>
 80053b2:	f104 0330 	add.w	r3, r4, #48	; 0x30
 80053b6:	9300      	str	r3, [sp, #0]
 80053b8:	68c3      	ldr	r3, [r0, #12]
 80053ba:	4601      	mov	r1, r0
 80053bc:	2b00      	cmp	r3, #0
 80053be:	f040 81d4 	bne.w	800576a <_dtoa_r+0xaf2>
 80053c2:	9008      	str	r0, [sp, #32]
 80053c4:	4650      	mov	r0, sl
 80053c6:	f001 fd63 	bl	8006e90 <__mcmp>
 80053ca:	9a08      	ldr	r2, [sp, #32]
 80053cc:	9007      	str	r0, [sp, #28]
 80053ce:	4611      	mov	r1, r2
 80053d0:	4648      	mov	r0, r9
 80053d2:	f001 fb6d 	bl	8006ab0 <_Bfree>
 80053d6:	9b07      	ldr	r3, [sp, #28]
 80053d8:	b933      	cbnz	r3, 80053e8 <_dtoa_r+0x770>
 80053da:	9a02      	ldr	r2, [sp, #8]
 80053dc:	b922      	cbnz	r2, 80053e8 <_dtoa_r+0x770>
 80053de:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80053e0:	2b00      	cmp	r3, #0
 80053e2:	f000 8319 	beq.w	8005a18 <_dtoa_r+0xda0>
 80053e6:	9b02      	ldr	r3, [sp, #8]
 80053e8:	2e00      	cmp	r6, #0
 80053ea:	f2c0 821c 	blt.w	8005826 <_dtoa_r+0xbae>
 80053ee:	d105      	bne.n	80053fc <_dtoa_r+0x784>
 80053f0:	9a02      	ldr	r2, [sp, #8]
 80053f2:	b91a      	cbnz	r2, 80053fc <_dtoa_r+0x784>
 80053f4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80053f6:	2a00      	cmp	r2, #0
 80053f8:	f000 8215 	beq.w	8005826 <_dtoa_r+0xbae>
 80053fc:	2b00      	cmp	r3, #0
 80053fe:	f107 0401 	add.w	r4, r7, #1
 8005402:	f300 8225 	bgt.w	8005850 <_dtoa_r+0xbd8>
 8005406:	9b00      	ldr	r3, [sp, #0]
 8005408:	703b      	strb	r3, [r7, #0]
 800540a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800540c:	42bb      	cmp	r3, r7
 800540e:	f000 8230 	beq.w	8005872 <_dtoa_r+0xbfa>
 8005412:	4651      	mov	r1, sl
 8005414:	2300      	movs	r3, #0
 8005416:	220a      	movs	r2, #10
 8005418:	4648      	mov	r0, r9
 800541a:	f001 fb53 	bl	8006ac4 <__multadd>
 800541e:	4545      	cmp	r5, r8
 8005420:	4682      	mov	sl, r0
 8005422:	4629      	mov	r1, r5
 8005424:	f04f 0300 	mov.w	r3, #0
 8005428:	f04f 020a 	mov.w	r2, #10
 800542c:	4648      	mov	r0, r9
 800542e:	f000 8196 	beq.w	800575e <_dtoa_r+0xae6>
 8005432:	f001 fb47 	bl	8006ac4 <__multadd>
 8005436:	4641      	mov	r1, r8
 8005438:	4605      	mov	r5, r0
 800543a:	2300      	movs	r3, #0
 800543c:	220a      	movs	r2, #10
 800543e:	4648      	mov	r0, r9
 8005440:	f001 fb40 	bl	8006ac4 <__multadd>
 8005444:	4627      	mov	r7, r4
 8005446:	4680      	mov	r8, r0
 8005448:	e7a4      	b.n	8005394 <_dtoa_r+0x71c>
 800544a:	4631      	mov	r1, r6
 800544c:	4650      	mov	r0, sl
 800544e:	f001 fd1f 	bl	8006e90 <__mcmp>
 8005452:	2800      	cmp	r0, #0
 8005454:	da81      	bge.n	800535a <_dtoa_r+0x6e2>
 8005456:	9f06      	ldr	r7, [sp, #24]
 8005458:	4651      	mov	r1, sl
 800545a:	2300      	movs	r3, #0
 800545c:	220a      	movs	r2, #10
 800545e:	4648      	mov	r0, r9
 8005460:	3f01      	subs	r7, #1
 8005462:	9706      	str	r7, [sp, #24]
 8005464:	f001 fb2e 	bl	8006ac4 <__multadd>
 8005468:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800546a:	4682      	mov	sl, r0
 800546c:	2b00      	cmp	r3, #0
 800546e:	f040 82eb 	bne.w	8005a48 <_dtoa_r+0xdd0>
 8005472:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005474:	2b00      	cmp	r3, #0
 8005476:	f340 82f3 	ble.w	8005a60 <_dtoa_r+0xde8>
 800547a:	9309      	str	r3, [sp, #36]	; 0x24
 800547c:	465c      	mov	r4, fp
 800547e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8005482:	e002      	b.n	800548a <_dtoa_r+0x812>
 8005484:	f001 fb1e 	bl	8006ac4 <__multadd>
 8005488:	4682      	mov	sl, r0
 800548a:	4631      	mov	r1, r6
 800548c:	4650      	mov	r0, sl
 800548e:	f7ff fb5f 	bl	8004b50 <quorem>
 8005492:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8005496:	f804 7b01 	strb.w	r7, [r4], #1
 800549a:	eba4 030b 	sub.w	r3, r4, fp
 800549e:	4598      	cmp	r8, r3
 80054a0:	f04f 020a 	mov.w	r2, #10
 80054a4:	f04f 0300 	mov.w	r3, #0
 80054a8:	4651      	mov	r1, sl
 80054aa:	4648      	mov	r0, r9
 80054ac:	dcea      	bgt.n	8005484 <_dtoa_r+0x80c>
 80054ae:	2300      	movs	r3, #0
 80054b0:	9700      	str	r7, [sp, #0]
 80054b2:	9302      	str	r3, [sp, #8]
 80054b4:	4651      	mov	r1, sl
 80054b6:	2201      	movs	r2, #1
 80054b8:	4648      	mov	r0, r9
 80054ba:	f001 fc93 	bl	8006de4 <__lshift>
 80054be:	4631      	mov	r1, r6
 80054c0:	4682      	mov	sl, r0
 80054c2:	f001 fce5 	bl	8006e90 <__mcmp>
 80054c6:	2800      	cmp	r0, #0
 80054c8:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 80054cc:	dc14      	bgt.n	80054f8 <_dtoa_r+0x880>
 80054ce:	d108      	bne.n	80054e2 <_dtoa_r+0x86a>
 80054d0:	9b00      	ldr	r3, [sp, #0]
 80054d2:	07db      	lsls	r3, r3, #31
 80054d4:	d410      	bmi.n	80054f8 <_dtoa_r+0x880>
 80054d6:	e004      	b.n	80054e2 <_dtoa_r+0x86a>
 80054d8:	40240000 	.word	0x40240000
 80054dc:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 80054e0:	461c      	mov	r4, r3
 80054e2:	2a30      	cmp	r2, #48	; 0x30
 80054e4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80054e8:	d0f8      	beq.n	80054dc <_dtoa_r+0x864>
 80054ea:	e00b      	b.n	8005504 <_dtoa_r+0x88c>
 80054ec:	459b      	cmp	fp, r3
 80054ee:	f000 814e 	beq.w	800578e <_dtoa_r+0xb16>
 80054f2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80054f6:	461c      	mov	r4, r3
 80054f8:	2a39      	cmp	r2, #57	; 0x39
 80054fa:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80054fe:	d0f5      	beq.n	80054ec <_dtoa_r+0x874>
 8005500:	3201      	adds	r2, #1
 8005502:	701a      	strb	r2, [r3, #0]
 8005504:	4631      	mov	r1, r6
 8005506:	4648      	mov	r0, r9
 8005508:	f001 fad2 	bl	8006ab0 <_Bfree>
 800550c:	b155      	cbz	r5, 8005524 <_dtoa_r+0x8ac>
 800550e:	9902      	ldr	r1, [sp, #8]
 8005510:	b121      	cbz	r1, 800551c <_dtoa_r+0x8a4>
 8005512:	42a9      	cmp	r1, r5
 8005514:	d002      	beq.n	800551c <_dtoa_r+0x8a4>
 8005516:	4648      	mov	r0, r9
 8005518:	f001 faca 	bl	8006ab0 <_Bfree>
 800551c:	4629      	mov	r1, r5
 800551e:	4648      	mov	r0, r9
 8005520:	f001 fac6 	bl	8006ab0 <_Bfree>
 8005524:	4651      	mov	r1, sl
 8005526:	4648      	mov	r0, r9
 8005528:	f001 fac2 	bl	8006ab0 <_Bfree>
 800552c:	2200      	movs	r2, #0
 800552e:	9b06      	ldr	r3, [sp, #24]
 8005530:	7022      	strb	r2, [r4, #0]
 8005532:	9a05      	ldr	r2, [sp, #20]
 8005534:	3301      	adds	r3, #1
 8005536:	6013      	str	r3, [r2, #0]
 8005538:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800553a:	2b00      	cmp	r3, #0
 800553c:	f43f abdb 	beq.w	8004cf6 <_dtoa_r+0x7e>
 8005540:	4658      	mov	r0, fp
 8005542:	601c      	str	r4, [r3, #0]
 8005544:	b01b      	add	sp, #108	; 0x6c
 8005546:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800554a:	201c      	movs	r0, #28
 800554c:	e6eb      	b.n	8005326 <_dtoa_r+0x6ae>
 800554e:	4601      	mov	r1, r0
 8005550:	4648      	mov	r0, r9
 8005552:	f001 fbf7 	bl	8006d44 <__pow5mult>
 8005556:	9b02      	ldr	r3, [sp, #8]
 8005558:	2b01      	cmp	r3, #1
 800555a:	4606      	mov	r6, r0
 800555c:	f340 80d4 	ble.w	8005708 <_dtoa_r+0xa90>
 8005560:	2300      	movs	r3, #0
 8005562:	930c      	str	r3, [sp, #48]	; 0x30
 8005564:	6933      	ldr	r3, [r6, #16]
 8005566:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 800556a:	6918      	ldr	r0, [r3, #16]
 800556c:	f001 faea 	bl	8006b44 <__hi0bits>
 8005570:	f1c0 0020 	rsb	r0, r0, #32
 8005574:	e6cb      	b.n	800530e <_dtoa_r+0x696>
 8005576:	900d      	str	r0, [sp, #52]	; 0x34
 8005578:	e42a      	b.n	8004dd0 <_dtoa_r+0x158>
 800557a:	2501      	movs	r5, #1
 800557c:	e440      	b.n	8004e00 <_dtoa_r+0x188>
 800557e:	f1c3 0820 	rsb	r8, r3, #32
 8005582:	9b00      	ldr	r3, [sp, #0]
 8005584:	fa03 f008 	lsl.w	r0, r3, r8
 8005588:	f7ff bbd8 	b.w	8004d3c <_dtoa_r+0xc4>
 800558c:	2300      	movs	r3, #0
 800558e:	930a      	str	r3, [sp, #40]	; 0x28
 8005590:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8005594:	4413      	add	r3, r2
 8005596:	930e      	str	r3, [sp, #56]	; 0x38
 8005598:	3301      	adds	r3, #1
 800559a:	2b01      	cmp	r3, #1
 800559c:	461e      	mov	r6, r3
 800559e:	9309      	str	r3, [sp, #36]	; 0x24
 80055a0:	bfb8      	it	lt
 80055a2:	2601      	movlt	r6, #1
 80055a4:	2100      	movs	r1, #0
 80055a6:	2e17      	cmp	r6, #23
 80055a8:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80055ac:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80055ae:	f77f ac89 	ble.w	8004ec4 <_dtoa_r+0x24c>
 80055b2:	2201      	movs	r2, #1
 80055b4:	2304      	movs	r3, #4
 80055b6:	005b      	lsls	r3, r3, #1
 80055b8:	f103 0014 	add.w	r0, r3, #20
 80055bc:	42b0      	cmp	r0, r6
 80055be:	4611      	mov	r1, r2
 80055c0:	f102 0201 	add.w	r2, r2, #1
 80055c4:	d9f7      	bls.n	80055b6 <_dtoa_r+0x93e>
 80055c6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80055ca:	e47b      	b.n	8004ec4 <_dtoa_r+0x24c>
 80055cc:	2300      	movs	r3, #0
 80055ce:	930a      	str	r3, [sp, #40]	; 0x28
 80055d0:	9e07      	ldr	r6, [sp, #28]
 80055d2:	2e00      	cmp	r6, #0
 80055d4:	f340 80e2 	ble.w	800579c <_dtoa_r+0xb24>
 80055d8:	960e      	str	r6, [sp, #56]	; 0x38
 80055da:	9609      	str	r6, [sp, #36]	; 0x24
 80055dc:	e7e2      	b.n	80055a4 <_dtoa_r+0x92c>
 80055de:	2301      	movs	r3, #1
 80055e0:	930a      	str	r3, [sp, #40]	; 0x28
 80055e2:	e7f5      	b.n	80055d0 <_dtoa_r+0x958>
 80055e4:	9b00      	ldr	r3, [sp, #0]
 80055e6:	2b00      	cmp	r3, #0
 80055e8:	f47f ae90 	bne.w	800530c <_dtoa_r+0x694>
 80055ec:	e9dd 1200 	ldrd	r1, r2, [sp]
 80055f0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 80055f4:	2b00      	cmp	r3, #0
 80055f6:	f040 8192 	bne.w	800591e <_dtoa_r+0xca6>
 80055fa:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80055fe:	0d1b      	lsrs	r3, r3, #20
 8005600:	051b      	lsls	r3, r3, #20
 8005602:	b12b      	cbz	r3, 8005610 <_dtoa_r+0x998>
 8005604:	9b08      	ldr	r3, [sp, #32]
 8005606:	3301      	adds	r3, #1
 8005608:	9308      	str	r3, [sp, #32]
 800560a:	f108 0801 	add.w	r8, r8, #1
 800560e:	2301      	movs	r3, #1
 8005610:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005612:	930c      	str	r3, [sp, #48]	; 0x30
 8005614:	2a00      	cmp	r2, #0
 8005616:	f43f ae79 	beq.w	800530c <_dtoa_r+0x694>
 800561a:	e7a3      	b.n	8005564 <_dtoa_r+0x8ec>
 800561c:	463a      	mov	r2, r7
 800561e:	4629      	mov	r1, r5
 8005620:	4648      	mov	r0, r9
 8005622:	f001 fb8f 	bl	8006d44 <__pow5mult>
 8005626:	4652      	mov	r2, sl
 8005628:	4601      	mov	r1, r0
 800562a:	4605      	mov	r5, r0
 800562c:	4648      	mov	r0, r9
 800562e:	f001 fae3 	bl	8006bf8 <__multiply>
 8005632:	4651      	mov	r1, sl
 8005634:	4607      	mov	r7, r0
 8005636:	4648      	mov	r0, r9
 8005638:	f001 fa3a 	bl	8006ab0 <_Bfree>
 800563c:	46ba      	mov	sl, r7
 800563e:	2e00      	cmp	r6, #0
 8005640:	f43f ae57 	beq.w	80052f2 <_dtoa_r+0x67a>
 8005644:	e64f      	b.n	80052e6 <_dtoa_r+0x66e>
 8005646:	4629      	mov	r1, r5
 8005648:	4622      	mov	r2, r4
 800564a:	4648      	mov	r0, r9
 800564c:	f001 fbca 	bl	8006de4 <__lshift>
 8005650:	4605      	mov	r5, r0
 8005652:	e68d      	b.n	8005370 <_dtoa_r+0x6f8>
 8005654:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8005656:	2a00      	cmp	r2, #0
 8005658:	f000 815d 	beq.w	8005916 <_dtoa_r+0xc9e>
 800565c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005660:	9a08      	ldr	r2, [sp, #32]
 8005662:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005664:	4614      	mov	r4, r2
 8005666:	441a      	add	r2, r3
 8005668:	4498      	add	r8, r3
 800566a:	9208      	str	r2, [sp, #32]
 800566c:	e5f7      	b.n	800525e <_dtoa_r+0x5e6>
 800566e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005670:	2b00      	cmp	r3, #0
 8005672:	f73f ad3e 	bgt.w	80050f2 <_dtoa_r+0x47a>
 8005676:	f040 80bc 	bne.w	80057f2 <_dtoa_r+0xb7a>
 800567a:	ec51 0b17 	vmov	r0, r1, d7
 800567e:	2200      	movs	r2, #0
 8005680:	4bb2      	ldr	r3, [pc, #712]	; (800594c <_dtoa_r+0xcd4>)
 8005682:	f7fb fa67 	bl	8000b54 <__aeabi_dmul>
 8005686:	e9dd 2300 	ldrd	r2, r3, [sp]
 800568a:	f7fb fce9 	bl	8001060 <__aeabi_dcmpge>
 800568e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8005690:	4635      	mov	r5, r6
 8005692:	2800      	cmp	r0, #0
 8005694:	d176      	bne.n	8005784 <_dtoa_r+0xb0c>
 8005696:	9a06      	ldr	r2, [sp, #24]
 8005698:	2331      	movs	r3, #49	; 0x31
 800569a:	3201      	adds	r2, #1
 800569c:	9206      	str	r2, [sp, #24]
 800569e:	f88b 3000 	strb.w	r3, [fp]
 80056a2:	f10b 0401 	add.w	r4, fp, #1
 80056a6:	4631      	mov	r1, r6
 80056a8:	4648      	mov	r0, r9
 80056aa:	f001 fa01 	bl	8006ab0 <_Bfree>
 80056ae:	2d00      	cmp	r5, #0
 80056b0:	f47f af34 	bne.w	800551c <_dtoa_r+0x8a4>
 80056b4:	e736      	b.n	8005524 <_dtoa_r+0x8ac>
 80056b6:	f000 8142 	beq.w	800593e <_dtoa_r+0xcc6>
 80056ba:	9b06      	ldr	r3, [sp, #24]
 80056bc:	425c      	negs	r4, r3
 80056be:	4ba4      	ldr	r3, [pc, #656]	; (8005950 <_dtoa_r+0xcd8>)
 80056c0:	f004 020f 	and.w	r2, r4, #15
 80056c4:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80056c8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80056cc:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80056d0:	f7fb fa40 	bl	8000b54 <__aeabi_dmul>
 80056d4:	1124      	asrs	r4, r4, #4
 80056d6:	e9cd 0100 	strd	r0, r1, [sp]
 80056da:	f000 81c6 	beq.w	8005a6a <_dtoa_r+0xdf2>
 80056de:	4d9d      	ldr	r5, [pc, #628]	; (8005954 <_dtoa_r+0xcdc>)
 80056e0:	2300      	movs	r3, #0
 80056e2:	2602      	movs	r6, #2
 80056e4:	07e7      	lsls	r7, r4, #31
 80056e6:	d505      	bpl.n	80056f4 <_dtoa_r+0xa7c>
 80056e8:	e9d5 2300 	ldrd	r2, r3, [r5]
 80056ec:	f7fb fa32 	bl	8000b54 <__aeabi_dmul>
 80056f0:	3601      	adds	r6, #1
 80056f2:	2301      	movs	r3, #1
 80056f4:	1064      	asrs	r4, r4, #1
 80056f6:	f105 0508 	add.w	r5, r5, #8
 80056fa:	d1f3      	bne.n	80056e4 <_dtoa_r+0xa6c>
 80056fc:	2b00      	cmp	r3, #0
 80056fe:	f43f ac27 	beq.w	8004f50 <_dtoa_r+0x2d8>
 8005702:	e9cd 0100 	strd	r0, r1, [sp]
 8005706:	e423      	b.n	8004f50 <_dtoa_r+0x2d8>
 8005708:	9b00      	ldr	r3, [sp, #0]
 800570a:	2b00      	cmp	r3, #0
 800570c:	f43f af6e 	beq.w	80055ec <_dtoa_r+0x974>
 8005710:	e726      	b.n	8005560 <_dtoa_r+0x8e8>
 8005712:	6869      	ldr	r1, [r5, #4]
 8005714:	4648      	mov	r0, r9
 8005716:	f001 f9a5 	bl	8006a64 <_Balloc>
 800571a:	692b      	ldr	r3, [r5, #16]
 800571c:	3302      	adds	r3, #2
 800571e:	009a      	lsls	r2, r3, #2
 8005720:	4604      	mov	r4, r0
 8005722:	f105 010c 	add.w	r1, r5, #12
 8005726:	300c      	adds	r0, #12
 8005728:	f7fa ff3a 	bl	80005a0 <memcpy>
 800572c:	4621      	mov	r1, r4
 800572e:	2201      	movs	r2, #1
 8005730:	4648      	mov	r0, r9
 8005732:	f001 fb57 	bl	8006de4 <__lshift>
 8005736:	4680      	mov	r8, r0
 8005738:	e61f      	b.n	800537a <_dtoa_r+0x702>
 800573a:	2400      	movs	r4, #0
 800573c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8005740:	4621      	mov	r1, r4
 8005742:	4648      	mov	r0, r9
 8005744:	f001 f98e 	bl	8006a64 <_Balloc>
 8005748:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800574c:	930e      	str	r3, [sp, #56]	; 0x38
 800574e:	9309      	str	r3, [sp, #36]	; 0x24
 8005750:	2301      	movs	r3, #1
 8005752:	4683      	mov	fp, r0
 8005754:	9407      	str	r4, [sp, #28]
 8005756:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800575a:	930a      	str	r3, [sp, #40]	; 0x28
 800575c:	e4b6      	b.n	80050cc <_dtoa_r+0x454>
 800575e:	f001 f9b1 	bl	8006ac4 <__multadd>
 8005762:	4627      	mov	r7, r4
 8005764:	4605      	mov	r5, r0
 8005766:	4680      	mov	r8, r0
 8005768:	e614      	b.n	8005394 <_dtoa_r+0x71c>
 800576a:	4648      	mov	r0, r9
 800576c:	f001 f9a0 	bl	8006ab0 <_Bfree>
 8005770:	2301      	movs	r3, #1
 8005772:	e639      	b.n	80053e8 <_dtoa_r+0x770>
 8005774:	9b02      	ldr	r3, [sp, #8]
 8005776:	2b02      	cmp	r3, #2
 8005778:	f77f adf3 	ble.w	8005362 <_dtoa_r+0x6ea>
 800577c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800577e:	2b00      	cmp	r3, #0
 8005780:	f000 80cf 	beq.w	8005922 <_dtoa_r+0xcaa>
 8005784:	9b07      	ldr	r3, [sp, #28]
 8005786:	43db      	mvns	r3, r3
 8005788:	9306      	str	r3, [sp, #24]
 800578a:	465c      	mov	r4, fp
 800578c:	e78b      	b.n	80056a6 <_dtoa_r+0xa2e>
 800578e:	9a06      	ldr	r2, [sp, #24]
 8005790:	2331      	movs	r3, #49	; 0x31
 8005792:	3201      	adds	r2, #1
 8005794:	9206      	str	r2, [sp, #24]
 8005796:	f88b 3000 	strb.w	r3, [fp]
 800579a:	e6b3      	b.n	8005504 <_dtoa_r+0x88c>
 800579c:	2401      	movs	r4, #1
 800579e:	9409      	str	r4, [sp, #36]	; 0x24
 80057a0:	9407      	str	r4, [sp, #28]
 80057a2:	f7ff bb8b 	b.w	8004ebc <_dtoa_r+0x244>
 80057a6:	4630      	mov	r0, r6
 80057a8:	f7fb f96a 	bl	8000a80 <__aeabi_i2d>
 80057ac:	e9dd 2300 	ldrd	r2, r3, [sp]
 80057b0:	f7fb f9d0 	bl	8000b54 <__aeabi_dmul>
 80057b4:	2200      	movs	r2, #0
 80057b6:	4b68      	ldr	r3, [pc, #416]	; (8005958 <_dtoa_r+0xce0>)
 80057b8:	f7fb f816 	bl	80007e8 <__adddf3>
 80057bc:	4606      	mov	r6, r0
 80057be:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80057c2:	2200      	movs	r2, #0
 80057c4:	4b61      	ldr	r3, [pc, #388]	; (800594c <_dtoa_r+0xcd4>)
 80057c6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80057ca:	f7fb f80b 	bl	80007e4 <__aeabi_dsub>
 80057ce:	4632      	mov	r2, r6
 80057d0:	463b      	mov	r3, r7
 80057d2:	4604      	mov	r4, r0
 80057d4:	460d      	mov	r5, r1
 80057d6:	f7fb fc4d 	bl	8001074 <__aeabi_dcmpgt>
 80057da:	2800      	cmp	r0, #0
 80057dc:	d14f      	bne.n	800587e <_dtoa_r+0xc06>
 80057de:	4632      	mov	r2, r6
 80057e0:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 80057e4:	4620      	mov	r0, r4
 80057e6:	4629      	mov	r1, r5
 80057e8:	f7fb fc26 	bl	8001038 <__aeabi_dcmplt>
 80057ec:	2800      	cmp	r0, #0
 80057ee:	f43f ac69 	beq.w	80050c4 <_dtoa_r+0x44c>
 80057f2:	2600      	movs	r6, #0
 80057f4:	4635      	mov	r5, r6
 80057f6:	e7c5      	b.n	8005784 <_dtoa_r+0xb0c>
 80057f8:	2301      	movs	r3, #1
 80057fa:	930a      	str	r3, [sp, #40]	; 0x28
 80057fc:	e6c8      	b.n	8005590 <_dtoa_r+0x918>
 80057fe:	4651      	mov	r1, sl
 8005800:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005802:	4648      	mov	r0, r9
 8005804:	f001 fa9e 	bl	8006d44 <__pow5mult>
 8005808:	4682      	mov	sl, r0
 800580a:	e572      	b.n	80052f2 <_dtoa_r+0x67a>
 800580c:	f8dd a000 	ldr.w	sl, [sp]
 8005810:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005814:	e686      	b.n	8005524 <_dtoa_r+0x8ac>
 8005816:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005818:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800581a:	1afb      	subs	r3, r7, r3
 800581c:	441a      	add	r2, r3
 800581e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8005822:	2700      	movs	r7, #0
 8005824:	e512      	b.n	800524c <_dtoa_r+0x5d4>
 8005826:	2b00      	cmp	r3, #0
 8005828:	9402      	str	r4, [sp, #8]
 800582a:	465e      	mov	r6, fp
 800582c:	f107 0401 	add.w	r4, r7, #1
 8005830:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005834:	f300 80ba 	bgt.w	80059ac <_dtoa_r+0xd34>
 8005838:	9b00      	ldr	r3, [sp, #0]
 800583a:	9502      	str	r5, [sp, #8]
 800583c:	703b      	strb	r3, [r7, #0]
 800583e:	4645      	mov	r5, r8
 8005840:	e660      	b.n	8005504 <_dtoa_r+0x88c>
 8005842:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005846:	2602      	movs	r6, #2
 8005848:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800584c:	f7ff bb67 	b.w	8004f1e <_dtoa_r+0x2a6>
 8005850:	9b00      	ldr	r3, [sp, #0]
 8005852:	2b39      	cmp	r3, #57	; 0x39
 8005854:	465e      	mov	r6, fp
 8005856:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800585a:	f000 80b9 	beq.w	80059d0 <_dtoa_r+0xd58>
 800585e:	9b00      	ldr	r3, [sp, #0]
 8005860:	9502      	str	r5, [sp, #8]
 8005862:	3301      	adds	r3, #1
 8005864:	703b      	strb	r3, [r7, #0]
 8005866:	4645      	mov	r5, r8
 8005868:	e64c      	b.n	8005504 <_dtoa_r+0x88c>
 800586a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800586e:	1a9c      	subs	r4, r3, r2
 8005870:	e4f5      	b.n	800525e <_dtoa_r+0x5e6>
 8005872:	465e      	mov	r6, fp
 8005874:	9502      	str	r5, [sp, #8]
 8005876:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800587a:	4645      	mov	r5, r8
 800587c:	e61a      	b.n	80054b4 <_dtoa_r+0x83c>
 800587e:	2600      	movs	r6, #0
 8005880:	4635      	mov	r5, r6
 8005882:	e708      	b.n	8005696 <_dtoa_r+0xa1e>
 8005884:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005888:	e9dd 0100 	ldrd	r0, r1, [sp]
 800588c:	f7fb f962 	bl	8000b54 <__aeabi_dmul>
 8005890:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005892:	f88b 5000 	strb.w	r5, [fp]
 8005896:	2b01      	cmp	r3, #1
 8005898:	e9cd 0100 	strd	r0, r1, [sp]
 800589c:	d020      	beq.n	80058e0 <_dtoa_r+0xc68>
 800589e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80058a0:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 80058a4:	445b      	add	r3, fp
 80058a6:	4698      	mov	r8, r3
 80058a8:	2200      	movs	r2, #0
 80058aa:	4b2c      	ldr	r3, [pc, #176]	; (800595c <_dtoa_r+0xce4>)
 80058ac:	4630      	mov	r0, r6
 80058ae:	4639      	mov	r1, r7
 80058b0:	f7fb f950 	bl	8000b54 <__aeabi_dmul>
 80058b4:	460f      	mov	r7, r1
 80058b6:	4606      	mov	r6, r0
 80058b8:	f7fb fbfc 	bl	80010b4 <__aeabi_d2iz>
 80058bc:	4605      	mov	r5, r0
 80058be:	f7fb f8df 	bl	8000a80 <__aeabi_i2d>
 80058c2:	3530      	adds	r5, #48	; 0x30
 80058c4:	4602      	mov	r2, r0
 80058c6:	460b      	mov	r3, r1
 80058c8:	4630      	mov	r0, r6
 80058ca:	4639      	mov	r1, r7
 80058cc:	f7fa ff8a 	bl	80007e4 <__aeabi_dsub>
 80058d0:	f804 5b01 	strb.w	r5, [r4], #1
 80058d4:	4544      	cmp	r4, r8
 80058d6:	4606      	mov	r6, r0
 80058d8:	460f      	mov	r7, r1
 80058da:	d1e5      	bne.n	80058a8 <_dtoa_r+0xc30>
 80058dc:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 80058e0:	4b1f      	ldr	r3, [pc, #124]	; (8005960 <_dtoa_r+0xce8>)
 80058e2:	2200      	movs	r2, #0
 80058e4:	e9dd 0100 	ldrd	r0, r1, [sp]
 80058e8:	f7fa ff7e 	bl	80007e8 <__adddf3>
 80058ec:	4632      	mov	r2, r6
 80058ee:	463b      	mov	r3, r7
 80058f0:	f7fb fba2 	bl	8001038 <__aeabi_dcmplt>
 80058f4:	2800      	cmp	r0, #0
 80058f6:	d070      	beq.n	80059da <_dtoa_r+0xd62>
 80058f8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80058fa:	9306      	str	r3, [sp, #24]
 80058fc:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005900:	e48f      	b.n	8005222 <_dtoa_r+0x5aa>
 8005902:	2330      	movs	r3, #48	; 0x30
 8005904:	f88b 3000 	strb.w	r3, [fp]
 8005908:	9b06      	ldr	r3, [sp, #24]
 800590a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800590e:	3301      	adds	r3, #1
 8005910:	9306      	str	r3, [sp, #24]
 8005912:	465b      	mov	r3, fp
 8005914:	e489      	b.n	800522a <_dtoa_r+0x5b2>
 8005916:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005918:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 800591c:	e6a0      	b.n	8005660 <_dtoa_r+0x9e8>
 800591e:	2300      	movs	r3, #0
 8005920:	e676      	b.n	8005610 <_dtoa_r+0x998>
 8005922:	4631      	mov	r1, r6
 8005924:	2205      	movs	r2, #5
 8005926:	4648      	mov	r0, r9
 8005928:	f001 f8cc 	bl	8006ac4 <__multadd>
 800592c:	4601      	mov	r1, r0
 800592e:	4606      	mov	r6, r0
 8005930:	4650      	mov	r0, sl
 8005932:	f001 faad 	bl	8006e90 <__mcmp>
 8005936:	2800      	cmp	r0, #0
 8005938:	f73f aead 	bgt.w	8005696 <_dtoa_r+0xa1e>
 800593c:	e722      	b.n	8005784 <_dtoa_r+0xb0c>
 800593e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005942:	2602      	movs	r6, #2
 8005944:	ed8d 7b00 	vstr	d7, [sp]
 8005948:	f7ff bb02 	b.w	8004f50 <_dtoa_r+0x2d8>
 800594c:	40140000 	.word	0x40140000
 8005950:	08007de8 	.word	0x08007de8
 8005954:	08007dc0 	.word	0x08007dc0
 8005958:	401c0000 	.word	0x401c0000
 800595c:	40240000 	.word	0x40240000
 8005960:	3fe00000 	.word	0x3fe00000
 8005964:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005966:	2b00      	cmp	r3, #0
 8005968:	f43f af1d 	beq.w	80057a6 <_dtoa_r+0xb2e>
 800596c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800596e:	2c00      	cmp	r4, #0
 8005970:	f77f aba8 	ble.w	80050c4 <_dtoa_r+0x44c>
 8005974:	2200      	movs	r2, #0
 8005976:	4b45      	ldr	r3, [pc, #276]	; (8005a8c <_dtoa_r+0xe14>)
 8005978:	e9dd 0100 	ldrd	r0, r1, [sp]
 800597c:	f7fb f8ea 	bl	8000b54 <__aeabi_dmul>
 8005980:	e9cd 0100 	strd	r0, r1, [sp]
 8005984:	1c70      	adds	r0, r6, #1
 8005986:	f7fb f87b 	bl	8000a80 <__aeabi_i2d>
 800598a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800598e:	f7fb f8e1 	bl	8000b54 <__aeabi_dmul>
 8005992:	4b3f      	ldr	r3, [pc, #252]	; (8005a90 <_dtoa_r+0xe18>)
 8005994:	2200      	movs	r2, #0
 8005996:	f7fa ff27 	bl	80007e8 <__adddf3>
 800599a:	9b06      	ldr	r3, [sp, #24]
 800599c:	9412      	str	r4, [sp, #72]	; 0x48
 800599e:	3b01      	subs	r3, #1
 80059a0:	4606      	mov	r6, r0
 80059a2:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80059a6:	9316      	str	r3, [sp, #88]	; 0x58
 80059a8:	f7ff baf3 	b.w	8004f92 <_dtoa_r+0x31a>
 80059ac:	4651      	mov	r1, sl
 80059ae:	2201      	movs	r2, #1
 80059b0:	4648      	mov	r0, r9
 80059b2:	f001 fa17 	bl	8006de4 <__lshift>
 80059b6:	4631      	mov	r1, r6
 80059b8:	4682      	mov	sl, r0
 80059ba:	f001 fa69 	bl	8006e90 <__mcmp>
 80059be:	2800      	cmp	r0, #0
 80059c0:	dd3b      	ble.n	8005a3a <_dtoa_r+0xdc2>
 80059c2:	9b00      	ldr	r3, [sp, #0]
 80059c4:	2b39      	cmp	r3, #57	; 0x39
 80059c6:	d003      	beq.n	80059d0 <_dtoa_r+0xd58>
 80059c8:	9b02      	ldr	r3, [sp, #8]
 80059ca:	3331      	adds	r3, #49	; 0x31
 80059cc:	9300      	str	r3, [sp, #0]
 80059ce:	e733      	b.n	8005838 <_dtoa_r+0xbc0>
 80059d0:	2239      	movs	r2, #57	; 0x39
 80059d2:	9502      	str	r5, [sp, #8]
 80059d4:	703a      	strb	r2, [r7, #0]
 80059d6:	4645      	mov	r5, r8
 80059d8:	e58e      	b.n	80054f8 <_dtoa_r+0x880>
 80059da:	e9dd 2300 	ldrd	r2, r3, [sp]
 80059de:	2000      	movs	r0, #0
 80059e0:	492c      	ldr	r1, [pc, #176]	; (8005a94 <_dtoa_r+0xe1c>)
 80059e2:	f7fa feff 	bl	80007e4 <__aeabi_dsub>
 80059e6:	4632      	mov	r2, r6
 80059e8:	463b      	mov	r3, r7
 80059ea:	f7fb fb43 	bl	8001074 <__aeabi_dcmpgt>
 80059ee:	b910      	cbnz	r0, 80059f6 <_dtoa_r+0xd7e>
 80059f0:	f7ff bb68 	b.w	80050c4 <_dtoa_r+0x44c>
 80059f4:	4614      	mov	r4, r2
 80059f6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80059fa:	2b30      	cmp	r3, #48	; 0x30
 80059fc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8005a00:	d0f8      	beq.n	80059f4 <_dtoa_r+0xd7c>
 8005a02:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005a04:	9306      	str	r3, [sp, #24]
 8005a06:	e58d      	b.n	8005524 <_dtoa_r+0x8ac>
 8005a08:	46d9      	mov	r9, fp
 8005a0a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005a0e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005a12:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005a14:	9306      	str	r3, [sp, #24]
 8005a16:	e404      	b.n	8005222 <_dtoa_r+0x5aa>
 8005a18:	9b00      	ldr	r3, [sp, #0]
 8005a1a:	2b39      	cmp	r3, #57	; 0x39
 8005a1c:	4621      	mov	r1, r4
 8005a1e:	4632      	mov	r2, r6
 8005a20:	f107 0401 	add.w	r4, r7, #1
 8005a24:	465e      	mov	r6, fp
 8005a26:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005a2a:	d0d1      	beq.n	80059d0 <_dtoa_r+0xd58>
 8005a2c:	2a00      	cmp	r2, #0
 8005a2e:	f77f af03 	ble.w	8005838 <_dtoa_r+0xbc0>
 8005a32:	460b      	mov	r3, r1
 8005a34:	3331      	adds	r3, #49	; 0x31
 8005a36:	9300      	str	r3, [sp, #0]
 8005a38:	e6fe      	b.n	8005838 <_dtoa_r+0xbc0>
 8005a3a:	f47f aefd 	bne.w	8005838 <_dtoa_r+0xbc0>
 8005a3e:	9b00      	ldr	r3, [sp, #0]
 8005a40:	07da      	lsls	r2, r3, #31
 8005a42:	f57f aef9 	bpl.w	8005838 <_dtoa_r+0xbc0>
 8005a46:	e7bc      	b.n	80059c2 <_dtoa_r+0xd4a>
 8005a48:	4629      	mov	r1, r5
 8005a4a:	2300      	movs	r3, #0
 8005a4c:	220a      	movs	r2, #10
 8005a4e:	4648      	mov	r0, r9
 8005a50:	f001 f838 	bl	8006ac4 <__multadd>
 8005a54:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005a56:	2b00      	cmp	r3, #0
 8005a58:	4605      	mov	r5, r0
 8005a5a:	dd09      	ble.n	8005a70 <_dtoa_r+0xdf8>
 8005a5c:	9309      	str	r3, [sp, #36]	; 0x24
 8005a5e:	e484      	b.n	800536a <_dtoa_r+0x6f2>
 8005a60:	9b02      	ldr	r3, [sp, #8]
 8005a62:	2b02      	cmp	r3, #2
 8005a64:	dc0e      	bgt.n	8005a84 <_dtoa_r+0xe0c>
 8005a66:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005a68:	e507      	b.n	800547a <_dtoa_r+0x802>
 8005a6a:	2602      	movs	r6, #2
 8005a6c:	f7ff ba70 	b.w	8004f50 <_dtoa_r+0x2d8>
 8005a70:	9b02      	ldr	r3, [sp, #8]
 8005a72:	2b02      	cmp	r3, #2
 8005a74:	dc06      	bgt.n	8005a84 <_dtoa_r+0xe0c>
 8005a76:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005a78:	e7f0      	b.n	8005a5c <_dtoa_r+0xde4>
 8005a7a:	f43f ac59 	beq.w	8005330 <_dtoa_r+0x6b8>
 8005a7e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005a82:	e450      	b.n	8005326 <_dtoa_r+0x6ae>
 8005a84:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005a86:	9309      	str	r3, [sp, #36]	; 0x24
 8005a88:	e678      	b.n	800577c <_dtoa_r+0xb04>
 8005a8a:	bf00      	nop
 8005a8c:	40240000 	.word	0x40240000
 8005a90:	401c0000 	.word	0x401c0000
 8005a94:	3fe00000 	.word	0x3fe00000

08005a98 <__sflush_r>:
 8005a98:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005a9c:	b29a      	uxth	r2, r3
 8005a9e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005aa2:	460c      	mov	r4, r1
 8005aa4:	0711      	lsls	r1, r2, #28
 8005aa6:	4680      	mov	r8, r0
 8005aa8:	d444      	bmi.n	8005b34 <__sflush_r+0x9c>
 8005aaa:	6862      	ldr	r2, [r4, #4]
 8005aac:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005ab0:	2a00      	cmp	r2, #0
 8005ab2:	81a3      	strh	r3, [r4, #12]
 8005ab4:	dd59      	ble.n	8005b6a <__sflush_r+0xd2>
 8005ab6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005ab8:	2d00      	cmp	r5, #0
 8005aba:	d053      	beq.n	8005b64 <__sflush_r+0xcc>
 8005abc:	2200      	movs	r2, #0
 8005abe:	b29b      	uxth	r3, r3
 8005ac0:	f8d8 6000 	ldr.w	r6, [r8]
 8005ac4:	69e1      	ldr	r1, [r4, #28]
 8005ac6:	f8c8 2000 	str.w	r2, [r8]
 8005aca:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8005ace:	f040 8083 	bne.w	8005bd8 <__sflush_r+0x140>
 8005ad2:	2301      	movs	r3, #1
 8005ad4:	4640      	mov	r0, r8
 8005ad6:	47a8      	blx	r5
 8005ad8:	1c42      	adds	r2, r0, #1
 8005ada:	d04a      	beq.n	8005b72 <__sflush_r+0xda>
 8005adc:	89a3      	ldrh	r3, [r4, #12]
 8005ade:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005ae0:	69e1      	ldr	r1, [r4, #28]
 8005ae2:	075b      	lsls	r3, r3, #29
 8005ae4:	d505      	bpl.n	8005af2 <__sflush_r+0x5a>
 8005ae6:	6862      	ldr	r2, [r4, #4]
 8005ae8:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8005aea:	1a80      	subs	r0, r0, r2
 8005aec:	b10b      	cbz	r3, 8005af2 <__sflush_r+0x5a>
 8005aee:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005af0:	1ac0      	subs	r0, r0, r3
 8005af2:	4602      	mov	r2, r0
 8005af4:	2300      	movs	r3, #0
 8005af6:	4640      	mov	r0, r8
 8005af8:	47a8      	blx	r5
 8005afa:	1c47      	adds	r7, r0, #1
 8005afc:	d045      	beq.n	8005b8a <__sflush_r+0xf2>
 8005afe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b02:	6922      	ldr	r2, [r4, #16]
 8005b04:	6022      	str	r2, [r4, #0]
 8005b06:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8005b0a:	2200      	movs	r2, #0
 8005b0c:	81a3      	strh	r3, [r4, #12]
 8005b0e:	04db      	lsls	r3, r3, #19
 8005b10:	6062      	str	r2, [r4, #4]
 8005b12:	d500      	bpl.n	8005b16 <__sflush_r+0x7e>
 8005b14:	6520      	str	r0, [r4, #80]	; 0x50
 8005b16:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005b18:	f8c8 6000 	str.w	r6, [r8]
 8005b1c:	b311      	cbz	r1, 8005b64 <__sflush_r+0xcc>
 8005b1e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005b22:	4299      	cmp	r1, r3
 8005b24:	d002      	beq.n	8005b2c <__sflush_r+0x94>
 8005b26:	4640      	mov	r0, r8
 8005b28:	f000 f95e 	bl	8005de8 <_free_r>
 8005b2c:	2000      	movs	r0, #0
 8005b2e:	6320      	str	r0, [r4, #48]	; 0x30
 8005b30:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005b34:	6926      	ldr	r6, [r4, #16]
 8005b36:	b1ae      	cbz	r6, 8005b64 <__sflush_r+0xcc>
 8005b38:	6825      	ldr	r5, [r4, #0]
 8005b3a:	6026      	str	r6, [r4, #0]
 8005b3c:	0792      	lsls	r2, r2, #30
 8005b3e:	bf0c      	ite	eq
 8005b40:	6963      	ldreq	r3, [r4, #20]
 8005b42:	2300      	movne	r3, #0
 8005b44:	1bad      	subs	r5, r5, r6
 8005b46:	60a3      	str	r3, [r4, #8]
 8005b48:	e00a      	b.n	8005b60 <__sflush_r+0xc8>
 8005b4a:	462b      	mov	r3, r5
 8005b4c:	4632      	mov	r2, r6
 8005b4e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005b50:	69e1      	ldr	r1, [r4, #28]
 8005b52:	4640      	mov	r0, r8
 8005b54:	47b8      	blx	r7
 8005b56:	2800      	cmp	r0, #0
 8005b58:	eba5 0500 	sub.w	r5, r5, r0
 8005b5c:	4406      	add	r6, r0
 8005b5e:	dd2b      	ble.n	8005bb8 <__sflush_r+0x120>
 8005b60:	2d00      	cmp	r5, #0
 8005b62:	dcf2      	bgt.n	8005b4a <__sflush_r+0xb2>
 8005b64:	2000      	movs	r0, #0
 8005b66:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005b6a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005b6c:	2a00      	cmp	r2, #0
 8005b6e:	dca2      	bgt.n	8005ab6 <__sflush_r+0x1e>
 8005b70:	e7f8      	b.n	8005b64 <__sflush_r+0xcc>
 8005b72:	f8d8 3000 	ldr.w	r3, [r8]
 8005b76:	2b00      	cmp	r3, #0
 8005b78:	d0b0      	beq.n	8005adc <__sflush_r+0x44>
 8005b7a:	2b1d      	cmp	r3, #29
 8005b7c:	d001      	beq.n	8005b82 <__sflush_r+0xea>
 8005b7e:	2b16      	cmp	r3, #22
 8005b80:	d12c      	bne.n	8005bdc <__sflush_r+0x144>
 8005b82:	f8c8 6000 	str.w	r6, [r8]
 8005b86:	2000      	movs	r0, #0
 8005b88:	e7ed      	b.n	8005b66 <__sflush_r+0xce>
 8005b8a:	f8d8 1000 	ldr.w	r1, [r8]
 8005b8e:	291d      	cmp	r1, #29
 8005b90:	d81a      	bhi.n	8005bc8 <__sflush_r+0x130>
 8005b92:	4b15      	ldr	r3, [pc, #84]	; (8005be8 <__sflush_r+0x150>)
 8005b94:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005b98:	40cb      	lsrs	r3, r1
 8005b9a:	43db      	mvns	r3, r3
 8005b9c:	f013 0301 	ands.w	r3, r3, #1
 8005ba0:	d114      	bne.n	8005bcc <__sflush_r+0x134>
 8005ba2:	6925      	ldr	r5, [r4, #16]
 8005ba4:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005ba8:	e9c4 5300 	strd	r5, r3, [r4]
 8005bac:	04d5      	lsls	r5, r2, #19
 8005bae:	81a2      	strh	r2, [r4, #12]
 8005bb0:	d5b1      	bpl.n	8005b16 <__sflush_r+0x7e>
 8005bb2:	2900      	cmp	r1, #0
 8005bb4:	d1af      	bne.n	8005b16 <__sflush_r+0x7e>
 8005bb6:	e7ad      	b.n	8005b14 <__sflush_r+0x7c>
 8005bb8:	89a3      	ldrh	r3, [r4, #12]
 8005bba:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005bbe:	81a3      	strh	r3, [r4, #12]
 8005bc0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005bc4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005bc8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005bcc:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005bd0:	81a2      	strh	r2, [r4, #12]
 8005bd2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005bd6:	e7c6      	b.n	8005b66 <__sflush_r+0xce>
 8005bd8:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8005bda:	e782      	b.n	8005ae2 <__sflush_r+0x4a>
 8005bdc:	89a3      	ldrh	r3, [r4, #12]
 8005bde:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005be2:	81a3      	strh	r3, [r4, #12]
 8005be4:	e7bf      	b.n	8005b66 <__sflush_r+0xce>
 8005be6:	bf00      	nop
 8005be8:	20400001 	.word	0x20400001

08005bec <_fflush_r>:
 8005bec:	b538      	push	{r3, r4, r5, lr}
 8005bee:	460d      	mov	r5, r1
 8005bf0:	4604      	mov	r4, r0
 8005bf2:	b108      	cbz	r0, 8005bf8 <_fflush_r+0xc>
 8005bf4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005bf6:	b1a3      	cbz	r3, 8005c22 <_fflush_r+0x36>
 8005bf8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005bfc:	b1b8      	cbz	r0, 8005c2e <_fflush_r+0x42>
 8005bfe:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005c00:	07db      	lsls	r3, r3, #31
 8005c02:	d401      	bmi.n	8005c08 <_fflush_r+0x1c>
 8005c04:	0581      	lsls	r1, r0, #22
 8005c06:	d51a      	bpl.n	8005c3e <_fflush_r+0x52>
 8005c08:	4620      	mov	r0, r4
 8005c0a:	4629      	mov	r1, r5
 8005c0c:	f7ff ff44 	bl	8005a98 <__sflush_r>
 8005c10:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005c12:	07da      	lsls	r2, r3, #31
 8005c14:	4604      	mov	r4, r0
 8005c16:	d402      	bmi.n	8005c1e <_fflush_r+0x32>
 8005c18:	89ab      	ldrh	r3, [r5, #12]
 8005c1a:	059b      	lsls	r3, r3, #22
 8005c1c:	d50a      	bpl.n	8005c34 <_fflush_r+0x48>
 8005c1e:	4620      	mov	r0, r4
 8005c20:	bd38      	pop	{r3, r4, r5, pc}
 8005c22:	f000 f83f 	bl	8005ca4 <__sinit>
 8005c26:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005c2a:	2800      	cmp	r0, #0
 8005c2c:	d1e7      	bne.n	8005bfe <_fflush_r+0x12>
 8005c2e:	4604      	mov	r4, r0
 8005c30:	4620      	mov	r0, r4
 8005c32:	bd38      	pop	{r3, r4, r5, pc}
 8005c34:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005c36:	f000 fb87 	bl	8006348 <__retarget_lock_release_recursive>
 8005c3a:	4620      	mov	r0, r4
 8005c3c:	bd38      	pop	{r3, r4, r5, pc}
 8005c3e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005c40:	f000 fb80 	bl	8006344 <__retarget_lock_acquire_recursive>
 8005c44:	e7e0      	b.n	8005c08 <_fflush_r+0x1c>
 8005c46:	bf00      	nop

08005c48 <std>:
 8005c48:	b510      	push	{r4, lr}
 8005c4a:	2300      	movs	r3, #0
 8005c4c:	4604      	mov	r4, r0
 8005c4e:	8181      	strh	r1, [r0, #12]
 8005c50:	81c2      	strh	r2, [r0, #14]
 8005c52:	e9c0 3300 	strd	r3, r3, [r0]
 8005c56:	6083      	str	r3, [r0, #8]
 8005c58:	6643      	str	r3, [r0, #100]	; 0x64
 8005c5a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005c5e:	6183      	str	r3, [r0, #24]
 8005c60:	4619      	mov	r1, r3
 8005c62:	2208      	movs	r2, #8
 8005c64:	305c      	adds	r0, #92	; 0x5c
 8005c66:	f7fd f8bb 	bl	8002de0 <memset>
 8005c6a:	4807      	ldr	r0, [pc, #28]	; (8005c88 <std+0x40>)
 8005c6c:	4907      	ldr	r1, [pc, #28]	; (8005c8c <std+0x44>)
 8005c6e:	4a08      	ldr	r2, [pc, #32]	; (8005c90 <std+0x48>)
 8005c70:	4b08      	ldr	r3, [pc, #32]	; (8005c94 <std+0x4c>)
 8005c72:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005c74:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005c78:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005c7c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005c80:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005c84:	f000 bb5a 	b.w	800633c <__retarget_lock_init_recursive>
 8005c88:	08007461 	.word	0x08007461
 8005c8c:	08007485 	.word	0x08007485
 8005c90:	080074c1 	.word	0x080074c1
 8005c94:	080074e1 	.word	0x080074e1

08005c98 <_cleanup_r>:
 8005c98:	4901      	ldr	r1, [pc, #4]	; (8005ca0 <_cleanup_r+0x8>)
 8005c9a:	f000 bb17 	b.w	80062cc <_fwalk_reent>
 8005c9e:	bf00      	nop
 8005ca0:	08007751 	.word	0x08007751

08005ca4 <__sinit>:
 8005ca4:	b510      	push	{r4, lr}
 8005ca6:	4604      	mov	r4, r0
 8005ca8:	4812      	ldr	r0, [pc, #72]	; (8005cf4 <__sinit+0x50>)
 8005caa:	f000 fb4b 	bl	8006344 <__retarget_lock_acquire_recursive>
 8005cae:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005cb0:	b9d2      	cbnz	r2, 8005ce8 <__sinit+0x44>
 8005cb2:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005cb6:	4810      	ldr	r0, [pc, #64]	; (8005cf8 <__sinit+0x54>)
 8005cb8:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8005cbc:	2103      	movs	r1, #3
 8005cbe:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005cc2:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005cc4:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005cc8:	6860      	ldr	r0, [r4, #4]
 8005cca:	2104      	movs	r1, #4
 8005ccc:	f7ff ffbc 	bl	8005c48 <std>
 8005cd0:	2201      	movs	r2, #1
 8005cd2:	2109      	movs	r1, #9
 8005cd4:	68a0      	ldr	r0, [r4, #8]
 8005cd6:	f7ff ffb7 	bl	8005c48 <std>
 8005cda:	2202      	movs	r2, #2
 8005cdc:	2112      	movs	r1, #18
 8005cde:	68e0      	ldr	r0, [r4, #12]
 8005ce0:	f7ff ffb2 	bl	8005c48 <std>
 8005ce4:	2301      	movs	r3, #1
 8005ce6:	63a3      	str	r3, [r4, #56]	; 0x38
 8005ce8:	4802      	ldr	r0, [pc, #8]	; (8005cf4 <__sinit+0x50>)
 8005cea:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005cee:	f000 bb2b 	b.w	8006348 <__retarget_lock_release_recursive>
 8005cf2:	bf00      	nop
 8005cf4:	20000b34 	.word	0x20000b34
 8005cf8:	08005c99 	.word	0x08005c99

08005cfc <__sfp_lock_acquire>:
 8005cfc:	4801      	ldr	r0, [pc, #4]	; (8005d04 <__sfp_lock_acquire+0x8>)
 8005cfe:	f000 bb21 	b.w	8006344 <__retarget_lock_acquire_recursive>
 8005d02:	bf00      	nop
 8005d04:	20000b48 	.word	0x20000b48

08005d08 <__sfp_lock_release>:
 8005d08:	4801      	ldr	r0, [pc, #4]	; (8005d10 <__sfp_lock_release+0x8>)
 8005d0a:	f000 bb1d 	b.w	8006348 <__retarget_lock_release_recursive>
 8005d0e:	bf00      	nop
 8005d10:	20000b48 	.word	0x20000b48

08005d14 <__libc_fini_array>:
 8005d14:	b538      	push	{r3, r4, r5, lr}
 8005d16:	4c0a      	ldr	r4, [pc, #40]	; (8005d40 <__libc_fini_array+0x2c>)
 8005d18:	4d0a      	ldr	r5, [pc, #40]	; (8005d44 <__libc_fini_array+0x30>)
 8005d1a:	1b64      	subs	r4, r4, r5
 8005d1c:	10a4      	asrs	r4, r4, #2
 8005d1e:	d00a      	beq.n	8005d36 <__libc_fini_array+0x22>
 8005d20:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005d24:	3b01      	subs	r3, #1
 8005d26:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005d2a:	3c01      	subs	r4, #1
 8005d2c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005d30:	4798      	blx	r3
 8005d32:	2c00      	cmp	r4, #0
 8005d34:	d1f9      	bne.n	8005d2a <__libc_fini_array+0x16>
 8005d36:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005d3a:	f001 becb 	b.w	8007ad4 <_fini>
 8005d3e:	bf00      	nop
 8005d40:	08007ed4 	.word	0x08007ed4
 8005d44:	08007ed0 	.word	0x08007ed0

08005d48 <_malloc_trim_r>:
 8005d48:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005d4a:	4f24      	ldr	r7, [pc, #144]	; (8005ddc <_malloc_trim_r+0x94>)
 8005d4c:	460c      	mov	r4, r1
 8005d4e:	4606      	mov	r6, r0
 8005d50:	f000 fe7c 	bl	8006a4c <__malloc_lock>
 8005d54:	68bb      	ldr	r3, [r7, #8]
 8005d56:	685d      	ldr	r5, [r3, #4]
 8005d58:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005d5c:	310f      	adds	r1, #15
 8005d5e:	f025 0503 	bic.w	r5, r5, #3
 8005d62:	4429      	add	r1, r5
 8005d64:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005d68:	f021 010f 	bic.w	r1, r1, #15
 8005d6c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005d70:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005d74:	db07      	blt.n	8005d86 <_malloc_trim_r+0x3e>
 8005d76:	2100      	movs	r1, #0
 8005d78:	4630      	mov	r0, r6
 8005d7a:	f001 fb5f 	bl	800743c <_sbrk_r>
 8005d7e:	68bb      	ldr	r3, [r7, #8]
 8005d80:	442b      	add	r3, r5
 8005d82:	4298      	cmp	r0, r3
 8005d84:	d004      	beq.n	8005d90 <_malloc_trim_r+0x48>
 8005d86:	4630      	mov	r0, r6
 8005d88:	f000 fe66 	bl	8006a58 <__malloc_unlock>
 8005d8c:	2000      	movs	r0, #0
 8005d8e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005d90:	4261      	negs	r1, r4
 8005d92:	4630      	mov	r0, r6
 8005d94:	f001 fb52 	bl	800743c <_sbrk_r>
 8005d98:	3001      	adds	r0, #1
 8005d9a:	d00d      	beq.n	8005db8 <_malloc_trim_r+0x70>
 8005d9c:	4b10      	ldr	r3, [pc, #64]	; (8005de0 <_malloc_trim_r+0x98>)
 8005d9e:	68ba      	ldr	r2, [r7, #8]
 8005da0:	6819      	ldr	r1, [r3, #0]
 8005da2:	1b2d      	subs	r5, r5, r4
 8005da4:	f045 0501 	orr.w	r5, r5, #1
 8005da8:	4630      	mov	r0, r6
 8005daa:	1b09      	subs	r1, r1, r4
 8005dac:	6055      	str	r5, [r2, #4]
 8005dae:	6019      	str	r1, [r3, #0]
 8005db0:	f000 fe52 	bl	8006a58 <__malloc_unlock>
 8005db4:	2001      	movs	r0, #1
 8005db6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005db8:	2100      	movs	r1, #0
 8005dba:	4630      	mov	r0, r6
 8005dbc:	f001 fb3e 	bl	800743c <_sbrk_r>
 8005dc0:	68ba      	ldr	r2, [r7, #8]
 8005dc2:	1a83      	subs	r3, r0, r2
 8005dc4:	2b0f      	cmp	r3, #15
 8005dc6:	ddde      	ble.n	8005d86 <_malloc_trim_r+0x3e>
 8005dc8:	4c06      	ldr	r4, [pc, #24]	; (8005de4 <_malloc_trim_r+0x9c>)
 8005dca:	4905      	ldr	r1, [pc, #20]	; (8005de0 <_malloc_trim_r+0x98>)
 8005dcc:	6824      	ldr	r4, [r4, #0]
 8005dce:	f043 0301 	orr.w	r3, r3, #1
 8005dd2:	1b00      	subs	r0, r0, r4
 8005dd4:	6053      	str	r3, [r2, #4]
 8005dd6:	6008      	str	r0, [r1, #0]
 8005dd8:	e7d5      	b.n	8005d86 <_malloc_trim_r+0x3e>
 8005dda:	bf00      	nop
 8005ddc:	200005f8 	.word	0x200005f8
 8005de0:	20000aac 	.word	0x20000aac
 8005de4:	20000a00 	.word	0x20000a00

08005de8 <_free_r>:
 8005de8:	2900      	cmp	r1, #0
 8005dea:	d053      	beq.n	8005e94 <_free_r+0xac>
 8005dec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005dee:	460c      	mov	r4, r1
 8005df0:	4606      	mov	r6, r0
 8005df2:	f000 fe2b 	bl	8006a4c <__malloc_lock>
 8005df6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8005dfa:	4f71      	ldr	r7, [pc, #452]	; (8005fc0 <_free_r+0x1d8>)
 8005dfc:	f02c 0101 	bic.w	r1, ip, #1
 8005e00:	f1a4 0508 	sub.w	r5, r4, #8
 8005e04:	186b      	adds	r3, r5, r1
 8005e06:	68b8      	ldr	r0, [r7, #8]
 8005e08:	685a      	ldr	r2, [r3, #4]
 8005e0a:	4298      	cmp	r0, r3
 8005e0c:	f022 0203 	bic.w	r2, r2, #3
 8005e10:	d053      	beq.n	8005eba <_free_r+0xd2>
 8005e12:	f01c 0f01 	tst.w	ip, #1
 8005e16:	605a      	str	r2, [r3, #4]
 8005e18:	eb03 0002 	add.w	r0, r3, r2
 8005e1c:	d13b      	bne.n	8005e96 <_free_r+0xae>
 8005e1e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005e22:	6840      	ldr	r0, [r0, #4]
 8005e24:	eba5 050c 	sub.w	r5, r5, ip
 8005e28:	f107 0e08 	add.w	lr, r7, #8
 8005e2c:	68ac      	ldr	r4, [r5, #8]
 8005e2e:	4574      	cmp	r4, lr
 8005e30:	4461      	add	r1, ip
 8005e32:	f000 0001 	and.w	r0, r0, #1
 8005e36:	d075      	beq.n	8005f24 <_free_r+0x13c>
 8005e38:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005e3c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005e40:	f8cc 4008 	str.w	r4, [ip, #8]
 8005e44:	b360      	cbz	r0, 8005ea0 <_free_r+0xb8>
 8005e46:	f041 0301 	orr.w	r3, r1, #1
 8005e4a:	606b      	str	r3, [r5, #4]
 8005e4c:	5069      	str	r1, [r5, r1]
 8005e4e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005e52:	d350      	bcc.n	8005ef6 <_free_r+0x10e>
 8005e54:	0a4b      	lsrs	r3, r1, #9
 8005e56:	2b04      	cmp	r3, #4
 8005e58:	d870      	bhi.n	8005f3c <_free_r+0x154>
 8005e5a:	098b      	lsrs	r3, r1, #6
 8005e5c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005e60:	00e4      	lsls	r4, r4, #3
 8005e62:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005e66:	1938      	adds	r0, r7, r4
 8005e68:	593b      	ldr	r3, [r7, r4]
 8005e6a:	3808      	subs	r0, #8
 8005e6c:	4298      	cmp	r0, r3
 8005e6e:	d078      	beq.n	8005f62 <_free_r+0x17a>
 8005e70:	685a      	ldr	r2, [r3, #4]
 8005e72:	f022 0203 	bic.w	r2, r2, #3
 8005e76:	428a      	cmp	r2, r1
 8005e78:	d971      	bls.n	8005f5e <_free_r+0x176>
 8005e7a:	689b      	ldr	r3, [r3, #8]
 8005e7c:	4298      	cmp	r0, r3
 8005e7e:	d1f7      	bne.n	8005e70 <_free_r+0x88>
 8005e80:	68c3      	ldr	r3, [r0, #12]
 8005e82:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005e86:	609d      	str	r5, [r3, #8]
 8005e88:	60c5      	str	r5, [r0, #12]
 8005e8a:	4630      	mov	r0, r6
 8005e8c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005e90:	f000 bde2 	b.w	8006a58 <__malloc_unlock>
 8005e94:	4770      	bx	lr
 8005e96:	6840      	ldr	r0, [r0, #4]
 8005e98:	f000 0001 	and.w	r0, r0, #1
 8005e9c:	2800      	cmp	r0, #0
 8005e9e:	d1d2      	bne.n	8005e46 <_free_r+0x5e>
 8005ea0:	6898      	ldr	r0, [r3, #8]
 8005ea2:	4c48      	ldr	r4, [pc, #288]	; (8005fc4 <_free_r+0x1dc>)
 8005ea4:	4411      	add	r1, r2
 8005ea6:	42a0      	cmp	r0, r4
 8005ea8:	f041 0201 	orr.w	r2, r1, #1
 8005eac:	d062      	beq.n	8005f74 <_free_r+0x18c>
 8005eae:	68db      	ldr	r3, [r3, #12]
 8005eb0:	60c3      	str	r3, [r0, #12]
 8005eb2:	6098      	str	r0, [r3, #8]
 8005eb4:	606a      	str	r2, [r5, #4]
 8005eb6:	5069      	str	r1, [r5, r1]
 8005eb8:	e7c9      	b.n	8005e4e <_free_r+0x66>
 8005eba:	f01c 0f01 	tst.w	ip, #1
 8005ebe:	440a      	add	r2, r1
 8005ec0:	d107      	bne.n	8005ed2 <_free_r+0xea>
 8005ec2:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005ec6:	1aed      	subs	r5, r5, r3
 8005ec8:	441a      	add	r2, r3
 8005eca:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8005ece:	60cb      	str	r3, [r1, #12]
 8005ed0:	6099      	str	r1, [r3, #8]
 8005ed2:	4b3d      	ldr	r3, [pc, #244]	; (8005fc8 <_free_r+0x1e0>)
 8005ed4:	681b      	ldr	r3, [r3, #0]
 8005ed6:	f042 0101 	orr.w	r1, r2, #1
 8005eda:	4293      	cmp	r3, r2
 8005edc:	6069      	str	r1, [r5, #4]
 8005ede:	60bd      	str	r5, [r7, #8]
 8005ee0:	d804      	bhi.n	8005eec <_free_r+0x104>
 8005ee2:	4b3a      	ldr	r3, [pc, #232]	; (8005fcc <_free_r+0x1e4>)
 8005ee4:	4630      	mov	r0, r6
 8005ee6:	6819      	ldr	r1, [r3, #0]
 8005ee8:	f7ff ff2e 	bl	8005d48 <_malloc_trim_r>
 8005eec:	4630      	mov	r0, r6
 8005eee:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005ef2:	f000 bdb1 	b.w	8006a58 <__malloc_unlock>
 8005ef6:	08c9      	lsrs	r1, r1, #3
 8005ef8:	6878      	ldr	r0, [r7, #4]
 8005efa:	1c4a      	adds	r2, r1, #1
 8005efc:	2301      	movs	r3, #1
 8005efe:	1089      	asrs	r1, r1, #2
 8005f00:	408b      	lsls	r3, r1
 8005f02:	4303      	orrs	r3, r0
 8005f04:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005f08:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005f0c:	607b      	str	r3, [r7, #4]
 8005f0e:	3908      	subs	r1, #8
 8005f10:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005f14:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005f18:	60c5      	str	r5, [r0, #12]
 8005f1a:	4630      	mov	r0, r6
 8005f1c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005f20:	f000 bd9a 	b.w	8006a58 <__malloc_unlock>
 8005f24:	2800      	cmp	r0, #0
 8005f26:	d145      	bne.n	8005fb4 <_free_r+0x1cc>
 8005f28:	440a      	add	r2, r1
 8005f2a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005f2e:	f042 0001 	orr.w	r0, r2, #1
 8005f32:	60cb      	str	r3, [r1, #12]
 8005f34:	6099      	str	r1, [r3, #8]
 8005f36:	6068      	str	r0, [r5, #4]
 8005f38:	50aa      	str	r2, [r5, r2]
 8005f3a:	e7d7      	b.n	8005eec <_free_r+0x104>
 8005f3c:	2b14      	cmp	r3, #20
 8005f3e:	d908      	bls.n	8005f52 <_free_r+0x16a>
 8005f40:	2b54      	cmp	r3, #84	; 0x54
 8005f42:	d81e      	bhi.n	8005f82 <_free_r+0x19a>
 8005f44:	0b0b      	lsrs	r3, r1, #12
 8005f46:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005f4a:	00e4      	lsls	r4, r4, #3
 8005f4c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005f50:	e789      	b.n	8005e66 <_free_r+0x7e>
 8005f52:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005f56:	00e4      	lsls	r4, r4, #3
 8005f58:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005f5c:	e783      	b.n	8005e66 <_free_r+0x7e>
 8005f5e:	4618      	mov	r0, r3
 8005f60:	e78e      	b.n	8005e80 <_free_r+0x98>
 8005f62:	1093      	asrs	r3, r2, #2
 8005f64:	6879      	ldr	r1, [r7, #4]
 8005f66:	2201      	movs	r2, #1
 8005f68:	fa02 f303 	lsl.w	r3, r2, r3
 8005f6c:	430b      	orrs	r3, r1
 8005f6e:	607b      	str	r3, [r7, #4]
 8005f70:	4603      	mov	r3, r0
 8005f72:	e786      	b.n	8005e82 <_free_r+0x9a>
 8005f74:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005f78:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005f7c:	606a      	str	r2, [r5, #4]
 8005f7e:	5069      	str	r1, [r5, r1]
 8005f80:	e7b4      	b.n	8005eec <_free_r+0x104>
 8005f82:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005f86:	d806      	bhi.n	8005f96 <_free_r+0x1ae>
 8005f88:	0bcb      	lsrs	r3, r1, #15
 8005f8a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005f8e:	00e4      	lsls	r4, r4, #3
 8005f90:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005f94:	e767      	b.n	8005e66 <_free_r+0x7e>
 8005f96:	f240 5254 	movw	r2, #1364	; 0x554
 8005f9a:	4293      	cmp	r3, r2
 8005f9c:	d806      	bhi.n	8005fac <_free_r+0x1c4>
 8005f9e:	0c8b      	lsrs	r3, r1, #18
 8005fa0:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005fa4:	00e4      	lsls	r4, r4, #3
 8005fa6:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005faa:	e75c      	b.n	8005e66 <_free_r+0x7e>
 8005fac:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005fb0:	227e      	movs	r2, #126	; 0x7e
 8005fb2:	e758      	b.n	8005e66 <_free_r+0x7e>
 8005fb4:	f041 0201 	orr.w	r2, r1, #1
 8005fb8:	606a      	str	r2, [r5, #4]
 8005fba:	6019      	str	r1, [r3, #0]
 8005fbc:	e796      	b.n	8005eec <_free_r+0x104>
 8005fbe:	bf00      	nop
 8005fc0:	200005f8 	.word	0x200005f8
 8005fc4:	20000600 	.word	0x20000600
 8005fc8:	20000a04 	.word	0x20000a04
 8005fcc:	20000adc 	.word	0x20000adc

08005fd0 <__sfvwrite_r>:
 8005fd0:	6893      	ldr	r3, [r2, #8]
 8005fd2:	2b00      	cmp	r3, #0
 8005fd4:	f000 80e4 	beq.w	80061a0 <__sfvwrite_r+0x1d0>
 8005fd8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005fdc:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005fe0:	b29b      	uxth	r3, r3
 8005fe2:	460c      	mov	r4, r1
 8005fe4:	0719      	lsls	r1, r3, #28
 8005fe6:	b083      	sub	sp, #12
 8005fe8:	4682      	mov	sl, r0
 8005fea:	4690      	mov	r8, r2
 8005fec:	d535      	bpl.n	800605a <__sfvwrite_r+0x8a>
 8005fee:	6922      	ldr	r2, [r4, #16]
 8005ff0:	b39a      	cbz	r2, 800605a <__sfvwrite_r+0x8a>
 8005ff2:	f013 0202 	ands.w	r2, r3, #2
 8005ff6:	f8d8 6000 	ldr.w	r6, [r8]
 8005ffa:	d03d      	beq.n	8006078 <__sfvwrite_r+0xa8>
 8005ffc:	2700      	movs	r7, #0
 8005ffe:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8006002:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8006006:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 80062c8 <__sfvwrite_r+0x2f8>
 800600a:	463d      	mov	r5, r7
 800600c:	454d      	cmp	r5, r9
 800600e:	462b      	mov	r3, r5
 8006010:	463a      	mov	r2, r7
 8006012:	bf28      	it	cs
 8006014:	464b      	movcs	r3, r9
 8006016:	4661      	mov	r1, ip
 8006018:	4650      	mov	r0, sl
 800601a:	b1d5      	cbz	r5, 8006052 <__sfvwrite_r+0x82>
 800601c:	47d8      	blx	fp
 800601e:	2800      	cmp	r0, #0
 8006020:	f340 80c6 	ble.w	80061b0 <__sfvwrite_r+0x1e0>
 8006024:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8006028:	1a1b      	subs	r3, r3, r0
 800602a:	4407      	add	r7, r0
 800602c:	1a2d      	subs	r5, r5, r0
 800602e:	f8c8 3008 	str.w	r3, [r8, #8]
 8006032:	2b00      	cmp	r3, #0
 8006034:	f000 80b0 	beq.w	8006198 <__sfvwrite_r+0x1c8>
 8006038:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800603c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8006040:	454d      	cmp	r5, r9
 8006042:	462b      	mov	r3, r5
 8006044:	463a      	mov	r2, r7
 8006046:	bf28      	it	cs
 8006048:	464b      	movcs	r3, r9
 800604a:	4661      	mov	r1, ip
 800604c:	4650      	mov	r0, sl
 800604e:	2d00      	cmp	r5, #0
 8006050:	d1e4      	bne.n	800601c <__sfvwrite_r+0x4c>
 8006052:	e9d6 7500 	ldrd	r7, r5, [r6]
 8006056:	3608      	adds	r6, #8
 8006058:	e7d8      	b.n	800600c <__sfvwrite_r+0x3c>
 800605a:	4621      	mov	r1, r4
 800605c:	4650      	mov	r0, sl
 800605e:	f7fe fd01 	bl	8004a64 <__swsetup_r>
 8006062:	2800      	cmp	r0, #0
 8006064:	f040 812a 	bne.w	80062bc <__sfvwrite_r+0x2ec>
 8006068:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800606c:	f8d8 6000 	ldr.w	r6, [r8]
 8006070:	b29b      	uxth	r3, r3
 8006072:	f013 0202 	ands.w	r2, r3, #2
 8006076:	d1c1      	bne.n	8005ffc <__sfvwrite_r+0x2c>
 8006078:	f013 0901 	ands.w	r9, r3, #1
 800607c:	d15d      	bne.n	800613a <__sfvwrite_r+0x16a>
 800607e:	68a7      	ldr	r7, [r4, #8]
 8006080:	6820      	ldr	r0, [r4, #0]
 8006082:	464d      	mov	r5, r9
 8006084:	2d00      	cmp	r5, #0
 8006086:	d054      	beq.n	8006132 <__sfvwrite_r+0x162>
 8006088:	059a      	lsls	r2, r3, #22
 800608a:	f140 809b 	bpl.w	80061c4 <__sfvwrite_r+0x1f4>
 800608e:	42af      	cmp	r7, r5
 8006090:	46bb      	mov	fp, r7
 8006092:	f200 80d8 	bhi.w	8006246 <__sfvwrite_r+0x276>
 8006096:	f413 6f90 	tst.w	r3, #1152	; 0x480
 800609a:	d02f      	beq.n	80060fc <__sfvwrite_r+0x12c>
 800609c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80060a0:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80060a4:	eba0 0b01 	sub.w	fp, r0, r1
 80060a8:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80060ac:	1c68      	adds	r0, r5, #1
 80060ae:	107f      	asrs	r7, r7, #1
 80060b0:	4458      	add	r0, fp
 80060b2:	42b8      	cmp	r0, r7
 80060b4:	463a      	mov	r2, r7
 80060b6:	bf84      	itt	hi
 80060b8:	4607      	movhi	r7, r0
 80060ba:	463a      	movhi	r2, r7
 80060bc:	055b      	lsls	r3, r3, #21
 80060be:	f140 80d3 	bpl.w	8006268 <__sfvwrite_r+0x298>
 80060c2:	4611      	mov	r1, r2
 80060c4:	4650      	mov	r0, sl
 80060c6:	f000 f9b9 	bl	800643c <_malloc_r>
 80060ca:	2800      	cmp	r0, #0
 80060cc:	f000 80f0 	beq.w	80062b0 <__sfvwrite_r+0x2e0>
 80060d0:	465a      	mov	r2, fp
 80060d2:	6921      	ldr	r1, [r4, #16]
 80060d4:	9001      	str	r0, [sp, #4]
 80060d6:	f7fa fa63 	bl	80005a0 <memcpy>
 80060da:	89a2      	ldrh	r2, [r4, #12]
 80060dc:	9b01      	ldr	r3, [sp, #4]
 80060de:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80060e2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80060e6:	81a2      	strh	r2, [r4, #12]
 80060e8:	eba7 020b 	sub.w	r2, r7, fp
 80060ec:	eb03 000b 	add.w	r0, r3, fp
 80060f0:	6167      	str	r7, [r4, #20]
 80060f2:	6123      	str	r3, [r4, #16]
 80060f4:	6020      	str	r0, [r4, #0]
 80060f6:	60a2      	str	r2, [r4, #8]
 80060f8:	462f      	mov	r7, r5
 80060fa:	46ab      	mov	fp, r5
 80060fc:	465a      	mov	r2, fp
 80060fe:	4649      	mov	r1, r9
 8006100:	f000 fc40 	bl	8006984 <memmove>
 8006104:	68a2      	ldr	r2, [r4, #8]
 8006106:	6823      	ldr	r3, [r4, #0]
 8006108:	1bd2      	subs	r2, r2, r7
 800610a:	445b      	add	r3, fp
 800610c:	462f      	mov	r7, r5
 800610e:	60a2      	str	r2, [r4, #8]
 8006110:	6023      	str	r3, [r4, #0]
 8006112:	2500      	movs	r5, #0
 8006114:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8006118:	1bdb      	subs	r3, r3, r7
 800611a:	44b9      	add	r9, r7
 800611c:	f8c8 3008 	str.w	r3, [r8, #8]
 8006120:	2b00      	cmp	r3, #0
 8006122:	d039      	beq.n	8006198 <__sfvwrite_r+0x1c8>
 8006124:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006128:	68a7      	ldr	r7, [r4, #8]
 800612a:	6820      	ldr	r0, [r4, #0]
 800612c:	b29b      	uxth	r3, r3
 800612e:	2d00      	cmp	r5, #0
 8006130:	d1aa      	bne.n	8006088 <__sfvwrite_r+0xb8>
 8006132:	e9d6 9500 	ldrd	r9, r5, [r6]
 8006136:	3608      	adds	r6, #8
 8006138:	e7a4      	b.n	8006084 <__sfvwrite_r+0xb4>
 800613a:	4633      	mov	r3, r6
 800613c:	4691      	mov	r9, r2
 800613e:	4610      	mov	r0, r2
 8006140:	4617      	mov	r7, r2
 8006142:	464e      	mov	r6, r9
 8006144:	469b      	mov	fp, r3
 8006146:	2f00      	cmp	r7, #0
 8006148:	d06b      	beq.n	8006222 <__sfvwrite_r+0x252>
 800614a:	2800      	cmp	r0, #0
 800614c:	d071      	beq.n	8006232 <__sfvwrite_r+0x262>
 800614e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8006152:	6820      	ldr	r0, [r4, #0]
 8006154:	45b9      	cmp	r9, r7
 8006156:	464b      	mov	r3, r9
 8006158:	bf28      	it	cs
 800615a:	463b      	movcs	r3, r7
 800615c:	4288      	cmp	r0, r1
 800615e:	d903      	bls.n	8006168 <__sfvwrite_r+0x198>
 8006160:	68a5      	ldr	r5, [r4, #8]
 8006162:	4415      	add	r5, r2
 8006164:	42ab      	cmp	r3, r5
 8006166:	dc71      	bgt.n	800624c <__sfvwrite_r+0x27c>
 8006168:	429a      	cmp	r2, r3
 800616a:	f300 8093 	bgt.w	8006294 <__sfvwrite_r+0x2c4>
 800616e:	4613      	mov	r3, r2
 8006170:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8006172:	69e1      	ldr	r1, [r4, #28]
 8006174:	4632      	mov	r2, r6
 8006176:	4650      	mov	r0, sl
 8006178:	47a8      	blx	r5
 800617a:	1e05      	subs	r5, r0, #0
 800617c:	dd18      	ble.n	80061b0 <__sfvwrite_r+0x1e0>
 800617e:	ebb9 0905 	subs.w	r9, r9, r5
 8006182:	d00f      	beq.n	80061a4 <__sfvwrite_r+0x1d4>
 8006184:	2001      	movs	r0, #1
 8006186:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800618a:	1b5b      	subs	r3, r3, r5
 800618c:	442e      	add	r6, r5
 800618e:	1b7f      	subs	r7, r7, r5
 8006190:	f8c8 3008 	str.w	r3, [r8, #8]
 8006194:	2b00      	cmp	r3, #0
 8006196:	d1d6      	bne.n	8006146 <__sfvwrite_r+0x176>
 8006198:	2000      	movs	r0, #0
 800619a:	b003      	add	sp, #12
 800619c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80061a0:	2000      	movs	r0, #0
 80061a2:	4770      	bx	lr
 80061a4:	4621      	mov	r1, r4
 80061a6:	4650      	mov	r0, sl
 80061a8:	f7ff fd20 	bl	8005bec <_fflush_r>
 80061ac:	2800      	cmp	r0, #0
 80061ae:	d0ea      	beq.n	8006186 <__sfvwrite_r+0x1b6>
 80061b0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80061b4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80061b8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80061bc:	81a3      	strh	r3, [r4, #12]
 80061be:	b003      	add	sp, #12
 80061c0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80061c4:	6923      	ldr	r3, [r4, #16]
 80061c6:	4283      	cmp	r3, r0
 80061c8:	d315      	bcc.n	80061f6 <__sfvwrite_r+0x226>
 80061ca:	6961      	ldr	r1, [r4, #20]
 80061cc:	42a9      	cmp	r1, r5
 80061ce:	d812      	bhi.n	80061f6 <__sfvwrite_r+0x226>
 80061d0:	4b3c      	ldr	r3, [pc, #240]	; (80062c4 <__sfvwrite_r+0x2f4>)
 80061d2:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80061d4:	429d      	cmp	r5, r3
 80061d6:	bf94      	ite	ls
 80061d8:	462b      	movls	r3, r5
 80061da:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80061de:	464a      	mov	r2, r9
 80061e0:	fb93 f3f1 	sdiv	r3, r3, r1
 80061e4:	4650      	mov	r0, sl
 80061e6:	fb01 f303 	mul.w	r3, r1, r3
 80061ea:	69e1      	ldr	r1, [r4, #28]
 80061ec:	47b8      	blx	r7
 80061ee:	1e07      	subs	r7, r0, #0
 80061f0:	ddde      	ble.n	80061b0 <__sfvwrite_r+0x1e0>
 80061f2:	1bed      	subs	r5, r5, r7
 80061f4:	e78e      	b.n	8006114 <__sfvwrite_r+0x144>
 80061f6:	42af      	cmp	r7, r5
 80061f8:	bf28      	it	cs
 80061fa:	462f      	movcs	r7, r5
 80061fc:	463a      	mov	r2, r7
 80061fe:	4649      	mov	r1, r9
 8006200:	f000 fbc0 	bl	8006984 <memmove>
 8006204:	68a3      	ldr	r3, [r4, #8]
 8006206:	6822      	ldr	r2, [r4, #0]
 8006208:	1bdb      	subs	r3, r3, r7
 800620a:	443a      	add	r2, r7
 800620c:	60a3      	str	r3, [r4, #8]
 800620e:	6022      	str	r2, [r4, #0]
 8006210:	2b00      	cmp	r3, #0
 8006212:	d1ee      	bne.n	80061f2 <__sfvwrite_r+0x222>
 8006214:	4621      	mov	r1, r4
 8006216:	4650      	mov	r0, sl
 8006218:	f7ff fce8 	bl	8005bec <_fflush_r>
 800621c:	2800      	cmp	r0, #0
 800621e:	d0e8      	beq.n	80061f2 <__sfvwrite_r+0x222>
 8006220:	e7c6      	b.n	80061b0 <__sfvwrite_r+0x1e0>
 8006222:	f10b 0308 	add.w	r3, fp, #8
 8006226:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 800622a:	469b      	mov	fp, r3
 800622c:	3308      	adds	r3, #8
 800622e:	2f00      	cmp	r7, #0
 8006230:	d0f9      	beq.n	8006226 <__sfvwrite_r+0x256>
 8006232:	463a      	mov	r2, r7
 8006234:	210a      	movs	r1, #10
 8006236:	4630      	mov	r0, r6
 8006238:	f7fa f962 	bl	8000500 <memchr>
 800623c:	b338      	cbz	r0, 800628e <__sfvwrite_r+0x2be>
 800623e:	3001      	adds	r0, #1
 8006240:	eba0 0906 	sub.w	r9, r0, r6
 8006244:	e783      	b.n	800614e <__sfvwrite_r+0x17e>
 8006246:	462f      	mov	r7, r5
 8006248:	46ab      	mov	fp, r5
 800624a:	e757      	b.n	80060fc <__sfvwrite_r+0x12c>
 800624c:	4631      	mov	r1, r6
 800624e:	462a      	mov	r2, r5
 8006250:	f000 fb98 	bl	8006984 <memmove>
 8006254:	6823      	ldr	r3, [r4, #0]
 8006256:	442b      	add	r3, r5
 8006258:	6023      	str	r3, [r4, #0]
 800625a:	4621      	mov	r1, r4
 800625c:	4650      	mov	r0, sl
 800625e:	f7ff fcc5 	bl	8005bec <_fflush_r>
 8006262:	2800      	cmp	r0, #0
 8006264:	d08b      	beq.n	800617e <__sfvwrite_r+0x1ae>
 8006266:	e7a3      	b.n	80061b0 <__sfvwrite_r+0x1e0>
 8006268:	4650      	mov	r0, sl
 800626a:	f000 ff05 	bl	8007078 <_realloc_r>
 800626e:	4603      	mov	r3, r0
 8006270:	2800      	cmp	r0, #0
 8006272:	f47f af39 	bne.w	80060e8 <__sfvwrite_r+0x118>
 8006276:	6921      	ldr	r1, [r4, #16]
 8006278:	4650      	mov	r0, sl
 800627a:	f7ff fdb5 	bl	8005de8 <_free_r>
 800627e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006282:	220c      	movs	r2, #12
 8006284:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8006288:	f8ca 2000 	str.w	r2, [sl]
 800628c:	e792      	b.n	80061b4 <__sfvwrite_r+0x1e4>
 800628e:	f107 0901 	add.w	r9, r7, #1
 8006292:	e75c      	b.n	800614e <__sfvwrite_r+0x17e>
 8006294:	461a      	mov	r2, r3
 8006296:	4631      	mov	r1, r6
 8006298:	9301      	str	r3, [sp, #4]
 800629a:	f000 fb73 	bl	8006984 <memmove>
 800629e:	9b01      	ldr	r3, [sp, #4]
 80062a0:	68a1      	ldr	r1, [r4, #8]
 80062a2:	6822      	ldr	r2, [r4, #0]
 80062a4:	1ac9      	subs	r1, r1, r3
 80062a6:	441a      	add	r2, r3
 80062a8:	60a1      	str	r1, [r4, #8]
 80062aa:	6022      	str	r2, [r4, #0]
 80062ac:	461d      	mov	r5, r3
 80062ae:	e766      	b.n	800617e <__sfvwrite_r+0x1ae>
 80062b0:	230c      	movs	r3, #12
 80062b2:	f8ca 3000 	str.w	r3, [sl]
 80062b6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80062ba:	e77b      	b.n	80061b4 <__sfvwrite_r+0x1e4>
 80062bc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80062c0:	e76b      	b.n	800619a <__sfvwrite_r+0x1ca>
 80062c2:	bf00      	nop
 80062c4:	7ffffffe 	.word	0x7ffffffe
 80062c8:	7ffffc00 	.word	0x7ffffc00

080062cc <_fwalk_reent>:
 80062cc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80062d0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80062d4:	d01f      	beq.n	8006316 <_fwalk_reent+0x4a>
 80062d6:	4688      	mov	r8, r1
 80062d8:	4606      	mov	r6, r0
 80062da:	f04f 0900 	mov.w	r9, #0
 80062de:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 80062e2:	3d01      	subs	r5, #1
 80062e4:	d411      	bmi.n	800630a <_fwalk_reent+0x3e>
 80062e6:	89a3      	ldrh	r3, [r4, #12]
 80062e8:	2b01      	cmp	r3, #1
 80062ea:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 80062ee:	4621      	mov	r1, r4
 80062f0:	4630      	mov	r0, r6
 80062f2:	d906      	bls.n	8006302 <_fwalk_reent+0x36>
 80062f4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80062f8:	3301      	adds	r3, #1
 80062fa:	d002      	beq.n	8006302 <_fwalk_reent+0x36>
 80062fc:	47c0      	blx	r8
 80062fe:	ea49 0900 	orr.w	r9, r9, r0
 8006302:	1c6b      	adds	r3, r5, #1
 8006304:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8006308:	d1ed      	bne.n	80062e6 <_fwalk_reent+0x1a>
 800630a:	683f      	ldr	r7, [r7, #0]
 800630c:	2f00      	cmp	r7, #0
 800630e:	d1e6      	bne.n	80062de <_fwalk_reent+0x12>
 8006310:	4648      	mov	r0, r9
 8006312:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006316:	46b9      	mov	r9, r7
 8006318:	4648      	mov	r0, r9
 800631a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800631e:	bf00      	nop

08006320 <_localeconv_r>:
 8006320:	4a04      	ldr	r2, [pc, #16]	; (8006334 <_localeconv_r+0x14>)
 8006322:	4b05      	ldr	r3, [pc, #20]	; (8006338 <_localeconv_r+0x18>)
 8006324:	6812      	ldr	r2, [r2, #0]
 8006326:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8006328:	2800      	cmp	r0, #0
 800632a:	bf08      	it	eq
 800632c:	4618      	moveq	r0, r3
 800632e:	30f0      	adds	r0, #240	; 0xf0
 8006330:	4770      	bx	lr
 8006332:	bf00      	nop
 8006334:	20000058 	.word	0x20000058
 8006338:	20000488 	.word	0x20000488

0800633c <__retarget_lock_init_recursive>:
 800633c:	4770      	bx	lr
 800633e:	bf00      	nop

08006340 <__retarget_lock_close_recursive>:
 8006340:	4770      	bx	lr
 8006342:	bf00      	nop

08006344 <__retarget_lock_acquire_recursive>:
 8006344:	4770      	bx	lr
 8006346:	bf00      	nop

08006348 <__retarget_lock_release_recursive>:
 8006348:	4770      	bx	lr
 800634a:	bf00      	nop

0800634c <__swhatbuf_r>:
 800634c:	b570      	push	{r4, r5, r6, lr}
 800634e:	460c      	mov	r4, r1
 8006350:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006354:	2900      	cmp	r1, #0
 8006356:	b096      	sub	sp, #88	; 0x58
 8006358:	4615      	mov	r5, r2
 800635a:	461e      	mov	r6, r3
 800635c:	da0f      	bge.n	800637e <__swhatbuf_r+0x32>
 800635e:	89a2      	ldrh	r2, [r4, #12]
 8006360:	2300      	movs	r3, #0
 8006362:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8006366:	6033      	str	r3, [r6, #0]
 8006368:	d104      	bne.n	8006374 <__swhatbuf_r+0x28>
 800636a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800636e:	602b      	str	r3, [r5, #0]
 8006370:	b016      	add	sp, #88	; 0x58
 8006372:	bd70      	pop	{r4, r5, r6, pc}
 8006374:	2240      	movs	r2, #64	; 0x40
 8006376:	4618      	mov	r0, r3
 8006378:	602a      	str	r2, [r5, #0]
 800637a:	b016      	add	sp, #88	; 0x58
 800637c:	bd70      	pop	{r4, r5, r6, pc}
 800637e:	466a      	mov	r2, sp
 8006380:	f001 fad0 	bl	8007924 <_fstat_r>
 8006384:	2800      	cmp	r0, #0
 8006386:	dbea      	blt.n	800635e <__swhatbuf_r+0x12>
 8006388:	9b01      	ldr	r3, [sp, #4]
 800638a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 800638e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8006392:	fab3 f383 	clz	r3, r3
 8006396:	095b      	lsrs	r3, r3, #5
 8006398:	f44f 6280 	mov.w	r2, #1024	; 0x400
 800639c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80063a0:	6033      	str	r3, [r6, #0]
 80063a2:	602a      	str	r2, [r5, #0]
 80063a4:	b016      	add	sp, #88	; 0x58
 80063a6:	bd70      	pop	{r4, r5, r6, pc}

080063a8 <__smakebuf_r>:
 80063a8:	898a      	ldrh	r2, [r1, #12]
 80063aa:	0792      	lsls	r2, r2, #30
 80063ac:	460b      	mov	r3, r1
 80063ae:	d506      	bpl.n	80063be <__smakebuf_r+0x16>
 80063b0:	f101 0243 	add.w	r2, r1, #67	; 0x43
 80063b4:	2101      	movs	r1, #1
 80063b6:	601a      	str	r2, [r3, #0]
 80063b8:	e9c3 2104 	strd	r2, r1, [r3, #16]
 80063bc:	4770      	bx	lr
 80063be:	b570      	push	{r4, r5, r6, lr}
 80063c0:	b082      	sub	sp, #8
 80063c2:	ab01      	add	r3, sp, #4
 80063c4:	466a      	mov	r2, sp
 80063c6:	460c      	mov	r4, r1
 80063c8:	4605      	mov	r5, r0
 80063ca:	f7ff ffbf 	bl	800634c <__swhatbuf_r>
 80063ce:	9900      	ldr	r1, [sp, #0]
 80063d0:	4606      	mov	r6, r0
 80063d2:	4628      	mov	r0, r5
 80063d4:	f000 f832 	bl	800643c <_malloc_r>
 80063d8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80063dc:	b1d8      	cbz	r0, 8006416 <__smakebuf_r+0x6e>
 80063de:	4916      	ldr	r1, [pc, #88]	; (8006438 <__smakebuf_r+0x90>)
 80063e0:	63e9      	str	r1, [r5, #60]	; 0x3c
 80063e2:	9a01      	ldr	r2, [sp, #4]
 80063e4:	9900      	ldr	r1, [sp, #0]
 80063e6:	6020      	str	r0, [r4, #0]
 80063e8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80063ec:	81a3      	strh	r3, [r4, #12]
 80063ee:	e9c4 0104 	strd	r0, r1, [r4, #16]
 80063f2:	b91a      	cbnz	r2, 80063fc <__smakebuf_r+0x54>
 80063f4:	4333      	orrs	r3, r6
 80063f6:	81a3      	strh	r3, [r4, #12]
 80063f8:	b002      	add	sp, #8
 80063fa:	bd70      	pop	{r4, r5, r6, pc}
 80063fc:	4628      	mov	r0, r5
 80063fe:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006402:	f001 faa3 	bl	800794c <_isatty_r>
 8006406:	b1a0      	cbz	r0, 8006432 <__smakebuf_r+0x8a>
 8006408:	89a3      	ldrh	r3, [r4, #12]
 800640a:	f023 0303 	bic.w	r3, r3, #3
 800640e:	f043 0301 	orr.w	r3, r3, #1
 8006412:	b21b      	sxth	r3, r3
 8006414:	e7ee      	b.n	80063f4 <__smakebuf_r+0x4c>
 8006416:	059a      	lsls	r2, r3, #22
 8006418:	d4ee      	bmi.n	80063f8 <__smakebuf_r+0x50>
 800641a:	f023 0303 	bic.w	r3, r3, #3
 800641e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8006422:	f043 0302 	orr.w	r3, r3, #2
 8006426:	2101      	movs	r1, #1
 8006428:	81a3      	strh	r3, [r4, #12]
 800642a:	6022      	str	r2, [r4, #0]
 800642c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8006430:	e7e2      	b.n	80063f8 <__smakebuf_r+0x50>
 8006432:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006436:	e7dd      	b.n	80063f4 <__smakebuf_r+0x4c>
 8006438:	08005c99 	.word	0x08005c99

0800643c <_malloc_r>:
 800643c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006440:	f101 050b 	add.w	r5, r1, #11
 8006444:	2d16      	cmp	r5, #22
 8006446:	b083      	sub	sp, #12
 8006448:	4606      	mov	r6, r0
 800644a:	d823      	bhi.n	8006494 <_malloc_r+0x58>
 800644c:	2910      	cmp	r1, #16
 800644e:	f200 80b9 	bhi.w	80065c4 <_malloc_r+0x188>
 8006452:	f000 fafb 	bl	8006a4c <__malloc_lock>
 8006456:	2510      	movs	r5, #16
 8006458:	2318      	movs	r3, #24
 800645a:	2002      	movs	r0, #2
 800645c:	4fc5      	ldr	r7, [pc, #788]	; (8006774 <_malloc_r+0x338>)
 800645e:	443b      	add	r3, r7
 8006460:	f1a3 0208 	sub.w	r2, r3, #8
 8006464:	685c      	ldr	r4, [r3, #4]
 8006466:	4294      	cmp	r4, r2
 8006468:	f000 8166 	beq.w	8006738 <_malloc_r+0x2fc>
 800646c:	6863      	ldr	r3, [r4, #4]
 800646e:	f023 0303 	bic.w	r3, r3, #3
 8006472:	4423      	add	r3, r4
 8006474:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8006478:	685a      	ldr	r2, [r3, #4]
 800647a:	60e9      	str	r1, [r5, #12]
 800647c:	f042 0201 	orr.w	r2, r2, #1
 8006480:	608d      	str	r5, [r1, #8]
 8006482:	4630      	mov	r0, r6
 8006484:	605a      	str	r2, [r3, #4]
 8006486:	f000 fae7 	bl	8006a58 <__malloc_unlock>
 800648a:	3408      	adds	r4, #8
 800648c:	4620      	mov	r0, r4
 800648e:	b003      	add	sp, #12
 8006490:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006494:	f035 0507 	bics.w	r5, r5, #7
 8006498:	f100 8094 	bmi.w	80065c4 <_malloc_r+0x188>
 800649c:	42a9      	cmp	r1, r5
 800649e:	f200 8091 	bhi.w	80065c4 <_malloc_r+0x188>
 80064a2:	f000 fad3 	bl	8006a4c <__malloc_lock>
 80064a6:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80064aa:	f0c0 8183 	bcc.w	80067b4 <_malloc_r+0x378>
 80064ae:	0a6b      	lsrs	r3, r5, #9
 80064b0:	f000 808f 	beq.w	80065d2 <_malloc_r+0x196>
 80064b4:	2b04      	cmp	r3, #4
 80064b6:	f200 8146 	bhi.w	8006746 <_malloc_r+0x30a>
 80064ba:	09ab      	lsrs	r3, r5, #6
 80064bc:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80064c0:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80064c4:	00c3      	lsls	r3, r0, #3
 80064c6:	4fab      	ldr	r7, [pc, #684]	; (8006774 <_malloc_r+0x338>)
 80064c8:	443b      	add	r3, r7
 80064ca:	f1a3 0108 	sub.w	r1, r3, #8
 80064ce:	685c      	ldr	r4, [r3, #4]
 80064d0:	42a1      	cmp	r1, r4
 80064d2:	d106      	bne.n	80064e2 <_malloc_r+0xa6>
 80064d4:	e00c      	b.n	80064f0 <_malloc_r+0xb4>
 80064d6:	2a00      	cmp	r2, #0
 80064d8:	f280 811d 	bge.w	8006716 <_malloc_r+0x2da>
 80064dc:	68e4      	ldr	r4, [r4, #12]
 80064de:	42a1      	cmp	r1, r4
 80064e0:	d006      	beq.n	80064f0 <_malloc_r+0xb4>
 80064e2:	6863      	ldr	r3, [r4, #4]
 80064e4:	f023 0303 	bic.w	r3, r3, #3
 80064e8:	1b5a      	subs	r2, r3, r5
 80064ea:	2a0f      	cmp	r2, #15
 80064ec:	ddf3      	ble.n	80064d6 <_malloc_r+0x9a>
 80064ee:	4660      	mov	r0, ip
 80064f0:	693c      	ldr	r4, [r7, #16]
 80064f2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8006788 <_malloc_r+0x34c>
 80064f6:	4564      	cmp	r4, ip
 80064f8:	d071      	beq.n	80065de <_malloc_r+0x1a2>
 80064fa:	6863      	ldr	r3, [r4, #4]
 80064fc:	f023 0303 	bic.w	r3, r3, #3
 8006500:	1b5a      	subs	r2, r3, r5
 8006502:	2a0f      	cmp	r2, #15
 8006504:	f300 8144 	bgt.w	8006790 <_malloc_r+0x354>
 8006508:	2a00      	cmp	r2, #0
 800650a:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 800650e:	f280 8126 	bge.w	800675e <_malloc_r+0x322>
 8006512:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8006516:	f080 8169 	bcs.w	80067ec <_malloc_r+0x3b0>
 800651a:	08db      	lsrs	r3, r3, #3
 800651c:	1c59      	adds	r1, r3, #1
 800651e:	687a      	ldr	r2, [r7, #4]
 8006520:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8006524:	f8c4 8008 	str.w	r8, [r4, #8]
 8006528:	f04f 0e01 	mov.w	lr, #1
 800652c:	109b      	asrs	r3, r3, #2
 800652e:	fa0e f303 	lsl.w	r3, lr, r3
 8006532:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8006536:	4313      	orrs	r3, r2
 8006538:	f1ae 0208 	sub.w	r2, lr, #8
 800653c:	60e2      	str	r2, [r4, #12]
 800653e:	607b      	str	r3, [r7, #4]
 8006540:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8006544:	f8c8 400c 	str.w	r4, [r8, #12]
 8006548:	1082      	asrs	r2, r0, #2
 800654a:	2401      	movs	r4, #1
 800654c:	4094      	lsls	r4, r2
 800654e:	429c      	cmp	r4, r3
 8006550:	d84b      	bhi.n	80065ea <_malloc_r+0x1ae>
 8006552:	421c      	tst	r4, r3
 8006554:	d106      	bne.n	8006564 <_malloc_r+0x128>
 8006556:	f020 0003 	bic.w	r0, r0, #3
 800655a:	0064      	lsls	r4, r4, #1
 800655c:	421c      	tst	r4, r3
 800655e:	f100 0004 	add.w	r0, r0, #4
 8006562:	d0fa      	beq.n	800655a <_malloc_r+0x11e>
 8006564:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8006568:	46ce      	mov	lr, r9
 800656a:	4680      	mov	r8, r0
 800656c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8006570:	459e      	cmp	lr, r3
 8006572:	d107      	bne.n	8006584 <_malloc_r+0x148>
 8006574:	e122      	b.n	80067bc <_malloc_r+0x380>
 8006576:	2a00      	cmp	r2, #0
 8006578:	f280 8129 	bge.w	80067ce <_malloc_r+0x392>
 800657c:	68db      	ldr	r3, [r3, #12]
 800657e:	459e      	cmp	lr, r3
 8006580:	f000 811c 	beq.w	80067bc <_malloc_r+0x380>
 8006584:	6859      	ldr	r1, [r3, #4]
 8006586:	f021 0103 	bic.w	r1, r1, #3
 800658a:	1b4a      	subs	r2, r1, r5
 800658c:	2a0f      	cmp	r2, #15
 800658e:	ddf2      	ble.n	8006576 <_malloc_r+0x13a>
 8006590:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8006594:	195c      	adds	r4, r3, r5
 8006596:	f045 0501 	orr.w	r5, r5, #1
 800659a:	605d      	str	r5, [r3, #4]
 800659c:	f042 0501 	orr.w	r5, r2, #1
 80065a0:	f8c8 e00c 	str.w	lr, [r8, #12]
 80065a4:	4630      	mov	r0, r6
 80065a6:	f8ce 8008 	str.w	r8, [lr, #8]
 80065aa:	e9c7 4404 	strd	r4, r4, [r7, #16]
 80065ae:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80065b2:	6065      	str	r5, [r4, #4]
 80065b4:	505a      	str	r2, [r3, r1]
 80065b6:	9301      	str	r3, [sp, #4]
 80065b8:	f000 fa4e 	bl	8006a58 <__malloc_unlock>
 80065bc:	9b01      	ldr	r3, [sp, #4]
 80065be:	f103 0408 	add.w	r4, r3, #8
 80065c2:	e763      	b.n	800648c <_malloc_r+0x50>
 80065c4:	2400      	movs	r4, #0
 80065c6:	230c      	movs	r3, #12
 80065c8:	4620      	mov	r0, r4
 80065ca:	6033      	str	r3, [r6, #0]
 80065cc:	b003      	add	sp, #12
 80065ce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80065d2:	f44f 7300 	mov.w	r3, #512	; 0x200
 80065d6:	2040      	movs	r0, #64	; 0x40
 80065d8:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 80065dc:	e773      	b.n	80064c6 <_malloc_r+0x8a>
 80065de:	687b      	ldr	r3, [r7, #4]
 80065e0:	1082      	asrs	r2, r0, #2
 80065e2:	2401      	movs	r4, #1
 80065e4:	4094      	lsls	r4, r2
 80065e6:	429c      	cmp	r4, r3
 80065e8:	d9b3      	bls.n	8006552 <_malloc_r+0x116>
 80065ea:	68bc      	ldr	r4, [r7, #8]
 80065ec:	6863      	ldr	r3, [r4, #4]
 80065ee:	f023 0903 	bic.w	r9, r3, #3
 80065f2:	45a9      	cmp	r9, r5
 80065f4:	d303      	bcc.n	80065fe <_malloc_r+0x1c2>
 80065f6:	eba9 0305 	sub.w	r3, r9, r5
 80065fa:	2b0f      	cmp	r3, #15
 80065fc:	dc7b      	bgt.n	80066f6 <_malloc_r+0x2ba>
 80065fe:	4b5e      	ldr	r3, [pc, #376]	; (8006778 <_malloc_r+0x33c>)
 8006600:	f8df a188 	ldr.w	sl, [pc, #392]	; 800678c <_malloc_r+0x350>
 8006604:	681a      	ldr	r2, [r3, #0]
 8006606:	f8da 3000 	ldr.w	r3, [sl]
 800660a:	3301      	adds	r3, #1
 800660c:	eb05 0802 	add.w	r8, r5, r2
 8006610:	f000 8148 	beq.w	80068a4 <_malloc_r+0x468>
 8006614:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8006618:	f108 080f 	add.w	r8, r8, #15
 800661c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8006620:	f028 080f 	bic.w	r8, r8, #15
 8006624:	4641      	mov	r1, r8
 8006626:	4630      	mov	r0, r6
 8006628:	f000 ff08 	bl	800743c <_sbrk_r>
 800662c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8006630:	4683      	mov	fp, r0
 8006632:	f000 8104 	beq.w	800683e <_malloc_r+0x402>
 8006636:	eb04 0009 	add.w	r0, r4, r9
 800663a:	4558      	cmp	r0, fp
 800663c:	f200 80fd 	bhi.w	800683a <_malloc_r+0x3fe>
 8006640:	4a4e      	ldr	r2, [pc, #312]	; (800677c <_malloc_r+0x340>)
 8006642:	6813      	ldr	r3, [r2, #0]
 8006644:	4443      	add	r3, r8
 8006646:	6013      	str	r3, [r2, #0]
 8006648:	f000 814d 	beq.w	80068e6 <_malloc_r+0x4aa>
 800664c:	f8da 1000 	ldr.w	r1, [sl]
 8006650:	3101      	adds	r1, #1
 8006652:	bf1b      	ittet	ne
 8006654:	ebab 0000 	subne.w	r0, fp, r0
 8006658:	181b      	addne	r3, r3, r0
 800665a:	f8ca b000 	streq.w	fp, [sl]
 800665e:	6013      	strne	r3, [r2, #0]
 8006660:	f01b 0307 	ands.w	r3, fp, #7
 8006664:	f000 8134 	beq.w	80068d0 <_malloc_r+0x494>
 8006668:	f1c3 0108 	rsb	r1, r3, #8
 800666c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8006670:	448b      	add	fp, r1
 8006672:	3308      	adds	r3, #8
 8006674:	44d8      	add	r8, fp
 8006676:	f3c8 080b 	ubfx	r8, r8, #0, #12
 800667a:	eba3 0808 	sub.w	r8, r3, r8
 800667e:	4641      	mov	r1, r8
 8006680:	4630      	mov	r0, r6
 8006682:	9201      	str	r2, [sp, #4]
 8006684:	f000 feda 	bl	800743c <_sbrk_r>
 8006688:	1c43      	adds	r3, r0, #1
 800668a:	9a01      	ldr	r2, [sp, #4]
 800668c:	f000 8146 	beq.w	800691c <_malloc_r+0x4e0>
 8006690:	eba0 010b 	sub.w	r1, r0, fp
 8006694:	4441      	add	r1, r8
 8006696:	f041 0101 	orr.w	r1, r1, #1
 800669a:	6813      	ldr	r3, [r2, #0]
 800669c:	f8c7 b008 	str.w	fp, [r7, #8]
 80066a0:	4443      	add	r3, r8
 80066a2:	42bc      	cmp	r4, r7
 80066a4:	f8cb 1004 	str.w	r1, [fp, #4]
 80066a8:	6013      	str	r3, [r2, #0]
 80066aa:	d015      	beq.n	80066d8 <_malloc_r+0x29c>
 80066ac:	f1b9 0f0f 	cmp.w	r9, #15
 80066b0:	f240 8130 	bls.w	8006914 <_malloc_r+0x4d8>
 80066b4:	6860      	ldr	r0, [r4, #4]
 80066b6:	f1a9 010c 	sub.w	r1, r9, #12
 80066ba:	f021 0107 	bic.w	r1, r1, #7
 80066be:	f000 0001 	and.w	r0, r0, #1
 80066c2:	eb04 0c01 	add.w	ip, r4, r1
 80066c6:	4308      	orrs	r0, r1
 80066c8:	f04f 0e05 	mov.w	lr, #5
 80066cc:	290f      	cmp	r1, #15
 80066ce:	6060      	str	r0, [r4, #4]
 80066d0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 80066d4:	f200 813a 	bhi.w	800694c <_malloc_r+0x510>
 80066d8:	4a29      	ldr	r2, [pc, #164]	; (8006780 <_malloc_r+0x344>)
 80066da:	482a      	ldr	r0, [pc, #168]	; (8006784 <_malloc_r+0x348>)
 80066dc:	6811      	ldr	r1, [r2, #0]
 80066de:	68bc      	ldr	r4, [r7, #8]
 80066e0:	428b      	cmp	r3, r1
 80066e2:	6801      	ldr	r1, [r0, #0]
 80066e4:	bf88      	it	hi
 80066e6:	6013      	strhi	r3, [r2, #0]
 80066e8:	6862      	ldr	r2, [r4, #4]
 80066ea:	428b      	cmp	r3, r1
 80066ec:	f022 0203 	bic.w	r2, r2, #3
 80066f0:	bf88      	it	hi
 80066f2:	6003      	strhi	r3, [r0, #0]
 80066f4:	e0a7      	b.n	8006846 <_malloc_r+0x40a>
 80066f6:	1962      	adds	r2, r4, r5
 80066f8:	f043 0301 	orr.w	r3, r3, #1
 80066fc:	f045 0501 	orr.w	r5, r5, #1
 8006700:	6065      	str	r5, [r4, #4]
 8006702:	4630      	mov	r0, r6
 8006704:	60ba      	str	r2, [r7, #8]
 8006706:	6053      	str	r3, [r2, #4]
 8006708:	f000 f9a6 	bl	8006a58 <__malloc_unlock>
 800670c:	3408      	adds	r4, #8
 800670e:	4620      	mov	r0, r4
 8006710:	b003      	add	sp, #12
 8006712:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006716:	4423      	add	r3, r4
 8006718:	68e1      	ldr	r1, [r4, #12]
 800671a:	685a      	ldr	r2, [r3, #4]
 800671c:	68a5      	ldr	r5, [r4, #8]
 800671e:	f042 0201 	orr.w	r2, r2, #1
 8006722:	60e9      	str	r1, [r5, #12]
 8006724:	4630      	mov	r0, r6
 8006726:	608d      	str	r5, [r1, #8]
 8006728:	605a      	str	r2, [r3, #4]
 800672a:	f000 f995 	bl	8006a58 <__malloc_unlock>
 800672e:	3408      	adds	r4, #8
 8006730:	4620      	mov	r0, r4
 8006732:	b003      	add	sp, #12
 8006734:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006738:	68dc      	ldr	r4, [r3, #12]
 800673a:	42a3      	cmp	r3, r4
 800673c:	bf08      	it	eq
 800673e:	3002      	addeq	r0, #2
 8006740:	f43f aed6 	beq.w	80064f0 <_malloc_r+0xb4>
 8006744:	e692      	b.n	800646c <_malloc_r+0x30>
 8006746:	2b14      	cmp	r3, #20
 8006748:	d971      	bls.n	800682e <_malloc_r+0x3f2>
 800674a:	2b54      	cmp	r3, #84	; 0x54
 800674c:	f200 80ad 	bhi.w	80068aa <_malloc_r+0x46e>
 8006750:	0b2b      	lsrs	r3, r5, #12
 8006752:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8006756:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 800675a:	00c3      	lsls	r3, r0, #3
 800675c:	e6b3      	b.n	80064c6 <_malloc_r+0x8a>
 800675e:	4423      	add	r3, r4
 8006760:	4630      	mov	r0, r6
 8006762:	685a      	ldr	r2, [r3, #4]
 8006764:	f042 0201 	orr.w	r2, r2, #1
 8006768:	605a      	str	r2, [r3, #4]
 800676a:	3408      	adds	r4, #8
 800676c:	f000 f974 	bl	8006a58 <__malloc_unlock>
 8006770:	e68c      	b.n	800648c <_malloc_r+0x50>
 8006772:	bf00      	nop
 8006774:	200005f8 	.word	0x200005f8
 8006778:	20000adc 	.word	0x20000adc
 800677c:	20000aac 	.word	0x20000aac
 8006780:	20000ad4 	.word	0x20000ad4
 8006784:	20000ad8 	.word	0x20000ad8
 8006788:	20000600 	.word	0x20000600
 800678c:	20000a00 	.word	0x20000a00
 8006790:	1961      	adds	r1, r4, r5
 8006792:	f045 0e01 	orr.w	lr, r5, #1
 8006796:	f042 0501 	orr.w	r5, r2, #1
 800679a:	f8c4 e004 	str.w	lr, [r4, #4]
 800679e:	4630      	mov	r0, r6
 80067a0:	e9c7 1104 	strd	r1, r1, [r7, #16]
 80067a4:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 80067a8:	604d      	str	r5, [r1, #4]
 80067aa:	50e2      	str	r2, [r4, r3]
 80067ac:	f000 f954 	bl	8006a58 <__malloc_unlock>
 80067b0:	3408      	adds	r4, #8
 80067b2:	e66b      	b.n	800648c <_malloc_r+0x50>
 80067b4:	08e8      	lsrs	r0, r5, #3
 80067b6:	f105 0308 	add.w	r3, r5, #8
 80067ba:	e64f      	b.n	800645c <_malloc_r+0x20>
 80067bc:	f108 0801 	add.w	r8, r8, #1
 80067c0:	f018 0f03 	tst.w	r8, #3
 80067c4:	f10e 0e08 	add.w	lr, lr, #8
 80067c8:	f47f aed0 	bne.w	800656c <_malloc_r+0x130>
 80067cc:	e052      	b.n	8006874 <_malloc_r+0x438>
 80067ce:	4419      	add	r1, r3
 80067d0:	461c      	mov	r4, r3
 80067d2:	684a      	ldr	r2, [r1, #4]
 80067d4:	68db      	ldr	r3, [r3, #12]
 80067d6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 80067da:	f042 0201 	orr.w	r2, r2, #1
 80067de:	604a      	str	r2, [r1, #4]
 80067e0:	4630      	mov	r0, r6
 80067e2:	60eb      	str	r3, [r5, #12]
 80067e4:	609d      	str	r5, [r3, #8]
 80067e6:	f000 f937 	bl	8006a58 <__malloc_unlock>
 80067ea:	e64f      	b.n	800648c <_malloc_r+0x50>
 80067ec:	0a5a      	lsrs	r2, r3, #9
 80067ee:	2a04      	cmp	r2, #4
 80067f0:	d935      	bls.n	800685e <_malloc_r+0x422>
 80067f2:	2a14      	cmp	r2, #20
 80067f4:	d86f      	bhi.n	80068d6 <_malloc_r+0x49a>
 80067f6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 80067fa:	00c9      	lsls	r1, r1, #3
 80067fc:	325b      	adds	r2, #91	; 0x5b
 80067fe:	eb07 0e01 	add.w	lr, r7, r1
 8006802:	5879      	ldr	r1, [r7, r1]
 8006804:	f1ae 0e08 	sub.w	lr, lr, #8
 8006808:	458e      	cmp	lr, r1
 800680a:	d058      	beq.n	80068be <_malloc_r+0x482>
 800680c:	684a      	ldr	r2, [r1, #4]
 800680e:	f022 0203 	bic.w	r2, r2, #3
 8006812:	429a      	cmp	r2, r3
 8006814:	d902      	bls.n	800681c <_malloc_r+0x3e0>
 8006816:	6889      	ldr	r1, [r1, #8]
 8006818:	458e      	cmp	lr, r1
 800681a:	d1f7      	bne.n	800680c <_malloc_r+0x3d0>
 800681c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8006820:	687b      	ldr	r3, [r7, #4]
 8006822:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8006826:	f8ce 4008 	str.w	r4, [lr, #8]
 800682a:	60cc      	str	r4, [r1, #12]
 800682c:	e68c      	b.n	8006548 <_malloc_r+0x10c>
 800682e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8006832:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8006836:	00c3      	lsls	r3, r0, #3
 8006838:	e645      	b.n	80064c6 <_malloc_r+0x8a>
 800683a:	42bc      	cmp	r4, r7
 800683c:	d072      	beq.n	8006924 <_malloc_r+0x4e8>
 800683e:	68bc      	ldr	r4, [r7, #8]
 8006840:	6862      	ldr	r2, [r4, #4]
 8006842:	f022 0203 	bic.w	r2, r2, #3
 8006846:	4295      	cmp	r5, r2
 8006848:	eba2 0305 	sub.w	r3, r2, r5
 800684c:	d802      	bhi.n	8006854 <_malloc_r+0x418>
 800684e:	2b0f      	cmp	r3, #15
 8006850:	f73f af51 	bgt.w	80066f6 <_malloc_r+0x2ba>
 8006854:	4630      	mov	r0, r6
 8006856:	f000 f8ff 	bl	8006a58 <__malloc_unlock>
 800685a:	2400      	movs	r4, #0
 800685c:	e616      	b.n	800648c <_malloc_r+0x50>
 800685e:	099a      	lsrs	r2, r3, #6
 8006860:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8006864:	00c9      	lsls	r1, r1, #3
 8006866:	3238      	adds	r2, #56	; 0x38
 8006868:	e7c9      	b.n	80067fe <_malloc_r+0x3c2>
 800686a:	f8d9 9000 	ldr.w	r9, [r9]
 800686e:	4599      	cmp	r9, r3
 8006870:	f040 8083 	bne.w	800697a <_malloc_r+0x53e>
 8006874:	f010 0f03 	tst.w	r0, #3
 8006878:	f1a9 0308 	sub.w	r3, r9, #8
 800687c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8006880:	d1f3      	bne.n	800686a <_malloc_r+0x42e>
 8006882:	687b      	ldr	r3, [r7, #4]
 8006884:	ea23 0304 	bic.w	r3, r3, r4
 8006888:	607b      	str	r3, [r7, #4]
 800688a:	0064      	lsls	r4, r4, #1
 800688c:	429c      	cmp	r4, r3
 800688e:	f63f aeac 	bhi.w	80065ea <_malloc_r+0x1ae>
 8006892:	b91c      	cbnz	r4, 800689c <_malloc_r+0x460>
 8006894:	e6a9      	b.n	80065ea <_malloc_r+0x1ae>
 8006896:	0064      	lsls	r4, r4, #1
 8006898:	f108 0804 	add.w	r8, r8, #4
 800689c:	421c      	tst	r4, r3
 800689e:	d0fa      	beq.n	8006896 <_malloc_r+0x45a>
 80068a0:	4640      	mov	r0, r8
 80068a2:	e65f      	b.n	8006564 <_malloc_r+0x128>
 80068a4:	f108 0810 	add.w	r8, r8, #16
 80068a8:	e6bc      	b.n	8006624 <_malloc_r+0x1e8>
 80068aa:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80068ae:	d826      	bhi.n	80068fe <_malloc_r+0x4c2>
 80068b0:	0beb      	lsrs	r3, r5, #15
 80068b2:	f103 0078 	add.w	r0, r3, #120	; 0x78
 80068b6:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 80068ba:	00c3      	lsls	r3, r0, #3
 80068bc:	e603      	b.n	80064c6 <_malloc_r+0x8a>
 80068be:	687b      	ldr	r3, [r7, #4]
 80068c0:	1092      	asrs	r2, r2, #2
 80068c2:	f04f 0801 	mov.w	r8, #1
 80068c6:	fa08 f202 	lsl.w	r2, r8, r2
 80068ca:	4313      	orrs	r3, r2
 80068cc:	607b      	str	r3, [r7, #4]
 80068ce:	e7a8      	b.n	8006822 <_malloc_r+0x3e6>
 80068d0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80068d4:	e6ce      	b.n	8006674 <_malloc_r+0x238>
 80068d6:	2a54      	cmp	r2, #84	; 0x54
 80068d8:	d829      	bhi.n	800692e <_malloc_r+0x4f2>
 80068da:	0b1a      	lsrs	r2, r3, #12
 80068dc:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 80068e0:	00c9      	lsls	r1, r1, #3
 80068e2:	326e      	adds	r2, #110	; 0x6e
 80068e4:	e78b      	b.n	80067fe <_malloc_r+0x3c2>
 80068e6:	f3c0 010b 	ubfx	r1, r0, #0, #12
 80068ea:	2900      	cmp	r1, #0
 80068ec:	f47f aeae 	bne.w	800664c <_malloc_r+0x210>
 80068f0:	eb09 0208 	add.w	r2, r9, r8
 80068f4:	68b9      	ldr	r1, [r7, #8]
 80068f6:	f042 0201 	orr.w	r2, r2, #1
 80068fa:	604a      	str	r2, [r1, #4]
 80068fc:	e6ec      	b.n	80066d8 <_malloc_r+0x29c>
 80068fe:	f240 5254 	movw	r2, #1364	; 0x554
 8006902:	4293      	cmp	r3, r2
 8006904:	d81c      	bhi.n	8006940 <_malloc_r+0x504>
 8006906:	0cab      	lsrs	r3, r5, #18
 8006908:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 800690c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8006910:	00c3      	lsls	r3, r0, #3
 8006912:	e5d8      	b.n	80064c6 <_malloc_r+0x8a>
 8006914:	2301      	movs	r3, #1
 8006916:	f8cb 3004 	str.w	r3, [fp, #4]
 800691a:	e79b      	b.n	8006854 <_malloc_r+0x418>
 800691c:	2101      	movs	r1, #1
 800691e:	f04f 0800 	mov.w	r8, #0
 8006922:	e6ba      	b.n	800669a <_malloc_r+0x25e>
 8006924:	4a16      	ldr	r2, [pc, #88]	; (8006980 <_malloc_r+0x544>)
 8006926:	6813      	ldr	r3, [r2, #0]
 8006928:	4443      	add	r3, r8
 800692a:	6013      	str	r3, [r2, #0]
 800692c:	e68e      	b.n	800664c <_malloc_r+0x210>
 800692e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8006932:	d814      	bhi.n	800695e <_malloc_r+0x522>
 8006934:	0bda      	lsrs	r2, r3, #15
 8006936:	f102 0178 	add.w	r1, r2, #120	; 0x78
 800693a:	00c9      	lsls	r1, r1, #3
 800693c:	3277      	adds	r2, #119	; 0x77
 800693e:	e75e      	b.n	80067fe <_malloc_r+0x3c2>
 8006940:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8006944:	207f      	movs	r0, #127	; 0x7f
 8006946:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 800694a:	e5bc      	b.n	80064c6 <_malloc_r+0x8a>
 800694c:	f104 0108 	add.w	r1, r4, #8
 8006950:	4630      	mov	r0, r6
 8006952:	9201      	str	r2, [sp, #4]
 8006954:	f7ff fa48 	bl	8005de8 <_free_r>
 8006958:	9a01      	ldr	r2, [sp, #4]
 800695a:	6813      	ldr	r3, [r2, #0]
 800695c:	e6bc      	b.n	80066d8 <_malloc_r+0x29c>
 800695e:	f240 5154 	movw	r1, #1364	; 0x554
 8006962:	428a      	cmp	r2, r1
 8006964:	d805      	bhi.n	8006972 <_malloc_r+0x536>
 8006966:	0c9a      	lsrs	r2, r3, #18
 8006968:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 800696c:	00c9      	lsls	r1, r1, #3
 800696e:	327c      	adds	r2, #124	; 0x7c
 8006970:	e745      	b.n	80067fe <_malloc_r+0x3c2>
 8006972:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8006976:	227e      	movs	r2, #126	; 0x7e
 8006978:	e741      	b.n	80067fe <_malloc_r+0x3c2>
 800697a:	687b      	ldr	r3, [r7, #4]
 800697c:	e785      	b.n	800688a <_malloc_r+0x44e>
 800697e:	bf00      	nop
 8006980:	20000aac 	.word	0x20000aac

08006984 <memmove>:
 8006984:	4288      	cmp	r0, r1
 8006986:	b4f0      	push	{r4, r5, r6, r7}
 8006988:	d90d      	bls.n	80069a6 <memmove+0x22>
 800698a:	188b      	adds	r3, r1, r2
 800698c:	4283      	cmp	r3, r0
 800698e:	d90a      	bls.n	80069a6 <memmove+0x22>
 8006990:	1884      	adds	r4, r0, r2
 8006992:	b132      	cbz	r2, 80069a2 <memmove+0x1e>
 8006994:	4622      	mov	r2, r4
 8006996:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800699a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800699e:	4299      	cmp	r1, r3
 80069a0:	d1f9      	bne.n	8006996 <memmove+0x12>
 80069a2:	bcf0      	pop	{r4, r5, r6, r7}
 80069a4:	4770      	bx	lr
 80069a6:	2a0f      	cmp	r2, #15
 80069a8:	d949      	bls.n	8006a3e <memmove+0xba>
 80069aa:	ea40 0301 	orr.w	r3, r0, r1
 80069ae:	079b      	lsls	r3, r3, #30
 80069b0:	d147      	bne.n	8006a42 <memmove+0xbe>
 80069b2:	f1a2 0310 	sub.w	r3, r2, #16
 80069b6:	091b      	lsrs	r3, r3, #4
 80069b8:	f101 0720 	add.w	r7, r1, #32
 80069bc:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 80069c0:	f101 0410 	add.w	r4, r1, #16
 80069c4:	f100 0510 	add.w	r5, r0, #16
 80069c8:	f854 6c10 	ldr.w	r6, [r4, #-16]
 80069cc:	f845 6c10 	str.w	r6, [r5, #-16]
 80069d0:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 80069d4:	f845 6c0c 	str.w	r6, [r5, #-12]
 80069d8:	f854 6c08 	ldr.w	r6, [r4, #-8]
 80069dc:	f845 6c08 	str.w	r6, [r5, #-8]
 80069e0:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80069e4:	f845 6c04 	str.w	r6, [r5, #-4]
 80069e8:	3410      	adds	r4, #16
 80069ea:	42bc      	cmp	r4, r7
 80069ec:	f105 0510 	add.w	r5, r5, #16
 80069f0:	d1ea      	bne.n	80069c8 <memmove+0x44>
 80069f2:	3301      	adds	r3, #1
 80069f4:	f002 050f 	and.w	r5, r2, #15
 80069f8:	011b      	lsls	r3, r3, #4
 80069fa:	2d03      	cmp	r5, #3
 80069fc:	4419      	add	r1, r3
 80069fe:	4403      	add	r3, r0
 8006a00:	d921      	bls.n	8006a46 <memmove+0xc2>
 8006a02:	1f1f      	subs	r7, r3, #4
 8006a04:	460e      	mov	r6, r1
 8006a06:	462c      	mov	r4, r5
 8006a08:	3c04      	subs	r4, #4
 8006a0a:	f856 cb04 	ldr.w	ip, [r6], #4
 8006a0e:	f847 cf04 	str.w	ip, [r7, #4]!
 8006a12:	2c03      	cmp	r4, #3
 8006a14:	d8f8      	bhi.n	8006a08 <memmove+0x84>
 8006a16:	1f2c      	subs	r4, r5, #4
 8006a18:	f024 0403 	bic.w	r4, r4, #3
 8006a1c:	3404      	adds	r4, #4
 8006a1e:	4423      	add	r3, r4
 8006a20:	4421      	add	r1, r4
 8006a22:	f002 0203 	and.w	r2, r2, #3
 8006a26:	2a00      	cmp	r2, #0
 8006a28:	d0bb      	beq.n	80069a2 <memmove+0x1e>
 8006a2a:	3b01      	subs	r3, #1
 8006a2c:	440a      	add	r2, r1
 8006a2e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8006a32:	f803 4f01 	strb.w	r4, [r3, #1]!
 8006a36:	4291      	cmp	r1, r2
 8006a38:	d1f9      	bne.n	8006a2e <memmove+0xaa>
 8006a3a:	bcf0      	pop	{r4, r5, r6, r7}
 8006a3c:	4770      	bx	lr
 8006a3e:	4603      	mov	r3, r0
 8006a40:	e7f1      	b.n	8006a26 <memmove+0xa2>
 8006a42:	4603      	mov	r3, r0
 8006a44:	e7f1      	b.n	8006a2a <memmove+0xa6>
 8006a46:	462a      	mov	r2, r5
 8006a48:	e7ed      	b.n	8006a26 <memmove+0xa2>
 8006a4a:	bf00      	nop

08006a4c <__malloc_lock>:
 8006a4c:	4801      	ldr	r0, [pc, #4]	; (8006a54 <__malloc_lock+0x8>)
 8006a4e:	f7ff bc79 	b.w	8006344 <__retarget_lock_acquire_recursive>
 8006a52:	bf00      	nop
 8006a54:	20000b38 	.word	0x20000b38

08006a58 <__malloc_unlock>:
 8006a58:	4801      	ldr	r0, [pc, #4]	; (8006a60 <__malloc_unlock+0x8>)
 8006a5a:	f7ff bc75 	b.w	8006348 <__retarget_lock_release_recursive>
 8006a5e:	bf00      	nop
 8006a60:	20000b38 	.word	0x20000b38

08006a64 <_Balloc>:
 8006a64:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006a66:	b570      	push	{r4, r5, r6, lr}
 8006a68:	4605      	mov	r5, r0
 8006a6a:	460c      	mov	r4, r1
 8006a6c:	b14b      	cbz	r3, 8006a82 <_Balloc+0x1e>
 8006a6e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8006a72:	b180      	cbz	r0, 8006a96 <_Balloc+0x32>
 8006a74:	6802      	ldr	r2, [r0, #0]
 8006a76:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8006a7a:	2300      	movs	r3, #0
 8006a7c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006a80:	bd70      	pop	{r4, r5, r6, pc}
 8006a82:	2221      	movs	r2, #33	; 0x21
 8006a84:	2104      	movs	r1, #4
 8006a86:	f000 fe1d 	bl	80076c4 <_calloc_r>
 8006a8a:	4603      	mov	r3, r0
 8006a8c:	64e8      	str	r0, [r5, #76]	; 0x4c
 8006a8e:	2800      	cmp	r0, #0
 8006a90:	d1ed      	bne.n	8006a6e <_Balloc+0xa>
 8006a92:	2000      	movs	r0, #0
 8006a94:	bd70      	pop	{r4, r5, r6, pc}
 8006a96:	2101      	movs	r1, #1
 8006a98:	fa01 f604 	lsl.w	r6, r1, r4
 8006a9c:	1d72      	adds	r2, r6, #5
 8006a9e:	4628      	mov	r0, r5
 8006aa0:	0092      	lsls	r2, r2, #2
 8006aa2:	f000 fe0f 	bl	80076c4 <_calloc_r>
 8006aa6:	2800      	cmp	r0, #0
 8006aa8:	d0f3      	beq.n	8006a92 <_Balloc+0x2e>
 8006aaa:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8006aae:	e7e4      	b.n	8006a7a <_Balloc+0x16>

08006ab0 <_Bfree>:
 8006ab0:	b131      	cbz	r1, 8006ac0 <_Bfree+0x10>
 8006ab2:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006ab4:	684a      	ldr	r2, [r1, #4]
 8006ab6:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8006aba:	6008      	str	r0, [r1, #0]
 8006abc:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006ac0:	4770      	bx	lr
 8006ac2:	bf00      	nop

08006ac4 <__multadd>:
 8006ac4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006ac6:	690c      	ldr	r4, [r1, #16]
 8006ac8:	b083      	sub	sp, #12
 8006aca:	460d      	mov	r5, r1
 8006acc:	4606      	mov	r6, r0
 8006ace:	f101 0c14 	add.w	ip, r1, #20
 8006ad2:	2700      	movs	r7, #0
 8006ad4:	f8dc 0000 	ldr.w	r0, [ip]
 8006ad8:	b281      	uxth	r1, r0
 8006ada:	fb02 3301 	mla	r3, r2, r1, r3
 8006ade:	0c01      	lsrs	r1, r0, #16
 8006ae0:	0c18      	lsrs	r0, r3, #16
 8006ae2:	fb02 0101 	mla	r1, r2, r1, r0
 8006ae6:	b29b      	uxth	r3, r3
 8006ae8:	3701      	adds	r7, #1
 8006aea:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8006aee:	42bc      	cmp	r4, r7
 8006af0:	f84c 3b04 	str.w	r3, [ip], #4
 8006af4:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006af8:	dcec      	bgt.n	8006ad4 <__multadd+0x10>
 8006afa:	b13b      	cbz	r3, 8006b0c <__multadd+0x48>
 8006afc:	68aa      	ldr	r2, [r5, #8]
 8006afe:	42a2      	cmp	r2, r4
 8006b00:	dd07      	ble.n	8006b12 <__multadd+0x4e>
 8006b02:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8006b06:	3401      	adds	r4, #1
 8006b08:	6153      	str	r3, [r2, #20]
 8006b0a:	612c      	str	r4, [r5, #16]
 8006b0c:	4628      	mov	r0, r5
 8006b0e:	b003      	add	sp, #12
 8006b10:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006b12:	6869      	ldr	r1, [r5, #4]
 8006b14:	9301      	str	r3, [sp, #4]
 8006b16:	3101      	adds	r1, #1
 8006b18:	4630      	mov	r0, r6
 8006b1a:	f7ff ffa3 	bl	8006a64 <_Balloc>
 8006b1e:	692a      	ldr	r2, [r5, #16]
 8006b20:	3202      	adds	r2, #2
 8006b22:	f105 010c 	add.w	r1, r5, #12
 8006b26:	4607      	mov	r7, r0
 8006b28:	0092      	lsls	r2, r2, #2
 8006b2a:	300c      	adds	r0, #12
 8006b2c:	f7f9 fd38 	bl	80005a0 <memcpy>
 8006b30:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006b32:	6869      	ldr	r1, [r5, #4]
 8006b34:	9b01      	ldr	r3, [sp, #4]
 8006b36:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8006b3a:	6028      	str	r0, [r5, #0]
 8006b3c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006b40:	463d      	mov	r5, r7
 8006b42:	e7de      	b.n	8006b02 <__multadd+0x3e>

08006b44 <__hi0bits>:
 8006b44:	0c02      	lsrs	r2, r0, #16
 8006b46:	0412      	lsls	r2, r2, #16
 8006b48:	4603      	mov	r3, r0
 8006b4a:	b9c2      	cbnz	r2, 8006b7e <__hi0bits+0x3a>
 8006b4c:	0403      	lsls	r3, r0, #16
 8006b4e:	2010      	movs	r0, #16
 8006b50:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006b54:	bf04      	itt	eq
 8006b56:	021b      	lsleq	r3, r3, #8
 8006b58:	3008      	addeq	r0, #8
 8006b5a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8006b5e:	bf04      	itt	eq
 8006b60:	011b      	lsleq	r3, r3, #4
 8006b62:	3004      	addeq	r0, #4
 8006b64:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006b68:	bf04      	itt	eq
 8006b6a:	009b      	lsleq	r3, r3, #2
 8006b6c:	3002      	addeq	r0, #2
 8006b6e:	2b00      	cmp	r3, #0
 8006b70:	db04      	blt.n	8006b7c <__hi0bits+0x38>
 8006b72:	005b      	lsls	r3, r3, #1
 8006b74:	d501      	bpl.n	8006b7a <__hi0bits+0x36>
 8006b76:	3001      	adds	r0, #1
 8006b78:	4770      	bx	lr
 8006b7a:	2020      	movs	r0, #32
 8006b7c:	4770      	bx	lr
 8006b7e:	2000      	movs	r0, #0
 8006b80:	e7e6      	b.n	8006b50 <__hi0bits+0xc>
 8006b82:	bf00      	nop

08006b84 <__lo0bits>:
 8006b84:	6803      	ldr	r3, [r0, #0]
 8006b86:	f013 0207 	ands.w	r2, r3, #7
 8006b8a:	4601      	mov	r1, r0
 8006b8c:	d007      	beq.n	8006b9e <__lo0bits+0x1a>
 8006b8e:	07da      	lsls	r2, r3, #31
 8006b90:	d41f      	bmi.n	8006bd2 <__lo0bits+0x4e>
 8006b92:	0798      	lsls	r0, r3, #30
 8006b94:	d51f      	bpl.n	8006bd6 <__lo0bits+0x52>
 8006b96:	085b      	lsrs	r3, r3, #1
 8006b98:	600b      	str	r3, [r1, #0]
 8006b9a:	2001      	movs	r0, #1
 8006b9c:	4770      	bx	lr
 8006b9e:	b298      	uxth	r0, r3
 8006ba0:	b1a0      	cbz	r0, 8006bcc <__lo0bits+0x48>
 8006ba2:	4610      	mov	r0, r2
 8006ba4:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006ba8:	bf04      	itt	eq
 8006baa:	0a1b      	lsreq	r3, r3, #8
 8006bac:	3008      	addeq	r0, #8
 8006bae:	071a      	lsls	r2, r3, #28
 8006bb0:	bf04      	itt	eq
 8006bb2:	091b      	lsreq	r3, r3, #4
 8006bb4:	3004      	addeq	r0, #4
 8006bb6:	079a      	lsls	r2, r3, #30
 8006bb8:	bf04      	itt	eq
 8006bba:	089b      	lsreq	r3, r3, #2
 8006bbc:	3002      	addeq	r0, #2
 8006bbe:	07da      	lsls	r2, r3, #31
 8006bc0:	d402      	bmi.n	8006bc8 <__lo0bits+0x44>
 8006bc2:	085b      	lsrs	r3, r3, #1
 8006bc4:	d00b      	beq.n	8006bde <__lo0bits+0x5a>
 8006bc6:	3001      	adds	r0, #1
 8006bc8:	600b      	str	r3, [r1, #0]
 8006bca:	4770      	bx	lr
 8006bcc:	0c1b      	lsrs	r3, r3, #16
 8006bce:	2010      	movs	r0, #16
 8006bd0:	e7e8      	b.n	8006ba4 <__lo0bits+0x20>
 8006bd2:	2000      	movs	r0, #0
 8006bd4:	4770      	bx	lr
 8006bd6:	089b      	lsrs	r3, r3, #2
 8006bd8:	600b      	str	r3, [r1, #0]
 8006bda:	2002      	movs	r0, #2
 8006bdc:	4770      	bx	lr
 8006bde:	2020      	movs	r0, #32
 8006be0:	4770      	bx	lr
 8006be2:	bf00      	nop

08006be4 <__i2b>:
 8006be4:	b510      	push	{r4, lr}
 8006be6:	460c      	mov	r4, r1
 8006be8:	2101      	movs	r1, #1
 8006bea:	f7ff ff3b 	bl	8006a64 <_Balloc>
 8006bee:	2201      	movs	r2, #1
 8006bf0:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8006bf4:	bd10      	pop	{r4, pc}
 8006bf6:	bf00      	nop

08006bf8 <__multiply>:
 8006bf8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006bfc:	690e      	ldr	r6, [r1, #16]
 8006bfe:	6914      	ldr	r4, [r2, #16]
 8006c00:	42a6      	cmp	r6, r4
 8006c02:	b083      	sub	sp, #12
 8006c04:	460f      	mov	r7, r1
 8006c06:	4615      	mov	r5, r2
 8006c08:	da04      	bge.n	8006c14 <__multiply+0x1c>
 8006c0a:	4632      	mov	r2, r6
 8006c0c:	462f      	mov	r7, r5
 8006c0e:	4626      	mov	r6, r4
 8006c10:	460d      	mov	r5, r1
 8006c12:	4614      	mov	r4, r2
 8006c14:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006c18:	eb06 0804 	add.w	r8, r6, r4
 8006c1c:	4543      	cmp	r3, r8
 8006c1e:	bfb8      	it	lt
 8006c20:	3101      	addlt	r1, #1
 8006c22:	f7ff ff1f 	bl	8006a64 <_Balloc>
 8006c26:	f100 0914 	add.w	r9, r0, #20
 8006c2a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8006c2e:	45f1      	cmp	r9, lr
 8006c30:	9000      	str	r0, [sp, #0]
 8006c32:	d205      	bcs.n	8006c40 <__multiply+0x48>
 8006c34:	464b      	mov	r3, r9
 8006c36:	2200      	movs	r2, #0
 8006c38:	f843 2b04 	str.w	r2, [r3], #4
 8006c3c:	459e      	cmp	lr, r3
 8006c3e:	d8fb      	bhi.n	8006c38 <__multiply+0x40>
 8006c40:	f105 0a14 	add.w	sl, r5, #20
 8006c44:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006c48:	f107 0314 	add.w	r3, r7, #20
 8006c4c:	45a2      	cmp	sl, r4
 8006c4e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006c52:	d261      	bcs.n	8006d18 <__multiply+0x120>
 8006c54:	1b64      	subs	r4, r4, r5
 8006c56:	3c15      	subs	r4, #21
 8006c58:	f024 0403 	bic.w	r4, r4, #3
 8006c5c:	f8cd e004 	str.w	lr, [sp, #4]
 8006c60:	44a2      	add	sl, r4
 8006c62:	f105 0210 	add.w	r2, r5, #16
 8006c66:	469e      	mov	lr, r3
 8006c68:	e005      	b.n	8006c76 <__multiply+0x7e>
 8006c6a:	0c2d      	lsrs	r5, r5, #16
 8006c6c:	d12b      	bne.n	8006cc6 <__multiply+0xce>
 8006c6e:	4592      	cmp	sl, r2
 8006c70:	f109 0904 	add.w	r9, r9, #4
 8006c74:	d04e      	beq.n	8006d14 <__multiply+0x11c>
 8006c76:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8006c7a:	fa1f fb85 	uxth.w	fp, r5
 8006c7e:	f1bb 0f00 	cmp.w	fp, #0
 8006c82:	d0f2      	beq.n	8006c6a <__multiply+0x72>
 8006c84:	4677      	mov	r7, lr
 8006c86:	464e      	mov	r6, r9
 8006c88:	2000      	movs	r0, #0
 8006c8a:	e000      	b.n	8006c8e <__multiply+0x96>
 8006c8c:	4626      	mov	r6, r4
 8006c8e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006c92:	6834      	ldr	r4, [r6, #0]
 8006c94:	b28b      	uxth	r3, r1
 8006c96:	b2a5      	uxth	r5, r4
 8006c98:	0c09      	lsrs	r1, r1, #16
 8006c9a:	0c24      	lsrs	r4, r4, #16
 8006c9c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006ca0:	4403      	add	r3, r0
 8006ca2:	fb0b 4001 	mla	r0, fp, r1, r4
 8006ca6:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8006caa:	4634      	mov	r4, r6
 8006cac:	b29b      	uxth	r3, r3
 8006cae:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006cb2:	45bc      	cmp	ip, r7
 8006cb4:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006cb8:	f844 3b04 	str.w	r3, [r4], #4
 8006cbc:	d8e6      	bhi.n	8006c8c <__multiply+0x94>
 8006cbe:	6070      	str	r0, [r6, #4]
 8006cc0:	6815      	ldr	r5, [r2, #0]
 8006cc2:	0c2d      	lsrs	r5, r5, #16
 8006cc4:	d0d3      	beq.n	8006c6e <__multiply+0x76>
 8006cc6:	f8d9 3000 	ldr.w	r3, [r9]
 8006cca:	4676      	mov	r6, lr
 8006ccc:	4618      	mov	r0, r3
 8006cce:	46cb      	mov	fp, r9
 8006cd0:	2100      	movs	r1, #0
 8006cd2:	e000      	b.n	8006cd6 <__multiply+0xde>
 8006cd4:	46a3      	mov	fp, r4
 8006cd6:	8834      	ldrh	r4, [r6, #0]
 8006cd8:	0c00      	lsrs	r0, r0, #16
 8006cda:	fb05 0004 	mla	r0, r5, r4, r0
 8006cde:	4401      	add	r1, r0
 8006ce0:	b29b      	uxth	r3, r3
 8006ce2:	465c      	mov	r4, fp
 8006ce4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006ce8:	f844 3b04 	str.w	r3, [r4], #4
 8006cec:	f856 3b04 	ldr.w	r3, [r6], #4
 8006cf0:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006cf4:	0c1b      	lsrs	r3, r3, #16
 8006cf6:	b287      	uxth	r7, r0
 8006cf8:	fb05 7303 	mla	r3, r5, r3, r7
 8006cfc:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006d00:	45b4      	cmp	ip, r6
 8006d02:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006d06:	d8e5      	bhi.n	8006cd4 <__multiply+0xdc>
 8006d08:	4592      	cmp	sl, r2
 8006d0a:	f8cb 3004 	str.w	r3, [fp, #4]
 8006d0e:	f109 0904 	add.w	r9, r9, #4
 8006d12:	d1b0      	bne.n	8006c76 <__multiply+0x7e>
 8006d14:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006d18:	f1b8 0f00 	cmp.w	r8, #0
 8006d1c:	dd0b      	ble.n	8006d36 <__multiply+0x13e>
 8006d1e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006d22:	f1ae 0e04 	sub.w	lr, lr, #4
 8006d26:	b11b      	cbz	r3, 8006d30 <__multiply+0x138>
 8006d28:	e005      	b.n	8006d36 <__multiply+0x13e>
 8006d2a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006d2e:	b913      	cbnz	r3, 8006d36 <__multiply+0x13e>
 8006d30:	f1b8 0801 	subs.w	r8, r8, #1
 8006d34:	d1f9      	bne.n	8006d2a <__multiply+0x132>
 8006d36:	9800      	ldr	r0, [sp, #0]
 8006d38:	f8c0 8010 	str.w	r8, [r0, #16]
 8006d3c:	b003      	add	sp, #12
 8006d3e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006d42:	bf00      	nop

08006d44 <__pow5mult>:
 8006d44:	f012 0303 	ands.w	r3, r2, #3
 8006d48:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006d4c:	4614      	mov	r4, r2
 8006d4e:	4607      	mov	r7, r0
 8006d50:	d12e      	bne.n	8006db0 <__pow5mult+0x6c>
 8006d52:	460d      	mov	r5, r1
 8006d54:	10a4      	asrs	r4, r4, #2
 8006d56:	d01c      	beq.n	8006d92 <__pow5mult+0x4e>
 8006d58:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8006d5a:	b396      	cbz	r6, 8006dc2 <__pow5mult+0x7e>
 8006d5c:	07e3      	lsls	r3, r4, #31
 8006d5e:	f04f 0800 	mov.w	r8, #0
 8006d62:	d406      	bmi.n	8006d72 <__pow5mult+0x2e>
 8006d64:	1064      	asrs	r4, r4, #1
 8006d66:	d014      	beq.n	8006d92 <__pow5mult+0x4e>
 8006d68:	6830      	ldr	r0, [r6, #0]
 8006d6a:	b1a8      	cbz	r0, 8006d98 <__pow5mult+0x54>
 8006d6c:	4606      	mov	r6, r0
 8006d6e:	07e3      	lsls	r3, r4, #31
 8006d70:	d5f8      	bpl.n	8006d64 <__pow5mult+0x20>
 8006d72:	4632      	mov	r2, r6
 8006d74:	4629      	mov	r1, r5
 8006d76:	4638      	mov	r0, r7
 8006d78:	f7ff ff3e 	bl	8006bf8 <__multiply>
 8006d7c:	b1b5      	cbz	r5, 8006dac <__pow5mult+0x68>
 8006d7e:	686a      	ldr	r2, [r5, #4]
 8006d80:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006d82:	1064      	asrs	r4, r4, #1
 8006d84:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006d88:	6029      	str	r1, [r5, #0]
 8006d8a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006d8e:	4605      	mov	r5, r0
 8006d90:	d1ea      	bne.n	8006d68 <__pow5mult+0x24>
 8006d92:	4628      	mov	r0, r5
 8006d94:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006d98:	4632      	mov	r2, r6
 8006d9a:	4631      	mov	r1, r6
 8006d9c:	4638      	mov	r0, r7
 8006d9e:	f7ff ff2b 	bl	8006bf8 <__multiply>
 8006da2:	6030      	str	r0, [r6, #0]
 8006da4:	f8c0 8000 	str.w	r8, [r0]
 8006da8:	4606      	mov	r6, r0
 8006daa:	e7e0      	b.n	8006d6e <__pow5mult+0x2a>
 8006dac:	4605      	mov	r5, r0
 8006dae:	e7d9      	b.n	8006d64 <__pow5mult+0x20>
 8006db0:	3b01      	subs	r3, #1
 8006db2:	4a0b      	ldr	r2, [pc, #44]	; (8006de0 <__pow5mult+0x9c>)
 8006db4:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006db8:	2300      	movs	r3, #0
 8006dba:	f7ff fe83 	bl	8006ac4 <__multadd>
 8006dbe:	4605      	mov	r5, r0
 8006dc0:	e7c8      	b.n	8006d54 <__pow5mult+0x10>
 8006dc2:	2101      	movs	r1, #1
 8006dc4:	4638      	mov	r0, r7
 8006dc6:	f7ff fe4d 	bl	8006a64 <_Balloc>
 8006dca:	f240 2371 	movw	r3, #625	; 0x271
 8006dce:	6143      	str	r3, [r0, #20]
 8006dd0:	2201      	movs	r2, #1
 8006dd2:	2300      	movs	r3, #0
 8006dd4:	6102      	str	r2, [r0, #16]
 8006dd6:	4606      	mov	r6, r0
 8006dd8:	64b8      	str	r0, [r7, #72]	; 0x48
 8006dda:	6003      	str	r3, [r0, #0]
 8006ddc:	e7be      	b.n	8006d5c <__pow5mult+0x18>
 8006dde:	bf00      	nop
 8006de0:	08007eb0 	.word	0x08007eb0

08006de4 <__lshift>:
 8006de4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006de8:	4691      	mov	r9, r2
 8006dea:	690a      	ldr	r2, [r1, #16]
 8006dec:	460e      	mov	r6, r1
 8006dee:	ea4f 1469 	mov.w	r4, r9, asr #5
 8006df2:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8006df6:	eb04 0802 	add.w	r8, r4, r2
 8006dfa:	f108 0501 	add.w	r5, r8, #1
 8006dfe:	429d      	cmp	r5, r3
 8006e00:	4607      	mov	r7, r0
 8006e02:	dd04      	ble.n	8006e0e <__lshift+0x2a>
 8006e04:	005b      	lsls	r3, r3, #1
 8006e06:	429d      	cmp	r5, r3
 8006e08:	f101 0101 	add.w	r1, r1, #1
 8006e0c:	dcfa      	bgt.n	8006e04 <__lshift+0x20>
 8006e0e:	4638      	mov	r0, r7
 8006e10:	f7ff fe28 	bl	8006a64 <_Balloc>
 8006e14:	2c00      	cmp	r4, #0
 8006e16:	f100 0314 	add.w	r3, r0, #20
 8006e1a:	dd37      	ble.n	8006e8c <__lshift+0xa8>
 8006e1c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006e20:	2200      	movs	r2, #0
 8006e22:	f843 2b04 	str.w	r2, [r3], #4
 8006e26:	428b      	cmp	r3, r1
 8006e28:	d1fb      	bne.n	8006e22 <__lshift+0x3e>
 8006e2a:	6934      	ldr	r4, [r6, #16]
 8006e2c:	f106 0314 	add.w	r3, r6, #20
 8006e30:	f019 091f 	ands.w	r9, r9, #31
 8006e34:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006e38:	d020      	beq.n	8006e7c <__lshift+0x98>
 8006e3a:	f1c9 0e20 	rsb	lr, r9, #32
 8006e3e:	2200      	movs	r2, #0
 8006e40:	e000      	b.n	8006e44 <__lshift+0x60>
 8006e42:	4651      	mov	r1, sl
 8006e44:	681c      	ldr	r4, [r3, #0]
 8006e46:	468a      	mov	sl, r1
 8006e48:	fa04 f409 	lsl.w	r4, r4, r9
 8006e4c:	4314      	orrs	r4, r2
 8006e4e:	f84a 4b04 	str.w	r4, [sl], #4
 8006e52:	f853 2b04 	ldr.w	r2, [r3], #4
 8006e56:	4563      	cmp	r3, ip
 8006e58:	fa22 f20e 	lsr.w	r2, r2, lr
 8006e5c:	d3f1      	bcc.n	8006e42 <__lshift+0x5e>
 8006e5e:	604a      	str	r2, [r1, #4]
 8006e60:	b10a      	cbz	r2, 8006e66 <__lshift+0x82>
 8006e62:	f108 0502 	add.w	r5, r8, #2
 8006e66:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006e68:	6872      	ldr	r2, [r6, #4]
 8006e6a:	3d01      	subs	r5, #1
 8006e6c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006e70:	6105      	str	r5, [r0, #16]
 8006e72:	6031      	str	r1, [r6, #0]
 8006e74:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006e78:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006e7c:	3904      	subs	r1, #4
 8006e7e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006e82:	f841 2f04 	str.w	r2, [r1, #4]!
 8006e86:	459c      	cmp	ip, r3
 8006e88:	d8f9      	bhi.n	8006e7e <__lshift+0x9a>
 8006e8a:	e7ec      	b.n	8006e66 <__lshift+0x82>
 8006e8c:	4619      	mov	r1, r3
 8006e8e:	e7cc      	b.n	8006e2a <__lshift+0x46>

08006e90 <__mcmp>:
 8006e90:	b430      	push	{r4, r5}
 8006e92:	690b      	ldr	r3, [r1, #16]
 8006e94:	4605      	mov	r5, r0
 8006e96:	6900      	ldr	r0, [r0, #16]
 8006e98:	1ac0      	subs	r0, r0, r3
 8006e9a:	d10f      	bne.n	8006ebc <__mcmp+0x2c>
 8006e9c:	009b      	lsls	r3, r3, #2
 8006e9e:	3514      	adds	r5, #20
 8006ea0:	3114      	adds	r1, #20
 8006ea2:	4419      	add	r1, r3
 8006ea4:	442b      	add	r3, r5
 8006ea6:	e001      	b.n	8006eac <__mcmp+0x1c>
 8006ea8:	429d      	cmp	r5, r3
 8006eaa:	d207      	bcs.n	8006ebc <__mcmp+0x2c>
 8006eac:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006eb0:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006eb4:	4294      	cmp	r4, r2
 8006eb6:	d0f7      	beq.n	8006ea8 <__mcmp+0x18>
 8006eb8:	d302      	bcc.n	8006ec0 <__mcmp+0x30>
 8006eba:	2001      	movs	r0, #1
 8006ebc:	bc30      	pop	{r4, r5}
 8006ebe:	4770      	bx	lr
 8006ec0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006ec4:	e7fa      	b.n	8006ebc <__mcmp+0x2c>
 8006ec6:	bf00      	nop

08006ec8 <__mdiff>:
 8006ec8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006ecc:	6913      	ldr	r3, [r2, #16]
 8006ece:	690d      	ldr	r5, [r1, #16]
 8006ed0:	1aed      	subs	r5, r5, r3
 8006ed2:	2d00      	cmp	r5, #0
 8006ed4:	460e      	mov	r6, r1
 8006ed6:	4690      	mov	r8, r2
 8006ed8:	f101 0414 	add.w	r4, r1, #20
 8006edc:	f102 0714 	add.w	r7, r2, #20
 8006ee0:	d114      	bne.n	8006f0c <__mdiff+0x44>
 8006ee2:	009b      	lsls	r3, r3, #2
 8006ee4:	18e2      	adds	r2, r4, r3
 8006ee6:	443b      	add	r3, r7
 8006ee8:	e001      	b.n	8006eee <__mdiff+0x26>
 8006eea:	42a2      	cmp	r2, r4
 8006eec:	d959      	bls.n	8006fa2 <__mdiff+0xda>
 8006eee:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006ef2:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006ef6:	458c      	cmp	ip, r1
 8006ef8:	d0f7      	beq.n	8006eea <__mdiff+0x22>
 8006efa:	d209      	bcs.n	8006f10 <__mdiff+0x48>
 8006efc:	4622      	mov	r2, r4
 8006efe:	4633      	mov	r3, r6
 8006f00:	463c      	mov	r4, r7
 8006f02:	4646      	mov	r6, r8
 8006f04:	4617      	mov	r7, r2
 8006f06:	4698      	mov	r8, r3
 8006f08:	2501      	movs	r5, #1
 8006f0a:	e001      	b.n	8006f10 <__mdiff+0x48>
 8006f0c:	dbf6      	blt.n	8006efc <__mdiff+0x34>
 8006f0e:	2500      	movs	r5, #0
 8006f10:	6871      	ldr	r1, [r6, #4]
 8006f12:	f7ff fda7 	bl	8006a64 <_Balloc>
 8006f16:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006f1a:	6936      	ldr	r6, [r6, #16]
 8006f1c:	60c5      	str	r5, [r0, #12]
 8006f1e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006f22:	46bc      	mov	ip, r7
 8006f24:	f100 0514 	add.w	r5, r0, #20
 8006f28:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006f2c:	2300      	movs	r3, #0
 8006f2e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006f32:	f854 8b04 	ldr.w	r8, [r4], #4
 8006f36:	b28a      	uxth	r2, r1
 8006f38:	fa13 f388 	uxtah	r3, r3, r8
 8006f3c:	0c09      	lsrs	r1, r1, #16
 8006f3e:	1a9a      	subs	r2, r3, r2
 8006f40:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006f44:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006f48:	b292      	uxth	r2, r2
 8006f4a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006f4e:	45e6      	cmp	lr, ip
 8006f50:	f845 2b04 	str.w	r2, [r5], #4
 8006f54:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006f58:	d8e9      	bhi.n	8006f2e <__mdiff+0x66>
 8006f5a:	42a7      	cmp	r7, r4
 8006f5c:	d917      	bls.n	8006f8e <__mdiff+0xc6>
 8006f5e:	46ae      	mov	lr, r5
 8006f60:	46a4      	mov	ip, r4
 8006f62:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006f66:	fa13 f382 	uxtah	r3, r3, r2
 8006f6a:	1419      	asrs	r1, r3, #16
 8006f6c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006f70:	b29b      	uxth	r3, r3
 8006f72:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006f76:	4567      	cmp	r7, ip
 8006f78:	f84e 2b04 	str.w	r2, [lr], #4
 8006f7c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006f80:	d8ef      	bhi.n	8006f62 <__mdiff+0x9a>
 8006f82:	43e4      	mvns	r4, r4
 8006f84:	4427      	add	r7, r4
 8006f86:	f027 0703 	bic.w	r7, r7, #3
 8006f8a:	3704      	adds	r7, #4
 8006f8c:	443d      	add	r5, r7
 8006f8e:	3d04      	subs	r5, #4
 8006f90:	b922      	cbnz	r2, 8006f9c <__mdiff+0xd4>
 8006f92:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006f96:	3e01      	subs	r6, #1
 8006f98:	2b00      	cmp	r3, #0
 8006f9a:	d0fa      	beq.n	8006f92 <__mdiff+0xca>
 8006f9c:	6106      	str	r6, [r0, #16]
 8006f9e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006fa2:	2100      	movs	r1, #0
 8006fa4:	f7ff fd5e 	bl	8006a64 <_Balloc>
 8006fa8:	2201      	movs	r2, #1
 8006faa:	2300      	movs	r3, #0
 8006fac:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006fb0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006fb4 <__d2b>:
 8006fb4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006fb8:	460f      	mov	r7, r1
 8006fba:	b083      	sub	sp, #12
 8006fbc:	2101      	movs	r1, #1
 8006fbe:	ec55 4b10 	vmov	r4, r5, d0
 8006fc2:	4616      	mov	r6, r2
 8006fc4:	f7ff fd4e 	bl	8006a64 <_Balloc>
 8006fc8:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8006fcc:	4681      	mov	r9, r0
 8006fce:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006fd2:	f1b8 0f00 	cmp.w	r8, #0
 8006fd6:	d001      	beq.n	8006fdc <__d2b+0x28>
 8006fd8:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006fdc:	2c00      	cmp	r4, #0
 8006fde:	9301      	str	r3, [sp, #4]
 8006fe0:	d024      	beq.n	800702c <__d2b+0x78>
 8006fe2:	a802      	add	r0, sp, #8
 8006fe4:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006fe8:	f7ff fdcc 	bl	8006b84 <__lo0bits>
 8006fec:	2800      	cmp	r0, #0
 8006fee:	d136      	bne.n	800705e <__d2b+0xaa>
 8006ff0:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006ff4:	f8c9 2014 	str.w	r2, [r9, #20]
 8006ff8:	2b00      	cmp	r3, #0
 8006ffa:	bf0c      	ite	eq
 8006ffc:	2101      	moveq	r1, #1
 8006ffe:	2102      	movne	r1, #2
 8007000:	f8c9 3018 	str.w	r3, [r9, #24]
 8007004:	f8c9 1010 	str.w	r1, [r9, #16]
 8007008:	f1b8 0f00 	cmp.w	r8, #0
 800700c:	d11b      	bne.n	8007046 <__d2b+0x92>
 800700e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8007012:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8007016:	6038      	str	r0, [r7, #0]
 8007018:	6918      	ldr	r0, [r3, #16]
 800701a:	f7ff fd93 	bl	8006b44 <__hi0bits>
 800701e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8007022:	6030      	str	r0, [r6, #0]
 8007024:	4648      	mov	r0, r9
 8007026:	b003      	add	sp, #12
 8007028:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800702c:	a801      	add	r0, sp, #4
 800702e:	f7ff fda9 	bl	8006b84 <__lo0bits>
 8007032:	9b01      	ldr	r3, [sp, #4]
 8007034:	f8c9 3014 	str.w	r3, [r9, #20]
 8007038:	2101      	movs	r1, #1
 800703a:	3020      	adds	r0, #32
 800703c:	f8c9 1010 	str.w	r1, [r9, #16]
 8007040:	f1b8 0f00 	cmp.w	r8, #0
 8007044:	d0e3      	beq.n	800700e <__d2b+0x5a>
 8007046:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800704a:	eb08 0300 	add.w	r3, r8, r0
 800704e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8007052:	603b      	str	r3, [r7, #0]
 8007054:	6030      	str	r0, [r6, #0]
 8007056:	4648      	mov	r0, r9
 8007058:	b003      	add	sp, #12
 800705a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800705e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8007062:	f1c0 0220 	rsb	r2, r0, #32
 8007066:	fa03 f202 	lsl.w	r2, r3, r2
 800706a:	430a      	orrs	r2, r1
 800706c:	40c3      	lsrs	r3, r0
 800706e:	9301      	str	r3, [sp, #4]
 8007070:	f8c9 2014 	str.w	r2, [r9, #20]
 8007074:	e7c0      	b.n	8006ff8 <__d2b+0x44>
 8007076:	bf00      	nop

08007078 <_realloc_r>:
 8007078:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800707c:	4692      	mov	sl, r2
 800707e:	b083      	sub	sp, #12
 8007080:	2900      	cmp	r1, #0
 8007082:	f000 80a1 	beq.w	80071c8 <_realloc_r+0x150>
 8007086:	460d      	mov	r5, r1
 8007088:	4680      	mov	r8, r0
 800708a:	f10a 040b 	add.w	r4, sl, #11
 800708e:	f7ff fcdd 	bl	8006a4c <__malloc_lock>
 8007092:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8007096:	2c16      	cmp	r4, #22
 8007098:	f022 0603 	bic.w	r6, r2, #3
 800709c:	f1a5 0708 	sub.w	r7, r5, #8
 80070a0:	d83e      	bhi.n	8007120 <_realloc_r+0xa8>
 80070a2:	2410      	movs	r4, #16
 80070a4:	4621      	mov	r1, r4
 80070a6:	45a2      	cmp	sl, r4
 80070a8:	d83f      	bhi.n	800712a <_realloc_r+0xb2>
 80070aa:	428e      	cmp	r6, r1
 80070ac:	eb07 0906 	add.w	r9, r7, r6
 80070b0:	da74      	bge.n	800719c <_realloc_r+0x124>
 80070b2:	4bc7      	ldr	r3, [pc, #796]	; (80073d0 <_realloc_r+0x358>)
 80070b4:	6898      	ldr	r0, [r3, #8]
 80070b6:	4548      	cmp	r0, r9
 80070b8:	f000 80aa 	beq.w	8007210 <_realloc_r+0x198>
 80070bc:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80070c0:	f020 0301 	bic.w	r3, r0, #1
 80070c4:	444b      	add	r3, r9
 80070c6:	685b      	ldr	r3, [r3, #4]
 80070c8:	07db      	lsls	r3, r3, #31
 80070ca:	f140 8083 	bpl.w	80071d4 <_realloc_r+0x15c>
 80070ce:	07d2      	lsls	r2, r2, #31
 80070d0:	d534      	bpl.n	800713c <_realloc_r+0xc4>
 80070d2:	4651      	mov	r1, sl
 80070d4:	4640      	mov	r0, r8
 80070d6:	f7ff f9b1 	bl	800643c <_malloc_r>
 80070da:	4682      	mov	sl, r0
 80070dc:	b1e0      	cbz	r0, 8007118 <_realloc_r+0xa0>
 80070de:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80070e2:	f023 0301 	bic.w	r3, r3, #1
 80070e6:	443b      	add	r3, r7
 80070e8:	f1a0 0208 	sub.w	r2, r0, #8
 80070ec:	4293      	cmp	r3, r2
 80070ee:	f000 80f9 	beq.w	80072e4 <_realloc_r+0x26c>
 80070f2:	1f32      	subs	r2, r6, #4
 80070f4:	2a24      	cmp	r2, #36	; 0x24
 80070f6:	f200 8107 	bhi.w	8007308 <_realloc_r+0x290>
 80070fa:	2a13      	cmp	r2, #19
 80070fc:	6829      	ldr	r1, [r5, #0]
 80070fe:	f200 80e6 	bhi.w	80072ce <_realloc_r+0x256>
 8007102:	4603      	mov	r3, r0
 8007104:	462a      	mov	r2, r5
 8007106:	6019      	str	r1, [r3, #0]
 8007108:	6851      	ldr	r1, [r2, #4]
 800710a:	6059      	str	r1, [r3, #4]
 800710c:	6892      	ldr	r2, [r2, #8]
 800710e:	609a      	str	r2, [r3, #8]
 8007110:	4629      	mov	r1, r5
 8007112:	4640      	mov	r0, r8
 8007114:	f7fe fe68 	bl	8005de8 <_free_r>
 8007118:	4640      	mov	r0, r8
 800711a:	f7ff fc9d 	bl	8006a58 <__malloc_unlock>
 800711e:	e04f      	b.n	80071c0 <_realloc_r+0x148>
 8007120:	f024 0407 	bic.w	r4, r4, #7
 8007124:	2c00      	cmp	r4, #0
 8007126:	4621      	mov	r1, r4
 8007128:	dabd      	bge.n	80070a6 <_realloc_r+0x2e>
 800712a:	f04f 0a00 	mov.w	sl, #0
 800712e:	230c      	movs	r3, #12
 8007130:	4650      	mov	r0, sl
 8007132:	f8c8 3000 	str.w	r3, [r8]
 8007136:	b003      	add	sp, #12
 8007138:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800713c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8007140:	eba7 0b03 	sub.w	fp, r7, r3
 8007144:	f8db 2004 	ldr.w	r2, [fp, #4]
 8007148:	f022 0203 	bic.w	r2, r2, #3
 800714c:	18b3      	adds	r3, r6, r2
 800714e:	428b      	cmp	r3, r1
 8007150:	dbbf      	blt.n	80070d2 <_realloc_r+0x5a>
 8007152:	46da      	mov	sl, fp
 8007154:	f8db 100c 	ldr.w	r1, [fp, #12]
 8007158:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800715c:	1f32      	subs	r2, r6, #4
 800715e:	2a24      	cmp	r2, #36	; 0x24
 8007160:	60c1      	str	r1, [r0, #12]
 8007162:	eb0b 0903 	add.w	r9, fp, r3
 8007166:	6088      	str	r0, [r1, #8]
 8007168:	f200 80c6 	bhi.w	80072f8 <_realloc_r+0x280>
 800716c:	2a13      	cmp	r2, #19
 800716e:	6829      	ldr	r1, [r5, #0]
 8007170:	f240 80c0 	bls.w	80072f4 <_realloc_r+0x27c>
 8007174:	f8cb 1008 	str.w	r1, [fp, #8]
 8007178:	6869      	ldr	r1, [r5, #4]
 800717a:	f8cb 100c 	str.w	r1, [fp, #12]
 800717e:	2a1b      	cmp	r2, #27
 8007180:	68a9      	ldr	r1, [r5, #8]
 8007182:	f200 80d8 	bhi.w	8007336 <_realloc_r+0x2be>
 8007186:	f10b 0210 	add.w	r2, fp, #16
 800718a:	3508      	adds	r5, #8
 800718c:	6011      	str	r1, [r2, #0]
 800718e:	6869      	ldr	r1, [r5, #4]
 8007190:	6051      	str	r1, [r2, #4]
 8007192:	68a9      	ldr	r1, [r5, #8]
 8007194:	6091      	str	r1, [r2, #8]
 8007196:	461e      	mov	r6, r3
 8007198:	465f      	mov	r7, fp
 800719a:	4655      	mov	r5, sl
 800719c:	687b      	ldr	r3, [r7, #4]
 800719e:	1b32      	subs	r2, r6, r4
 80071a0:	2a0f      	cmp	r2, #15
 80071a2:	f003 0301 	and.w	r3, r3, #1
 80071a6:	d822      	bhi.n	80071ee <_realloc_r+0x176>
 80071a8:	4333      	orrs	r3, r6
 80071aa:	607b      	str	r3, [r7, #4]
 80071ac:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80071b0:	f043 0301 	orr.w	r3, r3, #1
 80071b4:	f8c9 3004 	str.w	r3, [r9, #4]
 80071b8:	4640      	mov	r0, r8
 80071ba:	f7ff fc4d 	bl	8006a58 <__malloc_unlock>
 80071be:	46aa      	mov	sl, r5
 80071c0:	4650      	mov	r0, sl
 80071c2:	b003      	add	sp, #12
 80071c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80071c8:	4611      	mov	r1, r2
 80071ca:	b003      	add	sp, #12
 80071cc:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80071d0:	f7ff b934 	b.w	800643c <_malloc_r>
 80071d4:	f020 0003 	bic.w	r0, r0, #3
 80071d8:	1833      	adds	r3, r6, r0
 80071da:	428b      	cmp	r3, r1
 80071dc:	db61      	blt.n	80072a2 <_realloc_r+0x22a>
 80071de:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80071e2:	461e      	mov	r6, r3
 80071e4:	60ca      	str	r2, [r1, #12]
 80071e6:	eb07 0903 	add.w	r9, r7, r3
 80071ea:	6091      	str	r1, [r2, #8]
 80071ec:	e7d6      	b.n	800719c <_realloc_r+0x124>
 80071ee:	1939      	adds	r1, r7, r4
 80071f0:	4323      	orrs	r3, r4
 80071f2:	f042 0201 	orr.w	r2, r2, #1
 80071f6:	607b      	str	r3, [r7, #4]
 80071f8:	604a      	str	r2, [r1, #4]
 80071fa:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80071fe:	f043 0301 	orr.w	r3, r3, #1
 8007202:	3108      	adds	r1, #8
 8007204:	f8c9 3004 	str.w	r3, [r9, #4]
 8007208:	4640      	mov	r0, r8
 800720a:	f7fe fded 	bl	8005de8 <_free_r>
 800720e:	e7d3      	b.n	80071b8 <_realloc_r+0x140>
 8007210:	6840      	ldr	r0, [r0, #4]
 8007212:	f020 0903 	bic.w	r9, r0, #3
 8007216:	44b1      	add	r9, r6
 8007218:	f104 0010 	add.w	r0, r4, #16
 800721c:	4581      	cmp	r9, r0
 800721e:	da77      	bge.n	8007310 <_realloc_r+0x298>
 8007220:	07d2      	lsls	r2, r2, #31
 8007222:	f53f af56 	bmi.w	80070d2 <_realloc_r+0x5a>
 8007226:	f855 2c08 	ldr.w	r2, [r5, #-8]
 800722a:	eba7 0b02 	sub.w	fp, r7, r2
 800722e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8007232:	f022 0203 	bic.w	r2, r2, #3
 8007236:	4491      	add	r9, r2
 8007238:	4548      	cmp	r0, r9
 800723a:	dc87      	bgt.n	800714c <_realloc_r+0xd4>
 800723c:	46da      	mov	sl, fp
 800723e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8007242:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8007246:	1f32      	subs	r2, r6, #4
 8007248:	2a24      	cmp	r2, #36	; 0x24
 800724a:	60c1      	str	r1, [r0, #12]
 800724c:	6088      	str	r0, [r1, #8]
 800724e:	f200 80a1 	bhi.w	8007394 <_realloc_r+0x31c>
 8007252:	2a13      	cmp	r2, #19
 8007254:	6829      	ldr	r1, [r5, #0]
 8007256:	f240 809b 	bls.w	8007390 <_realloc_r+0x318>
 800725a:	f8cb 1008 	str.w	r1, [fp, #8]
 800725e:	6869      	ldr	r1, [r5, #4]
 8007260:	f8cb 100c 	str.w	r1, [fp, #12]
 8007264:	2a1b      	cmp	r2, #27
 8007266:	68a9      	ldr	r1, [r5, #8]
 8007268:	f200 809b 	bhi.w	80073a2 <_realloc_r+0x32a>
 800726c:	f10b 0210 	add.w	r2, fp, #16
 8007270:	3508      	adds	r5, #8
 8007272:	6011      	str	r1, [r2, #0]
 8007274:	6869      	ldr	r1, [r5, #4]
 8007276:	6051      	str	r1, [r2, #4]
 8007278:	68a9      	ldr	r1, [r5, #8]
 800727a:	6091      	str	r1, [r2, #8]
 800727c:	eb0b 0104 	add.w	r1, fp, r4
 8007280:	eba9 0204 	sub.w	r2, r9, r4
 8007284:	f042 0201 	orr.w	r2, r2, #1
 8007288:	6099      	str	r1, [r3, #8]
 800728a:	604a      	str	r2, [r1, #4]
 800728c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8007290:	f003 0301 	and.w	r3, r3, #1
 8007294:	431c      	orrs	r4, r3
 8007296:	4640      	mov	r0, r8
 8007298:	f8cb 4004 	str.w	r4, [fp, #4]
 800729c:	f7ff fbdc 	bl	8006a58 <__malloc_unlock>
 80072a0:	e78e      	b.n	80071c0 <_realloc_r+0x148>
 80072a2:	07d3      	lsls	r3, r2, #31
 80072a4:	f53f af15 	bmi.w	80070d2 <_realloc_r+0x5a>
 80072a8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80072ac:	eba7 0b03 	sub.w	fp, r7, r3
 80072b0:	f8db 2004 	ldr.w	r2, [fp, #4]
 80072b4:	f022 0203 	bic.w	r2, r2, #3
 80072b8:	4410      	add	r0, r2
 80072ba:	1983      	adds	r3, r0, r6
 80072bc:	428b      	cmp	r3, r1
 80072be:	f6ff af45 	blt.w	800714c <_realloc_r+0xd4>
 80072c2:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80072c6:	46da      	mov	sl, fp
 80072c8:	60ca      	str	r2, [r1, #12]
 80072ca:	6091      	str	r1, [r2, #8]
 80072cc:	e742      	b.n	8007154 <_realloc_r+0xdc>
 80072ce:	6001      	str	r1, [r0, #0]
 80072d0:	686b      	ldr	r3, [r5, #4]
 80072d2:	6043      	str	r3, [r0, #4]
 80072d4:	2a1b      	cmp	r2, #27
 80072d6:	d83a      	bhi.n	800734e <_realloc_r+0x2d6>
 80072d8:	f105 0208 	add.w	r2, r5, #8
 80072dc:	f100 0308 	add.w	r3, r0, #8
 80072e0:	68a9      	ldr	r1, [r5, #8]
 80072e2:	e710      	b.n	8007106 <_realloc_r+0x8e>
 80072e4:	f850 3c04 	ldr.w	r3, [r0, #-4]
 80072e8:	f023 0303 	bic.w	r3, r3, #3
 80072ec:	441e      	add	r6, r3
 80072ee:	eb07 0906 	add.w	r9, r7, r6
 80072f2:	e753      	b.n	800719c <_realloc_r+0x124>
 80072f4:	4652      	mov	r2, sl
 80072f6:	e749      	b.n	800718c <_realloc_r+0x114>
 80072f8:	4629      	mov	r1, r5
 80072fa:	4650      	mov	r0, sl
 80072fc:	461e      	mov	r6, r3
 80072fe:	465f      	mov	r7, fp
 8007300:	f7ff fb40 	bl	8006984 <memmove>
 8007304:	4655      	mov	r5, sl
 8007306:	e749      	b.n	800719c <_realloc_r+0x124>
 8007308:	4629      	mov	r1, r5
 800730a:	f7ff fb3b 	bl	8006984 <memmove>
 800730e:	e6ff      	b.n	8007110 <_realloc_r+0x98>
 8007310:	4427      	add	r7, r4
 8007312:	eba9 0904 	sub.w	r9, r9, r4
 8007316:	f049 0201 	orr.w	r2, r9, #1
 800731a:	609f      	str	r7, [r3, #8]
 800731c:	607a      	str	r2, [r7, #4]
 800731e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8007322:	f003 0301 	and.w	r3, r3, #1
 8007326:	431c      	orrs	r4, r3
 8007328:	4640      	mov	r0, r8
 800732a:	f845 4c04 	str.w	r4, [r5, #-4]
 800732e:	f7ff fb93 	bl	8006a58 <__malloc_unlock>
 8007332:	46aa      	mov	sl, r5
 8007334:	e744      	b.n	80071c0 <_realloc_r+0x148>
 8007336:	f8cb 1010 	str.w	r1, [fp, #16]
 800733a:	68e9      	ldr	r1, [r5, #12]
 800733c:	f8cb 1014 	str.w	r1, [fp, #20]
 8007340:	2a24      	cmp	r2, #36	; 0x24
 8007342:	d010      	beq.n	8007366 <_realloc_r+0x2ee>
 8007344:	6929      	ldr	r1, [r5, #16]
 8007346:	f10b 0218 	add.w	r2, fp, #24
 800734a:	3510      	adds	r5, #16
 800734c:	e71e      	b.n	800718c <_realloc_r+0x114>
 800734e:	68ab      	ldr	r3, [r5, #8]
 8007350:	6083      	str	r3, [r0, #8]
 8007352:	68eb      	ldr	r3, [r5, #12]
 8007354:	60c3      	str	r3, [r0, #12]
 8007356:	2a24      	cmp	r2, #36	; 0x24
 8007358:	d010      	beq.n	800737c <_realloc_r+0x304>
 800735a:	f105 0210 	add.w	r2, r5, #16
 800735e:	f100 0310 	add.w	r3, r0, #16
 8007362:	6929      	ldr	r1, [r5, #16]
 8007364:	e6cf      	b.n	8007106 <_realloc_r+0x8e>
 8007366:	692a      	ldr	r2, [r5, #16]
 8007368:	f8cb 2018 	str.w	r2, [fp, #24]
 800736c:	696a      	ldr	r2, [r5, #20]
 800736e:	f8cb 201c 	str.w	r2, [fp, #28]
 8007372:	69a9      	ldr	r1, [r5, #24]
 8007374:	f10b 0220 	add.w	r2, fp, #32
 8007378:	3518      	adds	r5, #24
 800737a:	e707      	b.n	800718c <_realloc_r+0x114>
 800737c:	692b      	ldr	r3, [r5, #16]
 800737e:	6103      	str	r3, [r0, #16]
 8007380:	696b      	ldr	r3, [r5, #20]
 8007382:	6143      	str	r3, [r0, #20]
 8007384:	69a9      	ldr	r1, [r5, #24]
 8007386:	f105 0218 	add.w	r2, r5, #24
 800738a:	f100 0318 	add.w	r3, r0, #24
 800738e:	e6ba      	b.n	8007106 <_realloc_r+0x8e>
 8007390:	4652      	mov	r2, sl
 8007392:	e76e      	b.n	8007272 <_realloc_r+0x1fa>
 8007394:	4629      	mov	r1, r5
 8007396:	4650      	mov	r0, sl
 8007398:	9301      	str	r3, [sp, #4]
 800739a:	f7ff faf3 	bl	8006984 <memmove>
 800739e:	9b01      	ldr	r3, [sp, #4]
 80073a0:	e76c      	b.n	800727c <_realloc_r+0x204>
 80073a2:	f8cb 1010 	str.w	r1, [fp, #16]
 80073a6:	68e9      	ldr	r1, [r5, #12]
 80073a8:	f8cb 1014 	str.w	r1, [fp, #20]
 80073ac:	2a24      	cmp	r2, #36	; 0x24
 80073ae:	d004      	beq.n	80073ba <_realloc_r+0x342>
 80073b0:	6929      	ldr	r1, [r5, #16]
 80073b2:	f10b 0218 	add.w	r2, fp, #24
 80073b6:	3510      	adds	r5, #16
 80073b8:	e75b      	b.n	8007272 <_realloc_r+0x1fa>
 80073ba:	692a      	ldr	r2, [r5, #16]
 80073bc:	f8cb 2018 	str.w	r2, [fp, #24]
 80073c0:	696a      	ldr	r2, [r5, #20]
 80073c2:	f8cb 201c 	str.w	r2, [fp, #28]
 80073c6:	69a9      	ldr	r1, [r5, #24]
 80073c8:	f10b 0220 	add.w	r2, fp, #32
 80073cc:	3518      	adds	r5, #24
 80073ce:	e750      	b.n	8007272 <_realloc_r+0x1fa>
 80073d0:	200005f8 	.word	0x200005f8

080073d4 <frexp>:
 80073d4:	ec53 2b10 	vmov	r2, r3, d0
 80073d8:	b570      	push	{r4, r5, r6, lr}
 80073da:	4e16      	ldr	r6, [pc, #88]	; (8007434 <frexp+0x60>)
 80073dc:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 80073e0:	2500      	movs	r5, #0
 80073e2:	42b1      	cmp	r1, r6
 80073e4:	4604      	mov	r4, r0
 80073e6:	6005      	str	r5, [r0, #0]
 80073e8:	dc21      	bgt.n	800742e <frexp+0x5a>
 80073ea:	ee10 6a10 	vmov	r6, s0
 80073ee:	430e      	orrs	r6, r1
 80073f0:	d01d      	beq.n	800742e <frexp+0x5a>
 80073f2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80073f6:	4618      	mov	r0, r3
 80073f8:	da0c      	bge.n	8007414 <frexp+0x40>
 80073fa:	4619      	mov	r1, r3
 80073fc:	2200      	movs	r2, #0
 80073fe:	ee10 0a10 	vmov	r0, s0
 8007402:	4b0d      	ldr	r3, [pc, #52]	; (8007438 <frexp+0x64>)
 8007404:	f7f9 fba6 	bl	8000b54 <__aeabi_dmul>
 8007408:	f06f 0535 	mvn.w	r5, #53	; 0x35
 800740c:	4602      	mov	r2, r0
 800740e:	4608      	mov	r0, r1
 8007410:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8007414:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8007418:	1509      	asrs	r1, r1, #20
 800741a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 800741e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8007422:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8007426:	4429      	add	r1, r5
 8007428:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800742c:	6021      	str	r1, [r4, #0]
 800742e:	ec43 2b10 	vmov	d0, r2, r3
 8007432:	bd70      	pop	{r4, r5, r6, pc}
 8007434:	7fefffff 	.word	0x7fefffff
 8007438:	43500000 	.word	0x43500000

0800743c <_sbrk_r>:
 800743c:	b538      	push	{r3, r4, r5, lr}
 800743e:	4c07      	ldr	r4, [pc, #28]	; (800745c <_sbrk_r+0x20>)
 8007440:	2300      	movs	r3, #0
 8007442:	4605      	mov	r5, r0
 8007444:	4608      	mov	r0, r1
 8007446:	6023      	str	r3, [r4, #0]
 8007448:	f7fb fbf2 	bl	8002c30 <_sbrk>
 800744c:	1c43      	adds	r3, r0, #1
 800744e:	d000      	beq.n	8007452 <_sbrk_r+0x16>
 8007450:	bd38      	pop	{r3, r4, r5, pc}
 8007452:	6823      	ldr	r3, [r4, #0]
 8007454:	2b00      	cmp	r3, #0
 8007456:	d0fb      	beq.n	8007450 <_sbrk_r+0x14>
 8007458:	602b      	str	r3, [r5, #0]
 800745a:	bd38      	pop	{r3, r4, r5, pc}
 800745c:	20000b4c 	.word	0x20000b4c

08007460 <__sread>:
 8007460:	b510      	push	{r4, lr}
 8007462:	460c      	mov	r4, r1
 8007464:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007468:	f000 fa98 	bl	800799c <_read_r>
 800746c:	2800      	cmp	r0, #0
 800746e:	db03      	blt.n	8007478 <__sread+0x18>
 8007470:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8007472:	4403      	add	r3, r0
 8007474:	6523      	str	r3, [r4, #80]	; 0x50
 8007476:	bd10      	pop	{r4, pc}
 8007478:	89a3      	ldrh	r3, [r4, #12]
 800747a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 800747e:	81a3      	strh	r3, [r4, #12]
 8007480:	bd10      	pop	{r4, pc}
 8007482:	bf00      	nop

08007484 <__swrite>:
 8007484:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007488:	4616      	mov	r6, r2
 800748a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 800748e:	461f      	mov	r7, r3
 8007490:	05d3      	lsls	r3, r2, #23
 8007492:	460c      	mov	r4, r1
 8007494:	4605      	mov	r5, r0
 8007496:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800749a:	d507      	bpl.n	80074ac <__swrite+0x28>
 800749c:	2200      	movs	r2, #0
 800749e:	2302      	movs	r3, #2
 80074a0:	f000 fa66 	bl	8007970 <_lseek_r>
 80074a4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80074a8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80074ac:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 80074b0:	81a2      	strh	r2, [r4, #12]
 80074b2:	463b      	mov	r3, r7
 80074b4:	4632      	mov	r2, r6
 80074b6:	4628      	mov	r0, r5
 80074b8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80074bc:	f000 b88c 	b.w	80075d8 <_write_r>

080074c0 <__sseek>:
 80074c0:	b510      	push	{r4, lr}
 80074c2:	460c      	mov	r4, r1
 80074c4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80074c8:	f000 fa52 	bl	8007970 <_lseek_r>
 80074cc:	89a3      	ldrh	r3, [r4, #12]
 80074ce:	1c42      	adds	r2, r0, #1
 80074d0:	bf0e      	itee	eq
 80074d2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80074d6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 80074da:	6520      	strne	r0, [r4, #80]	; 0x50
 80074dc:	81a3      	strh	r3, [r4, #12]
 80074de:	bd10      	pop	{r4, pc}

080074e0 <__sclose>:
 80074e0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80074e4:	f000 b922 	b.w	800772c <_close_r>

080074e8 <strncpy>:
 80074e8:	ea40 0301 	orr.w	r3, r0, r1
 80074ec:	079b      	lsls	r3, r3, #30
 80074ee:	b470      	push	{r4, r5, r6}
 80074f0:	d12a      	bne.n	8007548 <strncpy+0x60>
 80074f2:	2a03      	cmp	r2, #3
 80074f4:	d928      	bls.n	8007548 <strncpy+0x60>
 80074f6:	460c      	mov	r4, r1
 80074f8:	4603      	mov	r3, r0
 80074fa:	4621      	mov	r1, r4
 80074fc:	f854 6b04 	ldr.w	r6, [r4], #4
 8007500:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8007504:	ea25 0506 	bic.w	r5, r5, r6
 8007508:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 800750c:	d106      	bne.n	800751c <strncpy+0x34>
 800750e:	3a04      	subs	r2, #4
 8007510:	2a03      	cmp	r2, #3
 8007512:	f843 6b04 	str.w	r6, [r3], #4
 8007516:	4621      	mov	r1, r4
 8007518:	d8ef      	bhi.n	80074fa <strncpy+0x12>
 800751a:	b19a      	cbz	r2, 8007544 <strncpy+0x5c>
 800751c:	780c      	ldrb	r4, [r1, #0]
 800751e:	701c      	strb	r4, [r3, #0]
 8007520:	3a01      	subs	r2, #1
 8007522:	3301      	adds	r3, #1
 8007524:	b13c      	cbz	r4, 8007536 <strncpy+0x4e>
 8007526:	b16a      	cbz	r2, 8007544 <strncpy+0x5c>
 8007528:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 800752c:	f803 4b01 	strb.w	r4, [r3], #1
 8007530:	3a01      	subs	r2, #1
 8007532:	2c00      	cmp	r4, #0
 8007534:	d1f7      	bne.n	8007526 <strncpy+0x3e>
 8007536:	b12a      	cbz	r2, 8007544 <strncpy+0x5c>
 8007538:	441a      	add	r2, r3
 800753a:	2100      	movs	r1, #0
 800753c:	f803 1b01 	strb.w	r1, [r3], #1
 8007540:	4293      	cmp	r3, r2
 8007542:	d1fb      	bne.n	800753c <strncpy+0x54>
 8007544:	bc70      	pop	{r4, r5, r6}
 8007546:	4770      	bx	lr
 8007548:	4603      	mov	r3, r0
 800754a:	e7e6      	b.n	800751a <strncpy+0x32>

0800754c <__sprint_r.part.0>:
 800754c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007550:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8007552:	049c      	lsls	r4, r3, #18
 8007554:	4692      	mov	sl, r2
 8007556:	d52d      	bpl.n	80075b4 <__sprint_r.part.0+0x68>
 8007558:	6893      	ldr	r3, [r2, #8]
 800755a:	6812      	ldr	r2, [r2, #0]
 800755c:	b343      	cbz	r3, 80075b0 <__sprint_r.part.0+0x64>
 800755e:	460e      	mov	r6, r1
 8007560:	4607      	mov	r7, r0
 8007562:	f102 0908 	add.w	r9, r2, #8
 8007566:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 800756a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 800756e:	d015      	beq.n	800759c <__sprint_r.part.0+0x50>
 8007570:	3d04      	subs	r5, #4
 8007572:	2400      	movs	r4, #0
 8007574:	e001      	b.n	800757a <__sprint_r.part.0+0x2e>
 8007576:	45a0      	cmp	r8, r4
 8007578:	d00e      	beq.n	8007598 <__sprint_r.part.0+0x4c>
 800757a:	4632      	mov	r2, r6
 800757c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8007580:	4638      	mov	r0, r7
 8007582:	f000 f99d 	bl	80078c0 <_fputwc_r>
 8007586:	1c43      	adds	r3, r0, #1
 8007588:	f104 0401 	add.w	r4, r4, #1
 800758c:	d1f3      	bne.n	8007576 <__sprint_r.part.0+0x2a>
 800758e:	2300      	movs	r3, #0
 8007590:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8007594:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007598:	f8da 3008 	ldr.w	r3, [sl, #8]
 800759c:	f02b 0b03 	bic.w	fp, fp, #3
 80075a0:	eba3 030b 	sub.w	r3, r3, fp
 80075a4:	f8ca 3008 	str.w	r3, [sl, #8]
 80075a8:	f109 0908 	add.w	r9, r9, #8
 80075ac:	2b00      	cmp	r3, #0
 80075ae:	d1da      	bne.n	8007566 <__sprint_r.part.0+0x1a>
 80075b0:	2000      	movs	r0, #0
 80075b2:	e7ec      	b.n	800758e <__sprint_r.part.0+0x42>
 80075b4:	f7fe fd0c 	bl	8005fd0 <__sfvwrite_r>
 80075b8:	2300      	movs	r3, #0
 80075ba:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80075be:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80075c2:	bf00      	nop

080075c4 <__sprint_r>:
 80075c4:	6893      	ldr	r3, [r2, #8]
 80075c6:	b10b      	cbz	r3, 80075cc <__sprint_r+0x8>
 80075c8:	f7ff bfc0 	b.w	800754c <__sprint_r.part.0>
 80075cc:	b410      	push	{r4}
 80075ce:	4618      	mov	r0, r3
 80075d0:	6053      	str	r3, [r2, #4]
 80075d2:	f85d 4b04 	ldr.w	r4, [sp], #4
 80075d6:	4770      	bx	lr

080075d8 <_write_r>:
 80075d8:	b570      	push	{r4, r5, r6, lr}
 80075da:	460d      	mov	r5, r1
 80075dc:	4c08      	ldr	r4, [pc, #32]	; (8007600 <_write_r+0x28>)
 80075de:	4611      	mov	r1, r2
 80075e0:	4606      	mov	r6, r0
 80075e2:	461a      	mov	r2, r3
 80075e4:	4628      	mov	r0, r5
 80075e6:	2300      	movs	r3, #0
 80075e8:	6023      	str	r3, [r4, #0]
 80075ea:	f7fb fb0e 	bl	8002c0a <_write>
 80075ee:	1c43      	adds	r3, r0, #1
 80075f0:	d000      	beq.n	80075f4 <_write_r+0x1c>
 80075f2:	bd70      	pop	{r4, r5, r6, pc}
 80075f4:	6823      	ldr	r3, [r4, #0]
 80075f6:	2b00      	cmp	r3, #0
 80075f8:	d0fb      	beq.n	80075f2 <_write_r+0x1a>
 80075fa:	6033      	str	r3, [r6, #0]
 80075fc:	bd70      	pop	{r4, r5, r6, pc}
 80075fe:	bf00      	nop
 8007600:	20000b4c 	.word	0x20000b4c

08007604 <__register_exitproc>:
 8007604:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8007608:	4d2b      	ldr	r5, [pc, #172]	; (80076b8 <__register_exitproc+0xb4>)
 800760a:	4606      	mov	r6, r0
 800760c:	6828      	ldr	r0, [r5, #0]
 800760e:	4698      	mov	r8, r3
 8007610:	460f      	mov	r7, r1
 8007612:	4691      	mov	r9, r2
 8007614:	f7fe fe96 	bl	8006344 <__retarget_lock_acquire_recursive>
 8007618:	4b28      	ldr	r3, [pc, #160]	; (80076bc <__register_exitproc+0xb8>)
 800761a:	681c      	ldr	r4, [r3, #0]
 800761c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8007620:	2b00      	cmp	r3, #0
 8007622:	d03d      	beq.n	80076a0 <__register_exitproc+0x9c>
 8007624:	685a      	ldr	r2, [r3, #4]
 8007626:	2a1f      	cmp	r2, #31
 8007628:	dc0d      	bgt.n	8007646 <__register_exitproc+0x42>
 800762a:	f102 0c01 	add.w	ip, r2, #1
 800762e:	bb16      	cbnz	r6, 8007676 <__register_exitproc+0x72>
 8007630:	3202      	adds	r2, #2
 8007632:	f8c3 c004 	str.w	ip, [r3, #4]
 8007636:	6828      	ldr	r0, [r5, #0]
 8007638:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 800763c:	f7fe fe84 	bl	8006348 <__retarget_lock_release_recursive>
 8007640:	2000      	movs	r0, #0
 8007642:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8007646:	4b1e      	ldr	r3, [pc, #120]	; (80076c0 <__register_exitproc+0xbc>)
 8007648:	b37b      	cbz	r3, 80076aa <__register_exitproc+0xa6>
 800764a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 800764e:	f3af 8000 	nop.w
 8007652:	4603      	mov	r3, r0
 8007654:	b348      	cbz	r0, 80076aa <__register_exitproc+0xa6>
 8007656:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 800765a:	2100      	movs	r1, #0
 800765c:	e9c0 2100 	strd	r2, r1, [r0]
 8007660:	f04f 0c01 	mov.w	ip, #1
 8007664:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8007668:	460a      	mov	r2, r1
 800766a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 800766e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8007672:	2e00      	cmp	r6, #0
 8007674:	d0dc      	beq.n	8007630 <__register_exitproc+0x2c>
 8007676:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 800767a:	2401      	movs	r4, #1
 800767c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8007680:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8007684:	4094      	lsls	r4, r2
 8007686:	4320      	orrs	r0, r4
 8007688:	2e02      	cmp	r6, #2
 800768a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 800768e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8007692:	d1cd      	bne.n	8007630 <__register_exitproc+0x2c>
 8007694:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8007698:	430c      	orrs	r4, r1
 800769a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 800769e:	e7c7      	b.n	8007630 <__register_exitproc+0x2c>
 80076a0:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 80076a4:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 80076a8:	e7bc      	b.n	8007624 <__register_exitproc+0x20>
 80076aa:	6828      	ldr	r0, [r5, #0]
 80076ac:	f7fe fe4c 	bl	8006348 <__retarget_lock_release_recursive>
 80076b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80076b4:	e7c5      	b.n	8007642 <__register_exitproc+0x3e>
 80076b6:	bf00      	nop
 80076b8:	200005f4 	.word	0x200005f4
 80076bc:	08007c2c 	.word	0x08007c2c
 80076c0:	00000000 	.word	0x00000000

080076c4 <_calloc_r>:
 80076c4:	b510      	push	{r4, lr}
 80076c6:	fb02 f101 	mul.w	r1, r2, r1
 80076ca:	f7fe feb7 	bl	800643c <_malloc_r>
 80076ce:	4604      	mov	r4, r0
 80076d0:	b1d8      	cbz	r0, 800770a <_calloc_r+0x46>
 80076d2:	f850 2c04 	ldr.w	r2, [r0, #-4]
 80076d6:	f022 0203 	bic.w	r2, r2, #3
 80076da:	3a04      	subs	r2, #4
 80076dc:	2a24      	cmp	r2, #36	; 0x24
 80076de:	d81d      	bhi.n	800771c <_calloc_r+0x58>
 80076e0:	2a13      	cmp	r2, #19
 80076e2:	d914      	bls.n	800770e <_calloc_r+0x4a>
 80076e4:	2300      	movs	r3, #0
 80076e6:	2a1b      	cmp	r2, #27
 80076e8:	e9c0 3300 	strd	r3, r3, [r0]
 80076ec:	d91b      	bls.n	8007726 <_calloc_r+0x62>
 80076ee:	2a24      	cmp	r2, #36	; 0x24
 80076f0:	e9c0 3302 	strd	r3, r3, [r0, #8]
 80076f4:	bf0a      	itet	eq
 80076f6:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 80076fa:	f100 0210 	addne.w	r2, r0, #16
 80076fe:	f100 0218 	addeq.w	r2, r0, #24
 8007702:	2300      	movs	r3, #0
 8007704:	e9c2 3300 	strd	r3, r3, [r2]
 8007708:	6093      	str	r3, [r2, #8]
 800770a:	4620      	mov	r0, r4
 800770c:	bd10      	pop	{r4, pc}
 800770e:	4602      	mov	r2, r0
 8007710:	2300      	movs	r3, #0
 8007712:	e9c2 3300 	strd	r3, r3, [r2]
 8007716:	6093      	str	r3, [r2, #8]
 8007718:	4620      	mov	r0, r4
 800771a:	bd10      	pop	{r4, pc}
 800771c:	2100      	movs	r1, #0
 800771e:	f7fb fb5f 	bl	8002de0 <memset>
 8007722:	4620      	mov	r0, r4
 8007724:	bd10      	pop	{r4, pc}
 8007726:	f100 0208 	add.w	r2, r0, #8
 800772a:	e7f1      	b.n	8007710 <_calloc_r+0x4c>

0800772c <_close_r>:
 800772c:	b538      	push	{r3, r4, r5, lr}
 800772e:	4c07      	ldr	r4, [pc, #28]	; (800774c <_close_r+0x20>)
 8007730:	2300      	movs	r3, #0
 8007732:	4605      	mov	r5, r0
 8007734:	4608      	mov	r0, r1
 8007736:	6023      	str	r3, [r4, #0]
 8007738:	f7fb fa96 	bl	8002c68 <_close>
 800773c:	1c43      	adds	r3, r0, #1
 800773e:	d000      	beq.n	8007742 <_close_r+0x16>
 8007740:	bd38      	pop	{r3, r4, r5, pc}
 8007742:	6823      	ldr	r3, [r4, #0]
 8007744:	2b00      	cmp	r3, #0
 8007746:	d0fb      	beq.n	8007740 <_close_r+0x14>
 8007748:	602b      	str	r3, [r5, #0]
 800774a:	bd38      	pop	{r3, r4, r5, pc}
 800774c:	20000b4c 	.word	0x20000b4c

08007750 <_fclose_r>:
 8007750:	b570      	push	{r4, r5, r6, lr}
 8007752:	2900      	cmp	r1, #0
 8007754:	d048      	beq.n	80077e8 <_fclose_r+0x98>
 8007756:	4605      	mov	r5, r0
 8007758:	460c      	mov	r4, r1
 800775a:	b110      	cbz	r0, 8007762 <_fclose_r+0x12>
 800775c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800775e:	2b00      	cmp	r3, #0
 8007760:	d048      	beq.n	80077f4 <_fclose_r+0xa4>
 8007762:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007764:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007768:	07d0      	lsls	r0, r2, #31
 800776a:	d440      	bmi.n	80077ee <_fclose_r+0x9e>
 800776c:	0599      	lsls	r1, r3, #22
 800776e:	d530      	bpl.n	80077d2 <_fclose_r+0x82>
 8007770:	4621      	mov	r1, r4
 8007772:	4628      	mov	r0, r5
 8007774:	f7fe f990 	bl	8005a98 <__sflush_r>
 8007778:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800777a:	4606      	mov	r6, r0
 800777c:	b133      	cbz	r3, 800778c <_fclose_r+0x3c>
 800777e:	69e1      	ldr	r1, [r4, #28]
 8007780:	4628      	mov	r0, r5
 8007782:	4798      	blx	r3
 8007784:	2800      	cmp	r0, #0
 8007786:	bfb8      	it	lt
 8007788:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 800778c:	89a3      	ldrh	r3, [r4, #12]
 800778e:	061a      	lsls	r2, r3, #24
 8007790:	d43c      	bmi.n	800780c <_fclose_r+0xbc>
 8007792:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007794:	b141      	cbz	r1, 80077a8 <_fclose_r+0x58>
 8007796:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800779a:	4299      	cmp	r1, r3
 800779c:	d002      	beq.n	80077a4 <_fclose_r+0x54>
 800779e:	4628      	mov	r0, r5
 80077a0:	f7fe fb22 	bl	8005de8 <_free_r>
 80077a4:	2300      	movs	r3, #0
 80077a6:	6323      	str	r3, [r4, #48]	; 0x30
 80077a8:	6c61      	ldr	r1, [r4, #68]	; 0x44
 80077aa:	b121      	cbz	r1, 80077b6 <_fclose_r+0x66>
 80077ac:	4628      	mov	r0, r5
 80077ae:	f7fe fb1b 	bl	8005de8 <_free_r>
 80077b2:	2300      	movs	r3, #0
 80077b4:	6463      	str	r3, [r4, #68]	; 0x44
 80077b6:	f7fe faa1 	bl	8005cfc <__sfp_lock_acquire>
 80077ba:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80077bc:	2200      	movs	r2, #0
 80077be:	07db      	lsls	r3, r3, #31
 80077c0:	81a2      	strh	r2, [r4, #12]
 80077c2:	d51f      	bpl.n	8007804 <_fclose_r+0xb4>
 80077c4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80077c6:	f7fe fdbb 	bl	8006340 <__retarget_lock_close_recursive>
 80077ca:	f7fe fa9d 	bl	8005d08 <__sfp_lock_release>
 80077ce:	4630      	mov	r0, r6
 80077d0:	bd70      	pop	{r4, r5, r6, pc}
 80077d2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80077d4:	f7fe fdb6 	bl	8006344 <__retarget_lock_acquire_recursive>
 80077d8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80077dc:	2b00      	cmp	r3, #0
 80077de:	d1c7      	bne.n	8007770 <_fclose_r+0x20>
 80077e0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80077e2:	f016 0601 	ands.w	r6, r6, #1
 80077e6:	d016      	beq.n	8007816 <_fclose_r+0xc6>
 80077e8:	2600      	movs	r6, #0
 80077ea:	4630      	mov	r0, r6
 80077ec:	bd70      	pop	{r4, r5, r6, pc}
 80077ee:	2b00      	cmp	r3, #0
 80077f0:	d0fa      	beq.n	80077e8 <_fclose_r+0x98>
 80077f2:	e7bd      	b.n	8007770 <_fclose_r+0x20>
 80077f4:	f7fe fa56 	bl	8005ca4 <__sinit>
 80077f8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80077fa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80077fe:	07d0      	lsls	r0, r2, #31
 8007800:	d4f5      	bmi.n	80077ee <_fclose_r+0x9e>
 8007802:	e7b3      	b.n	800776c <_fclose_r+0x1c>
 8007804:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007806:	f7fe fd9f 	bl	8006348 <__retarget_lock_release_recursive>
 800780a:	e7db      	b.n	80077c4 <_fclose_r+0x74>
 800780c:	6921      	ldr	r1, [r4, #16]
 800780e:	4628      	mov	r0, r5
 8007810:	f7fe faea 	bl	8005de8 <_free_r>
 8007814:	e7bd      	b.n	8007792 <_fclose_r+0x42>
 8007816:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007818:	f7fe fd96 	bl	8006348 <__retarget_lock_release_recursive>
 800781c:	4630      	mov	r0, r6
 800781e:	bd70      	pop	{r4, r5, r6, pc}

08007820 <__fputwc>:
 8007820:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007824:	b082      	sub	sp, #8
 8007826:	4681      	mov	r9, r0
 8007828:	4688      	mov	r8, r1
 800782a:	4614      	mov	r4, r2
 800782c:	f7fb faa6 	bl	8002d7c <__locale_mb_cur_max>
 8007830:	2801      	cmp	r0, #1
 8007832:	d103      	bne.n	800783c <__fputwc+0x1c>
 8007834:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007838:	2bfe      	cmp	r3, #254	; 0xfe
 800783a:	d933      	bls.n	80078a4 <__fputwc+0x84>
 800783c:	4642      	mov	r2, r8
 800783e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8007842:	a901      	add	r1, sp, #4
 8007844:	4648      	mov	r0, r9
 8007846:	f000 f917 	bl	8007a78 <_wcrtomb_r>
 800784a:	1c42      	adds	r2, r0, #1
 800784c:	4606      	mov	r6, r0
 800784e:	d02f      	beq.n	80078b0 <__fputwc+0x90>
 8007850:	b320      	cbz	r0, 800789c <__fputwc+0x7c>
 8007852:	f89d c004 	ldrb.w	ip, [sp, #4]
 8007856:	2500      	movs	r5, #0
 8007858:	f10d 0a04 	add.w	sl, sp, #4
 800785c:	e009      	b.n	8007872 <__fputwc+0x52>
 800785e:	6823      	ldr	r3, [r4, #0]
 8007860:	1c5a      	adds	r2, r3, #1
 8007862:	6022      	str	r2, [r4, #0]
 8007864:	f883 c000 	strb.w	ip, [r3]
 8007868:	3501      	adds	r5, #1
 800786a:	42b5      	cmp	r5, r6
 800786c:	d216      	bcs.n	800789c <__fputwc+0x7c>
 800786e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8007872:	68a3      	ldr	r3, [r4, #8]
 8007874:	3b01      	subs	r3, #1
 8007876:	2b00      	cmp	r3, #0
 8007878:	60a3      	str	r3, [r4, #8]
 800787a:	daf0      	bge.n	800785e <__fputwc+0x3e>
 800787c:	69a7      	ldr	r7, [r4, #24]
 800787e:	42bb      	cmp	r3, r7
 8007880:	4661      	mov	r1, ip
 8007882:	4622      	mov	r2, r4
 8007884:	4648      	mov	r0, r9
 8007886:	db02      	blt.n	800788e <__fputwc+0x6e>
 8007888:	f1bc 0f0a 	cmp.w	ip, #10
 800788c:	d1e7      	bne.n	800785e <__fputwc+0x3e>
 800788e:	f000 f89b 	bl	80079c8 <__swbuf_r>
 8007892:	1c43      	adds	r3, r0, #1
 8007894:	d1e8      	bne.n	8007868 <__fputwc+0x48>
 8007896:	b002      	add	sp, #8
 8007898:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800789c:	4640      	mov	r0, r8
 800789e:	b002      	add	sp, #8
 80078a0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80078a4:	fa5f fc88 	uxtb.w	ip, r8
 80078a8:	4606      	mov	r6, r0
 80078aa:	f88d c004 	strb.w	ip, [sp, #4]
 80078ae:	e7d2      	b.n	8007856 <__fputwc+0x36>
 80078b0:	89a3      	ldrh	r3, [r4, #12]
 80078b2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80078b6:	81a3      	strh	r3, [r4, #12]
 80078b8:	b002      	add	sp, #8
 80078ba:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80078be:	bf00      	nop

080078c0 <_fputwc_r>:
 80078c0:	b530      	push	{r4, r5, lr}
 80078c2:	4605      	mov	r5, r0
 80078c4:	6e50      	ldr	r0, [r2, #100]	; 0x64
 80078c6:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 80078ca:	07c0      	lsls	r0, r0, #31
 80078cc:	4614      	mov	r4, r2
 80078ce:	b083      	sub	sp, #12
 80078d0:	b29a      	uxth	r2, r3
 80078d2:	d401      	bmi.n	80078d8 <_fputwc_r+0x18>
 80078d4:	0590      	lsls	r0, r2, #22
 80078d6:	d51c      	bpl.n	8007912 <_fputwc_r+0x52>
 80078d8:	0490      	lsls	r0, r2, #18
 80078da:	d406      	bmi.n	80078ea <_fputwc_r+0x2a>
 80078dc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80078de:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80078e2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80078e6:	81a3      	strh	r3, [r4, #12]
 80078e8:	6662      	str	r2, [r4, #100]	; 0x64
 80078ea:	4628      	mov	r0, r5
 80078ec:	4622      	mov	r2, r4
 80078ee:	f7ff ff97 	bl	8007820 <__fputwc>
 80078f2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80078f4:	07da      	lsls	r2, r3, #31
 80078f6:	4605      	mov	r5, r0
 80078f8:	d402      	bmi.n	8007900 <_fputwc_r+0x40>
 80078fa:	89a3      	ldrh	r3, [r4, #12]
 80078fc:	059b      	lsls	r3, r3, #22
 80078fe:	d502      	bpl.n	8007906 <_fputwc_r+0x46>
 8007900:	4628      	mov	r0, r5
 8007902:	b003      	add	sp, #12
 8007904:	bd30      	pop	{r4, r5, pc}
 8007906:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007908:	f7fe fd1e 	bl	8006348 <__retarget_lock_release_recursive>
 800790c:	4628      	mov	r0, r5
 800790e:	b003      	add	sp, #12
 8007910:	bd30      	pop	{r4, r5, pc}
 8007912:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007914:	9101      	str	r1, [sp, #4]
 8007916:	f7fe fd15 	bl	8006344 <__retarget_lock_acquire_recursive>
 800791a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800791e:	9901      	ldr	r1, [sp, #4]
 8007920:	b29a      	uxth	r2, r3
 8007922:	e7d9      	b.n	80078d8 <_fputwc_r+0x18>

08007924 <_fstat_r>:
 8007924:	b538      	push	{r3, r4, r5, lr}
 8007926:	460b      	mov	r3, r1
 8007928:	4c07      	ldr	r4, [pc, #28]	; (8007948 <_fstat_r+0x24>)
 800792a:	4605      	mov	r5, r0
 800792c:	4611      	mov	r1, r2
 800792e:	4618      	mov	r0, r3
 8007930:	2300      	movs	r3, #0
 8007932:	6023      	str	r3, [r4, #0]
 8007934:	f7fb f99b 	bl	8002c6e <_fstat>
 8007938:	1c43      	adds	r3, r0, #1
 800793a:	d000      	beq.n	800793e <_fstat_r+0x1a>
 800793c:	bd38      	pop	{r3, r4, r5, pc}
 800793e:	6823      	ldr	r3, [r4, #0]
 8007940:	2b00      	cmp	r3, #0
 8007942:	d0fb      	beq.n	800793c <_fstat_r+0x18>
 8007944:	602b      	str	r3, [r5, #0]
 8007946:	bd38      	pop	{r3, r4, r5, pc}
 8007948:	20000b4c 	.word	0x20000b4c

0800794c <_isatty_r>:
 800794c:	b538      	push	{r3, r4, r5, lr}
 800794e:	4c07      	ldr	r4, [pc, #28]	; (800796c <_isatty_r+0x20>)
 8007950:	2300      	movs	r3, #0
 8007952:	4605      	mov	r5, r0
 8007954:	4608      	mov	r0, r1
 8007956:	6023      	str	r3, [r4, #0]
 8007958:	f7fb f98e 	bl	8002c78 <_isatty>
 800795c:	1c43      	adds	r3, r0, #1
 800795e:	d000      	beq.n	8007962 <_isatty_r+0x16>
 8007960:	bd38      	pop	{r3, r4, r5, pc}
 8007962:	6823      	ldr	r3, [r4, #0]
 8007964:	2b00      	cmp	r3, #0
 8007966:	d0fb      	beq.n	8007960 <_isatty_r+0x14>
 8007968:	602b      	str	r3, [r5, #0]
 800796a:	bd38      	pop	{r3, r4, r5, pc}
 800796c:	20000b4c 	.word	0x20000b4c

08007970 <_lseek_r>:
 8007970:	b570      	push	{r4, r5, r6, lr}
 8007972:	460d      	mov	r5, r1
 8007974:	4c08      	ldr	r4, [pc, #32]	; (8007998 <_lseek_r+0x28>)
 8007976:	4611      	mov	r1, r2
 8007978:	4606      	mov	r6, r0
 800797a:	461a      	mov	r2, r3
 800797c:	4628      	mov	r0, r5
 800797e:	2300      	movs	r3, #0
 8007980:	6023      	str	r3, [r4, #0]
 8007982:	f7fb f97b 	bl	8002c7c <_lseek>
 8007986:	1c43      	adds	r3, r0, #1
 8007988:	d000      	beq.n	800798c <_lseek_r+0x1c>
 800798a:	bd70      	pop	{r4, r5, r6, pc}
 800798c:	6823      	ldr	r3, [r4, #0]
 800798e:	2b00      	cmp	r3, #0
 8007990:	d0fb      	beq.n	800798a <_lseek_r+0x1a>
 8007992:	6033      	str	r3, [r6, #0]
 8007994:	bd70      	pop	{r4, r5, r6, pc}
 8007996:	bf00      	nop
 8007998:	20000b4c 	.word	0x20000b4c

0800799c <_read_r>:
 800799c:	b570      	push	{r4, r5, r6, lr}
 800799e:	460d      	mov	r5, r1
 80079a0:	4c08      	ldr	r4, [pc, #32]	; (80079c4 <_read_r+0x28>)
 80079a2:	4611      	mov	r1, r2
 80079a4:	4606      	mov	r6, r0
 80079a6:	461a      	mov	r2, r3
 80079a8:	4628      	mov	r0, r5
 80079aa:	2300      	movs	r3, #0
 80079ac:	6023      	str	r3, [r4, #0]
 80079ae:	f7fb f919 	bl	8002be4 <_read>
 80079b2:	1c43      	adds	r3, r0, #1
 80079b4:	d000      	beq.n	80079b8 <_read_r+0x1c>
 80079b6:	bd70      	pop	{r4, r5, r6, pc}
 80079b8:	6823      	ldr	r3, [r4, #0]
 80079ba:	2b00      	cmp	r3, #0
 80079bc:	d0fb      	beq.n	80079b6 <_read_r+0x1a>
 80079be:	6033      	str	r3, [r6, #0]
 80079c0:	bd70      	pop	{r4, r5, r6, pc}
 80079c2:	bf00      	nop
 80079c4:	20000b4c 	.word	0x20000b4c

080079c8 <__swbuf_r>:
 80079c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80079ca:	460d      	mov	r5, r1
 80079cc:	4614      	mov	r4, r2
 80079ce:	4606      	mov	r6, r0
 80079d0:	b110      	cbz	r0, 80079d8 <__swbuf_r+0x10>
 80079d2:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80079d4:	2b00      	cmp	r3, #0
 80079d6:	d043      	beq.n	8007a60 <__swbuf_r+0x98>
 80079d8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80079dc:	69a3      	ldr	r3, [r4, #24]
 80079de:	60a3      	str	r3, [r4, #8]
 80079e0:	b291      	uxth	r1, r2
 80079e2:	0708      	lsls	r0, r1, #28
 80079e4:	d51b      	bpl.n	8007a1e <__swbuf_r+0x56>
 80079e6:	6923      	ldr	r3, [r4, #16]
 80079e8:	b1cb      	cbz	r3, 8007a1e <__swbuf_r+0x56>
 80079ea:	b2ed      	uxtb	r5, r5
 80079ec:	0489      	lsls	r1, r1, #18
 80079ee:	462f      	mov	r7, r5
 80079f0:	d522      	bpl.n	8007a38 <__swbuf_r+0x70>
 80079f2:	6822      	ldr	r2, [r4, #0]
 80079f4:	6961      	ldr	r1, [r4, #20]
 80079f6:	1ad3      	subs	r3, r2, r3
 80079f8:	4299      	cmp	r1, r3
 80079fa:	dd29      	ble.n	8007a50 <__swbuf_r+0x88>
 80079fc:	3301      	adds	r3, #1
 80079fe:	68a1      	ldr	r1, [r4, #8]
 8007a00:	1c50      	adds	r0, r2, #1
 8007a02:	3901      	subs	r1, #1
 8007a04:	60a1      	str	r1, [r4, #8]
 8007a06:	6020      	str	r0, [r4, #0]
 8007a08:	7015      	strb	r5, [r2, #0]
 8007a0a:	6962      	ldr	r2, [r4, #20]
 8007a0c:	429a      	cmp	r2, r3
 8007a0e:	d02a      	beq.n	8007a66 <__swbuf_r+0x9e>
 8007a10:	89a3      	ldrh	r3, [r4, #12]
 8007a12:	07db      	lsls	r3, r3, #31
 8007a14:	d501      	bpl.n	8007a1a <__swbuf_r+0x52>
 8007a16:	2d0a      	cmp	r5, #10
 8007a18:	d025      	beq.n	8007a66 <__swbuf_r+0x9e>
 8007a1a:	4638      	mov	r0, r7
 8007a1c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007a1e:	4621      	mov	r1, r4
 8007a20:	4630      	mov	r0, r6
 8007a22:	f7fd f81f 	bl	8004a64 <__swsetup_r>
 8007a26:	bb20      	cbnz	r0, 8007a72 <__swbuf_r+0xaa>
 8007a28:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007a2c:	6923      	ldr	r3, [r4, #16]
 8007a2e:	b291      	uxth	r1, r2
 8007a30:	b2ed      	uxtb	r5, r5
 8007a32:	0489      	lsls	r1, r1, #18
 8007a34:	462f      	mov	r7, r5
 8007a36:	d4dc      	bmi.n	80079f2 <__swbuf_r+0x2a>
 8007a38:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007a3a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007a3e:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8007a42:	81a2      	strh	r2, [r4, #12]
 8007a44:	6822      	ldr	r2, [r4, #0]
 8007a46:	6661      	str	r1, [r4, #100]	; 0x64
 8007a48:	6961      	ldr	r1, [r4, #20]
 8007a4a:	1ad3      	subs	r3, r2, r3
 8007a4c:	4299      	cmp	r1, r3
 8007a4e:	dcd5      	bgt.n	80079fc <__swbuf_r+0x34>
 8007a50:	4621      	mov	r1, r4
 8007a52:	4630      	mov	r0, r6
 8007a54:	f7fe f8ca 	bl	8005bec <_fflush_r>
 8007a58:	b958      	cbnz	r0, 8007a72 <__swbuf_r+0xaa>
 8007a5a:	6822      	ldr	r2, [r4, #0]
 8007a5c:	2301      	movs	r3, #1
 8007a5e:	e7ce      	b.n	80079fe <__swbuf_r+0x36>
 8007a60:	f7fe f920 	bl	8005ca4 <__sinit>
 8007a64:	e7b8      	b.n	80079d8 <__swbuf_r+0x10>
 8007a66:	4621      	mov	r1, r4
 8007a68:	4630      	mov	r0, r6
 8007a6a:	f7fe f8bf 	bl	8005bec <_fflush_r>
 8007a6e:	2800      	cmp	r0, #0
 8007a70:	d0d3      	beq.n	8007a1a <__swbuf_r+0x52>
 8007a72:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8007a76:	e7d0      	b.n	8007a1a <__swbuf_r+0x52>

08007a78 <_wcrtomb_r>:
 8007a78:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007a7a:	4c11      	ldr	r4, [pc, #68]	; (8007ac0 <_wcrtomb_r+0x48>)
 8007a7c:	6824      	ldr	r4, [r4, #0]
 8007a7e:	b085      	sub	sp, #20
 8007a80:	4606      	mov	r6, r0
 8007a82:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8007a84:	461f      	mov	r7, r3
 8007a86:	b151      	cbz	r1, 8007a9e <_wcrtomb_r+0x26>
 8007a88:	4d0e      	ldr	r5, [pc, #56]	; (8007ac4 <_wcrtomb_r+0x4c>)
 8007a8a:	2c00      	cmp	r4, #0
 8007a8c:	bf08      	it	eq
 8007a8e:	462c      	moveq	r4, r5
 8007a90:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007a94:	47a0      	blx	r4
 8007a96:	1c43      	adds	r3, r0, #1
 8007a98:	d00c      	beq.n	8007ab4 <_wcrtomb_r+0x3c>
 8007a9a:	b005      	add	sp, #20
 8007a9c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007a9e:	4a09      	ldr	r2, [pc, #36]	; (8007ac4 <_wcrtomb_r+0x4c>)
 8007aa0:	2c00      	cmp	r4, #0
 8007aa2:	bf08      	it	eq
 8007aa4:	4614      	moveq	r4, r2
 8007aa6:	460a      	mov	r2, r1
 8007aa8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007aac:	a901      	add	r1, sp, #4
 8007aae:	47a0      	blx	r4
 8007ab0:	1c43      	adds	r3, r0, #1
 8007ab2:	d1f2      	bne.n	8007a9a <_wcrtomb_r+0x22>
 8007ab4:	2200      	movs	r2, #0
 8007ab6:	238a      	movs	r3, #138	; 0x8a
 8007ab8:	603a      	str	r2, [r7, #0]
 8007aba:	6033      	str	r3, [r6, #0]
 8007abc:	b005      	add	sp, #20
 8007abe:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007ac0:	20000058 	.word	0x20000058
 8007ac4:	20000488 	.word	0x20000488

08007ac8 <_init>:
 8007ac8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007aca:	bf00      	nop
 8007acc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007ace:	bc08      	pop	{r3}
 8007ad0:	469e      	mov	lr, r3
 8007ad2:	4770      	bx	lr

08007ad4 <_fini>:
 8007ad4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007ad6:	bf00      	nop
 8007ad8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007ada:	bc08      	pop	{r3}
 8007adc:	469e      	mov	lr, r3
 8007ade:	4770      	bx	lr
