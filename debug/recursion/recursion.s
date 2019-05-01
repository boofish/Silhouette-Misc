
recursion.elf:     file format elf32-littlearm


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
 80001e0:	08006ea4 	.word	0x08006ea4

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
 80001fc:	08006ea4 	.word	0x08006ea4

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
 8001108:	f640 20a4 	movw	r0, #2724	; 0xaa4
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 20a4 	movw	r0, #2724	; 0xaa4
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
 80013e8:	f646 62d8 	movw	r2, #28376	; 0x6ed8
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
 8001462:	f646 62d0 	movw	r2, #28368	; 0x6ed0
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
 800148c:	f646 62d0 	movw	r2, #28368	; 0x6ed0
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
 8001842:	f640 21a8 	movw	r1, #2728	; 0xaa8
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
 800188c:	f640 20a8 	movw	r0, #2728	; 0xaa8
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 20a8 	movw	r0, #2728	; 0xaa8
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
 80019d4:	f646 7308 	movw	r3, #28424	; 0x6f08
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
 80019fc:	f646 7318 	movw	r3, #28440	; 0x6f18
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

08001eb6 <fib>:
 8001eb6:	b5b0      	push	{r4, r5, r7, lr}
 8001eb8:	af02      	add	r7, sp, #8
 8001eba:	4605      	mov	r5, r0
 8001ebc:	2401      	movs	r4, #1
 8001ebe:	2d02      	cmp	r5, #2
 8001ec0:	d306      	bcc.n	8001ed0 <fib+0x1a>
 8001ec2:	1e68      	subs	r0, r5, #1
 8001ec4:	f7ff fff7 	bl	8001eb6 <fib>
 8001ec8:	3d02      	subs	r5, #2
 8001eca:	4404      	add	r4, r0
 8001ecc:	2d01      	cmp	r5, #1
 8001ece:	d8f8      	bhi.n	8001ec2 <fib+0xc>
 8001ed0:	4620      	mov	r0, r4
 8001ed2:	bdb0      	pop	{r4, r5, r7, pc}

08001ed4 <benchmark>:
 8001ed4:	b580      	push	{r7, lr}
 8001ed6:	466f      	mov	r7, sp
 8001ed8:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8001edc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ee0:	7800      	ldrb	r0, [r0, #0]
 8001ee2:	2800      	cmp	r0, #0
 8001ee4:	bf18      	it	ne
 8001ee6:	200a      	movne	r0, #10
 8001ee8:	f7ff ffe5 	bl	8001eb6 <fib>
 8001eec:	f640 21ec 	movw	r1, #2796	; 0xaec
 8001ef0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001ef4:	6008      	str	r0, [r1, #0]
 8001ef6:	6808      	ldr	r0, [r1, #0]
 8001ef8:	bd80      	pop	{r7, pc}

08001efa <initialise_benchmark>:
 8001efa:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8001efe:	2101      	movs	r1, #1
 8001f00:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f04:	7001      	strb	r1, [r0, #0]
 8001f06:	4770      	bx	lr

08001f08 <verify_benchmark>:
 8001f08:	2100      	movs	r1, #0
 8001f0a:	2859      	cmp	r0, #89	; 0x59
 8001f0c:	bf08      	it	eq
 8001f0e:	2101      	moveq	r1, #1
 8001f10:	4608      	mov	r0, r1
 8001f12:	4770      	bx	lr

08001f14 <__io_putchar>:
 8001f14:	b580      	push	{r7, lr}
 8001f16:	466f      	mov	r7, sp
 8001f18:	b082      	sub	sp, #8
 8001f1a:	9001      	str	r0, [sp, #4]
 8001f1c:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8001f20:	a901      	add	r1, sp, #4
 8001f22:	2201      	movs	r2, #1
 8001f24:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001f28:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f2c:	f7ff fed5 	bl	8001cda <HAL_UART_Transmit>
 8001f30:	9801      	ldr	r0, [sp, #4]
 8001f32:	b002      	add	sp, #8
 8001f34:	bd80      	pop	{r7, pc}

08001f36 <main>:
 8001f36:	b5b0      	push	{r4, r5, r7, lr}
 8001f38:	af02      	add	r7, sp, #8
 8001f3a:	f640 11e8 	movw	r1, #2536	; 0x9e8
 8001f3e:	f643 0000 	movw	r0, #14336	; 0x3800
 8001f42:	220c      	movs	r2, #12
 8001f44:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001f48:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001f4c:	6008      	str	r0, [r1, #0]
 8001f4e:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8001f52:	6048      	str	r0, [r1, #4]
 8001f54:	2000      	movs	r0, #0
 8001f56:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8001f5a:	6108      	str	r0, [r1, #16]
 8001f5c:	6248      	str	r0, [r1, #36]	; 0x24
 8001f5e:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8001f62:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8001f66:	2000      	movs	r0, #0
 8001f68:	f7ff ff4c 	bl	8001e04 <BSP_COM_Init>
 8001f6c:	f7ff ffc5 	bl	8001efa <initialise_benchmark>
 8001f70:	f646 7028 	movw	r0, #28456	; 0x6f28
 8001f74:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f78:	f000 f948 	bl	800220c <printf>
 8001f7c:	f646 70d4 	movw	r0, #28628	; 0x6fd4
 8001f80:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f84:	f000 f9a4 	bl	80022d0 <puts>
 8001f88:	f7ff f8ae 	bl	80010e8 <HAL_Init>
 8001f8c:	f7ff f8c4 	bl	8001118 <HAL_GetTick>
 8001f90:	4604      	mov	r4, r0
 8001f92:	f7ff ff9f 	bl	8001ed4 <benchmark>
 8001f96:	4605      	mov	r5, r0
 8001f98:	f7ff f8be 	bl	8001118 <HAL_GetTick>
 8001f9c:	1b04      	subs	r4, r0, r4
 8001f9e:	4628      	mov	r0, r5
 8001fa0:	f7ff ffb2 	bl	8001f08 <verify_benchmark>
 8001fa4:	1c41      	adds	r1, r0, #1
 8001fa6:	d006      	beq.n	8001fb6 <main+0x80>
 8001fa8:	2801      	cmp	r0, #1
 8001faa:	d109      	bne.n	8001fc0 <main+0x8a>
 8001fac:	f646 7040 	movw	r0, #28480	; 0x6f40
 8001fb0:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fb4:	e008      	b.n	8001fc8 <main+0x92>
 8001fb6:	f646 7064 	movw	r0, #28516	; 0x6f64
 8001fba:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fbe:	e003      	b.n	8001fc8 <main+0x92>
 8001fc0:	f646 7099 	movw	r0, #28569	; 0x6f99
 8001fc4:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fc8:	4621      	mov	r1, r4
 8001fca:	f000 f91f 	bl	800220c <printf>
 8001fce:	2000      	movs	r0, #0
 8001fd0:	bdb0      	pop	{r4, r5, r7, pc}

08001fd2 <SysTick_Handler>:
 8001fd2:	b580      	push	{r7, lr}
 8001fd4:	466f      	mov	r7, sp
 8001fd6:	f7ff f897 	bl	8001108 <HAL_IncTick>
 8001fda:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001fde:	f7ff b8f1 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

08001fe2 <_read>:
 8001fe2:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001fe4:	af03      	add	r7, sp, #12
 8001fe6:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001fea:	4614      	mov	r4, r2
 8001fec:	460d      	mov	r5, r1
 8001fee:	2c01      	cmp	r4, #1
 8001ff0:	db06      	blt.n	8002000 <_read+0x1e>
 8001ff2:	4626      	mov	r6, r4
 8001ff4:	f3af 8000 	nop.w
 8001ff8:	f805 0b01 	strb.w	r0, [r5], #1
 8001ffc:	3e01      	subs	r6, #1
 8001ffe:	d1f9      	bne.n	8001ff4 <_read+0x12>
 8002000:	4620      	mov	r0, r4
 8002002:	f85d bb04 	ldr.w	fp, [sp], #4
 8002006:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002008 <_write>:
 8002008:	b5f0      	push	{r4, r5, r6, r7, lr}
 800200a:	af03      	add	r7, sp, #12
 800200c:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002010:	4614      	mov	r4, r2
 8002012:	460d      	mov	r5, r1
 8002014:	2c01      	cmp	r4, #1
 8002016:	db06      	blt.n	8002026 <_write+0x1e>
 8002018:	4626      	mov	r6, r4
 800201a:	f815 0b01 	ldrb.w	r0, [r5], #1
 800201e:	f7ff ff79 	bl	8001f14 <__io_putchar>
 8002022:	3e01      	subs	r6, #1
 8002024:	d1f9      	bne.n	800201a <_write+0x12>
 8002026:	4620      	mov	r0, r4
 8002028:	f85d bb04 	ldr.w	fp, [sp], #4
 800202c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800202e <_sbrk>:
 800202e:	f640 226c 	movw	r2, #2668	; 0xa6c
 8002032:	4601      	mov	r1, r0
 8002034:	466b      	mov	r3, sp
 8002036:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800203a:	6810      	ldr	r0, [r2, #0]
 800203c:	2800      	cmp	r0, #0
 800203e:	bf02      	ittt	eq
 8002040:	f640 3018 	movweq	r0, #2840	; 0xb18
 8002044:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002048:	6010      	streq	r0, [r2, #0]
 800204a:	4401      	add	r1, r0
 800204c:	4299      	cmp	r1, r3
 800204e:	bf9c      	itt	ls
 8002050:	6011      	strls	r1, [r2, #0]
 8002052:	4770      	bxls	lr
 8002054:	b580      	push	{r7, lr}
 8002056:	466f      	mov	r7, sp
 8002058:	f000 f864 	bl	8002124 <__errno>
 800205c:	210c      	movs	r1, #12
 800205e:	6001      	str	r1, [r0, #0]
 8002060:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002064:	bd80      	pop	{r7, pc}

08002066 <_close>:
 8002066:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800206a:	4770      	bx	lr

0800206c <_fstat>:
 800206c:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002070:	6048      	str	r0, [r1, #4]
 8002072:	2000      	movs	r0, #0
 8002074:	4770      	bx	lr

08002076 <_isatty>:
 8002076:	2001      	movs	r0, #1
 8002078:	4770      	bx	lr

0800207a <_lseek>:
 800207a:	2000      	movs	r0, #0
 800207c:	4770      	bx	lr

0800207e <SystemInit>:
 800207e:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002082:	f04f 0c00 	mov.w	ip, #0
 8002086:	f2ce 0000 	movt	r0, #57344	; 0xe000
 800208a:	6801      	ldr	r1, [r0, #0]
 800208c:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002090:	6001      	str	r1, [r0, #0]
 8002092:	f241 0100 	movw	r1, #4096	; 0x1000
 8002096:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800209a:	680a      	ldr	r2, [r1, #0]
 800209c:	f042 0201 	orr.w	r2, r2, #1
 80020a0:	600a      	str	r2, [r1, #0]
 80020a2:	f8c1 c008 	str.w	ip, [r1, #8]
 80020a6:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80020aa:	680b      	ldr	r3, [r1, #0]
 80020ac:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 80020b0:	401a      	ands	r2, r3
 80020b2:	600a      	str	r2, [r1, #0]
 80020b4:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80020b8:	60ca      	str	r2, [r1, #12]
 80020ba:	680a      	ldr	r2, [r1, #0]
 80020bc:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80020c0:	600a      	str	r2, [r1, #0]
 80020c2:	f8c1 c018 	str.w	ip, [r1, #24]
 80020c6:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80020ca:	f840 1c80 	str.w	r1, [r0, #-128]
 80020ce:	4770      	bx	lr

080020d0 <Reset_Handler>:
 80020d0:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002108 <LoopForever+0x2>
 80020d4:	2100      	movs	r1, #0
 80020d6:	e003      	b.n	80020e0 <LoopCopyDataInit>

080020d8 <CopyDataInit>:
 80020d8:	4b0c      	ldr	r3, [pc, #48]	; (800210c <LoopForever+0x6>)
 80020da:	585b      	ldr	r3, [r3, r1]
 80020dc:	5043      	str	r3, [r0, r1]
 80020de:	3104      	adds	r1, #4

080020e0 <LoopCopyDataInit>:
 80020e0:	480b      	ldr	r0, [pc, #44]	; (8002110 <LoopForever+0xa>)
 80020e2:	4b0c      	ldr	r3, [pc, #48]	; (8002114 <LoopForever+0xe>)
 80020e4:	1842      	adds	r2, r0, r1
 80020e6:	429a      	cmp	r2, r3
 80020e8:	d3f6      	bcc.n	80020d8 <CopyDataInit>
 80020ea:	4a0b      	ldr	r2, [pc, #44]	; (8002118 <LoopForever+0x12>)
 80020ec:	e002      	b.n	80020f4 <LoopFillZerobss>

080020ee <FillZerobss>:
 80020ee:	2300      	movs	r3, #0
 80020f0:	f842 3b04 	str.w	r3, [r2], #4

080020f4 <LoopFillZerobss>:
 80020f4:	4b09      	ldr	r3, [pc, #36]	; (800211c <LoopForever+0x16>)
 80020f6:	429a      	cmp	r2, r3
 80020f8:	d3f9      	bcc.n	80020ee <FillZerobss>
 80020fa:	f7ff ffc0 	bl	800207e <SystemInit>
 80020fe:	f000 f817 	bl	8002130 <__libc_init_array>
 8002102:	f7ff ff18 	bl	8001f36 <main>

08002106 <LoopForever>:
 8002106:	e7fe      	b.n	8002106 <LoopForever>
 8002108:	20018000 	.word	0x20018000
 800210c:	08007280 	.word	0x08007280
 8002110:	20000000 	.word	0x20000000
 8002114:	200009c8 	.word	0x200009c8
 8002118:	200009c8 	.word	0x200009c8
 800211c:	20000b18 	.word	0x20000b18

08002120 <ADC1_2_IRQHandler>:
 8002120:	e7fe      	b.n	8002120 <ADC1_2_IRQHandler>
	...

08002124 <__errno>:
 8002124:	4b01      	ldr	r3, [pc, #4]	; (800212c <__errno+0x8>)
 8002126:	6818      	ldr	r0, [r3, #0]
 8002128:	4770      	bx	lr
 800212a:	bf00      	nop
 800212c:	20000018 	.word	0x20000018

08002130 <__libc_init_array>:
 8002130:	b570      	push	{r4, r5, r6, lr}
 8002132:	4e0d      	ldr	r6, [pc, #52]	; (8002168 <__libc_init_array+0x38>)
 8002134:	4d0d      	ldr	r5, [pc, #52]	; (800216c <__libc_init_array+0x3c>)
 8002136:	1b76      	subs	r6, r6, r5
 8002138:	10b6      	asrs	r6, r6, #2
 800213a:	d006      	beq.n	800214a <__libc_init_array+0x1a>
 800213c:	2400      	movs	r4, #0
 800213e:	3401      	adds	r4, #1
 8002140:	f855 3b04 	ldr.w	r3, [r5], #4
 8002144:	4798      	blx	r3
 8002146:	42a6      	cmp	r6, r4
 8002148:	d1f9      	bne.n	800213e <__libc_init_array+0xe>
 800214a:	4e09      	ldr	r6, [pc, #36]	; (8002170 <__libc_init_array+0x40>)
 800214c:	4d09      	ldr	r5, [pc, #36]	; (8002174 <__libc_init_array+0x44>)
 800214e:	1b76      	subs	r6, r6, r5
 8002150:	f004 fea8 	bl	8006ea4 <_init>
 8002154:	10b6      	asrs	r6, r6, #2
 8002156:	d006      	beq.n	8002166 <__libc_init_array+0x36>
 8002158:	2400      	movs	r4, #0
 800215a:	3401      	adds	r4, #1
 800215c:	f855 3b04 	ldr.w	r3, [r5], #4
 8002160:	4798      	blx	r3
 8002162:	42a6      	cmp	r6, r4
 8002164:	d1f9      	bne.n	800215a <__libc_init_array+0x2a>
 8002166:	bd70      	pop	{r4, r5, r6, pc}
 8002168:	08007270 	.word	0x08007270
 800216c:	08007270 	.word	0x08007270
 8002170:	08007278 	.word	0x08007278
 8002174:	08007270 	.word	0x08007270

08002178 <memset>:
 8002178:	b4f0      	push	{r4, r5, r6, r7}
 800217a:	0786      	lsls	r6, r0, #30
 800217c:	d043      	beq.n	8002206 <memset+0x8e>
 800217e:	1e54      	subs	r4, r2, #1
 8002180:	2a00      	cmp	r2, #0
 8002182:	d03e      	beq.n	8002202 <memset+0x8a>
 8002184:	b2ca      	uxtb	r2, r1
 8002186:	4603      	mov	r3, r0
 8002188:	e002      	b.n	8002190 <memset+0x18>
 800218a:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 800218e:	d338      	bcc.n	8002202 <memset+0x8a>
 8002190:	f803 2b01 	strb.w	r2, [r3], #1
 8002194:	079d      	lsls	r5, r3, #30
 8002196:	d1f8      	bne.n	800218a <memset+0x12>
 8002198:	2c03      	cmp	r4, #3
 800219a:	d92b      	bls.n	80021f4 <memset+0x7c>
 800219c:	b2cd      	uxtb	r5, r1
 800219e:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80021a2:	2c0f      	cmp	r4, #15
 80021a4:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80021a8:	d916      	bls.n	80021d8 <memset+0x60>
 80021aa:	f1a4 0710 	sub.w	r7, r4, #16
 80021ae:	093f      	lsrs	r7, r7, #4
 80021b0:	f103 0620 	add.w	r6, r3, #32
 80021b4:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80021b8:	f103 0210 	add.w	r2, r3, #16
 80021bc:	e942 5504 	strd	r5, r5, [r2, #-16]
 80021c0:	e942 5502 	strd	r5, r5, [r2, #-8]
 80021c4:	3210      	adds	r2, #16
 80021c6:	42b2      	cmp	r2, r6
 80021c8:	d1f8      	bne.n	80021bc <memset+0x44>
 80021ca:	f004 040f 	and.w	r4, r4, #15
 80021ce:	3701      	adds	r7, #1
 80021d0:	2c03      	cmp	r4, #3
 80021d2:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80021d6:	d90d      	bls.n	80021f4 <memset+0x7c>
 80021d8:	461e      	mov	r6, r3
 80021da:	4622      	mov	r2, r4
 80021dc:	3a04      	subs	r2, #4
 80021de:	2a03      	cmp	r2, #3
 80021e0:	f846 5b04 	str.w	r5, [r6], #4
 80021e4:	d8fa      	bhi.n	80021dc <memset+0x64>
 80021e6:	1f22      	subs	r2, r4, #4
 80021e8:	f022 0203 	bic.w	r2, r2, #3
 80021ec:	3204      	adds	r2, #4
 80021ee:	4413      	add	r3, r2
 80021f0:	f004 0403 	and.w	r4, r4, #3
 80021f4:	b12c      	cbz	r4, 8002202 <memset+0x8a>
 80021f6:	b2c9      	uxtb	r1, r1
 80021f8:	441c      	add	r4, r3
 80021fa:	f803 1b01 	strb.w	r1, [r3], #1
 80021fe:	429c      	cmp	r4, r3
 8002200:	d1fb      	bne.n	80021fa <memset+0x82>
 8002202:	bcf0      	pop	{r4, r5, r6, r7}
 8002204:	4770      	bx	lr
 8002206:	4614      	mov	r4, r2
 8002208:	4603      	mov	r3, r0
 800220a:	e7c5      	b.n	8002198 <memset+0x20>

0800220c <printf>:
 800220c:	b40f      	push	{r0, r1, r2, r3}
 800220e:	b500      	push	{lr}
 8002210:	4907      	ldr	r1, [pc, #28]	; (8002230 <printf+0x24>)
 8002212:	b083      	sub	sp, #12
 8002214:	ab04      	add	r3, sp, #16
 8002216:	6808      	ldr	r0, [r1, #0]
 8002218:	f853 2b04 	ldr.w	r2, [r3], #4
 800221c:	6881      	ldr	r1, [r0, #8]
 800221e:	9301      	str	r3, [sp, #4]
 8002220:	f000 f85e 	bl	80022e0 <_vfprintf_r>
 8002224:	b003      	add	sp, #12
 8002226:	f85d eb04 	ldr.w	lr, [sp], #4
 800222a:	b004      	add	sp, #16
 800222c:	4770      	bx	lr
 800222e:	bf00      	nop
 8002230:	20000018 	.word	0x20000018

08002234 <_puts_r>:
 8002234:	b570      	push	{r4, r5, r6, lr}
 8002236:	4605      	mov	r5, r0
 8002238:	b088      	sub	sp, #32
 800223a:	4608      	mov	r0, r1
 800223c:	460c      	mov	r4, r1
 800223e:	f7fe f9ff 	bl	8000640 <strlen>
 8002242:	4a22      	ldr	r2, [pc, #136]	; (80022cc <_puts_r+0x98>)
 8002244:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002246:	9404      	str	r4, [sp, #16]
 8002248:	2601      	movs	r6, #1
 800224a:	1c44      	adds	r4, r0, #1
 800224c:	a904      	add	r1, sp, #16
 800224e:	9206      	str	r2, [sp, #24]
 8002250:	2202      	movs	r2, #2
 8002252:	9403      	str	r4, [sp, #12]
 8002254:	9005      	str	r0, [sp, #20]
 8002256:	68ac      	ldr	r4, [r5, #8]
 8002258:	9607      	str	r6, [sp, #28]
 800225a:	e9cd 1201 	strd	r1, r2, [sp, #4]
 800225e:	b31b      	cbz	r3, 80022a8 <_puts_r+0x74>
 8002260:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002262:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002266:	07ce      	lsls	r6, r1, #31
 8002268:	b29a      	uxth	r2, r3
 800226a:	d401      	bmi.n	8002270 <_puts_r+0x3c>
 800226c:	0590      	lsls	r0, r2, #22
 800226e:	d525      	bpl.n	80022bc <_puts_r+0x88>
 8002270:	0491      	lsls	r1, r2, #18
 8002272:	d406      	bmi.n	8002282 <_puts_r+0x4e>
 8002274:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8002276:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800227a:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 800227e:	81a3      	strh	r3, [r4, #12]
 8002280:	6662      	str	r2, [r4, #100]	; 0x64
 8002282:	4628      	mov	r0, r5
 8002284:	aa01      	add	r2, sp, #4
 8002286:	4621      	mov	r1, r4
 8002288:	f003 f85e 	bl	8005348 <__sfvwrite_r>
 800228c:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800228e:	2800      	cmp	r0, #0
 8002290:	bf0c      	ite	eq
 8002292:	250a      	moveq	r5, #10
 8002294:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002298:	07da      	lsls	r2, r3, #31
 800229a:	d402      	bmi.n	80022a2 <_puts_r+0x6e>
 800229c:	89a3      	ldrh	r3, [r4, #12]
 800229e:	059b      	lsls	r3, r3, #22
 80022a0:	d506      	bpl.n	80022b0 <_puts_r+0x7c>
 80022a2:	4628      	mov	r0, r5
 80022a4:	b008      	add	sp, #32
 80022a6:	bd70      	pop	{r4, r5, r6, pc}
 80022a8:	4628      	mov	r0, r5
 80022aa:	f002 feb7 	bl	800501c <__sinit>
 80022ae:	e7d7      	b.n	8002260 <_puts_r+0x2c>
 80022b0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80022b2:	f003 fa05 	bl	80056c0 <__retarget_lock_release_recursive>
 80022b6:	4628      	mov	r0, r5
 80022b8:	b008      	add	sp, #32
 80022ba:	bd70      	pop	{r4, r5, r6, pc}
 80022bc:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80022be:	f003 f9fd 	bl	80056bc <__retarget_lock_acquire_recursive>
 80022c2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80022c6:	b29a      	uxth	r2, r3
 80022c8:	e7d2      	b.n	8002270 <_puts_r+0x3c>
 80022ca:	bf00      	nop
 80022cc:	08006fdc 	.word	0x08006fdc

080022d0 <puts>:
 80022d0:	4b02      	ldr	r3, [pc, #8]	; (80022dc <puts+0xc>)
 80022d2:	4601      	mov	r1, r0
 80022d4:	6818      	ldr	r0, [r3, #0]
 80022d6:	f7ff bfad 	b.w	8002234 <_puts_r>
 80022da:	bf00      	nop
 80022dc:	20000018 	.word	0x20000018

080022e0 <_vfprintf_r>:
 80022e0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80022e4:	b0d7      	sub	sp, #348	; 0x15c
 80022e6:	461c      	mov	r4, r3
 80022e8:	4689      	mov	r9, r1
 80022ea:	4617      	mov	r7, r2
 80022ec:	4605      	mov	r5, r0
 80022ee:	9003      	str	r0, [sp, #12]
 80022f0:	f003 f9d2 	bl	8005698 <_localeconv_r>
 80022f4:	6803      	ldr	r3, [r0, #0]
 80022f6:	9316      	str	r3, [sp, #88]	; 0x58
 80022f8:	4618      	mov	r0, r3
 80022fa:	f7fe f9a1 	bl	8000640 <strlen>
 80022fe:	9408      	str	r4, [sp, #32]
 8002300:	9015      	str	r0, [sp, #84]	; 0x54
 8002302:	b11d      	cbz	r5, 800230c <_vfprintf_r+0x2c>
 8002304:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002306:	2b00      	cmp	r3, #0
 8002308:	f000 8107 	beq.w	800251a <_vfprintf_r+0x23a>
 800230c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002310:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002314:	07c8      	lsls	r0, r1, #31
 8002316:	b293      	uxth	r3, r2
 8002318:	d402      	bmi.n	8002320 <_vfprintf_r+0x40>
 800231a:	0599      	lsls	r1, r3, #22
 800231c:	f140 811f 	bpl.w	800255e <_vfprintf_r+0x27e>
 8002320:	049e      	lsls	r6, r3, #18
 8002322:	d40a      	bmi.n	800233a <_vfprintf_r+0x5a>
 8002324:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002328:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 800232c:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002330:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002334:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002338:	b29b      	uxth	r3, r3
 800233a:	071d      	lsls	r5, r3, #28
 800233c:	f140 80b2 	bpl.w	80024a4 <_vfprintf_r+0x1c4>
 8002340:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002344:	2a00      	cmp	r2, #0
 8002346:	f000 80ad 	beq.w	80024a4 <_vfprintf_r+0x1c4>
 800234a:	f003 021a 	and.w	r2, r3, #26
 800234e:	2a0a      	cmp	r2, #10
 8002350:	f000 80c9 	beq.w	80024e6 <_vfprintf_r+0x206>
 8002354:	2300      	movs	r3, #0
 8002356:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002570 <_vfprintf_r+0x290>
 800235a:	9310      	str	r3, [sp, #64]	; 0x40
 800235c:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002360:	9317      	str	r3, [sp, #92]	; 0x5c
 8002362:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002366:	931b      	str	r3, [sp, #108]	; 0x6c
 8002368:	9318      	str	r3, [sp, #96]	; 0x60
 800236a:	9305      	str	r3, [sp, #20]
 800236c:	ab2d      	add	r3, sp, #180	; 0xb4
 800236e:	932a      	str	r3, [sp, #168]	; 0xa8
 8002370:	469b      	mov	fp, r3
 8002372:	783b      	ldrb	r3, [r7, #0]
 8002374:	f8cd 901c 	str.w	r9, [sp, #28]
 8002378:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800237c:	2b00      	cmp	r3, #0
 800237e:	f000 8259 	beq.w	8002834 <_vfprintf_r+0x554>
 8002382:	2b25      	cmp	r3, #37	; 0x25
 8002384:	463c      	mov	r4, r7
 8002386:	d102      	bne.n	800238e <_vfprintf_r+0xae>
 8002388:	e01d      	b.n	80023c6 <_vfprintf_r+0xe6>
 800238a:	2b25      	cmp	r3, #37	; 0x25
 800238c:	d003      	beq.n	8002396 <_vfprintf_r+0xb6>
 800238e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002392:	2b00      	cmp	r3, #0
 8002394:	d1f9      	bne.n	800238a <_vfprintf_r+0xaa>
 8002396:	1be5      	subs	r5, r4, r7
 8002398:	b18d      	cbz	r5, 80023be <_vfprintf_r+0xde>
 800239a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 800239e:	3301      	adds	r3, #1
 80023a0:	442a      	add	r2, r5
 80023a2:	2b07      	cmp	r3, #7
 80023a4:	f8cb 7000 	str.w	r7, [fp]
 80023a8:	f8cb 5004 	str.w	r5, [fp, #4]
 80023ac:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 80023b0:	f300 80ca 	bgt.w	8002548 <_vfprintf_r+0x268>
 80023b4:	f10b 0b08 	add.w	fp, fp, #8
 80023b8:	9b05      	ldr	r3, [sp, #20]
 80023ba:	442b      	add	r3, r5
 80023bc:	9305      	str	r3, [sp, #20]
 80023be:	7823      	ldrb	r3, [r4, #0]
 80023c0:	2b00      	cmp	r3, #0
 80023c2:	f000 8237 	beq.w	8002834 <_vfprintf_r+0x554>
 80023c6:	2300      	movs	r3, #0
 80023c8:	7866      	ldrb	r6, [r4, #1]
 80023ca:	9306      	str	r3, [sp, #24]
 80023cc:	4698      	mov	r8, r3
 80023ce:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80023d2:	f104 0a01 	add.w	sl, r4, #1
 80023d6:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 80023da:	252b      	movs	r5, #43	; 0x2b
 80023dc:	f10a 0a01 	add.w	sl, sl, #1
 80023e0:	f1a6 0320 	sub.w	r3, r6, #32
 80023e4:	2b5a      	cmp	r3, #90	; 0x5a
 80023e6:	f200 842a 	bhi.w	8002c3e <_vfprintf_r+0x95e>
 80023ea:	e8df f013 	tbh	[pc, r3, lsl #1]
 80023ee:	03aa      	.short	0x03aa
 80023f0:	04280428 	.word	0x04280428
 80023f4:	0428029c 	.word	0x0428029c
 80023f8:	04280428 	.word	0x04280428
 80023fc:	042802a7 	.word	0x042802a7
 8002400:	02c60428 	.word	0x02c60428
 8002404:	042802d2 	.word	0x042802d2
 8002408:	02dc02d7 	.word	0x02dc02d7
 800240c:	02f60428 	.word	0x02f60428
 8002410:	026d026d 	.word	0x026d026d
 8002414:	026d026d 	.word	0x026d026d
 8002418:	026d026d 	.word	0x026d026d
 800241c:	026d026d 	.word	0x026d026d
 8002420:	0428026d 	.word	0x0428026d
 8002424:	04280428 	.word	0x04280428
 8002428:	04280428 	.word	0x04280428
 800242c:	04280428 	.word	0x04280428
 8002430:	042802fb 	.word	0x042802fb
 8002434:	03f3033c 	.word	0x03f3033c
 8002438:	02fb02fb 	.word	0x02fb02fb
 800243c:	042802fb 	.word	0x042802fb
 8002440:	04280428 	.word	0x04280428
 8002444:	03ee0428 	.word	0x03ee0428
 8002448:	04280428 	.word	0x04280428
 800244c:	0428009a 	.word	0x0428009a
 8002450:	04280428 	.word	0x04280428
 8002454:	04280350 	.word	0x04280350
 8002458:	04280379 	.word	0x04280379
 800245c:	03900428 	.word	0x03900428
 8002460:	04280428 	.word	0x04280428
 8002464:	04280428 	.word	0x04280428
 8002468:	04280428 	.word	0x04280428
 800246c:	04280428 	.word	0x04280428
 8002470:	042802fb 	.word	0x042802fb
 8002474:	00c5033c 	.word	0x00c5033c
 8002478:	02fb02fb 	.word	0x02fb02fb
 800247c:	03d102fb 	.word	0x03d102fb
 8002480:	007000c5 	.word	0x007000c5
 8002484:	03b50428 	.word	0x03b50428
 8002488:	03c20428 	.word	0x03c20428
 800248c:	03de009c 	.word	0x03de009c
 8002490:	04280070 	.word	0x04280070
 8002494:	00720350 	.word	0x00720350
 8002498:	0428022c 	.word	0x0428022c
 800249c:	027c0428 	.word	0x027c0428
 80024a0:	00720428 	.word	0x00720428
 80024a4:	4649      	mov	r1, r9
 80024a6:	9803      	ldr	r0, [sp, #12]
 80024a8:	f001 fc9a 	bl	8003de0 <__swsetup_r>
 80024ac:	b1a0      	cbz	r0, 80024d8 <_vfprintf_r+0x1f8>
 80024ae:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 80024b2:	07d8      	lsls	r0, r3, #31
 80024b4:	d404      	bmi.n	80024c0 <_vfprintf_r+0x1e0>
 80024b6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80024ba:	0599      	lsls	r1, r3, #22
 80024bc:	f140 83b7 	bpl.w	8002c2e <_vfprintf_r+0x94e>
 80024c0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80024c4:	9305      	str	r3, [sp, #20]
 80024c6:	9805      	ldr	r0, [sp, #20]
 80024c8:	b057      	add	sp, #348	; 0x15c
 80024ca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80024ce:	f048 0820 	orr.w	r8, r8, #32
 80024d2:	f89a 6000 	ldrb.w	r6, [sl]
 80024d6:	e781      	b.n	80023dc <_vfprintf_r+0xfc>
 80024d8:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80024dc:	f003 021a 	and.w	r2, r3, #26
 80024e0:	2a0a      	cmp	r2, #10
 80024e2:	f47f af37 	bne.w	8002354 <_vfprintf_r+0x74>
 80024e6:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 80024ea:	2a00      	cmp	r2, #0
 80024ec:	f6ff af32 	blt.w	8002354 <_vfprintf_r+0x74>
 80024f0:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80024f4:	07d2      	lsls	r2, r2, #31
 80024f6:	d405      	bmi.n	8002504 <_vfprintf_r+0x224>
 80024f8:	059b      	lsls	r3, r3, #22
 80024fa:	d403      	bmi.n	8002504 <_vfprintf_r+0x224>
 80024fc:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002500:	f003 f8de 	bl	80056c0 <__retarget_lock_release_recursive>
 8002504:	4623      	mov	r3, r4
 8002506:	463a      	mov	r2, r7
 8002508:	4649      	mov	r1, r9
 800250a:	9803      	ldr	r0, [sp, #12]
 800250c:	f001 fc26 	bl	8003d5c <__sbprintf>
 8002510:	9005      	str	r0, [sp, #20]
 8002512:	9805      	ldr	r0, [sp, #20]
 8002514:	b057      	add	sp, #348	; 0x15c
 8002516:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800251a:	9803      	ldr	r0, [sp, #12]
 800251c:	f002 fd7e 	bl	800501c <__sinit>
 8002520:	e6f4      	b.n	800230c <_vfprintf_r+0x2c>
 8002522:	f048 0810 	orr.w	r8, r8, #16
 8002526:	f018 0f20 	tst.w	r8, #32
 800252a:	f000 836c 	beq.w	8002c06 <_vfprintf_r+0x926>
 800252e:	9c08      	ldr	r4, [sp, #32]
 8002530:	3407      	adds	r4, #7
 8002532:	f024 0307 	bic.w	r3, r4, #7
 8002536:	e9d3 4500 	ldrd	r4, r5, [r3]
 800253a:	f103 0208 	add.w	r2, r3, #8
 800253e:	9208      	str	r2, [sp, #32]
 8002540:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002544:	2200      	movs	r2, #0
 8002546:	e18c      	b.n	8002862 <_vfprintf_r+0x582>
 8002548:	aa2a      	add	r2, sp, #168	; 0xa8
 800254a:	9907      	ldr	r1, [sp, #28]
 800254c:	9803      	ldr	r0, [sp, #12]
 800254e:	f004 f9f5 	bl	800693c <__sprint_r>
 8002552:	2800      	cmp	r0, #0
 8002554:	f041 8376 	bne.w	8003c44 <_vfprintf_r+0x1964>
 8002558:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800255c:	e72c      	b.n	80023b8 <_vfprintf_r+0xd8>
 800255e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002562:	f003 f8ab 	bl	80056bc <__retarget_lock_acquire_recursive>
 8002566:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800256a:	b293      	uxth	r3, r2
 800256c:	e6d8      	b.n	8002320 <_vfprintf_r+0x40>
 800256e:	bf00      	nop
	...
 8002578:	4643      	mov	r3, r8
 800257a:	069f      	lsls	r7, r3, #26
 800257c:	f140 832f 	bpl.w	8002bde <_vfprintf_r+0x8fe>
 8002580:	9c08      	ldr	r4, [sp, #32]
 8002582:	3407      	adds	r4, #7
 8002584:	f024 0407 	bic.w	r4, r4, #7
 8002588:	e9d4 0100 	ldrd	r0, r1, [r4]
 800258c:	f104 0208 	add.w	r2, r4, #8
 8002590:	9208      	str	r2, [sp, #32]
 8002592:	4604      	mov	r4, r0
 8002594:	460d      	mov	r5, r1
 8002596:	2800      	cmp	r0, #0
 8002598:	f171 0200 	sbcs.w	r2, r1, #0
 800259c:	da05      	bge.n	80025aa <_vfprintf_r+0x2ca>
 800259e:	222d      	movs	r2, #45	; 0x2d
 80025a0:	4264      	negs	r4, r4
 80025a2:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80025a6:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80025aa:	aa56      	add	r2, sp, #344	; 0x158
 80025ac:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80025b0:	9204      	str	r2, [sp, #16]
 80025b2:	f000 84b2 	beq.w	8002f1a <_vfprintf_r+0xc3a>
 80025b6:	2201      	movs	r2, #1
 80025b8:	ea54 0105 	orrs.w	r1, r4, r5
 80025bc:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 80025c0:	f040 8159 	bne.w	8002876 <_vfprintf_r+0x596>
 80025c4:	f1b9 0f00 	cmp.w	r9, #0
 80025c8:	f040 8619 	bne.w	80031fe <_vfprintf_r+0xf1e>
 80025cc:	2a00      	cmp	r2, #0
 80025ce:	f040 8508 	bne.w	8002fe2 <_vfprintf_r+0xd02>
 80025d2:	f013 0301 	ands.w	r3, r3, #1
 80025d6:	af56      	add	r7, sp, #344	; 0x158
 80025d8:	9309      	str	r3, [sp, #36]	; 0x24
 80025da:	d002      	beq.n	80025e2 <_vfprintf_r+0x302>
 80025dc:	2330      	movs	r3, #48	; 0x30
 80025de:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80025e2:	2300      	movs	r3, #0
 80025e4:	930a      	str	r3, [sp, #40]	; 0x28
 80025e6:	930f      	str	r3, [sp, #60]	; 0x3c
 80025e8:	9314      	str	r3, [sp, #80]	; 0x50
 80025ea:	9311      	str	r3, [sp, #68]	; 0x44
 80025ec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80025ee:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80025f2:	454b      	cmp	r3, r9
 80025f4:	bfb8      	it	lt
 80025f6:	464b      	movlt	r3, r9
 80025f8:	9304      	str	r3, [sp, #16]
 80025fa:	b112      	cbz	r2, 8002602 <_vfprintf_r+0x322>
 80025fc:	9b04      	ldr	r3, [sp, #16]
 80025fe:	3301      	adds	r3, #1
 8002600:	9304      	str	r3, [sp, #16]
 8002602:	f018 0302 	ands.w	r3, r8, #2
 8002606:	930b      	str	r3, [sp, #44]	; 0x2c
 8002608:	d002      	beq.n	8002610 <_vfprintf_r+0x330>
 800260a:	9b04      	ldr	r3, [sp, #16]
 800260c:	3302      	adds	r3, #2
 800260e:	9304      	str	r3, [sp, #16]
 8002610:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002614:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002616:	930e      	str	r3, [sp, #56]	; 0x38
 8002618:	d13f      	bne.n	800269a <_vfprintf_r+0x3ba>
 800261a:	9b06      	ldr	r3, [sp, #24]
 800261c:	9904      	ldr	r1, [sp, #16]
 800261e:	1a5d      	subs	r5, r3, r1
 8002620:	2d00      	cmp	r5, #0
 8002622:	dd3a      	ble.n	800269a <_vfprintf_r+0x3ba>
 8002624:	2d10      	cmp	r5, #16
 8002626:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002628:	dd29      	ble.n	800267e <_vfprintf_r+0x39e>
 800262a:	4659      	mov	r1, fp
 800262c:	4620      	mov	r0, r4
 800262e:	9620      	str	r6, [sp, #128]	; 0x80
 8002630:	2310      	movs	r3, #16
 8002632:	9c03      	ldr	r4, [sp, #12]
 8002634:	9e07      	ldr	r6, [sp, #28]
 8002636:	46bb      	mov	fp, r7
 8002638:	e004      	b.n	8002644 <_vfprintf_r+0x364>
 800263a:	3d10      	subs	r5, #16
 800263c:	2d10      	cmp	r5, #16
 800263e:	f101 0108 	add.w	r1, r1, #8
 8002642:	dd18      	ble.n	8002676 <_vfprintf_r+0x396>
 8002644:	3201      	adds	r2, #1
 8002646:	4fba      	ldr	r7, [pc, #744]	; (8002930 <_vfprintf_r+0x650>)
 8002648:	3010      	adds	r0, #16
 800264a:	2a07      	cmp	r2, #7
 800264c:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002650:	e9c1 7300 	strd	r7, r3, [r1]
 8002654:	ddf1      	ble.n	800263a <_vfprintf_r+0x35a>
 8002656:	aa2a      	add	r2, sp, #168	; 0xa8
 8002658:	4631      	mov	r1, r6
 800265a:	4620      	mov	r0, r4
 800265c:	930c      	str	r3, [sp, #48]	; 0x30
 800265e:	f004 f96d 	bl	800693c <__sprint_r>
 8002662:	2800      	cmp	r0, #0
 8002664:	f040 843d 	bne.w	8002ee2 <_vfprintf_r+0xc02>
 8002668:	3d10      	subs	r5, #16
 800266a:	2d10      	cmp	r5, #16
 800266c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002670:	a92d      	add	r1, sp, #180	; 0xb4
 8002672:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002674:	dce6      	bgt.n	8002644 <_vfprintf_r+0x364>
 8002676:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002678:	465f      	mov	r7, fp
 800267a:	4604      	mov	r4, r0
 800267c:	468b      	mov	fp, r1
 800267e:	3201      	adds	r2, #1
 8002680:	4bab      	ldr	r3, [pc, #684]	; (8002930 <_vfprintf_r+0x650>)
 8002682:	442c      	add	r4, r5
 8002684:	2a07      	cmp	r2, #7
 8002686:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800268a:	e9cb 3500 	strd	r3, r5, [fp]
 800268e:	f300 84ff 	bgt.w	8003090 <_vfprintf_r+0xdb0>
 8002692:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002696:	f10b 0b08 	add.w	fp, fp, #8
 800269a:	b172      	cbz	r2, 80026ba <_vfprintf_r+0x3da>
 800269c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800269e:	3201      	adds	r2, #1
 80026a0:	3401      	adds	r4, #1
 80026a2:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 80026a6:	2101      	movs	r1, #1
 80026a8:	2a07      	cmp	r2, #7
 80026aa:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80026ae:	e9cb 0100 	strd	r0, r1, [fp]
 80026b2:	f300 8418 	bgt.w	8002ee6 <_vfprintf_r+0xc06>
 80026b6:	f10b 0b08 	add.w	fp, fp, #8
 80026ba:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80026bc:	b16b      	cbz	r3, 80026da <_vfprintf_r+0x3fa>
 80026be:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80026c0:	3301      	adds	r3, #1
 80026c2:	3402      	adds	r4, #2
 80026c4:	a923      	add	r1, sp, #140	; 0x8c
 80026c6:	2202      	movs	r2, #2
 80026c8:	2b07      	cmp	r3, #7
 80026ca:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80026ce:	e9cb 1200 	strd	r1, r2, [fp]
 80026d2:	f300 8415 	bgt.w	8002f00 <_vfprintf_r+0xc20>
 80026d6:	f10b 0b08 	add.w	fp, fp, #8
 80026da:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80026dc:	2b80      	cmp	r3, #128	; 0x80
 80026de:	f000 8331 	beq.w	8002d44 <_vfprintf_r+0xa64>
 80026e2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80026e4:	eba9 0503 	sub.w	r5, r9, r3
 80026e8:	2d00      	cmp	r5, #0
 80026ea:	dd37      	ble.n	800275c <_vfprintf_r+0x47c>
 80026ec:	2d10      	cmp	r5, #16
 80026ee:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80026f0:	4b90      	ldr	r3, [pc, #576]	; (8002934 <_vfprintf_r+0x654>)
 80026f2:	dd28      	ble.n	8002746 <_vfprintf_r+0x466>
 80026f4:	4659      	mov	r1, fp
 80026f6:	4620      	mov	r0, r4
 80026f8:	46bb      	mov	fp, r7
 80026fa:	f04f 0910 	mov.w	r9, #16
 80026fe:	4637      	mov	r7, r6
 8002700:	461c      	mov	r4, r3
 8002702:	9e07      	ldr	r6, [sp, #28]
 8002704:	e004      	b.n	8002710 <_vfprintf_r+0x430>
 8002706:	3d10      	subs	r5, #16
 8002708:	2d10      	cmp	r5, #16
 800270a:	f101 0108 	add.w	r1, r1, #8
 800270e:	dd15      	ble.n	800273c <_vfprintf_r+0x45c>
 8002710:	3201      	adds	r2, #1
 8002712:	3010      	adds	r0, #16
 8002714:	2a07      	cmp	r2, #7
 8002716:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800271a:	e9c1 4900 	strd	r4, r9, [r1]
 800271e:	ddf2      	ble.n	8002706 <_vfprintf_r+0x426>
 8002720:	aa2a      	add	r2, sp, #168	; 0xa8
 8002722:	4631      	mov	r1, r6
 8002724:	9803      	ldr	r0, [sp, #12]
 8002726:	f004 f909 	bl	800693c <__sprint_r>
 800272a:	2800      	cmp	r0, #0
 800272c:	f040 83d9 	bne.w	8002ee2 <_vfprintf_r+0xc02>
 8002730:	3d10      	subs	r5, #16
 8002732:	2d10      	cmp	r5, #16
 8002734:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002738:	a92d      	add	r1, sp, #180	; 0xb4
 800273a:	dce9      	bgt.n	8002710 <_vfprintf_r+0x430>
 800273c:	463e      	mov	r6, r7
 800273e:	4623      	mov	r3, r4
 8002740:	465f      	mov	r7, fp
 8002742:	4604      	mov	r4, r0
 8002744:	468b      	mov	fp, r1
 8002746:	3201      	adds	r2, #1
 8002748:	442c      	add	r4, r5
 800274a:	2a07      	cmp	r2, #7
 800274c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002750:	e9cb 3500 	strd	r3, r5, [fp]
 8002754:	f300 83ef 	bgt.w	8002f36 <_vfprintf_r+0xc56>
 8002758:	f10b 0b08 	add.w	fp, fp, #8
 800275c:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002760:	f040 8280 	bne.w	8002c64 <_vfprintf_r+0x984>
 8002764:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002766:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002768:	f8cb 7000 	str.w	r7, [fp]
 800276c:	3301      	adds	r3, #1
 800276e:	4414      	add	r4, r2
 8002770:	2b07      	cmp	r3, #7
 8002772:	942c      	str	r4, [sp, #176]	; 0xb0
 8002774:	f8cb 2004 	str.w	r2, [fp, #4]
 8002778:	932b      	str	r3, [sp, #172]	; 0xac
 800277a:	f300 8392 	bgt.w	8002ea2 <_vfprintf_r+0xbc2>
 800277e:	f10b 0b08 	add.w	fp, fp, #8
 8002782:	f018 0f04 	tst.w	r8, #4
 8002786:	d03b      	beq.n	8002800 <_vfprintf_r+0x520>
 8002788:	9b06      	ldr	r3, [sp, #24]
 800278a:	9a04      	ldr	r2, [sp, #16]
 800278c:	1a9d      	subs	r5, r3, r2
 800278e:	2d00      	cmp	r5, #0
 8002790:	dd36      	ble.n	8002800 <_vfprintf_r+0x520>
 8002792:	2d10      	cmp	r5, #16
 8002794:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002796:	dd21      	ble.n	80027dc <_vfprintf_r+0x4fc>
 8002798:	2610      	movs	r6, #16
 800279a:	9f03      	ldr	r7, [sp, #12]
 800279c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 80027a0:	e004      	b.n	80027ac <_vfprintf_r+0x4cc>
 80027a2:	3d10      	subs	r5, #16
 80027a4:	2d10      	cmp	r5, #16
 80027a6:	f10b 0b08 	add.w	fp, fp, #8
 80027aa:	dd17      	ble.n	80027dc <_vfprintf_r+0x4fc>
 80027ac:	3301      	adds	r3, #1
 80027ae:	4a60      	ldr	r2, [pc, #384]	; (8002930 <_vfprintf_r+0x650>)
 80027b0:	3410      	adds	r4, #16
 80027b2:	2b07      	cmp	r3, #7
 80027b4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80027b8:	e9cb 2600 	strd	r2, r6, [fp]
 80027bc:	ddf1      	ble.n	80027a2 <_vfprintf_r+0x4c2>
 80027be:	aa2a      	add	r2, sp, #168	; 0xa8
 80027c0:	4641      	mov	r1, r8
 80027c2:	4638      	mov	r0, r7
 80027c4:	f004 f8ba 	bl	800693c <__sprint_r>
 80027c8:	2800      	cmp	r0, #0
 80027ca:	f040 856c 	bne.w	80032a6 <_vfprintf_r+0xfc6>
 80027ce:	3d10      	subs	r5, #16
 80027d0:	2d10      	cmp	r5, #16
 80027d2:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80027d6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80027da:	dce7      	bgt.n	80027ac <_vfprintf_r+0x4cc>
 80027dc:	3301      	adds	r3, #1
 80027de:	4a54      	ldr	r2, [pc, #336]	; (8002930 <_vfprintf_r+0x650>)
 80027e0:	442c      	add	r4, r5
 80027e2:	2b07      	cmp	r3, #7
 80027e4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80027e8:	e9cb 2500 	strd	r2, r5, [fp]
 80027ec:	dd08      	ble.n	8002800 <_vfprintf_r+0x520>
 80027ee:	aa2a      	add	r2, sp, #168	; 0xa8
 80027f0:	9907      	ldr	r1, [sp, #28]
 80027f2:	9803      	ldr	r0, [sp, #12]
 80027f4:	f004 f8a2 	bl	800693c <__sprint_r>
 80027f8:	2800      	cmp	r0, #0
 80027fa:	f040 82e9 	bne.w	8002dd0 <_vfprintf_r+0xaf0>
 80027fe:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002800:	9904      	ldr	r1, [sp, #16]
 8002802:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002806:	428a      	cmp	r2, r1
 8002808:	bfac      	ite	ge
 800280a:	189b      	addge	r3, r3, r2
 800280c:	185b      	addlt	r3, r3, r1
 800280e:	9305      	str	r3, [sp, #20]
 8002810:	2c00      	cmp	r4, #0
 8002812:	f040 82d5 	bne.w	8002dc0 <_vfprintf_r+0xae0>
 8002816:	2300      	movs	r3, #0
 8002818:	932b      	str	r3, [sp, #172]	; 0xac
 800281a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800281c:	b11b      	cbz	r3, 8002826 <_vfprintf_r+0x546>
 800281e:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002820:	9803      	ldr	r0, [sp, #12]
 8002822:	f002 fc9d 	bl	8005160 <_free_r>
 8002826:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800282a:	4657      	mov	r7, sl
 800282c:	783b      	ldrb	r3, [r7, #0]
 800282e:	2b00      	cmp	r3, #0
 8002830:	f47f ada7 	bne.w	8002382 <_vfprintf_r+0xa2>
 8002834:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002836:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800283a:	2b00      	cmp	r3, #0
 800283c:	f041 80e7 	bne.w	8003a0e <_vfprintf_r+0x172e>
 8002840:	2300      	movs	r3, #0
 8002842:	932b      	str	r3, [sp, #172]	; 0xac
 8002844:	e2cb      	b.n	8002dde <_vfprintf_r+0xafe>
 8002846:	4643      	mov	r3, r8
 8002848:	069a      	lsls	r2, r3, #26
 800284a:	f140 814e 	bpl.w	8002aea <_vfprintf_r+0x80a>
 800284e:	9c08      	ldr	r4, [sp, #32]
 8002850:	3407      	adds	r4, #7
 8002852:	f024 0207 	bic.w	r2, r4, #7
 8002856:	f102 0108 	add.w	r1, r2, #8
 800285a:	e9d2 4500 	ldrd	r4, r5, [r2]
 800285e:	9108      	str	r1, [sp, #32]
 8002860:	2201      	movs	r2, #1
 8002862:	2100      	movs	r1, #0
 8002864:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002868:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800286c:	a956      	add	r1, sp, #344	; 0x158
 800286e:	9104      	str	r1, [sp, #16]
 8002870:	f47f aea2 	bne.w	80025b8 <_vfprintf_r+0x2d8>
 8002874:	4698      	mov	r8, r3
 8002876:	2a01      	cmp	r2, #1
 8002878:	f000 8350 	beq.w	8002f1c <_vfprintf_r+0xc3c>
 800287c:	2a02      	cmp	r2, #2
 800287e:	f000 831b 	beq.w	8002eb8 <_vfprintf_r+0xbd8>
 8002882:	a956      	add	r1, sp, #344	; 0x158
 8002884:	e000      	b.n	8002888 <_vfprintf_r+0x5a8>
 8002886:	4639      	mov	r1, r7
 8002888:	08e2      	lsrs	r2, r4, #3
 800288a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 800288e:	08e8      	lsrs	r0, r5, #3
 8002890:	f004 0307 	and.w	r3, r4, #7
 8002894:	4605      	mov	r5, r0
 8002896:	4614      	mov	r4, r2
 8002898:	3330      	adds	r3, #48	; 0x30
 800289a:	ea54 0205 	orrs.w	r2, r4, r5
 800289e:	f801 3c01 	strb.w	r3, [r1, #-1]
 80028a2:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 80028a6:	d1ee      	bne.n	8002886 <_vfprintf_r+0x5a6>
 80028a8:	f018 0f01 	tst.w	r8, #1
 80028ac:	f000 8314 	beq.w	8002ed8 <_vfprintf_r+0xbf8>
 80028b0:	2b30      	cmp	r3, #48	; 0x30
 80028b2:	f000 8311 	beq.w	8002ed8 <_vfprintf_r+0xbf8>
 80028b6:	9a04      	ldr	r2, [sp, #16]
 80028b8:	3902      	subs	r1, #2
 80028ba:	2330      	movs	r3, #48	; 0x30
 80028bc:	1a52      	subs	r2, r2, r1
 80028be:	f807 3c01 	strb.w	r3, [r7, #-1]
 80028c2:	9209      	str	r2, [sp, #36]	; 0x24
 80028c4:	460f      	mov	r7, r1
 80028c6:	e68c      	b.n	80025e2 <_vfprintf_r+0x302>
 80028c8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80028cc:	2200      	movs	r2, #0
 80028ce:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80028d2:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 80028d6:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 80028da:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80028de:	2b09      	cmp	r3, #9
 80028e0:	d9f5      	bls.n	80028ce <_vfprintf_r+0x5ee>
 80028e2:	9206      	str	r2, [sp, #24]
 80028e4:	e57c      	b.n	80023e0 <_vfprintf_r+0x100>
 80028e6:	4b14      	ldr	r3, [pc, #80]	; (8002938 <_vfprintf_r+0x658>)
 80028e8:	9317      	str	r3, [sp, #92]	; 0x5c
 80028ea:	f018 0f20 	tst.w	r8, #32
 80028ee:	f000 8114 	beq.w	8002b1a <_vfprintf_r+0x83a>
 80028f2:	9c08      	ldr	r4, [sp, #32]
 80028f4:	3407      	adds	r4, #7
 80028f6:	f024 0307 	bic.w	r3, r4, #7
 80028fa:	e9d3 4500 	ldrd	r4, r5, [r3]
 80028fe:	f103 0208 	add.w	r2, r3, #8
 8002902:	9208      	str	r2, [sp, #32]
 8002904:	f018 0f01 	tst.w	r8, #1
 8002908:	d009      	beq.n	800291e <_vfprintf_r+0x63e>
 800290a:	ea54 0305 	orrs.w	r3, r4, r5
 800290e:	d006      	beq.n	800291e <_vfprintf_r+0x63e>
 8002910:	2330      	movs	r3, #48	; 0x30
 8002912:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002916:	f048 0802 	orr.w	r8, r8, #2
 800291a:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 800291e:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002922:	2202      	movs	r2, #2
 8002924:	e79d      	b.n	8002862 <_vfprintf_r+0x582>
 8002926:	f048 0801 	orr.w	r8, r8, #1
 800292a:	f89a 6000 	ldrb.w	r6, [sl]
 800292e:	e555      	b.n	80023dc <_vfprintf_r+0xfc>
 8002930:	08007024 	.word	0x08007024
 8002934:	08007034 	.word	0x08007034
 8002938:	08006ff0 	.word	0x08006ff0
 800293c:	9e03      	ldr	r6, [sp, #12]
 800293e:	4630      	mov	r0, r6
 8002940:	f002 feaa 	bl	8005698 <_localeconv_r>
 8002944:	6843      	ldr	r3, [r0, #4]
 8002946:	9318      	str	r3, [sp, #96]	; 0x60
 8002948:	4618      	mov	r0, r3
 800294a:	f7fd fe79 	bl	8000640 <strlen>
 800294e:	901b      	str	r0, [sp, #108]	; 0x6c
 8002950:	4604      	mov	r4, r0
 8002952:	4630      	mov	r0, r6
 8002954:	f002 fea0 	bl	8005698 <_localeconv_r>
 8002958:	6883      	ldr	r3, [r0, #8]
 800295a:	931a      	str	r3, [sp, #104]	; 0x68
 800295c:	2c00      	cmp	r4, #0
 800295e:	f43f adb8 	beq.w	80024d2 <_vfprintf_r+0x1f2>
 8002962:	f89a 6000 	ldrb.w	r6, [sl]
 8002966:	2b00      	cmp	r3, #0
 8002968:	f43f ad38 	beq.w	80023dc <_vfprintf_r+0xfc>
 800296c:	781b      	ldrb	r3, [r3, #0]
 800296e:	2b00      	cmp	r3, #0
 8002970:	f43f ad34 	beq.w	80023dc <_vfprintf_r+0xfc>
 8002974:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002978:	e530      	b.n	80023dc <_vfprintf_r+0xfc>
 800297a:	9b08      	ldr	r3, [sp, #32]
 800297c:	f89a 6000 	ldrb.w	r6, [sl]
 8002980:	681a      	ldr	r2, [r3, #0]
 8002982:	9206      	str	r2, [sp, #24]
 8002984:	2a00      	cmp	r2, #0
 8002986:	f103 0304 	add.w	r3, r3, #4
 800298a:	f2c0 8697 	blt.w	80036bc <_vfprintf_r+0x13dc>
 800298e:	9308      	str	r3, [sp, #32]
 8002990:	e524      	b.n	80023dc <_vfprintf_r+0xfc>
 8002992:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002996:	f89a 6000 	ldrb.w	r6, [sl]
 800299a:	e51f      	b.n	80023dc <_vfprintf_r+0xfc>
 800299c:	f89a 6000 	ldrb.w	r6, [sl]
 80029a0:	f048 0804 	orr.w	r8, r8, #4
 80029a4:	e51a      	b.n	80023dc <_vfprintf_r+0xfc>
 80029a6:	f89a 6000 	ldrb.w	r6, [sl]
 80029aa:	2e2a      	cmp	r6, #42	; 0x2a
 80029ac:	f10a 0201 	add.w	r2, sl, #1
 80029b0:	f001 81b0 	beq.w	8003d14 <_vfprintf_r+0x1a34>
 80029b4:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80029b8:	2b09      	cmp	r3, #9
 80029ba:	4692      	mov	sl, r2
 80029bc:	f04f 0900 	mov.w	r9, #0
 80029c0:	f63f ad0e 	bhi.w	80023e0 <_vfprintf_r+0x100>
 80029c4:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80029c8:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 80029cc:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 80029d0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80029d4:	2b09      	cmp	r3, #9
 80029d6:	d9f5      	bls.n	80029c4 <_vfprintf_r+0x6e4>
 80029d8:	e502      	b.n	80023e0 <_vfprintf_r+0x100>
 80029da:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 80029de:	f89a 6000 	ldrb.w	r6, [sl]
 80029e2:	e4fb      	b.n	80023dc <_vfprintf_r+0xfc>
 80029e4:	9c08      	ldr	r4, [sp, #32]
 80029e6:	3407      	adds	r4, #7
 80029e8:	f024 0407 	bic.w	r4, r4, #7
 80029ec:	ed94 7b00 	vldr	d7, [r4]
 80029f0:	ec52 1b17 	vmov	r1, r2, d7
 80029f4:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80029f8:	931d      	str	r3, [sp, #116]	; 0x74
 80029fa:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 80029fe:	3408      	adds	r4, #8
 8002a00:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002a04:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002a08:	4bba      	ldr	r3, [pc, #744]	; (8002cf4 <_vfprintf_r+0xa14>)
 8002a0a:	9408      	str	r4, [sp, #32]
 8002a0c:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002a10:	f7fe fb2c 	bl	800106c <__aeabi_dcmpun>
 8002a14:	2800      	cmp	r0, #0
 8002a16:	f040 846f 	bne.w	80032f8 <_vfprintf_r+0x1018>
 8002a1a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002a1e:	4bb5      	ldr	r3, [pc, #724]	; (8002cf4 <_vfprintf_r+0xa14>)
 8002a20:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002a24:	f7fe fb04 	bl	8001030 <__aeabi_dcmple>
 8002a28:	2800      	cmp	r0, #0
 8002a2a:	f040 8465 	bne.w	80032f8 <_vfprintf_r+0x1018>
 8002a2e:	2200      	movs	r2, #0
 8002a30:	2300      	movs	r3, #0
 8002a32:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002a36:	f7fe faf1 	bl	800101c <__aeabi_dcmplt>
 8002a3a:	2800      	cmp	r0, #0
 8002a3c:	f040 855b 	bne.w	80034f6 <_vfprintf_r+0x1216>
 8002a40:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002a44:	4fac      	ldr	r7, [pc, #688]	; (8002cf8 <_vfprintf_r+0xa18>)
 8002a46:	4bad      	ldr	r3, [pc, #692]	; (8002cfc <_vfprintf_r+0xa1c>)
 8002a48:	2000      	movs	r0, #0
 8002a4a:	2103      	movs	r1, #3
 8002a4c:	9104      	str	r1, [sp, #16]
 8002a4e:	900a      	str	r0, [sp, #40]	; 0x28
 8002a50:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002a54:	2e47      	cmp	r6, #71	; 0x47
 8002a56:	bfd8      	it	le
 8002a58:	461f      	movle	r7, r3
 8002a5a:	9109      	str	r1, [sp, #36]	; 0x24
 8002a5c:	4681      	mov	r9, r0
 8002a5e:	900f      	str	r0, [sp, #60]	; 0x3c
 8002a60:	9014      	str	r0, [sp, #80]	; 0x50
 8002a62:	9011      	str	r0, [sp, #68]	; 0x44
 8002a64:	e5c9      	b.n	80025fa <_vfprintf_r+0x31a>
 8002a66:	9808      	ldr	r0, [sp, #32]
 8002a68:	2300      	movs	r3, #0
 8002a6a:	6801      	ldr	r1, [r0, #0]
 8002a6c:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002a70:	461a      	mov	r2, r3
 8002a72:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002a76:	2301      	movs	r3, #1
 8002a78:	1d01      	adds	r1, r0, #4
 8002a7a:	9304      	str	r3, [sp, #16]
 8002a7c:	920a      	str	r2, [sp, #40]	; 0x28
 8002a7e:	4691      	mov	r9, r2
 8002a80:	920f      	str	r2, [sp, #60]	; 0x3c
 8002a82:	9214      	str	r2, [sp, #80]	; 0x50
 8002a84:	9211      	str	r2, [sp, #68]	; 0x44
 8002a86:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002a8a:	af3d      	add	r7, sp, #244	; 0xf4
 8002a8c:	e5b9      	b.n	8002602 <_vfprintf_r+0x322>
 8002a8e:	9b08      	ldr	r3, [sp, #32]
 8002a90:	681f      	ldr	r7, [r3, #0]
 8002a92:	2500      	movs	r5, #0
 8002a94:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002a98:	1d1c      	adds	r4, r3, #4
 8002a9a:	2f00      	cmp	r7, #0
 8002a9c:	f000 8639 	beq.w	8003712 <_vfprintf_r+0x1432>
 8002aa0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002aa4:	f000 8711 	beq.w	80038ca <_vfprintf_r+0x15ea>
 8002aa8:	464a      	mov	r2, r9
 8002aaa:	4629      	mov	r1, r5
 8002aac:	4638      	mov	r0, r7
 8002aae:	f7fd fe37 	bl	8000720 <memchr>
 8002ab2:	900a      	str	r0, [sp, #40]	; 0x28
 8002ab4:	2800      	cmp	r0, #0
 8002ab6:	f000 85e7 	beq.w	8003688 <_vfprintf_r+0x13a8>
 8002aba:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002abc:	1bdb      	subs	r3, r3, r7
 8002abe:	9309      	str	r3, [sp, #36]	; 0x24
 8002ac0:	46a9      	mov	r9, r5
 8002ac2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002ac6:	9408      	str	r4, [sp, #32]
 8002ac8:	9304      	str	r3, [sp, #16]
 8002aca:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002ace:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002ad2:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002ad6:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002ada:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002ade:	e58c      	b.n	80025fa <_vfprintf_r+0x31a>
 8002ae0:	f048 0310 	orr.w	r3, r8, #16
 8002ae4:	069a      	lsls	r2, r3, #26
 8002ae6:	f53f aeb2 	bmi.w	800284e <_vfprintf_r+0x56e>
 8002aea:	9a08      	ldr	r2, [sp, #32]
 8002aec:	06df      	lsls	r7, r3, #27
 8002aee:	f102 0104 	add.w	r1, r2, #4
 8002af2:	f100 837e 	bmi.w	80031f2 <_vfprintf_r+0xf12>
 8002af6:	065d      	lsls	r5, r3, #25
 8002af8:	9a08      	ldr	r2, [sp, #32]
 8002afa:	f100 84e4 	bmi.w	80034c6 <_vfprintf_r+0x11e6>
 8002afe:	059c      	lsls	r4, r3, #22
 8002b00:	f140 8377 	bpl.w	80031f2 <_vfprintf_r+0xf12>
 8002b04:	7814      	ldrb	r4, [r2, #0]
 8002b06:	9108      	str	r1, [sp, #32]
 8002b08:	2500      	movs	r5, #0
 8002b0a:	2201      	movs	r2, #1
 8002b0c:	e6a9      	b.n	8002862 <_vfprintf_r+0x582>
 8002b0e:	4b7c      	ldr	r3, [pc, #496]	; (8002d00 <_vfprintf_r+0xa20>)
 8002b10:	9317      	str	r3, [sp, #92]	; 0x5c
 8002b12:	f018 0f20 	tst.w	r8, #32
 8002b16:	f47f aeec 	bne.w	80028f2 <_vfprintf_r+0x612>
 8002b1a:	9a08      	ldr	r2, [sp, #32]
 8002b1c:	f018 0f10 	tst.w	r8, #16
 8002b20:	f102 0304 	add.w	r3, r2, #4
 8002b24:	f040 8354 	bne.w	80031d0 <_vfprintf_r+0xef0>
 8002b28:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002b2c:	9a08      	ldr	r2, [sp, #32]
 8002b2e:	f040 84d0 	bne.w	80034d2 <_vfprintf_r+0x11f2>
 8002b32:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002b36:	f000 834b 	beq.w	80031d0 <_vfprintf_r+0xef0>
 8002b3a:	7814      	ldrb	r4, [r2, #0]
 8002b3c:	9308      	str	r3, [sp, #32]
 8002b3e:	2500      	movs	r5, #0
 8002b40:	e6e0      	b.n	8002904 <_vfprintf_r+0x624>
 8002b42:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002b46:	f89a 6000 	ldrb.w	r6, [sl]
 8002b4a:	2b00      	cmp	r3, #0
 8002b4c:	f47f ac46 	bne.w	80023dc <_vfprintf_r+0xfc>
 8002b50:	2320      	movs	r3, #32
 8002b52:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002b56:	e441      	b.n	80023dc <_vfprintf_r+0xfc>
 8002b58:	f89a 6000 	ldrb.w	r6, [sl]
 8002b5c:	2e6c      	cmp	r6, #108	; 0x6c
 8002b5e:	bf03      	ittte	eq
 8002b60:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002b64:	f048 0820 	orreq.w	r8, r8, #32
 8002b68:	f10a 0a01 	addeq.w	sl, sl, #1
 8002b6c:	f048 0810 	orrne.w	r8, r8, #16
 8002b70:	e434      	b.n	80023dc <_vfprintf_r+0xfc>
 8002b72:	9a08      	ldr	r2, [sp, #32]
 8002b74:	f018 0f20 	tst.w	r8, #32
 8002b78:	f852 3b04 	ldr.w	r3, [r2], #4
 8002b7c:	9208      	str	r2, [sp, #32]
 8002b7e:	f000 83a1 	beq.w	80032c4 <_vfprintf_r+0xfe4>
 8002b82:	9a05      	ldr	r2, [sp, #20]
 8002b84:	4610      	mov	r0, r2
 8002b86:	17d1      	asrs	r1, r2, #31
 8002b88:	e9c3 0100 	strd	r0, r1, [r3]
 8002b8c:	4657      	mov	r7, sl
 8002b8e:	e64d      	b.n	800282c <_vfprintf_r+0x54c>
 8002b90:	f89a 6000 	ldrb.w	r6, [sl]
 8002b94:	2e68      	cmp	r6, #104	; 0x68
 8002b96:	bf03      	ittte	eq
 8002b98:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002b9c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002ba0:	f10a 0a01 	addeq.w	sl, sl, #1
 8002ba4:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002ba8:	e418      	b.n	80023dc <_vfprintf_r+0xfc>
 8002baa:	9908      	ldr	r1, [sp, #32]
 8002bac:	4b55      	ldr	r3, [pc, #340]	; (8002d04 <_vfprintf_r+0xa24>)
 8002bae:	680c      	ldr	r4, [r1, #0]
 8002bb0:	9317      	str	r3, [sp, #92]	; 0x5c
 8002bb2:	f647 0230 	movw	r2, #30768	; 0x7830
 8002bb6:	3104      	adds	r1, #4
 8002bb8:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002bbc:	f048 0302 	orr.w	r3, r8, #2
 8002bc0:	9108      	str	r1, [sp, #32]
 8002bc2:	2500      	movs	r5, #0
 8002bc4:	2202      	movs	r2, #2
 8002bc6:	2678      	movs	r6, #120	; 0x78
 8002bc8:	e64b      	b.n	8002862 <_vfprintf_r+0x582>
 8002bca:	f048 0808 	orr.w	r8, r8, #8
 8002bce:	f89a 6000 	ldrb.w	r6, [sl]
 8002bd2:	e403      	b.n	80023dc <_vfprintf_r+0xfc>
 8002bd4:	f048 0310 	orr.w	r3, r8, #16
 8002bd8:	069f      	lsls	r7, r3, #26
 8002bda:	f53f acd1 	bmi.w	8002580 <_vfprintf_r+0x2a0>
 8002bde:	9908      	ldr	r1, [sp, #32]
 8002be0:	06dd      	lsls	r5, r3, #27
 8002be2:	f101 0204 	add.w	r2, r1, #4
 8002be6:	f100 82fd 	bmi.w	80031e4 <_vfprintf_r+0xf04>
 8002bea:	065c      	lsls	r4, r3, #25
 8002bec:	9908      	ldr	r1, [sp, #32]
 8002bee:	f100 8475 	bmi.w	80034dc <_vfprintf_r+0x11fc>
 8002bf2:	0598      	lsls	r0, r3, #22
 8002bf4:	f140 82f6 	bpl.w	80031e4 <_vfprintf_r+0xf04>
 8002bf8:	f991 4000 	ldrsb.w	r4, [r1]
 8002bfc:	9208      	str	r2, [sp, #32]
 8002bfe:	17e5      	asrs	r5, r4, #31
 8002c00:	4620      	mov	r0, r4
 8002c02:	4629      	mov	r1, r5
 8002c04:	e4c7      	b.n	8002596 <_vfprintf_r+0x2b6>
 8002c06:	9a08      	ldr	r2, [sp, #32]
 8002c08:	f018 0f10 	tst.w	r8, #16
 8002c0c:	f102 0304 	add.w	r3, r2, #4
 8002c10:	f040 82e3 	bne.w	80031da <_vfprintf_r+0xefa>
 8002c14:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002c18:	9a08      	ldr	r2, [sp, #32]
 8002c1a:	f040 8467 	bne.w	80034ec <_vfprintf_r+0x120c>
 8002c1e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002c22:	f000 82da 	beq.w	80031da <_vfprintf_r+0xefa>
 8002c26:	7814      	ldrb	r4, [r2, #0]
 8002c28:	9308      	str	r3, [sp, #32]
 8002c2a:	2500      	movs	r5, #0
 8002c2c:	e488      	b.n	8002540 <_vfprintf_r+0x260>
 8002c2e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002c32:	f002 fd45 	bl	80056c0 <__retarget_lock_release_recursive>
 8002c36:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002c3a:	9305      	str	r3, [sp, #20]
 8002c3c:	e443      	b.n	80024c6 <_vfprintf_r+0x1e6>
 8002c3e:	2e00      	cmp	r6, #0
 8002c40:	f43f adf8 	beq.w	8002834 <_vfprintf_r+0x554>
 8002c44:	2300      	movs	r3, #0
 8002c46:	2101      	movs	r1, #1
 8002c48:	461a      	mov	r2, r3
 8002c4a:	9104      	str	r1, [sp, #16]
 8002c4c:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002c50:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002c54:	930a      	str	r3, [sp, #40]	; 0x28
 8002c56:	4699      	mov	r9, r3
 8002c58:	930f      	str	r3, [sp, #60]	; 0x3c
 8002c5a:	9314      	str	r3, [sp, #80]	; 0x50
 8002c5c:	9311      	str	r3, [sp, #68]	; 0x44
 8002c5e:	9109      	str	r1, [sp, #36]	; 0x24
 8002c60:	af3d      	add	r7, sp, #244	; 0xf4
 8002c62:	e4ce      	b.n	8002602 <_vfprintf_r+0x322>
 8002c64:	2e65      	cmp	r6, #101	; 0x65
 8002c66:	f340 80ca 	ble.w	8002dfe <_vfprintf_r+0xb1e>
 8002c6a:	2200      	movs	r2, #0
 8002c6c:	2300      	movs	r3, #0
 8002c6e:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002c72:	f7fe f9c9 	bl	8001008 <__aeabi_dcmpeq>
 8002c76:	2800      	cmp	r0, #0
 8002c78:	f000 8169 	beq.w	8002f4e <_vfprintf_r+0xc6e>
 8002c7c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002c7e:	4a22      	ldr	r2, [pc, #136]	; (8002d08 <_vfprintf_r+0xa28>)
 8002c80:	f8cb 2000 	str.w	r2, [fp]
 8002c84:	3301      	adds	r3, #1
 8002c86:	3401      	adds	r4, #1
 8002c88:	2201      	movs	r2, #1
 8002c8a:	2b07      	cmp	r3, #7
 8002c8c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c90:	f8cb 2004 	str.w	r2, [fp, #4]
 8002c94:	f300 8406 	bgt.w	80034a4 <_vfprintf_r+0x11c4>
 8002c98:	f10b 0b08 	add.w	fp, fp, #8
 8002c9c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002c9e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002ca0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002ca2:	4293      	cmp	r3, r2
 8002ca4:	db03      	blt.n	8002cae <_vfprintf_r+0x9ce>
 8002ca6:	f018 0f01 	tst.w	r8, #1
 8002caa:	f43f ad6a 	beq.w	8002782 <_vfprintf_r+0x4a2>
 8002cae:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002cb0:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002cb2:	f8cb 2000 	str.w	r2, [fp]
 8002cb6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002cb8:	f8cb 2004 	str.w	r2, [fp, #4]
 8002cbc:	3301      	adds	r3, #1
 8002cbe:	4414      	add	r4, r2
 8002cc0:	2b07      	cmp	r3, #7
 8002cc2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002cc6:	f300 8517 	bgt.w	80036f8 <_vfprintf_r+0x1418>
 8002cca:	f10b 0b08 	add.w	fp, fp, #8
 8002cce:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002cd0:	1e5d      	subs	r5, r3, #1
 8002cd2:	2d00      	cmp	r5, #0
 8002cd4:	f77f ad55 	ble.w	8002782 <_vfprintf_r+0x4a2>
 8002cd8:	2d10      	cmp	r5, #16
 8002cda:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002cdc:	4b0b      	ldr	r3, [pc, #44]	; (8002d0c <_vfprintf_r+0xa2c>)
 8002cde:	f340 82e7 	ble.w	80032b0 <_vfprintf_r+0xfd0>
 8002ce2:	4619      	mov	r1, r3
 8002ce4:	2610      	movs	r6, #16
 8002ce6:	4623      	mov	r3, r4
 8002ce8:	9f03      	ldr	r7, [sp, #12]
 8002cea:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002cee:	460c      	mov	r4, r1
 8002cf0:	e014      	b.n	8002d1c <_vfprintf_r+0xa3c>
 8002cf2:	bf00      	nop
 8002cf4:	7fefffff 	.word	0x7fefffff
 8002cf8:	08006fe4 	.word	0x08006fe4
 8002cfc:	08006fe0 	.word	0x08006fe0
 8002d00:	08007004 	.word	0x08007004
 8002d04:	08006ff0 	.word	0x08006ff0
 8002d08:	08007020 	.word	0x08007020
 8002d0c:	08007034 	.word	0x08007034
 8002d10:	f10b 0b08 	add.w	fp, fp, #8
 8002d14:	3d10      	subs	r5, #16
 8002d16:	2d10      	cmp	r5, #16
 8002d18:	f340 82c7 	ble.w	80032aa <_vfprintf_r+0xfca>
 8002d1c:	3201      	adds	r2, #1
 8002d1e:	3310      	adds	r3, #16
 8002d20:	2a07      	cmp	r2, #7
 8002d22:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002d26:	e9cb 4600 	strd	r4, r6, [fp]
 8002d2a:	ddf1      	ble.n	8002d10 <_vfprintf_r+0xa30>
 8002d2c:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d2e:	4649      	mov	r1, r9
 8002d30:	4638      	mov	r0, r7
 8002d32:	f003 fe03 	bl	800693c <__sprint_r>
 8002d36:	2800      	cmp	r0, #0
 8002d38:	d14c      	bne.n	8002dd4 <_vfprintf_r+0xaf4>
 8002d3a:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002d3e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002d42:	e7e7      	b.n	8002d14 <_vfprintf_r+0xa34>
 8002d44:	9b06      	ldr	r3, [sp, #24]
 8002d46:	9a04      	ldr	r2, [sp, #16]
 8002d48:	1a9d      	subs	r5, r3, r2
 8002d4a:	2d00      	cmp	r5, #0
 8002d4c:	f77f acc9 	ble.w	80026e2 <_vfprintf_r+0x402>
 8002d50:	2d10      	cmp	r5, #16
 8002d52:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002d54:	4bbc      	ldr	r3, [pc, #752]	; (8003048 <_vfprintf_r+0xd68>)
 8002d56:	dd27      	ble.n	8002da8 <_vfprintf_r+0xac8>
 8002d58:	4659      	mov	r1, fp
 8002d5a:	4620      	mov	r0, r4
 8002d5c:	46bb      	mov	fp, r7
 8002d5e:	461c      	mov	r4, r3
 8002d60:	4637      	mov	r7, r6
 8002d62:	9e07      	ldr	r6, [sp, #28]
 8002d64:	e004      	b.n	8002d70 <_vfprintf_r+0xa90>
 8002d66:	3d10      	subs	r5, #16
 8002d68:	2d10      	cmp	r5, #16
 8002d6a:	f101 0108 	add.w	r1, r1, #8
 8002d6e:	dd16      	ble.n	8002d9e <_vfprintf_r+0xabe>
 8002d70:	3201      	adds	r2, #1
 8002d72:	3010      	adds	r0, #16
 8002d74:	2310      	movs	r3, #16
 8002d76:	2a07      	cmp	r2, #7
 8002d78:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002d7c:	600c      	str	r4, [r1, #0]
 8002d7e:	604b      	str	r3, [r1, #4]
 8002d80:	ddf1      	ble.n	8002d66 <_vfprintf_r+0xa86>
 8002d82:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d84:	4631      	mov	r1, r6
 8002d86:	9803      	ldr	r0, [sp, #12]
 8002d88:	f003 fdd8 	bl	800693c <__sprint_r>
 8002d8c:	2800      	cmp	r0, #0
 8002d8e:	f040 80a8 	bne.w	8002ee2 <_vfprintf_r+0xc02>
 8002d92:	3d10      	subs	r5, #16
 8002d94:	2d10      	cmp	r5, #16
 8002d96:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002d9a:	a92d      	add	r1, sp, #180	; 0xb4
 8002d9c:	dce8      	bgt.n	8002d70 <_vfprintf_r+0xa90>
 8002d9e:	463e      	mov	r6, r7
 8002da0:	4623      	mov	r3, r4
 8002da2:	465f      	mov	r7, fp
 8002da4:	4604      	mov	r4, r0
 8002da6:	468b      	mov	fp, r1
 8002da8:	3201      	adds	r2, #1
 8002daa:	442c      	add	r4, r5
 8002dac:	2a07      	cmp	r2, #7
 8002dae:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002db2:	e9cb 3500 	strd	r3, r5, [fp]
 8002db6:	f300 8292 	bgt.w	80032de <_vfprintf_r+0xffe>
 8002dba:	f10b 0b08 	add.w	fp, fp, #8
 8002dbe:	e490      	b.n	80026e2 <_vfprintf_r+0x402>
 8002dc0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002dc2:	9907      	ldr	r1, [sp, #28]
 8002dc4:	9803      	ldr	r0, [sp, #12]
 8002dc6:	f003 fdb9 	bl	800693c <__sprint_r>
 8002dca:	2800      	cmp	r0, #0
 8002dcc:	f43f ad23 	beq.w	8002816 <_vfprintf_r+0x536>
 8002dd0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002dd4:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002dd6:	b111      	cbz	r1, 8002dde <_vfprintf_r+0xafe>
 8002dd8:	9803      	ldr	r0, [sp, #12]
 8002dda:	f002 f9c1 	bl	8005160 <_free_r>
 8002dde:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002de2:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002de6:	07d0      	lsls	r0, r2, #31
 8002de8:	d402      	bmi.n	8002df0 <_vfprintf_r+0xb10>
 8002dea:	0599      	lsls	r1, r3, #22
 8002dec:	f140 81d0 	bpl.w	8003190 <_vfprintf_r+0xeb0>
 8002df0:	065a      	lsls	r2, r3, #25
 8002df2:	f53f ab65 	bmi.w	80024c0 <_vfprintf_r+0x1e0>
 8002df6:	9805      	ldr	r0, [sp, #20]
 8002df8:	b057      	add	sp, #348	; 0x15c
 8002dfa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002dfe:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002e00:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e02:	2a01      	cmp	r2, #1
 8002e04:	f104 0401 	add.w	r4, r4, #1
 8002e08:	f103 0501 	add.w	r5, r3, #1
 8002e0c:	f10b 0608 	add.w	r6, fp, #8
 8002e10:	f340 811c 	ble.w	800304c <_vfprintf_r+0xd6c>
 8002e14:	2301      	movs	r3, #1
 8002e16:	2d07      	cmp	r5, #7
 8002e18:	f8cb 7000 	str.w	r7, [fp]
 8002e1c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002e20:	f8cb 3004 	str.w	r3, [fp, #4]
 8002e24:	f300 81bb 	bgt.w	800319e <_vfprintf_r+0xebe>
 8002e28:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002e2a:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002e2c:	1c69      	adds	r1, r5, #1
 8002e2e:	441c      	add	r4, r3
 8002e30:	2907      	cmp	r1, #7
 8002e32:	910b      	str	r1, [sp, #44]	; 0x2c
 8002e34:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8002e38:	e9c6 2300 	strd	r2, r3, [r6]
 8002e3c:	f300 81bb 	bgt.w	80031b6 <_vfprintf_r+0xed6>
 8002e40:	3608      	adds	r6, #8
 8002e42:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002e44:	1c53      	adds	r3, r2, #1
 8002e46:	461d      	mov	r5, r3
 8002e48:	9509      	str	r5, [sp, #36]	; 0x24
 8002e4a:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8002e4c:	930e      	str	r3, [sp, #56]	; 0x38
 8002e4e:	2200      	movs	r2, #0
 8002e50:	2300      	movs	r3, #0
 8002e52:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002e56:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8002e5a:	f106 0b08 	add.w	fp, r6, #8
 8002e5e:	f7fe f8d3 	bl	8001008 <__aeabi_dcmpeq>
 8002e62:	2800      	cmp	r0, #0
 8002e64:	f040 80c2 	bne.w	8002fec <_vfprintf_r+0xd0c>
 8002e68:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002e6a:	f8c6 9004 	str.w	r9, [r6, #4]
 8002e6e:	3701      	adds	r7, #1
 8002e70:	444c      	add	r4, r9
 8002e72:	2d07      	cmp	r5, #7
 8002e74:	6037      	str	r7, [r6, #0]
 8002e76:	942c      	str	r4, [sp, #176]	; 0xb0
 8002e78:	952b      	str	r5, [sp, #172]	; 0xac
 8002e7a:	f300 80f9 	bgt.w	8003070 <_vfprintf_r+0xd90>
 8002e7e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002e80:	f106 0310 	add.w	r3, r6, #16
 8002e84:	3202      	adds	r2, #2
 8002e86:	465e      	mov	r6, fp
 8002e88:	9209      	str	r2, [sp, #36]	; 0x24
 8002e8a:	469b      	mov	fp, r3
 8002e8c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8002e8e:	6072      	str	r2, [r6, #4]
 8002e90:	4414      	add	r4, r2
 8002e92:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002e94:	942c      	str	r4, [sp, #176]	; 0xb0
 8002e96:	ab26      	add	r3, sp, #152	; 0x98
 8002e98:	2a07      	cmp	r2, #7
 8002e9a:	922b      	str	r2, [sp, #172]	; 0xac
 8002e9c:	6033      	str	r3, [r6, #0]
 8002e9e:	f77f ac70 	ble.w	8002782 <_vfprintf_r+0x4a2>
 8002ea2:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ea4:	9907      	ldr	r1, [sp, #28]
 8002ea6:	9803      	ldr	r0, [sp, #12]
 8002ea8:	f003 fd48 	bl	800693c <__sprint_r>
 8002eac:	2800      	cmp	r0, #0
 8002eae:	d18f      	bne.n	8002dd0 <_vfprintf_r+0xaf0>
 8002eb0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002eb2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002eb6:	e464      	b.n	8002782 <_vfprintf_r+0x4a2>
 8002eb8:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8002eba:	af56      	add	r7, sp, #344	; 0x158
 8002ebc:	0923      	lsrs	r3, r4, #4
 8002ebe:	f004 010f 	and.w	r1, r4, #15
 8002ec2:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8002ec6:	092a      	lsrs	r2, r5, #4
 8002ec8:	461c      	mov	r4, r3
 8002eca:	4615      	mov	r5, r2
 8002ecc:	5c43      	ldrb	r3, [r0, r1]
 8002ece:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002ed2:	ea54 0305 	orrs.w	r3, r4, r5
 8002ed6:	d1f1      	bne.n	8002ebc <_vfprintf_r+0xbdc>
 8002ed8:	9b04      	ldr	r3, [sp, #16]
 8002eda:	1bdb      	subs	r3, r3, r7
 8002edc:	9309      	str	r3, [sp, #36]	; 0x24
 8002ede:	f7ff bb80 	b.w	80025e2 <_vfprintf_r+0x302>
 8002ee2:	46b1      	mov	r9, r6
 8002ee4:	e776      	b.n	8002dd4 <_vfprintf_r+0xaf4>
 8002ee6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ee8:	9907      	ldr	r1, [sp, #28]
 8002eea:	9803      	ldr	r0, [sp, #12]
 8002eec:	f003 fd26 	bl	800693c <__sprint_r>
 8002ef0:	2800      	cmp	r0, #0
 8002ef2:	f47f af6d 	bne.w	8002dd0 <_vfprintf_r+0xaf0>
 8002ef6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002ef8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002efc:	f7ff bbdd 	b.w	80026ba <_vfprintf_r+0x3da>
 8002f00:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f02:	9907      	ldr	r1, [sp, #28]
 8002f04:	9803      	ldr	r0, [sp, #12]
 8002f06:	f003 fd19 	bl	800693c <__sprint_r>
 8002f0a:	2800      	cmp	r0, #0
 8002f0c:	f47f af60 	bne.w	8002dd0 <_vfprintf_r+0xaf0>
 8002f10:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f12:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f16:	f7ff bbe0 	b.w	80026da <_vfprintf_r+0x3fa>
 8002f1a:	4698      	mov	r8, r3
 8002f1c:	2d00      	cmp	r5, #0
 8002f1e:	bf08      	it	eq
 8002f20:	2c0a      	cmpeq	r4, #10
 8002f22:	f080 8170 	bcs.w	8003206 <_vfprintf_r+0xf26>
 8002f26:	af56      	add	r7, sp, #344	; 0x158
 8002f28:	3430      	adds	r4, #48	; 0x30
 8002f2a:	2301      	movs	r3, #1
 8002f2c:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8002f30:	9309      	str	r3, [sp, #36]	; 0x24
 8002f32:	f7ff bb56 	b.w	80025e2 <_vfprintf_r+0x302>
 8002f36:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f38:	9907      	ldr	r1, [sp, #28]
 8002f3a:	9803      	ldr	r0, [sp, #12]
 8002f3c:	f003 fcfe 	bl	800693c <__sprint_r>
 8002f40:	2800      	cmp	r0, #0
 8002f42:	f47f af45 	bne.w	8002dd0 <_vfprintf_r+0xaf0>
 8002f46:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f48:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f4c:	e406      	b.n	800275c <_vfprintf_r+0x47c>
 8002f4e:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002f50:	2b00      	cmp	r3, #0
 8002f52:	f340 8273 	ble.w	800343c <_vfprintf_r+0x115c>
 8002f56:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8002f5a:	4293      	cmp	r3, r2
 8002f5c:	bfa8      	it	ge
 8002f5e:	4613      	movge	r3, r2
 8002f60:	2b00      	cmp	r3, #0
 8002f62:	461d      	mov	r5, r3
 8002f64:	dd0d      	ble.n	8002f82 <_vfprintf_r+0xca2>
 8002f66:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f68:	f8cb 7000 	str.w	r7, [fp]
 8002f6c:	3301      	adds	r3, #1
 8002f6e:	442c      	add	r4, r5
 8002f70:	2b07      	cmp	r3, #7
 8002f72:	942c      	str	r4, [sp, #176]	; 0xb0
 8002f74:	f8cb 5004 	str.w	r5, [fp, #4]
 8002f78:	932b      	str	r3, [sp, #172]	; 0xac
 8002f7a:	f300 82c1 	bgt.w	8003500 <_vfprintf_r+0x1220>
 8002f7e:	f10b 0b08 	add.w	fp, fp, #8
 8002f82:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002f84:	2d00      	cmp	r5, #0
 8002f86:	bfa8      	it	ge
 8002f88:	1b5b      	subge	r3, r3, r5
 8002f8a:	2b00      	cmp	r3, #0
 8002f8c:	461d      	mov	r5, r3
 8002f8e:	f340 8099 	ble.w	80030c4 <_vfprintf_r+0xde4>
 8002f92:	2d10      	cmp	r5, #16
 8002f94:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002f96:	4b2c      	ldr	r3, [pc, #176]	; (8003048 <_vfprintf_r+0xd68>)
 8002f98:	f340 83db 	ble.w	8003752 <_vfprintf_r+0x1472>
 8002f9c:	4618      	mov	r0, r3
 8002f9e:	4621      	mov	r1, r4
 8002fa0:	465b      	mov	r3, fp
 8002fa2:	2610      	movs	r6, #16
 8002fa4:	46bb      	mov	fp, r7
 8002fa6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8002faa:	9c07      	ldr	r4, [sp, #28]
 8002fac:	4607      	mov	r7, r0
 8002fae:	e004      	b.n	8002fba <_vfprintf_r+0xcda>
 8002fb0:	3308      	adds	r3, #8
 8002fb2:	3d10      	subs	r5, #16
 8002fb4:	2d10      	cmp	r5, #16
 8002fb6:	f340 83c7 	ble.w	8003748 <_vfprintf_r+0x1468>
 8002fba:	3201      	adds	r2, #1
 8002fbc:	3110      	adds	r1, #16
 8002fbe:	2a07      	cmp	r2, #7
 8002fc0:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8002fc4:	e9c3 7600 	strd	r7, r6, [r3]
 8002fc8:	ddf2      	ble.n	8002fb0 <_vfprintf_r+0xcd0>
 8002fca:	aa2a      	add	r2, sp, #168	; 0xa8
 8002fcc:	4621      	mov	r1, r4
 8002fce:	4648      	mov	r0, r9
 8002fd0:	f003 fcb4 	bl	800693c <__sprint_r>
 8002fd4:	2800      	cmp	r0, #0
 8002fd6:	f040 84a5 	bne.w	8003924 <_vfprintf_r+0x1644>
 8002fda:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8002fde:	ab2d      	add	r3, sp, #180	; 0xb4
 8002fe0:	e7e7      	b.n	8002fb2 <_vfprintf_r+0xcd2>
 8002fe2:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8002fe6:	af56      	add	r7, sp, #344	; 0x158
 8002fe8:	f7ff bafb 	b.w	80025e2 <_vfprintf_r+0x302>
 8002fec:	f1b9 0f00 	cmp.w	r9, #0
 8002ff0:	f77f af4c 	ble.w	8002e8c <_vfprintf_r+0xbac>
 8002ff4:	f1b9 0f10 	cmp.w	r9, #16
 8002ff8:	4b13      	ldr	r3, [pc, #76]	; (8003048 <_vfprintf_r+0xd68>)
 8002ffa:	f340 8659 	ble.w	8003cb0 <_vfprintf_r+0x19d0>
 8002ffe:	4619      	mov	r1, r3
 8003000:	4622      	mov	r2, r4
 8003002:	4633      	mov	r3, r6
 8003004:	2710      	movs	r7, #16
 8003006:	f8dd b00c 	ldr.w	fp, [sp, #12]
 800300a:	9c07      	ldr	r4, [sp, #28]
 800300c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800300e:	460e      	mov	r6, r1
 8003010:	e007      	b.n	8003022 <_vfprintf_r+0xd42>
 8003012:	3308      	adds	r3, #8
 8003014:	f1a9 0910 	sub.w	r9, r9, #16
 8003018:	f1b9 0f10 	cmp.w	r9, #16
 800301c:	f340 8353 	ble.w	80036c6 <_vfprintf_r+0x13e6>
 8003020:	3501      	adds	r5, #1
 8003022:	3210      	adds	r2, #16
 8003024:	2d07      	cmp	r5, #7
 8003026:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 800302a:	e9c3 6700 	strd	r6, r7, [r3]
 800302e:	ddf0      	ble.n	8003012 <_vfprintf_r+0xd32>
 8003030:	aa2a      	add	r2, sp, #168	; 0xa8
 8003032:	4621      	mov	r1, r4
 8003034:	4658      	mov	r0, fp
 8003036:	f003 fc81 	bl	800693c <__sprint_r>
 800303a:	2800      	cmp	r0, #0
 800303c:	f040 8472 	bne.w	8003924 <_vfprintf_r+0x1644>
 8003040:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8003044:	ab2d      	add	r3, sp, #180	; 0xb4
 8003046:	e7e5      	b.n	8003014 <_vfprintf_r+0xd34>
 8003048:	08007034 	.word	0x08007034
 800304c:	f018 0f01 	tst.w	r8, #1
 8003050:	f47f aee0 	bne.w	8002e14 <_vfprintf_r+0xb34>
 8003054:	2201      	movs	r2, #1
 8003056:	2d07      	cmp	r5, #7
 8003058:	f8cb 7000 	str.w	r7, [fp]
 800305c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003060:	f8cb 2004 	str.w	r2, [fp, #4]
 8003064:	dc04      	bgt.n	8003070 <_vfprintf_r+0xd90>
 8003066:	3302      	adds	r3, #2
 8003068:	9309      	str	r3, [sp, #36]	; 0x24
 800306a:	f10b 0b10 	add.w	fp, fp, #16
 800306e:	e70d      	b.n	8002e8c <_vfprintf_r+0xbac>
 8003070:	aa2a      	add	r2, sp, #168	; 0xa8
 8003072:	9907      	ldr	r1, [sp, #28]
 8003074:	9803      	ldr	r0, [sp, #12]
 8003076:	f003 fc61 	bl	800693c <__sprint_r>
 800307a:	2800      	cmp	r0, #0
 800307c:	f47f aea8 	bne.w	8002dd0 <_vfprintf_r+0xaf0>
 8003080:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003084:	3301      	adds	r3, #1
 8003086:	9309      	str	r3, [sp, #36]	; 0x24
 8003088:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 800308c:	ae2d      	add	r6, sp, #180	; 0xb4
 800308e:	e6fd      	b.n	8002e8c <_vfprintf_r+0xbac>
 8003090:	aa2a      	add	r2, sp, #168	; 0xa8
 8003092:	9907      	ldr	r1, [sp, #28]
 8003094:	9803      	ldr	r0, [sp, #12]
 8003096:	f003 fc51 	bl	800693c <__sprint_r>
 800309a:	2800      	cmp	r0, #0
 800309c:	f47f ae98 	bne.w	8002dd0 <_vfprintf_r+0xaf0>
 80030a0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80030a4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030a6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030aa:	f7ff baf6 	b.w	800269a <_vfprintf_r+0x3ba>
 80030ae:	aa2a      	add	r2, sp, #168	; 0xa8
 80030b0:	9907      	ldr	r1, [sp, #28]
 80030b2:	9803      	ldr	r0, [sp, #12]
 80030b4:	f003 fc42 	bl	800693c <__sprint_r>
 80030b8:	2800      	cmp	r0, #0
 80030ba:	f47f ae89 	bne.w	8002dd0 <_vfprintf_r+0xaf0>
 80030be:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030c0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030c4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80030c6:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80030ca:	443b      	add	r3, r7
 80030cc:	4699      	mov	r9, r3
 80030ce:	f040 8357 	bne.w	8003780 <_vfprintf_r+0x14a0>
 80030d2:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80030d4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80030d6:	4293      	cmp	r3, r2
 80030d8:	db49      	blt.n	800316e <_vfprintf_r+0xe8e>
 80030da:	f018 0f01 	tst.w	r8, #1
 80030de:	d146      	bne.n	800316e <_vfprintf_r+0xe8e>
 80030e0:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80030e2:	18bd      	adds	r5, r7, r2
 80030e4:	eba5 0509 	sub.w	r5, r5, r9
 80030e8:	1ad3      	subs	r3, r2, r3
 80030ea:	429d      	cmp	r5, r3
 80030ec:	bfa8      	it	ge
 80030ee:	461d      	movge	r5, r3
 80030f0:	2d00      	cmp	r5, #0
 80030f2:	dd0d      	ble.n	8003110 <_vfprintf_r+0xe30>
 80030f4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80030f6:	f8cb 9000 	str.w	r9, [fp]
 80030fa:	3201      	adds	r2, #1
 80030fc:	442c      	add	r4, r5
 80030fe:	2a07      	cmp	r2, #7
 8003100:	942c      	str	r4, [sp, #176]	; 0xb0
 8003102:	f8cb 5004 	str.w	r5, [fp, #4]
 8003106:	922b      	str	r2, [sp, #172]	; 0xac
 8003108:	f300 8462 	bgt.w	80039d0 <_vfprintf_r+0x16f0>
 800310c:	f10b 0b08 	add.w	fp, fp, #8
 8003110:	2d00      	cmp	r5, #0
 8003112:	bfac      	ite	ge
 8003114:	1b5d      	subge	r5, r3, r5
 8003116:	461d      	movlt	r5, r3
 8003118:	2d00      	cmp	r5, #0
 800311a:	f77f ab32 	ble.w	8002782 <_vfprintf_r+0x4a2>
 800311e:	2d10      	cmp	r5, #16
 8003120:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003122:	4bc5      	ldr	r3, [pc, #788]	; (8003438 <_vfprintf_r+0x1158>)
 8003124:	f340 80c4 	ble.w	80032b0 <_vfprintf_r+0xfd0>
 8003128:	4619      	mov	r1, r3
 800312a:	2610      	movs	r6, #16
 800312c:	4623      	mov	r3, r4
 800312e:	9f03      	ldr	r7, [sp, #12]
 8003130:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003134:	460c      	mov	r4, r1
 8003136:	e005      	b.n	8003144 <_vfprintf_r+0xe64>
 8003138:	f10b 0b08 	add.w	fp, fp, #8
 800313c:	3d10      	subs	r5, #16
 800313e:	2d10      	cmp	r5, #16
 8003140:	f340 80b3 	ble.w	80032aa <_vfprintf_r+0xfca>
 8003144:	3201      	adds	r2, #1
 8003146:	3310      	adds	r3, #16
 8003148:	2a07      	cmp	r2, #7
 800314a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800314e:	e9cb 4600 	strd	r4, r6, [fp]
 8003152:	ddf1      	ble.n	8003138 <_vfprintf_r+0xe58>
 8003154:	aa2a      	add	r2, sp, #168	; 0xa8
 8003156:	4649      	mov	r1, r9
 8003158:	4638      	mov	r0, r7
 800315a:	f003 fbef 	bl	800693c <__sprint_r>
 800315e:	2800      	cmp	r0, #0
 8003160:	f47f ae38 	bne.w	8002dd4 <_vfprintf_r+0xaf4>
 8003164:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003168:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800316c:	e7e6      	b.n	800313c <_vfprintf_r+0xe5c>
 800316e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003170:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003172:	f8cb 1000 	str.w	r1, [fp]
 8003176:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003178:	f8cb 1004 	str.w	r1, [fp, #4]
 800317c:	3201      	adds	r2, #1
 800317e:	440c      	add	r4, r1
 8003180:	2a07      	cmp	r2, #7
 8003182:	942c      	str	r4, [sp, #176]	; 0xb0
 8003184:	922b      	str	r2, [sp, #172]	; 0xac
 8003186:	f300 828c 	bgt.w	80036a2 <_vfprintf_r+0x13c2>
 800318a:	f10b 0b08 	add.w	fp, fp, #8
 800318e:	e7a7      	b.n	80030e0 <_vfprintf_r+0xe00>
 8003190:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003194:	f002 fa94 	bl	80056c0 <__retarget_lock_release_recursive>
 8003198:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800319c:	e628      	b.n	8002df0 <_vfprintf_r+0xb10>
 800319e:	aa2a      	add	r2, sp, #168	; 0xa8
 80031a0:	9907      	ldr	r1, [sp, #28]
 80031a2:	9803      	ldr	r0, [sp, #12]
 80031a4:	f003 fbca 	bl	800693c <__sprint_r>
 80031a8:	2800      	cmp	r0, #0
 80031aa:	f47f ae11 	bne.w	8002dd0 <_vfprintf_r+0xaf0>
 80031ae:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 80031b2:	ae2d      	add	r6, sp, #180	; 0xb4
 80031b4:	e638      	b.n	8002e28 <_vfprintf_r+0xb48>
 80031b6:	aa2a      	add	r2, sp, #168	; 0xa8
 80031b8:	9907      	ldr	r1, [sp, #28]
 80031ba:	9803      	ldr	r0, [sp, #12]
 80031bc:	f003 fbbe 	bl	800693c <__sprint_r>
 80031c0:	2800      	cmp	r0, #0
 80031c2:	f47f ae05 	bne.w	8002dd0 <_vfprintf_r+0xaf0>
 80031c6:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80031ca:	ae2d      	add	r6, sp, #180	; 0xb4
 80031cc:	930b      	str	r3, [sp, #44]	; 0x2c
 80031ce:	e638      	b.n	8002e42 <_vfprintf_r+0xb62>
 80031d0:	6814      	ldr	r4, [r2, #0]
 80031d2:	9308      	str	r3, [sp, #32]
 80031d4:	2500      	movs	r5, #0
 80031d6:	f7ff bb95 	b.w	8002904 <_vfprintf_r+0x624>
 80031da:	6814      	ldr	r4, [r2, #0]
 80031dc:	9308      	str	r3, [sp, #32]
 80031de:	2500      	movs	r5, #0
 80031e0:	f7ff b9ae 	b.w	8002540 <_vfprintf_r+0x260>
 80031e4:	680c      	ldr	r4, [r1, #0]
 80031e6:	9208      	str	r2, [sp, #32]
 80031e8:	17e5      	asrs	r5, r4, #31
 80031ea:	4620      	mov	r0, r4
 80031ec:	4629      	mov	r1, r5
 80031ee:	f7ff b9d2 	b.w	8002596 <_vfprintf_r+0x2b6>
 80031f2:	6814      	ldr	r4, [r2, #0]
 80031f4:	9108      	str	r1, [sp, #32]
 80031f6:	2201      	movs	r2, #1
 80031f8:	2500      	movs	r5, #0
 80031fa:	f7ff bb32 	b.w	8002862 <_vfprintf_r+0x582>
 80031fe:	2a01      	cmp	r2, #1
 8003200:	f47f ab3c 	bne.w	800287c <_vfprintf_r+0x59c>
 8003204:	e68f      	b.n	8002f26 <_vfprintf_r+0xc46>
 8003206:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 800320a:	2200      	movs	r2, #0
 800320c:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003210:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003214:	af56      	add	r7, sp, #344	; 0x158
 8003216:	4692      	mov	sl, r2
 8003218:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 800321c:	461e      	mov	r6, r3
 800321e:	e00a      	b.n	8003236 <_vfprintf_r+0xf56>
 8003220:	2300      	movs	r3, #0
 8003222:	4620      	mov	r0, r4
 8003224:	4629      	mov	r1, r5
 8003226:	220a      	movs	r2, #10
 8003228:	f7fc ffea 	bl	8000200 <__aeabi_uldivmod>
 800322c:	4604      	mov	r4, r0
 800322e:	460d      	mov	r5, r1
 8003230:	ea54 0305 	orrs.w	r3, r4, r5
 8003234:	d029      	beq.n	800328a <_vfprintf_r+0xfaa>
 8003236:	220a      	movs	r2, #10
 8003238:	2300      	movs	r3, #0
 800323a:	4620      	mov	r0, r4
 800323c:	4629      	mov	r1, r5
 800323e:	f7fc ffdf 	bl	8000200 <__aeabi_uldivmod>
 8003242:	3230      	adds	r2, #48	; 0x30
 8003244:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003248:	f10a 0a01 	add.w	sl, sl, #1
 800324c:	3f01      	subs	r7, #1
 800324e:	2e00      	cmp	r6, #0
 8003250:	d0e6      	beq.n	8003220 <_vfprintf_r+0xf40>
 8003252:	f898 3000 	ldrb.w	r3, [r8]
 8003256:	459a      	cmp	sl, r3
 8003258:	d1e2      	bne.n	8003220 <_vfprintf_r+0xf40>
 800325a:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 800325e:	d0df      	beq.n	8003220 <_vfprintf_r+0xf40>
 8003260:	2d00      	cmp	r5, #0
 8003262:	bf08      	it	eq
 8003264:	2c0a      	cmpeq	r4, #10
 8003266:	d3db      	bcc.n	8003220 <_vfprintf_r+0xf40>
 8003268:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 800326a:	9918      	ldr	r1, [sp, #96]	; 0x60
 800326c:	1aff      	subs	r7, r7, r3
 800326e:	461a      	mov	r2, r3
 8003270:	4638      	mov	r0, r7
 8003272:	f003 faf5 	bl	8006860 <strncpy>
 8003276:	f898 3001 	ldrb.w	r3, [r8, #1]
 800327a:	2b00      	cmp	r3, #0
 800327c:	f000 8496 	beq.w	8003bac <_vfprintf_r+0x18cc>
 8003280:	f108 0801 	add.w	r8, r8, #1
 8003284:	f04f 0a00 	mov.w	sl, #0
 8003288:	e7ca      	b.n	8003220 <_vfprintf_r+0xf40>
 800328a:	9b04      	ldr	r3, [sp, #16]
 800328c:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003290:	1bdb      	subs	r3, r3, r7
 8003292:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003296:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003298:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 800329c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 80032a0:	9309      	str	r3, [sp, #36]	; 0x24
 80032a2:	f7ff b99e 	b.w	80025e2 <_vfprintf_r+0x302>
 80032a6:	46c1      	mov	r9, r8
 80032a8:	e594      	b.n	8002dd4 <_vfprintf_r+0xaf4>
 80032aa:	4621      	mov	r1, r4
 80032ac:	461c      	mov	r4, r3
 80032ae:	460b      	mov	r3, r1
 80032b0:	3201      	adds	r2, #1
 80032b2:	442c      	add	r4, r5
 80032b4:	2a07      	cmp	r2, #7
 80032b6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80032ba:	e9cb 3500 	strd	r3, r5, [fp]
 80032be:	f77f aa5e 	ble.w	800277e <_vfprintf_r+0x49e>
 80032c2:	e5ee      	b.n	8002ea2 <_vfprintf_r+0xbc2>
 80032c4:	f018 0f10 	tst.w	r8, #16
 80032c8:	f040 80f8 	bne.w	80034bc <_vfprintf_r+0x11dc>
 80032cc:	f018 0f40 	tst.w	r8, #64	; 0x40
 80032d0:	f000 8351 	beq.w	8003976 <_vfprintf_r+0x1696>
 80032d4:	9a05      	ldr	r2, [sp, #20]
 80032d6:	801a      	strh	r2, [r3, #0]
 80032d8:	4657      	mov	r7, sl
 80032da:	f7ff baa7 	b.w	800282c <_vfprintf_r+0x54c>
 80032de:	aa2a      	add	r2, sp, #168	; 0xa8
 80032e0:	9907      	ldr	r1, [sp, #28]
 80032e2:	9803      	ldr	r0, [sp, #12]
 80032e4:	f003 fb2a 	bl	800693c <__sprint_r>
 80032e8:	2800      	cmp	r0, #0
 80032ea:	f47f ad71 	bne.w	8002dd0 <_vfprintf_r+0xaf0>
 80032ee:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80032f0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032f4:	f7ff b9f5 	b.w	80026e2 <_vfprintf_r+0x402>
 80032f8:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80032fc:	4602      	mov	r2, r0
 80032fe:	460b      	mov	r3, r1
 8003300:	f7fd feb4 	bl	800106c <__aeabi_dcmpun>
 8003304:	2800      	cmp	r0, #0
 8003306:	f040 8491 	bne.w	8003c2c <_vfprintf_r+0x194c>
 800330a:	2e61      	cmp	r6, #97	; 0x61
 800330c:	f000 8111 	beq.w	8003532 <_vfprintf_r+0x1252>
 8003310:	2e41      	cmp	r6, #65	; 0x41
 8003312:	f000 8377 	beq.w	8003a04 <_vfprintf_r+0x1724>
 8003316:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 800331a:	f026 0220 	bic.w	r2, r6, #32
 800331e:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003322:	930e      	str	r3, [sp, #56]	; 0x38
 8003324:	9204      	str	r2, [sp, #16]
 8003326:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003328:	f000 842d 	beq.w	8003b86 <_vfprintf_r+0x18a6>
 800332c:	2a47      	cmp	r2, #71	; 0x47
 800332e:	f000 8424 	beq.w	8003b7a <_vfprintf_r+0x189a>
 8003332:	2b00      	cmp	r3, #0
 8003334:	f2c0 82f9 	blt.w	800392a <_vfprintf_r+0x164a>
 8003338:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800333c:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003340:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003344:	2e66      	cmp	r6, #102	; 0x66
 8003346:	f000 83eb 	beq.w	8003b20 <_vfprintf_r+0x1840>
 800334a:	2e46      	cmp	r6, #70	; 0x46
 800334c:	f000 847e 	beq.w	8003c4c <_vfprintf_r+0x196c>
 8003350:	9b04      	ldr	r3, [sp, #16]
 8003352:	9803      	ldr	r0, [sp, #12]
 8003354:	2b45      	cmp	r3, #69	; 0x45
 8003356:	bf0c      	ite	eq
 8003358:	f109 0501 	addeq.w	r5, r9, #1
 800335c:	464d      	movne	r5, r9
 800335e:	aa28      	add	r2, sp, #160	; 0xa0
 8003360:	ab25      	add	r3, sp, #148	; 0x94
 8003362:	e9cd 3200 	strd	r3, r2, [sp]
 8003366:	2102      	movs	r1, #2
 8003368:	ab24      	add	r3, sp, #144	; 0x90
 800336a:	462a      	mov	r2, r5
 800336c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003370:	f000 fe3e 	bl	8003ff0 <_dtoa_r>
 8003374:	2e67      	cmp	r6, #103	; 0x67
 8003376:	4607      	mov	r7, r0
 8003378:	f040 849c 	bne.w	8003cb4 <_vfprintf_r+0x19d4>
 800337c:	f018 0f01 	tst.w	r8, #1
 8003380:	f040 83f9 	bne.w	8003b76 <_vfprintf_r+0x1896>
 8003384:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003386:	4640      	mov	r0, r8
 8003388:	1bdb      	subs	r3, r3, r7
 800338a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800338e:	9310      	str	r3, [sp, #64]	; 0x40
 8003390:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003392:	9311      	str	r3, [sp, #68]	; 0x44
 8003394:	9b04      	ldr	r3, [sp, #16]
 8003396:	2b47      	cmp	r3, #71	; 0x47
 8003398:	f000 81e7 	beq.w	800376a <_vfprintf_r+0x148a>
 800339c:	9b04      	ldr	r3, [sp, #16]
 800339e:	2b46      	cmp	r3, #70	; 0x46
 80033a0:	f000 8300 	beq.w	80039a4 <_vfprintf_r+0x16c4>
 80033a4:	9904      	ldr	r1, [sp, #16]
 80033a6:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80033a8:	b2f2      	uxtb	r2, r6
 80033aa:	2941      	cmp	r1, #65	; 0x41
 80033ac:	bf08      	it	eq
 80033ae:	320f      	addeq	r2, #15
 80033b0:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 80033b4:	bf06      	itte	eq
 80033b6:	b2d2      	uxtbeq	r2, r2
 80033b8:	2101      	moveq	r1, #1
 80033ba:	2100      	movne	r1, #0
 80033bc:	2b00      	cmp	r3, #0
 80033be:	9324      	str	r3, [sp, #144]	; 0x90
 80033c0:	bfb8      	it	lt
 80033c2:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 80033c4:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 80033c8:	bfba      	itte	lt
 80033ca:	f1c3 0301 	rsblt	r3, r3, #1
 80033ce:	222d      	movlt	r2, #45	; 0x2d
 80033d0:	222b      	movge	r2, #43	; 0x2b
 80033d2:	2b09      	cmp	r3, #9
 80033d4:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 80033d8:	f300 83f9 	bgt.w	8003bce <_vfprintf_r+0x18ee>
 80033dc:	2900      	cmp	r1, #0
 80033de:	f040 8487 	bne.w	8003cf0 <_vfprintf_r+0x1a10>
 80033e2:	2230      	movs	r2, #48	; 0x30
 80033e4:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 80033e8:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 80033ec:	3330      	adds	r3, #48	; 0x30
 80033ee:	7013      	strb	r3, [r2, #0]
 80033f0:	1c53      	adds	r3, r2, #1
 80033f2:	aa26      	add	r2, sp, #152	; 0x98
 80033f4:	1a9b      	subs	r3, r3, r2
 80033f6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80033f8:	9319      	str	r3, [sp, #100]	; 0x64
 80033fa:	2a01      	cmp	r2, #1
 80033fc:	4413      	add	r3, r2
 80033fe:	9309      	str	r3, [sp, #36]	; 0x24
 8003400:	f340 8442 	ble.w	8003c88 <_vfprintf_r+0x19a8>
 8003404:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003406:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003408:	4413      	add	r3, r2
 800340a:	9309      	str	r3, [sp, #36]	; 0x24
 800340c:	2300      	movs	r3, #0
 800340e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003410:	9314      	str	r3, [sp, #80]	; 0x50
 8003412:	9311      	str	r3, [sp, #68]	; 0x44
 8003414:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003416:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 800341a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800341e:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003422:	9304      	str	r3, [sp, #16]
 8003424:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003426:	2b00      	cmp	r3, #0
 8003428:	f040 8275 	bne.w	8003916 <_vfprintf_r+0x1636>
 800342c:	4699      	mov	r9, r3
 800342e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003432:	f7ff b8e2 	b.w	80025fa <_vfprintf_r+0x31a>
 8003436:	bf00      	nop
 8003438:	08007034 	.word	0x08007034
 800343c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800343e:	49bd      	ldr	r1, [pc, #756]	; (8003734 <_vfprintf_r+0x1454>)
 8003440:	f8cb 1000 	str.w	r1, [fp]
 8003444:	3201      	adds	r2, #1
 8003446:	3401      	adds	r4, #1
 8003448:	2101      	movs	r1, #1
 800344a:	2a07      	cmp	r2, #7
 800344c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003450:	f8cb 1004 	str.w	r1, [fp, #4]
 8003454:	dc60      	bgt.n	8003518 <_vfprintf_r+0x1238>
 8003456:	f10b 0b08 	add.w	fp, fp, #8
 800345a:	b92b      	cbnz	r3, 8003468 <_vfprintf_r+0x1188>
 800345c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800345e:	b91a      	cbnz	r2, 8003468 <_vfprintf_r+0x1188>
 8003460:	f018 0f01 	tst.w	r8, #1
 8003464:	f43f a98d 	beq.w	8002782 <_vfprintf_r+0x4a2>
 8003468:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800346a:	9916      	ldr	r1, [sp, #88]	; 0x58
 800346c:	f8cb 1000 	str.w	r1, [fp]
 8003470:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003472:	f8cb 1004 	str.w	r1, [fp, #4]
 8003476:	3201      	adds	r2, #1
 8003478:	440c      	add	r4, r1
 800347a:	2a07      	cmp	r2, #7
 800347c:	942c      	str	r4, [sp, #176]	; 0xb0
 800347e:	922b      	str	r2, [sp, #172]	; 0xac
 8003480:	f300 8282 	bgt.w	8003988 <_vfprintf_r+0x16a8>
 8003484:	f10b 0b08 	add.w	fp, fp, #8
 8003488:	2b00      	cmp	r3, #0
 800348a:	f2c0 82e7 	blt.w	8003a5c <_vfprintf_r+0x177c>
 800348e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003490:	3201      	adds	r2, #1
 8003492:	441c      	add	r4, r3
 8003494:	2a07      	cmp	r2, #7
 8003496:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800349a:	e9cb 7300 	strd	r7, r3, [fp]
 800349e:	f77f a96e 	ble.w	800277e <_vfprintf_r+0x49e>
 80034a2:	e4fe      	b.n	8002ea2 <_vfprintf_r+0xbc2>
 80034a4:	aa2a      	add	r2, sp, #168	; 0xa8
 80034a6:	9907      	ldr	r1, [sp, #28]
 80034a8:	9803      	ldr	r0, [sp, #12]
 80034aa:	f003 fa47 	bl	800693c <__sprint_r>
 80034ae:	2800      	cmp	r0, #0
 80034b0:	f47f ac8e 	bne.w	8002dd0 <_vfprintf_r+0xaf0>
 80034b4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034b8:	f7ff bbf0 	b.w	8002c9c <_vfprintf_r+0x9bc>
 80034bc:	9a05      	ldr	r2, [sp, #20]
 80034be:	601a      	str	r2, [r3, #0]
 80034c0:	4657      	mov	r7, sl
 80034c2:	f7ff b9b3 	b.w	800282c <_vfprintf_r+0x54c>
 80034c6:	8814      	ldrh	r4, [r2, #0]
 80034c8:	9108      	str	r1, [sp, #32]
 80034ca:	2500      	movs	r5, #0
 80034cc:	2201      	movs	r2, #1
 80034ce:	f7ff b9c8 	b.w	8002862 <_vfprintf_r+0x582>
 80034d2:	8814      	ldrh	r4, [r2, #0]
 80034d4:	9308      	str	r3, [sp, #32]
 80034d6:	2500      	movs	r5, #0
 80034d8:	f7ff ba14 	b.w	8002904 <_vfprintf_r+0x624>
 80034dc:	f9b1 4000 	ldrsh.w	r4, [r1]
 80034e0:	9208      	str	r2, [sp, #32]
 80034e2:	17e5      	asrs	r5, r4, #31
 80034e4:	4620      	mov	r0, r4
 80034e6:	4629      	mov	r1, r5
 80034e8:	f7ff b855 	b.w	8002596 <_vfprintf_r+0x2b6>
 80034ec:	8814      	ldrh	r4, [r2, #0]
 80034ee:	9308      	str	r3, [sp, #32]
 80034f0:	2500      	movs	r5, #0
 80034f2:	f7ff b825 	b.w	8002540 <_vfprintf_r+0x260>
 80034f6:	222d      	movs	r2, #45	; 0x2d
 80034f8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80034fc:	f7ff baa2 	b.w	8002a44 <_vfprintf_r+0x764>
 8003500:	aa2a      	add	r2, sp, #168	; 0xa8
 8003502:	9907      	ldr	r1, [sp, #28]
 8003504:	9803      	ldr	r0, [sp, #12]
 8003506:	f003 fa19 	bl	800693c <__sprint_r>
 800350a:	2800      	cmp	r0, #0
 800350c:	f47f ac60 	bne.w	8002dd0 <_vfprintf_r+0xaf0>
 8003510:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003512:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003516:	e534      	b.n	8002f82 <_vfprintf_r+0xca2>
 8003518:	aa2a      	add	r2, sp, #168	; 0xa8
 800351a:	9907      	ldr	r1, [sp, #28]
 800351c:	9803      	ldr	r0, [sp, #12]
 800351e:	f003 fa0d 	bl	800693c <__sprint_r>
 8003522:	2800      	cmp	r0, #0
 8003524:	f47f ac54 	bne.w	8002dd0 <_vfprintf_r+0xaf0>
 8003528:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800352a:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800352c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003530:	e793      	b.n	800345a <_vfprintf_r+0x117a>
 8003532:	2330      	movs	r3, #48	; 0x30
 8003534:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003538:	2378      	movs	r3, #120	; 0x78
 800353a:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 800353e:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003542:	f048 0402 	orr.w	r4, r8, #2
 8003546:	f300 82b0 	bgt.w	8003aaa <_vfprintf_r+0x17ca>
 800354a:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 800354e:	930e      	str	r3, [sp, #56]	; 0x38
 8003550:	f026 0320 	bic.w	r3, r6, #32
 8003554:	9304      	str	r3, [sp, #16]
 8003556:	2200      	movs	r2, #0
 8003558:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800355a:	920a      	str	r2, [sp, #40]	; 0x28
 800355c:	46a0      	mov	r8, r4
 800355e:	af3d      	add	r7, sp, #244	; 0xf4
 8003560:	2b00      	cmp	r3, #0
 8003562:	f2c0 81e3 	blt.w	800392c <_vfprintf_r+0x164c>
 8003566:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800356a:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800356e:	2300      	movs	r3, #0
 8003570:	930b      	str	r3, [sp, #44]	; 0x2c
 8003572:	2e61      	cmp	r6, #97	; 0x61
 8003574:	f000 8255 	beq.w	8003a22 <_vfprintf_r+0x1742>
 8003578:	2e41      	cmp	r6, #65	; 0x41
 800357a:	f47f aee3 	bne.w	8003344 <_vfprintf_r+0x1064>
 800357e:	a824      	add	r0, sp, #144	; 0x90
 8003580:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003584:	f003 f8e2 	bl	800674c <frexp>
 8003588:	2200      	movs	r2, #0
 800358a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800358e:	ec51 0b10 	vmov	r0, r1, d0
 8003592:	f7fd fad1 	bl	8000b38 <__aeabi_dmul>
 8003596:	2200      	movs	r2, #0
 8003598:	2300      	movs	r3, #0
 800359a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800359e:	f7fd fd33 	bl	8001008 <__aeabi_dcmpeq>
 80035a2:	2800      	cmp	r0, #0
 80035a4:	f040 8305 	bne.w	8003bb2 <_vfprintf_r+0x18d2>
 80035a8:	4b63      	ldr	r3, [pc, #396]	; (8003738 <_vfprintf_r+0x1458>)
 80035aa:	9309      	str	r3, [sp, #36]	; 0x24
 80035ac:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 80035b0:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 80035b4:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80035b8:	9721      	str	r7, [sp, #132]	; 0x84
 80035ba:	46b9      	mov	r9, r7
 80035bc:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 80035c0:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 80035c4:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80035c8:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 80035cc:	e003      	b.n	80035d6 <_vfprintf_r+0x12f6>
 80035ce:	f7fd fd1b 	bl	8001008 <__aeabi_dcmpeq>
 80035d2:	bb20      	cbnz	r0, 800361e <_vfprintf_r+0x133e>
 80035d4:	46a9      	mov	r9, r5
 80035d6:	2200      	movs	r2, #0
 80035d8:	4b58      	ldr	r3, [pc, #352]	; (800373c <_vfprintf_r+0x145c>)
 80035da:	4630      	mov	r0, r6
 80035dc:	4639      	mov	r1, r7
 80035de:	f7fd faab 	bl	8000b38 <__aeabi_dmul>
 80035e2:	460f      	mov	r7, r1
 80035e4:	4606      	mov	r6, r0
 80035e6:	f7fd fd57 	bl	8001098 <__aeabi_d2iz>
 80035ea:	4680      	mov	r8, r0
 80035ec:	f7fd fa3a 	bl	8000a64 <__aeabi_i2d>
 80035f0:	4602      	mov	r2, r0
 80035f2:	460b      	mov	r3, r1
 80035f4:	4630      	mov	r0, r6
 80035f6:	4639      	mov	r1, r7
 80035f8:	f7fd f8e6 	bl	80007c8 <__aeabi_dsub>
 80035fc:	464d      	mov	r5, r9
 80035fe:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003602:	f805 cb01 	strb.w	ip, [r5], #1
 8003606:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 800360a:	46a3      	mov	fp, r4
 800360c:	4606      	mov	r6, r0
 800360e:	460f      	mov	r7, r1
 8003610:	f04f 0200 	mov.w	r2, #0
 8003614:	f04f 0300 	mov.w	r3, #0
 8003618:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 800361c:	d1d7      	bne.n	80035ce <_vfprintf_r+0x12ee>
 800361e:	4630      	mov	r0, r6
 8003620:	4639      	mov	r1, r7
 8003622:	2200      	movs	r2, #0
 8003624:	4b46      	ldr	r3, [pc, #280]	; (8003740 <_vfprintf_r+0x1460>)
 8003626:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 800362a:	9e10      	ldr	r6, [sp, #64]	; 0x40
 800362c:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003630:	4644      	mov	r4, r8
 8003632:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003636:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 800363a:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 800363e:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003642:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003644:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003648:	f7fd fd06 	bl	8001058 <__aeabi_dcmpgt>
 800364c:	2800      	cmp	r0, #0
 800364e:	f040 8176 	bne.w	800393e <_vfprintf_r+0x165e>
 8003652:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003656:	2200      	movs	r2, #0
 8003658:	4b39      	ldr	r3, [pc, #228]	; (8003740 <_vfprintf_r+0x1460>)
 800365a:	f7fd fcd5 	bl	8001008 <__aeabi_dcmpeq>
 800365e:	b110      	cbz	r0, 8003666 <_vfprintf_r+0x1386>
 8003660:	07e2      	lsls	r2, r4, #31
 8003662:	f100 816c 	bmi.w	800393e <_vfprintf_r+0x165e>
 8003666:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003668:	2b00      	cmp	r3, #0
 800366a:	db07      	blt.n	800367c <_vfprintf_r+0x139c>
 800366c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800366e:	3301      	adds	r3, #1
 8003670:	442b      	add	r3, r5
 8003672:	2230      	movs	r2, #48	; 0x30
 8003674:	f805 2b01 	strb.w	r2, [r5], #1
 8003678:	42ab      	cmp	r3, r5
 800367a:	d1fb      	bne.n	8003674 <_vfprintf_r+0x1394>
 800367c:	1beb      	subs	r3, r5, r7
 800367e:	4640      	mov	r0, r8
 8003680:	9310      	str	r3, [sp, #64]	; 0x40
 8003682:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003686:	e683      	b.n	8003390 <_vfprintf_r+0x10b0>
 8003688:	f8cd 9010 	str.w	r9, [sp, #16]
 800368c:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003690:	9408      	str	r4, [sp, #32]
 8003692:	4681      	mov	r9, r0
 8003694:	900f      	str	r0, [sp, #60]	; 0x3c
 8003696:	9014      	str	r0, [sp, #80]	; 0x50
 8003698:	9011      	str	r0, [sp, #68]	; 0x44
 800369a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800369e:	f7fe bfac 	b.w	80025fa <_vfprintf_r+0x31a>
 80036a2:	aa2a      	add	r2, sp, #168	; 0xa8
 80036a4:	9907      	ldr	r1, [sp, #28]
 80036a6:	9803      	ldr	r0, [sp, #12]
 80036a8:	f003 f948 	bl	800693c <__sprint_r>
 80036ac:	2800      	cmp	r0, #0
 80036ae:	f47f ab8f 	bne.w	8002dd0 <_vfprintf_r+0xaf0>
 80036b2:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80036b4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036b6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036ba:	e511      	b.n	80030e0 <_vfprintf_r+0xe00>
 80036bc:	4252      	negs	r2, r2
 80036be:	9206      	str	r2, [sp, #24]
 80036c0:	9308      	str	r3, [sp, #32]
 80036c2:	f7ff b96d 	b.w	80029a0 <_vfprintf_r+0x6c0>
 80036c6:	4614      	mov	r4, r2
 80036c8:	4632      	mov	r2, r6
 80036ca:	461e      	mov	r6, r3
 80036cc:	4613      	mov	r3, r2
 80036ce:	462a      	mov	r2, r5
 80036d0:	3201      	adds	r2, #1
 80036d2:	9209      	str	r2, [sp, #36]	; 0x24
 80036d4:	f106 0208 	add.w	r2, r6, #8
 80036d8:	e9c6 3900 	strd	r3, r9, [r6]
 80036dc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80036de:	932b      	str	r3, [sp, #172]	; 0xac
 80036e0:	444c      	add	r4, r9
 80036e2:	2b07      	cmp	r3, #7
 80036e4:	942c      	str	r4, [sp, #176]	; 0xb0
 80036e6:	f73f acc3 	bgt.w	8003070 <_vfprintf_r+0xd90>
 80036ea:	3301      	adds	r3, #1
 80036ec:	9309      	str	r3, [sp, #36]	; 0x24
 80036ee:	f102 0b08 	add.w	fp, r2, #8
 80036f2:	4616      	mov	r6, r2
 80036f4:	f7ff bbca 	b.w	8002e8c <_vfprintf_r+0xbac>
 80036f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80036fa:	9907      	ldr	r1, [sp, #28]
 80036fc:	9803      	ldr	r0, [sp, #12]
 80036fe:	f003 f91d 	bl	800693c <__sprint_r>
 8003702:	2800      	cmp	r0, #0
 8003704:	f47f ab64 	bne.w	8002dd0 <_vfprintf_r+0xaf0>
 8003708:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800370a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800370e:	f7ff bade 	b.w	8002cce <_vfprintf_r+0x9ee>
 8003712:	464b      	mov	r3, r9
 8003714:	2b06      	cmp	r3, #6
 8003716:	bf28      	it	cs
 8003718:	2306      	movcs	r3, #6
 800371a:	46b9      	mov	r9, r7
 800371c:	970f      	str	r7, [sp, #60]	; 0x3c
 800371e:	9714      	str	r7, [sp, #80]	; 0x50
 8003720:	9711      	str	r7, [sp, #68]	; 0x44
 8003722:	970a      	str	r7, [sp, #40]	; 0x28
 8003724:	463a      	mov	r2, r7
 8003726:	9304      	str	r3, [sp, #16]
 8003728:	e9cd 4308 	strd	r4, r3, [sp, #32]
 800372c:	4f05      	ldr	r7, [pc, #20]	; (8003744 <_vfprintf_r+0x1464>)
 800372e:	f7fe bf64 	b.w	80025fa <_vfprintf_r+0x31a>
 8003732:	bf00      	nop
 8003734:	08007020 	.word	0x08007020
 8003738:	08007004 	.word	0x08007004
 800373c:	40300000 	.word	0x40300000
 8003740:	3fe00000 	.word	0x3fe00000
 8003744:	08007018 	.word	0x08007018
 8003748:	460c      	mov	r4, r1
 800374a:	4639      	mov	r1, r7
 800374c:	465f      	mov	r7, fp
 800374e:	469b      	mov	fp, r3
 8003750:	460b      	mov	r3, r1
 8003752:	3201      	adds	r2, #1
 8003754:	442c      	add	r4, r5
 8003756:	2a07      	cmp	r2, #7
 8003758:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800375c:	e9cb 3500 	strd	r3, r5, [fp]
 8003760:	f73f aca5 	bgt.w	80030ae <_vfprintf_r+0xdce>
 8003764:	f10b 0b08 	add.w	fp, fp, #8
 8003768:	e4ac      	b.n	80030c4 <_vfprintf_r+0xde4>
 800376a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800376c:	1cda      	adds	r2, r3, #3
 800376e:	db02      	blt.n	8003776 <_vfprintf_r+0x1496>
 8003770:	4599      	cmp	r9, r3
 8003772:	f280 80b5 	bge.w	80038e0 <_vfprintf_r+0x1600>
 8003776:	3e02      	subs	r6, #2
 8003778:	f026 0320 	bic.w	r3, r6, #32
 800377c:	9304      	str	r3, [sp, #16]
 800377e:	e611      	b.n	80033a4 <_vfprintf_r+0x10c4>
 8003780:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003782:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003786:	465a      	mov	r2, fp
 8003788:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 800378c:	18fb      	adds	r3, r7, r3
 800378e:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003792:	970c      	str	r7, [sp, #48]	; 0x30
 8003794:	4eaf      	ldr	r6, [pc, #700]	; (8003a54 <_vfprintf_r+0x1774>)
 8003796:	f8dd a01c 	ldr.w	sl, [sp, #28]
 800379a:	9309      	str	r3, [sp, #36]	; 0x24
 800379c:	464f      	mov	r7, r9
 800379e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80037a2:	4621      	mov	r1, r4
 80037a4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80037a6:	2b00      	cmp	r3, #0
 80037a8:	d05b      	beq.n	8003862 <_vfprintf_r+0x1582>
 80037aa:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80037ac:	2b00      	cmp	r3, #0
 80037ae:	d154      	bne.n	800385a <_vfprintf_r+0x157a>
 80037b0:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80037b2:	3b01      	subs	r3, #1
 80037b4:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80037b8:	9314      	str	r3, [sp, #80]	; 0x50
 80037ba:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80037bc:	9818      	ldr	r0, [sp, #96]	; 0x60
 80037be:	6010      	str	r0, [r2, #0]
 80037c0:	3301      	adds	r3, #1
 80037c2:	4459      	add	r1, fp
 80037c4:	2b07      	cmp	r3, #7
 80037c6:	912c      	str	r1, [sp, #176]	; 0xb0
 80037c8:	f8c2 b004 	str.w	fp, [r2, #4]
 80037cc:	932b      	str	r3, [sp, #172]	; 0xac
 80037ce:	dc68      	bgt.n	80038a2 <_vfprintf_r+0x15c2>
 80037d0:	3208      	adds	r2, #8
 80037d2:	9809      	ldr	r0, [sp, #36]	; 0x24
 80037d4:	f898 3000 	ldrb.w	r3, [r8]
 80037d8:	1bc5      	subs	r5, r0, r7
 80037da:	429d      	cmp	r5, r3
 80037dc:	bfa8      	it	ge
 80037de:	461d      	movge	r5, r3
 80037e0:	2d00      	cmp	r5, #0
 80037e2:	dd0b      	ble.n	80037fc <_vfprintf_r+0x151c>
 80037e4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80037e6:	6017      	str	r7, [r2, #0]
 80037e8:	3301      	adds	r3, #1
 80037ea:	4429      	add	r1, r5
 80037ec:	2b07      	cmp	r3, #7
 80037ee:	912c      	str	r1, [sp, #176]	; 0xb0
 80037f0:	6055      	str	r5, [r2, #4]
 80037f2:	932b      	str	r3, [sp, #172]	; 0xac
 80037f4:	dc5e      	bgt.n	80038b4 <_vfprintf_r+0x15d4>
 80037f6:	f898 3000 	ldrb.w	r3, [r8]
 80037fa:	3208      	adds	r2, #8
 80037fc:	2d00      	cmp	r5, #0
 80037fe:	bfac      	ite	ge
 8003800:	1b5d      	subge	r5, r3, r5
 8003802:	461d      	movlt	r5, r3
 8003804:	2d00      	cmp	r5, #0
 8003806:	dd26      	ble.n	8003856 <_vfprintf_r+0x1576>
 8003808:	2d10      	cmp	r5, #16
 800380a:	982b      	ldr	r0, [sp, #172]	; 0xac
 800380c:	dd3c      	ble.n	8003888 <_vfprintf_r+0x15a8>
 800380e:	2410      	movs	r4, #16
 8003810:	e003      	b.n	800381a <_vfprintf_r+0x153a>
 8003812:	3208      	adds	r2, #8
 8003814:	3d10      	subs	r5, #16
 8003816:	2d10      	cmp	r5, #16
 8003818:	dd36      	ble.n	8003888 <_vfprintf_r+0x15a8>
 800381a:	3001      	adds	r0, #1
 800381c:	3110      	adds	r1, #16
 800381e:	2807      	cmp	r0, #7
 8003820:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003824:	e9c2 6400 	strd	r6, r4, [r2]
 8003828:	ddf3      	ble.n	8003812 <_vfprintf_r+0x1532>
 800382a:	aa2a      	add	r2, sp, #168	; 0xa8
 800382c:	4651      	mov	r1, sl
 800382e:	4648      	mov	r0, r9
 8003830:	f003 f884 	bl	800693c <__sprint_r>
 8003834:	2800      	cmp	r0, #0
 8003836:	d150      	bne.n	80038da <_vfprintf_r+0x15fa>
 8003838:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 800383c:	aa2d      	add	r2, sp, #180	; 0xb4
 800383e:	e7e9      	b.n	8003814 <_vfprintf_r+0x1534>
 8003840:	aa2a      	add	r2, sp, #168	; 0xa8
 8003842:	4651      	mov	r1, sl
 8003844:	4648      	mov	r0, r9
 8003846:	f003 f879 	bl	800693c <__sprint_r>
 800384a:	2800      	cmp	r0, #0
 800384c:	d145      	bne.n	80038da <_vfprintf_r+0x15fa>
 800384e:	f898 3000 	ldrb.w	r3, [r8]
 8003852:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003854:	aa2d      	add	r2, sp, #180	; 0xb4
 8003856:	441f      	add	r7, r3
 8003858:	e7a4      	b.n	80037a4 <_vfprintf_r+0x14c4>
 800385a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800385c:	3b01      	subs	r3, #1
 800385e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003860:	e7ab      	b.n	80037ba <_vfprintf_r+0x14da>
 8003862:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003864:	2b00      	cmp	r3, #0
 8003866:	d1f8      	bne.n	800385a <_vfprintf_r+0x157a>
 8003868:	46b9      	mov	r9, r7
 800386a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800386c:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 800386e:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003872:	18fb      	adds	r3, r7, r3
 8003874:	4599      	cmp	r9, r3
 8003876:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 800387a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800387e:	4693      	mov	fp, r2
 8003880:	460c      	mov	r4, r1
 8003882:	bf28      	it	cs
 8003884:	4699      	movcs	r9, r3
 8003886:	e424      	b.n	80030d2 <_vfprintf_r+0xdf2>
 8003888:	3001      	adds	r0, #1
 800388a:	4429      	add	r1, r5
 800388c:	2807      	cmp	r0, #7
 800388e:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003892:	e9c2 6500 	strd	r6, r5, [r2]
 8003896:	dcd3      	bgt.n	8003840 <_vfprintf_r+0x1560>
 8003898:	f898 3000 	ldrb.w	r3, [r8]
 800389c:	3208      	adds	r2, #8
 800389e:	441f      	add	r7, r3
 80038a0:	e780      	b.n	80037a4 <_vfprintf_r+0x14c4>
 80038a2:	aa2a      	add	r2, sp, #168	; 0xa8
 80038a4:	4651      	mov	r1, sl
 80038a6:	4648      	mov	r0, r9
 80038a8:	f003 f848 	bl	800693c <__sprint_r>
 80038ac:	b9a8      	cbnz	r0, 80038da <_vfprintf_r+0x15fa>
 80038ae:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80038b0:	aa2d      	add	r2, sp, #180	; 0xb4
 80038b2:	e78e      	b.n	80037d2 <_vfprintf_r+0x14f2>
 80038b4:	aa2a      	add	r2, sp, #168	; 0xa8
 80038b6:	4651      	mov	r1, sl
 80038b8:	4648      	mov	r0, r9
 80038ba:	f003 f83f 	bl	800693c <__sprint_r>
 80038be:	b960      	cbnz	r0, 80038da <_vfprintf_r+0x15fa>
 80038c0:	f898 3000 	ldrb.w	r3, [r8]
 80038c4:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80038c6:	aa2d      	add	r2, sp, #180	; 0xb4
 80038c8:	e798      	b.n	80037fc <_vfprintf_r+0x151c>
 80038ca:	4638      	mov	r0, r7
 80038cc:	f7fc feb8 	bl	8000640 <strlen>
 80038d0:	46a9      	mov	r9, r5
 80038d2:	4603      	mov	r3, r0
 80038d4:	9009      	str	r0, [sp, #36]	; 0x24
 80038d6:	f7ff b8f4 	b.w	8002ac2 <_vfprintf_r+0x7e2>
 80038da:	46d1      	mov	r9, sl
 80038dc:	f7ff ba7a 	b.w	8002dd4 <_vfprintf_r+0xaf4>
 80038e0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80038e2:	4619      	mov	r1, r3
 80038e4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80038e6:	4299      	cmp	r1, r3
 80038e8:	f300 8082 	bgt.w	80039f0 <_vfprintf_r+0x1710>
 80038ec:	07c4      	lsls	r4, r0, #31
 80038ee:	f140 816b 	bpl.w	8003bc8 <_vfprintf_r+0x18e8>
 80038f2:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80038f4:	4413      	add	r3, r2
 80038f6:	9309      	str	r3, [sp, #36]	; 0x24
 80038f8:	0541      	lsls	r1, r0, #21
 80038fa:	d503      	bpl.n	8003904 <_vfprintf_r+0x1624>
 80038fc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80038fe:	2b00      	cmp	r3, #0
 8003900:	f300 80e6 	bgt.w	8003ad0 <_vfprintf_r+0x17f0>
 8003904:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003906:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800390a:	9304      	str	r3, [sp, #16]
 800390c:	2667      	movs	r6, #103	; 0x67
 800390e:	2300      	movs	r3, #0
 8003910:	930f      	str	r3, [sp, #60]	; 0x3c
 8003912:	9314      	str	r3, [sp, #80]	; 0x50
 8003914:	e586      	b.n	8003424 <_vfprintf_r+0x1144>
 8003916:	222d      	movs	r2, #45	; 0x2d
 8003918:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800391c:	f04f 0900 	mov.w	r9, #0
 8003920:	f7fe be6c 	b.w	80025fc <_vfprintf_r+0x31c>
 8003924:	46a1      	mov	r9, r4
 8003926:	f7ff ba55 	b.w	8002dd4 <_vfprintf_r+0xaf4>
 800392a:	900a      	str	r0, [sp, #40]	; 0x28
 800392c:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003930:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003934:	931f      	str	r3, [sp, #124]	; 0x7c
 8003936:	232d      	movs	r3, #45	; 0x2d
 8003938:	911e      	str	r1, [sp, #120]	; 0x78
 800393a:	930b      	str	r3, [sp, #44]	; 0x2c
 800393c:	e619      	b.n	8003572 <_vfprintf_r+0x1292>
 800393e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003940:	9328      	str	r3, [sp, #160]	; 0xa0
 8003942:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003944:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003948:	7bd9      	ldrb	r1, [r3, #15]
 800394a:	4291      	cmp	r1, r2
 800394c:	462b      	mov	r3, r5
 800394e:	d109      	bne.n	8003964 <_vfprintf_r+0x1684>
 8003950:	2030      	movs	r0, #48	; 0x30
 8003952:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003956:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003958:	1e5a      	subs	r2, r3, #1
 800395a:	9228      	str	r2, [sp, #160]	; 0xa0
 800395c:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003960:	4291      	cmp	r1, r2
 8003962:	d0f6      	beq.n	8003952 <_vfprintf_r+0x1672>
 8003964:	2a39      	cmp	r2, #57	; 0x39
 8003966:	bf0b      	itete	eq
 8003968:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 800396a:	3201      	addne	r2, #1
 800396c:	7a92      	ldrbeq	r2, [r2, #10]
 800396e:	b2d2      	uxtbne	r2, r2
 8003970:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003974:	e682      	b.n	800367c <_vfprintf_r+0x139c>
 8003976:	f418 7f00 	tst.w	r8, #512	; 0x200
 800397a:	f43f ad9f 	beq.w	80034bc <_vfprintf_r+0x11dc>
 800397e:	9a05      	ldr	r2, [sp, #20]
 8003980:	701a      	strb	r2, [r3, #0]
 8003982:	4657      	mov	r7, sl
 8003984:	f7fe bf52 	b.w	800282c <_vfprintf_r+0x54c>
 8003988:	aa2a      	add	r2, sp, #168	; 0xa8
 800398a:	9907      	ldr	r1, [sp, #28]
 800398c:	9803      	ldr	r0, [sp, #12]
 800398e:	f002 ffd5 	bl	800693c <__sprint_r>
 8003992:	2800      	cmp	r0, #0
 8003994:	f47f aa1c 	bne.w	8002dd0 <_vfprintf_r+0xaf0>
 8003998:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800399a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 800399e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039a2:	e571      	b.n	8003488 <_vfprintf_r+0x11a8>
 80039a4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039a6:	2b00      	cmp	r3, #0
 80039a8:	f340 8164 	ble.w	8003c74 <_vfprintf_r+0x1994>
 80039ac:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039ae:	f1b9 0f00 	cmp.w	r9, #0
 80039b2:	f040 8103 	bne.w	8003bbc <_vfprintf_r+0x18dc>
 80039b6:	07c6      	lsls	r6, r0, #31
 80039b8:	f100 8100 	bmi.w	8003bbc <_vfprintf_r+0x18dc>
 80039bc:	9309      	str	r3, [sp, #36]	; 0x24
 80039be:	2666      	movs	r6, #102	; 0x66
 80039c0:	0543      	lsls	r3, r0, #21
 80039c2:	f100 8086 	bmi.w	8003ad2 <_vfprintf_r+0x17f2>
 80039c6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80039c8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80039cc:	9304      	str	r3, [sp, #16]
 80039ce:	e79e      	b.n	800390e <_vfprintf_r+0x162e>
 80039d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80039d2:	9907      	ldr	r1, [sp, #28]
 80039d4:	9803      	ldr	r0, [sp, #12]
 80039d6:	f002 ffb1 	bl	800693c <__sprint_r>
 80039da:	2800      	cmp	r0, #0
 80039dc:	f47f a9f8 	bne.w	8002dd0 <_vfprintf_r+0xaf0>
 80039e0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80039e2:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80039e4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80039e6:	1ad3      	subs	r3, r2, r3
 80039e8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039ec:	f7ff bb90 	b.w	8003110 <_vfprintf_r+0xe30>
 80039f0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80039f2:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80039f4:	4413      	add	r3, r2
 80039f6:	9309      	str	r3, [sp, #36]	; 0x24
 80039f8:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039fa:	2b00      	cmp	r3, #0
 80039fc:	f340 8149 	ble.w	8003c92 <_vfprintf_r+0x19b2>
 8003a00:	2667      	movs	r6, #103	; 0x67
 8003a02:	e7dd      	b.n	80039c0 <_vfprintf_r+0x16e0>
 8003a04:	2330      	movs	r3, #48	; 0x30
 8003a06:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003a0a:	2358      	movs	r3, #88	; 0x58
 8003a0c:	e595      	b.n	800353a <_vfprintf_r+0x125a>
 8003a0e:	9803      	ldr	r0, [sp, #12]
 8003a10:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a12:	4649      	mov	r1, r9
 8003a14:	f002 ff92 	bl	800693c <__sprint_r>
 8003a18:	2800      	cmp	r0, #0
 8003a1a:	f47f a9e0 	bne.w	8002dde <_vfprintf_r+0xafe>
 8003a1e:	f7fe bf0f 	b.w	8002840 <_vfprintf_r+0x560>
 8003a22:	a824      	add	r0, sp, #144	; 0x90
 8003a24:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003a28:	f002 fe90 	bl	800674c <frexp>
 8003a2c:	2200      	movs	r2, #0
 8003a2e:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003a32:	ec51 0b10 	vmov	r0, r1, d0
 8003a36:	f7fd f87f 	bl	8000b38 <__aeabi_dmul>
 8003a3a:	2200      	movs	r2, #0
 8003a3c:	2300      	movs	r3, #0
 8003a3e:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003a42:	f7fd fae1 	bl	8001008 <__aeabi_dcmpeq>
 8003a46:	b108      	cbz	r0, 8003a4c <_vfprintf_r+0x176c>
 8003a48:	2301      	movs	r3, #1
 8003a4a:	9324      	str	r3, [sp, #144]	; 0x90
 8003a4c:	4b02      	ldr	r3, [pc, #8]	; (8003a58 <_vfprintf_r+0x1778>)
 8003a4e:	9309      	str	r3, [sp, #36]	; 0x24
 8003a50:	e5ac      	b.n	80035ac <_vfprintf_r+0x12cc>
 8003a52:	bf00      	nop
 8003a54:	08007034 	.word	0x08007034
 8003a58:	08006ff0 	.word	0x08006ff0
 8003a5c:	425d      	negs	r5, r3
 8003a5e:	3310      	adds	r3, #16
 8003a60:	4bb9      	ldr	r3, [pc, #740]	; (8003d48 <_vfprintf_r+0x1a68>)
 8003a62:	f280 8097 	bge.w	8003b94 <_vfprintf_r+0x18b4>
 8003a66:	4619      	mov	r1, r3
 8003a68:	2610      	movs	r6, #16
 8003a6a:	4623      	mov	r3, r4
 8003a6c:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003a70:	460c      	mov	r4, r1
 8003a72:	e005      	b.n	8003a80 <_vfprintf_r+0x17a0>
 8003a74:	f10b 0b08 	add.w	fp, fp, #8
 8003a78:	3d10      	subs	r5, #16
 8003a7a:	2d10      	cmp	r5, #16
 8003a7c:	f340 8087 	ble.w	8003b8e <_vfprintf_r+0x18ae>
 8003a80:	3201      	adds	r2, #1
 8003a82:	3310      	adds	r3, #16
 8003a84:	2a07      	cmp	r2, #7
 8003a86:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003a8a:	e9cb 4600 	strd	r4, r6, [fp]
 8003a8e:	ddf1      	ble.n	8003a74 <_vfprintf_r+0x1794>
 8003a90:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a92:	9907      	ldr	r1, [sp, #28]
 8003a94:	4648      	mov	r0, r9
 8003a96:	f002 ff51 	bl	800693c <__sprint_r>
 8003a9a:	2800      	cmp	r0, #0
 8003a9c:	f47f a998 	bne.w	8002dd0 <_vfprintf_r+0xaf0>
 8003aa0:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003aa4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003aa8:	e7e6      	b.n	8003a78 <_vfprintf_r+0x1798>
 8003aaa:	f109 0101 	add.w	r1, r9, #1
 8003aae:	9803      	ldr	r0, [sp, #12]
 8003ab0:	f001 fe80 	bl	80057b4 <_malloc_r>
 8003ab4:	4607      	mov	r7, r0
 8003ab6:	2800      	cmp	r0, #0
 8003ab8:	f000 813b 	beq.w	8003d32 <_vfprintf_r+0x1a52>
 8003abc:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003ac0:	930e      	str	r3, [sp, #56]	; 0x38
 8003ac2:	f026 0320 	bic.w	r3, r6, #32
 8003ac6:	9304      	str	r3, [sp, #16]
 8003ac8:	46a0      	mov	r8, r4
 8003aca:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003acc:	900a      	str	r0, [sp, #40]	; 0x28
 8003ace:	e547      	b.n	8003560 <_vfprintf_r+0x1280>
 8003ad0:	2667      	movs	r6, #103	; 0x67
 8003ad2:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003ad4:	2200      	movs	r2, #0
 8003ad6:	920f      	str	r2, [sp, #60]	; 0x3c
 8003ad8:	9214      	str	r2, [sp, #80]	; 0x50
 8003ada:	7803      	ldrb	r3, [r0, #0]
 8003adc:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003ade:	2bff      	cmp	r3, #255	; 0xff
 8003ae0:	d00c      	beq.n	8003afc <_vfprintf_r+0x181c>
 8003ae2:	4293      	cmp	r3, r2
 8003ae4:	da0a      	bge.n	8003afc <_vfprintf_r+0x181c>
 8003ae6:	7841      	ldrb	r1, [r0, #1]
 8003ae8:	1ad2      	subs	r2, r2, r3
 8003aea:	b1a9      	cbz	r1, 8003b18 <_vfprintf_r+0x1838>
 8003aec:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003aee:	3301      	adds	r3, #1
 8003af0:	9314      	str	r3, [sp, #80]	; 0x50
 8003af2:	460b      	mov	r3, r1
 8003af4:	2bff      	cmp	r3, #255	; 0xff
 8003af6:	f100 0001 	add.w	r0, r0, #1
 8003afa:	d1f2      	bne.n	8003ae2 <_vfprintf_r+0x1802>
 8003afc:	9211      	str	r2, [sp, #68]	; 0x44
 8003afe:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003b00:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003b02:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003b04:	901a      	str	r0, [sp, #104]	; 0x68
 8003b06:	4413      	add	r3, r2
 8003b08:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003b0a:	fb02 1303 	mla	r3, r2, r3, r1
 8003b0e:	9309      	str	r3, [sp, #36]	; 0x24
 8003b10:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b14:	9304      	str	r3, [sp, #16]
 8003b16:	e485      	b.n	8003424 <_vfprintf_r+0x1144>
 8003b18:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003b1a:	3101      	adds	r1, #1
 8003b1c:	910f      	str	r1, [sp, #60]	; 0x3c
 8003b1e:	e7de      	b.n	8003ade <_vfprintf_r+0x17fe>
 8003b20:	aa28      	add	r2, sp, #160	; 0xa0
 8003b22:	ab25      	add	r3, sp, #148	; 0x94
 8003b24:	e9cd 3200 	strd	r3, r2, [sp]
 8003b28:	2103      	movs	r1, #3
 8003b2a:	ab24      	add	r3, sp, #144	; 0x90
 8003b2c:	464a      	mov	r2, r9
 8003b2e:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003b32:	9803      	ldr	r0, [sp, #12]
 8003b34:	f000 fa5c 	bl	8003ff0 <_dtoa_r>
 8003b38:	464d      	mov	r5, r9
 8003b3a:	4607      	mov	r7, r0
 8003b3c:	eb00 0409 	add.w	r4, r0, r9
 8003b40:	783b      	ldrb	r3, [r7, #0]
 8003b42:	2b30      	cmp	r3, #48	; 0x30
 8003b44:	f000 80be 	beq.w	8003cc4 <_vfprintf_r+0x19e4>
 8003b48:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003b4a:	442c      	add	r4, r5
 8003b4c:	2200      	movs	r2, #0
 8003b4e:	2300      	movs	r3, #0
 8003b50:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003b54:	f7fd fa58 	bl	8001008 <__aeabi_dcmpeq>
 8003b58:	b108      	cbz	r0, 8003b5e <_vfprintf_r+0x187e>
 8003b5a:	4623      	mov	r3, r4
 8003b5c:	e413      	b.n	8003386 <_vfprintf_r+0x10a6>
 8003b5e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003b60:	42a3      	cmp	r3, r4
 8003b62:	f4bf ac10 	bcs.w	8003386 <_vfprintf_r+0x10a6>
 8003b66:	2130      	movs	r1, #48	; 0x30
 8003b68:	1c5a      	adds	r2, r3, #1
 8003b6a:	9228      	str	r2, [sp, #160]	; 0xa0
 8003b6c:	7019      	strb	r1, [r3, #0]
 8003b6e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003b70:	429c      	cmp	r4, r3
 8003b72:	d8f9      	bhi.n	8003b68 <_vfprintf_r+0x1888>
 8003b74:	e407      	b.n	8003386 <_vfprintf_r+0x10a6>
 8003b76:	197c      	adds	r4, r7, r5
 8003b78:	e7e8      	b.n	8003b4c <_vfprintf_r+0x186c>
 8003b7a:	f1b9 0f00 	cmp.w	r9, #0
 8003b7e:	f000 8092 	beq.w	8003ca6 <_vfprintf_r+0x19c6>
 8003b82:	900a      	str	r0, [sp, #40]	; 0x28
 8003b84:	e4ec      	b.n	8003560 <_vfprintf_r+0x1280>
 8003b86:	900a      	str	r0, [sp, #40]	; 0x28
 8003b88:	f04f 0906 	mov.w	r9, #6
 8003b8c:	e4e8      	b.n	8003560 <_vfprintf_r+0x1280>
 8003b8e:	4621      	mov	r1, r4
 8003b90:	461c      	mov	r4, r3
 8003b92:	460b      	mov	r3, r1
 8003b94:	3201      	adds	r2, #1
 8003b96:	442c      	add	r4, r5
 8003b98:	2a07      	cmp	r2, #7
 8003b9a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003b9e:	e9cb 3500 	strd	r3, r5, [fp]
 8003ba2:	f300 80a9 	bgt.w	8003cf8 <_vfprintf_r+0x1a18>
 8003ba6:	f10b 0b08 	add.w	fp, fp, #8
 8003baa:	e470      	b.n	800348e <_vfprintf_r+0x11ae>
 8003bac:	469a      	mov	sl, r3
 8003bae:	f7ff bb37 	b.w	8003220 <_vfprintf_r+0xf40>
 8003bb2:	2301      	movs	r3, #1
 8003bb4:	9324      	str	r3, [sp, #144]	; 0x90
 8003bb6:	4b65      	ldr	r3, [pc, #404]	; (8003d4c <_vfprintf_r+0x1a6c>)
 8003bb8:	9309      	str	r3, [sp, #36]	; 0x24
 8003bba:	e4f7      	b.n	80035ac <_vfprintf_r+0x12cc>
 8003bbc:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003bbe:	4413      	add	r3, r2
 8003bc0:	444b      	add	r3, r9
 8003bc2:	9309      	str	r3, [sp, #36]	; 0x24
 8003bc4:	2666      	movs	r6, #102	; 0x66
 8003bc6:	e6fb      	b.n	80039c0 <_vfprintf_r+0x16e0>
 8003bc8:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003bca:	9309      	str	r3, [sp, #36]	; 0x24
 8003bcc:	e694      	b.n	80038f8 <_vfprintf_r+0x1618>
 8003bce:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003bd2:	4664      	mov	r4, ip
 8003bd4:	4d5e      	ldr	r5, [pc, #376]	; (8003d50 <_vfprintf_r+0x1a70>)
 8003bd6:	e000      	b.n	8003bda <_vfprintf_r+0x18fa>
 8003bd8:	4614      	mov	r4, r2
 8003bda:	fba5 1203 	umull	r1, r2, r5, r3
 8003bde:	08d2      	lsrs	r2, r2, #3
 8003be0:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003be4:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003be8:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003bec:	4613      	mov	r3, r2
 8003bee:	2b09      	cmp	r3, #9
 8003bf0:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003bf4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003bf8:	dcee      	bgt.n	8003bd8 <_vfprintf_r+0x18f8>
 8003bfa:	3330      	adds	r3, #48	; 0x30
 8003bfc:	3c02      	subs	r4, #2
 8003bfe:	b2db      	uxtb	r3, r3
 8003c00:	45a4      	cmp	ip, r4
 8003c02:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003c06:	f240 8090 	bls.w	8003d2a <_vfprintf_r+0x1a4a>
 8003c0a:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003c0e:	4611      	mov	r1, r2
 8003c10:	e001      	b.n	8003c16 <_vfprintf_r+0x1936>
 8003c12:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003c16:	f804 3b01 	strb.w	r3, [r4], #1
 8003c1a:	458c      	cmp	ip, r1
 8003c1c:	d1f9      	bne.n	8003c12 <_vfprintf_r+0x1932>
 8003c1e:	ab2a      	add	r3, sp, #168	; 0xa8
 8003c20:	1a9b      	subs	r3, r3, r2
 8003c22:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003c26:	4413      	add	r3, r2
 8003c28:	f7ff bbe3 	b.w	80033f2 <_vfprintf_r+0x1112>
 8003c2c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003c2e:	4f49      	ldr	r7, [pc, #292]	; (8003d54 <_vfprintf_r+0x1a74>)
 8003c30:	2b00      	cmp	r3, #0
 8003c32:	bfb6      	itet	lt
 8003c34:	222d      	movlt	r2, #45	; 0x2d
 8003c36:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003c3a:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003c3e:	4b46      	ldr	r3, [pc, #280]	; (8003d58 <_vfprintf_r+0x1a78>)
 8003c40:	f7fe bf02 	b.w	8002a48 <_vfprintf_r+0x768>
 8003c44:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003c48:	f7ff b8c9 	b.w	8002dde <_vfprintf_r+0xafe>
 8003c4c:	aa28      	add	r2, sp, #160	; 0xa0
 8003c4e:	ab25      	add	r3, sp, #148	; 0x94
 8003c50:	e9cd 3200 	strd	r3, r2, [sp]
 8003c54:	2103      	movs	r1, #3
 8003c56:	ab24      	add	r3, sp, #144	; 0x90
 8003c58:	464a      	mov	r2, r9
 8003c5a:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c5e:	9803      	ldr	r0, [sp, #12]
 8003c60:	f000 f9c6 	bl	8003ff0 <_dtoa_r>
 8003c64:	464d      	mov	r5, r9
 8003c66:	4607      	mov	r7, r0
 8003c68:	2e46      	cmp	r6, #70	; 0x46
 8003c6a:	eb07 0405 	add.w	r4, r7, r5
 8003c6e:	f43f af67 	beq.w	8003b40 <_vfprintf_r+0x1860>
 8003c72:	e76b      	b.n	8003b4c <_vfprintf_r+0x186c>
 8003c74:	f1b9 0f00 	cmp.w	r9, #0
 8003c78:	d131      	bne.n	8003cde <_vfprintf_r+0x19fe>
 8003c7a:	07c5      	lsls	r5, r0, #31
 8003c7c:	d42f      	bmi.n	8003cde <_vfprintf_r+0x19fe>
 8003c7e:	2301      	movs	r3, #1
 8003c80:	9304      	str	r3, [sp, #16]
 8003c82:	9309      	str	r3, [sp, #36]	; 0x24
 8003c84:	2666      	movs	r6, #102	; 0x66
 8003c86:	e642      	b.n	800390e <_vfprintf_r+0x162e>
 8003c88:	07c3      	lsls	r3, r0, #31
 8003c8a:	f57f abbf 	bpl.w	800340c <_vfprintf_r+0x112c>
 8003c8e:	f7ff bbb9 	b.w	8003404 <_vfprintf_r+0x1124>
 8003c92:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003c94:	f1c3 0301 	rsb	r3, r3, #1
 8003c98:	441a      	add	r2, r3
 8003c9a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003c9e:	9209      	str	r2, [sp, #36]	; 0x24
 8003ca0:	9304      	str	r3, [sp, #16]
 8003ca2:	2667      	movs	r6, #103	; 0x67
 8003ca4:	e633      	b.n	800390e <_vfprintf_r+0x162e>
 8003ca6:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003caa:	f04f 0901 	mov.w	r9, #1
 8003cae:	e457      	b.n	8003560 <_vfprintf_r+0x1280>
 8003cb0:	465a      	mov	r2, fp
 8003cb2:	e511      	b.n	80036d8 <_vfprintf_r+0x13f8>
 8003cb4:	2e47      	cmp	r6, #71	; 0x47
 8003cb6:	f47f af5e 	bne.w	8003b76 <_vfprintf_r+0x1896>
 8003cba:	f018 0f01 	tst.w	r8, #1
 8003cbe:	f43f ab61 	beq.w	8003384 <_vfprintf_r+0x10a4>
 8003cc2:	e7d1      	b.n	8003c68 <_vfprintf_r+0x1988>
 8003cc4:	2200      	movs	r2, #0
 8003cc6:	2300      	movs	r3, #0
 8003cc8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003ccc:	f7fd f99c 	bl	8001008 <__aeabi_dcmpeq>
 8003cd0:	2800      	cmp	r0, #0
 8003cd2:	f47f af39 	bne.w	8003b48 <_vfprintf_r+0x1868>
 8003cd6:	f1c5 0501 	rsb	r5, r5, #1
 8003cda:	9524      	str	r5, [sp, #144]	; 0x90
 8003cdc:	e735      	b.n	8003b4a <_vfprintf_r+0x186a>
 8003cde:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003ce0:	3301      	adds	r3, #1
 8003ce2:	444b      	add	r3, r9
 8003ce4:	9309      	str	r3, [sp, #36]	; 0x24
 8003ce6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003cea:	9304      	str	r3, [sp, #16]
 8003cec:	2666      	movs	r6, #102	; 0x66
 8003cee:	e60e      	b.n	800390e <_vfprintf_r+0x162e>
 8003cf0:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003cf4:	f7ff bb7a 	b.w	80033ec <_vfprintf_r+0x110c>
 8003cf8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cfa:	9907      	ldr	r1, [sp, #28]
 8003cfc:	9803      	ldr	r0, [sp, #12]
 8003cfe:	f002 fe1d 	bl	800693c <__sprint_r>
 8003d02:	2800      	cmp	r0, #0
 8003d04:	f47f a864 	bne.w	8002dd0 <_vfprintf_r+0xaf0>
 8003d08:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003d0c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d10:	f7ff bbbd 	b.w	800348e <_vfprintf_r+0x11ae>
 8003d14:	9908      	ldr	r1, [sp, #32]
 8003d16:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003d1a:	680b      	ldr	r3, [r1, #0]
 8003d1c:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003d20:	1d0b      	adds	r3, r1, #4
 8003d22:	4692      	mov	sl, r2
 8003d24:	9308      	str	r3, [sp, #32]
 8003d26:	f7fe bb59 	b.w	80023dc <_vfprintf_r+0xfc>
 8003d2a:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003d2e:	f7ff bb60 	b.w	80033f2 <_vfprintf_r+0x1112>
 8003d32:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003d36:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003d3a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003d3e:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003d42:	f7ff b84c 	b.w	8002dde <_vfprintf_r+0xafe>
 8003d46:	bf00      	nop
 8003d48:	08007034 	.word	0x08007034
 8003d4c:	08007004 	.word	0x08007004
 8003d50:	cccccccd 	.word	0xcccccccd
 8003d54:	08006fec 	.word	0x08006fec
 8003d58:	08006fe8 	.word	0x08006fe8

08003d5c <__sbprintf>:
 8003d5c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003d60:	460c      	mov	r4, r1
 8003d62:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003d66:	8989      	ldrh	r1, [r1, #12]
 8003d68:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003d6a:	89e5      	ldrh	r5, [r4, #14]
 8003d6c:	9619      	str	r6, [sp, #100]	; 0x64
 8003d6e:	f021 0102 	bic.w	r1, r1, #2
 8003d72:	4606      	mov	r6, r0
 8003d74:	69e0      	ldr	r0, [r4, #28]
 8003d76:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003d7a:	4617      	mov	r7, r2
 8003d7c:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003d80:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003d82:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003d86:	4698      	mov	r8, r3
 8003d88:	ad1a      	add	r5, sp, #104	; 0x68
 8003d8a:	2300      	movs	r3, #0
 8003d8c:	9007      	str	r0, [sp, #28]
 8003d8e:	a816      	add	r0, sp, #88	; 0x58
 8003d90:	9209      	str	r2, [sp, #36]	; 0x24
 8003d92:	9306      	str	r3, [sp, #24]
 8003d94:	9500      	str	r5, [sp, #0]
 8003d96:	9504      	str	r5, [sp, #16]
 8003d98:	9102      	str	r1, [sp, #8]
 8003d9a:	9105      	str	r1, [sp, #20]
 8003d9c:	f001 fc8a 	bl	80056b4 <__retarget_lock_init_recursive>
 8003da0:	4643      	mov	r3, r8
 8003da2:	463a      	mov	r2, r7
 8003da4:	4669      	mov	r1, sp
 8003da6:	4630      	mov	r0, r6
 8003da8:	f7fe fa9a 	bl	80022e0 <_vfprintf_r>
 8003dac:	1e05      	subs	r5, r0, #0
 8003dae:	db07      	blt.n	8003dc0 <__sbprintf+0x64>
 8003db0:	4630      	mov	r0, r6
 8003db2:	4669      	mov	r1, sp
 8003db4:	f001 f8d6 	bl	8004f64 <_fflush_r>
 8003db8:	2800      	cmp	r0, #0
 8003dba:	bf18      	it	ne
 8003dbc:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003dc0:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003dc4:	065b      	lsls	r3, r3, #25
 8003dc6:	d503      	bpl.n	8003dd0 <__sbprintf+0x74>
 8003dc8:	89a3      	ldrh	r3, [r4, #12]
 8003dca:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003dce:	81a3      	strh	r3, [r4, #12]
 8003dd0:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003dd2:	f001 fc71 	bl	80056b8 <__retarget_lock_close_recursive>
 8003dd6:	4628      	mov	r0, r5
 8003dd8:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003ddc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003de0 <__swsetup_r>:
 8003de0:	b538      	push	{r3, r4, r5, lr}
 8003de2:	4b31      	ldr	r3, [pc, #196]	; (8003ea8 <__swsetup_r+0xc8>)
 8003de4:	681b      	ldr	r3, [r3, #0]
 8003de6:	4605      	mov	r5, r0
 8003de8:	460c      	mov	r4, r1
 8003dea:	b113      	cbz	r3, 8003df2 <__swsetup_r+0x12>
 8003dec:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003dee:	2a00      	cmp	r2, #0
 8003df0:	d03a      	beq.n	8003e68 <__swsetup_r+0x88>
 8003df2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003df6:	b293      	uxth	r3, r2
 8003df8:	0718      	lsls	r0, r3, #28
 8003dfa:	d50c      	bpl.n	8003e16 <__swsetup_r+0x36>
 8003dfc:	6920      	ldr	r0, [r4, #16]
 8003dfe:	b1a8      	cbz	r0, 8003e2c <__swsetup_r+0x4c>
 8003e00:	f013 0201 	ands.w	r2, r3, #1
 8003e04:	d020      	beq.n	8003e48 <__swsetup_r+0x68>
 8003e06:	6963      	ldr	r3, [r4, #20]
 8003e08:	2200      	movs	r2, #0
 8003e0a:	425b      	negs	r3, r3
 8003e0c:	61a3      	str	r3, [r4, #24]
 8003e0e:	60a2      	str	r2, [r4, #8]
 8003e10:	b300      	cbz	r0, 8003e54 <__swsetup_r+0x74>
 8003e12:	2000      	movs	r0, #0
 8003e14:	bd38      	pop	{r3, r4, r5, pc}
 8003e16:	06d9      	lsls	r1, r3, #27
 8003e18:	d53e      	bpl.n	8003e98 <__swsetup_r+0xb8>
 8003e1a:	0758      	lsls	r0, r3, #29
 8003e1c:	d428      	bmi.n	8003e70 <__swsetup_r+0x90>
 8003e1e:	6920      	ldr	r0, [r4, #16]
 8003e20:	f042 0308 	orr.w	r3, r2, #8
 8003e24:	81a3      	strh	r3, [r4, #12]
 8003e26:	b29b      	uxth	r3, r3
 8003e28:	2800      	cmp	r0, #0
 8003e2a:	d1e9      	bne.n	8003e00 <__swsetup_r+0x20>
 8003e2c:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003e30:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003e34:	d0e4      	beq.n	8003e00 <__swsetup_r+0x20>
 8003e36:	4628      	mov	r0, r5
 8003e38:	4621      	mov	r1, r4
 8003e3a:	f001 fc71 	bl	8005720 <__smakebuf_r>
 8003e3e:	89a3      	ldrh	r3, [r4, #12]
 8003e40:	6920      	ldr	r0, [r4, #16]
 8003e42:	f013 0201 	ands.w	r2, r3, #1
 8003e46:	d1de      	bne.n	8003e06 <__swsetup_r+0x26>
 8003e48:	0799      	lsls	r1, r3, #30
 8003e4a:	bf58      	it	pl
 8003e4c:	6962      	ldrpl	r2, [r4, #20]
 8003e4e:	60a2      	str	r2, [r4, #8]
 8003e50:	2800      	cmp	r0, #0
 8003e52:	d1de      	bne.n	8003e12 <__swsetup_r+0x32>
 8003e54:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003e58:	061a      	lsls	r2, r3, #24
 8003e5a:	d5db      	bpl.n	8003e14 <__swsetup_r+0x34>
 8003e5c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003e60:	81a3      	strh	r3, [r4, #12]
 8003e62:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003e66:	bd38      	pop	{r3, r4, r5, pc}
 8003e68:	4618      	mov	r0, r3
 8003e6a:	f001 f8d7 	bl	800501c <__sinit>
 8003e6e:	e7c0      	b.n	8003df2 <__swsetup_r+0x12>
 8003e70:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8003e72:	b151      	cbz	r1, 8003e8a <__swsetup_r+0xaa>
 8003e74:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8003e78:	4299      	cmp	r1, r3
 8003e7a:	d004      	beq.n	8003e86 <__swsetup_r+0xa6>
 8003e7c:	4628      	mov	r0, r5
 8003e7e:	f001 f96f 	bl	8005160 <_free_r>
 8003e82:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003e86:	2300      	movs	r3, #0
 8003e88:	6323      	str	r3, [r4, #48]	; 0x30
 8003e8a:	2300      	movs	r3, #0
 8003e8c:	6920      	ldr	r0, [r4, #16]
 8003e8e:	6063      	str	r3, [r4, #4]
 8003e90:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8003e94:	6020      	str	r0, [r4, #0]
 8003e96:	e7c3      	b.n	8003e20 <__swsetup_r+0x40>
 8003e98:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8003e9c:	2309      	movs	r3, #9
 8003e9e:	602b      	str	r3, [r5, #0]
 8003ea0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003ea4:	81a2      	strh	r2, [r4, #12]
 8003ea6:	bd38      	pop	{r3, r4, r5, pc}
 8003ea8:	20000018 	.word	0x20000018

08003eac <register_fini>:
 8003eac:	4b02      	ldr	r3, [pc, #8]	; (8003eb8 <register_fini+0xc>)
 8003eae:	b113      	cbz	r3, 8003eb6 <register_fini+0xa>
 8003eb0:	4802      	ldr	r0, [pc, #8]	; (8003ebc <register_fini+0x10>)
 8003eb2:	f000 b805 	b.w	8003ec0 <atexit>
 8003eb6:	4770      	bx	lr
 8003eb8:	00000000 	.word	0x00000000
 8003ebc:	0800508d 	.word	0x0800508d

08003ec0 <atexit>:
 8003ec0:	2300      	movs	r3, #0
 8003ec2:	4601      	mov	r1, r0
 8003ec4:	461a      	mov	r2, r3
 8003ec6:	4618      	mov	r0, r3
 8003ec8:	f002 bd58 	b.w	800697c <__register_exitproc>

08003ecc <quorem>:
 8003ecc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003ed0:	6903      	ldr	r3, [r0, #16]
 8003ed2:	690f      	ldr	r7, [r1, #16]
 8003ed4:	42bb      	cmp	r3, r7
 8003ed6:	b083      	sub	sp, #12
 8003ed8:	f2c0 8086 	blt.w	8003fe8 <quorem+0x11c>
 8003edc:	3f01      	subs	r7, #1
 8003ede:	f101 0914 	add.w	r9, r1, #20
 8003ee2:	f100 0a14 	add.w	sl, r0, #20
 8003ee6:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8003eea:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8003eee:	00bc      	lsls	r4, r7, #2
 8003ef0:	3201      	adds	r2, #1
 8003ef2:	fbb3 f8f2 	udiv	r8, r3, r2
 8003ef6:	eb0a 0304 	add.w	r3, sl, r4
 8003efa:	9400      	str	r4, [sp, #0]
 8003efc:	eb09 0b04 	add.w	fp, r9, r4
 8003f00:	9301      	str	r3, [sp, #4]
 8003f02:	f1b8 0f00 	cmp.w	r8, #0
 8003f06:	d038      	beq.n	8003f7a <quorem+0xae>
 8003f08:	2500      	movs	r5, #0
 8003f0a:	462e      	mov	r6, r5
 8003f0c:	46ce      	mov	lr, r9
 8003f0e:	46d4      	mov	ip, sl
 8003f10:	f85e 4b04 	ldr.w	r4, [lr], #4
 8003f14:	f8dc 3000 	ldr.w	r3, [ip]
 8003f18:	b2a2      	uxth	r2, r4
 8003f1a:	fb08 5502 	mla	r5, r8, r2, r5
 8003f1e:	0c22      	lsrs	r2, r4, #16
 8003f20:	0c2c      	lsrs	r4, r5, #16
 8003f22:	fb08 4202 	mla	r2, r8, r2, r4
 8003f26:	b2ad      	uxth	r5, r5
 8003f28:	1b75      	subs	r5, r6, r5
 8003f2a:	b296      	uxth	r6, r2
 8003f2c:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8003f30:	fa15 f383 	uxtah	r3, r5, r3
 8003f34:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8003f38:	b29b      	uxth	r3, r3
 8003f3a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8003f3e:	45f3      	cmp	fp, lr
 8003f40:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8003f44:	f84c 3b04 	str.w	r3, [ip], #4
 8003f48:	ea4f 4626 	mov.w	r6, r6, asr #16
 8003f4c:	d2e0      	bcs.n	8003f10 <quorem+0x44>
 8003f4e:	9b00      	ldr	r3, [sp, #0]
 8003f50:	f85a 3003 	ldr.w	r3, [sl, r3]
 8003f54:	b98b      	cbnz	r3, 8003f7a <quorem+0xae>
 8003f56:	9a01      	ldr	r2, [sp, #4]
 8003f58:	1f13      	subs	r3, r2, #4
 8003f5a:	459a      	cmp	sl, r3
 8003f5c:	d20c      	bcs.n	8003f78 <quorem+0xac>
 8003f5e:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8003f62:	b94b      	cbnz	r3, 8003f78 <quorem+0xac>
 8003f64:	f1a2 0308 	sub.w	r3, r2, #8
 8003f68:	e002      	b.n	8003f70 <quorem+0xa4>
 8003f6a:	681a      	ldr	r2, [r3, #0]
 8003f6c:	3b04      	subs	r3, #4
 8003f6e:	b91a      	cbnz	r2, 8003f78 <quorem+0xac>
 8003f70:	459a      	cmp	sl, r3
 8003f72:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8003f76:	d3f8      	bcc.n	8003f6a <quorem+0x9e>
 8003f78:	6107      	str	r7, [r0, #16]
 8003f7a:	4604      	mov	r4, r0
 8003f7c:	f002 f944 	bl	8006208 <__mcmp>
 8003f80:	2800      	cmp	r0, #0
 8003f82:	db2d      	blt.n	8003fe0 <quorem+0x114>
 8003f84:	f108 0801 	add.w	r8, r8, #1
 8003f88:	4655      	mov	r5, sl
 8003f8a:	2300      	movs	r3, #0
 8003f8c:	f859 1b04 	ldr.w	r1, [r9], #4
 8003f90:	6828      	ldr	r0, [r5, #0]
 8003f92:	b28a      	uxth	r2, r1
 8003f94:	1a9a      	subs	r2, r3, r2
 8003f96:	0c0b      	lsrs	r3, r1, #16
 8003f98:	fa12 f280 	uxtah	r2, r2, r0
 8003f9c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8003fa0:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8003fa4:	b292      	uxth	r2, r2
 8003fa6:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8003faa:	45cb      	cmp	fp, r9
 8003fac:	f845 2b04 	str.w	r2, [r5], #4
 8003fb0:	ea4f 4323 	mov.w	r3, r3, asr #16
 8003fb4:	d2ea      	bcs.n	8003f8c <quorem+0xc0>
 8003fb6:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8003fba:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8003fbe:	b97a      	cbnz	r2, 8003fe0 <quorem+0x114>
 8003fc0:	1f1a      	subs	r2, r3, #4
 8003fc2:	4592      	cmp	sl, r2
 8003fc4:	d20b      	bcs.n	8003fde <quorem+0x112>
 8003fc6:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8003fca:	b942      	cbnz	r2, 8003fde <quorem+0x112>
 8003fcc:	3b08      	subs	r3, #8
 8003fce:	e002      	b.n	8003fd6 <quorem+0x10a>
 8003fd0:	681a      	ldr	r2, [r3, #0]
 8003fd2:	3b04      	subs	r3, #4
 8003fd4:	b91a      	cbnz	r2, 8003fde <quorem+0x112>
 8003fd6:	459a      	cmp	sl, r3
 8003fd8:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8003fdc:	d3f8      	bcc.n	8003fd0 <quorem+0x104>
 8003fde:	6127      	str	r7, [r4, #16]
 8003fe0:	4640      	mov	r0, r8
 8003fe2:	b003      	add	sp, #12
 8003fe4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003fe8:	2000      	movs	r0, #0
 8003fea:	b003      	add	sp, #12
 8003fec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08003ff0 <_dtoa_r>:
 8003ff0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003ff4:	ec55 4b10 	vmov	r4, r5, d0
 8003ff8:	b09b      	sub	sp, #108	; 0x6c
 8003ffa:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8003ffc:	9102      	str	r1, [sp, #8]
 8003ffe:	4681      	mov	r9, r0
 8004000:	9207      	str	r2, [sp, #28]
 8004002:	9305      	str	r3, [sp, #20]
 8004004:	e9cd 4500 	strd	r4, r5, [sp]
 8004008:	b156      	cbz	r6, 8004020 <_dtoa_r+0x30>
 800400a:	6c42      	ldr	r2, [r0, #68]	; 0x44
 800400c:	6072      	str	r2, [r6, #4]
 800400e:	2301      	movs	r3, #1
 8004010:	4093      	lsls	r3, r2
 8004012:	60b3      	str	r3, [r6, #8]
 8004014:	4631      	mov	r1, r6
 8004016:	f001 ff07 	bl	8005e28 <_Bfree>
 800401a:	2300      	movs	r3, #0
 800401c:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004020:	f1b5 0800 	subs.w	r8, r5, #0
 8004024:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004026:	bfb4      	ite	lt
 8004028:	2301      	movlt	r3, #1
 800402a:	2300      	movge	r3, #0
 800402c:	6013      	str	r3, [r2, #0]
 800402e:	4b76      	ldr	r3, [pc, #472]	; (8004208 <_dtoa_r+0x218>)
 8004030:	bfbc      	itt	lt
 8004032:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8004036:	f8cd 8004 	strlt.w	r8, [sp, #4]
 800403a:	ea33 0308 	bics.w	r3, r3, r8
 800403e:	f000 80a6 	beq.w	800418e <_dtoa_r+0x19e>
 8004042:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004046:	2200      	movs	r2, #0
 8004048:	2300      	movs	r3, #0
 800404a:	4630      	mov	r0, r6
 800404c:	4639      	mov	r1, r7
 800404e:	f7fc ffdb 	bl	8001008 <__aeabi_dcmpeq>
 8004052:	4605      	mov	r5, r0
 8004054:	b178      	cbz	r0, 8004076 <_dtoa_r+0x86>
 8004056:	9a05      	ldr	r2, [sp, #20]
 8004058:	2301      	movs	r3, #1
 800405a:	6013      	str	r3, [r2, #0]
 800405c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800405e:	2b00      	cmp	r3, #0
 8004060:	f000 80c0 	beq.w	80041e4 <_dtoa_r+0x1f4>
 8004064:	4b69      	ldr	r3, [pc, #420]	; (800420c <_dtoa_r+0x21c>)
 8004066:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004068:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 800406c:	6013      	str	r3, [r2, #0]
 800406e:	4658      	mov	r0, fp
 8004070:	b01b      	add	sp, #108	; 0x6c
 8004072:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004076:	aa18      	add	r2, sp, #96	; 0x60
 8004078:	a919      	add	r1, sp, #100	; 0x64
 800407a:	ec47 6b10 	vmov	d0, r6, r7
 800407e:	4648      	mov	r0, r9
 8004080:	f002 f954 	bl	800632c <__d2b>
 8004084:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004088:	4682      	mov	sl, r0
 800408a:	f040 80a0 	bne.w	80041ce <_dtoa_r+0x1de>
 800408e:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004092:	442c      	add	r4, r5
 8004094:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004098:	2b20      	cmp	r3, #32
 800409a:	f340 842c 	ble.w	80048f6 <_dtoa_r+0x906>
 800409e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80040a2:	fa08 f803 	lsl.w	r8, r8, r3
 80040a6:	9b00      	ldr	r3, [sp, #0]
 80040a8:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80040ac:	fa23 f000 	lsr.w	r0, r3, r0
 80040b0:	ea48 0000 	orr.w	r0, r8, r0
 80040b4:	f7fc fcc6 	bl	8000a44 <__aeabi_ui2d>
 80040b8:	2301      	movs	r3, #1
 80040ba:	4606      	mov	r6, r0
 80040bc:	3c01      	subs	r4, #1
 80040be:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80040c2:	930f      	str	r3, [sp, #60]	; 0x3c
 80040c4:	4630      	mov	r0, r6
 80040c6:	4639      	mov	r1, r7
 80040c8:	2200      	movs	r2, #0
 80040ca:	4b51      	ldr	r3, [pc, #324]	; (8004210 <_dtoa_r+0x220>)
 80040cc:	f7fc fb7c 	bl	80007c8 <__aeabi_dsub>
 80040d0:	a347      	add	r3, pc, #284	; (adr r3, 80041f0 <_dtoa_r+0x200>)
 80040d2:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040d6:	f7fc fd2f 	bl	8000b38 <__aeabi_dmul>
 80040da:	a347      	add	r3, pc, #284	; (adr r3, 80041f8 <_dtoa_r+0x208>)
 80040dc:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040e0:	f7fc fb74 	bl	80007cc <__adddf3>
 80040e4:	4606      	mov	r6, r0
 80040e6:	4620      	mov	r0, r4
 80040e8:	460f      	mov	r7, r1
 80040ea:	f7fc fcbb 	bl	8000a64 <__aeabi_i2d>
 80040ee:	a344      	add	r3, pc, #272	; (adr r3, 8004200 <_dtoa_r+0x210>)
 80040f0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040f4:	f7fc fd20 	bl	8000b38 <__aeabi_dmul>
 80040f8:	4602      	mov	r2, r0
 80040fa:	460b      	mov	r3, r1
 80040fc:	4630      	mov	r0, r6
 80040fe:	4639      	mov	r1, r7
 8004100:	f7fc fb64 	bl	80007cc <__adddf3>
 8004104:	4606      	mov	r6, r0
 8004106:	460f      	mov	r7, r1
 8004108:	f7fc ffc6 	bl	8001098 <__aeabi_d2iz>
 800410c:	2200      	movs	r2, #0
 800410e:	9006      	str	r0, [sp, #24]
 8004110:	2300      	movs	r3, #0
 8004112:	4630      	mov	r0, r6
 8004114:	4639      	mov	r1, r7
 8004116:	f7fc ff81 	bl	800101c <__aeabi_dcmplt>
 800411a:	2800      	cmp	r0, #0
 800411c:	f040 8273 	bne.w	8004606 <_dtoa_r+0x616>
 8004120:	9e06      	ldr	r6, [sp, #24]
 8004122:	2e16      	cmp	r6, #22
 8004124:	f200 825d 	bhi.w	80045e2 <_dtoa_r+0x5f2>
 8004128:	4b3a      	ldr	r3, [pc, #232]	; (8004214 <_dtoa_r+0x224>)
 800412a:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 800412e:	e9d3 0100 	ldrd	r0, r1, [r3]
 8004132:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004136:	f7fc ff8f 	bl	8001058 <__aeabi_dcmpgt>
 800413a:	2800      	cmp	r0, #0
 800413c:	f000 83d7 	beq.w	80048ee <_dtoa_r+0x8fe>
 8004140:	1e73      	subs	r3, r6, #1
 8004142:	9306      	str	r3, [sp, #24]
 8004144:	2300      	movs	r3, #0
 8004146:	930d      	str	r3, [sp, #52]	; 0x34
 8004148:	1b2c      	subs	r4, r5, r4
 800414a:	f1b4 0801 	subs.w	r8, r4, #1
 800414e:	f100 8254 	bmi.w	80045fa <_dtoa_r+0x60a>
 8004152:	2300      	movs	r3, #0
 8004154:	9308      	str	r3, [sp, #32]
 8004156:	9b06      	ldr	r3, [sp, #24]
 8004158:	2b00      	cmp	r3, #0
 800415a:	f2c0 8245 	blt.w	80045e8 <_dtoa_r+0x5f8>
 800415e:	4498      	add	r8, r3
 8004160:	930c      	str	r3, [sp, #48]	; 0x30
 8004162:	2300      	movs	r3, #0
 8004164:	930b      	str	r3, [sp, #44]	; 0x2c
 8004166:	9b02      	ldr	r3, [sp, #8]
 8004168:	2b09      	cmp	r3, #9
 800416a:	d85b      	bhi.n	8004224 <_dtoa_r+0x234>
 800416c:	2b05      	cmp	r3, #5
 800416e:	f340 83c0 	ble.w	80048f2 <_dtoa_r+0x902>
 8004172:	3b04      	subs	r3, #4
 8004174:	9302      	str	r3, [sp, #8]
 8004176:	2500      	movs	r5, #0
 8004178:	9b02      	ldr	r3, [sp, #8]
 800417a:	3b02      	subs	r3, #2
 800417c:	2b03      	cmp	r3, #3
 800417e:	f200 8498 	bhi.w	8004ab2 <_dtoa_r+0xac2>
 8004182:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004186:	03df      	.short	0x03df
 8004188:	03e803bf 	.word	0x03e803bf
 800418c:	04f5      	.short	0x04f5
 800418e:	9a05      	ldr	r2, [sp, #20]
 8004190:	f242 730f 	movw	r3, #9999	; 0x270f
 8004194:	6013      	str	r3, [r2, #0]
 8004196:	9b00      	ldr	r3, [sp, #0]
 8004198:	b983      	cbnz	r3, 80041bc <_dtoa_r+0x1cc>
 800419a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 800419e:	b96b      	cbnz	r3, 80041bc <_dtoa_r+0x1cc>
 80041a0:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80041a2:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004218 <_dtoa_r+0x228>
 80041a6:	2b00      	cmp	r3, #0
 80041a8:	f43f af61 	beq.w	800406e <_dtoa_r+0x7e>
 80041ac:	f10b 0308 	add.w	r3, fp, #8
 80041b0:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80041b2:	4658      	mov	r0, fp
 80041b4:	6013      	str	r3, [r2, #0]
 80041b6:	b01b      	add	sp, #108	; 0x6c
 80041b8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80041bc:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80041be:	f8df b05c 	ldr.w	fp, [pc, #92]	; 800421c <_dtoa_r+0x22c>
 80041c2:	2b00      	cmp	r3, #0
 80041c4:	f43f af53 	beq.w	800406e <_dtoa_r+0x7e>
 80041c8:	f10b 0303 	add.w	r3, fp, #3
 80041cc:	e7f0      	b.n	80041b0 <_dtoa_r+0x1c0>
 80041ce:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80041d2:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80041d6:	950f      	str	r5, [sp, #60]	; 0x3c
 80041d8:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 80041dc:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 80041e0:	9d18      	ldr	r5, [sp, #96]	; 0x60
 80041e2:	e76f      	b.n	80040c4 <_dtoa_r+0xd4>
 80041e4:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004220 <_dtoa_r+0x230>
 80041e8:	4658      	mov	r0, fp
 80041ea:	b01b      	add	sp, #108	; 0x6c
 80041ec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80041f0:	636f4361 	.word	0x636f4361
 80041f4:	3fd287a7 	.word	0x3fd287a7
 80041f8:	8b60c8b3 	.word	0x8b60c8b3
 80041fc:	3fc68a28 	.word	0x3fc68a28
 8004200:	509f79fb 	.word	0x509f79fb
 8004204:	3fd34413 	.word	0x3fd34413
 8004208:	7ff00000 	.word	0x7ff00000
 800420c:	08007021 	.word	0x08007021
 8004210:	3ff80000 	.word	0x3ff80000
 8004214:	08007080 	.word	0x08007080
 8004218:	08007044 	.word	0x08007044
 800421c:	08007050 	.word	0x08007050
 8004220:	08007020 	.word	0x08007020
 8004224:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004228:	2501      	movs	r5, #1
 800422a:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 800422e:	2300      	movs	r3, #0
 8004230:	9302      	str	r3, [sp, #8]
 8004232:	9307      	str	r3, [sp, #28]
 8004234:	2100      	movs	r1, #0
 8004236:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800423a:	940e      	str	r4, [sp, #56]	; 0x38
 800423c:	4648      	mov	r0, r9
 800423e:	f001 fdcd 	bl	8005ddc <_Balloc>
 8004242:	2c0e      	cmp	r4, #14
 8004244:	4683      	mov	fp, r0
 8004246:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800424a:	f200 80fb 	bhi.w	8004444 <_dtoa_r+0x454>
 800424e:	2d00      	cmp	r5, #0
 8004250:	f000 80f8 	beq.w	8004444 <_dtoa_r+0x454>
 8004254:	ed9d 7b00 	vldr	d7, [sp]
 8004258:	9906      	ldr	r1, [sp, #24]
 800425a:	2900      	cmp	r1, #0
 800425c:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004260:	f340 83e5 	ble.w	8004a2e <_dtoa_r+0xa3e>
 8004264:	4b9d      	ldr	r3, [pc, #628]	; (80044dc <_dtoa_r+0x4ec>)
 8004266:	f001 020f 	and.w	r2, r1, #15
 800426a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800426e:	ed93 7b00 	vldr	d7, [r3]
 8004272:	110c      	asrs	r4, r1, #4
 8004274:	06e2      	lsls	r2, r4, #27
 8004276:	ed8d 7b00 	vstr	d7, [sp]
 800427a:	f140 849e 	bpl.w	8004bba <_dtoa_r+0xbca>
 800427e:	4b98      	ldr	r3, [pc, #608]	; (80044e0 <_dtoa_r+0x4f0>)
 8004280:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004284:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004288:	f7fc fd80 	bl	8000d8c <__aeabi_ddiv>
 800428c:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004290:	f004 040f 	and.w	r4, r4, #15
 8004294:	2603      	movs	r6, #3
 8004296:	b17c      	cbz	r4, 80042b8 <_dtoa_r+0x2c8>
 8004298:	e9dd 0100 	ldrd	r0, r1, [sp]
 800429c:	4d90      	ldr	r5, [pc, #576]	; (80044e0 <_dtoa_r+0x4f0>)
 800429e:	07e3      	lsls	r3, r4, #31
 80042a0:	d504      	bpl.n	80042ac <_dtoa_r+0x2bc>
 80042a2:	e9d5 2300 	ldrd	r2, r3, [r5]
 80042a6:	f7fc fc47 	bl	8000b38 <__aeabi_dmul>
 80042aa:	3601      	adds	r6, #1
 80042ac:	1064      	asrs	r4, r4, #1
 80042ae:	f105 0508 	add.w	r5, r5, #8
 80042b2:	d1f4      	bne.n	800429e <_dtoa_r+0x2ae>
 80042b4:	e9cd 0100 	strd	r0, r1, [sp]
 80042b8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80042bc:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80042c0:	f7fc fd64 	bl	8000d8c <__aeabi_ddiv>
 80042c4:	e9cd 0100 	strd	r0, r1, [sp]
 80042c8:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80042ca:	b143      	cbz	r3, 80042de <_dtoa_r+0x2ee>
 80042cc:	2200      	movs	r2, #0
 80042ce:	4b85      	ldr	r3, [pc, #532]	; (80044e4 <_dtoa_r+0x4f4>)
 80042d0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80042d4:	f7fc fea2 	bl	800101c <__aeabi_dcmplt>
 80042d8:	2800      	cmp	r0, #0
 80042da:	f040 84ff 	bne.w	8004cdc <_dtoa_r+0xcec>
 80042de:	4630      	mov	r0, r6
 80042e0:	f7fc fbc0 	bl	8000a64 <__aeabi_i2d>
 80042e4:	e9dd 2300 	ldrd	r2, r3, [sp]
 80042e8:	f7fc fc26 	bl	8000b38 <__aeabi_dmul>
 80042ec:	4b7e      	ldr	r3, [pc, #504]	; (80044e8 <_dtoa_r+0x4f8>)
 80042ee:	2200      	movs	r2, #0
 80042f0:	f7fc fa6c 	bl	80007cc <__adddf3>
 80042f4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80042f6:	4606      	mov	r6, r0
 80042f8:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80042fc:	2b00      	cmp	r3, #0
 80042fe:	f000 841c 	beq.w	8004b3a <_dtoa_r+0xb4a>
 8004302:	9b06      	ldr	r3, [sp, #24]
 8004304:	9316      	str	r3, [sp, #88]	; 0x58
 8004306:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004308:	9312      	str	r3, [sp, #72]	; 0x48
 800430a:	e9dd 0100 	ldrd	r0, r1, [sp]
 800430e:	f7fc fec3 	bl	8001098 <__aeabi_d2iz>
 8004312:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004314:	4b71      	ldr	r3, [pc, #452]	; (80044dc <_dtoa_r+0x4ec>)
 8004316:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800431a:	ed13 7b02 	vldr	d7, [r3, #-8]
 800431e:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004322:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004326:	f7fc fb9d 	bl	8000a64 <__aeabi_i2d>
 800432a:	460b      	mov	r3, r1
 800432c:	4602      	mov	r2, r0
 800432e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004332:	e9cd 6700 	strd	r6, r7, [sp]
 8004336:	f7fc fa47 	bl	80007c8 <__aeabi_dsub>
 800433a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800433c:	b2ed      	uxtb	r5, r5
 800433e:	4606      	mov	r6, r0
 8004340:	460f      	mov	r7, r1
 8004342:	f10b 0401 	add.w	r4, fp, #1
 8004346:	2b00      	cmp	r3, #0
 8004348:	f000 8458 	beq.w	8004bfc <_dtoa_r+0xc0c>
 800434c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004350:	2000      	movs	r0, #0
 8004352:	4966      	ldr	r1, [pc, #408]	; (80044ec <_dtoa_r+0x4fc>)
 8004354:	f7fc fd1a 	bl	8000d8c <__aeabi_ddiv>
 8004358:	e9dd 2300 	ldrd	r2, r3, [sp]
 800435c:	f7fc fa34 	bl	80007c8 <__aeabi_dsub>
 8004360:	f88b 5000 	strb.w	r5, [fp]
 8004364:	4632      	mov	r2, r6
 8004366:	463b      	mov	r3, r7
 8004368:	e9cd 0100 	strd	r0, r1, [sp]
 800436c:	f7fc fe74 	bl	8001058 <__aeabi_dcmpgt>
 8004370:	2800      	cmp	r0, #0
 8004372:	f040 8502 	bne.w	8004d7a <_dtoa_r+0xd8a>
 8004376:	4632      	mov	r2, r6
 8004378:	463b      	mov	r3, r7
 800437a:	2000      	movs	r0, #0
 800437c:	4959      	ldr	r1, [pc, #356]	; (80044e4 <_dtoa_r+0x4f4>)
 800437e:	f7fc fa23 	bl	80007c8 <__aeabi_dsub>
 8004382:	4602      	mov	r2, r0
 8004384:	460b      	mov	r3, r1
 8004386:	e9dd 0100 	ldrd	r0, r1, [sp]
 800438a:	f7fc fe65 	bl	8001058 <__aeabi_dcmpgt>
 800438e:	2800      	cmp	r0, #0
 8004390:	f040 84fb 	bne.w	8004d8a <_dtoa_r+0xd9a>
 8004394:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004396:	2a01      	cmp	r2, #1
 8004398:	d050      	beq.n	800443c <_dtoa_r+0x44c>
 800439a:	445a      	add	r2, fp
 800439c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 80043a0:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 80043a4:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 80043a8:	4692      	mov	sl, r2
 80043aa:	46cb      	mov	fp, r9
 80043ac:	e9dd 8900 	ldrd	r8, r9, [sp]
 80043b0:	e00c      	b.n	80043cc <_dtoa_r+0x3dc>
 80043b2:	2000      	movs	r0, #0
 80043b4:	494b      	ldr	r1, [pc, #300]	; (80044e4 <_dtoa_r+0x4f4>)
 80043b6:	f7fc fa07 	bl	80007c8 <__aeabi_dsub>
 80043ba:	4642      	mov	r2, r8
 80043bc:	464b      	mov	r3, r9
 80043be:	f7fc fe2d 	bl	800101c <__aeabi_dcmplt>
 80043c2:	2800      	cmp	r0, #0
 80043c4:	f040 84dc 	bne.w	8004d80 <_dtoa_r+0xd90>
 80043c8:	4554      	cmp	r4, sl
 80043ca:	d030      	beq.n	800442e <_dtoa_r+0x43e>
 80043cc:	4640      	mov	r0, r8
 80043ce:	4649      	mov	r1, r9
 80043d0:	2200      	movs	r2, #0
 80043d2:	4b47      	ldr	r3, [pc, #284]	; (80044f0 <_dtoa_r+0x500>)
 80043d4:	f7fc fbb0 	bl	8000b38 <__aeabi_dmul>
 80043d8:	2200      	movs	r2, #0
 80043da:	4b45      	ldr	r3, [pc, #276]	; (80044f0 <_dtoa_r+0x500>)
 80043dc:	4680      	mov	r8, r0
 80043de:	4689      	mov	r9, r1
 80043e0:	4630      	mov	r0, r6
 80043e2:	4639      	mov	r1, r7
 80043e4:	f7fc fba8 	bl	8000b38 <__aeabi_dmul>
 80043e8:	460f      	mov	r7, r1
 80043ea:	4606      	mov	r6, r0
 80043ec:	f7fc fe54 	bl	8001098 <__aeabi_d2iz>
 80043f0:	4605      	mov	r5, r0
 80043f2:	f7fc fb37 	bl	8000a64 <__aeabi_i2d>
 80043f6:	4602      	mov	r2, r0
 80043f8:	460b      	mov	r3, r1
 80043fa:	4630      	mov	r0, r6
 80043fc:	4639      	mov	r1, r7
 80043fe:	f7fc f9e3 	bl	80007c8 <__aeabi_dsub>
 8004402:	3530      	adds	r5, #48	; 0x30
 8004404:	b2ed      	uxtb	r5, r5
 8004406:	4642      	mov	r2, r8
 8004408:	464b      	mov	r3, r9
 800440a:	f804 5b01 	strb.w	r5, [r4], #1
 800440e:	4606      	mov	r6, r0
 8004410:	460f      	mov	r7, r1
 8004412:	f7fc fe03 	bl	800101c <__aeabi_dcmplt>
 8004416:	4632      	mov	r2, r6
 8004418:	463b      	mov	r3, r7
 800441a:	2800      	cmp	r0, #0
 800441c:	d0c9      	beq.n	80043b2 <_dtoa_r+0x3c2>
 800441e:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004420:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004424:	9306      	str	r3, [sp, #24]
 8004426:	46d9      	mov	r9, fp
 8004428:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800442c:	e236      	b.n	800489c <_dtoa_r+0x8ac>
 800442e:	46d9      	mov	r9, fp
 8004430:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004434:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004438:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800443c:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004440:	e9cd 3400 	strd	r3, r4, [sp]
 8004444:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004446:	2b00      	cmp	r3, #0
 8004448:	f2c0 80ae 	blt.w	80045a8 <_dtoa_r+0x5b8>
 800444c:	9a06      	ldr	r2, [sp, #24]
 800444e:	2a0e      	cmp	r2, #14
 8004450:	f300 80aa 	bgt.w	80045a8 <_dtoa_r+0x5b8>
 8004454:	4b21      	ldr	r3, [pc, #132]	; (80044dc <_dtoa_r+0x4ec>)
 8004456:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800445a:	ed93 7b00 	vldr	d7, [r3]
 800445e:	9b07      	ldr	r3, [sp, #28]
 8004460:	2b00      	cmp	r3, #0
 8004462:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004466:	f2c0 82be 	blt.w	80049e6 <_dtoa_r+0x9f6>
 800446a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800446e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004472:	4630      	mov	r0, r6
 8004474:	4639      	mov	r1, r7
 8004476:	f7fc fc89 	bl	8000d8c <__aeabi_ddiv>
 800447a:	f7fc fe0d 	bl	8001098 <__aeabi_d2iz>
 800447e:	4605      	mov	r5, r0
 8004480:	f7fc faf0 	bl	8000a64 <__aeabi_i2d>
 8004484:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004488:	f7fc fb56 	bl	8000b38 <__aeabi_dmul>
 800448c:	460b      	mov	r3, r1
 800448e:	4602      	mov	r2, r0
 8004490:	4639      	mov	r1, r7
 8004492:	4630      	mov	r0, r6
 8004494:	f7fc f998 	bl	80007c8 <__aeabi_dsub>
 8004498:	f105 0330 	add.w	r3, r5, #48	; 0x30
 800449c:	f88b 3000 	strb.w	r3, [fp]
 80044a0:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80044a2:	2b01      	cmp	r3, #1
 80044a4:	4606      	mov	r6, r0
 80044a6:	460f      	mov	r7, r1
 80044a8:	f10b 0401 	add.w	r4, fp, #1
 80044ac:	d053      	beq.n	8004556 <_dtoa_r+0x566>
 80044ae:	2200      	movs	r2, #0
 80044b0:	4b0f      	ldr	r3, [pc, #60]	; (80044f0 <_dtoa_r+0x500>)
 80044b2:	f7fc fb41 	bl	8000b38 <__aeabi_dmul>
 80044b6:	2200      	movs	r2, #0
 80044b8:	2300      	movs	r3, #0
 80044ba:	4606      	mov	r6, r0
 80044bc:	460f      	mov	r7, r1
 80044be:	f7fc fda3 	bl	8001008 <__aeabi_dcmpeq>
 80044c2:	2800      	cmp	r0, #0
 80044c4:	f040 81ea 	bne.w	800489c <_dtoa_r+0x8ac>
 80044c8:	f8cd a000 	str.w	sl, [sp]
 80044cc:	f8cd 901c 	str.w	r9, [sp, #28]
 80044d0:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80044d4:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 80044d8:	e017      	b.n	800450a <_dtoa_r+0x51a>
 80044da:	bf00      	nop
 80044dc:	08007080 	.word	0x08007080
 80044e0:	08007058 	.word	0x08007058
 80044e4:	3ff00000 	.word	0x3ff00000
 80044e8:	401c0000 	.word	0x401c0000
 80044ec:	3fe00000 	.word	0x3fe00000
 80044f0:	40240000 	.word	0x40240000
 80044f4:	f7fc fb20 	bl	8000b38 <__aeabi_dmul>
 80044f8:	2200      	movs	r2, #0
 80044fa:	2300      	movs	r3, #0
 80044fc:	4606      	mov	r6, r0
 80044fe:	460f      	mov	r7, r1
 8004500:	f7fc fd82 	bl	8001008 <__aeabi_dcmpeq>
 8004504:	2800      	cmp	r0, #0
 8004506:	f040 833d 	bne.w	8004b84 <_dtoa_r+0xb94>
 800450a:	464a      	mov	r2, r9
 800450c:	4653      	mov	r3, sl
 800450e:	4630      	mov	r0, r6
 8004510:	4639      	mov	r1, r7
 8004512:	f7fc fc3b 	bl	8000d8c <__aeabi_ddiv>
 8004516:	f7fc fdbf 	bl	8001098 <__aeabi_d2iz>
 800451a:	4605      	mov	r5, r0
 800451c:	f7fc faa2 	bl	8000a64 <__aeabi_i2d>
 8004520:	464a      	mov	r2, r9
 8004522:	4653      	mov	r3, sl
 8004524:	f7fc fb08 	bl	8000b38 <__aeabi_dmul>
 8004528:	4602      	mov	r2, r0
 800452a:	460b      	mov	r3, r1
 800452c:	4630      	mov	r0, r6
 800452e:	4639      	mov	r1, r7
 8004530:	f7fc f94a 	bl	80007c8 <__aeabi_dsub>
 8004534:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004538:	f804 cb01 	strb.w	ip, [r4], #1
 800453c:	eba4 0c0b 	sub.w	ip, r4, fp
 8004540:	45e0      	cmp	r8, ip
 8004542:	4606      	mov	r6, r0
 8004544:	460f      	mov	r7, r1
 8004546:	f04f 0200 	mov.w	r2, #0
 800454a:	4bc1      	ldr	r3, [pc, #772]	; (8004850 <_dtoa_r+0x860>)
 800454c:	d1d2      	bne.n	80044f4 <_dtoa_r+0x504>
 800454e:	f8dd a000 	ldr.w	sl, [sp]
 8004552:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004556:	4632      	mov	r2, r6
 8004558:	463b      	mov	r3, r7
 800455a:	4630      	mov	r0, r6
 800455c:	4639      	mov	r1, r7
 800455e:	f7fc f935 	bl	80007cc <__adddf3>
 8004562:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004566:	4606      	mov	r6, r0
 8004568:	460f      	mov	r7, r1
 800456a:	f7fc fd75 	bl	8001058 <__aeabi_dcmpgt>
 800456e:	b958      	cbnz	r0, 8004588 <_dtoa_r+0x598>
 8004570:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004574:	4630      	mov	r0, r6
 8004576:	4639      	mov	r1, r7
 8004578:	f7fc fd46 	bl	8001008 <__aeabi_dcmpeq>
 800457c:	2800      	cmp	r0, #0
 800457e:	f000 818d 	beq.w	800489c <_dtoa_r+0x8ac>
 8004582:	07e9      	lsls	r1, r5, #31
 8004584:	f140 818a 	bpl.w	800489c <_dtoa_r+0x8ac>
 8004588:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800458c:	e005      	b.n	800459a <_dtoa_r+0x5aa>
 800458e:	459b      	cmp	fp, r3
 8004590:	f000 8373 	beq.w	8004c7a <_dtoa_r+0xc8a>
 8004594:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004598:	461c      	mov	r4, r3
 800459a:	2d39      	cmp	r5, #57	; 0x39
 800459c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80045a0:	d0f5      	beq.n	800458e <_dtoa_r+0x59e>
 80045a2:	3501      	adds	r5, #1
 80045a4:	701d      	strb	r5, [r3, #0]
 80045a6:	e179      	b.n	800489c <_dtoa_r+0x8ac>
 80045a8:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80045aa:	2a00      	cmp	r2, #0
 80045ac:	d03b      	beq.n	8004626 <_dtoa_r+0x636>
 80045ae:	9a02      	ldr	r2, [sp, #8]
 80045b0:	2a01      	cmp	r2, #1
 80045b2:	f340 820b 	ble.w	80049cc <_dtoa_r+0x9dc>
 80045b6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80045b8:	1e5f      	subs	r7, r3, #1
 80045ba:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80045bc:	42bb      	cmp	r3, r7
 80045be:	f2c0 82e6 	blt.w	8004b8e <_dtoa_r+0xb9e>
 80045c2:	1bdf      	subs	r7, r3, r7
 80045c4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80045c6:	2b00      	cmp	r3, #0
 80045c8:	f2c0 830b 	blt.w	8004be2 <_dtoa_r+0xbf2>
 80045cc:	9a08      	ldr	r2, [sp, #32]
 80045ce:	4614      	mov	r4, r2
 80045d0:	441a      	add	r2, r3
 80045d2:	4498      	add	r8, r3
 80045d4:	9208      	str	r2, [sp, #32]
 80045d6:	2101      	movs	r1, #1
 80045d8:	4648      	mov	r0, r9
 80045da:	f001 fcbf 	bl	8005f5c <__i2b>
 80045de:	4605      	mov	r5, r0
 80045e0:	e024      	b.n	800462c <_dtoa_r+0x63c>
 80045e2:	2301      	movs	r3, #1
 80045e4:	930d      	str	r3, [sp, #52]	; 0x34
 80045e6:	e5af      	b.n	8004148 <_dtoa_r+0x158>
 80045e8:	9a08      	ldr	r2, [sp, #32]
 80045ea:	9b06      	ldr	r3, [sp, #24]
 80045ec:	1ad2      	subs	r2, r2, r3
 80045ee:	425b      	negs	r3, r3
 80045f0:	930b      	str	r3, [sp, #44]	; 0x2c
 80045f2:	2300      	movs	r3, #0
 80045f4:	9208      	str	r2, [sp, #32]
 80045f6:	930c      	str	r3, [sp, #48]	; 0x30
 80045f8:	e5b5      	b.n	8004166 <_dtoa_r+0x176>
 80045fa:	f1c4 0301 	rsb	r3, r4, #1
 80045fe:	9308      	str	r3, [sp, #32]
 8004600:	f04f 0800 	mov.w	r8, #0
 8004604:	e5a7      	b.n	8004156 <_dtoa_r+0x166>
 8004606:	f8dd 8018 	ldr.w	r8, [sp, #24]
 800460a:	4640      	mov	r0, r8
 800460c:	f7fc fa2a 	bl	8000a64 <__aeabi_i2d>
 8004610:	4632      	mov	r2, r6
 8004612:	463b      	mov	r3, r7
 8004614:	f7fc fcf8 	bl	8001008 <__aeabi_dcmpeq>
 8004618:	2800      	cmp	r0, #0
 800461a:	f47f ad81 	bne.w	8004120 <_dtoa_r+0x130>
 800461e:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004622:	9306      	str	r3, [sp, #24]
 8004624:	e57c      	b.n	8004120 <_dtoa_r+0x130>
 8004626:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004628:	9c08      	ldr	r4, [sp, #32]
 800462a:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 800462c:	2c00      	cmp	r4, #0
 800462e:	dd0c      	ble.n	800464a <_dtoa_r+0x65a>
 8004630:	f1b8 0f00 	cmp.w	r8, #0
 8004634:	dd09      	ble.n	800464a <_dtoa_r+0x65a>
 8004636:	4544      	cmp	r4, r8
 8004638:	9a08      	ldr	r2, [sp, #32]
 800463a:	4623      	mov	r3, r4
 800463c:	bfa8      	it	ge
 800463e:	4643      	movge	r3, r8
 8004640:	1ad2      	subs	r2, r2, r3
 8004642:	9208      	str	r2, [sp, #32]
 8004644:	1ae4      	subs	r4, r4, r3
 8004646:	eba8 0803 	sub.w	r8, r8, r3
 800464a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800464c:	b16b      	cbz	r3, 800466a <_dtoa_r+0x67a>
 800464e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004650:	2a00      	cmp	r2, #0
 8004652:	f000 8290 	beq.w	8004b76 <_dtoa_r+0xb86>
 8004656:	1bde      	subs	r6, r3, r7
 8004658:	2f00      	cmp	r7, #0
 800465a:	f040 819b 	bne.w	8004994 <_dtoa_r+0x9a4>
 800465e:	4651      	mov	r1, sl
 8004660:	4632      	mov	r2, r6
 8004662:	4648      	mov	r0, r9
 8004664:	f001 fd2a 	bl	80060bc <__pow5mult>
 8004668:	4682      	mov	sl, r0
 800466a:	2101      	movs	r1, #1
 800466c:	4648      	mov	r0, r9
 800466e:	f001 fc75 	bl	8005f5c <__i2b>
 8004672:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004674:	4606      	mov	r6, r0
 8004676:	2a00      	cmp	r2, #0
 8004678:	f040 8125 	bne.w	80048c6 <_dtoa_r+0x8d6>
 800467c:	9b02      	ldr	r3, [sp, #8]
 800467e:	2b01      	cmp	r3, #1
 8004680:	f340 816c 	ble.w	800495c <_dtoa_r+0x96c>
 8004684:	2001      	movs	r0, #1
 8004686:	4440      	add	r0, r8
 8004688:	f010 001f 	ands.w	r0, r0, #31
 800468c:	f000 8119 	beq.w	80048c2 <_dtoa_r+0x8d2>
 8004690:	f1c0 0320 	rsb	r3, r0, #32
 8004694:	2b04      	cmp	r3, #4
 8004696:	f340 83ac 	ble.w	8004df2 <_dtoa_r+0xe02>
 800469a:	f1c0 001c 	rsb	r0, r0, #28
 800469e:	9b08      	ldr	r3, [sp, #32]
 80046a0:	4403      	add	r3, r0
 80046a2:	9308      	str	r3, [sp, #32]
 80046a4:	4404      	add	r4, r0
 80046a6:	4480      	add	r8, r0
 80046a8:	9b08      	ldr	r3, [sp, #32]
 80046aa:	2b00      	cmp	r3, #0
 80046ac:	dd05      	ble.n	80046ba <_dtoa_r+0x6ca>
 80046ae:	4651      	mov	r1, sl
 80046b0:	461a      	mov	r2, r3
 80046b2:	4648      	mov	r0, r9
 80046b4:	f001 fd52 	bl	800615c <__lshift>
 80046b8:	4682      	mov	sl, r0
 80046ba:	f1b8 0f00 	cmp.w	r8, #0
 80046be:	dd05      	ble.n	80046cc <_dtoa_r+0x6dc>
 80046c0:	4631      	mov	r1, r6
 80046c2:	4642      	mov	r2, r8
 80046c4:	4648      	mov	r0, r9
 80046c6:	f001 fd49 	bl	800615c <__lshift>
 80046ca:	4606      	mov	r6, r0
 80046cc:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80046ce:	2b00      	cmp	r3, #0
 80046d0:	d177      	bne.n	80047c2 <_dtoa_r+0x7d2>
 80046d2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80046d4:	2b00      	cmp	r3, #0
 80046d6:	f340 8209 	ble.w	8004aec <_dtoa_r+0xafc>
 80046da:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80046dc:	2b00      	cmp	r3, #0
 80046de:	f000 8089 	beq.w	80047f4 <_dtoa_r+0x804>
 80046e2:	2c00      	cmp	r4, #0
 80046e4:	f300 816b 	bgt.w	80049be <_dtoa_r+0x9ce>
 80046e8:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80046ea:	2b00      	cmp	r3, #0
 80046ec:	f040 81cd 	bne.w	8004a8a <_dtoa_r+0xa9a>
 80046f0:	46a8      	mov	r8, r5
 80046f2:	9a00      	ldr	r2, [sp, #0]
 80046f4:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 80046f8:	f002 0201 	and.w	r2, r2, #1
 80046fc:	920a      	str	r2, [sp, #40]	; 0x28
 80046fe:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004700:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004704:	441a      	add	r2, r3
 8004706:	465f      	mov	r7, fp
 8004708:	9209      	str	r2, [sp, #36]	; 0x24
 800470a:	46b3      	mov	fp, r6
 800470c:	4659      	mov	r1, fp
 800470e:	4650      	mov	r0, sl
 8004710:	f7ff fbdc 	bl	8003ecc <quorem>
 8004714:	4629      	mov	r1, r5
 8004716:	4604      	mov	r4, r0
 8004718:	4650      	mov	r0, sl
 800471a:	f001 fd75 	bl	8006208 <__mcmp>
 800471e:	4659      	mov	r1, fp
 8004720:	4606      	mov	r6, r0
 8004722:	4642      	mov	r2, r8
 8004724:	4648      	mov	r0, r9
 8004726:	f001 fd8b 	bl	8006240 <__mdiff>
 800472a:	f104 0330 	add.w	r3, r4, #48	; 0x30
 800472e:	9300      	str	r3, [sp, #0]
 8004730:	68c3      	ldr	r3, [r0, #12]
 8004732:	4601      	mov	r1, r0
 8004734:	2b00      	cmp	r3, #0
 8004736:	f040 81d4 	bne.w	8004ae2 <_dtoa_r+0xaf2>
 800473a:	9008      	str	r0, [sp, #32]
 800473c:	4650      	mov	r0, sl
 800473e:	f001 fd63 	bl	8006208 <__mcmp>
 8004742:	9a08      	ldr	r2, [sp, #32]
 8004744:	9007      	str	r0, [sp, #28]
 8004746:	4611      	mov	r1, r2
 8004748:	4648      	mov	r0, r9
 800474a:	f001 fb6d 	bl	8005e28 <_Bfree>
 800474e:	9b07      	ldr	r3, [sp, #28]
 8004750:	b933      	cbnz	r3, 8004760 <_dtoa_r+0x770>
 8004752:	9a02      	ldr	r2, [sp, #8]
 8004754:	b922      	cbnz	r2, 8004760 <_dtoa_r+0x770>
 8004756:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004758:	2b00      	cmp	r3, #0
 800475a:	f000 8319 	beq.w	8004d90 <_dtoa_r+0xda0>
 800475e:	9b02      	ldr	r3, [sp, #8]
 8004760:	2e00      	cmp	r6, #0
 8004762:	f2c0 821c 	blt.w	8004b9e <_dtoa_r+0xbae>
 8004766:	d105      	bne.n	8004774 <_dtoa_r+0x784>
 8004768:	9a02      	ldr	r2, [sp, #8]
 800476a:	b91a      	cbnz	r2, 8004774 <_dtoa_r+0x784>
 800476c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800476e:	2a00      	cmp	r2, #0
 8004770:	f000 8215 	beq.w	8004b9e <_dtoa_r+0xbae>
 8004774:	2b00      	cmp	r3, #0
 8004776:	f107 0401 	add.w	r4, r7, #1
 800477a:	f300 8225 	bgt.w	8004bc8 <_dtoa_r+0xbd8>
 800477e:	9b00      	ldr	r3, [sp, #0]
 8004780:	703b      	strb	r3, [r7, #0]
 8004782:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004784:	42bb      	cmp	r3, r7
 8004786:	f000 8230 	beq.w	8004bea <_dtoa_r+0xbfa>
 800478a:	4651      	mov	r1, sl
 800478c:	2300      	movs	r3, #0
 800478e:	220a      	movs	r2, #10
 8004790:	4648      	mov	r0, r9
 8004792:	f001 fb53 	bl	8005e3c <__multadd>
 8004796:	4545      	cmp	r5, r8
 8004798:	4682      	mov	sl, r0
 800479a:	4629      	mov	r1, r5
 800479c:	f04f 0300 	mov.w	r3, #0
 80047a0:	f04f 020a 	mov.w	r2, #10
 80047a4:	4648      	mov	r0, r9
 80047a6:	f000 8196 	beq.w	8004ad6 <_dtoa_r+0xae6>
 80047aa:	f001 fb47 	bl	8005e3c <__multadd>
 80047ae:	4641      	mov	r1, r8
 80047b0:	4605      	mov	r5, r0
 80047b2:	2300      	movs	r3, #0
 80047b4:	220a      	movs	r2, #10
 80047b6:	4648      	mov	r0, r9
 80047b8:	f001 fb40 	bl	8005e3c <__multadd>
 80047bc:	4627      	mov	r7, r4
 80047be:	4680      	mov	r8, r0
 80047c0:	e7a4      	b.n	800470c <_dtoa_r+0x71c>
 80047c2:	4631      	mov	r1, r6
 80047c4:	4650      	mov	r0, sl
 80047c6:	f001 fd1f 	bl	8006208 <__mcmp>
 80047ca:	2800      	cmp	r0, #0
 80047cc:	da81      	bge.n	80046d2 <_dtoa_r+0x6e2>
 80047ce:	9f06      	ldr	r7, [sp, #24]
 80047d0:	4651      	mov	r1, sl
 80047d2:	2300      	movs	r3, #0
 80047d4:	220a      	movs	r2, #10
 80047d6:	4648      	mov	r0, r9
 80047d8:	3f01      	subs	r7, #1
 80047da:	9706      	str	r7, [sp, #24]
 80047dc:	f001 fb2e 	bl	8005e3c <__multadd>
 80047e0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80047e2:	4682      	mov	sl, r0
 80047e4:	2b00      	cmp	r3, #0
 80047e6:	f040 82eb 	bne.w	8004dc0 <_dtoa_r+0xdd0>
 80047ea:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80047ec:	2b00      	cmp	r3, #0
 80047ee:	f340 82f3 	ble.w	8004dd8 <_dtoa_r+0xde8>
 80047f2:	9309      	str	r3, [sp, #36]	; 0x24
 80047f4:	465c      	mov	r4, fp
 80047f6:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80047fa:	e002      	b.n	8004802 <_dtoa_r+0x812>
 80047fc:	f001 fb1e 	bl	8005e3c <__multadd>
 8004800:	4682      	mov	sl, r0
 8004802:	4631      	mov	r1, r6
 8004804:	4650      	mov	r0, sl
 8004806:	f7ff fb61 	bl	8003ecc <quorem>
 800480a:	f100 0730 	add.w	r7, r0, #48	; 0x30
 800480e:	f804 7b01 	strb.w	r7, [r4], #1
 8004812:	eba4 030b 	sub.w	r3, r4, fp
 8004816:	4598      	cmp	r8, r3
 8004818:	f04f 020a 	mov.w	r2, #10
 800481c:	f04f 0300 	mov.w	r3, #0
 8004820:	4651      	mov	r1, sl
 8004822:	4648      	mov	r0, r9
 8004824:	dcea      	bgt.n	80047fc <_dtoa_r+0x80c>
 8004826:	2300      	movs	r3, #0
 8004828:	9700      	str	r7, [sp, #0]
 800482a:	9302      	str	r3, [sp, #8]
 800482c:	4651      	mov	r1, sl
 800482e:	2201      	movs	r2, #1
 8004830:	4648      	mov	r0, r9
 8004832:	f001 fc93 	bl	800615c <__lshift>
 8004836:	4631      	mov	r1, r6
 8004838:	4682      	mov	sl, r0
 800483a:	f001 fce5 	bl	8006208 <__mcmp>
 800483e:	2800      	cmp	r0, #0
 8004840:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004844:	dc14      	bgt.n	8004870 <_dtoa_r+0x880>
 8004846:	d108      	bne.n	800485a <_dtoa_r+0x86a>
 8004848:	9b00      	ldr	r3, [sp, #0]
 800484a:	07db      	lsls	r3, r3, #31
 800484c:	d410      	bmi.n	8004870 <_dtoa_r+0x880>
 800484e:	e004      	b.n	800485a <_dtoa_r+0x86a>
 8004850:	40240000 	.word	0x40240000
 8004854:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004858:	461c      	mov	r4, r3
 800485a:	2a30      	cmp	r2, #48	; 0x30
 800485c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004860:	d0f8      	beq.n	8004854 <_dtoa_r+0x864>
 8004862:	e00b      	b.n	800487c <_dtoa_r+0x88c>
 8004864:	459b      	cmp	fp, r3
 8004866:	f000 814e 	beq.w	8004b06 <_dtoa_r+0xb16>
 800486a:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 800486e:	461c      	mov	r4, r3
 8004870:	2a39      	cmp	r2, #57	; 0x39
 8004872:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004876:	d0f5      	beq.n	8004864 <_dtoa_r+0x874>
 8004878:	3201      	adds	r2, #1
 800487a:	701a      	strb	r2, [r3, #0]
 800487c:	4631      	mov	r1, r6
 800487e:	4648      	mov	r0, r9
 8004880:	f001 fad2 	bl	8005e28 <_Bfree>
 8004884:	b155      	cbz	r5, 800489c <_dtoa_r+0x8ac>
 8004886:	9902      	ldr	r1, [sp, #8]
 8004888:	b121      	cbz	r1, 8004894 <_dtoa_r+0x8a4>
 800488a:	42a9      	cmp	r1, r5
 800488c:	d002      	beq.n	8004894 <_dtoa_r+0x8a4>
 800488e:	4648      	mov	r0, r9
 8004890:	f001 faca 	bl	8005e28 <_Bfree>
 8004894:	4629      	mov	r1, r5
 8004896:	4648      	mov	r0, r9
 8004898:	f001 fac6 	bl	8005e28 <_Bfree>
 800489c:	4651      	mov	r1, sl
 800489e:	4648      	mov	r0, r9
 80048a0:	f001 fac2 	bl	8005e28 <_Bfree>
 80048a4:	2200      	movs	r2, #0
 80048a6:	9b06      	ldr	r3, [sp, #24]
 80048a8:	7022      	strb	r2, [r4, #0]
 80048aa:	9a05      	ldr	r2, [sp, #20]
 80048ac:	3301      	adds	r3, #1
 80048ae:	6013      	str	r3, [r2, #0]
 80048b0:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80048b2:	2b00      	cmp	r3, #0
 80048b4:	f43f abdb 	beq.w	800406e <_dtoa_r+0x7e>
 80048b8:	4658      	mov	r0, fp
 80048ba:	601c      	str	r4, [r3, #0]
 80048bc:	b01b      	add	sp, #108	; 0x6c
 80048be:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80048c2:	201c      	movs	r0, #28
 80048c4:	e6eb      	b.n	800469e <_dtoa_r+0x6ae>
 80048c6:	4601      	mov	r1, r0
 80048c8:	4648      	mov	r0, r9
 80048ca:	f001 fbf7 	bl	80060bc <__pow5mult>
 80048ce:	9b02      	ldr	r3, [sp, #8]
 80048d0:	2b01      	cmp	r3, #1
 80048d2:	4606      	mov	r6, r0
 80048d4:	f340 80d4 	ble.w	8004a80 <_dtoa_r+0xa90>
 80048d8:	2300      	movs	r3, #0
 80048da:	930c      	str	r3, [sp, #48]	; 0x30
 80048dc:	6933      	ldr	r3, [r6, #16]
 80048de:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 80048e2:	6918      	ldr	r0, [r3, #16]
 80048e4:	f001 faea 	bl	8005ebc <__hi0bits>
 80048e8:	f1c0 0020 	rsb	r0, r0, #32
 80048ec:	e6cb      	b.n	8004686 <_dtoa_r+0x696>
 80048ee:	900d      	str	r0, [sp, #52]	; 0x34
 80048f0:	e42a      	b.n	8004148 <_dtoa_r+0x158>
 80048f2:	2501      	movs	r5, #1
 80048f4:	e440      	b.n	8004178 <_dtoa_r+0x188>
 80048f6:	f1c3 0820 	rsb	r8, r3, #32
 80048fa:	9b00      	ldr	r3, [sp, #0]
 80048fc:	fa03 f008 	lsl.w	r0, r3, r8
 8004900:	f7ff bbd8 	b.w	80040b4 <_dtoa_r+0xc4>
 8004904:	2300      	movs	r3, #0
 8004906:	930a      	str	r3, [sp, #40]	; 0x28
 8004908:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 800490c:	4413      	add	r3, r2
 800490e:	930e      	str	r3, [sp, #56]	; 0x38
 8004910:	3301      	adds	r3, #1
 8004912:	2b01      	cmp	r3, #1
 8004914:	461e      	mov	r6, r3
 8004916:	9309      	str	r3, [sp, #36]	; 0x24
 8004918:	bfb8      	it	lt
 800491a:	2601      	movlt	r6, #1
 800491c:	2100      	movs	r1, #0
 800491e:	2e17      	cmp	r6, #23
 8004920:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004924:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004926:	f77f ac89 	ble.w	800423c <_dtoa_r+0x24c>
 800492a:	2201      	movs	r2, #1
 800492c:	2304      	movs	r3, #4
 800492e:	005b      	lsls	r3, r3, #1
 8004930:	f103 0014 	add.w	r0, r3, #20
 8004934:	42b0      	cmp	r0, r6
 8004936:	4611      	mov	r1, r2
 8004938:	f102 0201 	add.w	r2, r2, #1
 800493c:	d9f7      	bls.n	800492e <_dtoa_r+0x93e>
 800493e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004942:	e47b      	b.n	800423c <_dtoa_r+0x24c>
 8004944:	2300      	movs	r3, #0
 8004946:	930a      	str	r3, [sp, #40]	; 0x28
 8004948:	9e07      	ldr	r6, [sp, #28]
 800494a:	2e00      	cmp	r6, #0
 800494c:	f340 80e2 	ble.w	8004b14 <_dtoa_r+0xb24>
 8004950:	960e      	str	r6, [sp, #56]	; 0x38
 8004952:	9609      	str	r6, [sp, #36]	; 0x24
 8004954:	e7e2      	b.n	800491c <_dtoa_r+0x92c>
 8004956:	2301      	movs	r3, #1
 8004958:	930a      	str	r3, [sp, #40]	; 0x28
 800495a:	e7f5      	b.n	8004948 <_dtoa_r+0x958>
 800495c:	9b00      	ldr	r3, [sp, #0]
 800495e:	2b00      	cmp	r3, #0
 8004960:	f47f ae90 	bne.w	8004684 <_dtoa_r+0x694>
 8004964:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004968:	f3c2 0313 	ubfx	r3, r2, #0, #20
 800496c:	2b00      	cmp	r3, #0
 800496e:	f040 8192 	bne.w	8004c96 <_dtoa_r+0xca6>
 8004972:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004976:	0d1b      	lsrs	r3, r3, #20
 8004978:	051b      	lsls	r3, r3, #20
 800497a:	b12b      	cbz	r3, 8004988 <_dtoa_r+0x998>
 800497c:	9b08      	ldr	r3, [sp, #32]
 800497e:	3301      	adds	r3, #1
 8004980:	9308      	str	r3, [sp, #32]
 8004982:	f108 0801 	add.w	r8, r8, #1
 8004986:	2301      	movs	r3, #1
 8004988:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800498a:	930c      	str	r3, [sp, #48]	; 0x30
 800498c:	2a00      	cmp	r2, #0
 800498e:	f43f ae79 	beq.w	8004684 <_dtoa_r+0x694>
 8004992:	e7a3      	b.n	80048dc <_dtoa_r+0x8ec>
 8004994:	463a      	mov	r2, r7
 8004996:	4629      	mov	r1, r5
 8004998:	4648      	mov	r0, r9
 800499a:	f001 fb8f 	bl	80060bc <__pow5mult>
 800499e:	4652      	mov	r2, sl
 80049a0:	4601      	mov	r1, r0
 80049a2:	4605      	mov	r5, r0
 80049a4:	4648      	mov	r0, r9
 80049a6:	f001 fae3 	bl	8005f70 <__multiply>
 80049aa:	4651      	mov	r1, sl
 80049ac:	4607      	mov	r7, r0
 80049ae:	4648      	mov	r0, r9
 80049b0:	f001 fa3a 	bl	8005e28 <_Bfree>
 80049b4:	46ba      	mov	sl, r7
 80049b6:	2e00      	cmp	r6, #0
 80049b8:	f43f ae57 	beq.w	800466a <_dtoa_r+0x67a>
 80049bc:	e64f      	b.n	800465e <_dtoa_r+0x66e>
 80049be:	4629      	mov	r1, r5
 80049c0:	4622      	mov	r2, r4
 80049c2:	4648      	mov	r0, r9
 80049c4:	f001 fbca 	bl	800615c <__lshift>
 80049c8:	4605      	mov	r5, r0
 80049ca:	e68d      	b.n	80046e8 <_dtoa_r+0x6f8>
 80049cc:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80049ce:	2a00      	cmp	r2, #0
 80049d0:	f000 815d 	beq.w	8004c8e <_dtoa_r+0xc9e>
 80049d4:	f203 4333 	addw	r3, r3, #1075	; 0x433
 80049d8:	9a08      	ldr	r2, [sp, #32]
 80049da:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80049dc:	4614      	mov	r4, r2
 80049de:	441a      	add	r2, r3
 80049e0:	4498      	add	r8, r3
 80049e2:	9208      	str	r2, [sp, #32]
 80049e4:	e5f7      	b.n	80045d6 <_dtoa_r+0x5e6>
 80049e6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80049e8:	2b00      	cmp	r3, #0
 80049ea:	f73f ad3e 	bgt.w	800446a <_dtoa_r+0x47a>
 80049ee:	f040 80bc 	bne.w	8004b6a <_dtoa_r+0xb7a>
 80049f2:	ec51 0b17 	vmov	r0, r1, d7
 80049f6:	2200      	movs	r2, #0
 80049f8:	4bb2      	ldr	r3, [pc, #712]	; (8004cc4 <_dtoa_r+0xcd4>)
 80049fa:	f7fc f89d 	bl	8000b38 <__aeabi_dmul>
 80049fe:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004a02:	f7fc fb1f 	bl	8001044 <__aeabi_dcmpge>
 8004a06:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004a08:	4635      	mov	r5, r6
 8004a0a:	2800      	cmp	r0, #0
 8004a0c:	d176      	bne.n	8004afc <_dtoa_r+0xb0c>
 8004a0e:	9a06      	ldr	r2, [sp, #24]
 8004a10:	2331      	movs	r3, #49	; 0x31
 8004a12:	3201      	adds	r2, #1
 8004a14:	9206      	str	r2, [sp, #24]
 8004a16:	f88b 3000 	strb.w	r3, [fp]
 8004a1a:	f10b 0401 	add.w	r4, fp, #1
 8004a1e:	4631      	mov	r1, r6
 8004a20:	4648      	mov	r0, r9
 8004a22:	f001 fa01 	bl	8005e28 <_Bfree>
 8004a26:	2d00      	cmp	r5, #0
 8004a28:	f47f af34 	bne.w	8004894 <_dtoa_r+0x8a4>
 8004a2c:	e736      	b.n	800489c <_dtoa_r+0x8ac>
 8004a2e:	f000 8142 	beq.w	8004cb6 <_dtoa_r+0xcc6>
 8004a32:	9b06      	ldr	r3, [sp, #24]
 8004a34:	425c      	negs	r4, r3
 8004a36:	4ba4      	ldr	r3, [pc, #656]	; (8004cc8 <_dtoa_r+0xcd8>)
 8004a38:	f004 020f 	and.w	r2, r4, #15
 8004a3c:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004a40:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004a44:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004a48:	f7fc f876 	bl	8000b38 <__aeabi_dmul>
 8004a4c:	1124      	asrs	r4, r4, #4
 8004a4e:	e9cd 0100 	strd	r0, r1, [sp]
 8004a52:	f000 81c6 	beq.w	8004de2 <_dtoa_r+0xdf2>
 8004a56:	4d9d      	ldr	r5, [pc, #628]	; (8004ccc <_dtoa_r+0xcdc>)
 8004a58:	2300      	movs	r3, #0
 8004a5a:	2602      	movs	r6, #2
 8004a5c:	07e7      	lsls	r7, r4, #31
 8004a5e:	d505      	bpl.n	8004a6c <_dtoa_r+0xa7c>
 8004a60:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004a64:	f7fc f868 	bl	8000b38 <__aeabi_dmul>
 8004a68:	3601      	adds	r6, #1
 8004a6a:	2301      	movs	r3, #1
 8004a6c:	1064      	asrs	r4, r4, #1
 8004a6e:	f105 0508 	add.w	r5, r5, #8
 8004a72:	d1f3      	bne.n	8004a5c <_dtoa_r+0xa6c>
 8004a74:	2b00      	cmp	r3, #0
 8004a76:	f43f ac27 	beq.w	80042c8 <_dtoa_r+0x2d8>
 8004a7a:	e9cd 0100 	strd	r0, r1, [sp]
 8004a7e:	e423      	b.n	80042c8 <_dtoa_r+0x2d8>
 8004a80:	9b00      	ldr	r3, [sp, #0]
 8004a82:	2b00      	cmp	r3, #0
 8004a84:	f43f af6e 	beq.w	8004964 <_dtoa_r+0x974>
 8004a88:	e726      	b.n	80048d8 <_dtoa_r+0x8e8>
 8004a8a:	6869      	ldr	r1, [r5, #4]
 8004a8c:	4648      	mov	r0, r9
 8004a8e:	f001 f9a5 	bl	8005ddc <_Balloc>
 8004a92:	692b      	ldr	r3, [r5, #16]
 8004a94:	3302      	adds	r3, #2
 8004a96:	009a      	lsls	r2, r3, #2
 8004a98:	4604      	mov	r4, r0
 8004a9a:	f105 010c 	add.w	r1, r5, #12
 8004a9e:	300c      	adds	r0, #12
 8004aa0:	f7fb fd2e 	bl	8000500 <memcpy>
 8004aa4:	4621      	mov	r1, r4
 8004aa6:	2201      	movs	r2, #1
 8004aa8:	4648      	mov	r0, r9
 8004aaa:	f001 fb57 	bl	800615c <__lshift>
 8004aae:	4680      	mov	r8, r0
 8004ab0:	e61f      	b.n	80046f2 <_dtoa_r+0x702>
 8004ab2:	2400      	movs	r4, #0
 8004ab4:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004ab8:	4621      	mov	r1, r4
 8004aba:	4648      	mov	r0, r9
 8004abc:	f001 f98e 	bl	8005ddc <_Balloc>
 8004ac0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004ac4:	930e      	str	r3, [sp, #56]	; 0x38
 8004ac6:	9309      	str	r3, [sp, #36]	; 0x24
 8004ac8:	2301      	movs	r3, #1
 8004aca:	4683      	mov	fp, r0
 8004acc:	9407      	str	r4, [sp, #28]
 8004ace:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004ad2:	930a      	str	r3, [sp, #40]	; 0x28
 8004ad4:	e4b6      	b.n	8004444 <_dtoa_r+0x454>
 8004ad6:	f001 f9b1 	bl	8005e3c <__multadd>
 8004ada:	4627      	mov	r7, r4
 8004adc:	4605      	mov	r5, r0
 8004ade:	4680      	mov	r8, r0
 8004ae0:	e614      	b.n	800470c <_dtoa_r+0x71c>
 8004ae2:	4648      	mov	r0, r9
 8004ae4:	f001 f9a0 	bl	8005e28 <_Bfree>
 8004ae8:	2301      	movs	r3, #1
 8004aea:	e639      	b.n	8004760 <_dtoa_r+0x770>
 8004aec:	9b02      	ldr	r3, [sp, #8]
 8004aee:	2b02      	cmp	r3, #2
 8004af0:	f77f adf3 	ble.w	80046da <_dtoa_r+0x6ea>
 8004af4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004af6:	2b00      	cmp	r3, #0
 8004af8:	f000 80cf 	beq.w	8004c9a <_dtoa_r+0xcaa>
 8004afc:	9b07      	ldr	r3, [sp, #28]
 8004afe:	43db      	mvns	r3, r3
 8004b00:	9306      	str	r3, [sp, #24]
 8004b02:	465c      	mov	r4, fp
 8004b04:	e78b      	b.n	8004a1e <_dtoa_r+0xa2e>
 8004b06:	9a06      	ldr	r2, [sp, #24]
 8004b08:	2331      	movs	r3, #49	; 0x31
 8004b0a:	3201      	adds	r2, #1
 8004b0c:	9206      	str	r2, [sp, #24]
 8004b0e:	f88b 3000 	strb.w	r3, [fp]
 8004b12:	e6b3      	b.n	800487c <_dtoa_r+0x88c>
 8004b14:	2401      	movs	r4, #1
 8004b16:	9409      	str	r4, [sp, #36]	; 0x24
 8004b18:	9407      	str	r4, [sp, #28]
 8004b1a:	f7ff bb8b 	b.w	8004234 <_dtoa_r+0x244>
 8004b1e:	4630      	mov	r0, r6
 8004b20:	f7fb ffa0 	bl	8000a64 <__aeabi_i2d>
 8004b24:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004b28:	f7fc f806 	bl	8000b38 <__aeabi_dmul>
 8004b2c:	2200      	movs	r2, #0
 8004b2e:	4b68      	ldr	r3, [pc, #416]	; (8004cd0 <_dtoa_r+0xce0>)
 8004b30:	f7fb fe4c 	bl	80007cc <__adddf3>
 8004b34:	4606      	mov	r6, r0
 8004b36:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004b3a:	2200      	movs	r2, #0
 8004b3c:	4b61      	ldr	r3, [pc, #388]	; (8004cc4 <_dtoa_r+0xcd4>)
 8004b3e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004b42:	f7fb fe41 	bl	80007c8 <__aeabi_dsub>
 8004b46:	4632      	mov	r2, r6
 8004b48:	463b      	mov	r3, r7
 8004b4a:	4604      	mov	r4, r0
 8004b4c:	460d      	mov	r5, r1
 8004b4e:	f7fc fa83 	bl	8001058 <__aeabi_dcmpgt>
 8004b52:	2800      	cmp	r0, #0
 8004b54:	d14f      	bne.n	8004bf6 <_dtoa_r+0xc06>
 8004b56:	4632      	mov	r2, r6
 8004b58:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004b5c:	4620      	mov	r0, r4
 8004b5e:	4629      	mov	r1, r5
 8004b60:	f7fc fa5c 	bl	800101c <__aeabi_dcmplt>
 8004b64:	2800      	cmp	r0, #0
 8004b66:	f43f ac69 	beq.w	800443c <_dtoa_r+0x44c>
 8004b6a:	2600      	movs	r6, #0
 8004b6c:	4635      	mov	r5, r6
 8004b6e:	e7c5      	b.n	8004afc <_dtoa_r+0xb0c>
 8004b70:	2301      	movs	r3, #1
 8004b72:	930a      	str	r3, [sp, #40]	; 0x28
 8004b74:	e6c8      	b.n	8004908 <_dtoa_r+0x918>
 8004b76:	4651      	mov	r1, sl
 8004b78:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004b7a:	4648      	mov	r0, r9
 8004b7c:	f001 fa9e 	bl	80060bc <__pow5mult>
 8004b80:	4682      	mov	sl, r0
 8004b82:	e572      	b.n	800466a <_dtoa_r+0x67a>
 8004b84:	f8dd a000 	ldr.w	sl, [sp]
 8004b88:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004b8c:	e686      	b.n	800489c <_dtoa_r+0x8ac>
 8004b8e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004b90:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004b92:	1afb      	subs	r3, r7, r3
 8004b94:	441a      	add	r2, r3
 8004b96:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004b9a:	2700      	movs	r7, #0
 8004b9c:	e512      	b.n	80045c4 <_dtoa_r+0x5d4>
 8004b9e:	2b00      	cmp	r3, #0
 8004ba0:	9402      	str	r4, [sp, #8]
 8004ba2:	465e      	mov	r6, fp
 8004ba4:	f107 0401 	add.w	r4, r7, #1
 8004ba8:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004bac:	f300 80ba 	bgt.w	8004d24 <_dtoa_r+0xd34>
 8004bb0:	9b00      	ldr	r3, [sp, #0]
 8004bb2:	9502      	str	r5, [sp, #8]
 8004bb4:	703b      	strb	r3, [r7, #0]
 8004bb6:	4645      	mov	r5, r8
 8004bb8:	e660      	b.n	800487c <_dtoa_r+0x88c>
 8004bba:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004bbe:	2602      	movs	r6, #2
 8004bc0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004bc4:	f7ff bb67 	b.w	8004296 <_dtoa_r+0x2a6>
 8004bc8:	9b00      	ldr	r3, [sp, #0]
 8004bca:	2b39      	cmp	r3, #57	; 0x39
 8004bcc:	465e      	mov	r6, fp
 8004bce:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004bd2:	f000 80b9 	beq.w	8004d48 <_dtoa_r+0xd58>
 8004bd6:	9b00      	ldr	r3, [sp, #0]
 8004bd8:	9502      	str	r5, [sp, #8]
 8004bda:	3301      	adds	r3, #1
 8004bdc:	703b      	strb	r3, [r7, #0]
 8004bde:	4645      	mov	r5, r8
 8004be0:	e64c      	b.n	800487c <_dtoa_r+0x88c>
 8004be2:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004be6:	1a9c      	subs	r4, r3, r2
 8004be8:	e4f5      	b.n	80045d6 <_dtoa_r+0x5e6>
 8004bea:	465e      	mov	r6, fp
 8004bec:	9502      	str	r5, [sp, #8]
 8004bee:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004bf2:	4645      	mov	r5, r8
 8004bf4:	e61a      	b.n	800482c <_dtoa_r+0x83c>
 8004bf6:	2600      	movs	r6, #0
 8004bf8:	4635      	mov	r5, r6
 8004bfa:	e708      	b.n	8004a0e <_dtoa_r+0xa1e>
 8004bfc:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004c00:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004c04:	f7fb ff98 	bl	8000b38 <__aeabi_dmul>
 8004c08:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004c0a:	f88b 5000 	strb.w	r5, [fp]
 8004c0e:	2b01      	cmp	r3, #1
 8004c10:	e9cd 0100 	strd	r0, r1, [sp]
 8004c14:	d020      	beq.n	8004c58 <_dtoa_r+0xc68>
 8004c16:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004c18:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004c1c:	445b      	add	r3, fp
 8004c1e:	4698      	mov	r8, r3
 8004c20:	2200      	movs	r2, #0
 8004c22:	4b2c      	ldr	r3, [pc, #176]	; (8004cd4 <_dtoa_r+0xce4>)
 8004c24:	4630      	mov	r0, r6
 8004c26:	4639      	mov	r1, r7
 8004c28:	f7fb ff86 	bl	8000b38 <__aeabi_dmul>
 8004c2c:	460f      	mov	r7, r1
 8004c2e:	4606      	mov	r6, r0
 8004c30:	f7fc fa32 	bl	8001098 <__aeabi_d2iz>
 8004c34:	4605      	mov	r5, r0
 8004c36:	f7fb ff15 	bl	8000a64 <__aeabi_i2d>
 8004c3a:	3530      	adds	r5, #48	; 0x30
 8004c3c:	4602      	mov	r2, r0
 8004c3e:	460b      	mov	r3, r1
 8004c40:	4630      	mov	r0, r6
 8004c42:	4639      	mov	r1, r7
 8004c44:	f7fb fdc0 	bl	80007c8 <__aeabi_dsub>
 8004c48:	f804 5b01 	strb.w	r5, [r4], #1
 8004c4c:	4544      	cmp	r4, r8
 8004c4e:	4606      	mov	r6, r0
 8004c50:	460f      	mov	r7, r1
 8004c52:	d1e5      	bne.n	8004c20 <_dtoa_r+0xc30>
 8004c54:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004c58:	4b1f      	ldr	r3, [pc, #124]	; (8004cd8 <_dtoa_r+0xce8>)
 8004c5a:	2200      	movs	r2, #0
 8004c5c:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004c60:	f7fb fdb4 	bl	80007cc <__adddf3>
 8004c64:	4632      	mov	r2, r6
 8004c66:	463b      	mov	r3, r7
 8004c68:	f7fc f9d8 	bl	800101c <__aeabi_dcmplt>
 8004c6c:	2800      	cmp	r0, #0
 8004c6e:	d070      	beq.n	8004d52 <_dtoa_r+0xd62>
 8004c70:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004c72:	9306      	str	r3, [sp, #24]
 8004c74:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004c78:	e48f      	b.n	800459a <_dtoa_r+0x5aa>
 8004c7a:	2330      	movs	r3, #48	; 0x30
 8004c7c:	f88b 3000 	strb.w	r3, [fp]
 8004c80:	9b06      	ldr	r3, [sp, #24]
 8004c82:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004c86:	3301      	adds	r3, #1
 8004c88:	9306      	str	r3, [sp, #24]
 8004c8a:	465b      	mov	r3, fp
 8004c8c:	e489      	b.n	80045a2 <_dtoa_r+0x5b2>
 8004c8e:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004c90:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004c94:	e6a0      	b.n	80049d8 <_dtoa_r+0x9e8>
 8004c96:	2300      	movs	r3, #0
 8004c98:	e676      	b.n	8004988 <_dtoa_r+0x998>
 8004c9a:	4631      	mov	r1, r6
 8004c9c:	2205      	movs	r2, #5
 8004c9e:	4648      	mov	r0, r9
 8004ca0:	f001 f8cc 	bl	8005e3c <__multadd>
 8004ca4:	4601      	mov	r1, r0
 8004ca6:	4606      	mov	r6, r0
 8004ca8:	4650      	mov	r0, sl
 8004caa:	f001 faad 	bl	8006208 <__mcmp>
 8004cae:	2800      	cmp	r0, #0
 8004cb0:	f73f aead 	bgt.w	8004a0e <_dtoa_r+0xa1e>
 8004cb4:	e722      	b.n	8004afc <_dtoa_r+0xb0c>
 8004cb6:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004cba:	2602      	movs	r6, #2
 8004cbc:	ed8d 7b00 	vstr	d7, [sp]
 8004cc0:	f7ff bb02 	b.w	80042c8 <_dtoa_r+0x2d8>
 8004cc4:	40140000 	.word	0x40140000
 8004cc8:	08007080 	.word	0x08007080
 8004ccc:	08007058 	.word	0x08007058
 8004cd0:	401c0000 	.word	0x401c0000
 8004cd4:	40240000 	.word	0x40240000
 8004cd8:	3fe00000 	.word	0x3fe00000
 8004cdc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004cde:	2b00      	cmp	r3, #0
 8004ce0:	f43f af1d 	beq.w	8004b1e <_dtoa_r+0xb2e>
 8004ce4:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004ce6:	2c00      	cmp	r4, #0
 8004ce8:	f77f aba8 	ble.w	800443c <_dtoa_r+0x44c>
 8004cec:	2200      	movs	r2, #0
 8004cee:	4b45      	ldr	r3, [pc, #276]	; (8004e04 <_dtoa_r+0xe14>)
 8004cf0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004cf4:	f7fb ff20 	bl	8000b38 <__aeabi_dmul>
 8004cf8:	e9cd 0100 	strd	r0, r1, [sp]
 8004cfc:	1c70      	adds	r0, r6, #1
 8004cfe:	f7fb feb1 	bl	8000a64 <__aeabi_i2d>
 8004d02:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d06:	f7fb ff17 	bl	8000b38 <__aeabi_dmul>
 8004d0a:	4b3f      	ldr	r3, [pc, #252]	; (8004e08 <_dtoa_r+0xe18>)
 8004d0c:	2200      	movs	r2, #0
 8004d0e:	f7fb fd5d 	bl	80007cc <__adddf3>
 8004d12:	9b06      	ldr	r3, [sp, #24]
 8004d14:	9412      	str	r4, [sp, #72]	; 0x48
 8004d16:	3b01      	subs	r3, #1
 8004d18:	4606      	mov	r6, r0
 8004d1a:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004d1e:	9316      	str	r3, [sp, #88]	; 0x58
 8004d20:	f7ff baf3 	b.w	800430a <_dtoa_r+0x31a>
 8004d24:	4651      	mov	r1, sl
 8004d26:	2201      	movs	r2, #1
 8004d28:	4648      	mov	r0, r9
 8004d2a:	f001 fa17 	bl	800615c <__lshift>
 8004d2e:	4631      	mov	r1, r6
 8004d30:	4682      	mov	sl, r0
 8004d32:	f001 fa69 	bl	8006208 <__mcmp>
 8004d36:	2800      	cmp	r0, #0
 8004d38:	dd3b      	ble.n	8004db2 <_dtoa_r+0xdc2>
 8004d3a:	9b00      	ldr	r3, [sp, #0]
 8004d3c:	2b39      	cmp	r3, #57	; 0x39
 8004d3e:	d003      	beq.n	8004d48 <_dtoa_r+0xd58>
 8004d40:	9b02      	ldr	r3, [sp, #8]
 8004d42:	3331      	adds	r3, #49	; 0x31
 8004d44:	9300      	str	r3, [sp, #0]
 8004d46:	e733      	b.n	8004bb0 <_dtoa_r+0xbc0>
 8004d48:	2239      	movs	r2, #57	; 0x39
 8004d4a:	9502      	str	r5, [sp, #8]
 8004d4c:	703a      	strb	r2, [r7, #0]
 8004d4e:	4645      	mov	r5, r8
 8004d50:	e58e      	b.n	8004870 <_dtoa_r+0x880>
 8004d52:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d56:	2000      	movs	r0, #0
 8004d58:	492c      	ldr	r1, [pc, #176]	; (8004e0c <_dtoa_r+0xe1c>)
 8004d5a:	f7fb fd35 	bl	80007c8 <__aeabi_dsub>
 8004d5e:	4632      	mov	r2, r6
 8004d60:	463b      	mov	r3, r7
 8004d62:	f7fc f979 	bl	8001058 <__aeabi_dcmpgt>
 8004d66:	b910      	cbnz	r0, 8004d6e <_dtoa_r+0xd7e>
 8004d68:	f7ff bb68 	b.w	800443c <_dtoa_r+0x44c>
 8004d6c:	4614      	mov	r4, r2
 8004d6e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004d72:	2b30      	cmp	r3, #48	; 0x30
 8004d74:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004d78:	d0f8      	beq.n	8004d6c <_dtoa_r+0xd7c>
 8004d7a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004d7c:	9306      	str	r3, [sp, #24]
 8004d7e:	e58d      	b.n	800489c <_dtoa_r+0x8ac>
 8004d80:	46d9      	mov	r9, fp
 8004d82:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004d86:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004d8a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004d8c:	9306      	str	r3, [sp, #24]
 8004d8e:	e404      	b.n	800459a <_dtoa_r+0x5aa>
 8004d90:	9b00      	ldr	r3, [sp, #0]
 8004d92:	2b39      	cmp	r3, #57	; 0x39
 8004d94:	4621      	mov	r1, r4
 8004d96:	4632      	mov	r2, r6
 8004d98:	f107 0401 	add.w	r4, r7, #1
 8004d9c:	465e      	mov	r6, fp
 8004d9e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004da2:	d0d1      	beq.n	8004d48 <_dtoa_r+0xd58>
 8004da4:	2a00      	cmp	r2, #0
 8004da6:	f77f af03 	ble.w	8004bb0 <_dtoa_r+0xbc0>
 8004daa:	460b      	mov	r3, r1
 8004dac:	3331      	adds	r3, #49	; 0x31
 8004dae:	9300      	str	r3, [sp, #0]
 8004db0:	e6fe      	b.n	8004bb0 <_dtoa_r+0xbc0>
 8004db2:	f47f aefd 	bne.w	8004bb0 <_dtoa_r+0xbc0>
 8004db6:	9b00      	ldr	r3, [sp, #0]
 8004db8:	07da      	lsls	r2, r3, #31
 8004dba:	f57f aef9 	bpl.w	8004bb0 <_dtoa_r+0xbc0>
 8004dbe:	e7bc      	b.n	8004d3a <_dtoa_r+0xd4a>
 8004dc0:	4629      	mov	r1, r5
 8004dc2:	2300      	movs	r3, #0
 8004dc4:	220a      	movs	r2, #10
 8004dc6:	4648      	mov	r0, r9
 8004dc8:	f001 f838 	bl	8005e3c <__multadd>
 8004dcc:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004dce:	2b00      	cmp	r3, #0
 8004dd0:	4605      	mov	r5, r0
 8004dd2:	dd09      	ble.n	8004de8 <_dtoa_r+0xdf8>
 8004dd4:	9309      	str	r3, [sp, #36]	; 0x24
 8004dd6:	e484      	b.n	80046e2 <_dtoa_r+0x6f2>
 8004dd8:	9b02      	ldr	r3, [sp, #8]
 8004dda:	2b02      	cmp	r3, #2
 8004ddc:	dc0e      	bgt.n	8004dfc <_dtoa_r+0xe0c>
 8004dde:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004de0:	e507      	b.n	80047f2 <_dtoa_r+0x802>
 8004de2:	2602      	movs	r6, #2
 8004de4:	f7ff ba70 	b.w	80042c8 <_dtoa_r+0x2d8>
 8004de8:	9b02      	ldr	r3, [sp, #8]
 8004dea:	2b02      	cmp	r3, #2
 8004dec:	dc06      	bgt.n	8004dfc <_dtoa_r+0xe0c>
 8004dee:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004df0:	e7f0      	b.n	8004dd4 <_dtoa_r+0xde4>
 8004df2:	f43f ac59 	beq.w	80046a8 <_dtoa_r+0x6b8>
 8004df6:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004dfa:	e450      	b.n	800469e <_dtoa_r+0x6ae>
 8004dfc:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004dfe:	9309      	str	r3, [sp, #36]	; 0x24
 8004e00:	e678      	b.n	8004af4 <_dtoa_r+0xb04>
 8004e02:	bf00      	nop
 8004e04:	40240000 	.word	0x40240000
 8004e08:	401c0000 	.word	0x401c0000
 8004e0c:	3fe00000 	.word	0x3fe00000

08004e10 <__sflush_r>:
 8004e10:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004e14:	b29a      	uxth	r2, r3
 8004e16:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004e1a:	460c      	mov	r4, r1
 8004e1c:	0711      	lsls	r1, r2, #28
 8004e1e:	4680      	mov	r8, r0
 8004e20:	d444      	bmi.n	8004eac <__sflush_r+0x9c>
 8004e22:	6862      	ldr	r2, [r4, #4]
 8004e24:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004e28:	2a00      	cmp	r2, #0
 8004e2a:	81a3      	strh	r3, [r4, #12]
 8004e2c:	dd59      	ble.n	8004ee2 <__sflush_r+0xd2>
 8004e2e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004e30:	2d00      	cmp	r5, #0
 8004e32:	d053      	beq.n	8004edc <__sflush_r+0xcc>
 8004e34:	2200      	movs	r2, #0
 8004e36:	b29b      	uxth	r3, r3
 8004e38:	f8d8 6000 	ldr.w	r6, [r8]
 8004e3c:	69e1      	ldr	r1, [r4, #28]
 8004e3e:	f8c8 2000 	str.w	r2, [r8]
 8004e42:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8004e46:	f040 8083 	bne.w	8004f50 <__sflush_r+0x140>
 8004e4a:	2301      	movs	r3, #1
 8004e4c:	4640      	mov	r0, r8
 8004e4e:	47a8      	blx	r5
 8004e50:	1c42      	adds	r2, r0, #1
 8004e52:	d04a      	beq.n	8004eea <__sflush_r+0xda>
 8004e54:	89a3      	ldrh	r3, [r4, #12]
 8004e56:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004e58:	69e1      	ldr	r1, [r4, #28]
 8004e5a:	075b      	lsls	r3, r3, #29
 8004e5c:	d505      	bpl.n	8004e6a <__sflush_r+0x5a>
 8004e5e:	6862      	ldr	r2, [r4, #4]
 8004e60:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8004e62:	1a80      	subs	r0, r0, r2
 8004e64:	b10b      	cbz	r3, 8004e6a <__sflush_r+0x5a>
 8004e66:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8004e68:	1ac0      	subs	r0, r0, r3
 8004e6a:	4602      	mov	r2, r0
 8004e6c:	2300      	movs	r3, #0
 8004e6e:	4640      	mov	r0, r8
 8004e70:	47a8      	blx	r5
 8004e72:	1c47      	adds	r7, r0, #1
 8004e74:	d045      	beq.n	8004f02 <__sflush_r+0xf2>
 8004e76:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004e7a:	6922      	ldr	r2, [r4, #16]
 8004e7c:	6022      	str	r2, [r4, #0]
 8004e7e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8004e82:	2200      	movs	r2, #0
 8004e84:	81a3      	strh	r3, [r4, #12]
 8004e86:	04db      	lsls	r3, r3, #19
 8004e88:	6062      	str	r2, [r4, #4]
 8004e8a:	d500      	bpl.n	8004e8e <__sflush_r+0x7e>
 8004e8c:	6520      	str	r0, [r4, #80]	; 0x50
 8004e8e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004e90:	f8c8 6000 	str.w	r6, [r8]
 8004e94:	b311      	cbz	r1, 8004edc <__sflush_r+0xcc>
 8004e96:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004e9a:	4299      	cmp	r1, r3
 8004e9c:	d002      	beq.n	8004ea4 <__sflush_r+0x94>
 8004e9e:	4640      	mov	r0, r8
 8004ea0:	f000 f95e 	bl	8005160 <_free_r>
 8004ea4:	2000      	movs	r0, #0
 8004ea6:	6320      	str	r0, [r4, #48]	; 0x30
 8004ea8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004eac:	6926      	ldr	r6, [r4, #16]
 8004eae:	b1ae      	cbz	r6, 8004edc <__sflush_r+0xcc>
 8004eb0:	6825      	ldr	r5, [r4, #0]
 8004eb2:	6026      	str	r6, [r4, #0]
 8004eb4:	0792      	lsls	r2, r2, #30
 8004eb6:	bf0c      	ite	eq
 8004eb8:	6963      	ldreq	r3, [r4, #20]
 8004eba:	2300      	movne	r3, #0
 8004ebc:	1bad      	subs	r5, r5, r6
 8004ebe:	60a3      	str	r3, [r4, #8]
 8004ec0:	e00a      	b.n	8004ed8 <__sflush_r+0xc8>
 8004ec2:	462b      	mov	r3, r5
 8004ec4:	4632      	mov	r2, r6
 8004ec6:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8004ec8:	69e1      	ldr	r1, [r4, #28]
 8004eca:	4640      	mov	r0, r8
 8004ecc:	47b8      	blx	r7
 8004ece:	2800      	cmp	r0, #0
 8004ed0:	eba5 0500 	sub.w	r5, r5, r0
 8004ed4:	4406      	add	r6, r0
 8004ed6:	dd2b      	ble.n	8004f30 <__sflush_r+0x120>
 8004ed8:	2d00      	cmp	r5, #0
 8004eda:	dcf2      	bgt.n	8004ec2 <__sflush_r+0xb2>
 8004edc:	2000      	movs	r0, #0
 8004ede:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004ee2:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8004ee4:	2a00      	cmp	r2, #0
 8004ee6:	dca2      	bgt.n	8004e2e <__sflush_r+0x1e>
 8004ee8:	e7f8      	b.n	8004edc <__sflush_r+0xcc>
 8004eea:	f8d8 3000 	ldr.w	r3, [r8]
 8004eee:	2b00      	cmp	r3, #0
 8004ef0:	d0b0      	beq.n	8004e54 <__sflush_r+0x44>
 8004ef2:	2b1d      	cmp	r3, #29
 8004ef4:	d001      	beq.n	8004efa <__sflush_r+0xea>
 8004ef6:	2b16      	cmp	r3, #22
 8004ef8:	d12c      	bne.n	8004f54 <__sflush_r+0x144>
 8004efa:	f8c8 6000 	str.w	r6, [r8]
 8004efe:	2000      	movs	r0, #0
 8004f00:	e7ed      	b.n	8004ede <__sflush_r+0xce>
 8004f02:	f8d8 1000 	ldr.w	r1, [r8]
 8004f06:	291d      	cmp	r1, #29
 8004f08:	d81a      	bhi.n	8004f40 <__sflush_r+0x130>
 8004f0a:	4b15      	ldr	r3, [pc, #84]	; (8004f60 <__sflush_r+0x150>)
 8004f0c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004f10:	40cb      	lsrs	r3, r1
 8004f12:	43db      	mvns	r3, r3
 8004f14:	f013 0301 	ands.w	r3, r3, #1
 8004f18:	d114      	bne.n	8004f44 <__sflush_r+0x134>
 8004f1a:	6925      	ldr	r5, [r4, #16]
 8004f1c:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8004f20:	e9c4 5300 	strd	r5, r3, [r4]
 8004f24:	04d5      	lsls	r5, r2, #19
 8004f26:	81a2      	strh	r2, [r4, #12]
 8004f28:	d5b1      	bpl.n	8004e8e <__sflush_r+0x7e>
 8004f2a:	2900      	cmp	r1, #0
 8004f2c:	d1af      	bne.n	8004e8e <__sflush_r+0x7e>
 8004f2e:	e7ad      	b.n	8004e8c <__sflush_r+0x7c>
 8004f30:	89a3      	ldrh	r3, [r4, #12]
 8004f32:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004f36:	81a3      	strh	r3, [r4, #12]
 8004f38:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004f3c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004f40:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004f44:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004f48:	81a2      	strh	r2, [r4, #12]
 8004f4a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004f4e:	e7c6      	b.n	8004ede <__sflush_r+0xce>
 8004f50:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8004f52:	e782      	b.n	8004e5a <__sflush_r+0x4a>
 8004f54:	89a3      	ldrh	r3, [r4, #12]
 8004f56:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004f5a:	81a3      	strh	r3, [r4, #12]
 8004f5c:	e7bf      	b.n	8004ede <__sflush_r+0xce>
 8004f5e:	bf00      	nop
 8004f60:	20400001 	.word	0x20400001

08004f64 <_fflush_r>:
 8004f64:	b538      	push	{r3, r4, r5, lr}
 8004f66:	460d      	mov	r5, r1
 8004f68:	4604      	mov	r4, r0
 8004f6a:	b108      	cbz	r0, 8004f70 <_fflush_r+0xc>
 8004f6c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8004f6e:	b1a3      	cbz	r3, 8004f9a <_fflush_r+0x36>
 8004f70:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8004f74:	b1b8      	cbz	r0, 8004fa6 <_fflush_r+0x42>
 8004f76:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8004f78:	07db      	lsls	r3, r3, #31
 8004f7a:	d401      	bmi.n	8004f80 <_fflush_r+0x1c>
 8004f7c:	0581      	lsls	r1, r0, #22
 8004f7e:	d51a      	bpl.n	8004fb6 <_fflush_r+0x52>
 8004f80:	4620      	mov	r0, r4
 8004f82:	4629      	mov	r1, r5
 8004f84:	f7ff ff44 	bl	8004e10 <__sflush_r>
 8004f88:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8004f8a:	07da      	lsls	r2, r3, #31
 8004f8c:	4604      	mov	r4, r0
 8004f8e:	d402      	bmi.n	8004f96 <_fflush_r+0x32>
 8004f90:	89ab      	ldrh	r3, [r5, #12]
 8004f92:	059b      	lsls	r3, r3, #22
 8004f94:	d50a      	bpl.n	8004fac <_fflush_r+0x48>
 8004f96:	4620      	mov	r0, r4
 8004f98:	bd38      	pop	{r3, r4, r5, pc}
 8004f9a:	f000 f83f 	bl	800501c <__sinit>
 8004f9e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8004fa2:	2800      	cmp	r0, #0
 8004fa4:	d1e7      	bne.n	8004f76 <_fflush_r+0x12>
 8004fa6:	4604      	mov	r4, r0
 8004fa8:	4620      	mov	r0, r4
 8004faa:	bd38      	pop	{r3, r4, r5, pc}
 8004fac:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8004fae:	f000 fb87 	bl	80056c0 <__retarget_lock_release_recursive>
 8004fb2:	4620      	mov	r0, r4
 8004fb4:	bd38      	pop	{r3, r4, r5, pc}
 8004fb6:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8004fb8:	f000 fb80 	bl	80056bc <__retarget_lock_acquire_recursive>
 8004fbc:	e7e0      	b.n	8004f80 <_fflush_r+0x1c>
 8004fbe:	bf00      	nop

08004fc0 <std>:
 8004fc0:	b510      	push	{r4, lr}
 8004fc2:	2300      	movs	r3, #0
 8004fc4:	4604      	mov	r4, r0
 8004fc6:	8181      	strh	r1, [r0, #12]
 8004fc8:	81c2      	strh	r2, [r0, #14]
 8004fca:	e9c0 3300 	strd	r3, r3, [r0]
 8004fce:	6083      	str	r3, [r0, #8]
 8004fd0:	6643      	str	r3, [r0, #100]	; 0x64
 8004fd2:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8004fd6:	6183      	str	r3, [r0, #24]
 8004fd8:	4619      	mov	r1, r3
 8004fda:	2208      	movs	r2, #8
 8004fdc:	305c      	adds	r0, #92	; 0x5c
 8004fde:	f7fd f8cb 	bl	8002178 <memset>
 8004fe2:	4807      	ldr	r0, [pc, #28]	; (8005000 <std+0x40>)
 8004fe4:	4907      	ldr	r1, [pc, #28]	; (8005004 <std+0x44>)
 8004fe6:	4a08      	ldr	r2, [pc, #32]	; (8005008 <std+0x48>)
 8004fe8:	4b08      	ldr	r3, [pc, #32]	; (800500c <std+0x4c>)
 8004fea:	62e3      	str	r3, [r4, #44]	; 0x2c
 8004fec:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8004ff0:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8004ff4:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8004ff8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8004ffc:	f000 bb5a 	b.w	80056b4 <__retarget_lock_init_recursive>
 8005000:	080067d9 	.word	0x080067d9
 8005004:	080067fd 	.word	0x080067fd
 8005008:	08006839 	.word	0x08006839
 800500c:	08006859 	.word	0x08006859

08005010 <_cleanup_r>:
 8005010:	4901      	ldr	r1, [pc, #4]	; (8005018 <_cleanup_r+0x8>)
 8005012:	f000 bb17 	b.w	8005644 <_fwalk_reent>
 8005016:	bf00      	nop
 8005018:	08006ac9 	.word	0x08006ac9

0800501c <__sinit>:
 800501c:	b510      	push	{r4, lr}
 800501e:	4604      	mov	r4, r0
 8005020:	4812      	ldr	r0, [pc, #72]	; (800506c <__sinit+0x50>)
 8005022:	f000 fb4b 	bl	80056bc <__retarget_lock_acquire_recursive>
 8005026:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005028:	b9d2      	cbnz	r2, 8005060 <__sinit+0x44>
 800502a:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 800502e:	4810      	ldr	r0, [pc, #64]	; (8005070 <__sinit+0x54>)
 8005030:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8005034:	2103      	movs	r1, #3
 8005036:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 800503a:	63e0      	str	r0, [r4, #60]	; 0x3c
 800503c:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005040:	6860      	ldr	r0, [r4, #4]
 8005042:	2104      	movs	r1, #4
 8005044:	f7ff ffbc 	bl	8004fc0 <std>
 8005048:	2201      	movs	r2, #1
 800504a:	2109      	movs	r1, #9
 800504c:	68a0      	ldr	r0, [r4, #8]
 800504e:	f7ff ffb7 	bl	8004fc0 <std>
 8005052:	2202      	movs	r2, #2
 8005054:	2112      	movs	r1, #18
 8005056:	68e0      	ldr	r0, [r4, #12]
 8005058:	f7ff ffb2 	bl	8004fc0 <std>
 800505c:	2301      	movs	r3, #1
 800505e:	63a3      	str	r3, [r4, #56]	; 0x38
 8005060:	4802      	ldr	r0, [pc, #8]	; (800506c <__sinit+0x50>)
 8005062:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005066:	f000 bb2b 	b.w	80056c0 <__retarget_lock_release_recursive>
 800506a:	bf00      	nop
 800506c:	20000afc 	.word	0x20000afc
 8005070:	08005011 	.word	0x08005011

08005074 <__sfp_lock_acquire>:
 8005074:	4801      	ldr	r0, [pc, #4]	; (800507c <__sfp_lock_acquire+0x8>)
 8005076:	f000 bb21 	b.w	80056bc <__retarget_lock_acquire_recursive>
 800507a:	bf00      	nop
 800507c:	20000b10 	.word	0x20000b10

08005080 <__sfp_lock_release>:
 8005080:	4801      	ldr	r0, [pc, #4]	; (8005088 <__sfp_lock_release+0x8>)
 8005082:	f000 bb1d 	b.w	80056c0 <__retarget_lock_release_recursive>
 8005086:	bf00      	nop
 8005088:	20000b10 	.word	0x20000b10

0800508c <__libc_fini_array>:
 800508c:	b538      	push	{r3, r4, r5, lr}
 800508e:	4c0a      	ldr	r4, [pc, #40]	; (80050b8 <__libc_fini_array+0x2c>)
 8005090:	4d0a      	ldr	r5, [pc, #40]	; (80050bc <__libc_fini_array+0x30>)
 8005092:	1b64      	subs	r4, r4, r5
 8005094:	10a4      	asrs	r4, r4, #2
 8005096:	d00a      	beq.n	80050ae <__libc_fini_array+0x22>
 8005098:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800509c:	3b01      	subs	r3, #1
 800509e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80050a2:	3c01      	subs	r4, #1
 80050a4:	f855 3904 	ldr.w	r3, [r5], #-4
 80050a8:	4798      	blx	r3
 80050aa:	2c00      	cmp	r4, #0
 80050ac:	d1f9      	bne.n	80050a2 <__libc_fini_array+0x16>
 80050ae:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80050b2:	f001 befd 	b.w	8006eb0 <_fini>
 80050b6:	bf00      	nop
 80050b8:	0800727c 	.word	0x0800727c
 80050bc:	08007278 	.word	0x08007278

080050c0 <_malloc_trim_r>:
 80050c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80050c2:	4f24      	ldr	r7, [pc, #144]	; (8005154 <_malloc_trim_r+0x94>)
 80050c4:	460c      	mov	r4, r1
 80050c6:	4606      	mov	r6, r0
 80050c8:	f000 fe7c 	bl	8005dc4 <__malloc_lock>
 80050cc:	68bb      	ldr	r3, [r7, #8]
 80050ce:	685d      	ldr	r5, [r3, #4]
 80050d0:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80050d4:	310f      	adds	r1, #15
 80050d6:	f025 0503 	bic.w	r5, r5, #3
 80050da:	4429      	add	r1, r5
 80050dc:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 80050e0:	f021 010f 	bic.w	r1, r1, #15
 80050e4:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 80050e8:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 80050ec:	db07      	blt.n	80050fe <_malloc_trim_r+0x3e>
 80050ee:	2100      	movs	r1, #0
 80050f0:	4630      	mov	r0, r6
 80050f2:	f001 fb5f 	bl	80067b4 <_sbrk_r>
 80050f6:	68bb      	ldr	r3, [r7, #8]
 80050f8:	442b      	add	r3, r5
 80050fa:	4298      	cmp	r0, r3
 80050fc:	d004      	beq.n	8005108 <_malloc_trim_r+0x48>
 80050fe:	4630      	mov	r0, r6
 8005100:	f000 fe66 	bl	8005dd0 <__malloc_unlock>
 8005104:	2000      	movs	r0, #0
 8005106:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005108:	4261      	negs	r1, r4
 800510a:	4630      	mov	r0, r6
 800510c:	f001 fb52 	bl	80067b4 <_sbrk_r>
 8005110:	3001      	adds	r0, #1
 8005112:	d00d      	beq.n	8005130 <_malloc_trim_r+0x70>
 8005114:	4b10      	ldr	r3, [pc, #64]	; (8005158 <_malloc_trim_r+0x98>)
 8005116:	68ba      	ldr	r2, [r7, #8]
 8005118:	6819      	ldr	r1, [r3, #0]
 800511a:	1b2d      	subs	r5, r5, r4
 800511c:	f045 0501 	orr.w	r5, r5, #1
 8005120:	4630      	mov	r0, r6
 8005122:	1b09      	subs	r1, r1, r4
 8005124:	6055      	str	r5, [r2, #4]
 8005126:	6019      	str	r1, [r3, #0]
 8005128:	f000 fe52 	bl	8005dd0 <__malloc_unlock>
 800512c:	2001      	movs	r0, #1
 800512e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005130:	2100      	movs	r1, #0
 8005132:	4630      	mov	r0, r6
 8005134:	f001 fb3e 	bl	80067b4 <_sbrk_r>
 8005138:	68ba      	ldr	r2, [r7, #8]
 800513a:	1a83      	subs	r3, r0, r2
 800513c:	2b0f      	cmp	r3, #15
 800513e:	ddde      	ble.n	80050fe <_malloc_trim_r+0x3e>
 8005140:	4c06      	ldr	r4, [pc, #24]	; (800515c <_malloc_trim_r+0x9c>)
 8005142:	4905      	ldr	r1, [pc, #20]	; (8005158 <_malloc_trim_r+0x98>)
 8005144:	6824      	ldr	r4, [r4, #0]
 8005146:	f043 0301 	orr.w	r3, r3, #1
 800514a:	1b00      	subs	r0, r0, r4
 800514c:	6053      	str	r3, [r2, #4]
 800514e:	6008      	str	r0, [r1, #0]
 8005150:	e7d5      	b.n	80050fe <_malloc_trim_r+0x3e>
 8005152:	bf00      	nop
 8005154:	2000044c 	.word	0x2000044c
 8005158:	20000a70 	.word	0x20000a70
 800515c:	20000854 	.word	0x20000854

08005160 <_free_r>:
 8005160:	2900      	cmp	r1, #0
 8005162:	d053      	beq.n	800520c <_free_r+0xac>
 8005164:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005166:	460c      	mov	r4, r1
 8005168:	4606      	mov	r6, r0
 800516a:	f000 fe2b 	bl	8005dc4 <__malloc_lock>
 800516e:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8005172:	4f71      	ldr	r7, [pc, #452]	; (8005338 <_free_r+0x1d8>)
 8005174:	f02c 0101 	bic.w	r1, ip, #1
 8005178:	f1a4 0508 	sub.w	r5, r4, #8
 800517c:	186b      	adds	r3, r5, r1
 800517e:	68b8      	ldr	r0, [r7, #8]
 8005180:	685a      	ldr	r2, [r3, #4]
 8005182:	4298      	cmp	r0, r3
 8005184:	f022 0203 	bic.w	r2, r2, #3
 8005188:	d053      	beq.n	8005232 <_free_r+0xd2>
 800518a:	f01c 0f01 	tst.w	ip, #1
 800518e:	605a      	str	r2, [r3, #4]
 8005190:	eb03 0002 	add.w	r0, r3, r2
 8005194:	d13b      	bne.n	800520e <_free_r+0xae>
 8005196:	f854 cc08 	ldr.w	ip, [r4, #-8]
 800519a:	6840      	ldr	r0, [r0, #4]
 800519c:	eba5 050c 	sub.w	r5, r5, ip
 80051a0:	f107 0e08 	add.w	lr, r7, #8
 80051a4:	68ac      	ldr	r4, [r5, #8]
 80051a6:	4574      	cmp	r4, lr
 80051a8:	4461      	add	r1, ip
 80051aa:	f000 0001 	and.w	r0, r0, #1
 80051ae:	d075      	beq.n	800529c <_free_r+0x13c>
 80051b0:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 80051b4:	f8c4 c00c 	str.w	ip, [r4, #12]
 80051b8:	f8cc 4008 	str.w	r4, [ip, #8]
 80051bc:	b360      	cbz	r0, 8005218 <_free_r+0xb8>
 80051be:	f041 0301 	orr.w	r3, r1, #1
 80051c2:	606b      	str	r3, [r5, #4]
 80051c4:	5069      	str	r1, [r5, r1]
 80051c6:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80051ca:	d350      	bcc.n	800526e <_free_r+0x10e>
 80051cc:	0a4b      	lsrs	r3, r1, #9
 80051ce:	2b04      	cmp	r3, #4
 80051d0:	d870      	bhi.n	80052b4 <_free_r+0x154>
 80051d2:	098b      	lsrs	r3, r1, #6
 80051d4:	f103 0439 	add.w	r4, r3, #57	; 0x39
 80051d8:	00e4      	lsls	r4, r4, #3
 80051da:	f103 0238 	add.w	r2, r3, #56	; 0x38
 80051de:	1938      	adds	r0, r7, r4
 80051e0:	593b      	ldr	r3, [r7, r4]
 80051e2:	3808      	subs	r0, #8
 80051e4:	4298      	cmp	r0, r3
 80051e6:	d078      	beq.n	80052da <_free_r+0x17a>
 80051e8:	685a      	ldr	r2, [r3, #4]
 80051ea:	f022 0203 	bic.w	r2, r2, #3
 80051ee:	428a      	cmp	r2, r1
 80051f0:	d971      	bls.n	80052d6 <_free_r+0x176>
 80051f2:	689b      	ldr	r3, [r3, #8]
 80051f4:	4298      	cmp	r0, r3
 80051f6:	d1f7      	bne.n	80051e8 <_free_r+0x88>
 80051f8:	68c3      	ldr	r3, [r0, #12]
 80051fa:	e9c5 0302 	strd	r0, r3, [r5, #8]
 80051fe:	609d      	str	r5, [r3, #8]
 8005200:	60c5      	str	r5, [r0, #12]
 8005202:	4630      	mov	r0, r6
 8005204:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005208:	f000 bde2 	b.w	8005dd0 <__malloc_unlock>
 800520c:	4770      	bx	lr
 800520e:	6840      	ldr	r0, [r0, #4]
 8005210:	f000 0001 	and.w	r0, r0, #1
 8005214:	2800      	cmp	r0, #0
 8005216:	d1d2      	bne.n	80051be <_free_r+0x5e>
 8005218:	6898      	ldr	r0, [r3, #8]
 800521a:	4c48      	ldr	r4, [pc, #288]	; (800533c <_free_r+0x1dc>)
 800521c:	4411      	add	r1, r2
 800521e:	42a0      	cmp	r0, r4
 8005220:	f041 0201 	orr.w	r2, r1, #1
 8005224:	d062      	beq.n	80052ec <_free_r+0x18c>
 8005226:	68db      	ldr	r3, [r3, #12]
 8005228:	60c3      	str	r3, [r0, #12]
 800522a:	6098      	str	r0, [r3, #8]
 800522c:	606a      	str	r2, [r5, #4]
 800522e:	5069      	str	r1, [r5, r1]
 8005230:	e7c9      	b.n	80051c6 <_free_r+0x66>
 8005232:	f01c 0f01 	tst.w	ip, #1
 8005236:	440a      	add	r2, r1
 8005238:	d107      	bne.n	800524a <_free_r+0xea>
 800523a:	f854 3c08 	ldr.w	r3, [r4, #-8]
 800523e:	1aed      	subs	r5, r5, r3
 8005240:	441a      	add	r2, r3
 8005242:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8005246:	60cb      	str	r3, [r1, #12]
 8005248:	6099      	str	r1, [r3, #8]
 800524a:	4b3d      	ldr	r3, [pc, #244]	; (8005340 <_free_r+0x1e0>)
 800524c:	681b      	ldr	r3, [r3, #0]
 800524e:	f042 0101 	orr.w	r1, r2, #1
 8005252:	4293      	cmp	r3, r2
 8005254:	6069      	str	r1, [r5, #4]
 8005256:	60bd      	str	r5, [r7, #8]
 8005258:	d804      	bhi.n	8005264 <_free_r+0x104>
 800525a:	4b3a      	ldr	r3, [pc, #232]	; (8005344 <_free_r+0x1e4>)
 800525c:	4630      	mov	r0, r6
 800525e:	6819      	ldr	r1, [r3, #0]
 8005260:	f7ff ff2e 	bl	80050c0 <_malloc_trim_r>
 8005264:	4630      	mov	r0, r6
 8005266:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800526a:	f000 bdb1 	b.w	8005dd0 <__malloc_unlock>
 800526e:	08c9      	lsrs	r1, r1, #3
 8005270:	6878      	ldr	r0, [r7, #4]
 8005272:	1c4a      	adds	r2, r1, #1
 8005274:	2301      	movs	r3, #1
 8005276:	1089      	asrs	r1, r1, #2
 8005278:	408b      	lsls	r3, r1
 800527a:	4303      	orrs	r3, r0
 800527c:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005280:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005284:	607b      	str	r3, [r7, #4]
 8005286:	3908      	subs	r1, #8
 8005288:	e9c5 0102 	strd	r0, r1, [r5, #8]
 800528c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005290:	60c5      	str	r5, [r0, #12]
 8005292:	4630      	mov	r0, r6
 8005294:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005298:	f000 bd9a 	b.w	8005dd0 <__malloc_unlock>
 800529c:	2800      	cmp	r0, #0
 800529e:	d145      	bne.n	800532c <_free_r+0x1cc>
 80052a0:	440a      	add	r2, r1
 80052a2:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 80052a6:	f042 0001 	orr.w	r0, r2, #1
 80052aa:	60cb      	str	r3, [r1, #12]
 80052ac:	6099      	str	r1, [r3, #8]
 80052ae:	6068      	str	r0, [r5, #4]
 80052b0:	50aa      	str	r2, [r5, r2]
 80052b2:	e7d7      	b.n	8005264 <_free_r+0x104>
 80052b4:	2b14      	cmp	r3, #20
 80052b6:	d908      	bls.n	80052ca <_free_r+0x16a>
 80052b8:	2b54      	cmp	r3, #84	; 0x54
 80052ba:	d81e      	bhi.n	80052fa <_free_r+0x19a>
 80052bc:	0b0b      	lsrs	r3, r1, #12
 80052be:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80052c2:	00e4      	lsls	r4, r4, #3
 80052c4:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80052c8:	e789      	b.n	80051de <_free_r+0x7e>
 80052ca:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80052ce:	00e4      	lsls	r4, r4, #3
 80052d0:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80052d4:	e783      	b.n	80051de <_free_r+0x7e>
 80052d6:	4618      	mov	r0, r3
 80052d8:	e78e      	b.n	80051f8 <_free_r+0x98>
 80052da:	1093      	asrs	r3, r2, #2
 80052dc:	6879      	ldr	r1, [r7, #4]
 80052de:	2201      	movs	r2, #1
 80052e0:	fa02 f303 	lsl.w	r3, r2, r3
 80052e4:	430b      	orrs	r3, r1
 80052e6:	607b      	str	r3, [r7, #4]
 80052e8:	4603      	mov	r3, r0
 80052ea:	e786      	b.n	80051fa <_free_r+0x9a>
 80052ec:	e9c7 5504 	strd	r5, r5, [r7, #16]
 80052f0:	e9c5 0002 	strd	r0, r0, [r5, #8]
 80052f4:	606a      	str	r2, [r5, #4]
 80052f6:	5069      	str	r1, [r5, r1]
 80052f8:	e7b4      	b.n	8005264 <_free_r+0x104>
 80052fa:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80052fe:	d806      	bhi.n	800530e <_free_r+0x1ae>
 8005300:	0bcb      	lsrs	r3, r1, #15
 8005302:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005306:	00e4      	lsls	r4, r4, #3
 8005308:	f103 0277 	add.w	r2, r3, #119	; 0x77
 800530c:	e767      	b.n	80051de <_free_r+0x7e>
 800530e:	f240 5254 	movw	r2, #1364	; 0x554
 8005312:	4293      	cmp	r3, r2
 8005314:	d806      	bhi.n	8005324 <_free_r+0x1c4>
 8005316:	0c8b      	lsrs	r3, r1, #18
 8005318:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 800531c:	00e4      	lsls	r4, r4, #3
 800531e:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005322:	e75c      	b.n	80051de <_free_r+0x7e>
 8005324:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005328:	227e      	movs	r2, #126	; 0x7e
 800532a:	e758      	b.n	80051de <_free_r+0x7e>
 800532c:	f041 0201 	orr.w	r2, r1, #1
 8005330:	606a      	str	r2, [r5, #4]
 8005332:	6019      	str	r1, [r3, #0]
 8005334:	e796      	b.n	8005264 <_free_r+0x104>
 8005336:	bf00      	nop
 8005338:	2000044c 	.word	0x2000044c
 800533c:	20000454 	.word	0x20000454
 8005340:	20000858 	.word	0x20000858
 8005344:	20000aa0 	.word	0x20000aa0

08005348 <__sfvwrite_r>:
 8005348:	6893      	ldr	r3, [r2, #8]
 800534a:	2b00      	cmp	r3, #0
 800534c:	f000 80e4 	beq.w	8005518 <__sfvwrite_r+0x1d0>
 8005350:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005354:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005358:	b29b      	uxth	r3, r3
 800535a:	460c      	mov	r4, r1
 800535c:	0719      	lsls	r1, r3, #28
 800535e:	b083      	sub	sp, #12
 8005360:	4682      	mov	sl, r0
 8005362:	4690      	mov	r8, r2
 8005364:	d535      	bpl.n	80053d2 <__sfvwrite_r+0x8a>
 8005366:	6922      	ldr	r2, [r4, #16]
 8005368:	b39a      	cbz	r2, 80053d2 <__sfvwrite_r+0x8a>
 800536a:	f013 0202 	ands.w	r2, r3, #2
 800536e:	f8d8 6000 	ldr.w	r6, [r8]
 8005372:	d03d      	beq.n	80053f0 <__sfvwrite_r+0xa8>
 8005374:	2700      	movs	r7, #0
 8005376:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 800537a:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800537e:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005640 <__sfvwrite_r+0x2f8>
 8005382:	463d      	mov	r5, r7
 8005384:	454d      	cmp	r5, r9
 8005386:	462b      	mov	r3, r5
 8005388:	463a      	mov	r2, r7
 800538a:	bf28      	it	cs
 800538c:	464b      	movcs	r3, r9
 800538e:	4661      	mov	r1, ip
 8005390:	4650      	mov	r0, sl
 8005392:	b1d5      	cbz	r5, 80053ca <__sfvwrite_r+0x82>
 8005394:	47d8      	blx	fp
 8005396:	2800      	cmp	r0, #0
 8005398:	f340 80c6 	ble.w	8005528 <__sfvwrite_r+0x1e0>
 800539c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80053a0:	1a1b      	subs	r3, r3, r0
 80053a2:	4407      	add	r7, r0
 80053a4:	1a2d      	subs	r5, r5, r0
 80053a6:	f8c8 3008 	str.w	r3, [r8, #8]
 80053aa:	2b00      	cmp	r3, #0
 80053ac:	f000 80b0 	beq.w	8005510 <__sfvwrite_r+0x1c8>
 80053b0:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80053b4:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80053b8:	454d      	cmp	r5, r9
 80053ba:	462b      	mov	r3, r5
 80053bc:	463a      	mov	r2, r7
 80053be:	bf28      	it	cs
 80053c0:	464b      	movcs	r3, r9
 80053c2:	4661      	mov	r1, ip
 80053c4:	4650      	mov	r0, sl
 80053c6:	2d00      	cmp	r5, #0
 80053c8:	d1e4      	bne.n	8005394 <__sfvwrite_r+0x4c>
 80053ca:	e9d6 7500 	ldrd	r7, r5, [r6]
 80053ce:	3608      	adds	r6, #8
 80053d0:	e7d8      	b.n	8005384 <__sfvwrite_r+0x3c>
 80053d2:	4621      	mov	r1, r4
 80053d4:	4650      	mov	r0, sl
 80053d6:	f7fe fd03 	bl	8003de0 <__swsetup_r>
 80053da:	2800      	cmp	r0, #0
 80053dc:	f040 812a 	bne.w	8005634 <__sfvwrite_r+0x2ec>
 80053e0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80053e4:	f8d8 6000 	ldr.w	r6, [r8]
 80053e8:	b29b      	uxth	r3, r3
 80053ea:	f013 0202 	ands.w	r2, r3, #2
 80053ee:	d1c1      	bne.n	8005374 <__sfvwrite_r+0x2c>
 80053f0:	f013 0901 	ands.w	r9, r3, #1
 80053f4:	d15d      	bne.n	80054b2 <__sfvwrite_r+0x16a>
 80053f6:	68a7      	ldr	r7, [r4, #8]
 80053f8:	6820      	ldr	r0, [r4, #0]
 80053fa:	464d      	mov	r5, r9
 80053fc:	2d00      	cmp	r5, #0
 80053fe:	d054      	beq.n	80054aa <__sfvwrite_r+0x162>
 8005400:	059a      	lsls	r2, r3, #22
 8005402:	f140 809b 	bpl.w	800553c <__sfvwrite_r+0x1f4>
 8005406:	42af      	cmp	r7, r5
 8005408:	46bb      	mov	fp, r7
 800540a:	f200 80d8 	bhi.w	80055be <__sfvwrite_r+0x276>
 800540e:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005412:	d02f      	beq.n	8005474 <__sfvwrite_r+0x12c>
 8005414:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005418:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 800541c:	eba0 0b01 	sub.w	fp, r0, r1
 8005420:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005424:	1c68      	adds	r0, r5, #1
 8005426:	107f      	asrs	r7, r7, #1
 8005428:	4458      	add	r0, fp
 800542a:	42b8      	cmp	r0, r7
 800542c:	463a      	mov	r2, r7
 800542e:	bf84      	itt	hi
 8005430:	4607      	movhi	r7, r0
 8005432:	463a      	movhi	r2, r7
 8005434:	055b      	lsls	r3, r3, #21
 8005436:	f140 80d3 	bpl.w	80055e0 <__sfvwrite_r+0x298>
 800543a:	4611      	mov	r1, r2
 800543c:	4650      	mov	r0, sl
 800543e:	f000 f9b9 	bl	80057b4 <_malloc_r>
 8005442:	2800      	cmp	r0, #0
 8005444:	f000 80f0 	beq.w	8005628 <__sfvwrite_r+0x2e0>
 8005448:	465a      	mov	r2, fp
 800544a:	6921      	ldr	r1, [r4, #16]
 800544c:	9001      	str	r0, [sp, #4]
 800544e:	f7fb f857 	bl	8000500 <memcpy>
 8005452:	89a2      	ldrh	r2, [r4, #12]
 8005454:	9b01      	ldr	r3, [sp, #4]
 8005456:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 800545a:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800545e:	81a2      	strh	r2, [r4, #12]
 8005460:	eba7 020b 	sub.w	r2, r7, fp
 8005464:	eb03 000b 	add.w	r0, r3, fp
 8005468:	6167      	str	r7, [r4, #20]
 800546a:	6123      	str	r3, [r4, #16]
 800546c:	6020      	str	r0, [r4, #0]
 800546e:	60a2      	str	r2, [r4, #8]
 8005470:	462f      	mov	r7, r5
 8005472:	46ab      	mov	fp, r5
 8005474:	465a      	mov	r2, fp
 8005476:	4649      	mov	r1, r9
 8005478:	f000 fc40 	bl	8005cfc <memmove>
 800547c:	68a2      	ldr	r2, [r4, #8]
 800547e:	6823      	ldr	r3, [r4, #0]
 8005480:	1bd2      	subs	r2, r2, r7
 8005482:	445b      	add	r3, fp
 8005484:	462f      	mov	r7, r5
 8005486:	60a2      	str	r2, [r4, #8]
 8005488:	6023      	str	r3, [r4, #0]
 800548a:	2500      	movs	r5, #0
 800548c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005490:	1bdb      	subs	r3, r3, r7
 8005492:	44b9      	add	r9, r7
 8005494:	f8c8 3008 	str.w	r3, [r8, #8]
 8005498:	2b00      	cmp	r3, #0
 800549a:	d039      	beq.n	8005510 <__sfvwrite_r+0x1c8>
 800549c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80054a0:	68a7      	ldr	r7, [r4, #8]
 80054a2:	6820      	ldr	r0, [r4, #0]
 80054a4:	b29b      	uxth	r3, r3
 80054a6:	2d00      	cmp	r5, #0
 80054a8:	d1aa      	bne.n	8005400 <__sfvwrite_r+0xb8>
 80054aa:	e9d6 9500 	ldrd	r9, r5, [r6]
 80054ae:	3608      	adds	r6, #8
 80054b0:	e7a4      	b.n	80053fc <__sfvwrite_r+0xb4>
 80054b2:	4633      	mov	r3, r6
 80054b4:	4691      	mov	r9, r2
 80054b6:	4610      	mov	r0, r2
 80054b8:	4617      	mov	r7, r2
 80054ba:	464e      	mov	r6, r9
 80054bc:	469b      	mov	fp, r3
 80054be:	2f00      	cmp	r7, #0
 80054c0:	d06b      	beq.n	800559a <__sfvwrite_r+0x252>
 80054c2:	2800      	cmp	r0, #0
 80054c4:	d071      	beq.n	80055aa <__sfvwrite_r+0x262>
 80054c6:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 80054ca:	6820      	ldr	r0, [r4, #0]
 80054cc:	45b9      	cmp	r9, r7
 80054ce:	464b      	mov	r3, r9
 80054d0:	bf28      	it	cs
 80054d2:	463b      	movcs	r3, r7
 80054d4:	4288      	cmp	r0, r1
 80054d6:	d903      	bls.n	80054e0 <__sfvwrite_r+0x198>
 80054d8:	68a5      	ldr	r5, [r4, #8]
 80054da:	4415      	add	r5, r2
 80054dc:	42ab      	cmp	r3, r5
 80054de:	dc71      	bgt.n	80055c4 <__sfvwrite_r+0x27c>
 80054e0:	429a      	cmp	r2, r3
 80054e2:	f300 8093 	bgt.w	800560c <__sfvwrite_r+0x2c4>
 80054e6:	4613      	mov	r3, r2
 80054e8:	6a65      	ldr	r5, [r4, #36]	; 0x24
 80054ea:	69e1      	ldr	r1, [r4, #28]
 80054ec:	4632      	mov	r2, r6
 80054ee:	4650      	mov	r0, sl
 80054f0:	47a8      	blx	r5
 80054f2:	1e05      	subs	r5, r0, #0
 80054f4:	dd18      	ble.n	8005528 <__sfvwrite_r+0x1e0>
 80054f6:	ebb9 0905 	subs.w	r9, r9, r5
 80054fa:	d00f      	beq.n	800551c <__sfvwrite_r+0x1d4>
 80054fc:	2001      	movs	r0, #1
 80054fe:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005502:	1b5b      	subs	r3, r3, r5
 8005504:	442e      	add	r6, r5
 8005506:	1b7f      	subs	r7, r7, r5
 8005508:	f8c8 3008 	str.w	r3, [r8, #8]
 800550c:	2b00      	cmp	r3, #0
 800550e:	d1d6      	bne.n	80054be <__sfvwrite_r+0x176>
 8005510:	2000      	movs	r0, #0
 8005512:	b003      	add	sp, #12
 8005514:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005518:	2000      	movs	r0, #0
 800551a:	4770      	bx	lr
 800551c:	4621      	mov	r1, r4
 800551e:	4650      	mov	r0, sl
 8005520:	f7ff fd20 	bl	8004f64 <_fflush_r>
 8005524:	2800      	cmp	r0, #0
 8005526:	d0ea      	beq.n	80054fe <__sfvwrite_r+0x1b6>
 8005528:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800552c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005530:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005534:	81a3      	strh	r3, [r4, #12]
 8005536:	b003      	add	sp, #12
 8005538:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800553c:	6923      	ldr	r3, [r4, #16]
 800553e:	4283      	cmp	r3, r0
 8005540:	d315      	bcc.n	800556e <__sfvwrite_r+0x226>
 8005542:	6961      	ldr	r1, [r4, #20]
 8005544:	42a9      	cmp	r1, r5
 8005546:	d812      	bhi.n	800556e <__sfvwrite_r+0x226>
 8005548:	4b3c      	ldr	r3, [pc, #240]	; (800563c <__sfvwrite_r+0x2f4>)
 800554a:	6a67      	ldr	r7, [r4, #36]	; 0x24
 800554c:	429d      	cmp	r5, r3
 800554e:	bf94      	ite	ls
 8005550:	462b      	movls	r3, r5
 8005552:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005556:	464a      	mov	r2, r9
 8005558:	fb93 f3f1 	sdiv	r3, r3, r1
 800555c:	4650      	mov	r0, sl
 800555e:	fb01 f303 	mul.w	r3, r1, r3
 8005562:	69e1      	ldr	r1, [r4, #28]
 8005564:	47b8      	blx	r7
 8005566:	1e07      	subs	r7, r0, #0
 8005568:	ddde      	ble.n	8005528 <__sfvwrite_r+0x1e0>
 800556a:	1bed      	subs	r5, r5, r7
 800556c:	e78e      	b.n	800548c <__sfvwrite_r+0x144>
 800556e:	42af      	cmp	r7, r5
 8005570:	bf28      	it	cs
 8005572:	462f      	movcs	r7, r5
 8005574:	463a      	mov	r2, r7
 8005576:	4649      	mov	r1, r9
 8005578:	f000 fbc0 	bl	8005cfc <memmove>
 800557c:	68a3      	ldr	r3, [r4, #8]
 800557e:	6822      	ldr	r2, [r4, #0]
 8005580:	1bdb      	subs	r3, r3, r7
 8005582:	443a      	add	r2, r7
 8005584:	60a3      	str	r3, [r4, #8]
 8005586:	6022      	str	r2, [r4, #0]
 8005588:	2b00      	cmp	r3, #0
 800558a:	d1ee      	bne.n	800556a <__sfvwrite_r+0x222>
 800558c:	4621      	mov	r1, r4
 800558e:	4650      	mov	r0, sl
 8005590:	f7ff fce8 	bl	8004f64 <_fflush_r>
 8005594:	2800      	cmp	r0, #0
 8005596:	d0e8      	beq.n	800556a <__sfvwrite_r+0x222>
 8005598:	e7c6      	b.n	8005528 <__sfvwrite_r+0x1e0>
 800559a:	f10b 0308 	add.w	r3, fp, #8
 800559e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 80055a2:	469b      	mov	fp, r3
 80055a4:	3308      	adds	r3, #8
 80055a6:	2f00      	cmp	r7, #0
 80055a8:	d0f9      	beq.n	800559e <__sfvwrite_r+0x256>
 80055aa:	463a      	mov	r2, r7
 80055ac:	210a      	movs	r1, #10
 80055ae:	4630      	mov	r0, r6
 80055b0:	f7fb f8b6 	bl	8000720 <memchr>
 80055b4:	b338      	cbz	r0, 8005606 <__sfvwrite_r+0x2be>
 80055b6:	3001      	adds	r0, #1
 80055b8:	eba0 0906 	sub.w	r9, r0, r6
 80055bc:	e783      	b.n	80054c6 <__sfvwrite_r+0x17e>
 80055be:	462f      	mov	r7, r5
 80055c0:	46ab      	mov	fp, r5
 80055c2:	e757      	b.n	8005474 <__sfvwrite_r+0x12c>
 80055c4:	4631      	mov	r1, r6
 80055c6:	462a      	mov	r2, r5
 80055c8:	f000 fb98 	bl	8005cfc <memmove>
 80055cc:	6823      	ldr	r3, [r4, #0]
 80055ce:	442b      	add	r3, r5
 80055d0:	6023      	str	r3, [r4, #0]
 80055d2:	4621      	mov	r1, r4
 80055d4:	4650      	mov	r0, sl
 80055d6:	f7ff fcc5 	bl	8004f64 <_fflush_r>
 80055da:	2800      	cmp	r0, #0
 80055dc:	d08b      	beq.n	80054f6 <__sfvwrite_r+0x1ae>
 80055de:	e7a3      	b.n	8005528 <__sfvwrite_r+0x1e0>
 80055e0:	4650      	mov	r0, sl
 80055e2:	f000 ff05 	bl	80063f0 <_realloc_r>
 80055e6:	4603      	mov	r3, r0
 80055e8:	2800      	cmp	r0, #0
 80055ea:	f47f af39 	bne.w	8005460 <__sfvwrite_r+0x118>
 80055ee:	6921      	ldr	r1, [r4, #16]
 80055f0:	4650      	mov	r0, sl
 80055f2:	f7ff fdb5 	bl	8005160 <_free_r>
 80055f6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80055fa:	220c      	movs	r2, #12
 80055fc:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005600:	f8ca 2000 	str.w	r2, [sl]
 8005604:	e792      	b.n	800552c <__sfvwrite_r+0x1e4>
 8005606:	f107 0901 	add.w	r9, r7, #1
 800560a:	e75c      	b.n	80054c6 <__sfvwrite_r+0x17e>
 800560c:	461a      	mov	r2, r3
 800560e:	4631      	mov	r1, r6
 8005610:	9301      	str	r3, [sp, #4]
 8005612:	f000 fb73 	bl	8005cfc <memmove>
 8005616:	9b01      	ldr	r3, [sp, #4]
 8005618:	68a1      	ldr	r1, [r4, #8]
 800561a:	6822      	ldr	r2, [r4, #0]
 800561c:	1ac9      	subs	r1, r1, r3
 800561e:	441a      	add	r2, r3
 8005620:	60a1      	str	r1, [r4, #8]
 8005622:	6022      	str	r2, [r4, #0]
 8005624:	461d      	mov	r5, r3
 8005626:	e766      	b.n	80054f6 <__sfvwrite_r+0x1ae>
 8005628:	230c      	movs	r3, #12
 800562a:	f8ca 3000 	str.w	r3, [sl]
 800562e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005632:	e77b      	b.n	800552c <__sfvwrite_r+0x1e4>
 8005634:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005638:	e76b      	b.n	8005512 <__sfvwrite_r+0x1ca>
 800563a:	bf00      	nop
 800563c:	7ffffffe 	.word	0x7ffffffe
 8005640:	7ffffc00 	.word	0x7ffffc00

08005644 <_fwalk_reent>:
 8005644:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005648:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 800564c:	d01f      	beq.n	800568e <_fwalk_reent+0x4a>
 800564e:	4688      	mov	r8, r1
 8005650:	4606      	mov	r6, r0
 8005652:	f04f 0900 	mov.w	r9, #0
 8005656:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 800565a:	3d01      	subs	r5, #1
 800565c:	d411      	bmi.n	8005682 <_fwalk_reent+0x3e>
 800565e:	89a3      	ldrh	r3, [r4, #12]
 8005660:	2b01      	cmp	r3, #1
 8005662:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005666:	4621      	mov	r1, r4
 8005668:	4630      	mov	r0, r6
 800566a:	d906      	bls.n	800567a <_fwalk_reent+0x36>
 800566c:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005670:	3301      	adds	r3, #1
 8005672:	d002      	beq.n	800567a <_fwalk_reent+0x36>
 8005674:	47c0      	blx	r8
 8005676:	ea49 0900 	orr.w	r9, r9, r0
 800567a:	1c6b      	adds	r3, r5, #1
 800567c:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005680:	d1ed      	bne.n	800565e <_fwalk_reent+0x1a>
 8005682:	683f      	ldr	r7, [r7, #0]
 8005684:	2f00      	cmp	r7, #0
 8005686:	d1e6      	bne.n	8005656 <_fwalk_reent+0x12>
 8005688:	4648      	mov	r0, r9
 800568a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800568e:	46b9      	mov	r9, r7
 8005690:	4648      	mov	r0, r9
 8005692:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005696:	bf00      	nop

08005698 <_localeconv_r>:
 8005698:	4a04      	ldr	r2, [pc, #16]	; (80056ac <_localeconv_r+0x14>)
 800569a:	4b05      	ldr	r3, [pc, #20]	; (80056b0 <_localeconv_r+0x18>)
 800569c:	6812      	ldr	r2, [r2, #0]
 800569e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 80056a0:	2800      	cmp	r0, #0
 80056a2:	bf08      	it	eq
 80056a4:	4618      	moveq	r0, r3
 80056a6:	30f0      	adds	r0, #240	; 0xf0
 80056a8:	4770      	bx	lr
 80056aa:	bf00      	nop
 80056ac:	20000018 	.word	0x20000018
 80056b0:	2000085c 	.word	0x2000085c

080056b4 <__retarget_lock_init_recursive>:
 80056b4:	4770      	bx	lr
 80056b6:	bf00      	nop

080056b8 <__retarget_lock_close_recursive>:
 80056b8:	4770      	bx	lr
 80056ba:	bf00      	nop

080056bc <__retarget_lock_acquire_recursive>:
 80056bc:	4770      	bx	lr
 80056be:	bf00      	nop

080056c0 <__retarget_lock_release_recursive>:
 80056c0:	4770      	bx	lr
 80056c2:	bf00      	nop

080056c4 <__swhatbuf_r>:
 80056c4:	b570      	push	{r4, r5, r6, lr}
 80056c6:	460c      	mov	r4, r1
 80056c8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80056cc:	2900      	cmp	r1, #0
 80056ce:	b096      	sub	sp, #88	; 0x58
 80056d0:	4615      	mov	r5, r2
 80056d2:	461e      	mov	r6, r3
 80056d4:	da0f      	bge.n	80056f6 <__swhatbuf_r+0x32>
 80056d6:	89a2      	ldrh	r2, [r4, #12]
 80056d8:	2300      	movs	r3, #0
 80056da:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 80056de:	6033      	str	r3, [r6, #0]
 80056e0:	d104      	bne.n	80056ec <__swhatbuf_r+0x28>
 80056e2:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80056e6:	602b      	str	r3, [r5, #0]
 80056e8:	b016      	add	sp, #88	; 0x58
 80056ea:	bd70      	pop	{r4, r5, r6, pc}
 80056ec:	2240      	movs	r2, #64	; 0x40
 80056ee:	4618      	mov	r0, r3
 80056f0:	602a      	str	r2, [r5, #0]
 80056f2:	b016      	add	sp, #88	; 0x58
 80056f4:	bd70      	pop	{r4, r5, r6, pc}
 80056f6:	466a      	mov	r2, sp
 80056f8:	f001 fad0 	bl	8006c9c <_fstat_r>
 80056fc:	2800      	cmp	r0, #0
 80056fe:	dbea      	blt.n	80056d6 <__swhatbuf_r+0x12>
 8005700:	9b01      	ldr	r3, [sp, #4]
 8005702:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005706:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 800570a:	fab3 f383 	clz	r3, r3
 800570e:	095b      	lsrs	r3, r3, #5
 8005710:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005714:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005718:	6033      	str	r3, [r6, #0]
 800571a:	602a      	str	r2, [r5, #0]
 800571c:	b016      	add	sp, #88	; 0x58
 800571e:	bd70      	pop	{r4, r5, r6, pc}

08005720 <__smakebuf_r>:
 8005720:	898a      	ldrh	r2, [r1, #12]
 8005722:	0792      	lsls	r2, r2, #30
 8005724:	460b      	mov	r3, r1
 8005726:	d506      	bpl.n	8005736 <__smakebuf_r+0x16>
 8005728:	f101 0243 	add.w	r2, r1, #67	; 0x43
 800572c:	2101      	movs	r1, #1
 800572e:	601a      	str	r2, [r3, #0]
 8005730:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005734:	4770      	bx	lr
 8005736:	b570      	push	{r4, r5, r6, lr}
 8005738:	b082      	sub	sp, #8
 800573a:	ab01      	add	r3, sp, #4
 800573c:	466a      	mov	r2, sp
 800573e:	460c      	mov	r4, r1
 8005740:	4605      	mov	r5, r0
 8005742:	f7ff ffbf 	bl	80056c4 <__swhatbuf_r>
 8005746:	9900      	ldr	r1, [sp, #0]
 8005748:	4606      	mov	r6, r0
 800574a:	4628      	mov	r0, r5
 800574c:	f000 f832 	bl	80057b4 <_malloc_r>
 8005750:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005754:	b1d8      	cbz	r0, 800578e <__smakebuf_r+0x6e>
 8005756:	4916      	ldr	r1, [pc, #88]	; (80057b0 <__smakebuf_r+0x90>)
 8005758:	63e9      	str	r1, [r5, #60]	; 0x3c
 800575a:	9a01      	ldr	r2, [sp, #4]
 800575c:	9900      	ldr	r1, [sp, #0]
 800575e:	6020      	str	r0, [r4, #0]
 8005760:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005764:	81a3      	strh	r3, [r4, #12]
 8005766:	e9c4 0104 	strd	r0, r1, [r4, #16]
 800576a:	b91a      	cbnz	r2, 8005774 <__smakebuf_r+0x54>
 800576c:	4333      	orrs	r3, r6
 800576e:	81a3      	strh	r3, [r4, #12]
 8005770:	b002      	add	sp, #8
 8005772:	bd70      	pop	{r4, r5, r6, pc}
 8005774:	4628      	mov	r0, r5
 8005776:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800577a:	f001 faa3 	bl	8006cc4 <_isatty_r>
 800577e:	b1a0      	cbz	r0, 80057aa <__smakebuf_r+0x8a>
 8005780:	89a3      	ldrh	r3, [r4, #12]
 8005782:	f023 0303 	bic.w	r3, r3, #3
 8005786:	f043 0301 	orr.w	r3, r3, #1
 800578a:	b21b      	sxth	r3, r3
 800578c:	e7ee      	b.n	800576c <__smakebuf_r+0x4c>
 800578e:	059a      	lsls	r2, r3, #22
 8005790:	d4ee      	bmi.n	8005770 <__smakebuf_r+0x50>
 8005792:	f023 0303 	bic.w	r3, r3, #3
 8005796:	f104 0243 	add.w	r2, r4, #67	; 0x43
 800579a:	f043 0302 	orr.w	r3, r3, #2
 800579e:	2101      	movs	r1, #1
 80057a0:	81a3      	strh	r3, [r4, #12]
 80057a2:	6022      	str	r2, [r4, #0]
 80057a4:	e9c4 2104 	strd	r2, r1, [r4, #16]
 80057a8:	e7e2      	b.n	8005770 <__smakebuf_r+0x50>
 80057aa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80057ae:	e7dd      	b.n	800576c <__smakebuf_r+0x4c>
 80057b0:	08005011 	.word	0x08005011

080057b4 <_malloc_r>:
 80057b4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80057b8:	f101 050b 	add.w	r5, r1, #11
 80057bc:	2d16      	cmp	r5, #22
 80057be:	b083      	sub	sp, #12
 80057c0:	4606      	mov	r6, r0
 80057c2:	d823      	bhi.n	800580c <_malloc_r+0x58>
 80057c4:	2910      	cmp	r1, #16
 80057c6:	f200 80b9 	bhi.w	800593c <_malloc_r+0x188>
 80057ca:	f000 fafb 	bl	8005dc4 <__malloc_lock>
 80057ce:	2510      	movs	r5, #16
 80057d0:	2318      	movs	r3, #24
 80057d2:	2002      	movs	r0, #2
 80057d4:	4fc5      	ldr	r7, [pc, #788]	; (8005aec <_malloc_r+0x338>)
 80057d6:	443b      	add	r3, r7
 80057d8:	f1a3 0208 	sub.w	r2, r3, #8
 80057dc:	685c      	ldr	r4, [r3, #4]
 80057de:	4294      	cmp	r4, r2
 80057e0:	f000 8166 	beq.w	8005ab0 <_malloc_r+0x2fc>
 80057e4:	6863      	ldr	r3, [r4, #4]
 80057e6:	f023 0303 	bic.w	r3, r3, #3
 80057ea:	4423      	add	r3, r4
 80057ec:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 80057f0:	685a      	ldr	r2, [r3, #4]
 80057f2:	60e9      	str	r1, [r5, #12]
 80057f4:	f042 0201 	orr.w	r2, r2, #1
 80057f8:	608d      	str	r5, [r1, #8]
 80057fa:	4630      	mov	r0, r6
 80057fc:	605a      	str	r2, [r3, #4]
 80057fe:	f000 fae7 	bl	8005dd0 <__malloc_unlock>
 8005802:	3408      	adds	r4, #8
 8005804:	4620      	mov	r0, r4
 8005806:	b003      	add	sp, #12
 8005808:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800580c:	f035 0507 	bics.w	r5, r5, #7
 8005810:	f100 8094 	bmi.w	800593c <_malloc_r+0x188>
 8005814:	42a9      	cmp	r1, r5
 8005816:	f200 8091 	bhi.w	800593c <_malloc_r+0x188>
 800581a:	f000 fad3 	bl	8005dc4 <__malloc_lock>
 800581e:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005822:	f0c0 8183 	bcc.w	8005b2c <_malloc_r+0x378>
 8005826:	0a6b      	lsrs	r3, r5, #9
 8005828:	f000 808f 	beq.w	800594a <_malloc_r+0x196>
 800582c:	2b04      	cmp	r3, #4
 800582e:	f200 8146 	bhi.w	8005abe <_malloc_r+0x30a>
 8005832:	09ab      	lsrs	r3, r5, #6
 8005834:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005838:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 800583c:	00c3      	lsls	r3, r0, #3
 800583e:	4fab      	ldr	r7, [pc, #684]	; (8005aec <_malloc_r+0x338>)
 8005840:	443b      	add	r3, r7
 8005842:	f1a3 0108 	sub.w	r1, r3, #8
 8005846:	685c      	ldr	r4, [r3, #4]
 8005848:	42a1      	cmp	r1, r4
 800584a:	d106      	bne.n	800585a <_malloc_r+0xa6>
 800584c:	e00c      	b.n	8005868 <_malloc_r+0xb4>
 800584e:	2a00      	cmp	r2, #0
 8005850:	f280 811d 	bge.w	8005a8e <_malloc_r+0x2da>
 8005854:	68e4      	ldr	r4, [r4, #12]
 8005856:	42a1      	cmp	r1, r4
 8005858:	d006      	beq.n	8005868 <_malloc_r+0xb4>
 800585a:	6863      	ldr	r3, [r4, #4]
 800585c:	f023 0303 	bic.w	r3, r3, #3
 8005860:	1b5a      	subs	r2, r3, r5
 8005862:	2a0f      	cmp	r2, #15
 8005864:	ddf3      	ble.n	800584e <_malloc_r+0x9a>
 8005866:	4660      	mov	r0, ip
 8005868:	693c      	ldr	r4, [r7, #16]
 800586a:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005b00 <_malloc_r+0x34c>
 800586e:	4564      	cmp	r4, ip
 8005870:	d071      	beq.n	8005956 <_malloc_r+0x1a2>
 8005872:	6863      	ldr	r3, [r4, #4]
 8005874:	f023 0303 	bic.w	r3, r3, #3
 8005878:	1b5a      	subs	r2, r3, r5
 800587a:	2a0f      	cmp	r2, #15
 800587c:	f300 8144 	bgt.w	8005b08 <_malloc_r+0x354>
 8005880:	2a00      	cmp	r2, #0
 8005882:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005886:	f280 8126 	bge.w	8005ad6 <_malloc_r+0x322>
 800588a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800588e:	f080 8169 	bcs.w	8005b64 <_malloc_r+0x3b0>
 8005892:	08db      	lsrs	r3, r3, #3
 8005894:	1c59      	adds	r1, r3, #1
 8005896:	687a      	ldr	r2, [r7, #4]
 8005898:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 800589c:	f8c4 8008 	str.w	r8, [r4, #8]
 80058a0:	f04f 0e01 	mov.w	lr, #1
 80058a4:	109b      	asrs	r3, r3, #2
 80058a6:	fa0e f303 	lsl.w	r3, lr, r3
 80058aa:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 80058ae:	4313      	orrs	r3, r2
 80058b0:	f1ae 0208 	sub.w	r2, lr, #8
 80058b4:	60e2      	str	r2, [r4, #12]
 80058b6:	607b      	str	r3, [r7, #4]
 80058b8:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 80058bc:	f8c8 400c 	str.w	r4, [r8, #12]
 80058c0:	1082      	asrs	r2, r0, #2
 80058c2:	2401      	movs	r4, #1
 80058c4:	4094      	lsls	r4, r2
 80058c6:	429c      	cmp	r4, r3
 80058c8:	d84b      	bhi.n	8005962 <_malloc_r+0x1ae>
 80058ca:	421c      	tst	r4, r3
 80058cc:	d106      	bne.n	80058dc <_malloc_r+0x128>
 80058ce:	f020 0003 	bic.w	r0, r0, #3
 80058d2:	0064      	lsls	r4, r4, #1
 80058d4:	421c      	tst	r4, r3
 80058d6:	f100 0004 	add.w	r0, r0, #4
 80058da:	d0fa      	beq.n	80058d2 <_malloc_r+0x11e>
 80058dc:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 80058e0:	46ce      	mov	lr, r9
 80058e2:	4680      	mov	r8, r0
 80058e4:	f8de 300c 	ldr.w	r3, [lr, #12]
 80058e8:	459e      	cmp	lr, r3
 80058ea:	d107      	bne.n	80058fc <_malloc_r+0x148>
 80058ec:	e122      	b.n	8005b34 <_malloc_r+0x380>
 80058ee:	2a00      	cmp	r2, #0
 80058f0:	f280 8129 	bge.w	8005b46 <_malloc_r+0x392>
 80058f4:	68db      	ldr	r3, [r3, #12]
 80058f6:	459e      	cmp	lr, r3
 80058f8:	f000 811c 	beq.w	8005b34 <_malloc_r+0x380>
 80058fc:	6859      	ldr	r1, [r3, #4]
 80058fe:	f021 0103 	bic.w	r1, r1, #3
 8005902:	1b4a      	subs	r2, r1, r5
 8005904:	2a0f      	cmp	r2, #15
 8005906:	ddf2      	ble.n	80058ee <_malloc_r+0x13a>
 8005908:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 800590c:	195c      	adds	r4, r3, r5
 800590e:	f045 0501 	orr.w	r5, r5, #1
 8005912:	605d      	str	r5, [r3, #4]
 8005914:	f042 0501 	orr.w	r5, r2, #1
 8005918:	f8c8 e00c 	str.w	lr, [r8, #12]
 800591c:	4630      	mov	r0, r6
 800591e:	f8ce 8008 	str.w	r8, [lr, #8]
 8005922:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005926:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 800592a:	6065      	str	r5, [r4, #4]
 800592c:	505a      	str	r2, [r3, r1]
 800592e:	9301      	str	r3, [sp, #4]
 8005930:	f000 fa4e 	bl	8005dd0 <__malloc_unlock>
 8005934:	9b01      	ldr	r3, [sp, #4]
 8005936:	f103 0408 	add.w	r4, r3, #8
 800593a:	e763      	b.n	8005804 <_malloc_r+0x50>
 800593c:	2400      	movs	r4, #0
 800593e:	230c      	movs	r3, #12
 8005940:	4620      	mov	r0, r4
 8005942:	6033      	str	r3, [r6, #0]
 8005944:	b003      	add	sp, #12
 8005946:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800594a:	f44f 7300 	mov.w	r3, #512	; 0x200
 800594e:	2040      	movs	r0, #64	; 0x40
 8005950:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005954:	e773      	b.n	800583e <_malloc_r+0x8a>
 8005956:	687b      	ldr	r3, [r7, #4]
 8005958:	1082      	asrs	r2, r0, #2
 800595a:	2401      	movs	r4, #1
 800595c:	4094      	lsls	r4, r2
 800595e:	429c      	cmp	r4, r3
 8005960:	d9b3      	bls.n	80058ca <_malloc_r+0x116>
 8005962:	68bc      	ldr	r4, [r7, #8]
 8005964:	6863      	ldr	r3, [r4, #4]
 8005966:	f023 0903 	bic.w	r9, r3, #3
 800596a:	45a9      	cmp	r9, r5
 800596c:	d303      	bcc.n	8005976 <_malloc_r+0x1c2>
 800596e:	eba9 0305 	sub.w	r3, r9, r5
 8005972:	2b0f      	cmp	r3, #15
 8005974:	dc7b      	bgt.n	8005a6e <_malloc_r+0x2ba>
 8005976:	4b5e      	ldr	r3, [pc, #376]	; (8005af0 <_malloc_r+0x33c>)
 8005978:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005b04 <_malloc_r+0x350>
 800597c:	681a      	ldr	r2, [r3, #0]
 800597e:	f8da 3000 	ldr.w	r3, [sl]
 8005982:	3301      	adds	r3, #1
 8005984:	eb05 0802 	add.w	r8, r5, r2
 8005988:	f000 8148 	beq.w	8005c1c <_malloc_r+0x468>
 800598c:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005990:	f108 080f 	add.w	r8, r8, #15
 8005994:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005998:	f028 080f 	bic.w	r8, r8, #15
 800599c:	4641      	mov	r1, r8
 800599e:	4630      	mov	r0, r6
 80059a0:	f000 ff08 	bl	80067b4 <_sbrk_r>
 80059a4:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 80059a8:	4683      	mov	fp, r0
 80059aa:	f000 8104 	beq.w	8005bb6 <_malloc_r+0x402>
 80059ae:	eb04 0009 	add.w	r0, r4, r9
 80059b2:	4558      	cmp	r0, fp
 80059b4:	f200 80fd 	bhi.w	8005bb2 <_malloc_r+0x3fe>
 80059b8:	4a4e      	ldr	r2, [pc, #312]	; (8005af4 <_malloc_r+0x340>)
 80059ba:	6813      	ldr	r3, [r2, #0]
 80059bc:	4443      	add	r3, r8
 80059be:	6013      	str	r3, [r2, #0]
 80059c0:	f000 814d 	beq.w	8005c5e <_malloc_r+0x4aa>
 80059c4:	f8da 1000 	ldr.w	r1, [sl]
 80059c8:	3101      	adds	r1, #1
 80059ca:	bf1b      	ittet	ne
 80059cc:	ebab 0000 	subne.w	r0, fp, r0
 80059d0:	181b      	addne	r3, r3, r0
 80059d2:	f8ca b000 	streq.w	fp, [sl]
 80059d6:	6013      	strne	r3, [r2, #0]
 80059d8:	f01b 0307 	ands.w	r3, fp, #7
 80059dc:	f000 8134 	beq.w	8005c48 <_malloc_r+0x494>
 80059e0:	f1c3 0108 	rsb	r1, r3, #8
 80059e4:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 80059e8:	448b      	add	fp, r1
 80059ea:	3308      	adds	r3, #8
 80059ec:	44d8      	add	r8, fp
 80059ee:	f3c8 080b 	ubfx	r8, r8, #0, #12
 80059f2:	eba3 0808 	sub.w	r8, r3, r8
 80059f6:	4641      	mov	r1, r8
 80059f8:	4630      	mov	r0, r6
 80059fa:	9201      	str	r2, [sp, #4]
 80059fc:	f000 feda 	bl	80067b4 <_sbrk_r>
 8005a00:	1c43      	adds	r3, r0, #1
 8005a02:	9a01      	ldr	r2, [sp, #4]
 8005a04:	f000 8146 	beq.w	8005c94 <_malloc_r+0x4e0>
 8005a08:	eba0 010b 	sub.w	r1, r0, fp
 8005a0c:	4441      	add	r1, r8
 8005a0e:	f041 0101 	orr.w	r1, r1, #1
 8005a12:	6813      	ldr	r3, [r2, #0]
 8005a14:	f8c7 b008 	str.w	fp, [r7, #8]
 8005a18:	4443      	add	r3, r8
 8005a1a:	42bc      	cmp	r4, r7
 8005a1c:	f8cb 1004 	str.w	r1, [fp, #4]
 8005a20:	6013      	str	r3, [r2, #0]
 8005a22:	d015      	beq.n	8005a50 <_malloc_r+0x29c>
 8005a24:	f1b9 0f0f 	cmp.w	r9, #15
 8005a28:	f240 8130 	bls.w	8005c8c <_malloc_r+0x4d8>
 8005a2c:	6860      	ldr	r0, [r4, #4]
 8005a2e:	f1a9 010c 	sub.w	r1, r9, #12
 8005a32:	f021 0107 	bic.w	r1, r1, #7
 8005a36:	f000 0001 	and.w	r0, r0, #1
 8005a3a:	eb04 0c01 	add.w	ip, r4, r1
 8005a3e:	4308      	orrs	r0, r1
 8005a40:	f04f 0e05 	mov.w	lr, #5
 8005a44:	290f      	cmp	r1, #15
 8005a46:	6060      	str	r0, [r4, #4]
 8005a48:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005a4c:	f200 813a 	bhi.w	8005cc4 <_malloc_r+0x510>
 8005a50:	4a29      	ldr	r2, [pc, #164]	; (8005af8 <_malloc_r+0x344>)
 8005a52:	482a      	ldr	r0, [pc, #168]	; (8005afc <_malloc_r+0x348>)
 8005a54:	6811      	ldr	r1, [r2, #0]
 8005a56:	68bc      	ldr	r4, [r7, #8]
 8005a58:	428b      	cmp	r3, r1
 8005a5a:	6801      	ldr	r1, [r0, #0]
 8005a5c:	bf88      	it	hi
 8005a5e:	6013      	strhi	r3, [r2, #0]
 8005a60:	6862      	ldr	r2, [r4, #4]
 8005a62:	428b      	cmp	r3, r1
 8005a64:	f022 0203 	bic.w	r2, r2, #3
 8005a68:	bf88      	it	hi
 8005a6a:	6003      	strhi	r3, [r0, #0]
 8005a6c:	e0a7      	b.n	8005bbe <_malloc_r+0x40a>
 8005a6e:	1962      	adds	r2, r4, r5
 8005a70:	f043 0301 	orr.w	r3, r3, #1
 8005a74:	f045 0501 	orr.w	r5, r5, #1
 8005a78:	6065      	str	r5, [r4, #4]
 8005a7a:	4630      	mov	r0, r6
 8005a7c:	60ba      	str	r2, [r7, #8]
 8005a7e:	6053      	str	r3, [r2, #4]
 8005a80:	f000 f9a6 	bl	8005dd0 <__malloc_unlock>
 8005a84:	3408      	adds	r4, #8
 8005a86:	4620      	mov	r0, r4
 8005a88:	b003      	add	sp, #12
 8005a8a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a8e:	4423      	add	r3, r4
 8005a90:	68e1      	ldr	r1, [r4, #12]
 8005a92:	685a      	ldr	r2, [r3, #4]
 8005a94:	68a5      	ldr	r5, [r4, #8]
 8005a96:	f042 0201 	orr.w	r2, r2, #1
 8005a9a:	60e9      	str	r1, [r5, #12]
 8005a9c:	4630      	mov	r0, r6
 8005a9e:	608d      	str	r5, [r1, #8]
 8005aa0:	605a      	str	r2, [r3, #4]
 8005aa2:	f000 f995 	bl	8005dd0 <__malloc_unlock>
 8005aa6:	3408      	adds	r4, #8
 8005aa8:	4620      	mov	r0, r4
 8005aaa:	b003      	add	sp, #12
 8005aac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ab0:	68dc      	ldr	r4, [r3, #12]
 8005ab2:	42a3      	cmp	r3, r4
 8005ab4:	bf08      	it	eq
 8005ab6:	3002      	addeq	r0, #2
 8005ab8:	f43f aed6 	beq.w	8005868 <_malloc_r+0xb4>
 8005abc:	e692      	b.n	80057e4 <_malloc_r+0x30>
 8005abe:	2b14      	cmp	r3, #20
 8005ac0:	d971      	bls.n	8005ba6 <_malloc_r+0x3f2>
 8005ac2:	2b54      	cmp	r3, #84	; 0x54
 8005ac4:	f200 80ad 	bhi.w	8005c22 <_malloc_r+0x46e>
 8005ac8:	0b2b      	lsrs	r3, r5, #12
 8005aca:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005ace:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005ad2:	00c3      	lsls	r3, r0, #3
 8005ad4:	e6b3      	b.n	800583e <_malloc_r+0x8a>
 8005ad6:	4423      	add	r3, r4
 8005ad8:	4630      	mov	r0, r6
 8005ada:	685a      	ldr	r2, [r3, #4]
 8005adc:	f042 0201 	orr.w	r2, r2, #1
 8005ae0:	605a      	str	r2, [r3, #4]
 8005ae2:	3408      	adds	r4, #8
 8005ae4:	f000 f974 	bl	8005dd0 <__malloc_unlock>
 8005ae8:	e68c      	b.n	8005804 <_malloc_r+0x50>
 8005aea:	bf00      	nop
 8005aec:	2000044c 	.word	0x2000044c
 8005af0:	20000aa0 	.word	0x20000aa0
 8005af4:	20000a70 	.word	0x20000a70
 8005af8:	20000a98 	.word	0x20000a98
 8005afc:	20000a9c 	.word	0x20000a9c
 8005b00:	20000454 	.word	0x20000454
 8005b04:	20000854 	.word	0x20000854
 8005b08:	1961      	adds	r1, r4, r5
 8005b0a:	f045 0e01 	orr.w	lr, r5, #1
 8005b0e:	f042 0501 	orr.w	r5, r2, #1
 8005b12:	f8c4 e004 	str.w	lr, [r4, #4]
 8005b16:	4630      	mov	r0, r6
 8005b18:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005b1c:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005b20:	604d      	str	r5, [r1, #4]
 8005b22:	50e2      	str	r2, [r4, r3]
 8005b24:	f000 f954 	bl	8005dd0 <__malloc_unlock>
 8005b28:	3408      	adds	r4, #8
 8005b2a:	e66b      	b.n	8005804 <_malloc_r+0x50>
 8005b2c:	08e8      	lsrs	r0, r5, #3
 8005b2e:	f105 0308 	add.w	r3, r5, #8
 8005b32:	e64f      	b.n	80057d4 <_malloc_r+0x20>
 8005b34:	f108 0801 	add.w	r8, r8, #1
 8005b38:	f018 0f03 	tst.w	r8, #3
 8005b3c:	f10e 0e08 	add.w	lr, lr, #8
 8005b40:	f47f aed0 	bne.w	80058e4 <_malloc_r+0x130>
 8005b44:	e052      	b.n	8005bec <_malloc_r+0x438>
 8005b46:	4419      	add	r1, r3
 8005b48:	461c      	mov	r4, r3
 8005b4a:	684a      	ldr	r2, [r1, #4]
 8005b4c:	68db      	ldr	r3, [r3, #12]
 8005b4e:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005b52:	f042 0201 	orr.w	r2, r2, #1
 8005b56:	604a      	str	r2, [r1, #4]
 8005b58:	4630      	mov	r0, r6
 8005b5a:	60eb      	str	r3, [r5, #12]
 8005b5c:	609d      	str	r5, [r3, #8]
 8005b5e:	f000 f937 	bl	8005dd0 <__malloc_unlock>
 8005b62:	e64f      	b.n	8005804 <_malloc_r+0x50>
 8005b64:	0a5a      	lsrs	r2, r3, #9
 8005b66:	2a04      	cmp	r2, #4
 8005b68:	d935      	bls.n	8005bd6 <_malloc_r+0x422>
 8005b6a:	2a14      	cmp	r2, #20
 8005b6c:	d86f      	bhi.n	8005c4e <_malloc_r+0x49a>
 8005b6e:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005b72:	00c9      	lsls	r1, r1, #3
 8005b74:	325b      	adds	r2, #91	; 0x5b
 8005b76:	eb07 0e01 	add.w	lr, r7, r1
 8005b7a:	5879      	ldr	r1, [r7, r1]
 8005b7c:	f1ae 0e08 	sub.w	lr, lr, #8
 8005b80:	458e      	cmp	lr, r1
 8005b82:	d058      	beq.n	8005c36 <_malloc_r+0x482>
 8005b84:	684a      	ldr	r2, [r1, #4]
 8005b86:	f022 0203 	bic.w	r2, r2, #3
 8005b8a:	429a      	cmp	r2, r3
 8005b8c:	d902      	bls.n	8005b94 <_malloc_r+0x3e0>
 8005b8e:	6889      	ldr	r1, [r1, #8]
 8005b90:	458e      	cmp	lr, r1
 8005b92:	d1f7      	bne.n	8005b84 <_malloc_r+0x3d0>
 8005b94:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005b98:	687b      	ldr	r3, [r7, #4]
 8005b9a:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005b9e:	f8ce 4008 	str.w	r4, [lr, #8]
 8005ba2:	60cc      	str	r4, [r1, #12]
 8005ba4:	e68c      	b.n	80058c0 <_malloc_r+0x10c>
 8005ba6:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005baa:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005bae:	00c3      	lsls	r3, r0, #3
 8005bb0:	e645      	b.n	800583e <_malloc_r+0x8a>
 8005bb2:	42bc      	cmp	r4, r7
 8005bb4:	d072      	beq.n	8005c9c <_malloc_r+0x4e8>
 8005bb6:	68bc      	ldr	r4, [r7, #8]
 8005bb8:	6862      	ldr	r2, [r4, #4]
 8005bba:	f022 0203 	bic.w	r2, r2, #3
 8005bbe:	4295      	cmp	r5, r2
 8005bc0:	eba2 0305 	sub.w	r3, r2, r5
 8005bc4:	d802      	bhi.n	8005bcc <_malloc_r+0x418>
 8005bc6:	2b0f      	cmp	r3, #15
 8005bc8:	f73f af51 	bgt.w	8005a6e <_malloc_r+0x2ba>
 8005bcc:	4630      	mov	r0, r6
 8005bce:	f000 f8ff 	bl	8005dd0 <__malloc_unlock>
 8005bd2:	2400      	movs	r4, #0
 8005bd4:	e616      	b.n	8005804 <_malloc_r+0x50>
 8005bd6:	099a      	lsrs	r2, r3, #6
 8005bd8:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005bdc:	00c9      	lsls	r1, r1, #3
 8005bde:	3238      	adds	r2, #56	; 0x38
 8005be0:	e7c9      	b.n	8005b76 <_malloc_r+0x3c2>
 8005be2:	f8d9 9000 	ldr.w	r9, [r9]
 8005be6:	4599      	cmp	r9, r3
 8005be8:	f040 8083 	bne.w	8005cf2 <_malloc_r+0x53e>
 8005bec:	f010 0f03 	tst.w	r0, #3
 8005bf0:	f1a9 0308 	sub.w	r3, r9, #8
 8005bf4:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005bf8:	d1f3      	bne.n	8005be2 <_malloc_r+0x42e>
 8005bfa:	687b      	ldr	r3, [r7, #4]
 8005bfc:	ea23 0304 	bic.w	r3, r3, r4
 8005c00:	607b      	str	r3, [r7, #4]
 8005c02:	0064      	lsls	r4, r4, #1
 8005c04:	429c      	cmp	r4, r3
 8005c06:	f63f aeac 	bhi.w	8005962 <_malloc_r+0x1ae>
 8005c0a:	b91c      	cbnz	r4, 8005c14 <_malloc_r+0x460>
 8005c0c:	e6a9      	b.n	8005962 <_malloc_r+0x1ae>
 8005c0e:	0064      	lsls	r4, r4, #1
 8005c10:	f108 0804 	add.w	r8, r8, #4
 8005c14:	421c      	tst	r4, r3
 8005c16:	d0fa      	beq.n	8005c0e <_malloc_r+0x45a>
 8005c18:	4640      	mov	r0, r8
 8005c1a:	e65f      	b.n	80058dc <_malloc_r+0x128>
 8005c1c:	f108 0810 	add.w	r8, r8, #16
 8005c20:	e6bc      	b.n	800599c <_malloc_r+0x1e8>
 8005c22:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005c26:	d826      	bhi.n	8005c76 <_malloc_r+0x4c2>
 8005c28:	0beb      	lsrs	r3, r5, #15
 8005c2a:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005c2e:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005c32:	00c3      	lsls	r3, r0, #3
 8005c34:	e603      	b.n	800583e <_malloc_r+0x8a>
 8005c36:	687b      	ldr	r3, [r7, #4]
 8005c38:	1092      	asrs	r2, r2, #2
 8005c3a:	f04f 0801 	mov.w	r8, #1
 8005c3e:	fa08 f202 	lsl.w	r2, r8, r2
 8005c42:	4313      	orrs	r3, r2
 8005c44:	607b      	str	r3, [r7, #4]
 8005c46:	e7a8      	b.n	8005b9a <_malloc_r+0x3e6>
 8005c48:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005c4c:	e6ce      	b.n	80059ec <_malloc_r+0x238>
 8005c4e:	2a54      	cmp	r2, #84	; 0x54
 8005c50:	d829      	bhi.n	8005ca6 <_malloc_r+0x4f2>
 8005c52:	0b1a      	lsrs	r2, r3, #12
 8005c54:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005c58:	00c9      	lsls	r1, r1, #3
 8005c5a:	326e      	adds	r2, #110	; 0x6e
 8005c5c:	e78b      	b.n	8005b76 <_malloc_r+0x3c2>
 8005c5e:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005c62:	2900      	cmp	r1, #0
 8005c64:	f47f aeae 	bne.w	80059c4 <_malloc_r+0x210>
 8005c68:	eb09 0208 	add.w	r2, r9, r8
 8005c6c:	68b9      	ldr	r1, [r7, #8]
 8005c6e:	f042 0201 	orr.w	r2, r2, #1
 8005c72:	604a      	str	r2, [r1, #4]
 8005c74:	e6ec      	b.n	8005a50 <_malloc_r+0x29c>
 8005c76:	f240 5254 	movw	r2, #1364	; 0x554
 8005c7a:	4293      	cmp	r3, r2
 8005c7c:	d81c      	bhi.n	8005cb8 <_malloc_r+0x504>
 8005c7e:	0cab      	lsrs	r3, r5, #18
 8005c80:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005c84:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005c88:	00c3      	lsls	r3, r0, #3
 8005c8a:	e5d8      	b.n	800583e <_malloc_r+0x8a>
 8005c8c:	2301      	movs	r3, #1
 8005c8e:	f8cb 3004 	str.w	r3, [fp, #4]
 8005c92:	e79b      	b.n	8005bcc <_malloc_r+0x418>
 8005c94:	2101      	movs	r1, #1
 8005c96:	f04f 0800 	mov.w	r8, #0
 8005c9a:	e6ba      	b.n	8005a12 <_malloc_r+0x25e>
 8005c9c:	4a16      	ldr	r2, [pc, #88]	; (8005cf8 <_malloc_r+0x544>)
 8005c9e:	6813      	ldr	r3, [r2, #0]
 8005ca0:	4443      	add	r3, r8
 8005ca2:	6013      	str	r3, [r2, #0]
 8005ca4:	e68e      	b.n	80059c4 <_malloc_r+0x210>
 8005ca6:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005caa:	d814      	bhi.n	8005cd6 <_malloc_r+0x522>
 8005cac:	0bda      	lsrs	r2, r3, #15
 8005cae:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005cb2:	00c9      	lsls	r1, r1, #3
 8005cb4:	3277      	adds	r2, #119	; 0x77
 8005cb6:	e75e      	b.n	8005b76 <_malloc_r+0x3c2>
 8005cb8:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005cbc:	207f      	movs	r0, #127	; 0x7f
 8005cbe:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005cc2:	e5bc      	b.n	800583e <_malloc_r+0x8a>
 8005cc4:	f104 0108 	add.w	r1, r4, #8
 8005cc8:	4630      	mov	r0, r6
 8005cca:	9201      	str	r2, [sp, #4]
 8005ccc:	f7ff fa48 	bl	8005160 <_free_r>
 8005cd0:	9a01      	ldr	r2, [sp, #4]
 8005cd2:	6813      	ldr	r3, [r2, #0]
 8005cd4:	e6bc      	b.n	8005a50 <_malloc_r+0x29c>
 8005cd6:	f240 5154 	movw	r1, #1364	; 0x554
 8005cda:	428a      	cmp	r2, r1
 8005cdc:	d805      	bhi.n	8005cea <_malloc_r+0x536>
 8005cde:	0c9a      	lsrs	r2, r3, #18
 8005ce0:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005ce4:	00c9      	lsls	r1, r1, #3
 8005ce6:	327c      	adds	r2, #124	; 0x7c
 8005ce8:	e745      	b.n	8005b76 <_malloc_r+0x3c2>
 8005cea:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005cee:	227e      	movs	r2, #126	; 0x7e
 8005cf0:	e741      	b.n	8005b76 <_malloc_r+0x3c2>
 8005cf2:	687b      	ldr	r3, [r7, #4]
 8005cf4:	e785      	b.n	8005c02 <_malloc_r+0x44e>
 8005cf6:	bf00      	nop
 8005cf8:	20000a70 	.word	0x20000a70

08005cfc <memmove>:
 8005cfc:	4288      	cmp	r0, r1
 8005cfe:	b4f0      	push	{r4, r5, r6, r7}
 8005d00:	d90d      	bls.n	8005d1e <memmove+0x22>
 8005d02:	188b      	adds	r3, r1, r2
 8005d04:	4283      	cmp	r3, r0
 8005d06:	d90a      	bls.n	8005d1e <memmove+0x22>
 8005d08:	1884      	adds	r4, r0, r2
 8005d0a:	b132      	cbz	r2, 8005d1a <memmove+0x1e>
 8005d0c:	4622      	mov	r2, r4
 8005d0e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005d12:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005d16:	4299      	cmp	r1, r3
 8005d18:	d1f9      	bne.n	8005d0e <memmove+0x12>
 8005d1a:	bcf0      	pop	{r4, r5, r6, r7}
 8005d1c:	4770      	bx	lr
 8005d1e:	2a0f      	cmp	r2, #15
 8005d20:	d949      	bls.n	8005db6 <memmove+0xba>
 8005d22:	ea40 0301 	orr.w	r3, r0, r1
 8005d26:	079b      	lsls	r3, r3, #30
 8005d28:	d147      	bne.n	8005dba <memmove+0xbe>
 8005d2a:	f1a2 0310 	sub.w	r3, r2, #16
 8005d2e:	091b      	lsrs	r3, r3, #4
 8005d30:	f101 0720 	add.w	r7, r1, #32
 8005d34:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005d38:	f101 0410 	add.w	r4, r1, #16
 8005d3c:	f100 0510 	add.w	r5, r0, #16
 8005d40:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005d44:	f845 6c10 	str.w	r6, [r5, #-16]
 8005d48:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005d4c:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005d50:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005d54:	f845 6c08 	str.w	r6, [r5, #-8]
 8005d58:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005d5c:	f845 6c04 	str.w	r6, [r5, #-4]
 8005d60:	3410      	adds	r4, #16
 8005d62:	42bc      	cmp	r4, r7
 8005d64:	f105 0510 	add.w	r5, r5, #16
 8005d68:	d1ea      	bne.n	8005d40 <memmove+0x44>
 8005d6a:	3301      	adds	r3, #1
 8005d6c:	f002 050f 	and.w	r5, r2, #15
 8005d70:	011b      	lsls	r3, r3, #4
 8005d72:	2d03      	cmp	r5, #3
 8005d74:	4419      	add	r1, r3
 8005d76:	4403      	add	r3, r0
 8005d78:	d921      	bls.n	8005dbe <memmove+0xc2>
 8005d7a:	1f1f      	subs	r7, r3, #4
 8005d7c:	460e      	mov	r6, r1
 8005d7e:	462c      	mov	r4, r5
 8005d80:	3c04      	subs	r4, #4
 8005d82:	f856 cb04 	ldr.w	ip, [r6], #4
 8005d86:	f847 cf04 	str.w	ip, [r7, #4]!
 8005d8a:	2c03      	cmp	r4, #3
 8005d8c:	d8f8      	bhi.n	8005d80 <memmove+0x84>
 8005d8e:	1f2c      	subs	r4, r5, #4
 8005d90:	f024 0403 	bic.w	r4, r4, #3
 8005d94:	3404      	adds	r4, #4
 8005d96:	4423      	add	r3, r4
 8005d98:	4421      	add	r1, r4
 8005d9a:	f002 0203 	and.w	r2, r2, #3
 8005d9e:	2a00      	cmp	r2, #0
 8005da0:	d0bb      	beq.n	8005d1a <memmove+0x1e>
 8005da2:	3b01      	subs	r3, #1
 8005da4:	440a      	add	r2, r1
 8005da6:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005daa:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005dae:	4291      	cmp	r1, r2
 8005db0:	d1f9      	bne.n	8005da6 <memmove+0xaa>
 8005db2:	bcf0      	pop	{r4, r5, r6, r7}
 8005db4:	4770      	bx	lr
 8005db6:	4603      	mov	r3, r0
 8005db8:	e7f1      	b.n	8005d9e <memmove+0xa2>
 8005dba:	4603      	mov	r3, r0
 8005dbc:	e7f1      	b.n	8005da2 <memmove+0xa6>
 8005dbe:	462a      	mov	r2, r5
 8005dc0:	e7ed      	b.n	8005d9e <memmove+0xa2>
 8005dc2:	bf00      	nop

08005dc4 <__malloc_lock>:
 8005dc4:	4801      	ldr	r0, [pc, #4]	; (8005dcc <__malloc_lock+0x8>)
 8005dc6:	f7ff bc79 	b.w	80056bc <__retarget_lock_acquire_recursive>
 8005dca:	bf00      	nop
 8005dcc:	20000b00 	.word	0x20000b00

08005dd0 <__malloc_unlock>:
 8005dd0:	4801      	ldr	r0, [pc, #4]	; (8005dd8 <__malloc_unlock+0x8>)
 8005dd2:	f7ff bc75 	b.w	80056c0 <__retarget_lock_release_recursive>
 8005dd6:	bf00      	nop
 8005dd8:	20000b00 	.word	0x20000b00

08005ddc <_Balloc>:
 8005ddc:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005dde:	b570      	push	{r4, r5, r6, lr}
 8005de0:	4605      	mov	r5, r0
 8005de2:	460c      	mov	r4, r1
 8005de4:	b14b      	cbz	r3, 8005dfa <_Balloc+0x1e>
 8005de6:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005dea:	b180      	cbz	r0, 8005e0e <_Balloc+0x32>
 8005dec:	6802      	ldr	r2, [r0, #0]
 8005dee:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005df2:	2300      	movs	r3, #0
 8005df4:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005df8:	bd70      	pop	{r4, r5, r6, pc}
 8005dfa:	2221      	movs	r2, #33	; 0x21
 8005dfc:	2104      	movs	r1, #4
 8005dfe:	f000 fe1d 	bl	8006a3c <_calloc_r>
 8005e02:	4603      	mov	r3, r0
 8005e04:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005e06:	2800      	cmp	r0, #0
 8005e08:	d1ed      	bne.n	8005de6 <_Balloc+0xa>
 8005e0a:	2000      	movs	r0, #0
 8005e0c:	bd70      	pop	{r4, r5, r6, pc}
 8005e0e:	2101      	movs	r1, #1
 8005e10:	fa01 f604 	lsl.w	r6, r1, r4
 8005e14:	1d72      	adds	r2, r6, #5
 8005e16:	4628      	mov	r0, r5
 8005e18:	0092      	lsls	r2, r2, #2
 8005e1a:	f000 fe0f 	bl	8006a3c <_calloc_r>
 8005e1e:	2800      	cmp	r0, #0
 8005e20:	d0f3      	beq.n	8005e0a <_Balloc+0x2e>
 8005e22:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005e26:	e7e4      	b.n	8005df2 <_Balloc+0x16>

08005e28 <_Bfree>:
 8005e28:	b131      	cbz	r1, 8005e38 <_Bfree+0x10>
 8005e2a:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005e2c:	684a      	ldr	r2, [r1, #4]
 8005e2e:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005e32:	6008      	str	r0, [r1, #0]
 8005e34:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005e38:	4770      	bx	lr
 8005e3a:	bf00      	nop

08005e3c <__multadd>:
 8005e3c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005e3e:	690c      	ldr	r4, [r1, #16]
 8005e40:	b083      	sub	sp, #12
 8005e42:	460d      	mov	r5, r1
 8005e44:	4606      	mov	r6, r0
 8005e46:	f101 0c14 	add.w	ip, r1, #20
 8005e4a:	2700      	movs	r7, #0
 8005e4c:	f8dc 0000 	ldr.w	r0, [ip]
 8005e50:	b281      	uxth	r1, r0
 8005e52:	fb02 3301 	mla	r3, r2, r1, r3
 8005e56:	0c01      	lsrs	r1, r0, #16
 8005e58:	0c18      	lsrs	r0, r3, #16
 8005e5a:	fb02 0101 	mla	r1, r2, r1, r0
 8005e5e:	b29b      	uxth	r3, r3
 8005e60:	3701      	adds	r7, #1
 8005e62:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005e66:	42bc      	cmp	r4, r7
 8005e68:	f84c 3b04 	str.w	r3, [ip], #4
 8005e6c:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8005e70:	dcec      	bgt.n	8005e4c <__multadd+0x10>
 8005e72:	b13b      	cbz	r3, 8005e84 <__multadd+0x48>
 8005e74:	68aa      	ldr	r2, [r5, #8]
 8005e76:	42a2      	cmp	r2, r4
 8005e78:	dd07      	ble.n	8005e8a <__multadd+0x4e>
 8005e7a:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8005e7e:	3401      	adds	r4, #1
 8005e80:	6153      	str	r3, [r2, #20]
 8005e82:	612c      	str	r4, [r5, #16]
 8005e84:	4628      	mov	r0, r5
 8005e86:	b003      	add	sp, #12
 8005e88:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005e8a:	6869      	ldr	r1, [r5, #4]
 8005e8c:	9301      	str	r3, [sp, #4]
 8005e8e:	3101      	adds	r1, #1
 8005e90:	4630      	mov	r0, r6
 8005e92:	f7ff ffa3 	bl	8005ddc <_Balloc>
 8005e96:	692a      	ldr	r2, [r5, #16]
 8005e98:	3202      	adds	r2, #2
 8005e9a:	f105 010c 	add.w	r1, r5, #12
 8005e9e:	4607      	mov	r7, r0
 8005ea0:	0092      	lsls	r2, r2, #2
 8005ea2:	300c      	adds	r0, #12
 8005ea4:	f7fa fb2c 	bl	8000500 <memcpy>
 8005ea8:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8005eaa:	6869      	ldr	r1, [r5, #4]
 8005eac:	9b01      	ldr	r3, [sp, #4]
 8005eae:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8005eb2:	6028      	str	r0, [r5, #0]
 8005eb4:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8005eb8:	463d      	mov	r5, r7
 8005eba:	e7de      	b.n	8005e7a <__multadd+0x3e>

08005ebc <__hi0bits>:
 8005ebc:	0c02      	lsrs	r2, r0, #16
 8005ebe:	0412      	lsls	r2, r2, #16
 8005ec0:	4603      	mov	r3, r0
 8005ec2:	b9c2      	cbnz	r2, 8005ef6 <__hi0bits+0x3a>
 8005ec4:	0403      	lsls	r3, r0, #16
 8005ec6:	2010      	movs	r0, #16
 8005ec8:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8005ecc:	bf04      	itt	eq
 8005ece:	021b      	lsleq	r3, r3, #8
 8005ed0:	3008      	addeq	r0, #8
 8005ed2:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8005ed6:	bf04      	itt	eq
 8005ed8:	011b      	lsleq	r3, r3, #4
 8005eda:	3004      	addeq	r0, #4
 8005edc:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8005ee0:	bf04      	itt	eq
 8005ee2:	009b      	lsleq	r3, r3, #2
 8005ee4:	3002      	addeq	r0, #2
 8005ee6:	2b00      	cmp	r3, #0
 8005ee8:	db04      	blt.n	8005ef4 <__hi0bits+0x38>
 8005eea:	005b      	lsls	r3, r3, #1
 8005eec:	d501      	bpl.n	8005ef2 <__hi0bits+0x36>
 8005eee:	3001      	adds	r0, #1
 8005ef0:	4770      	bx	lr
 8005ef2:	2020      	movs	r0, #32
 8005ef4:	4770      	bx	lr
 8005ef6:	2000      	movs	r0, #0
 8005ef8:	e7e6      	b.n	8005ec8 <__hi0bits+0xc>
 8005efa:	bf00      	nop

08005efc <__lo0bits>:
 8005efc:	6803      	ldr	r3, [r0, #0]
 8005efe:	f013 0207 	ands.w	r2, r3, #7
 8005f02:	4601      	mov	r1, r0
 8005f04:	d007      	beq.n	8005f16 <__lo0bits+0x1a>
 8005f06:	07da      	lsls	r2, r3, #31
 8005f08:	d41f      	bmi.n	8005f4a <__lo0bits+0x4e>
 8005f0a:	0798      	lsls	r0, r3, #30
 8005f0c:	d51f      	bpl.n	8005f4e <__lo0bits+0x52>
 8005f0e:	085b      	lsrs	r3, r3, #1
 8005f10:	600b      	str	r3, [r1, #0]
 8005f12:	2001      	movs	r0, #1
 8005f14:	4770      	bx	lr
 8005f16:	b298      	uxth	r0, r3
 8005f18:	b1a0      	cbz	r0, 8005f44 <__lo0bits+0x48>
 8005f1a:	4610      	mov	r0, r2
 8005f1c:	f013 0fff 	tst.w	r3, #255	; 0xff
 8005f20:	bf04      	itt	eq
 8005f22:	0a1b      	lsreq	r3, r3, #8
 8005f24:	3008      	addeq	r0, #8
 8005f26:	071a      	lsls	r2, r3, #28
 8005f28:	bf04      	itt	eq
 8005f2a:	091b      	lsreq	r3, r3, #4
 8005f2c:	3004      	addeq	r0, #4
 8005f2e:	079a      	lsls	r2, r3, #30
 8005f30:	bf04      	itt	eq
 8005f32:	089b      	lsreq	r3, r3, #2
 8005f34:	3002      	addeq	r0, #2
 8005f36:	07da      	lsls	r2, r3, #31
 8005f38:	d402      	bmi.n	8005f40 <__lo0bits+0x44>
 8005f3a:	085b      	lsrs	r3, r3, #1
 8005f3c:	d00b      	beq.n	8005f56 <__lo0bits+0x5a>
 8005f3e:	3001      	adds	r0, #1
 8005f40:	600b      	str	r3, [r1, #0]
 8005f42:	4770      	bx	lr
 8005f44:	0c1b      	lsrs	r3, r3, #16
 8005f46:	2010      	movs	r0, #16
 8005f48:	e7e8      	b.n	8005f1c <__lo0bits+0x20>
 8005f4a:	2000      	movs	r0, #0
 8005f4c:	4770      	bx	lr
 8005f4e:	089b      	lsrs	r3, r3, #2
 8005f50:	600b      	str	r3, [r1, #0]
 8005f52:	2002      	movs	r0, #2
 8005f54:	4770      	bx	lr
 8005f56:	2020      	movs	r0, #32
 8005f58:	4770      	bx	lr
 8005f5a:	bf00      	nop

08005f5c <__i2b>:
 8005f5c:	b510      	push	{r4, lr}
 8005f5e:	460c      	mov	r4, r1
 8005f60:	2101      	movs	r1, #1
 8005f62:	f7ff ff3b 	bl	8005ddc <_Balloc>
 8005f66:	2201      	movs	r2, #1
 8005f68:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8005f6c:	bd10      	pop	{r4, pc}
 8005f6e:	bf00      	nop

08005f70 <__multiply>:
 8005f70:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005f74:	690e      	ldr	r6, [r1, #16]
 8005f76:	6914      	ldr	r4, [r2, #16]
 8005f78:	42a6      	cmp	r6, r4
 8005f7a:	b083      	sub	sp, #12
 8005f7c:	460f      	mov	r7, r1
 8005f7e:	4615      	mov	r5, r2
 8005f80:	da04      	bge.n	8005f8c <__multiply+0x1c>
 8005f82:	4632      	mov	r2, r6
 8005f84:	462f      	mov	r7, r5
 8005f86:	4626      	mov	r6, r4
 8005f88:	460d      	mov	r5, r1
 8005f8a:	4614      	mov	r4, r2
 8005f8c:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8005f90:	eb06 0804 	add.w	r8, r6, r4
 8005f94:	4543      	cmp	r3, r8
 8005f96:	bfb8      	it	lt
 8005f98:	3101      	addlt	r1, #1
 8005f9a:	f7ff ff1f 	bl	8005ddc <_Balloc>
 8005f9e:	f100 0914 	add.w	r9, r0, #20
 8005fa2:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8005fa6:	45f1      	cmp	r9, lr
 8005fa8:	9000      	str	r0, [sp, #0]
 8005faa:	d205      	bcs.n	8005fb8 <__multiply+0x48>
 8005fac:	464b      	mov	r3, r9
 8005fae:	2200      	movs	r2, #0
 8005fb0:	f843 2b04 	str.w	r2, [r3], #4
 8005fb4:	459e      	cmp	lr, r3
 8005fb6:	d8fb      	bhi.n	8005fb0 <__multiply+0x40>
 8005fb8:	f105 0a14 	add.w	sl, r5, #20
 8005fbc:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8005fc0:	f107 0314 	add.w	r3, r7, #20
 8005fc4:	45a2      	cmp	sl, r4
 8005fc6:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8005fca:	d261      	bcs.n	8006090 <__multiply+0x120>
 8005fcc:	1b64      	subs	r4, r4, r5
 8005fce:	3c15      	subs	r4, #21
 8005fd0:	f024 0403 	bic.w	r4, r4, #3
 8005fd4:	f8cd e004 	str.w	lr, [sp, #4]
 8005fd8:	44a2      	add	sl, r4
 8005fda:	f105 0210 	add.w	r2, r5, #16
 8005fde:	469e      	mov	lr, r3
 8005fe0:	e005      	b.n	8005fee <__multiply+0x7e>
 8005fe2:	0c2d      	lsrs	r5, r5, #16
 8005fe4:	d12b      	bne.n	800603e <__multiply+0xce>
 8005fe6:	4592      	cmp	sl, r2
 8005fe8:	f109 0904 	add.w	r9, r9, #4
 8005fec:	d04e      	beq.n	800608c <__multiply+0x11c>
 8005fee:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8005ff2:	fa1f fb85 	uxth.w	fp, r5
 8005ff6:	f1bb 0f00 	cmp.w	fp, #0
 8005ffa:	d0f2      	beq.n	8005fe2 <__multiply+0x72>
 8005ffc:	4677      	mov	r7, lr
 8005ffe:	464e      	mov	r6, r9
 8006000:	2000      	movs	r0, #0
 8006002:	e000      	b.n	8006006 <__multiply+0x96>
 8006004:	4626      	mov	r6, r4
 8006006:	f857 1b04 	ldr.w	r1, [r7], #4
 800600a:	6834      	ldr	r4, [r6, #0]
 800600c:	b28b      	uxth	r3, r1
 800600e:	b2a5      	uxth	r5, r4
 8006010:	0c09      	lsrs	r1, r1, #16
 8006012:	0c24      	lsrs	r4, r4, #16
 8006014:	fb0b 5303 	mla	r3, fp, r3, r5
 8006018:	4403      	add	r3, r0
 800601a:	fb0b 4001 	mla	r0, fp, r1, r4
 800601e:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8006022:	4634      	mov	r4, r6
 8006024:	b29b      	uxth	r3, r3
 8006026:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800602a:	45bc      	cmp	ip, r7
 800602c:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006030:	f844 3b04 	str.w	r3, [r4], #4
 8006034:	d8e6      	bhi.n	8006004 <__multiply+0x94>
 8006036:	6070      	str	r0, [r6, #4]
 8006038:	6815      	ldr	r5, [r2, #0]
 800603a:	0c2d      	lsrs	r5, r5, #16
 800603c:	d0d3      	beq.n	8005fe6 <__multiply+0x76>
 800603e:	f8d9 3000 	ldr.w	r3, [r9]
 8006042:	4676      	mov	r6, lr
 8006044:	4618      	mov	r0, r3
 8006046:	46cb      	mov	fp, r9
 8006048:	2100      	movs	r1, #0
 800604a:	e000      	b.n	800604e <__multiply+0xde>
 800604c:	46a3      	mov	fp, r4
 800604e:	8834      	ldrh	r4, [r6, #0]
 8006050:	0c00      	lsrs	r0, r0, #16
 8006052:	fb05 0004 	mla	r0, r5, r4, r0
 8006056:	4401      	add	r1, r0
 8006058:	b29b      	uxth	r3, r3
 800605a:	465c      	mov	r4, fp
 800605c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006060:	f844 3b04 	str.w	r3, [r4], #4
 8006064:	f856 3b04 	ldr.w	r3, [r6], #4
 8006068:	f8db 0004 	ldr.w	r0, [fp, #4]
 800606c:	0c1b      	lsrs	r3, r3, #16
 800606e:	b287      	uxth	r7, r0
 8006070:	fb05 7303 	mla	r3, r5, r3, r7
 8006074:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006078:	45b4      	cmp	ip, r6
 800607a:	ea4f 4113 	mov.w	r1, r3, lsr #16
 800607e:	d8e5      	bhi.n	800604c <__multiply+0xdc>
 8006080:	4592      	cmp	sl, r2
 8006082:	f8cb 3004 	str.w	r3, [fp, #4]
 8006086:	f109 0904 	add.w	r9, r9, #4
 800608a:	d1b0      	bne.n	8005fee <__multiply+0x7e>
 800608c:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006090:	f1b8 0f00 	cmp.w	r8, #0
 8006094:	dd0b      	ble.n	80060ae <__multiply+0x13e>
 8006096:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800609a:	f1ae 0e04 	sub.w	lr, lr, #4
 800609e:	b11b      	cbz	r3, 80060a8 <__multiply+0x138>
 80060a0:	e005      	b.n	80060ae <__multiply+0x13e>
 80060a2:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80060a6:	b913      	cbnz	r3, 80060ae <__multiply+0x13e>
 80060a8:	f1b8 0801 	subs.w	r8, r8, #1
 80060ac:	d1f9      	bne.n	80060a2 <__multiply+0x132>
 80060ae:	9800      	ldr	r0, [sp, #0]
 80060b0:	f8c0 8010 	str.w	r8, [r0, #16]
 80060b4:	b003      	add	sp, #12
 80060b6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80060ba:	bf00      	nop

080060bc <__pow5mult>:
 80060bc:	f012 0303 	ands.w	r3, r2, #3
 80060c0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80060c4:	4614      	mov	r4, r2
 80060c6:	4607      	mov	r7, r0
 80060c8:	d12e      	bne.n	8006128 <__pow5mult+0x6c>
 80060ca:	460d      	mov	r5, r1
 80060cc:	10a4      	asrs	r4, r4, #2
 80060ce:	d01c      	beq.n	800610a <__pow5mult+0x4e>
 80060d0:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80060d2:	b396      	cbz	r6, 800613a <__pow5mult+0x7e>
 80060d4:	07e3      	lsls	r3, r4, #31
 80060d6:	f04f 0800 	mov.w	r8, #0
 80060da:	d406      	bmi.n	80060ea <__pow5mult+0x2e>
 80060dc:	1064      	asrs	r4, r4, #1
 80060de:	d014      	beq.n	800610a <__pow5mult+0x4e>
 80060e0:	6830      	ldr	r0, [r6, #0]
 80060e2:	b1a8      	cbz	r0, 8006110 <__pow5mult+0x54>
 80060e4:	4606      	mov	r6, r0
 80060e6:	07e3      	lsls	r3, r4, #31
 80060e8:	d5f8      	bpl.n	80060dc <__pow5mult+0x20>
 80060ea:	4632      	mov	r2, r6
 80060ec:	4629      	mov	r1, r5
 80060ee:	4638      	mov	r0, r7
 80060f0:	f7ff ff3e 	bl	8005f70 <__multiply>
 80060f4:	b1b5      	cbz	r5, 8006124 <__pow5mult+0x68>
 80060f6:	686a      	ldr	r2, [r5, #4]
 80060f8:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80060fa:	1064      	asrs	r4, r4, #1
 80060fc:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006100:	6029      	str	r1, [r5, #0]
 8006102:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006106:	4605      	mov	r5, r0
 8006108:	d1ea      	bne.n	80060e0 <__pow5mult+0x24>
 800610a:	4628      	mov	r0, r5
 800610c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006110:	4632      	mov	r2, r6
 8006112:	4631      	mov	r1, r6
 8006114:	4638      	mov	r0, r7
 8006116:	f7ff ff2b 	bl	8005f70 <__multiply>
 800611a:	6030      	str	r0, [r6, #0]
 800611c:	f8c0 8000 	str.w	r8, [r0]
 8006120:	4606      	mov	r6, r0
 8006122:	e7e0      	b.n	80060e6 <__pow5mult+0x2a>
 8006124:	4605      	mov	r5, r0
 8006126:	e7d9      	b.n	80060dc <__pow5mult+0x20>
 8006128:	3b01      	subs	r3, #1
 800612a:	4a0b      	ldr	r2, [pc, #44]	; (8006158 <__pow5mult+0x9c>)
 800612c:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006130:	2300      	movs	r3, #0
 8006132:	f7ff fe83 	bl	8005e3c <__multadd>
 8006136:	4605      	mov	r5, r0
 8006138:	e7c8      	b.n	80060cc <__pow5mult+0x10>
 800613a:	2101      	movs	r1, #1
 800613c:	4638      	mov	r0, r7
 800613e:	f7ff fe4d 	bl	8005ddc <_Balloc>
 8006142:	f240 2371 	movw	r3, #625	; 0x271
 8006146:	6143      	str	r3, [r0, #20]
 8006148:	2201      	movs	r2, #1
 800614a:	2300      	movs	r3, #0
 800614c:	6102      	str	r2, [r0, #16]
 800614e:	4606      	mov	r6, r0
 8006150:	64b8      	str	r0, [r7, #72]	; 0x48
 8006152:	6003      	str	r3, [r0, #0]
 8006154:	e7be      	b.n	80060d4 <__pow5mult+0x18>
 8006156:	bf00      	nop
 8006158:	08007148 	.word	0x08007148

0800615c <__lshift>:
 800615c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006160:	4691      	mov	r9, r2
 8006162:	690a      	ldr	r2, [r1, #16]
 8006164:	460e      	mov	r6, r1
 8006166:	ea4f 1469 	mov.w	r4, r9, asr #5
 800616a:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 800616e:	eb04 0802 	add.w	r8, r4, r2
 8006172:	f108 0501 	add.w	r5, r8, #1
 8006176:	429d      	cmp	r5, r3
 8006178:	4607      	mov	r7, r0
 800617a:	dd04      	ble.n	8006186 <__lshift+0x2a>
 800617c:	005b      	lsls	r3, r3, #1
 800617e:	429d      	cmp	r5, r3
 8006180:	f101 0101 	add.w	r1, r1, #1
 8006184:	dcfa      	bgt.n	800617c <__lshift+0x20>
 8006186:	4638      	mov	r0, r7
 8006188:	f7ff fe28 	bl	8005ddc <_Balloc>
 800618c:	2c00      	cmp	r4, #0
 800618e:	f100 0314 	add.w	r3, r0, #20
 8006192:	dd37      	ble.n	8006204 <__lshift+0xa8>
 8006194:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006198:	2200      	movs	r2, #0
 800619a:	f843 2b04 	str.w	r2, [r3], #4
 800619e:	428b      	cmp	r3, r1
 80061a0:	d1fb      	bne.n	800619a <__lshift+0x3e>
 80061a2:	6934      	ldr	r4, [r6, #16]
 80061a4:	f106 0314 	add.w	r3, r6, #20
 80061a8:	f019 091f 	ands.w	r9, r9, #31
 80061ac:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80061b0:	d020      	beq.n	80061f4 <__lshift+0x98>
 80061b2:	f1c9 0e20 	rsb	lr, r9, #32
 80061b6:	2200      	movs	r2, #0
 80061b8:	e000      	b.n	80061bc <__lshift+0x60>
 80061ba:	4651      	mov	r1, sl
 80061bc:	681c      	ldr	r4, [r3, #0]
 80061be:	468a      	mov	sl, r1
 80061c0:	fa04 f409 	lsl.w	r4, r4, r9
 80061c4:	4314      	orrs	r4, r2
 80061c6:	f84a 4b04 	str.w	r4, [sl], #4
 80061ca:	f853 2b04 	ldr.w	r2, [r3], #4
 80061ce:	4563      	cmp	r3, ip
 80061d0:	fa22 f20e 	lsr.w	r2, r2, lr
 80061d4:	d3f1      	bcc.n	80061ba <__lshift+0x5e>
 80061d6:	604a      	str	r2, [r1, #4]
 80061d8:	b10a      	cbz	r2, 80061de <__lshift+0x82>
 80061da:	f108 0502 	add.w	r5, r8, #2
 80061de:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80061e0:	6872      	ldr	r2, [r6, #4]
 80061e2:	3d01      	subs	r5, #1
 80061e4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80061e8:	6105      	str	r5, [r0, #16]
 80061ea:	6031      	str	r1, [r6, #0]
 80061ec:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80061f0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80061f4:	3904      	subs	r1, #4
 80061f6:	f853 2b04 	ldr.w	r2, [r3], #4
 80061fa:	f841 2f04 	str.w	r2, [r1, #4]!
 80061fe:	459c      	cmp	ip, r3
 8006200:	d8f9      	bhi.n	80061f6 <__lshift+0x9a>
 8006202:	e7ec      	b.n	80061de <__lshift+0x82>
 8006204:	4619      	mov	r1, r3
 8006206:	e7cc      	b.n	80061a2 <__lshift+0x46>

08006208 <__mcmp>:
 8006208:	b430      	push	{r4, r5}
 800620a:	690b      	ldr	r3, [r1, #16]
 800620c:	4605      	mov	r5, r0
 800620e:	6900      	ldr	r0, [r0, #16]
 8006210:	1ac0      	subs	r0, r0, r3
 8006212:	d10f      	bne.n	8006234 <__mcmp+0x2c>
 8006214:	009b      	lsls	r3, r3, #2
 8006216:	3514      	adds	r5, #20
 8006218:	3114      	adds	r1, #20
 800621a:	4419      	add	r1, r3
 800621c:	442b      	add	r3, r5
 800621e:	e001      	b.n	8006224 <__mcmp+0x1c>
 8006220:	429d      	cmp	r5, r3
 8006222:	d207      	bcs.n	8006234 <__mcmp+0x2c>
 8006224:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006228:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 800622c:	4294      	cmp	r4, r2
 800622e:	d0f7      	beq.n	8006220 <__mcmp+0x18>
 8006230:	d302      	bcc.n	8006238 <__mcmp+0x30>
 8006232:	2001      	movs	r0, #1
 8006234:	bc30      	pop	{r4, r5}
 8006236:	4770      	bx	lr
 8006238:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800623c:	e7fa      	b.n	8006234 <__mcmp+0x2c>
 800623e:	bf00      	nop

08006240 <__mdiff>:
 8006240:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006244:	6913      	ldr	r3, [r2, #16]
 8006246:	690d      	ldr	r5, [r1, #16]
 8006248:	1aed      	subs	r5, r5, r3
 800624a:	2d00      	cmp	r5, #0
 800624c:	460e      	mov	r6, r1
 800624e:	4690      	mov	r8, r2
 8006250:	f101 0414 	add.w	r4, r1, #20
 8006254:	f102 0714 	add.w	r7, r2, #20
 8006258:	d114      	bne.n	8006284 <__mdiff+0x44>
 800625a:	009b      	lsls	r3, r3, #2
 800625c:	18e2      	adds	r2, r4, r3
 800625e:	443b      	add	r3, r7
 8006260:	e001      	b.n	8006266 <__mdiff+0x26>
 8006262:	42a2      	cmp	r2, r4
 8006264:	d959      	bls.n	800631a <__mdiff+0xda>
 8006266:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 800626a:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800626e:	458c      	cmp	ip, r1
 8006270:	d0f7      	beq.n	8006262 <__mdiff+0x22>
 8006272:	d209      	bcs.n	8006288 <__mdiff+0x48>
 8006274:	4622      	mov	r2, r4
 8006276:	4633      	mov	r3, r6
 8006278:	463c      	mov	r4, r7
 800627a:	4646      	mov	r6, r8
 800627c:	4617      	mov	r7, r2
 800627e:	4698      	mov	r8, r3
 8006280:	2501      	movs	r5, #1
 8006282:	e001      	b.n	8006288 <__mdiff+0x48>
 8006284:	dbf6      	blt.n	8006274 <__mdiff+0x34>
 8006286:	2500      	movs	r5, #0
 8006288:	6871      	ldr	r1, [r6, #4]
 800628a:	f7ff fda7 	bl	8005ddc <_Balloc>
 800628e:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006292:	6936      	ldr	r6, [r6, #16]
 8006294:	60c5      	str	r5, [r0, #12]
 8006296:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 800629a:	46bc      	mov	ip, r7
 800629c:	f100 0514 	add.w	r5, r0, #20
 80062a0:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80062a4:	2300      	movs	r3, #0
 80062a6:	f85c 1b04 	ldr.w	r1, [ip], #4
 80062aa:	f854 8b04 	ldr.w	r8, [r4], #4
 80062ae:	b28a      	uxth	r2, r1
 80062b0:	fa13 f388 	uxtah	r3, r3, r8
 80062b4:	0c09      	lsrs	r1, r1, #16
 80062b6:	1a9a      	subs	r2, r3, r2
 80062b8:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80062bc:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80062c0:	b292      	uxth	r2, r2
 80062c2:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80062c6:	45e6      	cmp	lr, ip
 80062c8:	f845 2b04 	str.w	r2, [r5], #4
 80062cc:	ea4f 4323 	mov.w	r3, r3, asr #16
 80062d0:	d8e9      	bhi.n	80062a6 <__mdiff+0x66>
 80062d2:	42a7      	cmp	r7, r4
 80062d4:	d917      	bls.n	8006306 <__mdiff+0xc6>
 80062d6:	46ae      	mov	lr, r5
 80062d8:	46a4      	mov	ip, r4
 80062da:	f85c 2b04 	ldr.w	r2, [ip], #4
 80062de:	fa13 f382 	uxtah	r3, r3, r2
 80062e2:	1419      	asrs	r1, r3, #16
 80062e4:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80062e8:	b29b      	uxth	r3, r3
 80062ea:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80062ee:	4567      	cmp	r7, ip
 80062f0:	f84e 2b04 	str.w	r2, [lr], #4
 80062f4:	ea4f 4321 	mov.w	r3, r1, asr #16
 80062f8:	d8ef      	bhi.n	80062da <__mdiff+0x9a>
 80062fa:	43e4      	mvns	r4, r4
 80062fc:	4427      	add	r7, r4
 80062fe:	f027 0703 	bic.w	r7, r7, #3
 8006302:	3704      	adds	r7, #4
 8006304:	443d      	add	r5, r7
 8006306:	3d04      	subs	r5, #4
 8006308:	b922      	cbnz	r2, 8006314 <__mdiff+0xd4>
 800630a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800630e:	3e01      	subs	r6, #1
 8006310:	2b00      	cmp	r3, #0
 8006312:	d0fa      	beq.n	800630a <__mdiff+0xca>
 8006314:	6106      	str	r6, [r0, #16]
 8006316:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800631a:	2100      	movs	r1, #0
 800631c:	f7ff fd5e 	bl	8005ddc <_Balloc>
 8006320:	2201      	movs	r2, #1
 8006322:	2300      	movs	r3, #0
 8006324:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006328:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0800632c <__d2b>:
 800632c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006330:	460f      	mov	r7, r1
 8006332:	b083      	sub	sp, #12
 8006334:	2101      	movs	r1, #1
 8006336:	ec55 4b10 	vmov	r4, r5, d0
 800633a:	4616      	mov	r6, r2
 800633c:	f7ff fd4e 	bl	8005ddc <_Balloc>
 8006340:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8006344:	4681      	mov	r9, r0
 8006346:	f3c5 0313 	ubfx	r3, r5, #0, #20
 800634a:	f1b8 0f00 	cmp.w	r8, #0
 800634e:	d001      	beq.n	8006354 <__d2b+0x28>
 8006350:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006354:	2c00      	cmp	r4, #0
 8006356:	9301      	str	r3, [sp, #4]
 8006358:	d024      	beq.n	80063a4 <__d2b+0x78>
 800635a:	a802      	add	r0, sp, #8
 800635c:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006360:	f7ff fdcc 	bl	8005efc <__lo0bits>
 8006364:	2800      	cmp	r0, #0
 8006366:	d136      	bne.n	80063d6 <__d2b+0xaa>
 8006368:	e9dd 2300 	ldrd	r2, r3, [sp]
 800636c:	f8c9 2014 	str.w	r2, [r9, #20]
 8006370:	2b00      	cmp	r3, #0
 8006372:	bf0c      	ite	eq
 8006374:	2101      	moveq	r1, #1
 8006376:	2102      	movne	r1, #2
 8006378:	f8c9 3018 	str.w	r3, [r9, #24]
 800637c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006380:	f1b8 0f00 	cmp.w	r8, #0
 8006384:	d11b      	bne.n	80063be <__d2b+0x92>
 8006386:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 800638a:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 800638e:	6038      	str	r0, [r7, #0]
 8006390:	6918      	ldr	r0, [r3, #16]
 8006392:	f7ff fd93 	bl	8005ebc <__hi0bits>
 8006396:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 800639a:	6030      	str	r0, [r6, #0]
 800639c:	4648      	mov	r0, r9
 800639e:	b003      	add	sp, #12
 80063a0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80063a4:	a801      	add	r0, sp, #4
 80063a6:	f7ff fda9 	bl	8005efc <__lo0bits>
 80063aa:	9b01      	ldr	r3, [sp, #4]
 80063ac:	f8c9 3014 	str.w	r3, [r9, #20]
 80063b0:	2101      	movs	r1, #1
 80063b2:	3020      	adds	r0, #32
 80063b4:	f8c9 1010 	str.w	r1, [r9, #16]
 80063b8:	f1b8 0f00 	cmp.w	r8, #0
 80063bc:	d0e3      	beq.n	8006386 <__d2b+0x5a>
 80063be:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80063c2:	eb08 0300 	add.w	r3, r8, r0
 80063c6:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80063ca:	603b      	str	r3, [r7, #0]
 80063cc:	6030      	str	r0, [r6, #0]
 80063ce:	4648      	mov	r0, r9
 80063d0:	b003      	add	sp, #12
 80063d2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80063d6:	e9dd 1300 	ldrd	r1, r3, [sp]
 80063da:	f1c0 0220 	rsb	r2, r0, #32
 80063de:	fa03 f202 	lsl.w	r2, r3, r2
 80063e2:	430a      	orrs	r2, r1
 80063e4:	40c3      	lsrs	r3, r0
 80063e6:	9301      	str	r3, [sp, #4]
 80063e8:	f8c9 2014 	str.w	r2, [r9, #20]
 80063ec:	e7c0      	b.n	8006370 <__d2b+0x44>
 80063ee:	bf00      	nop

080063f0 <_realloc_r>:
 80063f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80063f4:	4692      	mov	sl, r2
 80063f6:	b083      	sub	sp, #12
 80063f8:	2900      	cmp	r1, #0
 80063fa:	f000 80a1 	beq.w	8006540 <_realloc_r+0x150>
 80063fe:	460d      	mov	r5, r1
 8006400:	4680      	mov	r8, r0
 8006402:	f10a 040b 	add.w	r4, sl, #11
 8006406:	f7ff fcdd 	bl	8005dc4 <__malloc_lock>
 800640a:	f855 2c04 	ldr.w	r2, [r5, #-4]
 800640e:	2c16      	cmp	r4, #22
 8006410:	f022 0603 	bic.w	r6, r2, #3
 8006414:	f1a5 0708 	sub.w	r7, r5, #8
 8006418:	d83e      	bhi.n	8006498 <_realloc_r+0xa8>
 800641a:	2410      	movs	r4, #16
 800641c:	4621      	mov	r1, r4
 800641e:	45a2      	cmp	sl, r4
 8006420:	d83f      	bhi.n	80064a2 <_realloc_r+0xb2>
 8006422:	428e      	cmp	r6, r1
 8006424:	eb07 0906 	add.w	r9, r7, r6
 8006428:	da74      	bge.n	8006514 <_realloc_r+0x124>
 800642a:	4bc7      	ldr	r3, [pc, #796]	; (8006748 <_realloc_r+0x358>)
 800642c:	6898      	ldr	r0, [r3, #8]
 800642e:	4548      	cmp	r0, r9
 8006430:	f000 80aa 	beq.w	8006588 <_realloc_r+0x198>
 8006434:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006438:	f020 0301 	bic.w	r3, r0, #1
 800643c:	444b      	add	r3, r9
 800643e:	685b      	ldr	r3, [r3, #4]
 8006440:	07db      	lsls	r3, r3, #31
 8006442:	f140 8083 	bpl.w	800654c <_realloc_r+0x15c>
 8006446:	07d2      	lsls	r2, r2, #31
 8006448:	d534      	bpl.n	80064b4 <_realloc_r+0xc4>
 800644a:	4651      	mov	r1, sl
 800644c:	4640      	mov	r0, r8
 800644e:	f7ff f9b1 	bl	80057b4 <_malloc_r>
 8006452:	4682      	mov	sl, r0
 8006454:	b1e0      	cbz	r0, 8006490 <_realloc_r+0xa0>
 8006456:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800645a:	f023 0301 	bic.w	r3, r3, #1
 800645e:	443b      	add	r3, r7
 8006460:	f1a0 0208 	sub.w	r2, r0, #8
 8006464:	4293      	cmp	r3, r2
 8006466:	f000 80f9 	beq.w	800665c <_realloc_r+0x26c>
 800646a:	1f32      	subs	r2, r6, #4
 800646c:	2a24      	cmp	r2, #36	; 0x24
 800646e:	f200 8107 	bhi.w	8006680 <_realloc_r+0x290>
 8006472:	2a13      	cmp	r2, #19
 8006474:	6829      	ldr	r1, [r5, #0]
 8006476:	f200 80e6 	bhi.w	8006646 <_realloc_r+0x256>
 800647a:	4603      	mov	r3, r0
 800647c:	462a      	mov	r2, r5
 800647e:	6019      	str	r1, [r3, #0]
 8006480:	6851      	ldr	r1, [r2, #4]
 8006482:	6059      	str	r1, [r3, #4]
 8006484:	6892      	ldr	r2, [r2, #8]
 8006486:	609a      	str	r2, [r3, #8]
 8006488:	4629      	mov	r1, r5
 800648a:	4640      	mov	r0, r8
 800648c:	f7fe fe68 	bl	8005160 <_free_r>
 8006490:	4640      	mov	r0, r8
 8006492:	f7ff fc9d 	bl	8005dd0 <__malloc_unlock>
 8006496:	e04f      	b.n	8006538 <_realloc_r+0x148>
 8006498:	f024 0407 	bic.w	r4, r4, #7
 800649c:	2c00      	cmp	r4, #0
 800649e:	4621      	mov	r1, r4
 80064a0:	dabd      	bge.n	800641e <_realloc_r+0x2e>
 80064a2:	f04f 0a00 	mov.w	sl, #0
 80064a6:	230c      	movs	r3, #12
 80064a8:	4650      	mov	r0, sl
 80064aa:	f8c8 3000 	str.w	r3, [r8]
 80064ae:	b003      	add	sp, #12
 80064b0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80064b4:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80064b8:	eba7 0b03 	sub.w	fp, r7, r3
 80064bc:	f8db 2004 	ldr.w	r2, [fp, #4]
 80064c0:	f022 0203 	bic.w	r2, r2, #3
 80064c4:	18b3      	adds	r3, r6, r2
 80064c6:	428b      	cmp	r3, r1
 80064c8:	dbbf      	blt.n	800644a <_realloc_r+0x5a>
 80064ca:	46da      	mov	sl, fp
 80064cc:	f8db 100c 	ldr.w	r1, [fp, #12]
 80064d0:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80064d4:	1f32      	subs	r2, r6, #4
 80064d6:	2a24      	cmp	r2, #36	; 0x24
 80064d8:	60c1      	str	r1, [r0, #12]
 80064da:	eb0b 0903 	add.w	r9, fp, r3
 80064de:	6088      	str	r0, [r1, #8]
 80064e0:	f200 80c6 	bhi.w	8006670 <_realloc_r+0x280>
 80064e4:	2a13      	cmp	r2, #19
 80064e6:	6829      	ldr	r1, [r5, #0]
 80064e8:	f240 80c0 	bls.w	800666c <_realloc_r+0x27c>
 80064ec:	f8cb 1008 	str.w	r1, [fp, #8]
 80064f0:	6869      	ldr	r1, [r5, #4]
 80064f2:	f8cb 100c 	str.w	r1, [fp, #12]
 80064f6:	2a1b      	cmp	r2, #27
 80064f8:	68a9      	ldr	r1, [r5, #8]
 80064fa:	f200 80d8 	bhi.w	80066ae <_realloc_r+0x2be>
 80064fe:	f10b 0210 	add.w	r2, fp, #16
 8006502:	3508      	adds	r5, #8
 8006504:	6011      	str	r1, [r2, #0]
 8006506:	6869      	ldr	r1, [r5, #4]
 8006508:	6051      	str	r1, [r2, #4]
 800650a:	68a9      	ldr	r1, [r5, #8]
 800650c:	6091      	str	r1, [r2, #8]
 800650e:	461e      	mov	r6, r3
 8006510:	465f      	mov	r7, fp
 8006512:	4655      	mov	r5, sl
 8006514:	687b      	ldr	r3, [r7, #4]
 8006516:	1b32      	subs	r2, r6, r4
 8006518:	2a0f      	cmp	r2, #15
 800651a:	f003 0301 	and.w	r3, r3, #1
 800651e:	d822      	bhi.n	8006566 <_realloc_r+0x176>
 8006520:	4333      	orrs	r3, r6
 8006522:	607b      	str	r3, [r7, #4]
 8006524:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006528:	f043 0301 	orr.w	r3, r3, #1
 800652c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006530:	4640      	mov	r0, r8
 8006532:	f7ff fc4d 	bl	8005dd0 <__malloc_unlock>
 8006536:	46aa      	mov	sl, r5
 8006538:	4650      	mov	r0, sl
 800653a:	b003      	add	sp, #12
 800653c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006540:	4611      	mov	r1, r2
 8006542:	b003      	add	sp, #12
 8006544:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006548:	f7ff b934 	b.w	80057b4 <_malloc_r>
 800654c:	f020 0003 	bic.w	r0, r0, #3
 8006550:	1833      	adds	r3, r6, r0
 8006552:	428b      	cmp	r3, r1
 8006554:	db61      	blt.n	800661a <_realloc_r+0x22a>
 8006556:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800655a:	461e      	mov	r6, r3
 800655c:	60ca      	str	r2, [r1, #12]
 800655e:	eb07 0903 	add.w	r9, r7, r3
 8006562:	6091      	str	r1, [r2, #8]
 8006564:	e7d6      	b.n	8006514 <_realloc_r+0x124>
 8006566:	1939      	adds	r1, r7, r4
 8006568:	4323      	orrs	r3, r4
 800656a:	f042 0201 	orr.w	r2, r2, #1
 800656e:	607b      	str	r3, [r7, #4]
 8006570:	604a      	str	r2, [r1, #4]
 8006572:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006576:	f043 0301 	orr.w	r3, r3, #1
 800657a:	3108      	adds	r1, #8
 800657c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006580:	4640      	mov	r0, r8
 8006582:	f7fe fded 	bl	8005160 <_free_r>
 8006586:	e7d3      	b.n	8006530 <_realloc_r+0x140>
 8006588:	6840      	ldr	r0, [r0, #4]
 800658a:	f020 0903 	bic.w	r9, r0, #3
 800658e:	44b1      	add	r9, r6
 8006590:	f104 0010 	add.w	r0, r4, #16
 8006594:	4581      	cmp	r9, r0
 8006596:	da77      	bge.n	8006688 <_realloc_r+0x298>
 8006598:	07d2      	lsls	r2, r2, #31
 800659a:	f53f af56 	bmi.w	800644a <_realloc_r+0x5a>
 800659e:	f855 2c08 	ldr.w	r2, [r5, #-8]
 80065a2:	eba7 0b02 	sub.w	fp, r7, r2
 80065a6:	f8db 2004 	ldr.w	r2, [fp, #4]
 80065aa:	f022 0203 	bic.w	r2, r2, #3
 80065ae:	4491      	add	r9, r2
 80065b0:	4548      	cmp	r0, r9
 80065b2:	dc87      	bgt.n	80064c4 <_realloc_r+0xd4>
 80065b4:	46da      	mov	sl, fp
 80065b6:	f8db 100c 	ldr.w	r1, [fp, #12]
 80065ba:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80065be:	1f32      	subs	r2, r6, #4
 80065c0:	2a24      	cmp	r2, #36	; 0x24
 80065c2:	60c1      	str	r1, [r0, #12]
 80065c4:	6088      	str	r0, [r1, #8]
 80065c6:	f200 80a1 	bhi.w	800670c <_realloc_r+0x31c>
 80065ca:	2a13      	cmp	r2, #19
 80065cc:	6829      	ldr	r1, [r5, #0]
 80065ce:	f240 809b 	bls.w	8006708 <_realloc_r+0x318>
 80065d2:	f8cb 1008 	str.w	r1, [fp, #8]
 80065d6:	6869      	ldr	r1, [r5, #4]
 80065d8:	f8cb 100c 	str.w	r1, [fp, #12]
 80065dc:	2a1b      	cmp	r2, #27
 80065de:	68a9      	ldr	r1, [r5, #8]
 80065e0:	f200 809b 	bhi.w	800671a <_realloc_r+0x32a>
 80065e4:	f10b 0210 	add.w	r2, fp, #16
 80065e8:	3508      	adds	r5, #8
 80065ea:	6011      	str	r1, [r2, #0]
 80065ec:	6869      	ldr	r1, [r5, #4]
 80065ee:	6051      	str	r1, [r2, #4]
 80065f0:	68a9      	ldr	r1, [r5, #8]
 80065f2:	6091      	str	r1, [r2, #8]
 80065f4:	eb0b 0104 	add.w	r1, fp, r4
 80065f8:	eba9 0204 	sub.w	r2, r9, r4
 80065fc:	f042 0201 	orr.w	r2, r2, #1
 8006600:	6099      	str	r1, [r3, #8]
 8006602:	604a      	str	r2, [r1, #4]
 8006604:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006608:	f003 0301 	and.w	r3, r3, #1
 800660c:	431c      	orrs	r4, r3
 800660e:	4640      	mov	r0, r8
 8006610:	f8cb 4004 	str.w	r4, [fp, #4]
 8006614:	f7ff fbdc 	bl	8005dd0 <__malloc_unlock>
 8006618:	e78e      	b.n	8006538 <_realloc_r+0x148>
 800661a:	07d3      	lsls	r3, r2, #31
 800661c:	f53f af15 	bmi.w	800644a <_realloc_r+0x5a>
 8006620:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006624:	eba7 0b03 	sub.w	fp, r7, r3
 8006628:	f8db 2004 	ldr.w	r2, [fp, #4]
 800662c:	f022 0203 	bic.w	r2, r2, #3
 8006630:	4410      	add	r0, r2
 8006632:	1983      	adds	r3, r0, r6
 8006634:	428b      	cmp	r3, r1
 8006636:	f6ff af45 	blt.w	80064c4 <_realloc_r+0xd4>
 800663a:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800663e:	46da      	mov	sl, fp
 8006640:	60ca      	str	r2, [r1, #12]
 8006642:	6091      	str	r1, [r2, #8]
 8006644:	e742      	b.n	80064cc <_realloc_r+0xdc>
 8006646:	6001      	str	r1, [r0, #0]
 8006648:	686b      	ldr	r3, [r5, #4]
 800664a:	6043      	str	r3, [r0, #4]
 800664c:	2a1b      	cmp	r2, #27
 800664e:	d83a      	bhi.n	80066c6 <_realloc_r+0x2d6>
 8006650:	f105 0208 	add.w	r2, r5, #8
 8006654:	f100 0308 	add.w	r3, r0, #8
 8006658:	68a9      	ldr	r1, [r5, #8]
 800665a:	e710      	b.n	800647e <_realloc_r+0x8e>
 800665c:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006660:	f023 0303 	bic.w	r3, r3, #3
 8006664:	441e      	add	r6, r3
 8006666:	eb07 0906 	add.w	r9, r7, r6
 800666a:	e753      	b.n	8006514 <_realloc_r+0x124>
 800666c:	4652      	mov	r2, sl
 800666e:	e749      	b.n	8006504 <_realloc_r+0x114>
 8006670:	4629      	mov	r1, r5
 8006672:	4650      	mov	r0, sl
 8006674:	461e      	mov	r6, r3
 8006676:	465f      	mov	r7, fp
 8006678:	f7ff fb40 	bl	8005cfc <memmove>
 800667c:	4655      	mov	r5, sl
 800667e:	e749      	b.n	8006514 <_realloc_r+0x124>
 8006680:	4629      	mov	r1, r5
 8006682:	f7ff fb3b 	bl	8005cfc <memmove>
 8006686:	e6ff      	b.n	8006488 <_realloc_r+0x98>
 8006688:	4427      	add	r7, r4
 800668a:	eba9 0904 	sub.w	r9, r9, r4
 800668e:	f049 0201 	orr.w	r2, r9, #1
 8006692:	609f      	str	r7, [r3, #8]
 8006694:	607a      	str	r2, [r7, #4]
 8006696:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800669a:	f003 0301 	and.w	r3, r3, #1
 800669e:	431c      	orrs	r4, r3
 80066a0:	4640      	mov	r0, r8
 80066a2:	f845 4c04 	str.w	r4, [r5, #-4]
 80066a6:	f7ff fb93 	bl	8005dd0 <__malloc_unlock>
 80066aa:	46aa      	mov	sl, r5
 80066ac:	e744      	b.n	8006538 <_realloc_r+0x148>
 80066ae:	f8cb 1010 	str.w	r1, [fp, #16]
 80066b2:	68e9      	ldr	r1, [r5, #12]
 80066b4:	f8cb 1014 	str.w	r1, [fp, #20]
 80066b8:	2a24      	cmp	r2, #36	; 0x24
 80066ba:	d010      	beq.n	80066de <_realloc_r+0x2ee>
 80066bc:	6929      	ldr	r1, [r5, #16]
 80066be:	f10b 0218 	add.w	r2, fp, #24
 80066c2:	3510      	adds	r5, #16
 80066c4:	e71e      	b.n	8006504 <_realloc_r+0x114>
 80066c6:	68ab      	ldr	r3, [r5, #8]
 80066c8:	6083      	str	r3, [r0, #8]
 80066ca:	68eb      	ldr	r3, [r5, #12]
 80066cc:	60c3      	str	r3, [r0, #12]
 80066ce:	2a24      	cmp	r2, #36	; 0x24
 80066d0:	d010      	beq.n	80066f4 <_realloc_r+0x304>
 80066d2:	f105 0210 	add.w	r2, r5, #16
 80066d6:	f100 0310 	add.w	r3, r0, #16
 80066da:	6929      	ldr	r1, [r5, #16]
 80066dc:	e6cf      	b.n	800647e <_realloc_r+0x8e>
 80066de:	692a      	ldr	r2, [r5, #16]
 80066e0:	f8cb 2018 	str.w	r2, [fp, #24]
 80066e4:	696a      	ldr	r2, [r5, #20]
 80066e6:	f8cb 201c 	str.w	r2, [fp, #28]
 80066ea:	69a9      	ldr	r1, [r5, #24]
 80066ec:	f10b 0220 	add.w	r2, fp, #32
 80066f0:	3518      	adds	r5, #24
 80066f2:	e707      	b.n	8006504 <_realloc_r+0x114>
 80066f4:	692b      	ldr	r3, [r5, #16]
 80066f6:	6103      	str	r3, [r0, #16]
 80066f8:	696b      	ldr	r3, [r5, #20]
 80066fa:	6143      	str	r3, [r0, #20]
 80066fc:	69a9      	ldr	r1, [r5, #24]
 80066fe:	f105 0218 	add.w	r2, r5, #24
 8006702:	f100 0318 	add.w	r3, r0, #24
 8006706:	e6ba      	b.n	800647e <_realloc_r+0x8e>
 8006708:	4652      	mov	r2, sl
 800670a:	e76e      	b.n	80065ea <_realloc_r+0x1fa>
 800670c:	4629      	mov	r1, r5
 800670e:	4650      	mov	r0, sl
 8006710:	9301      	str	r3, [sp, #4]
 8006712:	f7ff faf3 	bl	8005cfc <memmove>
 8006716:	9b01      	ldr	r3, [sp, #4]
 8006718:	e76c      	b.n	80065f4 <_realloc_r+0x204>
 800671a:	f8cb 1010 	str.w	r1, [fp, #16]
 800671e:	68e9      	ldr	r1, [r5, #12]
 8006720:	f8cb 1014 	str.w	r1, [fp, #20]
 8006724:	2a24      	cmp	r2, #36	; 0x24
 8006726:	d004      	beq.n	8006732 <_realloc_r+0x342>
 8006728:	6929      	ldr	r1, [r5, #16]
 800672a:	f10b 0218 	add.w	r2, fp, #24
 800672e:	3510      	adds	r5, #16
 8006730:	e75b      	b.n	80065ea <_realloc_r+0x1fa>
 8006732:	692a      	ldr	r2, [r5, #16]
 8006734:	f8cb 2018 	str.w	r2, [fp, #24]
 8006738:	696a      	ldr	r2, [r5, #20]
 800673a:	f8cb 201c 	str.w	r2, [fp, #28]
 800673e:	69a9      	ldr	r1, [r5, #24]
 8006740:	f10b 0220 	add.w	r2, fp, #32
 8006744:	3518      	adds	r5, #24
 8006746:	e750      	b.n	80065ea <_realloc_r+0x1fa>
 8006748:	2000044c 	.word	0x2000044c

0800674c <frexp>:
 800674c:	ec53 2b10 	vmov	r2, r3, d0
 8006750:	b570      	push	{r4, r5, r6, lr}
 8006752:	4e16      	ldr	r6, [pc, #88]	; (80067ac <frexp+0x60>)
 8006754:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006758:	2500      	movs	r5, #0
 800675a:	42b1      	cmp	r1, r6
 800675c:	4604      	mov	r4, r0
 800675e:	6005      	str	r5, [r0, #0]
 8006760:	dc21      	bgt.n	80067a6 <frexp+0x5a>
 8006762:	ee10 6a10 	vmov	r6, s0
 8006766:	430e      	orrs	r6, r1
 8006768:	d01d      	beq.n	80067a6 <frexp+0x5a>
 800676a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800676e:	4618      	mov	r0, r3
 8006770:	da0c      	bge.n	800678c <frexp+0x40>
 8006772:	4619      	mov	r1, r3
 8006774:	2200      	movs	r2, #0
 8006776:	ee10 0a10 	vmov	r0, s0
 800677a:	4b0d      	ldr	r3, [pc, #52]	; (80067b0 <frexp+0x64>)
 800677c:	f7fa f9dc 	bl	8000b38 <__aeabi_dmul>
 8006780:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006784:	4602      	mov	r2, r0
 8006786:	4608      	mov	r0, r1
 8006788:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 800678c:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006790:	1509      	asrs	r1, r1, #20
 8006792:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006796:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 800679a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 800679e:	4429      	add	r1, r5
 80067a0:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80067a4:	6021      	str	r1, [r4, #0]
 80067a6:	ec43 2b10 	vmov	d0, r2, r3
 80067aa:	bd70      	pop	{r4, r5, r6, pc}
 80067ac:	7fefffff 	.word	0x7fefffff
 80067b0:	43500000 	.word	0x43500000

080067b4 <_sbrk_r>:
 80067b4:	b538      	push	{r3, r4, r5, lr}
 80067b6:	4c07      	ldr	r4, [pc, #28]	; (80067d4 <_sbrk_r+0x20>)
 80067b8:	2300      	movs	r3, #0
 80067ba:	4605      	mov	r5, r0
 80067bc:	4608      	mov	r0, r1
 80067be:	6023      	str	r3, [r4, #0]
 80067c0:	f7fb fc35 	bl	800202e <_sbrk>
 80067c4:	1c43      	adds	r3, r0, #1
 80067c6:	d000      	beq.n	80067ca <_sbrk_r+0x16>
 80067c8:	bd38      	pop	{r3, r4, r5, pc}
 80067ca:	6823      	ldr	r3, [r4, #0]
 80067cc:	2b00      	cmp	r3, #0
 80067ce:	d0fb      	beq.n	80067c8 <_sbrk_r+0x14>
 80067d0:	602b      	str	r3, [r5, #0]
 80067d2:	bd38      	pop	{r3, r4, r5, pc}
 80067d4:	20000b14 	.word	0x20000b14

080067d8 <__sread>:
 80067d8:	b510      	push	{r4, lr}
 80067da:	460c      	mov	r4, r1
 80067dc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80067e0:	f000 fabc 	bl	8006d5c <_read_r>
 80067e4:	2800      	cmp	r0, #0
 80067e6:	db03      	blt.n	80067f0 <__sread+0x18>
 80067e8:	6d23      	ldr	r3, [r4, #80]	; 0x50
 80067ea:	4403      	add	r3, r0
 80067ec:	6523      	str	r3, [r4, #80]	; 0x50
 80067ee:	bd10      	pop	{r4, pc}
 80067f0:	89a3      	ldrh	r3, [r4, #12]
 80067f2:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 80067f6:	81a3      	strh	r3, [r4, #12]
 80067f8:	bd10      	pop	{r4, pc}
 80067fa:	bf00      	nop

080067fc <__swrite>:
 80067fc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006800:	4616      	mov	r6, r2
 8006802:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006806:	461f      	mov	r7, r3
 8006808:	05d3      	lsls	r3, r2, #23
 800680a:	460c      	mov	r4, r1
 800680c:	4605      	mov	r5, r0
 800680e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006812:	d507      	bpl.n	8006824 <__swrite+0x28>
 8006814:	2200      	movs	r2, #0
 8006816:	2302      	movs	r3, #2
 8006818:	f000 fa74 	bl	8006d04 <_lseek_r>
 800681c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006820:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006824:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006828:	81a2      	strh	r2, [r4, #12]
 800682a:	463b      	mov	r3, r7
 800682c:	4632      	mov	r2, r6
 800682e:	4628      	mov	r0, r5
 8006830:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006834:	f000 b88c 	b.w	8006950 <_write_r>

08006838 <__sseek>:
 8006838:	b510      	push	{r4, lr}
 800683a:	460c      	mov	r4, r1
 800683c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006840:	f000 fa60 	bl	8006d04 <_lseek_r>
 8006844:	89a3      	ldrh	r3, [r4, #12]
 8006846:	1c42      	adds	r2, r0, #1
 8006848:	bf0e      	itee	eq
 800684a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 800684e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006852:	6520      	strne	r0, [r4, #80]	; 0x50
 8006854:	81a3      	strh	r3, [r4, #12]
 8006856:	bd10      	pop	{r4, pc}

08006858 <__sclose>:
 8006858:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800685c:	f000 b922 	b.w	8006aa4 <_close_r>

08006860 <strncpy>:
 8006860:	ea40 0301 	orr.w	r3, r0, r1
 8006864:	079b      	lsls	r3, r3, #30
 8006866:	b470      	push	{r4, r5, r6}
 8006868:	d12a      	bne.n	80068c0 <strncpy+0x60>
 800686a:	2a03      	cmp	r2, #3
 800686c:	d928      	bls.n	80068c0 <strncpy+0x60>
 800686e:	460c      	mov	r4, r1
 8006870:	4603      	mov	r3, r0
 8006872:	4621      	mov	r1, r4
 8006874:	f854 6b04 	ldr.w	r6, [r4], #4
 8006878:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 800687c:	ea25 0506 	bic.w	r5, r5, r6
 8006880:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006884:	d106      	bne.n	8006894 <strncpy+0x34>
 8006886:	3a04      	subs	r2, #4
 8006888:	2a03      	cmp	r2, #3
 800688a:	f843 6b04 	str.w	r6, [r3], #4
 800688e:	4621      	mov	r1, r4
 8006890:	d8ef      	bhi.n	8006872 <strncpy+0x12>
 8006892:	b19a      	cbz	r2, 80068bc <strncpy+0x5c>
 8006894:	780c      	ldrb	r4, [r1, #0]
 8006896:	701c      	strb	r4, [r3, #0]
 8006898:	3a01      	subs	r2, #1
 800689a:	3301      	adds	r3, #1
 800689c:	b13c      	cbz	r4, 80068ae <strncpy+0x4e>
 800689e:	b16a      	cbz	r2, 80068bc <strncpy+0x5c>
 80068a0:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 80068a4:	f803 4b01 	strb.w	r4, [r3], #1
 80068a8:	3a01      	subs	r2, #1
 80068aa:	2c00      	cmp	r4, #0
 80068ac:	d1f7      	bne.n	800689e <strncpy+0x3e>
 80068ae:	b12a      	cbz	r2, 80068bc <strncpy+0x5c>
 80068b0:	441a      	add	r2, r3
 80068b2:	2100      	movs	r1, #0
 80068b4:	f803 1b01 	strb.w	r1, [r3], #1
 80068b8:	4293      	cmp	r3, r2
 80068ba:	d1fb      	bne.n	80068b4 <strncpy+0x54>
 80068bc:	bc70      	pop	{r4, r5, r6}
 80068be:	4770      	bx	lr
 80068c0:	4603      	mov	r3, r0
 80068c2:	e7e6      	b.n	8006892 <strncpy+0x32>

080068c4 <__sprint_r.part.0>:
 80068c4:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80068c8:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 80068ca:	049c      	lsls	r4, r3, #18
 80068cc:	4692      	mov	sl, r2
 80068ce:	d52d      	bpl.n	800692c <__sprint_r.part.0+0x68>
 80068d0:	6893      	ldr	r3, [r2, #8]
 80068d2:	6812      	ldr	r2, [r2, #0]
 80068d4:	b343      	cbz	r3, 8006928 <__sprint_r.part.0+0x64>
 80068d6:	460e      	mov	r6, r1
 80068d8:	4607      	mov	r7, r0
 80068da:	f102 0908 	add.w	r9, r2, #8
 80068de:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 80068e2:	ea5f 089b 	movs.w	r8, fp, lsr #2
 80068e6:	d015      	beq.n	8006914 <__sprint_r.part.0+0x50>
 80068e8:	3d04      	subs	r5, #4
 80068ea:	2400      	movs	r4, #0
 80068ec:	e001      	b.n	80068f2 <__sprint_r.part.0+0x2e>
 80068ee:	45a0      	cmp	r8, r4
 80068f0:	d00e      	beq.n	8006910 <__sprint_r.part.0+0x4c>
 80068f2:	4632      	mov	r2, r6
 80068f4:	f855 1f04 	ldr.w	r1, [r5, #4]!
 80068f8:	4638      	mov	r0, r7
 80068fa:	f000 f99d 	bl	8006c38 <_fputwc_r>
 80068fe:	1c43      	adds	r3, r0, #1
 8006900:	f104 0401 	add.w	r4, r4, #1
 8006904:	d1f3      	bne.n	80068ee <__sprint_r.part.0+0x2a>
 8006906:	2300      	movs	r3, #0
 8006908:	e9ca 3301 	strd	r3, r3, [sl, #4]
 800690c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006910:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006914:	f02b 0b03 	bic.w	fp, fp, #3
 8006918:	eba3 030b 	sub.w	r3, r3, fp
 800691c:	f8ca 3008 	str.w	r3, [sl, #8]
 8006920:	f109 0908 	add.w	r9, r9, #8
 8006924:	2b00      	cmp	r3, #0
 8006926:	d1da      	bne.n	80068de <__sprint_r.part.0+0x1a>
 8006928:	2000      	movs	r0, #0
 800692a:	e7ec      	b.n	8006906 <__sprint_r.part.0+0x42>
 800692c:	f7fe fd0c 	bl	8005348 <__sfvwrite_r>
 8006930:	2300      	movs	r3, #0
 8006932:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006936:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800693a:	bf00      	nop

0800693c <__sprint_r>:
 800693c:	6893      	ldr	r3, [r2, #8]
 800693e:	b10b      	cbz	r3, 8006944 <__sprint_r+0x8>
 8006940:	f7ff bfc0 	b.w	80068c4 <__sprint_r.part.0>
 8006944:	b410      	push	{r4}
 8006946:	4618      	mov	r0, r3
 8006948:	6053      	str	r3, [r2, #4]
 800694a:	f85d 4b04 	ldr.w	r4, [sp], #4
 800694e:	4770      	bx	lr

08006950 <_write_r>:
 8006950:	b570      	push	{r4, r5, r6, lr}
 8006952:	460d      	mov	r5, r1
 8006954:	4c08      	ldr	r4, [pc, #32]	; (8006978 <_write_r+0x28>)
 8006956:	4611      	mov	r1, r2
 8006958:	4606      	mov	r6, r0
 800695a:	461a      	mov	r2, r3
 800695c:	4628      	mov	r0, r5
 800695e:	2300      	movs	r3, #0
 8006960:	6023      	str	r3, [r4, #0]
 8006962:	f7fb fb51 	bl	8002008 <_write>
 8006966:	1c43      	adds	r3, r0, #1
 8006968:	d000      	beq.n	800696c <_write_r+0x1c>
 800696a:	bd70      	pop	{r4, r5, r6, pc}
 800696c:	6823      	ldr	r3, [r4, #0]
 800696e:	2b00      	cmp	r3, #0
 8006970:	d0fb      	beq.n	800696a <_write_r+0x1a>
 8006972:	6033      	str	r3, [r6, #0]
 8006974:	bd70      	pop	{r4, r5, r6, pc}
 8006976:	bf00      	nop
 8006978:	20000b14 	.word	0x20000b14

0800697c <__register_exitproc>:
 800697c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006980:	4d2b      	ldr	r5, [pc, #172]	; (8006a30 <__register_exitproc+0xb4>)
 8006982:	4606      	mov	r6, r0
 8006984:	6828      	ldr	r0, [r5, #0]
 8006986:	4698      	mov	r8, r3
 8006988:	460f      	mov	r7, r1
 800698a:	4691      	mov	r9, r2
 800698c:	f7fe fe96 	bl	80056bc <__retarget_lock_acquire_recursive>
 8006990:	4b28      	ldr	r3, [pc, #160]	; (8006a34 <__register_exitproc+0xb8>)
 8006992:	681c      	ldr	r4, [r3, #0]
 8006994:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006998:	2b00      	cmp	r3, #0
 800699a:	d03d      	beq.n	8006a18 <__register_exitproc+0x9c>
 800699c:	685a      	ldr	r2, [r3, #4]
 800699e:	2a1f      	cmp	r2, #31
 80069a0:	dc0d      	bgt.n	80069be <__register_exitproc+0x42>
 80069a2:	f102 0c01 	add.w	ip, r2, #1
 80069a6:	bb16      	cbnz	r6, 80069ee <__register_exitproc+0x72>
 80069a8:	3202      	adds	r2, #2
 80069aa:	f8c3 c004 	str.w	ip, [r3, #4]
 80069ae:	6828      	ldr	r0, [r5, #0]
 80069b0:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 80069b4:	f7fe fe84 	bl	80056c0 <__retarget_lock_release_recursive>
 80069b8:	2000      	movs	r0, #0
 80069ba:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80069be:	4b1e      	ldr	r3, [pc, #120]	; (8006a38 <__register_exitproc+0xbc>)
 80069c0:	b37b      	cbz	r3, 8006a22 <__register_exitproc+0xa6>
 80069c2:	f44f 70c8 	mov.w	r0, #400	; 0x190
 80069c6:	f3af 8000 	nop.w
 80069ca:	4603      	mov	r3, r0
 80069cc:	b348      	cbz	r0, 8006a22 <__register_exitproc+0xa6>
 80069ce:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 80069d2:	2100      	movs	r1, #0
 80069d4:	e9c0 2100 	strd	r2, r1, [r0]
 80069d8:	f04f 0c01 	mov.w	ip, #1
 80069dc:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 80069e0:	460a      	mov	r2, r1
 80069e2:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 80069e6:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 80069ea:	2e00      	cmp	r6, #0
 80069ec:	d0dc      	beq.n	80069a8 <__register_exitproc+0x2c>
 80069ee:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 80069f2:	2401      	movs	r4, #1
 80069f4:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 80069f8:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 80069fc:	4094      	lsls	r4, r2
 80069fe:	4320      	orrs	r0, r4
 8006a00:	2e02      	cmp	r6, #2
 8006a02:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006a06:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006a0a:	d1cd      	bne.n	80069a8 <__register_exitproc+0x2c>
 8006a0c:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006a10:	430c      	orrs	r4, r1
 8006a12:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006a16:	e7c7      	b.n	80069a8 <__register_exitproc+0x2c>
 8006a18:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006a1c:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006a20:	e7bc      	b.n	800699c <__register_exitproc+0x20>
 8006a22:	6828      	ldr	r0, [r5, #0]
 8006a24:	f7fe fe4c 	bl	80056c0 <__retarget_lock_release_recursive>
 8006a28:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006a2c:	e7c5      	b.n	80069ba <__register_exitproc+0x3e>
 8006a2e:	bf00      	nop
 8006a30:	20000448 	.word	0x20000448
 8006a34:	08006fd8 	.word	0x08006fd8
 8006a38:	00000000 	.word	0x00000000

08006a3c <_calloc_r>:
 8006a3c:	b510      	push	{r4, lr}
 8006a3e:	fb02 f101 	mul.w	r1, r2, r1
 8006a42:	f7fe feb7 	bl	80057b4 <_malloc_r>
 8006a46:	4604      	mov	r4, r0
 8006a48:	b1d8      	cbz	r0, 8006a82 <_calloc_r+0x46>
 8006a4a:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006a4e:	f022 0203 	bic.w	r2, r2, #3
 8006a52:	3a04      	subs	r2, #4
 8006a54:	2a24      	cmp	r2, #36	; 0x24
 8006a56:	d81d      	bhi.n	8006a94 <_calloc_r+0x58>
 8006a58:	2a13      	cmp	r2, #19
 8006a5a:	d914      	bls.n	8006a86 <_calloc_r+0x4a>
 8006a5c:	2300      	movs	r3, #0
 8006a5e:	2a1b      	cmp	r2, #27
 8006a60:	e9c0 3300 	strd	r3, r3, [r0]
 8006a64:	d91b      	bls.n	8006a9e <_calloc_r+0x62>
 8006a66:	2a24      	cmp	r2, #36	; 0x24
 8006a68:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006a6c:	bf0a      	itet	eq
 8006a6e:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006a72:	f100 0210 	addne.w	r2, r0, #16
 8006a76:	f100 0218 	addeq.w	r2, r0, #24
 8006a7a:	2300      	movs	r3, #0
 8006a7c:	e9c2 3300 	strd	r3, r3, [r2]
 8006a80:	6093      	str	r3, [r2, #8]
 8006a82:	4620      	mov	r0, r4
 8006a84:	bd10      	pop	{r4, pc}
 8006a86:	4602      	mov	r2, r0
 8006a88:	2300      	movs	r3, #0
 8006a8a:	e9c2 3300 	strd	r3, r3, [r2]
 8006a8e:	6093      	str	r3, [r2, #8]
 8006a90:	4620      	mov	r0, r4
 8006a92:	bd10      	pop	{r4, pc}
 8006a94:	2100      	movs	r1, #0
 8006a96:	f7fb fb6f 	bl	8002178 <memset>
 8006a9a:	4620      	mov	r0, r4
 8006a9c:	bd10      	pop	{r4, pc}
 8006a9e:	f100 0208 	add.w	r2, r0, #8
 8006aa2:	e7f1      	b.n	8006a88 <_calloc_r+0x4c>

08006aa4 <_close_r>:
 8006aa4:	b538      	push	{r3, r4, r5, lr}
 8006aa6:	4c07      	ldr	r4, [pc, #28]	; (8006ac4 <_close_r+0x20>)
 8006aa8:	2300      	movs	r3, #0
 8006aaa:	4605      	mov	r5, r0
 8006aac:	4608      	mov	r0, r1
 8006aae:	6023      	str	r3, [r4, #0]
 8006ab0:	f7fb fad9 	bl	8002066 <_close>
 8006ab4:	1c43      	adds	r3, r0, #1
 8006ab6:	d000      	beq.n	8006aba <_close_r+0x16>
 8006ab8:	bd38      	pop	{r3, r4, r5, pc}
 8006aba:	6823      	ldr	r3, [r4, #0]
 8006abc:	2b00      	cmp	r3, #0
 8006abe:	d0fb      	beq.n	8006ab8 <_close_r+0x14>
 8006ac0:	602b      	str	r3, [r5, #0]
 8006ac2:	bd38      	pop	{r3, r4, r5, pc}
 8006ac4:	20000b14 	.word	0x20000b14

08006ac8 <_fclose_r>:
 8006ac8:	b570      	push	{r4, r5, r6, lr}
 8006aca:	2900      	cmp	r1, #0
 8006acc:	d048      	beq.n	8006b60 <_fclose_r+0x98>
 8006ace:	4605      	mov	r5, r0
 8006ad0:	460c      	mov	r4, r1
 8006ad2:	b110      	cbz	r0, 8006ada <_fclose_r+0x12>
 8006ad4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006ad6:	2b00      	cmp	r3, #0
 8006ad8:	d048      	beq.n	8006b6c <_fclose_r+0xa4>
 8006ada:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006adc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ae0:	07d0      	lsls	r0, r2, #31
 8006ae2:	d440      	bmi.n	8006b66 <_fclose_r+0x9e>
 8006ae4:	0599      	lsls	r1, r3, #22
 8006ae6:	d530      	bpl.n	8006b4a <_fclose_r+0x82>
 8006ae8:	4621      	mov	r1, r4
 8006aea:	4628      	mov	r0, r5
 8006aec:	f7fe f990 	bl	8004e10 <__sflush_r>
 8006af0:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006af2:	4606      	mov	r6, r0
 8006af4:	b133      	cbz	r3, 8006b04 <_fclose_r+0x3c>
 8006af6:	69e1      	ldr	r1, [r4, #28]
 8006af8:	4628      	mov	r0, r5
 8006afa:	4798      	blx	r3
 8006afc:	2800      	cmp	r0, #0
 8006afe:	bfb8      	it	lt
 8006b00:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006b04:	89a3      	ldrh	r3, [r4, #12]
 8006b06:	061a      	lsls	r2, r3, #24
 8006b08:	d43c      	bmi.n	8006b84 <_fclose_r+0xbc>
 8006b0a:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006b0c:	b141      	cbz	r1, 8006b20 <_fclose_r+0x58>
 8006b0e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006b12:	4299      	cmp	r1, r3
 8006b14:	d002      	beq.n	8006b1c <_fclose_r+0x54>
 8006b16:	4628      	mov	r0, r5
 8006b18:	f7fe fb22 	bl	8005160 <_free_r>
 8006b1c:	2300      	movs	r3, #0
 8006b1e:	6323      	str	r3, [r4, #48]	; 0x30
 8006b20:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006b22:	b121      	cbz	r1, 8006b2e <_fclose_r+0x66>
 8006b24:	4628      	mov	r0, r5
 8006b26:	f7fe fb1b 	bl	8005160 <_free_r>
 8006b2a:	2300      	movs	r3, #0
 8006b2c:	6463      	str	r3, [r4, #68]	; 0x44
 8006b2e:	f7fe faa1 	bl	8005074 <__sfp_lock_acquire>
 8006b32:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006b34:	2200      	movs	r2, #0
 8006b36:	07db      	lsls	r3, r3, #31
 8006b38:	81a2      	strh	r2, [r4, #12]
 8006b3a:	d51f      	bpl.n	8006b7c <_fclose_r+0xb4>
 8006b3c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b3e:	f7fe fdbb 	bl	80056b8 <__retarget_lock_close_recursive>
 8006b42:	f7fe fa9d 	bl	8005080 <__sfp_lock_release>
 8006b46:	4630      	mov	r0, r6
 8006b48:	bd70      	pop	{r4, r5, r6, pc}
 8006b4a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b4c:	f7fe fdb6 	bl	80056bc <__retarget_lock_acquire_recursive>
 8006b50:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b54:	2b00      	cmp	r3, #0
 8006b56:	d1c7      	bne.n	8006ae8 <_fclose_r+0x20>
 8006b58:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006b5a:	f016 0601 	ands.w	r6, r6, #1
 8006b5e:	d016      	beq.n	8006b8e <_fclose_r+0xc6>
 8006b60:	2600      	movs	r6, #0
 8006b62:	4630      	mov	r0, r6
 8006b64:	bd70      	pop	{r4, r5, r6, pc}
 8006b66:	2b00      	cmp	r3, #0
 8006b68:	d0fa      	beq.n	8006b60 <_fclose_r+0x98>
 8006b6a:	e7bd      	b.n	8006ae8 <_fclose_r+0x20>
 8006b6c:	f7fe fa56 	bl	800501c <__sinit>
 8006b70:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006b72:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b76:	07d0      	lsls	r0, r2, #31
 8006b78:	d4f5      	bmi.n	8006b66 <_fclose_r+0x9e>
 8006b7a:	e7b3      	b.n	8006ae4 <_fclose_r+0x1c>
 8006b7c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b7e:	f7fe fd9f 	bl	80056c0 <__retarget_lock_release_recursive>
 8006b82:	e7db      	b.n	8006b3c <_fclose_r+0x74>
 8006b84:	6921      	ldr	r1, [r4, #16]
 8006b86:	4628      	mov	r0, r5
 8006b88:	f7fe faea 	bl	8005160 <_free_r>
 8006b8c:	e7bd      	b.n	8006b0a <_fclose_r+0x42>
 8006b8e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b90:	f7fe fd96 	bl	80056c0 <__retarget_lock_release_recursive>
 8006b94:	4630      	mov	r0, r6
 8006b96:	bd70      	pop	{r4, r5, r6, pc}

08006b98 <__fputwc>:
 8006b98:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006b9c:	b082      	sub	sp, #8
 8006b9e:	4681      	mov	r9, r0
 8006ba0:	4688      	mov	r8, r1
 8006ba2:	4614      	mov	r4, r2
 8006ba4:	f000 f8a0 	bl	8006ce8 <__locale_mb_cur_max>
 8006ba8:	2801      	cmp	r0, #1
 8006baa:	d103      	bne.n	8006bb4 <__fputwc+0x1c>
 8006bac:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006bb0:	2bfe      	cmp	r3, #254	; 0xfe
 8006bb2:	d933      	bls.n	8006c1c <__fputwc+0x84>
 8006bb4:	4642      	mov	r2, r8
 8006bb6:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006bba:	a901      	add	r1, sp, #4
 8006bbc:	4648      	mov	r0, r9
 8006bbe:	f000 f93b 	bl	8006e38 <_wcrtomb_r>
 8006bc2:	1c42      	adds	r2, r0, #1
 8006bc4:	4606      	mov	r6, r0
 8006bc6:	d02f      	beq.n	8006c28 <__fputwc+0x90>
 8006bc8:	b320      	cbz	r0, 8006c14 <__fputwc+0x7c>
 8006bca:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006bce:	2500      	movs	r5, #0
 8006bd0:	f10d 0a04 	add.w	sl, sp, #4
 8006bd4:	e009      	b.n	8006bea <__fputwc+0x52>
 8006bd6:	6823      	ldr	r3, [r4, #0]
 8006bd8:	1c5a      	adds	r2, r3, #1
 8006bda:	6022      	str	r2, [r4, #0]
 8006bdc:	f883 c000 	strb.w	ip, [r3]
 8006be0:	3501      	adds	r5, #1
 8006be2:	42b5      	cmp	r5, r6
 8006be4:	d216      	bcs.n	8006c14 <__fputwc+0x7c>
 8006be6:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006bea:	68a3      	ldr	r3, [r4, #8]
 8006bec:	3b01      	subs	r3, #1
 8006bee:	2b00      	cmp	r3, #0
 8006bf0:	60a3      	str	r3, [r4, #8]
 8006bf2:	daf0      	bge.n	8006bd6 <__fputwc+0x3e>
 8006bf4:	69a7      	ldr	r7, [r4, #24]
 8006bf6:	42bb      	cmp	r3, r7
 8006bf8:	4661      	mov	r1, ip
 8006bfa:	4622      	mov	r2, r4
 8006bfc:	4648      	mov	r0, r9
 8006bfe:	db02      	blt.n	8006c06 <__fputwc+0x6e>
 8006c00:	f1bc 0f0a 	cmp.w	ip, #10
 8006c04:	d1e7      	bne.n	8006bd6 <__fputwc+0x3e>
 8006c06:	f000 f8bf 	bl	8006d88 <__swbuf_r>
 8006c0a:	1c43      	adds	r3, r0, #1
 8006c0c:	d1e8      	bne.n	8006be0 <__fputwc+0x48>
 8006c0e:	b002      	add	sp, #8
 8006c10:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c14:	4640      	mov	r0, r8
 8006c16:	b002      	add	sp, #8
 8006c18:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c1c:	fa5f fc88 	uxtb.w	ip, r8
 8006c20:	4606      	mov	r6, r0
 8006c22:	f88d c004 	strb.w	ip, [sp, #4]
 8006c26:	e7d2      	b.n	8006bce <__fputwc+0x36>
 8006c28:	89a3      	ldrh	r3, [r4, #12]
 8006c2a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006c2e:	81a3      	strh	r3, [r4, #12]
 8006c30:	b002      	add	sp, #8
 8006c32:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c36:	bf00      	nop

08006c38 <_fputwc_r>:
 8006c38:	b530      	push	{r4, r5, lr}
 8006c3a:	4605      	mov	r5, r0
 8006c3c:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006c3e:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006c42:	07c0      	lsls	r0, r0, #31
 8006c44:	4614      	mov	r4, r2
 8006c46:	b083      	sub	sp, #12
 8006c48:	b29a      	uxth	r2, r3
 8006c4a:	d401      	bmi.n	8006c50 <_fputwc_r+0x18>
 8006c4c:	0590      	lsls	r0, r2, #22
 8006c4e:	d51c      	bpl.n	8006c8a <_fputwc_r+0x52>
 8006c50:	0490      	lsls	r0, r2, #18
 8006c52:	d406      	bmi.n	8006c62 <_fputwc_r+0x2a>
 8006c54:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c56:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006c5a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006c5e:	81a3      	strh	r3, [r4, #12]
 8006c60:	6662      	str	r2, [r4, #100]	; 0x64
 8006c62:	4628      	mov	r0, r5
 8006c64:	4622      	mov	r2, r4
 8006c66:	f7ff ff97 	bl	8006b98 <__fputwc>
 8006c6a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006c6c:	07da      	lsls	r2, r3, #31
 8006c6e:	4605      	mov	r5, r0
 8006c70:	d402      	bmi.n	8006c78 <_fputwc_r+0x40>
 8006c72:	89a3      	ldrh	r3, [r4, #12]
 8006c74:	059b      	lsls	r3, r3, #22
 8006c76:	d502      	bpl.n	8006c7e <_fputwc_r+0x46>
 8006c78:	4628      	mov	r0, r5
 8006c7a:	b003      	add	sp, #12
 8006c7c:	bd30      	pop	{r4, r5, pc}
 8006c7e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c80:	f7fe fd1e 	bl	80056c0 <__retarget_lock_release_recursive>
 8006c84:	4628      	mov	r0, r5
 8006c86:	b003      	add	sp, #12
 8006c88:	bd30      	pop	{r4, r5, pc}
 8006c8a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c8c:	9101      	str	r1, [sp, #4]
 8006c8e:	f7fe fd15 	bl	80056bc <__retarget_lock_acquire_recursive>
 8006c92:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c96:	9901      	ldr	r1, [sp, #4]
 8006c98:	b29a      	uxth	r2, r3
 8006c9a:	e7d9      	b.n	8006c50 <_fputwc_r+0x18>

08006c9c <_fstat_r>:
 8006c9c:	b538      	push	{r3, r4, r5, lr}
 8006c9e:	460b      	mov	r3, r1
 8006ca0:	4c07      	ldr	r4, [pc, #28]	; (8006cc0 <_fstat_r+0x24>)
 8006ca2:	4605      	mov	r5, r0
 8006ca4:	4611      	mov	r1, r2
 8006ca6:	4618      	mov	r0, r3
 8006ca8:	2300      	movs	r3, #0
 8006caa:	6023      	str	r3, [r4, #0]
 8006cac:	f7fb f9de 	bl	800206c <_fstat>
 8006cb0:	1c43      	adds	r3, r0, #1
 8006cb2:	d000      	beq.n	8006cb6 <_fstat_r+0x1a>
 8006cb4:	bd38      	pop	{r3, r4, r5, pc}
 8006cb6:	6823      	ldr	r3, [r4, #0]
 8006cb8:	2b00      	cmp	r3, #0
 8006cba:	d0fb      	beq.n	8006cb4 <_fstat_r+0x18>
 8006cbc:	602b      	str	r3, [r5, #0]
 8006cbe:	bd38      	pop	{r3, r4, r5, pc}
 8006cc0:	20000b14 	.word	0x20000b14

08006cc4 <_isatty_r>:
 8006cc4:	b538      	push	{r3, r4, r5, lr}
 8006cc6:	4c07      	ldr	r4, [pc, #28]	; (8006ce4 <_isatty_r+0x20>)
 8006cc8:	2300      	movs	r3, #0
 8006cca:	4605      	mov	r5, r0
 8006ccc:	4608      	mov	r0, r1
 8006cce:	6023      	str	r3, [r4, #0]
 8006cd0:	f7fb f9d1 	bl	8002076 <_isatty>
 8006cd4:	1c43      	adds	r3, r0, #1
 8006cd6:	d000      	beq.n	8006cda <_isatty_r+0x16>
 8006cd8:	bd38      	pop	{r3, r4, r5, pc}
 8006cda:	6823      	ldr	r3, [r4, #0]
 8006cdc:	2b00      	cmp	r3, #0
 8006cde:	d0fb      	beq.n	8006cd8 <_isatty_r+0x14>
 8006ce0:	602b      	str	r3, [r5, #0]
 8006ce2:	bd38      	pop	{r3, r4, r5, pc}
 8006ce4:	20000b14 	.word	0x20000b14

08006ce8 <__locale_mb_cur_max>:
 8006ce8:	4b04      	ldr	r3, [pc, #16]	; (8006cfc <__locale_mb_cur_max+0x14>)
 8006cea:	4a05      	ldr	r2, [pc, #20]	; (8006d00 <__locale_mb_cur_max+0x18>)
 8006cec:	681b      	ldr	r3, [r3, #0]
 8006cee:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006cf0:	2b00      	cmp	r3, #0
 8006cf2:	bf08      	it	eq
 8006cf4:	4613      	moveq	r3, r2
 8006cf6:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006cfa:	4770      	bx	lr
 8006cfc:	20000018 	.word	0x20000018
 8006d00:	2000085c 	.word	0x2000085c

08006d04 <_lseek_r>:
 8006d04:	b570      	push	{r4, r5, r6, lr}
 8006d06:	460d      	mov	r5, r1
 8006d08:	4c08      	ldr	r4, [pc, #32]	; (8006d2c <_lseek_r+0x28>)
 8006d0a:	4611      	mov	r1, r2
 8006d0c:	4606      	mov	r6, r0
 8006d0e:	461a      	mov	r2, r3
 8006d10:	4628      	mov	r0, r5
 8006d12:	2300      	movs	r3, #0
 8006d14:	6023      	str	r3, [r4, #0]
 8006d16:	f7fb f9b0 	bl	800207a <_lseek>
 8006d1a:	1c43      	adds	r3, r0, #1
 8006d1c:	d000      	beq.n	8006d20 <_lseek_r+0x1c>
 8006d1e:	bd70      	pop	{r4, r5, r6, pc}
 8006d20:	6823      	ldr	r3, [r4, #0]
 8006d22:	2b00      	cmp	r3, #0
 8006d24:	d0fb      	beq.n	8006d1e <_lseek_r+0x1a>
 8006d26:	6033      	str	r3, [r6, #0]
 8006d28:	bd70      	pop	{r4, r5, r6, pc}
 8006d2a:	bf00      	nop
 8006d2c:	20000b14 	.word	0x20000b14

08006d30 <__ascii_mbtowc>:
 8006d30:	b082      	sub	sp, #8
 8006d32:	b149      	cbz	r1, 8006d48 <__ascii_mbtowc+0x18>
 8006d34:	b15a      	cbz	r2, 8006d4e <__ascii_mbtowc+0x1e>
 8006d36:	b16b      	cbz	r3, 8006d54 <__ascii_mbtowc+0x24>
 8006d38:	7813      	ldrb	r3, [r2, #0]
 8006d3a:	600b      	str	r3, [r1, #0]
 8006d3c:	7812      	ldrb	r2, [r2, #0]
 8006d3e:	1c10      	adds	r0, r2, #0
 8006d40:	bf18      	it	ne
 8006d42:	2001      	movne	r0, #1
 8006d44:	b002      	add	sp, #8
 8006d46:	4770      	bx	lr
 8006d48:	a901      	add	r1, sp, #4
 8006d4a:	2a00      	cmp	r2, #0
 8006d4c:	d1f3      	bne.n	8006d36 <__ascii_mbtowc+0x6>
 8006d4e:	4610      	mov	r0, r2
 8006d50:	b002      	add	sp, #8
 8006d52:	4770      	bx	lr
 8006d54:	f06f 0001 	mvn.w	r0, #1
 8006d58:	e7f4      	b.n	8006d44 <__ascii_mbtowc+0x14>
 8006d5a:	bf00      	nop

08006d5c <_read_r>:
 8006d5c:	b570      	push	{r4, r5, r6, lr}
 8006d5e:	460d      	mov	r5, r1
 8006d60:	4c08      	ldr	r4, [pc, #32]	; (8006d84 <_read_r+0x28>)
 8006d62:	4611      	mov	r1, r2
 8006d64:	4606      	mov	r6, r0
 8006d66:	461a      	mov	r2, r3
 8006d68:	4628      	mov	r0, r5
 8006d6a:	2300      	movs	r3, #0
 8006d6c:	6023      	str	r3, [r4, #0]
 8006d6e:	f7fb f938 	bl	8001fe2 <_read>
 8006d72:	1c43      	adds	r3, r0, #1
 8006d74:	d000      	beq.n	8006d78 <_read_r+0x1c>
 8006d76:	bd70      	pop	{r4, r5, r6, pc}
 8006d78:	6823      	ldr	r3, [r4, #0]
 8006d7a:	2b00      	cmp	r3, #0
 8006d7c:	d0fb      	beq.n	8006d76 <_read_r+0x1a>
 8006d7e:	6033      	str	r3, [r6, #0]
 8006d80:	bd70      	pop	{r4, r5, r6, pc}
 8006d82:	bf00      	nop
 8006d84:	20000b14 	.word	0x20000b14

08006d88 <__swbuf_r>:
 8006d88:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006d8a:	460d      	mov	r5, r1
 8006d8c:	4614      	mov	r4, r2
 8006d8e:	4606      	mov	r6, r0
 8006d90:	b110      	cbz	r0, 8006d98 <__swbuf_r+0x10>
 8006d92:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006d94:	2b00      	cmp	r3, #0
 8006d96:	d043      	beq.n	8006e20 <__swbuf_r+0x98>
 8006d98:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006d9c:	69a3      	ldr	r3, [r4, #24]
 8006d9e:	60a3      	str	r3, [r4, #8]
 8006da0:	b291      	uxth	r1, r2
 8006da2:	0708      	lsls	r0, r1, #28
 8006da4:	d51b      	bpl.n	8006dde <__swbuf_r+0x56>
 8006da6:	6923      	ldr	r3, [r4, #16]
 8006da8:	b1cb      	cbz	r3, 8006dde <__swbuf_r+0x56>
 8006daa:	b2ed      	uxtb	r5, r5
 8006dac:	0489      	lsls	r1, r1, #18
 8006dae:	462f      	mov	r7, r5
 8006db0:	d522      	bpl.n	8006df8 <__swbuf_r+0x70>
 8006db2:	6822      	ldr	r2, [r4, #0]
 8006db4:	6961      	ldr	r1, [r4, #20]
 8006db6:	1ad3      	subs	r3, r2, r3
 8006db8:	4299      	cmp	r1, r3
 8006dba:	dd29      	ble.n	8006e10 <__swbuf_r+0x88>
 8006dbc:	3301      	adds	r3, #1
 8006dbe:	68a1      	ldr	r1, [r4, #8]
 8006dc0:	1c50      	adds	r0, r2, #1
 8006dc2:	3901      	subs	r1, #1
 8006dc4:	60a1      	str	r1, [r4, #8]
 8006dc6:	6020      	str	r0, [r4, #0]
 8006dc8:	7015      	strb	r5, [r2, #0]
 8006dca:	6962      	ldr	r2, [r4, #20]
 8006dcc:	429a      	cmp	r2, r3
 8006dce:	d02a      	beq.n	8006e26 <__swbuf_r+0x9e>
 8006dd0:	89a3      	ldrh	r3, [r4, #12]
 8006dd2:	07db      	lsls	r3, r3, #31
 8006dd4:	d501      	bpl.n	8006dda <__swbuf_r+0x52>
 8006dd6:	2d0a      	cmp	r5, #10
 8006dd8:	d025      	beq.n	8006e26 <__swbuf_r+0x9e>
 8006dda:	4638      	mov	r0, r7
 8006ddc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006dde:	4621      	mov	r1, r4
 8006de0:	4630      	mov	r0, r6
 8006de2:	f7fc fffd 	bl	8003de0 <__swsetup_r>
 8006de6:	bb20      	cbnz	r0, 8006e32 <__swbuf_r+0xaa>
 8006de8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006dec:	6923      	ldr	r3, [r4, #16]
 8006dee:	b291      	uxth	r1, r2
 8006df0:	b2ed      	uxtb	r5, r5
 8006df2:	0489      	lsls	r1, r1, #18
 8006df4:	462f      	mov	r7, r5
 8006df6:	d4dc      	bmi.n	8006db2 <__swbuf_r+0x2a>
 8006df8:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006dfa:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006dfe:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006e02:	81a2      	strh	r2, [r4, #12]
 8006e04:	6822      	ldr	r2, [r4, #0]
 8006e06:	6661      	str	r1, [r4, #100]	; 0x64
 8006e08:	6961      	ldr	r1, [r4, #20]
 8006e0a:	1ad3      	subs	r3, r2, r3
 8006e0c:	4299      	cmp	r1, r3
 8006e0e:	dcd5      	bgt.n	8006dbc <__swbuf_r+0x34>
 8006e10:	4621      	mov	r1, r4
 8006e12:	4630      	mov	r0, r6
 8006e14:	f7fe f8a6 	bl	8004f64 <_fflush_r>
 8006e18:	b958      	cbnz	r0, 8006e32 <__swbuf_r+0xaa>
 8006e1a:	6822      	ldr	r2, [r4, #0]
 8006e1c:	2301      	movs	r3, #1
 8006e1e:	e7ce      	b.n	8006dbe <__swbuf_r+0x36>
 8006e20:	f7fe f8fc 	bl	800501c <__sinit>
 8006e24:	e7b8      	b.n	8006d98 <__swbuf_r+0x10>
 8006e26:	4621      	mov	r1, r4
 8006e28:	4630      	mov	r0, r6
 8006e2a:	f7fe f89b 	bl	8004f64 <_fflush_r>
 8006e2e:	2800      	cmp	r0, #0
 8006e30:	d0d3      	beq.n	8006dda <__swbuf_r+0x52>
 8006e32:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006e36:	e7d0      	b.n	8006dda <__swbuf_r+0x52>

08006e38 <_wcrtomb_r>:
 8006e38:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006e3a:	4c11      	ldr	r4, [pc, #68]	; (8006e80 <_wcrtomb_r+0x48>)
 8006e3c:	6824      	ldr	r4, [r4, #0]
 8006e3e:	b085      	sub	sp, #20
 8006e40:	4606      	mov	r6, r0
 8006e42:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006e44:	461f      	mov	r7, r3
 8006e46:	b151      	cbz	r1, 8006e5e <_wcrtomb_r+0x26>
 8006e48:	4d0e      	ldr	r5, [pc, #56]	; (8006e84 <_wcrtomb_r+0x4c>)
 8006e4a:	2c00      	cmp	r4, #0
 8006e4c:	bf08      	it	eq
 8006e4e:	462c      	moveq	r4, r5
 8006e50:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006e54:	47a0      	blx	r4
 8006e56:	1c43      	adds	r3, r0, #1
 8006e58:	d00c      	beq.n	8006e74 <_wcrtomb_r+0x3c>
 8006e5a:	b005      	add	sp, #20
 8006e5c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006e5e:	4a09      	ldr	r2, [pc, #36]	; (8006e84 <_wcrtomb_r+0x4c>)
 8006e60:	2c00      	cmp	r4, #0
 8006e62:	bf08      	it	eq
 8006e64:	4614      	moveq	r4, r2
 8006e66:	460a      	mov	r2, r1
 8006e68:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006e6c:	a901      	add	r1, sp, #4
 8006e6e:	47a0      	blx	r4
 8006e70:	1c43      	adds	r3, r0, #1
 8006e72:	d1f2      	bne.n	8006e5a <_wcrtomb_r+0x22>
 8006e74:	2200      	movs	r2, #0
 8006e76:	238a      	movs	r3, #138	; 0x8a
 8006e78:	603a      	str	r2, [r7, #0]
 8006e7a:	6033      	str	r3, [r6, #0]
 8006e7c:	b005      	add	sp, #20
 8006e7e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006e80:	20000018 	.word	0x20000018
 8006e84:	2000085c 	.word	0x2000085c

08006e88 <__ascii_wctomb>:
 8006e88:	b121      	cbz	r1, 8006e94 <__ascii_wctomb+0xc>
 8006e8a:	2aff      	cmp	r2, #255	; 0xff
 8006e8c:	d804      	bhi.n	8006e98 <__ascii_wctomb+0x10>
 8006e8e:	700a      	strb	r2, [r1, #0]
 8006e90:	2001      	movs	r0, #1
 8006e92:	4770      	bx	lr
 8006e94:	4608      	mov	r0, r1
 8006e96:	4770      	bx	lr
 8006e98:	238a      	movs	r3, #138	; 0x8a
 8006e9a:	6003      	str	r3, [r0, #0]
 8006e9c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006ea0:	4770      	bx	lr
 8006ea2:	bf00      	nop

08006ea4 <_init>:
 8006ea4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006ea6:	bf00      	nop
 8006ea8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006eaa:	bc08      	pop	{r3}
 8006eac:	469e      	mov	lr, r3
 8006eae:	4770      	bx	lr

08006eb0 <_fini>:
 8006eb0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006eb2:	bf00      	nop
 8006eb4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006eb6:	bc08      	pop	{r3}
 8006eb8:	469e      	mov	lr, r3
 8006eba:	4770      	bx	lr
 8006ebc:	0000      	movs	r0, r0
	...
