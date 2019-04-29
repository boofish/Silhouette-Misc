
sglib-listsort.elf:     file format elf32-littlearm


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
 80001e0:	08006fc8 	.word	0x08006fc8

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
 80001fc:	08006fc8 	.word	0x08006fc8

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
 80013e8:	f646 72f8 	movw	r2, #28664	; 0x6ff8
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
 8001462:	f646 72f0 	movw	r2, #28656	; 0x6ff0
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
 800148c:	f646 72f0 	movw	r2, #28656	; 0x6ff0
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
 80019d4:	f247 0328 	movw	r3, #28712	; 0x7028
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
 80019fc:	f247 0338 	movw	r3, #28728	; 0x7038
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
 8001eb8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eba:	af03      	add	r7, sp, #12
 8001ebc:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8001ec0:	b082      	sub	sp, #8
 8001ec2:	f240 0514 	movw	r5, #20
 8001ec6:	2400      	movs	r4, #0
 8001ec8:	2600      	movs	r6, #0
 8001eca:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8001ece:	2008      	movs	r0, #8
 8001ed0:	f000 f9d2 	bl	8002278 <malloc>
 8001ed4:	4601      	mov	r1, r0
 8001ed6:	f855 0024 	ldr.w	r0, [r5, r4, lsl #2]
 8001eda:	3401      	adds	r4, #1
 8001edc:	2c64      	cmp	r4, #100	; 0x64
 8001ede:	e9c1 0600 	strd	r0, r6, [r1]
 8001ee2:	460e      	mov	r6, r1
 8001ee4:	d1f3      	bne.n	8001ece <benchmark+0x16>
 8001ee6:	2200      	movs	r2, #0
 8001ee8:	b139      	cbz	r1, 8001efa <benchmark+0x42>
 8001eea:	2300      	movs	r3, #0
 8001eec:	4608      	mov	r0, r1
 8001eee:	6841      	ldr	r1, [r0, #4]
 8001ef0:	6043      	str	r3, [r0, #4]
 8001ef2:	4603      	mov	r3, r0
 8001ef4:	2900      	cmp	r1, #0
 8001ef6:	d1f9      	bne.n	8001eec <benchmark+0x34>
 8001ef8:	e000      	b.n	8001efc <benchmark+0x44>
 8001efa:	2000      	movs	r0, #0
 8001efc:	2800      	cmp	r0, #0
 8001efe:	9201      	str	r2, [sp, #4]
 8001f00:	d06a      	beq.n	8001fd8 <benchmark+0x120>
 8001f02:	2101      	movs	r1, #1
 8001f04:	f10d 0c04 	add.w	ip, sp, #4
 8001f08:	f04f 0e00 	mov.w	lr, #0
 8001f0c:	f04f 0800 	mov.w	r8, #0
 8001f10:	4664      	mov	r4, ip
 8001f12:	4602      	mov	r2, r0
 8001f14:	2a00      	cmp	r2, #0
 8001f16:	4691      	mov	r9, r2
 8001f18:	bf18      	it	ne
 8001f1a:	f04f 0901 	movne.w	r9, #1
 8001f1e:	d00c      	beq.n	8001f3a <benchmark+0x82>
 8001f20:	2902      	cmp	r1, #2
 8001f22:	4610      	mov	r0, r2
 8001f24:	db09      	blt.n	8001f3a <benchmark+0x82>
 8001f26:	2602      	movs	r6, #2
 8001f28:	4610      	mov	r0, r2
 8001f2a:	6840      	ldr	r0, [r0, #4]
 8001f2c:	b118      	cbz	r0, 8001f36 <benchmark+0x7e>
 8001f2e:	1c73      	adds	r3, r6, #1
 8001f30:	428e      	cmp	r6, r1
 8001f32:	461e      	mov	r6, r3
 8001f34:	dbf9      	blt.n	8001f2a <benchmark+0x72>
 8001f36:	2800      	cmp	r0, #0
 8001f38:	d044      	beq.n	8001fc4 <benchmark+0x10c>
 8001f3a:	6843      	ldr	r3, [r0, #4]
 8001f3c:	f8c0 e004 	str.w	lr, [r0, #4]
 8001f40:	2b00      	cmp	r3, #0
 8001f42:	461e      	mov	r6, r3
 8001f44:	d00a      	beq.n	8001f5c <benchmark+0xa4>
 8001f46:	2902      	cmp	r1, #2
 8001f48:	461e      	mov	r6, r3
 8001f4a:	db07      	blt.n	8001f5c <benchmark+0xa4>
 8001f4c:	2002      	movs	r0, #2
 8001f4e:	461e      	mov	r6, r3
 8001f50:	6876      	ldr	r6, [r6, #4]
 8001f52:	b11e      	cbz	r6, 8001f5c <benchmark+0xa4>
 8001f54:	1c45      	adds	r5, r0, #1
 8001f56:	4288      	cmp	r0, r1
 8001f58:	4628      	mov	r0, r5
 8001f5a:	dbf9      	blt.n	8001f50 <benchmark+0x98>
 8001f5c:	2e00      	cmp	r6, #0
 8001f5e:	bf1a      	itte	ne
 8001f60:	6870      	ldrne	r0, [r6, #4]
 8001f62:	f8c6 e004 	strne.w	lr, [r6, #4]
 8001f66:	2000      	moveq	r0, #0
 8001f68:	2a00      	cmp	r2, #0
 8001f6a:	bf18      	it	ne
 8001f6c:	2b00      	cmpne	r3, #0
 8001f6e:	d014      	beq.n	8001f9a <benchmark+0xe2>
 8001f70:	6815      	ldr	r5, [r2, #0]
 8001f72:	681e      	ldr	r6, [r3, #0]
 8001f74:	42b5      	cmp	r5, r6
 8001f76:	db06      	blt.n	8001f86 <benchmark+0xce>
 8001f78:	6023      	str	r3, [r4, #0]
 8001f7a:	461c      	mov	r4, r3
 8001f7c:	f854 3f04 	ldr.w	r3, [r4, #4]!
 8001f80:	2b00      	cmp	r3, #0
 8001f82:	d1f6      	bne.n	8001f72 <benchmark+0xba>
 8001f84:	e00e      	b.n	8001fa4 <benchmark+0xec>
 8001f86:	6022      	str	r2, [r4, #0]
 8001f88:	4614      	mov	r4, r2
 8001f8a:	f854 2f04 	ldr.w	r2, [r4, #4]!
 8001f8e:	2a00      	cmp	r2, #0
 8001f90:	4691      	mov	r9, r2
 8001f92:	bf18      	it	ne
 8001f94:	f04f 0901 	movne.w	r9, #1
 8001f98:	d1ea      	bne.n	8001f70 <benchmark+0xb8>
 8001f9a:	f1b9 0f01 	cmp.w	r9, #1
 8001f9e:	bf08      	it	eq
 8001fa0:	4613      	moveq	r3, r2
 8001fa2:	e000      	b.n	8001fa6 <benchmark+0xee>
 8001fa4:	4613      	mov	r3, r2
 8001fa6:	2b00      	cmp	r3, #0
 8001fa8:	6023      	str	r3, [r4, #0]
 8001faa:	d005      	beq.n	8001fb8 <benchmark+0x100>
 8001fac:	f853 2f04 	ldr.w	r2, [r3, #4]!
 8001fb0:	461c      	mov	r4, r3
 8001fb2:	2a00      	cmp	r2, #0
 8001fb4:	4613      	mov	r3, r2
 8001fb6:	d1f9      	bne.n	8001fac <benchmark+0xf4>
 8001fb8:	f04f 0801 	mov.w	r8, #1
 8001fbc:	2800      	cmp	r0, #0
 8001fbe:	d1a8      	bne.n	8001f12 <benchmark+0x5a>
 8001fc0:	9801      	ldr	r0, [sp, #4]
 8001fc2:	e004      	b.n	8001fce <benchmark+0x116>
 8001fc4:	6022      	str	r2, [r4, #0]
 8001fc6:	f1b8 0f00 	cmp.w	r8, #0
 8001fca:	9801      	ldr	r0, [sp, #4]
 8001fcc:	d005      	beq.n	8001fda <benchmark+0x122>
 8001fce:	0049      	lsls	r1, r1, #1
 8001fd0:	2800      	cmp	r0, #0
 8001fd2:	f8cd e004 	str.w	lr, [sp, #4]
 8001fd6:	d199      	bne.n	8001f0c <benchmark+0x54>
 8001fd8:	9801      	ldr	r0, [sp, #4]
 8001fda:	2400      	movs	r4, #0
 8001fdc:	b160      	cbz	r0, 8001ff8 <benchmark+0x140>
 8001fde:	4601      	mov	r1, r0
 8001fe0:	e9d1 2100 	ldrd	r2, r1, [r1]
 8001fe4:	4414      	add	r4, r2
 8001fe6:	2900      	cmp	r1, #0
 8001fe8:	d1fa      	bne.n	8001fe0 <benchmark+0x128>
 8001fea:	b128      	cbz	r0, 8001ff8 <benchmark+0x140>
 8001fec:	6845      	ldr	r5, [r0, #4]
 8001fee:	f000 f94b 	bl	8002288 <free>
 8001ff2:	2d00      	cmp	r5, #0
 8001ff4:	4628      	mov	r0, r5
 8001ff6:	d1f9      	bne.n	8001fec <benchmark+0x134>
 8001ff8:	4620      	mov	r0, r4
 8001ffa:	b002      	add	sp, #8
 8001ffc:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8002000:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002002 <verify_benchmark>:
 8002002:	f241 3256 	movw	r2, #4950	; 0x1356
 8002006:	2100      	movs	r1, #0
 8002008:	4290      	cmp	r0, r2
 800200a:	bf08      	it	eq
 800200c:	2101      	moveq	r1, #1
 800200e:	4608      	mov	r0, r1
 8002010:	4770      	bx	lr

08002012 <__io_putchar>:
 8002012:	b580      	push	{r7, lr}
 8002014:	466f      	mov	r7, sp
 8002016:	b082      	sub	sp, #8
 8002018:	9001      	str	r0, [sp, #4]
 800201a:	f640 3074 	movw	r0, #2932	; 0xb74
 800201e:	a901      	add	r1, sp, #4
 8002020:	2201      	movs	r2, #1
 8002022:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002026:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800202a:	f7ff fe56 	bl	8001cda <HAL_UART_Transmit>
 800202e:	9801      	ldr	r0, [sp, #4]
 8002030:	b002      	add	sp, #8
 8002032:	bd80      	pop	{r7, pc}

08002034 <main>:
 8002034:	b5b0      	push	{r4, r5, r7, lr}
 8002036:	af02      	add	r7, sp, #8
 8002038:	f640 3174 	movw	r1, #2932	; 0xb74
 800203c:	f643 0000 	movw	r0, #14336	; 0x3800
 8002040:	220c      	movs	r2, #12
 8002042:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002046:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800204a:	6008      	str	r0, [r1, #0]
 800204c:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8002050:	6048      	str	r0, [r1, #4]
 8002052:	2000      	movs	r0, #0
 8002054:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8002058:	6108      	str	r0, [r1, #16]
 800205a:	6248      	str	r0, [r1, #36]	; 0x24
 800205c:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8002060:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8002064:	2000      	movs	r0, #0
 8002066:	f7ff fecd 	bl	8001e04 <BSP_COM_Init>
 800206a:	f7ff ff24 	bl	8001eb6 <initialise_benchmark>
 800206e:	f247 0048 	movw	r0, #28744	; 0x7048
 8002072:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002076:	f000 fc09 	bl	800288c <printf>
 800207a:	f247 00f9 	movw	r0, #28921	; 0x70f9
 800207e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002082:	f000 fc65 	bl	8002950 <puts>
 8002086:	f7ff f82f 	bl	80010e8 <HAL_Init>
 800208a:	f7ff f845 	bl	8001118 <HAL_GetTick>
 800208e:	4604      	mov	r4, r0
 8002090:	f7ff ff12 	bl	8001eb8 <benchmark>
 8002094:	4605      	mov	r5, r0
 8002096:	f7ff f83f 	bl	8001118 <HAL_GetTick>
 800209a:	1b04      	subs	r4, r0, r4
 800209c:	4628      	mov	r0, r5
 800209e:	f7ff ffb0 	bl	8002002 <verify_benchmark>
 80020a2:	1c41      	adds	r1, r0, #1
 80020a4:	d006      	beq.n	80020b4 <main+0x80>
 80020a6:	2801      	cmp	r0, #1
 80020a8:	d109      	bne.n	80020be <main+0x8a>
 80020aa:	f247 0065 	movw	r0, #28773	; 0x7065
 80020ae:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020b2:	e008      	b.n	80020c6 <main+0x92>
 80020b4:	f247 0089 	movw	r0, #28809	; 0x7089
 80020b8:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020bc:	e003      	b.n	80020c6 <main+0x92>
 80020be:	f247 00be 	movw	r0, #28862	; 0x70be
 80020c2:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020c6:	4621      	mov	r1, r4
 80020c8:	f000 fbe0 	bl	800288c <printf>
 80020cc:	2000      	movs	r0, #0
 80020ce:	bdb0      	pop	{r4, r5, r7, pc}

080020d0 <SysTick_Handler>:
 80020d0:	b580      	push	{r7, lr}
 80020d2:	466f      	mov	r7, sp
 80020d4:	f7ff f818 	bl	8001108 <HAL_IncTick>
 80020d8:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80020dc:	f7ff b872 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

080020e0 <_read>:
 80020e0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80020e2:	af03      	add	r7, sp, #12
 80020e4:	f84d bd04 	str.w	fp, [sp, #-4]!
 80020e8:	4614      	mov	r4, r2
 80020ea:	460d      	mov	r5, r1
 80020ec:	2c01      	cmp	r4, #1
 80020ee:	db06      	blt.n	80020fe <_read+0x1e>
 80020f0:	4626      	mov	r6, r4
 80020f2:	f3af 8000 	nop.w
 80020f6:	f805 0b01 	strb.w	r0, [r5], #1
 80020fa:	3e01      	subs	r6, #1
 80020fc:	d1f9      	bne.n	80020f2 <_read+0x12>
 80020fe:	4620      	mov	r0, r4
 8002100:	f85d bb04 	ldr.w	fp, [sp], #4
 8002104:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002106 <_write>:
 8002106:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002108:	af03      	add	r7, sp, #12
 800210a:	f84d bd04 	str.w	fp, [sp, #-4]!
 800210e:	4614      	mov	r4, r2
 8002110:	460d      	mov	r5, r1
 8002112:	2c01      	cmp	r4, #1
 8002114:	db06      	blt.n	8002124 <_write+0x1e>
 8002116:	4626      	mov	r6, r4
 8002118:	f815 0b01 	ldrb.w	r0, [r5], #1
 800211c:	f7ff ff79 	bl	8002012 <__io_putchar>
 8002120:	3e01      	subs	r6, #1
 8002122:	d1f9      	bne.n	8002118 <_write+0x12>
 8002124:	4620      	mov	r0, r4
 8002126:	f85d bb04 	ldr.w	fp, [sp], #4
 800212a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800212c <_sbrk>:
 800212c:	f640 32f8 	movw	r2, #3064	; 0xbf8
 8002130:	4601      	mov	r1, r0
 8002132:	466b      	mov	r3, sp
 8002134:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002138:	6810      	ldr	r0, [r2, #0]
 800213a:	2800      	cmp	r0, #0
 800213c:	bf02      	ittt	eq
 800213e:	f640 40a0 	movweq	r0, #3232	; 0xca0
 8002142:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002146:	6010      	streq	r0, [r2, #0]
 8002148:	4401      	add	r1, r0
 800214a:	4299      	cmp	r1, r3
 800214c:	bf9c      	itt	ls
 800214e:	6011      	strls	r1, [r2, #0]
 8002150:	4770      	bxls	lr
 8002152:	b580      	push	{r7, lr}
 8002154:	466f      	mov	r7, sp
 8002156:	f000 f865 	bl	8002224 <__errno>
 800215a:	210c      	movs	r1, #12
 800215c:	6001      	str	r1, [r0, #0]
 800215e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002162:	bd80      	pop	{r7, pc}

08002164 <_close>:
 8002164:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002168:	4770      	bx	lr

0800216a <_fstat>:
 800216a:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 800216e:	6048      	str	r0, [r1, #4]
 8002170:	2000      	movs	r0, #0
 8002172:	4770      	bx	lr

08002174 <_isatty>:
 8002174:	2001      	movs	r0, #1
 8002176:	4770      	bx	lr

08002178 <_lseek>:
 8002178:	2000      	movs	r0, #0
 800217a:	4770      	bx	lr

0800217c <SystemInit>:
 800217c:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002180:	f04f 0c00 	mov.w	ip, #0
 8002184:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002188:	6801      	ldr	r1, [r0, #0]
 800218a:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 800218e:	6001      	str	r1, [r0, #0]
 8002190:	f241 0100 	movw	r1, #4096	; 0x1000
 8002194:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002198:	680a      	ldr	r2, [r1, #0]
 800219a:	f042 0201 	orr.w	r2, r2, #1
 800219e:	600a      	str	r2, [r1, #0]
 80021a0:	f8c1 c008 	str.w	ip, [r1, #8]
 80021a4:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80021a8:	680b      	ldr	r3, [r1, #0]
 80021aa:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 80021ae:	401a      	ands	r2, r3
 80021b0:	600a      	str	r2, [r1, #0]
 80021b2:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80021b6:	60ca      	str	r2, [r1, #12]
 80021b8:	680a      	ldr	r2, [r1, #0]
 80021ba:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80021be:	600a      	str	r2, [r1, #0]
 80021c0:	f8c1 c018 	str.w	ip, [r1, #24]
 80021c4:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80021c8:	f840 1c80 	str.w	r1, [r0, #-128]
 80021cc:	4770      	bx	lr
	...

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
 80021fa:	f7ff ffbf 	bl	800217c <SystemInit>
 80021fe:	f000 f817 	bl	8002230 <__libc_init_array>
 8002202:	f7ff ff17 	bl	8002034 <main>

08002206 <LoopForever>:
 8002206:	e7fe      	b.n	8002206 <LoopForever>
 8002208:	20018000 	.word	0x20018000
 800220c:	080073a0 	.word	0x080073a0
 8002210:	20000000 	.word	0x20000000
 8002214:	20000b58 	.word	0x20000b58
 8002218:	20000b58 	.word	0x20000b58
 800221c:	20000ca0 	.word	0x20000ca0

08002220 <ADC1_2_IRQHandler>:
 8002220:	e7fe      	b.n	8002220 <ADC1_2_IRQHandler>
	...

08002224 <__errno>:
 8002224:	4b01      	ldr	r3, [pc, #4]	; (800222c <__errno+0x8>)
 8002226:	6818      	ldr	r0, [r3, #0]
 8002228:	4770      	bx	lr
 800222a:	bf00      	nop
 800222c:	200001a8 	.word	0x200001a8

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
 8002250:	f004 feba 	bl	8006fc8 <_init>
 8002254:	10b6      	asrs	r6, r6, #2
 8002256:	d006      	beq.n	8002266 <__libc_init_array+0x36>
 8002258:	2400      	movs	r4, #0
 800225a:	3401      	adds	r4, #1
 800225c:	f855 3b04 	ldr.w	r3, [r5], #4
 8002260:	4798      	blx	r3
 8002262:	42a6      	cmp	r6, r4
 8002264:	d1f9      	bne.n	800225a <__libc_init_array+0x2a>
 8002266:	bd70      	pop	{r4, r5, r6, pc}
 8002268:	08007390 	.word	0x08007390
 800226c:	08007390 	.word	0x08007390
 8002270:	08007398 	.word	0x08007398
 8002274:	08007390 	.word	0x08007390

08002278 <malloc>:
 8002278:	4b02      	ldr	r3, [pc, #8]	; (8002284 <malloc+0xc>)
 800227a:	4601      	mov	r1, r0
 800227c:	6818      	ldr	r0, [r3, #0]
 800227e:	f000 b80b 	b.w	8002298 <_malloc_r>
 8002282:	bf00      	nop
 8002284:	200001a8 	.word	0x200001a8

08002288 <free>:
 8002288:	4b02      	ldr	r3, [pc, #8]	; (8002294 <free+0xc>)
 800228a:	4601      	mov	r1, r0
 800228c:	6818      	ldr	r0, [r3, #0]
 800228e:	f003 babb 	b.w	8005808 <_free_r>
 8002292:	bf00      	nop
 8002294:	200001a8 	.word	0x200001a8

08002298 <_malloc_r>:
 8002298:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800229c:	f101 050b 	add.w	r5, r1, #11
 80022a0:	2d16      	cmp	r5, #22
 80022a2:	b083      	sub	sp, #12
 80022a4:	4606      	mov	r6, r0
 80022a6:	d823      	bhi.n	80022f0 <_malloc_r+0x58>
 80022a8:	2910      	cmp	r1, #16
 80022aa:	f200 80b9 	bhi.w	8002420 <_malloc_r+0x188>
 80022ae:	f000 fae1 	bl	8002874 <__malloc_lock>
 80022b2:	2510      	movs	r5, #16
 80022b4:	2318      	movs	r3, #24
 80022b6:	2002      	movs	r0, #2
 80022b8:	4fc5      	ldr	r7, [pc, #788]	; (80025d0 <_malloc_r+0x338>)
 80022ba:	443b      	add	r3, r7
 80022bc:	f1a3 0208 	sub.w	r2, r3, #8
 80022c0:	685c      	ldr	r4, [r3, #4]
 80022c2:	4294      	cmp	r4, r2
 80022c4:	f000 8166 	beq.w	8002594 <_malloc_r+0x2fc>
 80022c8:	6863      	ldr	r3, [r4, #4]
 80022ca:	f023 0303 	bic.w	r3, r3, #3
 80022ce:	4423      	add	r3, r4
 80022d0:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 80022d4:	685a      	ldr	r2, [r3, #4]
 80022d6:	60e9      	str	r1, [r5, #12]
 80022d8:	f042 0201 	orr.w	r2, r2, #1
 80022dc:	608d      	str	r5, [r1, #8]
 80022de:	4630      	mov	r0, r6
 80022e0:	605a      	str	r2, [r3, #4]
 80022e2:	f000 facd 	bl	8002880 <__malloc_unlock>
 80022e6:	3408      	adds	r4, #8
 80022e8:	4620      	mov	r0, r4
 80022ea:	b003      	add	sp, #12
 80022ec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80022f0:	f035 0507 	bics.w	r5, r5, #7
 80022f4:	f100 8094 	bmi.w	8002420 <_malloc_r+0x188>
 80022f8:	42a9      	cmp	r1, r5
 80022fa:	f200 8091 	bhi.w	8002420 <_malloc_r+0x188>
 80022fe:	f000 fab9 	bl	8002874 <__malloc_lock>
 8002302:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8002306:	f0c0 8183 	bcc.w	8002610 <_malloc_r+0x378>
 800230a:	0a6b      	lsrs	r3, r5, #9
 800230c:	f000 808f 	beq.w	800242e <_malloc_r+0x196>
 8002310:	2b04      	cmp	r3, #4
 8002312:	f200 8146 	bhi.w	80025a2 <_malloc_r+0x30a>
 8002316:	09ab      	lsrs	r3, r5, #6
 8002318:	f103 0039 	add.w	r0, r3, #57	; 0x39
 800231c:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8002320:	00c3      	lsls	r3, r0, #3
 8002322:	4fab      	ldr	r7, [pc, #684]	; (80025d0 <_malloc_r+0x338>)
 8002324:	443b      	add	r3, r7
 8002326:	f1a3 0108 	sub.w	r1, r3, #8
 800232a:	685c      	ldr	r4, [r3, #4]
 800232c:	42a1      	cmp	r1, r4
 800232e:	d106      	bne.n	800233e <_malloc_r+0xa6>
 8002330:	e00c      	b.n	800234c <_malloc_r+0xb4>
 8002332:	2a00      	cmp	r2, #0
 8002334:	f280 811d 	bge.w	8002572 <_malloc_r+0x2da>
 8002338:	68e4      	ldr	r4, [r4, #12]
 800233a:	42a1      	cmp	r1, r4
 800233c:	d006      	beq.n	800234c <_malloc_r+0xb4>
 800233e:	6863      	ldr	r3, [r4, #4]
 8002340:	f023 0303 	bic.w	r3, r3, #3
 8002344:	1b5a      	subs	r2, r3, r5
 8002346:	2a0f      	cmp	r2, #15
 8002348:	ddf3      	ble.n	8002332 <_malloc_r+0x9a>
 800234a:	4660      	mov	r0, ip
 800234c:	693c      	ldr	r4, [r7, #16]
 800234e:	f8df c294 	ldr.w	ip, [pc, #660]	; 80025e4 <_malloc_r+0x34c>
 8002352:	4564      	cmp	r4, ip
 8002354:	d071      	beq.n	800243a <_malloc_r+0x1a2>
 8002356:	6863      	ldr	r3, [r4, #4]
 8002358:	f023 0303 	bic.w	r3, r3, #3
 800235c:	1b5a      	subs	r2, r3, r5
 800235e:	2a0f      	cmp	r2, #15
 8002360:	f300 8144 	bgt.w	80025ec <_malloc_r+0x354>
 8002364:	2a00      	cmp	r2, #0
 8002366:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 800236a:	f280 8126 	bge.w	80025ba <_malloc_r+0x322>
 800236e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8002372:	f080 8169 	bcs.w	8002648 <_malloc_r+0x3b0>
 8002376:	08db      	lsrs	r3, r3, #3
 8002378:	1c59      	adds	r1, r3, #1
 800237a:	687a      	ldr	r2, [r7, #4]
 800237c:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8002380:	f8c4 8008 	str.w	r8, [r4, #8]
 8002384:	f04f 0e01 	mov.w	lr, #1
 8002388:	109b      	asrs	r3, r3, #2
 800238a:	fa0e f303 	lsl.w	r3, lr, r3
 800238e:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8002392:	4313      	orrs	r3, r2
 8002394:	f1ae 0208 	sub.w	r2, lr, #8
 8002398:	60e2      	str	r2, [r4, #12]
 800239a:	607b      	str	r3, [r7, #4]
 800239c:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 80023a0:	f8c8 400c 	str.w	r4, [r8, #12]
 80023a4:	1082      	asrs	r2, r0, #2
 80023a6:	2401      	movs	r4, #1
 80023a8:	4094      	lsls	r4, r2
 80023aa:	429c      	cmp	r4, r3
 80023ac:	d84b      	bhi.n	8002446 <_malloc_r+0x1ae>
 80023ae:	421c      	tst	r4, r3
 80023b0:	d106      	bne.n	80023c0 <_malloc_r+0x128>
 80023b2:	f020 0003 	bic.w	r0, r0, #3
 80023b6:	0064      	lsls	r4, r4, #1
 80023b8:	421c      	tst	r4, r3
 80023ba:	f100 0004 	add.w	r0, r0, #4
 80023be:	d0fa      	beq.n	80023b6 <_malloc_r+0x11e>
 80023c0:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 80023c4:	46ce      	mov	lr, r9
 80023c6:	4680      	mov	r8, r0
 80023c8:	f8de 300c 	ldr.w	r3, [lr, #12]
 80023cc:	459e      	cmp	lr, r3
 80023ce:	d107      	bne.n	80023e0 <_malloc_r+0x148>
 80023d0:	e122      	b.n	8002618 <_malloc_r+0x380>
 80023d2:	2a00      	cmp	r2, #0
 80023d4:	f280 8129 	bge.w	800262a <_malloc_r+0x392>
 80023d8:	68db      	ldr	r3, [r3, #12]
 80023da:	459e      	cmp	lr, r3
 80023dc:	f000 811c 	beq.w	8002618 <_malloc_r+0x380>
 80023e0:	6859      	ldr	r1, [r3, #4]
 80023e2:	f021 0103 	bic.w	r1, r1, #3
 80023e6:	1b4a      	subs	r2, r1, r5
 80023e8:	2a0f      	cmp	r2, #15
 80023ea:	ddf2      	ble.n	80023d2 <_malloc_r+0x13a>
 80023ec:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 80023f0:	195c      	adds	r4, r3, r5
 80023f2:	f045 0501 	orr.w	r5, r5, #1
 80023f6:	605d      	str	r5, [r3, #4]
 80023f8:	f042 0501 	orr.w	r5, r2, #1
 80023fc:	f8c8 e00c 	str.w	lr, [r8, #12]
 8002400:	4630      	mov	r0, r6
 8002402:	f8ce 8008 	str.w	r8, [lr, #8]
 8002406:	e9c7 4404 	strd	r4, r4, [r7, #16]
 800240a:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 800240e:	6065      	str	r5, [r4, #4]
 8002410:	505a      	str	r2, [r3, r1]
 8002412:	9301      	str	r3, [sp, #4]
 8002414:	f000 fa34 	bl	8002880 <__malloc_unlock>
 8002418:	9b01      	ldr	r3, [sp, #4]
 800241a:	f103 0408 	add.w	r4, r3, #8
 800241e:	e763      	b.n	80022e8 <_malloc_r+0x50>
 8002420:	2400      	movs	r4, #0
 8002422:	230c      	movs	r3, #12
 8002424:	4620      	mov	r0, r4
 8002426:	6033      	str	r3, [r6, #0]
 8002428:	b003      	add	sp, #12
 800242a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800242e:	f44f 7300 	mov.w	r3, #512	; 0x200
 8002432:	2040      	movs	r0, #64	; 0x40
 8002434:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8002438:	e773      	b.n	8002322 <_malloc_r+0x8a>
 800243a:	687b      	ldr	r3, [r7, #4]
 800243c:	1082      	asrs	r2, r0, #2
 800243e:	2401      	movs	r4, #1
 8002440:	4094      	lsls	r4, r2
 8002442:	429c      	cmp	r4, r3
 8002444:	d9b3      	bls.n	80023ae <_malloc_r+0x116>
 8002446:	68bc      	ldr	r4, [r7, #8]
 8002448:	6863      	ldr	r3, [r4, #4]
 800244a:	f023 0903 	bic.w	r9, r3, #3
 800244e:	45a9      	cmp	r9, r5
 8002450:	d303      	bcc.n	800245a <_malloc_r+0x1c2>
 8002452:	eba9 0305 	sub.w	r3, r9, r5
 8002456:	2b0f      	cmp	r3, #15
 8002458:	dc7b      	bgt.n	8002552 <_malloc_r+0x2ba>
 800245a:	4b5e      	ldr	r3, [pc, #376]	; (80025d4 <_malloc_r+0x33c>)
 800245c:	f8df a188 	ldr.w	sl, [pc, #392]	; 80025e8 <_malloc_r+0x350>
 8002460:	681a      	ldr	r2, [r3, #0]
 8002462:	f8da 3000 	ldr.w	r3, [sl]
 8002466:	3301      	adds	r3, #1
 8002468:	eb05 0802 	add.w	r8, r5, r2
 800246c:	f000 8148 	beq.w	8002700 <_malloc_r+0x468>
 8002470:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8002474:	f108 080f 	add.w	r8, r8, #15
 8002478:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 800247c:	f028 080f 	bic.w	r8, r8, #15
 8002480:	4641      	mov	r1, r8
 8002482:	4630      	mov	r0, r6
 8002484:	f000 fa6c 	bl	8002960 <_sbrk_r>
 8002488:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 800248c:	4683      	mov	fp, r0
 800248e:	f000 8104 	beq.w	800269a <_malloc_r+0x402>
 8002492:	eb04 0009 	add.w	r0, r4, r9
 8002496:	4558      	cmp	r0, fp
 8002498:	f200 80fd 	bhi.w	8002696 <_malloc_r+0x3fe>
 800249c:	4a4e      	ldr	r2, [pc, #312]	; (80025d8 <_malloc_r+0x340>)
 800249e:	6813      	ldr	r3, [r2, #0]
 80024a0:	4443      	add	r3, r8
 80024a2:	6013      	str	r3, [r2, #0]
 80024a4:	f000 814d 	beq.w	8002742 <_malloc_r+0x4aa>
 80024a8:	f8da 1000 	ldr.w	r1, [sl]
 80024ac:	3101      	adds	r1, #1
 80024ae:	bf1b      	ittet	ne
 80024b0:	ebab 0000 	subne.w	r0, fp, r0
 80024b4:	181b      	addne	r3, r3, r0
 80024b6:	f8ca b000 	streq.w	fp, [sl]
 80024ba:	6013      	strne	r3, [r2, #0]
 80024bc:	f01b 0307 	ands.w	r3, fp, #7
 80024c0:	f000 8134 	beq.w	800272c <_malloc_r+0x494>
 80024c4:	f1c3 0108 	rsb	r1, r3, #8
 80024c8:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 80024cc:	448b      	add	fp, r1
 80024ce:	3308      	adds	r3, #8
 80024d0:	44d8      	add	r8, fp
 80024d2:	f3c8 080b 	ubfx	r8, r8, #0, #12
 80024d6:	eba3 0808 	sub.w	r8, r3, r8
 80024da:	4641      	mov	r1, r8
 80024dc:	4630      	mov	r0, r6
 80024de:	9201      	str	r2, [sp, #4]
 80024e0:	f000 fa3e 	bl	8002960 <_sbrk_r>
 80024e4:	1c43      	adds	r3, r0, #1
 80024e6:	9a01      	ldr	r2, [sp, #4]
 80024e8:	f000 8146 	beq.w	8002778 <_malloc_r+0x4e0>
 80024ec:	eba0 010b 	sub.w	r1, r0, fp
 80024f0:	4441      	add	r1, r8
 80024f2:	f041 0101 	orr.w	r1, r1, #1
 80024f6:	6813      	ldr	r3, [r2, #0]
 80024f8:	f8c7 b008 	str.w	fp, [r7, #8]
 80024fc:	4443      	add	r3, r8
 80024fe:	42bc      	cmp	r4, r7
 8002500:	f8cb 1004 	str.w	r1, [fp, #4]
 8002504:	6013      	str	r3, [r2, #0]
 8002506:	d015      	beq.n	8002534 <_malloc_r+0x29c>
 8002508:	f1b9 0f0f 	cmp.w	r9, #15
 800250c:	f240 8130 	bls.w	8002770 <_malloc_r+0x4d8>
 8002510:	6860      	ldr	r0, [r4, #4]
 8002512:	f1a9 010c 	sub.w	r1, r9, #12
 8002516:	f021 0107 	bic.w	r1, r1, #7
 800251a:	f000 0001 	and.w	r0, r0, #1
 800251e:	eb04 0c01 	add.w	ip, r4, r1
 8002522:	4308      	orrs	r0, r1
 8002524:	f04f 0e05 	mov.w	lr, #5
 8002528:	290f      	cmp	r1, #15
 800252a:	6060      	str	r0, [r4, #4]
 800252c:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8002530:	f200 813a 	bhi.w	80027a8 <_malloc_r+0x510>
 8002534:	4a29      	ldr	r2, [pc, #164]	; (80025dc <_malloc_r+0x344>)
 8002536:	482a      	ldr	r0, [pc, #168]	; (80025e0 <_malloc_r+0x348>)
 8002538:	6811      	ldr	r1, [r2, #0]
 800253a:	68bc      	ldr	r4, [r7, #8]
 800253c:	428b      	cmp	r3, r1
 800253e:	6801      	ldr	r1, [r0, #0]
 8002540:	bf88      	it	hi
 8002542:	6013      	strhi	r3, [r2, #0]
 8002544:	6862      	ldr	r2, [r4, #4]
 8002546:	428b      	cmp	r3, r1
 8002548:	f022 0203 	bic.w	r2, r2, #3
 800254c:	bf88      	it	hi
 800254e:	6003      	strhi	r3, [r0, #0]
 8002550:	e0a7      	b.n	80026a2 <_malloc_r+0x40a>
 8002552:	1962      	adds	r2, r4, r5
 8002554:	f043 0301 	orr.w	r3, r3, #1
 8002558:	f045 0501 	orr.w	r5, r5, #1
 800255c:	6065      	str	r5, [r4, #4]
 800255e:	4630      	mov	r0, r6
 8002560:	60ba      	str	r2, [r7, #8]
 8002562:	6053      	str	r3, [r2, #4]
 8002564:	f000 f98c 	bl	8002880 <__malloc_unlock>
 8002568:	3408      	adds	r4, #8
 800256a:	4620      	mov	r0, r4
 800256c:	b003      	add	sp, #12
 800256e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002572:	4423      	add	r3, r4
 8002574:	68e1      	ldr	r1, [r4, #12]
 8002576:	685a      	ldr	r2, [r3, #4]
 8002578:	68a5      	ldr	r5, [r4, #8]
 800257a:	f042 0201 	orr.w	r2, r2, #1
 800257e:	60e9      	str	r1, [r5, #12]
 8002580:	4630      	mov	r0, r6
 8002582:	608d      	str	r5, [r1, #8]
 8002584:	605a      	str	r2, [r3, #4]
 8002586:	f000 f97b 	bl	8002880 <__malloc_unlock>
 800258a:	3408      	adds	r4, #8
 800258c:	4620      	mov	r0, r4
 800258e:	b003      	add	sp, #12
 8002590:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002594:	68dc      	ldr	r4, [r3, #12]
 8002596:	42a3      	cmp	r3, r4
 8002598:	bf08      	it	eq
 800259a:	3002      	addeq	r0, #2
 800259c:	f43f aed6 	beq.w	800234c <_malloc_r+0xb4>
 80025a0:	e692      	b.n	80022c8 <_malloc_r+0x30>
 80025a2:	2b14      	cmp	r3, #20
 80025a4:	d971      	bls.n	800268a <_malloc_r+0x3f2>
 80025a6:	2b54      	cmp	r3, #84	; 0x54
 80025a8:	f200 80ad 	bhi.w	8002706 <_malloc_r+0x46e>
 80025ac:	0b2b      	lsrs	r3, r5, #12
 80025ae:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 80025b2:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 80025b6:	00c3      	lsls	r3, r0, #3
 80025b8:	e6b3      	b.n	8002322 <_malloc_r+0x8a>
 80025ba:	4423      	add	r3, r4
 80025bc:	4630      	mov	r0, r6
 80025be:	685a      	ldr	r2, [r3, #4]
 80025c0:	f042 0201 	orr.w	r2, r2, #1
 80025c4:	605a      	str	r2, [r3, #4]
 80025c6:	3408      	adds	r4, #8
 80025c8:	f000 f95a 	bl	8002880 <__malloc_unlock>
 80025cc:	e68c      	b.n	80022e8 <_malloc_r+0x50>
 80025ce:	bf00      	nop
 80025d0:	200005d8 	.word	0x200005d8
 80025d4:	20000c2c 	.word	0x20000c2c
 80025d8:	20000bfc 	.word	0x20000bfc
 80025dc:	20000c24 	.word	0x20000c24
 80025e0:	20000c28 	.word	0x20000c28
 80025e4:	200005e0 	.word	0x200005e0
 80025e8:	200009e0 	.word	0x200009e0
 80025ec:	1961      	adds	r1, r4, r5
 80025ee:	f045 0e01 	orr.w	lr, r5, #1
 80025f2:	f042 0501 	orr.w	r5, r2, #1
 80025f6:	f8c4 e004 	str.w	lr, [r4, #4]
 80025fa:	4630      	mov	r0, r6
 80025fc:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8002600:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8002604:	604d      	str	r5, [r1, #4]
 8002606:	50e2      	str	r2, [r4, r3]
 8002608:	f000 f93a 	bl	8002880 <__malloc_unlock>
 800260c:	3408      	adds	r4, #8
 800260e:	e66b      	b.n	80022e8 <_malloc_r+0x50>
 8002610:	08e8      	lsrs	r0, r5, #3
 8002612:	f105 0308 	add.w	r3, r5, #8
 8002616:	e64f      	b.n	80022b8 <_malloc_r+0x20>
 8002618:	f108 0801 	add.w	r8, r8, #1
 800261c:	f018 0f03 	tst.w	r8, #3
 8002620:	f10e 0e08 	add.w	lr, lr, #8
 8002624:	f47f aed0 	bne.w	80023c8 <_malloc_r+0x130>
 8002628:	e052      	b.n	80026d0 <_malloc_r+0x438>
 800262a:	4419      	add	r1, r3
 800262c:	461c      	mov	r4, r3
 800262e:	684a      	ldr	r2, [r1, #4]
 8002630:	68db      	ldr	r3, [r3, #12]
 8002632:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8002636:	f042 0201 	orr.w	r2, r2, #1
 800263a:	604a      	str	r2, [r1, #4]
 800263c:	4630      	mov	r0, r6
 800263e:	60eb      	str	r3, [r5, #12]
 8002640:	609d      	str	r5, [r3, #8]
 8002642:	f000 f91d 	bl	8002880 <__malloc_unlock>
 8002646:	e64f      	b.n	80022e8 <_malloc_r+0x50>
 8002648:	0a5a      	lsrs	r2, r3, #9
 800264a:	2a04      	cmp	r2, #4
 800264c:	d935      	bls.n	80026ba <_malloc_r+0x422>
 800264e:	2a14      	cmp	r2, #20
 8002650:	d86f      	bhi.n	8002732 <_malloc_r+0x49a>
 8002652:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8002656:	00c9      	lsls	r1, r1, #3
 8002658:	325b      	adds	r2, #91	; 0x5b
 800265a:	eb07 0e01 	add.w	lr, r7, r1
 800265e:	5879      	ldr	r1, [r7, r1]
 8002660:	f1ae 0e08 	sub.w	lr, lr, #8
 8002664:	458e      	cmp	lr, r1
 8002666:	d058      	beq.n	800271a <_malloc_r+0x482>
 8002668:	684a      	ldr	r2, [r1, #4]
 800266a:	f022 0203 	bic.w	r2, r2, #3
 800266e:	429a      	cmp	r2, r3
 8002670:	d902      	bls.n	8002678 <_malloc_r+0x3e0>
 8002672:	6889      	ldr	r1, [r1, #8]
 8002674:	458e      	cmp	lr, r1
 8002676:	d1f7      	bne.n	8002668 <_malloc_r+0x3d0>
 8002678:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 800267c:	687b      	ldr	r3, [r7, #4]
 800267e:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8002682:	f8ce 4008 	str.w	r4, [lr, #8]
 8002686:	60cc      	str	r4, [r1, #12]
 8002688:	e68c      	b.n	80023a4 <_malloc_r+0x10c>
 800268a:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 800268e:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8002692:	00c3      	lsls	r3, r0, #3
 8002694:	e645      	b.n	8002322 <_malloc_r+0x8a>
 8002696:	42bc      	cmp	r4, r7
 8002698:	d072      	beq.n	8002780 <_malloc_r+0x4e8>
 800269a:	68bc      	ldr	r4, [r7, #8]
 800269c:	6862      	ldr	r2, [r4, #4]
 800269e:	f022 0203 	bic.w	r2, r2, #3
 80026a2:	4295      	cmp	r5, r2
 80026a4:	eba2 0305 	sub.w	r3, r2, r5
 80026a8:	d802      	bhi.n	80026b0 <_malloc_r+0x418>
 80026aa:	2b0f      	cmp	r3, #15
 80026ac:	f73f af51 	bgt.w	8002552 <_malloc_r+0x2ba>
 80026b0:	4630      	mov	r0, r6
 80026b2:	f000 f8e5 	bl	8002880 <__malloc_unlock>
 80026b6:	2400      	movs	r4, #0
 80026b8:	e616      	b.n	80022e8 <_malloc_r+0x50>
 80026ba:	099a      	lsrs	r2, r3, #6
 80026bc:	f102 0139 	add.w	r1, r2, #57	; 0x39
 80026c0:	00c9      	lsls	r1, r1, #3
 80026c2:	3238      	adds	r2, #56	; 0x38
 80026c4:	e7c9      	b.n	800265a <_malloc_r+0x3c2>
 80026c6:	f8d9 9000 	ldr.w	r9, [r9]
 80026ca:	4599      	cmp	r9, r3
 80026cc:	f040 8083 	bne.w	80027d6 <_malloc_r+0x53e>
 80026d0:	f010 0f03 	tst.w	r0, #3
 80026d4:	f1a9 0308 	sub.w	r3, r9, #8
 80026d8:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 80026dc:	d1f3      	bne.n	80026c6 <_malloc_r+0x42e>
 80026de:	687b      	ldr	r3, [r7, #4]
 80026e0:	ea23 0304 	bic.w	r3, r3, r4
 80026e4:	607b      	str	r3, [r7, #4]
 80026e6:	0064      	lsls	r4, r4, #1
 80026e8:	429c      	cmp	r4, r3
 80026ea:	f63f aeac 	bhi.w	8002446 <_malloc_r+0x1ae>
 80026ee:	b91c      	cbnz	r4, 80026f8 <_malloc_r+0x460>
 80026f0:	e6a9      	b.n	8002446 <_malloc_r+0x1ae>
 80026f2:	0064      	lsls	r4, r4, #1
 80026f4:	f108 0804 	add.w	r8, r8, #4
 80026f8:	421c      	tst	r4, r3
 80026fa:	d0fa      	beq.n	80026f2 <_malloc_r+0x45a>
 80026fc:	4640      	mov	r0, r8
 80026fe:	e65f      	b.n	80023c0 <_malloc_r+0x128>
 8002700:	f108 0810 	add.w	r8, r8, #16
 8002704:	e6bc      	b.n	8002480 <_malloc_r+0x1e8>
 8002706:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800270a:	d826      	bhi.n	800275a <_malloc_r+0x4c2>
 800270c:	0beb      	lsrs	r3, r5, #15
 800270e:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8002712:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8002716:	00c3      	lsls	r3, r0, #3
 8002718:	e603      	b.n	8002322 <_malloc_r+0x8a>
 800271a:	687b      	ldr	r3, [r7, #4]
 800271c:	1092      	asrs	r2, r2, #2
 800271e:	f04f 0801 	mov.w	r8, #1
 8002722:	fa08 f202 	lsl.w	r2, r8, r2
 8002726:	4313      	orrs	r3, r2
 8002728:	607b      	str	r3, [r7, #4]
 800272a:	e7a8      	b.n	800267e <_malloc_r+0x3e6>
 800272c:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8002730:	e6ce      	b.n	80024d0 <_malloc_r+0x238>
 8002732:	2a54      	cmp	r2, #84	; 0x54
 8002734:	d829      	bhi.n	800278a <_malloc_r+0x4f2>
 8002736:	0b1a      	lsrs	r2, r3, #12
 8002738:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 800273c:	00c9      	lsls	r1, r1, #3
 800273e:	326e      	adds	r2, #110	; 0x6e
 8002740:	e78b      	b.n	800265a <_malloc_r+0x3c2>
 8002742:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8002746:	2900      	cmp	r1, #0
 8002748:	f47f aeae 	bne.w	80024a8 <_malloc_r+0x210>
 800274c:	eb09 0208 	add.w	r2, r9, r8
 8002750:	68b9      	ldr	r1, [r7, #8]
 8002752:	f042 0201 	orr.w	r2, r2, #1
 8002756:	604a      	str	r2, [r1, #4]
 8002758:	e6ec      	b.n	8002534 <_malloc_r+0x29c>
 800275a:	f240 5254 	movw	r2, #1364	; 0x554
 800275e:	4293      	cmp	r3, r2
 8002760:	d81c      	bhi.n	800279c <_malloc_r+0x504>
 8002762:	0cab      	lsrs	r3, r5, #18
 8002764:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8002768:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 800276c:	00c3      	lsls	r3, r0, #3
 800276e:	e5d8      	b.n	8002322 <_malloc_r+0x8a>
 8002770:	2301      	movs	r3, #1
 8002772:	f8cb 3004 	str.w	r3, [fp, #4]
 8002776:	e79b      	b.n	80026b0 <_malloc_r+0x418>
 8002778:	2101      	movs	r1, #1
 800277a:	f04f 0800 	mov.w	r8, #0
 800277e:	e6ba      	b.n	80024f6 <_malloc_r+0x25e>
 8002780:	4a16      	ldr	r2, [pc, #88]	; (80027dc <_malloc_r+0x544>)
 8002782:	6813      	ldr	r3, [r2, #0]
 8002784:	4443      	add	r3, r8
 8002786:	6013      	str	r3, [r2, #0]
 8002788:	e68e      	b.n	80024a8 <_malloc_r+0x210>
 800278a:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 800278e:	d814      	bhi.n	80027ba <_malloc_r+0x522>
 8002790:	0bda      	lsrs	r2, r3, #15
 8002792:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8002796:	00c9      	lsls	r1, r1, #3
 8002798:	3277      	adds	r2, #119	; 0x77
 800279a:	e75e      	b.n	800265a <_malloc_r+0x3c2>
 800279c:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 80027a0:	207f      	movs	r0, #127	; 0x7f
 80027a2:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 80027a6:	e5bc      	b.n	8002322 <_malloc_r+0x8a>
 80027a8:	f104 0108 	add.w	r1, r4, #8
 80027ac:	4630      	mov	r0, r6
 80027ae:	9201      	str	r2, [sp, #4]
 80027b0:	f003 f82a 	bl	8005808 <_free_r>
 80027b4:	9a01      	ldr	r2, [sp, #4]
 80027b6:	6813      	ldr	r3, [r2, #0]
 80027b8:	e6bc      	b.n	8002534 <_malloc_r+0x29c>
 80027ba:	f240 5154 	movw	r1, #1364	; 0x554
 80027be:	428a      	cmp	r2, r1
 80027c0:	d805      	bhi.n	80027ce <_malloc_r+0x536>
 80027c2:	0c9a      	lsrs	r2, r3, #18
 80027c4:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 80027c8:	00c9      	lsls	r1, r1, #3
 80027ca:	327c      	adds	r2, #124	; 0x7c
 80027cc:	e745      	b.n	800265a <_malloc_r+0x3c2>
 80027ce:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 80027d2:	227e      	movs	r2, #126	; 0x7e
 80027d4:	e741      	b.n	800265a <_malloc_r+0x3c2>
 80027d6:	687b      	ldr	r3, [r7, #4]
 80027d8:	e785      	b.n	80026e6 <_malloc_r+0x44e>
 80027da:	bf00      	nop
 80027dc:	20000bfc 	.word	0x20000bfc

080027e0 <memset>:
 80027e0:	b4f0      	push	{r4, r5, r6, r7}
 80027e2:	0786      	lsls	r6, r0, #30
 80027e4:	d043      	beq.n	800286e <memset+0x8e>
 80027e6:	1e54      	subs	r4, r2, #1
 80027e8:	2a00      	cmp	r2, #0
 80027ea:	d03e      	beq.n	800286a <memset+0x8a>
 80027ec:	b2ca      	uxtb	r2, r1
 80027ee:	4603      	mov	r3, r0
 80027f0:	e002      	b.n	80027f8 <memset+0x18>
 80027f2:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80027f6:	d338      	bcc.n	800286a <memset+0x8a>
 80027f8:	f803 2b01 	strb.w	r2, [r3], #1
 80027fc:	079d      	lsls	r5, r3, #30
 80027fe:	d1f8      	bne.n	80027f2 <memset+0x12>
 8002800:	2c03      	cmp	r4, #3
 8002802:	d92b      	bls.n	800285c <memset+0x7c>
 8002804:	b2cd      	uxtb	r5, r1
 8002806:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800280a:	2c0f      	cmp	r4, #15
 800280c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002810:	d916      	bls.n	8002840 <memset+0x60>
 8002812:	f1a4 0710 	sub.w	r7, r4, #16
 8002816:	093f      	lsrs	r7, r7, #4
 8002818:	f103 0620 	add.w	r6, r3, #32
 800281c:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002820:	f103 0210 	add.w	r2, r3, #16
 8002824:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002828:	e942 5502 	strd	r5, r5, [r2, #-8]
 800282c:	3210      	adds	r2, #16
 800282e:	42b2      	cmp	r2, r6
 8002830:	d1f8      	bne.n	8002824 <memset+0x44>
 8002832:	f004 040f 	and.w	r4, r4, #15
 8002836:	3701      	adds	r7, #1
 8002838:	2c03      	cmp	r4, #3
 800283a:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800283e:	d90d      	bls.n	800285c <memset+0x7c>
 8002840:	461e      	mov	r6, r3
 8002842:	4622      	mov	r2, r4
 8002844:	3a04      	subs	r2, #4
 8002846:	2a03      	cmp	r2, #3
 8002848:	f846 5b04 	str.w	r5, [r6], #4
 800284c:	d8fa      	bhi.n	8002844 <memset+0x64>
 800284e:	1f22      	subs	r2, r4, #4
 8002850:	f022 0203 	bic.w	r2, r2, #3
 8002854:	3204      	adds	r2, #4
 8002856:	4413      	add	r3, r2
 8002858:	f004 0403 	and.w	r4, r4, #3
 800285c:	b12c      	cbz	r4, 800286a <memset+0x8a>
 800285e:	b2c9      	uxtb	r1, r1
 8002860:	441c      	add	r4, r3
 8002862:	f803 1b01 	strb.w	r1, [r3], #1
 8002866:	429c      	cmp	r4, r3
 8002868:	d1fb      	bne.n	8002862 <memset+0x82>
 800286a:	bcf0      	pop	{r4, r5, r6, r7}
 800286c:	4770      	bx	lr
 800286e:	4614      	mov	r4, r2
 8002870:	4603      	mov	r3, r0
 8002872:	e7c5      	b.n	8002800 <memset+0x20>

08002874 <__malloc_lock>:
 8002874:	4801      	ldr	r0, [pc, #4]	; (800287c <__malloc_lock+0x8>)
 8002876:	f003 ba75 	b.w	8005d64 <__retarget_lock_acquire_recursive>
 800287a:	bf00      	nop
 800287c:	20000c88 	.word	0x20000c88

08002880 <__malloc_unlock>:
 8002880:	4801      	ldr	r0, [pc, #4]	; (8002888 <__malloc_unlock+0x8>)
 8002882:	f003 ba71 	b.w	8005d68 <__retarget_lock_release_recursive>
 8002886:	bf00      	nop
 8002888:	20000c88 	.word	0x20000c88

0800288c <printf>:
 800288c:	b40f      	push	{r0, r1, r2, r3}
 800288e:	b500      	push	{lr}
 8002890:	4907      	ldr	r1, [pc, #28]	; (80028b0 <printf+0x24>)
 8002892:	b083      	sub	sp, #12
 8002894:	ab04      	add	r3, sp, #16
 8002896:	6808      	ldr	r0, [r1, #0]
 8002898:	f853 2b04 	ldr.w	r2, [r3], #4
 800289c:	6881      	ldr	r1, [r0, #8]
 800289e:	9301      	str	r3, [sp, #4]
 80028a0:	f000 f872 	bl	8002988 <_vfprintf_r>
 80028a4:	b003      	add	sp, #12
 80028a6:	f85d eb04 	ldr.w	lr, [sp], #4
 80028aa:	b004      	add	sp, #16
 80028ac:	4770      	bx	lr
 80028ae:	bf00      	nop
 80028b0:	200001a8 	.word	0x200001a8

080028b4 <_puts_r>:
 80028b4:	b570      	push	{r4, r5, r6, lr}
 80028b6:	4605      	mov	r5, r0
 80028b8:	b088      	sub	sp, #32
 80028ba:	4608      	mov	r0, r1
 80028bc:	460c      	mov	r4, r1
 80028be:	f7fd febf 	bl	8000640 <strlen>
 80028c2:	4a22      	ldr	r2, [pc, #136]	; (800294c <_puts_r+0x98>)
 80028c4:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80028c6:	9404      	str	r4, [sp, #16]
 80028c8:	2601      	movs	r6, #1
 80028ca:	1c44      	adds	r4, r0, #1
 80028cc:	a904      	add	r1, sp, #16
 80028ce:	9206      	str	r2, [sp, #24]
 80028d0:	2202      	movs	r2, #2
 80028d2:	9403      	str	r4, [sp, #12]
 80028d4:	9005      	str	r0, [sp, #20]
 80028d6:	68ac      	ldr	r4, [r5, #8]
 80028d8:	9607      	str	r6, [sp, #28]
 80028da:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80028de:	b31b      	cbz	r3, 8002928 <_puts_r+0x74>
 80028e0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80028e2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80028e6:	07ce      	lsls	r6, r1, #31
 80028e8:	b29a      	uxth	r2, r3
 80028ea:	d401      	bmi.n	80028f0 <_puts_r+0x3c>
 80028ec:	0590      	lsls	r0, r2, #22
 80028ee:	d525      	bpl.n	800293c <_puts_r+0x88>
 80028f0:	0491      	lsls	r1, r2, #18
 80028f2:	d406      	bmi.n	8002902 <_puts_r+0x4e>
 80028f4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80028f6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80028fa:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80028fe:	81a3      	strh	r3, [r4, #12]
 8002900:	6662      	str	r2, [r4, #100]	; 0x64
 8002902:	4628      	mov	r0, r5
 8002904:	aa01      	add	r2, sp, #4
 8002906:	4621      	mov	r1, r4
 8002908:	f003 f872 	bl	80059f0 <__sfvwrite_r>
 800290c:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800290e:	2800      	cmp	r0, #0
 8002910:	bf0c      	ite	eq
 8002912:	250a      	moveq	r5, #10
 8002914:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002918:	07da      	lsls	r2, r3, #31
 800291a:	d402      	bmi.n	8002922 <_puts_r+0x6e>
 800291c:	89a3      	ldrh	r3, [r4, #12]
 800291e:	059b      	lsls	r3, r3, #22
 8002920:	d506      	bpl.n	8002930 <_puts_r+0x7c>
 8002922:	4628      	mov	r0, r5
 8002924:	b008      	add	sp, #32
 8002926:	bd70      	pop	{r4, r5, r6, pc}
 8002928:	4628      	mov	r0, r5
 800292a:	f002 fecb 	bl	80056c4 <__sinit>
 800292e:	e7d7      	b.n	80028e0 <_puts_r+0x2c>
 8002930:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002932:	f003 fa19 	bl	8005d68 <__retarget_lock_release_recursive>
 8002936:	4628      	mov	r0, r5
 8002938:	b008      	add	sp, #32
 800293a:	bd70      	pop	{r4, r5, r6, pc}
 800293c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800293e:	f003 fa11 	bl	8005d64 <__retarget_lock_acquire_recursive>
 8002942:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002946:	b29a      	uxth	r2, r3
 8002948:	e7d2      	b.n	80028f0 <_puts_r+0x3c>
 800294a:	bf00      	nop
 800294c:	08007100 	.word	0x08007100

08002950 <puts>:
 8002950:	4b02      	ldr	r3, [pc, #8]	; (800295c <puts+0xc>)
 8002952:	4601      	mov	r1, r0
 8002954:	6818      	ldr	r0, [r3, #0]
 8002956:	f7ff bfad 	b.w	80028b4 <_puts_r>
 800295a:	bf00      	nop
 800295c:	200001a8 	.word	0x200001a8

08002960 <_sbrk_r>:
 8002960:	b538      	push	{r3, r4, r5, lr}
 8002962:	4c07      	ldr	r4, [pc, #28]	; (8002980 <_sbrk_r+0x20>)
 8002964:	2300      	movs	r3, #0
 8002966:	4605      	mov	r5, r0
 8002968:	4608      	mov	r0, r1
 800296a:	6023      	str	r3, [r4, #0]
 800296c:	f7ff fbde 	bl	800212c <_sbrk>
 8002970:	1c43      	adds	r3, r0, #1
 8002972:	d000      	beq.n	8002976 <_sbrk_r+0x16>
 8002974:	bd38      	pop	{r3, r4, r5, pc}
 8002976:	6823      	ldr	r3, [r4, #0]
 8002978:	2b00      	cmp	r3, #0
 800297a:	d0fb      	beq.n	8002974 <_sbrk_r+0x14>
 800297c:	602b      	str	r3, [r5, #0]
 800297e:	bd38      	pop	{r3, r4, r5, pc}
 8002980:	20000c9c 	.word	0x20000c9c
 8002984:	00000000 	.word	0x00000000

08002988 <_vfprintf_r>:
 8002988:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800298c:	b0d7      	sub	sp, #348	; 0x15c
 800298e:	461c      	mov	r4, r3
 8002990:	4689      	mov	r9, r1
 8002992:	4617      	mov	r7, r2
 8002994:	4605      	mov	r5, r0
 8002996:	9003      	str	r0, [sp, #12]
 8002998:	f003 f9d2 	bl	8005d40 <_localeconv_r>
 800299c:	6803      	ldr	r3, [r0, #0]
 800299e:	9316      	str	r3, [sp, #88]	; 0x58
 80029a0:	4618      	mov	r0, r3
 80029a2:	f7fd fe4d 	bl	8000640 <strlen>
 80029a6:	9408      	str	r4, [sp, #32]
 80029a8:	9015      	str	r0, [sp, #84]	; 0x54
 80029aa:	b11d      	cbz	r5, 80029b4 <_vfprintf_r+0x2c>
 80029ac:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80029ae:	2b00      	cmp	r3, #0
 80029b0:	f000 8107 	beq.w	8002bc2 <_vfprintf_r+0x23a>
 80029b4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80029b8:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80029bc:	07c8      	lsls	r0, r1, #31
 80029be:	b293      	uxth	r3, r2
 80029c0:	d402      	bmi.n	80029c8 <_vfprintf_r+0x40>
 80029c2:	0599      	lsls	r1, r3, #22
 80029c4:	f140 811f 	bpl.w	8002c06 <_vfprintf_r+0x27e>
 80029c8:	049e      	lsls	r6, r3, #18
 80029ca:	d40a      	bmi.n	80029e2 <_vfprintf_r+0x5a>
 80029cc:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80029d0:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 80029d4:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80029d8:	f8a9 300c 	strh.w	r3, [r9, #12]
 80029dc:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80029e0:	b29b      	uxth	r3, r3
 80029e2:	071d      	lsls	r5, r3, #28
 80029e4:	f140 80b2 	bpl.w	8002b4c <_vfprintf_r+0x1c4>
 80029e8:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80029ec:	2a00      	cmp	r2, #0
 80029ee:	f000 80ad 	beq.w	8002b4c <_vfprintf_r+0x1c4>
 80029f2:	f003 021a 	and.w	r2, r3, #26
 80029f6:	2a0a      	cmp	r2, #10
 80029f8:	f000 80c9 	beq.w	8002b8e <_vfprintf_r+0x206>
 80029fc:	2300      	movs	r3, #0
 80029fe:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002c18 <_vfprintf_r+0x290>
 8002a02:	9310      	str	r3, [sp, #64]	; 0x40
 8002a04:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002a08:	9317      	str	r3, [sp, #92]	; 0x5c
 8002a0a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002a0e:	931b      	str	r3, [sp, #108]	; 0x6c
 8002a10:	9318      	str	r3, [sp, #96]	; 0x60
 8002a12:	9305      	str	r3, [sp, #20]
 8002a14:	ab2d      	add	r3, sp, #180	; 0xb4
 8002a16:	932a      	str	r3, [sp, #168]	; 0xa8
 8002a18:	469b      	mov	fp, r3
 8002a1a:	783b      	ldrb	r3, [r7, #0]
 8002a1c:	f8cd 901c 	str.w	r9, [sp, #28]
 8002a20:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002a24:	2b00      	cmp	r3, #0
 8002a26:	f000 8259 	beq.w	8002edc <_vfprintf_r+0x554>
 8002a2a:	2b25      	cmp	r3, #37	; 0x25
 8002a2c:	463c      	mov	r4, r7
 8002a2e:	d102      	bne.n	8002a36 <_vfprintf_r+0xae>
 8002a30:	e01d      	b.n	8002a6e <_vfprintf_r+0xe6>
 8002a32:	2b25      	cmp	r3, #37	; 0x25
 8002a34:	d003      	beq.n	8002a3e <_vfprintf_r+0xb6>
 8002a36:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002a3a:	2b00      	cmp	r3, #0
 8002a3c:	d1f9      	bne.n	8002a32 <_vfprintf_r+0xaa>
 8002a3e:	1be5      	subs	r5, r4, r7
 8002a40:	b18d      	cbz	r5, 8002a66 <_vfprintf_r+0xde>
 8002a42:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002a46:	3301      	adds	r3, #1
 8002a48:	442a      	add	r2, r5
 8002a4a:	2b07      	cmp	r3, #7
 8002a4c:	f8cb 7000 	str.w	r7, [fp]
 8002a50:	f8cb 5004 	str.w	r5, [fp, #4]
 8002a54:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002a58:	f300 80ca 	bgt.w	8002bf0 <_vfprintf_r+0x268>
 8002a5c:	f10b 0b08 	add.w	fp, fp, #8
 8002a60:	9b05      	ldr	r3, [sp, #20]
 8002a62:	442b      	add	r3, r5
 8002a64:	9305      	str	r3, [sp, #20]
 8002a66:	7823      	ldrb	r3, [r4, #0]
 8002a68:	2b00      	cmp	r3, #0
 8002a6a:	f000 8237 	beq.w	8002edc <_vfprintf_r+0x554>
 8002a6e:	2300      	movs	r3, #0
 8002a70:	7866      	ldrb	r6, [r4, #1]
 8002a72:	9306      	str	r3, [sp, #24]
 8002a74:	4698      	mov	r8, r3
 8002a76:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002a7a:	f104 0a01 	add.w	sl, r4, #1
 8002a7e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002a82:	252b      	movs	r5, #43	; 0x2b
 8002a84:	f10a 0a01 	add.w	sl, sl, #1
 8002a88:	f1a6 0320 	sub.w	r3, r6, #32
 8002a8c:	2b5a      	cmp	r3, #90	; 0x5a
 8002a8e:	f200 842a 	bhi.w	80032e6 <_vfprintf_r+0x95e>
 8002a92:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002a96:	03aa      	.short	0x03aa
 8002a98:	04280428 	.word	0x04280428
 8002a9c:	0428029c 	.word	0x0428029c
 8002aa0:	04280428 	.word	0x04280428
 8002aa4:	042802a7 	.word	0x042802a7
 8002aa8:	02c60428 	.word	0x02c60428
 8002aac:	042802d2 	.word	0x042802d2
 8002ab0:	02dc02d7 	.word	0x02dc02d7
 8002ab4:	02f60428 	.word	0x02f60428
 8002ab8:	026d026d 	.word	0x026d026d
 8002abc:	026d026d 	.word	0x026d026d
 8002ac0:	026d026d 	.word	0x026d026d
 8002ac4:	026d026d 	.word	0x026d026d
 8002ac8:	0428026d 	.word	0x0428026d
 8002acc:	04280428 	.word	0x04280428
 8002ad0:	04280428 	.word	0x04280428
 8002ad4:	04280428 	.word	0x04280428
 8002ad8:	042802fb 	.word	0x042802fb
 8002adc:	03f3033c 	.word	0x03f3033c
 8002ae0:	02fb02fb 	.word	0x02fb02fb
 8002ae4:	042802fb 	.word	0x042802fb
 8002ae8:	04280428 	.word	0x04280428
 8002aec:	03ee0428 	.word	0x03ee0428
 8002af0:	04280428 	.word	0x04280428
 8002af4:	0428009a 	.word	0x0428009a
 8002af8:	04280428 	.word	0x04280428
 8002afc:	04280350 	.word	0x04280350
 8002b00:	04280379 	.word	0x04280379
 8002b04:	03900428 	.word	0x03900428
 8002b08:	04280428 	.word	0x04280428
 8002b0c:	04280428 	.word	0x04280428
 8002b10:	04280428 	.word	0x04280428
 8002b14:	04280428 	.word	0x04280428
 8002b18:	042802fb 	.word	0x042802fb
 8002b1c:	00c5033c 	.word	0x00c5033c
 8002b20:	02fb02fb 	.word	0x02fb02fb
 8002b24:	03d102fb 	.word	0x03d102fb
 8002b28:	007000c5 	.word	0x007000c5
 8002b2c:	03b50428 	.word	0x03b50428
 8002b30:	03c20428 	.word	0x03c20428
 8002b34:	03de009c 	.word	0x03de009c
 8002b38:	04280070 	.word	0x04280070
 8002b3c:	00720350 	.word	0x00720350
 8002b40:	0428022c 	.word	0x0428022c
 8002b44:	027c0428 	.word	0x027c0428
 8002b48:	00720428 	.word	0x00720428
 8002b4c:	4649      	mov	r1, r9
 8002b4e:	9803      	ldr	r0, [sp, #12]
 8002b50:	f001 fc9a 	bl	8004488 <__swsetup_r>
 8002b54:	b1a0      	cbz	r0, 8002b80 <_vfprintf_r+0x1f8>
 8002b56:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002b5a:	07d8      	lsls	r0, r3, #31
 8002b5c:	d404      	bmi.n	8002b68 <_vfprintf_r+0x1e0>
 8002b5e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002b62:	0599      	lsls	r1, r3, #22
 8002b64:	f140 83b7 	bpl.w	80032d6 <_vfprintf_r+0x94e>
 8002b68:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002b6c:	9305      	str	r3, [sp, #20]
 8002b6e:	9805      	ldr	r0, [sp, #20]
 8002b70:	b057      	add	sp, #348	; 0x15c
 8002b72:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002b76:	f048 0820 	orr.w	r8, r8, #32
 8002b7a:	f89a 6000 	ldrb.w	r6, [sl]
 8002b7e:	e781      	b.n	8002a84 <_vfprintf_r+0xfc>
 8002b80:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002b84:	f003 021a 	and.w	r2, r3, #26
 8002b88:	2a0a      	cmp	r2, #10
 8002b8a:	f47f af37 	bne.w	80029fc <_vfprintf_r+0x74>
 8002b8e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002b92:	2a00      	cmp	r2, #0
 8002b94:	f6ff af32 	blt.w	80029fc <_vfprintf_r+0x74>
 8002b98:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002b9c:	07d2      	lsls	r2, r2, #31
 8002b9e:	d405      	bmi.n	8002bac <_vfprintf_r+0x224>
 8002ba0:	059b      	lsls	r3, r3, #22
 8002ba2:	d403      	bmi.n	8002bac <_vfprintf_r+0x224>
 8002ba4:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002ba8:	f003 f8de 	bl	8005d68 <__retarget_lock_release_recursive>
 8002bac:	4623      	mov	r3, r4
 8002bae:	463a      	mov	r2, r7
 8002bb0:	4649      	mov	r1, r9
 8002bb2:	9803      	ldr	r0, [sp, #12]
 8002bb4:	f001 fc26 	bl	8004404 <__sbprintf>
 8002bb8:	9005      	str	r0, [sp, #20]
 8002bba:	9805      	ldr	r0, [sp, #20]
 8002bbc:	b057      	add	sp, #348	; 0x15c
 8002bbe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002bc2:	9803      	ldr	r0, [sp, #12]
 8002bc4:	f002 fd7e 	bl	80056c4 <__sinit>
 8002bc8:	e6f4      	b.n	80029b4 <_vfprintf_r+0x2c>
 8002bca:	f048 0810 	orr.w	r8, r8, #16
 8002bce:	f018 0f20 	tst.w	r8, #32
 8002bd2:	f000 836c 	beq.w	80032ae <_vfprintf_r+0x926>
 8002bd6:	9c08      	ldr	r4, [sp, #32]
 8002bd8:	3407      	adds	r4, #7
 8002bda:	f024 0307 	bic.w	r3, r4, #7
 8002bde:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002be2:	f103 0208 	add.w	r2, r3, #8
 8002be6:	9208      	str	r2, [sp, #32]
 8002be8:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002bec:	2200      	movs	r2, #0
 8002bee:	e18c      	b.n	8002f0a <_vfprintf_r+0x582>
 8002bf0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002bf2:	9907      	ldr	r1, [sp, #28]
 8002bf4:	9803      	ldr	r0, [sp, #12]
 8002bf6:	f003 ff33 	bl	8006a60 <__sprint_r>
 8002bfa:	2800      	cmp	r0, #0
 8002bfc:	f041 8376 	bne.w	80042ec <_vfprintf_r+0x1964>
 8002c00:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002c04:	e72c      	b.n	8002a60 <_vfprintf_r+0xd8>
 8002c06:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002c0a:	f003 f8ab 	bl	8005d64 <__retarget_lock_acquire_recursive>
 8002c0e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002c12:	b293      	uxth	r3, r2
 8002c14:	e6d8      	b.n	80029c8 <_vfprintf_r+0x40>
 8002c16:	bf00      	nop
	...
 8002c20:	4643      	mov	r3, r8
 8002c22:	069f      	lsls	r7, r3, #26
 8002c24:	f140 832f 	bpl.w	8003286 <_vfprintf_r+0x8fe>
 8002c28:	9c08      	ldr	r4, [sp, #32]
 8002c2a:	3407      	adds	r4, #7
 8002c2c:	f024 0407 	bic.w	r4, r4, #7
 8002c30:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002c34:	f104 0208 	add.w	r2, r4, #8
 8002c38:	9208      	str	r2, [sp, #32]
 8002c3a:	4604      	mov	r4, r0
 8002c3c:	460d      	mov	r5, r1
 8002c3e:	2800      	cmp	r0, #0
 8002c40:	f171 0200 	sbcs.w	r2, r1, #0
 8002c44:	da05      	bge.n	8002c52 <_vfprintf_r+0x2ca>
 8002c46:	222d      	movs	r2, #45	; 0x2d
 8002c48:	4264      	negs	r4, r4
 8002c4a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002c4e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002c52:	aa56      	add	r2, sp, #344	; 0x158
 8002c54:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002c58:	9204      	str	r2, [sp, #16]
 8002c5a:	f000 84b2 	beq.w	80035c2 <_vfprintf_r+0xc3a>
 8002c5e:	2201      	movs	r2, #1
 8002c60:	ea54 0105 	orrs.w	r1, r4, r5
 8002c64:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002c68:	f040 8159 	bne.w	8002f1e <_vfprintf_r+0x596>
 8002c6c:	f1b9 0f00 	cmp.w	r9, #0
 8002c70:	f040 8619 	bne.w	80038a6 <_vfprintf_r+0xf1e>
 8002c74:	2a00      	cmp	r2, #0
 8002c76:	f040 8508 	bne.w	800368a <_vfprintf_r+0xd02>
 8002c7a:	f013 0301 	ands.w	r3, r3, #1
 8002c7e:	af56      	add	r7, sp, #344	; 0x158
 8002c80:	9309      	str	r3, [sp, #36]	; 0x24
 8002c82:	d002      	beq.n	8002c8a <_vfprintf_r+0x302>
 8002c84:	2330      	movs	r3, #48	; 0x30
 8002c86:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002c8a:	2300      	movs	r3, #0
 8002c8c:	930a      	str	r3, [sp, #40]	; 0x28
 8002c8e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002c90:	9314      	str	r3, [sp, #80]	; 0x50
 8002c92:	9311      	str	r3, [sp, #68]	; 0x44
 8002c94:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002c96:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002c9a:	454b      	cmp	r3, r9
 8002c9c:	bfb8      	it	lt
 8002c9e:	464b      	movlt	r3, r9
 8002ca0:	9304      	str	r3, [sp, #16]
 8002ca2:	b112      	cbz	r2, 8002caa <_vfprintf_r+0x322>
 8002ca4:	9b04      	ldr	r3, [sp, #16]
 8002ca6:	3301      	adds	r3, #1
 8002ca8:	9304      	str	r3, [sp, #16]
 8002caa:	f018 0302 	ands.w	r3, r8, #2
 8002cae:	930b      	str	r3, [sp, #44]	; 0x2c
 8002cb0:	d002      	beq.n	8002cb8 <_vfprintf_r+0x330>
 8002cb2:	9b04      	ldr	r3, [sp, #16]
 8002cb4:	3302      	adds	r3, #2
 8002cb6:	9304      	str	r3, [sp, #16]
 8002cb8:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002cbc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002cbe:	930e      	str	r3, [sp, #56]	; 0x38
 8002cc0:	d13f      	bne.n	8002d42 <_vfprintf_r+0x3ba>
 8002cc2:	9b06      	ldr	r3, [sp, #24]
 8002cc4:	9904      	ldr	r1, [sp, #16]
 8002cc6:	1a5d      	subs	r5, r3, r1
 8002cc8:	2d00      	cmp	r5, #0
 8002cca:	dd3a      	ble.n	8002d42 <_vfprintf_r+0x3ba>
 8002ccc:	2d10      	cmp	r5, #16
 8002cce:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002cd0:	dd29      	ble.n	8002d26 <_vfprintf_r+0x39e>
 8002cd2:	4659      	mov	r1, fp
 8002cd4:	4620      	mov	r0, r4
 8002cd6:	9620      	str	r6, [sp, #128]	; 0x80
 8002cd8:	2310      	movs	r3, #16
 8002cda:	9c03      	ldr	r4, [sp, #12]
 8002cdc:	9e07      	ldr	r6, [sp, #28]
 8002cde:	46bb      	mov	fp, r7
 8002ce0:	e004      	b.n	8002cec <_vfprintf_r+0x364>
 8002ce2:	3d10      	subs	r5, #16
 8002ce4:	2d10      	cmp	r5, #16
 8002ce6:	f101 0108 	add.w	r1, r1, #8
 8002cea:	dd18      	ble.n	8002d1e <_vfprintf_r+0x396>
 8002cec:	3201      	adds	r2, #1
 8002cee:	4fba      	ldr	r7, [pc, #744]	; (8002fd8 <_vfprintf_r+0x650>)
 8002cf0:	3010      	adds	r0, #16
 8002cf2:	2a07      	cmp	r2, #7
 8002cf4:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002cf8:	e9c1 7300 	strd	r7, r3, [r1]
 8002cfc:	ddf1      	ble.n	8002ce2 <_vfprintf_r+0x35a>
 8002cfe:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d00:	4631      	mov	r1, r6
 8002d02:	4620      	mov	r0, r4
 8002d04:	930c      	str	r3, [sp, #48]	; 0x30
 8002d06:	f003 feab 	bl	8006a60 <__sprint_r>
 8002d0a:	2800      	cmp	r0, #0
 8002d0c:	f040 843d 	bne.w	800358a <_vfprintf_r+0xc02>
 8002d10:	3d10      	subs	r5, #16
 8002d12:	2d10      	cmp	r5, #16
 8002d14:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002d18:	a92d      	add	r1, sp, #180	; 0xb4
 8002d1a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002d1c:	dce6      	bgt.n	8002cec <_vfprintf_r+0x364>
 8002d1e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002d20:	465f      	mov	r7, fp
 8002d22:	4604      	mov	r4, r0
 8002d24:	468b      	mov	fp, r1
 8002d26:	3201      	adds	r2, #1
 8002d28:	4bab      	ldr	r3, [pc, #684]	; (8002fd8 <_vfprintf_r+0x650>)
 8002d2a:	442c      	add	r4, r5
 8002d2c:	2a07      	cmp	r2, #7
 8002d2e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002d32:	e9cb 3500 	strd	r3, r5, [fp]
 8002d36:	f300 84ff 	bgt.w	8003738 <_vfprintf_r+0xdb0>
 8002d3a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002d3e:	f10b 0b08 	add.w	fp, fp, #8
 8002d42:	b172      	cbz	r2, 8002d62 <_vfprintf_r+0x3da>
 8002d44:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002d46:	3201      	adds	r2, #1
 8002d48:	3401      	adds	r4, #1
 8002d4a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002d4e:	2101      	movs	r1, #1
 8002d50:	2a07      	cmp	r2, #7
 8002d52:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002d56:	e9cb 0100 	strd	r0, r1, [fp]
 8002d5a:	f300 8418 	bgt.w	800358e <_vfprintf_r+0xc06>
 8002d5e:	f10b 0b08 	add.w	fp, fp, #8
 8002d62:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002d64:	b16b      	cbz	r3, 8002d82 <_vfprintf_r+0x3fa>
 8002d66:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002d68:	3301      	adds	r3, #1
 8002d6a:	3402      	adds	r4, #2
 8002d6c:	a923      	add	r1, sp, #140	; 0x8c
 8002d6e:	2202      	movs	r2, #2
 8002d70:	2b07      	cmp	r3, #7
 8002d72:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002d76:	e9cb 1200 	strd	r1, r2, [fp]
 8002d7a:	f300 8415 	bgt.w	80035a8 <_vfprintf_r+0xc20>
 8002d7e:	f10b 0b08 	add.w	fp, fp, #8
 8002d82:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002d84:	2b80      	cmp	r3, #128	; 0x80
 8002d86:	f000 8331 	beq.w	80033ec <_vfprintf_r+0xa64>
 8002d8a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002d8c:	eba9 0503 	sub.w	r5, r9, r3
 8002d90:	2d00      	cmp	r5, #0
 8002d92:	dd37      	ble.n	8002e04 <_vfprintf_r+0x47c>
 8002d94:	2d10      	cmp	r5, #16
 8002d96:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002d98:	4b90      	ldr	r3, [pc, #576]	; (8002fdc <_vfprintf_r+0x654>)
 8002d9a:	dd28      	ble.n	8002dee <_vfprintf_r+0x466>
 8002d9c:	4659      	mov	r1, fp
 8002d9e:	4620      	mov	r0, r4
 8002da0:	46bb      	mov	fp, r7
 8002da2:	f04f 0910 	mov.w	r9, #16
 8002da6:	4637      	mov	r7, r6
 8002da8:	461c      	mov	r4, r3
 8002daa:	9e07      	ldr	r6, [sp, #28]
 8002dac:	e004      	b.n	8002db8 <_vfprintf_r+0x430>
 8002dae:	3d10      	subs	r5, #16
 8002db0:	2d10      	cmp	r5, #16
 8002db2:	f101 0108 	add.w	r1, r1, #8
 8002db6:	dd15      	ble.n	8002de4 <_vfprintf_r+0x45c>
 8002db8:	3201      	adds	r2, #1
 8002dba:	3010      	adds	r0, #16
 8002dbc:	2a07      	cmp	r2, #7
 8002dbe:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002dc2:	e9c1 4900 	strd	r4, r9, [r1]
 8002dc6:	ddf2      	ble.n	8002dae <_vfprintf_r+0x426>
 8002dc8:	aa2a      	add	r2, sp, #168	; 0xa8
 8002dca:	4631      	mov	r1, r6
 8002dcc:	9803      	ldr	r0, [sp, #12]
 8002dce:	f003 fe47 	bl	8006a60 <__sprint_r>
 8002dd2:	2800      	cmp	r0, #0
 8002dd4:	f040 83d9 	bne.w	800358a <_vfprintf_r+0xc02>
 8002dd8:	3d10      	subs	r5, #16
 8002dda:	2d10      	cmp	r5, #16
 8002ddc:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002de0:	a92d      	add	r1, sp, #180	; 0xb4
 8002de2:	dce9      	bgt.n	8002db8 <_vfprintf_r+0x430>
 8002de4:	463e      	mov	r6, r7
 8002de6:	4623      	mov	r3, r4
 8002de8:	465f      	mov	r7, fp
 8002dea:	4604      	mov	r4, r0
 8002dec:	468b      	mov	fp, r1
 8002dee:	3201      	adds	r2, #1
 8002df0:	442c      	add	r4, r5
 8002df2:	2a07      	cmp	r2, #7
 8002df4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002df8:	e9cb 3500 	strd	r3, r5, [fp]
 8002dfc:	f300 83ef 	bgt.w	80035de <_vfprintf_r+0xc56>
 8002e00:	f10b 0b08 	add.w	fp, fp, #8
 8002e04:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002e08:	f040 8280 	bne.w	800330c <_vfprintf_r+0x984>
 8002e0c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e0e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002e10:	f8cb 7000 	str.w	r7, [fp]
 8002e14:	3301      	adds	r3, #1
 8002e16:	4414      	add	r4, r2
 8002e18:	2b07      	cmp	r3, #7
 8002e1a:	942c      	str	r4, [sp, #176]	; 0xb0
 8002e1c:	f8cb 2004 	str.w	r2, [fp, #4]
 8002e20:	932b      	str	r3, [sp, #172]	; 0xac
 8002e22:	f300 8392 	bgt.w	800354a <_vfprintf_r+0xbc2>
 8002e26:	f10b 0b08 	add.w	fp, fp, #8
 8002e2a:	f018 0f04 	tst.w	r8, #4
 8002e2e:	d03b      	beq.n	8002ea8 <_vfprintf_r+0x520>
 8002e30:	9b06      	ldr	r3, [sp, #24]
 8002e32:	9a04      	ldr	r2, [sp, #16]
 8002e34:	1a9d      	subs	r5, r3, r2
 8002e36:	2d00      	cmp	r5, #0
 8002e38:	dd36      	ble.n	8002ea8 <_vfprintf_r+0x520>
 8002e3a:	2d10      	cmp	r5, #16
 8002e3c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e3e:	dd21      	ble.n	8002e84 <_vfprintf_r+0x4fc>
 8002e40:	2610      	movs	r6, #16
 8002e42:	9f03      	ldr	r7, [sp, #12]
 8002e44:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002e48:	e004      	b.n	8002e54 <_vfprintf_r+0x4cc>
 8002e4a:	3d10      	subs	r5, #16
 8002e4c:	2d10      	cmp	r5, #16
 8002e4e:	f10b 0b08 	add.w	fp, fp, #8
 8002e52:	dd17      	ble.n	8002e84 <_vfprintf_r+0x4fc>
 8002e54:	3301      	adds	r3, #1
 8002e56:	4a60      	ldr	r2, [pc, #384]	; (8002fd8 <_vfprintf_r+0x650>)
 8002e58:	3410      	adds	r4, #16
 8002e5a:	2b07      	cmp	r3, #7
 8002e5c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e60:	e9cb 2600 	strd	r2, r6, [fp]
 8002e64:	ddf1      	ble.n	8002e4a <_vfprintf_r+0x4c2>
 8002e66:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e68:	4641      	mov	r1, r8
 8002e6a:	4638      	mov	r0, r7
 8002e6c:	f003 fdf8 	bl	8006a60 <__sprint_r>
 8002e70:	2800      	cmp	r0, #0
 8002e72:	f040 856c 	bne.w	800394e <_vfprintf_r+0xfc6>
 8002e76:	3d10      	subs	r5, #16
 8002e78:	2d10      	cmp	r5, #16
 8002e7a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002e7e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002e82:	dce7      	bgt.n	8002e54 <_vfprintf_r+0x4cc>
 8002e84:	3301      	adds	r3, #1
 8002e86:	4a54      	ldr	r2, [pc, #336]	; (8002fd8 <_vfprintf_r+0x650>)
 8002e88:	442c      	add	r4, r5
 8002e8a:	2b07      	cmp	r3, #7
 8002e8c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e90:	e9cb 2500 	strd	r2, r5, [fp]
 8002e94:	dd08      	ble.n	8002ea8 <_vfprintf_r+0x520>
 8002e96:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e98:	9907      	ldr	r1, [sp, #28]
 8002e9a:	9803      	ldr	r0, [sp, #12]
 8002e9c:	f003 fde0 	bl	8006a60 <__sprint_r>
 8002ea0:	2800      	cmp	r0, #0
 8002ea2:	f040 82e9 	bne.w	8003478 <_vfprintf_r+0xaf0>
 8002ea6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002ea8:	9904      	ldr	r1, [sp, #16]
 8002eaa:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002eae:	428a      	cmp	r2, r1
 8002eb0:	bfac      	ite	ge
 8002eb2:	189b      	addge	r3, r3, r2
 8002eb4:	185b      	addlt	r3, r3, r1
 8002eb6:	9305      	str	r3, [sp, #20]
 8002eb8:	2c00      	cmp	r4, #0
 8002eba:	f040 82d5 	bne.w	8003468 <_vfprintf_r+0xae0>
 8002ebe:	2300      	movs	r3, #0
 8002ec0:	932b      	str	r3, [sp, #172]	; 0xac
 8002ec2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002ec4:	b11b      	cbz	r3, 8002ece <_vfprintf_r+0x546>
 8002ec6:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002ec8:	9803      	ldr	r0, [sp, #12]
 8002eca:	f002 fc9d 	bl	8005808 <_free_r>
 8002ece:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002ed2:	4657      	mov	r7, sl
 8002ed4:	783b      	ldrb	r3, [r7, #0]
 8002ed6:	2b00      	cmp	r3, #0
 8002ed8:	f47f ada7 	bne.w	8002a2a <_vfprintf_r+0xa2>
 8002edc:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002ede:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002ee2:	2b00      	cmp	r3, #0
 8002ee4:	f041 80e7 	bne.w	80040b6 <_vfprintf_r+0x172e>
 8002ee8:	2300      	movs	r3, #0
 8002eea:	932b      	str	r3, [sp, #172]	; 0xac
 8002eec:	e2cb      	b.n	8003486 <_vfprintf_r+0xafe>
 8002eee:	4643      	mov	r3, r8
 8002ef0:	069a      	lsls	r2, r3, #26
 8002ef2:	f140 814e 	bpl.w	8003192 <_vfprintf_r+0x80a>
 8002ef6:	9c08      	ldr	r4, [sp, #32]
 8002ef8:	3407      	adds	r4, #7
 8002efa:	f024 0207 	bic.w	r2, r4, #7
 8002efe:	f102 0108 	add.w	r1, r2, #8
 8002f02:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002f06:	9108      	str	r1, [sp, #32]
 8002f08:	2201      	movs	r2, #1
 8002f0a:	2100      	movs	r1, #0
 8002f0c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002f10:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002f14:	a956      	add	r1, sp, #344	; 0x158
 8002f16:	9104      	str	r1, [sp, #16]
 8002f18:	f47f aea2 	bne.w	8002c60 <_vfprintf_r+0x2d8>
 8002f1c:	4698      	mov	r8, r3
 8002f1e:	2a01      	cmp	r2, #1
 8002f20:	f000 8350 	beq.w	80035c4 <_vfprintf_r+0xc3c>
 8002f24:	2a02      	cmp	r2, #2
 8002f26:	f000 831b 	beq.w	8003560 <_vfprintf_r+0xbd8>
 8002f2a:	a956      	add	r1, sp, #344	; 0x158
 8002f2c:	e000      	b.n	8002f30 <_vfprintf_r+0x5a8>
 8002f2e:	4639      	mov	r1, r7
 8002f30:	08e2      	lsrs	r2, r4, #3
 8002f32:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002f36:	08e8      	lsrs	r0, r5, #3
 8002f38:	f004 0307 	and.w	r3, r4, #7
 8002f3c:	4605      	mov	r5, r0
 8002f3e:	4614      	mov	r4, r2
 8002f40:	3330      	adds	r3, #48	; 0x30
 8002f42:	ea54 0205 	orrs.w	r2, r4, r5
 8002f46:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002f4a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002f4e:	d1ee      	bne.n	8002f2e <_vfprintf_r+0x5a6>
 8002f50:	f018 0f01 	tst.w	r8, #1
 8002f54:	f000 8314 	beq.w	8003580 <_vfprintf_r+0xbf8>
 8002f58:	2b30      	cmp	r3, #48	; 0x30
 8002f5a:	f000 8311 	beq.w	8003580 <_vfprintf_r+0xbf8>
 8002f5e:	9a04      	ldr	r2, [sp, #16]
 8002f60:	3902      	subs	r1, #2
 8002f62:	2330      	movs	r3, #48	; 0x30
 8002f64:	1a52      	subs	r2, r2, r1
 8002f66:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002f6a:	9209      	str	r2, [sp, #36]	; 0x24
 8002f6c:	460f      	mov	r7, r1
 8002f6e:	e68c      	b.n	8002c8a <_vfprintf_r+0x302>
 8002f70:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002f74:	2200      	movs	r2, #0
 8002f76:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002f7a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002f7e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002f82:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002f86:	2b09      	cmp	r3, #9
 8002f88:	d9f5      	bls.n	8002f76 <_vfprintf_r+0x5ee>
 8002f8a:	9206      	str	r2, [sp, #24]
 8002f8c:	e57c      	b.n	8002a88 <_vfprintf_r+0x100>
 8002f8e:	4b14      	ldr	r3, [pc, #80]	; (8002fe0 <_vfprintf_r+0x658>)
 8002f90:	9317      	str	r3, [sp, #92]	; 0x5c
 8002f92:	f018 0f20 	tst.w	r8, #32
 8002f96:	f000 8114 	beq.w	80031c2 <_vfprintf_r+0x83a>
 8002f9a:	9c08      	ldr	r4, [sp, #32]
 8002f9c:	3407      	adds	r4, #7
 8002f9e:	f024 0307 	bic.w	r3, r4, #7
 8002fa2:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002fa6:	f103 0208 	add.w	r2, r3, #8
 8002faa:	9208      	str	r2, [sp, #32]
 8002fac:	f018 0f01 	tst.w	r8, #1
 8002fb0:	d009      	beq.n	8002fc6 <_vfprintf_r+0x63e>
 8002fb2:	ea54 0305 	orrs.w	r3, r4, r5
 8002fb6:	d006      	beq.n	8002fc6 <_vfprintf_r+0x63e>
 8002fb8:	2330      	movs	r3, #48	; 0x30
 8002fba:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002fbe:	f048 0802 	orr.w	r8, r8, #2
 8002fc2:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002fc6:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002fca:	2202      	movs	r2, #2
 8002fcc:	e79d      	b.n	8002f0a <_vfprintf_r+0x582>
 8002fce:	f048 0801 	orr.w	r8, r8, #1
 8002fd2:	f89a 6000 	ldrb.w	r6, [sl]
 8002fd6:	e555      	b.n	8002a84 <_vfprintf_r+0xfc>
 8002fd8:	08007148 	.word	0x08007148
 8002fdc:	08007158 	.word	0x08007158
 8002fe0:	08007114 	.word	0x08007114
 8002fe4:	9e03      	ldr	r6, [sp, #12]
 8002fe6:	4630      	mov	r0, r6
 8002fe8:	f002 feaa 	bl	8005d40 <_localeconv_r>
 8002fec:	6843      	ldr	r3, [r0, #4]
 8002fee:	9318      	str	r3, [sp, #96]	; 0x60
 8002ff0:	4618      	mov	r0, r3
 8002ff2:	f7fd fb25 	bl	8000640 <strlen>
 8002ff6:	901b      	str	r0, [sp, #108]	; 0x6c
 8002ff8:	4604      	mov	r4, r0
 8002ffa:	4630      	mov	r0, r6
 8002ffc:	f002 fea0 	bl	8005d40 <_localeconv_r>
 8003000:	6883      	ldr	r3, [r0, #8]
 8003002:	931a      	str	r3, [sp, #104]	; 0x68
 8003004:	2c00      	cmp	r4, #0
 8003006:	f43f adb8 	beq.w	8002b7a <_vfprintf_r+0x1f2>
 800300a:	f89a 6000 	ldrb.w	r6, [sl]
 800300e:	2b00      	cmp	r3, #0
 8003010:	f43f ad38 	beq.w	8002a84 <_vfprintf_r+0xfc>
 8003014:	781b      	ldrb	r3, [r3, #0]
 8003016:	2b00      	cmp	r3, #0
 8003018:	f43f ad34 	beq.w	8002a84 <_vfprintf_r+0xfc>
 800301c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8003020:	e530      	b.n	8002a84 <_vfprintf_r+0xfc>
 8003022:	9b08      	ldr	r3, [sp, #32]
 8003024:	f89a 6000 	ldrb.w	r6, [sl]
 8003028:	681a      	ldr	r2, [r3, #0]
 800302a:	9206      	str	r2, [sp, #24]
 800302c:	2a00      	cmp	r2, #0
 800302e:	f103 0304 	add.w	r3, r3, #4
 8003032:	f2c0 8697 	blt.w	8003d64 <_vfprintf_r+0x13dc>
 8003036:	9308      	str	r3, [sp, #32]
 8003038:	e524      	b.n	8002a84 <_vfprintf_r+0xfc>
 800303a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 800303e:	f89a 6000 	ldrb.w	r6, [sl]
 8003042:	e51f      	b.n	8002a84 <_vfprintf_r+0xfc>
 8003044:	f89a 6000 	ldrb.w	r6, [sl]
 8003048:	f048 0804 	orr.w	r8, r8, #4
 800304c:	e51a      	b.n	8002a84 <_vfprintf_r+0xfc>
 800304e:	f89a 6000 	ldrb.w	r6, [sl]
 8003052:	2e2a      	cmp	r6, #42	; 0x2a
 8003054:	f10a 0201 	add.w	r2, sl, #1
 8003058:	f001 81b0 	beq.w	80043bc <_vfprintf_r+0x1a34>
 800305c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003060:	2b09      	cmp	r3, #9
 8003062:	4692      	mov	sl, r2
 8003064:	f04f 0900 	mov.w	r9, #0
 8003068:	f63f ad0e 	bhi.w	8002a88 <_vfprintf_r+0x100>
 800306c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003070:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8003074:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8003078:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800307c:	2b09      	cmp	r3, #9
 800307e:	d9f5      	bls.n	800306c <_vfprintf_r+0x6e4>
 8003080:	e502      	b.n	8002a88 <_vfprintf_r+0x100>
 8003082:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8003086:	f89a 6000 	ldrb.w	r6, [sl]
 800308a:	e4fb      	b.n	8002a84 <_vfprintf_r+0xfc>
 800308c:	9c08      	ldr	r4, [sp, #32]
 800308e:	3407      	adds	r4, #7
 8003090:	f024 0407 	bic.w	r4, r4, #7
 8003094:	ed94 7b00 	vldr	d7, [r4]
 8003098:	ec52 1b17 	vmov	r1, r2, d7
 800309c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80030a0:	931d      	str	r3, [sp, #116]	; 0x74
 80030a2:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 80030a6:	3408      	adds	r4, #8
 80030a8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80030ac:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80030b0:	4bba      	ldr	r3, [pc, #744]	; (800339c <_vfprintf_r+0xa14>)
 80030b2:	9408      	str	r4, [sp, #32]
 80030b4:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80030b8:	f7fd ffd8 	bl	800106c <__aeabi_dcmpun>
 80030bc:	2800      	cmp	r0, #0
 80030be:	f040 846f 	bne.w	80039a0 <_vfprintf_r+0x1018>
 80030c2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80030c6:	4bb5      	ldr	r3, [pc, #724]	; (800339c <_vfprintf_r+0xa14>)
 80030c8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80030cc:	f7fd ffb0 	bl	8001030 <__aeabi_dcmple>
 80030d0:	2800      	cmp	r0, #0
 80030d2:	f040 8465 	bne.w	80039a0 <_vfprintf_r+0x1018>
 80030d6:	2200      	movs	r2, #0
 80030d8:	2300      	movs	r3, #0
 80030da:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80030de:	f7fd ff9d 	bl	800101c <__aeabi_dcmplt>
 80030e2:	2800      	cmp	r0, #0
 80030e4:	f040 855b 	bne.w	8003b9e <_vfprintf_r+0x1216>
 80030e8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80030ec:	4fac      	ldr	r7, [pc, #688]	; (80033a0 <_vfprintf_r+0xa18>)
 80030ee:	4bad      	ldr	r3, [pc, #692]	; (80033a4 <_vfprintf_r+0xa1c>)
 80030f0:	2000      	movs	r0, #0
 80030f2:	2103      	movs	r1, #3
 80030f4:	9104      	str	r1, [sp, #16]
 80030f6:	900a      	str	r0, [sp, #40]	; 0x28
 80030f8:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 80030fc:	2e47      	cmp	r6, #71	; 0x47
 80030fe:	bfd8      	it	le
 8003100:	461f      	movle	r7, r3
 8003102:	9109      	str	r1, [sp, #36]	; 0x24
 8003104:	4681      	mov	r9, r0
 8003106:	900f      	str	r0, [sp, #60]	; 0x3c
 8003108:	9014      	str	r0, [sp, #80]	; 0x50
 800310a:	9011      	str	r0, [sp, #68]	; 0x44
 800310c:	e5c9      	b.n	8002ca2 <_vfprintf_r+0x31a>
 800310e:	9808      	ldr	r0, [sp, #32]
 8003110:	2300      	movs	r3, #0
 8003112:	6801      	ldr	r1, [r0, #0]
 8003114:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003118:	461a      	mov	r2, r3
 800311a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 800311e:	2301      	movs	r3, #1
 8003120:	1d01      	adds	r1, r0, #4
 8003122:	9304      	str	r3, [sp, #16]
 8003124:	920a      	str	r2, [sp, #40]	; 0x28
 8003126:	4691      	mov	r9, r2
 8003128:	920f      	str	r2, [sp, #60]	; 0x3c
 800312a:	9214      	str	r2, [sp, #80]	; 0x50
 800312c:	9211      	str	r2, [sp, #68]	; 0x44
 800312e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8003132:	af3d      	add	r7, sp, #244	; 0xf4
 8003134:	e5b9      	b.n	8002caa <_vfprintf_r+0x322>
 8003136:	9b08      	ldr	r3, [sp, #32]
 8003138:	681f      	ldr	r7, [r3, #0]
 800313a:	2500      	movs	r5, #0
 800313c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003140:	1d1c      	adds	r4, r3, #4
 8003142:	2f00      	cmp	r7, #0
 8003144:	f000 8639 	beq.w	8003dba <_vfprintf_r+0x1432>
 8003148:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800314c:	f000 8711 	beq.w	8003f72 <_vfprintf_r+0x15ea>
 8003150:	464a      	mov	r2, r9
 8003152:	4629      	mov	r1, r5
 8003154:	4638      	mov	r0, r7
 8003156:	f7fd fae3 	bl	8000720 <memchr>
 800315a:	900a      	str	r0, [sp, #40]	; 0x28
 800315c:	2800      	cmp	r0, #0
 800315e:	f000 85e7 	beq.w	8003d30 <_vfprintf_r+0x13a8>
 8003162:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003164:	1bdb      	subs	r3, r3, r7
 8003166:	9309      	str	r3, [sp, #36]	; 0x24
 8003168:	46a9      	mov	r9, r5
 800316a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800316e:	9408      	str	r4, [sp, #32]
 8003170:	9304      	str	r3, [sp, #16]
 8003172:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003176:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 800317a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 800317e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8003182:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003186:	e58c      	b.n	8002ca2 <_vfprintf_r+0x31a>
 8003188:	f048 0310 	orr.w	r3, r8, #16
 800318c:	069a      	lsls	r2, r3, #26
 800318e:	f53f aeb2 	bmi.w	8002ef6 <_vfprintf_r+0x56e>
 8003192:	9a08      	ldr	r2, [sp, #32]
 8003194:	06df      	lsls	r7, r3, #27
 8003196:	f102 0104 	add.w	r1, r2, #4
 800319a:	f100 837e 	bmi.w	800389a <_vfprintf_r+0xf12>
 800319e:	065d      	lsls	r5, r3, #25
 80031a0:	9a08      	ldr	r2, [sp, #32]
 80031a2:	f100 84e4 	bmi.w	8003b6e <_vfprintf_r+0x11e6>
 80031a6:	059c      	lsls	r4, r3, #22
 80031a8:	f140 8377 	bpl.w	800389a <_vfprintf_r+0xf12>
 80031ac:	7814      	ldrb	r4, [r2, #0]
 80031ae:	9108      	str	r1, [sp, #32]
 80031b0:	2500      	movs	r5, #0
 80031b2:	2201      	movs	r2, #1
 80031b4:	e6a9      	b.n	8002f0a <_vfprintf_r+0x582>
 80031b6:	4b7c      	ldr	r3, [pc, #496]	; (80033a8 <_vfprintf_r+0xa20>)
 80031b8:	9317      	str	r3, [sp, #92]	; 0x5c
 80031ba:	f018 0f20 	tst.w	r8, #32
 80031be:	f47f aeec 	bne.w	8002f9a <_vfprintf_r+0x612>
 80031c2:	9a08      	ldr	r2, [sp, #32]
 80031c4:	f018 0f10 	tst.w	r8, #16
 80031c8:	f102 0304 	add.w	r3, r2, #4
 80031cc:	f040 8354 	bne.w	8003878 <_vfprintf_r+0xef0>
 80031d0:	f018 0f40 	tst.w	r8, #64	; 0x40
 80031d4:	9a08      	ldr	r2, [sp, #32]
 80031d6:	f040 84d0 	bne.w	8003b7a <_vfprintf_r+0x11f2>
 80031da:	f418 7f00 	tst.w	r8, #512	; 0x200
 80031de:	f000 834b 	beq.w	8003878 <_vfprintf_r+0xef0>
 80031e2:	7814      	ldrb	r4, [r2, #0]
 80031e4:	9308      	str	r3, [sp, #32]
 80031e6:	2500      	movs	r5, #0
 80031e8:	e6e0      	b.n	8002fac <_vfprintf_r+0x624>
 80031ea:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 80031ee:	f89a 6000 	ldrb.w	r6, [sl]
 80031f2:	2b00      	cmp	r3, #0
 80031f4:	f47f ac46 	bne.w	8002a84 <_vfprintf_r+0xfc>
 80031f8:	2320      	movs	r3, #32
 80031fa:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80031fe:	e441      	b.n	8002a84 <_vfprintf_r+0xfc>
 8003200:	f89a 6000 	ldrb.w	r6, [sl]
 8003204:	2e6c      	cmp	r6, #108	; 0x6c
 8003206:	bf03      	ittte	eq
 8003208:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800320c:	f048 0820 	orreq.w	r8, r8, #32
 8003210:	f10a 0a01 	addeq.w	sl, sl, #1
 8003214:	f048 0810 	orrne.w	r8, r8, #16
 8003218:	e434      	b.n	8002a84 <_vfprintf_r+0xfc>
 800321a:	9a08      	ldr	r2, [sp, #32]
 800321c:	f018 0f20 	tst.w	r8, #32
 8003220:	f852 3b04 	ldr.w	r3, [r2], #4
 8003224:	9208      	str	r2, [sp, #32]
 8003226:	f000 83a1 	beq.w	800396c <_vfprintf_r+0xfe4>
 800322a:	9a05      	ldr	r2, [sp, #20]
 800322c:	4610      	mov	r0, r2
 800322e:	17d1      	asrs	r1, r2, #31
 8003230:	e9c3 0100 	strd	r0, r1, [r3]
 8003234:	4657      	mov	r7, sl
 8003236:	e64d      	b.n	8002ed4 <_vfprintf_r+0x54c>
 8003238:	f89a 6000 	ldrb.w	r6, [sl]
 800323c:	2e68      	cmp	r6, #104	; 0x68
 800323e:	bf03      	ittte	eq
 8003240:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8003244:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003248:	f10a 0a01 	addeq.w	sl, sl, #1
 800324c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8003250:	e418      	b.n	8002a84 <_vfprintf_r+0xfc>
 8003252:	9908      	ldr	r1, [sp, #32]
 8003254:	4b55      	ldr	r3, [pc, #340]	; (80033ac <_vfprintf_r+0xa24>)
 8003256:	680c      	ldr	r4, [r1, #0]
 8003258:	9317      	str	r3, [sp, #92]	; 0x5c
 800325a:	f647 0230 	movw	r2, #30768	; 0x7830
 800325e:	3104      	adds	r1, #4
 8003260:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8003264:	f048 0302 	orr.w	r3, r8, #2
 8003268:	9108      	str	r1, [sp, #32]
 800326a:	2500      	movs	r5, #0
 800326c:	2202      	movs	r2, #2
 800326e:	2678      	movs	r6, #120	; 0x78
 8003270:	e64b      	b.n	8002f0a <_vfprintf_r+0x582>
 8003272:	f048 0808 	orr.w	r8, r8, #8
 8003276:	f89a 6000 	ldrb.w	r6, [sl]
 800327a:	e403      	b.n	8002a84 <_vfprintf_r+0xfc>
 800327c:	f048 0310 	orr.w	r3, r8, #16
 8003280:	069f      	lsls	r7, r3, #26
 8003282:	f53f acd1 	bmi.w	8002c28 <_vfprintf_r+0x2a0>
 8003286:	9908      	ldr	r1, [sp, #32]
 8003288:	06dd      	lsls	r5, r3, #27
 800328a:	f101 0204 	add.w	r2, r1, #4
 800328e:	f100 82fd 	bmi.w	800388c <_vfprintf_r+0xf04>
 8003292:	065c      	lsls	r4, r3, #25
 8003294:	9908      	ldr	r1, [sp, #32]
 8003296:	f100 8475 	bmi.w	8003b84 <_vfprintf_r+0x11fc>
 800329a:	0598      	lsls	r0, r3, #22
 800329c:	f140 82f6 	bpl.w	800388c <_vfprintf_r+0xf04>
 80032a0:	f991 4000 	ldrsb.w	r4, [r1]
 80032a4:	9208      	str	r2, [sp, #32]
 80032a6:	17e5      	asrs	r5, r4, #31
 80032a8:	4620      	mov	r0, r4
 80032aa:	4629      	mov	r1, r5
 80032ac:	e4c7      	b.n	8002c3e <_vfprintf_r+0x2b6>
 80032ae:	9a08      	ldr	r2, [sp, #32]
 80032b0:	f018 0f10 	tst.w	r8, #16
 80032b4:	f102 0304 	add.w	r3, r2, #4
 80032b8:	f040 82e3 	bne.w	8003882 <_vfprintf_r+0xefa>
 80032bc:	f018 0f40 	tst.w	r8, #64	; 0x40
 80032c0:	9a08      	ldr	r2, [sp, #32]
 80032c2:	f040 8467 	bne.w	8003b94 <_vfprintf_r+0x120c>
 80032c6:	f418 7f00 	tst.w	r8, #512	; 0x200
 80032ca:	f000 82da 	beq.w	8003882 <_vfprintf_r+0xefa>
 80032ce:	7814      	ldrb	r4, [r2, #0]
 80032d0:	9308      	str	r3, [sp, #32]
 80032d2:	2500      	movs	r5, #0
 80032d4:	e488      	b.n	8002be8 <_vfprintf_r+0x260>
 80032d6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80032da:	f002 fd45 	bl	8005d68 <__retarget_lock_release_recursive>
 80032de:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80032e2:	9305      	str	r3, [sp, #20]
 80032e4:	e443      	b.n	8002b6e <_vfprintf_r+0x1e6>
 80032e6:	2e00      	cmp	r6, #0
 80032e8:	f43f adf8 	beq.w	8002edc <_vfprintf_r+0x554>
 80032ec:	2300      	movs	r3, #0
 80032ee:	2101      	movs	r1, #1
 80032f0:	461a      	mov	r2, r3
 80032f2:	9104      	str	r1, [sp, #16]
 80032f4:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 80032f8:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80032fc:	930a      	str	r3, [sp, #40]	; 0x28
 80032fe:	4699      	mov	r9, r3
 8003300:	930f      	str	r3, [sp, #60]	; 0x3c
 8003302:	9314      	str	r3, [sp, #80]	; 0x50
 8003304:	9311      	str	r3, [sp, #68]	; 0x44
 8003306:	9109      	str	r1, [sp, #36]	; 0x24
 8003308:	af3d      	add	r7, sp, #244	; 0xf4
 800330a:	e4ce      	b.n	8002caa <_vfprintf_r+0x322>
 800330c:	2e65      	cmp	r6, #101	; 0x65
 800330e:	f340 80ca 	ble.w	80034a6 <_vfprintf_r+0xb1e>
 8003312:	2200      	movs	r2, #0
 8003314:	2300      	movs	r3, #0
 8003316:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800331a:	f7fd fe75 	bl	8001008 <__aeabi_dcmpeq>
 800331e:	2800      	cmp	r0, #0
 8003320:	f000 8169 	beq.w	80035f6 <_vfprintf_r+0xc6e>
 8003324:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003326:	4a22      	ldr	r2, [pc, #136]	; (80033b0 <_vfprintf_r+0xa28>)
 8003328:	f8cb 2000 	str.w	r2, [fp]
 800332c:	3301      	adds	r3, #1
 800332e:	3401      	adds	r4, #1
 8003330:	2201      	movs	r2, #1
 8003332:	2b07      	cmp	r3, #7
 8003334:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003338:	f8cb 2004 	str.w	r2, [fp, #4]
 800333c:	f300 8406 	bgt.w	8003b4c <_vfprintf_r+0x11c4>
 8003340:	f10b 0b08 	add.w	fp, fp, #8
 8003344:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003346:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003348:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800334a:	4293      	cmp	r3, r2
 800334c:	db03      	blt.n	8003356 <_vfprintf_r+0x9ce>
 800334e:	f018 0f01 	tst.w	r8, #1
 8003352:	f43f ad6a 	beq.w	8002e2a <_vfprintf_r+0x4a2>
 8003356:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003358:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800335a:	f8cb 2000 	str.w	r2, [fp]
 800335e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003360:	f8cb 2004 	str.w	r2, [fp, #4]
 8003364:	3301      	adds	r3, #1
 8003366:	4414      	add	r4, r2
 8003368:	2b07      	cmp	r3, #7
 800336a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800336e:	f300 8517 	bgt.w	8003da0 <_vfprintf_r+0x1418>
 8003372:	f10b 0b08 	add.w	fp, fp, #8
 8003376:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003378:	1e5d      	subs	r5, r3, #1
 800337a:	2d00      	cmp	r5, #0
 800337c:	f77f ad55 	ble.w	8002e2a <_vfprintf_r+0x4a2>
 8003380:	2d10      	cmp	r5, #16
 8003382:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003384:	4b0b      	ldr	r3, [pc, #44]	; (80033b4 <_vfprintf_r+0xa2c>)
 8003386:	f340 82e7 	ble.w	8003958 <_vfprintf_r+0xfd0>
 800338a:	4619      	mov	r1, r3
 800338c:	2610      	movs	r6, #16
 800338e:	4623      	mov	r3, r4
 8003390:	9f03      	ldr	r7, [sp, #12]
 8003392:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003396:	460c      	mov	r4, r1
 8003398:	e014      	b.n	80033c4 <_vfprintf_r+0xa3c>
 800339a:	bf00      	nop
 800339c:	7fefffff 	.word	0x7fefffff
 80033a0:	08007108 	.word	0x08007108
 80033a4:	08007104 	.word	0x08007104
 80033a8:	08007128 	.word	0x08007128
 80033ac:	08007114 	.word	0x08007114
 80033b0:	08007144 	.word	0x08007144
 80033b4:	08007158 	.word	0x08007158
 80033b8:	f10b 0b08 	add.w	fp, fp, #8
 80033bc:	3d10      	subs	r5, #16
 80033be:	2d10      	cmp	r5, #16
 80033c0:	f340 82c7 	ble.w	8003952 <_vfprintf_r+0xfca>
 80033c4:	3201      	adds	r2, #1
 80033c6:	3310      	adds	r3, #16
 80033c8:	2a07      	cmp	r2, #7
 80033ca:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80033ce:	e9cb 4600 	strd	r4, r6, [fp]
 80033d2:	ddf1      	ble.n	80033b8 <_vfprintf_r+0xa30>
 80033d4:	aa2a      	add	r2, sp, #168	; 0xa8
 80033d6:	4649      	mov	r1, r9
 80033d8:	4638      	mov	r0, r7
 80033da:	f003 fb41 	bl	8006a60 <__sprint_r>
 80033de:	2800      	cmp	r0, #0
 80033e0:	d14c      	bne.n	800347c <_vfprintf_r+0xaf4>
 80033e2:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80033e6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033ea:	e7e7      	b.n	80033bc <_vfprintf_r+0xa34>
 80033ec:	9b06      	ldr	r3, [sp, #24]
 80033ee:	9a04      	ldr	r2, [sp, #16]
 80033f0:	1a9d      	subs	r5, r3, r2
 80033f2:	2d00      	cmp	r5, #0
 80033f4:	f77f acc9 	ble.w	8002d8a <_vfprintf_r+0x402>
 80033f8:	2d10      	cmp	r5, #16
 80033fa:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80033fc:	4bbc      	ldr	r3, [pc, #752]	; (80036f0 <_vfprintf_r+0xd68>)
 80033fe:	dd27      	ble.n	8003450 <_vfprintf_r+0xac8>
 8003400:	4659      	mov	r1, fp
 8003402:	4620      	mov	r0, r4
 8003404:	46bb      	mov	fp, r7
 8003406:	461c      	mov	r4, r3
 8003408:	4637      	mov	r7, r6
 800340a:	9e07      	ldr	r6, [sp, #28]
 800340c:	e004      	b.n	8003418 <_vfprintf_r+0xa90>
 800340e:	3d10      	subs	r5, #16
 8003410:	2d10      	cmp	r5, #16
 8003412:	f101 0108 	add.w	r1, r1, #8
 8003416:	dd16      	ble.n	8003446 <_vfprintf_r+0xabe>
 8003418:	3201      	adds	r2, #1
 800341a:	3010      	adds	r0, #16
 800341c:	2310      	movs	r3, #16
 800341e:	2a07      	cmp	r2, #7
 8003420:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003424:	600c      	str	r4, [r1, #0]
 8003426:	604b      	str	r3, [r1, #4]
 8003428:	ddf1      	ble.n	800340e <_vfprintf_r+0xa86>
 800342a:	aa2a      	add	r2, sp, #168	; 0xa8
 800342c:	4631      	mov	r1, r6
 800342e:	9803      	ldr	r0, [sp, #12]
 8003430:	f003 fb16 	bl	8006a60 <__sprint_r>
 8003434:	2800      	cmp	r0, #0
 8003436:	f040 80a8 	bne.w	800358a <_vfprintf_r+0xc02>
 800343a:	3d10      	subs	r5, #16
 800343c:	2d10      	cmp	r5, #16
 800343e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003442:	a92d      	add	r1, sp, #180	; 0xb4
 8003444:	dce8      	bgt.n	8003418 <_vfprintf_r+0xa90>
 8003446:	463e      	mov	r6, r7
 8003448:	4623      	mov	r3, r4
 800344a:	465f      	mov	r7, fp
 800344c:	4604      	mov	r4, r0
 800344e:	468b      	mov	fp, r1
 8003450:	3201      	adds	r2, #1
 8003452:	442c      	add	r4, r5
 8003454:	2a07      	cmp	r2, #7
 8003456:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800345a:	e9cb 3500 	strd	r3, r5, [fp]
 800345e:	f300 8292 	bgt.w	8003986 <_vfprintf_r+0xffe>
 8003462:	f10b 0b08 	add.w	fp, fp, #8
 8003466:	e490      	b.n	8002d8a <_vfprintf_r+0x402>
 8003468:	aa2a      	add	r2, sp, #168	; 0xa8
 800346a:	9907      	ldr	r1, [sp, #28]
 800346c:	9803      	ldr	r0, [sp, #12]
 800346e:	f003 faf7 	bl	8006a60 <__sprint_r>
 8003472:	2800      	cmp	r0, #0
 8003474:	f43f ad23 	beq.w	8002ebe <_vfprintf_r+0x536>
 8003478:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800347c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800347e:	b111      	cbz	r1, 8003486 <_vfprintf_r+0xafe>
 8003480:	9803      	ldr	r0, [sp, #12]
 8003482:	f002 f9c1 	bl	8005808 <_free_r>
 8003486:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800348a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800348e:	07d0      	lsls	r0, r2, #31
 8003490:	d402      	bmi.n	8003498 <_vfprintf_r+0xb10>
 8003492:	0599      	lsls	r1, r3, #22
 8003494:	f140 81d0 	bpl.w	8003838 <_vfprintf_r+0xeb0>
 8003498:	065a      	lsls	r2, r3, #25
 800349a:	f53f ab65 	bmi.w	8002b68 <_vfprintf_r+0x1e0>
 800349e:	9805      	ldr	r0, [sp, #20]
 80034a0:	b057      	add	sp, #348	; 0x15c
 80034a2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80034a6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80034a8:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80034aa:	2a01      	cmp	r2, #1
 80034ac:	f104 0401 	add.w	r4, r4, #1
 80034b0:	f103 0501 	add.w	r5, r3, #1
 80034b4:	f10b 0608 	add.w	r6, fp, #8
 80034b8:	f340 811c 	ble.w	80036f4 <_vfprintf_r+0xd6c>
 80034bc:	2301      	movs	r3, #1
 80034be:	2d07      	cmp	r5, #7
 80034c0:	f8cb 7000 	str.w	r7, [fp]
 80034c4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80034c8:	f8cb 3004 	str.w	r3, [fp, #4]
 80034cc:	f300 81bb 	bgt.w	8003846 <_vfprintf_r+0xebe>
 80034d0:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80034d2:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80034d4:	1c69      	adds	r1, r5, #1
 80034d6:	441c      	add	r4, r3
 80034d8:	2907      	cmp	r1, #7
 80034da:	910b      	str	r1, [sp, #44]	; 0x2c
 80034dc:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80034e0:	e9c6 2300 	strd	r2, r3, [r6]
 80034e4:	f300 81bb 	bgt.w	800385e <_vfprintf_r+0xed6>
 80034e8:	3608      	adds	r6, #8
 80034ea:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80034ec:	1c53      	adds	r3, r2, #1
 80034ee:	461d      	mov	r5, r3
 80034f0:	9509      	str	r5, [sp, #36]	; 0x24
 80034f2:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80034f4:	930e      	str	r3, [sp, #56]	; 0x38
 80034f6:	2200      	movs	r2, #0
 80034f8:	2300      	movs	r3, #0
 80034fa:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80034fe:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8003502:	f106 0b08 	add.w	fp, r6, #8
 8003506:	f7fd fd7f 	bl	8001008 <__aeabi_dcmpeq>
 800350a:	2800      	cmp	r0, #0
 800350c:	f040 80c2 	bne.w	8003694 <_vfprintf_r+0xd0c>
 8003510:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8003512:	f8c6 9004 	str.w	r9, [r6, #4]
 8003516:	3701      	adds	r7, #1
 8003518:	444c      	add	r4, r9
 800351a:	2d07      	cmp	r5, #7
 800351c:	6037      	str	r7, [r6, #0]
 800351e:	942c      	str	r4, [sp, #176]	; 0xb0
 8003520:	952b      	str	r5, [sp, #172]	; 0xac
 8003522:	f300 80f9 	bgt.w	8003718 <_vfprintf_r+0xd90>
 8003526:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003528:	f106 0310 	add.w	r3, r6, #16
 800352c:	3202      	adds	r2, #2
 800352e:	465e      	mov	r6, fp
 8003530:	9209      	str	r2, [sp, #36]	; 0x24
 8003532:	469b      	mov	fp, r3
 8003534:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003536:	6072      	str	r2, [r6, #4]
 8003538:	4414      	add	r4, r2
 800353a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800353c:	942c      	str	r4, [sp, #176]	; 0xb0
 800353e:	ab26      	add	r3, sp, #152	; 0x98
 8003540:	2a07      	cmp	r2, #7
 8003542:	922b      	str	r2, [sp, #172]	; 0xac
 8003544:	6033      	str	r3, [r6, #0]
 8003546:	f77f ac70 	ble.w	8002e2a <_vfprintf_r+0x4a2>
 800354a:	aa2a      	add	r2, sp, #168	; 0xa8
 800354c:	9907      	ldr	r1, [sp, #28]
 800354e:	9803      	ldr	r0, [sp, #12]
 8003550:	f003 fa86 	bl	8006a60 <__sprint_r>
 8003554:	2800      	cmp	r0, #0
 8003556:	d18f      	bne.n	8003478 <_vfprintf_r+0xaf0>
 8003558:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800355a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800355e:	e464      	b.n	8002e2a <_vfprintf_r+0x4a2>
 8003560:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003562:	af56      	add	r7, sp, #344	; 0x158
 8003564:	0923      	lsrs	r3, r4, #4
 8003566:	f004 010f 	and.w	r1, r4, #15
 800356a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800356e:	092a      	lsrs	r2, r5, #4
 8003570:	461c      	mov	r4, r3
 8003572:	4615      	mov	r5, r2
 8003574:	5c43      	ldrb	r3, [r0, r1]
 8003576:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800357a:	ea54 0305 	orrs.w	r3, r4, r5
 800357e:	d1f1      	bne.n	8003564 <_vfprintf_r+0xbdc>
 8003580:	9b04      	ldr	r3, [sp, #16]
 8003582:	1bdb      	subs	r3, r3, r7
 8003584:	9309      	str	r3, [sp, #36]	; 0x24
 8003586:	f7ff bb80 	b.w	8002c8a <_vfprintf_r+0x302>
 800358a:	46b1      	mov	r9, r6
 800358c:	e776      	b.n	800347c <_vfprintf_r+0xaf4>
 800358e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003590:	9907      	ldr	r1, [sp, #28]
 8003592:	9803      	ldr	r0, [sp, #12]
 8003594:	f003 fa64 	bl	8006a60 <__sprint_r>
 8003598:	2800      	cmp	r0, #0
 800359a:	f47f af6d 	bne.w	8003478 <_vfprintf_r+0xaf0>
 800359e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80035a0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035a4:	f7ff bbdd 	b.w	8002d62 <_vfprintf_r+0x3da>
 80035a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80035aa:	9907      	ldr	r1, [sp, #28]
 80035ac:	9803      	ldr	r0, [sp, #12]
 80035ae:	f003 fa57 	bl	8006a60 <__sprint_r>
 80035b2:	2800      	cmp	r0, #0
 80035b4:	f47f af60 	bne.w	8003478 <_vfprintf_r+0xaf0>
 80035b8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80035ba:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035be:	f7ff bbe0 	b.w	8002d82 <_vfprintf_r+0x3fa>
 80035c2:	4698      	mov	r8, r3
 80035c4:	2d00      	cmp	r5, #0
 80035c6:	bf08      	it	eq
 80035c8:	2c0a      	cmpeq	r4, #10
 80035ca:	f080 8170 	bcs.w	80038ae <_vfprintf_r+0xf26>
 80035ce:	af56      	add	r7, sp, #344	; 0x158
 80035d0:	3430      	adds	r4, #48	; 0x30
 80035d2:	2301      	movs	r3, #1
 80035d4:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80035d8:	9309      	str	r3, [sp, #36]	; 0x24
 80035da:	f7ff bb56 	b.w	8002c8a <_vfprintf_r+0x302>
 80035de:	aa2a      	add	r2, sp, #168	; 0xa8
 80035e0:	9907      	ldr	r1, [sp, #28]
 80035e2:	9803      	ldr	r0, [sp, #12]
 80035e4:	f003 fa3c 	bl	8006a60 <__sprint_r>
 80035e8:	2800      	cmp	r0, #0
 80035ea:	f47f af45 	bne.w	8003478 <_vfprintf_r+0xaf0>
 80035ee:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80035f0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035f4:	e406      	b.n	8002e04 <_vfprintf_r+0x47c>
 80035f6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80035f8:	2b00      	cmp	r3, #0
 80035fa:	f340 8273 	ble.w	8003ae4 <_vfprintf_r+0x115c>
 80035fe:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003602:	4293      	cmp	r3, r2
 8003604:	bfa8      	it	ge
 8003606:	4613      	movge	r3, r2
 8003608:	2b00      	cmp	r3, #0
 800360a:	461d      	mov	r5, r3
 800360c:	dd0d      	ble.n	800362a <_vfprintf_r+0xca2>
 800360e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003610:	f8cb 7000 	str.w	r7, [fp]
 8003614:	3301      	adds	r3, #1
 8003616:	442c      	add	r4, r5
 8003618:	2b07      	cmp	r3, #7
 800361a:	942c      	str	r4, [sp, #176]	; 0xb0
 800361c:	f8cb 5004 	str.w	r5, [fp, #4]
 8003620:	932b      	str	r3, [sp, #172]	; 0xac
 8003622:	f300 82c1 	bgt.w	8003ba8 <_vfprintf_r+0x1220>
 8003626:	f10b 0b08 	add.w	fp, fp, #8
 800362a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800362c:	2d00      	cmp	r5, #0
 800362e:	bfa8      	it	ge
 8003630:	1b5b      	subge	r3, r3, r5
 8003632:	2b00      	cmp	r3, #0
 8003634:	461d      	mov	r5, r3
 8003636:	f340 8099 	ble.w	800376c <_vfprintf_r+0xde4>
 800363a:	2d10      	cmp	r5, #16
 800363c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800363e:	4b2c      	ldr	r3, [pc, #176]	; (80036f0 <_vfprintf_r+0xd68>)
 8003640:	f340 83db 	ble.w	8003dfa <_vfprintf_r+0x1472>
 8003644:	4618      	mov	r0, r3
 8003646:	4621      	mov	r1, r4
 8003648:	465b      	mov	r3, fp
 800364a:	2610      	movs	r6, #16
 800364c:	46bb      	mov	fp, r7
 800364e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003652:	9c07      	ldr	r4, [sp, #28]
 8003654:	4607      	mov	r7, r0
 8003656:	e004      	b.n	8003662 <_vfprintf_r+0xcda>
 8003658:	3308      	adds	r3, #8
 800365a:	3d10      	subs	r5, #16
 800365c:	2d10      	cmp	r5, #16
 800365e:	f340 83c7 	ble.w	8003df0 <_vfprintf_r+0x1468>
 8003662:	3201      	adds	r2, #1
 8003664:	3110      	adds	r1, #16
 8003666:	2a07      	cmp	r2, #7
 8003668:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800366c:	e9c3 7600 	strd	r7, r6, [r3]
 8003670:	ddf2      	ble.n	8003658 <_vfprintf_r+0xcd0>
 8003672:	aa2a      	add	r2, sp, #168	; 0xa8
 8003674:	4621      	mov	r1, r4
 8003676:	4648      	mov	r0, r9
 8003678:	f003 f9f2 	bl	8006a60 <__sprint_r>
 800367c:	2800      	cmp	r0, #0
 800367e:	f040 84a5 	bne.w	8003fcc <_vfprintf_r+0x1644>
 8003682:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003686:	ab2d      	add	r3, sp, #180	; 0xb4
 8003688:	e7e7      	b.n	800365a <_vfprintf_r+0xcd2>
 800368a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800368e:	af56      	add	r7, sp, #344	; 0x158
 8003690:	f7ff bafb 	b.w	8002c8a <_vfprintf_r+0x302>
 8003694:	f1b9 0f00 	cmp.w	r9, #0
 8003698:	f77f af4c 	ble.w	8003534 <_vfprintf_r+0xbac>
 800369c:	f1b9 0f10 	cmp.w	r9, #16
 80036a0:	4b13      	ldr	r3, [pc, #76]	; (80036f0 <_vfprintf_r+0xd68>)
 80036a2:	f340 8659 	ble.w	8004358 <_vfprintf_r+0x19d0>
 80036a6:	4619      	mov	r1, r3
 80036a8:	4622      	mov	r2, r4
 80036aa:	4633      	mov	r3, r6
 80036ac:	2710      	movs	r7, #16
 80036ae:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80036b2:	9c07      	ldr	r4, [sp, #28]
 80036b4:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80036b6:	460e      	mov	r6, r1
 80036b8:	e007      	b.n	80036ca <_vfprintf_r+0xd42>
 80036ba:	3308      	adds	r3, #8
 80036bc:	f1a9 0910 	sub.w	r9, r9, #16
 80036c0:	f1b9 0f10 	cmp.w	r9, #16
 80036c4:	f340 8353 	ble.w	8003d6e <_vfprintf_r+0x13e6>
 80036c8:	3501      	adds	r5, #1
 80036ca:	3210      	adds	r2, #16
 80036cc:	2d07      	cmp	r5, #7
 80036ce:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80036d2:	e9c3 6700 	strd	r6, r7, [r3]
 80036d6:	ddf0      	ble.n	80036ba <_vfprintf_r+0xd32>
 80036d8:	aa2a      	add	r2, sp, #168	; 0xa8
 80036da:	4621      	mov	r1, r4
 80036dc:	4658      	mov	r0, fp
 80036de:	f003 f9bf 	bl	8006a60 <__sprint_r>
 80036e2:	2800      	cmp	r0, #0
 80036e4:	f040 8472 	bne.w	8003fcc <_vfprintf_r+0x1644>
 80036e8:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80036ec:	ab2d      	add	r3, sp, #180	; 0xb4
 80036ee:	e7e5      	b.n	80036bc <_vfprintf_r+0xd34>
 80036f0:	08007158 	.word	0x08007158
 80036f4:	f018 0f01 	tst.w	r8, #1
 80036f8:	f47f aee0 	bne.w	80034bc <_vfprintf_r+0xb34>
 80036fc:	2201      	movs	r2, #1
 80036fe:	2d07      	cmp	r5, #7
 8003700:	f8cb 7000 	str.w	r7, [fp]
 8003704:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003708:	f8cb 2004 	str.w	r2, [fp, #4]
 800370c:	dc04      	bgt.n	8003718 <_vfprintf_r+0xd90>
 800370e:	3302      	adds	r3, #2
 8003710:	9309      	str	r3, [sp, #36]	; 0x24
 8003712:	f10b 0b10 	add.w	fp, fp, #16
 8003716:	e70d      	b.n	8003534 <_vfprintf_r+0xbac>
 8003718:	aa2a      	add	r2, sp, #168	; 0xa8
 800371a:	9907      	ldr	r1, [sp, #28]
 800371c:	9803      	ldr	r0, [sp, #12]
 800371e:	f003 f99f 	bl	8006a60 <__sprint_r>
 8003722:	2800      	cmp	r0, #0
 8003724:	f47f aea8 	bne.w	8003478 <_vfprintf_r+0xaf0>
 8003728:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800372c:	3301      	adds	r3, #1
 800372e:	9309      	str	r3, [sp, #36]	; 0x24
 8003730:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003734:	ae2d      	add	r6, sp, #180	; 0xb4
 8003736:	e6fd      	b.n	8003534 <_vfprintf_r+0xbac>
 8003738:	aa2a      	add	r2, sp, #168	; 0xa8
 800373a:	9907      	ldr	r1, [sp, #28]
 800373c:	9803      	ldr	r0, [sp, #12]
 800373e:	f003 f98f 	bl	8006a60 <__sprint_r>
 8003742:	2800      	cmp	r0, #0
 8003744:	f47f ae98 	bne.w	8003478 <_vfprintf_r+0xaf0>
 8003748:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800374c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800374e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003752:	f7ff baf6 	b.w	8002d42 <_vfprintf_r+0x3ba>
 8003756:	aa2a      	add	r2, sp, #168	; 0xa8
 8003758:	9907      	ldr	r1, [sp, #28]
 800375a:	9803      	ldr	r0, [sp, #12]
 800375c:	f003 f980 	bl	8006a60 <__sprint_r>
 8003760:	2800      	cmp	r0, #0
 8003762:	f47f ae89 	bne.w	8003478 <_vfprintf_r+0xaf0>
 8003766:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003768:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800376c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800376e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003772:	443b      	add	r3, r7
 8003774:	4699      	mov	r9, r3
 8003776:	f040 8357 	bne.w	8003e28 <_vfprintf_r+0x14a0>
 800377a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800377c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800377e:	4293      	cmp	r3, r2
 8003780:	db49      	blt.n	8003816 <_vfprintf_r+0xe8e>
 8003782:	f018 0f01 	tst.w	r8, #1
 8003786:	d146      	bne.n	8003816 <_vfprintf_r+0xe8e>
 8003788:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800378a:	18bd      	adds	r5, r7, r2
 800378c:	eba5 0509 	sub.w	r5, r5, r9
 8003790:	1ad3      	subs	r3, r2, r3
 8003792:	429d      	cmp	r5, r3
 8003794:	bfa8      	it	ge
 8003796:	461d      	movge	r5, r3
 8003798:	2d00      	cmp	r5, #0
 800379a:	dd0d      	ble.n	80037b8 <_vfprintf_r+0xe30>
 800379c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800379e:	f8cb 9000 	str.w	r9, [fp]
 80037a2:	3201      	adds	r2, #1
 80037a4:	442c      	add	r4, r5
 80037a6:	2a07      	cmp	r2, #7
 80037a8:	942c      	str	r4, [sp, #176]	; 0xb0
 80037aa:	f8cb 5004 	str.w	r5, [fp, #4]
 80037ae:	922b      	str	r2, [sp, #172]	; 0xac
 80037b0:	f300 8462 	bgt.w	8004078 <_vfprintf_r+0x16f0>
 80037b4:	f10b 0b08 	add.w	fp, fp, #8
 80037b8:	2d00      	cmp	r5, #0
 80037ba:	bfac      	ite	ge
 80037bc:	1b5d      	subge	r5, r3, r5
 80037be:	461d      	movlt	r5, r3
 80037c0:	2d00      	cmp	r5, #0
 80037c2:	f77f ab32 	ble.w	8002e2a <_vfprintf_r+0x4a2>
 80037c6:	2d10      	cmp	r5, #16
 80037c8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80037ca:	4bc5      	ldr	r3, [pc, #788]	; (8003ae0 <_vfprintf_r+0x1158>)
 80037cc:	f340 80c4 	ble.w	8003958 <_vfprintf_r+0xfd0>
 80037d0:	4619      	mov	r1, r3
 80037d2:	2610      	movs	r6, #16
 80037d4:	4623      	mov	r3, r4
 80037d6:	9f03      	ldr	r7, [sp, #12]
 80037d8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80037dc:	460c      	mov	r4, r1
 80037de:	e005      	b.n	80037ec <_vfprintf_r+0xe64>
 80037e0:	f10b 0b08 	add.w	fp, fp, #8
 80037e4:	3d10      	subs	r5, #16
 80037e6:	2d10      	cmp	r5, #16
 80037e8:	f340 80b3 	ble.w	8003952 <_vfprintf_r+0xfca>
 80037ec:	3201      	adds	r2, #1
 80037ee:	3310      	adds	r3, #16
 80037f0:	2a07      	cmp	r2, #7
 80037f2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80037f6:	e9cb 4600 	strd	r4, r6, [fp]
 80037fa:	ddf1      	ble.n	80037e0 <_vfprintf_r+0xe58>
 80037fc:	aa2a      	add	r2, sp, #168	; 0xa8
 80037fe:	4649      	mov	r1, r9
 8003800:	4638      	mov	r0, r7
 8003802:	f003 f92d 	bl	8006a60 <__sprint_r>
 8003806:	2800      	cmp	r0, #0
 8003808:	f47f ae38 	bne.w	800347c <_vfprintf_r+0xaf4>
 800380c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003810:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003814:	e7e6      	b.n	80037e4 <_vfprintf_r+0xe5c>
 8003816:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003818:	9916      	ldr	r1, [sp, #88]	; 0x58
 800381a:	f8cb 1000 	str.w	r1, [fp]
 800381e:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003820:	f8cb 1004 	str.w	r1, [fp, #4]
 8003824:	3201      	adds	r2, #1
 8003826:	440c      	add	r4, r1
 8003828:	2a07      	cmp	r2, #7
 800382a:	942c      	str	r4, [sp, #176]	; 0xb0
 800382c:	922b      	str	r2, [sp, #172]	; 0xac
 800382e:	f300 828c 	bgt.w	8003d4a <_vfprintf_r+0x13c2>
 8003832:	f10b 0b08 	add.w	fp, fp, #8
 8003836:	e7a7      	b.n	8003788 <_vfprintf_r+0xe00>
 8003838:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800383c:	f002 fa94 	bl	8005d68 <__retarget_lock_release_recursive>
 8003840:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003844:	e628      	b.n	8003498 <_vfprintf_r+0xb10>
 8003846:	aa2a      	add	r2, sp, #168	; 0xa8
 8003848:	9907      	ldr	r1, [sp, #28]
 800384a:	9803      	ldr	r0, [sp, #12]
 800384c:	f003 f908 	bl	8006a60 <__sprint_r>
 8003850:	2800      	cmp	r0, #0
 8003852:	f47f ae11 	bne.w	8003478 <_vfprintf_r+0xaf0>
 8003856:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800385a:	ae2d      	add	r6, sp, #180	; 0xb4
 800385c:	e638      	b.n	80034d0 <_vfprintf_r+0xb48>
 800385e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003860:	9907      	ldr	r1, [sp, #28]
 8003862:	9803      	ldr	r0, [sp, #12]
 8003864:	f003 f8fc 	bl	8006a60 <__sprint_r>
 8003868:	2800      	cmp	r0, #0
 800386a:	f47f ae05 	bne.w	8003478 <_vfprintf_r+0xaf0>
 800386e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003872:	ae2d      	add	r6, sp, #180	; 0xb4
 8003874:	930b      	str	r3, [sp, #44]	; 0x2c
 8003876:	e638      	b.n	80034ea <_vfprintf_r+0xb62>
 8003878:	6814      	ldr	r4, [r2, #0]
 800387a:	9308      	str	r3, [sp, #32]
 800387c:	2500      	movs	r5, #0
 800387e:	f7ff bb95 	b.w	8002fac <_vfprintf_r+0x624>
 8003882:	6814      	ldr	r4, [r2, #0]
 8003884:	9308      	str	r3, [sp, #32]
 8003886:	2500      	movs	r5, #0
 8003888:	f7ff b9ae 	b.w	8002be8 <_vfprintf_r+0x260>
 800388c:	680c      	ldr	r4, [r1, #0]
 800388e:	9208      	str	r2, [sp, #32]
 8003890:	17e5      	asrs	r5, r4, #31
 8003892:	4620      	mov	r0, r4
 8003894:	4629      	mov	r1, r5
 8003896:	f7ff b9d2 	b.w	8002c3e <_vfprintf_r+0x2b6>
 800389a:	6814      	ldr	r4, [r2, #0]
 800389c:	9108      	str	r1, [sp, #32]
 800389e:	2201      	movs	r2, #1
 80038a0:	2500      	movs	r5, #0
 80038a2:	f7ff bb32 	b.w	8002f0a <_vfprintf_r+0x582>
 80038a6:	2a01      	cmp	r2, #1
 80038a8:	f47f ab3c 	bne.w	8002f24 <_vfprintf_r+0x59c>
 80038ac:	e68f      	b.n	80035ce <_vfprintf_r+0xc46>
 80038ae:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 80038b2:	2200      	movs	r2, #0
 80038b4:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80038b8:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80038bc:	af56      	add	r7, sp, #344	; 0x158
 80038be:	4692      	mov	sl, r2
 80038c0:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 80038c4:	461e      	mov	r6, r3
 80038c6:	e00a      	b.n	80038de <_vfprintf_r+0xf56>
 80038c8:	2300      	movs	r3, #0
 80038ca:	4620      	mov	r0, r4
 80038cc:	4629      	mov	r1, r5
 80038ce:	220a      	movs	r2, #10
 80038d0:	f7fc fc96 	bl	8000200 <__aeabi_uldivmod>
 80038d4:	4604      	mov	r4, r0
 80038d6:	460d      	mov	r5, r1
 80038d8:	ea54 0305 	orrs.w	r3, r4, r5
 80038dc:	d029      	beq.n	8003932 <_vfprintf_r+0xfaa>
 80038de:	220a      	movs	r2, #10
 80038e0:	2300      	movs	r3, #0
 80038e2:	4620      	mov	r0, r4
 80038e4:	4629      	mov	r1, r5
 80038e6:	f7fc fc8b 	bl	8000200 <__aeabi_uldivmod>
 80038ea:	3230      	adds	r2, #48	; 0x30
 80038ec:	f807 2c01 	strb.w	r2, [r7, #-1]
 80038f0:	f10a 0a01 	add.w	sl, sl, #1
 80038f4:	3f01      	subs	r7, #1
 80038f6:	2e00      	cmp	r6, #0
 80038f8:	d0e6      	beq.n	80038c8 <_vfprintf_r+0xf40>
 80038fa:	f898 3000 	ldrb.w	r3, [r8]
 80038fe:	459a      	cmp	sl, r3
 8003900:	d1e2      	bne.n	80038c8 <_vfprintf_r+0xf40>
 8003902:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003906:	d0df      	beq.n	80038c8 <_vfprintf_r+0xf40>
 8003908:	2d00      	cmp	r5, #0
 800390a:	bf08      	it	eq
 800390c:	2c0a      	cmpeq	r4, #10
 800390e:	d3db      	bcc.n	80038c8 <_vfprintf_r+0xf40>
 8003910:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003912:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003914:	1aff      	subs	r7, r7, r3
 8003916:	461a      	mov	r2, r3
 8003918:	4638      	mov	r0, r7
 800391a:	f003 f833 	bl	8006984 <strncpy>
 800391e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003922:	2b00      	cmp	r3, #0
 8003924:	f000 8496 	beq.w	8004254 <_vfprintf_r+0x18cc>
 8003928:	f108 0801 	add.w	r8, r8, #1
 800392c:	f04f 0a00 	mov.w	sl, #0
 8003930:	e7ca      	b.n	80038c8 <_vfprintf_r+0xf40>
 8003932:	9b04      	ldr	r3, [sp, #16]
 8003934:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003938:	1bdb      	subs	r3, r3, r7
 800393a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 800393e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003940:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003944:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003948:	9309      	str	r3, [sp, #36]	; 0x24
 800394a:	f7ff b99e 	b.w	8002c8a <_vfprintf_r+0x302>
 800394e:	46c1      	mov	r9, r8
 8003950:	e594      	b.n	800347c <_vfprintf_r+0xaf4>
 8003952:	4621      	mov	r1, r4
 8003954:	461c      	mov	r4, r3
 8003956:	460b      	mov	r3, r1
 8003958:	3201      	adds	r2, #1
 800395a:	442c      	add	r4, r5
 800395c:	2a07      	cmp	r2, #7
 800395e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003962:	e9cb 3500 	strd	r3, r5, [fp]
 8003966:	f77f aa5e 	ble.w	8002e26 <_vfprintf_r+0x49e>
 800396a:	e5ee      	b.n	800354a <_vfprintf_r+0xbc2>
 800396c:	f018 0f10 	tst.w	r8, #16
 8003970:	f040 80f8 	bne.w	8003b64 <_vfprintf_r+0x11dc>
 8003974:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003978:	f000 8351 	beq.w	800401e <_vfprintf_r+0x1696>
 800397c:	9a05      	ldr	r2, [sp, #20]
 800397e:	801a      	strh	r2, [r3, #0]
 8003980:	4657      	mov	r7, sl
 8003982:	f7ff baa7 	b.w	8002ed4 <_vfprintf_r+0x54c>
 8003986:	aa2a      	add	r2, sp, #168	; 0xa8
 8003988:	9907      	ldr	r1, [sp, #28]
 800398a:	9803      	ldr	r0, [sp, #12]
 800398c:	f003 f868 	bl	8006a60 <__sprint_r>
 8003990:	2800      	cmp	r0, #0
 8003992:	f47f ad71 	bne.w	8003478 <_vfprintf_r+0xaf0>
 8003996:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003998:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800399c:	f7ff b9f5 	b.w	8002d8a <_vfprintf_r+0x402>
 80039a0:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80039a4:	4602      	mov	r2, r0
 80039a6:	460b      	mov	r3, r1
 80039a8:	f7fd fb60 	bl	800106c <__aeabi_dcmpun>
 80039ac:	2800      	cmp	r0, #0
 80039ae:	f040 8491 	bne.w	80042d4 <_vfprintf_r+0x194c>
 80039b2:	2e61      	cmp	r6, #97	; 0x61
 80039b4:	f000 8111 	beq.w	8003bda <_vfprintf_r+0x1252>
 80039b8:	2e41      	cmp	r6, #65	; 0x41
 80039ba:	f000 8377 	beq.w	80040ac <_vfprintf_r+0x1724>
 80039be:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80039c2:	f026 0220 	bic.w	r2, r6, #32
 80039c6:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80039ca:	930e      	str	r3, [sp, #56]	; 0x38
 80039cc:	9204      	str	r2, [sp, #16]
 80039ce:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80039d0:	f000 842d 	beq.w	800422e <_vfprintf_r+0x18a6>
 80039d4:	2a47      	cmp	r2, #71	; 0x47
 80039d6:	f000 8424 	beq.w	8004222 <_vfprintf_r+0x189a>
 80039da:	2b00      	cmp	r3, #0
 80039dc:	f2c0 82f9 	blt.w	8003fd2 <_vfprintf_r+0x164a>
 80039e0:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80039e4:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80039e8:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80039ec:	2e66      	cmp	r6, #102	; 0x66
 80039ee:	f000 83eb 	beq.w	80041c8 <_vfprintf_r+0x1840>
 80039f2:	2e46      	cmp	r6, #70	; 0x46
 80039f4:	f000 847e 	beq.w	80042f4 <_vfprintf_r+0x196c>
 80039f8:	9b04      	ldr	r3, [sp, #16]
 80039fa:	9803      	ldr	r0, [sp, #12]
 80039fc:	2b45      	cmp	r3, #69	; 0x45
 80039fe:	bf0c      	ite	eq
 8003a00:	f109 0501 	addeq.w	r5, r9, #1
 8003a04:	464d      	movne	r5, r9
 8003a06:	aa28      	add	r2, sp, #160	; 0xa0
 8003a08:	ab25      	add	r3, sp, #148	; 0x94
 8003a0a:	e9cd 3200 	strd	r3, r2, [sp]
 8003a0e:	2102      	movs	r1, #2
 8003a10:	ab24      	add	r3, sp, #144	; 0x90
 8003a12:	462a      	mov	r2, r5
 8003a14:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003a18:	f000 fe3e 	bl	8004698 <_dtoa_r>
 8003a1c:	2e67      	cmp	r6, #103	; 0x67
 8003a1e:	4607      	mov	r7, r0
 8003a20:	f040 849c 	bne.w	800435c <_vfprintf_r+0x19d4>
 8003a24:	f018 0f01 	tst.w	r8, #1
 8003a28:	f040 83f9 	bne.w	800421e <_vfprintf_r+0x1896>
 8003a2c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003a2e:	4640      	mov	r0, r8
 8003a30:	1bdb      	subs	r3, r3, r7
 8003a32:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003a36:	9310      	str	r3, [sp, #64]	; 0x40
 8003a38:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003a3a:	9311      	str	r3, [sp, #68]	; 0x44
 8003a3c:	9b04      	ldr	r3, [sp, #16]
 8003a3e:	2b47      	cmp	r3, #71	; 0x47
 8003a40:	f000 81e7 	beq.w	8003e12 <_vfprintf_r+0x148a>
 8003a44:	9b04      	ldr	r3, [sp, #16]
 8003a46:	2b46      	cmp	r3, #70	; 0x46
 8003a48:	f000 8300 	beq.w	800404c <_vfprintf_r+0x16c4>
 8003a4c:	9904      	ldr	r1, [sp, #16]
 8003a4e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a50:	b2f2      	uxtb	r2, r6
 8003a52:	2941      	cmp	r1, #65	; 0x41
 8003a54:	bf08      	it	eq
 8003a56:	320f      	addeq	r2, #15
 8003a58:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003a5c:	bf06      	itte	eq
 8003a5e:	b2d2      	uxtbeq	r2, r2
 8003a60:	2101      	moveq	r1, #1
 8003a62:	2100      	movne	r1, #0
 8003a64:	2b00      	cmp	r3, #0
 8003a66:	9324      	str	r3, [sp, #144]	; 0x90
 8003a68:	bfb8      	it	lt
 8003a6a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003a6c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003a70:	bfba      	itte	lt
 8003a72:	f1c3 0301 	rsblt	r3, r3, #1
 8003a76:	222d      	movlt	r2, #45	; 0x2d
 8003a78:	222b      	movge	r2, #43	; 0x2b
 8003a7a:	2b09      	cmp	r3, #9
 8003a7c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003a80:	f300 83f9 	bgt.w	8004276 <_vfprintf_r+0x18ee>
 8003a84:	2900      	cmp	r1, #0
 8003a86:	f040 8487 	bne.w	8004398 <_vfprintf_r+0x1a10>
 8003a8a:	2230      	movs	r2, #48	; 0x30
 8003a8c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003a90:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003a94:	3330      	adds	r3, #48	; 0x30
 8003a96:	7013      	strb	r3, [r2, #0]
 8003a98:	1c53      	adds	r3, r2, #1
 8003a9a:	aa26      	add	r2, sp, #152	; 0x98
 8003a9c:	1a9b      	subs	r3, r3, r2
 8003a9e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003aa0:	9319      	str	r3, [sp, #100]	; 0x64
 8003aa2:	2a01      	cmp	r2, #1
 8003aa4:	4413      	add	r3, r2
 8003aa6:	9309      	str	r3, [sp, #36]	; 0x24
 8003aa8:	f340 8442 	ble.w	8004330 <_vfprintf_r+0x19a8>
 8003aac:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003aae:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003ab0:	4413      	add	r3, r2
 8003ab2:	9309      	str	r3, [sp, #36]	; 0x24
 8003ab4:	2300      	movs	r3, #0
 8003ab6:	930f      	str	r3, [sp, #60]	; 0x3c
 8003ab8:	9314      	str	r3, [sp, #80]	; 0x50
 8003aba:	9311      	str	r3, [sp, #68]	; 0x44
 8003abc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003abe:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003ac2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003ac6:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003aca:	9304      	str	r3, [sp, #16]
 8003acc:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003ace:	2b00      	cmp	r3, #0
 8003ad0:	f040 8275 	bne.w	8003fbe <_vfprintf_r+0x1636>
 8003ad4:	4699      	mov	r9, r3
 8003ad6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003ada:	f7ff b8e2 	b.w	8002ca2 <_vfprintf_r+0x31a>
 8003ade:	bf00      	nop
 8003ae0:	08007158 	.word	0x08007158
 8003ae4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003ae6:	49bd      	ldr	r1, [pc, #756]	; (8003ddc <_vfprintf_r+0x1454>)
 8003ae8:	f8cb 1000 	str.w	r1, [fp]
 8003aec:	3201      	adds	r2, #1
 8003aee:	3401      	adds	r4, #1
 8003af0:	2101      	movs	r1, #1
 8003af2:	2a07      	cmp	r2, #7
 8003af4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003af8:	f8cb 1004 	str.w	r1, [fp, #4]
 8003afc:	dc60      	bgt.n	8003bc0 <_vfprintf_r+0x1238>
 8003afe:	f10b 0b08 	add.w	fp, fp, #8
 8003b02:	b92b      	cbnz	r3, 8003b10 <_vfprintf_r+0x1188>
 8003b04:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003b06:	b91a      	cbnz	r2, 8003b10 <_vfprintf_r+0x1188>
 8003b08:	f018 0f01 	tst.w	r8, #1
 8003b0c:	f43f a98d 	beq.w	8002e2a <_vfprintf_r+0x4a2>
 8003b10:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003b12:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003b14:	f8cb 1000 	str.w	r1, [fp]
 8003b18:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003b1a:	f8cb 1004 	str.w	r1, [fp, #4]
 8003b1e:	3201      	adds	r2, #1
 8003b20:	440c      	add	r4, r1
 8003b22:	2a07      	cmp	r2, #7
 8003b24:	942c      	str	r4, [sp, #176]	; 0xb0
 8003b26:	922b      	str	r2, [sp, #172]	; 0xac
 8003b28:	f300 8282 	bgt.w	8004030 <_vfprintf_r+0x16a8>
 8003b2c:	f10b 0b08 	add.w	fp, fp, #8
 8003b30:	2b00      	cmp	r3, #0
 8003b32:	f2c0 82e7 	blt.w	8004104 <_vfprintf_r+0x177c>
 8003b36:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b38:	3201      	adds	r2, #1
 8003b3a:	441c      	add	r4, r3
 8003b3c:	2a07      	cmp	r2, #7
 8003b3e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003b42:	e9cb 7300 	strd	r7, r3, [fp]
 8003b46:	f77f a96e 	ble.w	8002e26 <_vfprintf_r+0x49e>
 8003b4a:	e4fe      	b.n	800354a <_vfprintf_r+0xbc2>
 8003b4c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b4e:	9907      	ldr	r1, [sp, #28]
 8003b50:	9803      	ldr	r0, [sp, #12]
 8003b52:	f002 ff85 	bl	8006a60 <__sprint_r>
 8003b56:	2800      	cmp	r0, #0
 8003b58:	f47f ac8e 	bne.w	8003478 <_vfprintf_r+0xaf0>
 8003b5c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b60:	f7ff bbf0 	b.w	8003344 <_vfprintf_r+0x9bc>
 8003b64:	9a05      	ldr	r2, [sp, #20]
 8003b66:	601a      	str	r2, [r3, #0]
 8003b68:	4657      	mov	r7, sl
 8003b6a:	f7ff b9b3 	b.w	8002ed4 <_vfprintf_r+0x54c>
 8003b6e:	8814      	ldrh	r4, [r2, #0]
 8003b70:	9108      	str	r1, [sp, #32]
 8003b72:	2500      	movs	r5, #0
 8003b74:	2201      	movs	r2, #1
 8003b76:	f7ff b9c8 	b.w	8002f0a <_vfprintf_r+0x582>
 8003b7a:	8814      	ldrh	r4, [r2, #0]
 8003b7c:	9308      	str	r3, [sp, #32]
 8003b7e:	2500      	movs	r5, #0
 8003b80:	f7ff ba14 	b.w	8002fac <_vfprintf_r+0x624>
 8003b84:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003b88:	9208      	str	r2, [sp, #32]
 8003b8a:	17e5      	asrs	r5, r4, #31
 8003b8c:	4620      	mov	r0, r4
 8003b8e:	4629      	mov	r1, r5
 8003b90:	f7ff b855 	b.w	8002c3e <_vfprintf_r+0x2b6>
 8003b94:	8814      	ldrh	r4, [r2, #0]
 8003b96:	9308      	str	r3, [sp, #32]
 8003b98:	2500      	movs	r5, #0
 8003b9a:	f7ff b825 	b.w	8002be8 <_vfprintf_r+0x260>
 8003b9e:	222d      	movs	r2, #45	; 0x2d
 8003ba0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003ba4:	f7ff baa2 	b.w	80030ec <_vfprintf_r+0x764>
 8003ba8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003baa:	9907      	ldr	r1, [sp, #28]
 8003bac:	9803      	ldr	r0, [sp, #12]
 8003bae:	f002 ff57 	bl	8006a60 <__sprint_r>
 8003bb2:	2800      	cmp	r0, #0
 8003bb4:	f47f ac60 	bne.w	8003478 <_vfprintf_r+0xaf0>
 8003bb8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003bba:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003bbe:	e534      	b.n	800362a <_vfprintf_r+0xca2>
 8003bc0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bc2:	9907      	ldr	r1, [sp, #28]
 8003bc4:	9803      	ldr	r0, [sp, #12]
 8003bc6:	f002 ff4b 	bl	8006a60 <__sprint_r>
 8003bca:	2800      	cmp	r0, #0
 8003bcc:	f47f ac54 	bne.w	8003478 <_vfprintf_r+0xaf0>
 8003bd0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003bd2:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003bd4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003bd8:	e793      	b.n	8003b02 <_vfprintf_r+0x117a>
 8003bda:	2330      	movs	r3, #48	; 0x30
 8003bdc:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003be0:	2378      	movs	r3, #120	; 0x78
 8003be2:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003be6:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003bea:	f048 0402 	orr.w	r4, r8, #2
 8003bee:	f300 82b0 	bgt.w	8004152 <_vfprintf_r+0x17ca>
 8003bf2:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003bf6:	930e      	str	r3, [sp, #56]	; 0x38
 8003bf8:	f026 0320 	bic.w	r3, r6, #32
 8003bfc:	9304      	str	r3, [sp, #16]
 8003bfe:	2200      	movs	r2, #0
 8003c00:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003c02:	920a      	str	r2, [sp, #40]	; 0x28
 8003c04:	46a0      	mov	r8, r4
 8003c06:	af3d      	add	r7, sp, #244	; 0xf4
 8003c08:	2b00      	cmp	r3, #0
 8003c0a:	f2c0 81e3 	blt.w	8003fd4 <_vfprintf_r+0x164c>
 8003c0e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003c12:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003c16:	2300      	movs	r3, #0
 8003c18:	930b      	str	r3, [sp, #44]	; 0x2c
 8003c1a:	2e61      	cmp	r6, #97	; 0x61
 8003c1c:	f000 8255 	beq.w	80040ca <_vfprintf_r+0x1742>
 8003c20:	2e41      	cmp	r6, #65	; 0x41
 8003c22:	f47f aee3 	bne.w	80039ec <_vfprintf_r+0x1064>
 8003c26:	a824      	add	r0, sp, #144	; 0x90
 8003c28:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c2c:	f002 fe32 	bl	8006894 <frexp>
 8003c30:	2200      	movs	r2, #0
 8003c32:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003c36:	ec51 0b10 	vmov	r0, r1, d0
 8003c3a:	f7fc ff7d 	bl	8000b38 <__aeabi_dmul>
 8003c3e:	2200      	movs	r2, #0
 8003c40:	2300      	movs	r3, #0
 8003c42:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003c46:	f7fd f9df 	bl	8001008 <__aeabi_dcmpeq>
 8003c4a:	2800      	cmp	r0, #0
 8003c4c:	f040 8305 	bne.w	800425a <_vfprintf_r+0x18d2>
 8003c50:	4b63      	ldr	r3, [pc, #396]	; (8003de0 <_vfprintf_r+0x1458>)
 8003c52:	9309      	str	r3, [sp, #36]	; 0x24
 8003c54:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003c58:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003c5c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003c60:	9721      	str	r7, [sp, #132]	; 0x84
 8003c62:	46b9      	mov	r9, r7
 8003c64:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003c68:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003c6c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003c70:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003c74:	e003      	b.n	8003c7e <_vfprintf_r+0x12f6>
 8003c76:	f7fd f9c7 	bl	8001008 <__aeabi_dcmpeq>
 8003c7a:	bb20      	cbnz	r0, 8003cc6 <_vfprintf_r+0x133e>
 8003c7c:	46a9      	mov	r9, r5
 8003c7e:	2200      	movs	r2, #0
 8003c80:	4b58      	ldr	r3, [pc, #352]	; (8003de4 <_vfprintf_r+0x145c>)
 8003c82:	4630      	mov	r0, r6
 8003c84:	4639      	mov	r1, r7
 8003c86:	f7fc ff57 	bl	8000b38 <__aeabi_dmul>
 8003c8a:	460f      	mov	r7, r1
 8003c8c:	4606      	mov	r6, r0
 8003c8e:	f7fd fa03 	bl	8001098 <__aeabi_d2iz>
 8003c92:	4680      	mov	r8, r0
 8003c94:	f7fc fee6 	bl	8000a64 <__aeabi_i2d>
 8003c98:	4602      	mov	r2, r0
 8003c9a:	460b      	mov	r3, r1
 8003c9c:	4630      	mov	r0, r6
 8003c9e:	4639      	mov	r1, r7
 8003ca0:	f7fc fd92 	bl	80007c8 <__aeabi_dsub>
 8003ca4:	464d      	mov	r5, r9
 8003ca6:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003caa:	f805 cb01 	strb.w	ip, [r5], #1
 8003cae:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003cb2:	46a3      	mov	fp, r4
 8003cb4:	4606      	mov	r6, r0
 8003cb6:	460f      	mov	r7, r1
 8003cb8:	f04f 0200 	mov.w	r2, #0
 8003cbc:	f04f 0300 	mov.w	r3, #0
 8003cc0:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003cc4:	d1d7      	bne.n	8003c76 <_vfprintf_r+0x12ee>
 8003cc6:	4630      	mov	r0, r6
 8003cc8:	4639      	mov	r1, r7
 8003cca:	2200      	movs	r2, #0
 8003ccc:	4b46      	ldr	r3, [pc, #280]	; (8003de8 <_vfprintf_r+0x1460>)
 8003cce:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003cd2:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003cd4:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003cd8:	4644      	mov	r4, r8
 8003cda:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003cde:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003ce2:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003ce6:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003cea:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003cec:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003cf0:	f7fd f9b2 	bl	8001058 <__aeabi_dcmpgt>
 8003cf4:	2800      	cmp	r0, #0
 8003cf6:	f040 8176 	bne.w	8003fe6 <_vfprintf_r+0x165e>
 8003cfa:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003cfe:	2200      	movs	r2, #0
 8003d00:	4b39      	ldr	r3, [pc, #228]	; (8003de8 <_vfprintf_r+0x1460>)
 8003d02:	f7fd f981 	bl	8001008 <__aeabi_dcmpeq>
 8003d06:	b110      	cbz	r0, 8003d0e <_vfprintf_r+0x1386>
 8003d08:	07e2      	lsls	r2, r4, #31
 8003d0a:	f100 816c 	bmi.w	8003fe6 <_vfprintf_r+0x165e>
 8003d0e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003d10:	2b00      	cmp	r3, #0
 8003d12:	db07      	blt.n	8003d24 <_vfprintf_r+0x139c>
 8003d14:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003d16:	3301      	adds	r3, #1
 8003d18:	442b      	add	r3, r5
 8003d1a:	2230      	movs	r2, #48	; 0x30
 8003d1c:	f805 2b01 	strb.w	r2, [r5], #1
 8003d20:	42ab      	cmp	r3, r5
 8003d22:	d1fb      	bne.n	8003d1c <_vfprintf_r+0x1394>
 8003d24:	1beb      	subs	r3, r5, r7
 8003d26:	4640      	mov	r0, r8
 8003d28:	9310      	str	r3, [sp, #64]	; 0x40
 8003d2a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003d2e:	e683      	b.n	8003a38 <_vfprintf_r+0x10b0>
 8003d30:	f8cd 9010 	str.w	r9, [sp, #16]
 8003d34:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003d38:	9408      	str	r4, [sp, #32]
 8003d3a:	4681      	mov	r9, r0
 8003d3c:	900f      	str	r0, [sp, #60]	; 0x3c
 8003d3e:	9014      	str	r0, [sp, #80]	; 0x50
 8003d40:	9011      	str	r0, [sp, #68]	; 0x44
 8003d42:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003d46:	f7fe bfac 	b.w	8002ca2 <_vfprintf_r+0x31a>
 8003d4a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d4c:	9907      	ldr	r1, [sp, #28]
 8003d4e:	9803      	ldr	r0, [sp, #12]
 8003d50:	f002 fe86 	bl	8006a60 <__sprint_r>
 8003d54:	2800      	cmp	r0, #0
 8003d56:	f47f ab8f 	bne.w	8003478 <_vfprintf_r+0xaf0>
 8003d5a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003d5c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003d5e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d62:	e511      	b.n	8003788 <_vfprintf_r+0xe00>
 8003d64:	4252      	negs	r2, r2
 8003d66:	9206      	str	r2, [sp, #24]
 8003d68:	9308      	str	r3, [sp, #32]
 8003d6a:	f7ff b96d 	b.w	8003048 <_vfprintf_r+0x6c0>
 8003d6e:	4614      	mov	r4, r2
 8003d70:	4632      	mov	r2, r6
 8003d72:	461e      	mov	r6, r3
 8003d74:	4613      	mov	r3, r2
 8003d76:	462a      	mov	r2, r5
 8003d78:	3201      	adds	r2, #1
 8003d7a:	9209      	str	r2, [sp, #36]	; 0x24
 8003d7c:	f106 0208 	add.w	r2, r6, #8
 8003d80:	e9c6 3900 	strd	r3, r9, [r6]
 8003d84:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003d86:	932b      	str	r3, [sp, #172]	; 0xac
 8003d88:	444c      	add	r4, r9
 8003d8a:	2b07      	cmp	r3, #7
 8003d8c:	942c      	str	r4, [sp, #176]	; 0xb0
 8003d8e:	f73f acc3 	bgt.w	8003718 <_vfprintf_r+0xd90>
 8003d92:	3301      	adds	r3, #1
 8003d94:	9309      	str	r3, [sp, #36]	; 0x24
 8003d96:	f102 0b08 	add.w	fp, r2, #8
 8003d9a:	4616      	mov	r6, r2
 8003d9c:	f7ff bbca 	b.w	8003534 <_vfprintf_r+0xbac>
 8003da0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003da2:	9907      	ldr	r1, [sp, #28]
 8003da4:	9803      	ldr	r0, [sp, #12]
 8003da6:	f002 fe5b 	bl	8006a60 <__sprint_r>
 8003daa:	2800      	cmp	r0, #0
 8003dac:	f47f ab64 	bne.w	8003478 <_vfprintf_r+0xaf0>
 8003db0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003db2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003db6:	f7ff bade 	b.w	8003376 <_vfprintf_r+0x9ee>
 8003dba:	464b      	mov	r3, r9
 8003dbc:	2b06      	cmp	r3, #6
 8003dbe:	bf28      	it	cs
 8003dc0:	2306      	movcs	r3, #6
 8003dc2:	46b9      	mov	r9, r7
 8003dc4:	970f      	str	r7, [sp, #60]	; 0x3c
 8003dc6:	9714      	str	r7, [sp, #80]	; 0x50
 8003dc8:	9711      	str	r7, [sp, #68]	; 0x44
 8003dca:	970a      	str	r7, [sp, #40]	; 0x28
 8003dcc:	463a      	mov	r2, r7
 8003dce:	9304      	str	r3, [sp, #16]
 8003dd0:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003dd4:	4f05      	ldr	r7, [pc, #20]	; (8003dec <_vfprintf_r+0x1464>)
 8003dd6:	f7fe bf64 	b.w	8002ca2 <_vfprintf_r+0x31a>
 8003dda:	bf00      	nop
 8003ddc:	08007144 	.word	0x08007144
 8003de0:	08007128 	.word	0x08007128
 8003de4:	40300000 	.word	0x40300000
 8003de8:	3fe00000 	.word	0x3fe00000
 8003dec:	0800713c 	.word	0x0800713c
 8003df0:	460c      	mov	r4, r1
 8003df2:	4639      	mov	r1, r7
 8003df4:	465f      	mov	r7, fp
 8003df6:	469b      	mov	fp, r3
 8003df8:	460b      	mov	r3, r1
 8003dfa:	3201      	adds	r2, #1
 8003dfc:	442c      	add	r4, r5
 8003dfe:	2a07      	cmp	r2, #7
 8003e00:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003e04:	e9cb 3500 	strd	r3, r5, [fp]
 8003e08:	f73f aca5 	bgt.w	8003756 <_vfprintf_r+0xdce>
 8003e0c:	f10b 0b08 	add.w	fp, fp, #8
 8003e10:	e4ac      	b.n	800376c <_vfprintf_r+0xde4>
 8003e12:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e14:	1cda      	adds	r2, r3, #3
 8003e16:	db02      	blt.n	8003e1e <_vfprintf_r+0x1496>
 8003e18:	4599      	cmp	r9, r3
 8003e1a:	f280 80b5 	bge.w	8003f88 <_vfprintf_r+0x1600>
 8003e1e:	3e02      	subs	r6, #2
 8003e20:	f026 0320 	bic.w	r3, r6, #32
 8003e24:	9304      	str	r3, [sp, #16]
 8003e26:	e611      	b.n	8003a4c <_vfprintf_r+0x10c4>
 8003e28:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003e2a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003e2e:	465a      	mov	r2, fp
 8003e30:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003e34:	18fb      	adds	r3, r7, r3
 8003e36:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003e3a:	970c      	str	r7, [sp, #48]	; 0x30
 8003e3c:	4eaf      	ldr	r6, [pc, #700]	; (80040fc <_vfprintf_r+0x1774>)
 8003e3e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003e42:	9309      	str	r3, [sp, #36]	; 0x24
 8003e44:	464f      	mov	r7, r9
 8003e46:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003e4a:	4621      	mov	r1, r4
 8003e4c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003e4e:	2b00      	cmp	r3, #0
 8003e50:	d05b      	beq.n	8003f0a <_vfprintf_r+0x1582>
 8003e52:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003e54:	2b00      	cmp	r3, #0
 8003e56:	d154      	bne.n	8003f02 <_vfprintf_r+0x157a>
 8003e58:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003e5a:	3b01      	subs	r3, #1
 8003e5c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003e60:	9314      	str	r3, [sp, #80]	; 0x50
 8003e62:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003e64:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003e66:	6010      	str	r0, [r2, #0]
 8003e68:	3301      	adds	r3, #1
 8003e6a:	4459      	add	r1, fp
 8003e6c:	2b07      	cmp	r3, #7
 8003e6e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003e70:	f8c2 b004 	str.w	fp, [r2, #4]
 8003e74:	932b      	str	r3, [sp, #172]	; 0xac
 8003e76:	dc68      	bgt.n	8003f4a <_vfprintf_r+0x15c2>
 8003e78:	3208      	adds	r2, #8
 8003e7a:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003e7c:	f898 3000 	ldrb.w	r3, [r8]
 8003e80:	1bc5      	subs	r5, r0, r7
 8003e82:	429d      	cmp	r5, r3
 8003e84:	bfa8      	it	ge
 8003e86:	461d      	movge	r5, r3
 8003e88:	2d00      	cmp	r5, #0
 8003e8a:	dd0b      	ble.n	8003ea4 <_vfprintf_r+0x151c>
 8003e8c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003e8e:	6017      	str	r7, [r2, #0]
 8003e90:	3301      	adds	r3, #1
 8003e92:	4429      	add	r1, r5
 8003e94:	2b07      	cmp	r3, #7
 8003e96:	912c      	str	r1, [sp, #176]	; 0xb0
 8003e98:	6055      	str	r5, [r2, #4]
 8003e9a:	932b      	str	r3, [sp, #172]	; 0xac
 8003e9c:	dc5e      	bgt.n	8003f5c <_vfprintf_r+0x15d4>
 8003e9e:	f898 3000 	ldrb.w	r3, [r8]
 8003ea2:	3208      	adds	r2, #8
 8003ea4:	2d00      	cmp	r5, #0
 8003ea6:	bfac      	ite	ge
 8003ea8:	1b5d      	subge	r5, r3, r5
 8003eaa:	461d      	movlt	r5, r3
 8003eac:	2d00      	cmp	r5, #0
 8003eae:	dd26      	ble.n	8003efe <_vfprintf_r+0x1576>
 8003eb0:	2d10      	cmp	r5, #16
 8003eb2:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003eb4:	dd3c      	ble.n	8003f30 <_vfprintf_r+0x15a8>
 8003eb6:	2410      	movs	r4, #16
 8003eb8:	e003      	b.n	8003ec2 <_vfprintf_r+0x153a>
 8003eba:	3208      	adds	r2, #8
 8003ebc:	3d10      	subs	r5, #16
 8003ebe:	2d10      	cmp	r5, #16
 8003ec0:	dd36      	ble.n	8003f30 <_vfprintf_r+0x15a8>
 8003ec2:	3001      	adds	r0, #1
 8003ec4:	3110      	adds	r1, #16
 8003ec6:	2807      	cmp	r0, #7
 8003ec8:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003ecc:	e9c2 6400 	strd	r6, r4, [r2]
 8003ed0:	ddf3      	ble.n	8003eba <_vfprintf_r+0x1532>
 8003ed2:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ed4:	4651      	mov	r1, sl
 8003ed6:	4648      	mov	r0, r9
 8003ed8:	f002 fdc2 	bl	8006a60 <__sprint_r>
 8003edc:	2800      	cmp	r0, #0
 8003ede:	d150      	bne.n	8003f82 <_vfprintf_r+0x15fa>
 8003ee0:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003ee4:	aa2d      	add	r2, sp, #180	; 0xb4
 8003ee6:	e7e9      	b.n	8003ebc <_vfprintf_r+0x1534>
 8003ee8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003eea:	4651      	mov	r1, sl
 8003eec:	4648      	mov	r0, r9
 8003eee:	f002 fdb7 	bl	8006a60 <__sprint_r>
 8003ef2:	2800      	cmp	r0, #0
 8003ef4:	d145      	bne.n	8003f82 <_vfprintf_r+0x15fa>
 8003ef6:	f898 3000 	ldrb.w	r3, [r8]
 8003efa:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003efc:	aa2d      	add	r2, sp, #180	; 0xb4
 8003efe:	441f      	add	r7, r3
 8003f00:	e7a4      	b.n	8003e4c <_vfprintf_r+0x14c4>
 8003f02:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003f04:	3b01      	subs	r3, #1
 8003f06:	930f      	str	r3, [sp, #60]	; 0x3c
 8003f08:	e7ab      	b.n	8003e62 <_vfprintf_r+0x14da>
 8003f0a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003f0c:	2b00      	cmp	r3, #0
 8003f0e:	d1f8      	bne.n	8003f02 <_vfprintf_r+0x157a>
 8003f10:	46b9      	mov	r9, r7
 8003f12:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003f14:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003f16:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003f1a:	18fb      	adds	r3, r7, r3
 8003f1c:	4599      	cmp	r9, r3
 8003f1e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003f22:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003f26:	4693      	mov	fp, r2
 8003f28:	460c      	mov	r4, r1
 8003f2a:	bf28      	it	cs
 8003f2c:	4699      	movcs	r9, r3
 8003f2e:	e424      	b.n	800377a <_vfprintf_r+0xdf2>
 8003f30:	3001      	adds	r0, #1
 8003f32:	4429      	add	r1, r5
 8003f34:	2807      	cmp	r0, #7
 8003f36:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003f3a:	e9c2 6500 	strd	r6, r5, [r2]
 8003f3e:	dcd3      	bgt.n	8003ee8 <_vfprintf_r+0x1560>
 8003f40:	f898 3000 	ldrb.w	r3, [r8]
 8003f44:	3208      	adds	r2, #8
 8003f46:	441f      	add	r7, r3
 8003f48:	e780      	b.n	8003e4c <_vfprintf_r+0x14c4>
 8003f4a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f4c:	4651      	mov	r1, sl
 8003f4e:	4648      	mov	r0, r9
 8003f50:	f002 fd86 	bl	8006a60 <__sprint_r>
 8003f54:	b9a8      	cbnz	r0, 8003f82 <_vfprintf_r+0x15fa>
 8003f56:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003f58:	aa2d      	add	r2, sp, #180	; 0xb4
 8003f5a:	e78e      	b.n	8003e7a <_vfprintf_r+0x14f2>
 8003f5c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f5e:	4651      	mov	r1, sl
 8003f60:	4648      	mov	r0, r9
 8003f62:	f002 fd7d 	bl	8006a60 <__sprint_r>
 8003f66:	b960      	cbnz	r0, 8003f82 <_vfprintf_r+0x15fa>
 8003f68:	f898 3000 	ldrb.w	r3, [r8]
 8003f6c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003f6e:	aa2d      	add	r2, sp, #180	; 0xb4
 8003f70:	e798      	b.n	8003ea4 <_vfprintf_r+0x151c>
 8003f72:	4638      	mov	r0, r7
 8003f74:	f7fc fb64 	bl	8000640 <strlen>
 8003f78:	46a9      	mov	r9, r5
 8003f7a:	4603      	mov	r3, r0
 8003f7c:	9009      	str	r0, [sp, #36]	; 0x24
 8003f7e:	f7ff b8f4 	b.w	800316a <_vfprintf_r+0x7e2>
 8003f82:	46d1      	mov	r9, sl
 8003f84:	f7ff ba7a 	b.w	800347c <_vfprintf_r+0xaf4>
 8003f88:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003f8a:	4619      	mov	r1, r3
 8003f8c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003f8e:	4299      	cmp	r1, r3
 8003f90:	f300 8082 	bgt.w	8004098 <_vfprintf_r+0x1710>
 8003f94:	07c4      	lsls	r4, r0, #31
 8003f96:	f140 816b 	bpl.w	8004270 <_vfprintf_r+0x18e8>
 8003f9a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003f9c:	4413      	add	r3, r2
 8003f9e:	9309      	str	r3, [sp, #36]	; 0x24
 8003fa0:	0541      	lsls	r1, r0, #21
 8003fa2:	d503      	bpl.n	8003fac <_vfprintf_r+0x1624>
 8003fa4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003fa6:	2b00      	cmp	r3, #0
 8003fa8:	f300 80e6 	bgt.w	8004178 <_vfprintf_r+0x17f0>
 8003fac:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003fae:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003fb2:	9304      	str	r3, [sp, #16]
 8003fb4:	2667      	movs	r6, #103	; 0x67
 8003fb6:	2300      	movs	r3, #0
 8003fb8:	930f      	str	r3, [sp, #60]	; 0x3c
 8003fba:	9314      	str	r3, [sp, #80]	; 0x50
 8003fbc:	e586      	b.n	8003acc <_vfprintf_r+0x1144>
 8003fbe:	222d      	movs	r2, #45	; 0x2d
 8003fc0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003fc4:	f04f 0900 	mov.w	r9, #0
 8003fc8:	f7fe be6c 	b.w	8002ca4 <_vfprintf_r+0x31c>
 8003fcc:	46a1      	mov	r9, r4
 8003fce:	f7ff ba55 	b.w	800347c <_vfprintf_r+0xaf4>
 8003fd2:	900a      	str	r0, [sp, #40]	; 0x28
 8003fd4:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003fd8:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003fdc:	931f      	str	r3, [sp, #124]	; 0x7c
 8003fde:	232d      	movs	r3, #45	; 0x2d
 8003fe0:	911e      	str	r1, [sp, #120]	; 0x78
 8003fe2:	930b      	str	r3, [sp, #44]	; 0x2c
 8003fe4:	e619      	b.n	8003c1a <_vfprintf_r+0x1292>
 8003fe6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003fe8:	9328      	str	r3, [sp, #160]	; 0xa0
 8003fea:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003fec:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003ff0:	7bd9      	ldrb	r1, [r3, #15]
 8003ff2:	4291      	cmp	r1, r2
 8003ff4:	462b      	mov	r3, r5
 8003ff6:	d109      	bne.n	800400c <_vfprintf_r+0x1684>
 8003ff8:	2030      	movs	r0, #48	; 0x30
 8003ffa:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003ffe:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004000:	1e5a      	subs	r2, r3, #1
 8004002:	9228      	str	r2, [sp, #160]	; 0xa0
 8004004:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004008:	4291      	cmp	r1, r2
 800400a:	d0f6      	beq.n	8003ffa <_vfprintf_r+0x1672>
 800400c:	2a39      	cmp	r2, #57	; 0x39
 800400e:	bf0b      	itete	eq
 8004010:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8004012:	3201      	addne	r2, #1
 8004014:	7a92      	ldrbeq	r2, [r2, #10]
 8004016:	b2d2      	uxtbne	r2, r2
 8004018:	f803 2c01 	strb.w	r2, [r3, #-1]
 800401c:	e682      	b.n	8003d24 <_vfprintf_r+0x139c>
 800401e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8004022:	f43f ad9f 	beq.w	8003b64 <_vfprintf_r+0x11dc>
 8004026:	9a05      	ldr	r2, [sp, #20]
 8004028:	701a      	strb	r2, [r3, #0]
 800402a:	4657      	mov	r7, sl
 800402c:	f7fe bf52 	b.w	8002ed4 <_vfprintf_r+0x54c>
 8004030:	aa2a      	add	r2, sp, #168	; 0xa8
 8004032:	9907      	ldr	r1, [sp, #28]
 8004034:	9803      	ldr	r0, [sp, #12]
 8004036:	f002 fd13 	bl	8006a60 <__sprint_r>
 800403a:	2800      	cmp	r0, #0
 800403c:	f47f aa1c 	bne.w	8003478 <_vfprintf_r+0xaf0>
 8004040:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004042:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004046:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800404a:	e571      	b.n	8003b30 <_vfprintf_r+0x11a8>
 800404c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800404e:	2b00      	cmp	r3, #0
 8004050:	f340 8164 	ble.w	800431c <_vfprintf_r+0x1994>
 8004054:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004056:	f1b9 0f00 	cmp.w	r9, #0
 800405a:	f040 8103 	bne.w	8004264 <_vfprintf_r+0x18dc>
 800405e:	07c6      	lsls	r6, r0, #31
 8004060:	f100 8100 	bmi.w	8004264 <_vfprintf_r+0x18dc>
 8004064:	9309      	str	r3, [sp, #36]	; 0x24
 8004066:	2666      	movs	r6, #102	; 0x66
 8004068:	0543      	lsls	r3, r0, #21
 800406a:	f100 8086 	bmi.w	800417a <_vfprintf_r+0x17f2>
 800406e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004070:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004074:	9304      	str	r3, [sp, #16]
 8004076:	e79e      	b.n	8003fb6 <_vfprintf_r+0x162e>
 8004078:	aa2a      	add	r2, sp, #168	; 0xa8
 800407a:	9907      	ldr	r1, [sp, #28]
 800407c:	9803      	ldr	r0, [sp, #12]
 800407e:	f002 fcef 	bl	8006a60 <__sprint_r>
 8004082:	2800      	cmp	r0, #0
 8004084:	f47f a9f8 	bne.w	8003478 <_vfprintf_r+0xaf0>
 8004088:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800408a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800408c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800408e:	1ad3      	subs	r3, r2, r3
 8004090:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004094:	f7ff bb90 	b.w	80037b8 <_vfprintf_r+0xe30>
 8004098:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800409a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800409c:	4413      	add	r3, r2
 800409e:	9309      	str	r3, [sp, #36]	; 0x24
 80040a0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80040a2:	2b00      	cmp	r3, #0
 80040a4:	f340 8149 	ble.w	800433a <_vfprintf_r+0x19b2>
 80040a8:	2667      	movs	r6, #103	; 0x67
 80040aa:	e7dd      	b.n	8004068 <_vfprintf_r+0x16e0>
 80040ac:	2330      	movs	r3, #48	; 0x30
 80040ae:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80040b2:	2358      	movs	r3, #88	; 0x58
 80040b4:	e595      	b.n	8003be2 <_vfprintf_r+0x125a>
 80040b6:	9803      	ldr	r0, [sp, #12]
 80040b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80040ba:	4649      	mov	r1, r9
 80040bc:	f002 fcd0 	bl	8006a60 <__sprint_r>
 80040c0:	2800      	cmp	r0, #0
 80040c2:	f47f a9e0 	bne.w	8003486 <_vfprintf_r+0xafe>
 80040c6:	f7fe bf0f 	b.w	8002ee8 <_vfprintf_r+0x560>
 80040ca:	a824      	add	r0, sp, #144	; 0x90
 80040cc:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80040d0:	f002 fbe0 	bl	8006894 <frexp>
 80040d4:	2200      	movs	r2, #0
 80040d6:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80040da:	ec51 0b10 	vmov	r0, r1, d0
 80040de:	f7fc fd2b 	bl	8000b38 <__aeabi_dmul>
 80040e2:	2200      	movs	r2, #0
 80040e4:	2300      	movs	r3, #0
 80040e6:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80040ea:	f7fc ff8d 	bl	8001008 <__aeabi_dcmpeq>
 80040ee:	b108      	cbz	r0, 80040f4 <_vfprintf_r+0x176c>
 80040f0:	2301      	movs	r3, #1
 80040f2:	9324      	str	r3, [sp, #144]	; 0x90
 80040f4:	4b02      	ldr	r3, [pc, #8]	; (8004100 <_vfprintf_r+0x1778>)
 80040f6:	9309      	str	r3, [sp, #36]	; 0x24
 80040f8:	e5ac      	b.n	8003c54 <_vfprintf_r+0x12cc>
 80040fa:	bf00      	nop
 80040fc:	08007158 	.word	0x08007158
 8004100:	08007114 	.word	0x08007114
 8004104:	425d      	negs	r5, r3
 8004106:	3310      	adds	r3, #16
 8004108:	4bb9      	ldr	r3, [pc, #740]	; (80043f0 <_vfprintf_r+0x1a68>)
 800410a:	f280 8097 	bge.w	800423c <_vfprintf_r+0x18b4>
 800410e:	4619      	mov	r1, r3
 8004110:	2610      	movs	r6, #16
 8004112:	4623      	mov	r3, r4
 8004114:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8004118:	460c      	mov	r4, r1
 800411a:	e005      	b.n	8004128 <_vfprintf_r+0x17a0>
 800411c:	f10b 0b08 	add.w	fp, fp, #8
 8004120:	3d10      	subs	r5, #16
 8004122:	2d10      	cmp	r5, #16
 8004124:	f340 8087 	ble.w	8004236 <_vfprintf_r+0x18ae>
 8004128:	3201      	adds	r2, #1
 800412a:	3310      	adds	r3, #16
 800412c:	2a07      	cmp	r2, #7
 800412e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8004132:	e9cb 4600 	strd	r4, r6, [fp]
 8004136:	ddf1      	ble.n	800411c <_vfprintf_r+0x1794>
 8004138:	aa2a      	add	r2, sp, #168	; 0xa8
 800413a:	9907      	ldr	r1, [sp, #28]
 800413c:	4648      	mov	r0, r9
 800413e:	f002 fc8f 	bl	8006a60 <__sprint_r>
 8004142:	2800      	cmp	r0, #0
 8004144:	f47f a998 	bne.w	8003478 <_vfprintf_r+0xaf0>
 8004148:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 800414c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004150:	e7e6      	b.n	8004120 <_vfprintf_r+0x1798>
 8004152:	f109 0101 	add.w	r1, r9, #1
 8004156:	9803      	ldr	r0, [sp, #12]
 8004158:	f7fe f89e 	bl	8002298 <_malloc_r>
 800415c:	4607      	mov	r7, r0
 800415e:	2800      	cmp	r0, #0
 8004160:	f000 813b 	beq.w	80043da <_vfprintf_r+0x1a52>
 8004164:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004168:	930e      	str	r3, [sp, #56]	; 0x38
 800416a:	f026 0320 	bic.w	r3, r6, #32
 800416e:	9304      	str	r3, [sp, #16]
 8004170:	46a0      	mov	r8, r4
 8004172:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004174:	900a      	str	r0, [sp, #40]	; 0x28
 8004176:	e547      	b.n	8003c08 <_vfprintf_r+0x1280>
 8004178:	2667      	movs	r6, #103	; 0x67
 800417a:	981a      	ldr	r0, [sp, #104]	; 0x68
 800417c:	2200      	movs	r2, #0
 800417e:	920f      	str	r2, [sp, #60]	; 0x3c
 8004180:	9214      	str	r2, [sp, #80]	; 0x50
 8004182:	7803      	ldrb	r3, [r0, #0]
 8004184:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8004186:	2bff      	cmp	r3, #255	; 0xff
 8004188:	d00c      	beq.n	80041a4 <_vfprintf_r+0x181c>
 800418a:	4293      	cmp	r3, r2
 800418c:	da0a      	bge.n	80041a4 <_vfprintf_r+0x181c>
 800418e:	7841      	ldrb	r1, [r0, #1]
 8004190:	1ad2      	subs	r2, r2, r3
 8004192:	b1a9      	cbz	r1, 80041c0 <_vfprintf_r+0x1838>
 8004194:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004196:	3301      	adds	r3, #1
 8004198:	9314      	str	r3, [sp, #80]	; 0x50
 800419a:	460b      	mov	r3, r1
 800419c:	2bff      	cmp	r3, #255	; 0xff
 800419e:	f100 0001 	add.w	r0, r0, #1
 80041a2:	d1f2      	bne.n	800418a <_vfprintf_r+0x1802>
 80041a4:	9211      	str	r2, [sp, #68]	; 0x44
 80041a6:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80041a8:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80041aa:	9909      	ldr	r1, [sp, #36]	; 0x24
 80041ac:	901a      	str	r0, [sp, #104]	; 0x68
 80041ae:	4413      	add	r3, r2
 80041b0:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 80041b2:	fb02 1303 	mla	r3, r2, r3, r1
 80041b6:	9309      	str	r3, [sp, #36]	; 0x24
 80041b8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80041bc:	9304      	str	r3, [sp, #16]
 80041be:	e485      	b.n	8003acc <_vfprintf_r+0x1144>
 80041c0:	990f      	ldr	r1, [sp, #60]	; 0x3c
 80041c2:	3101      	adds	r1, #1
 80041c4:	910f      	str	r1, [sp, #60]	; 0x3c
 80041c6:	e7de      	b.n	8004186 <_vfprintf_r+0x17fe>
 80041c8:	aa28      	add	r2, sp, #160	; 0xa0
 80041ca:	ab25      	add	r3, sp, #148	; 0x94
 80041cc:	e9cd 3200 	strd	r3, r2, [sp]
 80041d0:	2103      	movs	r1, #3
 80041d2:	ab24      	add	r3, sp, #144	; 0x90
 80041d4:	464a      	mov	r2, r9
 80041d6:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80041da:	9803      	ldr	r0, [sp, #12]
 80041dc:	f000 fa5c 	bl	8004698 <_dtoa_r>
 80041e0:	464d      	mov	r5, r9
 80041e2:	4607      	mov	r7, r0
 80041e4:	eb00 0409 	add.w	r4, r0, r9
 80041e8:	783b      	ldrb	r3, [r7, #0]
 80041ea:	2b30      	cmp	r3, #48	; 0x30
 80041ec:	f000 80be 	beq.w	800436c <_vfprintf_r+0x19e4>
 80041f0:	9d24      	ldr	r5, [sp, #144]	; 0x90
 80041f2:	442c      	add	r4, r5
 80041f4:	2200      	movs	r2, #0
 80041f6:	2300      	movs	r3, #0
 80041f8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80041fc:	f7fc ff04 	bl	8001008 <__aeabi_dcmpeq>
 8004200:	b108      	cbz	r0, 8004206 <_vfprintf_r+0x187e>
 8004202:	4623      	mov	r3, r4
 8004204:	e413      	b.n	8003a2e <_vfprintf_r+0x10a6>
 8004206:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004208:	42a3      	cmp	r3, r4
 800420a:	f4bf ac10 	bcs.w	8003a2e <_vfprintf_r+0x10a6>
 800420e:	2130      	movs	r1, #48	; 0x30
 8004210:	1c5a      	adds	r2, r3, #1
 8004212:	9228      	str	r2, [sp, #160]	; 0xa0
 8004214:	7019      	strb	r1, [r3, #0]
 8004216:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004218:	429c      	cmp	r4, r3
 800421a:	d8f9      	bhi.n	8004210 <_vfprintf_r+0x1888>
 800421c:	e407      	b.n	8003a2e <_vfprintf_r+0x10a6>
 800421e:	197c      	adds	r4, r7, r5
 8004220:	e7e8      	b.n	80041f4 <_vfprintf_r+0x186c>
 8004222:	f1b9 0f00 	cmp.w	r9, #0
 8004226:	f000 8092 	beq.w	800434e <_vfprintf_r+0x19c6>
 800422a:	900a      	str	r0, [sp, #40]	; 0x28
 800422c:	e4ec      	b.n	8003c08 <_vfprintf_r+0x1280>
 800422e:	900a      	str	r0, [sp, #40]	; 0x28
 8004230:	f04f 0906 	mov.w	r9, #6
 8004234:	e4e8      	b.n	8003c08 <_vfprintf_r+0x1280>
 8004236:	4621      	mov	r1, r4
 8004238:	461c      	mov	r4, r3
 800423a:	460b      	mov	r3, r1
 800423c:	3201      	adds	r2, #1
 800423e:	442c      	add	r4, r5
 8004240:	2a07      	cmp	r2, #7
 8004242:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004246:	e9cb 3500 	strd	r3, r5, [fp]
 800424a:	f300 80a9 	bgt.w	80043a0 <_vfprintf_r+0x1a18>
 800424e:	f10b 0b08 	add.w	fp, fp, #8
 8004252:	e470      	b.n	8003b36 <_vfprintf_r+0x11ae>
 8004254:	469a      	mov	sl, r3
 8004256:	f7ff bb37 	b.w	80038c8 <_vfprintf_r+0xf40>
 800425a:	2301      	movs	r3, #1
 800425c:	9324      	str	r3, [sp, #144]	; 0x90
 800425e:	4b65      	ldr	r3, [pc, #404]	; (80043f4 <_vfprintf_r+0x1a6c>)
 8004260:	9309      	str	r3, [sp, #36]	; 0x24
 8004262:	e4f7      	b.n	8003c54 <_vfprintf_r+0x12cc>
 8004264:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004266:	4413      	add	r3, r2
 8004268:	444b      	add	r3, r9
 800426a:	9309      	str	r3, [sp, #36]	; 0x24
 800426c:	2666      	movs	r6, #102	; 0x66
 800426e:	e6fb      	b.n	8004068 <_vfprintf_r+0x16e0>
 8004270:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004272:	9309      	str	r3, [sp, #36]	; 0x24
 8004274:	e694      	b.n	8003fa0 <_vfprintf_r+0x1618>
 8004276:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 800427a:	4664      	mov	r4, ip
 800427c:	4d5e      	ldr	r5, [pc, #376]	; (80043f8 <_vfprintf_r+0x1a70>)
 800427e:	e000      	b.n	8004282 <_vfprintf_r+0x18fa>
 8004280:	4614      	mov	r4, r2
 8004282:	fba5 1203 	umull	r1, r2, r5, r3
 8004286:	08d2      	lsrs	r2, r2, #3
 8004288:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800428c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004290:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004294:	4613      	mov	r3, r2
 8004296:	2b09      	cmp	r3, #9
 8004298:	f804 1c01 	strb.w	r1, [r4, #-1]
 800429c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80042a0:	dcee      	bgt.n	8004280 <_vfprintf_r+0x18f8>
 80042a2:	3330      	adds	r3, #48	; 0x30
 80042a4:	3c02      	subs	r4, #2
 80042a6:	b2db      	uxtb	r3, r3
 80042a8:	45a4      	cmp	ip, r4
 80042aa:	f802 3c01 	strb.w	r3, [r2, #-1]
 80042ae:	f240 8090 	bls.w	80043d2 <_vfprintf_r+0x1a4a>
 80042b2:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 80042b6:	4611      	mov	r1, r2
 80042b8:	e001      	b.n	80042be <_vfprintf_r+0x1936>
 80042ba:	f811 3b01 	ldrb.w	r3, [r1], #1
 80042be:	f804 3b01 	strb.w	r3, [r4], #1
 80042c2:	458c      	cmp	ip, r1
 80042c4:	d1f9      	bne.n	80042ba <_vfprintf_r+0x1932>
 80042c6:	ab2a      	add	r3, sp, #168	; 0xa8
 80042c8:	1a9b      	subs	r3, r3, r2
 80042ca:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80042ce:	4413      	add	r3, r2
 80042d0:	f7ff bbe3 	b.w	8003a9a <_vfprintf_r+0x1112>
 80042d4:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80042d6:	4f49      	ldr	r7, [pc, #292]	; (80043fc <_vfprintf_r+0x1a74>)
 80042d8:	2b00      	cmp	r3, #0
 80042da:	bfb6      	itet	lt
 80042dc:	222d      	movlt	r2, #45	; 0x2d
 80042de:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80042e2:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80042e6:	4b46      	ldr	r3, [pc, #280]	; (8004400 <_vfprintf_r+0x1a78>)
 80042e8:	f7fe bf02 	b.w	80030f0 <_vfprintf_r+0x768>
 80042ec:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80042f0:	f7ff b8c9 	b.w	8003486 <_vfprintf_r+0xafe>
 80042f4:	aa28      	add	r2, sp, #160	; 0xa0
 80042f6:	ab25      	add	r3, sp, #148	; 0x94
 80042f8:	e9cd 3200 	strd	r3, r2, [sp]
 80042fc:	2103      	movs	r1, #3
 80042fe:	ab24      	add	r3, sp, #144	; 0x90
 8004300:	464a      	mov	r2, r9
 8004302:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004306:	9803      	ldr	r0, [sp, #12]
 8004308:	f000 f9c6 	bl	8004698 <_dtoa_r>
 800430c:	464d      	mov	r5, r9
 800430e:	4607      	mov	r7, r0
 8004310:	2e46      	cmp	r6, #70	; 0x46
 8004312:	eb07 0405 	add.w	r4, r7, r5
 8004316:	f43f af67 	beq.w	80041e8 <_vfprintf_r+0x1860>
 800431a:	e76b      	b.n	80041f4 <_vfprintf_r+0x186c>
 800431c:	f1b9 0f00 	cmp.w	r9, #0
 8004320:	d131      	bne.n	8004386 <_vfprintf_r+0x19fe>
 8004322:	07c5      	lsls	r5, r0, #31
 8004324:	d42f      	bmi.n	8004386 <_vfprintf_r+0x19fe>
 8004326:	2301      	movs	r3, #1
 8004328:	9304      	str	r3, [sp, #16]
 800432a:	9309      	str	r3, [sp, #36]	; 0x24
 800432c:	2666      	movs	r6, #102	; 0x66
 800432e:	e642      	b.n	8003fb6 <_vfprintf_r+0x162e>
 8004330:	07c3      	lsls	r3, r0, #31
 8004332:	f57f abbf 	bpl.w	8003ab4 <_vfprintf_r+0x112c>
 8004336:	f7ff bbb9 	b.w	8003aac <_vfprintf_r+0x1124>
 800433a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800433c:	f1c3 0301 	rsb	r3, r3, #1
 8004340:	441a      	add	r2, r3
 8004342:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8004346:	9209      	str	r2, [sp, #36]	; 0x24
 8004348:	9304      	str	r3, [sp, #16]
 800434a:	2667      	movs	r6, #103	; 0x67
 800434c:	e633      	b.n	8003fb6 <_vfprintf_r+0x162e>
 800434e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8004352:	f04f 0901 	mov.w	r9, #1
 8004356:	e457      	b.n	8003c08 <_vfprintf_r+0x1280>
 8004358:	465a      	mov	r2, fp
 800435a:	e511      	b.n	8003d80 <_vfprintf_r+0x13f8>
 800435c:	2e47      	cmp	r6, #71	; 0x47
 800435e:	f47f af5e 	bne.w	800421e <_vfprintf_r+0x1896>
 8004362:	f018 0f01 	tst.w	r8, #1
 8004366:	f43f ab61 	beq.w	8003a2c <_vfprintf_r+0x10a4>
 800436a:	e7d1      	b.n	8004310 <_vfprintf_r+0x1988>
 800436c:	2200      	movs	r2, #0
 800436e:	2300      	movs	r3, #0
 8004370:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004374:	f7fc fe48 	bl	8001008 <__aeabi_dcmpeq>
 8004378:	2800      	cmp	r0, #0
 800437a:	f47f af39 	bne.w	80041f0 <_vfprintf_r+0x1868>
 800437e:	f1c5 0501 	rsb	r5, r5, #1
 8004382:	9524      	str	r5, [sp, #144]	; 0x90
 8004384:	e735      	b.n	80041f2 <_vfprintf_r+0x186a>
 8004386:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004388:	3301      	adds	r3, #1
 800438a:	444b      	add	r3, r9
 800438c:	9309      	str	r3, [sp, #36]	; 0x24
 800438e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004392:	9304      	str	r3, [sp, #16]
 8004394:	2666      	movs	r6, #102	; 0x66
 8004396:	e60e      	b.n	8003fb6 <_vfprintf_r+0x162e>
 8004398:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800439c:	f7ff bb7a 	b.w	8003a94 <_vfprintf_r+0x110c>
 80043a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80043a2:	9907      	ldr	r1, [sp, #28]
 80043a4:	9803      	ldr	r0, [sp, #12]
 80043a6:	f002 fb5b 	bl	8006a60 <__sprint_r>
 80043aa:	2800      	cmp	r0, #0
 80043ac:	f47f a864 	bne.w	8003478 <_vfprintf_r+0xaf0>
 80043b0:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80043b4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80043b8:	f7ff bbbd 	b.w	8003b36 <_vfprintf_r+0x11ae>
 80043bc:	9908      	ldr	r1, [sp, #32]
 80043be:	f89a 6001 	ldrb.w	r6, [sl, #1]
 80043c2:	680b      	ldr	r3, [r1, #0]
 80043c4:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 80043c8:	1d0b      	adds	r3, r1, #4
 80043ca:	4692      	mov	sl, r2
 80043cc:	9308      	str	r3, [sp, #32]
 80043ce:	f7fe bb59 	b.w	8002a84 <_vfprintf_r+0xfc>
 80043d2:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 80043d6:	f7ff bb60 	b.w	8003a9a <_vfprintf_r+0x1112>
 80043da:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80043de:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80043e2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80043e6:	f8a9 300c 	strh.w	r3, [r9, #12]
 80043ea:	f7ff b84c 	b.w	8003486 <_vfprintf_r+0xafe>
 80043ee:	bf00      	nop
 80043f0:	08007158 	.word	0x08007158
 80043f4:	08007128 	.word	0x08007128
 80043f8:	cccccccd 	.word	0xcccccccd
 80043fc:	08007110 	.word	0x08007110
 8004400:	0800710c 	.word	0x0800710c

08004404 <__sbprintf>:
 8004404:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004408:	460c      	mov	r4, r1
 800440a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800440e:	8989      	ldrh	r1, [r1, #12]
 8004410:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8004412:	89e5      	ldrh	r5, [r4, #14]
 8004414:	9619      	str	r6, [sp, #100]	; 0x64
 8004416:	f021 0102 	bic.w	r1, r1, #2
 800441a:	4606      	mov	r6, r0
 800441c:	69e0      	ldr	r0, [r4, #28]
 800441e:	f8ad 100c 	strh.w	r1, [sp, #12]
 8004422:	4617      	mov	r7, r2
 8004424:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004428:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800442a:	f8ad 500e 	strh.w	r5, [sp, #14]
 800442e:	4698      	mov	r8, r3
 8004430:	ad1a      	add	r5, sp, #104	; 0x68
 8004432:	2300      	movs	r3, #0
 8004434:	9007      	str	r0, [sp, #28]
 8004436:	a816      	add	r0, sp, #88	; 0x58
 8004438:	9209      	str	r2, [sp, #36]	; 0x24
 800443a:	9306      	str	r3, [sp, #24]
 800443c:	9500      	str	r5, [sp, #0]
 800443e:	9504      	str	r5, [sp, #16]
 8004440:	9102      	str	r1, [sp, #8]
 8004442:	9105      	str	r1, [sp, #20]
 8004444:	f001 fc8a 	bl	8005d5c <__retarget_lock_init_recursive>
 8004448:	4643      	mov	r3, r8
 800444a:	463a      	mov	r2, r7
 800444c:	4669      	mov	r1, sp
 800444e:	4630      	mov	r0, r6
 8004450:	f7fe fa9a 	bl	8002988 <_vfprintf_r>
 8004454:	1e05      	subs	r5, r0, #0
 8004456:	db07      	blt.n	8004468 <__sbprintf+0x64>
 8004458:	4630      	mov	r0, r6
 800445a:	4669      	mov	r1, sp
 800445c:	f001 f8d6 	bl	800560c <_fflush_r>
 8004460:	2800      	cmp	r0, #0
 8004462:	bf18      	it	ne
 8004464:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004468:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 800446c:	065b      	lsls	r3, r3, #25
 800446e:	d503      	bpl.n	8004478 <__sbprintf+0x74>
 8004470:	89a3      	ldrh	r3, [r4, #12]
 8004472:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004476:	81a3      	strh	r3, [r4, #12]
 8004478:	9816      	ldr	r0, [sp, #88]	; 0x58
 800447a:	f001 fc71 	bl	8005d60 <__retarget_lock_close_recursive>
 800447e:	4628      	mov	r0, r5
 8004480:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004484:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004488 <__swsetup_r>:
 8004488:	b538      	push	{r3, r4, r5, lr}
 800448a:	4b31      	ldr	r3, [pc, #196]	; (8004550 <__swsetup_r+0xc8>)
 800448c:	681b      	ldr	r3, [r3, #0]
 800448e:	4605      	mov	r5, r0
 8004490:	460c      	mov	r4, r1
 8004492:	b113      	cbz	r3, 800449a <__swsetup_r+0x12>
 8004494:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004496:	2a00      	cmp	r2, #0
 8004498:	d03a      	beq.n	8004510 <__swsetup_r+0x88>
 800449a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800449e:	b293      	uxth	r3, r2
 80044a0:	0718      	lsls	r0, r3, #28
 80044a2:	d50c      	bpl.n	80044be <__swsetup_r+0x36>
 80044a4:	6920      	ldr	r0, [r4, #16]
 80044a6:	b1a8      	cbz	r0, 80044d4 <__swsetup_r+0x4c>
 80044a8:	f013 0201 	ands.w	r2, r3, #1
 80044ac:	d020      	beq.n	80044f0 <__swsetup_r+0x68>
 80044ae:	6963      	ldr	r3, [r4, #20]
 80044b0:	2200      	movs	r2, #0
 80044b2:	425b      	negs	r3, r3
 80044b4:	61a3      	str	r3, [r4, #24]
 80044b6:	60a2      	str	r2, [r4, #8]
 80044b8:	b300      	cbz	r0, 80044fc <__swsetup_r+0x74>
 80044ba:	2000      	movs	r0, #0
 80044bc:	bd38      	pop	{r3, r4, r5, pc}
 80044be:	06d9      	lsls	r1, r3, #27
 80044c0:	d53e      	bpl.n	8004540 <__swsetup_r+0xb8>
 80044c2:	0758      	lsls	r0, r3, #29
 80044c4:	d428      	bmi.n	8004518 <__swsetup_r+0x90>
 80044c6:	6920      	ldr	r0, [r4, #16]
 80044c8:	f042 0308 	orr.w	r3, r2, #8
 80044cc:	81a3      	strh	r3, [r4, #12]
 80044ce:	b29b      	uxth	r3, r3
 80044d0:	2800      	cmp	r0, #0
 80044d2:	d1e9      	bne.n	80044a8 <__swsetup_r+0x20>
 80044d4:	f403 7220 	and.w	r2, r3, #640	; 0x280
 80044d8:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 80044dc:	d0e4      	beq.n	80044a8 <__swsetup_r+0x20>
 80044de:	4628      	mov	r0, r5
 80044e0:	4621      	mov	r1, r4
 80044e2:	f001 fc71 	bl	8005dc8 <__smakebuf_r>
 80044e6:	89a3      	ldrh	r3, [r4, #12]
 80044e8:	6920      	ldr	r0, [r4, #16]
 80044ea:	f013 0201 	ands.w	r2, r3, #1
 80044ee:	d1de      	bne.n	80044ae <__swsetup_r+0x26>
 80044f0:	0799      	lsls	r1, r3, #30
 80044f2:	bf58      	it	pl
 80044f4:	6962      	ldrpl	r2, [r4, #20]
 80044f6:	60a2      	str	r2, [r4, #8]
 80044f8:	2800      	cmp	r0, #0
 80044fa:	d1de      	bne.n	80044ba <__swsetup_r+0x32>
 80044fc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004500:	061a      	lsls	r2, r3, #24
 8004502:	d5db      	bpl.n	80044bc <__swsetup_r+0x34>
 8004504:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004508:	81a3      	strh	r3, [r4, #12]
 800450a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800450e:	bd38      	pop	{r3, r4, r5, pc}
 8004510:	4618      	mov	r0, r3
 8004512:	f001 f8d7 	bl	80056c4 <__sinit>
 8004516:	e7c0      	b.n	800449a <__swsetup_r+0x12>
 8004518:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800451a:	b151      	cbz	r1, 8004532 <__swsetup_r+0xaa>
 800451c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004520:	4299      	cmp	r1, r3
 8004522:	d004      	beq.n	800452e <__swsetup_r+0xa6>
 8004524:	4628      	mov	r0, r5
 8004526:	f001 f96f 	bl	8005808 <_free_r>
 800452a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800452e:	2300      	movs	r3, #0
 8004530:	6323      	str	r3, [r4, #48]	; 0x30
 8004532:	2300      	movs	r3, #0
 8004534:	6920      	ldr	r0, [r4, #16]
 8004536:	6063      	str	r3, [r4, #4]
 8004538:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 800453c:	6020      	str	r0, [r4, #0]
 800453e:	e7c3      	b.n	80044c8 <__swsetup_r+0x40>
 8004540:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004544:	2309      	movs	r3, #9
 8004546:	602b      	str	r3, [r5, #0]
 8004548:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800454c:	81a2      	strh	r2, [r4, #12]
 800454e:	bd38      	pop	{r3, r4, r5, pc}
 8004550:	200001a8 	.word	0x200001a8

08004554 <register_fini>:
 8004554:	4b02      	ldr	r3, [pc, #8]	; (8004560 <register_fini+0xc>)
 8004556:	b113      	cbz	r3, 800455e <register_fini+0xa>
 8004558:	4802      	ldr	r0, [pc, #8]	; (8004564 <register_fini+0x10>)
 800455a:	f000 b805 	b.w	8004568 <atexit>
 800455e:	4770      	bx	lr
 8004560:	00000000 	.word	0x00000000
 8004564:	08005735 	.word	0x08005735

08004568 <atexit>:
 8004568:	2300      	movs	r3, #0
 800456a:	4601      	mov	r1, r0
 800456c:	461a      	mov	r2, r3
 800456e:	4618      	mov	r0, r3
 8004570:	f002 ba96 	b.w	8006aa0 <__register_exitproc>

08004574 <quorem>:
 8004574:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004578:	6903      	ldr	r3, [r0, #16]
 800457a:	690f      	ldr	r7, [r1, #16]
 800457c:	42bb      	cmp	r3, r7
 800457e:	b083      	sub	sp, #12
 8004580:	f2c0 8086 	blt.w	8004690 <quorem+0x11c>
 8004584:	3f01      	subs	r7, #1
 8004586:	f101 0914 	add.w	r9, r1, #20
 800458a:	f100 0a14 	add.w	sl, r0, #20
 800458e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004592:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004596:	00bc      	lsls	r4, r7, #2
 8004598:	3201      	adds	r2, #1
 800459a:	fbb3 f8f2 	udiv	r8, r3, r2
 800459e:	eb0a 0304 	add.w	r3, sl, r4
 80045a2:	9400      	str	r4, [sp, #0]
 80045a4:	eb09 0b04 	add.w	fp, r9, r4
 80045a8:	9301      	str	r3, [sp, #4]
 80045aa:	f1b8 0f00 	cmp.w	r8, #0
 80045ae:	d038      	beq.n	8004622 <quorem+0xae>
 80045b0:	2500      	movs	r5, #0
 80045b2:	462e      	mov	r6, r5
 80045b4:	46ce      	mov	lr, r9
 80045b6:	46d4      	mov	ip, sl
 80045b8:	f85e 4b04 	ldr.w	r4, [lr], #4
 80045bc:	f8dc 3000 	ldr.w	r3, [ip]
 80045c0:	b2a2      	uxth	r2, r4
 80045c2:	fb08 5502 	mla	r5, r8, r2, r5
 80045c6:	0c22      	lsrs	r2, r4, #16
 80045c8:	0c2c      	lsrs	r4, r5, #16
 80045ca:	fb08 4202 	mla	r2, r8, r2, r4
 80045ce:	b2ad      	uxth	r5, r5
 80045d0:	1b75      	subs	r5, r6, r5
 80045d2:	b296      	uxth	r6, r2
 80045d4:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80045d8:	fa15 f383 	uxtah	r3, r5, r3
 80045dc:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80045e0:	b29b      	uxth	r3, r3
 80045e2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80045e6:	45f3      	cmp	fp, lr
 80045e8:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80045ec:	f84c 3b04 	str.w	r3, [ip], #4
 80045f0:	ea4f 4626 	mov.w	r6, r6, asr #16
 80045f4:	d2e0      	bcs.n	80045b8 <quorem+0x44>
 80045f6:	9b00      	ldr	r3, [sp, #0]
 80045f8:	f85a 3003 	ldr.w	r3, [sl, r3]
 80045fc:	b98b      	cbnz	r3, 8004622 <quorem+0xae>
 80045fe:	9a01      	ldr	r2, [sp, #4]
 8004600:	1f13      	subs	r3, r2, #4
 8004602:	459a      	cmp	sl, r3
 8004604:	d20c      	bcs.n	8004620 <quorem+0xac>
 8004606:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800460a:	b94b      	cbnz	r3, 8004620 <quorem+0xac>
 800460c:	f1a2 0308 	sub.w	r3, r2, #8
 8004610:	e002      	b.n	8004618 <quorem+0xa4>
 8004612:	681a      	ldr	r2, [r3, #0]
 8004614:	3b04      	subs	r3, #4
 8004616:	b91a      	cbnz	r2, 8004620 <quorem+0xac>
 8004618:	459a      	cmp	sl, r3
 800461a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800461e:	d3f8      	bcc.n	8004612 <quorem+0x9e>
 8004620:	6107      	str	r7, [r0, #16]
 8004622:	4604      	mov	r4, r0
 8004624:	f001 fe94 	bl	8006350 <__mcmp>
 8004628:	2800      	cmp	r0, #0
 800462a:	db2d      	blt.n	8004688 <quorem+0x114>
 800462c:	f108 0801 	add.w	r8, r8, #1
 8004630:	4655      	mov	r5, sl
 8004632:	2300      	movs	r3, #0
 8004634:	f859 1b04 	ldr.w	r1, [r9], #4
 8004638:	6828      	ldr	r0, [r5, #0]
 800463a:	b28a      	uxth	r2, r1
 800463c:	1a9a      	subs	r2, r3, r2
 800463e:	0c0b      	lsrs	r3, r1, #16
 8004640:	fa12 f280 	uxtah	r2, r2, r0
 8004644:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004648:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800464c:	b292      	uxth	r2, r2
 800464e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004652:	45cb      	cmp	fp, r9
 8004654:	f845 2b04 	str.w	r2, [r5], #4
 8004658:	ea4f 4323 	mov.w	r3, r3, asr #16
 800465c:	d2ea      	bcs.n	8004634 <quorem+0xc0>
 800465e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004662:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004666:	b97a      	cbnz	r2, 8004688 <quorem+0x114>
 8004668:	1f1a      	subs	r2, r3, #4
 800466a:	4592      	cmp	sl, r2
 800466c:	d20b      	bcs.n	8004686 <quorem+0x112>
 800466e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004672:	b942      	cbnz	r2, 8004686 <quorem+0x112>
 8004674:	3b08      	subs	r3, #8
 8004676:	e002      	b.n	800467e <quorem+0x10a>
 8004678:	681a      	ldr	r2, [r3, #0]
 800467a:	3b04      	subs	r3, #4
 800467c:	b91a      	cbnz	r2, 8004686 <quorem+0x112>
 800467e:	459a      	cmp	sl, r3
 8004680:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004684:	d3f8      	bcc.n	8004678 <quorem+0x104>
 8004686:	6127      	str	r7, [r4, #16]
 8004688:	4640      	mov	r0, r8
 800468a:	b003      	add	sp, #12
 800468c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004690:	2000      	movs	r0, #0
 8004692:	b003      	add	sp, #12
 8004694:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004698 <_dtoa_r>:
 8004698:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800469c:	ec55 4b10 	vmov	r4, r5, d0
 80046a0:	b09b      	sub	sp, #108	; 0x6c
 80046a2:	6c06      	ldr	r6, [r0, #64]	; 0x40
 80046a4:	9102      	str	r1, [sp, #8]
 80046a6:	4681      	mov	r9, r0
 80046a8:	9207      	str	r2, [sp, #28]
 80046aa:	9305      	str	r3, [sp, #20]
 80046ac:	e9cd 4500 	strd	r4, r5, [sp]
 80046b0:	b156      	cbz	r6, 80046c8 <_dtoa_r+0x30>
 80046b2:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80046b4:	6072      	str	r2, [r6, #4]
 80046b6:	2301      	movs	r3, #1
 80046b8:	4093      	lsls	r3, r2
 80046ba:	60b3      	str	r3, [r6, #8]
 80046bc:	4631      	mov	r1, r6
 80046be:	f001 fc57 	bl	8005f70 <_Bfree>
 80046c2:	2300      	movs	r3, #0
 80046c4:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80046c8:	f1b5 0800 	subs.w	r8, r5, #0
 80046cc:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80046ce:	bfb4      	ite	lt
 80046d0:	2301      	movlt	r3, #1
 80046d2:	2300      	movge	r3, #0
 80046d4:	6013      	str	r3, [r2, #0]
 80046d6:	4b76      	ldr	r3, [pc, #472]	; (80048b0 <_dtoa_r+0x218>)
 80046d8:	bfbc      	itt	lt
 80046da:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80046de:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80046e2:	ea33 0308 	bics.w	r3, r3, r8
 80046e6:	f000 80a6 	beq.w	8004836 <_dtoa_r+0x19e>
 80046ea:	e9dd 6700 	ldrd	r6, r7, [sp]
 80046ee:	2200      	movs	r2, #0
 80046f0:	2300      	movs	r3, #0
 80046f2:	4630      	mov	r0, r6
 80046f4:	4639      	mov	r1, r7
 80046f6:	f7fc fc87 	bl	8001008 <__aeabi_dcmpeq>
 80046fa:	4605      	mov	r5, r0
 80046fc:	b178      	cbz	r0, 800471e <_dtoa_r+0x86>
 80046fe:	9a05      	ldr	r2, [sp, #20]
 8004700:	2301      	movs	r3, #1
 8004702:	6013      	str	r3, [r2, #0]
 8004704:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004706:	2b00      	cmp	r3, #0
 8004708:	f000 80c0 	beq.w	800488c <_dtoa_r+0x1f4>
 800470c:	4b69      	ldr	r3, [pc, #420]	; (80048b4 <_dtoa_r+0x21c>)
 800470e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004710:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004714:	6013      	str	r3, [r2, #0]
 8004716:	4658      	mov	r0, fp
 8004718:	b01b      	add	sp, #108	; 0x6c
 800471a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800471e:	aa18      	add	r2, sp, #96	; 0x60
 8004720:	a919      	add	r1, sp, #100	; 0x64
 8004722:	ec47 6b10 	vmov	d0, r6, r7
 8004726:	4648      	mov	r0, r9
 8004728:	f001 fea4 	bl	8006474 <__d2b>
 800472c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004730:	4682      	mov	sl, r0
 8004732:	f040 80a0 	bne.w	8004876 <_dtoa_r+0x1de>
 8004736:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800473a:	442c      	add	r4, r5
 800473c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004740:	2b20      	cmp	r3, #32
 8004742:	f340 842c 	ble.w	8004f9e <_dtoa_r+0x906>
 8004746:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800474a:	fa08 f803 	lsl.w	r8, r8, r3
 800474e:	9b00      	ldr	r3, [sp, #0]
 8004750:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004754:	fa23 f000 	lsr.w	r0, r3, r0
 8004758:	ea48 0000 	orr.w	r0, r8, r0
 800475c:	f7fc f972 	bl	8000a44 <__aeabi_ui2d>
 8004760:	2301      	movs	r3, #1
 8004762:	4606      	mov	r6, r0
 8004764:	3c01      	subs	r4, #1
 8004766:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800476a:	930f      	str	r3, [sp, #60]	; 0x3c
 800476c:	4630      	mov	r0, r6
 800476e:	4639      	mov	r1, r7
 8004770:	2200      	movs	r2, #0
 8004772:	4b51      	ldr	r3, [pc, #324]	; (80048b8 <_dtoa_r+0x220>)
 8004774:	f7fc f828 	bl	80007c8 <__aeabi_dsub>
 8004778:	a347      	add	r3, pc, #284	; (adr r3, 8004898 <_dtoa_r+0x200>)
 800477a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800477e:	f7fc f9db 	bl	8000b38 <__aeabi_dmul>
 8004782:	a347      	add	r3, pc, #284	; (adr r3, 80048a0 <_dtoa_r+0x208>)
 8004784:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004788:	f7fc f820 	bl	80007cc <__adddf3>
 800478c:	4606      	mov	r6, r0
 800478e:	4620      	mov	r0, r4
 8004790:	460f      	mov	r7, r1
 8004792:	f7fc f967 	bl	8000a64 <__aeabi_i2d>
 8004796:	a344      	add	r3, pc, #272	; (adr r3, 80048a8 <_dtoa_r+0x210>)
 8004798:	e9d3 2300 	ldrd	r2, r3, [r3]
 800479c:	f7fc f9cc 	bl	8000b38 <__aeabi_dmul>
 80047a0:	4602      	mov	r2, r0
 80047a2:	460b      	mov	r3, r1
 80047a4:	4630      	mov	r0, r6
 80047a6:	4639      	mov	r1, r7
 80047a8:	f7fc f810 	bl	80007cc <__adddf3>
 80047ac:	4606      	mov	r6, r0
 80047ae:	460f      	mov	r7, r1
 80047b0:	f7fc fc72 	bl	8001098 <__aeabi_d2iz>
 80047b4:	2200      	movs	r2, #0
 80047b6:	9006      	str	r0, [sp, #24]
 80047b8:	2300      	movs	r3, #0
 80047ba:	4630      	mov	r0, r6
 80047bc:	4639      	mov	r1, r7
 80047be:	f7fc fc2d 	bl	800101c <__aeabi_dcmplt>
 80047c2:	2800      	cmp	r0, #0
 80047c4:	f040 8273 	bne.w	8004cae <_dtoa_r+0x616>
 80047c8:	9e06      	ldr	r6, [sp, #24]
 80047ca:	2e16      	cmp	r6, #22
 80047cc:	f200 825d 	bhi.w	8004c8a <_dtoa_r+0x5f2>
 80047d0:	4b3a      	ldr	r3, [pc, #232]	; (80048bc <_dtoa_r+0x224>)
 80047d2:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80047d6:	e9d3 0100 	ldrd	r0, r1, [r3]
 80047da:	e9dd 2300 	ldrd	r2, r3, [sp]
 80047de:	f7fc fc3b 	bl	8001058 <__aeabi_dcmpgt>
 80047e2:	2800      	cmp	r0, #0
 80047e4:	f000 83d7 	beq.w	8004f96 <_dtoa_r+0x8fe>
 80047e8:	1e73      	subs	r3, r6, #1
 80047ea:	9306      	str	r3, [sp, #24]
 80047ec:	2300      	movs	r3, #0
 80047ee:	930d      	str	r3, [sp, #52]	; 0x34
 80047f0:	1b2c      	subs	r4, r5, r4
 80047f2:	f1b4 0801 	subs.w	r8, r4, #1
 80047f6:	f100 8254 	bmi.w	8004ca2 <_dtoa_r+0x60a>
 80047fa:	2300      	movs	r3, #0
 80047fc:	9308      	str	r3, [sp, #32]
 80047fe:	9b06      	ldr	r3, [sp, #24]
 8004800:	2b00      	cmp	r3, #0
 8004802:	f2c0 8245 	blt.w	8004c90 <_dtoa_r+0x5f8>
 8004806:	4498      	add	r8, r3
 8004808:	930c      	str	r3, [sp, #48]	; 0x30
 800480a:	2300      	movs	r3, #0
 800480c:	930b      	str	r3, [sp, #44]	; 0x2c
 800480e:	9b02      	ldr	r3, [sp, #8]
 8004810:	2b09      	cmp	r3, #9
 8004812:	d85b      	bhi.n	80048cc <_dtoa_r+0x234>
 8004814:	2b05      	cmp	r3, #5
 8004816:	f340 83c0 	ble.w	8004f9a <_dtoa_r+0x902>
 800481a:	3b04      	subs	r3, #4
 800481c:	9302      	str	r3, [sp, #8]
 800481e:	2500      	movs	r5, #0
 8004820:	9b02      	ldr	r3, [sp, #8]
 8004822:	3b02      	subs	r3, #2
 8004824:	2b03      	cmp	r3, #3
 8004826:	f200 8498 	bhi.w	800515a <_dtoa_r+0xac2>
 800482a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800482e:	03df      	.short	0x03df
 8004830:	03e803bf 	.word	0x03e803bf
 8004834:	04f5      	.short	0x04f5
 8004836:	9a05      	ldr	r2, [sp, #20]
 8004838:	f242 730f 	movw	r3, #9999	; 0x270f
 800483c:	6013      	str	r3, [r2, #0]
 800483e:	9b00      	ldr	r3, [sp, #0]
 8004840:	b983      	cbnz	r3, 8004864 <_dtoa_r+0x1cc>
 8004842:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004846:	b96b      	cbnz	r3, 8004864 <_dtoa_r+0x1cc>
 8004848:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800484a:	f8df b074 	ldr.w	fp, [pc, #116]	; 80048c0 <_dtoa_r+0x228>
 800484e:	2b00      	cmp	r3, #0
 8004850:	f43f af61 	beq.w	8004716 <_dtoa_r+0x7e>
 8004854:	f10b 0308 	add.w	r3, fp, #8
 8004858:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800485a:	4658      	mov	r0, fp
 800485c:	6013      	str	r3, [r2, #0]
 800485e:	b01b      	add	sp, #108	; 0x6c
 8004860:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004864:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004866:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80048c4 <_dtoa_r+0x22c>
 800486a:	2b00      	cmp	r3, #0
 800486c:	f43f af53 	beq.w	8004716 <_dtoa_r+0x7e>
 8004870:	f10b 0303 	add.w	r3, fp, #3
 8004874:	e7f0      	b.n	8004858 <_dtoa_r+0x1c0>
 8004876:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800487a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800487e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004880:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004884:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004888:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800488a:	e76f      	b.n	800476c <_dtoa_r+0xd4>
 800488c:	f8df b038 	ldr.w	fp, [pc, #56]	; 80048c8 <_dtoa_r+0x230>
 8004890:	4658      	mov	r0, fp
 8004892:	b01b      	add	sp, #108	; 0x6c
 8004894:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004898:	636f4361 	.word	0x636f4361
 800489c:	3fd287a7 	.word	0x3fd287a7
 80048a0:	8b60c8b3 	.word	0x8b60c8b3
 80048a4:	3fc68a28 	.word	0x3fc68a28
 80048a8:	509f79fb 	.word	0x509f79fb
 80048ac:	3fd34413 	.word	0x3fd34413
 80048b0:	7ff00000 	.word	0x7ff00000
 80048b4:	08007145 	.word	0x08007145
 80048b8:	3ff80000 	.word	0x3ff80000
 80048bc:	080071a0 	.word	0x080071a0
 80048c0:	08007168 	.word	0x08007168
 80048c4:	08007174 	.word	0x08007174
 80048c8:	08007144 	.word	0x08007144
 80048cc:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80048d0:	2501      	movs	r5, #1
 80048d2:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80048d6:	2300      	movs	r3, #0
 80048d8:	9302      	str	r3, [sp, #8]
 80048da:	9307      	str	r3, [sp, #28]
 80048dc:	2100      	movs	r1, #0
 80048de:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80048e2:	940e      	str	r4, [sp, #56]	; 0x38
 80048e4:	4648      	mov	r0, r9
 80048e6:	f001 fb1d 	bl	8005f24 <_Balloc>
 80048ea:	2c0e      	cmp	r4, #14
 80048ec:	4683      	mov	fp, r0
 80048ee:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80048f2:	f200 80fb 	bhi.w	8004aec <_dtoa_r+0x454>
 80048f6:	2d00      	cmp	r5, #0
 80048f8:	f000 80f8 	beq.w	8004aec <_dtoa_r+0x454>
 80048fc:	ed9d 7b00 	vldr	d7, [sp]
 8004900:	9906      	ldr	r1, [sp, #24]
 8004902:	2900      	cmp	r1, #0
 8004904:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004908:	f340 83e5 	ble.w	80050d6 <_dtoa_r+0xa3e>
 800490c:	4b9d      	ldr	r3, [pc, #628]	; (8004b84 <_dtoa_r+0x4ec>)
 800490e:	f001 020f 	and.w	r2, r1, #15
 8004912:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004916:	ed93 7b00 	vldr	d7, [r3]
 800491a:	110c      	asrs	r4, r1, #4
 800491c:	06e2      	lsls	r2, r4, #27
 800491e:	ed8d 7b00 	vstr	d7, [sp]
 8004922:	f140 849e 	bpl.w	8005262 <_dtoa_r+0xbca>
 8004926:	4b98      	ldr	r3, [pc, #608]	; (8004b88 <_dtoa_r+0x4f0>)
 8004928:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800492c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004930:	f7fc fa2c 	bl	8000d8c <__aeabi_ddiv>
 8004934:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004938:	f004 040f 	and.w	r4, r4, #15
 800493c:	2603      	movs	r6, #3
 800493e:	b17c      	cbz	r4, 8004960 <_dtoa_r+0x2c8>
 8004940:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004944:	4d90      	ldr	r5, [pc, #576]	; (8004b88 <_dtoa_r+0x4f0>)
 8004946:	07e3      	lsls	r3, r4, #31
 8004948:	d504      	bpl.n	8004954 <_dtoa_r+0x2bc>
 800494a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800494e:	f7fc f8f3 	bl	8000b38 <__aeabi_dmul>
 8004952:	3601      	adds	r6, #1
 8004954:	1064      	asrs	r4, r4, #1
 8004956:	f105 0508 	add.w	r5, r5, #8
 800495a:	d1f4      	bne.n	8004946 <_dtoa_r+0x2ae>
 800495c:	e9cd 0100 	strd	r0, r1, [sp]
 8004960:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004964:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004968:	f7fc fa10 	bl	8000d8c <__aeabi_ddiv>
 800496c:	e9cd 0100 	strd	r0, r1, [sp]
 8004970:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004972:	b143      	cbz	r3, 8004986 <_dtoa_r+0x2ee>
 8004974:	2200      	movs	r2, #0
 8004976:	4b85      	ldr	r3, [pc, #532]	; (8004b8c <_dtoa_r+0x4f4>)
 8004978:	e9dd 0100 	ldrd	r0, r1, [sp]
 800497c:	f7fc fb4e 	bl	800101c <__aeabi_dcmplt>
 8004980:	2800      	cmp	r0, #0
 8004982:	f040 84ff 	bne.w	8005384 <_dtoa_r+0xcec>
 8004986:	4630      	mov	r0, r6
 8004988:	f7fc f86c 	bl	8000a64 <__aeabi_i2d>
 800498c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004990:	f7fc f8d2 	bl	8000b38 <__aeabi_dmul>
 8004994:	4b7e      	ldr	r3, [pc, #504]	; (8004b90 <_dtoa_r+0x4f8>)
 8004996:	2200      	movs	r2, #0
 8004998:	f7fb ff18 	bl	80007cc <__adddf3>
 800499c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800499e:	4606      	mov	r6, r0
 80049a0:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80049a4:	2b00      	cmp	r3, #0
 80049a6:	f000 841c 	beq.w	80051e2 <_dtoa_r+0xb4a>
 80049aa:	9b06      	ldr	r3, [sp, #24]
 80049ac:	9316      	str	r3, [sp, #88]	; 0x58
 80049ae:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80049b0:	9312      	str	r3, [sp, #72]	; 0x48
 80049b2:	e9dd 0100 	ldrd	r0, r1, [sp]
 80049b6:	f7fc fb6f 	bl	8001098 <__aeabi_d2iz>
 80049ba:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80049bc:	4b71      	ldr	r3, [pc, #452]	; (8004b84 <_dtoa_r+0x4ec>)
 80049be:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80049c2:	ed13 7b02 	vldr	d7, [r3, #-8]
 80049c6:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80049ca:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80049ce:	f7fc f849 	bl	8000a64 <__aeabi_i2d>
 80049d2:	460b      	mov	r3, r1
 80049d4:	4602      	mov	r2, r0
 80049d6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80049da:	e9cd 6700 	strd	r6, r7, [sp]
 80049de:	f7fb fef3 	bl	80007c8 <__aeabi_dsub>
 80049e2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80049e4:	b2ed      	uxtb	r5, r5
 80049e6:	4606      	mov	r6, r0
 80049e8:	460f      	mov	r7, r1
 80049ea:	f10b 0401 	add.w	r4, fp, #1
 80049ee:	2b00      	cmp	r3, #0
 80049f0:	f000 8458 	beq.w	80052a4 <_dtoa_r+0xc0c>
 80049f4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80049f8:	2000      	movs	r0, #0
 80049fa:	4966      	ldr	r1, [pc, #408]	; (8004b94 <_dtoa_r+0x4fc>)
 80049fc:	f7fc f9c6 	bl	8000d8c <__aeabi_ddiv>
 8004a00:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004a04:	f7fb fee0 	bl	80007c8 <__aeabi_dsub>
 8004a08:	f88b 5000 	strb.w	r5, [fp]
 8004a0c:	4632      	mov	r2, r6
 8004a0e:	463b      	mov	r3, r7
 8004a10:	e9cd 0100 	strd	r0, r1, [sp]
 8004a14:	f7fc fb20 	bl	8001058 <__aeabi_dcmpgt>
 8004a18:	2800      	cmp	r0, #0
 8004a1a:	f040 8502 	bne.w	8005422 <_dtoa_r+0xd8a>
 8004a1e:	4632      	mov	r2, r6
 8004a20:	463b      	mov	r3, r7
 8004a22:	2000      	movs	r0, #0
 8004a24:	4959      	ldr	r1, [pc, #356]	; (8004b8c <_dtoa_r+0x4f4>)
 8004a26:	f7fb fecf 	bl	80007c8 <__aeabi_dsub>
 8004a2a:	4602      	mov	r2, r0
 8004a2c:	460b      	mov	r3, r1
 8004a2e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004a32:	f7fc fb11 	bl	8001058 <__aeabi_dcmpgt>
 8004a36:	2800      	cmp	r0, #0
 8004a38:	f040 84fb 	bne.w	8005432 <_dtoa_r+0xd9a>
 8004a3c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004a3e:	2a01      	cmp	r2, #1
 8004a40:	d050      	beq.n	8004ae4 <_dtoa_r+0x44c>
 8004a42:	445a      	add	r2, fp
 8004a44:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004a48:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004a4c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004a50:	4692      	mov	sl, r2
 8004a52:	46cb      	mov	fp, r9
 8004a54:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004a58:	e00c      	b.n	8004a74 <_dtoa_r+0x3dc>
 8004a5a:	2000      	movs	r0, #0
 8004a5c:	494b      	ldr	r1, [pc, #300]	; (8004b8c <_dtoa_r+0x4f4>)
 8004a5e:	f7fb feb3 	bl	80007c8 <__aeabi_dsub>
 8004a62:	4642      	mov	r2, r8
 8004a64:	464b      	mov	r3, r9
 8004a66:	f7fc fad9 	bl	800101c <__aeabi_dcmplt>
 8004a6a:	2800      	cmp	r0, #0
 8004a6c:	f040 84dc 	bne.w	8005428 <_dtoa_r+0xd90>
 8004a70:	4554      	cmp	r4, sl
 8004a72:	d030      	beq.n	8004ad6 <_dtoa_r+0x43e>
 8004a74:	4640      	mov	r0, r8
 8004a76:	4649      	mov	r1, r9
 8004a78:	2200      	movs	r2, #0
 8004a7a:	4b47      	ldr	r3, [pc, #284]	; (8004b98 <_dtoa_r+0x500>)
 8004a7c:	f7fc f85c 	bl	8000b38 <__aeabi_dmul>
 8004a80:	2200      	movs	r2, #0
 8004a82:	4b45      	ldr	r3, [pc, #276]	; (8004b98 <_dtoa_r+0x500>)
 8004a84:	4680      	mov	r8, r0
 8004a86:	4689      	mov	r9, r1
 8004a88:	4630      	mov	r0, r6
 8004a8a:	4639      	mov	r1, r7
 8004a8c:	f7fc f854 	bl	8000b38 <__aeabi_dmul>
 8004a90:	460f      	mov	r7, r1
 8004a92:	4606      	mov	r6, r0
 8004a94:	f7fc fb00 	bl	8001098 <__aeabi_d2iz>
 8004a98:	4605      	mov	r5, r0
 8004a9a:	f7fb ffe3 	bl	8000a64 <__aeabi_i2d>
 8004a9e:	4602      	mov	r2, r0
 8004aa0:	460b      	mov	r3, r1
 8004aa2:	4630      	mov	r0, r6
 8004aa4:	4639      	mov	r1, r7
 8004aa6:	f7fb fe8f 	bl	80007c8 <__aeabi_dsub>
 8004aaa:	3530      	adds	r5, #48	; 0x30
 8004aac:	b2ed      	uxtb	r5, r5
 8004aae:	4642      	mov	r2, r8
 8004ab0:	464b      	mov	r3, r9
 8004ab2:	f804 5b01 	strb.w	r5, [r4], #1
 8004ab6:	4606      	mov	r6, r0
 8004ab8:	460f      	mov	r7, r1
 8004aba:	f7fc faaf 	bl	800101c <__aeabi_dcmplt>
 8004abe:	4632      	mov	r2, r6
 8004ac0:	463b      	mov	r3, r7
 8004ac2:	2800      	cmp	r0, #0
 8004ac4:	d0c9      	beq.n	8004a5a <_dtoa_r+0x3c2>
 8004ac6:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004ac8:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004acc:	9306      	str	r3, [sp, #24]
 8004ace:	46d9      	mov	r9, fp
 8004ad0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004ad4:	e236      	b.n	8004f44 <_dtoa_r+0x8ac>
 8004ad6:	46d9      	mov	r9, fp
 8004ad8:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004adc:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004ae0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004ae4:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004ae8:	e9cd 3400 	strd	r3, r4, [sp]
 8004aec:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004aee:	2b00      	cmp	r3, #0
 8004af0:	f2c0 80ae 	blt.w	8004c50 <_dtoa_r+0x5b8>
 8004af4:	9a06      	ldr	r2, [sp, #24]
 8004af6:	2a0e      	cmp	r2, #14
 8004af8:	f300 80aa 	bgt.w	8004c50 <_dtoa_r+0x5b8>
 8004afc:	4b21      	ldr	r3, [pc, #132]	; (8004b84 <_dtoa_r+0x4ec>)
 8004afe:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004b02:	ed93 7b00 	vldr	d7, [r3]
 8004b06:	9b07      	ldr	r3, [sp, #28]
 8004b08:	2b00      	cmp	r3, #0
 8004b0a:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004b0e:	f2c0 82be 	blt.w	800508e <_dtoa_r+0x9f6>
 8004b12:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004b16:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004b1a:	4630      	mov	r0, r6
 8004b1c:	4639      	mov	r1, r7
 8004b1e:	f7fc f935 	bl	8000d8c <__aeabi_ddiv>
 8004b22:	f7fc fab9 	bl	8001098 <__aeabi_d2iz>
 8004b26:	4605      	mov	r5, r0
 8004b28:	f7fb ff9c 	bl	8000a64 <__aeabi_i2d>
 8004b2c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004b30:	f7fc f802 	bl	8000b38 <__aeabi_dmul>
 8004b34:	460b      	mov	r3, r1
 8004b36:	4602      	mov	r2, r0
 8004b38:	4639      	mov	r1, r7
 8004b3a:	4630      	mov	r0, r6
 8004b3c:	f7fb fe44 	bl	80007c8 <__aeabi_dsub>
 8004b40:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004b44:	f88b 3000 	strb.w	r3, [fp]
 8004b48:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b4a:	2b01      	cmp	r3, #1
 8004b4c:	4606      	mov	r6, r0
 8004b4e:	460f      	mov	r7, r1
 8004b50:	f10b 0401 	add.w	r4, fp, #1
 8004b54:	d053      	beq.n	8004bfe <_dtoa_r+0x566>
 8004b56:	2200      	movs	r2, #0
 8004b58:	4b0f      	ldr	r3, [pc, #60]	; (8004b98 <_dtoa_r+0x500>)
 8004b5a:	f7fb ffed 	bl	8000b38 <__aeabi_dmul>
 8004b5e:	2200      	movs	r2, #0
 8004b60:	2300      	movs	r3, #0
 8004b62:	4606      	mov	r6, r0
 8004b64:	460f      	mov	r7, r1
 8004b66:	f7fc fa4f 	bl	8001008 <__aeabi_dcmpeq>
 8004b6a:	2800      	cmp	r0, #0
 8004b6c:	f040 81ea 	bne.w	8004f44 <_dtoa_r+0x8ac>
 8004b70:	f8cd a000 	str.w	sl, [sp]
 8004b74:	f8cd 901c 	str.w	r9, [sp, #28]
 8004b78:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004b7c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004b80:	e017      	b.n	8004bb2 <_dtoa_r+0x51a>
 8004b82:	bf00      	nop
 8004b84:	080071a0 	.word	0x080071a0
 8004b88:	08007178 	.word	0x08007178
 8004b8c:	3ff00000 	.word	0x3ff00000
 8004b90:	401c0000 	.word	0x401c0000
 8004b94:	3fe00000 	.word	0x3fe00000
 8004b98:	40240000 	.word	0x40240000
 8004b9c:	f7fb ffcc 	bl	8000b38 <__aeabi_dmul>
 8004ba0:	2200      	movs	r2, #0
 8004ba2:	2300      	movs	r3, #0
 8004ba4:	4606      	mov	r6, r0
 8004ba6:	460f      	mov	r7, r1
 8004ba8:	f7fc fa2e 	bl	8001008 <__aeabi_dcmpeq>
 8004bac:	2800      	cmp	r0, #0
 8004bae:	f040 833d 	bne.w	800522c <_dtoa_r+0xb94>
 8004bb2:	464a      	mov	r2, r9
 8004bb4:	4653      	mov	r3, sl
 8004bb6:	4630      	mov	r0, r6
 8004bb8:	4639      	mov	r1, r7
 8004bba:	f7fc f8e7 	bl	8000d8c <__aeabi_ddiv>
 8004bbe:	f7fc fa6b 	bl	8001098 <__aeabi_d2iz>
 8004bc2:	4605      	mov	r5, r0
 8004bc4:	f7fb ff4e 	bl	8000a64 <__aeabi_i2d>
 8004bc8:	464a      	mov	r2, r9
 8004bca:	4653      	mov	r3, sl
 8004bcc:	f7fb ffb4 	bl	8000b38 <__aeabi_dmul>
 8004bd0:	4602      	mov	r2, r0
 8004bd2:	460b      	mov	r3, r1
 8004bd4:	4630      	mov	r0, r6
 8004bd6:	4639      	mov	r1, r7
 8004bd8:	f7fb fdf6 	bl	80007c8 <__aeabi_dsub>
 8004bdc:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004be0:	f804 cb01 	strb.w	ip, [r4], #1
 8004be4:	eba4 0c0b 	sub.w	ip, r4, fp
 8004be8:	45e0      	cmp	r8, ip
 8004bea:	4606      	mov	r6, r0
 8004bec:	460f      	mov	r7, r1
 8004bee:	f04f 0200 	mov.w	r2, #0
 8004bf2:	4bc1      	ldr	r3, [pc, #772]	; (8004ef8 <_dtoa_r+0x860>)
 8004bf4:	d1d2      	bne.n	8004b9c <_dtoa_r+0x504>
 8004bf6:	f8dd a000 	ldr.w	sl, [sp]
 8004bfa:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004bfe:	4632      	mov	r2, r6
 8004c00:	463b      	mov	r3, r7
 8004c02:	4630      	mov	r0, r6
 8004c04:	4639      	mov	r1, r7
 8004c06:	f7fb fde1 	bl	80007cc <__adddf3>
 8004c0a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004c0e:	4606      	mov	r6, r0
 8004c10:	460f      	mov	r7, r1
 8004c12:	f7fc fa21 	bl	8001058 <__aeabi_dcmpgt>
 8004c16:	b958      	cbnz	r0, 8004c30 <_dtoa_r+0x598>
 8004c18:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004c1c:	4630      	mov	r0, r6
 8004c1e:	4639      	mov	r1, r7
 8004c20:	f7fc f9f2 	bl	8001008 <__aeabi_dcmpeq>
 8004c24:	2800      	cmp	r0, #0
 8004c26:	f000 818d 	beq.w	8004f44 <_dtoa_r+0x8ac>
 8004c2a:	07e9      	lsls	r1, r5, #31
 8004c2c:	f140 818a 	bpl.w	8004f44 <_dtoa_r+0x8ac>
 8004c30:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004c34:	e005      	b.n	8004c42 <_dtoa_r+0x5aa>
 8004c36:	459b      	cmp	fp, r3
 8004c38:	f000 8373 	beq.w	8005322 <_dtoa_r+0xc8a>
 8004c3c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004c40:	461c      	mov	r4, r3
 8004c42:	2d39      	cmp	r5, #57	; 0x39
 8004c44:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004c48:	d0f5      	beq.n	8004c36 <_dtoa_r+0x59e>
 8004c4a:	3501      	adds	r5, #1
 8004c4c:	701d      	strb	r5, [r3, #0]
 8004c4e:	e179      	b.n	8004f44 <_dtoa_r+0x8ac>
 8004c50:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004c52:	2a00      	cmp	r2, #0
 8004c54:	d03b      	beq.n	8004cce <_dtoa_r+0x636>
 8004c56:	9a02      	ldr	r2, [sp, #8]
 8004c58:	2a01      	cmp	r2, #1
 8004c5a:	f340 820b 	ble.w	8005074 <_dtoa_r+0x9dc>
 8004c5e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c60:	1e5f      	subs	r7, r3, #1
 8004c62:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004c64:	42bb      	cmp	r3, r7
 8004c66:	f2c0 82e6 	blt.w	8005236 <_dtoa_r+0xb9e>
 8004c6a:	1bdf      	subs	r7, r3, r7
 8004c6c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c6e:	2b00      	cmp	r3, #0
 8004c70:	f2c0 830b 	blt.w	800528a <_dtoa_r+0xbf2>
 8004c74:	9a08      	ldr	r2, [sp, #32]
 8004c76:	4614      	mov	r4, r2
 8004c78:	441a      	add	r2, r3
 8004c7a:	4498      	add	r8, r3
 8004c7c:	9208      	str	r2, [sp, #32]
 8004c7e:	2101      	movs	r1, #1
 8004c80:	4648      	mov	r0, r9
 8004c82:	f001 fa0f 	bl	80060a4 <__i2b>
 8004c86:	4605      	mov	r5, r0
 8004c88:	e024      	b.n	8004cd4 <_dtoa_r+0x63c>
 8004c8a:	2301      	movs	r3, #1
 8004c8c:	930d      	str	r3, [sp, #52]	; 0x34
 8004c8e:	e5af      	b.n	80047f0 <_dtoa_r+0x158>
 8004c90:	9a08      	ldr	r2, [sp, #32]
 8004c92:	9b06      	ldr	r3, [sp, #24]
 8004c94:	1ad2      	subs	r2, r2, r3
 8004c96:	425b      	negs	r3, r3
 8004c98:	930b      	str	r3, [sp, #44]	; 0x2c
 8004c9a:	2300      	movs	r3, #0
 8004c9c:	9208      	str	r2, [sp, #32]
 8004c9e:	930c      	str	r3, [sp, #48]	; 0x30
 8004ca0:	e5b5      	b.n	800480e <_dtoa_r+0x176>
 8004ca2:	f1c4 0301 	rsb	r3, r4, #1
 8004ca6:	9308      	str	r3, [sp, #32]
 8004ca8:	f04f 0800 	mov.w	r8, #0
 8004cac:	e5a7      	b.n	80047fe <_dtoa_r+0x166>
 8004cae:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004cb2:	4640      	mov	r0, r8
 8004cb4:	f7fb fed6 	bl	8000a64 <__aeabi_i2d>
 8004cb8:	4632      	mov	r2, r6
 8004cba:	463b      	mov	r3, r7
 8004cbc:	f7fc f9a4 	bl	8001008 <__aeabi_dcmpeq>
 8004cc0:	2800      	cmp	r0, #0
 8004cc2:	f47f ad81 	bne.w	80047c8 <_dtoa_r+0x130>
 8004cc6:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004cca:	9306      	str	r3, [sp, #24]
 8004ccc:	e57c      	b.n	80047c8 <_dtoa_r+0x130>
 8004cce:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004cd0:	9c08      	ldr	r4, [sp, #32]
 8004cd2:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004cd4:	2c00      	cmp	r4, #0
 8004cd6:	dd0c      	ble.n	8004cf2 <_dtoa_r+0x65a>
 8004cd8:	f1b8 0f00 	cmp.w	r8, #0
 8004cdc:	dd09      	ble.n	8004cf2 <_dtoa_r+0x65a>
 8004cde:	4544      	cmp	r4, r8
 8004ce0:	9a08      	ldr	r2, [sp, #32]
 8004ce2:	4623      	mov	r3, r4
 8004ce4:	bfa8      	it	ge
 8004ce6:	4643      	movge	r3, r8
 8004ce8:	1ad2      	subs	r2, r2, r3
 8004cea:	9208      	str	r2, [sp, #32]
 8004cec:	1ae4      	subs	r4, r4, r3
 8004cee:	eba8 0803 	sub.w	r8, r8, r3
 8004cf2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004cf4:	b16b      	cbz	r3, 8004d12 <_dtoa_r+0x67a>
 8004cf6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004cf8:	2a00      	cmp	r2, #0
 8004cfa:	f000 8290 	beq.w	800521e <_dtoa_r+0xb86>
 8004cfe:	1bde      	subs	r6, r3, r7
 8004d00:	2f00      	cmp	r7, #0
 8004d02:	f040 819b 	bne.w	800503c <_dtoa_r+0x9a4>
 8004d06:	4651      	mov	r1, sl
 8004d08:	4632      	mov	r2, r6
 8004d0a:	4648      	mov	r0, r9
 8004d0c:	f001 fa7a 	bl	8006204 <__pow5mult>
 8004d10:	4682      	mov	sl, r0
 8004d12:	2101      	movs	r1, #1
 8004d14:	4648      	mov	r0, r9
 8004d16:	f001 f9c5 	bl	80060a4 <__i2b>
 8004d1a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004d1c:	4606      	mov	r6, r0
 8004d1e:	2a00      	cmp	r2, #0
 8004d20:	f040 8125 	bne.w	8004f6e <_dtoa_r+0x8d6>
 8004d24:	9b02      	ldr	r3, [sp, #8]
 8004d26:	2b01      	cmp	r3, #1
 8004d28:	f340 816c 	ble.w	8005004 <_dtoa_r+0x96c>
 8004d2c:	2001      	movs	r0, #1
 8004d2e:	4440      	add	r0, r8
 8004d30:	f010 001f 	ands.w	r0, r0, #31
 8004d34:	f000 8119 	beq.w	8004f6a <_dtoa_r+0x8d2>
 8004d38:	f1c0 0320 	rsb	r3, r0, #32
 8004d3c:	2b04      	cmp	r3, #4
 8004d3e:	f340 83ac 	ble.w	800549a <_dtoa_r+0xe02>
 8004d42:	f1c0 001c 	rsb	r0, r0, #28
 8004d46:	9b08      	ldr	r3, [sp, #32]
 8004d48:	4403      	add	r3, r0
 8004d4a:	9308      	str	r3, [sp, #32]
 8004d4c:	4404      	add	r4, r0
 8004d4e:	4480      	add	r8, r0
 8004d50:	9b08      	ldr	r3, [sp, #32]
 8004d52:	2b00      	cmp	r3, #0
 8004d54:	dd05      	ble.n	8004d62 <_dtoa_r+0x6ca>
 8004d56:	4651      	mov	r1, sl
 8004d58:	461a      	mov	r2, r3
 8004d5a:	4648      	mov	r0, r9
 8004d5c:	f001 faa2 	bl	80062a4 <__lshift>
 8004d60:	4682      	mov	sl, r0
 8004d62:	f1b8 0f00 	cmp.w	r8, #0
 8004d66:	dd05      	ble.n	8004d74 <_dtoa_r+0x6dc>
 8004d68:	4631      	mov	r1, r6
 8004d6a:	4642      	mov	r2, r8
 8004d6c:	4648      	mov	r0, r9
 8004d6e:	f001 fa99 	bl	80062a4 <__lshift>
 8004d72:	4606      	mov	r6, r0
 8004d74:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004d76:	2b00      	cmp	r3, #0
 8004d78:	d177      	bne.n	8004e6a <_dtoa_r+0x7d2>
 8004d7a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d7c:	2b00      	cmp	r3, #0
 8004d7e:	f340 8209 	ble.w	8005194 <_dtoa_r+0xafc>
 8004d82:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004d84:	2b00      	cmp	r3, #0
 8004d86:	f000 8089 	beq.w	8004e9c <_dtoa_r+0x804>
 8004d8a:	2c00      	cmp	r4, #0
 8004d8c:	f300 816b 	bgt.w	8005066 <_dtoa_r+0x9ce>
 8004d90:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004d92:	2b00      	cmp	r3, #0
 8004d94:	f040 81cd 	bne.w	8005132 <_dtoa_r+0xa9a>
 8004d98:	46a8      	mov	r8, r5
 8004d9a:	9a00      	ldr	r2, [sp, #0]
 8004d9c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004da0:	f002 0201 	and.w	r2, r2, #1
 8004da4:	920a      	str	r2, [sp, #40]	; 0x28
 8004da6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004da8:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004dac:	441a      	add	r2, r3
 8004dae:	465f      	mov	r7, fp
 8004db0:	9209      	str	r2, [sp, #36]	; 0x24
 8004db2:	46b3      	mov	fp, r6
 8004db4:	4659      	mov	r1, fp
 8004db6:	4650      	mov	r0, sl
 8004db8:	f7ff fbdc 	bl	8004574 <quorem>
 8004dbc:	4629      	mov	r1, r5
 8004dbe:	4604      	mov	r4, r0
 8004dc0:	4650      	mov	r0, sl
 8004dc2:	f001 fac5 	bl	8006350 <__mcmp>
 8004dc6:	4659      	mov	r1, fp
 8004dc8:	4606      	mov	r6, r0
 8004dca:	4642      	mov	r2, r8
 8004dcc:	4648      	mov	r0, r9
 8004dce:	f001 fadb 	bl	8006388 <__mdiff>
 8004dd2:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004dd6:	9300      	str	r3, [sp, #0]
 8004dd8:	68c3      	ldr	r3, [r0, #12]
 8004dda:	4601      	mov	r1, r0
 8004ddc:	2b00      	cmp	r3, #0
 8004dde:	f040 81d4 	bne.w	800518a <_dtoa_r+0xaf2>
 8004de2:	9008      	str	r0, [sp, #32]
 8004de4:	4650      	mov	r0, sl
 8004de6:	f001 fab3 	bl	8006350 <__mcmp>
 8004dea:	9a08      	ldr	r2, [sp, #32]
 8004dec:	9007      	str	r0, [sp, #28]
 8004dee:	4611      	mov	r1, r2
 8004df0:	4648      	mov	r0, r9
 8004df2:	f001 f8bd 	bl	8005f70 <_Bfree>
 8004df6:	9b07      	ldr	r3, [sp, #28]
 8004df8:	b933      	cbnz	r3, 8004e08 <_dtoa_r+0x770>
 8004dfa:	9a02      	ldr	r2, [sp, #8]
 8004dfc:	b922      	cbnz	r2, 8004e08 <_dtoa_r+0x770>
 8004dfe:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004e00:	2b00      	cmp	r3, #0
 8004e02:	f000 8319 	beq.w	8005438 <_dtoa_r+0xda0>
 8004e06:	9b02      	ldr	r3, [sp, #8]
 8004e08:	2e00      	cmp	r6, #0
 8004e0a:	f2c0 821c 	blt.w	8005246 <_dtoa_r+0xbae>
 8004e0e:	d105      	bne.n	8004e1c <_dtoa_r+0x784>
 8004e10:	9a02      	ldr	r2, [sp, #8]
 8004e12:	b91a      	cbnz	r2, 8004e1c <_dtoa_r+0x784>
 8004e14:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004e16:	2a00      	cmp	r2, #0
 8004e18:	f000 8215 	beq.w	8005246 <_dtoa_r+0xbae>
 8004e1c:	2b00      	cmp	r3, #0
 8004e1e:	f107 0401 	add.w	r4, r7, #1
 8004e22:	f300 8225 	bgt.w	8005270 <_dtoa_r+0xbd8>
 8004e26:	9b00      	ldr	r3, [sp, #0]
 8004e28:	703b      	strb	r3, [r7, #0]
 8004e2a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e2c:	42bb      	cmp	r3, r7
 8004e2e:	f000 8230 	beq.w	8005292 <_dtoa_r+0xbfa>
 8004e32:	4651      	mov	r1, sl
 8004e34:	2300      	movs	r3, #0
 8004e36:	220a      	movs	r2, #10
 8004e38:	4648      	mov	r0, r9
 8004e3a:	f001 f8a3 	bl	8005f84 <__multadd>
 8004e3e:	4545      	cmp	r5, r8
 8004e40:	4682      	mov	sl, r0
 8004e42:	4629      	mov	r1, r5
 8004e44:	f04f 0300 	mov.w	r3, #0
 8004e48:	f04f 020a 	mov.w	r2, #10
 8004e4c:	4648      	mov	r0, r9
 8004e4e:	f000 8196 	beq.w	800517e <_dtoa_r+0xae6>
 8004e52:	f001 f897 	bl	8005f84 <__multadd>
 8004e56:	4641      	mov	r1, r8
 8004e58:	4605      	mov	r5, r0
 8004e5a:	2300      	movs	r3, #0
 8004e5c:	220a      	movs	r2, #10
 8004e5e:	4648      	mov	r0, r9
 8004e60:	f001 f890 	bl	8005f84 <__multadd>
 8004e64:	4627      	mov	r7, r4
 8004e66:	4680      	mov	r8, r0
 8004e68:	e7a4      	b.n	8004db4 <_dtoa_r+0x71c>
 8004e6a:	4631      	mov	r1, r6
 8004e6c:	4650      	mov	r0, sl
 8004e6e:	f001 fa6f 	bl	8006350 <__mcmp>
 8004e72:	2800      	cmp	r0, #0
 8004e74:	da81      	bge.n	8004d7a <_dtoa_r+0x6e2>
 8004e76:	9f06      	ldr	r7, [sp, #24]
 8004e78:	4651      	mov	r1, sl
 8004e7a:	2300      	movs	r3, #0
 8004e7c:	220a      	movs	r2, #10
 8004e7e:	4648      	mov	r0, r9
 8004e80:	3f01      	subs	r7, #1
 8004e82:	9706      	str	r7, [sp, #24]
 8004e84:	f001 f87e 	bl	8005f84 <__multadd>
 8004e88:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004e8a:	4682      	mov	sl, r0
 8004e8c:	2b00      	cmp	r3, #0
 8004e8e:	f040 82eb 	bne.w	8005468 <_dtoa_r+0xdd0>
 8004e92:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004e94:	2b00      	cmp	r3, #0
 8004e96:	f340 82f3 	ble.w	8005480 <_dtoa_r+0xde8>
 8004e9a:	9309      	str	r3, [sp, #36]	; 0x24
 8004e9c:	465c      	mov	r4, fp
 8004e9e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004ea2:	e002      	b.n	8004eaa <_dtoa_r+0x812>
 8004ea4:	f001 f86e 	bl	8005f84 <__multadd>
 8004ea8:	4682      	mov	sl, r0
 8004eaa:	4631      	mov	r1, r6
 8004eac:	4650      	mov	r0, sl
 8004eae:	f7ff fb61 	bl	8004574 <quorem>
 8004eb2:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004eb6:	f804 7b01 	strb.w	r7, [r4], #1
 8004eba:	eba4 030b 	sub.w	r3, r4, fp
 8004ebe:	4598      	cmp	r8, r3
 8004ec0:	f04f 020a 	mov.w	r2, #10
 8004ec4:	f04f 0300 	mov.w	r3, #0
 8004ec8:	4651      	mov	r1, sl
 8004eca:	4648      	mov	r0, r9
 8004ecc:	dcea      	bgt.n	8004ea4 <_dtoa_r+0x80c>
 8004ece:	2300      	movs	r3, #0
 8004ed0:	9700      	str	r7, [sp, #0]
 8004ed2:	9302      	str	r3, [sp, #8]
 8004ed4:	4651      	mov	r1, sl
 8004ed6:	2201      	movs	r2, #1
 8004ed8:	4648      	mov	r0, r9
 8004eda:	f001 f9e3 	bl	80062a4 <__lshift>
 8004ede:	4631      	mov	r1, r6
 8004ee0:	4682      	mov	sl, r0
 8004ee2:	f001 fa35 	bl	8006350 <__mcmp>
 8004ee6:	2800      	cmp	r0, #0
 8004ee8:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004eec:	dc14      	bgt.n	8004f18 <_dtoa_r+0x880>
 8004eee:	d108      	bne.n	8004f02 <_dtoa_r+0x86a>
 8004ef0:	9b00      	ldr	r3, [sp, #0]
 8004ef2:	07db      	lsls	r3, r3, #31
 8004ef4:	d410      	bmi.n	8004f18 <_dtoa_r+0x880>
 8004ef6:	e004      	b.n	8004f02 <_dtoa_r+0x86a>
 8004ef8:	40240000 	.word	0x40240000
 8004efc:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004f00:	461c      	mov	r4, r3
 8004f02:	2a30      	cmp	r2, #48	; 0x30
 8004f04:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004f08:	d0f8      	beq.n	8004efc <_dtoa_r+0x864>
 8004f0a:	e00b      	b.n	8004f24 <_dtoa_r+0x88c>
 8004f0c:	459b      	cmp	fp, r3
 8004f0e:	f000 814e 	beq.w	80051ae <_dtoa_r+0xb16>
 8004f12:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004f16:	461c      	mov	r4, r3
 8004f18:	2a39      	cmp	r2, #57	; 0x39
 8004f1a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004f1e:	d0f5      	beq.n	8004f0c <_dtoa_r+0x874>
 8004f20:	3201      	adds	r2, #1
 8004f22:	701a      	strb	r2, [r3, #0]
 8004f24:	4631      	mov	r1, r6
 8004f26:	4648      	mov	r0, r9
 8004f28:	f001 f822 	bl	8005f70 <_Bfree>
 8004f2c:	b155      	cbz	r5, 8004f44 <_dtoa_r+0x8ac>
 8004f2e:	9902      	ldr	r1, [sp, #8]
 8004f30:	b121      	cbz	r1, 8004f3c <_dtoa_r+0x8a4>
 8004f32:	42a9      	cmp	r1, r5
 8004f34:	d002      	beq.n	8004f3c <_dtoa_r+0x8a4>
 8004f36:	4648      	mov	r0, r9
 8004f38:	f001 f81a 	bl	8005f70 <_Bfree>
 8004f3c:	4629      	mov	r1, r5
 8004f3e:	4648      	mov	r0, r9
 8004f40:	f001 f816 	bl	8005f70 <_Bfree>
 8004f44:	4651      	mov	r1, sl
 8004f46:	4648      	mov	r0, r9
 8004f48:	f001 f812 	bl	8005f70 <_Bfree>
 8004f4c:	2200      	movs	r2, #0
 8004f4e:	9b06      	ldr	r3, [sp, #24]
 8004f50:	7022      	strb	r2, [r4, #0]
 8004f52:	9a05      	ldr	r2, [sp, #20]
 8004f54:	3301      	adds	r3, #1
 8004f56:	6013      	str	r3, [r2, #0]
 8004f58:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004f5a:	2b00      	cmp	r3, #0
 8004f5c:	f43f abdb 	beq.w	8004716 <_dtoa_r+0x7e>
 8004f60:	4658      	mov	r0, fp
 8004f62:	601c      	str	r4, [r3, #0]
 8004f64:	b01b      	add	sp, #108	; 0x6c
 8004f66:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004f6a:	201c      	movs	r0, #28
 8004f6c:	e6eb      	b.n	8004d46 <_dtoa_r+0x6ae>
 8004f6e:	4601      	mov	r1, r0
 8004f70:	4648      	mov	r0, r9
 8004f72:	f001 f947 	bl	8006204 <__pow5mult>
 8004f76:	9b02      	ldr	r3, [sp, #8]
 8004f78:	2b01      	cmp	r3, #1
 8004f7a:	4606      	mov	r6, r0
 8004f7c:	f340 80d4 	ble.w	8005128 <_dtoa_r+0xa90>
 8004f80:	2300      	movs	r3, #0
 8004f82:	930c      	str	r3, [sp, #48]	; 0x30
 8004f84:	6933      	ldr	r3, [r6, #16]
 8004f86:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004f8a:	6918      	ldr	r0, [r3, #16]
 8004f8c:	f001 f83a 	bl	8006004 <__hi0bits>
 8004f90:	f1c0 0020 	rsb	r0, r0, #32
 8004f94:	e6cb      	b.n	8004d2e <_dtoa_r+0x696>
 8004f96:	900d      	str	r0, [sp, #52]	; 0x34
 8004f98:	e42a      	b.n	80047f0 <_dtoa_r+0x158>
 8004f9a:	2501      	movs	r5, #1
 8004f9c:	e440      	b.n	8004820 <_dtoa_r+0x188>
 8004f9e:	f1c3 0820 	rsb	r8, r3, #32
 8004fa2:	9b00      	ldr	r3, [sp, #0]
 8004fa4:	fa03 f008 	lsl.w	r0, r3, r8
 8004fa8:	f7ff bbd8 	b.w	800475c <_dtoa_r+0xc4>
 8004fac:	2300      	movs	r3, #0
 8004fae:	930a      	str	r3, [sp, #40]	; 0x28
 8004fb0:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004fb4:	4413      	add	r3, r2
 8004fb6:	930e      	str	r3, [sp, #56]	; 0x38
 8004fb8:	3301      	adds	r3, #1
 8004fba:	2b01      	cmp	r3, #1
 8004fbc:	461e      	mov	r6, r3
 8004fbe:	9309      	str	r3, [sp, #36]	; 0x24
 8004fc0:	bfb8      	it	lt
 8004fc2:	2601      	movlt	r6, #1
 8004fc4:	2100      	movs	r1, #0
 8004fc6:	2e17      	cmp	r6, #23
 8004fc8:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004fcc:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004fce:	f77f ac89 	ble.w	80048e4 <_dtoa_r+0x24c>
 8004fd2:	2201      	movs	r2, #1
 8004fd4:	2304      	movs	r3, #4
 8004fd6:	005b      	lsls	r3, r3, #1
 8004fd8:	f103 0014 	add.w	r0, r3, #20
 8004fdc:	42b0      	cmp	r0, r6
 8004fde:	4611      	mov	r1, r2
 8004fe0:	f102 0201 	add.w	r2, r2, #1
 8004fe4:	d9f7      	bls.n	8004fd6 <_dtoa_r+0x93e>
 8004fe6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004fea:	e47b      	b.n	80048e4 <_dtoa_r+0x24c>
 8004fec:	2300      	movs	r3, #0
 8004fee:	930a      	str	r3, [sp, #40]	; 0x28
 8004ff0:	9e07      	ldr	r6, [sp, #28]
 8004ff2:	2e00      	cmp	r6, #0
 8004ff4:	f340 80e2 	ble.w	80051bc <_dtoa_r+0xb24>
 8004ff8:	960e      	str	r6, [sp, #56]	; 0x38
 8004ffa:	9609      	str	r6, [sp, #36]	; 0x24
 8004ffc:	e7e2      	b.n	8004fc4 <_dtoa_r+0x92c>
 8004ffe:	2301      	movs	r3, #1
 8005000:	930a      	str	r3, [sp, #40]	; 0x28
 8005002:	e7f5      	b.n	8004ff0 <_dtoa_r+0x958>
 8005004:	9b00      	ldr	r3, [sp, #0]
 8005006:	2b00      	cmp	r3, #0
 8005008:	f47f ae90 	bne.w	8004d2c <_dtoa_r+0x694>
 800500c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8005010:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8005014:	2b00      	cmp	r3, #0
 8005016:	f040 8192 	bne.w	800533e <_dtoa_r+0xca6>
 800501a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 800501e:	0d1b      	lsrs	r3, r3, #20
 8005020:	051b      	lsls	r3, r3, #20
 8005022:	b12b      	cbz	r3, 8005030 <_dtoa_r+0x998>
 8005024:	9b08      	ldr	r3, [sp, #32]
 8005026:	3301      	adds	r3, #1
 8005028:	9308      	str	r3, [sp, #32]
 800502a:	f108 0801 	add.w	r8, r8, #1
 800502e:	2301      	movs	r3, #1
 8005030:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005032:	930c      	str	r3, [sp, #48]	; 0x30
 8005034:	2a00      	cmp	r2, #0
 8005036:	f43f ae79 	beq.w	8004d2c <_dtoa_r+0x694>
 800503a:	e7a3      	b.n	8004f84 <_dtoa_r+0x8ec>
 800503c:	463a      	mov	r2, r7
 800503e:	4629      	mov	r1, r5
 8005040:	4648      	mov	r0, r9
 8005042:	f001 f8df 	bl	8006204 <__pow5mult>
 8005046:	4652      	mov	r2, sl
 8005048:	4601      	mov	r1, r0
 800504a:	4605      	mov	r5, r0
 800504c:	4648      	mov	r0, r9
 800504e:	f001 f833 	bl	80060b8 <__multiply>
 8005052:	4651      	mov	r1, sl
 8005054:	4607      	mov	r7, r0
 8005056:	4648      	mov	r0, r9
 8005058:	f000 ff8a 	bl	8005f70 <_Bfree>
 800505c:	46ba      	mov	sl, r7
 800505e:	2e00      	cmp	r6, #0
 8005060:	f43f ae57 	beq.w	8004d12 <_dtoa_r+0x67a>
 8005064:	e64f      	b.n	8004d06 <_dtoa_r+0x66e>
 8005066:	4629      	mov	r1, r5
 8005068:	4622      	mov	r2, r4
 800506a:	4648      	mov	r0, r9
 800506c:	f001 f91a 	bl	80062a4 <__lshift>
 8005070:	4605      	mov	r5, r0
 8005072:	e68d      	b.n	8004d90 <_dtoa_r+0x6f8>
 8005074:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8005076:	2a00      	cmp	r2, #0
 8005078:	f000 815d 	beq.w	8005336 <_dtoa_r+0xc9e>
 800507c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005080:	9a08      	ldr	r2, [sp, #32]
 8005082:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005084:	4614      	mov	r4, r2
 8005086:	441a      	add	r2, r3
 8005088:	4498      	add	r8, r3
 800508a:	9208      	str	r2, [sp, #32]
 800508c:	e5f7      	b.n	8004c7e <_dtoa_r+0x5e6>
 800508e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005090:	2b00      	cmp	r3, #0
 8005092:	f73f ad3e 	bgt.w	8004b12 <_dtoa_r+0x47a>
 8005096:	f040 80bc 	bne.w	8005212 <_dtoa_r+0xb7a>
 800509a:	ec51 0b17 	vmov	r0, r1, d7
 800509e:	2200      	movs	r2, #0
 80050a0:	4bb2      	ldr	r3, [pc, #712]	; (800536c <_dtoa_r+0xcd4>)
 80050a2:	f7fb fd49 	bl	8000b38 <__aeabi_dmul>
 80050a6:	e9dd 2300 	ldrd	r2, r3, [sp]
 80050aa:	f7fb ffcb 	bl	8001044 <__aeabi_dcmpge>
 80050ae:	9e09      	ldr	r6, [sp, #36]	; 0x24
 80050b0:	4635      	mov	r5, r6
 80050b2:	2800      	cmp	r0, #0
 80050b4:	d176      	bne.n	80051a4 <_dtoa_r+0xb0c>
 80050b6:	9a06      	ldr	r2, [sp, #24]
 80050b8:	2331      	movs	r3, #49	; 0x31
 80050ba:	3201      	adds	r2, #1
 80050bc:	9206      	str	r2, [sp, #24]
 80050be:	f88b 3000 	strb.w	r3, [fp]
 80050c2:	f10b 0401 	add.w	r4, fp, #1
 80050c6:	4631      	mov	r1, r6
 80050c8:	4648      	mov	r0, r9
 80050ca:	f000 ff51 	bl	8005f70 <_Bfree>
 80050ce:	2d00      	cmp	r5, #0
 80050d0:	f47f af34 	bne.w	8004f3c <_dtoa_r+0x8a4>
 80050d4:	e736      	b.n	8004f44 <_dtoa_r+0x8ac>
 80050d6:	f000 8142 	beq.w	800535e <_dtoa_r+0xcc6>
 80050da:	9b06      	ldr	r3, [sp, #24]
 80050dc:	425c      	negs	r4, r3
 80050de:	4ba4      	ldr	r3, [pc, #656]	; (8005370 <_dtoa_r+0xcd8>)
 80050e0:	f004 020f 	and.w	r2, r4, #15
 80050e4:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80050e8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80050ec:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80050f0:	f7fb fd22 	bl	8000b38 <__aeabi_dmul>
 80050f4:	1124      	asrs	r4, r4, #4
 80050f6:	e9cd 0100 	strd	r0, r1, [sp]
 80050fa:	f000 81c6 	beq.w	800548a <_dtoa_r+0xdf2>
 80050fe:	4d9d      	ldr	r5, [pc, #628]	; (8005374 <_dtoa_r+0xcdc>)
 8005100:	2300      	movs	r3, #0
 8005102:	2602      	movs	r6, #2
 8005104:	07e7      	lsls	r7, r4, #31
 8005106:	d505      	bpl.n	8005114 <_dtoa_r+0xa7c>
 8005108:	e9d5 2300 	ldrd	r2, r3, [r5]
 800510c:	f7fb fd14 	bl	8000b38 <__aeabi_dmul>
 8005110:	3601      	adds	r6, #1
 8005112:	2301      	movs	r3, #1
 8005114:	1064      	asrs	r4, r4, #1
 8005116:	f105 0508 	add.w	r5, r5, #8
 800511a:	d1f3      	bne.n	8005104 <_dtoa_r+0xa6c>
 800511c:	2b00      	cmp	r3, #0
 800511e:	f43f ac27 	beq.w	8004970 <_dtoa_r+0x2d8>
 8005122:	e9cd 0100 	strd	r0, r1, [sp]
 8005126:	e423      	b.n	8004970 <_dtoa_r+0x2d8>
 8005128:	9b00      	ldr	r3, [sp, #0]
 800512a:	2b00      	cmp	r3, #0
 800512c:	f43f af6e 	beq.w	800500c <_dtoa_r+0x974>
 8005130:	e726      	b.n	8004f80 <_dtoa_r+0x8e8>
 8005132:	6869      	ldr	r1, [r5, #4]
 8005134:	4648      	mov	r0, r9
 8005136:	f000 fef5 	bl	8005f24 <_Balloc>
 800513a:	692b      	ldr	r3, [r5, #16]
 800513c:	3302      	adds	r3, #2
 800513e:	009a      	lsls	r2, r3, #2
 8005140:	4604      	mov	r4, r0
 8005142:	f105 010c 	add.w	r1, r5, #12
 8005146:	300c      	adds	r0, #12
 8005148:	f7fb f9da 	bl	8000500 <memcpy>
 800514c:	4621      	mov	r1, r4
 800514e:	2201      	movs	r2, #1
 8005150:	4648      	mov	r0, r9
 8005152:	f001 f8a7 	bl	80062a4 <__lshift>
 8005156:	4680      	mov	r8, r0
 8005158:	e61f      	b.n	8004d9a <_dtoa_r+0x702>
 800515a:	2400      	movs	r4, #0
 800515c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8005160:	4621      	mov	r1, r4
 8005162:	4648      	mov	r0, r9
 8005164:	f000 fede 	bl	8005f24 <_Balloc>
 8005168:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800516c:	930e      	str	r3, [sp, #56]	; 0x38
 800516e:	9309      	str	r3, [sp, #36]	; 0x24
 8005170:	2301      	movs	r3, #1
 8005172:	4683      	mov	fp, r0
 8005174:	9407      	str	r4, [sp, #28]
 8005176:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800517a:	930a      	str	r3, [sp, #40]	; 0x28
 800517c:	e4b6      	b.n	8004aec <_dtoa_r+0x454>
 800517e:	f000 ff01 	bl	8005f84 <__multadd>
 8005182:	4627      	mov	r7, r4
 8005184:	4605      	mov	r5, r0
 8005186:	4680      	mov	r8, r0
 8005188:	e614      	b.n	8004db4 <_dtoa_r+0x71c>
 800518a:	4648      	mov	r0, r9
 800518c:	f000 fef0 	bl	8005f70 <_Bfree>
 8005190:	2301      	movs	r3, #1
 8005192:	e639      	b.n	8004e08 <_dtoa_r+0x770>
 8005194:	9b02      	ldr	r3, [sp, #8]
 8005196:	2b02      	cmp	r3, #2
 8005198:	f77f adf3 	ble.w	8004d82 <_dtoa_r+0x6ea>
 800519c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800519e:	2b00      	cmp	r3, #0
 80051a0:	f000 80cf 	beq.w	8005342 <_dtoa_r+0xcaa>
 80051a4:	9b07      	ldr	r3, [sp, #28]
 80051a6:	43db      	mvns	r3, r3
 80051a8:	9306      	str	r3, [sp, #24]
 80051aa:	465c      	mov	r4, fp
 80051ac:	e78b      	b.n	80050c6 <_dtoa_r+0xa2e>
 80051ae:	9a06      	ldr	r2, [sp, #24]
 80051b0:	2331      	movs	r3, #49	; 0x31
 80051b2:	3201      	adds	r2, #1
 80051b4:	9206      	str	r2, [sp, #24]
 80051b6:	f88b 3000 	strb.w	r3, [fp]
 80051ba:	e6b3      	b.n	8004f24 <_dtoa_r+0x88c>
 80051bc:	2401      	movs	r4, #1
 80051be:	9409      	str	r4, [sp, #36]	; 0x24
 80051c0:	9407      	str	r4, [sp, #28]
 80051c2:	f7ff bb8b 	b.w	80048dc <_dtoa_r+0x244>
 80051c6:	4630      	mov	r0, r6
 80051c8:	f7fb fc4c 	bl	8000a64 <__aeabi_i2d>
 80051cc:	e9dd 2300 	ldrd	r2, r3, [sp]
 80051d0:	f7fb fcb2 	bl	8000b38 <__aeabi_dmul>
 80051d4:	2200      	movs	r2, #0
 80051d6:	4b68      	ldr	r3, [pc, #416]	; (8005378 <_dtoa_r+0xce0>)
 80051d8:	f7fb faf8 	bl	80007cc <__adddf3>
 80051dc:	4606      	mov	r6, r0
 80051de:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80051e2:	2200      	movs	r2, #0
 80051e4:	4b61      	ldr	r3, [pc, #388]	; (800536c <_dtoa_r+0xcd4>)
 80051e6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80051ea:	f7fb faed 	bl	80007c8 <__aeabi_dsub>
 80051ee:	4632      	mov	r2, r6
 80051f0:	463b      	mov	r3, r7
 80051f2:	4604      	mov	r4, r0
 80051f4:	460d      	mov	r5, r1
 80051f6:	f7fb ff2f 	bl	8001058 <__aeabi_dcmpgt>
 80051fa:	2800      	cmp	r0, #0
 80051fc:	d14f      	bne.n	800529e <_dtoa_r+0xc06>
 80051fe:	4632      	mov	r2, r6
 8005200:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8005204:	4620      	mov	r0, r4
 8005206:	4629      	mov	r1, r5
 8005208:	f7fb ff08 	bl	800101c <__aeabi_dcmplt>
 800520c:	2800      	cmp	r0, #0
 800520e:	f43f ac69 	beq.w	8004ae4 <_dtoa_r+0x44c>
 8005212:	2600      	movs	r6, #0
 8005214:	4635      	mov	r5, r6
 8005216:	e7c5      	b.n	80051a4 <_dtoa_r+0xb0c>
 8005218:	2301      	movs	r3, #1
 800521a:	930a      	str	r3, [sp, #40]	; 0x28
 800521c:	e6c8      	b.n	8004fb0 <_dtoa_r+0x918>
 800521e:	4651      	mov	r1, sl
 8005220:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005222:	4648      	mov	r0, r9
 8005224:	f000 ffee 	bl	8006204 <__pow5mult>
 8005228:	4682      	mov	sl, r0
 800522a:	e572      	b.n	8004d12 <_dtoa_r+0x67a>
 800522c:	f8dd a000 	ldr.w	sl, [sp]
 8005230:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005234:	e686      	b.n	8004f44 <_dtoa_r+0x8ac>
 8005236:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005238:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800523a:	1afb      	subs	r3, r7, r3
 800523c:	441a      	add	r2, r3
 800523e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8005242:	2700      	movs	r7, #0
 8005244:	e512      	b.n	8004c6c <_dtoa_r+0x5d4>
 8005246:	2b00      	cmp	r3, #0
 8005248:	9402      	str	r4, [sp, #8]
 800524a:	465e      	mov	r6, fp
 800524c:	f107 0401 	add.w	r4, r7, #1
 8005250:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005254:	f300 80ba 	bgt.w	80053cc <_dtoa_r+0xd34>
 8005258:	9b00      	ldr	r3, [sp, #0]
 800525a:	9502      	str	r5, [sp, #8]
 800525c:	703b      	strb	r3, [r7, #0]
 800525e:	4645      	mov	r5, r8
 8005260:	e660      	b.n	8004f24 <_dtoa_r+0x88c>
 8005262:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005266:	2602      	movs	r6, #2
 8005268:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800526c:	f7ff bb67 	b.w	800493e <_dtoa_r+0x2a6>
 8005270:	9b00      	ldr	r3, [sp, #0]
 8005272:	2b39      	cmp	r3, #57	; 0x39
 8005274:	465e      	mov	r6, fp
 8005276:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800527a:	f000 80b9 	beq.w	80053f0 <_dtoa_r+0xd58>
 800527e:	9b00      	ldr	r3, [sp, #0]
 8005280:	9502      	str	r5, [sp, #8]
 8005282:	3301      	adds	r3, #1
 8005284:	703b      	strb	r3, [r7, #0]
 8005286:	4645      	mov	r5, r8
 8005288:	e64c      	b.n	8004f24 <_dtoa_r+0x88c>
 800528a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800528e:	1a9c      	subs	r4, r3, r2
 8005290:	e4f5      	b.n	8004c7e <_dtoa_r+0x5e6>
 8005292:	465e      	mov	r6, fp
 8005294:	9502      	str	r5, [sp, #8]
 8005296:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800529a:	4645      	mov	r5, r8
 800529c:	e61a      	b.n	8004ed4 <_dtoa_r+0x83c>
 800529e:	2600      	movs	r6, #0
 80052a0:	4635      	mov	r5, r6
 80052a2:	e708      	b.n	80050b6 <_dtoa_r+0xa1e>
 80052a4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80052a8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80052ac:	f7fb fc44 	bl	8000b38 <__aeabi_dmul>
 80052b0:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80052b2:	f88b 5000 	strb.w	r5, [fp]
 80052b6:	2b01      	cmp	r3, #1
 80052b8:	e9cd 0100 	strd	r0, r1, [sp]
 80052bc:	d020      	beq.n	8005300 <_dtoa_r+0xc68>
 80052be:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80052c0:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 80052c4:	445b      	add	r3, fp
 80052c6:	4698      	mov	r8, r3
 80052c8:	2200      	movs	r2, #0
 80052ca:	4b2c      	ldr	r3, [pc, #176]	; (800537c <_dtoa_r+0xce4>)
 80052cc:	4630      	mov	r0, r6
 80052ce:	4639      	mov	r1, r7
 80052d0:	f7fb fc32 	bl	8000b38 <__aeabi_dmul>
 80052d4:	460f      	mov	r7, r1
 80052d6:	4606      	mov	r6, r0
 80052d8:	f7fb fede 	bl	8001098 <__aeabi_d2iz>
 80052dc:	4605      	mov	r5, r0
 80052de:	f7fb fbc1 	bl	8000a64 <__aeabi_i2d>
 80052e2:	3530      	adds	r5, #48	; 0x30
 80052e4:	4602      	mov	r2, r0
 80052e6:	460b      	mov	r3, r1
 80052e8:	4630      	mov	r0, r6
 80052ea:	4639      	mov	r1, r7
 80052ec:	f7fb fa6c 	bl	80007c8 <__aeabi_dsub>
 80052f0:	f804 5b01 	strb.w	r5, [r4], #1
 80052f4:	4544      	cmp	r4, r8
 80052f6:	4606      	mov	r6, r0
 80052f8:	460f      	mov	r7, r1
 80052fa:	d1e5      	bne.n	80052c8 <_dtoa_r+0xc30>
 80052fc:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8005300:	4b1f      	ldr	r3, [pc, #124]	; (8005380 <_dtoa_r+0xce8>)
 8005302:	2200      	movs	r2, #0
 8005304:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005308:	f7fb fa60 	bl	80007cc <__adddf3>
 800530c:	4632      	mov	r2, r6
 800530e:	463b      	mov	r3, r7
 8005310:	f7fb fe84 	bl	800101c <__aeabi_dcmplt>
 8005314:	2800      	cmp	r0, #0
 8005316:	d070      	beq.n	80053fa <_dtoa_r+0xd62>
 8005318:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800531a:	9306      	str	r3, [sp, #24]
 800531c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005320:	e48f      	b.n	8004c42 <_dtoa_r+0x5aa>
 8005322:	2330      	movs	r3, #48	; 0x30
 8005324:	f88b 3000 	strb.w	r3, [fp]
 8005328:	9b06      	ldr	r3, [sp, #24]
 800532a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800532e:	3301      	adds	r3, #1
 8005330:	9306      	str	r3, [sp, #24]
 8005332:	465b      	mov	r3, fp
 8005334:	e489      	b.n	8004c4a <_dtoa_r+0x5b2>
 8005336:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005338:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 800533c:	e6a0      	b.n	8005080 <_dtoa_r+0x9e8>
 800533e:	2300      	movs	r3, #0
 8005340:	e676      	b.n	8005030 <_dtoa_r+0x998>
 8005342:	4631      	mov	r1, r6
 8005344:	2205      	movs	r2, #5
 8005346:	4648      	mov	r0, r9
 8005348:	f000 fe1c 	bl	8005f84 <__multadd>
 800534c:	4601      	mov	r1, r0
 800534e:	4606      	mov	r6, r0
 8005350:	4650      	mov	r0, sl
 8005352:	f000 fffd 	bl	8006350 <__mcmp>
 8005356:	2800      	cmp	r0, #0
 8005358:	f73f aead 	bgt.w	80050b6 <_dtoa_r+0xa1e>
 800535c:	e722      	b.n	80051a4 <_dtoa_r+0xb0c>
 800535e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005362:	2602      	movs	r6, #2
 8005364:	ed8d 7b00 	vstr	d7, [sp]
 8005368:	f7ff bb02 	b.w	8004970 <_dtoa_r+0x2d8>
 800536c:	40140000 	.word	0x40140000
 8005370:	080071a0 	.word	0x080071a0
 8005374:	08007178 	.word	0x08007178
 8005378:	401c0000 	.word	0x401c0000
 800537c:	40240000 	.word	0x40240000
 8005380:	3fe00000 	.word	0x3fe00000
 8005384:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005386:	2b00      	cmp	r3, #0
 8005388:	f43f af1d 	beq.w	80051c6 <_dtoa_r+0xb2e>
 800538c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800538e:	2c00      	cmp	r4, #0
 8005390:	f77f aba8 	ble.w	8004ae4 <_dtoa_r+0x44c>
 8005394:	2200      	movs	r2, #0
 8005396:	4b45      	ldr	r3, [pc, #276]	; (80054ac <_dtoa_r+0xe14>)
 8005398:	e9dd 0100 	ldrd	r0, r1, [sp]
 800539c:	f7fb fbcc 	bl	8000b38 <__aeabi_dmul>
 80053a0:	e9cd 0100 	strd	r0, r1, [sp]
 80053a4:	1c70      	adds	r0, r6, #1
 80053a6:	f7fb fb5d 	bl	8000a64 <__aeabi_i2d>
 80053aa:	e9dd 2300 	ldrd	r2, r3, [sp]
 80053ae:	f7fb fbc3 	bl	8000b38 <__aeabi_dmul>
 80053b2:	4b3f      	ldr	r3, [pc, #252]	; (80054b0 <_dtoa_r+0xe18>)
 80053b4:	2200      	movs	r2, #0
 80053b6:	f7fb fa09 	bl	80007cc <__adddf3>
 80053ba:	9b06      	ldr	r3, [sp, #24]
 80053bc:	9412      	str	r4, [sp, #72]	; 0x48
 80053be:	3b01      	subs	r3, #1
 80053c0:	4606      	mov	r6, r0
 80053c2:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80053c6:	9316      	str	r3, [sp, #88]	; 0x58
 80053c8:	f7ff baf3 	b.w	80049b2 <_dtoa_r+0x31a>
 80053cc:	4651      	mov	r1, sl
 80053ce:	2201      	movs	r2, #1
 80053d0:	4648      	mov	r0, r9
 80053d2:	f000 ff67 	bl	80062a4 <__lshift>
 80053d6:	4631      	mov	r1, r6
 80053d8:	4682      	mov	sl, r0
 80053da:	f000 ffb9 	bl	8006350 <__mcmp>
 80053de:	2800      	cmp	r0, #0
 80053e0:	dd3b      	ble.n	800545a <_dtoa_r+0xdc2>
 80053e2:	9b00      	ldr	r3, [sp, #0]
 80053e4:	2b39      	cmp	r3, #57	; 0x39
 80053e6:	d003      	beq.n	80053f0 <_dtoa_r+0xd58>
 80053e8:	9b02      	ldr	r3, [sp, #8]
 80053ea:	3331      	adds	r3, #49	; 0x31
 80053ec:	9300      	str	r3, [sp, #0]
 80053ee:	e733      	b.n	8005258 <_dtoa_r+0xbc0>
 80053f0:	2239      	movs	r2, #57	; 0x39
 80053f2:	9502      	str	r5, [sp, #8]
 80053f4:	703a      	strb	r2, [r7, #0]
 80053f6:	4645      	mov	r5, r8
 80053f8:	e58e      	b.n	8004f18 <_dtoa_r+0x880>
 80053fa:	e9dd 2300 	ldrd	r2, r3, [sp]
 80053fe:	2000      	movs	r0, #0
 8005400:	492c      	ldr	r1, [pc, #176]	; (80054b4 <_dtoa_r+0xe1c>)
 8005402:	f7fb f9e1 	bl	80007c8 <__aeabi_dsub>
 8005406:	4632      	mov	r2, r6
 8005408:	463b      	mov	r3, r7
 800540a:	f7fb fe25 	bl	8001058 <__aeabi_dcmpgt>
 800540e:	b910      	cbnz	r0, 8005416 <_dtoa_r+0xd7e>
 8005410:	f7ff bb68 	b.w	8004ae4 <_dtoa_r+0x44c>
 8005414:	4614      	mov	r4, r2
 8005416:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 800541a:	2b30      	cmp	r3, #48	; 0x30
 800541c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8005420:	d0f8      	beq.n	8005414 <_dtoa_r+0xd7c>
 8005422:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005424:	9306      	str	r3, [sp, #24]
 8005426:	e58d      	b.n	8004f44 <_dtoa_r+0x8ac>
 8005428:	46d9      	mov	r9, fp
 800542a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800542e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005432:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005434:	9306      	str	r3, [sp, #24]
 8005436:	e404      	b.n	8004c42 <_dtoa_r+0x5aa>
 8005438:	9b00      	ldr	r3, [sp, #0]
 800543a:	2b39      	cmp	r3, #57	; 0x39
 800543c:	4621      	mov	r1, r4
 800543e:	4632      	mov	r2, r6
 8005440:	f107 0401 	add.w	r4, r7, #1
 8005444:	465e      	mov	r6, fp
 8005446:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800544a:	d0d1      	beq.n	80053f0 <_dtoa_r+0xd58>
 800544c:	2a00      	cmp	r2, #0
 800544e:	f77f af03 	ble.w	8005258 <_dtoa_r+0xbc0>
 8005452:	460b      	mov	r3, r1
 8005454:	3331      	adds	r3, #49	; 0x31
 8005456:	9300      	str	r3, [sp, #0]
 8005458:	e6fe      	b.n	8005258 <_dtoa_r+0xbc0>
 800545a:	f47f aefd 	bne.w	8005258 <_dtoa_r+0xbc0>
 800545e:	9b00      	ldr	r3, [sp, #0]
 8005460:	07da      	lsls	r2, r3, #31
 8005462:	f57f aef9 	bpl.w	8005258 <_dtoa_r+0xbc0>
 8005466:	e7bc      	b.n	80053e2 <_dtoa_r+0xd4a>
 8005468:	4629      	mov	r1, r5
 800546a:	2300      	movs	r3, #0
 800546c:	220a      	movs	r2, #10
 800546e:	4648      	mov	r0, r9
 8005470:	f000 fd88 	bl	8005f84 <__multadd>
 8005474:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005476:	2b00      	cmp	r3, #0
 8005478:	4605      	mov	r5, r0
 800547a:	dd09      	ble.n	8005490 <_dtoa_r+0xdf8>
 800547c:	9309      	str	r3, [sp, #36]	; 0x24
 800547e:	e484      	b.n	8004d8a <_dtoa_r+0x6f2>
 8005480:	9b02      	ldr	r3, [sp, #8]
 8005482:	2b02      	cmp	r3, #2
 8005484:	dc0e      	bgt.n	80054a4 <_dtoa_r+0xe0c>
 8005486:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005488:	e507      	b.n	8004e9a <_dtoa_r+0x802>
 800548a:	2602      	movs	r6, #2
 800548c:	f7ff ba70 	b.w	8004970 <_dtoa_r+0x2d8>
 8005490:	9b02      	ldr	r3, [sp, #8]
 8005492:	2b02      	cmp	r3, #2
 8005494:	dc06      	bgt.n	80054a4 <_dtoa_r+0xe0c>
 8005496:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005498:	e7f0      	b.n	800547c <_dtoa_r+0xde4>
 800549a:	f43f ac59 	beq.w	8004d50 <_dtoa_r+0x6b8>
 800549e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 80054a2:	e450      	b.n	8004d46 <_dtoa_r+0x6ae>
 80054a4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80054a6:	9309      	str	r3, [sp, #36]	; 0x24
 80054a8:	e678      	b.n	800519c <_dtoa_r+0xb04>
 80054aa:	bf00      	nop
 80054ac:	40240000 	.word	0x40240000
 80054b0:	401c0000 	.word	0x401c0000
 80054b4:	3fe00000 	.word	0x3fe00000

080054b8 <__sflush_r>:
 80054b8:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80054bc:	b29a      	uxth	r2, r3
 80054be:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80054c2:	460c      	mov	r4, r1
 80054c4:	0711      	lsls	r1, r2, #28
 80054c6:	4680      	mov	r8, r0
 80054c8:	d444      	bmi.n	8005554 <__sflush_r+0x9c>
 80054ca:	6862      	ldr	r2, [r4, #4]
 80054cc:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80054d0:	2a00      	cmp	r2, #0
 80054d2:	81a3      	strh	r3, [r4, #12]
 80054d4:	dd59      	ble.n	800558a <__sflush_r+0xd2>
 80054d6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80054d8:	2d00      	cmp	r5, #0
 80054da:	d053      	beq.n	8005584 <__sflush_r+0xcc>
 80054dc:	2200      	movs	r2, #0
 80054de:	b29b      	uxth	r3, r3
 80054e0:	f8d8 6000 	ldr.w	r6, [r8]
 80054e4:	69e1      	ldr	r1, [r4, #28]
 80054e6:	f8c8 2000 	str.w	r2, [r8]
 80054ea:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80054ee:	f040 8083 	bne.w	80055f8 <__sflush_r+0x140>
 80054f2:	2301      	movs	r3, #1
 80054f4:	4640      	mov	r0, r8
 80054f6:	47a8      	blx	r5
 80054f8:	1c42      	adds	r2, r0, #1
 80054fa:	d04a      	beq.n	8005592 <__sflush_r+0xda>
 80054fc:	89a3      	ldrh	r3, [r4, #12]
 80054fe:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005500:	69e1      	ldr	r1, [r4, #28]
 8005502:	075b      	lsls	r3, r3, #29
 8005504:	d505      	bpl.n	8005512 <__sflush_r+0x5a>
 8005506:	6862      	ldr	r2, [r4, #4]
 8005508:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800550a:	1a80      	subs	r0, r0, r2
 800550c:	b10b      	cbz	r3, 8005512 <__sflush_r+0x5a>
 800550e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005510:	1ac0      	subs	r0, r0, r3
 8005512:	4602      	mov	r2, r0
 8005514:	2300      	movs	r3, #0
 8005516:	4640      	mov	r0, r8
 8005518:	47a8      	blx	r5
 800551a:	1c47      	adds	r7, r0, #1
 800551c:	d045      	beq.n	80055aa <__sflush_r+0xf2>
 800551e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005522:	6922      	ldr	r2, [r4, #16]
 8005524:	6022      	str	r2, [r4, #0]
 8005526:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 800552a:	2200      	movs	r2, #0
 800552c:	81a3      	strh	r3, [r4, #12]
 800552e:	04db      	lsls	r3, r3, #19
 8005530:	6062      	str	r2, [r4, #4]
 8005532:	d500      	bpl.n	8005536 <__sflush_r+0x7e>
 8005534:	6520      	str	r0, [r4, #80]	; 0x50
 8005536:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005538:	f8c8 6000 	str.w	r6, [r8]
 800553c:	b311      	cbz	r1, 8005584 <__sflush_r+0xcc>
 800553e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005542:	4299      	cmp	r1, r3
 8005544:	d002      	beq.n	800554c <__sflush_r+0x94>
 8005546:	4640      	mov	r0, r8
 8005548:	f000 f95e 	bl	8005808 <_free_r>
 800554c:	2000      	movs	r0, #0
 800554e:	6320      	str	r0, [r4, #48]	; 0x30
 8005550:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005554:	6926      	ldr	r6, [r4, #16]
 8005556:	b1ae      	cbz	r6, 8005584 <__sflush_r+0xcc>
 8005558:	6825      	ldr	r5, [r4, #0]
 800555a:	6026      	str	r6, [r4, #0]
 800555c:	0792      	lsls	r2, r2, #30
 800555e:	bf0c      	ite	eq
 8005560:	6963      	ldreq	r3, [r4, #20]
 8005562:	2300      	movne	r3, #0
 8005564:	1bad      	subs	r5, r5, r6
 8005566:	60a3      	str	r3, [r4, #8]
 8005568:	e00a      	b.n	8005580 <__sflush_r+0xc8>
 800556a:	462b      	mov	r3, r5
 800556c:	4632      	mov	r2, r6
 800556e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005570:	69e1      	ldr	r1, [r4, #28]
 8005572:	4640      	mov	r0, r8
 8005574:	47b8      	blx	r7
 8005576:	2800      	cmp	r0, #0
 8005578:	eba5 0500 	sub.w	r5, r5, r0
 800557c:	4406      	add	r6, r0
 800557e:	dd2b      	ble.n	80055d8 <__sflush_r+0x120>
 8005580:	2d00      	cmp	r5, #0
 8005582:	dcf2      	bgt.n	800556a <__sflush_r+0xb2>
 8005584:	2000      	movs	r0, #0
 8005586:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800558a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800558c:	2a00      	cmp	r2, #0
 800558e:	dca2      	bgt.n	80054d6 <__sflush_r+0x1e>
 8005590:	e7f8      	b.n	8005584 <__sflush_r+0xcc>
 8005592:	f8d8 3000 	ldr.w	r3, [r8]
 8005596:	2b00      	cmp	r3, #0
 8005598:	d0b0      	beq.n	80054fc <__sflush_r+0x44>
 800559a:	2b1d      	cmp	r3, #29
 800559c:	d001      	beq.n	80055a2 <__sflush_r+0xea>
 800559e:	2b16      	cmp	r3, #22
 80055a0:	d12c      	bne.n	80055fc <__sflush_r+0x144>
 80055a2:	f8c8 6000 	str.w	r6, [r8]
 80055a6:	2000      	movs	r0, #0
 80055a8:	e7ed      	b.n	8005586 <__sflush_r+0xce>
 80055aa:	f8d8 1000 	ldr.w	r1, [r8]
 80055ae:	291d      	cmp	r1, #29
 80055b0:	d81a      	bhi.n	80055e8 <__sflush_r+0x130>
 80055b2:	4b15      	ldr	r3, [pc, #84]	; (8005608 <__sflush_r+0x150>)
 80055b4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80055b8:	40cb      	lsrs	r3, r1
 80055ba:	43db      	mvns	r3, r3
 80055bc:	f013 0301 	ands.w	r3, r3, #1
 80055c0:	d114      	bne.n	80055ec <__sflush_r+0x134>
 80055c2:	6925      	ldr	r5, [r4, #16]
 80055c4:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80055c8:	e9c4 5300 	strd	r5, r3, [r4]
 80055cc:	04d5      	lsls	r5, r2, #19
 80055ce:	81a2      	strh	r2, [r4, #12]
 80055d0:	d5b1      	bpl.n	8005536 <__sflush_r+0x7e>
 80055d2:	2900      	cmp	r1, #0
 80055d4:	d1af      	bne.n	8005536 <__sflush_r+0x7e>
 80055d6:	e7ad      	b.n	8005534 <__sflush_r+0x7c>
 80055d8:	89a3      	ldrh	r3, [r4, #12]
 80055da:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80055de:	81a3      	strh	r3, [r4, #12]
 80055e0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80055e4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80055e8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80055ec:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80055f0:	81a2      	strh	r2, [r4, #12]
 80055f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80055f6:	e7c6      	b.n	8005586 <__sflush_r+0xce>
 80055f8:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80055fa:	e782      	b.n	8005502 <__sflush_r+0x4a>
 80055fc:	89a3      	ldrh	r3, [r4, #12]
 80055fe:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005602:	81a3      	strh	r3, [r4, #12]
 8005604:	e7bf      	b.n	8005586 <__sflush_r+0xce>
 8005606:	bf00      	nop
 8005608:	20400001 	.word	0x20400001

0800560c <_fflush_r>:
 800560c:	b538      	push	{r3, r4, r5, lr}
 800560e:	460d      	mov	r5, r1
 8005610:	4604      	mov	r4, r0
 8005612:	b108      	cbz	r0, 8005618 <_fflush_r+0xc>
 8005614:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005616:	b1a3      	cbz	r3, 8005642 <_fflush_r+0x36>
 8005618:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800561c:	b1b8      	cbz	r0, 800564e <_fflush_r+0x42>
 800561e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005620:	07db      	lsls	r3, r3, #31
 8005622:	d401      	bmi.n	8005628 <_fflush_r+0x1c>
 8005624:	0581      	lsls	r1, r0, #22
 8005626:	d51a      	bpl.n	800565e <_fflush_r+0x52>
 8005628:	4620      	mov	r0, r4
 800562a:	4629      	mov	r1, r5
 800562c:	f7ff ff44 	bl	80054b8 <__sflush_r>
 8005630:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005632:	07da      	lsls	r2, r3, #31
 8005634:	4604      	mov	r4, r0
 8005636:	d402      	bmi.n	800563e <_fflush_r+0x32>
 8005638:	89ab      	ldrh	r3, [r5, #12]
 800563a:	059b      	lsls	r3, r3, #22
 800563c:	d50a      	bpl.n	8005654 <_fflush_r+0x48>
 800563e:	4620      	mov	r0, r4
 8005640:	bd38      	pop	{r3, r4, r5, pc}
 8005642:	f000 f83f 	bl	80056c4 <__sinit>
 8005646:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800564a:	2800      	cmp	r0, #0
 800564c:	d1e7      	bne.n	800561e <_fflush_r+0x12>
 800564e:	4604      	mov	r4, r0
 8005650:	4620      	mov	r0, r4
 8005652:	bd38      	pop	{r3, r4, r5, pc}
 8005654:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005656:	f000 fb87 	bl	8005d68 <__retarget_lock_release_recursive>
 800565a:	4620      	mov	r0, r4
 800565c:	bd38      	pop	{r3, r4, r5, pc}
 800565e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005660:	f000 fb80 	bl	8005d64 <__retarget_lock_acquire_recursive>
 8005664:	e7e0      	b.n	8005628 <_fflush_r+0x1c>
 8005666:	bf00      	nop

08005668 <std>:
 8005668:	b510      	push	{r4, lr}
 800566a:	2300      	movs	r3, #0
 800566c:	4604      	mov	r4, r0
 800566e:	8181      	strh	r1, [r0, #12]
 8005670:	81c2      	strh	r2, [r0, #14]
 8005672:	e9c0 3300 	strd	r3, r3, [r0]
 8005676:	6083      	str	r3, [r0, #8]
 8005678:	6643      	str	r3, [r0, #100]	; 0x64
 800567a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800567e:	6183      	str	r3, [r0, #24]
 8005680:	4619      	mov	r1, r3
 8005682:	2208      	movs	r2, #8
 8005684:	305c      	adds	r0, #92	; 0x5c
 8005686:	f7fd f8ab 	bl	80027e0 <memset>
 800568a:	4807      	ldr	r0, [pc, #28]	; (80056a8 <std+0x40>)
 800568c:	4907      	ldr	r1, [pc, #28]	; (80056ac <std+0x44>)
 800568e:	4a08      	ldr	r2, [pc, #32]	; (80056b0 <std+0x48>)
 8005690:	4b08      	ldr	r3, [pc, #32]	; (80056b4 <std+0x4c>)
 8005692:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005694:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005698:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800569c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 80056a0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80056a4:	f000 bb5a 	b.w	8005d5c <__retarget_lock_init_recursive>
 80056a8:	080068fd 	.word	0x080068fd
 80056ac:	08006921 	.word	0x08006921
 80056b0:	0800695d 	.word	0x0800695d
 80056b4:	0800697d 	.word	0x0800697d

080056b8 <_cleanup_r>:
 80056b8:	4901      	ldr	r1, [pc, #4]	; (80056c0 <_cleanup_r+0x8>)
 80056ba:	f000 bb17 	b.w	8005cec <_fwalk_reent>
 80056be:	bf00      	nop
 80056c0:	08006bed 	.word	0x08006bed

080056c4 <__sinit>:
 80056c4:	b510      	push	{r4, lr}
 80056c6:	4604      	mov	r4, r0
 80056c8:	4812      	ldr	r0, [pc, #72]	; (8005714 <__sinit+0x50>)
 80056ca:	f000 fb4b 	bl	8005d64 <__retarget_lock_acquire_recursive>
 80056ce:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80056d0:	b9d2      	cbnz	r2, 8005708 <__sinit+0x44>
 80056d2:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80056d6:	4810      	ldr	r0, [pc, #64]	; (8005718 <__sinit+0x54>)
 80056d8:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80056dc:	2103      	movs	r1, #3
 80056de:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80056e2:	63e0      	str	r0, [r4, #60]	; 0x3c
 80056e4:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80056e8:	6860      	ldr	r0, [r4, #4]
 80056ea:	2104      	movs	r1, #4
 80056ec:	f7ff ffbc 	bl	8005668 <std>
 80056f0:	2201      	movs	r2, #1
 80056f2:	2109      	movs	r1, #9
 80056f4:	68a0      	ldr	r0, [r4, #8]
 80056f6:	f7ff ffb7 	bl	8005668 <std>
 80056fa:	2202      	movs	r2, #2
 80056fc:	2112      	movs	r1, #18
 80056fe:	68e0      	ldr	r0, [r4, #12]
 8005700:	f7ff ffb2 	bl	8005668 <std>
 8005704:	2301      	movs	r3, #1
 8005706:	63a3      	str	r3, [r4, #56]	; 0x38
 8005708:	4802      	ldr	r0, [pc, #8]	; (8005714 <__sinit+0x50>)
 800570a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800570e:	f000 bb2b 	b.w	8005d68 <__retarget_lock_release_recursive>
 8005712:	bf00      	nop
 8005714:	20000c84 	.word	0x20000c84
 8005718:	080056b9 	.word	0x080056b9

0800571c <__sfp_lock_acquire>:
 800571c:	4801      	ldr	r0, [pc, #4]	; (8005724 <__sfp_lock_acquire+0x8>)
 800571e:	f000 bb21 	b.w	8005d64 <__retarget_lock_acquire_recursive>
 8005722:	bf00      	nop
 8005724:	20000c98 	.word	0x20000c98

08005728 <__sfp_lock_release>:
 8005728:	4801      	ldr	r0, [pc, #4]	; (8005730 <__sfp_lock_release+0x8>)
 800572a:	f000 bb1d 	b.w	8005d68 <__retarget_lock_release_recursive>
 800572e:	bf00      	nop
 8005730:	20000c98 	.word	0x20000c98

08005734 <__libc_fini_array>:
 8005734:	b538      	push	{r3, r4, r5, lr}
 8005736:	4c0a      	ldr	r4, [pc, #40]	; (8005760 <__libc_fini_array+0x2c>)
 8005738:	4d0a      	ldr	r5, [pc, #40]	; (8005764 <__libc_fini_array+0x30>)
 800573a:	1b64      	subs	r4, r4, r5
 800573c:	10a4      	asrs	r4, r4, #2
 800573e:	d00a      	beq.n	8005756 <__libc_fini_array+0x22>
 8005740:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005744:	3b01      	subs	r3, #1
 8005746:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800574a:	3c01      	subs	r4, #1
 800574c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005750:	4798      	blx	r3
 8005752:	2c00      	cmp	r4, #0
 8005754:	d1f9      	bne.n	800574a <__libc_fini_array+0x16>
 8005756:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800575a:	f001 bc3b 	b.w	8006fd4 <_fini>
 800575e:	bf00      	nop
 8005760:	0800739c 	.word	0x0800739c
 8005764:	08007398 	.word	0x08007398

08005768 <_malloc_trim_r>:
 8005768:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800576a:	4f24      	ldr	r7, [pc, #144]	; (80057fc <_malloc_trim_r+0x94>)
 800576c:	460c      	mov	r4, r1
 800576e:	4606      	mov	r6, r0
 8005770:	f7fd f880 	bl	8002874 <__malloc_lock>
 8005774:	68bb      	ldr	r3, [r7, #8]
 8005776:	685d      	ldr	r5, [r3, #4]
 8005778:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800577c:	310f      	adds	r1, #15
 800577e:	f025 0503 	bic.w	r5, r5, #3
 8005782:	4429      	add	r1, r5
 8005784:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005788:	f021 010f 	bic.w	r1, r1, #15
 800578c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005790:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005794:	db07      	blt.n	80057a6 <_malloc_trim_r+0x3e>
 8005796:	2100      	movs	r1, #0
 8005798:	4630      	mov	r0, r6
 800579a:	f7fd f8e1 	bl	8002960 <_sbrk_r>
 800579e:	68bb      	ldr	r3, [r7, #8]
 80057a0:	442b      	add	r3, r5
 80057a2:	4298      	cmp	r0, r3
 80057a4:	d004      	beq.n	80057b0 <_malloc_trim_r+0x48>
 80057a6:	4630      	mov	r0, r6
 80057a8:	f7fd f86a 	bl	8002880 <__malloc_unlock>
 80057ac:	2000      	movs	r0, #0
 80057ae:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80057b0:	4261      	negs	r1, r4
 80057b2:	4630      	mov	r0, r6
 80057b4:	f7fd f8d4 	bl	8002960 <_sbrk_r>
 80057b8:	3001      	adds	r0, #1
 80057ba:	d00d      	beq.n	80057d8 <_malloc_trim_r+0x70>
 80057bc:	4b10      	ldr	r3, [pc, #64]	; (8005800 <_malloc_trim_r+0x98>)
 80057be:	68ba      	ldr	r2, [r7, #8]
 80057c0:	6819      	ldr	r1, [r3, #0]
 80057c2:	1b2d      	subs	r5, r5, r4
 80057c4:	f045 0501 	orr.w	r5, r5, #1
 80057c8:	4630      	mov	r0, r6
 80057ca:	1b09      	subs	r1, r1, r4
 80057cc:	6055      	str	r5, [r2, #4]
 80057ce:	6019      	str	r1, [r3, #0]
 80057d0:	f7fd f856 	bl	8002880 <__malloc_unlock>
 80057d4:	2001      	movs	r0, #1
 80057d6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80057d8:	2100      	movs	r1, #0
 80057da:	4630      	mov	r0, r6
 80057dc:	f7fd f8c0 	bl	8002960 <_sbrk_r>
 80057e0:	68ba      	ldr	r2, [r7, #8]
 80057e2:	1a83      	subs	r3, r0, r2
 80057e4:	2b0f      	cmp	r3, #15
 80057e6:	ddde      	ble.n	80057a6 <_malloc_trim_r+0x3e>
 80057e8:	4c06      	ldr	r4, [pc, #24]	; (8005804 <_malloc_trim_r+0x9c>)
 80057ea:	4905      	ldr	r1, [pc, #20]	; (8005800 <_malloc_trim_r+0x98>)
 80057ec:	6824      	ldr	r4, [r4, #0]
 80057ee:	f043 0301 	orr.w	r3, r3, #1
 80057f2:	1b00      	subs	r0, r0, r4
 80057f4:	6053      	str	r3, [r2, #4]
 80057f6:	6008      	str	r0, [r1, #0]
 80057f8:	e7d5      	b.n	80057a6 <_malloc_trim_r+0x3e>
 80057fa:	bf00      	nop
 80057fc:	200005d8 	.word	0x200005d8
 8005800:	20000bfc 	.word	0x20000bfc
 8005804:	200009e0 	.word	0x200009e0

08005808 <_free_r>:
 8005808:	2900      	cmp	r1, #0
 800580a:	d053      	beq.n	80058b4 <_free_r+0xac>
 800580c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800580e:	460c      	mov	r4, r1
 8005810:	4606      	mov	r6, r0
 8005812:	f7fd f82f 	bl	8002874 <__malloc_lock>
 8005816:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800581a:	4f71      	ldr	r7, [pc, #452]	; (80059e0 <_free_r+0x1d8>)
 800581c:	f02c 0101 	bic.w	r1, ip, #1
 8005820:	f1a4 0508 	sub.w	r5, r4, #8
 8005824:	186b      	adds	r3, r5, r1
 8005826:	68b8      	ldr	r0, [r7, #8]
 8005828:	685a      	ldr	r2, [r3, #4]
 800582a:	4298      	cmp	r0, r3
 800582c:	f022 0203 	bic.w	r2, r2, #3
 8005830:	d053      	beq.n	80058da <_free_r+0xd2>
 8005832:	f01c 0f01 	tst.w	ip, #1
 8005836:	605a      	str	r2, [r3, #4]
 8005838:	eb03 0002 	add.w	r0, r3, r2
 800583c:	d13b      	bne.n	80058b6 <_free_r+0xae>
 800583e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005842:	6840      	ldr	r0, [r0, #4]
 8005844:	eba5 050c 	sub.w	r5, r5, ip
 8005848:	f107 0e08 	add.w	lr, r7, #8
 800584c:	68ac      	ldr	r4, [r5, #8]
 800584e:	4574      	cmp	r4, lr
 8005850:	4461      	add	r1, ip
 8005852:	f000 0001 	and.w	r0, r0, #1
 8005856:	d075      	beq.n	8005944 <_free_r+0x13c>
 8005858:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800585c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005860:	f8cc 4008 	str.w	r4, [ip, #8]
 8005864:	b360      	cbz	r0, 80058c0 <_free_r+0xb8>
 8005866:	f041 0301 	orr.w	r3, r1, #1
 800586a:	606b      	str	r3, [r5, #4]
 800586c:	5069      	str	r1, [r5, r1]
 800586e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005872:	d350      	bcc.n	8005916 <_free_r+0x10e>
 8005874:	0a4b      	lsrs	r3, r1, #9
 8005876:	2b04      	cmp	r3, #4
 8005878:	d870      	bhi.n	800595c <_free_r+0x154>
 800587a:	098b      	lsrs	r3, r1, #6
 800587c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005880:	00e4      	lsls	r4, r4, #3
 8005882:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005886:	1938      	adds	r0, r7, r4
 8005888:	593b      	ldr	r3, [r7, r4]
 800588a:	3808      	subs	r0, #8
 800588c:	4298      	cmp	r0, r3
 800588e:	d078      	beq.n	8005982 <_free_r+0x17a>
 8005890:	685a      	ldr	r2, [r3, #4]
 8005892:	f022 0203 	bic.w	r2, r2, #3
 8005896:	428a      	cmp	r2, r1
 8005898:	d971      	bls.n	800597e <_free_r+0x176>
 800589a:	689b      	ldr	r3, [r3, #8]
 800589c:	4298      	cmp	r0, r3
 800589e:	d1f7      	bne.n	8005890 <_free_r+0x88>
 80058a0:	68c3      	ldr	r3, [r0, #12]
 80058a2:	e9c5 0302 	strd	r0, r3, [r5, #8]
 80058a6:	609d      	str	r5, [r3, #8]
 80058a8:	60c5      	str	r5, [r0, #12]
 80058aa:	4630      	mov	r0, r6
 80058ac:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80058b0:	f7fc bfe6 	b.w	8002880 <__malloc_unlock>
 80058b4:	4770      	bx	lr
 80058b6:	6840      	ldr	r0, [r0, #4]
 80058b8:	f000 0001 	and.w	r0, r0, #1
 80058bc:	2800      	cmp	r0, #0
 80058be:	d1d2      	bne.n	8005866 <_free_r+0x5e>
 80058c0:	6898      	ldr	r0, [r3, #8]
 80058c2:	4c48      	ldr	r4, [pc, #288]	; (80059e4 <_free_r+0x1dc>)
 80058c4:	4411      	add	r1, r2
 80058c6:	42a0      	cmp	r0, r4
 80058c8:	f041 0201 	orr.w	r2, r1, #1
 80058cc:	d062      	beq.n	8005994 <_free_r+0x18c>
 80058ce:	68db      	ldr	r3, [r3, #12]
 80058d0:	60c3      	str	r3, [r0, #12]
 80058d2:	6098      	str	r0, [r3, #8]
 80058d4:	606a      	str	r2, [r5, #4]
 80058d6:	5069      	str	r1, [r5, r1]
 80058d8:	e7c9      	b.n	800586e <_free_r+0x66>
 80058da:	f01c 0f01 	tst.w	ip, #1
 80058de:	440a      	add	r2, r1
 80058e0:	d107      	bne.n	80058f2 <_free_r+0xea>
 80058e2:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80058e6:	1aed      	subs	r5, r5, r3
 80058e8:	441a      	add	r2, r3
 80058ea:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80058ee:	60cb      	str	r3, [r1, #12]
 80058f0:	6099      	str	r1, [r3, #8]
 80058f2:	4b3d      	ldr	r3, [pc, #244]	; (80059e8 <_free_r+0x1e0>)
 80058f4:	681b      	ldr	r3, [r3, #0]
 80058f6:	f042 0101 	orr.w	r1, r2, #1
 80058fa:	4293      	cmp	r3, r2
 80058fc:	6069      	str	r1, [r5, #4]
 80058fe:	60bd      	str	r5, [r7, #8]
 8005900:	d804      	bhi.n	800590c <_free_r+0x104>
 8005902:	4b3a      	ldr	r3, [pc, #232]	; (80059ec <_free_r+0x1e4>)
 8005904:	4630      	mov	r0, r6
 8005906:	6819      	ldr	r1, [r3, #0]
 8005908:	f7ff ff2e 	bl	8005768 <_malloc_trim_r>
 800590c:	4630      	mov	r0, r6
 800590e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005912:	f7fc bfb5 	b.w	8002880 <__malloc_unlock>
 8005916:	08c9      	lsrs	r1, r1, #3
 8005918:	6878      	ldr	r0, [r7, #4]
 800591a:	1c4a      	adds	r2, r1, #1
 800591c:	2301      	movs	r3, #1
 800591e:	1089      	asrs	r1, r1, #2
 8005920:	408b      	lsls	r3, r1
 8005922:	4303      	orrs	r3, r0
 8005924:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005928:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 800592c:	607b      	str	r3, [r7, #4]
 800592e:	3908      	subs	r1, #8
 8005930:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005934:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005938:	60c5      	str	r5, [r0, #12]
 800593a:	4630      	mov	r0, r6
 800593c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005940:	f7fc bf9e 	b.w	8002880 <__malloc_unlock>
 8005944:	2800      	cmp	r0, #0
 8005946:	d145      	bne.n	80059d4 <_free_r+0x1cc>
 8005948:	440a      	add	r2, r1
 800594a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800594e:	f042 0001 	orr.w	r0, r2, #1
 8005952:	60cb      	str	r3, [r1, #12]
 8005954:	6099      	str	r1, [r3, #8]
 8005956:	6068      	str	r0, [r5, #4]
 8005958:	50aa      	str	r2, [r5, r2]
 800595a:	e7d7      	b.n	800590c <_free_r+0x104>
 800595c:	2b14      	cmp	r3, #20
 800595e:	d908      	bls.n	8005972 <_free_r+0x16a>
 8005960:	2b54      	cmp	r3, #84	; 0x54
 8005962:	d81e      	bhi.n	80059a2 <_free_r+0x19a>
 8005964:	0b0b      	lsrs	r3, r1, #12
 8005966:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800596a:	00e4      	lsls	r4, r4, #3
 800596c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005970:	e789      	b.n	8005886 <_free_r+0x7e>
 8005972:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005976:	00e4      	lsls	r4, r4, #3
 8005978:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800597c:	e783      	b.n	8005886 <_free_r+0x7e>
 800597e:	4618      	mov	r0, r3
 8005980:	e78e      	b.n	80058a0 <_free_r+0x98>
 8005982:	1093      	asrs	r3, r2, #2
 8005984:	6879      	ldr	r1, [r7, #4]
 8005986:	2201      	movs	r2, #1
 8005988:	fa02 f303 	lsl.w	r3, r2, r3
 800598c:	430b      	orrs	r3, r1
 800598e:	607b      	str	r3, [r7, #4]
 8005990:	4603      	mov	r3, r0
 8005992:	e786      	b.n	80058a2 <_free_r+0x9a>
 8005994:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005998:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800599c:	606a      	str	r2, [r5, #4]
 800599e:	5069      	str	r1, [r5, r1]
 80059a0:	e7b4      	b.n	800590c <_free_r+0x104>
 80059a2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80059a6:	d806      	bhi.n	80059b6 <_free_r+0x1ae>
 80059a8:	0bcb      	lsrs	r3, r1, #15
 80059aa:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80059ae:	00e4      	lsls	r4, r4, #3
 80059b0:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80059b4:	e767      	b.n	8005886 <_free_r+0x7e>
 80059b6:	f240 5254 	movw	r2, #1364	; 0x554
 80059ba:	4293      	cmp	r3, r2
 80059bc:	d806      	bhi.n	80059cc <_free_r+0x1c4>
 80059be:	0c8b      	lsrs	r3, r1, #18
 80059c0:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80059c4:	00e4      	lsls	r4, r4, #3
 80059c6:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80059ca:	e75c      	b.n	8005886 <_free_r+0x7e>
 80059cc:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80059d0:	227e      	movs	r2, #126	; 0x7e
 80059d2:	e758      	b.n	8005886 <_free_r+0x7e>
 80059d4:	f041 0201 	orr.w	r2, r1, #1
 80059d8:	606a      	str	r2, [r5, #4]
 80059da:	6019      	str	r1, [r3, #0]
 80059dc:	e796      	b.n	800590c <_free_r+0x104>
 80059de:	bf00      	nop
 80059e0:	200005d8 	.word	0x200005d8
 80059e4:	200005e0 	.word	0x200005e0
 80059e8:	200009e4 	.word	0x200009e4
 80059ec:	20000c2c 	.word	0x20000c2c

080059f0 <__sfvwrite_r>:
 80059f0:	6893      	ldr	r3, [r2, #8]
 80059f2:	2b00      	cmp	r3, #0
 80059f4:	f000 80e4 	beq.w	8005bc0 <__sfvwrite_r+0x1d0>
 80059f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80059fc:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005a00:	b29b      	uxth	r3, r3
 8005a02:	460c      	mov	r4, r1
 8005a04:	0719      	lsls	r1, r3, #28
 8005a06:	b083      	sub	sp, #12
 8005a08:	4682      	mov	sl, r0
 8005a0a:	4690      	mov	r8, r2
 8005a0c:	d535      	bpl.n	8005a7a <__sfvwrite_r+0x8a>
 8005a0e:	6922      	ldr	r2, [r4, #16]
 8005a10:	b39a      	cbz	r2, 8005a7a <__sfvwrite_r+0x8a>
 8005a12:	f013 0202 	ands.w	r2, r3, #2
 8005a16:	f8d8 6000 	ldr.w	r6, [r8]
 8005a1a:	d03d      	beq.n	8005a98 <__sfvwrite_r+0xa8>
 8005a1c:	2700      	movs	r7, #0
 8005a1e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005a22:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005a26:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005ce8 <__sfvwrite_r+0x2f8>
 8005a2a:	463d      	mov	r5, r7
 8005a2c:	454d      	cmp	r5, r9
 8005a2e:	462b      	mov	r3, r5
 8005a30:	463a      	mov	r2, r7
 8005a32:	bf28      	it	cs
 8005a34:	464b      	movcs	r3, r9
 8005a36:	4661      	mov	r1, ip
 8005a38:	4650      	mov	r0, sl
 8005a3a:	b1d5      	cbz	r5, 8005a72 <__sfvwrite_r+0x82>
 8005a3c:	47d8      	blx	fp
 8005a3e:	2800      	cmp	r0, #0
 8005a40:	f340 80c6 	ble.w	8005bd0 <__sfvwrite_r+0x1e0>
 8005a44:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005a48:	1a1b      	subs	r3, r3, r0
 8005a4a:	4407      	add	r7, r0
 8005a4c:	1a2d      	subs	r5, r5, r0
 8005a4e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005a52:	2b00      	cmp	r3, #0
 8005a54:	f000 80b0 	beq.w	8005bb8 <__sfvwrite_r+0x1c8>
 8005a58:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005a5c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005a60:	454d      	cmp	r5, r9
 8005a62:	462b      	mov	r3, r5
 8005a64:	463a      	mov	r2, r7
 8005a66:	bf28      	it	cs
 8005a68:	464b      	movcs	r3, r9
 8005a6a:	4661      	mov	r1, ip
 8005a6c:	4650      	mov	r0, sl
 8005a6e:	2d00      	cmp	r5, #0
 8005a70:	d1e4      	bne.n	8005a3c <__sfvwrite_r+0x4c>
 8005a72:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005a76:	3608      	adds	r6, #8
 8005a78:	e7d8      	b.n	8005a2c <__sfvwrite_r+0x3c>
 8005a7a:	4621      	mov	r1, r4
 8005a7c:	4650      	mov	r0, sl
 8005a7e:	f7fe fd03 	bl	8004488 <__swsetup_r>
 8005a82:	2800      	cmp	r0, #0
 8005a84:	f040 812a 	bne.w	8005cdc <__sfvwrite_r+0x2ec>
 8005a88:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a8c:	f8d8 6000 	ldr.w	r6, [r8]
 8005a90:	b29b      	uxth	r3, r3
 8005a92:	f013 0202 	ands.w	r2, r3, #2
 8005a96:	d1c1      	bne.n	8005a1c <__sfvwrite_r+0x2c>
 8005a98:	f013 0901 	ands.w	r9, r3, #1
 8005a9c:	d15d      	bne.n	8005b5a <__sfvwrite_r+0x16a>
 8005a9e:	68a7      	ldr	r7, [r4, #8]
 8005aa0:	6820      	ldr	r0, [r4, #0]
 8005aa2:	464d      	mov	r5, r9
 8005aa4:	2d00      	cmp	r5, #0
 8005aa6:	d054      	beq.n	8005b52 <__sfvwrite_r+0x162>
 8005aa8:	059a      	lsls	r2, r3, #22
 8005aaa:	f140 809b 	bpl.w	8005be4 <__sfvwrite_r+0x1f4>
 8005aae:	42af      	cmp	r7, r5
 8005ab0:	46bb      	mov	fp, r7
 8005ab2:	f200 80d8 	bhi.w	8005c66 <__sfvwrite_r+0x276>
 8005ab6:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005aba:	d02f      	beq.n	8005b1c <__sfvwrite_r+0x12c>
 8005abc:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005ac0:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005ac4:	eba0 0b01 	sub.w	fp, r0, r1
 8005ac8:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005acc:	1c68      	adds	r0, r5, #1
 8005ace:	107f      	asrs	r7, r7, #1
 8005ad0:	4458      	add	r0, fp
 8005ad2:	42b8      	cmp	r0, r7
 8005ad4:	463a      	mov	r2, r7
 8005ad6:	bf84      	itt	hi
 8005ad8:	4607      	movhi	r7, r0
 8005ada:	463a      	movhi	r2, r7
 8005adc:	055b      	lsls	r3, r3, #21
 8005ade:	f140 80d3 	bpl.w	8005c88 <__sfvwrite_r+0x298>
 8005ae2:	4611      	mov	r1, r2
 8005ae4:	4650      	mov	r0, sl
 8005ae6:	f7fc fbd7 	bl	8002298 <_malloc_r>
 8005aea:	2800      	cmp	r0, #0
 8005aec:	f000 80f0 	beq.w	8005cd0 <__sfvwrite_r+0x2e0>
 8005af0:	465a      	mov	r2, fp
 8005af2:	6921      	ldr	r1, [r4, #16]
 8005af4:	9001      	str	r0, [sp, #4]
 8005af6:	f7fa fd03 	bl	8000500 <memcpy>
 8005afa:	89a2      	ldrh	r2, [r4, #12]
 8005afc:	9b01      	ldr	r3, [sp, #4]
 8005afe:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005b02:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005b06:	81a2      	strh	r2, [r4, #12]
 8005b08:	eba7 020b 	sub.w	r2, r7, fp
 8005b0c:	eb03 000b 	add.w	r0, r3, fp
 8005b10:	6167      	str	r7, [r4, #20]
 8005b12:	6123      	str	r3, [r4, #16]
 8005b14:	6020      	str	r0, [r4, #0]
 8005b16:	60a2      	str	r2, [r4, #8]
 8005b18:	462f      	mov	r7, r5
 8005b1a:	46ab      	mov	fp, r5
 8005b1c:	465a      	mov	r2, fp
 8005b1e:	4649      	mov	r1, r9
 8005b20:	f000 f99c 	bl	8005e5c <memmove>
 8005b24:	68a2      	ldr	r2, [r4, #8]
 8005b26:	6823      	ldr	r3, [r4, #0]
 8005b28:	1bd2      	subs	r2, r2, r7
 8005b2a:	445b      	add	r3, fp
 8005b2c:	462f      	mov	r7, r5
 8005b2e:	60a2      	str	r2, [r4, #8]
 8005b30:	6023      	str	r3, [r4, #0]
 8005b32:	2500      	movs	r5, #0
 8005b34:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005b38:	1bdb      	subs	r3, r3, r7
 8005b3a:	44b9      	add	r9, r7
 8005b3c:	f8c8 3008 	str.w	r3, [r8, #8]
 8005b40:	2b00      	cmp	r3, #0
 8005b42:	d039      	beq.n	8005bb8 <__sfvwrite_r+0x1c8>
 8005b44:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b48:	68a7      	ldr	r7, [r4, #8]
 8005b4a:	6820      	ldr	r0, [r4, #0]
 8005b4c:	b29b      	uxth	r3, r3
 8005b4e:	2d00      	cmp	r5, #0
 8005b50:	d1aa      	bne.n	8005aa8 <__sfvwrite_r+0xb8>
 8005b52:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005b56:	3608      	adds	r6, #8
 8005b58:	e7a4      	b.n	8005aa4 <__sfvwrite_r+0xb4>
 8005b5a:	4633      	mov	r3, r6
 8005b5c:	4691      	mov	r9, r2
 8005b5e:	4610      	mov	r0, r2
 8005b60:	4617      	mov	r7, r2
 8005b62:	464e      	mov	r6, r9
 8005b64:	469b      	mov	fp, r3
 8005b66:	2f00      	cmp	r7, #0
 8005b68:	d06b      	beq.n	8005c42 <__sfvwrite_r+0x252>
 8005b6a:	2800      	cmp	r0, #0
 8005b6c:	d071      	beq.n	8005c52 <__sfvwrite_r+0x262>
 8005b6e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005b72:	6820      	ldr	r0, [r4, #0]
 8005b74:	45b9      	cmp	r9, r7
 8005b76:	464b      	mov	r3, r9
 8005b78:	bf28      	it	cs
 8005b7a:	463b      	movcs	r3, r7
 8005b7c:	4288      	cmp	r0, r1
 8005b7e:	d903      	bls.n	8005b88 <__sfvwrite_r+0x198>
 8005b80:	68a5      	ldr	r5, [r4, #8]
 8005b82:	4415      	add	r5, r2
 8005b84:	42ab      	cmp	r3, r5
 8005b86:	dc71      	bgt.n	8005c6c <__sfvwrite_r+0x27c>
 8005b88:	429a      	cmp	r2, r3
 8005b8a:	f300 8093 	bgt.w	8005cb4 <__sfvwrite_r+0x2c4>
 8005b8e:	4613      	mov	r3, r2
 8005b90:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005b92:	69e1      	ldr	r1, [r4, #28]
 8005b94:	4632      	mov	r2, r6
 8005b96:	4650      	mov	r0, sl
 8005b98:	47a8      	blx	r5
 8005b9a:	1e05      	subs	r5, r0, #0
 8005b9c:	dd18      	ble.n	8005bd0 <__sfvwrite_r+0x1e0>
 8005b9e:	ebb9 0905 	subs.w	r9, r9, r5
 8005ba2:	d00f      	beq.n	8005bc4 <__sfvwrite_r+0x1d4>
 8005ba4:	2001      	movs	r0, #1
 8005ba6:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005baa:	1b5b      	subs	r3, r3, r5
 8005bac:	442e      	add	r6, r5
 8005bae:	1b7f      	subs	r7, r7, r5
 8005bb0:	f8c8 3008 	str.w	r3, [r8, #8]
 8005bb4:	2b00      	cmp	r3, #0
 8005bb6:	d1d6      	bne.n	8005b66 <__sfvwrite_r+0x176>
 8005bb8:	2000      	movs	r0, #0
 8005bba:	b003      	add	sp, #12
 8005bbc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005bc0:	2000      	movs	r0, #0
 8005bc2:	4770      	bx	lr
 8005bc4:	4621      	mov	r1, r4
 8005bc6:	4650      	mov	r0, sl
 8005bc8:	f7ff fd20 	bl	800560c <_fflush_r>
 8005bcc:	2800      	cmp	r0, #0
 8005bce:	d0ea      	beq.n	8005ba6 <__sfvwrite_r+0x1b6>
 8005bd0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005bd4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005bd8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005bdc:	81a3      	strh	r3, [r4, #12]
 8005bde:	b003      	add	sp, #12
 8005be0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005be4:	6923      	ldr	r3, [r4, #16]
 8005be6:	4283      	cmp	r3, r0
 8005be8:	d315      	bcc.n	8005c16 <__sfvwrite_r+0x226>
 8005bea:	6961      	ldr	r1, [r4, #20]
 8005bec:	42a9      	cmp	r1, r5
 8005bee:	d812      	bhi.n	8005c16 <__sfvwrite_r+0x226>
 8005bf0:	4b3c      	ldr	r3, [pc, #240]	; (8005ce4 <__sfvwrite_r+0x2f4>)
 8005bf2:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005bf4:	429d      	cmp	r5, r3
 8005bf6:	bf94      	ite	ls
 8005bf8:	462b      	movls	r3, r5
 8005bfa:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005bfe:	464a      	mov	r2, r9
 8005c00:	fb93 f3f1 	sdiv	r3, r3, r1
 8005c04:	4650      	mov	r0, sl
 8005c06:	fb01 f303 	mul.w	r3, r1, r3
 8005c0a:	69e1      	ldr	r1, [r4, #28]
 8005c0c:	47b8      	blx	r7
 8005c0e:	1e07      	subs	r7, r0, #0
 8005c10:	ddde      	ble.n	8005bd0 <__sfvwrite_r+0x1e0>
 8005c12:	1bed      	subs	r5, r5, r7
 8005c14:	e78e      	b.n	8005b34 <__sfvwrite_r+0x144>
 8005c16:	42af      	cmp	r7, r5
 8005c18:	bf28      	it	cs
 8005c1a:	462f      	movcs	r7, r5
 8005c1c:	463a      	mov	r2, r7
 8005c1e:	4649      	mov	r1, r9
 8005c20:	f000 f91c 	bl	8005e5c <memmove>
 8005c24:	68a3      	ldr	r3, [r4, #8]
 8005c26:	6822      	ldr	r2, [r4, #0]
 8005c28:	1bdb      	subs	r3, r3, r7
 8005c2a:	443a      	add	r2, r7
 8005c2c:	60a3      	str	r3, [r4, #8]
 8005c2e:	6022      	str	r2, [r4, #0]
 8005c30:	2b00      	cmp	r3, #0
 8005c32:	d1ee      	bne.n	8005c12 <__sfvwrite_r+0x222>
 8005c34:	4621      	mov	r1, r4
 8005c36:	4650      	mov	r0, sl
 8005c38:	f7ff fce8 	bl	800560c <_fflush_r>
 8005c3c:	2800      	cmp	r0, #0
 8005c3e:	d0e8      	beq.n	8005c12 <__sfvwrite_r+0x222>
 8005c40:	e7c6      	b.n	8005bd0 <__sfvwrite_r+0x1e0>
 8005c42:	f10b 0308 	add.w	r3, fp, #8
 8005c46:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005c4a:	469b      	mov	fp, r3
 8005c4c:	3308      	adds	r3, #8
 8005c4e:	2f00      	cmp	r7, #0
 8005c50:	d0f9      	beq.n	8005c46 <__sfvwrite_r+0x256>
 8005c52:	463a      	mov	r2, r7
 8005c54:	210a      	movs	r1, #10
 8005c56:	4630      	mov	r0, r6
 8005c58:	f7fa fd62 	bl	8000720 <memchr>
 8005c5c:	b338      	cbz	r0, 8005cae <__sfvwrite_r+0x2be>
 8005c5e:	3001      	adds	r0, #1
 8005c60:	eba0 0906 	sub.w	r9, r0, r6
 8005c64:	e783      	b.n	8005b6e <__sfvwrite_r+0x17e>
 8005c66:	462f      	mov	r7, r5
 8005c68:	46ab      	mov	fp, r5
 8005c6a:	e757      	b.n	8005b1c <__sfvwrite_r+0x12c>
 8005c6c:	4631      	mov	r1, r6
 8005c6e:	462a      	mov	r2, r5
 8005c70:	f000 f8f4 	bl	8005e5c <memmove>
 8005c74:	6823      	ldr	r3, [r4, #0]
 8005c76:	442b      	add	r3, r5
 8005c78:	6023      	str	r3, [r4, #0]
 8005c7a:	4621      	mov	r1, r4
 8005c7c:	4650      	mov	r0, sl
 8005c7e:	f7ff fcc5 	bl	800560c <_fflush_r>
 8005c82:	2800      	cmp	r0, #0
 8005c84:	d08b      	beq.n	8005b9e <__sfvwrite_r+0x1ae>
 8005c86:	e7a3      	b.n	8005bd0 <__sfvwrite_r+0x1e0>
 8005c88:	4650      	mov	r0, sl
 8005c8a:	f000 fc55 	bl	8006538 <_realloc_r>
 8005c8e:	4603      	mov	r3, r0
 8005c90:	2800      	cmp	r0, #0
 8005c92:	f47f af39 	bne.w	8005b08 <__sfvwrite_r+0x118>
 8005c96:	6921      	ldr	r1, [r4, #16]
 8005c98:	4650      	mov	r0, sl
 8005c9a:	f7ff fdb5 	bl	8005808 <_free_r>
 8005c9e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005ca2:	220c      	movs	r2, #12
 8005ca4:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005ca8:	f8ca 2000 	str.w	r2, [sl]
 8005cac:	e792      	b.n	8005bd4 <__sfvwrite_r+0x1e4>
 8005cae:	f107 0901 	add.w	r9, r7, #1
 8005cb2:	e75c      	b.n	8005b6e <__sfvwrite_r+0x17e>
 8005cb4:	461a      	mov	r2, r3
 8005cb6:	4631      	mov	r1, r6
 8005cb8:	9301      	str	r3, [sp, #4]
 8005cba:	f000 f8cf 	bl	8005e5c <memmove>
 8005cbe:	9b01      	ldr	r3, [sp, #4]
 8005cc0:	68a1      	ldr	r1, [r4, #8]
 8005cc2:	6822      	ldr	r2, [r4, #0]
 8005cc4:	1ac9      	subs	r1, r1, r3
 8005cc6:	441a      	add	r2, r3
 8005cc8:	60a1      	str	r1, [r4, #8]
 8005cca:	6022      	str	r2, [r4, #0]
 8005ccc:	461d      	mov	r5, r3
 8005cce:	e766      	b.n	8005b9e <__sfvwrite_r+0x1ae>
 8005cd0:	230c      	movs	r3, #12
 8005cd2:	f8ca 3000 	str.w	r3, [sl]
 8005cd6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005cda:	e77b      	b.n	8005bd4 <__sfvwrite_r+0x1e4>
 8005cdc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005ce0:	e76b      	b.n	8005bba <__sfvwrite_r+0x1ca>
 8005ce2:	bf00      	nop
 8005ce4:	7ffffffe 	.word	0x7ffffffe
 8005ce8:	7ffffc00 	.word	0x7ffffc00

08005cec <_fwalk_reent>:
 8005cec:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005cf0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005cf4:	d01f      	beq.n	8005d36 <_fwalk_reent+0x4a>
 8005cf6:	4688      	mov	r8, r1
 8005cf8:	4606      	mov	r6, r0
 8005cfa:	f04f 0900 	mov.w	r9, #0
 8005cfe:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005d02:	3d01      	subs	r5, #1
 8005d04:	d411      	bmi.n	8005d2a <_fwalk_reent+0x3e>
 8005d06:	89a3      	ldrh	r3, [r4, #12]
 8005d08:	2b01      	cmp	r3, #1
 8005d0a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005d0e:	4621      	mov	r1, r4
 8005d10:	4630      	mov	r0, r6
 8005d12:	d906      	bls.n	8005d22 <_fwalk_reent+0x36>
 8005d14:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005d18:	3301      	adds	r3, #1
 8005d1a:	d002      	beq.n	8005d22 <_fwalk_reent+0x36>
 8005d1c:	47c0      	blx	r8
 8005d1e:	ea49 0900 	orr.w	r9, r9, r0
 8005d22:	1c6b      	adds	r3, r5, #1
 8005d24:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005d28:	d1ed      	bne.n	8005d06 <_fwalk_reent+0x1a>
 8005d2a:	683f      	ldr	r7, [r7, #0]
 8005d2c:	2f00      	cmp	r7, #0
 8005d2e:	d1e6      	bne.n	8005cfe <_fwalk_reent+0x12>
 8005d30:	4648      	mov	r0, r9
 8005d32:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005d36:	46b9      	mov	r9, r7
 8005d38:	4648      	mov	r0, r9
 8005d3a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005d3e:	bf00      	nop

08005d40 <_localeconv_r>:
 8005d40:	4a04      	ldr	r2, [pc, #16]	; (8005d54 <_localeconv_r+0x14>)
 8005d42:	4b05      	ldr	r3, [pc, #20]	; (8005d58 <_localeconv_r+0x18>)
 8005d44:	6812      	ldr	r2, [r2, #0]
 8005d46:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005d48:	2800      	cmp	r0, #0
 8005d4a:	bf08      	it	eq
 8005d4c:	4618      	moveq	r0, r3
 8005d4e:	30f0      	adds	r0, #240	; 0xf0
 8005d50:	4770      	bx	lr
 8005d52:	bf00      	nop
 8005d54:	200001a8 	.word	0x200001a8
 8005d58:	200009ec 	.word	0x200009ec

08005d5c <__retarget_lock_init_recursive>:
 8005d5c:	4770      	bx	lr
 8005d5e:	bf00      	nop

08005d60 <__retarget_lock_close_recursive>:
 8005d60:	4770      	bx	lr
 8005d62:	bf00      	nop

08005d64 <__retarget_lock_acquire_recursive>:
 8005d64:	4770      	bx	lr
 8005d66:	bf00      	nop

08005d68 <__retarget_lock_release_recursive>:
 8005d68:	4770      	bx	lr
 8005d6a:	bf00      	nop

08005d6c <__swhatbuf_r>:
 8005d6c:	b570      	push	{r4, r5, r6, lr}
 8005d6e:	460c      	mov	r4, r1
 8005d70:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005d74:	2900      	cmp	r1, #0
 8005d76:	b096      	sub	sp, #88	; 0x58
 8005d78:	4615      	mov	r5, r2
 8005d7a:	461e      	mov	r6, r3
 8005d7c:	da0f      	bge.n	8005d9e <__swhatbuf_r+0x32>
 8005d7e:	89a2      	ldrh	r2, [r4, #12]
 8005d80:	2300      	movs	r3, #0
 8005d82:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005d86:	6033      	str	r3, [r6, #0]
 8005d88:	d104      	bne.n	8005d94 <__swhatbuf_r+0x28>
 8005d8a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005d8e:	602b      	str	r3, [r5, #0]
 8005d90:	b016      	add	sp, #88	; 0x58
 8005d92:	bd70      	pop	{r4, r5, r6, pc}
 8005d94:	2240      	movs	r2, #64	; 0x40
 8005d96:	4618      	mov	r0, r3
 8005d98:	602a      	str	r2, [r5, #0]
 8005d9a:	b016      	add	sp, #88	; 0x58
 8005d9c:	bd70      	pop	{r4, r5, r6, pc}
 8005d9e:	466a      	mov	r2, sp
 8005da0:	f001 f80e 	bl	8006dc0 <_fstat_r>
 8005da4:	2800      	cmp	r0, #0
 8005da6:	dbea      	blt.n	8005d7e <__swhatbuf_r+0x12>
 8005da8:	9b01      	ldr	r3, [sp, #4]
 8005daa:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005dae:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005db2:	fab3 f383 	clz	r3, r3
 8005db6:	095b      	lsrs	r3, r3, #5
 8005db8:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005dbc:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005dc0:	6033      	str	r3, [r6, #0]
 8005dc2:	602a      	str	r2, [r5, #0]
 8005dc4:	b016      	add	sp, #88	; 0x58
 8005dc6:	bd70      	pop	{r4, r5, r6, pc}

08005dc8 <__smakebuf_r>:
 8005dc8:	898a      	ldrh	r2, [r1, #12]
 8005dca:	0792      	lsls	r2, r2, #30
 8005dcc:	460b      	mov	r3, r1
 8005dce:	d506      	bpl.n	8005dde <__smakebuf_r+0x16>
 8005dd0:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005dd4:	2101      	movs	r1, #1
 8005dd6:	601a      	str	r2, [r3, #0]
 8005dd8:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005ddc:	4770      	bx	lr
 8005dde:	b570      	push	{r4, r5, r6, lr}
 8005de0:	b082      	sub	sp, #8
 8005de2:	ab01      	add	r3, sp, #4
 8005de4:	466a      	mov	r2, sp
 8005de6:	460c      	mov	r4, r1
 8005de8:	4605      	mov	r5, r0
 8005dea:	f7ff ffbf 	bl	8005d6c <__swhatbuf_r>
 8005dee:	9900      	ldr	r1, [sp, #0]
 8005df0:	4606      	mov	r6, r0
 8005df2:	4628      	mov	r0, r5
 8005df4:	f7fc fa50 	bl	8002298 <_malloc_r>
 8005df8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005dfc:	b1d8      	cbz	r0, 8005e36 <__smakebuf_r+0x6e>
 8005dfe:	4916      	ldr	r1, [pc, #88]	; (8005e58 <__smakebuf_r+0x90>)
 8005e00:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005e02:	9a01      	ldr	r2, [sp, #4]
 8005e04:	9900      	ldr	r1, [sp, #0]
 8005e06:	6020      	str	r0, [r4, #0]
 8005e08:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005e0c:	81a3      	strh	r3, [r4, #12]
 8005e0e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005e12:	b91a      	cbnz	r2, 8005e1c <__smakebuf_r+0x54>
 8005e14:	4333      	orrs	r3, r6
 8005e16:	81a3      	strh	r3, [r4, #12]
 8005e18:	b002      	add	sp, #8
 8005e1a:	bd70      	pop	{r4, r5, r6, pc}
 8005e1c:	4628      	mov	r0, r5
 8005e1e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005e22:	f000 ffe1 	bl	8006de8 <_isatty_r>
 8005e26:	b1a0      	cbz	r0, 8005e52 <__smakebuf_r+0x8a>
 8005e28:	89a3      	ldrh	r3, [r4, #12]
 8005e2a:	f023 0303 	bic.w	r3, r3, #3
 8005e2e:	f043 0301 	orr.w	r3, r3, #1
 8005e32:	b21b      	sxth	r3, r3
 8005e34:	e7ee      	b.n	8005e14 <__smakebuf_r+0x4c>
 8005e36:	059a      	lsls	r2, r3, #22
 8005e38:	d4ee      	bmi.n	8005e18 <__smakebuf_r+0x50>
 8005e3a:	f023 0303 	bic.w	r3, r3, #3
 8005e3e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005e42:	f043 0302 	orr.w	r3, r3, #2
 8005e46:	2101      	movs	r1, #1
 8005e48:	81a3      	strh	r3, [r4, #12]
 8005e4a:	6022      	str	r2, [r4, #0]
 8005e4c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005e50:	e7e2      	b.n	8005e18 <__smakebuf_r+0x50>
 8005e52:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005e56:	e7dd      	b.n	8005e14 <__smakebuf_r+0x4c>
 8005e58:	080056b9 	.word	0x080056b9

08005e5c <memmove>:
 8005e5c:	4288      	cmp	r0, r1
 8005e5e:	b4f0      	push	{r4, r5, r6, r7}
 8005e60:	d90d      	bls.n	8005e7e <memmove+0x22>
 8005e62:	188b      	adds	r3, r1, r2
 8005e64:	4283      	cmp	r3, r0
 8005e66:	d90a      	bls.n	8005e7e <memmove+0x22>
 8005e68:	1884      	adds	r4, r0, r2
 8005e6a:	b132      	cbz	r2, 8005e7a <memmove+0x1e>
 8005e6c:	4622      	mov	r2, r4
 8005e6e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005e72:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005e76:	4299      	cmp	r1, r3
 8005e78:	d1f9      	bne.n	8005e6e <memmove+0x12>
 8005e7a:	bcf0      	pop	{r4, r5, r6, r7}
 8005e7c:	4770      	bx	lr
 8005e7e:	2a0f      	cmp	r2, #15
 8005e80:	d949      	bls.n	8005f16 <memmove+0xba>
 8005e82:	ea40 0301 	orr.w	r3, r0, r1
 8005e86:	079b      	lsls	r3, r3, #30
 8005e88:	d147      	bne.n	8005f1a <memmove+0xbe>
 8005e8a:	f1a2 0310 	sub.w	r3, r2, #16
 8005e8e:	091b      	lsrs	r3, r3, #4
 8005e90:	f101 0720 	add.w	r7, r1, #32
 8005e94:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005e98:	f101 0410 	add.w	r4, r1, #16
 8005e9c:	f100 0510 	add.w	r5, r0, #16
 8005ea0:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005ea4:	f845 6c10 	str.w	r6, [r5, #-16]
 8005ea8:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005eac:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005eb0:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005eb4:	f845 6c08 	str.w	r6, [r5, #-8]
 8005eb8:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005ebc:	f845 6c04 	str.w	r6, [r5, #-4]
 8005ec0:	3410      	adds	r4, #16
 8005ec2:	42bc      	cmp	r4, r7
 8005ec4:	f105 0510 	add.w	r5, r5, #16
 8005ec8:	d1ea      	bne.n	8005ea0 <memmove+0x44>
 8005eca:	3301      	adds	r3, #1
 8005ecc:	f002 050f 	and.w	r5, r2, #15
 8005ed0:	011b      	lsls	r3, r3, #4
 8005ed2:	2d03      	cmp	r5, #3
 8005ed4:	4419      	add	r1, r3
 8005ed6:	4403      	add	r3, r0
 8005ed8:	d921      	bls.n	8005f1e <memmove+0xc2>
 8005eda:	1f1f      	subs	r7, r3, #4
 8005edc:	460e      	mov	r6, r1
 8005ede:	462c      	mov	r4, r5
 8005ee0:	3c04      	subs	r4, #4
 8005ee2:	f856 cb04 	ldr.w	ip, [r6], #4
 8005ee6:	f847 cf04 	str.w	ip, [r7, #4]!
 8005eea:	2c03      	cmp	r4, #3
 8005eec:	d8f8      	bhi.n	8005ee0 <memmove+0x84>
 8005eee:	1f2c      	subs	r4, r5, #4
 8005ef0:	f024 0403 	bic.w	r4, r4, #3
 8005ef4:	3404      	adds	r4, #4
 8005ef6:	4423      	add	r3, r4
 8005ef8:	4421      	add	r1, r4
 8005efa:	f002 0203 	and.w	r2, r2, #3
 8005efe:	2a00      	cmp	r2, #0
 8005f00:	d0bb      	beq.n	8005e7a <memmove+0x1e>
 8005f02:	3b01      	subs	r3, #1
 8005f04:	440a      	add	r2, r1
 8005f06:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005f0a:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005f0e:	4291      	cmp	r1, r2
 8005f10:	d1f9      	bne.n	8005f06 <memmove+0xaa>
 8005f12:	bcf0      	pop	{r4, r5, r6, r7}
 8005f14:	4770      	bx	lr
 8005f16:	4603      	mov	r3, r0
 8005f18:	e7f1      	b.n	8005efe <memmove+0xa2>
 8005f1a:	4603      	mov	r3, r0
 8005f1c:	e7f1      	b.n	8005f02 <memmove+0xa6>
 8005f1e:	462a      	mov	r2, r5
 8005f20:	e7ed      	b.n	8005efe <memmove+0xa2>
 8005f22:	bf00      	nop

08005f24 <_Balloc>:
 8005f24:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005f26:	b570      	push	{r4, r5, r6, lr}
 8005f28:	4605      	mov	r5, r0
 8005f2a:	460c      	mov	r4, r1
 8005f2c:	b14b      	cbz	r3, 8005f42 <_Balloc+0x1e>
 8005f2e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005f32:	b180      	cbz	r0, 8005f56 <_Balloc+0x32>
 8005f34:	6802      	ldr	r2, [r0, #0]
 8005f36:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005f3a:	2300      	movs	r3, #0
 8005f3c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005f40:	bd70      	pop	{r4, r5, r6, pc}
 8005f42:	2221      	movs	r2, #33	; 0x21
 8005f44:	2104      	movs	r1, #4
 8005f46:	f000 fe0b 	bl	8006b60 <_calloc_r>
 8005f4a:	4603      	mov	r3, r0
 8005f4c:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005f4e:	2800      	cmp	r0, #0
 8005f50:	d1ed      	bne.n	8005f2e <_Balloc+0xa>
 8005f52:	2000      	movs	r0, #0
 8005f54:	bd70      	pop	{r4, r5, r6, pc}
 8005f56:	2101      	movs	r1, #1
 8005f58:	fa01 f604 	lsl.w	r6, r1, r4
 8005f5c:	1d72      	adds	r2, r6, #5
 8005f5e:	4628      	mov	r0, r5
 8005f60:	0092      	lsls	r2, r2, #2
 8005f62:	f000 fdfd 	bl	8006b60 <_calloc_r>
 8005f66:	2800      	cmp	r0, #0
 8005f68:	d0f3      	beq.n	8005f52 <_Balloc+0x2e>
 8005f6a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005f6e:	e7e4      	b.n	8005f3a <_Balloc+0x16>

08005f70 <_Bfree>:
 8005f70:	b131      	cbz	r1, 8005f80 <_Bfree+0x10>
 8005f72:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005f74:	684a      	ldr	r2, [r1, #4]
 8005f76:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005f7a:	6008      	str	r0, [r1, #0]
 8005f7c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005f80:	4770      	bx	lr
 8005f82:	bf00      	nop

08005f84 <__multadd>:
 8005f84:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005f86:	690c      	ldr	r4, [r1, #16]
 8005f88:	b083      	sub	sp, #12
 8005f8a:	460d      	mov	r5, r1
 8005f8c:	4606      	mov	r6, r0
 8005f8e:	f101 0c14 	add.w	ip, r1, #20
 8005f92:	2700      	movs	r7, #0
 8005f94:	f8dc 0000 	ldr.w	r0, [ip]
 8005f98:	b281      	uxth	r1, r0
 8005f9a:	fb02 3301 	mla	r3, r2, r1, r3
 8005f9e:	0c01      	lsrs	r1, r0, #16
 8005fa0:	0c18      	lsrs	r0, r3, #16
 8005fa2:	fb02 0101 	mla	r1, r2, r1, r0
 8005fa6:	b29b      	uxth	r3, r3
 8005fa8:	3701      	adds	r7, #1
 8005faa:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005fae:	42bc      	cmp	r4, r7
 8005fb0:	f84c 3b04 	str.w	r3, [ip], #4
 8005fb4:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8005fb8:	dcec      	bgt.n	8005f94 <__multadd+0x10>
 8005fba:	b13b      	cbz	r3, 8005fcc <__multadd+0x48>
 8005fbc:	68aa      	ldr	r2, [r5, #8]
 8005fbe:	42a2      	cmp	r2, r4
 8005fc0:	dd07      	ble.n	8005fd2 <__multadd+0x4e>
 8005fc2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8005fc6:	3401      	adds	r4, #1
 8005fc8:	6153      	str	r3, [r2, #20]
 8005fca:	612c      	str	r4, [r5, #16]
 8005fcc:	4628      	mov	r0, r5
 8005fce:	b003      	add	sp, #12
 8005fd0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005fd2:	6869      	ldr	r1, [r5, #4]
 8005fd4:	9301      	str	r3, [sp, #4]
 8005fd6:	3101      	adds	r1, #1
 8005fd8:	4630      	mov	r0, r6
 8005fda:	f7ff ffa3 	bl	8005f24 <_Balloc>
 8005fde:	692a      	ldr	r2, [r5, #16]
 8005fe0:	3202      	adds	r2, #2
 8005fe2:	f105 010c 	add.w	r1, r5, #12
 8005fe6:	4607      	mov	r7, r0
 8005fe8:	0092      	lsls	r2, r2, #2
 8005fea:	300c      	adds	r0, #12
 8005fec:	f7fa fa88 	bl	8000500 <memcpy>
 8005ff0:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8005ff2:	6869      	ldr	r1, [r5, #4]
 8005ff4:	9b01      	ldr	r3, [sp, #4]
 8005ff6:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8005ffa:	6028      	str	r0, [r5, #0]
 8005ffc:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006000:	463d      	mov	r5, r7
 8006002:	e7de      	b.n	8005fc2 <__multadd+0x3e>

08006004 <__hi0bits>:
 8006004:	0c02      	lsrs	r2, r0, #16
 8006006:	0412      	lsls	r2, r2, #16
 8006008:	4603      	mov	r3, r0
 800600a:	b9c2      	cbnz	r2, 800603e <__hi0bits+0x3a>
 800600c:	0403      	lsls	r3, r0, #16
 800600e:	2010      	movs	r0, #16
 8006010:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006014:	bf04      	itt	eq
 8006016:	021b      	lsleq	r3, r3, #8
 8006018:	3008      	addeq	r0, #8
 800601a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800601e:	bf04      	itt	eq
 8006020:	011b      	lsleq	r3, r3, #4
 8006022:	3004      	addeq	r0, #4
 8006024:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006028:	bf04      	itt	eq
 800602a:	009b      	lsleq	r3, r3, #2
 800602c:	3002      	addeq	r0, #2
 800602e:	2b00      	cmp	r3, #0
 8006030:	db04      	blt.n	800603c <__hi0bits+0x38>
 8006032:	005b      	lsls	r3, r3, #1
 8006034:	d501      	bpl.n	800603a <__hi0bits+0x36>
 8006036:	3001      	adds	r0, #1
 8006038:	4770      	bx	lr
 800603a:	2020      	movs	r0, #32
 800603c:	4770      	bx	lr
 800603e:	2000      	movs	r0, #0
 8006040:	e7e6      	b.n	8006010 <__hi0bits+0xc>
 8006042:	bf00      	nop

08006044 <__lo0bits>:
 8006044:	6803      	ldr	r3, [r0, #0]
 8006046:	f013 0207 	ands.w	r2, r3, #7
 800604a:	4601      	mov	r1, r0
 800604c:	d007      	beq.n	800605e <__lo0bits+0x1a>
 800604e:	07da      	lsls	r2, r3, #31
 8006050:	d41f      	bmi.n	8006092 <__lo0bits+0x4e>
 8006052:	0798      	lsls	r0, r3, #30
 8006054:	d51f      	bpl.n	8006096 <__lo0bits+0x52>
 8006056:	085b      	lsrs	r3, r3, #1
 8006058:	600b      	str	r3, [r1, #0]
 800605a:	2001      	movs	r0, #1
 800605c:	4770      	bx	lr
 800605e:	b298      	uxth	r0, r3
 8006060:	b1a0      	cbz	r0, 800608c <__lo0bits+0x48>
 8006062:	4610      	mov	r0, r2
 8006064:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006068:	bf04      	itt	eq
 800606a:	0a1b      	lsreq	r3, r3, #8
 800606c:	3008      	addeq	r0, #8
 800606e:	071a      	lsls	r2, r3, #28
 8006070:	bf04      	itt	eq
 8006072:	091b      	lsreq	r3, r3, #4
 8006074:	3004      	addeq	r0, #4
 8006076:	079a      	lsls	r2, r3, #30
 8006078:	bf04      	itt	eq
 800607a:	089b      	lsreq	r3, r3, #2
 800607c:	3002      	addeq	r0, #2
 800607e:	07da      	lsls	r2, r3, #31
 8006080:	d402      	bmi.n	8006088 <__lo0bits+0x44>
 8006082:	085b      	lsrs	r3, r3, #1
 8006084:	d00b      	beq.n	800609e <__lo0bits+0x5a>
 8006086:	3001      	adds	r0, #1
 8006088:	600b      	str	r3, [r1, #0]
 800608a:	4770      	bx	lr
 800608c:	0c1b      	lsrs	r3, r3, #16
 800608e:	2010      	movs	r0, #16
 8006090:	e7e8      	b.n	8006064 <__lo0bits+0x20>
 8006092:	2000      	movs	r0, #0
 8006094:	4770      	bx	lr
 8006096:	089b      	lsrs	r3, r3, #2
 8006098:	600b      	str	r3, [r1, #0]
 800609a:	2002      	movs	r0, #2
 800609c:	4770      	bx	lr
 800609e:	2020      	movs	r0, #32
 80060a0:	4770      	bx	lr
 80060a2:	bf00      	nop

080060a4 <__i2b>:
 80060a4:	b510      	push	{r4, lr}
 80060a6:	460c      	mov	r4, r1
 80060a8:	2101      	movs	r1, #1
 80060aa:	f7ff ff3b 	bl	8005f24 <_Balloc>
 80060ae:	2201      	movs	r2, #1
 80060b0:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80060b4:	bd10      	pop	{r4, pc}
 80060b6:	bf00      	nop

080060b8 <__multiply>:
 80060b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80060bc:	690e      	ldr	r6, [r1, #16]
 80060be:	6914      	ldr	r4, [r2, #16]
 80060c0:	42a6      	cmp	r6, r4
 80060c2:	b083      	sub	sp, #12
 80060c4:	460f      	mov	r7, r1
 80060c6:	4615      	mov	r5, r2
 80060c8:	da04      	bge.n	80060d4 <__multiply+0x1c>
 80060ca:	4632      	mov	r2, r6
 80060cc:	462f      	mov	r7, r5
 80060ce:	4626      	mov	r6, r4
 80060d0:	460d      	mov	r5, r1
 80060d2:	4614      	mov	r4, r2
 80060d4:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80060d8:	eb06 0804 	add.w	r8, r6, r4
 80060dc:	4543      	cmp	r3, r8
 80060de:	bfb8      	it	lt
 80060e0:	3101      	addlt	r1, #1
 80060e2:	f7ff ff1f 	bl	8005f24 <_Balloc>
 80060e6:	f100 0914 	add.w	r9, r0, #20
 80060ea:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80060ee:	45f1      	cmp	r9, lr
 80060f0:	9000      	str	r0, [sp, #0]
 80060f2:	d205      	bcs.n	8006100 <__multiply+0x48>
 80060f4:	464b      	mov	r3, r9
 80060f6:	2200      	movs	r2, #0
 80060f8:	f843 2b04 	str.w	r2, [r3], #4
 80060fc:	459e      	cmp	lr, r3
 80060fe:	d8fb      	bhi.n	80060f8 <__multiply+0x40>
 8006100:	f105 0a14 	add.w	sl, r5, #20
 8006104:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006108:	f107 0314 	add.w	r3, r7, #20
 800610c:	45a2      	cmp	sl, r4
 800610e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006112:	d261      	bcs.n	80061d8 <__multiply+0x120>
 8006114:	1b64      	subs	r4, r4, r5
 8006116:	3c15      	subs	r4, #21
 8006118:	f024 0403 	bic.w	r4, r4, #3
 800611c:	f8cd e004 	str.w	lr, [sp, #4]
 8006120:	44a2      	add	sl, r4
 8006122:	f105 0210 	add.w	r2, r5, #16
 8006126:	469e      	mov	lr, r3
 8006128:	e005      	b.n	8006136 <__multiply+0x7e>
 800612a:	0c2d      	lsrs	r5, r5, #16
 800612c:	d12b      	bne.n	8006186 <__multiply+0xce>
 800612e:	4592      	cmp	sl, r2
 8006130:	f109 0904 	add.w	r9, r9, #4
 8006134:	d04e      	beq.n	80061d4 <__multiply+0x11c>
 8006136:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800613a:	fa1f fb85 	uxth.w	fp, r5
 800613e:	f1bb 0f00 	cmp.w	fp, #0
 8006142:	d0f2      	beq.n	800612a <__multiply+0x72>
 8006144:	4677      	mov	r7, lr
 8006146:	464e      	mov	r6, r9
 8006148:	2000      	movs	r0, #0
 800614a:	e000      	b.n	800614e <__multiply+0x96>
 800614c:	4626      	mov	r6, r4
 800614e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006152:	6834      	ldr	r4, [r6, #0]
 8006154:	b28b      	uxth	r3, r1
 8006156:	b2a5      	uxth	r5, r4
 8006158:	0c09      	lsrs	r1, r1, #16
 800615a:	0c24      	lsrs	r4, r4, #16
 800615c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006160:	4403      	add	r3, r0
 8006162:	fb0b 4001 	mla	r0, fp, r1, r4
 8006166:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800616a:	4634      	mov	r4, r6
 800616c:	b29b      	uxth	r3, r3
 800616e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006172:	45bc      	cmp	ip, r7
 8006174:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006178:	f844 3b04 	str.w	r3, [r4], #4
 800617c:	d8e6      	bhi.n	800614c <__multiply+0x94>
 800617e:	6070      	str	r0, [r6, #4]
 8006180:	6815      	ldr	r5, [r2, #0]
 8006182:	0c2d      	lsrs	r5, r5, #16
 8006184:	d0d3      	beq.n	800612e <__multiply+0x76>
 8006186:	f8d9 3000 	ldr.w	r3, [r9]
 800618a:	4676      	mov	r6, lr
 800618c:	4618      	mov	r0, r3
 800618e:	46cb      	mov	fp, r9
 8006190:	2100      	movs	r1, #0
 8006192:	e000      	b.n	8006196 <__multiply+0xde>
 8006194:	46a3      	mov	fp, r4
 8006196:	8834      	ldrh	r4, [r6, #0]
 8006198:	0c00      	lsrs	r0, r0, #16
 800619a:	fb05 0004 	mla	r0, r5, r4, r0
 800619e:	4401      	add	r1, r0
 80061a0:	b29b      	uxth	r3, r3
 80061a2:	465c      	mov	r4, fp
 80061a4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80061a8:	f844 3b04 	str.w	r3, [r4], #4
 80061ac:	f856 3b04 	ldr.w	r3, [r6], #4
 80061b0:	f8db 0004 	ldr.w	r0, [fp, #4]
 80061b4:	0c1b      	lsrs	r3, r3, #16
 80061b6:	b287      	uxth	r7, r0
 80061b8:	fb05 7303 	mla	r3, r5, r3, r7
 80061bc:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80061c0:	45b4      	cmp	ip, r6
 80061c2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80061c6:	d8e5      	bhi.n	8006194 <__multiply+0xdc>
 80061c8:	4592      	cmp	sl, r2
 80061ca:	f8cb 3004 	str.w	r3, [fp, #4]
 80061ce:	f109 0904 	add.w	r9, r9, #4
 80061d2:	d1b0      	bne.n	8006136 <__multiply+0x7e>
 80061d4:	f8dd e004 	ldr.w	lr, [sp, #4]
 80061d8:	f1b8 0f00 	cmp.w	r8, #0
 80061dc:	dd0b      	ble.n	80061f6 <__multiply+0x13e>
 80061de:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80061e2:	f1ae 0e04 	sub.w	lr, lr, #4
 80061e6:	b11b      	cbz	r3, 80061f0 <__multiply+0x138>
 80061e8:	e005      	b.n	80061f6 <__multiply+0x13e>
 80061ea:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80061ee:	b913      	cbnz	r3, 80061f6 <__multiply+0x13e>
 80061f0:	f1b8 0801 	subs.w	r8, r8, #1
 80061f4:	d1f9      	bne.n	80061ea <__multiply+0x132>
 80061f6:	9800      	ldr	r0, [sp, #0]
 80061f8:	f8c0 8010 	str.w	r8, [r0, #16]
 80061fc:	b003      	add	sp, #12
 80061fe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006202:	bf00      	nop

08006204 <__pow5mult>:
 8006204:	f012 0303 	ands.w	r3, r2, #3
 8006208:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800620c:	4614      	mov	r4, r2
 800620e:	4607      	mov	r7, r0
 8006210:	d12e      	bne.n	8006270 <__pow5mult+0x6c>
 8006212:	460d      	mov	r5, r1
 8006214:	10a4      	asrs	r4, r4, #2
 8006216:	d01c      	beq.n	8006252 <__pow5mult+0x4e>
 8006218:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800621a:	b396      	cbz	r6, 8006282 <__pow5mult+0x7e>
 800621c:	07e3      	lsls	r3, r4, #31
 800621e:	f04f 0800 	mov.w	r8, #0
 8006222:	d406      	bmi.n	8006232 <__pow5mult+0x2e>
 8006224:	1064      	asrs	r4, r4, #1
 8006226:	d014      	beq.n	8006252 <__pow5mult+0x4e>
 8006228:	6830      	ldr	r0, [r6, #0]
 800622a:	b1a8      	cbz	r0, 8006258 <__pow5mult+0x54>
 800622c:	4606      	mov	r6, r0
 800622e:	07e3      	lsls	r3, r4, #31
 8006230:	d5f8      	bpl.n	8006224 <__pow5mult+0x20>
 8006232:	4632      	mov	r2, r6
 8006234:	4629      	mov	r1, r5
 8006236:	4638      	mov	r0, r7
 8006238:	f7ff ff3e 	bl	80060b8 <__multiply>
 800623c:	b1b5      	cbz	r5, 800626c <__pow5mult+0x68>
 800623e:	686a      	ldr	r2, [r5, #4]
 8006240:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006242:	1064      	asrs	r4, r4, #1
 8006244:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006248:	6029      	str	r1, [r5, #0]
 800624a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800624e:	4605      	mov	r5, r0
 8006250:	d1ea      	bne.n	8006228 <__pow5mult+0x24>
 8006252:	4628      	mov	r0, r5
 8006254:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006258:	4632      	mov	r2, r6
 800625a:	4631      	mov	r1, r6
 800625c:	4638      	mov	r0, r7
 800625e:	f7ff ff2b 	bl	80060b8 <__multiply>
 8006262:	6030      	str	r0, [r6, #0]
 8006264:	f8c0 8000 	str.w	r8, [r0]
 8006268:	4606      	mov	r6, r0
 800626a:	e7e0      	b.n	800622e <__pow5mult+0x2a>
 800626c:	4605      	mov	r5, r0
 800626e:	e7d9      	b.n	8006224 <__pow5mult+0x20>
 8006270:	3b01      	subs	r3, #1
 8006272:	4a0b      	ldr	r2, [pc, #44]	; (80062a0 <__pow5mult+0x9c>)
 8006274:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006278:	2300      	movs	r3, #0
 800627a:	f7ff fe83 	bl	8005f84 <__multadd>
 800627e:	4605      	mov	r5, r0
 8006280:	e7c8      	b.n	8006214 <__pow5mult+0x10>
 8006282:	2101      	movs	r1, #1
 8006284:	4638      	mov	r0, r7
 8006286:	f7ff fe4d 	bl	8005f24 <_Balloc>
 800628a:	f240 2371 	movw	r3, #625	; 0x271
 800628e:	6143      	str	r3, [r0, #20]
 8006290:	2201      	movs	r2, #1
 8006292:	2300      	movs	r3, #0
 8006294:	6102      	str	r2, [r0, #16]
 8006296:	4606      	mov	r6, r0
 8006298:	64b8      	str	r0, [r7, #72]	; 0x48
 800629a:	6003      	str	r3, [r0, #0]
 800629c:	e7be      	b.n	800621c <__pow5mult+0x18>
 800629e:	bf00      	nop
 80062a0:	08007268 	.word	0x08007268

080062a4 <__lshift>:
 80062a4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80062a8:	4691      	mov	r9, r2
 80062aa:	690a      	ldr	r2, [r1, #16]
 80062ac:	460e      	mov	r6, r1
 80062ae:	ea4f 1469 	mov.w	r4, r9, asr #5
 80062b2:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80062b6:	eb04 0802 	add.w	r8, r4, r2
 80062ba:	f108 0501 	add.w	r5, r8, #1
 80062be:	429d      	cmp	r5, r3
 80062c0:	4607      	mov	r7, r0
 80062c2:	dd04      	ble.n	80062ce <__lshift+0x2a>
 80062c4:	005b      	lsls	r3, r3, #1
 80062c6:	429d      	cmp	r5, r3
 80062c8:	f101 0101 	add.w	r1, r1, #1
 80062cc:	dcfa      	bgt.n	80062c4 <__lshift+0x20>
 80062ce:	4638      	mov	r0, r7
 80062d0:	f7ff fe28 	bl	8005f24 <_Balloc>
 80062d4:	2c00      	cmp	r4, #0
 80062d6:	f100 0314 	add.w	r3, r0, #20
 80062da:	dd37      	ble.n	800634c <__lshift+0xa8>
 80062dc:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80062e0:	2200      	movs	r2, #0
 80062e2:	f843 2b04 	str.w	r2, [r3], #4
 80062e6:	428b      	cmp	r3, r1
 80062e8:	d1fb      	bne.n	80062e2 <__lshift+0x3e>
 80062ea:	6934      	ldr	r4, [r6, #16]
 80062ec:	f106 0314 	add.w	r3, r6, #20
 80062f0:	f019 091f 	ands.w	r9, r9, #31
 80062f4:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80062f8:	d020      	beq.n	800633c <__lshift+0x98>
 80062fa:	f1c9 0e20 	rsb	lr, r9, #32
 80062fe:	2200      	movs	r2, #0
 8006300:	e000      	b.n	8006304 <__lshift+0x60>
 8006302:	4651      	mov	r1, sl
 8006304:	681c      	ldr	r4, [r3, #0]
 8006306:	468a      	mov	sl, r1
 8006308:	fa04 f409 	lsl.w	r4, r4, r9
 800630c:	4314      	orrs	r4, r2
 800630e:	f84a 4b04 	str.w	r4, [sl], #4
 8006312:	f853 2b04 	ldr.w	r2, [r3], #4
 8006316:	4563      	cmp	r3, ip
 8006318:	fa22 f20e 	lsr.w	r2, r2, lr
 800631c:	d3f1      	bcc.n	8006302 <__lshift+0x5e>
 800631e:	604a      	str	r2, [r1, #4]
 8006320:	b10a      	cbz	r2, 8006326 <__lshift+0x82>
 8006322:	f108 0502 	add.w	r5, r8, #2
 8006326:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006328:	6872      	ldr	r2, [r6, #4]
 800632a:	3d01      	subs	r5, #1
 800632c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006330:	6105      	str	r5, [r0, #16]
 8006332:	6031      	str	r1, [r6, #0]
 8006334:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006338:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800633c:	3904      	subs	r1, #4
 800633e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006342:	f841 2f04 	str.w	r2, [r1, #4]!
 8006346:	459c      	cmp	ip, r3
 8006348:	d8f9      	bhi.n	800633e <__lshift+0x9a>
 800634a:	e7ec      	b.n	8006326 <__lshift+0x82>
 800634c:	4619      	mov	r1, r3
 800634e:	e7cc      	b.n	80062ea <__lshift+0x46>

08006350 <__mcmp>:
 8006350:	b430      	push	{r4, r5}
 8006352:	690b      	ldr	r3, [r1, #16]
 8006354:	4605      	mov	r5, r0
 8006356:	6900      	ldr	r0, [r0, #16]
 8006358:	1ac0      	subs	r0, r0, r3
 800635a:	d10f      	bne.n	800637c <__mcmp+0x2c>
 800635c:	009b      	lsls	r3, r3, #2
 800635e:	3514      	adds	r5, #20
 8006360:	3114      	adds	r1, #20
 8006362:	4419      	add	r1, r3
 8006364:	442b      	add	r3, r5
 8006366:	e001      	b.n	800636c <__mcmp+0x1c>
 8006368:	429d      	cmp	r5, r3
 800636a:	d207      	bcs.n	800637c <__mcmp+0x2c>
 800636c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006370:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006374:	4294      	cmp	r4, r2
 8006376:	d0f7      	beq.n	8006368 <__mcmp+0x18>
 8006378:	d302      	bcc.n	8006380 <__mcmp+0x30>
 800637a:	2001      	movs	r0, #1
 800637c:	bc30      	pop	{r4, r5}
 800637e:	4770      	bx	lr
 8006380:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006384:	e7fa      	b.n	800637c <__mcmp+0x2c>
 8006386:	bf00      	nop

08006388 <__mdiff>:
 8006388:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800638c:	6913      	ldr	r3, [r2, #16]
 800638e:	690d      	ldr	r5, [r1, #16]
 8006390:	1aed      	subs	r5, r5, r3
 8006392:	2d00      	cmp	r5, #0
 8006394:	460e      	mov	r6, r1
 8006396:	4690      	mov	r8, r2
 8006398:	f101 0414 	add.w	r4, r1, #20
 800639c:	f102 0714 	add.w	r7, r2, #20
 80063a0:	d114      	bne.n	80063cc <__mdiff+0x44>
 80063a2:	009b      	lsls	r3, r3, #2
 80063a4:	18e2      	adds	r2, r4, r3
 80063a6:	443b      	add	r3, r7
 80063a8:	e001      	b.n	80063ae <__mdiff+0x26>
 80063aa:	42a2      	cmp	r2, r4
 80063ac:	d959      	bls.n	8006462 <__mdiff+0xda>
 80063ae:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80063b2:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80063b6:	458c      	cmp	ip, r1
 80063b8:	d0f7      	beq.n	80063aa <__mdiff+0x22>
 80063ba:	d209      	bcs.n	80063d0 <__mdiff+0x48>
 80063bc:	4622      	mov	r2, r4
 80063be:	4633      	mov	r3, r6
 80063c0:	463c      	mov	r4, r7
 80063c2:	4646      	mov	r6, r8
 80063c4:	4617      	mov	r7, r2
 80063c6:	4698      	mov	r8, r3
 80063c8:	2501      	movs	r5, #1
 80063ca:	e001      	b.n	80063d0 <__mdiff+0x48>
 80063cc:	dbf6      	blt.n	80063bc <__mdiff+0x34>
 80063ce:	2500      	movs	r5, #0
 80063d0:	6871      	ldr	r1, [r6, #4]
 80063d2:	f7ff fda7 	bl	8005f24 <_Balloc>
 80063d6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80063da:	6936      	ldr	r6, [r6, #16]
 80063dc:	60c5      	str	r5, [r0, #12]
 80063de:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80063e2:	46bc      	mov	ip, r7
 80063e4:	f100 0514 	add.w	r5, r0, #20
 80063e8:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80063ec:	2300      	movs	r3, #0
 80063ee:	f85c 1b04 	ldr.w	r1, [ip], #4
 80063f2:	f854 8b04 	ldr.w	r8, [r4], #4
 80063f6:	b28a      	uxth	r2, r1
 80063f8:	fa13 f388 	uxtah	r3, r3, r8
 80063fc:	0c09      	lsrs	r1, r1, #16
 80063fe:	1a9a      	subs	r2, r3, r2
 8006400:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006404:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006408:	b292      	uxth	r2, r2
 800640a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800640e:	45e6      	cmp	lr, ip
 8006410:	f845 2b04 	str.w	r2, [r5], #4
 8006414:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006418:	d8e9      	bhi.n	80063ee <__mdiff+0x66>
 800641a:	42a7      	cmp	r7, r4
 800641c:	d917      	bls.n	800644e <__mdiff+0xc6>
 800641e:	46ae      	mov	lr, r5
 8006420:	46a4      	mov	ip, r4
 8006422:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006426:	fa13 f382 	uxtah	r3, r3, r2
 800642a:	1419      	asrs	r1, r3, #16
 800642c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006430:	b29b      	uxth	r3, r3
 8006432:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006436:	4567      	cmp	r7, ip
 8006438:	f84e 2b04 	str.w	r2, [lr], #4
 800643c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006440:	d8ef      	bhi.n	8006422 <__mdiff+0x9a>
 8006442:	43e4      	mvns	r4, r4
 8006444:	4427      	add	r7, r4
 8006446:	f027 0703 	bic.w	r7, r7, #3
 800644a:	3704      	adds	r7, #4
 800644c:	443d      	add	r5, r7
 800644e:	3d04      	subs	r5, #4
 8006450:	b922      	cbnz	r2, 800645c <__mdiff+0xd4>
 8006452:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006456:	3e01      	subs	r6, #1
 8006458:	2b00      	cmp	r3, #0
 800645a:	d0fa      	beq.n	8006452 <__mdiff+0xca>
 800645c:	6106      	str	r6, [r0, #16]
 800645e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006462:	2100      	movs	r1, #0
 8006464:	f7ff fd5e 	bl	8005f24 <_Balloc>
 8006468:	2201      	movs	r2, #1
 800646a:	2300      	movs	r3, #0
 800646c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006470:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006474 <__d2b>:
 8006474:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006478:	460f      	mov	r7, r1
 800647a:	b083      	sub	sp, #12
 800647c:	2101      	movs	r1, #1
 800647e:	ec55 4b10 	vmov	r4, r5, d0
 8006482:	4616      	mov	r6, r2
 8006484:	f7ff fd4e 	bl	8005f24 <_Balloc>
 8006488:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800648c:	4681      	mov	r9, r0
 800648e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006492:	f1b8 0f00 	cmp.w	r8, #0
 8006496:	d001      	beq.n	800649c <__d2b+0x28>
 8006498:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800649c:	2c00      	cmp	r4, #0
 800649e:	9301      	str	r3, [sp, #4]
 80064a0:	d024      	beq.n	80064ec <__d2b+0x78>
 80064a2:	a802      	add	r0, sp, #8
 80064a4:	f840 4d08 	str.w	r4, [r0, #-8]!
 80064a8:	f7ff fdcc 	bl	8006044 <__lo0bits>
 80064ac:	2800      	cmp	r0, #0
 80064ae:	d136      	bne.n	800651e <__d2b+0xaa>
 80064b0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80064b4:	f8c9 2014 	str.w	r2, [r9, #20]
 80064b8:	2b00      	cmp	r3, #0
 80064ba:	bf0c      	ite	eq
 80064bc:	2101      	moveq	r1, #1
 80064be:	2102      	movne	r1, #2
 80064c0:	f8c9 3018 	str.w	r3, [r9, #24]
 80064c4:	f8c9 1010 	str.w	r1, [r9, #16]
 80064c8:	f1b8 0f00 	cmp.w	r8, #0
 80064cc:	d11b      	bne.n	8006506 <__d2b+0x92>
 80064ce:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80064d2:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80064d6:	6038      	str	r0, [r7, #0]
 80064d8:	6918      	ldr	r0, [r3, #16]
 80064da:	f7ff fd93 	bl	8006004 <__hi0bits>
 80064de:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80064e2:	6030      	str	r0, [r6, #0]
 80064e4:	4648      	mov	r0, r9
 80064e6:	b003      	add	sp, #12
 80064e8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80064ec:	a801      	add	r0, sp, #4
 80064ee:	f7ff fda9 	bl	8006044 <__lo0bits>
 80064f2:	9b01      	ldr	r3, [sp, #4]
 80064f4:	f8c9 3014 	str.w	r3, [r9, #20]
 80064f8:	2101      	movs	r1, #1
 80064fa:	3020      	adds	r0, #32
 80064fc:	f8c9 1010 	str.w	r1, [r9, #16]
 8006500:	f1b8 0f00 	cmp.w	r8, #0
 8006504:	d0e3      	beq.n	80064ce <__d2b+0x5a>
 8006506:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800650a:	eb08 0300 	add.w	r3, r8, r0
 800650e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006512:	603b      	str	r3, [r7, #0]
 8006514:	6030      	str	r0, [r6, #0]
 8006516:	4648      	mov	r0, r9
 8006518:	b003      	add	sp, #12
 800651a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800651e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006522:	f1c0 0220 	rsb	r2, r0, #32
 8006526:	fa03 f202 	lsl.w	r2, r3, r2
 800652a:	430a      	orrs	r2, r1
 800652c:	40c3      	lsrs	r3, r0
 800652e:	9301      	str	r3, [sp, #4]
 8006530:	f8c9 2014 	str.w	r2, [r9, #20]
 8006534:	e7c0      	b.n	80064b8 <__d2b+0x44>
 8006536:	bf00      	nop

08006538 <_realloc_r>:
 8006538:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800653c:	4692      	mov	sl, r2
 800653e:	b083      	sub	sp, #12
 8006540:	2900      	cmp	r1, #0
 8006542:	f000 80a1 	beq.w	8006688 <_realloc_r+0x150>
 8006546:	460d      	mov	r5, r1
 8006548:	4680      	mov	r8, r0
 800654a:	f10a 040b 	add.w	r4, sl, #11
 800654e:	f7fc f991 	bl	8002874 <__malloc_lock>
 8006552:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006556:	2c16      	cmp	r4, #22
 8006558:	f022 0603 	bic.w	r6, r2, #3
 800655c:	f1a5 0708 	sub.w	r7, r5, #8
 8006560:	d83e      	bhi.n	80065e0 <_realloc_r+0xa8>
 8006562:	2410      	movs	r4, #16
 8006564:	4621      	mov	r1, r4
 8006566:	45a2      	cmp	sl, r4
 8006568:	d83f      	bhi.n	80065ea <_realloc_r+0xb2>
 800656a:	428e      	cmp	r6, r1
 800656c:	eb07 0906 	add.w	r9, r7, r6
 8006570:	da74      	bge.n	800665c <_realloc_r+0x124>
 8006572:	4bc7      	ldr	r3, [pc, #796]	; (8006890 <_realloc_r+0x358>)
 8006574:	6898      	ldr	r0, [r3, #8]
 8006576:	4548      	cmp	r0, r9
 8006578:	f000 80aa 	beq.w	80066d0 <_realloc_r+0x198>
 800657c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006580:	f020 0301 	bic.w	r3, r0, #1
 8006584:	444b      	add	r3, r9
 8006586:	685b      	ldr	r3, [r3, #4]
 8006588:	07db      	lsls	r3, r3, #31
 800658a:	f140 8083 	bpl.w	8006694 <_realloc_r+0x15c>
 800658e:	07d2      	lsls	r2, r2, #31
 8006590:	d534      	bpl.n	80065fc <_realloc_r+0xc4>
 8006592:	4651      	mov	r1, sl
 8006594:	4640      	mov	r0, r8
 8006596:	f7fb fe7f 	bl	8002298 <_malloc_r>
 800659a:	4682      	mov	sl, r0
 800659c:	b1e0      	cbz	r0, 80065d8 <_realloc_r+0xa0>
 800659e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80065a2:	f023 0301 	bic.w	r3, r3, #1
 80065a6:	443b      	add	r3, r7
 80065a8:	f1a0 0208 	sub.w	r2, r0, #8
 80065ac:	4293      	cmp	r3, r2
 80065ae:	f000 80f9 	beq.w	80067a4 <_realloc_r+0x26c>
 80065b2:	1f32      	subs	r2, r6, #4
 80065b4:	2a24      	cmp	r2, #36	; 0x24
 80065b6:	f200 8107 	bhi.w	80067c8 <_realloc_r+0x290>
 80065ba:	2a13      	cmp	r2, #19
 80065bc:	6829      	ldr	r1, [r5, #0]
 80065be:	f200 80e6 	bhi.w	800678e <_realloc_r+0x256>
 80065c2:	4603      	mov	r3, r0
 80065c4:	462a      	mov	r2, r5
 80065c6:	6019      	str	r1, [r3, #0]
 80065c8:	6851      	ldr	r1, [r2, #4]
 80065ca:	6059      	str	r1, [r3, #4]
 80065cc:	6892      	ldr	r2, [r2, #8]
 80065ce:	609a      	str	r2, [r3, #8]
 80065d0:	4629      	mov	r1, r5
 80065d2:	4640      	mov	r0, r8
 80065d4:	f7ff f918 	bl	8005808 <_free_r>
 80065d8:	4640      	mov	r0, r8
 80065da:	f7fc f951 	bl	8002880 <__malloc_unlock>
 80065de:	e04f      	b.n	8006680 <_realloc_r+0x148>
 80065e0:	f024 0407 	bic.w	r4, r4, #7
 80065e4:	2c00      	cmp	r4, #0
 80065e6:	4621      	mov	r1, r4
 80065e8:	dabd      	bge.n	8006566 <_realloc_r+0x2e>
 80065ea:	f04f 0a00 	mov.w	sl, #0
 80065ee:	230c      	movs	r3, #12
 80065f0:	4650      	mov	r0, sl
 80065f2:	f8c8 3000 	str.w	r3, [r8]
 80065f6:	b003      	add	sp, #12
 80065f8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80065fc:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006600:	eba7 0b03 	sub.w	fp, r7, r3
 8006604:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006608:	f022 0203 	bic.w	r2, r2, #3
 800660c:	18b3      	adds	r3, r6, r2
 800660e:	428b      	cmp	r3, r1
 8006610:	dbbf      	blt.n	8006592 <_realloc_r+0x5a>
 8006612:	46da      	mov	sl, fp
 8006614:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006618:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800661c:	1f32      	subs	r2, r6, #4
 800661e:	2a24      	cmp	r2, #36	; 0x24
 8006620:	60c1      	str	r1, [r0, #12]
 8006622:	eb0b 0903 	add.w	r9, fp, r3
 8006626:	6088      	str	r0, [r1, #8]
 8006628:	f200 80c6 	bhi.w	80067b8 <_realloc_r+0x280>
 800662c:	2a13      	cmp	r2, #19
 800662e:	6829      	ldr	r1, [r5, #0]
 8006630:	f240 80c0 	bls.w	80067b4 <_realloc_r+0x27c>
 8006634:	f8cb 1008 	str.w	r1, [fp, #8]
 8006638:	6869      	ldr	r1, [r5, #4]
 800663a:	f8cb 100c 	str.w	r1, [fp, #12]
 800663e:	2a1b      	cmp	r2, #27
 8006640:	68a9      	ldr	r1, [r5, #8]
 8006642:	f200 80d8 	bhi.w	80067f6 <_realloc_r+0x2be>
 8006646:	f10b 0210 	add.w	r2, fp, #16
 800664a:	3508      	adds	r5, #8
 800664c:	6011      	str	r1, [r2, #0]
 800664e:	6869      	ldr	r1, [r5, #4]
 8006650:	6051      	str	r1, [r2, #4]
 8006652:	68a9      	ldr	r1, [r5, #8]
 8006654:	6091      	str	r1, [r2, #8]
 8006656:	461e      	mov	r6, r3
 8006658:	465f      	mov	r7, fp
 800665a:	4655      	mov	r5, sl
 800665c:	687b      	ldr	r3, [r7, #4]
 800665e:	1b32      	subs	r2, r6, r4
 8006660:	2a0f      	cmp	r2, #15
 8006662:	f003 0301 	and.w	r3, r3, #1
 8006666:	d822      	bhi.n	80066ae <_realloc_r+0x176>
 8006668:	4333      	orrs	r3, r6
 800666a:	607b      	str	r3, [r7, #4]
 800666c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006670:	f043 0301 	orr.w	r3, r3, #1
 8006674:	f8c9 3004 	str.w	r3, [r9, #4]
 8006678:	4640      	mov	r0, r8
 800667a:	f7fc f901 	bl	8002880 <__malloc_unlock>
 800667e:	46aa      	mov	sl, r5
 8006680:	4650      	mov	r0, sl
 8006682:	b003      	add	sp, #12
 8006684:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006688:	4611      	mov	r1, r2
 800668a:	b003      	add	sp, #12
 800668c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006690:	f7fb be02 	b.w	8002298 <_malloc_r>
 8006694:	f020 0003 	bic.w	r0, r0, #3
 8006698:	1833      	adds	r3, r6, r0
 800669a:	428b      	cmp	r3, r1
 800669c:	db61      	blt.n	8006762 <_realloc_r+0x22a>
 800669e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80066a2:	461e      	mov	r6, r3
 80066a4:	60ca      	str	r2, [r1, #12]
 80066a6:	eb07 0903 	add.w	r9, r7, r3
 80066aa:	6091      	str	r1, [r2, #8]
 80066ac:	e7d6      	b.n	800665c <_realloc_r+0x124>
 80066ae:	1939      	adds	r1, r7, r4
 80066b0:	4323      	orrs	r3, r4
 80066b2:	f042 0201 	orr.w	r2, r2, #1
 80066b6:	607b      	str	r3, [r7, #4]
 80066b8:	604a      	str	r2, [r1, #4]
 80066ba:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80066be:	f043 0301 	orr.w	r3, r3, #1
 80066c2:	3108      	adds	r1, #8
 80066c4:	f8c9 3004 	str.w	r3, [r9, #4]
 80066c8:	4640      	mov	r0, r8
 80066ca:	f7ff f89d 	bl	8005808 <_free_r>
 80066ce:	e7d3      	b.n	8006678 <_realloc_r+0x140>
 80066d0:	6840      	ldr	r0, [r0, #4]
 80066d2:	f020 0903 	bic.w	r9, r0, #3
 80066d6:	44b1      	add	r9, r6
 80066d8:	f104 0010 	add.w	r0, r4, #16
 80066dc:	4581      	cmp	r9, r0
 80066de:	da77      	bge.n	80067d0 <_realloc_r+0x298>
 80066e0:	07d2      	lsls	r2, r2, #31
 80066e2:	f53f af56 	bmi.w	8006592 <_realloc_r+0x5a>
 80066e6:	f855 2c08 	ldr.w	r2, [r5, #-8]
 80066ea:	eba7 0b02 	sub.w	fp, r7, r2
 80066ee:	f8db 2004 	ldr.w	r2, [fp, #4]
 80066f2:	f022 0203 	bic.w	r2, r2, #3
 80066f6:	4491      	add	r9, r2
 80066f8:	4548      	cmp	r0, r9
 80066fa:	dc87      	bgt.n	800660c <_realloc_r+0xd4>
 80066fc:	46da      	mov	sl, fp
 80066fe:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006702:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006706:	1f32      	subs	r2, r6, #4
 8006708:	2a24      	cmp	r2, #36	; 0x24
 800670a:	60c1      	str	r1, [r0, #12]
 800670c:	6088      	str	r0, [r1, #8]
 800670e:	f200 80a1 	bhi.w	8006854 <_realloc_r+0x31c>
 8006712:	2a13      	cmp	r2, #19
 8006714:	6829      	ldr	r1, [r5, #0]
 8006716:	f240 809b 	bls.w	8006850 <_realloc_r+0x318>
 800671a:	f8cb 1008 	str.w	r1, [fp, #8]
 800671e:	6869      	ldr	r1, [r5, #4]
 8006720:	f8cb 100c 	str.w	r1, [fp, #12]
 8006724:	2a1b      	cmp	r2, #27
 8006726:	68a9      	ldr	r1, [r5, #8]
 8006728:	f200 809b 	bhi.w	8006862 <_realloc_r+0x32a>
 800672c:	f10b 0210 	add.w	r2, fp, #16
 8006730:	3508      	adds	r5, #8
 8006732:	6011      	str	r1, [r2, #0]
 8006734:	6869      	ldr	r1, [r5, #4]
 8006736:	6051      	str	r1, [r2, #4]
 8006738:	68a9      	ldr	r1, [r5, #8]
 800673a:	6091      	str	r1, [r2, #8]
 800673c:	eb0b 0104 	add.w	r1, fp, r4
 8006740:	eba9 0204 	sub.w	r2, r9, r4
 8006744:	f042 0201 	orr.w	r2, r2, #1
 8006748:	6099      	str	r1, [r3, #8]
 800674a:	604a      	str	r2, [r1, #4]
 800674c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006750:	f003 0301 	and.w	r3, r3, #1
 8006754:	431c      	orrs	r4, r3
 8006756:	4640      	mov	r0, r8
 8006758:	f8cb 4004 	str.w	r4, [fp, #4]
 800675c:	f7fc f890 	bl	8002880 <__malloc_unlock>
 8006760:	e78e      	b.n	8006680 <_realloc_r+0x148>
 8006762:	07d3      	lsls	r3, r2, #31
 8006764:	f53f af15 	bmi.w	8006592 <_realloc_r+0x5a>
 8006768:	f855 3c08 	ldr.w	r3, [r5, #-8]
 800676c:	eba7 0b03 	sub.w	fp, r7, r3
 8006770:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006774:	f022 0203 	bic.w	r2, r2, #3
 8006778:	4410      	add	r0, r2
 800677a:	1983      	adds	r3, r0, r6
 800677c:	428b      	cmp	r3, r1
 800677e:	f6ff af45 	blt.w	800660c <_realloc_r+0xd4>
 8006782:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006786:	46da      	mov	sl, fp
 8006788:	60ca      	str	r2, [r1, #12]
 800678a:	6091      	str	r1, [r2, #8]
 800678c:	e742      	b.n	8006614 <_realloc_r+0xdc>
 800678e:	6001      	str	r1, [r0, #0]
 8006790:	686b      	ldr	r3, [r5, #4]
 8006792:	6043      	str	r3, [r0, #4]
 8006794:	2a1b      	cmp	r2, #27
 8006796:	d83a      	bhi.n	800680e <_realloc_r+0x2d6>
 8006798:	f105 0208 	add.w	r2, r5, #8
 800679c:	f100 0308 	add.w	r3, r0, #8
 80067a0:	68a9      	ldr	r1, [r5, #8]
 80067a2:	e710      	b.n	80065c6 <_realloc_r+0x8e>
 80067a4:	f850 3c04 	ldr.w	r3, [r0, #-4]
 80067a8:	f023 0303 	bic.w	r3, r3, #3
 80067ac:	441e      	add	r6, r3
 80067ae:	eb07 0906 	add.w	r9, r7, r6
 80067b2:	e753      	b.n	800665c <_realloc_r+0x124>
 80067b4:	4652      	mov	r2, sl
 80067b6:	e749      	b.n	800664c <_realloc_r+0x114>
 80067b8:	4629      	mov	r1, r5
 80067ba:	4650      	mov	r0, sl
 80067bc:	461e      	mov	r6, r3
 80067be:	465f      	mov	r7, fp
 80067c0:	f7ff fb4c 	bl	8005e5c <memmove>
 80067c4:	4655      	mov	r5, sl
 80067c6:	e749      	b.n	800665c <_realloc_r+0x124>
 80067c8:	4629      	mov	r1, r5
 80067ca:	f7ff fb47 	bl	8005e5c <memmove>
 80067ce:	e6ff      	b.n	80065d0 <_realloc_r+0x98>
 80067d0:	4427      	add	r7, r4
 80067d2:	eba9 0904 	sub.w	r9, r9, r4
 80067d6:	f049 0201 	orr.w	r2, r9, #1
 80067da:	609f      	str	r7, [r3, #8]
 80067dc:	607a      	str	r2, [r7, #4]
 80067de:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80067e2:	f003 0301 	and.w	r3, r3, #1
 80067e6:	431c      	orrs	r4, r3
 80067e8:	4640      	mov	r0, r8
 80067ea:	f845 4c04 	str.w	r4, [r5, #-4]
 80067ee:	f7fc f847 	bl	8002880 <__malloc_unlock>
 80067f2:	46aa      	mov	sl, r5
 80067f4:	e744      	b.n	8006680 <_realloc_r+0x148>
 80067f6:	f8cb 1010 	str.w	r1, [fp, #16]
 80067fa:	68e9      	ldr	r1, [r5, #12]
 80067fc:	f8cb 1014 	str.w	r1, [fp, #20]
 8006800:	2a24      	cmp	r2, #36	; 0x24
 8006802:	d010      	beq.n	8006826 <_realloc_r+0x2ee>
 8006804:	6929      	ldr	r1, [r5, #16]
 8006806:	f10b 0218 	add.w	r2, fp, #24
 800680a:	3510      	adds	r5, #16
 800680c:	e71e      	b.n	800664c <_realloc_r+0x114>
 800680e:	68ab      	ldr	r3, [r5, #8]
 8006810:	6083      	str	r3, [r0, #8]
 8006812:	68eb      	ldr	r3, [r5, #12]
 8006814:	60c3      	str	r3, [r0, #12]
 8006816:	2a24      	cmp	r2, #36	; 0x24
 8006818:	d010      	beq.n	800683c <_realloc_r+0x304>
 800681a:	f105 0210 	add.w	r2, r5, #16
 800681e:	f100 0310 	add.w	r3, r0, #16
 8006822:	6929      	ldr	r1, [r5, #16]
 8006824:	e6cf      	b.n	80065c6 <_realloc_r+0x8e>
 8006826:	692a      	ldr	r2, [r5, #16]
 8006828:	f8cb 2018 	str.w	r2, [fp, #24]
 800682c:	696a      	ldr	r2, [r5, #20]
 800682e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006832:	69a9      	ldr	r1, [r5, #24]
 8006834:	f10b 0220 	add.w	r2, fp, #32
 8006838:	3518      	adds	r5, #24
 800683a:	e707      	b.n	800664c <_realloc_r+0x114>
 800683c:	692b      	ldr	r3, [r5, #16]
 800683e:	6103      	str	r3, [r0, #16]
 8006840:	696b      	ldr	r3, [r5, #20]
 8006842:	6143      	str	r3, [r0, #20]
 8006844:	69a9      	ldr	r1, [r5, #24]
 8006846:	f105 0218 	add.w	r2, r5, #24
 800684a:	f100 0318 	add.w	r3, r0, #24
 800684e:	e6ba      	b.n	80065c6 <_realloc_r+0x8e>
 8006850:	4652      	mov	r2, sl
 8006852:	e76e      	b.n	8006732 <_realloc_r+0x1fa>
 8006854:	4629      	mov	r1, r5
 8006856:	4650      	mov	r0, sl
 8006858:	9301      	str	r3, [sp, #4]
 800685a:	f7ff faff 	bl	8005e5c <memmove>
 800685e:	9b01      	ldr	r3, [sp, #4]
 8006860:	e76c      	b.n	800673c <_realloc_r+0x204>
 8006862:	f8cb 1010 	str.w	r1, [fp, #16]
 8006866:	68e9      	ldr	r1, [r5, #12]
 8006868:	f8cb 1014 	str.w	r1, [fp, #20]
 800686c:	2a24      	cmp	r2, #36	; 0x24
 800686e:	d004      	beq.n	800687a <_realloc_r+0x342>
 8006870:	6929      	ldr	r1, [r5, #16]
 8006872:	f10b 0218 	add.w	r2, fp, #24
 8006876:	3510      	adds	r5, #16
 8006878:	e75b      	b.n	8006732 <_realloc_r+0x1fa>
 800687a:	692a      	ldr	r2, [r5, #16]
 800687c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006880:	696a      	ldr	r2, [r5, #20]
 8006882:	f8cb 201c 	str.w	r2, [fp, #28]
 8006886:	69a9      	ldr	r1, [r5, #24]
 8006888:	f10b 0220 	add.w	r2, fp, #32
 800688c:	3518      	adds	r5, #24
 800688e:	e750      	b.n	8006732 <_realloc_r+0x1fa>
 8006890:	200005d8 	.word	0x200005d8

08006894 <frexp>:
 8006894:	ec53 2b10 	vmov	r2, r3, d0
 8006898:	b570      	push	{r4, r5, r6, lr}
 800689a:	4e16      	ldr	r6, [pc, #88]	; (80068f4 <frexp+0x60>)
 800689c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 80068a0:	2500      	movs	r5, #0
 80068a2:	42b1      	cmp	r1, r6
 80068a4:	4604      	mov	r4, r0
 80068a6:	6005      	str	r5, [r0, #0]
 80068a8:	dc21      	bgt.n	80068ee <frexp+0x5a>
 80068aa:	ee10 6a10 	vmov	r6, s0
 80068ae:	430e      	orrs	r6, r1
 80068b0:	d01d      	beq.n	80068ee <frexp+0x5a>
 80068b2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80068b6:	4618      	mov	r0, r3
 80068b8:	da0c      	bge.n	80068d4 <frexp+0x40>
 80068ba:	4619      	mov	r1, r3
 80068bc:	2200      	movs	r2, #0
 80068be:	ee10 0a10 	vmov	r0, s0
 80068c2:	4b0d      	ldr	r3, [pc, #52]	; (80068f8 <frexp+0x64>)
 80068c4:	f7fa f938 	bl	8000b38 <__aeabi_dmul>
 80068c8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 80068cc:	4602      	mov	r2, r0
 80068ce:	4608      	mov	r0, r1
 80068d0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80068d4:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 80068d8:	1509      	asrs	r1, r1, #20
 80068da:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 80068de:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 80068e2:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 80068e6:	4429      	add	r1, r5
 80068e8:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80068ec:	6021      	str	r1, [r4, #0]
 80068ee:	ec43 2b10 	vmov	d0, r2, r3
 80068f2:	bd70      	pop	{r4, r5, r6, pc}
 80068f4:	7fefffff 	.word	0x7fefffff
 80068f8:	43500000 	.word	0x43500000

080068fc <__sread>:
 80068fc:	b510      	push	{r4, lr}
 80068fe:	460c      	mov	r4, r1
 8006900:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006904:	f000 fabc 	bl	8006e80 <_read_r>
 8006908:	2800      	cmp	r0, #0
 800690a:	db03      	blt.n	8006914 <__sread+0x18>
 800690c:	6d23      	ldr	r3, [r4, #80]	; 0x50
 800690e:	4403      	add	r3, r0
 8006910:	6523      	str	r3, [r4, #80]	; 0x50
 8006912:	bd10      	pop	{r4, pc}
 8006914:	89a3      	ldrh	r3, [r4, #12]
 8006916:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 800691a:	81a3      	strh	r3, [r4, #12]
 800691c:	bd10      	pop	{r4, pc}
 800691e:	bf00      	nop

08006920 <__swrite>:
 8006920:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006924:	4616      	mov	r6, r2
 8006926:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 800692a:	461f      	mov	r7, r3
 800692c:	05d3      	lsls	r3, r2, #23
 800692e:	460c      	mov	r4, r1
 8006930:	4605      	mov	r5, r0
 8006932:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006936:	d507      	bpl.n	8006948 <__swrite+0x28>
 8006938:	2200      	movs	r2, #0
 800693a:	2302      	movs	r3, #2
 800693c:	f000 fa74 	bl	8006e28 <_lseek_r>
 8006940:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006944:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006948:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 800694c:	81a2      	strh	r2, [r4, #12]
 800694e:	463b      	mov	r3, r7
 8006950:	4632      	mov	r2, r6
 8006952:	4628      	mov	r0, r5
 8006954:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006958:	f000 b88c 	b.w	8006a74 <_write_r>

0800695c <__sseek>:
 800695c:	b510      	push	{r4, lr}
 800695e:	460c      	mov	r4, r1
 8006960:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006964:	f000 fa60 	bl	8006e28 <_lseek_r>
 8006968:	89a3      	ldrh	r3, [r4, #12]
 800696a:	1c42      	adds	r2, r0, #1
 800696c:	bf0e      	itee	eq
 800696e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006972:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006976:	6520      	strne	r0, [r4, #80]	; 0x50
 8006978:	81a3      	strh	r3, [r4, #12]
 800697a:	bd10      	pop	{r4, pc}

0800697c <__sclose>:
 800697c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006980:	f000 b922 	b.w	8006bc8 <_close_r>

08006984 <strncpy>:
 8006984:	ea40 0301 	orr.w	r3, r0, r1
 8006988:	079b      	lsls	r3, r3, #30
 800698a:	b470      	push	{r4, r5, r6}
 800698c:	d12a      	bne.n	80069e4 <strncpy+0x60>
 800698e:	2a03      	cmp	r2, #3
 8006990:	d928      	bls.n	80069e4 <strncpy+0x60>
 8006992:	460c      	mov	r4, r1
 8006994:	4603      	mov	r3, r0
 8006996:	4621      	mov	r1, r4
 8006998:	f854 6b04 	ldr.w	r6, [r4], #4
 800699c:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 80069a0:	ea25 0506 	bic.w	r5, r5, r6
 80069a4:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 80069a8:	d106      	bne.n	80069b8 <strncpy+0x34>
 80069aa:	3a04      	subs	r2, #4
 80069ac:	2a03      	cmp	r2, #3
 80069ae:	f843 6b04 	str.w	r6, [r3], #4
 80069b2:	4621      	mov	r1, r4
 80069b4:	d8ef      	bhi.n	8006996 <strncpy+0x12>
 80069b6:	b19a      	cbz	r2, 80069e0 <strncpy+0x5c>
 80069b8:	780c      	ldrb	r4, [r1, #0]
 80069ba:	701c      	strb	r4, [r3, #0]
 80069bc:	3a01      	subs	r2, #1
 80069be:	3301      	adds	r3, #1
 80069c0:	b13c      	cbz	r4, 80069d2 <strncpy+0x4e>
 80069c2:	b16a      	cbz	r2, 80069e0 <strncpy+0x5c>
 80069c4:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 80069c8:	f803 4b01 	strb.w	r4, [r3], #1
 80069cc:	3a01      	subs	r2, #1
 80069ce:	2c00      	cmp	r4, #0
 80069d0:	d1f7      	bne.n	80069c2 <strncpy+0x3e>
 80069d2:	b12a      	cbz	r2, 80069e0 <strncpy+0x5c>
 80069d4:	441a      	add	r2, r3
 80069d6:	2100      	movs	r1, #0
 80069d8:	f803 1b01 	strb.w	r1, [r3], #1
 80069dc:	4293      	cmp	r3, r2
 80069de:	d1fb      	bne.n	80069d8 <strncpy+0x54>
 80069e0:	bc70      	pop	{r4, r5, r6}
 80069e2:	4770      	bx	lr
 80069e4:	4603      	mov	r3, r0
 80069e6:	e7e6      	b.n	80069b6 <strncpy+0x32>

080069e8 <__sprint_r.part.0>:
 80069e8:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80069ec:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 80069ee:	049c      	lsls	r4, r3, #18
 80069f0:	4692      	mov	sl, r2
 80069f2:	d52d      	bpl.n	8006a50 <__sprint_r.part.0+0x68>
 80069f4:	6893      	ldr	r3, [r2, #8]
 80069f6:	6812      	ldr	r2, [r2, #0]
 80069f8:	b343      	cbz	r3, 8006a4c <__sprint_r.part.0+0x64>
 80069fa:	460e      	mov	r6, r1
 80069fc:	4607      	mov	r7, r0
 80069fe:	f102 0908 	add.w	r9, r2, #8
 8006a02:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006a06:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006a0a:	d015      	beq.n	8006a38 <__sprint_r.part.0+0x50>
 8006a0c:	3d04      	subs	r5, #4
 8006a0e:	2400      	movs	r4, #0
 8006a10:	e001      	b.n	8006a16 <__sprint_r.part.0+0x2e>
 8006a12:	45a0      	cmp	r8, r4
 8006a14:	d00e      	beq.n	8006a34 <__sprint_r.part.0+0x4c>
 8006a16:	4632      	mov	r2, r6
 8006a18:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006a1c:	4638      	mov	r0, r7
 8006a1e:	f000 f99d 	bl	8006d5c <_fputwc_r>
 8006a22:	1c43      	adds	r3, r0, #1
 8006a24:	f104 0401 	add.w	r4, r4, #1
 8006a28:	d1f3      	bne.n	8006a12 <__sprint_r.part.0+0x2a>
 8006a2a:	2300      	movs	r3, #0
 8006a2c:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006a30:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a34:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006a38:	f02b 0b03 	bic.w	fp, fp, #3
 8006a3c:	eba3 030b 	sub.w	r3, r3, fp
 8006a40:	f8ca 3008 	str.w	r3, [sl, #8]
 8006a44:	f109 0908 	add.w	r9, r9, #8
 8006a48:	2b00      	cmp	r3, #0
 8006a4a:	d1da      	bne.n	8006a02 <__sprint_r.part.0+0x1a>
 8006a4c:	2000      	movs	r0, #0
 8006a4e:	e7ec      	b.n	8006a2a <__sprint_r.part.0+0x42>
 8006a50:	f7fe ffce 	bl	80059f0 <__sfvwrite_r>
 8006a54:	2300      	movs	r3, #0
 8006a56:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006a5a:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a5e:	bf00      	nop

08006a60 <__sprint_r>:
 8006a60:	6893      	ldr	r3, [r2, #8]
 8006a62:	b10b      	cbz	r3, 8006a68 <__sprint_r+0x8>
 8006a64:	f7ff bfc0 	b.w	80069e8 <__sprint_r.part.0>
 8006a68:	b410      	push	{r4}
 8006a6a:	4618      	mov	r0, r3
 8006a6c:	6053      	str	r3, [r2, #4]
 8006a6e:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006a72:	4770      	bx	lr

08006a74 <_write_r>:
 8006a74:	b570      	push	{r4, r5, r6, lr}
 8006a76:	460d      	mov	r5, r1
 8006a78:	4c08      	ldr	r4, [pc, #32]	; (8006a9c <_write_r+0x28>)
 8006a7a:	4611      	mov	r1, r2
 8006a7c:	4606      	mov	r6, r0
 8006a7e:	461a      	mov	r2, r3
 8006a80:	4628      	mov	r0, r5
 8006a82:	2300      	movs	r3, #0
 8006a84:	6023      	str	r3, [r4, #0]
 8006a86:	f7fb fb3e 	bl	8002106 <_write>
 8006a8a:	1c43      	adds	r3, r0, #1
 8006a8c:	d000      	beq.n	8006a90 <_write_r+0x1c>
 8006a8e:	bd70      	pop	{r4, r5, r6, pc}
 8006a90:	6823      	ldr	r3, [r4, #0]
 8006a92:	2b00      	cmp	r3, #0
 8006a94:	d0fb      	beq.n	8006a8e <_write_r+0x1a>
 8006a96:	6033      	str	r3, [r6, #0]
 8006a98:	bd70      	pop	{r4, r5, r6, pc}
 8006a9a:	bf00      	nop
 8006a9c:	20000c9c 	.word	0x20000c9c

08006aa0 <__register_exitproc>:
 8006aa0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006aa4:	4d2b      	ldr	r5, [pc, #172]	; (8006b54 <__register_exitproc+0xb4>)
 8006aa6:	4606      	mov	r6, r0
 8006aa8:	6828      	ldr	r0, [r5, #0]
 8006aaa:	4698      	mov	r8, r3
 8006aac:	460f      	mov	r7, r1
 8006aae:	4691      	mov	r9, r2
 8006ab0:	f7ff f958 	bl	8005d64 <__retarget_lock_acquire_recursive>
 8006ab4:	4b28      	ldr	r3, [pc, #160]	; (8006b58 <__register_exitproc+0xb8>)
 8006ab6:	681c      	ldr	r4, [r3, #0]
 8006ab8:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006abc:	2b00      	cmp	r3, #0
 8006abe:	d03d      	beq.n	8006b3c <__register_exitproc+0x9c>
 8006ac0:	685a      	ldr	r2, [r3, #4]
 8006ac2:	2a1f      	cmp	r2, #31
 8006ac4:	dc0d      	bgt.n	8006ae2 <__register_exitproc+0x42>
 8006ac6:	f102 0c01 	add.w	ip, r2, #1
 8006aca:	bb16      	cbnz	r6, 8006b12 <__register_exitproc+0x72>
 8006acc:	3202      	adds	r2, #2
 8006ace:	f8c3 c004 	str.w	ip, [r3, #4]
 8006ad2:	6828      	ldr	r0, [r5, #0]
 8006ad4:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006ad8:	f7ff f946 	bl	8005d68 <__retarget_lock_release_recursive>
 8006adc:	2000      	movs	r0, #0
 8006ade:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006ae2:	4b1e      	ldr	r3, [pc, #120]	; (8006b5c <__register_exitproc+0xbc>)
 8006ae4:	b37b      	cbz	r3, 8006b46 <__register_exitproc+0xa6>
 8006ae6:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006aea:	f7fb fbc5 	bl	8002278 <malloc>
 8006aee:	4603      	mov	r3, r0
 8006af0:	b348      	cbz	r0, 8006b46 <__register_exitproc+0xa6>
 8006af2:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006af6:	2100      	movs	r1, #0
 8006af8:	e9c0 2100 	strd	r2, r1, [r0]
 8006afc:	f04f 0c01 	mov.w	ip, #1
 8006b00:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006b04:	460a      	mov	r2, r1
 8006b06:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006b0a:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006b0e:	2e00      	cmp	r6, #0
 8006b10:	d0dc      	beq.n	8006acc <__register_exitproc+0x2c>
 8006b12:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006b16:	2401      	movs	r4, #1
 8006b18:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006b1c:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006b20:	4094      	lsls	r4, r2
 8006b22:	4320      	orrs	r0, r4
 8006b24:	2e02      	cmp	r6, #2
 8006b26:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006b2a:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006b2e:	d1cd      	bne.n	8006acc <__register_exitproc+0x2c>
 8006b30:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006b34:	430c      	orrs	r4, r1
 8006b36:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006b3a:	e7c7      	b.n	8006acc <__register_exitproc+0x2c>
 8006b3c:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006b40:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006b44:	e7bc      	b.n	8006ac0 <__register_exitproc+0x20>
 8006b46:	6828      	ldr	r0, [r5, #0]
 8006b48:	f7ff f90e 	bl	8005d68 <__retarget_lock_release_recursive>
 8006b4c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006b50:	e7c5      	b.n	8006ade <__register_exitproc+0x3e>
 8006b52:	bf00      	nop
 8006b54:	200009e8 	.word	0x200009e8
 8006b58:	080070fc 	.word	0x080070fc
 8006b5c:	08002279 	.word	0x08002279

08006b60 <_calloc_r>:
 8006b60:	b510      	push	{r4, lr}
 8006b62:	fb02 f101 	mul.w	r1, r2, r1
 8006b66:	f7fb fb97 	bl	8002298 <_malloc_r>
 8006b6a:	4604      	mov	r4, r0
 8006b6c:	b1d8      	cbz	r0, 8006ba6 <_calloc_r+0x46>
 8006b6e:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006b72:	f022 0203 	bic.w	r2, r2, #3
 8006b76:	3a04      	subs	r2, #4
 8006b78:	2a24      	cmp	r2, #36	; 0x24
 8006b7a:	d81d      	bhi.n	8006bb8 <_calloc_r+0x58>
 8006b7c:	2a13      	cmp	r2, #19
 8006b7e:	d914      	bls.n	8006baa <_calloc_r+0x4a>
 8006b80:	2300      	movs	r3, #0
 8006b82:	2a1b      	cmp	r2, #27
 8006b84:	e9c0 3300 	strd	r3, r3, [r0]
 8006b88:	d91b      	bls.n	8006bc2 <_calloc_r+0x62>
 8006b8a:	2a24      	cmp	r2, #36	; 0x24
 8006b8c:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006b90:	bf0a      	itet	eq
 8006b92:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006b96:	f100 0210 	addne.w	r2, r0, #16
 8006b9a:	f100 0218 	addeq.w	r2, r0, #24
 8006b9e:	2300      	movs	r3, #0
 8006ba0:	e9c2 3300 	strd	r3, r3, [r2]
 8006ba4:	6093      	str	r3, [r2, #8]
 8006ba6:	4620      	mov	r0, r4
 8006ba8:	bd10      	pop	{r4, pc}
 8006baa:	4602      	mov	r2, r0
 8006bac:	2300      	movs	r3, #0
 8006bae:	e9c2 3300 	strd	r3, r3, [r2]
 8006bb2:	6093      	str	r3, [r2, #8]
 8006bb4:	4620      	mov	r0, r4
 8006bb6:	bd10      	pop	{r4, pc}
 8006bb8:	2100      	movs	r1, #0
 8006bba:	f7fb fe11 	bl	80027e0 <memset>
 8006bbe:	4620      	mov	r0, r4
 8006bc0:	bd10      	pop	{r4, pc}
 8006bc2:	f100 0208 	add.w	r2, r0, #8
 8006bc6:	e7f1      	b.n	8006bac <_calloc_r+0x4c>

08006bc8 <_close_r>:
 8006bc8:	b538      	push	{r3, r4, r5, lr}
 8006bca:	4c07      	ldr	r4, [pc, #28]	; (8006be8 <_close_r+0x20>)
 8006bcc:	2300      	movs	r3, #0
 8006bce:	4605      	mov	r5, r0
 8006bd0:	4608      	mov	r0, r1
 8006bd2:	6023      	str	r3, [r4, #0]
 8006bd4:	f7fb fac6 	bl	8002164 <_close>
 8006bd8:	1c43      	adds	r3, r0, #1
 8006bda:	d000      	beq.n	8006bde <_close_r+0x16>
 8006bdc:	bd38      	pop	{r3, r4, r5, pc}
 8006bde:	6823      	ldr	r3, [r4, #0]
 8006be0:	2b00      	cmp	r3, #0
 8006be2:	d0fb      	beq.n	8006bdc <_close_r+0x14>
 8006be4:	602b      	str	r3, [r5, #0]
 8006be6:	bd38      	pop	{r3, r4, r5, pc}
 8006be8:	20000c9c 	.word	0x20000c9c

08006bec <_fclose_r>:
 8006bec:	b570      	push	{r4, r5, r6, lr}
 8006bee:	2900      	cmp	r1, #0
 8006bf0:	d048      	beq.n	8006c84 <_fclose_r+0x98>
 8006bf2:	4605      	mov	r5, r0
 8006bf4:	460c      	mov	r4, r1
 8006bf6:	b110      	cbz	r0, 8006bfe <_fclose_r+0x12>
 8006bf8:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006bfa:	2b00      	cmp	r3, #0
 8006bfc:	d048      	beq.n	8006c90 <_fclose_r+0xa4>
 8006bfe:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c00:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c04:	07d0      	lsls	r0, r2, #31
 8006c06:	d440      	bmi.n	8006c8a <_fclose_r+0x9e>
 8006c08:	0599      	lsls	r1, r3, #22
 8006c0a:	d530      	bpl.n	8006c6e <_fclose_r+0x82>
 8006c0c:	4621      	mov	r1, r4
 8006c0e:	4628      	mov	r0, r5
 8006c10:	f7fe fc52 	bl	80054b8 <__sflush_r>
 8006c14:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006c16:	4606      	mov	r6, r0
 8006c18:	b133      	cbz	r3, 8006c28 <_fclose_r+0x3c>
 8006c1a:	69e1      	ldr	r1, [r4, #28]
 8006c1c:	4628      	mov	r0, r5
 8006c1e:	4798      	blx	r3
 8006c20:	2800      	cmp	r0, #0
 8006c22:	bfb8      	it	lt
 8006c24:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006c28:	89a3      	ldrh	r3, [r4, #12]
 8006c2a:	061a      	lsls	r2, r3, #24
 8006c2c:	d43c      	bmi.n	8006ca8 <_fclose_r+0xbc>
 8006c2e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006c30:	b141      	cbz	r1, 8006c44 <_fclose_r+0x58>
 8006c32:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006c36:	4299      	cmp	r1, r3
 8006c38:	d002      	beq.n	8006c40 <_fclose_r+0x54>
 8006c3a:	4628      	mov	r0, r5
 8006c3c:	f7fe fde4 	bl	8005808 <_free_r>
 8006c40:	2300      	movs	r3, #0
 8006c42:	6323      	str	r3, [r4, #48]	; 0x30
 8006c44:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006c46:	b121      	cbz	r1, 8006c52 <_fclose_r+0x66>
 8006c48:	4628      	mov	r0, r5
 8006c4a:	f7fe fddd 	bl	8005808 <_free_r>
 8006c4e:	2300      	movs	r3, #0
 8006c50:	6463      	str	r3, [r4, #68]	; 0x44
 8006c52:	f7fe fd63 	bl	800571c <__sfp_lock_acquire>
 8006c56:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006c58:	2200      	movs	r2, #0
 8006c5a:	07db      	lsls	r3, r3, #31
 8006c5c:	81a2      	strh	r2, [r4, #12]
 8006c5e:	d51f      	bpl.n	8006ca0 <_fclose_r+0xb4>
 8006c60:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c62:	f7ff f87d 	bl	8005d60 <__retarget_lock_close_recursive>
 8006c66:	f7fe fd5f 	bl	8005728 <__sfp_lock_release>
 8006c6a:	4630      	mov	r0, r6
 8006c6c:	bd70      	pop	{r4, r5, r6, pc}
 8006c6e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c70:	f7ff f878 	bl	8005d64 <__retarget_lock_acquire_recursive>
 8006c74:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c78:	2b00      	cmp	r3, #0
 8006c7a:	d1c7      	bne.n	8006c0c <_fclose_r+0x20>
 8006c7c:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006c7e:	f016 0601 	ands.w	r6, r6, #1
 8006c82:	d016      	beq.n	8006cb2 <_fclose_r+0xc6>
 8006c84:	2600      	movs	r6, #0
 8006c86:	4630      	mov	r0, r6
 8006c88:	bd70      	pop	{r4, r5, r6, pc}
 8006c8a:	2b00      	cmp	r3, #0
 8006c8c:	d0fa      	beq.n	8006c84 <_fclose_r+0x98>
 8006c8e:	e7bd      	b.n	8006c0c <_fclose_r+0x20>
 8006c90:	f7fe fd18 	bl	80056c4 <__sinit>
 8006c94:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c96:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c9a:	07d0      	lsls	r0, r2, #31
 8006c9c:	d4f5      	bmi.n	8006c8a <_fclose_r+0x9e>
 8006c9e:	e7b3      	b.n	8006c08 <_fclose_r+0x1c>
 8006ca0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ca2:	f7ff f861 	bl	8005d68 <__retarget_lock_release_recursive>
 8006ca6:	e7db      	b.n	8006c60 <_fclose_r+0x74>
 8006ca8:	6921      	ldr	r1, [r4, #16]
 8006caa:	4628      	mov	r0, r5
 8006cac:	f7fe fdac 	bl	8005808 <_free_r>
 8006cb0:	e7bd      	b.n	8006c2e <_fclose_r+0x42>
 8006cb2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cb4:	f7ff f858 	bl	8005d68 <__retarget_lock_release_recursive>
 8006cb8:	4630      	mov	r0, r6
 8006cba:	bd70      	pop	{r4, r5, r6, pc}

08006cbc <__fputwc>:
 8006cbc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006cc0:	b082      	sub	sp, #8
 8006cc2:	4681      	mov	r9, r0
 8006cc4:	4688      	mov	r8, r1
 8006cc6:	4614      	mov	r4, r2
 8006cc8:	f000 f8a0 	bl	8006e0c <__locale_mb_cur_max>
 8006ccc:	2801      	cmp	r0, #1
 8006cce:	d103      	bne.n	8006cd8 <__fputwc+0x1c>
 8006cd0:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006cd4:	2bfe      	cmp	r3, #254	; 0xfe
 8006cd6:	d933      	bls.n	8006d40 <__fputwc+0x84>
 8006cd8:	4642      	mov	r2, r8
 8006cda:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006cde:	a901      	add	r1, sp, #4
 8006ce0:	4648      	mov	r0, r9
 8006ce2:	f000 f93b 	bl	8006f5c <_wcrtomb_r>
 8006ce6:	1c42      	adds	r2, r0, #1
 8006ce8:	4606      	mov	r6, r0
 8006cea:	d02f      	beq.n	8006d4c <__fputwc+0x90>
 8006cec:	b320      	cbz	r0, 8006d38 <__fputwc+0x7c>
 8006cee:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006cf2:	2500      	movs	r5, #0
 8006cf4:	f10d 0a04 	add.w	sl, sp, #4
 8006cf8:	e009      	b.n	8006d0e <__fputwc+0x52>
 8006cfa:	6823      	ldr	r3, [r4, #0]
 8006cfc:	1c5a      	adds	r2, r3, #1
 8006cfe:	6022      	str	r2, [r4, #0]
 8006d00:	f883 c000 	strb.w	ip, [r3]
 8006d04:	3501      	adds	r5, #1
 8006d06:	42b5      	cmp	r5, r6
 8006d08:	d216      	bcs.n	8006d38 <__fputwc+0x7c>
 8006d0a:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006d0e:	68a3      	ldr	r3, [r4, #8]
 8006d10:	3b01      	subs	r3, #1
 8006d12:	2b00      	cmp	r3, #0
 8006d14:	60a3      	str	r3, [r4, #8]
 8006d16:	daf0      	bge.n	8006cfa <__fputwc+0x3e>
 8006d18:	69a7      	ldr	r7, [r4, #24]
 8006d1a:	42bb      	cmp	r3, r7
 8006d1c:	4661      	mov	r1, ip
 8006d1e:	4622      	mov	r2, r4
 8006d20:	4648      	mov	r0, r9
 8006d22:	db02      	blt.n	8006d2a <__fputwc+0x6e>
 8006d24:	f1bc 0f0a 	cmp.w	ip, #10
 8006d28:	d1e7      	bne.n	8006cfa <__fputwc+0x3e>
 8006d2a:	f000 f8bf 	bl	8006eac <__swbuf_r>
 8006d2e:	1c43      	adds	r3, r0, #1
 8006d30:	d1e8      	bne.n	8006d04 <__fputwc+0x48>
 8006d32:	b002      	add	sp, #8
 8006d34:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d38:	4640      	mov	r0, r8
 8006d3a:	b002      	add	sp, #8
 8006d3c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d40:	fa5f fc88 	uxtb.w	ip, r8
 8006d44:	4606      	mov	r6, r0
 8006d46:	f88d c004 	strb.w	ip, [sp, #4]
 8006d4a:	e7d2      	b.n	8006cf2 <__fputwc+0x36>
 8006d4c:	89a3      	ldrh	r3, [r4, #12]
 8006d4e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006d52:	81a3      	strh	r3, [r4, #12]
 8006d54:	b002      	add	sp, #8
 8006d56:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d5a:	bf00      	nop

08006d5c <_fputwc_r>:
 8006d5c:	b530      	push	{r4, r5, lr}
 8006d5e:	4605      	mov	r5, r0
 8006d60:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006d62:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006d66:	07c0      	lsls	r0, r0, #31
 8006d68:	4614      	mov	r4, r2
 8006d6a:	b083      	sub	sp, #12
 8006d6c:	b29a      	uxth	r2, r3
 8006d6e:	d401      	bmi.n	8006d74 <_fputwc_r+0x18>
 8006d70:	0590      	lsls	r0, r2, #22
 8006d72:	d51c      	bpl.n	8006dae <_fputwc_r+0x52>
 8006d74:	0490      	lsls	r0, r2, #18
 8006d76:	d406      	bmi.n	8006d86 <_fputwc_r+0x2a>
 8006d78:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006d7a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006d7e:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006d82:	81a3      	strh	r3, [r4, #12]
 8006d84:	6662      	str	r2, [r4, #100]	; 0x64
 8006d86:	4628      	mov	r0, r5
 8006d88:	4622      	mov	r2, r4
 8006d8a:	f7ff ff97 	bl	8006cbc <__fputwc>
 8006d8e:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006d90:	07da      	lsls	r2, r3, #31
 8006d92:	4605      	mov	r5, r0
 8006d94:	d402      	bmi.n	8006d9c <_fputwc_r+0x40>
 8006d96:	89a3      	ldrh	r3, [r4, #12]
 8006d98:	059b      	lsls	r3, r3, #22
 8006d9a:	d502      	bpl.n	8006da2 <_fputwc_r+0x46>
 8006d9c:	4628      	mov	r0, r5
 8006d9e:	b003      	add	sp, #12
 8006da0:	bd30      	pop	{r4, r5, pc}
 8006da2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006da4:	f7fe ffe0 	bl	8005d68 <__retarget_lock_release_recursive>
 8006da8:	4628      	mov	r0, r5
 8006daa:	b003      	add	sp, #12
 8006dac:	bd30      	pop	{r4, r5, pc}
 8006dae:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006db0:	9101      	str	r1, [sp, #4]
 8006db2:	f7fe ffd7 	bl	8005d64 <__retarget_lock_acquire_recursive>
 8006db6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006dba:	9901      	ldr	r1, [sp, #4]
 8006dbc:	b29a      	uxth	r2, r3
 8006dbe:	e7d9      	b.n	8006d74 <_fputwc_r+0x18>

08006dc0 <_fstat_r>:
 8006dc0:	b538      	push	{r3, r4, r5, lr}
 8006dc2:	460b      	mov	r3, r1
 8006dc4:	4c07      	ldr	r4, [pc, #28]	; (8006de4 <_fstat_r+0x24>)
 8006dc6:	4605      	mov	r5, r0
 8006dc8:	4611      	mov	r1, r2
 8006dca:	4618      	mov	r0, r3
 8006dcc:	2300      	movs	r3, #0
 8006dce:	6023      	str	r3, [r4, #0]
 8006dd0:	f7fb f9cb 	bl	800216a <_fstat>
 8006dd4:	1c43      	adds	r3, r0, #1
 8006dd6:	d000      	beq.n	8006dda <_fstat_r+0x1a>
 8006dd8:	bd38      	pop	{r3, r4, r5, pc}
 8006dda:	6823      	ldr	r3, [r4, #0]
 8006ddc:	2b00      	cmp	r3, #0
 8006dde:	d0fb      	beq.n	8006dd8 <_fstat_r+0x18>
 8006de0:	602b      	str	r3, [r5, #0]
 8006de2:	bd38      	pop	{r3, r4, r5, pc}
 8006de4:	20000c9c 	.word	0x20000c9c

08006de8 <_isatty_r>:
 8006de8:	b538      	push	{r3, r4, r5, lr}
 8006dea:	4c07      	ldr	r4, [pc, #28]	; (8006e08 <_isatty_r+0x20>)
 8006dec:	2300      	movs	r3, #0
 8006dee:	4605      	mov	r5, r0
 8006df0:	4608      	mov	r0, r1
 8006df2:	6023      	str	r3, [r4, #0]
 8006df4:	f7fb f9be 	bl	8002174 <_isatty>
 8006df8:	1c43      	adds	r3, r0, #1
 8006dfa:	d000      	beq.n	8006dfe <_isatty_r+0x16>
 8006dfc:	bd38      	pop	{r3, r4, r5, pc}
 8006dfe:	6823      	ldr	r3, [r4, #0]
 8006e00:	2b00      	cmp	r3, #0
 8006e02:	d0fb      	beq.n	8006dfc <_isatty_r+0x14>
 8006e04:	602b      	str	r3, [r5, #0]
 8006e06:	bd38      	pop	{r3, r4, r5, pc}
 8006e08:	20000c9c 	.word	0x20000c9c

08006e0c <__locale_mb_cur_max>:
 8006e0c:	4b04      	ldr	r3, [pc, #16]	; (8006e20 <__locale_mb_cur_max+0x14>)
 8006e0e:	4a05      	ldr	r2, [pc, #20]	; (8006e24 <__locale_mb_cur_max+0x18>)
 8006e10:	681b      	ldr	r3, [r3, #0]
 8006e12:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006e14:	2b00      	cmp	r3, #0
 8006e16:	bf08      	it	eq
 8006e18:	4613      	moveq	r3, r2
 8006e1a:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006e1e:	4770      	bx	lr
 8006e20:	200001a8 	.word	0x200001a8
 8006e24:	200009ec 	.word	0x200009ec

08006e28 <_lseek_r>:
 8006e28:	b570      	push	{r4, r5, r6, lr}
 8006e2a:	460d      	mov	r5, r1
 8006e2c:	4c08      	ldr	r4, [pc, #32]	; (8006e50 <_lseek_r+0x28>)
 8006e2e:	4611      	mov	r1, r2
 8006e30:	4606      	mov	r6, r0
 8006e32:	461a      	mov	r2, r3
 8006e34:	4628      	mov	r0, r5
 8006e36:	2300      	movs	r3, #0
 8006e38:	6023      	str	r3, [r4, #0]
 8006e3a:	f7fb f99d 	bl	8002178 <_lseek>
 8006e3e:	1c43      	adds	r3, r0, #1
 8006e40:	d000      	beq.n	8006e44 <_lseek_r+0x1c>
 8006e42:	bd70      	pop	{r4, r5, r6, pc}
 8006e44:	6823      	ldr	r3, [r4, #0]
 8006e46:	2b00      	cmp	r3, #0
 8006e48:	d0fb      	beq.n	8006e42 <_lseek_r+0x1a>
 8006e4a:	6033      	str	r3, [r6, #0]
 8006e4c:	bd70      	pop	{r4, r5, r6, pc}
 8006e4e:	bf00      	nop
 8006e50:	20000c9c 	.word	0x20000c9c

08006e54 <__ascii_mbtowc>:
 8006e54:	b082      	sub	sp, #8
 8006e56:	b149      	cbz	r1, 8006e6c <__ascii_mbtowc+0x18>
 8006e58:	b15a      	cbz	r2, 8006e72 <__ascii_mbtowc+0x1e>
 8006e5a:	b16b      	cbz	r3, 8006e78 <__ascii_mbtowc+0x24>
 8006e5c:	7813      	ldrb	r3, [r2, #0]
 8006e5e:	600b      	str	r3, [r1, #0]
 8006e60:	7812      	ldrb	r2, [r2, #0]
 8006e62:	1c10      	adds	r0, r2, #0
 8006e64:	bf18      	it	ne
 8006e66:	2001      	movne	r0, #1
 8006e68:	b002      	add	sp, #8
 8006e6a:	4770      	bx	lr
 8006e6c:	a901      	add	r1, sp, #4
 8006e6e:	2a00      	cmp	r2, #0
 8006e70:	d1f3      	bne.n	8006e5a <__ascii_mbtowc+0x6>
 8006e72:	4610      	mov	r0, r2
 8006e74:	b002      	add	sp, #8
 8006e76:	4770      	bx	lr
 8006e78:	f06f 0001 	mvn.w	r0, #1
 8006e7c:	e7f4      	b.n	8006e68 <__ascii_mbtowc+0x14>
 8006e7e:	bf00      	nop

08006e80 <_read_r>:
 8006e80:	b570      	push	{r4, r5, r6, lr}
 8006e82:	460d      	mov	r5, r1
 8006e84:	4c08      	ldr	r4, [pc, #32]	; (8006ea8 <_read_r+0x28>)
 8006e86:	4611      	mov	r1, r2
 8006e88:	4606      	mov	r6, r0
 8006e8a:	461a      	mov	r2, r3
 8006e8c:	4628      	mov	r0, r5
 8006e8e:	2300      	movs	r3, #0
 8006e90:	6023      	str	r3, [r4, #0]
 8006e92:	f7fb f925 	bl	80020e0 <_read>
 8006e96:	1c43      	adds	r3, r0, #1
 8006e98:	d000      	beq.n	8006e9c <_read_r+0x1c>
 8006e9a:	bd70      	pop	{r4, r5, r6, pc}
 8006e9c:	6823      	ldr	r3, [r4, #0]
 8006e9e:	2b00      	cmp	r3, #0
 8006ea0:	d0fb      	beq.n	8006e9a <_read_r+0x1a>
 8006ea2:	6033      	str	r3, [r6, #0]
 8006ea4:	bd70      	pop	{r4, r5, r6, pc}
 8006ea6:	bf00      	nop
 8006ea8:	20000c9c 	.word	0x20000c9c

08006eac <__swbuf_r>:
 8006eac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006eae:	460d      	mov	r5, r1
 8006eb0:	4614      	mov	r4, r2
 8006eb2:	4606      	mov	r6, r0
 8006eb4:	b110      	cbz	r0, 8006ebc <__swbuf_r+0x10>
 8006eb6:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006eb8:	2b00      	cmp	r3, #0
 8006eba:	d043      	beq.n	8006f44 <__swbuf_r+0x98>
 8006ebc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006ec0:	69a3      	ldr	r3, [r4, #24]
 8006ec2:	60a3      	str	r3, [r4, #8]
 8006ec4:	b291      	uxth	r1, r2
 8006ec6:	0708      	lsls	r0, r1, #28
 8006ec8:	d51b      	bpl.n	8006f02 <__swbuf_r+0x56>
 8006eca:	6923      	ldr	r3, [r4, #16]
 8006ecc:	b1cb      	cbz	r3, 8006f02 <__swbuf_r+0x56>
 8006ece:	b2ed      	uxtb	r5, r5
 8006ed0:	0489      	lsls	r1, r1, #18
 8006ed2:	462f      	mov	r7, r5
 8006ed4:	d522      	bpl.n	8006f1c <__swbuf_r+0x70>
 8006ed6:	6822      	ldr	r2, [r4, #0]
 8006ed8:	6961      	ldr	r1, [r4, #20]
 8006eda:	1ad3      	subs	r3, r2, r3
 8006edc:	4299      	cmp	r1, r3
 8006ede:	dd29      	ble.n	8006f34 <__swbuf_r+0x88>
 8006ee0:	3301      	adds	r3, #1
 8006ee2:	68a1      	ldr	r1, [r4, #8]
 8006ee4:	1c50      	adds	r0, r2, #1
 8006ee6:	3901      	subs	r1, #1
 8006ee8:	60a1      	str	r1, [r4, #8]
 8006eea:	6020      	str	r0, [r4, #0]
 8006eec:	7015      	strb	r5, [r2, #0]
 8006eee:	6962      	ldr	r2, [r4, #20]
 8006ef0:	429a      	cmp	r2, r3
 8006ef2:	d02a      	beq.n	8006f4a <__swbuf_r+0x9e>
 8006ef4:	89a3      	ldrh	r3, [r4, #12]
 8006ef6:	07db      	lsls	r3, r3, #31
 8006ef8:	d501      	bpl.n	8006efe <__swbuf_r+0x52>
 8006efa:	2d0a      	cmp	r5, #10
 8006efc:	d025      	beq.n	8006f4a <__swbuf_r+0x9e>
 8006efe:	4638      	mov	r0, r7
 8006f00:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006f02:	4621      	mov	r1, r4
 8006f04:	4630      	mov	r0, r6
 8006f06:	f7fd fabf 	bl	8004488 <__swsetup_r>
 8006f0a:	bb20      	cbnz	r0, 8006f56 <__swbuf_r+0xaa>
 8006f0c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f10:	6923      	ldr	r3, [r4, #16]
 8006f12:	b291      	uxth	r1, r2
 8006f14:	b2ed      	uxtb	r5, r5
 8006f16:	0489      	lsls	r1, r1, #18
 8006f18:	462f      	mov	r7, r5
 8006f1a:	d4dc      	bmi.n	8006ed6 <__swbuf_r+0x2a>
 8006f1c:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006f1e:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006f22:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006f26:	81a2      	strh	r2, [r4, #12]
 8006f28:	6822      	ldr	r2, [r4, #0]
 8006f2a:	6661      	str	r1, [r4, #100]	; 0x64
 8006f2c:	6961      	ldr	r1, [r4, #20]
 8006f2e:	1ad3      	subs	r3, r2, r3
 8006f30:	4299      	cmp	r1, r3
 8006f32:	dcd5      	bgt.n	8006ee0 <__swbuf_r+0x34>
 8006f34:	4621      	mov	r1, r4
 8006f36:	4630      	mov	r0, r6
 8006f38:	f7fe fb68 	bl	800560c <_fflush_r>
 8006f3c:	b958      	cbnz	r0, 8006f56 <__swbuf_r+0xaa>
 8006f3e:	6822      	ldr	r2, [r4, #0]
 8006f40:	2301      	movs	r3, #1
 8006f42:	e7ce      	b.n	8006ee2 <__swbuf_r+0x36>
 8006f44:	f7fe fbbe 	bl	80056c4 <__sinit>
 8006f48:	e7b8      	b.n	8006ebc <__swbuf_r+0x10>
 8006f4a:	4621      	mov	r1, r4
 8006f4c:	4630      	mov	r0, r6
 8006f4e:	f7fe fb5d 	bl	800560c <_fflush_r>
 8006f52:	2800      	cmp	r0, #0
 8006f54:	d0d3      	beq.n	8006efe <__swbuf_r+0x52>
 8006f56:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006f5a:	e7d0      	b.n	8006efe <__swbuf_r+0x52>

08006f5c <_wcrtomb_r>:
 8006f5c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006f5e:	4c11      	ldr	r4, [pc, #68]	; (8006fa4 <_wcrtomb_r+0x48>)
 8006f60:	6824      	ldr	r4, [r4, #0]
 8006f62:	b085      	sub	sp, #20
 8006f64:	4606      	mov	r6, r0
 8006f66:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006f68:	461f      	mov	r7, r3
 8006f6a:	b151      	cbz	r1, 8006f82 <_wcrtomb_r+0x26>
 8006f6c:	4d0e      	ldr	r5, [pc, #56]	; (8006fa8 <_wcrtomb_r+0x4c>)
 8006f6e:	2c00      	cmp	r4, #0
 8006f70:	bf08      	it	eq
 8006f72:	462c      	moveq	r4, r5
 8006f74:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006f78:	47a0      	blx	r4
 8006f7a:	1c43      	adds	r3, r0, #1
 8006f7c:	d00c      	beq.n	8006f98 <_wcrtomb_r+0x3c>
 8006f7e:	b005      	add	sp, #20
 8006f80:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006f82:	4a09      	ldr	r2, [pc, #36]	; (8006fa8 <_wcrtomb_r+0x4c>)
 8006f84:	2c00      	cmp	r4, #0
 8006f86:	bf08      	it	eq
 8006f88:	4614      	moveq	r4, r2
 8006f8a:	460a      	mov	r2, r1
 8006f8c:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006f90:	a901      	add	r1, sp, #4
 8006f92:	47a0      	blx	r4
 8006f94:	1c43      	adds	r3, r0, #1
 8006f96:	d1f2      	bne.n	8006f7e <_wcrtomb_r+0x22>
 8006f98:	2200      	movs	r2, #0
 8006f9a:	238a      	movs	r3, #138	; 0x8a
 8006f9c:	603a      	str	r2, [r7, #0]
 8006f9e:	6033      	str	r3, [r6, #0]
 8006fa0:	b005      	add	sp, #20
 8006fa2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006fa4:	200001a8 	.word	0x200001a8
 8006fa8:	200009ec 	.word	0x200009ec

08006fac <__ascii_wctomb>:
 8006fac:	b121      	cbz	r1, 8006fb8 <__ascii_wctomb+0xc>
 8006fae:	2aff      	cmp	r2, #255	; 0xff
 8006fb0:	d804      	bhi.n	8006fbc <__ascii_wctomb+0x10>
 8006fb2:	700a      	strb	r2, [r1, #0]
 8006fb4:	2001      	movs	r0, #1
 8006fb6:	4770      	bx	lr
 8006fb8:	4608      	mov	r0, r1
 8006fba:	4770      	bx	lr
 8006fbc:	238a      	movs	r3, #138	; 0x8a
 8006fbe:	6003      	str	r3, [r0, #0]
 8006fc0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006fc4:	4770      	bx	lr
 8006fc6:	bf00      	nop

08006fc8 <_init>:
 8006fc8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006fca:	bf00      	nop
 8006fcc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006fce:	bc08      	pop	{r3}
 8006fd0:	469e      	mov	lr, r3
 8006fd2:	4770      	bx	lr

08006fd4 <_fini>:
 8006fd4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006fd6:	bf00      	nop
 8006fd8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006fda:	bc08      	pop	{r3}
 8006fdc:	469e      	mov	lr, r3
 8006fde:	4770      	bx	lr
