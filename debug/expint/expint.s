
expint.elf:     file format elf32-littlearm


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
 80001e0:	08006fa4 	.word	0x08006fa4

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
 80001fc:	08006fa4 	.word	0x08006fa4

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
 8001108:	f640 20ac 	movw	r0, #2732	; 0xaac
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 20ac 	movw	r0, #2732	; 0xaac
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
 80013e8:	f646 72d8 	movw	r2, #28632	; 0x6fd8
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
 800145a:	f240 0014 	movw	r0, #20
 800145e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001462:	f646 72d0 	movw	r2, #28624	; 0x6fd0
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
 8001484:	f240 0014 	movw	r0, #20
 8001488:	f241 0108 	movw	r1, #4104	; 0x1008
 800148c:	f646 72d0 	movw	r2, #28624	; 0x6fd0
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
 8001842:	f640 21b0 	movw	r1, #2736	; 0xab0
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
 800188c:	f640 20b0 	movw	r0, #2736	; 0xab0
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 20b0 	movw	r0, #2736	; 0xab0
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
 80019d4:	f247 0308 	movw	r3, #28680	; 0x7008
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
 80019fc:	f247 0318 	movw	r3, #28696	; 0x7018
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

08001eb6 <expint>:
 8001eb6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eb8:	af03      	add	r7, sp, #12
 8001eba:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ebe:	b081      	sub	sp, #4
 8001ec0:	2902      	cmp	r1, #2
 8001ec2:	db38      	blt.n	8001f36 <expint+0x80>
 8001ec4:	f24c 3b80 	movw	fp, #50048	; 0xc380
 8001ec8:	f248 4880 	movw	r8, #33920	; 0x8480
 8001ecc:	f06f 0201 	mvn.w	r2, #1
 8001ed0:	eb01 0e00 	add.w	lr, r1, r0
 8001ed4:	9100      	str	r1, [sp, #0]
 8001ed6:	f1c0 0900 	rsb	r9, r0, #0
 8001eda:	2401      	movs	r4, #1
 8001edc:	f04f 36ff 	mov.w	r6, #4294967295	; 0xffffffff
 8001ee0:	f242 710f 	movw	r1, #9999	; 0x270f
 8001ee4:	f2c0 1bc9 	movt	fp, #457	; 0x1c9
 8001ee8:	eba2 0c00 	sub.w	ip, r2, r0
 8001eec:	f10e 0202 	add.w	r2, lr, #2
 8001ef0:	f2c0 081e 	movt	r8, #30
 8001ef4:	46da      	mov	sl, fp
 8001ef6:	fb0a 2509 	mla	r5, sl, r9, r2
 8001efa:	eb05 0585 	add.w	r5, r5, r5, lsl #2
 8001efe:	ea4f 0a45 	mov.w	sl, r5, lsl #1
 8001f02:	1905      	adds	r5, r0, r4
 8001f04:	3d01      	subs	r5, #1
 8001f06:	4375      	muls	r5, r6
 8001f08:	fb95 f5f8 	sdiv	r5, r5, r8
 8001f0c:	1953      	adds	r3, r2, r5
 8001f0e:	fb03 f30a 	mul.w	r3, r3, sl
 8001f12:	fb03 fb0b 	mul.w	fp, r3, fp
 8001f16:	428b      	cmp	r3, r1
 8001f18:	dd47      	ble.n	8001faa <expint+0xf4>
 8001f1a:	f10e 0e02 	add.w	lr, lr, #2
 8001f1e:	3401      	adds	r4, #1
 8001f20:	44e1      	add	r9, ip
 8001f22:	3e01      	subs	r6, #1
 8001f24:	f1ac 0c02 	sub.w	ip, ip, #2
 8001f28:	3202      	adds	r2, #2
 8001f2a:	eb05 080e 	add.w	r8, r5, lr
 8001f2e:	2c64      	cmp	r4, #100	; 0x64
 8001f30:	dde1      	ble.n	8001ef6 <expint+0x40>
 8001f32:	2200      	movs	r2, #0
 8001f34:	e03d      	b.n	8001fb2 <expint+0xfc>
 8001f36:	1c42      	adds	r2, r0, #1
 8001f38:	1e83      	subs	r3, r0, #2
 8001f3a:	1ec6      	subs	r6, r0, #3
 8001f3c:	1e45      	subs	r5, r0, #1
 8001f3e:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8001f42:	2400      	movs	r4, #0
 8001f44:	fb03 0202 	mla	r2, r3, r2, r0
 8001f48:	fba3 3606 	umull	r3, r6, r3, r6
 8001f4c:	f006 0601 	and.w	r6, r6, #1
 8001f50:	ea5f 0656 	movs.w	r6, r6, lsr #1
 8001f54:	ea4f 0333 	mov.w	r3, r3, rrx
 8001f58:	2801      	cmp	r0, #1
 8001f5a:	f1c0 0002 	rsb	r0, r0, #2
 8001f5e:	441a      	add	r2, r3
 8001f60:	f101 0308 	add.w	r3, r1, #8
 8001f64:	bfc8      	it	gt
 8001f66:	f102 0cff 	addgt.w	ip, r2, #255	; 0xff
 8001f6a:	2d00      	cmp	r5, #0
 8001f6c:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
 8001f70:	fb03 f601 	mul.w	r6, r3, r1
 8001f74:	f1c1 0304 	rsb	r3, r1, #4
 8001f78:	f1c1 0100 	rsb	r1, r1, #0
 8001f7c:	f04f 0501 	mov.w	r5, #1
 8001f80:	bf18      	it	ne
 8001f82:	2202      	movne	r2, #2
 8001f84:	fa06 fe03 	lsl.w	lr, r6, r3
 8001f88:	1c63      	adds	r3, r4, #1
 8001f8a:	1824      	adds	r4, r4, r0
 8001f8c:	fb91 f6f3 	sdiv	r6, r1, r3
 8001f90:	fb06 f505 	mul.w	r5, r6, r5
 8001f94:	bf1a      	itte	ne
 8001f96:	426e      	negne	r6, r5
 8001f98:	fb96 f4f4 	sdivne	r4, r6, r4
 8001f9c:	fb05 c40e 	mlaeq	r4, r5, lr, ip
 8001fa0:	2b64      	cmp	r3, #100	; 0x64
 8001fa2:	4422      	add	r2, r4
 8001fa4:	461c      	mov	r4, r3
 8001fa6:	d1ef      	bne.n	8001f88 <expint+0xd2>
 8001fa8:	e003      	b.n	8001fb2 <expint+0xfc>
 8001faa:	9800      	ldr	r0, [sp, #0]
 8001fac:	4240      	negs	r0, r0
 8001fae:	fb0b f200 	mul.w	r2, fp, r0
 8001fb2:	4610      	mov	r0, r2
 8001fb4:	b001      	add	sp, #4
 8001fb6:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001fba:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001fbc <benchmark>:
 8001fbc:	b580      	push	{r7, lr}
 8001fbe:	466f      	mov	r7, sp
 8001fc0:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8001fc4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fc8:	7801      	ldrb	r1, [r0, #0]
 8001fca:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8001fce:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fd2:	7800      	ldrb	r0, [r0, #0]
 8001fd4:	2800      	cmp	r0, #0
 8001fd6:	bf18      	it	ne
 8001fd8:	2032      	movne	r0, #50	; 0x32
 8001fda:	f7ff ff6c 	bl	8001eb6 <expint>
 8001fde:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8001fe2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001fe6:	6008      	str	r0, [r1, #0]
 8001fe8:	6808      	ldr	r0, [r1, #0]
 8001fea:	bd80      	pop	{r7, pc}

08001fec <initialise_benchmark>:
 8001fec:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8001ff0:	2101      	movs	r1, #1
 8001ff2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ff6:	7001      	strb	r1, [r0, #0]
 8001ff8:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8001ffc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002000:	7001      	strb	r1, [r0, #0]
 8002002:	4770      	bx	lr

08002004 <verify_benchmark>:
 8002004:	f640 722b 	movw	r2, #3883	; 0xf2b
 8002008:	2100      	movs	r1, #0
 800200a:	4290      	cmp	r0, r2
 800200c:	bf08      	it	eq
 800200e:	2101      	moveq	r1, #1
 8002010:	4608      	mov	r0, r1
 8002012:	4770      	bx	lr

08002014 <__io_putchar>:
 8002014:	b580      	push	{r7, lr}
 8002016:	466f      	mov	r7, sp
 8002018:	b082      	sub	sp, #8
 800201a:	9001      	str	r0, [sp, #4]
 800201c:	f640 10f0 	movw	r0, #2544	; 0x9f0
 8002020:	a901      	add	r1, sp, #4
 8002022:	2201      	movs	r2, #1
 8002024:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002028:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800202c:	f7ff fe55 	bl	8001cda <HAL_UART_Transmit>
 8002030:	9801      	ldr	r0, [sp, #4]
 8002032:	b002      	add	sp, #8
 8002034:	bd80      	pop	{r7, pc}

08002036 <main>:
 8002036:	b5b0      	push	{r4, r5, r7, lr}
 8002038:	af02      	add	r7, sp, #8
 800203a:	f640 11f0 	movw	r1, #2544	; 0x9f0
 800203e:	f643 0000 	movw	r0, #14336	; 0x3800
 8002042:	220c      	movs	r2, #12
 8002044:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002048:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800204c:	6008      	str	r0, [r1, #0]
 800204e:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8002052:	6048      	str	r0, [r1, #4]
 8002054:	2000      	movs	r0, #0
 8002056:	e9c1 0002 	strd	r0, r0, [r1, #8]
 800205a:	6108      	str	r0, [r1, #16]
 800205c:	6248      	str	r0, [r1, #36]	; 0x24
 800205e:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8002062:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8002066:	2000      	movs	r0, #0
 8002068:	f7ff fecc 	bl	8001e04 <BSP_COM_Init>
 800206c:	f7ff ffbe 	bl	8001fec <initialise_benchmark>
 8002070:	f247 0028 	movw	r0, #28712	; 0x7028
 8002074:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002078:	f000 f948 	bl	800230c <printf>
 800207c:	f247 00d1 	movw	r0, #28881	; 0x70d1
 8002080:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002084:	f000 f9a4 	bl	80023d0 <puts>
 8002088:	f7ff f82e 	bl	80010e8 <HAL_Init>
 800208c:	f7ff f844 	bl	8001118 <HAL_GetTick>
 8002090:	4604      	mov	r4, r0
 8002092:	f7ff ff93 	bl	8001fbc <benchmark>
 8002096:	4605      	mov	r5, r0
 8002098:	f7ff f83e 	bl	8001118 <HAL_GetTick>
 800209c:	1b04      	subs	r4, r0, r4
 800209e:	4628      	mov	r0, r5
 80020a0:	f7ff ffb0 	bl	8002004 <verify_benchmark>
 80020a4:	1c41      	adds	r1, r0, #1
 80020a6:	d006      	beq.n	80020b6 <main+0x80>
 80020a8:	2801      	cmp	r0, #1
 80020aa:	d109      	bne.n	80020c0 <main+0x8a>
 80020ac:	f247 003d 	movw	r0, #28733	; 0x703d
 80020b0:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020b4:	e008      	b.n	80020c8 <main+0x92>
 80020b6:	f247 0061 	movw	r0, #28769	; 0x7061
 80020ba:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020be:	e003      	b.n	80020c8 <main+0x92>
 80020c0:	f247 0096 	movw	r0, #28822	; 0x7096
 80020c4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020c8:	4621      	mov	r1, r4
 80020ca:	f000 f91f 	bl	800230c <printf>
 80020ce:	2000      	movs	r0, #0
 80020d0:	bdb0      	pop	{r4, r5, r7, pc}

080020d2 <SysTick_Handler>:
 80020d2:	b580      	push	{r7, lr}
 80020d4:	466f      	mov	r7, sp
 80020d6:	f7ff f817 	bl	8001108 <HAL_IncTick>
 80020da:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80020de:	f7ff b871 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

080020e2 <_read>:
 80020e2:	b5f0      	push	{r4, r5, r6, r7, lr}
 80020e4:	af03      	add	r7, sp, #12
 80020e6:	f84d bd04 	str.w	fp, [sp, #-4]!
 80020ea:	4614      	mov	r4, r2
 80020ec:	460d      	mov	r5, r1
 80020ee:	2c01      	cmp	r4, #1
 80020f0:	db06      	blt.n	8002100 <_read+0x1e>
 80020f2:	4626      	mov	r6, r4
 80020f4:	f3af 8000 	nop.w
 80020f8:	f805 0b01 	strb.w	r0, [r5], #1
 80020fc:	3e01      	subs	r6, #1
 80020fe:	d1f9      	bne.n	80020f4 <_read+0x12>
 8002100:	4620      	mov	r0, r4
 8002102:	f85d bb04 	ldr.w	fp, [sp], #4
 8002106:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002108 <_write>:
 8002108:	b5f0      	push	{r4, r5, r6, r7, lr}
 800210a:	af03      	add	r7, sp, #12
 800210c:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002110:	4614      	mov	r4, r2
 8002112:	460d      	mov	r5, r1
 8002114:	2c01      	cmp	r4, #1
 8002116:	db06      	blt.n	8002126 <_write+0x1e>
 8002118:	4626      	mov	r6, r4
 800211a:	f815 0b01 	ldrb.w	r0, [r5], #1
 800211e:	f7ff ff79 	bl	8002014 <__io_putchar>
 8002122:	3e01      	subs	r6, #1
 8002124:	d1f9      	bne.n	800211a <_write+0x12>
 8002126:	4620      	mov	r0, r4
 8002128:	f85d bb04 	ldr.w	fp, [sp], #4
 800212c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800212e <_sbrk>:
 800212e:	f640 2274 	movw	r2, #2676	; 0xa74
 8002132:	4601      	mov	r1, r0
 8002134:	466b      	mov	r3, sp
 8002136:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800213a:	6810      	ldr	r0, [r2, #0]
 800213c:	2800      	cmp	r0, #0
 800213e:	bf02      	ittt	eq
 8002140:	f640 3020 	movweq	r0, #2848	; 0xb20
 8002144:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002148:	6010      	streq	r0, [r2, #0]
 800214a:	4401      	add	r1, r0
 800214c:	4299      	cmp	r1, r3
 800214e:	bf9c      	itt	ls
 8002150:	6011      	strls	r1, [r2, #0]
 8002152:	4770      	bxls	lr
 8002154:	b580      	push	{r7, lr}
 8002156:	466f      	mov	r7, sp
 8002158:	f000 f864 	bl	8002224 <__errno>
 800215c:	210c      	movs	r1, #12
 800215e:	6001      	str	r1, [r0, #0]
 8002160:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002164:	bd80      	pop	{r7, pc}

08002166 <_close>:
 8002166:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800216a:	4770      	bx	lr

0800216c <_fstat>:
 800216c:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002170:	6048      	str	r0, [r1, #4]
 8002172:	2000      	movs	r0, #0
 8002174:	4770      	bx	lr

08002176 <_isatty>:
 8002176:	2001      	movs	r0, #1
 8002178:	4770      	bx	lr

0800217a <_lseek>:
 800217a:	2000      	movs	r0, #0
 800217c:	4770      	bx	lr

0800217e <SystemInit>:
 800217e:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002182:	f04f 0c00 	mov.w	ip, #0
 8002186:	f2ce 0000 	movt	r0, #57344	; 0xe000
 800218a:	6801      	ldr	r1, [r0, #0]
 800218c:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002190:	6001      	str	r1, [r0, #0]
 8002192:	f241 0100 	movw	r1, #4096	; 0x1000
 8002196:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800219a:	680a      	ldr	r2, [r1, #0]
 800219c:	f042 0201 	orr.w	r2, r2, #1
 80021a0:	600a      	str	r2, [r1, #0]
 80021a2:	f8c1 c008 	str.w	ip, [r1, #8]
 80021a6:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80021aa:	680b      	ldr	r3, [r1, #0]
 80021ac:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 80021b0:	401a      	ands	r2, r3
 80021b2:	600a      	str	r2, [r1, #0]
 80021b4:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80021b8:	60ca      	str	r2, [r1, #12]
 80021ba:	680a      	ldr	r2, [r1, #0]
 80021bc:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80021c0:	600a      	str	r2, [r1, #0]
 80021c2:	f8c1 c018 	str.w	ip, [r1, #24]
 80021c6:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80021ca:	f840 1c80 	str.w	r1, [r0, #-128]
 80021ce:	4770      	bx	lr

080021d0 <Reset_Handler>:
 80021d0:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002208 <LoopForever+0x2>
 80021d4:	2100      	movs	r1, #0
 80021d6:	e003      	b.n	80021e0 <LoopCopyDataInit>

080021d8 <CopyDataInit>:
 80021d8:	4b0c      	ldr	r3, [pc, #48]	; (800220c <LoopForever+0x6>)
 80021da:	585b      	ldr	r3, [r3, r1]
 80021dc:	5043      	str	r3, [r0, r1]
 80021de:	3104      	adds	r1, #4

080021e0 <LoopCopyDataInit>:
 80021e0:	480b      	ldr	r0, [pc, #44]	; (8002210 <LoopForever+0xa>)
 80021e2:	4b0c      	ldr	r3, [pc, #48]	; (8002214 <LoopForever+0xe>)
 80021e4:	1842      	adds	r2, r0, r1
 80021e6:	429a      	cmp	r2, r3
 80021e8:	d3f6      	bcc.n	80021d8 <CopyDataInit>
 80021ea:	4a0b      	ldr	r2, [pc, #44]	; (8002218 <LoopForever+0x12>)
 80021ec:	e002      	b.n	80021f4 <LoopFillZerobss>

080021ee <FillZerobss>:
 80021ee:	2300      	movs	r3, #0
 80021f0:	f842 3b04 	str.w	r3, [r2], #4

080021f4 <LoopFillZerobss>:
 80021f4:	4b09      	ldr	r3, [pc, #36]	; (800221c <LoopForever+0x16>)
 80021f6:	429a      	cmp	r2, r3
 80021f8:	d3f9      	bcc.n	80021ee <FillZerobss>
 80021fa:	f7ff ffc0 	bl	800217e <SystemInit>
 80021fe:	f000 f817 	bl	8002230 <__libc_init_array>
 8002202:	f7ff ff18 	bl	8002036 <main>

08002206 <LoopForever>:
 8002206:	e7fe      	b.n	8002206 <LoopForever>
 8002208:	20018000 	.word	0x20018000
 800220c:	08007378 	.word	0x08007378
 8002210:	20000000 	.word	0x20000000
 8002214:	200009c8 	.word	0x200009c8
 8002218:	200009c8 	.word	0x200009c8
 800221c:	20000b1c 	.word	0x20000b1c

08002220 <ADC1_2_IRQHandler>:
 8002220:	e7fe      	b.n	8002220 <ADC1_2_IRQHandler>
	...

08002224 <__errno>:
 8002224:	4b01      	ldr	r3, [pc, #4]	; (800222c <__errno+0x8>)
 8002226:	6818      	ldr	r0, [r3, #0]
 8002228:	4770      	bx	lr
 800222a:	bf00      	nop
 800222c:	20000018 	.word	0x20000018

08002230 <__libc_init_array>:
 8002230:	b570      	push	{r4, r5, r6, lr}
 8002232:	4e0d      	ldr	r6, [pc, #52]	; (8002268 <__libc_init_array+0x38>)
 8002234:	4d0d      	ldr	r5, [pc, #52]	; (800226c <__libc_init_array+0x3c>)
 8002236:	1b76      	subs	r6, r6, r5
 8002238:	10b6      	asrs	r6, r6, #2
 800223a:	d006      	beq.n	800224a <__libc_init_array+0x1a>
 800223c:	2400      	movs	r4, #0
 800223e:	3401      	adds	r4, #1
 8002240:	f855 3b04 	ldr.w	r3, [r5], #4
 8002244:	4798      	blx	r3
 8002246:	42a6      	cmp	r6, r4
 8002248:	d1f9      	bne.n	800223e <__libc_init_array+0xe>
 800224a:	4e09      	ldr	r6, [pc, #36]	; (8002270 <__libc_init_array+0x40>)
 800224c:	4d09      	ldr	r5, [pc, #36]	; (8002274 <__libc_init_array+0x44>)
 800224e:	1b76      	subs	r6, r6, r5
 8002250:	f004 fea8 	bl	8006fa4 <_init>
 8002254:	10b6      	asrs	r6, r6, #2
 8002256:	d006      	beq.n	8002266 <__libc_init_array+0x36>
 8002258:	2400      	movs	r4, #0
 800225a:	3401      	adds	r4, #1
 800225c:	f855 3b04 	ldr.w	r3, [r5], #4
 8002260:	4798      	blx	r3
 8002262:	42a6      	cmp	r6, r4
 8002264:	d1f9      	bne.n	800225a <__libc_init_array+0x2a>
 8002266:	bd70      	pop	{r4, r5, r6, pc}
 8002268:	08007368 	.word	0x08007368
 800226c:	08007368 	.word	0x08007368
 8002270:	08007370 	.word	0x08007370
 8002274:	08007368 	.word	0x08007368

08002278 <memset>:
 8002278:	b4f0      	push	{r4, r5, r6, r7}
 800227a:	0786      	lsls	r6, r0, #30
 800227c:	d043      	beq.n	8002306 <memset+0x8e>
 800227e:	1e54      	subs	r4, r2, #1
 8002280:	2a00      	cmp	r2, #0
 8002282:	d03e      	beq.n	8002302 <memset+0x8a>
 8002284:	b2ca      	uxtb	r2, r1
 8002286:	4603      	mov	r3, r0
 8002288:	e002      	b.n	8002290 <memset+0x18>
 800228a:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 800228e:	d338      	bcc.n	8002302 <memset+0x8a>
 8002290:	f803 2b01 	strb.w	r2, [r3], #1
 8002294:	079d      	lsls	r5, r3, #30
 8002296:	d1f8      	bne.n	800228a <memset+0x12>
 8002298:	2c03      	cmp	r4, #3
 800229a:	d92b      	bls.n	80022f4 <memset+0x7c>
 800229c:	b2cd      	uxtb	r5, r1
 800229e:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80022a2:	2c0f      	cmp	r4, #15
 80022a4:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80022a8:	d916      	bls.n	80022d8 <memset+0x60>
 80022aa:	f1a4 0710 	sub.w	r7, r4, #16
 80022ae:	093f      	lsrs	r7, r7, #4
 80022b0:	f103 0620 	add.w	r6, r3, #32
 80022b4:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80022b8:	f103 0210 	add.w	r2, r3, #16
 80022bc:	e942 5504 	strd	r5, r5, [r2, #-16]
 80022c0:	e942 5502 	strd	r5, r5, [r2, #-8]
 80022c4:	3210      	adds	r2, #16
 80022c6:	42b2      	cmp	r2, r6
 80022c8:	d1f8      	bne.n	80022bc <memset+0x44>
 80022ca:	f004 040f 	and.w	r4, r4, #15
 80022ce:	3701      	adds	r7, #1
 80022d0:	2c03      	cmp	r4, #3
 80022d2:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80022d6:	d90d      	bls.n	80022f4 <memset+0x7c>
 80022d8:	461e      	mov	r6, r3
 80022da:	4622      	mov	r2, r4
 80022dc:	3a04      	subs	r2, #4
 80022de:	2a03      	cmp	r2, #3
 80022e0:	f846 5b04 	str.w	r5, [r6], #4
 80022e4:	d8fa      	bhi.n	80022dc <memset+0x64>
 80022e6:	1f22      	subs	r2, r4, #4
 80022e8:	f022 0203 	bic.w	r2, r2, #3
 80022ec:	3204      	adds	r2, #4
 80022ee:	4413      	add	r3, r2
 80022f0:	f004 0403 	and.w	r4, r4, #3
 80022f4:	b12c      	cbz	r4, 8002302 <memset+0x8a>
 80022f6:	b2c9      	uxtb	r1, r1
 80022f8:	441c      	add	r4, r3
 80022fa:	f803 1b01 	strb.w	r1, [r3], #1
 80022fe:	429c      	cmp	r4, r3
 8002300:	d1fb      	bne.n	80022fa <memset+0x82>
 8002302:	bcf0      	pop	{r4, r5, r6, r7}
 8002304:	4770      	bx	lr
 8002306:	4614      	mov	r4, r2
 8002308:	4603      	mov	r3, r0
 800230a:	e7c5      	b.n	8002298 <memset+0x20>

0800230c <printf>:
 800230c:	b40f      	push	{r0, r1, r2, r3}
 800230e:	b500      	push	{lr}
 8002310:	4907      	ldr	r1, [pc, #28]	; (8002330 <printf+0x24>)
 8002312:	b083      	sub	sp, #12
 8002314:	ab04      	add	r3, sp, #16
 8002316:	6808      	ldr	r0, [r1, #0]
 8002318:	f853 2b04 	ldr.w	r2, [r3], #4
 800231c:	6881      	ldr	r1, [r0, #8]
 800231e:	9301      	str	r3, [sp, #4]
 8002320:	f000 f85e 	bl	80023e0 <_vfprintf_r>
 8002324:	b003      	add	sp, #12
 8002326:	f85d eb04 	ldr.w	lr, [sp], #4
 800232a:	b004      	add	sp, #16
 800232c:	4770      	bx	lr
 800232e:	bf00      	nop
 8002330:	20000018 	.word	0x20000018

08002334 <_puts_r>:
 8002334:	b570      	push	{r4, r5, r6, lr}
 8002336:	4605      	mov	r5, r0
 8002338:	b088      	sub	sp, #32
 800233a:	4608      	mov	r0, r1
 800233c:	460c      	mov	r4, r1
 800233e:	f7fe f97f 	bl	8000640 <strlen>
 8002342:	4a22      	ldr	r2, [pc, #136]	; (80023cc <_puts_r+0x98>)
 8002344:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002346:	9404      	str	r4, [sp, #16]
 8002348:	2601      	movs	r6, #1
 800234a:	1c44      	adds	r4, r0, #1
 800234c:	a904      	add	r1, sp, #16
 800234e:	9206      	str	r2, [sp, #24]
 8002350:	2202      	movs	r2, #2
 8002352:	9403      	str	r4, [sp, #12]
 8002354:	9005      	str	r0, [sp, #20]
 8002356:	68ac      	ldr	r4, [r5, #8]
 8002358:	9607      	str	r6, [sp, #28]
 800235a:	e9cd 1201 	strd	r1, r2, [sp, #4]
 800235e:	b31b      	cbz	r3, 80023a8 <_puts_r+0x74>
 8002360:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002362:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002366:	07ce      	lsls	r6, r1, #31
 8002368:	b29a      	uxth	r2, r3
 800236a:	d401      	bmi.n	8002370 <_puts_r+0x3c>
 800236c:	0590      	lsls	r0, r2, #22
 800236e:	d525      	bpl.n	80023bc <_puts_r+0x88>
 8002370:	0491      	lsls	r1, r2, #18
 8002372:	d406      	bmi.n	8002382 <_puts_r+0x4e>
 8002374:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8002376:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800237a:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 800237e:	81a3      	strh	r3, [r4, #12]
 8002380:	6662      	str	r2, [r4, #100]	; 0x64
 8002382:	4628      	mov	r0, r5
 8002384:	aa01      	add	r2, sp, #4
 8002386:	4621      	mov	r1, r4
 8002388:	f003 f85e 	bl	8005448 <__sfvwrite_r>
 800238c:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800238e:	2800      	cmp	r0, #0
 8002390:	bf0c      	ite	eq
 8002392:	250a      	moveq	r5, #10
 8002394:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002398:	07da      	lsls	r2, r3, #31
 800239a:	d402      	bmi.n	80023a2 <_puts_r+0x6e>
 800239c:	89a3      	ldrh	r3, [r4, #12]
 800239e:	059b      	lsls	r3, r3, #22
 80023a0:	d506      	bpl.n	80023b0 <_puts_r+0x7c>
 80023a2:	4628      	mov	r0, r5
 80023a4:	b008      	add	sp, #32
 80023a6:	bd70      	pop	{r4, r5, r6, pc}
 80023a8:	4628      	mov	r0, r5
 80023aa:	f002 feb7 	bl	800511c <__sinit>
 80023ae:	e7d7      	b.n	8002360 <_puts_r+0x2c>
 80023b0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80023b2:	f003 fa05 	bl	80057c0 <__retarget_lock_release_recursive>
 80023b6:	4628      	mov	r0, r5
 80023b8:	b008      	add	sp, #32
 80023ba:	bd70      	pop	{r4, r5, r6, pc}
 80023bc:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80023be:	f003 f9fd 	bl	80057bc <__retarget_lock_acquire_recursive>
 80023c2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80023c6:	b29a      	uxth	r2, r3
 80023c8:	e7d2      	b.n	8002370 <_puts_r+0x3c>
 80023ca:	bf00      	nop
 80023cc:	080070d8 	.word	0x080070d8

080023d0 <puts>:
 80023d0:	4b02      	ldr	r3, [pc, #8]	; (80023dc <puts+0xc>)
 80023d2:	4601      	mov	r1, r0
 80023d4:	6818      	ldr	r0, [r3, #0]
 80023d6:	f7ff bfad 	b.w	8002334 <_puts_r>
 80023da:	bf00      	nop
 80023dc:	20000018 	.word	0x20000018

080023e0 <_vfprintf_r>:
 80023e0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80023e4:	b0d7      	sub	sp, #348	; 0x15c
 80023e6:	461c      	mov	r4, r3
 80023e8:	4689      	mov	r9, r1
 80023ea:	4617      	mov	r7, r2
 80023ec:	4605      	mov	r5, r0
 80023ee:	9003      	str	r0, [sp, #12]
 80023f0:	f003 f9d2 	bl	8005798 <_localeconv_r>
 80023f4:	6803      	ldr	r3, [r0, #0]
 80023f6:	9316      	str	r3, [sp, #88]	; 0x58
 80023f8:	4618      	mov	r0, r3
 80023fa:	f7fe f921 	bl	8000640 <strlen>
 80023fe:	9408      	str	r4, [sp, #32]
 8002400:	9015      	str	r0, [sp, #84]	; 0x54
 8002402:	b11d      	cbz	r5, 800240c <_vfprintf_r+0x2c>
 8002404:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002406:	2b00      	cmp	r3, #0
 8002408:	f000 8107 	beq.w	800261a <_vfprintf_r+0x23a>
 800240c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002410:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002414:	07c8      	lsls	r0, r1, #31
 8002416:	b293      	uxth	r3, r2
 8002418:	d402      	bmi.n	8002420 <_vfprintf_r+0x40>
 800241a:	0599      	lsls	r1, r3, #22
 800241c:	f140 811f 	bpl.w	800265e <_vfprintf_r+0x27e>
 8002420:	049e      	lsls	r6, r3, #18
 8002422:	d40a      	bmi.n	800243a <_vfprintf_r+0x5a>
 8002424:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002428:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 800242c:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002430:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002434:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002438:	b29b      	uxth	r3, r3
 800243a:	071d      	lsls	r5, r3, #28
 800243c:	f140 80b2 	bpl.w	80025a4 <_vfprintf_r+0x1c4>
 8002440:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002444:	2a00      	cmp	r2, #0
 8002446:	f000 80ad 	beq.w	80025a4 <_vfprintf_r+0x1c4>
 800244a:	f003 021a 	and.w	r2, r3, #26
 800244e:	2a0a      	cmp	r2, #10
 8002450:	f000 80c9 	beq.w	80025e6 <_vfprintf_r+0x206>
 8002454:	2300      	movs	r3, #0
 8002456:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002670 <_vfprintf_r+0x290>
 800245a:	9310      	str	r3, [sp, #64]	; 0x40
 800245c:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002460:	9317      	str	r3, [sp, #92]	; 0x5c
 8002462:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002466:	931b      	str	r3, [sp, #108]	; 0x6c
 8002468:	9318      	str	r3, [sp, #96]	; 0x60
 800246a:	9305      	str	r3, [sp, #20]
 800246c:	ab2d      	add	r3, sp, #180	; 0xb4
 800246e:	932a      	str	r3, [sp, #168]	; 0xa8
 8002470:	469b      	mov	fp, r3
 8002472:	783b      	ldrb	r3, [r7, #0]
 8002474:	f8cd 901c 	str.w	r9, [sp, #28]
 8002478:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800247c:	2b00      	cmp	r3, #0
 800247e:	f000 8259 	beq.w	8002934 <_vfprintf_r+0x554>
 8002482:	2b25      	cmp	r3, #37	; 0x25
 8002484:	463c      	mov	r4, r7
 8002486:	d102      	bne.n	800248e <_vfprintf_r+0xae>
 8002488:	e01d      	b.n	80024c6 <_vfprintf_r+0xe6>
 800248a:	2b25      	cmp	r3, #37	; 0x25
 800248c:	d003      	beq.n	8002496 <_vfprintf_r+0xb6>
 800248e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002492:	2b00      	cmp	r3, #0
 8002494:	d1f9      	bne.n	800248a <_vfprintf_r+0xaa>
 8002496:	1be5      	subs	r5, r4, r7
 8002498:	b18d      	cbz	r5, 80024be <_vfprintf_r+0xde>
 800249a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 800249e:	3301      	adds	r3, #1
 80024a0:	442a      	add	r2, r5
 80024a2:	2b07      	cmp	r3, #7
 80024a4:	f8cb 7000 	str.w	r7, [fp]
 80024a8:	f8cb 5004 	str.w	r5, [fp, #4]
 80024ac:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 80024b0:	f300 80ca 	bgt.w	8002648 <_vfprintf_r+0x268>
 80024b4:	f10b 0b08 	add.w	fp, fp, #8
 80024b8:	9b05      	ldr	r3, [sp, #20]
 80024ba:	442b      	add	r3, r5
 80024bc:	9305      	str	r3, [sp, #20]
 80024be:	7823      	ldrb	r3, [r4, #0]
 80024c0:	2b00      	cmp	r3, #0
 80024c2:	f000 8237 	beq.w	8002934 <_vfprintf_r+0x554>
 80024c6:	2300      	movs	r3, #0
 80024c8:	7866      	ldrb	r6, [r4, #1]
 80024ca:	9306      	str	r3, [sp, #24]
 80024cc:	4698      	mov	r8, r3
 80024ce:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80024d2:	f104 0a01 	add.w	sl, r4, #1
 80024d6:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 80024da:	252b      	movs	r5, #43	; 0x2b
 80024dc:	f10a 0a01 	add.w	sl, sl, #1
 80024e0:	f1a6 0320 	sub.w	r3, r6, #32
 80024e4:	2b5a      	cmp	r3, #90	; 0x5a
 80024e6:	f200 842a 	bhi.w	8002d3e <_vfprintf_r+0x95e>
 80024ea:	e8df f013 	tbh	[pc, r3, lsl #1]
 80024ee:	03aa      	.short	0x03aa
 80024f0:	04280428 	.word	0x04280428
 80024f4:	0428029c 	.word	0x0428029c
 80024f8:	04280428 	.word	0x04280428
 80024fc:	042802a7 	.word	0x042802a7
 8002500:	02c60428 	.word	0x02c60428
 8002504:	042802d2 	.word	0x042802d2
 8002508:	02dc02d7 	.word	0x02dc02d7
 800250c:	02f60428 	.word	0x02f60428
 8002510:	026d026d 	.word	0x026d026d
 8002514:	026d026d 	.word	0x026d026d
 8002518:	026d026d 	.word	0x026d026d
 800251c:	026d026d 	.word	0x026d026d
 8002520:	0428026d 	.word	0x0428026d
 8002524:	04280428 	.word	0x04280428
 8002528:	04280428 	.word	0x04280428
 800252c:	04280428 	.word	0x04280428
 8002530:	042802fb 	.word	0x042802fb
 8002534:	03f3033c 	.word	0x03f3033c
 8002538:	02fb02fb 	.word	0x02fb02fb
 800253c:	042802fb 	.word	0x042802fb
 8002540:	04280428 	.word	0x04280428
 8002544:	03ee0428 	.word	0x03ee0428
 8002548:	04280428 	.word	0x04280428
 800254c:	0428009a 	.word	0x0428009a
 8002550:	04280428 	.word	0x04280428
 8002554:	04280350 	.word	0x04280350
 8002558:	04280379 	.word	0x04280379
 800255c:	03900428 	.word	0x03900428
 8002560:	04280428 	.word	0x04280428
 8002564:	04280428 	.word	0x04280428
 8002568:	04280428 	.word	0x04280428
 800256c:	04280428 	.word	0x04280428
 8002570:	042802fb 	.word	0x042802fb
 8002574:	00c5033c 	.word	0x00c5033c
 8002578:	02fb02fb 	.word	0x02fb02fb
 800257c:	03d102fb 	.word	0x03d102fb
 8002580:	007000c5 	.word	0x007000c5
 8002584:	03b50428 	.word	0x03b50428
 8002588:	03c20428 	.word	0x03c20428
 800258c:	03de009c 	.word	0x03de009c
 8002590:	04280070 	.word	0x04280070
 8002594:	00720350 	.word	0x00720350
 8002598:	0428022c 	.word	0x0428022c
 800259c:	027c0428 	.word	0x027c0428
 80025a0:	00720428 	.word	0x00720428
 80025a4:	4649      	mov	r1, r9
 80025a6:	9803      	ldr	r0, [sp, #12]
 80025a8:	f001 fc9a 	bl	8003ee0 <__swsetup_r>
 80025ac:	b1a0      	cbz	r0, 80025d8 <_vfprintf_r+0x1f8>
 80025ae:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 80025b2:	07d8      	lsls	r0, r3, #31
 80025b4:	d404      	bmi.n	80025c0 <_vfprintf_r+0x1e0>
 80025b6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80025ba:	0599      	lsls	r1, r3, #22
 80025bc:	f140 83b7 	bpl.w	8002d2e <_vfprintf_r+0x94e>
 80025c0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80025c4:	9305      	str	r3, [sp, #20]
 80025c6:	9805      	ldr	r0, [sp, #20]
 80025c8:	b057      	add	sp, #348	; 0x15c
 80025ca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80025ce:	f048 0820 	orr.w	r8, r8, #32
 80025d2:	f89a 6000 	ldrb.w	r6, [sl]
 80025d6:	e781      	b.n	80024dc <_vfprintf_r+0xfc>
 80025d8:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80025dc:	f003 021a 	and.w	r2, r3, #26
 80025e0:	2a0a      	cmp	r2, #10
 80025e2:	f47f af37 	bne.w	8002454 <_vfprintf_r+0x74>
 80025e6:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 80025ea:	2a00      	cmp	r2, #0
 80025ec:	f6ff af32 	blt.w	8002454 <_vfprintf_r+0x74>
 80025f0:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80025f4:	07d2      	lsls	r2, r2, #31
 80025f6:	d405      	bmi.n	8002604 <_vfprintf_r+0x224>
 80025f8:	059b      	lsls	r3, r3, #22
 80025fa:	d403      	bmi.n	8002604 <_vfprintf_r+0x224>
 80025fc:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002600:	f003 f8de 	bl	80057c0 <__retarget_lock_release_recursive>
 8002604:	4623      	mov	r3, r4
 8002606:	463a      	mov	r2, r7
 8002608:	4649      	mov	r1, r9
 800260a:	9803      	ldr	r0, [sp, #12]
 800260c:	f001 fc26 	bl	8003e5c <__sbprintf>
 8002610:	9005      	str	r0, [sp, #20]
 8002612:	9805      	ldr	r0, [sp, #20]
 8002614:	b057      	add	sp, #348	; 0x15c
 8002616:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800261a:	9803      	ldr	r0, [sp, #12]
 800261c:	f002 fd7e 	bl	800511c <__sinit>
 8002620:	e6f4      	b.n	800240c <_vfprintf_r+0x2c>
 8002622:	f048 0810 	orr.w	r8, r8, #16
 8002626:	f018 0f20 	tst.w	r8, #32
 800262a:	f000 836c 	beq.w	8002d06 <_vfprintf_r+0x926>
 800262e:	9c08      	ldr	r4, [sp, #32]
 8002630:	3407      	adds	r4, #7
 8002632:	f024 0307 	bic.w	r3, r4, #7
 8002636:	e9d3 4500 	ldrd	r4, r5, [r3]
 800263a:	f103 0208 	add.w	r2, r3, #8
 800263e:	9208      	str	r2, [sp, #32]
 8002640:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002644:	2200      	movs	r2, #0
 8002646:	e18c      	b.n	8002962 <_vfprintf_r+0x582>
 8002648:	aa2a      	add	r2, sp, #168	; 0xa8
 800264a:	9907      	ldr	r1, [sp, #28]
 800264c:	9803      	ldr	r0, [sp, #12]
 800264e:	f004 f9f5 	bl	8006a3c <__sprint_r>
 8002652:	2800      	cmp	r0, #0
 8002654:	f041 8376 	bne.w	8003d44 <_vfprintf_r+0x1964>
 8002658:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800265c:	e72c      	b.n	80024b8 <_vfprintf_r+0xd8>
 800265e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002662:	f003 f8ab 	bl	80057bc <__retarget_lock_acquire_recursive>
 8002666:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800266a:	b293      	uxth	r3, r2
 800266c:	e6d8      	b.n	8002420 <_vfprintf_r+0x40>
 800266e:	bf00      	nop
	...
 8002678:	4643      	mov	r3, r8
 800267a:	069f      	lsls	r7, r3, #26
 800267c:	f140 832f 	bpl.w	8002cde <_vfprintf_r+0x8fe>
 8002680:	9c08      	ldr	r4, [sp, #32]
 8002682:	3407      	adds	r4, #7
 8002684:	f024 0407 	bic.w	r4, r4, #7
 8002688:	e9d4 0100 	ldrd	r0, r1, [r4]
 800268c:	f104 0208 	add.w	r2, r4, #8
 8002690:	9208      	str	r2, [sp, #32]
 8002692:	4604      	mov	r4, r0
 8002694:	460d      	mov	r5, r1
 8002696:	2800      	cmp	r0, #0
 8002698:	f171 0200 	sbcs.w	r2, r1, #0
 800269c:	da05      	bge.n	80026aa <_vfprintf_r+0x2ca>
 800269e:	222d      	movs	r2, #45	; 0x2d
 80026a0:	4264      	negs	r4, r4
 80026a2:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80026a6:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80026aa:	aa56      	add	r2, sp, #344	; 0x158
 80026ac:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80026b0:	9204      	str	r2, [sp, #16]
 80026b2:	f000 84b2 	beq.w	800301a <_vfprintf_r+0xc3a>
 80026b6:	2201      	movs	r2, #1
 80026b8:	ea54 0105 	orrs.w	r1, r4, r5
 80026bc:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 80026c0:	f040 8159 	bne.w	8002976 <_vfprintf_r+0x596>
 80026c4:	f1b9 0f00 	cmp.w	r9, #0
 80026c8:	f040 8619 	bne.w	80032fe <_vfprintf_r+0xf1e>
 80026cc:	2a00      	cmp	r2, #0
 80026ce:	f040 8508 	bne.w	80030e2 <_vfprintf_r+0xd02>
 80026d2:	f013 0301 	ands.w	r3, r3, #1
 80026d6:	af56      	add	r7, sp, #344	; 0x158
 80026d8:	9309      	str	r3, [sp, #36]	; 0x24
 80026da:	d002      	beq.n	80026e2 <_vfprintf_r+0x302>
 80026dc:	2330      	movs	r3, #48	; 0x30
 80026de:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80026e2:	2300      	movs	r3, #0
 80026e4:	930a      	str	r3, [sp, #40]	; 0x28
 80026e6:	930f      	str	r3, [sp, #60]	; 0x3c
 80026e8:	9314      	str	r3, [sp, #80]	; 0x50
 80026ea:	9311      	str	r3, [sp, #68]	; 0x44
 80026ec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80026ee:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80026f2:	454b      	cmp	r3, r9
 80026f4:	bfb8      	it	lt
 80026f6:	464b      	movlt	r3, r9
 80026f8:	9304      	str	r3, [sp, #16]
 80026fa:	b112      	cbz	r2, 8002702 <_vfprintf_r+0x322>
 80026fc:	9b04      	ldr	r3, [sp, #16]
 80026fe:	3301      	adds	r3, #1
 8002700:	9304      	str	r3, [sp, #16]
 8002702:	f018 0302 	ands.w	r3, r8, #2
 8002706:	930b      	str	r3, [sp, #44]	; 0x2c
 8002708:	d002      	beq.n	8002710 <_vfprintf_r+0x330>
 800270a:	9b04      	ldr	r3, [sp, #16]
 800270c:	3302      	adds	r3, #2
 800270e:	9304      	str	r3, [sp, #16]
 8002710:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002714:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002716:	930e      	str	r3, [sp, #56]	; 0x38
 8002718:	d13f      	bne.n	800279a <_vfprintf_r+0x3ba>
 800271a:	9b06      	ldr	r3, [sp, #24]
 800271c:	9904      	ldr	r1, [sp, #16]
 800271e:	1a5d      	subs	r5, r3, r1
 8002720:	2d00      	cmp	r5, #0
 8002722:	dd3a      	ble.n	800279a <_vfprintf_r+0x3ba>
 8002724:	2d10      	cmp	r5, #16
 8002726:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002728:	dd29      	ble.n	800277e <_vfprintf_r+0x39e>
 800272a:	4659      	mov	r1, fp
 800272c:	4620      	mov	r0, r4
 800272e:	9620      	str	r6, [sp, #128]	; 0x80
 8002730:	2310      	movs	r3, #16
 8002732:	9c03      	ldr	r4, [sp, #12]
 8002734:	9e07      	ldr	r6, [sp, #28]
 8002736:	46bb      	mov	fp, r7
 8002738:	e004      	b.n	8002744 <_vfprintf_r+0x364>
 800273a:	3d10      	subs	r5, #16
 800273c:	2d10      	cmp	r5, #16
 800273e:	f101 0108 	add.w	r1, r1, #8
 8002742:	dd18      	ble.n	8002776 <_vfprintf_r+0x396>
 8002744:	3201      	adds	r2, #1
 8002746:	4fba      	ldr	r7, [pc, #744]	; (8002a30 <_vfprintf_r+0x650>)
 8002748:	3010      	adds	r0, #16
 800274a:	2a07      	cmp	r2, #7
 800274c:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002750:	e9c1 7300 	strd	r7, r3, [r1]
 8002754:	ddf1      	ble.n	800273a <_vfprintf_r+0x35a>
 8002756:	aa2a      	add	r2, sp, #168	; 0xa8
 8002758:	4631      	mov	r1, r6
 800275a:	4620      	mov	r0, r4
 800275c:	930c      	str	r3, [sp, #48]	; 0x30
 800275e:	f004 f96d 	bl	8006a3c <__sprint_r>
 8002762:	2800      	cmp	r0, #0
 8002764:	f040 843d 	bne.w	8002fe2 <_vfprintf_r+0xc02>
 8002768:	3d10      	subs	r5, #16
 800276a:	2d10      	cmp	r5, #16
 800276c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002770:	a92d      	add	r1, sp, #180	; 0xb4
 8002772:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002774:	dce6      	bgt.n	8002744 <_vfprintf_r+0x364>
 8002776:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002778:	465f      	mov	r7, fp
 800277a:	4604      	mov	r4, r0
 800277c:	468b      	mov	fp, r1
 800277e:	3201      	adds	r2, #1
 8002780:	4bab      	ldr	r3, [pc, #684]	; (8002a30 <_vfprintf_r+0x650>)
 8002782:	442c      	add	r4, r5
 8002784:	2a07      	cmp	r2, #7
 8002786:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800278a:	e9cb 3500 	strd	r3, r5, [fp]
 800278e:	f300 84ff 	bgt.w	8003190 <_vfprintf_r+0xdb0>
 8002792:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002796:	f10b 0b08 	add.w	fp, fp, #8
 800279a:	b172      	cbz	r2, 80027ba <_vfprintf_r+0x3da>
 800279c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800279e:	3201      	adds	r2, #1
 80027a0:	3401      	adds	r4, #1
 80027a2:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 80027a6:	2101      	movs	r1, #1
 80027a8:	2a07      	cmp	r2, #7
 80027aa:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80027ae:	e9cb 0100 	strd	r0, r1, [fp]
 80027b2:	f300 8418 	bgt.w	8002fe6 <_vfprintf_r+0xc06>
 80027b6:	f10b 0b08 	add.w	fp, fp, #8
 80027ba:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80027bc:	b16b      	cbz	r3, 80027da <_vfprintf_r+0x3fa>
 80027be:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80027c0:	3301      	adds	r3, #1
 80027c2:	3402      	adds	r4, #2
 80027c4:	a923      	add	r1, sp, #140	; 0x8c
 80027c6:	2202      	movs	r2, #2
 80027c8:	2b07      	cmp	r3, #7
 80027ca:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80027ce:	e9cb 1200 	strd	r1, r2, [fp]
 80027d2:	f300 8415 	bgt.w	8003000 <_vfprintf_r+0xc20>
 80027d6:	f10b 0b08 	add.w	fp, fp, #8
 80027da:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80027dc:	2b80      	cmp	r3, #128	; 0x80
 80027de:	f000 8331 	beq.w	8002e44 <_vfprintf_r+0xa64>
 80027e2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80027e4:	eba9 0503 	sub.w	r5, r9, r3
 80027e8:	2d00      	cmp	r5, #0
 80027ea:	dd37      	ble.n	800285c <_vfprintf_r+0x47c>
 80027ec:	2d10      	cmp	r5, #16
 80027ee:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80027f0:	4b90      	ldr	r3, [pc, #576]	; (8002a34 <_vfprintf_r+0x654>)
 80027f2:	dd28      	ble.n	8002846 <_vfprintf_r+0x466>
 80027f4:	4659      	mov	r1, fp
 80027f6:	4620      	mov	r0, r4
 80027f8:	46bb      	mov	fp, r7
 80027fa:	f04f 0910 	mov.w	r9, #16
 80027fe:	4637      	mov	r7, r6
 8002800:	461c      	mov	r4, r3
 8002802:	9e07      	ldr	r6, [sp, #28]
 8002804:	e004      	b.n	8002810 <_vfprintf_r+0x430>
 8002806:	3d10      	subs	r5, #16
 8002808:	2d10      	cmp	r5, #16
 800280a:	f101 0108 	add.w	r1, r1, #8
 800280e:	dd15      	ble.n	800283c <_vfprintf_r+0x45c>
 8002810:	3201      	adds	r2, #1
 8002812:	3010      	adds	r0, #16
 8002814:	2a07      	cmp	r2, #7
 8002816:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800281a:	e9c1 4900 	strd	r4, r9, [r1]
 800281e:	ddf2      	ble.n	8002806 <_vfprintf_r+0x426>
 8002820:	aa2a      	add	r2, sp, #168	; 0xa8
 8002822:	4631      	mov	r1, r6
 8002824:	9803      	ldr	r0, [sp, #12]
 8002826:	f004 f909 	bl	8006a3c <__sprint_r>
 800282a:	2800      	cmp	r0, #0
 800282c:	f040 83d9 	bne.w	8002fe2 <_vfprintf_r+0xc02>
 8002830:	3d10      	subs	r5, #16
 8002832:	2d10      	cmp	r5, #16
 8002834:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002838:	a92d      	add	r1, sp, #180	; 0xb4
 800283a:	dce9      	bgt.n	8002810 <_vfprintf_r+0x430>
 800283c:	463e      	mov	r6, r7
 800283e:	4623      	mov	r3, r4
 8002840:	465f      	mov	r7, fp
 8002842:	4604      	mov	r4, r0
 8002844:	468b      	mov	fp, r1
 8002846:	3201      	adds	r2, #1
 8002848:	442c      	add	r4, r5
 800284a:	2a07      	cmp	r2, #7
 800284c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002850:	e9cb 3500 	strd	r3, r5, [fp]
 8002854:	f300 83ef 	bgt.w	8003036 <_vfprintf_r+0xc56>
 8002858:	f10b 0b08 	add.w	fp, fp, #8
 800285c:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002860:	f040 8280 	bne.w	8002d64 <_vfprintf_r+0x984>
 8002864:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002866:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002868:	f8cb 7000 	str.w	r7, [fp]
 800286c:	3301      	adds	r3, #1
 800286e:	4414      	add	r4, r2
 8002870:	2b07      	cmp	r3, #7
 8002872:	942c      	str	r4, [sp, #176]	; 0xb0
 8002874:	f8cb 2004 	str.w	r2, [fp, #4]
 8002878:	932b      	str	r3, [sp, #172]	; 0xac
 800287a:	f300 8392 	bgt.w	8002fa2 <_vfprintf_r+0xbc2>
 800287e:	f10b 0b08 	add.w	fp, fp, #8
 8002882:	f018 0f04 	tst.w	r8, #4
 8002886:	d03b      	beq.n	8002900 <_vfprintf_r+0x520>
 8002888:	9b06      	ldr	r3, [sp, #24]
 800288a:	9a04      	ldr	r2, [sp, #16]
 800288c:	1a9d      	subs	r5, r3, r2
 800288e:	2d00      	cmp	r5, #0
 8002890:	dd36      	ble.n	8002900 <_vfprintf_r+0x520>
 8002892:	2d10      	cmp	r5, #16
 8002894:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002896:	dd21      	ble.n	80028dc <_vfprintf_r+0x4fc>
 8002898:	2610      	movs	r6, #16
 800289a:	9f03      	ldr	r7, [sp, #12]
 800289c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 80028a0:	e004      	b.n	80028ac <_vfprintf_r+0x4cc>
 80028a2:	3d10      	subs	r5, #16
 80028a4:	2d10      	cmp	r5, #16
 80028a6:	f10b 0b08 	add.w	fp, fp, #8
 80028aa:	dd17      	ble.n	80028dc <_vfprintf_r+0x4fc>
 80028ac:	3301      	adds	r3, #1
 80028ae:	4a60      	ldr	r2, [pc, #384]	; (8002a30 <_vfprintf_r+0x650>)
 80028b0:	3410      	adds	r4, #16
 80028b2:	2b07      	cmp	r3, #7
 80028b4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80028b8:	e9cb 2600 	strd	r2, r6, [fp]
 80028bc:	ddf1      	ble.n	80028a2 <_vfprintf_r+0x4c2>
 80028be:	aa2a      	add	r2, sp, #168	; 0xa8
 80028c0:	4641      	mov	r1, r8
 80028c2:	4638      	mov	r0, r7
 80028c4:	f004 f8ba 	bl	8006a3c <__sprint_r>
 80028c8:	2800      	cmp	r0, #0
 80028ca:	f040 856c 	bne.w	80033a6 <_vfprintf_r+0xfc6>
 80028ce:	3d10      	subs	r5, #16
 80028d0:	2d10      	cmp	r5, #16
 80028d2:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80028d6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80028da:	dce7      	bgt.n	80028ac <_vfprintf_r+0x4cc>
 80028dc:	3301      	adds	r3, #1
 80028de:	4a54      	ldr	r2, [pc, #336]	; (8002a30 <_vfprintf_r+0x650>)
 80028e0:	442c      	add	r4, r5
 80028e2:	2b07      	cmp	r3, #7
 80028e4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80028e8:	e9cb 2500 	strd	r2, r5, [fp]
 80028ec:	dd08      	ble.n	8002900 <_vfprintf_r+0x520>
 80028ee:	aa2a      	add	r2, sp, #168	; 0xa8
 80028f0:	9907      	ldr	r1, [sp, #28]
 80028f2:	9803      	ldr	r0, [sp, #12]
 80028f4:	f004 f8a2 	bl	8006a3c <__sprint_r>
 80028f8:	2800      	cmp	r0, #0
 80028fa:	f040 82e9 	bne.w	8002ed0 <_vfprintf_r+0xaf0>
 80028fe:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002900:	9904      	ldr	r1, [sp, #16]
 8002902:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002906:	428a      	cmp	r2, r1
 8002908:	bfac      	ite	ge
 800290a:	189b      	addge	r3, r3, r2
 800290c:	185b      	addlt	r3, r3, r1
 800290e:	9305      	str	r3, [sp, #20]
 8002910:	2c00      	cmp	r4, #0
 8002912:	f040 82d5 	bne.w	8002ec0 <_vfprintf_r+0xae0>
 8002916:	2300      	movs	r3, #0
 8002918:	932b      	str	r3, [sp, #172]	; 0xac
 800291a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800291c:	b11b      	cbz	r3, 8002926 <_vfprintf_r+0x546>
 800291e:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002920:	9803      	ldr	r0, [sp, #12]
 8002922:	f002 fc9d 	bl	8005260 <_free_r>
 8002926:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800292a:	4657      	mov	r7, sl
 800292c:	783b      	ldrb	r3, [r7, #0]
 800292e:	2b00      	cmp	r3, #0
 8002930:	f47f ada7 	bne.w	8002482 <_vfprintf_r+0xa2>
 8002934:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002936:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800293a:	2b00      	cmp	r3, #0
 800293c:	f041 80e7 	bne.w	8003b0e <_vfprintf_r+0x172e>
 8002940:	2300      	movs	r3, #0
 8002942:	932b      	str	r3, [sp, #172]	; 0xac
 8002944:	e2cb      	b.n	8002ede <_vfprintf_r+0xafe>
 8002946:	4643      	mov	r3, r8
 8002948:	069a      	lsls	r2, r3, #26
 800294a:	f140 814e 	bpl.w	8002bea <_vfprintf_r+0x80a>
 800294e:	9c08      	ldr	r4, [sp, #32]
 8002950:	3407      	adds	r4, #7
 8002952:	f024 0207 	bic.w	r2, r4, #7
 8002956:	f102 0108 	add.w	r1, r2, #8
 800295a:	e9d2 4500 	ldrd	r4, r5, [r2]
 800295e:	9108      	str	r1, [sp, #32]
 8002960:	2201      	movs	r2, #1
 8002962:	2100      	movs	r1, #0
 8002964:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002968:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800296c:	a956      	add	r1, sp, #344	; 0x158
 800296e:	9104      	str	r1, [sp, #16]
 8002970:	f47f aea2 	bne.w	80026b8 <_vfprintf_r+0x2d8>
 8002974:	4698      	mov	r8, r3
 8002976:	2a01      	cmp	r2, #1
 8002978:	f000 8350 	beq.w	800301c <_vfprintf_r+0xc3c>
 800297c:	2a02      	cmp	r2, #2
 800297e:	f000 831b 	beq.w	8002fb8 <_vfprintf_r+0xbd8>
 8002982:	a956      	add	r1, sp, #344	; 0x158
 8002984:	e000      	b.n	8002988 <_vfprintf_r+0x5a8>
 8002986:	4639      	mov	r1, r7
 8002988:	08e2      	lsrs	r2, r4, #3
 800298a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 800298e:	08e8      	lsrs	r0, r5, #3
 8002990:	f004 0307 	and.w	r3, r4, #7
 8002994:	4605      	mov	r5, r0
 8002996:	4614      	mov	r4, r2
 8002998:	3330      	adds	r3, #48	; 0x30
 800299a:	ea54 0205 	orrs.w	r2, r4, r5
 800299e:	f801 3c01 	strb.w	r3, [r1, #-1]
 80029a2:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 80029a6:	d1ee      	bne.n	8002986 <_vfprintf_r+0x5a6>
 80029a8:	f018 0f01 	tst.w	r8, #1
 80029ac:	f000 8314 	beq.w	8002fd8 <_vfprintf_r+0xbf8>
 80029b0:	2b30      	cmp	r3, #48	; 0x30
 80029b2:	f000 8311 	beq.w	8002fd8 <_vfprintf_r+0xbf8>
 80029b6:	9a04      	ldr	r2, [sp, #16]
 80029b8:	3902      	subs	r1, #2
 80029ba:	2330      	movs	r3, #48	; 0x30
 80029bc:	1a52      	subs	r2, r2, r1
 80029be:	f807 3c01 	strb.w	r3, [r7, #-1]
 80029c2:	9209      	str	r2, [sp, #36]	; 0x24
 80029c4:	460f      	mov	r7, r1
 80029c6:	e68c      	b.n	80026e2 <_vfprintf_r+0x302>
 80029c8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80029cc:	2200      	movs	r2, #0
 80029ce:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80029d2:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 80029d6:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 80029da:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80029de:	2b09      	cmp	r3, #9
 80029e0:	d9f5      	bls.n	80029ce <_vfprintf_r+0x5ee>
 80029e2:	9206      	str	r2, [sp, #24]
 80029e4:	e57c      	b.n	80024e0 <_vfprintf_r+0x100>
 80029e6:	4b14      	ldr	r3, [pc, #80]	; (8002a38 <_vfprintf_r+0x658>)
 80029e8:	9317      	str	r3, [sp, #92]	; 0x5c
 80029ea:	f018 0f20 	tst.w	r8, #32
 80029ee:	f000 8114 	beq.w	8002c1a <_vfprintf_r+0x83a>
 80029f2:	9c08      	ldr	r4, [sp, #32]
 80029f4:	3407      	adds	r4, #7
 80029f6:	f024 0307 	bic.w	r3, r4, #7
 80029fa:	e9d3 4500 	ldrd	r4, r5, [r3]
 80029fe:	f103 0208 	add.w	r2, r3, #8
 8002a02:	9208      	str	r2, [sp, #32]
 8002a04:	f018 0f01 	tst.w	r8, #1
 8002a08:	d009      	beq.n	8002a1e <_vfprintf_r+0x63e>
 8002a0a:	ea54 0305 	orrs.w	r3, r4, r5
 8002a0e:	d006      	beq.n	8002a1e <_vfprintf_r+0x63e>
 8002a10:	2330      	movs	r3, #48	; 0x30
 8002a12:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002a16:	f048 0802 	orr.w	r8, r8, #2
 8002a1a:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002a1e:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002a22:	2202      	movs	r2, #2
 8002a24:	e79d      	b.n	8002962 <_vfprintf_r+0x582>
 8002a26:	f048 0801 	orr.w	r8, r8, #1
 8002a2a:	f89a 6000 	ldrb.w	r6, [sl]
 8002a2e:	e555      	b.n	80024dc <_vfprintf_r+0xfc>
 8002a30:	08007120 	.word	0x08007120
 8002a34:	08007130 	.word	0x08007130
 8002a38:	080070ec 	.word	0x080070ec
 8002a3c:	9e03      	ldr	r6, [sp, #12]
 8002a3e:	4630      	mov	r0, r6
 8002a40:	f002 feaa 	bl	8005798 <_localeconv_r>
 8002a44:	6843      	ldr	r3, [r0, #4]
 8002a46:	9318      	str	r3, [sp, #96]	; 0x60
 8002a48:	4618      	mov	r0, r3
 8002a4a:	f7fd fdf9 	bl	8000640 <strlen>
 8002a4e:	901b      	str	r0, [sp, #108]	; 0x6c
 8002a50:	4604      	mov	r4, r0
 8002a52:	4630      	mov	r0, r6
 8002a54:	f002 fea0 	bl	8005798 <_localeconv_r>
 8002a58:	6883      	ldr	r3, [r0, #8]
 8002a5a:	931a      	str	r3, [sp, #104]	; 0x68
 8002a5c:	2c00      	cmp	r4, #0
 8002a5e:	f43f adb8 	beq.w	80025d2 <_vfprintf_r+0x1f2>
 8002a62:	f89a 6000 	ldrb.w	r6, [sl]
 8002a66:	2b00      	cmp	r3, #0
 8002a68:	f43f ad38 	beq.w	80024dc <_vfprintf_r+0xfc>
 8002a6c:	781b      	ldrb	r3, [r3, #0]
 8002a6e:	2b00      	cmp	r3, #0
 8002a70:	f43f ad34 	beq.w	80024dc <_vfprintf_r+0xfc>
 8002a74:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002a78:	e530      	b.n	80024dc <_vfprintf_r+0xfc>
 8002a7a:	9b08      	ldr	r3, [sp, #32]
 8002a7c:	f89a 6000 	ldrb.w	r6, [sl]
 8002a80:	681a      	ldr	r2, [r3, #0]
 8002a82:	9206      	str	r2, [sp, #24]
 8002a84:	2a00      	cmp	r2, #0
 8002a86:	f103 0304 	add.w	r3, r3, #4
 8002a8a:	f2c0 8697 	blt.w	80037bc <_vfprintf_r+0x13dc>
 8002a8e:	9308      	str	r3, [sp, #32]
 8002a90:	e524      	b.n	80024dc <_vfprintf_r+0xfc>
 8002a92:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002a96:	f89a 6000 	ldrb.w	r6, [sl]
 8002a9a:	e51f      	b.n	80024dc <_vfprintf_r+0xfc>
 8002a9c:	f89a 6000 	ldrb.w	r6, [sl]
 8002aa0:	f048 0804 	orr.w	r8, r8, #4
 8002aa4:	e51a      	b.n	80024dc <_vfprintf_r+0xfc>
 8002aa6:	f89a 6000 	ldrb.w	r6, [sl]
 8002aaa:	2e2a      	cmp	r6, #42	; 0x2a
 8002aac:	f10a 0201 	add.w	r2, sl, #1
 8002ab0:	f001 81b0 	beq.w	8003e14 <_vfprintf_r+0x1a34>
 8002ab4:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002ab8:	2b09      	cmp	r3, #9
 8002aba:	4692      	mov	sl, r2
 8002abc:	f04f 0900 	mov.w	r9, #0
 8002ac0:	f63f ad0e 	bhi.w	80024e0 <_vfprintf_r+0x100>
 8002ac4:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002ac8:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002acc:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002ad0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002ad4:	2b09      	cmp	r3, #9
 8002ad6:	d9f5      	bls.n	8002ac4 <_vfprintf_r+0x6e4>
 8002ad8:	e502      	b.n	80024e0 <_vfprintf_r+0x100>
 8002ada:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002ade:	f89a 6000 	ldrb.w	r6, [sl]
 8002ae2:	e4fb      	b.n	80024dc <_vfprintf_r+0xfc>
 8002ae4:	9c08      	ldr	r4, [sp, #32]
 8002ae6:	3407      	adds	r4, #7
 8002ae8:	f024 0407 	bic.w	r4, r4, #7
 8002aec:	ed94 7b00 	vldr	d7, [r4]
 8002af0:	ec52 1b17 	vmov	r1, r2, d7
 8002af4:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002af8:	931d      	str	r3, [sp, #116]	; 0x74
 8002afa:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002afe:	3408      	adds	r4, #8
 8002b00:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002b04:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002b08:	4bba      	ldr	r3, [pc, #744]	; (8002df4 <_vfprintf_r+0xa14>)
 8002b0a:	9408      	str	r4, [sp, #32]
 8002b0c:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002b10:	f7fe faac 	bl	800106c <__aeabi_dcmpun>
 8002b14:	2800      	cmp	r0, #0
 8002b16:	f040 846f 	bne.w	80033f8 <_vfprintf_r+0x1018>
 8002b1a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002b1e:	4bb5      	ldr	r3, [pc, #724]	; (8002df4 <_vfprintf_r+0xa14>)
 8002b20:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002b24:	f7fe fa84 	bl	8001030 <__aeabi_dcmple>
 8002b28:	2800      	cmp	r0, #0
 8002b2a:	f040 8465 	bne.w	80033f8 <_vfprintf_r+0x1018>
 8002b2e:	2200      	movs	r2, #0
 8002b30:	2300      	movs	r3, #0
 8002b32:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002b36:	f7fe fa71 	bl	800101c <__aeabi_dcmplt>
 8002b3a:	2800      	cmp	r0, #0
 8002b3c:	f040 855b 	bne.w	80035f6 <_vfprintf_r+0x1216>
 8002b40:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002b44:	4fac      	ldr	r7, [pc, #688]	; (8002df8 <_vfprintf_r+0xa18>)
 8002b46:	4bad      	ldr	r3, [pc, #692]	; (8002dfc <_vfprintf_r+0xa1c>)
 8002b48:	2000      	movs	r0, #0
 8002b4a:	2103      	movs	r1, #3
 8002b4c:	9104      	str	r1, [sp, #16]
 8002b4e:	900a      	str	r0, [sp, #40]	; 0x28
 8002b50:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002b54:	2e47      	cmp	r6, #71	; 0x47
 8002b56:	bfd8      	it	le
 8002b58:	461f      	movle	r7, r3
 8002b5a:	9109      	str	r1, [sp, #36]	; 0x24
 8002b5c:	4681      	mov	r9, r0
 8002b5e:	900f      	str	r0, [sp, #60]	; 0x3c
 8002b60:	9014      	str	r0, [sp, #80]	; 0x50
 8002b62:	9011      	str	r0, [sp, #68]	; 0x44
 8002b64:	e5c9      	b.n	80026fa <_vfprintf_r+0x31a>
 8002b66:	9808      	ldr	r0, [sp, #32]
 8002b68:	2300      	movs	r3, #0
 8002b6a:	6801      	ldr	r1, [r0, #0]
 8002b6c:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002b70:	461a      	mov	r2, r3
 8002b72:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002b76:	2301      	movs	r3, #1
 8002b78:	1d01      	adds	r1, r0, #4
 8002b7a:	9304      	str	r3, [sp, #16]
 8002b7c:	920a      	str	r2, [sp, #40]	; 0x28
 8002b7e:	4691      	mov	r9, r2
 8002b80:	920f      	str	r2, [sp, #60]	; 0x3c
 8002b82:	9214      	str	r2, [sp, #80]	; 0x50
 8002b84:	9211      	str	r2, [sp, #68]	; 0x44
 8002b86:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002b8a:	af3d      	add	r7, sp, #244	; 0xf4
 8002b8c:	e5b9      	b.n	8002702 <_vfprintf_r+0x322>
 8002b8e:	9b08      	ldr	r3, [sp, #32]
 8002b90:	681f      	ldr	r7, [r3, #0]
 8002b92:	2500      	movs	r5, #0
 8002b94:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002b98:	1d1c      	adds	r4, r3, #4
 8002b9a:	2f00      	cmp	r7, #0
 8002b9c:	f000 8639 	beq.w	8003812 <_vfprintf_r+0x1432>
 8002ba0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002ba4:	f000 8711 	beq.w	80039ca <_vfprintf_r+0x15ea>
 8002ba8:	464a      	mov	r2, r9
 8002baa:	4629      	mov	r1, r5
 8002bac:	4638      	mov	r0, r7
 8002bae:	f7fd fdb7 	bl	8000720 <memchr>
 8002bb2:	900a      	str	r0, [sp, #40]	; 0x28
 8002bb4:	2800      	cmp	r0, #0
 8002bb6:	f000 85e7 	beq.w	8003788 <_vfprintf_r+0x13a8>
 8002bba:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002bbc:	1bdb      	subs	r3, r3, r7
 8002bbe:	9309      	str	r3, [sp, #36]	; 0x24
 8002bc0:	46a9      	mov	r9, r5
 8002bc2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002bc6:	9408      	str	r4, [sp, #32]
 8002bc8:	9304      	str	r3, [sp, #16]
 8002bca:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002bce:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002bd2:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002bd6:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002bda:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002bde:	e58c      	b.n	80026fa <_vfprintf_r+0x31a>
 8002be0:	f048 0310 	orr.w	r3, r8, #16
 8002be4:	069a      	lsls	r2, r3, #26
 8002be6:	f53f aeb2 	bmi.w	800294e <_vfprintf_r+0x56e>
 8002bea:	9a08      	ldr	r2, [sp, #32]
 8002bec:	06df      	lsls	r7, r3, #27
 8002bee:	f102 0104 	add.w	r1, r2, #4
 8002bf2:	f100 837e 	bmi.w	80032f2 <_vfprintf_r+0xf12>
 8002bf6:	065d      	lsls	r5, r3, #25
 8002bf8:	9a08      	ldr	r2, [sp, #32]
 8002bfa:	f100 84e4 	bmi.w	80035c6 <_vfprintf_r+0x11e6>
 8002bfe:	059c      	lsls	r4, r3, #22
 8002c00:	f140 8377 	bpl.w	80032f2 <_vfprintf_r+0xf12>
 8002c04:	7814      	ldrb	r4, [r2, #0]
 8002c06:	9108      	str	r1, [sp, #32]
 8002c08:	2500      	movs	r5, #0
 8002c0a:	2201      	movs	r2, #1
 8002c0c:	e6a9      	b.n	8002962 <_vfprintf_r+0x582>
 8002c0e:	4b7c      	ldr	r3, [pc, #496]	; (8002e00 <_vfprintf_r+0xa20>)
 8002c10:	9317      	str	r3, [sp, #92]	; 0x5c
 8002c12:	f018 0f20 	tst.w	r8, #32
 8002c16:	f47f aeec 	bne.w	80029f2 <_vfprintf_r+0x612>
 8002c1a:	9a08      	ldr	r2, [sp, #32]
 8002c1c:	f018 0f10 	tst.w	r8, #16
 8002c20:	f102 0304 	add.w	r3, r2, #4
 8002c24:	f040 8354 	bne.w	80032d0 <_vfprintf_r+0xef0>
 8002c28:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002c2c:	9a08      	ldr	r2, [sp, #32]
 8002c2e:	f040 84d0 	bne.w	80035d2 <_vfprintf_r+0x11f2>
 8002c32:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002c36:	f000 834b 	beq.w	80032d0 <_vfprintf_r+0xef0>
 8002c3a:	7814      	ldrb	r4, [r2, #0]
 8002c3c:	9308      	str	r3, [sp, #32]
 8002c3e:	2500      	movs	r5, #0
 8002c40:	e6e0      	b.n	8002a04 <_vfprintf_r+0x624>
 8002c42:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002c46:	f89a 6000 	ldrb.w	r6, [sl]
 8002c4a:	2b00      	cmp	r3, #0
 8002c4c:	f47f ac46 	bne.w	80024dc <_vfprintf_r+0xfc>
 8002c50:	2320      	movs	r3, #32
 8002c52:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002c56:	e441      	b.n	80024dc <_vfprintf_r+0xfc>
 8002c58:	f89a 6000 	ldrb.w	r6, [sl]
 8002c5c:	2e6c      	cmp	r6, #108	; 0x6c
 8002c5e:	bf03      	ittte	eq
 8002c60:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002c64:	f048 0820 	orreq.w	r8, r8, #32
 8002c68:	f10a 0a01 	addeq.w	sl, sl, #1
 8002c6c:	f048 0810 	orrne.w	r8, r8, #16
 8002c70:	e434      	b.n	80024dc <_vfprintf_r+0xfc>
 8002c72:	9a08      	ldr	r2, [sp, #32]
 8002c74:	f018 0f20 	tst.w	r8, #32
 8002c78:	f852 3b04 	ldr.w	r3, [r2], #4
 8002c7c:	9208      	str	r2, [sp, #32]
 8002c7e:	f000 83a1 	beq.w	80033c4 <_vfprintf_r+0xfe4>
 8002c82:	9a05      	ldr	r2, [sp, #20]
 8002c84:	4610      	mov	r0, r2
 8002c86:	17d1      	asrs	r1, r2, #31
 8002c88:	e9c3 0100 	strd	r0, r1, [r3]
 8002c8c:	4657      	mov	r7, sl
 8002c8e:	e64d      	b.n	800292c <_vfprintf_r+0x54c>
 8002c90:	f89a 6000 	ldrb.w	r6, [sl]
 8002c94:	2e68      	cmp	r6, #104	; 0x68
 8002c96:	bf03      	ittte	eq
 8002c98:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002c9c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002ca0:	f10a 0a01 	addeq.w	sl, sl, #1
 8002ca4:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002ca8:	e418      	b.n	80024dc <_vfprintf_r+0xfc>
 8002caa:	9908      	ldr	r1, [sp, #32]
 8002cac:	4b55      	ldr	r3, [pc, #340]	; (8002e04 <_vfprintf_r+0xa24>)
 8002cae:	680c      	ldr	r4, [r1, #0]
 8002cb0:	9317      	str	r3, [sp, #92]	; 0x5c
 8002cb2:	f647 0230 	movw	r2, #30768	; 0x7830
 8002cb6:	3104      	adds	r1, #4
 8002cb8:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002cbc:	f048 0302 	orr.w	r3, r8, #2
 8002cc0:	9108      	str	r1, [sp, #32]
 8002cc2:	2500      	movs	r5, #0
 8002cc4:	2202      	movs	r2, #2
 8002cc6:	2678      	movs	r6, #120	; 0x78
 8002cc8:	e64b      	b.n	8002962 <_vfprintf_r+0x582>
 8002cca:	f048 0808 	orr.w	r8, r8, #8
 8002cce:	f89a 6000 	ldrb.w	r6, [sl]
 8002cd2:	e403      	b.n	80024dc <_vfprintf_r+0xfc>
 8002cd4:	f048 0310 	orr.w	r3, r8, #16
 8002cd8:	069f      	lsls	r7, r3, #26
 8002cda:	f53f acd1 	bmi.w	8002680 <_vfprintf_r+0x2a0>
 8002cde:	9908      	ldr	r1, [sp, #32]
 8002ce0:	06dd      	lsls	r5, r3, #27
 8002ce2:	f101 0204 	add.w	r2, r1, #4
 8002ce6:	f100 82fd 	bmi.w	80032e4 <_vfprintf_r+0xf04>
 8002cea:	065c      	lsls	r4, r3, #25
 8002cec:	9908      	ldr	r1, [sp, #32]
 8002cee:	f100 8475 	bmi.w	80035dc <_vfprintf_r+0x11fc>
 8002cf2:	0598      	lsls	r0, r3, #22
 8002cf4:	f140 82f6 	bpl.w	80032e4 <_vfprintf_r+0xf04>
 8002cf8:	f991 4000 	ldrsb.w	r4, [r1]
 8002cfc:	9208      	str	r2, [sp, #32]
 8002cfe:	17e5      	asrs	r5, r4, #31
 8002d00:	4620      	mov	r0, r4
 8002d02:	4629      	mov	r1, r5
 8002d04:	e4c7      	b.n	8002696 <_vfprintf_r+0x2b6>
 8002d06:	9a08      	ldr	r2, [sp, #32]
 8002d08:	f018 0f10 	tst.w	r8, #16
 8002d0c:	f102 0304 	add.w	r3, r2, #4
 8002d10:	f040 82e3 	bne.w	80032da <_vfprintf_r+0xefa>
 8002d14:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002d18:	9a08      	ldr	r2, [sp, #32]
 8002d1a:	f040 8467 	bne.w	80035ec <_vfprintf_r+0x120c>
 8002d1e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002d22:	f000 82da 	beq.w	80032da <_vfprintf_r+0xefa>
 8002d26:	7814      	ldrb	r4, [r2, #0]
 8002d28:	9308      	str	r3, [sp, #32]
 8002d2a:	2500      	movs	r5, #0
 8002d2c:	e488      	b.n	8002640 <_vfprintf_r+0x260>
 8002d2e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002d32:	f002 fd45 	bl	80057c0 <__retarget_lock_release_recursive>
 8002d36:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002d3a:	9305      	str	r3, [sp, #20]
 8002d3c:	e443      	b.n	80025c6 <_vfprintf_r+0x1e6>
 8002d3e:	2e00      	cmp	r6, #0
 8002d40:	f43f adf8 	beq.w	8002934 <_vfprintf_r+0x554>
 8002d44:	2300      	movs	r3, #0
 8002d46:	2101      	movs	r1, #1
 8002d48:	461a      	mov	r2, r3
 8002d4a:	9104      	str	r1, [sp, #16]
 8002d4c:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002d50:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002d54:	930a      	str	r3, [sp, #40]	; 0x28
 8002d56:	4699      	mov	r9, r3
 8002d58:	930f      	str	r3, [sp, #60]	; 0x3c
 8002d5a:	9314      	str	r3, [sp, #80]	; 0x50
 8002d5c:	9311      	str	r3, [sp, #68]	; 0x44
 8002d5e:	9109      	str	r1, [sp, #36]	; 0x24
 8002d60:	af3d      	add	r7, sp, #244	; 0xf4
 8002d62:	e4ce      	b.n	8002702 <_vfprintf_r+0x322>
 8002d64:	2e65      	cmp	r6, #101	; 0x65
 8002d66:	f340 80ca 	ble.w	8002efe <_vfprintf_r+0xb1e>
 8002d6a:	2200      	movs	r2, #0
 8002d6c:	2300      	movs	r3, #0
 8002d6e:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002d72:	f7fe f949 	bl	8001008 <__aeabi_dcmpeq>
 8002d76:	2800      	cmp	r0, #0
 8002d78:	f000 8169 	beq.w	800304e <_vfprintf_r+0xc6e>
 8002d7c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002d7e:	4a22      	ldr	r2, [pc, #136]	; (8002e08 <_vfprintf_r+0xa28>)
 8002d80:	f8cb 2000 	str.w	r2, [fp]
 8002d84:	3301      	adds	r3, #1
 8002d86:	3401      	adds	r4, #1
 8002d88:	2201      	movs	r2, #1
 8002d8a:	2b07      	cmp	r3, #7
 8002d8c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002d90:	f8cb 2004 	str.w	r2, [fp, #4]
 8002d94:	f300 8406 	bgt.w	80035a4 <_vfprintf_r+0x11c4>
 8002d98:	f10b 0b08 	add.w	fp, fp, #8
 8002d9c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002d9e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002da0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002da2:	4293      	cmp	r3, r2
 8002da4:	db03      	blt.n	8002dae <_vfprintf_r+0x9ce>
 8002da6:	f018 0f01 	tst.w	r8, #1
 8002daa:	f43f ad6a 	beq.w	8002882 <_vfprintf_r+0x4a2>
 8002dae:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002db0:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002db2:	f8cb 2000 	str.w	r2, [fp]
 8002db6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002db8:	f8cb 2004 	str.w	r2, [fp, #4]
 8002dbc:	3301      	adds	r3, #1
 8002dbe:	4414      	add	r4, r2
 8002dc0:	2b07      	cmp	r3, #7
 8002dc2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002dc6:	f300 8517 	bgt.w	80037f8 <_vfprintf_r+0x1418>
 8002dca:	f10b 0b08 	add.w	fp, fp, #8
 8002dce:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002dd0:	1e5d      	subs	r5, r3, #1
 8002dd2:	2d00      	cmp	r5, #0
 8002dd4:	f77f ad55 	ble.w	8002882 <_vfprintf_r+0x4a2>
 8002dd8:	2d10      	cmp	r5, #16
 8002dda:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002ddc:	4b0b      	ldr	r3, [pc, #44]	; (8002e0c <_vfprintf_r+0xa2c>)
 8002dde:	f340 82e7 	ble.w	80033b0 <_vfprintf_r+0xfd0>
 8002de2:	4619      	mov	r1, r3
 8002de4:	2610      	movs	r6, #16
 8002de6:	4623      	mov	r3, r4
 8002de8:	9f03      	ldr	r7, [sp, #12]
 8002dea:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002dee:	460c      	mov	r4, r1
 8002df0:	e014      	b.n	8002e1c <_vfprintf_r+0xa3c>
 8002df2:	bf00      	nop
 8002df4:	7fefffff 	.word	0x7fefffff
 8002df8:	080070e0 	.word	0x080070e0
 8002dfc:	080070dc 	.word	0x080070dc
 8002e00:	08007100 	.word	0x08007100
 8002e04:	080070ec 	.word	0x080070ec
 8002e08:	0800711c 	.word	0x0800711c
 8002e0c:	08007130 	.word	0x08007130
 8002e10:	f10b 0b08 	add.w	fp, fp, #8
 8002e14:	3d10      	subs	r5, #16
 8002e16:	2d10      	cmp	r5, #16
 8002e18:	f340 82c7 	ble.w	80033aa <_vfprintf_r+0xfca>
 8002e1c:	3201      	adds	r2, #1
 8002e1e:	3310      	adds	r3, #16
 8002e20:	2a07      	cmp	r2, #7
 8002e22:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002e26:	e9cb 4600 	strd	r4, r6, [fp]
 8002e2a:	ddf1      	ble.n	8002e10 <_vfprintf_r+0xa30>
 8002e2c:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e2e:	4649      	mov	r1, r9
 8002e30:	4638      	mov	r0, r7
 8002e32:	f003 fe03 	bl	8006a3c <__sprint_r>
 8002e36:	2800      	cmp	r0, #0
 8002e38:	d14c      	bne.n	8002ed4 <_vfprintf_r+0xaf4>
 8002e3a:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002e3e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002e42:	e7e7      	b.n	8002e14 <_vfprintf_r+0xa34>
 8002e44:	9b06      	ldr	r3, [sp, #24]
 8002e46:	9a04      	ldr	r2, [sp, #16]
 8002e48:	1a9d      	subs	r5, r3, r2
 8002e4a:	2d00      	cmp	r5, #0
 8002e4c:	f77f acc9 	ble.w	80027e2 <_vfprintf_r+0x402>
 8002e50:	2d10      	cmp	r5, #16
 8002e52:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e54:	4bbc      	ldr	r3, [pc, #752]	; (8003148 <_vfprintf_r+0xd68>)
 8002e56:	dd27      	ble.n	8002ea8 <_vfprintf_r+0xac8>
 8002e58:	4659      	mov	r1, fp
 8002e5a:	4620      	mov	r0, r4
 8002e5c:	46bb      	mov	fp, r7
 8002e5e:	461c      	mov	r4, r3
 8002e60:	4637      	mov	r7, r6
 8002e62:	9e07      	ldr	r6, [sp, #28]
 8002e64:	e004      	b.n	8002e70 <_vfprintf_r+0xa90>
 8002e66:	3d10      	subs	r5, #16
 8002e68:	2d10      	cmp	r5, #16
 8002e6a:	f101 0108 	add.w	r1, r1, #8
 8002e6e:	dd16      	ble.n	8002e9e <_vfprintf_r+0xabe>
 8002e70:	3201      	adds	r2, #1
 8002e72:	3010      	adds	r0, #16
 8002e74:	2310      	movs	r3, #16
 8002e76:	2a07      	cmp	r2, #7
 8002e78:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002e7c:	600c      	str	r4, [r1, #0]
 8002e7e:	604b      	str	r3, [r1, #4]
 8002e80:	ddf1      	ble.n	8002e66 <_vfprintf_r+0xa86>
 8002e82:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e84:	4631      	mov	r1, r6
 8002e86:	9803      	ldr	r0, [sp, #12]
 8002e88:	f003 fdd8 	bl	8006a3c <__sprint_r>
 8002e8c:	2800      	cmp	r0, #0
 8002e8e:	f040 80a8 	bne.w	8002fe2 <_vfprintf_r+0xc02>
 8002e92:	3d10      	subs	r5, #16
 8002e94:	2d10      	cmp	r5, #16
 8002e96:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002e9a:	a92d      	add	r1, sp, #180	; 0xb4
 8002e9c:	dce8      	bgt.n	8002e70 <_vfprintf_r+0xa90>
 8002e9e:	463e      	mov	r6, r7
 8002ea0:	4623      	mov	r3, r4
 8002ea2:	465f      	mov	r7, fp
 8002ea4:	4604      	mov	r4, r0
 8002ea6:	468b      	mov	fp, r1
 8002ea8:	3201      	adds	r2, #1
 8002eaa:	442c      	add	r4, r5
 8002eac:	2a07      	cmp	r2, #7
 8002eae:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002eb2:	e9cb 3500 	strd	r3, r5, [fp]
 8002eb6:	f300 8292 	bgt.w	80033de <_vfprintf_r+0xffe>
 8002eba:	f10b 0b08 	add.w	fp, fp, #8
 8002ebe:	e490      	b.n	80027e2 <_vfprintf_r+0x402>
 8002ec0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ec2:	9907      	ldr	r1, [sp, #28]
 8002ec4:	9803      	ldr	r0, [sp, #12]
 8002ec6:	f003 fdb9 	bl	8006a3c <__sprint_r>
 8002eca:	2800      	cmp	r0, #0
 8002ecc:	f43f ad23 	beq.w	8002916 <_vfprintf_r+0x536>
 8002ed0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002ed4:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002ed6:	b111      	cbz	r1, 8002ede <_vfprintf_r+0xafe>
 8002ed8:	9803      	ldr	r0, [sp, #12]
 8002eda:	f002 f9c1 	bl	8005260 <_free_r>
 8002ede:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002ee2:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002ee6:	07d0      	lsls	r0, r2, #31
 8002ee8:	d402      	bmi.n	8002ef0 <_vfprintf_r+0xb10>
 8002eea:	0599      	lsls	r1, r3, #22
 8002eec:	f140 81d0 	bpl.w	8003290 <_vfprintf_r+0xeb0>
 8002ef0:	065a      	lsls	r2, r3, #25
 8002ef2:	f53f ab65 	bmi.w	80025c0 <_vfprintf_r+0x1e0>
 8002ef6:	9805      	ldr	r0, [sp, #20]
 8002ef8:	b057      	add	sp, #348	; 0x15c
 8002efa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002efe:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002f00:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f02:	2a01      	cmp	r2, #1
 8002f04:	f104 0401 	add.w	r4, r4, #1
 8002f08:	f103 0501 	add.w	r5, r3, #1
 8002f0c:	f10b 0608 	add.w	r6, fp, #8
 8002f10:	f340 811c 	ble.w	800314c <_vfprintf_r+0xd6c>
 8002f14:	2301      	movs	r3, #1
 8002f16:	2d07      	cmp	r5, #7
 8002f18:	f8cb 7000 	str.w	r7, [fp]
 8002f1c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002f20:	f8cb 3004 	str.w	r3, [fp, #4]
 8002f24:	f300 81bb 	bgt.w	800329e <_vfprintf_r+0xebe>
 8002f28:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002f2a:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002f2c:	1c69      	adds	r1, r5, #1
 8002f2e:	441c      	add	r4, r3
 8002f30:	2907      	cmp	r1, #7
 8002f32:	910b      	str	r1, [sp, #44]	; 0x2c
 8002f34:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8002f38:	e9c6 2300 	strd	r2, r3, [r6]
 8002f3c:	f300 81bb 	bgt.w	80032b6 <_vfprintf_r+0xed6>
 8002f40:	3608      	adds	r6, #8
 8002f42:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002f44:	1c53      	adds	r3, r2, #1
 8002f46:	461d      	mov	r5, r3
 8002f48:	9509      	str	r5, [sp, #36]	; 0x24
 8002f4a:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8002f4c:	930e      	str	r3, [sp, #56]	; 0x38
 8002f4e:	2200      	movs	r2, #0
 8002f50:	2300      	movs	r3, #0
 8002f52:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002f56:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8002f5a:	f106 0b08 	add.w	fp, r6, #8
 8002f5e:	f7fe f853 	bl	8001008 <__aeabi_dcmpeq>
 8002f62:	2800      	cmp	r0, #0
 8002f64:	f040 80c2 	bne.w	80030ec <_vfprintf_r+0xd0c>
 8002f68:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002f6a:	f8c6 9004 	str.w	r9, [r6, #4]
 8002f6e:	3701      	adds	r7, #1
 8002f70:	444c      	add	r4, r9
 8002f72:	2d07      	cmp	r5, #7
 8002f74:	6037      	str	r7, [r6, #0]
 8002f76:	942c      	str	r4, [sp, #176]	; 0xb0
 8002f78:	952b      	str	r5, [sp, #172]	; 0xac
 8002f7a:	f300 80f9 	bgt.w	8003170 <_vfprintf_r+0xd90>
 8002f7e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002f80:	f106 0310 	add.w	r3, r6, #16
 8002f84:	3202      	adds	r2, #2
 8002f86:	465e      	mov	r6, fp
 8002f88:	9209      	str	r2, [sp, #36]	; 0x24
 8002f8a:	469b      	mov	fp, r3
 8002f8c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8002f8e:	6072      	str	r2, [r6, #4]
 8002f90:	4414      	add	r4, r2
 8002f92:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002f94:	942c      	str	r4, [sp, #176]	; 0xb0
 8002f96:	ab26      	add	r3, sp, #152	; 0x98
 8002f98:	2a07      	cmp	r2, #7
 8002f9a:	922b      	str	r2, [sp, #172]	; 0xac
 8002f9c:	6033      	str	r3, [r6, #0]
 8002f9e:	f77f ac70 	ble.w	8002882 <_vfprintf_r+0x4a2>
 8002fa2:	aa2a      	add	r2, sp, #168	; 0xa8
 8002fa4:	9907      	ldr	r1, [sp, #28]
 8002fa6:	9803      	ldr	r0, [sp, #12]
 8002fa8:	f003 fd48 	bl	8006a3c <__sprint_r>
 8002fac:	2800      	cmp	r0, #0
 8002fae:	d18f      	bne.n	8002ed0 <_vfprintf_r+0xaf0>
 8002fb0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002fb2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002fb6:	e464      	b.n	8002882 <_vfprintf_r+0x4a2>
 8002fb8:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8002fba:	af56      	add	r7, sp, #344	; 0x158
 8002fbc:	0923      	lsrs	r3, r4, #4
 8002fbe:	f004 010f 	and.w	r1, r4, #15
 8002fc2:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8002fc6:	092a      	lsrs	r2, r5, #4
 8002fc8:	461c      	mov	r4, r3
 8002fca:	4615      	mov	r5, r2
 8002fcc:	5c43      	ldrb	r3, [r0, r1]
 8002fce:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002fd2:	ea54 0305 	orrs.w	r3, r4, r5
 8002fd6:	d1f1      	bne.n	8002fbc <_vfprintf_r+0xbdc>
 8002fd8:	9b04      	ldr	r3, [sp, #16]
 8002fda:	1bdb      	subs	r3, r3, r7
 8002fdc:	9309      	str	r3, [sp, #36]	; 0x24
 8002fde:	f7ff bb80 	b.w	80026e2 <_vfprintf_r+0x302>
 8002fe2:	46b1      	mov	r9, r6
 8002fe4:	e776      	b.n	8002ed4 <_vfprintf_r+0xaf4>
 8002fe6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002fe8:	9907      	ldr	r1, [sp, #28]
 8002fea:	9803      	ldr	r0, [sp, #12]
 8002fec:	f003 fd26 	bl	8006a3c <__sprint_r>
 8002ff0:	2800      	cmp	r0, #0
 8002ff2:	f47f af6d 	bne.w	8002ed0 <_vfprintf_r+0xaf0>
 8002ff6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002ff8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002ffc:	f7ff bbdd 	b.w	80027ba <_vfprintf_r+0x3da>
 8003000:	aa2a      	add	r2, sp, #168	; 0xa8
 8003002:	9907      	ldr	r1, [sp, #28]
 8003004:	9803      	ldr	r0, [sp, #12]
 8003006:	f003 fd19 	bl	8006a3c <__sprint_r>
 800300a:	2800      	cmp	r0, #0
 800300c:	f47f af60 	bne.w	8002ed0 <_vfprintf_r+0xaf0>
 8003010:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003012:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003016:	f7ff bbe0 	b.w	80027da <_vfprintf_r+0x3fa>
 800301a:	4698      	mov	r8, r3
 800301c:	2d00      	cmp	r5, #0
 800301e:	bf08      	it	eq
 8003020:	2c0a      	cmpeq	r4, #10
 8003022:	f080 8170 	bcs.w	8003306 <_vfprintf_r+0xf26>
 8003026:	af56      	add	r7, sp, #344	; 0x158
 8003028:	3430      	adds	r4, #48	; 0x30
 800302a:	2301      	movs	r3, #1
 800302c:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003030:	9309      	str	r3, [sp, #36]	; 0x24
 8003032:	f7ff bb56 	b.w	80026e2 <_vfprintf_r+0x302>
 8003036:	aa2a      	add	r2, sp, #168	; 0xa8
 8003038:	9907      	ldr	r1, [sp, #28]
 800303a:	9803      	ldr	r0, [sp, #12]
 800303c:	f003 fcfe 	bl	8006a3c <__sprint_r>
 8003040:	2800      	cmp	r0, #0
 8003042:	f47f af45 	bne.w	8002ed0 <_vfprintf_r+0xaf0>
 8003046:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003048:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800304c:	e406      	b.n	800285c <_vfprintf_r+0x47c>
 800304e:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003050:	2b00      	cmp	r3, #0
 8003052:	f340 8273 	ble.w	800353c <_vfprintf_r+0x115c>
 8003056:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 800305a:	4293      	cmp	r3, r2
 800305c:	bfa8      	it	ge
 800305e:	4613      	movge	r3, r2
 8003060:	2b00      	cmp	r3, #0
 8003062:	461d      	mov	r5, r3
 8003064:	dd0d      	ble.n	8003082 <_vfprintf_r+0xca2>
 8003066:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003068:	f8cb 7000 	str.w	r7, [fp]
 800306c:	3301      	adds	r3, #1
 800306e:	442c      	add	r4, r5
 8003070:	2b07      	cmp	r3, #7
 8003072:	942c      	str	r4, [sp, #176]	; 0xb0
 8003074:	f8cb 5004 	str.w	r5, [fp, #4]
 8003078:	932b      	str	r3, [sp, #172]	; 0xac
 800307a:	f300 82c1 	bgt.w	8003600 <_vfprintf_r+0x1220>
 800307e:	f10b 0b08 	add.w	fp, fp, #8
 8003082:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003084:	2d00      	cmp	r5, #0
 8003086:	bfa8      	it	ge
 8003088:	1b5b      	subge	r3, r3, r5
 800308a:	2b00      	cmp	r3, #0
 800308c:	461d      	mov	r5, r3
 800308e:	f340 8099 	ble.w	80031c4 <_vfprintf_r+0xde4>
 8003092:	2d10      	cmp	r5, #16
 8003094:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003096:	4b2c      	ldr	r3, [pc, #176]	; (8003148 <_vfprintf_r+0xd68>)
 8003098:	f340 83db 	ble.w	8003852 <_vfprintf_r+0x1472>
 800309c:	4618      	mov	r0, r3
 800309e:	4621      	mov	r1, r4
 80030a0:	465b      	mov	r3, fp
 80030a2:	2610      	movs	r6, #16
 80030a4:	46bb      	mov	fp, r7
 80030a6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80030aa:	9c07      	ldr	r4, [sp, #28]
 80030ac:	4607      	mov	r7, r0
 80030ae:	e004      	b.n	80030ba <_vfprintf_r+0xcda>
 80030b0:	3308      	adds	r3, #8
 80030b2:	3d10      	subs	r5, #16
 80030b4:	2d10      	cmp	r5, #16
 80030b6:	f340 83c7 	ble.w	8003848 <_vfprintf_r+0x1468>
 80030ba:	3201      	adds	r2, #1
 80030bc:	3110      	adds	r1, #16
 80030be:	2a07      	cmp	r2, #7
 80030c0:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 80030c4:	e9c3 7600 	strd	r7, r6, [r3]
 80030c8:	ddf2      	ble.n	80030b0 <_vfprintf_r+0xcd0>
 80030ca:	aa2a      	add	r2, sp, #168	; 0xa8
 80030cc:	4621      	mov	r1, r4
 80030ce:	4648      	mov	r0, r9
 80030d0:	f003 fcb4 	bl	8006a3c <__sprint_r>
 80030d4:	2800      	cmp	r0, #0
 80030d6:	f040 84a5 	bne.w	8003a24 <_vfprintf_r+0x1644>
 80030da:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 80030de:	ab2d      	add	r3, sp, #180	; 0xb4
 80030e0:	e7e7      	b.n	80030b2 <_vfprintf_r+0xcd2>
 80030e2:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80030e6:	af56      	add	r7, sp, #344	; 0x158
 80030e8:	f7ff bafb 	b.w	80026e2 <_vfprintf_r+0x302>
 80030ec:	f1b9 0f00 	cmp.w	r9, #0
 80030f0:	f77f af4c 	ble.w	8002f8c <_vfprintf_r+0xbac>
 80030f4:	f1b9 0f10 	cmp.w	r9, #16
 80030f8:	4b13      	ldr	r3, [pc, #76]	; (8003148 <_vfprintf_r+0xd68>)
 80030fa:	f340 8659 	ble.w	8003db0 <_vfprintf_r+0x19d0>
 80030fe:	4619      	mov	r1, r3
 8003100:	4622      	mov	r2, r4
 8003102:	4633      	mov	r3, r6
 8003104:	2710      	movs	r7, #16
 8003106:	f8dd b00c 	ldr.w	fp, [sp, #12]
 800310a:	9c07      	ldr	r4, [sp, #28]
 800310c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800310e:	460e      	mov	r6, r1
 8003110:	e007      	b.n	8003122 <_vfprintf_r+0xd42>
 8003112:	3308      	adds	r3, #8
 8003114:	f1a9 0910 	sub.w	r9, r9, #16
 8003118:	f1b9 0f10 	cmp.w	r9, #16
 800311c:	f340 8353 	ble.w	80037c6 <_vfprintf_r+0x13e6>
 8003120:	3501      	adds	r5, #1
 8003122:	3210      	adds	r2, #16
 8003124:	2d07      	cmp	r5, #7
 8003126:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 800312a:	e9c3 6700 	strd	r6, r7, [r3]
 800312e:	ddf0      	ble.n	8003112 <_vfprintf_r+0xd32>
 8003130:	aa2a      	add	r2, sp, #168	; 0xa8
 8003132:	4621      	mov	r1, r4
 8003134:	4658      	mov	r0, fp
 8003136:	f003 fc81 	bl	8006a3c <__sprint_r>
 800313a:	2800      	cmp	r0, #0
 800313c:	f040 8472 	bne.w	8003a24 <_vfprintf_r+0x1644>
 8003140:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8003144:	ab2d      	add	r3, sp, #180	; 0xb4
 8003146:	e7e5      	b.n	8003114 <_vfprintf_r+0xd34>
 8003148:	08007130 	.word	0x08007130
 800314c:	f018 0f01 	tst.w	r8, #1
 8003150:	f47f aee0 	bne.w	8002f14 <_vfprintf_r+0xb34>
 8003154:	2201      	movs	r2, #1
 8003156:	2d07      	cmp	r5, #7
 8003158:	f8cb 7000 	str.w	r7, [fp]
 800315c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003160:	f8cb 2004 	str.w	r2, [fp, #4]
 8003164:	dc04      	bgt.n	8003170 <_vfprintf_r+0xd90>
 8003166:	3302      	adds	r3, #2
 8003168:	9309      	str	r3, [sp, #36]	; 0x24
 800316a:	f10b 0b10 	add.w	fp, fp, #16
 800316e:	e70d      	b.n	8002f8c <_vfprintf_r+0xbac>
 8003170:	aa2a      	add	r2, sp, #168	; 0xa8
 8003172:	9907      	ldr	r1, [sp, #28]
 8003174:	9803      	ldr	r0, [sp, #12]
 8003176:	f003 fc61 	bl	8006a3c <__sprint_r>
 800317a:	2800      	cmp	r0, #0
 800317c:	f47f aea8 	bne.w	8002ed0 <_vfprintf_r+0xaf0>
 8003180:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003184:	3301      	adds	r3, #1
 8003186:	9309      	str	r3, [sp, #36]	; 0x24
 8003188:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 800318c:	ae2d      	add	r6, sp, #180	; 0xb4
 800318e:	e6fd      	b.n	8002f8c <_vfprintf_r+0xbac>
 8003190:	aa2a      	add	r2, sp, #168	; 0xa8
 8003192:	9907      	ldr	r1, [sp, #28]
 8003194:	9803      	ldr	r0, [sp, #12]
 8003196:	f003 fc51 	bl	8006a3c <__sprint_r>
 800319a:	2800      	cmp	r0, #0
 800319c:	f47f ae98 	bne.w	8002ed0 <_vfprintf_r+0xaf0>
 80031a0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80031a4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80031a6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80031aa:	f7ff baf6 	b.w	800279a <_vfprintf_r+0x3ba>
 80031ae:	aa2a      	add	r2, sp, #168	; 0xa8
 80031b0:	9907      	ldr	r1, [sp, #28]
 80031b2:	9803      	ldr	r0, [sp, #12]
 80031b4:	f003 fc42 	bl	8006a3c <__sprint_r>
 80031b8:	2800      	cmp	r0, #0
 80031ba:	f47f ae89 	bne.w	8002ed0 <_vfprintf_r+0xaf0>
 80031be:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80031c0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80031c4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80031c6:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80031ca:	443b      	add	r3, r7
 80031cc:	4699      	mov	r9, r3
 80031ce:	f040 8357 	bne.w	8003880 <_vfprintf_r+0x14a0>
 80031d2:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80031d4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80031d6:	4293      	cmp	r3, r2
 80031d8:	db49      	blt.n	800326e <_vfprintf_r+0xe8e>
 80031da:	f018 0f01 	tst.w	r8, #1
 80031de:	d146      	bne.n	800326e <_vfprintf_r+0xe8e>
 80031e0:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80031e2:	18bd      	adds	r5, r7, r2
 80031e4:	eba5 0509 	sub.w	r5, r5, r9
 80031e8:	1ad3      	subs	r3, r2, r3
 80031ea:	429d      	cmp	r5, r3
 80031ec:	bfa8      	it	ge
 80031ee:	461d      	movge	r5, r3
 80031f0:	2d00      	cmp	r5, #0
 80031f2:	dd0d      	ble.n	8003210 <_vfprintf_r+0xe30>
 80031f4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031f6:	f8cb 9000 	str.w	r9, [fp]
 80031fa:	3201      	adds	r2, #1
 80031fc:	442c      	add	r4, r5
 80031fe:	2a07      	cmp	r2, #7
 8003200:	942c      	str	r4, [sp, #176]	; 0xb0
 8003202:	f8cb 5004 	str.w	r5, [fp, #4]
 8003206:	922b      	str	r2, [sp, #172]	; 0xac
 8003208:	f300 8462 	bgt.w	8003ad0 <_vfprintf_r+0x16f0>
 800320c:	f10b 0b08 	add.w	fp, fp, #8
 8003210:	2d00      	cmp	r5, #0
 8003212:	bfac      	ite	ge
 8003214:	1b5d      	subge	r5, r3, r5
 8003216:	461d      	movlt	r5, r3
 8003218:	2d00      	cmp	r5, #0
 800321a:	f77f ab32 	ble.w	8002882 <_vfprintf_r+0x4a2>
 800321e:	2d10      	cmp	r5, #16
 8003220:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003222:	4bc5      	ldr	r3, [pc, #788]	; (8003538 <_vfprintf_r+0x1158>)
 8003224:	f340 80c4 	ble.w	80033b0 <_vfprintf_r+0xfd0>
 8003228:	4619      	mov	r1, r3
 800322a:	2610      	movs	r6, #16
 800322c:	4623      	mov	r3, r4
 800322e:	9f03      	ldr	r7, [sp, #12]
 8003230:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003234:	460c      	mov	r4, r1
 8003236:	e005      	b.n	8003244 <_vfprintf_r+0xe64>
 8003238:	f10b 0b08 	add.w	fp, fp, #8
 800323c:	3d10      	subs	r5, #16
 800323e:	2d10      	cmp	r5, #16
 8003240:	f340 80b3 	ble.w	80033aa <_vfprintf_r+0xfca>
 8003244:	3201      	adds	r2, #1
 8003246:	3310      	adds	r3, #16
 8003248:	2a07      	cmp	r2, #7
 800324a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800324e:	e9cb 4600 	strd	r4, r6, [fp]
 8003252:	ddf1      	ble.n	8003238 <_vfprintf_r+0xe58>
 8003254:	aa2a      	add	r2, sp, #168	; 0xa8
 8003256:	4649      	mov	r1, r9
 8003258:	4638      	mov	r0, r7
 800325a:	f003 fbef 	bl	8006a3c <__sprint_r>
 800325e:	2800      	cmp	r0, #0
 8003260:	f47f ae38 	bne.w	8002ed4 <_vfprintf_r+0xaf4>
 8003264:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003268:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800326c:	e7e6      	b.n	800323c <_vfprintf_r+0xe5c>
 800326e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003270:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003272:	f8cb 1000 	str.w	r1, [fp]
 8003276:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003278:	f8cb 1004 	str.w	r1, [fp, #4]
 800327c:	3201      	adds	r2, #1
 800327e:	440c      	add	r4, r1
 8003280:	2a07      	cmp	r2, #7
 8003282:	942c      	str	r4, [sp, #176]	; 0xb0
 8003284:	922b      	str	r2, [sp, #172]	; 0xac
 8003286:	f300 828c 	bgt.w	80037a2 <_vfprintf_r+0x13c2>
 800328a:	f10b 0b08 	add.w	fp, fp, #8
 800328e:	e7a7      	b.n	80031e0 <_vfprintf_r+0xe00>
 8003290:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003294:	f002 fa94 	bl	80057c0 <__retarget_lock_release_recursive>
 8003298:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800329c:	e628      	b.n	8002ef0 <_vfprintf_r+0xb10>
 800329e:	aa2a      	add	r2, sp, #168	; 0xa8
 80032a0:	9907      	ldr	r1, [sp, #28]
 80032a2:	9803      	ldr	r0, [sp, #12]
 80032a4:	f003 fbca 	bl	8006a3c <__sprint_r>
 80032a8:	2800      	cmp	r0, #0
 80032aa:	f47f ae11 	bne.w	8002ed0 <_vfprintf_r+0xaf0>
 80032ae:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 80032b2:	ae2d      	add	r6, sp, #180	; 0xb4
 80032b4:	e638      	b.n	8002f28 <_vfprintf_r+0xb48>
 80032b6:	aa2a      	add	r2, sp, #168	; 0xa8
 80032b8:	9907      	ldr	r1, [sp, #28]
 80032ba:	9803      	ldr	r0, [sp, #12]
 80032bc:	f003 fbbe 	bl	8006a3c <__sprint_r>
 80032c0:	2800      	cmp	r0, #0
 80032c2:	f47f ae05 	bne.w	8002ed0 <_vfprintf_r+0xaf0>
 80032c6:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80032ca:	ae2d      	add	r6, sp, #180	; 0xb4
 80032cc:	930b      	str	r3, [sp, #44]	; 0x2c
 80032ce:	e638      	b.n	8002f42 <_vfprintf_r+0xb62>
 80032d0:	6814      	ldr	r4, [r2, #0]
 80032d2:	9308      	str	r3, [sp, #32]
 80032d4:	2500      	movs	r5, #0
 80032d6:	f7ff bb95 	b.w	8002a04 <_vfprintf_r+0x624>
 80032da:	6814      	ldr	r4, [r2, #0]
 80032dc:	9308      	str	r3, [sp, #32]
 80032de:	2500      	movs	r5, #0
 80032e0:	f7ff b9ae 	b.w	8002640 <_vfprintf_r+0x260>
 80032e4:	680c      	ldr	r4, [r1, #0]
 80032e6:	9208      	str	r2, [sp, #32]
 80032e8:	17e5      	asrs	r5, r4, #31
 80032ea:	4620      	mov	r0, r4
 80032ec:	4629      	mov	r1, r5
 80032ee:	f7ff b9d2 	b.w	8002696 <_vfprintf_r+0x2b6>
 80032f2:	6814      	ldr	r4, [r2, #0]
 80032f4:	9108      	str	r1, [sp, #32]
 80032f6:	2201      	movs	r2, #1
 80032f8:	2500      	movs	r5, #0
 80032fa:	f7ff bb32 	b.w	8002962 <_vfprintf_r+0x582>
 80032fe:	2a01      	cmp	r2, #1
 8003300:	f47f ab3c 	bne.w	800297c <_vfprintf_r+0x59c>
 8003304:	e68f      	b.n	8003026 <_vfprintf_r+0xc46>
 8003306:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 800330a:	2200      	movs	r2, #0
 800330c:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003310:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003314:	af56      	add	r7, sp, #344	; 0x158
 8003316:	4692      	mov	sl, r2
 8003318:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 800331c:	461e      	mov	r6, r3
 800331e:	e00a      	b.n	8003336 <_vfprintf_r+0xf56>
 8003320:	2300      	movs	r3, #0
 8003322:	4620      	mov	r0, r4
 8003324:	4629      	mov	r1, r5
 8003326:	220a      	movs	r2, #10
 8003328:	f7fc ff6a 	bl	8000200 <__aeabi_uldivmod>
 800332c:	4604      	mov	r4, r0
 800332e:	460d      	mov	r5, r1
 8003330:	ea54 0305 	orrs.w	r3, r4, r5
 8003334:	d029      	beq.n	800338a <_vfprintf_r+0xfaa>
 8003336:	220a      	movs	r2, #10
 8003338:	2300      	movs	r3, #0
 800333a:	4620      	mov	r0, r4
 800333c:	4629      	mov	r1, r5
 800333e:	f7fc ff5f 	bl	8000200 <__aeabi_uldivmod>
 8003342:	3230      	adds	r2, #48	; 0x30
 8003344:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003348:	f10a 0a01 	add.w	sl, sl, #1
 800334c:	3f01      	subs	r7, #1
 800334e:	2e00      	cmp	r6, #0
 8003350:	d0e6      	beq.n	8003320 <_vfprintf_r+0xf40>
 8003352:	f898 3000 	ldrb.w	r3, [r8]
 8003356:	459a      	cmp	sl, r3
 8003358:	d1e2      	bne.n	8003320 <_vfprintf_r+0xf40>
 800335a:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 800335e:	d0df      	beq.n	8003320 <_vfprintf_r+0xf40>
 8003360:	2d00      	cmp	r5, #0
 8003362:	bf08      	it	eq
 8003364:	2c0a      	cmpeq	r4, #10
 8003366:	d3db      	bcc.n	8003320 <_vfprintf_r+0xf40>
 8003368:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 800336a:	9918      	ldr	r1, [sp, #96]	; 0x60
 800336c:	1aff      	subs	r7, r7, r3
 800336e:	461a      	mov	r2, r3
 8003370:	4638      	mov	r0, r7
 8003372:	f003 faf5 	bl	8006960 <strncpy>
 8003376:	f898 3001 	ldrb.w	r3, [r8, #1]
 800337a:	2b00      	cmp	r3, #0
 800337c:	f000 8496 	beq.w	8003cac <_vfprintf_r+0x18cc>
 8003380:	f108 0801 	add.w	r8, r8, #1
 8003384:	f04f 0a00 	mov.w	sl, #0
 8003388:	e7ca      	b.n	8003320 <_vfprintf_r+0xf40>
 800338a:	9b04      	ldr	r3, [sp, #16]
 800338c:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003390:	1bdb      	subs	r3, r3, r7
 8003392:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003396:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003398:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 800339c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 80033a0:	9309      	str	r3, [sp, #36]	; 0x24
 80033a2:	f7ff b99e 	b.w	80026e2 <_vfprintf_r+0x302>
 80033a6:	46c1      	mov	r9, r8
 80033a8:	e594      	b.n	8002ed4 <_vfprintf_r+0xaf4>
 80033aa:	4621      	mov	r1, r4
 80033ac:	461c      	mov	r4, r3
 80033ae:	460b      	mov	r3, r1
 80033b0:	3201      	adds	r2, #1
 80033b2:	442c      	add	r4, r5
 80033b4:	2a07      	cmp	r2, #7
 80033b6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80033ba:	e9cb 3500 	strd	r3, r5, [fp]
 80033be:	f77f aa5e 	ble.w	800287e <_vfprintf_r+0x49e>
 80033c2:	e5ee      	b.n	8002fa2 <_vfprintf_r+0xbc2>
 80033c4:	f018 0f10 	tst.w	r8, #16
 80033c8:	f040 80f8 	bne.w	80035bc <_vfprintf_r+0x11dc>
 80033cc:	f018 0f40 	tst.w	r8, #64	; 0x40
 80033d0:	f000 8351 	beq.w	8003a76 <_vfprintf_r+0x1696>
 80033d4:	9a05      	ldr	r2, [sp, #20]
 80033d6:	801a      	strh	r2, [r3, #0]
 80033d8:	4657      	mov	r7, sl
 80033da:	f7ff baa7 	b.w	800292c <_vfprintf_r+0x54c>
 80033de:	aa2a      	add	r2, sp, #168	; 0xa8
 80033e0:	9907      	ldr	r1, [sp, #28]
 80033e2:	9803      	ldr	r0, [sp, #12]
 80033e4:	f003 fb2a 	bl	8006a3c <__sprint_r>
 80033e8:	2800      	cmp	r0, #0
 80033ea:	f47f ad71 	bne.w	8002ed0 <_vfprintf_r+0xaf0>
 80033ee:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80033f0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033f4:	f7ff b9f5 	b.w	80027e2 <_vfprintf_r+0x402>
 80033f8:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80033fc:	4602      	mov	r2, r0
 80033fe:	460b      	mov	r3, r1
 8003400:	f7fd fe34 	bl	800106c <__aeabi_dcmpun>
 8003404:	2800      	cmp	r0, #0
 8003406:	f040 8491 	bne.w	8003d2c <_vfprintf_r+0x194c>
 800340a:	2e61      	cmp	r6, #97	; 0x61
 800340c:	f000 8111 	beq.w	8003632 <_vfprintf_r+0x1252>
 8003410:	2e41      	cmp	r6, #65	; 0x41
 8003412:	f000 8377 	beq.w	8003b04 <_vfprintf_r+0x1724>
 8003416:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 800341a:	f026 0220 	bic.w	r2, r6, #32
 800341e:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003422:	930e      	str	r3, [sp, #56]	; 0x38
 8003424:	9204      	str	r2, [sp, #16]
 8003426:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003428:	f000 842d 	beq.w	8003c86 <_vfprintf_r+0x18a6>
 800342c:	2a47      	cmp	r2, #71	; 0x47
 800342e:	f000 8424 	beq.w	8003c7a <_vfprintf_r+0x189a>
 8003432:	2b00      	cmp	r3, #0
 8003434:	f2c0 82f9 	blt.w	8003a2a <_vfprintf_r+0x164a>
 8003438:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800343c:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003440:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003444:	2e66      	cmp	r6, #102	; 0x66
 8003446:	f000 83eb 	beq.w	8003c20 <_vfprintf_r+0x1840>
 800344a:	2e46      	cmp	r6, #70	; 0x46
 800344c:	f000 847e 	beq.w	8003d4c <_vfprintf_r+0x196c>
 8003450:	9b04      	ldr	r3, [sp, #16]
 8003452:	9803      	ldr	r0, [sp, #12]
 8003454:	2b45      	cmp	r3, #69	; 0x45
 8003456:	bf0c      	ite	eq
 8003458:	f109 0501 	addeq.w	r5, r9, #1
 800345c:	464d      	movne	r5, r9
 800345e:	aa28      	add	r2, sp, #160	; 0xa0
 8003460:	ab25      	add	r3, sp, #148	; 0x94
 8003462:	e9cd 3200 	strd	r3, r2, [sp]
 8003466:	2102      	movs	r1, #2
 8003468:	ab24      	add	r3, sp, #144	; 0x90
 800346a:	462a      	mov	r2, r5
 800346c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003470:	f000 fe3e 	bl	80040f0 <_dtoa_r>
 8003474:	2e67      	cmp	r6, #103	; 0x67
 8003476:	4607      	mov	r7, r0
 8003478:	f040 849c 	bne.w	8003db4 <_vfprintf_r+0x19d4>
 800347c:	f018 0f01 	tst.w	r8, #1
 8003480:	f040 83f9 	bne.w	8003c76 <_vfprintf_r+0x1896>
 8003484:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003486:	4640      	mov	r0, r8
 8003488:	1bdb      	subs	r3, r3, r7
 800348a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800348e:	9310      	str	r3, [sp, #64]	; 0x40
 8003490:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003492:	9311      	str	r3, [sp, #68]	; 0x44
 8003494:	9b04      	ldr	r3, [sp, #16]
 8003496:	2b47      	cmp	r3, #71	; 0x47
 8003498:	f000 81e7 	beq.w	800386a <_vfprintf_r+0x148a>
 800349c:	9b04      	ldr	r3, [sp, #16]
 800349e:	2b46      	cmp	r3, #70	; 0x46
 80034a0:	f000 8300 	beq.w	8003aa4 <_vfprintf_r+0x16c4>
 80034a4:	9904      	ldr	r1, [sp, #16]
 80034a6:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80034a8:	b2f2      	uxtb	r2, r6
 80034aa:	2941      	cmp	r1, #65	; 0x41
 80034ac:	bf08      	it	eq
 80034ae:	320f      	addeq	r2, #15
 80034b0:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 80034b4:	bf06      	itte	eq
 80034b6:	b2d2      	uxtbeq	r2, r2
 80034b8:	2101      	moveq	r1, #1
 80034ba:	2100      	movne	r1, #0
 80034bc:	2b00      	cmp	r3, #0
 80034be:	9324      	str	r3, [sp, #144]	; 0x90
 80034c0:	bfb8      	it	lt
 80034c2:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 80034c4:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 80034c8:	bfba      	itte	lt
 80034ca:	f1c3 0301 	rsblt	r3, r3, #1
 80034ce:	222d      	movlt	r2, #45	; 0x2d
 80034d0:	222b      	movge	r2, #43	; 0x2b
 80034d2:	2b09      	cmp	r3, #9
 80034d4:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 80034d8:	f300 83f9 	bgt.w	8003cce <_vfprintf_r+0x18ee>
 80034dc:	2900      	cmp	r1, #0
 80034de:	f040 8487 	bne.w	8003df0 <_vfprintf_r+0x1a10>
 80034e2:	2230      	movs	r2, #48	; 0x30
 80034e4:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 80034e8:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 80034ec:	3330      	adds	r3, #48	; 0x30
 80034ee:	7013      	strb	r3, [r2, #0]
 80034f0:	1c53      	adds	r3, r2, #1
 80034f2:	aa26      	add	r2, sp, #152	; 0x98
 80034f4:	1a9b      	subs	r3, r3, r2
 80034f6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80034f8:	9319      	str	r3, [sp, #100]	; 0x64
 80034fa:	2a01      	cmp	r2, #1
 80034fc:	4413      	add	r3, r2
 80034fe:	9309      	str	r3, [sp, #36]	; 0x24
 8003500:	f340 8442 	ble.w	8003d88 <_vfprintf_r+0x19a8>
 8003504:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003506:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003508:	4413      	add	r3, r2
 800350a:	9309      	str	r3, [sp, #36]	; 0x24
 800350c:	2300      	movs	r3, #0
 800350e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003510:	9314      	str	r3, [sp, #80]	; 0x50
 8003512:	9311      	str	r3, [sp, #68]	; 0x44
 8003514:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003516:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 800351a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800351e:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003522:	9304      	str	r3, [sp, #16]
 8003524:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003526:	2b00      	cmp	r3, #0
 8003528:	f040 8275 	bne.w	8003a16 <_vfprintf_r+0x1636>
 800352c:	4699      	mov	r9, r3
 800352e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003532:	f7ff b8e2 	b.w	80026fa <_vfprintf_r+0x31a>
 8003536:	bf00      	nop
 8003538:	08007130 	.word	0x08007130
 800353c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800353e:	49bd      	ldr	r1, [pc, #756]	; (8003834 <_vfprintf_r+0x1454>)
 8003540:	f8cb 1000 	str.w	r1, [fp]
 8003544:	3201      	adds	r2, #1
 8003546:	3401      	adds	r4, #1
 8003548:	2101      	movs	r1, #1
 800354a:	2a07      	cmp	r2, #7
 800354c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003550:	f8cb 1004 	str.w	r1, [fp, #4]
 8003554:	dc60      	bgt.n	8003618 <_vfprintf_r+0x1238>
 8003556:	f10b 0b08 	add.w	fp, fp, #8
 800355a:	b92b      	cbnz	r3, 8003568 <_vfprintf_r+0x1188>
 800355c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800355e:	b91a      	cbnz	r2, 8003568 <_vfprintf_r+0x1188>
 8003560:	f018 0f01 	tst.w	r8, #1
 8003564:	f43f a98d 	beq.w	8002882 <_vfprintf_r+0x4a2>
 8003568:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800356a:	9916      	ldr	r1, [sp, #88]	; 0x58
 800356c:	f8cb 1000 	str.w	r1, [fp]
 8003570:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003572:	f8cb 1004 	str.w	r1, [fp, #4]
 8003576:	3201      	adds	r2, #1
 8003578:	440c      	add	r4, r1
 800357a:	2a07      	cmp	r2, #7
 800357c:	942c      	str	r4, [sp, #176]	; 0xb0
 800357e:	922b      	str	r2, [sp, #172]	; 0xac
 8003580:	f300 8282 	bgt.w	8003a88 <_vfprintf_r+0x16a8>
 8003584:	f10b 0b08 	add.w	fp, fp, #8
 8003588:	2b00      	cmp	r3, #0
 800358a:	f2c0 82e7 	blt.w	8003b5c <_vfprintf_r+0x177c>
 800358e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003590:	3201      	adds	r2, #1
 8003592:	441c      	add	r4, r3
 8003594:	2a07      	cmp	r2, #7
 8003596:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800359a:	e9cb 7300 	strd	r7, r3, [fp]
 800359e:	f77f a96e 	ble.w	800287e <_vfprintf_r+0x49e>
 80035a2:	e4fe      	b.n	8002fa2 <_vfprintf_r+0xbc2>
 80035a4:	aa2a      	add	r2, sp, #168	; 0xa8
 80035a6:	9907      	ldr	r1, [sp, #28]
 80035a8:	9803      	ldr	r0, [sp, #12]
 80035aa:	f003 fa47 	bl	8006a3c <__sprint_r>
 80035ae:	2800      	cmp	r0, #0
 80035b0:	f47f ac8e 	bne.w	8002ed0 <_vfprintf_r+0xaf0>
 80035b4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035b8:	f7ff bbf0 	b.w	8002d9c <_vfprintf_r+0x9bc>
 80035bc:	9a05      	ldr	r2, [sp, #20]
 80035be:	601a      	str	r2, [r3, #0]
 80035c0:	4657      	mov	r7, sl
 80035c2:	f7ff b9b3 	b.w	800292c <_vfprintf_r+0x54c>
 80035c6:	8814      	ldrh	r4, [r2, #0]
 80035c8:	9108      	str	r1, [sp, #32]
 80035ca:	2500      	movs	r5, #0
 80035cc:	2201      	movs	r2, #1
 80035ce:	f7ff b9c8 	b.w	8002962 <_vfprintf_r+0x582>
 80035d2:	8814      	ldrh	r4, [r2, #0]
 80035d4:	9308      	str	r3, [sp, #32]
 80035d6:	2500      	movs	r5, #0
 80035d8:	f7ff ba14 	b.w	8002a04 <_vfprintf_r+0x624>
 80035dc:	f9b1 4000 	ldrsh.w	r4, [r1]
 80035e0:	9208      	str	r2, [sp, #32]
 80035e2:	17e5      	asrs	r5, r4, #31
 80035e4:	4620      	mov	r0, r4
 80035e6:	4629      	mov	r1, r5
 80035e8:	f7ff b855 	b.w	8002696 <_vfprintf_r+0x2b6>
 80035ec:	8814      	ldrh	r4, [r2, #0]
 80035ee:	9308      	str	r3, [sp, #32]
 80035f0:	2500      	movs	r5, #0
 80035f2:	f7ff b825 	b.w	8002640 <_vfprintf_r+0x260>
 80035f6:	222d      	movs	r2, #45	; 0x2d
 80035f8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80035fc:	f7ff baa2 	b.w	8002b44 <_vfprintf_r+0x764>
 8003600:	aa2a      	add	r2, sp, #168	; 0xa8
 8003602:	9907      	ldr	r1, [sp, #28]
 8003604:	9803      	ldr	r0, [sp, #12]
 8003606:	f003 fa19 	bl	8006a3c <__sprint_r>
 800360a:	2800      	cmp	r0, #0
 800360c:	f47f ac60 	bne.w	8002ed0 <_vfprintf_r+0xaf0>
 8003610:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003612:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003616:	e534      	b.n	8003082 <_vfprintf_r+0xca2>
 8003618:	aa2a      	add	r2, sp, #168	; 0xa8
 800361a:	9907      	ldr	r1, [sp, #28]
 800361c:	9803      	ldr	r0, [sp, #12]
 800361e:	f003 fa0d 	bl	8006a3c <__sprint_r>
 8003622:	2800      	cmp	r0, #0
 8003624:	f47f ac54 	bne.w	8002ed0 <_vfprintf_r+0xaf0>
 8003628:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800362a:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800362c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003630:	e793      	b.n	800355a <_vfprintf_r+0x117a>
 8003632:	2330      	movs	r3, #48	; 0x30
 8003634:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003638:	2378      	movs	r3, #120	; 0x78
 800363a:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 800363e:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003642:	f048 0402 	orr.w	r4, r8, #2
 8003646:	f300 82b0 	bgt.w	8003baa <_vfprintf_r+0x17ca>
 800364a:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 800364e:	930e      	str	r3, [sp, #56]	; 0x38
 8003650:	f026 0320 	bic.w	r3, r6, #32
 8003654:	9304      	str	r3, [sp, #16]
 8003656:	2200      	movs	r2, #0
 8003658:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800365a:	920a      	str	r2, [sp, #40]	; 0x28
 800365c:	46a0      	mov	r8, r4
 800365e:	af3d      	add	r7, sp, #244	; 0xf4
 8003660:	2b00      	cmp	r3, #0
 8003662:	f2c0 81e3 	blt.w	8003a2c <_vfprintf_r+0x164c>
 8003666:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800366a:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800366e:	2300      	movs	r3, #0
 8003670:	930b      	str	r3, [sp, #44]	; 0x2c
 8003672:	2e61      	cmp	r6, #97	; 0x61
 8003674:	f000 8255 	beq.w	8003b22 <_vfprintf_r+0x1742>
 8003678:	2e41      	cmp	r6, #65	; 0x41
 800367a:	f47f aee3 	bne.w	8003444 <_vfprintf_r+0x1064>
 800367e:	a824      	add	r0, sp, #144	; 0x90
 8003680:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003684:	f003 f8e2 	bl	800684c <frexp>
 8003688:	2200      	movs	r2, #0
 800368a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800368e:	ec51 0b10 	vmov	r0, r1, d0
 8003692:	f7fd fa51 	bl	8000b38 <__aeabi_dmul>
 8003696:	2200      	movs	r2, #0
 8003698:	2300      	movs	r3, #0
 800369a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800369e:	f7fd fcb3 	bl	8001008 <__aeabi_dcmpeq>
 80036a2:	2800      	cmp	r0, #0
 80036a4:	f040 8305 	bne.w	8003cb2 <_vfprintf_r+0x18d2>
 80036a8:	4b63      	ldr	r3, [pc, #396]	; (8003838 <_vfprintf_r+0x1458>)
 80036aa:	9309      	str	r3, [sp, #36]	; 0x24
 80036ac:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 80036b0:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 80036b4:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80036b8:	9721      	str	r7, [sp, #132]	; 0x84
 80036ba:	46b9      	mov	r9, r7
 80036bc:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 80036c0:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 80036c4:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80036c8:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 80036cc:	e003      	b.n	80036d6 <_vfprintf_r+0x12f6>
 80036ce:	f7fd fc9b 	bl	8001008 <__aeabi_dcmpeq>
 80036d2:	bb20      	cbnz	r0, 800371e <_vfprintf_r+0x133e>
 80036d4:	46a9      	mov	r9, r5
 80036d6:	2200      	movs	r2, #0
 80036d8:	4b58      	ldr	r3, [pc, #352]	; (800383c <_vfprintf_r+0x145c>)
 80036da:	4630      	mov	r0, r6
 80036dc:	4639      	mov	r1, r7
 80036de:	f7fd fa2b 	bl	8000b38 <__aeabi_dmul>
 80036e2:	460f      	mov	r7, r1
 80036e4:	4606      	mov	r6, r0
 80036e6:	f7fd fcd7 	bl	8001098 <__aeabi_d2iz>
 80036ea:	4680      	mov	r8, r0
 80036ec:	f7fd f9ba 	bl	8000a64 <__aeabi_i2d>
 80036f0:	4602      	mov	r2, r0
 80036f2:	460b      	mov	r3, r1
 80036f4:	4630      	mov	r0, r6
 80036f6:	4639      	mov	r1, r7
 80036f8:	f7fd f866 	bl	80007c8 <__aeabi_dsub>
 80036fc:	464d      	mov	r5, r9
 80036fe:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003702:	f805 cb01 	strb.w	ip, [r5], #1
 8003706:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 800370a:	46a3      	mov	fp, r4
 800370c:	4606      	mov	r6, r0
 800370e:	460f      	mov	r7, r1
 8003710:	f04f 0200 	mov.w	r2, #0
 8003714:	f04f 0300 	mov.w	r3, #0
 8003718:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 800371c:	d1d7      	bne.n	80036ce <_vfprintf_r+0x12ee>
 800371e:	4630      	mov	r0, r6
 8003720:	4639      	mov	r1, r7
 8003722:	2200      	movs	r2, #0
 8003724:	4b46      	ldr	r3, [pc, #280]	; (8003840 <_vfprintf_r+0x1460>)
 8003726:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 800372a:	9e10      	ldr	r6, [sp, #64]	; 0x40
 800372c:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003730:	4644      	mov	r4, r8
 8003732:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003736:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 800373a:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 800373e:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003742:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003744:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003748:	f7fd fc86 	bl	8001058 <__aeabi_dcmpgt>
 800374c:	2800      	cmp	r0, #0
 800374e:	f040 8176 	bne.w	8003a3e <_vfprintf_r+0x165e>
 8003752:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003756:	2200      	movs	r2, #0
 8003758:	4b39      	ldr	r3, [pc, #228]	; (8003840 <_vfprintf_r+0x1460>)
 800375a:	f7fd fc55 	bl	8001008 <__aeabi_dcmpeq>
 800375e:	b110      	cbz	r0, 8003766 <_vfprintf_r+0x1386>
 8003760:	07e2      	lsls	r2, r4, #31
 8003762:	f100 816c 	bmi.w	8003a3e <_vfprintf_r+0x165e>
 8003766:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003768:	2b00      	cmp	r3, #0
 800376a:	db07      	blt.n	800377c <_vfprintf_r+0x139c>
 800376c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800376e:	3301      	adds	r3, #1
 8003770:	442b      	add	r3, r5
 8003772:	2230      	movs	r2, #48	; 0x30
 8003774:	f805 2b01 	strb.w	r2, [r5], #1
 8003778:	42ab      	cmp	r3, r5
 800377a:	d1fb      	bne.n	8003774 <_vfprintf_r+0x1394>
 800377c:	1beb      	subs	r3, r5, r7
 800377e:	4640      	mov	r0, r8
 8003780:	9310      	str	r3, [sp, #64]	; 0x40
 8003782:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003786:	e683      	b.n	8003490 <_vfprintf_r+0x10b0>
 8003788:	f8cd 9010 	str.w	r9, [sp, #16]
 800378c:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003790:	9408      	str	r4, [sp, #32]
 8003792:	4681      	mov	r9, r0
 8003794:	900f      	str	r0, [sp, #60]	; 0x3c
 8003796:	9014      	str	r0, [sp, #80]	; 0x50
 8003798:	9011      	str	r0, [sp, #68]	; 0x44
 800379a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800379e:	f7fe bfac 	b.w	80026fa <_vfprintf_r+0x31a>
 80037a2:	aa2a      	add	r2, sp, #168	; 0xa8
 80037a4:	9907      	ldr	r1, [sp, #28]
 80037a6:	9803      	ldr	r0, [sp, #12]
 80037a8:	f003 f948 	bl	8006a3c <__sprint_r>
 80037ac:	2800      	cmp	r0, #0
 80037ae:	f47f ab8f 	bne.w	8002ed0 <_vfprintf_r+0xaf0>
 80037b2:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80037b4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80037b6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80037ba:	e511      	b.n	80031e0 <_vfprintf_r+0xe00>
 80037bc:	4252      	negs	r2, r2
 80037be:	9206      	str	r2, [sp, #24]
 80037c0:	9308      	str	r3, [sp, #32]
 80037c2:	f7ff b96d 	b.w	8002aa0 <_vfprintf_r+0x6c0>
 80037c6:	4614      	mov	r4, r2
 80037c8:	4632      	mov	r2, r6
 80037ca:	461e      	mov	r6, r3
 80037cc:	4613      	mov	r3, r2
 80037ce:	462a      	mov	r2, r5
 80037d0:	3201      	adds	r2, #1
 80037d2:	9209      	str	r2, [sp, #36]	; 0x24
 80037d4:	f106 0208 	add.w	r2, r6, #8
 80037d8:	e9c6 3900 	strd	r3, r9, [r6]
 80037dc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80037de:	932b      	str	r3, [sp, #172]	; 0xac
 80037e0:	444c      	add	r4, r9
 80037e2:	2b07      	cmp	r3, #7
 80037e4:	942c      	str	r4, [sp, #176]	; 0xb0
 80037e6:	f73f acc3 	bgt.w	8003170 <_vfprintf_r+0xd90>
 80037ea:	3301      	adds	r3, #1
 80037ec:	9309      	str	r3, [sp, #36]	; 0x24
 80037ee:	f102 0b08 	add.w	fp, r2, #8
 80037f2:	4616      	mov	r6, r2
 80037f4:	f7ff bbca 	b.w	8002f8c <_vfprintf_r+0xbac>
 80037f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80037fa:	9907      	ldr	r1, [sp, #28]
 80037fc:	9803      	ldr	r0, [sp, #12]
 80037fe:	f003 f91d 	bl	8006a3c <__sprint_r>
 8003802:	2800      	cmp	r0, #0
 8003804:	f47f ab64 	bne.w	8002ed0 <_vfprintf_r+0xaf0>
 8003808:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800380a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800380e:	f7ff bade 	b.w	8002dce <_vfprintf_r+0x9ee>
 8003812:	464b      	mov	r3, r9
 8003814:	2b06      	cmp	r3, #6
 8003816:	bf28      	it	cs
 8003818:	2306      	movcs	r3, #6
 800381a:	46b9      	mov	r9, r7
 800381c:	970f      	str	r7, [sp, #60]	; 0x3c
 800381e:	9714      	str	r7, [sp, #80]	; 0x50
 8003820:	9711      	str	r7, [sp, #68]	; 0x44
 8003822:	970a      	str	r7, [sp, #40]	; 0x28
 8003824:	463a      	mov	r2, r7
 8003826:	9304      	str	r3, [sp, #16]
 8003828:	e9cd 4308 	strd	r4, r3, [sp, #32]
 800382c:	4f05      	ldr	r7, [pc, #20]	; (8003844 <_vfprintf_r+0x1464>)
 800382e:	f7fe bf64 	b.w	80026fa <_vfprintf_r+0x31a>
 8003832:	bf00      	nop
 8003834:	0800711c 	.word	0x0800711c
 8003838:	08007100 	.word	0x08007100
 800383c:	40300000 	.word	0x40300000
 8003840:	3fe00000 	.word	0x3fe00000
 8003844:	08007114 	.word	0x08007114
 8003848:	460c      	mov	r4, r1
 800384a:	4639      	mov	r1, r7
 800384c:	465f      	mov	r7, fp
 800384e:	469b      	mov	fp, r3
 8003850:	460b      	mov	r3, r1
 8003852:	3201      	adds	r2, #1
 8003854:	442c      	add	r4, r5
 8003856:	2a07      	cmp	r2, #7
 8003858:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800385c:	e9cb 3500 	strd	r3, r5, [fp]
 8003860:	f73f aca5 	bgt.w	80031ae <_vfprintf_r+0xdce>
 8003864:	f10b 0b08 	add.w	fp, fp, #8
 8003868:	e4ac      	b.n	80031c4 <_vfprintf_r+0xde4>
 800386a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800386c:	1cda      	adds	r2, r3, #3
 800386e:	db02      	blt.n	8003876 <_vfprintf_r+0x1496>
 8003870:	4599      	cmp	r9, r3
 8003872:	f280 80b5 	bge.w	80039e0 <_vfprintf_r+0x1600>
 8003876:	3e02      	subs	r6, #2
 8003878:	f026 0320 	bic.w	r3, r6, #32
 800387c:	9304      	str	r3, [sp, #16]
 800387e:	e611      	b.n	80034a4 <_vfprintf_r+0x10c4>
 8003880:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003882:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003886:	465a      	mov	r2, fp
 8003888:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 800388c:	18fb      	adds	r3, r7, r3
 800388e:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003892:	970c      	str	r7, [sp, #48]	; 0x30
 8003894:	4eaf      	ldr	r6, [pc, #700]	; (8003b54 <_vfprintf_r+0x1774>)
 8003896:	f8dd a01c 	ldr.w	sl, [sp, #28]
 800389a:	9309      	str	r3, [sp, #36]	; 0x24
 800389c:	464f      	mov	r7, r9
 800389e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80038a2:	4621      	mov	r1, r4
 80038a4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80038a6:	2b00      	cmp	r3, #0
 80038a8:	d05b      	beq.n	8003962 <_vfprintf_r+0x1582>
 80038aa:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80038ac:	2b00      	cmp	r3, #0
 80038ae:	d154      	bne.n	800395a <_vfprintf_r+0x157a>
 80038b0:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80038b2:	3b01      	subs	r3, #1
 80038b4:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80038b8:	9314      	str	r3, [sp, #80]	; 0x50
 80038ba:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80038bc:	9818      	ldr	r0, [sp, #96]	; 0x60
 80038be:	6010      	str	r0, [r2, #0]
 80038c0:	3301      	adds	r3, #1
 80038c2:	4459      	add	r1, fp
 80038c4:	2b07      	cmp	r3, #7
 80038c6:	912c      	str	r1, [sp, #176]	; 0xb0
 80038c8:	f8c2 b004 	str.w	fp, [r2, #4]
 80038cc:	932b      	str	r3, [sp, #172]	; 0xac
 80038ce:	dc68      	bgt.n	80039a2 <_vfprintf_r+0x15c2>
 80038d0:	3208      	adds	r2, #8
 80038d2:	9809      	ldr	r0, [sp, #36]	; 0x24
 80038d4:	f898 3000 	ldrb.w	r3, [r8]
 80038d8:	1bc5      	subs	r5, r0, r7
 80038da:	429d      	cmp	r5, r3
 80038dc:	bfa8      	it	ge
 80038de:	461d      	movge	r5, r3
 80038e0:	2d00      	cmp	r5, #0
 80038e2:	dd0b      	ble.n	80038fc <_vfprintf_r+0x151c>
 80038e4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80038e6:	6017      	str	r7, [r2, #0]
 80038e8:	3301      	adds	r3, #1
 80038ea:	4429      	add	r1, r5
 80038ec:	2b07      	cmp	r3, #7
 80038ee:	912c      	str	r1, [sp, #176]	; 0xb0
 80038f0:	6055      	str	r5, [r2, #4]
 80038f2:	932b      	str	r3, [sp, #172]	; 0xac
 80038f4:	dc5e      	bgt.n	80039b4 <_vfprintf_r+0x15d4>
 80038f6:	f898 3000 	ldrb.w	r3, [r8]
 80038fa:	3208      	adds	r2, #8
 80038fc:	2d00      	cmp	r5, #0
 80038fe:	bfac      	ite	ge
 8003900:	1b5d      	subge	r5, r3, r5
 8003902:	461d      	movlt	r5, r3
 8003904:	2d00      	cmp	r5, #0
 8003906:	dd26      	ble.n	8003956 <_vfprintf_r+0x1576>
 8003908:	2d10      	cmp	r5, #16
 800390a:	982b      	ldr	r0, [sp, #172]	; 0xac
 800390c:	dd3c      	ble.n	8003988 <_vfprintf_r+0x15a8>
 800390e:	2410      	movs	r4, #16
 8003910:	e003      	b.n	800391a <_vfprintf_r+0x153a>
 8003912:	3208      	adds	r2, #8
 8003914:	3d10      	subs	r5, #16
 8003916:	2d10      	cmp	r5, #16
 8003918:	dd36      	ble.n	8003988 <_vfprintf_r+0x15a8>
 800391a:	3001      	adds	r0, #1
 800391c:	3110      	adds	r1, #16
 800391e:	2807      	cmp	r0, #7
 8003920:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003924:	e9c2 6400 	strd	r6, r4, [r2]
 8003928:	ddf3      	ble.n	8003912 <_vfprintf_r+0x1532>
 800392a:	aa2a      	add	r2, sp, #168	; 0xa8
 800392c:	4651      	mov	r1, sl
 800392e:	4648      	mov	r0, r9
 8003930:	f003 f884 	bl	8006a3c <__sprint_r>
 8003934:	2800      	cmp	r0, #0
 8003936:	d150      	bne.n	80039da <_vfprintf_r+0x15fa>
 8003938:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 800393c:	aa2d      	add	r2, sp, #180	; 0xb4
 800393e:	e7e9      	b.n	8003914 <_vfprintf_r+0x1534>
 8003940:	aa2a      	add	r2, sp, #168	; 0xa8
 8003942:	4651      	mov	r1, sl
 8003944:	4648      	mov	r0, r9
 8003946:	f003 f879 	bl	8006a3c <__sprint_r>
 800394a:	2800      	cmp	r0, #0
 800394c:	d145      	bne.n	80039da <_vfprintf_r+0x15fa>
 800394e:	f898 3000 	ldrb.w	r3, [r8]
 8003952:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003954:	aa2d      	add	r2, sp, #180	; 0xb4
 8003956:	441f      	add	r7, r3
 8003958:	e7a4      	b.n	80038a4 <_vfprintf_r+0x14c4>
 800395a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800395c:	3b01      	subs	r3, #1
 800395e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003960:	e7ab      	b.n	80038ba <_vfprintf_r+0x14da>
 8003962:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003964:	2b00      	cmp	r3, #0
 8003966:	d1f8      	bne.n	800395a <_vfprintf_r+0x157a>
 8003968:	46b9      	mov	r9, r7
 800396a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800396c:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 800396e:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003972:	18fb      	adds	r3, r7, r3
 8003974:	4599      	cmp	r9, r3
 8003976:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 800397a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800397e:	4693      	mov	fp, r2
 8003980:	460c      	mov	r4, r1
 8003982:	bf28      	it	cs
 8003984:	4699      	movcs	r9, r3
 8003986:	e424      	b.n	80031d2 <_vfprintf_r+0xdf2>
 8003988:	3001      	adds	r0, #1
 800398a:	4429      	add	r1, r5
 800398c:	2807      	cmp	r0, #7
 800398e:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003992:	e9c2 6500 	strd	r6, r5, [r2]
 8003996:	dcd3      	bgt.n	8003940 <_vfprintf_r+0x1560>
 8003998:	f898 3000 	ldrb.w	r3, [r8]
 800399c:	3208      	adds	r2, #8
 800399e:	441f      	add	r7, r3
 80039a0:	e780      	b.n	80038a4 <_vfprintf_r+0x14c4>
 80039a2:	aa2a      	add	r2, sp, #168	; 0xa8
 80039a4:	4651      	mov	r1, sl
 80039a6:	4648      	mov	r0, r9
 80039a8:	f003 f848 	bl	8006a3c <__sprint_r>
 80039ac:	b9a8      	cbnz	r0, 80039da <_vfprintf_r+0x15fa>
 80039ae:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80039b0:	aa2d      	add	r2, sp, #180	; 0xb4
 80039b2:	e78e      	b.n	80038d2 <_vfprintf_r+0x14f2>
 80039b4:	aa2a      	add	r2, sp, #168	; 0xa8
 80039b6:	4651      	mov	r1, sl
 80039b8:	4648      	mov	r0, r9
 80039ba:	f003 f83f 	bl	8006a3c <__sprint_r>
 80039be:	b960      	cbnz	r0, 80039da <_vfprintf_r+0x15fa>
 80039c0:	f898 3000 	ldrb.w	r3, [r8]
 80039c4:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80039c6:	aa2d      	add	r2, sp, #180	; 0xb4
 80039c8:	e798      	b.n	80038fc <_vfprintf_r+0x151c>
 80039ca:	4638      	mov	r0, r7
 80039cc:	f7fc fe38 	bl	8000640 <strlen>
 80039d0:	46a9      	mov	r9, r5
 80039d2:	4603      	mov	r3, r0
 80039d4:	9009      	str	r0, [sp, #36]	; 0x24
 80039d6:	f7ff b8f4 	b.w	8002bc2 <_vfprintf_r+0x7e2>
 80039da:	46d1      	mov	r9, sl
 80039dc:	f7ff ba7a 	b.w	8002ed4 <_vfprintf_r+0xaf4>
 80039e0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80039e2:	4619      	mov	r1, r3
 80039e4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039e6:	4299      	cmp	r1, r3
 80039e8:	f300 8082 	bgt.w	8003af0 <_vfprintf_r+0x1710>
 80039ec:	07c4      	lsls	r4, r0, #31
 80039ee:	f140 816b 	bpl.w	8003cc8 <_vfprintf_r+0x18e8>
 80039f2:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80039f4:	4413      	add	r3, r2
 80039f6:	9309      	str	r3, [sp, #36]	; 0x24
 80039f8:	0541      	lsls	r1, r0, #21
 80039fa:	d503      	bpl.n	8003a04 <_vfprintf_r+0x1624>
 80039fc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039fe:	2b00      	cmp	r3, #0
 8003a00:	f300 80e6 	bgt.w	8003bd0 <_vfprintf_r+0x17f0>
 8003a04:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a06:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003a0a:	9304      	str	r3, [sp, #16]
 8003a0c:	2667      	movs	r6, #103	; 0x67
 8003a0e:	2300      	movs	r3, #0
 8003a10:	930f      	str	r3, [sp, #60]	; 0x3c
 8003a12:	9314      	str	r3, [sp, #80]	; 0x50
 8003a14:	e586      	b.n	8003524 <_vfprintf_r+0x1144>
 8003a16:	222d      	movs	r2, #45	; 0x2d
 8003a18:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003a1c:	f04f 0900 	mov.w	r9, #0
 8003a20:	f7fe be6c 	b.w	80026fc <_vfprintf_r+0x31c>
 8003a24:	46a1      	mov	r9, r4
 8003a26:	f7ff ba55 	b.w	8002ed4 <_vfprintf_r+0xaf4>
 8003a2a:	900a      	str	r0, [sp, #40]	; 0x28
 8003a2c:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003a30:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003a34:	931f      	str	r3, [sp, #124]	; 0x7c
 8003a36:	232d      	movs	r3, #45	; 0x2d
 8003a38:	911e      	str	r1, [sp, #120]	; 0x78
 8003a3a:	930b      	str	r3, [sp, #44]	; 0x2c
 8003a3c:	e619      	b.n	8003672 <_vfprintf_r+0x1292>
 8003a3e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a40:	9328      	str	r3, [sp, #160]	; 0xa0
 8003a42:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a44:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003a48:	7bd9      	ldrb	r1, [r3, #15]
 8003a4a:	4291      	cmp	r1, r2
 8003a4c:	462b      	mov	r3, r5
 8003a4e:	d109      	bne.n	8003a64 <_vfprintf_r+0x1684>
 8003a50:	2030      	movs	r0, #48	; 0x30
 8003a52:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003a56:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003a58:	1e5a      	subs	r2, r3, #1
 8003a5a:	9228      	str	r2, [sp, #160]	; 0xa0
 8003a5c:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003a60:	4291      	cmp	r1, r2
 8003a62:	d0f6      	beq.n	8003a52 <_vfprintf_r+0x1672>
 8003a64:	2a39      	cmp	r2, #57	; 0x39
 8003a66:	bf0b      	itete	eq
 8003a68:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003a6a:	3201      	addne	r2, #1
 8003a6c:	7a92      	ldrbeq	r2, [r2, #10]
 8003a6e:	b2d2      	uxtbne	r2, r2
 8003a70:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003a74:	e682      	b.n	800377c <_vfprintf_r+0x139c>
 8003a76:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003a7a:	f43f ad9f 	beq.w	80035bc <_vfprintf_r+0x11dc>
 8003a7e:	9a05      	ldr	r2, [sp, #20]
 8003a80:	701a      	strb	r2, [r3, #0]
 8003a82:	4657      	mov	r7, sl
 8003a84:	f7fe bf52 	b.w	800292c <_vfprintf_r+0x54c>
 8003a88:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a8a:	9907      	ldr	r1, [sp, #28]
 8003a8c:	9803      	ldr	r0, [sp, #12]
 8003a8e:	f002 ffd5 	bl	8006a3c <__sprint_r>
 8003a92:	2800      	cmp	r0, #0
 8003a94:	f47f aa1c 	bne.w	8002ed0 <_vfprintf_r+0xaf0>
 8003a98:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003a9a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003a9e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003aa2:	e571      	b.n	8003588 <_vfprintf_r+0x11a8>
 8003aa4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003aa6:	2b00      	cmp	r3, #0
 8003aa8:	f340 8164 	ble.w	8003d74 <_vfprintf_r+0x1994>
 8003aac:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003aae:	f1b9 0f00 	cmp.w	r9, #0
 8003ab2:	f040 8103 	bne.w	8003cbc <_vfprintf_r+0x18dc>
 8003ab6:	07c6      	lsls	r6, r0, #31
 8003ab8:	f100 8100 	bmi.w	8003cbc <_vfprintf_r+0x18dc>
 8003abc:	9309      	str	r3, [sp, #36]	; 0x24
 8003abe:	2666      	movs	r6, #102	; 0x66
 8003ac0:	0543      	lsls	r3, r0, #21
 8003ac2:	f100 8086 	bmi.w	8003bd2 <_vfprintf_r+0x17f2>
 8003ac6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003ac8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003acc:	9304      	str	r3, [sp, #16]
 8003ace:	e79e      	b.n	8003a0e <_vfprintf_r+0x162e>
 8003ad0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ad2:	9907      	ldr	r1, [sp, #28]
 8003ad4:	9803      	ldr	r0, [sp, #12]
 8003ad6:	f002 ffb1 	bl	8006a3c <__sprint_r>
 8003ada:	2800      	cmp	r0, #0
 8003adc:	f47f a9f8 	bne.w	8002ed0 <_vfprintf_r+0xaf0>
 8003ae0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003ae2:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003ae4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003ae6:	1ad3      	subs	r3, r2, r3
 8003ae8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003aec:	f7ff bb90 	b.w	8003210 <_vfprintf_r+0xe30>
 8003af0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003af2:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003af4:	4413      	add	r3, r2
 8003af6:	9309      	str	r3, [sp, #36]	; 0x24
 8003af8:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003afa:	2b00      	cmp	r3, #0
 8003afc:	f340 8149 	ble.w	8003d92 <_vfprintf_r+0x19b2>
 8003b00:	2667      	movs	r6, #103	; 0x67
 8003b02:	e7dd      	b.n	8003ac0 <_vfprintf_r+0x16e0>
 8003b04:	2330      	movs	r3, #48	; 0x30
 8003b06:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003b0a:	2358      	movs	r3, #88	; 0x58
 8003b0c:	e595      	b.n	800363a <_vfprintf_r+0x125a>
 8003b0e:	9803      	ldr	r0, [sp, #12]
 8003b10:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b12:	4649      	mov	r1, r9
 8003b14:	f002 ff92 	bl	8006a3c <__sprint_r>
 8003b18:	2800      	cmp	r0, #0
 8003b1a:	f47f a9e0 	bne.w	8002ede <_vfprintf_r+0xafe>
 8003b1e:	f7fe bf0f 	b.w	8002940 <_vfprintf_r+0x560>
 8003b22:	a824      	add	r0, sp, #144	; 0x90
 8003b24:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003b28:	f002 fe90 	bl	800684c <frexp>
 8003b2c:	2200      	movs	r2, #0
 8003b2e:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003b32:	ec51 0b10 	vmov	r0, r1, d0
 8003b36:	f7fc ffff 	bl	8000b38 <__aeabi_dmul>
 8003b3a:	2200      	movs	r2, #0
 8003b3c:	2300      	movs	r3, #0
 8003b3e:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003b42:	f7fd fa61 	bl	8001008 <__aeabi_dcmpeq>
 8003b46:	b108      	cbz	r0, 8003b4c <_vfprintf_r+0x176c>
 8003b48:	2301      	movs	r3, #1
 8003b4a:	9324      	str	r3, [sp, #144]	; 0x90
 8003b4c:	4b02      	ldr	r3, [pc, #8]	; (8003b58 <_vfprintf_r+0x1778>)
 8003b4e:	9309      	str	r3, [sp, #36]	; 0x24
 8003b50:	e5ac      	b.n	80036ac <_vfprintf_r+0x12cc>
 8003b52:	bf00      	nop
 8003b54:	08007130 	.word	0x08007130
 8003b58:	080070ec 	.word	0x080070ec
 8003b5c:	425d      	negs	r5, r3
 8003b5e:	3310      	adds	r3, #16
 8003b60:	4bb9      	ldr	r3, [pc, #740]	; (8003e48 <_vfprintf_r+0x1a68>)
 8003b62:	f280 8097 	bge.w	8003c94 <_vfprintf_r+0x18b4>
 8003b66:	4619      	mov	r1, r3
 8003b68:	2610      	movs	r6, #16
 8003b6a:	4623      	mov	r3, r4
 8003b6c:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003b70:	460c      	mov	r4, r1
 8003b72:	e005      	b.n	8003b80 <_vfprintf_r+0x17a0>
 8003b74:	f10b 0b08 	add.w	fp, fp, #8
 8003b78:	3d10      	subs	r5, #16
 8003b7a:	2d10      	cmp	r5, #16
 8003b7c:	f340 8087 	ble.w	8003c8e <_vfprintf_r+0x18ae>
 8003b80:	3201      	adds	r2, #1
 8003b82:	3310      	adds	r3, #16
 8003b84:	2a07      	cmp	r2, #7
 8003b86:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003b8a:	e9cb 4600 	strd	r4, r6, [fp]
 8003b8e:	ddf1      	ble.n	8003b74 <_vfprintf_r+0x1794>
 8003b90:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b92:	9907      	ldr	r1, [sp, #28]
 8003b94:	4648      	mov	r0, r9
 8003b96:	f002 ff51 	bl	8006a3c <__sprint_r>
 8003b9a:	2800      	cmp	r0, #0
 8003b9c:	f47f a998 	bne.w	8002ed0 <_vfprintf_r+0xaf0>
 8003ba0:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003ba4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ba8:	e7e6      	b.n	8003b78 <_vfprintf_r+0x1798>
 8003baa:	f109 0101 	add.w	r1, r9, #1
 8003bae:	9803      	ldr	r0, [sp, #12]
 8003bb0:	f001 fe80 	bl	80058b4 <_malloc_r>
 8003bb4:	4607      	mov	r7, r0
 8003bb6:	2800      	cmp	r0, #0
 8003bb8:	f000 813b 	beq.w	8003e32 <_vfprintf_r+0x1a52>
 8003bbc:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003bc0:	930e      	str	r3, [sp, #56]	; 0x38
 8003bc2:	f026 0320 	bic.w	r3, r6, #32
 8003bc6:	9304      	str	r3, [sp, #16]
 8003bc8:	46a0      	mov	r8, r4
 8003bca:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003bcc:	900a      	str	r0, [sp, #40]	; 0x28
 8003bce:	e547      	b.n	8003660 <_vfprintf_r+0x1280>
 8003bd0:	2667      	movs	r6, #103	; 0x67
 8003bd2:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003bd4:	2200      	movs	r2, #0
 8003bd6:	920f      	str	r2, [sp, #60]	; 0x3c
 8003bd8:	9214      	str	r2, [sp, #80]	; 0x50
 8003bda:	7803      	ldrb	r3, [r0, #0]
 8003bdc:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003bde:	2bff      	cmp	r3, #255	; 0xff
 8003be0:	d00c      	beq.n	8003bfc <_vfprintf_r+0x181c>
 8003be2:	4293      	cmp	r3, r2
 8003be4:	da0a      	bge.n	8003bfc <_vfprintf_r+0x181c>
 8003be6:	7841      	ldrb	r1, [r0, #1]
 8003be8:	1ad2      	subs	r2, r2, r3
 8003bea:	b1a9      	cbz	r1, 8003c18 <_vfprintf_r+0x1838>
 8003bec:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003bee:	3301      	adds	r3, #1
 8003bf0:	9314      	str	r3, [sp, #80]	; 0x50
 8003bf2:	460b      	mov	r3, r1
 8003bf4:	2bff      	cmp	r3, #255	; 0xff
 8003bf6:	f100 0001 	add.w	r0, r0, #1
 8003bfa:	d1f2      	bne.n	8003be2 <_vfprintf_r+0x1802>
 8003bfc:	9211      	str	r2, [sp, #68]	; 0x44
 8003bfe:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c00:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003c02:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003c04:	901a      	str	r0, [sp, #104]	; 0x68
 8003c06:	4413      	add	r3, r2
 8003c08:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003c0a:	fb02 1303 	mla	r3, r2, r3, r1
 8003c0e:	9309      	str	r3, [sp, #36]	; 0x24
 8003c10:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003c14:	9304      	str	r3, [sp, #16]
 8003c16:	e485      	b.n	8003524 <_vfprintf_r+0x1144>
 8003c18:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003c1a:	3101      	adds	r1, #1
 8003c1c:	910f      	str	r1, [sp, #60]	; 0x3c
 8003c1e:	e7de      	b.n	8003bde <_vfprintf_r+0x17fe>
 8003c20:	aa28      	add	r2, sp, #160	; 0xa0
 8003c22:	ab25      	add	r3, sp, #148	; 0x94
 8003c24:	e9cd 3200 	strd	r3, r2, [sp]
 8003c28:	2103      	movs	r1, #3
 8003c2a:	ab24      	add	r3, sp, #144	; 0x90
 8003c2c:	464a      	mov	r2, r9
 8003c2e:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c32:	9803      	ldr	r0, [sp, #12]
 8003c34:	f000 fa5c 	bl	80040f0 <_dtoa_r>
 8003c38:	464d      	mov	r5, r9
 8003c3a:	4607      	mov	r7, r0
 8003c3c:	eb00 0409 	add.w	r4, r0, r9
 8003c40:	783b      	ldrb	r3, [r7, #0]
 8003c42:	2b30      	cmp	r3, #48	; 0x30
 8003c44:	f000 80be 	beq.w	8003dc4 <_vfprintf_r+0x19e4>
 8003c48:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003c4a:	442c      	add	r4, r5
 8003c4c:	2200      	movs	r2, #0
 8003c4e:	2300      	movs	r3, #0
 8003c50:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003c54:	f7fd f9d8 	bl	8001008 <__aeabi_dcmpeq>
 8003c58:	b108      	cbz	r0, 8003c5e <_vfprintf_r+0x187e>
 8003c5a:	4623      	mov	r3, r4
 8003c5c:	e413      	b.n	8003486 <_vfprintf_r+0x10a6>
 8003c5e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003c60:	42a3      	cmp	r3, r4
 8003c62:	f4bf ac10 	bcs.w	8003486 <_vfprintf_r+0x10a6>
 8003c66:	2130      	movs	r1, #48	; 0x30
 8003c68:	1c5a      	adds	r2, r3, #1
 8003c6a:	9228      	str	r2, [sp, #160]	; 0xa0
 8003c6c:	7019      	strb	r1, [r3, #0]
 8003c6e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003c70:	429c      	cmp	r4, r3
 8003c72:	d8f9      	bhi.n	8003c68 <_vfprintf_r+0x1888>
 8003c74:	e407      	b.n	8003486 <_vfprintf_r+0x10a6>
 8003c76:	197c      	adds	r4, r7, r5
 8003c78:	e7e8      	b.n	8003c4c <_vfprintf_r+0x186c>
 8003c7a:	f1b9 0f00 	cmp.w	r9, #0
 8003c7e:	f000 8092 	beq.w	8003da6 <_vfprintf_r+0x19c6>
 8003c82:	900a      	str	r0, [sp, #40]	; 0x28
 8003c84:	e4ec      	b.n	8003660 <_vfprintf_r+0x1280>
 8003c86:	900a      	str	r0, [sp, #40]	; 0x28
 8003c88:	f04f 0906 	mov.w	r9, #6
 8003c8c:	e4e8      	b.n	8003660 <_vfprintf_r+0x1280>
 8003c8e:	4621      	mov	r1, r4
 8003c90:	461c      	mov	r4, r3
 8003c92:	460b      	mov	r3, r1
 8003c94:	3201      	adds	r2, #1
 8003c96:	442c      	add	r4, r5
 8003c98:	2a07      	cmp	r2, #7
 8003c9a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003c9e:	e9cb 3500 	strd	r3, r5, [fp]
 8003ca2:	f300 80a9 	bgt.w	8003df8 <_vfprintf_r+0x1a18>
 8003ca6:	f10b 0b08 	add.w	fp, fp, #8
 8003caa:	e470      	b.n	800358e <_vfprintf_r+0x11ae>
 8003cac:	469a      	mov	sl, r3
 8003cae:	f7ff bb37 	b.w	8003320 <_vfprintf_r+0xf40>
 8003cb2:	2301      	movs	r3, #1
 8003cb4:	9324      	str	r3, [sp, #144]	; 0x90
 8003cb6:	4b65      	ldr	r3, [pc, #404]	; (8003e4c <_vfprintf_r+0x1a6c>)
 8003cb8:	9309      	str	r3, [sp, #36]	; 0x24
 8003cba:	e4f7      	b.n	80036ac <_vfprintf_r+0x12cc>
 8003cbc:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003cbe:	4413      	add	r3, r2
 8003cc0:	444b      	add	r3, r9
 8003cc2:	9309      	str	r3, [sp, #36]	; 0x24
 8003cc4:	2666      	movs	r6, #102	; 0x66
 8003cc6:	e6fb      	b.n	8003ac0 <_vfprintf_r+0x16e0>
 8003cc8:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003cca:	9309      	str	r3, [sp, #36]	; 0x24
 8003ccc:	e694      	b.n	80039f8 <_vfprintf_r+0x1618>
 8003cce:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003cd2:	4664      	mov	r4, ip
 8003cd4:	4d5e      	ldr	r5, [pc, #376]	; (8003e50 <_vfprintf_r+0x1a70>)
 8003cd6:	e000      	b.n	8003cda <_vfprintf_r+0x18fa>
 8003cd8:	4614      	mov	r4, r2
 8003cda:	fba5 1203 	umull	r1, r2, r5, r3
 8003cde:	08d2      	lsrs	r2, r2, #3
 8003ce0:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003ce4:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003ce8:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003cec:	4613      	mov	r3, r2
 8003cee:	2b09      	cmp	r3, #9
 8003cf0:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003cf4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003cf8:	dcee      	bgt.n	8003cd8 <_vfprintf_r+0x18f8>
 8003cfa:	3330      	adds	r3, #48	; 0x30
 8003cfc:	3c02      	subs	r4, #2
 8003cfe:	b2db      	uxtb	r3, r3
 8003d00:	45a4      	cmp	ip, r4
 8003d02:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003d06:	f240 8090 	bls.w	8003e2a <_vfprintf_r+0x1a4a>
 8003d0a:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003d0e:	4611      	mov	r1, r2
 8003d10:	e001      	b.n	8003d16 <_vfprintf_r+0x1936>
 8003d12:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003d16:	f804 3b01 	strb.w	r3, [r4], #1
 8003d1a:	458c      	cmp	ip, r1
 8003d1c:	d1f9      	bne.n	8003d12 <_vfprintf_r+0x1932>
 8003d1e:	ab2a      	add	r3, sp, #168	; 0xa8
 8003d20:	1a9b      	subs	r3, r3, r2
 8003d22:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003d26:	4413      	add	r3, r2
 8003d28:	f7ff bbe3 	b.w	80034f2 <_vfprintf_r+0x1112>
 8003d2c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003d2e:	4f49      	ldr	r7, [pc, #292]	; (8003e54 <_vfprintf_r+0x1a74>)
 8003d30:	2b00      	cmp	r3, #0
 8003d32:	bfb6      	itet	lt
 8003d34:	222d      	movlt	r2, #45	; 0x2d
 8003d36:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003d3a:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003d3e:	4b46      	ldr	r3, [pc, #280]	; (8003e58 <_vfprintf_r+0x1a78>)
 8003d40:	f7fe bf02 	b.w	8002b48 <_vfprintf_r+0x768>
 8003d44:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003d48:	f7ff b8c9 	b.w	8002ede <_vfprintf_r+0xafe>
 8003d4c:	aa28      	add	r2, sp, #160	; 0xa0
 8003d4e:	ab25      	add	r3, sp, #148	; 0x94
 8003d50:	e9cd 3200 	strd	r3, r2, [sp]
 8003d54:	2103      	movs	r1, #3
 8003d56:	ab24      	add	r3, sp, #144	; 0x90
 8003d58:	464a      	mov	r2, r9
 8003d5a:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003d5e:	9803      	ldr	r0, [sp, #12]
 8003d60:	f000 f9c6 	bl	80040f0 <_dtoa_r>
 8003d64:	464d      	mov	r5, r9
 8003d66:	4607      	mov	r7, r0
 8003d68:	2e46      	cmp	r6, #70	; 0x46
 8003d6a:	eb07 0405 	add.w	r4, r7, r5
 8003d6e:	f43f af67 	beq.w	8003c40 <_vfprintf_r+0x1860>
 8003d72:	e76b      	b.n	8003c4c <_vfprintf_r+0x186c>
 8003d74:	f1b9 0f00 	cmp.w	r9, #0
 8003d78:	d131      	bne.n	8003dde <_vfprintf_r+0x19fe>
 8003d7a:	07c5      	lsls	r5, r0, #31
 8003d7c:	d42f      	bmi.n	8003dde <_vfprintf_r+0x19fe>
 8003d7e:	2301      	movs	r3, #1
 8003d80:	9304      	str	r3, [sp, #16]
 8003d82:	9309      	str	r3, [sp, #36]	; 0x24
 8003d84:	2666      	movs	r6, #102	; 0x66
 8003d86:	e642      	b.n	8003a0e <_vfprintf_r+0x162e>
 8003d88:	07c3      	lsls	r3, r0, #31
 8003d8a:	f57f abbf 	bpl.w	800350c <_vfprintf_r+0x112c>
 8003d8e:	f7ff bbb9 	b.w	8003504 <_vfprintf_r+0x1124>
 8003d92:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003d94:	f1c3 0301 	rsb	r3, r3, #1
 8003d98:	441a      	add	r2, r3
 8003d9a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003d9e:	9209      	str	r2, [sp, #36]	; 0x24
 8003da0:	9304      	str	r3, [sp, #16]
 8003da2:	2667      	movs	r6, #103	; 0x67
 8003da4:	e633      	b.n	8003a0e <_vfprintf_r+0x162e>
 8003da6:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003daa:	f04f 0901 	mov.w	r9, #1
 8003dae:	e457      	b.n	8003660 <_vfprintf_r+0x1280>
 8003db0:	465a      	mov	r2, fp
 8003db2:	e511      	b.n	80037d8 <_vfprintf_r+0x13f8>
 8003db4:	2e47      	cmp	r6, #71	; 0x47
 8003db6:	f47f af5e 	bne.w	8003c76 <_vfprintf_r+0x1896>
 8003dba:	f018 0f01 	tst.w	r8, #1
 8003dbe:	f43f ab61 	beq.w	8003484 <_vfprintf_r+0x10a4>
 8003dc2:	e7d1      	b.n	8003d68 <_vfprintf_r+0x1988>
 8003dc4:	2200      	movs	r2, #0
 8003dc6:	2300      	movs	r3, #0
 8003dc8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003dcc:	f7fd f91c 	bl	8001008 <__aeabi_dcmpeq>
 8003dd0:	2800      	cmp	r0, #0
 8003dd2:	f47f af39 	bne.w	8003c48 <_vfprintf_r+0x1868>
 8003dd6:	f1c5 0501 	rsb	r5, r5, #1
 8003dda:	9524      	str	r5, [sp, #144]	; 0x90
 8003ddc:	e735      	b.n	8003c4a <_vfprintf_r+0x186a>
 8003dde:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003de0:	3301      	adds	r3, #1
 8003de2:	444b      	add	r3, r9
 8003de4:	9309      	str	r3, [sp, #36]	; 0x24
 8003de6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003dea:	9304      	str	r3, [sp, #16]
 8003dec:	2666      	movs	r6, #102	; 0x66
 8003dee:	e60e      	b.n	8003a0e <_vfprintf_r+0x162e>
 8003df0:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003df4:	f7ff bb7a 	b.w	80034ec <_vfprintf_r+0x110c>
 8003df8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003dfa:	9907      	ldr	r1, [sp, #28]
 8003dfc:	9803      	ldr	r0, [sp, #12]
 8003dfe:	f002 fe1d 	bl	8006a3c <__sprint_r>
 8003e02:	2800      	cmp	r0, #0
 8003e04:	f47f a864 	bne.w	8002ed0 <_vfprintf_r+0xaf0>
 8003e08:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003e0c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e10:	f7ff bbbd 	b.w	800358e <_vfprintf_r+0x11ae>
 8003e14:	9908      	ldr	r1, [sp, #32]
 8003e16:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003e1a:	680b      	ldr	r3, [r1, #0]
 8003e1c:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003e20:	1d0b      	adds	r3, r1, #4
 8003e22:	4692      	mov	sl, r2
 8003e24:	9308      	str	r3, [sp, #32]
 8003e26:	f7fe bb59 	b.w	80024dc <_vfprintf_r+0xfc>
 8003e2a:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003e2e:	f7ff bb60 	b.w	80034f2 <_vfprintf_r+0x1112>
 8003e32:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003e36:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003e3a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003e3e:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003e42:	f7ff b84c 	b.w	8002ede <_vfprintf_r+0xafe>
 8003e46:	bf00      	nop
 8003e48:	08007130 	.word	0x08007130
 8003e4c:	08007100 	.word	0x08007100
 8003e50:	cccccccd 	.word	0xcccccccd
 8003e54:	080070e8 	.word	0x080070e8
 8003e58:	080070e4 	.word	0x080070e4

08003e5c <__sbprintf>:
 8003e5c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003e60:	460c      	mov	r4, r1
 8003e62:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003e66:	8989      	ldrh	r1, [r1, #12]
 8003e68:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003e6a:	89e5      	ldrh	r5, [r4, #14]
 8003e6c:	9619      	str	r6, [sp, #100]	; 0x64
 8003e6e:	f021 0102 	bic.w	r1, r1, #2
 8003e72:	4606      	mov	r6, r0
 8003e74:	69e0      	ldr	r0, [r4, #28]
 8003e76:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003e7a:	4617      	mov	r7, r2
 8003e7c:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003e80:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003e82:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003e86:	4698      	mov	r8, r3
 8003e88:	ad1a      	add	r5, sp, #104	; 0x68
 8003e8a:	2300      	movs	r3, #0
 8003e8c:	9007      	str	r0, [sp, #28]
 8003e8e:	a816      	add	r0, sp, #88	; 0x58
 8003e90:	9209      	str	r2, [sp, #36]	; 0x24
 8003e92:	9306      	str	r3, [sp, #24]
 8003e94:	9500      	str	r5, [sp, #0]
 8003e96:	9504      	str	r5, [sp, #16]
 8003e98:	9102      	str	r1, [sp, #8]
 8003e9a:	9105      	str	r1, [sp, #20]
 8003e9c:	f001 fc8a 	bl	80057b4 <__retarget_lock_init_recursive>
 8003ea0:	4643      	mov	r3, r8
 8003ea2:	463a      	mov	r2, r7
 8003ea4:	4669      	mov	r1, sp
 8003ea6:	4630      	mov	r0, r6
 8003ea8:	f7fe fa9a 	bl	80023e0 <_vfprintf_r>
 8003eac:	1e05      	subs	r5, r0, #0
 8003eae:	db07      	blt.n	8003ec0 <__sbprintf+0x64>
 8003eb0:	4630      	mov	r0, r6
 8003eb2:	4669      	mov	r1, sp
 8003eb4:	f001 f8d6 	bl	8005064 <_fflush_r>
 8003eb8:	2800      	cmp	r0, #0
 8003eba:	bf18      	it	ne
 8003ebc:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003ec0:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003ec4:	065b      	lsls	r3, r3, #25
 8003ec6:	d503      	bpl.n	8003ed0 <__sbprintf+0x74>
 8003ec8:	89a3      	ldrh	r3, [r4, #12]
 8003eca:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003ece:	81a3      	strh	r3, [r4, #12]
 8003ed0:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003ed2:	f001 fc71 	bl	80057b8 <__retarget_lock_close_recursive>
 8003ed6:	4628      	mov	r0, r5
 8003ed8:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003edc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003ee0 <__swsetup_r>:
 8003ee0:	b538      	push	{r3, r4, r5, lr}
 8003ee2:	4b31      	ldr	r3, [pc, #196]	; (8003fa8 <__swsetup_r+0xc8>)
 8003ee4:	681b      	ldr	r3, [r3, #0]
 8003ee6:	4605      	mov	r5, r0
 8003ee8:	460c      	mov	r4, r1
 8003eea:	b113      	cbz	r3, 8003ef2 <__swsetup_r+0x12>
 8003eec:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003eee:	2a00      	cmp	r2, #0
 8003ef0:	d03a      	beq.n	8003f68 <__swsetup_r+0x88>
 8003ef2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003ef6:	b293      	uxth	r3, r2
 8003ef8:	0718      	lsls	r0, r3, #28
 8003efa:	d50c      	bpl.n	8003f16 <__swsetup_r+0x36>
 8003efc:	6920      	ldr	r0, [r4, #16]
 8003efe:	b1a8      	cbz	r0, 8003f2c <__swsetup_r+0x4c>
 8003f00:	f013 0201 	ands.w	r2, r3, #1
 8003f04:	d020      	beq.n	8003f48 <__swsetup_r+0x68>
 8003f06:	6963      	ldr	r3, [r4, #20]
 8003f08:	2200      	movs	r2, #0
 8003f0a:	425b      	negs	r3, r3
 8003f0c:	61a3      	str	r3, [r4, #24]
 8003f0e:	60a2      	str	r2, [r4, #8]
 8003f10:	b300      	cbz	r0, 8003f54 <__swsetup_r+0x74>
 8003f12:	2000      	movs	r0, #0
 8003f14:	bd38      	pop	{r3, r4, r5, pc}
 8003f16:	06d9      	lsls	r1, r3, #27
 8003f18:	d53e      	bpl.n	8003f98 <__swsetup_r+0xb8>
 8003f1a:	0758      	lsls	r0, r3, #29
 8003f1c:	d428      	bmi.n	8003f70 <__swsetup_r+0x90>
 8003f1e:	6920      	ldr	r0, [r4, #16]
 8003f20:	f042 0308 	orr.w	r3, r2, #8
 8003f24:	81a3      	strh	r3, [r4, #12]
 8003f26:	b29b      	uxth	r3, r3
 8003f28:	2800      	cmp	r0, #0
 8003f2a:	d1e9      	bne.n	8003f00 <__swsetup_r+0x20>
 8003f2c:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003f30:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003f34:	d0e4      	beq.n	8003f00 <__swsetup_r+0x20>
 8003f36:	4628      	mov	r0, r5
 8003f38:	4621      	mov	r1, r4
 8003f3a:	f001 fc71 	bl	8005820 <__smakebuf_r>
 8003f3e:	89a3      	ldrh	r3, [r4, #12]
 8003f40:	6920      	ldr	r0, [r4, #16]
 8003f42:	f013 0201 	ands.w	r2, r3, #1
 8003f46:	d1de      	bne.n	8003f06 <__swsetup_r+0x26>
 8003f48:	0799      	lsls	r1, r3, #30
 8003f4a:	bf58      	it	pl
 8003f4c:	6962      	ldrpl	r2, [r4, #20]
 8003f4e:	60a2      	str	r2, [r4, #8]
 8003f50:	2800      	cmp	r0, #0
 8003f52:	d1de      	bne.n	8003f12 <__swsetup_r+0x32>
 8003f54:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003f58:	061a      	lsls	r2, r3, #24
 8003f5a:	d5db      	bpl.n	8003f14 <__swsetup_r+0x34>
 8003f5c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003f60:	81a3      	strh	r3, [r4, #12]
 8003f62:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003f66:	bd38      	pop	{r3, r4, r5, pc}
 8003f68:	4618      	mov	r0, r3
 8003f6a:	f001 f8d7 	bl	800511c <__sinit>
 8003f6e:	e7c0      	b.n	8003ef2 <__swsetup_r+0x12>
 8003f70:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8003f72:	b151      	cbz	r1, 8003f8a <__swsetup_r+0xaa>
 8003f74:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8003f78:	4299      	cmp	r1, r3
 8003f7a:	d004      	beq.n	8003f86 <__swsetup_r+0xa6>
 8003f7c:	4628      	mov	r0, r5
 8003f7e:	f001 f96f 	bl	8005260 <_free_r>
 8003f82:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003f86:	2300      	movs	r3, #0
 8003f88:	6323      	str	r3, [r4, #48]	; 0x30
 8003f8a:	2300      	movs	r3, #0
 8003f8c:	6920      	ldr	r0, [r4, #16]
 8003f8e:	6063      	str	r3, [r4, #4]
 8003f90:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8003f94:	6020      	str	r0, [r4, #0]
 8003f96:	e7c3      	b.n	8003f20 <__swsetup_r+0x40>
 8003f98:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8003f9c:	2309      	movs	r3, #9
 8003f9e:	602b      	str	r3, [r5, #0]
 8003fa0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003fa4:	81a2      	strh	r2, [r4, #12]
 8003fa6:	bd38      	pop	{r3, r4, r5, pc}
 8003fa8:	20000018 	.word	0x20000018

08003fac <register_fini>:
 8003fac:	4b02      	ldr	r3, [pc, #8]	; (8003fb8 <register_fini+0xc>)
 8003fae:	b113      	cbz	r3, 8003fb6 <register_fini+0xa>
 8003fb0:	4802      	ldr	r0, [pc, #8]	; (8003fbc <register_fini+0x10>)
 8003fb2:	f000 b805 	b.w	8003fc0 <atexit>
 8003fb6:	4770      	bx	lr
 8003fb8:	00000000 	.word	0x00000000
 8003fbc:	0800518d 	.word	0x0800518d

08003fc0 <atexit>:
 8003fc0:	2300      	movs	r3, #0
 8003fc2:	4601      	mov	r1, r0
 8003fc4:	461a      	mov	r2, r3
 8003fc6:	4618      	mov	r0, r3
 8003fc8:	f002 bd58 	b.w	8006a7c <__register_exitproc>

08003fcc <quorem>:
 8003fcc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003fd0:	6903      	ldr	r3, [r0, #16]
 8003fd2:	690f      	ldr	r7, [r1, #16]
 8003fd4:	42bb      	cmp	r3, r7
 8003fd6:	b083      	sub	sp, #12
 8003fd8:	f2c0 8086 	blt.w	80040e8 <quorem+0x11c>
 8003fdc:	3f01      	subs	r7, #1
 8003fde:	f101 0914 	add.w	r9, r1, #20
 8003fe2:	f100 0a14 	add.w	sl, r0, #20
 8003fe6:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8003fea:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8003fee:	00bc      	lsls	r4, r7, #2
 8003ff0:	3201      	adds	r2, #1
 8003ff2:	fbb3 f8f2 	udiv	r8, r3, r2
 8003ff6:	eb0a 0304 	add.w	r3, sl, r4
 8003ffa:	9400      	str	r4, [sp, #0]
 8003ffc:	eb09 0b04 	add.w	fp, r9, r4
 8004000:	9301      	str	r3, [sp, #4]
 8004002:	f1b8 0f00 	cmp.w	r8, #0
 8004006:	d038      	beq.n	800407a <quorem+0xae>
 8004008:	2500      	movs	r5, #0
 800400a:	462e      	mov	r6, r5
 800400c:	46ce      	mov	lr, r9
 800400e:	46d4      	mov	ip, sl
 8004010:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004014:	f8dc 3000 	ldr.w	r3, [ip]
 8004018:	b2a2      	uxth	r2, r4
 800401a:	fb08 5502 	mla	r5, r8, r2, r5
 800401e:	0c22      	lsrs	r2, r4, #16
 8004020:	0c2c      	lsrs	r4, r5, #16
 8004022:	fb08 4202 	mla	r2, r8, r2, r4
 8004026:	b2ad      	uxth	r5, r5
 8004028:	1b75      	subs	r5, r6, r5
 800402a:	b296      	uxth	r6, r2
 800402c:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004030:	fa15 f383 	uxtah	r3, r5, r3
 8004034:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004038:	b29b      	uxth	r3, r3
 800403a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 800403e:	45f3      	cmp	fp, lr
 8004040:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8004044:	f84c 3b04 	str.w	r3, [ip], #4
 8004048:	ea4f 4626 	mov.w	r6, r6, asr #16
 800404c:	d2e0      	bcs.n	8004010 <quorem+0x44>
 800404e:	9b00      	ldr	r3, [sp, #0]
 8004050:	f85a 3003 	ldr.w	r3, [sl, r3]
 8004054:	b98b      	cbnz	r3, 800407a <quorem+0xae>
 8004056:	9a01      	ldr	r2, [sp, #4]
 8004058:	1f13      	subs	r3, r2, #4
 800405a:	459a      	cmp	sl, r3
 800405c:	d20c      	bcs.n	8004078 <quorem+0xac>
 800405e:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8004062:	b94b      	cbnz	r3, 8004078 <quorem+0xac>
 8004064:	f1a2 0308 	sub.w	r3, r2, #8
 8004068:	e002      	b.n	8004070 <quorem+0xa4>
 800406a:	681a      	ldr	r2, [r3, #0]
 800406c:	3b04      	subs	r3, #4
 800406e:	b91a      	cbnz	r2, 8004078 <quorem+0xac>
 8004070:	459a      	cmp	sl, r3
 8004072:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004076:	d3f8      	bcc.n	800406a <quorem+0x9e>
 8004078:	6107      	str	r7, [r0, #16]
 800407a:	4604      	mov	r4, r0
 800407c:	f002 f944 	bl	8006308 <__mcmp>
 8004080:	2800      	cmp	r0, #0
 8004082:	db2d      	blt.n	80040e0 <quorem+0x114>
 8004084:	f108 0801 	add.w	r8, r8, #1
 8004088:	4655      	mov	r5, sl
 800408a:	2300      	movs	r3, #0
 800408c:	f859 1b04 	ldr.w	r1, [r9], #4
 8004090:	6828      	ldr	r0, [r5, #0]
 8004092:	b28a      	uxth	r2, r1
 8004094:	1a9a      	subs	r2, r3, r2
 8004096:	0c0b      	lsrs	r3, r1, #16
 8004098:	fa12 f280 	uxtah	r2, r2, r0
 800409c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80040a0:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80040a4:	b292      	uxth	r2, r2
 80040a6:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80040aa:	45cb      	cmp	fp, r9
 80040ac:	f845 2b04 	str.w	r2, [r5], #4
 80040b0:	ea4f 4323 	mov.w	r3, r3, asr #16
 80040b4:	d2ea      	bcs.n	800408c <quorem+0xc0>
 80040b6:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80040ba:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80040be:	b97a      	cbnz	r2, 80040e0 <quorem+0x114>
 80040c0:	1f1a      	subs	r2, r3, #4
 80040c2:	4592      	cmp	sl, r2
 80040c4:	d20b      	bcs.n	80040de <quorem+0x112>
 80040c6:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80040ca:	b942      	cbnz	r2, 80040de <quorem+0x112>
 80040cc:	3b08      	subs	r3, #8
 80040ce:	e002      	b.n	80040d6 <quorem+0x10a>
 80040d0:	681a      	ldr	r2, [r3, #0]
 80040d2:	3b04      	subs	r3, #4
 80040d4:	b91a      	cbnz	r2, 80040de <quorem+0x112>
 80040d6:	459a      	cmp	sl, r3
 80040d8:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80040dc:	d3f8      	bcc.n	80040d0 <quorem+0x104>
 80040de:	6127      	str	r7, [r4, #16]
 80040e0:	4640      	mov	r0, r8
 80040e2:	b003      	add	sp, #12
 80040e4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80040e8:	2000      	movs	r0, #0
 80040ea:	b003      	add	sp, #12
 80040ec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

080040f0 <_dtoa_r>:
 80040f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80040f4:	ec55 4b10 	vmov	r4, r5, d0
 80040f8:	b09b      	sub	sp, #108	; 0x6c
 80040fa:	6c06      	ldr	r6, [r0, #64]	; 0x40
 80040fc:	9102      	str	r1, [sp, #8]
 80040fe:	4681      	mov	r9, r0
 8004100:	9207      	str	r2, [sp, #28]
 8004102:	9305      	str	r3, [sp, #20]
 8004104:	e9cd 4500 	strd	r4, r5, [sp]
 8004108:	b156      	cbz	r6, 8004120 <_dtoa_r+0x30>
 800410a:	6c42      	ldr	r2, [r0, #68]	; 0x44
 800410c:	6072      	str	r2, [r6, #4]
 800410e:	2301      	movs	r3, #1
 8004110:	4093      	lsls	r3, r2
 8004112:	60b3      	str	r3, [r6, #8]
 8004114:	4631      	mov	r1, r6
 8004116:	f001 ff07 	bl	8005f28 <_Bfree>
 800411a:	2300      	movs	r3, #0
 800411c:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004120:	f1b5 0800 	subs.w	r8, r5, #0
 8004124:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004126:	bfb4      	ite	lt
 8004128:	2301      	movlt	r3, #1
 800412a:	2300      	movge	r3, #0
 800412c:	6013      	str	r3, [r2, #0]
 800412e:	4b76      	ldr	r3, [pc, #472]	; (8004308 <_dtoa_r+0x218>)
 8004130:	bfbc      	itt	lt
 8004132:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8004136:	f8cd 8004 	strlt.w	r8, [sp, #4]
 800413a:	ea33 0308 	bics.w	r3, r3, r8
 800413e:	f000 80a6 	beq.w	800428e <_dtoa_r+0x19e>
 8004142:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004146:	2200      	movs	r2, #0
 8004148:	2300      	movs	r3, #0
 800414a:	4630      	mov	r0, r6
 800414c:	4639      	mov	r1, r7
 800414e:	f7fc ff5b 	bl	8001008 <__aeabi_dcmpeq>
 8004152:	4605      	mov	r5, r0
 8004154:	b178      	cbz	r0, 8004176 <_dtoa_r+0x86>
 8004156:	9a05      	ldr	r2, [sp, #20]
 8004158:	2301      	movs	r3, #1
 800415a:	6013      	str	r3, [r2, #0]
 800415c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800415e:	2b00      	cmp	r3, #0
 8004160:	f000 80c0 	beq.w	80042e4 <_dtoa_r+0x1f4>
 8004164:	4b69      	ldr	r3, [pc, #420]	; (800430c <_dtoa_r+0x21c>)
 8004166:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004168:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 800416c:	6013      	str	r3, [r2, #0]
 800416e:	4658      	mov	r0, fp
 8004170:	b01b      	add	sp, #108	; 0x6c
 8004172:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004176:	aa18      	add	r2, sp, #96	; 0x60
 8004178:	a919      	add	r1, sp, #100	; 0x64
 800417a:	ec47 6b10 	vmov	d0, r6, r7
 800417e:	4648      	mov	r0, r9
 8004180:	f002 f954 	bl	800642c <__d2b>
 8004184:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004188:	4682      	mov	sl, r0
 800418a:	f040 80a0 	bne.w	80042ce <_dtoa_r+0x1de>
 800418e:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004192:	442c      	add	r4, r5
 8004194:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004198:	2b20      	cmp	r3, #32
 800419a:	f340 842c 	ble.w	80049f6 <_dtoa_r+0x906>
 800419e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80041a2:	fa08 f803 	lsl.w	r8, r8, r3
 80041a6:	9b00      	ldr	r3, [sp, #0]
 80041a8:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80041ac:	fa23 f000 	lsr.w	r0, r3, r0
 80041b0:	ea48 0000 	orr.w	r0, r8, r0
 80041b4:	f7fc fc46 	bl	8000a44 <__aeabi_ui2d>
 80041b8:	2301      	movs	r3, #1
 80041ba:	4606      	mov	r6, r0
 80041bc:	3c01      	subs	r4, #1
 80041be:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80041c2:	930f      	str	r3, [sp, #60]	; 0x3c
 80041c4:	4630      	mov	r0, r6
 80041c6:	4639      	mov	r1, r7
 80041c8:	2200      	movs	r2, #0
 80041ca:	4b51      	ldr	r3, [pc, #324]	; (8004310 <_dtoa_r+0x220>)
 80041cc:	f7fc fafc 	bl	80007c8 <__aeabi_dsub>
 80041d0:	a347      	add	r3, pc, #284	; (adr r3, 80042f0 <_dtoa_r+0x200>)
 80041d2:	e9d3 2300 	ldrd	r2, r3, [r3]
 80041d6:	f7fc fcaf 	bl	8000b38 <__aeabi_dmul>
 80041da:	a347      	add	r3, pc, #284	; (adr r3, 80042f8 <_dtoa_r+0x208>)
 80041dc:	e9d3 2300 	ldrd	r2, r3, [r3]
 80041e0:	f7fc faf4 	bl	80007cc <__adddf3>
 80041e4:	4606      	mov	r6, r0
 80041e6:	4620      	mov	r0, r4
 80041e8:	460f      	mov	r7, r1
 80041ea:	f7fc fc3b 	bl	8000a64 <__aeabi_i2d>
 80041ee:	a344      	add	r3, pc, #272	; (adr r3, 8004300 <_dtoa_r+0x210>)
 80041f0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80041f4:	f7fc fca0 	bl	8000b38 <__aeabi_dmul>
 80041f8:	4602      	mov	r2, r0
 80041fa:	460b      	mov	r3, r1
 80041fc:	4630      	mov	r0, r6
 80041fe:	4639      	mov	r1, r7
 8004200:	f7fc fae4 	bl	80007cc <__adddf3>
 8004204:	4606      	mov	r6, r0
 8004206:	460f      	mov	r7, r1
 8004208:	f7fc ff46 	bl	8001098 <__aeabi_d2iz>
 800420c:	2200      	movs	r2, #0
 800420e:	9006      	str	r0, [sp, #24]
 8004210:	2300      	movs	r3, #0
 8004212:	4630      	mov	r0, r6
 8004214:	4639      	mov	r1, r7
 8004216:	f7fc ff01 	bl	800101c <__aeabi_dcmplt>
 800421a:	2800      	cmp	r0, #0
 800421c:	f040 8273 	bne.w	8004706 <_dtoa_r+0x616>
 8004220:	9e06      	ldr	r6, [sp, #24]
 8004222:	2e16      	cmp	r6, #22
 8004224:	f200 825d 	bhi.w	80046e2 <_dtoa_r+0x5f2>
 8004228:	4b3a      	ldr	r3, [pc, #232]	; (8004314 <_dtoa_r+0x224>)
 800422a:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 800422e:	e9d3 0100 	ldrd	r0, r1, [r3]
 8004232:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004236:	f7fc ff0f 	bl	8001058 <__aeabi_dcmpgt>
 800423a:	2800      	cmp	r0, #0
 800423c:	f000 83d7 	beq.w	80049ee <_dtoa_r+0x8fe>
 8004240:	1e73      	subs	r3, r6, #1
 8004242:	9306      	str	r3, [sp, #24]
 8004244:	2300      	movs	r3, #0
 8004246:	930d      	str	r3, [sp, #52]	; 0x34
 8004248:	1b2c      	subs	r4, r5, r4
 800424a:	f1b4 0801 	subs.w	r8, r4, #1
 800424e:	f100 8254 	bmi.w	80046fa <_dtoa_r+0x60a>
 8004252:	2300      	movs	r3, #0
 8004254:	9308      	str	r3, [sp, #32]
 8004256:	9b06      	ldr	r3, [sp, #24]
 8004258:	2b00      	cmp	r3, #0
 800425a:	f2c0 8245 	blt.w	80046e8 <_dtoa_r+0x5f8>
 800425e:	4498      	add	r8, r3
 8004260:	930c      	str	r3, [sp, #48]	; 0x30
 8004262:	2300      	movs	r3, #0
 8004264:	930b      	str	r3, [sp, #44]	; 0x2c
 8004266:	9b02      	ldr	r3, [sp, #8]
 8004268:	2b09      	cmp	r3, #9
 800426a:	d85b      	bhi.n	8004324 <_dtoa_r+0x234>
 800426c:	2b05      	cmp	r3, #5
 800426e:	f340 83c0 	ble.w	80049f2 <_dtoa_r+0x902>
 8004272:	3b04      	subs	r3, #4
 8004274:	9302      	str	r3, [sp, #8]
 8004276:	2500      	movs	r5, #0
 8004278:	9b02      	ldr	r3, [sp, #8]
 800427a:	3b02      	subs	r3, #2
 800427c:	2b03      	cmp	r3, #3
 800427e:	f200 8498 	bhi.w	8004bb2 <_dtoa_r+0xac2>
 8004282:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004286:	03df      	.short	0x03df
 8004288:	03e803bf 	.word	0x03e803bf
 800428c:	04f5      	.short	0x04f5
 800428e:	9a05      	ldr	r2, [sp, #20]
 8004290:	f242 730f 	movw	r3, #9999	; 0x270f
 8004294:	6013      	str	r3, [r2, #0]
 8004296:	9b00      	ldr	r3, [sp, #0]
 8004298:	b983      	cbnz	r3, 80042bc <_dtoa_r+0x1cc>
 800429a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 800429e:	b96b      	cbnz	r3, 80042bc <_dtoa_r+0x1cc>
 80042a0:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80042a2:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004318 <_dtoa_r+0x228>
 80042a6:	2b00      	cmp	r3, #0
 80042a8:	f43f af61 	beq.w	800416e <_dtoa_r+0x7e>
 80042ac:	f10b 0308 	add.w	r3, fp, #8
 80042b0:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80042b2:	4658      	mov	r0, fp
 80042b4:	6013      	str	r3, [r2, #0]
 80042b6:	b01b      	add	sp, #108	; 0x6c
 80042b8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80042bc:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80042be:	f8df b05c 	ldr.w	fp, [pc, #92]	; 800431c <_dtoa_r+0x22c>
 80042c2:	2b00      	cmp	r3, #0
 80042c4:	f43f af53 	beq.w	800416e <_dtoa_r+0x7e>
 80042c8:	f10b 0303 	add.w	r3, fp, #3
 80042cc:	e7f0      	b.n	80042b0 <_dtoa_r+0x1c0>
 80042ce:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80042d2:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80042d6:	950f      	str	r5, [sp, #60]	; 0x3c
 80042d8:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 80042dc:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 80042e0:	9d18      	ldr	r5, [sp, #96]	; 0x60
 80042e2:	e76f      	b.n	80041c4 <_dtoa_r+0xd4>
 80042e4:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004320 <_dtoa_r+0x230>
 80042e8:	4658      	mov	r0, fp
 80042ea:	b01b      	add	sp, #108	; 0x6c
 80042ec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80042f0:	636f4361 	.word	0x636f4361
 80042f4:	3fd287a7 	.word	0x3fd287a7
 80042f8:	8b60c8b3 	.word	0x8b60c8b3
 80042fc:	3fc68a28 	.word	0x3fc68a28
 8004300:	509f79fb 	.word	0x509f79fb
 8004304:	3fd34413 	.word	0x3fd34413
 8004308:	7ff00000 	.word	0x7ff00000
 800430c:	0800711d 	.word	0x0800711d
 8004310:	3ff80000 	.word	0x3ff80000
 8004314:	08007178 	.word	0x08007178
 8004318:	08007140 	.word	0x08007140
 800431c:	0800714c 	.word	0x0800714c
 8004320:	0800711c 	.word	0x0800711c
 8004324:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004328:	2501      	movs	r5, #1
 800432a:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 800432e:	2300      	movs	r3, #0
 8004330:	9302      	str	r3, [sp, #8]
 8004332:	9307      	str	r3, [sp, #28]
 8004334:	2100      	movs	r1, #0
 8004336:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800433a:	940e      	str	r4, [sp, #56]	; 0x38
 800433c:	4648      	mov	r0, r9
 800433e:	f001 fdcd 	bl	8005edc <_Balloc>
 8004342:	2c0e      	cmp	r4, #14
 8004344:	4683      	mov	fp, r0
 8004346:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800434a:	f200 80fb 	bhi.w	8004544 <_dtoa_r+0x454>
 800434e:	2d00      	cmp	r5, #0
 8004350:	f000 80f8 	beq.w	8004544 <_dtoa_r+0x454>
 8004354:	ed9d 7b00 	vldr	d7, [sp]
 8004358:	9906      	ldr	r1, [sp, #24]
 800435a:	2900      	cmp	r1, #0
 800435c:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004360:	f340 83e5 	ble.w	8004b2e <_dtoa_r+0xa3e>
 8004364:	4b9d      	ldr	r3, [pc, #628]	; (80045dc <_dtoa_r+0x4ec>)
 8004366:	f001 020f 	and.w	r2, r1, #15
 800436a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800436e:	ed93 7b00 	vldr	d7, [r3]
 8004372:	110c      	asrs	r4, r1, #4
 8004374:	06e2      	lsls	r2, r4, #27
 8004376:	ed8d 7b00 	vstr	d7, [sp]
 800437a:	f140 849e 	bpl.w	8004cba <_dtoa_r+0xbca>
 800437e:	4b98      	ldr	r3, [pc, #608]	; (80045e0 <_dtoa_r+0x4f0>)
 8004380:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004384:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004388:	f7fc fd00 	bl	8000d8c <__aeabi_ddiv>
 800438c:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004390:	f004 040f 	and.w	r4, r4, #15
 8004394:	2603      	movs	r6, #3
 8004396:	b17c      	cbz	r4, 80043b8 <_dtoa_r+0x2c8>
 8004398:	e9dd 0100 	ldrd	r0, r1, [sp]
 800439c:	4d90      	ldr	r5, [pc, #576]	; (80045e0 <_dtoa_r+0x4f0>)
 800439e:	07e3      	lsls	r3, r4, #31
 80043a0:	d504      	bpl.n	80043ac <_dtoa_r+0x2bc>
 80043a2:	e9d5 2300 	ldrd	r2, r3, [r5]
 80043a6:	f7fc fbc7 	bl	8000b38 <__aeabi_dmul>
 80043aa:	3601      	adds	r6, #1
 80043ac:	1064      	asrs	r4, r4, #1
 80043ae:	f105 0508 	add.w	r5, r5, #8
 80043b2:	d1f4      	bne.n	800439e <_dtoa_r+0x2ae>
 80043b4:	e9cd 0100 	strd	r0, r1, [sp]
 80043b8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80043bc:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80043c0:	f7fc fce4 	bl	8000d8c <__aeabi_ddiv>
 80043c4:	e9cd 0100 	strd	r0, r1, [sp]
 80043c8:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80043ca:	b143      	cbz	r3, 80043de <_dtoa_r+0x2ee>
 80043cc:	2200      	movs	r2, #0
 80043ce:	4b85      	ldr	r3, [pc, #532]	; (80045e4 <_dtoa_r+0x4f4>)
 80043d0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80043d4:	f7fc fe22 	bl	800101c <__aeabi_dcmplt>
 80043d8:	2800      	cmp	r0, #0
 80043da:	f040 84ff 	bne.w	8004ddc <_dtoa_r+0xcec>
 80043de:	4630      	mov	r0, r6
 80043e0:	f7fc fb40 	bl	8000a64 <__aeabi_i2d>
 80043e4:	e9dd 2300 	ldrd	r2, r3, [sp]
 80043e8:	f7fc fba6 	bl	8000b38 <__aeabi_dmul>
 80043ec:	4b7e      	ldr	r3, [pc, #504]	; (80045e8 <_dtoa_r+0x4f8>)
 80043ee:	2200      	movs	r2, #0
 80043f0:	f7fc f9ec 	bl	80007cc <__adddf3>
 80043f4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80043f6:	4606      	mov	r6, r0
 80043f8:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80043fc:	2b00      	cmp	r3, #0
 80043fe:	f000 841c 	beq.w	8004c3a <_dtoa_r+0xb4a>
 8004402:	9b06      	ldr	r3, [sp, #24]
 8004404:	9316      	str	r3, [sp, #88]	; 0x58
 8004406:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004408:	9312      	str	r3, [sp, #72]	; 0x48
 800440a:	e9dd 0100 	ldrd	r0, r1, [sp]
 800440e:	f7fc fe43 	bl	8001098 <__aeabi_d2iz>
 8004412:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004414:	4b71      	ldr	r3, [pc, #452]	; (80045dc <_dtoa_r+0x4ec>)
 8004416:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800441a:	ed13 7b02 	vldr	d7, [r3, #-8]
 800441e:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004422:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004426:	f7fc fb1d 	bl	8000a64 <__aeabi_i2d>
 800442a:	460b      	mov	r3, r1
 800442c:	4602      	mov	r2, r0
 800442e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004432:	e9cd 6700 	strd	r6, r7, [sp]
 8004436:	f7fc f9c7 	bl	80007c8 <__aeabi_dsub>
 800443a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800443c:	b2ed      	uxtb	r5, r5
 800443e:	4606      	mov	r6, r0
 8004440:	460f      	mov	r7, r1
 8004442:	f10b 0401 	add.w	r4, fp, #1
 8004446:	2b00      	cmp	r3, #0
 8004448:	f000 8458 	beq.w	8004cfc <_dtoa_r+0xc0c>
 800444c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004450:	2000      	movs	r0, #0
 8004452:	4966      	ldr	r1, [pc, #408]	; (80045ec <_dtoa_r+0x4fc>)
 8004454:	f7fc fc9a 	bl	8000d8c <__aeabi_ddiv>
 8004458:	e9dd 2300 	ldrd	r2, r3, [sp]
 800445c:	f7fc f9b4 	bl	80007c8 <__aeabi_dsub>
 8004460:	f88b 5000 	strb.w	r5, [fp]
 8004464:	4632      	mov	r2, r6
 8004466:	463b      	mov	r3, r7
 8004468:	e9cd 0100 	strd	r0, r1, [sp]
 800446c:	f7fc fdf4 	bl	8001058 <__aeabi_dcmpgt>
 8004470:	2800      	cmp	r0, #0
 8004472:	f040 8502 	bne.w	8004e7a <_dtoa_r+0xd8a>
 8004476:	4632      	mov	r2, r6
 8004478:	463b      	mov	r3, r7
 800447a:	2000      	movs	r0, #0
 800447c:	4959      	ldr	r1, [pc, #356]	; (80045e4 <_dtoa_r+0x4f4>)
 800447e:	f7fc f9a3 	bl	80007c8 <__aeabi_dsub>
 8004482:	4602      	mov	r2, r0
 8004484:	460b      	mov	r3, r1
 8004486:	e9dd 0100 	ldrd	r0, r1, [sp]
 800448a:	f7fc fde5 	bl	8001058 <__aeabi_dcmpgt>
 800448e:	2800      	cmp	r0, #0
 8004490:	f040 84fb 	bne.w	8004e8a <_dtoa_r+0xd9a>
 8004494:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004496:	2a01      	cmp	r2, #1
 8004498:	d050      	beq.n	800453c <_dtoa_r+0x44c>
 800449a:	445a      	add	r2, fp
 800449c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 80044a0:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 80044a4:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 80044a8:	4692      	mov	sl, r2
 80044aa:	46cb      	mov	fp, r9
 80044ac:	e9dd 8900 	ldrd	r8, r9, [sp]
 80044b0:	e00c      	b.n	80044cc <_dtoa_r+0x3dc>
 80044b2:	2000      	movs	r0, #0
 80044b4:	494b      	ldr	r1, [pc, #300]	; (80045e4 <_dtoa_r+0x4f4>)
 80044b6:	f7fc f987 	bl	80007c8 <__aeabi_dsub>
 80044ba:	4642      	mov	r2, r8
 80044bc:	464b      	mov	r3, r9
 80044be:	f7fc fdad 	bl	800101c <__aeabi_dcmplt>
 80044c2:	2800      	cmp	r0, #0
 80044c4:	f040 84dc 	bne.w	8004e80 <_dtoa_r+0xd90>
 80044c8:	4554      	cmp	r4, sl
 80044ca:	d030      	beq.n	800452e <_dtoa_r+0x43e>
 80044cc:	4640      	mov	r0, r8
 80044ce:	4649      	mov	r1, r9
 80044d0:	2200      	movs	r2, #0
 80044d2:	4b47      	ldr	r3, [pc, #284]	; (80045f0 <_dtoa_r+0x500>)
 80044d4:	f7fc fb30 	bl	8000b38 <__aeabi_dmul>
 80044d8:	2200      	movs	r2, #0
 80044da:	4b45      	ldr	r3, [pc, #276]	; (80045f0 <_dtoa_r+0x500>)
 80044dc:	4680      	mov	r8, r0
 80044de:	4689      	mov	r9, r1
 80044e0:	4630      	mov	r0, r6
 80044e2:	4639      	mov	r1, r7
 80044e4:	f7fc fb28 	bl	8000b38 <__aeabi_dmul>
 80044e8:	460f      	mov	r7, r1
 80044ea:	4606      	mov	r6, r0
 80044ec:	f7fc fdd4 	bl	8001098 <__aeabi_d2iz>
 80044f0:	4605      	mov	r5, r0
 80044f2:	f7fc fab7 	bl	8000a64 <__aeabi_i2d>
 80044f6:	4602      	mov	r2, r0
 80044f8:	460b      	mov	r3, r1
 80044fa:	4630      	mov	r0, r6
 80044fc:	4639      	mov	r1, r7
 80044fe:	f7fc f963 	bl	80007c8 <__aeabi_dsub>
 8004502:	3530      	adds	r5, #48	; 0x30
 8004504:	b2ed      	uxtb	r5, r5
 8004506:	4642      	mov	r2, r8
 8004508:	464b      	mov	r3, r9
 800450a:	f804 5b01 	strb.w	r5, [r4], #1
 800450e:	4606      	mov	r6, r0
 8004510:	460f      	mov	r7, r1
 8004512:	f7fc fd83 	bl	800101c <__aeabi_dcmplt>
 8004516:	4632      	mov	r2, r6
 8004518:	463b      	mov	r3, r7
 800451a:	2800      	cmp	r0, #0
 800451c:	d0c9      	beq.n	80044b2 <_dtoa_r+0x3c2>
 800451e:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004520:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004524:	9306      	str	r3, [sp, #24]
 8004526:	46d9      	mov	r9, fp
 8004528:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800452c:	e236      	b.n	800499c <_dtoa_r+0x8ac>
 800452e:	46d9      	mov	r9, fp
 8004530:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004534:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004538:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800453c:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004540:	e9cd 3400 	strd	r3, r4, [sp]
 8004544:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004546:	2b00      	cmp	r3, #0
 8004548:	f2c0 80ae 	blt.w	80046a8 <_dtoa_r+0x5b8>
 800454c:	9a06      	ldr	r2, [sp, #24]
 800454e:	2a0e      	cmp	r2, #14
 8004550:	f300 80aa 	bgt.w	80046a8 <_dtoa_r+0x5b8>
 8004554:	4b21      	ldr	r3, [pc, #132]	; (80045dc <_dtoa_r+0x4ec>)
 8004556:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800455a:	ed93 7b00 	vldr	d7, [r3]
 800455e:	9b07      	ldr	r3, [sp, #28]
 8004560:	2b00      	cmp	r3, #0
 8004562:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004566:	f2c0 82be 	blt.w	8004ae6 <_dtoa_r+0x9f6>
 800456a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800456e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004572:	4630      	mov	r0, r6
 8004574:	4639      	mov	r1, r7
 8004576:	f7fc fc09 	bl	8000d8c <__aeabi_ddiv>
 800457a:	f7fc fd8d 	bl	8001098 <__aeabi_d2iz>
 800457e:	4605      	mov	r5, r0
 8004580:	f7fc fa70 	bl	8000a64 <__aeabi_i2d>
 8004584:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004588:	f7fc fad6 	bl	8000b38 <__aeabi_dmul>
 800458c:	460b      	mov	r3, r1
 800458e:	4602      	mov	r2, r0
 8004590:	4639      	mov	r1, r7
 8004592:	4630      	mov	r0, r6
 8004594:	f7fc f918 	bl	80007c8 <__aeabi_dsub>
 8004598:	f105 0330 	add.w	r3, r5, #48	; 0x30
 800459c:	f88b 3000 	strb.w	r3, [fp]
 80045a0:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80045a2:	2b01      	cmp	r3, #1
 80045a4:	4606      	mov	r6, r0
 80045a6:	460f      	mov	r7, r1
 80045a8:	f10b 0401 	add.w	r4, fp, #1
 80045ac:	d053      	beq.n	8004656 <_dtoa_r+0x566>
 80045ae:	2200      	movs	r2, #0
 80045b0:	4b0f      	ldr	r3, [pc, #60]	; (80045f0 <_dtoa_r+0x500>)
 80045b2:	f7fc fac1 	bl	8000b38 <__aeabi_dmul>
 80045b6:	2200      	movs	r2, #0
 80045b8:	2300      	movs	r3, #0
 80045ba:	4606      	mov	r6, r0
 80045bc:	460f      	mov	r7, r1
 80045be:	f7fc fd23 	bl	8001008 <__aeabi_dcmpeq>
 80045c2:	2800      	cmp	r0, #0
 80045c4:	f040 81ea 	bne.w	800499c <_dtoa_r+0x8ac>
 80045c8:	f8cd a000 	str.w	sl, [sp]
 80045cc:	f8cd 901c 	str.w	r9, [sp, #28]
 80045d0:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80045d4:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 80045d8:	e017      	b.n	800460a <_dtoa_r+0x51a>
 80045da:	bf00      	nop
 80045dc:	08007178 	.word	0x08007178
 80045e0:	08007150 	.word	0x08007150
 80045e4:	3ff00000 	.word	0x3ff00000
 80045e8:	401c0000 	.word	0x401c0000
 80045ec:	3fe00000 	.word	0x3fe00000
 80045f0:	40240000 	.word	0x40240000
 80045f4:	f7fc faa0 	bl	8000b38 <__aeabi_dmul>
 80045f8:	2200      	movs	r2, #0
 80045fa:	2300      	movs	r3, #0
 80045fc:	4606      	mov	r6, r0
 80045fe:	460f      	mov	r7, r1
 8004600:	f7fc fd02 	bl	8001008 <__aeabi_dcmpeq>
 8004604:	2800      	cmp	r0, #0
 8004606:	f040 833d 	bne.w	8004c84 <_dtoa_r+0xb94>
 800460a:	464a      	mov	r2, r9
 800460c:	4653      	mov	r3, sl
 800460e:	4630      	mov	r0, r6
 8004610:	4639      	mov	r1, r7
 8004612:	f7fc fbbb 	bl	8000d8c <__aeabi_ddiv>
 8004616:	f7fc fd3f 	bl	8001098 <__aeabi_d2iz>
 800461a:	4605      	mov	r5, r0
 800461c:	f7fc fa22 	bl	8000a64 <__aeabi_i2d>
 8004620:	464a      	mov	r2, r9
 8004622:	4653      	mov	r3, sl
 8004624:	f7fc fa88 	bl	8000b38 <__aeabi_dmul>
 8004628:	4602      	mov	r2, r0
 800462a:	460b      	mov	r3, r1
 800462c:	4630      	mov	r0, r6
 800462e:	4639      	mov	r1, r7
 8004630:	f7fc f8ca 	bl	80007c8 <__aeabi_dsub>
 8004634:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004638:	f804 cb01 	strb.w	ip, [r4], #1
 800463c:	eba4 0c0b 	sub.w	ip, r4, fp
 8004640:	45e0      	cmp	r8, ip
 8004642:	4606      	mov	r6, r0
 8004644:	460f      	mov	r7, r1
 8004646:	f04f 0200 	mov.w	r2, #0
 800464a:	4bc1      	ldr	r3, [pc, #772]	; (8004950 <_dtoa_r+0x860>)
 800464c:	d1d2      	bne.n	80045f4 <_dtoa_r+0x504>
 800464e:	f8dd a000 	ldr.w	sl, [sp]
 8004652:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004656:	4632      	mov	r2, r6
 8004658:	463b      	mov	r3, r7
 800465a:	4630      	mov	r0, r6
 800465c:	4639      	mov	r1, r7
 800465e:	f7fc f8b5 	bl	80007cc <__adddf3>
 8004662:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004666:	4606      	mov	r6, r0
 8004668:	460f      	mov	r7, r1
 800466a:	f7fc fcf5 	bl	8001058 <__aeabi_dcmpgt>
 800466e:	b958      	cbnz	r0, 8004688 <_dtoa_r+0x598>
 8004670:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004674:	4630      	mov	r0, r6
 8004676:	4639      	mov	r1, r7
 8004678:	f7fc fcc6 	bl	8001008 <__aeabi_dcmpeq>
 800467c:	2800      	cmp	r0, #0
 800467e:	f000 818d 	beq.w	800499c <_dtoa_r+0x8ac>
 8004682:	07e9      	lsls	r1, r5, #31
 8004684:	f140 818a 	bpl.w	800499c <_dtoa_r+0x8ac>
 8004688:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800468c:	e005      	b.n	800469a <_dtoa_r+0x5aa>
 800468e:	459b      	cmp	fp, r3
 8004690:	f000 8373 	beq.w	8004d7a <_dtoa_r+0xc8a>
 8004694:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004698:	461c      	mov	r4, r3
 800469a:	2d39      	cmp	r5, #57	; 0x39
 800469c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80046a0:	d0f5      	beq.n	800468e <_dtoa_r+0x59e>
 80046a2:	3501      	adds	r5, #1
 80046a4:	701d      	strb	r5, [r3, #0]
 80046a6:	e179      	b.n	800499c <_dtoa_r+0x8ac>
 80046a8:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80046aa:	2a00      	cmp	r2, #0
 80046ac:	d03b      	beq.n	8004726 <_dtoa_r+0x636>
 80046ae:	9a02      	ldr	r2, [sp, #8]
 80046b0:	2a01      	cmp	r2, #1
 80046b2:	f340 820b 	ble.w	8004acc <_dtoa_r+0x9dc>
 80046b6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80046b8:	1e5f      	subs	r7, r3, #1
 80046ba:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80046bc:	42bb      	cmp	r3, r7
 80046be:	f2c0 82e6 	blt.w	8004c8e <_dtoa_r+0xb9e>
 80046c2:	1bdf      	subs	r7, r3, r7
 80046c4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80046c6:	2b00      	cmp	r3, #0
 80046c8:	f2c0 830b 	blt.w	8004ce2 <_dtoa_r+0xbf2>
 80046cc:	9a08      	ldr	r2, [sp, #32]
 80046ce:	4614      	mov	r4, r2
 80046d0:	441a      	add	r2, r3
 80046d2:	4498      	add	r8, r3
 80046d4:	9208      	str	r2, [sp, #32]
 80046d6:	2101      	movs	r1, #1
 80046d8:	4648      	mov	r0, r9
 80046da:	f001 fcbf 	bl	800605c <__i2b>
 80046de:	4605      	mov	r5, r0
 80046e0:	e024      	b.n	800472c <_dtoa_r+0x63c>
 80046e2:	2301      	movs	r3, #1
 80046e4:	930d      	str	r3, [sp, #52]	; 0x34
 80046e6:	e5af      	b.n	8004248 <_dtoa_r+0x158>
 80046e8:	9a08      	ldr	r2, [sp, #32]
 80046ea:	9b06      	ldr	r3, [sp, #24]
 80046ec:	1ad2      	subs	r2, r2, r3
 80046ee:	425b      	negs	r3, r3
 80046f0:	930b      	str	r3, [sp, #44]	; 0x2c
 80046f2:	2300      	movs	r3, #0
 80046f4:	9208      	str	r2, [sp, #32]
 80046f6:	930c      	str	r3, [sp, #48]	; 0x30
 80046f8:	e5b5      	b.n	8004266 <_dtoa_r+0x176>
 80046fa:	f1c4 0301 	rsb	r3, r4, #1
 80046fe:	9308      	str	r3, [sp, #32]
 8004700:	f04f 0800 	mov.w	r8, #0
 8004704:	e5a7      	b.n	8004256 <_dtoa_r+0x166>
 8004706:	f8dd 8018 	ldr.w	r8, [sp, #24]
 800470a:	4640      	mov	r0, r8
 800470c:	f7fc f9aa 	bl	8000a64 <__aeabi_i2d>
 8004710:	4632      	mov	r2, r6
 8004712:	463b      	mov	r3, r7
 8004714:	f7fc fc78 	bl	8001008 <__aeabi_dcmpeq>
 8004718:	2800      	cmp	r0, #0
 800471a:	f47f ad81 	bne.w	8004220 <_dtoa_r+0x130>
 800471e:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004722:	9306      	str	r3, [sp, #24]
 8004724:	e57c      	b.n	8004220 <_dtoa_r+0x130>
 8004726:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004728:	9c08      	ldr	r4, [sp, #32]
 800472a:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 800472c:	2c00      	cmp	r4, #0
 800472e:	dd0c      	ble.n	800474a <_dtoa_r+0x65a>
 8004730:	f1b8 0f00 	cmp.w	r8, #0
 8004734:	dd09      	ble.n	800474a <_dtoa_r+0x65a>
 8004736:	4544      	cmp	r4, r8
 8004738:	9a08      	ldr	r2, [sp, #32]
 800473a:	4623      	mov	r3, r4
 800473c:	bfa8      	it	ge
 800473e:	4643      	movge	r3, r8
 8004740:	1ad2      	subs	r2, r2, r3
 8004742:	9208      	str	r2, [sp, #32]
 8004744:	1ae4      	subs	r4, r4, r3
 8004746:	eba8 0803 	sub.w	r8, r8, r3
 800474a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800474c:	b16b      	cbz	r3, 800476a <_dtoa_r+0x67a>
 800474e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004750:	2a00      	cmp	r2, #0
 8004752:	f000 8290 	beq.w	8004c76 <_dtoa_r+0xb86>
 8004756:	1bde      	subs	r6, r3, r7
 8004758:	2f00      	cmp	r7, #0
 800475a:	f040 819b 	bne.w	8004a94 <_dtoa_r+0x9a4>
 800475e:	4651      	mov	r1, sl
 8004760:	4632      	mov	r2, r6
 8004762:	4648      	mov	r0, r9
 8004764:	f001 fd2a 	bl	80061bc <__pow5mult>
 8004768:	4682      	mov	sl, r0
 800476a:	2101      	movs	r1, #1
 800476c:	4648      	mov	r0, r9
 800476e:	f001 fc75 	bl	800605c <__i2b>
 8004772:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004774:	4606      	mov	r6, r0
 8004776:	2a00      	cmp	r2, #0
 8004778:	f040 8125 	bne.w	80049c6 <_dtoa_r+0x8d6>
 800477c:	9b02      	ldr	r3, [sp, #8]
 800477e:	2b01      	cmp	r3, #1
 8004780:	f340 816c 	ble.w	8004a5c <_dtoa_r+0x96c>
 8004784:	2001      	movs	r0, #1
 8004786:	4440      	add	r0, r8
 8004788:	f010 001f 	ands.w	r0, r0, #31
 800478c:	f000 8119 	beq.w	80049c2 <_dtoa_r+0x8d2>
 8004790:	f1c0 0320 	rsb	r3, r0, #32
 8004794:	2b04      	cmp	r3, #4
 8004796:	f340 83ac 	ble.w	8004ef2 <_dtoa_r+0xe02>
 800479a:	f1c0 001c 	rsb	r0, r0, #28
 800479e:	9b08      	ldr	r3, [sp, #32]
 80047a0:	4403      	add	r3, r0
 80047a2:	9308      	str	r3, [sp, #32]
 80047a4:	4404      	add	r4, r0
 80047a6:	4480      	add	r8, r0
 80047a8:	9b08      	ldr	r3, [sp, #32]
 80047aa:	2b00      	cmp	r3, #0
 80047ac:	dd05      	ble.n	80047ba <_dtoa_r+0x6ca>
 80047ae:	4651      	mov	r1, sl
 80047b0:	461a      	mov	r2, r3
 80047b2:	4648      	mov	r0, r9
 80047b4:	f001 fd52 	bl	800625c <__lshift>
 80047b8:	4682      	mov	sl, r0
 80047ba:	f1b8 0f00 	cmp.w	r8, #0
 80047be:	dd05      	ble.n	80047cc <_dtoa_r+0x6dc>
 80047c0:	4631      	mov	r1, r6
 80047c2:	4642      	mov	r2, r8
 80047c4:	4648      	mov	r0, r9
 80047c6:	f001 fd49 	bl	800625c <__lshift>
 80047ca:	4606      	mov	r6, r0
 80047cc:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80047ce:	2b00      	cmp	r3, #0
 80047d0:	d177      	bne.n	80048c2 <_dtoa_r+0x7d2>
 80047d2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80047d4:	2b00      	cmp	r3, #0
 80047d6:	f340 8209 	ble.w	8004bec <_dtoa_r+0xafc>
 80047da:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80047dc:	2b00      	cmp	r3, #0
 80047de:	f000 8089 	beq.w	80048f4 <_dtoa_r+0x804>
 80047e2:	2c00      	cmp	r4, #0
 80047e4:	f300 816b 	bgt.w	8004abe <_dtoa_r+0x9ce>
 80047e8:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80047ea:	2b00      	cmp	r3, #0
 80047ec:	f040 81cd 	bne.w	8004b8a <_dtoa_r+0xa9a>
 80047f0:	46a8      	mov	r8, r5
 80047f2:	9a00      	ldr	r2, [sp, #0]
 80047f4:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 80047f8:	f002 0201 	and.w	r2, r2, #1
 80047fc:	920a      	str	r2, [sp, #40]	; 0x28
 80047fe:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004800:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004804:	441a      	add	r2, r3
 8004806:	465f      	mov	r7, fp
 8004808:	9209      	str	r2, [sp, #36]	; 0x24
 800480a:	46b3      	mov	fp, r6
 800480c:	4659      	mov	r1, fp
 800480e:	4650      	mov	r0, sl
 8004810:	f7ff fbdc 	bl	8003fcc <quorem>
 8004814:	4629      	mov	r1, r5
 8004816:	4604      	mov	r4, r0
 8004818:	4650      	mov	r0, sl
 800481a:	f001 fd75 	bl	8006308 <__mcmp>
 800481e:	4659      	mov	r1, fp
 8004820:	4606      	mov	r6, r0
 8004822:	4642      	mov	r2, r8
 8004824:	4648      	mov	r0, r9
 8004826:	f001 fd8b 	bl	8006340 <__mdiff>
 800482a:	f104 0330 	add.w	r3, r4, #48	; 0x30
 800482e:	9300      	str	r3, [sp, #0]
 8004830:	68c3      	ldr	r3, [r0, #12]
 8004832:	4601      	mov	r1, r0
 8004834:	2b00      	cmp	r3, #0
 8004836:	f040 81d4 	bne.w	8004be2 <_dtoa_r+0xaf2>
 800483a:	9008      	str	r0, [sp, #32]
 800483c:	4650      	mov	r0, sl
 800483e:	f001 fd63 	bl	8006308 <__mcmp>
 8004842:	9a08      	ldr	r2, [sp, #32]
 8004844:	9007      	str	r0, [sp, #28]
 8004846:	4611      	mov	r1, r2
 8004848:	4648      	mov	r0, r9
 800484a:	f001 fb6d 	bl	8005f28 <_Bfree>
 800484e:	9b07      	ldr	r3, [sp, #28]
 8004850:	b933      	cbnz	r3, 8004860 <_dtoa_r+0x770>
 8004852:	9a02      	ldr	r2, [sp, #8]
 8004854:	b922      	cbnz	r2, 8004860 <_dtoa_r+0x770>
 8004856:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004858:	2b00      	cmp	r3, #0
 800485a:	f000 8319 	beq.w	8004e90 <_dtoa_r+0xda0>
 800485e:	9b02      	ldr	r3, [sp, #8]
 8004860:	2e00      	cmp	r6, #0
 8004862:	f2c0 821c 	blt.w	8004c9e <_dtoa_r+0xbae>
 8004866:	d105      	bne.n	8004874 <_dtoa_r+0x784>
 8004868:	9a02      	ldr	r2, [sp, #8]
 800486a:	b91a      	cbnz	r2, 8004874 <_dtoa_r+0x784>
 800486c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800486e:	2a00      	cmp	r2, #0
 8004870:	f000 8215 	beq.w	8004c9e <_dtoa_r+0xbae>
 8004874:	2b00      	cmp	r3, #0
 8004876:	f107 0401 	add.w	r4, r7, #1
 800487a:	f300 8225 	bgt.w	8004cc8 <_dtoa_r+0xbd8>
 800487e:	9b00      	ldr	r3, [sp, #0]
 8004880:	703b      	strb	r3, [r7, #0]
 8004882:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004884:	42bb      	cmp	r3, r7
 8004886:	f000 8230 	beq.w	8004cea <_dtoa_r+0xbfa>
 800488a:	4651      	mov	r1, sl
 800488c:	2300      	movs	r3, #0
 800488e:	220a      	movs	r2, #10
 8004890:	4648      	mov	r0, r9
 8004892:	f001 fb53 	bl	8005f3c <__multadd>
 8004896:	4545      	cmp	r5, r8
 8004898:	4682      	mov	sl, r0
 800489a:	4629      	mov	r1, r5
 800489c:	f04f 0300 	mov.w	r3, #0
 80048a0:	f04f 020a 	mov.w	r2, #10
 80048a4:	4648      	mov	r0, r9
 80048a6:	f000 8196 	beq.w	8004bd6 <_dtoa_r+0xae6>
 80048aa:	f001 fb47 	bl	8005f3c <__multadd>
 80048ae:	4641      	mov	r1, r8
 80048b0:	4605      	mov	r5, r0
 80048b2:	2300      	movs	r3, #0
 80048b4:	220a      	movs	r2, #10
 80048b6:	4648      	mov	r0, r9
 80048b8:	f001 fb40 	bl	8005f3c <__multadd>
 80048bc:	4627      	mov	r7, r4
 80048be:	4680      	mov	r8, r0
 80048c0:	e7a4      	b.n	800480c <_dtoa_r+0x71c>
 80048c2:	4631      	mov	r1, r6
 80048c4:	4650      	mov	r0, sl
 80048c6:	f001 fd1f 	bl	8006308 <__mcmp>
 80048ca:	2800      	cmp	r0, #0
 80048cc:	da81      	bge.n	80047d2 <_dtoa_r+0x6e2>
 80048ce:	9f06      	ldr	r7, [sp, #24]
 80048d0:	4651      	mov	r1, sl
 80048d2:	2300      	movs	r3, #0
 80048d4:	220a      	movs	r2, #10
 80048d6:	4648      	mov	r0, r9
 80048d8:	3f01      	subs	r7, #1
 80048da:	9706      	str	r7, [sp, #24]
 80048dc:	f001 fb2e 	bl	8005f3c <__multadd>
 80048e0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80048e2:	4682      	mov	sl, r0
 80048e4:	2b00      	cmp	r3, #0
 80048e6:	f040 82eb 	bne.w	8004ec0 <_dtoa_r+0xdd0>
 80048ea:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80048ec:	2b00      	cmp	r3, #0
 80048ee:	f340 82f3 	ble.w	8004ed8 <_dtoa_r+0xde8>
 80048f2:	9309      	str	r3, [sp, #36]	; 0x24
 80048f4:	465c      	mov	r4, fp
 80048f6:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80048fa:	e002      	b.n	8004902 <_dtoa_r+0x812>
 80048fc:	f001 fb1e 	bl	8005f3c <__multadd>
 8004900:	4682      	mov	sl, r0
 8004902:	4631      	mov	r1, r6
 8004904:	4650      	mov	r0, sl
 8004906:	f7ff fb61 	bl	8003fcc <quorem>
 800490a:	f100 0730 	add.w	r7, r0, #48	; 0x30
 800490e:	f804 7b01 	strb.w	r7, [r4], #1
 8004912:	eba4 030b 	sub.w	r3, r4, fp
 8004916:	4598      	cmp	r8, r3
 8004918:	f04f 020a 	mov.w	r2, #10
 800491c:	f04f 0300 	mov.w	r3, #0
 8004920:	4651      	mov	r1, sl
 8004922:	4648      	mov	r0, r9
 8004924:	dcea      	bgt.n	80048fc <_dtoa_r+0x80c>
 8004926:	2300      	movs	r3, #0
 8004928:	9700      	str	r7, [sp, #0]
 800492a:	9302      	str	r3, [sp, #8]
 800492c:	4651      	mov	r1, sl
 800492e:	2201      	movs	r2, #1
 8004930:	4648      	mov	r0, r9
 8004932:	f001 fc93 	bl	800625c <__lshift>
 8004936:	4631      	mov	r1, r6
 8004938:	4682      	mov	sl, r0
 800493a:	f001 fce5 	bl	8006308 <__mcmp>
 800493e:	2800      	cmp	r0, #0
 8004940:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004944:	dc14      	bgt.n	8004970 <_dtoa_r+0x880>
 8004946:	d108      	bne.n	800495a <_dtoa_r+0x86a>
 8004948:	9b00      	ldr	r3, [sp, #0]
 800494a:	07db      	lsls	r3, r3, #31
 800494c:	d410      	bmi.n	8004970 <_dtoa_r+0x880>
 800494e:	e004      	b.n	800495a <_dtoa_r+0x86a>
 8004950:	40240000 	.word	0x40240000
 8004954:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004958:	461c      	mov	r4, r3
 800495a:	2a30      	cmp	r2, #48	; 0x30
 800495c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004960:	d0f8      	beq.n	8004954 <_dtoa_r+0x864>
 8004962:	e00b      	b.n	800497c <_dtoa_r+0x88c>
 8004964:	459b      	cmp	fp, r3
 8004966:	f000 814e 	beq.w	8004c06 <_dtoa_r+0xb16>
 800496a:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 800496e:	461c      	mov	r4, r3
 8004970:	2a39      	cmp	r2, #57	; 0x39
 8004972:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004976:	d0f5      	beq.n	8004964 <_dtoa_r+0x874>
 8004978:	3201      	adds	r2, #1
 800497a:	701a      	strb	r2, [r3, #0]
 800497c:	4631      	mov	r1, r6
 800497e:	4648      	mov	r0, r9
 8004980:	f001 fad2 	bl	8005f28 <_Bfree>
 8004984:	b155      	cbz	r5, 800499c <_dtoa_r+0x8ac>
 8004986:	9902      	ldr	r1, [sp, #8]
 8004988:	b121      	cbz	r1, 8004994 <_dtoa_r+0x8a4>
 800498a:	42a9      	cmp	r1, r5
 800498c:	d002      	beq.n	8004994 <_dtoa_r+0x8a4>
 800498e:	4648      	mov	r0, r9
 8004990:	f001 faca 	bl	8005f28 <_Bfree>
 8004994:	4629      	mov	r1, r5
 8004996:	4648      	mov	r0, r9
 8004998:	f001 fac6 	bl	8005f28 <_Bfree>
 800499c:	4651      	mov	r1, sl
 800499e:	4648      	mov	r0, r9
 80049a0:	f001 fac2 	bl	8005f28 <_Bfree>
 80049a4:	2200      	movs	r2, #0
 80049a6:	9b06      	ldr	r3, [sp, #24]
 80049a8:	7022      	strb	r2, [r4, #0]
 80049aa:	9a05      	ldr	r2, [sp, #20]
 80049ac:	3301      	adds	r3, #1
 80049ae:	6013      	str	r3, [r2, #0]
 80049b0:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80049b2:	2b00      	cmp	r3, #0
 80049b4:	f43f abdb 	beq.w	800416e <_dtoa_r+0x7e>
 80049b8:	4658      	mov	r0, fp
 80049ba:	601c      	str	r4, [r3, #0]
 80049bc:	b01b      	add	sp, #108	; 0x6c
 80049be:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80049c2:	201c      	movs	r0, #28
 80049c4:	e6eb      	b.n	800479e <_dtoa_r+0x6ae>
 80049c6:	4601      	mov	r1, r0
 80049c8:	4648      	mov	r0, r9
 80049ca:	f001 fbf7 	bl	80061bc <__pow5mult>
 80049ce:	9b02      	ldr	r3, [sp, #8]
 80049d0:	2b01      	cmp	r3, #1
 80049d2:	4606      	mov	r6, r0
 80049d4:	f340 80d4 	ble.w	8004b80 <_dtoa_r+0xa90>
 80049d8:	2300      	movs	r3, #0
 80049da:	930c      	str	r3, [sp, #48]	; 0x30
 80049dc:	6933      	ldr	r3, [r6, #16]
 80049de:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 80049e2:	6918      	ldr	r0, [r3, #16]
 80049e4:	f001 faea 	bl	8005fbc <__hi0bits>
 80049e8:	f1c0 0020 	rsb	r0, r0, #32
 80049ec:	e6cb      	b.n	8004786 <_dtoa_r+0x696>
 80049ee:	900d      	str	r0, [sp, #52]	; 0x34
 80049f0:	e42a      	b.n	8004248 <_dtoa_r+0x158>
 80049f2:	2501      	movs	r5, #1
 80049f4:	e440      	b.n	8004278 <_dtoa_r+0x188>
 80049f6:	f1c3 0820 	rsb	r8, r3, #32
 80049fa:	9b00      	ldr	r3, [sp, #0]
 80049fc:	fa03 f008 	lsl.w	r0, r3, r8
 8004a00:	f7ff bbd8 	b.w	80041b4 <_dtoa_r+0xc4>
 8004a04:	2300      	movs	r3, #0
 8004a06:	930a      	str	r3, [sp, #40]	; 0x28
 8004a08:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004a0c:	4413      	add	r3, r2
 8004a0e:	930e      	str	r3, [sp, #56]	; 0x38
 8004a10:	3301      	adds	r3, #1
 8004a12:	2b01      	cmp	r3, #1
 8004a14:	461e      	mov	r6, r3
 8004a16:	9309      	str	r3, [sp, #36]	; 0x24
 8004a18:	bfb8      	it	lt
 8004a1a:	2601      	movlt	r6, #1
 8004a1c:	2100      	movs	r1, #0
 8004a1e:	2e17      	cmp	r6, #23
 8004a20:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004a24:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004a26:	f77f ac89 	ble.w	800433c <_dtoa_r+0x24c>
 8004a2a:	2201      	movs	r2, #1
 8004a2c:	2304      	movs	r3, #4
 8004a2e:	005b      	lsls	r3, r3, #1
 8004a30:	f103 0014 	add.w	r0, r3, #20
 8004a34:	42b0      	cmp	r0, r6
 8004a36:	4611      	mov	r1, r2
 8004a38:	f102 0201 	add.w	r2, r2, #1
 8004a3c:	d9f7      	bls.n	8004a2e <_dtoa_r+0x93e>
 8004a3e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004a42:	e47b      	b.n	800433c <_dtoa_r+0x24c>
 8004a44:	2300      	movs	r3, #0
 8004a46:	930a      	str	r3, [sp, #40]	; 0x28
 8004a48:	9e07      	ldr	r6, [sp, #28]
 8004a4a:	2e00      	cmp	r6, #0
 8004a4c:	f340 80e2 	ble.w	8004c14 <_dtoa_r+0xb24>
 8004a50:	960e      	str	r6, [sp, #56]	; 0x38
 8004a52:	9609      	str	r6, [sp, #36]	; 0x24
 8004a54:	e7e2      	b.n	8004a1c <_dtoa_r+0x92c>
 8004a56:	2301      	movs	r3, #1
 8004a58:	930a      	str	r3, [sp, #40]	; 0x28
 8004a5a:	e7f5      	b.n	8004a48 <_dtoa_r+0x958>
 8004a5c:	9b00      	ldr	r3, [sp, #0]
 8004a5e:	2b00      	cmp	r3, #0
 8004a60:	f47f ae90 	bne.w	8004784 <_dtoa_r+0x694>
 8004a64:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004a68:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004a6c:	2b00      	cmp	r3, #0
 8004a6e:	f040 8192 	bne.w	8004d96 <_dtoa_r+0xca6>
 8004a72:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004a76:	0d1b      	lsrs	r3, r3, #20
 8004a78:	051b      	lsls	r3, r3, #20
 8004a7a:	b12b      	cbz	r3, 8004a88 <_dtoa_r+0x998>
 8004a7c:	9b08      	ldr	r3, [sp, #32]
 8004a7e:	3301      	adds	r3, #1
 8004a80:	9308      	str	r3, [sp, #32]
 8004a82:	f108 0801 	add.w	r8, r8, #1
 8004a86:	2301      	movs	r3, #1
 8004a88:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004a8a:	930c      	str	r3, [sp, #48]	; 0x30
 8004a8c:	2a00      	cmp	r2, #0
 8004a8e:	f43f ae79 	beq.w	8004784 <_dtoa_r+0x694>
 8004a92:	e7a3      	b.n	80049dc <_dtoa_r+0x8ec>
 8004a94:	463a      	mov	r2, r7
 8004a96:	4629      	mov	r1, r5
 8004a98:	4648      	mov	r0, r9
 8004a9a:	f001 fb8f 	bl	80061bc <__pow5mult>
 8004a9e:	4652      	mov	r2, sl
 8004aa0:	4601      	mov	r1, r0
 8004aa2:	4605      	mov	r5, r0
 8004aa4:	4648      	mov	r0, r9
 8004aa6:	f001 fae3 	bl	8006070 <__multiply>
 8004aaa:	4651      	mov	r1, sl
 8004aac:	4607      	mov	r7, r0
 8004aae:	4648      	mov	r0, r9
 8004ab0:	f001 fa3a 	bl	8005f28 <_Bfree>
 8004ab4:	46ba      	mov	sl, r7
 8004ab6:	2e00      	cmp	r6, #0
 8004ab8:	f43f ae57 	beq.w	800476a <_dtoa_r+0x67a>
 8004abc:	e64f      	b.n	800475e <_dtoa_r+0x66e>
 8004abe:	4629      	mov	r1, r5
 8004ac0:	4622      	mov	r2, r4
 8004ac2:	4648      	mov	r0, r9
 8004ac4:	f001 fbca 	bl	800625c <__lshift>
 8004ac8:	4605      	mov	r5, r0
 8004aca:	e68d      	b.n	80047e8 <_dtoa_r+0x6f8>
 8004acc:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004ace:	2a00      	cmp	r2, #0
 8004ad0:	f000 815d 	beq.w	8004d8e <_dtoa_r+0xc9e>
 8004ad4:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004ad8:	9a08      	ldr	r2, [sp, #32]
 8004ada:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004adc:	4614      	mov	r4, r2
 8004ade:	441a      	add	r2, r3
 8004ae0:	4498      	add	r8, r3
 8004ae2:	9208      	str	r2, [sp, #32]
 8004ae4:	e5f7      	b.n	80046d6 <_dtoa_r+0x5e6>
 8004ae6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004ae8:	2b00      	cmp	r3, #0
 8004aea:	f73f ad3e 	bgt.w	800456a <_dtoa_r+0x47a>
 8004aee:	f040 80bc 	bne.w	8004c6a <_dtoa_r+0xb7a>
 8004af2:	ec51 0b17 	vmov	r0, r1, d7
 8004af6:	2200      	movs	r2, #0
 8004af8:	4bb2      	ldr	r3, [pc, #712]	; (8004dc4 <_dtoa_r+0xcd4>)
 8004afa:	f7fc f81d 	bl	8000b38 <__aeabi_dmul>
 8004afe:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004b02:	f7fc fa9f 	bl	8001044 <__aeabi_dcmpge>
 8004b06:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004b08:	4635      	mov	r5, r6
 8004b0a:	2800      	cmp	r0, #0
 8004b0c:	d176      	bne.n	8004bfc <_dtoa_r+0xb0c>
 8004b0e:	9a06      	ldr	r2, [sp, #24]
 8004b10:	2331      	movs	r3, #49	; 0x31
 8004b12:	3201      	adds	r2, #1
 8004b14:	9206      	str	r2, [sp, #24]
 8004b16:	f88b 3000 	strb.w	r3, [fp]
 8004b1a:	f10b 0401 	add.w	r4, fp, #1
 8004b1e:	4631      	mov	r1, r6
 8004b20:	4648      	mov	r0, r9
 8004b22:	f001 fa01 	bl	8005f28 <_Bfree>
 8004b26:	2d00      	cmp	r5, #0
 8004b28:	f47f af34 	bne.w	8004994 <_dtoa_r+0x8a4>
 8004b2c:	e736      	b.n	800499c <_dtoa_r+0x8ac>
 8004b2e:	f000 8142 	beq.w	8004db6 <_dtoa_r+0xcc6>
 8004b32:	9b06      	ldr	r3, [sp, #24]
 8004b34:	425c      	negs	r4, r3
 8004b36:	4ba4      	ldr	r3, [pc, #656]	; (8004dc8 <_dtoa_r+0xcd8>)
 8004b38:	f004 020f 	and.w	r2, r4, #15
 8004b3c:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004b40:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004b44:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004b48:	f7fb fff6 	bl	8000b38 <__aeabi_dmul>
 8004b4c:	1124      	asrs	r4, r4, #4
 8004b4e:	e9cd 0100 	strd	r0, r1, [sp]
 8004b52:	f000 81c6 	beq.w	8004ee2 <_dtoa_r+0xdf2>
 8004b56:	4d9d      	ldr	r5, [pc, #628]	; (8004dcc <_dtoa_r+0xcdc>)
 8004b58:	2300      	movs	r3, #0
 8004b5a:	2602      	movs	r6, #2
 8004b5c:	07e7      	lsls	r7, r4, #31
 8004b5e:	d505      	bpl.n	8004b6c <_dtoa_r+0xa7c>
 8004b60:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004b64:	f7fb ffe8 	bl	8000b38 <__aeabi_dmul>
 8004b68:	3601      	adds	r6, #1
 8004b6a:	2301      	movs	r3, #1
 8004b6c:	1064      	asrs	r4, r4, #1
 8004b6e:	f105 0508 	add.w	r5, r5, #8
 8004b72:	d1f3      	bne.n	8004b5c <_dtoa_r+0xa6c>
 8004b74:	2b00      	cmp	r3, #0
 8004b76:	f43f ac27 	beq.w	80043c8 <_dtoa_r+0x2d8>
 8004b7a:	e9cd 0100 	strd	r0, r1, [sp]
 8004b7e:	e423      	b.n	80043c8 <_dtoa_r+0x2d8>
 8004b80:	9b00      	ldr	r3, [sp, #0]
 8004b82:	2b00      	cmp	r3, #0
 8004b84:	f43f af6e 	beq.w	8004a64 <_dtoa_r+0x974>
 8004b88:	e726      	b.n	80049d8 <_dtoa_r+0x8e8>
 8004b8a:	6869      	ldr	r1, [r5, #4]
 8004b8c:	4648      	mov	r0, r9
 8004b8e:	f001 f9a5 	bl	8005edc <_Balloc>
 8004b92:	692b      	ldr	r3, [r5, #16]
 8004b94:	3302      	adds	r3, #2
 8004b96:	009a      	lsls	r2, r3, #2
 8004b98:	4604      	mov	r4, r0
 8004b9a:	f105 010c 	add.w	r1, r5, #12
 8004b9e:	300c      	adds	r0, #12
 8004ba0:	f7fb fcae 	bl	8000500 <memcpy>
 8004ba4:	4621      	mov	r1, r4
 8004ba6:	2201      	movs	r2, #1
 8004ba8:	4648      	mov	r0, r9
 8004baa:	f001 fb57 	bl	800625c <__lshift>
 8004bae:	4680      	mov	r8, r0
 8004bb0:	e61f      	b.n	80047f2 <_dtoa_r+0x702>
 8004bb2:	2400      	movs	r4, #0
 8004bb4:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004bb8:	4621      	mov	r1, r4
 8004bba:	4648      	mov	r0, r9
 8004bbc:	f001 f98e 	bl	8005edc <_Balloc>
 8004bc0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004bc4:	930e      	str	r3, [sp, #56]	; 0x38
 8004bc6:	9309      	str	r3, [sp, #36]	; 0x24
 8004bc8:	2301      	movs	r3, #1
 8004bca:	4683      	mov	fp, r0
 8004bcc:	9407      	str	r4, [sp, #28]
 8004bce:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004bd2:	930a      	str	r3, [sp, #40]	; 0x28
 8004bd4:	e4b6      	b.n	8004544 <_dtoa_r+0x454>
 8004bd6:	f001 f9b1 	bl	8005f3c <__multadd>
 8004bda:	4627      	mov	r7, r4
 8004bdc:	4605      	mov	r5, r0
 8004bde:	4680      	mov	r8, r0
 8004be0:	e614      	b.n	800480c <_dtoa_r+0x71c>
 8004be2:	4648      	mov	r0, r9
 8004be4:	f001 f9a0 	bl	8005f28 <_Bfree>
 8004be8:	2301      	movs	r3, #1
 8004bea:	e639      	b.n	8004860 <_dtoa_r+0x770>
 8004bec:	9b02      	ldr	r3, [sp, #8]
 8004bee:	2b02      	cmp	r3, #2
 8004bf0:	f77f adf3 	ble.w	80047da <_dtoa_r+0x6ea>
 8004bf4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004bf6:	2b00      	cmp	r3, #0
 8004bf8:	f000 80cf 	beq.w	8004d9a <_dtoa_r+0xcaa>
 8004bfc:	9b07      	ldr	r3, [sp, #28]
 8004bfe:	43db      	mvns	r3, r3
 8004c00:	9306      	str	r3, [sp, #24]
 8004c02:	465c      	mov	r4, fp
 8004c04:	e78b      	b.n	8004b1e <_dtoa_r+0xa2e>
 8004c06:	9a06      	ldr	r2, [sp, #24]
 8004c08:	2331      	movs	r3, #49	; 0x31
 8004c0a:	3201      	adds	r2, #1
 8004c0c:	9206      	str	r2, [sp, #24]
 8004c0e:	f88b 3000 	strb.w	r3, [fp]
 8004c12:	e6b3      	b.n	800497c <_dtoa_r+0x88c>
 8004c14:	2401      	movs	r4, #1
 8004c16:	9409      	str	r4, [sp, #36]	; 0x24
 8004c18:	9407      	str	r4, [sp, #28]
 8004c1a:	f7ff bb8b 	b.w	8004334 <_dtoa_r+0x244>
 8004c1e:	4630      	mov	r0, r6
 8004c20:	f7fb ff20 	bl	8000a64 <__aeabi_i2d>
 8004c24:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004c28:	f7fb ff86 	bl	8000b38 <__aeabi_dmul>
 8004c2c:	2200      	movs	r2, #0
 8004c2e:	4b68      	ldr	r3, [pc, #416]	; (8004dd0 <_dtoa_r+0xce0>)
 8004c30:	f7fb fdcc 	bl	80007cc <__adddf3>
 8004c34:	4606      	mov	r6, r0
 8004c36:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004c3a:	2200      	movs	r2, #0
 8004c3c:	4b61      	ldr	r3, [pc, #388]	; (8004dc4 <_dtoa_r+0xcd4>)
 8004c3e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004c42:	f7fb fdc1 	bl	80007c8 <__aeabi_dsub>
 8004c46:	4632      	mov	r2, r6
 8004c48:	463b      	mov	r3, r7
 8004c4a:	4604      	mov	r4, r0
 8004c4c:	460d      	mov	r5, r1
 8004c4e:	f7fc fa03 	bl	8001058 <__aeabi_dcmpgt>
 8004c52:	2800      	cmp	r0, #0
 8004c54:	d14f      	bne.n	8004cf6 <_dtoa_r+0xc06>
 8004c56:	4632      	mov	r2, r6
 8004c58:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004c5c:	4620      	mov	r0, r4
 8004c5e:	4629      	mov	r1, r5
 8004c60:	f7fc f9dc 	bl	800101c <__aeabi_dcmplt>
 8004c64:	2800      	cmp	r0, #0
 8004c66:	f43f ac69 	beq.w	800453c <_dtoa_r+0x44c>
 8004c6a:	2600      	movs	r6, #0
 8004c6c:	4635      	mov	r5, r6
 8004c6e:	e7c5      	b.n	8004bfc <_dtoa_r+0xb0c>
 8004c70:	2301      	movs	r3, #1
 8004c72:	930a      	str	r3, [sp, #40]	; 0x28
 8004c74:	e6c8      	b.n	8004a08 <_dtoa_r+0x918>
 8004c76:	4651      	mov	r1, sl
 8004c78:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004c7a:	4648      	mov	r0, r9
 8004c7c:	f001 fa9e 	bl	80061bc <__pow5mult>
 8004c80:	4682      	mov	sl, r0
 8004c82:	e572      	b.n	800476a <_dtoa_r+0x67a>
 8004c84:	f8dd a000 	ldr.w	sl, [sp]
 8004c88:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004c8c:	e686      	b.n	800499c <_dtoa_r+0x8ac>
 8004c8e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004c90:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004c92:	1afb      	subs	r3, r7, r3
 8004c94:	441a      	add	r2, r3
 8004c96:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004c9a:	2700      	movs	r7, #0
 8004c9c:	e512      	b.n	80046c4 <_dtoa_r+0x5d4>
 8004c9e:	2b00      	cmp	r3, #0
 8004ca0:	9402      	str	r4, [sp, #8]
 8004ca2:	465e      	mov	r6, fp
 8004ca4:	f107 0401 	add.w	r4, r7, #1
 8004ca8:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004cac:	f300 80ba 	bgt.w	8004e24 <_dtoa_r+0xd34>
 8004cb0:	9b00      	ldr	r3, [sp, #0]
 8004cb2:	9502      	str	r5, [sp, #8]
 8004cb4:	703b      	strb	r3, [r7, #0]
 8004cb6:	4645      	mov	r5, r8
 8004cb8:	e660      	b.n	800497c <_dtoa_r+0x88c>
 8004cba:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004cbe:	2602      	movs	r6, #2
 8004cc0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004cc4:	f7ff bb67 	b.w	8004396 <_dtoa_r+0x2a6>
 8004cc8:	9b00      	ldr	r3, [sp, #0]
 8004cca:	2b39      	cmp	r3, #57	; 0x39
 8004ccc:	465e      	mov	r6, fp
 8004cce:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004cd2:	f000 80b9 	beq.w	8004e48 <_dtoa_r+0xd58>
 8004cd6:	9b00      	ldr	r3, [sp, #0]
 8004cd8:	9502      	str	r5, [sp, #8]
 8004cda:	3301      	adds	r3, #1
 8004cdc:	703b      	strb	r3, [r7, #0]
 8004cde:	4645      	mov	r5, r8
 8004ce0:	e64c      	b.n	800497c <_dtoa_r+0x88c>
 8004ce2:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004ce6:	1a9c      	subs	r4, r3, r2
 8004ce8:	e4f5      	b.n	80046d6 <_dtoa_r+0x5e6>
 8004cea:	465e      	mov	r6, fp
 8004cec:	9502      	str	r5, [sp, #8]
 8004cee:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004cf2:	4645      	mov	r5, r8
 8004cf4:	e61a      	b.n	800492c <_dtoa_r+0x83c>
 8004cf6:	2600      	movs	r6, #0
 8004cf8:	4635      	mov	r5, r6
 8004cfa:	e708      	b.n	8004b0e <_dtoa_r+0xa1e>
 8004cfc:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004d00:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d04:	f7fb ff18 	bl	8000b38 <__aeabi_dmul>
 8004d08:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004d0a:	f88b 5000 	strb.w	r5, [fp]
 8004d0e:	2b01      	cmp	r3, #1
 8004d10:	e9cd 0100 	strd	r0, r1, [sp]
 8004d14:	d020      	beq.n	8004d58 <_dtoa_r+0xc68>
 8004d16:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004d18:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004d1c:	445b      	add	r3, fp
 8004d1e:	4698      	mov	r8, r3
 8004d20:	2200      	movs	r2, #0
 8004d22:	4b2c      	ldr	r3, [pc, #176]	; (8004dd4 <_dtoa_r+0xce4>)
 8004d24:	4630      	mov	r0, r6
 8004d26:	4639      	mov	r1, r7
 8004d28:	f7fb ff06 	bl	8000b38 <__aeabi_dmul>
 8004d2c:	460f      	mov	r7, r1
 8004d2e:	4606      	mov	r6, r0
 8004d30:	f7fc f9b2 	bl	8001098 <__aeabi_d2iz>
 8004d34:	4605      	mov	r5, r0
 8004d36:	f7fb fe95 	bl	8000a64 <__aeabi_i2d>
 8004d3a:	3530      	adds	r5, #48	; 0x30
 8004d3c:	4602      	mov	r2, r0
 8004d3e:	460b      	mov	r3, r1
 8004d40:	4630      	mov	r0, r6
 8004d42:	4639      	mov	r1, r7
 8004d44:	f7fb fd40 	bl	80007c8 <__aeabi_dsub>
 8004d48:	f804 5b01 	strb.w	r5, [r4], #1
 8004d4c:	4544      	cmp	r4, r8
 8004d4e:	4606      	mov	r6, r0
 8004d50:	460f      	mov	r7, r1
 8004d52:	d1e5      	bne.n	8004d20 <_dtoa_r+0xc30>
 8004d54:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004d58:	4b1f      	ldr	r3, [pc, #124]	; (8004dd8 <_dtoa_r+0xce8>)
 8004d5a:	2200      	movs	r2, #0
 8004d5c:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d60:	f7fb fd34 	bl	80007cc <__adddf3>
 8004d64:	4632      	mov	r2, r6
 8004d66:	463b      	mov	r3, r7
 8004d68:	f7fc f958 	bl	800101c <__aeabi_dcmplt>
 8004d6c:	2800      	cmp	r0, #0
 8004d6e:	d070      	beq.n	8004e52 <_dtoa_r+0xd62>
 8004d70:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004d72:	9306      	str	r3, [sp, #24]
 8004d74:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004d78:	e48f      	b.n	800469a <_dtoa_r+0x5aa>
 8004d7a:	2330      	movs	r3, #48	; 0x30
 8004d7c:	f88b 3000 	strb.w	r3, [fp]
 8004d80:	9b06      	ldr	r3, [sp, #24]
 8004d82:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004d86:	3301      	adds	r3, #1
 8004d88:	9306      	str	r3, [sp, #24]
 8004d8a:	465b      	mov	r3, fp
 8004d8c:	e489      	b.n	80046a2 <_dtoa_r+0x5b2>
 8004d8e:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004d90:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004d94:	e6a0      	b.n	8004ad8 <_dtoa_r+0x9e8>
 8004d96:	2300      	movs	r3, #0
 8004d98:	e676      	b.n	8004a88 <_dtoa_r+0x998>
 8004d9a:	4631      	mov	r1, r6
 8004d9c:	2205      	movs	r2, #5
 8004d9e:	4648      	mov	r0, r9
 8004da0:	f001 f8cc 	bl	8005f3c <__multadd>
 8004da4:	4601      	mov	r1, r0
 8004da6:	4606      	mov	r6, r0
 8004da8:	4650      	mov	r0, sl
 8004daa:	f001 faad 	bl	8006308 <__mcmp>
 8004dae:	2800      	cmp	r0, #0
 8004db0:	f73f aead 	bgt.w	8004b0e <_dtoa_r+0xa1e>
 8004db4:	e722      	b.n	8004bfc <_dtoa_r+0xb0c>
 8004db6:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004dba:	2602      	movs	r6, #2
 8004dbc:	ed8d 7b00 	vstr	d7, [sp]
 8004dc0:	f7ff bb02 	b.w	80043c8 <_dtoa_r+0x2d8>
 8004dc4:	40140000 	.word	0x40140000
 8004dc8:	08007178 	.word	0x08007178
 8004dcc:	08007150 	.word	0x08007150
 8004dd0:	401c0000 	.word	0x401c0000
 8004dd4:	40240000 	.word	0x40240000
 8004dd8:	3fe00000 	.word	0x3fe00000
 8004ddc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004dde:	2b00      	cmp	r3, #0
 8004de0:	f43f af1d 	beq.w	8004c1e <_dtoa_r+0xb2e>
 8004de4:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004de6:	2c00      	cmp	r4, #0
 8004de8:	f77f aba8 	ble.w	800453c <_dtoa_r+0x44c>
 8004dec:	2200      	movs	r2, #0
 8004dee:	4b45      	ldr	r3, [pc, #276]	; (8004f04 <_dtoa_r+0xe14>)
 8004df0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004df4:	f7fb fea0 	bl	8000b38 <__aeabi_dmul>
 8004df8:	e9cd 0100 	strd	r0, r1, [sp]
 8004dfc:	1c70      	adds	r0, r6, #1
 8004dfe:	f7fb fe31 	bl	8000a64 <__aeabi_i2d>
 8004e02:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e06:	f7fb fe97 	bl	8000b38 <__aeabi_dmul>
 8004e0a:	4b3f      	ldr	r3, [pc, #252]	; (8004f08 <_dtoa_r+0xe18>)
 8004e0c:	2200      	movs	r2, #0
 8004e0e:	f7fb fcdd 	bl	80007cc <__adddf3>
 8004e12:	9b06      	ldr	r3, [sp, #24]
 8004e14:	9412      	str	r4, [sp, #72]	; 0x48
 8004e16:	3b01      	subs	r3, #1
 8004e18:	4606      	mov	r6, r0
 8004e1a:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004e1e:	9316      	str	r3, [sp, #88]	; 0x58
 8004e20:	f7ff baf3 	b.w	800440a <_dtoa_r+0x31a>
 8004e24:	4651      	mov	r1, sl
 8004e26:	2201      	movs	r2, #1
 8004e28:	4648      	mov	r0, r9
 8004e2a:	f001 fa17 	bl	800625c <__lshift>
 8004e2e:	4631      	mov	r1, r6
 8004e30:	4682      	mov	sl, r0
 8004e32:	f001 fa69 	bl	8006308 <__mcmp>
 8004e36:	2800      	cmp	r0, #0
 8004e38:	dd3b      	ble.n	8004eb2 <_dtoa_r+0xdc2>
 8004e3a:	9b00      	ldr	r3, [sp, #0]
 8004e3c:	2b39      	cmp	r3, #57	; 0x39
 8004e3e:	d003      	beq.n	8004e48 <_dtoa_r+0xd58>
 8004e40:	9b02      	ldr	r3, [sp, #8]
 8004e42:	3331      	adds	r3, #49	; 0x31
 8004e44:	9300      	str	r3, [sp, #0]
 8004e46:	e733      	b.n	8004cb0 <_dtoa_r+0xbc0>
 8004e48:	2239      	movs	r2, #57	; 0x39
 8004e4a:	9502      	str	r5, [sp, #8]
 8004e4c:	703a      	strb	r2, [r7, #0]
 8004e4e:	4645      	mov	r5, r8
 8004e50:	e58e      	b.n	8004970 <_dtoa_r+0x880>
 8004e52:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e56:	2000      	movs	r0, #0
 8004e58:	492c      	ldr	r1, [pc, #176]	; (8004f0c <_dtoa_r+0xe1c>)
 8004e5a:	f7fb fcb5 	bl	80007c8 <__aeabi_dsub>
 8004e5e:	4632      	mov	r2, r6
 8004e60:	463b      	mov	r3, r7
 8004e62:	f7fc f8f9 	bl	8001058 <__aeabi_dcmpgt>
 8004e66:	b910      	cbnz	r0, 8004e6e <_dtoa_r+0xd7e>
 8004e68:	f7ff bb68 	b.w	800453c <_dtoa_r+0x44c>
 8004e6c:	4614      	mov	r4, r2
 8004e6e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004e72:	2b30      	cmp	r3, #48	; 0x30
 8004e74:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004e78:	d0f8      	beq.n	8004e6c <_dtoa_r+0xd7c>
 8004e7a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004e7c:	9306      	str	r3, [sp, #24]
 8004e7e:	e58d      	b.n	800499c <_dtoa_r+0x8ac>
 8004e80:	46d9      	mov	r9, fp
 8004e82:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004e86:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004e8a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004e8c:	9306      	str	r3, [sp, #24]
 8004e8e:	e404      	b.n	800469a <_dtoa_r+0x5aa>
 8004e90:	9b00      	ldr	r3, [sp, #0]
 8004e92:	2b39      	cmp	r3, #57	; 0x39
 8004e94:	4621      	mov	r1, r4
 8004e96:	4632      	mov	r2, r6
 8004e98:	f107 0401 	add.w	r4, r7, #1
 8004e9c:	465e      	mov	r6, fp
 8004e9e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004ea2:	d0d1      	beq.n	8004e48 <_dtoa_r+0xd58>
 8004ea4:	2a00      	cmp	r2, #0
 8004ea6:	f77f af03 	ble.w	8004cb0 <_dtoa_r+0xbc0>
 8004eaa:	460b      	mov	r3, r1
 8004eac:	3331      	adds	r3, #49	; 0x31
 8004eae:	9300      	str	r3, [sp, #0]
 8004eb0:	e6fe      	b.n	8004cb0 <_dtoa_r+0xbc0>
 8004eb2:	f47f aefd 	bne.w	8004cb0 <_dtoa_r+0xbc0>
 8004eb6:	9b00      	ldr	r3, [sp, #0]
 8004eb8:	07da      	lsls	r2, r3, #31
 8004eba:	f57f aef9 	bpl.w	8004cb0 <_dtoa_r+0xbc0>
 8004ebe:	e7bc      	b.n	8004e3a <_dtoa_r+0xd4a>
 8004ec0:	4629      	mov	r1, r5
 8004ec2:	2300      	movs	r3, #0
 8004ec4:	220a      	movs	r2, #10
 8004ec6:	4648      	mov	r0, r9
 8004ec8:	f001 f838 	bl	8005f3c <__multadd>
 8004ecc:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004ece:	2b00      	cmp	r3, #0
 8004ed0:	4605      	mov	r5, r0
 8004ed2:	dd09      	ble.n	8004ee8 <_dtoa_r+0xdf8>
 8004ed4:	9309      	str	r3, [sp, #36]	; 0x24
 8004ed6:	e484      	b.n	80047e2 <_dtoa_r+0x6f2>
 8004ed8:	9b02      	ldr	r3, [sp, #8]
 8004eda:	2b02      	cmp	r3, #2
 8004edc:	dc0e      	bgt.n	8004efc <_dtoa_r+0xe0c>
 8004ede:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004ee0:	e507      	b.n	80048f2 <_dtoa_r+0x802>
 8004ee2:	2602      	movs	r6, #2
 8004ee4:	f7ff ba70 	b.w	80043c8 <_dtoa_r+0x2d8>
 8004ee8:	9b02      	ldr	r3, [sp, #8]
 8004eea:	2b02      	cmp	r3, #2
 8004eec:	dc06      	bgt.n	8004efc <_dtoa_r+0xe0c>
 8004eee:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004ef0:	e7f0      	b.n	8004ed4 <_dtoa_r+0xde4>
 8004ef2:	f43f ac59 	beq.w	80047a8 <_dtoa_r+0x6b8>
 8004ef6:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004efa:	e450      	b.n	800479e <_dtoa_r+0x6ae>
 8004efc:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004efe:	9309      	str	r3, [sp, #36]	; 0x24
 8004f00:	e678      	b.n	8004bf4 <_dtoa_r+0xb04>
 8004f02:	bf00      	nop
 8004f04:	40240000 	.word	0x40240000
 8004f08:	401c0000 	.word	0x401c0000
 8004f0c:	3fe00000 	.word	0x3fe00000

08004f10 <__sflush_r>:
 8004f10:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004f14:	b29a      	uxth	r2, r3
 8004f16:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004f1a:	460c      	mov	r4, r1
 8004f1c:	0711      	lsls	r1, r2, #28
 8004f1e:	4680      	mov	r8, r0
 8004f20:	d444      	bmi.n	8004fac <__sflush_r+0x9c>
 8004f22:	6862      	ldr	r2, [r4, #4]
 8004f24:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004f28:	2a00      	cmp	r2, #0
 8004f2a:	81a3      	strh	r3, [r4, #12]
 8004f2c:	dd59      	ble.n	8004fe2 <__sflush_r+0xd2>
 8004f2e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004f30:	2d00      	cmp	r5, #0
 8004f32:	d053      	beq.n	8004fdc <__sflush_r+0xcc>
 8004f34:	2200      	movs	r2, #0
 8004f36:	b29b      	uxth	r3, r3
 8004f38:	f8d8 6000 	ldr.w	r6, [r8]
 8004f3c:	69e1      	ldr	r1, [r4, #28]
 8004f3e:	f8c8 2000 	str.w	r2, [r8]
 8004f42:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8004f46:	f040 8083 	bne.w	8005050 <__sflush_r+0x140>
 8004f4a:	2301      	movs	r3, #1
 8004f4c:	4640      	mov	r0, r8
 8004f4e:	47a8      	blx	r5
 8004f50:	1c42      	adds	r2, r0, #1
 8004f52:	d04a      	beq.n	8004fea <__sflush_r+0xda>
 8004f54:	89a3      	ldrh	r3, [r4, #12]
 8004f56:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004f58:	69e1      	ldr	r1, [r4, #28]
 8004f5a:	075b      	lsls	r3, r3, #29
 8004f5c:	d505      	bpl.n	8004f6a <__sflush_r+0x5a>
 8004f5e:	6862      	ldr	r2, [r4, #4]
 8004f60:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8004f62:	1a80      	subs	r0, r0, r2
 8004f64:	b10b      	cbz	r3, 8004f6a <__sflush_r+0x5a>
 8004f66:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8004f68:	1ac0      	subs	r0, r0, r3
 8004f6a:	4602      	mov	r2, r0
 8004f6c:	2300      	movs	r3, #0
 8004f6e:	4640      	mov	r0, r8
 8004f70:	47a8      	blx	r5
 8004f72:	1c47      	adds	r7, r0, #1
 8004f74:	d045      	beq.n	8005002 <__sflush_r+0xf2>
 8004f76:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004f7a:	6922      	ldr	r2, [r4, #16]
 8004f7c:	6022      	str	r2, [r4, #0]
 8004f7e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8004f82:	2200      	movs	r2, #0
 8004f84:	81a3      	strh	r3, [r4, #12]
 8004f86:	04db      	lsls	r3, r3, #19
 8004f88:	6062      	str	r2, [r4, #4]
 8004f8a:	d500      	bpl.n	8004f8e <__sflush_r+0x7e>
 8004f8c:	6520      	str	r0, [r4, #80]	; 0x50
 8004f8e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004f90:	f8c8 6000 	str.w	r6, [r8]
 8004f94:	b311      	cbz	r1, 8004fdc <__sflush_r+0xcc>
 8004f96:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004f9a:	4299      	cmp	r1, r3
 8004f9c:	d002      	beq.n	8004fa4 <__sflush_r+0x94>
 8004f9e:	4640      	mov	r0, r8
 8004fa0:	f000 f95e 	bl	8005260 <_free_r>
 8004fa4:	2000      	movs	r0, #0
 8004fa6:	6320      	str	r0, [r4, #48]	; 0x30
 8004fa8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004fac:	6926      	ldr	r6, [r4, #16]
 8004fae:	b1ae      	cbz	r6, 8004fdc <__sflush_r+0xcc>
 8004fb0:	6825      	ldr	r5, [r4, #0]
 8004fb2:	6026      	str	r6, [r4, #0]
 8004fb4:	0792      	lsls	r2, r2, #30
 8004fb6:	bf0c      	ite	eq
 8004fb8:	6963      	ldreq	r3, [r4, #20]
 8004fba:	2300      	movne	r3, #0
 8004fbc:	1bad      	subs	r5, r5, r6
 8004fbe:	60a3      	str	r3, [r4, #8]
 8004fc0:	e00a      	b.n	8004fd8 <__sflush_r+0xc8>
 8004fc2:	462b      	mov	r3, r5
 8004fc4:	4632      	mov	r2, r6
 8004fc6:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8004fc8:	69e1      	ldr	r1, [r4, #28]
 8004fca:	4640      	mov	r0, r8
 8004fcc:	47b8      	blx	r7
 8004fce:	2800      	cmp	r0, #0
 8004fd0:	eba5 0500 	sub.w	r5, r5, r0
 8004fd4:	4406      	add	r6, r0
 8004fd6:	dd2b      	ble.n	8005030 <__sflush_r+0x120>
 8004fd8:	2d00      	cmp	r5, #0
 8004fda:	dcf2      	bgt.n	8004fc2 <__sflush_r+0xb2>
 8004fdc:	2000      	movs	r0, #0
 8004fde:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004fe2:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8004fe4:	2a00      	cmp	r2, #0
 8004fe6:	dca2      	bgt.n	8004f2e <__sflush_r+0x1e>
 8004fe8:	e7f8      	b.n	8004fdc <__sflush_r+0xcc>
 8004fea:	f8d8 3000 	ldr.w	r3, [r8]
 8004fee:	2b00      	cmp	r3, #0
 8004ff0:	d0b0      	beq.n	8004f54 <__sflush_r+0x44>
 8004ff2:	2b1d      	cmp	r3, #29
 8004ff4:	d001      	beq.n	8004ffa <__sflush_r+0xea>
 8004ff6:	2b16      	cmp	r3, #22
 8004ff8:	d12c      	bne.n	8005054 <__sflush_r+0x144>
 8004ffa:	f8c8 6000 	str.w	r6, [r8]
 8004ffe:	2000      	movs	r0, #0
 8005000:	e7ed      	b.n	8004fde <__sflush_r+0xce>
 8005002:	f8d8 1000 	ldr.w	r1, [r8]
 8005006:	291d      	cmp	r1, #29
 8005008:	d81a      	bhi.n	8005040 <__sflush_r+0x130>
 800500a:	4b15      	ldr	r3, [pc, #84]	; (8005060 <__sflush_r+0x150>)
 800500c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005010:	40cb      	lsrs	r3, r1
 8005012:	43db      	mvns	r3, r3
 8005014:	f013 0301 	ands.w	r3, r3, #1
 8005018:	d114      	bne.n	8005044 <__sflush_r+0x134>
 800501a:	6925      	ldr	r5, [r4, #16]
 800501c:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005020:	e9c4 5300 	strd	r5, r3, [r4]
 8005024:	04d5      	lsls	r5, r2, #19
 8005026:	81a2      	strh	r2, [r4, #12]
 8005028:	d5b1      	bpl.n	8004f8e <__sflush_r+0x7e>
 800502a:	2900      	cmp	r1, #0
 800502c:	d1af      	bne.n	8004f8e <__sflush_r+0x7e>
 800502e:	e7ad      	b.n	8004f8c <__sflush_r+0x7c>
 8005030:	89a3      	ldrh	r3, [r4, #12]
 8005032:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005036:	81a3      	strh	r3, [r4, #12]
 8005038:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800503c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005040:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005044:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005048:	81a2      	strh	r2, [r4, #12]
 800504a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800504e:	e7c6      	b.n	8004fde <__sflush_r+0xce>
 8005050:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8005052:	e782      	b.n	8004f5a <__sflush_r+0x4a>
 8005054:	89a3      	ldrh	r3, [r4, #12]
 8005056:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800505a:	81a3      	strh	r3, [r4, #12]
 800505c:	e7bf      	b.n	8004fde <__sflush_r+0xce>
 800505e:	bf00      	nop
 8005060:	20400001 	.word	0x20400001

08005064 <_fflush_r>:
 8005064:	b538      	push	{r3, r4, r5, lr}
 8005066:	460d      	mov	r5, r1
 8005068:	4604      	mov	r4, r0
 800506a:	b108      	cbz	r0, 8005070 <_fflush_r+0xc>
 800506c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800506e:	b1a3      	cbz	r3, 800509a <_fflush_r+0x36>
 8005070:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005074:	b1b8      	cbz	r0, 80050a6 <_fflush_r+0x42>
 8005076:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005078:	07db      	lsls	r3, r3, #31
 800507a:	d401      	bmi.n	8005080 <_fflush_r+0x1c>
 800507c:	0581      	lsls	r1, r0, #22
 800507e:	d51a      	bpl.n	80050b6 <_fflush_r+0x52>
 8005080:	4620      	mov	r0, r4
 8005082:	4629      	mov	r1, r5
 8005084:	f7ff ff44 	bl	8004f10 <__sflush_r>
 8005088:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 800508a:	07da      	lsls	r2, r3, #31
 800508c:	4604      	mov	r4, r0
 800508e:	d402      	bmi.n	8005096 <_fflush_r+0x32>
 8005090:	89ab      	ldrh	r3, [r5, #12]
 8005092:	059b      	lsls	r3, r3, #22
 8005094:	d50a      	bpl.n	80050ac <_fflush_r+0x48>
 8005096:	4620      	mov	r0, r4
 8005098:	bd38      	pop	{r3, r4, r5, pc}
 800509a:	f000 f83f 	bl	800511c <__sinit>
 800509e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80050a2:	2800      	cmp	r0, #0
 80050a4:	d1e7      	bne.n	8005076 <_fflush_r+0x12>
 80050a6:	4604      	mov	r4, r0
 80050a8:	4620      	mov	r0, r4
 80050aa:	bd38      	pop	{r3, r4, r5, pc}
 80050ac:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80050ae:	f000 fb87 	bl	80057c0 <__retarget_lock_release_recursive>
 80050b2:	4620      	mov	r0, r4
 80050b4:	bd38      	pop	{r3, r4, r5, pc}
 80050b6:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80050b8:	f000 fb80 	bl	80057bc <__retarget_lock_acquire_recursive>
 80050bc:	e7e0      	b.n	8005080 <_fflush_r+0x1c>
 80050be:	bf00      	nop

080050c0 <std>:
 80050c0:	b510      	push	{r4, lr}
 80050c2:	2300      	movs	r3, #0
 80050c4:	4604      	mov	r4, r0
 80050c6:	8181      	strh	r1, [r0, #12]
 80050c8:	81c2      	strh	r2, [r0, #14]
 80050ca:	e9c0 3300 	strd	r3, r3, [r0]
 80050ce:	6083      	str	r3, [r0, #8]
 80050d0:	6643      	str	r3, [r0, #100]	; 0x64
 80050d2:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80050d6:	6183      	str	r3, [r0, #24]
 80050d8:	4619      	mov	r1, r3
 80050da:	2208      	movs	r2, #8
 80050dc:	305c      	adds	r0, #92	; 0x5c
 80050de:	f7fd f8cb 	bl	8002278 <memset>
 80050e2:	4807      	ldr	r0, [pc, #28]	; (8005100 <std+0x40>)
 80050e4:	4907      	ldr	r1, [pc, #28]	; (8005104 <std+0x44>)
 80050e6:	4a08      	ldr	r2, [pc, #32]	; (8005108 <std+0x48>)
 80050e8:	4b08      	ldr	r3, [pc, #32]	; (800510c <std+0x4c>)
 80050ea:	62e3      	str	r3, [r4, #44]	; 0x2c
 80050ec:	e9c4 4007 	strd	r4, r0, [r4, #28]
 80050f0:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 80050f4:	f104 0058 	add.w	r0, r4, #88	; 0x58
 80050f8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80050fc:	f000 bb5a 	b.w	80057b4 <__retarget_lock_init_recursive>
 8005100:	080068d9 	.word	0x080068d9
 8005104:	080068fd 	.word	0x080068fd
 8005108:	08006939 	.word	0x08006939
 800510c:	08006959 	.word	0x08006959

08005110 <_cleanup_r>:
 8005110:	4901      	ldr	r1, [pc, #4]	; (8005118 <_cleanup_r+0x8>)
 8005112:	f000 bb17 	b.w	8005744 <_fwalk_reent>
 8005116:	bf00      	nop
 8005118:	08006bc9 	.word	0x08006bc9

0800511c <__sinit>:
 800511c:	b510      	push	{r4, lr}
 800511e:	4604      	mov	r4, r0
 8005120:	4812      	ldr	r0, [pc, #72]	; (800516c <__sinit+0x50>)
 8005122:	f000 fb4b 	bl	80057bc <__retarget_lock_acquire_recursive>
 8005126:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005128:	b9d2      	cbnz	r2, 8005160 <__sinit+0x44>
 800512a:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 800512e:	4810      	ldr	r0, [pc, #64]	; (8005170 <__sinit+0x54>)
 8005130:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8005134:	2103      	movs	r1, #3
 8005136:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 800513a:	63e0      	str	r0, [r4, #60]	; 0x3c
 800513c:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005140:	6860      	ldr	r0, [r4, #4]
 8005142:	2104      	movs	r1, #4
 8005144:	f7ff ffbc 	bl	80050c0 <std>
 8005148:	2201      	movs	r2, #1
 800514a:	2109      	movs	r1, #9
 800514c:	68a0      	ldr	r0, [r4, #8]
 800514e:	f7ff ffb7 	bl	80050c0 <std>
 8005152:	2202      	movs	r2, #2
 8005154:	2112      	movs	r1, #18
 8005156:	68e0      	ldr	r0, [r4, #12]
 8005158:	f7ff ffb2 	bl	80050c0 <std>
 800515c:	2301      	movs	r3, #1
 800515e:	63a3      	str	r3, [r4, #56]	; 0x38
 8005160:	4802      	ldr	r0, [pc, #8]	; (800516c <__sinit+0x50>)
 8005162:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005166:	f000 bb2b 	b.w	80057c0 <__retarget_lock_release_recursive>
 800516a:	bf00      	nop
 800516c:	20000b00 	.word	0x20000b00
 8005170:	08005111 	.word	0x08005111

08005174 <__sfp_lock_acquire>:
 8005174:	4801      	ldr	r0, [pc, #4]	; (800517c <__sfp_lock_acquire+0x8>)
 8005176:	f000 bb21 	b.w	80057bc <__retarget_lock_acquire_recursive>
 800517a:	bf00      	nop
 800517c:	20000b14 	.word	0x20000b14

08005180 <__sfp_lock_release>:
 8005180:	4801      	ldr	r0, [pc, #4]	; (8005188 <__sfp_lock_release+0x8>)
 8005182:	f000 bb1d 	b.w	80057c0 <__retarget_lock_release_recursive>
 8005186:	bf00      	nop
 8005188:	20000b14 	.word	0x20000b14

0800518c <__libc_fini_array>:
 800518c:	b538      	push	{r3, r4, r5, lr}
 800518e:	4c0a      	ldr	r4, [pc, #40]	; (80051b8 <__libc_fini_array+0x2c>)
 8005190:	4d0a      	ldr	r5, [pc, #40]	; (80051bc <__libc_fini_array+0x30>)
 8005192:	1b64      	subs	r4, r4, r5
 8005194:	10a4      	asrs	r4, r4, #2
 8005196:	d00a      	beq.n	80051ae <__libc_fini_array+0x22>
 8005198:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800519c:	3b01      	subs	r3, #1
 800519e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80051a2:	3c01      	subs	r4, #1
 80051a4:	f855 3904 	ldr.w	r3, [r5], #-4
 80051a8:	4798      	blx	r3
 80051aa:	2c00      	cmp	r4, #0
 80051ac:	d1f9      	bne.n	80051a2 <__libc_fini_array+0x16>
 80051ae:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80051b2:	f001 befd 	b.w	8006fb0 <_fini>
 80051b6:	bf00      	nop
 80051b8:	08007374 	.word	0x08007374
 80051bc:	08007370 	.word	0x08007370

080051c0 <_malloc_trim_r>:
 80051c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80051c2:	4f24      	ldr	r7, [pc, #144]	; (8005254 <_malloc_trim_r+0x94>)
 80051c4:	460c      	mov	r4, r1
 80051c6:	4606      	mov	r6, r0
 80051c8:	f000 fe7c 	bl	8005ec4 <__malloc_lock>
 80051cc:	68bb      	ldr	r3, [r7, #8]
 80051ce:	685d      	ldr	r5, [r3, #4]
 80051d0:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80051d4:	310f      	adds	r1, #15
 80051d6:	f025 0503 	bic.w	r5, r5, #3
 80051da:	4429      	add	r1, r5
 80051dc:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 80051e0:	f021 010f 	bic.w	r1, r1, #15
 80051e4:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 80051e8:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 80051ec:	db07      	blt.n	80051fe <_malloc_trim_r+0x3e>
 80051ee:	2100      	movs	r1, #0
 80051f0:	4630      	mov	r0, r6
 80051f2:	f001 fb5f 	bl	80068b4 <_sbrk_r>
 80051f6:	68bb      	ldr	r3, [r7, #8]
 80051f8:	442b      	add	r3, r5
 80051fa:	4298      	cmp	r0, r3
 80051fc:	d004      	beq.n	8005208 <_malloc_trim_r+0x48>
 80051fe:	4630      	mov	r0, r6
 8005200:	f000 fe66 	bl	8005ed0 <__malloc_unlock>
 8005204:	2000      	movs	r0, #0
 8005206:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005208:	4261      	negs	r1, r4
 800520a:	4630      	mov	r0, r6
 800520c:	f001 fb52 	bl	80068b4 <_sbrk_r>
 8005210:	3001      	adds	r0, #1
 8005212:	d00d      	beq.n	8005230 <_malloc_trim_r+0x70>
 8005214:	4b10      	ldr	r3, [pc, #64]	; (8005258 <_malloc_trim_r+0x98>)
 8005216:	68ba      	ldr	r2, [r7, #8]
 8005218:	6819      	ldr	r1, [r3, #0]
 800521a:	1b2d      	subs	r5, r5, r4
 800521c:	f045 0501 	orr.w	r5, r5, #1
 8005220:	4630      	mov	r0, r6
 8005222:	1b09      	subs	r1, r1, r4
 8005224:	6055      	str	r5, [r2, #4]
 8005226:	6019      	str	r1, [r3, #0]
 8005228:	f000 fe52 	bl	8005ed0 <__malloc_unlock>
 800522c:	2001      	movs	r0, #1
 800522e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005230:	2100      	movs	r1, #0
 8005232:	4630      	mov	r0, r6
 8005234:	f001 fb3e 	bl	80068b4 <_sbrk_r>
 8005238:	68ba      	ldr	r2, [r7, #8]
 800523a:	1a83      	subs	r3, r0, r2
 800523c:	2b0f      	cmp	r3, #15
 800523e:	ddde      	ble.n	80051fe <_malloc_trim_r+0x3e>
 8005240:	4c06      	ldr	r4, [pc, #24]	; (800525c <_malloc_trim_r+0x9c>)
 8005242:	4905      	ldr	r1, [pc, #20]	; (8005258 <_malloc_trim_r+0x98>)
 8005244:	6824      	ldr	r4, [r4, #0]
 8005246:	f043 0301 	orr.w	r3, r3, #1
 800524a:	1b00      	subs	r0, r0, r4
 800524c:	6053      	str	r3, [r2, #4]
 800524e:	6008      	str	r0, [r1, #0]
 8005250:	e7d5      	b.n	80051fe <_malloc_trim_r+0x3e>
 8005252:	bf00      	nop
 8005254:	2000044c 	.word	0x2000044c
 8005258:	20000a78 	.word	0x20000a78
 800525c:	20000854 	.word	0x20000854

08005260 <_free_r>:
 8005260:	2900      	cmp	r1, #0
 8005262:	d053      	beq.n	800530c <_free_r+0xac>
 8005264:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005266:	460c      	mov	r4, r1
 8005268:	4606      	mov	r6, r0
 800526a:	f000 fe2b 	bl	8005ec4 <__malloc_lock>
 800526e:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8005272:	4f71      	ldr	r7, [pc, #452]	; (8005438 <_free_r+0x1d8>)
 8005274:	f02c 0101 	bic.w	r1, ip, #1
 8005278:	f1a4 0508 	sub.w	r5, r4, #8
 800527c:	186b      	adds	r3, r5, r1
 800527e:	68b8      	ldr	r0, [r7, #8]
 8005280:	685a      	ldr	r2, [r3, #4]
 8005282:	4298      	cmp	r0, r3
 8005284:	f022 0203 	bic.w	r2, r2, #3
 8005288:	d053      	beq.n	8005332 <_free_r+0xd2>
 800528a:	f01c 0f01 	tst.w	ip, #1
 800528e:	605a      	str	r2, [r3, #4]
 8005290:	eb03 0002 	add.w	r0, r3, r2
 8005294:	d13b      	bne.n	800530e <_free_r+0xae>
 8005296:	f854 cc08 	ldr.w	ip, [r4, #-8]
 800529a:	6840      	ldr	r0, [r0, #4]
 800529c:	eba5 050c 	sub.w	r5, r5, ip
 80052a0:	f107 0e08 	add.w	lr, r7, #8
 80052a4:	68ac      	ldr	r4, [r5, #8]
 80052a6:	4574      	cmp	r4, lr
 80052a8:	4461      	add	r1, ip
 80052aa:	f000 0001 	and.w	r0, r0, #1
 80052ae:	d075      	beq.n	800539c <_free_r+0x13c>
 80052b0:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 80052b4:	f8c4 c00c 	str.w	ip, [r4, #12]
 80052b8:	f8cc 4008 	str.w	r4, [ip, #8]
 80052bc:	b360      	cbz	r0, 8005318 <_free_r+0xb8>
 80052be:	f041 0301 	orr.w	r3, r1, #1
 80052c2:	606b      	str	r3, [r5, #4]
 80052c4:	5069      	str	r1, [r5, r1]
 80052c6:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80052ca:	d350      	bcc.n	800536e <_free_r+0x10e>
 80052cc:	0a4b      	lsrs	r3, r1, #9
 80052ce:	2b04      	cmp	r3, #4
 80052d0:	d870      	bhi.n	80053b4 <_free_r+0x154>
 80052d2:	098b      	lsrs	r3, r1, #6
 80052d4:	f103 0439 	add.w	r4, r3, #57	; 0x39
 80052d8:	00e4      	lsls	r4, r4, #3
 80052da:	f103 0238 	add.w	r2, r3, #56	; 0x38
 80052de:	1938      	adds	r0, r7, r4
 80052e0:	593b      	ldr	r3, [r7, r4]
 80052e2:	3808      	subs	r0, #8
 80052e4:	4298      	cmp	r0, r3
 80052e6:	d078      	beq.n	80053da <_free_r+0x17a>
 80052e8:	685a      	ldr	r2, [r3, #4]
 80052ea:	f022 0203 	bic.w	r2, r2, #3
 80052ee:	428a      	cmp	r2, r1
 80052f0:	d971      	bls.n	80053d6 <_free_r+0x176>
 80052f2:	689b      	ldr	r3, [r3, #8]
 80052f4:	4298      	cmp	r0, r3
 80052f6:	d1f7      	bne.n	80052e8 <_free_r+0x88>
 80052f8:	68c3      	ldr	r3, [r0, #12]
 80052fa:	e9c5 0302 	strd	r0, r3, [r5, #8]
 80052fe:	609d      	str	r5, [r3, #8]
 8005300:	60c5      	str	r5, [r0, #12]
 8005302:	4630      	mov	r0, r6
 8005304:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005308:	f000 bde2 	b.w	8005ed0 <__malloc_unlock>
 800530c:	4770      	bx	lr
 800530e:	6840      	ldr	r0, [r0, #4]
 8005310:	f000 0001 	and.w	r0, r0, #1
 8005314:	2800      	cmp	r0, #0
 8005316:	d1d2      	bne.n	80052be <_free_r+0x5e>
 8005318:	6898      	ldr	r0, [r3, #8]
 800531a:	4c48      	ldr	r4, [pc, #288]	; (800543c <_free_r+0x1dc>)
 800531c:	4411      	add	r1, r2
 800531e:	42a0      	cmp	r0, r4
 8005320:	f041 0201 	orr.w	r2, r1, #1
 8005324:	d062      	beq.n	80053ec <_free_r+0x18c>
 8005326:	68db      	ldr	r3, [r3, #12]
 8005328:	60c3      	str	r3, [r0, #12]
 800532a:	6098      	str	r0, [r3, #8]
 800532c:	606a      	str	r2, [r5, #4]
 800532e:	5069      	str	r1, [r5, r1]
 8005330:	e7c9      	b.n	80052c6 <_free_r+0x66>
 8005332:	f01c 0f01 	tst.w	ip, #1
 8005336:	440a      	add	r2, r1
 8005338:	d107      	bne.n	800534a <_free_r+0xea>
 800533a:	f854 3c08 	ldr.w	r3, [r4, #-8]
 800533e:	1aed      	subs	r5, r5, r3
 8005340:	441a      	add	r2, r3
 8005342:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8005346:	60cb      	str	r3, [r1, #12]
 8005348:	6099      	str	r1, [r3, #8]
 800534a:	4b3d      	ldr	r3, [pc, #244]	; (8005440 <_free_r+0x1e0>)
 800534c:	681b      	ldr	r3, [r3, #0]
 800534e:	f042 0101 	orr.w	r1, r2, #1
 8005352:	4293      	cmp	r3, r2
 8005354:	6069      	str	r1, [r5, #4]
 8005356:	60bd      	str	r5, [r7, #8]
 8005358:	d804      	bhi.n	8005364 <_free_r+0x104>
 800535a:	4b3a      	ldr	r3, [pc, #232]	; (8005444 <_free_r+0x1e4>)
 800535c:	4630      	mov	r0, r6
 800535e:	6819      	ldr	r1, [r3, #0]
 8005360:	f7ff ff2e 	bl	80051c0 <_malloc_trim_r>
 8005364:	4630      	mov	r0, r6
 8005366:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800536a:	f000 bdb1 	b.w	8005ed0 <__malloc_unlock>
 800536e:	08c9      	lsrs	r1, r1, #3
 8005370:	6878      	ldr	r0, [r7, #4]
 8005372:	1c4a      	adds	r2, r1, #1
 8005374:	2301      	movs	r3, #1
 8005376:	1089      	asrs	r1, r1, #2
 8005378:	408b      	lsls	r3, r1
 800537a:	4303      	orrs	r3, r0
 800537c:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005380:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005384:	607b      	str	r3, [r7, #4]
 8005386:	3908      	subs	r1, #8
 8005388:	e9c5 0102 	strd	r0, r1, [r5, #8]
 800538c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005390:	60c5      	str	r5, [r0, #12]
 8005392:	4630      	mov	r0, r6
 8005394:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005398:	f000 bd9a 	b.w	8005ed0 <__malloc_unlock>
 800539c:	2800      	cmp	r0, #0
 800539e:	d145      	bne.n	800542c <_free_r+0x1cc>
 80053a0:	440a      	add	r2, r1
 80053a2:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 80053a6:	f042 0001 	orr.w	r0, r2, #1
 80053aa:	60cb      	str	r3, [r1, #12]
 80053ac:	6099      	str	r1, [r3, #8]
 80053ae:	6068      	str	r0, [r5, #4]
 80053b0:	50aa      	str	r2, [r5, r2]
 80053b2:	e7d7      	b.n	8005364 <_free_r+0x104>
 80053b4:	2b14      	cmp	r3, #20
 80053b6:	d908      	bls.n	80053ca <_free_r+0x16a>
 80053b8:	2b54      	cmp	r3, #84	; 0x54
 80053ba:	d81e      	bhi.n	80053fa <_free_r+0x19a>
 80053bc:	0b0b      	lsrs	r3, r1, #12
 80053be:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80053c2:	00e4      	lsls	r4, r4, #3
 80053c4:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80053c8:	e789      	b.n	80052de <_free_r+0x7e>
 80053ca:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80053ce:	00e4      	lsls	r4, r4, #3
 80053d0:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80053d4:	e783      	b.n	80052de <_free_r+0x7e>
 80053d6:	4618      	mov	r0, r3
 80053d8:	e78e      	b.n	80052f8 <_free_r+0x98>
 80053da:	1093      	asrs	r3, r2, #2
 80053dc:	6879      	ldr	r1, [r7, #4]
 80053de:	2201      	movs	r2, #1
 80053e0:	fa02 f303 	lsl.w	r3, r2, r3
 80053e4:	430b      	orrs	r3, r1
 80053e6:	607b      	str	r3, [r7, #4]
 80053e8:	4603      	mov	r3, r0
 80053ea:	e786      	b.n	80052fa <_free_r+0x9a>
 80053ec:	e9c7 5504 	strd	r5, r5, [r7, #16]
 80053f0:	e9c5 0002 	strd	r0, r0, [r5, #8]
 80053f4:	606a      	str	r2, [r5, #4]
 80053f6:	5069      	str	r1, [r5, r1]
 80053f8:	e7b4      	b.n	8005364 <_free_r+0x104>
 80053fa:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80053fe:	d806      	bhi.n	800540e <_free_r+0x1ae>
 8005400:	0bcb      	lsrs	r3, r1, #15
 8005402:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005406:	00e4      	lsls	r4, r4, #3
 8005408:	f103 0277 	add.w	r2, r3, #119	; 0x77
 800540c:	e767      	b.n	80052de <_free_r+0x7e>
 800540e:	f240 5254 	movw	r2, #1364	; 0x554
 8005412:	4293      	cmp	r3, r2
 8005414:	d806      	bhi.n	8005424 <_free_r+0x1c4>
 8005416:	0c8b      	lsrs	r3, r1, #18
 8005418:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 800541c:	00e4      	lsls	r4, r4, #3
 800541e:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005422:	e75c      	b.n	80052de <_free_r+0x7e>
 8005424:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005428:	227e      	movs	r2, #126	; 0x7e
 800542a:	e758      	b.n	80052de <_free_r+0x7e>
 800542c:	f041 0201 	orr.w	r2, r1, #1
 8005430:	606a      	str	r2, [r5, #4]
 8005432:	6019      	str	r1, [r3, #0]
 8005434:	e796      	b.n	8005364 <_free_r+0x104>
 8005436:	bf00      	nop
 8005438:	2000044c 	.word	0x2000044c
 800543c:	20000454 	.word	0x20000454
 8005440:	20000858 	.word	0x20000858
 8005444:	20000aa8 	.word	0x20000aa8

08005448 <__sfvwrite_r>:
 8005448:	6893      	ldr	r3, [r2, #8]
 800544a:	2b00      	cmp	r3, #0
 800544c:	f000 80e4 	beq.w	8005618 <__sfvwrite_r+0x1d0>
 8005450:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005454:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005458:	b29b      	uxth	r3, r3
 800545a:	460c      	mov	r4, r1
 800545c:	0719      	lsls	r1, r3, #28
 800545e:	b083      	sub	sp, #12
 8005460:	4682      	mov	sl, r0
 8005462:	4690      	mov	r8, r2
 8005464:	d535      	bpl.n	80054d2 <__sfvwrite_r+0x8a>
 8005466:	6922      	ldr	r2, [r4, #16]
 8005468:	b39a      	cbz	r2, 80054d2 <__sfvwrite_r+0x8a>
 800546a:	f013 0202 	ands.w	r2, r3, #2
 800546e:	f8d8 6000 	ldr.w	r6, [r8]
 8005472:	d03d      	beq.n	80054f0 <__sfvwrite_r+0xa8>
 8005474:	2700      	movs	r7, #0
 8005476:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 800547a:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800547e:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005740 <__sfvwrite_r+0x2f8>
 8005482:	463d      	mov	r5, r7
 8005484:	454d      	cmp	r5, r9
 8005486:	462b      	mov	r3, r5
 8005488:	463a      	mov	r2, r7
 800548a:	bf28      	it	cs
 800548c:	464b      	movcs	r3, r9
 800548e:	4661      	mov	r1, ip
 8005490:	4650      	mov	r0, sl
 8005492:	b1d5      	cbz	r5, 80054ca <__sfvwrite_r+0x82>
 8005494:	47d8      	blx	fp
 8005496:	2800      	cmp	r0, #0
 8005498:	f340 80c6 	ble.w	8005628 <__sfvwrite_r+0x1e0>
 800549c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80054a0:	1a1b      	subs	r3, r3, r0
 80054a2:	4407      	add	r7, r0
 80054a4:	1a2d      	subs	r5, r5, r0
 80054a6:	f8c8 3008 	str.w	r3, [r8, #8]
 80054aa:	2b00      	cmp	r3, #0
 80054ac:	f000 80b0 	beq.w	8005610 <__sfvwrite_r+0x1c8>
 80054b0:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80054b4:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80054b8:	454d      	cmp	r5, r9
 80054ba:	462b      	mov	r3, r5
 80054bc:	463a      	mov	r2, r7
 80054be:	bf28      	it	cs
 80054c0:	464b      	movcs	r3, r9
 80054c2:	4661      	mov	r1, ip
 80054c4:	4650      	mov	r0, sl
 80054c6:	2d00      	cmp	r5, #0
 80054c8:	d1e4      	bne.n	8005494 <__sfvwrite_r+0x4c>
 80054ca:	e9d6 7500 	ldrd	r7, r5, [r6]
 80054ce:	3608      	adds	r6, #8
 80054d0:	e7d8      	b.n	8005484 <__sfvwrite_r+0x3c>
 80054d2:	4621      	mov	r1, r4
 80054d4:	4650      	mov	r0, sl
 80054d6:	f7fe fd03 	bl	8003ee0 <__swsetup_r>
 80054da:	2800      	cmp	r0, #0
 80054dc:	f040 812a 	bne.w	8005734 <__sfvwrite_r+0x2ec>
 80054e0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80054e4:	f8d8 6000 	ldr.w	r6, [r8]
 80054e8:	b29b      	uxth	r3, r3
 80054ea:	f013 0202 	ands.w	r2, r3, #2
 80054ee:	d1c1      	bne.n	8005474 <__sfvwrite_r+0x2c>
 80054f0:	f013 0901 	ands.w	r9, r3, #1
 80054f4:	d15d      	bne.n	80055b2 <__sfvwrite_r+0x16a>
 80054f6:	68a7      	ldr	r7, [r4, #8]
 80054f8:	6820      	ldr	r0, [r4, #0]
 80054fa:	464d      	mov	r5, r9
 80054fc:	2d00      	cmp	r5, #0
 80054fe:	d054      	beq.n	80055aa <__sfvwrite_r+0x162>
 8005500:	059a      	lsls	r2, r3, #22
 8005502:	f140 809b 	bpl.w	800563c <__sfvwrite_r+0x1f4>
 8005506:	42af      	cmp	r7, r5
 8005508:	46bb      	mov	fp, r7
 800550a:	f200 80d8 	bhi.w	80056be <__sfvwrite_r+0x276>
 800550e:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005512:	d02f      	beq.n	8005574 <__sfvwrite_r+0x12c>
 8005514:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005518:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 800551c:	eba0 0b01 	sub.w	fp, r0, r1
 8005520:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005524:	1c68      	adds	r0, r5, #1
 8005526:	107f      	asrs	r7, r7, #1
 8005528:	4458      	add	r0, fp
 800552a:	42b8      	cmp	r0, r7
 800552c:	463a      	mov	r2, r7
 800552e:	bf84      	itt	hi
 8005530:	4607      	movhi	r7, r0
 8005532:	463a      	movhi	r2, r7
 8005534:	055b      	lsls	r3, r3, #21
 8005536:	f140 80d3 	bpl.w	80056e0 <__sfvwrite_r+0x298>
 800553a:	4611      	mov	r1, r2
 800553c:	4650      	mov	r0, sl
 800553e:	f000 f9b9 	bl	80058b4 <_malloc_r>
 8005542:	2800      	cmp	r0, #0
 8005544:	f000 80f0 	beq.w	8005728 <__sfvwrite_r+0x2e0>
 8005548:	465a      	mov	r2, fp
 800554a:	6921      	ldr	r1, [r4, #16]
 800554c:	9001      	str	r0, [sp, #4]
 800554e:	f7fa ffd7 	bl	8000500 <memcpy>
 8005552:	89a2      	ldrh	r2, [r4, #12]
 8005554:	9b01      	ldr	r3, [sp, #4]
 8005556:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 800555a:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800555e:	81a2      	strh	r2, [r4, #12]
 8005560:	eba7 020b 	sub.w	r2, r7, fp
 8005564:	eb03 000b 	add.w	r0, r3, fp
 8005568:	6167      	str	r7, [r4, #20]
 800556a:	6123      	str	r3, [r4, #16]
 800556c:	6020      	str	r0, [r4, #0]
 800556e:	60a2      	str	r2, [r4, #8]
 8005570:	462f      	mov	r7, r5
 8005572:	46ab      	mov	fp, r5
 8005574:	465a      	mov	r2, fp
 8005576:	4649      	mov	r1, r9
 8005578:	f000 fc40 	bl	8005dfc <memmove>
 800557c:	68a2      	ldr	r2, [r4, #8]
 800557e:	6823      	ldr	r3, [r4, #0]
 8005580:	1bd2      	subs	r2, r2, r7
 8005582:	445b      	add	r3, fp
 8005584:	462f      	mov	r7, r5
 8005586:	60a2      	str	r2, [r4, #8]
 8005588:	6023      	str	r3, [r4, #0]
 800558a:	2500      	movs	r5, #0
 800558c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005590:	1bdb      	subs	r3, r3, r7
 8005592:	44b9      	add	r9, r7
 8005594:	f8c8 3008 	str.w	r3, [r8, #8]
 8005598:	2b00      	cmp	r3, #0
 800559a:	d039      	beq.n	8005610 <__sfvwrite_r+0x1c8>
 800559c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80055a0:	68a7      	ldr	r7, [r4, #8]
 80055a2:	6820      	ldr	r0, [r4, #0]
 80055a4:	b29b      	uxth	r3, r3
 80055a6:	2d00      	cmp	r5, #0
 80055a8:	d1aa      	bne.n	8005500 <__sfvwrite_r+0xb8>
 80055aa:	e9d6 9500 	ldrd	r9, r5, [r6]
 80055ae:	3608      	adds	r6, #8
 80055b0:	e7a4      	b.n	80054fc <__sfvwrite_r+0xb4>
 80055b2:	4633      	mov	r3, r6
 80055b4:	4691      	mov	r9, r2
 80055b6:	4610      	mov	r0, r2
 80055b8:	4617      	mov	r7, r2
 80055ba:	464e      	mov	r6, r9
 80055bc:	469b      	mov	fp, r3
 80055be:	2f00      	cmp	r7, #0
 80055c0:	d06b      	beq.n	800569a <__sfvwrite_r+0x252>
 80055c2:	2800      	cmp	r0, #0
 80055c4:	d071      	beq.n	80056aa <__sfvwrite_r+0x262>
 80055c6:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 80055ca:	6820      	ldr	r0, [r4, #0]
 80055cc:	45b9      	cmp	r9, r7
 80055ce:	464b      	mov	r3, r9
 80055d0:	bf28      	it	cs
 80055d2:	463b      	movcs	r3, r7
 80055d4:	4288      	cmp	r0, r1
 80055d6:	d903      	bls.n	80055e0 <__sfvwrite_r+0x198>
 80055d8:	68a5      	ldr	r5, [r4, #8]
 80055da:	4415      	add	r5, r2
 80055dc:	42ab      	cmp	r3, r5
 80055de:	dc71      	bgt.n	80056c4 <__sfvwrite_r+0x27c>
 80055e0:	429a      	cmp	r2, r3
 80055e2:	f300 8093 	bgt.w	800570c <__sfvwrite_r+0x2c4>
 80055e6:	4613      	mov	r3, r2
 80055e8:	6a65      	ldr	r5, [r4, #36]	; 0x24
 80055ea:	69e1      	ldr	r1, [r4, #28]
 80055ec:	4632      	mov	r2, r6
 80055ee:	4650      	mov	r0, sl
 80055f0:	47a8      	blx	r5
 80055f2:	1e05      	subs	r5, r0, #0
 80055f4:	dd18      	ble.n	8005628 <__sfvwrite_r+0x1e0>
 80055f6:	ebb9 0905 	subs.w	r9, r9, r5
 80055fa:	d00f      	beq.n	800561c <__sfvwrite_r+0x1d4>
 80055fc:	2001      	movs	r0, #1
 80055fe:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005602:	1b5b      	subs	r3, r3, r5
 8005604:	442e      	add	r6, r5
 8005606:	1b7f      	subs	r7, r7, r5
 8005608:	f8c8 3008 	str.w	r3, [r8, #8]
 800560c:	2b00      	cmp	r3, #0
 800560e:	d1d6      	bne.n	80055be <__sfvwrite_r+0x176>
 8005610:	2000      	movs	r0, #0
 8005612:	b003      	add	sp, #12
 8005614:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005618:	2000      	movs	r0, #0
 800561a:	4770      	bx	lr
 800561c:	4621      	mov	r1, r4
 800561e:	4650      	mov	r0, sl
 8005620:	f7ff fd20 	bl	8005064 <_fflush_r>
 8005624:	2800      	cmp	r0, #0
 8005626:	d0ea      	beq.n	80055fe <__sfvwrite_r+0x1b6>
 8005628:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800562c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005630:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005634:	81a3      	strh	r3, [r4, #12]
 8005636:	b003      	add	sp, #12
 8005638:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800563c:	6923      	ldr	r3, [r4, #16]
 800563e:	4283      	cmp	r3, r0
 8005640:	d315      	bcc.n	800566e <__sfvwrite_r+0x226>
 8005642:	6961      	ldr	r1, [r4, #20]
 8005644:	42a9      	cmp	r1, r5
 8005646:	d812      	bhi.n	800566e <__sfvwrite_r+0x226>
 8005648:	4b3c      	ldr	r3, [pc, #240]	; (800573c <__sfvwrite_r+0x2f4>)
 800564a:	6a67      	ldr	r7, [r4, #36]	; 0x24
 800564c:	429d      	cmp	r5, r3
 800564e:	bf94      	ite	ls
 8005650:	462b      	movls	r3, r5
 8005652:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005656:	464a      	mov	r2, r9
 8005658:	fb93 f3f1 	sdiv	r3, r3, r1
 800565c:	4650      	mov	r0, sl
 800565e:	fb01 f303 	mul.w	r3, r1, r3
 8005662:	69e1      	ldr	r1, [r4, #28]
 8005664:	47b8      	blx	r7
 8005666:	1e07      	subs	r7, r0, #0
 8005668:	ddde      	ble.n	8005628 <__sfvwrite_r+0x1e0>
 800566a:	1bed      	subs	r5, r5, r7
 800566c:	e78e      	b.n	800558c <__sfvwrite_r+0x144>
 800566e:	42af      	cmp	r7, r5
 8005670:	bf28      	it	cs
 8005672:	462f      	movcs	r7, r5
 8005674:	463a      	mov	r2, r7
 8005676:	4649      	mov	r1, r9
 8005678:	f000 fbc0 	bl	8005dfc <memmove>
 800567c:	68a3      	ldr	r3, [r4, #8]
 800567e:	6822      	ldr	r2, [r4, #0]
 8005680:	1bdb      	subs	r3, r3, r7
 8005682:	443a      	add	r2, r7
 8005684:	60a3      	str	r3, [r4, #8]
 8005686:	6022      	str	r2, [r4, #0]
 8005688:	2b00      	cmp	r3, #0
 800568a:	d1ee      	bne.n	800566a <__sfvwrite_r+0x222>
 800568c:	4621      	mov	r1, r4
 800568e:	4650      	mov	r0, sl
 8005690:	f7ff fce8 	bl	8005064 <_fflush_r>
 8005694:	2800      	cmp	r0, #0
 8005696:	d0e8      	beq.n	800566a <__sfvwrite_r+0x222>
 8005698:	e7c6      	b.n	8005628 <__sfvwrite_r+0x1e0>
 800569a:	f10b 0308 	add.w	r3, fp, #8
 800569e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 80056a2:	469b      	mov	fp, r3
 80056a4:	3308      	adds	r3, #8
 80056a6:	2f00      	cmp	r7, #0
 80056a8:	d0f9      	beq.n	800569e <__sfvwrite_r+0x256>
 80056aa:	463a      	mov	r2, r7
 80056ac:	210a      	movs	r1, #10
 80056ae:	4630      	mov	r0, r6
 80056b0:	f7fb f836 	bl	8000720 <memchr>
 80056b4:	b338      	cbz	r0, 8005706 <__sfvwrite_r+0x2be>
 80056b6:	3001      	adds	r0, #1
 80056b8:	eba0 0906 	sub.w	r9, r0, r6
 80056bc:	e783      	b.n	80055c6 <__sfvwrite_r+0x17e>
 80056be:	462f      	mov	r7, r5
 80056c0:	46ab      	mov	fp, r5
 80056c2:	e757      	b.n	8005574 <__sfvwrite_r+0x12c>
 80056c4:	4631      	mov	r1, r6
 80056c6:	462a      	mov	r2, r5
 80056c8:	f000 fb98 	bl	8005dfc <memmove>
 80056cc:	6823      	ldr	r3, [r4, #0]
 80056ce:	442b      	add	r3, r5
 80056d0:	6023      	str	r3, [r4, #0]
 80056d2:	4621      	mov	r1, r4
 80056d4:	4650      	mov	r0, sl
 80056d6:	f7ff fcc5 	bl	8005064 <_fflush_r>
 80056da:	2800      	cmp	r0, #0
 80056dc:	d08b      	beq.n	80055f6 <__sfvwrite_r+0x1ae>
 80056de:	e7a3      	b.n	8005628 <__sfvwrite_r+0x1e0>
 80056e0:	4650      	mov	r0, sl
 80056e2:	f000 ff05 	bl	80064f0 <_realloc_r>
 80056e6:	4603      	mov	r3, r0
 80056e8:	2800      	cmp	r0, #0
 80056ea:	f47f af39 	bne.w	8005560 <__sfvwrite_r+0x118>
 80056ee:	6921      	ldr	r1, [r4, #16]
 80056f0:	4650      	mov	r0, sl
 80056f2:	f7ff fdb5 	bl	8005260 <_free_r>
 80056f6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80056fa:	220c      	movs	r2, #12
 80056fc:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005700:	f8ca 2000 	str.w	r2, [sl]
 8005704:	e792      	b.n	800562c <__sfvwrite_r+0x1e4>
 8005706:	f107 0901 	add.w	r9, r7, #1
 800570a:	e75c      	b.n	80055c6 <__sfvwrite_r+0x17e>
 800570c:	461a      	mov	r2, r3
 800570e:	4631      	mov	r1, r6
 8005710:	9301      	str	r3, [sp, #4]
 8005712:	f000 fb73 	bl	8005dfc <memmove>
 8005716:	9b01      	ldr	r3, [sp, #4]
 8005718:	68a1      	ldr	r1, [r4, #8]
 800571a:	6822      	ldr	r2, [r4, #0]
 800571c:	1ac9      	subs	r1, r1, r3
 800571e:	441a      	add	r2, r3
 8005720:	60a1      	str	r1, [r4, #8]
 8005722:	6022      	str	r2, [r4, #0]
 8005724:	461d      	mov	r5, r3
 8005726:	e766      	b.n	80055f6 <__sfvwrite_r+0x1ae>
 8005728:	230c      	movs	r3, #12
 800572a:	f8ca 3000 	str.w	r3, [sl]
 800572e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005732:	e77b      	b.n	800562c <__sfvwrite_r+0x1e4>
 8005734:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005738:	e76b      	b.n	8005612 <__sfvwrite_r+0x1ca>
 800573a:	bf00      	nop
 800573c:	7ffffffe 	.word	0x7ffffffe
 8005740:	7ffffc00 	.word	0x7ffffc00

08005744 <_fwalk_reent>:
 8005744:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005748:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 800574c:	d01f      	beq.n	800578e <_fwalk_reent+0x4a>
 800574e:	4688      	mov	r8, r1
 8005750:	4606      	mov	r6, r0
 8005752:	f04f 0900 	mov.w	r9, #0
 8005756:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 800575a:	3d01      	subs	r5, #1
 800575c:	d411      	bmi.n	8005782 <_fwalk_reent+0x3e>
 800575e:	89a3      	ldrh	r3, [r4, #12]
 8005760:	2b01      	cmp	r3, #1
 8005762:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005766:	4621      	mov	r1, r4
 8005768:	4630      	mov	r0, r6
 800576a:	d906      	bls.n	800577a <_fwalk_reent+0x36>
 800576c:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005770:	3301      	adds	r3, #1
 8005772:	d002      	beq.n	800577a <_fwalk_reent+0x36>
 8005774:	47c0      	blx	r8
 8005776:	ea49 0900 	orr.w	r9, r9, r0
 800577a:	1c6b      	adds	r3, r5, #1
 800577c:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005780:	d1ed      	bne.n	800575e <_fwalk_reent+0x1a>
 8005782:	683f      	ldr	r7, [r7, #0]
 8005784:	2f00      	cmp	r7, #0
 8005786:	d1e6      	bne.n	8005756 <_fwalk_reent+0x12>
 8005788:	4648      	mov	r0, r9
 800578a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800578e:	46b9      	mov	r9, r7
 8005790:	4648      	mov	r0, r9
 8005792:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005796:	bf00      	nop

08005798 <_localeconv_r>:
 8005798:	4a04      	ldr	r2, [pc, #16]	; (80057ac <_localeconv_r+0x14>)
 800579a:	4b05      	ldr	r3, [pc, #20]	; (80057b0 <_localeconv_r+0x18>)
 800579c:	6812      	ldr	r2, [r2, #0]
 800579e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 80057a0:	2800      	cmp	r0, #0
 80057a2:	bf08      	it	eq
 80057a4:	4618      	moveq	r0, r3
 80057a6:	30f0      	adds	r0, #240	; 0xf0
 80057a8:	4770      	bx	lr
 80057aa:	bf00      	nop
 80057ac:	20000018 	.word	0x20000018
 80057b0:	2000085c 	.word	0x2000085c

080057b4 <__retarget_lock_init_recursive>:
 80057b4:	4770      	bx	lr
 80057b6:	bf00      	nop

080057b8 <__retarget_lock_close_recursive>:
 80057b8:	4770      	bx	lr
 80057ba:	bf00      	nop

080057bc <__retarget_lock_acquire_recursive>:
 80057bc:	4770      	bx	lr
 80057be:	bf00      	nop

080057c0 <__retarget_lock_release_recursive>:
 80057c0:	4770      	bx	lr
 80057c2:	bf00      	nop

080057c4 <__swhatbuf_r>:
 80057c4:	b570      	push	{r4, r5, r6, lr}
 80057c6:	460c      	mov	r4, r1
 80057c8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80057cc:	2900      	cmp	r1, #0
 80057ce:	b096      	sub	sp, #88	; 0x58
 80057d0:	4615      	mov	r5, r2
 80057d2:	461e      	mov	r6, r3
 80057d4:	da0f      	bge.n	80057f6 <__swhatbuf_r+0x32>
 80057d6:	89a2      	ldrh	r2, [r4, #12]
 80057d8:	2300      	movs	r3, #0
 80057da:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 80057de:	6033      	str	r3, [r6, #0]
 80057e0:	d104      	bne.n	80057ec <__swhatbuf_r+0x28>
 80057e2:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80057e6:	602b      	str	r3, [r5, #0]
 80057e8:	b016      	add	sp, #88	; 0x58
 80057ea:	bd70      	pop	{r4, r5, r6, pc}
 80057ec:	2240      	movs	r2, #64	; 0x40
 80057ee:	4618      	mov	r0, r3
 80057f0:	602a      	str	r2, [r5, #0]
 80057f2:	b016      	add	sp, #88	; 0x58
 80057f4:	bd70      	pop	{r4, r5, r6, pc}
 80057f6:	466a      	mov	r2, sp
 80057f8:	f001 fad0 	bl	8006d9c <_fstat_r>
 80057fc:	2800      	cmp	r0, #0
 80057fe:	dbea      	blt.n	80057d6 <__swhatbuf_r+0x12>
 8005800:	9b01      	ldr	r3, [sp, #4]
 8005802:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005806:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 800580a:	fab3 f383 	clz	r3, r3
 800580e:	095b      	lsrs	r3, r3, #5
 8005810:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005814:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005818:	6033      	str	r3, [r6, #0]
 800581a:	602a      	str	r2, [r5, #0]
 800581c:	b016      	add	sp, #88	; 0x58
 800581e:	bd70      	pop	{r4, r5, r6, pc}

08005820 <__smakebuf_r>:
 8005820:	898a      	ldrh	r2, [r1, #12]
 8005822:	0792      	lsls	r2, r2, #30
 8005824:	460b      	mov	r3, r1
 8005826:	d506      	bpl.n	8005836 <__smakebuf_r+0x16>
 8005828:	f101 0243 	add.w	r2, r1, #67	; 0x43
 800582c:	2101      	movs	r1, #1
 800582e:	601a      	str	r2, [r3, #0]
 8005830:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005834:	4770      	bx	lr
 8005836:	b570      	push	{r4, r5, r6, lr}
 8005838:	b082      	sub	sp, #8
 800583a:	ab01      	add	r3, sp, #4
 800583c:	466a      	mov	r2, sp
 800583e:	460c      	mov	r4, r1
 8005840:	4605      	mov	r5, r0
 8005842:	f7ff ffbf 	bl	80057c4 <__swhatbuf_r>
 8005846:	9900      	ldr	r1, [sp, #0]
 8005848:	4606      	mov	r6, r0
 800584a:	4628      	mov	r0, r5
 800584c:	f000 f832 	bl	80058b4 <_malloc_r>
 8005850:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005854:	b1d8      	cbz	r0, 800588e <__smakebuf_r+0x6e>
 8005856:	4916      	ldr	r1, [pc, #88]	; (80058b0 <__smakebuf_r+0x90>)
 8005858:	63e9      	str	r1, [r5, #60]	; 0x3c
 800585a:	9a01      	ldr	r2, [sp, #4]
 800585c:	9900      	ldr	r1, [sp, #0]
 800585e:	6020      	str	r0, [r4, #0]
 8005860:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005864:	81a3      	strh	r3, [r4, #12]
 8005866:	e9c4 0104 	strd	r0, r1, [r4, #16]
 800586a:	b91a      	cbnz	r2, 8005874 <__smakebuf_r+0x54>
 800586c:	4333      	orrs	r3, r6
 800586e:	81a3      	strh	r3, [r4, #12]
 8005870:	b002      	add	sp, #8
 8005872:	bd70      	pop	{r4, r5, r6, pc}
 8005874:	4628      	mov	r0, r5
 8005876:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800587a:	f001 faa3 	bl	8006dc4 <_isatty_r>
 800587e:	b1a0      	cbz	r0, 80058aa <__smakebuf_r+0x8a>
 8005880:	89a3      	ldrh	r3, [r4, #12]
 8005882:	f023 0303 	bic.w	r3, r3, #3
 8005886:	f043 0301 	orr.w	r3, r3, #1
 800588a:	b21b      	sxth	r3, r3
 800588c:	e7ee      	b.n	800586c <__smakebuf_r+0x4c>
 800588e:	059a      	lsls	r2, r3, #22
 8005890:	d4ee      	bmi.n	8005870 <__smakebuf_r+0x50>
 8005892:	f023 0303 	bic.w	r3, r3, #3
 8005896:	f104 0243 	add.w	r2, r4, #67	; 0x43
 800589a:	f043 0302 	orr.w	r3, r3, #2
 800589e:	2101      	movs	r1, #1
 80058a0:	81a3      	strh	r3, [r4, #12]
 80058a2:	6022      	str	r2, [r4, #0]
 80058a4:	e9c4 2104 	strd	r2, r1, [r4, #16]
 80058a8:	e7e2      	b.n	8005870 <__smakebuf_r+0x50>
 80058aa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80058ae:	e7dd      	b.n	800586c <__smakebuf_r+0x4c>
 80058b0:	08005111 	.word	0x08005111

080058b4 <_malloc_r>:
 80058b4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80058b8:	f101 050b 	add.w	r5, r1, #11
 80058bc:	2d16      	cmp	r5, #22
 80058be:	b083      	sub	sp, #12
 80058c0:	4606      	mov	r6, r0
 80058c2:	d823      	bhi.n	800590c <_malloc_r+0x58>
 80058c4:	2910      	cmp	r1, #16
 80058c6:	f200 80b9 	bhi.w	8005a3c <_malloc_r+0x188>
 80058ca:	f000 fafb 	bl	8005ec4 <__malloc_lock>
 80058ce:	2510      	movs	r5, #16
 80058d0:	2318      	movs	r3, #24
 80058d2:	2002      	movs	r0, #2
 80058d4:	4fc5      	ldr	r7, [pc, #788]	; (8005bec <_malloc_r+0x338>)
 80058d6:	443b      	add	r3, r7
 80058d8:	f1a3 0208 	sub.w	r2, r3, #8
 80058dc:	685c      	ldr	r4, [r3, #4]
 80058de:	4294      	cmp	r4, r2
 80058e0:	f000 8166 	beq.w	8005bb0 <_malloc_r+0x2fc>
 80058e4:	6863      	ldr	r3, [r4, #4]
 80058e6:	f023 0303 	bic.w	r3, r3, #3
 80058ea:	4423      	add	r3, r4
 80058ec:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 80058f0:	685a      	ldr	r2, [r3, #4]
 80058f2:	60e9      	str	r1, [r5, #12]
 80058f4:	f042 0201 	orr.w	r2, r2, #1
 80058f8:	608d      	str	r5, [r1, #8]
 80058fa:	4630      	mov	r0, r6
 80058fc:	605a      	str	r2, [r3, #4]
 80058fe:	f000 fae7 	bl	8005ed0 <__malloc_unlock>
 8005902:	3408      	adds	r4, #8
 8005904:	4620      	mov	r0, r4
 8005906:	b003      	add	sp, #12
 8005908:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800590c:	f035 0507 	bics.w	r5, r5, #7
 8005910:	f100 8094 	bmi.w	8005a3c <_malloc_r+0x188>
 8005914:	42a9      	cmp	r1, r5
 8005916:	f200 8091 	bhi.w	8005a3c <_malloc_r+0x188>
 800591a:	f000 fad3 	bl	8005ec4 <__malloc_lock>
 800591e:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005922:	f0c0 8183 	bcc.w	8005c2c <_malloc_r+0x378>
 8005926:	0a6b      	lsrs	r3, r5, #9
 8005928:	f000 808f 	beq.w	8005a4a <_malloc_r+0x196>
 800592c:	2b04      	cmp	r3, #4
 800592e:	f200 8146 	bhi.w	8005bbe <_malloc_r+0x30a>
 8005932:	09ab      	lsrs	r3, r5, #6
 8005934:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005938:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 800593c:	00c3      	lsls	r3, r0, #3
 800593e:	4fab      	ldr	r7, [pc, #684]	; (8005bec <_malloc_r+0x338>)
 8005940:	443b      	add	r3, r7
 8005942:	f1a3 0108 	sub.w	r1, r3, #8
 8005946:	685c      	ldr	r4, [r3, #4]
 8005948:	42a1      	cmp	r1, r4
 800594a:	d106      	bne.n	800595a <_malloc_r+0xa6>
 800594c:	e00c      	b.n	8005968 <_malloc_r+0xb4>
 800594e:	2a00      	cmp	r2, #0
 8005950:	f280 811d 	bge.w	8005b8e <_malloc_r+0x2da>
 8005954:	68e4      	ldr	r4, [r4, #12]
 8005956:	42a1      	cmp	r1, r4
 8005958:	d006      	beq.n	8005968 <_malloc_r+0xb4>
 800595a:	6863      	ldr	r3, [r4, #4]
 800595c:	f023 0303 	bic.w	r3, r3, #3
 8005960:	1b5a      	subs	r2, r3, r5
 8005962:	2a0f      	cmp	r2, #15
 8005964:	ddf3      	ble.n	800594e <_malloc_r+0x9a>
 8005966:	4660      	mov	r0, ip
 8005968:	693c      	ldr	r4, [r7, #16]
 800596a:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005c00 <_malloc_r+0x34c>
 800596e:	4564      	cmp	r4, ip
 8005970:	d071      	beq.n	8005a56 <_malloc_r+0x1a2>
 8005972:	6863      	ldr	r3, [r4, #4]
 8005974:	f023 0303 	bic.w	r3, r3, #3
 8005978:	1b5a      	subs	r2, r3, r5
 800597a:	2a0f      	cmp	r2, #15
 800597c:	f300 8144 	bgt.w	8005c08 <_malloc_r+0x354>
 8005980:	2a00      	cmp	r2, #0
 8005982:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005986:	f280 8126 	bge.w	8005bd6 <_malloc_r+0x322>
 800598a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800598e:	f080 8169 	bcs.w	8005c64 <_malloc_r+0x3b0>
 8005992:	08db      	lsrs	r3, r3, #3
 8005994:	1c59      	adds	r1, r3, #1
 8005996:	687a      	ldr	r2, [r7, #4]
 8005998:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 800599c:	f8c4 8008 	str.w	r8, [r4, #8]
 80059a0:	f04f 0e01 	mov.w	lr, #1
 80059a4:	109b      	asrs	r3, r3, #2
 80059a6:	fa0e f303 	lsl.w	r3, lr, r3
 80059aa:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 80059ae:	4313      	orrs	r3, r2
 80059b0:	f1ae 0208 	sub.w	r2, lr, #8
 80059b4:	60e2      	str	r2, [r4, #12]
 80059b6:	607b      	str	r3, [r7, #4]
 80059b8:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 80059bc:	f8c8 400c 	str.w	r4, [r8, #12]
 80059c0:	1082      	asrs	r2, r0, #2
 80059c2:	2401      	movs	r4, #1
 80059c4:	4094      	lsls	r4, r2
 80059c6:	429c      	cmp	r4, r3
 80059c8:	d84b      	bhi.n	8005a62 <_malloc_r+0x1ae>
 80059ca:	421c      	tst	r4, r3
 80059cc:	d106      	bne.n	80059dc <_malloc_r+0x128>
 80059ce:	f020 0003 	bic.w	r0, r0, #3
 80059d2:	0064      	lsls	r4, r4, #1
 80059d4:	421c      	tst	r4, r3
 80059d6:	f100 0004 	add.w	r0, r0, #4
 80059da:	d0fa      	beq.n	80059d2 <_malloc_r+0x11e>
 80059dc:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 80059e0:	46ce      	mov	lr, r9
 80059e2:	4680      	mov	r8, r0
 80059e4:	f8de 300c 	ldr.w	r3, [lr, #12]
 80059e8:	459e      	cmp	lr, r3
 80059ea:	d107      	bne.n	80059fc <_malloc_r+0x148>
 80059ec:	e122      	b.n	8005c34 <_malloc_r+0x380>
 80059ee:	2a00      	cmp	r2, #0
 80059f0:	f280 8129 	bge.w	8005c46 <_malloc_r+0x392>
 80059f4:	68db      	ldr	r3, [r3, #12]
 80059f6:	459e      	cmp	lr, r3
 80059f8:	f000 811c 	beq.w	8005c34 <_malloc_r+0x380>
 80059fc:	6859      	ldr	r1, [r3, #4]
 80059fe:	f021 0103 	bic.w	r1, r1, #3
 8005a02:	1b4a      	subs	r2, r1, r5
 8005a04:	2a0f      	cmp	r2, #15
 8005a06:	ddf2      	ble.n	80059ee <_malloc_r+0x13a>
 8005a08:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005a0c:	195c      	adds	r4, r3, r5
 8005a0e:	f045 0501 	orr.w	r5, r5, #1
 8005a12:	605d      	str	r5, [r3, #4]
 8005a14:	f042 0501 	orr.w	r5, r2, #1
 8005a18:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005a1c:	4630      	mov	r0, r6
 8005a1e:	f8ce 8008 	str.w	r8, [lr, #8]
 8005a22:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005a26:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005a2a:	6065      	str	r5, [r4, #4]
 8005a2c:	505a      	str	r2, [r3, r1]
 8005a2e:	9301      	str	r3, [sp, #4]
 8005a30:	f000 fa4e 	bl	8005ed0 <__malloc_unlock>
 8005a34:	9b01      	ldr	r3, [sp, #4]
 8005a36:	f103 0408 	add.w	r4, r3, #8
 8005a3a:	e763      	b.n	8005904 <_malloc_r+0x50>
 8005a3c:	2400      	movs	r4, #0
 8005a3e:	230c      	movs	r3, #12
 8005a40:	4620      	mov	r0, r4
 8005a42:	6033      	str	r3, [r6, #0]
 8005a44:	b003      	add	sp, #12
 8005a46:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a4a:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005a4e:	2040      	movs	r0, #64	; 0x40
 8005a50:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005a54:	e773      	b.n	800593e <_malloc_r+0x8a>
 8005a56:	687b      	ldr	r3, [r7, #4]
 8005a58:	1082      	asrs	r2, r0, #2
 8005a5a:	2401      	movs	r4, #1
 8005a5c:	4094      	lsls	r4, r2
 8005a5e:	429c      	cmp	r4, r3
 8005a60:	d9b3      	bls.n	80059ca <_malloc_r+0x116>
 8005a62:	68bc      	ldr	r4, [r7, #8]
 8005a64:	6863      	ldr	r3, [r4, #4]
 8005a66:	f023 0903 	bic.w	r9, r3, #3
 8005a6a:	45a9      	cmp	r9, r5
 8005a6c:	d303      	bcc.n	8005a76 <_malloc_r+0x1c2>
 8005a6e:	eba9 0305 	sub.w	r3, r9, r5
 8005a72:	2b0f      	cmp	r3, #15
 8005a74:	dc7b      	bgt.n	8005b6e <_malloc_r+0x2ba>
 8005a76:	4b5e      	ldr	r3, [pc, #376]	; (8005bf0 <_malloc_r+0x33c>)
 8005a78:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005c04 <_malloc_r+0x350>
 8005a7c:	681a      	ldr	r2, [r3, #0]
 8005a7e:	f8da 3000 	ldr.w	r3, [sl]
 8005a82:	3301      	adds	r3, #1
 8005a84:	eb05 0802 	add.w	r8, r5, r2
 8005a88:	f000 8148 	beq.w	8005d1c <_malloc_r+0x468>
 8005a8c:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005a90:	f108 080f 	add.w	r8, r8, #15
 8005a94:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005a98:	f028 080f 	bic.w	r8, r8, #15
 8005a9c:	4641      	mov	r1, r8
 8005a9e:	4630      	mov	r0, r6
 8005aa0:	f000 ff08 	bl	80068b4 <_sbrk_r>
 8005aa4:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005aa8:	4683      	mov	fp, r0
 8005aaa:	f000 8104 	beq.w	8005cb6 <_malloc_r+0x402>
 8005aae:	eb04 0009 	add.w	r0, r4, r9
 8005ab2:	4558      	cmp	r0, fp
 8005ab4:	f200 80fd 	bhi.w	8005cb2 <_malloc_r+0x3fe>
 8005ab8:	4a4e      	ldr	r2, [pc, #312]	; (8005bf4 <_malloc_r+0x340>)
 8005aba:	6813      	ldr	r3, [r2, #0]
 8005abc:	4443      	add	r3, r8
 8005abe:	6013      	str	r3, [r2, #0]
 8005ac0:	f000 814d 	beq.w	8005d5e <_malloc_r+0x4aa>
 8005ac4:	f8da 1000 	ldr.w	r1, [sl]
 8005ac8:	3101      	adds	r1, #1
 8005aca:	bf1b      	ittet	ne
 8005acc:	ebab 0000 	subne.w	r0, fp, r0
 8005ad0:	181b      	addne	r3, r3, r0
 8005ad2:	f8ca b000 	streq.w	fp, [sl]
 8005ad6:	6013      	strne	r3, [r2, #0]
 8005ad8:	f01b 0307 	ands.w	r3, fp, #7
 8005adc:	f000 8134 	beq.w	8005d48 <_malloc_r+0x494>
 8005ae0:	f1c3 0108 	rsb	r1, r3, #8
 8005ae4:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005ae8:	448b      	add	fp, r1
 8005aea:	3308      	adds	r3, #8
 8005aec:	44d8      	add	r8, fp
 8005aee:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005af2:	eba3 0808 	sub.w	r8, r3, r8
 8005af6:	4641      	mov	r1, r8
 8005af8:	4630      	mov	r0, r6
 8005afa:	9201      	str	r2, [sp, #4]
 8005afc:	f000 feda 	bl	80068b4 <_sbrk_r>
 8005b00:	1c43      	adds	r3, r0, #1
 8005b02:	9a01      	ldr	r2, [sp, #4]
 8005b04:	f000 8146 	beq.w	8005d94 <_malloc_r+0x4e0>
 8005b08:	eba0 010b 	sub.w	r1, r0, fp
 8005b0c:	4441      	add	r1, r8
 8005b0e:	f041 0101 	orr.w	r1, r1, #1
 8005b12:	6813      	ldr	r3, [r2, #0]
 8005b14:	f8c7 b008 	str.w	fp, [r7, #8]
 8005b18:	4443      	add	r3, r8
 8005b1a:	42bc      	cmp	r4, r7
 8005b1c:	f8cb 1004 	str.w	r1, [fp, #4]
 8005b20:	6013      	str	r3, [r2, #0]
 8005b22:	d015      	beq.n	8005b50 <_malloc_r+0x29c>
 8005b24:	f1b9 0f0f 	cmp.w	r9, #15
 8005b28:	f240 8130 	bls.w	8005d8c <_malloc_r+0x4d8>
 8005b2c:	6860      	ldr	r0, [r4, #4]
 8005b2e:	f1a9 010c 	sub.w	r1, r9, #12
 8005b32:	f021 0107 	bic.w	r1, r1, #7
 8005b36:	f000 0001 	and.w	r0, r0, #1
 8005b3a:	eb04 0c01 	add.w	ip, r4, r1
 8005b3e:	4308      	orrs	r0, r1
 8005b40:	f04f 0e05 	mov.w	lr, #5
 8005b44:	290f      	cmp	r1, #15
 8005b46:	6060      	str	r0, [r4, #4]
 8005b48:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005b4c:	f200 813a 	bhi.w	8005dc4 <_malloc_r+0x510>
 8005b50:	4a29      	ldr	r2, [pc, #164]	; (8005bf8 <_malloc_r+0x344>)
 8005b52:	482a      	ldr	r0, [pc, #168]	; (8005bfc <_malloc_r+0x348>)
 8005b54:	6811      	ldr	r1, [r2, #0]
 8005b56:	68bc      	ldr	r4, [r7, #8]
 8005b58:	428b      	cmp	r3, r1
 8005b5a:	6801      	ldr	r1, [r0, #0]
 8005b5c:	bf88      	it	hi
 8005b5e:	6013      	strhi	r3, [r2, #0]
 8005b60:	6862      	ldr	r2, [r4, #4]
 8005b62:	428b      	cmp	r3, r1
 8005b64:	f022 0203 	bic.w	r2, r2, #3
 8005b68:	bf88      	it	hi
 8005b6a:	6003      	strhi	r3, [r0, #0]
 8005b6c:	e0a7      	b.n	8005cbe <_malloc_r+0x40a>
 8005b6e:	1962      	adds	r2, r4, r5
 8005b70:	f043 0301 	orr.w	r3, r3, #1
 8005b74:	f045 0501 	orr.w	r5, r5, #1
 8005b78:	6065      	str	r5, [r4, #4]
 8005b7a:	4630      	mov	r0, r6
 8005b7c:	60ba      	str	r2, [r7, #8]
 8005b7e:	6053      	str	r3, [r2, #4]
 8005b80:	f000 f9a6 	bl	8005ed0 <__malloc_unlock>
 8005b84:	3408      	adds	r4, #8
 8005b86:	4620      	mov	r0, r4
 8005b88:	b003      	add	sp, #12
 8005b8a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b8e:	4423      	add	r3, r4
 8005b90:	68e1      	ldr	r1, [r4, #12]
 8005b92:	685a      	ldr	r2, [r3, #4]
 8005b94:	68a5      	ldr	r5, [r4, #8]
 8005b96:	f042 0201 	orr.w	r2, r2, #1
 8005b9a:	60e9      	str	r1, [r5, #12]
 8005b9c:	4630      	mov	r0, r6
 8005b9e:	608d      	str	r5, [r1, #8]
 8005ba0:	605a      	str	r2, [r3, #4]
 8005ba2:	f000 f995 	bl	8005ed0 <__malloc_unlock>
 8005ba6:	3408      	adds	r4, #8
 8005ba8:	4620      	mov	r0, r4
 8005baa:	b003      	add	sp, #12
 8005bac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005bb0:	68dc      	ldr	r4, [r3, #12]
 8005bb2:	42a3      	cmp	r3, r4
 8005bb4:	bf08      	it	eq
 8005bb6:	3002      	addeq	r0, #2
 8005bb8:	f43f aed6 	beq.w	8005968 <_malloc_r+0xb4>
 8005bbc:	e692      	b.n	80058e4 <_malloc_r+0x30>
 8005bbe:	2b14      	cmp	r3, #20
 8005bc0:	d971      	bls.n	8005ca6 <_malloc_r+0x3f2>
 8005bc2:	2b54      	cmp	r3, #84	; 0x54
 8005bc4:	f200 80ad 	bhi.w	8005d22 <_malloc_r+0x46e>
 8005bc8:	0b2b      	lsrs	r3, r5, #12
 8005bca:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005bce:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005bd2:	00c3      	lsls	r3, r0, #3
 8005bd4:	e6b3      	b.n	800593e <_malloc_r+0x8a>
 8005bd6:	4423      	add	r3, r4
 8005bd8:	4630      	mov	r0, r6
 8005bda:	685a      	ldr	r2, [r3, #4]
 8005bdc:	f042 0201 	orr.w	r2, r2, #1
 8005be0:	605a      	str	r2, [r3, #4]
 8005be2:	3408      	adds	r4, #8
 8005be4:	f000 f974 	bl	8005ed0 <__malloc_unlock>
 8005be8:	e68c      	b.n	8005904 <_malloc_r+0x50>
 8005bea:	bf00      	nop
 8005bec:	2000044c 	.word	0x2000044c
 8005bf0:	20000aa8 	.word	0x20000aa8
 8005bf4:	20000a78 	.word	0x20000a78
 8005bf8:	20000aa0 	.word	0x20000aa0
 8005bfc:	20000aa4 	.word	0x20000aa4
 8005c00:	20000454 	.word	0x20000454
 8005c04:	20000854 	.word	0x20000854
 8005c08:	1961      	adds	r1, r4, r5
 8005c0a:	f045 0e01 	orr.w	lr, r5, #1
 8005c0e:	f042 0501 	orr.w	r5, r2, #1
 8005c12:	f8c4 e004 	str.w	lr, [r4, #4]
 8005c16:	4630      	mov	r0, r6
 8005c18:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005c1c:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005c20:	604d      	str	r5, [r1, #4]
 8005c22:	50e2      	str	r2, [r4, r3]
 8005c24:	f000 f954 	bl	8005ed0 <__malloc_unlock>
 8005c28:	3408      	adds	r4, #8
 8005c2a:	e66b      	b.n	8005904 <_malloc_r+0x50>
 8005c2c:	08e8      	lsrs	r0, r5, #3
 8005c2e:	f105 0308 	add.w	r3, r5, #8
 8005c32:	e64f      	b.n	80058d4 <_malloc_r+0x20>
 8005c34:	f108 0801 	add.w	r8, r8, #1
 8005c38:	f018 0f03 	tst.w	r8, #3
 8005c3c:	f10e 0e08 	add.w	lr, lr, #8
 8005c40:	f47f aed0 	bne.w	80059e4 <_malloc_r+0x130>
 8005c44:	e052      	b.n	8005cec <_malloc_r+0x438>
 8005c46:	4419      	add	r1, r3
 8005c48:	461c      	mov	r4, r3
 8005c4a:	684a      	ldr	r2, [r1, #4]
 8005c4c:	68db      	ldr	r3, [r3, #12]
 8005c4e:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005c52:	f042 0201 	orr.w	r2, r2, #1
 8005c56:	604a      	str	r2, [r1, #4]
 8005c58:	4630      	mov	r0, r6
 8005c5a:	60eb      	str	r3, [r5, #12]
 8005c5c:	609d      	str	r5, [r3, #8]
 8005c5e:	f000 f937 	bl	8005ed0 <__malloc_unlock>
 8005c62:	e64f      	b.n	8005904 <_malloc_r+0x50>
 8005c64:	0a5a      	lsrs	r2, r3, #9
 8005c66:	2a04      	cmp	r2, #4
 8005c68:	d935      	bls.n	8005cd6 <_malloc_r+0x422>
 8005c6a:	2a14      	cmp	r2, #20
 8005c6c:	d86f      	bhi.n	8005d4e <_malloc_r+0x49a>
 8005c6e:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005c72:	00c9      	lsls	r1, r1, #3
 8005c74:	325b      	adds	r2, #91	; 0x5b
 8005c76:	eb07 0e01 	add.w	lr, r7, r1
 8005c7a:	5879      	ldr	r1, [r7, r1]
 8005c7c:	f1ae 0e08 	sub.w	lr, lr, #8
 8005c80:	458e      	cmp	lr, r1
 8005c82:	d058      	beq.n	8005d36 <_malloc_r+0x482>
 8005c84:	684a      	ldr	r2, [r1, #4]
 8005c86:	f022 0203 	bic.w	r2, r2, #3
 8005c8a:	429a      	cmp	r2, r3
 8005c8c:	d902      	bls.n	8005c94 <_malloc_r+0x3e0>
 8005c8e:	6889      	ldr	r1, [r1, #8]
 8005c90:	458e      	cmp	lr, r1
 8005c92:	d1f7      	bne.n	8005c84 <_malloc_r+0x3d0>
 8005c94:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005c98:	687b      	ldr	r3, [r7, #4]
 8005c9a:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005c9e:	f8ce 4008 	str.w	r4, [lr, #8]
 8005ca2:	60cc      	str	r4, [r1, #12]
 8005ca4:	e68c      	b.n	80059c0 <_malloc_r+0x10c>
 8005ca6:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005caa:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005cae:	00c3      	lsls	r3, r0, #3
 8005cb0:	e645      	b.n	800593e <_malloc_r+0x8a>
 8005cb2:	42bc      	cmp	r4, r7
 8005cb4:	d072      	beq.n	8005d9c <_malloc_r+0x4e8>
 8005cb6:	68bc      	ldr	r4, [r7, #8]
 8005cb8:	6862      	ldr	r2, [r4, #4]
 8005cba:	f022 0203 	bic.w	r2, r2, #3
 8005cbe:	4295      	cmp	r5, r2
 8005cc0:	eba2 0305 	sub.w	r3, r2, r5
 8005cc4:	d802      	bhi.n	8005ccc <_malloc_r+0x418>
 8005cc6:	2b0f      	cmp	r3, #15
 8005cc8:	f73f af51 	bgt.w	8005b6e <_malloc_r+0x2ba>
 8005ccc:	4630      	mov	r0, r6
 8005cce:	f000 f8ff 	bl	8005ed0 <__malloc_unlock>
 8005cd2:	2400      	movs	r4, #0
 8005cd4:	e616      	b.n	8005904 <_malloc_r+0x50>
 8005cd6:	099a      	lsrs	r2, r3, #6
 8005cd8:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005cdc:	00c9      	lsls	r1, r1, #3
 8005cde:	3238      	adds	r2, #56	; 0x38
 8005ce0:	e7c9      	b.n	8005c76 <_malloc_r+0x3c2>
 8005ce2:	f8d9 9000 	ldr.w	r9, [r9]
 8005ce6:	4599      	cmp	r9, r3
 8005ce8:	f040 8083 	bne.w	8005df2 <_malloc_r+0x53e>
 8005cec:	f010 0f03 	tst.w	r0, #3
 8005cf0:	f1a9 0308 	sub.w	r3, r9, #8
 8005cf4:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005cf8:	d1f3      	bne.n	8005ce2 <_malloc_r+0x42e>
 8005cfa:	687b      	ldr	r3, [r7, #4]
 8005cfc:	ea23 0304 	bic.w	r3, r3, r4
 8005d00:	607b      	str	r3, [r7, #4]
 8005d02:	0064      	lsls	r4, r4, #1
 8005d04:	429c      	cmp	r4, r3
 8005d06:	f63f aeac 	bhi.w	8005a62 <_malloc_r+0x1ae>
 8005d0a:	b91c      	cbnz	r4, 8005d14 <_malloc_r+0x460>
 8005d0c:	e6a9      	b.n	8005a62 <_malloc_r+0x1ae>
 8005d0e:	0064      	lsls	r4, r4, #1
 8005d10:	f108 0804 	add.w	r8, r8, #4
 8005d14:	421c      	tst	r4, r3
 8005d16:	d0fa      	beq.n	8005d0e <_malloc_r+0x45a>
 8005d18:	4640      	mov	r0, r8
 8005d1a:	e65f      	b.n	80059dc <_malloc_r+0x128>
 8005d1c:	f108 0810 	add.w	r8, r8, #16
 8005d20:	e6bc      	b.n	8005a9c <_malloc_r+0x1e8>
 8005d22:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005d26:	d826      	bhi.n	8005d76 <_malloc_r+0x4c2>
 8005d28:	0beb      	lsrs	r3, r5, #15
 8005d2a:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005d2e:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005d32:	00c3      	lsls	r3, r0, #3
 8005d34:	e603      	b.n	800593e <_malloc_r+0x8a>
 8005d36:	687b      	ldr	r3, [r7, #4]
 8005d38:	1092      	asrs	r2, r2, #2
 8005d3a:	f04f 0801 	mov.w	r8, #1
 8005d3e:	fa08 f202 	lsl.w	r2, r8, r2
 8005d42:	4313      	orrs	r3, r2
 8005d44:	607b      	str	r3, [r7, #4]
 8005d46:	e7a8      	b.n	8005c9a <_malloc_r+0x3e6>
 8005d48:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005d4c:	e6ce      	b.n	8005aec <_malloc_r+0x238>
 8005d4e:	2a54      	cmp	r2, #84	; 0x54
 8005d50:	d829      	bhi.n	8005da6 <_malloc_r+0x4f2>
 8005d52:	0b1a      	lsrs	r2, r3, #12
 8005d54:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005d58:	00c9      	lsls	r1, r1, #3
 8005d5a:	326e      	adds	r2, #110	; 0x6e
 8005d5c:	e78b      	b.n	8005c76 <_malloc_r+0x3c2>
 8005d5e:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005d62:	2900      	cmp	r1, #0
 8005d64:	f47f aeae 	bne.w	8005ac4 <_malloc_r+0x210>
 8005d68:	eb09 0208 	add.w	r2, r9, r8
 8005d6c:	68b9      	ldr	r1, [r7, #8]
 8005d6e:	f042 0201 	orr.w	r2, r2, #1
 8005d72:	604a      	str	r2, [r1, #4]
 8005d74:	e6ec      	b.n	8005b50 <_malloc_r+0x29c>
 8005d76:	f240 5254 	movw	r2, #1364	; 0x554
 8005d7a:	4293      	cmp	r3, r2
 8005d7c:	d81c      	bhi.n	8005db8 <_malloc_r+0x504>
 8005d7e:	0cab      	lsrs	r3, r5, #18
 8005d80:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005d84:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005d88:	00c3      	lsls	r3, r0, #3
 8005d8a:	e5d8      	b.n	800593e <_malloc_r+0x8a>
 8005d8c:	2301      	movs	r3, #1
 8005d8e:	f8cb 3004 	str.w	r3, [fp, #4]
 8005d92:	e79b      	b.n	8005ccc <_malloc_r+0x418>
 8005d94:	2101      	movs	r1, #1
 8005d96:	f04f 0800 	mov.w	r8, #0
 8005d9a:	e6ba      	b.n	8005b12 <_malloc_r+0x25e>
 8005d9c:	4a16      	ldr	r2, [pc, #88]	; (8005df8 <_malloc_r+0x544>)
 8005d9e:	6813      	ldr	r3, [r2, #0]
 8005da0:	4443      	add	r3, r8
 8005da2:	6013      	str	r3, [r2, #0]
 8005da4:	e68e      	b.n	8005ac4 <_malloc_r+0x210>
 8005da6:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005daa:	d814      	bhi.n	8005dd6 <_malloc_r+0x522>
 8005dac:	0bda      	lsrs	r2, r3, #15
 8005dae:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005db2:	00c9      	lsls	r1, r1, #3
 8005db4:	3277      	adds	r2, #119	; 0x77
 8005db6:	e75e      	b.n	8005c76 <_malloc_r+0x3c2>
 8005db8:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005dbc:	207f      	movs	r0, #127	; 0x7f
 8005dbe:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005dc2:	e5bc      	b.n	800593e <_malloc_r+0x8a>
 8005dc4:	f104 0108 	add.w	r1, r4, #8
 8005dc8:	4630      	mov	r0, r6
 8005dca:	9201      	str	r2, [sp, #4]
 8005dcc:	f7ff fa48 	bl	8005260 <_free_r>
 8005dd0:	9a01      	ldr	r2, [sp, #4]
 8005dd2:	6813      	ldr	r3, [r2, #0]
 8005dd4:	e6bc      	b.n	8005b50 <_malloc_r+0x29c>
 8005dd6:	f240 5154 	movw	r1, #1364	; 0x554
 8005dda:	428a      	cmp	r2, r1
 8005ddc:	d805      	bhi.n	8005dea <_malloc_r+0x536>
 8005dde:	0c9a      	lsrs	r2, r3, #18
 8005de0:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005de4:	00c9      	lsls	r1, r1, #3
 8005de6:	327c      	adds	r2, #124	; 0x7c
 8005de8:	e745      	b.n	8005c76 <_malloc_r+0x3c2>
 8005dea:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005dee:	227e      	movs	r2, #126	; 0x7e
 8005df0:	e741      	b.n	8005c76 <_malloc_r+0x3c2>
 8005df2:	687b      	ldr	r3, [r7, #4]
 8005df4:	e785      	b.n	8005d02 <_malloc_r+0x44e>
 8005df6:	bf00      	nop
 8005df8:	20000a78 	.word	0x20000a78

08005dfc <memmove>:
 8005dfc:	4288      	cmp	r0, r1
 8005dfe:	b4f0      	push	{r4, r5, r6, r7}
 8005e00:	d90d      	bls.n	8005e1e <memmove+0x22>
 8005e02:	188b      	adds	r3, r1, r2
 8005e04:	4283      	cmp	r3, r0
 8005e06:	d90a      	bls.n	8005e1e <memmove+0x22>
 8005e08:	1884      	adds	r4, r0, r2
 8005e0a:	b132      	cbz	r2, 8005e1a <memmove+0x1e>
 8005e0c:	4622      	mov	r2, r4
 8005e0e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005e12:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005e16:	4299      	cmp	r1, r3
 8005e18:	d1f9      	bne.n	8005e0e <memmove+0x12>
 8005e1a:	bcf0      	pop	{r4, r5, r6, r7}
 8005e1c:	4770      	bx	lr
 8005e1e:	2a0f      	cmp	r2, #15
 8005e20:	d949      	bls.n	8005eb6 <memmove+0xba>
 8005e22:	ea40 0301 	orr.w	r3, r0, r1
 8005e26:	079b      	lsls	r3, r3, #30
 8005e28:	d147      	bne.n	8005eba <memmove+0xbe>
 8005e2a:	f1a2 0310 	sub.w	r3, r2, #16
 8005e2e:	091b      	lsrs	r3, r3, #4
 8005e30:	f101 0720 	add.w	r7, r1, #32
 8005e34:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005e38:	f101 0410 	add.w	r4, r1, #16
 8005e3c:	f100 0510 	add.w	r5, r0, #16
 8005e40:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005e44:	f845 6c10 	str.w	r6, [r5, #-16]
 8005e48:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005e4c:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005e50:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005e54:	f845 6c08 	str.w	r6, [r5, #-8]
 8005e58:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005e5c:	f845 6c04 	str.w	r6, [r5, #-4]
 8005e60:	3410      	adds	r4, #16
 8005e62:	42bc      	cmp	r4, r7
 8005e64:	f105 0510 	add.w	r5, r5, #16
 8005e68:	d1ea      	bne.n	8005e40 <memmove+0x44>
 8005e6a:	3301      	adds	r3, #1
 8005e6c:	f002 050f 	and.w	r5, r2, #15
 8005e70:	011b      	lsls	r3, r3, #4
 8005e72:	2d03      	cmp	r5, #3
 8005e74:	4419      	add	r1, r3
 8005e76:	4403      	add	r3, r0
 8005e78:	d921      	bls.n	8005ebe <memmove+0xc2>
 8005e7a:	1f1f      	subs	r7, r3, #4
 8005e7c:	460e      	mov	r6, r1
 8005e7e:	462c      	mov	r4, r5
 8005e80:	3c04      	subs	r4, #4
 8005e82:	f856 cb04 	ldr.w	ip, [r6], #4
 8005e86:	f847 cf04 	str.w	ip, [r7, #4]!
 8005e8a:	2c03      	cmp	r4, #3
 8005e8c:	d8f8      	bhi.n	8005e80 <memmove+0x84>
 8005e8e:	1f2c      	subs	r4, r5, #4
 8005e90:	f024 0403 	bic.w	r4, r4, #3
 8005e94:	3404      	adds	r4, #4
 8005e96:	4423      	add	r3, r4
 8005e98:	4421      	add	r1, r4
 8005e9a:	f002 0203 	and.w	r2, r2, #3
 8005e9e:	2a00      	cmp	r2, #0
 8005ea0:	d0bb      	beq.n	8005e1a <memmove+0x1e>
 8005ea2:	3b01      	subs	r3, #1
 8005ea4:	440a      	add	r2, r1
 8005ea6:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005eaa:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005eae:	4291      	cmp	r1, r2
 8005eb0:	d1f9      	bne.n	8005ea6 <memmove+0xaa>
 8005eb2:	bcf0      	pop	{r4, r5, r6, r7}
 8005eb4:	4770      	bx	lr
 8005eb6:	4603      	mov	r3, r0
 8005eb8:	e7f1      	b.n	8005e9e <memmove+0xa2>
 8005eba:	4603      	mov	r3, r0
 8005ebc:	e7f1      	b.n	8005ea2 <memmove+0xa6>
 8005ebe:	462a      	mov	r2, r5
 8005ec0:	e7ed      	b.n	8005e9e <memmove+0xa2>
 8005ec2:	bf00      	nop

08005ec4 <__malloc_lock>:
 8005ec4:	4801      	ldr	r0, [pc, #4]	; (8005ecc <__malloc_lock+0x8>)
 8005ec6:	f7ff bc79 	b.w	80057bc <__retarget_lock_acquire_recursive>
 8005eca:	bf00      	nop
 8005ecc:	20000b04 	.word	0x20000b04

08005ed0 <__malloc_unlock>:
 8005ed0:	4801      	ldr	r0, [pc, #4]	; (8005ed8 <__malloc_unlock+0x8>)
 8005ed2:	f7ff bc75 	b.w	80057c0 <__retarget_lock_release_recursive>
 8005ed6:	bf00      	nop
 8005ed8:	20000b04 	.word	0x20000b04

08005edc <_Balloc>:
 8005edc:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005ede:	b570      	push	{r4, r5, r6, lr}
 8005ee0:	4605      	mov	r5, r0
 8005ee2:	460c      	mov	r4, r1
 8005ee4:	b14b      	cbz	r3, 8005efa <_Balloc+0x1e>
 8005ee6:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005eea:	b180      	cbz	r0, 8005f0e <_Balloc+0x32>
 8005eec:	6802      	ldr	r2, [r0, #0]
 8005eee:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005ef2:	2300      	movs	r3, #0
 8005ef4:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005ef8:	bd70      	pop	{r4, r5, r6, pc}
 8005efa:	2221      	movs	r2, #33	; 0x21
 8005efc:	2104      	movs	r1, #4
 8005efe:	f000 fe1d 	bl	8006b3c <_calloc_r>
 8005f02:	4603      	mov	r3, r0
 8005f04:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005f06:	2800      	cmp	r0, #0
 8005f08:	d1ed      	bne.n	8005ee6 <_Balloc+0xa>
 8005f0a:	2000      	movs	r0, #0
 8005f0c:	bd70      	pop	{r4, r5, r6, pc}
 8005f0e:	2101      	movs	r1, #1
 8005f10:	fa01 f604 	lsl.w	r6, r1, r4
 8005f14:	1d72      	adds	r2, r6, #5
 8005f16:	4628      	mov	r0, r5
 8005f18:	0092      	lsls	r2, r2, #2
 8005f1a:	f000 fe0f 	bl	8006b3c <_calloc_r>
 8005f1e:	2800      	cmp	r0, #0
 8005f20:	d0f3      	beq.n	8005f0a <_Balloc+0x2e>
 8005f22:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005f26:	e7e4      	b.n	8005ef2 <_Balloc+0x16>

08005f28 <_Bfree>:
 8005f28:	b131      	cbz	r1, 8005f38 <_Bfree+0x10>
 8005f2a:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005f2c:	684a      	ldr	r2, [r1, #4]
 8005f2e:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005f32:	6008      	str	r0, [r1, #0]
 8005f34:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005f38:	4770      	bx	lr
 8005f3a:	bf00      	nop

08005f3c <__multadd>:
 8005f3c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005f3e:	690c      	ldr	r4, [r1, #16]
 8005f40:	b083      	sub	sp, #12
 8005f42:	460d      	mov	r5, r1
 8005f44:	4606      	mov	r6, r0
 8005f46:	f101 0c14 	add.w	ip, r1, #20
 8005f4a:	2700      	movs	r7, #0
 8005f4c:	f8dc 0000 	ldr.w	r0, [ip]
 8005f50:	b281      	uxth	r1, r0
 8005f52:	fb02 3301 	mla	r3, r2, r1, r3
 8005f56:	0c01      	lsrs	r1, r0, #16
 8005f58:	0c18      	lsrs	r0, r3, #16
 8005f5a:	fb02 0101 	mla	r1, r2, r1, r0
 8005f5e:	b29b      	uxth	r3, r3
 8005f60:	3701      	adds	r7, #1
 8005f62:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005f66:	42bc      	cmp	r4, r7
 8005f68:	f84c 3b04 	str.w	r3, [ip], #4
 8005f6c:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8005f70:	dcec      	bgt.n	8005f4c <__multadd+0x10>
 8005f72:	b13b      	cbz	r3, 8005f84 <__multadd+0x48>
 8005f74:	68aa      	ldr	r2, [r5, #8]
 8005f76:	42a2      	cmp	r2, r4
 8005f78:	dd07      	ble.n	8005f8a <__multadd+0x4e>
 8005f7a:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8005f7e:	3401      	adds	r4, #1
 8005f80:	6153      	str	r3, [r2, #20]
 8005f82:	612c      	str	r4, [r5, #16]
 8005f84:	4628      	mov	r0, r5
 8005f86:	b003      	add	sp, #12
 8005f88:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005f8a:	6869      	ldr	r1, [r5, #4]
 8005f8c:	9301      	str	r3, [sp, #4]
 8005f8e:	3101      	adds	r1, #1
 8005f90:	4630      	mov	r0, r6
 8005f92:	f7ff ffa3 	bl	8005edc <_Balloc>
 8005f96:	692a      	ldr	r2, [r5, #16]
 8005f98:	3202      	adds	r2, #2
 8005f9a:	f105 010c 	add.w	r1, r5, #12
 8005f9e:	4607      	mov	r7, r0
 8005fa0:	0092      	lsls	r2, r2, #2
 8005fa2:	300c      	adds	r0, #12
 8005fa4:	f7fa faac 	bl	8000500 <memcpy>
 8005fa8:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8005faa:	6869      	ldr	r1, [r5, #4]
 8005fac:	9b01      	ldr	r3, [sp, #4]
 8005fae:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8005fb2:	6028      	str	r0, [r5, #0]
 8005fb4:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8005fb8:	463d      	mov	r5, r7
 8005fba:	e7de      	b.n	8005f7a <__multadd+0x3e>

08005fbc <__hi0bits>:
 8005fbc:	0c02      	lsrs	r2, r0, #16
 8005fbe:	0412      	lsls	r2, r2, #16
 8005fc0:	4603      	mov	r3, r0
 8005fc2:	b9c2      	cbnz	r2, 8005ff6 <__hi0bits+0x3a>
 8005fc4:	0403      	lsls	r3, r0, #16
 8005fc6:	2010      	movs	r0, #16
 8005fc8:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8005fcc:	bf04      	itt	eq
 8005fce:	021b      	lsleq	r3, r3, #8
 8005fd0:	3008      	addeq	r0, #8
 8005fd2:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8005fd6:	bf04      	itt	eq
 8005fd8:	011b      	lsleq	r3, r3, #4
 8005fda:	3004      	addeq	r0, #4
 8005fdc:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8005fe0:	bf04      	itt	eq
 8005fe2:	009b      	lsleq	r3, r3, #2
 8005fe4:	3002      	addeq	r0, #2
 8005fe6:	2b00      	cmp	r3, #0
 8005fe8:	db04      	blt.n	8005ff4 <__hi0bits+0x38>
 8005fea:	005b      	lsls	r3, r3, #1
 8005fec:	d501      	bpl.n	8005ff2 <__hi0bits+0x36>
 8005fee:	3001      	adds	r0, #1
 8005ff0:	4770      	bx	lr
 8005ff2:	2020      	movs	r0, #32
 8005ff4:	4770      	bx	lr
 8005ff6:	2000      	movs	r0, #0
 8005ff8:	e7e6      	b.n	8005fc8 <__hi0bits+0xc>
 8005ffa:	bf00      	nop

08005ffc <__lo0bits>:
 8005ffc:	6803      	ldr	r3, [r0, #0]
 8005ffe:	f013 0207 	ands.w	r2, r3, #7
 8006002:	4601      	mov	r1, r0
 8006004:	d007      	beq.n	8006016 <__lo0bits+0x1a>
 8006006:	07da      	lsls	r2, r3, #31
 8006008:	d41f      	bmi.n	800604a <__lo0bits+0x4e>
 800600a:	0798      	lsls	r0, r3, #30
 800600c:	d51f      	bpl.n	800604e <__lo0bits+0x52>
 800600e:	085b      	lsrs	r3, r3, #1
 8006010:	600b      	str	r3, [r1, #0]
 8006012:	2001      	movs	r0, #1
 8006014:	4770      	bx	lr
 8006016:	b298      	uxth	r0, r3
 8006018:	b1a0      	cbz	r0, 8006044 <__lo0bits+0x48>
 800601a:	4610      	mov	r0, r2
 800601c:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006020:	bf04      	itt	eq
 8006022:	0a1b      	lsreq	r3, r3, #8
 8006024:	3008      	addeq	r0, #8
 8006026:	071a      	lsls	r2, r3, #28
 8006028:	bf04      	itt	eq
 800602a:	091b      	lsreq	r3, r3, #4
 800602c:	3004      	addeq	r0, #4
 800602e:	079a      	lsls	r2, r3, #30
 8006030:	bf04      	itt	eq
 8006032:	089b      	lsreq	r3, r3, #2
 8006034:	3002      	addeq	r0, #2
 8006036:	07da      	lsls	r2, r3, #31
 8006038:	d402      	bmi.n	8006040 <__lo0bits+0x44>
 800603a:	085b      	lsrs	r3, r3, #1
 800603c:	d00b      	beq.n	8006056 <__lo0bits+0x5a>
 800603e:	3001      	adds	r0, #1
 8006040:	600b      	str	r3, [r1, #0]
 8006042:	4770      	bx	lr
 8006044:	0c1b      	lsrs	r3, r3, #16
 8006046:	2010      	movs	r0, #16
 8006048:	e7e8      	b.n	800601c <__lo0bits+0x20>
 800604a:	2000      	movs	r0, #0
 800604c:	4770      	bx	lr
 800604e:	089b      	lsrs	r3, r3, #2
 8006050:	600b      	str	r3, [r1, #0]
 8006052:	2002      	movs	r0, #2
 8006054:	4770      	bx	lr
 8006056:	2020      	movs	r0, #32
 8006058:	4770      	bx	lr
 800605a:	bf00      	nop

0800605c <__i2b>:
 800605c:	b510      	push	{r4, lr}
 800605e:	460c      	mov	r4, r1
 8006060:	2101      	movs	r1, #1
 8006062:	f7ff ff3b 	bl	8005edc <_Balloc>
 8006066:	2201      	movs	r2, #1
 8006068:	e9c0 2404 	strd	r2, r4, [r0, #16]
 800606c:	bd10      	pop	{r4, pc}
 800606e:	bf00      	nop

08006070 <__multiply>:
 8006070:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006074:	690e      	ldr	r6, [r1, #16]
 8006076:	6914      	ldr	r4, [r2, #16]
 8006078:	42a6      	cmp	r6, r4
 800607a:	b083      	sub	sp, #12
 800607c:	460f      	mov	r7, r1
 800607e:	4615      	mov	r5, r2
 8006080:	da04      	bge.n	800608c <__multiply+0x1c>
 8006082:	4632      	mov	r2, r6
 8006084:	462f      	mov	r7, r5
 8006086:	4626      	mov	r6, r4
 8006088:	460d      	mov	r5, r1
 800608a:	4614      	mov	r4, r2
 800608c:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006090:	eb06 0804 	add.w	r8, r6, r4
 8006094:	4543      	cmp	r3, r8
 8006096:	bfb8      	it	lt
 8006098:	3101      	addlt	r1, #1
 800609a:	f7ff ff1f 	bl	8005edc <_Balloc>
 800609e:	f100 0914 	add.w	r9, r0, #20
 80060a2:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80060a6:	45f1      	cmp	r9, lr
 80060a8:	9000      	str	r0, [sp, #0]
 80060aa:	d205      	bcs.n	80060b8 <__multiply+0x48>
 80060ac:	464b      	mov	r3, r9
 80060ae:	2200      	movs	r2, #0
 80060b0:	f843 2b04 	str.w	r2, [r3], #4
 80060b4:	459e      	cmp	lr, r3
 80060b6:	d8fb      	bhi.n	80060b0 <__multiply+0x40>
 80060b8:	f105 0a14 	add.w	sl, r5, #20
 80060bc:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80060c0:	f107 0314 	add.w	r3, r7, #20
 80060c4:	45a2      	cmp	sl, r4
 80060c6:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80060ca:	d261      	bcs.n	8006190 <__multiply+0x120>
 80060cc:	1b64      	subs	r4, r4, r5
 80060ce:	3c15      	subs	r4, #21
 80060d0:	f024 0403 	bic.w	r4, r4, #3
 80060d4:	f8cd e004 	str.w	lr, [sp, #4]
 80060d8:	44a2      	add	sl, r4
 80060da:	f105 0210 	add.w	r2, r5, #16
 80060de:	469e      	mov	lr, r3
 80060e0:	e005      	b.n	80060ee <__multiply+0x7e>
 80060e2:	0c2d      	lsrs	r5, r5, #16
 80060e4:	d12b      	bne.n	800613e <__multiply+0xce>
 80060e6:	4592      	cmp	sl, r2
 80060e8:	f109 0904 	add.w	r9, r9, #4
 80060ec:	d04e      	beq.n	800618c <__multiply+0x11c>
 80060ee:	f852 5f04 	ldr.w	r5, [r2, #4]!
 80060f2:	fa1f fb85 	uxth.w	fp, r5
 80060f6:	f1bb 0f00 	cmp.w	fp, #0
 80060fa:	d0f2      	beq.n	80060e2 <__multiply+0x72>
 80060fc:	4677      	mov	r7, lr
 80060fe:	464e      	mov	r6, r9
 8006100:	2000      	movs	r0, #0
 8006102:	e000      	b.n	8006106 <__multiply+0x96>
 8006104:	4626      	mov	r6, r4
 8006106:	f857 1b04 	ldr.w	r1, [r7], #4
 800610a:	6834      	ldr	r4, [r6, #0]
 800610c:	b28b      	uxth	r3, r1
 800610e:	b2a5      	uxth	r5, r4
 8006110:	0c09      	lsrs	r1, r1, #16
 8006112:	0c24      	lsrs	r4, r4, #16
 8006114:	fb0b 5303 	mla	r3, fp, r3, r5
 8006118:	4403      	add	r3, r0
 800611a:	fb0b 4001 	mla	r0, fp, r1, r4
 800611e:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8006122:	4634      	mov	r4, r6
 8006124:	b29b      	uxth	r3, r3
 8006126:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800612a:	45bc      	cmp	ip, r7
 800612c:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006130:	f844 3b04 	str.w	r3, [r4], #4
 8006134:	d8e6      	bhi.n	8006104 <__multiply+0x94>
 8006136:	6070      	str	r0, [r6, #4]
 8006138:	6815      	ldr	r5, [r2, #0]
 800613a:	0c2d      	lsrs	r5, r5, #16
 800613c:	d0d3      	beq.n	80060e6 <__multiply+0x76>
 800613e:	f8d9 3000 	ldr.w	r3, [r9]
 8006142:	4676      	mov	r6, lr
 8006144:	4618      	mov	r0, r3
 8006146:	46cb      	mov	fp, r9
 8006148:	2100      	movs	r1, #0
 800614a:	e000      	b.n	800614e <__multiply+0xde>
 800614c:	46a3      	mov	fp, r4
 800614e:	8834      	ldrh	r4, [r6, #0]
 8006150:	0c00      	lsrs	r0, r0, #16
 8006152:	fb05 0004 	mla	r0, r5, r4, r0
 8006156:	4401      	add	r1, r0
 8006158:	b29b      	uxth	r3, r3
 800615a:	465c      	mov	r4, fp
 800615c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006160:	f844 3b04 	str.w	r3, [r4], #4
 8006164:	f856 3b04 	ldr.w	r3, [r6], #4
 8006168:	f8db 0004 	ldr.w	r0, [fp, #4]
 800616c:	0c1b      	lsrs	r3, r3, #16
 800616e:	b287      	uxth	r7, r0
 8006170:	fb05 7303 	mla	r3, r5, r3, r7
 8006174:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006178:	45b4      	cmp	ip, r6
 800617a:	ea4f 4113 	mov.w	r1, r3, lsr #16
 800617e:	d8e5      	bhi.n	800614c <__multiply+0xdc>
 8006180:	4592      	cmp	sl, r2
 8006182:	f8cb 3004 	str.w	r3, [fp, #4]
 8006186:	f109 0904 	add.w	r9, r9, #4
 800618a:	d1b0      	bne.n	80060ee <__multiply+0x7e>
 800618c:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006190:	f1b8 0f00 	cmp.w	r8, #0
 8006194:	dd0b      	ble.n	80061ae <__multiply+0x13e>
 8006196:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800619a:	f1ae 0e04 	sub.w	lr, lr, #4
 800619e:	b11b      	cbz	r3, 80061a8 <__multiply+0x138>
 80061a0:	e005      	b.n	80061ae <__multiply+0x13e>
 80061a2:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80061a6:	b913      	cbnz	r3, 80061ae <__multiply+0x13e>
 80061a8:	f1b8 0801 	subs.w	r8, r8, #1
 80061ac:	d1f9      	bne.n	80061a2 <__multiply+0x132>
 80061ae:	9800      	ldr	r0, [sp, #0]
 80061b0:	f8c0 8010 	str.w	r8, [r0, #16]
 80061b4:	b003      	add	sp, #12
 80061b6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80061ba:	bf00      	nop

080061bc <__pow5mult>:
 80061bc:	f012 0303 	ands.w	r3, r2, #3
 80061c0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80061c4:	4614      	mov	r4, r2
 80061c6:	4607      	mov	r7, r0
 80061c8:	d12e      	bne.n	8006228 <__pow5mult+0x6c>
 80061ca:	460d      	mov	r5, r1
 80061cc:	10a4      	asrs	r4, r4, #2
 80061ce:	d01c      	beq.n	800620a <__pow5mult+0x4e>
 80061d0:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80061d2:	b396      	cbz	r6, 800623a <__pow5mult+0x7e>
 80061d4:	07e3      	lsls	r3, r4, #31
 80061d6:	f04f 0800 	mov.w	r8, #0
 80061da:	d406      	bmi.n	80061ea <__pow5mult+0x2e>
 80061dc:	1064      	asrs	r4, r4, #1
 80061de:	d014      	beq.n	800620a <__pow5mult+0x4e>
 80061e0:	6830      	ldr	r0, [r6, #0]
 80061e2:	b1a8      	cbz	r0, 8006210 <__pow5mult+0x54>
 80061e4:	4606      	mov	r6, r0
 80061e6:	07e3      	lsls	r3, r4, #31
 80061e8:	d5f8      	bpl.n	80061dc <__pow5mult+0x20>
 80061ea:	4632      	mov	r2, r6
 80061ec:	4629      	mov	r1, r5
 80061ee:	4638      	mov	r0, r7
 80061f0:	f7ff ff3e 	bl	8006070 <__multiply>
 80061f4:	b1b5      	cbz	r5, 8006224 <__pow5mult+0x68>
 80061f6:	686a      	ldr	r2, [r5, #4]
 80061f8:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80061fa:	1064      	asrs	r4, r4, #1
 80061fc:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006200:	6029      	str	r1, [r5, #0]
 8006202:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006206:	4605      	mov	r5, r0
 8006208:	d1ea      	bne.n	80061e0 <__pow5mult+0x24>
 800620a:	4628      	mov	r0, r5
 800620c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006210:	4632      	mov	r2, r6
 8006212:	4631      	mov	r1, r6
 8006214:	4638      	mov	r0, r7
 8006216:	f7ff ff2b 	bl	8006070 <__multiply>
 800621a:	6030      	str	r0, [r6, #0]
 800621c:	f8c0 8000 	str.w	r8, [r0]
 8006220:	4606      	mov	r6, r0
 8006222:	e7e0      	b.n	80061e6 <__pow5mult+0x2a>
 8006224:	4605      	mov	r5, r0
 8006226:	e7d9      	b.n	80061dc <__pow5mult+0x20>
 8006228:	3b01      	subs	r3, #1
 800622a:	4a0b      	ldr	r2, [pc, #44]	; (8006258 <__pow5mult+0x9c>)
 800622c:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006230:	2300      	movs	r3, #0
 8006232:	f7ff fe83 	bl	8005f3c <__multadd>
 8006236:	4605      	mov	r5, r0
 8006238:	e7c8      	b.n	80061cc <__pow5mult+0x10>
 800623a:	2101      	movs	r1, #1
 800623c:	4638      	mov	r0, r7
 800623e:	f7ff fe4d 	bl	8005edc <_Balloc>
 8006242:	f240 2371 	movw	r3, #625	; 0x271
 8006246:	6143      	str	r3, [r0, #20]
 8006248:	2201      	movs	r2, #1
 800624a:	2300      	movs	r3, #0
 800624c:	6102      	str	r2, [r0, #16]
 800624e:	4606      	mov	r6, r0
 8006250:	64b8      	str	r0, [r7, #72]	; 0x48
 8006252:	6003      	str	r3, [r0, #0]
 8006254:	e7be      	b.n	80061d4 <__pow5mult+0x18>
 8006256:	bf00      	nop
 8006258:	08007240 	.word	0x08007240

0800625c <__lshift>:
 800625c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006260:	4691      	mov	r9, r2
 8006262:	690a      	ldr	r2, [r1, #16]
 8006264:	460e      	mov	r6, r1
 8006266:	ea4f 1469 	mov.w	r4, r9, asr #5
 800626a:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 800626e:	eb04 0802 	add.w	r8, r4, r2
 8006272:	f108 0501 	add.w	r5, r8, #1
 8006276:	429d      	cmp	r5, r3
 8006278:	4607      	mov	r7, r0
 800627a:	dd04      	ble.n	8006286 <__lshift+0x2a>
 800627c:	005b      	lsls	r3, r3, #1
 800627e:	429d      	cmp	r5, r3
 8006280:	f101 0101 	add.w	r1, r1, #1
 8006284:	dcfa      	bgt.n	800627c <__lshift+0x20>
 8006286:	4638      	mov	r0, r7
 8006288:	f7ff fe28 	bl	8005edc <_Balloc>
 800628c:	2c00      	cmp	r4, #0
 800628e:	f100 0314 	add.w	r3, r0, #20
 8006292:	dd37      	ble.n	8006304 <__lshift+0xa8>
 8006294:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006298:	2200      	movs	r2, #0
 800629a:	f843 2b04 	str.w	r2, [r3], #4
 800629e:	428b      	cmp	r3, r1
 80062a0:	d1fb      	bne.n	800629a <__lshift+0x3e>
 80062a2:	6934      	ldr	r4, [r6, #16]
 80062a4:	f106 0314 	add.w	r3, r6, #20
 80062a8:	f019 091f 	ands.w	r9, r9, #31
 80062ac:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80062b0:	d020      	beq.n	80062f4 <__lshift+0x98>
 80062b2:	f1c9 0e20 	rsb	lr, r9, #32
 80062b6:	2200      	movs	r2, #0
 80062b8:	e000      	b.n	80062bc <__lshift+0x60>
 80062ba:	4651      	mov	r1, sl
 80062bc:	681c      	ldr	r4, [r3, #0]
 80062be:	468a      	mov	sl, r1
 80062c0:	fa04 f409 	lsl.w	r4, r4, r9
 80062c4:	4314      	orrs	r4, r2
 80062c6:	f84a 4b04 	str.w	r4, [sl], #4
 80062ca:	f853 2b04 	ldr.w	r2, [r3], #4
 80062ce:	4563      	cmp	r3, ip
 80062d0:	fa22 f20e 	lsr.w	r2, r2, lr
 80062d4:	d3f1      	bcc.n	80062ba <__lshift+0x5e>
 80062d6:	604a      	str	r2, [r1, #4]
 80062d8:	b10a      	cbz	r2, 80062de <__lshift+0x82>
 80062da:	f108 0502 	add.w	r5, r8, #2
 80062de:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80062e0:	6872      	ldr	r2, [r6, #4]
 80062e2:	3d01      	subs	r5, #1
 80062e4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80062e8:	6105      	str	r5, [r0, #16]
 80062ea:	6031      	str	r1, [r6, #0]
 80062ec:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80062f0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80062f4:	3904      	subs	r1, #4
 80062f6:	f853 2b04 	ldr.w	r2, [r3], #4
 80062fa:	f841 2f04 	str.w	r2, [r1, #4]!
 80062fe:	459c      	cmp	ip, r3
 8006300:	d8f9      	bhi.n	80062f6 <__lshift+0x9a>
 8006302:	e7ec      	b.n	80062de <__lshift+0x82>
 8006304:	4619      	mov	r1, r3
 8006306:	e7cc      	b.n	80062a2 <__lshift+0x46>

08006308 <__mcmp>:
 8006308:	b430      	push	{r4, r5}
 800630a:	690b      	ldr	r3, [r1, #16]
 800630c:	4605      	mov	r5, r0
 800630e:	6900      	ldr	r0, [r0, #16]
 8006310:	1ac0      	subs	r0, r0, r3
 8006312:	d10f      	bne.n	8006334 <__mcmp+0x2c>
 8006314:	009b      	lsls	r3, r3, #2
 8006316:	3514      	adds	r5, #20
 8006318:	3114      	adds	r1, #20
 800631a:	4419      	add	r1, r3
 800631c:	442b      	add	r3, r5
 800631e:	e001      	b.n	8006324 <__mcmp+0x1c>
 8006320:	429d      	cmp	r5, r3
 8006322:	d207      	bcs.n	8006334 <__mcmp+0x2c>
 8006324:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006328:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 800632c:	4294      	cmp	r4, r2
 800632e:	d0f7      	beq.n	8006320 <__mcmp+0x18>
 8006330:	d302      	bcc.n	8006338 <__mcmp+0x30>
 8006332:	2001      	movs	r0, #1
 8006334:	bc30      	pop	{r4, r5}
 8006336:	4770      	bx	lr
 8006338:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800633c:	e7fa      	b.n	8006334 <__mcmp+0x2c>
 800633e:	bf00      	nop

08006340 <__mdiff>:
 8006340:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006344:	6913      	ldr	r3, [r2, #16]
 8006346:	690d      	ldr	r5, [r1, #16]
 8006348:	1aed      	subs	r5, r5, r3
 800634a:	2d00      	cmp	r5, #0
 800634c:	460e      	mov	r6, r1
 800634e:	4690      	mov	r8, r2
 8006350:	f101 0414 	add.w	r4, r1, #20
 8006354:	f102 0714 	add.w	r7, r2, #20
 8006358:	d114      	bne.n	8006384 <__mdiff+0x44>
 800635a:	009b      	lsls	r3, r3, #2
 800635c:	18e2      	adds	r2, r4, r3
 800635e:	443b      	add	r3, r7
 8006360:	e001      	b.n	8006366 <__mdiff+0x26>
 8006362:	42a2      	cmp	r2, r4
 8006364:	d959      	bls.n	800641a <__mdiff+0xda>
 8006366:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 800636a:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800636e:	458c      	cmp	ip, r1
 8006370:	d0f7      	beq.n	8006362 <__mdiff+0x22>
 8006372:	d209      	bcs.n	8006388 <__mdiff+0x48>
 8006374:	4622      	mov	r2, r4
 8006376:	4633      	mov	r3, r6
 8006378:	463c      	mov	r4, r7
 800637a:	4646      	mov	r6, r8
 800637c:	4617      	mov	r7, r2
 800637e:	4698      	mov	r8, r3
 8006380:	2501      	movs	r5, #1
 8006382:	e001      	b.n	8006388 <__mdiff+0x48>
 8006384:	dbf6      	blt.n	8006374 <__mdiff+0x34>
 8006386:	2500      	movs	r5, #0
 8006388:	6871      	ldr	r1, [r6, #4]
 800638a:	f7ff fda7 	bl	8005edc <_Balloc>
 800638e:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006392:	6936      	ldr	r6, [r6, #16]
 8006394:	60c5      	str	r5, [r0, #12]
 8006396:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 800639a:	46bc      	mov	ip, r7
 800639c:	f100 0514 	add.w	r5, r0, #20
 80063a0:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80063a4:	2300      	movs	r3, #0
 80063a6:	f85c 1b04 	ldr.w	r1, [ip], #4
 80063aa:	f854 8b04 	ldr.w	r8, [r4], #4
 80063ae:	b28a      	uxth	r2, r1
 80063b0:	fa13 f388 	uxtah	r3, r3, r8
 80063b4:	0c09      	lsrs	r1, r1, #16
 80063b6:	1a9a      	subs	r2, r3, r2
 80063b8:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80063bc:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80063c0:	b292      	uxth	r2, r2
 80063c2:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80063c6:	45e6      	cmp	lr, ip
 80063c8:	f845 2b04 	str.w	r2, [r5], #4
 80063cc:	ea4f 4323 	mov.w	r3, r3, asr #16
 80063d0:	d8e9      	bhi.n	80063a6 <__mdiff+0x66>
 80063d2:	42a7      	cmp	r7, r4
 80063d4:	d917      	bls.n	8006406 <__mdiff+0xc6>
 80063d6:	46ae      	mov	lr, r5
 80063d8:	46a4      	mov	ip, r4
 80063da:	f85c 2b04 	ldr.w	r2, [ip], #4
 80063de:	fa13 f382 	uxtah	r3, r3, r2
 80063e2:	1419      	asrs	r1, r3, #16
 80063e4:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80063e8:	b29b      	uxth	r3, r3
 80063ea:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80063ee:	4567      	cmp	r7, ip
 80063f0:	f84e 2b04 	str.w	r2, [lr], #4
 80063f4:	ea4f 4321 	mov.w	r3, r1, asr #16
 80063f8:	d8ef      	bhi.n	80063da <__mdiff+0x9a>
 80063fa:	43e4      	mvns	r4, r4
 80063fc:	4427      	add	r7, r4
 80063fe:	f027 0703 	bic.w	r7, r7, #3
 8006402:	3704      	adds	r7, #4
 8006404:	443d      	add	r5, r7
 8006406:	3d04      	subs	r5, #4
 8006408:	b922      	cbnz	r2, 8006414 <__mdiff+0xd4>
 800640a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800640e:	3e01      	subs	r6, #1
 8006410:	2b00      	cmp	r3, #0
 8006412:	d0fa      	beq.n	800640a <__mdiff+0xca>
 8006414:	6106      	str	r6, [r0, #16]
 8006416:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800641a:	2100      	movs	r1, #0
 800641c:	f7ff fd5e 	bl	8005edc <_Balloc>
 8006420:	2201      	movs	r2, #1
 8006422:	2300      	movs	r3, #0
 8006424:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006428:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0800642c <__d2b>:
 800642c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006430:	460f      	mov	r7, r1
 8006432:	b083      	sub	sp, #12
 8006434:	2101      	movs	r1, #1
 8006436:	ec55 4b10 	vmov	r4, r5, d0
 800643a:	4616      	mov	r6, r2
 800643c:	f7ff fd4e 	bl	8005edc <_Balloc>
 8006440:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8006444:	4681      	mov	r9, r0
 8006446:	f3c5 0313 	ubfx	r3, r5, #0, #20
 800644a:	f1b8 0f00 	cmp.w	r8, #0
 800644e:	d001      	beq.n	8006454 <__d2b+0x28>
 8006450:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006454:	2c00      	cmp	r4, #0
 8006456:	9301      	str	r3, [sp, #4]
 8006458:	d024      	beq.n	80064a4 <__d2b+0x78>
 800645a:	a802      	add	r0, sp, #8
 800645c:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006460:	f7ff fdcc 	bl	8005ffc <__lo0bits>
 8006464:	2800      	cmp	r0, #0
 8006466:	d136      	bne.n	80064d6 <__d2b+0xaa>
 8006468:	e9dd 2300 	ldrd	r2, r3, [sp]
 800646c:	f8c9 2014 	str.w	r2, [r9, #20]
 8006470:	2b00      	cmp	r3, #0
 8006472:	bf0c      	ite	eq
 8006474:	2101      	moveq	r1, #1
 8006476:	2102      	movne	r1, #2
 8006478:	f8c9 3018 	str.w	r3, [r9, #24]
 800647c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006480:	f1b8 0f00 	cmp.w	r8, #0
 8006484:	d11b      	bne.n	80064be <__d2b+0x92>
 8006486:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 800648a:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 800648e:	6038      	str	r0, [r7, #0]
 8006490:	6918      	ldr	r0, [r3, #16]
 8006492:	f7ff fd93 	bl	8005fbc <__hi0bits>
 8006496:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 800649a:	6030      	str	r0, [r6, #0]
 800649c:	4648      	mov	r0, r9
 800649e:	b003      	add	sp, #12
 80064a0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80064a4:	a801      	add	r0, sp, #4
 80064a6:	f7ff fda9 	bl	8005ffc <__lo0bits>
 80064aa:	9b01      	ldr	r3, [sp, #4]
 80064ac:	f8c9 3014 	str.w	r3, [r9, #20]
 80064b0:	2101      	movs	r1, #1
 80064b2:	3020      	adds	r0, #32
 80064b4:	f8c9 1010 	str.w	r1, [r9, #16]
 80064b8:	f1b8 0f00 	cmp.w	r8, #0
 80064bc:	d0e3      	beq.n	8006486 <__d2b+0x5a>
 80064be:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80064c2:	eb08 0300 	add.w	r3, r8, r0
 80064c6:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80064ca:	603b      	str	r3, [r7, #0]
 80064cc:	6030      	str	r0, [r6, #0]
 80064ce:	4648      	mov	r0, r9
 80064d0:	b003      	add	sp, #12
 80064d2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80064d6:	e9dd 1300 	ldrd	r1, r3, [sp]
 80064da:	f1c0 0220 	rsb	r2, r0, #32
 80064de:	fa03 f202 	lsl.w	r2, r3, r2
 80064e2:	430a      	orrs	r2, r1
 80064e4:	40c3      	lsrs	r3, r0
 80064e6:	9301      	str	r3, [sp, #4]
 80064e8:	f8c9 2014 	str.w	r2, [r9, #20]
 80064ec:	e7c0      	b.n	8006470 <__d2b+0x44>
 80064ee:	bf00      	nop

080064f0 <_realloc_r>:
 80064f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80064f4:	4692      	mov	sl, r2
 80064f6:	b083      	sub	sp, #12
 80064f8:	2900      	cmp	r1, #0
 80064fa:	f000 80a1 	beq.w	8006640 <_realloc_r+0x150>
 80064fe:	460d      	mov	r5, r1
 8006500:	4680      	mov	r8, r0
 8006502:	f10a 040b 	add.w	r4, sl, #11
 8006506:	f7ff fcdd 	bl	8005ec4 <__malloc_lock>
 800650a:	f855 2c04 	ldr.w	r2, [r5, #-4]
 800650e:	2c16      	cmp	r4, #22
 8006510:	f022 0603 	bic.w	r6, r2, #3
 8006514:	f1a5 0708 	sub.w	r7, r5, #8
 8006518:	d83e      	bhi.n	8006598 <_realloc_r+0xa8>
 800651a:	2410      	movs	r4, #16
 800651c:	4621      	mov	r1, r4
 800651e:	45a2      	cmp	sl, r4
 8006520:	d83f      	bhi.n	80065a2 <_realloc_r+0xb2>
 8006522:	428e      	cmp	r6, r1
 8006524:	eb07 0906 	add.w	r9, r7, r6
 8006528:	da74      	bge.n	8006614 <_realloc_r+0x124>
 800652a:	4bc7      	ldr	r3, [pc, #796]	; (8006848 <_realloc_r+0x358>)
 800652c:	6898      	ldr	r0, [r3, #8]
 800652e:	4548      	cmp	r0, r9
 8006530:	f000 80aa 	beq.w	8006688 <_realloc_r+0x198>
 8006534:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006538:	f020 0301 	bic.w	r3, r0, #1
 800653c:	444b      	add	r3, r9
 800653e:	685b      	ldr	r3, [r3, #4]
 8006540:	07db      	lsls	r3, r3, #31
 8006542:	f140 8083 	bpl.w	800664c <_realloc_r+0x15c>
 8006546:	07d2      	lsls	r2, r2, #31
 8006548:	d534      	bpl.n	80065b4 <_realloc_r+0xc4>
 800654a:	4651      	mov	r1, sl
 800654c:	4640      	mov	r0, r8
 800654e:	f7ff f9b1 	bl	80058b4 <_malloc_r>
 8006552:	4682      	mov	sl, r0
 8006554:	b1e0      	cbz	r0, 8006590 <_realloc_r+0xa0>
 8006556:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800655a:	f023 0301 	bic.w	r3, r3, #1
 800655e:	443b      	add	r3, r7
 8006560:	f1a0 0208 	sub.w	r2, r0, #8
 8006564:	4293      	cmp	r3, r2
 8006566:	f000 80f9 	beq.w	800675c <_realloc_r+0x26c>
 800656a:	1f32      	subs	r2, r6, #4
 800656c:	2a24      	cmp	r2, #36	; 0x24
 800656e:	f200 8107 	bhi.w	8006780 <_realloc_r+0x290>
 8006572:	2a13      	cmp	r2, #19
 8006574:	6829      	ldr	r1, [r5, #0]
 8006576:	f200 80e6 	bhi.w	8006746 <_realloc_r+0x256>
 800657a:	4603      	mov	r3, r0
 800657c:	462a      	mov	r2, r5
 800657e:	6019      	str	r1, [r3, #0]
 8006580:	6851      	ldr	r1, [r2, #4]
 8006582:	6059      	str	r1, [r3, #4]
 8006584:	6892      	ldr	r2, [r2, #8]
 8006586:	609a      	str	r2, [r3, #8]
 8006588:	4629      	mov	r1, r5
 800658a:	4640      	mov	r0, r8
 800658c:	f7fe fe68 	bl	8005260 <_free_r>
 8006590:	4640      	mov	r0, r8
 8006592:	f7ff fc9d 	bl	8005ed0 <__malloc_unlock>
 8006596:	e04f      	b.n	8006638 <_realloc_r+0x148>
 8006598:	f024 0407 	bic.w	r4, r4, #7
 800659c:	2c00      	cmp	r4, #0
 800659e:	4621      	mov	r1, r4
 80065a0:	dabd      	bge.n	800651e <_realloc_r+0x2e>
 80065a2:	f04f 0a00 	mov.w	sl, #0
 80065a6:	230c      	movs	r3, #12
 80065a8:	4650      	mov	r0, sl
 80065aa:	f8c8 3000 	str.w	r3, [r8]
 80065ae:	b003      	add	sp, #12
 80065b0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80065b4:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80065b8:	eba7 0b03 	sub.w	fp, r7, r3
 80065bc:	f8db 2004 	ldr.w	r2, [fp, #4]
 80065c0:	f022 0203 	bic.w	r2, r2, #3
 80065c4:	18b3      	adds	r3, r6, r2
 80065c6:	428b      	cmp	r3, r1
 80065c8:	dbbf      	blt.n	800654a <_realloc_r+0x5a>
 80065ca:	46da      	mov	sl, fp
 80065cc:	f8db 100c 	ldr.w	r1, [fp, #12]
 80065d0:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80065d4:	1f32      	subs	r2, r6, #4
 80065d6:	2a24      	cmp	r2, #36	; 0x24
 80065d8:	60c1      	str	r1, [r0, #12]
 80065da:	eb0b 0903 	add.w	r9, fp, r3
 80065de:	6088      	str	r0, [r1, #8]
 80065e0:	f200 80c6 	bhi.w	8006770 <_realloc_r+0x280>
 80065e4:	2a13      	cmp	r2, #19
 80065e6:	6829      	ldr	r1, [r5, #0]
 80065e8:	f240 80c0 	bls.w	800676c <_realloc_r+0x27c>
 80065ec:	f8cb 1008 	str.w	r1, [fp, #8]
 80065f0:	6869      	ldr	r1, [r5, #4]
 80065f2:	f8cb 100c 	str.w	r1, [fp, #12]
 80065f6:	2a1b      	cmp	r2, #27
 80065f8:	68a9      	ldr	r1, [r5, #8]
 80065fa:	f200 80d8 	bhi.w	80067ae <_realloc_r+0x2be>
 80065fe:	f10b 0210 	add.w	r2, fp, #16
 8006602:	3508      	adds	r5, #8
 8006604:	6011      	str	r1, [r2, #0]
 8006606:	6869      	ldr	r1, [r5, #4]
 8006608:	6051      	str	r1, [r2, #4]
 800660a:	68a9      	ldr	r1, [r5, #8]
 800660c:	6091      	str	r1, [r2, #8]
 800660e:	461e      	mov	r6, r3
 8006610:	465f      	mov	r7, fp
 8006612:	4655      	mov	r5, sl
 8006614:	687b      	ldr	r3, [r7, #4]
 8006616:	1b32      	subs	r2, r6, r4
 8006618:	2a0f      	cmp	r2, #15
 800661a:	f003 0301 	and.w	r3, r3, #1
 800661e:	d822      	bhi.n	8006666 <_realloc_r+0x176>
 8006620:	4333      	orrs	r3, r6
 8006622:	607b      	str	r3, [r7, #4]
 8006624:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006628:	f043 0301 	orr.w	r3, r3, #1
 800662c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006630:	4640      	mov	r0, r8
 8006632:	f7ff fc4d 	bl	8005ed0 <__malloc_unlock>
 8006636:	46aa      	mov	sl, r5
 8006638:	4650      	mov	r0, sl
 800663a:	b003      	add	sp, #12
 800663c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006640:	4611      	mov	r1, r2
 8006642:	b003      	add	sp, #12
 8006644:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006648:	f7ff b934 	b.w	80058b4 <_malloc_r>
 800664c:	f020 0003 	bic.w	r0, r0, #3
 8006650:	1833      	adds	r3, r6, r0
 8006652:	428b      	cmp	r3, r1
 8006654:	db61      	blt.n	800671a <_realloc_r+0x22a>
 8006656:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800665a:	461e      	mov	r6, r3
 800665c:	60ca      	str	r2, [r1, #12]
 800665e:	eb07 0903 	add.w	r9, r7, r3
 8006662:	6091      	str	r1, [r2, #8]
 8006664:	e7d6      	b.n	8006614 <_realloc_r+0x124>
 8006666:	1939      	adds	r1, r7, r4
 8006668:	4323      	orrs	r3, r4
 800666a:	f042 0201 	orr.w	r2, r2, #1
 800666e:	607b      	str	r3, [r7, #4]
 8006670:	604a      	str	r2, [r1, #4]
 8006672:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006676:	f043 0301 	orr.w	r3, r3, #1
 800667a:	3108      	adds	r1, #8
 800667c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006680:	4640      	mov	r0, r8
 8006682:	f7fe fded 	bl	8005260 <_free_r>
 8006686:	e7d3      	b.n	8006630 <_realloc_r+0x140>
 8006688:	6840      	ldr	r0, [r0, #4]
 800668a:	f020 0903 	bic.w	r9, r0, #3
 800668e:	44b1      	add	r9, r6
 8006690:	f104 0010 	add.w	r0, r4, #16
 8006694:	4581      	cmp	r9, r0
 8006696:	da77      	bge.n	8006788 <_realloc_r+0x298>
 8006698:	07d2      	lsls	r2, r2, #31
 800669a:	f53f af56 	bmi.w	800654a <_realloc_r+0x5a>
 800669e:	f855 2c08 	ldr.w	r2, [r5, #-8]
 80066a2:	eba7 0b02 	sub.w	fp, r7, r2
 80066a6:	f8db 2004 	ldr.w	r2, [fp, #4]
 80066aa:	f022 0203 	bic.w	r2, r2, #3
 80066ae:	4491      	add	r9, r2
 80066b0:	4548      	cmp	r0, r9
 80066b2:	dc87      	bgt.n	80065c4 <_realloc_r+0xd4>
 80066b4:	46da      	mov	sl, fp
 80066b6:	f8db 100c 	ldr.w	r1, [fp, #12]
 80066ba:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80066be:	1f32      	subs	r2, r6, #4
 80066c0:	2a24      	cmp	r2, #36	; 0x24
 80066c2:	60c1      	str	r1, [r0, #12]
 80066c4:	6088      	str	r0, [r1, #8]
 80066c6:	f200 80a1 	bhi.w	800680c <_realloc_r+0x31c>
 80066ca:	2a13      	cmp	r2, #19
 80066cc:	6829      	ldr	r1, [r5, #0]
 80066ce:	f240 809b 	bls.w	8006808 <_realloc_r+0x318>
 80066d2:	f8cb 1008 	str.w	r1, [fp, #8]
 80066d6:	6869      	ldr	r1, [r5, #4]
 80066d8:	f8cb 100c 	str.w	r1, [fp, #12]
 80066dc:	2a1b      	cmp	r2, #27
 80066de:	68a9      	ldr	r1, [r5, #8]
 80066e0:	f200 809b 	bhi.w	800681a <_realloc_r+0x32a>
 80066e4:	f10b 0210 	add.w	r2, fp, #16
 80066e8:	3508      	adds	r5, #8
 80066ea:	6011      	str	r1, [r2, #0]
 80066ec:	6869      	ldr	r1, [r5, #4]
 80066ee:	6051      	str	r1, [r2, #4]
 80066f0:	68a9      	ldr	r1, [r5, #8]
 80066f2:	6091      	str	r1, [r2, #8]
 80066f4:	eb0b 0104 	add.w	r1, fp, r4
 80066f8:	eba9 0204 	sub.w	r2, r9, r4
 80066fc:	f042 0201 	orr.w	r2, r2, #1
 8006700:	6099      	str	r1, [r3, #8]
 8006702:	604a      	str	r2, [r1, #4]
 8006704:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006708:	f003 0301 	and.w	r3, r3, #1
 800670c:	431c      	orrs	r4, r3
 800670e:	4640      	mov	r0, r8
 8006710:	f8cb 4004 	str.w	r4, [fp, #4]
 8006714:	f7ff fbdc 	bl	8005ed0 <__malloc_unlock>
 8006718:	e78e      	b.n	8006638 <_realloc_r+0x148>
 800671a:	07d3      	lsls	r3, r2, #31
 800671c:	f53f af15 	bmi.w	800654a <_realloc_r+0x5a>
 8006720:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006724:	eba7 0b03 	sub.w	fp, r7, r3
 8006728:	f8db 2004 	ldr.w	r2, [fp, #4]
 800672c:	f022 0203 	bic.w	r2, r2, #3
 8006730:	4410      	add	r0, r2
 8006732:	1983      	adds	r3, r0, r6
 8006734:	428b      	cmp	r3, r1
 8006736:	f6ff af45 	blt.w	80065c4 <_realloc_r+0xd4>
 800673a:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800673e:	46da      	mov	sl, fp
 8006740:	60ca      	str	r2, [r1, #12]
 8006742:	6091      	str	r1, [r2, #8]
 8006744:	e742      	b.n	80065cc <_realloc_r+0xdc>
 8006746:	6001      	str	r1, [r0, #0]
 8006748:	686b      	ldr	r3, [r5, #4]
 800674a:	6043      	str	r3, [r0, #4]
 800674c:	2a1b      	cmp	r2, #27
 800674e:	d83a      	bhi.n	80067c6 <_realloc_r+0x2d6>
 8006750:	f105 0208 	add.w	r2, r5, #8
 8006754:	f100 0308 	add.w	r3, r0, #8
 8006758:	68a9      	ldr	r1, [r5, #8]
 800675a:	e710      	b.n	800657e <_realloc_r+0x8e>
 800675c:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006760:	f023 0303 	bic.w	r3, r3, #3
 8006764:	441e      	add	r6, r3
 8006766:	eb07 0906 	add.w	r9, r7, r6
 800676a:	e753      	b.n	8006614 <_realloc_r+0x124>
 800676c:	4652      	mov	r2, sl
 800676e:	e749      	b.n	8006604 <_realloc_r+0x114>
 8006770:	4629      	mov	r1, r5
 8006772:	4650      	mov	r0, sl
 8006774:	461e      	mov	r6, r3
 8006776:	465f      	mov	r7, fp
 8006778:	f7ff fb40 	bl	8005dfc <memmove>
 800677c:	4655      	mov	r5, sl
 800677e:	e749      	b.n	8006614 <_realloc_r+0x124>
 8006780:	4629      	mov	r1, r5
 8006782:	f7ff fb3b 	bl	8005dfc <memmove>
 8006786:	e6ff      	b.n	8006588 <_realloc_r+0x98>
 8006788:	4427      	add	r7, r4
 800678a:	eba9 0904 	sub.w	r9, r9, r4
 800678e:	f049 0201 	orr.w	r2, r9, #1
 8006792:	609f      	str	r7, [r3, #8]
 8006794:	607a      	str	r2, [r7, #4]
 8006796:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800679a:	f003 0301 	and.w	r3, r3, #1
 800679e:	431c      	orrs	r4, r3
 80067a0:	4640      	mov	r0, r8
 80067a2:	f845 4c04 	str.w	r4, [r5, #-4]
 80067a6:	f7ff fb93 	bl	8005ed0 <__malloc_unlock>
 80067aa:	46aa      	mov	sl, r5
 80067ac:	e744      	b.n	8006638 <_realloc_r+0x148>
 80067ae:	f8cb 1010 	str.w	r1, [fp, #16]
 80067b2:	68e9      	ldr	r1, [r5, #12]
 80067b4:	f8cb 1014 	str.w	r1, [fp, #20]
 80067b8:	2a24      	cmp	r2, #36	; 0x24
 80067ba:	d010      	beq.n	80067de <_realloc_r+0x2ee>
 80067bc:	6929      	ldr	r1, [r5, #16]
 80067be:	f10b 0218 	add.w	r2, fp, #24
 80067c2:	3510      	adds	r5, #16
 80067c4:	e71e      	b.n	8006604 <_realloc_r+0x114>
 80067c6:	68ab      	ldr	r3, [r5, #8]
 80067c8:	6083      	str	r3, [r0, #8]
 80067ca:	68eb      	ldr	r3, [r5, #12]
 80067cc:	60c3      	str	r3, [r0, #12]
 80067ce:	2a24      	cmp	r2, #36	; 0x24
 80067d0:	d010      	beq.n	80067f4 <_realloc_r+0x304>
 80067d2:	f105 0210 	add.w	r2, r5, #16
 80067d6:	f100 0310 	add.w	r3, r0, #16
 80067da:	6929      	ldr	r1, [r5, #16]
 80067dc:	e6cf      	b.n	800657e <_realloc_r+0x8e>
 80067de:	692a      	ldr	r2, [r5, #16]
 80067e0:	f8cb 2018 	str.w	r2, [fp, #24]
 80067e4:	696a      	ldr	r2, [r5, #20]
 80067e6:	f8cb 201c 	str.w	r2, [fp, #28]
 80067ea:	69a9      	ldr	r1, [r5, #24]
 80067ec:	f10b 0220 	add.w	r2, fp, #32
 80067f0:	3518      	adds	r5, #24
 80067f2:	e707      	b.n	8006604 <_realloc_r+0x114>
 80067f4:	692b      	ldr	r3, [r5, #16]
 80067f6:	6103      	str	r3, [r0, #16]
 80067f8:	696b      	ldr	r3, [r5, #20]
 80067fa:	6143      	str	r3, [r0, #20]
 80067fc:	69a9      	ldr	r1, [r5, #24]
 80067fe:	f105 0218 	add.w	r2, r5, #24
 8006802:	f100 0318 	add.w	r3, r0, #24
 8006806:	e6ba      	b.n	800657e <_realloc_r+0x8e>
 8006808:	4652      	mov	r2, sl
 800680a:	e76e      	b.n	80066ea <_realloc_r+0x1fa>
 800680c:	4629      	mov	r1, r5
 800680e:	4650      	mov	r0, sl
 8006810:	9301      	str	r3, [sp, #4]
 8006812:	f7ff faf3 	bl	8005dfc <memmove>
 8006816:	9b01      	ldr	r3, [sp, #4]
 8006818:	e76c      	b.n	80066f4 <_realloc_r+0x204>
 800681a:	f8cb 1010 	str.w	r1, [fp, #16]
 800681e:	68e9      	ldr	r1, [r5, #12]
 8006820:	f8cb 1014 	str.w	r1, [fp, #20]
 8006824:	2a24      	cmp	r2, #36	; 0x24
 8006826:	d004      	beq.n	8006832 <_realloc_r+0x342>
 8006828:	6929      	ldr	r1, [r5, #16]
 800682a:	f10b 0218 	add.w	r2, fp, #24
 800682e:	3510      	adds	r5, #16
 8006830:	e75b      	b.n	80066ea <_realloc_r+0x1fa>
 8006832:	692a      	ldr	r2, [r5, #16]
 8006834:	f8cb 2018 	str.w	r2, [fp, #24]
 8006838:	696a      	ldr	r2, [r5, #20]
 800683a:	f8cb 201c 	str.w	r2, [fp, #28]
 800683e:	69a9      	ldr	r1, [r5, #24]
 8006840:	f10b 0220 	add.w	r2, fp, #32
 8006844:	3518      	adds	r5, #24
 8006846:	e750      	b.n	80066ea <_realloc_r+0x1fa>
 8006848:	2000044c 	.word	0x2000044c

0800684c <frexp>:
 800684c:	ec53 2b10 	vmov	r2, r3, d0
 8006850:	b570      	push	{r4, r5, r6, lr}
 8006852:	4e16      	ldr	r6, [pc, #88]	; (80068ac <frexp+0x60>)
 8006854:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006858:	2500      	movs	r5, #0
 800685a:	42b1      	cmp	r1, r6
 800685c:	4604      	mov	r4, r0
 800685e:	6005      	str	r5, [r0, #0]
 8006860:	dc21      	bgt.n	80068a6 <frexp+0x5a>
 8006862:	ee10 6a10 	vmov	r6, s0
 8006866:	430e      	orrs	r6, r1
 8006868:	d01d      	beq.n	80068a6 <frexp+0x5a>
 800686a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800686e:	4618      	mov	r0, r3
 8006870:	da0c      	bge.n	800688c <frexp+0x40>
 8006872:	4619      	mov	r1, r3
 8006874:	2200      	movs	r2, #0
 8006876:	ee10 0a10 	vmov	r0, s0
 800687a:	4b0d      	ldr	r3, [pc, #52]	; (80068b0 <frexp+0x64>)
 800687c:	f7fa f95c 	bl	8000b38 <__aeabi_dmul>
 8006880:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006884:	4602      	mov	r2, r0
 8006886:	4608      	mov	r0, r1
 8006888:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 800688c:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006890:	1509      	asrs	r1, r1, #20
 8006892:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006896:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 800689a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 800689e:	4429      	add	r1, r5
 80068a0:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80068a4:	6021      	str	r1, [r4, #0]
 80068a6:	ec43 2b10 	vmov	d0, r2, r3
 80068aa:	bd70      	pop	{r4, r5, r6, pc}
 80068ac:	7fefffff 	.word	0x7fefffff
 80068b0:	43500000 	.word	0x43500000

080068b4 <_sbrk_r>:
 80068b4:	b538      	push	{r3, r4, r5, lr}
 80068b6:	4c07      	ldr	r4, [pc, #28]	; (80068d4 <_sbrk_r+0x20>)
 80068b8:	2300      	movs	r3, #0
 80068ba:	4605      	mov	r5, r0
 80068bc:	4608      	mov	r0, r1
 80068be:	6023      	str	r3, [r4, #0]
 80068c0:	f7fb fc35 	bl	800212e <_sbrk>
 80068c4:	1c43      	adds	r3, r0, #1
 80068c6:	d000      	beq.n	80068ca <_sbrk_r+0x16>
 80068c8:	bd38      	pop	{r3, r4, r5, pc}
 80068ca:	6823      	ldr	r3, [r4, #0]
 80068cc:	2b00      	cmp	r3, #0
 80068ce:	d0fb      	beq.n	80068c8 <_sbrk_r+0x14>
 80068d0:	602b      	str	r3, [r5, #0]
 80068d2:	bd38      	pop	{r3, r4, r5, pc}
 80068d4:	20000b18 	.word	0x20000b18

080068d8 <__sread>:
 80068d8:	b510      	push	{r4, lr}
 80068da:	460c      	mov	r4, r1
 80068dc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80068e0:	f000 fabc 	bl	8006e5c <_read_r>
 80068e4:	2800      	cmp	r0, #0
 80068e6:	db03      	blt.n	80068f0 <__sread+0x18>
 80068e8:	6d23      	ldr	r3, [r4, #80]	; 0x50
 80068ea:	4403      	add	r3, r0
 80068ec:	6523      	str	r3, [r4, #80]	; 0x50
 80068ee:	bd10      	pop	{r4, pc}
 80068f0:	89a3      	ldrh	r3, [r4, #12]
 80068f2:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 80068f6:	81a3      	strh	r3, [r4, #12]
 80068f8:	bd10      	pop	{r4, pc}
 80068fa:	bf00      	nop

080068fc <__swrite>:
 80068fc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006900:	4616      	mov	r6, r2
 8006902:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006906:	461f      	mov	r7, r3
 8006908:	05d3      	lsls	r3, r2, #23
 800690a:	460c      	mov	r4, r1
 800690c:	4605      	mov	r5, r0
 800690e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006912:	d507      	bpl.n	8006924 <__swrite+0x28>
 8006914:	2200      	movs	r2, #0
 8006916:	2302      	movs	r3, #2
 8006918:	f000 fa74 	bl	8006e04 <_lseek_r>
 800691c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006920:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006924:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006928:	81a2      	strh	r2, [r4, #12]
 800692a:	463b      	mov	r3, r7
 800692c:	4632      	mov	r2, r6
 800692e:	4628      	mov	r0, r5
 8006930:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006934:	f000 b88c 	b.w	8006a50 <_write_r>

08006938 <__sseek>:
 8006938:	b510      	push	{r4, lr}
 800693a:	460c      	mov	r4, r1
 800693c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006940:	f000 fa60 	bl	8006e04 <_lseek_r>
 8006944:	89a3      	ldrh	r3, [r4, #12]
 8006946:	1c42      	adds	r2, r0, #1
 8006948:	bf0e      	itee	eq
 800694a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 800694e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006952:	6520      	strne	r0, [r4, #80]	; 0x50
 8006954:	81a3      	strh	r3, [r4, #12]
 8006956:	bd10      	pop	{r4, pc}

08006958 <__sclose>:
 8006958:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800695c:	f000 b922 	b.w	8006ba4 <_close_r>

08006960 <strncpy>:
 8006960:	ea40 0301 	orr.w	r3, r0, r1
 8006964:	079b      	lsls	r3, r3, #30
 8006966:	b470      	push	{r4, r5, r6}
 8006968:	d12a      	bne.n	80069c0 <strncpy+0x60>
 800696a:	2a03      	cmp	r2, #3
 800696c:	d928      	bls.n	80069c0 <strncpy+0x60>
 800696e:	460c      	mov	r4, r1
 8006970:	4603      	mov	r3, r0
 8006972:	4621      	mov	r1, r4
 8006974:	f854 6b04 	ldr.w	r6, [r4], #4
 8006978:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 800697c:	ea25 0506 	bic.w	r5, r5, r6
 8006980:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006984:	d106      	bne.n	8006994 <strncpy+0x34>
 8006986:	3a04      	subs	r2, #4
 8006988:	2a03      	cmp	r2, #3
 800698a:	f843 6b04 	str.w	r6, [r3], #4
 800698e:	4621      	mov	r1, r4
 8006990:	d8ef      	bhi.n	8006972 <strncpy+0x12>
 8006992:	b19a      	cbz	r2, 80069bc <strncpy+0x5c>
 8006994:	780c      	ldrb	r4, [r1, #0]
 8006996:	701c      	strb	r4, [r3, #0]
 8006998:	3a01      	subs	r2, #1
 800699a:	3301      	adds	r3, #1
 800699c:	b13c      	cbz	r4, 80069ae <strncpy+0x4e>
 800699e:	b16a      	cbz	r2, 80069bc <strncpy+0x5c>
 80069a0:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 80069a4:	f803 4b01 	strb.w	r4, [r3], #1
 80069a8:	3a01      	subs	r2, #1
 80069aa:	2c00      	cmp	r4, #0
 80069ac:	d1f7      	bne.n	800699e <strncpy+0x3e>
 80069ae:	b12a      	cbz	r2, 80069bc <strncpy+0x5c>
 80069b0:	441a      	add	r2, r3
 80069b2:	2100      	movs	r1, #0
 80069b4:	f803 1b01 	strb.w	r1, [r3], #1
 80069b8:	4293      	cmp	r3, r2
 80069ba:	d1fb      	bne.n	80069b4 <strncpy+0x54>
 80069bc:	bc70      	pop	{r4, r5, r6}
 80069be:	4770      	bx	lr
 80069c0:	4603      	mov	r3, r0
 80069c2:	e7e6      	b.n	8006992 <strncpy+0x32>

080069c4 <__sprint_r.part.0>:
 80069c4:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80069c8:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 80069ca:	049c      	lsls	r4, r3, #18
 80069cc:	4692      	mov	sl, r2
 80069ce:	d52d      	bpl.n	8006a2c <__sprint_r.part.0+0x68>
 80069d0:	6893      	ldr	r3, [r2, #8]
 80069d2:	6812      	ldr	r2, [r2, #0]
 80069d4:	b343      	cbz	r3, 8006a28 <__sprint_r.part.0+0x64>
 80069d6:	460e      	mov	r6, r1
 80069d8:	4607      	mov	r7, r0
 80069da:	f102 0908 	add.w	r9, r2, #8
 80069de:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 80069e2:	ea5f 089b 	movs.w	r8, fp, lsr #2
 80069e6:	d015      	beq.n	8006a14 <__sprint_r.part.0+0x50>
 80069e8:	3d04      	subs	r5, #4
 80069ea:	2400      	movs	r4, #0
 80069ec:	e001      	b.n	80069f2 <__sprint_r.part.0+0x2e>
 80069ee:	45a0      	cmp	r8, r4
 80069f0:	d00e      	beq.n	8006a10 <__sprint_r.part.0+0x4c>
 80069f2:	4632      	mov	r2, r6
 80069f4:	f855 1f04 	ldr.w	r1, [r5, #4]!
 80069f8:	4638      	mov	r0, r7
 80069fa:	f000 f99d 	bl	8006d38 <_fputwc_r>
 80069fe:	1c43      	adds	r3, r0, #1
 8006a00:	f104 0401 	add.w	r4, r4, #1
 8006a04:	d1f3      	bne.n	80069ee <__sprint_r.part.0+0x2a>
 8006a06:	2300      	movs	r3, #0
 8006a08:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006a0c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a10:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006a14:	f02b 0b03 	bic.w	fp, fp, #3
 8006a18:	eba3 030b 	sub.w	r3, r3, fp
 8006a1c:	f8ca 3008 	str.w	r3, [sl, #8]
 8006a20:	f109 0908 	add.w	r9, r9, #8
 8006a24:	2b00      	cmp	r3, #0
 8006a26:	d1da      	bne.n	80069de <__sprint_r.part.0+0x1a>
 8006a28:	2000      	movs	r0, #0
 8006a2a:	e7ec      	b.n	8006a06 <__sprint_r.part.0+0x42>
 8006a2c:	f7fe fd0c 	bl	8005448 <__sfvwrite_r>
 8006a30:	2300      	movs	r3, #0
 8006a32:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006a36:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a3a:	bf00      	nop

08006a3c <__sprint_r>:
 8006a3c:	6893      	ldr	r3, [r2, #8]
 8006a3e:	b10b      	cbz	r3, 8006a44 <__sprint_r+0x8>
 8006a40:	f7ff bfc0 	b.w	80069c4 <__sprint_r.part.0>
 8006a44:	b410      	push	{r4}
 8006a46:	4618      	mov	r0, r3
 8006a48:	6053      	str	r3, [r2, #4]
 8006a4a:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006a4e:	4770      	bx	lr

08006a50 <_write_r>:
 8006a50:	b570      	push	{r4, r5, r6, lr}
 8006a52:	460d      	mov	r5, r1
 8006a54:	4c08      	ldr	r4, [pc, #32]	; (8006a78 <_write_r+0x28>)
 8006a56:	4611      	mov	r1, r2
 8006a58:	4606      	mov	r6, r0
 8006a5a:	461a      	mov	r2, r3
 8006a5c:	4628      	mov	r0, r5
 8006a5e:	2300      	movs	r3, #0
 8006a60:	6023      	str	r3, [r4, #0]
 8006a62:	f7fb fb51 	bl	8002108 <_write>
 8006a66:	1c43      	adds	r3, r0, #1
 8006a68:	d000      	beq.n	8006a6c <_write_r+0x1c>
 8006a6a:	bd70      	pop	{r4, r5, r6, pc}
 8006a6c:	6823      	ldr	r3, [r4, #0]
 8006a6e:	2b00      	cmp	r3, #0
 8006a70:	d0fb      	beq.n	8006a6a <_write_r+0x1a>
 8006a72:	6033      	str	r3, [r6, #0]
 8006a74:	bd70      	pop	{r4, r5, r6, pc}
 8006a76:	bf00      	nop
 8006a78:	20000b18 	.word	0x20000b18

08006a7c <__register_exitproc>:
 8006a7c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006a80:	4d2b      	ldr	r5, [pc, #172]	; (8006b30 <__register_exitproc+0xb4>)
 8006a82:	4606      	mov	r6, r0
 8006a84:	6828      	ldr	r0, [r5, #0]
 8006a86:	4698      	mov	r8, r3
 8006a88:	460f      	mov	r7, r1
 8006a8a:	4691      	mov	r9, r2
 8006a8c:	f7fe fe96 	bl	80057bc <__retarget_lock_acquire_recursive>
 8006a90:	4b28      	ldr	r3, [pc, #160]	; (8006b34 <__register_exitproc+0xb8>)
 8006a92:	681c      	ldr	r4, [r3, #0]
 8006a94:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006a98:	2b00      	cmp	r3, #0
 8006a9a:	d03d      	beq.n	8006b18 <__register_exitproc+0x9c>
 8006a9c:	685a      	ldr	r2, [r3, #4]
 8006a9e:	2a1f      	cmp	r2, #31
 8006aa0:	dc0d      	bgt.n	8006abe <__register_exitproc+0x42>
 8006aa2:	f102 0c01 	add.w	ip, r2, #1
 8006aa6:	bb16      	cbnz	r6, 8006aee <__register_exitproc+0x72>
 8006aa8:	3202      	adds	r2, #2
 8006aaa:	f8c3 c004 	str.w	ip, [r3, #4]
 8006aae:	6828      	ldr	r0, [r5, #0]
 8006ab0:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006ab4:	f7fe fe84 	bl	80057c0 <__retarget_lock_release_recursive>
 8006ab8:	2000      	movs	r0, #0
 8006aba:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006abe:	4b1e      	ldr	r3, [pc, #120]	; (8006b38 <__register_exitproc+0xbc>)
 8006ac0:	b37b      	cbz	r3, 8006b22 <__register_exitproc+0xa6>
 8006ac2:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006ac6:	f3af 8000 	nop.w
 8006aca:	4603      	mov	r3, r0
 8006acc:	b348      	cbz	r0, 8006b22 <__register_exitproc+0xa6>
 8006ace:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006ad2:	2100      	movs	r1, #0
 8006ad4:	e9c0 2100 	strd	r2, r1, [r0]
 8006ad8:	f04f 0c01 	mov.w	ip, #1
 8006adc:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006ae0:	460a      	mov	r2, r1
 8006ae2:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006ae6:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006aea:	2e00      	cmp	r6, #0
 8006aec:	d0dc      	beq.n	8006aa8 <__register_exitproc+0x2c>
 8006aee:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006af2:	2401      	movs	r4, #1
 8006af4:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006af8:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006afc:	4094      	lsls	r4, r2
 8006afe:	4320      	orrs	r0, r4
 8006b00:	2e02      	cmp	r6, #2
 8006b02:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006b06:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006b0a:	d1cd      	bne.n	8006aa8 <__register_exitproc+0x2c>
 8006b0c:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006b10:	430c      	orrs	r4, r1
 8006b12:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006b16:	e7c7      	b.n	8006aa8 <__register_exitproc+0x2c>
 8006b18:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006b1c:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006b20:	e7bc      	b.n	8006a9c <__register_exitproc+0x20>
 8006b22:	6828      	ldr	r0, [r5, #0]
 8006b24:	f7fe fe4c 	bl	80057c0 <__retarget_lock_release_recursive>
 8006b28:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006b2c:	e7c5      	b.n	8006aba <__register_exitproc+0x3e>
 8006b2e:	bf00      	nop
 8006b30:	20000448 	.word	0x20000448
 8006b34:	080070d4 	.word	0x080070d4
 8006b38:	00000000 	.word	0x00000000

08006b3c <_calloc_r>:
 8006b3c:	b510      	push	{r4, lr}
 8006b3e:	fb02 f101 	mul.w	r1, r2, r1
 8006b42:	f7fe feb7 	bl	80058b4 <_malloc_r>
 8006b46:	4604      	mov	r4, r0
 8006b48:	b1d8      	cbz	r0, 8006b82 <_calloc_r+0x46>
 8006b4a:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006b4e:	f022 0203 	bic.w	r2, r2, #3
 8006b52:	3a04      	subs	r2, #4
 8006b54:	2a24      	cmp	r2, #36	; 0x24
 8006b56:	d81d      	bhi.n	8006b94 <_calloc_r+0x58>
 8006b58:	2a13      	cmp	r2, #19
 8006b5a:	d914      	bls.n	8006b86 <_calloc_r+0x4a>
 8006b5c:	2300      	movs	r3, #0
 8006b5e:	2a1b      	cmp	r2, #27
 8006b60:	e9c0 3300 	strd	r3, r3, [r0]
 8006b64:	d91b      	bls.n	8006b9e <_calloc_r+0x62>
 8006b66:	2a24      	cmp	r2, #36	; 0x24
 8006b68:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006b6c:	bf0a      	itet	eq
 8006b6e:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006b72:	f100 0210 	addne.w	r2, r0, #16
 8006b76:	f100 0218 	addeq.w	r2, r0, #24
 8006b7a:	2300      	movs	r3, #0
 8006b7c:	e9c2 3300 	strd	r3, r3, [r2]
 8006b80:	6093      	str	r3, [r2, #8]
 8006b82:	4620      	mov	r0, r4
 8006b84:	bd10      	pop	{r4, pc}
 8006b86:	4602      	mov	r2, r0
 8006b88:	2300      	movs	r3, #0
 8006b8a:	e9c2 3300 	strd	r3, r3, [r2]
 8006b8e:	6093      	str	r3, [r2, #8]
 8006b90:	4620      	mov	r0, r4
 8006b92:	bd10      	pop	{r4, pc}
 8006b94:	2100      	movs	r1, #0
 8006b96:	f7fb fb6f 	bl	8002278 <memset>
 8006b9a:	4620      	mov	r0, r4
 8006b9c:	bd10      	pop	{r4, pc}
 8006b9e:	f100 0208 	add.w	r2, r0, #8
 8006ba2:	e7f1      	b.n	8006b88 <_calloc_r+0x4c>

08006ba4 <_close_r>:
 8006ba4:	b538      	push	{r3, r4, r5, lr}
 8006ba6:	4c07      	ldr	r4, [pc, #28]	; (8006bc4 <_close_r+0x20>)
 8006ba8:	2300      	movs	r3, #0
 8006baa:	4605      	mov	r5, r0
 8006bac:	4608      	mov	r0, r1
 8006bae:	6023      	str	r3, [r4, #0]
 8006bb0:	f7fb fad9 	bl	8002166 <_close>
 8006bb4:	1c43      	adds	r3, r0, #1
 8006bb6:	d000      	beq.n	8006bba <_close_r+0x16>
 8006bb8:	bd38      	pop	{r3, r4, r5, pc}
 8006bba:	6823      	ldr	r3, [r4, #0]
 8006bbc:	2b00      	cmp	r3, #0
 8006bbe:	d0fb      	beq.n	8006bb8 <_close_r+0x14>
 8006bc0:	602b      	str	r3, [r5, #0]
 8006bc2:	bd38      	pop	{r3, r4, r5, pc}
 8006bc4:	20000b18 	.word	0x20000b18

08006bc8 <_fclose_r>:
 8006bc8:	b570      	push	{r4, r5, r6, lr}
 8006bca:	2900      	cmp	r1, #0
 8006bcc:	d048      	beq.n	8006c60 <_fclose_r+0x98>
 8006bce:	4605      	mov	r5, r0
 8006bd0:	460c      	mov	r4, r1
 8006bd2:	b110      	cbz	r0, 8006bda <_fclose_r+0x12>
 8006bd4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006bd6:	2b00      	cmp	r3, #0
 8006bd8:	d048      	beq.n	8006c6c <_fclose_r+0xa4>
 8006bda:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006bdc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006be0:	07d0      	lsls	r0, r2, #31
 8006be2:	d440      	bmi.n	8006c66 <_fclose_r+0x9e>
 8006be4:	0599      	lsls	r1, r3, #22
 8006be6:	d530      	bpl.n	8006c4a <_fclose_r+0x82>
 8006be8:	4621      	mov	r1, r4
 8006bea:	4628      	mov	r0, r5
 8006bec:	f7fe f990 	bl	8004f10 <__sflush_r>
 8006bf0:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006bf2:	4606      	mov	r6, r0
 8006bf4:	b133      	cbz	r3, 8006c04 <_fclose_r+0x3c>
 8006bf6:	69e1      	ldr	r1, [r4, #28]
 8006bf8:	4628      	mov	r0, r5
 8006bfa:	4798      	blx	r3
 8006bfc:	2800      	cmp	r0, #0
 8006bfe:	bfb8      	it	lt
 8006c00:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006c04:	89a3      	ldrh	r3, [r4, #12]
 8006c06:	061a      	lsls	r2, r3, #24
 8006c08:	d43c      	bmi.n	8006c84 <_fclose_r+0xbc>
 8006c0a:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006c0c:	b141      	cbz	r1, 8006c20 <_fclose_r+0x58>
 8006c0e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006c12:	4299      	cmp	r1, r3
 8006c14:	d002      	beq.n	8006c1c <_fclose_r+0x54>
 8006c16:	4628      	mov	r0, r5
 8006c18:	f7fe fb22 	bl	8005260 <_free_r>
 8006c1c:	2300      	movs	r3, #0
 8006c1e:	6323      	str	r3, [r4, #48]	; 0x30
 8006c20:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006c22:	b121      	cbz	r1, 8006c2e <_fclose_r+0x66>
 8006c24:	4628      	mov	r0, r5
 8006c26:	f7fe fb1b 	bl	8005260 <_free_r>
 8006c2a:	2300      	movs	r3, #0
 8006c2c:	6463      	str	r3, [r4, #68]	; 0x44
 8006c2e:	f7fe faa1 	bl	8005174 <__sfp_lock_acquire>
 8006c32:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006c34:	2200      	movs	r2, #0
 8006c36:	07db      	lsls	r3, r3, #31
 8006c38:	81a2      	strh	r2, [r4, #12]
 8006c3a:	d51f      	bpl.n	8006c7c <_fclose_r+0xb4>
 8006c3c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c3e:	f7fe fdbb 	bl	80057b8 <__retarget_lock_close_recursive>
 8006c42:	f7fe fa9d 	bl	8005180 <__sfp_lock_release>
 8006c46:	4630      	mov	r0, r6
 8006c48:	bd70      	pop	{r4, r5, r6, pc}
 8006c4a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c4c:	f7fe fdb6 	bl	80057bc <__retarget_lock_acquire_recursive>
 8006c50:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c54:	2b00      	cmp	r3, #0
 8006c56:	d1c7      	bne.n	8006be8 <_fclose_r+0x20>
 8006c58:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006c5a:	f016 0601 	ands.w	r6, r6, #1
 8006c5e:	d016      	beq.n	8006c8e <_fclose_r+0xc6>
 8006c60:	2600      	movs	r6, #0
 8006c62:	4630      	mov	r0, r6
 8006c64:	bd70      	pop	{r4, r5, r6, pc}
 8006c66:	2b00      	cmp	r3, #0
 8006c68:	d0fa      	beq.n	8006c60 <_fclose_r+0x98>
 8006c6a:	e7bd      	b.n	8006be8 <_fclose_r+0x20>
 8006c6c:	f7fe fa56 	bl	800511c <__sinit>
 8006c70:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c72:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c76:	07d0      	lsls	r0, r2, #31
 8006c78:	d4f5      	bmi.n	8006c66 <_fclose_r+0x9e>
 8006c7a:	e7b3      	b.n	8006be4 <_fclose_r+0x1c>
 8006c7c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c7e:	f7fe fd9f 	bl	80057c0 <__retarget_lock_release_recursive>
 8006c82:	e7db      	b.n	8006c3c <_fclose_r+0x74>
 8006c84:	6921      	ldr	r1, [r4, #16]
 8006c86:	4628      	mov	r0, r5
 8006c88:	f7fe faea 	bl	8005260 <_free_r>
 8006c8c:	e7bd      	b.n	8006c0a <_fclose_r+0x42>
 8006c8e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c90:	f7fe fd96 	bl	80057c0 <__retarget_lock_release_recursive>
 8006c94:	4630      	mov	r0, r6
 8006c96:	bd70      	pop	{r4, r5, r6, pc}

08006c98 <__fputwc>:
 8006c98:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006c9c:	b082      	sub	sp, #8
 8006c9e:	4681      	mov	r9, r0
 8006ca0:	4688      	mov	r8, r1
 8006ca2:	4614      	mov	r4, r2
 8006ca4:	f000 f8a0 	bl	8006de8 <__locale_mb_cur_max>
 8006ca8:	2801      	cmp	r0, #1
 8006caa:	d103      	bne.n	8006cb4 <__fputwc+0x1c>
 8006cac:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006cb0:	2bfe      	cmp	r3, #254	; 0xfe
 8006cb2:	d933      	bls.n	8006d1c <__fputwc+0x84>
 8006cb4:	4642      	mov	r2, r8
 8006cb6:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006cba:	a901      	add	r1, sp, #4
 8006cbc:	4648      	mov	r0, r9
 8006cbe:	f000 f93b 	bl	8006f38 <_wcrtomb_r>
 8006cc2:	1c42      	adds	r2, r0, #1
 8006cc4:	4606      	mov	r6, r0
 8006cc6:	d02f      	beq.n	8006d28 <__fputwc+0x90>
 8006cc8:	b320      	cbz	r0, 8006d14 <__fputwc+0x7c>
 8006cca:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006cce:	2500      	movs	r5, #0
 8006cd0:	f10d 0a04 	add.w	sl, sp, #4
 8006cd4:	e009      	b.n	8006cea <__fputwc+0x52>
 8006cd6:	6823      	ldr	r3, [r4, #0]
 8006cd8:	1c5a      	adds	r2, r3, #1
 8006cda:	6022      	str	r2, [r4, #0]
 8006cdc:	f883 c000 	strb.w	ip, [r3]
 8006ce0:	3501      	adds	r5, #1
 8006ce2:	42b5      	cmp	r5, r6
 8006ce4:	d216      	bcs.n	8006d14 <__fputwc+0x7c>
 8006ce6:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006cea:	68a3      	ldr	r3, [r4, #8]
 8006cec:	3b01      	subs	r3, #1
 8006cee:	2b00      	cmp	r3, #0
 8006cf0:	60a3      	str	r3, [r4, #8]
 8006cf2:	daf0      	bge.n	8006cd6 <__fputwc+0x3e>
 8006cf4:	69a7      	ldr	r7, [r4, #24]
 8006cf6:	42bb      	cmp	r3, r7
 8006cf8:	4661      	mov	r1, ip
 8006cfa:	4622      	mov	r2, r4
 8006cfc:	4648      	mov	r0, r9
 8006cfe:	db02      	blt.n	8006d06 <__fputwc+0x6e>
 8006d00:	f1bc 0f0a 	cmp.w	ip, #10
 8006d04:	d1e7      	bne.n	8006cd6 <__fputwc+0x3e>
 8006d06:	f000 f8bf 	bl	8006e88 <__swbuf_r>
 8006d0a:	1c43      	adds	r3, r0, #1
 8006d0c:	d1e8      	bne.n	8006ce0 <__fputwc+0x48>
 8006d0e:	b002      	add	sp, #8
 8006d10:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d14:	4640      	mov	r0, r8
 8006d16:	b002      	add	sp, #8
 8006d18:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d1c:	fa5f fc88 	uxtb.w	ip, r8
 8006d20:	4606      	mov	r6, r0
 8006d22:	f88d c004 	strb.w	ip, [sp, #4]
 8006d26:	e7d2      	b.n	8006cce <__fputwc+0x36>
 8006d28:	89a3      	ldrh	r3, [r4, #12]
 8006d2a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006d2e:	81a3      	strh	r3, [r4, #12]
 8006d30:	b002      	add	sp, #8
 8006d32:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d36:	bf00      	nop

08006d38 <_fputwc_r>:
 8006d38:	b530      	push	{r4, r5, lr}
 8006d3a:	4605      	mov	r5, r0
 8006d3c:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006d3e:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006d42:	07c0      	lsls	r0, r0, #31
 8006d44:	4614      	mov	r4, r2
 8006d46:	b083      	sub	sp, #12
 8006d48:	b29a      	uxth	r2, r3
 8006d4a:	d401      	bmi.n	8006d50 <_fputwc_r+0x18>
 8006d4c:	0590      	lsls	r0, r2, #22
 8006d4e:	d51c      	bpl.n	8006d8a <_fputwc_r+0x52>
 8006d50:	0490      	lsls	r0, r2, #18
 8006d52:	d406      	bmi.n	8006d62 <_fputwc_r+0x2a>
 8006d54:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006d56:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006d5a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006d5e:	81a3      	strh	r3, [r4, #12]
 8006d60:	6662      	str	r2, [r4, #100]	; 0x64
 8006d62:	4628      	mov	r0, r5
 8006d64:	4622      	mov	r2, r4
 8006d66:	f7ff ff97 	bl	8006c98 <__fputwc>
 8006d6a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006d6c:	07da      	lsls	r2, r3, #31
 8006d6e:	4605      	mov	r5, r0
 8006d70:	d402      	bmi.n	8006d78 <_fputwc_r+0x40>
 8006d72:	89a3      	ldrh	r3, [r4, #12]
 8006d74:	059b      	lsls	r3, r3, #22
 8006d76:	d502      	bpl.n	8006d7e <_fputwc_r+0x46>
 8006d78:	4628      	mov	r0, r5
 8006d7a:	b003      	add	sp, #12
 8006d7c:	bd30      	pop	{r4, r5, pc}
 8006d7e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d80:	f7fe fd1e 	bl	80057c0 <__retarget_lock_release_recursive>
 8006d84:	4628      	mov	r0, r5
 8006d86:	b003      	add	sp, #12
 8006d88:	bd30      	pop	{r4, r5, pc}
 8006d8a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d8c:	9101      	str	r1, [sp, #4]
 8006d8e:	f7fe fd15 	bl	80057bc <__retarget_lock_acquire_recursive>
 8006d92:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d96:	9901      	ldr	r1, [sp, #4]
 8006d98:	b29a      	uxth	r2, r3
 8006d9a:	e7d9      	b.n	8006d50 <_fputwc_r+0x18>

08006d9c <_fstat_r>:
 8006d9c:	b538      	push	{r3, r4, r5, lr}
 8006d9e:	460b      	mov	r3, r1
 8006da0:	4c07      	ldr	r4, [pc, #28]	; (8006dc0 <_fstat_r+0x24>)
 8006da2:	4605      	mov	r5, r0
 8006da4:	4611      	mov	r1, r2
 8006da6:	4618      	mov	r0, r3
 8006da8:	2300      	movs	r3, #0
 8006daa:	6023      	str	r3, [r4, #0]
 8006dac:	f7fb f9de 	bl	800216c <_fstat>
 8006db0:	1c43      	adds	r3, r0, #1
 8006db2:	d000      	beq.n	8006db6 <_fstat_r+0x1a>
 8006db4:	bd38      	pop	{r3, r4, r5, pc}
 8006db6:	6823      	ldr	r3, [r4, #0]
 8006db8:	2b00      	cmp	r3, #0
 8006dba:	d0fb      	beq.n	8006db4 <_fstat_r+0x18>
 8006dbc:	602b      	str	r3, [r5, #0]
 8006dbe:	bd38      	pop	{r3, r4, r5, pc}
 8006dc0:	20000b18 	.word	0x20000b18

08006dc4 <_isatty_r>:
 8006dc4:	b538      	push	{r3, r4, r5, lr}
 8006dc6:	4c07      	ldr	r4, [pc, #28]	; (8006de4 <_isatty_r+0x20>)
 8006dc8:	2300      	movs	r3, #0
 8006dca:	4605      	mov	r5, r0
 8006dcc:	4608      	mov	r0, r1
 8006dce:	6023      	str	r3, [r4, #0]
 8006dd0:	f7fb f9d1 	bl	8002176 <_isatty>
 8006dd4:	1c43      	adds	r3, r0, #1
 8006dd6:	d000      	beq.n	8006dda <_isatty_r+0x16>
 8006dd8:	bd38      	pop	{r3, r4, r5, pc}
 8006dda:	6823      	ldr	r3, [r4, #0]
 8006ddc:	2b00      	cmp	r3, #0
 8006dde:	d0fb      	beq.n	8006dd8 <_isatty_r+0x14>
 8006de0:	602b      	str	r3, [r5, #0]
 8006de2:	bd38      	pop	{r3, r4, r5, pc}
 8006de4:	20000b18 	.word	0x20000b18

08006de8 <__locale_mb_cur_max>:
 8006de8:	4b04      	ldr	r3, [pc, #16]	; (8006dfc <__locale_mb_cur_max+0x14>)
 8006dea:	4a05      	ldr	r2, [pc, #20]	; (8006e00 <__locale_mb_cur_max+0x18>)
 8006dec:	681b      	ldr	r3, [r3, #0]
 8006dee:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006df0:	2b00      	cmp	r3, #0
 8006df2:	bf08      	it	eq
 8006df4:	4613      	moveq	r3, r2
 8006df6:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006dfa:	4770      	bx	lr
 8006dfc:	20000018 	.word	0x20000018
 8006e00:	2000085c 	.word	0x2000085c

08006e04 <_lseek_r>:
 8006e04:	b570      	push	{r4, r5, r6, lr}
 8006e06:	460d      	mov	r5, r1
 8006e08:	4c08      	ldr	r4, [pc, #32]	; (8006e2c <_lseek_r+0x28>)
 8006e0a:	4611      	mov	r1, r2
 8006e0c:	4606      	mov	r6, r0
 8006e0e:	461a      	mov	r2, r3
 8006e10:	4628      	mov	r0, r5
 8006e12:	2300      	movs	r3, #0
 8006e14:	6023      	str	r3, [r4, #0]
 8006e16:	f7fb f9b0 	bl	800217a <_lseek>
 8006e1a:	1c43      	adds	r3, r0, #1
 8006e1c:	d000      	beq.n	8006e20 <_lseek_r+0x1c>
 8006e1e:	bd70      	pop	{r4, r5, r6, pc}
 8006e20:	6823      	ldr	r3, [r4, #0]
 8006e22:	2b00      	cmp	r3, #0
 8006e24:	d0fb      	beq.n	8006e1e <_lseek_r+0x1a>
 8006e26:	6033      	str	r3, [r6, #0]
 8006e28:	bd70      	pop	{r4, r5, r6, pc}
 8006e2a:	bf00      	nop
 8006e2c:	20000b18 	.word	0x20000b18

08006e30 <__ascii_mbtowc>:
 8006e30:	b082      	sub	sp, #8
 8006e32:	b149      	cbz	r1, 8006e48 <__ascii_mbtowc+0x18>
 8006e34:	b15a      	cbz	r2, 8006e4e <__ascii_mbtowc+0x1e>
 8006e36:	b16b      	cbz	r3, 8006e54 <__ascii_mbtowc+0x24>
 8006e38:	7813      	ldrb	r3, [r2, #0]
 8006e3a:	600b      	str	r3, [r1, #0]
 8006e3c:	7812      	ldrb	r2, [r2, #0]
 8006e3e:	1c10      	adds	r0, r2, #0
 8006e40:	bf18      	it	ne
 8006e42:	2001      	movne	r0, #1
 8006e44:	b002      	add	sp, #8
 8006e46:	4770      	bx	lr
 8006e48:	a901      	add	r1, sp, #4
 8006e4a:	2a00      	cmp	r2, #0
 8006e4c:	d1f3      	bne.n	8006e36 <__ascii_mbtowc+0x6>
 8006e4e:	4610      	mov	r0, r2
 8006e50:	b002      	add	sp, #8
 8006e52:	4770      	bx	lr
 8006e54:	f06f 0001 	mvn.w	r0, #1
 8006e58:	e7f4      	b.n	8006e44 <__ascii_mbtowc+0x14>
 8006e5a:	bf00      	nop

08006e5c <_read_r>:
 8006e5c:	b570      	push	{r4, r5, r6, lr}
 8006e5e:	460d      	mov	r5, r1
 8006e60:	4c08      	ldr	r4, [pc, #32]	; (8006e84 <_read_r+0x28>)
 8006e62:	4611      	mov	r1, r2
 8006e64:	4606      	mov	r6, r0
 8006e66:	461a      	mov	r2, r3
 8006e68:	4628      	mov	r0, r5
 8006e6a:	2300      	movs	r3, #0
 8006e6c:	6023      	str	r3, [r4, #0]
 8006e6e:	f7fb f938 	bl	80020e2 <_read>
 8006e72:	1c43      	adds	r3, r0, #1
 8006e74:	d000      	beq.n	8006e78 <_read_r+0x1c>
 8006e76:	bd70      	pop	{r4, r5, r6, pc}
 8006e78:	6823      	ldr	r3, [r4, #0]
 8006e7a:	2b00      	cmp	r3, #0
 8006e7c:	d0fb      	beq.n	8006e76 <_read_r+0x1a>
 8006e7e:	6033      	str	r3, [r6, #0]
 8006e80:	bd70      	pop	{r4, r5, r6, pc}
 8006e82:	bf00      	nop
 8006e84:	20000b18 	.word	0x20000b18

08006e88 <__swbuf_r>:
 8006e88:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006e8a:	460d      	mov	r5, r1
 8006e8c:	4614      	mov	r4, r2
 8006e8e:	4606      	mov	r6, r0
 8006e90:	b110      	cbz	r0, 8006e98 <__swbuf_r+0x10>
 8006e92:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006e94:	2b00      	cmp	r3, #0
 8006e96:	d043      	beq.n	8006f20 <__swbuf_r+0x98>
 8006e98:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006e9c:	69a3      	ldr	r3, [r4, #24]
 8006e9e:	60a3      	str	r3, [r4, #8]
 8006ea0:	b291      	uxth	r1, r2
 8006ea2:	0708      	lsls	r0, r1, #28
 8006ea4:	d51b      	bpl.n	8006ede <__swbuf_r+0x56>
 8006ea6:	6923      	ldr	r3, [r4, #16]
 8006ea8:	b1cb      	cbz	r3, 8006ede <__swbuf_r+0x56>
 8006eaa:	b2ed      	uxtb	r5, r5
 8006eac:	0489      	lsls	r1, r1, #18
 8006eae:	462f      	mov	r7, r5
 8006eb0:	d522      	bpl.n	8006ef8 <__swbuf_r+0x70>
 8006eb2:	6822      	ldr	r2, [r4, #0]
 8006eb4:	6961      	ldr	r1, [r4, #20]
 8006eb6:	1ad3      	subs	r3, r2, r3
 8006eb8:	4299      	cmp	r1, r3
 8006eba:	dd29      	ble.n	8006f10 <__swbuf_r+0x88>
 8006ebc:	3301      	adds	r3, #1
 8006ebe:	68a1      	ldr	r1, [r4, #8]
 8006ec0:	1c50      	adds	r0, r2, #1
 8006ec2:	3901      	subs	r1, #1
 8006ec4:	60a1      	str	r1, [r4, #8]
 8006ec6:	6020      	str	r0, [r4, #0]
 8006ec8:	7015      	strb	r5, [r2, #0]
 8006eca:	6962      	ldr	r2, [r4, #20]
 8006ecc:	429a      	cmp	r2, r3
 8006ece:	d02a      	beq.n	8006f26 <__swbuf_r+0x9e>
 8006ed0:	89a3      	ldrh	r3, [r4, #12]
 8006ed2:	07db      	lsls	r3, r3, #31
 8006ed4:	d501      	bpl.n	8006eda <__swbuf_r+0x52>
 8006ed6:	2d0a      	cmp	r5, #10
 8006ed8:	d025      	beq.n	8006f26 <__swbuf_r+0x9e>
 8006eda:	4638      	mov	r0, r7
 8006edc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006ede:	4621      	mov	r1, r4
 8006ee0:	4630      	mov	r0, r6
 8006ee2:	f7fc fffd 	bl	8003ee0 <__swsetup_r>
 8006ee6:	bb20      	cbnz	r0, 8006f32 <__swbuf_r+0xaa>
 8006ee8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006eec:	6923      	ldr	r3, [r4, #16]
 8006eee:	b291      	uxth	r1, r2
 8006ef0:	b2ed      	uxtb	r5, r5
 8006ef2:	0489      	lsls	r1, r1, #18
 8006ef4:	462f      	mov	r7, r5
 8006ef6:	d4dc      	bmi.n	8006eb2 <__swbuf_r+0x2a>
 8006ef8:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006efa:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006efe:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006f02:	81a2      	strh	r2, [r4, #12]
 8006f04:	6822      	ldr	r2, [r4, #0]
 8006f06:	6661      	str	r1, [r4, #100]	; 0x64
 8006f08:	6961      	ldr	r1, [r4, #20]
 8006f0a:	1ad3      	subs	r3, r2, r3
 8006f0c:	4299      	cmp	r1, r3
 8006f0e:	dcd5      	bgt.n	8006ebc <__swbuf_r+0x34>
 8006f10:	4621      	mov	r1, r4
 8006f12:	4630      	mov	r0, r6
 8006f14:	f7fe f8a6 	bl	8005064 <_fflush_r>
 8006f18:	b958      	cbnz	r0, 8006f32 <__swbuf_r+0xaa>
 8006f1a:	6822      	ldr	r2, [r4, #0]
 8006f1c:	2301      	movs	r3, #1
 8006f1e:	e7ce      	b.n	8006ebe <__swbuf_r+0x36>
 8006f20:	f7fe f8fc 	bl	800511c <__sinit>
 8006f24:	e7b8      	b.n	8006e98 <__swbuf_r+0x10>
 8006f26:	4621      	mov	r1, r4
 8006f28:	4630      	mov	r0, r6
 8006f2a:	f7fe f89b 	bl	8005064 <_fflush_r>
 8006f2e:	2800      	cmp	r0, #0
 8006f30:	d0d3      	beq.n	8006eda <__swbuf_r+0x52>
 8006f32:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006f36:	e7d0      	b.n	8006eda <__swbuf_r+0x52>

08006f38 <_wcrtomb_r>:
 8006f38:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006f3a:	4c11      	ldr	r4, [pc, #68]	; (8006f80 <_wcrtomb_r+0x48>)
 8006f3c:	6824      	ldr	r4, [r4, #0]
 8006f3e:	b085      	sub	sp, #20
 8006f40:	4606      	mov	r6, r0
 8006f42:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006f44:	461f      	mov	r7, r3
 8006f46:	b151      	cbz	r1, 8006f5e <_wcrtomb_r+0x26>
 8006f48:	4d0e      	ldr	r5, [pc, #56]	; (8006f84 <_wcrtomb_r+0x4c>)
 8006f4a:	2c00      	cmp	r4, #0
 8006f4c:	bf08      	it	eq
 8006f4e:	462c      	moveq	r4, r5
 8006f50:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006f54:	47a0      	blx	r4
 8006f56:	1c43      	adds	r3, r0, #1
 8006f58:	d00c      	beq.n	8006f74 <_wcrtomb_r+0x3c>
 8006f5a:	b005      	add	sp, #20
 8006f5c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006f5e:	4a09      	ldr	r2, [pc, #36]	; (8006f84 <_wcrtomb_r+0x4c>)
 8006f60:	2c00      	cmp	r4, #0
 8006f62:	bf08      	it	eq
 8006f64:	4614      	moveq	r4, r2
 8006f66:	460a      	mov	r2, r1
 8006f68:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006f6c:	a901      	add	r1, sp, #4
 8006f6e:	47a0      	blx	r4
 8006f70:	1c43      	adds	r3, r0, #1
 8006f72:	d1f2      	bne.n	8006f5a <_wcrtomb_r+0x22>
 8006f74:	2200      	movs	r2, #0
 8006f76:	238a      	movs	r3, #138	; 0x8a
 8006f78:	603a      	str	r2, [r7, #0]
 8006f7a:	6033      	str	r3, [r6, #0]
 8006f7c:	b005      	add	sp, #20
 8006f7e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006f80:	20000018 	.word	0x20000018
 8006f84:	2000085c 	.word	0x2000085c

08006f88 <__ascii_wctomb>:
 8006f88:	b121      	cbz	r1, 8006f94 <__ascii_wctomb+0xc>
 8006f8a:	2aff      	cmp	r2, #255	; 0xff
 8006f8c:	d804      	bhi.n	8006f98 <__ascii_wctomb+0x10>
 8006f8e:	700a      	strb	r2, [r1, #0]
 8006f90:	2001      	movs	r0, #1
 8006f92:	4770      	bx	lr
 8006f94:	4608      	mov	r0, r1
 8006f96:	4770      	bx	lr
 8006f98:	238a      	movs	r3, #138	; 0x8a
 8006f9a:	6003      	str	r3, [r0, #0]
 8006f9c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006fa0:	4770      	bx	lr
 8006fa2:	bf00      	nop

08006fa4 <_init>:
 8006fa4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006fa6:	bf00      	nop
 8006fa8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006faa:	bc08      	pop	{r3}
 8006fac:	469e      	mov	lr, r3
 8006fae:	4770      	bx	lr

08006fb0 <_fini>:
 8006fb0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006fb2:	bf00      	nop
 8006fb4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006fb6:	bc08      	pop	{r3}
 8006fb8:	469e      	mov	lr, r3
 8006fba:	4770      	bx	lr
 8006fbc:	0000      	movs	r0, r0
	...
