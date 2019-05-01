
dijkstra.elf:     file format elf32-littlearm


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
 80001e0:	08007458 	.word	0x08007458

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
 80001fc:	08007458 	.word	0x08007458

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
 8001108:	f640 403c 	movw	r0, #3132	; 0xc3c
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	f840 1e00 	strt	r1, [r0]
 8001118:	4770      	bx	lr

0800111a <HAL_GetTick>:
 800111a:	f640 403c 	movw	r0, #3132	; 0xc3c
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
 8001430:	f247 6218 	movw	r2, #30232	; 0x7618
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
 80014a2:	f240 10a4 	movw	r0, #420	; 0x1a4
 80014a6:	f241 0108 	movw	r1, #4104	; 0x1008
 80014aa:	f247 6210 	movw	r2, #30224	; 0x7610
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
 80014cc:	f240 10a4 	movw	r0, #420	; 0x1a4
 80014d0:	f241 0108 	movw	r1, #4104	; 0x1008
 80014d4:	f247 6210 	movw	r2, #30224	; 0x7610
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
 80018bc:	f640 4140 	movw	r1, #3136	; 0xc40
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
 8001906:	f640 4040 	movw	r0, #3136	; 0xc40
 800190a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800190e:	f7ff feb4 	bl	800167a <HAL_TIM_Base_Start_IT>
 8001912:	b006      	add	sp, #24
 8001914:	bdb0      	pop	{r4, r5, r7, pc}

08001916 <HAL_TIM_PeriodElapsedCallback>:
 8001916:	f7ff bbf7 	b.w	8001108 <HAL_IncTick>

0800191a <TIM6_DAC_IRQHandler>:
 800191a:	f640 4040 	movw	r0, #3136	; 0xc40
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
 8001a82:	f247 6348 	movw	r3, #30280	; 0x7648
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
 8001aaa:	f247 6358 	movw	r3, #30296	; 0x7658
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

08002014 <dijkstra>:
 8002014:	b085      	sub	sp, #20
 8002016:	f84d 4e00 	strt	r4, [sp]
 800201a:	f84d 5e04 	strt	r5, [sp, #4]
 800201e:	f84d 6e08 	strt	r6, [sp, #8]
 8002022:	f84d 7e0c 	strt	r7, [sp, #12]
 8002026:	f84d ee10 	strt	lr, [sp, #16]
 800202a:	af03      	add	r7, sp, #12
 800202c:	b084      	sub	sp, #16
 800202e:	f84d 8e00 	strt	r8, [sp]
 8002032:	f84d 9e04 	strt	r9, [sp, #4]
 8002036:	f84d ae08 	strt	sl, [sp, #8]
 800203a:	f84d be0c 	strt	fp, [sp, #12]
 800203e:	b081      	sub	sp, #4
 8002040:	f640 4284 	movw	r2, #3204	; 0xc84
 8002044:	460d      	mov	r5, r1
 8002046:	4681      	mov	r9, r0
 8002048:	f640 6070 	movw	r0, #3696	; 0xe70
 800204c:	f242 740f 	movw	r4, #9999	; 0x270f
 8002050:	210a      	movs	r1, #10
 8002052:	2600      	movs	r6, #0
 8002054:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002058:	45a9      	cmp	r9, r5
 800205a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800205e:	f842 4e00 	strt	r4, [r2]
 8002062:	f842 4e04 	strt	r4, [r2, #4]
 8002066:	f842 4e08 	strt	r4, [r2, #8]
 800206a:	f842 4e0c 	strt	r4, [r2, #12]
 800206e:	f842 4e10 	strt	r4, [r2, #16]
 8002072:	f842 4e14 	strt	r4, [r2, #20]
 8002076:	f842 4e18 	strt	r4, [r2, #24]
 800207a:	f842 4e1c 	strt	r4, [r2, #28]
 800207e:	f842 4e20 	strt	r4, [r2, #32]
 8002082:	f842 4e24 	strt	r4, [r2, #36]
 8002086:	f842 4e28 	strt	r4, [r2, #40]
 800208a:	f842 4e2c 	strt	r4, [r2, #44]
 800208e:	f842 4e30 	strt	r4, [r2, #48]
 8002092:	f842 4e34 	strt	r4, [r2, #52]
 8002096:	f842 4e38 	strt	r4, [r2, #56]
 800209a:	f842 4e3c 	strt	r4, [r2, #60]
 800209e:	f842 4e40 	strt	r4, [r2, #64]
 80020a2:	f842 4e44 	strt	r4, [r2, #68]
 80020a6:	f842 4e48 	strt	r4, [r2, #72]
 80020aa:	f842 4e4c 	strt	r4, [r2, #76]
 80020ae:	f840 1e00 	strt	r1, [r0]
 80020b2:	f000 80f1 	beq.w	8002298 <dijkstra+0x284>
 80020b6:	eb02 00c9 	add.w	r0, r2, r9, lsl #3
 80020ba:	eb02 02c9 	add.w	r2, r2, r9, lsl #3
 80020be:	f842 6e00 	strt	r6, [r2]
 80020c2:	eba2 02c9 	sub.w	r2, r2, r9, lsl #3
 80020c6:	f840 4e04 	strt	r4, [r0, #4]
 80020ca:	2010      	movs	r0, #16
 80020cc:	f000 fb1e 	bl	800270c <malloc>
 80020d0:	f640 3374 	movw	r3, #2932	; 0xb74
 80020d4:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80020d8:	6819      	ldr	r1, [r3, #0]
 80020da:	f840 9e00 	strt	r9, [r0]
 80020de:	f840 6e04 	strt	r6, [r0, #4]
 80020e2:	f840 4e08 	strt	r4, [r0, #8]
 80020e6:	f840 6e0c 	strt	r6, [r0, #12]
 80020ea:	f84d 5e00 	strt	r5, [sp]
 80020ee:	2900      	cmp	r1, #0
 80020f0:	d005      	beq.n	80020fe <dijkstra+0xea>
 80020f2:	460a      	mov	r2, r1
 80020f4:	f852 1f0c 	ldr.w	r1, [r2, #12]!
 80020f8:	2900      	cmp	r1, #0
 80020fa:	d1fa      	bne.n	80020f2 <dijkstra+0xde>
 80020fc:	e000      	b.n	8002100 <dijkstra+0xec>
 80020fe:	461a      	mov	r2, r3
 8002100:	f842 0e00 	strt	r0, [r2]
 8002104:	f640 3278 	movw	r2, #2936	; 0xb78
 8002108:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800210c:	6810      	ldr	r0, [r2, #0]
 800210e:	f100 0c01 	add.w	ip, r0, #1
 8002112:	2800      	cmp	r0, #0
 8002114:	f842 ce00 	strt	ip, [r2]
 8002118:	f640 4284 	movw	r2, #3204	; 0xc84
 800211c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002120:	f2c0 80b7 	blt.w	8002292 <dijkstra+0x27e>
 8002124:	f640 616c 	movw	r1, #3692	; 0xe6c
 8002128:	f640 6864 	movw	r8, #3684	; 0xe64
 800212c:	f640 6478 	movw	r4, #3704	; 0xe78
 8002130:	f240 0514 	movw	r5, #20
 8002134:	f640 6668 	movw	r6, #3688	; 0xe68
 8002138:	f242 7b0f 	movw	fp, #9999	; 0x270f
 800213c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002140:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8002144:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8002148:	f2c2 0500 	movt	r5, #8192	; 0x2000
 800214c:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8002150:	6818      	ldr	r0, [r3, #0]
 8002152:	b368      	cbz	r0, 80021b0 <dijkstra+0x19c>
 8002154:	6802      	ldr	r2, [r0, #0]
 8002156:	f640 6174 	movw	r1, #3700	; 0xe74
 800215a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800215e:	f844 2e00 	strt	r2, [r4]
 8002162:	6842      	ldr	r2, [r0, #4]
 8002164:	f848 2e00 	strt	r2, [r8]
 8002168:	6882      	ldr	r2, [r0, #8]
 800216a:	f841 2e00 	strt	r2, [r1]
 800216e:	f1ac 0101 	sub.w	r1, ip, #1
 8002172:	68c2      	ldr	r2, [r0, #12]
 8002174:	f843 2e00 	strt	r2, [r3]
 8002178:	f640 3278 	movw	r2, #2936	; 0xb78
 800217c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002180:	f842 1e00 	strt	r1, [r2]
 8002184:	f000 faca 	bl	800271c <free>
 8002188:	f640 616c 	movw	r1, #3692	; 0xe6c
 800218c:	f640 6668 	movw	r6, #3688	; 0xe68
 8002190:	f240 0514 	movw	r5, #20
 8002194:	f640 3374 	movw	r3, #2932	; 0xb74
 8002198:	f640 4284 	movw	r2, #3204	; 0xc84
 800219c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80021a0:	f2c2 0600 	movt	r6, #8192	; 0x2000
 80021a4:	f2c2 0500 	movt	r5, #8192	; 0x2000
 80021a8:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80021ac:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80021b0:	f8d8 9000 	ldr.w	r9, [r8]
 80021b4:	6824      	ldr	r4, [r4, #0]
 80021b6:	f04f 0a00 	mov.w	sl, #0
 80021ba:	f841 ae00 	strt	sl, [r1]
 80021be:	eb04 0084 	add.w	r0, r4, r4, lsl #2
 80021c2:	eb05 00c0 	add.w	r0, r5, r0, lsl #3
 80021c6:	f850 002a 	ldr.w	r0, [r0, sl, lsl #2]
 80021ca:	4558      	cmp	r0, fp
 80021cc:	f846 0e00 	strt	r0, [r6]
 80021d0:	d045      	beq.n	800225e <dijkstra+0x24a>
 80021d2:	eb09 0800 	add.w	r8, r9, r0
 80021d6:	f852 003a 	ldr.w	r0, [r2, sl, lsl #3]
 80021da:	4558      	cmp	r0, fp
 80021dc:	d001      	beq.n	80021e2 <dijkstra+0x1ce>
 80021de:	4540      	cmp	r0, r8
 80021e0:	dd3d      	ble.n	800225e <dijkstra+0x24a>
 80021e2:	eb02 00ca 	add.w	r0, r2, sl, lsl #3
 80021e6:	eb02 02ca 	add.w	r2, r2, sl, lsl #3
 80021ea:	f842 8e00 	strt	r8, [r2]
 80021ee:	eba2 02ca 	sub.w	r2, r2, sl, lsl #3
 80021f2:	f840 4e04 	strt	r4, [r0, #4]
 80021f6:	2010      	movs	r0, #16
 80021f8:	f000 fa88 	bl	800270c <malloc>
 80021fc:	f640 3374 	movw	r3, #2932	; 0xb74
 8002200:	2200      	movs	r2, #0
 8002202:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002206:	6819      	ldr	r1, [r3, #0]
 8002208:	f840 ae00 	strt	sl, [r0]
 800220c:	f840 8e04 	strt	r8, [r0, #4]
 8002210:	f840 4e08 	strt	r4, [r0, #8]
 8002214:	f840 2e0c 	strt	r2, [r0, #12]
 8002218:	b129      	cbz	r1, 8002226 <dijkstra+0x212>
 800221a:	460a      	mov	r2, r1
 800221c:	f852 1f0c 	ldr.w	r1, [r2, #12]!
 8002220:	2900      	cmp	r1, #0
 8002222:	d1fa      	bne.n	800221a <dijkstra+0x206>
 8002224:	e000      	b.n	8002228 <dijkstra+0x214>
 8002226:	461a      	mov	r2, r3
 8002228:	f842 0e00 	strt	r0, [r2]
 800222c:	f640 3078 	movw	r0, #2936	; 0xb78
 8002230:	f240 0514 	movw	r5, #20
 8002234:	f640 6668 	movw	r6, #3688	; 0xe68
 8002238:	f640 616c 	movw	r1, #3692	; 0xe6c
 800223c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002240:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8002244:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8002248:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800224c:	4602      	mov	r2, r0
 800224e:	6810      	ldr	r0, [r2, #0]
 8002250:	3001      	adds	r0, #1
 8002252:	f842 0e00 	strt	r0, [r2]
 8002256:	f640 4284 	movw	r2, #3204	; 0xc84
 800225a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800225e:	f10a 0a01 	add.w	sl, sl, #1
 8002262:	f1ba 0f0a 	cmp.w	sl, #10
 8002266:	f841 ae00 	strt	sl, [r1]
 800226a:	dba8      	blt.n	80021be <dijkstra+0x1aa>
 800226c:	f640 3078 	movw	r0, #2936	; 0xb78
 8002270:	f640 6464 	movw	r4, #3684	; 0xe64
 8002274:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002278:	f2c2 0400 	movt	r4, #8192	; 0x2000
 800227c:	f8d0 c000 	ldr.w	ip, [r0]
 8002280:	46a0      	mov	r8, r4
 8002282:	f640 6478 	movw	r4, #3704	; 0xe78
 8002286:	f2c2 0400 	movt	r4, #8192	; 0x2000
 800228a:	f1bc 0f01 	cmp.w	ip, #1
 800228e:	f6bf af5f 	bge.w	8002150 <dijkstra+0x13c>
 8002292:	9800      	ldr	r0, [sp, #0]
 8002294:	f852 6030 	ldr.w	r6, [r2, r0, lsl #3]
 8002298:	4630      	mov	r0, r6
 800229a:	b001      	add	sp, #4
 800229c:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80022a0:	bdf0      	pop	{r4, r5, r6, r7, pc}

080022a2 <initialise_benchmark>:
 80022a2:	4770      	bx	lr

080022a4 <benchmark>:
 80022a4:	b085      	sub	sp, #20
 80022a6:	f84d 4e00 	strt	r4, [sp]
 80022aa:	f84d 5e04 	strt	r5, [sp, #4]
 80022ae:	f84d 6e08 	strt	r6, [sp, #8]
 80022b2:	f84d 7e0c 	strt	r7, [sp, #12]
 80022b6:	f84d ee10 	strt	lr, [sp, #16]
 80022ba:	af03      	add	r7, sp, #12
 80022bc:	b081      	sub	sp, #4
 80022be:	f84d be00 	strt	fp, [sp]
 80022c2:	f640 357c 	movw	r5, #2940	; 0xb7c
 80022c6:	f640 46d4 	movw	r6, #3284	; 0xcd4
 80022ca:	2400      	movs	r4, #0
 80022cc:	f2c2 0500 	movt	r5, #8192	; 0x2000
 80022d0:	f2c2 0600 	movt	r6, #8192	; 0x2000
 80022d4:	f845 4e00 	strt	r4, [r5]
 80022d8:	2000      	movs	r0, #0
 80022da:	4621      	mov	r1, r4
 80022dc:	f7ff fe9a 	bl	8002014 <dijkstra>
 80022e0:	6829      	ldr	r1, [r5, #0]
 80022e2:	eb06 0681 	add.w	r6, r6, r1, lsl #2
 80022e6:	f846 0e00 	strt	r0, [r6]
 80022ea:	eba6 0681 	sub.w	r6, r6, r1, lsl #2
 80022ee:	1c48      	adds	r0, r1, #1
 80022f0:	4621      	mov	r1, r4
 80022f2:	f845 0e00 	strt	r0, [r5]
 80022f6:	2001      	movs	r0, #1
 80022f8:	f7ff fe8c 	bl	8002014 <dijkstra>
 80022fc:	6829      	ldr	r1, [r5, #0]
 80022fe:	eb06 0681 	add.w	r6, r6, r1, lsl #2
 8002302:	f846 0e00 	strt	r0, [r6]
 8002306:	eba6 0681 	sub.w	r6, r6, r1, lsl #2
 800230a:	1c48      	adds	r0, r1, #1
 800230c:	4621      	mov	r1, r4
 800230e:	f845 0e00 	strt	r0, [r5]
 8002312:	2002      	movs	r0, #2
 8002314:	f7ff fe7e 	bl	8002014 <dijkstra>
 8002318:	6829      	ldr	r1, [r5, #0]
 800231a:	eb06 0681 	add.w	r6, r6, r1, lsl #2
 800231e:	f846 0e00 	strt	r0, [r6]
 8002322:	eba6 0681 	sub.w	r6, r6, r1, lsl #2
 8002326:	1c48      	adds	r0, r1, #1
 8002328:	4621      	mov	r1, r4
 800232a:	f845 0e00 	strt	r0, [r5]
 800232e:	2003      	movs	r0, #3
 8002330:	f7ff fe70 	bl	8002014 <dijkstra>
 8002334:	6829      	ldr	r1, [r5, #0]
 8002336:	eb06 0681 	add.w	r6, r6, r1, lsl #2
 800233a:	f846 0e00 	strt	r0, [r6]
 800233e:	eba6 0681 	sub.w	r6, r6, r1, lsl #2
 8002342:	1c48      	adds	r0, r1, #1
 8002344:	4621      	mov	r1, r4
 8002346:	f845 0e00 	strt	r0, [r5]
 800234a:	2004      	movs	r0, #4
 800234c:	f7ff fe62 	bl	8002014 <dijkstra>
 8002350:	6829      	ldr	r1, [r5, #0]
 8002352:	eb06 0681 	add.w	r6, r6, r1, lsl #2
 8002356:	f846 0e00 	strt	r0, [r6]
 800235a:	eba6 0681 	sub.w	r6, r6, r1, lsl #2
 800235e:	1c48      	adds	r0, r1, #1
 8002360:	4621      	mov	r1, r4
 8002362:	f845 0e00 	strt	r0, [r5]
 8002366:	2005      	movs	r0, #5
 8002368:	f7ff fe54 	bl	8002014 <dijkstra>
 800236c:	6829      	ldr	r1, [r5, #0]
 800236e:	eb06 0681 	add.w	r6, r6, r1, lsl #2
 8002372:	f846 0e00 	strt	r0, [r6]
 8002376:	eba6 0681 	sub.w	r6, r6, r1, lsl #2
 800237a:	1c48      	adds	r0, r1, #1
 800237c:	4621      	mov	r1, r4
 800237e:	f845 0e00 	strt	r0, [r5]
 8002382:	2006      	movs	r0, #6
 8002384:	f7ff fe46 	bl	8002014 <dijkstra>
 8002388:	6829      	ldr	r1, [r5, #0]
 800238a:	eb06 0681 	add.w	r6, r6, r1, lsl #2
 800238e:	f846 0e00 	strt	r0, [r6]
 8002392:	eba6 0681 	sub.w	r6, r6, r1, lsl #2
 8002396:	1c48      	adds	r0, r1, #1
 8002398:	4621      	mov	r1, r4
 800239a:	f845 0e00 	strt	r0, [r5]
 800239e:	2007      	movs	r0, #7
 80023a0:	f7ff fe38 	bl	8002014 <dijkstra>
 80023a4:	6829      	ldr	r1, [r5, #0]
 80023a6:	eb06 0681 	add.w	r6, r6, r1, lsl #2
 80023aa:	f846 0e00 	strt	r0, [r6]
 80023ae:	eba6 0681 	sub.w	r6, r6, r1, lsl #2
 80023b2:	1c48      	adds	r0, r1, #1
 80023b4:	4621      	mov	r1, r4
 80023b6:	f845 0e00 	strt	r0, [r5]
 80023ba:	2008      	movs	r0, #8
 80023bc:	f7ff fe2a 	bl	8002014 <dijkstra>
 80023c0:	6829      	ldr	r1, [r5, #0]
 80023c2:	eb06 0681 	add.w	r6, r6, r1, lsl #2
 80023c6:	f846 0e00 	strt	r0, [r6]
 80023ca:	eba6 0681 	sub.w	r6, r6, r1, lsl #2
 80023ce:	1c48      	adds	r0, r1, #1
 80023d0:	4621      	mov	r1, r4
 80023d2:	f845 0e00 	strt	r0, [r5]
 80023d6:	2009      	movs	r0, #9
 80023d8:	f7ff fe1c 	bl	8002014 <dijkstra>
 80023dc:	6829      	ldr	r1, [r5, #0]
 80023de:	3401      	adds	r4, #1
 80023e0:	2c0a      	cmp	r4, #10
 80023e2:	eb06 0681 	add.w	r6, r6, r1, lsl #2
 80023e6:	f846 0e00 	strt	r0, [r6]
 80023ea:	eba6 0681 	sub.w	r6, r6, r1, lsl #2
 80023ee:	f101 0001 	add.w	r0, r1, #1
 80023f2:	f845 0e00 	strt	r0, [r5]
 80023f6:	f47f af6f 	bne.w	80022d8 <benchmark+0x34>
 80023fa:	2000      	movs	r0, #0
 80023fc:	f85d bb04 	ldr.w	fp, [sp], #4
 8002400:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002402 <verify_benchmark>:
 8002402:	f247 4c70 	movw	ip, #29808	; 0x7470
 8002406:	f640 42d4 	movw	r2, #3284	; 0xcd4
 800240a:	2000      	movs	r0, #0
 800240c:	f6c0 0c00 	movt	ip, #2048	; 0x800
 8002410:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002414:	f85c 3020 	ldr.w	r3, [ip, r0, lsl #2]
 8002418:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 800241c:	4299      	cmp	r1, r3
 800241e:	bf1c      	itt	ne
 8002420:	2000      	movne	r0, #0
 8002422:	4770      	bxne	lr
 8002424:	3001      	adds	r0, #1
 8002426:	2863      	cmp	r0, #99	; 0x63
 8002428:	bfc4      	itt	gt
 800242a:	2001      	movgt	r0, #1
 800242c:	4770      	bxgt	lr
 800242e:	e7f1      	b.n	8002414 <verify_benchmark+0x12>

08002430 <__io_putchar>:
 8002430:	b082      	sub	sp, #8
 8002432:	f84d 7e00 	strt	r7, [sp]
 8002436:	f84d ee04 	strt	lr, [sp, #4]
 800243a:	466f      	mov	r7, sp
 800243c:	b082      	sub	sp, #8
 800243e:	f84d 0e04 	strt	r0, [sp, #4]
 8002442:	f640 3080 	movw	r0, #2944	; 0xb80
 8002446:	a901      	add	r1, sp, #4
 8002448:	2201      	movs	r2, #1
 800244a:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800244e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002452:	f7ff fcb8 	bl	8001dc6 <HAL_UART_Transmit>
 8002456:	9801      	ldr	r0, [sp, #4]
 8002458:	b002      	add	sp, #8
 800245a:	bd80      	pop	{r7, pc}

0800245c <main>:
 800245c:	b084      	sub	sp, #16
 800245e:	f84d 4e00 	strt	r4, [sp]
 8002462:	f84d 5e04 	strt	r5, [sp, #4]
 8002466:	f84d 7e08 	strt	r7, [sp, #8]
 800246a:	f84d ee0c 	strt	lr, [sp, #12]
 800246e:	af02      	add	r7, sp, #8
 8002470:	f640 3180 	movw	r1, #2944	; 0xb80
 8002474:	f643 0000 	movw	r0, #14336	; 0x3800
 8002478:	220c      	movs	r2, #12
 800247a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800247e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002482:	f841 0e00 	strt	r0, [r1]
 8002486:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 800248a:	f841 0e04 	strt	r0, [r1, #4]
 800248e:	2000      	movs	r0, #0
 8002490:	f841 0e08 	strt	r0, [r1, #8]
 8002494:	f841 0e0c 	strt	r0, [r1, #12]
 8002498:	f841 0e10 	strt	r0, [r1, #16]
 800249c:	f841 0e24 	strt	r0, [r1, #36]
 80024a0:	f841 0e1c 	strt	r0, [r1, #28]
 80024a4:	f841 0e20 	strt	r0, [r1, #32]
 80024a8:	f841 2e14 	strt	r2, [r1, #20]
 80024ac:	f841 0e18 	strt	r0, [r1, #24]
 80024b0:	2000      	movs	r0, #0
 80024b2:	f7ff fd3b 	bl	8001f2c <BSP_COM_Init>
 80024b6:	f7ff fef4 	bl	80022a2 <initialise_benchmark>
 80024ba:	f247 6068 	movw	r0, #30312	; 0x7668
 80024be:	f6c0 0000 	movt	r0, #2048	; 0x800
 80024c2:	f000 fc2d 	bl	8002d20 <printf>
 80024c6:	f247 7013 	movw	r0, #30483	; 0x7713
 80024ca:	f6c0 0000 	movt	r0, #2048	; 0x800
 80024ce:	f000 fc89 	bl	8002de4 <puts>
 80024d2:	f7fe fe09 	bl	80010e8 <HAL_Init>
 80024d6:	f7fe fe20 	bl	800111a <HAL_GetTick>
 80024da:	4604      	mov	r4, r0
 80024dc:	f7ff fee2 	bl	80022a4 <benchmark>
 80024e0:	4605      	mov	r5, r0
 80024e2:	f7fe fe1a 	bl	800111a <HAL_GetTick>
 80024e6:	1b04      	subs	r4, r0, r4
 80024e8:	4628      	mov	r0, r5
 80024ea:	f7ff ff8a 	bl	8002402 <verify_benchmark>
 80024ee:	1c41      	adds	r1, r0, #1
 80024f0:	d006      	beq.n	8002500 <main+0xa4>
 80024f2:	2801      	cmp	r0, #1
 80024f4:	d109      	bne.n	800250a <main+0xae>
 80024f6:	f247 607f 	movw	r0, #30335	; 0x767f
 80024fa:	f6c0 0000 	movt	r0, #2048	; 0x800
 80024fe:	e008      	b.n	8002512 <main+0xb6>
 8002500:	f247 60a3 	movw	r0, #30371	; 0x76a3
 8002504:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002508:	e003      	b.n	8002512 <main+0xb6>
 800250a:	f247 60d8 	movw	r0, #30424	; 0x76d8
 800250e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002512:	4621      	mov	r1, r4
 8002514:	f000 fc04 	bl	8002d20 <printf>
 8002518:	2000      	movs	r0, #0
 800251a:	bdb0      	pop	{r4, r5, r7, pc}

0800251c <SysTick_Handler>:
 800251c:	b082      	sub	sp, #8
 800251e:	f84d 7e00 	strt	r7, [sp]
 8002522:	f84d ee04 	strt	lr, [sp, #4]
 8002526:	466f      	mov	r7, sp
 8002528:	f7fe fdee 	bl	8001108 <HAL_IncTick>
 800252c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002530:	f7fe be49 	b.w	80011c6 <HAL_SYSTICK_IRQHandler>

08002534 <_read>:
 8002534:	b085      	sub	sp, #20
 8002536:	f84d 4e00 	strt	r4, [sp]
 800253a:	f84d 5e04 	strt	r5, [sp, #4]
 800253e:	f84d 6e08 	strt	r6, [sp, #8]
 8002542:	f84d 7e0c 	strt	r7, [sp, #12]
 8002546:	f84d ee10 	strt	lr, [sp, #16]
 800254a:	af03      	add	r7, sp, #12
 800254c:	b081      	sub	sp, #4
 800254e:	f84d be00 	strt	fp, [sp]
 8002552:	4614      	mov	r4, r2
 8002554:	460d      	mov	r5, r1
 8002556:	2c01      	cmp	r4, #1
 8002558:	db08      	blt.n	800256c <_read+0x38>
 800255a:	4626      	mov	r6, r4
 800255c:	f3af 8000 	nop.w
 8002560:	f805 0e00 	strbt	r0, [r5]
 8002564:	bfe8      	it	al
 8002566:	3501      	addal	r5, #1
 8002568:	3e01      	subs	r6, #1
 800256a:	d1f7      	bne.n	800255c <_read+0x28>
 800256c:	4620      	mov	r0, r4
 800256e:	f85d bb04 	ldr.w	fp, [sp], #4
 8002572:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002574 <_write>:
 8002574:	b085      	sub	sp, #20
 8002576:	f84d 4e00 	strt	r4, [sp]
 800257a:	f84d 5e04 	strt	r5, [sp, #4]
 800257e:	f84d 6e08 	strt	r6, [sp, #8]
 8002582:	f84d 7e0c 	strt	r7, [sp, #12]
 8002586:	f84d ee10 	strt	lr, [sp, #16]
 800258a:	af03      	add	r7, sp, #12
 800258c:	b081      	sub	sp, #4
 800258e:	f84d be00 	strt	fp, [sp]
 8002592:	4614      	mov	r4, r2
 8002594:	460d      	mov	r5, r1
 8002596:	2c01      	cmp	r4, #1
 8002598:	db06      	blt.n	80025a8 <_write+0x34>
 800259a:	4626      	mov	r6, r4
 800259c:	f815 0b01 	ldrb.w	r0, [r5], #1
 80025a0:	f7ff ff46 	bl	8002430 <__io_putchar>
 80025a4:	3e01      	subs	r6, #1
 80025a6:	d1f9      	bne.n	800259c <_write+0x28>
 80025a8:	4620      	mov	r0, r4
 80025aa:	f85d bb04 	ldr.w	fp, [sp], #4
 80025ae:	bdf0      	pop	{r4, r5, r6, r7, pc}

080025b0 <_sbrk>:
 80025b0:	f640 4204 	movw	r2, #3076	; 0xc04
 80025b4:	4601      	mov	r1, r0
 80025b6:	466b      	mov	r3, sp
 80025b8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80025bc:	6810      	ldr	r0, [r2, #0]
 80025be:	2800      	cmp	r0, #0
 80025c0:	bf02      	ittt	eq
 80025c2:	f640 60a8 	movweq	r0, #3752	; 0xea8
 80025c6:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80025ca:	f842 0e00 	strteq	r0, [r2]
 80025ce:	4401      	add	r1, r0
 80025d0:	4299      	cmp	r1, r3
 80025d2:	bf9c      	itt	ls
 80025d4:	f842 1e00 	strtls	r1, [r2]
 80025d8:	4770      	bxls	lr
 80025da:	b082      	sub	sp, #8
 80025dc:	f84d 7e00 	strt	r7, [sp]
 80025e0:	f84d ee04 	strt	lr, [sp, #4]
 80025e4:	466f      	mov	r7, sp
 80025e6:	f000 f867 	bl	80026b8 <__errno>
 80025ea:	210c      	movs	r1, #12
 80025ec:	f840 1e00 	strt	r1, [r0]
 80025f0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80025f4:	bd80      	pop	{r7, pc}

080025f6 <_close>:
 80025f6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80025fa:	4770      	bx	lr

080025fc <_fstat>:
 80025fc:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002600:	f841 0e04 	strt	r0, [r1, #4]
 8002604:	2000      	movs	r0, #0
 8002606:	4770      	bx	lr

08002608 <_isatty>:
 8002608:	2001      	movs	r0, #1
 800260a:	4770      	bx	lr

0800260c <_lseek>:
 800260c:	2000      	movs	r0, #0
 800260e:	4770      	bx	lr

08002610 <SystemInit>:
 8002610:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002614:	f04f 0c00 	mov.w	ip, #0
 8002618:	f2ce 0000 	movt	r0, #57344	; 0xe000
 800261c:	6801      	ldr	r1, [r0, #0]
 800261e:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002622:	6001      	str	r1, [r0, #0]
 8002624:	f241 0100 	movw	r1, #4096	; 0x1000
 8002628:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800262c:	680a      	ldr	r2, [r1, #0]
 800262e:	f042 0201 	orr.w	r2, r2, #1
 8002632:	600a      	str	r2, [r1, #0]
 8002634:	f8c1 c008 	str.w	ip, [r1, #8]
 8002638:	f64f 72ff 	movw	r2, #65535	; 0xffff
 800263c:	680b      	ldr	r3, [r1, #0]
 800263e:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002642:	401a      	ands	r2, r3
 8002644:	600a      	str	r2, [r1, #0]
 8002646:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 800264a:	60ca      	str	r2, [r1, #12]
 800264c:	680a      	ldr	r2, [r1, #0]
 800264e:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002652:	600a      	str	r2, [r1, #0]
 8002654:	f8c1 c018 	str.w	ip, [r1, #24]
 8002658:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 800265c:	f840 1c80 	str.w	r1, [r0, #-128]
 8002660:	4770      	bx	lr
	...

08002664 <Reset_Handler>:
 8002664:	f8df d034 	ldr.w	sp, [pc, #52]	; 800269c <LoopForever+0x2>
 8002668:	2100      	movs	r1, #0
 800266a:	e003      	b.n	8002674 <LoopCopyDataInit>

0800266c <CopyDataInit>:
 800266c:	4b0c      	ldr	r3, [pc, #48]	; (80026a0 <LoopForever+0x6>)
 800266e:	585b      	ldr	r3, [r3, r1]
 8002670:	5043      	str	r3, [r0, r1]
 8002672:	3104      	adds	r1, #4

08002674 <LoopCopyDataInit>:
 8002674:	480b      	ldr	r0, [pc, #44]	; (80026a4 <LoopForever+0xa>)
 8002676:	4b0c      	ldr	r3, [pc, #48]	; (80026a8 <LoopForever+0xe>)
 8002678:	1842      	adds	r2, r0, r1
 800267a:	429a      	cmp	r2, r3
 800267c:	d3f6      	bcc.n	800266c <CopyDataInit>
 800267e:	4a0b      	ldr	r2, [pc, #44]	; (80026ac <LoopForever+0x12>)
 8002680:	e002      	b.n	8002688 <LoopFillZerobss>

08002682 <FillZerobss>:
 8002682:	2300      	movs	r3, #0
 8002684:	f842 3b04 	str.w	r3, [r2], #4

08002688 <LoopFillZerobss>:
 8002688:	4b09      	ldr	r3, [pc, #36]	; (80026b0 <LoopForever+0x16>)
 800268a:	429a      	cmp	r2, r3
 800268c:	d3f9      	bcc.n	8002682 <FillZerobss>
 800268e:	f7ff ffbf 	bl	8002610 <SystemInit>
 8002692:	f000 f817 	bl	80026c4 <__libc_init_array>
 8002696:	f7ff fee1 	bl	800245c <main>

0800269a <LoopForever>:
 800269a:	e7fe      	b.n	800269a <LoopForever>
 800269c:	20018000 	.word	0x20018000
 80026a0:	080079c0 	.word	0x080079c0
 80026a4:	20000000 	.word	0x20000000
 80026a8:	20000b58 	.word	0x20000b58
 80026ac:	20000b58 	.word	0x20000b58
 80026b0:	20000ea4 	.word	0x20000ea4

080026b4 <ADC1_2_IRQHandler>:
 80026b4:	e7fe      	b.n	80026b4 <ADC1_2_IRQHandler>
	...

080026b8 <__errno>:
 80026b8:	4b01      	ldr	r3, [pc, #4]	; (80026c0 <__errno+0x8>)
 80026ba:	6818      	ldr	r0, [r3, #0]
 80026bc:	4770      	bx	lr
 80026be:	bf00      	nop
 80026c0:	200001a8 	.word	0x200001a8

080026c4 <__libc_init_array>:
 80026c4:	b570      	push	{r4, r5, r6, lr}
 80026c6:	4e0d      	ldr	r6, [pc, #52]	; (80026fc <__libc_init_array+0x38>)
 80026c8:	4d0d      	ldr	r5, [pc, #52]	; (8002700 <__libc_init_array+0x3c>)
 80026ca:	1b76      	subs	r6, r6, r5
 80026cc:	10b6      	asrs	r6, r6, #2
 80026ce:	d006      	beq.n	80026de <__libc_init_array+0x1a>
 80026d0:	2400      	movs	r4, #0
 80026d2:	3401      	adds	r4, #1
 80026d4:	f855 3b04 	ldr.w	r3, [r5], #4
 80026d8:	4798      	blx	r3
 80026da:	42a6      	cmp	r6, r4
 80026dc:	d1f9      	bne.n	80026d2 <__libc_init_array+0xe>
 80026de:	4e09      	ldr	r6, [pc, #36]	; (8002704 <__libc_init_array+0x40>)
 80026e0:	4d09      	ldr	r5, [pc, #36]	; (8002708 <__libc_init_array+0x44>)
 80026e2:	1b76      	subs	r6, r6, r5
 80026e4:	f004 feb8 	bl	8007458 <_init>
 80026e8:	10b6      	asrs	r6, r6, #2
 80026ea:	d006      	beq.n	80026fa <__libc_init_array+0x36>
 80026ec:	2400      	movs	r4, #0
 80026ee:	3401      	adds	r4, #1
 80026f0:	f855 3b04 	ldr.w	r3, [r5], #4
 80026f4:	4798      	blx	r3
 80026f6:	42a6      	cmp	r6, r4
 80026f8:	d1f9      	bne.n	80026ee <__libc_init_array+0x2a>
 80026fa:	bd70      	pop	{r4, r5, r6, pc}
 80026fc:	080079b0 	.word	0x080079b0
 8002700:	080079b0 	.word	0x080079b0
 8002704:	080079b8 	.word	0x080079b8
 8002708:	080079b0 	.word	0x080079b0

0800270c <malloc>:
 800270c:	4b02      	ldr	r3, [pc, #8]	; (8002718 <malloc+0xc>)
 800270e:	4601      	mov	r1, r0
 8002710:	6818      	ldr	r0, [r3, #0]
 8002712:	f000 b80b 	b.w	800272c <_malloc_r>
 8002716:	bf00      	nop
 8002718:	200001a8 	.word	0x200001a8

0800271c <free>:
 800271c:	4b02      	ldr	r3, [pc, #8]	; (8002728 <free+0xc>)
 800271e:	4601      	mov	r1, r0
 8002720:	6818      	ldr	r0, [r3, #0]
 8002722:	f003 bab9 	b.w	8005c98 <_free_r>
 8002726:	bf00      	nop
 8002728:	200001a8 	.word	0x200001a8

0800272c <_malloc_r>:
 800272c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002730:	f101 050b 	add.w	r5, r1, #11
 8002734:	2d16      	cmp	r5, #22
 8002736:	b083      	sub	sp, #12
 8002738:	4606      	mov	r6, r0
 800273a:	d823      	bhi.n	8002784 <_malloc_r+0x58>
 800273c:	2910      	cmp	r1, #16
 800273e:	f200 80b9 	bhi.w	80028b4 <_malloc_r+0x188>
 8002742:	f000 fae1 	bl	8002d08 <__malloc_lock>
 8002746:	2510      	movs	r5, #16
 8002748:	2318      	movs	r3, #24
 800274a:	2002      	movs	r0, #2
 800274c:	4fc5      	ldr	r7, [pc, #788]	; (8002a64 <_malloc_r+0x338>)
 800274e:	443b      	add	r3, r7
 8002750:	f1a3 0208 	sub.w	r2, r3, #8
 8002754:	685c      	ldr	r4, [r3, #4]
 8002756:	4294      	cmp	r4, r2
 8002758:	f000 8166 	beq.w	8002a28 <_malloc_r+0x2fc>
 800275c:	6863      	ldr	r3, [r4, #4]
 800275e:	f023 0303 	bic.w	r3, r3, #3
 8002762:	4423      	add	r3, r4
 8002764:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8002768:	685a      	ldr	r2, [r3, #4]
 800276a:	60e9      	str	r1, [r5, #12]
 800276c:	f042 0201 	orr.w	r2, r2, #1
 8002770:	608d      	str	r5, [r1, #8]
 8002772:	4630      	mov	r0, r6
 8002774:	605a      	str	r2, [r3, #4]
 8002776:	f000 facd 	bl	8002d14 <__malloc_unlock>
 800277a:	3408      	adds	r4, #8
 800277c:	4620      	mov	r0, r4
 800277e:	b003      	add	sp, #12
 8002780:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002784:	f035 0507 	bics.w	r5, r5, #7
 8002788:	f100 8094 	bmi.w	80028b4 <_malloc_r+0x188>
 800278c:	42a9      	cmp	r1, r5
 800278e:	f200 8091 	bhi.w	80028b4 <_malloc_r+0x188>
 8002792:	f000 fab9 	bl	8002d08 <__malloc_lock>
 8002796:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 800279a:	f0c0 8183 	bcc.w	8002aa4 <_malloc_r+0x378>
 800279e:	0a6b      	lsrs	r3, r5, #9
 80027a0:	f000 808f 	beq.w	80028c2 <_malloc_r+0x196>
 80027a4:	2b04      	cmp	r3, #4
 80027a6:	f200 8146 	bhi.w	8002a36 <_malloc_r+0x30a>
 80027aa:	09ab      	lsrs	r3, r5, #6
 80027ac:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80027b0:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80027b4:	00c3      	lsls	r3, r0, #3
 80027b6:	4fab      	ldr	r7, [pc, #684]	; (8002a64 <_malloc_r+0x338>)
 80027b8:	443b      	add	r3, r7
 80027ba:	f1a3 0108 	sub.w	r1, r3, #8
 80027be:	685c      	ldr	r4, [r3, #4]
 80027c0:	42a1      	cmp	r1, r4
 80027c2:	d106      	bne.n	80027d2 <_malloc_r+0xa6>
 80027c4:	e00c      	b.n	80027e0 <_malloc_r+0xb4>
 80027c6:	2a00      	cmp	r2, #0
 80027c8:	f280 811d 	bge.w	8002a06 <_malloc_r+0x2da>
 80027cc:	68e4      	ldr	r4, [r4, #12]
 80027ce:	42a1      	cmp	r1, r4
 80027d0:	d006      	beq.n	80027e0 <_malloc_r+0xb4>
 80027d2:	6863      	ldr	r3, [r4, #4]
 80027d4:	f023 0303 	bic.w	r3, r3, #3
 80027d8:	1b5a      	subs	r2, r3, r5
 80027da:	2a0f      	cmp	r2, #15
 80027dc:	ddf3      	ble.n	80027c6 <_malloc_r+0x9a>
 80027de:	4660      	mov	r0, ip
 80027e0:	693c      	ldr	r4, [r7, #16]
 80027e2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8002a78 <_malloc_r+0x34c>
 80027e6:	4564      	cmp	r4, ip
 80027e8:	d071      	beq.n	80028ce <_malloc_r+0x1a2>
 80027ea:	6863      	ldr	r3, [r4, #4]
 80027ec:	f023 0303 	bic.w	r3, r3, #3
 80027f0:	1b5a      	subs	r2, r3, r5
 80027f2:	2a0f      	cmp	r2, #15
 80027f4:	f300 8144 	bgt.w	8002a80 <_malloc_r+0x354>
 80027f8:	2a00      	cmp	r2, #0
 80027fa:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 80027fe:	f280 8126 	bge.w	8002a4e <_malloc_r+0x322>
 8002802:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8002806:	f080 8169 	bcs.w	8002adc <_malloc_r+0x3b0>
 800280a:	08db      	lsrs	r3, r3, #3
 800280c:	1c59      	adds	r1, r3, #1
 800280e:	687a      	ldr	r2, [r7, #4]
 8002810:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8002814:	f8c4 8008 	str.w	r8, [r4, #8]
 8002818:	f04f 0e01 	mov.w	lr, #1
 800281c:	109b      	asrs	r3, r3, #2
 800281e:	fa0e f303 	lsl.w	r3, lr, r3
 8002822:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8002826:	4313      	orrs	r3, r2
 8002828:	f1ae 0208 	sub.w	r2, lr, #8
 800282c:	60e2      	str	r2, [r4, #12]
 800282e:	607b      	str	r3, [r7, #4]
 8002830:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8002834:	f8c8 400c 	str.w	r4, [r8, #12]
 8002838:	1082      	asrs	r2, r0, #2
 800283a:	2401      	movs	r4, #1
 800283c:	4094      	lsls	r4, r2
 800283e:	429c      	cmp	r4, r3
 8002840:	d84b      	bhi.n	80028da <_malloc_r+0x1ae>
 8002842:	421c      	tst	r4, r3
 8002844:	d106      	bne.n	8002854 <_malloc_r+0x128>
 8002846:	f020 0003 	bic.w	r0, r0, #3
 800284a:	0064      	lsls	r4, r4, #1
 800284c:	421c      	tst	r4, r3
 800284e:	f100 0004 	add.w	r0, r0, #4
 8002852:	d0fa      	beq.n	800284a <_malloc_r+0x11e>
 8002854:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8002858:	46ce      	mov	lr, r9
 800285a:	4680      	mov	r8, r0
 800285c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8002860:	459e      	cmp	lr, r3
 8002862:	d107      	bne.n	8002874 <_malloc_r+0x148>
 8002864:	e122      	b.n	8002aac <_malloc_r+0x380>
 8002866:	2a00      	cmp	r2, #0
 8002868:	f280 8129 	bge.w	8002abe <_malloc_r+0x392>
 800286c:	68db      	ldr	r3, [r3, #12]
 800286e:	459e      	cmp	lr, r3
 8002870:	f000 811c 	beq.w	8002aac <_malloc_r+0x380>
 8002874:	6859      	ldr	r1, [r3, #4]
 8002876:	f021 0103 	bic.w	r1, r1, #3
 800287a:	1b4a      	subs	r2, r1, r5
 800287c:	2a0f      	cmp	r2, #15
 800287e:	ddf2      	ble.n	8002866 <_malloc_r+0x13a>
 8002880:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8002884:	195c      	adds	r4, r3, r5
 8002886:	f045 0501 	orr.w	r5, r5, #1
 800288a:	605d      	str	r5, [r3, #4]
 800288c:	f042 0501 	orr.w	r5, r2, #1
 8002890:	f8c8 e00c 	str.w	lr, [r8, #12]
 8002894:	4630      	mov	r0, r6
 8002896:	f8ce 8008 	str.w	r8, [lr, #8]
 800289a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 800289e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80028a2:	6065      	str	r5, [r4, #4]
 80028a4:	505a      	str	r2, [r3, r1]
 80028a6:	9301      	str	r3, [sp, #4]
 80028a8:	f000 fa34 	bl	8002d14 <__malloc_unlock>
 80028ac:	9b01      	ldr	r3, [sp, #4]
 80028ae:	f103 0408 	add.w	r4, r3, #8
 80028b2:	e763      	b.n	800277c <_malloc_r+0x50>
 80028b4:	2400      	movs	r4, #0
 80028b6:	230c      	movs	r3, #12
 80028b8:	4620      	mov	r0, r4
 80028ba:	6033      	str	r3, [r6, #0]
 80028bc:	b003      	add	sp, #12
 80028be:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80028c2:	f44f 7300 	mov.w	r3, #512	; 0x200
 80028c6:	2040      	movs	r0, #64	; 0x40
 80028c8:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 80028cc:	e773      	b.n	80027b6 <_malloc_r+0x8a>
 80028ce:	687b      	ldr	r3, [r7, #4]
 80028d0:	1082      	asrs	r2, r0, #2
 80028d2:	2401      	movs	r4, #1
 80028d4:	4094      	lsls	r4, r2
 80028d6:	429c      	cmp	r4, r3
 80028d8:	d9b3      	bls.n	8002842 <_malloc_r+0x116>
 80028da:	68bc      	ldr	r4, [r7, #8]
 80028dc:	6863      	ldr	r3, [r4, #4]
 80028de:	f023 0903 	bic.w	r9, r3, #3
 80028e2:	45a9      	cmp	r9, r5
 80028e4:	d303      	bcc.n	80028ee <_malloc_r+0x1c2>
 80028e6:	eba9 0305 	sub.w	r3, r9, r5
 80028ea:	2b0f      	cmp	r3, #15
 80028ec:	dc7b      	bgt.n	80029e6 <_malloc_r+0x2ba>
 80028ee:	4b5e      	ldr	r3, [pc, #376]	; (8002a68 <_malloc_r+0x33c>)
 80028f0:	f8df a188 	ldr.w	sl, [pc, #392]	; 8002a7c <_malloc_r+0x350>
 80028f4:	681a      	ldr	r2, [r3, #0]
 80028f6:	f8da 3000 	ldr.w	r3, [sl]
 80028fa:	3301      	adds	r3, #1
 80028fc:	eb05 0802 	add.w	r8, r5, r2
 8002900:	f000 8148 	beq.w	8002b94 <_malloc_r+0x468>
 8002904:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8002908:	f108 080f 	add.w	r8, r8, #15
 800290c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8002910:	f028 080f 	bic.w	r8, r8, #15
 8002914:	4641      	mov	r1, r8
 8002916:	4630      	mov	r0, r6
 8002918:	f000 fa6c 	bl	8002df4 <_sbrk_r>
 800291c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8002920:	4683      	mov	fp, r0
 8002922:	f000 8104 	beq.w	8002b2e <_malloc_r+0x402>
 8002926:	eb04 0009 	add.w	r0, r4, r9
 800292a:	4558      	cmp	r0, fp
 800292c:	f200 80fd 	bhi.w	8002b2a <_malloc_r+0x3fe>
 8002930:	4a4e      	ldr	r2, [pc, #312]	; (8002a6c <_malloc_r+0x340>)
 8002932:	6813      	ldr	r3, [r2, #0]
 8002934:	4443      	add	r3, r8
 8002936:	6013      	str	r3, [r2, #0]
 8002938:	f000 814d 	beq.w	8002bd6 <_malloc_r+0x4aa>
 800293c:	f8da 1000 	ldr.w	r1, [sl]
 8002940:	3101      	adds	r1, #1
 8002942:	bf1b      	ittet	ne
 8002944:	ebab 0000 	subne.w	r0, fp, r0
 8002948:	181b      	addne	r3, r3, r0
 800294a:	f8ca b000 	streq.w	fp, [sl]
 800294e:	6013      	strne	r3, [r2, #0]
 8002950:	f01b 0307 	ands.w	r3, fp, #7
 8002954:	f000 8134 	beq.w	8002bc0 <_malloc_r+0x494>
 8002958:	f1c3 0108 	rsb	r1, r3, #8
 800295c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8002960:	448b      	add	fp, r1
 8002962:	3308      	adds	r3, #8
 8002964:	44d8      	add	r8, fp
 8002966:	f3c8 080b 	ubfx	r8, r8, #0, #12
 800296a:	eba3 0808 	sub.w	r8, r3, r8
 800296e:	4641      	mov	r1, r8
 8002970:	4630      	mov	r0, r6
 8002972:	9201      	str	r2, [sp, #4]
 8002974:	f000 fa3e 	bl	8002df4 <_sbrk_r>
 8002978:	1c43      	adds	r3, r0, #1
 800297a:	9a01      	ldr	r2, [sp, #4]
 800297c:	f000 8146 	beq.w	8002c0c <_malloc_r+0x4e0>
 8002980:	eba0 010b 	sub.w	r1, r0, fp
 8002984:	4441      	add	r1, r8
 8002986:	f041 0101 	orr.w	r1, r1, #1
 800298a:	6813      	ldr	r3, [r2, #0]
 800298c:	f8c7 b008 	str.w	fp, [r7, #8]
 8002990:	4443      	add	r3, r8
 8002992:	42bc      	cmp	r4, r7
 8002994:	f8cb 1004 	str.w	r1, [fp, #4]
 8002998:	6013      	str	r3, [r2, #0]
 800299a:	d015      	beq.n	80029c8 <_malloc_r+0x29c>
 800299c:	f1b9 0f0f 	cmp.w	r9, #15
 80029a0:	f240 8130 	bls.w	8002c04 <_malloc_r+0x4d8>
 80029a4:	6860      	ldr	r0, [r4, #4]
 80029a6:	f1a9 010c 	sub.w	r1, r9, #12
 80029aa:	f021 0107 	bic.w	r1, r1, #7
 80029ae:	f000 0001 	and.w	r0, r0, #1
 80029b2:	eb04 0c01 	add.w	ip, r4, r1
 80029b6:	4308      	orrs	r0, r1
 80029b8:	f04f 0e05 	mov.w	lr, #5
 80029bc:	290f      	cmp	r1, #15
 80029be:	6060      	str	r0, [r4, #4]
 80029c0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 80029c4:	f200 813a 	bhi.w	8002c3c <_malloc_r+0x510>
 80029c8:	4a29      	ldr	r2, [pc, #164]	; (8002a70 <_malloc_r+0x344>)
 80029ca:	482a      	ldr	r0, [pc, #168]	; (8002a74 <_malloc_r+0x348>)
 80029cc:	6811      	ldr	r1, [r2, #0]
 80029ce:	68bc      	ldr	r4, [r7, #8]
 80029d0:	428b      	cmp	r3, r1
 80029d2:	6801      	ldr	r1, [r0, #0]
 80029d4:	bf88      	it	hi
 80029d6:	6013      	strhi	r3, [r2, #0]
 80029d8:	6862      	ldr	r2, [r4, #4]
 80029da:	428b      	cmp	r3, r1
 80029dc:	f022 0203 	bic.w	r2, r2, #3
 80029e0:	bf88      	it	hi
 80029e2:	6003      	strhi	r3, [r0, #0]
 80029e4:	e0a7      	b.n	8002b36 <_malloc_r+0x40a>
 80029e6:	1962      	adds	r2, r4, r5
 80029e8:	f043 0301 	orr.w	r3, r3, #1
 80029ec:	f045 0501 	orr.w	r5, r5, #1
 80029f0:	6065      	str	r5, [r4, #4]
 80029f2:	4630      	mov	r0, r6
 80029f4:	60ba      	str	r2, [r7, #8]
 80029f6:	6053      	str	r3, [r2, #4]
 80029f8:	f000 f98c 	bl	8002d14 <__malloc_unlock>
 80029fc:	3408      	adds	r4, #8
 80029fe:	4620      	mov	r0, r4
 8002a00:	b003      	add	sp, #12
 8002a02:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002a06:	4423      	add	r3, r4
 8002a08:	68e1      	ldr	r1, [r4, #12]
 8002a0a:	685a      	ldr	r2, [r3, #4]
 8002a0c:	68a5      	ldr	r5, [r4, #8]
 8002a0e:	f042 0201 	orr.w	r2, r2, #1
 8002a12:	60e9      	str	r1, [r5, #12]
 8002a14:	4630      	mov	r0, r6
 8002a16:	608d      	str	r5, [r1, #8]
 8002a18:	605a      	str	r2, [r3, #4]
 8002a1a:	f000 f97b 	bl	8002d14 <__malloc_unlock>
 8002a1e:	3408      	adds	r4, #8
 8002a20:	4620      	mov	r0, r4
 8002a22:	b003      	add	sp, #12
 8002a24:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002a28:	68dc      	ldr	r4, [r3, #12]
 8002a2a:	42a3      	cmp	r3, r4
 8002a2c:	bf08      	it	eq
 8002a2e:	3002      	addeq	r0, #2
 8002a30:	f43f aed6 	beq.w	80027e0 <_malloc_r+0xb4>
 8002a34:	e692      	b.n	800275c <_malloc_r+0x30>
 8002a36:	2b14      	cmp	r3, #20
 8002a38:	d971      	bls.n	8002b1e <_malloc_r+0x3f2>
 8002a3a:	2b54      	cmp	r3, #84	; 0x54
 8002a3c:	f200 80ad 	bhi.w	8002b9a <_malloc_r+0x46e>
 8002a40:	0b2b      	lsrs	r3, r5, #12
 8002a42:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8002a46:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8002a4a:	00c3      	lsls	r3, r0, #3
 8002a4c:	e6b3      	b.n	80027b6 <_malloc_r+0x8a>
 8002a4e:	4423      	add	r3, r4
 8002a50:	4630      	mov	r0, r6
 8002a52:	685a      	ldr	r2, [r3, #4]
 8002a54:	f042 0201 	orr.w	r2, r2, #1
 8002a58:	605a      	str	r2, [r3, #4]
 8002a5a:	3408      	adds	r4, #8
 8002a5c:	f000 f95a 	bl	8002d14 <__malloc_unlock>
 8002a60:	e68c      	b.n	800277c <_malloc_r+0x50>
 8002a62:	bf00      	nop
 8002a64:	200005d8 	.word	0x200005d8
 8002a68:	20000c38 	.word	0x20000c38
 8002a6c:	20000c08 	.word	0x20000c08
 8002a70:	20000c30 	.word	0x20000c30
 8002a74:	20000c34 	.word	0x20000c34
 8002a78:	200005e0 	.word	0x200005e0
 8002a7c:	200009e0 	.word	0x200009e0
 8002a80:	1961      	adds	r1, r4, r5
 8002a82:	f045 0e01 	orr.w	lr, r5, #1
 8002a86:	f042 0501 	orr.w	r5, r2, #1
 8002a8a:	f8c4 e004 	str.w	lr, [r4, #4]
 8002a8e:	4630      	mov	r0, r6
 8002a90:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8002a94:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8002a98:	604d      	str	r5, [r1, #4]
 8002a9a:	50e2      	str	r2, [r4, r3]
 8002a9c:	f000 f93a 	bl	8002d14 <__malloc_unlock>
 8002aa0:	3408      	adds	r4, #8
 8002aa2:	e66b      	b.n	800277c <_malloc_r+0x50>
 8002aa4:	08e8      	lsrs	r0, r5, #3
 8002aa6:	f105 0308 	add.w	r3, r5, #8
 8002aaa:	e64f      	b.n	800274c <_malloc_r+0x20>
 8002aac:	f108 0801 	add.w	r8, r8, #1
 8002ab0:	f018 0f03 	tst.w	r8, #3
 8002ab4:	f10e 0e08 	add.w	lr, lr, #8
 8002ab8:	f47f aed0 	bne.w	800285c <_malloc_r+0x130>
 8002abc:	e052      	b.n	8002b64 <_malloc_r+0x438>
 8002abe:	4419      	add	r1, r3
 8002ac0:	461c      	mov	r4, r3
 8002ac2:	684a      	ldr	r2, [r1, #4]
 8002ac4:	68db      	ldr	r3, [r3, #12]
 8002ac6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8002aca:	f042 0201 	orr.w	r2, r2, #1
 8002ace:	604a      	str	r2, [r1, #4]
 8002ad0:	4630      	mov	r0, r6
 8002ad2:	60eb      	str	r3, [r5, #12]
 8002ad4:	609d      	str	r5, [r3, #8]
 8002ad6:	f000 f91d 	bl	8002d14 <__malloc_unlock>
 8002ada:	e64f      	b.n	800277c <_malloc_r+0x50>
 8002adc:	0a5a      	lsrs	r2, r3, #9
 8002ade:	2a04      	cmp	r2, #4
 8002ae0:	d935      	bls.n	8002b4e <_malloc_r+0x422>
 8002ae2:	2a14      	cmp	r2, #20
 8002ae4:	d86f      	bhi.n	8002bc6 <_malloc_r+0x49a>
 8002ae6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8002aea:	00c9      	lsls	r1, r1, #3
 8002aec:	325b      	adds	r2, #91	; 0x5b
 8002aee:	eb07 0e01 	add.w	lr, r7, r1
 8002af2:	5879      	ldr	r1, [r7, r1]
 8002af4:	f1ae 0e08 	sub.w	lr, lr, #8
 8002af8:	458e      	cmp	lr, r1
 8002afa:	d058      	beq.n	8002bae <_malloc_r+0x482>
 8002afc:	684a      	ldr	r2, [r1, #4]
 8002afe:	f022 0203 	bic.w	r2, r2, #3
 8002b02:	429a      	cmp	r2, r3
 8002b04:	d902      	bls.n	8002b0c <_malloc_r+0x3e0>
 8002b06:	6889      	ldr	r1, [r1, #8]
 8002b08:	458e      	cmp	lr, r1
 8002b0a:	d1f7      	bne.n	8002afc <_malloc_r+0x3d0>
 8002b0c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8002b10:	687b      	ldr	r3, [r7, #4]
 8002b12:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8002b16:	f8ce 4008 	str.w	r4, [lr, #8]
 8002b1a:	60cc      	str	r4, [r1, #12]
 8002b1c:	e68c      	b.n	8002838 <_malloc_r+0x10c>
 8002b1e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8002b22:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8002b26:	00c3      	lsls	r3, r0, #3
 8002b28:	e645      	b.n	80027b6 <_malloc_r+0x8a>
 8002b2a:	42bc      	cmp	r4, r7
 8002b2c:	d072      	beq.n	8002c14 <_malloc_r+0x4e8>
 8002b2e:	68bc      	ldr	r4, [r7, #8]
 8002b30:	6862      	ldr	r2, [r4, #4]
 8002b32:	f022 0203 	bic.w	r2, r2, #3
 8002b36:	4295      	cmp	r5, r2
 8002b38:	eba2 0305 	sub.w	r3, r2, r5
 8002b3c:	d802      	bhi.n	8002b44 <_malloc_r+0x418>
 8002b3e:	2b0f      	cmp	r3, #15
 8002b40:	f73f af51 	bgt.w	80029e6 <_malloc_r+0x2ba>
 8002b44:	4630      	mov	r0, r6
 8002b46:	f000 f8e5 	bl	8002d14 <__malloc_unlock>
 8002b4a:	2400      	movs	r4, #0
 8002b4c:	e616      	b.n	800277c <_malloc_r+0x50>
 8002b4e:	099a      	lsrs	r2, r3, #6
 8002b50:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8002b54:	00c9      	lsls	r1, r1, #3
 8002b56:	3238      	adds	r2, #56	; 0x38
 8002b58:	e7c9      	b.n	8002aee <_malloc_r+0x3c2>
 8002b5a:	f8d9 9000 	ldr.w	r9, [r9]
 8002b5e:	4599      	cmp	r9, r3
 8002b60:	f040 8083 	bne.w	8002c6a <_malloc_r+0x53e>
 8002b64:	f010 0f03 	tst.w	r0, #3
 8002b68:	f1a9 0308 	sub.w	r3, r9, #8
 8002b6c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8002b70:	d1f3      	bne.n	8002b5a <_malloc_r+0x42e>
 8002b72:	687b      	ldr	r3, [r7, #4]
 8002b74:	ea23 0304 	bic.w	r3, r3, r4
 8002b78:	607b      	str	r3, [r7, #4]
 8002b7a:	0064      	lsls	r4, r4, #1
 8002b7c:	429c      	cmp	r4, r3
 8002b7e:	f63f aeac 	bhi.w	80028da <_malloc_r+0x1ae>
 8002b82:	b91c      	cbnz	r4, 8002b8c <_malloc_r+0x460>
 8002b84:	e6a9      	b.n	80028da <_malloc_r+0x1ae>
 8002b86:	0064      	lsls	r4, r4, #1
 8002b88:	f108 0804 	add.w	r8, r8, #4
 8002b8c:	421c      	tst	r4, r3
 8002b8e:	d0fa      	beq.n	8002b86 <_malloc_r+0x45a>
 8002b90:	4640      	mov	r0, r8
 8002b92:	e65f      	b.n	8002854 <_malloc_r+0x128>
 8002b94:	f108 0810 	add.w	r8, r8, #16
 8002b98:	e6bc      	b.n	8002914 <_malloc_r+0x1e8>
 8002b9a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8002b9e:	d826      	bhi.n	8002bee <_malloc_r+0x4c2>
 8002ba0:	0beb      	lsrs	r3, r5, #15
 8002ba2:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8002ba6:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8002baa:	00c3      	lsls	r3, r0, #3
 8002bac:	e603      	b.n	80027b6 <_malloc_r+0x8a>
 8002bae:	687b      	ldr	r3, [r7, #4]
 8002bb0:	1092      	asrs	r2, r2, #2
 8002bb2:	f04f 0801 	mov.w	r8, #1
 8002bb6:	fa08 f202 	lsl.w	r2, r8, r2
 8002bba:	4313      	orrs	r3, r2
 8002bbc:	607b      	str	r3, [r7, #4]
 8002bbe:	e7a8      	b.n	8002b12 <_malloc_r+0x3e6>
 8002bc0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8002bc4:	e6ce      	b.n	8002964 <_malloc_r+0x238>
 8002bc6:	2a54      	cmp	r2, #84	; 0x54
 8002bc8:	d829      	bhi.n	8002c1e <_malloc_r+0x4f2>
 8002bca:	0b1a      	lsrs	r2, r3, #12
 8002bcc:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8002bd0:	00c9      	lsls	r1, r1, #3
 8002bd2:	326e      	adds	r2, #110	; 0x6e
 8002bd4:	e78b      	b.n	8002aee <_malloc_r+0x3c2>
 8002bd6:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8002bda:	2900      	cmp	r1, #0
 8002bdc:	f47f aeae 	bne.w	800293c <_malloc_r+0x210>
 8002be0:	eb09 0208 	add.w	r2, r9, r8
 8002be4:	68b9      	ldr	r1, [r7, #8]
 8002be6:	f042 0201 	orr.w	r2, r2, #1
 8002bea:	604a      	str	r2, [r1, #4]
 8002bec:	e6ec      	b.n	80029c8 <_malloc_r+0x29c>
 8002bee:	f240 5254 	movw	r2, #1364	; 0x554
 8002bf2:	4293      	cmp	r3, r2
 8002bf4:	d81c      	bhi.n	8002c30 <_malloc_r+0x504>
 8002bf6:	0cab      	lsrs	r3, r5, #18
 8002bf8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8002bfc:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8002c00:	00c3      	lsls	r3, r0, #3
 8002c02:	e5d8      	b.n	80027b6 <_malloc_r+0x8a>
 8002c04:	2301      	movs	r3, #1
 8002c06:	f8cb 3004 	str.w	r3, [fp, #4]
 8002c0a:	e79b      	b.n	8002b44 <_malloc_r+0x418>
 8002c0c:	2101      	movs	r1, #1
 8002c0e:	f04f 0800 	mov.w	r8, #0
 8002c12:	e6ba      	b.n	800298a <_malloc_r+0x25e>
 8002c14:	4a16      	ldr	r2, [pc, #88]	; (8002c70 <_malloc_r+0x544>)
 8002c16:	6813      	ldr	r3, [r2, #0]
 8002c18:	4443      	add	r3, r8
 8002c1a:	6013      	str	r3, [r2, #0]
 8002c1c:	e68e      	b.n	800293c <_malloc_r+0x210>
 8002c1e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8002c22:	d814      	bhi.n	8002c4e <_malloc_r+0x522>
 8002c24:	0bda      	lsrs	r2, r3, #15
 8002c26:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8002c2a:	00c9      	lsls	r1, r1, #3
 8002c2c:	3277      	adds	r2, #119	; 0x77
 8002c2e:	e75e      	b.n	8002aee <_malloc_r+0x3c2>
 8002c30:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8002c34:	207f      	movs	r0, #127	; 0x7f
 8002c36:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8002c3a:	e5bc      	b.n	80027b6 <_malloc_r+0x8a>
 8002c3c:	f104 0108 	add.w	r1, r4, #8
 8002c40:	4630      	mov	r0, r6
 8002c42:	9201      	str	r2, [sp, #4]
 8002c44:	f003 f828 	bl	8005c98 <_free_r>
 8002c48:	9a01      	ldr	r2, [sp, #4]
 8002c4a:	6813      	ldr	r3, [r2, #0]
 8002c4c:	e6bc      	b.n	80029c8 <_malloc_r+0x29c>
 8002c4e:	f240 5154 	movw	r1, #1364	; 0x554
 8002c52:	428a      	cmp	r2, r1
 8002c54:	d805      	bhi.n	8002c62 <_malloc_r+0x536>
 8002c56:	0c9a      	lsrs	r2, r3, #18
 8002c58:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8002c5c:	00c9      	lsls	r1, r1, #3
 8002c5e:	327c      	adds	r2, #124	; 0x7c
 8002c60:	e745      	b.n	8002aee <_malloc_r+0x3c2>
 8002c62:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8002c66:	227e      	movs	r2, #126	; 0x7e
 8002c68:	e741      	b.n	8002aee <_malloc_r+0x3c2>
 8002c6a:	687b      	ldr	r3, [r7, #4]
 8002c6c:	e785      	b.n	8002b7a <_malloc_r+0x44e>
 8002c6e:	bf00      	nop
 8002c70:	20000c08 	.word	0x20000c08

08002c74 <memset>:
 8002c74:	b4f0      	push	{r4, r5, r6, r7}
 8002c76:	0786      	lsls	r6, r0, #30
 8002c78:	d043      	beq.n	8002d02 <memset+0x8e>
 8002c7a:	1e54      	subs	r4, r2, #1
 8002c7c:	2a00      	cmp	r2, #0
 8002c7e:	d03e      	beq.n	8002cfe <memset+0x8a>
 8002c80:	b2ca      	uxtb	r2, r1
 8002c82:	4603      	mov	r3, r0
 8002c84:	e002      	b.n	8002c8c <memset+0x18>
 8002c86:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002c8a:	d338      	bcc.n	8002cfe <memset+0x8a>
 8002c8c:	f803 2b01 	strb.w	r2, [r3], #1
 8002c90:	079d      	lsls	r5, r3, #30
 8002c92:	d1f8      	bne.n	8002c86 <memset+0x12>
 8002c94:	2c03      	cmp	r4, #3
 8002c96:	d92b      	bls.n	8002cf0 <memset+0x7c>
 8002c98:	b2cd      	uxtb	r5, r1
 8002c9a:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002c9e:	2c0f      	cmp	r4, #15
 8002ca0:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002ca4:	d916      	bls.n	8002cd4 <memset+0x60>
 8002ca6:	f1a4 0710 	sub.w	r7, r4, #16
 8002caa:	093f      	lsrs	r7, r7, #4
 8002cac:	f103 0620 	add.w	r6, r3, #32
 8002cb0:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002cb4:	f103 0210 	add.w	r2, r3, #16
 8002cb8:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002cbc:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002cc0:	3210      	adds	r2, #16
 8002cc2:	42b2      	cmp	r2, r6
 8002cc4:	d1f8      	bne.n	8002cb8 <memset+0x44>
 8002cc6:	f004 040f 	and.w	r4, r4, #15
 8002cca:	3701      	adds	r7, #1
 8002ccc:	2c03      	cmp	r4, #3
 8002cce:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002cd2:	d90d      	bls.n	8002cf0 <memset+0x7c>
 8002cd4:	461e      	mov	r6, r3
 8002cd6:	4622      	mov	r2, r4
 8002cd8:	3a04      	subs	r2, #4
 8002cda:	2a03      	cmp	r2, #3
 8002cdc:	f846 5b04 	str.w	r5, [r6], #4
 8002ce0:	d8fa      	bhi.n	8002cd8 <memset+0x64>
 8002ce2:	1f22      	subs	r2, r4, #4
 8002ce4:	f022 0203 	bic.w	r2, r2, #3
 8002ce8:	3204      	adds	r2, #4
 8002cea:	4413      	add	r3, r2
 8002cec:	f004 0403 	and.w	r4, r4, #3
 8002cf0:	b12c      	cbz	r4, 8002cfe <memset+0x8a>
 8002cf2:	b2c9      	uxtb	r1, r1
 8002cf4:	441c      	add	r4, r3
 8002cf6:	f803 1b01 	strb.w	r1, [r3], #1
 8002cfa:	429c      	cmp	r4, r3
 8002cfc:	d1fb      	bne.n	8002cf6 <memset+0x82>
 8002cfe:	bcf0      	pop	{r4, r5, r6, r7}
 8002d00:	4770      	bx	lr
 8002d02:	4614      	mov	r4, r2
 8002d04:	4603      	mov	r3, r0
 8002d06:	e7c5      	b.n	8002c94 <memset+0x20>

08002d08 <__malloc_lock>:
 8002d08:	4801      	ldr	r0, [pc, #4]	; (8002d10 <__malloc_lock+0x8>)
 8002d0a:	f003 ba73 	b.w	80061f4 <__retarget_lock_acquire_recursive>
 8002d0e:	bf00      	nop
 8002d10:	20000e8c 	.word	0x20000e8c

08002d14 <__malloc_unlock>:
 8002d14:	4801      	ldr	r0, [pc, #4]	; (8002d1c <__malloc_unlock+0x8>)
 8002d16:	f003 ba6f 	b.w	80061f8 <__retarget_lock_release_recursive>
 8002d1a:	bf00      	nop
 8002d1c:	20000e8c 	.word	0x20000e8c

08002d20 <printf>:
 8002d20:	b40f      	push	{r0, r1, r2, r3}
 8002d22:	b500      	push	{lr}
 8002d24:	4907      	ldr	r1, [pc, #28]	; (8002d44 <printf+0x24>)
 8002d26:	b083      	sub	sp, #12
 8002d28:	ab04      	add	r3, sp, #16
 8002d2a:	6808      	ldr	r0, [r1, #0]
 8002d2c:	f853 2b04 	ldr.w	r2, [r3], #4
 8002d30:	6881      	ldr	r1, [r0, #8]
 8002d32:	9301      	str	r3, [sp, #4]
 8002d34:	f000 f870 	bl	8002e18 <_vfprintf_r>
 8002d38:	b003      	add	sp, #12
 8002d3a:	f85d eb04 	ldr.w	lr, [sp], #4
 8002d3e:	b004      	add	sp, #16
 8002d40:	4770      	bx	lr
 8002d42:	bf00      	nop
 8002d44:	200001a8 	.word	0x200001a8

08002d48 <_puts_r>:
 8002d48:	b570      	push	{r4, r5, r6, lr}
 8002d4a:	4605      	mov	r5, r0
 8002d4c:	b088      	sub	sp, #32
 8002d4e:	4608      	mov	r0, r1
 8002d50:	460c      	mov	r4, r1
 8002d52:	f7fd fc75 	bl	8000640 <strlen>
 8002d56:	4a22      	ldr	r2, [pc, #136]	; (8002de0 <_puts_r+0x98>)
 8002d58:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002d5a:	9404      	str	r4, [sp, #16]
 8002d5c:	2601      	movs	r6, #1
 8002d5e:	1c44      	adds	r4, r0, #1
 8002d60:	a904      	add	r1, sp, #16
 8002d62:	9206      	str	r2, [sp, #24]
 8002d64:	2202      	movs	r2, #2
 8002d66:	9403      	str	r4, [sp, #12]
 8002d68:	9005      	str	r0, [sp, #20]
 8002d6a:	68ac      	ldr	r4, [r5, #8]
 8002d6c:	9607      	str	r6, [sp, #28]
 8002d6e:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002d72:	b31b      	cbz	r3, 8002dbc <_puts_r+0x74>
 8002d74:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002d76:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002d7a:	07ce      	lsls	r6, r1, #31
 8002d7c:	b29a      	uxth	r2, r3
 8002d7e:	d401      	bmi.n	8002d84 <_puts_r+0x3c>
 8002d80:	0590      	lsls	r0, r2, #22
 8002d82:	d525      	bpl.n	8002dd0 <_puts_r+0x88>
 8002d84:	0491      	lsls	r1, r2, #18
 8002d86:	d406      	bmi.n	8002d96 <_puts_r+0x4e>
 8002d88:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8002d8a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002d8e:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002d92:	81a3      	strh	r3, [r4, #12]
 8002d94:	6662      	str	r2, [r4, #100]	; 0x64
 8002d96:	4628      	mov	r0, r5
 8002d98:	aa01      	add	r2, sp, #4
 8002d9a:	4621      	mov	r1, r4
 8002d9c:	f003 f870 	bl	8005e80 <__sfvwrite_r>
 8002da0:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002da2:	2800      	cmp	r0, #0
 8002da4:	bf0c      	ite	eq
 8002da6:	250a      	moveq	r5, #10
 8002da8:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002dac:	07da      	lsls	r2, r3, #31
 8002dae:	d402      	bmi.n	8002db6 <_puts_r+0x6e>
 8002db0:	89a3      	ldrh	r3, [r4, #12]
 8002db2:	059b      	lsls	r3, r3, #22
 8002db4:	d506      	bpl.n	8002dc4 <_puts_r+0x7c>
 8002db6:	4628      	mov	r0, r5
 8002db8:	b008      	add	sp, #32
 8002dba:	bd70      	pop	{r4, r5, r6, pc}
 8002dbc:	4628      	mov	r0, r5
 8002dbe:	f002 fec9 	bl	8005b54 <__sinit>
 8002dc2:	e7d7      	b.n	8002d74 <_puts_r+0x2c>
 8002dc4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002dc6:	f003 fa17 	bl	80061f8 <__retarget_lock_release_recursive>
 8002dca:	4628      	mov	r0, r5
 8002dcc:	b008      	add	sp, #32
 8002dce:	bd70      	pop	{r4, r5, r6, pc}
 8002dd0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002dd2:	f003 fa0f 	bl	80061f4 <__retarget_lock_acquire_recursive>
 8002dd6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002dda:	b29a      	uxth	r2, r3
 8002ddc:	e7d2      	b.n	8002d84 <_puts_r+0x3c>
 8002dde:	bf00      	nop
 8002de0:	0800771c 	.word	0x0800771c

08002de4 <puts>:
 8002de4:	4b02      	ldr	r3, [pc, #8]	; (8002df0 <puts+0xc>)
 8002de6:	4601      	mov	r1, r0
 8002de8:	6818      	ldr	r0, [r3, #0]
 8002dea:	f7ff bfad 	b.w	8002d48 <_puts_r>
 8002dee:	bf00      	nop
 8002df0:	200001a8 	.word	0x200001a8

08002df4 <_sbrk_r>:
 8002df4:	b538      	push	{r3, r4, r5, lr}
 8002df6:	4c07      	ldr	r4, [pc, #28]	; (8002e14 <_sbrk_r+0x20>)
 8002df8:	2300      	movs	r3, #0
 8002dfa:	4605      	mov	r5, r0
 8002dfc:	4608      	mov	r0, r1
 8002dfe:	6023      	str	r3, [r4, #0]
 8002e00:	f7ff fbd6 	bl	80025b0 <_sbrk>
 8002e04:	1c43      	adds	r3, r0, #1
 8002e06:	d000      	beq.n	8002e0a <_sbrk_r+0x16>
 8002e08:	bd38      	pop	{r3, r4, r5, pc}
 8002e0a:	6823      	ldr	r3, [r4, #0]
 8002e0c:	2b00      	cmp	r3, #0
 8002e0e:	d0fb      	beq.n	8002e08 <_sbrk_r+0x14>
 8002e10:	602b      	str	r3, [r5, #0]
 8002e12:	bd38      	pop	{r3, r4, r5, pc}
 8002e14:	20000ea0 	.word	0x20000ea0

08002e18 <_vfprintf_r>:
 8002e18:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002e1c:	b0d7      	sub	sp, #348	; 0x15c
 8002e1e:	461c      	mov	r4, r3
 8002e20:	4689      	mov	r9, r1
 8002e22:	4617      	mov	r7, r2
 8002e24:	4605      	mov	r5, r0
 8002e26:	9003      	str	r0, [sp, #12]
 8002e28:	f003 f9d2 	bl	80061d0 <_localeconv_r>
 8002e2c:	6803      	ldr	r3, [r0, #0]
 8002e2e:	9316      	str	r3, [sp, #88]	; 0x58
 8002e30:	4618      	mov	r0, r3
 8002e32:	f7fd fc05 	bl	8000640 <strlen>
 8002e36:	9408      	str	r4, [sp, #32]
 8002e38:	9015      	str	r0, [sp, #84]	; 0x54
 8002e3a:	b11d      	cbz	r5, 8002e44 <_vfprintf_r+0x2c>
 8002e3c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002e3e:	2b00      	cmp	r3, #0
 8002e40:	f000 8107 	beq.w	8003052 <_vfprintf_r+0x23a>
 8002e44:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002e48:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002e4c:	07c8      	lsls	r0, r1, #31
 8002e4e:	b293      	uxth	r3, r2
 8002e50:	d402      	bmi.n	8002e58 <_vfprintf_r+0x40>
 8002e52:	0599      	lsls	r1, r3, #22
 8002e54:	f140 811f 	bpl.w	8003096 <_vfprintf_r+0x27e>
 8002e58:	049e      	lsls	r6, r3, #18
 8002e5a:	d40a      	bmi.n	8002e72 <_vfprintf_r+0x5a>
 8002e5c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002e60:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002e64:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002e68:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002e6c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002e70:	b29b      	uxth	r3, r3
 8002e72:	071d      	lsls	r5, r3, #28
 8002e74:	f140 80b2 	bpl.w	8002fdc <_vfprintf_r+0x1c4>
 8002e78:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002e7c:	2a00      	cmp	r2, #0
 8002e7e:	f000 80ad 	beq.w	8002fdc <_vfprintf_r+0x1c4>
 8002e82:	f003 021a 	and.w	r2, r3, #26
 8002e86:	2a0a      	cmp	r2, #10
 8002e88:	f000 80c9 	beq.w	800301e <_vfprintf_r+0x206>
 8002e8c:	2300      	movs	r3, #0
 8002e8e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80030a8 <_vfprintf_r+0x290>
 8002e92:	9310      	str	r3, [sp, #64]	; 0x40
 8002e94:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002e98:	9317      	str	r3, [sp, #92]	; 0x5c
 8002e9a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002e9e:	931b      	str	r3, [sp, #108]	; 0x6c
 8002ea0:	9318      	str	r3, [sp, #96]	; 0x60
 8002ea2:	9305      	str	r3, [sp, #20]
 8002ea4:	ab2d      	add	r3, sp, #180	; 0xb4
 8002ea6:	932a      	str	r3, [sp, #168]	; 0xa8
 8002ea8:	469b      	mov	fp, r3
 8002eaa:	783b      	ldrb	r3, [r7, #0]
 8002eac:	f8cd 901c 	str.w	r9, [sp, #28]
 8002eb0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002eb4:	2b00      	cmp	r3, #0
 8002eb6:	f000 8259 	beq.w	800336c <_vfprintf_r+0x554>
 8002eba:	2b25      	cmp	r3, #37	; 0x25
 8002ebc:	463c      	mov	r4, r7
 8002ebe:	d102      	bne.n	8002ec6 <_vfprintf_r+0xae>
 8002ec0:	e01d      	b.n	8002efe <_vfprintf_r+0xe6>
 8002ec2:	2b25      	cmp	r3, #37	; 0x25
 8002ec4:	d003      	beq.n	8002ece <_vfprintf_r+0xb6>
 8002ec6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002eca:	2b00      	cmp	r3, #0
 8002ecc:	d1f9      	bne.n	8002ec2 <_vfprintf_r+0xaa>
 8002ece:	1be5      	subs	r5, r4, r7
 8002ed0:	b18d      	cbz	r5, 8002ef6 <_vfprintf_r+0xde>
 8002ed2:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002ed6:	3301      	adds	r3, #1
 8002ed8:	442a      	add	r2, r5
 8002eda:	2b07      	cmp	r3, #7
 8002edc:	f8cb 7000 	str.w	r7, [fp]
 8002ee0:	f8cb 5004 	str.w	r5, [fp, #4]
 8002ee4:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002ee8:	f300 80ca 	bgt.w	8003080 <_vfprintf_r+0x268>
 8002eec:	f10b 0b08 	add.w	fp, fp, #8
 8002ef0:	9b05      	ldr	r3, [sp, #20]
 8002ef2:	442b      	add	r3, r5
 8002ef4:	9305      	str	r3, [sp, #20]
 8002ef6:	7823      	ldrb	r3, [r4, #0]
 8002ef8:	2b00      	cmp	r3, #0
 8002efa:	f000 8237 	beq.w	800336c <_vfprintf_r+0x554>
 8002efe:	2300      	movs	r3, #0
 8002f00:	7866      	ldrb	r6, [r4, #1]
 8002f02:	9306      	str	r3, [sp, #24]
 8002f04:	4698      	mov	r8, r3
 8002f06:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002f0a:	f104 0a01 	add.w	sl, r4, #1
 8002f0e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002f12:	252b      	movs	r5, #43	; 0x2b
 8002f14:	f10a 0a01 	add.w	sl, sl, #1
 8002f18:	f1a6 0320 	sub.w	r3, r6, #32
 8002f1c:	2b5a      	cmp	r3, #90	; 0x5a
 8002f1e:	f200 842a 	bhi.w	8003776 <_vfprintf_r+0x95e>
 8002f22:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002f26:	03aa      	.short	0x03aa
 8002f28:	04280428 	.word	0x04280428
 8002f2c:	0428029c 	.word	0x0428029c
 8002f30:	04280428 	.word	0x04280428
 8002f34:	042802a7 	.word	0x042802a7
 8002f38:	02c60428 	.word	0x02c60428
 8002f3c:	042802d2 	.word	0x042802d2
 8002f40:	02dc02d7 	.word	0x02dc02d7
 8002f44:	02f60428 	.word	0x02f60428
 8002f48:	026d026d 	.word	0x026d026d
 8002f4c:	026d026d 	.word	0x026d026d
 8002f50:	026d026d 	.word	0x026d026d
 8002f54:	026d026d 	.word	0x026d026d
 8002f58:	0428026d 	.word	0x0428026d
 8002f5c:	04280428 	.word	0x04280428
 8002f60:	04280428 	.word	0x04280428
 8002f64:	04280428 	.word	0x04280428
 8002f68:	042802fb 	.word	0x042802fb
 8002f6c:	03f3033c 	.word	0x03f3033c
 8002f70:	02fb02fb 	.word	0x02fb02fb
 8002f74:	042802fb 	.word	0x042802fb
 8002f78:	04280428 	.word	0x04280428
 8002f7c:	03ee0428 	.word	0x03ee0428
 8002f80:	04280428 	.word	0x04280428
 8002f84:	0428009a 	.word	0x0428009a
 8002f88:	04280428 	.word	0x04280428
 8002f8c:	04280350 	.word	0x04280350
 8002f90:	04280379 	.word	0x04280379
 8002f94:	03900428 	.word	0x03900428
 8002f98:	04280428 	.word	0x04280428
 8002f9c:	04280428 	.word	0x04280428
 8002fa0:	04280428 	.word	0x04280428
 8002fa4:	04280428 	.word	0x04280428
 8002fa8:	042802fb 	.word	0x042802fb
 8002fac:	00c5033c 	.word	0x00c5033c
 8002fb0:	02fb02fb 	.word	0x02fb02fb
 8002fb4:	03d102fb 	.word	0x03d102fb
 8002fb8:	007000c5 	.word	0x007000c5
 8002fbc:	03b50428 	.word	0x03b50428
 8002fc0:	03c20428 	.word	0x03c20428
 8002fc4:	03de009c 	.word	0x03de009c
 8002fc8:	04280070 	.word	0x04280070
 8002fcc:	00720350 	.word	0x00720350
 8002fd0:	0428022c 	.word	0x0428022c
 8002fd4:	027c0428 	.word	0x027c0428
 8002fd8:	00720428 	.word	0x00720428
 8002fdc:	4649      	mov	r1, r9
 8002fde:	9803      	ldr	r0, [sp, #12]
 8002fe0:	f001 fc9a 	bl	8004918 <__swsetup_r>
 8002fe4:	b1a0      	cbz	r0, 8003010 <_vfprintf_r+0x1f8>
 8002fe6:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002fea:	07d8      	lsls	r0, r3, #31
 8002fec:	d404      	bmi.n	8002ff8 <_vfprintf_r+0x1e0>
 8002fee:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002ff2:	0599      	lsls	r1, r3, #22
 8002ff4:	f140 83b7 	bpl.w	8003766 <_vfprintf_r+0x94e>
 8002ff8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002ffc:	9305      	str	r3, [sp, #20]
 8002ffe:	9805      	ldr	r0, [sp, #20]
 8003000:	b057      	add	sp, #348	; 0x15c
 8003002:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003006:	f048 0820 	orr.w	r8, r8, #32
 800300a:	f89a 6000 	ldrb.w	r6, [sl]
 800300e:	e781      	b.n	8002f14 <_vfprintf_r+0xfc>
 8003010:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003014:	f003 021a 	and.w	r2, r3, #26
 8003018:	2a0a      	cmp	r2, #10
 800301a:	f47f af37 	bne.w	8002e8c <_vfprintf_r+0x74>
 800301e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8003022:	2a00      	cmp	r2, #0
 8003024:	f6ff af32 	blt.w	8002e8c <_vfprintf_r+0x74>
 8003028:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800302c:	07d2      	lsls	r2, r2, #31
 800302e:	d405      	bmi.n	800303c <_vfprintf_r+0x224>
 8003030:	059b      	lsls	r3, r3, #22
 8003032:	d403      	bmi.n	800303c <_vfprintf_r+0x224>
 8003034:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003038:	f003 f8de 	bl	80061f8 <__retarget_lock_release_recursive>
 800303c:	4623      	mov	r3, r4
 800303e:	463a      	mov	r2, r7
 8003040:	4649      	mov	r1, r9
 8003042:	9803      	ldr	r0, [sp, #12]
 8003044:	f001 fc26 	bl	8004894 <__sbprintf>
 8003048:	9005      	str	r0, [sp, #20]
 800304a:	9805      	ldr	r0, [sp, #20]
 800304c:	b057      	add	sp, #348	; 0x15c
 800304e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003052:	9803      	ldr	r0, [sp, #12]
 8003054:	f002 fd7e 	bl	8005b54 <__sinit>
 8003058:	e6f4      	b.n	8002e44 <_vfprintf_r+0x2c>
 800305a:	f048 0810 	orr.w	r8, r8, #16
 800305e:	f018 0f20 	tst.w	r8, #32
 8003062:	f000 836c 	beq.w	800373e <_vfprintf_r+0x926>
 8003066:	9c08      	ldr	r4, [sp, #32]
 8003068:	3407      	adds	r4, #7
 800306a:	f024 0307 	bic.w	r3, r4, #7
 800306e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8003072:	f103 0208 	add.w	r2, r3, #8
 8003076:	9208      	str	r2, [sp, #32]
 8003078:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800307c:	2200      	movs	r2, #0
 800307e:	e18c      	b.n	800339a <_vfprintf_r+0x582>
 8003080:	aa2a      	add	r2, sp, #168	; 0xa8
 8003082:	9907      	ldr	r1, [sp, #28]
 8003084:	9803      	ldr	r0, [sp, #12]
 8003086:	f003 ff33 	bl	8006ef0 <__sprint_r>
 800308a:	2800      	cmp	r0, #0
 800308c:	f041 8376 	bne.w	800477c <_vfprintf_r+0x1964>
 8003090:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003094:	e72c      	b.n	8002ef0 <_vfprintf_r+0xd8>
 8003096:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800309a:	f003 f8ab 	bl	80061f4 <__retarget_lock_acquire_recursive>
 800309e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80030a2:	b293      	uxth	r3, r2
 80030a4:	e6d8      	b.n	8002e58 <_vfprintf_r+0x40>
 80030a6:	bf00      	nop
	...
 80030b0:	4643      	mov	r3, r8
 80030b2:	069f      	lsls	r7, r3, #26
 80030b4:	f140 832f 	bpl.w	8003716 <_vfprintf_r+0x8fe>
 80030b8:	9c08      	ldr	r4, [sp, #32]
 80030ba:	3407      	adds	r4, #7
 80030bc:	f024 0407 	bic.w	r4, r4, #7
 80030c0:	e9d4 0100 	ldrd	r0, r1, [r4]
 80030c4:	f104 0208 	add.w	r2, r4, #8
 80030c8:	9208      	str	r2, [sp, #32]
 80030ca:	4604      	mov	r4, r0
 80030cc:	460d      	mov	r5, r1
 80030ce:	2800      	cmp	r0, #0
 80030d0:	f171 0200 	sbcs.w	r2, r1, #0
 80030d4:	da05      	bge.n	80030e2 <_vfprintf_r+0x2ca>
 80030d6:	222d      	movs	r2, #45	; 0x2d
 80030d8:	4264      	negs	r4, r4
 80030da:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80030de:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80030e2:	aa56      	add	r2, sp, #344	; 0x158
 80030e4:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80030e8:	9204      	str	r2, [sp, #16]
 80030ea:	f000 84b2 	beq.w	8003a52 <_vfprintf_r+0xc3a>
 80030ee:	2201      	movs	r2, #1
 80030f0:	ea54 0105 	orrs.w	r1, r4, r5
 80030f4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 80030f8:	f040 8159 	bne.w	80033ae <_vfprintf_r+0x596>
 80030fc:	f1b9 0f00 	cmp.w	r9, #0
 8003100:	f040 8619 	bne.w	8003d36 <_vfprintf_r+0xf1e>
 8003104:	2a00      	cmp	r2, #0
 8003106:	f040 8508 	bne.w	8003b1a <_vfprintf_r+0xd02>
 800310a:	f013 0301 	ands.w	r3, r3, #1
 800310e:	af56      	add	r7, sp, #344	; 0x158
 8003110:	9309      	str	r3, [sp, #36]	; 0x24
 8003112:	d002      	beq.n	800311a <_vfprintf_r+0x302>
 8003114:	2330      	movs	r3, #48	; 0x30
 8003116:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800311a:	2300      	movs	r3, #0
 800311c:	930a      	str	r3, [sp, #40]	; 0x28
 800311e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003120:	9314      	str	r3, [sp, #80]	; 0x50
 8003122:	9311      	str	r3, [sp, #68]	; 0x44
 8003124:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003126:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800312a:	454b      	cmp	r3, r9
 800312c:	bfb8      	it	lt
 800312e:	464b      	movlt	r3, r9
 8003130:	9304      	str	r3, [sp, #16]
 8003132:	b112      	cbz	r2, 800313a <_vfprintf_r+0x322>
 8003134:	9b04      	ldr	r3, [sp, #16]
 8003136:	3301      	adds	r3, #1
 8003138:	9304      	str	r3, [sp, #16]
 800313a:	f018 0302 	ands.w	r3, r8, #2
 800313e:	930b      	str	r3, [sp, #44]	; 0x2c
 8003140:	d002      	beq.n	8003148 <_vfprintf_r+0x330>
 8003142:	9b04      	ldr	r3, [sp, #16]
 8003144:	3302      	adds	r3, #2
 8003146:	9304      	str	r3, [sp, #16]
 8003148:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 800314c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800314e:	930e      	str	r3, [sp, #56]	; 0x38
 8003150:	d13f      	bne.n	80031d2 <_vfprintf_r+0x3ba>
 8003152:	9b06      	ldr	r3, [sp, #24]
 8003154:	9904      	ldr	r1, [sp, #16]
 8003156:	1a5d      	subs	r5, r3, r1
 8003158:	2d00      	cmp	r5, #0
 800315a:	dd3a      	ble.n	80031d2 <_vfprintf_r+0x3ba>
 800315c:	2d10      	cmp	r5, #16
 800315e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003160:	dd29      	ble.n	80031b6 <_vfprintf_r+0x39e>
 8003162:	4659      	mov	r1, fp
 8003164:	4620      	mov	r0, r4
 8003166:	9620      	str	r6, [sp, #128]	; 0x80
 8003168:	2310      	movs	r3, #16
 800316a:	9c03      	ldr	r4, [sp, #12]
 800316c:	9e07      	ldr	r6, [sp, #28]
 800316e:	46bb      	mov	fp, r7
 8003170:	e004      	b.n	800317c <_vfprintf_r+0x364>
 8003172:	3d10      	subs	r5, #16
 8003174:	2d10      	cmp	r5, #16
 8003176:	f101 0108 	add.w	r1, r1, #8
 800317a:	dd18      	ble.n	80031ae <_vfprintf_r+0x396>
 800317c:	3201      	adds	r2, #1
 800317e:	4fba      	ldr	r7, [pc, #744]	; (8003468 <_vfprintf_r+0x650>)
 8003180:	3010      	adds	r0, #16
 8003182:	2a07      	cmp	r2, #7
 8003184:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003188:	e9c1 7300 	strd	r7, r3, [r1]
 800318c:	ddf1      	ble.n	8003172 <_vfprintf_r+0x35a>
 800318e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003190:	4631      	mov	r1, r6
 8003192:	4620      	mov	r0, r4
 8003194:	930c      	str	r3, [sp, #48]	; 0x30
 8003196:	f003 feab 	bl	8006ef0 <__sprint_r>
 800319a:	2800      	cmp	r0, #0
 800319c:	f040 843d 	bne.w	8003a1a <_vfprintf_r+0xc02>
 80031a0:	3d10      	subs	r5, #16
 80031a2:	2d10      	cmp	r5, #16
 80031a4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80031a8:	a92d      	add	r1, sp, #180	; 0xb4
 80031aa:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80031ac:	dce6      	bgt.n	800317c <_vfprintf_r+0x364>
 80031ae:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80031b0:	465f      	mov	r7, fp
 80031b2:	4604      	mov	r4, r0
 80031b4:	468b      	mov	fp, r1
 80031b6:	3201      	adds	r2, #1
 80031b8:	4bab      	ldr	r3, [pc, #684]	; (8003468 <_vfprintf_r+0x650>)
 80031ba:	442c      	add	r4, r5
 80031bc:	2a07      	cmp	r2, #7
 80031be:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80031c2:	e9cb 3500 	strd	r3, r5, [fp]
 80031c6:	f300 84ff 	bgt.w	8003bc8 <_vfprintf_r+0xdb0>
 80031ca:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80031ce:	f10b 0b08 	add.w	fp, fp, #8
 80031d2:	b172      	cbz	r2, 80031f2 <_vfprintf_r+0x3da>
 80031d4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031d6:	3201      	adds	r2, #1
 80031d8:	3401      	adds	r4, #1
 80031da:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 80031de:	2101      	movs	r1, #1
 80031e0:	2a07      	cmp	r2, #7
 80031e2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80031e6:	e9cb 0100 	strd	r0, r1, [fp]
 80031ea:	f300 8418 	bgt.w	8003a1e <_vfprintf_r+0xc06>
 80031ee:	f10b 0b08 	add.w	fp, fp, #8
 80031f2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80031f4:	b16b      	cbz	r3, 8003212 <_vfprintf_r+0x3fa>
 80031f6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80031f8:	3301      	adds	r3, #1
 80031fa:	3402      	adds	r4, #2
 80031fc:	a923      	add	r1, sp, #140	; 0x8c
 80031fe:	2202      	movs	r2, #2
 8003200:	2b07      	cmp	r3, #7
 8003202:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003206:	e9cb 1200 	strd	r1, r2, [fp]
 800320a:	f300 8415 	bgt.w	8003a38 <_vfprintf_r+0xc20>
 800320e:	f10b 0b08 	add.w	fp, fp, #8
 8003212:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8003214:	2b80      	cmp	r3, #128	; 0x80
 8003216:	f000 8331 	beq.w	800387c <_vfprintf_r+0xa64>
 800321a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800321c:	eba9 0503 	sub.w	r5, r9, r3
 8003220:	2d00      	cmp	r5, #0
 8003222:	dd37      	ble.n	8003294 <_vfprintf_r+0x47c>
 8003224:	2d10      	cmp	r5, #16
 8003226:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003228:	4b90      	ldr	r3, [pc, #576]	; (800346c <_vfprintf_r+0x654>)
 800322a:	dd28      	ble.n	800327e <_vfprintf_r+0x466>
 800322c:	4659      	mov	r1, fp
 800322e:	4620      	mov	r0, r4
 8003230:	46bb      	mov	fp, r7
 8003232:	f04f 0910 	mov.w	r9, #16
 8003236:	4637      	mov	r7, r6
 8003238:	461c      	mov	r4, r3
 800323a:	9e07      	ldr	r6, [sp, #28]
 800323c:	e004      	b.n	8003248 <_vfprintf_r+0x430>
 800323e:	3d10      	subs	r5, #16
 8003240:	2d10      	cmp	r5, #16
 8003242:	f101 0108 	add.w	r1, r1, #8
 8003246:	dd15      	ble.n	8003274 <_vfprintf_r+0x45c>
 8003248:	3201      	adds	r2, #1
 800324a:	3010      	adds	r0, #16
 800324c:	2a07      	cmp	r2, #7
 800324e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003252:	e9c1 4900 	strd	r4, r9, [r1]
 8003256:	ddf2      	ble.n	800323e <_vfprintf_r+0x426>
 8003258:	aa2a      	add	r2, sp, #168	; 0xa8
 800325a:	4631      	mov	r1, r6
 800325c:	9803      	ldr	r0, [sp, #12]
 800325e:	f003 fe47 	bl	8006ef0 <__sprint_r>
 8003262:	2800      	cmp	r0, #0
 8003264:	f040 83d9 	bne.w	8003a1a <_vfprintf_r+0xc02>
 8003268:	3d10      	subs	r5, #16
 800326a:	2d10      	cmp	r5, #16
 800326c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003270:	a92d      	add	r1, sp, #180	; 0xb4
 8003272:	dce9      	bgt.n	8003248 <_vfprintf_r+0x430>
 8003274:	463e      	mov	r6, r7
 8003276:	4623      	mov	r3, r4
 8003278:	465f      	mov	r7, fp
 800327a:	4604      	mov	r4, r0
 800327c:	468b      	mov	fp, r1
 800327e:	3201      	adds	r2, #1
 8003280:	442c      	add	r4, r5
 8003282:	2a07      	cmp	r2, #7
 8003284:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003288:	e9cb 3500 	strd	r3, r5, [fp]
 800328c:	f300 83ef 	bgt.w	8003a6e <_vfprintf_r+0xc56>
 8003290:	f10b 0b08 	add.w	fp, fp, #8
 8003294:	f418 7f80 	tst.w	r8, #256	; 0x100
 8003298:	f040 8280 	bne.w	800379c <_vfprintf_r+0x984>
 800329c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800329e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80032a0:	f8cb 7000 	str.w	r7, [fp]
 80032a4:	3301      	adds	r3, #1
 80032a6:	4414      	add	r4, r2
 80032a8:	2b07      	cmp	r3, #7
 80032aa:	942c      	str	r4, [sp, #176]	; 0xb0
 80032ac:	f8cb 2004 	str.w	r2, [fp, #4]
 80032b0:	932b      	str	r3, [sp, #172]	; 0xac
 80032b2:	f300 8392 	bgt.w	80039da <_vfprintf_r+0xbc2>
 80032b6:	f10b 0b08 	add.w	fp, fp, #8
 80032ba:	f018 0f04 	tst.w	r8, #4
 80032be:	d03b      	beq.n	8003338 <_vfprintf_r+0x520>
 80032c0:	9b06      	ldr	r3, [sp, #24]
 80032c2:	9a04      	ldr	r2, [sp, #16]
 80032c4:	1a9d      	subs	r5, r3, r2
 80032c6:	2d00      	cmp	r5, #0
 80032c8:	dd36      	ble.n	8003338 <_vfprintf_r+0x520>
 80032ca:	2d10      	cmp	r5, #16
 80032cc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80032ce:	dd21      	ble.n	8003314 <_vfprintf_r+0x4fc>
 80032d0:	2610      	movs	r6, #16
 80032d2:	9f03      	ldr	r7, [sp, #12]
 80032d4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 80032d8:	e004      	b.n	80032e4 <_vfprintf_r+0x4cc>
 80032da:	3d10      	subs	r5, #16
 80032dc:	2d10      	cmp	r5, #16
 80032de:	f10b 0b08 	add.w	fp, fp, #8
 80032e2:	dd17      	ble.n	8003314 <_vfprintf_r+0x4fc>
 80032e4:	3301      	adds	r3, #1
 80032e6:	4a60      	ldr	r2, [pc, #384]	; (8003468 <_vfprintf_r+0x650>)
 80032e8:	3410      	adds	r4, #16
 80032ea:	2b07      	cmp	r3, #7
 80032ec:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80032f0:	e9cb 2600 	strd	r2, r6, [fp]
 80032f4:	ddf1      	ble.n	80032da <_vfprintf_r+0x4c2>
 80032f6:	aa2a      	add	r2, sp, #168	; 0xa8
 80032f8:	4641      	mov	r1, r8
 80032fa:	4638      	mov	r0, r7
 80032fc:	f003 fdf8 	bl	8006ef0 <__sprint_r>
 8003300:	2800      	cmp	r0, #0
 8003302:	f040 856c 	bne.w	8003dde <_vfprintf_r+0xfc6>
 8003306:	3d10      	subs	r5, #16
 8003308:	2d10      	cmp	r5, #16
 800330a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800330e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003312:	dce7      	bgt.n	80032e4 <_vfprintf_r+0x4cc>
 8003314:	3301      	adds	r3, #1
 8003316:	4a54      	ldr	r2, [pc, #336]	; (8003468 <_vfprintf_r+0x650>)
 8003318:	442c      	add	r4, r5
 800331a:	2b07      	cmp	r3, #7
 800331c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003320:	e9cb 2500 	strd	r2, r5, [fp]
 8003324:	dd08      	ble.n	8003338 <_vfprintf_r+0x520>
 8003326:	aa2a      	add	r2, sp, #168	; 0xa8
 8003328:	9907      	ldr	r1, [sp, #28]
 800332a:	9803      	ldr	r0, [sp, #12]
 800332c:	f003 fde0 	bl	8006ef0 <__sprint_r>
 8003330:	2800      	cmp	r0, #0
 8003332:	f040 82e9 	bne.w	8003908 <_vfprintf_r+0xaf0>
 8003336:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003338:	9904      	ldr	r1, [sp, #16]
 800333a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 800333e:	428a      	cmp	r2, r1
 8003340:	bfac      	ite	ge
 8003342:	189b      	addge	r3, r3, r2
 8003344:	185b      	addlt	r3, r3, r1
 8003346:	9305      	str	r3, [sp, #20]
 8003348:	2c00      	cmp	r4, #0
 800334a:	f040 82d5 	bne.w	80038f8 <_vfprintf_r+0xae0>
 800334e:	2300      	movs	r3, #0
 8003350:	932b      	str	r3, [sp, #172]	; 0xac
 8003352:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003354:	b11b      	cbz	r3, 800335e <_vfprintf_r+0x546>
 8003356:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003358:	9803      	ldr	r0, [sp, #12]
 800335a:	f002 fc9d 	bl	8005c98 <_free_r>
 800335e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003362:	4657      	mov	r7, sl
 8003364:	783b      	ldrb	r3, [r7, #0]
 8003366:	2b00      	cmp	r3, #0
 8003368:	f47f ada7 	bne.w	8002eba <_vfprintf_r+0xa2>
 800336c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 800336e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003372:	2b00      	cmp	r3, #0
 8003374:	f041 80e7 	bne.w	8004546 <_vfprintf_r+0x172e>
 8003378:	2300      	movs	r3, #0
 800337a:	932b      	str	r3, [sp, #172]	; 0xac
 800337c:	e2cb      	b.n	8003916 <_vfprintf_r+0xafe>
 800337e:	4643      	mov	r3, r8
 8003380:	069a      	lsls	r2, r3, #26
 8003382:	f140 814e 	bpl.w	8003622 <_vfprintf_r+0x80a>
 8003386:	9c08      	ldr	r4, [sp, #32]
 8003388:	3407      	adds	r4, #7
 800338a:	f024 0207 	bic.w	r2, r4, #7
 800338e:	f102 0108 	add.w	r1, r2, #8
 8003392:	e9d2 4500 	ldrd	r4, r5, [r2]
 8003396:	9108      	str	r1, [sp, #32]
 8003398:	2201      	movs	r2, #1
 800339a:	2100      	movs	r1, #0
 800339c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 80033a0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80033a4:	a956      	add	r1, sp, #344	; 0x158
 80033a6:	9104      	str	r1, [sp, #16]
 80033a8:	f47f aea2 	bne.w	80030f0 <_vfprintf_r+0x2d8>
 80033ac:	4698      	mov	r8, r3
 80033ae:	2a01      	cmp	r2, #1
 80033b0:	f000 8350 	beq.w	8003a54 <_vfprintf_r+0xc3c>
 80033b4:	2a02      	cmp	r2, #2
 80033b6:	f000 831b 	beq.w	80039f0 <_vfprintf_r+0xbd8>
 80033ba:	a956      	add	r1, sp, #344	; 0x158
 80033bc:	e000      	b.n	80033c0 <_vfprintf_r+0x5a8>
 80033be:	4639      	mov	r1, r7
 80033c0:	08e2      	lsrs	r2, r4, #3
 80033c2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 80033c6:	08e8      	lsrs	r0, r5, #3
 80033c8:	f004 0307 	and.w	r3, r4, #7
 80033cc:	4605      	mov	r5, r0
 80033ce:	4614      	mov	r4, r2
 80033d0:	3330      	adds	r3, #48	; 0x30
 80033d2:	ea54 0205 	orrs.w	r2, r4, r5
 80033d6:	f801 3c01 	strb.w	r3, [r1, #-1]
 80033da:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 80033de:	d1ee      	bne.n	80033be <_vfprintf_r+0x5a6>
 80033e0:	f018 0f01 	tst.w	r8, #1
 80033e4:	f000 8314 	beq.w	8003a10 <_vfprintf_r+0xbf8>
 80033e8:	2b30      	cmp	r3, #48	; 0x30
 80033ea:	f000 8311 	beq.w	8003a10 <_vfprintf_r+0xbf8>
 80033ee:	9a04      	ldr	r2, [sp, #16]
 80033f0:	3902      	subs	r1, #2
 80033f2:	2330      	movs	r3, #48	; 0x30
 80033f4:	1a52      	subs	r2, r2, r1
 80033f6:	f807 3c01 	strb.w	r3, [r7, #-1]
 80033fa:	9209      	str	r2, [sp, #36]	; 0x24
 80033fc:	460f      	mov	r7, r1
 80033fe:	e68c      	b.n	800311a <_vfprintf_r+0x302>
 8003400:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003404:	2200      	movs	r2, #0
 8003406:	f81a 6b01 	ldrb.w	r6, [sl], #1
 800340a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 800340e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8003412:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003416:	2b09      	cmp	r3, #9
 8003418:	d9f5      	bls.n	8003406 <_vfprintf_r+0x5ee>
 800341a:	9206      	str	r2, [sp, #24]
 800341c:	e57c      	b.n	8002f18 <_vfprintf_r+0x100>
 800341e:	4b14      	ldr	r3, [pc, #80]	; (8003470 <_vfprintf_r+0x658>)
 8003420:	9317      	str	r3, [sp, #92]	; 0x5c
 8003422:	f018 0f20 	tst.w	r8, #32
 8003426:	f000 8114 	beq.w	8003652 <_vfprintf_r+0x83a>
 800342a:	9c08      	ldr	r4, [sp, #32]
 800342c:	3407      	adds	r4, #7
 800342e:	f024 0307 	bic.w	r3, r4, #7
 8003432:	e9d3 4500 	ldrd	r4, r5, [r3]
 8003436:	f103 0208 	add.w	r2, r3, #8
 800343a:	9208      	str	r2, [sp, #32]
 800343c:	f018 0f01 	tst.w	r8, #1
 8003440:	d009      	beq.n	8003456 <_vfprintf_r+0x63e>
 8003442:	ea54 0305 	orrs.w	r3, r4, r5
 8003446:	d006      	beq.n	8003456 <_vfprintf_r+0x63e>
 8003448:	2330      	movs	r3, #48	; 0x30
 800344a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 800344e:	f048 0802 	orr.w	r8, r8, #2
 8003452:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003456:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800345a:	2202      	movs	r2, #2
 800345c:	e79d      	b.n	800339a <_vfprintf_r+0x582>
 800345e:	f048 0801 	orr.w	r8, r8, #1
 8003462:	f89a 6000 	ldrb.w	r6, [sl]
 8003466:	e555      	b.n	8002f14 <_vfprintf_r+0xfc>
 8003468:	08007764 	.word	0x08007764
 800346c:	08007774 	.word	0x08007774
 8003470:	08007730 	.word	0x08007730
 8003474:	9e03      	ldr	r6, [sp, #12]
 8003476:	4630      	mov	r0, r6
 8003478:	f002 feaa 	bl	80061d0 <_localeconv_r>
 800347c:	6843      	ldr	r3, [r0, #4]
 800347e:	9318      	str	r3, [sp, #96]	; 0x60
 8003480:	4618      	mov	r0, r3
 8003482:	f7fd f8dd 	bl	8000640 <strlen>
 8003486:	901b      	str	r0, [sp, #108]	; 0x6c
 8003488:	4604      	mov	r4, r0
 800348a:	4630      	mov	r0, r6
 800348c:	f002 fea0 	bl	80061d0 <_localeconv_r>
 8003490:	6883      	ldr	r3, [r0, #8]
 8003492:	931a      	str	r3, [sp, #104]	; 0x68
 8003494:	2c00      	cmp	r4, #0
 8003496:	f43f adb8 	beq.w	800300a <_vfprintf_r+0x1f2>
 800349a:	f89a 6000 	ldrb.w	r6, [sl]
 800349e:	2b00      	cmp	r3, #0
 80034a0:	f43f ad38 	beq.w	8002f14 <_vfprintf_r+0xfc>
 80034a4:	781b      	ldrb	r3, [r3, #0]
 80034a6:	2b00      	cmp	r3, #0
 80034a8:	f43f ad34 	beq.w	8002f14 <_vfprintf_r+0xfc>
 80034ac:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 80034b0:	e530      	b.n	8002f14 <_vfprintf_r+0xfc>
 80034b2:	9b08      	ldr	r3, [sp, #32]
 80034b4:	f89a 6000 	ldrb.w	r6, [sl]
 80034b8:	681a      	ldr	r2, [r3, #0]
 80034ba:	9206      	str	r2, [sp, #24]
 80034bc:	2a00      	cmp	r2, #0
 80034be:	f103 0304 	add.w	r3, r3, #4
 80034c2:	f2c0 8697 	blt.w	80041f4 <_vfprintf_r+0x13dc>
 80034c6:	9308      	str	r3, [sp, #32]
 80034c8:	e524      	b.n	8002f14 <_vfprintf_r+0xfc>
 80034ca:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80034ce:	f89a 6000 	ldrb.w	r6, [sl]
 80034d2:	e51f      	b.n	8002f14 <_vfprintf_r+0xfc>
 80034d4:	f89a 6000 	ldrb.w	r6, [sl]
 80034d8:	f048 0804 	orr.w	r8, r8, #4
 80034dc:	e51a      	b.n	8002f14 <_vfprintf_r+0xfc>
 80034de:	f89a 6000 	ldrb.w	r6, [sl]
 80034e2:	2e2a      	cmp	r6, #42	; 0x2a
 80034e4:	f10a 0201 	add.w	r2, sl, #1
 80034e8:	f001 81b0 	beq.w	800484c <_vfprintf_r+0x1a34>
 80034ec:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80034f0:	2b09      	cmp	r3, #9
 80034f2:	4692      	mov	sl, r2
 80034f4:	f04f 0900 	mov.w	r9, #0
 80034f8:	f63f ad0e 	bhi.w	8002f18 <_vfprintf_r+0x100>
 80034fc:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003500:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8003504:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8003508:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800350c:	2b09      	cmp	r3, #9
 800350e:	d9f5      	bls.n	80034fc <_vfprintf_r+0x6e4>
 8003510:	e502      	b.n	8002f18 <_vfprintf_r+0x100>
 8003512:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8003516:	f89a 6000 	ldrb.w	r6, [sl]
 800351a:	e4fb      	b.n	8002f14 <_vfprintf_r+0xfc>
 800351c:	9c08      	ldr	r4, [sp, #32]
 800351e:	3407      	adds	r4, #7
 8003520:	f024 0407 	bic.w	r4, r4, #7
 8003524:	ed94 7b00 	vldr	d7, [r4]
 8003528:	ec52 1b17 	vmov	r1, r2, d7
 800352c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8003530:	931d      	str	r3, [sp, #116]	; 0x74
 8003532:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8003536:	3408      	adds	r4, #8
 8003538:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800353c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003540:	4bba      	ldr	r3, [pc, #744]	; (800382c <_vfprintf_r+0xa14>)
 8003542:	9408      	str	r4, [sp, #32]
 8003544:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003548:	f7fd fd90 	bl	800106c <__aeabi_dcmpun>
 800354c:	2800      	cmp	r0, #0
 800354e:	f040 846f 	bne.w	8003e30 <_vfprintf_r+0x1018>
 8003552:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003556:	4bb5      	ldr	r3, [pc, #724]	; (800382c <_vfprintf_r+0xa14>)
 8003558:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800355c:	f7fd fd68 	bl	8001030 <__aeabi_dcmple>
 8003560:	2800      	cmp	r0, #0
 8003562:	f040 8465 	bne.w	8003e30 <_vfprintf_r+0x1018>
 8003566:	2200      	movs	r2, #0
 8003568:	2300      	movs	r3, #0
 800356a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800356e:	f7fd fd55 	bl	800101c <__aeabi_dcmplt>
 8003572:	2800      	cmp	r0, #0
 8003574:	f040 855b 	bne.w	800402e <_vfprintf_r+0x1216>
 8003578:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800357c:	4fac      	ldr	r7, [pc, #688]	; (8003830 <_vfprintf_r+0xa18>)
 800357e:	4bad      	ldr	r3, [pc, #692]	; (8003834 <_vfprintf_r+0xa1c>)
 8003580:	2000      	movs	r0, #0
 8003582:	2103      	movs	r1, #3
 8003584:	9104      	str	r1, [sp, #16]
 8003586:	900a      	str	r0, [sp, #40]	; 0x28
 8003588:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 800358c:	2e47      	cmp	r6, #71	; 0x47
 800358e:	bfd8      	it	le
 8003590:	461f      	movle	r7, r3
 8003592:	9109      	str	r1, [sp, #36]	; 0x24
 8003594:	4681      	mov	r9, r0
 8003596:	900f      	str	r0, [sp, #60]	; 0x3c
 8003598:	9014      	str	r0, [sp, #80]	; 0x50
 800359a:	9011      	str	r0, [sp, #68]	; 0x44
 800359c:	e5c9      	b.n	8003132 <_vfprintf_r+0x31a>
 800359e:	9808      	ldr	r0, [sp, #32]
 80035a0:	2300      	movs	r3, #0
 80035a2:	6801      	ldr	r1, [r0, #0]
 80035a4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80035a8:	461a      	mov	r2, r3
 80035aa:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 80035ae:	2301      	movs	r3, #1
 80035b0:	1d01      	adds	r1, r0, #4
 80035b2:	9304      	str	r3, [sp, #16]
 80035b4:	920a      	str	r2, [sp, #40]	; 0x28
 80035b6:	4691      	mov	r9, r2
 80035b8:	920f      	str	r2, [sp, #60]	; 0x3c
 80035ba:	9214      	str	r2, [sp, #80]	; 0x50
 80035bc:	9211      	str	r2, [sp, #68]	; 0x44
 80035be:	e9cd 1308 	strd	r1, r3, [sp, #32]
 80035c2:	af3d      	add	r7, sp, #244	; 0xf4
 80035c4:	e5b9      	b.n	800313a <_vfprintf_r+0x322>
 80035c6:	9b08      	ldr	r3, [sp, #32]
 80035c8:	681f      	ldr	r7, [r3, #0]
 80035ca:	2500      	movs	r5, #0
 80035cc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80035d0:	1d1c      	adds	r4, r3, #4
 80035d2:	2f00      	cmp	r7, #0
 80035d4:	f000 8639 	beq.w	800424a <_vfprintf_r+0x1432>
 80035d8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80035dc:	f000 8711 	beq.w	8004402 <_vfprintf_r+0x15ea>
 80035e0:	464a      	mov	r2, r9
 80035e2:	4629      	mov	r1, r5
 80035e4:	4638      	mov	r0, r7
 80035e6:	f7fd f89b 	bl	8000720 <memchr>
 80035ea:	900a      	str	r0, [sp, #40]	; 0x28
 80035ec:	2800      	cmp	r0, #0
 80035ee:	f000 85e7 	beq.w	80041c0 <_vfprintf_r+0x13a8>
 80035f2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80035f4:	1bdb      	subs	r3, r3, r7
 80035f6:	9309      	str	r3, [sp, #36]	; 0x24
 80035f8:	46a9      	mov	r9, r5
 80035fa:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80035fe:	9408      	str	r4, [sp, #32]
 8003600:	9304      	str	r3, [sp, #16]
 8003602:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003606:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 800360a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 800360e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8003612:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003616:	e58c      	b.n	8003132 <_vfprintf_r+0x31a>
 8003618:	f048 0310 	orr.w	r3, r8, #16
 800361c:	069a      	lsls	r2, r3, #26
 800361e:	f53f aeb2 	bmi.w	8003386 <_vfprintf_r+0x56e>
 8003622:	9a08      	ldr	r2, [sp, #32]
 8003624:	06df      	lsls	r7, r3, #27
 8003626:	f102 0104 	add.w	r1, r2, #4
 800362a:	f100 837e 	bmi.w	8003d2a <_vfprintf_r+0xf12>
 800362e:	065d      	lsls	r5, r3, #25
 8003630:	9a08      	ldr	r2, [sp, #32]
 8003632:	f100 84e4 	bmi.w	8003ffe <_vfprintf_r+0x11e6>
 8003636:	059c      	lsls	r4, r3, #22
 8003638:	f140 8377 	bpl.w	8003d2a <_vfprintf_r+0xf12>
 800363c:	7814      	ldrb	r4, [r2, #0]
 800363e:	9108      	str	r1, [sp, #32]
 8003640:	2500      	movs	r5, #0
 8003642:	2201      	movs	r2, #1
 8003644:	e6a9      	b.n	800339a <_vfprintf_r+0x582>
 8003646:	4b7c      	ldr	r3, [pc, #496]	; (8003838 <_vfprintf_r+0xa20>)
 8003648:	9317      	str	r3, [sp, #92]	; 0x5c
 800364a:	f018 0f20 	tst.w	r8, #32
 800364e:	f47f aeec 	bne.w	800342a <_vfprintf_r+0x612>
 8003652:	9a08      	ldr	r2, [sp, #32]
 8003654:	f018 0f10 	tst.w	r8, #16
 8003658:	f102 0304 	add.w	r3, r2, #4
 800365c:	f040 8354 	bne.w	8003d08 <_vfprintf_r+0xef0>
 8003660:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003664:	9a08      	ldr	r2, [sp, #32]
 8003666:	f040 84d0 	bne.w	800400a <_vfprintf_r+0x11f2>
 800366a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800366e:	f000 834b 	beq.w	8003d08 <_vfprintf_r+0xef0>
 8003672:	7814      	ldrb	r4, [r2, #0]
 8003674:	9308      	str	r3, [sp, #32]
 8003676:	2500      	movs	r5, #0
 8003678:	e6e0      	b.n	800343c <_vfprintf_r+0x624>
 800367a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 800367e:	f89a 6000 	ldrb.w	r6, [sl]
 8003682:	2b00      	cmp	r3, #0
 8003684:	f47f ac46 	bne.w	8002f14 <_vfprintf_r+0xfc>
 8003688:	2320      	movs	r3, #32
 800368a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800368e:	e441      	b.n	8002f14 <_vfprintf_r+0xfc>
 8003690:	f89a 6000 	ldrb.w	r6, [sl]
 8003694:	2e6c      	cmp	r6, #108	; 0x6c
 8003696:	bf03      	ittte	eq
 8003698:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800369c:	f048 0820 	orreq.w	r8, r8, #32
 80036a0:	f10a 0a01 	addeq.w	sl, sl, #1
 80036a4:	f048 0810 	orrne.w	r8, r8, #16
 80036a8:	e434      	b.n	8002f14 <_vfprintf_r+0xfc>
 80036aa:	9a08      	ldr	r2, [sp, #32]
 80036ac:	f018 0f20 	tst.w	r8, #32
 80036b0:	f852 3b04 	ldr.w	r3, [r2], #4
 80036b4:	9208      	str	r2, [sp, #32]
 80036b6:	f000 83a1 	beq.w	8003dfc <_vfprintf_r+0xfe4>
 80036ba:	9a05      	ldr	r2, [sp, #20]
 80036bc:	4610      	mov	r0, r2
 80036be:	17d1      	asrs	r1, r2, #31
 80036c0:	e9c3 0100 	strd	r0, r1, [r3]
 80036c4:	4657      	mov	r7, sl
 80036c6:	e64d      	b.n	8003364 <_vfprintf_r+0x54c>
 80036c8:	f89a 6000 	ldrb.w	r6, [sl]
 80036cc:	2e68      	cmp	r6, #104	; 0x68
 80036ce:	bf03      	ittte	eq
 80036d0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80036d4:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 80036d8:	f10a 0a01 	addeq.w	sl, sl, #1
 80036dc:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 80036e0:	e418      	b.n	8002f14 <_vfprintf_r+0xfc>
 80036e2:	9908      	ldr	r1, [sp, #32]
 80036e4:	4b55      	ldr	r3, [pc, #340]	; (800383c <_vfprintf_r+0xa24>)
 80036e6:	680c      	ldr	r4, [r1, #0]
 80036e8:	9317      	str	r3, [sp, #92]	; 0x5c
 80036ea:	f647 0230 	movw	r2, #30768	; 0x7830
 80036ee:	3104      	adds	r1, #4
 80036f0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 80036f4:	f048 0302 	orr.w	r3, r8, #2
 80036f8:	9108      	str	r1, [sp, #32]
 80036fa:	2500      	movs	r5, #0
 80036fc:	2202      	movs	r2, #2
 80036fe:	2678      	movs	r6, #120	; 0x78
 8003700:	e64b      	b.n	800339a <_vfprintf_r+0x582>
 8003702:	f048 0808 	orr.w	r8, r8, #8
 8003706:	f89a 6000 	ldrb.w	r6, [sl]
 800370a:	e403      	b.n	8002f14 <_vfprintf_r+0xfc>
 800370c:	f048 0310 	orr.w	r3, r8, #16
 8003710:	069f      	lsls	r7, r3, #26
 8003712:	f53f acd1 	bmi.w	80030b8 <_vfprintf_r+0x2a0>
 8003716:	9908      	ldr	r1, [sp, #32]
 8003718:	06dd      	lsls	r5, r3, #27
 800371a:	f101 0204 	add.w	r2, r1, #4
 800371e:	f100 82fd 	bmi.w	8003d1c <_vfprintf_r+0xf04>
 8003722:	065c      	lsls	r4, r3, #25
 8003724:	9908      	ldr	r1, [sp, #32]
 8003726:	f100 8475 	bmi.w	8004014 <_vfprintf_r+0x11fc>
 800372a:	0598      	lsls	r0, r3, #22
 800372c:	f140 82f6 	bpl.w	8003d1c <_vfprintf_r+0xf04>
 8003730:	f991 4000 	ldrsb.w	r4, [r1]
 8003734:	9208      	str	r2, [sp, #32]
 8003736:	17e5      	asrs	r5, r4, #31
 8003738:	4620      	mov	r0, r4
 800373a:	4629      	mov	r1, r5
 800373c:	e4c7      	b.n	80030ce <_vfprintf_r+0x2b6>
 800373e:	9a08      	ldr	r2, [sp, #32]
 8003740:	f018 0f10 	tst.w	r8, #16
 8003744:	f102 0304 	add.w	r3, r2, #4
 8003748:	f040 82e3 	bne.w	8003d12 <_vfprintf_r+0xefa>
 800374c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003750:	9a08      	ldr	r2, [sp, #32]
 8003752:	f040 8467 	bne.w	8004024 <_vfprintf_r+0x120c>
 8003756:	f418 7f00 	tst.w	r8, #512	; 0x200
 800375a:	f000 82da 	beq.w	8003d12 <_vfprintf_r+0xefa>
 800375e:	7814      	ldrb	r4, [r2, #0]
 8003760:	9308      	str	r3, [sp, #32]
 8003762:	2500      	movs	r5, #0
 8003764:	e488      	b.n	8003078 <_vfprintf_r+0x260>
 8003766:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800376a:	f002 fd45 	bl	80061f8 <__retarget_lock_release_recursive>
 800376e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003772:	9305      	str	r3, [sp, #20]
 8003774:	e443      	b.n	8002ffe <_vfprintf_r+0x1e6>
 8003776:	2e00      	cmp	r6, #0
 8003778:	f43f adf8 	beq.w	800336c <_vfprintf_r+0x554>
 800377c:	2300      	movs	r3, #0
 800377e:	2101      	movs	r1, #1
 8003780:	461a      	mov	r2, r3
 8003782:	9104      	str	r1, [sp, #16]
 8003784:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8003788:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800378c:	930a      	str	r3, [sp, #40]	; 0x28
 800378e:	4699      	mov	r9, r3
 8003790:	930f      	str	r3, [sp, #60]	; 0x3c
 8003792:	9314      	str	r3, [sp, #80]	; 0x50
 8003794:	9311      	str	r3, [sp, #68]	; 0x44
 8003796:	9109      	str	r1, [sp, #36]	; 0x24
 8003798:	af3d      	add	r7, sp, #244	; 0xf4
 800379a:	e4ce      	b.n	800313a <_vfprintf_r+0x322>
 800379c:	2e65      	cmp	r6, #101	; 0x65
 800379e:	f340 80ca 	ble.w	8003936 <_vfprintf_r+0xb1e>
 80037a2:	2200      	movs	r2, #0
 80037a4:	2300      	movs	r3, #0
 80037a6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80037aa:	f7fd fc2d 	bl	8001008 <__aeabi_dcmpeq>
 80037ae:	2800      	cmp	r0, #0
 80037b0:	f000 8169 	beq.w	8003a86 <_vfprintf_r+0xc6e>
 80037b4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80037b6:	4a22      	ldr	r2, [pc, #136]	; (8003840 <_vfprintf_r+0xa28>)
 80037b8:	f8cb 2000 	str.w	r2, [fp]
 80037bc:	3301      	adds	r3, #1
 80037be:	3401      	adds	r4, #1
 80037c0:	2201      	movs	r2, #1
 80037c2:	2b07      	cmp	r3, #7
 80037c4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80037c8:	f8cb 2004 	str.w	r2, [fp, #4]
 80037cc:	f300 8406 	bgt.w	8003fdc <_vfprintf_r+0x11c4>
 80037d0:	f10b 0b08 	add.w	fp, fp, #8
 80037d4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80037d6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80037d8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80037da:	4293      	cmp	r3, r2
 80037dc:	db03      	blt.n	80037e6 <_vfprintf_r+0x9ce>
 80037de:	f018 0f01 	tst.w	r8, #1
 80037e2:	f43f ad6a 	beq.w	80032ba <_vfprintf_r+0x4a2>
 80037e6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80037e8:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80037ea:	f8cb 2000 	str.w	r2, [fp]
 80037ee:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80037f0:	f8cb 2004 	str.w	r2, [fp, #4]
 80037f4:	3301      	adds	r3, #1
 80037f6:	4414      	add	r4, r2
 80037f8:	2b07      	cmp	r3, #7
 80037fa:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80037fe:	f300 8517 	bgt.w	8004230 <_vfprintf_r+0x1418>
 8003802:	f10b 0b08 	add.w	fp, fp, #8
 8003806:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003808:	1e5d      	subs	r5, r3, #1
 800380a:	2d00      	cmp	r5, #0
 800380c:	f77f ad55 	ble.w	80032ba <_vfprintf_r+0x4a2>
 8003810:	2d10      	cmp	r5, #16
 8003812:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003814:	4b0b      	ldr	r3, [pc, #44]	; (8003844 <_vfprintf_r+0xa2c>)
 8003816:	f340 82e7 	ble.w	8003de8 <_vfprintf_r+0xfd0>
 800381a:	4619      	mov	r1, r3
 800381c:	2610      	movs	r6, #16
 800381e:	4623      	mov	r3, r4
 8003820:	9f03      	ldr	r7, [sp, #12]
 8003822:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003826:	460c      	mov	r4, r1
 8003828:	e014      	b.n	8003854 <_vfprintf_r+0xa3c>
 800382a:	bf00      	nop
 800382c:	7fefffff 	.word	0x7fefffff
 8003830:	08007724 	.word	0x08007724
 8003834:	08007720 	.word	0x08007720
 8003838:	08007744 	.word	0x08007744
 800383c:	08007730 	.word	0x08007730
 8003840:	08007760 	.word	0x08007760
 8003844:	08007774 	.word	0x08007774
 8003848:	f10b 0b08 	add.w	fp, fp, #8
 800384c:	3d10      	subs	r5, #16
 800384e:	2d10      	cmp	r5, #16
 8003850:	f340 82c7 	ble.w	8003de2 <_vfprintf_r+0xfca>
 8003854:	3201      	adds	r2, #1
 8003856:	3310      	adds	r3, #16
 8003858:	2a07      	cmp	r2, #7
 800385a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800385e:	e9cb 4600 	strd	r4, r6, [fp]
 8003862:	ddf1      	ble.n	8003848 <_vfprintf_r+0xa30>
 8003864:	aa2a      	add	r2, sp, #168	; 0xa8
 8003866:	4649      	mov	r1, r9
 8003868:	4638      	mov	r0, r7
 800386a:	f003 fb41 	bl	8006ef0 <__sprint_r>
 800386e:	2800      	cmp	r0, #0
 8003870:	d14c      	bne.n	800390c <_vfprintf_r+0xaf4>
 8003872:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003876:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800387a:	e7e7      	b.n	800384c <_vfprintf_r+0xa34>
 800387c:	9b06      	ldr	r3, [sp, #24]
 800387e:	9a04      	ldr	r2, [sp, #16]
 8003880:	1a9d      	subs	r5, r3, r2
 8003882:	2d00      	cmp	r5, #0
 8003884:	f77f acc9 	ble.w	800321a <_vfprintf_r+0x402>
 8003888:	2d10      	cmp	r5, #16
 800388a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800388c:	4bbc      	ldr	r3, [pc, #752]	; (8003b80 <_vfprintf_r+0xd68>)
 800388e:	dd27      	ble.n	80038e0 <_vfprintf_r+0xac8>
 8003890:	4659      	mov	r1, fp
 8003892:	4620      	mov	r0, r4
 8003894:	46bb      	mov	fp, r7
 8003896:	461c      	mov	r4, r3
 8003898:	4637      	mov	r7, r6
 800389a:	9e07      	ldr	r6, [sp, #28]
 800389c:	e004      	b.n	80038a8 <_vfprintf_r+0xa90>
 800389e:	3d10      	subs	r5, #16
 80038a0:	2d10      	cmp	r5, #16
 80038a2:	f101 0108 	add.w	r1, r1, #8
 80038a6:	dd16      	ble.n	80038d6 <_vfprintf_r+0xabe>
 80038a8:	3201      	adds	r2, #1
 80038aa:	3010      	adds	r0, #16
 80038ac:	2310      	movs	r3, #16
 80038ae:	2a07      	cmp	r2, #7
 80038b0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80038b4:	600c      	str	r4, [r1, #0]
 80038b6:	604b      	str	r3, [r1, #4]
 80038b8:	ddf1      	ble.n	800389e <_vfprintf_r+0xa86>
 80038ba:	aa2a      	add	r2, sp, #168	; 0xa8
 80038bc:	4631      	mov	r1, r6
 80038be:	9803      	ldr	r0, [sp, #12]
 80038c0:	f003 fb16 	bl	8006ef0 <__sprint_r>
 80038c4:	2800      	cmp	r0, #0
 80038c6:	f040 80a8 	bne.w	8003a1a <_vfprintf_r+0xc02>
 80038ca:	3d10      	subs	r5, #16
 80038cc:	2d10      	cmp	r5, #16
 80038ce:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80038d2:	a92d      	add	r1, sp, #180	; 0xb4
 80038d4:	dce8      	bgt.n	80038a8 <_vfprintf_r+0xa90>
 80038d6:	463e      	mov	r6, r7
 80038d8:	4623      	mov	r3, r4
 80038da:	465f      	mov	r7, fp
 80038dc:	4604      	mov	r4, r0
 80038de:	468b      	mov	fp, r1
 80038e0:	3201      	adds	r2, #1
 80038e2:	442c      	add	r4, r5
 80038e4:	2a07      	cmp	r2, #7
 80038e6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80038ea:	e9cb 3500 	strd	r3, r5, [fp]
 80038ee:	f300 8292 	bgt.w	8003e16 <_vfprintf_r+0xffe>
 80038f2:	f10b 0b08 	add.w	fp, fp, #8
 80038f6:	e490      	b.n	800321a <_vfprintf_r+0x402>
 80038f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80038fa:	9907      	ldr	r1, [sp, #28]
 80038fc:	9803      	ldr	r0, [sp, #12]
 80038fe:	f003 faf7 	bl	8006ef0 <__sprint_r>
 8003902:	2800      	cmp	r0, #0
 8003904:	f43f ad23 	beq.w	800334e <_vfprintf_r+0x536>
 8003908:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800390c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800390e:	b111      	cbz	r1, 8003916 <_vfprintf_r+0xafe>
 8003910:	9803      	ldr	r0, [sp, #12]
 8003912:	f002 f9c1 	bl	8005c98 <_free_r>
 8003916:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800391a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800391e:	07d0      	lsls	r0, r2, #31
 8003920:	d402      	bmi.n	8003928 <_vfprintf_r+0xb10>
 8003922:	0599      	lsls	r1, r3, #22
 8003924:	f140 81d0 	bpl.w	8003cc8 <_vfprintf_r+0xeb0>
 8003928:	065a      	lsls	r2, r3, #25
 800392a:	f53f ab65 	bmi.w	8002ff8 <_vfprintf_r+0x1e0>
 800392e:	9805      	ldr	r0, [sp, #20]
 8003930:	b057      	add	sp, #348	; 0x15c
 8003932:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003936:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003938:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800393a:	2a01      	cmp	r2, #1
 800393c:	f104 0401 	add.w	r4, r4, #1
 8003940:	f103 0501 	add.w	r5, r3, #1
 8003944:	f10b 0608 	add.w	r6, fp, #8
 8003948:	f340 811c 	ble.w	8003b84 <_vfprintf_r+0xd6c>
 800394c:	2301      	movs	r3, #1
 800394e:	2d07      	cmp	r5, #7
 8003950:	f8cb 7000 	str.w	r7, [fp]
 8003954:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003958:	f8cb 3004 	str.w	r3, [fp, #4]
 800395c:	f300 81bb 	bgt.w	8003cd6 <_vfprintf_r+0xebe>
 8003960:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003962:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003964:	1c69      	adds	r1, r5, #1
 8003966:	441c      	add	r4, r3
 8003968:	2907      	cmp	r1, #7
 800396a:	910b      	str	r1, [sp, #44]	; 0x2c
 800396c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003970:	e9c6 2300 	strd	r2, r3, [r6]
 8003974:	f300 81bb 	bgt.w	8003cee <_vfprintf_r+0xed6>
 8003978:	3608      	adds	r6, #8
 800397a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800397c:	1c53      	adds	r3, r2, #1
 800397e:	461d      	mov	r5, r3
 8003980:	9509      	str	r5, [sp, #36]	; 0x24
 8003982:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8003984:	930e      	str	r3, [sp, #56]	; 0x38
 8003986:	2200      	movs	r2, #0
 8003988:	2300      	movs	r3, #0
 800398a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800398e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8003992:	f106 0b08 	add.w	fp, r6, #8
 8003996:	f7fd fb37 	bl	8001008 <__aeabi_dcmpeq>
 800399a:	2800      	cmp	r0, #0
 800399c:	f040 80c2 	bne.w	8003b24 <_vfprintf_r+0xd0c>
 80039a0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80039a2:	f8c6 9004 	str.w	r9, [r6, #4]
 80039a6:	3701      	adds	r7, #1
 80039a8:	444c      	add	r4, r9
 80039aa:	2d07      	cmp	r5, #7
 80039ac:	6037      	str	r7, [r6, #0]
 80039ae:	942c      	str	r4, [sp, #176]	; 0xb0
 80039b0:	952b      	str	r5, [sp, #172]	; 0xac
 80039b2:	f300 80f9 	bgt.w	8003ba8 <_vfprintf_r+0xd90>
 80039b6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80039b8:	f106 0310 	add.w	r3, r6, #16
 80039bc:	3202      	adds	r2, #2
 80039be:	465e      	mov	r6, fp
 80039c0:	9209      	str	r2, [sp, #36]	; 0x24
 80039c2:	469b      	mov	fp, r3
 80039c4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80039c6:	6072      	str	r2, [r6, #4]
 80039c8:	4414      	add	r4, r2
 80039ca:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80039cc:	942c      	str	r4, [sp, #176]	; 0xb0
 80039ce:	ab26      	add	r3, sp, #152	; 0x98
 80039d0:	2a07      	cmp	r2, #7
 80039d2:	922b      	str	r2, [sp, #172]	; 0xac
 80039d4:	6033      	str	r3, [r6, #0]
 80039d6:	f77f ac70 	ble.w	80032ba <_vfprintf_r+0x4a2>
 80039da:	aa2a      	add	r2, sp, #168	; 0xa8
 80039dc:	9907      	ldr	r1, [sp, #28]
 80039de:	9803      	ldr	r0, [sp, #12]
 80039e0:	f003 fa86 	bl	8006ef0 <__sprint_r>
 80039e4:	2800      	cmp	r0, #0
 80039e6:	d18f      	bne.n	8003908 <_vfprintf_r+0xaf0>
 80039e8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80039ea:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039ee:	e464      	b.n	80032ba <_vfprintf_r+0x4a2>
 80039f0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80039f2:	af56      	add	r7, sp, #344	; 0x158
 80039f4:	0923      	lsrs	r3, r4, #4
 80039f6:	f004 010f 	and.w	r1, r4, #15
 80039fa:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80039fe:	092a      	lsrs	r2, r5, #4
 8003a00:	461c      	mov	r4, r3
 8003a02:	4615      	mov	r5, r2
 8003a04:	5c43      	ldrb	r3, [r0, r1]
 8003a06:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003a0a:	ea54 0305 	orrs.w	r3, r4, r5
 8003a0e:	d1f1      	bne.n	80039f4 <_vfprintf_r+0xbdc>
 8003a10:	9b04      	ldr	r3, [sp, #16]
 8003a12:	1bdb      	subs	r3, r3, r7
 8003a14:	9309      	str	r3, [sp, #36]	; 0x24
 8003a16:	f7ff bb80 	b.w	800311a <_vfprintf_r+0x302>
 8003a1a:	46b1      	mov	r9, r6
 8003a1c:	e776      	b.n	800390c <_vfprintf_r+0xaf4>
 8003a1e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a20:	9907      	ldr	r1, [sp, #28]
 8003a22:	9803      	ldr	r0, [sp, #12]
 8003a24:	f003 fa64 	bl	8006ef0 <__sprint_r>
 8003a28:	2800      	cmp	r0, #0
 8003a2a:	f47f af6d 	bne.w	8003908 <_vfprintf_r+0xaf0>
 8003a2e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a30:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a34:	f7ff bbdd 	b.w	80031f2 <_vfprintf_r+0x3da>
 8003a38:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a3a:	9907      	ldr	r1, [sp, #28]
 8003a3c:	9803      	ldr	r0, [sp, #12]
 8003a3e:	f003 fa57 	bl	8006ef0 <__sprint_r>
 8003a42:	2800      	cmp	r0, #0
 8003a44:	f47f af60 	bne.w	8003908 <_vfprintf_r+0xaf0>
 8003a48:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a4a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a4e:	f7ff bbe0 	b.w	8003212 <_vfprintf_r+0x3fa>
 8003a52:	4698      	mov	r8, r3
 8003a54:	2d00      	cmp	r5, #0
 8003a56:	bf08      	it	eq
 8003a58:	2c0a      	cmpeq	r4, #10
 8003a5a:	f080 8170 	bcs.w	8003d3e <_vfprintf_r+0xf26>
 8003a5e:	af56      	add	r7, sp, #344	; 0x158
 8003a60:	3430      	adds	r4, #48	; 0x30
 8003a62:	2301      	movs	r3, #1
 8003a64:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003a68:	9309      	str	r3, [sp, #36]	; 0x24
 8003a6a:	f7ff bb56 	b.w	800311a <_vfprintf_r+0x302>
 8003a6e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a70:	9907      	ldr	r1, [sp, #28]
 8003a72:	9803      	ldr	r0, [sp, #12]
 8003a74:	f003 fa3c 	bl	8006ef0 <__sprint_r>
 8003a78:	2800      	cmp	r0, #0
 8003a7a:	f47f af45 	bne.w	8003908 <_vfprintf_r+0xaf0>
 8003a7e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a80:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a84:	e406      	b.n	8003294 <_vfprintf_r+0x47c>
 8003a86:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003a88:	2b00      	cmp	r3, #0
 8003a8a:	f340 8273 	ble.w	8003f74 <_vfprintf_r+0x115c>
 8003a8e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003a92:	4293      	cmp	r3, r2
 8003a94:	bfa8      	it	ge
 8003a96:	4613      	movge	r3, r2
 8003a98:	2b00      	cmp	r3, #0
 8003a9a:	461d      	mov	r5, r3
 8003a9c:	dd0d      	ble.n	8003aba <_vfprintf_r+0xca2>
 8003a9e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003aa0:	f8cb 7000 	str.w	r7, [fp]
 8003aa4:	3301      	adds	r3, #1
 8003aa6:	442c      	add	r4, r5
 8003aa8:	2b07      	cmp	r3, #7
 8003aaa:	942c      	str	r4, [sp, #176]	; 0xb0
 8003aac:	f8cb 5004 	str.w	r5, [fp, #4]
 8003ab0:	932b      	str	r3, [sp, #172]	; 0xac
 8003ab2:	f300 82c1 	bgt.w	8004038 <_vfprintf_r+0x1220>
 8003ab6:	f10b 0b08 	add.w	fp, fp, #8
 8003aba:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003abc:	2d00      	cmp	r5, #0
 8003abe:	bfa8      	it	ge
 8003ac0:	1b5b      	subge	r3, r3, r5
 8003ac2:	2b00      	cmp	r3, #0
 8003ac4:	461d      	mov	r5, r3
 8003ac6:	f340 8099 	ble.w	8003bfc <_vfprintf_r+0xde4>
 8003aca:	2d10      	cmp	r5, #16
 8003acc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003ace:	4b2c      	ldr	r3, [pc, #176]	; (8003b80 <_vfprintf_r+0xd68>)
 8003ad0:	f340 83db 	ble.w	800428a <_vfprintf_r+0x1472>
 8003ad4:	4618      	mov	r0, r3
 8003ad6:	4621      	mov	r1, r4
 8003ad8:	465b      	mov	r3, fp
 8003ada:	2610      	movs	r6, #16
 8003adc:	46bb      	mov	fp, r7
 8003ade:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003ae2:	9c07      	ldr	r4, [sp, #28]
 8003ae4:	4607      	mov	r7, r0
 8003ae6:	e004      	b.n	8003af2 <_vfprintf_r+0xcda>
 8003ae8:	3308      	adds	r3, #8
 8003aea:	3d10      	subs	r5, #16
 8003aec:	2d10      	cmp	r5, #16
 8003aee:	f340 83c7 	ble.w	8004280 <_vfprintf_r+0x1468>
 8003af2:	3201      	adds	r2, #1
 8003af4:	3110      	adds	r1, #16
 8003af6:	2a07      	cmp	r2, #7
 8003af8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003afc:	e9c3 7600 	strd	r7, r6, [r3]
 8003b00:	ddf2      	ble.n	8003ae8 <_vfprintf_r+0xcd0>
 8003b02:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b04:	4621      	mov	r1, r4
 8003b06:	4648      	mov	r0, r9
 8003b08:	f003 f9f2 	bl	8006ef0 <__sprint_r>
 8003b0c:	2800      	cmp	r0, #0
 8003b0e:	f040 84a5 	bne.w	800445c <_vfprintf_r+0x1644>
 8003b12:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003b16:	ab2d      	add	r3, sp, #180	; 0xb4
 8003b18:	e7e7      	b.n	8003aea <_vfprintf_r+0xcd2>
 8003b1a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003b1e:	af56      	add	r7, sp, #344	; 0x158
 8003b20:	f7ff bafb 	b.w	800311a <_vfprintf_r+0x302>
 8003b24:	f1b9 0f00 	cmp.w	r9, #0
 8003b28:	f77f af4c 	ble.w	80039c4 <_vfprintf_r+0xbac>
 8003b2c:	f1b9 0f10 	cmp.w	r9, #16
 8003b30:	4b13      	ldr	r3, [pc, #76]	; (8003b80 <_vfprintf_r+0xd68>)
 8003b32:	f340 8659 	ble.w	80047e8 <_vfprintf_r+0x19d0>
 8003b36:	4619      	mov	r1, r3
 8003b38:	4622      	mov	r2, r4
 8003b3a:	4633      	mov	r3, r6
 8003b3c:	2710      	movs	r7, #16
 8003b3e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003b42:	9c07      	ldr	r4, [sp, #28]
 8003b44:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003b46:	460e      	mov	r6, r1
 8003b48:	e007      	b.n	8003b5a <_vfprintf_r+0xd42>
 8003b4a:	3308      	adds	r3, #8
 8003b4c:	f1a9 0910 	sub.w	r9, r9, #16
 8003b50:	f1b9 0f10 	cmp.w	r9, #16
 8003b54:	f340 8353 	ble.w	80041fe <_vfprintf_r+0x13e6>
 8003b58:	3501      	adds	r5, #1
 8003b5a:	3210      	adds	r2, #16
 8003b5c:	2d07      	cmp	r5, #7
 8003b5e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003b62:	e9c3 6700 	strd	r6, r7, [r3]
 8003b66:	ddf0      	ble.n	8003b4a <_vfprintf_r+0xd32>
 8003b68:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b6a:	4621      	mov	r1, r4
 8003b6c:	4658      	mov	r0, fp
 8003b6e:	f003 f9bf 	bl	8006ef0 <__sprint_r>
 8003b72:	2800      	cmp	r0, #0
 8003b74:	f040 8472 	bne.w	800445c <_vfprintf_r+0x1644>
 8003b78:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8003b7c:	ab2d      	add	r3, sp, #180	; 0xb4
 8003b7e:	e7e5      	b.n	8003b4c <_vfprintf_r+0xd34>
 8003b80:	08007774 	.word	0x08007774
 8003b84:	f018 0f01 	tst.w	r8, #1
 8003b88:	f47f aee0 	bne.w	800394c <_vfprintf_r+0xb34>
 8003b8c:	2201      	movs	r2, #1
 8003b8e:	2d07      	cmp	r5, #7
 8003b90:	f8cb 7000 	str.w	r7, [fp]
 8003b94:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003b98:	f8cb 2004 	str.w	r2, [fp, #4]
 8003b9c:	dc04      	bgt.n	8003ba8 <_vfprintf_r+0xd90>
 8003b9e:	3302      	adds	r3, #2
 8003ba0:	9309      	str	r3, [sp, #36]	; 0x24
 8003ba2:	f10b 0b10 	add.w	fp, fp, #16
 8003ba6:	e70d      	b.n	80039c4 <_vfprintf_r+0xbac>
 8003ba8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003baa:	9907      	ldr	r1, [sp, #28]
 8003bac:	9803      	ldr	r0, [sp, #12]
 8003bae:	f003 f99f 	bl	8006ef0 <__sprint_r>
 8003bb2:	2800      	cmp	r0, #0
 8003bb4:	f47f aea8 	bne.w	8003908 <_vfprintf_r+0xaf0>
 8003bb8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003bbc:	3301      	adds	r3, #1
 8003bbe:	9309      	str	r3, [sp, #36]	; 0x24
 8003bc0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003bc4:	ae2d      	add	r6, sp, #180	; 0xb4
 8003bc6:	e6fd      	b.n	80039c4 <_vfprintf_r+0xbac>
 8003bc8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bca:	9907      	ldr	r1, [sp, #28]
 8003bcc:	9803      	ldr	r0, [sp, #12]
 8003bce:	f003 f98f 	bl	8006ef0 <__sprint_r>
 8003bd2:	2800      	cmp	r0, #0
 8003bd4:	f47f ae98 	bne.w	8003908 <_vfprintf_r+0xaf0>
 8003bd8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003bdc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003bde:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003be2:	f7ff baf6 	b.w	80031d2 <_vfprintf_r+0x3ba>
 8003be6:	aa2a      	add	r2, sp, #168	; 0xa8
 8003be8:	9907      	ldr	r1, [sp, #28]
 8003bea:	9803      	ldr	r0, [sp, #12]
 8003bec:	f003 f980 	bl	8006ef0 <__sprint_r>
 8003bf0:	2800      	cmp	r0, #0
 8003bf2:	f47f ae89 	bne.w	8003908 <_vfprintf_r+0xaf0>
 8003bf6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003bf8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003bfc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003bfe:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003c02:	443b      	add	r3, r7
 8003c04:	4699      	mov	r9, r3
 8003c06:	f040 8357 	bne.w	80042b8 <_vfprintf_r+0x14a0>
 8003c0a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003c0c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003c0e:	4293      	cmp	r3, r2
 8003c10:	db49      	blt.n	8003ca6 <_vfprintf_r+0xe8e>
 8003c12:	f018 0f01 	tst.w	r8, #1
 8003c16:	d146      	bne.n	8003ca6 <_vfprintf_r+0xe8e>
 8003c18:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003c1a:	18bd      	adds	r5, r7, r2
 8003c1c:	eba5 0509 	sub.w	r5, r5, r9
 8003c20:	1ad3      	subs	r3, r2, r3
 8003c22:	429d      	cmp	r5, r3
 8003c24:	bfa8      	it	ge
 8003c26:	461d      	movge	r5, r3
 8003c28:	2d00      	cmp	r5, #0
 8003c2a:	dd0d      	ble.n	8003c48 <_vfprintf_r+0xe30>
 8003c2c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003c2e:	f8cb 9000 	str.w	r9, [fp]
 8003c32:	3201      	adds	r2, #1
 8003c34:	442c      	add	r4, r5
 8003c36:	2a07      	cmp	r2, #7
 8003c38:	942c      	str	r4, [sp, #176]	; 0xb0
 8003c3a:	f8cb 5004 	str.w	r5, [fp, #4]
 8003c3e:	922b      	str	r2, [sp, #172]	; 0xac
 8003c40:	f300 8462 	bgt.w	8004508 <_vfprintf_r+0x16f0>
 8003c44:	f10b 0b08 	add.w	fp, fp, #8
 8003c48:	2d00      	cmp	r5, #0
 8003c4a:	bfac      	ite	ge
 8003c4c:	1b5d      	subge	r5, r3, r5
 8003c4e:	461d      	movlt	r5, r3
 8003c50:	2d00      	cmp	r5, #0
 8003c52:	f77f ab32 	ble.w	80032ba <_vfprintf_r+0x4a2>
 8003c56:	2d10      	cmp	r5, #16
 8003c58:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003c5a:	4bc5      	ldr	r3, [pc, #788]	; (8003f70 <_vfprintf_r+0x1158>)
 8003c5c:	f340 80c4 	ble.w	8003de8 <_vfprintf_r+0xfd0>
 8003c60:	4619      	mov	r1, r3
 8003c62:	2610      	movs	r6, #16
 8003c64:	4623      	mov	r3, r4
 8003c66:	9f03      	ldr	r7, [sp, #12]
 8003c68:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003c6c:	460c      	mov	r4, r1
 8003c6e:	e005      	b.n	8003c7c <_vfprintf_r+0xe64>
 8003c70:	f10b 0b08 	add.w	fp, fp, #8
 8003c74:	3d10      	subs	r5, #16
 8003c76:	2d10      	cmp	r5, #16
 8003c78:	f340 80b3 	ble.w	8003de2 <_vfprintf_r+0xfca>
 8003c7c:	3201      	adds	r2, #1
 8003c7e:	3310      	adds	r3, #16
 8003c80:	2a07      	cmp	r2, #7
 8003c82:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003c86:	e9cb 4600 	strd	r4, r6, [fp]
 8003c8a:	ddf1      	ble.n	8003c70 <_vfprintf_r+0xe58>
 8003c8c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c8e:	4649      	mov	r1, r9
 8003c90:	4638      	mov	r0, r7
 8003c92:	f003 f92d 	bl	8006ef0 <__sprint_r>
 8003c96:	2800      	cmp	r0, #0
 8003c98:	f47f ae38 	bne.w	800390c <_vfprintf_r+0xaf4>
 8003c9c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003ca0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ca4:	e7e6      	b.n	8003c74 <_vfprintf_r+0xe5c>
 8003ca6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003ca8:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003caa:	f8cb 1000 	str.w	r1, [fp]
 8003cae:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003cb0:	f8cb 1004 	str.w	r1, [fp, #4]
 8003cb4:	3201      	adds	r2, #1
 8003cb6:	440c      	add	r4, r1
 8003cb8:	2a07      	cmp	r2, #7
 8003cba:	942c      	str	r4, [sp, #176]	; 0xb0
 8003cbc:	922b      	str	r2, [sp, #172]	; 0xac
 8003cbe:	f300 828c 	bgt.w	80041da <_vfprintf_r+0x13c2>
 8003cc2:	f10b 0b08 	add.w	fp, fp, #8
 8003cc6:	e7a7      	b.n	8003c18 <_vfprintf_r+0xe00>
 8003cc8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003ccc:	f002 fa94 	bl	80061f8 <__retarget_lock_release_recursive>
 8003cd0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003cd4:	e628      	b.n	8003928 <_vfprintf_r+0xb10>
 8003cd6:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cd8:	9907      	ldr	r1, [sp, #28]
 8003cda:	9803      	ldr	r0, [sp, #12]
 8003cdc:	f003 f908 	bl	8006ef0 <__sprint_r>
 8003ce0:	2800      	cmp	r0, #0
 8003ce2:	f47f ae11 	bne.w	8003908 <_vfprintf_r+0xaf0>
 8003ce6:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003cea:	ae2d      	add	r6, sp, #180	; 0xb4
 8003cec:	e638      	b.n	8003960 <_vfprintf_r+0xb48>
 8003cee:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cf0:	9907      	ldr	r1, [sp, #28]
 8003cf2:	9803      	ldr	r0, [sp, #12]
 8003cf4:	f003 f8fc 	bl	8006ef0 <__sprint_r>
 8003cf8:	2800      	cmp	r0, #0
 8003cfa:	f47f ae05 	bne.w	8003908 <_vfprintf_r+0xaf0>
 8003cfe:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003d02:	ae2d      	add	r6, sp, #180	; 0xb4
 8003d04:	930b      	str	r3, [sp, #44]	; 0x2c
 8003d06:	e638      	b.n	800397a <_vfprintf_r+0xb62>
 8003d08:	6814      	ldr	r4, [r2, #0]
 8003d0a:	9308      	str	r3, [sp, #32]
 8003d0c:	2500      	movs	r5, #0
 8003d0e:	f7ff bb95 	b.w	800343c <_vfprintf_r+0x624>
 8003d12:	6814      	ldr	r4, [r2, #0]
 8003d14:	9308      	str	r3, [sp, #32]
 8003d16:	2500      	movs	r5, #0
 8003d18:	f7ff b9ae 	b.w	8003078 <_vfprintf_r+0x260>
 8003d1c:	680c      	ldr	r4, [r1, #0]
 8003d1e:	9208      	str	r2, [sp, #32]
 8003d20:	17e5      	asrs	r5, r4, #31
 8003d22:	4620      	mov	r0, r4
 8003d24:	4629      	mov	r1, r5
 8003d26:	f7ff b9d2 	b.w	80030ce <_vfprintf_r+0x2b6>
 8003d2a:	6814      	ldr	r4, [r2, #0]
 8003d2c:	9108      	str	r1, [sp, #32]
 8003d2e:	2201      	movs	r2, #1
 8003d30:	2500      	movs	r5, #0
 8003d32:	f7ff bb32 	b.w	800339a <_vfprintf_r+0x582>
 8003d36:	2a01      	cmp	r2, #1
 8003d38:	f47f ab3c 	bne.w	80033b4 <_vfprintf_r+0x59c>
 8003d3c:	e68f      	b.n	8003a5e <_vfprintf_r+0xc46>
 8003d3e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003d42:	2200      	movs	r2, #0
 8003d44:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003d48:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003d4c:	af56      	add	r7, sp, #344	; 0x158
 8003d4e:	4692      	mov	sl, r2
 8003d50:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003d54:	461e      	mov	r6, r3
 8003d56:	e00a      	b.n	8003d6e <_vfprintf_r+0xf56>
 8003d58:	2300      	movs	r3, #0
 8003d5a:	4620      	mov	r0, r4
 8003d5c:	4629      	mov	r1, r5
 8003d5e:	220a      	movs	r2, #10
 8003d60:	f7fc fa4e 	bl	8000200 <__aeabi_uldivmod>
 8003d64:	4604      	mov	r4, r0
 8003d66:	460d      	mov	r5, r1
 8003d68:	ea54 0305 	orrs.w	r3, r4, r5
 8003d6c:	d029      	beq.n	8003dc2 <_vfprintf_r+0xfaa>
 8003d6e:	220a      	movs	r2, #10
 8003d70:	2300      	movs	r3, #0
 8003d72:	4620      	mov	r0, r4
 8003d74:	4629      	mov	r1, r5
 8003d76:	f7fc fa43 	bl	8000200 <__aeabi_uldivmod>
 8003d7a:	3230      	adds	r2, #48	; 0x30
 8003d7c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003d80:	f10a 0a01 	add.w	sl, sl, #1
 8003d84:	3f01      	subs	r7, #1
 8003d86:	2e00      	cmp	r6, #0
 8003d88:	d0e6      	beq.n	8003d58 <_vfprintf_r+0xf40>
 8003d8a:	f898 3000 	ldrb.w	r3, [r8]
 8003d8e:	459a      	cmp	sl, r3
 8003d90:	d1e2      	bne.n	8003d58 <_vfprintf_r+0xf40>
 8003d92:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003d96:	d0df      	beq.n	8003d58 <_vfprintf_r+0xf40>
 8003d98:	2d00      	cmp	r5, #0
 8003d9a:	bf08      	it	eq
 8003d9c:	2c0a      	cmpeq	r4, #10
 8003d9e:	d3db      	bcc.n	8003d58 <_vfprintf_r+0xf40>
 8003da0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003da2:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003da4:	1aff      	subs	r7, r7, r3
 8003da6:	461a      	mov	r2, r3
 8003da8:	4638      	mov	r0, r7
 8003daa:	f003 f833 	bl	8006e14 <strncpy>
 8003dae:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003db2:	2b00      	cmp	r3, #0
 8003db4:	f000 8496 	beq.w	80046e4 <_vfprintf_r+0x18cc>
 8003db8:	f108 0801 	add.w	r8, r8, #1
 8003dbc:	f04f 0a00 	mov.w	sl, #0
 8003dc0:	e7ca      	b.n	8003d58 <_vfprintf_r+0xf40>
 8003dc2:	9b04      	ldr	r3, [sp, #16]
 8003dc4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003dc8:	1bdb      	subs	r3, r3, r7
 8003dca:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003dce:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003dd0:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003dd4:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003dd8:	9309      	str	r3, [sp, #36]	; 0x24
 8003dda:	f7ff b99e 	b.w	800311a <_vfprintf_r+0x302>
 8003dde:	46c1      	mov	r9, r8
 8003de0:	e594      	b.n	800390c <_vfprintf_r+0xaf4>
 8003de2:	4621      	mov	r1, r4
 8003de4:	461c      	mov	r4, r3
 8003de6:	460b      	mov	r3, r1
 8003de8:	3201      	adds	r2, #1
 8003dea:	442c      	add	r4, r5
 8003dec:	2a07      	cmp	r2, #7
 8003dee:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003df2:	e9cb 3500 	strd	r3, r5, [fp]
 8003df6:	f77f aa5e 	ble.w	80032b6 <_vfprintf_r+0x49e>
 8003dfa:	e5ee      	b.n	80039da <_vfprintf_r+0xbc2>
 8003dfc:	f018 0f10 	tst.w	r8, #16
 8003e00:	f040 80f8 	bne.w	8003ff4 <_vfprintf_r+0x11dc>
 8003e04:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003e08:	f000 8351 	beq.w	80044ae <_vfprintf_r+0x1696>
 8003e0c:	9a05      	ldr	r2, [sp, #20]
 8003e0e:	801a      	strh	r2, [r3, #0]
 8003e10:	4657      	mov	r7, sl
 8003e12:	f7ff baa7 	b.w	8003364 <_vfprintf_r+0x54c>
 8003e16:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e18:	9907      	ldr	r1, [sp, #28]
 8003e1a:	9803      	ldr	r0, [sp, #12]
 8003e1c:	f003 f868 	bl	8006ef0 <__sprint_r>
 8003e20:	2800      	cmp	r0, #0
 8003e22:	f47f ad71 	bne.w	8003908 <_vfprintf_r+0xaf0>
 8003e26:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e28:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e2c:	f7ff b9f5 	b.w	800321a <_vfprintf_r+0x402>
 8003e30:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003e34:	4602      	mov	r2, r0
 8003e36:	460b      	mov	r3, r1
 8003e38:	f7fd f918 	bl	800106c <__aeabi_dcmpun>
 8003e3c:	2800      	cmp	r0, #0
 8003e3e:	f040 8491 	bne.w	8004764 <_vfprintf_r+0x194c>
 8003e42:	2e61      	cmp	r6, #97	; 0x61
 8003e44:	f000 8111 	beq.w	800406a <_vfprintf_r+0x1252>
 8003e48:	2e41      	cmp	r6, #65	; 0x41
 8003e4a:	f000 8377 	beq.w	800453c <_vfprintf_r+0x1724>
 8003e4e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003e52:	f026 0220 	bic.w	r2, r6, #32
 8003e56:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003e5a:	930e      	str	r3, [sp, #56]	; 0x38
 8003e5c:	9204      	str	r2, [sp, #16]
 8003e5e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003e60:	f000 842d 	beq.w	80046be <_vfprintf_r+0x18a6>
 8003e64:	2a47      	cmp	r2, #71	; 0x47
 8003e66:	f000 8424 	beq.w	80046b2 <_vfprintf_r+0x189a>
 8003e6a:	2b00      	cmp	r3, #0
 8003e6c:	f2c0 82f9 	blt.w	8004462 <_vfprintf_r+0x164a>
 8003e70:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003e74:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003e78:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003e7c:	2e66      	cmp	r6, #102	; 0x66
 8003e7e:	f000 83eb 	beq.w	8004658 <_vfprintf_r+0x1840>
 8003e82:	2e46      	cmp	r6, #70	; 0x46
 8003e84:	f000 847e 	beq.w	8004784 <_vfprintf_r+0x196c>
 8003e88:	9b04      	ldr	r3, [sp, #16]
 8003e8a:	9803      	ldr	r0, [sp, #12]
 8003e8c:	2b45      	cmp	r3, #69	; 0x45
 8003e8e:	bf0c      	ite	eq
 8003e90:	f109 0501 	addeq.w	r5, r9, #1
 8003e94:	464d      	movne	r5, r9
 8003e96:	aa28      	add	r2, sp, #160	; 0xa0
 8003e98:	ab25      	add	r3, sp, #148	; 0x94
 8003e9a:	e9cd 3200 	strd	r3, r2, [sp]
 8003e9e:	2102      	movs	r1, #2
 8003ea0:	ab24      	add	r3, sp, #144	; 0x90
 8003ea2:	462a      	mov	r2, r5
 8003ea4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003ea8:	f000 fe3e 	bl	8004b28 <_dtoa_r>
 8003eac:	2e67      	cmp	r6, #103	; 0x67
 8003eae:	4607      	mov	r7, r0
 8003eb0:	f040 849c 	bne.w	80047ec <_vfprintf_r+0x19d4>
 8003eb4:	f018 0f01 	tst.w	r8, #1
 8003eb8:	f040 83f9 	bne.w	80046ae <_vfprintf_r+0x1896>
 8003ebc:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003ebe:	4640      	mov	r0, r8
 8003ec0:	1bdb      	subs	r3, r3, r7
 8003ec2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003ec6:	9310      	str	r3, [sp, #64]	; 0x40
 8003ec8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003eca:	9311      	str	r3, [sp, #68]	; 0x44
 8003ecc:	9b04      	ldr	r3, [sp, #16]
 8003ece:	2b47      	cmp	r3, #71	; 0x47
 8003ed0:	f000 81e7 	beq.w	80042a2 <_vfprintf_r+0x148a>
 8003ed4:	9b04      	ldr	r3, [sp, #16]
 8003ed6:	2b46      	cmp	r3, #70	; 0x46
 8003ed8:	f000 8300 	beq.w	80044dc <_vfprintf_r+0x16c4>
 8003edc:	9904      	ldr	r1, [sp, #16]
 8003ede:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ee0:	b2f2      	uxtb	r2, r6
 8003ee2:	2941      	cmp	r1, #65	; 0x41
 8003ee4:	bf08      	it	eq
 8003ee6:	320f      	addeq	r2, #15
 8003ee8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003eec:	bf06      	itte	eq
 8003eee:	b2d2      	uxtbeq	r2, r2
 8003ef0:	2101      	moveq	r1, #1
 8003ef2:	2100      	movne	r1, #0
 8003ef4:	2b00      	cmp	r3, #0
 8003ef6:	9324      	str	r3, [sp, #144]	; 0x90
 8003ef8:	bfb8      	it	lt
 8003efa:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003efc:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003f00:	bfba      	itte	lt
 8003f02:	f1c3 0301 	rsblt	r3, r3, #1
 8003f06:	222d      	movlt	r2, #45	; 0x2d
 8003f08:	222b      	movge	r2, #43	; 0x2b
 8003f0a:	2b09      	cmp	r3, #9
 8003f0c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003f10:	f300 83f9 	bgt.w	8004706 <_vfprintf_r+0x18ee>
 8003f14:	2900      	cmp	r1, #0
 8003f16:	f040 8487 	bne.w	8004828 <_vfprintf_r+0x1a10>
 8003f1a:	2230      	movs	r2, #48	; 0x30
 8003f1c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003f20:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003f24:	3330      	adds	r3, #48	; 0x30
 8003f26:	7013      	strb	r3, [r2, #0]
 8003f28:	1c53      	adds	r3, r2, #1
 8003f2a:	aa26      	add	r2, sp, #152	; 0x98
 8003f2c:	1a9b      	subs	r3, r3, r2
 8003f2e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003f30:	9319      	str	r3, [sp, #100]	; 0x64
 8003f32:	2a01      	cmp	r2, #1
 8003f34:	4413      	add	r3, r2
 8003f36:	9309      	str	r3, [sp, #36]	; 0x24
 8003f38:	f340 8442 	ble.w	80047c0 <_vfprintf_r+0x19a8>
 8003f3c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003f3e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003f40:	4413      	add	r3, r2
 8003f42:	9309      	str	r3, [sp, #36]	; 0x24
 8003f44:	2300      	movs	r3, #0
 8003f46:	930f      	str	r3, [sp, #60]	; 0x3c
 8003f48:	9314      	str	r3, [sp, #80]	; 0x50
 8003f4a:	9311      	str	r3, [sp, #68]	; 0x44
 8003f4c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003f4e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003f52:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003f56:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003f5a:	9304      	str	r3, [sp, #16]
 8003f5c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003f5e:	2b00      	cmp	r3, #0
 8003f60:	f040 8275 	bne.w	800444e <_vfprintf_r+0x1636>
 8003f64:	4699      	mov	r9, r3
 8003f66:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003f6a:	f7ff b8e2 	b.w	8003132 <_vfprintf_r+0x31a>
 8003f6e:	bf00      	nop
 8003f70:	08007774 	.word	0x08007774
 8003f74:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003f76:	49bd      	ldr	r1, [pc, #756]	; (800426c <_vfprintf_r+0x1454>)
 8003f78:	f8cb 1000 	str.w	r1, [fp]
 8003f7c:	3201      	adds	r2, #1
 8003f7e:	3401      	adds	r4, #1
 8003f80:	2101      	movs	r1, #1
 8003f82:	2a07      	cmp	r2, #7
 8003f84:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003f88:	f8cb 1004 	str.w	r1, [fp, #4]
 8003f8c:	dc60      	bgt.n	8004050 <_vfprintf_r+0x1238>
 8003f8e:	f10b 0b08 	add.w	fp, fp, #8
 8003f92:	b92b      	cbnz	r3, 8003fa0 <_vfprintf_r+0x1188>
 8003f94:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003f96:	b91a      	cbnz	r2, 8003fa0 <_vfprintf_r+0x1188>
 8003f98:	f018 0f01 	tst.w	r8, #1
 8003f9c:	f43f a98d 	beq.w	80032ba <_vfprintf_r+0x4a2>
 8003fa0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003fa2:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003fa4:	f8cb 1000 	str.w	r1, [fp]
 8003fa8:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003faa:	f8cb 1004 	str.w	r1, [fp, #4]
 8003fae:	3201      	adds	r2, #1
 8003fb0:	440c      	add	r4, r1
 8003fb2:	2a07      	cmp	r2, #7
 8003fb4:	942c      	str	r4, [sp, #176]	; 0xb0
 8003fb6:	922b      	str	r2, [sp, #172]	; 0xac
 8003fb8:	f300 8282 	bgt.w	80044c0 <_vfprintf_r+0x16a8>
 8003fbc:	f10b 0b08 	add.w	fp, fp, #8
 8003fc0:	2b00      	cmp	r3, #0
 8003fc2:	f2c0 82e7 	blt.w	8004594 <_vfprintf_r+0x177c>
 8003fc6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003fc8:	3201      	adds	r2, #1
 8003fca:	441c      	add	r4, r3
 8003fcc:	2a07      	cmp	r2, #7
 8003fce:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003fd2:	e9cb 7300 	strd	r7, r3, [fp]
 8003fd6:	f77f a96e 	ble.w	80032b6 <_vfprintf_r+0x49e>
 8003fda:	e4fe      	b.n	80039da <_vfprintf_r+0xbc2>
 8003fdc:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fde:	9907      	ldr	r1, [sp, #28]
 8003fe0:	9803      	ldr	r0, [sp, #12]
 8003fe2:	f002 ff85 	bl	8006ef0 <__sprint_r>
 8003fe6:	2800      	cmp	r0, #0
 8003fe8:	f47f ac8e 	bne.w	8003908 <_vfprintf_r+0xaf0>
 8003fec:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ff0:	f7ff bbf0 	b.w	80037d4 <_vfprintf_r+0x9bc>
 8003ff4:	9a05      	ldr	r2, [sp, #20]
 8003ff6:	601a      	str	r2, [r3, #0]
 8003ff8:	4657      	mov	r7, sl
 8003ffa:	f7ff b9b3 	b.w	8003364 <_vfprintf_r+0x54c>
 8003ffe:	8814      	ldrh	r4, [r2, #0]
 8004000:	9108      	str	r1, [sp, #32]
 8004002:	2500      	movs	r5, #0
 8004004:	2201      	movs	r2, #1
 8004006:	f7ff b9c8 	b.w	800339a <_vfprintf_r+0x582>
 800400a:	8814      	ldrh	r4, [r2, #0]
 800400c:	9308      	str	r3, [sp, #32]
 800400e:	2500      	movs	r5, #0
 8004010:	f7ff ba14 	b.w	800343c <_vfprintf_r+0x624>
 8004014:	f9b1 4000 	ldrsh.w	r4, [r1]
 8004018:	9208      	str	r2, [sp, #32]
 800401a:	17e5      	asrs	r5, r4, #31
 800401c:	4620      	mov	r0, r4
 800401e:	4629      	mov	r1, r5
 8004020:	f7ff b855 	b.w	80030ce <_vfprintf_r+0x2b6>
 8004024:	8814      	ldrh	r4, [r2, #0]
 8004026:	9308      	str	r3, [sp, #32]
 8004028:	2500      	movs	r5, #0
 800402a:	f7ff b825 	b.w	8003078 <_vfprintf_r+0x260>
 800402e:	222d      	movs	r2, #45	; 0x2d
 8004030:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8004034:	f7ff baa2 	b.w	800357c <_vfprintf_r+0x764>
 8004038:	aa2a      	add	r2, sp, #168	; 0xa8
 800403a:	9907      	ldr	r1, [sp, #28]
 800403c:	9803      	ldr	r0, [sp, #12]
 800403e:	f002 ff57 	bl	8006ef0 <__sprint_r>
 8004042:	2800      	cmp	r0, #0
 8004044:	f47f ac60 	bne.w	8003908 <_vfprintf_r+0xaf0>
 8004048:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800404a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800404e:	e534      	b.n	8003aba <_vfprintf_r+0xca2>
 8004050:	aa2a      	add	r2, sp, #168	; 0xa8
 8004052:	9907      	ldr	r1, [sp, #28]
 8004054:	9803      	ldr	r0, [sp, #12]
 8004056:	f002 ff4b 	bl	8006ef0 <__sprint_r>
 800405a:	2800      	cmp	r0, #0
 800405c:	f47f ac54 	bne.w	8003908 <_vfprintf_r+0xaf0>
 8004060:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004062:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004064:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004068:	e793      	b.n	8003f92 <_vfprintf_r+0x117a>
 800406a:	2330      	movs	r3, #48	; 0x30
 800406c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004070:	2378      	movs	r3, #120	; 0x78
 8004072:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8004076:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 800407a:	f048 0402 	orr.w	r4, r8, #2
 800407e:	f300 82b0 	bgt.w	80045e2 <_vfprintf_r+0x17ca>
 8004082:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004086:	930e      	str	r3, [sp, #56]	; 0x38
 8004088:	f026 0320 	bic.w	r3, r6, #32
 800408c:	9304      	str	r3, [sp, #16]
 800408e:	2200      	movs	r2, #0
 8004090:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004092:	920a      	str	r2, [sp, #40]	; 0x28
 8004094:	46a0      	mov	r8, r4
 8004096:	af3d      	add	r7, sp, #244	; 0xf4
 8004098:	2b00      	cmp	r3, #0
 800409a:	f2c0 81e3 	blt.w	8004464 <_vfprintf_r+0x164c>
 800409e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80040a2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80040a6:	2300      	movs	r3, #0
 80040a8:	930b      	str	r3, [sp, #44]	; 0x2c
 80040aa:	2e61      	cmp	r6, #97	; 0x61
 80040ac:	f000 8255 	beq.w	800455a <_vfprintf_r+0x1742>
 80040b0:	2e41      	cmp	r6, #65	; 0x41
 80040b2:	f47f aee3 	bne.w	8003e7c <_vfprintf_r+0x1064>
 80040b6:	a824      	add	r0, sp, #144	; 0x90
 80040b8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80040bc:	f002 fe32 	bl	8006d24 <frexp>
 80040c0:	2200      	movs	r2, #0
 80040c2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80040c6:	ec51 0b10 	vmov	r0, r1, d0
 80040ca:	f7fc fd35 	bl	8000b38 <__aeabi_dmul>
 80040ce:	2200      	movs	r2, #0
 80040d0:	2300      	movs	r3, #0
 80040d2:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80040d6:	f7fc ff97 	bl	8001008 <__aeabi_dcmpeq>
 80040da:	2800      	cmp	r0, #0
 80040dc:	f040 8305 	bne.w	80046ea <_vfprintf_r+0x18d2>
 80040e0:	4b63      	ldr	r3, [pc, #396]	; (8004270 <_vfprintf_r+0x1458>)
 80040e2:	9309      	str	r3, [sp, #36]	; 0x24
 80040e4:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 80040e8:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 80040ec:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80040f0:	9721      	str	r7, [sp, #132]	; 0x84
 80040f2:	46b9      	mov	r9, r7
 80040f4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 80040f8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 80040fc:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8004100:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8004104:	e003      	b.n	800410e <_vfprintf_r+0x12f6>
 8004106:	f7fc ff7f 	bl	8001008 <__aeabi_dcmpeq>
 800410a:	bb20      	cbnz	r0, 8004156 <_vfprintf_r+0x133e>
 800410c:	46a9      	mov	r9, r5
 800410e:	2200      	movs	r2, #0
 8004110:	4b58      	ldr	r3, [pc, #352]	; (8004274 <_vfprintf_r+0x145c>)
 8004112:	4630      	mov	r0, r6
 8004114:	4639      	mov	r1, r7
 8004116:	f7fc fd0f 	bl	8000b38 <__aeabi_dmul>
 800411a:	460f      	mov	r7, r1
 800411c:	4606      	mov	r6, r0
 800411e:	f7fc ffbb 	bl	8001098 <__aeabi_d2iz>
 8004122:	4680      	mov	r8, r0
 8004124:	f7fc fc9e 	bl	8000a64 <__aeabi_i2d>
 8004128:	4602      	mov	r2, r0
 800412a:	460b      	mov	r3, r1
 800412c:	4630      	mov	r0, r6
 800412e:	4639      	mov	r1, r7
 8004130:	f7fc fb4a 	bl	80007c8 <__aeabi_dsub>
 8004134:	464d      	mov	r5, r9
 8004136:	f81a c008 	ldrb.w	ip, [sl, r8]
 800413a:	f805 cb01 	strb.w	ip, [r5], #1
 800413e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8004142:	46a3      	mov	fp, r4
 8004144:	4606      	mov	r6, r0
 8004146:	460f      	mov	r7, r1
 8004148:	f04f 0200 	mov.w	r2, #0
 800414c:	f04f 0300 	mov.w	r3, #0
 8004150:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8004154:	d1d7      	bne.n	8004106 <_vfprintf_r+0x12ee>
 8004156:	4630      	mov	r0, r6
 8004158:	4639      	mov	r1, r7
 800415a:	2200      	movs	r2, #0
 800415c:	4b46      	ldr	r3, [pc, #280]	; (8004278 <_vfprintf_r+0x1460>)
 800415e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8004162:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8004164:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8004168:	4644      	mov	r4, r8
 800416a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 800416e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8004172:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8004176:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 800417a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 800417c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8004180:	f7fc ff6a 	bl	8001058 <__aeabi_dcmpgt>
 8004184:	2800      	cmp	r0, #0
 8004186:	f040 8176 	bne.w	8004476 <_vfprintf_r+0x165e>
 800418a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 800418e:	2200      	movs	r2, #0
 8004190:	4b39      	ldr	r3, [pc, #228]	; (8004278 <_vfprintf_r+0x1460>)
 8004192:	f7fc ff39 	bl	8001008 <__aeabi_dcmpeq>
 8004196:	b110      	cbz	r0, 800419e <_vfprintf_r+0x1386>
 8004198:	07e2      	lsls	r2, r4, #31
 800419a:	f100 816c 	bmi.w	8004476 <_vfprintf_r+0x165e>
 800419e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80041a0:	2b00      	cmp	r3, #0
 80041a2:	db07      	blt.n	80041b4 <_vfprintf_r+0x139c>
 80041a4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80041a6:	3301      	adds	r3, #1
 80041a8:	442b      	add	r3, r5
 80041aa:	2230      	movs	r2, #48	; 0x30
 80041ac:	f805 2b01 	strb.w	r2, [r5], #1
 80041b0:	42ab      	cmp	r3, r5
 80041b2:	d1fb      	bne.n	80041ac <_vfprintf_r+0x1394>
 80041b4:	1beb      	subs	r3, r5, r7
 80041b6:	4640      	mov	r0, r8
 80041b8:	9310      	str	r3, [sp, #64]	; 0x40
 80041ba:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80041be:	e683      	b.n	8003ec8 <_vfprintf_r+0x10b0>
 80041c0:	f8cd 9010 	str.w	r9, [sp, #16]
 80041c4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80041c8:	9408      	str	r4, [sp, #32]
 80041ca:	4681      	mov	r9, r0
 80041cc:	900f      	str	r0, [sp, #60]	; 0x3c
 80041ce:	9014      	str	r0, [sp, #80]	; 0x50
 80041d0:	9011      	str	r0, [sp, #68]	; 0x44
 80041d2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80041d6:	f7fe bfac 	b.w	8003132 <_vfprintf_r+0x31a>
 80041da:	aa2a      	add	r2, sp, #168	; 0xa8
 80041dc:	9907      	ldr	r1, [sp, #28]
 80041de:	9803      	ldr	r0, [sp, #12]
 80041e0:	f002 fe86 	bl	8006ef0 <__sprint_r>
 80041e4:	2800      	cmp	r0, #0
 80041e6:	f47f ab8f 	bne.w	8003908 <_vfprintf_r+0xaf0>
 80041ea:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80041ec:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80041ee:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80041f2:	e511      	b.n	8003c18 <_vfprintf_r+0xe00>
 80041f4:	4252      	negs	r2, r2
 80041f6:	9206      	str	r2, [sp, #24]
 80041f8:	9308      	str	r3, [sp, #32]
 80041fa:	f7ff b96d 	b.w	80034d8 <_vfprintf_r+0x6c0>
 80041fe:	4614      	mov	r4, r2
 8004200:	4632      	mov	r2, r6
 8004202:	461e      	mov	r6, r3
 8004204:	4613      	mov	r3, r2
 8004206:	462a      	mov	r2, r5
 8004208:	3201      	adds	r2, #1
 800420a:	9209      	str	r2, [sp, #36]	; 0x24
 800420c:	f106 0208 	add.w	r2, r6, #8
 8004210:	e9c6 3900 	strd	r3, r9, [r6]
 8004214:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004216:	932b      	str	r3, [sp, #172]	; 0xac
 8004218:	444c      	add	r4, r9
 800421a:	2b07      	cmp	r3, #7
 800421c:	942c      	str	r4, [sp, #176]	; 0xb0
 800421e:	f73f acc3 	bgt.w	8003ba8 <_vfprintf_r+0xd90>
 8004222:	3301      	adds	r3, #1
 8004224:	9309      	str	r3, [sp, #36]	; 0x24
 8004226:	f102 0b08 	add.w	fp, r2, #8
 800422a:	4616      	mov	r6, r2
 800422c:	f7ff bbca 	b.w	80039c4 <_vfprintf_r+0xbac>
 8004230:	aa2a      	add	r2, sp, #168	; 0xa8
 8004232:	9907      	ldr	r1, [sp, #28]
 8004234:	9803      	ldr	r0, [sp, #12]
 8004236:	f002 fe5b 	bl	8006ef0 <__sprint_r>
 800423a:	2800      	cmp	r0, #0
 800423c:	f47f ab64 	bne.w	8003908 <_vfprintf_r+0xaf0>
 8004240:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004242:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004246:	f7ff bade 	b.w	8003806 <_vfprintf_r+0x9ee>
 800424a:	464b      	mov	r3, r9
 800424c:	2b06      	cmp	r3, #6
 800424e:	bf28      	it	cs
 8004250:	2306      	movcs	r3, #6
 8004252:	46b9      	mov	r9, r7
 8004254:	970f      	str	r7, [sp, #60]	; 0x3c
 8004256:	9714      	str	r7, [sp, #80]	; 0x50
 8004258:	9711      	str	r7, [sp, #68]	; 0x44
 800425a:	970a      	str	r7, [sp, #40]	; 0x28
 800425c:	463a      	mov	r2, r7
 800425e:	9304      	str	r3, [sp, #16]
 8004260:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8004264:	4f05      	ldr	r7, [pc, #20]	; (800427c <_vfprintf_r+0x1464>)
 8004266:	f7fe bf64 	b.w	8003132 <_vfprintf_r+0x31a>
 800426a:	bf00      	nop
 800426c:	08007760 	.word	0x08007760
 8004270:	08007744 	.word	0x08007744
 8004274:	40300000 	.word	0x40300000
 8004278:	3fe00000 	.word	0x3fe00000
 800427c:	08007758 	.word	0x08007758
 8004280:	460c      	mov	r4, r1
 8004282:	4639      	mov	r1, r7
 8004284:	465f      	mov	r7, fp
 8004286:	469b      	mov	fp, r3
 8004288:	460b      	mov	r3, r1
 800428a:	3201      	adds	r2, #1
 800428c:	442c      	add	r4, r5
 800428e:	2a07      	cmp	r2, #7
 8004290:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004294:	e9cb 3500 	strd	r3, r5, [fp]
 8004298:	f73f aca5 	bgt.w	8003be6 <_vfprintf_r+0xdce>
 800429c:	f10b 0b08 	add.w	fp, fp, #8
 80042a0:	e4ac      	b.n	8003bfc <_vfprintf_r+0xde4>
 80042a2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80042a4:	1cda      	adds	r2, r3, #3
 80042a6:	db02      	blt.n	80042ae <_vfprintf_r+0x1496>
 80042a8:	4599      	cmp	r9, r3
 80042aa:	f280 80b5 	bge.w	8004418 <_vfprintf_r+0x1600>
 80042ae:	3e02      	subs	r6, #2
 80042b0:	f026 0320 	bic.w	r3, r6, #32
 80042b4:	9304      	str	r3, [sp, #16]
 80042b6:	e611      	b.n	8003edc <_vfprintf_r+0x10c4>
 80042b8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80042ba:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80042be:	465a      	mov	r2, fp
 80042c0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 80042c4:	18fb      	adds	r3, r7, r3
 80042c6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80042ca:	970c      	str	r7, [sp, #48]	; 0x30
 80042cc:	4eaf      	ldr	r6, [pc, #700]	; (800458c <_vfprintf_r+0x1774>)
 80042ce:	f8dd a01c 	ldr.w	sl, [sp, #28]
 80042d2:	9309      	str	r3, [sp, #36]	; 0x24
 80042d4:	464f      	mov	r7, r9
 80042d6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80042da:	4621      	mov	r1, r4
 80042dc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80042de:	2b00      	cmp	r3, #0
 80042e0:	d05b      	beq.n	800439a <_vfprintf_r+0x1582>
 80042e2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80042e4:	2b00      	cmp	r3, #0
 80042e6:	d154      	bne.n	8004392 <_vfprintf_r+0x157a>
 80042e8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80042ea:	3b01      	subs	r3, #1
 80042ec:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80042f0:	9314      	str	r3, [sp, #80]	; 0x50
 80042f2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80042f4:	9818      	ldr	r0, [sp, #96]	; 0x60
 80042f6:	6010      	str	r0, [r2, #0]
 80042f8:	3301      	adds	r3, #1
 80042fa:	4459      	add	r1, fp
 80042fc:	2b07      	cmp	r3, #7
 80042fe:	912c      	str	r1, [sp, #176]	; 0xb0
 8004300:	f8c2 b004 	str.w	fp, [r2, #4]
 8004304:	932b      	str	r3, [sp, #172]	; 0xac
 8004306:	dc68      	bgt.n	80043da <_vfprintf_r+0x15c2>
 8004308:	3208      	adds	r2, #8
 800430a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800430c:	f898 3000 	ldrb.w	r3, [r8]
 8004310:	1bc5      	subs	r5, r0, r7
 8004312:	429d      	cmp	r5, r3
 8004314:	bfa8      	it	ge
 8004316:	461d      	movge	r5, r3
 8004318:	2d00      	cmp	r5, #0
 800431a:	dd0b      	ble.n	8004334 <_vfprintf_r+0x151c>
 800431c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800431e:	6017      	str	r7, [r2, #0]
 8004320:	3301      	adds	r3, #1
 8004322:	4429      	add	r1, r5
 8004324:	2b07      	cmp	r3, #7
 8004326:	912c      	str	r1, [sp, #176]	; 0xb0
 8004328:	6055      	str	r5, [r2, #4]
 800432a:	932b      	str	r3, [sp, #172]	; 0xac
 800432c:	dc5e      	bgt.n	80043ec <_vfprintf_r+0x15d4>
 800432e:	f898 3000 	ldrb.w	r3, [r8]
 8004332:	3208      	adds	r2, #8
 8004334:	2d00      	cmp	r5, #0
 8004336:	bfac      	ite	ge
 8004338:	1b5d      	subge	r5, r3, r5
 800433a:	461d      	movlt	r5, r3
 800433c:	2d00      	cmp	r5, #0
 800433e:	dd26      	ble.n	800438e <_vfprintf_r+0x1576>
 8004340:	2d10      	cmp	r5, #16
 8004342:	982b      	ldr	r0, [sp, #172]	; 0xac
 8004344:	dd3c      	ble.n	80043c0 <_vfprintf_r+0x15a8>
 8004346:	2410      	movs	r4, #16
 8004348:	e003      	b.n	8004352 <_vfprintf_r+0x153a>
 800434a:	3208      	adds	r2, #8
 800434c:	3d10      	subs	r5, #16
 800434e:	2d10      	cmp	r5, #16
 8004350:	dd36      	ble.n	80043c0 <_vfprintf_r+0x15a8>
 8004352:	3001      	adds	r0, #1
 8004354:	3110      	adds	r1, #16
 8004356:	2807      	cmp	r0, #7
 8004358:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800435c:	e9c2 6400 	strd	r6, r4, [r2]
 8004360:	ddf3      	ble.n	800434a <_vfprintf_r+0x1532>
 8004362:	aa2a      	add	r2, sp, #168	; 0xa8
 8004364:	4651      	mov	r1, sl
 8004366:	4648      	mov	r0, r9
 8004368:	f002 fdc2 	bl	8006ef0 <__sprint_r>
 800436c:	2800      	cmp	r0, #0
 800436e:	d150      	bne.n	8004412 <_vfprintf_r+0x15fa>
 8004370:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8004374:	aa2d      	add	r2, sp, #180	; 0xb4
 8004376:	e7e9      	b.n	800434c <_vfprintf_r+0x1534>
 8004378:	aa2a      	add	r2, sp, #168	; 0xa8
 800437a:	4651      	mov	r1, sl
 800437c:	4648      	mov	r0, r9
 800437e:	f002 fdb7 	bl	8006ef0 <__sprint_r>
 8004382:	2800      	cmp	r0, #0
 8004384:	d145      	bne.n	8004412 <_vfprintf_r+0x15fa>
 8004386:	f898 3000 	ldrb.w	r3, [r8]
 800438a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800438c:	aa2d      	add	r2, sp, #180	; 0xb4
 800438e:	441f      	add	r7, r3
 8004390:	e7a4      	b.n	80042dc <_vfprintf_r+0x14c4>
 8004392:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004394:	3b01      	subs	r3, #1
 8004396:	930f      	str	r3, [sp, #60]	; 0x3c
 8004398:	e7ab      	b.n	80042f2 <_vfprintf_r+0x14da>
 800439a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800439c:	2b00      	cmp	r3, #0
 800439e:	d1f8      	bne.n	8004392 <_vfprintf_r+0x157a>
 80043a0:	46b9      	mov	r9, r7
 80043a2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80043a4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 80043a6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80043aa:	18fb      	adds	r3, r7, r3
 80043ac:	4599      	cmp	r9, r3
 80043ae:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 80043b2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80043b6:	4693      	mov	fp, r2
 80043b8:	460c      	mov	r4, r1
 80043ba:	bf28      	it	cs
 80043bc:	4699      	movcs	r9, r3
 80043be:	e424      	b.n	8003c0a <_vfprintf_r+0xdf2>
 80043c0:	3001      	adds	r0, #1
 80043c2:	4429      	add	r1, r5
 80043c4:	2807      	cmp	r0, #7
 80043c6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80043ca:	e9c2 6500 	strd	r6, r5, [r2]
 80043ce:	dcd3      	bgt.n	8004378 <_vfprintf_r+0x1560>
 80043d0:	f898 3000 	ldrb.w	r3, [r8]
 80043d4:	3208      	adds	r2, #8
 80043d6:	441f      	add	r7, r3
 80043d8:	e780      	b.n	80042dc <_vfprintf_r+0x14c4>
 80043da:	aa2a      	add	r2, sp, #168	; 0xa8
 80043dc:	4651      	mov	r1, sl
 80043de:	4648      	mov	r0, r9
 80043e0:	f002 fd86 	bl	8006ef0 <__sprint_r>
 80043e4:	b9a8      	cbnz	r0, 8004412 <_vfprintf_r+0x15fa>
 80043e6:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80043e8:	aa2d      	add	r2, sp, #180	; 0xb4
 80043ea:	e78e      	b.n	800430a <_vfprintf_r+0x14f2>
 80043ec:	aa2a      	add	r2, sp, #168	; 0xa8
 80043ee:	4651      	mov	r1, sl
 80043f0:	4648      	mov	r0, r9
 80043f2:	f002 fd7d 	bl	8006ef0 <__sprint_r>
 80043f6:	b960      	cbnz	r0, 8004412 <_vfprintf_r+0x15fa>
 80043f8:	f898 3000 	ldrb.w	r3, [r8]
 80043fc:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80043fe:	aa2d      	add	r2, sp, #180	; 0xb4
 8004400:	e798      	b.n	8004334 <_vfprintf_r+0x151c>
 8004402:	4638      	mov	r0, r7
 8004404:	f7fc f91c 	bl	8000640 <strlen>
 8004408:	46a9      	mov	r9, r5
 800440a:	4603      	mov	r3, r0
 800440c:	9009      	str	r0, [sp, #36]	; 0x24
 800440e:	f7ff b8f4 	b.w	80035fa <_vfprintf_r+0x7e2>
 8004412:	46d1      	mov	r9, sl
 8004414:	f7ff ba7a 	b.w	800390c <_vfprintf_r+0xaf4>
 8004418:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800441a:	4619      	mov	r1, r3
 800441c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800441e:	4299      	cmp	r1, r3
 8004420:	f300 8082 	bgt.w	8004528 <_vfprintf_r+0x1710>
 8004424:	07c4      	lsls	r4, r0, #31
 8004426:	f140 816b 	bpl.w	8004700 <_vfprintf_r+0x18e8>
 800442a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800442c:	4413      	add	r3, r2
 800442e:	9309      	str	r3, [sp, #36]	; 0x24
 8004430:	0541      	lsls	r1, r0, #21
 8004432:	d503      	bpl.n	800443c <_vfprintf_r+0x1624>
 8004434:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004436:	2b00      	cmp	r3, #0
 8004438:	f300 80e6 	bgt.w	8004608 <_vfprintf_r+0x17f0>
 800443c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800443e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004442:	9304      	str	r3, [sp, #16]
 8004444:	2667      	movs	r6, #103	; 0x67
 8004446:	2300      	movs	r3, #0
 8004448:	930f      	str	r3, [sp, #60]	; 0x3c
 800444a:	9314      	str	r3, [sp, #80]	; 0x50
 800444c:	e586      	b.n	8003f5c <_vfprintf_r+0x1144>
 800444e:	222d      	movs	r2, #45	; 0x2d
 8004450:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8004454:	f04f 0900 	mov.w	r9, #0
 8004458:	f7fe be6c 	b.w	8003134 <_vfprintf_r+0x31c>
 800445c:	46a1      	mov	r9, r4
 800445e:	f7ff ba55 	b.w	800390c <_vfprintf_r+0xaf4>
 8004462:	900a      	str	r0, [sp, #40]	; 0x28
 8004464:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8004468:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 800446c:	931f      	str	r3, [sp, #124]	; 0x7c
 800446e:	232d      	movs	r3, #45	; 0x2d
 8004470:	911e      	str	r1, [sp, #120]	; 0x78
 8004472:	930b      	str	r3, [sp, #44]	; 0x2c
 8004474:	e619      	b.n	80040aa <_vfprintf_r+0x1292>
 8004476:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004478:	9328      	str	r3, [sp, #160]	; 0xa0
 800447a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800447c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8004480:	7bd9      	ldrb	r1, [r3, #15]
 8004482:	4291      	cmp	r1, r2
 8004484:	462b      	mov	r3, r5
 8004486:	d109      	bne.n	800449c <_vfprintf_r+0x1684>
 8004488:	2030      	movs	r0, #48	; 0x30
 800448a:	f803 0c01 	strb.w	r0, [r3, #-1]
 800448e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004490:	1e5a      	subs	r2, r3, #1
 8004492:	9228      	str	r2, [sp, #160]	; 0xa0
 8004494:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004498:	4291      	cmp	r1, r2
 800449a:	d0f6      	beq.n	800448a <_vfprintf_r+0x1672>
 800449c:	2a39      	cmp	r2, #57	; 0x39
 800449e:	bf0b      	itete	eq
 80044a0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 80044a2:	3201      	addne	r2, #1
 80044a4:	7a92      	ldrbeq	r2, [r2, #10]
 80044a6:	b2d2      	uxtbne	r2, r2
 80044a8:	f803 2c01 	strb.w	r2, [r3, #-1]
 80044ac:	e682      	b.n	80041b4 <_vfprintf_r+0x139c>
 80044ae:	f418 7f00 	tst.w	r8, #512	; 0x200
 80044b2:	f43f ad9f 	beq.w	8003ff4 <_vfprintf_r+0x11dc>
 80044b6:	9a05      	ldr	r2, [sp, #20]
 80044b8:	701a      	strb	r2, [r3, #0]
 80044ba:	4657      	mov	r7, sl
 80044bc:	f7fe bf52 	b.w	8003364 <_vfprintf_r+0x54c>
 80044c0:	aa2a      	add	r2, sp, #168	; 0xa8
 80044c2:	9907      	ldr	r1, [sp, #28]
 80044c4:	9803      	ldr	r0, [sp, #12]
 80044c6:	f002 fd13 	bl	8006ef0 <__sprint_r>
 80044ca:	2800      	cmp	r0, #0
 80044cc:	f47f aa1c 	bne.w	8003908 <_vfprintf_r+0xaf0>
 80044d0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80044d2:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80044d6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80044da:	e571      	b.n	8003fc0 <_vfprintf_r+0x11a8>
 80044dc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80044de:	2b00      	cmp	r3, #0
 80044e0:	f340 8164 	ble.w	80047ac <_vfprintf_r+0x1994>
 80044e4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80044e6:	f1b9 0f00 	cmp.w	r9, #0
 80044ea:	f040 8103 	bne.w	80046f4 <_vfprintf_r+0x18dc>
 80044ee:	07c6      	lsls	r6, r0, #31
 80044f0:	f100 8100 	bmi.w	80046f4 <_vfprintf_r+0x18dc>
 80044f4:	9309      	str	r3, [sp, #36]	; 0x24
 80044f6:	2666      	movs	r6, #102	; 0x66
 80044f8:	0543      	lsls	r3, r0, #21
 80044fa:	f100 8086 	bmi.w	800460a <_vfprintf_r+0x17f2>
 80044fe:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004500:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004504:	9304      	str	r3, [sp, #16]
 8004506:	e79e      	b.n	8004446 <_vfprintf_r+0x162e>
 8004508:	aa2a      	add	r2, sp, #168	; 0xa8
 800450a:	9907      	ldr	r1, [sp, #28]
 800450c:	9803      	ldr	r0, [sp, #12]
 800450e:	f002 fcef 	bl	8006ef0 <__sprint_r>
 8004512:	2800      	cmp	r0, #0
 8004514:	f47f a9f8 	bne.w	8003908 <_vfprintf_r+0xaf0>
 8004518:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800451a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800451c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800451e:	1ad3      	subs	r3, r2, r3
 8004520:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004524:	f7ff bb90 	b.w	8003c48 <_vfprintf_r+0xe30>
 8004528:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800452a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800452c:	4413      	add	r3, r2
 800452e:	9309      	str	r3, [sp, #36]	; 0x24
 8004530:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004532:	2b00      	cmp	r3, #0
 8004534:	f340 8149 	ble.w	80047ca <_vfprintf_r+0x19b2>
 8004538:	2667      	movs	r6, #103	; 0x67
 800453a:	e7dd      	b.n	80044f8 <_vfprintf_r+0x16e0>
 800453c:	2330      	movs	r3, #48	; 0x30
 800453e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004542:	2358      	movs	r3, #88	; 0x58
 8004544:	e595      	b.n	8004072 <_vfprintf_r+0x125a>
 8004546:	9803      	ldr	r0, [sp, #12]
 8004548:	aa2a      	add	r2, sp, #168	; 0xa8
 800454a:	4649      	mov	r1, r9
 800454c:	f002 fcd0 	bl	8006ef0 <__sprint_r>
 8004550:	2800      	cmp	r0, #0
 8004552:	f47f a9e0 	bne.w	8003916 <_vfprintf_r+0xafe>
 8004556:	f7fe bf0f 	b.w	8003378 <_vfprintf_r+0x560>
 800455a:	a824      	add	r0, sp, #144	; 0x90
 800455c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004560:	f002 fbe0 	bl	8006d24 <frexp>
 8004564:	2200      	movs	r2, #0
 8004566:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800456a:	ec51 0b10 	vmov	r0, r1, d0
 800456e:	f7fc fae3 	bl	8000b38 <__aeabi_dmul>
 8004572:	2200      	movs	r2, #0
 8004574:	2300      	movs	r3, #0
 8004576:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800457a:	f7fc fd45 	bl	8001008 <__aeabi_dcmpeq>
 800457e:	b108      	cbz	r0, 8004584 <_vfprintf_r+0x176c>
 8004580:	2301      	movs	r3, #1
 8004582:	9324      	str	r3, [sp, #144]	; 0x90
 8004584:	4b02      	ldr	r3, [pc, #8]	; (8004590 <_vfprintf_r+0x1778>)
 8004586:	9309      	str	r3, [sp, #36]	; 0x24
 8004588:	e5ac      	b.n	80040e4 <_vfprintf_r+0x12cc>
 800458a:	bf00      	nop
 800458c:	08007774 	.word	0x08007774
 8004590:	08007730 	.word	0x08007730
 8004594:	425d      	negs	r5, r3
 8004596:	3310      	adds	r3, #16
 8004598:	4bb9      	ldr	r3, [pc, #740]	; (8004880 <_vfprintf_r+0x1a68>)
 800459a:	f280 8097 	bge.w	80046cc <_vfprintf_r+0x18b4>
 800459e:	4619      	mov	r1, r3
 80045a0:	2610      	movs	r6, #16
 80045a2:	4623      	mov	r3, r4
 80045a4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80045a8:	460c      	mov	r4, r1
 80045aa:	e005      	b.n	80045b8 <_vfprintf_r+0x17a0>
 80045ac:	f10b 0b08 	add.w	fp, fp, #8
 80045b0:	3d10      	subs	r5, #16
 80045b2:	2d10      	cmp	r5, #16
 80045b4:	f340 8087 	ble.w	80046c6 <_vfprintf_r+0x18ae>
 80045b8:	3201      	adds	r2, #1
 80045ba:	3310      	adds	r3, #16
 80045bc:	2a07      	cmp	r2, #7
 80045be:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80045c2:	e9cb 4600 	strd	r4, r6, [fp]
 80045c6:	ddf1      	ble.n	80045ac <_vfprintf_r+0x1794>
 80045c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80045ca:	9907      	ldr	r1, [sp, #28]
 80045cc:	4648      	mov	r0, r9
 80045ce:	f002 fc8f 	bl	8006ef0 <__sprint_r>
 80045d2:	2800      	cmp	r0, #0
 80045d4:	f47f a998 	bne.w	8003908 <_vfprintf_r+0xaf0>
 80045d8:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80045dc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80045e0:	e7e6      	b.n	80045b0 <_vfprintf_r+0x1798>
 80045e2:	f109 0101 	add.w	r1, r9, #1
 80045e6:	9803      	ldr	r0, [sp, #12]
 80045e8:	f7fe f8a0 	bl	800272c <_malloc_r>
 80045ec:	4607      	mov	r7, r0
 80045ee:	2800      	cmp	r0, #0
 80045f0:	f000 813b 	beq.w	800486a <_vfprintf_r+0x1a52>
 80045f4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80045f8:	930e      	str	r3, [sp, #56]	; 0x38
 80045fa:	f026 0320 	bic.w	r3, r6, #32
 80045fe:	9304      	str	r3, [sp, #16]
 8004600:	46a0      	mov	r8, r4
 8004602:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004604:	900a      	str	r0, [sp, #40]	; 0x28
 8004606:	e547      	b.n	8004098 <_vfprintf_r+0x1280>
 8004608:	2667      	movs	r6, #103	; 0x67
 800460a:	981a      	ldr	r0, [sp, #104]	; 0x68
 800460c:	2200      	movs	r2, #0
 800460e:	920f      	str	r2, [sp, #60]	; 0x3c
 8004610:	9214      	str	r2, [sp, #80]	; 0x50
 8004612:	7803      	ldrb	r3, [r0, #0]
 8004614:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8004616:	2bff      	cmp	r3, #255	; 0xff
 8004618:	d00c      	beq.n	8004634 <_vfprintf_r+0x181c>
 800461a:	4293      	cmp	r3, r2
 800461c:	da0a      	bge.n	8004634 <_vfprintf_r+0x181c>
 800461e:	7841      	ldrb	r1, [r0, #1]
 8004620:	1ad2      	subs	r2, r2, r3
 8004622:	b1a9      	cbz	r1, 8004650 <_vfprintf_r+0x1838>
 8004624:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004626:	3301      	adds	r3, #1
 8004628:	9314      	str	r3, [sp, #80]	; 0x50
 800462a:	460b      	mov	r3, r1
 800462c:	2bff      	cmp	r3, #255	; 0xff
 800462e:	f100 0001 	add.w	r0, r0, #1
 8004632:	d1f2      	bne.n	800461a <_vfprintf_r+0x1802>
 8004634:	9211      	str	r2, [sp, #68]	; 0x44
 8004636:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004638:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800463a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800463c:	901a      	str	r0, [sp, #104]	; 0x68
 800463e:	4413      	add	r3, r2
 8004640:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8004642:	fb02 1303 	mla	r3, r2, r3, r1
 8004646:	9309      	str	r3, [sp, #36]	; 0x24
 8004648:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800464c:	9304      	str	r3, [sp, #16]
 800464e:	e485      	b.n	8003f5c <_vfprintf_r+0x1144>
 8004650:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004652:	3101      	adds	r1, #1
 8004654:	910f      	str	r1, [sp, #60]	; 0x3c
 8004656:	e7de      	b.n	8004616 <_vfprintf_r+0x17fe>
 8004658:	aa28      	add	r2, sp, #160	; 0xa0
 800465a:	ab25      	add	r3, sp, #148	; 0x94
 800465c:	e9cd 3200 	strd	r3, r2, [sp]
 8004660:	2103      	movs	r1, #3
 8004662:	ab24      	add	r3, sp, #144	; 0x90
 8004664:	464a      	mov	r2, r9
 8004666:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800466a:	9803      	ldr	r0, [sp, #12]
 800466c:	f000 fa5c 	bl	8004b28 <_dtoa_r>
 8004670:	464d      	mov	r5, r9
 8004672:	4607      	mov	r7, r0
 8004674:	eb00 0409 	add.w	r4, r0, r9
 8004678:	783b      	ldrb	r3, [r7, #0]
 800467a:	2b30      	cmp	r3, #48	; 0x30
 800467c:	f000 80be 	beq.w	80047fc <_vfprintf_r+0x19e4>
 8004680:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8004682:	442c      	add	r4, r5
 8004684:	2200      	movs	r2, #0
 8004686:	2300      	movs	r3, #0
 8004688:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800468c:	f7fc fcbc 	bl	8001008 <__aeabi_dcmpeq>
 8004690:	b108      	cbz	r0, 8004696 <_vfprintf_r+0x187e>
 8004692:	4623      	mov	r3, r4
 8004694:	e413      	b.n	8003ebe <_vfprintf_r+0x10a6>
 8004696:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004698:	42a3      	cmp	r3, r4
 800469a:	f4bf ac10 	bcs.w	8003ebe <_vfprintf_r+0x10a6>
 800469e:	2130      	movs	r1, #48	; 0x30
 80046a0:	1c5a      	adds	r2, r3, #1
 80046a2:	9228      	str	r2, [sp, #160]	; 0xa0
 80046a4:	7019      	strb	r1, [r3, #0]
 80046a6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80046a8:	429c      	cmp	r4, r3
 80046aa:	d8f9      	bhi.n	80046a0 <_vfprintf_r+0x1888>
 80046ac:	e407      	b.n	8003ebe <_vfprintf_r+0x10a6>
 80046ae:	197c      	adds	r4, r7, r5
 80046b0:	e7e8      	b.n	8004684 <_vfprintf_r+0x186c>
 80046b2:	f1b9 0f00 	cmp.w	r9, #0
 80046b6:	f000 8092 	beq.w	80047de <_vfprintf_r+0x19c6>
 80046ba:	900a      	str	r0, [sp, #40]	; 0x28
 80046bc:	e4ec      	b.n	8004098 <_vfprintf_r+0x1280>
 80046be:	900a      	str	r0, [sp, #40]	; 0x28
 80046c0:	f04f 0906 	mov.w	r9, #6
 80046c4:	e4e8      	b.n	8004098 <_vfprintf_r+0x1280>
 80046c6:	4621      	mov	r1, r4
 80046c8:	461c      	mov	r4, r3
 80046ca:	460b      	mov	r3, r1
 80046cc:	3201      	adds	r2, #1
 80046ce:	442c      	add	r4, r5
 80046d0:	2a07      	cmp	r2, #7
 80046d2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80046d6:	e9cb 3500 	strd	r3, r5, [fp]
 80046da:	f300 80a9 	bgt.w	8004830 <_vfprintf_r+0x1a18>
 80046de:	f10b 0b08 	add.w	fp, fp, #8
 80046e2:	e470      	b.n	8003fc6 <_vfprintf_r+0x11ae>
 80046e4:	469a      	mov	sl, r3
 80046e6:	f7ff bb37 	b.w	8003d58 <_vfprintf_r+0xf40>
 80046ea:	2301      	movs	r3, #1
 80046ec:	9324      	str	r3, [sp, #144]	; 0x90
 80046ee:	4b65      	ldr	r3, [pc, #404]	; (8004884 <_vfprintf_r+0x1a6c>)
 80046f0:	9309      	str	r3, [sp, #36]	; 0x24
 80046f2:	e4f7      	b.n	80040e4 <_vfprintf_r+0x12cc>
 80046f4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80046f6:	4413      	add	r3, r2
 80046f8:	444b      	add	r3, r9
 80046fa:	9309      	str	r3, [sp, #36]	; 0x24
 80046fc:	2666      	movs	r6, #102	; 0x66
 80046fe:	e6fb      	b.n	80044f8 <_vfprintf_r+0x16e0>
 8004700:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004702:	9309      	str	r3, [sp, #36]	; 0x24
 8004704:	e694      	b.n	8004430 <_vfprintf_r+0x1618>
 8004706:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 800470a:	4664      	mov	r4, ip
 800470c:	4d5e      	ldr	r5, [pc, #376]	; (8004888 <_vfprintf_r+0x1a70>)
 800470e:	e000      	b.n	8004712 <_vfprintf_r+0x18fa>
 8004710:	4614      	mov	r4, r2
 8004712:	fba5 1203 	umull	r1, r2, r5, r3
 8004716:	08d2      	lsrs	r2, r2, #3
 8004718:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800471c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004720:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004724:	4613      	mov	r3, r2
 8004726:	2b09      	cmp	r3, #9
 8004728:	f804 1c01 	strb.w	r1, [r4, #-1]
 800472c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004730:	dcee      	bgt.n	8004710 <_vfprintf_r+0x18f8>
 8004732:	3330      	adds	r3, #48	; 0x30
 8004734:	3c02      	subs	r4, #2
 8004736:	b2db      	uxtb	r3, r3
 8004738:	45a4      	cmp	ip, r4
 800473a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800473e:	f240 8090 	bls.w	8004862 <_vfprintf_r+0x1a4a>
 8004742:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004746:	4611      	mov	r1, r2
 8004748:	e001      	b.n	800474e <_vfprintf_r+0x1936>
 800474a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800474e:	f804 3b01 	strb.w	r3, [r4], #1
 8004752:	458c      	cmp	ip, r1
 8004754:	d1f9      	bne.n	800474a <_vfprintf_r+0x1932>
 8004756:	ab2a      	add	r3, sp, #168	; 0xa8
 8004758:	1a9b      	subs	r3, r3, r2
 800475a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800475e:	4413      	add	r3, r2
 8004760:	f7ff bbe3 	b.w	8003f2a <_vfprintf_r+0x1112>
 8004764:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004766:	4f49      	ldr	r7, [pc, #292]	; (800488c <_vfprintf_r+0x1a74>)
 8004768:	2b00      	cmp	r3, #0
 800476a:	bfb6      	itet	lt
 800476c:	222d      	movlt	r2, #45	; 0x2d
 800476e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8004772:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8004776:	4b46      	ldr	r3, [pc, #280]	; (8004890 <_vfprintf_r+0x1a78>)
 8004778:	f7fe bf02 	b.w	8003580 <_vfprintf_r+0x768>
 800477c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004780:	f7ff b8c9 	b.w	8003916 <_vfprintf_r+0xafe>
 8004784:	aa28      	add	r2, sp, #160	; 0xa0
 8004786:	ab25      	add	r3, sp, #148	; 0x94
 8004788:	e9cd 3200 	strd	r3, r2, [sp]
 800478c:	2103      	movs	r1, #3
 800478e:	ab24      	add	r3, sp, #144	; 0x90
 8004790:	464a      	mov	r2, r9
 8004792:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004796:	9803      	ldr	r0, [sp, #12]
 8004798:	f000 f9c6 	bl	8004b28 <_dtoa_r>
 800479c:	464d      	mov	r5, r9
 800479e:	4607      	mov	r7, r0
 80047a0:	2e46      	cmp	r6, #70	; 0x46
 80047a2:	eb07 0405 	add.w	r4, r7, r5
 80047a6:	f43f af67 	beq.w	8004678 <_vfprintf_r+0x1860>
 80047aa:	e76b      	b.n	8004684 <_vfprintf_r+0x186c>
 80047ac:	f1b9 0f00 	cmp.w	r9, #0
 80047b0:	d131      	bne.n	8004816 <_vfprintf_r+0x19fe>
 80047b2:	07c5      	lsls	r5, r0, #31
 80047b4:	d42f      	bmi.n	8004816 <_vfprintf_r+0x19fe>
 80047b6:	2301      	movs	r3, #1
 80047b8:	9304      	str	r3, [sp, #16]
 80047ba:	9309      	str	r3, [sp, #36]	; 0x24
 80047bc:	2666      	movs	r6, #102	; 0x66
 80047be:	e642      	b.n	8004446 <_vfprintf_r+0x162e>
 80047c0:	07c3      	lsls	r3, r0, #31
 80047c2:	f57f abbf 	bpl.w	8003f44 <_vfprintf_r+0x112c>
 80047c6:	f7ff bbb9 	b.w	8003f3c <_vfprintf_r+0x1124>
 80047ca:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80047cc:	f1c3 0301 	rsb	r3, r3, #1
 80047d0:	441a      	add	r2, r3
 80047d2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 80047d6:	9209      	str	r2, [sp, #36]	; 0x24
 80047d8:	9304      	str	r3, [sp, #16]
 80047da:	2667      	movs	r6, #103	; 0x67
 80047dc:	e633      	b.n	8004446 <_vfprintf_r+0x162e>
 80047de:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80047e2:	f04f 0901 	mov.w	r9, #1
 80047e6:	e457      	b.n	8004098 <_vfprintf_r+0x1280>
 80047e8:	465a      	mov	r2, fp
 80047ea:	e511      	b.n	8004210 <_vfprintf_r+0x13f8>
 80047ec:	2e47      	cmp	r6, #71	; 0x47
 80047ee:	f47f af5e 	bne.w	80046ae <_vfprintf_r+0x1896>
 80047f2:	f018 0f01 	tst.w	r8, #1
 80047f6:	f43f ab61 	beq.w	8003ebc <_vfprintf_r+0x10a4>
 80047fa:	e7d1      	b.n	80047a0 <_vfprintf_r+0x1988>
 80047fc:	2200      	movs	r2, #0
 80047fe:	2300      	movs	r3, #0
 8004800:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004804:	f7fc fc00 	bl	8001008 <__aeabi_dcmpeq>
 8004808:	2800      	cmp	r0, #0
 800480a:	f47f af39 	bne.w	8004680 <_vfprintf_r+0x1868>
 800480e:	f1c5 0501 	rsb	r5, r5, #1
 8004812:	9524      	str	r5, [sp, #144]	; 0x90
 8004814:	e735      	b.n	8004682 <_vfprintf_r+0x186a>
 8004816:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004818:	3301      	adds	r3, #1
 800481a:	444b      	add	r3, r9
 800481c:	9309      	str	r3, [sp, #36]	; 0x24
 800481e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004822:	9304      	str	r3, [sp, #16]
 8004824:	2666      	movs	r6, #102	; 0x66
 8004826:	e60e      	b.n	8004446 <_vfprintf_r+0x162e>
 8004828:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800482c:	f7ff bb7a 	b.w	8003f24 <_vfprintf_r+0x110c>
 8004830:	aa2a      	add	r2, sp, #168	; 0xa8
 8004832:	9907      	ldr	r1, [sp, #28]
 8004834:	9803      	ldr	r0, [sp, #12]
 8004836:	f002 fb5b 	bl	8006ef0 <__sprint_r>
 800483a:	2800      	cmp	r0, #0
 800483c:	f47f a864 	bne.w	8003908 <_vfprintf_r+0xaf0>
 8004840:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004844:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004848:	f7ff bbbd 	b.w	8003fc6 <_vfprintf_r+0x11ae>
 800484c:	9908      	ldr	r1, [sp, #32]
 800484e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004852:	680b      	ldr	r3, [r1, #0]
 8004854:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004858:	1d0b      	adds	r3, r1, #4
 800485a:	4692      	mov	sl, r2
 800485c:	9308      	str	r3, [sp, #32]
 800485e:	f7fe bb59 	b.w	8002f14 <_vfprintf_r+0xfc>
 8004862:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004866:	f7ff bb60 	b.w	8003f2a <_vfprintf_r+0x1112>
 800486a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800486e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004872:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004876:	f8a9 300c 	strh.w	r3, [r9, #12]
 800487a:	f7ff b84c 	b.w	8003916 <_vfprintf_r+0xafe>
 800487e:	bf00      	nop
 8004880:	08007774 	.word	0x08007774
 8004884:	08007744 	.word	0x08007744
 8004888:	cccccccd 	.word	0xcccccccd
 800488c:	0800772c 	.word	0x0800772c
 8004890:	08007728 	.word	0x08007728

08004894 <__sbprintf>:
 8004894:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004898:	460c      	mov	r4, r1
 800489a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800489e:	8989      	ldrh	r1, [r1, #12]
 80048a0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80048a2:	89e5      	ldrh	r5, [r4, #14]
 80048a4:	9619      	str	r6, [sp, #100]	; 0x64
 80048a6:	f021 0102 	bic.w	r1, r1, #2
 80048aa:	4606      	mov	r6, r0
 80048ac:	69e0      	ldr	r0, [r4, #28]
 80048ae:	f8ad 100c 	strh.w	r1, [sp, #12]
 80048b2:	4617      	mov	r7, r2
 80048b4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80048b8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80048ba:	f8ad 500e 	strh.w	r5, [sp, #14]
 80048be:	4698      	mov	r8, r3
 80048c0:	ad1a      	add	r5, sp, #104	; 0x68
 80048c2:	2300      	movs	r3, #0
 80048c4:	9007      	str	r0, [sp, #28]
 80048c6:	a816      	add	r0, sp, #88	; 0x58
 80048c8:	9209      	str	r2, [sp, #36]	; 0x24
 80048ca:	9306      	str	r3, [sp, #24]
 80048cc:	9500      	str	r5, [sp, #0]
 80048ce:	9504      	str	r5, [sp, #16]
 80048d0:	9102      	str	r1, [sp, #8]
 80048d2:	9105      	str	r1, [sp, #20]
 80048d4:	f001 fc8a 	bl	80061ec <__retarget_lock_init_recursive>
 80048d8:	4643      	mov	r3, r8
 80048da:	463a      	mov	r2, r7
 80048dc:	4669      	mov	r1, sp
 80048de:	4630      	mov	r0, r6
 80048e0:	f7fe fa9a 	bl	8002e18 <_vfprintf_r>
 80048e4:	1e05      	subs	r5, r0, #0
 80048e6:	db07      	blt.n	80048f8 <__sbprintf+0x64>
 80048e8:	4630      	mov	r0, r6
 80048ea:	4669      	mov	r1, sp
 80048ec:	f001 f8d6 	bl	8005a9c <_fflush_r>
 80048f0:	2800      	cmp	r0, #0
 80048f2:	bf18      	it	ne
 80048f4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80048f8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80048fc:	065b      	lsls	r3, r3, #25
 80048fe:	d503      	bpl.n	8004908 <__sbprintf+0x74>
 8004900:	89a3      	ldrh	r3, [r4, #12]
 8004902:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004906:	81a3      	strh	r3, [r4, #12]
 8004908:	9816      	ldr	r0, [sp, #88]	; 0x58
 800490a:	f001 fc71 	bl	80061f0 <__retarget_lock_close_recursive>
 800490e:	4628      	mov	r0, r5
 8004910:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004914:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004918 <__swsetup_r>:
 8004918:	b538      	push	{r3, r4, r5, lr}
 800491a:	4b31      	ldr	r3, [pc, #196]	; (80049e0 <__swsetup_r+0xc8>)
 800491c:	681b      	ldr	r3, [r3, #0]
 800491e:	4605      	mov	r5, r0
 8004920:	460c      	mov	r4, r1
 8004922:	b113      	cbz	r3, 800492a <__swsetup_r+0x12>
 8004924:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004926:	2a00      	cmp	r2, #0
 8004928:	d03a      	beq.n	80049a0 <__swsetup_r+0x88>
 800492a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800492e:	b293      	uxth	r3, r2
 8004930:	0718      	lsls	r0, r3, #28
 8004932:	d50c      	bpl.n	800494e <__swsetup_r+0x36>
 8004934:	6920      	ldr	r0, [r4, #16]
 8004936:	b1a8      	cbz	r0, 8004964 <__swsetup_r+0x4c>
 8004938:	f013 0201 	ands.w	r2, r3, #1
 800493c:	d020      	beq.n	8004980 <__swsetup_r+0x68>
 800493e:	6963      	ldr	r3, [r4, #20]
 8004940:	2200      	movs	r2, #0
 8004942:	425b      	negs	r3, r3
 8004944:	61a3      	str	r3, [r4, #24]
 8004946:	60a2      	str	r2, [r4, #8]
 8004948:	b300      	cbz	r0, 800498c <__swsetup_r+0x74>
 800494a:	2000      	movs	r0, #0
 800494c:	bd38      	pop	{r3, r4, r5, pc}
 800494e:	06d9      	lsls	r1, r3, #27
 8004950:	d53e      	bpl.n	80049d0 <__swsetup_r+0xb8>
 8004952:	0758      	lsls	r0, r3, #29
 8004954:	d428      	bmi.n	80049a8 <__swsetup_r+0x90>
 8004956:	6920      	ldr	r0, [r4, #16]
 8004958:	f042 0308 	orr.w	r3, r2, #8
 800495c:	81a3      	strh	r3, [r4, #12]
 800495e:	b29b      	uxth	r3, r3
 8004960:	2800      	cmp	r0, #0
 8004962:	d1e9      	bne.n	8004938 <__swsetup_r+0x20>
 8004964:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004968:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800496c:	d0e4      	beq.n	8004938 <__swsetup_r+0x20>
 800496e:	4628      	mov	r0, r5
 8004970:	4621      	mov	r1, r4
 8004972:	f001 fc71 	bl	8006258 <__smakebuf_r>
 8004976:	89a3      	ldrh	r3, [r4, #12]
 8004978:	6920      	ldr	r0, [r4, #16]
 800497a:	f013 0201 	ands.w	r2, r3, #1
 800497e:	d1de      	bne.n	800493e <__swsetup_r+0x26>
 8004980:	0799      	lsls	r1, r3, #30
 8004982:	bf58      	it	pl
 8004984:	6962      	ldrpl	r2, [r4, #20]
 8004986:	60a2      	str	r2, [r4, #8]
 8004988:	2800      	cmp	r0, #0
 800498a:	d1de      	bne.n	800494a <__swsetup_r+0x32>
 800498c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004990:	061a      	lsls	r2, r3, #24
 8004992:	d5db      	bpl.n	800494c <__swsetup_r+0x34>
 8004994:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004998:	81a3      	strh	r3, [r4, #12]
 800499a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800499e:	bd38      	pop	{r3, r4, r5, pc}
 80049a0:	4618      	mov	r0, r3
 80049a2:	f001 f8d7 	bl	8005b54 <__sinit>
 80049a6:	e7c0      	b.n	800492a <__swsetup_r+0x12>
 80049a8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80049aa:	b151      	cbz	r1, 80049c2 <__swsetup_r+0xaa>
 80049ac:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80049b0:	4299      	cmp	r1, r3
 80049b2:	d004      	beq.n	80049be <__swsetup_r+0xa6>
 80049b4:	4628      	mov	r0, r5
 80049b6:	f001 f96f 	bl	8005c98 <_free_r>
 80049ba:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80049be:	2300      	movs	r3, #0
 80049c0:	6323      	str	r3, [r4, #48]	; 0x30
 80049c2:	2300      	movs	r3, #0
 80049c4:	6920      	ldr	r0, [r4, #16]
 80049c6:	6063      	str	r3, [r4, #4]
 80049c8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80049cc:	6020      	str	r0, [r4, #0]
 80049ce:	e7c3      	b.n	8004958 <__swsetup_r+0x40>
 80049d0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80049d4:	2309      	movs	r3, #9
 80049d6:	602b      	str	r3, [r5, #0]
 80049d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80049dc:	81a2      	strh	r2, [r4, #12]
 80049de:	bd38      	pop	{r3, r4, r5, pc}
 80049e0:	200001a8 	.word	0x200001a8

080049e4 <register_fini>:
 80049e4:	4b02      	ldr	r3, [pc, #8]	; (80049f0 <register_fini+0xc>)
 80049e6:	b113      	cbz	r3, 80049ee <register_fini+0xa>
 80049e8:	4802      	ldr	r0, [pc, #8]	; (80049f4 <register_fini+0x10>)
 80049ea:	f000 b805 	b.w	80049f8 <atexit>
 80049ee:	4770      	bx	lr
 80049f0:	00000000 	.word	0x00000000
 80049f4:	08005bc5 	.word	0x08005bc5

080049f8 <atexit>:
 80049f8:	2300      	movs	r3, #0
 80049fa:	4601      	mov	r1, r0
 80049fc:	461a      	mov	r2, r3
 80049fe:	4618      	mov	r0, r3
 8004a00:	f002 ba96 	b.w	8006f30 <__register_exitproc>

08004a04 <quorem>:
 8004a04:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004a08:	6903      	ldr	r3, [r0, #16]
 8004a0a:	690f      	ldr	r7, [r1, #16]
 8004a0c:	42bb      	cmp	r3, r7
 8004a0e:	b083      	sub	sp, #12
 8004a10:	f2c0 8086 	blt.w	8004b20 <quorem+0x11c>
 8004a14:	3f01      	subs	r7, #1
 8004a16:	f101 0914 	add.w	r9, r1, #20
 8004a1a:	f100 0a14 	add.w	sl, r0, #20
 8004a1e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004a22:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004a26:	00bc      	lsls	r4, r7, #2
 8004a28:	3201      	adds	r2, #1
 8004a2a:	fbb3 f8f2 	udiv	r8, r3, r2
 8004a2e:	eb0a 0304 	add.w	r3, sl, r4
 8004a32:	9400      	str	r4, [sp, #0]
 8004a34:	eb09 0b04 	add.w	fp, r9, r4
 8004a38:	9301      	str	r3, [sp, #4]
 8004a3a:	f1b8 0f00 	cmp.w	r8, #0
 8004a3e:	d038      	beq.n	8004ab2 <quorem+0xae>
 8004a40:	2500      	movs	r5, #0
 8004a42:	462e      	mov	r6, r5
 8004a44:	46ce      	mov	lr, r9
 8004a46:	46d4      	mov	ip, sl
 8004a48:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004a4c:	f8dc 3000 	ldr.w	r3, [ip]
 8004a50:	b2a2      	uxth	r2, r4
 8004a52:	fb08 5502 	mla	r5, r8, r2, r5
 8004a56:	0c22      	lsrs	r2, r4, #16
 8004a58:	0c2c      	lsrs	r4, r5, #16
 8004a5a:	fb08 4202 	mla	r2, r8, r2, r4
 8004a5e:	b2ad      	uxth	r5, r5
 8004a60:	1b75      	subs	r5, r6, r5
 8004a62:	b296      	uxth	r6, r2
 8004a64:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004a68:	fa15 f383 	uxtah	r3, r5, r3
 8004a6c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004a70:	b29b      	uxth	r3, r3
 8004a72:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004a76:	45f3      	cmp	fp, lr
 8004a78:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8004a7c:	f84c 3b04 	str.w	r3, [ip], #4
 8004a80:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004a84:	d2e0      	bcs.n	8004a48 <quorem+0x44>
 8004a86:	9b00      	ldr	r3, [sp, #0]
 8004a88:	f85a 3003 	ldr.w	r3, [sl, r3]
 8004a8c:	b98b      	cbnz	r3, 8004ab2 <quorem+0xae>
 8004a8e:	9a01      	ldr	r2, [sp, #4]
 8004a90:	1f13      	subs	r3, r2, #4
 8004a92:	459a      	cmp	sl, r3
 8004a94:	d20c      	bcs.n	8004ab0 <quorem+0xac>
 8004a96:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8004a9a:	b94b      	cbnz	r3, 8004ab0 <quorem+0xac>
 8004a9c:	f1a2 0308 	sub.w	r3, r2, #8
 8004aa0:	e002      	b.n	8004aa8 <quorem+0xa4>
 8004aa2:	681a      	ldr	r2, [r3, #0]
 8004aa4:	3b04      	subs	r3, #4
 8004aa6:	b91a      	cbnz	r2, 8004ab0 <quorem+0xac>
 8004aa8:	459a      	cmp	sl, r3
 8004aaa:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004aae:	d3f8      	bcc.n	8004aa2 <quorem+0x9e>
 8004ab0:	6107      	str	r7, [r0, #16]
 8004ab2:	4604      	mov	r4, r0
 8004ab4:	f001 fe94 	bl	80067e0 <__mcmp>
 8004ab8:	2800      	cmp	r0, #0
 8004aba:	db2d      	blt.n	8004b18 <quorem+0x114>
 8004abc:	f108 0801 	add.w	r8, r8, #1
 8004ac0:	4655      	mov	r5, sl
 8004ac2:	2300      	movs	r3, #0
 8004ac4:	f859 1b04 	ldr.w	r1, [r9], #4
 8004ac8:	6828      	ldr	r0, [r5, #0]
 8004aca:	b28a      	uxth	r2, r1
 8004acc:	1a9a      	subs	r2, r3, r2
 8004ace:	0c0b      	lsrs	r3, r1, #16
 8004ad0:	fa12 f280 	uxtah	r2, r2, r0
 8004ad4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004ad8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004adc:	b292      	uxth	r2, r2
 8004ade:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004ae2:	45cb      	cmp	fp, r9
 8004ae4:	f845 2b04 	str.w	r2, [r5], #4
 8004ae8:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004aec:	d2ea      	bcs.n	8004ac4 <quorem+0xc0>
 8004aee:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004af2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004af6:	b97a      	cbnz	r2, 8004b18 <quorem+0x114>
 8004af8:	1f1a      	subs	r2, r3, #4
 8004afa:	4592      	cmp	sl, r2
 8004afc:	d20b      	bcs.n	8004b16 <quorem+0x112>
 8004afe:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004b02:	b942      	cbnz	r2, 8004b16 <quorem+0x112>
 8004b04:	3b08      	subs	r3, #8
 8004b06:	e002      	b.n	8004b0e <quorem+0x10a>
 8004b08:	681a      	ldr	r2, [r3, #0]
 8004b0a:	3b04      	subs	r3, #4
 8004b0c:	b91a      	cbnz	r2, 8004b16 <quorem+0x112>
 8004b0e:	459a      	cmp	sl, r3
 8004b10:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004b14:	d3f8      	bcc.n	8004b08 <quorem+0x104>
 8004b16:	6127      	str	r7, [r4, #16]
 8004b18:	4640      	mov	r0, r8
 8004b1a:	b003      	add	sp, #12
 8004b1c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004b20:	2000      	movs	r0, #0
 8004b22:	b003      	add	sp, #12
 8004b24:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004b28 <_dtoa_r>:
 8004b28:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004b2c:	ec55 4b10 	vmov	r4, r5, d0
 8004b30:	b09b      	sub	sp, #108	; 0x6c
 8004b32:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004b34:	9102      	str	r1, [sp, #8]
 8004b36:	4681      	mov	r9, r0
 8004b38:	9207      	str	r2, [sp, #28]
 8004b3a:	9305      	str	r3, [sp, #20]
 8004b3c:	e9cd 4500 	strd	r4, r5, [sp]
 8004b40:	b156      	cbz	r6, 8004b58 <_dtoa_r+0x30>
 8004b42:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004b44:	6072      	str	r2, [r6, #4]
 8004b46:	2301      	movs	r3, #1
 8004b48:	4093      	lsls	r3, r2
 8004b4a:	60b3      	str	r3, [r6, #8]
 8004b4c:	4631      	mov	r1, r6
 8004b4e:	f001 fc57 	bl	8006400 <_Bfree>
 8004b52:	2300      	movs	r3, #0
 8004b54:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004b58:	f1b5 0800 	subs.w	r8, r5, #0
 8004b5c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004b5e:	bfb4      	ite	lt
 8004b60:	2301      	movlt	r3, #1
 8004b62:	2300      	movge	r3, #0
 8004b64:	6013      	str	r3, [r2, #0]
 8004b66:	4b76      	ldr	r3, [pc, #472]	; (8004d40 <_dtoa_r+0x218>)
 8004b68:	bfbc      	itt	lt
 8004b6a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8004b6e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004b72:	ea33 0308 	bics.w	r3, r3, r8
 8004b76:	f000 80a6 	beq.w	8004cc6 <_dtoa_r+0x19e>
 8004b7a:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004b7e:	2200      	movs	r2, #0
 8004b80:	2300      	movs	r3, #0
 8004b82:	4630      	mov	r0, r6
 8004b84:	4639      	mov	r1, r7
 8004b86:	f7fc fa3f 	bl	8001008 <__aeabi_dcmpeq>
 8004b8a:	4605      	mov	r5, r0
 8004b8c:	b178      	cbz	r0, 8004bae <_dtoa_r+0x86>
 8004b8e:	9a05      	ldr	r2, [sp, #20]
 8004b90:	2301      	movs	r3, #1
 8004b92:	6013      	str	r3, [r2, #0]
 8004b94:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004b96:	2b00      	cmp	r3, #0
 8004b98:	f000 80c0 	beq.w	8004d1c <_dtoa_r+0x1f4>
 8004b9c:	4b69      	ldr	r3, [pc, #420]	; (8004d44 <_dtoa_r+0x21c>)
 8004b9e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004ba0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004ba4:	6013      	str	r3, [r2, #0]
 8004ba6:	4658      	mov	r0, fp
 8004ba8:	b01b      	add	sp, #108	; 0x6c
 8004baa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004bae:	aa18      	add	r2, sp, #96	; 0x60
 8004bb0:	a919      	add	r1, sp, #100	; 0x64
 8004bb2:	ec47 6b10 	vmov	d0, r6, r7
 8004bb6:	4648      	mov	r0, r9
 8004bb8:	f001 fea4 	bl	8006904 <__d2b>
 8004bbc:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004bc0:	4682      	mov	sl, r0
 8004bc2:	f040 80a0 	bne.w	8004d06 <_dtoa_r+0x1de>
 8004bc6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004bca:	442c      	add	r4, r5
 8004bcc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004bd0:	2b20      	cmp	r3, #32
 8004bd2:	f340 842c 	ble.w	800542e <_dtoa_r+0x906>
 8004bd6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004bda:	fa08 f803 	lsl.w	r8, r8, r3
 8004bde:	9b00      	ldr	r3, [sp, #0]
 8004be0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004be4:	fa23 f000 	lsr.w	r0, r3, r0
 8004be8:	ea48 0000 	orr.w	r0, r8, r0
 8004bec:	f7fb ff2a 	bl	8000a44 <__aeabi_ui2d>
 8004bf0:	2301      	movs	r3, #1
 8004bf2:	4606      	mov	r6, r0
 8004bf4:	3c01      	subs	r4, #1
 8004bf6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004bfa:	930f      	str	r3, [sp, #60]	; 0x3c
 8004bfc:	4630      	mov	r0, r6
 8004bfe:	4639      	mov	r1, r7
 8004c00:	2200      	movs	r2, #0
 8004c02:	4b51      	ldr	r3, [pc, #324]	; (8004d48 <_dtoa_r+0x220>)
 8004c04:	f7fb fde0 	bl	80007c8 <__aeabi_dsub>
 8004c08:	a347      	add	r3, pc, #284	; (adr r3, 8004d28 <_dtoa_r+0x200>)
 8004c0a:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c0e:	f7fb ff93 	bl	8000b38 <__aeabi_dmul>
 8004c12:	a347      	add	r3, pc, #284	; (adr r3, 8004d30 <_dtoa_r+0x208>)
 8004c14:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c18:	f7fb fdd8 	bl	80007cc <__adddf3>
 8004c1c:	4606      	mov	r6, r0
 8004c1e:	4620      	mov	r0, r4
 8004c20:	460f      	mov	r7, r1
 8004c22:	f7fb ff1f 	bl	8000a64 <__aeabi_i2d>
 8004c26:	a344      	add	r3, pc, #272	; (adr r3, 8004d38 <_dtoa_r+0x210>)
 8004c28:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c2c:	f7fb ff84 	bl	8000b38 <__aeabi_dmul>
 8004c30:	4602      	mov	r2, r0
 8004c32:	460b      	mov	r3, r1
 8004c34:	4630      	mov	r0, r6
 8004c36:	4639      	mov	r1, r7
 8004c38:	f7fb fdc8 	bl	80007cc <__adddf3>
 8004c3c:	4606      	mov	r6, r0
 8004c3e:	460f      	mov	r7, r1
 8004c40:	f7fc fa2a 	bl	8001098 <__aeabi_d2iz>
 8004c44:	2200      	movs	r2, #0
 8004c46:	9006      	str	r0, [sp, #24]
 8004c48:	2300      	movs	r3, #0
 8004c4a:	4630      	mov	r0, r6
 8004c4c:	4639      	mov	r1, r7
 8004c4e:	f7fc f9e5 	bl	800101c <__aeabi_dcmplt>
 8004c52:	2800      	cmp	r0, #0
 8004c54:	f040 8273 	bne.w	800513e <_dtoa_r+0x616>
 8004c58:	9e06      	ldr	r6, [sp, #24]
 8004c5a:	2e16      	cmp	r6, #22
 8004c5c:	f200 825d 	bhi.w	800511a <_dtoa_r+0x5f2>
 8004c60:	4b3a      	ldr	r3, [pc, #232]	; (8004d4c <_dtoa_r+0x224>)
 8004c62:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004c66:	e9d3 0100 	ldrd	r0, r1, [r3]
 8004c6a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004c6e:	f7fc f9f3 	bl	8001058 <__aeabi_dcmpgt>
 8004c72:	2800      	cmp	r0, #0
 8004c74:	f000 83d7 	beq.w	8005426 <_dtoa_r+0x8fe>
 8004c78:	1e73      	subs	r3, r6, #1
 8004c7a:	9306      	str	r3, [sp, #24]
 8004c7c:	2300      	movs	r3, #0
 8004c7e:	930d      	str	r3, [sp, #52]	; 0x34
 8004c80:	1b2c      	subs	r4, r5, r4
 8004c82:	f1b4 0801 	subs.w	r8, r4, #1
 8004c86:	f100 8254 	bmi.w	8005132 <_dtoa_r+0x60a>
 8004c8a:	2300      	movs	r3, #0
 8004c8c:	9308      	str	r3, [sp, #32]
 8004c8e:	9b06      	ldr	r3, [sp, #24]
 8004c90:	2b00      	cmp	r3, #0
 8004c92:	f2c0 8245 	blt.w	8005120 <_dtoa_r+0x5f8>
 8004c96:	4498      	add	r8, r3
 8004c98:	930c      	str	r3, [sp, #48]	; 0x30
 8004c9a:	2300      	movs	r3, #0
 8004c9c:	930b      	str	r3, [sp, #44]	; 0x2c
 8004c9e:	9b02      	ldr	r3, [sp, #8]
 8004ca0:	2b09      	cmp	r3, #9
 8004ca2:	d85b      	bhi.n	8004d5c <_dtoa_r+0x234>
 8004ca4:	2b05      	cmp	r3, #5
 8004ca6:	f340 83c0 	ble.w	800542a <_dtoa_r+0x902>
 8004caa:	3b04      	subs	r3, #4
 8004cac:	9302      	str	r3, [sp, #8]
 8004cae:	2500      	movs	r5, #0
 8004cb0:	9b02      	ldr	r3, [sp, #8]
 8004cb2:	3b02      	subs	r3, #2
 8004cb4:	2b03      	cmp	r3, #3
 8004cb6:	f200 8498 	bhi.w	80055ea <_dtoa_r+0xac2>
 8004cba:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004cbe:	03df      	.short	0x03df
 8004cc0:	03e803bf 	.word	0x03e803bf
 8004cc4:	04f5      	.short	0x04f5
 8004cc6:	9a05      	ldr	r2, [sp, #20]
 8004cc8:	f242 730f 	movw	r3, #9999	; 0x270f
 8004ccc:	6013      	str	r3, [r2, #0]
 8004cce:	9b00      	ldr	r3, [sp, #0]
 8004cd0:	b983      	cbnz	r3, 8004cf4 <_dtoa_r+0x1cc>
 8004cd2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004cd6:	b96b      	cbnz	r3, 8004cf4 <_dtoa_r+0x1cc>
 8004cd8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004cda:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004d50 <_dtoa_r+0x228>
 8004cde:	2b00      	cmp	r3, #0
 8004ce0:	f43f af61 	beq.w	8004ba6 <_dtoa_r+0x7e>
 8004ce4:	f10b 0308 	add.w	r3, fp, #8
 8004ce8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004cea:	4658      	mov	r0, fp
 8004cec:	6013      	str	r3, [r2, #0]
 8004cee:	b01b      	add	sp, #108	; 0x6c
 8004cf0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004cf4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004cf6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004d54 <_dtoa_r+0x22c>
 8004cfa:	2b00      	cmp	r3, #0
 8004cfc:	f43f af53 	beq.w	8004ba6 <_dtoa_r+0x7e>
 8004d00:	f10b 0303 	add.w	r3, fp, #3
 8004d04:	e7f0      	b.n	8004ce8 <_dtoa_r+0x1c0>
 8004d06:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004d0a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004d0e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004d10:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004d14:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004d18:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004d1a:	e76f      	b.n	8004bfc <_dtoa_r+0xd4>
 8004d1c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004d58 <_dtoa_r+0x230>
 8004d20:	4658      	mov	r0, fp
 8004d22:	b01b      	add	sp, #108	; 0x6c
 8004d24:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004d28:	636f4361 	.word	0x636f4361
 8004d2c:	3fd287a7 	.word	0x3fd287a7
 8004d30:	8b60c8b3 	.word	0x8b60c8b3
 8004d34:	3fc68a28 	.word	0x3fc68a28
 8004d38:	509f79fb 	.word	0x509f79fb
 8004d3c:	3fd34413 	.word	0x3fd34413
 8004d40:	7ff00000 	.word	0x7ff00000
 8004d44:	08007761 	.word	0x08007761
 8004d48:	3ff80000 	.word	0x3ff80000
 8004d4c:	080077c0 	.word	0x080077c0
 8004d50:	08007784 	.word	0x08007784
 8004d54:	08007790 	.word	0x08007790
 8004d58:	08007760 	.word	0x08007760
 8004d5c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004d60:	2501      	movs	r5, #1
 8004d62:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004d66:	2300      	movs	r3, #0
 8004d68:	9302      	str	r3, [sp, #8]
 8004d6a:	9307      	str	r3, [sp, #28]
 8004d6c:	2100      	movs	r1, #0
 8004d6e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004d72:	940e      	str	r4, [sp, #56]	; 0x38
 8004d74:	4648      	mov	r0, r9
 8004d76:	f001 fb1d 	bl	80063b4 <_Balloc>
 8004d7a:	2c0e      	cmp	r4, #14
 8004d7c:	4683      	mov	fp, r0
 8004d7e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004d82:	f200 80fb 	bhi.w	8004f7c <_dtoa_r+0x454>
 8004d86:	2d00      	cmp	r5, #0
 8004d88:	f000 80f8 	beq.w	8004f7c <_dtoa_r+0x454>
 8004d8c:	ed9d 7b00 	vldr	d7, [sp]
 8004d90:	9906      	ldr	r1, [sp, #24]
 8004d92:	2900      	cmp	r1, #0
 8004d94:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004d98:	f340 83e5 	ble.w	8005566 <_dtoa_r+0xa3e>
 8004d9c:	4b9d      	ldr	r3, [pc, #628]	; (8005014 <_dtoa_r+0x4ec>)
 8004d9e:	f001 020f 	and.w	r2, r1, #15
 8004da2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004da6:	ed93 7b00 	vldr	d7, [r3]
 8004daa:	110c      	asrs	r4, r1, #4
 8004dac:	06e2      	lsls	r2, r4, #27
 8004dae:	ed8d 7b00 	vstr	d7, [sp]
 8004db2:	f140 849e 	bpl.w	80056f2 <_dtoa_r+0xbca>
 8004db6:	4b98      	ldr	r3, [pc, #608]	; (8005018 <_dtoa_r+0x4f0>)
 8004db8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004dbc:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004dc0:	f7fb ffe4 	bl	8000d8c <__aeabi_ddiv>
 8004dc4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004dc8:	f004 040f 	and.w	r4, r4, #15
 8004dcc:	2603      	movs	r6, #3
 8004dce:	b17c      	cbz	r4, 8004df0 <_dtoa_r+0x2c8>
 8004dd0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004dd4:	4d90      	ldr	r5, [pc, #576]	; (8005018 <_dtoa_r+0x4f0>)
 8004dd6:	07e3      	lsls	r3, r4, #31
 8004dd8:	d504      	bpl.n	8004de4 <_dtoa_r+0x2bc>
 8004dda:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004dde:	f7fb feab 	bl	8000b38 <__aeabi_dmul>
 8004de2:	3601      	adds	r6, #1
 8004de4:	1064      	asrs	r4, r4, #1
 8004de6:	f105 0508 	add.w	r5, r5, #8
 8004dea:	d1f4      	bne.n	8004dd6 <_dtoa_r+0x2ae>
 8004dec:	e9cd 0100 	strd	r0, r1, [sp]
 8004df0:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004df4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004df8:	f7fb ffc8 	bl	8000d8c <__aeabi_ddiv>
 8004dfc:	e9cd 0100 	strd	r0, r1, [sp]
 8004e00:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004e02:	b143      	cbz	r3, 8004e16 <_dtoa_r+0x2ee>
 8004e04:	2200      	movs	r2, #0
 8004e06:	4b85      	ldr	r3, [pc, #532]	; (800501c <_dtoa_r+0x4f4>)
 8004e08:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e0c:	f7fc f906 	bl	800101c <__aeabi_dcmplt>
 8004e10:	2800      	cmp	r0, #0
 8004e12:	f040 84ff 	bne.w	8005814 <_dtoa_r+0xcec>
 8004e16:	4630      	mov	r0, r6
 8004e18:	f7fb fe24 	bl	8000a64 <__aeabi_i2d>
 8004e1c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e20:	f7fb fe8a 	bl	8000b38 <__aeabi_dmul>
 8004e24:	4b7e      	ldr	r3, [pc, #504]	; (8005020 <_dtoa_r+0x4f8>)
 8004e26:	2200      	movs	r2, #0
 8004e28:	f7fb fcd0 	bl	80007cc <__adddf3>
 8004e2c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e2e:	4606      	mov	r6, r0
 8004e30:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004e34:	2b00      	cmp	r3, #0
 8004e36:	f000 841c 	beq.w	8005672 <_dtoa_r+0xb4a>
 8004e3a:	9b06      	ldr	r3, [sp, #24]
 8004e3c:	9316      	str	r3, [sp, #88]	; 0x58
 8004e3e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e40:	9312      	str	r3, [sp, #72]	; 0x48
 8004e42:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e46:	f7fc f927 	bl	8001098 <__aeabi_d2iz>
 8004e4a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004e4c:	4b71      	ldr	r3, [pc, #452]	; (8005014 <_dtoa_r+0x4ec>)
 8004e4e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004e52:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004e56:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004e5a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004e5e:	f7fb fe01 	bl	8000a64 <__aeabi_i2d>
 8004e62:	460b      	mov	r3, r1
 8004e64:	4602      	mov	r2, r0
 8004e66:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e6a:	e9cd 6700 	strd	r6, r7, [sp]
 8004e6e:	f7fb fcab 	bl	80007c8 <__aeabi_dsub>
 8004e72:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004e74:	b2ed      	uxtb	r5, r5
 8004e76:	4606      	mov	r6, r0
 8004e78:	460f      	mov	r7, r1
 8004e7a:	f10b 0401 	add.w	r4, fp, #1
 8004e7e:	2b00      	cmp	r3, #0
 8004e80:	f000 8458 	beq.w	8005734 <_dtoa_r+0xc0c>
 8004e84:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004e88:	2000      	movs	r0, #0
 8004e8a:	4966      	ldr	r1, [pc, #408]	; (8005024 <_dtoa_r+0x4fc>)
 8004e8c:	f7fb ff7e 	bl	8000d8c <__aeabi_ddiv>
 8004e90:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e94:	f7fb fc98 	bl	80007c8 <__aeabi_dsub>
 8004e98:	f88b 5000 	strb.w	r5, [fp]
 8004e9c:	4632      	mov	r2, r6
 8004e9e:	463b      	mov	r3, r7
 8004ea0:	e9cd 0100 	strd	r0, r1, [sp]
 8004ea4:	f7fc f8d8 	bl	8001058 <__aeabi_dcmpgt>
 8004ea8:	2800      	cmp	r0, #0
 8004eaa:	f040 8502 	bne.w	80058b2 <_dtoa_r+0xd8a>
 8004eae:	4632      	mov	r2, r6
 8004eb0:	463b      	mov	r3, r7
 8004eb2:	2000      	movs	r0, #0
 8004eb4:	4959      	ldr	r1, [pc, #356]	; (800501c <_dtoa_r+0x4f4>)
 8004eb6:	f7fb fc87 	bl	80007c8 <__aeabi_dsub>
 8004eba:	4602      	mov	r2, r0
 8004ebc:	460b      	mov	r3, r1
 8004ebe:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004ec2:	f7fc f8c9 	bl	8001058 <__aeabi_dcmpgt>
 8004ec6:	2800      	cmp	r0, #0
 8004ec8:	f040 84fb 	bne.w	80058c2 <_dtoa_r+0xd9a>
 8004ecc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004ece:	2a01      	cmp	r2, #1
 8004ed0:	d050      	beq.n	8004f74 <_dtoa_r+0x44c>
 8004ed2:	445a      	add	r2, fp
 8004ed4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004ed8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004edc:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004ee0:	4692      	mov	sl, r2
 8004ee2:	46cb      	mov	fp, r9
 8004ee4:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004ee8:	e00c      	b.n	8004f04 <_dtoa_r+0x3dc>
 8004eea:	2000      	movs	r0, #0
 8004eec:	494b      	ldr	r1, [pc, #300]	; (800501c <_dtoa_r+0x4f4>)
 8004eee:	f7fb fc6b 	bl	80007c8 <__aeabi_dsub>
 8004ef2:	4642      	mov	r2, r8
 8004ef4:	464b      	mov	r3, r9
 8004ef6:	f7fc f891 	bl	800101c <__aeabi_dcmplt>
 8004efa:	2800      	cmp	r0, #0
 8004efc:	f040 84dc 	bne.w	80058b8 <_dtoa_r+0xd90>
 8004f00:	4554      	cmp	r4, sl
 8004f02:	d030      	beq.n	8004f66 <_dtoa_r+0x43e>
 8004f04:	4640      	mov	r0, r8
 8004f06:	4649      	mov	r1, r9
 8004f08:	2200      	movs	r2, #0
 8004f0a:	4b47      	ldr	r3, [pc, #284]	; (8005028 <_dtoa_r+0x500>)
 8004f0c:	f7fb fe14 	bl	8000b38 <__aeabi_dmul>
 8004f10:	2200      	movs	r2, #0
 8004f12:	4b45      	ldr	r3, [pc, #276]	; (8005028 <_dtoa_r+0x500>)
 8004f14:	4680      	mov	r8, r0
 8004f16:	4689      	mov	r9, r1
 8004f18:	4630      	mov	r0, r6
 8004f1a:	4639      	mov	r1, r7
 8004f1c:	f7fb fe0c 	bl	8000b38 <__aeabi_dmul>
 8004f20:	460f      	mov	r7, r1
 8004f22:	4606      	mov	r6, r0
 8004f24:	f7fc f8b8 	bl	8001098 <__aeabi_d2iz>
 8004f28:	4605      	mov	r5, r0
 8004f2a:	f7fb fd9b 	bl	8000a64 <__aeabi_i2d>
 8004f2e:	4602      	mov	r2, r0
 8004f30:	460b      	mov	r3, r1
 8004f32:	4630      	mov	r0, r6
 8004f34:	4639      	mov	r1, r7
 8004f36:	f7fb fc47 	bl	80007c8 <__aeabi_dsub>
 8004f3a:	3530      	adds	r5, #48	; 0x30
 8004f3c:	b2ed      	uxtb	r5, r5
 8004f3e:	4642      	mov	r2, r8
 8004f40:	464b      	mov	r3, r9
 8004f42:	f804 5b01 	strb.w	r5, [r4], #1
 8004f46:	4606      	mov	r6, r0
 8004f48:	460f      	mov	r7, r1
 8004f4a:	f7fc f867 	bl	800101c <__aeabi_dcmplt>
 8004f4e:	4632      	mov	r2, r6
 8004f50:	463b      	mov	r3, r7
 8004f52:	2800      	cmp	r0, #0
 8004f54:	d0c9      	beq.n	8004eea <_dtoa_r+0x3c2>
 8004f56:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004f58:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004f5c:	9306      	str	r3, [sp, #24]
 8004f5e:	46d9      	mov	r9, fp
 8004f60:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004f64:	e236      	b.n	80053d4 <_dtoa_r+0x8ac>
 8004f66:	46d9      	mov	r9, fp
 8004f68:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004f6c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004f70:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004f74:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004f78:	e9cd 3400 	strd	r3, r4, [sp]
 8004f7c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004f7e:	2b00      	cmp	r3, #0
 8004f80:	f2c0 80ae 	blt.w	80050e0 <_dtoa_r+0x5b8>
 8004f84:	9a06      	ldr	r2, [sp, #24]
 8004f86:	2a0e      	cmp	r2, #14
 8004f88:	f300 80aa 	bgt.w	80050e0 <_dtoa_r+0x5b8>
 8004f8c:	4b21      	ldr	r3, [pc, #132]	; (8005014 <_dtoa_r+0x4ec>)
 8004f8e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004f92:	ed93 7b00 	vldr	d7, [r3]
 8004f96:	9b07      	ldr	r3, [sp, #28]
 8004f98:	2b00      	cmp	r3, #0
 8004f9a:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004f9e:	f2c0 82be 	blt.w	800551e <_dtoa_r+0x9f6>
 8004fa2:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004fa6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004faa:	4630      	mov	r0, r6
 8004fac:	4639      	mov	r1, r7
 8004fae:	f7fb feed 	bl	8000d8c <__aeabi_ddiv>
 8004fb2:	f7fc f871 	bl	8001098 <__aeabi_d2iz>
 8004fb6:	4605      	mov	r5, r0
 8004fb8:	f7fb fd54 	bl	8000a64 <__aeabi_i2d>
 8004fbc:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004fc0:	f7fb fdba 	bl	8000b38 <__aeabi_dmul>
 8004fc4:	460b      	mov	r3, r1
 8004fc6:	4602      	mov	r2, r0
 8004fc8:	4639      	mov	r1, r7
 8004fca:	4630      	mov	r0, r6
 8004fcc:	f7fb fbfc 	bl	80007c8 <__aeabi_dsub>
 8004fd0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004fd4:	f88b 3000 	strb.w	r3, [fp]
 8004fd8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004fda:	2b01      	cmp	r3, #1
 8004fdc:	4606      	mov	r6, r0
 8004fde:	460f      	mov	r7, r1
 8004fe0:	f10b 0401 	add.w	r4, fp, #1
 8004fe4:	d053      	beq.n	800508e <_dtoa_r+0x566>
 8004fe6:	2200      	movs	r2, #0
 8004fe8:	4b0f      	ldr	r3, [pc, #60]	; (8005028 <_dtoa_r+0x500>)
 8004fea:	f7fb fda5 	bl	8000b38 <__aeabi_dmul>
 8004fee:	2200      	movs	r2, #0
 8004ff0:	2300      	movs	r3, #0
 8004ff2:	4606      	mov	r6, r0
 8004ff4:	460f      	mov	r7, r1
 8004ff6:	f7fc f807 	bl	8001008 <__aeabi_dcmpeq>
 8004ffa:	2800      	cmp	r0, #0
 8004ffc:	f040 81ea 	bne.w	80053d4 <_dtoa_r+0x8ac>
 8005000:	f8cd a000 	str.w	sl, [sp]
 8005004:	f8cd 901c 	str.w	r9, [sp, #28]
 8005008:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800500c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8005010:	e017      	b.n	8005042 <_dtoa_r+0x51a>
 8005012:	bf00      	nop
 8005014:	080077c0 	.word	0x080077c0
 8005018:	08007798 	.word	0x08007798
 800501c:	3ff00000 	.word	0x3ff00000
 8005020:	401c0000 	.word	0x401c0000
 8005024:	3fe00000 	.word	0x3fe00000
 8005028:	40240000 	.word	0x40240000
 800502c:	f7fb fd84 	bl	8000b38 <__aeabi_dmul>
 8005030:	2200      	movs	r2, #0
 8005032:	2300      	movs	r3, #0
 8005034:	4606      	mov	r6, r0
 8005036:	460f      	mov	r7, r1
 8005038:	f7fb ffe6 	bl	8001008 <__aeabi_dcmpeq>
 800503c:	2800      	cmp	r0, #0
 800503e:	f040 833d 	bne.w	80056bc <_dtoa_r+0xb94>
 8005042:	464a      	mov	r2, r9
 8005044:	4653      	mov	r3, sl
 8005046:	4630      	mov	r0, r6
 8005048:	4639      	mov	r1, r7
 800504a:	f7fb fe9f 	bl	8000d8c <__aeabi_ddiv>
 800504e:	f7fc f823 	bl	8001098 <__aeabi_d2iz>
 8005052:	4605      	mov	r5, r0
 8005054:	f7fb fd06 	bl	8000a64 <__aeabi_i2d>
 8005058:	464a      	mov	r2, r9
 800505a:	4653      	mov	r3, sl
 800505c:	f7fb fd6c 	bl	8000b38 <__aeabi_dmul>
 8005060:	4602      	mov	r2, r0
 8005062:	460b      	mov	r3, r1
 8005064:	4630      	mov	r0, r6
 8005066:	4639      	mov	r1, r7
 8005068:	f7fb fbae 	bl	80007c8 <__aeabi_dsub>
 800506c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8005070:	f804 cb01 	strb.w	ip, [r4], #1
 8005074:	eba4 0c0b 	sub.w	ip, r4, fp
 8005078:	45e0      	cmp	r8, ip
 800507a:	4606      	mov	r6, r0
 800507c:	460f      	mov	r7, r1
 800507e:	f04f 0200 	mov.w	r2, #0
 8005082:	4bc1      	ldr	r3, [pc, #772]	; (8005388 <_dtoa_r+0x860>)
 8005084:	d1d2      	bne.n	800502c <_dtoa_r+0x504>
 8005086:	f8dd a000 	ldr.w	sl, [sp]
 800508a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800508e:	4632      	mov	r2, r6
 8005090:	463b      	mov	r3, r7
 8005092:	4630      	mov	r0, r6
 8005094:	4639      	mov	r1, r7
 8005096:	f7fb fb99 	bl	80007cc <__adddf3>
 800509a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800509e:	4606      	mov	r6, r0
 80050a0:	460f      	mov	r7, r1
 80050a2:	f7fb ffd9 	bl	8001058 <__aeabi_dcmpgt>
 80050a6:	b958      	cbnz	r0, 80050c0 <_dtoa_r+0x598>
 80050a8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80050ac:	4630      	mov	r0, r6
 80050ae:	4639      	mov	r1, r7
 80050b0:	f7fb ffaa 	bl	8001008 <__aeabi_dcmpeq>
 80050b4:	2800      	cmp	r0, #0
 80050b6:	f000 818d 	beq.w	80053d4 <_dtoa_r+0x8ac>
 80050ba:	07e9      	lsls	r1, r5, #31
 80050bc:	f140 818a 	bpl.w	80053d4 <_dtoa_r+0x8ac>
 80050c0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80050c4:	e005      	b.n	80050d2 <_dtoa_r+0x5aa>
 80050c6:	459b      	cmp	fp, r3
 80050c8:	f000 8373 	beq.w	80057b2 <_dtoa_r+0xc8a>
 80050cc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 80050d0:	461c      	mov	r4, r3
 80050d2:	2d39      	cmp	r5, #57	; 0x39
 80050d4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80050d8:	d0f5      	beq.n	80050c6 <_dtoa_r+0x59e>
 80050da:	3501      	adds	r5, #1
 80050dc:	701d      	strb	r5, [r3, #0]
 80050de:	e179      	b.n	80053d4 <_dtoa_r+0x8ac>
 80050e0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80050e2:	2a00      	cmp	r2, #0
 80050e4:	d03b      	beq.n	800515e <_dtoa_r+0x636>
 80050e6:	9a02      	ldr	r2, [sp, #8]
 80050e8:	2a01      	cmp	r2, #1
 80050ea:	f340 820b 	ble.w	8005504 <_dtoa_r+0x9dc>
 80050ee:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80050f0:	1e5f      	subs	r7, r3, #1
 80050f2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80050f4:	42bb      	cmp	r3, r7
 80050f6:	f2c0 82e6 	blt.w	80056c6 <_dtoa_r+0xb9e>
 80050fa:	1bdf      	subs	r7, r3, r7
 80050fc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80050fe:	2b00      	cmp	r3, #0
 8005100:	f2c0 830b 	blt.w	800571a <_dtoa_r+0xbf2>
 8005104:	9a08      	ldr	r2, [sp, #32]
 8005106:	4614      	mov	r4, r2
 8005108:	441a      	add	r2, r3
 800510a:	4498      	add	r8, r3
 800510c:	9208      	str	r2, [sp, #32]
 800510e:	2101      	movs	r1, #1
 8005110:	4648      	mov	r0, r9
 8005112:	f001 fa0f 	bl	8006534 <__i2b>
 8005116:	4605      	mov	r5, r0
 8005118:	e024      	b.n	8005164 <_dtoa_r+0x63c>
 800511a:	2301      	movs	r3, #1
 800511c:	930d      	str	r3, [sp, #52]	; 0x34
 800511e:	e5af      	b.n	8004c80 <_dtoa_r+0x158>
 8005120:	9a08      	ldr	r2, [sp, #32]
 8005122:	9b06      	ldr	r3, [sp, #24]
 8005124:	1ad2      	subs	r2, r2, r3
 8005126:	425b      	negs	r3, r3
 8005128:	930b      	str	r3, [sp, #44]	; 0x2c
 800512a:	2300      	movs	r3, #0
 800512c:	9208      	str	r2, [sp, #32]
 800512e:	930c      	str	r3, [sp, #48]	; 0x30
 8005130:	e5b5      	b.n	8004c9e <_dtoa_r+0x176>
 8005132:	f1c4 0301 	rsb	r3, r4, #1
 8005136:	9308      	str	r3, [sp, #32]
 8005138:	f04f 0800 	mov.w	r8, #0
 800513c:	e5a7      	b.n	8004c8e <_dtoa_r+0x166>
 800513e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8005142:	4640      	mov	r0, r8
 8005144:	f7fb fc8e 	bl	8000a64 <__aeabi_i2d>
 8005148:	4632      	mov	r2, r6
 800514a:	463b      	mov	r3, r7
 800514c:	f7fb ff5c 	bl	8001008 <__aeabi_dcmpeq>
 8005150:	2800      	cmp	r0, #0
 8005152:	f47f ad81 	bne.w	8004c58 <_dtoa_r+0x130>
 8005156:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800515a:	9306      	str	r3, [sp, #24]
 800515c:	e57c      	b.n	8004c58 <_dtoa_r+0x130>
 800515e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005160:	9c08      	ldr	r4, [sp, #32]
 8005162:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8005164:	2c00      	cmp	r4, #0
 8005166:	dd0c      	ble.n	8005182 <_dtoa_r+0x65a>
 8005168:	f1b8 0f00 	cmp.w	r8, #0
 800516c:	dd09      	ble.n	8005182 <_dtoa_r+0x65a>
 800516e:	4544      	cmp	r4, r8
 8005170:	9a08      	ldr	r2, [sp, #32]
 8005172:	4623      	mov	r3, r4
 8005174:	bfa8      	it	ge
 8005176:	4643      	movge	r3, r8
 8005178:	1ad2      	subs	r2, r2, r3
 800517a:	9208      	str	r2, [sp, #32]
 800517c:	1ae4      	subs	r4, r4, r3
 800517e:	eba8 0803 	sub.w	r8, r8, r3
 8005182:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005184:	b16b      	cbz	r3, 80051a2 <_dtoa_r+0x67a>
 8005186:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005188:	2a00      	cmp	r2, #0
 800518a:	f000 8290 	beq.w	80056ae <_dtoa_r+0xb86>
 800518e:	1bde      	subs	r6, r3, r7
 8005190:	2f00      	cmp	r7, #0
 8005192:	f040 819b 	bne.w	80054cc <_dtoa_r+0x9a4>
 8005196:	4651      	mov	r1, sl
 8005198:	4632      	mov	r2, r6
 800519a:	4648      	mov	r0, r9
 800519c:	f001 fa7a 	bl	8006694 <__pow5mult>
 80051a0:	4682      	mov	sl, r0
 80051a2:	2101      	movs	r1, #1
 80051a4:	4648      	mov	r0, r9
 80051a6:	f001 f9c5 	bl	8006534 <__i2b>
 80051aa:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80051ac:	4606      	mov	r6, r0
 80051ae:	2a00      	cmp	r2, #0
 80051b0:	f040 8125 	bne.w	80053fe <_dtoa_r+0x8d6>
 80051b4:	9b02      	ldr	r3, [sp, #8]
 80051b6:	2b01      	cmp	r3, #1
 80051b8:	f340 816c 	ble.w	8005494 <_dtoa_r+0x96c>
 80051bc:	2001      	movs	r0, #1
 80051be:	4440      	add	r0, r8
 80051c0:	f010 001f 	ands.w	r0, r0, #31
 80051c4:	f000 8119 	beq.w	80053fa <_dtoa_r+0x8d2>
 80051c8:	f1c0 0320 	rsb	r3, r0, #32
 80051cc:	2b04      	cmp	r3, #4
 80051ce:	f340 83ac 	ble.w	800592a <_dtoa_r+0xe02>
 80051d2:	f1c0 001c 	rsb	r0, r0, #28
 80051d6:	9b08      	ldr	r3, [sp, #32]
 80051d8:	4403      	add	r3, r0
 80051da:	9308      	str	r3, [sp, #32]
 80051dc:	4404      	add	r4, r0
 80051de:	4480      	add	r8, r0
 80051e0:	9b08      	ldr	r3, [sp, #32]
 80051e2:	2b00      	cmp	r3, #0
 80051e4:	dd05      	ble.n	80051f2 <_dtoa_r+0x6ca>
 80051e6:	4651      	mov	r1, sl
 80051e8:	461a      	mov	r2, r3
 80051ea:	4648      	mov	r0, r9
 80051ec:	f001 faa2 	bl	8006734 <__lshift>
 80051f0:	4682      	mov	sl, r0
 80051f2:	f1b8 0f00 	cmp.w	r8, #0
 80051f6:	dd05      	ble.n	8005204 <_dtoa_r+0x6dc>
 80051f8:	4631      	mov	r1, r6
 80051fa:	4642      	mov	r2, r8
 80051fc:	4648      	mov	r0, r9
 80051fe:	f001 fa99 	bl	8006734 <__lshift>
 8005202:	4606      	mov	r6, r0
 8005204:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8005206:	2b00      	cmp	r3, #0
 8005208:	d177      	bne.n	80052fa <_dtoa_r+0x7d2>
 800520a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800520c:	2b00      	cmp	r3, #0
 800520e:	f340 8209 	ble.w	8005624 <_dtoa_r+0xafc>
 8005212:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005214:	2b00      	cmp	r3, #0
 8005216:	f000 8089 	beq.w	800532c <_dtoa_r+0x804>
 800521a:	2c00      	cmp	r4, #0
 800521c:	f300 816b 	bgt.w	80054f6 <_dtoa_r+0x9ce>
 8005220:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8005222:	2b00      	cmp	r3, #0
 8005224:	f040 81cd 	bne.w	80055c2 <_dtoa_r+0xa9a>
 8005228:	46a8      	mov	r8, r5
 800522a:	9a00      	ldr	r2, [sp, #0]
 800522c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8005230:	f002 0201 	and.w	r2, r2, #1
 8005234:	920a      	str	r2, [sp, #40]	; 0x28
 8005236:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005238:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 800523c:	441a      	add	r2, r3
 800523e:	465f      	mov	r7, fp
 8005240:	9209      	str	r2, [sp, #36]	; 0x24
 8005242:	46b3      	mov	fp, r6
 8005244:	4659      	mov	r1, fp
 8005246:	4650      	mov	r0, sl
 8005248:	f7ff fbdc 	bl	8004a04 <quorem>
 800524c:	4629      	mov	r1, r5
 800524e:	4604      	mov	r4, r0
 8005250:	4650      	mov	r0, sl
 8005252:	f001 fac5 	bl	80067e0 <__mcmp>
 8005256:	4659      	mov	r1, fp
 8005258:	4606      	mov	r6, r0
 800525a:	4642      	mov	r2, r8
 800525c:	4648      	mov	r0, r9
 800525e:	f001 fadb 	bl	8006818 <__mdiff>
 8005262:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8005266:	9300      	str	r3, [sp, #0]
 8005268:	68c3      	ldr	r3, [r0, #12]
 800526a:	4601      	mov	r1, r0
 800526c:	2b00      	cmp	r3, #0
 800526e:	f040 81d4 	bne.w	800561a <_dtoa_r+0xaf2>
 8005272:	9008      	str	r0, [sp, #32]
 8005274:	4650      	mov	r0, sl
 8005276:	f001 fab3 	bl	80067e0 <__mcmp>
 800527a:	9a08      	ldr	r2, [sp, #32]
 800527c:	9007      	str	r0, [sp, #28]
 800527e:	4611      	mov	r1, r2
 8005280:	4648      	mov	r0, r9
 8005282:	f001 f8bd 	bl	8006400 <_Bfree>
 8005286:	9b07      	ldr	r3, [sp, #28]
 8005288:	b933      	cbnz	r3, 8005298 <_dtoa_r+0x770>
 800528a:	9a02      	ldr	r2, [sp, #8]
 800528c:	b922      	cbnz	r2, 8005298 <_dtoa_r+0x770>
 800528e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005290:	2b00      	cmp	r3, #0
 8005292:	f000 8319 	beq.w	80058c8 <_dtoa_r+0xda0>
 8005296:	9b02      	ldr	r3, [sp, #8]
 8005298:	2e00      	cmp	r6, #0
 800529a:	f2c0 821c 	blt.w	80056d6 <_dtoa_r+0xbae>
 800529e:	d105      	bne.n	80052ac <_dtoa_r+0x784>
 80052a0:	9a02      	ldr	r2, [sp, #8]
 80052a2:	b91a      	cbnz	r2, 80052ac <_dtoa_r+0x784>
 80052a4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80052a6:	2a00      	cmp	r2, #0
 80052a8:	f000 8215 	beq.w	80056d6 <_dtoa_r+0xbae>
 80052ac:	2b00      	cmp	r3, #0
 80052ae:	f107 0401 	add.w	r4, r7, #1
 80052b2:	f300 8225 	bgt.w	8005700 <_dtoa_r+0xbd8>
 80052b6:	9b00      	ldr	r3, [sp, #0]
 80052b8:	703b      	strb	r3, [r7, #0]
 80052ba:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80052bc:	42bb      	cmp	r3, r7
 80052be:	f000 8230 	beq.w	8005722 <_dtoa_r+0xbfa>
 80052c2:	4651      	mov	r1, sl
 80052c4:	2300      	movs	r3, #0
 80052c6:	220a      	movs	r2, #10
 80052c8:	4648      	mov	r0, r9
 80052ca:	f001 f8a3 	bl	8006414 <__multadd>
 80052ce:	4545      	cmp	r5, r8
 80052d0:	4682      	mov	sl, r0
 80052d2:	4629      	mov	r1, r5
 80052d4:	f04f 0300 	mov.w	r3, #0
 80052d8:	f04f 020a 	mov.w	r2, #10
 80052dc:	4648      	mov	r0, r9
 80052de:	f000 8196 	beq.w	800560e <_dtoa_r+0xae6>
 80052e2:	f001 f897 	bl	8006414 <__multadd>
 80052e6:	4641      	mov	r1, r8
 80052e8:	4605      	mov	r5, r0
 80052ea:	2300      	movs	r3, #0
 80052ec:	220a      	movs	r2, #10
 80052ee:	4648      	mov	r0, r9
 80052f0:	f001 f890 	bl	8006414 <__multadd>
 80052f4:	4627      	mov	r7, r4
 80052f6:	4680      	mov	r8, r0
 80052f8:	e7a4      	b.n	8005244 <_dtoa_r+0x71c>
 80052fa:	4631      	mov	r1, r6
 80052fc:	4650      	mov	r0, sl
 80052fe:	f001 fa6f 	bl	80067e0 <__mcmp>
 8005302:	2800      	cmp	r0, #0
 8005304:	da81      	bge.n	800520a <_dtoa_r+0x6e2>
 8005306:	9f06      	ldr	r7, [sp, #24]
 8005308:	4651      	mov	r1, sl
 800530a:	2300      	movs	r3, #0
 800530c:	220a      	movs	r2, #10
 800530e:	4648      	mov	r0, r9
 8005310:	3f01      	subs	r7, #1
 8005312:	9706      	str	r7, [sp, #24]
 8005314:	f001 f87e 	bl	8006414 <__multadd>
 8005318:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800531a:	4682      	mov	sl, r0
 800531c:	2b00      	cmp	r3, #0
 800531e:	f040 82eb 	bne.w	80058f8 <_dtoa_r+0xdd0>
 8005322:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005324:	2b00      	cmp	r3, #0
 8005326:	f340 82f3 	ble.w	8005910 <_dtoa_r+0xde8>
 800532a:	9309      	str	r3, [sp, #36]	; 0x24
 800532c:	465c      	mov	r4, fp
 800532e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8005332:	e002      	b.n	800533a <_dtoa_r+0x812>
 8005334:	f001 f86e 	bl	8006414 <__multadd>
 8005338:	4682      	mov	sl, r0
 800533a:	4631      	mov	r1, r6
 800533c:	4650      	mov	r0, sl
 800533e:	f7ff fb61 	bl	8004a04 <quorem>
 8005342:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8005346:	f804 7b01 	strb.w	r7, [r4], #1
 800534a:	eba4 030b 	sub.w	r3, r4, fp
 800534e:	4598      	cmp	r8, r3
 8005350:	f04f 020a 	mov.w	r2, #10
 8005354:	f04f 0300 	mov.w	r3, #0
 8005358:	4651      	mov	r1, sl
 800535a:	4648      	mov	r0, r9
 800535c:	dcea      	bgt.n	8005334 <_dtoa_r+0x80c>
 800535e:	2300      	movs	r3, #0
 8005360:	9700      	str	r7, [sp, #0]
 8005362:	9302      	str	r3, [sp, #8]
 8005364:	4651      	mov	r1, sl
 8005366:	2201      	movs	r2, #1
 8005368:	4648      	mov	r0, r9
 800536a:	f001 f9e3 	bl	8006734 <__lshift>
 800536e:	4631      	mov	r1, r6
 8005370:	4682      	mov	sl, r0
 8005372:	f001 fa35 	bl	80067e0 <__mcmp>
 8005376:	2800      	cmp	r0, #0
 8005378:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 800537c:	dc14      	bgt.n	80053a8 <_dtoa_r+0x880>
 800537e:	d108      	bne.n	8005392 <_dtoa_r+0x86a>
 8005380:	9b00      	ldr	r3, [sp, #0]
 8005382:	07db      	lsls	r3, r3, #31
 8005384:	d410      	bmi.n	80053a8 <_dtoa_r+0x880>
 8005386:	e004      	b.n	8005392 <_dtoa_r+0x86a>
 8005388:	40240000 	.word	0x40240000
 800538c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8005390:	461c      	mov	r4, r3
 8005392:	2a30      	cmp	r2, #48	; 0x30
 8005394:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8005398:	d0f8      	beq.n	800538c <_dtoa_r+0x864>
 800539a:	e00b      	b.n	80053b4 <_dtoa_r+0x88c>
 800539c:	459b      	cmp	fp, r3
 800539e:	f000 814e 	beq.w	800563e <_dtoa_r+0xb16>
 80053a2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80053a6:	461c      	mov	r4, r3
 80053a8:	2a39      	cmp	r2, #57	; 0x39
 80053aa:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80053ae:	d0f5      	beq.n	800539c <_dtoa_r+0x874>
 80053b0:	3201      	adds	r2, #1
 80053b2:	701a      	strb	r2, [r3, #0]
 80053b4:	4631      	mov	r1, r6
 80053b6:	4648      	mov	r0, r9
 80053b8:	f001 f822 	bl	8006400 <_Bfree>
 80053bc:	b155      	cbz	r5, 80053d4 <_dtoa_r+0x8ac>
 80053be:	9902      	ldr	r1, [sp, #8]
 80053c0:	b121      	cbz	r1, 80053cc <_dtoa_r+0x8a4>
 80053c2:	42a9      	cmp	r1, r5
 80053c4:	d002      	beq.n	80053cc <_dtoa_r+0x8a4>
 80053c6:	4648      	mov	r0, r9
 80053c8:	f001 f81a 	bl	8006400 <_Bfree>
 80053cc:	4629      	mov	r1, r5
 80053ce:	4648      	mov	r0, r9
 80053d0:	f001 f816 	bl	8006400 <_Bfree>
 80053d4:	4651      	mov	r1, sl
 80053d6:	4648      	mov	r0, r9
 80053d8:	f001 f812 	bl	8006400 <_Bfree>
 80053dc:	2200      	movs	r2, #0
 80053de:	9b06      	ldr	r3, [sp, #24]
 80053e0:	7022      	strb	r2, [r4, #0]
 80053e2:	9a05      	ldr	r2, [sp, #20]
 80053e4:	3301      	adds	r3, #1
 80053e6:	6013      	str	r3, [r2, #0]
 80053e8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80053ea:	2b00      	cmp	r3, #0
 80053ec:	f43f abdb 	beq.w	8004ba6 <_dtoa_r+0x7e>
 80053f0:	4658      	mov	r0, fp
 80053f2:	601c      	str	r4, [r3, #0]
 80053f4:	b01b      	add	sp, #108	; 0x6c
 80053f6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80053fa:	201c      	movs	r0, #28
 80053fc:	e6eb      	b.n	80051d6 <_dtoa_r+0x6ae>
 80053fe:	4601      	mov	r1, r0
 8005400:	4648      	mov	r0, r9
 8005402:	f001 f947 	bl	8006694 <__pow5mult>
 8005406:	9b02      	ldr	r3, [sp, #8]
 8005408:	2b01      	cmp	r3, #1
 800540a:	4606      	mov	r6, r0
 800540c:	f340 80d4 	ble.w	80055b8 <_dtoa_r+0xa90>
 8005410:	2300      	movs	r3, #0
 8005412:	930c      	str	r3, [sp, #48]	; 0x30
 8005414:	6933      	ldr	r3, [r6, #16]
 8005416:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 800541a:	6918      	ldr	r0, [r3, #16]
 800541c:	f001 f83a 	bl	8006494 <__hi0bits>
 8005420:	f1c0 0020 	rsb	r0, r0, #32
 8005424:	e6cb      	b.n	80051be <_dtoa_r+0x696>
 8005426:	900d      	str	r0, [sp, #52]	; 0x34
 8005428:	e42a      	b.n	8004c80 <_dtoa_r+0x158>
 800542a:	2501      	movs	r5, #1
 800542c:	e440      	b.n	8004cb0 <_dtoa_r+0x188>
 800542e:	f1c3 0820 	rsb	r8, r3, #32
 8005432:	9b00      	ldr	r3, [sp, #0]
 8005434:	fa03 f008 	lsl.w	r0, r3, r8
 8005438:	f7ff bbd8 	b.w	8004bec <_dtoa_r+0xc4>
 800543c:	2300      	movs	r3, #0
 800543e:	930a      	str	r3, [sp, #40]	; 0x28
 8005440:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8005444:	4413      	add	r3, r2
 8005446:	930e      	str	r3, [sp, #56]	; 0x38
 8005448:	3301      	adds	r3, #1
 800544a:	2b01      	cmp	r3, #1
 800544c:	461e      	mov	r6, r3
 800544e:	9309      	str	r3, [sp, #36]	; 0x24
 8005450:	bfb8      	it	lt
 8005452:	2601      	movlt	r6, #1
 8005454:	2100      	movs	r1, #0
 8005456:	2e17      	cmp	r6, #23
 8005458:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800545c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800545e:	f77f ac89 	ble.w	8004d74 <_dtoa_r+0x24c>
 8005462:	2201      	movs	r2, #1
 8005464:	2304      	movs	r3, #4
 8005466:	005b      	lsls	r3, r3, #1
 8005468:	f103 0014 	add.w	r0, r3, #20
 800546c:	42b0      	cmp	r0, r6
 800546e:	4611      	mov	r1, r2
 8005470:	f102 0201 	add.w	r2, r2, #1
 8005474:	d9f7      	bls.n	8005466 <_dtoa_r+0x93e>
 8005476:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800547a:	e47b      	b.n	8004d74 <_dtoa_r+0x24c>
 800547c:	2300      	movs	r3, #0
 800547e:	930a      	str	r3, [sp, #40]	; 0x28
 8005480:	9e07      	ldr	r6, [sp, #28]
 8005482:	2e00      	cmp	r6, #0
 8005484:	f340 80e2 	ble.w	800564c <_dtoa_r+0xb24>
 8005488:	960e      	str	r6, [sp, #56]	; 0x38
 800548a:	9609      	str	r6, [sp, #36]	; 0x24
 800548c:	e7e2      	b.n	8005454 <_dtoa_r+0x92c>
 800548e:	2301      	movs	r3, #1
 8005490:	930a      	str	r3, [sp, #40]	; 0x28
 8005492:	e7f5      	b.n	8005480 <_dtoa_r+0x958>
 8005494:	9b00      	ldr	r3, [sp, #0]
 8005496:	2b00      	cmp	r3, #0
 8005498:	f47f ae90 	bne.w	80051bc <_dtoa_r+0x694>
 800549c:	e9dd 1200 	ldrd	r1, r2, [sp]
 80054a0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 80054a4:	2b00      	cmp	r3, #0
 80054a6:	f040 8192 	bne.w	80057ce <_dtoa_r+0xca6>
 80054aa:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80054ae:	0d1b      	lsrs	r3, r3, #20
 80054b0:	051b      	lsls	r3, r3, #20
 80054b2:	b12b      	cbz	r3, 80054c0 <_dtoa_r+0x998>
 80054b4:	9b08      	ldr	r3, [sp, #32]
 80054b6:	3301      	adds	r3, #1
 80054b8:	9308      	str	r3, [sp, #32]
 80054ba:	f108 0801 	add.w	r8, r8, #1
 80054be:	2301      	movs	r3, #1
 80054c0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80054c2:	930c      	str	r3, [sp, #48]	; 0x30
 80054c4:	2a00      	cmp	r2, #0
 80054c6:	f43f ae79 	beq.w	80051bc <_dtoa_r+0x694>
 80054ca:	e7a3      	b.n	8005414 <_dtoa_r+0x8ec>
 80054cc:	463a      	mov	r2, r7
 80054ce:	4629      	mov	r1, r5
 80054d0:	4648      	mov	r0, r9
 80054d2:	f001 f8df 	bl	8006694 <__pow5mult>
 80054d6:	4652      	mov	r2, sl
 80054d8:	4601      	mov	r1, r0
 80054da:	4605      	mov	r5, r0
 80054dc:	4648      	mov	r0, r9
 80054de:	f001 f833 	bl	8006548 <__multiply>
 80054e2:	4651      	mov	r1, sl
 80054e4:	4607      	mov	r7, r0
 80054e6:	4648      	mov	r0, r9
 80054e8:	f000 ff8a 	bl	8006400 <_Bfree>
 80054ec:	46ba      	mov	sl, r7
 80054ee:	2e00      	cmp	r6, #0
 80054f0:	f43f ae57 	beq.w	80051a2 <_dtoa_r+0x67a>
 80054f4:	e64f      	b.n	8005196 <_dtoa_r+0x66e>
 80054f6:	4629      	mov	r1, r5
 80054f8:	4622      	mov	r2, r4
 80054fa:	4648      	mov	r0, r9
 80054fc:	f001 f91a 	bl	8006734 <__lshift>
 8005500:	4605      	mov	r5, r0
 8005502:	e68d      	b.n	8005220 <_dtoa_r+0x6f8>
 8005504:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8005506:	2a00      	cmp	r2, #0
 8005508:	f000 815d 	beq.w	80057c6 <_dtoa_r+0xc9e>
 800550c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005510:	9a08      	ldr	r2, [sp, #32]
 8005512:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005514:	4614      	mov	r4, r2
 8005516:	441a      	add	r2, r3
 8005518:	4498      	add	r8, r3
 800551a:	9208      	str	r2, [sp, #32]
 800551c:	e5f7      	b.n	800510e <_dtoa_r+0x5e6>
 800551e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005520:	2b00      	cmp	r3, #0
 8005522:	f73f ad3e 	bgt.w	8004fa2 <_dtoa_r+0x47a>
 8005526:	f040 80bc 	bne.w	80056a2 <_dtoa_r+0xb7a>
 800552a:	ec51 0b17 	vmov	r0, r1, d7
 800552e:	2200      	movs	r2, #0
 8005530:	4bb2      	ldr	r3, [pc, #712]	; (80057fc <_dtoa_r+0xcd4>)
 8005532:	f7fb fb01 	bl	8000b38 <__aeabi_dmul>
 8005536:	e9dd 2300 	ldrd	r2, r3, [sp]
 800553a:	f7fb fd83 	bl	8001044 <__aeabi_dcmpge>
 800553e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8005540:	4635      	mov	r5, r6
 8005542:	2800      	cmp	r0, #0
 8005544:	d176      	bne.n	8005634 <_dtoa_r+0xb0c>
 8005546:	9a06      	ldr	r2, [sp, #24]
 8005548:	2331      	movs	r3, #49	; 0x31
 800554a:	3201      	adds	r2, #1
 800554c:	9206      	str	r2, [sp, #24]
 800554e:	f88b 3000 	strb.w	r3, [fp]
 8005552:	f10b 0401 	add.w	r4, fp, #1
 8005556:	4631      	mov	r1, r6
 8005558:	4648      	mov	r0, r9
 800555a:	f000 ff51 	bl	8006400 <_Bfree>
 800555e:	2d00      	cmp	r5, #0
 8005560:	f47f af34 	bne.w	80053cc <_dtoa_r+0x8a4>
 8005564:	e736      	b.n	80053d4 <_dtoa_r+0x8ac>
 8005566:	f000 8142 	beq.w	80057ee <_dtoa_r+0xcc6>
 800556a:	9b06      	ldr	r3, [sp, #24]
 800556c:	425c      	negs	r4, r3
 800556e:	4ba4      	ldr	r3, [pc, #656]	; (8005800 <_dtoa_r+0xcd8>)
 8005570:	f004 020f 	and.w	r2, r4, #15
 8005574:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005578:	e9d3 2300 	ldrd	r2, r3, [r3]
 800557c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8005580:	f7fb fada 	bl	8000b38 <__aeabi_dmul>
 8005584:	1124      	asrs	r4, r4, #4
 8005586:	e9cd 0100 	strd	r0, r1, [sp]
 800558a:	f000 81c6 	beq.w	800591a <_dtoa_r+0xdf2>
 800558e:	4d9d      	ldr	r5, [pc, #628]	; (8005804 <_dtoa_r+0xcdc>)
 8005590:	2300      	movs	r3, #0
 8005592:	2602      	movs	r6, #2
 8005594:	07e7      	lsls	r7, r4, #31
 8005596:	d505      	bpl.n	80055a4 <_dtoa_r+0xa7c>
 8005598:	e9d5 2300 	ldrd	r2, r3, [r5]
 800559c:	f7fb facc 	bl	8000b38 <__aeabi_dmul>
 80055a0:	3601      	adds	r6, #1
 80055a2:	2301      	movs	r3, #1
 80055a4:	1064      	asrs	r4, r4, #1
 80055a6:	f105 0508 	add.w	r5, r5, #8
 80055aa:	d1f3      	bne.n	8005594 <_dtoa_r+0xa6c>
 80055ac:	2b00      	cmp	r3, #0
 80055ae:	f43f ac27 	beq.w	8004e00 <_dtoa_r+0x2d8>
 80055b2:	e9cd 0100 	strd	r0, r1, [sp]
 80055b6:	e423      	b.n	8004e00 <_dtoa_r+0x2d8>
 80055b8:	9b00      	ldr	r3, [sp, #0]
 80055ba:	2b00      	cmp	r3, #0
 80055bc:	f43f af6e 	beq.w	800549c <_dtoa_r+0x974>
 80055c0:	e726      	b.n	8005410 <_dtoa_r+0x8e8>
 80055c2:	6869      	ldr	r1, [r5, #4]
 80055c4:	4648      	mov	r0, r9
 80055c6:	f000 fef5 	bl	80063b4 <_Balloc>
 80055ca:	692b      	ldr	r3, [r5, #16]
 80055cc:	3302      	adds	r3, #2
 80055ce:	009a      	lsls	r2, r3, #2
 80055d0:	4604      	mov	r4, r0
 80055d2:	f105 010c 	add.w	r1, r5, #12
 80055d6:	300c      	adds	r0, #12
 80055d8:	f7fa ff92 	bl	8000500 <memcpy>
 80055dc:	4621      	mov	r1, r4
 80055de:	2201      	movs	r2, #1
 80055e0:	4648      	mov	r0, r9
 80055e2:	f001 f8a7 	bl	8006734 <__lshift>
 80055e6:	4680      	mov	r8, r0
 80055e8:	e61f      	b.n	800522a <_dtoa_r+0x702>
 80055ea:	2400      	movs	r4, #0
 80055ec:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 80055f0:	4621      	mov	r1, r4
 80055f2:	4648      	mov	r0, r9
 80055f4:	f000 fede 	bl	80063b4 <_Balloc>
 80055f8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80055fc:	930e      	str	r3, [sp, #56]	; 0x38
 80055fe:	9309      	str	r3, [sp, #36]	; 0x24
 8005600:	2301      	movs	r3, #1
 8005602:	4683      	mov	fp, r0
 8005604:	9407      	str	r4, [sp, #28]
 8005606:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800560a:	930a      	str	r3, [sp, #40]	; 0x28
 800560c:	e4b6      	b.n	8004f7c <_dtoa_r+0x454>
 800560e:	f000 ff01 	bl	8006414 <__multadd>
 8005612:	4627      	mov	r7, r4
 8005614:	4605      	mov	r5, r0
 8005616:	4680      	mov	r8, r0
 8005618:	e614      	b.n	8005244 <_dtoa_r+0x71c>
 800561a:	4648      	mov	r0, r9
 800561c:	f000 fef0 	bl	8006400 <_Bfree>
 8005620:	2301      	movs	r3, #1
 8005622:	e639      	b.n	8005298 <_dtoa_r+0x770>
 8005624:	9b02      	ldr	r3, [sp, #8]
 8005626:	2b02      	cmp	r3, #2
 8005628:	f77f adf3 	ble.w	8005212 <_dtoa_r+0x6ea>
 800562c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800562e:	2b00      	cmp	r3, #0
 8005630:	f000 80cf 	beq.w	80057d2 <_dtoa_r+0xcaa>
 8005634:	9b07      	ldr	r3, [sp, #28]
 8005636:	43db      	mvns	r3, r3
 8005638:	9306      	str	r3, [sp, #24]
 800563a:	465c      	mov	r4, fp
 800563c:	e78b      	b.n	8005556 <_dtoa_r+0xa2e>
 800563e:	9a06      	ldr	r2, [sp, #24]
 8005640:	2331      	movs	r3, #49	; 0x31
 8005642:	3201      	adds	r2, #1
 8005644:	9206      	str	r2, [sp, #24]
 8005646:	f88b 3000 	strb.w	r3, [fp]
 800564a:	e6b3      	b.n	80053b4 <_dtoa_r+0x88c>
 800564c:	2401      	movs	r4, #1
 800564e:	9409      	str	r4, [sp, #36]	; 0x24
 8005650:	9407      	str	r4, [sp, #28]
 8005652:	f7ff bb8b 	b.w	8004d6c <_dtoa_r+0x244>
 8005656:	4630      	mov	r0, r6
 8005658:	f7fb fa04 	bl	8000a64 <__aeabi_i2d>
 800565c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005660:	f7fb fa6a 	bl	8000b38 <__aeabi_dmul>
 8005664:	2200      	movs	r2, #0
 8005666:	4b68      	ldr	r3, [pc, #416]	; (8005808 <_dtoa_r+0xce0>)
 8005668:	f7fb f8b0 	bl	80007cc <__adddf3>
 800566c:	4606      	mov	r6, r0
 800566e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005672:	2200      	movs	r2, #0
 8005674:	4b61      	ldr	r3, [pc, #388]	; (80057fc <_dtoa_r+0xcd4>)
 8005676:	e9dd 0100 	ldrd	r0, r1, [sp]
 800567a:	f7fb f8a5 	bl	80007c8 <__aeabi_dsub>
 800567e:	4632      	mov	r2, r6
 8005680:	463b      	mov	r3, r7
 8005682:	4604      	mov	r4, r0
 8005684:	460d      	mov	r5, r1
 8005686:	f7fb fce7 	bl	8001058 <__aeabi_dcmpgt>
 800568a:	2800      	cmp	r0, #0
 800568c:	d14f      	bne.n	800572e <_dtoa_r+0xc06>
 800568e:	4632      	mov	r2, r6
 8005690:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8005694:	4620      	mov	r0, r4
 8005696:	4629      	mov	r1, r5
 8005698:	f7fb fcc0 	bl	800101c <__aeabi_dcmplt>
 800569c:	2800      	cmp	r0, #0
 800569e:	f43f ac69 	beq.w	8004f74 <_dtoa_r+0x44c>
 80056a2:	2600      	movs	r6, #0
 80056a4:	4635      	mov	r5, r6
 80056a6:	e7c5      	b.n	8005634 <_dtoa_r+0xb0c>
 80056a8:	2301      	movs	r3, #1
 80056aa:	930a      	str	r3, [sp, #40]	; 0x28
 80056ac:	e6c8      	b.n	8005440 <_dtoa_r+0x918>
 80056ae:	4651      	mov	r1, sl
 80056b0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80056b2:	4648      	mov	r0, r9
 80056b4:	f000 ffee 	bl	8006694 <__pow5mult>
 80056b8:	4682      	mov	sl, r0
 80056ba:	e572      	b.n	80051a2 <_dtoa_r+0x67a>
 80056bc:	f8dd a000 	ldr.w	sl, [sp]
 80056c0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80056c4:	e686      	b.n	80053d4 <_dtoa_r+0x8ac>
 80056c6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80056c8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80056ca:	1afb      	subs	r3, r7, r3
 80056cc:	441a      	add	r2, r3
 80056ce:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 80056d2:	2700      	movs	r7, #0
 80056d4:	e512      	b.n	80050fc <_dtoa_r+0x5d4>
 80056d6:	2b00      	cmp	r3, #0
 80056d8:	9402      	str	r4, [sp, #8]
 80056da:	465e      	mov	r6, fp
 80056dc:	f107 0401 	add.w	r4, r7, #1
 80056e0:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80056e4:	f300 80ba 	bgt.w	800585c <_dtoa_r+0xd34>
 80056e8:	9b00      	ldr	r3, [sp, #0]
 80056ea:	9502      	str	r5, [sp, #8]
 80056ec:	703b      	strb	r3, [r7, #0]
 80056ee:	4645      	mov	r5, r8
 80056f0:	e660      	b.n	80053b4 <_dtoa_r+0x88c>
 80056f2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80056f6:	2602      	movs	r6, #2
 80056f8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80056fc:	f7ff bb67 	b.w	8004dce <_dtoa_r+0x2a6>
 8005700:	9b00      	ldr	r3, [sp, #0]
 8005702:	2b39      	cmp	r3, #57	; 0x39
 8005704:	465e      	mov	r6, fp
 8005706:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800570a:	f000 80b9 	beq.w	8005880 <_dtoa_r+0xd58>
 800570e:	9b00      	ldr	r3, [sp, #0]
 8005710:	9502      	str	r5, [sp, #8]
 8005712:	3301      	adds	r3, #1
 8005714:	703b      	strb	r3, [r7, #0]
 8005716:	4645      	mov	r5, r8
 8005718:	e64c      	b.n	80053b4 <_dtoa_r+0x88c>
 800571a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800571e:	1a9c      	subs	r4, r3, r2
 8005720:	e4f5      	b.n	800510e <_dtoa_r+0x5e6>
 8005722:	465e      	mov	r6, fp
 8005724:	9502      	str	r5, [sp, #8]
 8005726:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800572a:	4645      	mov	r5, r8
 800572c:	e61a      	b.n	8005364 <_dtoa_r+0x83c>
 800572e:	2600      	movs	r6, #0
 8005730:	4635      	mov	r5, r6
 8005732:	e708      	b.n	8005546 <_dtoa_r+0xa1e>
 8005734:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005738:	e9dd 0100 	ldrd	r0, r1, [sp]
 800573c:	f7fb f9fc 	bl	8000b38 <__aeabi_dmul>
 8005740:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005742:	f88b 5000 	strb.w	r5, [fp]
 8005746:	2b01      	cmp	r3, #1
 8005748:	e9cd 0100 	strd	r0, r1, [sp]
 800574c:	d020      	beq.n	8005790 <_dtoa_r+0xc68>
 800574e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005750:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8005754:	445b      	add	r3, fp
 8005756:	4698      	mov	r8, r3
 8005758:	2200      	movs	r2, #0
 800575a:	4b2c      	ldr	r3, [pc, #176]	; (800580c <_dtoa_r+0xce4>)
 800575c:	4630      	mov	r0, r6
 800575e:	4639      	mov	r1, r7
 8005760:	f7fb f9ea 	bl	8000b38 <__aeabi_dmul>
 8005764:	460f      	mov	r7, r1
 8005766:	4606      	mov	r6, r0
 8005768:	f7fb fc96 	bl	8001098 <__aeabi_d2iz>
 800576c:	4605      	mov	r5, r0
 800576e:	f7fb f979 	bl	8000a64 <__aeabi_i2d>
 8005772:	3530      	adds	r5, #48	; 0x30
 8005774:	4602      	mov	r2, r0
 8005776:	460b      	mov	r3, r1
 8005778:	4630      	mov	r0, r6
 800577a:	4639      	mov	r1, r7
 800577c:	f7fb f824 	bl	80007c8 <__aeabi_dsub>
 8005780:	f804 5b01 	strb.w	r5, [r4], #1
 8005784:	4544      	cmp	r4, r8
 8005786:	4606      	mov	r6, r0
 8005788:	460f      	mov	r7, r1
 800578a:	d1e5      	bne.n	8005758 <_dtoa_r+0xc30>
 800578c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8005790:	4b1f      	ldr	r3, [pc, #124]	; (8005810 <_dtoa_r+0xce8>)
 8005792:	2200      	movs	r2, #0
 8005794:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005798:	f7fb f818 	bl	80007cc <__adddf3>
 800579c:	4632      	mov	r2, r6
 800579e:	463b      	mov	r3, r7
 80057a0:	f7fb fc3c 	bl	800101c <__aeabi_dcmplt>
 80057a4:	2800      	cmp	r0, #0
 80057a6:	d070      	beq.n	800588a <_dtoa_r+0xd62>
 80057a8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80057aa:	9306      	str	r3, [sp, #24]
 80057ac:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80057b0:	e48f      	b.n	80050d2 <_dtoa_r+0x5aa>
 80057b2:	2330      	movs	r3, #48	; 0x30
 80057b4:	f88b 3000 	strb.w	r3, [fp]
 80057b8:	9b06      	ldr	r3, [sp, #24]
 80057ba:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80057be:	3301      	adds	r3, #1
 80057c0:	9306      	str	r3, [sp, #24]
 80057c2:	465b      	mov	r3, fp
 80057c4:	e489      	b.n	80050da <_dtoa_r+0x5b2>
 80057c6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80057c8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80057cc:	e6a0      	b.n	8005510 <_dtoa_r+0x9e8>
 80057ce:	2300      	movs	r3, #0
 80057d0:	e676      	b.n	80054c0 <_dtoa_r+0x998>
 80057d2:	4631      	mov	r1, r6
 80057d4:	2205      	movs	r2, #5
 80057d6:	4648      	mov	r0, r9
 80057d8:	f000 fe1c 	bl	8006414 <__multadd>
 80057dc:	4601      	mov	r1, r0
 80057de:	4606      	mov	r6, r0
 80057e0:	4650      	mov	r0, sl
 80057e2:	f000 fffd 	bl	80067e0 <__mcmp>
 80057e6:	2800      	cmp	r0, #0
 80057e8:	f73f aead 	bgt.w	8005546 <_dtoa_r+0xa1e>
 80057ec:	e722      	b.n	8005634 <_dtoa_r+0xb0c>
 80057ee:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80057f2:	2602      	movs	r6, #2
 80057f4:	ed8d 7b00 	vstr	d7, [sp]
 80057f8:	f7ff bb02 	b.w	8004e00 <_dtoa_r+0x2d8>
 80057fc:	40140000 	.word	0x40140000
 8005800:	080077c0 	.word	0x080077c0
 8005804:	08007798 	.word	0x08007798
 8005808:	401c0000 	.word	0x401c0000
 800580c:	40240000 	.word	0x40240000
 8005810:	3fe00000 	.word	0x3fe00000
 8005814:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005816:	2b00      	cmp	r3, #0
 8005818:	f43f af1d 	beq.w	8005656 <_dtoa_r+0xb2e>
 800581c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800581e:	2c00      	cmp	r4, #0
 8005820:	f77f aba8 	ble.w	8004f74 <_dtoa_r+0x44c>
 8005824:	2200      	movs	r2, #0
 8005826:	4b45      	ldr	r3, [pc, #276]	; (800593c <_dtoa_r+0xe14>)
 8005828:	e9dd 0100 	ldrd	r0, r1, [sp]
 800582c:	f7fb f984 	bl	8000b38 <__aeabi_dmul>
 8005830:	e9cd 0100 	strd	r0, r1, [sp]
 8005834:	1c70      	adds	r0, r6, #1
 8005836:	f7fb f915 	bl	8000a64 <__aeabi_i2d>
 800583a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800583e:	f7fb f97b 	bl	8000b38 <__aeabi_dmul>
 8005842:	4b3f      	ldr	r3, [pc, #252]	; (8005940 <_dtoa_r+0xe18>)
 8005844:	2200      	movs	r2, #0
 8005846:	f7fa ffc1 	bl	80007cc <__adddf3>
 800584a:	9b06      	ldr	r3, [sp, #24]
 800584c:	9412      	str	r4, [sp, #72]	; 0x48
 800584e:	3b01      	subs	r3, #1
 8005850:	4606      	mov	r6, r0
 8005852:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005856:	9316      	str	r3, [sp, #88]	; 0x58
 8005858:	f7ff baf3 	b.w	8004e42 <_dtoa_r+0x31a>
 800585c:	4651      	mov	r1, sl
 800585e:	2201      	movs	r2, #1
 8005860:	4648      	mov	r0, r9
 8005862:	f000 ff67 	bl	8006734 <__lshift>
 8005866:	4631      	mov	r1, r6
 8005868:	4682      	mov	sl, r0
 800586a:	f000 ffb9 	bl	80067e0 <__mcmp>
 800586e:	2800      	cmp	r0, #0
 8005870:	dd3b      	ble.n	80058ea <_dtoa_r+0xdc2>
 8005872:	9b00      	ldr	r3, [sp, #0]
 8005874:	2b39      	cmp	r3, #57	; 0x39
 8005876:	d003      	beq.n	8005880 <_dtoa_r+0xd58>
 8005878:	9b02      	ldr	r3, [sp, #8]
 800587a:	3331      	adds	r3, #49	; 0x31
 800587c:	9300      	str	r3, [sp, #0]
 800587e:	e733      	b.n	80056e8 <_dtoa_r+0xbc0>
 8005880:	2239      	movs	r2, #57	; 0x39
 8005882:	9502      	str	r5, [sp, #8]
 8005884:	703a      	strb	r2, [r7, #0]
 8005886:	4645      	mov	r5, r8
 8005888:	e58e      	b.n	80053a8 <_dtoa_r+0x880>
 800588a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800588e:	2000      	movs	r0, #0
 8005890:	492c      	ldr	r1, [pc, #176]	; (8005944 <_dtoa_r+0xe1c>)
 8005892:	f7fa ff99 	bl	80007c8 <__aeabi_dsub>
 8005896:	4632      	mov	r2, r6
 8005898:	463b      	mov	r3, r7
 800589a:	f7fb fbdd 	bl	8001058 <__aeabi_dcmpgt>
 800589e:	b910      	cbnz	r0, 80058a6 <_dtoa_r+0xd7e>
 80058a0:	f7ff bb68 	b.w	8004f74 <_dtoa_r+0x44c>
 80058a4:	4614      	mov	r4, r2
 80058a6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80058aa:	2b30      	cmp	r3, #48	; 0x30
 80058ac:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80058b0:	d0f8      	beq.n	80058a4 <_dtoa_r+0xd7c>
 80058b2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80058b4:	9306      	str	r3, [sp, #24]
 80058b6:	e58d      	b.n	80053d4 <_dtoa_r+0x8ac>
 80058b8:	46d9      	mov	r9, fp
 80058ba:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80058be:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80058c2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80058c4:	9306      	str	r3, [sp, #24]
 80058c6:	e404      	b.n	80050d2 <_dtoa_r+0x5aa>
 80058c8:	9b00      	ldr	r3, [sp, #0]
 80058ca:	2b39      	cmp	r3, #57	; 0x39
 80058cc:	4621      	mov	r1, r4
 80058ce:	4632      	mov	r2, r6
 80058d0:	f107 0401 	add.w	r4, r7, #1
 80058d4:	465e      	mov	r6, fp
 80058d6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80058da:	d0d1      	beq.n	8005880 <_dtoa_r+0xd58>
 80058dc:	2a00      	cmp	r2, #0
 80058de:	f77f af03 	ble.w	80056e8 <_dtoa_r+0xbc0>
 80058e2:	460b      	mov	r3, r1
 80058e4:	3331      	adds	r3, #49	; 0x31
 80058e6:	9300      	str	r3, [sp, #0]
 80058e8:	e6fe      	b.n	80056e8 <_dtoa_r+0xbc0>
 80058ea:	f47f aefd 	bne.w	80056e8 <_dtoa_r+0xbc0>
 80058ee:	9b00      	ldr	r3, [sp, #0]
 80058f0:	07da      	lsls	r2, r3, #31
 80058f2:	f57f aef9 	bpl.w	80056e8 <_dtoa_r+0xbc0>
 80058f6:	e7bc      	b.n	8005872 <_dtoa_r+0xd4a>
 80058f8:	4629      	mov	r1, r5
 80058fa:	2300      	movs	r3, #0
 80058fc:	220a      	movs	r2, #10
 80058fe:	4648      	mov	r0, r9
 8005900:	f000 fd88 	bl	8006414 <__multadd>
 8005904:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005906:	2b00      	cmp	r3, #0
 8005908:	4605      	mov	r5, r0
 800590a:	dd09      	ble.n	8005920 <_dtoa_r+0xdf8>
 800590c:	9309      	str	r3, [sp, #36]	; 0x24
 800590e:	e484      	b.n	800521a <_dtoa_r+0x6f2>
 8005910:	9b02      	ldr	r3, [sp, #8]
 8005912:	2b02      	cmp	r3, #2
 8005914:	dc0e      	bgt.n	8005934 <_dtoa_r+0xe0c>
 8005916:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005918:	e507      	b.n	800532a <_dtoa_r+0x802>
 800591a:	2602      	movs	r6, #2
 800591c:	f7ff ba70 	b.w	8004e00 <_dtoa_r+0x2d8>
 8005920:	9b02      	ldr	r3, [sp, #8]
 8005922:	2b02      	cmp	r3, #2
 8005924:	dc06      	bgt.n	8005934 <_dtoa_r+0xe0c>
 8005926:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005928:	e7f0      	b.n	800590c <_dtoa_r+0xde4>
 800592a:	f43f ac59 	beq.w	80051e0 <_dtoa_r+0x6b8>
 800592e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005932:	e450      	b.n	80051d6 <_dtoa_r+0x6ae>
 8005934:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005936:	9309      	str	r3, [sp, #36]	; 0x24
 8005938:	e678      	b.n	800562c <_dtoa_r+0xb04>
 800593a:	bf00      	nop
 800593c:	40240000 	.word	0x40240000
 8005940:	401c0000 	.word	0x401c0000
 8005944:	3fe00000 	.word	0x3fe00000

08005948 <__sflush_r>:
 8005948:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800594c:	b29a      	uxth	r2, r3
 800594e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005952:	460c      	mov	r4, r1
 8005954:	0711      	lsls	r1, r2, #28
 8005956:	4680      	mov	r8, r0
 8005958:	d444      	bmi.n	80059e4 <__sflush_r+0x9c>
 800595a:	6862      	ldr	r2, [r4, #4]
 800595c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005960:	2a00      	cmp	r2, #0
 8005962:	81a3      	strh	r3, [r4, #12]
 8005964:	dd59      	ble.n	8005a1a <__sflush_r+0xd2>
 8005966:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005968:	2d00      	cmp	r5, #0
 800596a:	d053      	beq.n	8005a14 <__sflush_r+0xcc>
 800596c:	2200      	movs	r2, #0
 800596e:	b29b      	uxth	r3, r3
 8005970:	f8d8 6000 	ldr.w	r6, [r8]
 8005974:	69e1      	ldr	r1, [r4, #28]
 8005976:	f8c8 2000 	str.w	r2, [r8]
 800597a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800597e:	f040 8083 	bne.w	8005a88 <__sflush_r+0x140>
 8005982:	2301      	movs	r3, #1
 8005984:	4640      	mov	r0, r8
 8005986:	47a8      	blx	r5
 8005988:	1c42      	adds	r2, r0, #1
 800598a:	d04a      	beq.n	8005a22 <__sflush_r+0xda>
 800598c:	89a3      	ldrh	r3, [r4, #12]
 800598e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005990:	69e1      	ldr	r1, [r4, #28]
 8005992:	075b      	lsls	r3, r3, #29
 8005994:	d505      	bpl.n	80059a2 <__sflush_r+0x5a>
 8005996:	6862      	ldr	r2, [r4, #4]
 8005998:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800599a:	1a80      	subs	r0, r0, r2
 800599c:	b10b      	cbz	r3, 80059a2 <__sflush_r+0x5a>
 800599e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80059a0:	1ac0      	subs	r0, r0, r3
 80059a2:	4602      	mov	r2, r0
 80059a4:	2300      	movs	r3, #0
 80059a6:	4640      	mov	r0, r8
 80059a8:	47a8      	blx	r5
 80059aa:	1c47      	adds	r7, r0, #1
 80059ac:	d045      	beq.n	8005a3a <__sflush_r+0xf2>
 80059ae:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80059b2:	6922      	ldr	r2, [r4, #16]
 80059b4:	6022      	str	r2, [r4, #0]
 80059b6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80059ba:	2200      	movs	r2, #0
 80059bc:	81a3      	strh	r3, [r4, #12]
 80059be:	04db      	lsls	r3, r3, #19
 80059c0:	6062      	str	r2, [r4, #4]
 80059c2:	d500      	bpl.n	80059c6 <__sflush_r+0x7e>
 80059c4:	6520      	str	r0, [r4, #80]	; 0x50
 80059c6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80059c8:	f8c8 6000 	str.w	r6, [r8]
 80059cc:	b311      	cbz	r1, 8005a14 <__sflush_r+0xcc>
 80059ce:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80059d2:	4299      	cmp	r1, r3
 80059d4:	d002      	beq.n	80059dc <__sflush_r+0x94>
 80059d6:	4640      	mov	r0, r8
 80059d8:	f000 f95e 	bl	8005c98 <_free_r>
 80059dc:	2000      	movs	r0, #0
 80059de:	6320      	str	r0, [r4, #48]	; 0x30
 80059e0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80059e4:	6926      	ldr	r6, [r4, #16]
 80059e6:	b1ae      	cbz	r6, 8005a14 <__sflush_r+0xcc>
 80059e8:	6825      	ldr	r5, [r4, #0]
 80059ea:	6026      	str	r6, [r4, #0]
 80059ec:	0792      	lsls	r2, r2, #30
 80059ee:	bf0c      	ite	eq
 80059f0:	6963      	ldreq	r3, [r4, #20]
 80059f2:	2300      	movne	r3, #0
 80059f4:	1bad      	subs	r5, r5, r6
 80059f6:	60a3      	str	r3, [r4, #8]
 80059f8:	e00a      	b.n	8005a10 <__sflush_r+0xc8>
 80059fa:	462b      	mov	r3, r5
 80059fc:	4632      	mov	r2, r6
 80059fe:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005a00:	69e1      	ldr	r1, [r4, #28]
 8005a02:	4640      	mov	r0, r8
 8005a04:	47b8      	blx	r7
 8005a06:	2800      	cmp	r0, #0
 8005a08:	eba5 0500 	sub.w	r5, r5, r0
 8005a0c:	4406      	add	r6, r0
 8005a0e:	dd2b      	ble.n	8005a68 <__sflush_r+0x120>
 8005a10:	2d00      	cmp	r5, #0
 8005a12:	dcf2      	bgt.n	80059fa <__sflush_r+0xb2>
 8005a14:	2000      	movs	r0, #0
 8005a16:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005a1a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005a1c:	2a00      	cmp	r2, #0
 8005a1e:	dca2      	bgt.n	8005966 <__sflush_r+0x1e>
 8005a20:	e7f8      	b.n	8005a14 <__sflush_r+0xcc>
 8005a22:	f8d8 3000 	ldr.w	r3, [r8]
 8005a26:	2b00      	cmp	r3, #0
 8005a28:	d0b0      	beq.n	800598c <__sflush_r+0x44>
 8005a2a:	2b1d      	cmp	r3, #29
 8005a2c:	d001      	beq.n	8005a32 <__sflush_r+0xea>
 8005a2e:	2b16      	cmp	r3, #22
 8005a30:	d12c      	bne.n	8005a8c <__sflush_r+0x144>
 8005a32:	f8c8 6000 	str.w	r6, [r8]
 8005a36:	2000      	movs	r0, #0
 8005a38:	e7ed      	b.n	8005a16 <__sflush_r+0xce>
 8005a3a:	f8d8 1000 	ldr.w	r1, [r8]
 8005a3e:	291d      	cmp	r1, #29
 8005a40:	d81a      	bhi.n	8005a78 <__sflush_r+0x130>
 8005a42:	4b15      	ldr	r3, [pc, #84]	; (8005a98 <__sflush_r+0x150>)
 8005a44:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005a48:	40cb      	lsrs	r3, r1
 8005a4a:	43db      	mvns	r3, r3
 8005a4c:	f013 0301 	ands.w	r3, r3, #1
 8005a50:	d114      	bne.n	8005a7c <__sflush_r+0x134>
 8005a52:	6925      	ldr	r5, [r4, #16]
 8005a54:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005a58:	e9c4 5300 	strd	r5, r3, [r4]
 8005a5c:	04d5      	lsls	r5, r2, #19
 8005a5e:	81a2      	strh	r2, [r4, #12]
 8005a60:	d5b1      	bpl.n	80059c6 <__sflush_r+0x7e>
 8005a62:	2900      	cmp	r1, #0
 8005a64:	d1af      	bne.n	80059c6 <__sflush_r+0x7e>
 8005a66:	e7ad      	b.n	80059c4 <__sflush_r+0x7c>
 8005a68:	89a3      	ldrh	r3, [r4, #12]
 8005a6a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005a6e:	81a3      	strh	r3, [r4, #12]
 8005a70:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005a74:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005a78:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005a7c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005a80:	81a2      	strh	r2, [r4, #12]
 8005a82:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005a86:	e7c6      	b.n	8005a16 <__sflush_r+0xce>
 8005a88:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8005a8a:	e782      	b.n	8005992 <__sflush_r+0x4a>
 8005a8c:	89a3      	ldrh	r3, [r4, #12]
 8005a8e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005a92:	81a3      	strh	r3, [r4, #12]
 8005a94:	e7bf      	b.n	8005a16 <__sflush_r+0xce>
 8005a96:	bf00      	nop
 8005a98:	20400001 	.word	0x20400001

08005a9c <_fflush_r>:
 8005a9c:	b538      	push	{r3, r4, r5, lr}
 8005a9e:	460d      	mov	r5, r1
 8005aa0:	4604      	mov	r4, r0
 8005aa2:	b108      	cbz	r0, 8005aa8 <_fflush_r+0xc>
 8005aa4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005aa6:	b1a3      	cbz	r3, 8005ad2 <_fflush_r+0x36>
 8005aa8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005aac:	b1b8      	cbz	r0, 8005ade <_fflush_r+0x42>
 8005aae:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005ab0:	07db      	lsls	r3, r3, #31
 8005ab2:	d401      	bmi.n	8005ab8 <_fflush_r+0x1c>
 8005ab4:	0581      	lsls	r1, r0, #22
 8005ab6:	d51a      	bpl.n	8005aee <_fflush_r+0x52>
 8005ab8:	4620      	mov	r0, r4
 8005aba:	4629      	mov	r1, r5
 8005abc:	f7ff ff44 	bl	8005948 <__sflush_r>
 8005ac0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005ac2:	07da      	lsls	r2, r3, #31
 8005ac4:	4604      	mov	r4, r0
 8005ac6:	d402      	bmi.n	8005ace <_fflush_r+0x32>
 8005ac8:	89ab      	ldrh	r3, [r5, #12]
 8005aca:	059b      	lsls	r3, r3, #22
 8005acc:	d50a      	bpl.n	8005ae4 <_fflush_r+0x48>
 8005ace:	4620      	mov	r0, r4
 8005ad0:	bd38      	pop	{r3, r4, r5, pc}
 8005ad2:	f000 f83f 	bl	8005b54 <__sinit>
 8005ad6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005ada:	2800      	cmp	r0, #0
 8005adc:	d1e7      	bne.n	8005aae <_fflush_r+0x12>
 8005ade:	4604      	mov	r4, r0
 8005ae0:	4620      	mov	r0, r4
 8005ae2:	bd38      	pop	{r3, r4, r5, pc}
 8005ae4:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005ae6:	f000 fb87 	bl	80061f8 <__retarget_lock_release_recursive>
 8005aea:	4620      	mov	r0, r4
 8005aec:	bd38      	pop	{r3, r4, r5, pc}
 8005aee:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005af0:	f000 fb80 	bl	80061f4 <__retarget_lock_acquire_recursive>
 8005af4:	e7e0      	b.n	8005ab8 <_fflush_r+0x1c>
 8005af6:	bf00      	nop

08005af8 <std>:
 8005af8:	b510      	push	{r4, lr}
 8005afa:	2300      	movs	r3, #0
 8005afc:	4604      	mov	r4, r0
 8005afe:	8181      	strh	r1, [r0, #12]
 8005b00:	81c2      	strh	r2, [r0, #14]
 8005b02:	e9c0 3300 	strd	r3, r3, [r0]
 8005b06:	6083      	str	r3, [r0, #8]
 8005b08:	6643      	str	r3, [r0, #100]	; 0x64
 8005b0a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005b0e:	6183      	str	r3, [r0, #24]
 8005b10:	4619      	mov	r1, r3
 8005b12:	2208      	movs	r2, #8
 8005b14:	305c      	adds	r0, #92	; 0x5c
 8005b16:	f7fd f8ad 	bl	8002c74 <memset>
 8005b1a:	4807      	ldr	r0, [pc, #28]	; (8005b38 <std+0x40>)
 8005b1c:	4907      	ldr	r1, [pc, #28]	; (8005b3c <std+0x44>)
 8005b1e:	4a08      	ldr	r2, [pc, #32]	; (8005b40 <std+0x48>)
 8005b20:	4b08      	ldr	r3, [pc, #32]	; (8005b44 <std+0x4c>)
 8005b22:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005b24:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005b28:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005b2c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005b30:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005b34:	f000 bb5a 	b.w	80061ec <__retarget_lock_init_recursive>
 8005b38:	08006d8d 	.word	0x08006d8d
 8005b3c:	08006db1 	.word	0x08006db1
 8005b40:	08006ded 	.word	0x08006ded
 8005b44:	08006e0d 	.word	0x08006e0d

08005b48 <_cleanup_r>:
 8005b48:	4901      	ldr	r1, [pc, #4]	; (8005b50 <_cleanup_r+0x8>)
 8005b4a:	f000 bb17 	b.w	800617c <_fwalk_reent>
 8005b4e:	bf00      	nop
 8005b50:	0800707d 	.word	0x0800707d

08005b54 <__sinit>:
 8005b54:	b510      	push	{r4, lr}
 8005b56:	4604      	mov	r4, r0
 8005b58:	4812      	ldr	r0, [pc, #72]	; (8005ba4 <__sinit+0x50>)
 8005b5a:	f000 fb4b 	bl	80061f4 <__retarget_lock_acquire_recursive>
 8005b5e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005b60:	b9d2      	cbnz	r2, 8005b98 <__sinit+0x44>
 8005b62:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005b66:	4810      	ldr	r0, [pc, #64]	; (8005ba8 <__sinit+0x54>)
 8005b68:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8005b6c:	2103      	movs	r1, #3
 8005b6e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005b72:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005b74:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005b78:	6860      	ldr	r0, [r4, #4]
 8005b7a:	2104      	movs	r1, #4
 8005b7c:	f7ff ffbc 	bl	8005af8 <std>
 8005b80:	2201      	movs	r2, #1
 8005b82:	2109      	movs	r1, #9
 8005b84:	68a0      	ldr	r0, [r4, #8]
 8005b86:	f7ff ffb7 	bl	8005af8 <std>
 8005b8a:	2202      	movs	r2, #2
 8005b8c:	2112      	movs	r1, #18
 8005b8e:	68e0      	ldr	r0, [r4, #12]
 8005b90:	f7ff ffb2 	bl	8005af8 <std>
 8005b94:	2301      	movs	r3, #1
 8005b96:	63a3      	str	r3, [r4, #56]	; 0x38
 8005b98:	4802      	ldr	r0, [pc, #8]	; (8005ba4 <__sinit+0x50>)
 8005b9a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005b9e:	f000 bb2b 	b.w	80061f8 <__retarget_lock_release_recursive>
 8005ba2:	bf00      	nop
 8005ba4:	20000e88 	.word	0x20000e88
 8005ba8:	08005b49 	.word	0x08005b49

08005bac <__sfp_lock_acquire>:
 8005bac:	4801      	ldr	r0, [pc, #4]	; (8005bb4 <__sfp_lock_acquire+0x8>)
 8005bae:	f000 bb21 	b.w	80061f4 <__retarget_lock_acquire_recursive>
 8005bb2:	bf00      	nop
 8005bb4:	20000e9c 	.word	0x20000e9c

08005bb8 <__sfp_lock_release>:
 8005bb8:	4801      	ldr	r0, [pc, #4]	; (8005bc0 <__sfp_lock_release+0x8>)
 8005bba:	f000 bb1d 	b.w	80061f8 <__retarget_lock_release_recursive>
 8005bbe:	bf00      	nop
 8005bc0:	20000e9c 	.word	0x20000e9c

08005bc4 <__libc_fini_array>:
 8005bc4:	b538      	push	{r3, r4, r5, lr}
 8005bc6:	4c0a      	ldr	r4, [pc, #40]	; (8005bf0 <__libc_fini_array+0x2c>)
 8005bc8:	4d0a      	ldr	r5, [pc, #40]	; (8005bf4 <__libc_fini_array+0x30>)
 8005bca:	1b64      	subs	r4, r4, r5
 8005bcc:	10a4      	asrs	r4, r4, #2
 8005bce:	d00a      	beq.n	8005be6 <__libc_fini_array+0x22>
 8005bd0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005bd4:	3b01      	subs	r3, #1
 8005bd6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005bda:	3c01      	subs	r4, #1
 8005bdc:	f855 3904 	ldr.w	r3, [r5], #-4
 8005be0:	4798      	blx	r3
 8005be2:	2c00      	cmp	r4, #0
 8005be4:	d1f9      	bne.n	8005bda <__libc_fini_array+0x16>
 8005be6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005bea:	f001 bc3b 	b.w	8007464 <_fini>
 8005bee:	bf00      	nop
 8005bf0:	080079bc 	.word	0x080079bc
 8005bf4:	080079b8 	.word	0x080079b8

08005bf8 <_malloc_trim_r>:
 8005bf8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005bfa:	4f24      	ldr	r7, [pc, #144]	; (8005c8c <_malloc_trim_r+0x94>)
 8005bfc:	460c      	mov	r4, r1
 8005bfe:	4606      	mov	r6, r0
 8005c00:	f7fd f882 	bl	8002d08 <__malloc_lock>
 8005c04:	68bb      	ldr	r3, [r7, #8]
 8005c06:	685d      	ldr	r5, [r3, #4]
 8005c08:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005c0c:	310f      	adds	r1, #15
 8005c0e:	f025 0503 	bic.w	r5, r5, #3
 8005c12:	4429      	add	r1, r5
 8005c14:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005c18:	f021 010f 	bic.w	r1, r1, #15
 8005c1c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005c20:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005c24:	db07      	blt.n	8005c36 <_malloc_trim_r+0x3e>
 8005c26:	2100      	movs	r1, #0
 8005c28:	4630      	mov	r0, r6
 8005c2a:	f7fd f8e3 	bl	8002df4 <_sbrk_r>
 8005c2e:	68bb      	ldr	r3, [r7, #8]
 8005c30:	442b      	add	r3, r5
 8005c32:	4298      	cmp	r0, r3
 8005c34:	d004      	beq.n	8005c40 <_malloc_trim_r+0x48>
 8005c36:	4630      	mov	r0, r6
 8005c38:	f7fd f86c 	bl	8002d14 <__malloc_unlock>
 8005c3c:	2000      	movs	r0, #0
 8005c3e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005c40:	4261      	negs	r1, r4
 8005c42:	4630      	mov	r0, r6
 8005c44:	f7fd f8d6 	bl	8002df4 <_sbrk_r>
 8005c48:	3001      	adds	r0, #1
 8005c4a:	d00d      	beq.n	8005c68 <_malloc_trim_r+0x70>
 8005c4c:	4b10      	ldr	r3, [pc, #64]	; (8005c90 <_malloc_trim_r+0x98>)
 8005c4e:	68ba      	ldr	r2, [r7, #8]
 8005c50:	6819      	ldr	r1, [r3, #0]
 8005c52:	1b2d      	subs	r5, r5, r4
 8005c54:	f045 0501 	orr.w	r5, r5, #1
 8005c58:	4630      	mov	r0, r6
 8005c5a:	1b09      	subs	r1, r1, r4
 8005c5c:	6055      	str	r5, [r2, #4]
 8005c5e:	6019      	str	r1, [r3, #0]
 8005c60:	f7fd f858 	bl	8002d14 <__malloc_unlock>
 8005c64:	2001      	movs	r0, #1
 8005c66:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005c68:	2100      	movs	r1, #0
 8005c6a:	4630      	mov	r0, r6
 8005c6c:	f7fd f8c2 	bl	8002df4 <_sbrk_r>
 8005c70:	68ba      	ldr	r2, [r7, #8]
 8005c72:	1a83      	subs	r3, r0, r2
 8005c74:	2b0f      	cmp	r3, #15
 8005c76:	ddde      	ble.n	8005c36 <_malloc_trim_r+0x3e>
 8005c78:	4c06      	ldr	r4, [pc, #24]	; (8005c94 <_malloc_trim_r+0x9c>)
 8005c7a:	4905      	ldr	r1, [pc, #20]	; (8005c90 <_malloc_trim_r+0x98>)
 8005c7c:	6824      	ldr	r4, [r4, #0]
 8005c7e:	f043 0301 	orr.w	r3, r3, #1
 8005c82:	1b00      	subs	r0, r0, r4
 8005c84:	6053      	str	r3, [r2, #4]
 8005c86:	6008      	str	r0, [r1, #0]
 8005c88:	e7d5      	b.n	8005c36 <_malloc_trim_r+0x3e>
 8005c8a:	bf00      	nop
 8005c8c:	200005d8 	.word	0x200005d8
 8005c90:	20000c08 	.word	0x20000c08
 8005c94:	200009e0 	.word	0x200009e0

08005c98 <_free_r>:
 8005c98:	2900      	cmp	r1, #0
 8005c9a:	d053      	beq.n	8005d44 <_free_r+0xac>
 8005c9c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005c9e:	460c      	mov	r4, r1
 8005ca0:	4606      	mov	r6, r0
 8005ca2:	f7fd f831 	bl	8002d08 <__malloc_lock>
 8005ca6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8005caa:	4f71      	ldr	r7, [pc, #452]	; (8005e70 <_free_r+0x1d8>)
 8005cac:	f02c 0101 	bic.w	r1, ip, #1
 8005cb0:	f1a4 0508 	sub.w	r5, r4, #8
 8005cb4:	186b      	adds	r3, r5, r1
 8005cb6:	68b8      	ldr	r0, [r7, #8]
 8005cb8:	685a      	ldr	r2, [r3, #4]
 8005cba:	4298      	cmp	r0, r3
 8005cbc:	f022 0203 	bic.w	r2, r2, #3
 8005cc0:	d053      	beq.n	8005d6a <_free_r+0xd2>
 8005cc2:	f01c 0f01 	tst.w	ip, #1
 8005cc6:	605a      	str	r2, [r3, #4]
 8005cc8:	eb03 0002 	add.w	r0, r3, r2
 8005ccc:	d13b      	bne.n	8005d46 <_free_r+0xae>
 8005cce:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005cd2:	6840      	ldr	r0, [r0, #4]
 8005cd4:	eba5 050c 	sub.w	r5, r5, ip
 8005cd8:	f107 0e08 	add.w	lr, r7, #8
 8005cdc:	68ac      	ldr	r4, [r5, #8]
 8005cde:	4574      	cmp	r4, lr
 8005ce0:	4461      	add	r1, ip
 8005ce2:	f000 0001 	and.w	r0, r0, #1
 8005ce6:	d075      	beq.n	8005dd4 <_free_r+0x13c>
 8005ce8:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005cec:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005cf0:	f8cc 4008 	str.w	r4, [ip, #8]
 8005cf4:	b360      	cbz	r0, 8005d50 <_free_r+0xb8>
 8005cf6:	f041 0301 	orr.w	r3, r1, #1
 8005cfa:	606b      	str	r3, [r5, #4]
 8005cfc:	5069      	str	r1, [r5, r1]
 8005cfe:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005d02:	d350      	bcc.n	8005da6 <_free_r+0x10e>
 8005d04:	0a4b      	lsrs	r3, r1, #9
 8005d06:	2b04      	cmp	r3, #4
 8005d08:	d870      	bhi.n	8005dec <_free_r+0x154>
 8005d0a:	098b      	lsrs	r3, r1, #6
 8005d0c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005d10:	00e4      	lsls	r4, r4, #3
 8005d12:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005d16:	1938      	adds	r0, r7, r4
 8005d18:	593b      	ldr	r3, [r7, r4]
 8005d1a:	3808      	subs	r0, #8
 8005d1c:	4298      	cmp	r0, r3
 8005d1e:	d078      	beq.n	8005e12 <_free_r+0x17a>
 8005d20:	685a      	ldr	r2, [r3, #4]
 8005d22:	f022 0203 	bic.w	r2, r2, #3
 8005d26:	428a      	cmp	r2, r1
 8005d28:	d971      	bls.n	8005e0e <_free_r+0x176>
 8005d2a:	689b      	ldr	r3, [r3, #8]
 8005d2c:	4298      	cmp	r0, r3
 8005d2e:	d1f7      	bne.n	8005d20 <_free_r+0x88>
 8005d30:	68c3      	ldr	r3, [r0, #12]
 8005d32:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005d36:	609d      	str	r5, [r3, #8]
 8005d38:	60c5      	str	r5, [r0, #12]
 8005d3a:	4630      	mov	r0, r6
 8005d3c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005d40:	f7fc bfe8 	b.w	8002d14 <__malloc_unlock>
 8005d44:	4770      	bx	lr
 8005d46:	6840      	ldr	r0, [r0, #4]
 8005d48:	f000 0001 	and.w	r0, r0, #1
 8005d4c:	2800      	cmp	r0, #0
 8005d4e:	d1d2      	bne.n	8005cf6 <_free_r+0x5e>
 8005d50:	6898      	ldr	r0, [r3, #8]
 8005d52:	4c48      	ldr	r4, [pc, #288]	; (8005e74 <_free_r+0x1dc>)
 8005d54:	4411      	add	r1, r2
 8005d56:	42a0      	cmp	r0, r4
 8005d58:	f041 0201 	orr.w	r2, r1, #1
 8005d5c:	d062      	beq.n	8005e24 <_free_r+0x18c>
 8005d5e:	68db      	ldr	r3, [r3, #12]
 8005d60:	60c3      	str	r3, [r0, #12]
 8005d62:	6098      	str	r0, [r3, #8]
 8005d64:	606a      	str	r2, [r5, #4]
 8005d66:	5069      	str	r1, [r5, r1]
 8005d68:	e7c9      	b.n	8005cfe <_free_r+0x66>
 8005d6a:	f01c 0f01 	tst.w	ip, #1
 8005d6e:	440a      	add	r2, r1
 8005d70:	d107      	bne.n	8005d82 <_free_r+0xea>
 8005d72:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005d76:	1aed      	subs	r5, r5, r3
 8005d78:	441a      	add	r2, r3
 8005d7a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8005d7e:	60cb      	str	r3, [r1, #12]
 8005d80:	6099      	str	r1, [r3, #8]
 8005d82:	4b3d      	ldr	r3, [pc, #244]	; (8005e78 <_free_r+0x1e0>)
 8005d84:	681b      	ldr	r3, [r3, #0]
 8005d86:	f042 0101 	orr.w	r1, r2, #1
 8005d8a:	4293      	cmp	r3, r2
 8005d8c:	6069      	str	r1, [r5, #4]
 8005d8e:	60bd      	str	r5, [r7, #8]
 8005d90:	d804      	bhi.n	8005d9c <_free_r+0x104>
 8005d92:	4b3a      	ldr	r3, [pc, #232]	; (8005e7c <_free_r+0x1e4>)
 8005d94:	4630      	mov	r0, r6
 8005d96:	6819      	ldr	r1, [r3, #0]
 8005d98:	f7ff ff2e 	bl	8005bf8 <_malloc_trim_r>
 8005d9c:	4630      	mov	r0, r6
 8005d9e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005da2:	f7fc bfb7 	b.w	8002d14 <__malloc_unlock>
 8005da6:	08c9      	lsrs	r1, r1, #3
 8005da8:	6878      	ldr	r0, [r7, #4]
 8005daa:	1c4a      	adds	r2, r1, #1
 8005dac:	2301      	movs	r3, #1
 8005dae:	1089      	asrs	r1, r1, #2
 8005db0:	408b      	lsls	r3, r1
 8005db2:	4303      	orrs	r3, r0
 8005db4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005db8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005dbc:	607b      	str	r3, [r7, #4]
 8005dbe:	3908      	subs	r1, #8
 8005dc0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005dc4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005dc8:	60c5      	str	r5, [r0, #12]
 8005dca:	4630      	mov	r0, r6
 8005dcc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005dd0:	f7fc bfa0 	b.w	8002d14 <__malloc_unlock>
 8005dd4:	2800      	cmp	r0, #0
 8005dd6:	d145      	bne.n	8005e64 <_free_r+0x1cc>
 8005dd8:	440a      	add	r2, r1
 8005dda:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005dde:	f042 0001 	orr.w	r0, r2, #1
 8005de2:	60cb      	str	r3, [r1, #12]
 8005de4:	6099      	str	r1, [r3, #8]
 8005de6:	6068      	str	r0, [r5, #4]
 8005de8:	50aa      	str	r2, [r5, r2]
 8005dea:	e7d7      	b.n	8005d9c <_free_r+0x104>
 8005dec:	2b14      	cmp	r3, #20
 8005dee:	d908      	bls.n	8005e02 <_free_r+0x16a>
 8005df0:	2b54      	cmp	r3, #84	; 0x54
 8005df2:	d81e      	bhi.n	8005e32 <_free_r+0x19a>
 8005df4:	0b0b      	lsrs	r3, r1, #12
 8005df6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005dfa:	00e4      	lsls	r4, r4, #3
 8005dfc:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005e00:	e789      	b.n	8005d16 <_free_r+0x7e>
 8005e02:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005e06:	00e4      	lsls	r4, r4, #3
 8005e08:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005e0c:	e783      	b.n	8005d16 <_free_r+0x7e>
 8005e0e:	4618      	mov	r0, r3
 8005e10:	e78e      	b.n	8005d30 <_free_r+0x98>
 8005e12:	1093      	asrs	r3, r2, #2
 8005e14:	6879      	ldr	r1, [r7, #4]
 8005e16:	2201      	movs	r2, #1
 8005e18:	fa02 f303 	lsl.w	r3, r2, r3
 8005e1c:	430b      	orrs	r3, r1
 8005e1e:	607b      	str	r3, [r7, #4]
 8005e20:	4603      	mov	r3, r0
 8005e22:	e786      	b.n	8005d32 <_free_r+0x9a>
 8005e24:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005e28:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005e2c:	606a      	str	r2, [r5, #4]
 8005e2e:	5069      	str	r1, [r5, r1]
 8005e30:	e7b4      	b.n	8005d9c <_free_r+0x104>
 8005e32:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005e36:	d806      	bhi.n	8005e46 <_free_r+0x1ae>
 8005e38:	0bcb      	lsrs	r3, r1, #15
 8005e3a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005e3e:	00e4      	lsls	r4, r4, #3
 8005e40:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005e44:	e767      	b.n	8005d16 <_free_r+0x7e>
 8005e46:	f240 5254 	movw	r2, #1364	; 0x554
 8005e4a:	4293      	cmp	r3, r2
 8005e4c:	d806      	bhi.n	8005e5c <_free_r+0x1c4>
 8005e4e:	0c8b      	lsrs	r3, r1, #18
 8005e50:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005e54:	00e4      	lsls	r4, r4, #3
 8005e56:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005e5a:	e75c      	b.n	8005d16 <_free_r+0x7e>
 8005e5c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005e60:	227e      	movs	r2, #126	; 0x7e
 8005e62:	e758      	b.n	8005d16 <_free_r+0x7e>
 8005e64:	f041 0201 	orr.w	r2, r1, #1
 8005e68:	606a      	str	r2, [r5, #4]
 8005e6a:	6019      	str	r1, [r3, #0]
 8005e6c:	e796      	b.n	8005d9c <_free_r+0x104>
 8005e6e:	bf00      	nop
 8005e70:	200005d8 	.word	0x200005d8
 8005e74:	200005e0 	.word	0x200005e0
 8005e78:	200009e4 	.word	0x200009e4
 8005e7c:	20000c38 	.word	0x20000c38

08005e80 <__sfvwrite_r>:
 8005e80:	6893      	ldr	r3, [r2, #8]
 8005e82:	2b00      	cmp	r3, #0
 8005e84:	f000 80e4 	beq.w	8006050 <__sfvwrite_r+0x1d0>
 8005e88:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005e8c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005e90:	b29b      	uxth	r3, r3
 8005e92:	460c      	mov	r4, r1
 8005e94:	0719      	lsls	r1, r3, #28
 8005e96:	b083      	sub	sp, #12
 8005e98:	4682      	mov	sl, r0
 8005e9a:	4690      	mov	r8, r2
 8005e9c:	d535      	bpl.n	8005f0a <__sfvwrite_r+0x8a>
 8005e9e:	6922      	ldr	r2, [r4, #16]
 8005ea0:	b39a      	cbz	r2, 8005f0a <__sfvwrite_r+0x8a>
 8005ea2:	f013 0202 	ands.w	r2, r3, #2
 8005ea6:	f8d8 6000 	ldr.w	r6, [r8]
 8005eaa:	d03d      	beq.n	8005f28 <__sfvwrite_r+0xa8>
 8005eac:	2700      	movs	r7, #0
 8005eae:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005eb2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005eb6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8006178 <__sfvwrite_r+0x2f8>
 8005eba:	463d      	mov	r5, r7
 8005ebc:	454d      	cmp	r5, r9
 8005ebe:	462b      	mov	r3, r5
 8005ec0:	463a      	mov	r2, r7
 8005ec2:	bf28      	it	cs
 8005ec4:	464b      	movcs	r3, r9
 8005ec6:	4661      	mov	r1, ip
 8005ec8:	4650      	mov	r0, sl
 8005eca:	b1d5      	cbz	r5, 8005f02 <__sfvwrite_r+0x82>
 8005ecc:	47d8      	blx	fp
 8005ece:	2800      	cmp	r0, #0
 8005ed0:	f340 80c6 	ble.w	8006060 <__sfvwrite_r+0x1e0>
 8005ed4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005ed8:	1a1b      	subs	r3, r3, r0
 8005eda:	4407      	add	r7, r0
 8005edc:	1a2d      	subs	r5, r5, r0
 8005ede:	f8c8 3008 	str.w	r3, [r8, #8]
 8005ee2:	2b00      	cmp	r3, #0
 8005ee4:	f000 80b0 	beq.w	8006048 <__sfvwrite_r+0x1c8>
 8005ee8:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005eec:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005ef0:	454d      	cmp	r5, r9
 8005ef2:	462b      	mov	r3, r5
 8005ef4:	463a      	mov	r2, r7
 8005ef6:	bf28      	it	cs
 8005ef8:	464b      	movcs	r3, r9
 8005efa:	4661      	mov	r1, ip
 8005efc:	4650      	mov	r0, sl
 8005efe:	2d00      	cmp	r5, #0
 8005f00:	d1e4      	bne.n	8005ecc <__sfvwrite_r+0x4c>
 8005f02:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005f06:	3608      	adds	r6, #8
 8005f08:	e7d8      	b.n	8005ebc <__sfvwrite_r+0x3c>
 8005f0a:	4621      	mov	r1, r4
 8005f0c:	4650      	mov	r0, sl
 8005f0e:	f7fe fd03 	bl	8004918 <__swsetup_r>
 8005f12:	2800      	cmp	r0, #0
 8005f14:	f040 812a 	bne.w	800616c <__sfvwrite_r+0x2ec>
 8005f18:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005f1c:	f8d8 6000 	ldr.w	r6, [r8]
 8005f20:	b29b      	uxth	r3, r3
 8005f22:	f013 0202 	ands.w	r2, r3, #2
 8005f26:	d1c1      	bne.n	8005eac <__sfvwrite_r+0x2c>
 8005f28:	f013 0901 	ands.w	r9, r3, #1
 8005f2c:	d15d      	bne.n	8005fea <__sfvwrite_r+0x16a>
 8005f2e:	68a7      	ldr	r7, [r4, #8]
 8005f30:	6820      	ldr	r0, [r4, #0]
 8005f32:	464d      	mov	r5, r9
 8005f34:	2d00      	cmp	r5, #0
 8005f36:	d054      	beq.n	8005fe2 <__sfvwrite_r+0x162>
 8005f38:	059a      	lsls	r2, r3, #22
 8005f3a:	f140 809b 	bpl.w	8006074 <__sfvwrite_r+0x1f4>
 8005f3e:	42af      	cmp	r7, r5
 8005f40:	46bb      	mov	fp, r7
 8005f42:	f200 80d8 	bhi.w	80060f6 <__sfvwrite_r+0x276>
 8005f46:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005f4a:	d02f      	beq.n	8005fac <__sfvwrite_r+0x12c>
 8005f4c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005f50:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005f54:	eba0 0b01 	sub.w	fp, r0, r1
 8005f58:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005f5c:	1c68      	adds	r0, r5, #1
 8005f5e:	107f      	asrs	r7, r7, #1
 8005f60:	4458      	add	r0, fp
 8005f62:	42b8      	cmp	r0, r7
 8005f64:	463a      	mov	r2, r7
 8005f66:	bf84      	itt	hi
 8005f68:	4607      	movhi	r7, r0
 8005f6a:	463a      	movhi	r2, r7
 8005f6c:	055b      	lsls	r3, r3, #21
 8005f6e:	f140 80d3 	bpl.w	8006118 <__sfvwrite_r+0x298>
 8005f72:	4611      	mov	r1, r2
 8005f74:	4650      	mov	r0, sl
 8005f76:	f7fc fbd9 	bl	800272c <_malloc_r>
 8005f7a:	2800      	cmp	r0, #0
 8005f7c:	f000 80f0 	beq.w	8006160 <__sfvwrite_r+0x2e0>
 8005f80:	465a      	mov	r2, fp
 8005f82:	6921      	ldr	r1, [r4, #16]
 8005f84:	9001      	str	r0, [sp, #4]
 8005f86:	f7fa fabb 	bl	8000500 <memcpy>
 8005f8a:	89a2      	ldrh	r2, [r4, #12]
 8005f8c:	9b01      	ldr	r3, [sp, #4]
 8005f8e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005f92:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005f96:	81a2      	strh	r2, [r4, #12]
 8005f98:	eba7 020b 	sub.w	r2, r7, fp
 8005f9c:	eb03 000b 	add.w	r0, r3, fp
 8005fa0:	6167      	str	r7, [r4, #20]
 8005fa2:	6123      	str	r3, [r4, #16]
 8005fa4:	6020      	str	r0, [r4, #0]
 8005fa6:	60a2      	str	r2, [r4, #8]
 8005fa8:	462f      	mov	r7, r5
 8005faa:	46ab      	mov	fp, r5
 8005fac:	465a      	mov	r2, fp
 8005fae:	4649      	mov	r1, r9
 8005fb0:	f000 f99c 	bl	80062ec <memmove>
 8005fb4:	68a2      	ldr	r2, [r4, #8]
 8005fb6:	6823      	ldr	r3, [r4, #0]
 8005fb8:	1bd2      	subs	r2, r2, r7
 8005fba:	445b      	add	r3, fp
 8005fbc:	462f      	mov	r7, r5
 8005fbe:	60a2      	str	r2, [r4, #8]
 8005fc0:	6023      	str	r3, [r4, #0]
 8005fc2:	2500      	movs	r5, #0
 8005fc4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005fc8:	1bdb      	subs	r3, r3, r7
 8005fca:	44b9      	add	r9, r7
 8005fcc:	f8c8 3008 	str.w	r3, [r8, #8]
 8005fd0:	2b00      	cmp	r3, #0
 8005fd2:	d039      	beq.n	8006048 <__sfvwrite_r+0x1c8>
 8005fd4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005fd8:	68a7      	ldr	r7, [r4, #8]
 8005fda:	6820      	ldr	r0, [r4, #0]
 8005fdc:	b29b      	uxth	r3, r3
 8005fde:	2d00      	cmp	r5, #0
 8005fe0:	d1aa      	bne.n	8005f38 <__sfvwrite_r+0xb8>
 8005fe2:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005fe6:	3608      	adds	r6, #8
 8005fe8:	e7a4      	b.n	8005f34 <__sfvwrite_r+0xb4>
 8005fea:	4633      	mov	r3, r6
 8005fec:	4691      	mov	r9, r2
 8005fee:	4610      	mov	r0, r2
 8005ff0:	4617      	mov	r7, r2
 8005ff2:	464e      	mov	r6, r9
 8005ff4:	469b      	mov	fp, r3
 8005ff6:	2f00      	cmp	r7, #0
 8005ff8:	d06b      	beq.n	80060d2 <__sfvwrite_r+0x252>
 8005ffa:	2800      	cmp	r0, #0
 8005ffc:	d071      	beq.n	80060e2 <__sfvwrite_r+0x262>
 8005ffe:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8006002:	6820      	ldr	r0, [r4, #0]
 8006004:	45b9      	cmp	r9, r7
 8006006:	464b      	mov	r3, r9
 8006008:	bf28      	it	cs
 800600a:	463b      	movcs	r3, r7
 800600c:	4288      	cmp	r0, r1
 800600e:	d903      	bls.n	8006018 <__sfvwrite_r+0x198>
 8006010:	68a5      	ldr	r5, [r4, #8]
 8006012:	4415      	add	r5, r2
 8006014:	42ab      	cmp	r3, r5
 8006016:	dc71      	bgt.n	80060fc <__sfvwrite_r+0x27c>
 8006018:	429a      	cmp	r2, r3
 800601a:	f300 8093 	bgt.w	8006144 <__sfvwrite_r+0x2c4>
 800601e:	4613      	mov	r3, r2
 8006020:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8006022:	69e1      	ldr	r1, [r4, #28]
 8006024:	4632      	mov	r2, r6
 8006026:	4650      	mov	r0, sl
 8006028:	47a8      	blx	r5
 800602a:	1e05      	subs	r5, r0, #0
 800602c:	dd18      	ble.n	8006060 <__sfvwrite_r+0x1e0>
 800602e:	ebb9 0905 	subs.w	r9, r9, r5
 8006032:	d00f      	beq.n	8006054 <__sfvwrite_r+0x1d4>
 8006034:	2001      	movs	r0, #1
 8006036:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800603a:	1b5b      	subs	r3, r3, r5
 800603c:	442e      	add	r6, r5
 800603e:	1b7f      	subs	r7, r7, r5
 8006040:	f8c8 3008 	str.w	r3, [r8, #8]
 8006044:	2b00      	cmp	r3, #0
 8006046:	d1d6      	bne.n	8005ff6 <__sfvwrite_r+0x176>
 8006048:	2000      	movs	r0, #0
 800604a:	b003      	add	sp, #12
 800604c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006050:	2000      	movs	r0, #0
 8006052:	4770      	bx	lr
 8006054:	4621      	mov	r1, r4
 8006056:	4650      	mov	r0, sl
 8006058:	f7ff fd20 	bl	8005a9c <_fflush_r>
 800605c:	2800      	cmp	r0, #0
 800605e:	d0ea      	beq.n	8006036 <__sfvwrite_r+0x1b6>
 8006060:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006064:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006068:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800606c:	81a3      	strh	r3, [r4, #12]
 800606e:	b003      	add	sp, #12
 8006070:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006074:	6923      	ldr	r3, [r4, #16]
 8006076:	4283      	cmp	r3, r0
 8006078:	d315      	bcc.n	80060a6 <__sfvwrite_r+0x226>
 800607a:	6961      	ldr	r1, [r4, #20]
 800607c:	42a9      	cmp	r1, r5
 800607e:	d812      	bhi.n	80060a6 <__sfvwrite_r+0x226>
 8006080:	4b3c      	ldr	r3, [pc, #240]	; (8006174 <__sfvwrite_r+0x2f4>)
 8006082:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8006084:	429d      	cmp	r5, r3
 8006086:	bf94      	ite	ls
 8006088:	462b      	movls	r3, r5
 800608a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 800608e:	464a      	mov	r2, r9
 8006090:	fb93 f3f1 	sdiv	r3, r3, r1
 8006094:	4650      	mov	r0, sl
 8006096:	fb01 f303 	mul.w	r3, r1, r3
 800609a:	69e1      	ldr	r1, [r4, #28]
 800609c:	47b8      	blx	r7
 800609e:	1e07      	subs	r7, r0, #0
 80060a0:	ddde      	ble.n	8006060 <__sfvwrite_r+0x1e0>
 80060a2:	1bed      	subs	r5, r5, r7
 80060a4:	e78e      	b.n	8005fc4 <__sfvwrite_r+0x144>
 80060a6:	42af      	cmp	r7, r5
 80060a8:	bf28      	it	cs
 80060aa:	462f      	movcs	r7, r5
 80060ac:	463a      	mov	r2, r7
 80060ae:	4649      	mov	r1, r9
 80060b0:	f000 f91c 	bl	80062ec <memmove>
 80060b4:	68a3      	ldr	r3, [r4, #8]
 80060b6:	6822      	ldr	r2, [r4, #0]
 80060b8:	1bdb      	subs	r3, r3, r7
 80060ba:	443a      	add	r2, r7
 80060bc:	60a3      	str	r3, [r4, #8]
 80060be:	6022      	str	r2, [r4, #0]
 80060c0:	2b00      	cmp	r3, #0
 80060c2:	d1ee      	bne.n	80060a2 <__sfvwrite_r+0x222>
 80060c4:	4621      	mov	r1, r4
 80060c6:	4650      	mov	r0, sl
 80060c8:	f7ff fce8 	bl	8005a9c <_fflush_r>
 80060cc:	2800      	cmp	r0, #0
 80060ce:	d0e8      	beq.n	80060a2 <__sfvwrite_r+0x222>
 80060d0:	e7c6      	b.n	8006060 <__sfvwrite_r+0x1e0>
 80060d2:	f10b 0308 	add.w	r3, fp, #8
 80060d6:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 80060da:	469b      	mov	fp, r3
 80060dc:	3308      	adds	r3, #8
 80060de:	2f00      	cmp	r7, #0
 80060e0:	d0f9      	beq.n	80060d6 <__sfvwrite_r+0x256>
 80060e2:	463a      	mov	r2, r7
 80060e4:	210a      	movs	r1, #10
 80060e6:	4630      	mov	r0, r6
 80060e8:	f7fa fb1a 	bl	8000720 <memchr>
 80060ec:	b338      	cbz	r0, 800613e <__sfvwrite_r+0x2be>
 80060ee:	3001      	adds	r0, #1
 80060f0:	eba0 0906 	sub.w	r9, r0, r6
 80060f4:	e783      	b.n	8005ffe <__sfvwrite_r+0x17e>
 80060f6:	462f      	mov	r7, r5
 80060f8:	46ab      	mov	fp, r5
 80060fa:	e757      	b.n	8005fac <__sfvwrite_r+0x12c>
 80060fc:	4631      	mov	r1, r6
 80060fe:	462a      	mov	r2, r5
 8006100:	f000 f8f4 	bl	80062ec <memmove>
 8006104:	6823      	ldr	r3, [r4, #0]
 8006106:	442b      	add	r3, r5
 8006108:	6023      	str	r3, [r4, #0]
 800610a:	4621      	mov	r1, r4
 800610c:	4650      	mov	r0, sl
 800610e:	f7ff fcc5 	bl	8005a9c <_fflush_r>
 8006112:	2800      	cmp	r0, #0
 8006114:	d08b      	beq.n	800602e <__sfvwrite_r+0x1ae>
 8006116:	e7a3      	b.n	8006060 <__sfvwrite_r+0x1e0>
 8006118:	4650      	mov	r0, sl
 800611a:	f000 fc55 	bl	80069c8 <_realloc_r>
 800611e:	4603      	mov	r3, r0
 8006120:	2800      	cmp	r0, #0
 8006122:	f47f af39 	bne.w	8005f98 <__sfvwrite_r+0x118>
 8006126:	6921      	ldr	r1, [r4, #16]
 8006128:	4650      	mov	r0, sl
 800612a:	f7ff fdb5 	bl	8005c98 <_free_r>
 800612e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006132:	220c      	movs	r2, #12
 8006134:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8006138:	f8ca 2000 	str.w	r2, [sl]
 800613c:	e792      	b.n	8006064 <__sfvwrite_r+0x1e4>
 800613e:	f107 0901 	add.w	r9, r7, #1
 8006142:	e75c      	b.n	8005ffe <__sfvwrite_r+0x17e>
 8006144:	461a      	mov	r2, r3
 8006146:	4631      	mov	r1, r6
 8006148:	9301      	str	r3, [sp, #4]
 800614a:	f000 f8cf 	bl	80062ec <memmove>
 800614e:	9b01      	ldr	r3, [sp, #4]
 8006150:	68a1      	ldr	r1, [r4, #8]
 8006152:	6822      	ldr	r2, [r4, #0]
 8006154:	1ac9      	subs	r1, r1, r3
 8006156:	441a      	add	r2, r3
 8006158:	60a1      	str	r1, [r4, #8]
 800615a:	6022      	str	r2, [r4, #0]
 800615c:	461d      	mov	r5, r3
 800615e:	e766      	b.n	800602e <__sfvwrite_r+0x1ae>
 8006160:	230c      	movs	r3, #12
 8006162:	f8ca 3000 	str.w	r3, [sl]
 8006166:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800616a:	e77b      	b.n	8006064 <__sfvwrite_r+0x1e4>
 800616c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006170:	e76b      	b.n	800604a <__sfvwrite_r+0x1ca>
 8006172:	bf00      	nop
 8006174:	7ffffffe 	.word	0x7ffffffe
 8006178:	7ffffc00 	.word	0x7ffffc00

0800617c <_fwalk_reent>:
 800617c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006180:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8006184:	d01f      	beq.n	80061c6 <_fwalk_reent+0x4a>
 8006186:	4688      	mov	r8, r1
 8006188:	4606      	mov	r6, r0
 800618a:	f04f 0900 	mov.w	r9, #0
 800618e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8006192:	3d01      	subs	r5, #1
 8006194:	d411      	bmi.n	80061ba <_fwalk_reent+0x3e>
 8006196:	89a3      	ldrh	r3, [r4, #12]
 8006198:	2b01      	cmp	r3, #1
 800619a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 800619e:	4621      	mov	r1, r4
 80061a0:	4630      	mov	r0, r6
 80061a2:	d906      	bls.n	80061b2 <_fwalk_reent+0x36>
 80061a4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80061a8:	3301      	adds	r3, #1
 80061aa:	d002      	beq.n	80061b2 <_fwalk_reent+0x36>
 80061ac:	47c0      	blx	r8
 80061ae:	ea49 0900 	orr.w	r9, r9, r0
 80061b2:	1c6b      	adds	r3, r5, #1
 80061b4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 80061b8:	d1ed      	bne.n	8006196 <_fwalk_reent+0x1a>
 80061ba:	683f      	ldr	r7, [r7, #0]
 80061bc:	2f00      	cmp	r7, #0
 80061be:	d1e6      	bne.n	800618e <_fwalk_reent+0x12>
 80061c0:	4648      	mov	r0, r9
 80061c2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80061c6:	46b9      	mov	r9, r7
 80061c8:	4648      	mov	r0, r9
 80061ca:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80061ce:	bf00      	nop

080061d0 <_localeconv_r>:
 80061d0:	4a04      	ldr	r2, [pc, #16]	; (80061e4 <_localeconv_r+0x14>)
 80061d2:	4b05      	ldr	r3, [pc, #20]	; (80061e8 <_localeconv_r+0x18>)
 80061d4:	6812      	ldr	r2, [r2, #0]
 80061d6:	6b50      	ldr	r0, [r2, #52]	; 0x34
 80061d8:	2800      	cmp	r0, #0
 80061da:	bf08      	it	eq
 80061dc:	4618      	moveq	r0, r3
 80061de:	30f0      	adds	r0, #240	; 0xf0
 80061e0:	4770      	bx	lr
 80061e2:	bf00      	nop
 80061e4:	200001a8 	.word	0x200001a8
 80061e8:	200009ec 	.word	0x200009ec

080061ec <__retarget_lock_init_recursive>:
 80061ec:	4770      	bx	lr
 80061ee:	bf00      	nop

080061f0 <__retarget_lock_close_recursive>:
 80061f0:	4770      	bx	lr
 80061f2:	bf00      	nop

080061f4 <__retarget_lock_acquire_recursive>:
 80061f4:	4770      	bx	lr
 80061f6:	bf00      	nop

080061f8 <__retarget_lock_release_recursive>:
 80061f8:	4770      	bx	lr
 80061fa:	bf00      	nop

080061fc <__swhatbuf_r>:
 80061fc:	b570      	push	{r4, r5, r6, lr}
 80061fe:	460c      	mov	r4, r1
 8006200:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006204:	2900      	cmp	r1, #0
 8006206:	b096      	sub	sp, #88	; 0x58
 8006208:	4615      	mov	r5, r2
 800620a:	461e      	mov	r6, r3
 800620c:	da0f      	bge.n	800622e <__swhatbuf_r+0x32>
 800620e:	89a2      	ldrh	r2, [r4, #12]
 8006210:	2300      	movs	r3, #0
 8006212:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8006216:	6033      	str	r3, [r6, #0]
 8006218:	d104      	bne.n	8006224 <__swhatbuf_r+0x28>
 800621a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800621e:	602b      	str	r3, [r5, #0]
 8006220:	b016      	add	sp, #88	; 0x58
 8006222:	bd70      	pop	{r4, r5, r6, pc}
 8006224:	2240      	movs	r2, #64	; 0x40
 8006226:	4618      	mov	r0, r3
 8006228:	602a      	str	r2, [r5, #0]
 800622a:	b016      	add	sp, #88	; 0x58
 800622c:	bd70      	pop	{r4, r5, r6, pc}
 800622e:	466a      	mov	r2, sp
 8006230:	f001 f80e 	bl	8007250 <_fstat_r>
 8006234:	2800      	cmp	r0, #0
 8006236:	dbea      	blt.n	800620e <__swhatbuf_r+0x12>
 8006238:	9b01      	ldr	r3, [sp, #4]
 800623a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 800623e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8006242:	fab3 f383 	clz	r3, r3
 8006246:	095b      	lsrs	r3, r3, #5
 8006248:	f44f 6280 	mov.w	r2, #1024	; 0x400
 800624c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8006250:	6033      	str	r3, [r6, #0]
 8006252:	602a      	str	r2, [r5, #0]
 8006254:	b016      	add	sp, #88	; 0x58
 8006256:	bd70      	pop	{r4, r5, r6, pc}

08006258 <__smakebuf_r>:
 8006258:	898a      	ldrh	r2, [r1, #12]
 800625a:	0792      	lsls	r2, r2, #30
 800625c:	460b      	mov	r3, r1
 800625e:	d506      	bpl.n	800626e <__smakebuf_r+0x16>
 8006260:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8006264:	2101      	movs	r1, #1
 8006266:	601a      	str	r2, [r3, #0]
 8006268:	e9c3 2104 	strd	r2, r1, [r3, #16]
 800626c:	4770      	bx	lr
 800626e:	b570      	push	{r4, r5, r6, lr}
 8006270:	b082      	sub	sp, #8
 8006272:	ab01      	add	r3, sp, #4
 8006274:	466a      	mov	r2, sp
 8006276:	460c      	mov	r4, r1
 8006278:	4605      	mov	r5, r0
 800627a:	f7ff ffbf 	bl	80061fc <__swhatbuf_r>
 800627e:	9900      	ldr	r1, [sp, #0]
 8006280:	4606      	mov	r6, r0
 8006282:	4628      	mov	r0, r5
 8006284:	f7fc fa52 	bl	800272c <_malloc_r>
 8006288:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800628c:	b1d8      	cbz	r0, 80062c6 <__smakebuf_r+0x6e>
 800628e:	4916      	ldr	r1, [pc, #88]	; (80062e8 <__smakebuf_r+0x90>)
 8006290:	63e9      	str	r1, [r5, #60]	; 0x3c
 8006292:	9a01      	ldr	r2, [sp, #4]
 8006294:	9900      	ldr	r1, [sp, #0]
 8006296:	6020      	str	r0, [r4, #0]
 8006298:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800629c:	81a3      	strh	r3, [r4, #12]
 800629e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 80062a2:	b91a      	cbnz	r2, 80062ac <__smakebuf_r+0x54>
 80062a4:	4333      	orrs	r3, r6
 80062a6:	81a3      	strh	r3, [r4, #12]
 80062a8:	b002      	add	sp, #8
 80062aa:	bd70      	pop	{r4, r5, r6, pc}
 80062ac:	4628      	mov	r0, r5
 80062ae:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80062b2:	f000 ffe1 	bl	8007278 <_isatty_r>
 80062b6:	b1a0      	cbz	r0, 80062e2 <__smakebuf_r+0x8a>
 80062b8:	89a3      	ldrh	r3, [r4, #12]
 80062ba:	f023 0303 	bic.w	r3, r3, #3
 80062be:	f043 0301 	orr.w	r3, r3, #1
 80062c2:	b21b      	sxth	r3, r3
 80062c4:	e7ee      	b.n	80062a4 <__smakebuf_r+0x4c>
 80062c6:	059a      	lsls	r2, r3, #22
 80062c8:	d4ee      	bmi.n	80062a8 <__smakebuf_r+0x50>
 80062ca:	f023 0303 	bic.w	r3, r3, #3
 80062ce:	f104 0243 	add.w	r2, r4, #67	; 0x43
 80062d2:	f043 0302 	orr.w	r3, r3, #2
 80062d6:	2101      	movs	r1, #1
 80062d8:	81a3      	strh	r3, [r4, #12]
 80062da:	6022      	str	r2, [r4, #0]
 80062dc:	e9c4 2104 	strd	r2, r1, [r4, #16]
 80062e0:	e7e2      	b.n	80062a8 <__smakebuf_r+0x50>
 80062e2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80062e6:	e7dd      	b.n	80062a4 <__smakebuf_r+0x4c>
 80062e8:	08005b49 	.word	0x08005b49

080062ec <memmove>:
 80062ec:	4288      	cmp	r0, r1
 80062ee:	b4f0      	push	{r4, r5, r6, r7}
 80062f0:	d90d      	bls.n	800630e <memmove+0x22>
 80062f2:	188b      	adds	r3, r1, r2
 80062f4:	4283      	cmp	r3, r0
 80062f6:	d90a      	bls.n	800630e <memmove+0x22>
 80062f8:	1884      	adds	r4, r0, r2
 80062fa:	b132      	cbz	r2, 800630a <memmove+0x1e>
 80062fc:	4622      	mov	r2, r4
 80062fe:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8006302:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8006306:	4299      	cmp	r1, r3
 8006308:	d1f9      	bne.n	80062fe <memmove+0x12>
 800630a:	bcf0      	pop	{r4, r5, r6, r7}
 800630c:	4770      	bx	lr
 800630e:	2a0f      	cmp	r2, #15
 8006310:	d949      	bls.n	80063a6 <memmove+0xba>
 8006312:	ea40 0301 	orr.w	r3, r0, r1
 8006316:	079b      	lsls	r3, r3, #30
 8006318:	d147      	bne.n	80063aa <memmove+0xbe>
 800631a:	f1a2 0310 	sub.w	r3, r2, #16
 800631e:	091b      	lsrs	r3, r3, #4
 8006320:	f101 0720 	add.w	r7, r1, #32
 8006324:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8006328:	f101 0410 	add.w	r4, r1, #16
 800632c:	f100 0510 	add.w	r5, r0, #16
 8006330:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8006334:	f845 6c10 	str.w	r6, [r5, #-16]
 8006338:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 800633c:	f845 6c0c 	str.w	r6, [r5, #-12]
 8006340:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8006344:	f845 6c08 	str.w	r6, [r5, #-8]
 8006348:	f854 6c04 	ldr.w	r6, [r4, #-4]
 800634c:	f845 6c04 	str.w	r6, [r5, #-4]
 8006350:	3410      	adds	r4, #16
 8006352:	42bc      	cmp	r4, r7
 8006354:	f105 0510 	add.w	r5, r5, #16
 8006358:	d1ea      	bne.n	8006330 <memmove+0x44>
 800635a:	3301      	adds	r3, #1
 800635c:	f002 050f 	and.w	r5, r2, #15
 8006360:	011b      	lsls	r3, r3, #4
 8006362:	2d03      	cmp	r5, #3
 8006364:	4419      	add	r1, r3
 8006366:	4403      	add	r3, r0
 8006368:	d921      	bls.n	80063ae <memmove+0xc2>
 800636a:	1f1f      	subs	r7, r3, #4
 800636c:	460e      	mov	r6, r1
 800636e:	462c      	mov	r4, r5
 8006370:	3c04      	subs	r4, #4
 8006372:	f856 cb04 	ldr.w	ip, [r6], #4
 8006376:	f847 cf04 	str.w	ip, [r7, #4]!
 800637a:	2c03      	cmp	r4, #3
 800637c:	d8f8      	bhi.n	8006370 <memmove+0x84>
 800637e:	1f2c      	subs	r4, r5, #4
 8006380:	f024 0403 	bic.w	r4, r4, #3
 8006384:	3404      	adds	r4, #4
 8006386:	4423      	add	r3, r4
 8006388:	4421      	add	r1, r4
 800638a:	f002 0203 	and.w	r2, r2, #3
 800638e:	2a00      	cmp	r2, #0
 8006390:	d0bb      	beq.n	800630a <memmove+0x1e>
 8006392:	3b01      	subs	r3, #1
 8006394:	440a      	add	r2, r1
 8006396:	f811 4b01 	ldrb.w	r4, [r1], #1
 800639a:	f803 4f01 	strb.w	r4, [r3, #1]!
 800639e:	4291      	cmp	r1, r2
 80063a0:	d1f9      	bne.n	8006396 <memmove+0xaa>
 80063a2:	bcf0      	pop	{r4, r5, r6, r7}
 80063a4:	4770      	bx	lr
 80063a6:	4603      	mov	r3, r0
 80063a8:	e7f1      	b.n	800638e <memmove+0xa2>
 80063aa:	4603      	mov	r3, r0
 80063ac:	e7f1      	b.n	8006392 <memmove+0xa6>
 80063ae:	462a      	mov	r2, r5
 80063b0:	e7ed      	b.n	800638e <memmove+0xa2>
 80063b2:	bf00      	nop

080063b4 <_Balloc>:
 80063b4:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80063b6:	b570      	push	{r4, r5, r6, lr}
 80063b8:	4605      	mov	r5, r0
 80063ba:	460c      	mov	r4, r1
 80063bc:	b14b      	cbz	r3, 80063d2 <_Balloc+0x1e>
 80063be:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 80063c2:	b180      	cbz	r0, 80063e6 <_Balloc+0x32>
 80063c4:	6802      	ldr	r2, [r0, #0]
 80063c6:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 80063ca:	2300      	movs	r3, #0
 80063cc:	e9c0 3303 	strd	r3, r3, [r0, #12]
 80063d0:	bd70      	pop	{r4, r5, r6, pc}
 80063d2:	2221      	movs	r2, #33	; 0x21
 80063d4:	2104      	movs	r1, #4
 80063d6:	f000 fe0b 	bl	8006ff0 <_calloc_r>
 80063da:	4603      	mov	r3, r0
 80063dc:	64e8      	str	r0, [r5, #76]	; 0x4c
 80063de:	2800      	cmp	r0, #0
 80063e0:	d1ed      	bne.n	80063be <_Balloc+0xa>
 80063e2:	2000      	movs	r0, #0
 80063e4:	bd70      	pop	{r4, r5, r6, pc}
 80063e6:	2101      	movs	r1, #1
 80063e8:	fa01 f604 	lsl.w	r6, r1, r4
 80063ec:	1d72      	adds	r2, r6, #5
 80063ee:	4628      	mov	r0, r5
 80063f0:	0092      	lsls	r2, r2, #2
 80063f2:	f000 fdfd 	bl	8006ff0 <_calloc_r>
 80063f6:	2800      	cmp	r0, #0
 80063f8:	d0f3      	beq.n	80063e2 <_Balloc+0x2e>
 80063fa:	e9c0 4601 	strd	r4, r6, [r0, #4]
 80063fe:	e7e4      	b.n	80063ca <_Balloc+0x16>

08006400 <_Bfree>:
 8006400:	b131      	cbz	r1, 8006410 <_Bfree+0x10>
 8006402:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006404:	684a      	ldr	r2, [r1, #4]
 8006406:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800640a:	6008      	str	r0, [r1, #0]
 800640c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006410:	4770      	bx	lr
 8006412:	bf00      	nop

08006414 <__multadd>:
 8006414:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006416:	690c      	ldr	r4, [r1, #16]
 8006418:	b083      	sub	sp, #12
 800641a:	460d      	mov	r5, r1
 800641c:	4606      	mov	r6, r0
 800641e:	f101 0c14 	add.w	ip, r1, #20
 8006422:	2700      	movs	r7, #0
 8006424:	f8dc 0000 	ldr.w	r0, [ip]
 8006428:	b281      	uxth	r1, r0
 800642a:	fb02 3301 	mla	r3, r2, r1, r3
 800642e:	0c01      	lsrs	r1, r0, #16
 8006430:	0c18      	lsrs	r0, r3, #16
 8006432:	fb02 0101 	mla	r1, r2, r1, r0
 8006436:	b29b      	uxth	r3, r3
 8006438:	3701      	adds	r7, #1
 800643a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800643e:	42bc      	cmp	r4, r7
 8006440:	f84c 3b04 	str.w	r3, [ip], #4
 8006444:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006448:	dcec      	bgt.n	8006424 <__multadd+0x10>
 800644a:	b13b      	cbz	r3, 800645c <__multadd+0x48>
 800644c:	68aa      	ldr	r2, [r5, #8]
 800644e:	42a2      	cmp	r2, r4
 8006450:	dd07      	ble.n	8006462 <__multadd+0x4e>
 8006452:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8006456:	3401      	adds	r4, #1
 8006458:	6153      	str	r3, [r2, #20]
 800645a:	612c      	str	r4, [r5, #16]
 800645c:	4628      	mov	r0, r5
 800645e:	b003      	add	sp, #12
 8006460:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006462:	6869      	ldr	r1, [r5, #4]
 8006464:	9301      	str	r3, [sp, #4]
 8006466:	3101      	adds	r1, #1
 8006468:	4630      	mov	r0, r6
 800646a:	f7ff ffa3 	bl	80063b4 <_Balloc>
 800646e:	692a      	ldr	r2, [r5, #16]
 8006470:	3202      	adds	r2, #2
 8006472:	f105 010c 	add.w	r1, r5, #12
 8006476:	4607      	mov	r7, r0
 8006478:	0092      	lsls	r2, r2, #2
 800647a:	300c      	adds	r0, #12
 800647c:	f7fa f840 	bl	8000500 <memcpy>
 8006480:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006482:	6869      	ldr	r1, [r5, #4]
 8006484:	9b01      	ldr	r3, [sp, #4]
 8006486:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800648a:	6028      	str	r0, [r5, #0]
 800648c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006490:	463d      	mov	r5, r7
 8006492:	e7de      	b.n	8006452 <__multadd+0x3e>

08006494 <__hi0bits>:
 8006494:	0c02      	lsrs	r2, r0, #16
 8006496:	0412      	lsls	r2, r2, #16
 8006498:	4603      	mov	r3, r0
 800649a:	b9c2      	cbnz	r2, 80064ce <__hi0bits+0x3a>
 800649c:	0403      	lsls	r3, r0, #16
 800649e:	2010      	movs	r0, #16
 80064a0:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 80064a4:	bf04      	itt	eq
 80064a6:	021b      	lsleq	r3, r3, #8
 80064a8:	3008      	addeq	r0, #8
 80064aa:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 80064ae:	bf04      	itt	eq
 80064b0:	011b      	lsleq	r3, r3, #4
 80064b2:	3004      	addeq	r0, #4
 80064b4:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 80064b8:	bf04      	itt	eq
 80064ba:	009b      	lsleq	r3, r3, #2
 80064bc:	3002      	addeq	r0, #2
 80064be:	2b00      	cmp	r3, #0
 80064c0:	db04      	blt.n	80064cc <__hi0bits+0x38>
 80064c2:	005b      	lsls	r3, r3, #1
 80064c4:	d501      	bpl.n	80064ca <__hi0bits+0x36>
 80064c6:	3001      	adds	r0, #1
 80064c8:	4770      	bx	lr
 80064ca:	2020      	movs	r0, #32
 80064cc:	4770      	bx	lr
 80064ce:	2000      	movs	r0, #0
 80064d0:	e7e6      	b.n	80064a0 <__hi0bits+0xc>
 80064d2:	bf00      	nop

080064d4 <__lo0bits>:
 80064d4:	6803      	ldr	r3, [r0, #0]
 80064d6:	f013 0207 	ands.w	r2, r3, #7
 80064da:	4601      	mov	r1, r0
 80064dc:	d007      	beq.n	80064ee <__lo0bits+0x1a>
 80064de:	07da      	lsls	r2, r3, #31
 80064e0:	d41f      	bmi.n	8006522 <__lo0bits+0x4e>
 80064e2:	0798      	lsls	r0, r3, #30
 80064e4:	d51f      	bpl.n	8006526 <__lo0bits+0x52>
 80064e6:	085b      	lsrs	r3, r3, #1
 80064e8:	600b      	str	r3, [r1, #0]
 80064ea:	2001      	movs	r0, #1
 80064ec:	4770      	bx	lr
 80064ee:	b298      	uxth	r0, r3
 80064f0:	b1a0      	cbz	r0, 800651c <__lo0bits+0x48>
 80064f2:	4610      	mov	r0, r2
 80064f4:	f013 0fff 	tst.w	r3, #255	; 0xff
 80064f8:	bf04      	itt	eq
 80064fa:	0a1b      	lsreq	r3, r3, #8
 80064fc:	3008      	addeq	r0, #8
 80064fe:	071a      	lsls	r2, r3, #28
 8006500:	bf04      	itt	eq
 8006502:	091b      	lsreq	r3, r3, #4
 8006504:	3004      	addeq	r0, #4
 8006506:	079a      	lsls	r2, r3, #30
 8006508:	bf04      	itt	eq
 800650a:	089b      	lsreq	r3, r3, #2
 800650c:	3002      	addeq	r0, #2
 800650e:	07da      	lsls	r2, r3, #31
 8006510:	d402      	bmi.n	8006518 <__lo0bits+0x44>
 8006512:	085b      	lsrs	r3, r3, #1
 8006514:	d00b      	beq.n	800652e <__lo0bits+0x5a>
 8006516:	3001      	adds	r0, #1
 8006518:	600b      	str	r3, [r1, #0]
 800651a:	4770      	bx	lr
 800651c:	0c1b      	lsrs	r3, r3, #16
 800651e:	2010      	movs	r0, #16
 8006520:	e7e8      	b.n	80064f4 <__lo0bits+0x20>
 8006522:	2000      	movs	r0, #0
 8006524:	4770      	bx	lr
 8006526:	089b      	lsrs	r3, r3, #2
 8006528:	600b      	str	r3, [r1, #0]
 800652a:	2002      	movs	r0, #2
 800652c:	4770      	bx	lr
 800652e:	2020      	movs	r0, #32
 8006530:	4770      	bx	lr
 8006532:	bf00      	nop

08006534 <__i2b>:
 8006534:	b510      	push	{r4, lr}
 8006536:	460c      	mov	r4, r1
 8006538:	2101      	movs	r1, #1
 800653a:	f7ff ff3b 	bl	80063b4 <_Balloc>
 800653e:	2201      	movs	r2, #1
 8006540:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8006544:	bd10      	pop	{r4, pc}
 8006546:	bf00      	nop

08006548 <__multiply>:
 8006548:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800654c:	690e      	ldr	r6, [r1, #16]
 800654e:	6914      	ldr	r4, [r2, #16]
 8006550:	42a6      	cmp	r6, r4
 8006552:	b083      	sub	sp, #12
 8006554:	460f      	mov	r7, r1
 8006556:	4615      	mov	r5, r2
 8006558:	da04      	bge.n	8006564 <__multiply+0x1c>
 800655a:	4632      	mov	r2, r6
 800655c:	462f      	mov	r7, r5
 800655e:	4626      	mov	r6, r4
 8006560:	460d      	mov	r5, r1
 8006562:	4614      	mov	r4, r2
 8006564:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006568:	eb06 0804 	add.w	r8, r6, r4
 800656c:	4543      	cmp	r3, r8
 800656e:	bfb8      	it	lt
 8006570:	3101      	addlt	r1, #1
 8006572:	f7ff ff1f 	bl	80063b4 <_Balloc>
 8006576:	f100 0914 	add.w	r9, r0, #20
 800657a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800657e:	45f1      	cmp	r9, lr
 8006580:	9000      	str	r0, [sp, #0]
 8006582:	d205      	bcs.n	8006590 <__multiply+0x48>
 8006584:	464b      	mov	r3, r9
 8006586:	2200      	movs	r2, #0
 8006588:	f843 2b04 	str.w	r2, [r3], #4
 800658c:	459e      	cmp	lr, r3
 800658e:	d8fb      	bhi.n	8006588 <__multiply+0x40>
 8006590:	f105 0a14 	add.w	sl, r5, #20
 8006594:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006598:	f107 0314 	add.w	r3, r7, #20
 800659c:	45a2      	cmp	sl, r4
 800659e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80065a2:	d261      	bcs.n	8006668 <__multiply+0x120>
 80065a4:	1b64      	subs	r4, r4, r5
 80065a6:	3c15      	subs	r4, #21
 80065a8:	f024 0403 	bic.w	r4, r4, #3
 80065ac:	f8cd e004 	str.w	lr, [sp, #4]
 80065b0:	44a2      	add	sl, r4
 80065b2:	f105 0210 	add.w	r2, r5, #16
 80065b6:	469e      	mov	lr, r3
 80065b8:	e005      	b.n	80065c6 <__multiply+0x7e>
 80065ba:	0c2d      	lsrs	r5, r5, #16
 80065bc:	d12b      	bne.n	8006616 <__multiply+0xce>
 80065be:	4592      	cmp	sl, r2
 80065c0:	f109 0904 	add.w	r9, r9, #4
 80065c4:	d04e      	beq.n	8006664 <__multiply+0x11c>
 80065c6:	f852 5f04 	ldr.w	r5, [r2, #4]!
 80065ca:	fa1f fb85 	uxth.w	fp, r5
 80065ce:	f1bb 0f00 	cmp.w	fp, #0
 80065d2:	d0f2      	beq.n	80065ba <__multiply+0x72>
 80065d4:	4677      	mov	r7, lr
 80065d6:	464e      	mov	r6, r9
 80065d8:	2000      	movs	r0, #0
 80065da:	e000      	b.n	80065de <__multiply+0x96>
 80065dc:	4626      	mov	r6, r4
 80065de:	f857 1b04 	ldr.w	r1, [r7], #4
 80065e2:	6834      	ldr	r4, [r6, #0]
 80065e4:	b28b      	uxth	r3, r1
 80065e6:	b2a5      	uxth	r5, r4
 80065e8:	0c09      	lsrs	r1, r1, #16
 80065ea:	0c24      	lsrs	r4, r4, #16
 80065ec:	fb0b 5303 	mla	r3, fp, r3, r5
 80065f0:	4403      	add	r3, r0
 80065f2:	fb0b 4001 	mla	r0, fp, r1, r4
 80065f6:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80065fa:	4634      	mov	r4, r6
 80065fc:	b29b      	uxth	r3, r3
 80065fe:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006602:	45bc      	cmp	ip, r7
 8006604:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006608:	f844 3b04 	str.w	r3, [r4], #4
 800660c:	d8e6      	bhi.n	80065dc <__multiply+0x94>
 800660e:	6070      	str	r0, [r6, #4]
 8006610:	6815      	ldr	r5, [r2, #0]
 8006612:	0c2d      	lsrs	r5, r5, #16
 8006614:	d0d3      	beq.n	80065be <__multiply+0x76>
 8006616:	f8d9 3000 	ldr.w	r3, [r9]
 800661a:	4676      	mov	r6, lr
 800661c:	4618      	mov	r0, r3
 800661e:	46cb      	mov	fp, r9
 8006620:	2100      	movs	r1, #0
 8006622:	e000      	b.n	8006626 <__multiply+0xde>
 8006624:	46a3      	mov	fp, r4
 8006626:	8834      	ldrh	r4, [r6, #0]
 8006628:	0c00      	lsrs	r0, r0, #16
 800662a:	fb05 0004 	mla	r0, r5, r4, r0
 800662e:	4401      	add	r1, r0
 8006630:	b29b      	uxth	r3, r3
 8006632:	465c      	mov	r4, fp
 8006634:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006638:	f844 3b04 	str.w	r3, [r4], #4
 800663c:	f856 3b04 	ldr.w	r3, [r6], #4
 8006640:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006644:	0c1b      	lsrs	r3, r3, #16
 8006646:	b287      	uxth	r7, r0
 8006648:	fb05 7303 	mla	r3, r5, r3, r7
 800664c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006650:	45b4      	cmp	ip, r6
 8006652:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006656:	d8e5      	bhi.n	8006624 <__multiply+0xdc>
 8006658:	4592      	cmp	sl, r2
 800665a:	f8cb 3004 	str.w	r3, [fp, #4]
 800665e:	f109 0904 	add.w	r9, r9, #4
 8006662:	d1b0      	bne.n	80065c6 <__multiply+0x7e>
 8006664:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006668:	f1b8 0f00 	cmp.w	r8, #0
 800666c:	dd0b      	ble.n	8006686 <__multiply+0x13e>
 800666e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006672:	f1ae 0e04 	sub.w	lr, lr, #4
 8006676:	b11b      	cbz	r3, 8006680 <__multiply+0x138>
 8006678:	e005      	b.n	8006686 <__multiply+0x13e>
 800667a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800667e:	b913      	cbnz	r3, 8006686 <__multiply+0x13e>
 8006680:	f1b8 0801 	subs.w	r8, r8, #1
 8006684:	d1f9      	bne.n	800667a <__multiply+0x132>
 8006686:	9800      	ldr	r0, [sp, #0]
 8006688:	f8c0 8010 	str.w	r8, [r0, #16]
 800668c:	b003      	add	sp, #12
 800668e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006692:	bf00      	nop

08006694 <__pow5mult>:
 8006694:	f012 0303 	ands.w	r3, r2, #3
 8006698:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800669c:	4614      	mov	r4, r2
 800669e:	4607      	mov	r7, r0
 80066a0:	d12e      	bne.n	8006700 <__pow5mult+0x6c>
 80066a2:	460d      	mov	r5, r1
 80066a4:	10a4      	asrs	r4, r4, #2
 80066a6:	d01c      	beq.n	80066e2 <__pow5mult+0x4e>
 80066a8:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80066aa:	b396      	cbz	r6, 8006712 <__pow5mult+0x7e>
 80066ac:	07e3      	lsls	r3, r4, #31
 80066ae:	f04f 0800 	mov.w	r8, #0
 80066b2:	d406      	bmi.n	80066c2 <__pow5mult+0x2e>
 80066b4:	1064      	asrs	r4, r4, #1
 80066b6:	d014      	beq.n	80066e2 <__pow5mult+0x4e>
 80066b8:	6830      	ldr	r0, [r6, #0]
 80066ba:	b1a8      	cbz	r0, 80066e8 <__pow5mult+0x54>
 80066bc:	4606      	mov	r6, r0
 80066be:	07e3      	lsls	r3, r4, #31
 80066c0:	d5f8      	bpl.n	80066b4 <__pow5mult+0x20>
 80066c2:	4632      	mov	r2, r6
 80066c4:	4629      	mov	r1, r5
 80066c6:	4638      	mov	r0, r7
 80066c8:	f7ff ff3e 	bl	8006548 <__multiply>
 80066cc:	b1b5      	cbz	r5, 80066fc <__pow5mult+0x68>
 80066ce:	686a      	ldr	r2, [r5, #4]
 80066d0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80066d2:	1064      	asrs	r4, r4, #1
 80066d4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80066d8:	6029      	str	r1, [r5, #0]
 80066da:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80066de:	4605      	mov	r5, r0
 80066e0:	d1ea      	bne.n	80066b8 <__pow5mult+0x24>
 80066e2:	4628      	mov	r0, r5
 80066e4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80066e8:	4632      	mov	r2, r6
 80066ea:	4631      	mov	r1, r6
 80066ec:	4638      	mov	r0, r7
 80066ee:	f7ff ff2b 	bl	8006548 <__multiply>
 80066f2:	6030      	str	r0, [r6, #0]
 80066f4:	f8c0 8000 	str.w	r8, [r0]
 80066f8:	4606      	mov	r6, r0
 80066fa:	e7e0      	b.n	80066be <__pow5mult+0x2a>
 80066fc:	4605      	mov	r5, r0
 80066fe:	e7d9      	b.n	80066b4 <__pow5mult+0x20>
 8006700:	3b01      	subs	r3, #1
 8006702:	4a0b      	ldr	r2, [pc, #44]	; (8006730 <__pow5mult+0x9c>)
 8006704:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006708:	2300      	movs	r3, #0
 800670a:	f7ff fe83 	bl	8006414 <__multadd>
 800670e:	4605      	mov	r5, r0
 8006710:	e7c8      	b.n	80066a4 <__pow5mult+0x10>
 8006712:	2101      	movs	r1, #1
 8006714:	4638      	mov	r0, r7
 8006716:	f7ff fe4d 	bl	80063b4 <_Balloc>
 800671a:	f240 2371 	movw	r3, #625	; 0x271
 800671e:	6143      	str	r3, [r0, #20]
 8006720:	2201      	movs	r2, #1
 8006722:	2300      	movs	r3, #0
 8006724:	6102      	str	r2, [r0, #16]
 8006726:	4606      	mov	r6, r0
 8006728:	64b8      	str	r0, [r7, #72]	; 0x48
 800672a:	6003      	str	r3, [r0, #0]
 800672c:	e7be      	b.n	80066ac <__pow5mult+0x18>
 800672e:	bf00      	nop
 8006730:	08007888 	.word	0x08007888

08006734 <__lshift>:
 8006734:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006738:	4691      	mov	r9, r2
 800673a:	690a      	ldr	r2, [r1, #16]
 800673c:	460e      	mov	r6, r1
 800673e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8006742:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8006746:	eb04 0802 	add.w	r8, r4, r2
 800674a:	f108 0501 	add.w	r5, r8, #1
 800674e:	429d      	cmp	r5, r3
 8006750:	4607      	mov	r7, r0
 8006752:	dd04      	ble.n	800675e <__lshift+0x2a>
 8006754:	005b      	lsls	r3, r3, #1
 8006756:	429d      	cmp	r5, r3
 8006758:	f101 0101 	add.w	r1, r1, #1
 800675c:	dcfa      	bgt.n	8006754 <__lshift+0x20>
 800675e:	4638      	mov	r0, r7
 8006760:	f7ff fe28 	bl	80063b4 <_Balloc>
 8006764:	2c00      	cmp	r4, #0
 8006766:	f100 0314 	add.w	r3, r0, #20
 800676a:	dd37      	ble.n	80067dc <__lshift+0xa8>
 800676c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006770:	2200      	movs	r2, #0
 8006772:	f843 2b04 	str.w	r2, [r3], #4
 8006776:	428b      	cmp	r3, r1
 8006778:	d1fb      	bne.n	8006772 <__lshift+0x3e>
 800677a:	6934      	ldr	r4, [r6, #16]
 800677c:	f106 0314 	add.w	r3, r6, #20
 8006780:	f019 091f 	ands.w	r9, r9, #31
 8006784:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006788:	d020      	beq.n	80067cc <__lshift+0x98>
 800678a:	f1c9 0e20 	rsb	lr, r9, #32
 800678e:	2200      	movs	r2, #0
 8006790:	e000      	b.n	8006794 <__lshift+0x60>
 8006792:	4651      	mov	r1, sl
 8006794:	681c      	ldr	r4, [r3, #0]
 8006796:	468a      	mov	sl, r1
 8006798:	fa04 f409 	lsl.w	r4, r4, r9
 800679c:	4314      	orrs	r4, r2
 800679e:	f84a 4b04 	str.w	r4, [sl], #4
 80067a2:	f853 2b04 	ldr.w	r2, [r3], #4
 80067a6:	4563      	cmp	r3, ip
 80067a8:	fa22 f20e 	lsr.w	r2, r2, lr
 80067ac:	d3f1      	bcc.n	8006792 <__lshift+0x5e>
 80067ae:	604a      	str	r2, [r1, #4]
 80067b0:	b10a      	cbz	r2, 80067b6 <__lshift+0x82>
 80067b2:	f108 0502 	add.w	r5, r8, #2
 80067b6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80067b8:	6872      	ldr	r2, [r6, #4]
 80067ba:	3d01      	subs	r5, #1
 80067bc:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80067c0:	6105      	str	r5, [r0, #16]
 80067c2:	6031      	str	r1, [r6, #0]
 80067c4:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80067c8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80067cc:	3904      	subs	r1, #4
 80067ce:	f853 2b04 	ldr.w	r2, [r3], #4
 80067d2:	f841 2f04 	str.w	r2, [r1, #4]!
 80067d6:	459c      	cmp	ip, r3
 80067d8:	d8f9      	bhi.n	80067ce <__lshift+0x9a>
 80067da:	e7ec      	b.n	80067b6 <__lshift+0x82>
 80067dc:	4619      	mov	r1, r3
 80067de:	e7cc      	b.n	800677a <__lshift+0x46>

080067e0 <__mcmp>:
 80067e0:	b430      	push	{r4, r5}
 80067e2:	690b      	ldr	r3, [r1, #16]
 80067e4:	4605      	mov	r5, r0
 80067e6:	6900      	ldr	r0, [r0, #16]
 80067e8:	1ac0      	subs	r0, r0, r3
 80067ea:	d10f      	bne.n	800680c <__mcmp+0x2c>
 80067ec:	009b      	lsls	r3, r3, #2
 80067ee:	3514      	adds	r5, #20
 80067f0:	3114      	adds	r1, #20
 80067f2:	4419      	add	r1, r3
 80067f4:	442b      	add	r3, r5
 80067f6:	e001      	b.n	80067fc <__mcmp+0x1c>
 80067f8:	429d      	cmp	r5, r3
 80067fa:	d207      	bcs.n	800680c <__mcmp+0x2c>
 80067fc:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006800:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006804:	4294      	cmp	r4, r2
 8006806:	d0f7      	beq.n	80067f8 <__mcmp+0x18>
 8006808:	d302      	bcc.n	8006810 <__mcmp+0x30>
 800680a:	2001      	movs	r0, #1
 800680c:	bc30      	pop	{r4, r5}
 800680e:	4770      	bx	lr
 8006810:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006814:	e7fa      	b.n	800680c <__mcmp+0x2c>
 8006816:	bf00      	nop

08006818 <__mdiff>:
 8006818:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800681c:	6913      	ldr	r3, [r2, #16]
 800681e:	690d      	ldr	r5, [r1, #16]
 8006820:	1aed      	subs	r5, r5, r3
 8006822:	2d00      	cmp	r5, #0
 8006824:	460e      	mov	r6, r1
 8006826:	4690      	mov	r8, r2
 8006828:	f101 0414 	add.w	r4, r1, #20
 800682c:	f102 0714 	add.w	r7, r2, #20
 8006830:	d114      	bne.n	800685c <__mdiff+0x44>
 8006832:	009b      	lsls	r3, r3, #2
 8006834:	18e2      	adds	r2, r4, r3
 8006836:	443b      	add	r3, r7
 8006838:	e001      	b.n	800683e <__mdiff+0x26>
 800683a:	42a2      	cmp	r2, r4
 800683c:	d959      	bls.n	80068f2 <__mdiff+0xda>
 800683e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006842:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006846:	458c      	cmp	ip, r1
 8006848:	d0f7      	beq.n	800683a <__mdiff+0x22>
 800684a:	d209      	bcs.n	8006860 <__mdiff+0x48>
 800684c:	4622      	mov	r2, r4
 800684e:	4633      	mov	r3, r6
 8006850:	463c      	mov	r4, r7
 8006852:	4646      	mov	r6, r8
 8006854:	4617      	mov	r7, r2
 8006856:	4698      	mov	r8, r3
 8006858:	2501      	movs	r5, #1
 800685a:	e001      	b.n	8006860 <__mdiff+0x48>
 800685c:	dbf6      	blt.n	800684c <__mdiff+0x34>
 800685e:	2500      	movs	r5, #0
 8006860:	6871      	ldr	r1, [r6, #4]
 8006862:	f7ff fda7 	bl	80063b4 <_Balloc>
 8006866:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800686a:	6936      	ldr	r6, [r6, #16]
 800686c:	60c5      	str	r5, [r0, #12]
 800686e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006872:	46bc      	mov	ip, r7
 8006874:	f100 0514 	add.w	r5, r0, #20
 8006878:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800687c:	2300      	movs	r3, #0
 800687e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006882:	f854 8b04 	ldr.w	r8, [r4], #4
 8006886:	b28a      	uxth	r2, r1
 8006888:	fa13 f388 	uxtah	r3, r3, r8
 800688c:	0c09      	lsrs	r1, r1, #16
 800688e:	1a9a      	subs	r2, r3, r2
 8006890:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006894:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006898:	b292      	uxth	r2, r2
 800689a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800689e:	45e6      	cmp	lr, ip
 80068a0:	f845 2b04 	str.w	r2, [r5], #4
 80068a4:	ea4f 4323 	mov.w	r3, r3, asr #16
 80068a8:	d8e9      	bhi.n	800687e <__mdiff+0x66>
 80068aa:	42a7      	cmp	r7, r4
 80068ac:	d917      	bls.n	80068de <__mdiff+0xc6>
 80068ae:	46ae      	mov	lr, r5
 80068b0:	46a4      	mov	ip, r4
 80068b2:	f85c 2b04 	ldr.w	r2, [ip], #4
 80068b6:	fa13 f382 	uxtah	r3, r3, r2
 80068ba:	1419      	asrs	r1, r3, #16
 80068bc:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80068c0:	b29b      	uxth	r3, r3
 80068c2:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80068c6:	4567      	cmp	r7, ip
 80068c8:	f84e 2b04 	str.w	r2, [lr], #4
 80068cc:	ea4f 4321 	mov.w	r3, r1, asr #16
 80068d0:	d8ef      	bhi.n	80068b2 <__mdiff+0x9a>
 80068d2:	43e4      	mvns	r4, r4
 80068d4:	4427      	add	r7, r4
 80068d6:	f027 0703 	bic.w	r7, r7, #3
 80068da:	3704      	adds	r7, #4
 80068dc:	443d      	add	r5, r7
 80068de:	3d04      	subs	r5, #4
 80068e0:	b922      	cbnz	r2, 80068ec <__mdiff+0xd4>
 80068e2:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80068e6:	3e01      	subs	r6, #1
 80068e8:	2b00      	cmp	r3, #0
 80068ea:	d0fa      	beq.n	80068e2 <__mdiff+0xca>
 80068ec:	6106      	str	r6, [r0, #16]
 80068ee:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80068f2:	2100      	movs	r1, #0
 80068f4:	f7ff fd5e 	bl	80063b4 <_Balloc>
 80068f8:	2201      	movs	r2, #1
 80068fa:	2300      	movs	r3, #0
 80068fc:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006900:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006904 <__d2b>:
 8006904:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006908:	460f      	mov	r7, r1
 800690a:	b083      	sub	sp, #12
 800690c:	2101      	movs	r1, #1
 800690e:	ec55 4b10 	vmov	r4, r5, d0
 8006912:	4616      	mov	r6, r2
 8006914:	f7ff fd4e 	bl	80063b4 <_Balloc>
 8006918:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800691c:	4681      	mov	r9, r0
 800691e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006922:	f1b8 0f00 	cmp.w	r8, #0
 8006926:	d001      	beq.n	800692c <__d2b+0x28>
 8006928:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800692c:	2c00      	cmp	r4, #0
 800692e:	9301      	str	r3, [sp, #4]
 8006930:	d024      	beq.n	800697c <__d2b+0x78>
 8006932:	a802      	add	r0, sp, #8
 8006934:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006938:	f7ff fdcc 	bl	80064d4 <__lo0bits>
 800693c:	2800      	cmp	r0, #0
 800693e:	d136      	bne.n	80069ae <__d2b+0xaa>
 8006940:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006944:	f8c9 2014 	str.w	r2, [r9, #20]
 8006948:	2b00      	cmp	r3, #0
 800694a:	bf0c      	ite	eq
 800694c:	2101      	moveq	r1, #1
 800694e:	2102      	movne	r1, #2
 8006950:	f8c9 3018 	str.w	r3, [r9, #24]
 8006954:	f8c9 1010 	str.w	r1, [r9, #16]
 8006958:	f1b8 0f00 	cmp.w	r8, #0
 800695c:	d11b      	bne.n	8006996 <__d2b+0x92>
 800695e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006962:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006966:	6038      	str	r0, [r7, #0]
 8006968:	6918      	ldr	r0, [r3, #16]
 800696a:	f7ff fd93 	bl	8006494 <__hi0bits>
 800696e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006972:	6030      	str	r0, [r6, #0]
 8006974:	4648      	mov	r0, r9
 8006976:	b003      	add	sp, #12
 8006978:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800697c:	a801      	add	r0, sp, #4
 800697e:	f7ff fda9 	bl	80064d4 <__lo0bits>
 8006982:	9b01      	ldr	r3, [sp, #4]
 8006984:	f8c9 3014 	str.w	r3, [r9, #20]
 8006988:	2101      	movs	r1, #1
 800698a:	3020      	adds	r0, #32
 800698c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006990:	f1b8 0f00 	cmp.w	r8, #0
 8006994:	d0e3      	beq.n	800695e <__d2b+0x5a>
 8006996:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800699a:	eb08 0300 	add.w	r3, r8, r0
 800699e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80069a2:	603b      	str	r3, [r7, #0]
 80069a4:	6030      	str	r0, [r6, #0]
 80069a6:	4648      	mov	r0, r9
 80069a8:	b003      	add	sp, #12
 80069aa:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80069ae:	e9dd 1300 	ldrd	r1, r3, [sp]
 80069b2:	f1c0 0220 	rsb	r2, r0, #32
 80069b6:	fa03 f202 	lsl.w	r2, r3, r2
 80069ba:	430a      	orrs	r2, r1
 80069bc:	40c3      	lsrs	r3, r0
 80069be:	9301      	str	r3, [sp, #4]
 80069c0:	f8c9 2014 	str.w	r2, [r9, #20]
 80069c4:	e7c0      	b.n	8006948 <__d2b+0x44>
 80069c6:	bf00      	nop

080069c8 <_realloc_r>:
 80069c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80069cc:	4692      	mov	sl, r2
 80069ce:	b083      	sub	sp, #12
 80069d0:	2900      	cmp	r1, #0
 80069d2:	f000 80a1 	beq.w	8006b18 <_realloc_r+0x150>
 80069d6:	460d      	mov	r5, r1
 80069d8:	4680      	mov	r8, r0
 80069da:	f10a 040b 	add.w	r4, sl, #11
 80069de:	f7fc f993 	bl	8002d08 <__malloc_lock>
 80069e2:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80069e6:	2c16      	cmp	r4, #22
 80069e8:	f022 0603 	bic.w	r6, r2, #3
 80069ec:	f1a5 0708 	sub.w	r7, r5, #8
 80069f0:	d83e      	bhi.n	8006a70 <_realloc_r+0xa8>
 80069f2:	2410      	movs	r4, #16
 80069f4:	4621      	mov	r1, r4
 80069f6:	45a2      	cmp	sl, r4
 80069f8:	d83f      	bhi.n	8006a7a <_realloc_r+0xb2>
 80069fa:	428e      	cmp	r6, r1
 80069fc:	eb07 0906 	add.w	r9, r7, r6
 8006a00:	da74      	bge.n	8006aec <_realloc_r+0x124>
 8006a02:	4bc7      	ldr	r3, [pc, #796]	; (8006d20 <_realloc_r+0x358>)
 8006a04:	6898      	ldr	r0, [r3, #8]
 8006a06:	4548      	cmp	r0, r9
 8006a08:	f000 80aa 	beq.w	8006b60 <_realloc_r+0x198>
 8006a0c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006a10:	f020 0301 	bic.w	r3, r0, #1
 8006a14:	444b      	add	r3, r9
 8006a16:	685b      	ldr	r3, [r3, #4]
 8006a18:	07db      	lsls	r3, r3, #31
 8006a1a:	f140 8083 	bpl.w	8006b24 <_realloc_r+0x15c>
 8006a1e:	07d2      	lsls	r2, r2, #31
 8006a20:	d534      	bpl.n	8006a8c <_realloc_r+0xc4>
 8006a22:	4651      	mov	r1, sl
 8006a24:	4640      	mov	r0, r8
 8006a26:	f7fb fe81 	bl	800272c <_malloc_r>
 8006a2a:	4682      	mov	sl, r0
 8006a2c:	b1e0      	cbz	r0, 8006a68 <_realloc_r+0xa0>
 8006a2e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006a32:	f023 0301 	bic.w	r3, r3, #1
 8006a36:	443b      	add	r3, r7
 8006a38:	f1a0 0208 	sub.w	r2, r0, #8
 8006a3c:	4293      	cmp	r3, r2
 8006a3e:	f000 80f9 	beq.w	8006c34 <_realloc_r+0x26c>
 8006a42:	1f32      	subs	r2, r6, #4
 8006a44:	2a24      	cmp	r2, #36	; 0x24
 8006a46:	f200 8107 	bhi.w	8006c58 <_realloc_r+0x290>
 8006a4a:	2a13      	cmp	r2, #19
 8006a4c:	6829      	ldr	r1, [r5, #0]
 8006a4e:	f200 80e6 	bhi.w	8006c1e <_realloc_r+0x256>
 8006a52:	4603      	mov	r3, r0
 8006a54:	462a      	mov	r2, r5
 8006a56:	6019      	str	r1, [r3, #0]
 8006a58:	6851      	ldr	r1, [r2, #4]
 8006a5a:	6059      	str	r1, [r3, #4]
 8006a5c:	6892      	ldr	r2, [r2, #8]
 8006a5e:	609a      	str	r2, [r3, #8]
 8006a60:	4629      	mov	r1, r5
 8006a62:	4640      	mov	r0, r8
 8006a64:	f7ff f918 	bl	8005c98 <_free_r>
 8006a68:	4640      	mov	r0, r8
 8006a6a:	f7fc f953 	bl	8002d14 <__malloc_unlock>
 8006a6e:	e04f      	b.n	8006b10 <_realloc_r+0x148>
 8006a70:	f024 0407 	bic.w	r4, r4, #7
 8006a74:	2c00      	cmp	r4, #0
 8006a76:	4621      	mov	r1, r4
 8006a78:	dabd      	bge.n	80069f6 <_realloc_r+0x2e>
 8006a7a:	f04f 0a00 	mov.w	sl, #0
 8006a7e:	230c      	movs	r3, #12
 8006a80:	4650      	mov	r0, sl
 8006a82:	f8c8 3000 	str.w	r3, [r8]
 8006a86:	b003      	add	sp, #12
 8006a88:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a8c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006a90:	eba7 0b03 	sub.w	fp, r7, r3
 8006a94:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006a98:	f022 0203 	bic.w	r2, r2, #3
 8006a9c:	18b3      	adds	r3, r6, r2
 8006a9e:	428b      	cmp	r3, r1
 8006aa0:	dbbf      	blt.n	8006a22 <_realloc_r+0x5a>
 8006aa2:	46da      	mov	sl, fp
 8006aa4:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006aa8:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006aac:	1f32      	subs	r2, r6, #4
 8006aae:	2a24      	cmp	r2, #36	; 0x24
 8006ab0:	60c1      	str	r1, [r0, #12]
 8006ab2:	eb0b 0903 	add.w	r9, fp, r3
 8006ab6:	6088      	str	r0, [r1, #8]
 8006ab8:	f200 80c6 	bhi.w	8006c48 <_realloc_r+0x280>
 8006abc:	2a13      	cmp	r2, #19
 8006abe:	6829      	ldr	r1, [r5, #0]
 8006ac0:	f240 80c0 	bls.w	8006c44 <_realloc_r+0x27c>
 8006ac4:	f8cb 1008 	str.w	r1, [fp, #8]
 8006ac8:	6869      	ldr	r1, [r5, #4]
 8006aca:	f8cb 100c 	str.w	r1, [fp, #12]
 8006ace:	2a1b      	cmp	r2, #27
 8006ad0:	68a9      	ldr	r1, [r5, #8]
 8006ad2:	f200 80d8 	bhi.w	8006c86 <_realloc_r+0x2be>
 8006ad6:	f10b 0210 	add.w	r2, fp, #16
 8006ada:	3508      	adds	r5, #8
 8006adc:	6011      	str	r1, [r2, #0]
 8006ade:	6869      	ldr	r1, [r5, #4]
 8006ae0:	6051      	str	r1, [r2, #4]
 8006ae2:	68a9      	ldr	r1, [r5, #8]
 8006ae4:	6091      	str	r1, [r2, #8]
 8006ae6:	461e      	mov	r6, r3
 8006ae8:	465f      	mov	r7, fp
 8006aea:	4655      	mov	r5, sl
 8006aec:	687b      	ldr	r3, [r7, #4]
 8006aee:	1b32      	subs	r2, r6, r4
 8006af0:	2a0f      	cmp	r2, #15
 8006af2:	f003 0301 	and.w	r3, r3, #1
 8006af6:	d822      	bhi.n	8006b3e <_realloc_r+0x176>
 8006af8:	4333      	orrs	r3, r6
 8006afa:	607b      	str	r3, [r7, #4]
 8006afc:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006b00:	f043 0301 	orr.w	r3, r3, #1
 8006b04:	f8c9 3004 	str.w	r3, [r9, #4]
 8006b08:	4640      	mov	r0, r8
 8006b0a:	f7fc f903 	bl	8002d14 <__malloc_unlock>
 8006b0e:	46aa      	mov	sl, r5
 8006b10:	4650      	mov	r0, sl
 8006b12:	b003      	add	sp, #12
 8006b14:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b18:	4611      	mov	r1, r2
 8006b1a:	b003      	add	sp, #12
 8006b1c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006b20:	f7fb be04 	b.w	800272c <_malloc_r>
 8006b24:	f020 0003 	bic.w	r0, r0, #3
 8006b28:	1833      	adds	r3, r6, r0
 8006b2a:	428b      	cmp	r3, r1
 8006b2c:	db61      	blt.n	8006bf2 <_realloc_r+0x22a>
 8006b2e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006b32:	461e      	mov	r6, r3
 8006b34:	60ca      	str	r2, [r1, #12]
 8006b36:	eb07 0903 	add.w	r9, r7, r3
 8006b3a:	6091      	str	r1, [r2, #8]
 8006b3c:	e7d6      	b.n	8006aec <_realloc_r+0x124>
 8006b3e:	1939      	adds	r1, r7, r4
 8006b40:	4323      	orrs	r3, r4
 8006b42:	f042 0201 	orr.w	r2, r2, #1
 8006b46:	607b      	str	r3, [r7, #4]
 8006b48:	604a      	str	r2, [r1, #4]
 8006b4a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006b4e:	f043 0301 	orr.w	r3, r3, #1
 8006b52:	3108      	adds	r1, #8
 8006b54:	f8c9 3004 	str.w	r3, [r9, #4]
 8006b58:	4640      	mov	r0, r8
 8006b5a:	f7ff f89d 	bl	8005c98 <_free_r>
 8006b5e:	e7d3      	b.n	8006b08 <_realloc_r+0x140>
 8006b60:	6840      	ldr	r0, [r0, #4]
 8006b62:	f020 0903 	bic.w	r9, r0, #3
 8006b66:	44b1      	add	r9, r6
 8006b68:	f104 0010 	add.w	r0, r4, #16
 8006b6c:	4581      	cmp	r9, r0
 8006b6e:	da77      	bge.n	8006c60 <_realloc_r+0x298>
 8006b70:	07d2      	lsls	r2, r2, #31
 8006b72:	f53f af56 	bmi.w	8006a22 <_realloc_r+0x5a>
 8006b76:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006b7a:	eba7 0b02 	sub.w	fp, r7, r2
 8006b7e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006b82:	f022 0203 	bic.w	r2, r2, #3
 8006b86:	4491      	add	r9, r2
 8006b88:	4548      	cmp	r0, r9
 8006b8a:	dc87      	bgt.n	8006a9c <_realloc_r+0xd4>
 8006b8c:	46da      	mov	sl, fp
 8006b8e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006b92:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006b96:	1f32      	subs	r2, r6, #4
 8006b98:	2a24      	cmp	r2, #36	; 0x24
 8006b9a:	60c1      	str	r1, [r0, #12]
 8006b9c:	6088      	str	r0, [r1, #8]
 8006b9e:	f200 80a1 	bhi.w	8006ce4 <_realloc_r+0x31c>
 8006ba2:	2a13      	cmp	r2, #19
 8006ba4:	6829      	ldr	r1, [r5, #0]
 8006ba6:	f240 809b 	bls.w	8006ce0 <_realloc_r+0x318>
 8006baa:	f8cb 1008 	str.w	r1, [fp, #8]
 8006bae:	6869      	ldr	r1, [r5, #4]
 8006bb0:	f8cb 100c 	str.w	r1, [fp, #12]
 8006bb4:	2a1b      	cmp	r2, #27
 8006bb6:	68a9      	ldr	r1, [r5, #8]
 8006bb8:	f200 809b 	bhi.w	8006cf2 <_realloc_r+0x32a>
 8006bbc:	f10b 0210 	add.w	r2, fp, #16
 8006bc0:	3508      	adds	r5, #8
 8006bc2:	6011      	str	r1, [r2, #0]
 8006bc4:	6869      	ldr	r1, [r5, #4]
 8006bc6:	6051      	str	r1, [r2, #4]
 8006bc8:	68a9      	ldr	r1, [r5, #8]
 8006bca:	6091      	str	r1, [r2, #8]
 8006bcc:	eb0b 0104 	add.w	r1, fp, r4
 8006bd0:	eba9 0204 	sub.w	r2, r9, r4
 8006bd4:	f042 0201 	orr.w	r2, r2, #1
 8006bd8:	6099      	str	r1, [r3, #8]
 8006bda:	604a      	str	r2, [r1, #4]
 8006bdc:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006be0:	f003 0301 	and.w	r3, r3, #1
 8006be4:	431c      	orrs	r4, r3
 8006be6:	4640      	mov	r0, r8
 8006be8:	f8cb 4004 	str.w	r4, [fp, #4]
 8006bec:	f7fc f892 	bl	8002d14 <__malloc_unlock>
 8006bf0:	e78e      	b.n	8006b10 <_realloc_r+0x148>
 8006bf2:	07d3      	lsls	r3, r2, #31
 8006bf4:	f53f af15 	bmi.w	8006a22 <_realloc_r+0x5a>
 8006bf8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006bfc:	eba7 0b03 	sub.w	fp, r7, r3
 8006c00:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006c04:	f022 0203 	bic.w	r2, r2, #3
 8006c08:	4410      	add	r0, r2
 8006c0a:	1983      	adds	r3, r0, r6
 8006c0c:	428b      	cmp	r3, r1
 8006c0e:	f6ff af45 	blt.w	8006a9c <_realloc_r+0xd4>
 8006c12:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006c16:	46da      	mov	sl, fp
 8006c18:	60ca      	str	r2, [r1, #12]
 8006c1a:	6091      	str	r1, [r2, #8]
 8006c1c:	e742      	b.n	8006aa4 <_realloc_r+0xdc>
 8006c1e:	6001      	str	r1, [r0, #0]
 8006c20:	686b      	ldr	r3, [r5, #4]
 8006c22:	6043      	str	r3, [r0, #4]
 8006c24:	2a1b      	cmp	r2, #27
 8006c26:	d83a      	bhi.n	8006c9e <_realloc_r+0x2d6>
 8006c28:	f105 0208 	add.w	r2, r5, #8
 8006c2c:	f100 0308 	add.w	r3, r0, #8
 8006c30:	68a9      	ldr	r1, [r5, #8]
 8006c32:	e710      	b.n	8006a56 <_realloc_r+0x8e>
 8006c34:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006c38:	f023 0303 	bic.w	r3, r3, #3
 8006c3c:	441e      	add	r6, r3
 8006c3e:	eb07 0906 	add.w	r9, r7, r6
 8006c42:	e753      	b.n	8006aec <_realloc_r+0x124>
 8006c44:	4652      	mov	r2, sl
 8006c46:	e749      	b.n	8006adc <_realloc_r+0x114>
 8006c48:	4629      	mov	r1, r5
 8006c4a:	4650      	mov	r0, sl
 8006c4c:	461e      	mov	r6, r3
 8006c4e:	465f      	mov	r7, fp
 8006c50:	f7ff fb4c 	bl	80062ec <memmove>
 8006c54:	4655      	mov	r5, sl
 8006c56:	e749      	b.n	8006aec <_realloc_r+0x124>
 8006c58:	4629      	mov	r1, r5
 8006c5a:	f7ff fb47 	bl	80062ec <memmove>
 8006c5e:	e6ff      	b.n	8006a60 <_realloc_r+0x98>
 8006c60:	4427      	add	r7, r4
 8006c62:	eba9 0904 	sub.w	r9, r9, r4
 8006c66:	f049 0201 	orr.w	r2, r9, #1
 8006c6a:	609f      	str	r7, [r3, #8]
 8006c6c:	607a      	str	r2, [r7, #4]
 8006c6e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006c72:	f003 0301 	and.w	r3, r3, #1
 8006c76:	431c      	orrs	r4, r3
 8006c78:	4640      	mov	r0, r8
 8006c7a:	f845 4c04 	str.w	r4, [r5, #-4]
 8006c7e:	f7fc f849 	bl	8002d14 <__malloc_unlock>
 8006c82:	46aa      	mov	sl, r5
 8006c84:	e744      	b.n	8006b10 <_realloc_r+0x148>
 8006c86:	f8cb 1010 	str.w	r1, [fp, #16]
 8006c8a:	68e9      	ldr	r1, [r5, #12]
 8006c8c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006c90:	2a24      	cmp	r2, #36	; 0x24
 8006c92:	d010      	beq.n	8006cb6 <_realloc_r+0x2ee>
 8006c94:	6929      	ldr	r1, [r5, #16]
 8006c96:	f10b 0218 	add.w	r2, fp, #24
 8006c9a:	3510      	adds	r5, #16
 8006c9c:	e71e      	b.n	8006adc <_realloc_r+0x114>
 8006c9e:	68ab      	ldr	r3, [r5, #8]
 8006ca0:	6083      	str	r3, [r0, #8]
 8006ca2:	68eb      	ldr	r3, [r5, #12]
 8006ca4:	60c3      	str	r3, [r0, #12]
 8006ca6:	2a24      	cmp	r2, #36	; 0x24
 8006ca8:	d010      	beq.n	8006ccc <_realloc_r+0x304>
 8006caa:	f105 0210 	add.w	r2, r5, #16
 8006cae:	f100 0310 	add.w	r3, r0, #16
 8006cb2:	6929      	ldr	r1, [r5, #16]
 8006cb4:	e6cf      	b.n	8006a56 <_realloc_r+0x8e>
 8006cb6:	692a      	ldr	r2, [r5, #16]
 8006cb8:	f8cb 2018 	str.w	r2, [fp, #24]
 8006cbc:	696a      	ldr	r2, [r5, #20]
 8006cbe:	f8cb 201c 	str.w	r2, [fp, #28]
 8006cc2:	69a9      	ldr	r1, [r5, #24]
 8006cc4:	f10b 0220 	add.w	r2, fp, #32
 8006cc8:	3518      	adds	r5, #24
 8006cca:	e707      	b.n	8006adc <_realloc_r+0x114>
 8006ccc:	692b      	ldr	r3, [r5, #16]
 8006cce:	6103      	str	r3, [r0, #16]
 8006cd0:	696b      	ldr	r3, [r5, #20]
 8006cd2:	6143      	str	r3, [r0, #20]
 8006cd4:	69a9      	ldr	r1, [r5, #24]
 8006cd6:	f105 0218 	add.w	r2, r5, #24
 8006cda:	f100 0318 	add.w	r3, r0, #24
 8006cde:	e6ba      	b.n	8006a56 <_realloc_r+0x8e>
 8006ce0:	4652      	mov	r2, sl
 8006ce2:	e76e      	b.n	8006bc2 <_realloc_r+0x1fa>
 8006ce4:	4629      	mov	r1, r5
 8006ce6:	4650      	mov	r0, sl
 8006ce8:	9301      	str	r3, [sp, #4]
 8006cea:	f7ff faff 	bl	80062ec <memmove>
 8006cee:	9b01      	ldr	r3, [sp, #4]
 8006cf0:	e76c      	b.n	8006bcc <_realloc_r+0x204>
 8006cf2:	f8cb 1010 	str.w	r1, [fp, #16]
 8006cf6:	68e9      	ldr	r1, [r5, #12]
 8006cf8:	f8cb 1014 	str.w	r1, [fp, #20]
 8006cfc:	2a24      	cmp	r2, #36	; 0x24
 8006cfe:	d004      	beq.n	8006d0a <_realloc_r+0x342>
 8006d00:	6929      	ldr	r1, [r5, #16]
 8006d02:	f10b 0218 	add.w	r2, fp, #24
 8006d06:	3510      	adds	r5, #16
 8006d08:	e75b      	b.n	8006bc2 <_realloc_r+0x1fa>
 8006d0a:	692a      	ldr	r2, [r5, #16]
 8006d0c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006d10:	696a      	ldr	r2, [r5, #20]
 8006d12:	f8cb 201c 	str.w	r2, [fp, #28]
 8006d16:	69a9      	ldr	r1, [r5, #24]
 8006d18:	f10b 0220 	add.w	r2, fp, #32
 8006d1c:	3518      	adds	r5, #24
 8006d1e:	e750      	b.n	8006bc2 <_realloc_r+0x1fa>
 8006d20:	200005d8 	.word	0x200005d8

08006d24 <frexp>:
 8006d24:	ec53 2b10 	vmov	r2, r3, d0
 8006d28:	b570      	push	{r4, r5, r6, lr}
 8006d2a:	4e16      	ldr	r6, [pc, #88]	; (8006d84 <frexp+0x60>)
 8006d2c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006d30:	2500      	movs	r5, #0
 8006d32:	42b1      	cmp	r1, r6
 8006d34:	4604      	mov	r4, r0
 8006d36:	6005      	str	r5, [r0, #0]
 8006d38:	dc21      	bgt.n	8006d7e <frexp+0x5a>
 8006d3a:	ee10 6a10 	vmov	r6, s0
 8006d3e:	430e      	orrs	r6, r1
 8006d40:	d01d      	beq.n	8006d7e <frexp+0x5a>
 8006d42:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006d46:	4618      	mov	r0, r3
 8006d48:	da0c      	bge.n	8006d64 <frexp+0x40>
 8006d4a:	4619      	mov	r1, r3
 8006d4c:	2200      	movs	r2, #0
 8006d4e:	ee10 0a10 	vmov	r0, s0
 8006d52:	4b0d      	ldr	r3, [pc, #52]	; (8006d88 <frexp+0x64>)
 8006d54:	f7f9 fef0 	bl	8000b38 <__aeabi_dmul>
 8006d58:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006d5c:	4602      	mov	r2, r0
 8006d5e:	4608      	mov	r0, r1
 8006d60:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006d64:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006d68:	1509      	asrs	r1, r1, #20
 8006d6a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006d6e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006d72:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006d76:	4429      	add	r1, r5
 8006d78:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006d7c:	6021      	str	r1, [r4, #0]
 8006d7e:	ec43 2b10 	vmov	d0, r2, r3
 8006d82:	bd70      	pop	{r4, r5, r6, pc}
 8006d84:	7fefffff 	.word	0x7fefffff
 8006d88:	43500000 	.word	0x43500000

08006d8c <__sread>:
 8006d8c:	b510      	push	{r4, lr}
 8006d8e:	460c      	mov	r4, r1
 8006d90:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006d94:	f000 fabc 	bl	8007310 <_read_r>
 8006d98:	2800      	cmp	r0, #0
 8006d9a:	db03      	blt.n	8006da4 <__sread+0x18>
 8006d9c:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006d9e:	4403      	add	r3, r0
 8006da0:	6523      	str	r3, [r4, #80]	; 0x50
 8006da2:	bd10      	pop	{r4, pc}
 8006da4:	89a3      	ldrh	r3, [r4, #12]
 8006da6:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006daa:	81a3      	strh	r3, [r4, #12]
 8006dac:	bd10      	pop	{r4, pc}
 8006dae:	bf00      	nop

08006db0 <__swrite>:
 8006db0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006db4:	4616      	mov	r6, r2
 8006db6:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006dba:	461f      	mov	r7, r3
 8006dbc:	05d3      	lsls	r3, r2, #23
 8006dbe:	460c      	mov	r4, r1
 8006dc0:	4605      	mov	r5, r0
 8006dc2:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006dc6:	d507      	bpl.n	8006dd8 <__swrite+0x28>
 8006dc8:	2200      	movs	r2, #0
 8006dca:	2302      	movs	r3, #2
 8006dcc:	f000 fa74 	bl	80072b8 <_lseek_r>
 8006dd0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006dd4:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006dd8:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006ddc:	81a2      	strh	r2, [r4, #12]
 8006dde:	463b      	mov	r3, r7
 8006de0:	4632      	mov	r2, r6
 8006de2:	4628      	mov	r0, r5
 8006de4:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006de8:	f000 b88c 	b.w	8006f04 <_write_r>

08006dec <__sseek>:
 8006dec:	b510      	push	{r4, lr}
 8006dee:	460c      	mov	r4, r1
 8006df0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006df4:	f000 fa60 	bl	80072b8 <_lseek_r>
 8006df8:	89a3      	ldrh	r3, [r4, #12]
 8006dfa:	1c42      	adds	r2, r0, #1
 8006dfc:	bf0e      	itee	eq
 8006dfe:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006e02:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006e06:	6520      	strne	r0, [r4, #80]	; 0x50
 8006e08:	81a3      	strh	r3, [r4, #12]
 8006e0a:	bd10      	pop	{r4, pc}

08006e0c <__sclose>:
 8006e0c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006e10:	f000 b922 	b.w	8007058 <_close_r>

08006e14 <strncpy>:
 8006e14:	ea40 0301 	orr.w	r3, r0, r1
 8006e18:	079b      	lsls	r3, r3, #30
 8006e1a:	b470      	push	{r4, r5, r6}
 8006e1c:	d12a      	bne.n	8006e74 <strncpy+0x60>
 8006e1e:	2a03      	cmp	r2, #3
 8006e20:	d928      	bls.n	8006e74 <strncpy+0x60>
 8006e22:	460c      	mov	r4, r1
 8006e24:	4603      	mov	r3, r0
 8006e26:	4621      	mov	r1, r4
 8006e28:	f854 6b04 	ldr.w	r6, [r4], #4
 8006e2c:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006e30:	ea25 0506 	bic.w	r5, r5, r6
 8006e34:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006e38:	d106      	bne.n	8006e48 <strncpy+0x34>
 8006e3a:	3a04      	subs	r2, #4
 8006e3c:	2a03      	cmp	r2, #3
 8006e3e:	f843 6b04 	str.w	r6, [r3], #4
 8006e42:	4621      	mov	r1, r4
 8006e44:	d8ef      	bhi.n	8006e26 <strncpy+0x12>
 8006e46:	b19a      	cbz	r2, 8006e70 <strncpy+0x5c>
 8006e48:	780c      	ldrb	r4, [r1, #0]
 8006e4a:	701c      	strb	r4, [r3, #0]
 8006e4c:	3a01      	subs	r2, #1
 8006e4e:	3301      	adds	r3, #1
 8006e50:	b13c      	cbz	r4, 8006e62 <strncpy+0x4e>
 8006e52:	b16a      	cbz	r2, 8006e70 <strncpy+0x5c>
 8006e54:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006e58:	f803 4b01 	strb.w	r4, [r3], #1
 8006e5c:	3a01      	subs	r2, #1
 8006e5e:	2c00      	cmp	r4, #0
 8006e60:	d1f7      	bne.n	8006e52 <strncpy+0x3e>
 8006e62:	b12a      	cbz	r2, 8006e70 <strncpy+0x5c>
 8006e64:	441a      	add	r2, r3
 8006e66:	2100      	movs	r1, #0
 8006e68:	f803 1b01 	strb.w	r1, [r3], #1
 8006e6c:	4293      	cmp	r3, r2
 8006e6e:	d1fb      	bne.n	8006e68 <strncpy+0x54>
 8006e70:	bc70      	pop	{r4, r5, r6}
 8006e72:	4770      	bx	lr
 8006e74:	4603      	mov	r3, r0
 8006e76:	e7e6      	b.n	8006e46 <strncpy+0x32>

08006e78 <__sprint_r.part.0>:
 8006e78:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006e7c:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006e7e:	049c      	lsls	r4, r3, #18
 8006e80:	4692      	mov	sl, r2
 8006e82:	d52d      	bpl.n	8006ee0 <__sprint_r.part.0+0x68>
 8006e84:	6893      	ldr	r3, [r2, #8]
 8006e86:	6812      	ldr	r2, [r2, #0]
 8006e88:	b343      	cbz	r3, 8006edc <__sprint_r.part.0+0x64>
 8006e8a:	460e      	mov	r6, r1
 8006e8c:	4607      	mov	r7, r0
 8006e8e:	f102 0908 	add.w	r9, r2, #8
 8006e92:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006e96:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006e9a:	d015      	beq.n	8006ec8 <__sprint_r.part.0+0x50>
 8006e9c:	3d04      	subs	r5, #4
 8006e9e:	2400      	movs	r4, #0
 8006ea0:	e001      	b.n	8006ea6 <__sprint_r.part.0+0x2e>
 8006ea2:	45a0      	cmp	r8, r4
 8006ea4:	d00e      	beq.n	8006ec4 <__sprint_r.part.0+0x4c>
 8006ea6:	4632      	mov	r2, r6
 8006ea8:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006eac:	4638      	mov	r0, r7
 8006eae:	f000 f99d 	bl	80071ec <_fputwc_r>
 8006eb2:	1c43      	adds	r3, r0, #1
 8006eb4:	f104 0401 	add.w	r4, r4, #1
 8006eb8:	d1f3      	bne.n	8006ea2 <__sprint_r.part.0+0x2a>
 8006eba:	2300      	movs	r3, #0
 8006ebc:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006ec0:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ec4:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006ec8:	f02b 0b03 	bic.w	fp, fp, #3
 8006ecc:	eba3 030b 	sub.w	r3, r3, fp
 8006ed0:	f8ca 3008 	str.w	r3, [sl, #8]
 8006ed4:	f109 0908 	add.w	r9, r9, #8
 8006ed8:	2b00      	cmp	r3, #0
 8006eda:	d1da      	bne.n	8006e92 <__sprint_r.part.0+0x1a>
 8006edc:	2000      	movs	r0, #0
 8006ede:	e7ec      	b.n	8006eba <__sprint_r.part.0+0x42>
 8006ee0:	f7fe ffce 	bl	8005e80 <__sfvwrite_r>
 8006ee4:	2300      	movs	r3, #0
 8006ee6:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006eea:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006eee:	bf00      	nop

08006ef0 <__sprint_r>:
 8006ef0:	6893      	ldr	r3, [r2, #8]
 8006ef2:	b10b      	cbz	r3, 8006ef8 <__sprint_r+0x8>
 8006ef4:	f7ff bfc0 	b.w	8006e78 <__sprint_r.part.0>
 8006ef8:	b410      	push	{r4}
 8006efa:	4618      	mov	r0, r3
 8006efc:	6053      	str	r3, [r2, #4]
 8006efe:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006f02:	4770      	bx	lr

08006f04 <_write_r>:
 8006f04:	b570      	push	{r4, r5, r6, lr}
 8006f06:	460d      	mov	r5, r1
 8006f08:	4c08      	ldr	r4, [pc, #32]	; (8006f2c <_write_r+0x28>)
 8006f0a:	4611      	mov	r1, r2
 8006f0c:	4606      	mov	r6, r0
 8006f0e:	461a      	mov	r2, r3
 8006f10:	4628      	mov	r0, r5
 8006f12:	2300      	movs	r3, #0
 8006f14:	6023      	str	r3, [r4, #0]
 8006f16:	f7fb fb2d 	bl	8002574 <_write>
 8006f1a:	1c43      	adds	r3, r0, #1
 8006f1c:	d000      	beq.n	8006f20 <_write_r+0x1c>
 8006f1e:	bd70      	pop	{r4, r5, r6, pc}
 8006f20:	6823      	ldr	r3, [r4, #0]
 8006f22:	2b00      	cmp	r3, #0
 8006f24:	d0fb      	beq.n	8006f1e <_write_r+0x1a>
 8006f26:	6033      	str	r3, [r6, #0]
 8006f28:	bd70      	pop	{r4, r5, r6, pc}
 8006f2a:	bf00      	nop
 8006f2c:	20000ea0 	.word	0x20000ea0

08006f30 <__register_exitproc>:
 8006f30:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006f34:	4d2b      	ldr	r5, [pc, #172]	; (8006fe4 <__register_exitproc+0xb4>)
 8006f36:	4606      	mov	r6, r0
 8006f38:	6828      	ldr	r0, [r5, #0]
 8006f3a:	4698      	mov	r8, r3
 8006f3c:	460f      	mov	r7, r1
 8006f3e:	4691      	mov	r9, r2
 8006f40:	f7ff f958 	bl	80061f4 <__retarget_lock_acquire_recursive>
 8006f44:	4b28      	ldr	r3, [pc, #160]	; (8006fe8 <__register_exitproc+0xb8>)
 8006f46:	681c      	ldr	r4, [r3, #0]
 8006f48:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006f4c:	2b00      	cmp	r3, #0
 8006f4e:	d03d      	beq.n	8006fcc <__register_exitproc+0x9c>
 8006f50:	685a      	ldr	r2, [r3, #4]
 8006f52:	2a1f      	cmp	r2, #31
 8006f54:	dc0d      	bgt.n	8006f72 <__register_exitproc+0x42>
 8006f56:	f102 0c01 	add.w	ip, r2, #1
 8006f5a:	bb16      	cbnz	r6, 8006fa2 <__register_exitproc+0x72>
 8006f5c:	3202      	adds	r2, #2
 8006f5e:	f8c3 c004 	str.w	ip, [r3, #4]
 8006f62:	6828      	ldr	r0, [r5, #0]
 8006f64:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006f68:	f7ff f946 	bl	80061f8 <__retarget_lock_release_recursive>
 8006f6c:	2000      	movs	r0, #0
 8006f6e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006f72:	4b1e      	ldr	r3, [pc, #120]	; (8006fec <__register_exitproc+0xbc>)
 8006f74:	b37b      	cbz	r3, 8006fd6 <__register_exitproc+0xa6>
 8006f76:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006f7a:	f7fb fbc7 	bl	800270c <malloc>
 8006f7e:	4603      	mov	r3, r0
 8006f80:	b348      	cbz	r0, 8006fd6 <__register_exitproc+0xa6>
 8006f82:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006f86:	2100      	movs	r1, #0
 8006f88:	e9c0 2100 	strd	r2, r1, [r0]
 8006f8c:	f04f 0c01 	mov.w	ip, #1
 8006f90:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006f94:	460a      	mov	r2, r1
 8006f96:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006f9a:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006f9e:	2e00      	cmp	r6, #0
 8006fa0:	d0dc      	beq.n	8006f5c <__register_exitproc+0x2c>
 8006fa2:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006fa6:	2401      	movs	r4, #1
 8006fa8:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006fac:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006fb0:	4094      	lsls	r4, r2
 8006fb2:	4320      	orrs	r0, r4
 8006fb4:	2e02      	cmp	r6, #2
 8006fb6:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006fba:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006fbe:	d1cd      	bne.n	8006f5c <__register_exitproc+0x2c>
 8006fc0:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006fc4:	430c      	orrs	r4, r1
 8006fc6:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006fca:	e7c7      	b.n	8006f5c <__register_exitproc+0x2c>
 8006fcc:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006fd0:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006fd4:	e7bc      	b.n	8006f50 <__register_exitproc+0x20>
 8006fd6:	6828      	ldr	r0, [r5, #0]
 8006fd8:	f7ff f90e 	bl	80061f8 <__retarget_lock_release_recursive>
 8006fdc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006fe0:	e7c5      	b.n	8006f6e <__register_exitproc+0x3e>
 8006fe2:	bf00      	nop
 8006fe4:	200009e8 	.word	0x200009e8
 8006fe8:	08007718 	.word	0x08007718
 8006fec:	0800270d 	.word	0x0800270d

08006ff0 <_calloc_r>:
 8006ff0:	b510      	push	{r4, lr}
 8006ff2:	fb02 f101 	mul.w	r1, r2, r1
 8006ff6:	f7fb fb99 	bl	800272c <_malloc_r>
 8006ffa:	4604      	mov	r4, r0
 8006ffc:	b1d8      	cbz	r0, 8007036 <_calloc_r+0x46>
 8006ffe:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8007002:	f022 0203 	bic.w	r2, r2, #3
 8007006:	3a04      	subs	r2, #4
 8007008:	2a24      	cmp	r2, #36	; 0x24
 800700a:	d81d      	bhi.n	8007048 <_calloc_r+0x58>
 800700c:	2a13      	cmp	r2, #19
 800700e:	d914      	bls.n	800703a <_calloc_r+0x4a>
 8007010:	2300      	movs	r3, #0
 8007012:	2a1b      	cmp	r2, #27
 8007014:	e9c0 3300 	strd	r3, r3, [r0]
 8007018:	d91b      	bls.n	8007052 <_calloc_r+0x62>
 800701a:	2a24      	cmp	r2, #36	; 0x24
 800701c:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8007020:	bf0a      	itet	eq
 8007022:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8007026:	f100 0210 	addne.w	r2, r0, #16
 800702a:	f100 0218 	addeq.w	r2, r0, #24
 800702e:	2300      	movs	r3, #0
 8007030:	e9c2 3300 	strd	r3, r3, [r2]
 8007034:	6093      	str	r3, [r2, #8]
 8007036:	4620      	mov	r0, r4
 8007038:	bd10      	pop	{r4, pc}
 800703a:	4602      	mov	r2, r0
 800703c:	2300      	movs	r3, #0
 800703e:	e9c2 3300 	strd	r3, r3, [r2]
 8007042:	6093      	str	r3, [r2, #8]
 8007044:	4620      	mov	r0, r4
 8007046:	bd10      	pop	{r4, pc}
 8007048:	2100      	movs	r1, #0
 800704a:	f7fb fe13 	bl	8002c74 <memset>
 800704e:	4620      	mov	r0, r4
 8007050:	bd10      	pop	{r4, pc}
 8007052:	f100 0208 	add.w	r2, r0, #8
 8007056:	e7f1      	b.n	800703c <_calloc_r+0x4c>

08007058 <_close_r>:
 8007058:	b538      	push	{r3, r4, r5, lr}
 800705a:	4c07      	ldr	r4, [pc, #28]	; (8007078 <_close_r+0x20>)
 800705c:	2300      	movs	r3, #0
 800705e:	4605      	mov	r5, r0
 8007060:	4608      	mov	r0, r1
 8007062:	6023      	str	r3, [r4, #0]
 8007064:	f7fb fac7 	bl	80025f6 <_close>
 8007068:	1c43      	adds	r3, r0, #1
 800706a:	d000      	beq.n	800706e <_close_r+0x16>
 800706c:	bd38      	pop	{r3, r4, r5, pc}
 800706e:	6823      	ldr	r3, [r4, #0]
 8007070:	2b00      	cmp	r3, #0
 8007072:	d0fb      	beq.n	800706c <_close_r+0x14>
 8007074:	602b      	str	r3, [r5, #0]
 8007076:	bd38      	pop	{r3, r4, r5, pc}
 8007078:	20000ea0 	.word	0x20000ea0

0800707c <_fclose_r>:
 800707c:	b570      	push	{r4, r5, r6, lr}
 800707e:	2900      	cmp	r1, #0
 8007080:	d048      	beq.n	8007114 <_fclose_r+0x98>
 8007082:	4605      	mov	r5, r0
 8007084:	460c      	mov	r4, r1
 8007086:	b110      	cbz	r0, 800708e <_fclose_r+0x12>
 8007088:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800708a:	2b00      	cmp	r3, #0
 800708c:	d048      	beq.n	8007120 <_fclose_r+0xa4>
 800708e:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007090:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007094:	07d0      	lsls	r0, r2, #31
 8007096:	d440      	bmi.n	800711a <_fclose_r+0x9e>
 8007098:	0599      	lsls	r1, r3, #22
 800709a:	d530      	bpl.n	80070fe <_fclose_r+0x82>
 800709c:	4621      	mov	r1, r4
 800709e:	4628      	mov	r0, r5
 80070a0:	f7fe fc52 	bl	8005948 <__sflush_r>
 80070a4:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 80070a6:	4606      	mov	r6, r0
 80070a8:	b133      	cbz	r3, 80070b8 <_fclose_r+0x3c>
 80070aa:	69e1      	ldr	r1, [r4, #28]
 80070ac:	4628      	mov	r0, r5
 80070ae:	4798      	blx	r3
 80070b0:	2800      	cmp	r0, #0
 80070b2:	bfb8      	it	lt
 80070b4:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 80070b8:	89a3      	ldrh	r3, [r4, #12]
 80070ba:	061a      	lsls	r2, r3, #24
 80070bc:	d43c      	bmi.n	8007138 <_fclose_r+0xbc>
 80070be:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80070c0:	b141      	cbz	r1, 80070d4 <_fclose_r+0x58>
 80070c2:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80070c6:	4299      	cmp	r1, r3
 80070c8:	d002      	beq.n	80070d0 <_fclose_r+0x54>
 80070ca:	4628      	mov	r0, r5
 80070cc:	f7fe fde4 	bl	8005c98 <_free_r>
 80070d0:	2300      	movs	r3, #0
 80070d2:	6323      	str	r3, [r4, #48]	; 0x30
 80070d4:	6c61      	ldr	r1, [r4, #68]	; 0x44
 80070d6:	b121      	cbz	r1, 80070e2 <_fclose_r+0x66>
 80070d8:	4628      	mov	r0, r5
 80070da:	f7fe fddd 	bl	8005c98 <_free_r>
 80070de:	2300      	movs	r3, #0
 80070e0:	6463      	str	r3, [r4, #68]	; 0x44
 80070e2:	f7fe fd63 	bl	8005bac <__sfp_lock_acquire>
 80070e6:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80070e8:	2200      	movs	r2, #0
 80070ea:	07db      	lsls	r3, r3, #31
 80070ec:	81a2      	strh	r2, [r4, #12]
 80070ee:	d51f      	bpl.n	8007130 <_fclose_r+0xb4>
 80070f0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80070f2:	f7ff f87d 	bl	80061f0 <__retarget_lock_close_recursive>
 80070f6:	f7fe fd5f 	bl	8005bb8 <__sfp_lock_release>
 80070fa:	4630      	mov	r0, r6
 80070fc:	bd70      	pop	{r4, r5, r6, pc}
 80070fe:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007100:	f7ff f878 	bl	80061f4 <__retarget_lock_acquire_recursive>
 8007104:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007108:	2b00      	cmp	r3, #0
 800710a:	d1c7      	bne.n	800709c <_fclose_r+0x20>
 800710c:	6e66      	ldr	r6, [r4, #100]	; 0x64
 800710e:	f016 0601 	ands.w	r6, r6, #1
 8007112:	d016      	beq.n	8007142 <_fclose_r+0xc6>
 8007114:	2600      	movs	r6, #0
 8007116:	4630      	mov	r0, r6
 8007118:	bd70      	pop	{r4, r5, r6, pc}
 800711a:	2b00      	cmp	r3, #0
 800711c:	d0fa      	beq.n	8007114 <_fclose_r+0x98>
 800711e:	e7bd      	b.n	800709c <_fclose_r+0x20>
 8007120:	f7fe fd18 	bl	8005b54 <__sinit>
 8007124:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007126:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800712a:	07d0      	lsls	r0, r2, #31
 800712c:	d4f5      	bmi.n	800711a <_fclose_r+0x9e>
 800712e:	e7b3      	b.n	8007098 <_fclose_r+0x1c>
 8007130:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007132:	f7ff f861 	bl	80061f8 <__retarget_lock_release_recursive>
 8007136:	e7db      	b.n	80070f0 <_fclose_r+0x74>
 8007138:	6921      	ldr	r1, [r4, #16]
 800713a:	4628      	mov	r0, r5
 800713c:	f7fe fdac 	bl	8005c98 <_free_r>
 8007140:	e7bd      	b.n	80070be <_fclose_r+0x42>
 8007142:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007144:	f7ff f858 	bl	80061f8 <__retarget_lock_release_recursive>
 8007148:	4630      	mov	r0, r6
 800714a:	bd70      	pop	{r4, r5, r6, pc}

0800714c <__fputwc>:
 800714c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007150:	b082      	sub	sp, #8
 8007152:	4681      	mov	r9, r0
 8007154:	4688      	mov	r8, r1
 8007156:	4614      	mov	r4, r2
 8007158:	f000 f8a0 	bl	800729c <__locale_mb_cur_max>
 800715c:	2801      	cmp	r0, #1
 800715e:	d103      	bne.n	8007168 <__fputwc+0x1c>
 8007160:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007164:	2bfe      	cmp	r3, #254	; 0xfe
 8007166:	d933      	bls.n	80071d0 <__fputwc+0x84>
 8007168:	4642      	mov	r2, r8
 800716a:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 800716e:	a901      	add	r1, sp, #4
 8007170:	4648      	mov	r0, r9
 8007172:	f000 f93b 	bl	80073ec <_wcrtomb_r>
 8007176:	1c42      	adds	r2, r0, #1
 8007178:	4606      	mov	r6, r0
 800717a:	d02f      	beq.n	80071dc <__fputwc+0x90>
 800717c:	b320      	cbz	r0, 80071c8 <__fputwc+0x7c>
 800717e:	f89d c004 	ldrb.w	ip, [sp, #4]
 8007182:	2500      	movs	r5, #0
 8007184:	f10d 0a04 	add.w	sl, sp, #4
 8007188:	e009      	b.n	800719e <__fputwc+0x52>
 800718a:	6823      	ldr	r3, [r4, #0]
 800718c:	1c5a      	adds	r2, r3, #1
 800718e:	6022      	str	r2, [r4, #0]
 8007190:	f883 c000 	strb.w	ip, [r3]
 8007194:	3501      	adds	r5, #1
 8007196:	42b5      	cmp	r5, r6
 8007198:	d216      	bcs.n	80071c8 <__fputwc+0x7c>
 800719a:	f815 c00a 	ldrb.w	ip, [r5, sl]
 800719e:	68a3      	ldr	r3, [r4, #8]
 80071a0:	3b01      	subs	r3, #1
 80071a2:	2b00      	cmp	r3, #0
 80071a4:	60a3      	str	r3, [r4, #8]
 80071a6:	daf0      	bge.n	800718a <__fputwc+0x3e>
 80071a8:	69a7      	ldr	r7, [r4, #24]
 80071aa:	42bb      	cmp	r3, r7
 80071ac:	4661      	mov	r1, ip
 80071ae:	4622      	mov	r2, r4
 80071b0:	4648      	mov	r0, r9
 80071b2:	db02      	blt.n	80071ba <__fputwc+0x6e>
 80071b4:	f1bc 0f0a 	cmp.w	ip, #10
 80071b8:	d1e7      	bne.n	800718a <__fputwc+0x3e>
 80071ba:	f000 f8bf 	bl	800733c <__swbuf_r>
 80071be:	1c43      	adds	r3, r0, #1
 80071c0:	d1e8      	bne.n	8007194 <__fputwc+0x48>
 80071c2:	b002      	add	sp, #8
 80071c4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80071c8:	4640      	mov	r0, r8
 80071ca:	b002      	add	sp, #8
 80071cc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80071d0:	fa5f fc88 	uxtb.w	ip, r8
 80071d4:	4606      	mov	r6, r0
 80071d6:	f88d c004 	strb.w	ip, [sp, #4]
 80071da:	e7d2      	b.n	8007182 <__fputwc+0x36>
 80071dc:	89a3      	ldrh	r3, [r4, #12]
 80071de:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80071e2:	81a3      	strh	r3, [r4, #12]
 80071e4:	b002      	add	sp, #8
 80071e6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80071ea:	bf00      	nop

080071ec <_fputwc_r>:
 80071ec:	b530      	push	{r4, r5, lr}
 80071ee:	4605      	mov	r5, r0
 80071f0:	6e50      	ldr	r0, [r2, #100]	; 0x64
 80071f2:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 80071f6:	07c0      	lsls	r0, r0, #31
 80071f8:	4614      	mov	r4, r2
 80071fa:	b083      	sub	sp, #12
 80071fc:	b29a      	uxth	r2, r3
 80071fe:	d401      	bmi.n	8007204 <_fputwc_r+0x18>
 8007200:	0590      	lsls	r0, r2, #22
 8007202:	d51c      	bpl.n	800723e <_fputwc_r+0x52>
 8007204:	0490      	lsls	r0, r2, #18
 8007206:	d406      	bmi.n	8007216 <_fputwc_r+0x2a>
 8007208:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800720a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800720e:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007212:	81a3      	strh	r3, [r4, #12]
 8007214:	6662      	str	r2, [r4, #100]	; 0x64
 8007216:	4628      	mov	r0, r5
 8007218:	4622      	mov	r2, r4
 800721a:	f7ff ff97 	bl	800714c <__fputwc>
 800721e:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8007220:	07da      	lsls	r2, r3, #31
 8007222:	4605      	mov	r5, r0
 8007224:	d402      	bmi.n	800722c <_fputwc_r+0x40>
 8007226:	89a3      	ldrh	r3, [r4, #12]
 8007228:	059b      	lsls	r3, r3, #22
 800722a:	d502      	bpl.n	8007232 <_fputwc_r+0x46>
 800722c:	4628      	mov	r0, r5
 800722e:	b003      	add	sp, #12
 8007230:	bd30      	pop	{r4, r5, pc}
 8007232:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007234:	f7fe ffe0 	bl	80061f8 <__retarget_lock_release_recursive>
 8007238:	4628      	mov	r0, r5
 800723a:	b003      	add	sp, #12
 800723c:	bd30      	pop	{r4, r5, pc}
 800723e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007240:	9101      	str	r1, [sp, #4]
 8007242:	f7fe ffd7 	bl	80061f4 <__retarget_lock_acquire_recursive>
 8007246:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800724a:	9901      	ldr	r1, [sp, #4]
 800724c:	b29a      	uxth	r2, r3
 800724e:	e7d9      	b.n	8007204 <_fputwc_r+0x18>

08007250 <_fstat_r>:
 8007250:	b538      	push	{r3, r4, r5, lr}
 8007252:	460b      	mov	r3, r1
 8007254:	4c07      	ldr	r4, [pc, #28]	; (8007274 <_fstat_r+0x24>)
 8007256:	4605      	mov	r5, r0
 8007258:	4611      	mov	r1, r2
 800725a:	4618      	mov	r0, r3
 800725c:	2300      	movs	r3, #0
 800725e:	6023      	str	r3, [r4, #0]
 8007260:	f7fb f9cc 	bl	80025fc <_fstat>
 8007264:	1c43      	adds	r3, r0, #1
 8007266:	d000      	beq.n	800726a <_fstat_r+0x1a>
 8007268:	bd38      	pop	{r3, r4, r5, pc}
 800726a:	6823      	ldr	r3, [r4, #0]
 800726c:	2b00      	cmp	r3, #0
 800726e:	d0fb      	beq.n	8007268 <_fstat_r+0x18>
 8007270:	602b      	str	r3, [r5, #0]
 8007272:	bd38      	pop	{r3, r4, r5, pc}
 8007274:	20000ea0 	.word	0x20000ea0

08007278 <_isatty_r>:
 8007278:	b538      	push	{r3, r4, r5, lr}
 800727a:	4c07      	ldr	r4, [pc, #28]	; (8007298 <_isatty_r+0x20>)
 800727c:	2300      	movs	r3, #0
 800727e:	4605      	mov	r5, r0
 8007280:	4608      	mov	r0, r1
 8007282:	6023      	str	r3, [r4, #0]
 8007284:	f7fb f9c0 	bl	8002608 <_isatty>
 8007288:	1c43      	adds	r3, r0, #1
 800728a:	d000      	beq.n	800728e <_isatty_r+0x16>
 800728c:	bd38      	pop	{r3, r4, r5, pc}
 800728e:	6823      	ldr	r3, [r4, #0]
 8007290:	2b00      	cmp	r3, #0
 8007292:	d0fb      	beq.n	800728c <_isatty_r+0x14>
 8007294:	602b      	str	r3, [r5, #0]
 8007296:	bd38      	pop	{r3, r4, r5, pc}
 8007298:	20000ea0 	.word	0x20000ea0

0800729c <__locale_mb_cur_max>:
 800729c:	4b04      	ldr	r3, [pc, #16]	; (80072b0 <__locale_mb_cur_max+0x14>)
 800729e:	4a05      	ldr	r2, [pc, #20]	; (80072b4 <__locale_mb_cur_max+0x18>)
 80072a0:	681b      	ldr	r3, [r3, #0]
 80072a2:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80072a4:	2b00      	cmp	r3, #0
 80072a6:	bf08      	it	eq
 80072a8:	4613      	moveq	r3, r2
 80072aa:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 80072ae:	4770      	bx	lr
 80072b0:	200001a8 	.word	0x200001a8
 80072b4:	200009ec 	.word	0x200009ec

080072b8 <_lseek_r>:
 80072b8:	b570      	push	{r4, r5, r6, lr}
 80072ba:	460d      	mov	r5, r1
 80072bc:	4c08      	ldr	r4, [pc, #32]	; (80072e0 <_lseek_r+0x28>)
 80072be:	4611      	mov	r1, r2
 80072c0:	4606      	mov	r6, r0
 80072c2:	461a      	mov	r2, r3
 80072c4:	4628      	mov	r0, r5
 80072c6:	2300      	movs	r3, #0
 80072c8:	6023      	str	r3, [r4, #0]
 80072ca:	f7fb f99f 	bl	800260c <_lseek>
 80072ce:	1c43      	adds	r3, r0, #1
 80072d0:	d000      	beq.n	80072d4 <_lseek_r+0x1c>
 80072d2:	bd70      	pop	{r4, r5, r6, pc}
 80072d4:	6823      	ldr	r3, [r4, #0]
 80072d6:	2b00      	cmp	r3, #0
 80072d8:	d0fb      	beq.n	80072d2 <_lseek_r+0x1a>
 80072da:	6033      	str	r3, [r6, #0]
 80072dc:	bd70      	pop	{r4, r5, r6, pc}
 80072de:	bf00      	nop
 80072e0:	20000ea0 	.word	0x20000ea0

080072e4 <__ascii_mbtowc>:
 80072e4:	b082      	sub	sp, #8
 80072e6:	b149      	cbz	r1, 80072fc <__ascii_mbtowc+0x18>
 80072e8:	b15a      	cbz	r2, 8007302 <__ascii_mbtowc+0x1e>
 80072ea:	b16b      	cbz	r3, 8007308 <__ascii_mbtowc+0x24>
 80072ec:	7813      	ldrb	r3, [r2, #0]
 80072ee:	600b      	str	r3, [r1, #0]
 80072f0:	7812      	ldrb	r2, [r2, #0]
 80072f2:	1c10      	adds	r0, r2, #0
 80072f4:	bf18      	it	ne
 80072f6:	2001      	movne	r0, #1
 80072f8:	b002      	add	sp, #8
 80072fa:	4770      	bx	lr
 80072fc:	a901      	add	r1, sp, #4
 80072fe:	2a00      	cmp	r2, #0
 8007300:	d1f3      	bne.n	80072ea <__ascii_mbtowc+0x6>
 8007302:	4610      	mov	r0, r2
 8007304:	b002      	add	sp, #8
 8007306:	4770      	bx	lr
 8007308:	f06f 0001 	mvn.w	r0, #1
 800730c:	e7f4      	b.n	80072f8 <__ascii_mbtowc+0x14>
 800730e:	bf00      	nop

08007310 <_read_r>:
 8007310:	b570      	push	{r4, r5, r6, lr}
 8007312:	460d      	mov	r5, r1
 8007314:	4c08      	ldr	r4, [pc, #32]	; (8007338 <_read_r+0x28>)
 8007316:	4611      	mov	r1, r2
 8007318:	4606      	mov	r6, r0
 800731a:	461a      	mov	r2, r3
 800731c:	4628      	mov	r0, r5
 800731e:	2300      	movs	r3, #0
 8007320:	6023      	str	r3, [r4, #0]
 8007322:	f7fb f907 	bl	8002534 <_read>
 8007326:	1c43      	adds	r3, r0, #1
 8007328:	d000      	beq.n	800732c <_read_r+0x1c>
 800732a:	bd70      	pop	{r4, r5, r6, pc}
 800732c:	6823      	ldr	r3, [r4, #0]
 800732e:	2b00      	cmp	r3, #0
 8007330:	d0fb      	beq.n	800732a <_read_r+0x1a>
 8007332:	6033      	str	r3, [r6, #0]
 8007334:	bd70      	pop	{r4, r5, r6, pc}
 8007336:	bf00      	nop
 8007338:	20000ea0 	.word	0x20000ea0

0800733c <__swbuf_r>:
 800733c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800733e:	460d      	mov	r5, r1
 8007340:	4614      	mov	r4, r2
 8007342:	4606      	mov	r6, r0
 8007344:	b110      	cbz	r0, 800734c <__swbuf_r+0x10>
 8007346:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007348:	2b00      	cmp	r3, #0
 800734a:	d043      	beq.n	80073d4 <__swbuf_r+0x98>
 800734c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007350:	69a3      	ldr	r3, [r4, #24]
 8007352:	60a3      	str	r3, [r4, #8]
 8007354:	b291      	uxth	r1, r2
 8007356:	0708      	lsls	r0, r1, #28
 8007358:	d51b      	bpl.n	8007392 <__swbuf_r+0x56>
 800735a:	6923      	ldr	r3, [r4, #16]
 800735c:	b1cb      	cbz	r3, 8007392 <__swbuf_r+0x56>
 800735e:	b2ed      	uxtb	r5, r5
 8007360:	0489      	lsls	r1, r1, #18
 8007362:	462f      	mov	r7, r5
 8007364:	d522      	bpl.n	80073ac <__swbuf_r+0x70>
 8007366:	6822      	ldr	r2, [r4, #0]
 8007368:	6961      	ldr	r1, [r4, #20]
 800736a:	1ad3      	subs	r3, r2, r3
 800736c:	4299      	cmp	r1, r3
 800736e:	dd29      	ble.n	80073c4 <__swbuf_r+0x88>
 8007370:	3301      	adds	r3, #1
 8007372:	68a1      	ldr	r1, [r4, #8]
 8007374:	1c50      	adds	r0, r2, #1
 8007376:	3901      	subs	r1, #1
 8007378:	60a1      	str	r1, [r4, #8]
 800737a:	6020      	str	r0, [r4, #0]
 800737c:	7015      	strb	r5, [r2, #0]
 800737e:	6962      	ldr	r2, [r4, #20]
 8007380:	429a      	cmp	r2, r3
 8007382:	d02a      	beq.n	80073da <__swbuf_r+0x9e>
 8007384:	89a3      	ldrh	r3, [r4, #12]
 8007386:	07db      	lsls	r3, r3, #31
 8007388:	d501      	bpl.n	800738e <__swbuf_r+0x52>
 800738a:	2d0a      	cmp	r5, #10
 800738c:	d025      	beq.n	80073da <__swbuf_r+0x9e>
 800738e:	4638      	mov	r0, r7
 8007390:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007392:	4621      	mov	r1, r4
 8007394:	4630      	mov	r0, r6
 8007396:	f7fd fabf 	bl	8004918 <__swsetup_r>
 800739a:	bb20      	cbnz	r0, 80073e6 <__swbuf_r+0xaa>
 800739c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80073a0:	6923      	ldr	r3, [r4, #16]
 80073a2:	b291      	uxth	r1, r2
 80073a4:	b2ed      	uxtb	r5, r5
 80073a6:	0489      	lsls	r1, r1, #18
 80073a8:	462f      	mov	r7, r5
 80073aa:	d4dc      	bmi.n	8007366 <__swbuf_r+0x2a>
 80073ac:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80073ae:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80073b2:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80073b6:	81a2      	strh	r2, [r4, #12]
 80073b8:	6822      	ldr	r2, [r4, #0]
 80073ba:	6661      	str	r1, [r4, #100]	; 0x64
 80073bc:	6961      	ldr	r1, [r4, #20]
 80073be:	1ad3      	subs	r3, r2, r3
 80073c0:	4299      	cmp	r1, r3
 80073c2:	dcd5      	bgt.n	8007370 <__swbuf_r+0x34>
 80073c4:	4621      	mov	r1, r4
 80073c6:	4630      	mov	r0, r6
 80073c8:	f7fe fb68 	bl	8005a9c <_fflush_r>
 80073cc:	b958      	cbnz	r0, 80073e6 <__swbuf_r+0xaa>
 80073ce:	6822      	ldr	r2, [r4, #0]
 80073d0:	2301      	movs	r3, #1
 80073d2:	e7ce      	b.n	8007372 <__swbuf_r+0x36>
 80073d4:	f7fe fbbe 	bl	8005b54 <__sinit>
 80073d8:	e7b8      	b.n	800734c <__swbuf_r+0x10>
 80073da:	4621      	mov	r1, r4
 80073dc:	4630      	mov	r0, r6
 80073de:	f7fe fb5d 	bl	8005a9c <_fflush_r>
 80073e2:	2800      	cmp	r0, #0
 80073e4:	d0d3      	beq.n	800738e <__swbuf_r+0x52>
 80073e6:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80073ea:	e7d0      	b.n	800738e <__swbuf_r+0x52>

080073ec <_wcrtomb_r>:
 80073ec:	b5f0      	push	{r4, r5, r6, r7, lr}
 80073ee:	4c11      	ldr	r4, [pc, #68]	; (8007434 <_wcrtomb_r+0x48>)
 80073f0:	6824      	ldr	r4, [r4, #0]
 80073f2:	b085      	sub	sp, #20
 80073f4:	4606      	mov	r6, r0
 80073f6:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80073f8:	461f      	mov	r7, r3
 80073fa:	b151      	cbz	r1, 8007412 <_wcrtomb_r+0x26>
 80073fc:	4d0e      	ldr	r5, [pc, #56]	; (8007438 <_wcrtomb_r+0x4c>)
 80073fe:	2c00      	cmp	r4, #0
 8007400:	bf08      	it	eq
 8007402:	462c      	moveq	r4, r5
 8007404:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007408:	47a0      	blx	r4
 800740a:	1c43      	adds	r3, r0, #1
 800740c:	d00c      	beq.n	8007428 <_wcrtomb_r+0x3c>
 800740e:	b005      	add	sp, #20
 8007410:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007412:	4a09      	ldr	r2, [pc, #36]	; (8007438 <_wcrtomb_r+0x4c>)
 8007414:	2c00      	cmp	r4, #0
 8007416:	bf08      	it	eq
 8007418:	4614      	moveq	r4, r2
 800741a:	460a      	mov	r2, r1
 800741c:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007420:	a901      	add	r1, sp, #4
 8007422:	47a0      	blx	r4
 8007424:	1c43      	adds	r3, r0, #1
 8007426:	d1f2      	bne.n	800740e <_wcrtomb_r+0x22>
 8007428:	2200      	movs	r2, #0
 800742a:	238a      	movs	r3, #138	; 0x8a
 800742c:	603a      	str	r2, [r7, #0]
 800742e:	6033      	str	r3, [r6, #0]
 8007430:	b005      	add	sp, #20
 8007432:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007434:	200001a8 	.word	0x200001a8
 8007438:	200009ec 	.word	0x200009ec

0800743c <__ascii_wctomb>:
 800743c:	b121      	cbz	r1, 8007448 <__ascii_wctomb+0xc>
 800743e:	2aff      	cmp	r2, #255	; 0xff
 8007440:	d804      	bhi.n	800744c <__ascii_wctomb+0x10>
 8007442:	700a      	strb	r2, [r1, #0]
 8007444:	2001      	movs	r0, #1
 8007446:	4770      	bx	lr
 8007448:	4608      	mov	r0, r1
 800744a:	4770      	bx	lr
 800744c:	238a      	movs	r3, #138	; 0x8a
 800744e:	6003      	str	r3, [r0, #0]
 8007450:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007454:	4770      	bx	lr
 8007456:	bf00      	nop

08007458 <_init>:
 8007458:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800745a:	bf00      	nop
 800745c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800745e:	bc08      	pop	{r3}
 8007460:	469e      	mov	lr, r3
 8007462:	4770      	bx	lr

08007464 <_fini>:
 8007464:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007466:	bf00      	nop
 8007468:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800746a:	bc08      	pop	{r3}
 800746c:	469e      	mov	lr, r3
 800746e:	4770      	bx	lr
