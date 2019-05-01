
sglib-listinsertsort.elf:     file format elf32-littlearm


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
 80001e0:	08006ef0 	.word	0x08006ef0

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
 80001fc:	08006ef0 	.word	0x08006ef0

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
 80013e8:	f646 7220 	movw	r2, #28448	; 0x6f20
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
 8001462:	f646 7218 	movw	r2, #28440	; 0x6f18
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
 800148c:	f646 7218 	movw	r2, #28440	; 0x6f18
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
 80019d4:	f646 7350 	movw	r3, #28496	; 0x6f50
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
 80019fc:	f646 7360 	movw	r3, #28512	; 0x6f60
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
 8001ebc:	f84d 8d04 	str.w	r8, [sp, #-4]!
 8001ec0:	b082      	sub	sp, #8
 8001ec2:	f240 0814 	movw	r8, #20
 8001ec6:	2400      	movs	r4, #0
 8001ec8:	2501      	movs	r5, #1
 8001eca:	ae01      	add	r6, sp, #4
 8001ecc:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8001ed0:	9401      	str	r4, [sp, #4]
 8001ed2:	2008      	movs	r0, #8
 8001ed4:	f000 f966 	bl	80021a4 <malloc>
 8001ed8:	f858 1025 	ldr.w	r1, [r8, r5, lsl #2]
 8001edc:	4632      	mov	r2, r6
 8001ede:	2c00      	cmp	r4, #0
 8001ee0:	6001      	str	r1, [r0, #0]
 8001ee2:	d008      	beq.n	8001ef6 <benchmark+0x3e>
 8001ee4:	4623      	mov	r3, r4
 8001ee6:	f853 4b04 	ldr.w	r4, [r3], #4
 8001eea:	428c      	cmp	r4, r1
 8001eec:	da03      	bge.n	8001ef6 <benchmark+0x3e>
 8001eee:	681c      	ldr	r4, [r3, #0]
 8001ef0:	461a      	mov	r2, r3
 8001ef2:	2c00      	cmp	r4, #0
 8001ef4:	d1f6      	bne.n	8001ee4 <benchmark+0x2c>
 8001ef6:	6811      	ldr	r1, [r2, #0]
 8001ef8:	3501      	adds	r5, #1
 8001efa:	2d64      	cmp	r5, #100	; 0x64
 8001efc:	6041      	str	r1, [r0, #4]
 8001efe:	6010      	str	r0, [r2, #0]
 8001f00:	9c01      	ldr	r4, [sp, #4]
 8001f02:	d1e6      	bne.n	8001ed2 <benchmark+0x1a>
 8001f04:	2500      	movs	r5, #0
 8001f06:	b16c      	cbz	r4, 8001f24 <benchmark+0x6c>
 8001f08:	4620      	mov	r0, r4
 8001f0a:	e9d0 1000 	ldrd	r1, r0, [r0]
 8001f0e:	440d      	add	r5, r1
 8001f10:	2800      	cmp	r0, #0
 8001f12:	d1fa      	bne.n	8001f0a <benchmark+0x52>
 8001f14:	b134      	cbz	r4, 8001f24 <benchmark+0x6c>
 8001f16:	6866      	ldr	r6, [r4, #4]
 8001f18:	4620      	mov	r0, r4
 8001f1a:	f000 f94b 	bl	80021b4 <free>
 8001f1e:	2e00      	cmp	r6, #0
 8001f20:	4634      	mov	r4, r6
 8001f22:	d1f8      	bne.n	8001f16 <benchmark+0x5e>
 8001f24:	4628      	mov	r0, r5
 8001f26:	b002      	add	sp, #8
 8001f28:	f85d 8b04 	ldr.w	r8, [sp], #4
 8001f2c:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001f2e <verify_benchmark>:
 8001f2e:	f241 3248 	movw	r2, #4936	; 0x1348
 8001f32:	2100      	movs	r1, #0
 8001f34:	4290      	cmp	r0, r2
 8001f36:	bf08      	it	eq
 8001f38:	2101      	moveq	r1, #1
 8001f3a:	4608      	mov	r0, r1
 8001f3c:	4770      	bx	lr

08001f3e <__io_putchar>:
 8001f3e:	b580      	push	{r7, lr}
 8001f40:	466f      	mov	r7, sp
 8001f42:	b082      	sub	sp, #8
 8001f44:	9001      	str	r0, [sp, #4]
 8001f46:	f640 3074 	movw	r0, #2932	; 0xb74
 8001f4a:	a901      	add	r1, sp, #4
 8001f4c:	2201      	movs	r2, #1
 8001f4e:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001f52:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f56:	f7ff fec0 	bl	8001cda <HAL_UART_Transmit>
 8001f5a:	9801      	ldr	r0, [sp, #4]
 8001f5c:	b002      	add	sp, #8
 8001f5e:	bd80      	pop	{r7, pc}

08001f60 <main>:
 8001f60:	b5b0      	push	{r4, r5, r7, lr}
 8001f62:	af02      	add	r7, sp, #8
 8001f64:	f640 3174 	movw	r1, #2932	; 0xb74
 8001f68:	f643 0000 	movw	r0, #14336	; 0x3800
 8001f6c:	220c      	movs	r2, #12
 8001f6e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001f72:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001f76:	6008      	str	r0, [r1, #0]
 8001f78:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8001f7c:	6048      	str	r0, [r1, #4]
 8001f7e:	2000      	movs	r0, #0
 8001f80:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8001f84:	6108      	str	r0, [r1, #16]
 8001f86:	6248      	str	r0, [r1, #36]	; 0x24
 8001f88:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8001f8c:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8001f90:	2000      	movs	r0, #0
 8001f92:	f7ff ff37 	bl	8001e04 <BSP_COM_Init>
 8001f96:	f7ff ff8e 	bl	8001eb6 <initialise_benchmark>
 8001f9a:	f646 7070 	movw	r0, #28528	; 0x6f70
 8001f9e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fa2:	f000 fc09 	bl	80027b8 <printf>
 8001fa6:	f247 0027 	movw	r0, #28711	; 0x7027
 8001faa:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fae:	f000 fc65 	bl	800287c <puts>
 8001fb2:	f7ff f899 	bl	80010e8 <HAL_Init>
 8001fb6:	f7ff f8af 	bl	8001118 <HAL_GetTick>
 8001fba:	4604      	mov	r4, r0
 8001fbc:	f7ff ff7c 	bl	8001eb8 <benchmark>
 8001fc0:	4605      	mov	r5, r0
 8001fc2:	f7ff f8a9 	bl	8001118 <HAL_GetTick>
 8001fc6:	1b04      	subs	r4, r0, r4
 8001fc8:	4628      	mov	r0, r5
 8001fca:	f7ff ffb0 	bl	8001f2e <verify_benchmark>
 8001fce:	1c41      	adds	r1, r0, #1
 8001fd0:	d006      	beq.n	8001fe0 <main+0x80>
 8001fd2:	2801      	cmp	r0, #1
 8001fd4:	d109      	bne.n	8001fea <main+0x8a>
 8001fd6:	f646 7093 	movw	r0, #28563	; 0x6f93
 8001fda:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fde:	e008      	b.n	8001ff2 <main+0x92>
 8001fe0:	f646 70b7 	movw	r0, #28599	; 0x6fb7
 8001fe4:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fe8:	e003      	b.n	8001ff2 <main+0x92>
 8001fea:	f646 70ec 	movw	r0, #28652	; 0x6fec
 8001fee:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001ff2:	4621      	mov	r1, r4
 8001ff4:	f000 fbe0 	bl	80027b8 <printf>
 8001ff8:	2000      	movs	r0, #0
 8001ffa:	bdb0      	pop	{r4, r5, r7, pc}

08001ffc <SysTick_Handler>:
 8001ffc:	b580      	push	{r7, lr}
 8001ffe:	466f      	mov	r7, sp
 8002000:	f7ff f882 	bl	8001108 <HAL_IncTick>
 8002004:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002008:	f7ff b8dc 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

0800200c <_read>:
 800200c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800200e:	af03      	add	r7, sp, #12
 8002010:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002014:	4614      	mov	r4, r2
 8002016:	460d      	mov	r5, r1
 8002018:	2c01      	cmp	r4, #1
 800201a:	db06      	blt.n	800202a <_read+0x1e>
 800201c:	4626      	mov	r6, r4
 800201e:	f3af 8000 	nop.w
 8002022:	f805 0b01 	strb.w	r0, [r5], #1
 8002026:	3e01      	subs	r6, #1
 8002028:	d1f9      	bne.n	800201e <_read+0x12>
 800202a:	4620      	mov	r0, r4
 800202c:	f85d bb04 	ldr.w	fp, [sp], #4
 8002030:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002032 <_write>:
 8002032:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002034:	af03      	add	r7, sp, #12
 8002036:	f84d bd04 	str.w	fp, [sp, #-4]!
 800203a:	4614      	mov	r4, r2
 800203c:	460d      	mov	r5, r1
 800203e:	2c01      	cmp	r4, #1
 8002040:	db06      	blt.n	8002050 <_write+0x1e>
 8002042:	4626      	mov	r6, r4
 8002044:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002048:	f7ff ff79 	bl	8001f3e <__io_putchar>
 800204c:	3e01      	subs	r6, #1
 800204e:	d1f9      	bne.n	8002044 <_write+0x12>
 8002050:	4620      	mov	r0, r4
 8002052:	f85d bb04 	ldr.w	fp, [sp], #4
 8002056:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002058 <_sbrk>:
 8002058:	f640 32f8 	movw	r2, #3064	; 0xbf8
 800205c:	4601      	mov	r1, r0
 800205e:	466b      	mov	r3, sp
 8002060:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002064:	6810      	ldr	r0, [r2, #0]
 8002066:	2800      	cmp	r0, #0
 8002068:	bf02      	ittt	eq
 800206a:	f640 40a0 	movweq	r0, #3232	; 0xca0
 800206e:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002072:	6010      	streq	r0, [r2, #0]
 8002074:	4401      	add	r1, r0
 8002076:	4299      	cmp	r1, r3
 8002078:	bf9c      	itt	ls
 800207a:	6011      	strls	r1, [r2, #0]
 800207c:	4770      	bxls	lr
 800207e:	b580      	push	{r7, lr}
 8002080:	466f      	mov	r7, sp
 8002082:	f000 f865 	bl	8002150 <__errno>
 8002086:	210c      	movs	r1, #12
 8002088:	6001      	str	r1, [r0, #0]
 800208a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800208e:	bd80      	pop	{r7, pc}

08002090 <_close>:
 8002090:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002094:	4770      	bx	lr

08002096 <_fstat>:
 8002096:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 800209a:	6048      	str	r0, [r1, #4]
 800209c:	2000      	movs	r0, #0
 800209e:	4770      	bx	lr

080020a0 <_isatty>:
 80020a0:	2001      	movs	r0, #1
 80020a2:	4770      	bx	lr

080020a4 <_lseek>:
 80020a4:	2000      	movs	r0, #0
 80020a6:	4770      	bx	lr

080020a8 <SystemInit>:
 80020a8:	f64e 5088 	movw	r0, #60808	; 0xed88
 80020ac:	f04f 0c00 	mov.w	ip, #0
 80020b0:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80020b4:	6801      	ldr	r1, [r0, #0]
 80020b6:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80020ba:	6001      	str	r1, [r0, #0]
 80020bc:	f241 0100 	movw	r1, #4096	; 0x1000
 80020c0:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80020c4:	680a      	ldr	r2, [r1, #0]
 80020c6:	f042 0201 	orr.w	r2, r2, #1
 80020ca:	600a      	str	r2, [r1, #0]
 80020cc:	f8c1 c008 	str.w	ip, [r1, #8]
 80020d0:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80020d4:	680b      	ldr	r3, [r1, #0]
 80020d6:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 80020da:	401a      	ands	r2, r3
 80020dc:	600a      	str	r2, [r1, #0]
 80020de:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80020e2:	60ca      	str	r2, [r1, #12]
 80020e4:	680a      	ldr	r2, [r1, #0]
 80020e6:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80020ea:	600a      	str	r2, [r1, #0]
 80020ec:	f8c1 c018 	str.w	ip, [r1, #24]
 80020f0:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80020f4:	f840 1c80 	str.w	r1, [r0, #-128]
 80020f8:	4770      	bx	lr
	...

080020fc <Reset_Handler>:
 80020fc:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002134 <LoopForever+0x2>
 8002100:	2100      	movs	r1, #0
 8002102:	e003      	b.n	800210c <LoopCopyDataInit>

08002104 <CopyDataInit>:
 8002104:	4b0c      	ldr	r3, [pc, #48]	; (8002138 <LoopForever+0x6>)
 8002106:	585b      	ldr	r3, [r3, r1]
 8002108:	5043      	str	r3, [r0, r1]
 800210a:	3104      	adds	r1, #4

0800210c <LoopCopyDataInit>:
 800210c:	480b      	ldr	r0, [pc, #44]	; (800213c <LoopForever+0xa>)
 800210e:	4b0c      	ldr	r3, [pc, #48]	; (8002140 <LoopForever+0xe>)
 8002110:	1842      	adds	r2, r0, r1
 8002112:	429a      	cmp	r2, r3
 8002114:	d3f6      	bcc.n	8002104 <CopyDataInit>
 8002116:	4a0b      	ldr	r2, [pc, #44]	; (8002144 <LoopForever+0x12>)
 8002118:	e002      	b.n	8002120 <LoopFillZerobss>

0800211a <FillZerobss>:
 800211a:	2300      	movs	r3, #0
 800211c:	f842 3b04 	str.w	r3, [r2], #4

08002120 <LoopFillZerobss>:
 8002120:	4b09      	ldr	r3, [pc, #36]	; (8002148 <LoopForever+0x16>)
 8002122:	429a      	cmp	r2, r3
 8002124:	d3f9      	bcc.n	800211a <FillZerobss>
 8002126:	f7ff ffbf 	bl	80020a8 <SystemInit>
 800212a:	f000 f817 	bl	800215c <__libc_init_array>
 800212e:	f7ff ff17 	bl	8001f60 <main>

08002132 <LoopForever>:
 8002132:	e7fe      	b.n	8002132 <LoopForever>
 8002134:	20018000 	.word	0x20018000
 8002138:	080072d0 	.word	0x080072d0
 800213c:	20000000 	.word	0x20000000
 8002140:	20000b58 	.word	0x20000b58
 8002144:	20000b58 	.word	0x20000b58
 8002148:	20000ca0 	.word	0x20000ca0

0800214c <ADC1_2_IRQHandler>:
 800214c:	e7fe      	b.n	800214c <ADC1_2_IRQHandler>
	...

08002150 <__errno>:
 8002150:	4b01      	ldr	r3, [pc, #4]	; (8002158 <__errno+0x8>)
 8002152:	6818      	ldr	r0, [r3, #0]
 8002154:	4770      	bx	lr
 8002156:	bf00      	nop
 8002158:	200001a8 	.word	0x200001a8

0800215c <__libc_init_array>:
 800215c:	b570      	push	{r4, r5, r6, lr}
 800215e:	4e0d      	ldr	r6, [pc, #52]	; (8002194 <__libc_init_array+0x38>)
 8002160:	4d0d      	ldr	r5, [pc, #52]	; (8002198 <__libc_init_array+0x3c>)
 8002162:	1b76      	subs	r6, r6, r5
 8002164:	10b6      	asrs	r6, r6, #2
 8002166:	d006      	beq.n	8002176 <__libc_init_array+0x1a>
 8002168:	2400      	movs	r4, #0
 800216a:	3401      	adds	r4, #1
 800216c:	f855 3b04 	ldr.w	r3, [r5], #4
 8002170:	4798      	blx	r3
 8002172:	42a6      	cmp	r6, r4
 8002174:	d1f9      	bne.n	800216a <__libc_init_array+0xe>
 8002176:	4e09      	ldr	r6, [pc, #36]	; (800219c <__libc_init_array+0x40>)
 8002178:	4d09      	ldr	r5, [pc, #36]	; (80021a0 <__libc_init_array+0x44>)
 800217a:	1b76      	subs	r6, r6, r5
 800217c:	f004 feb8 	bl	8006ef0 <_init>
 8002180:	10b6      	asrs	r6, r6, #2
 8002182:	d006      	beq.n	8002192 <__libc_init_array+0x36>
 8002184:	2400      	movs	r4, #0
 8002186:	3401      	adds	r4, #1
 8002188:	f855 3b04 	ldr.w	r3, [r5], #4
 800218c:	4798      	blx	r3
 800218e:	42a6      	cmp	r6, r4
 8002190:	d1f9      	bne.n	8002186 <__libc_init_array+0x2a>
 8002192:	bd70      	pop	{r4, r5, r6, pc}
 8002194:	080072c0 	.word	0x080072c0
 8002198:	080072c0 	.word	0x080072c0
 800219c:	080072c8 	.word	0x080072c8
 80021a0:	080072c0 	.word	0x080072c0

080021a4 <malloc>:
 80021a4:	4b02      	ldr	r3, [pc, #8]	; (80021b0 <malloc+0xc>)
 80021a6:	4601      	mov	r1, r0
 80021a8:	6818      	ldr	r0, [r3, #0]
 80021aa:	f000 b80b 	b.w	80021c4 <_malloc_r>
 80021ae:	bf00      	nop
 80021b0:	200001a8 	.word	0x200001a8

080021b4 <free>:
 80021b4:	4b02      	ldr	r3, [pc, #8]	; (80021c0 <free+0xc>)
 80021b6:	4601      	mov	r1, r0
 80021b8:	6818      	ldr	r0, [r3, #0]
 80021ba:	f003 bab9 	b.w	8005730 <_free_r>
 80021be:	bf00      	nop
 80021c0:	200001a8 	.word	0x200001a8

080021c4 <_malloc_r>:
 80021c4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80021c8:	f101 050b 	add.w	r5, r1, #11
 80021cc:	2d16      	cmp	r5, #22
 80021ce:	b083      	sub	sp, #12
 80021d0:	4606      	mov	r6, r0
 80021d2:	d823      	bhi.n	800221c <_malloc_r+0x58>
 80021d4:	2910      	cmp	r1, #16
 80021d6:	f200 80b9 	bhi.w	800234c <_malloc_r+0x188>
 80021da:	f000 fae1 	bl	80027a0 <__malloc_lock>
 80021de:	2510      	movs	r5, #16
 80021e0:	2318      	movs	r3, #24
 80021e2:	2002      	movs	r0, #2
 80021e4:	4fc5      	ldr	r7, [pc, #788]	; (80024fc <_malloc_r+0x338>)
 80021e6:	443b      	add	r3, r7
 80021e8:	f1a3 0208 	sub.w	r2, r3, #8
 80021ec:	685c      	ldr	r4, [r3, #4]
 80021ee:	4294      	cmp	r4, r2
 80021f0:	f000 8166 	beq.w	80024c0 <_malloc_r+0x2fc>
 80021f4:	6863      	ldr	r3, [r4, #4]
 80021f6:	f023 0303 	bic.w	r3, r3, #3
 80021fa:	4423      	add	r3, r4
 80021fc:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8002200:	685a      	ldr	r2, [r3, #4]
 8002202:	60e9      	str	r1, [r5, #12]
 8002204:	f042 0201 	orr.w	r2, r2, #1
 8002208:	608d      	str	r5, [r1, #8]
 800220a:	4630      	mov	r0, r6
 800220c:	605a      	str	r2, [r3, #4]
 800220e:	f000 facd 	bl	80027ac <__malloc_unlock>
 8002212:	3408      	adds	r4, #8
 8002214:	4620      	mov	r0, r4
 8002216:	b003      	add	sp, #12
 8002218:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800221c:	f035 0507 	bics.w	r5, r5, #7
 8002220:	f100 8094 	bmi.w	800234c <_malloc_r+0x188>
 8002224:	42a9      	cmp	r1, r5
 8002226:	f200 8091 	bhi.w	800234c <_malloc_r+0x188>
 800222a:	f000 fab9 	bl	80027a0 <__malloc_lock>
 800222e:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8002232:	f0c0 8183 	bcc.w	800253c <_malloc_r+0x378>
 8002236:	0a6b      	lsrs	r3, r5, #9
 8002238:	f000 808f 	beq.w	800235a <_malloc_r+0x196>
 800223c:	2b04      	cmp	r3, #4
 800223e:	f200 8146 	bhi.w	80024ce <_malloc_r+0x30a>
 8002242:	09ab      	lsrs	r3, r5, #6
 8002244:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8002248:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 800224c:	00c3      	lsls	r3, r0, #3
 800224e:	4fab      	ldr	r7, [pc, #684]	; (80024fc <_malloc_r+0x338>)
 8002250:	443b      	add	r3, r7
 8002252:	f1a3 0108 	sub.w	r1, r3, #8
 8002256:	685c      	ldr	r4, [r3, #4]
 8002258:	42a1      	cmp	r1, r4
 800225a:	d106      	bne.n	800226a <_malloc_r+0xa6>
 800225c:	e00c      	b.n	8002278 <_malloc_r+0xb4>
 800225e:	2a00      	cmp	r2, #0
 8002260:	f280 811d 	bge.w	800249e <_malloc_r+0x2da>
 8002264:	68e4      	ldr	r4, [r4, #12]
 8002266:	42a1      	cmp	r1, r4
 8002268:	d006      	beq.n	8002278 <_malloc_r+0xb4>
 800226a:	6863      	ldr	r3, [r4, #4]
 800226c:	f023 0303 	bic.w	r3, r3, #3
 8002270:	1b5a      	subs	r2, r3, r5
 8002272:	2a0f      	cmp	r2, #15
 8002274:	ddf3      	ble.n	800225e <_malloc_r+0x9a>
 8002276:	4660      	mov	r0, ip
 8002278:	693c      	ldr	r4, [r7, #16]
 800227a:	f8df c294 	ldr.w	ip, [pc, #660]	; 8002510 <_malloc_r+0x34c>
 800227e:	4564      	cmp	r4, ip
 8002280:	d071      	beq.n	8002366 <_malloc_r+0x1a2>
 8002282:	6863      	ldr	r3, [r4, #4]
 8002284:	f023 0303 	bic.w	r3, r3, #3
 8002288:	1b5a      	subs	r2, r3, r5
 800228a:	2a0f      	cmp	r2, #15
 800228c:	f300 8144 	bgt.w	8002518 <_malloc_r+0x354>
 8002290:	2a00      	cmp	r2, #0
 8002292:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8002296:	f280 8126 	bge.w	80024e6 <_malloc_r+0x322>
 800229a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800229e:	f080 8169 	bcs.w	8002574 <_malloc_r+0x3b0>
 80022a2:	08db      	lsrs	r3, r3, #3
 80022a4:	1c59      	adds	r1, r3, #1
 80022a6:	687a      	ldr	r2, [r7, #4]
 80022a8:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 80022ac:	f8c4 8008 	str.w	r8, [r4, #8]
 80022b0:	f04f 0e01 	mov.w	lr, #1
 80022b4:	109b      	asrs	r3, r3, #2
 80022b6:	fa0e f303 	lsl.w	r3, lr, r3
 80022ba:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 80022be:	4313      	orrs	r3, r2
 80022c0:	f1ae 0208 	sub.w	r2, lr, #8
 80022c4:	60e2      	str	r2, [r4, #12]
 80022c6:	607b      	str	r3, [r7, #4]
 80022c8:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 80022cc:	f8c8 400c 	str.w	r4, [r8, #12]
 80022d0:	1082      	asrs	r2, r0, #2
 80022d2:	2401      	movs	r4, #1
 80022d4:	4094      	lsls	r4, r2
 80022d6:	429c      	cmp	r4, r3
 80022d8:	d84b      	bhi.n	8002372 <_malloc_r+0x1ae>
 80022da:	421c      	tst	r4, r3
 80022dc:	d106      	bne.n	80022ec <_malloc_r+0x128>
 80022de:	f020 0003 	bic.w	r0, r0, #3
 80022e2:	0064      	lsls	r4, r4, #1
 80022e4:	421c      	tst	r4, r3
 80022e6:	f100 0004 	add.w	r0, r0, #4
 80022ea:	d0fa      	beq.n	80022e2 <_malloc_r+0x11e>
 80022ec:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 80022f0:	46ce      	mov	lr, r9
 80022f2:	4680      	mov	r8, r0
 80022f4:	f8de 300c 	ldr.w	r3, [lr, #12]
 80022f8:	459e      	cmp	lr, r3
 80022fa:	d107      	bne.n	800230c <_malloc_r+0x148>
 80022fc:	e122      	b.n	8002544 <_malloc_r+0x380>
 80022fe:	2a00      	cmp	r2, #0
 8002300:	f280 8129 	bge.w	8002556 <_malloc_r+0x392>
 8002304:	68db      	ldr	r3, [r3, #12]
 8002306:	459e      	cmp	lr, r3
 8002308:	f000 811c 	beq.w	8002544 <_malloc_r+0x380>
 800230c:	6859      	ldr	r1, [r3, #4]
 800230e:	f021 0103 	bic.w	r1, r1, #3
 8002312:	1b4a      	subs	r2, r1, r5
 8002314:	2a0f      	cmp	r2, #15
 8002316:	ddf2      	ble.n	80022fe <_malloc_r+0x13a>
 8002318:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 800231c:	195c      	adds	r4, r3, r5
 800231e:	f045 0501 	orr.w	r5, r5, #1
 8002322:	605d      	str	r5, [r3, #4]
 8002324:	f042 0501 	orr.w	r5, r2, #1
 8002328:	f8c8 e00c 	str.w	lr, [r8, #12]
 800232c:	4630      	mov	r0, r6
 800232e:	f8ce 8008 	str.w	r8, [lr, #8]
 8002332:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8002336:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 800233a:	6065      	str	r5, [r4, #4]
 800233c:	505a      	str	r2, [r3, r1]
 800233e:	9301      	str	r3, [sp, #4]
 8002340:	f000 fa34 	bl	80027ac <__malloc_unlock>
 8002344:	9b01      	ldr	r3, [sp, #4]
 8002346:	f103 0408 	add.w	r4, r3, #8
 800234a:	e763      	b.n	8002214 <_malloc_r+0x50>
 800234c:	2400      	movs	r4, #0
 800234e:	230c      	movs	r3, #12
 8002350:	4620      	mov	r0, r4
 8002352:	6033      	str	r3, [r6, #0]
 8002354:	b003      	add	sp, #12
 8002356:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800235a:	f44f 7300 	mov.w	r3, #512	; 0x200
 800235e:	2040      	movs	r0, #64	; 0x40
 8002360:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8002364:	e773      	b.n	800224e <_malloc_r+0x8a>
 8002366:	687b      	ldr	r3, [r7, #4]
 8002368:	1082      	asrs	r2, r0, #2
 800236a:	2401      	movs	r4, #1
 800236c:	4094      	lsls	r4, r2
 800236e:	429c      	cmp	r4, r3
 8002370:	d9b3      	bls.n	80022da <_malloc_r+0x116>
 8002372:	68bc      	ldr	r4, [r7, #8]
 8002374:	6863      	ldr	r3, [r4, #4]
 8002376:	f023 0903 	bic.w	r9, r3, #3
 800237a:	45a9      	cmp	r9, r5
 800237c:	d303      	bcc.n	8002386 <_malloc_r+0x1c2>
 800237e:	eba9 0305 	sub.w	r3, r9, r5
 8002382:	2b0f      	cmp	r3, #15
 8002384:	dc7b      	bgt.n	800247e <_malloc_r+0x2ba>
 8002386:	4b5e      	ldr	r3, [pc, #376]	; (8002500 <_malloc_r+0x33c>)
 8002388:	f8df a188 	ldr.w	sl, [pc, #392]	; 8002514 <_malloc_r+0x350>
 800238c:	681a      	ldr	r2, [r3, #0]
 800238e:	f8da 3000 	ldr.w	r3, [sl]
 8002392:	3301      	adds	r3, #1
 8002394:	eb05 0802 	add.w	r8, r5, r2
 8002398:	f000 8148 	beq.w	800262c <_malloc_r+0x468>
 800239c:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 80023a0:	f108 080f 	add.w	r8, r8, #15
 80023a4:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 80023a8:	f028 080f 	bic.w	r8, r8, #15
 80023ac:	4641      	mov	r1, r8
 80023ae:	4630      	mov	r0, r6
 80023b0:	f000 fa6c 	bl	800288c <_sbrk_r>
 80023b4:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 80023b8:	4683      	mov	fp, r0
 80023ba:	f000 8104 	beq.w	80025c6 <_malloc_r+0x402>
 80023be:	eb04 0009 	add.w	r0, r4, r9
 80023c2:	4558      	cmp	r0, fp
 80023c4:	f200 80fd 	bhi.w	80025c2 <_malloc_r+0x3fe>
 80023c8:	4a4e      	ldr	r2, [pc, #312]	; (8002504 <_malloc_r+0x340>)
 80023ca:	6813      	ldr	r3, [r2, #0]
 80023cc:	4443      	add	r3, r8
 80023ce:	6013      	str	r3, [r2, #0]
 80023d0:	f000 814d 	beq.w	800266e <_malloc_r+0x4aa>
 80023d4:	f8da 1000 	ldr.w	r1, [sl]
 80023d8:	3101      	adds	r1, #1
 80023da:	bf1b      	ittet	ne
 80023dc:	ebab 0000 	subne.w	r0, fp, r0
 80023e0:	181b      	addne	r3, r3, r0
 80023e2:	f8ca b000 	streq.w	fp, [sl]
 80023e6:	6013      	strne	r3, [r2, #0]
 80023e8:	f01b 0307 	ands.w	r3, fp, #7
 80023ec:	f000 8134 	beq.w	8002658 <_malloc_r+0x494>
 80023f0:	f1c3 0108 	rsb	r1, r3, #8
 80023f4:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 80023f8:	448b      	add	fp, r1
 80023fa:	3308      	adds	r3, #8
 80023fc:	44d8      	add	r8, fp
 80023fe:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8002402:	eba3 0808 	sub.w	r8, r3, r8
 8002406:	4641      	mov	r1, r8
 8002408:	4630      	mov	r0, r6
 800240a:	9201      	str	r2, [sp, #4]
 800240c:	f000 fa3e 	bl	800288c <_sbrk_r>
 8002410:	1c43      	adds	r3, r0, #1
 8002412:	9a01      	ldr	r2, [sp, #4]
 8002414:	f000 8146 	beq.w	80026a4 <_malloc_r+0x4e0>
 8002418:	eba0 010b 	sub.w	r1, r0, fp
 800241c:	4441      	add	r1, r8
 800241e:	f041 0101 	orr.w	r1, r1, #1
 8002422:	6813      	ldr	r3, [r2, #0]
 8002424:	f8c7 b008 	str.w	fp, [r7, #8]
 8002428:	4443      	add	r3, r8
 800242a:	42bc      	cmp	r4, r7
 800242c:	f8cb 1004 	str.w	r1, [fp, #4]
 8002430:	6013      	str	r3, [r2, #0]
 8002432:	d015      	beq.n	8002460 <_malloc_r+0x29c>
 8002434:	f1b9 0f0f 	cmp.w	r9, #15
 8002438:	f240 8130 	bls.w	800269c <_malloc_r+0x4d8>
 800243c:	6860      	ldr	r0, [r4, #4]
 800243e:	f1a9 010c 	sub.w	r1, r9, #12
 8002442:	f021 0107 	bic.w	r1, r1, #7
 8002446:	f000 0001 	and.w	r0, r0, #1
 800244a:	eb04 0c01 	add.w	ip, r4, r1
 800244e:	4308      	orrs	r0, r1
 8002450:	f04f 0e05 	mov.w	lr, #5
 8002454:	290f      	cmp	r1, #15
 8002456:	6060      	str	r0, [r4, #4]
 8002458:	e9cc ee01 	strd	lr, lr, [ip, #4]
 800245c:	f200 813a 	bhi.w	80026d4 <_malloc_r+0x510>
 8002460:	4a29      	ldr	r2, [pc, #164]	; (8002508 <_malloc_r+0x344>)
 8002462:	482a      	ldr	r0, [pc, #168]	; (800250c <_malloc_r+0x348>)
 8002464:	6811      	ldr	r1, [r2, #0]
 8002466:	68bc      	ldr	r4, [r7, #8]
 8002468:	428b      	cmp	r3, r1
 800246a:	6801      	ldr	r1, [r0, #0]
 800246c:	bf88      	it	hi
 800246e:	6013      	strhi	r3, [r2, #0]
 8002470:	6862      	ldr	r2, [r4, #4]
 8002472:	428b      	cmp	r3, r1
 8002474:	f022 0203 	bic.w	r2, r2, #3
 8002478:	bf88      	it	hi
 800247a:	6003      	strhi	r3, [r0, #0]
 800247c:	e0a7      	b.n	80025ce <_malloc_r+0x40a>
 800247e:	1962      	adds	r2, r4, r5
 8002480:	f043 0301 	orr.w	r3, r3, #1
 8002484:	f045 0501 	orr.w	r5, r5, #1
 8002488:	6065      	str	r5, [r4, #4]
 800248a:	4630      	mov	r0, r6
 800248c:	60ba      	str	r2, [r7, #8]
 800248e:	6053      	str	r3, [r2, #4]
 8002490:	f000 f98c 	bl	80027ac <__malloc_unlock>
 8002494:	3408      	adds	r4, #8
 8002496:	4620      	mov	r0, r4
 8002498:	b003      	add	sp, #12
 800249a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800249e:	4423      	add	r3, r4
 80024a0:	68e1      	ldr	r1, [r4, #12]
 80024a2:	685a      	ldr	r2, [r3, #4]
 80024a4:	68a5      	ldr	r5, [r4, #8]
 80024a6:	f042 0201 	orr.w	r2, r2, #1
 80024aa:	60e9      	str	r1, [r5, #12]
 80024ac:	4630      	mov	r0, r6
 80024ae:	608d      	str	r5, [r1, #8]
 80024b0:	605a      	str	r2, [r3, #4]
 80024b2:	f000 f97b 	bl	80027ac <__malloc_unlock>
 80024b6:	3408      	adds	r4, #8
 80024b8:	4620      	mov	r0, r4
 80024ba:	b003      	add	sp, #12
 80024bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80024c0:	68dc      	ldr	r4, [r3, #12]
 80024c2:	42a3      	cmp	r3, r4
 80024c4:	bf08      	it	eq
 80024c6:	3002      	addeq	r0, #2
 80024c8:	f43f aed6 	beq.w	8002278 <_malloc_r+0xb4>
 80024cc:	e692      	b.n	80021f4 <_malloc_r+0x30>
 80024ce:	2b14      	cmp	r3, #20
 80024d0:	d971      	bls.n	80025b6 <_malloc_r+0x3f2>
 80024d2:	2b54      	cmp	r3, #84	; 0x54
 80024d4:	f200 80ad 	bhi.w	8002632 <_malloc_r+0x46e>
 80024d8:	0b2b      	lsrs	r3, r5, #12
 80024da:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 80024de:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 80024e2:	00c3      	lsls	r3, r0, #3
 80024e4:	e6b3      	b.n	800224e <_malloc_r+0x8a>
 80024e6:	4423      	add	r3, r4
 80024e8:	4630      	mov	r0, r6
 80024ea:	685a      	ldr	r2, [r3, #4]
 80024ec:	f042 0201 	orr.w	r2, r2, #1
 80024f0:	605a      	str	r2, [r3, #4]
 80024f2:	3408      	adds	r4, #8
 80024f4:	f000 f95a 	bl	80027ac <__malloc_unlock>
 80024f8:	e68c      	b.n	8002214 <_malloc_r+0x50>
 80024fa:	bf00      	nop
 80024fc:	200005d8 	.word	0x200005d8
 8002500:	20000c2c 	.word	0x20000c2c
 8002504:	20000bfc 	.word	0x20000bfc
 8002508:	20000c24 	.word	0x20000c24
 800250c:	20000c28 	.word	0x20000c28
 8002510:	200005e0 	.word	0x200005e0
 8002514:	200009e0 	.word	0x200009e0
 8002518:	1961      	adds	r1, r4, r5
 800251a:	f045 0e01 	orr.w	lr, r5, #1
 800251e:	f042 0501 	orr.w	r5, r2, #1
 8002522:	f8c4 e004 	str.w	lr, [r4, #4]
 8002526:	4630      	mov	r0, r6
 8002528:	e9c7 1104 	strd	r1, r1, [r7, #16]
 800252c:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8002530:	604d      	str	r5, [r1, #4]
 8002532:	50e2      	str	r2, [r4, r3]
 8002534:	f000 f93a 	bl	80027ac <__malloc_unlock>
 8002538:	3408      	adds	r4, #8
 800253a:	e66b      	b.n	8002214 <_malloc_r+0x50>
 800253c:	08e8      	lsrs	r0, r5, #3
 800253e:	f105 0308 	add.w	r3, r5, #8
 8002542:	e64f      	b.n	80021e4 <_malloc_r+0x20>
 8002544:	f108 0801 	add.w	r8, r8, #1
 8002548:	f018 0f03 	tst.w	r8, #3
 800254c:	f10e 0e08 	add.w	lr, lr, #8
 8002550:	f47f aed0 	bne.w	80022f4 <_malloc_r+0x130>
 8002554:	e052      	b.n	80025fc <_malloc_r+0x438>
 8002556:	4419      	add	r1, r3
 8002558:	461c      	mov	r4, r3
 800255a:	684a      	ldr	r2, [r1, #4]
 800255c:	68db      	ldr	r3, [r3, #12]
 800255e:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8002562:	f042 0201 	orr.w	r2, r2, #1
 8002566:	604a      	str	r2, [r1, #4]
 8002568:	4630      	mov	r0, r6
 800256a:	60eb      	str	r3, [r5, #12]
 800256c:	609d      	str	r5, [r3, #8]
 800256e:	f000 f91d 	bl	80027ac <__malloc_unlock>
 8002572:	e64f      	b.n	8002214 <_malloc_r+0x50>
 8002574:	0a5a      	lsrs	r2, r3, #9
 8002576:	2a04      	cmp	r2, #4
 8002578:	d935      	bls.n	80025e6 <_malloc_r+0x422>
 800257a:	2a14      	cmp	r2, #20
 800257c:	d86f      	bhi.n	800265e <_malloc_r+0x49a>
 800257e:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8002582:	00c9      	lsls	r1, r1, #3
 8002584:	325b      	adds	r2, #91	; 0x5b
 8002586:	eb07 0e01 	add.w	lr, r7, r1
 800258a:	5879      	ldr	r1, [r7, r1]
 800258c:	f1ae 0e08 	sub.w	lr, lr, #8
 8002590:	458e      	cmp	lr, r1
 8002592:	d058      	beq.n	8002646 <_malloc_r+0x482>
 8002594:	684a      	ldr	r2, [r1, #4]
 8002596:	f022 0203 	bic.w	r2, r2, #3
 800259a:	429a      	cmp	r2, r3
 800259c:	d902      	bls.n	80025a4 <_malloc_r+0x3e0>
 800259e:	6889      	ldr	r1, [r1, #8]
 80025a0:	458e      	cmp	lr, r1
 80025a2:	d1f7      	bne.n	8002594 <_malloc_r+0x3d0>
 80025a4:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 80025a8:	687b      	ldr	r3, [r7, #4]
 80025aa:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 80025ae:	f8ce 4008 	str.w	r4, [lr, #8]
 80025b2:	60cc      	str	r4, [r1, #12]
 80025b4:	e68c      	b.n	80022d0 <_malloc_r+0x10c>
 80025b6:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 80025ba:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 80025be:	00c3      	lsls	r3, r0, #3
 80025c0:	e645      	b.n	800224e <_malloc_r+0x8a>
 80025c2:	42bc      	cmp	r4, r7
 80025c4:	d072      	beq.n	80026ac <_malloc_r+0x4e8>
 80025c6:	68bc      	ldr	r4, [r7, #8]
 80025c8:	6862      	ldr	r2, [r4, #4]
 80025ca:	f022 0203 	bic.w	r2, r2, #3
 80025ce:	4295      	cmp	r5, r2
 80025d0:	eba2 0305 	sub.w	r3, r2, r5
 80025d4:	d802      	bhi.n	80025dc <_malloc_r+0x418>
 80025d6:	2b0f      	cmp	r3, #15
 80025d8:	f73f af51 	bgt.w	800247e <_malloc_r+0x2ba>
 80025dc:	4630      	mov	r0, r6
 80025de:	f000 f8e5 	bl	80027ac <__malloc_unlock>
 80025e2:	2400      	movs	r4, #0
 80025e4:	e616      	b.n	8002214 <_malloc_r+0x50>
 80025e6:	099a      	lsrs	r2, r3, #6
 80025e8:	f102 0139 	add.w	r1, r2, #57	; 0x39
 80025ec:	00c9      	lsls	r1, r1, #3
 80025ee:	3238      	adds	r2, #56	; 0x38
 80025f0:	e7c9      	b.n	8002586 <_malloc_r+0x3c2>
 80025f2:	f8d9 9000 	ldr.w	r9, [r9]
 80025f6:	4599      	cmp	r9, r3
 80025f8:	f040 8083 	bne.w	8002702 <_malloc_r+0x53e>
 80025fc:	f010 0f03 	tst.w	r0, #3
 8002600:	f1a9 0308 	sub.w	r3, r9, #8
 8002604:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8002608:	d1f3      	bne.n	80025f2 <_malloc_r+0x42e>
 800260a:	687b      	ldr	r3, [r7, #4]
 800260c:	ea23 0304 	bic.w	r3, r3, r4
 8002610:	607b      	str	r3, [r7, #4]
 8002612:	0064      	lsls	r4, r4, #1
 8002614:	429c      	cmp	r4, r3
 8002616:	f63f aeac 	bhi.w	8002372 <_malloc_r+0x1ae>
 800261a:	b91c      	cbnz	r4, 8002624 <_malloc_r+0x460>
 800261c:	e6a9      	b.n	8002372 <_malloc_r+0x1ae>
 800261e:	0064      	lsls	r4, r4, #1
 8002620:	f108 0804 	add.w	r8, r8, #4
 8002624:	421c      	tst	r4, r3
 8002626:	d0fa      	beq.n	800261e <_malloc_r+0x45a>
 8002628:	4640      	mov	r0, r8
 800262a:	e65f      	b.n	80022ec <_malloc_r+0x128>
 800262c:	f108 0810 	add.w	r8, r8, #16
 8002630:	e6bc      	b.n	80023ac <_malloc_r+0x1e8>
 8002632:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8002636:	d826      	bhi.n	8002686 <_malloc_r+0x4c2>
 8002638:	0beb      	lsrs	r3, r5, #15
 800263a:	f103 0078 	add.w	r0, r3, #120	; 0x78
 800263e:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8002642:	00c3      	lsls	r3, r0, #3
 8002644:	e603      	b.n	800224e <_malloc_r+0x8a>
 8002646:	687b      	ldr	r3, [r7, #4]
 8002648:	1092      	asrs	r2, r2, #2
 800264a:	f04f 0801 	mov.w	r8, #1
 800264e:	fa08 f202 	lsl.w	r2, r8, r2
 8002652:	4313      	orrs	r3, r2
 8002654:	607b      	str	r3, [r7, #4]
 8002656:	e7a8      	b.n	80025aa <_malloc_r+0x3e6>
 8002658:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 800265c:	e6ce      	b.n	80023fc <_malloc_r+0x238>
 800265e:	2a54      	cmp	r2, #84	; 0x54
 8002660:	d829      	bhi.n	80026b6 <_malloc_r+0x4f2>
 8002662:	0b1a      	lsrs	r2, r3, #12
 8002664:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8002668:	00c9      	lsls	r1, r1, #3
 800266a:	326e      	adds	r2, #110	; 0x6e
 800266c:	e78b      	b.n	8002586 <_malloc_r+0x3c2>
 800266e:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8002672:	2900      	cmp	r1, #0
 8002674:	f47f aeae 	bne.w	80023d4 <_malloc_r+0x210>
 8002678:	eb09 0208 	add.w	r2, r9, r8
 800267c:	68b9      	ldr	r1, [r7, #8]
 800267e:	f042 0201 	orr.w	r2, r2, #1
 8002682:	604a      	str	r2, [r1, #4]
 8002684:	e6ec      	b.n	8002460 <_malloc_r+0x29c>
 8002686:	f240 5254 	movw	r2, #1364	; 0x554
 800268a:	4293      	cmp	r3, r2
 800268c:	d81c      	bhi.n	80026c8 <_malloc_r+0x504>
 800268e:	0cab      	lsrs	r3, r5, #18
 8002690:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8002694:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8002698:	00c3      	lsls	r3, r0, #3
 800269a:	e5d8      	b.n	800224e <_malloc_r+0x8a>
 800269c:	2301      	movs	r3, #1
 800269e:	f8cb 3004 	str.w	r3, [fp, #4]
 80026a2:	e79b      	b.n	80025dc <_malloc_r+0x418>
 80026a4:	2101      	movs	r1, #1
 80026a6:	f04f 0800 	mov.w	r8, #0
 80026aa:	e6ba      	b.n	8002422 <_malloc_r+0x25e>
 80026ac:	4a16      	ldr	r2, [pc, #88]	; (8002708 <_malloc_r+0x544>)
 80026ae:	6813      	ldr	r3, [r2, #0]
 80026b0:	4443      	add	r3, r8
 80026b2:	6013      	str	r3, [r2, #0]
 80026b4:	e68e      	b.n	80023d4 <_malloc_r+0x210>
 80026b6:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 80026ba:	d814      	bhi.n	80026e6 <_malloc_r+0x522>
 80026bc:	0bda      	lsrs	r2, r3, #15
 80026be:	f102 0178 	add.w	r1, r2, #120	; 0x78
 80026c2:	00c9      	lsls	r1, r1, #3
 80026c4:	3277      	adds	r2, #119	; 0x77
 80026c6:	e75e      	b.n	8002586 <_malloc_r+0x3c2>
 80026c8:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 80026cc:	207f      	movs	r0, #127	; 0x7f
 80026ce:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 80026d2:	e5bc      	b.n	800224e <_malloc_r+0x8a>
 80026d4:	f104 0108 	add.w	r1, r4, #8
 80026d8:	4630      	mov	r0, r6
 80026da:	9201      	str	r2, [sp, #4]
 80026dc:	f003 f828 	bl	8005730 <_free_r>
 80026e0:	9a01      	ldr	r2, [sp, #4]
 80026e2:	6813      	ldr	r3, [r2, #0]
 80026e4:	e6bc      	b.n	8002460 <_malloc_r+0x29c>
 80026e6:	f240 5154 	movw	r1, #1364	; 0x554
 80026ea:	428a      	cmp	r2, r1
 80026ec:	d805      	bhi.n	80026fa <_malloc_r+0x536>
 80026ee:	0c9a      	lsrs	r2, r3, #18
 80026f0:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 80026f4:	00c9      	lsls	r1, r1, #3
 80026f6:	327c      	adds	r2, #124	; 0x7c
 80026f8:	e745      	b.n	8002586 <_malloc_r+0x3c2>
 80026fa:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 80026fe:	227e      	movs	r2, #126	; 0x7e
 8002700:	e741      	b.n	8002586 <_malloc_r+0x3c2>
 8002702:	687b      	ldr	r3, [r7, #4]
 8002704:	e785      	b.n	8002612 <_malloc_r+0x44e>
 8002706:	bf00      	nop
 8002708:	20000bfc 	.word	0x20000bfc

0800270c <memset>:
 800270c:	b4f0      	push	{r4, r5, r6, r7}
 800270e:	0786      	lsls	r6, r0, #30
 8002710:	d043      	beq.n	800279a <memset+0x8e>
 8002712:	1e54      	subs	r4, r2, #1
 8002714:	2a00      	cmp	r2, #0
 8002716:	d03e      	beq.n	8002796 <memset+0x8a>
 8002718:	b2ca      	uxtb	r2, r1
 800271a:	4603      	mov	r3, r0
 800271c:	e002      	b.n	8002724 <memset+0x18>
 800271e:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002722:	d338      	bcc.n	8002796 <memset+0x8a>
 8002724:	f803 2b01 	strb.w	r2, [r3], #1
 8002728:	079d      	lsls	r5, r3, #30
 800272a:	d1f8      	bne.n	800271e <memset+0x12>
 800272c:	2c03      	cmp	r4, #3
 800272e:	d92b      	bls.n	8002788 <memset+0x7c>
 8002730:	b2cd      	uxtb	r5, r1
 8002732:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002736:	2c0f      	cmp	r4, #15
 8002738:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 800273c:	d916      	bls.n	800276c <memset+0x60>
 800273e:	f1a4 0710 	sub.w	r7, r4, #16
 8002742:	093f      	lsrs	r7, r7, #4
 8002744:	f103 0620 	add.w	r6, r3, #32
 8002748:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 800274c:	f103 0210 	add.w	r2, r3, #16
 8002750:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002754:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002758:	3210      	adds	r2, #16
 800275a:	42b2      	cmp	r2, r6
 800275c:	d1f8      	bne.n	8002750 <memset+0x44>
 800275e:	f004 040f 	and.w	r4, r4, #15
 8002762:	3701      	adds	r7, #1
 8002764:	2c03      	cmp	r4, #3
 8002766:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800276a:	d90d      	bls.n	8002788 <memset+0x7c>
 800276c:	461e      	mov	r6, r3
 800276e:	4622      	mov	r2, r4
 8002770:	3a04      	subs	r2, #4
 8002772:	2a03      	cmp	r2, #3
 8002774:	f846 5b04 	str.w	r5, [r6], #4
 8002778:	d8fa      	bhi.n	8002770 <memset+0x64>
 800277a:	1f22      	subs	r2, r4, #4
 800277c:	f022 0203 	bic.w	r2, r2, #3
 8002780:	3204      	adds	r2, #4
 8002782:	4413      	add	r3, r2
 8002784:	f004 0403 	and.w	r4, r4, #3
 8002788:	b12c      	cbz	r4, 8002796 <memset+0x8a>
 800278a:	b2c9      	uxtb	r1, r1
 800278c:	441c      	add	r4, r3
 800278e:	f803 1b01 	strb.w	r1, [r3], #1
 8002792:	429c      	cmp	r4, r3
 8002794:	d1fb      	bne.n	800278e <memset+0x82>
 8002796:	bcf0      	pop	{r4, r5, r6, r7}
 8002798:	4770      	bx	lr
 800279a:	4614      	mov	r4, r2
 800279c:	4603      	mov	r3, r0
 800279e:	e7c5      	b.n	800272c <memset+0x20>

080027a0 <__malloc_lock>:
 80027a0:	4801      	ldr	r0, [pc, #4]	; (80027a8 <__malloc_lock+0x8>)
 80027a2:	f003 ba73 	b.w	8005c8c <__retarget_lock_acquire_recursive>
 80027a6:	bf00      	nop
 80027a8:	20000c88 	.word	0x20000c88

080027ac <__malloc_unlock>:
 80027ac:	4801      	ldr	r0, [pc, #4]	; (80027b4 <__malloc_unlock+0x8>)
 80027ae:	f003 ba6f 	b.w	8005c90 <__retarget_lock_release_recursive>
 80027b2:	bf00      	nop
 80027b4:	20000c88 	.word	0x20000c88

080027b8 <printf>:
 80027b8:	b40f      	push	{r0, r1, r2, r3}
 80027ba:	b500      	push	{lr}
 80027bc:	4907      	ldr	r1, [pc, #28]	; (80027dc <printf+0x24>)
 80027be:	b083      	sub	sp, #12
 80027c0:	ab04      	add	r3, sp, #16
 80027c2:	6808      	ldr	r0, [r1, #0]
 80027c4:	f853 2b04 	ldr.w	r2, [r3], #4
 80027c8:	6881      	ldr	r1, [r0, #8]
 80027ca:	9301      	str	r3, [sp, #4]
 80027cc:	f000 f870 	bl	80028b0 <_vfprintf_r>
 80027d0:	b003      	add	sp, #12
 80027d2:	f85d eb04 	ldr.w	lr, [sp], #4
 80027d6:	b004      	add	sp, #16
 80027d8:	4770      	bx	lr
 80027da:	bf00      	nop
 80027dc:	200001a8 	.word	0x200001a8

080027e0 <_puts_r>:
 80027e0:	b570      	push	{r4, r5, r6, lr}
 80027e2:	4605      	mov	r5, r0
 80027e4:	b088      	sub	sp, #32
 80027e6:	4608      	mov	r0, r1
 80027e8:	460c      	mov	r4, r1
 80027ea:	f7fd ff29 	bl	8000640 <strlen>
 80027ee:	4a22      	ldr	r2, [pc, #136]	; (8002878 <_puts_r+0x98>)
 80027f0:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80027f2:	9404      	str	r4, [sp, #16]
 80027f4:	2601      	movs	r6, #1
 80027f6:	1c44      	adds	r4, r0, #1
 80027f8:	a904      	add	r1, sp, #16
 80027fa:	9206      	str	r2, [sp, #24]
 80027fc:	2202      	movs	r2, #2
 80027fe:	9403      	str	r4, [sp, #12]
 8002800:	9005      	str	r0, [sp, #20]
 8002802:	68ac      	ldr	r4, [r5, #8]
 8002804:	9607      	str	r6, [sp, #28]
 8002806:	e9cd 1201 	strd	r1, r2, [sp, #4]
 800280a:	b31b      	cbz	r3, 8002854 <_puts_r+0x74>
 800280c:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800280e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002812:	07ce      	lsls	r6, r1, #31
 8002814:	b29a      	uxth	r2, r3
 8002816:	d401      	bmi.n	800281c <_puts_r+0x3c>
 8002818:	0590      	lsls	r0, r2, #22
 800281a:	d525      	bpl.n	8002868 <_puts_r+0x88>
 800281c:	0491      	lsls	r1, r2, #18
 800281e:	d406      	bmi.n	800282e <_puts_r+0x4e>
 8002820:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8002822:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002826:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 800282a:	81a3      	strh	r3, [r4, #12]
 800282c:	6662      	str	r2, [r4, #100]	; 0x64
 800282e:	4628      	mov	r0, r5
 8002830:	aa01      	add	r2, sp, #4
 8002832:	4621      	mov	r1, r4
 8002834:	f003 f870 	bl	8005918 <__sfvwrite_r>
 8002838:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800283a:	2800      	cmp	r0, #0
 800283c:	bf0c      	ite	eq
 800283e:	250a      	moveq	r5, #10
 8002840:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002844:	07da      	lsls	r2, r3, #31
 8002846:	d402      	bmi.n	800284e <_puts_r+0x6e>
 8002848:	89a3      	ldrh	r3, [r4, #12]
 800284a:	059b      	lsls	r3, r3, #22
 800284c:	d506      	bpl.n	800285c <_puts_r+0x7c>
 800284e:	4628      	mov	r0, r5
 8002850:	b008      	add	sp, #32
 8002852:	bd70      	pop	{r4, r5, r6, pc}
 8002854:	4628      	mov	r0, r5
 8002856:	f002 fec9 	bl	80055ec <__sinit>
 800285a:	e7d7      	b.n	800280c <_puts_r+0x2c>
 800285c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800285e:	f003 fa17 	bl	8005c90 <__retarget_lock_release_recursive>
 8002862:	4628      	mov	r0, r5
 8002864:	b008      	add	sp, #32
 8002866:	bd70      	pop	{r4, r5, r6, pc}
 8002868:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800286a:	f003 fa0f 	bl	8005c8c <__retarget_lock_acquire_recursive>
 800286e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002872:	b29a      	uxth	r2, r3
 8002874:	e7d2      	b.n	800281c <_puts_r+0x3c>
 8002876:	bf00      	nop
 8002878:	08007030 	.word	0x08007030

0800287c <puts>:
 800287c:	4b02      	ldr	r3, [pc, #8]	; (8002888 <puts+0xc>)
 800287e:	4601      	mov	r1, r0
 8002880:	6818      	ldr	r0, [r3, #0]
 8002882:	f7ff bfad 	b.w	80027e0 <_puts_r>
 8002886:	bf00      	nop
 8002888:	200001a8 	.word	0x200001a8

0800288c <_sbrk_r>:
 800288c:	b538      	push	{r3, r4, r5, lr}
 800288e:	4c07      	ldr	r4, [pc, #28]	; (80028ac <_sbrk_r+0x20>)
 8002890:	2300      	movs	r3, #0
 8002892:	4605      	mov	r5, r0
 8002894:	4608      	mov	r0, r1
 8002896:	6023      	str	r3, [r4, #0]
 8002898:	f7ff fbde 	bl	8002058 <_sbrk>
 800289c:	1c43      	adds	r3, r0, #1
 800289e:	d000      	beq.n	80028a2 <_sbrk_r+0x16>
 80028a0:	bd38      	pop	{r3, r4, r5, pc}
 80028a2:	6823      	ldr	r3, [r4, #0]
 80028a4:	2b00      	cmp	r3, #0
 80028a6:	d0fb      	beq.n	80028a0 <_sbrk_r+0x14>
 80028a8:	602b      	str	r3, [r5, #0]
 80028aa:	bd38      	pop	{r3, r4, r5, pc}
 80028ac:	20000c9c 	.word	0x20000c9c

080028b0 <_vfprintf_r>:
 80028b0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80028b4:	b0d7      	sub	sp, #348	; 0x15c
 80028b6:	461c      	mov	r4, r3
 80028b8:	4689      	mov	r9, r1
 80028ba:	4617      	mov	r7, r2
 80028bc:	4605      	mov	r5, r0
 80028be:	9003      	str	r0, [sp, #12]
 80028c0:	f003 f9d2 	bl	8005c68 <_localeconv_r>
 80028c4:	6803      	ldr	r3, [r0, #0]
 80028c6:	9316      	str	r3, [sp, #88]	; 0x58
 80028c8:	4618      	mov	r0, r3
 80028ca:	f7fd feb9 	bl	8000640 <strlen>
 80028ce:	9408      	str	r4, [sp, #32]
 80028d0:	9015      	str	r0, [sp, #84]	; 0x54
 80028d2:	b11d      	cbz	r5, 80028dc <_vfprintf_r+0x2c>
 80028d4:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80028d6:	2b00      	cmp	r3, #0
 80028d8:	f000 8107 	beq.w	8002aea <_vfprintf_r+0x23a>
 80028dc:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80028e0:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80028e4:	07c8      	lsls	r0, r1, #31
 80028e6:	b293      	uxth	r3, r2
 80028e8:	d402      	bmi.n	80028f0 <_vfprintf_r+0x40>
 80028ea:	0599      	lsls	r1, r3, #22
 80028ec:	f140 811f 	bpl.w	8002b2e <_vfprintf_r+0x27e>
 80028f0:	049e      	lsls	r6, r3, #18
 80028f2:	d40a      	bmi.n	800290a <_vfprintf_r+0x5a>
 80028f4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80028f8:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 80028fc:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002900:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002904:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002908:	b29b      	uxth	r3, r3
 800290a:	071d      	lsls	r5, r3, #28
 800290c:	f140 80b2 	bpl.w	8002a74 <_vfprintf_r+0x1c4>
 8002910:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002914:	2a00      	cmp	r2, #0
 8002916:	f000 80ad 	beq.w	8002a74 <_vfprintf_r+0x1c4>
 800291a:	f003 021a 	and.w	r2, r3, #26
 800291e:	2a0a      	cmp	r2, #10
 8002920:	f000 80c9 	beq.w	8002ab6 <_vfprintf_r+0x206>
 8002924:	2300      	movs	r3, #0
 8002926:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002b40 <_vfprintf_r+0x290>
 800292a:	9310      	str	r3, [sp, #64]	; 0x40
 800292c:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002930:	9317      	str	r3, [sp, #92]	; 0x5c
 8002932:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002936:	931b      	str	r3, [sp, #108]	; 0x6c
 8002938:	9318      	str	r3, [sp, #96]	; 0x60
 800293a:	9305      	str	r3, [sp, #20]
 800293c:	ab2d      	add	r3, sp, #180	; 0xb4
 800293e:	932a      	str	r3, [sp, #168]	; 0xa8
 8002940:	469b      	mov	fp, r3
 8002942:	783b      	ldrb	r3, [r7, #0]
 8002944:	f8cd 901c 	str.w	r9, [sp, #28]
 8002948:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800294c:	2b00      	cmp	r3, #0
 800294e:	f000 8259 	beq.w	8002e04 <_vfprintf_r+0x554>
 8002952:	2b25      	cmp	r3, #37	; 0x25
 8002954:	463c      	mov	r4, r7
 8002956:	d102      	bne.n	800295e <_vfprintf_r+0xae>
 8002958:	e01d      	b.n	8002996 <_vfprintf_r+0xe6>
 800295a:	2b25      	cmp	r3, #37	; 0x25
 800295c:	d003      	beq.n	8002966 <_vfprintf_r+0xb6>
 800295e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002962:	2b00      	cmp	r3, #0
 8002964:	d1f9      	bne.n	800295a <_vfprintf_r+0xaa>
 8002966:	1be5      	subs	r5, r4, r7
 8002968:	b18d      	cbz	r5, 800298e <_vfprintf_r+0xde>
 800296a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 800296e:	3301      	adds	r3, #1
 8002970:	442a      	add	r2, r5
 8002972:	2b07      	cmp	r3, #7
 8002974:	f8cb 7000 	str.w	r7, [fp]
 8002978:	f8cb 5004 	str.w	r5, [fp, #4]
 800297c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002980:	f300 80ca 	bgt.w	8002b18 <_vfprintf_r+0x268>
 8002984:	f10b 0b08 	add.w	fp, fp, #8
 8002988:	9b05      	ldr	r3, [sp, #20]
 800298a:	442b      	add	r3, r5
 800298c:	9305      	str	r3, [sp, #20]
 800298e:	7823      	ldrb	r3, [r4, #0]
 8002990:	2b00      	cmp	r3, #0
 8002992:	f000 8237 	beq.w	8002e04 <_vfprintf_r+0x554>
 8002996:	2300      	movs	r3, #0
 8002998:	7866      	ldrb	r6, [r4, #1]
 800299a:	9306      	str	r3, [sp, #24]
 800299c:	4698      	mov	r8, r3
 800299e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80029a2:	f104 0a01 	add.w	sl, r4, #1
 80029a6:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 80029aa:	252b      	movs	r5, #43	; 0x2b
 80029ac:	f10a 0a01 	add.w	sl, sl, #1
 80029b0:	f1a6 0320 	sub.w	r3, r6, #32
 80029b4:	2b5a      	cmp	r3, #90	; 0x5a
 80029b6:	f200 842a 	bhi.w	800320e <_vfprintf_r+0x95e>
 80029ba:	e8df f013 	tbh	[pc, r3, lsl #1]
 80029be:	03aa      	.short	0x03aa
 80029c0:	04280428 	.word	0x04280428
 80029c4:	0428029c 	.word	0x0428029c
 80029c8:	04280428 	.word	0x04280428
 80029cc:	042802a7 	.word	0x042802a7
 80029d0:	02c60428 	.word	0x02c60428
 80029d4:	042802d2 	.word	0x042802d2
 80029d8:	02dc02d7 	.word	0x02dc02d7
 80029dc:	02f60428 	.word	0x02f60428
 80029e0:	026d026d 	.word	0x026d026d
 80029e4:	026d026d 	.word	0x026d026d
 80029e8:	026d026d 	.word	0x026d026d
 80029ec:	026d026d 	.word	0x026d026d
 80029f0:	0428026d 	.word	0x0428026d
 80029f4:	04280428 	.word	0x04280428
 80029f8:	04280428 	.word	0x04280428
 80029fc:	04280428 	.word	0x04280428
 8002a00:	042802fb 	.word	0x042802fb
 8002a04:	03f3033c 	.word	0x03f3033c
 8002a08:	02fb02fb 	.word	0x02fb02fb
 8002a0c:	042802fb 	.word	0x042802fb
 8002a10:	04280428 	.word	0x04280428
 8002a14:	03ee0428 	.word	0x03ee0428
 8002a18:	04280428 	.word	0x04280428
 8002a1c:	0428009a 	.word	0x0428009a
 8002a20:	04280428 	.word	0x04280428
 8002a24:	04280350 	.word	0x04280350
 8002a28:	04280379 	.word	0x04280379
 8002a2c:	03900428 	.word	0x03900428
 8002a30:	04280428 	.word	0x04280428
 8002a34:	04280428 	.word	0x04280428
 8002a38:	04280428 	.word	0x04280428
 8002a3c:	04280428 	.word	0x04280428
 8002a40:	042802fb 	.word	0x042802fb
 8002a44:	00c5033c 	.word	0x00c5033c
 8002a48:	02fb02fb 	.word	0x02fb02fb
 8002a4c:	03d102fb 	.word	0x03d102fb
 8002a50:	007000c5 	.word	0x007000c5
 8002a54:	03b50428 	.word	0x03b50428
 8002a58:	03c20428 	.word	0x03c20428
 8002a5c:	03de009c 	.word	0x03de009c
 8002a60:	04280070 	.word	0x04280070
 8002a64:	00720350 	.word	0x00720350
 8002a68:	0428022c 	.word	0x0428022c
 8002a6c:	027c0428 	.word	0x027c0428
 8002a70:	00720428 	.word	0x00720428
 8002a74:	4649      	mov	r1, r9
 8002a76:	9803      	ldr	r0, [sp, #12]
 8002a78:	f001 fc9a 	bl	80043b0 <__swsetup_r>
 8002a7c:	b1a0      	cbz	r0, 8002aa8 <_vfprintf_r+0x1f8>
 8002a7e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002a82:	07d8      	lsls	r0, r3, #31
 8002a84:	d404      	bmi.n	8002a90 <_vfprintf_r+0x1e0>
 8002a86:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002a8a:	0599      	lsls	r1, r3, #22
 8002a8c:	f140 83b7 	bpl.w	80031fe <_vfprintf_r+0x94e>
 8002a90:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002a94:	9305      	str	r3, [sp, #20]
 8002a96:	9805      	ldr	r0, [sp, #20]
 8002a98:	b057      	add	sp, #348	; 0x15c
 8002a9a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002a9e:	f048 0820 	orr.w	r8, r8, #32
 8002aa2:	f89a 6000 	ldrb.w	r6, [sl]
 8002aa6:	e781      	b.n	80029ac <_vfprintf_r+0xfc>
 8002aa8:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002aac:	f003 021a 	and.w	r2, r3, #26
 8002ab0:	2a0a      	cmp	r2, #10
 8002ab2:	f47f af37 	bne.w	8002924 <_vfprintf_r+0x74>
 8002ab6:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002aba:	2a00      	cmp	r2, #0
 8002abc:	f6ff af32 	blt.w	8002924 <_vfprintf_r+0x74>
 8002ac0:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002ac4:	07d2      	lsls	r2, r2, #31
 8002ac6:	d405      	bmi.n	8002ad4 <_vfprintf_r+0x224>
 8002ac8:	059b      	lsls	r3, r3, #22
 8002aca:	d403      	bmi.n	8002ad4 <_vfprintf_r+0x224>
 8002acc:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002ad0:	f003 f8de 	bl	8005c90 <__retarget_lock_release_recursive>
 8002ad4:	4623      	mov	r3, r4
 8002ad6:	463a      	mov	r2, r7
 8002ad8:	4649      	mov	r1, r9
 8002ada:	9803      	ldr	r0, [sp, #12]
 8002adc:	f001 fc26 	bl	800432c <__sbprintf>
 8002ae0:	9005      	str	r0, [sp, #20]
 8002ae2:	9805      	ldr	r0, [sp, #20]
 8002ae4:	b057      	add	sp, #348	; 0x15c
 8002ae6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002aea:	9803      	ldr	r0, [sp, #12]
 8002aec:	f002 fd7e 	bl	80055ec <__sinit>
 8002af0:	e6f4      	b.n	80028dc <_vfprintf_r+0x2c>
 8002af2:	f048 0810 	orr.w	r8, r8, #16
 8002af6:	f018 0f20 	tst.w	r8, #32
 8002afa:	f000 836c 	beq.w	80031d6 <_vfprintf_r+0x926>
 8002afe:	9c08      	ldr	r4, [sp, #32]
 8002b00:	3407      	adds	r4, #7
 8002b02:	f024 0307 	bic.w	r3, r4, #7
 8002b06:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002b0a:	f103 0208 	add.w	r2, r3, #8
 8002b0e:	9208      	str	r2, [sp, #32]
 8002b10:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002b14:	2200      	movs	r2, #0
 8002b16:	e18c      	b.n	8002e32 <_vfprintf_r+0x582>
 8002b18:	aa2a      	add	r2, sp, #168	; 0xa8
 8002b1a:	9907      	ldr	r1, [sp, #28]
 8002b1c:	9803      	ldr	r0, [sp, #12]
 8002b1e:	f003 ff33 	bl	8006988 <__sprint_r>
 8002b22:	2800      	cmp	r0, #0
 8002b24:	f041 8376 	bne.w	8004214 <_vfprintf_r+0x1964>
 8002b28:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002b2c:	e72c      	b.n	8002988 <_vfprintf_r+0xd8>
 8002b2e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002b32:	f003 f8ab 	bl	8005c8c <__retarget_lock_acquire_recursive>
 8002b36:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002b3a:	b293      	uxth	r3, r2
 8002b3c:	e6d8      	b.n	80028f0 <_vfprintf_r+0x40>
 8002b3e:	bf00      	nop
	...
 8002b48:	4643      	mov	r3, r8
 8002b4a:	069f      	lsls	r7, r3, #26
 8002b4c:	f140 832f 	bpl.w	80031ae <_vfprintf_r+0x8fe>
 8002b50:	9c08      	ldr	r4, [sp, #32]
 8002b52:	3407      	adds	r4, #7
 8002b54:	f024 0407 	bic.w	r4, r4, #7
 8002b58:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002b5c:	f104 0208 	add.w	r2, r4, #8
 8002b60:	9208      	str	r2, [sp, #32]
 8002b62:	4604      	mov	r4, r0
 8002b64:	460d      	mov	r5, r1
 8002b66:	2800      	cmp	r0, #0
 8002b68:	f171 0200 	sbcs.w	r2, r1, #0
 8002b6c:	da05      	bge.n	8002b7a <_vfprintf_r+0x2ca>
 8002b6e:	222d      	movs	r2, #45	; 0x2d
 8002b70:	4264      	negs	r4, r4
 8002b72:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002b76:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002b7a:	aa56      	add	r2, sp, #344	; 0x158
 8002b7c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002b80:	9204      	str	r2, [sp, #16]
 8002b82:	f000 84b2 	beq.w	80034ea <_vfprintf_r+0xc3a>
 8002b86:	2201      	movs	r2, #1
 8002b88:	ea54 0105 	orrs.w	r1, r4, r5
 8002b8c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002b90:	f040 8159 	bne.w	8002e46 <_vfprintf_r+0x596>
 8002b94:	f1b9 0f00 	cmp.w	r9, #0
 8002b98:	f040 8619 	bne.w	80037ce <_vfprintf_r+0xf1e>
 8002b9c:	2a00      	cmp	r2, #0
 8002b9e:	f040 8508 	bne.w	80035b2 <_vfprintf_r+0xd02>
 8002ba2:	f013 0301 	ands.w	r3, r3, #1
 8002ba6:	af56      	add	r7, sp, #344	; 0x158
 8002ba8:	9309      	str	r3, [sp, #36]	; 0x24
 8002baa:	d002      	beq.n	8002bb2 <_vfprintf_r+0x302>
 8002bac:	2330      	movs	r3, #48	; 0x30
 8002bae:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002bb2:	2300      	movs	r3, #0
 8002bb4:	930a      	str	r3, [sp, #40]	; 0x28
 8002bb6:	930f      	str	r3, [sp, #60]	; 0x3c
 8002bb8:	9314      	str	r3, [sp, #80]	; 0x50
 8002bba:	9311      	str	r3, [sp, #68]	; 0x44
 8002bbc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002bbe:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002bc2:	454b      	cmp	r3, r9
 8002bc4:	bfb8      	it	lt
 8002bc6:	464b      	movlt	r3, r9
 8002bc8:	9304      	str	r3, [sp, #16]
 8002bca:	b112      	cbz	r2, 8002bd2 <_vfprintf_r+0x322>
 8002bcc:	9b04      	ldr	r3, [sp, #16]
 8002bce:	3301      	adds	r3, #1
 8002bd0:	9304      	str	r3, [sp, #16]
 8002bd2:	f018 0302 	ands.w	r3, r8, #2
 8002bd6:	930b      	str	r3, [sp, #44]	; 0x2c
 8002bd8:	d002      	beq.n	8002be0 <_vfprintf_r+0x330>
 8002bda:	9b04      	ldr	r3, [sp, #16]
 8002bdc:	3302      	adds	r3, #2
 8002bde:	9304      	str	r3, [sp, #16]
 8002be0:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002be4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002be6:	930e      	str	r3, [sp, #56]	; 0x38
 8002be8:	d13f      	bne.n	8002c6a <_vfprintf_r+0x3ba>
 8002bea:	9b06      	ldr	r3, [sp, #24]
 8002bec:	9904      	ldr	r1, [sp, #16]
 8002bee:	1a5d      	subs	r5, r3, r1
 8002bf0:	2d00      	cmp	r5, #0
 8002bf2:	dd3a      	ble.n	8002c6a <_vfprintf_r+0x3ba>
 8002bf4:	2d10      	cmp	r5, #16
 8002bf6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002bf8:	dd29      	ble.n	8002c4e <_vfprintf_r+0x39e>
 8002bfa:	4659      	mov	r1, fp
 8002bfc:	4620      	mov	r0, r4
 8002bfe:	9620      	str	r6, [sp, #128]	; 0x80
 8002c00:	2310      	movs	r3, #16
 8002c02:	9c03      	ldr	r4, [sp, #12]
 8002c04:	9e07      	ldr	r6, [sp, #28]
 8002c06:	46bb      	mov	fp, r7
 8002c08:	e004      	b.n	8002c14 <_vfprintf_r+0x364>
 8002c0a:	3d10      	subs	r5, #16
 8002c0c:	2d10      	cmp	r5, #16
 8002c0e:	f101 0108 	add.w	r1, r1, #8
 8002c12:	dd18      	ble.n	8002c46 <_vfprintf_r+0x396>
 8002c14:	3201      	adds	r2, #1
 8002c16:	4fba      	ldr	r7, [pc, #744]	; (8002f00 <_vfprintf_r+0x650>)
 8002c18:	3010      	adds	r0, #16
 8002c1a:	2a07      	cmp	r2, #7
 8002c1c:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002c20:	e9c1 7300 	strd	r7, r3, [r1]
 8002c24:	ddf1      	ble.n	8002c0a <_vfprintf_r+0x35a>
 8002c26:	aa2a      	add	r2, sp, #168	; 0xa8
 8002c28:	4631      	mov	r1, r6
 8002c2a:	4620      	mov	r0, r4
 8002c2c:	930c      	str	r3, [sp, #48]	; 0x30
 8002c2e:	f003 feab 	bl	8006988 <__sprint_r>
 8002c32:	2800      	cmp	r0, #0
 8002c34:	f040 843d 	bne.w	80034b2 <_vfprintf_r+0xc02>
 8002c38:	3d10      	subs	r5, #16
 8002c3a:	2d10      	cmp	r5, #16
 8002c3c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002c40:	a92d      	add	r1, sp, #180	; 0xb4
 8002c42:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002c44:	dce6      	bgt.n	8002c14 <_vfprintf_r+0x364>
 8002c46:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002c48:	465f      	mov	r7, fp
 8002c4a:	4604      	mov	r4, r0
 8002c4c:	468b      	mov	fp, r1
 8002c4e:	3201      	adds	r2, #1
 8002c50:	4bab      	ldr	r3, [pc, #684]	; (8002f00 <_vfprintf_r+0x650>)
 8002c52:	442c      	add	r4, r5
 8002c54:	2a07      	cmp	r2, #7
 8002c56:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002c5a:	e9cb 3500 	strd	r3, r5, [fp]
 8002c5e:	f300 84ff 	bgt.w	8003660 <_vfprintf_r+0xdb0>
 8002c62:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002c66:	f10b 0b08 	add.w	fp, fp, #8
 8002c6a:	b172      	cbz	r2, 8002c8a <_vfprintf_r+0x3da>
 8002c6c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002c6e:	3201      	adds	r2, #1
 8002c70:	3401      	adds	r4, #1
 8002c72:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002c76:	2101      	movs	r1, #1
 8002c78:	2a07      	cmp	r2, #7
 8002c7a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002c7e:	e9cb 0100 	strd	r0, r1, [fp]
 8002c82:	f300 8418 	bgt.w	80034b6 <_vfprintf_r+0xc06>
 8002c86:	f10b 0b08 	add.w	fp, fp, #8
 8002c8a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002c8c:	b16b      	cbz	r3, 8002caa <_vfprintf_r+0x3fa>
 8002c8e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002c90:	3301      	adds	r3, #1
 8002c92:	3402      	adds	r4, #2
 8002c94:	a923      	add	r1, sp, #140	; 0x8c
 8002c96:	2202      	movs	r2, #2
 8002c98:	2b07      	cmp	r3, #7
 8002c9a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c9e:	e9cb 1200 	strd	r1, r2, [fp]
 8002ca2:	f300 8415 	bgt.w	80034d0 <_vfprintf_r+0xc20>
 8002ca6:	f10b 0b08 	add.w	fp, fp, #8
 8002caa:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002cac:	2b80      	cmp	r3, #128	; 0x80
 8002cae:	f000 8331 	beq.w	8003314 <_vfprintf_r+0xa64>
 8002cb2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002cb4:	eba9 0503 	sub.w	r5, r9, r3
 8002cb8:	2d00      	cmp	r5, #0
 8002cba:	dd37      	ble.n	8002d2c <_vfprintf_r+0x47c>
 8002cbc:	2d10      	cmp	r5, #16
 8002cbe:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002cc0:	4b90      	ldr	r3, [pc, #576]	; (8002f04 <_vfprintf_r+0x654>)
 8002cc2:	dd28      	ble.n	8002d16 <_vfprintf_r+0x466>
 8002cc4:	4659      	mov	r1, fp
 8002cc6:	4620      	mov	r0, r4
 8002cc8:	46bb      	mov	fp, r7
 8002cca:	f04f 0910 	mov.w	r9, #16
 8002cce:	4637      	mov	r7, r6
 8002cd0:	461c      	mov	r4, r3
 8002cd2:	9e07      	ldr	r6, [sp, #28]
 8002cd4:	e004      	b.n	8002ce0 <_vfprintf_r+0x430>
 8002cd6:	3d10      	subs	r5, #16
 8002cd8:	2d10      	cmp	r5, #16
 8002cda:	f101 0108 	add.w	r1, r1, #8
 8002cde:	dd15      	ble.n	8002d0c <_vfprintf_r+0x45c>
 8002ce0:	3201      	adds	r2, #1
 8002ce2:	3010      	adds	r0, #16
 8002ce4:	2a07      	cmp	r2, #7
 8002ce6:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002cea:	e9c1 4900 	strd	r4, r9, [r1]
 8002cee:	ddf2      	ble.n	8002cd6 <_vfprintf_r+0x426>
 8002cf0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002cf2:	4631      	mov	r1, r6
 8002cf4:	9803      	ldr	r0, [sp, #12]
 8002cf6:	f003 fe47 	bl	8006988 <__sprint_r>
 8002cfa:	2800      	cmp	r0, #0
 8002cfc:	f040 83d9 	bne.w	80034b2 <_vfprintf_r+0xc02>
 8002d00:	3d10      	subs	r5, #16
 8002d02:	2d10      	cmp	r5, #16
 8002d04:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002d08:	a92d      	add	r1, sp, #180	; 0xb4
 8002d0a:	dce9      	bgt.n	8002ce0 <_vfprintf_r+0x430>
 8002d0c:	463e      	mov	r6, r7
 8002d0e:	4623      	mov	r3, r4
 8002d10:	465f      	mov	r7, fp
 8002d12:	4604      	mov	r4, r0
 8002d14:	468b      	mov	fp, r1
 8002d16:	3201      	adds	r2, #1
 8002d18:	442c      	add	r4, r5
 8002d1a:	2a07      	cmp	r2, #7
 8002d1c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002d20:	e9cb 3500 	strd	r3, r5, [fp]
 8002d24:	f300 83ef 	bgt.w	8003506 <_vfprintf_r+0xc56>
 8002d28:	f10b 0b08 	add.w	fp, fp, #8
 8002d2c:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002d30:	f040 8280 	bne.w	8003234 <_vfprintf_r+0x984>
 8002d34:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002d36:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002d38:	f8cb 7000 	str.w	r7, [fp]
 8002d3c:	3301      	adds	r3, #1
 8002d3e:	4414      	add	r4, r2
 8002d40:	2b07      	cmp	r3, #7
 8002d42:	942c      	str	r4, [sp, #176]	; 0xb0
 8002d44:	f8cb 2004 	str.w	r2, [fp, #4]
 8002d48:	932b      	str	r3, [sp, #172]	; 0xac
 8002d4a:	f300 8392 	bgt.w	8003472 <_vfprintf_r+0xbc2>
 8002d4e:	f10b 0b08 	add.w	fp, fp, #8
 8002d52:	f018 0f04 	tst.w	r8, #4
 8002d56:	d03b      	beq.n	8002dd0 <_vfprintf_r+0x520>
 8002d58:	9b06      	ldr	r3, [sp, #24]
 8002d5a:	9a04      	ldr	r2, [sp, #16]
 8002d5c:	1a9d      	subs	r5, r3, r2
 8002d5e:	2d00      	cmp	r5, #0
 8002d60:	dd36      	ble.n	8002dd0 <_vfprintf_r+0x520>
 8002d62:	2d10      	cmp	r5, #16
 8002d64:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002d66:	dd21      	ble.n	8002dac <_vfprintf_r+0x4fc>
 8002d68:	2610      	movs	r6, #16
 8002d6a:	9f03      	ldr	r7, [sp, #12]
 8002d6c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002d70:	e004      	b.n	8002d7c <_vfprintf_r+0x4cc>
 8002d72:	3d10      	subs	r5, #16
 8002d74:	2d10      	cmp	r5, #16
 8002d76:	f10b 0b08 	add.w	fp, fp, #8
 8002d7a:	dd17      	ble.n	8002dac <_vfprintf_r+0x4fc>
 8002d7c:	3301      	adds	r3, #1
 8002d7e:	4a60      	ldr	r2, [pc, #384]	; (8002f00 <_vfprintf_r+0x650>)
 8002d80:	3410      	adds	r4, #16
 8002d82:	2b07      	cmp	r3, #7
 8002d84:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002d88:	e9cb 2600 	strd	r2, r6, [fp]
 8002d8c:	ddf1      	ble.n	8002d72 <_vfprintf_r+0x4c2>
 8002d8e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d90:	4641      	mov	r1, r8
 8002d92:	4638      	mov	r0, r7
 8002d94:	f003 fdf8 	bl	8006988 <__sprint_r>
 8002d98:	2800      	cmp	r0, #0
 8002d9a:	f040 856c 	bne.w	8003876 <_vfprintf_r+0xfc6>
 8002d9e:	3d10      	subs	r5, #16
 8002da0:	2d10      	cmp	r5, #16
 8002da2:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002da6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002daa:	dce7      	bgt.n	8002d7c <_vfprintf_r+0x4cc>
 8002dac:	3301      	adds	r3, #1
 8002dae:	4a54      	ldr	r2, [pc, #336]	; (8002f00 <_vfprintf_r+0x650>)
 8002db0:	442c      	add	r4, r5
 8002db2:	2b07      	cmp	r3, #7
 8002db4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002db8:	e9cb 2500 	strd	r2, r5, [fp]
 8002dbc:	dd08      	ble.n	8002dd0 <_vfprintf_r+0x520>
 8002dbe:	aa2a      	add	r2, sp, #168	; 0xa8
 8002dc0:	9907      	ldr	r1, [sp, #28]
 8002dc2:	9803      	ldr	r0, [sp, #12]
 8002dc4:	f003 fde0 	bl	8006988 <__sprint_r>
 8002dc8:	2800      	cmp	r0, #0
 8002dca:	f040 82e9 	bne.w	80033a0 <_vfprintf_r+0xaf0>
 8002dce:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002dd0:	9904      	ldr	r1, [sp, #16]
 8002dd2:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002dd6:	428a      	cmp	r2, r1
 8002dd8:	bfac      	ite	ge
 8002dda:	189b      	addge	r3, r3, r2
 8002ddc:	185b      	addlt	r3, r3, r1
 8002dde:	9305      	str	r3, [sp, #20]
 8002de0:	2c00      	cmp	r4, #0
 8002de2:	f040 82d5 	bne.w	8003390 <_vfprintf_r+0xae0>
 8002de6:	2300      	movs	r3, #0
 8002de8:	932b      	str	r3, [sp, #172]	; 0xac
 8002dea:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002dec:	b11b      	cbz	r3, 8002df6 <_vfprintf_r+0x546>
 8002dee:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002df0:	9803      	ldr	r0, [sp, #12]
 8002df2:	f002 fc9d 	bl	8005730 <_free_r>
 8002df6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002dfa:	4657      	mov	r7, sl
 8002dfc:	783b      	ldrb	r3, [r7, #0]
 8002dfe:	2b00      	cmp	r3, #0
 8002e00:	f47f ada7 	bne.w	8002952 <_vfprintf_r+0xa2>
 8002e04:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002e06:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002e0a:	2b00      	cmp	r3, #0
 8002e0c:	f041 80e7 	bne.w	8003fde <_vfprintf_r+0x172e>
 8002e10:	2300      	movs	r3, #0
 8002e12:	932b      	str	r3, [sp, #172]	; 0xac
 8002e14:	e2cb      	b.n	80033ae <_vfprintf_r+0xafe>
 8002e16:	4643      	mov	r3, r8
 8002e18:	069a      	lsls	r2, r3, #26
 8002e1a:	f140 814e 	bpl.w	80030ba <_vfprintf_r+0x80a>
 8002e1e:	9c08      	ldr	r4, [sp, #32]
 8002e20:	3407      	adds	r4, #7
 8002e22:	f024 0207 	bic.w	r2, r4, #7
 8002e26:	f102 0108 	add.w	r1, r2, #8
 8002e2a:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002e2e:	9108      	str	r1, [sp, #32]
 8002e30:	2201      	movs	r2, #1
 8002e32:	2100      	movs	r1, #0
 8002e34:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002e38:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002e3c:	a956      	add	r1, sp, #344	; 0x158
 8002e3e:	9104      	str	r1, [sp, #16]
 8002e40:	f47f aea2 	bne.w	8002b88 <_vfprintf_r+0x2d8>
 8002e44:	4698      	mov	r8, r3
 8002e46:	2a01      	cmp	r2, #1
 8002e48:	f000 8350 	beq.w	80034ec <_vfprintf_r+0xc3c>
 8002e4c:	2a02      	cmp	r2, #2
 8002e4e:	f000 831b 	beq.w	8003488 <_vfprintf_r+0xbd8>
 8002e52:	a956      	add	r1, sp, #344	; 0x158
 8002e54:	e000      	b.n	8002e58 <_vfprintf_r+0x5a8>
 8002e56:	4639      	mov	r1, r7
 8002e58:	08e2      	lsrs	r2, r4, #3
 8002e5a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002e5e:	08e8      	lsrs	r0, r5, #3
 8002e60:	f004 0307 	and.w	r3, r4, #7
 8002e64:	4605      	mov	r5, r0
 8002e66:	4614      	mov	r4, r2
 8002e68:	3330      	adds	r3, #48	; 0x30
 8002e6a:	ea54 0205 	orrs.w	r2, r4, r5
 8002e6e:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002e72:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002e76:	d1ee      	bne.n	8002e56 <_vfprintf_r+0x5a6>
 8002e78:	f018 0f01 	tst.w	r8, #1
 8002e7c:	f000 8314 	beq.w	80034a8 <_vfprintf_r+0xbf8>
 8002e80:	2b30      	cmp	r3, #48	; 0x30
 8002e82:	f000 8311 	beq.w	80034a8 <_vfprintf_r+0xbf8>
 8002e86:	9a04      	ldr	r2, [sp, #16]
 8002e88:	3902      	subs	r1, #2
 8002e8a:	2330      	movs	r3, #48	; 0x30
 8002e8c:	1a52      	subs	r2, r2, r1
 8002e8e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002e92:	9209      	str	r2, [sp, #36]	; 0x24
 8002e94:	460f      	mov	r7, r1
 8002e96:	e68c      	b.n	8002bb2 <_vfprintf_r+0x302>
 8002e98:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002e9c:	2200      	movs	r2, #0
 8002e9e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002ea2:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002ea6:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002eaa:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002eae:	2b09      	cmp	r3, #9
 8002eb0:	d9f5      	bls.n	8002e9e <_vfprintf_r+0x5ee>
 8002eb2:	9206      	str	r2, [sp, #24]
 8002eb4:	e57c      	b.n	80029b0 <_vfprintf_r+0x100>
 8002eb6:	4b14      	ldr	r3, [pc, #80]	; (8002f08 <_vfprintf_r+0x658>)
 8002eb8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002eba:	f018 0f20 	tst.w	r8, #32
 8002ebe:	f000 8114 	beq.w	80030ea <_vfprintf_r+0x83a>
 8002ec2:	9c08      	ldr	r4, [sp, #32]
 8002ec4:	3407      	adds	r4, #7
 8002ec6:	f024 0307 	bic.w	r3, r4, #7
 8002eca:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002ece:	f103 0208 	add.w	r2, r3, #8
 8002ed2:	9208      	str	r2, [sp, #32]
 8002ed4:	f018 0f01 	tst.w	r8, #1
 8002ed8:	d009      	beq.n	8002eee <_vfprintf_r+0x63e>
 8002eda:	ea54 0305 	orrs.w	r3, r4, r5
 8002ede:	d006      	beq.n	8002eee <_vfprintf_r+0x63e>
 8002ee0:	2330      	movs	r3, #48	; 0x30
 8002ee2:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002ee6:	f048 0802 	orr.w	r8, r8, #2
 8002eea:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002eee:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002ef2:	2202      	movs	r2, #2
 8002ef4:	e79d      	b.n	8002e32 <_vfprintf_r+0x582>
 8002ef6:	f048 0801 	orr.w	r8, r8, #1
 8002efa:	f89a 6000 	ldrb.w	r6, [sl]
 8002efe:	e555      	b.n	80029ac <_vfprintf_r+0xfc>
 8002f00:	08007078 	.word	0x08007078
 8002f04:	08007088 	.word	0x08007088
 8002f08:	08007044 	.word	0x08007044
 8002f0c:	9e03      	ldr	r6, [sp, #12]
 8002f0e:	4630      	mov	r0, r6
 8002f10:	f002 feaa 	bl	8005c68 <_localeconv_r>
 8002f14:	6843      	ldr	r3, [r0, #4]
 8002f16:	9318      	str	r3, [sp, #96]	; 0x60
 8002f18:	4618      	mov	r0, r3
 8002f1a:	f7fd fb91 	bl	8000640 <strlen>
 8002f1e:	901b      	str	r0, [sp, #108]	; 0x6c
 8002f20:	4604      	mov	r4, r0
 8002f22:	4630      	mov	r0, r6
 8002f24:	f002 fea0 	bl	8005c68 <_localeconv_r>
 8002f28:	6883      	ldr	r3, [r0, #8]
 8002f2a:	931a      	str	r3, [sp, #104]	; 0x68
 8002f2c:	2c00      	cmp	r4, #0
 8002f2e:	f43f adb8 	beq.w	8002aa2 <_vfprintf_r+0x1f2>
 8002f32:	f89a 6000 	ldrb.w	r6, [sl]
 8002f36:	2b00      	cmp	r3, #0
 8002f38:	f43f ad38 	beq.w	80029ac <_vfprintf_r+0xfc>
 8002f3c:	781b      	ldrb	r3, [r3, #0]
 8002f3e:	2b00      	cmp	r3, #0
 8002f40:	f43f ad34 	beq.w	80029ac <_vfprintf_r+0xfc>
 8002f44:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002f48:	e530      	b.n	80029ac <_vfprintf_r+0xfc>
 8002f4a:	9b08      	ldr	r3, [sp, #32]
 8002f4c:	f89a 6000 	ldrb.w	r6, [sl]
 8002f50:	681a      	ldr	r2, [r3, #0]
 8002f52:	9206      	str	r2, [sp, #24]
 8002f54:	2a00      	cmp	r2, #0
 8002f56:	f103 0304 	add.w	r3, r3, #4
 8002f5a:	f2c0 8697 	blt.w	8003c8c <_vfprintf_r+0x13dc>
 8002f5e:	9308      	str	r3, [sp, #32]
 8002f60:	e524      	b.n	80029ac <_vfprintf_r+0xfc>
 8002f62:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002f66:	f89a 6000 	ldrb.w	r6, [sl]
 8002f6a:	e51f      	b.n	80029ac <_vfprintf_r+0xfc>
 8002f6c:	f89a 6000 	ldrb.w	r6, [sl]
 8002f70:	f048 0804 	orr.w	r8, r8, #4
 8002f74:	e51a      	b.n	80029ac <_vfprintf_r+0xfc>
 8002f76:	f89a 6000 	ldrb.w	r6, [sl]
 8002f7a:	2e2a      	cmp	r6, #42	; 0x2a
 8002f7c:	f10a 0201 	add.w	r2, sl, #1
 8002f80:	f001 81b0 	beq.w	80042e4 <_vfprintf_r+0x1a34>
 8002f84:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002f88:	2b09      	cmp	r3, #9
 8002f8a:	4692      	mov	sl, r2
 8002f8c:	f04f 0900 	mov.w	r9, #0
 8002f90:	f63f ad0e 	bhi.w	80029b0 <_vfprintf_r+0x100>
 8002f94:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002f98:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002f9c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002fa0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002fa4:	2b09      	cmp	r3, #9
 8002fa6:	d9f5      	bls.n	8002f94 <_vfprintf_r+0x6e4>
 8002fa8:	e502      	b.n	80029b0 <_vfprintf_r+0x100>
 8002faa:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002fae:	f89a 6000 	ldrb.w	r6, [sl]
 8002fb2:	e4fb      	b.n	80029ac <_vfprintf_r+0xfc>
 8002fb4:	9c08      	ldr	r4, [sp, #32]
 8002fb6:	3407      	adds	r4, #7
 8002fb8:	f024 0407 	bic.w	r4, r4, #7
 8002fbc:	ed94 7b00 	vldr	d7, [r4]
 8002fc0:	ec52 1b17 	vmov	r1, r2, d7
 8002fc4:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002fc8:	931d      	str	r3, [sp, #116]	; 0x74
 8002fca:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002fce:	3408      	adds	r4, #8
 8002fd0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002fd4:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002fd8:	4bba      	ldr	r3, [pc, #744]	; (80032c4 <_vfprintf_r+0xa14>)
 8002fda:	9408      	str	r4, [sp, #32]
 8002fdc:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002fe0:	f7fe f844 	bl	800106c <__aeabi_dcmpun>
 8002fe4:	2800      	cmp	r0, #0
 8002fe6:	f040 846f 	bne.w	80038c8 <_vfprintf_r+0x1018>
 8002fea:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002fee:	4bb5      	ldr	r3, [pc, #724]	; (80032c4 <_vfprintf_r+0xa14>)
 8002ff0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002ff4:	f7fe f81c 	bl	8001030 <__aeabi_dcmple>
 8002ff8:	2800      	cmp	r0, #0
 8002ffa:	f040 8465 	bne.w	80038c8 <_vfprintf_r+0x1018>
 8002ffe:	2200      	movs	r2, #0
 8003000:	2300      	movs	r3, #0
 8003002:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003006:	f7fe f809 	bl	800101c <__aeabi_dcmplt>
 800300a:	2800      	cmp	r0, #0
 800300c:	f040 855b 	bne.w	8003ac6 <_vfprintf_r+0x1216>
 8003010:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003014:	4fac      	ldr	r7, [pc, #688]	; (80032c8 <_vfprintf_r+0xa18>)
 8003016:	4bad      	ldr	r3, [pc, #692]	; (80032cc <_vfprintf_r+0xa1c>)
 8003018:	2000      	movs	r0, #0
 800301a:	2103      	movs	r1, #3
 800301c:	9104      	str	r1, [sp, #16]
 800301e:	900a      	str	r0, [sp, #40]	; 0x28
 8003020:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8003024:	2e47      	cmp	r6, #71	; 0x47
 8003026:	bfd8      	it	le
 8003028:	461f      	movle	r7, r3
 800302a:	9109      	str	r1, [sp, #36]	; 0x24
 800302c:	4681      	mov	r9, r0
 800302e:	900f      	str	r0, [sp, #60]	; 0x3c
 8003030:	9014      	str	r0, [sp, #80]	; 0x50
 8003032:	9011      	str	r0, [sp, #68]	; 0x44
 8003034:	e5c9      	b.n	8002bca <_vfprintf_r+0x31a>
 8003036:	9808      	ldr	r0, [sp, #32]
 8003038:	2300      	movs	r3, #0
 800303a:	6801      	ldr	r1, [r0, #0]
 800303c:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003040:	461a      	mov	r2, r3
 8003042:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8003046:	2301      	movs	r3, #1
 8003048:	1d01      	adds	r1, r0, #4
 800304a:	9304      	str	r3, [sp, #16]
 800304c:	920a      	str	r2, [sp, #40]	; 0x28
 800304e:	4691      	mov	r9, r2
 8003050:	920f      	str	r2, [sp, #60]	; 0x3c
 8003052:	9214      	str	r2, [sp, #80]	; 0x50
 8003054:	9211      	str	r2, [sp, #68]	; 0x44
 8003056:	e9cd 1308 	strd	r1, r3, [sp, #32]
 800305a:	af3d      	add	r7, sp, #244	; 0xf4
 800305c:	e5b9      	b.n	8002bd2 <_vfprintf_r+0x322>
 800305e:	9b08      	ldr	r3, [sp, #32]
 8003060:	681f      	ldr	r7, [r3, #0]
 8003062:	2500      	movs	r5, #0
 8003064:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003068:	1d1c      	adds	r4, r3, #4
 800306a:	2f00      	cmp	r7, #0
 800306c:	f000 8639 	beq.w	8003ce2 <_vfprintf_r+0x1432>
 8003070:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003074:	f000 8711 	beq.w	8003e9a <_vfprintf_r+0x15ea>
 8003078:	464a      	mov	r2, r9
 800307a:	4629      	mov	r1, r5
 800307c:	4638      	mov	r0, r7
 800307e:	f7fd fb4f 	bl	8000720 <memchr>
 8003082:	900a      	str	r0, [sp, #40]	; 0x28
 8003084:	2800      	cmp	r0, #0
 8003086:	f000 85e7 	beq.w	8003c58 <_vfprintf_r+0x13a8>
 800308a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800308c:	1bdb      	subs	r3, r3, r7
 800308e:	9309      	str	r3, [sp, #36]	; 0x24
 8003090:	46a9      	mov	r9, r5
 8003092:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003096:	9408      	str	r4, [sp, #32]
 8003098:	9304      	str	r3, [sp, #16]
 800309a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800309e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 80030a2:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80030a6:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 80030aa:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80030ae:	e58c      	b.n	8002bca <_vfprintf_r+0x31a>
 80030b0:	f048 0310 	orr.w	r3, r8, #16
 80030b4:	069a      	lsls	r2, r3, #26
 80030b6:	f53f aeb2 	bmi.w	8002e1e <_vfprintf_r+0x56e>
 80030ba:	9a08      	ldr	r2, [sp, #32]
 80030bc:	06df      	lsls	r7, r3, #27
 80030be:	f102 0104 	add.w	r1, r2, #4
 80030c2:	f100 837e 	bmi.w	80037c2 <_vfprintf_r+0xf12>
 80030c6:	065d      	lsls	r5, r3, #25
 80030c8:	9a08      	ldr	r2, [sp, #32]
 80030ca:	f100 84e4 	bmi.w	8003a96 <_vfprintf_r+0x11e6>
 80030ce:	059c      	lsls	r4, r3, #22
 80030d0:	f140 8377 	bpl.w	80037c2 <_vfprintf_r+0xf12>
 80030d4:	7814      	ldrb	r4, [r2, #0]
 80030d6:	9108      	str	r1, [sp, #32]
 80030d8:	2500      	movs	r5, #0
 80030da:	2201      	movs	r2, #1
 80030dc:	e6a9      	b.n	8002e32 <_vfprintf_r+0x582>
 80030de:	4b7c      	ldr	r3, [pc, #496]	; (80032d0 <_vfprintf_r+0xa20>)
 80030e0:	9317      	str	r3, [sp, #92]	; 0x5c
 80030e2:	f018 0f20 	tst.w	r8, #32
 80030e6:	f47f aeec 	bne.w	8002ec2 <_vfprintf_r+0x612>
 80030ea:	9a08      	ldr	r2, [sp, #32]
 80030ec:	f018 0f10 	tst.w	r8, #16
 80030f0:	f102 0304 	add.w	r3, r2, #4
 80030f4:	f040 8354 	bne.w	80037a0 <_vfprintf_r+0xef0>
 80030f8:	f018 0f40 	tst.w	r8, #64	; 0x40
 80030fc:	9a08      	ldr	r2, [sp, #32]
 80030fe:	f040 84d0 	bne.w	8003aa2 <_vfprintf_r+0x11f2>
 8003102:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003106:	f000 834b 	beq.w	80037a0 <_vfprintf_r+0xef0>
 800310a:	7814      	ldrb	r4, [r2, #0]
 800310c:	9308      	str	r3, [sp, #32]
 800310e:	2500      	movs	r5, #0
 8003110:	e6e0      	b.n	8002ed4 <_vfprintf_r+0x624>
 8003112:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8003116:	f89a 6000 	ldrb.w	r6, [sl]
 800311a:	2b00      	cmp	r3, #0
 800311c:	f47f ac46 	bne.w	80029ac <_vfprintf_r+0xfc>
 8003120:	2320      	movs	r3, #32
 8003122:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003126:	e441      	b.n	80029ac <_vfprintf_r+0xfc>
 8003128:	f89a 6000 	ldrb.w	r6, [sl]
 800312c:	2e6c      	cmp	r6, #108	; 0x6c
 800312e:	bf03      	ittte	eq
 8003130:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8003134:	f048 0820 	orreq.w	r8, r8, #32
 8003138:	f10a 0a01 	addeq.w	sl, sl, #1
 800313c:	f048 0810 	orrne.w	r8, r8, #16
 8003140:	e434      	b.n	80029ac <_vfprintf_r+0xfc>
 8003142:	9a08      	ldr	r2, [sp, #32]
 8003144:	f018 0f20 	tst.w	r8, #32
 8003148:	f852 3b04 	ldr.w	r3, [r2], #4
 800314c:	9208      	str	r2, [sp, #32]
 800314e:	f000 83a1 	beq.w	8003894 <_vfprintf_r+0xfe4>
 8003152:	9a05      	ldr	r2, [sp, #20]
 8003154:	4610      	mov	r0, r2
 8003156:	17d1      	asrs	r1, r2, #31
 8003158:	e9c3 0100 	strd	r0, r1, [r3]
 800315c:	4657      	mov	r7, sl
 800315e:	e64d      	b.n	8002dfc <_vfprintf_r+0x54c>
 8003160:	f89a 6000 	ldrb.w	r6, [sl]
 8003164:	2e68      	cmp	r6, #104	; 0x68
 8003166:	bf03      	ittte	eq
 8003168:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800316c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003170:	f10a 0a01 	addeq.w	sl, sl, #1
 8003174:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8003178:	e418      	b.n	80029ac <_vfprintf_r+0xfc>
 800317a:	9908      	ldr	r1, [sp, #32]
 800317c:	4b55      	ldr	r3, [pc, #340]	; (80032d4 <_vfprintf_r+0xa24>)
 800317e:	680c      	ldr	r4, [r1, #0]
 8003180:	9317      	str	r3, [sp, #92]	; 0x5c
 8003182:	f647 0230 	movw	r2, #30768	; 0x7830
 8003186:	3104      	adds	r1, #4
 8003188:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 800318c:	f048 0302 	orr.w	r3, r8, #2
 8003190:	9108      	str	r1, [sp, #32]
 8003192:	2500      	movs	r5, #0
 8003194:	2202      	movs	r2, #2
 8003196:	2678      	movs	r6, #120	; 0x78
 8003198:	e64b      	b.n	8002e32 <_vfprintf_r+0x582>
 800319a:	f048 0808 	orr.w	r8, r8, #8
 800319e:	f89a 6000 	ldrb.w	r6, [sl]
 80031a2:	e403      	b.n	80029ac <_vfprintf_r+0xfc>
 80031a4:	f048 0310 	orr.w	r3, r8, #16
 80031a8:	069f      	lsls	r7, r3, #26
 80031aa:	f53f acd1 	bmi.w	8002b50 <_vfprintf_r+0x2a0>
 80031ae:	9908      	ldr	r1, [sp, #32]
 80031b0:	06dd      	lsls	r5, r3, #27
 80031b2:	f101 0204 	add.w	r2, r1, #4
 80031b6:	f100 82fd 	bmi.w	80037b4 <_vfprintf_r+0xf04>
 80031ba:	065c      	lsls	r4, r3, #25
 80031bc:	9908      	ldr	r1, [sp, #32]
 80031be:	f100 8475 	bmi.w	8003aac <_vfprintf_r+0x11fc>
 80031c2:	0598      	lsls	r0, r3, #22
 80031c4:	f140 82f6 	bpl.w	80037b4 <_vfprintf_r+0xf04>
 80031c8:	f991 4000 	ldrsb.w	r4, [r1]
 80031cc:	9208      	str	r2, [sp, #32]
 80031ce:	17e5      	asrs	r5, r4, #31
 80031d0:	4620      	mov	r0, r4
 80031d2:	4629      	mov	r1, r5
 80031d4:	e4c7      	b.n	8002b66 <_vfprintf_r+0x2b6>
 80031d6:	9a08      	ldr	r2, [sp, #32]
 80031d8:	f018 0f10 	tst.w	r8, #16
 80031dc:	f102 0304 	add.w	r3, r2, #4
 80031e0:	f040 82e3 	bne.w	80037aa <_vfprintf_r+0xefa>
 80031e4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80031e8:	9a08      	ldr	r2, [sp, #32]
 80031ea:	f040 8467 	bne.w	8003abc <_vfprintf_r+0x120c>
 80031ee:	f418 7f00 	tst.w	r8, #512	; 0x200
 80031f2:	f000 82da 	beq.w	80037aa <_vfprintf_r+0xefa>
 80031f6:	7814      	ldrb	r4, [r2, #0]
 80031f8:	9308      	str	r3, [sp, #32]
 80031fa:	2500      	movs	r5, #0
 80031fc:	e488      	b.n	8002b10 <_vfprintf_r+0x260>
 80031fe:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003202:	f002 fd45 	bl	8005c90 <__retarget_lock_release_recursive>
 8003206:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800320a:	9305      	str	r3, [sp, #20]
 800320c:	e443      	b.n	8002a96 <_vfprintf_r+0x1e6>
 800320e:	2e00      	cmp	r6, #0
 8003210:	f43f adf8 	beq.w	8002e04 <_vfprintf_r+0x554>
 8003214:	2300      	movs	r3, #0
 8003216:	2101      	movs	r1, #1
 8003218:	461a      	mov	r2, r3
 800321a:	9104      	str	r1, [sp, #16]
 800321c:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8003220:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003224:	930a      	str	r3, [sp, #40]	; 0x28
 8003226:	4699      	mov	r9, r3
 8003228:	930f      	str	r3, [sp, #60]	; 0x3c
 800322a:	9314      	str	r3, [sp, #80]	; 0x50
 800322c:	9311      	str	r3, [sp, #68]	; 0x44
 800322e:	9109      	str	r1, [sp, #36]	; 0x24
 8003230:	af3d      	add	r7, sp, #244	; 0xf4
 8003232:	e4ce      	b.n	8002bd2 <_vfprintf_r+0x322>
 8003234:	2e65      	cmp	r6, #101	; 0x65
 8003236:	f340 80ca 	ble.w	80033ce <_vfprintf_r+0xb1e>
 800323a:	2200      	movs	r2, #0
 800323c:	2300      	movs	r3, #0
 800323e:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003242:	f7fd fee1 	bl	8001008 <__aeabi_dcmpeq>
 8003246:	2800      	cmp	r0, #0
 8003248:	f000 8169 	beq.w	800351e <_vfprintf_r+0xc6e>
 800324c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800324e:	4a22      	ldr	r2, [pc, #136]	; (80032d8 <_vfprintf_r+0xa28>)
 8003250:	f8cb 2000 	str.w	r2, [fp]
 8003254:	3301      	adds	r3, #1
 8003256:	3401      	adds	r4, #1
 8003258:	2201      	movs	r2, #1
 800325a:	2b07      	cmp	r3, #7
 800325c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003260:	f8cb 2004 	str.w	r2, [fp, #4]
 8003264:	f300 8406 	bgt.w	8003a74 <_vfprintf_r+0x11c4>
 8003268:	f10b 0b08 	add.w	fp, fp, #8
 800326c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800326e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003270:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003272:	4293      	cmp	r3, r2
 8003274:	db03      	blt.n	800327e <_vfprintf_r+0x9ce>
 8003276:	f018 0f01 	tst.w	r8, #1
 800327a:	f43f ad6a 	beq.w	8002d52 <_vfprintf_r+0x4a2>
 800327e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003280:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003282:	f8cb 2000 	str.w	r2, [fp]
 8003286:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003288:	f8cb 2004 	str.w	r2, [fp, #4]
 800328c:	3301      	adds	r3, #1
 800328e:	4414      	add	r4, r2
 8003290:	2b07      	cmp	r3, #7
 8003292:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003296:	f300 8517 	bgt.w	8003cc8 <_vfprintf_r+0x1418>
 800329a:	f10b 0b08 	add.w	fp, fp, #8
 800329e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80032a0:	1e5d      	subs	r5, r3, #1
 80032a2:	2d00      	cmp	r5, #0
 80032a4:	f77f ad55 	ble.w	8002d52 <_vfprintf_r+0x4a2>
 80032a8:	2d10      	cmp	r5, #16
 80032aa:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80032ac:	4b0b      	ldr	r3, [pc, #44]	; (80032dc <_vfprintf_r+0xa2c>)
 80032ae:	f340 82e7 	ble.w	8003880 <_vfprintf_r+0xfd0>
 80032b2:	4619      	mov	r1, r3
 80032b4:	2610      	movs	r6, #16
 80032b6:	4623      	mov	r3, r4
 80032b8:	9f03      	ldr	r7, [sp, #12]
 80032ba:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80032be:	460c      	mov	r4, r1
 80032c0:	e014      	b.n	80032ec <_vfprintf_r+0xa3c>
 80032c2:	bf00      	nop
 80032c4:	7fefffff 	.word	0x7fefffff
 80032c8:	08007038 	.word	0x08007038
 80032cc:	08007034 	.word	0x08007034
 80032d0:	08007058 	.word	0x08007058
 80032d4:	08007044 	.word	0x08007044
 80032d8:	08007074 	.word	0x08007074
 80032dc:	08007088 	.word	0x08007088
 80032e0:	f10b 0b08 	add.w	fp, fp, #8
 80032e4:	3d10      	subs	r5, #16
 80032e6:	2d10      	cmp	r5, #16
 80032e8:	f340 82c7 	ble.w	800387a <_vfprintf_r+0xfca>
 80032ec:	3201      	adds	r2, #1
 80032ee:	3310      	adds	r3, #16
 80032f0:	2a07      	cmp	r2, #7
 80032f2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80032f6:	e9cb 4600 	strd	r4, r6, [fp]
 80032fa:	ddf1      	ble.n	80032e0 <_vfprintf_r+0xa30>
 80032fc:	aa2a      	add	r2, sp, #168	; 0xa8
 80032fe:	4649      	mov	r1, r9
 8003300:	4638      	mov	r0, r7
 8003302:	f003 fb41 	bl	8006988 <__sprint_r>
 8003306:	2800      	cmp	r0, #0
 8003308:	d14c      	bne.n	80033a4 <_vfprintf_r+0xaf4>
 800330a:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 800330e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003312:	e7e7      	b.n	80032e4 <_vfprintf_r+0xa34>
 8003314:	9b06      	ldr	r3, [sp, #24]
 8003316:	9a04      	ldr	r2, [sp, #16]
 8003318:	1a9d      	subs	r5, r3, r2
 800331a:	2d00      	cmp	r5, #0
 800331c:	f77f acc9 	ble.w	8002cb2 <_vfprintf_r+0x402>
 8003320:	2d10      	cmp	r5, #16
 8003322:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003324:	4bbc      	ldr	r3, [pc, #752]	; (8003618 <_vfprintf_r+0xd68>)
 8003326:	dd27      	ble.n	8003378 <_vfprintf_r+0xac8>
 8003328:	4659      	mov	r1, fp
 800332a:	4620      	mov	r0, r4
 800332c:	46bb      	mov	fp, r7
 800332e:	461c      	mov	r4, r3
 8003330:	4637      	mov	r7, r6
 8003332:	9e07      	ldr	r6, [sp, #28]
 8003334:	e004      	b.n	8003340 <_vfprintf_r+0xa90>
 8003336:	3d10      	subs	r5, #16
 8003338:	2d10      	cmp	r5, #16
 800333a:	f101 0108 	add.w	r1, r1, #8
 800333e:	dd16      	ble.n	800336e <_vfprintf_r+0xabe>
 8003340:	3201      	adds	r2, #1
 8003342:	3010      	adds	r0, #16
 8003344:	2310      	movs	r3, #16
 8003346:	2a07      	cmp	r2, #7
 8003348:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800334c:	600c      	str	r4, [r1, #0]
 800334e:	604b      	str	r3, [r1, #4]
 8003350:	ddf1      	ble.n	8003336 <_vfprintf_r+0xa86>
 8003352:	aa2a      	add	r2, sp, #168	; 0xa8
 8003354:	4631      	mov	r1, r6
 8003356:	9803      	ldr	r0, [sp, #12]
 8003358:	f003 fb16 	bl	8006988 <__sprint_r>
 800335c:	2800      	cmp	r0, #0
 800335e:	f040 80a8 	bne.w	80034b2 <_vfprintf_r+0xc02>
 8003362:	3d10      	subs	r5, #16
 8003364:	2d10      	cmp	r5, #16
 8003366:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 800336a:	a92d      	add	r1, sp, #180	; 0xb4
 800336c:	dce8      	bgt.n	8003340 <_vfprintf_r+0xa90>
 800336e:	463e      	mov	r6, r7
 8003370:	4623      	mov	r3, r4
 8003372:	465f      	mov	r7, fp
 8003374:	4604      	mov	r4, r0
 8003376:	468b      	mov	fp, r1
 8003378:	3201      	adds	r2, #1
 800337a:	442c      	add	r4, r5
 800337c:	2a07      	cmp	r2, #7
 800337e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003382:	e9cb 3500 	strd	r3, r5, [fp]
 8003386:	f300 8292 	bgt.w	80038ae <_vfprintf_r+0xffe>
 800338a:	f10b 0b08 	add.w	fp, fp, #8
 800338e:	e490      	b.n	8002cb2 <_vfprintf_r+0x402>
 8003390:	aa2a      	add	r2, sp, #168	; 0xa8
 8003392:	9907      	ldr	r1, [sp, #28]
 8003394:	9803      	ldr	r0, [sp, #12]
 8003396:	f003 faf7 	bl	8006988 <__sprint_r>
 800339a:	2800      	cmp	r0, #0
 800339c:	f43f ad23 	beq.w	8002de6 <_vfprintf_r+0x536>
 80033a0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80033a4:	990a      	ldr	r1, [sp, #40]	; 0x28
 80033a6:	b111      	cbz	r1, 80033ae <_vfprintf_r+0xafe>
 80033a8:	9803      	ldr	r0, [sp, #12]
 80033aa:	f002 f9c1 	bl	8005730 <_free_r>
 80033ae:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80033b2:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80033b6:	07d0      	lsls	r0, r2, #31
 80033b8:	d402      	bmi.n	80033c0 <_vfprintf_r+0xb10>
 80033ba:	0599      	lsls	r1, r3, #22
 80033bc:	f140 81d0 	bpl.w	8003760 <_vfprintf_r+0xeb0>
 80033c0:	065a      	lsls	r2, r3, #25
 80033c2:	f53f ab65 	bmi.w	8002a90 <_vfprintf_r+0x1e0>
 80033c6:	9805      	ldr	r0, [sp, #20]
 80033c8:	b057      	add	sp, #348	; 0x15c
 80033ca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80033ce:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80033d0:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80033d2:	2a01      	cmp	r2, #1
 80033d4:	f104 0401 	add.w	r4, r4, #1
 80033d8:	f103 0501 	add.w	r5, r3, #1
 80033dc:	f10b 0608 	add.w	r6, fp, #8
 80033e0:	f340 811c 	ble.w	800361c <_vfprintf_r+0xd6c>
 80033e4:	2301      	movs	r3, #1
 80033e6:	2d07      	cmp	r5, #7
 80033e8:	f8cb 7000 	str.w	r7, [fp]
 80033ec:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80033f0:	f8cb 3004 	str.w	r3, [fp, #4]
 80033f4:	f300 81bb 	bgt.w	800376e <_vfprintf_r+0xebe>
 80033f8:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80033fa:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80033fc:	1c69      	adds	r1, r5, #1
 80033fe:	441c      	add	r4, r3
 8003400:	2907      	cmp	r1, #7
 8003402:	910b      	str	r1, [sp, #44]	; 0x2c
 8003404:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003408:	e9c6 2300 	strd	r2, r3, [r6]
 800340c:	f300 81bb 	bgt.w	8003786 <_vfprintf_r+0xed6>
 8003410:	3608      	adds	r6, #8
 8003412:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003414:	1c53      	adds	r3, r2, #1
 8003416:	461d      	mov	r5, r3
 8003418:	9509      	str	r5, [sp, #36]	; 0x24
 800341a:	9d10      	ldr	r5, [sp, #64]	; 0x40
 800341c:	930e      	str	r3, [sp, #56]	; 0x38
 800341e:	2200      	movs	r2, #0
 8003420:	2300      	movs	r3, #0
 8003422:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003426:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 800342a:	f106 0b08 	add.w	fp, r6, #8
 800342e:	f7fd fdeb 	bl	8001008 <__aeabi_dcmpeq>
 8003432:	2800      	cmp	r0, #0
 8003434:	f040 80c2 	bne.w	80035bc <_vfprintf_r+0xd0c>
 8003438:	9d09      	ldr	r5, [sp, #36]	; 0x24
 800343a:	f8c6 9004 	str.w	r9, [r6, #4]
 800343e:	3701      	adds	r7, #1
 8003440:	444c      	add	r4, r9
 8003442:	2d07      	cmp	r5, #7
 8003444:	6037      	str	r7, [r6, #0]
 8003446:	942c      	str	r4, [sp, #176]	; 0xb0
 8003448:	952b      	str	r5, [sp, #172]	; 0xac
 800344a:	f300 80f9 	bgt.w	8003640 <_vfprintf_r+0xd90>
 800344e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003450:	f106 0310 	add.w	r3, r6, #16
 8003454:	3202      	adds	r2, #2
 8003456:	465e      	mov	r6, fp
 8003458:	9209      	str	r2, [sp, #36]	; 0x24
 800345a:	469b      	mov	fp, r3
 800345c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 800345e:	6072      	str	r2, [r6, #4]
 8003460:	4414      	add	r4, r2
 8003462:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003464:	942c      	str	r4, [sp, #176]	; 0xb0
 8003466:	ab26      	add	r3, sp, #152	; 0x98
 8003468:	2a07      	cmp	r2, #7
 800346a:	922b      	str	r2, [sp, #172]	; 0xac
 800346c:	6033      	str	r3, [r6, #0]
 800346e:	f77f ac70 	ble.w	8002d52 <_vfprintf_r+0x4a2>
 8003472:	aa2a      	add	r2, sp, #168	; 0xa8
 8003474:	9907      	ldr	r1, [sp, #28]
 8003476:	9803      	ldr	r0, [sp, #12]
 8003478:	f003 fa86 	bl	8006988 <__sprint_r>
 800347c:	2800      	cmp	r0, #0
 800347e:	d18f      	bne.n	80033a0 <_vfprintf_r+0xaf0>
 8003480:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003482:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003486:	e464      	b.n	8002d52 <_vfprintf_r+0x4a2>
 8003488:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800348a:	af56      	add	r7, sp, #344	; 0x158
 800348c:	0923      	lsrs	r3, r4, #4
 800348e:	f004 010f 	and.w	r1, r4, #15
 8003492:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8003496:	092a      	lsrs	r2, r5, #4
 8003498:	461c      	mov	r4, r3
 800349a:	4615      	mov	r5, r2
 800349c:	5c43      	ldrb	r3, [r0, r1]
 800349e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80034a2:	ea54 0305 	orrs.w	r3, r4, r5
 80034a6:	d1f1      	bne.n	800348c <_vfprintf_r+0xbdc>
 80034a8:	9b04      	ldr	r3, [sp, #16]
 80034aa:	1bdb      	subs	r3, r3, r7
 80034ac:	9309      	str	r3, [sp, #36]	; 0x24
 80034ae:	f7ff bb80 	b.w	8002bb2 <_vfprintf_r+0x302>
 80034b2:	46b1      	mov	r9, r6
 80034b4:	e776      	b.n	80033a4 <_vfprintf_r+0xaf4>
 80034b6:	aa2a      	add	r2, sp, #168	; 0xa8
 80034b8:	9907      	ldr	r1, [sp, #28]
 80034ba:	9803      	ldr	r0, [sp, #12]
 80034bc:	f003 fa64 	bl	8006988 <__sprint_r>
 80034c0:	2800      	cmp	r0, #0
 80034c2:	f47f af6d 	bne.w	80033a0 <_vfprintf_r+0xaf0>
 80034c6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80034c8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034cc:	f7ff bbdd 	b.w	8002c8a <_vfprintf_r+0x3da>
 80034d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80034d2:	9907      	ldr	r1, [sp, #28]
 80034d4:	9803      	ldr	r0, [sp, #12]
 80034d6:	f003 fa57 	bl	8006988 <__sprint_r>
 80034da:	2800      	cmp	r0, #0
 80034dc:	f47f af60 	bne.w	80033a0 <_vfprintf_r+0xaf0>
 80034e0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80034e2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034e6:	f7ff bbe0 	b.w	8002caa <_vfprintf_r+0x3fa>
 80034ea:	4698      	mov	r8, r3
 80034ec:	2d00      	cmp	r5, #0
 80034ee:	bf08      	it	eq
 80034f0:	2c0a      	cmpeq	r4, #10
 80034f2:	f080 8170 	bcs.w	80037d6 <_vfprintf_r+0xf26>
 80034f6:	af56      	add	r7, sp, #344	; 0x158
 80034f8:	3430      	adds	r4, #48	; 0x30
 80034fa:	2301      	movs	r3, #1
 80034fc:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003500:	9309      	str	r3, [sp, #36]	; 0x24
 8003502:	f7ff bb56 	b.w	8002bb2 <_vfprintf_r+0x302>
 8003506:	aa2a      	add	r2, sp, #168	; 0xa8
 8003508:	9907      	ldr	r1, [sp, #28]
 800350a:	9803      	ldr	r0, [sp, #12]
 800350c:	f003 fa3c 	bl	8006988 <__sprint_r>
 8003510:	2800      	cmp	r0, #0
 8003512:	f47f af45 	bne.w	80033a0 <_vfprintf_r+0xaf0>
 8003516:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003518:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800351c:	e406      	b.n	8002d2c <_vfprintf_r+0x47c>
 800351e:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003520:	2b00      	cmp	r3, #0
 8003522:	f340 8273 	ble.w	8003a0c <_vfprintf_r+0x115c>
 8003526:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 800352a:	4293      	cmp	r3, r2
 800352c:	bfa8      	it	ge
 800352e:	4613      	movge	r3, r2
 8003530:	2b00      	cmp	r3, #0
 8003532:	461d      	mov	r5, r3
 8003534:	dd0d      	ble.n	8003552 <_vfprintf_r+0xca2>
 8003536:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003538:	f8cb 7000 	str.w	r7, [fp]
 800353c:	3301      	adds	r3, #1
 800353e:	442c      	add	r4, r5
 8003540:	2b07      	cmp	r3, #7
 8003542:	942c      	str	r4, [sp, #176]	; 0xb0
 8003544:	f8cb 5004 	str.w	r5, [fp, #4]
 8003548:	932b      	str	r3, [sp, #172]	; 0xac
 800354a:	f300 82c1 	bgt.w	8003ad0 <_vfprintf_r+0x1220>
 800354e:	f10b 0b08 	add.w	fp, fp, #8
 8003552:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003554:	2d00      	cmp	r5, #0
 8003556:	bfa8      	it	ge
 8003558:	1b5b      	subge	r3, r3, r5
 800355a:	2b00      	cmp	r3, #0
 800355c:	461d      	mov	r5, r3
 800355e:	f340 8099 	ble.w	8003694 <_vfprintf_r+0xde4>
 8003562:	2d10      	cmp	r5, #16
 8003564:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003566:	4b2c      	ldr	r3, [pc, #176]	; (8003618 <_vfprintf_r+0xd68>)
 8003568:	f340 83db 	ble.w	8003d22 <_vfprintf_r+0x1472>
 800356c:	4618      	mov	r0, r3
 800356e:	4621      	mov	r1, r4
 8003570:	465b      	mov	r3, fp
 8003572:	2610      	movs	r6, #16
 8003574:	46bb      	mov	fp, r7
 8003576:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800357a:	9c07      	ldr	r4, [sp, #28]
 800357c:	4607      	mov	r7, r0
 800357e:	e004      	b.n	800358a <_vfprintf_r+0xcda>
 8003580:	3308      	adds	r3, #8
 8003582:	3d10      	subs	r5, #16
 8003584:	2d10      	cmp	r5, #16
 8003586:	f340 83c7 	ble.w	8003d18 <_vfprintf_r+0x1468>
 800358a:	3201      	adds	r2, #1
 800358c:	3110      	adds	r1, #16
 800358e:	2a07      	cmp	r2, #7
 8003590:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003594:	e9c3 7600 	strd	r7, r6, [r3]
 8003598:	ddf2      	ble.n	8003580 <_vfprintf_r+0xcd0>
 800359a:	aa2a      	add	r2, sp, #168	; 0xa8
 800359c:	4621      	mov	r1, r4
 800359e:	4648      	mov	r0, r9
 80035a0:	f003 f9f2 	bl	8006988 <__sprint_r>
 80035a4:	2800      	cmp	r0, #0
 80035a6:	f040 84a5 	bne.w	8003ef4 <_vfprintf_r+0x1644>
 80035aa:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 80035ae:	ab2d      	add	r3, sp, #180	; 0xb4
 80035b0:	e7e7      	b.n	8003582 <_vfprintf_r+0xcd2>
 80035b2:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80035b6:	af56      	add	r7, sp, #344	; 0x158
 80035b8:	f7ff bafb 	b.w	8002bb2 <_vfprintf_r+0x302>
 80035bc:	f1b9 0f00 	cmp.w	r9, #0
 80035c0:	f77f af4c 	ble.w	800345c <_vfprintf_r+0xbac>
 80035c4:	f1b9 0f10 	cmp.w	r9, #16
 80035c8:	4b13      	ldr	r3, [pc, #76]	; (8003618 <_vfprintf_r+0xd68>)
 80035ca:	f340 8659 	ble.w	8004280 <_vfprintf_r+0x19d0>
 80035ce:	4619      	mov	r1, r3
 80035d0:	4622      	mov	r2, r4
 80035d2:	4633      	mov	r3, r6
 80035d4:	2710      	movs	r7, #16
 80035d6:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80035da:	9c07      	ldr	r4, [sp, #28]
 80035dc:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80035de:	460e      	mov	r6, r1
 80035e0:	e007      	b.n	80035f2 <_vfprintf_r+0xd42>
 80035e2:	3308      	adds	r3, #8
 80035e4:	f1a9 0910 	sub.w	r9, r9, #16
 80035e8:	f1b9 0f10 	cmp.w	r9, #16
 80035ec:	f340 8353 	ble.w	8003c96 <_vfprintf_r+0x13e6>
 80035f0:	3501      	adds	r5, #1
 80035f2:	3210      	adds	r2, #16
 80035f4:	2d07      	cmp	r5, #7
 80035f6:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80035fa:	e9c3 6700 	strd	r6, r7, [r3]
 80035fe:	ddf0      	ble.n	80035e2 <_vfprintf_r+0xd32>
 8003600:	aa2a      	add	r2, sp, #168	; 0xa8
 8003602:	4621      	mov	r1, r4
 8003604:	4658      	mov	r0, fp
 8003606:	f003 f9bf 	bl	8006988 <__sprint_r>
 800360a:	2800      	cmp	r0, #0
 800360c:	f040 8472 	bne.w	8003ef4 <_vfprintf_r+0x1644>
 8003610:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8003614:	ab2d      	add	r3, sp, #180	; 0xb4
 8003616:	e7e5      	b.n	80035e4 <_vfprintf_r+0xd34>
 8003618:	08007088 	.word	0x08007088
 800361c:	f018 0f01 	tst.w	r8, #1
 8003620:	f47f aee0 	bne.w	80033e4 <_vfprintf_r+0xb34>
 8003624:	2201      	movs	r2, #1
 8003626:	2d07      	cmp	r5, #7
 8003628:	f8cb 7000 	str.w	r7, [fp]
 800362c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003630:	f8cb 2004 	str.w	r2, [fp, #4]
 8003634:	dc04      	bgt.n	8003640 <_vfprintf_r+0xd90>
 8003636:	3302      	adds	r3, #2
 8003638:	9309      	str	r3, [sp, #36]	; 0x24
 800363a:	f10b 0b10 	add.w	fp, fp, #16
 800363e:	e70d      	b.n	800345c <_vfprintf_r+0xbac>
 8003640:	aa2a      	add	r2, sp, #168	; 0xa8
 8003642:	9907      	ldr	r1, [sp, #28]
 8003644:	9803      	ldr	r0, [sp, #12]
 8003646:	f003 f99f 	bl	8006988 <__sprint_r>
 800364a:	2800      	cmp	r0, #0
 800364c:	f47f aea8 	bne.w	80033a0 <_vfprintf_r+0xaf0>
 8003650:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003654:	3301      	adds	r3, #1
 8003656:	9309      	str	r3, [sp, #36]	; 0x24
 8003658:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 800365c:	ae2d      	add	r6, sp, #180	; 0xb4
 800365e:	e6fd      	b.n	800345c <_vfprintf_r+0xbac>
 8003660:	aa2a      	add	r2, sp, #168	; 0xa8
 8003662:	9907      	ldr	r1, [sp, #28]
 8003664:	9803      	ldr	r0, [sp, #12]
 8003666:	f003 f98f 	bl	8006988 <__sprint_r>
 800366a:	2800      	cmp	r0, #0
 800366c:	f47f ae98 	bne.w	80033a0 <_vfprintf_r+0xaf0>
 8003670:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003674:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003676:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800367a:	f7ff baf6 	b.w	8002c6a <_vfprintf_r+0x3ba>
 800367e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003680:	9907      	ldr	r1, [sp, #28]
 8003682:	9803      	ldr	r0, [sp, #12]
 8003684:	f003 f980 	bl	8006988 <__sprint_r>
 8003688:	2800      	cmp	r0, #0
 800368a:	f47f ae89 	bne.w	80033a0 <_vfprintf_r+0xaf0>
 800368e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003690:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003694:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003696:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800369a:	443b      	add	r3, r7
 800369c:	4699      	mov	r9, r3
 800369e:	f040 8357 	bne.w	8003d50 <_vfprintf_r+0x14a0>
 80036a2:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80036a4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80036a6:	4293      	cmp	r3, r2
 80036a8:	db49      	blt.n	800373e <_vfprintf_r+0xe8e>
 80036aa:	f018 0f01 	tst.w	r8, #1
 80036ae:	d146      	bne.n	800373e <_vfprintf_r+0xe8e>
 80036b0:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80036b2:	18bd      	adds	r5, r7, r2
 80036b4:	eba5 0509 	sub.w	r5, r5, r9
 80036b8:	1ad3      	subs	r3, r2, r3
 80036ba:	429d      	cmp	r5, r3
 80036bc:	bfa8      	it	ge
 80036be:	461d      	movge	r5, r3
 80036c0:	2d00      	cmp	r5, #0
 80036c2:	dd0d      	ble.n	80036e0 <_vfprintf_r+0xe30>
 80036c4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80036c6:	f8cb 9000 	str.w	r9, [fp]
 80036ca:	3201      	adds	r2, #1
 80036cc:	442c      	add	r4, r5
 80036ce:	2a07      	cmp	r2, #7
 80036d0:	942c      	str	r4, [sp, #176]	; 0xb0
 80036d2:	f8cb 5004 	str.w	r5, [fp, #4]
 80036d6:	922b      	str	r2, [sp, #172]	; 0xac
 80036d8:	f300 8462 	bgt.w	8003fa0 <_vfprintf_r+0x16f0>
 80036dc:	f10b 0b08 	add.w	fp, fp, #8
 80036e0:	2d00      	cmp	r5, #0
 80036e2:	bfac      	ite	ge
 80036e4:	1b5d      	subge	r5, r3, r5
 80036e6:	461d      	movlt	r5, r3
 80036e8:	2d00      	cmp	r5, #0
 80036ea:	f77f ab32 	ble.w	8002d52 <_vfprintf_r+0x4a2>
 80036ee:	2d10      	cmp	r5, #16
 80036f0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80036f2:	4bc5      	ldr	r3, [pc, #788]	; (8003a08 <_vfprintf_r+0x1158>)
 80036f4:	f340 80c4 	ble.w	8003880 <_vfprintf_r+0xfd0>
 80036f8:	4619      	mov	r1, r3
 80036fa:	2610      	movs	r6, #16
 80036fc:	4623      	mov	r3, r4
 80036fe:	9f03      	ldr	r7, [sp, #12]
 8003700:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003704:	460c      	mov	r4, r1
 8003706:	e005      	b.n	8003714 <_vfprintf_r+0xe64>
 8003708:	f10b 0b08 	add.w	fp, fp, #8
 800370c:	3d10      	subs	r5, #16
 800370e:	2d10      	cmp	r5, #16
 8003710:	f340 80b3 	ble.w	800387a <_vfprintf_r+0xfca>
 8003714:	3201      	adds	r2, #1
 8003716:	3310      	adds	r3, #16
 8003718:	2a07      	cmp	r2, #7
 800371a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800371e:	e9cb 4600 	strd	r4, r6, [fp]
 8003722:	ddf1      	ble.n	8003708 <_vfprintf_r+0xe58>
 8003724:	aa2a      	add	r2, sp, #168	; 0xa8
 8003726:	4649      	mov	r1, r9
 8003728:	4638      	mov	r0, r7
 800372a:	f003 f92d 	bl	8006988 <__sprint_r>
 800372e:	2800      	cmp	r0, #0
 8003730:	f47f ae38 	bne.w	80033a4 <_vfprintf_r+0xaf4>
 8003734:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003738:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800373c:	e7e6      	b.n	800370c <_vfprintf_r+0xe5c>
 800373e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003740:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003742:	f8cb 1000 	str.w	r1, [fp]
 8003746:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003748:	f8cb 1004 	str.w	r1, [fp, #4]
 800374c:	3201      	adds	r2, #1
 800374e:	440c      	add	r4, r1
 8003750:	2a07      	cmp	r2, #7
 8003752:	942c      	str	r4, [sp, #176]	; 0xb0
 8003754:	922b      	str	r2, [sp, #172]	; 0xac
 8003756:	f300 828c 	bgt.w	8003c72 <_vfprintf_r+0x13c2>
 800375a:	f10b 0b08 	add.w	fp, fp, #8
 800375e:	e7a7      	b.n	80036b0 <_vfprintf_r+0xe00>
 8003760:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003764:	f002 fa94 	bl	8005c90 <__retarget_lock_release_recursive>
 8003768:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800376c:	e628      	b.n	80033c0 <_vfprintf_r+0xb10>
 800376e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003770:	9907      	ldr	r1, [sp, #28]
 8003772:	9803      	ldr	r0, [sp, #12]
 8003774:	f003 f908 	bl	8006988 <__sprint_r>
 8003778:	2800      	cmp	r0, #0
 800377a:	f47f ae11 	bne.w	80033a0 <_vfprintf_r+0xaf0>
 800377e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003782:	ae2d      	add	r6, sp, #180	; 0xb4
 8003784:	e638      	b.n	80033f8 <_vfprintf_r+0xb48>
 8003786:	aa2a      	add	r2, sp, #168	; 0xa8
 8003788:	9907      	ldr	r1, [sp, #28]
 800378a:	9803      	ldr	r0, [sp, #12]
 800378c:	f003 f8fc 	bl	8006988 <__sprint_r>
 8003790:	2800      	cmp	r0, #0
 8003792:	f47f ae05 	bne.w	80033a0 <_vfprintf_r+0xaf0>
 8003796:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800379a:	ae2d      	add	r6, sp, #180	; 0xb4
 800379c:	930b      	str	r3, [sp, #44]	; 0x2c
 800379e:	e638      	b.n	8003412 <_vfprintf_r+0xb62>
 80037a0:	6814      	ldr	r4, [r2, #0]
 80037a2:	9308      	str	r3, [sp, #32]
 80037a4:	2500      	movs	r5, #0
 80037a6:	f7ff bb95 	b.w	8002ed4 <_vfprintf_r+0x624>
 80037aa:	6814      	ldr	r4, [r2, #0]
 80037ac:	9308      	str	r3, [sp, #32]
 80037ae:	2500      	movs	r5, #0
 80037b0:	f7ff b9ae 	b.w	8002b10 <_vfprintf_r+0x260>
 80037b4:	680c      	ldr	r4, [r1, #0]
 80037b6:	9208      	str	r2, [sp, #32]
 80037b8:	17e5      	asrs	r5, r4, #31
 80037ba:	4620      	mov	r0, r4
 80037bc:	4629      	mov	r1, r5
 80037be:	f7ff b9d2 	b.w	8002b66 <_vfprintf_r+0x2b6>
 80037c2:	6814      	ldr	r4, [r2, #0]
 80037c4:	9108      	str	r1, [sp, #32]
 80037c6:	2201      	movs	r2, #1
 80037c8:	2500      	movs	r5, #0
 80037ca:	f7ff bb32 	b.w	8002e32 <_vfprintf_r+0x582>
 80037ce:	2a01      	cmp	r2, #1
 80037d0:	f47f ab3c 	bne.w	8002e4c <_vfprintf_r+0x59c>
 80037d4:	e68f      	b.n	80034f6 <_vfprintf_r+0xc46>
 80037d6:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 80037da:	2200      	movs	r2, #0
 80037dc:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80037e0:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80037e4:	af56      	add	r7, sp, #344	; 0x158
 80037e6:	4692      	mov	sl, r2
 80037e8:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 80037ec:	461e      	mov	r6, r3
 80037ee:	e00a      	b.n	8003806 <_vfprintf_r+0xf56>
 80037f0:	2300      	movs	r3, #0
 80037f2:	4620      	mov	r0, r4
 80037f4:	4629      	mov	r1, r5
 80037f6:	220a      	movs	r2, #10
 80037f8:	f7fc fd02 	bl	8000200 <__aeabi_uldivmod>
 80037fc:	4604      	mov	r4, r0
 80037fe:	460d      	mov	r5, r1
 8003800:	ea54 0305 	orrs.w	r3, r4, r5
 8003804:	d029      	beq.n	800385a <_vfprintf_r+0xfaa>
 8003806:	220a      	movs	r2, #10
 8003808:	2300      	movs	r3, #0
 800380a:	4620      	mov	r0, r4
 800380c:	4629      	mov	r1, r5
 800380e:	f7fc fcf7 	bl	8000200 <__aeabi_uldivmod>
 8003812:	3230      	adds	r2, #48	; 0x30
 8003814:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003818:	f10a 0a01 	add.w	sl, sl, #1
 800381c:	3f01      	subs	r7, #1
 800381e:	2e00      	cmp	r6, #0
 8003820:	d0e6      	beq.n	80037f0 <_vfprintf_r+0xf40>
 8003822:	f898 3000 	ldrb.w	r3, [r8]
 8003826:	459a      	cmp	sl, r3
 8003828:	d1e2      	bne.n	80037f0 <_vfprintf_r+0xf40>
 800382a:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 800382e:	d0df      	beq.n	80037f0 <_vfprintf_r+0xf40>
 8003830:	2d00      	cmp	r5, #0
 8003832:	bf08      	it	eq
 8003834:	2c0a      	cmpeq	r4, #10
 8003836:	d3db      	bcc.n	80037f0 <_vfprintf_r+0xf40>
 8003838:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 800383a:	9918      	ldr	r1, [sp, #96]	; 0x60
 800383c:	1aff      	subs	r7, r7, r3
 800383e:	461a      	mov	r2, r3
 8003840:	4638      	mov	r0, r7
 8003842:	f003 f833 	bl	80068ac <strncpy>
 8003846:	f898 3001 	ldrb.w	r3, [r8, #1]
 800384a:	2b00      	cmp	r3, #0
 800384c:	f000 8496 	beq.w	800417c <_vfprintf_r+0x18cc>
 8003850:	f108 0801 	add.w	r8, r8, #1
 8003854:	f04f 0a00 	mov.w	sl, #0
 8003858:	e7ca      	b.n	80037f0 <_vfprintf_r+0xf40>
 800385a:	9b04      	ldr	r3, [sp, #16]
 800385c:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003860:	1bdb      	subs	r3, r3, r7
 8003862:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003866:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003868:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 800386c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003870:	9309      	str	r3, [sp, #36]	; 0x24
 8003872:	f7ff b99e 	b.w	8002bb2 <_vfprintf_r+0x302>
 8003876:	46c1      	mov	r9, r8
 8003878:	e594      	b.n	80033a4 <_vfprintf_r+0xaf4>
 800387a:	4621      	mov	r1, r4
 800387c:	461c      	mov	r4, r3
 800387e:	460b      	mov	r3, r1
 8003880:	3201      	adds	r2, #1
 8003882:	442c      	add	r4, r5
 8003884:	2a07      	cmp	r2, #7
 8003886:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800388a:	e9cb 3500 	strd	r3, r5, [fp]
 800388e:	f77f aa5e 	ble.w	8002d4e <_vfprintf_r+0x49e>
 8003892:	e5ee      	b.n	8003472 <_vfprintf_r+0xbc2>
 8003894:	f018 0f10 	tst.w	r8, #16
 8003898:	f040 80f8 	bne.w	8003a8c <_vfprintf_r+0x11dc>
 800389c:	f018 0f40 	tst.w	r8, #64	; 0x40
 80038a0:	f000 8351 	beq.w	8003f46 <_vfprintf_r+0x1696>
 80038a4:	9a05      	ldr	r2, [sp, #20]
 80038a6:	801a      	strh	r2, [r3, #0]
 80038a8:	4657      	mov	r7, sl
 80038aa:	f7ff baa7 	b.w	8002dfc <_vfprintf_r+0x54c>
 80038ae:	aa2a      	add	r2, sp, #168	; 0xa8
 80038b0:	9907      	ldr	r1, [sp, #28]
 80038b2:	9803      	ldr	r0, [sp, #12]
 80038b4:	f003 f868 	bl	8006988 <__sprint_r>
 80038b8:	2800      	cmp	r0, #0
 80038ba:	f47f ad71 	bne.w	80033a0 <_vfprintf_r+0xaf0>
 80038be:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80038c0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80038c4:	f7ff b9f5 	b.w	8002cb2 <_vfprintf_r+0x402>
 80038c8:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80038cc:	4602      	mov	r2, r0
 80038ce:	460b      	mov	r3, r1
 80038d0:	f7fd fbcc 	bl	800106c <__aeabi_dcmpun>
 80038d4:	2800      	cmp	r0, #0
 80038d6:	f040 8491 	bne.w	80041fc <_vfprintf_r+0x194c>
 80038da:	2e61      	cmp	r6, #97	; 0x61
 80038dc:	f000 8111 	beq.w	8003b02 <_vfprintf_r+0x1252>
 80038e0:	2e41      	cmp	r6, #65	; 0x41
 80038e2:	f000 8377 	beq.w	8003fd4 <_vfprintf_r+0x1724>
 80038e6:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80038ea:	f026 0220 	bic.w	r2, r6, #32
 80038ee:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80038f2:	930e      	str	r3, [sp, #56]	; 0x38
 80038f4:	9204      	str	r2, [sp, #16]
 80038f6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80038f8:	f000 842d 	beq.w	8004156 <_vfprintf_r+0x18a6>
 80038fc:	2a47      	cmp	r2, #71	; 0x47
 80038fe:	f000 8424 	beq.w	800414a <_vfprintf_r+0x189a>
 8003902:	2b00      	cmp	r3, #0
 8003904:	f2c0 82f9 	blt.w	8003efa <_vfprintf_r+0x164a>
 8003908:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800390c:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003910:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003914:	2e66      	cmp	r6, #102	; 0x66
 8003916:	f000 83eb 	beq.w	80040f0 <_vfprintf_r+0x1840>
 800391a:	2e46      	cmp	r6, #70	; 0x46
 800391c:	f000 847e 	beq.w	800421c <_vfprintf_r+0x196c>
 8003920:	9b04      	ldr	r3, [sp, #16]
 8003922:	9803      	ldr	r0, [sp, #12]
 8003924:	2b45      	cmp	r3, #69	; 0x45
 8003926:	bf0c      	ite	eq
 8003928:	f109 0501 	addeq.w	r5, r9, #1
 800392c:	464d      	movne	r5, r9
 800392e:	aa28      	add	r2, sp, #160	; 0xa0
 8003930:	ab25      	add	r3, sp, #148	; 0x94
 8003932:	e9cd 3200 	strd	r3, r2, [sp]
 8003936:	2102      	movs	r1, #2
 8003938:	ab24      	add	r3, sp, #144	; 0x90
 800393a:	462a      	mov	r2, r5
 800393c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003940:	f000 fe3e 	bl	80045c0 <_dtoa_r>
 8003944:	2e67      	cmp	r6, #103	; 0x67
 8003946:	4607      	mov	r7, r0
 8003948:	f040 849c 	bne.w	8004284 <_vfprintf_r+0x19d4>
 800394c:	f018 0f01 	tst.w	r8, #1
 8003950:	f040 83f9 	bne.w	8004146 <_vfprintf_r+0x1896>
 8003954:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003956:	4640      	mov	r0, r8
 8003958:	1bdb      	subs	r3, r3, r7
 800395a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800395e:	9310      	str	r3, [sp, #64]	; 0x40
 8003960:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003962:	9311      	str	r3, [sp, #68]	; 0x44
 8003964:	9b04      	ldr	r3, [sp, #16]
 8003966:	2b47      	cmp	r3, #71	; 0x47
 8003968:	f000 81e7 	beq.w	8003d3a <_vfprintf_r+0x148a>
 800396c:	9b04      	ldr	r3, [sp, #16]
 800396e:	2b46      	cmp	r3, #70	; 0x46
 8003970:	f000 8300 	beq.w	8003f74 <_vfprintf_r+0x16c4>
 8003974:	9904      	ldr	r1, [sp, #16]
 8003976:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003978:	b2f2      	uxtb	r2, r6
 800397a:	2941      	cmp	r1, #65	; 0x41
 800397c:	bf08      	it	eq
 800397e:	320f      	addeq	r2, #15
 8003980:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003984:	bf06      	itte	eq
 8003986:	b2d2      	uxtbeq	r2, r2
 8003988:	2101      	moveq	r1, #1
 800398a:	2100      	movne	r1, #0
 800398c:	2b00      	cmp	r3, #0
 800398e:	9324      	str	r3, [sp, #144]	; 0x90
 8003990:	bfb8      	it	lt
 8003992:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003994:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003998:	bfba      	itte	lt
 800399a:	f1c3 0301 	rsblt	r3, r3, #1
 800399e:	222d      	movlt	r2, #45	; 0x2d
 80039a0:	222b      	movge	r2, #43	; 0x2b
 80039a2:	2b09      	cmp	r3, #9
 80039a4:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 80039a8:	f300 83f9 	bgt.w	800419e <_vfprintf_r+0x18ee>
 80039ac:	2900      	cmp	r1, #0
 80039ae:	f040 8487 	bne.w	80042c0 <_vfprintf_r+0x1a10>
 80039b2:	2230      	movs	r2, #48	; 0x30
 80039b4:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 80039b8:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 80039bc:	3330      	adds	r3, #48	; 0x30
 80039be:	7013      	strb	r3, [r2, #0]
 80039c0:	1c53      	adds	r3, r2, #1
 80039c2:	aa26      	add	r2, sp, #152	; 0x98
 80039c4:	1a9b      	subs	r3, r3, r2
 80039c6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80039c8:	9319      	str	r3, [sp, #100]	; 0x64
 80039ca:	2a01      	cmp	r2, #1
 80039cc:	4413      	add	r3, r2
 80039ce:	9309      	str	r3, [sp, #36]	; 0x24
 80039d0:	f340 8442 	ble.w	8004258 <_vfprintf_r+0x19a8>
 80039d4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80039d6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80039d8:	4413      	add	r3, r2
 80039da:	9309      	str	r3, [sp, #36]	; 0x24
 80039dc:	2300      	movs	r3, #0
 80039de:	930f      	str	r3, [sp, #60]	; 0x3c
 80039e0:	9314      	str	r3, [sp, #80]	; 0x50
 80039e2:	9311      	str	r3, [sp, #68]	; 0x44
 80039e4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80039e6:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 80039ea:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80039ee:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 80039f2:	9304      	str	r3, [sp, #16]
 80039f4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80039f6:	2b00      	cmp	r3, #0
 80039f8:	f040 8275 	bne.w	8003ee6 <_vfprintf_r+0x1636>
 80039fc:	4699      	mov	r9, r3
 80039fe:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003a02:	f7ff b8e2 	b.w	8002bca <_vfprintf_r+0x31a>
 8003a06:	bf00      	nop
 8003a08:	08007088 	.word	0x08007088
 8003a0c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003a0e:	49bd      	ldr	r1, [pc, #756]	; (8003d04 <_vfprintf_r+0x1454>)
 8003a10:	f8cb 1000 	str.w	r1, [fp]
 8003a14:	3201      	adds	r2, #1
 8003a16:	3401      	adds	r4, #1
 8003a18:	2101      	movs	r1, #1
 8003a1a:	2a07      	cmp	r2, #7
 8003a1c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003a20:	f8cb 1004 	str.w	r1, [fp, #4]
 8003a24:	dc60      	bgt.n	8003ae8 <_vfprintf_r+0x1238>
 8003a26:	f10b 0b08 	add.w	fp, fp, #8
 8003a2a:	b92b      	cbnz	r3, 8003a38 <_vfprintf_r+0x1188>
 8003a2c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003a2e:	b91a      	cbnz	r2, 8003a38 <_vfprintf_r+0x1188>
 8003a30:	f018 0f01 	tst.w	r8, #1
 8003a34:	f43f a98d 	beq.w	8002d52 <_vfprintf_r+0x4a2>
 8003a38:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003a3a:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003a3c:	f8cb 1000 	str.w	r1, [fp]
 8003a40:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003a42:	f8cb 1004 	str.w	r1, [fp, #4]
 8003a46:	3201      	adds	r2, #1
 8003a48:	440c      	add	r4, r1
 8003a4a:	2a07      	cmp	r2, #7
 8003a4c:	942c      	str	r4, [sp, #176]	; 0xb0
 8003a4e:	922b      	str	r2, [sp, #172]	; 0xac
 8003a50:	f300 8282 	bgt.w	8003f58 <_vfprintf_r+0x16a8>
 8003a54:	f10b 0b08 	add.w	fp, fp, #8
 8003a58:	2b00      	cmp	r3, #0
 8003a5a:	f2c0 82e7 	blt.w	800402c <_vfprintf_r+0x177c>
 8003a5e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a60:	3201      	adds	r2, #1
 8003a62:	441c      	add	r4, r3
 8003a64:	2a07      	cmp	r2, #7
 8003a66:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003a6a:	e9cb 7300 	strd	r7, r3, [fp]
 8003a6e:	f77f a96e 	ble.w	8002d4e <_vfprintf_r+0x49e>
 8003a72:	e4fe      	b.n	8003472 <_vfprintf_r+0xbc2>
 8003a74:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a76:	9907      	ldr	r1, [sp, #28]
 8003a78:	9803      	ldr	r0, [sp, #12]
 8003a7a:	f002 ff85 	bl	8006988 <__sprint_r>
 8003a7e:	2800      	cmp	r0, #0
 8003a80:	f47f ac8e 	bne.w	80033a0 <_vfprintf_r+0xaf0>
 8003a84:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a88:	f7ff bbf0 	b.w	800326c <_vfprintf_r+0x9bc>
 8003a8c:	9a05      	ldr	r2, [sp, #20]
 8003a8e:	601a      	str	r2, [r3, #0]
 8003a90:	4657      	mov	r7, sl
 8003a92:	f7ff b9b3 	b.w	8002dfc <_vfprintf_r+0x54c>
 8003a96:	8814      	ldrh	r4, [r2, #0]
 8003a98:	9108      	str	r1, [sp, #32]
 8003a9a:	2500      	movs	r5, #0
 8003a9c:	2201      	movs	r2, #1
 8003a9e:	f7ff b9c8 	b.w	8002e32 <_vfprintf_r+0x582>
 8003aa2:	8814      	ldrh	r4, [r2, #0]
 8003aa4:	9308      	str	r3, [sp, #32]
 8003aa6:	2500      	movs	r5, #0
 8003aa8:	f7ff ba14 	b.w	8002ed4 <_vfprintf_r+0x624>
 8003aac:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003ab0:	9208      	str	r2, [sp, #32]
 8003ab2:	17e5      	asrs	r5, r4, #31
 8003ab4:	4620      	mov	r0, r4
 8003ab6:	4629      	mov	r1, r5
 8003ab8:	f7ff b855 	b.w	8002b66 <_vfprintf_r+0x2b6>
 8003abc:	8814      	ldrh	r4, [r2, #0]
 8003abe:	9308      	str	r3, [sp, #32]
 8003ac0:	2500      	movs	r5, #0
 8003ac2:	f7ff b825 	b.w	8002b10 <_vfprintf_r+0x260>
 8003ac6:	222d      	movs	r2, #45	; 0x2d
 8003ac8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003acc:	f7ff baa2 	b.w	8003014 <_vfprintf_r+0x764>
 8003ad0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ad2:	9907      	ldr	r1, [sp, #28]
 8003ad4:	9803      	ldr	r0, [sp, #12]
 8003ad6:	f002 ff57 	bl	8006988 <__sprint_r>
 8003ada:	2800      	cmp	r0, #0
 8003adc:	f47f ac60 	bne.w	80033a0 <_vfprintf_r+0xaf0>
 8003ae0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003ae2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ae6:	e534      	b.n	8003552 <_vfprintf_r+0xca2>
 8003ae8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003aea:	9907      	ldr	r1, [sp, #28]
 8003aec:	9803      	ldr	r0, [sp, #12]
 8003aee:	f002 ff4b 	bl	8006988 <__sprint_r>
 8003af2:	2800      	cmp	r0, #0
 8003af4:	f47f ac54 	bne.w	80033a0 <_vfprintf_r+0xaf0>
 8003af8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003afa:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003afc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b00:	e793      	b.n	8003a2a <_vfprintf_r+0x117a>
 8003b02:	2330      	movs	r3, #48	; 0x30
 8003b04:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003b08:	2378      	movs	r3, #120	; 0x78
 8003b0a:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003b0e:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003b12:	f048 0402 	orr.w	r4, r8, #2
 8003b16:	f300 82b0 	bgt.w	800407a <_vfprintf_r+0x17ca>
 8003b1a:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003b1e:	930e      	str	r3, [sp, #56]	; 0x38
 8003b20:	f026 0320 	bic.w	r3, r6, #32
 8003b24:	9304      	str	r3, [sp, #16]
 8003b26:	2200      	movs	r2, #0
 8003b28:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003b2a:	920a      	str	r2, [sp, #40]	; 0x28
 8003b2c:	46a0      	mov	r8, r4
 8003b2e:	af3d      	add	r7, sp, #244	; 0xf4
 8003b30:	2b00      	cmp	r3, #0
 8003b32:	f2c0 81e3 	blt.w	8003efc <_vfprintf_r+0x164c>
 8003b36:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003b3a:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003b3e:	2300      	movs	r3, #0
 8003b40:	930b      	str	r3, [sp, #44]	; 0x2c
 8003b42:	2e61      	cmp	r6, #97	; 0x61
 8003b44:	f000 8255 	beq.w	8003ff2 <_vfprintf_r+0x1742>
 8003b48:	2e41      	cmp	r6, #65	; 0x41
 8003b4a:	f47f aee3 	bne.w	8003914 <_vfprintf_r+0x1064>
 8003b4e:	a824      	add	r0, sp, #144	; 0x90
 8003b50:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003b54:	f002 fe32 	bl	80067bc <frexp>
 8003b58:	2200      	movs	r2, #0
 8003b5a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003b5e:	ec51 0b10 	vmov	r0, r1, d0
 8003b62:	f7fc ffe9 	bl	8000b38 <__aeabi_dmul>
 8003b66:	2200      	movs	r2, #0
 8003b68:	2300      	movs	r3, #0
 8003b6a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003b6e:	f7fd fa4b 	bl	8001008 <__aeabi_dcmpeq>
 8003b72:	2800      	cmp	r0, #0
 8003b74:	f040 8305 	bne.w	8004182 <_vfprintf_r+0x18d2>
 8003b78:	4b63      	ldr	r3, [pc, #396]	; (8003d08 <_vfprintf_r+0x1458>)
 8003b7a:	9309      	str	r3, [sp, #36]	; 0x24
 8003b7c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003b80:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003b84:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003b88:	9721      	str	r7, [sp, #132]	; 0x84
 8003b8a:	46b9      	mov	r9, r7
 8003b8c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003b90:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003b94:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003b98:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003b9c:	e003      	b.n	8003ba6 <_vfprintf_r+0x12f6>
 8003b9e:	f7fd fa33 	bl	8001008 <__aeabi_dcmpeq>
 8003ba2:	bb20      	cbnz	r0, 8003bee <_vfprintf_r+0x133e>
 8003ba4:	46a9      	mov	r9, r5
 8003ba6:	2200      	movs	r2, #0
 8003ba8:	4b58      	ldr	r3, [pc, #352]	; (8003d0c <_vfprintf_r+0x145c>)
 8003baa:	4630      	mov	r0, r6
 8003bac:	4639      	mov	r1, r7
 8003bae:	f7fc ffc3 	bl	8000b38 <__aeabi_dmul>
 8003bb2:	460f      	mov	r7, r1
 8003bb4:	4606      	mov	r6, r0
 8003bb6:	f7fd fa6f 	bl	8001098 <__aeabi_d2iz>
 8003bba:	4680      	mov	r8, r0
 8003bbc:	f7fc ff52 	bl	8000a64 <__aeabi_i2d>
 8003bc0:	4602      	mov	r2, r0
 8003bc2:	460b      	mov	r3, r1
 8003bc4:	4630      	mov	r0, r6
 8003bc6:	4639      	mov	r1, r7
 8003bc8:	f7fc fdfe 	bl	80007c8 <__aeabi_dsub>
 8003bcc:	464d      	mov	r5, r9
 8003bce:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003bd2:	f805 cb01 	strb.w	ip, [r5], #1
 8003bd6:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003bda:	46a3      	mov	fp, r4
 8003bdc:	4606      	mov	r6, r0
 8003bde:	460f      	mov	r7, r1
 8003be0:	f04f 0200 	mov.w	r2, #0
 8003be4:	f04f 0300 	mov.w	r3, #0
 8003be8:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003bec:	d1d7      	bne.n	8003b9e <_vfprintf_r+0x12ee>
 8003bee:	4630      	mov	r0, r6
 8003bf0:	4639      	mov	r1, r7
 8003bf2:	2200      	movs	r2, #0
 8003bf4:	4b46      	ldr	r3, [pc, #280]	; (8003d10 <_vfprintf_r+0x1460>)
 8003bf6:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003bfa:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003bfc:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003c00:	4644      	mov	r4, r8
 8003c02:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003c06:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003c0a:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003c0e:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003c12:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003c14:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003c18:	f7fd fa1e 	bl	8001058 <__aeabi_dcmpgt>
 8003c1c:	2800      	cmp	r0, #0
 8003c1e:	f040 8176 	bne.w	8003f0e <_vfprintf_r+0x165e>
 8003c22:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003c26:	2200      	movs	r2, #0
 8003c28:	4b39      	ldr	r3, [pc, #228]	; (8003d10 <_vfprintf_r+0x1460>)
 8003c2a:	f7fd f9ed 	bl	8001008 <__aeabi_dcmpeq>
 8003c2e:	b110      	cbz	r0, 8003c36 <_vfprintf_r+0x1386>
 8003c30:	07e2      	lsls	r2, r4, #31
 8003c32:	f100 816c 	bmi.w	8003f0e <_vfprintf_r+0x165e>
 8003c36:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003c38:	2b00      	cmp	r3, #0
 8003c3a:	db07      	blt.n	8003c4c <_vfprintf_r+0x139c>
 8003c3c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003c3e:	3301      	adds	r3, #1
 8003c40:	442b      	add	r3, r5
 8003c42:	2230      	movs	r2, #48	; 0x30
 8003c44:	f805 2b01 	strb.w	r2, [r5], #1
 8003c48:	42ab      	cmp	r3, r5
 8003c4a:	d1fb      	bne.n	8003c44 <_vfprintf_r+0x1394>
 8003c4c:	1beb      	subs	r3, r5, r7
 8003c4e:	4640      	mov	r0, r8
 8003c50:	9310      	str	r3, [sp, #64]	; 0x40
 8003c52:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003c56:	e683      	b.n	8003960 <_vfprintf_r+0x10b0>
 8003c58:	f8cd 9010 	str.w	r9, [sp, #16]
 8003c5c:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003c60:	9408      	str	r4, [sp, #32]
 8003c62:	4681      	mov	r9, r0
 8003c64:	900f      	str	r0, [sp, #60]	; 0x3c
 8003c66:	9014      	str	r0, [sp, #80]	; 0x50
 8003c68:	9011      	str	r0, [sp, #68]	; 0x44
 8003c6a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003c6e:	f7fe bfac 	b.w	8002bca <_vfprintf_r+0x31a>
 8003c72:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c74:	9907      	ldr	r1, [sp, #28]
 8003c76:	9803      	ldr	r0, [sp, #12]
 8003c78:	f002 fe86 	bl	8006988 <__sprint_r>
 8003c7c:	2800      	cmp	r0, #0
 8003c7e:	f47f ab8f 	bne.w	80033a0 <_vfprintf_r+0xaf0>
 8003c82:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003c84:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c86:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c8a:	e511      	b.n	80036b0 <_vfprintf_r+0xe00>
 8003c8c:	4252      	negs	r2, r2
 8003c8e:	9206      	str	r2, [sp, #24]
 8003c90:	9308      	str	r3, [sp, #32]
 8003c92:	f7ff b96d 	b.w	8002f70 <_vfprintf_r+0x6c0>
 8003c96:	4614      	mov	r4, r2
 8003c98:	4632      	mov	r2, r6
 8003c9a:	461e      	mov	r6, r3
 8003c9c:	4613      	mov	r3, r2
 8003c9e:	462a      	mov	r2, r5
 8003ca0:	3201      	adds	r2, #1
 8003ca2:	9209      	str	r2, [sp, #36]	; 0x24
 8003ca4:	f106 0208 	add.w	r2, r6, #8
 8003ca8:	e9c6 3900 	strd	r3, r9, [r6]
 8003cac:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003cae:	932b      	str	r3, [sp, #172]	; 0xac
 8003cb0:	444c      	add	r4, r9
 8003cb2:	2b07      	cmp	r3, #7
 8003cb4:	942c      	str	r4, [sp, #176]	; 0xb0
 8003cb6:	f73f acc3 	bgt.w	8003640 <_vfprintf_r+0xd90>
 8003cba:	3301      	adds	r3, #1
 8003cbc:	9309      	str	r3, [sp, #36]	; 0x24
 8003cbe:	f102 0b08 	add.w	fp, r2, #8
 8003cc2:	4616      	mov	r6, r2
 8003cc4:	f7ff bbca 	b.w	800345c <_vfprintf_r+0xbac>
 8003cc8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cca:	9907      	ldr	r1, [sp, #28]
 8003ccc:	9803      	ldr	r0, [sp, #12]
 8003cce:	f002 fe5b 	bl	8006988 <__sprint_r>
 8003cd2:	2800      	cmp	r0, #0
 8003cd4:	f47f ab64 	bne.w	80033a0 <_vfprintf_r+0xaf0>
 8003cd8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003cda:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003cde:	f7ff bade 	b.w	800329e <_vfprintf_r+0x9ee>
 8003ce2:	464b      	mov	r3, r9
 8003ce4:	2b06      	cmp	r3, #6
 8003ce6:	bf28      	it	cs
 8003ce8:	2306      	movcs	r3, #6
 8003cea:	46b9      	mov	r9, r7
 8003cec:	970f      	str	r7, [sp, #60]	; 0x3c
 8003cee:	9714      	str	r7, [sp, #80]	; 0x50
 8003cf0:	9711      	str	r7, [sp, #68]	; 0x44
 8003cf2:	970a      	str	r7, [sp, #40]	; 0x28
 8003cf4:	463a      	mov	r2, r7
 8003cf6:	9304      	str	r3, [sp, #16]
 8003cf8:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003cfc:	4f05      	ldr	r7, [pc, #20]	; (8003d14 <_vfprintf_r+0x1464>)
 8003cfe:	f7fe bf64 	b.w	8002bca <_vfprintf_r+0x31a>
 8003d02:	bf00      	nop
 8003d04:	08007074 	.word	0x08007074
 8003d08:	08007058 	.word	0x08007058
 8003d0c:	40300000 	.word	0x40300000
 8003d10:	3fe00000 	.word	0x3fe00000
 8003d14:	0800706c 	.word	0x0800706c
 8003d18:	460c      	mov	r4, r1
 8003d1a:	4639      	mov	r1, r7
 8003d1c:	465f      	mov	r7, fp
 8003d1e:	469b      	mov	fp, r3
 8003d20:	460b      	mov	r3, r1
 8003d22:	3201      	adds	r2, #1
 8003d24:	442c      	add	r4, r5
 8003d26:	2a07      	cmp	r2, #7
 8003d28:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003d2c:	e9cb 3500 	strd	r3, r5, [fp]
 8003d30:	f73f aca5 	bgt.w	800367e <_vfprintf_r+0xdce>
 8003d34:	f10b 0b08 	add.w	fp, fp, #8
 8003d38:	e4ac      	b.n	8003694 <_vfprintf_r+0xde4>
 8003d3a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d3c:	1cda      	adds	r2, r3, #3
 8003d3e:	db02      	blt.n	8003d46 <_vfprintf_r+0x1496>
 8003d40:	4599      	cmp	r9, r3
 8003d42:	f280 80b5 	bge.w	8003eb0 <_vfprintf_r+0x1600>
 8003d46:	3e02      	subs	r6, #2
 8003d48:	f026 0320 	bic.w	r3, r6, #32
 8003d4c:	9304      	str	r3, [sp, #16]
 8003d4e:	e611      	b.n	8003974 <_vfprintf_r+0x10c4>
 8003d50:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003d52:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003d56:	465a      	mov	r2, fp
 8003d58:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003d5c:	18fb      	adds	r3, r7, r3
 8003d5e:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003d62:	970c      	str	r7, [sp, #48]	; 0x30
 8003d64:	4eaf      	ldr	r6, [pc, #700]	; (8004024 <_vfprintf_r+0x1774>)
 8003d66:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003d6a:	9309      	str	r3, [sp, #36]	; 0x24
 8003d6c:	464f      	mov	r7, r9
 8003d6e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003d72:	4621      	mov	r1, r4
 8003d74:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003d76:	2b00      	cmp	r3, #0
 8003d78:	d05b      	beq.n	8003e32 <_vfprintf_r+0x1582>
 8003d7a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003d7c:	2b00      	cmp	r3, #0
 8003d7e:	d154      	bne.n	8003e2a <_vfprintf_r+0x157a>
 8003d80:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003d82:	3b01      	subs	r3, #1
 8003d84:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003d88:	9314      	str	r3, [sp, #80]	; 0x50
 8003d8a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003d8c:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003d8e:	6010      	str	r0, [r2, #0]
 8003d90:	3301      	adds	r3, #1
 8003d92:	4459      	add	r1, fp
 8003d94:	2b07      	cmp	r3, #7
 8003d96:	912c      	str	r1, [sp, #176]	; 0xb0
 8003d98:	f8c2 b004 	str.w	fp, [r2, #4]
 8003d9c:	932b      	str	r3, [sp, #172]	; 0xac
 8003d9e:	dc68      	bgt.n	8003e72 <_vfprintf_r+0x15c2>
 8003da0:	3208      	adds	r2, #8
 8003da2:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003da4:	f898 3000 	ldrb.w	r3, [r8]
 8003da8:	1bc5      	subs	r5, r0, r7
 8003daa:	429d      	cmp	r5, r3
 8003dac:	bfa8      	it	ge
 8003dae:	461d      	movge	r5, r3
 8003db0:	2d00      	cmp	r5, #0
 8003db2:	dd0b      	ble.n	8003dcc <_vfprintf_r+0x151c>
 8003db4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003db6:	6017      	str	r7, [r2, #0]
 8003db8:	3301      	adds	r3, #1
 8003dba:	4429      	add	r1, r5
 8003dbc:	2b07      	cmp	r3, #7
 8003dbe:	912c      	str	r1, [sp, #176]	; 0xb0
 8003dc0:	6055      	str	r5, [r2, #4]
 8003dc2:	932b      	str	r3, [sp, #172]	; 0xac
 8003dc4:	dc5e      	bgt.n	8003e84 <_vfprintf_r+0x15d4>
 8003dc6:	f898 3000 	ldrb.w	r3, [r8]
 8003dca:	3208      	adds	r2, #8
 8003dcc:	2d00      	cmp	r5, #0
 8003dce:	bfac      	ite	ge
 8003dd0:	1b5d      	subge	r5, r3, r5
 8003dd2:	461d      	movlt	r5, r3
 8003dd4:	2d00      	cmp	r5, #0
 8003dd6:	dd26      	ble.n	8003e26 <_vfprintf_r+0x1576>
 8003dd8:	2d10      	cmp	r5, #16
 8003dda:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003ddc:	dd3c      	ble.n	8003e58 <_vfprintf_r+0x15a8>
 8003dde:	2410      	movs	r4, #16
 8003de0:	e003      	b.n	8003dea <_vfprintf_r+0x153a>
 8003de2:	3208      	adds	r2, #8
 8003de4:	3d10      	subs	r5, #16
 8003de6:	2d10      	cmp	r5, #16
 8003de8:	dd36      	ble.n	8003e58 <_vfprintf_r+0x15a8>
 8003dea:	3001      	adds	r0, #1
 8003dec:	3110      	adds	r1, #16
 8003dee:	2807      	cmp	r0, #7
 8003df0:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003df4:	e9c2 6400 	strd	r6, r4, [r2]
 8003df8:	ddf3      	ble.n	8003de2 <_vfprintf_r+0x1532>
 8003dfa:	aa2a      	add	r2, sp, #168	; 0xa8
 8003dfc:	4651      	mov	r1, sl
 8003dfe:	4648      	mov	r0, r9
 8003e00:	f002 fdc2 	bl	8006988 <__sprint_r>
 8003e04:	2800      	cmp	r0, #0
 8003e06:	d150      	bne.n	8003eaa <_vfprintf_r+0x15fa>
 8003e08:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003e0c:	aa2d      	add	r2, sp, #180	; 0xb4
 8003e0e:	e7e9      	b.n	8003de4 <_vfprintf_r+0x1534>
 8003e10:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e12:	4651      	mov	r1, sl
 8003e14:	4648      	mov	r0, r9
 8003e16:	f002 fdb7 	bl	8006988 <__sprint_r>
 8003e1a:	2800      	cmp	r0, #0
 8003e1c:	d145      	bne.n	8003eaa <_vfprintf_r+0x15fa>
 8003e1e:	f898 3000 	ldrb.w	r3, [r8]
 8003e22:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003e24:	aa2d      	add	r2, sp, #180	; 0xb4
 8003e26:	441f      	add	r7, r3
 8003e28:	e7a4      	b.n	8003d74 <_vfprintf_r+0x14c4>
 8003e2a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003e2c:	3b01      	subs	r3, #1
 8003e2e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003e30:	e7ab      	b.n	8003d8a <_vfprintf_r+0x14da>
 8003e32:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003e34:	2b00      	cmp	r3, #0
 8003e36:	d1f8      	bne.n	8003e2a <_vfprintf_r+0x157a>
 8003e38:	46b9      	mov	r9, r7
 8003e3a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003e3c:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003e3e:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003e42:	18fb      	adds	r3, r7, r3
 8003e44:	4599      	cmp	r9, r3
 8003e46:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003e4a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003e4e:	4693      	mov	fp, r2
 8003e50:	460c      	mov	r4, r1
 8003e52:	bf28      	it	cs
 8003e54:	4699      	movcs	r9, r3
 8003e56:	e424      	b.n	80036a2 <_vfprintf_r+0xdf2>
 8003e58:	3001      	adds	r0, #1
 8003e5a:	4429      	add	r1, r5
 8003e5c:	2807      	cmp	r0, #7
 8003e5e:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003e62:	e9c2 6500 	strd	r6, r5, [r2]
 8003e66:	dcd3      	bgt.n	8003e10 <_vfprintf_r+0x1560>
 8003e68:	f898 3000 	ldrb.w	r3, [r8]
 8003e6c:	3208      	adds	r2, #8
 8003e6e:	441f      	add	r7, r3
 8003e70:	e780      	b.n	8003d74 <_vfprintf_r+0x14c4>
 8003e72:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e74:	4651      	mov	r1, sl
 8003e76:	4648      	mov	r0, r9
 8003e78:	f002 fd86 	bl	8006988 <__sprint_r>
 8003e7c:	b9a8      	cbnz	r0, 8003eaa <_vfprintf_r+0x15fa>
 8003e7e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003e80:	aa2d      	add	r2, sp, #180	; 0xb4
 8003e82:	e78e      	b.n	8003da2 <_vfprintf_r+0x14f2>
 8003e84:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e86:	4651      	mov	r1, sl
 8003e88:	4648      	mov	r0, r9
 8003e8a:	f002 fd7d 	bl	8006988 <__sprint_r>
 8003e8e:	b960      	cbnz	r0, 8003eaa <_vfprintf_r+0x15fa>
 8003e90:	f898 3000 	ldrb.w	r3, [r8]
 8003e94:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003e96:	aa2d      	add	r2, sp, #180	; 0xb4
 8003e98:	e798      	b.n	8003dcc <_vfprintf_r+0x151c>
 8003e9a:	4638      	mov	r0, r7
 8003e9c:	f7fc fbd0 	bl	8000640 <strlen>
 8003ea0:	46a9      	mov	r9, r5
 8003ea2:	4603      	mov	r3, r0
 8003ea4:	9009      	str	r0, [sp, #36]	; 0x24
 8003ea6:	f7ff b8f4 	b.w	8003092 <_vfprintf_r+0x7e2>
 8003eaa:	46d1      	mov	r9, sl
 8003eac:	f7ff ba7a 	b.w	80033a4 <_vfprintf_r+0xaf4>
 8003eb0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003eb2:	4619      	mov	r1, r3
 8003eb4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003eb6:	4299      	cmp	r1, r3
 8003eb8:	f300 8082 	bgt.w	8003fc0 <_vfprintf_r+0x1710>
 8003ebc:	07c4      	lsls	r4, r0, #31
 8003ebe:	f140 816b 	bpl.w	8004198 <_vfprintf_r+0x18e8>
 8003ec2:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003ec4:	4413      	add	r3, r2
 8003ec6:	9309      	str	r3, [sp, #36]	; 0x24
 8003ec8:	0541      	lsls	r1, r0, #21
 8003eca:	d503      	bpl.n	8003ed4 <_vfprintf_r+0x1624>
 8003ecc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ece:	2b00      	cmp	r3, #0
 8003ed0:	f300 80e6 	bgt.w	80040a0 <_vfprintf_r+0x17f0>
 8003ed4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003ed6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003eda:	9304      	str	r3, [sp, #16]
 8003edc:	2667      	movs	r6, #103	; 0x67
 8003ede:	2300      	movs	r3, #0
 8003ee0:	930f      	str	r3, [sp, #60]	; 0x3c
 8003ee2:	9314      	str	r3, [sp, #80]	; 0x50
 8003ee4:	e586      	b.n	80039f4 <_vfprintf_r+0x1144>
 8003ee6:	222d      	movs	r2, #45	; 0x2d
 8003ee8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003eec:	f04f 0900 	mov.w	r9, #0
 8003ef0:	f7fe be6c 	b.w	8002bcc <_vfprintf_r+0x31c>
 8003ef4:	46a1      	mov	r9, r4
 8003ef6:	f7ff ba55 	b.w	80033a4 <_vfprintf_r+0xaf4>
 8003efa:	900a      	str	r0, [sp, #40]	; 0x28
 8003efc:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003f00:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003f04:	931f      	str	r3, [sp, #124]	; 0x7c
 8003f06:	232d      	movs	r3, #45	; 0x2d
 8003f08:	911e      	str	r1, [sp, #120]	; 0x78
 8003f0a:	930b      	str	r3, [sp, #44]	; 0x2c
 8003f0c:	e619      	b.n	8003b42 <_vfprintf_r+0x1292>
 8003f0e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003f10:	9328      	str	r3, [sp, #160]	; 0xa0
 8003f12:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003f14:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003f18:	7bd9      	ldrb	r1, [r3, #15]
 8003f1a:	4291      	cmp	r1, r2
 8003f1c:	462b      	mov	r3, r5
 8003f1e:	d109      	bne.n	8003f34 <_vfprintf_r+0x1684>
 8003f20:	2030      	movs	r0, #48	; 0x30
 8003f22:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003f26:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003f28:	1e5a      	subs	r2, r3, #1
 8003f2a:	9228      	str	r2, [sp, #160]	; 0xa0
 8003f2c:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003f30:	4291      	cmp	r1, r2
 8003f32:	d0f6      	beq.n	8003f22 <_vfprintf_r+0x1672>
 8003f34:	2a39      	cmp	r2, #57	; 0x39
 8003f36:	bf0b      	itete	eq
 8003f38:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003f3a:	3201      	addne	r2, #1
 8003f3c:	7a92      	ldrbeq	r2, [r2, #10]
 8003f3e:	b2d2      	uxtbne	r2, r2
 8003f40:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003f44:	e682      	b.n	8003c4c <_vfprintf_r+0x139c>
 8003f46:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003f4a:	f43f ad9f 	beq.w	8003a8c <_vfprintf_r+0x11dc>
 8003f4e:	9a05      	ldr	r2, [sp, #20]
 8003f50:	701a      	strb	r2, [r3, #0]
 8003f52:	4657      	mov	r7, sl
 8003f54:	f7fe bf52 	b.w	8002dfc <_vfprintf_r+0x54c>
 8003f58:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f5a:	9907      	ldr	r1, [sp, #28]
 8003f5c:	9803      	ldr	r0, [sp, #12]
 8003f5e:	f002 fd13 	bl	8006988 <__sprint_r>
 8003f62:	2800      	cmp	r0, #0
 8003f64:	f47f aa1c 	bne.w	80033a0 <_vfprintf_r+0xaf0>
 8003f68:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003f6a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003f6e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f72:	e571      	b.n	8003a58 <_vfprintf_r+0x11a8>
 8003f74:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003f76:	2b00      	cmp	r3, #0
 8003f78:	f340 8164 	ble.w	8004244 <_vfprintf_r+0x1994>
 8003f7c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003f7e:	f1b9 0f00 	cmp.w	r9, #0
 8003f82:	f040 8103 	bne.w	800418c <_vfprintf_r+0x18dc>
 8003f86:	07c6      	lsls	r6, r0, #31
 8003f88:	f100 8100 	bmi.w	800418c <_vfprintf_r+0x18dc>
 8003f8c:	9309      	str	r3, [sp, #36]	; 0x24
 8003f8e:	2666      	movs	r6, #102	; 0x66
 8003f90:	0543      	lsls	r3, r0, #21
 8003f92:	f100 8086 	bmi.w	80040a2 <_vfprintf_r+0x17f2>
 8003f96:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003f98:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003f9c:	9304      	str	r3, [sp, #16]
 8003f9e:	e79e      	b.n	8003ede <_vfprintf_r+0x162e>
 8003fa0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fa2:	9907      	ldr	r1, [sp, #28]
 8003fa4:	9803      	ldr	r0, [sp, #12]
 8003fa6:	f002 fcef 	bl	8006988 <__sprint_r>
 8003faa:	2800      	cmp	r0, #0
 8003fac:	f47f a9f8 	bne.w	80033a0 <_vfprintf_r+0xaf0>
 8003fb0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003fb2:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003fb4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003fb6:	1ad3      	subs	r3, r2, r3
 8003fb8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003fbc:	f7ff bb90 	b.w	80036e0 <_vfprintf_r+0xe30>
 8003fc0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003fc2:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003fc4:	4413      	add	r3, r2
 8003fc6:	9309      	str	r3, [sp, #36]	; 0x24
 8003fc8:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003fca:	2b00      	cmp	r3, #0
 8003fcc:	f340 8149 	ble.w	8004262 <_vfprintf_r+0x19b2>
 8003fd0:	2667      	movs	r6, #103	; 0x67
 8003fd2:	e7dd      	b.n	8003f90 <_vfprintf_r+0x16e0>
 8003fd4:	2330      	movs	r3, #48	; 0x30
 8003fd6:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003fda:	2358      	movs	r3, #88	; 0x58
 8003fdc:	e595      	b.n	8003b0a <_vfprintf_r+0x125a>
 8003fde:	9803      	ldr	r0, [sp, #12]
 8003fe0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fe2:	4649      	mov	r1, r9
 8003fe4:	f002 fcd0 	bl	8006988 <__sprint_r>
 8003fe8:	2800      	cmp	r0, #0
 8003fea:	f47f a9e0 	bne.w	80033ae <_vfprintf_r+0xafe>
 8003fee:	f7fe bf0f 	b.w	8002e10 <_vfprintf_r+0x560>
 8003ff2:	a824      	add	r0, sp, #144	; 0x90
 8003ff4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003ff8:	f002 fbe0 	bl	80067bc <frexp>
 8003ffc:	2200      	movs	r2, #0
 8003ffe:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8004002:	ec51 0b10 	vmov	r0, r1, d0
 8004006:	f7fc fd97 	bl	8000b38 <__aeabi_dmul>
 800400a:	2200      	movs	r2, #0
 800400c:	2300      	movs	r3, #0
 800400e:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8004012:	f7fc fff9 	bl	8001008 <__aeabi_dcmpeq>
 8004016:	b108      	cbz	r0, 800401c <_vfprintf_r+0x176c>
 8004018:	2301      	movs	r3, #1
 800401a:	9324      	str	r3, [sp, #144]	; 0x90
 800401c:	4b02      	ldr	r3, [pc, #8]	; (8004028 <_vfprintf_r+0x1778>)
 800401e:	9309      	str	r3, [sp, #36]	; 0x24
 8004020:	e5ac      	b.n	8003b7c <_vfprintf_r+0x12cc>
 8004022:	bf00      	nop
 8004024:	08007088 	.word	0x08007088
 8004028:	08007044 	.word	0x08007044
 800402c:	425d      	negs	r5, r3
 800402e:	3310      	adds	r3, #16
 8004030:	4bb9      	ldr	r3, [pc, #740]	; (8004318 <_vfprintf_r+0x1a68>)
 8004032:	f280 8097 	bge.w	8004164 <_vfprintf_r+0x18b4>
 8004036:	4619      	mov	r1, r3
 8004038:	2610      	movs	r6, #16
 800403a:	4623      	mov	r3, r4
 800403c:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8004040:	460c      	mov	r4, r1
 8004042:	e005      	b.n	8004050 <_vfprintf_r+0x17a0>
 8004044:	f10b 0b08 	add.w	fp, fp, #8
 8004048:	3d10      	subs	r5, #16
 800404a:	2d10      	cmp	r5, #16
 800404c:	f340 8087 	ble.w	800415e <_vfprintf_r+0x18ae>
 8004050:	3201      	adds	r2, #1
 8004052:	3310      	adds	r3, #16
 8004054:	2a07      	cmp	r2, #7
 8004056:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800405a:	e9cb 4600 	strd	r4, r6, [fp]
 800405e:	ddf1      	ble.n	8004044 <_vfprintf_r+0x1794>
 8004060:	aa2a      	add	r2, sp, #168	; 0xa8
 8004062:	9907      	ldr	r1, [sp, #28]
 8004064:	4648      	mov	r0, r9
 8004066:	f002 fc8f 	bl	8006988 <__sprint_r>
 800406a:	2800      	cmp	r0, #0
 800406c:	f47f a998 	bne.w	80033a0 <_vfprintf_r+0xaf0>
 8004070:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8004074:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004078:	e7e6      	b.n	8004048 <_vfprintf_r+0x1798>
 800407a:	f109 0101 	add.w	r1, r9, #1
 800407e:	9803      	ldr	r0, [sp, #12]
 8004080:	f7fe f8a0 	bl	80021c4 <_malloc_r>
 8004084:	4607      	mov	r7, r0
 8004086:	2800      	cmp	r0, #0
 8004088:	f000 813b 	beq.w	8004302 <_vfprintf_r+0x1a52>
 800408c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004090:	930e      	str	r3, [sp, #56]	; 0x38
 8004092:	f026 0320 	bic.w	r3, r6, #32
 8004096:	9304      	str	r3, [sp, #16]
 8004098:	46a0      	mov	r8, r4
 800409a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800409c:	900a      	str	r0, [sp, #40]	; 0x28
 800409e:	e547      	b.n	8003b30 <_vfprintf_r+0x1280>
 80040a0:	2667      	movs	r6, #103	; 0x67
 80040a2:	981a      	ldr	r0, [sp, #104]	; 0x68
 80040a4:	2200      	movs	r2, #0
 80040a6:	920f      	str	r2, [sp, #60]	; 0x3c
 80040a8:	9214      	str	r2, [sp, #80]	; 0x50
 80040aa:	7803      	ldrb	r3, [r0, #0]
 80040ac:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80040ae:	2bff      	cmp	r3, #255	; 0xff
 80040b0:	d00c      	beq.n	80040cc <_vfprintf_r+0x181c>
 80040b2:	4293      	cmp	r3, r2
 80040b4:	da0a      	bge.n	80040cc <_vfprintf_r+0x181c>
 80040b6:	7841      	ldrb	r1, [r0, #1]
 80040b8:	1ad2      	subs	r2, r2, r3
 80040ba:	b1a9      	cbz	r1, 80040e8 <_vfprintf_r+0x1838>
 80040bc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80040be:	3301      	adds	r3, #1
 80040c0:	9314      	str	r3, [sp, #80]	; 0x50
 80040c2:	460b      	mov	r3, r1
 80040c4:	2bff      	cmp	r3, #255	; 0xff
 80040c6:	f100 0001 	add.w	r0, r0, #1
 80040ca:	d1f2      	bne.n	80040b2 <_vfprintf_r+0x1802>
 80040cc:	9211      	str	r2, [sp, #68]	; 0x44
 80040ce:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80040d0:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80040d2:	9909      	ldr	r1, [sp, #36]	; 0x24
 80040d4:	901a      	str	r0, [sp, #104]	; 0x68
 80040d6:	4413      	add	r3, r2
 80040d8:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 80040da:	fb02 1303 	mla	r3, r2, r3, r1
 80040de:	9309      	str	r3, [sp, #36]	; 0x24
 80040e0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80040e4:	9304      	str	r3, [sp, #16]
 80040e6:	e485      	b.n	80039f4 <_vfprintf_r+0x1144>
 80040e8:	990f      	ldr	r1, [sp, #60]	; 0x3c
 80040ea:	3101      	adds	r1, #1
 80040ec:	910f      	str	r1, [sp, #60]	; 0x3c
 80040ee:	e7de      	b.n	80040ae <_vfprintf_r+0x17fe>
 80040f0:	aa28      	add	r2, sp, #160	; 0xa0
 80040f2:	ab25      	add	r3, sp, #148	; 0x94
 80040f4:	e9cd 3200 	strd	r3, r2, [sp]
 80040f8:	2103      	movs	r1, #3
 80040fa:	ab24      	add	r3, sp, #144	; 0x90
 80040fc:	464a      	mov	r2, r9
 80040fe:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004102:	9803      	ldr	r0, [sp, #12]
 8004104:	f000 fa5c 	bl	80045c0 <_dtoa_r>
 8004108:	464d      	mov	r5, r9
 800410a:	4607      	mov	r7, r0
 800410c:	eb00 0409 	add.w	r4, r0, r9
 8004110:	783b      	ldrb	r3, [r7, #0]
 8004112:	2b30      	cmp	r3, #48	; 0x30
 8004114:	f000 80be 	beq.w	8004294 <_vfprintf_r+0x19e4>
 8004118:	9d24      	ldr	r5, [sp, #144]	; 0x90
 800411a:	442c      	add	r4, r5
 800411c:	2200      	movs	r2, #0
 800411e:	2300      	movs	r3, #0
 8004120:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004124:	f7fc ff70 	bl	8001008 <__aeabi_dcmpeq>
 8004128:	b108      	cbz	r0, 800412e <_vfprintf_r+0x187e>
 800412a:	4623      	mov	r3, r4
 800412c:	e413      	b.n	8003956 <_vfprintf_r+0x10a6>
 800412e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004130:	42a3      	cmp	r3, r4
 8004132:	f4bf ac10 	bcs.w	8003956 <_vfprintf_r+0x10a6>
 8004136:	2130      	movs	r1, #48	; 0x30
 8004138:	1c5a      	adds	r2, r3, #1
 800413a:	9228      	str	r2, [sp, #160]	; 0xa0
 800413c:	7019      	strb	r1, [r3, #0]
 800413e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004140:	429c      	cmp	r4, r3
 8004142:	d8f9      	bhi.n	8004138 <_vfprintf_r+0x1888>
 8004144:	e407      	b.n	8003956 <_vfprintf_r+0x10a6>
 8004146:	197c      	adds	r4, r7, r5
 8004148:	e7e8      	b.n	800411c <_vfprintf_r+0x186c>
 800414a:	f1b9 0f00 	cmp.w	r9, #0
 800414e:	f000 8092 	beq.w	8004276 <_vfprintf_r+0x19c6>
 8004152:	900a      	str	r0, [sp, #40]	; 0x28
 8004154:	e4ec      	b.n	8003b30 <_vfprintf_r+0x1280>
 8004156:	900a      	str	r0, [sp, #40]	; 0x28
 8004158:	f04f 0906 	mov.w	r9, #6
 800415c:	e4e8      	b.n	8003b30 <_vfprintf_r+0x1280>
 800415e:	4621      	mov	r1, r4
 8004160:	461c      	mov	r4, r3
 8004162:	460b      	mov	r3, r1
 8004164:	3201      	adds	r2, #1
 8004166:	442c      	add	r4, r5
 8004168:	2a07      	cmp	r2, #7
 800416a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800416e:	e9cb 3500 	strd	r3, r5, [fp]
 8004172:	f300 80a9 	bgt.w	80042c8 <_vfprintf_r+0x1a18>
 8004176:	f10b 0b08 	add.w	fp, fp, #8
 800417a:	e470      	b.n	8003a5e <_vfprintf_r+0x11ae>
 800417c:	469a      	mov	sl, r3
 800417e:	f7ff bb37 	b.w	80037f0 <_vfprintf_r+0xf40>
 8004182:	2301      	movs	r3, #1
 8004184:	9324      	str	r3, [sp, #144]	; 0x90
 8004186:	4b65      	ldr	r3, [pc, #404]	; (800431c <_vfprintf_r+0x1a6c>)
 8004188:	9309      	str	r3, [sp, #36]	; 0x24
 800418a:	e4f7      	b.n	8003b7c <_vfprintf_r+0x12cc>
 800418c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800418e:	4413      	add	r3, r2
 8004190:	444b      	add	r3, r9
 8004192:	9309      	str	r3, [sp, #36]	; 0x24
 8004194:	2666      	movs	r6, #102	; 0x66
 8004196:	e6fb      	b.n	8003f90 <_vfprintf_r+0x16e0>
 8004198:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800419a:	9309      	str	r3, [sp, #36]	; 0x24
 800419c:	e694      	b.n	8003ec8 <_vfprintf_r+0x1618>
 800419e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 80041a2:	4664      	mov	r4, ip
 80041a4:	4d5e      	ldr	r5, [pc, #376]	; (8004320 <_vfprintf_r+0x1a70>)
 80041a6:	e000      	b.n	80041aa <_vfprintf_r+0x18fa>
 80041a8:	4614      	mov	r4, r2
 80041aa:	fba5 1203 	umull	r1, r2, r5, r3
 80041ae:	08d2      	lsrs	r2, r2, #3
 80041b0:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 80041b4:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 80041b8:	f103 0130 	add.w	r1, r3, #48	; 0x30
 80041bc:	4613      	mov	r3, r2
 80041be:	2b09      	cmp	r3, #9
 80041c0:	f804 1c01 	strb.w	r1, [r4, #-1]
 80041c4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80041c8:	dcee      	bgt.n	80041a8 <_vfprintf_r+0x18f8>
 80041ca:	3330      	adds	r3, #48	; 0x30
 80041cc:	3c02      	subs	r4, #2
 80041ce:	b2db      	uxtb	r3, r3
 80041d0:	45a4      	cmp	ip, r4
 80041d2:	f802 3c01 	strb.w	r3, [r2, #-1]
 80041d6:	f240 8090 	bls.w	80042fa <_vfprintf_r+0x1a4a>
 80041da:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 80041de:	4611      	mov	r1, r2
 80041e0:	e001      	b.n	80041e6 <_vfprintf_r+0x1936>
 80041e2:	f811 3b01 	ldrb.w	r3, [r1], #1
 80041e6:	f804 3b01 	strb.w	r3, [r4], #1
 80041ea:	458c      	cmp	ip, r1
 80041ec:	d1f9      	bne.n	80041e2 <_vfprintf_r+0x1932>
 80041ee:	ab2a      	add	r3, sp, #168	; 0xa8
 80041f0:	1a9b      	subs	r3, r3, r2
 80041f2:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80041f6:	4413      	add	r3, r2
 80041f8:	f7ff bbe3 	b.w	80039c2 <_vfprintf_r+0x1112>
 80041fc:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80041fe:	4f49      	ldr	r7, [pc, #292]	; (8004324 <_vfprintf_r+0x1a74>)
 8004200:	2b00      	cmp	r3, #0
 8004202:	bfb6      	itet	lt
 8004204:	222d      	movlt	r2, #45	; 0x2d
 8004206:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 800420a:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 800420e:	4b46      	ldr	r3, [pc, #280]	; (8004328 <_vfprintf_r+0x1a78>)
 8004210:	f7fe bf02 	b.w	8003018 <_vfprintf_r+0x768>
 8004214:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004218:	f7ff b8c9 	b.w	80033ae <_vfprintf_r+0xafe>
 800421c:	aa28      	add	r2, sp, #160	; 0xa0
 800421e:	ab25      	add	r3, sp, #148	; 0x94
 8004220:	e9cd 3200 	strd	r3, r2, [sp]
 8004224:	2103      	movs	r1, #3
 8004226:	ab24      	add	r3, sp, #144	; 0x90
 8004228:	464a      	mov	r2, r9
 800422a:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800422e:	9803      	ldr	r0, [sp, #12]
 8004230:	f000 f9c6 	bl	80045c0 <_dtoa_r>
 8004234:	464d      	mov	r5, r9
 8004236:	4607      	mov	r7, r0
 8004238:	2e46      	cmp	r6, #70	; 0x46
 800423a:	eb07 0405 	add.w	r4, r7, r5
 800423e:	f43f af67 	beq.w	8004110 <_vfprintf_r+0x1860>
 8004242:	e76b      	b.n	800411c <_vfprintf_r+0x186c>
 8004244:	f1b9 0f00 	cmp.w	r9, #0
 8004248:	d131      	bne.n	80042ae <_vfprintf_r+0x19fe>
 800424a:	07c5      	lsls	r5, r0, #31
 800424c:	d42f      	bmi.n	80042ae <_vfprintf_r+0x19fe>
 800424e:	2301      	movs	r3, #1
 8004250:	9304      	str	r3, [sp, #16]
 8004252:	9309      	str	r3, [sp, #36]	; 0x24
 8004254:	2666      	movs	r6, #102	; 0x66
 8004256:	e642      	b.n	8003ede <_vfprintf_r+0x162e>
 8004258:	07c3      	lsls	r3, r0, #31
 800425a:	f57f abbf 	bpl.w	80039dc <_vfprintf_r+0x112c>
 800425e:	f7ff bbb9 	b.w	80039d4 <_vfprintf_r+0x1124>
 8004262:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004264:	f1c3 0301 	rsb	r3, r3, #1
 8004268:	441a      	add	r2, r3
 800426a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 800426e:	9209      	str	r2, [sp, #36]	; 0x24
 8004270:	9304      	str	r3, [sp, #16]
 8004272:	2667      	movs	r6, #103	; 0x67
 8004274:	e633      	b.n	8003ede <_vfprintf_r+0x162e>
 8004276:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800427a:	f04f 0901 	mov.w	r9, #1
 800427e:	e457      	b.n	8003b30 <_vfprintf_r+0x1280>
 8004280:	465a      	mov	r2, fp
 8004282:	e511      	b.n	8003ca8 <_vfprintf_r+0x13f8>
 8004284:	2e47      	cmp	r6, #71	; 0x47
 8004286:	f47f af5e 	bne.w	8004146 <_vfprintf_r+0x1896>
 800428a:	f018 0f01 	tst.w	r8, #1
 800428e:	f43f ab61 	beq.w	8003954 <_vfprintf_r+0x10a4>
 8004292:	e7d1      	b.n	8004238 <_vfprintf_r+0x1988>
 8004294:	2200      	movs	r2, #0
 8004296:	2300      	movs	r3, #0
 8004298:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800429c:	f7fc feb4 	bl	8001008 <__aeabi_dcmpeq>
 80042a0:	2800      	cmp	r0, #0
 80042a2:	f47f af39 	bne.w	8004118 <_vfprintf_r+0x1868>
 80042a6:	f1c5 0501 	rsb	r5, r5, #1
 80042aa:	9524      	str	r5, [sp, #144]	; 0x90
 80042ac:	e735      	b.n	800411a <_vfprintf_r+0x186a>
 80042ae:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80042b0:	3301      	adds	r3, #1
 80042b2:	444b      	add	r3, r9
 80042b4:	9309      	str	r3, [sp, #36]	; 0x24
 80042b6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80042ba:	9304      	str	r3, [sp, #16]
 80042bc:	2666      	movs	r6, #102	; 0x66
 80042be:	e60e      	b.n	8003ede <_vfprintf_r+0x162e>
 80042c0:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80042c4:	f7ff bb7a 	b.w	80039bc <_vfprintf_r+0x110c>
 80042c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80042ca:	9907      	ldr	r1, [sp, #28]
 80042cc:	9803      	ldr	r0, [sp, #12]
 80042ce:	f002 fb5b 	bl	8006988 <__sprint_r>
 80042d2:	2800      	cmp	r0, #0
 80042d4:	f47f a864 	bne.w	80033a0 <_vfprintf_r+0xaf0>
 80042d8:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80042dc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80042e0:	f7ff bbbd 	b.w	8003a5e <_vfprintf_r+0x11ae>
 80042e4:	9908      	ldr	r1, [sp, #32]
 80042e6:	f89a 6001 	ldrb.w	r6, [sl, #1]
 80042ea:	680b      	ldr	r3, [r1, #0]
 80042ec:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 80042f0:	1d0b      	adds	r3, r1, #4
 80042f2:	4692      	mov	sl, r2
 80042f4:	9308      	str	r3, [sp, #32]
 80042f6:	f7fe bb59 	b.w	80029ac <_vfprintf_r+0xfc>
 80042fa:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 80042fe:	f7ff bb60 	b.w	80039c2 <_vfprintf_r+0x1112>
 8004302:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004306:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800430a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800430e:	f8a9 300c 	strh.w	r3, [r9, #12]
 8004312:	f7ff b84c 	b.w	80033ae <_vfprintf_r+0xafe>
 8004316:	bf00      	nop
 8004318:	08007088 	.word	0x08007088
 800431c:	08007058 	.word	0x08007058
 8004320:	cccccccd 	.word	0xcccccccd
 8004324:	08007040 	.word	0x08007040
 8004328:	0800703c 	.word	0x0800703c

0800432c <__sbprintf>:
 800432c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004330:	460c      	mov	r4, r1
 8004332:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8004336:	8989      	ldrh	r1, [r1, #12]
 8004338:	6e66      	ldr	r6, [r4, #100]	; 0x64
 800433a:	89e5      	ldrh	r5, [r4, #14]
 800433c:	9619      	str	r6, [sp, #100]	; 0x64
 800433e:	f021 0102 	bic.w	r1, r1, #2
 8004342:	4606      	mov	r6, r0
 8004344:	69e0      	ldr	r0, [r4, #28]
 8004346:	f8ad 100c 	strh.w	r1, [sp, #12]
 800434a:	4617      	mov	r7, r2
 800434c:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004350:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8004352:	f8ad 500e 	strh.w	r5, [sp, #14]
 8004356:	4698      	mov	r8, r3
 8004358:	ad1a      	add	r5, sp, #104	; 0x68
 800435a:	2300      	movs	r3, #0
 800435c:	9007      	str	r0, [sp, #28]
 800435e:	a816      	add	r0, sp, #88	; 0x58
 8004360:	9209      	str	r2, [sp, #36]	; 0x24
 8004362:	9306      	str	r3, [sp, #24]
 8004364:	9500      	str	r5, [sp, #0]
 8004366:	9504      	str	r5, [sp, #16]
 8004368:	9102      	str	r1, [sp, #8]
 800436a:	9105      	str	r1, [sp, #20]
 800436c:	f001 fc8a 	bl	8005c84 <__retarget_lock_init_recursive>
 8004370:	4643      	mov	r3, r8
 8004372:	463a      	mov	r2, r7
 8004374:	4669      	mov	r1, sp
 8004376:	4630      	mov	r0, r6
 8004378:	f7fe fa9a 	bl	80028b0 <_vfprintf_r>
 800437c:	1e05      	subs	r5, r0, #0
 800437e:	db07      	blt.n	8004390 <__sbprintf+0x64>
 8004380:	4630      	mov	r0, r6
 8004382:	4669      	mov	r1, sp
 8004384:	f001 f8d6 	bl	8005534 <_fflush_r>
 8004388:	2800      	cmp	r0, #0
 800438a:	bf18      	it	ne
 800438c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004390:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8004394:	065b      	lsls	r3, r3, #25
 8004396:	d503      	bpl.n	80043a0 <__sbprintf+0x74>
 8004398:	89a3      	ldrh	r3, [r4, #12]
 800439a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800439e:	81a3      	strh	r3, [r4, #12]
 80043a0:	9816      	ldr	r0, [sp, #88]	; 0x58
 80043a2:	f001 fc71 	bl	8005c88 <__retarget_lock_close_recursive>
 80043a6:	4628      	mov	r0, r5
 80043a8:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 80043ac:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080043b0 <__swsetup_r>:
 80043b0:	b538      	push	{r3, r4, r5, lr}
 80043b2:	4b31      	ldr	r3, [pc, #196]	; (8004478 <__swsetup_r+0xc8>)
 80043b4:	681b      	ldr	r3, [r3, #0]
 80043b6:	4605      	mov	r5, r0
 80043b8:	460c      	mov	r4, r1
 80043ba:	b113      	cbz	r3, 80043c2 <__swsetup_r+0x12>
 80043bc:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 80043be:	2a00      	cmp	r2, #0
 80043c0:	d03a      	beq.n	8004438 <__swsetup_r+0x88>
 80043c2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80043c6:	b293      	uxth	r3, r2
 80043c8:	0718      	lsls	r0, r3, #28
 80043ca:	d50c      	bpl.n	80043e6 <__swsetup_r+0x36>
 80043cc:	6920      	ldr	r0, [r4, #16]
 80043ce:	b1a8      	cbz	r0, 80043fc <__swsetup_r+0x4c>
 80043d0:	f013 0201 	ands.w	r2, r3, #1
 80043d4:	d020      	beq.n	8004418 <__swsetup_r+0x68>
 80043d6:	6963      	ldr	r3, [r4, #20]
 80043d8:	2200      	movs	r2, #0
 80043da:	425b      	negs	r3, r3
 80043dc:	61a3      	str	r3, [r4, #24]
 80043de:	60a2      	str	r2, [r4, #8]
 80043e0:	b300      	cbz	r0, 8004424 <__swsetup_r+0x74>
 80043e2:	2000      	movs	r0, #0
 80043e4:	bd38      	pop	{r3, r4, r5, pc}
 80043e6:	06d9      	lsls	r1, r3, #27
 80043e8:	d53e      	bpl.n	8004468 <__swsetup_r+0xb8>
 80043ea:	0758      	lsls	r0, r3, #29
 80043ec:	d428      	bmi.n	8004440 <__swsetup_r+0x90>
 80043ee:	6920      	ldr	r0, [r4, #16]
 80043f0:	f042 0308 	orr.w	r3, r2, #8
 80043f4:	81a3      	strh	r3, [r4, #12]
 80043f6:	b29b      	uxth	r3, r3
 80043f8:	2800      	cmp	r0, #0
 80043fa:	d1e9      	bne.n	80043d0 <__swsetup_r+0x20>
 80043fc:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004400:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8004404:	d0e4      	beq.n	80043d0 <__swsetup_r+0x20>
 8004406:	4628      	mov	r0, r5
 8004408:	4621      	mov	r1, r4
 800440a:	f001 fc71 	bl	8005cf0 <__smakebuf_r>
 800440e:	89a3      	ldrh	r3, [r4, #12]
 8004410:	6920      	ldr	r0, [r4, #16]
 8004412:	f013 0201 	ands.w	r2, r3, #1
 8004416:	d1de      	bne.n	80043d6 <__swsetup_r+0x26>
 8004418:	0799      	lsls	r1, r3, #30
 800441a:	bf58      	it	pl
 800441c:	6962      	ldrpl	r2, [r4, #20]
 800441e:	60a2      	str	r2, [r4, #8]
 8004420:	2800      	cmp	r0, #0
 8004422:	d1de      	bne.n	80043e2 <__swsetup_r+0x32>
 8004424:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004428:	061a      	lsls	r2, r3, #24
 800442a:	d5db      	bpl.n	80043e4 <__swsetup_r+0x34>
 800442c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004430:	81a3      	strh	r3, [r4, #12]
 8004432:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004436:	bd38      	pop	{r3, r4, r5, pc}
 8004438:	4618      	mov	r0, r3
 800443a:	f001 f8d7 	bl	80055ec <__sinit>
 800443e:	e7c0      	b.n	80043c2 <__swsetup_r+0x12>
 8004440:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004442:	b151      	cbz	r1, 800445a <__swsetup_r+0xaa>
 8004444:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004448:	4299      	cmp	r1, r3
 800444a:	d004      	beq.n	8004456 <__swsetup_r+0xa6>
 800444c:	4628      	mov	r0, r5
 800444e:	f001 f96f 	bl	8005730 <_free_r>
 8004452:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004456:	2300      	movs	r3, #0
 8004458:	6323      	str	r3, [r4, #48]	; 0x30
 800445a:	2300      	movs	r3, #0
 800445c:	6920      	ldr	r0, [r4, #16]
 800445e:	6063      	str	r3, [r4, #4]
 8004460:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8004464:	6020      	str	r0, [r4, #0]
 8004466:	e7c3      	b.n	80043f0 <__swsetup_r+0x40>
 8004468:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 800446c:	2309      	movs	r3, #9
 800446e:	602b      	str	r3, [r5, #0]
 8004470:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004474:	81a2      	strh	r2, [r4, #12]
 8004476:	bd38      	pop	{r3, r4, r5, pc}
 8004478:	200001a8 	.word	0x200001a8

0800447c <register_fini>:
 800447c:	4b02      	ldr	r3, [pc, #8]	; (8004488 <register_fini+0xc>)
 800447e:	b113      	cbz	r3, 8004486 <register_fini+0xa>
 8004480:	4802      	ldr	r0, [pc, #8]	; (800448c <register_fini+0x10>)
 8004482:	f000 b805 	b.w	8004490 <atexit>
 8004486:	4770      	bx	lr
 8004488:	00000000 	.word	0x00000000
 800448c:	0800565d 	.word	0x0800565d

08004490 <atexit>:
 8004490:	2300      	movs	r3, #0
 8004492:	4601      	mov	r1, r0
 8004494:	461a      	mov	r2, r3
 8004496:	4618      	mov	r0, r3
 8004498:	f002 ba96 	b.w	80069c8 <__register_exitproc>

0800449c <quorem>:
 800449c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80044a0:	6903      	ldr	r3, [r0, #16]
 80044a2:	690f      	ldr	r7, [r1, #16]
 80044a4:	42bb      	cmp	r3, r7
 80044a6:	b083      	sub	sp, #12
 80044a8:	f2c0 8086 	blt.w	80045b8 <quorem+0x11c>
 80044ac:	3f01      	subs	r7, #1
 80044ae:	f101 0914 	add.w	r9, r1, #20
 80044b2:	f100 0a14 	add.w	sl, r0, #20
 80044b6:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 80044ba:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 80044be:	00bc      	lsls	r4, r7, #2
 80044c0:	3201      	adds	r2, #1
 80044c2:	fbb3 f8f2 	udiv	r8, r3, r2
 80044c6:	eb0a 0304 	add.w	r3, sl, r4
 80044ca:	9400      	str	r4, [sp, #0]
 80044cc:	eb09 0b04 	add.w	fp, r9, r4
 80044d0:	9301      	str	r3, [sp, #4]
 80044d2:	f1b8 0f00 	cmp.w	r8, #0
 80044d6:	d038      	beq.n	800454a <quorem+0xae>
 80044d8:	2500      	movs	r5, #0
 80044da:	462e      	mov	r6, r5
 80044dc:	46ce      	mov	lr, r9
 80044de:	46d4      	mov	ip, sl
 80044e0:	f85e 4b04 	ldr.w	r4, [lr], #4
 80044e4:	f8dc 3000 	ldr.w	r3, [ip]
 80044e8:	b2a2      	uxth	r2, r4
 80044ea:	fb08 5502 	mla	r5, r8, r2, r5
 80044ee:	0c22      	lsrs	r2, r4, #16
 80044f0:	0c2c      	lsrs	r4, r5, #16
 80044f2:	fb08 4202 	mla	r2, r8, r2, r4
 80044f6:	b2ad      	uxth	r5, r5
 80044f8:	1b75      	subs	r5, r6, r5
 80044fa:	b296      	uxth	r6, r2
 80044fc:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004500:	fa15 f383 	uxtah	r3, r5, r3
 8004504:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004508:	b29b      	uxth	r3, r3
 800450a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 800450e:	45f3      	cmp	fp, lr
 8004510:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8004514:	f84c 3b04 	str.w	r3, [ip], #4
 8004518:	ea4f 4626 	mov.w	r6, r6, asr #16
 800451c:	d2e0      	bcs.n	80044e0 <quorem+0x44>
 800451e:	9b00      	ldr	r3, [sp, #0]
 8004520:	f85a 3003 	ldr.w	r3, [sl, r3]
 8004524:	b98b      	cbnz	r3, 800454a <quorem+0xae>
 8004526:	9a01      	ldr	r2, [sp, #4]
 8004528:	1f13      	subs	r3, r2, #4
 800452a:	459a      	cmp	sl, r3
 800452c:	d20c      	bcs.n	8004548 <quorem+0xac>
 800452e:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8004532:	b94b      	cbnz	r3, 8004548 <quorem+0xac>
 8004534:	f1a2 0308 	sub.w	r3, r2, #8
 8004538:	e002      	b.n	8004540 <quorem+0xa4>
 800453a:	681a      	ldr	r2, [r3, #0]
 800453c:	3b04      	subs	r3, #4
 800453e:	b91a      	cbnz	r2, 8004548 <quorem+0xac>
 8004540:	459a      	cmp	sl, r3
 8004542:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004546:	d3f8      	bcc.n	800453a <quorem+0x9e>
 8004548:	6107      	str	r7, [r0, #16]
 800454a:	4604      	mov	r4, r0
 800454c:	f001 fe94 	bl	8006278 <__mcmp>
 8004550:	2800      	cmp	r0, #0
 8004552:	db2d      	blt.n	80045b0 <quorem+0x114>
 8004554:	f108 0801 	add.w	r8, r8, #1
 8004558:	4655      	mov	r5, sl
 800455a:	2300      	movs	r3, #0
 800455c:	f859 1b04 	ldr.w	r1, [r9], #4
 8004560:	6828      	ldr	r0, [r5, #0]
 8004562:	b28a      	uxth	r2, r1
 8004564:	1a9a      	subs	r2, r3, r2
 8004566:	0c0b      	lsrs	r3, r1, #16
 8004568:	fa12 f280 	uxtah	r2, r2, r0
 800456c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004570:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004574:	b292      	uxth	r2, r2
 8004576:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800457a:	45cb      	cmp	fp, r9
 800457c:	f845 2b04 	str.w	r2, [r5], #4
 8004580:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004584:	d2ea      	bcs.n	800455c <quorem+0xc0>
 8004586:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 800458a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 800458e:	b97a      	cbnz	r2, 80045b0 <quorem+0x114>
 8004590:	1f1a      	subs	r2, r3, #4
 8004592:	4592      	cmp	sl, r2
 8004594:	d20b      	bcs.n	80045ae <quorem+0x112>
 8004596:	f853 2c04 	ldr.w	r2, [r3, #-4]
 800459a:	b942      	cbnz	r2, 80045ae <quorem+0x112>
 800459c:	3b08      	subs	r3, #8
 800459e:	e002      	b.n	80045a6 <quorem+0x10a>
 80045a0:	681a      	ldr	r2, [r3, #0]
 80045a2:	3b04      	subs	r3, #4
 80045a4:	b91a      	cbnz	r2, 80045ae <quorem+0x112>
 80045a6:	459a      	cmp	sl, r3
 80045a8:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80045ac:	d3f8      	bcc.n	80045a0 <quorem+0x104>
 80045ae:	6127      	str	r7, [r4, #16]
 80045b0:	4640      	mov	r0, r8
 80045b2:	b003      	add	sp, #12
 80045b4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80045b8:	2000      	movs	r0, #0
 80045ba:	b003      	add	sp, #12
 80045bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

080045c0 <_dtoa_r>:
 80045c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80045c4:	ec55 4b10 	vmov	r4, r5, d0
 80045c8:	b09b      	sub	sp, #108	; 0x6c
 80045ca:	6c06      	ldr	r6, [r0, #64]	; 0x40
 80045cc:	9102      	str	r1, [sp, #8]
 80045ce:	4681      	mov	r9, r0
 80045d0:	9207      	str	r2, [sp, #28]
 80045d2:	9305      	str	r3, [sp, #20]
 80045d4:	e9cd 4500 	strd	r4, r5, [sp]
 80045d8:	b156      	cbz	r6, 80045f0 <_dtoa_r+0x30>
 80045da:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80045dc:	6072      	str	r2, [r6, #4]
 80045de:	2301      	movs	r3, #1
 80045e0:	4093      	lsls	r3, r2
 80045e2:	60b3      	str	r3, [r6, #8]
 80045e4:	4631      	mov	r1, r6
 80045e6:	f001 fc57 	bl	8005e98 <_Bfree>
 80045ea:	2300      	movs	r3, #0
 80045ec:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80045f0:	f1b5 0800 	subs.w	r8, r5, #0
 80045f4:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80045f6:	bfb4      	ite	lt
 80045f8:	2301      	movlt	r3, #1
 80045fa:	2300      	movge	r3, #0
 80045fc:	6013      	str	r3, [r2, #0]
 80045fe:	4b76      	ldr	r3, [pc, #472]	; (80047d8 <_dtoa_r+0x218>)
 8004600:	bfbc      	itt	lt
 8004602:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8004606:	f8cd 8004 	strlt.w	r8, [sp, #4]
 800460a:	ea33 0308 	bics.w	r3, r3, r8
 800460e:	f000 80a6 	beq.w	800475e <_dtoa_r+0x19e>
 8004612:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004616:	2200      	movs	r2, #0
 8004618:	2300      	movs	r3, #0
 800461a:	4630      	mov	r0, r6
 800461c:	4639      	mov	r1, r7
 800461e:	f7fc fcf3 	bl	8001008 <__aeabi_dcmpeq>
 8004622:	4605      	mov	r5, r0
 8004624:	b178      	cbz	r0, 8004646 <_dtoa_r+0x86>
 8004626:	9a05      	ldr	r2, [sp, #20]
 8004628:	2301      	movs	r3, #1
 800462a:	6013      	str	r3, [r2, #0]
 800462c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800462e:	2b00      	cmp	r3, #0
 8004630:	f000 80c0 	beq.w	80047b4 <_dtoa_r+0x1f4>
 8004634:	4b69      	ldr	r3, [pc, #420]	; (80047dc <_dtoa_r+0x21c>)
 8004636:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004638:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 800463c:	6013      	str	r3, [r2, #0]
 800463e:	4658      	mov	r0, fp
 8004640:	b01b      	add	sp, #108	; 0x6c
 8004642:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004646:	aa18      	add	r2, sp, #96	; 0x60
 8004648:	a919      	add	r1, sp, #100	; 0x64
 800464a:	ec47 6b10 	vmov	d0, r6, r7
 800464e:	4648      	mov	r0, r9
 8004650:	f001 fea4 	bl	800639c <__d2b>
 8004654:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004658:	4682      	mov	sl, r0
 800465a:	f040 80a0 	bne.w	800479e <_dtoa_r+0x1de>
 800465e:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004662:	442c      	add	r4, r5
 8004664:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004668:	2b20      	cmp	r3, #32
 800466a:	f340 842c 	ble.w	8004ec6 <_dtoa_r+0x906>
 800466e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004672:	fa08 f803 	lsl.w	r8, r8, r3
 8004676:	9b00      	ldr	r3, [sp, #0]
 8004678:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800467c:	fa23 f000 	lsr.w	r0, r3, r0
 8004680:	ea48 0000 	orr.w	r0, r8, r0
 8004684:	f7fc f9de 	bl	8000a44 <__aeabi_ui2d>
 8004688:	2301      	movs	r3, #1
 800468a:	4606      	mov	r6, r0
 800468c:	3c01      	subs	r4, #1
 800468e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004692:	930f      	str	r3, [sp, #60]	; 0x3c
 8004694:	4630      	mov	r0, r6
 8004696:	4639      	mov	r1, r7
 8004698:	2200      	movs	r2, #0
 800469a:	4b51      	ldr	r3, [pc, #324]	; (80047e0 <_dtoa_r+0x220>)
 800469c:	f7fc f894 	bl	80007c8 <__aeabi_dsub>
 80046a0:	a347      	add	r3, pc, #284	; (adr r3, 80047c0 <_dtoa_r+0x200>)
 80046a2:	e9d3 2300 	ldrd	r2, r3, [r3]
 80046a6:	f7fc fa47 	bl	8000b38 <__aeabi_dmul>
 80046aa:	a347      	add	r3, pc, #284	; (adr r3, 80047c8 <_dtoa_r+0x208>)
 80046ac:	e9d3 2300 	ldrd	r2, r3, [r3]
 80046b0:	f7fc f88c 	bl	80007cc <__adddf3>
 80046b4:	4606      	mov	r6, r0
 80046b6:	4620      	mov	r0, r4
 80046b8:	460f      	mov	r7, r1
 80046ba:	f7fc f9d3 	bl	8000a64 <__aeabi_i2d>
 80046be:	a344      	add	r3, pc, #272	; (adr r3, 80047d0 <_dtoa_r+0x210>)
 80046c0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80046c4:	f7fc fa38 	bl	8000b38 <__aeabi_dmul>
 80046c8:	4602      	mov	r2, r0
 80046ca:	460b      	mov	r3, r1
 80046cc:	4630      	mov	r0, r6
 80046ce:	4639      	mov	r1, r7
 80046d0:	f7fc f87c 	bl	80007cc <__adddf3>
 80046d4:	4606      	mov	r6, r0
 80046d6:	460f      	mov	r7, r1
 80046d8:	f7fc fcde 	bl	8001098 <__aeabi_d2iz>
 80046dc:	2200      	movs	r2, #0
 80046de:	9006      	str	r0, [sp, #24]
 80046e0:	2300      	movs	r3, #0
 80046e2:	4630      	mov	r0, r6
 80046e4:	4639      	mov	r1, r7
 80046e6:	f7fc fc99 	bl	800101c <__aeabi_dcmplt>
 80046ea:	2800      	cmp	r0, #0
 80046ec:	f040 8273 	bne.w	8004bd6 <_dtoa_r+0x616>
 80046f0:	9e06      	ldr	r6, [sp, #24]
 80046f2:	2e16      	cmp	r6, #22
 80046f4:	f200 825d 	bhi.w	8004bb2 <_dtoa_r+0x5f2>
 80046f8:	4b3a      	ldr	r3, [pc, #232]	; (80047e4 <_dtoa_r+0x224>)
 80046fa:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80046fe:	e9d3 0100 	ldrd	r0, r1, [r3]
 8004702:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004706:	f7fc fca7 	bl	8001058 <__aeabi_dcmpgt>
 800470a:	2800      	cmp	r0, #0
 800470c:	f000 83d7 	beq.w	8004ebe <_dtoa_r+0x8fe>
 8004710:	1e73      	subs	r3, r6, #1
 8004712:	9306      	str	r3, [sp, #24]
 8004714:	2300      	movs	r3, #0
 8004716:	930d      	str	r3, [sp, #52]	; 0x34
 8004718:	1b2c      	subs	r4, r5, r4
 800471a:	f1b4 0801 	subs.w	r8, r4, #1
 800471e:	f100 8254 	bmi.w	8004bca <_dtoa_r+0x60a>
 8004722:	2300      	movs	r3, #0
 8004724:	9308      	str	r3, [sp, #32]
 8004726:	9b06      	ldr	r3, [sp, #24]
 8004728:	2b00      	cmp	r3, #0
 800472a:	f2c0 8245 	blt.w	8004bb8 <_dtoa_r+0x5f8>
 800472e:	4498      	add	r8, r3
 8004730:	930c      	str	r3, [sp, #48]	; 0x30
 8004732:	2300      	movs	r3, #0
 8004734:	930b      	str	r3, [sp, #44]	; 0x2c
 8004736:	9b02      	ldr	r3, [sp, #8]
 8004738:	2b09      	cmp	r3, #9
 800473a:	d85b      	bhi.n	80047f4 <_dtoa_r+0x234>
 800473c:	2b05      	cmp	r3, #5
 800473e:	f340 83c0 	ble.w	8004ec2 <_dtoa_r+0x902>
 8004742:	3b04      	subs	r3, #4
 8004744:	9302      	str	r3, [sp, #8]
 8004746:	2500      	movs	r5, #0
 8004748:	9b02      	ldr	r3, [sp, #8]
 800474a:	3b02      	subs	r3, #2
 800474c:	2b03      	cmp	r3, #3
 800474e:	f200 8498 	bhi.w	8005082 <_dtoa_r+0xac2>
 8004752:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004756:	03df      	.short	0x03df
 8004758:	03e803bf 	.word	0x03e803bf
 800475c:	04f5      	.short	0x04f5
 800475e:	9a05      	ldr	r2, [sp, #20]
 8004760:	f242 730f 	movw	r3, #9999	; 0x270f
 8004764:	6013      	str	r3, [r2, #0]
 8004766:	9b00      	ldr	r3, [sp, #0]
 8004768:	b983      	cbnz	r3, 800478c <_dtoa_r+0x1cc>
 800476a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 800476e:	b96b      	cbnz	r3, 800478c <_dtoa_r+0x1cc>
 8004770:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004772:	f8df b074 	ldr.w	fp, [pc, #116]	; 80047e8 <_dtoa_r+0x228>
 8004776:	2b00      	cmp	r3, #0
 8004778:	f43f af61 	beq.w	800463e <_dtoa_r+0x7e>
 800477c:	f10b 0308 	add.w	r3, fp, #8
 8004780:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004782:	4658      	mov	r0, fp
 8004784:	6013      	str	r3, [r2, #0]
 8004786:	b01b      	add	sp, #108	; 0x6c
 8004788:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800478c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800478e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80047ec <_dtoa_r+0x22c>
 8004792:	2b00      	cmp	r3, #0
 8004794:	f43f af53 	beq.w	800463e <_dtoa_r+0x7e>
 8004798:	f10b 0303 	add.w	r3, fp, #3
 800479c:	e7f0      	b.n	8004780 <_dtoa_r+0x1c0>
 800479e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80047a2:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80047a6:	950f      	str	r5, [sp, #60]	; 0x3c
 80047a8:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 80047ac:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 80047b0:	9d18      	ldr	r5, [sp, #96]	; 0x60
 80047b2:	e76f      	b.n	8004694 <_dtoa_r+0xd4>
 80047b4:	f8df b038 	ldr.w	fp, [pc, #56]	; 80047f0 <_dtoa_r+0x230>
 80047b8:	4658      	mov	r0, fp
 80047ba:	b01b      	add	sp, #108	; 0x6c
 80047bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80047c0:	636f4361 	.word	0x636f4361
 80047c4:	3fd287a7 	.word	0x3fd287a7
 80047c8:	8b60c8b3 	.word	0x8b60c8b3
 80047cc:	3fc68a28 	.word	0x3fc68a28
 80047d0:	509f79fb 	.word	0x509f79fb
 80047d4:	3fd34413 	.word	0x3fd34413
 80047d8:	7ff00000 	.word	0x7ff00000
 80047dc:	08007075 	.word	0x08007075
 80047e0:	3ff80000 	.word	0x3ff80000
 80047e4:	080070d0 	.word	0x080070d0
 80047e8:	08007098 	.word	0x08007098
 80047ec:	080070a4 	.word	0x080070a4
 80047f0:	08007074 	.word	0x08007074
 80047f4:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80047f8:	2501      	movs	r5, #1
 80047fa:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80047fe:	2300      	movs	r3, #0
 8004800:	9302      	str	r3, [sp, #8]
 8004802:	9307      	str	r3, [sp, #28]
 8004804:	2100      	movs	r1, #0
 8004806:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800480a:	940e      	str	r4, [sp, #56]	; 0x38
 800480c:	4648      	mov	r0, r9
 800480e:	f001 fb1d 	bl	8005e4c <_Balloc>
 8004812:	2c0e      	cmp	r4, #14
 8004814:	4683      	mov	fp, r0
 8004816:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800481a:	f200 80fb 	bhi.w	8004a14 <_dtoa_r+0x454>
 800481e:	2d00      	cmp	r5, #0
 8004820:	f000 80f8 	beq.w	8004a14 <_dtoa_r+0x454>
 8004824:	ed9d 7b00 	vldr	d7, [sp]
 8004828:	9906      	ldr	r1, [sp, #24]
 800482a:	2900      	cmp	r1, #0
 800482c:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004830:	f340 83e5 	ble.w	8004ffe <_dtoa_r+0xa3e>
 8004834:	4b9d      	ldr	r3, [pc, #628]	; (8004aac <_dtoa_r+0x4ec>)
 8004836:	f001 020f 	and.w	r2, r1, #15
 800483a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800483e:	ed93 7b00 	vldr	d7, [r3]
 8004842:	110c      	asrs	r4, r1, #4
 8004844:	06e2      	lsls	r2, r4, #27
 8004846:	ed8d 7b00 	vstr	d7, [sp]
 800484a:	f140 849e 	bpl.w	800518a <_dtoa_r+0xbca>
 800484e:	4b98      	ldr	r3, [pc, #608]	; (8004ab0 <_dtoa_r+0x4f0>)
 8004850:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004854:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004858:	f7fc fa98 	bl	8000d8c <__aeabi_ddiv>
 800485c:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004860:	f004 040f 	and.w	r4, r4, #15
 8004864:	2603      	movs	r6, #3
 8004866:	b17c      	cbz	r4, 8004888 <_dtoa_r+0x2c8>
 8004868:	e9dd 0100 	ldrd	r0, r1, [sp]
 800486c:	4d90      	ldr	r5, [pc, #576]	; (8004ab0 <_dtoa_r+0x4f0>)
 800486e:	07e3      	lsls	r3, r4, #31
 8004870:	d504      	bpl.n	800487c <_dtoa_r+0x2bc>
 8004872:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004876:	f7fc f95f 	bl	8000b38 <__aeabi_dmul>
 800487a:	3601      	adds	r6, #1
 800487c:	1064      	asrs	r4, r4, #1
 800487e:	f105 0508 	add.w	r5, r5, #8
 8004882:	d1f4      	bne.n	800486e <_dtoa_r+0x2ae>
 8004884:	e9cd 0100 	strd	r0, r1, [sp]
 8004888:	e9dd 2300 	ldrd	r2, r3, [sp]
 800488c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004890:	f7fc fa7c 	bl	8000d8c <__aeabi_ddiv>
 8004894:	e9cd 0100 	strd	r0, r1, [sp]
 8004898:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800489a:	b143      	cbz	r3, 80048ae <_dtoa_r+0x2ee>
 800489c:	2200      	movs	r2, #0
 800489e:	4b85      	ldr	r3, [pc, #532]	; (8004ab4 <_dtoa_r+0x4f4>)
 80048a0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80048a4:	f7fc fbba 	bl	800101c <__aeabi_dcmplt>
 80048a8:	2800      	cmp	r0, #0
 80048aa:	f040 84ff 	bne.w	80052ac <_dtoa_r+0xcec>
 80048ae:	4630      	mov	r0, r6
 80048b0:	f7fc f8d8 	bl	8000a64 <__aeabi_i2d>
 80048b4:	e9dd 2300 	ldrd	r2, r3, [sp]
 80048b8:	f7fc f93e 	bl	8000b38 <__aeabi_dmul>
 80048bc:	4b7e      	ldr	r3, [pc, #504]	; (8004ab8 <_dtoa_r+0x4f8>)
 80048be:	2200      	movs	r2, #0
 80048c0:	f7fb ff84 	bl	80007cc <__adddf3>
 80048c4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80048c6:	4606      	mov	r6, r0
 80048c8:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80048cc:	2b00      	cmp	r3, #0
 80048ce:	f000 841c 	beq.w	800510a <_dtoa_r+0xb4a>
 80048d2:	9b06      	ldr	r3, [sp, #24]
 80048d4:	9316      	str	r3, [sp, #88]	; 0x58
 80048d6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80048d8:	9312      	str	r3, [sp, #72]	; 0x48
 80048da:	e9dd 0100 	ldrd	r0, r1, [sp]
 80048de:	f7fc fbdb 	bl	8001098 <__aeabi_d2iz>
 80048e2:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80048e4:	4b71      	ldr	r3, [pc, #452]	; (8004aac <_dtoa_r+0x4ec>)
 80048e6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80048ea:	ed13 7b02 	vldr	d7, [r3, #-8]
 80048ee:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80048f2:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80048f6:	f7fc f8b5 	bl	8000a64 <__aeabi_i2d>
 80048fa:	460b      	mov	r3, r1
 80048fc:	4602      	mov	r2, r0
 80048fe:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004902:	e9cd 6700 	strd	r6, r7, [sp]
 8004906:	f7fb ff5f 	bl	80007c8 <__aeabi_dsub>
 800490a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800490c:	b2ed      	uxtb	r5, r5
 800490e:	4606      	mov	r6, r0
 8004910:	460f      	mov	r7, r1
 8004912:	f10b 0401 	add.w	r4, fp, #1
 8004916:	2b00      	cmp	r3, #0
 8004918:	f000 8458 	beq.w	80051cc <_dtoa_r+0xc0c>
 800491c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004920:	2000      	movs	r0, #0
 8004922:	4966      	ldr	r1, [pc, #408]	; (8004abc <_dtoa_r+0x4fc>)
 8004924:	f7fc fa32 	bl	8000d8c <__aeabi_ddiv>
 8004928:	e9dd 2300 	ldrd	r2, r3, [sp]
 800492c:	f7fb ff4c 	bl	80007c8 <__aeabi_dsub>
 8004930:	f88b 5000 	strb.w	r5, [fp]
 8004934:	4632      	mov	r2, r6
 8004936:	463b      	mov	r3, r7
 8004938:	e9cd 0100 	strd	r0, r1, [sp]
 800493c:	f7fc fb8c 	bl	8001058 <__aeabi_dcmpgt>
 8004940:	2800      	cmp	r0, #0
 8004942:	f040 8502 	bne.w	800534a <_dtoa_r+0xd8a>
 8004946:	4632      	mov	r2, r6
 8004948:	463b      	mov	r3, r7
 800494a:	2000      	movs	r0, #0
 800494c:	4959      	ldr	r1, [pc, #356]	; (8004ab4 <_dtoa_r+0x4f4>)
 800494e:	f7fb ff3b 	bl	80007c8 <__aeabi_dsub>
 8004952:	4602      	mov	r2, r0
 8004954:	460b      	mov	r3, r1
 8004956:	e9dd 0100 	ldrd	r0, r1, [sp]
 800495a:	f7fc fb7d 	bl	8001058 <__aeabi_dcmpgt>
 800495e:	2800      	cmp	r0, #0
 8004960:	f040 84fb 	bne.w	800535a <_dtoa_r+0xd9a>
 8004964:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004966:	2a01      	cmp	r2, #1
 8004968:	d050      	beq.n	8004a0c <_dtoa_r+0x44c>
 800496a:	445a      	add	r2, fp
 800496c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004970:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004974:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004978:	4692      	mov	sl, r2
 800497a:	46cb      	mov	fp, r9
 800497c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004980:	e00c      	b.n	800499c <_dtoa_r+0x3dc>
 8004982:	2000      	movs	r0, #0
 8004984:	494b      	ldr	r1, [pc, #300]	; (8004ab4 <_dtoa_r+0x4f4>)
 8004986:	f7fb ff1f 	bl	80007c8 <__aeabi_dsub>
 800498a:	4642      	mov	r2, r8
 800498c:	464b      	mov	r3, r9
 800498e:	f7fc fb45 	bl	800101c <__aeabi_dcmplt>
 8004992:	2800      	cmp	r0, #0
 8004994:	f040 84dc 	bne.w	8005350 <_dtoa_r+0xd90>
 8004998:	4554      	cmp	r4, sl
 800499a:	d030      	beq.n	80049fe <_dtoa_r+0x43e>
 800499c:	4640      	mov	r0, r8
 800499e:	4649      	mov	r1, r9
 80049a0:	2200      	movs	r2, #0
 80049a2:	4b47      	ldr	r3, [pc, #284]	; (8004ac0 <_dtoa_r+0x500>)
 80049a4:	f7fc f8c8 	bl	8000b38 <__aeabi_dmul>
 80049a8:	2200      	movs	r2, #0
 80049aa:	4b45      	ldr	r3, [pc, #276]	; (8004ac0 <_dtoa_r+0x500>)
 80049ac:	4680      	mov	r8, r0
 80049ae:	4689      	mov	r9, r1
 80049b0:	4630      	mov	r0, r6
 80049b2:	4639      	mov	r1, r7
 80049b4:	f7fc f8c0 	bl	8000b38 <__aeabi_dmul>
 80049b8:	460f      	mov	r7, r1
 80049ba:	4606      	mov	r6, r0
 80049bc:	f7fc fb6c 	bl	8001098 <__aeabi_d2iz>
 80049c0:	4605      	mov	r5, r0
 80049c2:	f7fc f84f 	bl	8000a64 <__aeabi_i2d>
 80049c6:	4602      	mov	r2, r0
 80049c8:	460b      	mov	r3, r1
 80049ca:	4630      	mov	r0, r6
 80049cc:	4639      	mov	r1, r7
 80049ce:	f7fb fefb 	bl	80007c8 <__aeabi_dsub>
 80049d2:	3530      	adds	r5, #48	; 0x30
 80049d4:	b2ed      	uxtb	r5, r5
 80049d6:	4642      	mov	r2, r8
 80049d8:	464b      	mov	r3, r9
 80049da:	f804 5b01 	strb.w	r5, [r4], #1
 80049de:	4606      	mov	r6, r0
 80049e0:	460f      	mov	r7, r1
 80049e2:	f7fc fb1b 	bl	800101c <__aeabi_dcmplt>
 80049e6:	4632      	mov	r2, r6
 80049e8:	463b      	mov	r3, r7
 80049ea:	2800      	cmp	r0, #0
 80049ec:	d0c9      	beq.n	8004982 <_dtoa_r+0x3c2>
 80049ee:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80049f0:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80049f4:	9306      	str	r3, [sp, #24]
 80049f6:	46d9      	mov	r9, fp
 80049f8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80049fc:	e236      	b.n	8004e6c <_dtoa_r+0x8ac>
 80049fe:	46d9      	mov	r9, fp
 8004a00:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004a04:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004a08:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004a0c:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004a10:	e9cd 3400 	strd	r3, r4, [sp]
 8004a14:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004a16:	2b00      	cmp	r3, #0
 8004a18:	f2c0 80ae 	blt.w	8004b78 <_dtoa_r+0x5b8>
 8004a1c:	9a06      	ldr	r2, [sp, #24]
 8004a1e:	2a0e      	cmp	r2, #14
 8004a20:	f300 80aa 	bgt.w	8004b78 <_dtoa_r+0x5b8>
 8004a24:	4b21      	ldr	r3, [pc, #132]	; (8004aac <_dtoa_r+0x4ec>)
 8004a26:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004a2a:	ed93 7b00 	vldr	d7, [r3]
 8004a2e:	9b07      	ldr	r3, [sp, #28]
 8004a30:	2b00      	cmp	r3, #0
 8004a32:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004a36:	f2c0 82be 	blt.w	8004fb6 <_dtoa_r+0x9f6>
 8004a3a:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004a3e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004a42:	4630      	mov	r0, r6
 8004a44:	4639      	mov	r1, r7
 8004a46:	f7fc f9a1 	bl	8000d8c <__aeabi_ddiv>
 8004a4a:	f7fc fb25 	bl	8001098 <__aeabi_d2iz>
 8004a4e:	4605      	mov	r5, r0
 8004a50:	f7fc f808 	bl	8000a64 <__aeabi_i2d>
 8004a54:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004a58:	f7fc f86e 	bl	8000b38 <__aeabi_dmul>
 8004a5c:	460b      	mov	r3, r1
 8004a5e:	4602      	mov	r2, r0
 8004a60:	4639      	mov	r1, r7
 8004a62:	4630      	mov	r0, r6
 8004a64:	f7fb feb0 	bl	80007c8 <__aeabi_dsub>
 8004a68:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004a6c:	f88b 3000 	strb.w	r3, [fp]
 8004a70:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a72:	2b01      	cmp	r3, #1
 8004a74:	4606      	mov	r6, r0
 8004a76:	460f      	mov	r7, r1
 8004a78:	f10b 0401 	add.w	r4, fp, #1
 8004a7c:	d053      	beq.n	8004b26 <_dtoa_r+0x566>
 8004a7e:	2200      	movs	r2, #0
 8004a80:	4b0f      	ldr	r3, [pc, #60]	; (8004ac0 <_dtoa_r+0x500>)
 8004a82:	f7fc f859 	bl	8000b38 <__aeabi_dmul>
 8004a86:	2200      	movs	r2, #0
 8004a88:	2300      	movs	r3, #0
 8004a8a:	4606      	mov	r6, r0
 8004a8c:	460f      	mov	r7, r1
 8004a8e:	f7fc fabb 	bl	8001008 <__aeabi_dcmpeq>
 8004a92:	2800      	cmp	r0, #0
 8004a94:	f040 81ea 	bne.w	8004e6c <_dtoa_r+0x8ac>
 8004a98:	f8cd a000 	str.w	sl, [sp]
 8004a9c:	f8cd 901c 	str.w	r9, [sp, #28]
 8004aa0:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004aa4:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004aa8:	e017      	b.n	8004ada <_dtoa_r+0x51a>
 8004aaa:	bf00      	nop
 8004aac:	080070d0 	.word	0x080070d0
 8004ab0:	080070a8 	.word	0x080070a8
 8004ab4:	3ff00000 	.word	0x3ff00000
 8004ab8:	401c0000 	.word	0x401c0000
 8004abc:	3fe00000 	.word	0x3fe00000
 8004ac0:	40240000 	.word	0x40240000
 8004ac4:	f7fc f838 	bl	8000b38 <__aeabi_dmul>
 8004ac8:	2200      	movs	r2, #0
 8004aca:	2300      	movs	r3, #0
 8004acc:	4606      	mov	r6, r0
 8004ace:	460f      	mov	r7, r1
 8004ad0:	f7fc fa9a 	bl	8001008 <__aeabi_dcmpeq>
 8004ad4:	2800      	cmp	r0, #0
 8004ad6:	f040 833d 	bne.w	8005154 <_dtoa_r+0xb94>
 8004ada:	464a      	mov	r2, r9
 8004adc:	4653      	mov	r3, sl
 8004ade:	4630      	mov	r0, r6
 8004ae0:	4639      	mov	r1, r7
 8004ae2:	f7fc f953 	bl	8000d8c <__aeabi_ddiv>
 8004ae6:	f7fc fad7 	bl	8001098 <__aeabi_d2iz>
 8004aea:	4605      	mov	r5, r0
 8004aec:	f7fb ffba 	bl	8000a64 <__aeabi_i2d>
 8004af0:	464a      	mov	r2, r9
 8004af2:	4653      	mov	r3, sl
 8004af4:	f7fc f820 	bl	8000b38 <__aeabi_dmul>
 8004af8:	4602      	mov	r2, r0
 8004afa:	460b      	mov	r3, r1
 8004afc:	4630      	mov	r0, r6
 8004afe:	4639      	mov	r1, r7
 8004b00:	f7fb fe62 	bl	80007c8 <__aeabi_dsub>
 8004b04:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004b08:	f804 cb01 	strb.w	ip, [r4], #1
 8004b0c:	eba4 0c0b 	sub.w	ip, r4, fp
 8004b10:	45e0      	cmp	r8, ip
 8004b12:	4606      	mov	r6, r0
 8004b14:	460f      	mov	r7, r1
 8004b16:	f04f 0200 	mov.w	r2, #0
 8004b1a:	4bc1      	ldr	r3, [pc, #772]	; (8004e20 <_dtoa_r+0x860>)
 8004b1c:	d1d2      	bne.n	8004ac4 <_dtoa_r+0x504>
 8004b1e:	f8dd a000 	ldr.w	sl, [sp]
 8004b22:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004b26:	4632      	mov	r2, r6
 8004b28:	463b      	mov	r3, r7
 8004b2a:	4630      	mov	r0, r6
 8004b2c:	4639      	mov	r1, r7
 8004b2e:	f7fb fe4d 	bl	80007cc <__adddf3>
 8004b32:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004b36:	4606      	mov	r6, r0
 8004b38:	460f      	mov	r7, r1
 8004b3a:	f7fc fa8d 	bl	8001058 <__aeabi_dcmpgt>
 8004b3e:	b958      	cbnz	r0, 8004b58 <_dtoa_r+0x598>
 8004b40:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004b44:	4630      	mov	r0, r6
 8004b46:	4639      	mov	r1, r7
 8004b48:	f7fc fa5e 	bl	8001008 <__aeabi_dcmpeq>
 8004b4c:	2800      	cmp	r0, #0
 8004b4e:	f000 818d 	beq.w	8004e6c <_dtoa_r+0x8ac>
 8004b52:	07e9      	lsls	r1, r5, #31
 8004b54:	f140 818a 	bpl.w	8004e6c <_dtoa_r+0x8ac>
 8004b58:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004b5c:	e005      	b.n	8004b6a <_dtoa_r+0x5aa>
 8004b5e:	459b      	cmp	fp, r3
 8004b60:	f000 8373 	beq.w	800524a <_dtoa_r+0xc8a>
 8004b64:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004b68:	461c      	mov	r4, r3
 8004b6a:	2d39      	cmp	r5, #57	; 0x39
 8004b6c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004b70:	d0f5      	beq.n	8004b5e <_dtoa_r+0x59e>
 8004b72:	3501      	adds	r5, #1
 8004b74:	701d      	strb	r5, [r3, #0]
 8004b76:	e179      	b.n	8004e6c <_dtoa_r+0x8ac>
 8004b78:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004b7a:	2a00      	cmp	r2, #0
 8004b7c:	d03b      	beq.n	8004bf6 <_dtoa_r+0x636>
 8004b7e:	9a02      	ldr	r2, [sp, #8]
 8004b80:	2a01      	cmp	r2, #1
 8004b82:	f340 820b 	ble.w	8004f9c <_dtoa_r+0x9dc>
 8004b86:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b88:	1e5f      	subs	r7, r3, #1
 8004b8a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004b8c:	42bb      	cmp	r3, r7
 8004b8e:	f2c0 82e6 	blt.w	800515e <_dtoa_r+0xb9e>
 8004b92:	1bdf      	subs	r7, r3, r7
 8004b94:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b96:	2b00      	cmp	r3, #0
 8004b98:	f2c0 830b 	blt.w	80051b2 <_dtoa_r+0xbf2>
 8004b9c:	9a08      	ldr	r2, [sp, #32]
 8004b9e:	4614      	mov	r4, r2
 8004ba0:	441a      	add	r2, r3
 8004ba2:	4498      	add	r8, r3
 8004ba4:	9208      	str	r2, [sp, #32]
 8004ba6:	2101      	movs	r1, #1
 8004ba8:	4648      	mov	r0, r9
 8004baa:	f001 fa0f 	bl	8005fcc <__i2b>
 8004bae:	4605      	mov	r5, r0
 8004bb0:	e024      	b.n	8004bfc <_dtoa_r+0x63c>
 8004bb2:	2301      	movs	r3, #1
 8004bb4:	930d      	str	r3, [sp, #52]	; 0x34
 8004bb6:	e5af      	b.n	8004718 <_dtoa_r+0x158>
 8004bb8:	9a08      	ldr	r2, [sp, #32]
 8004bba:	9b06      	ldr	r3, [sp, #24]
 8004bbc:	1ad2      	subs	r2, r2, r3
 8004bbe:	425b      	negs	r3, r3
 8004bc0:	930b      	str	r3, [sp, #44]	; 0x2c
 8004bc2:	2300      	movs	r3, #0
 8004bc4:	9208      	str	r2, [sp, #32]
 8004bc6:	930c      	str	r3, [sp, #48]	; 0x30
 8004bc8:	e5b5      	b.n	8004736 <_dtoa_r+0x176>
 8004bca:	f1c4 0301 	rsb	r3, r4, #1
 8004bce:	9308      	str	r3, [sp, #32]
 8004bd0:	f04f 0800 	mov.w	r8, #0
 8004bd4:	e5a7      	b.n	8004726 <_dtoa_r+0x166>
 8004bd6:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004bda:	4640      	mov	r0, r8
 8004bdc:	f7fb ff42 	bl	8000a64 <__aeabi_i2d>
 8004be0:	4632      	mov	r2, r6
 8004be2:	463b      	mov	r3, r7
 8004be4:	f7fc fa10 	bl	8001008 <__aeabi_dcmpeq>
 8004be8:	2800      	cmp	r0, #0
 8004bea:	f47f ad81 	bne.w	80046f0 <_dtoa_r+0x130>
 8004bee:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004bf2:	9306      	str	r3, [sp, #24]
 8004bf4:	e57c      	b.n	80046f0 <_dtoa_r+0x130>
 8004bf6:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004bf8:	9c08      	ldr	r4, [sp, #32]
 8004bfa:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004bfc:	2c00      	cmp	r4, #0
 8004bfe:	dd0c      	ble.n	8004c1a <_dtoa_r+0x65a>
 8004c00:	f1b8 0f00 	cmp.w	r8, #0
 8004c04:	dd09      	ble.n	8004c1a <_dtoa_r+0x65a>
 8004c06:	4544      	cmp	r4, r8
 8004c08:	9a08      	ldr	r2, [sp, #32]
 8004c0a:	4623      	mov	r3, r4
 8004c0c:	bfa8      	it	ge
 8004c0e:	4643      	movge	r3, r8
 8004c10:	1ad2      	subs	r2, r2, r3
 8004c12:	9208      	str	r2, [sp, #32]
 8004c14:	1ae4      	subs	r4, r4, r3
 8004c16:	eba8 0803 	sub.w	r8, r8, r3
 8004c1a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004c1c:	b16b      	cbz	r3, 8004c3a <_dtoa_r+0x67a>
 8004c1e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004c20:	2a00      	cmp	r2, #0
 8004c22:	f000 8290 	beq.w	8005146 <_dtoa_r+0xb86>
 8004c26:	1bde      	subs	r6, r3, r7
 8004c28:	2f00      	cmp	r7, #0
 8004c2a:	f040 819b 	bne.w	8004f64 <_dtoa_r+0x9a4>
 8004c2e:	4651      	mov	r1, sl
 8004c30:	4632      	mov	r2, r6
 8004c32:	4648      	mov	r0, r9
 8004c34:	f001 fa7a 	bl	800612c <__pow5mult>
 8004c38:	4682      	mov	sl, r0
 8004c3a:	2101      	movs	r1, #1
 8004c3c:	4648      	mov	r0, r9
 8004c3e:	f001 f9c5 	bl	8005fcc <__i2b>
 8004c42:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004c44:	4606      	mov	r6, r0
 8004c46:	2a00      	cmp	r2, #0
 8004c48:	f040 8125 	bne.w	8004e96 <_dtoa_r+0x8d6>
 8004c4c:	9b02      	ldr	r3, [sp, #8]
 8004c4e:	2b01      	cmp	r3, #1
 8004c50:	f340 816c 	ble.w	8004f2c <_dtoa_r+0x96c>
 8004c54:	2001      	movs	r0, #1
 8004c56:	4440      	add	r0, r8
 8004c58:	f010 001f 	ands.w	r0, r0, #31
 8004c5c:	f000 8119 	beq.w	8004e92 <_dtoa_r+0x8d2>
 8004c60:	f1c0 0320 	rsb	r3, r0, #32
 8004c64:	2b04      	cmp	r3, #4
 8004c66:	f340 83ac 	ble.w	80053c2 <_dtoa_r+0xe02>
 8004c6a:	f1c0 001c 	rsb	r0, r0, #28
 8004c6e:	9b08      	ldr	r3, [sp, #32]
 8004c70:	4403      	add	r3, r0
 8004c72:	9308      	str	r3, [sp, #32]
 8004c74:	4404      	add	r4, r0
 8004c76:	4480      	add	r8, r0
 8004c78:	9b08      	ldr	r3, [sp, #32]
 8004c7a:	2b00      	cmp	r3, #0
 8004c7c:	dd05      	ble.n	8004c8a <_dtoa_r+0x6ca>
 8004c7e:	4651      	mov	r1, sl
 8004c80:	461a      	mov	r2, r3
 8004c82:	4648      	mov	r0, r9
 8004c84:	f001 faa2 	bl	80061cc <__lshift>
 8004c88:	4682      	mov	sl, r0
 8004c8a:	f1b8 0f00 	cmp.w	r8, #0
 8004c8e:	dd05      	ble.n	8004c9c <_dtoa_r+0x6dc>
 8004c90:	4631      	mov	r1, r6
 8004c92:	4642      	mov	r2, r8
 8004c94:	4648      	mov	r0, r9
 8004c96:	f001 fa99 	bl	80061cc <__lshift>
 8004c9a:	4606      	mov	r6, r0
 8004c9c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004c9e:	2b00      	cmp	r3, #0
 8004ca0:	d177      	bne.n	8004d92 <_dtoa_r+0x7d2>
 8004ca2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004ca4:	2b00      	cmp	r3, #0
 8004ca6:	f340 8209 	ble.w	80050bc <_dtoa_r+0xafc>
 8004caa:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004cac:	2b00      	cmp	r3, #0
 8004cae:	f000 8089 	beq.w	8004dc4 <_dtoa_r+0x804>
 8004cb2:	2c00      	cmp	r4, #0
 8004cb4:	f300 816b 	bgt.w	8004f8e <_dtoa_r+0x9ce>
 8004cb8:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004cba:	2b00      	cmp	r3, #0
 8004cbc:	f040 81cd 	bne.w	800505a <_dtoa_r+0xa9a>
 8004cc0:	46a8      	mov	r8, r5
 8004cc2:	9a00      	ldr	r2, [sp, #0]
 8004cc4:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004cc8:	f002 0201 	and.w	r2, r2, #1
 8004ccc:	920a      	str	r2, [sp, #40]	; 0x28
 8004cce:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004cd0:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004cd4:	441a      	add	r2, r3
 8004cd6:	465f      	mov	r7, fp
 8004cd8:	9209      	str	r2, [sp, #36]	; 0x24
 8004cda:	46b3      	mov	fp, r6
 8004cdc:	4659      	mov	r1, fp
 8004cde:	4650      	mov	r0, sl
 8004ce0:	f7ff fbdc 	bl	800449c <quorem>
 8004ce4:	4629      	mov	r1, r5
 8004ce6:	4604      	mov	r4, r0
 8004ce8:	4650      	mov	r0, sl
 8004cea:	f001 fac5 	bl	8006278 <__mcmp>
 8004cee:	4659      	mov	r1, fp
 8004cf0:	4606      	mov	r6, r0
 8004cf2:	4642      	mov	r2, r8
 8004cf4:	4648      	mov	r0, r9
 8004cf6:	f001 fadb 	bl	80062b0 <__mdiff>
 8004cfa:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004cfe:	9300      	str	r3, [sp, #0]
 8004d00:	68c3      	ldr	r3, [r0, #12]
 8004d02:	4601      	mov	r1, r0
 8004d04:	2b00      	cmp	r3, #0
 8004d06:	f040 81d4 	bne.w	80050b2 <_dtoa_r+0xaf2>
 8004d0a:	9008      	str	r0, [sp, #32]
 8004d0c:	4650      	mov	r0, sl
 8004d0e:	f001 fab3 	bl	8006278 <__mcmp>
 8004d12:	9a08      	ldr	r2, [sp, #32]
 8004d14:	9007      	str	r0, [sp, #28]
 8004d16:	4611      	mov	r1, r2
 8004d18:	4648      	mov	r0, r9
 8004d1a:	f001 f8bd 	bl	8005e98 <_Bfree>
 8004d1e:	9b07      	ldr	r3, [sp, #28]
 8004d20:	b933      	cbnz	r3, 8004d30 <_dtoa_r+0x770>
 8004d22:	9a02      	ldr	r2, [sp, #8]
 8004d24:	b922      	cbnz	r2, 8004d30 <_dtoa_r+0x770>
 8004d26:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004d28:	2b00      	cmp	r3, #0
 8004d2a:	f000 8319 	beq.w	8005360 <_dtoa_r+0xda0>
 8004d2e:	9b02      	ldr	r3, [sp, #8]
 8004d30:	2e00      	cmp	r6, #0
 8004d32:	f2c0 821c 	blt.w	800516e <_dtoa_r+0xbae>
 8004d36:	d105      	bne.n	8004d44 <_dtoa_r+0x784>
 8004d38:	9a02      	ldr	r2, [sp, #8]
 8004d3a:	b91a      	cbnz	r2, 8004d44 <_dtoa_r+0x784>
 8004d3c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004d3e:	2a00      	cmp	r2, #0
 8004d40:	f000 8215 	beq.w	800516e <_dtoa_r+0xbae>
 8004d44:	2b00      	cmp	r3, #0
 8004d46:	f107 0401 	add.w	r4, r7, #1
 8004d4a:	f300 8225 	bgt.w	8005198 <_dtoa_r+0xbd8>
 8004d4e:	9b00      	ldr	r3, [sp, #0]
 8004d50:	703b      	strb	r3, [r7, #0]
 8004d52:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d54:	42bb      	cmp	r3, r7
 8004d56:	f000 8230 	beq.w	80051ba <_dtoa_r+0xbfa>
 8004d5a:	4651      	mov	r1, sl
 8004d5c:	2300      	movs	r3, #0
 8004d5e:	220a      	movs	r2, #10
 8004d60:	4648      	mov	r0, r9
 8004d62:	f001 f8a3 	bl	8005eac <__multadd>
 8004d66:	4545      	cmp	r5, r8
 8004d68:	4682      	mov	sl, r0
 8004d6a:	4629      	mov	r1, r5
 8004d6c:	f04f 0300 	mov.w	r3, #0
 8004d70:	f04f 020a 	mov.w	r2, #10
 8004d74:	4648      	mov	r0, r9
 8004d76:	f000 8196 	beq.w	80050a6 <_dtoa_r+0xae6>
 8004d7a:	f001 f897 	bl	8005eac <__multadd>
 8004d7e:	4641      	mov	r1, r8
 8004d80:	4605      	mov	r5, r0
 8004d82:	2300      	movs	r3, #0
 8004d84:	220a      	movs	r2, #10
 8004d86:	4648      	mov	r0, r9
 8004d88:	f001 f890 	bl	8005eac <__multadd>
 8004d8c:	4627      	mov	r7, r4
 8004d8e:	4680      	mov	r8, r0
 8004d90:	e7a4      	b.n	8004cdc <_dtoa_r+0x71c>
 8004d92:	4631      	mov	r1, r6
 8004d94:	4650      	mov	r0, sl
 8004d96:	f001 fa6f 	bl	8006278 <__mcmp>
 8004d9a:	2800      	cmp	r0, #0
 8004d9c:	da81      	bge.n	8004ca2 <_dtoa_r+0x6e2>
 8004d9e:	9f06      	ldr	r7, [sp, #24]
 8004da0:	4651      	mov	r1, sl
 8004da2:	2300      	movs	r3, #0
 8004da4:	220a      	movs	r2, #10
 8004da6:	4648      	mov	r0, r9
 8004da8:	3f01      	subs	r7, #1
 8004daa:	9706      	str	r7, [sp, #24]
 8004dac:	f001 f87e 	bl	8005eac <__multadd>
 8004db0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004db2:	4682      	mov	sl, r0
 8004db4:	2b00      	cmp	r3, #0
 8004db6:	f040 82eb 	bne.w	8005390 <_dtoa_r+0xdd0>
 8004dba:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004dbc:	2b00      	cmp	r3, #0
 8004dbe:	f340 82f3 	ble.w	80053a8 <_dtoa_r+0xde8>
 8004dc2:	9309      	str	r3, [sp, #36]	; 0x24
 8004dc4:	465c      	mov	r4, fp
 8004dc6:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004dca:	e002      	b.n	8004dd2 <_dtoa_r+0x812>
 8004dcc:	f001 f86e 	bl	8005eac <__multadd>
 8004dd0:	4682      	mov	sl, r0
 8004dd2:	4631      	mov	r1, r6
 8004dd4:	4650      	mov	r0, sl
 8004dd6:	f7ff fb61 	bl	800449c <quorem>
 8004dda:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004dde:	f804 7b01 	strb.w	r7, [r4], #1
 8004de2:	eba4 030b 	sub.w	r3, r4, fp
 8004de6:	4598      	cmp	r8, r3
 8004de8:	f04f 020a 	mov.w	r2, #10
 8004dec:	f04f 0300 	mov.w	r3, #0
 8004df0:	4651      	mov	r1, sl
 8004df2:	4648      	mov	r0, r9
 8004df4:	dcea      	bgt.n	8004dcc <_dtoa_r+0x80c>
 8004df6:	2300      	movs	r3, #0
 8004df8:	9700      	str	r7, [sp, #0]
 8004dfa:	9302      	str	r3, [sp, #8]
 8004dfc:	4651      	mov	r1, sl
 8004dfe:	2201      	movs	r2, #1
 8004e00:	4648      	mov	r0, r9
 8004e02:	f001 f9e3 	bl	80061cc <__lshift>
 8004e06:	4631      	mov	r1, r6
 8004e08:	4682      	mov	sl, r0
 8004e0a:	f001 fa35 	bl	8006278 <__mcmp>
 8004e0e:	2800      	cmp	r0, #0
 8004e10:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004e14:	dc14      	bgt.n	8004e40 <_dtoa_r+0x880>
 8004e16:	d108      	bne.n	8004e2a <_dtoa_r+0x86a>
 8004e18:	9b00      	ldr	r3, [sp, #0]
 8004e1a:	07db      	lsls	r3, r3, #31
 8004e1c:	d410      	bmi.n	8004e40 <_dtoa_r+0x880>
 8004e1e:	e004      	b.n	8004e2a <_dtoa_r+0x86a>
 8004e20:	40240000 	.word	0x40240000
 8004e24:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004e28:	461c      	mov	r4, r3
 8004e2a:	2a30      	cmp	r2, #48	; 0x30
 8004e2c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004e30:	d0f8      	beq.n	8004e24 <_dtoa_r+0x864>
 8004e32:	e00b      	b.n	8004e4c <_dtoa_r+0x88c>
 8004e34:	459b      	cmp	fp, r3
 8004e36:	f000 814e 	beq.w	80050d6 <_dtoa_r+0xb16>
 8004e3a:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004e3e:	461c      	mov	r4, r3
 8004e40:	2a39      	cmp	r2, #57	; 0x39
 8004e42:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004e46:	d0f5      	beq.n	8004e34 <_dtoa_r+0x874>
 8004e48:	3201      	adds	r2, #1
 8004e4a:	701a      	strb	r2, [r3, #0]
 8004e4c:	4631      	mov	r1, r6
 8004e4e:	4648      	mov	r0, r9
 8004e50:	f001 f822 	bl	8005e98 <_Bfree>
 8004e54:	b155      	cbz	r5, 8004e6c <_dtoa_r+0x8ac>
 8004e56:	9902      	ldr	r1, [sp, #8]
 8004e58:	b121      	cbz	r1, 8004e64 <_dtoa_r+0x8a4>
 8004e5a:	42a9      	cmp	r1, r5
 8004e5c:	d002      	beq.n	8004e64 <_dtoa_r+0x8a4>
 8004e5e:	4648      	mov	r0, r9
 8004e60:	f001 f81a 	bl	8005e98 <_Bfree>
 8004e64:	4629      	mov	r1, r5
 8004e66:	4648      	mov	r0, r9
 8004e68:	f001 f816 	bl	8005e98 <_Bfree>
 8004e6c:	4651      	mov	r1, sl
 8004e6e:	4648      	mov	r0, r9
 8004e70:	f001 f812 	bl	8005e98 <_Bfree>
 8004e74:	2200      	movs	r2, #0
 8004e76:	9b06      	ldr	r3, [sp, #24]
 8004e78:	7022      	strb	r2, [r4, #0]
 8004e7a:	9a05      	ldr	r2, [sp, #20]
 8004e7c:	3301      	adds	r3, #1
 8004e7e:	6013      	str	r3, [r2, #0]
 8004e80:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004e82:	2b00      	cmp	r3, #0
 8004e84:	f43f abdb 	beq.w	800463e <_dtoa_r+0x7e>
 8004e88:	4658      	mov	r0, fp
 8004e8a:	601c      	str	r4, [r3, #0]
 8004e8c:	b01b      	add	sp, #108	; 0x6c
 8004e8e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004e92:	201c      	movs	r0, #28
 8004e94:	e6eb      	b.n	8004c6e <_dtoa_r+0x6ae>
 8004e96:	4601      	mov	r1, r0
 8004e98:	4648      	mov	r0, r9
 8004e9a:	f001 f947 	bl	800612c <__pow5mult>
 8004e9e:	9b02      	ldr	r3, [sp, #8]
 8004ea0:	2b01      	cmp	r3, #1
 8004ea2:	4606      	mov	r6, r0
 8004ea4:	f340 80d4 	ble.w	8005050 <_dtoa_r+0xa90>
 8004ea8:	2300      	movs	r3, #0
 8004eaa:	930c      	str	r3, [sp, #48]	; 0x30
 8004eac:	6933      	ldr	r3, [r6, #16]
 8004eae:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004eb2:	6918      	ldr	r0, [r3, #16]
 8004eb4:	f001 f83a 	bl	8005f2c <__hi0bits>
 8004eb8:	f1c0 0020 	rsb	r0, r0, #32
 8004ebc:	e6cb      	b.n	8004c56 <_dtoa_r+0x696>
 8004ebe:	900d      	str	r0, [sp, #52]	; 0x34
 8004ec0:	e42a      	b.n	8004718 <_dtoa_r+0x158>
 8004ec2:	2501      	movs	r5, #1
 8004ec4:	e440      	b.n	8004748 <_dtoa_r+0x188>
 8004ec6:	f1c3 0820 	rsb	r8, r3, #32
 8004eca:	9b00      	ldr	r3, [sp, #0]
 8004ecc:	fa03 f008 	lsl.w	r0, r3, r8
 8004ed0:	f7ff bbd8 	b.w	8004684 <_dtoa_r+0xc4>
 8004ed4:	2300      	movs	r3, #0
 8004ed6:	930a      	str	r3, [sp, #40]	; 0x28
 8004ed8:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004edc:	4413      	add	r3, r2
 8004ede:	930e      	str	r3, [sp, #56]	; 0x38
 8004ee0:	3301      	adds	r3, #1
 8004ee2:	2b01      	cmp	r3, #1
 8004ee4:	461e      	mov	r6, r3
 8004ee6:	9309      	str	r3, [sp, #36]	; 0x24
 8004ee8:	bfb8      	it	lt
 8004eea:	2601      	movlt	r6, #1
 8004eec:	2100      	movs	r1, #0
 8004eee:	2e17      	cmp	r6, #23
 8004ef0:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004ef4:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004ef6:	f77f ac89 	ble.w	800480c <_dtoa_r+0x24c>
 8004efa:	2201      	movs	r2, #1
 8004efc:	2304      	movs	r3, #4
 8004efe:	005b      	lsls	r3, r3, #1
 8004f00:	f103 0014 	add.w	r0, r3, #20
 8004f04:	42b0      	cmp	r0, r6
 8004f06:	4611      	mov	r1, r2
 8004f08:	f102 0201 	add.w	r2, r2, #1
 8004f0c:	d9f7      	bls.n	8004efe <_dtoa_r+0x93e>
 8004f0e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004f12:	e47b      	b.n	800480c <_dtoa_r+0x24c>
 8004f14:	2300      	movs	r3, #0
 8004f16:	930a      	str	r3, [sp, #40]	; 0x28
 8004f18:	9e07      	ldr	r6, [sp, #28]
 8004f1a:	2e00      	cmp	r6, #0
 8004f1c:	f340 80e2 	ble.w	80050e4 <_dtoa_r+0xb24>
 8004f20:	960e      	str	r6, [sp, #56]	; 0x38
 8004f22:	9609      	str	r6, [sp, #36]	; 0x24
 8004f24:	e7e2      	b.n	8004eec <_dtoa_r+0x92c>
 8004f26:	2301      	movs	r3, #1
 8004f28:	930a      	str	r3, [sp, #40]	; 0x28
 8004f2a:	e7f5      	b.n	8004f18 <_dtoa_r+0x958>
 8004f2c:	9b00      	ldr	r3, [sp, #0]
 8004f2e:	2b00      	cmp	r3, #0
 8004f30:	f47f ae90 	bne.w	8004c54 <_dtoa_r+0x694>
 8004f34:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004f38:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004f3c:	2b00      	cmp	r3, #0
 8004f3e:	f040 8192 	bne.w	8005266 <_dtoa_r+0xca6>
 8004f42:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004f46:	0d1b      	lsrs	r3, r3, #20
 8004f48:	051b      	lsls	r3, r3, #20
 8004f4a:	b12b      	cbz	r3, 8004f58 <_dtoa_r+0x998>
 8004f4c:	9b08      	ldr	r3, [sp, #32]
 8004f4e:	3301      	adds	r3, #1
 8004f50:	9308      	str	r3, [sp, #32]
 8004f52:	f108 0801 	add.w	r8, r8, #1
 8004f56:	2301      	movs	r3, #1
 8004f58:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004f5a:	930c      	str	r3, [sp, #48]	; 0x30
 8004f5c:	2a00      	cmp	r2, #0
 8004f5e:	f43f ae79 	beq.w	8004c54 <_dtoa_r+0x694>
 8004f62:	e7a3      	b.n	8004eac <_dtoa_r+0x8ec>
 8004f64:	463a      	mov	r2, r7
 8004f66:	4629      	mov	r1, r5
 8004f68:	4648      	mov	r0, r9
 8004f6a:	f001 f8df 	bl	800612c <__pow5mult>
 8004f6e:	4652      	mov	r2, sl
 8004f70:	4601      	mov	r1, r0
 8004f72:	4605      	mov	r5, r0
 8004f74:	4648      	mov	r0, r9
 8004f76:	f001 f833 	bl	8005fe0 <__multiply>
 8004f7a:	4651      	mov	r1, sl
 8004f7c:	4607      	mov	r7, r0
 8004f7e:	4648      	mov	r0, r9
 8004f80:	f000 ff8a 	bl	8005e98 <_Bfree>
 8004f84:	46ba      	mov	sl, r7
 8004f86:	2e00      	cmp	r6, #0
 8004f88:	f43f ae57 	beq.w	8004c3a <_dtoa_r+0x67a>
 8004f8c:	e64f      	b.n	8004c2e <_dtoa_r+0x66e>
 8004f8e:	4629      	mov	r1, r5
 8004f90:	4622      	mov	r2, r4
 8004f92:	4648      	mov	r0, r9
 8004f94:	f001 f91a 	bl	80061cc <__lshift>
 8004f98:	4605      	mov	r5, r0
 8004f9a:	e68d      	b.n	8004cb8 <_dtoa_r+0x6f8>
 8004f9c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004f9e:	2a00      	cmp	r2, #0
 8004fa0:	f000 815d 	beq.w	800525e <_dtoa_r+0xc9e>
 8004fa4:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004fa8:	9a08      	ldr	r2, [sp, #32]
 8004faa:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004fac:	4614      	mov	r4, r2
 8004fae:	441a      	add	r2, r3
 8004fb0:	4498      	add	r8, r3
 8004fb2:	9208      	str	r2, [sp, #32]
 8004fb4:	e5f7      	b.n	8004ba6 <_dtoa_r+0x5e6>
 8004fb6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004fb8:	2b00      	cmp	r3, #0
 8004fba:	f73f ad3e 	bgt.w	8004a3a <_dtoa_r+0x47a>
 8004fbe:	f040 80bc 	bne.w	800513a <_dtoa_r+0xb7a>
 8004fc2:	ec51 0b17 	vmov	r0, r1, d7
 8004fc6:	2200      	movs	r2, #0
 8004fc8:	4bb2      	ldr	r3, [pc, #712]	; (8005294 <_dtoa_r+0xcd4>)
 8004fca:	f7fb fdb5 	bl	8000b38 <__aeabi_dmul>
 8004fce:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004fd2:	f7fc f837 	bl	8001044 <__aeabi_dcmpge>
 8004fd6:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004fd8:	4635      	mov	r5, r6
 8004fda:	2800      	cmp	r0, #0
 8004fdc:	d176      	bne.n	80050cc <_dtoa_r+0xb0c>
 8004fde:	9a06      	ldr	r2, [sp, #24]
 8004fe0:	2331      	movs	r3, #49	; 0x31
 8004fe2:	3201      	adds	r2, #1
 8004fe4:	9206      	str	r2, [sp, #24]
 8004fe6:	f88b 3000 	strb.w	r3, [fp]
 8004fea:	f10b 0401 	add.w	r4, fp, #1
 8004fee:	4631      	mov	r1, r6
 8004ff0:	4648      	mov	r0, r9
 8004ff2:	f000 ff51 	bl	8005e98 <_Bfree>
 8004ff6:	2d00      	cmp	r5, #0
 8004ff8:	f47f af34 	bne.w	8004e64 <_dtoa_r+0x8a4>
 8004ffc:	e736      	b.n	8004e6c <_dtoa_r+0x8ac>
 8004ffe:	f000 8142 	beq.w	8005286 <_dtoa_r+0xcc6>
 8005002:	9b06      	ldr	r3, [sp, #24]
 8005004:	425c      	negs	r4, r3
 8005006:	4ba4      	ldr	r3, [pc, #656]	; (8005298 <_dtoa_r+0xcd8>)
 8005008:	f004 020f 	and.w	r2, r4, #15
 800500c:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005010:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005014:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8005018:	f7fb fd8e 	bl	8000b38 <__aeabi_dmul>
 800501c:	1124      	asrs	r4, r4, #4
 800501e:	e9cd 0100 	strd	r0, r1, [sp]
 8005022:	f000 81c6 	beq.w	80053b2 <_dtoa_r+0xdf2>
 8005026:	4d9d      	ldr	r5, [pc, #628]	; (800529c <_dtoa_r+0xcdc>)
 8005028:	2300      	movs	r3, #0
 800502a:	2602      	movs	r6, #2
 800502c:	07e7      	lsls	r7, r4, #31
 800502e:	d505      	bpl.n	800503c <_dtoa_r+0xa7c>
 8005030:	e9d5 2300 	ldrd	r2, r3, [r5]
 8005034:	f7fb fd80 	bl	8000b38 <__aeabi_dmul>
 8005038:	3601      	adds	r6, #1
 800503a:	2301      	movs	r3, #1
 800503c:	1064      	asrs	r4, r4, #1
 800503e:	f105 0508 	add.w	r5, r5, #8
 8005042:	d1f3      	bne.n	800502c <_dtoa_r+0xa6c>
 8005044:	2b00      	cmp	r3, #0
 8005046:	f43f ac27 	beq.w	8004898 <_dtoa_r+0x2d8>
 800504a:	e9cd 0100 	strd	r0, r1, [sp]
 800504e:	e423      	b.n	8004898 <_dtoa_r+0x2d8>
 8005050:	9b00      	ldr	r3, [sp, #0]
 8005052:	2b00      	cmp	r3, #0
 8005054:	f43f af6e 	beq.w	8004f34 <_dtoa_r+0x974>
 8005058:	e726      	b.n	8004ea8 <_dtoa_r+0x8e8>
 800505a:	6869      	ldr	r1, [r5, #4]
 800505c:	4648      	mov	r0, r9
 800505e:	f000 fef5 	bl	8005e4c <_Balloc>
 8005062:	692b      	ldr	r3, [r5, #16]
 8005064:	3302      	adds	r3, #2
 8005066:	009a      	lsls	r2, r3, #2
 8005068:	4604      	mov	r4, r0
 800506a:	f105 010c 	add.w	r1, r5, #12
 800506e:	300c      	adds	r0, #12
 8005070:	f7fb fa46 	bl	8000500 <memcpy>
 8005074:	4621      	mov	r1, r4
 8005076:	2201      	movs	r2, #1
 8005078:	4648      	mov	r0, r9
 800507a:	f001 f8a7 	bl	80061cc <__lshift>
 800507e:	4680      	mov	r8, r0
 8005080:	e61f      	b.n	8004cc2 <_dtoa_r+0x702>
 8005082:	2400      	movs	r4, #0
 8005084:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8005088:	4621      	mov	r1, r4
 800508a:	4648      	mov	r0, r9
 800508c:	f000 fede 	bl	8005e4c <_Balloc>
 8005090:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8005094:	930e      	str	r3, [sp, #56]	; 0x38
 8005096:	9309      	str	r3, [sp, #36]	; 0x24
 8005098:	2301      	movs	r3, #1
 800509a:	4683      	mov	fp, r0
 800509c:	9407      	str	r4, [sp, #28]
 800509e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80050a2:	930a      	str	r3, [sp, #40]	; 0x28
 80050a4:	e4b6      	b.n	8004a14 <_dtoa_r+0x454>
 80050a6:	f000 ff01 	bl	8005eac <__multadd>
 80050aa:	4627      	mov	r7, r4
 80050ac:	4605      	mov	r5, r0
 80050ae:	4680      	mov	r8, r0
 80050b0:	e614      	b.n	8004cdc <_dtoa_r+0x71c>
 80050b2:	4648      	mov	r0, r9
 80050b4:	f000 fef0 	bl	8005e98 <_Bfree>
 80050b8:	2301      	movs	r3, #1
 80050ba:	e639      	b.n	8004d30 <_dtoa_r+0x770>
 80050bc:	9b02      	ldr	r3, [sp, #8]
 80050be:	2b02      	cmp	r3, #2
 80050c0:	f77f adf3 	ble.w	8004caa <_dtoa_r+0x6ea>
 80050c4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80050c6:	2b00      	cmp	r3, #0
 80050c8:	f000 80cf 	beq.w	800526a <_dtoa_r+0xcaa>
 80050cc:	9b07      	ldr	r3, [sp, #28]
 80050ce:	43db      	mvns	r3, r3
 80050d0:	9306      	str	r3, [sp, #24]
 80050d2:	465c      	mov	r4, fp
 80050d4:	e78b      	b.n	8004fee <_dtoa_r+0xa2e>
 80050d6:	9a06      	ldr	r2, [sp, #24]
 80050d8:	2331      	movs	r3, #49	; 0x31
 80050da:	3201      	adds	r2, #1
 80050dc:	9206      	str	r2, [sp, #24]
 80050de:	f88b 3000 	strb.w	r3, [fp]
 80050e2:	e6b3      	b.n	8004e4c <_dtoa_r+0x88c>
 80050e4:	2401      	movs	r4, #1
 80050e6:	9409      	str	r4, [sp, #36]	; 0x24
 80050e8:	9407      	str	r4, [sp, #28]
 80050ea:	f7ff bb8b 	b.w	8004804 <_dtoa_r+0x244>
 80050ee:	4630      	mov	r0, r6
 80050f0:	f7fb fcb8 	bl	8000a64 <__aeabi_i2d>
 80050f4:	e9dd 2300 	ldrd	r2, r3, [sp]
 80050f8:	f7fb fd1e 	bl	8000b38 <__aeabi_dmul>
 80050fc:	2200      	movs	r2, #0
 80050fe:	4b68      	ldr	r3, [pc, #416]	; (80052a0 <_dtoa_r+0xce0>)
 8005100:	f7fb fb64 	bl	80007cc <__adddf3>
 8005104:	4606      	mov	r6, r0
 8005106:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800510a:	2200      	movs	r2, #0
 800510c:	4b61      	ldr	r3, [pc, #388]	; (8005294 <_dtoa_r+0xcd4>)
 800510e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005112:	f7fb fb59 	bl	80007c8 <__aeabi_dsub>
 8005116:	4632      	mov	r2, r6
 8005118:	463b      	mov	r3, r7
 800511a:	4604      	mov	r4, r0
 800511c:	460d      	mov	r5, r1
 800511e:	f7fb ff9b 	bl	8001058 <__aeabi_dcmpgt>
 8005122:	2800      	cmp	r0, #0
 8005124:	d14f      	bne.n	80051c6 <_dtoa_r+0xc06>
 8005126:	4632      	mov	r2, r6
 8005128:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 800512c:	4620      	mov	r0, r4
 800512e:	4629      	mov	r1, r5
 8005130:	f7fb ff74 	bl	800101c <__aeabi_dcmplt>
 8005134:	2800      	cmp	r0, #0
 8005136:	f43f ac69 	beq.w	8004a0c <_dtoa_r+0x44c>
 800513a:	2600      	movs	r6, #0
 800513c:	4635      	mov	r5, r6
 800513e:	e7c5      	b.n	80050cc <_dtoa_r+0xb0c>
 8005140:	2301      	movs	r3, #1
 8005142:	930a      	str	r3, [sp, #40]	; 0x28
 8005144:	e6c8      	b.n	8004ed8 <_dtoa_r+0x918>
 8005146:	4651      	mov	r1, sl
 8005148:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800514a:	4648      	mov	r0, r9
 800514c:	f000 ffee 	bl	800612c <__pow5mult>
 8005150:	4682      	mov	sl, r0
 8005152:	e572      	b.n	8004c3a <_dtoa_r+0x67a>
 8005154:	f8dd a000 	ldr.w	sl, [sp]
 8005158:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800515c:	e686      	b.n	8004e6c <_dtoa_r+0x8ac>
 800515e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005160:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005162:	1afb      	subs	r3, r7, r3
 8005164:	441a      	add	r2, r3
 8005166:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 800516a:	2700      	movs	r7, #0
 800516c:	e512      	b.n	8004b94 <_dtoa_r+0x5d4>
 800516e:	2b00      	cmp	r3, #0
 8005170:	9402      	str	r4, [sp, #8]
 8005172:	465e      	mov	r6, fp
 8005174:	f107 0401 	add.w	r4, r7, #1
 8005178:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800517c:	f300 80ba 	bgt.w	80052f4 <_dtoa_r+0xd34>
 8005180:	9b00      	ldr	r3, [sp, #0]
 8005182:	9502      	str	r5, [sp, #8]
 8005184:	703b      	strb	r3, [r7, #0]
 8005186:	4645      	mov	r5, r8
 8005188:	e660      	b.n	8004e4c <_dtoa_r+0x88c>
 800518a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800518e:	2602      	movs	r6, #2
 8005190:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8005194:	f7ff bb67 	b.w	8004866 <_dtoa_r+0x2a6>
 8005198:	9b00      	ldr	r3, [sp, #0]
 800519a:	2b39      	cmp	r3, #57	; 0x39
 800519c:	465e      	mov	r6, fp
 800519e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80051a2:	f000 80b9 	beq.w	8005318 <_dtoa_r+0xd58>
 80051a6:	9b00      	ldr	r3, [sp, #0]
 80051a8:	9502      	str	r5, [sp, #8]
 80051aa:	3301      	adds	r3, #1
 80051ac:	703b      	strb	r3, [r7, #0]
 80051ae:	4645      	mov	r5, r8
 80051b0:	e64c      	b.n	8004e4c <_dtoa_r+0x88c>
 80051b2:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 80051b6:	1a9c      	subs	r4, r3, r2
 80051b8:	e4f5      	b.n	8004ba6 <_dtoa_r+0x5e6>
 80051ba:	465e      	mov	r6, fp
 80051bc:	9502      	str	r5, [sp, #8]
 80051be:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80051c2:	4645      	mov	r5, r8
 80051c4:	e61a      	b.n	8004dfc <_dtoa_r+0x83c>
 80051c6:	2600      	movs	r6, #0
 80051c8:	4635      	mov	r5, r6
 80051ca:	e708      	b.n	8004fde <_dtoa_r+0xa1e>
 80051cc:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80051d0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80051d4:	f7fb fcb0 	bl	8000b38 <__aeabi_dmul>
 80051d8:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80051da:	f88b 5000 	strb.w	r5, [fp]
 80051de:	2b01      	cmp	r3, #1
 80051e0:	e9cd 0100 	strd	r0, r1, [sp]
 80051e4:	d020      	beq.n	8005228 <_dtoa_r+0xc68>
 80051e6:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80051e8:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 80051ec:	445b      	add	r3, fp
 80051ee:	4698      	mov	r8, r3
 80051f0:	2200      	movs	r2, #0
 80051f2:	4b2c      	ldr	r3, [pc, #176]	; (80052a4 <_dtoa_r+0xce4>)
 80051f4:	4630      	mov	r0, r6
 80051f6:	4639      	mov	r1, r7
 80051f8:	f7fb fc9e 	bl	8000b38 <__aeabi_dmul>
 80051fc:	460f      	mov	r7, r1
 80051fe:	4606      	mov	r6, r0
 8005200:	f7fb ff4a 	bl	8001098 <__aeabi_d2iz>
 8005204:	4605      	mov	r5, r0
 8005206:	f7fb fc2d 	bl	8000a64 <__aeabi_i2d>
 800520a:	3530      	adds	r5, #48	; 0x30
 800520c:	4602      	mov	r2, r0
 800520e:	460b      	mov	r3, r1
 8005210:	4630      	mov	r0, r6
 8005212:	4639      	mov	r1, r7
 8005214:	f7fb fad8 	bl	80007c8 <__aeabi_dsub>
 8005218:	f804 5b01 	strb.w	r5, [r4], #1
 800521c:	4544      	cmp	r4, r8
 800521e:	4606      	mov	r6, r0
 8005220:	460f      	mov	r7, r1
 8005222:	d1e5      	bne.n	80051f0 <_dtoa_r+0xc30>
 8005224:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8005228:	4b1f      	ldr	r3, [pc, #124]	; (80052a8 <_dtoa_r+0xce8>)
 800522a:	2200      	movs	r2, #0
 800522c:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005230:	f7fb facc 	bl	80007cc <__adddf3>
 8005234:	4632      	mov	r2, r6
 8005236:	463b      	mov	r3, r7
 8005238:	f7fb fef0 	bl	800101c <__aeabi_dcmplt>
 800523c:	2800      	cmp	r0, #0
 800523e:	d070      	beq.n	8005322 <_dtoa_r+0xd62>
 8005240:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005242:	9306      	str	r3, [sp, #24]
 8005244:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005248:	e48f      	b.n	8004b6a <_dtoa_r+0x5aa>
 800524a:	2330      	movs	r3, #48	; 0x30
 800524c:	f88b 3000 	strb.w	r3, [fp]
 8005250:	9b06      	ldr	r3, [sp, #24]
 8005252:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005256:	3301      	adds	r3, #1
 8005258:	9306      	str	r3, [sp, #24]
 800525a:	465b      	mov	r3, fp
 800525c:	e489      	b.n	8004b72 <_dtoa_r+0x5b2>
 800525e:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005260:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8005264:	e6a0      	b.n	8004fa8 <_dtoa_r+0x9e8>
 8005266:	2300      	movs	r3, #0
 8005268:	e676      	b.n	8004f58 <_dtoa_r+0x998>
 800526a:	4631      	mov	r1, r6
 800526c:	2205      	movs	r2, #5
 800526e:	4648      	mov	r0, r9
 8005270:	f000 fe1c 	bl	8005eac <__multadd>
 8005274:	4601      	mov	r1, r0
 8005276:	4606      	mov	r6, r0
 8005278:	4650      	mov	r0, sl
 800527a:	f000 fffd 	bl	8006278 <__mcmp>
 800527e:	2800      	cmp	r0, #0
 8005280:	f73f aead 	bgt.w	8004fde <_dtoa_r+0xa1e>
 8005284:	e722      	b.n	80050cc <_dtoa_r+0xb0c>
 8005286:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800528a:	2602      	movs	r6, #2
 800528c:	ed8d 7b00 	vstr	d7, [sp]
 8005290:	f7ff bb02 	b.w	8004898 <_dtoa_r+0x2d8>
 8005294:	40140000 	.word	0x40140000
 8005298:	080070d0 	.word	0x080070d0
 800529c:	080070a8 	.word	0x080070a8
 80052a0:	401c0000 	.word	0x401c0000
 80052a4:	40240000 	.word	0x40240000
 80052a8:	3fe00000 	.word	0x3fe00000
 80052ac:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80052ae:	2b00      	cmp	r3, #0
 80052b0:	f43f af1d 	beq.w	80050ee <_dtoa_r+0xb2e>
 80052b4:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 80052b6:	2c00      	cmp	r4, #0
 80052b8:	f77f aba8 	ble.w	8004a0c <_dtoa_r+0x44c>
 80052bc:	2200      	movs	r2, #0
 80052be:	4b45      	ldr	r3, [pc, #276]	; (80053d4 <_dtoa_r+0xe14>)
 80052c0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80052c4:	f7fb fc38 	bl	8000b38 <__aeabi_dmul>
 80052c8:	e9cd 0100 	strd	r0, r1, [sp]
 80052cc:	1c70      	adds	r0, r6, #1
 80052ce:	f7fb fbc9 	bl	8000a64 <__aeabi_i2d>
 80052d2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80052d6:	f7fb fc2f 	bl	8000b38 <__aeabi_dmul>
 80052da:	4b3f      	ldr	r3, [pc, #252]	; (80053d8 <_dtoa_r+0xe18>)
 80052dc:	2200      	movs	r2, #0
 80052de:	f7fb fa75 	bl	80007cc <__adddf3>
 80052e2:	9b06      	ldr	r3, [sp, #24]
 80052e4:	9412      	str	r4, [sp, #72]	; 0x48
 80052e6:	3b01      	subs	r3, #1
 80052e8:	4606      	mov	r6, r0
 80052ea:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80052ee:	9316      	str	r3, [sp, #88]	; 0x58
 80052f0:	f7ff baf3 	b.w	80048da <_dtoa_r+0x31a>
 80052f4:	4651      	mov	r1, sl
 80052f6:	2201      	movs	r2, #1
 80052f8:	4648      	mov	r0, r9
 80052fa:	f000 ff67 	bl	80061cc <__lshift>
 80052fe:	4631      	mov	r1, r6
 8005300:	4682      	mov	sl, r0
 8005302:	f000 ffb9 	bl	8006278 <__mcmp>
 8005306:	2800      	cmp	r0, #0
 8005308:	dd3b      	ble.n	8005382 <_dtoa_r+0xdc2>
 800530a:	9b00      	ldr	r3, [sp, #0]
 800530c:	2b39      	cmp	r3, #57	; 0x39
 800530e:	d003      	beq.n	8005318 <_dtoa_r+0xd58>
 8005310:	9b02      	ldr	r3, [sp, #8]
 8005312:	3331      	adds	r3, #49	; 0x31
 8005314:	9300      	str	r3, [sp, #0]
 8005316:	e733      	b.n	8005180 <_dtoa_r+0xbc0>
 8005318:	2239      	movs	r2, #57	; 0x39
 800531a:	9502      	str	r5, [sp, #8]
 800531c:	703a      	strb	r2, [r7, #0]
 800531e:	4645      	mov	r5, r8
 8005320:	e58e      	b.n	8004e40 <_dtoa_r+0x880>
 8005322:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005326:	2000      	movs	r0, #0
 8005328:	492c      	ldr	r1, [pc, #176]	; (80053dc <_dtoa_r+0xe1c>)
 800532a:	f7fb fa4d 	bl	80007c8 <__aeabi_dsub>
 800532e:	4632      	mov	r2, r6
 8005330:	463b      	mov	r3, r7
 8005332:	f7fb fe91 	bl	8001058 <__aeabi_dcmpgt>
 8005336:	b910      	cbnz	r0, 800533e <_dtoa_r+0xd7e>
 8005338:	f7ff bb68 	b.w	8004a0c <_dtoa_r+0x44c>
 800533c:	4614      	mov	r4, r2
 800533e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8005342:	2b30      	cmp	r3, #48	; 0x30
 8005344:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8005348:	d0f8      	beq.n	800533c <_dtoa_r+0xd7c>
 800534a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800534c:	9306      	str	r3, [sp, #24]
 800534e:	e58d      	b.n	8004e6c <_dtoa_r+0x8ac>
 8005350:	46d9      	mov	r9, fp
 8005352:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005356:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800535a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800535c:	9306      	str	r3, [sp, #24]
 800535e:	e404      	b.n	8004b6a <_dtoa_r+0x5aa>
 8005360:	9b00      	ldr	r3, [sp, #0]
 8005362:	2b39      	cmp	r3, #57	; 0x39
 8005364:	4621      	mov	r1, r4
 8005366:	4632      	mov	r2, r6
 8005368:	f107 0401 	add.w	r4, r7, #1
 800536c:	465e      	mov	r6, fp
 800536e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005372:	d0d1      	beq.n	8005318 <_dtoa_r+0xd58>
 8005374:	2a00      	cmp	r2, #0
 8005376:	f77f af03 	ble.w	8005180 <_dtoa_r+0xbc0>
 800537a:	460b      	mov	r3, r1
 800537c:	3331      	adds	r3, #49	; 0x31
 800537e:	9300      	str	r3, [sp, #0]
 8005380:	e6fe      	b.n	8005180 <_dtoa_r+0xbc0>
 8005382:	f47f aefd 	bne.w	8005180 <_dtoa_r+0xbc0>
 8005386:	9b00      	ldr	r3, [sp, #0]
 8005388:	07da      	lsls	r2, r3, #31
 800538a:	f57f aef9 	bpl.w	8005180 <_dtoa_r+0xbc0>
 800538e:	e7bc      	b.n	800530a <_dtoa_r+0xd4a>
 8005390:	4629      	mov	r1, r5
 8005392:	2300      	movs	r3, #0
 8005394:	220a      	movs	r2, #10
 8005396:	4648      	mov	r0, r9
 8005398:	f000 fd88 	bl	8005eac <__multadd>
 800539c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800539e:	2b00      	cmp	r3, #0
 80053a0:	4605      	mov	r5, r0
 80053a2:	dd09      	ble.n	80053b8 <_dtoa_r+0xdf8>
 80053a4:	9309      	str	r3, [sp, #36]	; 0x24
 80053a6:	e484      	b.n	8004cb2 <_dtoa_r+0x6f2>
 80053a8:	9b02      	ldr	r3, [sp, #8]
 80053aa:	2b02      	cmp	r3, #2
 80053ac:	dc0e      	bgt.n	80053cc <_dtoa_r+0xe0c>
 80053ae:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80053b0:	e507      	b.n	8004dc2 <_dtoa_r+0x802>
 80053b2:	2602      	movs	r6, #2
 80053b4:	f7ff ba70 	b.w	8004898 <_dtoa_r+0x2d8>
 80053b8:	9b02      	ldr	r3, [sp, #8]
 80053ba:	2b02      	cmp	r3, #2
 80053bc:	dc06      	bgt.n	80053cc <_dtoa_r+0xe0c>
 80053be:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80053c0:	e7f0      	b.n	80053a4 <_dtoa_r+0xde4>
 80053c2:	f43f ac59 	beq.w	8004c78 <_dtoa_r+0x6b8>
 80053c6:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 80053ca:	e450      	b.n	8004c6e <_dtoa_r+0x6ae>
 80053cc:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80053ce:	9309      	str	r3, [sp, #36]	; 0x24
 80053d0:	e678      	b.n	80050c4 <_dtoa_r+0xb04>
 80053d2:	bf00      	nop
 80053d4:	40240000 	.word	0x40240000
 80053d8:	401c0000 	.word	0x401c0000
 80053dc:	3fe00000 	.word	0x3fe00000

080053e0 <__sflush_r>:
 80053e0:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80053e4:	b29a      	uxth	r2, r3
 80053e6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80053ea:	460c      	mov	r4, r1
 80053ec:	0711      	lsls	r1, r2, #28
 80053ee:	4680      	mov	r8, r0
 80053f0:	d444      	bmi.n	800547c <__sflush_r+0x9c>
 80053f2:	6862      	ldr	r2, [r4, #4]
 80053f4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80053f8:	2a00      	cmp	r2, #0
 80053fa:	81a3      	strh	r3, [r4, #12]
 80053fc:	dd59      	ble.n	80054b2 <__sflush_r+0xd2>
 80053fe:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005400:	2d00      	cmp	r5, #0
 8005402:	d053      	beq.n	80054ac <__sflush_r+0xcc>
 8005404:	2200      	movs	r2, #0
 8005406:	b29b      	uxth	r3, r3
 8005408:	f8d8 6000 	ldr.w	r6, [r8]
 800540c:	69e1      	ldr	r1, [r4, #28]
 800540e:	f8c8 2000 	str.w	r2, [r8]
 8005412:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8005416:	f040 8083 	bne.w	8005520 <__sflush_r+0x140>
 800541a:	2301      	movs	r3, #1
 800541c:	4640      	mov	r0, r8
 800541e:	47a8      	blx	r5
 8005420:	1c42      	adds	r2, r0, #1
 8005422:	d04a      	beq.n	80054ba <__sflush_r+0xda>
 8005424:	89a3      	ldrh	r3, [r4, #12]
 8005426:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005428:	69e1      	ldr	r1, [r4, #28]
 800542a:	075b      	lsls	r3, r3, #29
 800542c:	d505      	bpl.n	800543a <__sflush_r+0x5a>
 800542e:	6862      	ldr	r2, [r4, #4]
 8005430:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8005432:	1a80      	subs	r0, r0, r2
 8005434:	b10b      	cbz	r3, 800543a <__sflush_r+0x5a>
 8005436:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005438:	1ac0      	subs	r0, r0, r3
 800543a:	4602      	mov	r2, r0
 800543c:	2300      	movs	r3, #0
 800543e:	4640      	mov	r0, r8
 8005440:	47a8      	blx	r5
 8005442:	1c47      	adds	r7, r0, #1
 8005444:	d045      	beq.n	80054d2 <__sflush_r+0xf2>
 8005446:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800544a:	6922      	ldr	r2, [r4, #16]
 800544c:	6022      	str	r2, [r4, #0]
 800544e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8005452:	2200      	movs	r2, #0
 8005454:	81a3      	strh	r3, [r4, #12]
 8005456:	04db      	lsls	r3, r3, #19
 8005458:	6062      	str	r2, [r4, #4]
 800545a:	d500      	bpl.n	800545e <__sflush_r+0x7e>
 800545c:	6520      	str	r0, [r4, #80]	; 0x50
 800545e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005460:	f8c8 6000 	str.w	r6, [r8]
 8005464:	b311      	cbz	r1, 80054ac <__sflush_r+0xcc>
 8005466:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800546a:	4299      	cmp	r1, r3
 800546c:	d002      	beq.n	8005474 <__sflush_r+0x94>
 800546e:	4640      	mov	r0, r8
 8005470:	f000 f95e 	bl	8005730 <_free_r>
 8005474:	2000      	movs	r0, #0
 8005476:	6320      	str	r0, [r4, #48]	; 0x30
 8005478:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800547c:	6926      	ldr	r6, [r4, #16]
 800547e:	b1ae      	cbz	r6, 80054ac <__sflush_r+0xcc>
 8005480:	6825      	ldr	r5, [r4, #0]
 8005482:	6026      	str	r6, [r4, #0]
 8005484:	0792      	lsls	r2, r2, #30
 8005486:	bf0c      	ite	eq
 8005488:	6963      	ldreq	r3, [r4, #20]
 800548a:	2300      	movne	r3, #0
 800548c:	1bad      	subs	r5, r5, r6
 800548e:	60a3      	str	r3, [r4, #8]
 8005490:	e00a      	b.n	80054a8 <__sflush_r+0xc8>
 8005492:	462b      	mov	r3, r5
 8005494:	4632      	mov	r2, r6
 8005496:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005498:	69e1      	ldr	r1, [r4, #28]
 800549a:	4640      	mov	r0, r8
 800549c:	47b8      	blx	r7
 800549e:	2800      	cmp	r0, #0
 80054a0:	eba5 0500 	sub.w	r5, r5, r0
 80054a4:	4406      	add	r6, r0
 80054a6:	dd2b      	ble.n	8005500 <__sflush_r+0x120>
 80054a8:	2d00      	cmp	r5, #0
 80054aa:	dcf2      	bgt.n	8005492 <__sflush_r+0xb2>
 80054ac:	2000      	movs	r0, #0
 80054ae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80054b2:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 80054b4:	2a00      	cmp	r2, #0
 80054b6:	dca2      	bgt.n	80053fe <__sflush_r+0x1e>
 80054b8:	e7f8      	b.n	80054ac <__sflush_r+0xcc>
 80054ba:	f8d8 3000 	ldr.w	r3, [r8]
 80054be:	2b00      	cmp	r3, #0
 80054c0:	d0b0      	beq.n	8005424 <__sflush_r+0x44>
 80054c2:	2b1d      	cmp	r3, #29
 80054c4:	d001      	beq.n	80054ca <__sflush_r+0xea>
 80054c6:	2b16      	cmp	r3, #22
 80054c8:	d12c      	bne.n	8005524 <__sflush_r+0x144>
 80054ca:	f8c8 6000 	str.w	r6, [r8]
 80054ce:	2000      	movs	r0, #0
 80054d0:	e7ed      	b.n	80054ae <__sflush_r+0xce>
 80054d2:	f8d8 1000 	ldr.w	r1, [r8]
 80054d6:	291d      	cmp	r1, #29
 80054d8:	d81a      	bhi.n	8005510 <__sflush_r+0x130>
 80054da:	4b15      	ldr	r3, [pc, #84]	; (8005530 <__sflush_r+0x150>)
 80054dc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80054e0:	40cb      	lsrs	r3, r1
 80054e2:	43db      	mvns	r3, r3
 80054e4:	f013 0301 	ands.w	r3, r3, #1
 80054e8:	d114      	bne.n	8005514 <__sflush_r+0x134>
 80054ea:	6925      	ldr	r5, [r4, #16]
 80054ec:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80054f0:	e9c4 5300 	strd	r5, r3, [r4]
 80054f4:	04d5      	lsls	r5, r2, #19
 80054f6:	81a2      	strh	r2, [r4, #12]
 80054f8:	d5b1      	bpl.n	800545e <__sflush_r+0x7e>
 80054fa:	2900      	cmp	r1, #0
 80054fc:	d1af      	bne.n	800545e <__sflush_r+0x7e>
 80054fe:	e7ad      	b.n	800545c <__sflush_r+0x7c>
 8005500:	89a3      	ldrh	r3, [r4, #12]
 8005502:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005506:	81a3      	strh	r3, [r4, #12]
 8005508:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800550c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005510:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005514:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005518:	81a2      	strh	r2, [r4, #12]
 800551a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800551e:	e7c6      	b.n	80054ae <__sflush_r+0xce>
 8005520:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8005522:	e782      	b.n	800542a <__sflush_r+0x4a>
 8005524:	89a3      	ldrh	r3, [r4, #12]
 8005526:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800552a:	81a3      	strh	r3, [r4, #12]
 800552c:	e7bf      	b.n	80054ae <__sflush_r+0xce>
 800552e:	bf00      	nop
 8005530:	20400001 	.word	0x20400001

08005534 <_fflush_r>:
 8005534:	b538      	push	{r3, r4, r5, lr}
 8005536:	460d      	mov	r5, r1
 8005538:	4604      	mov	r4, r0
 800553a:	b108      	cbz	r0, 8005540 <_fflush_r+0xc>
 800553c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800553e:	b1a3      	cbz	r3, 800556a <_fflush_r+0x36>
 8005540:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005544:	b1b8      	cbz	r0, 8005576 <_fflush_r+0x42>
 8005546:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005548:	07db      	lsls	r3, r3, #31
 800554a:	d401      	bmi.n	8005550 <_fflush_r+0x1c>
 800554c:	0581      	lsls	r1, r0, #22
 800554e:	d51a      	bpl.n	8005586 <_fflush_r+0x52>
 8005550:	4620      	mov	r0, r4
 8005552:	4629      	mov	r1, r5
 8005554:	f7ff ff44 	bl	80053e0 <__sflush_r>
 8005558:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 800555a:	07da      	lsls	r2, r3, #31
 800555c:	4604      	mov	r4, r0
 800555e:	d402      	bmi.n	8005566 <_fflush_r+0x32>
 8005560:	89ab      	ldrh	r3, [r5, #12]
 8005562:	059b      	lsls	r3, r3, #22
 8005564:	d50a      	bpl.n	800557c <_fflush_r+0x48>
 8005566:	4620      	mov	r0, r4
 8005568:	bd38      	pop	{r3, r4, r5, pc}
 800556a:	f000 f83f 	bl	80055ec <__sinit>
 800556e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005572:	2800      	cmp	r0, #0
 8005574:	d1e7      	bne.n	8005546 <_fflush_r+0x12>
 8005576:	4604      	mov	r4, r0
 8005578:	4620      	mov	r0, r4
 800557a:	bd38      	pop	{r3, r4, r5, pc}
 800557c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 800557e:	f000 fb87 	bl	8005c90 <__retarget_lock_release_recursive>
 8005582:	4620      	mov	r0, r4
 8005584:	bd38      	pop	{r3, r4, r5, pc}
 8005586:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005588:	f000 fb80 	bl	8005c8c <__retarget_lock_acquire_recursive>
 800558c:	e7e0      	b.n	8005550 <_fflush_r+0x1c>
 800558e:	bf00      	nop

08005590 <std>:
 8005590:	b510      	push	{r4, lr}
 8005592:	2300      	movs	r3, #0
 8005594:	4604      	mov	r4, r0
 8005596:	8181      	strh	r1, [r0, #12]
 8005598:	81c2      	strh	r2, [r0, #14]
 800559a:	e9c0 3300 	strd	r3, r3, [r0]
 800559e:	6083      	str	r3, [r0, #8]
 80055a0:	6643      	str	r3, [r0, #100]	; 0x64
 80055a2:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80055a6:	6183      	str	r3, [r0, #24]
 80055a8:	4619      	mov	r1, r3
 80055aa:	2208      	movs	r2, #8
 80055ac:	305c      	adds	r0, #92	; 0x5c
 80055ae:	f7fd f8ad 	bl	800270c <memset>
 80055b2:	4807      	ldr	r0, [pc, #28]	; (80055d0 <std+0x40>)
 80055b4:	4907      	ldr	r1, [pc, #28]	; (80055d4 <std+0x44>)
 80055b6:	4a08      	ldr	r2, [pc, #32]	; (80055d8 <std+0x48>)
 80055b8:	4b08      	ldr	r3, [pc, #32]	; (80055dc <std+0x4c>)
 80055ba:	62e3      	str	r3, [r4, #44]	; 0x2c
 80055bc:	e9c4 4007 	strd	r4, r0, [r4, #28]
 80055c0:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 80055c4:	f104 0058 	add.w	r0, r4, #88	; 0x58
 80055c8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80055cc:	f000 bb5a 	b.w	8005c84 <__retarget_lock_init_recursive>
 80055d0:	08006825 	.word	0x08006825
 80055d4:	08006849 	.word	0x08006849
 80055d8:	08006885 	.word	0x08006885
 80055dc:	080068a5 	.word	0x080068a5

080055e0 <_cleanup_r>:
 80055e0:	4901      	ldr	r1, [pc, #4]	; (80055e8 <_cleanup_r+0x8>)
 80055e2:	f000 bb17 	b.w	8005c14 <_fwalk_reent>
 80055e6:	bf00      	nop
 80055e8:	08006b15 	.word	0x08006b15

080055ec <__sinit>:
 80055ec:	b510      	push	{r4, lr}
 80055ee:	4604      	mov	r4, r0
 80055f0:	4812      	ldr	r0, [pc, #72]	; (800563c <__sinit+0x50>)
 80055f2:	f000 fb4b 	bl	8005c8c <__retarget_lock_acquire_recursive>
 80055f6:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80055f8:	b9d2      	cbnz	r2, 8005630 <__sinit+0x44>
 80055fa:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80055fe:	4810      	ldr	r0, [pc, #64]	; (8005640 <__sinit+0x54>)
 8005600:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8005604:	2103      	movs	r1, #3
 8005606:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 800560a:	63e0      	str	r0, [r4, #60]	; 0x3c
 800560c:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005610:	6860      	ldr	r0, [r4, #4]
 8005612:	2104      	movs	r1, #4
 8005614:	f7ff ffbc 	bl	8005590 <std>
 8005618:	2201      	movs	r2, #1
 800561a:	2109      	movs	r1, #9
 800561c:	68a0      	ldr	r0, [r4, #8]
 800561e:	f7ff ffb7 	bl	8005590 <std>
 8005622:	2202      	movs	r2, #2
 8005624:	2112      	movs	r1, #18
 8005626:	68e0      	ldr	r0, [r4, #12]
 8005628:	f7ff ffb2 	bl	8005590 <std>
 800562c:	2301      	movs	r3, #1
 800562e:	63a3      	str	r3, [r4, #56]	; 0x38
 8005630:	4802      	ldr	r0, [pc, #8]	; (800563c <__sinit+0x50>)
 8005632:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005636:	f000 bb2b 	b.w	8005c90 <__retarget_lock_release_recursive>
 800563a:	bf00      	nop
 800563c:	20000c84 	.word	0x20000c84
 8005640:	080055e1 	.word	0x080055e1

08005644 <__sfp_lock_acquire>:
 8005644:	4801      	ldr	r0, [pc, #4]	; (800564c <__sfp_lock_acquire+0x8>)
 8005646:	f000 bb21 	b.w	8005c8c <__retarget_lock_acquire_recursive>
 800564a:	bf00      	nop
 800564c:	20000c98 	.word	0x20000c98

08005650 <__sfp_lock_release>:
 8005650:	4801      	ldr	r0, [pc, #4]	; (8005658 <__sfp_lock_release+0x8>)
 8005652:	f000 bb1d 	b.w	8005c90 <__retarget_lock_release_recursive>
 8005656:	bf00      	nop
 8005658:	20000c98 	.word	0x20000c98

0800565c <__libc_fini_array>:
 800565c:	b538      	push	{r3, r4, r5, lr}
 800565e:	4c0a      	ldr	r4, [pc, #40]	; (8005688 <__libc_fini_array+0x2c>)
 8005660:	4d0a      	ldr	r5, [pc, #40]	; (800568c <__libc_fini_array+0x30>)
 8005662:	1b64      	subs	r4, r4, r5
 8005664:	10a4      	asrs	r4, r4, #2
 8005666:	d00a      	beq.n	800567e <__libc_fini_array+0x22>
 8005668:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800566c:	3b01      	subs	r3, #1
 800566e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005672:	3c01      	subs	r4, #1
 8005674:	f855 3904 	ldr.w	r3, [r5], #-4
 8005678:	4798      	blx	r3
 800567a:	2c00      	cmp	r4, #0
 800567c:	d1f9      	bne.n	8005672 <__libc_fini_array+0x16>
 800567e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005682:	f001 bc3b 	b.w	8006efc <_fini>
 8005686:	bf00      	nop
 8005688:	080072cc 	.word	0x080072cc
 800568c:	080072c8 	.word	0x080072c8

08005690 <_malloc_trim_r>:
 8005690:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005692:	4f24      	ldr	r7, [pc, #144]	; (8005724 <_malloc_trim_r+0x94>)
 8005694:	460c      	mov	r4, r1
 8005696:	4606      	mov	r6, r0
 8005698:	f7fd f882 	bl	80027a0 <__malloc_lock>
 800569c:	68bb      	ldr	r3, [r7, #8]
 800569e:	685d      	ldr	r5, [r3, #4]
 80056a0:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80056a4:	310f      	adds	r1, #15
 80056a6:	f025 0503 	bic.w	r5, r5, #3
 80056aa:	4429      	add	r1, r5
 80056ac:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 80056b0:	f021 010f 	bic.w	r1, r1, #15
 80056b4:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 80056b8:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 80056bc:	db07      	blt.n	80056ce <_malloc_trim_r+0x3e>
 80056be:	2100      	movs	r1, #0
 80056c0:	4630      	mov	r0, r6
 80056c2:	f7fd f8e3 	bl	800288c <_sbrk_r>
 80056c6:	68bb      	ldr	r3, [r7, #8]
 80056c8:	442b      	add	r3, r5
 80056ca:	4298      	cmp	r0, r3
 80056cc:	d004      	beq.n	80056d8 <_malloc_trim_r+0x48>
 80056ce:	4630      	mov	r0, r6
 80056d0:	f7fd f86c 	bl	80027ac <__malloc_unlock>
 80056d4:	2000      	movs	r0, #0
 80056d6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80056d8:	4261      	negs	r1, r4
 80056da:	4630      	mov	r0, r6
 80056dc:	f7fd f8d6 	bl	800288c <_sbrk_r>
 80056e0:	3001      	adds	r0, #1
 80056e2:	d00d      	beq.n	8005700 <_malloc_trim_r+0x70>
 80056e4:	4b10      	ldr	r3, [pc, #64]	; (8005728 <_malloc_trim_r+0x98>)
 80056e6:	68ba      	ldr	r2, [r7, #8]
 80056e8:	6819      	ldr	r1, [r3, #0]
 80056ea:	1b2d      	subs	r5, r5, r4
 80056ec:	f045 0501 	orr.w	r5, r5, #1
 80056f0:	4630      	mov	r0, r6
 80056f2:	1b09      	subs	r1, r1, r4
 80056f4:	6055      	str	r5, [r2, #4]
 80056f6:	6019      	str	r1, [r3, #0]
 80056f8:	f7fd f858 	bl	80027ac <__malloc_unlock>
 80056fc:	2001      	movs	r0, #1
 80056fe:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005700:	2100      	movs	r1, #0
 8005702:	4630      	mov	r0, r6
 8005704:	f7fd f8c2 	bl	800288c <_sbrk_r>
 8005708:	68ba      	ldr	r2, [r7, #8]
 800570a:	1a83      	subs	r3, r0, r2
 800570c:	2b0f      	cmp	r3, #15
 800570e:	ddde      	ble.n	80056ce <_malloc_trim_r+0x3e>
 8005710:	4c06      	ldr	r4, [pc, #24]	; (800572c <_malloc_trim_r+0x9c>)
 8005712:	4905      	ldr	r1, [pc, #20]	; (8005728 <_malloc_trim_r+0x98>)
 8005714:	6824      	ldr	r4, [r4, #0]
 8005716:	f043 0301 	orr.w	r3, r3, #1
 800571a:	1b00      	subs	r0, r0, r4
 800571c:	6053      	str	r3, [r2, #4]
 800571e:	6008      	str	r0, [r1, #0]
 8005720:	e7d5      	b.n	80056ce <_malloc_trim_r+0x3e>
 8005722:	bf00      	nop
 8005724:	200005d8 	.word	0x200005d8
 8005728:	20000bfc 	.word	0x20000bfc
 800572c:	200009e0 	.word	0x200009e0

08005730 <_free_r>:
 8005730:	2900      	cmp	r1, #0
 8005732:	d053      	beq.n	80057dc <_free_r+0xac>
 8005734:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005736:	460c      	mov	r4, r1
 8005738:	4606      	mov	r6, r0
 800573a:	f7fd f831 	bl	80027a0 <__malloc_lock>
 800573e:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8005742:	4f71      	ldr	r7, [pc, #452]	; (8005908 <_free_r+0x1d8>)
 8005744:	f02c 0101 	bic.w	r1, ip, #1
 8005748:	f1a4 0508 	sub.w	r5, r4, #8
 800574c:	186b      	adds	r3, r5, r1
 800574e:	68b8      	ldr	r0, [r7, #8]
 8005750:	685a      	ldr	r2, [r3, #4]
 8005752:	4298      	cmp	r0, r3
 8005754:	f022 0203 	bic.w	r2, r2, #3
 8005758:	d053      	beq.n	8005802 <_free_r+0xd2>
 800575a:	f01c 0f01 	tst.w	ip, #1
 800575e:	605a      	str	r2, [r3, #4]
 8005760:	eb03 0002 	add.w	r0, r3, r2
 8005764:	d13b      	bne.n	80057de <_free_r+0xae>
 8005766:	f854 cc08 	ldr.w	ip, [r4, #-8]
 800576a:	6840      	ldr	r0, [r0, #4]
 800576c:	eba5 050c 	sub.w	r5, r5, ip
 8005770:	f107 0e08 	add.w	lr, r7, #8
 8005774:	68ac      	ldr	r4, [r5, #8]
 8005776:	4574      	cmp	r4, lr
 8005778:	4461      	add	r1, ip
 800577a:	f000 0001 	and.w	r0, r0, #1
 800577e:	d075      	beq.n	800586c <_free_r+0x13c>
 8005780:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005784:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005788:	f8cc 4008 	str.w	r4, [ip, #8]
 800578c:	b360      	cbz	r0, 80057e8 <_free_r+0xb8>
 800578e:	f041 0301 	orr.w	r3, r1, #1
 8005792:	606b      	str	r3, [r5, #4]
 8005794:	5069      	str	r1, [r5, r1]
 8005796:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800579a:	d350      	bcc.n	800583e <_free_r+0x10e>
 800579c:	0a4b      	lsrs	r3, r1, #9
 800579e:	2b04      	cmp	r3, #4
 80057a0:	d870      	bhi.n	8005884 <_free_r+0x154>
 80057a2:	098b      	lsrs	r3, r1, #6
 80057a4:	f103 0439 	add.w	r4, r3, #57	; 0x39
 80057a8:	00e4      	lsls	r4, r4, #3
 80057aa:	f103 0238 	add.w	r2, r3, #56	; 0x38
 80057ae:	1938      	adds	r0, r7, r4
 80057b0:	593b      	ldr	r3, [r7, r4]
 80057b2:	3808      	subs	r0, #8
 80057b4:	4298      	cmp	r0, r3
 80057b6:	d078      	beq.n	80058aa <_free_r+0x17a>
 80057b8:	685a      	ldr	r2, [r3, #4]
 80057ba:	f022 0203 	bic.w	r2, r2, #3
 80057be:	428a      	cmp	r2, r1
 80057c0:	d971      	bls.n	80058a6 <_free_r+0x176>
 80057c2:	689b      	ldr	r3, [r3, #8]
 80057c4:	4298      	cmp	r0, r3
 80057c6:	d1f7      	bne.n	80057b8 <_free_r+0x88>
 80057c8:	68c3      	ldr	r3, [r0, #12]
 80057ca:	e9c5 0302 	strd	r0, r3, [r5, #8]
 80057ce:	609d      	str	r5, [r3, #8]
 80057d0:	60c5      	str	r5, [r0, #12]
 80057d2:	4630      	mov	r0, r6
 80057d4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80057d8:	f7fc bfe8 	b.w	80027ac <__malloc_unlock>
 80057dc:	4770      	bx	lr
 80057de:	6840      	ldr	r0, [r0, #4]
 80057e0:	f000 0001 	and.w	r0, r0, #1
 80057e4:	2800      	cmp	r0, #0
 80057e6:	d1d2      	bne.n	800578e <_free_r+0x5e>
 80057e8:	6898      	ldr	r0, [r3, #8]
 80057ea:	4c48      	ldr	r4, [pc, #288]	; (800590c <_free_r+0x1dc>)
 80057ec:	4411      	add	r1, r2
 80057ee:	42a0      	cmp	r0, r4
 80057f0:	f041 0201 	orr.w	r2, r1, #1
 80057f4:	d062      	beq.n	80058bc <_free_r+0x18c>
 80057f6:	68db      	ldr	r3, [r3, #12]
 80057f8:	60c3      	str	r3, [r0, #12]
 80057fa:	6098      	str	r0, [r3, #8]
 80057fc:	606a      	str	r2, [r5, #4]
 80057fe:	5069      	str	r1, [r5, r1]
 8005800:	e7c9      	b.n	8005796 <_free_r+0x66>
 8005802:	f01c 0f01 	tst.w	ip, #1
 8005806:	440a      	add	r2, r1
 8005808:	d107      	bne.n	800581a <_free_r+0xea>
 800580a:	f854 3c08 	ldr.w	r3, [r4, #-8]
 800580e:	1aed      	subs	r5, r5, r3
 8005810:	441a      	add	r2, r3
 8005812:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8005816:	60cb      	str	r3, [r1, #12]
 8005818:	6099      	str	r1, [r3, #8]
 800581a:	4b3d      	ldr	r3, [pc, #244]	; (8005910 <_free_r+0x1e0>)
 800581c:	681b      	ldr	r3, [r3, #0]
 800581e:	f042 0101 	orr.w	r1, r2, #1
 8005822:	4293      	cmp	r3, r2
 8005824:	6069      	str	r1, [r5, #4]
 8005826:	60bd      	str	r5, [r7, #8]
 8005828:	d804      	bhi.n	8005834 <_free_r+0x104>
 800582a:	4b3a      	ldr	r3, [pc, #232]	; (8005914 <_free_r+0x1e4>)
 800582c:	4630      	mov	r0, r6
 800582e:	6819      	ldr	r1, [r3, #0]
 8005830:	f7ff ff2e 	bl	8005690 <_malloc_trim_r>
 8005834:	4630      	mov	r0, r6
 8005836:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800583a:	f7fc bfb7 	b.w	80027ac <__malloc_unlock>
 800583e:	08c9      	lsrs	r1, r1, #3
 8005840:	6878      	ldr	r0, [r7, #4]
 8005842:	1c4a      	adds	r2, r1, #1
 8005844:	2301      	movs	r3, #1
 8005846:	1089      	asrs	r1, r1, #2
 8005848:	408b      	lsls	r3, r1
 800584a:	4303      	orrs	r3, r0
 800584c:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005850:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005854:	607b      	str	r3, [r7, #4]
 8005856:	3908      	subs	r1, #8
 8005858:	e9c5 0102 	strd	r0, r1, [r5, #8]
 800585c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005860:	60c5      	str	r5, [r0, #12]
 8005862:	4630      	mov	r0, r6
 8005864:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005868:	f7fc bfa0 	b.w	80027ac <__malloc_unlock>
 800586c:	2800      	cmp	r0, #0
 800586e:	d145      	bne.n	80058fc <_free_r+0x1cc>
 8005870:	440a      	add	r2, r1
 8005872:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005876:	f042 0001 	orr.w	r0, r2, #1
 800587a:	60cb      	str	r3, [r1, #12]
 800587c:	6099      	str	r1, [r3, #8]
 800587e:	6068      	str	r0, [r5, #4]
 8005880:	50aa      	str	r2, [r5, r2]
 8005882:	e7d7      	b.n	8005834 <_free_r+0x104>
 8005884:	2b14      	cmp	r3, #20
 8005886:	d908      	bls.n	800589a <_free_r+0x16a>
 8005888:	2b54      	cmp	r3, #84	; 0x54
 800588a:	d81e      	bhi.n	80058ca <_free_r+0x19a>
 800588c:	0b0b      	lsrs	r3, r1, #12
 800588e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005892:	00e4      	lsls	r4, r4, #3
 8005894:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005898:	e789      	b.n	80057ae <_free_r+0x7e>
 800589a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 800589e:	00e4      	lsls	r4, r4, #3
 80058a0:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80058a4:	e783      	b.n	80057ae <_free_r+0x7e>
 80058a6:	4618      	mov	r0, r3
 80058a8:	e78e      	b.n	80057c8 <_free_r+0x98>
 80058aa:	1093      	asrs	r3, r2, #2
 80058ac:	6879      	ldr	r1, [r7, #4]
 80058ae:	2201      	movs	r2, #1
 80058b0:	fa02 f303 	lsl.w	r3, r2, r3
 80058b4:	430b      	orrs	r3, r1
 80058b6:	607b      	str	r3, [r7, #4]
 80058b8:	4603      	mov	r3, r0
 80058ba:	e786      	b.n	80057ca <_free_r+0x9a>
 80058bc:	e9c7 5504 	strd	r5, r5, [r7, #16]
 80058c0:	e9c5 0002 	strd	r0, r0, [r5, #8]
 80058c4:	606a      	str	r2, [r5, #4]
 80058c6:	5069      	str	r1, [r5, r1]
 80058c8:	e7b4      	b.n	8005834 <_free_r+0x104>
 80058ca:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80058ce:	d806      	bhi.n	80058de <_free_r+0x1ae>
 80058d0:	0bcb      	lsrs	r3, r1, #15
 80058d2:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80058d6:	00e4      	lsls	r4, r4, #3
 80058d8:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80058dc:	e767      	b.n	80057ae <_free_r+0x7e>
 80058de:	f240 5254 	movw	r2, #1364	; 0x554
 80058e2:	4293      	cmp	r3, r2
 80058e4:	d806      	bhi.n	80058f4 <_free_r+0x1c4>
 80058e6:	0c8b      	lsrs	r3, r1, #18
 80058e8:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80058ec:	00e4      	lsls	r4, r4, #3
 80058ee:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80058f2:	e75c      	b.n	80057ae <_free_r+0x7e>
 80058f4:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80058f8:	227e      	movs	r2, #126	; 0x7e
 80058fa:	e758      	b.n	80057ae <_free_r+0x7e>
 80058fc:	f041 0201 	orr.w	r2, r1, #1
 8005900:	606a      	str	r2, [r5, #4]
 8005902:	6019      	str	r1, [r3, #0]
 8005904:	e796      	b.n	8005834 <_free_r+0x104>
 8005906:	bf00      	nop
 8005908:	200005d8 	.word	0x200005d8
 800590c:	200005e0 	.word	0x200005e0
 8005910:	200009e4 	.word	0x200009e4
 8005914:	20000c2c 	.word	0x20000c2c

08005918 <__sfvwrite_r>:
 8005918:	6893      	ldr	r3, [r2, #8]
 800591a:	2b00      	cmp	r3, #0
 800591c:	f000 80e4 	beq.w	8005ae8 <__sfvwrite_r+0x1d0>
 8005920:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005924:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005928:	b29b      	uxth	r3, r3
 800592a:	460c      	mov	r4, r1
 800592c:	0719      	lsls	r1, r3, #28
 800592e:	b083      	sub	sp, #12
 8005930:	4682      	mov	sl, r0
 8005932:	4690      	mov	r8, r2
 8005934:	d535      	bpl.n	80059a2 <__sfvwrite_r+0x8a>
 8005936:	6922      	ldr	r2, [r4, #16]
 8005938:	b39a      	cbz	r2, 80059a2 <__sfvwrite_r+0x8a>
 800593a:	f013 0202 	ands.w	r2, r3, #2
 800593e:	f8d8 6000 	ldr.w	r6, [r8]
 8005942:	d03d      	beq.n	80059c0 <__sfvwrite_r+0xa8>
 8005944:	2700      	movs	r7, #0
 8005946:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 800594a:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800594e:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005c10 <__sfvwrite_r+0x2f8>
 8005952:	463d      	mov	r5, r7
 8005954:	454d      	cmp	r5, r9
 8005956:	462b      	mov	r3, r5
 8005958:	463a      	mov	r2, r7
 800595a:	bf28      	it	cs
 800595c:	464b      	movcs	r3, r9
 800595e:	4661      	mov	r1, ip
 8005960:	4650      	mov	r0, sl
 8005962:	b1d5      	cbz	r5, 800599a <__sfvwrite_r+0x82>
 8005964:	47d8      	blx	fp
 8005966:	2800      	cmp	r0, #0
 8005968:	f340 80c6 	ble.w	8005af8 <__sfvwrite_r+0x1e0>
 800596c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005970:	1a1b      	subs	r3, r3, r0
 8005972:	4407      	add	r7, r0
 8005974:	1a2d      	subs	r5, r5, r0
 8005976:	f8c8 3008 	str.w	r3, [r8, #8]
 800597a:	2b00      	cmp	r3, #0
 800597c:	f000 80b0 	beq.w	8005ae0 <__sfvwrite_r+0x1c8>
 8005980:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005984:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005988:	454d      	cmp	r5, r9
 800598a:	462b      	mov	r3, r5
 800598c:	463a      	mov	r2, r7
 800598e:	bf28      	it	cs
 8005990:	464b      	movcs	r3, r9
 8005992:	4661      	mov	r1, ip
 8005994:	4650      	mov	r0, sl
 8005996:	2d00      	cmp	r5, #0
 8005998:	d1e4      	bne.n	8005964 <__sfvwrite_r+0x4c>
 800599a:	e9d6 7500 	ldrd	r7, r5, [r6]
 800599e:	3608      	adds	r6, #8
 80059a0:	e7d8      	b.n	8005954 <__sfvwrite_r+0x3c>
 80059a2:	4621      	mov	r1, r4
 80059a4:	4650      	mov	r0, sl
 80059a6:	f7fe fd03 	bl	80043b0 <__swsetup_r>
 80059aa:	2800      	cmp	r0, #0
 80059ac:	f040 812a 	bne.w	8005c04 <__sfvwrite_r+0x2ec>
 80059b0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80059b4:	f8d8 6000 	ldr.w	r6, [r8]
 80059b8:	b29b      	uxth	r3, r3
 80059ba:	f013 0202 	ands.w	r2, r3, #2
 80059be:	d1c1      	bne.n	8005944 <__sfvwrite_r+0x2c>
 80059c0:	f013 0901 	ands.w	r9, r3, #1
 80059c4:	d15d      	bne.n	8005a82 <__sfvwrite_r+0x16a>
 80059c6:	68a7      	ldr	r7, [r4, #8]
 80059c8:	6820      	ldr	r0, [r4, #0]
 80059ca:	464d      	mov	r5, r9
 80059cc:	2d00      	cmp	r5, #0
 80059ce:	d054      	beq.n	8005a7a <__sfvwrite_r+0x162>
 80059d0:	059a      	lsls	r2, r3, #22
 80059d2:	f140 809b 	bpl.w	8005b0c <__sfvwrite_r+0x1f4>
 80059d6:	42af      	cmp	r7, r5
 80059d8:	46bb      	mov	fp, r7
 80059da:	f200 80d8 	bhi.w	8005b8e <__sfvwrite_r+0x276>
 80059de:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80059e2:	d02f      	beq.n	8005a44 <__sfvwrite_r+0x12c>
 80059e4:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80059e8:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80059ec:	eba0 0b01 	sub.w	fp, r0, r1
 80059f0:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80059f4:	1c68      	adds	r0, r5, #1
 80059f6:	107f      	asrs	r7, r7, #1
 80059f8:	4458      	add	r0, fp
 80059fa:	42b8      	cmp	r0, r7
 80059fc:	463a      	mov	r2, r7
 80059fe:	bf84      	itt	hi
 8005a00:	4607      	movhi	r7, r0
 8005a02:	463a      	movhi	r2, r7
 8005a04:	055b      	lsls	r3, r3, #21
 8005a06:	f140 80d3 	bpl.w	8005bb0 <__sfvwrite_r+0x298>
 8005a0a:	4611      	mov	r1, r2
 8005a0c:	4650      	mov	r0, sl
 8005a0e:	f7fc fbd9 	bl	80021c4 <_malloc_r>
 8005a12:	2800      	cmp	r0, #0
 8005a14:	f000 80f0 	beq.w	8005bf8 <__sfvwrite_r+0x2e0>
 8005a18:	465a      	mov	r2, fp
 8005a1a:	6921      	ldr	r1, [r4, #16]
 8005a1c:	9001      	str	r0, [sp, #4]
 8005a1e:	f7fa fd6f 	bl	8000500 <memcpy>
 8005a22:	89a2      	ldrh	r2, [r4, #12]
 8005a24:	9b01      	ldr	r3, [sp, #4]
 8005a26:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005a2a:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005a2e:	81a2      	strh	r2, [r4, #12]
 8005a30:	eba7 020b 	sub.w	r2, r7, fp
 8005a34:	eb03 000b 	add.w	r0, r3, fp
 8005a38:	6167      	str	r7, [r4, #20]
 8005a3a:	6123      	str	r3, [r4, #16]
 8005a3c:	6020      	str	r0, [r4, #0]
 8005a3e:	60a2      	str	r2, [r4, #8]
 8005a40:	462f      	mov	r7, r5
 8005a42:	46ab      	mov	fp, r5
 8005a44:	465a      	mov	r2, fp
 8005a46:	4649      	mov	r1, r9
 8005a48:	f000 f99c 	bl	8005d84 <memmove>
 8005a4c:	68a2      	ldr	r2, [r4, #8]
 8005a4e:	6823      	ldr	r3, [r4, #0]
 8005a50:	1bd2      	subs	r2, r2, r7
 8005a52:	445b      	add	r3, fp
 8005a54:	462f      	mov	r7, r5
 8005a56:	60a2      	str	r2, [r4, #8]
 8005a58:	6023      	str	r3, [r4, #0]
 8005a5a:	2500      	movs	r5, #0
 8005a5c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005a60:	1bdb      	subs	r3, r3, r7
 8005a62:	44b9      	add	r9, r7
 8005a64:	f8c8 3008 	str.w	r3, [r8, #8]
 8005a68:	2b00      	cmp	r3, #0
 8005a6a:	d039      	beq.n	8005ae0 <__sfvwrite_r+0x1c8>
 8005a6c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a70:	68a7      	ldr	r7, [r4, #8]
 8005a72:	6820      	ldr	r0, [r4, #0]
 8005a74:	b29b      	uxth	r3, r3
 8005a76:	2d00      	cmp	r5, #0
 8005a78:	d1aa      	bne.n	80059d0 <__sfvwrite_r+0xb8>
 8005a7a:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005a7e:	3608      	adds	r6, #8
 8005a80:	e7a4      	b.n	80059cc <__sfvwrite_r+0xb4>
 8005a82:	4633      	mov	r3, r6
 8005a84:	4691      	mov	r9, r2
 8005a86:	4610      	mov	r0, r2
 8005a88:	4617      	mov	r7, r2
 8005a8a:	464e      	mov	r6, r9
 8005a8c:	469b      	mov	fp, r3
 8005a8e:	2f00      	cmp	r7, #0
 8005a90:	d06b      	beq.n	8005b6a <__sfvwrite_r+0x252>
 8005a92:	2800      	cmp	r0, #0
 8005a94:	d071      	beq.n	8005b7a <__sfvwrite_r+0x262>
 8005a96:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005a9a:	6820      	ldr	r0, [r4, #0]
 8005a9c:	45b9      	cmp	r9, r7
 8005a9e:	464b      	mov	r3, r9
 8005aa0:	bf28      	it	cs
 8005aa2:	463b      	movcs	r3, r7
 8005aa4:	4288      	cmp	r0, r1
 8005aa6:	d903      	bls.n	8005ab0 <__sfvwrite_r+0x198>
 8005aa8:	68a5      	ldr	r5, [r4, #8]
 8005aaa:	4415      	add	r5, r2
 8005aac:	42ab      	cmp	r3, r5
 8005aae:	dc71      	bgt.n	8005b94 <__sfvwrite_r+0x27c>
 8005ab0:	429a      	cmp	r2, r3
 8005ab2:	f300 8093 	bgt.w	8005bdc <__sfvwrite_r+0x2c4>
 8005ab6:	4613      	mov	r3, r2
 8005ab8:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005aba:	69e1      	ldr	r1, [r4, #28]
 8005abc:	4632      	mov	r2, r6
 8005abe:	4650      	mov	r0, sl
 8005ac0:	47a8      	blx	r5
 8005ac2:	1e05      	subs	r5, r0, #0
 8005ac4:	dd18      	ble.n	8005af8 <__sfvwrite_r+0x1e0>
 8005ac6:	ebb9 0905 	subs.w	r9, r9, r5
 8005aca:	d00f      	beq.n	8005aec <__sfvwrite_r+0x1d4>
 8005acc:	2001      	movs	r0, #1
 8005ace:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005ad2:	1b5b      	subs	r3, r3, r5
 8005ad4:	442e      	add	r6, r5
 8005ad6:	1b7f      	subs	r7, r7, r5
 8005ad8:	f8c8 3008 	str.w	r3, [r8, #8]
 8005adc:	2b00      	cmp	r3, #0
 8005ade:	d1d6      	bne.n	8005a8e <__sfvwrite_r+0x176>
 8005ae0:	2000      	movs	r0, #0
 8005ae2:	b003      	add	sp, #12
 8005ae4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ae8:	2000      	movs	r0, #0
 8005aea:	4770      	bx	lr
 8005aec:	4621      	mov	r1, r4
 8005aee:	4650      	mov	r0, sl
 8005af0:	f7ff fd20 	bl	8005534 <_fflush_r>
 8005af4:	2800      	cmp	r0, #0
 8005af6:	d0ea      	beq.n	8005ace <__sfvwrite_r+0x1b6>
 8005af8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005afc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005b00:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005b04:	81a3      	strh	r3, [r4, #12]
 8005b06:	b003      	add	sp, #12
 8005b08:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b0c:	6923      	ldr	r3, [r4, #16]
 8005b0e:	4283      	cmp	r3, r0
 8005b10:	d315      	bcc.n	8005b3e <__sfvwrite_r+0x226>
 8005b12:	6961      	ldr	r1, [r4, #20]
 8005b14:	42a9      	cmp	r1, r5
 8005b16:	d812      	bhi.n	8005b3e <__sfvwrite_r+0x226>
 8005b18:	4b3c      	ldr	r3, [pc, #240]	; (8005c0c <__sfvwrite_r+0x2f4>)
 8005b1a:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005b1c:	429d      	cmp	r5, r3
 8005b1e:	bf94      	ite	ls
 8005b20:	462b      	movls	r3, r5
 8005b22:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005b26:	464a      	mov	r2, r9
 8005b28:	fb93 f3f1 	sdiv	r3, r3, r1
 8005b2c:	4650      	mov	r0, sl
 8005b2e:	fb01 f303 	mul.w	r3, r1, r3
 8005b32:	69e1      	ldr	r1, [r4, #28]
 8005b34:	47b8      	blx	r7
 8005b36:	1e07      	subs	r7, r0, #0
 8005b38:	ddde      	ble.n	8005af8 <__sfvwrite_r+0x1e0>
 8005b3a:	1bed      	subs	r5, r5, r7
 8005b3c:	e78e      	b.n	8005a5c <__sfvwrite_r+0x144>
 8005b3e:	42af      	cmp	r7, r5
 8005b40:	bf28      	it	cs
 8005b42:	462f      	movcs	r7, r5
 8005b44:	463a      	mov	r2, r7
 8005b46:	4649      	mov	r1, r9
 8005b48:	f000 f91c 	bl	8005d84 <memmove>
 8005b4c:	68a3      	ldr	r3, [r4, #8]
 8005b4e:	6822      	ldr	r2, [r4, #0]
 8005b50:	1bdb      	subs	r3, r3, r7
 8005b52:	443a      	add	r2, r7
 8005b54:	60a3      	str	r3, [r4, #8]
 8005b56:	6022      	str	r2, [r4, #0]
 8005b58:	2b00      	cmp	r3, #0
 8005b5a:	d1ee      	bne.n	8005b3a <__sfvwrite_r+0x222>
 8005b5c:	4621      	mov	r1, r4
 8005b5e:	4650      	mov	r0, sl
 8005b60:	f7ff fce8 	bl	8005534 <_fflush_r>
 8005b64:	2800      	cmp	r0, #0
 8005b66:	d0e8      	beq.n	8005b3a <__sfvwrite_r+0x222>
 8005b68:	e7c6      	b.n	8005af8 <__sfvwrite_r+0x1e0>
 8005b6a:	f10b 0308 	add.w	r3, fp, #8
 8005b6e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005b72:	469b      	mov	fp, r3
 8005b74:	3308      	adds	r3, #8
 8005b76:	2f00      	cmp	r7, #0
 8005b78:	d0f9      	beq.n	8005b6e <__sfvwrite_r+0x256>
 8005b7a:	463a      	mov	r2, r7
 8005b7c:	210a      	movs	r1, #10
 8005b7e:	4630      	mov	r0, r6
 8005b80:	f7fa fdce 	bl	8000720 <memchr>
 8005b84:	b338      	cbz	r0, 8005bd6 <__sfvwrite_r+0x2be>
 8005b86:	3001      	adds	r0, #1
 8005b88:	eba0 0906 	sub.w	r9, r0, r6
 8005b8c:	e783      	b.n	8005a96 <__sfvwrite_r+0x17e>
 8005b8e:	462f      	mov	r7, r5
 8005b90:	46ab      	mov	fp, r5
 8005b92:	e757      	b.n	8005a44 <__sfvwrite_r+0x12c>
 8005b94:	4631      	mov	r1, r6
 8005b96:	462a      	mov	r2, r5
 8005b98:	f000 f8f4 	bl	8005d84 <memmove>
 8005b9c:	6823      	ldr	r3, [r4, #0]
 8005b9e:	442b      	add	r3, r5
 8005ba0:	6023      	str	r3, [r4, #0]
 8005ba2:	4621      	mov	r1, r4
 8005ba4:	4650      	mov	r0, sl
 8005ba6:	f7ff fcc5 	bl	8005534 <_fflush_r>
 8005baa:	2800      	cmp	r0, #0
 8005bac:	d08b      	beq.n	8005ac6 <__sfvwrite_r+0x1ae>
 8005bae:	e7a3      	b.n	8005af8 <__sfvwrite_r+0x1e0>
 8005bb0:	4650      	mov	r0, sl
 8005bb2:	f000 fc55 	bl	8006460 <_realloc_r>
 8005bb6:	4603      	mov	r3, r0
 8005bb8:	2800      	cmp	r0, #0
 8005bba:	f47f af39 	bne.w	8005a30 <__sfvwrite_r+0x118>
 8005bbe:	6921      	ldr	r1, [r4, #16]
 8005bc0:	4650      	mov	r0, sl
 8005bc2:	f7ff fdb5 	bl	8005730 <_free_r>
 8005bc6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005bca:	220c      	movs	r2, #12
 8005bcc:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005bd0:	f8ca 2000 	str.w	r2, [sl]
 8005bd4:	e792      	b.n	8005afc <__sfvwrite_r+0x1e4>
 8005bd6:	f107 0901 	add.w	r9, r7, #1
 8005bda:	e75c      	b.n	8005a96 <__sfvwrite_r+0x17e>
 8005bdc:	461a      	mov	r2, r3
 8005bde:	4631      	mov	r1, r6
 8005be0:	9301      	str	r3, [sp, #4]
 8005be2:	f000 f8cf 	bl	8005d84 <memmove>
 8005be6:	9b01      	ldr	r3, [sp, #4]
 8005be8:	68a1      	ldr	r1, [r4, #8]
 8005bea:	6822      	ldr	r2, [r4, #0]
 8005bec:	1ac9      	subs	r1, r1, r3
 8005bee:	441a      	add	r2, r3
 8005bf0:	60a1      	str	r1, [r4, #8]
 8005bf2:	6022      	str	r2, [r4, #0]
 8005bf4:	461d      	mov	r5, r3
 8005bf6:	e766      	b.n	8005ac6 <__sfvwrite_r+0x1ae>
 8005bf8:	230c      	movs	r3, #12
 8005bfa:	f8ca 3000 	str.w	r3, [sl]
 8005bfe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c02:	e77b      	b.n	8005afc <__sfvwrite_r+0x1e4>
 8005c04:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005c08:	e76b      	b.n	8005ae2 <__sfvwrite_r+0x1ca>
 8005c0a:	bf00      	nop
 8005c0c:	7ffffffe 	.word	0x7ffffffe
 8005c10:	7ffffc00 	.word	0x7ffffc00

08005c14 <_fwalk_reent>:
 8005c14:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005c18:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005c1c:	d01f      	beq.n	8005c5e <_fwalk_reent+0x4a>
 8005c1e:	4688      	mov	r8, r1
 8005c20:	4606      	mov	r6, r0
 8005c22:	f04f 0900 	mov.w	r9, #0
 8005c26:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005c2a:	3d01      	subs	r5, #1
 8005c2c:	d411      	bmi.n	8005c52 <_fwalk_reent+0x3e>
 8005c2e:	89a3      	ldrh	r3, [r4, #12]
 8005c30:	2b01      	cmp	r3, #1
 8005c32:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005c36:	4621      	mov	r1, r4
 8005c38:	4630      	mov	r0, r6
 8005c3a:	d906      	bls.n	8005c4a <_fwalk_reent+0x36>
 8005c3c:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005c40:	3301      	adds	r3, #1
 8005c42:	d002      	beq.n	8005c4a <_fwalk_reent+0x36>
 8005c44:	47c0      	blx	r8
 8005c46:	ea49 0900 	orr.w	r9, r9, r0
 8005c4a:	1c6b      	adds	r3, r5, #1
 8005c4c:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005c50:	d1ed      	bne.n	8005c2e <_fwalk_reent+0x1a>
 8005c52:	683f      	ldr	r7, [r7, #0]
 8005c54:	2f00      	cmp	r7, #0
 8005c56:	d1e6      	bne.n	8005c26 <_fwalk_reent+0x12>
 8005c58:	4648      	mov	r0, r9
 8005c5a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005c5e:	46b9      	mov	r9, r7
 8005c60:	4648      	mov	r0, r9
 8005c62:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005c66:	bf00      	nop

08005c68 <_localeconv_r>:
 8005c68:	4a04      	ldr	r2, [pc, #16]	; (8005c7c <_localeconv_r+0x14>)
 8005c6a:	4b05      	ldr	r3, [pc, #20]	; (8005c80 <_localeconv_r+0x18>)
 8005c6c:	6812      	ldr	r2, [r2, #0]
 8005c6e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005c70:	2800      	cmp	r0, #0
 8005c72:	bf08      	it	eq
 8005c74:	4618      	moveq	r0, r3
 8005c76:	30f0      	adds	r0, #240	; 0xf0
 8005c78:	4770      	bx	lr
 8005c7a:	bf00      	nop
 8005c7c:	200001a8 	.word	0x200001a8
 8005c80:	200009ec 	.word	0x200009ec

08005c84 <__retarget_lock_init_recursive>:
 8005c84:	4770      	bx	lr
 8005c86:	bf00      	nop

08005c88 <__retarget_lock_close_recursive>:
 8005c88:	4770      	bx	lr
 8005c8a:	bf00      	nop

08005c8c <__retarget_lock_acquire_recursive>:
 8005c8c:	4770      	bx	lr
 8005c8e:	bf00      	nop

08005c90 <__retarget_lock_release_recursive>:
 8005c90:	4770      	bx	lr
 8005c92:	bf00      	nop

08005c94 <__swhatbuf_r>:
 8005c94:	b570      	push	{r4, r5, r6, lr}
 8005c96:	460c      	mov	r4, r1
 8005c98:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005c9c:	2900      	cmp	r1, #0
 8005c9e:	b096      	sub	sp, #88	; 0x58
 8005ca0:	4615      	mov	r5, r2
 8005ca2:	461e      	mov	r6, r3
 8005ca4:	da0f      	bge.n	8005cc6 <__swhatbuf_r+0x32>
 8005ca6:	89a2      	ldrh	r2, [r4, #12]
 8005ca8:	2300      	movs	r3, #0
 8005caa:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005cae:	6033      	str	r3, [r6, #0]
 8005cb0:	d104      	bne.n	8005cbc <__swhatbuf_r+0x28>
 8005cb2:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005cb6:	602b      	str	r3, [r5, #0]
 8005cb8:	b016      	add	sp, #88	; 0x58
 8005cba:	bd70      	pop	{r4, r5, r6, pc}
 8005cbc:	2240      	movs	r2, #64	; 0x40
 8005cbe:	4618      	mov	r0, r3
 8005cc0:	602a      	str	r2, [r5, #0]
 8005cc2:	b016      	add	sp, #88	; 0x58
 8005cc4:	bd70      	pop	{r4, r5, r6, pc}
 8005cc6:	466a      	mov	r2, sp
 8005cc8:	f001 f80e 	bl	8006ce8 <_fstat_r>
 8005ccc:	2800      	cmp	r0, #0
 8005cce:	dbea      	blt.n	8005ca6 <__swhatbuf_r+0x12>
 8005cd0:	9b01      	ldr	r3, [sp, #4]
 8005cd2:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005cd6:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005cda:	fab3 f383 	clz	r3, r3
 8005cde:	095b      	lsrs	r3, r3, #5
 8005ce0:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005ce4:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005ce8:	6033      	str	r3, [r6, #0]
 8005cea:	602a      	str	r2, [r5, #0]
 8005cec:	b016      	add	sp, #88	; 0x58
 8005cee:	bd70      	pop	{r4, r5, r6, pc}

08005cf0 <__smakebuf_r>:
 8005cf0:	898a      	ldrh	r2, [r1, #12]
 8005cf2:	0792      	lsls	r2, r2, #30
 8005cf4:	460b      	mov	r3, r1
 8005cf6:	d506      	bpl.n	8005d06 <__smakebuf_r+0x16>
 8005cf8:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005cfc:	2101      	movs	r1, #1
 8005cfe:	601a      	str	r2, [r3, #0]
 8005d00:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005d04:	4770      	bx	lr
 8005d06:	b570      	push	{r4, r5, r6, lr}
 8005d08:	b082      	sub	sp, #8
 8005d0a:	ab01      	add	r3, sp, #4
 8005d0c:	466a      	mov	r2, sp
 8005d0e:	460c      	mov	r4, r1
 8005d10:	4605      	mov	r5, r0
 8005d12:	f7ff ffbf 	bl	8005c94 <__swhatbuf_r>
 8005d16:	9900      	ldr	r1, [sp, #0]
 8005d18:	4606      	mov	r6, r0
 8005d1a:	4628      	mov	r0, r5
 8005d1c:	f7fc fa52 	bl	80021c4 <_malloc_r>
 8005d20:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005d24:	b1d8      	cbz	r0, 8005d5e <__smakebuf_r+0x6e>
 8005d26:	4916      	ldr	r1, [pc, #88]	; (8005d80 <__smakebuf_r+0x90>)
 8005d28:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005d2a:	9a01      	ldr	r2, [sp, #4]
 8005d2c:	9900      	ldr	r1, [sp, #0]
 8005d2e:	6020      	str	r0, [r4, #0]
 8005d30:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005d34:	81a3      	strh	r3, [r4, #12]
 8005d36:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005d3a:	b91a      	cbnz	r2, 8005d44 <__smakebuf_r+0x54>
 8005d3c:	4333      	orrs	r3, r6
 8005d3e:	81a3      	strh	r3, [r4, #12]
 8005d40:	b002      	add	sp, #8
 8005d42:	bd70      	pop	{r4, r5, r6, pc}
 8005d44:	4628      	mov	r0, r5
 8005d46:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005d4a:	f000 ffe1 	bl	8006d10 <_isatty_r>
 8005d4e:	b1a0      	cbz	r0, 8005d7a <__smakebuf_r+0x8a>
 8005d50:	89a3      	ldrh	r3, [r4, #12]
 8005d52:	f023 0303 	bic.w	r3, r3, #3
 8005d56:	f043 0301 	orr.w	r3, r3, #1
 8005d5a:	b21b      	sxth	r3, r3
 8005d5c:	e7ee      	b.n	8005d3c <__smakebuf_r+0x4c>
 8005d5e:	059a      	lsls	r2, r3, #22
 8005d60:	d4ee      	bmi.n	8005d40 <__smakebuf_r+0x50>
 8005d62:	f023 0303 	bic.w	r3, r3, #3
 8005d66:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005d6a:	f043 0302 	orr.w	r3, r3, #2
 8005d6e:	2101      	movs	r1, #1
 8005d70:	81a3      	strh	r3, [r4, #12]
 8005d72:	6022      	str	r2, [r4, #0]
 8005d74:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005d78:	e7e2      	b.n	8005d40 <__smakebuf_r+0x50>
 8005d7a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005d7e:	e7dd      	b.n	8005d3c <__smakebuf_r+0x4c>
 8005d80:	080055e1 	.word	0x080055e1

08005d84 <memmove>:
 8005d84:	4288      	cmp	r0, r1
 8005d86:	b4f0      	push	{r4, r5, r6, r7}
 8005d88:	d90d      	bls.n	8005da6 <memmove+0x22>
 8005d8a:	188b      	adds	r3, r1, r2
 8005d8c:	4283      	cmp	r3, r0
 8005d8e:	d90a      	bls.n	8005da6 <memmove+0x22>
 8005d90:	1884      	adds	r4, r0, r2
 8005d92:	b132      	cbz	r2, 8005da2 <memmove+0x1e>
 8005d94:	4622      	mov	r2, r4
 8005d96:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005d9a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005d9e:	4299      	cmp	r1, r3
 8005da0:	d1f9      	bne.n	8005d96 <memmove+0x12>
 8005da2:	bcf0      	pop	{r4, r5, r6, r7}
 8005da4:	4770      	bx	lr
 8005da6:	2a0f      	cmp	r2, #15
 8005da8:	d949      	bls.n	8005e3e <memmove+0xba>
 8005daa:	ea40 0301 	orr.w	r3, r0, r1
 8005dae:	079b      	lsls	r3, r3, #30
 8005db0:	d147      	bne.n	8005e42 <memmove+0xbe>
 8005db2:	f1a2 0310 	sub.w	r3, r2, #16
 8005db6:	091b      	lsrs	r3, r3, #4
 8005db8:	f101 0720 	add.w	r7, r1, #32
 8005dbc:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005dc0:	f101 0410 	add.w	r4, r1, #16
 8005dc4:	f100 0510 	add.w	r5, r0, #16
 8005dc8:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005dcc:	f845 6c10 	str.w	r6, [r5, #-16]
 8005dd0:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005dd4:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005dd8:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005ddc:	f845 6c08 	str.w	r6, [r5, #-8]
 8005de0:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005de4:	f845 6c04 	str.w	r6, [r5, #-4]
 8005de8:	3410      	adds	r4, #16
 8005dea:	42bc      	cmp	r4, r7
 8005dec:	f105 0510 	add.w	r5, r5, #16
 8005df0:	d1ea      	bne.n	8005dc8 <memmove+0x44>
 8005df2:	3301      	adds	r3, #1
 8005df4:	f002 050f 	and.w	r5, r2, #15
 8005df8:	011b      	lsls	r3, r3, #4
 8005dfa:	2d03      	cmp	r5, #3
 8005dfc:	4419      	add	r1, r3
 8005dfe:	4403      	add	r3, r0
 8005e00:	d921      	bls.n	8005e46 <memmove+0xc2>
 8005e02:	1f1f      	subs	r7, r3, #4
 8005e04:	460e      	mov	r6, r1
 8005e06:	462c      	mov	r4, r5
 8005e08:	3c04      	subs	r4, #4
 8005e0a:	f856 cb04 	ldr.w	ip, [r6], #4
 8005e0e:	f847 cf04 	str.w	ip, [r7, #4]!
 8005e12:	2c03      	cmp	r4, #3
 8005e14:	d8f8      	bhi.n	8005e08 <memmove+0x84>
 8005e16:	1f2c      	subs	r4, r5, #4
 8005e18:	f024 0403 	bic.w	r4, r4, #3
 8005e1c:	3404      	adds	r4, #4
 8005e1e:	4423      	add	r3, r4
 8005e20:	4421      	add	r1, r4
 8005e22:	f002 0203 	and.w	r2, r2, #3
 8005e26:	2a00      	cmp	r2, #0
 8005e28:	d0bb      	beq.n	8005da2 <memmove+0x1e>
 8005e2a:	3b01      	subs	r3, #1
 8005e2c:	440a      	add	r2, r1
 8005e2e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005e32:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005e36:	4291      	cmp	r1, r2
 8005e38:	d1f9      	bne.n	8005e2e <memmove+0xaa>
 8005e3a:	bcf0      	pop	{r4, r5, r6, r7}
 8005e3c:	4770      	bx	lr
 8005e3e:	4603      	mov	r3, r0
 8005e40:	e7f1      	b.n	8005e26 <memmove+0xa2>
 8005e42:	4603      	mov	r3, r0
 8005e44:	e7f1      	b.n	8005e2a <memmove+0xa6>
 8005e46:	462a      	mov	r2, r5
 8005e48:	e7ed      	b.n	8005e26 <memmove+0xa2>
 8005e4a:	bf00      	nop

08005e4c <_Balloc>:
 8005e4c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005e4e:	b570      	push	{r4, r5, r6, lr}
 8005e50:	4605      	mov	r5, r0
 8005e52:	460c      	mov	r4, r1
 8005e54:	b14b      	cbz	r3, 8005e6a <_Balloc+0x1e>
 8005e56:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005e5a:	b180      	cbz	r0, 8005e7e <_Balloc+0x32>
 8005e5c:	6802      	ldr	r2, [r0, #0]
 8005e5e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005e62:	2300      	movs	r3, #0
 8005e64:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005e68:	bd70      	pop	{r4, r5, r6, pc}
 8005e6a:	2221      	movs	r2, #33	; 0x21
 8005e6c:	2104      	movs	r1, #4
 8005e6e:	f000 fe0b 	bl	8006a88 <_calloc_r>
 8005e72:	4603      	mov	r3, r0
 8005e74:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005e76:	2800      	cmp	r0, #0
 8005e78:	d1ed      	bne.n	8005e56 <_Balloc+0xa>
 8005e7a:	2000      	movs	r0, #0
 8005e7c:	bd70      	pop	{r4, r5, r6, pc}
 8005e7e:	2101      	movs	r1, #1
 8005e80:	fa01 f604 	lsl.w	r6, r1, r4
 8005e84:	1d72      	adds	r2, r6, #5
 8005e86:	4628      	mov	r0, r5
 8005e88:	0092      	lsls	r2, r2, #2
 8005e8a:	f000 fdfd 	bl	8006a88 <_calloc_r>
 8005e8e:	2800      	cmp	r0, #0
 8005e90:	d0f3      	beq.n	8005e7a <_Balloc+0x2e>
 8005e92:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005e96:	e7e4      	b.n	8005e62 <_Balloc+0x16>

08005e98 <_Bfree>:
 8005e98:	b131      	cbz	r1, 8005ea8 <_Bfree+0x10>
 8005e9a:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005e9c:	684a      	ldr	r2, [r1, #4]
 8005e9e:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005ea2:	6008      	str	r0, [r1, #0]
 8005ea4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005ea8:	4770      	bx	lr
 8005eaa:	bf00      	nop

08005eac <__multadd>:
 8005eac:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005eae:	690c      	ldr	r4, [r1, #16]
 8005eb0:	b083      	sub	sp, #12
 8005eb2:	460d      	mov	r5, r1
 8005eb4:	4606      	mov	r6, r0
 8005eb6:	f101 0c14 	add.w	ip, r1, #20
 8005eba:	2700      	movs	r7, #0
 8005ebc:	f8dc 0000 	ldr.w	r0, [ip]
 8005ec0:	b281      	uxth	r1, r0
 8005ec2:	fb02 3301 	mla	r3, r2, r1, r3
 8005ec6:	0c01      	lsrs	r1, r0, #16
 8005ec8:	0c18      	lsrs	r0, r3, #16
 8005eca:	fb02 0101 	mla	r1, r2, r1, r0
 8005ece:	b29b      	uxth	r3, r3
 8005ed0:	3701      	adds	r7, #1
 8005ed2:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005ed6:	42bc      	cmp	r4, r7
 8005ed8:	f84c 3b04 	str.w	r3, [ip], #4
 8005edc:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8005ee0:	dcec      	bgt.n	8005ebc <__multadd+0x10>
 8005ee2:	b13b      	cbz	r3, 8005ef4 <__multadd+0x48>
 8005ee4:	68aa      	ldr	r2, [r5, #8]
 8005ee6:	42a2      	cmp	r2, r4
 8005ee8:	dd07      	ble.n	8005efa <__multadd+0x4e>
 8005eea:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8005eee:	3401      	adds	r4, #1
 8005ef0:	6153      	str	r3, [r2, #20]
 8005ef2:	612c      	str	r4, [r5, #16]
 8005ef4:	4628      	mov	r0, r5
 8005ef6:	b003      	add	sp, #12
 8005ef8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005efa:	6869      	ldr	r1, [r5, #4]
 8005efc:	9301      	str	r3, [sp, #4]
 8005efe:	3101      	adds	r1, #1
 8005f00:	4630      	mov	r0, r6
 8005f02:	f7ff ffa3 	bl	8005e4c <_Balloc>
 8005f06:	692a      	ldr	r2, [r5, #16]
 8005f08:	3202      	adds	r2, #2
 8005f0a:	f105 010c 	add.w	r1, r5, #12
 8005f0e:	4607      	mov	r7, r0
 8005f10:	0092      	lsls	r2, r2, #2
 8005f12:	300c      	adds	r0, #12
 8005f14:	f7fa faf4 	bl	8000500 <memcpy>
 8005f18:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8005f1a:	6869      	ldr	r1, [r5, #4]
 8005f1c:	9b01      	ldr	r3, [sp, #4]
 8005f1e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8005f22:	6028      	str	r0, [r5, #0]
 8005f24:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8005f28:	463d      	mov	r5, r7
 8005f2a:	e7de      	b.n	8005eea <__multadd+0x3e>

08005f2c <__hi0bits>:
 8005f2c:	0c02      	lsrs	r2, r0, #16
 8005f2e:	0412      	lsls	r2, r2, #16
 8005f30:	4603      	mov	r3, r0
 8005f32:	b9c2      	cbnz	r2, 8005f66 <__hi0bits+0x3a>
 8005f34:	0403      	lsls	r3, r0, #16
 8005f36:	2010      	movs	r0, #16
 8005f38:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8005f3c:	bf04      	itt	eq
 8005f3e:	021b      	lsleq	r3, r3, #8
 8005f40:	3008      	addeq	r0, #8
 8005f42:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8005f46:	bf04      	itt	eq
 8005f48:	011b      	lsleq	r3, r3, #4
 8005f4a:	3004      	addeq	r0, #4
 8005f4c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8005f50:	bf04      	itt	eq
 8005f52:	009b      	lsleq	r3, r3, #2
 8005f54:	3002      	addeq	r0, #2
 8005f56:	2b00      	cmp	r3, #0
 8005f58:	db04      	blt.n	8005f64 <__hi0bits+0x38>
 8005f5a:	005b      	lsls	r3, r3, #1
 8005f5c:	d501      	bpl.n	8005f62 <__hi0bits+0x36>
 8005f5e:	3001      	adds	r0, #1
 8005f60:	4770      	bx	lr
 8005f62:	2020      	movs	r0, #32
 8005f64:	4770      	bx	lr
 8005f66:	2000      	movs	r0, #0
 8005f68:	e7e6      	b.n	8005f38 <__hi0bits+0xc>
 8005f6a:	bf00      	nop

08005f6c <__lo0bits>:
 8005f6c:	6803      	ldr	r3, [r0, #0]
 8005f6e:	f013 0207 	ands.w	r2, r3, #7
 8005f72:	4601      	mov	r1, r0
 8005f74:	d007      	beq.n	8005f86 <__lo0bits+0x1a>
 8005f76:	07da      	lsls	r2, r3, #31
 8005f78:	d41f      	bmi.n	8005fba <__lo0bits+0x4e>
 8005f7a:	0798      	lsls	r0, r3, #30
 8005f7c:	d51f      	bpl.n	8005fbe <__lo0bits+0x52>
 8005f7e:	085b      	lsrs	r3, r3, #1
 8005f80:	600b      	str	r3, [r1, #0]
 8005f82:	2001      	movs	r0, #1
 8005f84:	4770      	bx	lr
 8005f86:	b298      	uxth	r0, r3
 8005f88:	b1a0      	cbz	r0, 8005fb4 <__lo0bits+0x48>
 8005f8a:	4610      	mov	r0, r2
 8005f8c:	f013 0fff 	tst.w	r3, #255	; 0xff
 8005f90:	bf04      	itt	eq
 8005f92:	0a1b      	lsreq	r3, r3, #8
 8005f94:	3008      	addeq	r0, #8
 8005f96:	071a      	lsls	r2, r3, #28
 8005f98:	bf04      	itt	eq
 8005f9a:	091b      	lsreq	r3, r3, #4
 8005f9c:	3004      	addeq	r0, #4
 8005f9e:	079a      	lsls	r2, r3, #30
 8005fa0:	bf04      	itt	eq
 8005fa2:	089b      	lsreq	r3, r3, #2
 8005fa4:	3002      	addeq	r0, #2
 8005fa6:	07da      	lsls	r2, r3, #31
 8005fa8:	d402      	bmi.n	8005fb0 <__lo0bits+0x44>
 8005faa:	085b      	lsrs	r3, r3, #1
 8005fac:	d00b      	beq.n	8005fc6 <__lo0bits+0x5a>
 8005fae:	3001      	adds	r0, #1
 8005fb0:	600b      	str	r3, [r1, #0]
 8005fb2:	4770      	bx	lr
 8005fb4:	0c1b      	lsrs	r3, r3, #16
 8005fb6:	2010      	movs	r0, #16
 8005fb8:	e7e8      	b.n	8005f8c <__lo0bits+0x20>
 8005fba:	2000      	movs	r0, #0
 8005fbc:	4770      	bx	lr
 8005fbe:	089b      	lsrs	r3, r3, #2
 8005fc0:	600b      	str	r3, [r1, #0]
 8005fc2:	2002      	movs	r0, #2
 8005fc4:	4770      	bx	lr
 8005fc6:	2020      	movs	r0, #32
 8005fc8:	4770      	bx	lr
 8005fca:	bf00      	nop

08005fcc <__i2b>:
 8005fcc:	b510      	push	{r4, lr}
 8005fce:	460c      	mov	r4, r1
 8005fd0:	2101      	movs	r1, #1
 8005fd2:	f7ff ff3b 	bl	8005e4c <_Balloc>
 8005fd6:	2201      	movs	r2, #1
 8005fd8:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8005fdc:	bd10      	pop	{r4, pc}
 8005fde:	bf00      	nop

08005fe0 <__multiply>:
 8005fe0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005fe4:	690e      	ldr	r6, [r1, #16]
 8005fe6:	6914      	ldr	r4, [r2, #16]
 8005fe8:	42a6      	cmp	r6, r4
 8005fea:	b083      	sub	sp, #12
 8005fec:	460f      	mov	r7, r1
 8005fee:	4615      	mov	r5, r2
 8005ff0:	da04      	bge.n	8005ffc <__multiply+0x1c>
 8005ff2:	4632      	mov	r2, r6
 8005ff4:	462f      	mov	r7, r5
 8005ff6:	4626      	mov	r6, r4
 8005ff8:	460d      	mov	r5, r1
 8005ffa:	4614      	mov	r4, r2
 8005ffc:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006000:	eb06 0804 	add.w	r8, r6, r4
 8006004:	4543      	cmp	r3, r8
 8006006:	bfb8      	it	lt
 8006008:	3101      	addlt	r1, #1
 800600a:	f7ff ff1f 	bl	8005e4c <_Balloc>
 800600e:	f100 0914 	add.w	r9, r0, #20
 8006012:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8006016:	45f1      	cmp	r9, lr
 8006018:	9000      	str	r0, [sp, #0]
 800601a:	d205      	bcs.n	8006028 <__multiply+0x48>
 800601c:	464b      	mov	r3, r9
 800601e:	2200      	movs	r2, #0
 8006020:	f843 2b04 	str.w	r2, [r3], #4
 8006024:	459e      	cmp	lr, r3
 8006026:	d8fb      	bhi.n	8006020 <__multiply+0x40>
 8006028:	f105 0a14 	add.w	sl, r5, #20
 800602c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006030:	f107 0314 	add.w	r3, r7, #20
 8006034:	45a2      	cmp	sl, r4
 8006036:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800603a:	d261      	bcs.n	8006100 <__multiply+0x120>
 800603c:	1b64      	subs	r4, r4, r5
 800603e:	3c15      	subs	r4, #21
 8006040:	f024 0403 	bic.w	r4, r4, #3
 8006044:	f8cd e004 	str.w	lr, [sp, #4]
 8006048:	44a2      	add	sl, r4
 800604a:	f105 0210 	add.w	r2, r5, #16
 800604e:	469e      	mov	lr, r3
 8006050:	e005      	b.n	800605e <__multiply+0x7e>
 8006052:	0c2d      	lsrs	r5, r5, #16
 8006054:	d12b      	bne.n	80060ae <__multiply+0xce>
 8006056:	4592      	cmp	sl, r2
 8006058:	f109 0904 	add.w	r9, r9, #4
 800605c:	d04e      	beq.n	80060fc <__multiply+0x11c>
 800605e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8006062:	fa1f fb85 	uxth.w	fp, r5
 8006066:	f1bb 0f00 	cmp.w	fp, #0
 800606a:	d0f2      	beq.n	8006052 <__multiply+0x72>
 800606c:	4677      	mov	r7, lr
 800606e:	464e      	mov	r6, r9
 8006070:	2000      	movs	r0, #0
 8006072:	e000      	b.n	8006076 <__multiply+0x96>
 8006074:	4626      	mov	r6, r4
 8006076:	f857 1b04 	ldr.w	r1, [r7], #4
 800607a:	6834      	ldr	r4, [r6, #0]
 800607c:	b28b      	uxth	r3, r1
 800607e:	b2a5      	uxth	r5, r4
 8006080:	0c09      	lsrs	r1, r1, #16
 8006082:	0c24      	lsrs	r4, r4, #16
 8006084:	fb0b 5303 	mla	r3, fp, r3, r5
 8006088:	4403      	add	r3, r0
 800608a:	fb0b 4001 	mla	r0, fp, r1, r4
 800608e:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8006092:	4634      	mov	r4, r6
 8006094:	b29b      	uxth	r3, r3
 8006096:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800609a:	45bc      	cmp	ip, r7
 800609c:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80060a0:	f844 3b04 	str.w	r3, [r4], #4
 80060a4:	d8e6      	bhi.n	8006074 <__multiply+0x94>
 80060a6:	6070      	str	r0, [r6, #4]
 80060a8:	6815      	ldr	r5, [r2, #0]
 80060aa:	0c2d      	lsrs	r5, r5, #16
 80060ac:	d0d3      	beq.n	8006056 <__multiply+0x76>
 80060ae:	f8d9 3000 	ldr.w	r3, [r9]
 80060b2:	4676      	mov	r6, lr
 80060b4:	4618      	mov	r0, r3
 80060b6:	46cb      	mov	fp, r9
 80060b8:	2100      	movs	r1, #0
 80060ba:	e000      	b.n	80060be <__multiply+0xde>
 80060bc:	46a3      	mov	fp, r4
 80060be:	8834      	ldrh	r4, [r6, #0]
 80060c0:	0c00      	lsrs	r0, r0, #16
 80060c2:	fb05 0004 	mla	r0, r5, r4, r0
 80060c6:	4401      	add	r1, r0
 80060c8:	b29b      	uxth	r3, r3
 80060ca:	465c      	mov	r4, fp
 80060cc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80060d0:	f844 3b04 	str.w	r3, [r4], #4
 80060d4:	f856 3b04 	ldr.w	r3, [r6], #4
 80060d8:	f8db 0004 	ldr.w	r0, [fp, #4]
 80060dc:	0c1b      	lsrs	r3, r3, #16
 80060de:	b287      	uxth	r7, r0
 80060e0:	fb05 7303 	mla	r3, r5, r3, r7
 80060e4:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80060e8:	45b4      	cmp	ip, r6
 80060ea:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80060ee:	d8e5      	bhi.n	80060bc <__multiply+0xdc>
 80060f0:	4592      	cmp	sl, r2
 80060f2:	f8cb 3004 	str.w	r3, [fp, #4]
 80060f6:	f109 0904 	add.w	r9, r9, #4
 80060fa:	d1b0      	bne.n	800605e <__multiply+0x7e>
 80060fc:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006100:	f1b8 0f00 	cmp.w	r8, #0
 8006104:	dd0b      	ble.n	800611e <__multiply+0x13e>
 8006106:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800610a:	f1ae 0e04 	sub.w	lr, lr, #4
 800610e:	b11b      	cbz	r3, 8006118 <__multiply+0x138>
 8006110:	e005      	b.n	800611e <__multiply+0x13e>
 8006112:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006116:	b913      	cbnz	r3, 800611e <__multiply+0x13e>
 8006118:	f1b8 0801 	subs.w	r8, r8, #1
 800611c:	d1f9      	bne.n	8006112 <__multiply+0x132>
 800611e:	9800      	ldr	r0, [sp, #0]
 8006120:	f8c0 8010 	str.w	r8, [r0, #16]
 8006124:	b003      	add	sp, #12
 8006126:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800612a:	bf00      	nop

0800612c <__pow5mult>:
 800612c:	f012 0303 	ands.w	r3, r2, #3
 8006130:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006134:	4614      	mov	r4, r2
 8006136:	4607      	mov	r7, r0
 8006138:	d12e      	bne.n	8006198 <__pow5mult+0x6c>
 800613a:	460d      	mov	r5, r1
 800613c:	10a4      	asrs	r4, r4, #2
 800613e:	d01c      	beq.n	800617a <__pow5mult+0x4e>
 8006140:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8006142:	b396      	cbz	r6, 80061aa <__pow5mult+0x7e>
 8006144:	07e3      	lsls	r3, r4, #31
 8006146:	f04f 0800 	mov.w	r8, #0
 800614a:	d406      	bmi.n	800615a <__pow5mult+0x2e>
 800614c:	1064      	asrs	r4, r4, #1
 800614e:	d014      	beq.n	800617a <__pow5mult+0x4e>
 8006150:	6830      	ldr	r0, [r6, #0]
 8006152:	b1a8      	cbz	r0, 8006180 <__pow5mult+0x54>
 8006154:	4606      	mov	r6, r0
 8006156:	07e3      	lsls	r3, r4, #31
 8006158:	d5f8      	bpl.n	800614c <__pow5mult+0x20>
 800615a:	4632      	mov	r2, r6
 800615c:	4629      	mov	r1, r5
 800615e:	4638      	mov	r0, r7
 8006160:	f7ff ff3e 	bl	8005fe0 <__multiply>
 8006164:	b1b5      	cbz	r5, 8006194 <__pow5mult+0x68>
 8006166:	686a      	ldr	r2, [r5, #4]
 8006168:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800616a:	1064      	asrs	r4, r4, #1
 800616c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006170:	6029      	str	r1, [r5, #0]
 8006172:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006176:	4605      	mov	r5, r0
 8006178:	d1ea      	bne.n	8006150 <__pow5mult+0x24>
 800617a:	4628      	mov	r0, r5
 800617c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006180:	4632      	mov	r2, r6
 8006182:	4631      	mov	r1, r6
 8006184:	4638      	mov	r0, r7
 8006186:	f7ff ff2b 	bl	8005fe0 <__multiply>
 800618a:	6030      	str	r0, [r6, #0]
 800618c:	f8c0 8000 	str.w	r8, [r0]
 8006190:	4606      	mov	r6, r0
 8006192:	e7e0      	b.n	8006156 <__pow5mult+0x2a>
 8006194:	4605      	mov	r5, r0
 8006196:	e7d9      	b.n	800614c <__pow5mult+0x20>
 8006198:	3b01      	subs	r3, #1
 800619a:	4a0b      	ldr	r2, [pc, #44]	; (80061c8 <__pow5mult+0x9c>)
 800619c:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80061a0:	2300      	movs	r3, #0
 80061a2:	f7ff fe83 	bl	8005eac <__multadd>
 80061a6:	4605      	mov	r5, r0
 80061a8:	e7c8      	b.n	800613c <__pow5mult+0x10>
 80061aa:	2101      	movs	r1, #1
 80061ac:	4638      	mov	r0, r7
 80061ae:	f7ff fe4d 	bl	8005e4c <_Balloc>
 80061b2:	f240 2371 	movw	r3, #625	; 0x271
 80061b6:	6143      	str	r3, [r0, #20]
 80061b8:	2201      	movs	r2, #1
 80061ba:	2300      	movs	r3, #0
 80061bc:	6102      	str	r2, [r0, #16]
 80061be:	4606      	mov	r6, r0
 80061c0:	64b8      	str	r0, [r7, #72]	; 0x48
 80061c2:	6003      	str	r3, [r0, #0]
 80061c4:	e7be      	b.n	8006144 <__pow5mult+0x18>
 80061c6:	bf00      	nop
 80061c8:	08007198 	.word	0x08007198

080061cc <__lshift>:
 80061cc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80061d0:	4691      	mov	r9, r2
 80061d2:	690a      	ldr	r2, [r1, #16]
 80061d4:	460e      	mov	r6, r1
 80061d6:	ea4f 1469 	mov.w	r4, r9, asr #5
 80061da:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80061de:	eb04 0802 	add.w	r8, r4, r2
 80061e2:	f108 0501 	add.w	r5, r8, #1
 80061e6:	429d      	cmp	r5, r3
 80061e8:	4607      	mov	r7, r0
 80061ea:	dd04      	ble.n	80061f6 <__lshift+0x2a>
 80061ec:	005b      	lsls	r3, r3, #1
 80061ee:	429d      	cmp	r5, r3
 80061f0:	f101 0101 	add.w	r1, r1, #1
 80061f4:	dcfa      	bgt.n	80061ec <__lshift+0x20>
 80061f6:	4638      	mov	r0, r7
 80061f8:	f7ff fe28 	bl	8005e4c <_Balloc>
 80061fc:	2c00      	cmp	r4, #0
 80061fe:	f100 0314 	add.w	r3, r0, #20
 8006202:	dd37      	ble.n	8006274 <__lshift+0xa8>
 8006204:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006208:	2200      	movs	r2, #0
 800620a:	f843 2b04 	str.w	r2, [r3], #4
 800620e:	428b      	cmp	r3, r1
 8006210:	d1fb      	bne.n	800620a <__lshift+0x3e>
 8006212:	6934      	ldr	r4, [r6, #16]
 8006214:	f106 0314 	add.w	r3, r6, #20
 8006218:	f019 091f 	ands.w	r9, r9, #31
 800621c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006220:	d020      	beq.n	8006264 <__lshift+0x98>
 8006222:	f1c9 0e20 	rsb	lr, r9, #32
 8006226:	2200      	movs	r2, #0
 8006228:	e000      	b.n	800622c <__lshift+0x60>
 800622a:	4651      	mov	r1, sl
 800622c:	681c      	ldr	r4, [r3, #0]
 800622e:	468a      	mov	sl, r1
 8006230:	fa04 f409 	lsl.w	r4, r4, r9
 8006234:	4314      	orrs	r4, r2
 8006236:	f84a 4b04 	str.w	r4, [sl], #4
 800623a:	f853 2b04 	ldr.w	r2, [r3], #4
 800623e:	4563      	cmp	r3, ip
 8006240:	fa22 f20e 	lsr.w	r2, r2, lr
 8006244:	d3f1      	bcc.n	800622a <__lshift+0x5e>
 8006246:	604a      	str	r2, [r1, #4]
 8006248:	b10a      	cbz	r2, 800624e <__lshift+0x82>
 800624a:	f108 0502 	add.w	r5, r8, #2
 800624e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006250:	6872      	ldr	r2, [r6, #4]
 8006252:	3d01      	subs	r5, #1
 8006254:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006258:	6105      	str	r5, [r0, #16]
 800625a:	6031      	str	r1, [r6, #0]
 800625c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006260:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006264:	3904      	subs	r1, #4
 8006266:	f853 2b04 	ldr.w	r2, [r3], #4
 800626a:	f841 2f04 	str.w	r2, [r1, #4]!
 800626e:	459c      	cmp	ip, r3
 8006270:	d8f9      	bhi.n	8006266 <__lshift+0x9a>
 8006272:	e7ec      	b.n	800624e <__lshift+0x82>
 8006274:	4619      	mov	r1, r3
 8006276:	e7cc      	b.n	8006212 <__lshift+0x46>

08006278 <__mcmp>:
 8006278:	b430      	push	{r4, r5}
 800627a:	690b      	ldr	r3, [r1, #16]
 800627c:	4605      	mov	r5, r0
 800627e:	6900      	ldr	r0, [r0, #16]
 8006280:	1ac0      	subs	r0, r0, r3
 8006282:	d10f      	bne.n	80062a4 <__mcmp+0x2c>
 8006284:	009b      	lsls	r3, r3, #2
 8006286:	3514      	adds	r5, #20
 8006288:	3114      	adds	r1, #20
 800628a:	4419      	add	r1, r3
 800628c:	442b      	add	r3, r5
 800628e:	e001      	b.n	8006294 <__mcmp+0x1c>
 8006290:	429d      	cmp	r5, r3
 8006292:	d207      	bcs.n	80062a4 <__mcmp+0x2c>
 8006294:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006298:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 800629c:	4294      	cmp	r4, r2
 800629e:	d0f7      	beq.n	8006290 <__mcmp+0x18>
 80062a0:	d302      	bcc.n	80062a8 <__mcmp+0x30>
 80062a2:	2001      	movs	r0, #1
 80062a4:	bc30      	pop	{r4, r5}
 80062a6:	4770      	bx	lr
 80062a8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80062ac:	e7fa      	b.n	80062a4 <__mcmp+0x2c>
 80062ae:	bf00      	nop

080062b0 <__mdiff>:
 80062b0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80062b4:	6913      	ldr	r3, [r2, #16]
 80062b6:	690d      	ldr	r5, [r1, #16]
 80062b8:	1aed      	subs	r5, r5, r3
 80062ba:	2d00      	cmp	r5, #0
 80062bc:	460e      	mov	r6, r1
 80062be:	4690      	mov	r8, r2
 80062c0:	f101 0414 	add.w	r4, r1, #20
 80062c4:	f102 0714 	add.w	r7, r2, #20
 80062c8:	d114      	bne.n	80062f4 <__mdiff+0x44>
 80062ca:	009b      	lsls	r3, r3, #2
 80062cc:	18e2      	adds	r2, r4, r3
 80062ce:	443b      	add	r3, r7
 80062d0:	e001      	b.n	80062d6 <__mdiff+0x26>
 80062d2:	42a2      	cmp	r2, r4
 80062d4:	d959      	bls.n	800638a <__mdiff+0xda>
 80062d6:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80062da:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80062de:	458c      	cmp	ip, r1
 80062e0:	d0f7      	beq.n	80062d2 <__mdiff+0x22>
 80062e2:	d209      	bcs.n	80062f8 <__mdiff+0x48>
 80062e4:	4622      	mov	r2, r4
 80062e6:	4633      	mov	r3, r6
 80062e8:	463c      	mov	r4, r7
 80062ea:	4646      	mov	r6, r8
 80062ec:	4617      	mov	r7, r2
 80062ee:	4698      	mov	r8, r3
 80062f0:	2501      	movs	r5, #1
 80062f2:	e001      	b.n	80062f8 <__mdiff+0x48>
 80062f4:	dbf6      	blt.n	80062e4 <__mdiff+0x34>
 80062f6:	2500      	movs	r5, #0
 80062f8:	6871      	ldr	r1, [r6, #4]
 80062fa:	f7ff fda7 	bl	8005e4c <_Balloc>
 80062fe:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006302:	6936      	ldr	r6, [r6, #16]
 8006304:	60c5      	str	r5, [r0, #12]
 8006306:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 800630a:	46bc      	mov	ip, r7
 800630c:	f100 0514 	add.w	r5, r0, #20
 8006310:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006314:	2300      	movs	r3, #0
 8006316:	f85c 1b04 	ldr.w	r1, [ip], #4
 800631a:	f854 8b04 	ldr.w	r8, [r4], #4
 800631e:	b28a      	uxth	r2, r1
 8006320:	fa13 f388 	uxtah	r3, r3, r8
 8006324:	0c09      	lsrs	r1, r1, #16
 8006326:	1a9a      	subs	r2, r3, r2
 8006328:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 800632c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006330:	b292      	uxth	r2, r2
 8006332:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006336:	45e6      	cmp	lr, ip
 8006338:	f845 2b04 	str.w	r2, [r5], #4
 800633c:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006340:	d8e9      	bhi.n	8006316 <__mdiff+0x66>
 8006342:	42a7      	cmp	r7, r4
 8006344:	d917      	bls.n	8006376 <__mdiff+0xc6>
 8006346:	46ae      	mov	lr, r5
 8006348:	46a4      	mov	ip, r4
 800634a:	f85c 2b04 	ldr.w	r2, [ip], #4
 800634e:	fa13 f382 	uxtah	r3, r3, r2
 8006352:	1419      	asrs	r1, r3, #16
 8006354:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006358:	b29b      	uxth	r3, r3
 800635a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800635e:	4567      	cmp	r7, ip
 8006360:	f84e 2b04 	str.w	r2, [lr], #4
 8006364:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006368:	d8ef      	bhi.n	800634a <__mdiff+0x9a>
 800636a:	43e4      	mvns	r4, r4
 800636c:	4427      	add	r7, r4
 800636e:	f027 0703 	bic.w	r7, r7, #3
 8006372:	3704      	adds	r7, #4
 8006374:	443d      	add	r5, r7
 8006376:	3d04      	subs	r5, #4
 8006378:	b922      	cbnz	r2, 8006384 <__mdiff+0xd4>
 800637a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800637e:	3e01      	subs	r6, #1
 8006380:	2b00      	cmp	r3, #0
 8006382:	d0fa      	beq.n	800637a <__mdiff+0xca>
 8006384:	6106      	str	r6, [r0, #16]
 8006386:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800638a:	2100      	movs	r1, #0
 800638c:	f7ff fd5e 	bl	8005e4c <_Balloc>
 8006390:	2201      	movs	r2, #1
 8006392:	2300      	movs	r3, #0
 8006394:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006398:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0800639c <__d2b>:
 800639c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80063a0:	460f      	mov	r7, r1
 80063a2:	b083      	sub	sp, #12
 80063a4:	2101      	movs	r1, #1
 80063a6:	ec55 4b10 	vmov	r4, r5, d0
 80063aa:	4616      	mov	r6, r2
 80063ac:	f7ff fd4e 	bl	8005e4c <_Balloc>
 80063b0:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80063b4:	4681      	mov	r9, r0
 80063b6:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80063ba:	f1b8 0f00 	cmp.w	r8, #0
 80063be:	d001      	beq.n	80063c4 <__d2b+0x28>
 80063c0:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80063c4:	2c00      	cmp	r4, #0
 80063c6:	9301      	str	r3, [sp, #4]
 80063c8:	d024      	beq.n	8006414 <__d2b+0x78>
 80063ca:	a802      	add	r0, sp, #8
 80063cc:	f840 4d08 	str.w	r4, [r0, #-8]!
 80063d0:	f7ff fdcc 	bl	8005f6c <__lo0bits>
 80063d4:	2800      	cmp	r0, #0
 80063d6:	d136      	bne.n	8006446 <__d2b+0xaa>
 80063d8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80063dc:	f8c9 2014 	str.w	r2, [r9, #20]
 80063e0:	2b00      	cmp	r3, #0
 80063e2:	bf0c      	ite	eq
 80063e4:	2101      	moveq	r1, #1
 80063e6:	2102      	movne	r1, #2
 80063e8:	f8c9 3018 	str.w	r3, [r9, #24]
 80063ec:	f8c9 1010 	str.w	r1, [r9, #16]
 80063f0:	f1b8 0f00 	cmp.w	r8, #0
 80063f4:	d11b      	bne.n	800642e <__d2b+0x92>
 80063f6:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80063fa:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80063fe:	6038      	str	r0, [r7, #0]
 8006400:	6918      	ldr	r0, [r3, #16]
 8006402:	f7ff fd93 	bl	8005f2c <__hi0bits>
 8006406:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 800640a:	6030      	str	r0, [r6, #0]
 800640c:	4648      	mov	r0, r9
 800640e:	b003      	add	sp, #12
 8006410:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006414:	a801      	add	r0, sp, #4
 8006416:	f7ff fda9 	bl	8005f6c <__lo0bits>
 800641a:	9b01      	ldr	r3, [sp, #4]
 800641c:	f8c9 3014 	str.w	r3, [r9, #20]
 8006420:	2101      	movs	r1, #1
 8006422:	3020      	adds	r0, #32
 8006424:	f8c9 1010 	str.w	r1, [r9, #16]
 8006428:	f1b8 0f00 	cmp.w	r8, #0
 800642c:	d0e3      	beq.n	80063f6 <__d2b+0x5a>
 800642e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006432:	eb08 0300 	add.w	r3, r8, r0
 8006436:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 800643a:	603b      	str	r3, [r7, #0]
 800643c:	6030      	str	r0, [r6, #0]
 800643e:	4648      	mov	r0, r9
 8006440:	b003      	add	sp, #12
 8006442:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006446:	e9dd 1300 	ldrd	r1, r3, [sp]
 800644a:	f1c0 0220 	rsb	r2, r0, #32
 800644e:	fa03 f202 	lsl.w	r2, r3, r2
 8006452:	430a      	orrs	r2, r1
 8006454:	40c3      	lsrs	r3, r0
 8006456:	9301      	str	r3, [sp, #4]
 8006458:	f8c9 2014 	str.w	r2, [r9, #20]
 800645c:	e7c0      	b.n	80063e0 <__d2b+0x44>
 800645e:	bf00      	nop

08006460 <_realloc_r>:
 8006460:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006464:	4692      	mov	sl, r2
 8006466:	b083      	sub	sp, #12
 8006468:	2900      	cmp	r1, #0
 800646a:	f000 80a1 	beq.w	80065b0 <_realloc_r+0x150>
 800646e:	460d      	mov	r5, r1
 8006470:	4680      	mov	r8, r0
 8006472:	f10a 040b 	add.w	r4, sl, #11
 8006476:	f7fc f993 	bl	80027a0 <__malloc_lock>
 800647a:	f855 2c04 	ldr.w	r2, [r5, #-4]
 800647e:	2c16      	cmp	r4, #22
 8006480:	f022 0603 	bic.w	r6, r2, #3
 8006484:	f1a5 0708 	sub.w	r7, r5, #8
 8006488:	d83e      	bhi.n	8006508 <_realloc_r+0xa8>
 800648a:	2410      	movs	r4, #16
 800648c:	4621      	mov	r1, r4
 800648e:	45a2      	cmp	sl, r4
 8006490:	d83f      	bhi.n	8006512 <_realloc_r+0xb2>
 8006492:	428e      	cmp	r6, r1
 8006494:	eb07 0906 	add.w	r9, r7, r6
 8006498:	da74      	bge.n	8006584 <_realloc_r+0x124>
 800649a:	4bc7      	ldr	r3, [pc, #796]	; (80067b8 <_realloc_r+0x358>)
 800649c:	6898      	ldr	r0, [r3, #8]
 800649e:	4548      	cmp	r0, r9
 80064a0:	f000 80aa 	beq.w	80065f8 <_realloc_r+0x198>
 80064a4:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80064a8:	f020 0301 	bic.w	r3, r0, #1
 80064ac:	444b      	add	r3, r9
 80064ae:	685b      	ldr	r3, [r3, #4]
 80064b0:	07db      	lsls	r3, r3, #31
 80064b2:	f140 8083 	bpl.w	80065bc <_realloc_r+0x15c>
 80064b6:	07d2      	lsls	r2, r2, #31
 80064b8:	d534      	bpl.n	8006524 <_realloc_r+0xc4>
 80064ba:	4651      	mov	r1, sl
 80064bc:	4640      	mov	r0, r8
 80064be:	f7fb fe81 	bl	80021c4 <_malloc_r>
 80064c2:	4682      	mov	sl, r0
 80064c4:	b1e0      	cbz	r0, 8006500 <_realloc_r+0xa0>
 80064c6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80064ca:	f023 0301 	bic.w	r3, r3, #1
 80064ce:	443b      	add	r3, r7
 80064d0:	f1a0 0208 	sub.w	r2, r0, #8
 80064d4:	4293      	cmp	r3, r2
 80064d6:	f000 80f9 	beq.w	80066cc <_realloc_r+0x26c>
 80064da:	1f32      	subs	r2, r6, #4
 80064dc:	2a24      	cmp	r2, #36	; 0x24
 80064de:	f200 8107 	bhi.w	80066f0 <_realloc_r+0x290>
 80064e2:	2a13      	cmp	r2, #19
 80064e4:	6829      	ldr	r1, [r5, #0]
 80064e6:	f200 80e6 	bhi.w	80066b6 <_realloc_r+0x256>
 80064ea:	4603      	mov	r3, r0
 80064ec:	462a      	mov	r2, r5
 80064ee:	6019      	str	r1, [r3, #0]
 80064f0:	6851      	ldr	r1, [r2, #4]
 80064f2:	6059      	str	r1, [r3, #4]
 80064f4:	6892      	ldr	r2, [r2, #8]
 80064f6:	609a      	str	r2, [r3, #8]
 80064f8:	4629      	mov	r1, r5
 80064fa:	4640      	mov	r0, r8
 80064fc:	f7ff f918 	bl	8005730 <_free_r>
 8006500:	4640      	mov	r0, r8
 8006502:	f7fc f953 	bl	80027ac <__malloc_unlock>
 8006506:	e04f      	b.n	80065a8 <_realloc_r+0x148>
 8006508:	f024 0407 	bic.w	r4, r4, #7
 800650c:	2c00      	cmp	r4, #0
 800650e:	4621      	mov	r1, r4
 8006510:	dabd      	bge.n	800648e <_realloc_r+0x2e>
 8006512:	f04f 0a00 	mov.w	sl, #0
 8006516:	230c      	movs	r3, #12
 8006518:	4650      	mov	r0, sl
 800651a:	f8c8 3000 	str.w	r3, [r8]
 800651e:	b003      	add	sp, #12
 8006520:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006524:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006528:	eba7 0b03 	sub.w	fp, r7, r3
 800652c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006530:	f022 0203 	bic.w	r2, r2, #3
 8006534:	18b3      	adds	r3, r6, r2
 8006536:	428b      	cmp	r3, r1
 8006538:	dbbf      	blt.n	80064ba <_realloc_r+0x5a>
 800653a:	46da      	mov	sl, fp
 800653c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006540:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006544:	1f32      	subs	r2, r6, #4
 8006546:	2a24      	cmp	r2, #36	; 0x24
 8006548:	60c1      	str	r1, [r0, #12]
 800654a:	eb0b 0903 	add.w	r9, fp, r3
 800654e:	6088      	str	r0, [r1, #8]
 8006550:	f200 80c6 	bhi.w	80066e0 <_realloc_r+0x280>
 8006554:	2a13      	cmp	r2, #19
 8006556:	6829      	ldr	r1, [r5, #0]
 8006558:	f240 80c0 	bls.w	80066dc <_realloc_r+0x27c>
 800655c:	f8cb 1008 	str.w	r1, [fp, #8]
 8006560:	6869      	ldr	r1, [r5, #4]
 8006562:	f8cb 100c 	str.w	r1, [fp, #12]
 8006566:	2a1b      	cmp	r2, #27
 8006568:	68a9      	ldr	r1, [r5, #8]
 800656a:	f200 80d8 	bhi.w	800671e <_realloc_r+0x2be>
 800656e:	f10b 0210 	add.w	r2, fp, #16
 8006572:	3508      	adds	r5, #8
 8006574:	6011      	str	r1, [r2, #0]
 8006576:	6869      	ldr	r1, [r5, #4]
 8006578:	6051      	str	r1, [r2, #4]
 800657a:	68a9      	ldr	r1, [r5, #8]
 800657c:	6091      	str	r1, [r2, #8]
 800657e:	461e      	mov	r6, r3
 8006580:	465f      	mov	r7, fp
 8006582:	4655      	mov	r5, sl
 8006584:	687b      	ldr	r3, [r7, #4]
 8006586:	1b32      	subs	r2, r6, r4
 8006588:	2a0f      	cmp	r2, #15
 800658a:	f003 0301 	and.w	r3, r3, #1
 800658e:	d822      	bhi.n	80065d6 <_realloc_r+0x176>
 8006590:	4333      	orrs	r3, r6
 8006592:	607b      	str	r3, [r7, #4]
 8006594:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006598:	f043 0301 	orr.w	r3, r3, #1
 800659c:	f8c9 3004 	str.w	r3, [r9, #4]
 80065a0:	4640      	mov	r0, r8
 80065a2:	f7fc f903 	bl	80027ac <__malloc_unlock>
 80065a6:	46aa      	mov	sl, r5
 80065a8:	4650      	mov	r0, sl
 80065aa:	b003      	add	sp, #12
 80065ac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80065b0:	4611      	mov	r1, r2
 80065b2:	b003      	add	sp, #12
 80065b4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80065b8:	f7fb be04 	b.w	80021c4 <_malloc_r>
 80065bc:	f020 0003 	bic.w	r0, r0, #3
 80065c0:	1833      	adds	r3, r6, r0
 80065c2:	428b      	cmp	r3, r1
 80065c4:	db61      	blt.n	800668a <_realloc_r+0x22a>
 80065c6:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80065ca:	461e      	mov	r6, r3
 80065cc:	60ca      	str	r2, [r1, #12]
 80065ce:	eb07 0903 	add.w	r9, r7, r3
 80065d2:	6091      	str	r1, [r2, #8]
 80065d4:	e7d6      	b.n	8006584 <_realloc_r+0x124>
 80065d6:	1939      	adds	r1, r7, r4
 80065d8:	4323      	orrs	r3, r4
 80065da:	f042 0201 	orr.w	r2, r2, #1
 80065de:	607b      	str	r3, [r7, #4]
 80065e0:	604a      	str	r2, [r1, #4]
 80065e2:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80065e6:	f043 0301 	orr.w	r3, r3, #1
 80065ea:	3108      	adds	r1, #8
 80065ec:	f8c9 3004 	str.w	r3, [r9, #4]
 80065f0:	4640      	mov	r0, r8
 80065f2:	f7ff f89d 	bl	8005730 <_free_r>
 80065f6:	e7d3      	b.n	80065a0 <_realloc_r+0x140>
 80065f8:	6840      	ldr	r0, [r0, #4]
 80065fa:	f020 0903 	bic.w	r9, r0, #3
 80065fe:	44b1      	add	r9, r6
 8006600:	f104 0010 	add.w	r0, r4, #16
 8006604:	4581      	cmp	r9, r0
 8006606:	da77      	bge.n	80066f8 <_realloc_r+0x298>
 8006608:	07d2      	lsls	r2, r2, #31
 800660a:	f53f af56 	bmi.w	80064ba <_realloc_r+0x5a>
 800660e:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006612:	eba7 0b02 	sub.w	fp, r7, r2
 8006616:	f8db 2004 	ldr.w	r2, [fp, #4]
 800661a:	f022 0203 	bic.w	r2, r2, #3
 800661e:	4491      	add	r9, r2
 8006620:	4548      	cmp	r0, r9
 8006622:	dc87      	bgt.n	8006534 <_realloc_r+0xd4>
 8006624:	46da      	mov	sl, fp
 8006626:	f8db 100c 	ldr.w	r1, [fp, #12]
 800662a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800662e:	1f32      	subs	r2, r6, #4
 8006630:	2a24      	cmp	r2, #36	; 0x24
 8006632:	60c1      	str	r1, [r0, #12]
 8006634:	6088      	str	r0, [r1, #8]
 8006636:	f200 80a1 	bhi.w	800677c <_realloc_r+0x31c>
 800663a:	2a13      	cmp	r2, #19
 800663c:	6829      	ldr	r1, [r5, #0]
 800663e:	f240 809b 	bls.w	8006778 <_realloc_r+0x318>
 8006642:	f8cb 1008 	str.w	r1, [fp, #8]
 8006646:	6869      	ldr	r1, [r5, #4]
 8006648:	f8cb 100c 	str.w	r1, [fp, #12]
 800664c:	2a1b      	cmp	r2, #27
 800664e:	68a9      	ldr	r1, [r5, #8]
 8006650:	f200 809b 	bhi.w	800678a <_realloc_r+0x32a>
 8006654:	f10b 0210 	add.w	r2, fp, #16
 8006658:	3508      	adds	r5, #8
 800665a:	6011      	str	r1, [r2, #0]
 800665c:	6869      	ldr	r1, [r5, #4]
 800665e:	6051      	str	r1, [r2, #4]
 8006660:	68a9      	ldr	r1, [r5, #8]
 8006662:	6091      	str	r1, [r2, #8]
 8006664:	eb0b 0104 	add.w	r1, fp, r4
 8006668:	eba9 0204 	sub.w	r2, r9, r4
 800666c:	f042 0201 	orr.w	r2, r2, #1
 8006670:	6099      	str	r1, [r3, #8]
 8006672:	604a      	str	r2, [r1, #4]
 8006674:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006678:	f003 0301 	and.w	r3, r3, #1
 800667c:	431c      	orrs	r4, r3
 800667e:	4640      	mov	r0, r8
 8006680:	f8cb 4004 	str.w	r4, [fp, #4]
 8006684:	f7fc f892 	bl	80027ac <__malloc_unlock>
 8006688:	e78e      	b.n	80065a8 <_realloc_r+0x148>
 800668a:	07d3      	lsls	r3, r2, #31
 800668c:	f53f af15 	bmi.w	80064ba <_realloc_r+0x5a>
 8006690:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006694:	eba7 0b03 	sub.w	fp, r7, r3
 8006698:	f8db 2004 	ldr.w	r2, [fp, #4]
 800669c:	f022 0203 	bic.w	r2, r2, #3
 80066a0:	4410      	add	r0, r2
 80066a2:	1983      	adds	r3, r0, r6
 80066a4:	428b      	cmp	r3, r1
 80066a6:	f6ff af45 	blt.w	8006534 <_realloc_r+0xd4>
 80066aa:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80066ae:	46da      	mov	sl, fp
 80066b0:	60ca      	str	r2, [r1, #12]
 80066b2:	6091      	str	r1, [r2, #8]
 80066b4:	e742      	b.n	800653c <_realloc_r+0xdc>
 80066b6:	6001      	str	r1, [r0, #0]
 80066b8:	686b      	ldr	r3, [r5, #4]
 80066ba:	6043      	str	r3, [r0, #4]
 80066bc:	2a1b      	cmp	r2, #27
 80066be:	d83a      	bhi.n	8006736 <_realloc_r+0x2d6>
 80066c0:	f105 0208 	add.w	r2, r5, #8
 80066c4:	f100 0308 	add.w	r3, r0, #8
 80066c8:	68a9      	ldr	r1, [r5, #8]
 80066ca:	e710      	b.n	80064ee <_realloc_r+0x8e>
 80066cc:	f850 3c04 	ldr.w	r3, [r0, #-4]
 80066d0:	f023 0303 	bic.w	r3, r3, #3
 80066d4:	441e      	add	r6, r3
 80066d6:	eb07 0906 	add.w	r9, r7, r6
 80066da:	e753      	b.n	8006584 <_realloc_r+0x124>
 80066dc:	4652      	mov	r2, sl
 80066de:	e749      	b.n	8006574 <_realloc_r+0x114>
 80066e0:	4629      	mov	r1, r5
 80066e2:	4650      	mov	r0, sl
 80066e4:	461e      	mov	r6, r3
 80066e6:	465f      	mov	r7, fp
 80066e8:	f7ff fb4c 	bl	8005d84 <memmove>
 80066ec:	4655      	mov	r5, sl
 80066ee:	e749      	b.n	8006584 <_realloc_r+0x124>
 80066f0:	4629      	mov	r1, r5
 80066f2:	f7ff fb47 	bl	8005d84 <memmove>
 80066f6:	e6ff      	b.n	80064f8 <_realloc_r+0x98>
 80066f8:	4427      	add	r7, r4
 80066fa:	eba9 0904 	sub.w	r9, r9, r4
 80066fe:	f049 0201 	orr.w	r2, r9, #1
 8006702:	609f      	str	r7, [r3, #8]
 8006704:	607a      	str	r2, [r7, #4]
 8006706:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800670a:	f003 0301 	and.w	r3, r3, #1
 800670e:	431c      	orrs	r4, r3
 8006710:	4640      	mov	r0, r8
 8006712:	f845 4c04 	str.w	r4, [r5, #-4]
 8006716:	f7fc f849 	bl	80027ac <__malloc_unlock>
 800671a:	46aa      	mov	sl, r5
 800671c:	e744      	b.n	80065a8 <_realloc_r+0x148>
 800671e:	f8cb 1010 	str.w	r1, [fp, #16]
 8006722:	68e9      	ldr	r1, [r5, #12]
 8006724:	f8cb 1014 	str.w	r1, [fp, #20]
 8006728:	2a24      	cmp	r2, #36	; 0x24
 800672a:	d010      	beq.n	800674e <_realloc_r+0x2ee>
 800672c:	6929      	ldr	r1, [r5, #16]
 800672e:	f10b 0218 	add.w	r2, fp, #24
 8006732:	3510      	adds	r5, #16
 8006734:	e71e      	b.n	8006574 <_realloc_r+0x114>
 8006736:	68ab      	ldr	r3, [r5, #8]
 8006738:	6083      	str	r3, [r0, #8]
 800673a:	68eb      	ldr	r3, [r5, #12]
 800673c:	60c3      	str	r3, [r0, #12]
 800673e:	2a24      	cmp	r2, #36	; 0x24
 8006740:	d010      	beq.n	8006764 <_realloc_r+0x304>
 8006742:	f105 0210 	add.w	r2, r5, #16
 8006746:	f100 0310 	add.w	r3, r0, #16
 800674a:	6929      	ldr	r1, [r5, #16]
 800674c:	e6cf      	b.n	80064ee <_realloc_r+0x8e>
 800674e:	692a      	ldr	r2, [r5, #16]
 8006750:	f8cb 2018 	str.w	r2, [fp, #24]
 8006754:	696a      	ldr	r2, [r5, #20]
 8006756:	f8cb 201c 	str.w	r2, [fp, #28]
 800675a:	69a9      	ldr	r1, [r5, #24]
 800675c:	f10b 0220 	add.w	r2, fp, #32
 8006760:	3518      	adds	r5, #24
 8006762:	e707      	b.n	8006574 <_realloc_r+0x114>
 8006764:	692b      	ldr	r3, [r5, #16]
 8006766:	6103      	str	r3, [r0, #16]
 8006768:	696b      	ldr	r3, [r5, #20]
 800676a:	6143      	str	r3, [r0, #20]
 800676c:	69a9      	ldr	r1, [r5, #24]
 800676e:	f105 0218 	add.w	r2, r5, #24
 8006772:	f100 0318 	add.w	r3, r0, #24
 8006776:	e6ba      	b.n	80064ee <_realloc_r+0x8e>
 8006778:	4652      	mov	r2, sl
 800677a:	e76e      	b.n	800665a <_realloc_r+0x1fa>
 800677c:	4629      	mov	r1, r5
 800677e:	4650      	mov	r0, sl
 8006780:	9301      	str	r3, [sp, #4]
 8006782:	f7ff faff 	bl	8005d84 <memmove>
 8006786:	9b01      	ldr	r3, [sp, #4]
 8006788:	e76c      	b.n	8006664 <_realloc_r+0x204>
 800678a:	f8cb 1010 	str.w	r1, [fp, #16]
 800678e:	68e9      	ldr	r1, [r5, #12]
 8006790:	f8cb 1014 	str.w	r1, [fp, #20]
 8006794:	2a24      	cmp	r2, #36	; 0x24
 8006796:	d004      	beq.n	80067a2 <_realloc_r+0x342>
 8006798:	6929      	ldr	r1, [r5, #16]
 800679a:	f10b 0218 	add.w	r2, fp, #24
 800679e:	3510      	adds	r5, #16
 80067a0:	e75b      	b.n	800665a <_realloc_r+0x1fa>
 80067a2:	692a      	ldr	r2, [r5, #16]
 80067a4:	f8cb 2018 	str.w	r2, [fp, #24]
 80067a8:	696a      	ldr	r2, [r5, #20]
 80067aa:	f8cb 201c 	str.w	r2, [fp, #28]
 80067ae:	69a9      	ldr	r1, [r5, #24]
 80067b0:	f10b 0220 	add.w	r2, fp, #32
 80067b4:	3518      	adds	r5, #24
 80067b6:	e750      	b.n	800665a <_realloc_r+0x1fa>
 80067b8:	200005d8 	.word	0x200005d8

080067bc <frexp>:
 80067bc:	ec53 2b10 	vmov	r2, r3, d0
 80067c0:	b570      	push	{r4, r5, r6, lr}
 80067c2:	4e16      	ldr	r6, [pc, #88]	; (800681c <frexp+0x60>)
 80067c4:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 80067c8:	2500      	movs	r5, #0
 80067ca:	42b1      	cmp	r1, r6
 80067cc:	4604      	mov	r4, r0
 80067ce:	6005      	str	r5, [r0, #0]
 80067d0:	dc21      	bgt.n	8006816 <frexp+0x5a>
 80067d2:	ee10 6a10 	vmov	r6, s0
 80067d6:	430e      	orrs	r6, r1
 80067d8:	d01d      	beq.n	8006816 <frexp+0x5a>
 80067da:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80067de:	4618      	mov	r0, r3
 80067e0:	da0c      	bge.n	80067fc <frexp+0x40>
 80067e2:	4619      	mov	r1, r3
 80067e4:	2200      	movs	r2, #0
 80067e6:	ee10 0a10 	vmov	r0, s0
 80067ea:	4b0d      	ldr	r3, [pc, #52]	; (8006820 <frexp+0x64>)
 80067ec:	f7fa f9a4 	bl	8000b38 <__aeabi_dmul>
 80067f0:	f06f 0535 	mvn.w	r5, #53	; 0x35
 80067f4:	4602      	mov	r2, r0
 80067f6:	4608      	mov	r0, r1
 80067f8:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80067fc:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006800:	1509      	asrs	r1, r1, #20
 8006802:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006806:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 800680a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 800680e:	4429      	add	r1, r5
 8006810:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006814:	6021      	str	r1, [r4, #0]
 8006816:	ec43 2b10 	vmov	d0, r2, r3
 800681a:	bd70      	pop	{r4, r5, r6, pc}
 800681c:	7fefffff 	.word	0x7fefffff
 8006820:	43500000 	.word	0x43500000

08006824 <__sread>:
 8006824:	b510      	push	{r4, lr}
 8006826:	460c      	mov	r4, r1
 8006828:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800682c:	f000 fabc 	bl	8006da8 <_read_r>
 8006830:	2800      	cmp	r0, #0
 8006832:	db03      	blt.n	800683c <__sread+0x18>
 8006834:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006836:	4403      	add	r3, r0
 8006838:	6523      	str	r3, [r4, #80]	; 0x50
 800683a:	bd10      	pop	{r4, pc}
 800683c:	89a3      	ldrh	r3, [r4, #12]
 800683e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006842:	81a3      	strh	r3, [r4, #12]
 8006844:	bd10      	pop	{r4, pc}
 8006846:	bf00      	nop

08006848 <__swrite>:
 8006848:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800684c:	4616      	mov	r6, r2
 800684e:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006852:	461f      	mov	r7, r3
 8006854:	05d3      	lsls	r3, r2, #23
 8006856:	460c      	mov	r4, r1
 8006858:	4605      	mov	r5, r0
 800685a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800685e:	d507      	bpl.n	8006870 <__swrite+0x28>
 8006860:	2200      	movs	r2, #0
 8006862:	2302      	movs	r3, #2
 8006864:	f000 fa74 	bl	8006d50 <_lseek_r>
 8006868:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800686c:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006870:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006874:	81a2      	strh	r2, [r4, #12]
 8006876:	463b      	mov	r3, r7
 8006878:	4632      	mov	r2, r6
 800687a:	4628      	mov	r0, r5
 800687c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006880:	f000 b88c 	b.w	800699c <_write_r>

08006884 <__sseek>:
 8006884:	b510      	push	{r4, lr}
 8006886:	460c      	mov	r4, r1
 8006888:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800688c:	f000 fa60 	bl	8006d50 <_lseek_r>
 8006890:	89a3      	ldrh	r3, [r4, #12]
 8006892:	1c42      	adds	r2, r0, #1
 8006894:	bf0e      	itee	eq
 8006896:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 800689a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 800689e:	6520      	strne	r0, [r4, #80]	; 0x50
 80068a0:	81a3      	strh	r3, [r4, #12]
 80068a2:	bd10      	pop	{r4, pc}

080068a4 <__sclose>:
 80068a4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80068a8:	f000 b922 	b.w	8006af0 <_close_r>

080068ac <strncpy>:
 80068ac:	ea40 0301 	orr.w	r3, r0, r1
 80068b0:	079b      	lsls	r3, r3, #30
 80068b2:	b470      	push	{r4, r5, r6}
 80068b4:	d12a      	bne.n	800690c <strncpy+0x60>
 80068b6:	2a03      	cmp	r2, #3
 80068b8:	d928      	bls.n	800690c <strncpy+0x60>
 80068ba:	460c      	mov	r4, r1
 80068bc:	4603      	mov	r3, r0
 80068be:	4621      	mov	r1, r4
 80068c0:	f854 6b04 	ldr.w	r6, [r4], #4
 80068c4:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 80068c8:	ea25 0506 	bic.w	r5, r5, r6
 80068cc:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 80068d0:	d106      	bne.n	80068e0 <strncpy+0x34>
 80068d2:	3a04      	subs	r2, #4
 80068d4:	2a03      	cmp	r2, #3
 80068d6:	f843 6b04 	str.w	r6, [r3], #4
 80068da:	4621      	mov	r1, r4
 80068dc:	d8ef      	bhi.n	80068be <strncpy+0x12>
 80068de:	b19a      	cbz	r2, 8006908 <strncpy+0x5c>
 80068e0:	780c      	ldrb	r4, [r1, #0]
 80068e2:	701c      	strb	r4, [r3, #0]
 80068e4:	3a01      	subs	r2, #1
 80068e6:	3301      	adds	r3, #1
 80068e8:	b13c      	cbz	r4, 80068fa <strncpy+0x4e>
 80068ea:	b16a      	cbz	r2, 8006908 <strncpy+0x5c>
 80068ec:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 80068f0:	f803 4b01 	strb.w	r4, [r3], #1
 80068f4:	3a01      	subs	r2, #1
 80068f6:	2c00      	cmp	r4, #0
 80068f8:	d1f7      	bne.n	80068ea <strncpy+0x3e>
 80068fa:	b12a      	cbz	r2, 8006908 <strncpy+0x5c>
 80068fc:	441a      	add	r2, r3
 80068fe:	2100      	movs	r1, #0
 8006900:	f803 1b01 	strb.w	r1, [r3], #1
 8006904:	4293      	cmp	r3, r2
 8006906:	d1fb      	bne.n	8006900 <strncpy+0x54>
 8006908:	bc70      	pop	{r4, r5, r6}
 800690a:	4770      	bx	lr
 800690c:	4603      	mov	r3, r0
 800690e:	e7e6      	b.n	80068de <strncpy+0x32>

08006910 <__sprint_r.part.0>:
 8006910:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006914:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006916:	049c      	lsls	r4, r3, #18
 8006918:	4692      	mov	sl, r2
 800691a:	d52d      	bpl.n	8006978 <__sprint_r.part.0+0x68>
 800691c:	6893      	ldr	r3, [r2, #8]
 800691e:	6812      	ldr	r2, [r2, #0]
 8006920:	b343      	cbz	r3, 8006974 <__sprint_r.part.0+0x64>
 8006922:	460e      	mov	r6, r1
 8006924:	4607      	mov	r7, r0
 8006926:	f102 0908 	add.w	r9, r2, #8
 800692a:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 800692e:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006932:	d015      	beq.n	8006960 <__sprint_r.part.0+0x50>
 8006934:	3d04      	subs	r5, #4
 8006936:	2400      	movs	r4, #0
 8006938:	e001      	b.n	800693e <__sprint_r.part.0+0x2e>
 800693a:	45a0      	cmp	r8, r4
 800693c:	d00e      	beq.n	800695c <__sprint_r.part.0+0x4c>
 800693e:	4632      	mov	r2, r6
 8006940:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006944:	4638      	mov	r0, r7
 8006946:	f000 f99d 	bl	8006c84 <_fputwc_r>
 800694a:	1c43      	adds	r3, r0, #1
 800694c:	f104 0401 	add.w	r4, r4, #1
 8006950:	d1f3      	bne.n	800693a <__sprint_r.part.0+0x2a>
 8006952:	2300      	movs	r3, #0
 8006954:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006958:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800695c:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006960:	f02b 0b03 	bic.w	fp, fp, #3
 8006964:	eba3 030b 	sub.w	r3, r3, fp
 8006968:	f8ca 3008 	str.w	r3, [sl, #8]
 800696c:	f109 0908 	add.w	r9, r9, #8
 8006970:	2b00      	cmp	r3, #0
 8006972:	d1da      	bne.n	800692a <__sprint_r.part.0+0x1a>
 8006974:	2000      	movs	r0, #0
 8006976:	e7ec      	b.n	8006952 <__sprint_r.part.0+0x42>
 8006978:	f7fe ffce 	bl	8005918 <__sfvwrite_r>
 800697c:	2300      	movs	r3, #0
 800697e:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006982:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006986:	bf00      	nop

08006988 <__sprint_r>:
 8006988:	6893      	ldr	r3, [r2, #8]
 800698a:	b10b      	cbz	r3, 8006990 <__sprint_r+0x8>
 800698c:	f7ff bfc0 	b.w	8006910 <__sprint_r.part.0>
 8006990:	b410      	push	{r4}
 8006992:	4618      	mov	r0, r3
 8006994:	6053      	str	r3, [r2, #4]
 8006996:	f85d 4b04 	ldr.w	r4, [sp], #4
 800699a:	4770      	bx	lr

0800699c <_write_r>:
 800699c:	b570      	push	{r4, r5, r6, lr}
 800699e:	460d      	mov	r5, r1
 80069a0:	4c08      	ldr	r4, [pc, #32]	; (80069c4 <_write_r+0x28>)
 80069a2:	4611      	mov	r1, r2
 80069a4:	4606      	mov	r6, r0
 80069a6:	461a      	mov	r2, r3
 80069a8:	4628      	mov	r0, r5
 80069aa:	2300      	movs	r3, #0
 80069ac:	6023      	str	r3, [r4, #0]
 80069ae:	f7fb fb40 	bl	8002032 <_write>
 80069b2:	1c43      	adds	r3, r0, #1
 80069b4:	d000      	beq.n	80069b8 <_write_r+0x1c>
 80069b6:	bd70      	pop	{r4, r5, r6, pc}
 80069b8:	6823      	ldr	r3, [r4, #0]
 80069ba:	2b00      	cmp	r3, #0
 80069bc:	d0fb      	beq.n	80069b6 <_write_r+0x1a>
 80069be:	6033      	str	r3, [r6, #0]
 80069c0:	bd70      	pop	{r4, r5, r6, pc}
 80069c2:	bf00      	nop
 80069c4:	20000c9c 	.word	0x20000c9c

080069c8 <__register_exitproc>:
 80069c8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80069cc:	4d2b      	ldr	r5, [pc, #172]	; (8006a7c <__register_exitproc+0xb4>)
 80069ce:	4606      	mov	r6, r0
 80069d0:	6828      	ldr	r0, [r5, #0]
 80069d2:	4698      	mov	r8, r3
 80069d4:	460f      	mov	r7, r1
 80069d6:	4691      	mov	r9, r2
 80069d8:	f7ff f958 	bl	8005c8c <__retarget_lock_acquire_recursive>
 80069dc:	4b28      	ldr	r3, [pc, #160]	; (8006a80 <__register_exitproc+0xb8>)
 80069de:	681c      	ldr	r4, [r3, #0]
 80069e0:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 80069e4:	2b00      	cmp	r3, #0
 80069e6:	d03d      	beq.n	8006a64 <__register_exitproc+0x9c>
 80069e8:	685a      	ldr	r2, [r3, #4]
 80069ea:	2a1f      	cmp	r2, #31
 80069ec:	dc0d      	bgt.n	8006a0a <__register_exitproc+0x42>
 80069ee:	f102 0c01 	add.w	ip, r2, #1
 80069f2:	bb16      	cbnz	r6, 8006a3a <__register_exitproc+0x72>
 80069f4:	3202      	adds	r2, #2
 80069f6:	f8c3 c004 	str.w	ip, [r3, #4]
 80069fa:	6828      	ldr	r0, [r5, #0]
 80069fc:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006a00:	f7ff f946 	bl	8005c90 <__retarget_lock_release_recursive>
 8006a04:	2000      	movs	r0, #0
 8006a06:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006a0a:	4b1e      	ldr	r3, [pc, #120]	; (8006a84 <__register_exitproc+0xbc>)
 8006a0c:	b37b      	cbz	r3, 8006a6e <__register_exitproc+0xa6>
 8006a0e:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006a12:	f7fb fbc7 	bl	80021a4 <malloc>
 8006a16:	4603      	mov	r3, r0
 8006a18:	b348      	cbz	r0, 8006a6e <__register_exitproc+0xa6>
 8006a1a:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006a1e:	2100      	movs	r1, #0
 8006a20:	e9c0 2100 	strd	r2, r1, [r0]
 8006a24:	f04f 0c01 	mov.w	ip, #1
 8006a28:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006a2c:	460a      	mov	r2, r1
 8006a2e:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006a32:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006a36:	2e00      	cmp	r6, #0
 8006a38:	d0dc      	beq.n	80069f4 <__register_exitproc+0x2c>
 8006a3a:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006a3e:	2401      	movs	r4, #1
 8006a40:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006a44:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006a48:	4094      	lsls	r4, r2
 8006a4a:	4320      	orrs	r0, r4
 8006a4c:	2e02      	cmp	r6, #2
 8006a4e:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006a52:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006a56:	d1cd      	bne.n	80069f4 <__register_exitproc+0x2c>
 8006a58:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006a5c:	430c      	orrs	r4, r1
 8006a5e:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006a62:	e7c7      	b.n	80069f4 <__register_exitproc+0x2c>
 8006a64:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006a68:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006a6c:	e7bc      	b.n	80069e8 <__register_exitproc+0x20>
 8006a6e:	6828      	ldr	r0, [r5, #0]
 8006a70:	f7ff f90e 	bl	8005c90 <__retarget_lock_release_recursive>
 8006a74:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006a78:	e7c5      	b.n	8006a06 <__register_exitproc+0x3e>
 8006a7a:	bf00      	nop
 8006a7c:	200009e8 	.word	0x200009e8
 8006a80:	0800702c 	.word	0x0800702c
 8006a84:	080021a5 	.word	0x080021a5

08006a88 <_calloc_r>:
 8006a88:	b510      	push	{r4, lr}
 8006a8a:	fb02 f101 	mul.w	r1, r2, r1
 8006a8e:	f7fb fb99 	bl	80021c4 <_malloc_r>
 8006a92:	4604      	mov	r4, r0
 8006a94:	b1d8      	cbz	r0, 8006ace <_calloc_r+0x46>
 8006a96:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006a9a:	f022 0203 	bic.w	r2, r2, #3
 8006a9e:	3a04      	subs	r2, #4
 8006aa0:	2a24      	cmp	r2, #36	; 0x24
 8006aa2:	d81d      	bhi.n	8006ae0 <_calloc_r+0x58>
 8006aa4:	2a13      	cmp	r2, #19
 8006aa6:	d914      	bls.n	8006ad2 <_calloc_r+0x4a>
 8006aa8:	2300      	movs	r3, #0
 8006aaa:	2a1b      	cmp	r2, #27
 8006aac:	e9c0 3300 	strd	r3, r3, [r0]
 8006ab0:	d91b      	bls.n	8006aea <_calloc_r+0x62>
 8006ab2:	2a24      	cmp	r2, #36	; 0x24
 8006ab4:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006ab8:	bf0a      	itet	eq
 8006aba:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006abe:	f100 0210 	addne.w	r2, r0, #16
 8006ac2:	f100 0218 	addeq.w	r2, r0, #24
 8006ac6:	2300      	movs	r3, #0
 8006ac8:	e9c2 3300 	strd	r3, r3, [r2]
 8006acc:	6093      	str	r3, [r2, #8]
 8006ace:	4620      	mov	r0, r4
 8006ad0:	bd10      	pop	{r4, pc}
 8006ad2:	4602      	mov	r2, r0
 8006ad4:	2300      	movs	r3, #0
 8006ad6:	e9c2 3300 	strd	r3, r3, [r2]
 8006ada:	6093      	str	r3, [r2, #8]
 8006adc:	4620      	mov	r0, r4
 8006ade:	bd10      	pop	{r4, pc}
 8006ae0:	2100      	movs	r1, #0
 8006ae2:	f7fb fe13 	bl	800270c <memset>
 8006ae6:	4620      	mov	r0, r4
 8006ae8:	bd10      	pop	{r4, pc}
 8006aea:	f100 0208 	add.w	r2, r0, #8
 8006aee:	e7f1      	b.n	8006ad4 <_calloc_r+0x4c>

08006af0 <_close_r>:
 8006af0:	b538      	push	{r3, r4, r5, lr}
 8006af2:	4c07      	ldr	r4, [pc, #28]	; (8006b10 <_close_r+0x20>)
 8006af4:	2300      	movs	r3, #0
 8006af6:	4605      	mov	r5, r0
 8006af8:	4608      	mov	r0, r1
 8006afa:	6023      	str	r3, [r4, #0]
 8006afc:	f7fb fac8 	bl	8002090 <_close>
 8006b00:	1c43      	adds	r3, r0, #1
 8006b02:	d000      	beq.n	8006b06 <_close_r+0x16>
 8006b04:	bd38      	pop	{r3, r4, r5, pc}
 8006b06:	6823      	ldr	r3, [r4, #0]
 8006b08:	2b00      	cmp	r3, #0
 8006b0a:	d0fb      	beq.n	8006b04 <_close_r+0x14>
 8006b0c:	602b      	str	r3, [r5, #0]
 8006b0e:	bd38      	pop	{r3, r4, r5, pc}
 8006b10:	20000c9c 	.word	0x20000c9c

08006b14 <_fclose_r>:
 8006b14:	b570      	push	{r4, r5, r6, lr}
 8006b16:	2900      	cmp	r1, #0
 8006b18:	d048      	beq.n	8006bac <_fclose_r+0x98>
 8006b1a:	4605      	mov	r5, r0
 8006b1c:	460c      	mov	r4, r1
 8006b1e:	b110      	cbz	r0, 8006b26 <_fclose_r+0x12>
 8006b20:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006b22:	2b00      	cmp	r3, #0
 8006b24:	d048      	beq.n	8006bb8 <_fclose_r+0xa4>
 8006b26:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006b28:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b2c:	07d0      	lsls	r0, r2, #31
 8006b2e:	d440      	bmi.n	8006bb2 <_fclose_r+0x9e>
 8006b30:	0599      	lsls	r1, r3, #22
 8006b32:	d530      	bpl.n	8006b96 <_fclose_r+0x82>
 8006b34:	4621      	mov	r1, r4
 8006b36:	4628      	mov	r0, r5
 8006b38:	f7fe fc52 	bl	80053e0 <__sflush_r>
 8006b3c:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006b3e:	4606      	mov	r6, r0
 8006b40:	b133      	cbz	r3, 8006b50 <_fclose_r+0x3c>
 8006b42:	69e1      	ldr	r1, [r4, #28]
 8006b44:	4628      	mov	r0, r5
 8006b46:	4798      	blx	r3
 8006b48:	2800      	cmp	r0, #0
 8006b4a:	bfb8      	it	lt
 8006b4c:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006b50:	89a3      	ldrh	r3, [r4, #12]
 8006b52:	061a      	lsls	r2, r3, #24
 8006b54:	d43c      	bmi.n	8006bd0 <_fclose_r+0xbc>
 8006b56:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006b58:	b141      	cbz	r1, 8006b6c <_fclose_r+0x58>
 8006b5a:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006b5e:	4299      	cmp	r1, r3
 8006b60:	d002      	beq.n	8006b68 <_fclose_r+0x54>
 8006b62:	4628      	mov	r0, r5
 8006b64:	f7fe fde4 	bl	8005730 <_free_r>
 8006b68:	2300      	movs	r3, #0
 8006b6a:	6323      	str	r3, [r4, #48]	; 0x30
 8006b6c:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006b6e:	b121      	cbz	r1, 8006b7a <_fclose_r+0x66>
 8006b70:	4628      	mov	r0, r5
 8006b72:	f7fe fddd 	bl	8005730 <_free_r>
 8006b76:	2300      	movs	r3, #0
 8006b78:	6463      	str	r3, [r4, #68]	; 0x44
 8006b7a:	f7fe fd63 	bl	8005644 <__sfp_lock_acquire>
 8006b7e:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006b80:	2200      	movs	r2, #0
 8006b82:	07db      	lsls	r3, r3, #31
 8006b84:	81a2      	strh	r2, [r4, #12]
 8006b86:	d51f      	bpl.n	8006bc8 <_fclose_r+0xb4>
 8006b88:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b8a:	f7ff f87d 	bl	8005c88 <__retarget_lock_close_recursive>
 8006b8e:	f7fe fd5f 	bl	8005650 <__sfp_lock_release>
 8006b92:	4630      	mov	r0, r6
 8006b94:	bd70      	pop	{r4, r5, r6, pc}
 8006b96:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b98:	f7ff f878 	bl	8005c8c <__retarget_lock_acquire_recursive>
 8006b9c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ba0:	2b00      	cmp	r3, #0
 8006ba2:	d1c7      	bne.n	8006b34 <_fclose_r+0x20>
 8006ba4:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006ba6:	f016 0601 	ands.w	r6, r6, #1
 8006baa:	d016      	beq.n	8006bda <_fclose_r+0xc6>
 8006bac:	2600      	movs	r6, #0
 8006bae:	4630      	mov	r0, r6
 8006bb0:	bd70      	pop	{r4, r5, r6, pc}
 8006bb2:	2b00      	cmp	r3, #0
 8006bb4:	d0fa      	beq.n	8006bac <_fclose_r+0x98>
 8006bb6:	e7bd      	b.n	8006b34 <_fclose_r+0x20>
 8006bb8:	f7fe fd18 	bl	80055ec <__sinit>
 8006bbc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006bbe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006bc2:	07d0      	lsls	r0, r2, #31
 8006bc4:	d4f5      	bmi.n	8006bb2 <_fclose_r+0x9e>
 8006bc6:	e7b3      	b.n	8006b30 <_fclose_r+0x1c>
 8006bc8:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006bca:	f7ff f861 	bl	8005c90 <__retarget_lock_release_recursive>
 8006bce:	e7db      	b.n	8006b88 <_fclose_r+0x74>
 8006bd0:	6921      	ldr	r1, [r4, #16]
 8006bd2:	4628      	mov	r0, r5
 8006bd4:	f7fe fdac 	bl	8005730 <_free_r>
 8006bd8:	e7bd      	b.n	8006b56 <_fclose_r+0x42>
 8006bda:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006bdc:	f7ff f858 	bl	8005c90 <__retarget_lock_release_recursive>
 8006be0:	4630      	mov	r0, r6
 8006be2:	bd70      	pop	{r4, r5, r6, pc}

08006be4 <__fputwc>:
 8006be4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006be8:	b082      	sub	sp, #8
 8006bea:	4681      	mov	r9, r0
 8006bec:	4688      	mov	r8, r1
 8006bee:	4614      	mov	r4, r2
 8006bf0:	f000 f8a0 	bl	8006d34 <__locale_mb_cur_max>
 8006bf4:	2801      	cmp	r0, #1
 8006bf6:	d103      	bne.n	8006c00 <__fputwc+0x1c>
 8006bf8:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006bfc:	2bfe      	cmp	r3, #254	; 0xfe
 8006bfe:	d933      	bls.n	8006c68 <__fputwc+0x84>
 8006c00:	4642      	mov	r2, r8
 8006c02:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006c06:	a901      	add	r1, sp, #4
 8006c08:	4648      	mov	r0, r9
 8006c0a:	f000 f93b 	bl	8006e84 <_wcrtomb_r>
 8006c0e:	1c42      	adds	r2, r0, #1
 8006c10:	4606      	mov	r6, r0
 8006c12:	d02f      	beq.n	8006c74 <__fputwc+0x90>
 8006c14:	b320      	cbz	r0, 8006c60 <__fputwc+0x7c>
 8006c16:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006c1a:	2500      	movs	r5, #0
 8006c1c:	f10d 0a04 	add.w	sl, sp, #4
 8006c20:	e009      	b.n	8006c36 <__fputwc+0x52>
 8006c22:	6823      	ldr	r3, [r4, #0]
 8006c24:	1c5a      	adds	r2, r3, #1
 8006c26:	6022      	str	r2, [r4, #0]
 8006c28:	f883 c000 	strb.w	ip, [r3]
 8006c2c:	3501      	adds	r5, #1
 8006c2e:	42b5      	cmp	r5, r6
 8006c30:	d216      	bcs.n	8006c60 <__fputwc+0x7c>
 8006c32:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006c36:	68a3      	ldr	r3, [r4, #8]
 8006c38:	3b01      	subs	r3, #1
 8006c3a:	2b00      	cmp	r3, #0
 8006c3c:	60a3      	str	r3, [r4, #8]
 8006c3e:	daf0      	bge.n	8006c22 <__fputwc+0x3e>
 8006c40:	69a7      	ldr	r7, [r4, #24]
 8006c42:	42bb      	cmp	r3, r7
 8006c44:	4661      	mov	r1, ip
 8006c46:	4622      	mov	r2, r4
 8006c48:	4648      	mov	r0, r9
 8006c4a:	db02      	blt.n	8006c52 <__fputwc+0x6e>
 8006c4c:	f1bc 0f0a 	cmp.w	ip, #10
 8006c50:	d1e7      	bne.n	8006c22 <__fputwc+0x3e>
 8006c52:	f000 f8bf 	bl	8006dd4 <__swbuf_r>
 8006c56:	1c43      	adds	r3, r0, #1
 8006c58:	d1e8      	bne.n	8006c2c <__fputwc+0x48>
 8006c5a:	b002      	add	sp, #8
 8006c5c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c60:	4640      	mov	r0, r8
 8006c62:	b002      	add	sp, #8
 8006c64:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c68:	fa5f fc88 	uxtb.w	ip, r8
 8006c6c:	4606      	mov	r6, r0
 8006c6e:	f88d c004 	strb.w	ip, [sp, #4]
 8006c72:	e7d2      	b.n	8006c1a <__fputwc+0x36>
 8006c74:	89a3      	ldrh	r3, [r4, #12]
 8006c76:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006c7a:	81a3      	strh	r3, [r4, #12]
 8006c7c:	b002      	add	sp, #8
 8006c7e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c82:	bf00      	nop

08006c84 <_fputwc_r>:
 8006c84:	b530      	push	{r4, r5, lr}
 8006c86:	4605      	mov	r5, r0
 8006c88:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006c8a:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006c8e:	07c0      	lsls	r0, r0, #31
 8006c90:	4614      	mov	r4, r2
 8006c92:	b083      	sub	sp, #12
 8006c94:	b29a      	uxth	r2, r3
 8006c96:	d401      	bmi.n	8006c9c <_fputwc_r+0x18>
 8006c98:	0590      	lsls	r0, r2, #22
 8006c9a:	d51c      	bpl.n	8006cd6 <_fputwc_r+0x52>
 8006c9c:	0490      	lsls	r0, r2, #18
 8006c9e:	d406      	bmi.n	8006cae <_fputwc_r+0x2a>
 8006ca0:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006ca2:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006ca6:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006caa:	81a3      	strh	r3, [r4, #12]
 8006cac:	6662      	str	r2, [r4, #100]	; 0x64
 8006cae:	4628      	mov	r0, r5
 8006cb0:	4622      	mov	r2, r4
 8006cb2:	f7ff ff97 	bl	8006be4 <__fputwc>
 8006cb6:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006cb8:	07da      	lsls	r2, r3, #31
 8006cba:	4605      	mov	r5, r0
 8006cbc:	d402      	bmi.n	8006cc4 <_fputwc_r+0x40>
 8006cbe:	89a3      	ldrh	r3, [r4, #12]
 8006cc0:	059b      	lsls	r3, r3, #22
 8006cc2:	d502      	bpl.n	8006cca <_fputwc_r+0x46>
 8006cc4:	4628      	mov	r0, r5
 8006cc6:	b003      	add	sp, #12
 8006cc8:	bd30      	pop	{r4, r5, pc}
 8006cca:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ccc:	f7fe ffe0 	bl	8005c90 <__retarget_lock_release_recursive>
 8006cd0:	4628      	mov	r0, r5
 8006cd2:	b003      	add	sp, #12
 8006cd4:	bd30      	pop	{r4, r5, pc}
 8006cd6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cd8:	9101      	str	r1, [sp, #4]
 8006cda:	f7fe ffd7 	bl	8005c8c <__retarget_lock_acquire_recursive>
 8006cde:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ce2:	9901      	ldr	r1, [sp, #4]
 8006ce4:	b29a      	uxth	r2, r3
 8006ce6:	e7d9      	b.n	8006c9c <_fputwc_r+0x18>

08006ce8 <_fstat_r>:
 8006ce8:	b538      	push	{r3, r4, r5, lr}
 8006cea:	460b      	mov	r3, r1
 8006cec:	4c07      	ldr	r4, [pc, #28]	; (8006d0c <_fstat_r+0x24>)
 8006cee:	4605      	mov	r5, r0
 8006cf0:	4611      	mov	r1, r2
 8006cf2:	4618      	mov	r0, r3
 8006cf4:	2300      	movs	r3, #0
 8006cf6:	6023      	str	r3, [r4, #0]
 8006cf8:	f7fb f9cd 	bl	8002096 <_fstat>
 8006cfc:	1c43      	adds	r3, r0, #1
 8006cfe:	d000      	beq.n	8006d02 <_fstat_r+0x1a>
 8006d00:	bd38      	pop	{r3, r4, r5, pc}
 8006d02:	6823      	ldr	r3, [r4, #0]
 8006d04:	2b00      	cmp	r3, #0
 8006d06:	d0fb      	beq.n	8006d00 <_fstat_r+0x18>
 8006d08:	602b      	str	r3, [r5, #0]
 8006d0a:	bd38      	pop	{r3, r4, r5, pc}
 8006d0c:	20000c9c 	.word	0x20000c9c

08006d10 <_isatty_r>:
 8006d10:	b538      	push	{r3, r4, r5, lr}
 8006d12:	4c07      	ldr	r4, [pc, #28]	; (8006d30 <_isatty_r+0x20>)
 8006d14:	2300      	movs	r3, #0
 8006d16:	4605      	mov	r5, r0
 8006d18:	4608      	mov	r0, r1
 8006d1a:	6023      	str	r3, [r4, #0]
 8006d1c:	f7fb f9c0 	bl	80020a0 <_isatty>
 8006d20:	1c43      	adds	r3, r0, #1
 8006d22:	d000      	beq.n	8006d26 <_isatty_r+0x16>
 8006d24:	bd38      	pop	{r3, r4, r5, pc}
 8006d26:	6823      	ldr	r3, [r4, #0]
 8006d28:	2b00      	cmp	r3, #0
 8006d2a:	d0fb      	beq.n	8006d24 <_isatty_r+0x14>
 8006d2c:	602b      	str	r3, [r5, #0]
 8006d2e:	bd38      	pop	{r3, r4, r5, pc}
 8006d30:	20000c9c 	.word	0x20000c9c

08006d34 <__locale_mb_cur_max>:
 8006d34:	4b04      	ldr	r3, [pc, #16]	; (8006d48 <__locale_mb_cur_max+0x14>)
 8006d36:	4a05      	ldr	r2, [pc, #20]	; (8006d4c <__locale_mb_cur_max+0x18>)
 8006d38:	681b      	ldr	r3, [r3, #0]
 8006d3a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006d3c:	2b00      	cmp	r3, #0
 8006d3e:	bf08      	it	eq
 8006d40:	4613      	moveq	r3, r2
 8006d42:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006d46:	4770      	bx	lr
 8006d48:	200001a8 	.word	0x200001a8
 8006d4c:	200009ec 	.word	0x200009ec

08006d50 <_lseek_r>:
 8006d50:	b570      	push	{r4, r5, r6, lr}
 8006d52:	460d      	mov	r5, r1
 8006d54:	4c08      	ldr	r4, [pc, #32]	; (8006d78 <_lseek_r+0x28>)
 8006d56:	4611      	mov	r1, r2
 8006d58:	4606      	mov	r6, r0
 8006d5a:	461a      	mov	r2, r3
 8006d5c:	4628      	mov	r0, r5
 8006d5e:	2300      	movs	r3, #0
 8006d60:	6023      	str	r3, [r4, #0]
 8006d62:	f7fb f99f 	bl	80020a4 <_lseek>
 8006d66:	1c43      	adds	r3, r0, #1
 8006d68:	d000      	beq.n	8006d6c <_lseek_r+0x1c>
 8006d6a:	bd70      	pop	{r4, r5, r6, pc}
 8006d6c:	6823      	ldr	r3, [r4, #0]
 8006d6e:	2b00      	cmp	r3, #0
 8006d70:	d0fb      	beq.n	8006d6a <_lseek_r+0x1a>
 8006d72:	6033      	str	r3, [r6, #0]
 8006d74:	bd70      	pop	{r4, r5, r6, pc}
 8006d76:	bf00      	nop
 8006d78:	20000c9c 	.word	0x20000c9c

08006d7c <__ascii_mbtowc>:
 8006d7c:	b082      	sub	sp, #8
 8006d7e:	b149      	cbz	r1, 8006d94 <__ascii_mbtowc+0x18>
 8006d80:	b15a      	cbz	r2, 8006d9a <__ascii_mbtowc+0x1e>
 8006d82:	b16b      	cbz	r3, 8006da0 <__ascii_mbtowc+0x24>
 8006d84:	7813      	ldrb	r3, [r2, #0]
 8006d86:	600b      	str	r3, [r1, #0]
 8006d88:	7812      	ldrb	r2, [r2, #0]
 8006d8a:	1c10      	adds	r0, r2, #0
 8006d8c:	bf18      	it	ne
 8006d8e:	2001      	movne	r0, #1
 8006d90:	b002      	add	sp, #8
 8006d92:	4770      	bx	lr
 8006d94:	a901      	add	r1, sp, #4
 8006d96:	2a00      	cmp	r2, #0
 8006d98:	d1f3      	bne.n	8006d82 <__ascii_mbtowc+0x6>
 8006d9a:	4610      	mov	r0, r2
 8006d9c:	b002      	add	sp, #8
 8006d9e:	4770      	bx	lr
 8006da0:	f06f 0001 	mvn.w	r0, #1
 8006da4:	e7f4      	b.n	8006d90 <__ascii_mbtowc+0x14>
 8006da6:	bf00      	nop

08006da8 <_read_r>:
 8006da8:	b570      	push	{r4, r5, r6, lr}
 8006daa:	460d      	mov	r5, r1
 8006dac:	4c08      	ldr	r4, [pc, #32]	; (8006dd0 <_read_r+0x28>)
 8006dae:	4611      	mov	r1, r2
 8006db0:	4606      	mov	r6, r0
 8006db2:	461a      	mov	r2, r3
 8006db4:	4628      	mov	r0, r5
 8006db6:	2300      	movs	r3, #0
 8006db8:	6023      	str	r3, [r4, #0]
 8006dba:	f7fb f927 	bl	800200c <_read>
 8006dbe:	1c43      	adds	r3, r0, #1
 8006dc0:	d000      	beq.n	8006dc4 <_read_r+0x1c>
 8006dc2:	bd70      	pop	{r4, r5, r6, pc}
 8006dc4:	6823      	ldr	r3, [r4, #0]
 8006dc6:	2b00      	cmp	r3, #0
 8006dc8:	d0fb      	beq.n	8006dc2 <_read_r+0x1a>
 8006dca:	6033      	str	r3, [r6, #0]
 8006dcc:	bd70      	pop	{r4, r5, r6, pc}
 8006dce:	bf00      	nop
 8006dd0:	20000c9c 	.word	0x20000c9c

08006dd4 <__swbuf_r>:
 8006dd4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006dd6:	460d      	mov	r5, r1
 8006dd8:	4614      	mov	r4, r2
 8006dda:	4606      	mov	r6, r0
 8006ddc:	b110      	cbz	r0, 8006de4 <__swbuf_r+0x10>
 8006dde:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006de0:	2b00      	cmp	r3, #0
 8006de2:	d043      	beq.n	8006e6c <__swbuf_r+0x98>
 8006de4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006de8:	69a3      	ldr	r3, [r4, #24]
 8006dea:	60a3      	str	r3, [r4, #8]
 8006dec:	b291      	uxth	r1, r2
 8006dee:	0708      	lsls	r0, r1, #28
 8006df0:	d51b      	bpl.n	8006e2a <__swbuf_r+0x56>
 8006df2:	6923      	ldr	r3, [r4, #16]
 8006df4:	b1cb      	cbz	r3, 8006e2a <__swbuf_r+0x56>
 8006df6:	b2ed      	uxtb	r5, r5
 8006df8:	0489      	lsls	r1, r1, #18
 8006dfa:	462f      	mov	r7, r5
 8006dfc:	d522      	bpl.n	8006e44 <__swbuf_r+0x70>
 8006dfe:	6822      	ldr	r2, [r4, #0]
 8006e00:	6961      	ldr	r1, [r4, #20]
 8006e02:	1ad3      	subs	r3, r2, r3
 8006e04:	4299      	cmp	r1, r3
 8006e06:	dd29      	ble.n	8006e5c <__swbuf_r+0x88>
 8006e08:	3301      	adds	r3, #1
 8006e0a:	68a1      	ldr	r1, [r4, #8]
 8006e0c:	1c50      	adds	r0, r2, #1
 8006e0e:	3901      	subs	r1, #1
 8006e10:	60a1      	str	r1, [r4, #8]
 8006e12:	6020      	str	r0, [r4, #0]
 8006e14:	7015      	strb	r5, [r2, #0]
 8006e16:	6962      	ldr	r2, [r4, #20]
 8006e18:	429a      	cmp	r2, r3
 8006e1a:	d02a      	beq.n	8006e72 <__swbuf_r+0x9e>
 8006e1c:	89a3      	ldrh	r3, [r4, #12]
 8006e1e:	07db      	lsls	r3, r3, #31
 8006e20:	d501      	bpl.n	8006e26 <__swbuf_r+0x52>
 8006e22:	2d0a      	cmp	r5, #10
 8006e24:	d025      	beq.n	8006e72 <__swbuf_r+0x9e>
 8006e26:	4638      	mov	r0, r7
 8006e28:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006e2a:	4621      	mov	r1, r4
 8006e2c:	4630      	mov	r0, r6
 8006e2e:	f7fd fabf 	bl	80043b0 <__swsetup_r>
 8006e32:	bb20      	cbnz	r0, 8006e7e <__swbuf_r+0xaa>
 8006e34:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006e38:	6923      	ldr	r3, [r4, #16]
 8006e3a:	b291      	uxth	r1, r2
 8006e3c:	b2ed      	uxtb	r5, r5
 8006e3e:	0489      	lsls	r1, r1, #18
 8006e40:	462f      	mov	r7, r5
 8006e42:	d4dc      	bmi.n	8006dfe <__swbuf_r+0x2a>
 8006e44:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006e46:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006e4a:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006e4e:	81a2      	strh	r2, [r4, #12]
 8006e50:	6822      	ldr	r2, [r4, #0]
 8006e52:	6661      	str	r1, [r4, #100]	; 0x64
 8006e54:	6961      	ldr	r1, [r4, #20]
 8006e56:	1ad3      	subs	r3, r2, r3
 8006e58:	4299      	cmp	r1, r3
 8006e5a:	dcd5      	bgt.n	8006e08 <__swbuf_r+0x34>
 8006e5c:	4621      	mov	r1, r4
 8006e5e:	4630      	mov	r0, r6
 8006e60:	f7fe fb68 	bl	8005534 <_fflush_r>
 8006e64:	b958      	cbnz	r0, 8006e7e <__swbuf_r+0xaa>
 8006e66:	6822      	ldr	r2, [r4, #0]
 8006e68:	2301      	movs	r3, #1
 8006e6a:	e7ce      	b.n	8006e0a <__swbuf_r+0x36>
 8006e6c:	f7fe fbbe 	bl	80055ec <__sinit>
 8006e70:	e7b8      	b.n	8006de4 <__swbuf_r+0x10>
 8006e72:	4621      	mov	r1, r4
 8006e74:	4630      	mov	r0, r6
 8006e76:	f7fe fb5d 	bl	8005534 <_fflush_r>
 8006e7a:	2800      	cmp	r0, #0
 8006e7c:	d0d3      	beq.n	8006e26 <__swbuf_r+0x52>
 8006e7e:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006e82:	e7d0      	b.n	8006e26 <__swbuf_r+0x52>

08006e84 <_wcrtomb_r>:
 8006e84:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006e86:	4c11      	ldr	r4, [pc, #68]	; (8006ecc <_wcrtomb_r+0x48>)
 8006e88:	6824      	ldr	r4, [r4, #0]
 8006e8a:	b085      	sub	sp, #20
 8006e8c:	4606      	mov	r6, r0
 8006e8e:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006e90:	461f      	mov	r7, r3
 8006e92:	b151      	cbz	r1, 8006eaa <_wcrtomb_r+0x26>
 8006e94:	4d0e      	ldr	r5, [pc, #56]	; (8006ed0 <_wcrtomb_r+0x4c>)
 8006e96:	2c00      	cmp	r4, #0
 8006e98:	bf08      	it	eq
 8006e9a:	462c      	moveq	r4, r5
 8006e9c:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006ea0:	47a0      	blx	r4
 8006ea2:	1c43      	adds	r3, r0, #1
 8006ea4:	d00c      	beq.n	8006ec0 <_wcrtomb_r+0x3c>
 8006ea6:	b005      	add	sp, #20
 8006ea8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006eaa:	4a09      	ldr	r2, [pc, #36]	; (8006ed0 <_wcrtomb_r+0x4c>)
 8006eac:	2c00      	cmp	r4, #0
 8006eae:	bf08      	it	eq
 8006eb0:	4614      	moveq	r4, r2
 8006eb2:	460a      	mov	r2, r1
 8006eb4:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006eb8:	a901      	add	r1, sp, #4
 8006eba:	47a0      	blx	r4
 8006ebc:	1c43      	adds	r3, r0, #1
 8006ebe:	d1f2      	bne.n	8006ea6 <_wcrtomb_r+0x22>
 8006ec0:	2200      	movs	r2, #0
 8006ec2:	238a      	movs	r3, #138	; 0x8a
 8006ec4:	603a      	str	r2, [r7, #0]
 8006ec6:	6033      	str	r3, [r6, #0]
 8006ec8:	b005      	add	sp, #20
 8006eca:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006ecc:	200001a8 	.word	0x200001a8
 8006ed0:	200009ec 	.word	0x200009ec

08006ed4 <__ascii_wctomb>:
 8006ed4:	b121      	cbz	r1, 8006ee0 <__ascii_wctomb+0xc>
 8006ed6:	2aff      	cmp	r2, #255	; 0xff
 8006ed8:	d804      	bhi.n	8006ee4 <__ascii_wctomb+0x10>
 8006eda:	700a      	strb	r2, [r1, #0]
 8006edc:	2001      	movs	r0, #1
 8006ede:	4770      	bx	lr
 8006ee0:	4608      	mov	r0, r1
 8006ee2:	4770      	bx	lr
 8006ee4:	238a      	movs	r3, #138	; 0x8a
 8006ee6:	6003      	str	r3, [r0, #0]
 8006ee8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006eec:	4770      	bx	lr
 8006eee:	bf00      	nop

08006ef0 <_init>:
 8006ef0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006ef2:	bf00      	nop
 8006ef4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006ef6:	bc08      	pop	{r3}
 8006ef8:	469e      	mov	lr, r3
 8006efa:	4770      	bx	lr

08006efc <_fini>:
 8006efc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006efe:	bf00      	nop
 8006f00:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006f02:	bc08      	pop	{r3}
 8006f04:	469e      	mov	lr, r3
 8006f06:	4770      	bx	lr
