
sglib-queue.elf:     file format elf32-littlearm


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
 80001e0:	08006f74 	.word	0x08006f74

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
 80001fc:	08006f74 	.word	0x08006f74

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
 8001108:	f640 4030 	movw	r0, #3120	; 0xc30
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 4030 	movw	r0, #3120	; 0xc30
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
 80013e8:	f646 72a8 	movw	r2, #28584	; 0x6fa8
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
 8001462:	f646 72a0 	movw	r2, #28576	; 0x6fa0
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
 800148c:	f646 72a0 	movw	r2, #28576	; 0x6fa0
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
 8001842:	f640 4134 	movw	r1, #3124	; 0xc34
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
 800188c:	f640 4034 	movw	r0, #3124	; 0xc34
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 4034 	movw	r0, #3124	; 0xc34
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
 80019d4:	f646 73d8 	movw	r3, #28632	; 0x6fd8
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
 80019fc:	f646 73e8 	movw	r3, #28648	; 0x6fe8
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

08001eb6 <__io_putchar>:
 8001eb6:	b580      	push	{r7, lr}
 8001eb8:	466f      	mov	r7, sp
 8001eba:	b082      	sub	sp, #8
 8001ebc:	9001      	str	r0, [sp, #4]
 8001ebe:	f640 3074 	movw	r0, #2932	; 0xb74
 8001ec2:	a901      	add	r1, sp, #4
 8001ec4:	2201      	movs	r2, #1
 8001ec6:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001eca:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ece:	f7ff ff04 	bl	8001cda <HAL_UART_Transmit>
 8001ed2:	9801      	ldr	r0, [sp, #4]
 8001ed4:	b002      	add	sp, #8
 8001ed6:	bd80      	pop	{r7, pc}

08001ed8 <main>:
 8001ed8:	b5b0      	push	{r4, r5, r7, lr}
 8001eda:	af02      	add	r7, sp, #8
 8001edc:	f640 3174 	movw	r1, #2932	; 0xb74
 8001ee0:	f643 0000 	movw	r0, #14336	; 0x3800
 8001ee4:	220c      	movs	r2, #12
 8001ee6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001eea:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001eee:	6008      	str	r0, [r1, #0]
 8001ef0:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8001ef4:	6048      	str	r0, [r1, #4]
 8001ef6:	2000      	movs	r0, #0
 8001ef8:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8001efc:	6108      	str	r0, [r1, #16]
 8001efe:	6248      	str	r0, [r1, #36]	; 0x24
 8001f00:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8001f04:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8001f08:	2000      	movs	r0, #0
 8001f0a:	f7ff ff7b 	bl	8001e04 <BSP_COM_Init>
 8001f0e:	f000 f831 	bl	8001f74 <initialise_benchmark>
 8001f12:	f646 70f8 	movw	r0, #28664	; 0x6ff8
 8001f16:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f1a:	f000 f9dd 	bl	80022d8 <printf>
 8001f1e:	f247 00a6 	movw	r0, #28838	; 0x70a6
 8001f22:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f26:	f000 fa39 	bl	800239c <puts>
 8001f2a:	f7ff f8dd 	bl	80010e8 <HAL_Init>
 8001f2e:	f7ff f8f3 	bl	8001118 <HAL_GetTick>
 8001f32:	4604      	mov	r4, r0
 8001f34:	f000 f81f 	bl	8001f76 <benchmark>
 8001f38:	4605      	mov	r5, r0
 8001f3a:	f7ff f8ed 	bl	8001118 <HAL_GetTick>
 8001f3e:	1b04      	subs	r4, r0, r4
 8001f40:	4628      	mov	r0, r5
 8001f42:	f000 f8a4 	bl	800208e <verify_benchmark>
 8001f46:	1c41      	adds	r1, r0, #1
 8001f48:	d006      	beq.n	8001f58 <main+0x80>
 8001f4a:	2801      	cmp	r0, #1
 8001f4c:	d109      	bne.n	8001f62 <main+0x8a>
 8001f4e:	f247 0012 	movw	r0, #28690	; 0x7012
 8001f52:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f56:	e008      	b.n	8001f6a <main+0x92>
 8001f58:	f247 0036 	movw	r0, #28726	; 0x7036
 8001f5c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f60:	e003      	b.n	8001f6a <main+0x92>
 8001f62:	f247 006b 	movw	r0, #28779	; 0x706b
 8001f66:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f6a:	4621      	mov	r1, r4
 8001f6c:	f000 f9b4 	bl	80022d8 <printf>
 8001f70:	2000      	movs	r0, #0
 8001f72:	bdb0      	pop	{r4, r5, r7, pc}

08001f74 <initialise_benchmark>:
 8001f74:	4770      	bx	lr

08001f76 <benchmark>:
 8001f76:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001f78:	af03      	add	r7, sp, #12
 8001f7a:	f84d 8d04 	str.w	r8, [sp, #-4]!
 8001f7e:	b0e5      	sub	sp, #404	; 0x194
 8001f80:	f240 0c14 	movw	ip, #20
 8001f84:	f24f 03cb 	movw	r3, #61643	; 0xf0cb
 8001f88:	2000      	movs	r0, #0
 8001f8a:	46ee      	mov	lr, sp
 8001f8c:	2165      	movs	r1, #101	; 0x65
 8001f8e:	2200      	movs	r2, #0
 8001f90:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8001f94:	f6c2 038d 	movt	r3, #10381	; 0x288d
 8001f98:	f85c 4020 	ldr.w	r4, [ip, r0, lsl #2]
 8001f9c:	3001      	adds	r0, #1
 8001f9e:	2864      	cmp	r0, #100	; 0x64
 8001fa0:	f84e 4022 	str.w	r4, [lr, r2, lsl #2]
 8001fa4:	f102 0201 	add.w	r2, r2, #1
 8001fa8:	fb52 f403 	smmul	r4, r2, r3
 8001fac:	ea4f 1524 	mov.w	r5, r4, asr #4
 8001fb0:	eb05 74d4 	add.w	r4, r5, r4, lsr #31
 8001fb4:	fb04 2211 	mls	r2, r4, r1, r2
 8001fb8:	d1ee      	bne.n	8001f98 <benchmark+0x22>
 8001fba:	2200      	movs	r2, #0
 8001fbc:	2165      	movs	r1, #101	; 0x65
 8001fbe:	2000      	movs	r0, #0
 8001fc0:	1c54      	adds	r4, r2, #1
 8001fc2:	f85e 2022 	ldr.w	r2, [lr, r2, lsl #2]
 8001fc6:	fb54 f503 	smmul	r5, r4, r3
 8001fca:	112e      	asrs	r6, r5, #4
 8001fcc:	eb06 75d5 	add.w	r5, r6, r5, lsr #31
 8001fd0:	fb05 4411 	mls	r4, r5, r1, r4
 8001fd4:	4410      	add	r0, r2
 8001fd6:	2c64      	cmp	r4, #100	; 0x64
 8001fd8:	4622      	mov	r2, r4
 8001fda:	d1f1      	bne.n	8001fc0 <benchmark+0x4a>
 8001fdc:	f04f 0800 	mov.w	r8, #0
 8001fe0:	4644      	mov	r4, r8
 8001fe2:	f85c 1024 	ldr.w	r1, [ip, r4, lsl #2]
 8001fe6:	f104 0801 	add.w	r8, r4, #1
 8001fea:	2c01      	cmp	r4, #1
 8001fec:	f84e 1024 	str.w	r1, [lr, r4, lsl #2]
 8001ff0:	db15      	blt.n	800201e <benchmark+0xa8>
 8001ff2:	0863      	lsrs	r3, r4, #1
 8001ff4:	f85e 2023 	ldr.w	r2, [lr, r3, lsl #2]
 8001ff8:	428a      	cmp	r2, r1
 8001ffa:	da10      	bge.n	800201e <benchmark+0xa8>
 8001ffc:	eb0e 0683 	add.w	r6, lr, r3, lsl #2
 8002000:	461d      	mov	r5, r3
 8002002:	6031      	str	r1, [r6, #0]
 8002004:	f84e 2024 	str.w	r2, [lr, r4, lsl #2]
 8002008:	b14d      	cbz	r5, 800201e <benchmark+0xa8>
 800200a:	086b      	lsrs	r3, r5, #1
 800200c:	6831      	ldr	r1, [r6, #0]
 800200e:	f85e 2023 	ldr.w	r2, [lr, r3, lsl #2]
 8002012:	eb0e 0483 	add.w	r4, lr, r3, lsl #2
 8002016:	4626      	mov	r6, r4
 8002018:	462c      	mov	r4, r5
 800201a:	428a      	cmp	r2, r1
 800201c:	dbf0      	blt.n	8002000 <benchmark+0x8a>
 800201e:	f1b8 0f64 	cmp.w	r8, #100	; 0x64
 8002022:	d1dd      	bne.n	8001fe0 <benchmark+0x6a>
 8002024:	f04f 0864 	mov.w	r8, #100	; 0x64
 8002028:	f04f 0c01 	mov.w	ip, #1
 800202c:	f1a8 0801 	sub.w	r8, r8, #1
 8002030:	9900      	ldr	r1, [sp, #0]
 8002032:	f85e 3028 	ldr.w	r3, [lr, r8, lsl #2]
 8002036:	f1b8 0f02 	cmp.w	r8, #2
 800203a:	4408      	add	r0, r1
 800203c:	9300      	str	r3, [sp, #0]
 800203e:	db1f      	blt.n	8002080 <benchmark+0x10a>
 8002040:	2100      	movs	r1, #0
 8002042:	2401      	movs	r4, #1
 8002044:	2502      	movs	r5, #2
 8002046:	f85e 6024 	ldr.w	r6, [lr, r4, lsl #2]
 800204a:	42b3      	cmp	r3, r6
 800204c:	bfa8      	it	ge
 800204e:	460c      	movge	r4, r1
 8002050:	4545      	cmp	r5, r8
 8002052:	da06      	bge.n	8002062 <benchmark+0xec>
 8002054:	f85e 6025 	ldr.w	r6, [lr, r5, lsl #2]
 8002058:	f85e 2024 	ldr.w	r2, [lr, r4, lsl #2]
 800205c:	42b2      	cmp	r2, r6
 800205e:	bfb8      	it	lt
 8002060:	462c      	movlt	r4, r5
 8002062:	4626      	mov	r6, r4
 8002064:	428e      	cmp	r6, r1
 8002066:	d00b      	beq.n	8002080 <benchmark+0x10a>
 8002068:	f85e 2026 	ldr.w	r2, [lr, r6, lsl #2]
 800206c:	ea4c 0446 	orr.w	r4, ip, r6, lsl #1
 8002070:	1c65      	adds	r5, r4, #1
 8002072:	4544      	cmp	r4, r8
 8002074:	f84e 2021 	str.w	r2, [lr, r1, lsl #2]
 8002078:	4631      	mov	r1, r6
 800207a:	f84e 3026 	str.w	r3, [lr, r6, lsl #2]
 800207e:	dbe2      	blt.n	8002046 <benchmark+0xd0>
 8002080:	f1b8 0f00 	cmp.w	r8, #0
 8002084:	d1d2      	bne.n	800202c <benchmark+0xb6>
 8002086:	b065      	add	sp, #404	; 0x194
 8002088:	f85d 8b04 	ldr.w	r8, [sp], #4
 800208c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800208e <verify_benchmark>:
 800208e:	f242 62ac 	movw	r2, #9900	; 0x26ac
 8002092:	2100      	movs	r1, #0
 8002094:	4290      	cmp	r0, r2
 8002096:	bf08      	it	eq
 8002098:	2101      	moveq	r1, #1
 800209a:	4608      	mov	r0, r1
 800209c:	4770      	bx	lr

0800209e <SysTick_Handler>:
 800209e:	b580      	push	{r7, lr}
 80020a0:	466f      	mov	r7, sp
 80020a2:	f7ff f831 	bl	8001108 <HAL_IncTick>
 80020a6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80020aa:	f7ff b88b 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

080020ae <_read>:
 80020ae:	b5f0      	push	{r4, r5, r6, r7, lr}
 80020b0:	af03      	add	r7, sp, #12
 80020b2:	f84d bd04 	str.w	fp, [sp, #-4]!
 80020b6:	4614      	mov	r4, r2
 80020b8:	460d      	mov	r5, r1
 80020ba:	2c01      	cmp	r4, #1
 80020bc:	db06      	blt.n	80020cc <_read+0x1e>
 80020be:	4626      	mov	r6, r4
 80020c0:	f3af 8000 	nop.w
 80020c4:	f805 0b01 	strb.w	r0, [r5], #1
 80020c8:	3e01      	subs	r6, #1
 80020ca:	d1f9      	bne.n	80020c0 <_read+0x12>
 80020cc:	4620      	mov	r0, r4
 80020ce:	f85d bb04 	ldr.w	fp, [sp], #4
 80020d2:	bdf0      	pop	{r4, r5, r6, r7, pc}

080020d4 <_write>:
 80020d4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80020d6:	af03      	add	r7, sp, #12
 80020d8:	f84d bd04 	str.w	fp, [sp, #-4]!
 80020dc:	4614      	mov	r4, r2
 80020de:	460d      	mov	r5, r1
 80020e0:	2c01      	cmp	r4, #1
 80020e2:	db06      	blt.n	80020f2 <_write+0x1e>
 80020e4:	4626      	mov	r6, r4
 80020e6:	f815 0b01 	ldrb.w	r0, [r5], #1
 80020ea:	f7ff fee4 	bl	8001eb6 <__io_putchar>
 80020ee:	3e01      	subs	r6, #1
 80020f0:	d1f9      	bne.n	80020e6 <_write+0x12>
 80020f2:	4620      	mov	r0, r4
 80020f4:	f85d bb04 	ldr.w	fp, [sp], #4
 80020f8:	bdf0      	pop	{r4, r5, r6, r7, pc}

080020fa <_sbrk>:
 80020fa:	f640 32f8 	movw	r2, #3064	; 0xbf8
 80020fe:	4601      	mov	r1, r0
 8002100:	466b      	mov	r3, sp
 8002102:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002106:	6810      	ldr	r0, [r2, #0]
 8002108:	2800      	cmp	r0, #0
 800210a:	bf02      	ittt	eq
 800210c:	f640 40a0 	movweq	r0, #3232	; 0xca0
 8002110:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002114:	6010      	streq	r0, [r2, #0]
 8002116:	4401      	add	r1, r0
 8002118:	4299      	cmp	r1, r3
 800211a:	bf9c      	itt	ls
 800211c:	6011      	strls	r1, [r2, #0]
 800211e:	4770      	bxls	lr
 8002120:	b580      	push	{r7, lr}
 8002122:	466f      	mov	r7, sp
 8002124:	f000 f864 	bl	80021f0 <__errno>
 8002128:	210c      	movs	r1, #12
 800212a:	6001      	str	r1, [r0, #0]
 800212c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002130:	bd80      	pop	{r7, pc}

08002132 <_close>:
 8002132:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002136:	4770      	bx	lr

08002138 <_fstat>:
 8002138:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 800213c:	6048      	str	r0, [r1, #4]
 800213e:	2000      	movs	r0, #0
 8002140:	4770      	bx	lr

08002142 <_isatty>:
 8002142:	2001      	movs	r0, #1
 8002144:	4770      	bx	lr

08002146 <_lseek>:
 8002146:	2000      	movs	r0, #0
 8002148:	4770      	bx	lr

0800214a <SystemInit>:
 800214a:	f64e 5088 	movw	r0, #60808	; 0xed88
 800214e:	f04f 0c00 	mov.w	ip, #0
 8002152:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002156:	6801      	ldr	r1, [r0, #0]
 8002158:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 800215c:	6001      	str	r1, [r0, #0]
 800215e:	f241 0100 	movw	r1, #4096	; 0x1000
 8002162:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002166:	680a      	ldr	r2, [r1, #0]
 8002168:	f042 0201 	orr.w	r2, r2, #1
 800216c:	600a      	str	r2, [r1, #0]
 800216e:	f8c1 c008 	str.w	ip, [r1, #8]
 8002172:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002176:	680b      	ldr	r3, [r1, #0]
 8002178:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 800217c:	401a      	ands	r2, r3
 800217e:	600a      	str	r2, [r1, #0]
 8002180:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002184:	60ca      	str	r2, [r1, #12]
 8002186:	680a      	ldr	r2, [r1, #0]
 8002188:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800218c:	600a      	str	r2, [r1, #0]
 800218e:	f8c1 c018 	str.w	ip, [r1, #24]
 8002192:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002196:	f840 1c80 	str.w	r1, [r0, #-128]
 800219a:	4770      	bx	lr

0800219c <Reset_Handler>:
 800219c:	f8df d034 	ldr.w	sp, [pc, #52]	; 80021d4 <LoopForever+0x2>
 80021a0:	2100      	movs	r1, #0
 80021a2:	e003      	b.n	80021ac <LoopCopyDataInit>

080021a4 <CopyDataInit>:
 80021a4:	4b0c      	ldr	r3, [pc, #48]	; (80021d8 <LoopForever+0x6>)
 80021a6:	585b      	ldr	r3, [r3, r1]
 80021a8:	5043      	str	r3, [r0, r1]
 80021aa:	3104      	adds	r1, #4

080021ac <LoopCopyDataInit>:
 80021ac:	480b      	ldr	r0, [pc, #44]	; (80021dc <LoopForever+0xa>)
 80021ae:	4b0c      	ldr	r3, [pc, #48]	; (80021e0 <LoopForever+0xe>)
 80021b0:	1842      	adds	r2, r0, r1
 80021b2:	429a      	cmp	r2, r3
 80021b4:	d3f6      	bcc.n	80021a4 <CopyDataInit>
 80021b6:	4a0b      	ldr	r2, [pc, #44]	; (80021e4 <LoopForever+0x12>)
 80021b8:	e002      	b.n	80021c0 <LoopFillZerobss>

080021ba <FillZerobss>:
 80021ba:	2300      	movs	r3, #0
 80021bc:	f842 3b04 	str.w	r3, [r2], #4

080021c0 <LoopFillZerobss>:
 80021c0:	4b09      	ldr	r3, [pc, #36]	; (80021e8 <LoopForever+0x16>)
 80021c2:	429a      	cmp	r2, r3
 80021c4:	d3f9      	bcc.n	80021ba <FillZerobss>
 80021c6:	f7ff ffc0 	bl	800214a <SystemInit>
 80021ca:	f000 f817 	bl	80021fc <__libc_init_array>
 80021ce:	f7ff fe83 	bl	8001ed8 <main>

080021d2 <LoopForever>:
 80021d2:	e7fe      	b.n	80021d2 <LoopForever>
 80021d4:	20018000 	.word	0x20018000
 80021d8:	08007350 	.word	0x08007350
 80021dc:	20000000 	.word	0x20000000
 80021e0:	20000b58 	.word	0x20000b58
 80021e4:	20000b58 	.word	0x20000b58
 80021e8:	20000ca0 	.word	0x20000ca0

080021ec <ADC1_2_IRQHandler>:
 80021ec:	e7fe      	b.n	80021ec <ADC1_2_IRQHandler>
	...

080021f0 <__errno>:
 80021f0:	4b01      	ldr	r3, [pc, #4]	; (80021f8 <__errno+0x8>)
 80021f2:	6818      	ldr	r0, [r3, #0]
 80021f4:	4770      	bx	lr
 80021f6:	bf00      	nop
 80021f8:	200001a8 	.word	0x200001a8

080021fc <__libc_init_array>:
 80021fc:	b570      	push	{r4, r5, r6, lr}
 80021fe:	4e0d      	ldr	r6, [pc, #52]	; (8002234 <__libc_init_array+0x38>)
 8002200:	4d0d      	ldr	r5, [pc, #52]	; (8002238 <__libc_init_array+0x3c>)
 8002202:	1b76      	subs	r6, r6, r5
 8002204:	10b6      	asrs	r6, r6, #2
 8002206:	d006      	beq.n	8002216 <__libc_init_array+0x1a>
 8002208:	2400      	movs	r4, #0
 800220a:	3401      	adds	r4, #1
 800220c:	f855 3b04 	ldr.w	r3, [r5], #4
 8002210:	4798      	blx	r3
 8002212:	42a6      	cmp	r6, r4
 8002214:	d1f9      	bne.n	800220a <__libc_init_array+0xe>
 8002216:	4e09      	ldr	r6, [pc, #36]	; (800223c <__libc_init_array+0x40>)
 8002218:	4d09      	ldr	r5, [pc, #36]	; (8002240 <__libc_init_array+0x44>)
 800221a:	1b76      	subs	r6, r6, r5
 800221c:	f004 feaa 	bl	8006f74 <_init>
 8002220:	10b6      	asrs	r6, r6, #2
 8002222:	d006      	beq.n	8002232 <__libc_init_array+0x36>
 8002224:	2400      	movs	r4, #0
 8002226:	3401      	adds	r4, #1
 8002228:	f855 3b04 	ldr.w	r3, [r5], #4
 800222c:	4798      	blx	r3
 800222e:	42a6      	cmp	r6, r4
 8002230:	d1f9      	bne.n	8002226 <__libc_init_array+0x2a>
 8002232:	bd70      	pop	{r4, r5, r6, pc}
 8002234:	08007340 	.word	0x08007340
 8002238:	08007340 	.word	0x08007340
 800223c:	08007348 	.word	0x08007348
 8002240:	08007340 	.word	0x08007340

08002244 <memset>:
 8002244:	b4f0      	push	{r4, r5, r6, r7}
 8002246:	0786      	lsls	r6, r0, #30
 8002248:	d043      	beq.n	80022d2 <memset+0x8e>
 800224a:	1e54      	subs	r4, r2, #1
 800224c:	2a00      	cmp	r2, #0
 800224e:	d03e      	beq.n	80022ce <memset+0x8a>
 8002250:	b2ca      	uxtb	r2, r1
 8002252:	4603      	mov	r3, r0
 8002254:	e002      	b.n	800225c <memset+0x18>
 8002256:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 800225a:	d338      	bcc.n	80022ce <memset+0x8a>
 800225c:	f803 2b01 	strb.w	r2, [r3], #1
 8002260:	079d      	lsls	r5, r3, #30
 8002262:	d1f8      	bne.n	8002256 <memset+0x12>
 8002264:	2c03      	cmp	r4, #3
 8002266:	d92b      	bls.n	80022c0 <memset+0x7c>
 8002268:	b2cd      	uxtb	r5, r1
 800226a:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800226e:	2c0f      	cmp	r4, #15
 8002270:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002274:	d916      	bls.n	80022a4 <memset+0x60>
 8002276:	f1a4 0710 	sub.w	r7, r4, #16
 800227a:	093f      	lsrs	r7, r7, #4
 800227c:	f103 0620 	add.w	r6, r3, #32
 8002280:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002284:	f103 0210 	add.w	r2, r3, #16
 8002288:	e942 5504 	strd	r5, r5, [r2, #-16]
 800228c:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002290:	3210      	adds	r2, #16
 8002292:	42b2      	cmp	r2, r6
 8002294:	d1f8      	bne.n	8002288 <memset+0x44>
 8002296:	f004 040f 	and.w	r4, r4, #15
 800229a:	3701      	adds	r7, #1
 800229c:	2c03      	cmp	r4, #3
 800229e:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80022a2:	d90d      	bls.n	80022c0 <memset+0x7c>
 80022a4:	461e      	mov	r6, r3
 80022a6:	4622      	mov	r2, r4
 80022a8:	3a04      	subs	r2, #4
 80022aa:	2a03      	cmp	r2, #3
 80022ac:	f846 5b04 	str.w	r5, [r6], #4
 80022b0:	d8fa      	bhi.n	80022a8 <memset+0x64>
 80022b2:	1f22      	subs	r2, r4, #4
 80022b4:	f022 0203 	bic.w	r2, r2, #3
 80022b8:	3204      	adds	r2, #4
 80022ba:	4413      	add	r3, r2
 80022bc:	f004 0403 	and.w	r4, r4, #3
 80022c0:	b12c      	cbz	r4, 80022ce <memset+0x8a>
 80022c2:	b2c9      	uxtb	r1, r1
 80022c4:	441c      	add	r4, r3
 80022c6:	f803 1b01 	strb.w	r1, [r3], #1
 80022ca:	429c      	cmp	r4, r3
 80022cc:	d1fb      	bne.n	80022c6 <memset+0x82>
 80022ce:	bcf0      	pop	{r4, r5, r6, r7}
 80022d0:	4770      	bx	lr
 80022d2:	4614      	mov	r4, r2
 80022d4:	4603      	mov	r3, r0
 80022d6:	e7c5      	b.n	8002264 <memset+0x20>

080022d8 <printf>:
 80022d8:	b40f      	push	{r0, r1, r2, r3}
 80022da:	b500      	push	{lr}
 80022dc:	4907      	ldr	r1, [pc, #28]	; (80022fc <printf+0x24>)
 80022de:	b083      	sub	sp, #12
 80022e0:	ab04      	add	r3, sp, #16
 80022e2:	6808      	ldr	r0, [r1, #0]
 80022e4:	f853 2b04 	ldr.w	r2, [r3], #4
 80022e8:	6881      	ldr	r1, [r0, #8]
 80022ea:	9301      	str	r3, [sp, #4]
 80022ec:	f000 f860 	bl	80023b0 <_vfprintf_r>
 80022f0:	b003      	add	sp, #12
 80022f2:	f85d eb04 	ldr.w	lr, [sp], #4
 80022f6:	b004      	add	sp, #16
 80022f8:	4770      	bx	lr
 80022fa:	bf00      	nop
 80022fc:	200001a8 	.word	0x200001a8

08002300 <_puts_r>:
 8002300:	b570      	push	{r4, r5, r6, lr}
 8002302:	4605      	mov	r5, r0
 8002304:	b088      	sub	sp, #32
 8002306:	4608      	mov	r0, r1
 8002308:	460c      	mov	r4, r1
 800230a:	f7fe f999 	bl	8000640 <strlen>
 800230e:	4a22      	ldr	r2, [pc, #136]	; (8002398 <_puts_r+0x98>)
 8002310:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002312:	9404      	str	r4, [sp, #16]
 8002314:	2601      	movs	r6, #1
 8002316:	1c44      	adds	r4, r0, #1
 8002318:	a904      	add	r1, sp, #16
 800231a:	9206      	str	r2, [sp, #24]
 800231c:	2202      	movs	r2, #2
 800231e:	9403      	str	r4, [sp, #12]
 8002320:	9005      	str	r0, [sp, #20]
 8002322:	68ac      	ldr	r4, [r5, #8]
 8002324:	9607      	str	r6, [sp, #28]
 8002326:	e9cd 1201 	strd	r1, r2, [sp, #4]
 800232a:	b31b      	cbz	r3, 8002374 <_puts_r+0x74>
 800232c:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800232e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002332:	07ce      	lsls	r6, r1, #31
 8002334:	b29a      	uxth	r2, r3
 8002336:	d401      	bmi.n	800233c <_puts_r+0x3c>
 8002338:	0590      	lsls	r0, r2, #22
 800233a:	d525      	bpl.n	8002388 <_puts_r+0x88>
 800233c:	0491      	lsls	r1, r2, #18
 800233e:	d406      	bmi.n	800234e <_puts_r+0x4e>
 8002340:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8002342:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002346:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 800234a:	81a3      	strh	r3, [r4, #12]
 800234c:	6662      	str	r2, [r4, #100]	; 0x64
 800234e:	4628      	mov	r0, r5
 8002350:	aa01      	add	r2, sp, #4
 8002352:	4621      	mov	r1, r4
 8002354:	f003 f860 	bl	8005418 <__sfvwrite_r>
 8002358:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800235a:	2800      	cmp	r0, #0
 800235c:	bf0c      	ite	eq
 800235e:	250a      	moveq	r5, #10
 8002360:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002364:	07da      	lsls	r2, r3, #31
 8002366:	d402      	bmi.n	800236e <_puts_r+0x6e>
 8002368:	89a3      	ldrh	r3, [r4, #12]
 800236a:	059b      	lsls	r3, r3, #22
 800236c:	d506      	bpl.n	800237c <_puts_r+0x7c>
 800236e:	4628      	mov	r0, r5
 8002370:	b008      	add	sp, #32
 8002372:	bd70      	pop	{r4, r5, r6, pc}
 8002374:	4628      	mov	r0, r5
 8002376:	f002 feb9 	bl	80050ec <__sinit>
 800237a:	e7d7      	b.n	800232c <_puts_r+0x2c>
 800237c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800237e:	f003 fa07 	bl	8005790 <__retarget_lock_release_recursive>
 8002382:	4628      	mov	r0, r5
 8002384:	b008      	add	sp, #32
 8002386:	bd70      	pop	{r4, r5, r6, pc}
 8002388:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800238a:	f003 f9ff 	bl	800578c <__retarget_lock_acquire_recursive>
 800238e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002392:	b29a      	uxth	r2, r3
 8002394:	e7d2      	b.n	800233c <_puts_r+0x3c>
 8002396:	bf00      	nop
 8002398:	080070ac 	.word	0x080070ac

0800239c <puts>:
 800239c:	4b02      	ldr	r3, [pc, #8]	; (80023a8 <puts+0xc>)
 800239e:	4601      	mov	r1, r0
 80023a0:	6818      	ldr	r0, [r3, #0]
 80023a2:	f7ff bfad 	b.w	8002300 <_puts_r>
 80023a6:	bf00      	nop
 80023a8:	200001a8 	.word	0x200001a8
 80023ac:	00000000 	.word	0x00000000

080023b0 <_vfprintf_r>:
 80023b0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80023b4:	b0d7      	sub	sp, #348	; 0x15c
 80023b6:	461c      	mov	r4, r3
 80023b8:	4689      	mov	r9, r1
 80023ba:	4617      	mov	r7, r2
 80023bc:	4605      	mov	r5, r0
 80023be:	9003      	str	r0, [sp, #12]
 80023c0:	f003 f9d2 	bl	8005768 <_localeconv_r>
 80023c4:	6803      	ldr	r3, [r0, #0]
 80023c6:	9316      	str	r3, [sp, #88]	; 0x58
 80023c8:	4618      	mov	r0, r3
 80023ca:	f7fe f939 	bl	8000640 <strlen>
 80023ce:	9408      	str	r4, [sp, #32]
 80023d0:	9015      	str	r0, [sp, #84]	; 0x54
 80023d2:	b11d      	cbz	r5, 80023dc <_vfprintf_r+0x2c>
 80023d4:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80023d6:	2b00      	cmp	r3, #0
 80023d8:	f000 8107 	beq.w	80025ea <_vfprintf_r+0x23a>
 80023dc:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80023e0:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80023e4:	07c8      	lsls	r0, r1, #31
 80023e6:	b293      	uxth	r3, r2
 80023e8:	d402      	bmi.n	80023f0 <_vfprintf_r+0x40>
 80023ea:	0599      	lsls	r1, r3, #22
 80023ec:	f140 811f 	bpl.w	800262e <_vfprintf_r+0x27e>
 80023f0:	049e      	lsls	r6, r3, #18
 80023f2:	d40a      	bmi.n	800240a <_vfprintf_r+0x5a>
 80023f4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80023f8:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 80023fc:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002400:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002404:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002408:	b29b      	uxth	r3, r3
 800240a:	071d      	lsls	r5, r3, #28
 800240c:	f140 80b2 	bpl.w	8002574 <_vfprintf_r+0x1c4>
 8002410:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002414:	2a00      	cmp	r2, #0
 8002416:	f000 80ad 	beq.w	8002574 <_vfprintf_r+0x1c4>
 800241a:	f003 021a 	and.w	r2, r3, #26
 800241e:	2a0a      	cmp	r2, #10
 8002420:	f000 80c9 	beq.w	80025b6 <_vfprintf_r+0x206>
 8002424:	2300      	movs	r3, #0
 8002426:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002640 <_vfprintf_r+0x290>
 800242a:	9310      	str	r3, [sp, #64]	; 0x40
 800242c:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002430:	9317      	str	r3, [sp, #92]	; 0x5c
 8002432:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002436:	931b      	str	r3, [sp, #108]	; 0x6c
 8002438:	9318      	str	r3, [sp, #96]	; 0x60
 800243a:	9305      	str	r3, [sp, #20]
 800243c:	ab2d      	add	r3, sp, #180	; 0xb4
 800243e:	932a      	str	r3, [sp, #168]	; 0xa8
 8002440:	469b      	mov	fp, r3
 8002442:	783b      	ldrb	r3, [r7, #0]
 8002444:	f8cd 901c 	str.w	r9, [sp, #28]
 8002448:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800244c:	2b00      	cmp	r3, #0
 800244e:	f000 8259 	beq.w	8002904 <_vfprintf_r+0x554>
 8002452:	2b25      	cmp	r3, #37	; 0x25
 8002454:	463c      	mov	r4, r7
 8002456:	d102      	bne.n	800245e <_vfprintf_r+0xae>
 8002458:	e01d      	b.n	8002496 <_vfprintf_r+0xe6>
 800245a:	2b25      	cmp	r3, #37	; 0x25
 800245c:	d003      	beq.n	8002466 <_vfprintf_r+0xb6>
 800245e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002462:	2b00      	cmp	r3, #0
 8002464:	d1f9      	bne.n	800245a <_vfprintf_r+0xaa>
 8002466:	1be5      	subs	r5, r4, r7
 8002468:	b18d      	cbz	r5, 800248e <_vfprintf_r+0xde>
 800246a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 800246e:	3301      	adds	r3, #1
 8002470:	442a      	add	r2, r5
 8002472:	2b07      	cmp	r3, #7
 8002474:	f8cb 7000 	str.w	r7, [fp]
 8002478:	f8cb 5004 	str.w	r5, [fp, #4]
 800247c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002480:	f300 80ca 	bgt.w	8002618 <_vfprintf_r+0x268>
 8002484:	f10b 0b08 	add.w	fp, fp, #8
 8002488:	9b05      	ldr	r3, [sp, #20]
 800248a:	442b      	add	r3, r5
 800248c:	9305      	str	r3, [sp, #20]
 800248e:	7823      	ldrb	r3, [r4, #0]
 8002490:	2b00      	cmp	r3, #0
 8002492:	f000 8237 	beq.w	8002904 <_vfprintf_r+0x554>
 8002496:	2300      	movs	r3, #0
 8002498:	7866      	ldrb	r6, [r4, #1]
 800249a:	9306      	str	r3, [sp, #24]
 800249c:	4698      	mov	r8, r3
 800249e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80024a2:	f104 0a01 	add.w	sl, r4, #1
 80024a6:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 80024aa:	252b      	movs	r5, #43	; 0x2b
 80024ac:	f10a 0a01 	add.w	sl, sl, #1
 80024b0:	f1a6 0320 	sub.w	r3, r6, #32
 80024b4:	2b5a      	cmp	r3, #90	; 0x5a
 80024b6:	f200 842a 	bhi.w	8002d0e <_vfprintf_r+0x95e>
 80024ba:	e8df f013 	tbh	[pc, r3, lsl #1]
 80024be:	03aa      	.short	0x03aa
 80024c0:	04280428 	.word	0x04280428
 80024c4:	0428029c 	.word	0x0428029c
 80024c8:	04280428 	.word	0x04280428
 80024cc:	042802a7 	.word	0x042802a7
 80024d0:	02c60428 	.word	0x02c60428
 80024d4:	042802d2 	.word	0x042802d2
 80024d8:	02dc02d7 	.word	0x02dc02d7
 80024dc:	02f60428 	.word	0x02f60428
 80024e0:	026d026d 	.word	0x026d026d
 80024e4:	026d026d 	.word	0x026d026d
 80024e8:	026d026d 	.word	0x026d026d
 80024ec:	026d026d 	.word	0x026d026d
 80024f0:	0428026d 	.word	0x0428026d
 80024f4:	04280428 	.word	0x04280428
 80024f8:	04280428 	.word	0x04280428
 80024fc:	04280428 	.word	0x04280428
 8002500:	042802fb 	.word	0x042802fb
 8002504:	03f3033c 	.word	0x03f3033c
 8002508:	02fb02fb 	.word	0x02fb02fb
 800250c:	042802fb 	.word	0x042802fb
 8002510:	04280428 	.word	0x04280428
 8002514:	03ee0428 	.word	0x03ee0428
 8002518:	04280428 	.word	0x04280428
 800251c:	0428009a 	.word	0x0428009a
 8002520:	04280428 	.word	0x04280428
 8002524:	04280350 	.word	0x04280350
 8002528:	04280379 	.word	0x04280379
 800252c:	03900428 	.word	0x03900428
 8002530:	04280428 	.word	0x04280428
 8002534:	04280428 	.word	0x04280428
 8002538:	04280428 	.word	0x04280428
 800253c:	04280428 	.word	0x04280428
 8002540:	042802fb 	.word	0x042802fb
 8002544:	00c5033c 	.word	0x00c5033c
 8002548:	02fb02fb 	.word	0x02fb02fb
 800254c:	03d102fb 	.word	0x03d102fb
 8002550:	007000c5 	.word	0x007000c5
 8002554:	03b50428 	.word	0x03b50428
 8002558:	03c20428 	.word	0x03c20428
 800255c:	03de009c 	.word	0x03de009c
 8002560:	04280070 	.word	0x04280070
 8002564:	00720350 	.word	0x00720350
 8002568:	0428022c 	.word	0x0428022c
 800256c:	027c0428 	.word	0x027c0428
 8002570:	00720428 	.word	0x00720428
 8002574:	4649      	mov	r1, r9
 8002576:	9803      	ldr	r0, [sp, #12]
 8002578:	f001 fc9a 	bl	8003eb0 <__swsetup_r>
 800257c:	b1a0      	cbz	r0, 80025a8 <_vfprintf_r+0x1f8>
 800257e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002582:	07d8      	lsls	r0, r3, #31
 8002584:	d404      	bmi.n	8002590 <_vfprintf_r+0x1e0>
 8002586:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800258a:	0599      	lsls	r1, r3, #22
 800258c:	f140 83b7 	bpl.w	8002cfe <_vfprintf_r+0x94e>
 8002590:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002594:	9305      	str	r3, [sp, #20]
 8002596:	9805      	ldr	r0, [sp, #20]
 8002598:	b057      	add	sp, #348	; 0x15c
 800259a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800259e:	f048 0820 	orr.w	r8, r8, #32
 80025a2:	f89a 6000 	ldrb.w	r6, [sl]
 80025a6:	e781      	b.n	80024ac <_vfprintf_r+0xfc>
 80025a8:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80025ac:	f003 021a 	and.w	r2, r3, #26
 80025b0:	2a0a      	cmp	r2, #10
 80025b2:	f47f af37 	bne.w	8002424 <_vfprintf_r+0x74>
 80025b6:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 80025ba:	2a00      	cmp	r2, #0
 80025bc:	f6ff af32 	blt.w	8002424 <_vfprintf_r+0x74>
 80025c0:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80025c4:	07d2      	lsls	r2, r2, #31
 80025c6:	d405      	bmi.n	80025d4 <_vfprintf_r+0x224>
 80025c8:	059b      	lsls	r3, r3, #22
 80025ca:	d403      	bmi.n	80025d4 <_vfprintf_r+0x224>
 80025cc:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80025d0:	f003 f8de 	bl	8005790 <__retarget_lock_release_recursive>
 80025d4:	4623      	mov	r3, r4
 80025d6:	463a      	mov	r2, r7
 80025d8:	4649      	mov	r1, r9
 80025da:	9803      	ldr	r0, [sp, #12]
 80025dc:	f001 fc26 	bl	8003e2c <__sbprintf>
 80025e0:	9005      	str	r0, [sp, #20]
 80025e2:	9805      	ldr	r0, [sp, #20]
 80025e4:	b057      	add	sp, #348	; 0x15c
 80025e6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80025ea:	9803      	ldr	r0, [sp, #12]
 80025ec:	f002 fd7e 	bl	80050ec <__sinit>
 80025f0:	e6f4      	b.n	80023dc <_vfprintf_r+0x2c>
 80025f2:	f048 0810 	orr.w	r8, r8, #16
 80025f6:	f018 0f20 	tst.w	r8, #32
 80025fa:	f000 836c 	beq.w	8002cd6 <_vfprintf_r+0x926>
 80025fe:	9c08      	ldr	r4, [sp, #32]
 8002600:	3407      	adds	r4, #7
 8002602:	f024 0307 	bic.w	r3, r4, #7
 8002606:	e9d3 4500 	ldrd	r4, r5, [r3]
 800260a:	f103 0208 	add.w	r2, r3, #8
 800260e:	9208      	str	r2, [sp, #32]
 8002610:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002614:	2200      	movs	r2, #0
 8002616:	e18c      	b.n	8002932 <_vfprintf_r+0x582>
 8002618:	aa2a      	add	r2, sp, #168	; 0xa8
 800261a:	9907      	ldr	r1, [sp, #28]
 800261c:	9803      	ldr	r0, [sp, #12]
 800261e:	f004 f9f5 	bl	8006a0c <__sprint_r>
 8002622:	2800      	cmp	r0, #0
 8002624:	f041 8376 	bne.w	8003d14 <_vfprintf_r+0x1964>
 8002628:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800262c:	e72c      	b.n	8002488 <_vfprintf_r+0xd8>
 800262e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002632:	f003 f8ab 	bl	800578c <__retarget_lock_acquire_recursive>
 8002636:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800263a:	b293      	uxth	r3, r2
 800263c:	e6d8      	b.n	80023f0 <_vfprintf_r+0x40>
 800263e:	bf00      	nop
	...
 8002648:	4643      	mov	r3, r8
 800264a:	069f      	lsls	r7, r3, #26
 800264c:	f140 832f 	bpl.w	8002cae <_vfprintf_r+0x8fe>
 8002650:	9c08      	ldr	r4, [sp, #32]
 8002652:	3407      	adds	r4, #7
 8002654:	f024 0407 	bic.w	r4, r4, #7
 8002658:	e9d4 0100 	ldrd	r0, r1, [r4]
 800265c:	f104 0208 	add.w	r2, r4, #8
 8002660:	9208      	str	r2, [sp, #32]
 8002662:	4604      	mov	r4, r0
 8002664:	460d      	mov	r5, r1
 8002666:	2800      	cmp	r0, #0
 8002668:	f171 0200 	sbcs.w	r2, r1, #0
 800266c:	da05      	bge.n	800267a <_vfprintf_r+0x2ca>
 800266e:	222d      	movs	r2, #45	; 0x2d
 8002670:	4264      	negs	r4, r4
 8002672:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002676:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800267a:	aa56      	add	r2, sp, #344	; 0x158
 800267c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002680:	9204      	str	r2, [sp, #16]
 8002682:	f000 84b2 	beq.w	8002fea <_vfprintf_r+0xc3a>
 8002686:	2201      	movs	r2, #1
 8002688:	ea54 0105 	orrs.w	r1, r4, r5
 800268c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002690:	f040 8159 	bne.w	8002946 <_vfprintf_r+0x596>
 8002694:	f1b9 0f00 	cmp.w	r9, #0
 8002698:	f040 8619 	bne.w	80032ce <_vfprintf_r+0xf1e>
 800269c:	2a00      	cmp	r2, #0
 800269e:	f040 8508 	bne.w	80030b2 <_vfprintf_r+0xd02>
 80026a2:	f013 0301 	ands.w	r3, r3, #1
 80026a6:	af56      	add	r7, sp, #344	; 0x158
 80026a8:	9309      	str	r3, [sp, #36]	; 0x24
 80026aa:	d002      	beq.n	80026b2 <_vfprintf_r+0x302>
 80026ac:	2330      	movs	r3, #48	; 0x30
 80026ae:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80026b2:	2300      	movs	r3, #0
 80026b4:	930a      	str	r3, [sp, #40]	; 0x28
 80026b6:	930f      	str	r3, [sp, #60]	; 0x3c
 80026b8:	9314      	str	r3, [sp, #80]	; 0x50
 80026ba:	9311      	str	r3, [sp, #68]	; 0x44
 80026bc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80026be:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80026c2:	454b      	cmp	r3, r9
 80026c4:	bfb8      	it	lt
 80026c6:	464b      	movlt	r3, r9
 80026c8:	9304      	str	r3, [sp, #16]
 80026ca:	b112      	cbz	r2, 80026d2 <_vfprintf_r+0x322>
 80026cc:	9b04      	ldr	r3, [sp, #16]
 80026ce:	3301      	adds	r3, #1
 80026d0:	9304      	str	r3, [sp, #16]
 80026d2:	f018 0302 	ands.w	r3, r8, #2
 80026d6:	930b      	str	r3, [sp, #44]	; 0x2c
 80026d8:	d002      	beq.n	80026e0 <_vfprintf_r+0x330>
 80026da:	9b04      	ldr	r3, [sp, #16]
 80026dc:	3302      	adds	r3, #2
 80026de:	9304      	str	r3, [sp, #16]
 80026e0:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 80026e4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80026e6:	930e      	str	r3, [sp, #56]	; 0x38
 80026e8:	d13f      	bne.n	800276a <_vfprintf_r+0x3ba>
 80026ea:	9b06      	ldr	r3, [sp, #24]
 80026ec:	9904      	ldr	r1, [sp, #16]
 80026ee:	1a5d      	subs	r5, r3, r1
 80026f0:	2d00      	cmp	r5, #0
 80026f2:	dd3a      	ble.n	800276a <_vfprintf_r+0x3ba>
 80026f4:	2d10      	cmp	r5, #16
 80026f6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80026f8:	dd29      	ble.n	800274e <_vfprintf_r+0x39e>
 80026fa:	4659      	mov	r1, fp
 80026fc:	4620      	mov	r0, r4
 80026fe:	9620      	str	r6, [sp, #128]	; 0x80
 8002700:	2310      	movs	r3, #16
 8002702:	9c03      	ldr	r4, [sp, #12]
 8002704:	9e07      	ldr	r6, [sp, #28]
 8002706:	46bb      	mov	fp, r7
 8002708:	e004      	b.n	8002714 <_vfprintf_r+0x364>
 800270a:	3d10      	subs	r5, #16
 800270c:	2d10      	cmp	r5, #16
 800270e:	f101 0108 	add.w	r1, r1, #8
 8002712:	dd18      	ble.n	8002746 <_vfprintf_r+0x396>
 8002714:	3201      	adds	r2, #1
 8002716:	4fba      	ldr	r7, [pc, #744]	; (8002a00 <_vfprintf_r+0x650>)
 8002718:	3010      	adds	r0, #16
 800271a:	2a07      	cmp	r2, #7
 800271c:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002720:	e9c1 7300 	strd	r7, r3, [r1]
 8002724:	ddf1      	ble.n	800270a <_vfprintf_r+0x35a>
 8002726:	aa2a      	add	r2, sp, #168	; 0xa8
 8002728:	4631      	mov	r1, r6
 800272a:	4620      	mov	r0, r4
 800272c:	930c      	str	r3, [sp, #48]	; 0x30
 800272e:	f004 f96d 	bl	8006a0c <__sprint_r>
 8002732:	2800      	cmp	r0, #0
 8002734:	f040 843d 	bne.w	8002fb2 <_vfprintf_r+0xc02>
 8002738:	3d10      	subs	r5, #16
 800273a:	2d10      	cmp	r5, #16
 800273c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002740:	a92d      	add	r1, sp, #180	; 0xb4
 8002742:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002744:	dce6      	bgt.n	8002714 <_vfprintf_r+0x364>
 8002746:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002748:	465f      	mov	r7, fp
 800274a:	4604      	mov	r4, r0
 800274c:	468b      	mov	fp, r1
 800274e:	3201      	adds	r2, #1
 8002750:	4bab      	ldr	r3, [pc, #684]	; (8002a00 <_vfprintf_r+0x650>)
 8002752:	442c      	add	r4, r5
 8002754:	2a07      	cmp	r2, #7
 8002756:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800275a:	e9cb 3500 	strd	r3, r5, [fp]
 800275e:	f300 84ff 	bgt.w	8003160 <_vfprintf_r+0xdb0>
 8002762:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002766:	f10b 0b08 	add.w	fp, fp, #8
 800276a:	b172      	cbz	r2, 800278a <_vfprintf_r+0x3da>
 800276c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800276e:	3201      	adds	r2, #1
 8002770:	3401      	adds	r4, #1
 8002772:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002776:	2101      	movs	r1, #1
 8002778:	2a07      	cmp	r2, #7
 800277a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800277e:	e9cb 0100 	strd	r0, r1, [fp]
 8002782:	f300 8418 	bgt.w	8002fb6 <_vfprintf_r+0xc06>
 8002786:	f10b 0b08 	add.w	fp, fp, #8
 800278a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800278c:	b16b      	cbz	r3, 80027aa <_vfprintf_r+0x3fa>
 800278e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002790:	3301      	adds	r3, #1
 8002792:	3402      	adds	r4, #2
 8002794:	a923      	add	r1, sp, #140	; 0x8c
 8002796:	2202      	movs	r2, #2
 8002798:	2b07      	cmp	r3, #7
 800279a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800279e:	e9cb 1200 	strd	r1, r2, [fp]
 80027a2:	f300 8415 	bgt.w	8002fd0 <_vfprintf_r+0xc20>
 80027a6:	f10b 0b08 	add.w	fp, fp, #8
 80027aa:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80027ac:	2b80      	cmp	r3, #128	; 0x80
 80027ae:	f000 8331 	beq.w	8002e14 <_vfprintf_r+0xa64>
 80027b2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80027b4:	eba9 0503 	sub.w	r5, r9, r3
 80027b8:	2d00      	cmp	r5, #0
 80027ba:	dd37      	ble.n	800282c <_vfprintf_r+0x47c>
 80027bc:	2d10      	cmp	r5, #16
 80027be:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80027c0:	4b90      	ldr	r3, [pc, #576]	; (8002a04 <_vfprintf_r+0x654>)
 80027c2:	dd28      	ble.n	8002816 <_vfprintf_r+0x466>
 80027c4:	4659      	mov	r1, fp
 80027c6:	4620      	mov	r0, r4
 80027c8:	46bb      	mov	fp, r7
 80027ca:	f04f 0910 	mov.w	r9, #16
 80027ce:	4637      	mov	r7, r6
 80027d0:	461c      	mov	r4, r3
 80027d2:	9e07      	ldr	r6, [sp, #28]
 80027d4:	e004      	b.n	80027e0 <_vfprintf_r+0x430>
 80027d6:	3d10      	subs	r5, #16
 80027d8:	2d10      	cmp	r5, #16
 80027da:	f101 0108 	add.w	r1, r1, #8
 80027de:	dd15      	ble.n	800280c <_vfprintf_r+0x45c>
 80027e0:	3201      	adds	r2, #1
 80027e2:	3010      	adds	r0, #16
 80027e4:	2a07      	cmp	r2, #7
 80027e6:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80027ea:	e9c1 4900 	strd	r4, r9, [r1]
 80027ee:	ddf2      	ble.n	80027d6 <_vfprintf_r+0x426>
 80027f0:	aa2a      	add	r2, sp, #168	; 0xa8
 80027f2:	4631      	mov	r1, r6
 80027f4:	9803      	ldr	r0, [sp, #12]
 80027f6:	f004 f909 	bl	8006a0c <__sprint_r>
 80027fa:	2800      	cmp	r0, #0
 80027fc:	f040 83d9 	bne.w	8002fb2 <_vfprintf_r+0xc02>
 8002800:	3d10      	subs	r5, #16
 8002802:	2d10      	cmp	r5, #16
 8002804:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002808:	a92d      	add	r1, sp, #180	; 0xb4
 800280a:	dce9      	bgt.n	80027e0 <_vfprintf_r+0x430>
 800280c:	463e      	mov	r6, r7
 800280e:	4623      	mov	r3, r4
 8002810:	465f      	mov	r7, fp
 8002812:	4604      	mov	r4, r0
 8002814:	468b      	mov	fp, r1
 8002816:	3201      	adds	r2, #1
 8002818:	442c      	add	r4, r5
 800281a:	2a07      	cmp	r2, #7
 800281c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002820:	e9cb 3500 	strd	r3, r5, [fp]
 8002824:	f300 83ef 	bgt.w	8003006 <_vfprintf_r+0xc56>
 8002828:	f10b 0b08 	add.w	fp, fp, #8
 800282c:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002830:	f040 8280 	bne.w	8002d34 <_vfprintf_r+0x984>
 8002834:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002836:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002838:	f8cb 7000 	str.w	r7, [fp]
 800283c:	3301      	adds	r3, #1
 800283e:	4414      	add	r4, r2
 8002840:	2b07      	cmp	r3, #7
 8002842:	942c      	str	r4, [sp, #176]	; 0xb0
 8002844:	f8cb 2004 	str.w	r2, [fp, #4]
 8002848:	932b      	str	r3, [sp, #172]	; 0xac
 800284a:	f300 8392 	bgt.w	8002f72 <_vfprintf_r+0xbc2>
 800284e:	f10b 0b08 	add.w	fp, fp, #8
 8002852:	f018 0f04 	tst.w	r8, #4
 8002856:	d03b      	beq.n	80028d0 <_vfprintf_r+0x520>
 8002858:	9b06      	ldr	r3, [sp, #24]
 800285a:	9a04      	ldr	r2, [sp, #16]
 800285c:	1a9d      	subs	r5, r3, r2
 800285e:	2d00      	cmp	r5, #0
 8002860:	dd36      	ble.n	80028d0 <_vfprintf_r+0x520>
 8002862:	2d10      	cmp	r5, #16
 8002864:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002866:	dd21      	ble.n	80028ac <_vfprintf_r+0x4fc>
 8002868:	2610      	movs	r6, #16
 800286a:	9f03      	ldr	r7, [sp, #12]
 800286c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002870:	e004      	b.n	800287c <_vfprintf_r+0x4cc>
 8002872:	3d10      	subs	r5, #16
 8002874:	2d10      	cmp	r5, #16
 8002876:	f10b 0b08 	add.w	fp, fp, #8
 800287a:	dd17      	ble.n	80028ac <_vfprintf_r+0x4fc>
 800287c:	3301      	adds	r3, #1
 800287e:	4a60      	ldr	r2, [pc, #384]	; (8002a00 <_vfprintf_r+0x650>)
 8002880:	3410      	adds	r4, #16
 8002882:	2b07      	cmp	r3, #7
 8002884:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002888:	e9cb 2600 	strd	r2, r6, [fp]
 800288c:	ddf1      	ble.n	8002872 <_vfprintf_r+0x4c2>
 800288e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002890:	4641      	mov	r1, r8
 8002892:	4638      	mov	r0, r7
 8002894:	f004 f8ba 	bl	8006a0c <__sprint_r>
 8002898:	2800      	cmp	r0, #0
 800289a:	f040 856c 	bne.w	8003376 <_vfprintf_r+0xfc6>
 800289e:	3d10      	subs	r5, #16
 80028a0:	2d10      	cmp	r5, #16
 80028a2:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80028a6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80028aa:	dce7      	bgt.n	800287c <_vfprintf_r+0x4cc>
 80028ac:	3301      	adds	r3, #1
 80028ae:	4a54      	ldr	r2, [pc, #336]	; (8002a00 <_vfprintf_r+0x650>)
 80028b0:	442c      	add	r4, r5
 80028b2:	2b07      	cmp	r3, #7
 80028b4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80028b8:	e9cb 2500 	strd	r2, r5, [fp]
 80028bc:	dd08      	ble.n	80028d0 <_vfprintf_r+0x520>
 80028be:	aa2a      	add	r2, sp, #168	; 0xa8
 80028c0:	9907      	ldr	r1, [sp, #28]
 80028c2:	9803      	ldr	r0, [sp, #12]
 80028c4:	f004 f8a2 	bl	8006a0c <__sprint_r>
 80028c8:	2800      	cmp	r0, #0
 80028ca:	f040 82e9 	bne.w	8002ea0 <_vfprintf_r+0xaf0>
 80028ce:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80028d0:	9904      	ldr	r1, [sp, #16]
 80028d2:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 80028d6:	428a      	cmp	r2, r1
 80028d8:	bfac      	ite	ge
 80028da:	189b      	addge	r3, r3, r2
 80028dc:	185b      	addlt	r3, r3, r1
 80028de:	9305      	str	r3, [sp, #20]
 80028e0:	2c00      	cmp	r4, #0
 80028e2:	f040 82d5 	bne.w	8002e90 <_vfprintf_r+0xae0>
 80028e6:	2300      	movs	r3, #0
 80028e8:	932b      	str	r3, [sp, #172]	; 0xac
 80028ea:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80028ec:	b11b      	cbz	r3, 80028f6 <_vfprintf_r+0x546>
 80028ee:	990a      	ldr	r1, [sp, #40]	; 0x28
 80028f0:	9803      	ldr	r0, [sp, #12]
 80028f2:	f002 fc9d 	bl	8005230 <_free_r>
 80028f6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80028fa:	4657      	mov	r7, sl
 80028fc:	783b      	ldrb	r3, [r7, #0]
 80028fe:	2b00      	cmp	r3, #0
 8002900:	f47f ada7 	bne.w	8002452 <_vfprintf_r+0xa2>
 8002904:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002906:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800290a:	2b00      	cmp	r3, #0
 800290c:	f041 80e7 	bne.w	8003ade <_vfprintf_r+0x172e>
 8002910:	2300      	movs	r3, #0
 8002912:	932b      	str	r3, [sp, #172]	; 0xac
 8002914:	e2cb      	b.n	8002eae <_vfprintf_r+0xafe>
 8002916:	4643      	mov	r3, r8
 8002918:	069a      	lsls	r2, r3, #26
 800291a:	f140 814e 	bpl.w	8002bba <_vfprintf_r+0x80a>
 800291e:	9c08      	ldr	r4, [sp, #32]
 8002920:	3407      	adds	r4, #7
 8002922:	f024 0207 	bic.w	r2, r4, #7
 8002926:	f102 0108 	add.w	r1, r2, #8
 800292a:	e9d2 4500 	ldrd	r4, r5, [r2]
 800292e:	9108      	str	r1, [sp, #32]
 8002930:	2201      	movs	r2, #1
 8002932:	2100      	movs	r1, #0
 8002934:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002938:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800293c:	a956      	add	r1, sp, #344	; 0x158
 800293e:	9104      	str	r1, [sp, #16]
 8002940:	f47f aea2 	bne.w	8002688 <_vfprintf_r+0x2d8>
 8002944:	4698      	mov	r8, r3
 8002946:	2a01      	cmp	r2, #1
 8002948:	f000 8350 	beq.w	8002fec <_vfprintf_r+0xc3c>
 800294c:	2a02      	cmp	r2, #2
 800294e:	f000 831b 	beq.w	8002f88 <_vfprintf_r+0xbd8>
 8002952:	a956      	add	r1, sp, #344	; 0x158
 8002954:	e000      	b.n	8002958 <_vfprintf_r+0x5a8>
 8002956:	4639      	mov	r1, r7
 8002958:	08e2      	lsrs	r2, r4, #3
 800295a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 800295e:	08e8      	lsrs	r0, r5, #3
 8002960:	f004 0307 	and.w	r3, r4, #7
 8002964:	4605      	mov	r5, r0
 8002966:	4614      	mov	r4, r2
 8002968:	3330      	adds	r3, #48	; 0x30
 800296a:	ea54 0205 	orrs.w	r2, r4, r5
 800296e:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002972:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002976:	d1ee      	bne.n	8002956 <_vfprintf_r+0x5a6>
 8002978:	f018 0f01 	tst.w	r8, #1
 800297c:	f000 8314 	beq.w	8002fa8 <_vfprintf_r+0xbf8>
 8002980:	2b30      	cmp	r3, #48	; 0x30
 8002982:	f000 8311 	beq.w	8002fa8 <_vfprintf_r+0xbf8>
 8002986:	9a04      	ldr	r2, [sp, #16]
 8002988:	3902      	subs	r1, #2
 800298a:	2330      	movs	r3, #48	; 0x30
 800298c:	1a52      	subs	r2, r2, r1
 800298e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002992:	9209      	str	r2, [sp, #36]	; 0x24
 8002994:	460f      	mov	r7, r1
 8002996:	e68c      	b.n	80026b2 <_vfprintf_r+0x302>
 8002998:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800299c:	2200      	movs	r2, #0
 800299e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80029a2:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 80029a6:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 80029aa:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80029ae:	2b09      	cmp	r3, #9
 80029b0:	d9f5      	bls.n	800299e <_vfprintf_r+0x5ee>
 80029b2:	9206      	str	r2, [sp, #24]
 80029b4:	e57c      	b.n	80024b0 <_vfprintf_r+0x100>
 80029b6:	4b14      	ldr	r3, [pc, #80]	; (8002a08 <_vfprintf_r+0x658>)
 80029b8:	9317      	str	r3, [sp, #92]	; 0x5c
 80029ba:	f018 0f20 	tst.w	r8, #32
 80029be:	f000 8114 	beq.w	8002bea <_vfprintf_r+0x83a>
 80029c2:	9c08      	ldr	r4, [sp, #32]
 80029c4:	3407      	adds	r4, #7
 80029c6:	f024 0307 	bic.w	r3, r4, #7
 80029ca:	e9d3 4500 	ldrd	r4, r5, [r3]
 80029ce:	f103 0208 	add.w	r2, r3, #8
 80029d2:	9208      	str	r2, [sp, #32]
 80029d4:	f018 0f01 	tst.w	r8, #1
 80029d8:	d009      	beq.n	80029ee <_vfprintf_r+0x63e>
 80029da:	ea54 0305 	orrs.w	r3, r4, r5
 80029de:	d006      	beq.n	80029ee <_vfprintf_r+0x63e>
 80029e0:	2330      	movs	r3, #48	; 0x30
 80029e2:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 80029e6:	f048 0802 	orr.w	r8, r8, #2
 80029ea:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80029ee:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80029f2:	2202      	movs	r2, #2
 80029f4:	e79d      	b.n	8002932 <_vfprintf_r+0x582>
 80029f6:	f048 0801 	orr.w	r8, r8, #1
 80029fa:	f89a 6000 	ldrb.w	r6, [sl]
 80029fe:	e555      	b.n	80024ac <_vfprintf_r+0xfc>
 8002a00:	080070f4 	.word	0x080070f4
 8002a04:	08007104 	.word	0x08007104
 8002a08:	080070c0 	.word	0x080070c0
 8002a0c:	9e03      	ldr	r6, [sp, #12]
 8002a0e:	4630      	mov	r0, r6
 8002a10:	f002 feaa 	bl	8005768 <_localeconv_r>
 8002a14:	6843      	ldr	r3, [r0, #4]
 8002a16:	9318      	str	r3, [sp, #96]	; 0x60
 8002a18:	4618      	mov	r0, r3
 8002a1a:	f7fd fe11 	bl	8000640 <strlen>
 8002a1e:	901b      	str	r0, [sp, #108]	; 0x6c
 8002a20:	4604      	mov	r4, r0
 8002a22:	4630      	mov	r0, r6
 8002a24:	f002 fea0 	bl	8005768 <_localeconv_r>
 8002a28:	6883      	ldr	r3, [r0, #8]
 8002a2a:	931a      	str	r3, [sp, #104]	; 0x68
 8002a2c:	2c00      	cmp	r4, #0
 8002a2e:	f43f adb8 	beq.w	80025a2 <_vfprintf_r+0x1f2>
 8002a32:	f89a 6000 	ldrb.w	r6, [sl]
 8002a36:	2b00      	cmp	r3, #0
 8002a38:	f43f ad38 	beq.w	80024ac <_vfprintf_r+0xfc>
 8002a3c:	781b      	ldrb	r3, [r3, #0]
 8002a3e:	2b00      	cmp	r3, #0
 8002a40:	f43f ad34 	beq.w	80024ac <_vfprintf_r+0xfc>
 8002a44:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002a48:	e530      	b.n	80024ac <_vfprintf_r+0xfc>
 8002a4a:	9b08      	ldr	r3, [sp, #32]
 8002a4c:	f89a 6000 	ldrb.w	r6, [sl]
 8002a50:	681a      	ldr	r2, [r3, #0]
 8002a52:	9206      	str	r2, [sp, #24]
 8002a54:	2a00      	cmp	r2, #0
 8002a56:	f103 0304 	add.w	r3, r3, #4
 8002a5a:	f2c0 8697 	blt.w	800378c <_vfprintf_r+0x13dc>
 8002a5e:	9308      	str	r3, [sp, #32]
 8002a60:	e524      	b.n	80024ac <_vfprintf_r+0xfc>
 8002a62:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002a66:	f89a 6000 	ldrb.w	r6, [sl]
 8002a6a:	e51f      	b.n	80024ac <_vfprintf_r+0xfc>
 8002a6c:	f89a 6000 	ldrb.w	r6, [sl]
 8002a70:	f048 0804 	orr.w	r8, r8, #4
 8002a74:	e51a      	b.n	80024ac <_vfprintf_r+0xfc>
 8002a76:	f89a 6000 	ldrb.w	r6, [sl]
 8002a7a:	2e2a      	cmp	r6, #42	; 0x2a
 8002a7c:	f10a 0201 	add.w	r2, sl, #1
 8002a80:	f001 81b0 	beq.w	8003de4 <_vfprintf_r+0x1a34>
 8002a84:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a88:	2b09      	cmp	r3, #9
 8002a8a:	4692      	mov	sl, r2
 8002a8c:	f04f 0900 	mov.w	r9, #0
 8002a90:	f63f ad0e 	bhi.w	80024b0 <_vfprintf_r+0x100>
 8002a94:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002a98:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002a9c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002aa0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002aa4:	2b09      	cmp	r3, #9
 8002aa6:	d9f5      	bls.n	8002a94 <_vfprintf_r+0x6e4>
 8002aa8:	e502      	b.n	80024b0 <_vfprintf_r+0x100>
 8002aaa:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002aae:	f89a 6000 	ldrb.w	r6, [sl]
 8002ab2:	e4fb      	b.n	80024ac <_vfprintf_r+0xfc>
 8002ab4:	9c08      	ldr	r4, [sp, #32]
 8002ab6:	3407      	adds	r4, #7
 8002ab8:	f024 0407 	bic.w	r4, r4, #7
 8002abc:	ed94 7b00 	vldr	d7, [r4]
 8002ac0:	ec52 1b17 	vmov	r1, r2, d7
 8002ac4:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002ac8:	931d      	str	r3, [sp, #116]	; 0x74
 8002aca:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002ace:	3408      	adds	r4, #8
 8002ad0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002ad4:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002ad8:	4bba      	ldr	r3, [pc, #744]	; (8002dc4 <_vfprintf_r+0xa14>)
 8002ada:	9408      	str	r4, [sp, #32]
 8002adc:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002ae0:	f7fe fac4 	bl	800106c <__aeabi_dcmpun>
 8002ae4:	2800      	cmp	r0, #0
 8002ae6:	f040 846f 	bne.w	80033c8 <_vfprintf_r+0x1018>
 8002aea:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002aee:	4bb5      	ldr	r3, [pc, #724]	; (8002dc4 <_vfprintf_r+0xa14>)
 8002af0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002af4:	f7fe fa9c 	bl	8001030 <__aeabi_dcmple>
 8002af8:	2800      	cmp	r0, #0
 8002afa:	f040 8465 	bne.w	80033c8 <_vfprintf_r+0x1018>
 8002afe:	2200      	movs	r2, #0
 8002b00:	2300      	movs	r3, #0
 8002b02:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002b06:	f7fe fa89 	bl	800101c <__aeabi_dcmplt>
 8002b0a:	2800      	cmp	r0, #0
 8002b0c:	f040 855b 	bne.w	80035c6 <_vfprintf_r+0x1216>
 8002b10:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002b14:	4fac      	ldr	r7, [pc, #688]	; (8002dc8 <_vfprintf_r+0xa18>)
 8002b16:	4bad      	ldr	r3, [pc, #692]	; (8002dcc <_vfprintf_r+0xa1c>)
 8002b18:	2000      	movs	r0, #0
 8002b1a:	2103      	movs	r1, #3
 8002b1c:	9104      	str	r1, [sp, #16]
 8002b1e:	900a      	str	r0, [sp, #40]	; 0x28
 8002b20:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002b24:	2e47      	cmp	r6, #71	; 0x47
 8002b26:	bfd8      	it	le
 8002b28:	461f      	movle	r7, r3
 8002b2a:	9109      	str	r1, [sp, #36]	; 0x24
 8002b2c:	4681      	mov	r9, r0
 8002b2e:	900f      	str	r0, [sp, #60]	; 0x3c
 8002b30:	9014      	str	r0, [sp, #80]	; 0x50
 8002b32:	9011      	str	r0, [sp, #68]	; 0x44
 8002b34:	e5c9      	b.n	80026ca <_vfprintf_r+0x31a>
 8002b36:	9808      	ldr	r0, [sp, #32]
 8002b38:	2300      	movs	r3, #0
 8002b3a:	6801      	ldr	r1, [r0, #0]
 8002b3c:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002b40:	461a      	mov	r2, r3
 8002b42:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002b46:	2301      	movs	r3, #1
 8002b48:	1d01      	adds	r1, r0, #4
 8002b4a:	9304      	str	r3, [sp, #16]
 8002b4c:	920a      	str	r2, [sp, #40]	; 0x28
 8002b4e:	4691      	mov	r9, r2
 8002b50:	920f      	str	r2, [sp, #60]	; 0x3c
 8002b52:	9214      	str	r2, [sp, #80]	; 0x50
 8002b54:	9211      	str	r2, [sp, #68]	; 0x44
 8002b56:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002b5a:	af3d      	add	r7, sp, #244	; 0xf4
 8002b5c:	e5b9      	b.n	80026d2 <_vfprintf_r+0x322>
 8002b5e:	9b08      	ldr	r3, [sp, #32]
 8002b60:	681f      	ldr	r7, [r3, #0]
 8002b62:	2500      	movs	r5, #0
 8002b64:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002b68:	1d1c      	adds	r4, r3, #4
 8002b6a:	2f00      	cmp	r7, #0
 8002b6c:	f000 8639 	beq.w	80037e2 <_vfprintf_r+0x1432>
 8002b70:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002b74:	f000 8711 	beq.w	800399a <_vfprintf_r+0x15ea>
 8002b78:	464a      	mov	r2, r9
 8002b7a:	4629      	mov	r1, r5
 8002b7c:	4638      	mov	r0, r7
 8002b7e:	f7fd fdcf 	bl	8000720 <memchr>
 8002b82:	900a      	str	r0, [sp, #40]	; 0x28
 8002b84:	2800      	cmp	r0, #0
 8002b86:	f000 85e7 	beq.w	8003758 <_vfprintf_r+0x13a8>
 8002b8a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002b8c:	1bdb      	subs	r3, r3, r7
 8002b8e:	9309      	str	r3, [sp, #36]	; 0x24
 8002b90:	46a9      	mov	r9, r5
 8002b92:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002b96:	9408      	str	r4, [sp, #32]
 8002b98:	9304      	str	r3, [sp, #16]
 8002b9a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002b9e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002ba2:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002ba6:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002baa:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002bae:	e58c      	b.n	80026ca <_vfprintf_r+0x31a>
 8002bb0:	f048 0310 	orr.w	r3, r8, #16
 8002bb4:	069a      	lsls	r2, r3, #26
 8002bb6:	f53f aeb2 	bmi.w	800291e <_vfprintf_r+0x56e>
 8002bba:	9a08      	ldr	r2, [sp, #32]
 8002bbc:	06df      	lsls	r7, r3, #27
 8002bbe:	f102 0104 	add.w	r1, r2, #4
 8002bc2:	f100 837e 	bmi.w	80032c2 <_vfprintf_r+0xf12>
 8002bc6:	065d      	lsls	r5, r3, #25
 8002bc8:	9a08      	ldr	r2, [sp, #32]
 8002bca:	f100 84e4 	bmi.w	8003596 <_vfprintf_r+0x11e6>
 8002bce:	059c      	lsls	r4, r3, #22
 8002bd0:	f140 8377 	bpl.w	80032c2 <_vfprintf_r+0xf12>
 8002bd4:	7814      	ldrb	r4, [r2, #0]
 8002bd6:	9108      	str	r1, [sp, #32]
 8002bd8:	2500      	movs	r5, #0
 8002bda:	2201      	movs	r2, #1
 8002bdc:	e6a9      	b.n	8002932 <_vfprintf_r+0x582>
 8002bde:	4b7c      	ldr	r3, [pc, #496]	; (8002dd0 <_vfprintf_r+0xa20>)
 8002be0:	9317      	str	r3, [sp, #92]	; 0x5c
 8002be2:	f018 0f20 	tst.w	r8, #32
 8002be6:	f47f aeec 	bne.w	80029c2 <_vfprintf_r+0x612>
 8002bea:	9a08      	ldr	r2, [sp, #32]
 8002bec:	f018 0f10 	tst.w	r8, #16
 8002bf0:	f102 0304 	add.w	r3, r2, #4
 8002bf4:	f040 8354 	bne.w	80032a0 <_vfprintf_r+0xef0>
 8002bf8:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002bfc:	9a08      	ldr	r2, [sp, #32]
 8002bfe:	f040 84d0 	bne.w	80035a2 <_vfprintf_r+0x11f2>
 8002c02:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002c06:	f000 834b 	beq.w	80032a0 <_vfprintf_r+0xef0>
 8002c0a:	7814      	ldrb	r4, [r2, #0]
 8002c0c:	9308      	str	r3, [sp, #32]
 8002c0e:	2500      	movs	r5, #0
 8002c10:	e6e0      	b.n	80029d4 <_vfprintf_r+0x624>
 8002c12:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002c16:	f89a 6000 	ldrb.w	r6, [sl]
 8002c1a:	2b00      	cmp	r3, #0
 8002c1c:	f47f ac46 	bne.w	80024ac <_vfprintf_r+0xfc>
 8002c20:	2320      	movs	r3, #32
 8002c22:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002c26:	e441      	b.n	80024ac <_vfprintf_r+0xfc>
 8002c28:	f89a 6000 	ldrb.w	r6, [sl]
 8002c2c:	2e6c      	cmp	r6, #108	; 0x6c
 8002c2e:	bf03      	ittte	eq
 8002c30:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002c34:	f048 0820 	orreq.w	r8, r8, #32
 8002c38:	f10a 0a01 	addeq.w	sl, sl, #1
 8002c3c:	f048 0810 	orrne.w	r8, r8, #16
 8002c40:	e434      	b.n	80024ac <_vfprintf_r+0xfc>
 8002c42:	9a08      	ldr	r2, [sp, #32]
 8002c44:	f018 0f20 	tst.w	r8, #32
 8002c48:	f852 3b04 	ldr.w	r3, [r2], #4
 8002c4c:	9208      	str	r2, [sp, #32]
 8002c4e:	f000 83a1 	beq.w	8003394 <_vfprintf_r+0xfe4>
 8002c52:	9a05      	ldr	r2, [sp, #20]
 8002c54:	4610      	mov	r0, r2
 8002c56:	17d1      	asrs	r1, r2, #31
 8002c58:	e9c3 0100 	strd	r0, r1, [r3]
 8002c5c:	4657      	mov	r7, sl
 8002c5e:	e64d      	b.n	80028fc <_vfprintf_r+0x54c>
 8002c60:	f89a 6000 	ldrb.w	r6, [sl]
 8002c64:	2e68      	cmp	r6, #104	; 0x68
 8002c66:	bf03      	ittte	eq
 8002c68:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002c6c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002c70:	f10a 0a01 	addeq.w	sl, sl, #1
 8002c74:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002c78:	e418      	b.n	80024ac <_vfprintf_r+0xfc>
 8002c7a:	9908      	ldr	r1, [sp, #32]
 8002c7c:	4b55      	ldr	r3, [pc, #340]	; (8002dd4 <_vfprintf_r+0xa24>)
 8002c7e:	680c      	ldr	r4, [r1, #0]
 8002c80:	9317      	str	r3, [sp, #92]	; 0x5c
 8002c82:	f647 0230 	movw	r2, #30768	; 0x7830
 8002c86:	3104      	adds	r1, #4
 8002c88:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002c8c:	f048 0302 	orr.w	r3, r8, #2
 8002c90:	9108      	str	r1, [sp, #32]
 8002c92:	2500      	movs	r5, #0
 8002c94:	2202      	movs	r2, #2
 8002c96:	2678      	movs	r6, #120	; 0x78
 8002c98:	e64b      	b.n	8002932 <_vfprintf_r+0x582>
 8002c9a:	f048 0808 	orr.w	r8, r8, #8
 8002c9e:	f89a 6000 	ldrb.w	r6, [sl]
 8002ca2:	e403      	b.n	80024ac <_vfprintf_r+0xfc>
 8002ca4:	f048 0310 	orr.w	r3, r8, #16
 8002ca8:	069f      	lsls	r7, r3, #26
 8002caa:	f53f acd1 	bmi.w	8002650 <_vfprintf_r+0x2a0>
 8002cae:	9908      	ldr	r1, [sp, #32]
 8002cb0:	06dd      	lsls	r5, r3, #27
 8002cb2:	f101 0204 	add.w	r2, r1, #4
 8002cb6:	f100 82fd 	bmi.w	80032b4 <_vfprintf_r+0xf04>
 8002cba:	065c      	lsls	r4, r3, #25
 8002cbc:	9908      	ldr	r1, [sp, #32]
 8002cbe:	f100 8475 	bmi.w	80035ac <_vfprintf_r+0x11fc>
 8002cc2:	0598      	lsls	r0, r3, #22
 8002cc4:	f140 82f6 	bpl.w	80032b4 <_vfprintf_r+0xf04>
 8002cc8:	f991 4000 	ldrsb.w	r4, [r1]
 8002ccc:	9208      	str	r2, [sp, #32]
 8002cce:	17e5      	asrs	r5, r4, #31
 8002cd0:	4620      	mov	r0, r4
 8002cd2:	4629      	mov	r1, r5
 8002cd4:	e4c7      	b.n	8002666 <_vfprintf_r+0x2b6>
 8002cd6:	9a08      	ldr	r2, [sp, #32]
 8002cd8:	f018 0f10 	tst.w	r8, #16
 8002cdc:	f102 0304 	add.w	r3, r2, #4
 8002ce0:	f040 82e3 	bne.w	80032aa <_vfprintf_r+0xefa>
 8002ce4:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002ce8:	9a08      	ldr	r2, [sp, #32]
 8002cea:	f040 8467 	bne.w	80035bc <_vfprintf_r+0x120c>
 8002cee:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002cf2:	f000 82da 	beq.w	80032aa <_vfprintf_r+0xefa>
 8002cf6:	7814      	ldrb	r4, [r2, #0]
 8002cf8:	9308      	str	r3, [sp, #32]
 8002cfa:	2500      	movs	r5, #0
 8002cfc:	e488      	b.n	8002610 <_vfprintf_r+0x260>
 8002cfe:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002d02:	f002 fd45 	bl	8005790 <__retarget_lock_release_recursive>
 8002d06:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002d0a:	9305      	str	r3, [sp, #20]
 8002d0c:	e443      	b.n	8002596 <_vfprintf_r+0x1e6>
 8002d0e:	2e00      	cmp	r6, #0
 8002d10:	f43f adf8 	beq.w	8002904 <_vfprintf_r+0x554>
 8002d14:	2300      	movs	r3, #0
 8002d16:	2101      	movs	r1, #1
 8002d18:	461a      	mov	r2, r3
 8002d1a:	9104      	str	r1, [sp, #16]
 8002d1c:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002d20:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002d24:	930a      	str	r3, [sp, #40]	; 0x28
 8002d26:	4699      	mov	r9, r3
 8002d28:	930f      	str	r3, [sp, #60]	; 0x3c
 8002d2a:	9314      	str	r3, [sp, #80]	; 0x50
 8002d2c:	9311      	str	r3, [sp, #68]	; 0x44
 8002d2e:	9109      	str	r1, [sp, #36]	; 0x24
 8002d30:	af3d      	add	r7, sp, #244	; 0xf4
 8002d32:	e4ce      	b.n	80026d2 <_vfprintf_r+0x322>
 8002d34:	2e65      	cmp	r6, #101	; 0x65
 8002d36:	f340 80ca 	ble.w	8002ece <_vfprintf_r+0xb1e>
 8002d3a:	2200      	movs	r2, #0
 8002d3c:	2300      	movs	r3, #0
 8002d3e:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002d42:	f7fe f961 	bl	8001008 <__aeabi_dcmpeq>
 8002d46:	2800      	cmp	r0, #0
 8002d48:	f000 8169 	beq.w	800301e <_vfprintf_r+0xc6e>
 8002d4c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002d4e:	4a22      	ldr	r2, [pc, #136]	; (8002dd8 <_vfprintf_r+0xa28>)
 8002d50:	f8cb 2000 	str.w	r2, [fp]
 8002d54:	3301      	adds	r3, #1
 8002d56:	3401      	adds	r4, #1
 8002d58:	2201      	movs	r2, #1
 8002d5a:	2b07      	cmp	r3, #7
 8002d5c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002d60:	f8cb 2004 	str.w	r2, [fp, #4]
 8002d64:	f300 8406 	bgt.w	8003574 <_vfprintf_r+0x11c4>
 8002d68:	f10b 0b08 	add.w	fp, fp, #8
 8002d6c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002d6e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002d70:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002d72:	4293      	cmp	r3, r2
 8002d74:	db03      	blt.n	8002d7e <_vfprintf_r+0x9ce>
 8002d76:	f018 0f01 	tst.w	r8, #1
 8002d7a:	f43f ad6a 	beq.w	8002852 <_vfprintf_r+0x4a2>
 8002d7e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002d80:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002d82:	f8cb 2000 	str.w	r2, [fp]
 8002d86:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002d88:	f8cb 2004 	str.w	r2, [fp, #4]
 8002d8c:	3301      	adds	r3, #1
 8002d8e:	4414      	add	r4, r2
 8002d90:	2b07      	cmp	r3, #7
 8002d92:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002d96:	f300 8517 	bgt.w	80037c8 <_vfprintf_r+0x1418>
 8002d9a:	f10b 0b08 	add.w	fp, fp, #8
 8002d9e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002da0:	1e5d      	subs	r5, r3, #1
 8002da2:	2d00      	cmp	r5, #0
 8002da4:	f77f ad55 	ble.w	8002852 <_vfprintf_r+0x4a2>
 8002da8:	2d10      	cmp	r5, #16
 8002daa:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002dac:	4b0b      	ldr	r3, [pc, #44]	; (8002ddc <_vfprintf_r+0xa2c>)
 8002dae:	f340 82e7 	ble.w	8003380 <_vfprintf_r+0xfd0>
 8002db2:	4619      	mov	r1, r3
 8002db4:	2610      	movs	r6, #16
 8002db6:	4623      	mov	r3, r4
 8002db8:	9f03      	ldr	r7, [sp, #12]
 8002dba:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002dbe:	460c      	mov	r4, r1
 8002dc0:	e014      	b.n	8002dec <_vfprintf_r+0xa3c>
 8002dc2:	bf00      	nop
 8002dc4:	7fefffff 	.word	0x7fefffff
 8002dc8:	080070b4 	.word	0x080070b4
 8002dcc:	080070b0 	.word	0x080070b0
 8002dd0:	080070d4 	.word	0x080070d4
 8002dd4:	080070c0 	.word	0x080070c0
 8002dd8:	080070f0 	.word	0x080070f0
 8002ddc:	08007104 	.word	0x08007104
 8002de0:	f10b 0b08 	add.w	fp, fp, #8
 8002de4:	3d10      	subs	r5, #16
 8002de6:	2d10      	cmp	r5, #16
 8002de8:	f340 82c7 	ble.w	800337a <_vfprintf_r+0xfca>
 8002dec:	3201      	adds	r2, #1
 8002dee:	3310      	adds	r3, #16
 8002df0:	2a07      	cmp	r2, #7
 8002df2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002df6:	e9cb 4600 	strd	r4, r6, [fp]
 8002dfa:	ddf1      	ble.n	8002de0 <_vfprintf_r+0xa30>
 8002dfc:	aa2a      	add	r2, sp, #168	; 0xa8
 8002dfe:	4649      	mov	r1, r9
 8002e00:	4638      	mov	r0, r7
 8002e02:	f003 fe03 	bl	8006a0c <__sprint_r>
 8002e06:	2800      	cmp	r0, #0
 8002e08:	d14c      	bne.n	8002ea4 <_vfprintf_r+0xaf4>
 8002e0a:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002e0e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002e12:	e7e7      	b.n	8002de4 <_vfprintf_r+0xa34>
 8002e14:	9b06      	ldr	r3, [sp, #24]
 8002e16:	9a04      	ldr	r2, [sp, #16]
 8002e18:	1a9d      	subs	r5, r3, r2
 8002e1a:	2d00      	cmp	r5, #0
 8002e1c:	f77f acc9 	ble.w	80027b2 <_vfprintf_r+0x402>
 8002e20:	2d10      	cmp	r5, #16
 8002e22:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e24:	4bbc      	ldr	r3, [pc, #752]	; (8003118 <_vfprintf_r+0xd68>)
 8002e26:	dd27      	ble.n	8002e78 <_vfprintf_r+0xac8>
 8002e28:	4659      	mov	r1, fp
 8002e2a:	4620      	mov	r0, r4
 8002e2c:	46bb      	mov	fp, r7
 8002e2e:	461c      	mov	r4, r3
 8002e30:	4637      	mov	r7, r6
 8002e32:	9e07      	ldr	r6, [sp, #28]
 8002e34:	e004      	b.n	8002e40 <_vfprintf_r+0xa90>
 8002e36:	3d10      	subs	r5, #16
 8002e38:	2d10      	cmp	r5, #16
 8002e3a:	f101 0108 	add.w	r1, r1, #8
 8002e3e:	dd16      	ble.n	8002e6e <_vfprintf_r+0xabe>
 8002e40:	3201      	adds	r2, #1
 8002e42:	3010      	adds	r0, #16
 8002e44:	2310      	movs	r3, #16
 8002e46:	2a07      	cmp	r2, #7
 8002e48:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002e4c:	600c      	str	r4, [r1, #0]
 8002e4e:	604b      	str	r3, [r1, #4]
 8002e50:	ddf1      	ble.n	8002e36 <_vfprintf_r+0xa86>
 8002e52:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e54:	4631      	mov	r1, r6
 8002e56:	9803      	ldr	r0, [sp, #12]
 8002e58:	f003 fdd8 	bl	8006a0c <__sprint_r>
 8002e5c:	2800      	cmp	r0, #0
 8002e5e:	f040 80a8 	bne.w	8002fb2 <_vfprintf_r+0xc02>
 8002e62:	3d10      	subs	r5, #16
 8002e64:	2d10      	cmp	r5, #16
 8002e66:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002e6a:	a92d      	add	r1, sp, #180	; 0xb4
 8002e6c:	dce8      	bgt.n	8002e40 <_vfprintf_r+0xa90>
 8002e6e:	463e      	mov	r6, r7
 8002e70:	4623      	mov	r3, r4
 8002e72:	465f      	mov	r7, fp
 8002e74:	4604      	mov	r4, r0
 8002e76:	468b      	mov	fp, r1
 8002e78:	3201      	adds	r2, #1
 8002e7a:	442c      	add	r4, r5
 8002e7c:	2a07      	cmp	r2, #7
 8002e7e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002e82:	e9cb 3500 	strd	r3, r5, [fp]
 8002e86:	f300 8292 	bgt.w	80033ae <_vfprintf_r+0xffe>
 8002e8a:	f10b 0b08 	add.w	fp, fp, #8
 8002e8e:	e490      	b.n	80027b2 <_vfprintf_r+0x402>
 8002e90:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e92:	9907      	ldr	r1, [sp, #28]
 8002e94:	9803      	ldr	r0, [sp, #12]
 8002e96:	f003 fdb9 	bl	8006a0c <__sprint_r>
 8002e9a:	2800      	cmp	r0, #0
 8002e9c:	f43f ad23 	beq.w	80028e6 <_vfprintf_r+0x536>
 8002ea0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002ea4:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002ea6:	b111      	cbz	r1, 8002eae <_vfprintf_r+0xafe>
 8002ea8:	9803      	ldr	r0, [sp, #12]
 8002eaa:	f002 f9c1 	bl	8005230 <_free_r>
 8002eae:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002eb2:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002eb6:	07d0      	lsls	r0, r2, #31
 8002eb8:	d402      	bmi.n	8002ec0 <_vfprintf_r+0xb10>
 8002eba:	0599      	lsls	r1, r3, #22
 8002ebc:	f140 81d0 	bpl.w	8003260 <_vfprintf_r+0xeb0>
 8002ec0:	065a      	lsls	r2, r3, #25
 8002ec2:	f53f ab65 	bmi.w	8002590 <_vfprintf_r+0x1e0>
 8002ec6:	9805      	ldr	r0, [sp, #20]
 8002ec8:	b057      	add	sp, #348	; 0x15c
 8002eca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002ece:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002ed0:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002ed2:	2a01      	cmp	r2, #1
 8002ed4:	f104 0401 	add.w	r4, r4, #1
 8002ed8:	f103 0501 	add.w	r5, r3, #1
 8002edc:	f10b 0608 	add.w	r6, fp, #8
 8002ee0:	f340 811c 	ble.w	800311c <_vfprintf_r+0xd6c>
 8002ee4:	2301      	movs	r3, #1
 8002ee6:	2d07      	cmp	r5, #7
 8002ee8:	f8cb 7000 	str.w	r7, [fp]
 8002eec:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002ef0:	f8cb 3004 	str.w	r3, [fp, #4]
 8002ef4:	f300 81bb 	bgt.w	800326e <_vfprintf_r+0xebe>
 8002ef8:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002efa:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002efc:	1c69      	adds	r1, r5, #1
 8002efe:	441c      	add	r4, r3
 8002f00:	2907      	cmp	r1, #7
 8002f02:	910b      	str	r1, [sp, #44]	; 0x2c
 8002f04:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8002f08:	e9c6 2300 	strd	r2, r3, [r6]
 8002f0c:	f300 81bb 	bgt.w	8003286 <_vfprintf_r+0xed6>
 8002f10:	3608      	adds	r6, #8
 8002f12:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002f14:	1c53      	adds	r3, r2, #1
 8002f16:	461d      	mov	r5, r3
 8002f18:	9509      	str	r5, [sp, #36]	; 0x24
 8002f1a:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8002f1c:	930e      	str	r3, [sp, #56]	; 0x38
 8002f1e:	2200      	movs	r2, #0
 8002f20:	2300      	movs	r3, #0
 8002f22:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002f26:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8002f2a:	f106 0b08 	add.w	fp, r6, #8
 8002f2e:	f7fe f86b 	bl	8001008 <__aeabi_dcmpeq>
 8002f32:	2800      	cmp	r0, #0
 8002f34:	f040 80c2 	bne.w	80030bc <_vfprintf_r+0xd0c>
 8002f38:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002f3a:	f8c6 9004 	str.w	r9, [r6, #4]
 8002f3e:	3701      	adds	r7, #1
 8002f40:	444c      	add	r4, r9
 8002f42:	2d07      	cmp	r5, #7
 8002f44:	6037      	str	r7, [r6, #0]
 8002f46:	942c      	str	r4, [sp, #176]	; 0xb0
 8002f48:	952b      	str	r5, [sp, #172]	; 0xac
 8002f4a:	f300 80f9 	bgt.w	8003140 <_vfprintf_r+0xd90>
 8002f4e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002f50:	f106 0310 	add.w	r3, r6, #16
 8002f54:	3202      	adds	r2, #2
 8002f56:	465e      	mov	r6, fp
 8002f58:	9209      	str	r2, [sp, #36]	; 0x24
 8002f5a:	469b      	mov	fp, r3
 8002f5c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8002f5e:	6072      	str	r2, [r6, #4]
 8002f60:	4414      	add	r4, r2
 8002f62:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002f64:	942c      	str	r4, [sp, #176]	; 0xb0
 8002f66:	ab26      	add	r3, sp, #152	; 0x98
 8002f68:	2a07      	cmp	r2, #7
 8002f6a:	922b      	str	r2, [sp, #172]	; 0xac
 8002f6c:	6033      	str	r3, [r6, #0]
 8002f6e:	f77f ac70 	ble.w	8002852 <_vfprintf_r+0x4a2>
 8002f72:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f74:	9907      	ldr	r1, [sp, #28]
 8002f76:	9803      	ldr	r0, [sp, #12]
 8002f78:	f003 fd48 	bl	8006a0c <__sprint_r>
 8002f7c:	2800      	cmp	r0, #0
 8002f7e:	d18f      	bne.n	8002ea0 <_vfprintf_r+0xaf0>
 8002f80:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f82:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f86:	e464      	b.n	8002852 <_vfprintf_r+0x4a2>
 8002f88:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8002f8a:	af56      	add	r7, sp, #344	; 0x158
 8002f8c:	0923      	lsrs	r3, r4, #4
 8002f8e:	f004 010f 	and.w	r1, r4, #15
 8002f92:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8002f96:	092a      	lsrs	r2, r5, #4
 8002f98:	461c      	mov	r4, r3
 8002f9a:	4615      	mov	r5, r2
 8002f9c:	5c43      	ldrb	r3, [r0, r1]
 8002f9e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002fa2:	ea54 0305 	orrs.w	r3, r4, r5
 8002fa6:	d1f1      	bne.n	8002f8c <_vfprintf_r+0xbdc>
 8002fa8:	9b04      	ldr	r3, [sp, #16]
 8002faa:	1bdb      	subs	r3, r3, r7
 8002fac:	9309      	str	r3, [sp, #36]	; 0x24
 8002fae:	f7ff bb80 	b.w	80026b2 <_vfprintf_r+0x302>
 8002fb2:	46b1      	mov	r9, r6
 8002fb4:	e776      	b.n	8002ea4 <_vfprintf_r+0xaf4>
 8002fb6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002fb8:	9907      	ldr	r1, [sp, #28]
 8002fba:	9803      	ldr	r0, [sp, #12]
 8002fbc:	f003 fd26 	bl	8006a0c <__sprint_r>
 8002fc0:	2800      	cmp	r0, #0
 8002fc2:	f47f af6d 	bne.w	8002ea0 <_vfprintf_r+0xaf0>
 8002fc6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002fc8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002fcc:	f7ff bbdd 	b.w	800278a <_vfprintf_r+0x3da>
 8002fd0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002fd2:	9907      	ldr	r1, [sp, #28]
 8002fd4:	9803      	ldr	r0, [sp, #12]
 8002fd6:	f003 fd19 	bl	8006a0c <__sprint_r>
 8002fda:	2800      	cmp	r0, #0
 8002fdc:	f47f af60 	bne.w	8002ea0 <_vfprintf_r+0xaf0>
 8002fe0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002fe2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002fe6:	f7ff bbe0 	b.w	80027aa <_vfprintf_r+0x3fa>
 8002fea:	4698      	mov	r8, r3
 8002fec:	2d00      	cmp	r5, #0
 8002fee:	bf08      	it	eq
 8002ff0:	2c0a      	cmpeq	r4, #10
 8002ff2:	f080 8170 	bcs.w	80032d6 <_vfprintf_r+0xf26>
 8002ff6:	af56      	add	r7, sp, #344	; 0x158
 8002ff8:	3430      	adds	r4, #48	; 0x30
 8002ffa:	2301      	movs	r3, #1
 8002ffc:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003000:	9309      	str	r3, [sp, #36]	; 0x24
 8003002:	f7ff bb56 	b.w	80026b2 <_vfprintf_r+0x302>
 8003006:	aa2a      	add	r2, sp, #168	; 0xa8
 8003008:	9907      	ldr	r1, [sp, #28]
 800300a:	9803      	ldr	r0, [sp, #12]
 800300c:	f003 fcfe 	bl	8006a0c <__sprint_r>
 8003010:	2800      	cmp	r0, #0
 8003012:	f47f af45 	bne.w	8002ea0 <_vfprintf_r+0xaf0>
 8003016:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003018:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800301c:	e406      	b.n	800282c <_vfprintf_r+0x47c>
 800301e:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003020:	2b00      	cmp	r3, #0
 8003022:	f340 8273 	ble.w	800350c <_vfprintf_r+0x115c>
 8003026:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 800302a:	4293      	cmp	r3, r2
 800302c:	bfa8      	it	ge
 800302e:	4613      	movge	r3, r2
 8003030:	2b00      	cmp	r3, #0
 8003032:	461d      	mov	r5, r3
 8003034:	dd0d      	ble.n	8003052 <_vfprintf_r+0xca2>
 8003036:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003038:	f8cb 7000 	str.w	r7, [fp]
 800303c:	3301      	adds	r3, #1
 800303e:	442c      	add	r4, r5
 8003040:	2b07      	cmp	r3, #7
 8003042:	942c      	str	r4, [sp, #176]	; 0xb0
 8003044:	f8cb 5004 	str.w	r5, [fp, #4]
 8003048:	932b      	str	r3, [sp, #172]	; 0xac
 800304a:	f300 82c1 	bgt.w	80035d0 <_vfprintf_r+0x1220>
 800304e:	f10b 0b08 	add.w	fp, fp, #8
 8003052:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003054:	2d00      	cmp	r5, #0
 8003056:	bfa8      	it	ge
 8003058:	1b5b      	subge	r3, r3, r5
 800305a:	2b00      	cmp	r3, #0
 800305c:	461d      	mov	r5, r3
 800305e:	f340 8099 	ble.w	8003194 <_vfprintf_r+0xde4>
 8003062:	2d10      	cmp	r5, #16
 8003064:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003066:	4b2c      	ldr	r3, [pc, #176]	; (8003118 <_vfprintf_r+0xd68>)
 8003068:	f340 83db 	ble.w	8003822 <_vfprintf_r+0x1472>
 800306c:	4618      	mov	r0, r3
 800306e:	4621      	mov	r1, r4
 8003070:	465b      	mov	r3, fp
 8003072:	2610      	movs	r6, #16
 8003074:	46bb      	mov	fp, r7
 8003076:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800307a:	9c07      	ldr	r4, [sp, #28]
 800307c:	4607      	mov	r7, r0
 800307e:	e004      	b.n	800308a <_vfprintf_r+0xcda>
 8003080:	3308      	adds	r3, #8
 8003082:	3d10      	subs	r5, #16
 8003084:	2d10      	cmp	r5, #16
 8003086:	f340 83c7 	ble.w	8003818 <_vfprintf_r+0x1468>
 800308a:	3201      	adds	r2, #1
 800308c:	3110      	adds	r1, #16
 800308e:	2a07      	cmp	r2, #7
 8003090:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003094:	e9c3 7600 	strd	r7, r6, [r3]
 8003098:	ddf2      	ble.n	8003080 <_vfprintf_r+0xcd0>
 800309a:	aa2a      	add	r2, sp, #168	; 0xa8
 800309c:	4621      	mov	r1, r4
 800309e:	4648      	mov	r0, r9
 80030a0:	f003 fcb4 	bl	8006a0c <__sprint_r>
 80030a4:	2800      	cmp	r0, #0
 80030a6:	f040 84a5 	bne.w	80039f4 <_vfprintf_r+0x1644>
 80030aa:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 80030ae:	ab2d      	add	r3, sp, #180	; 0xb4
 80030b0:	e7e7      	b.n	8003082 <_vfprintf_r+0xcd2>
 80030b2:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80030b6:	af56      	add	r7, sp, #344	; 0x158
 80030b8:	f7ff bafb 	b.w	80026b2 <_vfprintf_r+0x302>
 80030bc:	f1b9 0f00 	cmp.w	r9, #0
 80030c0:	f77f af4c 	ble.w	8002f5c <_vfprintf_r+0xbac>
 80030c4:	f1b9 0f10 	cmp.w	r9, #16
 80030c8:	4b13      	ldr	r3, [pc, #76]	; (8003118 <_vfprintf_r+0xd68>)
 80030ca:	f340 8659 	ble.w	8003d80 <_vfprintf_r+0x19d0>
 80030ce:	4619      	mov	r1, r3
 80030d0:	4622      	mov	r2, r4
 80030d2:	4633      	mov	r3, r6
 80030d4:	2710      	movs	r7, #16
 80030d6:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80030da:	9c07      	ldr	r4, [sp, #28]
 80030dc:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80030de:	460e      	mov	r6, r1
 80030e0:	e007      	b.n	80030f2 <_vfprintf_r+0xd42>
 80030e2:	3308      	adds	r3, #8
 80030e4:	f1a9 0910 	sub.w	r9, r9, #16
 80030e8:	f1b9 0f10 	cmp.w	r9, #16
 80030ec:	f340 8353 	ble.w	8003796 <_vfprintf_r+0x13e6>
 80030f0:	3501      	adds	r5, #1
 80030f2:	3210      	adds	r2, #16
 80030f4:	2d07      	cmp	r5, #7
 80030f6:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80030fa:	e9c3 6700 	strd	r6, r7, [r3]
 80030fe:	ddf0      	ble.n	80030e2 <_vfprintf_r+0xd32>
 8003100:	aa2a      	add	r2, sp, #168	; 0xa8
 8003102:	4621      	mov	r1, r4
 8003104:	4658      	mov	r0, fp
 8003106:	f003 fc81 	bl	8006a0c <__sprint_r>
 800310a:	2800      	cmp	r0, #0
 800310c:	f040 8472 	bne.w	80039f4 <_vfprintf_r+0x1644>
 8003110:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8003114:	ab2d      	add	r3, sp, #180	; 0xb4
 8003116:	e7e5      	b.n	80030e4 <_vfprintf_r+0xd34>
 8003118:	08007104 	.word	0x08007104
 800311c:	f018 0f01 	tst.w	r8, #1
 8003120:	f47f aee0 	bne.w	8002ee4 <_vfprintf_r+0xb34>
 8003124:	2201      	movs	r2, #1
 8003126:	2d07      	cmp	r5, #7
 8003128:	f8cb 7000 	str.w	r7, [fp]
 800312c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003130:	f8cb 2004 	str.w	r2, [fp, #4]
 8003134:	dc04      	bgt.n	8003140 <_vfprintf_r+0xd90>
 8003136:	3302      	adds	r3, #2
 8003138:	9309      	str	r3, [sp, #36]	; 0x24
 800313a:	f10b 0b10 	add.w	fp, fp, #16
 800313e:	e70d      	b.n	8002f5c <_vfprintf_r+0xbac>
 8003140:	aa2a      	add	r2, sp, #168	; 0xa8
 8003142:	9907      	ldr	r1, [sp, #28]
 8003144:	9803      	ldr	r0, [sp, #12]
 8003146:	f003 fc61 	bl	8006a0c <__sprint_r>
 800314a:	2800      	cmp	r0, #0
 800314c:	f47f aea8 	bne.w	8002ea0 <_vfprintf_r+0xaf0>
 8003150:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003154:	3301      	adds	r3, #1
 8003156:	9309      	str	r3, [sp, #36]	; 0x24
 8003158:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 800315c:	ae2d      	add	r6, sp, #180	; 0xb4
 800315e:	e6fd      	b.n	8002f5c <_vfprintf_r+0xbac>
 8003160:	aa2a      	add	r2, sp, #168	; 0xa8
 8003162:	9907      	ldr	r1, [sp, #28]
 8003164:	9803      	ldr	r0, [sp, #12]
 8003166:	f003 fc51 	bl	8006a0c <__sprint_r>
 800316a:	2800      	cmp	r0, #0
 800316c:	f47f ae98 	bne.w	8002ea0 <_vfprintf_r+0xaf0>
 8003170:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003174:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003176:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800317a:	f7ff baf6 	b.w	800276a <_vfprintf_r+0x3ba>
 800317e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003180:	9907      	ldr	r1, [sp, #28]
 8003182:	9803      	ldr	r0, [sp, #12]
 8003184:	f003 fc42 	bl	8006a0c <__sprint_r>
 8003188:	2800      	cmp	r0, #0
 800318a:	f47f ae89 	bne.w	8002ea0 <_vfprintf_r+0xaf0>
 800318e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003190:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003194:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003196:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800319a:	443b      	add	r3, r7
 800319c:	4699      	mov	r9, r3
 800319e:	f040 8357 	bne.w	8003850 <_vfprintf_r+0x14a0>
 80031a2:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80031a4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80031a6:	4293      	cmp	r3, r2
 80031a8:	db49      	blt.n	800323e <_vfprintf_r+0xe8e>
 80031aa:	f018 0f01 	tst.w	r8, #1
 80031ae:	d146      	bne.n	800323e <_vfprintf_r+0xe8e>
 80031b0:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80031b2:	18bd      	adds	r5, r7, r2
 80031b4:	eba5 0509 	sub.w	r5, r5, r9
 80031b8:	1ad3      	subs	r3, r2, r3
 80031ba:	429d      	cmp	r5, r3
 80031bc:	bfa8      	it	ge
 80031be:	461d      	movge	r5, r3
 80031c0:	2d00      	cmp	r5, #0
 80031c2:	dd0d      	ble.n	80031e0 <_vfprintf_r+0xe30>
 80031c4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031c6:	f8cb 9000 	str.w	r9, [fp]
 80031ca:	3201      	adds	r2, #1
 80031cc:	442c      	add	r4, r5
 80031ce:	2a07      	cmp	r2, #7
 80031d0:	942c      	str	r4, [sp, #176]	; 0xb0
 80031d2:	f8cb 5004 	str.w	r5, [fp, #4]
 80031d6:	922b      	str	r2, [sp, #172]	; 0xac
 80031d8:	f300 8462 	bgt.w	8003aa0 <_vfprintf_r+0x16f0>
 80031dc:	f10b 0b08 	add.w	fp, fp, #8
 80031e0:	2d00      	cmp	r5, #0
 80031e2:	bfac      	ite	ge
 80031e4:	1b5d      	subge	r5, r3, r5
 80031e6:	461d      	movlt	r5, r3
 80031e8:	2d00      	cmp	r5, #0
 80031ea:	f77f ab32 	ble.w	8002852 <_vfprintf_r+0x4a2>
 80031ee:	2d10      	cmp	r5, #16
 80031f0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031f2:	4bc5      	ldr	r3, [pc, #788]	; (8003508 <_vfprintf_r+0x1158>)
 80031f4:	f340 80c4 	ble.w	8003380 <_vfprintf_r+0xfd0>
 80031f8:	4619      	mov	r1, r3
 80031fa:	2610      	movs	r6, #16
 80031fc:	4623      	mov	r3, r4
 80031fe:	9f03      	ldr	r7, [sp, #12]
 8003200:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003204:	460c      	mov	r4, r1
 8003206:	e005      	b.n	8003214 <_vfprintf_r+0xe64>
 8003208:	f10b 0b08 	add.w	fp, fp, #8
 800320c:	3d10      	subs	r5, #16
 800320e:	2d10      	cmp	r5, #16
 8003210:	f340 80b3 	ble.w	800337a <_vfprintf_r+0xfca>
 8003214:	3201      	adds	r2, #1
 8003216:	3310      	adds	r3, #16
 8003218:	2a07      	cmp	r2, #7
 800321a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800321e:	e9cb 4600 	strd	r4, r6, [fp]
 8003222:	ddf1      	ble.n	8003208 <_vfprintf_r+0xe58>
 8003224:	aa2a      	add	r2, sp, #168	; 0xa8
 8003226:	4649      	mov	r1, r9
 8003228:	4638      	mov	r0, r7
 800322a:	f003 fbef 	bl	8006a0c <__sprint_r>
 800322e:	2800      	cmp	r0, #0
 8003230:	f47f ae38 	bne.w	8002ea4 <_vfprintf_r+0xaf4>
 8003234:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003238:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800323c:	e7e6      	b.n	800320c <_vfprintf_r+0xe5c>
 800323e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003240:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003242:	f8cb 1000 	str.w	r1, [fp]
 8003246:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003248:	f8cb 1004 	str.w	r1, [fp, #4]
 800324c:	3201      	adds	r2, #1
 800324e:	440c      	add	r4, r1
 8003250:	2a07      	cmp	r2, #7
 8003252:	942c      	str	r4, [sp, #176]	; 0xb0
 8003254:	922b      	str	r2, [sp, #172]	; 0xac
 8003256:	f300 828c 	bgt.w	8003772 <_vfprintf_r+0x13c2>
 800325a:	f10b 0b08 	add.w	fp, fp, #8
 800325e:	e7a7      	b.n	80031b0 <_vfprintf_r+0xe00>
 8003260:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003264:	f002 fa94 	bl	8005790 <__retarget_lock_release_recursive>
 8003268:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800326c:	e628      	b.n	8002ec0 <_vfprintf_r+0xb10>
 800326e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003270:	9907      	ldr	r1, [sp, #28]
 8003272:	9803      	ldr	r0, [sp, #12]
 8003274:	f003 fbca 	bl	8006a0c <__sprint_r>
 8003278:	2800      	cmp	r0, #0
 800327a:	f47f ae11 	bne.w	8002ea0 <_vfprintf_r+0xaf0>
 800327e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003282:	ae2d      	add	r6, sp, #180	; 0xb4
 8003284:	e638      	b.n	8002ef8 <_vfprintf_r+0xb48>
 8003286:	aa2a      	add	r2, sp, #168	; 0xa8
 8003288:	9907      	ldr	r1, [sp, #28]
 800328a:	9803      	ldr	r0, [sp, #12]
 800328c:	f003 fbbe 	bl	8006a0c <__sprint_r>
 8003290:	2800      	cmp	r0, #0
 8003292:	f47f ae05 	bne.w	8002ea0 <_vfprintf_r+0xaf0>
 8003296:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800329a:	ae2d      	add	r6, sp, #180	; 0xb4
 800329c:	930b      	str	r3, [sp, #44]	; 0x2c
 800329e:	e638      	b.n	8002f12 <_vfprintf_r+0xb62>
 80032a0:	6814      	ldr	r4, [r2, #0]
 80032a2:	9308      	str	r3, [sp, #32]
 80032a4:	2500      	movs	r5, #0
 80032a6:	f7ff bb95 	b.w	80029d4 <_vfprintf_r+0x624>
 80032aa:	6814      	ldr	r4, [r2, #0]
 80032ac:	9308      	str	r3, [sp, #32]
 80032ae:	2500      	movs	r5, #0
 80032b0:	f7ff b9ae 	b.w	8002610 <_vfprintf_r+0x260>
 80032b4:	680c      	ldr	r4, [r1, #0]
 80032b6:	9208      	str	r2, [sp, #32]
 80032b8:	17e5      	asrs	r5, r4, #31
 80032ba:	4620      	mov	r0, r4
 80032bc:	4629      	mov	r1, r5
 80032be:	f7ff b9d2 	b.w	8002666 <_vfprintf_r+0x2b6>
 80032c2:	6814      	ldr	r4, [r2, #0]
 80032c4:	9108      	str	r1, [sp, #32]
 80032c6:	2201      	movs	r2, #1
 80032c8:	2500      	movs	r5, #0
 80032ca:	f7ff bb32 	b.w	8002932 <_vfprintf_r+0x582>
 80032ce:	2a01      	cmp	r2, #1
 80032d0:	f47f ab3c 	bne.w	800294c <_vfprintf_r+0x59c>
 80032d4:	e68f      	b.n	8002ff6 <_vfprintf_r+0xc46>
 80032d6:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 80032da:	2200      	movs	r2, #0
 80032dc:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80032e0:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80032e4:	af56      	add	r7, sp, #344	; 0x158
 80032e6:	4692      	mov	sl, r2
 80032e8:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 80032ec:	461e      	mov	r6, r3
 80032ee:	e00a      	b.n	8003306 <_vfprintf_r+0xf56>
 80032f0:	2300      	movs	r3, #0
 80032f2:	4620      	mov	r0, r4
 80032f4:	4629      	mov	r1, r5
 80032f6:	220a      	movs	r2, #10
 80032f8:	f7fc ff82 	bl	8000200 <__aeabi_uldivmod>
 80032fc:	4604      	mov	r4, r0
 80032fe:	460d      	mov	r5, r1
 8003300:	ea54 0305 	orrs.w	r3, r4, r5
 8003304:	d029      	beq.n	800335a <_vfprintf_r+0xfaa>
 8003306:	220a      	movs	r2, #10
 8003308:	2300      	movs	r3, #0
 800330a:	4620      	mov	r0, r4
 800330c:	4629      	mov	r1, r5
 800330e:	f7fc ff77 	bl	8000200 <__aeabi_uldivmod>
 8003312:	3230      	adds	r2, #48	; 0x30
 8003314:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003318:	f10a 0a01 	add.w	sl, sl, #1
 800331c:	3f01      	subs	r7, #1
 800331e:	2e00      	cmp	r6, #0
 8003320:	d0e6      	beq.n	80032f0 <_vfprintf_r+0xf40>
 8003322:	f898 3000 	ldrb.w	r3, [r8]
 8003326:	459a      	cmp	sl, r3
 8003328:	d1e2      	bne.n	80032f0 <_vfprintf_r+0xf40>
 800332a:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 800332e:	d0df      	beq.n	80032f0 <_vfprintf_r+0xf40>
 8003330:	2d00      	cmp	r5, #0
 8003332:	bf08      	it	eq
 8003334:	2c0a      	cmpeq	r4, #10
 8003336:	d3db      	bcc.n	80032f0 <_vfprintf_r+0xf40>
 8003338:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 800333a:	9918      	ldr	r1, [sp, #96]	; 0x60
 800333c:	1aff      	subs	r7, r7, r3
 800333e:	461a      	mov	r2, r3
 8003340:	4638      	mov	r0, r7
 8003342:	f003 faf5 	bl	8006930 <strncpy>
 8003346:	f898 3001 	ldrb.w	r3, [r8, #1]
 800334a:	2b00      	cmp	r3, #0
 800334c:	f000 8496 	beq.w	8003c7c <_vfprintf_r+0x18cc>
 8003350:	f108 0801 	add.w	r8, r8, #1
 8003354:	f04f 0a00 	mov.w	sl, #0
 8003358:	e7ca      	b.n	80032f0 <_vfprintf_r+0xf40>
 800335a:	9b04      	ldr	r3, [sp, #16]
 800335c:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003360:	1bdb      	subs	r3, r3, r7
 8003362:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003366:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003368:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 800336c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003370:	9309      	str	r3, [sp, #36]	; 0x24
 8003372:	f7ff b99e 	b.w	80026b2 <_vfprintf_r+0x302>
 8003376:	46c1      	mov	r9, r8
 8003378:	e594      	b.n	8002ea4 <_vfprintf_r+0xaf4>
 800337a:	4621      	mov	r1, r4
 800337c:	461c      	mov	r4, r3
 800337e:	460b      	mov	r3, r1
 8003380:	3201      	adds	r2, #1
 8003382:	442c      	add	r4, r5
 8003384:	2a07      	cmp	r2, #7
 8003386:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800338a:	e9cb 3500 	strd	r3, r5, [fp]
 800338e:	f77f aa5e 	ble.w	800284e <_vfprintf_r+0x49e>
 8003392:	e5ee      	b.n	8002f72 <_vfprintf_r+0xbc2>
 8003394:	f018 0f10 	tst.w	r8, #16
 8003398:	f040 80f8 	bne.w	800358c <_vfprintf_r+0x11dc>
 800339c:	f018 0f40 	tst.w	r8, #64	; 0x40
 80033a0:	f000 8351 	beq.w	8003a46 <_vfprintf_r+0x1696>
 80033a4:	9a05      	ldr	r2, [sp, #20]
 80033a6:	801a      	strh	r2, [r3, #0]
 80033a8:	4657      	mov	r7, sl
 80033aa:	f7ff baa7 	b.w	80028fc <_vfprintf_r+0x54c>
 80033ae:	aa2a      	add	r2, sp, #168	; 0xa8
 80033b0:	9907      	ldr	r1, [sp, #28]
 80033b2:	9803      	ldr	r0, [sp, #12]
 80033b4:	f003 fb2a 	bl	8006a0c <__sprint_r>
 80033b8:	2800      	cmp	r0, #0
 80033ba:	f47f ad71 	bne.w	8002ea0 <_vfprintf_r+0xaf0>
 80033be:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80033c0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033c4:	f7ff b9f5 	b.w	80027b2 <_vfprintf_r+0x402>
 80033c8:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80033cc:	4602      	mov	r2, r0
 80033ce:	460b      	mov	r3, r1
 80033d0:	f7fd fe4c 	bl	800106c <__aeabi_dcmpun>
 80033d4:	2800      	cmp	r0, #0
 80033d6:	f040 8491 	bne.w	8003cfc <_vfprintf_r+0x194c>
 80033da:	2e61      	cmp	r6, #97	; 0x61
 80033dc:	f000 8111 	beq.w	8003602 <_vfprintf_r+0x1252>
 80033e0:	2e41      	cmp	r6, #65	; 0x41
 80033e2:	f000 8377 	beq.w	8003ad4 <_vfprintf_r+0x1724>
 80033e6:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80033ea:	f026 0220 	bic.w	r2, r6, #32
 80033ee:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80033f2:	930e      	str	r3, [sp, #56]	; 0x38
 80033f4:	9204      	str	r2, [sp, #16]
 80033f6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80033f8:	f000 842d 	beq.w	8003c56 <_vfprintf_r+0x18a6>
 80033fc:	2a47      	cmp	r2, #71	; 0x47
 80033fe:	f000 8424 	beq.w	8003c4a <_vfprintf_r+0x189a>
 8003402:	2b00      	cmp	r3, #0
 8003404:	f2c0 82f9 	blt.w	80039fa <_vfprintf_r+0x164a>
 8003408:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800340c:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003410:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003414:	2e66      	cmp	r6, #102	; 0x66
 8003416:	f000 83eb 	beq.w	8003bf0 <_vfprintf_r+0x1840>
 800341a:	2e46      	cmp	r6, #70	; 0x46
 800341c:	f000 847e 	beq.w	8003d1c <_vfprintf_r+0x196c>
 8003420:	9b04      	ldr	r3, [sp, #16]
 8003422:	9803      	ldr	r0, [sp, #12]
 8003424:	2b45      	cmp	r3, #69	; 0x45
 8003426:	bf0c      	ite	eq
 8003428:	f109 0501 	addeq.w	r5, r9, #1
 800342c:	464d      	movne	r5, r9
 800342e:	aa28      	add	r2, sp, #160	; 0xa0
 8003430:	ab25      	add	r3, sp, #148	; 0x94
 8003432:	e9cd 3200 	strd	r3, r2, [sp]
 8003436:	2102      	movs	r1, #2
 8003438:	ab24      	add	r3, sp, #144	; 0x90
 800343a:	462a      	mov	r2, r5
 800343c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003440:	f000 fe3e 	bl	80040c0 <_dtoa_r>
 8003444:	2e67      	cmp	r6, #103	; 0x67
 8003446:	4607      	mov	r7, r0
 8003448:	f040 849c 	bne.w	8003d84 <_vfprintf_r+0x19d4>
 800344c:	f018 0f01 	tst.w	r8, #1
 8003450:	f040 83f9 	bne.w	8003c46 <_vfprintf_r+0x1896>
 8003454:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003456:	4640      	mov	r0, r8
 8003458:	1bdb      	subs	r3, r3, r7
 800345a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800345e:	9310      	str	r3, [sp, #64]	; 0x40
 8003460:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003462:	9311      	str	r3, [sp, #68]	; 0x44
 8003464:	9b04      	ldr	r3, [sp, #16]
 8003466:	2b47      	cmp	r3, #71	; 0x47
 8003468:	f000 81e7 	beq.w	800383a <_vfprintf_r+0x148a>
 800346c:	9b04      	ldr	r3, [sp, #16]
 800346e:	2b46      	cmp	r3, #70	; 0x46
 8003470:	f000 8300 	beq.w	8003a74 <_vfprintf_r+0x16c4>
 8003474:	9904      	ldr	r1, [sp, #16]
 8003476:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003478:	b2f2      	uxtb	r2, r6
 800347a:	2941      	cmp	r1, #65	; 0x41
 800347c:	bf08      	it	eq
 800347e:	320f      	addeq	r2, #15
 8003480:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003484:	bf06      	itte	eq
 8003486:	b2d2      	uxtbeq	r2, r2
 8003488:	2101      	moveq	r1, #1
 800348a:	2100      	movne	r1, #0
 800348c:	2b00      	cmp	r3, #0
 800348e:	9324      	str	r3, [sp, #144]	; 0x90
 8003490:	bfb8      	it	lt
 8003492:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003494:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003498:	bfba      	itte	lt
 800349a:	f1c3 0301 	rsblt	r3, r3, #1
 800349e:	222d      	movlt	r2, #45	; 0x2d
 80034a0:	222b      	movge	r2, #43	; 0x2b
 80034a2:	2b09      	cmp	r3, #9
 80034a4:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 80034a8:	f300 83f9 	bgt.w	8003c9e <_vfprintf_r+0x18ee>
 80034ac:	2900      	cmp	r1, #0
 80034ae:	f040 8487 	bne.w	8003dc0 <_vfprintf_r+0x1a10>
 80034b2:	2230      	movs	r2, #48	; 0x30
 80034b4:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 80034b8:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 80034bc:	3330      	adds	r3, #48	; 0x30
 80034be:	7013      	strb	r3, [r2, #0]
 80034c0:	1c53      	adds	r3, r2, #1
 80034c2:	aa26      	add	r2, sp, #152	; 0x98
 80034c4:	1a9b      	subs	r3, r3, r2
 80034c6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80034c8:	9319      	str	r3, [sp, #100]	; 0x64
 80034ca:	2a01      	cmp	r2, #1
 80034cc:	4413      	add	r3, r2
 80034ce:	9309      	str	r3, [sp, #36]	; 0x24
 80034d0:	f340 8442 	ble.w	8003d58 <_vfprintf_r+0x19a8>
 80034d4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80034d6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80034d8:	4413      	add	r3, r2
 80034da:	9309      	str	r3, [sp, #36]	; 0x24
 80034dc:	2300      	movs	r3, #0
 80034de:	930f      	str	r3, [sp, #60]	; 0x3c
 80034e0:	9314      	str	r3, [sp, #80]	; 0x50
 80034e2:	9311      	str	r3, [sp, #68]	; 0x44
 80034e4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80034e6:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 80034ea:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80034ee:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 80034f2:	9304      	str	r3, [sp, #16]
 80034f4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80034f6:	2b00      	cmp	r3, #0
 80034f8:	f040 8275 	bne.w	80039e6 <_vfprintf_r+0x1636>
 80034fc:	4699      	mov	r9, r3
 80034fe:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003502:	f7ff b8e2 	b.w	80026ca <_vfprintf_r+0x31a>
 8003506:	bf00      	nop
 8003508:	08007104 	.word	0x08007104
 800350c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800350e:	49bd      	ldr	r1, [pc, #756]	; (8003804 <_vfprintf_r+0x1454>)
 8003510:	f8cb 1000 	str.w	r1, [fp]
 8003514:	3201      	adds	r2, #1
 8003516:	3401      	adds	r4, #1
 8003518:	2101      	movs	r1, #1
 800351a:	2a07      	cmp	r2, #7
 800351c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003520:	f8cb 1004 	str.w	r1, [fp, #4]
 8003524:	dc60      	bgt.n	80035e8 <_vfprintf_r+0x1238>
 8003526:	f10b 0b08 	add.w	fp, fp, #8
 800352a:	b92b      	cbnz	r3, 8003538 <_vfprintf_r+0x1188>
 800352c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800352e:	b91a      	cbnz	r2, 8003538 <_vfprintf_r+0x1188>
 8003530:	f018 0f01 	tst.w	r8, #1
 8003534:	f43f a98d 	beq.w	8002852 <_vfprintf_r+0x4a2>
 8003538:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800353a:	9916      	ldr	r1, [sp, #88]	; 0x58
 800353c:	f8cb 1000 	str.w	r1, [fp]
 8003540:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003542:	f8cb 1004 	str.w	r1, [fp, #4]
 8003546:	3201      	adds	r2, #1
 8003548:	440c      	add	r4, r1
 800354a:	2a07      	cmp	r2, #7
 800354c:	942c      	str	r4, [sp, #176]	; 0xb0
 800354e:	922b      	str	r2, [sp, #172]	; 0xac
 8003550:	f300 8282 	bgt.w	8003a58 <_vfprintf_r+0x16a8>
 8003554:	f10b 0b08 	add.w	fp, fp, #8
 8003558:	2b00      	cmp	r3, #0
 800355a:	f2c0 82e7 	blt.w	8003b2c <_vfprintf_r+0x177c>
 800355e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003560:	3201      	adds	r2, #1
 8003562:	441c      	add	r4, r3
 8003564:	2a07      	cmp	r2, #7
 8003566:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800356a:	e9cb 7300 	strd	r7, r3, [fp]
 800356e:	f77f a96e 	ble.w	800284e <_vfprintf_r+0x49e>
 8003572:	e4fe      	b.n	8002f72 <_vfprintf_r+0xbc2>
 8003574:	aa2a      	add	r2, sp, #168	; 0xa8
 8003576:	9907      	ldr	r1, [sp, #28]
 8003578:	9803      	ldr	r0, [sp, #12]
 800357a:	f003 fa47 	bl	8006a0c <__sprint_r>
 800357e:	2800      	cmp	r0, #0
 8003580:	f47f ac8e 	bne.w	8002ea0 <_vfprintf_r+0xaf0>
 8003584:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003588:	f7ff bbf0 	b.w	8002d6c <_vfprintf_r+0x9bc>
 800358c:	9a05      	ldr	r2, [sp, #20]
 800358e:	601a      	str	r2, [r3, #0]
 8003590:	4657      	mov	r7, sl
 8003592:	f7ff b9b3 	b.w	80028fc <_vfprintf_r+0x54c>
 8003596:	8814      	ldrh	r4, [r2, #0]
 8003598:	9108      	str	r1, [sp, #32]
 800359a:	2500      	movs	r5, #0
 800359c:	2201      	movs	r2, #1
 800359e:	f7ff b9c8 	b.w	8002932 <_vfprintf_r+0x582>
 80035a2:	8814      	ldrh	r4, [r2, #0]
 80035a4:	9308      	str	r3, [sp, #32]
 80035a6:	2500      	movs	r5, #0
 80035a8:	f7ff ba14 	b.w	80029d4 <_vfprintf_r+0x624>
 80035ac:	f9b1 4000 	ldrsh.w	r4, [r1]
 80035b0:	9208      	str	r2, [sp, #32]
 80035b2:	17e5      	asrs	r5, r4, #31
 80035b4:	4620      	mov	r0, r4
 80035b6:	4629      	mov	r1, r5
 80035b8:	f7ff b855 	b.w	8002666 <_vfprintf_r+0x2b6>
 80035bc:	8814      	ldrh	r4, [r2, #0]
 80035be:	9308      	str	r3, [sp, #32]
 80035c0:	2500      	movs	r5, #0
 80035c2:	f7ff b825 	b.w	8002610 <_vfprintf_r+0x260>
 80035c6:	222d      	movs	r2, #45	; 0x2d
 80035c8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80035cc:	f7ff baa2 	b.w	8002b14 <_vfprintf_r+0x764>
 80035d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80035d2:	9907      	ldr	r1, [sp, #28]
 80035d4:	9803      	ldr	r0, [sp, #12]
 80035d6:	f003 fa19 	bl	8006a0c <__sprint_r>
 80035da:	2800      	cmp	r0, #0
 80035dc:	f47f ac60 	bne.w	8002ea0 <_vfprintf_r+0xaf0>
 80035e0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80035e2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035e6:	e534      	b.n	8003052 <_vfprintf_r+0xca2>
 80035e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80035ea:	9907      	ldr	r1, [sp, #28]
 80035ec:	9803      	ldr	r0, [sp, #12]
 80035ee:	f003 fa0d 	bl	8006a0c <__sprint_r>
 80035f2:	2800      	cmp	r0, #0
 80035f4:	f47f ac54 	bne.w	8002ea0 <_vfprintf_r+0xaf0>
 80035f8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80035fa:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80035fc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003600:	e793      	b.n	800352a <_vfprintf_r+0x117a>
 8003602:	2330      	movs	r3, #48	; 0x30
 8003604:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003608:	2378      	movs	r3, #120	; 0x78
 800360a:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 800360e:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003612:	f048 0402 	orr.w	r4, r8, #2
 8003616:	f300 82b0 	bgt.w	8003b7a <_vfprintf_r+0x17ca>
 800361a:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 800361e:	930e      	str	r3, [sp, #56]	; 0x38
 8003620:	f026 0320 	bic.w	r3, r6, #32
 8003624:	9304      	str	r3, [sp, #16]
 8003626:	2200      	movs	r2, #0
 8003628:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800362a:	920a      	str	r2, [sp, #40]	; 0x28
 800362c:	46a0      	mov	r8, r4
 800362e:	af3d      	add	r7, sp, #244	; 0xf4
 8003630:	2b00      	cmp	r3, #0
 8003632:	f2c0 81e3 	blt.w	80039fc <_vfprintf_r+0x164c>
 8003636:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800363a:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800363e:	2300      	movs	r3, #0
 8003640:	930b      	str	r3, [sp, #44]	; 0x2c
 8003642:	2e61      	cmp	r6, #97	; 0x61
 8003644:	f000 8255 	beq.w	8003af2 <_vfprintf_r+0x1742>
 8003648:	2e41      	cmp	r6, #65	; 0x41
 800364a:	f47f aee3 	bne.w	8003414 <_vfprintf_r+0x1064>
 800364e:	a824      	add	r0, sp, #144	; 0x90
 8003650:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003654:	f003 f8e2 	bl	800681c <frexp>
 8003658:	2200      	movs	r2, #0
 800365a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800365e:	ec51 0b10 	vmov	r0, r1, d0
 8003662:	f7fd fa69 	bl	8000b38 <__aeabi_dmul>
 8003666:	2200      	movs	r2, #0
 8003668:	2300      	movs	r3, #0
 800366a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800366e:	f7fd fccb 	bl	8001008 <__aeabi_dcmpeq>
 8003672:	2800      	cmp	r0, #0
 8003674:	f040 8305 	bne.w	8003c82 <_vfprintf_r+0x18d2>
 8003678:	4b63      	ldr	r3, [pc, #396]	; (8003808 <_vfprintf_r+0x1458>)
 800367a:	9309      	str	r3, [sp, #36]	; 0x24
 800367c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003680:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003684:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003688:	9721      	str	r7, [sp, #132]	; 0x84
 800368a:	46b9      	mov	r9, r7
 800368c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003690:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003694:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003698:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 800369c:	e003      	b.n	80036a6 <_vfprintf_r+0x12f6>
 800369e:	f7fd fcb3 	bl	8001008 <__aeabi_dcmpeq>
 80036a2:	bb20      	cbnz	r0, 80036ee <_vfprintf_r+0x133e>
 80036a4:	46a9      	mov	r9, r5
 80036a6:	2200      	movs	r2, #0
 80036a8:	4b58      	ldr	r3, [pc, #352]	; (800380c <_vfprintf_r+0x145c>)
 80036aa:	4630      	mov	r0, r6
 80036ac:	4639      	mov	r1, r7
 80036ae:	f7fd fa43 	bl	8000b38 <__aeabi_dmul>
 80036b2:	460f      	mov	r7, r1
 80036b4:	4606      	mov	r6, r0
 80036b6:	f7fd fcef 	bl	8001098 <__aeabi_d2iz>
 80036ba:	4680      	mov	r8, r0
 80036bc:	f7fd f9d2 	bl	8000a64 <__aeabi_i2d>
 80036c0:	4602      	mov	r2, r0
 80036c2:	460b      	mov	r3, r1
 80036c4:	4630      	mov	r0, r6
 80036c6:	4639      	mov	r1, r7
 80036c8:	f7fd f87e 	bl	80007c8 <__aeabi_dsub>
 80036cc:	464d      	mov	r5, r9
 80036ce:	f81a c008 	ldrb.w	ip, [sl, r8]
 80036d2:	f805 cb01 	strb.w	ip, [r5], #1
 80036d6:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 80036da:	46a3      	mov	fp, r4
 80036dc:	4606      	mov	r6, r0
 80036de:	460f      	mov	r7, r1
 80036e0:	f04f 0200 	mov.w	r2, #0
 80036e4:	f04f 0300 	mov.w	r3, #0
 80036e8:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 80036ec:	d1d7      	bne.n	800369e <_vfprintf_r+0x12ee>
 80036ee:	4630      	mov	r0, r6
 80036f0:	4639      	mov	r1, r7
 80036f2:	2200      	movs	r2, #0
 80036f4:	4b46      	ldr	r3, [pc, #280]	; (8003810 <_vfprintf_r+0x1460>)
 80036f6:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 80036fa:	9e10      	ldr	r6, [sp, #64]	; 0x40
 80036fc:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003700:	4644      	mov	r4, r8
 8003702:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003706:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 800370a:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 800370e:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003712:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003714:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003718:	f7fd fc9e 	bl	8001058 <__aeabi_dcmpgt>
 800371c:	2800      	cmp	r0, #0
 800371e:	f040 8176 	bne.w	8003a0e <_vfprintf_r+0x165e>
 8003722:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003726:	2200      	movs	r2, #0
 8003728:	4b39      	ldr	r3, [pc, #228]	; (8003810 <_vfprintf_r+0x1460>)
 800372a:	f7fd fc6d 	bl	8001008 <__aeabi_dcmpeq>
 800372e:	b110      	cbz	r0, 8003736 <_vfprintf_r+0x1386>
 8003730:	07e2      	lsls	r2, r4, #31
 8003732:	f100 816c 	bmi.w	8003a0e <_vfprintf_r+0x165e>
 8003736:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003738:	2b00      	cmp	r3, #0
 800373a:	db07      	blt.n	800374c <_vfprintf_r+0x139c>
 800373c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800373e:	3301      	adds	r3, #1
 8003740:	442b      	add	r3, r5
 8003742:	2230      	movs	r2, #48	; 0x30
 8003744:	f805 2b01 	strb.w	r2, [r5], #1
 8003748:	42ab      	cmp	r3, r5
 800374a:	d1fb      	bne.n	8003744 <_vfprintf_r+0x1394>
 800374c:	1beb      	subs	r3, r5, r7
 800374e:	4640      	mov	r0, r8
 8003750:	9310      	str	r3, [sp, #64]	; 0x40
 8003752:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003756:	e683      	b.n	8003460 <_vfprintf_r+0x10b0>
 8003758:	f8cd 9010 	str.w	r9, [sp, #16]
 800375c:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003760:	9408      	str	r4, [sp, #32]
 8003762:	4681      	mov	r9, r0
 8003764:	900f      	str	r0, [sp, #60]	; 0x3c
 8003766:	9014      	str	r0, [sp, #80]	; 0x50
 8003768:	9011      	str	r0, [sp, #68]	; 0x44
 800376a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800376e:	f7fe bfac 	b.w	80026ca <_vfprintf_r+0x31a>
 8003772:	aa2a      	add	r2, sp, #168	; 0xa8
 8003774:	9907      	ldr	r1, [sp, #28]
 8003776:	9803      	ldr	r0, [sp, #12]
 8003778:	f003 f948 	bl	8006a0c <__sprint_r>
 800377c:	2800      	cmp	r0, #0
 800377e:	f47f ab8f 	bne.w	8002ea0 <_vfprintf_r+0xaf0>
 8003782:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003784:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003786:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800378a:	e511      	b.n	80031b0 <_vfprintf_r+0xe00>
 800378c:	4252      	negs	r2, r2
 800378e:	9206      	str	r2, [sp, #24]
 8003790:	9308      	str	r3, [sp, #32]
 8003792:	f7ff b96d 	b.w	8002a70 <_vfprintf_r+0x6c0>
 8003796:	4614      	mov	r4, r2
 8003798:	4632      	mov	r2, r6
 800379a:	461e      	mov	r6, r3
 800379c:	4613      	mov	r3, r2
 800379e:	462a      	mov	r2, r5
 80037a0:	3201      	adds	r2, #1
 80037a2:	9209      	str	r2, [sp, #36]	; 0x24
 80037a4:	f106 0208 	add.w	r2, r6, #8
 80037a8:	e9c6 3900 	strd	r3, r9, [r6]
 80037ac:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80037ae:	932b      	str	r3, [sp, #172]	; 0xac
 80037b0:	444c      	add	r4, r9
 80037b2:	2b07      	cmp	r3, #7
 80037b4:	942c      	str	r4, [sp, #176]	; 0xb0
 80037b6:	f73f acc3 	bgt.w	8003140 <_vfprintf_r+0xd90>
 80037ba:	3301      	adds	r3, #1
 80037bc:	9309      	str	r3, [sp, #36]	; 0x24
 80037be:	f102 0b08 	add.w	fp, r2, #8
 80037c2:	4616      	mov	r6, r2
 80037c4:	f7ff bbca 	b.w	8002f5c <_vfprintf_r+0xbac>
 80037c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80037ca:	9907      	ldr	r1, [sp, #28]
 80037cc:	9803      	ldr	r0, [sp, #12]
 80037ce:	f003 f91d 	bl	8006a0c <__sprint_r>
 80037d2:	2800      	cmp	r0, #0
 80037d4:	f47f ab64 	bne.w	8002ea0 <_vfprintf_r+0xaf0>
 80037d8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80037da:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80037de:	f7ff bade 	b.w	8002d9e <_vfprintf_r+0x9ee>
 80037e2:	464b      	mov	r3, r9
 80037e4:	2b06      	cmp	r3, #6
 80037e6:	bf28      	it	cs
 80037e8:	2306      	movcs	r3, #6
 80037ea:	46b9      	mov	r9, r7
 80037ec:	970f      	str	r7, [sp, #60]	; 0x3c
 80037ee:	9714      	str	r7, [sp, #80]	; 0x50
 80037f0:	9711      	str	r7, [sp, #68]	; 0x44
 80037f2:	970a      	str	r7, [sp, #40]	; 0x28
 80037f4:	463a      	mov	r2, r7
 80037f6:	9304      	str	r3, [sp, #16]
 80037f8:	e9cd 4308 	strd	r4, r3, [sp, #32]
 80037fc:	4f05      	ldr	r7, [pc, #20]	; (8003814 <_vfprintf_r+0x1464>)
 80037fe:	f7fe bf64 	b.w	80026ca <_vfprintf_r+0x31a>
 8003802:	bf00      	nop
 8003804:	080070f0 	.word	0x080070f0
 8003808:	080070d4 	.word	0x080070d4
 800380c:	40300000 	.word	0x40300000
 8003810:	3fe00000 	.word	0x3fe00000
 8003814:	080070e8 	.word	0x080070e8
 8003818:	460c      	mov	r4, r1
 800381a:	4639      	mov	r1, r7
 800381c:	465f      	mov	r7, fp
 800381e:	469b      	mov	fp, r3
 8003820:	460b      	mov	r3, r1
 8003822:	3201      	adds	r2, #1
 8003824:	442c      	add	r4, r5
 8003826:	2a07      	cmp	r2, #7
 8003828:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800382c:	e9cb 3500 	strd	r3, r5, [fp]
 8003830:	f73f aca5 	bgt.w	800317e <_vfprintf_r+0xdce>
 8003834:	f10b 0b08 	add.w	fp, fp, #8
 8003838:	e4ac      	b.n	8003194 <_vfprintf_r+0xde4>
 800383a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800383c:	1cda      	adds	r2, r3, #3
 800383e:	db02      	blt.n	8003846 <_vfprintf_r+0x1496>
 8003840:	4599      	cmp	r9, r3
 8003842:	f280 80b5 	bge.w	80039b0 <_vfprintf_r+0x1600>
 8003846:	3e02      	subs	r6, #2
 8003848:	f026 0320 	bic.w	r3, r6, #32
 800384c:	9304      	str	r3, [sp, #16]
 800384e:	e611      	b.n	8003474 <_vfprintf_r+0x10c4>
 8003850:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003852:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003856:	465a      	mov	r2, fp
 8003858:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 800385c:	18fb      	adds	r3, r7, r3
 800385e:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003862:	970c      	str	r7, [sp, #48]	; 0x30
 8003864:	4eaf      	ldr	r6, [pc, #700]	; (8003b24 <_vfprintf_r+0x1774>)
 8003866:	f8dd a01c 	ldr.w	sl, [sp, #28]
 800386a:	9309      	str	r3, [sp, #36]	; 0x24
 800386c:	464f      	mov	r7, r9
 800386e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003872:	4621      	mov	r1, r4
 8003874:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003876:	2b00      	cmp	r3, #0
 8003878:	d05b      	beq.n	8003932 <_vfprintf_r+0x1582>
 800387a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800387c:	2b00      	cmp	r3, #0
 800387e:	d154      	bne.n	800392a <_vfprintf_r+0x157a>
 8003880:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003882:	3b01      	subs	r3, #1
 8003884:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003888:	9314      	str	r3, [sp, #80]	; 0x50
 800388a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800388c:	9818      	ldr	r0, [sp, #96]	; 0x60
 800388e:	6010      	str	r0, [r2, #0]
 8003890:	3301      	adds	r3, #1
 8003892:	4459      	add	r1, fp
 8003894:	2b07      	cmp	r3, #7
 8003896:	912c      	str	r1, [sp, #176]	; 0xb0
 8003898:	f8c2 b004 	str.w	fp, [r2, #4]
 800389c:	932b      	str	r3, [sp, #172]	; 0xac
 800389e:	dc68      	bgt.n	8003972 <_vfprintf_r+0x15c2>
 80038a0:	3208      	adds	r2, #8
 80038a2:	9809      	ldr	r0, [sp, #36]	; 0x24
 80038a4:	f898 3000 	ldrb.w	r3, [r8]
 80038a8:	1bc5      	subs	r5, r0, r7
 80038aa:	429d      	cmp	r5, r3
 80038ac:	bfa8      	it	ge
 80038ae:	461d      	movge	r5, r3
 80038b0:	2d00      	cmp	r5, #0
 80038b2:	dd0b      	ble.n	80038cc <_vfprintf_r+0x151c>
 80038b4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80038b6:	6017      	str	r7, [r2, #0]
 80038b8:	3301      	adds	r3, #1
 80038ba:	4429      	add	r1, r5
 80038bc:	2b07      	cmp	r3, #7
 80038be:	912c      	str	r1, [sp, #176]	; 0xb0
 80038c0:	6055      	str	r5, [r2, #4]
 80038c2:	932b      	str	r3, [sp, #172]	; 0xac
 80038c4:	dc5e      	bgt.n	8003984 <_vfprintf_r+0x15d4>
 80038c6:	f898 3000 	ldrb.w	r3, [r8]
 80038ca:	3208      	adds	r2, #8
 80038cc:	2d00      	cmp	r5, #0
 80038ce:	bfac      	ite	ge
 80038d0:	1b5d      	subge	r5, r3, r5
 80038d2:	461d      	movlt	r5, r3
 80038d4:	2d00      	cmp	r5, #0
 80038d6:	dd26      	ble.n	8003926 <_vfprintf_r+0x1576>
 80038d8:	2d10      	cmp	r5, #16
 80038da:	982b      	ldr	r0, [sp, #172]	; 0xac
 80038dc:	dd3c      	ble.n	8003958 <_vfprintf_r+0x15a8>
 80038de:	2410      	movs	r4, #16
 80038e0:	e003      	b.n	80038ea <_vfprintf_r+0x153a>
 80038e2:	3208      	adds	r2, #8
 80038e4:	3d10      	subs	r5, #16
 80038e6:	2d10      	cmp	r5, #16
 80038e8:	dd36      	ble.n	8003958 <_vfprintf_r+0x15a8>
 80038ea:	3001      	adds	r0, #1
 80038ec:	3110      	adds	r1, #16
 80038ee:	2807      	cmp	r0, #7
 80038f0:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80038f4:	e9c2 6400 	strd	r6, r4, [r2]
 80038f8:	ddf3      	ble.n	80038e2 <_vfprintf_r+0x1532>
 80038fa:	aa2a      	add	r2, sp, #168	; 0xa8
 80038fc:	4651      	mov	r1, sl
 80038fe:	4648      	mov	r0, r9
 8003900:	f003 f884 	bl	8006a0c <__sprint_r>
 8003904:	2800      	cmp	r0, #0
 8003906:	d150      	bne.n	80039aa <_vfprintf_r+0x15fa>
 8003908:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 800390c:	aa2d      	add	r2, sp, #180	; 0xb4
 800390e:	e7e9      	b.n	80038e4 <_vfprintf_r+0x1534>
 8003910:	aa2a      	add	r2, sp, #168	; 0xa8
 8003912:	4651      	mov	r1, sl
 8003914:	4648      	mov	r0, r9
 8003916:	f003 f879 	bl	8006a0c <__sprint_r>
 800391a:	2800      	cmp	r0, #0
 800391c:	d145      	bne.n	80039aa <_vfprintf_r+0x15fa>
 800391e:	f898 3000 	ldrb.w	r3, [r8]
 8003922:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003924:	aa2d      	add	r2, sp, #180	; 0xb4
 8003926:	441f      	add	r7, r3
 8003928:	e7a4      	b.n	8003874 <_vfprintf_r+0x14c4>
 800392a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800392c:	3b01      	subs	r3, #1
 800392e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003930:	e7ab      	b.n	800388a <_vfprintf_r+0x14da>
 8003932:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003934:	2b00      	cmp	r3, #0
 8003936:	d1f8      	bne.n	800392a <_vfprintf_r+0x157a>
 8003938:	46b9      	mov	r9, r7
 800393a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800393c:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 800393e:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003942:	18fb      	adds	r3, r7, r3
 8003944:	4599      	cmp	r9, r3
 8003946:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 800394a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800394e:	4693      	mov	fp, r2
 8003950:	460c      	mov	r4, r1
 8003952:	bf28      	it	cs
 8003954:	4699      	movcs	r9, r3
 8003956:	e424      	b.n	80031a2 <_vfprintf_r+0xdf2>
 8003958:	3001      	adds	r0, #1
 800395a:	4429      	add	r1, r5
 800395c:	2807      	cmp	r0, #7
 800395e:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003962:	e9c2 6500 	strd	r6, r5, [r2]
 8003966:	dcd3      	bgt.n	8003910 <_vfprintf_r+0x1560>
 8003968:	f898 3000 	ldrb.w	r3, [r8]
 800396c:	3208      	adds	r2, #8
 800396e:	441f      	add	r7, r3
 8003970:	e780      	b.n	8003874 <_vfprintf_r+0x14c4>
 8003972:	aa2a      	add	r2, sp, #168	; 0xa8
 8003974:	4651      	mov	r1, sl
 8003976:	4648      	mov	r0, r9
 8003978:	f003 f848 	bl	8006a0c <__sprint_r>
 800397c:	b9a8      	cbnz	r0, 80039aa <_vfprintf_r+0x15fa>
 800397e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003980:	aa2d      	add	r2, sp, #180	; 0xb4
 8003982:	e78e      	b.n	80038a2 <_vfprintf_r+0x14f2>
 8003984:	aa2a      	add	r2, sp, #168	; 0xa8
 8003986:	4651      	mov	r1, sl
 8003988:	4648      	mov	r0, r9
 800398a:	f003 f83f 	bl	8006a0c <__sprint_r>
 800398e:	b960      	cbnz	r0, 80039aa <_vfprintf_r+0x15fa>
 8003990:	f898 3000 	ldrb.w	r3, [r8]
 8003994:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003996:	aa2d      	add	r2, sp, #180	; 0xb4
 8003998:	e798      	b.n	80038cc <_vfprintf_r+0x151c>
 800399a:	4638      	mov	r0, r7
 800399c:	f7fc fe50 	bl	8000640 <strlen>
 80039a0:	46a9      	mov	r9, r5
 80039a2:	4603      	mov	r3, r0
 80039a4:	9009      	str	r0, [sp, #36]	; 0x24
 80039a6:	f7ff b8f4 	b.w	8002b92 <_vfprintf_r+0x7e2>
 80039aa:	46d1      	mov	r9, sl
 80039ac:	f7ff ba7a 	b.w	8002ea4 <_vfprintf_r+0xaf4>
 80039b0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80039b2:	4619      	mov	r1, r3
 80039b4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039b6:	4299      	cmp	r1, r3
 80039b8:	f300 8082 	bgt.w	8003ac0 <_vfprintf_r+0x1710>
 80039bc:	07c4      	lsls	r4, r0, #31
 80039be:	f140 816b 	bpl.w	8003c98 <_vfprintf_r+0x18e8>
 80039c2:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80039c4:	4413      	add	r3, r2
 80039c6:	9309      	str	r3, [sp, #36]	; 0x24
 80039c8:	0541      	lsls	r1, r0, #21
 80039ca:	d503      	bpl.n	80039d4 <_vfprintf_r+0x1624>
 80039cc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039ce:	2b00      	cmp	r3, #0
 80039d0:	f300 80e6 	bgt.w	8003ba0 <_vfprintf_r+0x17f0>
 80039d4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80039d6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80039da:	9304      	str	r3, [sp, #16]
 80039dc:	2667      	movs	r6, #103	; 0x67
 80039de:	2300      	movs	r3, #0
 80039e0:	930f      	str	r3, [sp, #60]	; 0x3c
 80039e2:	9314      	str	r3, [sp, #80]	; 0x50
 80039e4:	e586      	b.n	80034f4 <_vfprintf_r+0x1144>
 80039e6:	222d      	movs	r2, #45	; 0x2d
 80039e8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80039ec:	f04f 0900 	mov.w	r9, #0
 80039f0:	f7fe be6c 	b.w	80026cc <_vfprintf_r+0x31c>
 80039f4:	46a1      	mov	r9, r4
 80039f6:	f7ff ba55 	b.w	8002ea4 <_vfprintf_r+0xaf4>
 80039fa:	900a      	str	r0, [sp, #40]	; 0x28
 80039fc:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003a00:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003a04:	931f      	str	r3, [sp, #124]	; 0x7c
 8003a06:	232d      	movs	r3, #45	; 0x2d
 8003a08:	911e      	str	r1, [sp, #120]	; 0x78
 8003a0a:	930b      	str	r3, [sp, #44]	; 0x2c
 8003a0c:	e619      	b.n	8003642 <_vfprintf_r+0x1292>
 8003a0e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a10:	9328      	str	r3, [sp, #160]	; 0xa0
 8003a12:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a14:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003a18:	7bd9      	ldrb	r1, [r3, #15]
 8003a1a:	4291      	cmp	r1, r2
 8003a1c:	462b      	mov	r3, r5
 8003a1e:	d109      	bne.n	8003a34 <_vfprintf_r+0x1684>
 8003a20:	2030      	movs	r0, #48	; 0x30
 8003a22:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003a26:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003a28:	1e5a      	subs	r2, r3, #1
 8003a2a:	9228      	str	r2, [sp, #160]	; 0xa0
 8003a2c:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003a30:	4291      	cmp	r1, r2
 8003a32:	d0f6      	beq.n	8003a22 <_vfprintf_r+0x1672>
 8003a34:	2a39      	cmp	r2, #57	; 0x39
 8003a36:	bf0b      	itete	eq
 8003a38:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003a3a:	3201      	addne	r2, #1
 8003a3c:	7a92      	ldrbeq	r2, [r2, #10]
 8003a3e:	b2d2      	uxtbne	r2, r2
 8003a40:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003a44:	e682      	b.n	800374c <_vfprintf_r+0x139c>
 8003a46:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003a4a:	f43f ad9f 	beq.w	800358c <_vfprintf_r+0x11dc>
 8003a4e:	9a05      	ldr	r2, [sp, #20]
 8003a50:	701a      	strb	r2, [r3, #0]
 8003a52:	4657      	mov	r7, sl
 8003a54:	f7fe bf52 	b.w	80028fc <_vfprintf_r+0x54c>
 8003a58:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a5a:	9907      	ldr	r1, [sp, #28]
 8003a5c:	9803      	ldr	r0, [sp, #12]
 8003a5e:	f002 ffd5 	bl	8006a0c <__sprint_r>
 8003a62:	2800      	cmp	r0, #0
 8003a64:	f47f aa1c 	bne.w	8002ea0 <_vfprintf_r+0xaf0>
 8003a68:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003a6a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003a6e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a72:	e571      	b.n	8003558 <_vfprintf_r+0x11a8>
 8003a74:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a76:	2b00      	cmp	r3, #0
 8003a78:	f340 8164 	ble.w	8003d44 <_vfprintf_r+0x1994>
 8003a7c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a7e:	f1b9 0f00 	cmp.w	r9, #0
 8003a82:	f040 8103 	bne.w	8003c8c <_vfprintf_r+0x18dc>
 8003a86:	07c6      	lsls	r6, r0, #31
 8003a88:	f100 8100 	bmi.w	8003c8c <_vfprintf_r+0x18dc>
 8003a8c:	9309      	str	r3, [sp, #36]	; 0x24
 8003a8e:	2666      	movs	r6, #102	; 0x66
 8003a90:	0543      	lsls	r3, r0, #21
 8003a92:	f100 8086 	bmi.w	8003ba2 <_vfprintf_r+0x17f2>
 8003a96:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a98:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003a9c:	9304      	str	r3, [sp, #16]
 8003a9e:	e79e      	b.n	80039de <_vfprintf_r+0x162e>
 8003aa0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003aa2:	9907      	ldr	r1, [sp, #28]
 8003aa4:	9803      	ldr	r0, [sp, #12]
 8003aa6:	f002 ffb1 	bl	8006a0c <__sprint_r>
 8003aaa:	2800      	cmp	r0, #0
 8003aac:	f47f a9f8 	bne.w	8002ea0 <_vfprintf_r+0xaf0>
 8003ab0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003ab2:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003ab4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003ab6:	1ad3      	subs	r3, r2, r3
 8003ab8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003abc:	f7ff bb90 	b.w	80031e0 <_vfprintf_r+0xe30>
 8003ac0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003ac2:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003ac4:	4413      	add	r3, r2
 8003ac6:	9309      	str	r3, [sp, #36]	; 0x24
 8003ac8:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003aca:	2b00      	cmp	r3, #0
 8003acc:	f340 8149 	ble.w	8003d62 <_vfprintf_r+0x19b2>
 8003ad0:	2667      	movs	r6, #103	; 0x67
 8003ad2:	e7dd      	b.n	8003a90 <_vfprintf_r+0x16e0>
 8003ad4:	2330      	movs	r3, #48	; 0x30
 8003ad6:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003ada:	2358      	movs	r3, #88	; 0x58
 8003adc:	e595      	b.n	800360a <_vfprintf_r+0x125a>
 8003ade:	9803      	ldr	r0, [sp, #12]
 8003ae0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ae2:	4649      	mov	r1, r9
 8003ae4:	f002 ff92 	bl	8006a0c <__sprint_r>
 8003ae8:	2800      	cmp	r0, #0
 8003aea:	f47f a9e0 	bne.w	8002eae <_vfprintf_r+0xafe>
 8003aee:	f7fe bf0f 	b.w	8002910 <_vfprintf_r+0x560>
 8003af2:	a824      	add	r0, sp, #144	; 0x90
 8003af4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003af8:	f002 fe90 	bl	800681c <frexp>
 8003afc:	2200      	movs	r2, #0
 8003afe:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003b02:	ec51 0b10 	vmov	r0, r1, d0
 8003b06:	f7fd f817 	bl	8000b38 <__aeabi_dmul>
 8003b0a:	2200      	movs	r2, #0
 8003b0c:	2300      	movs	r3, #0
 8003b0e:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003b12:	f7fd fa79 	bl	8001008 <__aeabi_dcmpeq>
 8003b16:	b108      	cbz	r0, 8003b1c <_vfprintf_r+0x176c>
 8003b18:	2301      	movs	r3, #1
 8003b1a:	9324      	str	r3, [sp, #144]	; 0x90
 8003b1c:	4b02      	ldr	r3, [pc, #8]	; (8003b28 <_vfprintf_r+0x1778>)
 8003b1e:	9309      	str	r3, [sp, #36]	; 0x24
 8003b20:	e5ac      	b.n	800367c <_vfprintf_r+0x12cc>
 8003b22:	bf00      	nop
 8003b24:	08007104 	.word	0x08007104
 8003b28:	080070c0 	.word	0x080070c0
 8003b2c:	425d      	negs	r5, r3
 8003b2e:	3310      	adds	r3, #16
 8003b30:	4bb9      	ldr	r3, [pc, #740]	; (8003e18 <_vfprintf_r+0x1a68>)
 8003b32:	f280 8097 	bge.w	8003c64 <_vfprintf_r+0x18b4>
 8003b36:	4619      	mov	r1, r3
 8003b38:	2610      	movs	r6, #16
 8003b3a:	4623      	mov	r3, r4
 8003b3c:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003b40:	460c      	mov	r4, r1
 8003b42:	e005      	b.n	8003b50 <_vfprintf_r+0x17a0>
 8003b44:	f10b 0b08 	add.w	fp, fp, #8
 8003b48:	3d10      	subs	r5, #16
 8003b4a:	2d10      	cmp	r5, #16
 8003b4c:	f340 8087 	ble.w	8003c5e <_vfprintf_r+0x18ae>
 8003b50:	3201      	adds	r2, #1
 8003b52:	3310      	adds	r3, #16
 8003b54:	2a07      	cmp	r2, #7
 8003b56:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003b5a:	e9cb 4600 	strd	r4, r6, [fp]
 8003b5e:	ddf1      	ble.n	8003b44 <_vfprintf_r+0x1794>
 8003b60:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b62:	9907      	ldr	r1, [sp, #28]
 8003b64:	4648      	mov	r0, r9
 8003b66:	f002 ff51 	bl	8006a0c <__sprint_r>
 8003b6a:	2800      	cmp	r0, #0
 8003b6c:	f47f a998 	bne.w	8002ea0 <_vfprintf_r+0xaf0>
 8003b70:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003b74:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b78:	e7e6      	b.n	8003b48 <_vfprintf_r+0x1798>
 8003b7a:	f109 0101 	add.w	r1, r9, #1
 8003b7e:	9803      	ldr	r0, [sp, #12]
 8003b80:	f001 fe80 	bl	8005884 <_malloc_r>
 8003b84:	4607      	mov	r7, r0
 8003b86:	2800      	cmp	r0, #0
 8003b88:	f000 813b 	beq.w	8003e02 <_vfprintf_r+0x1a52>
 8003b8c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003b90:	930e      	str	r3, [sp, #56]	; 0x38
 8003b92:	f026 0320 	bic.w	r3, r6, #32
 8003b96:	9304      	str	r3, [sp, #16]
 8003b98:	46a0      	mov	r8, r4
 8003b9a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003b9c:	900a      	str	r0, [sp, #40]	; 0x28
 8003b9e:	e547      	b.n	8003630 <_vfprintf_r+0x1280>
 8003ba0:	2667      	movs	r6, #103	; 0x67
 8003ba2:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003ba4:	2200      	movs	r2, #0
 8003ba6:	920f      	str	r2, [sp, #60]	; 0x3c
 8003ba8:	9214      	str	r2, [sp, #80]	; 0x50
 8003baa:	7803      	ldrb	r3, [r0, #0]
 8003bac:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003bae:	2bff      	cmp	r3, #255	; 0xff
 8003bb0:	d00c      	beq.n	8003bcc <_vfprintf_r+0x181c>
 8003bb2:	4293      	cmp	r3, r2
 8003bb4:	da0a      	bge.n	8003bcc <_vfprintf_r+0x181c>
 8003bb6:	7841      	ldrb	r1, [r0, #1]
 8003bb8:	1ad2      	subs	r2, r2, r3
 8003bba:	b1a9      	cbz	r1, 8003be8 <_vfprintf_r+0x1838>
 8003bbc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003bbe:	3301      	adds	r3, #1
 8003bc0:	9314      	str	r3, [sp, #80]	; 0x50
 8003bc2:	460b      	mov	r3, r1
 8003bc4:	2bff      	cmp	r3, #255	; 0xff
 8003bc6:	f100 0001 	add.w	r0, r0, #1
 8003bca:	d1f2      	bne.n	8003bb2 <_vfprintf_r+0x1802>
 8003bcc:	9211      	str	r2, [sp, #68]	; 0x44
 8003bce:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003bd0:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003bd2:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003bd4:	901a      	str	r0, [sp, #104]	; 0x68
 8003bd6:	4413      	add	r3, r2
 8003bd8:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003bda:	fb02 1303 	mla	r3, r2, r3, r1
 8003bde:	9309      	str	r3, [sp, #36]	; 0x24
 8003be0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003be4:	9304      	str	r3, [sp, #16]
 8003be6:	e485      	b.n	80034f4 <_vfprintf_r+0x1144>
 8003be8:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003bea:	3101      	adds	r1, #1
 8003bec:	910f      	str	r1, [sp, #60]	; 0x3c
 8003bee:	e7de      	b.n	8003bae <_vfprintf_r+0x17fe>
 8003bf0:	aa28      	add	r2, sp, #160	; 0xa0
 8003bf2:	ab25      	add	r3, sp, #148	; 0x94
 8003bf4:	e9cd 3200 	strd	r3, r2, [sp]
 8003bf8:	2103      	movs	r1, #3
 8003bfa:	ab24      	add	r3, sp, #144	; 0x90
 8003bfc:	464a      	mov	r2, r9
 8003bfe:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c02:	9803      	ldr	r0, [sp, #12]
 8003c04:	f000 fa5c 	bl	80040c0 <_dtoa_r>
 8003c08:	464d      	mov	r5, r9
 8003c0a:	4607      	mov	r7, r0
 8003c0c:	eb00 0409 	add.w	r4, r0, r9
 8003c10:	783b      	ldrb	r3, [r7, #0]
 8003c12:	2b30      	cmp	r3, #48	; 0x30
 8003c14:	f000 80be 	beq.w	8003d94 <_vfprintf_r+0x19e4>
 8003c18:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003c1a:	442c      	add	r4, r5
 8003c1c:	2200      	movs	r2, #0
 8003c1e:	2300      	movs	r3, #0
 8003c20:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003c24:	f7fd f9f0 	bl	8001008 <__aeabi_dcmpeq>
 8003c28:	b108      	cbz	r0, 8003c2e <_vfprintf_r+0x187e>
 8003c2a:	4623      	mov	r3, r4
 8003c2c:	e413      	b.n	8003456 <_vfprintf_r+0x10a6>
 8003c2e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003c30:	42a3      	cmp	r3, r4
 8003c32:	f4bf ac10 	bcs.w	8003456 <_vfprintf_r+0x10a6>
 8003c36:	2130      	movs	r1, #48	; 0x30
 8003c38:	1c5a      	adds	r2, r3, #1
 8003c3a:	9228      	str	r2, [sp, #160]	; 0xa0
 8003c3c:	7019      	strb	r1, [r3, #0]
 8003c3e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003c40:	429c      	cmp	r4, r3
 8003c42:	d8f9      	bhi.n	8003c38 <_vfprintf_r+0x1888>
 8003c44:	e407      	b.n	8003456 <_vfprintf_r+0x10a6>
 8003c46:	197c      	adds	r4, r7, r5
 8003c48:	e7e8      	b.n	8003c1c <_vfprintf_r+0x186c>
 8003c4a:	f1b9 0f00 	cmp.w	r9, #0
 8003c4e:	f000 8092 	beq.w	8003d76 <_vfprintf_r+0x19c6>
 8003c52:	900a      	str	r0, [sp, #40]	; 0x28
 8003c54:	e4ec      	b.n	8003630 <_vfprintf_r+0x1280>
 8003c56:	900a      	str	r0, [sp, #40]	; 0x28
 8003c58:	f04f 0906 	mov.w	r9, #6
 8003c5c:	e4e8      	b.n	8003630 <_vfprintf_r+0x1280>
 8003c5e:	4621      	mov	r1, r4
 8003c60:	461c      	mov	r4, r3
 8003c62:	460b      	mov	r3, r1
 8003c64:	3201      	adds	r2, #1
 8003c66:	442c      	add	r4, r5
 8003c68:	2a07      	cmp	r2, #7
 8003c6a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003c6e:	e9cb 3500 	strd	r3, r5, [fp]
 8003c72:	f300 80a9 	bgt.w	8003dc8 <_vfprintf_r+0x1a18>
 8003c76:	f10b 0b08 	add.w	fp, fp, #8
 8003c7a:	e470      	b.n	800355e <_vfprintf_r+0x11ae>
 8003c7c:	469a      	mov	sl, r3
 8003c7e:	f7ff bb37 	b.w	80032f0 <_vfprintf_r+0xf40>
 8003c82:	2301      	movs	r3, #1
 8003c84:	9324      	str	r3, [sp, #144]	; 0x90
 8003c86:	4b65      	ldr	r3, [pc, #404]	; (8003e1c <_vfprintf_r+0x1a6c>)
 8003c88:	9309      	str	r3, [sp, #36]	; 0x24
 8003c8a:	e4f7      	b.n	800367c <_vfprintf_r+0x12cc>
 8003c8c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003c8e:	4413      	add	r3, r2
 8003c90:	444b      	add	r3, r9
 8003c92:	9309      	str	r3, [sp, #36]	; 0x24
 8003c94:	2666      	movs	r6, #102	; 0x66
 8003c96:	e6fb      	b.n	8003a90 <_vfprintf_r+0x16e0>
 8003c98:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c9a:	9309      	str	r3, [sp, #36]	; 0x24
 8003c9c:	e694      	b.n	80039c8 <_vfprintf_r+0x1618>
 8003c9e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003ca2:	4664      	mov	r4, ip
 8003ca4:	4d5e      	ldr	r5, [pc, #376]	; (8003e20 <_vfprintf_r+0x1a70>)
 8003ca6:	e000      	b.n	8003caa <_vfprintf_r+0x18fa>
 8003ca8:	4614      	mov	r4, r2
 8003caa:	fba5 1203 	umull	r1, r2, r5, r3
 8003cae:	08d2      	lsrs	r2, r2, #3
 8003cb0:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003cb4:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003cb8:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003cbc:	4613      	mov	r3, r2
 8003cbe:	2b09      	cmp	r3, #9
 8003cc0:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003cc4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003cc8:	dcee      	bgt.n	8003ca8 <_vfprintf_r+0x18f8>
 8003cca:	3330      	adds	r3, #48	; 0x30
 8003ccc:	3c02      	subs	r4, #2
 8003cce:	b2db      	uxtb	r3, r3
 8003cd0:	45a4      	cmp	ip, r4
 8003cd2:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003cd6:	f240 8090 	bls.w	8003dfa <_vfprintf_r+0x1a4a>
 8003cda:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003cde:	4611      	mov	r1, r2
 8003ce0:	e001      	b.n	8003ce6 <_vfprintf_r+0x1936>
 8003ce2:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003ce6:	f804 3b01 	strb.w	r3, [r4], #1
 8003cea:	458c      	cmp	ip, r1
 8003cec:	d1f9      	bne.n	8003ce2 <_vfprintf_r+0x1932>
 8003cee:	ab2a      	add	r3, sp, #168	; 0xa8
 8003cf0:	1a9b      	subs	r3, r3, r2
 8003cf2:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003cf6:	4413      	add	r3, r2
 8003cf8:	f7ff bbe3 	b.w	80034c2 <_vfprintf_r+0x1112>
 8003cfc:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003cfe:	4f49      	ldr	r7, [pc, #292]	; (8003e24 <_vfprintf_r+0x1a74>)
 8003d00:	2b00      	cmp	r3, #0
 8003d02:	bfb6      	itet	lt
 8003d04:	222d      	movlt	r2, #45	; 0x2d
 8003d06:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003d0a:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003d0e:	4b46      	ldr	r3, [pc, #280]	; (8003e28 <_vfprintf_r+0x1a78>)
 8003d10:	f7fe bf02 	b.w	8002b18 <_vfprintf_r+0x768>
 8003d14:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003d18:	f7ff b8c9 	b.w	8002eae <_vfprintf_r+0xafe>
 8003d1c:	aa28      	add	r2, sp, #160	; 0xa0
 8003d1e:	ab25      	add	r3, sp, #148	; 0x94
 8003d20:	e9cd 3200 	strd	r3, r2, [sp]
 8003d24:	2103      	movs	r1, #3
 8003d26:	ab24      	add	r3, sp, #144	; 0x90
 8003d28:	464a      	mov	r2, r9
 8003d2a:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003d2e:	9803      	ldr	r0, [sp, #12]
 8003d30:	f000 f9c6 	bl	80040c0 <_dtoa_r>
 8003d34:	464d      	mov	r5, r9
 8003d36:	4607      	mov	r7, r0
 8003d38:	2e46      	cmp	r6, #70	; 0x46
 8003d3a:	eb07 0405 	add.w	r4, r7, r5
 8003d3e:	f43f af67 	beq.w	8003c10 <_vfprintf_r+0x1860>
 8003d42:	e76b      	b.n	8003c1c <_vfprintf_r+0x186c>
 8003d44:	f1b9 0f00 	cmp.w	r9, #0
 8003d48:	d131      	bne.n	8003dae <_vfprintf_r+0x19fe>
 8003d4a:	07c5      	lsls	r5, r0, #31
 8003d4c:	d42f      	bmi.n	8003dae <_vfprintf_r+0x19fe>
 8003d4e:	2301      	movs	r3, #1
 8003d50:	9304      	str	r3, [sp, #16]
 8003d52:	9309      	str	r3, [sp, #36]	; 0x24
 8003d54:	2666      	movs	r6, #102	; 0x66
 8003d56:	e642      	b.n	80039de <_vfprintf_r+0x162e>
 8003d58:	07c3      	lsls	r3, r0, #31
 8003d5a:	f57f abbf 	bpl.w	80034dc <_vfprintf_r+0x112c>
 8003d5e:	f7ff bbb9 	b.w	80034d4 <_vfprintf_r+0x1124>
 8003d62:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003d64:	f1c3 0301 	rsb	r3, r3, #1
 8003d68:	441a      	add	r2, r3
 8003d6a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003d6e:	9209      	str	r2, [sp, #36]	; 0x24
 8003d70:	9304      	str	r3, [sp, #16]
 8003d72:	2667      	movs	r6, #103	; 0x67
 8003d74:	e633      	b.n	80039de <_vfprintf_r+0x162e>
 8003d76:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003d7a:	f04f 0901 	mov.w	r9, #1
 8003d7e:	e457      	b.n	8003630 <_vfprintf_r+0x1280>
 8003d80:	465a      	mov	r2, fp
 8003d82:	e511      	b.n	80037a8 <_vfprintf_r+0x13f8>
 8003d84:	2e47      	cmp	r6, #71	; 0x47
 8003d86:	f47f af5e 	bne.w	8003c46 <_vfprintf_r+0x1896>
 8003d8a:	f018 0f01 	tst.w	r8, #1
 8003d8e:	f43f ab61 	beq.w	8003454 <_vfprintf_r+0x10a4>
 8003d92:	e7d1      	b.n	8003d38 <_vfprintf_r+0x1988>
 8003d94:	2200      	movs	r2, #0
 8003d96:	2300      	movs	r3, #0
 8003d98:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003d9c:	f7fd f934 	bl	8001008 <__aeabi_dcmpeq>
 8003da0:	2800      	cmp	r0, #0
 8003da2:	f47f af39 	bne.w	8003c18 <_vfprintf_r+0x1868>
 8003da6:	f1c5 0501 	rsb	r5, r5, #1
 8003daa:	9524      	str	r5, [sp, #144]	; 0x90
 8003dac:	e735      	b.n	8003c1a <_vfprintf_r+0x186a>
 8003dae:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003db0:	3301      	adds	r3, #1
 8003db2:	444b      	add	r3, r9
 8003db4:	9309      	str	r3, [sp, #36]	; 0x24
 8003db6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003dba:	9304      	str	r3, [sp, #16]
 8003dbc:	2666      	movs	r6, #102	; 0x66
 8003dbe:	e60e      	b.n	80039de <_vfprintf_r+0x162e>
 8003dc0:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003dc4:	f7ff bb7a 	b.w	80034bc <_vfprintf_r+0x110c>
 8003dc8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003dca:	9907      	ldr	r1, [sp, #28]
 8003dcc:	9803      	ldr	r0, [sp, #12]
 8003dce:	f002 fe1d 	bl	8006a0c <__sprint_r>
 8003dd2:	2800      	cmp	r0, #0
 8003dd4:	f47f a864 	bne.w	8002ea0 <_vfprintf_r+0xaf0>
 8003dd8:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003ddc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003de0:	f7ff bbbd 	b.w	800355e <_vfprintf_r+0x11ae>
 8003de4:	9908      	ldr	r1, [sp, #32]
 8003de6:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003dea:	680b      	ldr	r3, [r1, #0]
 8003dec:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003df0:	1d0b      	adds	r3, r1, #4
 8003df2:	4692      	mov	sl, r2
 8003df4:	9308      	str	r3, [sp, #32]
 8003df6:	f7fe bb59 	b.w	80024ac <_vfprintf_r+0xfc>
 8003dfa:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003dfe:	f7ff bb60 	b.w	80034c2 <_vfprintf_r+0x1112>
 8003e02:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003e06:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003e0a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003e0e:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003e12:	f7ff b84c 	b.w	8002eae <_vfprintf_r+0xafe>
 8003e16:	bf00      	nop
 8003e18:	08007104 	.word	0x08007104
 8003e1c:	080070d4 	.word	0x080070d4
 8003e20:	cccccccd 	.word	0xcccccccd
 8003e24:	080070bc 	.word	0x080070bc
 8003e28:	080070b8 	.word	0x080070b8

08003e2c <__sbprintf>:
 8003e2c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003e30:	460c      	mov	r4, r1
 8003e32:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003e36:	8989      	ldrh	r1, [r1, #12]
 8003e38:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003e3a:	89e5      	ldrh	r5, [r4, #14]
 8003e3c:	9619      	str	r6, [sp, #100]	; 0x64
 8003e3e:	f021 0102 	bic.w	r1, r1, #2
 8003e42:	4606      	mov	r6, r0
 8003e44:	69e0      	ldr	r0, [r4, #28]
 8003e46:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003e4a:	4617      	mov	r7, r2
 8003e4c:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003e50:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003e52:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003e56:	4698      	mov	r8, r3
 8003e58:	ad1a      	add	r5, sp, #104	; 0x68
 8003e5a:	2300      	movs	r3, #0
 8003e5c:	9007      	str	r0, [sp, #28]
 8003e5e:	a816      	add	r0, sp, #88	; 0x58
 8003e60:	9209      	str	r2, [sp, #36]	; 0x24
 8003e62:	9306      	str	r3, [sp, #24]
 8003e64:	9500      	str	r5, [sp, #0]
 8003e66:	9504      	str	r5, [sp, #16]
 8003e68:	9102      	str	r1, [sp, #8]
 8003e6a:	9105      	str	r1, [sp, #20]
 8003e6c:	f001 fc8a 	bl	8005784 <__retarget_lock_init_recursive>
 8003e70:	4643      	mov	r3, r8
 8003e72:	463a      	mov	r2, r7
 8003e74:	4669      	mov	r1, sp
 8003e76:	4630      	mov	r0, r6
 8003e78:	f7fe fa9a 	bl	80023b0 <_vfprintf_r>
 8003e7c:	1e05      	subs	r5, r0, #0
 8003e7e:	db07      	blt.n	8003e90 <__sbprintf+0x64>
 8003e80:	4630      	mov	r0, r6
 8003e82:	4669      	mov	r1, sp
 8003e84:	f001 f8d6 	bl	8005034 <_fflush_r>
 8003e88:	2800      	cmp	r0, #0
 8003e8a:	bf18      	it	ne
 8003e8c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003e90:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003e94:	065b      	lsls	r3, r3, #25
 8003e96:	d503      	bpl.n	8003ea0 <__sbprintf+0x74>
 8003e98:	89a3      	ldrh	r3, [r4, #12]
 8003e9a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003e9e:	81a3      	strh	r3, [r4, #12]
 8003ea0:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003ea2:	f001 fc71 	bl	8005788 <__retarget_lock_close_recursive>
 8003ea6:	4628      	mov	r0, r5
 8003ea8:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003eac:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003eb0 <__swsetup_r>:
 8003eb0:	b538      	push	{r3, r4, r5, lr}
 8003eb2:	4b31      	ldr	r3, [pc, #196]	; (8003f78 <__swsetup_r+0xc8>)
 8003eb4:	681b      	ldr	r3, [r3, #0]
 8003eb6:	4605      	mov	r5, r0
 8003eb8:	460c      	mov	r4, r1
 8003eba:	b113      	cbz	r3, 8003ec2 <__swsetup_r+0x12>
 8003ebc:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003ebe:	2a00      	cmp	r2, #0
 8003ec0:	d03a      	beq.n	8003f38 <__swsetup_r+0x88>
 8003ec2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003ec6:	b293      	uxth	r3, r2
 8003ec8:	0718      	lsls	r0, r3, #28
 8003eca:	d50c      	bpl.n	8003ee6 <__swsetup_r+0x36>
 8003ecc:	6920      	ldr	r0, [r4, #16]
 8003ece:	b1a8      	cbz	r0, 8003efc <__swsetup_r+0x4c>
 8003ed0:	f013 0201 	ands.w	r2, r3, #1
 8003ed4:	d020      	beq.n	8003f18 <__swsetup_r+0x68>
 8003ed6:	6963      	ldr	r3, [r4, #20]
 8003ed8:	2200      	movs	r2, #0
 8003eda:	425b      	negs	r3, r3
 8003edc:	61a3      	str	r3, [r4, #24]
 8003ede:	60a2      	str	r2, [r4, #8]
 8003ee0:	b300      	cbz	r0, 8003f24 <__swsetup_r+0x74>
 8003ee2:	2000      	movs	r0, #0
 8003ee4:	bd38      	pop	{r3, r4, r5, pc}
 8003ee6:	06d9      	lsls	r1, r3, #27
 8003ee8:	d53e      	bpl.n	8003f68 <__swsetup_r+0xb8>
 8003eea:	0758      	lsls	r0, r3, #29
 8003eec:	d428      	bmi.n	8003f40 <__swsetup_r+0x90>
 8003eee:	6920      	ldr	r0, [r4, #16]
 8003ef0:	f042 0308 	orr.w	r3, r2, #8
 8003ef4:	81a3      	strh	r3, [r4, #12]
 8003ef6:	b29b      	uxth	r3, r3
 8003ef8:	2800      	cmp	r0, #0
 8003efa:	d1e9      	bne.n	8003ed0 <__swsetup_r+0x20>
 8003efc:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003f00:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003f04:	d0e4      	beq.n	8003ed0 <__swsetup_r+0x20>
 8003f06:	4628      	mov	r0, r5
 8003f08:	4621      	mov	r1, r4
 8003f0a:	f001 fc71 	bl	80057f0 <__smakebuf_r>
 8003f0e:	89a3      	ldrh	r3, [r4, #12]
 8003f10:	6920      	ldr	r0, [r4, #16]
 8003f12:	f013 0201 	ands.w	r2, r3, #1
 8003f16:	d1de      	bne.n	8003ed6 <__swsetup_r+0x26>
 8003f18:	0799      	lsls	r1, r3, #30
 8003f1a:	bf58      	it	pl
 8003f1c:	6962      	ldrpl	r2, [r4, #20]
 8003f1e:	60a2      	str	r2, [r4, #8]
 8003f20:	2800      	cmp	r0, #0
 8003f22:	d1de      	bne.n	8003ee2 <__swsetup_r+0x32>
 8003f24:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003f28:	061a      	lsls	r2, r3, #24
 8003f2a:	d5db      	bpl.n	8003ee4 <__swsetup_r+0x34>
 8003f2c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003f30:	81a3      	strh	r3, [r4, #12]
 8003f32:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003f36:	bd38      	pop	{r3, r4, r5, pc}
 8003f38:	4618      	mov	r0, r3
 8003f3a:	f001 f8d7 	bl	80050ec <__sinit>
 8003f3e:	e7c0      	b.n	8003ec2 <__swsetup_r+0x12>
 8003f40:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8003f42:	b151      	cbz	r1, 8003f5a <__swsetup_r+0xaa>
 8003f44:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8003f48:	4299      	cmp	r1, r3
 8003f4a:	d004      	beq.n	8003f56 <__swsetup_r+0xa6>
 8003f4c:	4628      	mov	r0, r5
 8003f4e:	f001 f96f 	bl	8005230 <_free_r>
 8003f52:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003f56:	2300      	movs	r3, #0
 8003f58:	6323      	str	r3, [r4, #48]	; 0x30
 8003f5a:	2300      	movs	r3, #0
 8003f5c:	6920      	ldr	r0, [r4, #16]
 8003f5e:	6063      	str	r3, [r4, #4]
 8003f60:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8003f64:	6020      	str	r0, [r4, #0]
 8003f66:	e7c3      	b.n	8003ef0 <__swsetup_r+0x40>
 8003f68:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8003f6c:	2309      	movs	r3, #9
 8003f6e:	602b      	str	r3, [r5, #0]
 8003f70:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003f74:	81a2      	strh	r2, [r4, #12]
 8003f76:	bd38      	pop	{r3, r4, r5, pc}
 8003f78:	200001a8 	.word	0x200001a8

08003f7c <register_fini>:
 8003f7c:	4b02      	ldr	r3, [pc, #8]	; (8003f88 <register_fini+0xc>)
 8003f7e:	b113      	cbz	r3, 8003f86 <register_fini+0xa>
 8003f80:	4802      	ldr	r0, [pc, #8]	; (8003f8c <register_fini+0x10>)
 8003f82:	f000 b805 	b.w	8003f90 <atexit>
 8003f86:	4770      	bx	lr
 8003f88:	00000000 	.word	0x00000000
 8003f8c:	0800515d 	.word	0x0800515d

08003f90 <atexit>:
 8003f90:	2300      	movs	r3, #0
 8003f92:	4601      	mov	r1, r0
 8003f94:	461a      	mov	r2, r3
 8003f96:	4618      	mov	r0, r3
 8003f98:	f002 bd58 	b.w	8006a4c <__register_exitproc>

08003f9c <quorem>:
 8003f9c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003fa0:	6903      	ldr	r3, [r0, #16]
 8003fa2:	690f      	ldr	r7, [r1, #16]
 8003fa4:	42bb      	cmp	r3, r7
 8003fa6:	b083      	sub	sp, #12
 8003fa8:	f2c0 8086 	blt.w	80040b8 <quorem+0x11c>
 8003fac:	3f01      	subs	r7, #1
 8003fae:	f101 0914 	add.w	r9, r1, #20
 8003fb2:	f100 0a14 	add.w	sl, r0, #20
 8003fb6:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8003fba:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8003fbe:	00bc      	lsls	r4, r7, #2
 8003fc0:	3201      	adds	r2, #1
 8003fc2:	fbb3 f8f2 	udiv	r8, r3, r2
 8003fc6:	eb0a 0304 	add.w	r3, sl, r4
 8003fca:	9400      	str	r4, [sp, #0]
 8003fcc:	eb09 0b04 	add.w	fp, r9, r4
 8003fd0:	9301      	str	r3, [sp, #4]
 8003fd2:	f1b8 0f00 	cmp.w	r8, #0
 8003fd6:	d038      	beq.n	800404a <quorem+0xae>
 8003fd8:	2500      	movs	r5, #0
 8003fda:	462e      	mov	r6, r5
 8003fdc:	46ce      	mov	lr, r9
 8003fde:	46d4      	mov	ip, sl
 8003fe0:	f85e 4b04 	ldr.w	r4, [lr], #4
 8003fe4:	f8dc 3000 	ldr.w	r3, [ip]
 8003fe8:	b2a2      	uxth	r2, r4
 8003fea:	fb08 5502 	mla	r5, r8, r2, r5
 8003fee:	0c22      	lsrs	r2, r4, #16
 8003ff0:	0c2c      	lsrs	r4, r5, #16
 8003ff2:	fb08 4202 	mla	r2, r8, r2, r4
 8003ff6:	b2ad      	uxth	r5, r5
 8003ff8:	1b75      	subs	r5, r6, r5
 8003ffa:	b296      	uxth	r6, r2
 8003ffc:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004000:	fa15 f383 	uxtah	r3, r5, r3
 8004004:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004008:	b29b      	uxth	r3, r3
 800400a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 800400e:	45f3      	cmp	fp, lr
 8004010:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8004014:	f84c 3b04 	str.w	r3, [ip], #4
 8004018:	ea4f 4626 	mov.w	r6, r6, asr #16
 800401c:	d2e0      	bcs.n	8003fe0 <quorem+0x44>
 800401e:	9b00      	ldr	r3, [sp, #0]
 8004020:	f85a 3003 	ldr.w	r3, [sl, r3]
 8004024:	b98b      	cbnz	r3, 800404a <quorem+0xae>
 8004026:	9a01      	ldr	r2, [sp, #4]
 8004028:	1f13      	subs	r3, r2, #4
 800402a:	459a      	cmp	sl, r3
 800402c:	d20c      	bcs.n	8004048 <quorem+0xac>
 800402e:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8004032:	b94b      	cbnz	r3, 8004048 <quorem+0xac>
 8004034:	f1a2 0308 	sub.w	r3, r2, #8
 8004038:	e002      	b.n	8004040 <quorem+0xa4>
 800403a:	681a      	ldr	r2, [r3, #0]
 800403c:	3b04      	subs	r3, #4
 800403e:	b91a      	cbnz	r2, 8004048 <quorem+0xac>
 8004040:	459a      	cmp	sl, r3
 8004042:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004046:	d3f8      	bcc.n	800403a <quorem+0x9e>
 8004048:	6107      	str	r7, [r0, #16]
 800404a:	4604      	mov	r4, r0
 800404c:	f002 f944 	bl	80062d8 <__mcmp>
 8004050:	2800      	cmp	r0, #0
 8004052:	db2d      	blt.n	80040b0 <quorem+0x114>
 8004054:	f108 0801 	add.w	r8, r8, #1
 8004058:	4655      	mov	r5, sl
 800405a:	2300      	movs	r3, #0
 800405c:	f859 1b04 	ldr.w	r1, [r9], #4
 8004060:	6828      	ldr	r0, [r5, #0]
 8004062:	b28a      	uxth	r2, r1
 8004064:	1a9a      	subs	r2, r3, r2
 8004066:	0c0b      	lsrs	r3, r1, #16
 8004068:	fa12 f280 	uxtah	r2, r2, r0
 800406c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004070:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004074:	b292      	uxth	r2, r2
 8004076:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800407a:	45cb      	cmp	fp, r9
 800407c:	f845 2b04 	str.w	r2, [r5], #4
 8004080:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004084:	d2ea      	bcs.n	800405c <quorem+0xc0>
 8004086:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 800408a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 800408e:	b97a      	cbnz	r2, 80040b0 <quorem+0x114>
 8004090:	1f1a      	subs	r2, r3, #4
 8004092:	4592      	cmp	sl, r2
 8004094:	d20b      	bcs.n	80040ae <quorem+0x112>
 8004096:	f853 2c04 	ldr.w	r2, [r3, #-4]
 800409a:	b942      	cbnz	r2, 80040ae <quorem+0x112>
 800409c:	3b08      	subs	r3, #8
 800409e:	e002      	b.n	80040a6 <quorem+0x10a>
 80040a0:	681a      	ldr	r2, [r3, #0]
 80040a2:	3b04      	subs	r3, #4
 80040a4:	b91a      	cbnz	r2, 80040ae <quorem+0x112>
 80040a6:	459a      	cmp	sl, r3
 80040a8:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80040ac:	d3f8      	bcc.n	80040a0 <quorem+0x104>
 80040ae:	6127      	str	r7, [r4, #16]
 80040b0:	4640      	mov	r0, r8
 80040b2:	b003      	add	sp, #12
 80040b4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80040b8:	2000      	movs	r0, #0
 80040ba:	b003      	add	sp, #12
 80040bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

080040c0 <_dtoa_r>:
 80040c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80040c4:	ec55 4b10 	vmov	r4, r5, d0
 80040c8:	b09b      	sub	sp, #108	; 0x6c
 80040ca:	6c06      	ldr	r6, [r0, #64]	; 0x40
 80040cc:	9102      	str	r1, [sp, #8]
 80040ce:	4681      	mov	r9, r0
 80040d0:	9207      	str	r2, [sp, #28]
 80040d2:	9305      	str	r3, [sp, #20]
 80040d4:	e9cd 4500 	strd	r4, r5, [sp]
 80040d8:	b156      	cbz	r6, 80040f0 <_dtoa_r+0x30>
 80040da:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80040dc:	6072      	str	r2, [r6, #4]
 80040de:	2301      	movs	r3, #1
 80040e0:	4093      	lsls	r3, r2
 80040e2:	60b3      	str	r3, [r6, #8]
 80040e4:	4631      	mov	r1, r6
 80040e6:	f001 ff07 	bl	8005ef8 <_Bfree>
 80040ea:	2300      	movs	r3, #0
 80040ec:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80040f0:	f1b5 0800 	subs.w	r8, r5, #0
 80040f4:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80040f6:	bfb4      	ite	lt
 80040f8:	2301      	movlt	r3, #1
 80040fa:	2300      	movge	r3, #0
 80040fc:	6013      	str	r3, [r2, #0]
 80040fe:	4b76      	ldr	r3, [pc, #472]	; (80042d8 <_dtoa_r+0x218>)
 8004100:	bfbc      	itt	lt
 8004102:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8004106:	f8cd 8004 	strlt.w	r8, [sp, #4]
 800410a:	ea33 0308 	bics.w	r3, r3, r8
 800410e:	f000 80a6 	beq.w	800425e <_dtoa_r+0x19e>
 8004112:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004116:	2200      	movs	r2, #0
 8004118:	2300      	movs	r3, #0
 800411a:	4630      	mov	r0, r6
 800411c:	4639      	mov	r1, r7
 800411e:	f7fc ff73 	bl	8001008 <__aeabi_dcmpeq>
 8004122:	4605      	mov	r5, r0
 8004124:	b178      	cbz	r0, 8004146 <_dtoa_r+0x86>
 8004126:	9a05      	ldr	r2, [sp, #20]
 8004128:	2301      	movs	r3, #1
 800412a:	6013      	str	r3, [r2, #0]
 800412c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800412e:	2b00      	cmp	r3, #0
 8004130:	f000 80c0 	beq.w	80042b4 <_dtoa_r+0x1f4>
 8004134:	4b69      	ldr	r3, [pc, #420]	; (80042dc <_dtoa_r+0x21c>)
 8004136:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004138:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 800413c:	6013      	str	r3, [r2, #0]
 800413e:	4658      	mov	r0, fp
 8004140:	b01b      	add	sp, #108	; 0x6c
 8004142:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004146:	aa18      	add	r2, sp, #96	; 0x60
 8004148:	a919      	add	r1, sp, #100	; 0x64
 800414a:	ec47 6b10 	vmov	d0, r6, r7
 800414e:	4648      	mov	r0, r9
 8004150:	f002 f954 	bl	80063fc <__d2b>
 8004154:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004158:	4682      	mov	sl, r0
 800415a:	f040 80a0 	bne.w	800429e <_dtoa_r+0x1de>
 800415e:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004162:	442c      	add	r4, r5
 8004164:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004168:	2b20      	cmp	r3, #32
 800416a:	f340 842c 	ble.w	80049c6 <_dtoa_r+0x906>
 800416e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004172:	fa08 f803 	lsl.w	r8, r8, r3
 8004176:	9b00      	ldr	r3, [sp, #0]
 8004178:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800417c:	fa23 f000 	lsr.w	r0, r3, r0
 8004180:	ea48 0000 	orr.w	r0, r8, r0
 8004184:	f7fc fc5e 	bl	8000a44 <__aeabi_ui2d>
 8004188:	2301      	movs	r3, #1
 800418a:	4606      	mov	r6, r0
 800418c:	3c01      	subs	r4, #1
 800418e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004192:	930f      	str	r3, [sp, #60]	; 0x3c
 8004194:	4630      	mov	r0, r6
 8004196:	4639      	mov	r1, r7
 8004198:	2200      	movs	r2, #0
 800419a:	4b51      	ldr	r3, [pc, #324]	; (80042e0 <_dtoa_r+0x220>)
 800419c:	f7fc fb14 	bl	80007c8 <__aeabi_dsub>
 80041a0:	a347      	add	r3, pc, #284	; (adr r3, 80042c0 <_dtoa_r+0x200>)
 80041a2:	e9d3 2300 	ldrd	r2, r3, [r3]
 80041a6:	f7fc fcc7 	bl	8000b38 <__aeabi_dmul>
 80041aa:	a347      	add	r3, pc, #284	; (adr r3, 80042c8 <_dtoa_r+0x208>)
 80041ac:	e9d3 2300 	ldrd	r2, r3, [r3]
 80041b0:	f7fc fb0c 	bl	80007cc <__adddf3>
 80041b4:	4606      	mov	r6, r0
 80041b6:	4620      	mov	r0, r4
 80041b8:	460f      	mov	r7, r1
 80041ba:	f7fc fc53 	bl	8000a64 <__aeabi_i2d>
 80041be:	a344      	add	r3, pc, #272	; (adr r3, 80042d0 <_dtoa_r+0x210>)
 80041c0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80041c4:	f7fc fcb8 	bl	8000b38 <__aeabi_dmul>
 80041c8:	4602      	mov	r2, r0
 80041ca:	460b      	mov	r3, r1
 80041cc:	4630      	mov	r0, r6
 80041ce:	4639      	mov	r1, r7
 80041d0:	f7fc fafc 	bl	80007cc <__adddf3>
 80041d4:	4606      	mov	r6, r0
 80041d6:	460f      	mov	r7, r1
 80041d8:	f7fc ff5e 	bl	8001098 <__aeabi_d2iz>
 80041dc:	2200      	movs	r2, #0
 80041de:	9006      	str	r0, [sp, #24]
 80041e0:	2300      	movs	r3, #0
 80041e2:	4630      	mov	r0, r6
 80041e4:	4639      	mov	r1, r7
 80041e6:	f7fc ff19 	bl	800101c <__aeabi_dcmplt>
 80041ea:	2800      	cmp	r0, #0
 80041ec:	f040 8273 	bne.w	80046d6 <_dtoa_r+0x616>
 80041f0:	9e06      	ldr	r6, [sp, #24]
 80041f2:	2e16      	cmp	r6, #22
 80041f4:	f200 825d 	bhi.w	80046b2 <_dtoa_r+0x5f2>
 80041f8:	4b3a      	ldr	r3, [pc, #232]	; (80042e4 <_dtoa_r+0x224>)
 80041fa:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80041fe:	e9d3 0100 	ldrd	r0, r1, [r3]
 8004202:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004206:	f7fc ff27 	bl	8001058 <__aeabi_dcmpgt>
 800420a:	2800      	cmp	r0, #0
 800420c:	f000 83d7 	beq.w	80049be <_dtoa_r+0x8fe>
 8004210:	1e73      	subs	r3, r6, #1
 8004212:	9306      	str	r3, [sp, #24]
 8004214:	2300      	movs	r3, #0
 8004216:	930d      	str	r3, [sp, #52]	; 0x34
 8004218:	1b2c      	subs	r4, r5, r4
 800421a:	f1b4 0801 	subs.w	r8, r4, #1
 800421e:	f100 8254 	bmi.w	80046ca <_dtoa_r+0x60a>
 8004222:	2300      	movs	r3, #0
 8004224:	9308      	str	r3, [sp, #32]
 8004226:	9b06      	ldr	r3, [sp, #24]
 8004228:	2b00      	cmp	r3, #0
 800422a:	f2c0 8245 	blt.w	80046b8 <_dtoa_r+0x5f8>
 800422e:	4498      	add	r8, r3
 8004230:	930c      	str	r3, [sp, #48]	; 0x30
 8004232:	2300      	movs	r3, #0
 8004234:	930b      	str	r3, [sp, #44]	; 0x2c
 8004236:	9b02      	ldr	r3, [sp, #8]
 8004238:	2b09      	cmp	r3, #9
 800423a:	d85b      	bhi.n	80042f4 <_dtoa_r+0x234>
 800423c:	2b05      	cmp	r3, #5
 800423e:	f340 83c0 	ble.w	80049c2 <_dtoa_r+0x902>
 8004242:	3b04      	subs	r3, #4
 8004244:	9302      	str	r3, [sp, #8]
 8004246:	2500      	movs	r5, #0
 8004248:	9b02      	ldr	r3, [sp, #8]
 800424a:	3b02      	subs	r3, #2
 800424c:	2b03      	cmp	r3, #3
 800424e:	f200 8498 	bhi.w	8004b82 <_dtoa_r+0xac2>
 8004252:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004256:	03df      	.short	0x03df
 8004258:	03e803bf 	.word	0x03e803bf
 800425c:	04f5      	.short	0x04f5
 800425e:	9a05      	ldr	r2, [sp, #20]
 8004260:	f242 730f 	movw	r3, #9999	; 0x270f
 8004264:	6013      	str	r3, [r2, #0]
 8004266:	9b00      	ldr	r3, [sp, #0]
 8004268:	b983      	cbnz	r3, 800428c <_dtoa_r+0x1cc>
 800426a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 800426e:	b96b      	cbnz	r3, 800428c <_dtoa_r+0x1cc>
 8004270:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004272:	f8df b074 	ldr.w	fp, [pc, #116]	; 80042e8 <_dtoa_r+0x228>
 8004276:	2b00      	cmp	r3, #0
 8004278:	f43f af61 	beq.w	800413e <_dtoa_r+0x7e>
 800427c:	f10b 0308 	add.w	r3, fp, #8
 8004280:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004282:	4658      	mov	r0, fp
 8004284:	6013      	str	r3, [r2, #0]
 8004286:	b01b      	add	sp, #108	; 0x6c
 8004288:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800428c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800428e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80042ec <_dtoa_r+0x22c>
 8004292:	2b00      	cmp	r3, #0
 8004294:	f43f af53 	beq.w	800413e <_dtoa_r+0x7e>
 8004298:	f10b 0303 	add.w	r3, fp, #3
 800429c:	e7f0      	b.n	8004280 <_dtoa_r+0x1c0>
 800429e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80042a2:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80042a6:	950f      	str	r5, [sp, #60]	; 0x3c
 80042a8:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 80042ac:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 80042b0:	9d18      	ldr	r5, [sp, #96]	; 0x60
 80042b2:	e76f      	b.n	8004194 <_dtoa_r+0xd4>
 80042b4:	f8df b038 	ldr.w	fp, [pc, #56]	; 80042f0 <_dtoa_r+0x230>
 80042b8:	4658      	mov	r0, fp
 80042ba:	b01b      	add	sp, #108	; 0x6c
 80042bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80042c0:	636f4361 	.word	0x636f4361
 80042c4:	3fd287a7 	.word	0x3fd287a7
 80042c8:	8b60c8b3 	.word	0x8b60c8b3
 80042cc:	3fc68a28 	.word	0x3fc68a28
 80042d0:	509f79fb 	.word	0x509f79fb
 80042d4:	3fd34413 	.word	0x3fd34413
 80042d8:	7ff00000 	.word	0x7ff00000
 80042dc:	080070f1 	.word	0x080070f1
 80042e0:	3ff80000 	.word	0x3ff80000
 80042e4:	08007150 	.word	0x08007150
 80042e8:	08007114 	.word	0x08007114
 80042ec:	08007120 	.word	0x08007120
 80042f0:	080070f0 	.word	0x080070f0
 80042f4:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80042f8:	2501      	movs	r5, #1
 80042fa:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80042fe:	2300      	movs	r3, #0
 8004300:	9302      	str	r3, [sp, #8]
 8004302:	9307      	str	r3, [sp, #28]
 8004304:	2100      	movs	r1, #0
 8004306:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800430a:	940e      	str	r4, [sp, #56]	; 0x38
 800430c:	4648      	mov	r0, r9
 800430e:	f001 fdcd 	bl	8005eac <_Balloc>
 8004312:	2c0e      	cmp	r4, #14
 8004314:	4683      	mov	fp, r0
 8004316:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800431a:	f200 80fb 	bhi.w	8004514 <_dtoa_r+0x454>
 800431e:	2d00      	cmp	r5, #0
 8004320:	f000 80f8 	beq.w	8004514 <_dtoa_r+0x454>
 8004324:	ed9d 7b00 	vldr	d7, [sp]
 8004328:	9906      	ldr	r1, [sp, #24]
 800432a:	2900      	cmp	r1, #0
 800432c:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004330:	f340 83e5 	ble.w	8004afe <_dtoa_r+0xa3e>
 8004334:	4b9d      	ldr	r3, [pc, #628]	; (80045ac <_dtoa_r+0x4ec>)
 8004336:	f001 020f 	and.w	r2, r1, #15
 800433a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800433e:	ed93 7b00 	vldr	d7, [r3]
 8004342:	110c      	asrs	r4, r1, #4
 8004344:	06e2      	lsls	r2, r4, #27
 8004346:	ed8d 7b00 	vstr	d7, [sp]
 800434a:	f140 849e 	bpl.w	8004c8a <_dtoa_r+0xbca>
 800434e:	4b98      	ldr	r3, [pc, #608]	; (80045b0 <_dtoa_r+0x4f0>)
 8004350:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004354:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004358:	f7fc fd18 	bl	8000d8c <__aeabi_ddiv>
 800435c:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004360:	f004 040f 	and.w	r4, r4, #15
 8004364:	2603      	movs	r6, #3
 8004366:	b17c      	cbz	r4, 8004388 <_dtoa_r+0x2c8>
 8004368:	e9dd 0100 	ldrd	r0, r1, [sp]
 800436c:	4d90      	ldr	r5, [pc, #576]	; (80045b0 <_dtoa_r+0x4f0>)
 800436e:	07e3      	lsls	r3, r4, #31
 8004370:	d504      	bpl.n	800437c <_dtoa_r+0x2bc>
 8004372:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004376:	f7fc fbdf 	bl	8000b38 <__aeabi_dmul>
 800437a:	3601      	adds	r6, #1
 800437c:	1064      	asrs	r4, r4, #1
 800437e:	f105 0508 	add.w	r5, r5, #8
 8004382:	d1f4      	bne.n	800436e <_dtoa_r+0x2ae>
 8004384:	e9cd 0100 	strd	r0, r1, [sp]
 8004388:	e9dd 2300 	ldrd	r2, r3, [sp]
 800438c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004390:	f7fc fcfc 	bl	8000d8c <__aeabi_ddiv>
 8004394:	e9cd 0100 	strd	r0, r1, [sp]
 8004398:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800439a:	b143      	cbz	r3, 80043ae <_dtoa_r+0x2ee>
 800439c:	2200      	movs	r2, #0
 800439e:	4b85      	ldr	r3, [pc, #532]	; (80045b4 <_dtoa_r+0x4f4>)
 80043a0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80043a4:	f7fc fe3a 	bl	800101c <__aeabi_dcmplt>
 80043a8:	2800      	cmp	r0, #0
 80043aa:	f040 84ff 	bne.w	8004dac <_dtoa_r+0xcec>
 80043ae:	4630      	mov	r0, r6
 80043b0:	f7fc fb58 	bl	8000a64 <__aeabi_i2d>
 80043b4:	e9dd 2300 	ldrd	r2, r3, [sp]
 80043b8:	f7fc fbbe 	bl	8000b38 <__aeabi_dmul>
 80043bc:	4b7e      	ldr	r3, [pc, #504]	; (80045b8 <_dtoa_r+0x4f8>)
 80043be:	2200      	movs	r2, #0
 80043c0:	f7fc fa04 	bl	80007cc <__adddf3>
 80043c4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80043c6:	4606      	mov	r6, r0
 80043c8:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80043cc:	2b00      	cmp	r3, #0
 80043ce:	f000 841c 	beq.w	8004c0a <_dtoa_r+0xb4a>
 80043d2:	9b06      	ldr	r3, [sp, #24]
 80043d4:	9316      	str	r3, [sp, #88]	; 0x58
 80043d6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80043d8:	9312      	str	r3, [sp, #72]	; 0x48
 80043da:	e9dd 0100 	ldrd	r0, r1, [sp]
 80043de:	f7fc fe5b 	bl	8001098 <__aeabi_d2iz>
 80043e2:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80043e4:	4b71      	ldr	r3, [pc, #452]	; (80045ac <_dtoa_r+0x4ec>)
 80043e6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80043ea:	ed13 7b02 	vldr	d7, [r3, #-8]
 80043ee:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80043f2:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80043f6:	f7fc fb35 	bl	8000a64 <__aeabi_i2d>
 80043fa:	460b      	mov	r3, r1
 80043fc:	4602      	mov	r2, r0
 80043fe:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004402:	e9cd 6700 	strd	r6, r7, [sp]
 8004406:	f7fc f9df 	bl	80007c8 <__aeabi_dsub>
 800440a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800440c:	b2ed      	uxtb	r5, r5
 800440e:	4606      	mov	r6, r0
 8004410:	460f      	mov	r7, r1
 8004412:	f10b 0401 	add.w	r4, fp, #1
 8004416:	2b00      	cmp	r3, #0
 8004418:	f000 8458 	beq.w	8004ccc <_dtoa_r+0xc0c>
 800441c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004420:	2000      	movs	r0, #0
 8004422:	4966      	ldr	r1, [pc, #408]	; (80045bc <_dtoa_r+0x4fc>)
 8004424:	f7fc fcb2 	bl	8000d8c <__aeabi_ddiv>
 8004428:	e9dd 2300 	ldrd	r2, r3, [sp]
 800442c:	f7fc f9cc 	bl	80007c8 <__aeabi_dsub>
 8004430:	f88b 5000 	strb.w	r5, [fp]
 8004434:	4632      	mov	r2, r6
 8004436:	463b      	mov	r3, r7
 8004438:	e9cd 0100 	strd	r0, r1, [sp]
 800443c:	f7fc fe0c 	bl	8001058 <__aeabi_dcmpgt>
 8004440:	2800      	cmp	r0, #0
 8004442:	f040 8502 	bne.w	8004e4a <_dtoa_r+0xd8a>
 8004446:	4632      	mov	r2, r6
 8004448:	463b      	mov	r3, r7
 800444a:	2000      	movs	r0, #0
 800444c:	4959      	ldr	r1, [pc, #356]	; (80045b4 <_dtoa_r+0x4f4>)
 800444e:	f7fc f9bb 	bl	80007c8 <__aeabi_dsub>
 8004452:	4602      	mov	r2, r0
 8004454:	460b      	mov	r3, r1
 8004456:	e9dd 0100 	ldrd	r0, r1, [sp]
 800445a:	f7fc fdfd 	bl	8001058 <__aeabi_dcmpgt>
 800445e:	2800      	cmp	r0, #0
 8004460:	f040 84fb 	bne.w	8004e5a <_dtoa_r+0xd9a>
 8004464:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004466:	2a01      	cmp	r2, #1
 8004468:	d050      	beq.n	800450c <_dtoa_r+0x44c>
 800446a:	445a      	add	r2, fp
 800446c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004470:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004474:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004478:	4692      	mov	sl, r2
 800447a:	46cb      	mov	fp, r9
 800447c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004480:	e00c      	b.n	800449c <_dtoa_r+0x3dc>
 8004482:	2000      	movs	r0, #0
 8004484:	494b      	ldr	r1, [pc, #300]	; (80045b4 <_dtoa_r+0x4f4>)
 8004486:	f7fc f99f 	bl	80007c8 <__aeabi_dsub>
 800448a:	4642      	mov	r2, r8
 800448c:	464b      	mov	r3, r9
 800448e:	f7fc fdc5 	bl	800101c <__aeabi_dcmplt>
 8004492:	2800      	cmp	r0, #0
 8004494:	f040 84dc 	bne.w	8004e50 <_dtoa_r+0xd90>
 8004498:	4554      	cmp	r4, sl
 800449a:	d030      	beq.n	80044fe <_dtoa_r+0x43e>
 800449c:	4640      	mov	r0, r8
 800449e:	4649      	mov	r1, r9
 80044a0:	2200      	movs	r2, #0
 80044a2:	4b47      	ldr	r3, [pc, #284]	; (80045c0 <_dtoa_r+0x500>)
 80044a4:	f7fc fb48 	bl	8000b38 <__aeabi_dmul>
 80044a8:	2200      	movs	r2, #0
 80044aa:	4b45      	ldr	r3, [pc, #276]	; (80045c0 <_dtoa_r+0x500>)
 80044ac:	4680      	mov	r8, r0
 80044ae:	4689      	mov	r9, r1
 80044b0:	4630      	mov	r0, r6
 80044b2:	4639      	mov	r1, r7
 80044b4:	f7fc fb40 	bl	8000b38 <__aeabi_dmul>
 80044b8:	460f      	mov	r7, r1
 80044ba:	4606      	mov	r6, r0
 80044bc:	f7fc fdec 	bl	8001098 <__aeabi_d2iz>
 80044c0:	4605      	mov	r5, r0
 80044c2:	f7fc facf 	bl	8000a64 <__aeabi_i2d>
 80044c6:	4602      	mov	r2, r0
 80044c8:	460b      	mov	r3, r1
 80044ca:	4630      	mov	r0, r6
 80044cc:	4639      	mov	r1, r7
 80044ce:	f7fc f97b 	bl	80007c8 <__aeabi_dsub>
 80044d2:	3530      	adds	r5, #48	; 0x30
 80044d4:	b2ed      	uxtb	r5, r5
 80044d6:	4642      	mov	r2, r8
 80044d8:	464b      	mov	r3, r9
 80044da:	f804 5b01 	strb.w	r5, [r4], #1
 80044de:	4606      	mov	r6, r0
 80044e0:	460f      	mov	r7, r1
 80044e2:	f7fc fd9b 	bl	800101c <__aeabi_dcmplt>
 80044e6:	4632      	mov	r2, r6
 80044e8:	463b      	mov	r3, r7
 80044ea:	2800      	cmp	r0, #0
 80044ec:	d0c9      	beq.n	8004482 <_dtoa_r+0x3c2>
 80044ee:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80044f0:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80044f4:	9306      	str	r3, [sp, #24]
 80044f6:	46d9      	mov	r9, fp
 80044f8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80044fc:	e236      	b.n	800496c <_dtoa_r+0x8ac>
 80044fe:	46d9      	mov	r9, fp
 8004500:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004504:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004508:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800450c:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004510:	e9cd 3400 	strd	r3, r4, [sp]
 8004514:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004516:	2b00      	cmp	r3, #0
 8004518:	f2c0 80ae 	blt.w	8004678 <_dtoa_r+0x5b8>
 800451c:	9a06      	ldr	r2, [sp, #24]
 800451e:	2a0e      	cmp	r2, #14
 8004520:	f300 80aa 	bgt.w	8004678 <_dtoa_r+0x5b8>
 8004524:	4b21      	ldr	r3, [pc, #132]	; (80045ac <_dtoa_r+0x4ec>)
 8004526:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800452a:	ed93 7b00 	vldr	d7, [r3]
 800452e:	9b07      	ldr	r3, [sp, #28]
 8004530:	2b00      	cmp	r3, #0
 8004532:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004536:	f2c0 82be 	blt.w	8004ab6 <_dtoa_r+0x9f6>
 800453a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800453e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004542:	4630      	mov	r0, r6
 8004544:	4639      	mov	r1, r7
 8004546:	f7fc fc21 	bl	8000d8c <__aeabi_ddiv>
 800454a:	f7fc fda5 	bl	8001098 <__aeabi_d2iz>
 800454e:	4605      	mov	r5, r0
 8004550:	f7fc fa88 	bl	8000a64 <__aeabi_i2d>
 8004554:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004558:	f7fc faee 	bl	8000b38 <__aeabi_dmul>
 800455c:	460b      	mov	r3, r1
 800455e:	4602      	mov	r2, r0
 8004560:	4639      	mov	r1, r7
 8004562:	4630      	mov	r0, r6
 8004564:	f7fc f930 	bl	80007c8 <__aeabi_dsub>
 8004568:	f105 0330 	add.w	r3, r5, #48	; 0x30
 800456c:	f88b 3000 	strb.w	r3, [fp]
 8004570:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004572:	2b01      	cmp	r3, #1
 8004574:	4606      	mov	r6, r0
 8004576:	460f      	mov	r7, r1
 8004578:	f10b 0401 	add.w	r4, fp, #1
 800457c:	d053      	beq.n	8004626 <_dtoa_r+0x566>
 800457e:	2200      	movs	r2, #0
 8004580:	4b0f      	ldr	r3, [pc, #60]	; (80045c0 <_dtoa_r+0x500>)
 8004582:	f7fc fad9 	bl	8000b38 <__aeabi_dmul>
 8004586:	2200      	movs	r2, #0
 8004588:	2300      	movs	r3, #0
 800458a:	4606      	mov	r6, r0
 800458c:	460f      	mov	r7, r1
 800458e:	f7fc fd3b 	bl	8001008 <__aeabi_dcmpeq>
 8004592:	2800      	cmp	r0, #0
 8004594:	f040 81ea 	bne.w	800496c <_dtoa_r+0x8ac>
 8004598:	f8cd a000 	str.w	sl, [sp]
 800459c:	f8cd 901c 	str.w	r9, [sp, #28]
 80045a0:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80045a4:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 80045a8:	e017      	b.n	80045da <_dtoa_r+0x51a>
 80045aa:	bf00      	nop
 80045ac:	08007150 	.word	0x08007150
 80045b0:	08007128 	.word	0x08007128
 80045b4:	3ff00000 	.word	0x3ff00000
 80045b8:	401c0000 	.word	0x401c0000
 80045bc:	3fe00000 	.word	0x3fe00000
 80045c0:	40240000 	.word	0x40240000
 80045c4:	f7fc fab8 	bl	8000b38 <__aeabi_dmul>
 80045c8:	2200      	movs	r2, #0
 80045ca:	2300      	movs	r3, #0
 80045cc:	4606      	mov	r6, r0
 80045ce:	460f      	mov	r7, r1
 80045d0:	f7fc fd1a 	bl	8001008 <__aeabi_dcmpeq>
 80045d4:	2800      	cmp	r0, #0
 80045d6:	f040 833d 	bne.w	8004c54 <_dtoa_r+0xb94>
 80045da:	464a      	mov	r2, r9
 80045dc:	4653      	mov	r3, sl
 80045de:	4630      	mov	r0, r6
 80045e0:	4639      	mov	r1, r7
 80045e2:	f7fc fbd3 	bl	8000d8c <__aeabi_ddiv>
 80045e6:	f7fc fd57 	bl	8001098 <__aeabi_d2iz>
 80045ea:	4605      	mov	r5, r0
 80045ec:	f7fc fa3a 	bl	8000a64 <__aeabi_i2d>
 80045f0:	464a      	mov	r2, r9
 80045f2:	4653      	mov	r3, sl
 80045f4:	f7fc faa0 	bl	8000b38 <__aeabi_dmul>
 80045f8:	4602      	mov	r2, r0
 80045fa:	460b      	mov	r3, r1
 80045fc:	4630      	mov	r0, r6
 80045fe:	4639      	mov	r1, r7
 8004600:	f7fc f8e2 	bl	80007c8 <__aeabi_dsub>
 8004604:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004608:	f804 cb01 	strb.w	ip, [r4], #1
 800460c:	eba4 0c0b 	sub.w	ip, r4, fp
 8004610:	45e0      	cmp	r8, ip
 8004612:	4606      	mov	r6, r0
 8004614:	460f      	mov	r7, r1
 8004616:	f04f 0200 	mov.w	r2, #0
 800461a:	4bc1      	ldr	r3, [pc, #772]	; (8004920 <_dtoa_r+0x860>)
 800461c:	d1d2      	bne.n	80045c4 <_dtoa_r+0x504>
 800461e:	f8dd a000 	ldr.w	sl, [sp]
 8004622:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004626:	4632      	mov	r2, r6
 8004628:	463b      	mov	r3, r7
 800462a:	4630      	mov	r0, r6
 800462c:	4639      	mov	r1, r7
 800462e:	f7fc f8cd 	bl	80007cc <__adddf3>
 8004632:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004636:	4606      	mov	r6, r0
 8004638:	460f      	mov	r7, r1
 800463a:	f7fc fd0d 	bl	8001058 <__aeabi_dcmpgt>
 800463e:	b958      	cbnz	r0, 8004658 <_dtoa_r+0x598>
 8004640:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004644:	4630      	mov	r0, r6
 8004646:	4639      	mov	r1, r7
 8004648:	f7fc fcde 	bl	8001008 <__aeabi_dcmpeq>
 800464c:	2800      	cmp	r0, #0
 800464e:	f000 818d 	beq.w	800496c <_dtoa_r+0x8ac>
 8004652:	07e9      	lsls	r1, r5, #31
 8004654:	f140 818a 	bpl.w	800496c <_dtoa_r+0x8ac>
 8004658:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800465c:	e005      	b.n	800466a <_dtoa_r+0x5aa>
 800465e:	459b      	cmp	fp, r3
 8004660:	f000 8373 	beq.w	8004d4a <_dtoa_r+0xc8a>
 8004664:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004668:	461c      	mov	r4, r3
 800466a:	2d39      	cmp	r5, #57	; 0x39
 800466c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004670:	d0f5      	beq.n	800465e <_dtoa_r+0x59e>
 8004672:	3501      	adds	r5, #1
 8004674:	701d      	strb	r5, [r3, #0]
 8004676:	e179      	b.n	800496c <_dtoa_r+0x8ac>
 8004678:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800467a:	2a00      	cmp	r2, #0
 800467c:	d03b      	beq.n	80046f6 <_dtoa_r+0x636>
 800467e:	9a02      	ldr	r2, [sp, #8]
 8004680:	2a01      	cmp	r2, #1
 8004682:	f340 820b 	ble.w	8004a9c <_dtoa_r+0x9dc>
 8004686:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004688:	1e5f      	subs	r7, r3, #1
 800468a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800468c:	42bb      	cmp	r3, r7
 800468e:	f2c0 82e6 	blt.w	8004c5e <_dtoa_r+0xb9e>
 8004692:	1bdf      	subs	r7, r3, r7
 8004694:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004696:	2b00      	cmp	r3, #0
 8004698:	f2c0 830b 	blt.w	8004cb2 <_dtoa_r+0xbf2>
 800469c:	9a08      	ldr	r2, [sp, #32]
 800469e:	4614      	mov	r4, r2
 80046a0:	441a      	add	r2, r3
 80046a2:	4498      	add	r8, r3
 80046a4:	9208      	str	r2, [sp, #32]
 80046a6:	2101      	movs	r1, #1
 80046a8:	4648      	mov	r0, r9
 80046aa:	f001 fcbf 	bl	800602c <__i2b>
 80046ae:	4605      	mov	r5, r0
 80046b0:	e024      	b.n	80046fc <_dtoa_r+0x63c>
 80046b2:	2301      	movs	r3, #1
 80046b4:	930d      	str	r3, [sp, #52]	; 0x34
 80046b6:	e5af      	b.n	8004218 <_dtoa_r+0x158>
 80046b8:	9a08      	ldr	r2, [sp, #32]
 80046ba:	9b06      	ldr	r3, [sp, #24]
 80046bc:	1ad2      	subs	r2, r2, r3
 80046be:	425b      	negs	r3, r3
 80046c0:	930b      	str	r3, [sp, #44]	; 0x2c
 80046c2:	2300      	movs	r3, #0
 80046c4:	9208      	str	r2, [sp, #32]
 80046c6:	930c      	str	r3, [sp, #48]	; 0x30
 80046c8:	e5b5      	b.n	8004236 <_dtoa_r+0x176>
 80046ca:	f1c4 0301 	rsb	r3, r4, #1
 80046ce:	9308      	str	r3, [sp, #32]
 80046d0:	f04f 0800 	mov.w	r8, #0
 80046d4:	e5a7      	b.n	8004226 <_dtoa_r+0x166>
 80046d6:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80046da:	4640      	mov	r0, r8
 80046dc:	f7fc f9c2 	bl	8000a64 <__aeabi_i2d>
 80046e0:	4632      	mov	r2, r6
 80046e2:	463b      	mov	r3, r7
 80046e4:	f7fc fc90 	bl	8001008 <__aeabi_dcmpeq>
 80046e8:	2800      	cmp	r0, #0
 80046ea:	f47f ad81 	bne.w	80041f0 <_dtoa_r+0x130>
 80046ee:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80046f2:	9306      	str	r3, [sp, #24]
 80046f4:	e57c      	b.n	80041f0 <_dtoa_r+0x130>
 80046f6:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80046f8:	9c08      	ldr	r4, [sp, #32]
 80046fa:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80046fc:	2c00      	cmp	r4, #0
 80046fe:	dd0c      	ble.n	800471a <_dtoa_r+0x65a>
 8004700:	f1b8 0f00 	cmp.w	r8, #0
 8004704:	dd09      	ble.n	800471a <_dtoa_r+0x65a>
 8004706:	4544      	cmp	r4, r8
 8004708:	9a08      	ldr	r2, [sp, #32]
 800470a:	4623      	mov	r3, r4
 800470c:	bfa8      	it	ge
 800470e:	4643      	movge	r3, r8
 8004710:	1ad2      	subs	r2, r2, r3
 8004712:	9208      	str	r2, [sp, #32]
 8004714:	1ae4      	subs	r4, r4, r3
 8004716:	eba8 0803 	sub.w	r8, r8, r3
 800471a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800471c:	b16b      	cbz	r3, 800473a <_dtoa_r+0x67a>
 800471e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004720:	2a00      	cmp	r2, #0
 8004722:	f000 8290 	beq.w	8004c46 <_dtoa_r+0xb86>
 8004726:	1bde      	subs	r6, r3, r7
 8004728:	2f00      	cmp	r7, #0
 800472a:	f040 819b 	bne.w	8004a64 <_dtoa_r+0x9a4>
 800472e:	4651      	mov	r1, sl
 8004730:	4632      	mov	r2, r6
 8004732:	4648      	mov	r0, r9
 8004734:	f001 fd2a 	bl	800618c <__pow5mult>
 8004738:	4682      	mov	sl, r0
 800473a:	2101      	movs	r1, #1
 800473c:	4648      	mov	r0, r9
 800473e:	f001 fc75 	bl	800602c <__i2b>
 8004742:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004744:	4606      	mov	r6, r0
 8004746:	2a00      	cmp	r2, #0
 8004748:	f040 8125 	bne.w	8004996 <_dtoa_r+0x8d6>
 800474c:	9b02      	ldr	r3, [sp, #8]
 800474e:	2b01      	cmp	r3, #1
 8004750:	f340 816c 	ble.w	8004a2c <_dtoa_r+0x96c>
 8004754:	2001      	movs	r0, #1
 8004756:	4440      	add	r0, r8
 8004758:	f010 001f 	ands.w	r0, r0, #31
 800475c:	f000 8119 	beq.w	8004992 <_dtoa_r+0x8d2>
 8004760:	f1c0 0320 	rsb	r3, r0, #32
 8004764:	2b04      	cmp	r3, #4
 8004766:	f340 83ac 	ble.w	8004ec2 <_dtoa_r+0xe02>
 800476a:	f1c0 001c 	rsb	r0, r0, #28
 800476e:	9b08      	ldr	r3, [sp, #32]
 8004770:	4403      	add	r3, r0
 8004772:	9308      	str	r3, [sp, #32]
 8004774:	4404      	add	r4, r0
 8004776:	4480      	add	r8, r0
 8004778:	9b08      	ldr	r3, [sp, #32]
 800477a:	2b00      	cmp	r3, #0
 800477c:	dd05      	ble.n	800478a <_dtoa_r+0x6ca>
 800477e:	4651      	mov	r1, sl
 8004780:	461a      	mov	r2, r3
 8004782:	4648      	mov	r0, r9
 8004784:	f001 fd52 	bl	800622c <__lshift>
 8004788:	4682      	mov	sl, r0
 800478a:	f1b8 0f00 	cmp.w	r8, #0
 800478e:	dd05      	ble.n	800479c <_dtoa_r+0x6dc>
 8004790:	4631      	mov	r1, r6
 8004792:	4642      	mov	r2, r8
 8004794:	4648      	mov	r0, r9
 8004796:	f001 fd49 	bl	800622c <__lshift>
 800479a:	4606      	mov	r6, r0
 800479c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800479e:	2b00      	cmp	r3, #0
 80047a0:	d177      	bne.n	8004892 <_dtoa_r+0x7d2>
 80047a2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80047a4:	2b00      	cmp	r3, #0
 80047a6:	f340 8209 	ble.w	8004bbc <_dtoa_r+0xafc>
 80047aa:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80047ac:	2b00      	cmp	r3, #0
 80047ae:	f000 8089 	beq.w	80048c4 <_dtoa_r+0x804>
 80047b2:	2c00      	cmp	r4, #0
 80047b4:	f300 816b 	bgt.w	8004a8e <_dtoa_r+0x9ce>
 80047b8:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80047ba:	2b00      	cmp	r3, #0
 80047bc:	f040 81cd 	bne.w	8004b5a <_dtoa_r+0xa9a>
 80047c0:	46a8      	mov	r8, r5
 80047c2:	9a00      	ldr	r2, [sp, #0]
 80047c4:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 80047c8:	f002 0201 	and.w	r2, r2, #1
 80047cc:	920a      	str	r2, [sp, #40]	; 0x28
 80047ce:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80047d0:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 80047d4:	441a      	add	r2, r3
 80047d6:	465f      	mov	r7, fp
 80047d8:	9209      	str	r2, [sp, #36]	; 0x24
 80047da:	46b3      	mov	fp, r6
 80047dc:	4659      	mov	r1, fp
 80047de:	4650      	mov	r0, sl
 80047e0:	f7ff fbdc 	bl	8003f9c <quorem>
 80047e4:	4629      	mov	r1, r5
 80047e6:	4604      	mov	r4, r0
 80047e8:	4650      	mov	r0, sl
 80047ea:	f001 fd75 	bl	80062d8 <__mcmp>
 80047ee:	4659      	mov	r1, fp
 80047f0:	4606      	mov	r6, r0
 80047f2:	4642      	mov	r2, r8
 80047f4:	4648      	mov	r0, r9
 80047f6:	f001 fd8b 	bl	8006310 <__mdiff>
 80047fa:	f104 0330 	add.w	r3, r4, #48	; 0x30
 80047fe:	9300      	str	r3, [sp, #0]
 8004800:	68c3      	ldr	r3, [r0, #12]
 8004802:	4601      	mov	r1, r0
 8004804:	2b00      	cmp	r3, #0
 8004806:	f040 81d4 	bne.w	8004bb2 <_dtoa_r+0xaf2>
 800480a:	9008      	str	r0, [sp, #32]
 800480c:	4650      	mov	r0, sl
 800480e:	f001 fd63 	bl	80062d8 <__mcmp>
 8004812:	9a08      	ldr	r2, [sp, #32]
 8004814:	9007      	str	r0, [sp, #28]
 8004816:	4611      	mov	r1, r2
 8004818:	4648      	mov	r0, r9
 800481a:	f001 fb6d 	bl	8005ef8 <_Bfree>
 800481e:	9b07      	ldr	r3, [sp, #28]
 8004820:	b933      	cbnz	r3, 8004830 <_dtoa_r+0x770>
 8004822:	9a02      	ldr	r2, [sp, #8]
 8004824:	b922      	cbnz	r2, 8004830 <_dtoa_r+0x770>
 8004826:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004828:	2b00      	cmp	r3, #0
 800482a:	f000 8319 	beq.w	8004e60 <_dtoa_r+0xda0>
 800482e:	9b02      	ldr	r3, [sp, #8]
 8004830:	2e00      	cmp	r6, #0
 8004832:	f2c0 821c 	blt.w	8004c6e <_dtoa_r+0xbae>
 8004836:	d105      	bne.n	8004844 <_dtoa_r+0x784>
 8004838:	9a02      	ldr	r2, [sp, #8]
 800483a:	b91a      	cbnz	r2, 8004844 <_dtoa_r+0x784>
 800483c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800483e:	2a00      	cmp	r2, #0
 8004840:	f000 8215 	beq.w	8004c6e <_dtoa_r+0xbae>
 8004844:	2b00      	cmp	r3, #0
 8004846:	f107 0401 	add.w	r4, r7, #1
 800484a:	f300 8225 	bgt.w	8004c98 <_dtoa_r+0xbd8>
 800484e:	9b00      	ldr	r3, [sp, #0]
 8004850:	703b      	strb	r3, [r7, #0]
 8004852:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004854:	42bb      	cmp	r3, r7
 8004856:	f000 8230 	beq.w	8004cba <_dtoa_r+0xbfa>
 800485a:	4651      	mov	r1, sl
 800485c:	2300      	movs	r3, #0
 800485e:	220a      	movs	r2, #10
 8004860:	4648      	mov	r0, r9
 8004862:	f001 fb53 	bl	8005f0c <__multadd>
 8004866:	4545      	cmp	r5, r8
 8004868:	4682      	mov	sl, r0
 800486a:	4629      	mov	r1, r5
 800486c:	f04f 0300 	mov.w	r3, #0
 8004870:	f04f 020a 	mov.w	r2, #10
 8004874:	4648      	mov	r0, r9
 8004876:	f000 8196 	beq.w	8004ba6 <_dtoa_r+0xae6>
 800487a:	f001 fb47 	bl	8005f0c <__multadd>
 800487e:	4641      	mov	r1, r8
 8004880:	4605      	mov	r5, r0
 8004882:	2300      	movs	r3, #0
 8004884:	220a      	movs	r2, #10
 8004886:	4648      	mov	r0, r9
 8004888:	f001 fb40 	bl	8005f0c <__multadd>
 800488c:	4627      	mov	r7, r4
 800488e:	4680      	mov	r8, r0
 8004890:	e7a4      	b.n	80047dc <_dtoa_r+0x71c>
 8004892:	4631      	mov	r1, r6
 8004894:	4650      	mov	r0, sl
 8004896:	f001 fd1f 	bl	80062d8 <__mcmp>
 800489a:	2800      	cmp	r0, #0
 800489c:	da81      	bge.n	80047a2 <_dtoa_r+0x6e2>
 800489e:	9f06      	ldr	r7, [sp, #24]
 80048a0:	4651      	mov	r1, sl
 80048a2:	2300      	movs	r3, #0
 80048a4:	220a      	movs	r2, #10
 80048a6:	4648      	mov	r0, r9
 80048a8:	3f01      	subs	r7, #1
 80048aa:	9706      	str	r7, [sp, #24]
 80048ac:	f001 fb2e 	bl	8005f0c <__multadd>
 80048b0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80048b2:	4682      	mov	sl, r0
 80048b4:	2b00      	cmp	r3, #0
 80048b6:	f040 82eb 	bne.w	8004e90 <_dtoa_r+0xdd0>
 80048ba:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80048bc:	2b00      	cmp	r3, #0
 80048be:	f340 82f3 	ble.w	8004ea8 <_dtoa_r+0xde8>
 80048c2:	9309      	str	r3, [sp, #36]	; 0x24
 80048c4:	465c      	mov	r4, fp
 80048c6:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80048ca:	e002      	b.n	80048d2 <_dtoa_r+0x812>
 80048cc:	f001 fb1e 	bl	8005f0c <__multadd>
 80048d0:	4682      	mov	sl, r0
 80048d2:	4631      	mov	r1, r6
 80048d4:	4650      	mov	r0, sl
 80048d6:	f7ff fb61 	bl	8003f9c <quorem>
 80048da:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80048de:	f804 7b01 	strb.w	r7, [r4], #1
 80048e2:	eba4 030b 	sub.w	r3, r4, fp
 80048e6:	4598      	cmp	r8, r3
 80048e8:	f04f 020a 	mov.w	r2, #10
 80048ec:	f04f 0300 	mov.w	r3, #0
 80048f0:	4651      	mov	r1, sl
 80048f2:	4648      	mov	r0, r9
 80048f4:	dcea      	bgt.n	80048cc <_dtoa_r+0x80c>
 80048f6:	2300      	movs	r3, #0
 80048f8:	9700      	str	r7, [sp, #0]
 80048fa:	9302      	str	r3, [sp, #8]
 80048fc:	4651      	mov	r1, sl
 80048fe:	2201      	movs	r2, #1
 8004900:	4648      	mov	r0, r9
 8004902:	f001 fc93 	bl	800622c <__lshift>
 8004906:	4631      	mov	r1, r6
 8004908:	4682      	mov	sl, r0
 800490a:	f001 fce5 	bl	80062d8 <__mcmp>
 800490e:	2800      	cmp	r0, #0
 8004910:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004914:	dc14      	bgt.n	8004940 <_dtoa_r+0x880>
 8004916:	d108      	bne.n	800492a <_dtoa_r+0x86a>
 8004918:	9b00      	ldr	r3, [sp, #0]
 800491a:	07db      	lsls	r3, r3, #31
 800491c:	d410      	bmi.n	8004940 <_dtoa_r+0x880>
 800491e:	e004      	b.n	800492a <_dtoa_r+0x86a>
 8004920:	40240000 	.word	0x40240000
 8004924:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004928:	461c      	mov	r4, r3
 800492a:	2a30      	cmp	r2, #48	; 0x30
 800492c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004930:	d0f8      	beq.n	8004924 <_dtoa_r+0x864>
 8004932:	e00b      	b.n	800494c <_dtoa_r+0x88c>
 8004934:	459b      	cmp	fp, r3
 8004936:	f000 814e 	beq.w	8004bd6 <_dtoa_r+0xb16>
 800493a:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 800493e:	461c      	mov	r4, r3
 8004940:	2a39      	cmp	r2, #57	; 0x39
 8004942:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004946:	d0f5      	beq.n	8004934 <_dtoa_r+0x874>
 8004948:	3201      	adds	r2, #1
 800494a:	701a      	strb	r2, [r3, #0]
 800494c:	4631      	mov	r1, r6
 800494e:	4648      	mov	r0, r9
 8004950:	f001 fad2 	bl	8005ef8 <_Bfree>
 8004954:	b155      	cbz	r5, 800496c <_dtoa_r+0x8ac>
 8004956:	9902      	ldr	r1, [sp, #8]
 8004958:	b121      	cbz	r1, 8004964 <_dtoa_r+0x8a4>
 800495a:	42a9      	cmp	r1, r5
 800495c:	d002      	beq.n	8004964 <_dtoa_r+0x8a4>
 800495e:	4648      	mov	r0, r9
 8004960:	f001 faca 	bl	8005ef8 <_Bfree>
 8004964:	4629      	mov	r1, r5
 8004966:	4648      	mov	r0, r9
 8004968:	f001 fac6 	bl	8005ef8 <_Bfree>
 800496c:	4651      	mov	r1, sl
 800496e:	4648      	mov	r0, r9
 8004970:	f001 fac2 	bl	8005ef8 <_Bfree>
 8004974:	2200      	movs	r2, #0
 8004976:	9b06      	ldr	r3, [sp, #24]
 8004978:	7022      	strb	r2, [r4, #0]
 800497a:	9a05      	ldr	r2, [sp, #20]
 800497c:	3301      	adds	r3, #1
 800497e:	6013      	str	r3, [r2, #0]
 8004980:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004982:	2b00      	cmp	r3, #0
 8004984:	f43f abdb 	beq.w	800413e <_dtoa_r+0x7e>
 8004988:	4658      	mov	r0, fp
 800498a:	601c      	str	r4, [r3, #0]
 800498c:	b01b      	add	sp, #108	; 0x6c
 800498e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004992:	201c      	movs	r0, #28
 8004994:	e6eb      	b.n	800476e <_dtoa_r+0x6ae>
 8004996:	4601      	mov	r1, r0
 8004998:	4648      	mov	r0, r9
 800499a:	f001 fbf7 	bl	800618c <__pow5mult>
 800499e:	9b02      	ldr	r3, [sp, #8]
 80049a0:	2b01      	cmp	r3, #1
 80049a2:	4606      	mov	r6, r0
 80049a4:	f340 80d4 	ble.w	8004b50 <_dtoa_r+0xa90>
 80049a8:	2300      	movs	r3, #0
 80049aa:	930c      	str	r3, [sp, #48]	; 0x30
 80049ac:	6933      	ldr	r3, [r6, #16]
 80049ae:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 80049b2:	6918      	ldr	r0, [r3, #16]
 80049b4:	f001 faea 	bl	8005f8c <__hi0bits>
 80049b8:	f1c0 0020 	rsb	r0, r0, #32
 80049bc:	e6cb      	b.n	8004756 <_dtoa_r+0x696>
 80049be:	900d      	str	r0, [sp, #52]	; 0x34
 80049c0:	e42a      	b.n	8004218 <_dtoa_r+0x158>
 80049c2:	2501      	movs	r5, #1
 80049c4:	e440      	b.n	8004248 <_dtoa_r+0x188>
 80049c6:	f1c3 0820 	rsb	r8, r3, #32
 80049ca:	9b00      	ldr	r3, [sp, #0]
 80049cc:	fa03 f008 	lsl.w	r0, r3, r8
 80049d0:	f7ff bbd8 	b.w	8004184 <_dtoa_r+0xc4>
 80049d4:	2300      	movs	r3, #0
 80049d6:	930a      	str	r3, [sp, #40]	; 0x28
 80049d8:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 80049dc:	4413      	add	r3, r2
 80049de:	930e      	str	r3, [sp, #56]	; 0x38
 80049e0:	3301      	adds	r3, #1
 80049e2:	2b01      	cmp	r3, #1
 80049e4:	461e      	mov	r6, r3
 80049e6:	9309      	str	r3, [sp, #36]	; 0x24
 80049e8:	bfb8      	it	lt
 80049ea:	2601      	movlt	r6, #1
 80049ec:	2100      	movs	r1, #0
 80049ee:	2e17      	cmp	r6, #23
 80049f0:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80049f4:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80049f6:	f77f ac89 	ble.w	800430c <_dtoa_r+0x24c>
 80049fa:	2201      	movs	r2, #1
 80049fc:	2304      	movs	r3, #4
 80049fe:	005b      	lsls	r3, r3, #1
 8004a00:	f103 0014 	add.w	r0, r3, #20
 8004a04:	42b0      	cmp	r0, r6
 8004a06:	4611      	mov	r1, r2
 8004a08:	f102 0201 	add.w	r2, r2, #1
 8004a0c:	d9f7      	bls.n	80049fe <_dtoa_r+0x93e>
 8004a0e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004a12:	e47b      	b.n	800430c <_dtoa_r+0x24c>
 8004a14:	2300      	movs	r3, #0
 8004a16:	930a      	str	r3, [sp, #40]	; 0x28
 8004a18:	9e07      	ldr	r6, [sp, #28]
 8004a1a:	2e00      	cmp	r6, #0
 8004a1c:	f340 80e2 	ble.w	8004be4 <_dtoa_r+0xb24>
 8004a20:	960e      	str	r6, [sp, #56]	; 0x38
 8004a22:	9609      	str	r6, [sp, #36]	; 0x24
 8004a24:	e7e2      	b.n	80049ec <_dtoa_r+0x92c>
 8004a26:	2301      	movs	r3, #1
 8004a28:	930a      	str	r3, [sp, #40]	; 0x28
 8004a2a:	e7f5      	b.n	8004a18 <_dtoa_r+0x958>
 8004a2c:	9b00      	ldr	r3, [sp, #0]
 8004a2e:	2b00      	cmp	r3, #0
 8004a30:	f47f ae90 	bne.w	8004754 <_dtoa_r+0x694>
 8004a34:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004a38:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004a3c:	2b00      	cmp	r3, #0
 8004a3e:	f040 8192 	bne.w	8004d66 <_dtoa_r+0xca6>
 8004a42:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004a46:	0d1b      	lsrs	r3, r3, #20
 8004a48:	051b      	lsls	r3, r3, #20
 8004a4a:	b12b      	cbz	r3, 8004a58 <_dtoa_r+0x998>
 8004a4c:	9b08      	ldr	r3, [sp, #32]
 8004a4e:	3301      	adds	r3, #1
 8004a50:	9308      	str	r3, [sp, #32]
 8004a52:	f108 0801 	add.w	r8, r8, #1
 8004a56:	2301      	movs	r3, #1
 8004a58:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004a5a:	930c      	str	r3, [sp, #48]	; 0x30
 8004a5c:	2a00      	cmp	r2, #0
 8004a5e:	f43f ae79 	beq.w	8004754 <_dtoa_r+0x694>
 8004a62:	e7a3      	b.n	80049ac <_dtoa_r+0x8ec>
 8004a64:	463a      	mov	r2, r7
 8004a66:	4629      	mov	r1, r5
 8004a68:	4648      	mov	r0, r9
 8004a6a:	f001 fb8f 	bl	800618c <__pow5mult>
 8004a6e:	4652      	mov	r2, sl
 8004a70:	4601      	mov	r1, r0
 8004a72:	4605      	mov	r5, r0
 8004a74:	4648      	mov	r0, r9
 8004a76:	f001 fae3 	bl	8006040 <__multiply>
 8004a7a:	4651      	mov	r1, sl
 8004a7c:	4607      	mov	r7, r0
 8004a7e:	4648      	mov	r0, r9
 8004a80:	f001 fa3a 	bl	8005ef8 <_Bfree>
 8004a84:	46ba      	mov	sl, r7
 8004a86:	2e00      	cmp	r6, #0
 8004a88:	f43f ae57 	beq.w	800473a <_dtoa_r+0x67a>
 8004a8c:	e64f      	b.n	800472e <_dtoa_r+0x66e>
 8004a8e:	4629      	mov	r1, r5
 8004a90:	4622      	mov	r2, r4
 8004a92:	4648      	mov	r0, r9
 8004a94:	f001 fbca 	bl	800622c <__lshift>
 8004a98:	4605      	mov	r5, r0
 8004a9a:	e68d      	b.n	80047b8 <_dtoa_r+0x6f8>
 8004a9c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004a9e:	2a00      	cmp	r2, #0
 8004aa0:	f000 815d 	beq.w	8004d5e <_dtoa_r+0xc9e>
 8004aa4:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004aa8:	9a08      	ldr	r2, [sp, #32]
 8004aaa:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004aac:	4614      	mov	r4, r2
 8004aae:	441a      	add	r2, r3
 8004ab0:	4498      	add	r8, r3
 8004ab2:	9208      	str	r2, [sp, #32]
 8004ab4:	e5f7      	b.n	80046a6 <_dtoa_r+0x5e6>
 8004ab6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004ab8:	2b00      	cmp	r3, #0
 8004aba:	f73f ad3e 	bgt.w	800453a <_dtoa_r+0x47a>
 8004abe:	f040 80bc 	bne.w	8004c3a <_dtoa_r+0xb7a>
 8004ac2:	ec51 0b17 	vmov	r0, r1, d7
 8004ac6:	2200      	movs	r2, #0
 8004ac8:	4bb2      	ldr	r3, [pc, #712]	; (8004d94 <_dtoa_r+0xcd4>)
 8004aca:	f7fc f835 	bl	8000b38 <__aeabi_dmul>
 8004ace:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004ad2:	f7fc fab7 	bl	8001044 <__aeabi_dcmpge>
 8004ad6:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004ad8:	4635      	mov	r5, r6
 8004ada:	2800      	cmp	r0, #0
 8004adc:	d176      	bne.n	8004bcc <_dtoa_r+0xb0c>
 8004ade:	9a06      	ldr	r2, [sp, #24]
 8004ae0:	2331      	movs	r3, #49	; 0x31
 8004ae2:	3201      	adds	r2, #1
 8004ae4:	9206      	str	r2, [sp, #24]
 8004ae6:	f88b 3000 	strb.w	r3, [fp]
 8004aea:	f10b 0401 	add.w	r4, fp, #1
 8004aee:	4631      	mov	r1, r6
 8004af0:	4648      	mov	r0, r9
 8004af2:	f001 fa01 	bl	8005ef8 <_Bfree>
 8004af6:	2d00      	cmp	r5, #0
 8004af8:	f47f af34 	bne.w	8004964 <_dtoa_r+0x8a4>
 8004afc:	e736      	b.n	800496c <_dtoa_r+0x8ac>
 8004afe:	f000 8142 	beq.w	8004d86 <_dtoa_r+0xcc6>
 8004b02:	9b06      	ldr	r3, [sp, #24]
 8004b04:	425c      	negs	r4, r3
 8004b06:	4ba4      	ldr	r3, [pc, #656]	; (8004d98 <_dtoa_r+0xcd8>)
 8004b08:	f004 020f 	and.w	r2, r4, #15
 8004b0c:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004b10:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004b14:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004b18:	f7fc f80e 	bl	8000b38 <__aeabi_dmul>
 8004b1c:	1124      	asrs	r4, r4, #4
 8004b1e:	e9cd 0100 	strd	r0, r1, [sp]
 8004b22:	f000 81c6 	beq.w	8004eb2 <_dtoa_r+0xdf2>
 8004b26:	4d9d      	ldr	r5, [pc, #628]	; (8004d9c <_dtoa_r+0xcdc>)
 8004b28:	2300      	movs	r3, #0
 8004b2a:	2602      	movs	r6, #2
 8004b2c:	07e7      	lsls	r7, r4, #31
 8004b2e:	d505      	bpl.n	8004b3c <_dtoa_r+0xa7c>
 8004b30:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004b34:	f7fc f800 	bl	8000b38 <__aeabi_dmul>
 8004b38:	3601      	adds	r6, #1
 8004b3a:	2301      	movs	r3, #1
 8004b3c:	1064      	asrs	r4, r4, #1
 8004b3e:	f105 0508 	add.w	r5, r5, #8
 8004b42:	d1f3      	bne.n	8004b2c <_dtoa_r+0xa6c>
 8004b44:	2b00      	cmp	r3, #0
 8004b46:	f43f ac27 	beq.w	8004398 <_dtoa_r+0x2d8>
 8004b4a:	e9cd 0100 	strd	r0, r1, [sp]
 8004b4e:	e423      	b.n	8004398 <_dtoa_r+0x2d8>
 8004b50:	9b00      	ldr	r3, [sp, #0]
 8004b52:	2b00      	cmp	r3, #0
 8004b54:	f43f af6e 	beq.w	8004a34 <_dtoa_r+0x974>
 8004b58:	e726      	b.n	80049a8 <_dtoa_r+0x8e8>
 8004b5a:	6869      	ldr	r1, [r5, #4]
 8004b5c:	4648      	mov	r0, r9
 8004b5e:	f001 f9a5 	bl	8005eac <_Balloc>
 8004b62:	692b      	ldr	r3, [r5, #16]
 8004b64:	3302      	adds	r3, #2
 8004b66:	009a      	lsls	r2, r3, #2
 8004b68:	4604      	mov	r4, r0
 8004b6a:	f105 010c 	add.w	r1, r5, #12
 8004b6e:	300c      	adds	r0, #12
 8004b70:	f7fb fcc6 	bl	8000500 <memcpy>
 8004b74:	4621      	mov	r1, r4
 8004b76:	2201      	movs	r2, #1
 8004b78:	4648      	mov	r0, r9
 8004b7a:	f001 fb57 	bl	800622c <__lshift>
 8004b7e:	4680      	mov	r8, r0
 8004b80:	e61f      	b.n	80047c2 <_dtoa_r+0x702>
 8004b82:	2400      	movs	r4, #0
 8004b84:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004b88:	4621      	mov	r1, r4
 8004b8a:	4648      	mov	r0, r9
 8004b8c:	f001 f98e 	bl	8005eac <_Balloc>
 8004b90:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004b94:	930e      	str	r3, [sp, #56]	; 0x38
 8004b96:	9309      	str	r3, [sp, #36]	; 0x24
 8004b98:	2301      	movs	r3, #1
 8004b9a:	4683      	mov	fp, r0
 8004b9c:	9407      	str	r4, [sp, #28]
 8004b9e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004ba2:	930a      	str	r3, [sp, #40]	; 0x28
 8004ba4:	e4b6      	b.n	8004514 <_dtoa_r+0x454>
 8004ba6:	f001 f9b1 	bl	8005f0c <__multadd>
 8004baa:	4627      	mov	r7, r4
 8004bac:	4605      	mov	r5, r0
 8004bae:	4680      	mov	r8, r0
 8004bb0:	e614      	b.n	80047dc <_dtoa_r+0x71c>
 8004bb2:	4648      	mov	r0, r9
 8004bb4:	f001 f9a0 	bl	8005ef8 <_Bfree>
 8004bb8:	2301      	movs	r3, #1
 8004bba:	e639      	b.n	8004830 <_dtoa_r+0x770>
 8004bbc:	9b02      	ldr	r3, [sp, #8]
 8004bbe:	2b02      	cmp	r3, #2
 8004bc0:	f77f adf3 	ble.w	80047aa <_dtoa_r+0x6ea>
 8004bc4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004bc6:	2b00      	cmp	r3, #0
 8004bc8:	f000 80cf 	beq.w	8004d6a <_dtoa_r+0xcaa>
 8004bcc:	9b07      	ldr	r3, [sp, #28]
 8004bce:	43db      	mvns	r3, r3
 8004bd0:	9306      	str	r3, [sp, #24]
 8004bd2:	465c      	mov	r4, fp
 8004bd4:	e78b      	b.n	8004aee <_dtoa_r+0xa2e>
 8004bd6:	9a06      	ldr	r2, [sp, #24]
 8004bd8:	2331      	movs	r3, #49	; 0x31
 8004bda:	3201      	adds	r2, #1
 8004bdc:	9206      	str	r2, [sp, #24]
 8004bde:	f88b 3000 	strb.w	r3, [fp]
 8004be2:	e6b3      	b.n	800494c <_dtoa_r+0x88c>
 8004be4:	2401      	movs	r4, #1
 8004be6:	9409      	str	r4, [sp, #36]	; 0x24
 8004be8:	9407      	str	r4, [sp, #28]
 8004bea:	f7ff bb8b 	b.w	8004304 <_dtoa_r+0x244>
 8004bee:	4630      	mov	r0, r6
 8004bf0:	f7fb ff38 	bl	8000a64 <__aeabi_i2d>
 8004bf4:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004bf8:	f7fb ff9e 	bl	8000b38 <__aeabi_dmul>
 8004bfc:	2200      	movs	r2, #0
 8004bfe:	4b68      	ldr	r3, [pc, #416]	; (8004da0 <_dtoa_r+0xce0>)
 8004c00:	f7fb fde4 	bl	80007cc <__adddf3>
 8004c04:	4606      	mov	r6, r0
 8004c06:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004c0a:	2200      	movs	r2, #0
 8004c0c:	4b61      	ldr	r3, [pc, #388]	; (8004d94 <_dtoa_r+0xcd4>)
 8004c0e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004c12:	f7fb fdd9 	bl	80007c8 <__aeabi_dsub>
 8004c16:	4632      	mov	r2, r6
 8004c18:	463b      	mov	r3, r7
 8004c1a:	4604      	mov	r4, r0
 8004c1c:	460d      	mov	r5, r1
 8004c1e:	f7fc fa1b 	bl	8001058 <__aeabi_dcmpgt>
 8004c22:	2800      	cmp	r0, #0
 8004c24:	d14f      	bne.n	8004cc6 <_dtoa_r+0xc06>
 8004c26:	4632      	mov	r2, r6
 8004c28:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004c2c:	4620      	mov	r0, r4
 8004c2e:	4629      	mov	r1, r5
 8004c30:	f7fc f9f4 	bl	800101c <__aeabi_dcmplt>
 8004c34:	2800      	cmp	r0, #0
 8004c36:	f43f ac69 	beq.w	800450c <_dtoa_r+0x44c>
 8004c3a:	2600      	movs	r6, #0
 8004c3c:	4635      	mov	r5, r6
 8004c3e:	e7c5      	b.n	8004bcc <_dtoa_r+0xb0c>
 8004c40:	2301      	movs	r3, #1
 8004c42:	930a      	str	r3, [sp, #40]	; 0x28
 8004c44:	e6c8      	b.n	80049d8 <_dtoa_r+0x918>
 8004c46:	4651      	mov	r1, sl
 8004c48:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004c4a:	4648      	mov	r0, r9
 8004c4c:	f001 fa9e 	bl	800618c <__pow5mult>
 8004c50:	4682      	mov	sl, r0
 8004c52:	e572      	b.n	800473a <_dtoa_r+0x67a>
 8004c54:	f8dd a000 	ldr.w	sl, [sp]
 8004c58:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004c5c:	e686      	b.n	800496c <_dtoa_r+0x8ac>
 8004c5e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004c60:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004c62:	1afb      	subs	r3, r7, r3
 8004c64:	441a      	add	r2, r3
 8004c66:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004c6a:	2700      	movs	r7, #0
 8004c6c:	e512      	b.n	8004694 <_dtoa_r+0x5d4>
 8004c6e:	2b00      	cmp	r3, #0
 8004c70:	9402      	str	r4, [sp, #8]
 8004c72:	465e      	mov	r6, fp
 8004c74:	f107 0401 	add.w	r4, r7, #1
 8004c78:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004c7c:	f300 80ba 	bgt.w	8004df4 <_dtoa_r+0xd34>
 8004c80:	9b00      	ldr	r3, [sp, #0]
 8004c82:	9502      	str	r5, [sp, #8]
 8004c84:	703b      	strb	r3, [r7, #0]
 8004c86:	4645      	mov	r5, r8
 8004c88:	e660      	b.n	800494c <_dtoa_r+0x88c>
 8004c8a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004c8e:	2602      	movs	r6, #2
 8004c90:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004c94:	f7ff bb67 	b.w	8004366 <_dtoa_r+0x2a6>
 8004c98:	9b00      	ldr	r3, [sp, #0]
 8004c9a:	2b39      	cmp	r3, #57	; 0x39
 8004c9c:	465e      	mov	r6, fp
 8004c9e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004ca2:	f000 80b9 	beq.w	8004e18 <_dtoa_r+0xd58>
 8004ca6:	9b00      	ldr	r3, [sp, #0]
 8004ca8:	9502      	str	r5, [sp, #8]
 8004caa:	3301      	adds	r3, #1
 8004cac:	703b      	strb	r3, [r7, #0]
 8004cae:	4645      	mov	r5, r8
 8004cb0:	e64c      	b.n	800494c <_dtoa_r+0x88c>
 8004cb2:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004cb6:	1a9c      	subs	r4, r3, r2
 8004cb8:	e4f5      	b.n	80046a6 <_dtoa_r+0x5e6>
 8004cba:	465e      	mov	r6, fp
 8004cbc:	9502      	str	r5, [sp, #8]
 8004cbe:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004cc2:	4645      	mov	r5, r8
 8004cc4:	e61a      	b.n	80048fc <_dtoa_r+0x83c>
 8004cc6:	2600      	movs	r6, #0
 8004cc8:	4635      	mov	r5, r6
 8004cca:	e708      	b.n	8004ade <_dtoa_r+0xa1e>
 8004ccc:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004cd0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004cd4:	f7fb ff30 	bl	8000b38 <__aeabi_dmul>
 8004cd8:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004cda:	f88b 5000 	strb.w	r5, [fp]
 8004cde:	2b01      	cmp	r3, #1
 8004ce0:	e9cd 0100 	strd	r0, r1, [sp]
 8004ce4:	d020      	beq.n	8004d28 <_dtoa_r+0xc68>
 8004ce6:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004ce8:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004cec:	445b      	add	r3, fp
 8004cee:	4698      	mov	r8, r3
 8004cf0:	2200      	movs	r2, #0
 8004cf2:	4b2c      	ldr	r3, [pc, #176]	; (8004da4 <_dtoa_r+0xce4>)
 8004cf4:	4630      	mov	r0, r6
 8004cf6:	4639      	mov	r1, r7
 8004cf8:	f7fb ff1e 	bl	8000b38 <__aeabi_dmul>
 8004cfc:	460f      	mov	r7, r1
 8004cfe:	4606      	mov	r6, r0
 8004d00:	f7fc f9ca 	bl	8001098 <__aeabi_d2iz>
 8004d04:	4605      	mov	r5, r0
 8004d06:	f7fb fead 	bl	8000a64 <__aeabi_i2d>
 8004d0a:	3530      	adds	r5, #48	; 0x30
 8004d0c:	4602      	mov	r2, r0
 8004d0e:	460b      	mov	r3, r1
 8004d10:	4630      	mov	r0, r6
 8004d12:	4639      	mov	r1, r7
 8004d14:	f7fb fd58 	bl	80007c8 <__aeabi_dsub>
 8004d18:	f804 5b01 	strb.w	r5, [r4], #1
 8004d1c:	4544      	cmp	r4, r8
 8004d1e:	4606      	mov	r6, r0
 8004d20:	460f      	mov	r7, r1
 8004d22:	d1e5      	bne.n	8004cf0 <_dtoa_r+0xc30>
 8004d24:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004d28:	4b1f      	ldr	r3, [pc, #124]	; (8004da8 <_dtoa_r+0xce8>)
 8004d2a:	2200      	movs	r2, #0
 8004d2c:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d30:	f7fb fd4c 	bl	80007cc <__adddf3>
 8004d34:	4632      	mov	r2, r6
 8004d36:	463b      	mov	r3, r7
 8004d38:	f7fc f970 	bl	800101c <__aeabi_dcmplt>
 8004d3c:	2800      	cmp	r0, #0
 8004d3e:	d070      	beq.n	8004e22 <_dtoa_r+0xd62>
 8004d40:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004d42:	9306      	str	r3, [sp, #24]
 8004d44:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004d48:	e48f      	b.n	800466a <_dtoa_r+0x5aa>
 8004d4a:	2330      	movs	r3, #48	; 0x30
 8004d4c:	f88b 3000 	strb.w	r3, [fp]
 8004d50:	9b06      	ldr	r3, [sp, #24]
 8004d52:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004d56:	3301      	adds	r3, #1
 8004d58:	9306      	str	r3, [sp, #24]
 8004d5a:	465b      	mov	r3, fp
 8004d5c:	e489      	b.n	8004672 <_dtoa_r+0x5b2>
 8004d5e:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004d60:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004d64:	e6a0      	b.n	8004aa8 <_dtoa_r+0x9e8>
 8004d66:	2300      	movs	r3, #0
 8004d68:	e676      	b.n	8004a58 <_dtoa_r+0x998>
 8004d6a:	4631      	mov	r1, r6
 8004d6c:	2205      	movs	r2, #5
 8004d6e:	4648      	mov	r0, r9
 8004d70:	f001 f8cc 	bl	8005f0c <__multadd>
 8004d74:	4601      	mov	r1, r0
 8004d76:	4606      	mov	r6, r0
 8004d78:	4650      	mov	r0, sl
 8004d7a:	f001 faad 	bl	80062d8 <__mcmp>
 8004d7e:	2800      	cmp	r0, #0
 8004d80:	f73f aead 	bgt.w	8004ade <_dtoa_r+0xa1e>
 8004d84:	e722      	b.n	8004bcc <_dtoa_r+0xb0c>
 8004d86:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004d8a:	2602      	movs	r6, #2
 8004d8c:	ed8d 7b00 	vstr	d7, [sp]
 8004d90:	f7ff bb02 	b.w	8004398 <_dtoa_r+0x2d8>
 8004d94:	40140000 	.word	0x40140000
 8004d98:	08007150 	.word	0x08007150
 8004d9c:	08007128 	.word	0x08007128
 8004da0:	401c0000 	.word	0x401c0000
 8004da4:	40240000 	.word	0x40240000
 8004da8:	3fe00000 	.word	0x3fe00000
 8004dac:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004dae:	2b00      	cmp	r3, #0
 8004db0:	f43f af1d 	beq.w	8004bee <_dtoa_r+0xb2e>
 8004db4:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004db6:	2c00      	cmp	r4, #0
 8004db8:	f77f aba8 	ble.w	800450c <_dtoa_r+0x44c>
 8004dbc:	2200      	movs	r2, #0
 8004dbe:	4b45      	ldr	r3, [pc, #276]	; (8004ed4 <_dtoa_r+0xe14>)
 8004dc0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004dc4:	f7fb feb8 	bl	8000b38 <__aeabi_dmul>
 8004dc8:	e9cd 0100 	strd	r0, r1, [sp]
 8004dcc:	1c70      	adds	r0, r6, #1
 8004dce:	f7fb fe49 	bl	8000a64 <__aeabi_i2d>
 8004dd2:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004dd6:	f7fb feaf 	bl	8000b38 <__aeabi_dmul>
 8004dda:	4b3f      	ldr	r3, [pc, #252]	; (8004ed8 <_dtoa_r+0xe18>)
 8004ddc:	2200      	movs	r2, #0
 8004dde:	f7fb fcf5 	bl	80007cc <__adddf3>
 8004de2:	9b06      	ldr	r3, [sp, #24]
 8004de4:	9412      	str	r4, [sp, #72]	; 0x48
 8004de6:	3b01      	subs	r3, #1
 8004de8:	4606      	mov	r6, r0
 8004dea:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004dee:	9316      	str	r3, [sp, #88]	; 0x58
 8004df0:	f7ff baf3 	b.w	80043da <_dtoa_r+0x31a>
 8004df4:	4651      	mov	r1, sl
 8004df6:	2201      	movs	r2, #1
 8004df8:	4648      	mov	r0, r9
 8004dfa:	f001 fa17 	bl	800622c <__lshift>
 8004dfe:	4631      	mov	r1, r6
 8004e00:	4682      	mov	sl, r0
 8004e02:	f001 fa69 	bl	80062d8 <__mcmp>
 8004e06:	2800      	cmp	r0, #0
 8004e08:	dd3b      	ble.n	8004e82 <_dtoa_r+0xdc2>
 8004e0a:	9b00      	ldr	r3, [sp, #0]
 8004e0c:	2b39      	cmp	r3, #57	; 0x39
 8004e0e:	d003      	beq.n	8004e18 <_dtoa_r+0xd58>
 8004e10:	9b02      	ldr	r3, [sp, #8]
 8004e12:	3331      	adds	r3, #49	; 0x31
 8004e14:	9300      	str	r3, [sp, #0]
 8004e16:	e733      	b.n	8004c80 <_dtoa_r+0xbc0>
 8004e18:	2239      	movs	r2, #57	; 0x39
 8004e1a:	9502      	str	r5, [sp, #8]
 8004e1c:	703a      	strb	r2, [r7, #0]
 8004e1e:	4645      	mov	r5, r8
 8004e20:	e58e      	b.n	8004940 <_dtoa_r+0x880>
 8004e22:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e26:	2000      	movs	r0, #0
 8004e28:	492c      	ldr	r1, [pc, #176]	; (8004edc <_dtoa_r+0xe1c>)
 8004e2a:	f7fb fccd 	bl	80007c8 <__aeabi_dsub>
 8004e2e:	4632      	mov	r2, r6
 8004e30:	463b      	mov	r3, r7
 8004e32:	f7fc f911 	bl	8001058 <__aeabi_dcmpgt>
 8004e36:	b910      	cbnz	r0, 8004e3e <_dtoa_r+0xd7e>
 8004e38:	f7ff bb68 	b.w	800450c <_dtoa_r+0x44c>
 8004e3c:	4614      	mov	r4, r2
 8004e3e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004e42:	2b30      	cmp	r3, #48	; 0x30
 8004e44:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004e48:	d0f8      	beq.n	8004e3c <_dtoa_r+0xd7c>
 8004e4a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004e4c:	9306      	str	r3, [sp, #24]
 8004e4e:	e58d      	b.n	800496c <_dtoa_r+0x8ac>
 8004e50:	46d9      	mov	r9, fp
 8004e52:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004e56:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004e5a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004e5c:	9306      	str	r3, [sp, #24]
 8004e5e:	e404      	b.n	800466a <_dtoa_r+0x5aa>
 8004e60:	9b00      	ldr	r3, [sp, #0]
 8004e62:	2b39      	cmp	r3, #57	; 0x39
 8004e64:	4621      	mov	r1, r4
 8004e66:	4632      	mov	r2, r6
 8004e68:	f107 0401 	add.w	r4, r7, #1
 8004e6c:	465e      	mov	r6, fp
 8004e6e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004e72:	d0d1      	beq.n	8004e18 <_dtoa_r+0xd58>
 8004e74:	2a00      	cmp	r2, #0
 8004e76:	f77f af03 	ble.w	8004c80 <_dtoa_r+0xbc0>
 8004e7a:	460b      	mov	r3, r1
 8004e7c:	3331      	adds	r3, #49	; 0x31
 8004e7e:	9300      	str	r3, [sp, #0]
 8004e80:	e6fe      	b.n	8004c80 <_dtoa_r+0xbc0>
 8004e82:	f47f aefd 	bne.w	8004c80 <_dtoa_r+0xbc0>
 8004e86:	9b00      	ldr	r3, [sp, #0]
 8004e88:	07da      	lsls	r2, r3, #31
 8004e8a:	f57f aef9 	bpl.w	8004c80 <_dtoa_r+0xbc0>
 8004e8e:	e7bc      	b.n	8004e0a <_dtoa_r+0xd4a>
 8004e90:	4629      	mov	r1, r5
 8004e92:	2300      	movs	r3, #0
 8004e94:	220a      	movs	r2, #10
 8004e96:	4648      	mov	r0, r9
 8004e98:	f001 f838 	bl	8005f0c <__multadd>
 8004e9c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004e9e:	2b00      	cmp	r3, #0
 8004ea0:	4605      	mov	r5, r0
 8004ea2:	dd09      	ble.n	8004eb8 <_dtoa_r+0xdf8>
 8004ea4:	9309      	str	r3, [sp, #36]	; 0x24
 8004ea6:	e484      	b.n	80047b2 <_dtoa_r+0x6f2>
 8004ea8:	9b02      	ldr	r3, [sp, #8]
 8004eaa:	2b02      	cmp	r3, #2
 8004eac:	dc0e      	bgt.n	8004ecc <_dtoa_r+0xe0c>
 8004eae:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004eb0:	e507      	b.n	80048c2 <_dtoa_r+0x802>
 8004eb2:	2602      	movs	r6, #2
 8004eb4:	f7ff ba70 	b.w	8004398 <_dtoa_r+0x2d8>
 8004eb8:	9b02      	ldr	r3, [sp, #8]
 8004eba:	2b02      	cmp	r3, #2
 8004ebc:	dc06      	bgt.n	8004ecc <_dtoa_r+0xe0c>
 8004ebe:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004ec0:	e7f0      	b.n	8004ea4 <_dtoa_r+0xde4>
 8004ec2:	f43f ac59 	beq.w	8004778 <_dtoa_r+0x6b8>
 8004ec6:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004eca:	e450      	b.n	800476e <_dtoa_r+0x6ae>
 8004ecc:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004ece:	9309      	str	r3, [sp, #36]	; 0x24
 8004ed0:	e678      	b.n	8004bc4 <_dtoa_r+0xb04>
 8004ed2:	bf00      	nop
 8004ed4:	40240000 	.word	0x40240000
 8004ed8:	401c0000 	.word	0x401c0000
 8004edc:	3fe00000 	.word	0x3fe00000

08004ee0 <__sflush_r>:
 8004ee0:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004ee4:	b29a      	uxth	r2, r3
 8004ee6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004eea:	460c      	mov	r4, r1
 8004eec:	0711      	lsls	r1, r2, #28
 8004eee:	4680      	mov	r8, r0
 8004ef0:	d444      	bmi.n	8004f7c <__sflush_r+0x9c>
 8004ef2:	6862      	ldr	r2, [r4, #4]
 8004ef4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004ef8:	2a00      	cmp	r2, #0
 8004efa:	81a3      	strh	r3, [r4, #12]
 8004efc:	dd59      	ble.n	8004fb2 <__sflush_r+0xd2>
 8004efe:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004f00:	2d00      	cmp	r5, #0
 8004f02:	d053      	beq.n	8004fac <__sflush_r+0xcc>
 8004f04:	2200      	movs	r2, #0
 8004f06:	b29b      	uxth	r3, r3
 8004f08:	f8d8 6000 	ldr.w	r6, [r8]
 8004f0c:	69e1      	ldr	r1, [r4, #28]
 8004f0e:	f8c8 2000 	str.w	r2, [r8]
 8004f12:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8004f16:	f040 8083 	bne.w	8005020 <__sflush_r+0x140>
 8004f1a:	2301      	movs	r3, #1
 8004f1c:	4640      	mov	r0, r8
 8004f1e:	47a8      	blx	r5
 8004f20:	1c42      	adds	r2, r0, #1
 8004f22:	d04a      	beq.n	8004fba <__sflush_r+0xda>
 8004f24:	89a3      	ldrh	r3, [r4, #12]
 8004f26:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004f28:	69e1      	ldr	r1, [r4, #28]
 8004f2a:	075b      	lsls	r3, r3, #29
 8004f2c:	d505      	bpl.n	8004f3a <__sflush_r+0x5a>
 8004f2e:	6862      	ldr	r2, [r4, #4]
 8004f30:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8004f32:	1a80      	subs	r0, r0, r2
 8004f34:	b10b      	cbz	r3, 8004f3a <__sflush_r+0x5a>
 8004f36:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8004f38:	1ac0      	subs	r0, r0, r3
 8004f3a:	4602      	mov	r2, r0
 8004f3c:	2300      	movs	r3, #0
 8004f3e:	4640      	mov	r0, r8
 8004f40:	47a8      	blx	r5
 8004f42:	1c47      	adds	r7, r0, #1
 8004f44:	d045      	beq.n	8004fd2 <__sflush_r+0xf2>
 8004f46:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004f4a:	6922      	ldr	r2, [r4, #16]
 8004f4c:	6022      	str	r2, [r4, #0]
 8004f4e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8004f52:	2200      	movs	r2, #0
 8004f54:	81a3      	strh	r3, [r4, #12]
 8004f56:	04db      	lsls	r3, r3, #19
 8004f58:	6062      	str	r2, [r4, #4]
 8004f5a:	d500      	bpl.n	8004f5e <__sflush_r+0x7e>
 8004f5c:	6520      	str	r0, [r4, #80]	; 0x50
 8004f5e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004f60:	f8c8 6000 	str.w	r6, [r8]
 8004f64:	b311      	cbz	r1, 8004fac <__sflush_r+0xcc>
 8004f66:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004f6a:	4299      	cmp	r1, r3
 8004f6c:	d002      	beq.n	8004f74 <__sflush_r+0x94>
 8004f6e:	4640      	mov	r0, r8
 8004f70:	f000 f95e 	bl	8005230 <_free_r>
 8004f74:	2000      	movs	r0, #0
 8004f76:	6320      	str	r0, [r4, #48]	; 0x30
 8004f78:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004f7c:	6926      	ldr	r6, [r4, #16]
 8004f7e:	b1ae      	cbz	r6, 8004fac <__sflush_r+0xcc>
 8004f80:	6825      	ldr	r5, [r4, #0]
 8004f82:	6026      	str	r6, [r4, #0]
 8004f84:	0792      	lsls	r2, r2, #30
 8004f86:	bf0c      	ite	eq
 8004f88:	6963      	ldreq	r3, [r4, #20]
 8004f8a:	2300      	movne	r3, #0
 8004f8c:	1bad      	subs	r5, r5, r6
 8004f8e:	60a3      	str	r3, [r4, #8]
 8004f90:	e00a      	b.n	8004fa8 <__sflush_r+0xc8>
 8004f92:	462b      	mov	r3, r5
 8004f94:	4632      	mov	r2, r6
 8004f96:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8004f98:	69e1      	ldr	r1, [r4, #28]
 8004f9a:	4640      	mov	r0, r8
 8004f9c:	47b8      	blx	r7
 8004f9e:	2800      	cmp	r0, #0
 8004fa0:	eba5 0500 	sub.w	r5, r5, r0
 8004fa4:	4406      	add	r6, r0
 8004fa6:	dd2b      	ble.n	8005000 <__sflush_r+0x120>
 8004fa8:	2d00      	cmp	r5, #0
 8004faa:	dcf2      	bgt.n	8004f92 <__sflush_r+0xb2>
 8004fac:	2000      	movs	r0, #0
 8004fae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004fb2:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8004fb4:	2a00      	cmp	r2, #0
 8004fb6:	dca2      	bgt.n	8004efe <__sflush_r+0x1e>
 8004fb8:	e7f8      	b.n	8004fac <__sflush_r+0xcc>
 8004fba:	f8d8 3000 	ldr.w	r3, [r8]
 8004fbe:	2b00      	cmp	r3, #0
 8004fc0:	d0b0      	beq.n	8004f24 <__sflush_r+0x44>
 8004fc2:	2b1d      	cmp	r3, #29
 8004fc4:	d001      	beq.n	8004fca <__sflush_r+0xea>
 8004fc6:	2b16      	cmp	r3, #22
 8004fc8:	d12c      	bne.n	8005024 <__sflush_r+0x144>
 8004fca:	f8c8 6000 	str.w	r6, [r8]
 8004fce:	2000      	movs	r0, #0
 8004fd0:	e7ed      	b.n	8004fae <__sflush_r+0xce>
 8004fd2:	f8d8 1000 	ldr.w	r1, [r8]
 8004fd6:	291d      	cmp	r1, #29
 8004fd8:	d81a      	bhi.n	8005010 <__sflush_r+0x130>
 8004fda:	4b15      	ldr	r3, [pc, #84]	; (8005030 <__sflush_r+0x150>)
 8004fdc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004fe0:	40cb      	lsrs	r3, r1
 8004fe2:	43db      	mvns	r3, r3
 8004fe4:	f013 0301 	ands.w	r3, r3, #1
 8004fe8:	d114      	bne.n	8005014 <__sflush_r+0x134>
 8004fea:	6925      	ldr	r5, [r4, #16]
 8004fec:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8004ff0:	e9c4 5300 	strd	r5, r3, [r4]
 8004ff4:	04d5      	lsls	r5, r2, #19
 8004ff6:	81a2      	strh	r2, [r4, #12]
 8004ff8:	d5b1      	bpl.n	8004f5e <__sflush_r+0x7e>
 8004ffa:	2900      	cmp	r1, #0
 8004ffc:	d1af      	bne.n	8004f5e <__sflush_r+0x7e>
 8004ffe:	e7ad      	b.n	8004f5c <__sflush_r+0x7c>
 8005000:	89a3      	ldrh	r3, [r4, #12]
 8005002:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005006:	81a3      	strh	r3, [r4, #12]
 8005008:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800500c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005010:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005014:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005018:	81a2      	strh	r2, [r4, #12]
 800501a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800501e:	e7c6      	b.n	8004fae <__sflush_r+0xce>
 8005020:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8005022:	e782      	b.n	8004f2a <__sflush_r+0x4a>
 8005024:	89a3      	ldrh	r3, [r4, #12]
 8005026:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800502a:	81a3      	strh	r3, [r4, #12]
 800502c:	e7bf      	b.n	8004fae <__sflush_r+0xce>
 800502e:	bf00      	nop
 8005030:	20400001 	.word	0x20400001

08005034 <_fflush_r>:
 8005034:	b538      	push	{r3, r4, r5, lr}
 8005036:	460d      	mov	r5, r1
 8005038:	4604      	mov	r4, r0
 800503a:	b108      	cbz	r0, 8005040 <_fflush_r+0xc>
 800503c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800503e:	b1a3      	cbz	r3, 800506a <_fflush_r+0x36>
 8005040:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005044:	b1b8      	cbz	r0, 8005076 <_fflush_r+0x42>
 8005046:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005048:	07db      	lsls	r3, r3, #31
 800504a:	d401      	bmi.n	8005050 <_fflush_r+0x1c>
 800504c:	0581      	lsls	r1, r0, #22
 800504e:	d51a      	bpl.n	8005086 <_fflush_r+0x52>
 8005050:	4620      	mov	r0, r4
 8005052:	4629      	mov	r1, r5
 8005054:	f7ff ff44 	bl	8004ee0 <__sflush_r>
 8005058:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 800505a:	07da      	lsls	r2, r3, #31
 800505c:	4604      	mov	r4, r0
 800505e:	d402      	bmi.n	8005066 <_fflush_r+0x32>
 8005060:	89ab      	ldrh	r3, [r5, #12]
 8005062:	059b      	lsls	r3, r3, #22
 8005064:	d50a      	bpl.n	800507c <_fflush_r+0x48>
 8005066:	4620      	mov	r0, r4
 8005068:	bd38      	pop	{r3, r4, r5, pc}
 800506a:	f000 f83f 	bl	80050ec <__sinit>
 800506e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005072:	2800      	cmp	r0, #0
 8005074:	d1e7      	bne.n	8005046 <_fflush_r+0x12>
 8005076:	4604      	mov	r4, r0
 8005078:	4620      	mov	r0, r4
 800507a:	bd38      	pop	{r3, r4, r5, pc}
 800507c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 800507e:	f000 fb87 	bl	8005790 <__retarget_lock_release_recursive>
 8005082:	4620      	mov	r0, r4
 8005084:	bd38      	pop	{r3, r4, r5, pc}
 8005086:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005088:	f000 fb80 	bl	800578c <__retarget_lock_acquire_recursive>
 800508c:	e7e0      	b.n	8005050 <_fflush_r+0x1c>
 800508e:	bf00      	nop

08005090 <std>:
 8005090:	b510      	push	{r4, lr}
 8005092:	2300      	movs	r3, #0
 8005094:	4604      	mov	r4, r0
 8005096:	8181      	strh	r1, [r0, #12]
 8005098:	81c2      	strh	r2, [r0, #14]
 800509a:	e9c0 3300 	strd	r3, r3, [r0]
 800509e:	6083      	str	r3, [r0, #8]
 80050a0:	6643      	str	r3, [r0, #100]	; 0x64
 80050a2:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80050a6:	6183      	str	r3, [r0, #24]
 80050a8:	4619      	mov	r1, r3
 80050aa:	2208      	movs	r2, #8
 80050ac:	305c      	adds	r0, #92	; 0x5c
 80050ae:	f7fd f8c9 	bl	8002244 <memset>
 80050b2:	4807      	ldr	r0, [pc, #28]	; (80050d0 <std+0x40>)
 80050b4:	4907      	ldr	r1, [pc, #28]	; (80050d4 <std+0x44>)
 80050b6:	4a08      	ldr	r2, [pc, #32]	; (80050d8 <std+0x48>)
 80050b8:	4b08      	ldr	r3, [pc, #32]	; (80050dc <std+0x4c>)
 80050ba:	62e3      	str	r3, [r4, #44]	; 0x2c
 80050bc:	e9c4 4007 	strd	r4, r0, [r4, #28]
 80050c0:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 80050c4:	f104 0058 	add.w	r0, r4, #88	; 0x58
 80050c8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80050cc:	f000 bb5a 	b.w	8005784 <__retarget_lock_init_recursive>
 80050d0:	080068a9 	.word	0x080068a9
 80050d4:	080068cd 	.word	0x080068cd
 80050d8:	08006909 	.word	0x08006909
 80050dc:	08006929 	.word	0x08006929

080050e0 <_cleanup_r>:
 80050e0:	4901      	ldr	r1, [pc, #4]	; (80050e8 <_cleanup_r+0x8>)
 80050e2:	f000 bb17 	b.w	8005714 <_fwalk_reent>
 80050e6:	bf00      	nop
 80050e8:	08006b99 	.word	0x08006b99

080050ec <__sinit>:
 80050ec:	b510      	push	{r4, lr}
 80050ee:	4604      	mov	r4, r0
 80050f0:	4812      	ldr	r0, [pc, #72]	; (800513c <__sinit+0x50>)
 80050f2:	f000 fb4b 	bl	800578c <__retarget_lock_acquire_recursive>
 80050f6:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80050f8:	b9d2      	cbnz	r2, 8005130 <__sinit+0x44>
 80050fa:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80050fe:	4810      	ldr	r0, [pc, #64]	; (8005140 <__sinit+0x54>)
 8005100:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8005104:	2103      	movs	r1, #3
 8005106:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 800510a:	63e0      	str	r0, [r4, #60]	; 0x3c
 800510c:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005110:	6860      	ldr	r0, [r4, #4]
 8005112:	2104      	movs	r1, #4
 8005114:	f7ff ffbc 	bl	8005090 <std>
 8005118:	2201      	movs	r2, #1
 800511a:	2109      	movs	r1, #9
 800511c:	68a0      	ldr	r0, [r4, #8]
 800511e:	f7ff ffb7 	bl	8005090 <std>
 8005122:	2202      	movs	r2, #2
 8005124:	2112      	movs	r1, #18
 8005126:	68e0      	ldr	r0, [r4, #12]
 8005128:	f7ff ffb2 	bl	8005090 <std>
 800512c:	2301      	movs	r3, #1
 800512e:	63a3      	str	r3, [r4, #56]	; 0x38
 8005130:	4802      	ldr	r0, [pc, #8]	; (800513c <__sinit+0x50>)
 8005132:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005136:	f000 bb2b 	b.w	8005790 <__retarget_lock_release_recursive>
 800513a:	bf00      	nop
 800513c:	20000c84 	.word	0x20000c84
 8005140:	080050e1 	.word	0x080050e1

08005144 <__sfp_lock_acquire>:
 8005144:	4801      	ldr	r0, [pc, #4]	; (800514c <__sfp_lock_acquire+0x8>)
 8005146:	f000 bb21 	b.w	800578c <__retarget_lock_acquire_recursive>
 800514a:	bf00      	nop
 800514c:	20000c98 	.word	0x20000c98

08005150 <__sfp_lock_release>:
 8005150:	4801      	ldr	r0, [pc, #4]	; (8005158 <__sfp_lock_release+0x8>)
 8005152:	f000 bb1d 	b.w	8005790 <__retarget_lock_release_recursive>
 8005156:	bf00      	nop
 8005158:	20000c98 	.word	0x20000c98

0800515c <__libc_fini_array>:
 800515c:	b538      	push	{r3, r4, r5, lr}
 800515e:	4c0a      	ldr	r4, [pc, #40]	; (8005188 <__libc_fini_array+0x2c>)
 8005160:	4d0a      	ldr	r5, [pc, #40]	; (800518c <__libc_fini_array+0x30>)
 8005162:	1b64      	subs	r4, r4, r5
 8005164:	10a4      	asrs	r4, r4, #2
 8005166:	d00a      	beq.n	800517e <__libc_fini_array+0x22>
 8005168:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800516c:	3b01      	subs	r3, #1
 800516e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005172:	3c01      	subs	r4, #1
 8005174:	f855 3904 	ldr.w	r3, [r5], #-4
 8005178:	4798      	blx	r3
 800517a:	2c00      	cmp	r4, #0
 800517c:	d1f9      	bne.n	8005172 <__libc_fini_array+0x16>
 800517e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005182:	f001 befd 	b.w	8006f80 <_fini>
 8005186:	bf00      	nop
 8005188:	0800734c 	.word	0x0800734c
 800518c:	08007348 	.word	0x08007348

08005190 <_malloc_trim_r>:
 8005190:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005192:	4f24      	ldr	r7, [pc, #144]	; (8005224 <_malloc_trim_r+0x94>)
 8005194:	460c      	mov	r4, r1
 8005196:	4606      	mov	r6, r0
 8005198:	f000 fe7c 	bl	8005e94 <__malloc_lock>
 800519c:	68bb      	ldr	r3, [r7, #8]
 800519e:	685d      	ldr	r5, [r3, #4]
 80051a0:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80051a4:	310f      	adds	r1, #15
 80051a6:	f025 0503 	bic.w	r5, r5, #3
 80051aa:	4429      	add	r1, r5
 80051ac:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 80051b0:	f021 010f 	bic.w	r1, r1, #15
 80051b4:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 80051b8:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 80051bc:	db07      	blt.n	80051ce <_malloc_trim_r+0x3e>
 80051be:	2100      	movs	r1, #0
 80051c0:	4630      	mov	r0, r6
 80051c2:	f001 fb5f 	bl	8006884 <_sbrk_r>
 80051c6:	68bb      	ldr	r3, [r7, #8]
 80051c8:	442b      	add	r3, r5
 80051ca:	4298      	cmp	r0, r3
 80051cc:	d004      	beq.n	80051d8 <_malloc_trim_r+0x48>
 80051ce:	4630      	mov	r0, r6
 80051d0:	f000 fe66 	bl	8005ea0 <__malloc_unlock>
 80051d4:	2000      	movs	r0, #0
 80051d6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80051d8:	4261      	negs	r1, r4
 80051da:	4630      	mov	r0, r6
 80051dc:	f001 fb52 	bl	8006884 <_sbrk_r>
 80051e0:	3001      	adds	r0, #1
 80051e2:	d00d      	beq.n	8005200 <_malloc_trim_r+0x70>
 80051e4:	4b10      	ldr	r3, [pc, #64]	; (8005228 <_malloc_trim_r+0x98>)
 80051e6:	68ba      	ldr	r2, [r7, #8]
 80051e8:	6819      	ldr	r1, [r3, #0]
 80051ea:	1b2d      	subs	r5, r5, r4
 80051ec:	f045 0501 	orr.w	r5, r5, #1
 80051f0:	4630      	mov	r0, r6
 80051f2:	1b09      	subs	r1, r1, r4
 80051f4:	6055      	str	r5, [r2, #4]
 80051f6:	6019      	str	r1, [r3, #0]
 80051f8:	f000 fe52 	bl	8005ea0 <__malloc_unlock>
 80051fc:	2001      	movs	r0, #1
 80051fe:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005200:	2100      	movs	r1, #0
 8005202:	4630      	mov	r0, r6
 8005204:	f001 fb3e 	bl	8006884 <_sbrk_r>
 8005208:	68ba      	ldr	r2, [r7, #8]
 800520a:	1a83      	subs	r3, r0, r2
 800520c:	2b0f      	cmp	r3, #15
 800520e:	ddde      	ble.n	80051ce <_malloc_trim_r+0x3e>
 8005210:	4c06      	ldr	r4, [pc, #24]	; (800522c <_malloc_trim_r+0x9c>)
 8005212:	4905      	ldr	r1, [pc, #20]	; (8005228 <_malloc_trim_r+0x98>)
 8005214:	6824      	ldr	r4, [r4, #0]
 8005216:	f043 0301 	orr.w	r3, r3, #1
 800521a:	1b00      	subs	r0, r0, r4
 800521c:	6053      	str	r3, [r2, #4]
 800521e:	6008      	str	r0, [r1, #0]
 8005220:	e7d5      	b.n	80051ce <_malloc_trim_r+0x3e>
 8005222:	bf00      	nop
 8005224:	200005dc 	.word	0x200005dc
 8005228:	20000bfc 	.word	0x20000bfc
 800522c:	200009e4 	.word	0x200009e4

08005230 <_free_r>:
 8005230:	2900      	cmp	r1, #0
 8005232:	d053      	beq.n	80052dc <_free_r+0xac>
 8005234:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005236:	460c      	mov	r4, r1
 8005238:	4606      	mov	r6, r0
 800523a:	f000 fe2b 	bl	8005e94 <__malloc_lock>
 800523e:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8005242:	4f71      	ldr	r7, [pc, #452]	; (8005408 <_free_r+0x1d8>)
 8005244:	f02c 0101 	bic.w	r1, ip, #1
 8005248:	f1a4 0508 	sub.w	r5, r4, #8
 800524c:	186b      	adds	r3, r5, r1
 800524e:	68b8      	ldr	r0, [r7, #8]
 8005250:	685a      	ldr	r2, [r3, #4]
 8005252:	4298      	cmp	r0, r3
 8005254:	f022 0203 	bic.w	r2, r2, #3
 8005258:	d053      	beq.n	8005302 <_free_r+0xd2>
 800525a:	f01c 0f01 	tst.w	ip, #1
 800525e:	605a      	str	r2, [r3, #4]
 8005260:	eb03 0002 	add.w	r0, r3, r2
 8005264:	d13b      	bne.n	80052de <_free_r+0xae>
 8005266:	f854 cc08 	ldr.w	ip, [r4, #-8]
 800526a:	6840      	ldr	r0, [r0, #4]
 800526c:	eba5 050c 	sub.w	r5, r5, ip
 8005270:	f107 0e08 	add.w	lr, r7, #8
 8005274:	68ac      	ldr	r4, [r5, #8]
 8005276:	4574      	cmp	r4, lr
 8005278:	4461      	add	r1, ip
 800527a:	f000 0001 	and.w	r0, r0, #1
 800527e:	d075      	beq.n	800536c <_free_r+0x13c>
 8005280:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005284:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005288:	f8cc 4008 	str.w	r4, [ip, #8]
 800528c:	b360      	cbz	r0, 80052e8 <_free_r+0xb8>
 800528e:	f041 0301 	orr.w	r3, r1, #1
 8005292:	606b      	str	r3, [r5, #4]
 8005294:	5069      	str	r1, [r5, r1]
 8005296:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800529a:	d350      	bcc.n	800533e <_free_r+0x10e>
 800529c:	0a4b      	lsrs	r3, r1, #9
 800529e:	2b04      	cmp	r3, #4
 80052a0:	d870      	bhi.n	8005384 <_free_r+0x154>
 80052a2:	098b      	lsrs	r3, r1, #6
 80052a4:	f103 0439 	add.w	r4, r3, #57	; 0x39
 80052a8:	00e4      	lsls	r4, r4, #3
 80052aa:	f103 0238 	add.w	r2, r3, #56	; 0x38
 80052ae:	1938      	adds	r0, r7, r4
 80052b0:	593b      	ldr	r3, [r7, r4]
 80052b2:	3808      	subs	r0, #8
 80052b4:	4298      	cmp	r0, r3
 80052b6:	d078      	beq.n	80053aa <_free_r+0x17a>
 80052b8:	685a      	ldr	r2, [r3, #4]
 80052ba:	f022 0203 	bic.w	r2, r2, #3
 80052be:	428a      	cmp	r2, r1
 80052c0:	d971      	bls.n	80053a6 <_free_r+0x176>
 80052c2:	689b      	ldr	r3, [r3, #8]
 80052c4:	4298      	cmp	r0, r3
 80052c6:	d1f7      	bne.n	80052b8 <_free_r+0x88>
 80052c8:	68c3      	ldr	r3, [r0, #12]
 80052ca:	e9c5 0302 	strd	r0, r3, [r5, #8]
 80052ce:	609d      	str	r5, [r3, #8]
 80052d0:	60c5      	str	r5, [r0, #12]
 80052d2:	4630      	mov	r0, r6
 80052d4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80052d8:	f000 bde2 	b.w	8005ea0 <__malloc_unlock>
 80052dc:	4770      	bx	lr
 80052de:	6840      	ldr	r0, [r0, #4]
 80052e0:	f000 0001 	and.w	r0, r0, #1
 80052e4:	2800      	cmp	r0, #0
 80052e6:	d1d2      	bne.n	800528e <_free_r+0x5e>
 80052e8:	6898      	ldr	r0, [r3, #8]
 80052ea:	4c48      	ldr	r4, [pc, #288]	; (800540c <_free_r+0x1dc>)
 80052ec:	4411      	add	r1, r2
 80052ee:	42a0      	cmp	r0, r4
 80052f0:	f041 0201 	orr.w	r2, r1, #1
 80052f4:	d062      	beq.n	80053bc <_free_r+0x18c>
 80052f6:	68db      	ldr	r3, [r3, #12]
 80052f8:	60c3      	str	r3, [r0, #12]
 80052fa:	6098      	str	r0, [r3, #8]
 80052fc:	606a      	str	r2, [r5, #4]
 80052fe:	5069      	str	r1, [r5, r1]
 8005300:	e7c9      	b.n	8005296 <_free_r+0x66>
 8005302:	f01c 0f01 	tst.w	ip, #1
 8005306:	440a      	add	r2, r1
 8005308:	d107      	bne.n	800531a <_free_r+0xea>
 800530a:	f854 3c08 	ldr.w	r3, [r4, #-8]
 800530e:	1aed      	subs	r5, r5, r3
 8005310:	441a      	add	r2, r3
 8005312:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8005316:	60cb      	str	r3, [r1, #12]
 8005318:	6099      	str	r1, [r3, #8]
 800531a:	4b3d      	ldr	r3, [pc, #244]	; (8005410 <_free_r+0x1e0>)
 800531c:	681b      	ldr	r3, [r3, #0]
 800531e:	f042 0101 	orr.w	r1, r2, #1
 8005322:	4293      	cmp	r3, r2
 8005324:	6069      	str	r1, [r5, #4]
 8005326:	60bd      	str	r5, [r7, #8]
 8005328:	d804      	bhi.n	8005334 <_free_r+0x104>
 800532a:	4b3a      	ldr	r3, [pc, #232]	; (8005414 <_free_r+0x1e4>)
 800532c:	4630      	mov	r0, r6
 800532e:	6819      	ldr	r1, [r3, #0]
 8005330:	f7ff ff2e 	bl	8005190 <_malloc_trim_r>
 8005334:	4630      	mov	r0, r6
 8005336:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800533a:	f000 bdb1 	b.w	8005ea0 <__malloc_unlock>
 800533e:	08c9      	lsrs	r1, r1, #3
 8005340:	6878      	ldr	r0, [r7, #4]
 8005342:	1c4a      	adds	r2, r1, #1
 8005344:	2301      	movs	r3, #1
 8005346:	1089      	asrs	r1, r1, #2
 8005348:	408b      	lsls	r3, r1
 800534a:	4303      	orrs	r3, r0
 800534c:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005350:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005354:	607b      	str	r3, [r7, #4]
 8005356:	3908      	subs	r1, #8
 8005358:	e9c5 0102 	strd	r0, r1, [r5, #8]
 800535c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005360:	60c5      	str	r5, [r0, #12]
 8005362:	4630      	mov	r0, r6
 8005364:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005368:	f000 bd9a 	b.w	8005ea0 <__malloc_unlock>
 800536c:	2800      	cmp	r0, #0
 800536e:	d145      	bne.n	80053fc <_free_r+0x1cc>
 8005370:	440a      	add	r2, r1
 8005372:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005376:	f042 0001 	orr.w	r0, r2, #1
 800537a:	60cb      	str	r3, [r1, #12]
 800537c:	6099      	str	r1, [r3, #8]
 800537e:	6068      	str	r0, [r5, #4]
 8005380:	50aa      	str	r2, [r5, r2]
 8005382:	e7d7      	b.n	8005334 <_free_r+0x104>
 8005384:	2b14      	cmp	r3, #20
 8005386:	d908      	bls.n	800539a <_free_r+0x16a>
 8005388:	2b54      	cmp	r3, #84	; 0x54
 800538a:	d81e      	bhi.n	80053ca <_free_r+0x19a>
 800538c:	0b0b      	lsrs	r3, r1, #12
 800538e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005392:	00e4      	lsls	r4, r4, #3
 8005394:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005398:	e789      	b.n	80052ae <_free_r+0x7e>
 800539a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 800539e:	00e4      	lsls	r4, r4, #3
 80053a0:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80053a4:	e783      	b.n	80052ae <_free_r+0x7e>
 80053a6:	4618      	mov	r0, r3
 80053a8:	e78e      	b.n	80052c8 <_free_r+0x98>
 80053aa:	1093      	asrs	r3, r2, #2
 80053ac:	6879      	ldr	r1, [r7, #4]
 80053ae:	2201      	movs	r2, #1
 80053b0:	fa02 f303 	lsl.w	r3, r2, r3
 80053b4:	430b      	orrs	r3, r1
 80053b6:	607b      	str	r3, [r7, #4]
 80053b8:	4603      	mov	r3, r0
 80053ba:	e786      	b.n	80052ca <_free_r+0x9a>
 80053bc:	e9c7 5504 	strd	r5, r5, [r7, #16]
 80053c0:	e9c5 0002 	strd	r0, r0, [r5, #8]
 80053c4:	606a      	str	r2, [r5, #4]
 80053c6:	5069      	str	r1, [r5, r1]
 80053c8:	e7b4      	b.n	8005334 <_free_r+0x104>
 80053ca:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80053ce:	d806      	bhi.n	80053de <_free_r+0x1ae>
 80053d0:	0bcb      	lsrs	r3, r1, #15
 80053d2:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80053d6:	00e4      	lsls	r4, r4, #3
 80053d8:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80053dc:	e767      	b.n	80052ae <_free_r+0x7e>
 80053de:	f240 5254 	movw	r2, #1364	; 0x554
 80053e2:	4293      	cmp	r3, r2
 80053e4:	d806      	bhi.n	80053f4 <_free_r+0x1c4>
 80053e6:	0c8b      	lsrs	r3, r1, #18
 80053e8:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80053ec:	00e4      	lsls	r4, r4, #3
 80053ee:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80053f2:	e75c      	b.n	80052ae <_free_r+0x7e>
 80053f4:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80053f8:	227e      	movs	r2, #126	; 0x7e
 80053fa:	e758      	b.n	80052ae <_free_r+0x7e>
 80053fc:	f041 0201 	orr.w	r2, r1, #1
 8005400:	606a      	str	r2, [r5, #4]
 8005402:	6019      	str	r1, [r3, #0]
 8005404:	e796      	b.n	8005334 <_free_r+0x104>
 8005406:	bf00      	nop
 8005408:	200005dc 	.word	0x200005dc
 800540c:	200005e4 	.word	0x200005e4
 8005410:	200009e8 	.word	0x200009e8
 8005414:	20000c2c 	.word	0x20000c2c

08005418 <__sfvwrite_r>:
 8005418:	6893      	ldr	r3, [r2, #8]
 800541a:	2b00      	cmp	r3, #0
 800541c:	f000 80e4 	beq.w	80055e8 <__sfvwrite_r+0x1d0>
 8005420:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005424:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005428:	b29b      	uxth	r3, r3
 800542a:	460c      	mov	r4, r1
 800542c:	0719      	lsls	r1, r3, #28
 800542e:	b083      	sub	sp, #12
 8005430:	4682      	mov	sl, r0
 8005432:	4690      	mov	r8, r2
 8005434:	d535      	bpl.n	80054a2 <__sfvwrite_r+0x8a>
 8005436:	6922      	ldr	r2, [r4, #16]
 8005438:	b39a      	cbz	r2, 80054a2 <__sfvwrite_r+0x8a>
 800543a:	f013 0202 	ands.w	r2, r3, #2
 800543e:	f8d8 6000 	ldr.w	r6, [r8]
 8005442:	d03d      	beq.n	80054c0 <__sfvwrite_r+0xa8>
 8005444:	2700      	movs	r7, #0
 8005446:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 800544a:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800544e:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005710 <__sfvwrite_r+0x2f8>
 8005452:	463d      	mov	r5, r7
 8005454:	454d      	cmp	r5, r9
 8005456:	462b      	mov	r3, r5
 8005458:	463a      	mov	r2, r7
 800545a:	bf28      	it	cs
 800545c:	464b      	movcs	r3, r9
 800545e:	4661      	mov	r1, ip
 8005460:	4650      	mov	r0, sl
 8005462:	b1d5      	cbz	r5, 800549a <__sfvwrite_r+0x82>
 8005464:	47d8      	blx	fp
 8005466:	2800      	cmp	r0, #0
 8005468:	f340 80c6 	ble.w	80055f8 <__sfvwrite_r+0x1e0>
 800546c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005470:	1a1b      	subs	r3, r3, r0
 8005472:	4407      	add	r7, r0
 8005474:	1a2d      	subs	r5, r5, r0
 8005476:	f8c8 3008 	str.w	r3, [r8, #8]
 800547a:	2b00      	cmp	r3, #0
 800547c:	f000 80b0 	beq.w	80055e0 <__sfvwrite_r+0x1c8>
 8005480:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005484:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005488:	454d      	cmp	r5, r9
 800548a:	462b      	mov	r3, r5
 800548c:	463a      	mov	r2, r7
 800548e:	bf28      	it	cs
 8005490:	464b      	movcs	r3, r9
 8005492:	4661      	mov	r1, ip
 8005494:	4650      	mov	r0, sl
 8005496:	2d00      	cmp	r5, #0
 8005498:	d1e4      	bne.n	8005464 <__sfvwrite_r+0x4c>
 800549a:	e9d6 7500 	ldrd	r7, r5, [r6]
 800549e:	3608      	adds	r6, #8
 80054a0:	e7d8      	b.n	8005454 <__sfvwrite_r+0x3c>
 80054a2:	4621      	mov	r1, r4
 80054a4:	4650      	mov	r0, sl
 80054a6:	f7fe fd03 	bl	8003eb0 <__swsetup_r>
 80054aa:	2800      	cmp	r0, #0
 80054ac:	f040 812a 	bne.w	8005704 <__sfvwrite_r+0x2ec>
 80054b0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80054b4:	f8d8 6000 	ldr.w	r6, [r8]
 80054b8:	b29b      	uxth	r3, r3
 80054ba:	f013 0202 	ands.w	r2, r3, #2
 80054be:	d1c1      	bne.n	8005444 <__sfvwrite_r+0x2c>
 80054c0:	f013 0901 	ands.w	r9, r3, #1
 80054c4:	d15d      	bne.n	8005582 <__sfvwrite_r+0x16a>
 80054c6:	68a7      	ldr	r7, [r4, #8]
 80054c8:	6820      	ldr	r0, [r4, #0]
 80054ca:	464d      	mov	r5, r9
 80054cc:	2d00      	cmp	r5, #0
 80054ce:	d054      	beq.n	800557a <__sfvwrite_r+0x162>
 80054d0:	059a      	lsls	r2, r3, #22
 80054d2:	f140 809b 	bpl.w	800560c <__sfvwrite_r+0x1f4>
 80054d6:	42af      	cmp	r7, r5
 80054d8:	46bb      	mov	fp, r7
 80054da:	f200 80d8 	bhi.w	800568e <__sfvwrite_r+0x276>
 80054de:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80054e2:	d02f      	beq.n	8005544 <__sfvwrite_r+0x12c>
 80054e4:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80054e8:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80054ec:	eba0 0b01 	sub.w	fp, r0, r1
 80054f0:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80054f4:	1c68      	adds	r0, r5, #1
 80054f6:	107f      	asrs	r7, r7, #1
 80054f8:	4458      	add	r0, fp
 80054fa:	42b8      	cmp	r0, r7
 80054fc:	463a      	mov	r2, r7
 80054fe:	bf84      	itt	hi
 8005500:	4607      	movhi	r7, r0
 8005502:	463a      	movhi	r2, r7
 8005504:	055b      	lsls	r3, r3, #21
 8005506:	f140 80d3 	bpl.w	80056b0 <__sfvwrite_r+0x298>
 800550a:	4611      	mov	r1, r2
 800550c:	4650      	mov	r0, sl
 800550e:	f000 f9b9 	bl	8005884 <_malloc_r>
 8005512:	2800      	cmp	r0, #0
 8005514:	f000 80f0 	beq.w	80056f8 <__sfvwrite_r+0x2e0>
 8005518:	465a      	mov	r2, fp
 800551a:	6921      	ldr	r1, [r4, #16]
 800551c:	9001      	str	r0, [sp, #4]
 800551e:	f7fa ffef 	bl	8000500 <memcpy>
 8005522:	89a2      	ldrh	r2, [r4, #12]
 8005524:	9b01      	ldr	r3, [sp, #4]
 8005526:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 800552a:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800552e:	81a2      	strh	r2, [r4, #12]
 8005530:	eba7 020b 	sub.w	r2, r7, fp
 8005534:	eb03 000b 	add.w	r0, r3, fp
 8005538:	6167      	str	r7, [r4, #20]
 800553a:	6123      	str	r3, [r4, #16]
 800553c:	6020      	str	r0, [r4, #0]
 800553e:	60a2      	str	r2, [r4, #8]
 8005540:	462f      	mov	r7, r5
 8005542:	46ab      	mov	fp, r5
 8005544:	465a      	mov	r2, fp
 8005546:	4649      	mov	r1, r9
 8005548:	f000 fc40 	bl	8005dcc <memmove>
 800554c:	68a2      	ldr	r2, [r4, #8]
 800554e:	6823      	ldr	r3, [r4, #0]
 8005550:	1bd2      	subs	r2, r2, r7
 8005552:	445b      	add	r3, fp
 8005554:	462f      	mov	r7, r5
 8005556:	60a2      	str	r2, [r4, #8]
 8005558:	6023      	str	r3, [r4, #0]
 800555a:	2500      	movs	r5, #0
 800555c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005560:	1bdb      	subs	r3, r3, r7
 8005562:	44b9      	add	r9, r7
 8005564:	f8c8 3008 	str.w	r3, [r8, #8]
 8005568:	2b00      	cmp	r3, #0
 800556a:	d039      	beq.n	80055e0 <__sfvwrite_r+0x1c8>
 800556c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005570:	68a7      	ldr	r7, [r4, #8]
 8005572:	6820      	ldr	r0, [r4, #0]
 8005574:	b29b      	uxth	r3, r3
 8005576:	2d00      	cmp	r5, #0
 8005578:	d1aa      	bne.n	80054d0 <__sfvwrite_r+0xb8>
 800557a:	e9d6 9500 	ldrd	r9, r5, [r6]
 800557e:	3608      	adds	r6, #8
 8005580:	e7a4      	b.n	80054cc <__sfvwrite_r+0xb4>
 8005582:	4633      	mov	r3, r6
 8005584:	4691      	mov	r9, r2
 8005586:	4610      	mov	r0, r2
 8005588:	4617      	mov	r7, r2
 800558a:	464e      	mov	r6, r9
 800558c:	469b      	mov	fp, r3
 800558e:	2f00      	cmp	r7, #0
 8005590:	d06b      	beq.n	800566a <__sfvwrite_r+0x252>
 8005592:	2800      	cmp	r0, #0
 8005594:	d071      	beq.n	800567a <__sfvwrite_r+0x262>
 8005596:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 800559a:	6820      	ldr	r0, [r4, #0]
 800559c:	45b9      	cmp	r9, r7
 800559e:	464b      	mov	r3, r9
 80055a0:	bf28      	it	cs
 80055a2:	463b      	movcs	r3, r7
 80055a4:	4288      	cmp	r0, r1
 80055a6:	d903      	bls.n	80055b0 <__sfvwrite_r+0x198>
 80055a8:	68a5      	ldr	r5, [r4, #8]
 80055aa:	4415      	add	r5, r2
 80055ac:	42ab      	cmp	r3, r5
 80055ae:	dc71      	bgt.n	8005694 <__sfvwrite_r+0x27c>
 80055b0:	429a      	cmp	r2, r3
 80055b2:	f300 8093 	bgt.w	80056dc <__sfvwrite_r+0x2c4>
 80055b6:	4613      	mov	r3, r2
 80055b8:	6a65      	ldr	r5, [r4, #36]	; 0x24
 80055ba:	69e1      	ldr	r1, [r4, #28]
 80055bc:	4632      	mov	r2, r6
 80055be:	4650      	mov	r0, sl
 80055c0:	47a8      	blx	r5
 80055c2:	1e05      	subs	r5, r0, #0
 80055c4:	dd18      	ble.n	80055f8 <__sfvwrite_r+0x1e0>
 80055c6:	ebb9 0905 	subs.w	r9, r9, r5
 80055ca:	d00f      	beq.n	80055ec <__sfvwrite_r+0x1d4>
 80055cc:	2001      	movs	r0, #1
 80055ce:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80055d2:	1b5b      	subs	r3, r3, r5
 80055d4:	442e      	add	r6, r5
 80055d6:	1b7f      	subs	r7, r7, r5
 80055d8:	f8c8 3008 	str.w	r3, [r8, #8]
 80055dc:	2b00      	cmp	r3, #0
 80055de:	d1d6      	bne.n	800558e <__sfvwrite_r+0x176>
 80055e0:	2000      	movs	r0, #0
 80055e2:	b003      	add	sp, #12
 80055e4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80055e8:	2000      	movs	r0, #0
 80055ea:	4770      	bx	lr
 80055ec:	4621      	mov	r1, r4
 80055ee:	4650      	mov	r0, sl
 80055f0:	f7ff fd20 	bl	8005034 <_fflush_r>
 80055f4:	2800      	cmp	r0, #0
 80055f6:	d0ea      	beq.n	80055ce <__sfvwrite_r+0x1b6>
 80055f8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80055fc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005600:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005604:	81a3      	strh	r3, [r4, #12]
 8005606:	b003      	add	sp, #12
 8005608:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800560c:	6923      	ldr	r3, [r4, #16]
 800560e:	4283      	cmp	r3, r0
 8005610:	d315      	bcc.n	800563e <__sfvwrite_r+0x226>
 8005612:	6961      	ldr	r1, [r4, #20]
 8005614:	42a9      	cmp	r1, r5
 8005616:	d812      	bhi.n	800563e <__sfvwrite_r+0x226>
 8005618:	4b3c      	ldr	r3, [pc, #240]	; (800570c <__sfvwrite_r+0x2f4>)
 800561a:	6a67      	ldr	r7, [r4, #36]	; 0x24
 800561c:	429d      	cmp	r5, r3
 800561e:	bf94      	ite	ls
 8005620:	462b      	movls	r3, r5
 8005622:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005626:	464a      	mov	r2, r9
 8005628:	fb93 f3f1 	sdiv	r3, r3, r1
 800562c:	4650      	mov	r0, sl
 800562e:	fb01 f303 	mul.w	r3, r1, r3
 8005632:	69e1      	ldr	r1, [r4, #28]
 8005634:	47b8      	blx	r7
 8005636:	1e07      	subs	r7, r0, #0
 8005638:	ddde      	ble.n	80055f8 <__sfvwrite_r+0x1e0>
 800563a:	1bed      	subs	r5, r5, r7
 800563c:	e78e      	b.n	800555c <__sfvwrite_r+0x144>
 800563e:	42af      	cmp	r7, r5
 8005640:	bf28      	it	cs
 8005642:	462f      	movcs	r7, r5
 8005644:	463a      	mov	r2, r7
 8005646:	4649      	mov	r1, r9
 8005648:	f000 fbc0 	bl	8005dcc <memmove>
 800564c:	68a3      	ldr	r3, [r4, #8]
 800564e:	6822      	ldr	r2, [r4, #0]
 8005650:	1bdb      	subs	r3, r3, r7
 8005652:	443a      	add	r2, r7
 8005654:	60a3      	str	r3, [r4, #8]
 8005656:	6022      	str	r2, [r4, #0]
 8005658:	2b00      	cmp	r3, #0
 800565a:	d1ee      	bne.n	800563a <__sfvwrite_r+0x222>
 800565c:	4621      	mov	r1, r4
 800565e:	4650      	mov	r0, sl
 8005660:	f7ff fce8 	bl	8005034 <_fflush_r>
 8005664:	2800      	cmp	r0, #0
 8005666:	d0e8      	beq.n	800563a <__sfvwrite_r+0x222>
 8005668:	e7c6      	b.n	80055f8 <__sfvwrite_r+0x1e0>
 800566a:	f10b 0308 	add.w	r3, fp, #8
 800566e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005672:	469b      	mov	fp, r3
 8005674:	3308      	adds	r3, #8
 8005676:	2f00      	cmp	r7, #0
 8005678:	d0f9      	beq.n	800566e <__sfvwrite_r+0x256>
 800567a:	463a      	mov	r2, r7
 800567c:	210a      	movs	r1, #10
 800567e:	4630      	mov	r0, r6
 8005680:	f7fb f84e 	bl	8000720 <memchr>
 8005684:	b338      	cbz	r0, 80056d6 <__sfvwrite_r+0x2be>
 8005686:	3001      	adds	r0, #1
 8005688:	eba0 0906 	sub.w	r9, r0, r6
 800568c:	e783      	b.n	8005596 <__sfvwrite_r+0x17e>
 800568e:	462f      	mov	r7, r5
 8005690:	46ab      	mov	fp, r5
 8005692:	e757      	b.n	8005544 <__sfvwrite_r+0x12c>
 8005694:	4631      	mov	r1, r6
 8005696:	462a      	mov	r2, r5
 8005698:	f000 fb98 	bl	8005dcc <memmove>
 800569c:	6823      	ldr	r3, [r4, #0]
 800569e:	442b      	add	r3, r5
 80056a0:	6023      	str	r3, [r4, #0]
 80056a2:	4621      	mov	r1, r4
 80056a4:	4650      	mov	r0, sl
 80056a6:	f7ff fcc5 	bl	8005034 <_fflush_r>
 80056aa:	2800      	cmp	r0, #0
 80056ac:	d08b      	beq.n	80055c6 <__sfvwrite_r+0x1ae>
 80056ae:	e7a3      	b.n	80055f8 <__sfvwrite_r+0x1e0>
 80056b0:	4650      	mov	r0, sl
 80056b2:	f000 ff05 	bl	80064c0 <_realloc_r>
 80056b6:	4603      	mov	r3, r0
 80056b8:	2800      	cmp	r0, #0
 80056ba:	f47f af39 	bne.w	8005530 <__sfvwrite_r+0x118>
 80056be:	6921      	ldr	r1, [r4, #16]
 80056c0:	4650      	mov	r0, sl
 80056c2:	f7ff fdb5 	bl	8005230 <_free_r>
 80056c6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80056ca:	220c      	movs	r2, #12
 80056cc:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80056d0:	f8ca 2000 	str.w	r2, [sl]
 80056d4:	e792      	b.n	80055fc <__sfvwrite_r+0x1e4>
 80056d6:	f107 0901 	add.w	r9, r7, #1
 80056da:	e75c      	b.n	8005596 <__sfvwrite_r+0x17e>
 80056dc:	461a      	mov	r2, r3
 80056de:	4631      	mov	r1, r6
 80056e0:	9301      	str	r3, [sp, #4]
 80056e2:	f000 fb73 	bl	8005dcc <memmove>
 80056e6:	9b01      	ldr	r3, [sp, #4]
 80056e8:	68a1      	ldr	r1, [r4, #8]
 80056ea:	6822      	ldr	r2, [r4, #0]
 80056ec:	1ac9      	subs	r1, r1, r3
 80056ee:	441a      	add	r2, r3
 80056f0:	60a1      	str	r1, [r4, #8]
 80056f2:	6022      	str	r2, [r4, #0]
 80056f4:	461d      	mov	r5, r3
 80056f6:	e766      	b.n	80055c6 <__sfvwrite_r+0x1ae>
 80056f8:	230c      	movs	r3, #12
 80056fa:	f8ca 3000 	str.w	r3, [sl]
 80056fe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005702:	e77b      	b.n	80055fc <__sfvwrite_r+0x1e4>
 8005704:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005708:	e76b      	b.n	80055e2 <__sfvwrite_r+0x1ca>
 800570a:	bf00      	nop
 800570c:	7ffffffe 	.word	0x7ffffffe
 8005710:	7ffffc00 	.word	0x7ffffc00

08005714 <_fwalk_reent>:
 8005714:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005718:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 800571c:	d01f      	beq.n	800575e <_fwalk_reent+0x4a>
 800571e:	4688      	mov	r8, r1
 8005720:	4606      	mov	r6, r0
 8005722:	f04f 0900 	mov.w	r9, #0
 8005726:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 800572a:	3d01      	subs	r5, #1
 800572c:	d411      	bmi.n	8005752 <_fwalk_reent+0x3e>
 800572e:	89a3      	ldrh	r3, [r4, #12]
 8005730:	2b01      	cmp	r3, #1
 8005732:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005736:	4621      	mov	r1, r4
 8005738:	4630      	mov	r0, r6
 800573a:	d906      	bls.n	800574a <_fwalk_reent+0x36>
 800573c:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005740:	3301      	adds	r3, #1
 8005742:	d002      	beq.n	800574a <_fwalk_reent+0x36>
 8005744:	47c0      	blx	r8
 8005746:	ea49 0900 	orr.w	r9, r9, r0
 800574a:	1c6b      	adds	r3, r5, #1
 800574c:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005750:	d1ed      	bne.n	800572e <_fwalk_reent+0x1a>
 8005752:	683f      	ldr	r7, [r7, #0]
 8005754:	2f00      	cmp	r7, #0
 8005756:	d1e6      	bne.n	8005726 <_fwalk_reent+0x12>
 8005758:	4648      	mov	r0, r9
 800575a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800575e:	46b9      	mov	r9, r7
 8005760:	4648      	mov	r0, r9
 8005762:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005766:	bf00      	nop

08005768 <_localeconv_r>:
 8005768:	4a04      	ldr	r2, [pc, #16]	; (800577c <_localeconv_r+0x14>)
 800576a:	4b05      	ldr	r3, [pc, #20]	; (8005780 <_localeconv_r+0x18>)
 800576c:	6812      	ldr	r2, [r2, #0]
 800576e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005770:	2800      	cmp	r0, #0
 8005772:	bf08      	it	eq
 8005774:	4618      	moveq	r0, r3
 8005776:	30f0      	adds	r0, #240	; 0xf0
 8005778:	4770      	bx	lr
 800577a:	bf00      	nop
 800577c:	200001a8 	.word	0x200001a8
 8005780:	200009ec 	.word	0x200009ec

08005784 <__retarget_lock_init_recursive>:
 8005784:	4770      	bx	lr
 8005786:	bf00      	nop

08005788 <__retarget_lock_close_recursive>:
 8005788:	4770      	bx	lr
 800578a:	bf00      	nop

0800578c <__retarget_lock_acquire_recursive>:
 800578c:	4770      	bx	lr
 800578e:	bf00      	nop

08005790 <__retarget_lock_release_recursive>:
 8005790:	4770      	bx	lr
 8005792:	bf00      	nop

08005794 <__swhatbuf_r>:
 8005794:	b570      	push	{r4, r5, r6, lr}
 8005796:	460c      	mov	r4, r1
 8005798:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800579c:	2900      	cmp	r1, #0
 800579e:	b096      	sub	sp, #88	; 0x58
 80057a0:	4615      	mov	r5, r2
 80057a2:	461e      	mov	r6, r3
 80057a4:	da0f      	bge.n	80057c6 <__swhatbuf_r+0x32>
 80057a6:	89a2      	ldrh	r2, [r4, #12]
 80057a8:	2300      	movs	r3, #0
 80057aa:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 80057ae:	6033      	str	r3, [r6, #0]
 80057b0:	d104      	bne.n	80057bc <__swhatbuf_r+0x28>
 80057b2:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80057b6:	602b      	str	r3, [r5, #0]
 80057b8:	b016      	add	sp, #88	; 0x58
 80057ba:	bd70      	pop	{r4, r5, r6, pc}
 80057bc:	2240      	movs	r2, #64	; 0x40
 80057be:	4618      	mov	r0, r3
 80057c0:	602a      	str	r2, [r5, #0]
 80057c2:	b016      	add	sp, #88	; 0x58
 80057c4:	bd70      	pop	{r4, r5, r6, pc}
 80057c6:	466a      	mov	r2, sp
 80057c8:	f001 fad0 	bl	8006d6c <_fstat_r>
 80057cc:	2800      	cmp	r0, #0
 80057ce:	dbea      	blt.n	80057a6 <__swhatbuf_r+0x12>
 80057d0:	9b01      	ldr	r3, [sp, #4]
 80057d2:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 80057d6:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 80057da:	fab3 f383 	clz	r3, r3
 80057de:	095b      	lsrs	r3, r3, #5
 80057e0:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80057e4:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80057e8:	6033      	str	r3, [r6, #0]
 80057ea:	602a      	str	r2, [r5, #0]
 80057ec:	b016      	add	sp, #88	; 0x58
 80057ee:	bd70      	pop	{r4, r5, r6, pc}

080057f0 <__smakebuf_r>:
 80057f0:	898a      	ldrh	r2, [r1, #12]
 80057f2:	0792      	lsls	r2, r2, #30
 80057f4:	460b      	mov	r3, r1
 80057f6:	d506      	bpl.n	8005806 <__smakebuf_r+0x16>
 80057f8:	f101 0243 	add.w	r2, r1, #67	; 0x43
 80057fc:	2101      	movs	r1, #1
 80057fe:	601a      	str	r2, [r3, #0]
 8005800:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005804:	4770      	bx	lr
 8005806:	b570      	push	{r4, r5, r6, lr}
 8005808:	b082      	sub	sp, #8
 800580a:	ab01      	add	r3, sp, #4
 800580c:	466a      	mov	r2, sp
 800580e:	460c      	mov	r4, r1
 8005810:	4605      	mov	r5, r0
 8005812:	f7ff ffbf 	bl	8005794 <__swhatbuf_r>
 8005816:	9900      	ldr	r1, [sp, #0]
 8005818:	4606      	mov	r6, r0
 800581a:	4628      	mov	r0, r5
 800581c:	f000 f832 	bl	8005884 <_malloc_r>
 8005820:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005824:	b1d8      	cbz	r0, 800585e <__smakebuf_r+0x6e>
 8005826:	4916      	ldr	r1, [pc, #88]	; (8005880 <__smakebuf_r+0x90>)
 8005828:	63e9      	str	r1, [r5, #60]	; 0x3c
 800582a:	9a01      	ldr	r2, [sp, #4]
 800582c:	9900      	ldr	r1, [sp, #0]
 800582e:	6020      	str	r0, [r4, #0]
 8005830:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005834:	81a3      	strh	r3, [r4, #12]
 8005836:	e9c4 0104 	strd	r0, r1, [r4, #16]
 800583a:	b91a      	cbnz	r2, 8005844 <__smakebuf_r+0x54>
 800583c:	4333      	orrs	r3, r6
 800583e:	81a3      	strh	r3, [r4, #12]
 8005840:	b002      	add	sp, #8
 8005842:	bd70      	pop	{r4, r5, r6, pc}
 8005844:	4628      	mov	r0, r5
 8005846:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800584a:	f001 faa3 	bl	8006d94 <_isatty_r>
 800584e:	b1a0      	cbz	r0, 800587a <__smakebuf_r+0x8a>
 8005850:	89a3      	ldrh	r3, [r4, #12]
 8005852:	f023 0303 	bic.w	r3, r3, #3
 8005856:	f043 0301 	orr.w	r3, r3, #1
 800585a:	b21b      	sxth	r3, r3
 800585c:	e7ee      	b.n	800583c <__smakebuf_r+0x4c>
 800585e:	059a      	lsls	r2, r3, #22
 8005860:	d4ee      	bmi.n	8005840 <__smakebuf_r+0x50>
 8005862:	f023 0303 	bic.w	r3, r3, #3
 8005866:	f104 0243 	add.w	r2, r4, #67	; 0x43
 800586a:	f043 0302 	orr.w	r3, r3, #2
 800586e:	2101      	movs	r1, #1
 8005870:	81a3      	strh	r3, [r4, #12]
 8005872:	6022      	str	r2, [r4, #0]
 8005874:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005878:	e7e2      	b.n	8005840 <__smakebuf_r+0x50>
 800587a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800587e:	e7dd      	b.n	800583c <__smakebuf_r+0x4c>
 8005880:	080050e1 	.word	0x080050e1

08005884 <_malloc_r>:
 8005884:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005888:	f101 050b 	add.w	r5, r1, #11
 800588c:	2d16      	cmp	r5, #22
 800588e:	b083      	sub	sp, #12
 8005890:	4606      	mov	r6, r0
 8005892:	d823      	bhi.n	80058dc <_malloc_r+0x58>
 8005894:	2910      	cmp	r1, #16
 8005896:	f200 80b9 	bhi.w	8005a0c <_malloc_r+0x188>
 800589a:	f000 fafb 	bl	8005e94 <__malloc_lock>
 800589e:	2510      	movs	r5, #16
 80058a0:	2318      	movs	r3, #24
 80058a2:	2002      	movs	r0, #2
 80058a4:	4fc5      	ldr	r7, [pc, #788]	; (8005bbc <_malloc_r+0x338>)
 80058a6:	443b      	add	r3, r7
 80058a8:	f1a3 0208 	sub.w	r2, r3, #8
 80058ac:	685c      	ldr	r4, [r3, #4]
 80058ae:	4294      	cmp	r4, r2
 80058b0:	f000 8166 	beq.w	8005b80 <_malloc_r+0x2fc>
 80058b4:	6863      	ldr	r3, [r4, #4]
 80058b6:	f023 0303 	bic.w	r3, r3, #3
 80058ba:	4423      	add	r3, r4
 80058bc:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 80058c0:	685a      	ldr	r2, [r3, #4]
 80058c2:	60e9      	str	r1, [r5, #12]
 80058c4:	f042 0201 	orr.w	r2, r2, #1
 80058c8:	608d      	str	r5, [r1, #8]
 80058ca:	4630      	mov	r0, r6
 80058cc:	605a      	str	r2, [r3, #4]
 80058ce:	f000 fae7 	bl	8005ea0 <__malloc_unlock>
 80058d2:	3408      	adds	r4, #8
 80058d4:	4620      	mov	r0, r4
 80058d6:	b003      	add	sp, #12
 80058d8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80058dc:	f035 0507 	bics.w	r5, r5, #7
 80058e0:	f100 8094 	bmi.w	8005a0c <_malloc_r+0x188>
 80058e4:	42a9      	cmp	r1, r5
 80058e6:	f200 8091 	bhi.w	8005a0c <_malloc_r+0x188>
 80058ea:	f000 fad3 	bl	8005e94 <__malloc_lock>
 80058ee:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80058f2:	f0c0 8183 	bcc.w	8005bfc <_malloc_r+0x378>
 80058f6:	0a6b      	lsrs	r3, r5, #9
 80058f8:	f000 808f 	beq.w	8005a1a <_malloc_r+0x196>
 80058fc:	2b04      	cmp	r3, #4
 80058fe:	f200 8146 	bhi.w	8005b8e <_malloc_r+0x30a>
 8005902:	09ab      	lsrs	r3, r5, #6
 8005904:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005908:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 800590c:	00c3      	lsls	r3, r0, #3
 800590e:	4fab      	ldr	r7, [pc, #684]	; (8005bbc <_malloc_r+0x338>)
 8005910:	443b      	add	r3, r7
 8005912:	f1a3 0108 	sub.w	r1, r3, #8
 8005916:	685c      	ldr	r4, [r3, #4]
 8005918:	42a1      	cmp	r1, r4
 800591a:	d106      	bne.n	800592a <_malloc_r+0xa6>
 800591c:	e00c      	b.n	8005938 <_malloc_r+0xb4>
 800591e:	2a00      	cmp	r2, #0
 8005920:	f280 811d 	bge.w	8005b5e <_malloc_r+0x2da>
 8005924:	68e4      	ldr	r4, [r4, #12]
 8005926:	42a1      	cmp	r1, r4
 8005928:	d006      	beq.n	8005938 <_malloc_r+0xb4>
 800592a:	6863      	ldr	r3, [r4, #4]
 800592c:	f023 0303 	bic.w	r3, r3, #3
 8005930:	1b5a      	subs	r2, r3, r5
 8005932:	2a0f      	cmp	r2, #15
 8005934:	ddf3      	ble.n	800591e <_malloc_r+0x9a>
 8005936:	4660      	mov	r0, ip
 8005938:	693c      	ldr	r4, [r7, #16]
 800593a:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005bd0 <_malloc_r+0x34c>
 800593e:	4564      	cmp	r4, ip
 8005940:	d071      	beq.n	8005a26 <_malloc_r+0x1a2>
 8005942:	6863      	ldr	r3, [r4, #4]
 8005944:	f023 0303 	bic.w	r3, r3, #3
 8005948:	1b5a      	subs	r2, r3, r5
 800594a:	2a0f      	cmp	r2, #15
 800594c:	f300 8144 	bgt.w	8005bd8 <_malloc_r+0x354>
 8005950:	2a00      	cmp	r2, #0
 8005952:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005956:	f280 8126 	bge.w	8005ba6 <_malloc_r+0x322>
 800595a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800595e:	f080 8169 	bcs.w	8005c34 <_malloc_r+0x3b0>
 8005962:	08db      	lsrs	r3, r3, #3
 8005964:	1c59      	adds	r1, r3, #1
 8005966:	687a      	ldr	r2, [r7, #4]
 8005968:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 800596c:	f8c4 8008 	str.w	r8, [r4, #8]
 8005970:	f04f 0e01 	mov.w	lr, #1
 8005974:	109b      	asrs	r3, r3, #2
 8005976:	fa0e f303 	lsl.w	r3, lr, r3
 800597a:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 800597e:	4313      	orrs	r3, r2
 8005980:	f1ae 0208 	sub.w	r2, lr, #8
 8005984:	60e2      	str	r2, [r4, #12]
 8005986:	607b      	str	r3, [r7, #4]
 8005988:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 800598c:	f8c8 400c 	str.w	r4, [r8, #12]
 8005990:	1082      	asrs	r2, r0, #2
 8005992:	2401      	movs	r4, #1
 8005994:	4094      	lsls	r4, r2
 8005996:	429c      	cmp	r4, r3
 8005998:	d84b      	bhi.n	8005a32 <_malloc_r+0x1ae>
 800599a:	421c      	tst	r4, r3
 800599c:	d106      	bne.n	80059ac <_malloc_r+0x128>
 800599e:	f020 0003 	bic.w	r0, r0, #3
 80059a2:	0064      	lsls	r4, r4, #1
 80059a4:	421c      	tst	r4, r3
 80059a6:	f100 0004 	add.w	r0, r0, #4
 80059aa:	d0fa      	beq.n	80059a2 <_malloc_r+0x11e>
 80059ac:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 80059b0:	46ce      	mov	lr, r9
 80059b2:	4680      	mov	r8, r0
 80059b4:	f8de 300c 	ldr.w	r3, [lr, #12]
 80059b8:	459e      	cmp	lr, r3
 80059ba:	d107      	bne.n	80059cc <_malloc_r+0x148>
 80059bc:	e122      	b.n	8005c04 <_malloc_r+0x380>
 80059be:	2a00      	cmp	r2, #0
 80059c0:	f280 8129 	bge.w	8005c16 <_malloc_r+0x392>
 80059c4:	68db      	ldr	r3, [r3, #12]
 80059c6:	459e      	cmp	lr, r3
 80059c8:	f000 811c 	beq.w	8005c04 <_malloc_r+0x380>
 80059cc:	6859      	ldr	r1, [r3, #4]
 80059ce:	f021 0103 	bic.w	r1, r1, #3
 80059d2:	1b4a      	subs	r2, r1, r5
 80059d4:	2a0f      	cmp	r2, #15
 80059d6:	ddf2      	ble.n	80059be <_malloc_r+0x13a>
 80059d8:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 80059dc:	195c      	adds	r4, r3, r5
 80059de:	f045 0501 	orr.w	r5, r5, #1
 80059e2:	605d      	str	r5, [r3, #4]
 80059e4:	f042 0501 	orr.w	r5, r2, #1
 80059e8:	f8c8 e00c 	str.w	lr, [r8, #12]
 80059ec:	4630      	mov	r0, r6
 80059ee:	f8ce 8008 	str.w	r8, [lr, #8]
 80059f2:	e9c7 4404 	strd	r4, r4, [r7, #16]
 80059f6:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80059fa:	6065      	str	r5, [r4, #4]
 80059fc:	505a      	str	r2, [r3, r1]
 80059fe:	9301      	str	r3, [sp, #4]
 8005a00:	f000 fa4e 	bl	8005ea0 <__malloc_unlock>
 8005a04:	9b01      	ldr	r3, [sp, #4]
 8005a06:	f103 0408 	add.w	r4, r3, #8
 8005a0a:	e763      	b.n	80058d4 <_malloc_r+0x50>
 8005a0c:	2400      	movs	r4, #0
 8005a0e:	230c      	movs	r3, #12
 8005a10:	4620      	mov	r0, r4
 8005a12:	6033      	str	r3, [r6, #0]
 8005a14:	b003      	add	sp, #12
 8005a16:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a1a:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005a1e:	2040      	movs	r0, #64	; 0x40
 8005a20:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005a24:	e773      	b.n	800590e <_malloc_r+0x8a>
 8005a26:	687b      	ldr	r3, [r7, #4]
 8005a28:	1082      	asrs	r2, r0, #2
 8005a2a:	2401      	movs	r4, #1
 8005a2c:	4094      	lsls	r4, r2
 8005a2e:	429c      	cmp	r4, r3
 8005a30:	d9b3      	bls.n	800599a <_malloc_r+0x116>
 8005a32:	68bc      	ldr	r4, [r7, #8]
 8005a34:	6863      	ldr	r3, [r4, #4]
 8005a36:	f023 0903 	bic.w	r9, r3, #3
 8005a3a:	45a9      	cmp	r9, r5
 8005a3c:	d303      	bcc.n	8005a46 <_malloc_r+0x1c2>
 8005a3e:	eba9 0305 	sub.w	r3, r9, r5
 8005a42:	2b0f      	cmp	r3, #15
 8005a44:	dc7b      	bgt.n	8005b3e <_malloc_r+0x2ba>
 8005a46:	4b5e      	ldr	r3, [pc, #376]	; (8005bc0 <_malloc_r+0x33c>)
 8005a48:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005bd4 <_malloc_r+0x350>
 8005a4c:	681a      	ldr	r2, [r3, #0]
 8005a4e:	f8da 3000 	ldr.w	r3, [sl]
 8005a52:	3301      	adds	r3, #1
 8005a54:	eb05 0802 	add.w	r8, r5, r2
 8005a58:	f000 8148 	beq.w	8005cec <_malloc_r+0x468>
 8005a5c:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005a60:	f108 080f 	add.w	r8, r8, #15
 8005a64:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005a68:	f028 080f 	bic.w	r8, r8, #15
 8005a6c:	4641      	mov	r1, r8
 8005a6e:	4630      	mov	r0, r6
 8005a70:	f000 ff08 	bl	8006884 <_sbrk_r>
 8005a74:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005a78:	4683      	mov	fp, r0
 8005a7a:	f000 8104 	beq.w	8005c86 <_malloc_r+0x402>
 8005a7e:	eb04 0009 	add.w	r0, r4, r9
 8005a82:	4558      	cmp	r0, fp
 8005a84:	f200 80fd 	bhi.w	8005c82 <_malloc_r+0x3fe>
 8005a88:	4a4e      	ldr	r2, [pc, #312]	; (8005bc4 <_malloc_r+0x340>)
 8005a8a:	6813      	ldr	r3, [r2, #0]
 8005a8c:	4443      	add	r3, r8
 8005a8e:	6013      	str	r3, [r2, #0]
 8005a90:	f000 814d 	beq.w	8005d2e <_malloc_r+0x4aa>
 8005a94:	f8da 1000 	ldr.w	r1, [sl]
 8005a98:	3101      	adds	r1, #1
 8005a9a:	bf1b      	ittet	ne
 8005a9c:	ebab 0000 	subne.w	r0, fp, r0
 8005aa0:	181b      	addne	r3, r3, r0
 8005aa2:	f8ca b000 	streq.w	fp, [sl]
 8005aa6:	6013      	strne	r3, [r2, #0]
 8005aa8:	f01b 0307 	ands.w	r3, fp, #7
 8005aac:	f000 8134 	beq.w	8005d18 <_malloc_r+0x494>
 8005ab0:	f1c3 0108 	rsb	r1, r3, #8
 8005ab4:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005ab8:	448b      	add	fp, r1
 8005aba:	3308      	adds	r3, #8
 8005abc:	44d8      	add	r8, fp
 8005abe:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005ac2:	eba3 0808 	sub.w	r8, r3, r8
 8005ac6:	4641      	mov	r1, r8
 8005ac8:	4630      	mov	r0, r6
 8005aca:	9201      	str	r2, [sp, #4]
 8005acc:	f000 feda 	bl	8006884 <_sbrk_r>
 8005ad0:	1c43      	adds	r3, r0, #1
 8005ad2:	9a01      	ldr	r2, [sp, #4]
 8005ad4:	f000 8146 	beq.w	8005d64 <_malloc_r+0x4e0>
 8005ad8:	eba0 010b 	sub.w	r1, r0, fp
 8005adc:	4441      	add	r1, r8
 8005ade:	f041 0101 	orr.w	r1, r1, #1
 8005ae2:	6813      	ldr	r3, [r2, #0]
 8005ae4:	f8c7 b008 	str.w	fp, [r7, #8]
 8005ae8:	4443      	add	r3, r8
 8005aea:	42bc      	cmp	r4, r7
 8005aec:	f8cb 1004 	str.w	r1, [fp, #4]
 8005af0:	6013      	str	r3, [r2, #0]
 8005af2:	d015      	beq.n	8005b20 <_malloc_r+0x29c>
 8005af4:	f1b9 0f0f 	cmp.w	r9, #15
 8005af8:	f240 8130 	bls.w	8005d5c <_malloc_r+0x4d8>
 8005afc:	6860      	ldr	r0, [r4, #4]
 8005afe:	f1a9 010c 	sub.w	r1, r9, #12
 8005b02:	f021 0107 	bic.w	r1, r1, #7
 8005b06:	f000 0001 	and.w	r0, r0, #1
 8005b0a:	eb04 0c01 	add.w	ip, r4, r1
 8005b0e:	4308      	orrs	r0, r1
 8005b10:	f04f 0e05 	mov.w	lr, #5
 8005b14:	290f      	cmp	r1, #15
 8005b16:	6060      	str	r0, [r4, #4]
 8005b18:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005b1c:	f200 813a 	bhi.w	8005d94 <_malloc_r+0x510>
 8005b20:	4a29      	ldr	r2, [pc, #164]	; (8005bc8 <_malloc_r+0x344>)
 8005b22:	482a      	ldr	r0, [pc, #168]	; (8005bcc <_malloc_r+0x348>)
 8005b24:	6811      	ldr	r1, [r2, #0]
 8005b26:	68bc      	ldr	r4, [r7, #8]
 8005b28:	428b      	cmp	r3, r1
 8005b2a:	6801      	ldr	r1, [r0, #0]
 8005b2c:	bf88      	it	hi
 8005b2e:	6013      	strhi	r3, [r2, #0]
 8005b30:	6862      	ldr	r2, [r4, #4]
 8005b32:	428b      	cmp	r3, r1
 8005b34:	f022 0203 	bic.w	r2, r2, #3
 8005b38:	bf88      	it	hi
 8005b3a:	6003      	strhi	r3, [r0, #0]
 8005b3c:	e0a7      	b.n	8005c8e <_malloc_r+0x40a>
 8005b3e:	1962      	adds	r2, r4, r5
 8005b40:	f043 0301 	orr.w	r3, r3, #1
 8005b44:	f045 0501 	orr.w	r5, r5, #1
 8005b48:	6065      	str	r5, [r4, #4]
 8005b4a:	4630      	mov	r0, r6
 8005b4c:	60ba      	str	r2, [r7, #8]
 8005b4e:	6053      	str	r3, [r2, #4]
 8005b50:	f000 f9a6 	bl	8005ea0 <__malloc_unlock>
 8005b54:	3408      	adds	r4, #8
 8005b56:	4620      	mov	r0, r4
 8005b58:	b003      	add	sp, #12
 8005b5a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b5e:	4423      	add	r3, r4
 8005b60:	68e1      	ldr	r1, [r4, #12]
 8005b62:	685a      	ldr	r2, [r3, #4]
 8005b64:	68a5      	ldr	r5, [r4, #8]
 8005b66:	f042 0201 	orr.w	r2, r2, #1
 8005b6a:	60e9      	str	r1, [r5, #12]
 8005b6c:	4630      	mov	r0, r6
 8005b6e:	608d      	str	r5, [r1, #8]
 8005b70:	605a      	str	r2, [r3, #4]
 8005b72:	f000 f995 	bl	8005ea0 <__malloc_unlock>
 8005b76:	3408      	adds	r4, #8
 8005b78:	4620      	mov	r0, r4
 8005b7a:	b003      	add	sp, #12
 8005b7c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b80:	68dc      	ldr	r4, [r3, #12]
 8005b82:	42a3      	cmp	r3, r4
 8005b84:	bf08      	it	eq
 8005b86:	3002      	addeq	r0, #2
 8005b88:	f43f aed6 	beq.w	8005938 <_malloc_r+0xb4>
 8005b8c:	e692      	b.n	80058b4 <_malloc_r+0x30>
 8005b8e:	2b14      	cmp	r3, #20
 8005b90:	d971      	bls.n	8005c76 <_malloc_r+0x3f2>
 8005b92:	2b54      	cmp	r3, #84	; 0x54
 8005b94:	f200 80ad 	bhi.w	8005cf2 <_malloc_r+0x46e>
 8005b98:	0b2b      	lsrs	r3, r5, #12
 8005b9a:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005b9e:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005ba2:	00c3      	lsls	r3, r0, #3
 8005ba4:	e6b3      	b.n	800590e <_malloc_r+0x8a>
 8005ba6:	4423      	add	r3, r4
 8005ba8:	4630      	mov	r0, r6
 8005baa:	685a      	ldr	r2, [r3, #4]
 8005bac:	f042 0201 	orr.w	r2, r2, #1
 8005bb0:	605a      	str	r2, [r3, #4]
 8005bb2:	3408      	adds	r4, #8
 8005bb4:	f000 f974 	bl	8005ea0 <__malloc_unlock>
 8005bb8:	e68c      	b.n	80058d4 <_malloc_r+0x50>
 8005bba:	bf00      	nop
 8005bbc:	200005dc 	.word	0x200005dc
 8005bc0:	20000c2c 	.word	0x20000c2c
 8005bc4:	20000bfc 	.word	0x20000bfc
 8005bc8:	20000c24 	.word	0x20000c24
 8005bcc:	20000c28 	.word	0x20000c28
 8005bd0:	200005e4 	.word	0x200005e4
 8005bd4:	200009e4 	.word	0x200009e4
 8005bd8:	1961      	adds	r1, r4, r5
 8005bda:	f045 0e01 	orr.w	lr, r5, #1
 8005bde:	f042 0501 	orr.w	r5, r2, #1
 8005be2:	f8c4 e004 	str.w	lr, [r4, #4]
 8005be6:	4630      	mov	r0, r6
 8005be8:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005bec:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005bf0:	604d      	str	r5, [r1, #4]
 8005bf2:	50e2      	str	r2, [r4, r3]
 8005bf4:	f000 f954 	bl	8005ea0 <__malloc_unlock>
 8005bf8:	3408      	adds	r4, #8
 8005bfa:	e66b      	b.n	80058d4 <_malloc_r+0x50>
 8005bfc:	08e8      	lsrs	r0, r5, #3
 8005bfe:	f105 0308 	add.w	r3, r5, #8
 8005c02:	e64f      	b.n	80058a4 <_malloc_r+0x20>
 8005c04:	f108 0801 	add.w	r8, r8, #1
 8005c08:	f018 0f03 	tst.w	r8, #3
 8005c0c:	f10e 0e08 	add.w	lr, lr, #8
 8005c10:	f47f aed0 	bne.w	80059b4 <_malloc_r+0x130>
 8005c14:	e052      	b.n	8005cbc <_malloc_r+0x438>
 8005c16:	4419      	add	r1, r3
 8005c18:	461c      	mov	r4, r3
 8005c1a:	684a      	ldr	r2, [r1, #4]
 8005c1c:	68db      	ldr	r3, [r3, #12]
 8005c1e:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005c22:	f042 0201 	orr.w	r2, r2, #1
 8005c26:	604a      	str	r2, [r1, #4]
 8005c28:	4630      	mov	r0, r6
 8005c2a:	60eb      	str	r3, [r5, #12]
 8005c2c:	609d      	str	r5, [r3, #8]
 8005c2e:	f000 f937 	bl	8005ea0 <__malloc_unlock>
 8005c32:	e64f      	b.n	80058d4 <_malloc_r+0x50>
 8005c34:	0a5a      	lsrs	r2, r3, #9
 8005c36:	2a04      	cmp	r2, #4
 8005c38:	d935      	bls.n	8005ca6 <_malloc_r+0x422>
 8005c3a:	2a14      	cmp	r2, #20
 8005c3c:	d86f      	bhi.n	8005d1e <_malloc_r+0x49a>
 8005c3e:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005c42:	00c9      	lsls	r1, r1, #3
 8005c44:	325b      	adds	r2, #91	; 0x5b
 8005c46:	eb07 0e01 	add.w	lr, r7, r1
 8005c4a:	5879      	ldr	r1, [r7, r1]
 8005c4c:	f1ae 0e08 	sub.w	lr, lr, #8
 8005c50:	458e      	cmp	lr, r1
 8005c52:	d058      	beq.n	8005d06 <_malloc_r+0x482>
 8005c54:	684a      	ldr	r2, [r1, #4]
 8005c56:	f022 0203 	bic.w	r2, r2, #3
 8005c5a:	429a      	cmp	r2, r3
 8005c5c:	d902      	bls.n	8005c64 <_malloc_r+0x3e0>
 8005c5e:	6889      	ldr	r1, [r1, #8]
 8005c60:	458e      	cmp	lr, r1
 8005c62:	d1f7      	bne.n	8005c54 <_malloc_r+0x3d0>
 8005c64:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005c68:	687b      	ldr	r3, [r7, #4]
 8005c6a:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005c6e:	f8ce 4008 	str.w	r4, [lr, #8]
 8005c72:	60cc      	str	r4, [r1, #12]
 8005c74:	e68c      	b.n	8005990 <_malloc_r+0x10c>
 8005c76:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005c7a:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005c7e:	00c3      	lsls	r3, r0, #3
 8005c80:	e645      	b.n	800590e <_malloc_r+0x8a>
 8005c82:	42bc      	cmp	r4, r7
 8005c84:	d072      	beq.n	8005d6c <_malloc_r+0x4e8>
 8005c86:	68bc      	ldr	r4, [r7, #8]
 8005c88:	6862      	ldr	r2, [r4, #4]
 8005c8a:	f022 0203 	bic.w	r2, r2, #3
 8005c8e:	4295      	cmp	r5, r2
 8005c90:	eba2 0305 	sub.w	r3, r2, r5
 8005c94:	d802      	bhi.n	8005c9c <_malloc_r+0x418>
 8005c96:	2b0f      	cmp	r3, #15
 8005c98:	f73f af51 	bgt.w	8005b3e <_malloc_r+0x2ba>
 8005c9c:	4630      	mov	r0, r6
 8005c9e:	f000 f8ff 	bl	8005ea0 <__malloc_unlock>
 8005ca2:	2400      	movs	r4, #0
 8005ca4:	e616      	b.n	80058d4 <_malloc_r+0x50>
 8005ca6:	099a      	lsrs	r2, r3, #6
 8005ca8:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005cac:	00c9      	lsls	r1, r1, #3
 8005cae:	3238      	adds	r2, #56	; 0x38
 8005cb0:	e7c9      	b.n	8005c46 <_malloc_r+0x3c2>
 8005cb2:	f8d9 9000 	ldr.w	r9, [r9]
 8005cb6:	4599      	cmp	r9, r3
 8005cb8:	f040 8083 	bne.w	8005dc2 <_malloc_r+0x53e>
 8005cbc:	f010 0f03 	tst.w	r0, #3
 8005cc0:	f1a9 0308 	sub.w	r3, r9, #8
 8005cc4:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005cc8:	d1f3      	bne.n	8005cb2 <_malloc_r+0x42e>
 8005cca:	687b      	ldr	r3, [r7, #4]
 8005ccc:	ea23 0304 	bic.w	r3, r3, r4
 8005cd0:	607b      	str	r3, [r7, #4]
 8005cd2:	0064      	lsls	r4, r4, #1
 8005cd4:	429c      	cmp	r4, r3
 8005cd6:	f63f aeac 	bhi.w	8005a32 <_malloc_r+0x1ae>
 8005cda:	b91c      	cbnz	r4, 8005ce4 <_malloc_r+0x460>
 8005cdc:	e6a9      	b.n	8005a32 <_malloc_r+0x1ae>
 8005cde:	0064      	lsls	r4, r4, #1
 8005ce0:	f108 0804 	add.w	r8, r8, #4
 8005ce4:	421c      	tst	r4, r3
 8005ce6:	d0fa      	beq.n	8005cde <_malloc_r+0x45a>
 8005ce8:	4640      	mov	r0, r8
 8005cea:	e65f      	b.n	80059ac <_malloc_r+0x128>
 8005cec:	f108 0810 	add.w	r8, r8, #16
 8005cf0:	e6bc      	b.n	8005a6c <_malloc_r+0x1e8>
 8005cf2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005cf6:	d826      	bhi.n	8005d46 <_malloc_r+0x4c2>
 8005cf8:	0beb      	lsrs	r3, r5, #15
 8005cfa:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005cfe:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005d02:	00c3      	lsls	r3, r0, #3
 8005d04:	e603      	b.n	800590e <_malloc_r+0x8a>
 8005d06:	687b      	ldr	r3, [r7, #4]
 8005d08:	1092      	asrs	r2, r2, #2
 8005d0a:	f04f 0801 	mov.w	r8, #1
 8005d0e:	fa08 f202 	lsl.w	r2, r8, r2
 8005d12:	4313      	orrs	r3, r2
 8005d14:	607b      	str	r3, [r7, #4]
 8005d16:	e7a8      	b.n	8005c6a <_malloc_r+0x3e6>
 8005d18:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005d1c:	e6ce      	b.n	8005abc <_malloc_r+0x238>
 8005d1e:	2a54      	cmp	r2, #84	; 0x54
 8005d20:	d829      	bhi.n	8005d76 <_malloc_r+0x4f2>
 8005d22:	0b1a      	lsrs	r2, r3, #12
 8005d24:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005d28:	00c9      	lsls	r1, r1, #3
 8005d2a:	326e      	adds	r2, #110	; 0x6e
 8005d2c:	e78b      	b.n	8005c46 <_malloc_r+0x3c2>
 8005d2e:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005d32:	2900      	cmp	r1, #0
 8005d34:	f47f aeae 	bne.w	8005a94 <_malloc_r+0x210>
 8005d38:	eb09 0208 	add.w	r2, r9, r8
 8005d3c:	68b9      	ldr	r1, [r7, #8]
 8005d3e:	f042 0201 	orr.w	r2, r2, #1
 8005d42:	604a      	str	r2, [r1, #4]
 8005d44:	e6ec      	b.n	8005b20 <_malloc_r+0x29c>
 8005d46:	f240 5254 	movw	r2, #1364	; 0x554
 8005d4a:	4293      	cmp	r3, r2
 8005d4c:	d81c      	bhi.n	8005d88 <_malloc_r+0x504>
 8005d4e:	0cab      	lsrs	r3, r5, #18
 8005d50:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005d54:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005d58:	00c3      	lsls	r3, r0, #3
 8005d5a:	e5d8      	b.n	800590e <_malloc_r+0x8a>
 8005d5c:	2301      	movs	r3, #1
 8005d5e:	f8cb 3004 	str.w	r3, [fp, #4]
 8005d62:	e79b      	b.n	8005c9c <_malloc_r+0x418>
 8005d64:	2101      	movs	r1, #1
 8005d66:	f04f 0800 	mov.w	r8, #0
 8005d6a:	e6ba      	b.n	8005ae2 <_malloc_r+0x25e>
 8005d6c:	4a16      	ldr	r2, [pc, #88]	; (8005dc8 <_malloc_r+0x544>)
 8005d6e:	6813      	ldr	r3, [r2, #0]
 8005d70:	4443      	add	r3, r8
 8005d72:	6013      	str	r3, [r2, #0]
 8005d74:	e68e      	b.n	8005a94 <_malloc_r+0x210>
 8005d76:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005d7a:	d814      	bhi.n	8005da6 <_malloc_r+0x522>
 8005d7c:	0bda      	lsrs	r2, r3, #15
 8005d7e:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005d82:	00c9      	lsls	r1, r1, #3
 8005d84:	3277      	adds	r2, #119	; 0x77
 8005d86:	e75e      	b.n	8005c46 <_malloc_r+0x3c2>
 8005d88:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005d8c:	207f      	movs	r0, #127	; 0x7f
 8005d8e:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005d92:	e5bc      	b.n	800590e <_malloc_r+0x8a>
 8005d94:	f104 0108 	add.w	r1, r4, #8
 8005d98:	4630      	mov	r0, r6
 8005d9a:	9201      	str	r2, [sp, #4]
 8005d9c:	f7ff fa48 	bl	8005230 <_free_r>
 8005da0:	9a01      	ldr	r2, [sp, #4]
 8005da2:	6813      	ldr	r3, [r2, #0]
 8005da4:	e6bc      	b.n	8005b20 <_malloc_r+0x29c>
 8005da6:	f240 5154 	movw	r1, #1364	; 0x554
 8005daa:	428a      	cmp	r2, r1
 8005dac:	d805      	bhi.n	8005dba <_malloc_r+0x536>
 8005dae:	0c9a      	lsrs	r2, r3, #18
 8005db0:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005db4:	00c9      	lsls	r1, r1, #3
 8005db6:	327c      	adds	r2, #124	; 0x7c
 8005db8:	e745      	b.n	8005c46 <_malloc_r+0x3c2>
 8005dba:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005dbe:	227e      	movs	r2, #126	; 0x7e
 8005dc0:	e741      	b.n	8005c46 <_malloc_r+0x3c2>
 8005dc2:	687b      	ldr	r3, [r7, #4]
 8005dc4:	e785      	b.n	8005cd2 <_malloc_r+0x44e>
 8005dc6:	bf00      	nop
 8005dc8:	20000bfc 	.word	0x20000bfc

08005dcc <memmove>:
 8005dcc:	4288      	cmp	r0, r1
 8005dce:	b4f0      	push	{r4, r5, r6, r7}
 8005dd0:	d90d      	bls.n	8005dee <memmove+0x22>
 8005dd2:	188b      	adds	r3, r1, r2
 8005dd4:	4283      	cmp	r3, r0
 8005dd6:	d90a      	bls.n	8005dee <memmove+0x22>
 8005dd8:	1884      	adds	r4, r0, r2
 8005dda:	b132      	cbz	r2, 8005dea <memmove+0x1e>
 8005ddc:	4622      	mov	r2, r4
 8005dde:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005de2:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005de6:	4299      	cmp	r1, r3
 8005de8:	d1f9      	bne.n	8005dde <memmove+0x12>
 8005dea:	bcf0      	pop	{r4, r5, r6, r7}
 8005dec:	4770      	bx	lr
 8005dee:	2a0f      	cmp	r2, #15
 8005df0:	d949      	bls.n	8005e86 <memmove+0xba>
 8005df2:	ea40 0301 	orr.w	r3, r0, r1
 8005df6:	079b      	lsls	r3, r3, #30
 8005df8:	d147      	bne.n	8005e8a <memmove+0xbe>
 8005dfa:	f1a2 0310 	sub.w	r3, r2, #16
 8005dfe:	091b      	lsrs	r3, r3, #4
 8005e00:	f101 0720 	add.w	r7, r1, #32
 8005e04:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005e08:	f101 0410 	add.w	r4, r1, #16
 8005e0c:	f100 0510 	add.w	r5, r0, #16
 8005e10:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005e14:	f845 6c10 	str.w	r6, [r5, #-16]
 8005e18:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005e1c:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005e20:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005e24:	f845 6c08 	str.w	r6, [r5, #-8]
 8005e28:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005e2c:	f845 6c04 	str.w	r6, [r5, #-4]
 8005e30:	3410      	adds	r4, #16
 8005e32:	42bc      	cmp	r4, r7
 8005e34:	f105 0510 	add.w	r5, r5, #16
 8005e38:	d1ea      	bne.n	8005e10 <memmove+0x44>
 8005e3a:	3301      	adds	r3, #1
 8005e3c:	f002 050f 	and.w	r5, r2, #15
 8005e40:	011b      	lsls	r3, r3, #4
 8005e42:	2d03      	cmp	r5, #3
 8005e44:	4419      	add	r1, r3
 8005e46:	4403      	add	r3, r0
 8005e48:	d921      	bls.n	8005e8e <memmove+0xc2>
 8005e4a:	1f1f      	subs	r7, r3, #4
 8005e4c:	460e      	mov	r6, r1
 8005e4e:	462c      	mov	r4, r5
 8005e50:	3c04      	subs	r4, #4
 8005e52:	f856 cb04 	ldr.w	ip, [r6], #4
 8005e56:	f847 cf04 	str.w	ip, [r7, #4]!
 8005e5a:	2c03      	cmp	r4, #3
 8005e5c:	d8f8      	bhi.n	8005e50 <memmove+0x84>
 8005e5e:	1f2c      	subs	r4, r5, #4
 8005e60:	f024 0403 	bic.w	r4, r4, #3
 8005e64:	3404      	adds	r4, #4
 8005e66:	4423      	add	r3, r4
 8005e68:	4421      	add	r1, r4
 8005e6a:	f002 0203 	and.w	r2, r2, #3
 8005e6e:	2a00      	cmp	r2, #0
 8005e70:	d0bb      	beq.n	8005dea <memmove+0x1e>
 8005e72:	3b01      	subs	r3, #1
 8005e74:	440a      	add	r2, r1
 8005e76:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005e7a:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005e7e:	4291      	cmp	r1, r2
 8005e80:	d1f9      	bne.n	8005e76 <memmove+0xaa>
 8005e82:	bcf0      	pop	{r4, r5, r6, r7}
 8005e84:	4770      	bx	lr
 8005e86:	4603      	mov	r3, r0
 8005e88:	e7f1      	b.n	8005e6e <memmove+0xa2>
 8005e8a:	4603      	mov	r3, r0
 8005e8c:	e7f1      	b.n	8005e72 <memmove+0xa6>
 8005e8e:	462a      	mov	r2, r5
 8005e90:	e7ed      	b.n	8005e6e <memmove+0xa2>
 8005e92:	bf00      	nop

08005e94 <__malloc_lock>:
 8005e94:	4801      	ldr	r0, [pc, #4]	; (8005e9c <__malloc_lock+0x8>)
 8005e96:	f7ff bc79 	b.w	800578c <__retarget_lock_acquire_recursive>
 8005e9a:	bf00      	nop
 8005e9c:	20000c88 	.word	0x20000c88

08005ea0 <__malloc_unlock>:
 8005ea0:	4801      	ldr	r0, [pc, #4]	; (8005ea8 <__malloc_unlock+0x8>)
 8005ea2:	f7ff bc75 	b.w	8005790 <__retarget_lock_release_recursive>
 8005ea6:	bf00      	nop
 8005ea8:	20000c88 	.word	0x20000c88

08005eac <_Balloc>:
 8005eac:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005eae:	b570      	push	{r4, r5, r6, lr}
 8005eb0:	4605      	mov	r5, r0
 8005eb2:	460c      	mov	r4, r1
 8005eb4:	b14b      	cbz	r3, 8005eca <_Balloc+0x1e>
 8005eb6:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005eba:	b180      	cbz	r0, 8005ede <_Balloc+0x32>
 8005ebc:	6802      	ldr	r2, [r0, #0]
 8005ebe:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005ec2:	2300      	movs	r3, #0
 8005ec4:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005ec8:	bd70      	pop	{r4, r5, r6, pc}
 8005eca:	2221      	movs	r2, #33	; 0x21
 8005ecc:	2104      	movs	r1, #4
 8005ece:	f000 fe1d 	bl	8006b0c <_calloc_r>
 8005ed2:	4603      	mov	r3, r0
 8005ed4:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005ed6:	2800      	cmp	r0, #0
 8005ed8:	d1ed      	bne.n	8005eb6 <_Balloc+0xa>
 8005eda:	2000      	movs	r0, #0
 8005edc:	bd70      	pop	{r4, r5, r6, pc}
 8005ede:	2101      	movs	r1, #1
 8005ee0:	fa01 f604 	lsl.w	r6, r1, r4
 8005ee4:	1d72      	adds	r2, r6, #5
 8005ee6:	4628      	mov	r0, r5
 8005ee8:	0092      	lsls	r2, r2, #2
 8005eea:	f000 fe0f 	bl	8006b0c <_calloc_r>
 8005eee:	2800      	cmp	r0, #0
 8005ef0:	d0f3      	beq.n	8005eda <_Balloc+0x2e>
 8005ef2:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005ef6:	e7e4      	b.n	8005ec2 <_Balloc+0x16>

08005ef8 <_Bfree>:
 8005ef8:	b131      	cbz	r1, 8005f08 <_Bfree+0x10>
 8005efa:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005efc:	684a      	ldr	r2, [r1, #4]
 8005efe:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005f02:	6008      	str	r0, [r1, #0]
 8005f04:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005f08:	4770      	bx	lr
 8005f0a:	bf00      	nop

08005f0c <__multadd>:
 8005f0c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005f0e:	690c      	ldr	r4, [r1, #16]
 8005f10:	b083      	sub	sp, #12
 8005f12:	460d      	mov	r5, r1
 8005f14:	4606      	mov	r6, r0
 8005f16:	f101 0c14 	add.w	ip, r1, #20
 8005f1a:	2700      	movs	r7, #0
 8005f1c:	f8dc 0000 	ldr.w	r0, [ip]
 8005f20:	b281      	uxth	r1, r0
 8005f22:	fb02 3301 	mla	r3, r2, r1, r3
 8005f26:	0c01      	lsrs	r1, r0, #16
 8005f28:	0c18      	lsrs	r0, r3, #16
 8005f2a:	fb02 0101 	mla	r1, r2, r1, r0
 8005f2e:	b29b      	uxth	r3, r3
 8005f30:	3701      	adds	r7, #1
 8005f32:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005f36:	42bc      	cmp	r4, r7
 8005f38:	f84c 3b04 	str.w	r3, [ip], #4
 8005f3c:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8005f40:	dcec      	bgt.n	8005f1c <__multadd+0x10>
 8005f42:	b13b      	cbz	r3, 8005f54 <__multadd+0x48>
 8005f44:	68aa      	ldr	r2, [r5, #8]
 8005f46:	42a2      	cmp	r2, r4
 8005f48:	dd07      	ble.n	8005f5a <__multadd+0x4e>
 8005f4a:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8005f4e:	3401      	adds	r4, #1
 8005f50:	6153      	str	r3, [r2, #20]
 8005f52:	612c      	str	r4, [r5, #16]
 8005f54:	4628      	mov	r0, r5
 8005f56:	b003      	add	sp, #12
 8005f58:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005f5a:	6869      	ldr	r1, [r5, #4]
 8005f5c:	9301      	str	r3, [sp, #4]
 8005f5e:	3101      	adds	r1, #1
 8005f60:	4630      	mov	r0, r6
 8005f62:	f7ff ffa3 	bl	8005eac <_Balloc>
 8005f66:	692a      	ldr	r2, [r5, #16]
 8005f68:	3202      	adds	r2, #2
 8005f6a:	f105 010c 	add.w	r1, r5, #12
 8005f6e:	4607      	mov	r7, r0
 8005f70:	0092      	lsls	r2, r2, #2
 8005f72:	300c      	adds	r0, #12
 8005f74:	f7fa fac4 	bl	8000500 <memcpy>
 8005f78:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8005f7a:	6869      	ldr	r1, [r5, #4]
 8005f7c:	9b01      	ldr	r3, [sp, #4]
 8005f7e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8005f82:	6028      	str	r0, [r5, #0]
 8005f84:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8005f88:	463d      	mov	r5, r7
 8005f8a:	e7de      	b.n	8005f4a <__multadd+0x3e>

08005f8c <__hi0bits>:
 8005f8c:	0c02      	lsrs	r2, r0, #16
 8005f8e:	0412      	lsls	r2, r2, #16
 8005f90:	4603      	mov	r3, r0
 8005f92:	b9c2      	cbnz	r2, 8005fc6 <__hi0bits+0x3a>
 8005f94:	0403      	lsls	r3, r0, #16
 8005f96:	2010      	movs	r0, #16
 8005f98:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8005f9c:	bf04      	itt	eq
 8005f9e:	021b      	lsleq	r3, r3, #8
 8005fa0:	3008      	addeq	r0, #8
 8005fa2:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8005fa6:	bf04      	itt	eq
 8005fa8:	011b      	lsleq	r3, r3, #4
 8005faa:	3004      	addeq	r0, #4
 8005fac:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8005fb0:	bf04      	itt	eq
 8005fb2:	009b      	lsleq	r3, r3, #2
 8005fb4:	3002      	addeq	r0, #2
 8005fb6:	2b00      	cmp	r3, #0
 8005fb8:	db04      	blt.n	8005fc4 <__hi0bits+0x38>
 8005fba:	005b      	lsls	r3, r3, #1
 8005fbc:	d501      	bpl.n	8005fc2 <__hi0bits+0x36>
 8005fbe:	3001      	adds	r0, #1
 8005fc0:	4770      	bx	lr
 8005fc2:	2020      	movs	r0, #32
 8005fc4:	4770      	bx	lr
 8005fc6:	2000      	movs	r0, #0
 8005fc8:	e7e6      	b.n	8005f98 <__hi0bits+0xc>
 8005fca:	bf00      	nop

08005fcc <__lo0bits>:
 8005fcc:	6803      	ldr	r3, [r0, #0]
 8005fce:	f013 0207 	ands.w	r2, r3, #7
 8005fd2:	4601      	mov	r1, r0
 8005fd4:	d007      	beq.n	8005fe6 <__lo0bits+0x1a>
 8005fd6:	07da      	lsls	r2, r3, #31
 8005fd8:	d41f      	bmi.n	800601a <__lo0bits+0x4e>
 8005fda:	0798      	lsls	r0, r3, #30
 8005fdc:	d51f      	bpl.n	800601e <__lo0bits+0x52>
 8005fde:	085b      	lsrs	r3, r3, #1
 8005fe0:	600b      	str	r3, [r1, #0]
 8005fe2:	2001      	movs	r0, #1
 8005fe4:	4770      	bx	lr
 8005fe6:	b298      	uxth	r0, r3
 8005fe8:	b1a0      	cbz	r0, 8006014 <__lo0bits+0x48>
 8005fea:	4610      	mov	r0, r2
 8005fec:	f013 0fff 	tst.w	r3, #255	; 0xff
 8005ff0:	bf04      	itt	eq
 8005ff2:	0a1b      	lsreq	r3, r3, #8
 8005ff4:	3008      	addeq	r0, #8
 8005ff6:	071a      	lsls	r2, r3, #28
 8005ff8:	bf04      	itt	eq
 8005ffa:	091b      	lsreq	r3, r3, #4
 8005ffc:	3004      	addeq	r0, #4
 8005ffe:	079a      	lsls	r2, r3, #30
 8006000:	bf04      	itt	eq
 8006002:	089b      	lsreq	r3, r3, #2
 8006004:	3002      	addeq	r0, #2
 8006006:	07da      	lsls	r2, r3, #31
 8006008:	d402      	bmi.n	8006010 <__lo0bits+0x44>
 800600a:	085b      	lsrs	r3, r3, #1
 800600c:	d00b      	beq.n	8006026 <__lo0bits+0x5a>
 800600e:	3001      	adds	r0, #1
 8006010:	600b      	str	r3, [r1, #0]
 8006012:	4770      	bx	lr
 8006014:	0c1b      	lsrs	r3, r3, #16
 8006016:	2010      	movs	r0, #16
 8006018:	e7e8      	b.n	8005fec <__lo0bits+0x20>
 800601a:	2000      	movs	r0, #0
 800601c:	4770      	bx	lr
 800601e:	089b      	lsrs	r3, r3, #2
 8006020:	600b      	str	r3, [r1, #0]
 8006022:	2002      	movs	r0, #2
 8006024:	4770      	bx	lr
 8006026:	2020      	movs	r0, #32
 8006028:	4770      	bx	lr
 800602a:	bf00      	nop

0800602c <__i2b>:
 800602c:	b510      	push	{r4, lr}
 800602e:	460c      	mov	r4, r1
 8006030:	2101      	movs	r1, #1
 8006032:	f7ff ff3b 	bl	8005eac <_Balloc>
 8006036:	2201      	movs	r2, #1
 8006038:	e9c0 2404 	strd	r2, r4, [r0, #16]
 800603c:	bd10      	pop	{r4, pc}
 800603e:	bf00      	nop

08006040 <__multiply>:
 8006040:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006044:	690e      	ldr	r6, [r1, #16]
 8006046:	6914      	ldr	r4, [r2, #16]
 8006048:	42a6      	cmp	r6, r4
 800604a:	b083      	sub	sp, #12
 800604c:	460f      	mov	r7, r1
 800604e:	4615      	mov	r5, r2
 8006050:	da04      	bge.n	800605c <__multiply+0x1c>
 8006052:	4632      	mov	r2, r6
 8006054:	462f      	mov	r7, r5
 8006056:	4626      	mov	r6, r4
 8006058:	460d      	mov	r5, r1
 800605a:	4614      	mov	r4, r2
 800605c:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006060:	eb06 0804 	add.w	r8, r6, r4
 8006064:	4543      	cmp	r3, r8
 8006066:	bfb8      	it	lt
 8006068:	3101      	addlt	r1, #1
 800606a:	f7ff ff1f 	bl	8005eac <_Balloc>
 800606e:	f100 0914 	add.w	r9, r0, #20
 8006072:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8006076:	45f1      	cmp	r9, lr
 8006078:	9000      	str	r0, [sp, #0]
 800607a:	d205      	bcs.n	8006088 <__multiply+0x48>
 800607c:	464b      	mov	r3, r9
 800607e:	2200      	movs	r2, #0
 8006080:	f843 2b04 	str.w	r2, [r3], #4
 8006084:	459e      	cmp	lr, r3
 8006086:	d8fb      	bhi.n	8006080 <__multiply+0x40>
 8006088:	f105 0a14 	add.w	sl, r5, #20
 800608c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006090:	f107 0314 	add.w	r3, r7, #20
 8006094:	45a2      	cmp	sl, r4
 8006096:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800609a:	d261      	bcs.n	8006160 <__multiply+0x120>
 800609c:	1b64      	subs	r4, r4, r5
 800609e:	3c15      	subs	r4, #21
 80060a0:	f024 0403 	bic.w	r4, r4, #3
 80060a4:	f8cd e004 	str.w	lr, [sp, #4]
 80060a8:	44a2      	add	sl, r4
 80060aa:	f105 0210 	add.w	r2, r5, #16
 80060ae:	469e      	mov	lr, r3
 80060b0:	e005      	b.n	80060be <__multiply+0x7e>
 80060b2:	0c2d      	lsrs	r5, r5, #16
 80060b4:	d12b      	bne.n	800610e <__multiply+0xce>
 80060b6:	4592      	cmp	sl, r2
 80060b8:	f109 0904 	add.w	r9, r9, #4
 80060bc:	d04e      	beq.n	800615c <__multiply+0x11c>
 80060be:	f852 5f04 	ldr.w	r5, [r2, #4]!
 80060c2:	fa1f fb85 	uxth.w	fp, r5
 80060c6:	f1bb 0f00 	cmp.w	fp, #0
 80060ca:	d0f2      	beq.n	80060b2 <__multiply+0x72>
 80060cc:	4677      	mov	r7, lr
 80060ce:	464e      	mov	r6, r9
 80060d0:	2000      	movs	r0, #0
 80060d2:	e000      	b.n	80060d6 <__multiply+0x96>
 80060d4:	4626      	mov	r6, r4
 80060d6:	f857 1b04 	ldr.w	r1, [r7], #4
 80060da:	6834      	ldr	r4, [r6, #0]
 80060dc:	b28b      	uxth	r3, r1
 80060de:	b2a5      	uxth	r5, r4
 80060e0:	0c09      	lsrs	r1, r1, #16
 80060e2:	0c24      	lsrs	r4, r4, #16
 80060e4:	fb0b 5303 	mla	r3, fp, r3, r5
 80060e8:	4403      	add	r3, r0
 80060ea:	fb0b 4001 	mla	r0, fp, r1, r4
 80060ee:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80060f2:	4634      	mov	r4, r6
 80060f4:	b29b      	uxth	r3, r3
 80060f6:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80060fa:	45bc      	cmp	ip, r7
 80060fc:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006100:	f844 3b04 	str.w	r3, [r4], #4
 8006104:	d8e6      	bhi.n	80060d4 <__multiply+0x94>
 8006106:	6070      	str	r0, [r6, #4]
 8006108:	6815      	ldr	r5, [r2, #0]
 800610a:	0c2d      	lsrs	r5, r5, #16
 800610c:	d0d3      	beq.n	80060b6 <__multiply+0x76>
 800610e:	f8d9 3000 	ldr.w	r3, [r9]
 8006112:	4676      	mov	r6, lr
 8006114:	4618      	mov	r0, r3
 8006116:	46cb      	mov	fp, r9
 8006118:	2100      	movs	r1, #0
 800611a:	e000      	b.n	800611e <__multiply+0xde>
 800611c:	46a3      	mov	fp, r4
 800611e:	8834      	ldrh	r4, [r6, #0]
 8006120:	0c00      	lsrs	r0, r0, #16
 8006122:	fb05 0004 	mla	r0, r5, r4, r0
 8006126:	4401      	add	r1, r0
 8006128:	b29b      	uxth	r3, r3
 800612a:	465c      	mov	r4, fp
 800612c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006130:	f844 3b04 	str.w	r3, [r4], #4
 8006134:	f856 3b04 	ldr.w	r3, [r6], #4
 8006138:	f8db 0004 	ldr.w	r0, [fp, #4]
 800613c:	0c1b      	lsrs	r3, r3, #16
 800613e:	b287      	uxth	r7, r0
 8006140:	fb05 7303 	mla	r3, r5, r3, r7
 8006144:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006148:	45b4      	cmp	ip, r6
 800614a:	ea4f 4113 	mov.w	r1, r3, lsr #16
 800614e:	d8e5      	bhi.n	800611c <__multiply+0xdc>
 8006150:	4592      	cmp	sl, r2
 8006152:	f8cb 3004 	str.w	r3, [fp, #4]
 8006156:	f109 0904 	add.w	r9, r9, #4
 800615a:	d1b0      	bne.n	80060be <__multiply+0x7e>
 800615c:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006160:	f1b8 0f00 	cmp.w	r8, #0
 8006164:	dd0b      	ble.n	800617e <__multiply+0x13e>
 8006166:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800616a:	f1ae 0e04 	sub.w	lr, lr, #4
 800616e:	b11b      	cbz	r3, 8006178 <__multiply+0x138>
 8006170:	e005      	b.n	800617e <__multiply+0x13e>
 8006172:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006176:	b913      	cbnz	r3, 800617e <__multiply+0x13e>
 8006178:	f1b8 0801 	subs.w	r8, r8, #1
 800617c:	d1f9      	bne.n	8006172 <__multiply+0x132>
 800617e:	9800      	ldr	r0, [sp, #0]
 8006180:	f8c0 8010 	str.w	r8, [r0, #16]
 8006184:	b003      	add	sp, #12
 8006186:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800618a:	bf00      	nop

0800618c <__pow5mult>:
 800618c:	f012 0303 	ands.w	r3, r2, #3
 8006190:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006194:	4614      	mov	r4, r2
 8006196:	4607      	mov	r7, r0
 8006198:	d12e      	bne.n	80061f8 <__pow5mult+0x6c>
 800619a:	460d      	mov	r5, r1
 800619c:	10a4      	asrs	r4, r4, #2
 800619e:	d01c      	beq.n	80061da <__pow5mult+0x4e>
 80061a0:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80061a2:	b396      	cbz	r6, 800620a <__pow5mult+0x7e>
 80061a4:	07e3      	lsls	r3, r4, #31
 80061a6:	f04f 0800 	mov.w	r8, #0
 80061aa:	d406      	bmi.n	80061ba <__pow5mult+0x2e>
 80061ac:	1064      	asrs	r4, r4, #1
 80061ae:	d014      	beq.n	80061da <__pow5mult+0x4e>
 80061b0:	6830      	ldr	r0, [r6, #0]
 80061b2:	b1a8      	cbz	r0, 80061e0 <__pow5mult+0x54>
 80061b4:	4606      	mov	r6, r0
 80061b6:	07e3      	lsls	r3, r4, #31
 80061b8:	d5f8      	bpl.n	80061ac <__pow5mult+0x20>
 80061ba:	4632      	mov	r2, r6
 80061bc:	4629      	mov	r1, r5
 80061be:	4638      	mov	r0, r7
 80061c0:	f7ff ff3e 	bl	8006040 <__multiply>
 80061c4:	b1b5      	cbz	r5, 80061f4 <__pow5mult+0x68>
 80061c6:	686a      	ldr	r2, [r5, #4]
 80061c8:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80061ca:	1064      	asrs	r4, r4, #1
 80061cc:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80061d0:	6029      	str	r1, [r5, #0]
 80061d2:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80061d6:	4605      	mov	r5, r0
 80061d8:	d1ea      	bne.n	80061b0 <__pow5mult+0x24>
 80061da:	4628      	mov	r0, r5
 80061dc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80061e0:	4632      	mov	r2, r6
 80061e2:	4631      	mov	r1, r6
 80061e4:	4638      	mov	r0, r7
 80061e6:	f7ff ff2b 	bl	8006040 <__multiply>
 80061ea:	6030      	str	r0, [r6, #0]
 80061ec:	f8c0 8000 	str.w	r8, [r0]
 80061f0:	4606      	mov	r6, r0
 80061f2:	e7e0      	b.n	80061b6 <__pow5mult+0x2a>
 80061f4:	4605      	mov	r5, r0
 80061f6:	e7d9      	b.n	80061ac <__pow5mult+0x20>
 80061f8:	3b01      	subs	r3, #1
 80061fa:	4a0b      	ldr	r2, [pc, #44]	; (8006228 <__pow5mult+0x9c>)
 80061fc:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006200:	2300      	movs	r3, #0
 8006202:	f7ff fe83 	bl	8005f0c <__multadd>
 8006206:	4605      	mov	r5, r0
 8006208:	e7c8      	b.n	800619c <__pow5mult+0x10>
 800620a:	2101      	movs	r1, #1
 800620c:	4638      	mov	r0, r7
 800620e:	f7ff fe4d 	bl	8005eac <_Balloc>
 8006212:	f240 2371 	movw	r3, #625	; 0x271
 8006216:	6143      	str	r3, [r0, #20]
 8006218:	2201      	movs	r2, #1
 800621a:	2300      	movs	r3, #0
 800621c:	6102      	str	r2, [r0, #16]
 800621e:	4606      	mov	r6, r0
 8006220:	64b8      	str	r0, [r7, #72]	; 0x48
 8006222:	6003      	str	r3, [r0, #0]
 8006224:	e7be      	b.n	80061a4 <__pow5mult+0x18>
 8006226:	bf00      	nop
 8006228:	08007218 	.word	0x08007218

0800622c <__lshift>:
 800622c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006230:	4691      	mov	r9, r2
 8006232:	690a      	ldr	r2, [r1, #16]
 8006234:	460e      	mov	r6, r1
 8006236:	ea4f 1469 	mov.w	r4, r9, asr #5
 800623a:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 800623e:	eb04 0802 	add.w	r8, r4, r2
 8006242:	f108 0501 	add.w	r5, r8, #1
 8006246:	429d      	cmp	r5, r3
 8006248:	4607      	mov	r7, r0
 800624a:	dd04      	ble.n	8006256 <__lshift+0x2a>
 800624c:	005b      	lsls	r3, r3, #1
 800624e:	429d      	cmp	r5, r3
 8006250:	f101 0101 	add.w	r1, r1, #1
 8006254:	dcfa      	bgt.n	800624c <__lshift+0x20>
 8006256:	4638      	mov	r0, r7
 8006258:	f7ff fe28 	bl	8005eac <_Balloc>
 800625c:	2c00      	cmp	r4, #0
 800625e:	f100 0314 	add.w	r3, r0, #20
 8006262:	dd37      	ble.n	80062d4 <__lshift+0xa8>
 8006264:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006268:	2200      	movs	r2, #0
 800626a:	f843 2b04 	str.w	r2, [r3], #4
 800626e:	428b      	cmp	r3, r1
 8006270:	d1fb      	bne.n	800626a <__lshift+0x3e>
 8006272:	6934      	ldr	r4, [r6, #16]
 8006274:	f106 0314 	add.w	r3, r6, #20
 8006278:	f019 091f 	ands.w	r9, r9, #31
 800627c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006280:	d020      	beq.n	80062c4 <__lshift+0x98>
 8006282:	f1c9 0e20 	rsb	lr, r9, #32
 8006286:	2200      	movs	r2, #0
 8006288:	e000      	b.n	800628c <__lshift+0x60>
 800628a:	4651      	mov	r1, sl
 800628c:	681c      	ldr	r4, [r3, #0]
 800628e:	468a      	mov	sl, r1
 8006290:	fa04 f409 	lsl.w	r4, r4, r9
 8006294:	4314      	orrs	r4, r2
 8006296:	f84a 4b04 	str.w	r4, [sl], #4
 800629a:	f853 2b04 	ldr.w	r2, [r3], #4
 800629e:	4563      	cmp	r3, ip
 80062a0:	fa22 f20e 	lsr.w	r2, r2, lr
 80062a4:	d3f1      	bcc.n	800628a <__lshift+0x5e>
 80062a6:	604a      	str	r2, [r1, #4]
 80062a8:	b10a      	cbz	r2, 80062ae <__lshift+0x82>
 80062aa:	f108 0502 	add.w	r5, r8, #2
 80062ae:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80062b0:	6872      	ldr	r2, [r6, #4]
 80062b2:	3d01      	subs	r5, #1
 80062b4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80062b8:	6105      	str	r5, [r0, #16]
 80062ba:	6031      	str	r1, [r6, #0]
 80062bc:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80062c0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80062c4:	3904      	subs	r1, #4
 80062c6:	f853 2b04 	ldr.w	r2, [r3], #4
 80062ca:	f841 2f04 	str.w	r2, [r1, #4]!
 80062ce:	459c      	cmp	ip, r3
 80062d0:	d8f9      	bhi.n	80062c6 <__lshift+0x9a>
 80062d2:	e7ec      	b.n	80062ae <__lshift+0x82>
 80062d4:	4619      	mov	r1, r3
 80062d6:	e7cc      	b.n	8006272 <__lshift+0x46>

080062d8 <__mcmp>:
 80062d8:	b430      	push	{r4, r5}
 80062da:	690b      	ldr	r3, [r1, #16]
 80062dc:	4605      	mov	r5, r0
 80062de:	6900      	ldr	r0, [r0, #16]
 80062e0:	1ac0      	subs	r0, r0, r3
 80062e2:	d10f      	bne.n	8006304 <__mcmp+0x2c>
 80062e4:	009b      	lsls	r3, r3, #2
 80062e6:	3514      	adds	r5, #20
 80062e8:	3114      	adds	r1, #20
 80062ea:	4419      	add	r1, r3
 80062ec:	442b      	add	r3, r5
 80062ee:	e001      	b.n	80062f4 <__mcmp+0x1c>
 80062f0:	429d      	cmp	r5, r3
 80062f2:	d207      	bcs.n	8006304 <__mcmp+0x2c>
 80062f4:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80062f8:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80062fc:	4294      	cmp	r4, r2
 80062fe:	d0f7      	beq.n	80062f0 <__mcmp+0x18>
 8006300:	d302      	bcc.n	8006308 <__mcmp+0x30>
 8006302:	2001      	movs	r0, #1
 8006304:	bc30      	pop	{r4, r5}
 8006306:	4770      	bx	lr
 8006308:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800630c:	e7fa      	b.n	8006304 <__mcmp+0x2c>
 800630e:	bf00      	nop

08006310 <__mdiff>:
 8006310:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006314:	6913      	ldr	r3, [r2, #16]
 8006316:	690d      	ldr	r5, [r1, #16]
 8006318:	1aed      	subs	r5, r5, r3
 800631a:	2d00      	cmp	r5, #0
 800631c:	460e      	mov	r6, r1
 800631e:	4690      	mov	r8, r2
 8006320:	f101 0414 	add.w	r4, r1, #20
 8006324:	f102 0714 	add.w	r7, r2, #20
 8006328:	d114      	bne.n	8006354 <__mdiff+0x44>
 800632a:	009b      	lsls	r3, r3, #2
 800632c:	18e2      	adds	r2, r4, r3
 800632e:	443b      	add	r3, r7
 8006330:	e001      	b.n	8006336 <__mdiff+0x26>
 8006332:	42a2      	cmp	r2, r4
 8006334:	d959      	bls.n	80063ea <__mdiff+0xda>
 8006336:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 800633a:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800633e:	458c      	cmp	ip, r1
 8006340:	d0f7      	beq.n	8006332 <__mdiff+0x22>
 8006342:	d209      	bcs.n	8006358 <__mdiff+0x48>
 8006344:	4622      	mov	r2, r4
 8006346:	4633      	mov	r3, r6
 8006348:	463c      	mov	r4, r7
 800634a:	4646      	mov	r6, r8
 800634c:	4617      	mov	r7, r2
 800634e:	4698      	mov	r8, r3
 8006350:	2501      	movs	r5, #1
 8006352:	e001      	b.n	8006358 <__mdiff+0x48>
 8006354:	dbf6      	blt.n	8006344 <__mdiff+0x34>
 8006356:	2500      	movs	r5, #0
 8006358:	6871      	ldr	r1, [r6, #4]
 800635a:	f7ff fda7 	bl	8005eac <_Balloc>
 800635e:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006362:	6936      	ldr	r6, [r6, #16]
 8006364:	60c5      	str	r5, [r0, #12]
 8006366:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 800636a:	46bc      	mov	ip, r7
 800636c:	f100 0514 	add.w	r5, r0, #20
 8006370:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006374:	2300      	movs	r3, #0
 8006376:	f85c 1b04 	ldr.w	r1, [ip], #4
 800637a:	f854 8b04 	ldr.w	r8, [r4], #4
 800637e:	b28a      	uxth	r2, r1
 8006380:	fa13 f388 	uxtah	r3, r3, r8
 8006384:	0c09      	lsrs	r1, r1, #16
 8006386:	1a9a      	subs	r2, r3, r2
 8006388:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 800638c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006390:	b292      	uxth	r2, r2
 8006392:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006396:	45e6      	cmp	lr, ip
 8006398:	f845 2b04 	str.w	r2, [r5], #4
 800639c:	ea4f 4323 	mov.w	r3, r3, asr #16
 80063a0:	d8e9      	bhi.n	8006376 <__mdiff+0x66>
 80063a2:	42a7      	cmp	r7, r4
 80063a4:	d917      	bls.n	80063d6 <__mdiff+0xc6>
 80063a6:	46ae      	mov	lr, r5
 80063a8:	46a4      	mov	ip, r4
 80063aa:	f85c 2b04 	ldr.w	r2, [ip], #4
 80063ae:	fa13 f382 	uxtah	r3, r3, r2
 80063b2:	1419      	asrs	r1, r3, #16
 80063b4:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80063b8:	b29b      	uxth	r3, r3
 80063ba:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80063be:	4567      	cmp	r7, ip
 80063c0:	f84e 2b04 	str.w	r2, [lr], #4
 80063c4:	ea4f 4321 	mov.w	r3, r1, asr #16
 80063c8:	d8ef      	bhi.n	80063aa <__mdiff+0x9a>
 80063ca:	43e4      	mvns	r4, r4
 80063cc:	4427      	add	r7, r4
 80063ce:	f027 0703 	bic.w	r7, r7, #3
 80063d2:	3704      	adds	r7, #4
 80063d4:	443d      	add	r5, r7
 80063d6:	3d04      	subs	r5, #4
 80063d8:	b922      	cbnz	r2, 80063e4 <__mdiff+0xd4>
 80063da:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80063de:	3e01      	subs	r6, #1
 80063e0:	2b00      	cmp	r3, #0
 80063e2:	d0fa      	beq.n	80063da <__mdiff+0xca>
 80063e4:	6106      	str	r6, [r0, #16]
 80063e6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80063ea:	2100      	movs	r1, #0
 80063ec:	f7ff fd5e 	bl	8005eac <_Balloc>
 80063f0:	2201      	movs	r2, #1
 80063f2:	2300      	movs	r3, #0
 80063f4:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80063f8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080063fc <__d2b>:
 80063fc:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006400:	460f      	mov	r7, r1
 8006402:	b083      	sub	sp, #12
 8006404:	2101      	movs	r1, #1
 8006406:	ec55 4b10 	vmov	r4, r5, d0
 800640a:	4616      	mov	r6, r2
 800640c:	f7ff fd4e 	bl	8005eac <_Balloc>
 8006410:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8006414:	4681      	mov	r9, r0
 8006416:	f3c5 0313 	ubfx	r3, r5, #0, #20
 800641a:	f1b8 0f00 	cmp.w	r8, #0
 800641e:	d001      	beq.n	8006424 <__d2b+0x28>
 8006420:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006424:	2c00      	cmp	r4, #0
 8006426:	9301      	str	r3, [sp, #4]
 8006428:	d024      	beq.n	8006474 <__d2b+0x78>
 800642a:	a802      	add	r0, sp, #8
 800642c:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006430:	f7ff fdcc 	bl	8005fcc <__lo0bits>
 8006434:	2800      	cmp	r0, #0
 8006436:	d136      	bne.n	80064a6 <__d2b+0xaa>
 8006438:	e9dd 2300 	ldrd	r2, r3, [sp]
 800643c:	f8c9 2014 	str.w	r2, [r9, #20]
 8006440:	2b00      	cmp	r3, #0
 8006442:	bf0c      	ite	eq
 8006444:	2101      	moveq	r1, #1
 8006446:	2102      	movne	r1, #2
 8006448:	f8c9 3018 	str.w	r3, [r9, #24]
 800644c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006450:	f1b8 0f00 	cmp.w	r8, #0
 8006454:	d11b      	bne.n	800648e <__d2b+0x92>
 8006456:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 800645a:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 800645e:	6038      	str	r0, [r7, #0]
 8006460:	6918      	ldr	r0, [r3, #16]
 8006462:	f7ff fd93 	bl	8005f8c <__hi0bits>
 8006466:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 800646a:	6030      	str	r0, [r6, #0]
 800646c:	4648      	mov	r0, r9
 800646e:	b003      	add	sp, #12
 8006470:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006474:	a801      	add	r0, sp, #4
 8006476:	f7ff fda9 	bl	8005fcc <__lo0bits>
 800647a:	9b01      	ldr	r3, [sp, #4]
 800647c:	f8c9 3014 	str.w	r3, [r9, #20]
 8006480:	2101      	movs	r1, #1
 8006482:	3020      	adds	r0, #32
 8006484:	f8c9 1010 	str.w	r1, [r9, #16]
 8006488:	f1b8 0f00 	cmp.w	r8, #0
 800648c:	d0e3      	beq.n	8006456 <__d2b+0x5a>
 800648e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006492:	eb08 0300 	add.w	r3, r8, r0
 8006496:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 800649a:	603b      	str	r3, [r7, #0]
 800649c:	6030      	str	r0, [r6, #0]
 800649e:	4648      	mov	r0, r9
 80064a0:	b003      	add	sp, #12
 80064a2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80064a6:	e9dd 1300 	ldrd	r1, r3, [sp]
 80064aa:	f1c0 0220 	rsb	r2, r0, #32
 80064ae:	fa03 f202 	lsl.w	r2, r3, r2
 80064b2:	430a      	orrs	r2, r1
 80064b4:	40c3      	lsrs	r3, r0
 80064b6:	9301      	str	r3, [sp, #4]
 80064b8:	f8c9 2014 	str.w	r2, [r9, #20]
 80064bc:	e7c0      	b.n	8006440 <__d2b+0x44>
 80064be:	bf00      	nop

080064c0 <_realloc_r>:
 80064c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80064c4:	4692      	mov	sl, r2
 80064c6:	b083      	sub	sp, #12
 80064c8:	2900      	cmp	r1, #0
 80064ca:	f000 80a1 	beq.w	8006610 <_realloc_r+0x150>
 80064ce:	460d      	mov	r5, r1
 80064d0:	4680      	mov	r8, r0
 80064d2:	f10a 040b 	add.w	r4, sl, #11
 80064d6:	f7ff fcdd 	bl	8005e94 <__malloc_lock>
 80064da:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80064de:	2c16      	cmp	r4, #22
 80064e0:	f022 0603 	bic.w	r6, r2, #3
 80064e4:	f1a5 0708 	sub.w	r7, r5, #8
 80064e8:	d83e      	bhi.n	8006568 <_realloc_r+0xa8>
 80064ea:	2410      	movs	r4, #16
 80064ec:	4621      	mov	r1, r4
 80064ee:	45a2      	cmp	sl, r4
 80064f0:	d83f      	bhi.n	8006572 <_realloc_r+0xb2>
 80064f2:	428e      	cmp	r6, r1
 80064f4:	eb07 0906 	add.w	r9, r7, r6
 80064f8:	da74      	bge.n	80065e4 <_realloc_r+0x124>
 80064fa:	4bc7      	ldr	r3, [pc, #796]	; (8006818 <_realloc_r+0x358>)
 80064fc:	6898      	ldr	r0, [r3, #8]
 80064fe:	4548      	cmp	r0, r9
 8006500:	f000 80aa 	beq.w	8006658 <_realloc_r+0x198>
 8006504:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006508:	f020 0301 	bic.w	r3, r0, #1
 800650c:	444b      	add	r3, r9
 800650e:	685b      	ldr	r3, [r3, #4]
 8006510:	07db      	lsls	r3, r3, #31
 8006512:	f140 8083 	bpl.w	800661c <_realloc_r+0x15c>
 8006516:	07d2      	lsls	r2, r2, #31
 8006518:	d534      	bpl.n	8006584 <_realloc_r+0xc4>
 800651a:	4651      	mov	r1, sl
 800651c:	4640      	mov	r0, r8
 800651e:	f7ff f9b1 	bl	8005884 <_malloc_r>
 8006522:	4682      	mov	sl, r0
 8006524:	b1e0      	cbz	r0, 8006560 <_realloc_r+0xa0>
 8006526:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800652a:	f023 0301 	bic.w	r3, r3, #1
 800652e:	443b      	add	r3, r7
 8006530:	f1a0 0208 	sub.w	r2, r0, #8
 8006534:	4293      	cmp	r3, r2
 8006536:	f000 80f9 	beq.w	800672c <_realloc_r+0x26c>
 800653a:	1f32      	subs	r2, r6, #4
 800653c:	2a24      	cmp	r2, #36	; 0x24
 800653e:	f200 8107 	bhi.w	8006750 <_realloc_r+0x290>
 8006542:	2a13      	cmp	r2, #19
 8006544:	6829      	ldr	r1, [r5, #0]
 8006546:	f200 80e6 	bhi.w	8006716 <_realloc_r+0x256>
 800654a:	4603      	mov	r3, r0
 800654c:	462a      	mov	r2, r5
 800654e:	6019      	str	r1, [r3, #0]
 8006550:	6851      	ldr	r1, [r2, #4]
 8006552:	6059      	str	r1, [r3, #4]
 8006554:	6892      	ldr	r2, [r2, #8]
 8006556:	609a      	str	r2, [r3, #8]
 8006558:	4629      	mov	r1, r5
 800655a:	4640      	mov	r0, r8
 800655c:	f7fe fe68 	bl	8005230 <_free_r>
 8006560:	4640      	mov	r0, r8
 8006562:	f7ff fc9d 	bl	8005ea0 <__malloc_unlock>
 8006566:	e04f      	b.n	8006608 <_realloc_r+0x148>
 8006568:	f024 0407 	bic.w	r4, r4, #7
 800656c:	2c00      	cmp	r4, #0
 800656e:	4621      	mov	r1, r4
 8006570:	dabd      	bge.n	80064ee <_realloc_r+0x2e>
 8006572:	f04f 0a00 	mov.w	sl, #0
 8006576:	230c      	movs	r3, #12
 8006578:	4650      	mov	r0, sl
 800657a:	f8c8 3000 	str.w	r3, [r8]
 800657e:	b003      	add	sp, #12
 8006580:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006584:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006588:	eba7 0b03 	sub.w	fp, r7, r3
 800658c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006590:	f022 0203 	bic.w	r2, r2, #3
 8006594:	18b3      	adds	r3, r6, r2
 8006596:	428b      	cmp	r3, r1
 8006598:	dbbf      	blt.n	800651a <_realloc_r+0x5a>
 800659a:	46da      	mov	sl, fp
 800659c:	f8db 100c 	ldr.w	r1, [fp, #12]
 80065a0:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80065a4:	1f32      	subs	r2, r6, #4
 80065a6:	2a24      	cmp	r2, #36	; 0x24
 80065a8:	60c1      	str	r1, [r0, #12]
 80065aa:	eb0b 0903 	add.w	r9, fp, r3
 80065ae:	6088      	str	r0, [r1, #8]
 80065b0:	f200 80c6 	bhi.w	8006740 <_realloc_r+0x280>
 80065b4:	2a13      	cmp	r2, #19
 80065b6:	6829      	ldr	r1, [r5, #0]
 80065b8:	f240 80c0 	bls.w	800673c <_realloc_r+0x27c>
 80065bc:	f8cb 1008 	str.w	r1, [fp, #8]
 80065c0:	6869      	ldr	r1, [r5, #4]
 80065c2:	f8cb 100c 	str.w	r1, [fp, #12]
 80065c6:	2a1b      	cmp	r2, #27
 80065c8:	68a9      	ldr	r1, [r5, #8]
 80065ca:	f200 80d8 	bhi.w	800677e <_realloc_r+0x2be>
 80065ce:	f10b 0210 	add.w	r2, fp, #16
 80065d2:	3508      	adds	r5, #8
 80065d4:	6011      	str	r1, [r2, #0]
 80065d6:	6869      	ldr	r1, [r5, #4]
 80065d8:	6051      	str	r1, [r2, #4]
 80065da:	68a9      	ldr	r1, [r5, #8]
 80065dc:	6091      	str	r1, [r2, #8]
 80065de:	461e      	mov	r6, r3
 80065e0:	465f      	mov	r7, fp
 80065e2:	4655      	mov	r5, sl
 80065e4:	687b      	ldr	r3, [r7, #4]
 80065e6:	1b32      	subs	r2, r6, r4
 80065e8:	2a0f      	cmp	r2, #15
 80065ea:	f003 0301 	and.w	r3, r3, #1
 80065ee:	d822      	bhi.n	8006636 <_realloc_r+0x176>
 80065f0:	4333      	orrs	r3, r6
 80065f2:	607b      	str	r3, [r7, #4]
 80065f4:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80065f8:	f043 0301 	orr.w	r3, r3, #1
 80065fc:	f8c9 3004 	str.w	r3, [r9, #4]
 8006600:	4640      	mov	r0, r8
 8006602:	f7ff fc4d 	bl	8005ea0 <__malloc_unlock>
 8006606:	46aa      	mov	sl, r5
 8006608:	4650      	mov	r0, sl
 800660a:	b003      	add	sp, #12
 800660c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006610:	4611      	mov	r1, r2
 8006612:	b003      	add	sp, #12
 8006614:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006618:	f7ff b934 	b.w	8005884 <_malloc_r>
 800661c:	f020 0003 	bic.w	r0, r0, #3
 8006620:	1833      	adds	r3, r6, r0
 8006622:	428b      	cmp	r3, r1
 8006624:	db61      	blt.n	80066ea <_realloc_r+0x22a>
 8006626:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800662a:	461e      	mov	r6, r3
 800662c:	60ca      	str	r2, [r1, #12]
 800662e:	eb07 0903 	add.w	r9, r7, r3
 8006632:	6091      	str	r1, [r2, #8]
 8006634:	e7d6      	b.n	80065e4 <_realloc_r+0x124>
 8006636:	1939      	adds	r1, r7, r4
 8006638:	4323      	orrs	r3, r4
 800663a:	f042 0201 	orr.w	r2, r2, #1
 800663e:	607b      	str	r3, [r7, #4]
 8006640:	604a      	str	r2, [r1, #4]
 8006642:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006646:	f043 0301 	orr.w	r3, r3, #1
 800664a:	3108      	adds	r1, #8
 800664c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006650:	4640      	mov	r0, r8
 8006652:	f7fe fded 	bl	8005230 <_free_r>
 8006656:	e7d3      	b.n	8006600 <_realloc_r+0x140>
 8006658:	6840      	ldr	r0, [r0, #4]
 800665a:	f020 0903 	bic.w	r9, r0, #3
 800665e:	44b1      	add	r9, r6
 8006660:	f104 0010 	add.w	r0, r4, #16
 8006664:	4581      	cmp	r9, r0
 8006666:	da77      	bge.n	8006758 <_realloc_r+0x298>
 8006668:	07d2      	lsls	r2, r2, #31
 800666a:	f53f af56 	bmi.w	800651a <_realloc_r+0x5a>
 800666e:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006672:	eba7 0b02 	sub.w	fp, r7, r2
 8006676:	f8db 2004 	ldr.w	r2, [fp, #4]
 800667a:	f022 0203 	bic.w	r2, r2, #3
 800667e:	4491      	add	r9, r2
 8006680:	4548      	cmp	r0, r9
 8006682:	dc87      	bgt.n	8006594 <_realloc_r+0xd4>
 8006684:	46da      	mov	sl, fp
 8006686:	f8db 100c 	ldr.w	r1, [fp, #12]
 800668a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800668e:	1f32      	subs	r2, r6, #4
 8006690:	2a24      	cmp	r2, #36	; 0x24
 8006692:	60c1      	str	r1, [r0, #12]
 8006694:	6088      	str	r0, [r1, #8]
 8006696:	f200 80a1 	bhi.w	80067dc <_realloc_r+0x31c>
 800669a:	2a13      	cmp	r2, #19
 800669c:	6829      	ldr	r1, [r5, #0]
 800669e:	f240 809b 	bls.w	80067d8 <_realloc_r+0x318>
 80066a2:	f8cb 1008 	str.w	r1, [fp, #8]
 80066a6:	6869      	ldr	r1, [r5, #4]
 80066a8:	f8cb 100c 	str.w	r1, [fp, #12]
 80066ac:	2a1b      	cmp	r2, #27
 80066ae:	68a9      	ldr	r1, [r5, #8]
 80066b0:	f200 809b 	bhi.w	80067ea <_realloc_r+0x32a>
 80066b4:	f10b 0210 	add.w	r2, fp, #16
 80066b8:	3508      	adds	r5, #8
 80066ba:	6011      	str	r1, [r2, #0]
 80066bc:	6869      	ldr	r1, [r5, #4]
 80066be:	6051      	str	r1, [r2, #4]
 80066c0:	68a9      	ldr	r1, [r5, #8]
 80066c2:	6091      	str	r1, [r2, #8]
 80066c4:	eb0b 0104 	add.w	r1, fp, r4
 80066c8:	eba9 0204 	sub.w	r2, r9, r4
 80066cc:	f042 0201 	orr.w	r2, r2, #1
 80066d0:	6099      	str	r1, [r3, #8]
 80066d2:	604a      	str	r2, [r1, #4]
 80066d4:	f8db 3004 	ldr.w	r3, [fp, #4]
 80066d8:	f003 0301 	and.w	r3, r3, #1
 80066dc:	431c      	orrs	r4, r3
 80066de:	4640      	mov	r0, r8
 80066e0:	f8cb 4004 	str.w	r4, [fp, #4]
 80066e4:	f7ff fbdc 	bl	8005ea0 <__malloc_unlock>
 80066e8:	e78e      	b.n	8006608 <_realloc_r+0x148>
 80066ea:	07d3      	lsls	r3, r2, #31
 80066ec:	f53f af15 	bmi.w	800651a <_realloc_r+0x5a>
 80066f0:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80066f4:	eba7 0b03 	sub.w	fp, r7, r3
 80066f8:	f8db 2004 	ldr.w	r2, [fp, #4]
 80066fc:	f022 0203 	bic.w	r2, r2, #3
 8006700:	4410      	add	r0, r2
 8006702:	1983      	adds	r3, r0, r6
 8006704:	428b      	cmp	r3, r1
 8006706:	f6ff af45 	blt.w	8006594 <_realloc_r+0xd4>
 800670a:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800670e:	46da      	mov	sl, fp
 8006710:	60ca      	str	r2, [r1, #12]
 8006712:	6091      	str	r1, [r2, #8]
 8006714:	e742      	b.n	800659c <_realloc_r+0xdc>
 8006716:	6001      	str	r1, [r0, #0]
 8006718:	686b      	ldr	r3, [r5, #4]
 800671a:	6043      	str	r3, [r0, #4]
 800671c:	2a1b      	cmp	r2, #27
 800671e:	d83a      	bhi.n	8006796 <_realloc_r+0x2d6>
 8006720:	f105 0208 	add.w	r2, r5, #8
 8006724:	f100 0308 	add.w	r3, r0, #8
 8006728:	68a9      	ldr	r1, [r5, #8]
 800672a:	e710      	b.n	800654e <_realloc_r+0x8e>
 800672c:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006730:	f023 0303 	bic.w	r3, r3, #3
 8006734:	441e      	add	r6, r3
 8006736:	eb07 0906 	add.w	r9, r7, r6
 800673a:	e753      	b.n	80065e4 <_realloc_r+0x124>
 800673c:	4652      	mov	r2, sl
 800673e:	e749      	b.n	80065d4 <_realloc_r+0x114>
 8006740:	4629      	mov	r1, r5
 8006742:	4650      	mov	r0, sl
 8006744:	461e      	mov	r6, r3
 8006746:	465f      	mov	r7, fp
 8006748:	f7ff fb40 	bl	8005dcc <memmove>
 800674c:	4655      	mov	r5, sl
 800674e:	e749      	b.n	80065e4 <_realloc_r+0x124>
 8006750:	4629      	mov	r1, r5
 8006752:	f7ff fb3b 	bl	8005dcc <memmove>
 8006756:	e6ff      	b.n	8006558 <_realloc_r+0x98>
 8006758:	4427      	add	r7, r4
 800675a:	eba9 0904 	sub.w	r9, r9, r4
 800675e:	f049 0201 	orr.w	r2, r9, #1
 8006762:	609f      	str	r7, [r3, #8]
 8006764:	607a      	str	r2, [r7, #4]
 8006766:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800676a:	f003 0301 	and.w	r3, r3, #1
 800676e:	431c      	orrs	r4, r3
 8006770:	4640      	mov	r0, r8
 8006772:	f845 4c04 	str.w	r4, [r5, #-4]
 8006776:	f7ff fb93 	bl	8005ea0 <__malloc_unlock>
 800677a:	46aa      	mov	sl, r5
 800677c:	e744      	b.n	8006608 <_realloc_r+0x148>
 800677e:	f8cb 1010 	str.w	r1, [fp, #16]
 8006782:	68e9      	ldr	r1, [r5, #12]
 8006784:	f8cb 1014 	str.w	r1, [fp, #20]
 8006788:	2a24      	cmp	r2, #36	; 0x24
 800678a:	d010      	beq.n	80067ae <_realloc_r+0x2ee>
 800678c:	6929      	ldr	r1, [r5, #16]
 800678e:	f10b 0218 	add.w	r2, fp, #24
 8006792:	3510      	adds	r5, #16
 8006794:	e71e      	b.n	80065d4 <_realloc_r+0x114>
 8006796:	68ab      	ldr	r3, [r5, #8]
 8006798:	6083      	str	r3, [r0, #8]
 800679a:	68eb      	ldr	r3, [r5, #12]
 800679c:	60c3      	str	r3, [r0, #12]
 800679e:	2a24      	cmp	r2, #36	; 0x24
 80067a0:	d010      	beq.n	80067c4 <_realloc_r+0x304>
 80067a2:	f105 0210 	add.w	r2, r5, #16
 80067a6:	f100 0310 	add.w	r3, r0, #16
 80067aa:	6929      	ldr	r1, [r5, #16]
 80067ac:	e6cf      	b.n	800654e <_realloc_r+0x8e>
 80067ae:	692a      	ldr	r2, [r5, #16]
 80067b0:	f8cb 2018 	str.w	r2, [fp, #24]
 80067b4:	696a      	ldr	r2, [r5, #20]
 80067b6:	f8cb 201c 	str.w	r2, [fp, #28]
 80067ba:	69a9      	ldr	r1, [r5, #24]
 80067bc:	f10b 0220 	add.w	r2, fp, #32
 80067c0:	3518      	adds	r5, #24
 80067c2:	e707      	b.n	80065d4 <_realloc_r+0x114>
 80067c4:	692b      	ldr	r3, [r5, #16]
 80067c6:	6103      	str	r3, [r0, #16]
 80067c8:	696b      	ldr	r3, [r5, #20]
 80067ca:	6143      	str	r3, [r0, #20]
 80067cc:	69a9      	ldr	r1, [r5, #24]
 80067ce:	f105 0218 	add.w	r2, r5, #24
 80067d2:	f100 0318 	add.w	r3, r0, #24
 80067d6:	e6ba      	b.n	800654e <_realloc_r+0x8e>
 80067d8:	4652      	mov	r2, sl
 80067da:	e76e      	b.n	80066ba <_realloc_r+0x1fa>
 80067dc:	4629      	mov	r1, r5
 80067de:	4650      	mov	r0, sl
 80067e0:	9301      	str	r3, [sp, #4]
 80067e2:	f7ff faf3 	bl	8005dcc <memmove>
 80067e6:	9b01      	ldr	r3, [sp, #4]
 80067e8:	e76c      	b.n	80066c4 <_realloc_r+0x204>
 80067ea:	f8cb 1010 	str.w	r1, [fp, #16]
 80067ee:	68e9      	ldr	r1, [r5, #12]
 80067f0:	f8cb 1014 	str.w	r1, [fp, #20]
 80067f4:	2a24      	cmp	r2, #36	; 0x24
 80067f6:	d004      	beq.n	8006802 <_realloc_r+0x342>
 80067f8:	6929      	ldr	r1, [r5, #16]
 80067fa:	f10b 0218 	add.w	r2, fp, #24
 80067fe:	3510      	adds	r5, #16
 8006800:	e75b      	b.n	80066ba <_realloc_r+0x1fa>
 8006802:	692a      	ldr	r2, [r5, #16]
 8006804:	f8cb 2018 	str.w	r2, [fp, #24]
 8006808:	696a      	ldr	r2, [r5, #20]
 800680a:	f8cb 201c 	str.w	r2, [fp, #28]
 800680e:	69a9      	ldr	r1, [r5, #24]
 8006810:	f10b 0220 	add.w	r2, fp, #32
 8006814:	3518      	adds	r5, #24
 8006816:	e750      	b.n	80066ba <_realloc_r+0x1fa>
 8006818:	200005dc 	.word	0x200005dc

0800681c <frexp>:
 800681c:	ec53 2b10 	vmov	r2, r3, d0
 8006820:	b570      	push	{r4, r5, r6, lr}
 8006822:	4e16      	ldr	r6, [pc, #88]	; (800687c <frexp+0x60>)
 8006824:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006828:	2500      	movs	r5, #0
 800682a:	42b1      	cmp	r1, r6
 800682c:	4604      	mov	r4, r0
 800682e:	6005      	str	r5, [r0, #0]
 8006830:	dc21      	bgt.n	8006876 <frexp+0x5a>
 8006832:	ee10 6a10 	vmov	r6, s0
 8006836:	430e      	orrs	r6, r1
 8006838:	d01d      	beq.n	8006876 <frexp+0x5a>
 800683a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800683e:	4618      	mov	r0, r3
 8006840:	da0c      	bge.n	800685c <frexp+0x40>
 8006842:	4619      	mov	r1, r3
 8006844:	2200      	movs	r2, #0
 8006846:	ee10 0a10 	vmov	r0, s0
 800684a:	4b0d      	ldr	r3, [pc, #52]	; (8006880 <frexp+0x64>)
 800684c:	f7fa f974 	bl	8000b38 <__aeabi_dmul>
 8006850:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006854:	4602      	mov	r2, r0
 8006856:	4608      	mov	r0, r1
 8006858:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 800685c:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006860:	1509      	asrs	r1, r1, #20
 8006862:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006866:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 800686a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 800686e:	4429      	add	r1, r5
 8006870:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006874:	6021      	str	r1, [r4, #0]
 8006876:	ec43 2b10 	vmov	d0, r2, r3
 800687a:	bd70      	pop	{r4, r5, r6, pc}
 800687c:	7fefffff 	.word	0x7fefffff
 8006880:	43500000 	.word	0x43500000

08006884 <_sbrk_r>:
 8006884:	b538      	push	{r3, r4, r5, lr}
 8006886:	4c07      	ldr	r4, [pc, #28]	; (80068a4 <_sbrk_r+0x20>)
 8006888:	2300      	movs	r3, #0
 800688a:	4605      	mov	r5, r0
 800688c:	4608      	mov	r0, r1
 800688e:	6023      	str	r3, [r4, #0]
 8006890:	f7fb fc33 	bl	80020fa <_sbrk>
 8006894:	1c43      	adds	r3, r0, #1
 8006896:	d000      	beq.n	800689a <_sbrk_r+0x16>
 8006898:	bd38      	pop	{r3, r4, r5, pc}
 800689a:	6823      	ldr	r3, [r4, #0]
 800689c:	2b00      	cmp	r3, #0
 800689e:	d0fb      	beq.n	8006898 <_sbrk_r+0x14>
 80068a0:	602b      	str	r3, [r5, #0]
 80068a2:	bd38      	pop	{r3, r4, r5, pc}
 80068a4:	20000c9c 	.word	0x20000c9c

080068a8 <__sread>:
 80068a8:	b510      	push	{r4, lr}
 80068aa:	460c      	mov	r4, r1
 80068ac:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80068b0:	f000 fabc 	bl	8006e2c <_read_r>
 80068b4:	2800      	cmp	r0, #0
 80068b6:	db03      	blt.n	80068c0 <__sread+0x18>
 80068b8:	6d23      	ldr	r3, [r4, #80]	; 0x50
 80068ba:	4403      	add	r3, r0
 80068bc:	6523      	str	r3, [r4, #80]	; 0x50
 80068be:	bd10      	pop	{r4, pc}
 80068c0:	89a3      	ldrh	r3, [r4, #12]
 80068c2:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 80068c6:	81a3      	strh	r3, [r4, #12]
 80068c8:	bd10      	pop	{r4, pc}
 80068ca:	bf00      	nop

080068cc <__swrite>:
 80068cc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80068d0:	4616      	mov	r6, r2
 80068d2:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 80068d6:	461f      	mov	r7, r3
 80068d8:	05d3      	lsls	r3, r2, #23
 80068da:	460c      	mov	r4, r1
 80068dc:	4605      	mov	r5, r0
 80068de:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80068e2:	d507      	bpl.n	80068f4 <__swrite+0x28>
 80068e4:	2200      	movs	r2, #0
 80068e6:	2302      	movs	r3, #2
 80068e8:	f000 fa74 	bl	8006dd4 <_lseek_r>
 80068ec:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80068f0:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80068f4:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 80068f8:	81a2      	strh	r2, [r4, #12]
 80068fa:	463b      	mov	r3, r7
 80068fc:	4632      	mov	r2, r6
 80068fe:	4628      	mov	r0, r5
 8006900:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006904:	f000 b88c 	b.w	8006a20 <_write_r>

08006908 <__sseek>:
 8006908:	b510      	push	{r4, lr}
 800690a:	460c      	mov	r4, r1
 800690c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006910:	f000 fa60 	bl	8006dd4 <_lseek_r>
 8006914:	89a3      	ldrh	r3, [r4, #12]
 8006916:	1c42      	adds	r2, r0, #1
 8006918:	bf0e      	itee	eq
 800691a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 800691e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006922:	6520      	strne	r0, [r4, #80]	; 0x50
 8006924:	81a3      	strh	r3, [r4, #12]
 8006926:	bd10      	pop	{r4, pc}

08006928 <__sclose>:
 8006928:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800692c:	f000 b922 	b.w	8006b74 <_close_r>

08006930 <strncpy>:
 8006930:	ea40 0301 	orr.w	r3, r0, r1
 8006934:	079b      	lsls	r3, r3, #30
 8006936:	b470      	push	{r4, r5, r6}
 8006938:	d12a      	bne.n	8006990 <strncpy+0x60>
 800693a:	2a03      	cmp	r2, #3
 800693c:	d928      	bls.n	8006990 <strncpy+0x60>
 800693e:	460c      	mov	r4, r1
 8006940:	4603      	mov	r3, r0
 8006942:	4621      	mov	r1, r4
 8006944:	f854 6b04 	ldr.w	r6, [r4], #4
 8006948:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 800694c:	ea25 0506 	bic.w	r5, r5, r6
 8006950:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006954:	d106      	bne.n	8006964 <strncpy+0x34>
 8006956:	3a04      	subs	r2, #4
 8006958:	2a03      	cmp	r2, #3
 800695a:	f843 6b04 	str.w	r6, [r3], #4
 800695e:	4621      	mov	r1, r4
 8006960:	d8ef      	bhi.n	8006942 <strncpy+0x12>
 8006962:	b19a      	cbz	r2, 800698c <strncpy+0x5c>
 8006964:	780c      	ldrb	r4, [r1, #0]
 8006966:	701c      	strb	r4, [r3, #0]
 8006968:	3a01      	subs	r2, #1
 800696a:	3301      	adds	r3, #1
 800696c:	b13c      	cbz	r4, 800697e <strncpy+0x4e>
 800696e:	b16a      	cbz	r2, 800698c <strncpy+0x5c>
 8006970:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006974:	f803 4b01 	strb.w	r4, [r3], #1
 8006978:	3a01      	subs	r2, #1
 800697a:	2c00      	cmp	r4, #0
 800697c:	d1f7      	bne.n	800696e <strncpy+0x3e>
 800697e:	b12a      	cbz	r2, 800698c <strncpy+0x5c>
 8006980:	441a      	add	r2, r3
 8006982:	2100      	movs	r1, #0
 8006984:	f803 1b01 	strb.w	r1, [r3], #1
 8006988:	4293      	cmp	r3, r2
 800698a:	d1fb      	bne.n	8006984 <strncpy+0x54>
 800698c:	bc70      	pop	{r4, r5, r6}
 800698e:	4770      	bx	lr
 8006990:	4603      	mov	r3, r0
 8006992:	e7e6      	b.n	8006962 <strncpy+0x32>

08006994 <__sprint_r.part.0>:
 8006994:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006998:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 800699a:	049c      	lsls	r4, r3, #18
 800699c:	4692      	mov	sl, r2
 800699e:	d52d      	bpl.n	80069fc <__sprint_r.part.0+0x68>
 80069a0:	6893      	ldr	r3, [r2, #8]
 80069a2:	6812      	ldr	r2, [r2, #0]
 80069a4:	b343      	cbz	r3, 80069f8 <__sprint_r.part.0+0x64>
 80069a6:	460e      	mov	r6, r1
 80069a8:	4607      	mov	r7, r0
 80069aa:	f102 0908 	add.w	r9, r2, #8
 80069ae:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 80069b2:	ea5f 089b 	movs.w	r8, fp, lsr #2
 80069b6:	d015      	beq.n	80069e4 <__sprint_r.part.0+0x50>
 80069b8:	3d04      	subs	r5, #4
 80069ba:	2400      	movs	r4, #0
 80069bc:	e001      	b.n	80069c2 <__sprint_r.part.0+0x2e>
 80069be:	45a0      	cmp	r8, r4
 80069c0:	d00e      	beq.n	80069e0 <__sprint_r.part.0+0x4c>
 80069c2:	4632      	mov	r2, r6
 80069c4:	f855 1f04 	ldr.w	r1, [r5, #4]!
 80069c8:	4638      	mov	r0, r7
 80069ca:	f000 f99d 	bl	8006d08 <_fputwc_r>
 80069ce:	1c43      	adds	r3, r0, #1
 80069d0:	f104 0401 	add.w	r4, r4, #1
 80069d4:	d1f3      	bne.n	80069be <__sprint_r.part.0+0x2a>
 80069d6:	2300      	movs	r3, #0
 80069d8:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80069dc:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80069e0:	f8da 3008 	ldr.w	r3, [sl, #8]
 80069e4:	f02b 0b03 	bic.w	fp, fp, #3
 80069e8:	eba3 030b 	sub.w	r3, r3, fp
 80069ec:	f8ca 3008 	str.w	r3, [sl, #8]
 80069f0:	f109 0908 	add.w	r9, r9, #8
 80069f4:	2b00      	cmp	r3, #0
 80069f6:	d1da      	bne.n	80069ae <__sprint_r.part.0+0x1a>
 80069f8:	2000      	movs	r0, #0
 80069fa:	e7ec      	b.n	80069d6 <__sprint_r.part.0+0x42>
 80069fc:	f7fe fd0c 	bl	8005418 <__sfvwrite_r>
 8006a00:	2300      	movs	r3, #0
 8006a02:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006a06:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a0a:	bf00      	nop

08006a0c <__sprint_r>:
 8006a0c:	6893      	ldr	r3, [r2, #8]
 8006a0e:	b10b      	cbz	r3, 8006a14 <__sprint_r+0x8>
 8006a10:	f7ff bfc0 	b.w	8006994 <__sprint_r.part.0>
 8006a14:	b410      	push	{r4}
 8006a16:	4618      	mov	r0, r3
 8006a18:	6053      	str	r3, [r2, #4]
 8006a1a:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006a1e:	4770      	bx	lr

08006a20 <_write_r>:
 8006a20:	b570      	push	{r4, r5, r6, lr}
 8006a22:	460d      	mov	r5, r1
 8006a24:	4c08      	ldr	r4, [pc, #32]	; (8006a48 <_write_r+0x28>)
 8006a26:	4611      	mov	r1, r2
 8006a28:	4606      	mov	r6, r0
 8006a2a:	461a      	mov	r2, r3
 8006a2c:	4628      	mov	r0, r5
 8006a2e:	2300      	movs	r3, #0
 8006a30:	6023      	str	r3, [r4, #0]
 8006a32:	f7fb fb4f 	bl	80020d4 <_write>
 8006a36:	1c43      	adds	r3, r0, #1
 8006a38:	d000      	beq.n	8006a3c <_write_r+0x1c>
 8006a3a:	bd70      	pop	{r4, r5, r6, pc}
 8006a3c:	6823      	ldr	r3, [r4, #0]
 8006a3e:	2b00      	cmp	r3, #0
 8006a40:	d0fb      	beq.n	8006a3a <_write_r+0x1a>
 8006a42:	6033      	str	r3, [r6, #0]
 8006a44:	bd70      	pop	{r4, r5, r6, pc}
 8006a46:	bf00      	nop
 8006a48:	20000c9c 	.word	0x20000c9c

08006a4c <__register_exitproc>:
 8006a4c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006a50:	4d2b      	ldr	r5, [pc, #172]	; (8006b00 <__register_exitproc+0xb4>)
 8006a52:	4606      	mov	r6, r0
 8006a54:	6828      	ldr	r0, [r5, #0]
 8006a56:	4698      	mov	r8, r3
 8006a58:	460f      	mov	r7, r1
 8006a5a:	4691      	mov	r9, r2
 8006a5c:	f7fe fe96 	bl	800578c <__retarget_lock_acquire_recursive>
 8006a60:	4b28      	ldr	r3, [pc, #160]	; (8006b04 <__register_exitproc+0xb8>)
 8006a62:	681c      	ldr	r4, [r3, #0]
 8006a64:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006a68:	2b00      	cmp	r3, #0
 8006a6a:	d03d      	beq.n	8006ae8 <__register_exitproc+0x9c>
 8006a6c:	685a      	ldr	r2, [r3, #4]
 8006a6e:	2a1f      	cmp	r2, #31
 8006a70:	dc0d      	bgt.n	8006a8e <__register_exitproc+0x42>
 8006a72:	f102 0c01 	add.w	ip, r2, #1
 8006a76:	bb16      	cbnz	r6, 8006abe <__register_exitproc+0x72>
 8006a78:	3202      	adds	r2, #2
 8006a7a:	f8c3 c004 	str.w	ip, [r3, #4]
 8006a7e:	6828      	ldr	r0, [r5, #0]
 8006a80:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006a84:	f7fe fe84 	bl	8005790 <__retarget_lock_release_recursive>
 8006a88:	2000      	movs	r0, #0
 8006a8a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006a8e:	4b1e      	ldr	r3, [pc, #120]	; (8006b08 <__register_exitproc+0xbc>)
 8006a90:	b37b      	cbz	r3, 8006af2 <__register_exitproc+0xa6>
 8006a92:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006a96:	f3af 8000 	nop.w
 8006a9a:	4603      	mov	r3, r0
 8006a9c:	b348      	cbz	r0, 8006af2 <__register_exitproc+0xa6>
 8006a9e:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006aa2:	2100      	movs	r1, #0
 8006aa4:	e9c0 2100 	strd	r2, r1, [r0]
 8006aa8:	f04f 0c01 	mov.w	ip, #1
 8006aac:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006ab0:	460a      	mov	r2, r1
 8006ab2:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006ab6:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006aba:	2e00      	cmp	r6, #0
 8006abc:	d0dc      	beq.n	8006a78 <__register_exitproc+0x2c>
 8006abe:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006ac2:	2401      	movs	r4, #1
 8006ac4:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006ac8:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006acc:	4094      	lsls	r4, r2
 8006ace:	4320      	orrs	r0, r4
 8006ad0:	2e02      	cmp	r6, #2
 8006ad2:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006ad6:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006ada:	d1cd      	bne.n	8006a78 <__register_exitproc+0x2c>
 8006adc:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006ae0:	430c      	orrs	r4, r1
 8006ae2:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006ae6:	e7c7      	b.n	8006a78 <__register_exitproc+0x2c>
 8006ae8:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006aec:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006af0:	e7bc      	b.n	8006a6c <__register_exitproc+0x20>
 8006af2:	6828      	ldr	r0, [r5, #0]
 8006af4:	f7fe fe4c 	bl	8005790 <__retarget_lock_release_recursive>
 8006af8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006afc:	e7c5      	b.n	8006a8a <__register_exitproc+0x3e>
 8006afe:	bf00      	nop
 8006b00:	200005d8 	.word	0x200005d8
 8006b04:	080070a8 	.word	0x080070a8
 8006b08:	00000000 	.word	0x00000000

08006b0c <_calloc_r>:
 8006b0c:	b510      	push	{r4, lr}
 8006b0e:	fb02 f101 	mul.w	r1, r2, r1
 8006b12:	f7fe feb7 	bl	8005884 <_malloc_r>
 8006b16:	4604      	mov	r4, r0
 8006b18:	b1d8      	cbz	r0, 8006b52 <_calloc_r+0x46>
 8006b1a:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006b1e:	f022 0203 	bic.w	r2, r2, #3
 8006b22:	3a04      	subs	r2, #4
 8006b24:	2a24      	cmp	r2, #36	; 0x24
 8006b26:	d81d      	bhi.n	8006b64 <_calloc_r+0x58>
 8006b28:	2a13      	cmp	r2, #19
 8006b2a:	d914      	bls.n	8006b56 <_calloc_r+0x4a>
 8006b2c:	2300      	movs	r3, #0
 8006b2e:	2a1b      	cmp	r2, #27
 8006b30:	e9c0 3300 	strd	r3, r3, [r0]
 8006b34:	d91b      	bls.n	8006b6e <_calloc_r+0x62>
 8006b36:	2a24      	cmp	r2, #36	; 0x24
 8006b38:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006b3c:	bf0a      	itet	eq
 8006b3e:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006b42:	f100 0210 	addne.w	r2, r0, #16
 8006b46:	f100 0218 	addeq.w	r2, r0, #24
 8006b4a:	2300      	movs	r3, #0
 8006b4c:	e9c2 3300 	strd	r3, r3, [r2]
 8006b50:	6093      	str	r3, [r2, #8]
 8006b52:	4620      	mov	r0, r4
 8006b54:	bd10      	pop	{r4, pc}
 8006b56:	4602      	mov	r2, r0
 8006b58:	2300      	movs	r3, #0
 8006b5a:	e9c2 3300 	strd	r3, r3, [r2]
 8006b5e:	6093      	str	r3, [r2, #8]
 8006b60:	4620      	mov	r0, r4
 8006b62:	bd10      	pop	{r4, pc}
 8006b64:	2100      	movs	r1, #0
 8006b66:	f7fb fb6d 	bl	8002244 <memset>
 8006b6a:	4620      	mov	r0, r4
 8006b6c:	bd10      	pop	{r4, pc}
 8006b6e:	f100 0208 	add.w	r2, r0, #8
 8006b72:	e7f1      	b.n	8006b58 <_calloc_r+0x4c>

08006b74 <_close_r>:
 8006b74:	b538      	push	{r3, r4, r5, lr}
 8006b76:	4c07      	ldr	r4, [pc, #28]	; (8006b94 <_close_r+0x20>)
 8006b78:	2300      	movs	r3, #0
 8006b7a:	4605      	mov	r5, r0
 8006b7c:	4608      	mov	r0, r1
 8006b7e:	6023      	str	r3, [r4, #0]
 8006b80:	f7fb fad7 	bl	8002132 <_close>
 8006b84:	1c43      	adds	r3, r0, #1
 8006b86:	d000      	beq.n	8006b8a <_close_r+0x16>
 8006b88:	bd38      	pop	{r3, r4, r5, pc}
 8006b8a:	6823      	ldr	r3, [r4, #0]
 8006b8c:	2b00      	cmp	r3, #0
 8006b8e:	d0fb      	beq.n	8006b88 <_close_r+0x14>
 8006b90:	602b      	str	r3, [r5, #0]
 8006b92:	bd38      	pop	{r3, r4, r5, pc}
 8006b94:	20000c9c 	.word	0x20000c9c

08006b98 <_fclose_r>:
 8006b98:	b570      	push	{r4, r5, r6, lr}
 8006b9a:	2900      	cmp	r1, #0
 8006b9c:	d048      	beq.n	8006c30 <_fclose_r+0x98>
 8006b9e:	4605      	mov	r5, r0
 8006ba0:	460c      	mov	r4, r1
 8006ba2:	b110      	cbz	r0, 8006baa <_fclose_r+0x12>
 8006ba4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006ba6:	2b00      	cmp	r3, #0
 8006ba8:	d048      	beq.n	8006c3c <_fclose_r+0xa4>
 8006baa:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006bac:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006bb0:	07d0      	lsls	r0, r2, #31
 8006bb2:	d440      	bmi.n	8006c36 <_fclose_r+0x9e>
 8006bb4:	0599      	lsls	r1, r3, #22
 8006bb6:	d530      	bpl.n	8006c1a <_fclose_r+0x82>
 8006bb8:	4621      	mov	r1, r4
 8006bba:	4628      	mov	r0, r5
 8006bbc:	f7fe f990 	bl	8004ee0 <__sflush_r>
 8006bc0:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006bc2:	4606      	mov	r6, r0
 8006bc4:	b133      	cbz	r3, 8006bd4 <_fclose_r+0x3c>
 8006bc6:	69e1      	ldr	r1, [r4, #28]
 8006bc8:	4628      	mov	r0, r5
 8006bca:	4798      	blx	r3
 8006bcc:	2800      	cmp	r0, #0
 8006bce:	bfb8      	it	lt
 8006bd0:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006bd4:	89a3      	ldrh	r3, [r4, #12]
 8006bd6:	061a      	lsls	r2, r3, #24
 8006bd8:	d43c      	bmi.n	8006c54 <_fclose_r+0xbc>
 8006bda:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006bdc:	b141      	cbz	r1, 8006bf0 <_fclose_r+0x58>
 8006bde:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006be2:	4299      	cmp	r1, r3
 8006be4:	d002      	beq.n	8006bec <_fclose_r+0x54>
 8006be6:	4628      	mov	r0, r5
 8006be8:	f7fe fb22 	bl	8005230 <_free_r>
 8006bec:	2300      	movs	r3, #0
 8006bee:	6323      	str	r3, [r4, #48]	; 0x30
 8006bf0:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006bf2:	b121      	cbz	r1, 8006bfe <_fclose_r+0x66>
 8006bf4:	4628      	mov	r0, r5
 8006bf6:	f7fe fb1b 	bl	8005230 <_free_r>
 8006bfa:	2300      	movs	r3, #0
 8006bfc:	6463      	str	r3, [r4, #68]	; 0x44
 8006bfe:	f7fe faa1 	bl	8005144 <__sfp_lock_acquire>
 8006c02:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006c04:	2200      	movs	r2, #0
 8006c06:	07db      	lsls	r3, r3, #31
 8006c08:	81a2      	strh	r2, [r4, #12]
 8006c0a:	d51f      	bpl.n	8006c4c <_fclose_r+0xb4>
 8006c0c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c0e:	f7fe fdbb 	bl	8005788 <__retarget_lock_close_recursive>
 8006c12:	f7fe fa9d 	bl	8005150 <__sfp_lock_release>
 8006c16:	4630      	mov	r0, r6
 8006c18:	bd70      	pop	{r4, r5, r6, pc}
 8006c1a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c1c:	f7fe fdb6 	bl	800578c <__retarget_lock_acquire_recursive>
 8006c20:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c24:	2b00      	cmp	r3, #0
 8006c26:	d1c7      	bne.n	8006bb8 <_fclose_r+0x20>
 8006c28:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006c2a:	f016 0601 	ands.w	r6, r6, #1
 8006c2e:	d016      	beq.n	8006c5e <_fclose_r+0xc6>
 8006c30:	2600      	movs	r6, #0
 8006c32:	4630      	mov	r0, r6
 8006c34:	bd70      	pop	{r4, r5, r6, pc}
 8006c36:	2b00      	cmp	r3, #0
 8006c38:	d0fa      	beq.n	8006c30 <_fclose_r+0x98>
 8006c3a:	e7bd      	b.n	8006bb8 <_fclose_r+0x20>
 8006c3c:	f7fe fa56 	bl	80050ec <__sinit>
 8006c40:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c42:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c46:	07d0      	lsls	r0, r2, #31
 8006c48:	d4f5      	bmi.n	8006c36 <_fclose_r+0x9e>
 8006c4a:	e7b3      	b.n	8006bb4 <_fclose_r+0x1c>
 8006c4c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c4e:	f7fe fd9f 	bl	8005790 <__retarget_lock_release_recursive>
 8006c52:	e7db      	b.n	8006c0c <_fclose_r+0x74>
 8006c54:	6921      	ldr	r1, [r4, #16]
 8006c56:	4628      	mov	r0, r5
 8006c58:	f7fe faea 	bl	8005230 <_free_r>
 8006c5c:	e7bd      	b.n	8006bda <_fclose_r+0x42>
 8006c5e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c60:	f7fe fd96 	bl	8005790 <__retarget_lock_release_recursive>
 8006c64:	4630      	mov	r0, r6
 8006c66:	bd70      	pop	{r4, r5, r6, pc}

08006c68 <__fputwc>:
 8006c68:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006c6c:	b082      	sub	sp, #8
 8006c6e:	4681      	mov	r9, r0
 8006c70:	4688      	mov	r8, r1
 8006c72:	4614      	mov	r4, r2
 8006c74:	f000 f8a0 	bl	8006db8 <__locale_mb_cur_max>
 8006c78:	2801      	cmp	r0, #1
 8006c7a:	d103      	bne.n	8006c84 <__fputwc+0x1c>
 8006c7c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006c80:	2bfe      	cmp	r3, #254	; 0xfe
 8006c82:	d933      	bls.n	8006cec <__fputwc+0x84>
 8006c84:	4642      	mov	r2, r8
 8006c86:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006c8a:	a901      	add	r1, sp, #4
 8006c8c:	4648      	mov	r0, r9
 8006c8e:	f000 f93b 	bl	8006f08 <_wcrtomb_r>
 8006c92:	1c42      	adds	r2, r0, #1
 8006c94:	4606      	mov	r6, r0
 8006c96:	d02f      	beq.n	8006cf8 <__fputwc+0x90>
 8006c98:	b320      	cbz	r0, 8006ce4 <__fputwc+0x7c>
 8006c9a:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006c9e:	2500      	movs	r5, #0
 8006ca0:	f10d 0a04 	add.w	sl, sp, #4
 8006ca4:	e009      	b.n	8006cba <__fputwc+0x52>
 8006ca6:	6823      	ldr	r3, [r4, #0]
 8006ca8:	1c5a      	adds	r2, r3, #1
 8006caa:	6022      	str	r2, [r4, #0]
 8006cac:	f883 c000 	strb.w	ip, [r3]
 8006cb0:	3501      	adds	r5, #1
 8006cb2:	42b5      	cmp	r5, r6
 8006cb4:	d216      	bcs.n	8006ce4 <__fputwc+0x7c>
 8006cb6:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006cba:	68a3      	ldr	r3, [r4, #8]
 8006cbc:	3b01      	subs	r3, #1
 8006cbe:	2b00      	cmp	r3, #0
 8006cc0:	60a3      	str	r3, [r4, #8]
 8006cc2:	daf0      	bge.n	8006ca6 <__fputwc+0x3e>
 8006cc4:	69a7      	ldr	r7, [r4, #24]
 8006cc6:	42bb      	cmp	r3, r7
 8006cc8:	4661      	mov	r1, ip
 8006cca:	4622      	mov	r2, r4
 8006ccc:	4648      	mov	r0, r9
 8006cce:	db02      	blt.n	8006cd6 <__fputwc+0x6e>
 8006cd0:	f1bc 0f0a 	cmp.w	ip, #10
 8006cd4:	d1e7      	bne.n	8006ca6 <__fputwc+0x3e>
 8006cd6:	f000 f8bf 	bl	8006e58 <__swbuf_r>
 8006cda:	1c43      	adds	r3, r0, #1
 8006cdc:	d1e8      	bne.n	8006cb0 <__fputwc+0x48>
 8006cde:	b002      	add	sp, #8
 8006ce0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006ce4:	4640      	mov	r0, r8
 8006ce6:	b002      	add	sp, #8
 8006ce8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006cec:	fa5f fc88 	uxtb.w	ip, r8
 8006cf0:	4606      	mov	r6, r0
 8006cf2:	f88d c004 	strb.w	ip, [sp, #4]
 8006cf6:	e7d2      	b.n	8006c9e <__fputwc+0x36>
 8006cf8:	89a3      	ldrh	r3, [r4, #12]
 8006cfa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006cfe:	81a3      	strh	r3, [r4, #12]
 8006d00:	b002      	add	sp, #8
 8006d02:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d06:	bf00      	nop

08006d08 <_fputwc_r>:
 8006d08:	b530      	push	{r4, r5, lr}
 8006d0a:	4605      	mov	r5, r0
 8006d0c:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006d0e:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006d12:	07c0      	lsls	r0, r0, #31
 8006d14:	4614      	mov	r4, r2
 8006d16:	b083      	sub	sp, #12
 8006d18:	b29a      	uxth	r2, r3
 8006d1a:	d401      	bmi.n	8006d20 <_fputwc_r+0x18>
 8006d1c:	0590      	lsls	r0, r2, #22
 8006d1e:	d51c      	bpl.n	8006d5a <_fputwc_r+0x52>
 8006d20:	0490      	lsls	r0, r2, #18
 8006d22:	d406      	bmi.n	8006d32 <_fputwc_r+0x2a>
 8006d24:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006d26:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006d2a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006d2e:	81a3      	strh	r3, [r4, #12]
 8006d30:	6662      	str	r2, [r4, #100]	; 0x64
 8006d32:	4628      	mov	r0, r5
 8006d34:	4622      	mov	r2, r4
 8006d36:	f7ff ff97 	bl	8006c68 <__fputwc>
 8006d3a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006d3c:	07da      	lsls	r2, r3, #31
 8006d3e:	4605      	mov	r5, r0
 8006d40:	d402      	bmi.n	8006d48 <_fputwc_r+0x40>
 8006d42:	89a3      	ldrh	r3, [r4, #12]
 8006d44:	059b      	lsls	r3, r3, #22
 8006d46:	d502      	bpl.n	8006d4e <_fputwc_r+0x46>
 8006d48:	4628      	mov	r0, r5
 8006d4a:	b003      	add	sp, #12
 8006d4c:	bd30      	pop	{r4, r5, pc}
 8006d4e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d50:	f7fe fd1e 	bl	8005790 <__retarget_lock_release_recursive>
 8006d54:	4628      	mov	r0, r5
 8006d56:	b003      	add	sp, #12
 8006d58:	bd30      	pop	{r4, r5, pc}
 8006d5a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d5c:	9101      	str	r1, [sp, #4]
 8006d5e:	f7fe fd15 	bl	800578c <__retarget_lock_acquire_recursive>
 8006d62:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d66:	9901      	ldr	r1, [sp, #4]
 8006d68:	b29a      	uxth	r2, r3
 8006d6a:	e7d9      	b.n	8006d20 <_fputwc_r+0x18>

08006d6c <_fstat_r>:
 8006d6c:	b538      	push	{r3, r4, r5, lr}
 8006d6e:	460b      	mov	r3, r1
 8006d70:	4c07      	ldr	r4, [pc, #28]	; (8006d90 <_fstat_r+0x24>)
 8006d72:	4605      	mov	r5, r0
 8006d74:	4611      	mov	r1, r2
 8006d76:	4618      	mov	r0, r3
 8006d78:	2300      	movs	r3, #0
 8006d7a:	6023      	str	r3, [r4, #0]
 8006d7c:	f7fb f9dc 	bl	8002138 <_fstat>
 8006d80:	1c43      	adds	r3, r0, #1
 8006d82:	d000      	beq.n	8006d86 <_fstat_r+0x1a>
 8006d84:	bd38      	pop	{r3, r4, r5, pc}
 8006d86:	6823      	ldr	r3, [r4, #0]
 8006d88:	2b00      	cmp	r3, #0
 8006d8a:	d0fb      	beq.n	8006d84 <_fstat_r+0x18>
 8006d8c:	602b      	str	r3, [r5, #0]
 8006d8e:	bd38      	pop	{r3, r4, r5, pc}
 8006d90:	20000c9c 	.word	0x20000c9c

08006d94 <_isatty_r>:
 8006d94:	b538      	push	{r3, r4, r5, lr}
 8006d96:	4c07      	ldr	r4, [pc, #28]	; (8006db4 <_isatty_r+0x20>)
 8006d98:	2300      	movs	r3, #0
 8006d9a:	4605      	mov	r5, r0
 8006d9c:	4608      	mov	r0, r1
 8006d9e:	6023      	str	r3, [r4, #0]
 8006da0:	f7fb f9cf 	bl	8002142 <_isatty>
 8006da4:	1c43      	adds	r3, r0, #1
 8006da6:	d000      	beq.n	8006daa <_isatty_r+0x16>
 8006da8:	bd38      	pop	{r3, r4, r5, pc}
 8006daa:	6823      	ldr	r3, [r4, #0]
 8006dac:	2b00      	cmp	r3, #0
 8006dae:	d0fb      	beq.n	8006da8 <_isatty_r+0x14>
 8006db0:	602b      	str	r3, [r5, #0]
 8006db2:	bd38      	pop	{r3, r4, r5, pc}
 8006db4:	20000c9c 	.word	0x20000c9c

08006db8 <__locale_mb_cur_max>:
 8006db8:	4b04      	ldr	r3, [pc, #16]	; (8006dcc <__locale_mb_cur_max+0x14>)
 8006dba:	4a05      	ldr	r2, [pc, #20]	; (8006dd0 <__locale_mb_cur_max+0x18>)
 8006dbc:	681b      	ldr	r3, [r3, #0]
 8006dbe:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006dc0:	2b00      	cmp	r3, #0
 8006dc2:	bf08      	it	eq
 8006dc4:	4613      	moveq	r3, r2
 8006dc6:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006dca:	4770      	bx	lr
 8006dcc:	200001a8 	.word	0x200001a8
 8006dd0:	200009ec 	.word	0x200009ec

08006dd4 <_lseek_r>:
 8006dd4:	b570      	push	{r4, r5, r6, lr}
 8006dd6:	460d      	mov	r5, r1
 8006dd8:	4c08      	ldr	r4, [pc, #32]	; (8006dfc <_lseek_r+0x28>)
 8006dda:	4611      	mov	r1, r2
 8006ddc:	4606      	mov	r6, r0
 8006dde:	461a      	mov	r2, r3
 8006de0:	4628      	mov	r0, r5
 8006de2:	2300      	movs	r3, #0
 8006de4:	6023      	str	r3, [r4, #0]
 8006de6:	f7fb f9ae 	bl	8002146 <_lseek>
 8006dea:	1c43      	adds	r3, r0, #1
 8006dec:	d000      	beq.n	8006df0 <_lseek_r+0x1c>
 8006dee:	bd70      	pop	{r4, r5, r6, pc}
 8006df0:	6823      	ldr	r3, [r4, #0]
 8006df2:	2b00      	cmp	r3, #0
 8006df4:	d0fb      	beq.n	8006dee <_lseek_r+0x1a>
 8006df6:	6033      	str	r3, [r6, #0]
 8006df8:	bd70      	pop	{r4, r5, r6, pc}
 8006dfa:	bf00      	nop
 8006dfc:	20000c9c 	.word	0x20000c9c

08006e00 <__ascii_mbtowc>:
 8006e00:	b082      	sub	sp, #8
 8006e02:	b149      	cbz	r1, 8006e18 <__ascii_mbtowc+0x18>
 8006e04:	b15a      	cbz	r2, 8006e1e <__ascii_mbtowc+0x1e>
 8006e06:	b16b      	cbz	r3, 8006e24 <__ascii_mbtowc+0x24>
 8006e08:	7813      	ldrb	r3, [r2, #0]
 8006e0a:	600b      	str	r3, [r1, #0]
 8006e0c:	7812      	ldrb	r2, [r2, #0]
 8006e0e:	1c10      	adds	r0, r2, #0
 8006e10:	bf18      	it	ne
 8006e12:	2001      	movne	r0, #1
 8006e14:	b002      	add	sp, #8
 8006e16:	4770      	bx	lr
 8006e18:	a901      	add	r1, sp, #4
 8006e1a:	2a00      	cmp	r2, #0
 8006e1c:	d1f3      	bne.n	8006e06 <__ascii_mbtowc+0x6>
 8006e1e:	4610      	mov	r0, r2
 8006e20:	b002      	add	sp, #8
 8006e22:	4770      	bx	lr
 8006e24:	f06f 0001 	mvn.w	r0, #1
 8006e28:	e7f4      	b.n	8006e14 <__ascii_mbtowc+0x14>
 8006e2a:	bf00      	nop

08006e2c <_read_r>:
 8006e2c:	b570      	push	{r4, r5, r6, lr}
 8006e2e:	460d      	mov	r5, r1
 8006e30:	4c08      	ldr	r4, [pc, #32]	; (8006e54 <_read_r+0x28>)
 8006e32:	4611      	mov	r1, r2
 8006e34:	4606      	mov	r6, r0
 8006e36:	461a      	mov	r2, r3
 8006e38:	4628      	mov	r0, r5
 8006e3a:	2300      	movs	r3, #0
 8006e3c:	6023      	str	r3, [r4, #0]
 8006e3e:	f7fb f936 	bl	80020ae <_read>
 8006e42:	1c43      	adds	r3, r0, #1
 8006e44:	d000      	beq.n	8006e48 <_read_r+0x1c>
 8006e46:	bd70      	pop	{r4, r5, r6, pc}
 8006e48:	6823      	ldr	r3, [r4, #0]
 8006e4a:	2b00      	cmp	r3, #0
 8006e4c:	d0fb      	beq.n	8006e46 <_read_r+0x1a>
 8006e4e:	6033      	str	r3, [r6, #0]
 8006e50:	bd70      	pop	{r4, r5, r6, pc}
 8006e52:	bf00      	nop
 8006e54:	20000c9c 	.word	0x20000c9c

08006e58 <__swbuf_r>:
 8006e58:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006e5a:	460d      	mov	r5, r1
 8006e5c:	4614      	mov	r4, r2
 8006e5e:	4606      	mov	r6, r0
 8006e60:	b110      	cbz	r0, 8006e68 <__swbuf_r+0x10>
 8006e62:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006e64:	2b00      	cmp	r3, #0
 8006e66:	d043      	beq.n	8006ef0 <__swbuf_r+0x98>
 8006e68:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006e6c:	69a3      	ldr	r3, [r4, #24]
 8006e6e:	60a3      	str	r3, [r4, #8]
 8006e70:	b291      	uxth	r1, r2
 8006e72:	0708      	lsls	r0, r1, #28
 8006e74:	d51b      	bpl.n	8006eae <__swbuf_r+0x56>
 8006e76:	6923      	ldr	r3, [r4, #16]
 8006e78:	b1cb      	cbz	r3, 8006eae <__swbuf_r+0x56>
 8006e7a:	b2ed      	uxtb	r5, r5
 8006e7c:	0489      	lsls	r1, r1, #18
 8006e7e:	462f      	mov	r7, r5
 8006e80:	d522      	bpl.n	8006ec8 <__swbuf_r+0x70>
 8006e82:	6822      	ldr	r2, [r4, #0]
 8006e84:	6961      	ldr	r1, [r4, #20]
 8006e86:	1ad3      	subs	r3, r2, r3
 8006e88:	4299      	cmp	r1, r3
 8006e8a:	dd29      	ble.n	8006ee0 <__swbuf_r+0x88>
 8006e8c:	3301      	adds	r3, #1
 8006e8e:	68a1      	ldr	r1, [r4, #8]
 8006e90:	1c50      	adds	r0, r2, #1
 8006e92:	3901      	subs	r1, #1
 8006e94:	60a1      	str	r1, [r4, #8]
 8006e96:	6020      	str	r0, [r4, #0]
 8006e98:	7015      	strb	r5, [r2, #0]
 8006e9a:	6962      	ldr	r2, [r4, #20]
 8006e9c:	429a      	cmp	r2, r3
 8006e9e:	d02a      	beq.n	8006ef6 <__swbuf_r+0x9e>
 8006ea0:	89a3      	ldrh	r3, [r4, #12]
 8006ea2:	07db      	lsls	r3, r3, #31
 8006ea4:	d501      	bpl.n	8006eaa <__swbuf_r+0x52>
 8006ea6:	2d0a      	cmp	r5, #10
 8006ea8:	d025      	beq.n	8006ef6 <__swbuf_r+0x9e>
 8006eaa:	4638      	mov	r0, r7
 8006eac:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006eae:	4621      	mov	r1, r4
 8006eb0:	4630      	mov	r0, r6
 8006eb2:	f7fc fffd 	bl	8003eb0 <__swsetup_r>
 8006eb6:	bb20      	cbnz	r0, 8006f02 <__swbuf_r+0xaa>
 8006eb8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006ebc:	6923      	ldr	r3, [r4, #16]
 8006ebe:	b291      	uxth	r1, r2
 8006ec0:	b2ed      	uxtb	r5, r5
 8006ec2:	0489      	lsls	r1, r1, #18
 8006ec4:	462f      	mov	r7, r5
 8006ec6:	d4dc      	bmi.n	8006e82 <__swbuf_r+0x2a>
 8006ec8:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006eca:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006ece:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006ed2:	81a2      	strh	r2, [r4, #12]
 8006ed4:	6822      	ldr	r2, [r4, #0]
 8006ed6:	6661      	str	r1, [r4, #100]	; 0x64
 8006ed8:	6961      	ldr	r1, [r4, #20]
 8006eda:	1ad3      	subs	r3, r2, r3
 8006edc:	4299      	cmp	r1, r3
 8006ede:	dcd5      	bgt.n	8006e8c <__swbuf_r+0x34>
 8006ee0:	4621      	mov	r1, r4
 8006ee2:	4630      	mov	r0, r6
 8006ee4:	f7fe f8a6 	bl	8005034 <_fflush_r>
 8006ee8:	b958      	cbnz	r0, 8006f02 <__swbuf_r+0xaa>
 8006eea:	6822      	ldr	r2, [r4, #0]
 8006eec:	2301      	movs	r3, #1
 8006eee:	e7ce      	b.n	8006e8e <__swbuf_r+0x36>
 8006ef0:	f7fe f8fc 	bl	80050ec <__sinit>
 8006ef4:	e7b8      	b.n	8006e68 <__swbuf_r+0x10>
 8006ef6:	4621      	mov	r1, r4
 8006ef8:	4630      	mov	r0, r6
 8006efa:	f7fe f89b 	bl	8005034 <_fflush_r>
 8006efe:	2800      	cmp	r0, #0
 8006f00:	d0d3      	beq.n	8006eaa <__swbuf_r+0x52>
 8006f02:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006f06:	e7d0      	b.n	8006eaa <__swbuf_r+0x52>

08006f08 <_wcrtomb_r>:
 8006f08:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006f0a:	4c11      	ldr	r4, [pc, #68]	; (8006f50 <_wcrtomb_r+0x48>)
 8006f0c:	6824      	ldr	r4, [r4, #0]
 8006f0e:	b085      	sub	sp, #20
 8006f10:	4606      	mov	r6, r0
 8006f12:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006f14:	461f      	mov	r7, r3
 8006f16:	b151      	cbz	r1, 8006f2e <_wcrtomb_r+0x26>
 8006f18:	4d0e      	ldr	r5, [pc, #56]	; (8006f54 <_wcrtomb_r+0x4c>)
 8006f1a:	2c00      	cmp	r4, #0
 8006f1c:	bf08      	it	eq
 8006f1e:	462c      	moveq	r4, r5
 8006f20:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006f24:	47a0      	blx	r4
 8006f26:	1c43      	adds	r3, r0, #1
 8006f28:	d00c      	beq.n	8006f44 <_wcrtomb_r+0x3c>
 8006f2a:	b005      	add	sp, #20
 8006f2c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006f2e:	4a09      	ldr	r2, [pc, #36]	; (8006f54 <_wcrtomb_r+0x4c>)
 8006f30:	2c00      	cmp	r4, #0
 8006f32:	bf08      	it	eq
 8006f34:	4614      	moveq	r4, r2
 8006f36:	460a      	mov	r2, r1
 8006f38:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006f3c:	a901      	add	r1, sp, #4
 8006f3e:	47a0      	blx	r4
 8006f40:	1c43      	adds	r3, r0, #1
 8006f42:	d1f2      	bne.n	8006f2a <_wcrtomb_r+0x22>
 8006f44:	2200      	movs	r2, #0
 8006f46:	238a      	movs	r3, #138	; 0x8a
 8006f48:	603a      	str	r2, [r7, #0]
 8006f4a:	6033      	str	r3, [r6, #0]
 8006f4c:	b005      	add	sp, #20
 8006f4e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006f50:	200001a8 	.word	0x200001a8
 8006f54:	200009ec 	.word	0x200009ec

08006f58 <__ascii_wctomb>:
 8006f58:	b121      	cbz	r1, 8006f64 <__ascii_wctomb+0xc>
 8006f5a:	2aff      	cmp	r2, #255	; 0xff
 8006f5c:	d804      	bhi.n	8006f68 <__ascii_wctomb+0x10>
 8006f5e:	700a      	strb	r2, [r1, #0]
 8006f60:	2001      	movs	r0, #1
 8006f62:	4770      	bx	lr
 8006f64:	4608      	mov	r0, r1
 8006f66:	4770      	bx	lr
 8006f68:	238a      	movs	r3, #138	; 0x8a
 8006f6a:	6003      	str	r3, [r0, #0]
 8006f6c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006f70:	4770      	bx	lr
 8006f72:	bf00      	nop

08006f74 <_init>:
 8006f74:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006f76:	bf00      	nop
 8006f78:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006f7a:	bc08      	pop	{r3}
 8006f7c:	469e      	mov	lr, r3
 8006f7e:	4770      	bx	lr

08006f80 <_fini>:
 8006f80:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006f82:	bf00      	nop
 8006f84:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006f86:	bc08      	pop	{r3}
 8006f88:	469e      	mov	lr, r3
 8006f8a:	4770      	bx	lr
 8006f8c:	0000      	movs	r0, r0
	...
