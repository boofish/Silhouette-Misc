
bubblesort.elf:     file format elf32-littlearm


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
 80001e0:	08006ef4 	.word	0x08006ef4

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
 80001fc:	08006ef4 	.word	0x08006ef4

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
 8001108:	f640 20a0 	movw	r0, #2720	; 0xaa0
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 20a0 	movw	r0, #2720	; 0xaa0
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
 80013e8:	f646 7228 	movw	r2, #28456	; 0x6f28
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
 8001462:	f646 7220 	movw	r2, #28448	; 0x6f20
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
 800148c:	f646 7220 	movw	r2, #28448	; 0x6f20
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
 8001842:	f640 21a4 	movw	r1, #2724	; 0xaa4
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
 800188c:	f640 20a4 	movw	r0, #2724	; 0xaa4
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 20a4 	movw	r0, #2724	; 0xaa4
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
 80019d4:	f646 7358 	movw	r3, #28504	; 0x6f58
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
 80019fc:	f646 7368 	movw	r3, #28520	; 0x6f68
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

08001eb6 <benchmark>:
 8001eb6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eb8:	af03      	add	r7, sp, #12
 8001eba:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001ebe:	f640 2cec 	movw	ip, #2796	; 0xaec
 8001ec2:	2000      	movs	r0, #0
 8001ec4:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8001ec8:	f1c0 0264 	rsb	r2, r0, #100	; 0x64
 8001ecc:	2100      	movs	r1, #0
 8001ece:	f04f 0e01 	mov.w	lr, #1
 8001ed2:	e003      	b.n	8001edc <benchmark+0x26>
 8001ed4:	e944 6502 	strd	r6, r5, [r4, #-8]
 8001ed8:	f04f 0e00 	mov.w	lr, #0
 8001edc:	eb0c 0381 	add.w	r3, ip, r1, lsl #2
 8001ee0:	3304      	adds	r3, #4
 8001ee2:	2963      	cmp	r1, #99	; 0x63
 8001ee4:	bfd8      	it	le
 8001ee6:	4291      	cmple	r1, r2
 8001ee8:	da08      	bge.n	8001efc <benchmark+0x46>
 8001eea:	f853 5c04 	ldr.w	r5, [r3, #-4]
 8001eee:	681e      	ldr	r6, [r3, #0]
 8001ef0:	1d1c      	adds	r4, r3, #4
 8001ef2:	3101      	adds	r1, #1
 8001ef4:	4623      	mov	r3, r4
 8001ef6:	42b5      	cmp	r5, r6
 8001ef8:	ddf3      	ble.n	8001ee2 <benchmark+0x2c>
 8001efa:	e7eb      	b.n	8001ed4 <benchmark+0x1e>
 8001efc:	3001      	adds	r0, #1
 8001efe:	2863      	cmp	r0, #99	; 0x63
 8001f00:	dc02      	bgt.n	8001f08 <benchmark+0x52>
 8001f02:	f1be 0f00 	cmp.w	lr, #0
 8001f06:	d0df      	beq.n	8001ec8 <benchmark+0x12>
 8001f08:	2000      	movs	r0, #0
 8001f0a:	f85d bb04 	ldr.w	fp, [sp], #4
 8001f0e:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001f10 <initialise_benchmark>:
 8001f10:	f640 4080 	movw	r0, #3200	; 0xc80
 8001f14:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8001f18:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f1c:	6001      	str	r1, [r0, #0]
 8001f1e:	f640 20ec 	movw	r0, #2796	; 0xaec
 8001f22:	2100      	movs	r1, #0
 8001f24:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f28:	f840 1b04 	str.w	r1, [r0], #4
 8001f2c:	3901      	subs	r1, #1
 8001f2e:	f111 0264 	adds.w	r2, r1, #100	; 0x64
 8001f32:	d1f9      	bne.n	8001f28 <initialise_benchmark+0x18>
 8001f34:	4770      	bx	lr

08001f36 <verify_benchmark>:
 8001f36:	f646 7c78 	movw	ip, #28536	; 0x6f78
 8001f3a:	f640 22ec 	movw	r2, #2796	; 0xaec
 8001f3e:	2000      	movs	r0, #0
 8001f40:	f6c0 0c00 	movt	ip, #2048	; 0x800
 8001f44:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001f48:	f85c 3020 	ldr.w	r3, [ip, r0, lsl #2]
 8001f4c:	f852 1020 	ldr.w	r1, [r2, r0, lsl #2]
 8001f50:	4299      	cmp	r1, r3
 8001f52:	bf1c      	itt	ne
 8001f54:	2000      	movne	r0, #0
 8001f56:	4770      	bxne	lr
 8001f58:	3001      	adds	r0, #1
 8001f5a:	2863      	cmp	r0, #99	; 0x63
 8001f5c:	bfc4      	itt	gt
 8001f5e:	2001      	movgt	r0, #1
 8001f60:	4770      	bxgt	lr
 8001f62:	e7f1      	b.n	8001f48 <verify_benchmark+0x12>

08001f64 <__io_putchar>:
 8001f64:	b580      	push	{r7, lr}
 8001f66:	466f      	mov	r7, sp
 8001f68:	b082      	sub	sp, #8
 8001f6a:	9001      	str	r0, [sp, #4]
 8001f6c:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8001f70:	a901      	add	r1, sp, #4
 8001f72:	2201      	movs	r2, #1
 8001f74:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001f78:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f7c:	f7ff fead 	bl	8001cda <HAL_UART_Transmit>
 8001f80:	9801      	ldr	r0, [sp, #4]
 8001f82:	b002      	add	sp, #8
 8001f84:	bd80      	pop	{r7, pc}

08001f86 <main>:
 8001f86:	b5b0      	push	{r4, r5, r7, lr}
 8001f88:	af02      	add	r7, sp, #8
 8001f8a:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8001f8e:	f643 0000 	movw	r0, #14336	; 0x3800
 8001f92:	220c      	movs	r2, #12
 8001f94:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001f98:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001f9c:	6008      	str	r0, [r1, #0]
 8001f9e:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8001fa2:	6048      	str	r0, [r1, #4]
 8001fa4:	2000      	movs	r0, #0
 8001fa6:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8001faa:	6108      	str	r0, [r1, #16]
 8001fac:	6248      	str	r0, [r1, #36]	; 0x24
 8001fae:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8001fb2:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8001fb6:	2000      	movs	r0, #0
 8001fb8:	f7ff ff24 	bl	8001e04 <BSP_COM_Init>
 8001fbc:	f7ff ffa8 	bl	8001f10 <initialise_benchmark>
 8001fc0:	f247 1008 	movw	r0, #28936	; 0x7108
 8001fc4:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fc8:	f000 f948 	bl	800225c <printf>
 8001fcc:	f247 10b5 	movw	r0, #29109	; 0x71b5
 8001fd0:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fd4:	f000 f9a4 	bl	8002320 <puts>
 8001fd8:	f7ff f886 	bl	80010e8 <HAL_Init>
 8001fdc:	f7ff f89c 	bl	8001118 <HAL_GetTick>
 8001fe0:	4604      	mov	r4, r0
 8001fe2:	f7ff ff68 	bl	8001eb6 <benchmark>
 8001fe6:	4605      	mov	r5, r0
 8001fe8:	f7ff f896 	bl	8001118 <HAL_GetTick>
 8001fec:	1b04      	subs	r4, r0, r4
 8001fee:	4628      	mov	r0, r5
 8001ff0:	f7ff ffa1 	bl	8001f36 <verify_benchmark>
 8001ff4:	1c41      	adds	r1, r0, #1
 8001ff6:	d006      	beq.n	8002006 <main+0x80>
 8001ff8:	2801      	cmp	r0, #1
 8001ffa:	d109      	bne.n	8002010 <main+0x8a>
 8001ffc:	f247 1021 	movw	r0, #28961	; 0x7121
 8002000:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002004:	e008      	b.n	8002018 <main+0x92>
 8002006:	f247 1045 	movw	r0, #28997	; 0x7145
 800200a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800200e:	e003      	b.n	8002018 <main+0x92>
 8002010:	f247 107a 	movw	r0, #29050	; 0x717a
 8002014:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002018:	4621      	mov	r1, r4
 800201a:	f000 f91f 	bl	800225c <printf>
 800201e:	2000      	movs	r0, #0
 8002020:	bdb0      	pop	{r4, r5, r7, pc}

08002022 <SysTick_Handler>:
 8002022:	b580      	push	{r7, lr}
 8002024:	466f      	mov	r7, sp
 8002026:	f7ff f86f 	bl	8001108 <HAL_IncTick>
 800202a:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 800202e:	f7ff b8c9 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

08002032 <_read>:
 8002032:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002034:	af03      	add	r7, sp, #12
 8002036:	f84d bd04 	str.w	fp, [sp, #-4]!
 800203a:	4614      	mov	r4, r2
 800203c:	460d      	mov	r5, r1
 800203e:	2c01      	cmp	r4, #1
 8002040:	db06      	blt.n	8002050 <_read+0x1e>
 8002042:	4626      	mov	r6, r4
 8002044:	f3af 8000 	nop.w
 8002048:	f805 0b01 	strb.w	r0, [r5], #1
 800204c:	3e01      	subs	r6, #1
 800204e:	d1f9      	bne.n	8002044 <_read+0x12>
 8002050:	4620      	mov	r0, r4
 8002052:	f85d bb04 	ldr.w	fp, [sp], #4
 8002056:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002058 <_write>:
 8002058:	b5f0      	push	{r4, r5, r6, r7, lr}
 800205a:	af03      	add	r7, sp, #12
 800205c:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002060:	4614      	mov	r4, r2
 8002062:	460d      	mov	r5, r1
 8002064:	2c01      	cmp	r4, #1
 8002066:	db06      	blt.n	8002076 <_write+0x1e>
 8002068:	4626      	mov	r6, r4
 800206a:	f815 0b01 	ldrb.w	r0, [r5], #1
 800206e:	f7ff ff79 	bl	8001f64 <__io_putchar>
 8002072:	3e01      	subs	r6, #1
 8002074:	d1f9      	bne.n	800206a <_write+0x12>
 8002076:	4620      	mov	r0, r4
 8002078:	f85d bb04 	ldr.w	fp, [sp], #4
 800207c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800207e <_sbrk>:
 800207e:	f640 2268 	movw	r2, #2664	; 0xa68
 8002082:	4601      	mov	r1, r0
 8002084:	466b      	mov	r3, sp
 8002086:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800208a:	6810      	ldr	r0, [r2, #0]
 800208c:	2800      	cmp	r0, #0
 800208e:	bf02      	ittt	eq
 8002090:	f640 40b0 	movweq	r0, #3248	; 0xcb0
 8002094:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002098:	6010      	streq	r0, [r2, #0]
 800209a:	4401      	add	r1, r0
 800209c:	4299      	cmp	r1, r3
 800209e:	bf9c      	itt	ls
 80020a0:	6011      	strls	r1, [r2, #0]
 80020a2:	4770      	bxls	lr
 80020a4:	b580      	push	{r7, lr}
 80020a6:	466f      	mov	r7, sp
 80020a8:	f000 f864 	bl	8002174 <__errno>
 80020ac:	210c      	movs	r1, #12
 80020ae:	6001      	str	r1, [r0, #0]
 80020b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80020b4:	bd80      	pop	{r7, pc}

080020b6 <_close>:
 80020b6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80020ba:	4770      	bx	lr

080020bc <_fstat>:
 80020bc:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80020c0:	6048      	str	r0, [r1, #4]
 80020c2:	2000      	movs	r0, #0
 80020c4:	4770      	bx	lr

080020c6 <_isatty>:
 80020c6:	2001      	movs	r0, #1
 80020c8:	4770      	bx	lr

080020ca <_lseek>:
 80020ca:	2000      	movs	r0, #0
 80020cc:	4770      	bx	lr

080020ce <SystemInit>:
 80020ce:	f64e 5088 	movw	r0, #60808	; 0xed88
 80020d2:	f04f 0c00 	mov.w	ip, #0
 80020d6:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80020da:	6801      	ldr	r1, [r0, #0]
 80020dc:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80020e0:	6001      	str	r1, [r0, #0]
 80020e2:	f241 0100 	movw	r1, #4096	; 0x1000
 80020e6:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80020ea:	680a      	ldr	r2, [r1, #0]
 80020ec:	f042 0201 	orr.w	r2, r2, #1
 80020f0:	600a      	str	r2, [r1, #0]
 80020f2:	f8c1 c008 	str.w	ip, [r1, #8]
 80020f6:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80020fa:	680b      	ldr	r3, [r1, #0]
 80020fc:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002100:	401a      	ands	r2, r3
 8002102:	600a      	str	r2, [r1, #0]
 8002104:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002108:	60ca      	str	r2, [r1, #12]
 800210a:	680a      	ldr	r2, [r1, #0]
 800210c:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002110:	600a      	str	r2, [r1, #0]
 8002112:	f8c1 c018 	str.w	ip, [r1, #24]
 8002116:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 800211a:	f840 1c80 	str.w	r1, [r0, #-128]
 800211e:	4770      	bx	lr

08002120 <Reset_Handler>:
 8002120:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002158 <LoopForever+0x2>
 8002124:	2100      	movs	r1, #0
 8002126:	e003      	b.n	8002130 <LoopCopyDataInit>

08002128 <CopyDataInit>:
 8002128:	4b0c      	ldr	r3, [pc, #48]	; (800215c <LoopForever+0x6>)
 800212a:	585b      	ldr	r3, [r3, r1]
 800212c:	5043      	str	r3, [r0, r1]
 800212e:	3104      	adds	r1, #4

08002130 <LoopCopyDataInit>:
 8002130:	480b      	ldr	r0, [pc, #44]	; (8002160 <LoopForever+0xa>)
 8002132:	4b0c      	ldr	r3, [pc, #48]	; (8002164 <LoopForever+0xe>)
 8002134:	1842      	adds	r2, r0, r1
 8002136:	429a      	cmp	r2, r3
 8002138:	d3f6      	bcc.n	8002128 <CopyDataInit>
 800213a:	4a0b      	ldr	r2, [pc, #44]	; (8002168 <LoopForever+0x12>)
 800213c:	e002      	b.n	8002144 <LoopFillZerobss>

0800213e <FillZerobss>:
 800213e:	2300      	movs	r3, #0
 8002140:	f842 3b04 	str.w	r3, [r2], #4

08002144 <LoopFillZerobss>:
 8002144:	4b09      	ldr	r3, [pc, #36]	; (800216c <LoopForever+0x16>)
 8002146:	429a      	cmp	r2, r3
 8002148:	d3f9      	bcc.n	800213e <FillZerobss>
 800214a:	f7ff ffc0 	bl	80020ce <SystemInit>
 800214e:	f000 f817 	bl	8002180 <__libc_init_array>
 8002152:	f7ff ff18 	bl	8001f86 <main>

08002156 <LoopForever>:
 8002156:	e7fe      	b.n	8002156 <LoopForever>
 8002158:	20018000 	.word	0x20018000
 800215c:	08007460 	.word	0x08007460
 8002160:	20000000 	.word	0x20000000
 8002164:	200009c8 	.word	0x200009c8
 8002168:	200009c8 	.word	0x200009c8
 800216c:	20000cac 	.word	0x20000cac

08002170 <ADC1_2_IRQHandler>:
 8002170:	e7fe      	b.n	8002170 <ADC1_2_IRQHandler>
	...

08002174 <__errno>:
 8002174:	4b01      	ldr	r3, [pc, #4]	; (800217c <__errno+0x8>)
 8002176:	6818      	ldr	r0, [r3, #0]
 8002178:	4770      	bx	lr
 800217a:	bf00      	nop
 800217c:	20000018 	.word	0x20000018

08002180 <__libc_init_array>:
 8002180:	b570      	push	{r4, r5, r6, lr}
 8002182:	4e0d      	ldr	r6, [pc, #52]	; (80021b8 <__libc_init_array+0x38>)
 8002184:	4d0d      	ldr	r5, [pc, #52]	; (80021bc <__libc_init_array+0x3c>)
 8002186:	1b76      	subs	r6, r6, r5
 8002188:	10b6      	asrs	r6, r6, #2
 800218a:	d006      	beq.n	800219a <__libc_init_array+0x1a>
 800218c:	2400      	movs	r4, #0
 800218e:	3401      	adds	r4, #1
 8002190:	f855 3b04 	ldr.w	r3, [r5], #4
 8002194:	4798      	blx	r3
 8002196:	42a6      	cmp	r6, r4
 8002198:	d1f9      	bne.n	800218e <__libc_init_array+0xe>
 800219a:	4e09      	ldr	r6, [pc, #36]	; (80021c0 <__libc_init_array+0x40>)
 800219c:	4d09      	ldr	r5, [pc, #36]	; (80021c4 <__libc_init_array+0x44>)
 800219e:	1b76      	subs	r6, r6, r5
 80021a0:	f004 fea8 	bl	8006ef4 <_init>
 80021a4:	10b6      	asrs	r6, r6, #2
 80021a6:	d006      	beq.n	80021b6 <__libc_init_array+0x36>
 80021a8:	2400      	movs	r4, #0
 80021aa:	3401      	adds	r4, #1
 80021ac:	f855 3b04 	ldr.w	r3, [r5], #4
 80021b0:	4798      	blx	r3
 80021b2:	42a6      	cmp	r6, r4
 80021b4:	d1f9      	bne.n	80021aa <__libc_init_array+0x2a>
 80021b6:	bd70      	pop	{r4, r5, r6, pc}
 80021b8:	08007450 	.word	0x08007450
 80021bc:	08007450 	.word	0x08007450
 80021c0:	08007458 	.word	0x08007458
 80021c4:	08007450 	.word	0x08007450

080021c8 <memset>:
 80021c8:	b4f0      	push	{r4, r5, r6, r7}
 80021ca:	0786      	lsls	r6, r0, #30
 80021cc:	d043      	beq.n	8002256 <memset+0x8e>
 80021ce:	1e54      	subs	r4, r2, #1
 80021d0:	2a00      	cmp	r2, #0
 80021d2:	d03e      	beq.n	8002252 <memset+0x8a>
 80021d4:	b2ca      	uxtb	r2, r1
 80021d6:	4603      	mov	r3, r0
 80021d8:	e002      	b.n	80021e0 <memset+0x18>
 80021da:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80021de:	d338      	bcc.n	8002252 <memset+0x8a>
 80021e0:	f803 2b01 	strb.w	r2, [r3], #1
 80021e4:	079d      	lsls	r5, r3, #30
 80021e6:	d1f8      	bne.n	80021da <memset+0x12>
 80021e8:	2c03      	cmp	r4, #3
 80021ea:	d92b      	bls.n	8002244 <memset+0x7c>
 80021ec:	b2cd      	uxtb	r5, r1
 80021ee:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80021f2:	2c0f      	cmp	r4, #15
 80021f4:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80021f8:	d916      	bls.n	8002228 <memset+0x60>
 80021fa:	f1a4 0710 	sub.w	r7, r4, #16
 80021fe:	093f      	lsrs	r7, r7, #4
 8002200:	f103 0620 	add.w	r6, r3, #32
 8002204:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002208:	f103 0210 	add.w	r2, r3, #16
 800220c:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002210:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002214:	3210      	adds	r2, #16
 8002216:	42b2      	cmp	r2, r6
 8002218:	d1f8      	bne.n	800220c <memset+0x44>
 800221a:	f004 040f 	and.w	r4, r4, #15
 800221e:	3701      	adds	r7, #1
 8002220:	2c03      	cmp	r4, #3
 8002222:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002226:	d90d      	bls.n	8002244 <memset+0x7c>
 8002228:	461e      	mov	r6, r3
 800222a:	4622      	mov	r2, r4
 800222c:	3a04      	subs	r2, #4
 800222e:	2a03      	cmp	r2, #3
 8002230:	f846 5b04 	str.w	r5, [r6], #4
 8002234:	d8fa      	bhi.n	800222c <memset+0x64>
 8002236:	1f22      	subs	r2, r4, #4
 8002238:	f022 0203 	bic.w	r2, r2, #3
 800223c:	3204      	adds	r2, #4
 800223e:	4413      	add	r3, r2
 8002240:	f004 0403 	and.w	r4, r4, #3
 8002244:	b12c      	cbz	r4, 8002252 <memset+0x8a>
 8002246:	b2c9      	uxtb	r1, r1
 8002248:	441c      	add	r4, r3
 800224a:	f803 1b01 	strb.w	r1, [r3], #1
 800224e:	429c      	cmp	r4, r3
 8002250:	d1fb      	bne.n	800224a <memset+0x82>
 8002252:	bcf0      	pop	{r4, r5, r6, r7}
 8002254:	4770      	bx	lr
 8002256:	4614      	mov	r4, r2
 8002258:	4603      	mov	r3, r0
 800225a:	e7c5      	b.n	80021e8 <memset+0x20>

0800225c <printf>:
 800225c:	b40f      	push	{r0, r1, r2, r3}
 800225e:	b500      	push	{lr}
 8002260:	4907      	ldr	r1, [pc, #28]	; (8002280 <printf+0x24>)
 8002262:	b083      	sub	sp, #12
 8002264:	ab04      	add	r3, sp, #16
 8002266:	6808      	ldr	r0, [r1, #0]
 8002268:	f853 2b04 	ldr.w	r2, [r3], #4
 800226c:	6881      	ldr	r1, [r0, #8]
 800226e:	9301      	str	r3, [sp, #4]
 8002270:	f000 f85e 	bl	8002330 <_vfprintf_r>
 8002274:	b003      	add	sp, #12
 8002276:	f85d eb04 	ldr.w	lr, [sp], #4
 800227a:	b004      	add	sp, #16
 800227c:	4770      	bx	lr
 800227e:	bf00      	nop
 8002280:	20000018 	.word	0x20000018

08002284 <_puts_r>:
 8002284:	b570      	push	{r4, r5, r6, lr}
 8002286:	4605      	mov	r5, r0
 8002288:	b088      	sub	sp, #32
 800228a:	4608      	mov	r0, r1
 800228c:	460c      	mov	r4, r1
 800228e:	f7fe f9d7 	bl	8000640 <strlen>
 8002292:	4a22      	ldr	r2, [pc, #136]	; (800231c <_puts_r+0x98>)
 8002294:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002296:	9404      	str	r4, [sp, #16]
 8002298:	2601      	movs	r6, #1
 800229a:	1c44      	adds	r4, r0, #1
 800229c:	a904      	add	r1, sp, #16
 800229e:	9206      	str	r2, [sp, #24]
 80022a0:	2202      	movs	r2, #2
 80022a2:	9403      	str	r4, [sp, #12]
 80022a4:	9005      	str	r0, [sp, #20]
 80022a6:	68ac      	ldr	r4, [r5, #8]
 80022a8:	9607      	str	r6, [sp, #28]
 80022aa:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80022ae:	b31b      	cbz	r3, 80022f8 <_puts_r+0x74>
 80022b0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80022b2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80022b6:	07ce      	lsls	r6, r1, #31
 80022b8:	b29a      	uxth	r2, r3
 80022ba:	d401      	bmi.n	80022c0 <_puts_r+0x3c>
 80022bc:	0590      	lsls	r0, r2, #22
 80022be:	d525      	bpl.n	800230c <_puts_r+0x88>
 80022c0:	0491      	lsls	r1, r2, #18
 80022c2:	d406      	bmi.n	80022d2 <_puts_r+0x4e>
 80022c4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80022c6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80022ca:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80022ce:	81a3      	strh	r3, [r4, #12]
 80022d0:	6662      	str	r2, [r4, #100]	; 0x64
 80022d2:	4628      	mov	r0, r5
 80022d4:	aa01      	add	r2, sp, #4
 80022d6:	4621      	mov	r1, r4
 80022d8:	f003 f85e 	bl	8005398 <__sfvwrite_r>
 80022dc:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80022de:	2800      	cmp	r0, #0
 80022e0:	bf0c      	ite	eq
 80022e2:	250a      	moveq	r5, #10
 80022e4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80022e8:	07da      	lsls	r2, r3, #31
 80022ea:	d402      	bmi.n	80022f2 <_puts_r+0x6e>
 80022ec:	89a3      	ldrh	r3, [r4, #12]
 80022ee:	059b      	lsls	r3, r3, #22
 80022f0:	d506      	bpl.n	8002300 <_puts_r+0x7c>
 80022f2:	4628      	mov	r0, r5
 80022f4:	b008      	add	sp, #32
 80022f6:	bd70      	pop	{r4, r5, r6, pc}
 80022f8:	4628      	mov	r0, r5
 80022fa:	f002 feb7 	bl	800506c <__sinit>
 80022fe:	e7d7      	b.n	80022b0 <_puts_r+0x2c>
 8002300:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002302:	f003 fa05 	bl	8005710 <__retarget_lock_release_recursive>
 8002306:	4628      	mov	r0, r5
 8002308:	b008      	add	sp, #32
 800230a:	bd70      	pop	{r4, r5, r6, pc}
 800230c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800230e:	f003 f9fd 	bl	800570c <__retarget_lock_acquire_recursive>
 8002312:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002316:	b29a      	uxth	r2, r3
 8002318:	e7d2      	b.n	80022c0 <_puts_r+0x3c>
 800231a:	bf00      	nop
 800231c:	080071bc 	.word	0x080071bc

08002320 <puts>:
 8002320:	4b02      	ldr	r3, [pc, #8]	; (800232c <puts+0xc>)
 8002322:	4601      	mov	r1, r0
 8002324:	6818      	ldr	r0, [r3, #0]
 8002326:	f7ff bfad 	b.w	8002284 <_puts_r>
 800232a:	bf00      	nop
 800232c:	20000018 	.word	0x20000018

08002330 <_vfprintf_r>:
 8002330:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002334:	b0d7      	sub	sp, #348	; 0x15c
 8002336:	461c      	mov	r4, r3
 8002338:	4689      	mov	r9, r1
 800233a:	4617      	mov	r7, r2
 800233c:	4605      	mov	r5, r0
 800233e:	9003      	str	r0, [sp, #12]
 8002340:	f003 f9d2 	bl	80056e8 <_localeconv_r>
 8002344:	6803      	ldr	r3, [r0, #0]
 8002346:	9316      	str	r3, [sp, #88]	; 0x58
 8002348:	4618      	mov	r0, r3
 800234a:	f7fe f979 	bl	8000640 <strlen>
 800234e:	9408      	str	r4, [sp, #32]
 8002350:	9015      	str	r0, [sp, #84]	; 0x54
 8002352:	b11d      	cbz	r5, 800235c <_vfprintf_r+0x2c>
 8002354:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002356:	2b00      	cmp	r3, #0
 8002358:	f000 8107 	beq.w	800256a <_vfprintf_r+0x23a>
 800235c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002360:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002364:	07c8      	lsls	r0, r1, #31
 8002366:	b293      	uxth	r3, r2
 8002368:	d402      	bmi.n	8002370 <_vfprintf_r+0x40>
 800236a:	0599      	lsls	r1, r3, #22
 800236c:	f140 811f 	bpl.w	80025ae <_vfprintf_r+0x27e>
 8002370:	049e      	lsls	r6, r3, #18
 8002372:	d40a      	bmi.n	800238a <_vfprintf_r+0x5a>
 8002374:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002378:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 800237c:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002380:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002384:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002388:	b29b      	uxth	r3, r3
 800238a:	071d      	lsls	r5, r3, #28
 800238c:	f140 80b2 	bpl.w	80024f4 <_vfprintf_r+0x1c4>
 8002390:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002394:	2a00      	cmp	r2, #0
 8002396:	f000 80ad 	beq.w	80024f4 <_vfprintf_r+0x1c4>
 800239a:	f003 021a 	and.w	r2, r3, #26
 800239e:	2a0a      	cmp	r2, #10
 80023a0:	f000 80c9 	beq.w	8002536 <_vfprintf_r+0x206>
 80023a4:	2300      	movs	r3, #0
 80023a6:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80025c0 <_vfprintf_r+0x290>
 80023aa:	9310      	str	r3, [sp, #64]	; 0x40
 80023ac:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80023b0:	9317      	str	r3, [sp, #92]	; 0x5c
 80023b2:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80023b6:	931b      	str	r3, [sp, #108]	; 0x6c
 80023b8:	9318      	str	r3, [sp, #96]	; 0x60
 80023ba:	9305      	str	r3, [sp, #20]
 80023bc:	ab2d      	add	r3, sp, #180	; 0xb4
 80023be:	932a      	str	r3, [sp, #168]	; 0xa8
 80023c0:	469b      	mov	fp, r3
 80023c2:	783b      	ldrb	r3, [r7, #0]
 80023c4:	f8cd 901c 	str.w	r9, [sp, #28]
 80023c8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80023cc:	2b00      	cmp	r3, #0
 80023ce:	f000 8259 	beq.w	8002884 <_vfprintf_r+0x554>
 80023d2:	2b25      	cmp	r3, #37	; 0x25
 80023d4:	463c      	mov	r4, r7
 80023d6:	d102      	bne.n	80023de <_vfprintf_r+0xae>
 80023d8:	e01d      	b.n	8002416 <_vfprintf_r+0xe6>
 80023da:	2b25      	cmp	r3, #37	; 0x25
 80023dc:	d003      	beq.n	80023e6 <_vfprintf_r+0xb6>
 80023de:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80023e2:	2b00      	cmp	r3, #0
 80023e4:	d1f9      	bne.n	80023da <_vfprintf_r+0xaa>
 80023e6:	1be5      	subs	r5, r4, r7
 80023e8:	b18d      	cbz	r5, 800240e <_vfprintf_r+0xde>
 80023ea:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 80023ee:	3301      	adds	r3, #1
 80023f0:	442a      	add	r2, r5
 80023f2:	2b07      	cmp	r3, #7
 80023f4:	f8cb 7000 	str.w	r7, [fp]
 80023f8:	f8cb 5004 	str.w	r5, [fp, #4]
 80023fc:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002400:	f300 80ca 	bgt.w	8002598 <_vfprintf_r+0x268>
 8002404:	f10b 0b08 	add.w	fp, fp, #8
 8002408:	9b05      	ldr	r3, [sp, #20]
 800240a:	442b      	add	r3, r5
 800240c:	9305      	str	r3, [sp, #20]
 800240e:	7823      	ldrb	r3, [r4, #0]
 8002410:	2b00      	cmp	r3, #0
 8002412:	f000 8237 	beq.w	8002884 <_vfprintf_r+0x554>
 8002416:	2300      	movs	r3, #0
 8002418:	7866      	ldrb	r6, [r4, #1]
 800241a:	9306      	str	r3, [sp, #24]
 800241c:	4698      	mov	r8, r3
 800241e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002422:	f104 0a01 	add.w	sl, r4, #1
 8002426:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 800242a:	252b      	movs	r5, #43	; 0x2b
 800242c:	f10a 0a01 	add.w	sl, sl, #1
 8002430:	f1a6 0320 	sub.w	r3, r6, #32
 8002434:	2b5a      	cmp	r3, #90	; 0x5a
 8002436:	f200 842a 	bhi.w	8002c8e <_vfprintf_r+0x95e>
 800243a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800243e:	03aa      	.short	0x03aa
 8002440:	04280428 	.word	0x04280428
 8002444:	0428029c 	.word	0x0428029c
 8002448:	04280428 	.word	0x04280428
 800244c:	042802a7 	.word	0x042802a7
 8002450:	02c60428 	.word	0x02c60428
 8002454:	042802d2 	.word	0x042802d2
 8002458:	02dc02d7 	.word	0x02dc02d7
 800245c:	02f60428 	.word	0x02f60428
 8002460:	026d026d 	.word	0x026d026d
 8002464:	026d026d 	.word	0x026d026d
 8002468:	026d026d 	.word	0x026d026d
 800246c:	026d026d 	.word	0x026d026d
 8002470:	0428026d 	.word	0x0428026d
 8002474:	04280428 	.word	0x04280428
 8002478:	04280428 	.word	0x04280428
 800247c:	04280428 	.word	0x04280428
 8002480:	042802fb 	.word	0x042802fb
 8002484:	03f3033c 	.word	0x03f3033c
 8002488:	02fb02fb 	.word	0x02fb02fb
 800248c:	042802fb 	.word	0x042802fb
 8002490:	04280428 	.word	0x04280428
 8002494:	03ee0428 	.word	0x03ee0428
 8002498:	04280428 	.word	0x04280428
 800249c:	0428009a 	.word	0x0428009a
 80024a0:	04280428 	.word	0x04280428
 80024a4:	04280350 	.word	0x04280350
 80024a8:	04280379 	.word	0x04280379
 80024ac:	03900428 	.word	0x03900428
 80024b0:	04280428 	.word	0x04280428
 80024b4:	04280428 	.word	0x04280428
 80024b8:	04280428 	.word	0x04280428
 80024bc:	04280428 	.word	0x04280428
 80024c0:	042802fb 	.word	0x042802fb
 80024c4:	00c5033c 	.word	0x00c5033c
 80024c8:	02fb02fb 	.word	0x02fb02fb
 80024cc:	03d102fb 	.word	0x03d102fb
 80024d0:	007000c5 	.word	0x007000c5
 80024d4:	03b50428 	.word	0x03b50428
 80024d8:	03c20428 	.word	0x03c20428
 80024dc:	03de009c 	.word	0x03de009c
 80024e0:	04280070 	.word	0x04280070
 80024e4:	00720350 	.word	0x00720350
 80024e8:	0428022c 	.word	0x0428022c
 80024ec:	027c0428 	.word	0x027c0428
 80024f0:	00720428 	.word	0x00720428
 80024f4:	4649      	mov	r1, r9
 80024f6:	9803      	ldr	r0, [sp, #12]
 80024f8:	f001 fc9a 	bl	8003e30 <__swsetup_r>
 80024fc:	b1a0      	cbz	r0, 8002528 <_vfprintf_r+0x1f8>
 80024fe:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002502:	07d8      	lsls	r0, r3, #31
 8002504:	d404      	bmi.n	8002510 <_vfprintf_r+0x1e0>
 8002506:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800250a:	0599      	lsls	r1, r3, #22
 800250c:	f140 83b7 	bpl.w	8002c7e <_vfprintf_r+0x94e>
 8002510:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002514:	9305      	str	r3, [sp, #20]
 8002516:	9805      	ldr	r0, [sp, #20]
 8002518:	b057      	add	sp, #348	; 0x15c
 800251a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800251e:	f048 0820 	orr.w	r8, r8, #32
 8002522:	f89a 6000 	ldrb.w	r6, [sl]
 8002526:	e781      	b.n	800242c <_vfprintf_r+0xfc>
 8002528:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800252c:	f003 021a 	and.w	r2, r3, #26
 8002530:	2a0a      	cmp	r2, #10
 8002532:	f47f af37 	bne.w	80023a4 <_vfprintf_r+0x74>
 8002536:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 800253a:	2a00      	cmp	r2, #0
 800253c:	f6ff af32 	blt.w	80023a4 <_vfprintf_r+0x74>
 8002540:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002544:	07d2      	lsls	r2, r2, #31
 8002546:	d405      	bmi.n	8002554 <_vfprintf_r+0x224>
 8002548:	059b      	lsls	r3, r3, #22
 800254a:	d403      	bmi.n	8002554 <_vfprintf_r+0x224>
 800254c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002550:	f003 f8de 	bl	8005710 <__retarget_lock_release_recursive>
 8002554:	4623      	mov	r3, r4
 8002556:	463a      	mov	r2, r7
 8002558:	4649      	mov	r1, r9
 800255a:	9803      	ldr	r0, [sp, #12]
 800255c:	f001 fc26 	bl	8003dac <__sbprintf>
 8002560:	9005      	str	r0, [sp, #20]
 8002562:	9805      	ldr	r0, [sp, #20]
 8002564:	b057      	add	sp, #348	; 0x15c
 8002566:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800256a:	9803      	ldr	r0, [sp, #12]
 800256c:	f002 fd7e 	bl	800506c <__sinit>
 8002570:	e6f4      	b.n	800235c <_vfprintf_r+0x2c>
 8002572:	f048 0810 	orr.w	r8, r8, #16
 8002576:	f018 0f20 	tst.w	r8, #32
 800257a:	f000 836c 	beq.w	8002c56 <_vfprintf_r+0x926>
 800257e:	9c08      	ldr	r4, [sp, #32]
 8002580:	3407      	adds	r4, #7
 8002582:	f024 0307 	bic.w	r3, r4, #7
 8002586:	e9d3 4500 	ldrd	r4, r5, [r3]
 800258a:	f103 0208 	add.w	r2, r3, #8
 800258e:	9208      	str	r2, [sp, #32]
 8002590:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002594:	2200      	movs	r2, #0
 8002596:	e18c      	b.n	80028b2 <_vfprintf_r+0x582>
 8002598:	aa2a      	add	r2, sp, #168	; 0xa8
 800259a:	9907      	ldr	r1, [sp, #28]
 800259c:	9803      	ldr	r0, [sp, #12]
 800259e:	f004 f9f5 	bl	800698c <__sprint_r>
 80025a2:	2800      	cmp	r0, #0
 80025a4:	f041 8376 	bne.w	8003c94 <_vfprintf_r+0x1964>
 80025a8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80025ac:	e72c      	b.n	8002408 <_vfprintf_r+0xd8>
 80025ae:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80025b2:	f003 f8ab 	bl	800570c <__retarget_lock_acquire_recursive>
 80025b6:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80025ba:	b293      	uxth	r3, r2
 80025bc:	e6d8      	b.n	8002370 <_vfprintf_r+0x40>
 80025be:	bf00      	nop
	...
 80025c8:	4643      	mov	r3, r8
 80025ca:	069f      	lsls	r7, r3, #26
 80025cc:	f140 832f 	bpl.w	8002c2e <_vfprintf_r+0x8fe>
 80025d0:	9c08      	ldr	r4, [sp, #32]
 80025d2:	3407      	adds	r4, #7
 80025d4:	f024 0407 	bic.w	r4, r4, #7
 80025d8:	e9d4 0100 	ldrd	r0, r1, [r4]
 80025dc:	f104 0208 	add.w	r2, r4, #8
 80025e0:	9208      	str	r2, [sp, #32]
 80025e2:	4604      	mov	r4, r0
 80025e4:	460d      	mov	r5, r1
 80025e6:	2800      	cmp	r0, #0
 80025e8:	f171 0200 	sbcs.w	r2, r1, #0
 80025ec:	da05      	bge.n	80025fa <_vfprintf_r+0x2ca>
 80025ee:	222d      	movs	r2, #45	; 0x2d
 80025f0:	4264      	negs	r4, r4
 80025f2:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80025f6:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80025fa:	aa56      	add	r2, sp, #344	; 0x158
 80025fc:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002600:	9204      	str	r2, [sp, #16]
 8002602:	f000 84b2 	beq.w	8002f6a <_vfprintf_r+0xc3a>
 8002606:	2201      	movs	r2, #1
 8002608:	ea54 0105 	orrs.w	r1, r4, r5
 800260c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002610:	f040 8159 	bne.w	80028c6 <_vfprintf_r+0x596>
 8002614:	f1b9 0f00 	cmp.w	r9, #0
 8002618:	f040 8619 	bne.w	800324e <_vfprintf_r+0xf1e>
 800261c:	2a00      	cmp	r2, #0
 800261e:	f040 8508 	bne.w	8003032 <_vfprintf_r+0xd02>
 8002622:	f013 0301 	ands.w	r3, r3, #1
 8002626:	af56      	add	r7, sp, #344	; 0x158
 8002628:	9309      	str	r3, [sp, #36]	; 0x24
 800262a:	d002      	beq.n	8002632 <_vfprintf_r+0x302>
 800262c:	2330      	movs	r3, #48	; 0x30
 800262e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002632:	2300      	movs	r3, #0
 8002634:	930a      	str	r3, [sp, #40]	; 0x28
 8002636:	930f      	str	r3, [sp, #60]	; 0x3c
 8002638:	9314      	str	r3, [sp, #80]	; 0x50
 800263a:	9311      	str	r3, [sp, #68]	; 0x44
 800263c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800263e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002642:	454b      	cmp	r3, r9
 8002644:	bfb8      	it	lt
 8002646:	464b      	movlt	r3, r9
 8002648:	9304      	str	r3, [sp, #16]
 800264a:	b112      	cbz	r2, 8002652 <_vfprintf_r+0x322>
 800264c:	9b04      	ldr	r3, [sp, #16]
 800264e:	3301      	adds	r3, #1
 8002650:	9304      	str	r3, [sp, #16]
 8002652:	f018 0302 	ands.w	r3, r8, #2
 8002656:	930b      	str	r3, [sp, #44]	; 0x2c
 8002658:	d002      	beq.n	8002660 <_vfprintf_r+0x330>
 800265a:	9b04      	ldr	r3, [sp, #16]
 800265c:	3302      	adds	r3, #2
 800265e:	9304      	str	r3, [sp, #16]
 8002660:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002664:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002666:	930e      	str	r3, [sp, #56]	; 0x38
 8002668:	d13f      	bne.n	80026ea <_vfprintf_r+0x3ba>
 800266a:	9b06      	ldr	r3, [sp, #24]
 800266c:	9904      	ldr	r1, [sp, #16]
 800266e:	1a5d      	subs	r5, r3, r1
 8002670:	2d00      	cmp	r5, #0
 8002672:	dd3a      	ble.n	80026ea <_vfprintf_r+0x3ba>
 8002674:	2d10      	cmp	r5, #16
 8002676:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002678:	dd29      	ble.n	80026ce <_vfprintf_r+0x39e>
 800267a:	4659      	mov	r1, fp
 800267c:	4620      	mov	r0, r4
 800267e:	9620      	str	r6, [sp, #128]	; 0x80
 8002680:	2310      	movs	r3, #16
 8002682:	9c03      	ldr	r4, [sp, #12]
 8002684:	9e07      	ldr	r6, [sp, #28]
 8002686:	46bb      	mov	fp, r7
 8002688:	e004      	b.n	8002694 <_vfprintf_r+0x364>
 800268a:	3d10      	subs	r5, #16
 800268c:	2d10      	cmp	r5, #16
 800268e:	f101 0108 	add.w	r1, r1, #8
 8002692:	dd18      	ble.n	80026c6 <_vfprintf_r+0x396>
 8002694:	3201      	adds	r2, #1
 8002696:	4fba      	ldr	r7, [pc, #744]	; (8002980 <_vfprintf_r+0x650>)
 8002698:	3010      	adds	r0, #16
 800269a:	2a07      	cmp	r2, #7
 800269c:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80026a0:	e9c1 7300 	strd	r7, r3, [r1]
 80026a4:	ddf1      	ble.n	800268a <_vfprintf_r+0x35a>
 80026a6:	aa2a      	add	r2, sp, #168	; 0xa8
 80026a8:	4631      	mov	r1, r6
 80026aa:	4620      	mov	r0, r4
 80026ac:	930c      	str	r3, [sp, #48]	; 0x30
 80026ae:	f004 f96d 	bl	800698c <__sprint_r>
 80026b2:	2800      	cmp	r0, #0
 80026b4:	f040 843d 	bne.w	8002f32 <_vfprintf_r+0xc02>
 80026b8:	3d10      	subs	r5, #16
 80026ba:	2d10      	cmp	r5, #16
 80026bc:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80026c0:	a92d      	add	r1, sp, #180	; 0xb4
 80026c2:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80026c4:	dce6      	bgt.n	8002694 <_vfprintf_r+0x364>
 80026c6:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80026c8:	465f      	mov	r7, fp
 80026ca:	4604      	mov	r4, r0
 80026cc:	468b      	mov	fp, r1
 80026ce:	3201      	adds	r2, #1
 80026d0:	4bab      	ldr	r3, [pc, #684]	; (8002980 <_vfprintf_r+0x650>)
 80026d2:	442c      	add	r4, r5
 80026d4:	2a07      	cmp	r2, #7
 80026d6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80026da:	e9cb 3500 	strd	r3, r5, [fp]
 80026de:	f300 84ff 	bgt.w	80030e0 <_vfprintf_r+0xdb0>
 80026e2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80026e6:	f10b 0b08 	add.w	fp, fp, #8
 80026ea:	b172      	cbz	r2, 800270a <_vfprintf_r+0x3da>
 80026ec:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80026ee:	3201      	adds	r2, #1
 80026f0:	3401      	adds	r4, #1
 80026f2:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 80026f6:	2101      	movs	r1, #1
 80026f8:	2a07      	cmp	r2, #7
 80026fa:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80026fe:	e9cb 0100 	strd	r0, r1, [fp]
 8002702:	f300 8418 	bgt.w	8002f36 <_vfprintf_r+0xc06>
 8002706:	f10b 0b08 	add.w	fp, fp, #8
 800270a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800270c:	b16b      	cbz	r3, 800272a <_vfprintf_r+0x3fa>
 800270e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002710:	3301      	adds	r3, #1
 8002712:	3402      	adds	r4, #2
 8002714:	a923      	add	r1, sp, #140	; 0x8c
 8002716:	2202      	movs	r2, #2
 8002718:	2b07      	cmp	r3, #7
 800271a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800271e:	e9cb 1200 	strd	r1, r2, [fp]
 8002722:	f300 8415 	bgt.w	8002f50 <_vfprintf_r+0xc20>
 8002726:	f10b 0b08 	add.w	fp, fp, #8
 800272a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800272c:	2b80      	cmp	r3, #128	; 0x80
 800272e:	f000 8331 	beq.w	8002d94 <_vfprintf_r+0xa64>
 8002732:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002734:	eba9 0503 	sub.w	r5, r9, r3
 8002738:	2d00      	cmp	r5, #0
 800273a:	dd37      	ble.n	80027ac <_vfprintf_r+0x47c>
 800273c:	2d10      	cmp	r5, #16
 800273e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002740:	4b90      	ldr	r3, [pc, #576]	; (8002984 <_vfprintf_r+0x654>)
 8002742:	dd28      	ble.n	8002796 <_vfprintf_r+0x466>
 8002744:	4659      	mov	r1, fp
 8002746:	4620      	mov	r0, r4
 8002748:	46bb      	mov	fp, r7
 800274a:	f04f 0910 	mov.w	r9, #16
 800274e:	4637      	mov	r7, r6
 8002750:	461c      	mov	r4, r3
 8002752:	9e07      	ldr	r6, [sp, #28]
 8002754:	e004      	b.n	8002760 <_vfprintf_r+0x430>
 8002756:	3d10      	subs	r5, #16
 8002758:	2d10      	cmp	r5, #16
 800275a:	f101 0108 	add.w	r1, r1, #8
 800275e:	dd15      	ble.n	800278c <_vfprintf_r+0x45c>
 8002760:	3201      	adds	r2, #1
 8002762:	3010      	adds	r0, #16
 8002764:	2a07      	cmp	r2, #7
 8002766:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800276a:	e9c1 4900 	strd	r4, r9, [r1]
 800276e:	ddf2      	ble.n	8002756 <_vfprintf_r+0x426>
 8002770:	aa2a      	add	r2, sp, #168	; 0xa8
 8002772:	4631      	mov	r1, r6
 8002774:	9803      	ldr	r0, [sp, #12]
 8002776:	f004 f909 	bl	800698c <__sprint_r>
 800277a:	2800      	cmp	r0, #0
 800277c:	f040 83d9 	bne.w	8002f32 <_vfprintf_r+0xc02>
 8002780:	3d10      	subs	r5, #16
 8002782:	2d10      	cmp	r5, #16
 8002784:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002788:	a92d      	add	r1, sp, #180	; 0xb4
 800278a:	dce9      	bgt.n	8002760 <_vfprintf_r+0x430>
 800278c:	463e      	mov	r6, r7
 800278e:	4623      	mov	r3, r4
 8002790:	465f      	mov	r7, fp
 8002792:	4604      	mov	r4, r0
 8002794:	468b      	mov	fp, r1
 8002796:	3201      	adds	r2, #1
 8002798:	442c      	add	r4, r5
 800279a:	2a07      	cmp	r2, #7
 800279c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80027a0:	e9cb 3500 	strd	r3, r5, [fp]
 80027a4:	f300 83ef 	bgt.w	8002f86 <_vfprintf_r+0xc56>
 80027a8:	f10b 0b08 	add.w	fp, fp, #8
 80027ac:	f418 7f80 	tst.w	r8, #256	; 0x100
 80027b0:	f040 8280 	bne.w	8002cb4 <_vfprintf_r+0x984>
 80027b4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80027b6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80027b8:	f8cb 7000 	str.w	r7, [fp]
 80027bc:	3301      	adds	r3, #1
 80027be:	4414      	add	r4, r2
 80027c0:	2b07      	cmp	r3, #7
 80027c2:	942c      	str	r4, [sp, #176]	; 0xb0
 80027c4:	f8cb 2004 	str.w	r2, [fp, #4]
 80027c8:	932b      	str	r3, [sp, #172]	; 0xac
 80027ca:	f300 8392 	bgt.w	8002ef2 <_vfprintf_r+0xbc2>
 80027ce:	f10b 0b08 	add.w	fp, fp, #8
 80027d2:	f018 0f04 	tst.w	r8, #4
 80027d6:	d03b      	beq.n	8002850 <_vfprintf_r+0x520>
 80027d8:	9b06      	ldr	r3, [sp, #24]
 80027da:	9a04      	ldr	r2, [sp, #16]
 80027dc:	1a9d      	subs	r5, r3, r2
 80027de:	2d00      	cmp	r5, #0
 80027e0:	dd36      	ble.n	8002850 <_vfprintf_r+0x520>
 80027e2:	2d10      	cmp	r5, #16
 80027e4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80027e6:	dd21      	ble.n	800282c <_vfprintf_r+0x4fc>
 80027e8:	2610      	movs	r6, #16
 80027ea:	9f03      	ldr	r7, [sp, #12]
 80027ec:	f8dd 801c 	ldr.w	r8, [sp, #28]
 80027f0:	e004      	b.n	80027fc <_vfprintf_r+0x4cc>
 80027f2:	3d10      	subs	r5, #16
 80027f4:	2d10      	cmp	r5, #16
 80027f6:	f10b 0b08 	add.w	fp, fp, #8
 80027fa:	dd17      	ble.n	800282c <_vfprintf_r+0x4fc>
 80027fc:	3301      	adds	r3, #1
 80027fe:	4a60      	ldr	r2, [pc, #384]	; (8002980 <_vfprintf_r+0x650>)
 8002800:	3410      	adds	r4, #16
 8002802:	2b07      	cmp	r3, #7
 8002804:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002808:	e9cb 2600 	strd	r2, r6, [fp]
 800280c:	ddf1      	ble.n	80027f2 <_vfprintf_r+0x4c2>
 800280e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002810:	4641      	mov	r1, r8
 8002812:	4638      	mov	r0, r7
 8002814:	f004 f8ba 	bl	800698c <__sprint_r>
 8002818:	2800      	cmp	r0, #0
 800281a:	f040 856c 	bne.w	80032f6 <_vfprintf_r+0xfc6>
 800281e:	3d10      	subs	r5, #16
 8002820:	2d10      	cmp	r5, #16
 8002822:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002826:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800282a:	dce7      	bgt.n	80027fc <_vfprintf_r+0x4cc>
 800282c:	3301      	adds	r3, #1
 800282e:	4a54      	ldr	r2, [pc, #336]	; (8002980 <_vfprintf_r+0x650>)
 8002830:	442c      	add	r4, r5
 8002832:	2b07      	cmp	r3, #7
 8002834:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002838:	e9cb 2500 	strd	r2, r5, [fp]
 800283c:	dd08      	ble.n	8002850 <_vfprintf_r+0x520>
 800283e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002840:	9907      	ldr	r1, [sp, #28]
 8002842:	9803      	ldr	r0, [sp, #12]
 8002844:	f004 f8a2 	bl	800698c <__sprint_r>
 8002848:	2800      	cmp	r0, #0
 800284a:	f040 82e9 	bne.w	8002e20 <_vfprintf_r+0xaf0>
 800284e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002850:	9904      	ldr	r1, [sp, #16]
 8002852:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002856:	428a      	cmp	r2, r1
 8002858:	bfac      	ite	ge
 800285a:	189b      	addge	r3, r3, r2
 800285c:	185b      	addlt	r3, r3, r1
 800285e:	9305      	str	r3, [sp, #20]
 8002860:	2c00      	cmp	r4, #0
 8002862:	f040 82d5 	bne.w	8002e10 <_vfprintf_r+0xae0>
 8002866:	2300      	movs	r3, #0
 8002868:	932b      	str	r3, [sp, #172]	; 0xac
 800286a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800286c:	b11b      	cbz	r3, 8002876 <_vfprintf_r+0x546>
 800286e:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002870:	9803      	ldr	r0, [sp, #12]
 8002872:	f002 fc9d 	bl	80051b0 <_free_r>
 8002876:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800287a:	4657      	mov	r7, sl
 800287c:	783b      	ldrb	r3, [r7, #0]
 800287e:	2b00      	cmp	r3, #0
 8002880:	f47f ada7 	bne.w	80023d2 <_vfprintf_r+0xa2>
 8002884:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002886:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800288a:	2b00      	cmp	r3, #0
 800288c:	f041 80e7 	bne.w	8003a5e <_vfprintf_r+0x172e>
 8002890:	2300      	movs	r3, #0
 8002892:	932b      	str	r3, [sp, #172]	; 0xac
 8002894:	e2cb      	b.n	8002e2e <_vfprintf_r+0xafe>
 8002896:	4643      	mov	r3, r8
 8002898:	069a      	lsls	r2, r3, #26
 800289a:	f140 814e 	bpl.w	8002b3a <_vfprintf_r+0x80a>
 800289e:	9c08      	ldr	r4, [sp, #32]
 80028a0:	3407      	adds	r4, #7
 80028a2:	f024 0207 	bic.w	r2, r4, #7
 80028a6:	f102 0108 	add.w	r1, r2, #8
 80028aa:	e9d2 4500 	ldrd	r4, r5, [r2]
 80028ae:	9108      	str	r1, [sp, #32]
 80028b0:	2201      	movs	r2, #1
 80028b2:	2100      	movs	r1, #0
 80028b4:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 80028b8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80028bc:	a956      	add	r1, sp, #344	; 0x158
 80028be:	9104      	str	r1, [sp, #16]
 80028c0:	f47f aea2 	bne.w	8002608 <_vfprintf_r+0x2d8>
 80028c4:	4698      	mov	r8, r3
 80028c6:	2a01      	cmp	r2, #1
 80028c8:	f000 8350 	beq.w	8002f6c <_vfprintf_r+0xc3c>
 80028cc:	2a02      	cmp	r2, #2
 80028ce:	f000 831b 	beq.w	8002f08 <_vfprintf_r+0xbd8>
 80028d2:	a956      	add	r1, sp, #344	; 0x158
 80028d4:	e000      	b.n	80028d8 <_vfprintf_r+0x5a8>
 80028d6:	4639      	mov	r1, r7
 80028d8:	08e2      	lsrs	r2, r4, #3
 80028da:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 80028de:	08e8      	lsrs	r0, r5, #3
 80028e0:	f004 0307 	and.w	r3, r4, #7
 80028e4:	4605      	mov	r5, r0
 80028e6:	4614      	mov	r4, r2
 80028e8:	3330      	adds	r3, #48	; 0x30
 80028ea:	ea54 0205 	orrs.w	r2, r4, r5
 80028ee:	f801 3c01 	strb.w	r3, [r1, #-1]
 80028f2:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 80028f6:	d1ee      	bne.n	80028d6 <_vfprintf_r+0x5a6>
 80028f8:	f018 0f01 	tst.w	r8, #1
 80028fc:	f000 8314 	beq.w	8002f28 <_vfprintf_r+0xbf8>
 8002900:	2b30      	cmp	r3, #48	; 0x30
 8002902:	f000 8311 	beq.w	8002f28 <_vfprintf_r+0xbf8>
 8002906:	9a04      	ldr	r2, [sp, #16]
 8002908:	3902      	subs	r1, #2
 800290a:	2330      	movs	r3, #48	; 0x30
 800290c:	1a52      	subs	r2, r2, r1
 800290e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002912:	9209      	str	r2, [sp, #36]	; 0x24
 8002914:	460f      	mov	r7, r1
 8002916:	e68c      	b.n	8002632 <_vfprintf_r+0x302>
 8002918:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800291c:	2200      	movs	r2, #0
 800291e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002922:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002926:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 800292a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800292e:	2b09      	cmp	r3, #9
 8002930:	d9f5      	bls.n	800291e <_vfprintf_r+0x5ee>
 8002932:	9206      	str	r2, [sp, #24]
 8002934:	e57c      	b.n	8002430 <_vfprintf_r+0x100>
 8002936:	4b14      	ldr	r3, [pc, #80]	; (8002988 <_vfprintf_r+0x658>)
 8002938:	9317      	str	r3, [sp, #92]	; 0x5c
 800293a:	f018 0f20 	tst.w	r8, #32
 800293e:	f000 8114 	beq.w	8002b6a <_vfprintf_r+0x83a>
 8002942:	9c08      	ldr	r4, [sp, #32]
 8002944:	3407      	adds	r4, #7
 8002946:	f024 0307 	bic.w	r3, r4, #7
 800294a:	e9d3 4500 	ldrd	r4, r5, [r3]
 800294e:	f103 0208 	add.w	r2, r3, #8
 8002952:	9208      	str	r2, [sp, #32]
 8002954:	f018 0f01 	tst.w	r8, #1
 8002958:	d009      	beq.n	800296e <_vfprintf_r+0x63e>
 800295a:	ea54 0305 	orrs.w	r3, r4, r5
 800295e:	d006      	beq.n	800296e <_vfprintf_r+0x63e>
 8002960:	2330      	movs	r3, #48	; 0x30
 8002962:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002966:	f048 0802 	orr.w	r8, r8, #2
 800296a:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 800296e:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002972:	2202      	movs	r2, #2
 8002974:	e79d      	b.n	80028b2 <_vfprintf_r+0x582>
 8002976:	f048 0801 	orr.w	r8, r8, #1
 800297a:	f89a 6000 	ldrb.w	r6, [sl]
 800297e:	e555      	b.n	800242c <_vfprintf_r+0xfc>
 8002980:	08007204 	.word	0x08007204
 8002984:	08007214 	.word	0x08007214
 8002988:	080071d0 	.word	0x080071d0
 800298c:	9e03      	ldr	r6, [sp, #12]
 800298e:	4630      	mov	r0, r6
 8002990:	f002 feaa 	bl	80056e8 <_localeconv_r>
 8002994:	6843      	ldr	r3, [r0, #4]
 8002996:	9318      	str	r3, [sp, #96]	; 0x60
 8002998:	4618      	mov	r0, r3
 800299a:	f7fd fe51 	bl	8000640 <strlen>
 800299e:	901b      	str	r0, [sp, #108]	; 0x6c
 80029a0:	4604      	mov	r4, r0
 80029a2:	4630      	mov	r0, r6
 80029a4:	f002 fea0 	bl	80056e8 <_localeconv_r>
 80029a8:	6883      	ldr	r3, [r0, #8]
 80029aa:	931a      	str	r3, [sp, #104]	; 0x68
 80029ac:	2c00      	cmp	r4, #0
 80029ae:	f43f adb8 	beq.w	8002522 <_vfprintf_r+0x1f2>
 80029b2:	f89a 6000 	ldrb.w	r6, [sl]
 80029b6:	2b00      	cmp	r3, #0
 80029b8:	f43f ad38 	beq.w	800242c <_vfprintf_r+0xfc>
 80029bc:	781b      	ldrb	r3, [r3, #0]
 80029be:	2b00      	cmp	r3, #0
 80029c0:	f43f ad34 	beq.w	800242c <_vfprintf_r+0xfc>
 80029c4:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 80029c8:	e530      	b.n	800242c <_vfprintf_r+0xfc>
 80029ca:	9b08      	ldr	r3, [sp, #32]
 80029cc:	f89a 6000 	ldrb.w	r6, [sl]
 80029d0:	681a      	ldr	r2, [r3, #0]
 80029d2:	9206      	str	r2, [sp, #24]
 80029d4:	2a00      	cmp	r2, #0
 80029d6:	f103 0304 	add.w	r3, r3, #4
 80029da:	f2c0 8697 	blt.w	800370c <_vfprintf_r+0x13dc>
 80029de:	9308      	str	r3, [sp, #32]
 80029e0:	e524      	b.n	800242c <_vfprintf_r+0xfc>
 80029e2:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80029e6:	f89a 6000 	ldrb.w	r6, [sl]
 80029ea:	e51f      	b.n	800242c <_vfprintf_r+0xfc>
 80029ec:	f89a 6000 	ldrb.w	r6, [sl]
 80029f0:	f048 0804 	orr.w	r8, r8, #4
 80029f4:	e51a      	b.n	800242c <_vfprintf_r+0xfc>
 80029f6:	f89a 6000 	ldrb.w	r6, [sl]
 80029fa:	2e2a      	cmp	r6, #42	; 0x2a
 80029fc:	f10a 0201 	add.w	r2, sl, #1
 8002a00:	f001 81b0 	beq.w	8003d64 <_vfprintf_r+0x1a34>
 8002a04:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a08:	2b09      	cmp	r3, #9
 8002a0a:	4692      	mov	sl, r2
 8002a0c:	f04f 0900 	mov.w	r9, #0
 8002a10:	f63f ad0e 	bhi.w	8002430 <_vfprintf_r+0x100>
 8002a14:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002a18:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002a1c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002a20:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a24:	2b09      	cmp	r3, #9
 8002a26:	d9f5      	bls.n	8002a14 <_vfprintf_r+0x6e4>
 8002a28:	e502      	b.n	8002430 <_vfprintf_r+0x100>
 8002a2a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002a2e:	f89a 6000 	ldrb.w	r6, [sl]
 8002a32:	e4fb      	b.n	800242c <_vfprintf_r+0xfc>
 8002a34:	9c08      	ldr	r4, [sp, #32]
 8002a36:	3407      	adds	r4, #7
 8002a38:	f024 0407 	bic.w	r4, r4, #7
 8002a3c:	ed94 7b00 	vldr	d7, [r4]
 8002a40:	ec52 1b17 	vmov	r1, r2, d7
 8002a44:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002a48:	931d      	str	r3, [sp, #116]	; 0x74
 8002a4a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002a4e:	3408      	adds	r4, #8
 8002a50:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002a54:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002a58:	4bba      	ldr	r3, [pc, #744]	; (8002d44 <_vfprintf_r+0xa14>)
 8002a5a:	9408      	str	r4, [sp, #32]
 8002a5c:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002a60:	f7fe fb04 	bl	800106c <__aeabi_dcmpun>
 8002a64:	2800      	cmp	r0, #0
 8002a66:	f040 846f 	bne.w	8003348 <_vfprintf_r+0x1018>
 8002a6a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002a6e:	4bb5      	ldr	r3, [pc, #724]	; (8002d44 <_vfprintf_r+0xa14>)
 8002a70:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002a74:	f7fe fadc 	bl	8001030 <__aeabi_dcmple>
 8002a78:	2800      	cmp	r0, #0
 8002a7a:	f040 8465 	bne.w	8003348 <_vfprintf_r+0x1018>
 8002a7e:	2200      	movs	r2, #0
 8002a80:	2300      	movs	r3, #0
 8002a82:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002a86:	f7fe fac9 	bl	800101c <__aeabi_dcmplt>
 8002a8a:	2800      	cmp	r0, #0
 8002a8c:	f040 855b 	bne.w	8003546 <_vfprintf_r+0x1216>
 8002a90:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002a94:	4fac      	ldr	r7, [pc, #688]	; (8002d48 <_vfprintf_r+0xa18>)
 8002a96:	4bad      	ldr	r3, [pc, #692]	; (8002d4c <_vfprintf_r+0xa1c>)
 8002a98:	2000      	movs	r0, #0
 8002a9a:	2103      	movs	r1, #3
 8002a9c:	9104      	str	r1, [sp, #16]
 8002a9e:	900a      	str	r0, [sp, #40]	; 0x28
 8002aa0:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002aa4:	2e47      	cmp	r6, #71	; 0x47
 8002aa6:	bfd8      	it	le
 8002aa8:	461f      	movle	r7, r3
 8002aaa:	9109      	str	r1, [sp, #36]	; 0x24
 8002aac:	4681      	mov	r9, r0
 8002aae:	900f      	str	r0, [sp, #60]	; 0x3c
 8002ab0:	9014      	str	r0, [sp, #80]	; 0x50
 8002ab2:	9011      	str	r0, [sp, #68]	; 0x44
 8002ab4:	e5c9      	b.n	800264a <_vfprintf_r+0x31a>
 8002ab6:	9808      	ldr	r0, [sp, #32]
 8002ab8:	2300      	movs	r3, #0
 8002aba:	6801      	ldr	r1, [r0, #0]
 8002abc:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002ac0:	461a      	mov	r2, r3
 8002ac2:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002ac6:	2301      	movs	r3, #1
 8002ac8:	1d01      	adds	r1, r0, #4
 8002aca:	9304      	str	r3, [sp, #16]
 8002acc:	920a      	str	r2, [sp, #40]	; 0x28
 8002ace:	4691      	mov	r9, r2
 8002ad0:	920f      	str	r2, [sp, #60]	; 0x3c
 8002ad2:	9214      	str	r2, [sp, #80]	; 0x50
 8002ad4:	9211      	str	r2, [sp, #68]	; 0x44
 8002ad6:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002ada:	af3d      	add	r7, sp, #244	; 0xf4
 8002adc:	e5b9      	b.n	8002652 <_vfprintf_r+0x322>
 8002ade:	9b08      	ldr	r3, [sp, #32]
 8002ae0:	681f      	ldr	r7, [r3, #0]
 8002ae2:	2500      	movs	r5, #0
 8002ae4:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002ae8:	1d1c      	adds	r4, r3, #4
 8002aea:	2f00      	cmp	r7, #0
 8002aec:	f000 8639 	beq.w	8003762 <_vfprintf_r+0x1432>
 8002af0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002af4:	f000 8711 	beq.w	800391a <_vfprintf_r+0x15ea>
 8002af8:	464a      	mov	r2, r9
 8002afa:	4629      	mov	r1, r5
 8002afc:	4638      	mov	r0, r7
 8002afe:	f7fd fe0f 	bl	8000720 <memchr>
 8002b02:	900a      	str	r0, [sp, #40]	; 0x28
 8002b04:	2800      	cmp	r0, #0
 8002b06:	f000 85e7 	beq.w	80036d8 <_vfprintf_r+0x13a8>
 8002b0a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002b0c:	1bdb      	subs	r3, r3, r7
 8002b0e:	9309      	str	r3, [sp, #36]	; 0x24
 8002b10:	46a9      	mov	r9, r5
 8002b12:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002b16:	9408      	str	r4, [sp, #32]
 8002b18:	9304      	str	r3, [sp, #16]
 8002b1a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002b1e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002b22:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002b26:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002b2a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002b2e:	e58c      	b.n	800264a <_vfprintf_r+0x31a>
 8002b30:	f048 0310 	orr.w	r3, r8, #16
 8002b34:	069a      	lsls	r2, r3, #26
 8002b36:	f53f aeb2 	bmi.w	800289e <_vfprintf_r+0x56e>
 8002b3a:	9a08      	ldr	r2, [sp, #32]
 8002b3c:	06df      	lsls	r7, r3, #27
 8002b3e:	f102 0104 	add.w	r1, r2, #4
 8002b42:	f100 837e 	bmi.w	8003242 <_vfprintf_r+0xf12>
 8002b46:	065d      	lsls	r5, r3, #25
 8002b48:	9a08      	ldr	r2, [sp, #32]
 8002b4a:	f100 84e4 	bmi.w	8003516 <_vfprintf_r+0x11e6>
 8002b4e:	059c      	lsls	r4, r3, #22
 8002b50:	f140 8377 	bpl.w	8003242 <_vfprintf_r+0xf12>
 8002b54:	7814      	ldrb	r4, [r2, #0]
 8002b56:	9108      	str	r1, [sp, #32]
 8002b58:	2500      	movs	r5, #0
 8002b5a:	2201      	movs	r2, #1
 8002b5c:	e6a9      	b.n	80028b2 <_vfprintf_r+0x582>
 8002b5e:	4b7c      	ldr	r3, [pc, #496]	; (8002d50 <_vfprintf_r+0xa20>)
 8002b60:	9317      	str	r3, [sp, #92]	; 0x5c
 8002b62:	f018 0f20 	tst.w	r8, #32
 8002b66:	f47f aeec 	bne.w	8002942 <_vfprintf_r+0x612>
 8002b6a:	9a08      	ldr	r2, [sp, #32]
 8002b6c:	f018 0f10 	tst.w	r8, #16
 8002b70:	f102 0304 	add.w	r3, r2, #4
 8002b74:	f040 8354 	bne.w	8003220 <_vfprintf_r+0xef0>
 8002b78:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002b7c:	9a08      	ldr	r2, [sp, #32]
 8002b7e:	f040 84d0 	bne.w	8003522 <_vfprintf_r+0x11f2>
 8002b82:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002b86:	f000 834b 	beq.w	8003220 <_vfprintf_r+0xef0>
 8002b8a:	7814      	ldrb	r4, [r2, #0]
 8002b8c:	9308      	str	r3, [sp, #32]
 8002b8e:	2500      	movs	r5, #0
 8002b90:	e6e0      	b.n	8002954 <_vfprintf_r+0x624>
 8002b92:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002b96:	f89a 6000 	ldrb.w	r6, [sl]
 8002b9a:	2b00      	cmp	r3, #0
 8002b9c:	f47f ac46 	bne.w	800242c <_vfprintf_r+0xfc>
 8002ba0:	2320      	movs	r3, #32
 8002ba2:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002ba6:	e441      	b.n	800242c <_vfprintf_r+0xfc>
 8002ba8:	f89a 6000 	ldrb.w	r6, [sl]
 8002bac:	2e6c      	cmp	r6, #108	; 0x6c
 8002bae:	bf03      	ittte	eq
 8002bb0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002bb4:	f048 0820 	orreq.w	r8, r8, #32
 8002bb8:	f10a 0a01 	addeq.w	sl, sl, #1
 8002bbc:	f048 0810 	orrne.w	r8, r8, #16
 8002bc0:	e434      	b.n	800242c <_vfprintf_r+0xfc>
 8002bc2:	9a08      	ldr	r2, [sp, #32]
 8002bc4:	f018 0f20 	tst.w	r8, #32
 8002bc8:	f852 3b04 	ldr.w	r3, [r2], #4
 8002bcc:	9208      	str	r2, [sp, #32]
 8002bce:	f000 83a1 	beq.w	8003314 <_vfprintf_r+0xfe4>
 8002bd2:	9a05      	ldr	r2, [sp, #20]
 8002bd4:	4610      	mov	r0, r2
 8002bd6:	17d1      	asrs	r1, r2, #31
 8002bd8:	e9c3 0100 	strd	r0, r1, [r3]
 8002bdc:	4657      	mov	r7, sl
 8002bde:	e64d      	b.n	800287c <_vfprintf_r+0x54c>
 8002be0:	f89a 6000 	ldrb.w	r6, [sl]
 8002be4:	2e68      	cmp	r6, #104	; 0x68
 8002be6:	bf03      	ittte	eq
 8002be8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002bec:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002bf0:	f10a 0a01 	addeq.w	sl, sl, #1
 8002bf4:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002bf8:	e418      	b.n	800242c <_vfprintf_r+0xfc>
 8002bfa:	9908      	ldr	r1, [sp, #32]
 8002bfc:	4b55      	ldr	r3, [pc, #340]	; (8002d54 <_vfprintf_r+0xa24>)
 8002bfe:	680c      	ldr	r4, [r1, #0]
 8002c00:	9317      	str	r3, [sp, #92]	; 0x5c
 8002c02:	f647 0230 	movw	r2, #30768	; 0x7830
 8002c06:	3104      	adds	r1, #4
 8002c08:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002c0c:	f048 0302 	orr.w	r3, r8, #2
 8002c10:	9108      	str	r1, [sp, #32]
 8002c12:	2500      	movs	r5, #0
 8002c14:	2202      	movs	r2, #2
 8002c16:	2678      	movs	r6, #120	; 0x78
 8002c18:	e64b      	b.n	80028b2 <_vfprintf_r+0x582>
 8002c1a:	f048 0808 	orr.w	r8, r8, #8
 8002c1e:	f89a 6000 	ldrb.w	r6, [sl]
 8002c22:	e403      	b.n	800242c <_vfprintf_r+0xfc>
 8002c24:	f048 0310 	orr.w	r3, r8, #16
 8002c28:	069f      	lsls	r7, r3, #26
 8002c2a:	f53f acd1 	bmi.w	80025d0 <_vfprintf_r+0x2a0>
 8002c2e:	9908      	ldr	r1, [sp, #32]
 8002c30:	06dd      	lsls	r5, r3, #27
 8002c32:	f101 0204 	add.w	r2, r1, #4
 8002c36:	f100 82fd 	bmi.w	8003234 <_vfprintf_r+0xf04>
 8002c3a:	065c      	lsls	r4, r3, #25
 8002c3c:	9908      	ldr	r1, [sp, #32]
 8002c3e:	f100 8475 	bmi.w	800352c <_vfprintf_r+0x11fc>
 8002c42:	0598      	lsls	r0, r3, #22
 8002c44:	f140 82f6 	bpl.w	8003234 <_vfprintf_r+0xf04>
 8002c48:	f991 4000 	ldrsb.w	r4, [r1]
 8002c4c:	9208      	str	r2, [sp, #32]
 8002c4e:	17e5      	asrs	r5, r4, #31
 8002c50:	4620      	mov	r0, r4
 8002c52:	4629      	mov	r1, r5
 8002c54:	e4c7      	b.n	80025e6 <_vfprintf_r+0x2b6>
 8002c56:	9a08      	ldr	r2, [sp, #32]
 8002c58:	f018 0f10 	tst.w	r8, #16
 8002c5c:	f102 0304 	add.w	r3, r2, #4
 8002c60:	f040 82e3 	bne.w	800322a <_vfprintf_r+0xefa>
 8002c64:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002c68:	9a08      	ldr	r2, [sp, #32]
 8002c6a:	f040 8467 	bne.w	800353c <_vfprintf_r+0x120c>
 8002c6e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002c72:	f000 82da 	beq.w	800322a <_vfprintf_r+0xefa>
 8002c76:	7814      	ldrb	r4, [r2, #0]
 8002c78:	9308      	str	r3, [sp, #32]
 8002c7a:	2500      	movs	r5, #0
 8002c7c:	e488      	b.n	8002590 <_vfprintf_r+0x260>
 8002c7e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002c82:	f002 fd45 	bl	8005710 <__retarget_lock_release_recursive>
 8002c86:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002c8a:	9305      	str	r3, [sp, #20]
 8002c8c:	e443      	b.n	8002516 <_vfprintf_r+0x1e6>
 8002c8e:	2e00      	cmp	r6, #0
 8002c90:	f43f adf8 	beq.w	8002884 <_vfprintf_r+0x554>
 8002c94:	2300      	movs	r3, #0
 8002c96:	2101      	movs	r1, #1
 8002c98:	461a      	mov	r2, r3
 8002c9a:	9104      	str	r1, [sp, #16]
 8002c9c:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002ca0:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002ca4:	930a      	str	r3, [sp, #40]	; 0x28
 8002ca6:	4699      	mov	r9, r3
 8002ca8:	930f      	str	r3, [sp, #60]	; 0x3c
 8002caa:	9314      	str	r3, [sp, #80]	; 0x50
 8002cac:	9311      	str	r3, [sp, #68]	; 0x44
 8002cae:	9109      	str	r1, [sp, #36]	; 0x24
 8002cb0:	af3d      	add	r7, sp, #244	; 0xf4
 8002cb2:	e4ce      	b.n	8002652 <_vfprintf_r+0x322>
 8002cb4:	2e65      	cmp	r6, #101	; 0x65
 8002cb6:	f340 80ca 	ble.w	8002e4e <_vfprintf_r+0xb1e>
 8002cba:	2200      	movs	r2, #0
 8002cbc:	2300      	movs	r3, #0
 8002cbe:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002cc2:	f7fe f9a1 	bl	8001008 <__aeabi_dcmpeq>
 8002cc6:	2800      	cmp	r0, #0
 8002cc8:	f000 8169 	beq.w	8002f9e <_vfprintf_r+0xc6e>
 8002ccc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002cce:	4a22      	ldr	r2, [pc, #136]	; (8002d58 <_vfprintf_r+0xa28>)
 8002cd0:	f8cb 2000 	str.w	r2, [fp]
 8002cd4:	3301      	adds	r3, #1
 8002cd6:	3401      	adds	r4, #1
 8002cd8:	2201      	movs	r2, #1
 8002cda:	2b07      	cmp	r3, #7
 8002cdc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002ce0:	f8cb 2004 	str.w	r2, [fp, #4]
 8002ce4:	f300 8406 	bgt.w	80034f4 <_vfprintf_r+0x11c4>
 8002ce8:	f10b 0b08 	add.w	fp, fp, #8
 8002cec:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002cee:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002cf0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002cf2:	4293      	cmp	r3, r2
 8002cf4:	db03      	blt.n	8002cfe <_vfprintf_r+0x9ce>
 8002cf6:	f018 0f01 	tst.w	r8, #1
 8002cfa:	f43f ad6a 	beq.w	80027d2 <_vfprintf_r+0x4a2>
 8002cfe:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002d00:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002d02:	f8cb 2000 	str.w	r2, [fp]
 8002d06:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002d08:	f8cb 2004 	str.w	r2, [fp, #4]
 8002d0c:	3301      	adds	r3, #1
 8002d0e:	4414      	add	r4, r2
 8002d10:	2b07      	cmp	r3, #7
 8002d12:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002d16:	f300 8517 	bgt.w	8003748 <_vfprintf_r+0x1418>
 8002d1a:	f10b 0b08 	add.w	fp, fp, #8
 8002d1e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002d20:	1e5d      	subs	r5, r3, #1
 8002d22:	2d00      	cmp	r5, #0
 8002d24:	f77f ad55 	ble.w	80027d2 <_vfprintf_r+0x4a2>
 8002d28:	2d10      	cmp	r5, #16
 8002d2a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002d2c:	4b0b      	ldr	r3, [pc, #44]	; (8002d5c <_vfprintf_r+0xa2c>)
 8002d2e:	f340 82e7 	ble.w	8003300 <_vfprintf_r+0xfd0>
 8002d32:	4619      	mov	r1, r3
 8002d34:	2610      	movs	r6, #16
 8002d36:	4623      	mov	r3, r4
 8002d38:	9f03      	ldr	r7, [sp, #12]
 8002d3a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002d3e:	460c      	mov	r4, r1
 8002d40:	e014      	b.n	8002d6c <_vfprintf_r+0xa3c>
 8002d42:	bf00      	nop
 8002d44:	7fefffff 	.word	0x7fefffff
 8002d48:	080071c4 	.word	0x080071c4
 8002d4c:	080071c0 	.word	0x080071c0
 8002d50:	080071e4 	.word	0x080071e4
 8002d54:	080071d0 	.word	0x080071d0
 8002d58:	08007200 	.word	0x08007200
 8002d5c:	08007214 	.word	0x08007214
 8002d60:	f10b 0b08 	add.w	fp, fp, #8
 8002d64:	3d10      	subs	r5, #16
 8002d66:	2d10      	cmp	r5, #16
 8002d68:	f340 82c7 	ble.w	80032fa <_vfprintf_r+0xfca>
 8002d6c:	3201      	adds	r2, #1
 8002d6e:	3310      	adds	r3, #16
 8002d70:	2a07      	cmp	r2, #7
 8002d72:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002d76:	e9cb 4600 	strd	r4, r6, [fp]
 8002d7a:	ddf1      	ble.n	8002d60 <_vfprintf_r+0xa30>
 8002d7c:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d7e:	4649      	mov	r1, r9
 8002d80:	4638      	mov	r0, r7
 8002d82:	f003 fe03 	bl	800698c <__sprint_r>
 8002d86:	2800      	cmp	r0, #0
 8002d88:	d14c      	bne.n	8002e24 <_vfprintf_r+0xaf4>
 8002d8a:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002d8e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002d92:	e7e7      	b.n	8002d64 <_vfprintf_r+0xa34>
 8002d94:	9b06      	ldr	r3, [sp, #24]
 8002d96:	9a04      	ldr	r2, [sp, #16]
 8002d98:	1a9d      	subs	r5, r3, r2
 8002d9a:	2d00      	cmp	r5, #0
 8002d9c:	f77f acc9 	ble.w	8002732 <_vfprintf_r+0x402>
 8002da0:	2d10      	cmp	r5, #16
 8002da2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002da4:	4bbc      	ldr	r3, [pc, #752]	; (8003098 <_vfprintf_r+0xd68>)
 8002da6:	dd27      	ble.n	8002df8 <_vfprintf_r+0xac8>
 8002da8:	4659      	mov	r1, fp
 8002daa:	4620      	mov	r0, r4
 8002dac:	46bb      	mov	fp, r7
 8002dae:	461c      	mov	r4, r3
 8002db0:	4637      	mov	r7, r6
 8002db2:	9e07      	ldr	r6, [sp, #28]
 8002db4:	e004      	b.n	8002dc0 <_vfprintf_r+0xa90>
 8002db6:	3d10      	subs	r5, #16
 8002db8:	2d10      	cmp	r5, #16
 8002dba:	f101 0108 	add.w	r1, r1, #8
 8002dbe:	dd16      	ble.n	8002dee <_vfprintf_r+0xabe>
 8002dc0:	3201      	adds	r2, #1
 8002dc2:	3010      	adds	r0, #16
 8002dc4:	2310      	movs	r3, #16
 8002dc6:	2a07      	cmp	r2, #7
 8002dc8:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002dcc:	600c      	str	r4, [r1, #0]
 8002dce:	604b      	str	r3, [r1, #4]
 8002dd0:	ddf1      	ble.n	8002db6 <_vfprintf_r+0xa86>
 8002dd2:	aa2a      	add	r2, sp, #168	; 0xa8
 8002dd4:	4631      	mov	r1, r6
 8002dd6:	9803      	ldr	r0, [sp, #12]
 8002dd8:	f003 fdd8 	bl	800698c <__sprint_r>
 8002ddc:	2800      	cmp	r0, #0
 8002dde:	f040 80a8 	bne.w	8002f32 <_vfprintf_r+0xc02>
 8002de2:	3d10      	subs	r5, #16
 8002de4:	2d10      	cmp	r5, #16
 8002de6:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002dea:	a92d      	add	r1, sp, #180	; 0xb4
 8002dec:	dce8      	bgt.n	8002dc0 <_vfprintf_r+0xa90>
 8002dee:	463e      	mov	r6, r7
 8002df0:	4623      	mov	r3, r4
 8002df2:	465f      	mov	r7, fp
 8002df4:	4604      	mov	r4, r0
 8002df6:	468b      	mov	fp, r1
 8002df8:	3201      	adds	r2, #1
 8002dfa:	442c      	add	r4, r5
 8002dfc:	2a07      	cmp	r2, #7
 8002dfe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002e02:	e9cb 3500 	strd	r3, r5, [fp]
 8002e06:	f300 8292 	bgt.w	800332e <_vfprintf_r+0xffe>
 8002e0a:	f10b 0b08 	add.w	fp, fp, #8
 8002e0e:	e490      	b.n	8002732 <_vfprintf_r+0x402>
 8002e10:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e12:	9907      	ldr	r1, [sp, #28]
 8002e14:	9803      	ldr	r0, [sp, #12]
 8002e16:	f003 fdb9 	bl	800698c <__sprint_r>
 8002e1a:	2800      	cmp	r0, #0
 8002e1c:	f43f ad23 	beq.w	8002866 <_vfprintf_r+0x536>
 8002e20:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002e24:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002e26:	b111      	cbz	r1, 8002e2e <_vfprintf_r+0xafe>
 8002e28:	9803      	ldr	r0, [sp, #12]
 8002e2a:	f002 f9c1 	bl	80051b0 <_free_r>
 8002e2e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002e32:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002e36:	07d0      	lsls	r0, r2, #31
 8002e38:	d402      	bmi.n	8002e40 <_vfprintf_r+0xb10>
 8002e3a:	0599      	lsls	r1, r3, #22
 8002e3c:	f140 81d0 	bpl.w	80031e0 <_vfprintf_r+0xeb0>
 8002e40:	065a      	lsls	r2, r3, #25
 8002e42:	f53f ab65 	bmi.w	8002510 <_vfprintf_r+0x1e0>
 8002e46:	9805      	ldr	r0, [sp, #20]
 8002e48:	b057      	add	sp, #348	; 0x15c
 8002e4a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002e4e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002e50:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e52:	2a01      	cmp	r2, #1
 8002e54:	f104 0401 	add.w	r4, r4, #1
 8002e58:	f103 0501 	add.w	r5, r3, #1
 8002e5c:	f10b 0608 	add.w	r6, fp, #8
 8002e60:	f340 811c 	ble.w	800309c <_vfprintf_r+0xd6c>
 8002e64:	2301      	movs	r3, #1
 8002e66:	2d07      	cmp	r5, #7
 8002e68:	f8cb 7000 	str.w	r7, [fp]
 8002e6c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002e70:	f8cb 3004 	str.w	r3, [fp, #4]
 8002e74:	f300 81bb 	bgt.w	80031ee <_vfprintf_r+0xebe>
 8002e78:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002e7a:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002e7c:	1c69      	adds	r1, r5, #1
 8002e7e:	441c      	add	r4, r3
 8002e80:	2907      	cmp	r1, #7
 8002e82:	910b      	str	r1, [sp, #44]	; 0x2c
 8002e84:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8002e88:	e9c6 2300 	strd	r2, r3, [r6]
 8002e8c:	f300 81bb 	bgt.w	8003206 <_vfprintf_r+0xed6>
 8002e90:	3608      	adds	r6, #8
 8002e92:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002e94:	1c53      	adds	r3, r2, #1
 8002e96:	461d      	mov	r5, r3
 8002e98:	9509      	str	r5, [sp, #36]	; 0x24
 8002e9a:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8002e9c:	930e      	str	r3, [sp, #56]	; 0x38
 8002e9e:	2200      	movs	r2, #0
 8002ea0:	2300      	movs	r3, #0
 8002ea2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002ea6:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8002eaa:	f106 0b08 	add.w	fp, r6, #8
 8002eae:	f7fe f8ab 	bl	8001008 <__aeabi_dcmpeq>
 8002eb2:	2800      	cmp	r0, #0
 8002eb4:	f040 80c2 	bne.w	800303c <_vfprintf_r+0xd0c>
 8002eb8:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002eba:	f8c6 9004 	str.w	r9, [r6, #4]
 8002ebe:	3701      	adds	r7, #1
 8002ec0:	444c      	add	r4, r9
 8002ec2:	2d07      	cmp	r5, #7
 8002ec4:	6037      	str	r7, [r6, #0]
 8002ec6:	942c      	str	r4, [sp, #176]	; 0xb0
 8002ec8:	952b      	str	r5, [sp, #172]	; 0xac
 8002eca:	f300 80f9 	bgt.w	80030c0 <_vfprintf_r+0xd90>
 8002ece:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002ed0:	f106 0310 	add.w	r3, r6, #16
 8002ed4:	3202      	adds	r2, #2
 8002ed6:	465e      	mov	r6, fp
 8002ed8:	9209      	str	r2, [sp, #36]	; 0x24
 8002eda:	469b      	mov	fp, r3
 8002edc:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8002ede:	6072      	str	r2, [r6, #4]
 8002ee0:	4414      	add	r4, r2
 8002ee2:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002ee4:	942c      	str	r4, [sp, #176]	; 0xb0
 8002ee6:	ab26      	add	r3, sp, #152	; 0x98
 8002ee8:	2a07      	cmp	r2, #7
 8002eea:	922b      	str	r2, [sp, #172]	; 0xac
 8002eec:	6033      	str	r3, [r6, #0]
 8002eee:	f77f ac70 	ble.w	80027d2 <_vfprintf_r+0x4a2>
 8002ef2:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ef4:	9907      	ldr	r1, [sp, #28]
 8002ef6:	9803      	ldr	r0, [sp, #12]
 8002ef8:	f003 fd48 	bl	800698c <__sprint_r>
 8002efc:	2800      	cmp	r0, #0
 8002efe:	d18f      	bne.n	8002e20 <_vfprintf_r+0xaf0>
 8002f00:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f02:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f06:	e464      	b.n	80027d2 <_vfprintf_r+0x4a2>
 8002f08:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8002f0a:	af56      	add	r7, sp, #344	; 0x158
 8002f0c:	0923      	lsrs	r3, r4, #4
 8002f0e:	f004 010f 	and.w	r1, r4, #15
 8002f12:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8002f16:	092a      	lsrs	r2, r5, #4
 8002f18:	461c      	mov	r4, r3
 8002f1a:	4615      	mov	r5, r2
 8002f1c:	5c43      	ldrb	r3, [r0, r1]
 8002f1e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002f22:	ea54 0305 	orrs.w	r3, r4, r5
 8002f26:	d1f1      	bne.n	8002f0c <_vfprintf_r+0xbdc>
 8002f28:	9b04      	ldr	r3, [sp, #16]
 8002f2a:	1bdb      	subs	r3, r3, r7
 8002f2c:	9309      	str	r3, [sp, #36]	; 0x24
 8002f2e:	f7ff bb80 	b.w	8002632 <_vfprintf_r+0x302>
 8002f32:	46b1      	mov	r9, r6
 8002f34:	e776      	b.n	8002e24 <_vfprintf_r+0xaf4>
 8002f36:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f38:	9907      	ldr	r1, [sp, #28]
 8002f3a:	9803      	ldr	r0, [sp, #12]
 8002f3c:	f003 fd26 	bl	800698c <__sprint_r>
 8002f40:	2800      	cmp	r0, #0
 8002f42:	f47f af6d 	bne.w	8002e20 <_vfprintf_r+0xaf0>
 8002f46:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f48:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f4c:	f7ff bbdd 	b.w	800270a <_vfprintf_r+0x3da>
 8002f50:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f52:	9907      	ldr	r1, [sp, #28]
 8002f54:	9803      	ldr	r0, [sp, #12]
 8002f56:	f003 fd19 	bl	800698c <__sprint_r>
 8002f5a:	2800      	cmp	r0, #0
 8002f5c:	f47f af60 	bne.w	8002e20 <_vfprintf_r+0xaf0>
 8002f60:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f62:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f66:	f7ff bbe0 	b.w	800272a <_vfprintf_r+0x3fa>
 8002f6a:	4698      	mov	r8, r3
 8002f6c:	2d00      	cmp	r5, #0
 8002f6e:	bf08      	it	eq
 8002f70:	2c0a      	cmpeq	r4, #10
 8002f72:	f080 8170 	bcs.w	8003256 <_vfprintf_r+0xf26>
 8002f76:	af56      	add	r7, sp, #344	; 0x158
 8002f78:	3430      	adds	r4, #48	; 0x30
 8002f7a:	2301      	movs	r3, #1
 8002f7c:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8002f80:	9309      	str	r3, [sp, #36]	; 0x24
 8002f82:	f7ff bb56 	b.w	8002632 <_vfprintf_r+0x302>
 8002f86:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f88:	9907      	ldr	r1, [sp, #28]
 8002f8a:	9803      	ldr	r0, [sp, #12]
 8002f8c:	f003 fcfe 	bl	800698c <__sprint_r>
 8002f90:	2800      	cmp	r0, #0
 8002f92:	f47f af45 	bne.w	8002e20 <_vfprintf_r+0xaf0>
 8002f96:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f98:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f9c:	e406      	b.n	80027ac <_vfprintf_r+0x47c>
 8002f9e:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002fa0:	2b00      	cmp	r3, #0
 8002fa2:	f340 8273 	ble.w	800348c <_vfprintf_r+0x115c>
 8002fa6:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8002faa:	4293      	cmp	r3, r2
 8002fac:	bfa8      	it	ge
 8002fae:	4613      	movge	r3, r2
 8002fb0:	2b00      	cmp	r3, #0
 8002fb2:	461d      	mov	r5, r3
 8002fb4:	dd0d      	ble.n	8002fd2 <_vfprintf_r+0xca2>
 8002fb6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002fb8:	f8cb 7000 	str.w	r7, [fp]
 8002fbc:	3301      	adds	r3, #1
 8002fbe:	442c      	add	r4, r5
 8002fc0:	2b07      	cmp	r3, #7
 8002fc2:	942c      	str	r4, [sp, #176]	; 0xb0
 8002fc4:	f8cb 5004 	str.w	r5, [fp, #4]
 8002fc8:	932b      	str	r3, [sp, #172]	; 0xac
 8002fca:	f300 82c1 	bgt.w	8003550 <_vfprintf_r+0x1220>
 8002fce:	f10b 0b08 	add.w	fp, fp, #8
 8002fd2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002fd4:	2d00      	cmp	r5, #0
 8002fd6:	bfa8      	it	ge
 8002fd8:	1b5b      	subge	r3, r3, r5
 8002fda:	2b00      	cmp	r3, #0
 8002fdc:	461d      	mov	r5, r3
 8002fde:	f340 8099 	ble.w	8003114 <_vfprintf_r+0xde4>
 8002fe2:	2d10      	cmp	r5, #16
 8002fe4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002fe6:	4b2c      	ldr	r3, [pc, #176]	; (8003098 <_vfprintf_r+0xd68>)
 8002fe8:	f340 83db 	ble.w	80037a2 <_vfprintf_r+0x1472>
 8002fec:	4618      	mov	r0, r3
 8002fee:	4621      	mov	r1, r4
 8002ff0:	465b      	mov	r3, fp
 8002ff2:	2610      	movs	r6, #16
 8002ff4:	46bb      	mov	fp, r7
 8002ff6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8002ffa:	9c07      	ldr	r4, [sp, #28]
 8002ffc:	4607      	mov	r7, r0
 8002ffe:	e004      	b.n	800300a <_vfprintf_r+0xcda>
 8003000:	3308      	adds	r3, #8
 8003002:	3d10      	subs	r5, #16
 8003004:	2d10      	cmp	r5, #16
 8003006:	f340 83c7 	ble.w	8003798 <_vfprintf_r+0x1468>
 800300a:	3201      	adds	r2, #1
 800300c:	3110      	adds	r1, #16
 800300e:	2a07      	cmp	r2, #7
 8003010:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003014:	e9c3 7600 	strd	r7, r6, [r3]
 8003018:	ddf2      	ble.n	8003000 <_vfprintf_r+0xcd0>
 800301a:	aa2a      	add	r2, sp, #168	; 0xa8
 800301c:	4621      	mov	r1, r4
 800301e:	4648      	mov	r0, r9
 8003020:	f003 fcb4 	bl	800698c <__sprint_r>
 8003024:	2800      	cmp	r0, #0
 8003026:	f040 84a5 	bne.w	8003974 <_vfprintf_r+0x1644>
 800302a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 800302e:	ab2d      	add	r3, sp, #180	; 0xb4
 8003030:	e7e7      	b.n	8003002 <_vfprintf_r+0xcd2>
 8003032:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003036:	af56      	add	r7, sp, #344	; 0x158
 8003038:	f7ff bafb 	b.w	8002632 <_vfprintf_r+0x302>
 800303c:	f1b9 0f00 	cmp.w	r9, #0
 8003040:	f77f af4c 	ble.w	8002edc <_vfprintf_r+0xbac>
 8003044:	f1b9 0f10 	cmp.w	r9, #16
 8003048:	4b13      	ldr	r3, [pc, #76]	; (8003098 <_vfprintf_r+0xd68>)
 800304a:	f340 8659 	ble.w	8003d00 <_vfprintf_r+0x19d0>
 800304e:	4619      	mov	r1, r3
 8003050:	4622      	mov	r2, r4
 8003052:	4633      	mov	r3, r6
 8003054:	2710      	movs	r7, #16
 8003056:	f8dd b00c 	ldr.w	fp, [sp, #12]
 800305a:	9c07      	ldr	r4, [sp, #28]
 800305c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800305e:	460e      	mov	r6, r1
 8003060:	e007      	b.n	8003072 <_vfprintf_r+0xd42>
 8003062:	3308      	adds	r3, #8
 8003064:	f1a9 0910 	sub.w	r9, r9, #16
 8003068:	f1b9 0f10 	cmp.w	r9, #16
 800306c:	f340 8353 	ble.w	8003716 <_vfprintf_r+0x13e6>
 8003070:	3501      	adds	r5, #1
 8003072:	3210      	adds	r2, #16
 8003074:	2d07      	cmp	r5, #7
 8003076:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 800307a:	e9c3 6700 	strd	r6, r7, [r3]
 800307e:	ddf0      	ble.n	8003062 <_vfprintf_r+0xd32>
 8003080:	aa2a      	add	r2, sp, #168	; 0xa8
 8003082:	4621      	mov	r1, r4
 8003084:	4658      	mov	r0, fp
 8003086:	f003 fc81 	bl	800698c <__sprint_r>
 800308a:	2800      	cmp	r0, #0
 800308c:	f040 8472 	bne.w	8003974 <_vfprintf_r+0x1644>
 8003090:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8003094:	ab2d      	add	r3, sp, #180	; 0xb4
 8003096:	e7e5      	b.n	8003064 <_vfprintf_r+0xd34>
 8003098:	08007214 	.word	0x08007214
 800309c:	f018 0f01 	tst.w	r8, #1
 80030a0:	f47f aee0 	bne.w	8002e64 <_vfprintf_r+0xb34>
 80030a4:	2201      	movs	r2, #1
 80030a6:	2d07      	cmp	r5, #7
 80030a8:	f8cb 7000 	str.w	r7, [fp]
 80030ac:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80030b0:	f8cb 2004 	str.w	r2, [fp, #4]
 80030b4:	dc04      	bgt.n	80030c0 <_vfprintf_r+0xd90>
 80030b6:	3302      	adds	r3, #2
 80030b8:	9309      	str	r3, [sp, #36]	; 0x24
 80030ba:	f10b 0b10 	add.w	fp, fp, #16
 80030be:	e70d      	b.n	8002edc <_vfprintf_r+0xbac>
 80030c0:	aa2a      	add	r2, sp, #168	; 0xa8
 80030c2:	9907      	ldr	r1, [sp, #28]
 80030c4:	9803      	ldr	r0, [sp, #12]
 80030c6:	f003 fc61 	bl	800698c <__sprint_r>
 80030ca:	2800      	cmp	r0, #0
 80030cc:	f47f aea8 	bne.w	8002e20 <_vfprintf_r+0xaf0>
 80030d0:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80030d4:	3301      	adds	r3, #1
 80030d6:	9309      	str	r3, [sp, #36]	; 0x24
 80030d8:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80030dc:	ae2d      	add	r6, sp, #180	; 0xb4
 80030de:	e6fd      	b.n	8002edc <_vfprintf_r+0xbac>
 80030e0:	aa2a      	add	r2, sp, #168	; 0xa8
 80030e2:	9907      	ldr	r1, [sp, #28]
 80030e4:	9803      	ldr	r0, [sp, #12]
 80030e6:	f003 fc51 	bl	800698c <__sprint_r>
 80030ea:	2800      	cmp	r0, #0
 80030ec:	f47f ae98 	bne.w	8002e20 <_vfprintf_r+0xaf0>
 80030f0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80030f4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030f6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030fa:	f7ff baf6 	b.w	80026ea <_vfprintf_r+0x3ba>
 80030fe:	aa2a      	add	r2, sp, #168	; 0xa8
 8003100:	9907      	ldr	r1, [sp, #28]
 8003102:	9803      	ldr	r0, [sp, #12]
 8003104:	f003 fc42 	bl	800698c <__sprint_r>
 8003108:	2800      	cmp	r0, #0
 800310a:	f47f ae89 	bne.w	8002e20 <_vfprintf_r+0xaf0>
 800310e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003110:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003114:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003116:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800311a:	443b      	add	r3, r7
 800311c:	4699      	mov	r9, r3
 800311e:	f040 8357 	bne.w	80037d0 <_vfprintf_r+0x14a0>
 8003122:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003124:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003126:	4293      	cmp	r3, r2
 8003128:	db49      	blt.n	80031be <_vfprintf_r+0xe8e>
 800312a:	f018 0f01 	tst.w	r8, #1
 800312e:	d146      	bne.n	80031be <_vfprintf_r+0xe8e>
 8003130:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003132:	18bd      	adds	r5, r7, r2
 8003134:	eba5 0509 	sub.w	r5, r5, r9
 8003138:	1ad3      	subs	r3, r2, r3
 800313a:	429d      	cmp	r5, r3
 800313c:	bfa8      	it	ge
 800313e:	461d      	movge	r5, r3
 8003140:	2d00      	cmp	r5, #0
 8003142:	dd0d      	ble.n	8003160 <_vfprintf_r+0xe30>
 8003144:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003146:	f8cb 9000 	str.w	r9, [fp]
 800314a:	3201      	adds	r2, #1
 800314c:	442c      	add	r4, r5
 800314e:	2a07      	cmp	r2, #7
 8003150:	942c      	str	r4, [sp, #176]	; 0xb0
 8003152:	f8cb 5004 	str.w	r5, [fp, #4]
 8003156:	922b      	str	r2, [sp, #172]	; 0xac
 8003158:	f300 8462 	bgt.w	8003a20 <_vfprintf_r+0x16f0>
 800315c:	f10b 0b08 	add.w	fp, fp, #8
 8003160:	2d00      	cmp	r5, #0
 8003162:	bfac      	ite	ge
 8003164:	1b5d      	subge	r5, r3, r5
 8003166:	461d      	movlt	r5, r3
 8003168:	2d00      	cmp	r5, #0
 800316a:	f77f ab32 	ble.w	80027d2 <_vfprintf_r+0x4a2>
 800316e:	2d10      	cmp	r5, #16
 8003170:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003172:	4bc5      	ldr	r3, [pc, #788]	; (8003488 <_vfprintf_r+0x1158>)
 8003174:	f340 80c4 	ble.w	8003300 <_vfprintf_r+0xfd0>
 8003178:	4619      	mov	r1, r3
 800317a:	2610      	movs	r6, #16
 800317c:	4623      	mov	r3, r4
 800317e:	9f03      	ldr	r7, [sp, #12]
 8003180:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003184:	460c      	mov	r4, r1
 8003186:	e005      	b.n	8003194 <_vfprintf_r+0xe64>
 8003188:	f10b 0b08 	add.w	fp, fp, #8
 800318c:	3d10      	subs	r5, #16
 800318e:	2d10      	cmp	r5, #16
 8003190:	f340 80b3 	ble.w	80032fa <_vfprintf_r+0xfca>
 8003194:	3201      	adds	r2, #1
 8003196:	3310      	adds	r3, #16
 8003198:	2a07      	cmp	r2, #7
 800319a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800319e:	e9cb 4600 	strd	r4, r6, [fp]
 80031a2:	ddf1      	ble.n	8003188 <_vfprintf_r+0xe58>
 80031a4:	aa2a      	add	r2, sp, #168	; 0xa8
 80031a6:	4649      	mov	r1, r9
 80031a8:	4638      	mov	r0, r7
 80031aa:	f003 fbef 	bl	800698c <__sprint_r>
 80031ae:	2800      	cmp	r0, #0
 80031b0:	f47f ae38 	bne.w	8002e24 <_vfprintf_r+0xaf4>
 80031b4:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80031b8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80031bc:	e7e6      	b.n	800318c <_vfprintf_r+0xe5c>
 80031be:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031c0:	9916      	ldr	r1, [sp, #88]	; 0x58
 80031c2:	f8cb 1000 	str.w	r1, [fp]
 80031c6:	9915      	ldr	r1, [sp, #84]	; 0x54
 80031c8:	f8cb 1004 	str.w	r1, [fp, #4]
 80031cc:	3201      	adds	r2, #1
 80031ce:	440c      	add	r4, r1
 80031d0:	2a07      	cmp	r2, #7
 80031d2:	942c      	str	r4, [sp, #176]	; 0xb0
 80031d4:	922b      	str	r2, [sp, #172]	; 0xac
 80031d6:	f300 828c 	bgt.w	80036f2 <_vfprintf_r+0x13c2>
 80031da:	f10b 0b08 	add.w	fp, fp, #8
 80031de:	e7a7      	b.n	8003130 <_vfprintf_r+0xe00>
 80031e0:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80031e4:	f002 fa94 	bl	8005710 <__retarget_lock_release_recursive>
 80031e8:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80031ec:	e628      	b.n	8002e40 <_vfprintf_r+0xb10>
 80031ee:	aa2a      	add	r2, sp, #168	; 0xa8
 80031f0:	9907      	ldr	r1, [sp, #28]
 80031f2:	9803      	ldr	r0, [sp, #12]
 80031f4:	f003 fbca 	bl	800698c <__sprint_r>
 80031f8:	2800      	cmp	r0, #0
 80031fa:	f47f ae11 	bne.w	8002e20 <_vfprintf_r+0xaf0>
 80031fe:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003202:	ae2d      	add	r6, sp, #180	; 0xb4
 8003204:	e638      	b.n	8002e78 <_vfprintf_r+0xb48>
 8003206:	aa2a      	add	r2, sp, #168	; 0xa8
 8003208:	9907      	ldr	r1, [sp, #28]
 800320a:	9803      	ldr	r0, [sp, #12]
 800320c:	f003 fbbe 	bl	800698c <__sprint_r>
 8003210:	2800      	cmp	r0, #0
 8003212:	f47f ae05 	bne.w	8002e20 <_vfprintf_r+0xaf0>
 8003216:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800321a:	ae2d      	add	r6, sp, #180	; 0xb4
 800321c:	930b      	str	r3, [sp, #44]	; 0x2c
 800321e:	e638      	b.n	8002e92 <_vfprintf_r+0xb62>
 8003220:	6814      	ldr	r4, [r2, #0]
 8003222:	9308      	str	r3, [sp, #32]
 8003224:	2500      	movs	r5, #0
 8003226:	f7ff bb95 	b.w	8002954 <_vfprintf_r+0x624>
 800322a:	6814      	ldr	r4, [r2, #0]
 800322c:	9308      	str	r3, [sp, #32]
 800322e:	2500      	movs	r5, #0
 8003230:	f7ff b9ae 	b.w	8002590 <_vfprintf_r+0x260>
 8003234:	680c      	ldr	r4, [r1, #0]
 8003236:	9208      	str	r2, [sp, #32]
 8003238:	17e5      	asrs	r5, r4, #31
 800323a:	4620      	mov	r0, r4
 800323c:	4629      	mov	r1, r5
 800323e:	f7ff b9d2 	b.w	80025e6 <_vfprintf_r+0x2b6>
 8003242:	6814      	ldr	r4, [r2, #0]
 8003244:	9108      	str	r1, [sp, #32]
 8003246:	2201      	movs	r2, #1
 8003248:	2500      	movs	r5, #0
 800324a:	f7ff bb32 	b.w	80028b2 <_vfprintf_r+0x582>
 800324e:	2a01      	cmp	r2, #1
 8003250:	f47f ab3c 	bne.w	80028cc <_vfprintf_r+0x59c>
 8003254:	e68f      	b.n	8002f76 <_vfprintf_r+0xc46>
 8003256:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 800325a:	2200      	movs	r2, #0
 800325c:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003260:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003264:	af56      	add	r7, sp, #344	; 0x158
 8003266:	4692      	mov	sl, r2
 8003268:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 800326c:	461e      	mov	r6, r3
 800326e:	e00a      	b.n	8003286 <_vfprintf_r+0xf56>
 8003270:	2300      	movs	r3, #0
 8003272:	4620      	mov	r0, r4
 8003274:	4629      	mov	r1, r5
 8003276:	220a      	movs	r2, #10
 8003278:	f7fc ffc2 	bl	8000200 <__aeabi_uldivmod>
 800327c:	4604      	mov	r4, r0
 800327e:	460d      	mov	r5, r1
 8003280:	ea54 0305 	orrs.w	r3, r4, r5
 8003284:	d029      	beq.n	80032da <_vfprintf_r+0xfaa>
 8003286:	220a      	movs	r2, #10
 8003288:	2300      	movs	r3, #0
 800328a:	4620      	mov	r0, r4
 800328c:	4629      	mov	r1, r5
 800328e:	f7fc ffb7 	bl	8000200 <__aeabi_uldivmod>
 8003292:	3230      	adds	r2, #48	; 0x30
 8003294:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003298:	f10a 0a01 	add.w	sl, sl, #1
 800329c:	3f01      	subs	r7, #1
 800329e:	2e00      	cmp	r6, #0
 80032a0:	d0e6      	beq.n	8003270 <_vfprintf_r+0xf40>
 80032a2:	f898 3000 	ldrb.w	r3, [r8]
 80032a6:	459a      	cmp	sl, r3
 80032a8:	d1e2      	bne.n	8003270 <_vfprintf_r+0xf40>
 80032aa:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80032ae:	d0df      	beq.n	8003270 <_vfprintf_r+0xf40>
 80032b0:	2d00      	cmp	r5, #0
 80032b2:	bf08      	it	eq
 80032b4:	2c0a      	cmpeq	r4, #10
 80032b6:	d3db      	bcc.n	8003270 <_vfprintf_r+0xf40>
 80032b8:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80032ba:	9918      	ldr	r1, [sp, #96]	; 0x60
 80032bc:	1aff      	subs	r7, r7, r3
 80032be:	461a      	mov	r2, r3
 80032c0:	4638      	mov	r0, r7
 80032c2:	f003 faf5 	bl	80068b0 <strncpy>
 80032c6:	f898 3001 	ldrb.w	r3, [r8, #1]
 80032ca:	2b00      	cmp	r3, #0
 80032cc:	f000 8496 	beq.w	8003bfc <_vfprintf_r+0x18cc>
 80032d0:	f108 0801 	add.w	r8, r8, #1
 80032d4:	f04f 0a00 	mov.w	sl, #0
 80032d8:	e7ca      	b.n	8003270 <_vfprintf_r+0xf40>
 80032da:	9b04      	ldr	r3, [sp, #16]
 80032dc:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80032e0:	1bdb      	subs	r3, r3, r7
 80032e2:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80032e6:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80032e8:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80032ec:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 80032f0:	9309      	str	r3, [sp, #36]	; 0x24
 80032f2:	f7ff b99e 	b.w	8002632 <_vfprintf_r+0x302>
 80032f6:	46c1      	mov	r9, r8
 80032f8:	e594      	b.n	8002e24 <_vfprintf_r+0xaf4>
 80032fa:	4621      	mov	r1, r4
 80032fc:	461c      	mov	r4, r3
 80032fe:	460b      	mov	r3, r1
 8003300:	3201      	adds	r2, #1
 8003302:	442c      	add	r4, r5
 8003304:	2a07      	cmp	r2, #7
 8003306:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800330a:	e9cb 3500 	strd	r3, r5, [fp]
 800330e:	f77f aa5e 	ble.w	80027ce <_vfprintf_r+0x49e>
 8003312:	e5ee      	b.n	8002ef2 <_vfprintf_r+0xbc2>
 8003314:	f018 0f10 	tst.w	r8, #16
 8003318:	f040 80f8 	bne.w	800350c <_vfprintf_r+0x11dc>
 800331c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003320:	f000 8351 	beq.w	80039c6 <_vfprintf_r+0x1696>
 8003324:	9a05      	ldr	r2, [sp, #20]
 8003326:	801a      	strh	r2, [r3, #0]
 8003328:	4657      	mov	r7, sl
 800332a:	f7ff baa7 	b.w	800287c <_vfprintf_r+0x54c>
 800332e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003330:	9907      	ldr	r1, [sp, #28]
 8003332:	9803      	ldr	r0, [sp, #12]
 8003334:	f003 fb2a 	bl	800698c <__sprint_r>
 8003338:	2800      	cmp	r0, #0
 800333a:	f47f ad71 	bne.w	8002e20 <_vfprintf_r+0xaf0>
 800333e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003340:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003344:	f7ff b9f5 	b.w	8002732 <_vfprintf_r+0x402>
 8003348:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800334c:	4602      	mov	r2, r0
 800334e:	460b      	mov	r3, r1
 8003350:	f7fd fe8c 	bl	800106c <__aeabi_dcmpun>
 8003354:	2800      	cmp	r0, #0
 8003356:	f040 8491 	bne.w	8003c7c <_vfprintf_r+0x194c>
 800335a:	2e61      	cmp	r6, #97	; 0x61
 800335c:	f000 8111 	beq.w	8003582 <_vfprintf_r+0x1252>
 8003360:	2e41      	cmp	r6, #65	; 0x41
 8003362:	f000 8377 	beq.w	8003a54 <_vfprintf_r+0x1724>
 8003366:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 800336a:	f026 0220 	bic.w	r2, r6, #32
 800336e:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003372:	930e      	str	r3, [sp, #56]	; 0x38
 8003374:	9204      	str	r2, [sp, #16]
 8003376:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003378:	f000 842d 	beq.w	8003bd6 <_vfprintf_r+0x18a6>
 800337c:	2a47      	cmp	r2, #71	; 0x47
 800337e:	f000 8424 	beq.w	8003bca <_vfprintf_r+0x189a>
 8003382:	2b00      	cmp	r3, #0
 8003384:	f2c0 82f9 	blt.w	800397a <_vfprintf_r+0x164a>
 8003388:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800338c:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003390:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003394:	2e66      	cmp	r6, #102	; 0x66
 8003396:	f000 83eb 	beq.w	8003b70 <_vfprintf_r+0x1840>
 800339a:	2e46      	cmp	r6, #70	; 0x46
 800339c:	f000 847e 	beq.w	8003c9c <_vfprintf_r+0x196c>
 80033a0:	9b04      	ldr	r3, [sp, #16]
 80033a2:	9803      	ldr	r0, [sp, #12]
 80033a4:	2b45      	cmp	r3, #69	; 0x45
 80033a6:	bf0c      	ite	eq
 80033a8:	f109 0501 	addeq.w	r5, r9, #1
 80033ac:	464d      	movne	r5, r9
 80033ae:	aa28      	add	r2, sp, #160	; 0xa0
 80033b0:	ab25      	add	r3, sp, #148	; 0x94
 80033b2:	e9cd 3200 	strd	r3, r2, [sp]
 80033b6:	2102      	movs	r1, #2
 80033b8:	ab24      	add	r3, sp, #144	; 0x90
 80033ba:	462a      	mov	r2, r5
 80033bc:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80033c0:	f000 fe3e 	bl	8004040 <_dtoa_r>
 80033c4:	2e67      	cmp	r6, #103	; 0x67
 80033c6:	4607      	mov	r7, r0
 80033c8:	f040 849c 	bne.w	8003d04 <_vfprintf_r+0x19d4>
 80033cc:	f018 0f01 	tst.w	r8, #1
 80033d0:	f040 83f9 	bne.w	8003bc6 <_vfprintf_r+0x1896>
 80033d4:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80033d6:	4640      	mov	r0, r8
 80033d8:	1bdb      	subs	r3, r3, r7
 80033da:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80033de:	9310      	str	r3, [sp, #64]	; 0x40
 80033e0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80033e2:	9311      	str	r3, [sp, #68]	; 0x44
 80033e4:	9b04      	ldr	r3, [sp, #16]
 80033e6:	2b47      	cmp	r3, #71	; 0x47
 80033e8:	f000 81e7 	beq.w	80037ba <_vfprintf_r+0x148a>
 80033ec:	9b04      	ldr	r3, [sp, #16]
 80033ee:	2b46      	cmp	r3, #70	; 0x46
 80033f0:	f000 8300 	beq.w	80039f4 <_vfprintf_r+0x16c4>
 80033f4:	9904      	ldr	r1, [sp, #16]
 80033f6:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80033f8:	b2f2      	uxtb	r2, r6
 80033fa:	2941      	cmp	r1, #65	; 0x41
 80033fc:	bf08      	it	eq
 80033fe:	320f      	addeq	r2, #15
 8003400:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003404:	bf06      	itte	eq
 8003406:	b2d2      	uxtbeq	r2, r2
 8003408:	2101      	moveq	r1, #1
 800340a:	2100      	movne	r1, #0
 800340c:	2b00      	cmp	r3, #0
 800340e:	9324      	str	r3, [sp, #144]	; 0x90
 8003410:	bfb8      	it	lt
 8003412:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003414:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003418:	bfba      	itte	lt
 800341a:	f1c3 0301 	rsblt	r3, r3, #1
 800341e:	222d      	movlt	r2, #45	; 0x2d
 8003420:	222b      	movge	r2, #43	; 0x2b
 8003422:	2b09      	cmp	r3, #9
 8003424:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003428:	f300 83f9 	bgt.w	8003c1e <_vfprintf_r+0x18ee>
 800342c:	2900      	cmp	r1, #0
 800342e:	f040 8487 	bne.w	8003d40 <_vfprintf_r+0x1a10>
 8003432:	2230      	movs	r2, #48	; 0x30
 8003434:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003438:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 800343c:	3330      	adds	r3, #48	; 0x30
 800343e:	7013      	strb	r3, [r2, #0]
 8003440:	1c53      	adds	r3, r2, #1
 8003442:	aa26      	add	r2, sp, #152	; 0x98
 8003444:	1a9b      	subs	r3, r3, r2
 8003446:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003448:	9319      	str	r3, [sp, #100]	; 0x64
 800344a:	2a01      	cmp	r2, #1
 800344c:	4413      	add	r3, r2
 800344e:	9309      	str	r3, [sp, #36]	; 0x24
 8003450:	f340 8442 	ble.w	8003cd8 <_vfprintf_r+0x19a8>
 8003454:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003456:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003458:	4413      	add	r3, r2
 800345a:	9309      	str	r3, [sp, #36]	; 0x24
 800345c:	2300      	movs	r3, #0
 800345e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003460:	9314      	str	r3, [sp, #80]	; 0x50
 8003462:	9311      	str	r3, [sp, #68]	; 0x44
 8003464:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003466:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 800346a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800346e:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003472:	9304      	str	r3, [sp, #16]
 8003474:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003476:	2b00      	cmp	r3, #0
 8003478:	f040 8275 	bne.w	8003966 <_vfprintf_r+0x1636>
 800347c:	4699      	mov	r9, r3
 800347e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003482:	f7ff b8e2 	b.w	800264a <_vfprintf_r+0x31a>
 8003486:	bf00      	nop
 8003488:	08007214 	.word	0x08007214
 800348c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800348e:	49bd      	ldr	r1, [pc, #756]	; (8003784 <_vfprintf_r+0x1454>)
 8003490:	f8cb 1000 	str.w	r1, [fp]
 8003494:	3201      	adds	r2, #1
 8003496:	3401      	adds	r4, #1
 8003498:	2101      	movs	r1, #1
 800349a:	2a07      	cmp	r2, #7
 800349c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80034a0:	f8cb 1004 	str.w	r1, [fp, #4]
 80034a4:	dc60      	bgt.n	8003568 <_vfprintf_r+0x1238>
 80034a6:	f10b 0b08 	add.w	fp, fp, #8
 80034aa:	b92b      	cbnz	r3, 80034b8 <_vfprintf_r+0x1188>
 80034ac:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80034ae:	b91a      	cbnz	r2, 80034b8 <_vfprintf_r+0x1188>
 80034b0:	f018 0f01 	tst.w	r8, #1
 80034b4:	f43f a98d 	beq.w	80027d2 <_vfprintf_r+0x4a2>
 80034b8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80034ba:	9916      	ldr	r1, [sp, #88]	; 0x58
 80034bc:	f8cb 1000 	str.w	r1, [fp]
 80034c0:	9915      	ldr	r1, [sp, #84]	; 0x54
 80034c2:	f8cb 1004 	str.w	r1, [fp, #4]
 80034c6:	3201      	adds	r2, #1
 80034c8:	440c      	add	r4, r1
 80034ca:	2a07      	cmp	r2, #7
 80034cc:	942c      	str	r4, [sp, #176]	; 0xb0
 80034ce:	922b      	str	r2, [sp, #172]	; 0xac
 80034d0:	f300 8282 	bgt.w	80039d8 <_vfprintf_r+0x16a8>
 80034d4:	f10b 0b08 	add.w	fp, fp, #8
 80034d8:	2b00      	cmp	r3, #0
 80034da:	f2c0 82e7 	blt.w	8003aac <_vfprintf_r+0x177c>
 80034de:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80034e0:	3201      	adds	r2, #1
 80034e2:	441c      	add	r4, r3
 80034e4:	2a07      	cmp	r2, #7
 80034e6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80034ea:	e9cb 7300 	strd	r7, r3, [fp]
 80034ee:	f77f a96e 	ble.w	80027ce <_vfprintf_r+0x49e>
 80034f2:	e4fe      	b.n	8002ef2 <_vfprintf_r+0xbc2>
 80034f4:	aa2a      	add	r2, sp, #168	; 0xa8
 80034f6:	9907      	ldr	r1, [sp, #28]
 80034f8:	9803      	ldr	r0, [sp, #12]
 80034fa:	f003 fa47 	bl	800698c <__sprint_r>
 80034fe:	2800      	cmp	r0, #0
 8003500:	f47f ac8e 	bne.w	8002e20 <_vfprintf_r+0xaf0>
 8003504:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003508:	f7ff bbf0 	b.w	8002cec <_vfprintf_r+0x9bc>
 800350c:	9a05      	ldr	r2, [sp, #20]
 800350e:	601a      	str	r2, [r3, #0]
 8003510:	4657      	mov	r7, sl
 8003512:	f7ff b9b3 	b.w	800287c <_vfprintf_r+0x54c>
 8003516:	8814      	ldrh	r4, [r2, #0]
 8003518:	9108      	str	r1, [sp, #32]
 800351a:	2500      	movs	r5, #0
 800351c:	2201      	movs	r2, #1
 800351e:	f7ff b9c8 	b.w	80028b2 <_vfprintf_r+0x582>
 8003522:	8814      	ldrh	r4, [r2, #0]
 8003524:	9308      	str	r3, [sp, #32]
 8003526:	2500      	movs	r5, #0
 8003528:	f7ff ba14 	b.w	8002954 <_vfprintf_r+0x624>
 800352c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003530:	9208      	str	r2, [sp, #32]
 8003532:	17e5      	asrs	r5, r4, #31
 8003534:	4620      	mov	r0, r4
 8003536:	4629      	mov	r1, r5
 8003538:	f7ff b855 	b.w	80025e6 <_vfprintf_r+0x2b6>
 800353c:	8814      	ldrh	r4, [r2, #0]
 800353e:	9308      	str	r3, [sp, #32]
 8003540:	2500      	movs	r5, #0
 8003542:	f7ff b825 	b.w	8002590 <_vfprintf_r+0x260>
 8003546:	222d      	movs	r2, #45	; 0x2d
 8003548:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800354c:	f7ff baa2 	b.w	8002a94 <_vfprintf_r+0x764>
 8003550:	aa2a      	add	r2, sp, #168	; 0xa8
 8003552:	9907      	ldr	r1, [sp, #28]
 8003554:	9803      	ldr	r0, [sp, #12]
 8003556:	f003 fa19 	bl	800698c <__sprint_r>
 800355a:	2800      	cmp	r0, #0
 800355c:	f47f ac60 	bne.w	8002e20 <_vfprintf_r+0xaf0>
 8003560:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003562:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003566:	e534      	b.n	8002fd2 <_vfprintf_r+0xca2>
 8003568:	aa2a      	add	r2, sp, #168	; 0xa8
 800356a:	9907      	ldr	r1, [sp, #28]
 800356c:	9803      	ldr	r0, [sp, #12]
 800356e:	f003 fa0d 	bl	800698c <__sprint_r>
 8003572:	2800      	cmp	r0, #0
 8003574:	f47f ac54 	bne.w	8002e20 <_vfprintf_r+0xaf0>
 8003578:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800357a:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800357c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003580:	e793      	b.n	80034aa <_vfprintf_r+0x117a>
 8003582:	2330      	movs	r3, #48	; 0x30
 8003584:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003588:	2378      	movs	r3, #120	; 0x78
 800358a:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 800358e:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003592:	f048 0402 	orr.w	r4, r8, #2
 8003596:	f300 82b0 	bgt.w	8003afa <_vfprintf_r+0x17ca>
 800359a:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 800359e:	930e      	str	r3, [sp, #56]	; 0x38
 80035a0:	f026 0320 	bic.w	r3, r6, #32
 80035a4:	9304      	str	r3, [sp, #16]
 80035a6:	2200      	movs	r2, #0
 80035a8:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80035aa:	920a      	str	r2, [sp, #40]	; 0x28
 80035ac:	46a0      	mov	r8, r4
 80035ae:	af3d      	add	r7, sp, #244	; 0xf4
 80035b0:	2b00      	cmp	r3, #0
 80035b2:	f2c0 81e3 	blt.w	800397c <_vfprintf_r+0x164c>
 80035b6:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80035ba:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80035be:	2300      	movs	r3, #0
 80035c0:	930b      	str	r3, [sp, #44]	; 0x2c
 80035c2:	2e61      	cmp	r6, #97	; 0x61
 80035c4:	f000 8255 	beq.w	8003a72 <_vfprintf_r+0x1742>
 80035c8:	2e41      	cmp	r6, #65	; 0x41
 80035ca:	f47f aee3 	bne.w	8003394 <_vfprintf_r+0x1064>
 80035ce:	a824      	add	r0, sp, #144	; 0x90
 80035d0:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80035d4:	f003 f8e2 	bl	800679c <frexp>
 80035d8:	2200      	movs	r2, #0
 80035da:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80035de:	ec51 0b10 	vmov	r0, r1, d0
 80035e2:	f7fd faa9 	bl	8000b38 <__aeabi_dmul>
 80035e6:	2200      	movs	r2, #0
 80035e8:	2300      	movs	r3, #0
 80035ea:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80035ee:	f7fd fd0b 	bl	8001008 <__aeabi_dcmpeq>
 80035f2:	2800      	cmp	r0, #0
 80035f4:	f040 8305 	bne.w	8003c02 <_vfprintf_r+0x18d2>
 80035f8:	4b63      	ldr	r3, [pc, #396]	; (8003788 <_vfprintf_r+0x1458>)
 80035fa:	9309      	str	r3, [sp, #36]	; 0x24
 80035fc:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003600:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003604:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003608:	9721      	str	r7, [sp, #132]	; 0x84
 800360a:	46b9      	mov	r9, r7
 800360c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003610:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003614:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003618:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 800361c:	e003      	b.n	8003626 <_vfprintf_r+0x12f6>
 800361e:	f7fd fcf3 	bl	8001008 <__aeabi_dcmpeq>
 8003622:	bb20      	cbnz	r0, 800366e <_vfprintf_r+0x133e>
 8003624:	46a9      	mov	r9, r5
 8003626:	2200      	movs	r2, #0
 8003628:	4b58      	ldr	r3, [pc, #352]	; (800378c <_vfprintf_r+0x145c>)
 800362a:	4630      	mov	r0, r6
 800362c:	4639      	mov	r1, r7
 800362e:	f7fd fa83 	bl	8000b38 <__aeabi_dmul>
 8003632:	460f      	mov	r7, r1
 8003634:	4606      	mov	r6, r0
 8003636:	f7fd fd2f 	bl	8001098 <__aeabi_d2iz>
 800363a:	4680      	mov	r8, r0
 800363c:	f7fd fa12 	bl	8000a64 <__aeabi_i2d>
 8003640:	4602      	mov	r2, r0
 8003642:	460b      	mov	r3, r1
 8003644:	4630      	mov	r0, r6
 8003646:	4639      	mov	r1, r7
 8003648:	f7fd f8be 	bl	80007c8 <__aeabi_dsub>
 800364c:	464d      	mov	r5, r9
 800364e:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003652:	f805 cb01 	strb.w	ip, [r5], #1
 8003656:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 800365a:	46a3      	mov	fp, r4
 800365c:	4606      	mov	r6, r0
 800365e:	460f      	mov	r7, r1
 8003660:	f04f 0200 	mov.w	r2, #0
 8003664:	f04f 0300 	mov.w	r3, #0
 8003668:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 800366c:	d1d7      	bne.n	800361e <_vfprintf_r+0x12ee>
 800366e:	4630      	mov	r0, r6
 8003670:	4639      	mov	r1, r7
 8003672:	2200      	movs	r2, #0
 8003674:	4b46      	ldr	r3, [pc, #280]	; (8003790 <_vfprintf_r+0x1460>)
 8003676:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 800367a:	9e10      	ldr	r6, [sp, #64]	; 0x40
 800367c:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003680:	4644      	mov	r4, r8
 8003682:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003686:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 800368a:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 800368e:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003692:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003694:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003698:	f7fd fcde 	bl	8001058 <__aeabi_dcmpgt>
 800369c:	2800      	cmp	r0, #0
 800369e:	f040 8176 	bne.w	800398e <_vfprintf_r+0x165e>
 80036a2:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80036a6:	2200      	movs	r2, #0
 80036a8:	4b39      	ldr	r3, [pc, #228]	; (8003790 <_vfprintf_r+0x1460>)
 80036aa:	f7fd fcad 	bl	8001008 <__aeabi_dcmpeq>
 80036ae:	b110      	cbz	r0, 80036b6 <_vfprintf_r+0x1386>
 80036b0:	07e2      	lsls	r2, r4, #31
 80036b2:	f100 816c 	bmi.w	800398e <_vfprintf_r+0x165e>
 80036b6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80036b8:	2b00      	cmp	r3, #0
 80036ba:	db07      	blt.n	80036cc <_vfprintf_r+0x139c>
 80036bc:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80036be:	3301      	adds	r3, #1
 80036c0:	442b      	add	r3, r5
 80036c2:	2230      	movs	r2, #48	; 0x30
 80036c4:	f805 2b01 	strb.w	r2, [r5], #1
 80036c8:	42ab      	cmp	r3, r5
 80036ca:	d1fb      	bne.n	80036c4 <_vfprintf_r+0x1394>
 80036cc:	1beb      	subs	r3, r5, r7
 80036ce:	4640      	mov	r0, r8
 80036d0:	9310      	str	r3, [sp, #64]	; 0x40
 80036d2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80036d6:	e683      	b.n	80033e0 <_vfprintf_r+0x10b0>
 80036d8:	f8cd 9010 	str.w	r9, [sp, #16]
 80036dc:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80036e0:	9408      	str	r4, [sp, #32]
 80036e2:	4681      	mov	r9, r0
 80036e4:	900f      	str	r0, [sp, #60]	; 0x3c
 80036e6:	9014      	str	r0, [sp, #80]	; 0x50
 80036e8:	9011      	str	r0, [sp, #68]	; 0x44
 80036ea:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80036ee:	f7fe bfac 	b.w	800264a <_vfprintf_r+0x31a>
 80036f2:	aa2a      	add	r2, sp, #168	; 0xa8
 80036f4:	9907      	ldr	r1, [sp, #28]
 80036f6:	9803      	ldr	r0, [sp, #12]
 80036f8:	f003 f948 	bl	800698c <__sprint_r>
 80036fc:	2800      	cmp	r0, #0
 80036fe:	f47f ab8f 	bne.w	8002e20 <_vfprintf_r+0xaf0>
 8003702:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003704:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003706:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800370a:	e511      	b.n	8003130 <_vfprintf_r+0xe00>
 800370c:	4252      	negs	r2, r2
 800370e:	9206      	str	r2, [sp, #24]
 8003710:	9308      	str	r3, [sp, #32]
 8003712:	f7ff b96d 	b.w	80029f0 <_vfprintf_r+0x6c0>
 8003716:	4614      	mov	r4, r2
 8003718:	4632      	mov	r2, r6
 800371a:	461e      	mov	r6, r3
 800371c:	4613      	mov	r3, r2
 800371e:	462a      	mov	r2, r5
 8003720:	3201      	adds	r2, #1
 8003722:	9209      	str	r2, [sp, #36]	; 0x24
 8003724:	f106 0208 	add.w	r2, r6, #8
 8003728:	e9c6 3900 	strd	r3, r9, [r6]
 800372c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800372e:	932b      	str	r3, [sp, #172]	; 0xac
 8003730:	444c      	add	r4, r9
 8003732:	2b07      	cmp	r3, #7
 8003734:	942c      	str	r4, [sp, #176]	; 0xb0
 8003736:	f73f acc3 	bgt.w	80030c0 <_vfprintf_r+0xd90>
 800373a:	3301      	adds	r3, #1
 800373c:	9309      	str	r3, [sp, #36]	; 0x24
 800373e:	f102 0b08 	add.w	fp, r2, #8
 8003742:	4616      	mov	r6, r2
 8003744:	f7ff bbca 	b.w	8002edc <_vfprintf_r+0xbac>
 8003748:	aa2a      	add	r2, sp, #168	; 0xa8
 800374a:	9907      	ldr	r1, [sp, #28]
 800374c:	9803      	ldr	r0, [sp, #12]
 800374e:	f003 f91d 	bl	800698c <__sprint_r>
 8003752:	2800      	cmp	r0, #0
 8003754:	f47f ab64 	bne.w	8002e20 <_vfprintf_r+0xaf0>
 8003758:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800375a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800375e:	f7ff bade 	b.w	8002d1e <_vfprintf_r+0x9ee>
 8003762:	464b      	mov	r3, r9
 8003764:	2b06      	cmp	r3, #6
 8003766:	bf28      	it	cs
 8003768:	2306      	movcs	r3, #6
 800376a:	46b9      	mov	r9, r7
 800376c:	970f      	str	r7, [sp, #60]	; 0x3c
 800376e:	9714      	str	r7, [sp, #80]	; 0x50
 8003770:	9711      	str	r7, [sp, #68]	; 0x44
 8003772:	970a      	str	r7, [sp, #40]	; 0x28
 8003774:	463a      	mov	r2, r7
 8003776:	9304      	str	r3, [sp, #16]
 8003778:	e9cd 4308 	strd	r4, r3, [sp, #32]
 800377c:	4f05      	ldr	r7, [pc, #20]	; (8003794 <_vfprintf_r+0x1464>)
 800377e:	f7fe bf64 	b.w	800264a <_vfprintf_r+0x31a>
 8003782:	bf00      	nop
 8003784:	08007200 	.word	0x08007200
 8003788:	080071e4 	.word	0x080071e4
 800378c:	40300000 	.word	0x40300000
 8003790:	3fe00000 	.word	0x3fe00000
 8003794:	080071f8 	.word	0x080071f8
 8003798:	460c      	mov	r4, r1
 800379a:	4639      	mov	r1, r7
 800379c:	465f      	mov	r7, fp
 800379e:	469b      	mov	fp, r3
 80037a0:	460b      	mov	r3, r1
 80037a2:	3201      	adds	r2, #1
 80037a4:	442c      	add	r4, r5
 80037a6:	2a07      	cmp	r2, #7
 80037a8:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80037ac:	e9cb 3500 	strd	r3, r5, [fp]
 80037b0:	f73f aca5 	bgt.w	80030fe <_vfprintf_r+0xdce>
 80037b4:	f10b 0b08 	add.w	fp, fp, #8
 80037b8:	e4ac      	b.n	8003114 <_vfprintf_r+0xde4>
 80037ba:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80037bc:	1cda      	adds	r2, r3, #3
 80037be:	db02      	blt.n	80037c6 <_vfprintf_r+0x1496>
 80037c0:	4599      	cmp	r9, r3
 80037c2:	f280 80b5 	bge.w	8003930 <_vfprintf_r+0x1600>
 80037c6:	3e02      	subs	r6, #2
 80037c8:	f026 0320 	bic.w	r3, r6, #32
 80037cc:	9304      	str	r3, [sp, #16]
 80037ce:	e611      	b.n	80033f4 <_vfprintf_r+0x10c4>
 80037d0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80037d2:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80037d6:	465a      	mov	r2, fp
 80037d8:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 80037dc:	18fb      	adds	r3, r7, r3
 80037de:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80037e2:	970c      	str	r7, [sp, #48]	; 0x30
 80037e4:	4eaf      	ldr	r6, [pc, #700]	; (8003aa4 <_vfprintf_r+0x1774>)
 80037e6:	f8dd a01c 	ldr.w	sl, [sp, #28]
 80037ea:	9309      	str	r3, [sp, #36]	; 0x24
 80037ec:	464f      	mov	r7, r9
 80037ee:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80037f2:	4621      	mov	r1, r4
 80037f4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80037f6:	2b00      	cmp	r3, #0
 80037f8:	d05b      	beq.n	80038b2 <_vfprintf_r+0x1582>
 80037fa:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80037fc:	2b00      	cmp	r3, #0
 80037fe:	d154      	bne.n	80038aa <_vfprintf_r+0x157a>
 8003800:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003802:	3b01      	subs	r3, #1
 8003804:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003808:	9314      	str	r3, [sp, #80]	; 0x50
 800380a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800380c:	9818      	ldr	r0, [sp, #96]	; 0x60
 800380e:	6010      	str	r0, [r2, #0]
 8003810:	3301      	adds	r3, #1
 8003812:	4459      	add	r1, fp
 8003814:	2b07      	cmp	r3, #7
 8003816:	912c      	str	r1, [sp, #176]	; 0xb0
 8003818:	f8c2 b004 	str.w	fp, [r2, #4]
 800381c:	932b      	str	r3, [sp, #172]	; 0xac
 800381e:	dc68      	bgt.n	80038f2 <_vfprintf_r+0x15c2>
 8003820:	3208      	adds	r2, #8
 8003822:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003824:	f898 3000 	ldrb.w	r3, [r8]
 8003828:	1bc5      	subs	r5, r0, r7
 800382a:	429d      	cmp	r5, r3
 800382c:	bfa8      	it	ge
 800382e:	461d      	movge	r5, r3
 8003830:	2d00      	cmp	r5, #0
 8003832:	dd0b      	ble.n	800384c <_vfprintf_r+0x151c>
 8003834:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003836:	6017      	str	r7, [r2, #0]
 8003838:	3301      	adds	r3, #1
 800383a:	4429      	add	r1, r5
 800383c:	2b07      	cmp	r3, #7
 800383e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003840:	6055      	str	r5, [r2, #4]
 8003842:	932b      	str	r3, [sp, #172]	; 0xac
 8003844:	dc5e      	bgt.n	8003904 <_vfprintf_r+0x15d4>
 8003846:	f898 3000 	ldrb.w	r3, [r8]
 800384a:	3208      	adds	r2, #8
 800384c:	2d00      	cmp	r5, #0
 800384e:	bfac      	ite	ge
 8003850:	1b5d      	subge	r5, r3, r5
 8003852:	461d      	movlt	r5, r3
 8003854:	2d00      	cmp	r5, #0
 8003856:	dd26      	ble.n	80038a6 <_vfprintf_r+0x1576>
 8003858:	2d10      	cmp	r5, #16
 800385a:	982b      	ldr	r0, [sp, #172]	; 0xac
 800385c:	dd3c      	ble.n	80038d8 <_vfprintf_r+0x15a8>
 800385e:	2410      	movs	r4, #16
 8003860:	e003      	b.n	800386a <_vfprintf_r+0x153a>
 8003862:	3208      	adds	r2, #8
 8003864:	3d10      	subs	r5, #16
 8003866:	2d10      	cmp	r5, #16
 8003868:	dd36      	ble.n	80038d8 <_vfprintf_r+0x15a8>
 800386a:	3001      	adds	r0, #1
 800386c:	3110      	adds	r1, #16
 800386e:	2807      	cmp	r0, #7
 8003870:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003874:	e9c2 6400 	strd	r6, r4, [r2]
 8003878:	ddf3      	ble.n	8003862 <_vfprintf_r+0x1532>
 800387a:	aa2a      	add	r2, sp, #168	; 0xa8
 800387c:	4651      	mov	r1, sl
 800387e:	4648      	mov	r0, r9
 8003880:	f003 f884 	bl	800698c <__sprint_r>
 8003884:	2800      	cmp	r0, #0
 8003886:	d150      	bne.n	800392a <_vfprintf_r+0x15fa>
 8003888:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 800388c:	aa2d      	add	r2, sp, #180	; 0xb4
 800388e:	e7e9      	b.n	8003864 <_vfprintf_r+0x1534>
 8003890:	aa2a      	add	r2, sp, #168	; 0xa8
 8003892:	4651      	mov	r1, sl
 8003894:	4648      	mov	r0, r9
 8003896:	f003 f879 	bl	800698c <__sprint_r>
 800389a:	2800      	cmp	r0, #0
 800389c:	d145      	bne.n	800392a <_vfprintf_r+0x15fa>
 800389e:	f898 3000 	ldrb.w	r3, [r8]
 80038a2:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80038a4:	aa2d      	add	r2, sp, #180	; 0xb4
 80038a6:	441f      	add	r7, r3
 80038a8:	e7a4      	b.n	80037f4 <_vfprintf_r+0x14c4>
 80038aa:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80038ac:	3b01      	subs	r3, #1
 80038ae:	930f      	str	r3, [sp, #60]	; 0x3c
 80038b0:	e7ab      	b.n	800380a <_vfprintf_r+0x14da>
 80038b2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80038b4:	2b00      	cmp	r3, #0
 80038b6:	d1f8      	bne.n	80038aa <_vfprintf_r+0x157a>
 80038b8:	46b9      	mov	r9, r7
 80038ba:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80038bc:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 80038be:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80038c2:	18fb      	adds	r3, r7, r3
 80038c4:	4599      	cmp	r9, r3
 80038c6:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 80038ca:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80038ce:	4693      	mov	fp, r2
 80038d0:	460c      	mov	r4, r1
 80038d2:	bf28      	it	cs
 80038d4:	4699      	movcs	r9, r3
 80038d6:	e424      	b.n	8003122 <_vfprintf_r+0xdf2>
 80038d8:	3001      	adds	r0, #1
 80038da:	4429      	add	r1, r5
 80038dc:	2807      	cmp	r0, #7
 80038de:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80038e2:	e9c2 6500 	strd	r6, r5, [r2]
 80038e6:	dcd3      	bgt.n	8003890 <_vfprintf_r+0x1560>
 80038e8:	f898 3000 	ldrb.w	r3, [r8]
 80038ec:	3208      	adds	r2, #8
 80038ee:	441f      	add	r7, r3
 80038f0:	e780      	b.n	80037f4 <_vfprintf_r+0x14c4>
 80038f2:	aa2a      	add	r2, sp, #168	; 0xa8
 80038f4:	4651      	mov	r1, sl
 80038f6:	4648      	mov	r0, r9
 80038f8:	f003 f848 	bl	800698c <__sprint_r>
 80038fc:	b9a8      	cbnz	r0, 800392a <_vfprintf_r+0x15fa>
 80038fe:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003900:	aa2d      	add	r2, sp, #180	; 0xb4
 8003902:	e78e      	b.n	8003822 <_vfprintf_r+0x14f2>
 8003904:	aa2a      	add	r2, sp, #168	; 0xa8
 8003906:	4651      	mov	r1, sl
 8003908:	4648      	mov	r0, r9
 800390a:	f003 f83f 	bl	800698c <__sprint_r>
 800390e:	b960      	cbnz	r0, 800392a <_vfprintf_r+0x15fa>
 8003910:	f898 3000 	ldrb.w	r3, [r8]
 8003914:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003916:	aa2d      	add	r2, sp, #180	; 0xb4
 8003918:	e798      	b.n	800384c <_vfprintf_r+0x151c>
 800391a:	4638      	mov	r0, r7
 800391c:	f7fc fe90 	bl	8000640 <strlen>
 8003920:	46a9      	mov	r9, r5
 8003922:	4603      	mov	r3, r0
 8003924:	9009      	str	r0, [sp, #36]	; 0x24
 8003926:	f7ff b8f4 	b.w	8002b12 <_vfprintf_r+0x7e2>
 800392a:	46d1      	mov	r9, sl
 800392c:	f7ff ba7a 	b.w	8002e24 <_vfprintf_r+0xaf4>
 8003930:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003932:	4619      	mov	r1, r3
 8003934:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003936:	4299      	cmp	r1, r3
 8003938:	f300 8082 	bgt.w	8003a40 <_vfprintf_r+0x1710>
 800393c:	07c4      	lsls	r4, r0, #31
 800393e:	f140 816b 	bpl.w	8003c18 <_vfprintf_r+0x18e8>
 8003942:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003944:	4413      	add	r3, r2
 8003946:	9309      	str	r3, [sp, #36]	; 0x24
 8003948:	0541      	lsls	r1, r0, #21
 800394a:	d503      	bpl.n	8003954 <_vfprintf_r+0x1624>
 800394c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800394e:	2b00      	cmp	r3, #0
 8003950:	f300 80e6 	bgt.w	8003b20 <_vfprintf_r+0x17f0>
 8003954:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003956:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800395a:	9304      	str	r3, [sp, #16]
 800395c:	2667      	movs	r6, #103	; 0x67
 800395e:	2300      	movs	r3, #0
 8003960:	930f      	str	r3, [sp, #60]	; 0x3c
 8003962:	9314      	str	r3, [sp, #80]	; 0x50
 8003964:	e586      	b.n	8003474 <_vfprintf_r+0x1144>
 8003966:	222d      	movs	r2, #45	; 0x2d
 8003968:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800396c:	f04f 0900 	mov.w	r9, #0
 8003970:	f7fe be6c 	b.w	800264c <_vfprintf_r+0x31c>
 8003974:	46a1      	mov	r9, r4
 8003976:	f7ff ba55 	b.w	8002e24 <_vfprintf_r+0xaf4>
 800397a:	900a      	str	r0, [sp, #40]	; 0x28
 800397c:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003980:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003984:	931f      	str	r3, [sp, #124]	; 0x7c
 8003986:	232d      	movs	r3, #45	; 0x2d
 8003988:	911e      	str	r1, [sp, #120]	; 0x78
 800398a:	930b      	str	r3, [sp, #44]	; 0x2c
 800398c:	e619      	b.n	80035c2 <_vfprintf_r+0x1292>
 800398e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003990:	9328      	str	r3, [sp, #160]	; 0xa0
 8003992:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003994:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003998:	7bd9      	ldrb	r1, [r3, #15]
 800399a:	4291      	cmp	r1, r2
 800399c:	462b      	mov	r3, r5
 800399e:	d109      	bne.n	80039b4 <_vfprintf_r+0x1684>
 80039a0:	2030      	movs	r0, #48	; 0x30
 80039a2:	f803 0c01 	strb.w	r0, [r3, #-1]
 80039a6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80039a8:	1e5a      	subs	r2, r3, #1
 80039aa:	9228      	str	r2, [sp, #160]	; 0xa0
 80039ac:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80039b0:	4291      	cmp	r1, r2
 80039b2:	d0f6      	beq.n	80039a2 <_vfprintf_r+0x1672>
 80039b4:	2a39      	cmp	r2, #57	; 0x39
 80039b6:	bf0b      	itete	eq
 80039b8:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 80039ba:	3201      	addne	r2, #1
 80039bc:	7a92      	ldrbeq	r2, [r2, #10]
 80039be:	b2d2      	uxtbne	r2, r2
 80039c0:	f803 2c01 	strb.w	r2, [r3, #-1]
 80039c4:	e682      	b.n	80036cc <_vfprintf_r+0x139c>
 80039c6:	f418 7f00 	tst.w	r8, #512	; 0x200
 80039ca:	f43f ad9f 	beq.w	800350c <_vfprintf_r+0x11dc>
 80039ce:	9a05      	ldr	r2, [sp, #20]
 80039d0:	701a      	strb	r2, [r3, #0]
 80039d2:	4657      	mov	r7, sl
 80039d4:	f7fe bf52 	b.w	800287c <_vfprintf_r+0x54c>
 80039d8:	aa2a      	add	r2, sp, #168	; 0xa8
 80039da:	9907      	ldr	r1, [sp, #28]
 80039dc:	9803      	ldr	r0, [sp, #12]
 80039de:	f002 ffd5 	bl	800698c <__sprint_r>
 80039e2:	2800      	cmp	r0, #0
 80039e4:	f47f aa1c 	bne.w	8002e20 <_vfprintf_r+0xaf0>
 80039e8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80039ea:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80039ee:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039f2:	e571      	b.n	80034d8 <_vfprintf_r+0x11a8>
 80039f4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039f6:	2b00      	cmp	r3, #0
 80039f8:	f340 8164 	ble.w	8003cc4 <_vfprintf_r+0x1994>
 80039fc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039fe:	f1b9 0f00 	cmp.w	r9, #0
 8003a02:	f040 8103 	bne.w	8003c0c <_vfprintf_r+0x18dc>
 8003a06:	07c6      	lsls	r6, r0, #31
 8003a08:	f100 8100 	bmi.w	8003c0c <_vfprintf_r+0x18dc>
 8003a0c:	9309      	str	r3, [sp, #36]	; 0x24
 8003a0e:	2666      	movs	r6, #102	; 0x66
 8003a10:	0543      	lsls	r3, r0, #21
 8003a12:	f100 8086 	bmi.w	8003b22 <_vfprintf_r+0x17f2>
 8003a16:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a18:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003a1c:	9304      	str	r3, [sp, #16]
 8003a1e:	e79e      	b.n	800395e <_vfprintf_r+0x162e>
 8003a20:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a22:	9907      	ldr	r1, [sp, #28]
 8003a24:	9803      	ldr	r0, [sp, #12]
 8003a26:	f002 ffb1 	bl	800698c <__sprint_r>
 8003a2a:	2800      	cmp	r0, #0
 8003a2c:	f47f a9f8 	bne.w	8002e20 <_vfprintf_r+0xaf0>
 8003a30:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003a32:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003a34:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a36:	1ad3      	subs	r3, r2, r3
 8003a38:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a3c:	f7ff bb90 	b.w	8003160 <_vfprintf_r+0xe30>
 8003a40:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a42:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003a44:	4413      	add	r3, r2
 8003a46:	9309      	str	r3, [sp, #36]	; 0x24
 8003a48:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a4a:	2b00      	cmp	r3, #0
 8003a4c:	f340 8149 	ble.w	8003ce2 <_vfprintf_r+0x19b2>
 8003a50:	2667      	movs	r6, #103	; 0x67
 8003a52:	e7dd      	b.n	8003a10 <_vfprintf_r+0x16e0>
 8003a54:	2330      	movs	r3, #48	; 0x30
 8003a56:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003a5a:	2358      	movs	r3, #88	; 0x58
 8003a5c:	e595      	b.n	800358a <_vfprintf_r+0x125a>
 8003a5e:	9803      	ldr	r0, [sp, #12]
 8003a60:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a62:	4649      	mov	r1, r9
 8003a64:	f002 ff92 	bl	800698c <__sprint_r>
 8003a68:	2800      	cmp	r0, #0
 8003a6a:	f47f a9e0 	bne.w	8002e2e <_vfprintf_r+0xafe>
 8003a6e:	f7fe bf0f 	b.w	8002890 <_vfprintf_r+0x560>
 8003a72:	a824      	add	r0, sp, #144	; 0x90
 8003a74:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003a78:	f002 fe90 	bl	800679c <frexp>
 8003a7c:	2200      	movs	r2, #0
 8003a7e:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003a82:	ec51 0b10 	vmov	r0, r1, d0
 8003a86:	f7fd f857 	bl	8000b38 <__aeabi_dmul>
 8003a8a:	2200      	movs	r2, #0
 8003a8c:	2300      	movs	r3, #0
 8003a8e:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003a92:	f7fd fab9 	bl	8001008 <__aeabi_dcmpeq>
 8003a96:	b108      	cbz	r0, 8003a9c <_vfprintf_r+0x176c>
 8003a98:	2301      	movs	r3, #1
 8003a9a:	9324      	str	r3, [sp, #144]	; 0x90
 8003a9c:	4b02      	ldr	r3, [pc, #8]	; (8003aa8 <_vfprintf_r+0x1778>)
 8003a9e:	9309      	str	r3, [sp, #36]	; 0x24
 8003aa0:	e5ac      	b.n	80035fc <_vfprintf_r+0x12cc>
 8003aa2:	bf00      	nop
 8003aa4:	08007214 	.word	0x08007214
 8003aa8:	080071d0 	.word	0x080071d0
 8003aac:	425d      	negs	r5, r3
 8003aae:	3310      	adds	r3, #16
 8003ab0:	4bb9      	ldr	r3, [pc, #740]	; (8003d98 <_vfprintf_r+0x1a68>)
 8003ab2:	f280 8097 	bge.w	8003be4 <_vfprintf_r+0x18b4>
 8003ab6:	4619      	mov	r1, r3
 8003ab8:	2610      	movs	r6, #16
 8003aba:	4623      	mov	r3, r4
 8003abc:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003ac0:	460c      	mov	r4, r1
 8003ac2:	e005      	b.n	8003ad0 <_vfprintf_r+0x17a0>
 8003ac4:	f10b 0b08 	add.w	fp, fp, #8
 8003ac8:	3d10      	subs	r5, #16
 8003aca:	2d10      	cmp	r5, #16
 8003acc:	f340 8087 	ble.w	8003bde <_vfprintf_r+0x18ae>
 8003ad0:	3201      	adds	r2, #1
 8003ad2:	3310      	adds	r3, #16
 8003ad4:	2a07      	cmp	r2, #7
 8003ad6:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003ada:	e9cb 4600 	strd	r4, r6, [fp]
 8003ade:	ddf1      	ble.n	8003ac4 <_vfprintf_r+0x1794>
 8003ae0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ae2:	9907      	ldr	r1, [sp, #28]
 8003ae4:	4648      	mov	r0, r9
 8003ae6:	f002 ff51 	bl	800698c <__sprint_r>
 8003aea:	2800      	cmp	r0, #0
 8003aec:	f47f a998 	bne.w	8002e20 <_vfprintf_r+0xaf0>
 8003af0:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003af4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003af8:	e7e6      	b.n	8003ac8 <_vfprintf_r+0x1798>
 8003afa:	f109 0101 	add.w	r1, r9, #1
 8003afe:	9803      	ldr	r0, [sp, #12]
 8003b00:	f001 fe80 	bl	8005804 <_malloc_r>
 8003b04:	4607      	mov	r7, r0
 8003b06:	2800      	cmp	r0, #0
 8003b08:	f000 813b 	beq.w	8003d82 <_vfprintf_r+0x1a52>
 8003b0c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003b10:	930e      	str	r3, [sp, #56]	; 0x38
 8003b12:	f026 0320 	bic.w	r3, r6, #32
 8003b16:	9304      	str	r3, [sp, #16]
 8003b18:	46a0      	mov	r8, r4
 8003b1a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003b1c:	900a      	str	r0, [sp, #40]	; 0x28
 8003b1e:	e547      	b.n	80035b0 <_vfprintf_r+0x1280>
 8003b20:	2667      	movs	r6, #103	; 0x67
 8003b22:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003b24:	2200      	movs	r2, #0
 8003b26:	920f      	str	r2, [sp, #60]	; 0x3c
 8003b28:	9214      	str	r2, [sp, #80]	; 0x50
 8003b2a:	7803      	ldrb	r3, [r0, #0]
 8003b2c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003b2e:	2bff      	cmp	r3, #255	; 0xff
 8003b30:	d00c      	beq.n	8003b4c <_vfprintf_r+0x181c>
 8003b32:	4293      	cmp	r3, r2
 8003b34:	da0a      	bge.n	8003b4c <_vfprintf_r+0x181c>
 8003b36:	7841      	ldrb	r1, [r0, #1]
 8003b38:	1ad2      	subs	r2, r2, r3
 8003b3a:	b1a9      	cbz	r1, 8003b68 <_vfprintf_r+0x1838>
 8003b3c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003b3e:	3301      	adds	r3, #1
 8003b40:	9314      	str	r3, [sp, #80]	; 0x50
 8003b42:	460b      	mov	r3, r1
 8003b44:	2bff      	cmp	r3, #255	; 0xff
 8003b46:	f100 0001 	add.w	r0, r0, #1
 8003b4a:	d1f2      	bne.n	8003b32 <_vfprintf_r+0x1802>
 8003b4c:	9211      	str	r2, [sp, #68]	; 0x44
 8003b4e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003b50:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003b52:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003b54:	901a      	str	r0, [sp, #104]	; 0x68
 8003b56:	4413      	add	r3, r2
 8003b58:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003b5a:	fb02 1303 	mla	r3, r2, r3, r1
 8003b5e:	9309      	str	r3, [sp, #36]	; 0x24
 8003b60:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b64:	9304      	str	r3, [sp, #16]
 8003b66:	e485      	b.n	8003474 <_vfprintf_r+0x1144>
 8003b68:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003b6a:	3101      	adds	r1, #1
 8003b6c:	910f      	str	r1, [sp, #60]	; 0x3c
 8003b6e:	e7de      	b.n	8003b2e <_vfprintf_r+0x17fe>
 8003b70:	aa28      	add	r2, sp, #160	; 0xa0
 8003b72:	ab25      	add	r3, sp, #148	; 0x94
 8003b74:	e9cd 3200 	strd	r3, r2, [sp]
 8003b78:	2103      	movs	r1, #3
 8003b7a:	ab24      	add	r3, sp, #144	; 0x90
 8003b7c:	464a      	mov	r2, r9
 8003b7e:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003b82:	9803      	ldr	r0, [sp, #12]
 8003b84:	f000 fa5c 	bl	8004040 <_dtoa_r>
 8003b88:	464d      	mov	r5, r9
 8003b8a:	4607      	mov	r7, r0
 8003b8c:	eb00 0409 	add.w	r4, r0, r9
 8003b90:	783b      	ldrb	r3, [r7, #0]
 8003b92:	2b30      	cmp	r3, #48	; 0x30
 8003b94:	f000 80be 	beq.w	8003d14 <_vfprintf_r+0x19e4>
 8003b98:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003b9a:	442c      	add	r4, r5
 8003b9c:	2200      	movs	r2, #0
 8003b9e:	2300      	movs	r3, #0
 8003ba0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003ba4:	f7fd fa30 	bl	8001008 <__aeabi_dcmpeq>
 8003ba8:	b108      	cbz	r0, 8003bae <_vfprintf_r+0x187e>
 8003baa:	4623      	mov	r3, r4
 8003bac:	e413      	b.n	80033d6 <_vfprintf_r+0x10a6>
 8003bae:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003bb0:	42a3      	cmp	r3, r4
 8003bb2:	f4bf ac10 	bcs.w	80033d6 <_vfprintf_r+0x10a6>
 8003bb6:	2130      	movs	r1, #48	; 0x30
 8003bb8:	1c5a      	adds	r2, r3, #1
 8003bba:	9228      	str	r2, [sp, #160]	; 0xa0
 8003bbc:	7019      	strb	r1, [r3, #0]
 8003bbe:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003bc0:	429c      	cmp	r4, r3
 8003bc2:	d8f9      	bhi.n	8003bb8 <_vfprintf_r+0x1888>
 8003bc4:	e407      	b.n	80033d6 <_vfprintf_r+0x10a6>
 8003bc6:	197c      	adds	r4, r7, r5
 8003bc8:	e7e8      	b.n	8003b9c <_vfprintf_r+0x186c>
 8003bca:	f1b9 0f00 	cmp.w	r9, #0
 8003bce:	f000 8092 	beq.w	8003cf6 <_vfprintf_r+0x19c6>
 8003bd2:	900a      	str	r0, [sp, #40]	; 0x28
 8003bd4:	e4ec      	b.n	80035b0 <_vfprintf_r+0x1280>
 8003bd6:	900a      	str	r0, [sp, #40]	; 0x28
 8003bd8:	f04f 0906 	mov.w	r9, #6
 8003bdc:	e4e8      	b.n	80035b0 <_vfprintf_r+0x1280>
 8003bde:	4621      	mov	r1, r4
 8003be0:	461c      	mov	r4, r3
 8003be2:	460b      	mov	r3, r1
 8003be4:	3201      	adds	r2, #1
 8003be6:	442c      	add	r4, r5
 8003be8:	2a07      	cmp	r2, #7
 8003bea:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003bee:	e9cb 3500 	strd	r3, r5, [fp]
 8003bf2:	f300 80a9 	bgt.w	8003d48 <_vfprintf_r+0x1a18>
 8003bf6:	f10b 0b08 	add.w	fp, fp, #8
 8003bfa:	e470      	b.n	80034de <_vfprintf_r+0x11ae>
 8003bfc:	469a      	mov	sl, r3
 8003bfe:	f7ff bb37 	b.w	8003270 <_vfprintf_r+0xf40>
 8003c02:	2301      	movs	r3, #1
 8003c04:	9324      	str	r3, [sp, #144]	; 0x90
 8003c06:	4b65      	ldr	r3, [pc, #404]	; (8003d9c <_vfprintf_r+0x1a6c>)
 8003c08:	9309      	str	r3, [sp, #36]	; 0x24
 8003c0a:	e4f7      	b.n	80035fc <_vfprintf_r+0x12cc>
 8003c0c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003c0e:	4413      	add	r3, r2
 8003c10:	444b      	add	r3, r9
 8003c12:	9309      	str	r3, [sp, #36]	; 0x24
 8003c14:	2666      	movs	r6, #102	; 0x66
 8003c16:	e6fb      	b.n	8003a10 <_vfprintf_r+0x16e0>
 8003c18:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c1a:	9309      	str	r3, [sp, #36]	; 0x24
 8003c1c:	e694      	b.n	8003948 <_vfprintf_r+0x1618>
 8003c1e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003c22:	4664      	mov	r4, ip
 8003c24:	4d5e      	ldr	r5, [pc, #376]	; (8003da0 <_vfprintf_r+0x1a70>)
 8003c26:	e000      	b.n	8003c2a <_vfprintf_r+0x18fa>
 8003c28:	4614      	mov	r4, r2
 8003c2a:	fba5 1203 	umull	r1, r2, r5, r3
 8003c2e:	08d2      	lsrs	r2, r2, #3
 8003c30:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003c34:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003c38:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003c3c:	4613      	mov	r3, r2
 8003c3e:	2b09      	cmp	r3, #9
 8003c40:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003c44:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003c48:	dcee      	bgt.n	8003c28 <_vfprintf_r+0x18f8>
 8003c4a:	3330      	adds	r3, #48	; 0x30
 8003c4c:	3c02      	subs	r4, #2
 8003c4e:	b2db      	uxtb	r3, r3
 8003c50:	45a4      	cmp	ip, r4
 8003c52:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003c56:	f240 8090 	bls.w	8003d7a <_vfprintf_r+0x1a4a>
 8003c5a:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003c5e:	4611      	mov	r1, r2
 8003c60:	e001      	b.n	8003c66 <_vfprintf_r+0x1936>
 8003c62:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003c66:	f804 3b01 	strb.w	r3, [r4], #1
 8003c6a:	458c      	cmp	ip, r1
 8003c6c:	d1f9      	bne.n	8003c62 <_vfprintf_r+0x1932>
 8003c6e:	ab2a      	add	r3, sp, #168	; 0xa8
 8003c70:	1a9b      	subs	r3, r3, r2
 8003c72:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003c76:	4413      	add	r3, r2
 8003c78:	f7ff bbe3 	b.w	8003442 <_vfprintf_r+0x1112>
 8003c7c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003c7e:	4f49      	ldr	r7, [pc, #292]	; (8003da4 <_vfprintf_r+0x1a74>)
 8003c80:	2b00      	cmp	r3, #0
 8003c82:	bfb6      	itet	lt
 8003c84:	222d      	movlt	r2, #45	; 0x2d
 8003c86:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003c8a:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003c8e:	4b46      	ldr	r3, [pc, #280]	; (8003da8 <_vfprintf_r+0x1a78>)
 8003c90:	f7fe bf02 	b.w	8002a98 <_vfprintf_r+0x768>
 8003c94:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003c98:	f7ff b8c9 	b.w	8002e2e <_vfprintf_r+0xafe>
 8003c9c:	aa28      	add	r2, sp, #160	; 0xa0
 8003c9e:	ab25      	add	r3, sp, #148	; 0x94
 8003ca0:	e9cd 3200 	strd	r3, r2, [sp]
 8003ca4:	2103      	movs	r1, #3
 8003ca6:	ab24      	add	r3, sp, #144	; 0x90
 8003ca8:	464a      	mov	r2, r9
 8003caa:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003cae:	9803      	ldr	r0, [sp, #12]
 8003cb0:	f000 f9c6 	bl	8004040 <_dtoa_r>
 8003cb4:	464d      	mov	r5, r9
 8003cb6:	4607      	mov	r7, r0
 8003cb8:	2e46      	cmp	r6, #70	; 0x46
 8003cba:	eb07 0405 	add.w	r4, r7, r5
 8003cbe:	f43f af67 	beq.w	8003b90 <_vfprintf_r+0x1860>
 8003cc2:	e76b      	b.n	8003b9c <_vfprintf_r+0x186c>
 8003cc4:	f1b9 0f00 	cmp.w	r9, #0
 8003cc8:	d131      	bne.n	8003d2e <_vfprintf_r+0x19fe>
 8003cca:	07c5      	lsls	r5, r0, #31
 8003ccc:	d42f      	bmi.n	8003d2e <_vfprintf_r+0x19fe>
 8003cce:	2301      	movs	r3, #1
 8003cd0:	9304      	str	r3, [sp, #16]
 8003cd2:	9309      	str	r3, [sp, #36]	; 0x24
 8003cd4:	2666      	movs	r6, #102	; 0x66
 8003cd6:	e642      	b.n	800395e <_vfprintf_r+0x162e>
 8003cd8:	07c3      	lsls	r3, r0, #31
 8003cda:	f57f abbf 	bpl.w	800345c <_vfprintf_r+0x112c>
 8003cde:	f7ff bbb9 	b.w	8003454 <_vfprintf_r+0x1124>
 8003ce2:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003ce4:	f1c3 0301 	rsb	r3, r3, #1
 8003ce8:	441a      	add	r2, r3
 8003cea:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003cee:	9209      	str	r2, [sp, #36]	; 0x24
 8003cf0:	9304      	str	r3, [sp, #16]
 8003cf2:	2667      	movs	r6, #103	; 0x67
 8003cf4:	e633      	b.n	800395e <_vfprintf_r+0x162e>
 8003cf6:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003cfa:	f04f 0901 	mov.w	r9, #1
 8003cfe:	e457      	b.n	80035b0 <_vfprintf_r+0x1280>
 8003d00:	465a      	mov	r2, fp
 8003d02:	e511      	b.n	8003728 <_vfprintf_r+0x13f8>
 8003d04:	2e47      	cmp	r6, #71	; 0x47
 8003d06:	f47f af5e 	bne.w	8003bc6 <_vfprintf_r+0x1896>
 8003d0a:	f018 0f01 	tst.w	r8, #1
 8003d0e:	f43f ab61 	beq.w	80033d4 <_vfprintf_r+0x10a4>
 8003d12:	e7d1      	b.n	8003cb8 <_vfprintf_r+0x1988>
 8003d14:	2200      	movs	r2, #0
 8003d16:	2300      	movs	r3, #0
 8003d18:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003d1c:	f7fd f974 	bl	8001008 <__aeabi_dcmpeq>
 8003d20:	2800      	cmp	r0, #0
 8003d22:	f47f af39 	bne.w	8003b98 <_vfprintf_r+0x1868>
 8003d26:	f1c5 0501 	rsb	r5, r5, #1
 8003d2a:	9524      	str	r5, [sp, #144]	; 0x90
 8003d2c:	e735      	b.n	8003b9a <_vfprintf_r+0x186a>
 8003d2e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003d30:	3301      	adds	r3, #1
 8003d32:	444b      	add	r3, r9
 8003d34:	9309      	str	r3, [sp, #36]	; 0x24
 8003d36:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003d3a:	9304      	str	r3, [sp, #16]
 8003d3c:	2666      	movs	r6, #102	; 0x66
 8003d3e:	e60e      	b.n	800395e <_vfprintf_r+0x162e>
 8003d40:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003d44:	f7ff bb7a 	b.w	800343c <_vfprintf_r+0x110c>
 8003d48:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d4a:	9907      	ldr	r1, [sp, #28]
 8003d4c:	9803      	ldr	r0, [sp, #12]
 8003d4e:	f002 fe1d 	bl	800698c <__sprint_r>
 8003d52:	2800      	cmp	r0, #0
 8003d54:	f47f a864 	bne.w	8002e20 <_vfprintf_r+0xaf0>
 8003d58:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003d5c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d60:	f7ff bbbd 	b.w	80034de <_vfprintf_r+0x11ae>
 8003d64:	9908      	ldr	r1, [sp, #32]
 8003d66:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003d6a:	680b      	ldr	r3, [r1, #0]
 8003d6c:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003d70:	1d0b      	adds	r3, r1, #4
 8003d72:	4692      	mov	sl, r2
 8003d74:	9308      	str	r3, [sp, #32]
 8003d76:	f7fe bb59 	b.w	800242c <_vfprintf_r+0xfc>
 8003d7a:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003d7e:	f7ff bb60 	b.w	8003442 <_vfprintf_r+0x1112>
 8003d82:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003d86:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003d8a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003d8e:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003d92:	f7ff b84c 	b.w	8002e2e <_vfprintf_r+0xafe>
 8003d96:	bf00      	nop
 8003d98:	08007214 	.word	0x08007214
 8003d9c:	080071e4 	.word	0x080071e4
 8003da0:	cccccccd 	.word	0xcccccccd
 8003da4:	080071cc 	.word	0x080071cc
 8003da8:	080071c8 	.word	0x080071c8

08003dac <__sbprintf>:
 8003dac:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003db0:	460c      	mov	r4, r1
 8003db2:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003db6:	8989      	ldrh	r1, [r1, #12]
 8003db8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003dba:	89e5      	ldrh	r5, [r4, #14]
 8003dbc:	9619      	str	r6, [sp, #100]	; 0x64
 8003dbe:	f021 0102 	bic.w	r1, r1, #2
 8003dc2:	4606      	mov	r6, r0
 8003dc4:	69e0      	ldr	r0, [r4, #28]
 8003dc6:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003dca:	4617      	mov	r7, r2
 8003dcc:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003dd0:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003dd2:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003dd6:	4698      	mov	r8, r3
 8003dd8:	ad1a      	add	r5, sp, #104	; 0x68
 8003dda:	2300      	movs	r3, #0
 8003ddc:	9007      	str	r0, [sp, #28]
 8003dde:	a816      	add	r0, sp, #88	; 0x58
 8003de0:	9209      	str	r2, [sp, #36]	; 0x24
 8003de2:	9306      	str	r3, [sp, #24]
 8003de4:	9500      	str	r5, [sp, #0]
 8003de6:	9504      	str	r5, [sp, #16]
 8003de8:	9102      	str	r1, [sp, #8]
 8003dea:	9105      	str	r1, [sp, #20]
 8003dec:	f001 fc8a 	bl	8005704 <__retarget_lock_init_recursive>
 8003df0:	4643      	mov	r3, r8
 8003df2:	463a      	mov	r2, r7
 8003df4:	4669      	mov	r1, sp
 8003df6:	4630      	mov	r0, r6
 8003df8:	f7fe fa9a 	bl	8002330 <_vfprintf_r>
 8003dfc:	1e05      	subs	r5, r0, #0
 8003dfe:	db07      	blt.n	8003e10 <__sbprintf+0x64>
 8003e00:	4630      	mov	r0, r6
 8003e02:	4669      	mov	r1, sp
 8003e04:	f001 f8d6 	bl	8004fb4 <_fflush_r>
 8003e08:	2800      	cmp	r0, #0
 8003e0a:	bf18      	it	ne
 8003e0c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003e10:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003e14:	065b      	lsls	r3, r3, #25
 8003e16:	d503      	bpl.n	8003e20 <__sbprintf+0x74>
 8003e18:	89a3      	ldrh	r3, [r4, #12]
 8003e1a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003e1e:	81a3      	strh	r3, [r4, #12]
 8003e20:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003e22:	f001 fc71 	bl	8005708 <__retarget_lock_close_recursive>
 8003e26:	4628      	mov	r0, r5
 8003e28:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003e2c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003e30 <__swsetup_r>:
 8003e30:	b538      	push	{r3, r4, r5, lr}
 8003e32:	4b31      	ldr	r3, [pc, #196]	; (8003ef8 <__swsetup_r+0xc8>)
 8003e34:	681b      	ldr	r3, [r3, #0]
 8003e36:	4605      	mov	r5, r0
 8003e38:	460c      	mov	r4, r1
 8003e3a:	b113      	cbz	r3, 8003e42 <__swsetup_r+0x12>
 8003e3c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003e3e:	2a00      	cmp	r2, #0
 8003e40:	d03a      	beq.n	8003eb8 <__swsetup_r+0x88>
 8003e42:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003e46:	b293      	uxth	r3, r2
 8003e48:	0718      	lsls	r0, r3, #28
 8003e4a:	d50c      	bpl.n	8003e66 <__swsetup_r+0x36>
 8003e4c:	6920      	ldr	r0, [r4, #16]
 8003e4e:	b1a8      	cbz	r0, 8003e7c <__swsetup_r+0x4c>
 8003e50:	f013 0201 	ands.w	r2, r3, #1
 8003e54:	d020      	beq.n	8003e98 <__swsetup_r+0x68>
 8003e56:	6963      	ldr	r3, [r4, #20]
 8003e58:	2200      	movs	r2, #0
 8003e5a:	425b      	negs	r3, r3
 8003e5c:	61a3      	str	r3, [r4, #24]
 8003e5e:	60a2      	str	r2, [r4, #8]
 8003e60:	b300      	cbz	r0, 8003ea4 <__swsetup_r+0x74>
 8003e62:	2000      	movs	r0, #0
 8003e64:	bd38      	pop	{r3, r4, r5, pc}
 8003e66:	06d9      	lsls	r1, r3, #27
 8003e68:	d53e      	bpl.n	8003ee8 <__swsetup_r+0xb8>
 8003e6a:	0758      	lsls	r0, r3, #29
 8003e6c:	d428      	bmi.n	8003ec0 <__swsetup_r+0x90>
 8003e6e:	6920      	ldr	r0, [r4, #16]
 8003e70:	f042 0308 	orr.w	r3, r2, #8
 8003e74:	81a3      	strh	r3, [r4, #12]
 8003e76:	b29b      	uxth	r3, r3
 8003e78:	2800      	cmp	r0, #0
 8003e7a:	d1e9      	bne.n	8003e50 <__swsetup_r+0x20>
 8003e7c:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003e80:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003e84:	d0e4      	beq.n	8003e50 <__swsetup_r+0x20>
 8003e86:	4628      	mov	r0, r5
 8003e88:	4621      	mov	r1, r4
 8003e8a:	f001 fc71 	bl	8005770 <__smakebuf_r>
 8003e8e:	89a3      	ldrh	r3, [r4, #12]
 8003e90:	6920      	ldr	r0, [r4, #16]
 8003e92:	f013 0201 	ands.w	r2, r3, #1
 8003e96:	d1de      	bne.n	8003e56 <__swsetup_r+0x26>
 8003e98:	0799      	lsls	r1, r3, #30
 8003e9a:	bf58      	it	pl
 8003e9c:	6962      	ldrpl	r2, [r4, #20]
 8003e9e:	60a2      	str	r2, [r4, #8]
 8003ea0:	2800      	cmp	r0, #0
 8003ea2:	d1de      	bne.n	8003e62 <__swsetup_r+0x32>
 8003ea4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003ea8:	061a      	lsls	r2, r3, #24
 8003eaa:	d5db      	bpl.n	8003e64 <__swsetup_r+0x34>
 8003eac:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003eb0:	81a3      	strh	r3, [r4, #12]
 8003eb2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003eb6:	bd38      	pop	{r3, r4, r5, pc}
 8003eb8:	4618      	mov	r0, r3
 8003eba:	f001 f8d7 	bl	800506c <__sinit>
 8003ebe:	e7c0      	b.n	8003e42 <__swsetup_r+0x12>
 8003ec0:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8003ec2:	b151      	cbz	r1, 8003eda <__swsetup_r+0xaa>
 8003ec4:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8003ec8:	4299      	cmp	r1, r3
 8003eca:	d004      	beq.n	8003ed6 <__swsetup_r+0xa6>
 8003ecc:	4628      	mov	r0, r5
 8003ece:	f001 f96f 	bl	80051b0 <_free_r>
 8003ed2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003ed6:	2300      	movs	r3, #0
 8003ed8:	6323      	str	r3, [r4, #48]	; 0x30
 8003eda:	2300      	movs	r3, #0
 8003edc:	6920      	ldr	r0, [r4, #16]
 8003ede:	6063      	str	r3, [r4, #4]
 8003ee0:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8003ee4:	6020      	str	r0, [r4, #0]
 8003ee6:	e7c3      	b.n	8003e70 <__swsetup_r+0x40>
 8003ee8:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8003eec:	2309      	movs	r3, #9
 8003eee:	602b      	str	r3, [r5, #0]
 8003ef0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003ef4:	81a2      	strh	r2, [r4, #12]
 8003ef6:	bd38      	pop	{r3, r4, r5, pc}
 8003ef8:	20000018 	.word	0x20000018

08003efc <register_fini>:
 8003efc:	4b02      	ldr	r3, [pc, #8]	; (8003f08 <register_fini+0xc>)
 8003efe:	b113      	cbz	r3, 8003f06 <register_fini+0xa>
 8003f00:	4802      	ldr	r0, [pc, #8]	; (8003f0c <register_fini+0x10>)
 8003f02:	f000 b805 	b.w	8003f10 <atexit>
 8003f06:	4770      	bx	lr
 8003f08:	00000000 	.word	0x00000000
 8003f0c:	080050dd 	.word	0x080050dd

08003f10 <atexit>:
 8003f10:	2300      	movs	r3, #0
 8003f12:	4601      	mov	r1, r0
 8003f14:	461a      	mov	r2, r3
 8003f16:	4618      	mov	r0, r3
 8003f18:	f002 bd58 	b.w	80069cc <__register_exitproc>

08003f1c <quorem>:
 8003f1c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003f20:	6903      	ldr	r3, [r0, #16]
 8003f22:	690f      	ldr	r7, [r1, #16]
 8003f24:	42bb      	cmp	r3, r7
 8003f26:	b083      	sub	sp, #12
 8003f28:	f2c0 8086 	blt.w	8004038 <quorem+0x11c>
 8003f2c:	3f01      	subs	r7, #1
 8003f2e:	f101 0914 	add.w	r9, r1, #20
 8003f32:	f100 0a14 	add.w	sl, r0, #20
 8003f36:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8003f3a:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8003f3e:	00bc      	lsls	r4, r7, #2
 8003f40:	3201      	adds	r2, #1
 8003f42:	fbb3 f8f2 	udiv	r8, r3, r2
 8003f46:	eb0a 0304 	add.w	r3, sl, r4
 8003f4a:	9400      	str	r4, [sp, #0]
 8003f4c:	eb09 0b04 	add.w	fp, r9, r4
 8003f50:	9301      	str	r3, [sp, #4]
 8003f52:	f1b8 0f00 	cmp.w	r8, #0
 8003f56:	d038      	beq.n	8003fca <quorem+0xae>
 8003f58:	2500      	movs	r5, #0
 8003f5a:	462e      	mov	r6, r5
 8003f5c:	46ce      	mov	lr, r9
 8003f5e:	46d4      	mov	ip, sl
 8003f60:	f85e 4b04 	ldr.w	r4, [lr], #4
 8003f64:	f8dc 3000 	ldr.w	r3, [ip]
 8003f68:	b2a2      	uxth	r2, r4
 8003f6a:	fb08 5502 	mla	r5, r8, r2, r5
 8003f6e:	0c22      	lsrs	r2, r4, #16
 8003f70:	0c2c      	lsrs	r4, r5, #16
 8003f72:	fb08 4202 	mla	r2, r8, r2, r4
 8003f76:	b2ad      	uxth	r5, r5
 8003f78:	1b75      	subs	r5, r6, r5
 8003f7a:	b296      	uxth	r6, r2
 8003f7c:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8003f80:	fa15 f383 	uxtah	r3, r5, r3
 8003f84:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8003f88:	b29b      	uxth	r3, r3
 8003f8a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8003f8e:	45f3      	cmp	fp, lr
 8003f90:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8003f94:	f84c 3b04 	str.w	r3, [ip], #4
 8003f98:	ea4f 4626 	mov.w	r6, r6, asr #16
 8003f9c:	d2e0      	bcs.n	8003f60 <quorem+0x44>
 8003f9e:	9b00      	ldr	r3, [sp, #0]
 8003fa0:	f85a 3003 	ldr.w	r3, [sl, r3]
 8003fa4:	b98b      	cbnz	r3, 8003fca <quorem+0xae>
 8003fa6:	9a01      	ldr	r2, [sp, #4]
 8003fa8:	1f13      	subs	r3, r2, #4
 8003faa:	459a      	cmp	sl, r3
 8003fac:	d20c      	bcs.n	8003fc8 <quorem+0xac>
 8003fae:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8003fb2:	b94b      	cbnz	r3, 8003fc8 <quorem+0xac>
 8003fb4:	f1a2 0308 	sub.w	r3, r2, #8
 8003fb8:	e002      	b.n	8003fc0 <quorem+0xa4>
 8003fba:	681a      	ldr	r2, [r3, #0]
 8003fbc:	3b04      	subs	r3, #4
 8003fbe:	b91a      	cbnz	r2, 8003fc8 <quorem+0xac>
 8003fc0:	459a      	cmp	sl, r3
 8003fc2:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8003fc6:	d3f8      	bcc.n	8003fba <quorem+0x9e>
 8003fc8:	6107      	str	r7, [r0, #16]
 8003fca:	4604      	mov	r4, r0
 8003fcc:	f002 f944 	bl	8006258 <__mcmp>
 8003fd0:	2800      	cmp	r0, #0
 8003fd2:	db2d      	blt.n	8004030 <quorem+0x114>
 8003fd4:	f108 0801 	add.w	r8, r8, #1
 8003fd8:	4655      	mov	r5, sl
 8003fda:	2300      	movs	r3, #0
 8003fdc:	f859 1b04 	ldr.w	r1, [r9], #4
 8003fe0:	6828      	ldr	r0, [r5, #0]
 8003fe2:	b28a      	uxth	r2, r1
 8003fe4:	1a9a      	subs	r2, r3, r2
 8003fe6:	0c0b      	lsrs	r3, r1, #16
 8003fe8:	fa12 f280 	uxtah	r2, r2, r0
 8003fec:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8003ff0:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8003ff4:	b292      	uxth	r2, r2
 8003ff6:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8003ffa:	45cb      	cmp	fp, r9
 8003ffc:	f845 2b04 	str.w	r2, [r5], #4
 8004000:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004004:	d2ea      	bcs.n	8003fdc <quorem+0xc0>
 8004006:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 800400a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 800400e:	b97a      	cbnz	r2, 8004030 <quorem+0x114>
 8004010:	1f1a      	subs	r2, r3, #4
 8004012:	4592      	cmp	sl, r2
 8004014:	d20b      	bcs.n	800402e <quorem+0x112>
 8004016:	f853 2c04 	ldr.w	r2, [r3, #-4]
 800401a:	b942      	cbnz	r2, 800402e <quorem+0x112>
 800401c:	3b08      	subs	r3, #8
 800401e:	e002      	b.n	8004026 <quorem+0x10a>
 8004020:	681a      	ldr	r2, [r3, #0]
 8004022:	3b04      	subs	r3, #4
 8004024:	b91a      	cbnz	r2, 800402e <quorem+0x112>
 8004026:	459a      	cmp	sl, r3
 8004028:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800402c:	d3f8      	bcc.n	8004020 <quorem+0x104>
 800402e:	6127      	str	r7, [r4, #16]
 8004030:	4640      	mov	r0, r8
 8004032:	b003      	add	sp, #12
 8004034:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004038:	2000      	movs	r0, #0
 800403a:	b003      	add	sp, #12
 800403c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004040 <_dtoa_r>:
 8004040:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004044:	ec55 4b10 	vmov	r4, r5, d0
 8004048:	b09b      	sub	sp, #108	; 0x6c
 800404a:	6c06      	ldr	r6, [r0, #64]	; 0x40
 800404c:	9102      	str	r1, [sp, #8]
 800404e:	4681      	mov	r9, r0
 8004050:	9207      	str	r2, [sp, #28]
 8004052:	9305      	str	r3, [sp, #20]
 8004054:	e9cd 4500 	strd	r4, r5, [sp]
 8004058:	b156      	cbz	r6, 8004070 <_dtoa_r+0x30>
 800405a:	6c42      	ldr	r2, [r0, #68]	; 0x44
 800405c:	6072      	str	r2, [r6, #4]
 800405e:	2301      	movs	r3, #1
 8004060:	4093      	lsls	r3, r2
 8004062:	60b3      	str	r3, [r6, #8]
 8004064:	4631      	mov	r1, r6
 8004066:	f001 ff07 	bl	8005e78 <_Bfree>
 800406a:	2300      	movs	r3, #0
 800406c:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004070:	f1b5 0800 	subs.w	r8, r5, #0
 8004074:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004076:	bfb4      	ite	lt
 8004078:	2301      	movlt	r3, #1
 800407a:	2300      	movge	r3, #0
 800407c:	6013      	str	r3, [r2, #0]
 800407e:	4b76      	ldr	r3, [pc, #472]	; (8004258 <_dtoa_r+0x218>)
 8004080:	bfbc      	itt	lt
 8004082:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8004086:	f8cd 8004 	strlt.w	r8, [sp, #4]
 800408a:	ea33 0308 	bics.w	r3, r3, r8
 800408e:	f000 80a6 	beq.w	80041de <_dtoa_r+0x19e>
 8004092:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004096:	2200      	movs	r2, #0
 8004098:	2300      	movs	r3, #0
 800409a:	4630      	mov	r0, r6
 800409c:	4639      	mov	r1, r7
 800409e:	f7fc ffb3 	bl	8001008 <__aeabi_dcmpeq>
 80040a2:	4605      	mov	r5, r0
 80040a4:	b178      	cbz	r0, 80040c6 <_dtoa_r+0x86>
 80040a6:	9a05      	ldr	r2, [sp, #20]
 80040a8:	2301      	movs	r3, #1
 80040aa:	6013      	str	r3, [r2, #0]
 80040ac:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80040ae:	2b00      	cmp	r3, #0
 80040b0:	f000 80c0 	beq.w	8004234 <_dtoa_r+0x1f4>
 80040b4:	4b69      	ldr	r3, [pc, #420]	; (800425c <_dtoa_r+0x21c>)
 80040b6:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80040b8:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80040bc:	6013      	str	r3, [r2, #0]
 80040be:	4658      	mov	r0, fp
 80040c0:	b01b      	add	sp, #108	; 0x6c
 80040c2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80040c6:	aa18      	add	r2, sp, #96	; 0x60
 80040c8:	a919      	add	r1, sp, #100	; 0x64
 80040ca:	ec47 6b10 	vmov	d0, r6, r7
 80040ce:	4648      	mov	r0, r9
 80040d0:	f002 f954 	bl	800637c <__d2b>
 80040d4:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80040d8:	4682      	mov	sl, r0
 80040da:	f040 80a0 	bne.w	800421e <_dtoa_r+0x1de>
 80040de:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80040e2:	442c      	add	r4, r5
 80040e4:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80040e8:	2b20      	cmp	r3, #32
 80040ea:	f340 842c 	ble.w	8004946 <_dtoa_r+0x906>
 80040ee:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80040f2:	fa08 f803 	lsl.w	r8, r8, r3
 80040f6:	9b00      	ldr	r3, [sp, #0]
 80040f8:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80040fc:	fa23 f000 	lsr.w	r0, r3, r0
 8004100:	ea48 0000 	orr.w	r0, r8, r0
 8004104:	f7fc fc9e 	bl	8000a44 <__aeabi_ui2d>
 8004108:	2301      	movs	r3, #1
 800410a:	4606      	mov	r6, r0
 800410c:	3c01      	subs	r4, #1
 800410e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004112:	930f      	str	r3, [sp, #60]	; 0x3c
 8004114:	4630      	mov	r0, r6
 8004116:	4639      	mov	r1, r7
 8004118:	2200      	movs	r2, #0
 800411a:	4b51      	ldr	r3, [pc, #324]	; (8004260 <_dtoa_r+0x220>)
 800411c:	f7fc fb54 	bl	80007c8 <__aeabi_dsub>
 8004120:	a347      	add	r3, pc, #284	; (adr r3, 8004240 <_dtoa_r+0x200>)
 8004122:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004126:	f7fc fd07 	bl	8000b38 <__aeabi_dmul>
 800412a:	a347      	add	r3, pc, #284	; (adr r3, 8004248 <_dtoa_r+0x208>)
 800412c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004130:	f7fc fb4c 	bl	80007cc <__adddf3>
 8004134:	4606      	mov	r6, r0
 8004136:	4620      	mov	r0, r4
 8004138:	460f      	mov	r7, r1
 800413a:	f7fc fc93 	bl	8000a64 <__aeabi_i2d>
 800413e:	a344      	add	r3, pc, #272	; (adr r3, 8004250 <_dtoa_r+0x210>)
 8004140:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004144:	f7fc fcf8 	bl	8000b38 <__aeabi_dmul>
 8004148:	4602      	mov	r2, r0
 800414a:	460b      	mov	r3, r1
 800414c:	4630      	mov	r0, r6
 800414e:	4639      	mov	r1, r7
 8004150:	f7fc fb3c 	bl	80007cc <__adddf3>
 8004154:	4606      	mov	r6, r0
 8004156:	460f      	mov	r7, r1
 8004158:	f7fc ff9e 	bl	8001098 <__aeabi_d2iz>
 800415c:	2200      	movs	r2, #0
 800415e:	9006      	str	r0, [sp, #24]
 8004160:	2300      	movs	r3, #0
 8004162:	4630      	mov	r0, r6
 8004164:	4639      	mov	r1, r7
 8004166:	f7fc ff59 	bl	800101c <__aeabi_dcmplt>
 800416a:	2800      	cmp	r0, #0
 800416c:	f040 8273 	bne.w	8004656 <_dtoa_r+0x616>
 8004170:	9e06      	ldr	r6, [sp, #24]
 8004172:	2e16      	cmp	r6, #22
 8004174:	f200 825d 	bhi.w	8004632 <_dtoa_r+0x5f2>
 8004178:	4b3a      	ldr	r3, [pc, #232]	; (8004264 <_dtoa_r+0x224>)
 800417a:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 800417e:	e9d3 0100 	ldrd	r0, r1, [r3]
 8004182:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004186:	f7fc ff67 	bl	8001058 <__aeabi_dcmpgt>
 800418a:	2800      	cmp	r0, #0
 800418c:	f000 83d7 	beq.w	800493e <_dtoa_r+0x8fe>
 8004190:	1e73      	subs	r3, r6, #1
 8004192:	9306      	str	r3, [sp, #24]
 8004194:	2300      	movs	r3, #0
 8004196:	930d      	str	r3, [sp, #52]	; 0x34
 8004198:	1b2c      	subs	r4, r5, r4
 800419a:	f1b4 0801 	subs.w	r8, r4, #1
 800419e:	f100 8254 	bmi.w	800464a <_dtoa_r+0x60a>
 80041a2:	2300      	movs	r3, #0
 80041a4:	9308      	str	r3, [sp, #32]
 80041a6:	9b06      	ldr	r3, [sp, #24]
 80041a8:	2b00      	cmp	r3, #0
 80041aa:	f2c0 8245 	blt.w	8004638 <_dtoa_r+0x5f8>
 80041ae:	4498      	add	r8, r3
 80041b0:	930c      	str	r3, [sp, #48]	; 0x30
 80041b2:	2300      	movs	r3, #0
 80041b4:	930b      	str	r3, [sp, #44]	; 0x2c
 80041b6:	9b02      	ldr	r3, [sp, #8]
 80041b8:	2b09      	cmp	r3, #9
 80041ba:	d85b      	bhi.n	8004274 <_dtoa_r+0x234>
 80041bc:	2b05      	cmp	r3, #5
 80041be:	f340 83c0 	ble.w	8004942 <_dtoa_r+0x902>
 80041c2:	3b04      	subs	r3, #4
 80041c4:	9302      	str	r3, [sp, #8]
 80041c6:	2500      	movs	r5, #0
 80041c8:	9b02      	ldr	r3, [sp, #8]
 80041ca:	3b02      	subs	r3, #2
 80041cc:	2b03      	cmp	r3, #3
 80041ce:	f200 8498 	bhi.w	8004b02 <_dtoa_r+0xac2>
 80041d2:	e8df f013 	tbh	[pc, r3, lsl #1]
 80041d6:	03df      	.short	0x03df
 80041d8:	03e803bf 	.word	0x03e803bf
 80041dc:	04f5      	.short	0x04f5
 80041de:	9a05      	ldr	r2, [sp, #20]
 80041e0:	f242 730f 	movw	r3, #9999	; 0x270f
 80041e4:	6013      	str	r3, [r2, #0]
 80041e6:	9b00      	ldr	r3, [sp, #0]
 80041e8:	b983      	cbnz	r3, 800420c <_dtoa_r+0x1cc>
 80041ea:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80041ee:	b96b      	cbnz	r3, 800420c <_dtoa_r+0x1cc>
 80041f0:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80041f2:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004268 <_dtoa_r+0x228>
 80041f6:	2b00      	cmp	r3, #0
 80041f8:	f43f af61 	beq.w	80040be <_dtoa_r+0x7e>
 80041fc:	f10b 0308 	add.w	r3, fp, #8
 8004200:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004202:	4658      	mov	r0, fp
 8004204:	6013      	str	r3, [r2, #0]
 8004206:	b01b      	add	sp, #108	; 0x6c
 8004208:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800420c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800420e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 800426c <_dtoa_r+0x22c>
 8004212:	2b00      	cmp	r3, #0
 8004214:	f43f af53 	beq.w	80040be <_dtoa_r+0x7e>
 8004218:	f10b 0303 	add.w	r3, fp, #3
 800421c:	e7f0      	b.n	8004200 <_dtoa_r+0x1c0>
 800421e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004222:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004226:	950f      	str	r5, [sp, #60]	; 0x3c
 8004228:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 800422c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004230:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004232:	e76f      	b.n	8004114 <_dtoa_r+0xd4>
 8004234:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004270 <_dtoa_r+0x230>
 8004238:	4658      	mov	r0, fp
 800423a:	b01b      	add	sp, #108	; 0x6c
 800423c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004240:	636f4361 	.word	0x636f4361
 8004244:	3fd287a7 	.word	0x3fd287a7
 8004248:	8b60c8b3 	.word	0x8b60c8b3
 800424c:	3fc68a28 	.word	0x3fc68a28
 8004250:	509f79fb 	.word	0x509f79fb
 8004254:	3fd34413 	.word	0x3fd34413
 8004258:	7ff00000 	.word	0x7ff00000
 800425c:	08007201 	.word	0x08007201
 8004260:	3ff80000 	.word	0x3ff80000
 8004264:	08007260 	.word	0x08007260
 8004268:	08007224 	.word	0x08007224
 800426c:	08007230 	.word	0x08007230
 8004270:	08007200 	.word	0x08007200
 8004274:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004278:	2501      	movs	r5, #1
 800427a:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 800427e:	2300      	movs	r3, #0
 8004280:	9302      	str	r3, [sp, #8]
 8004282:	9307      	str	r3, [sp, #28]
 8004284:	2100      	movs	r1, #0
 8004286:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800428a:	940e      	str	r4, [sp, #56]	; 0x38
 800428c:	4648      	mov	r0, r9
 800428e:	f001 fdcd 	bl	8005e2c <_Balloc>
 8004292:	2c0e      	cmp	r4, #14
 8004294:	4683      	mov	fp, r0
 8004296:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800429a:	f200 80fb 	bhi.w	8004494 <_dtoa_r+0x454>
 800429e:	2d00      	cmp	r5, #0
 80042a0:	f000 80f8 	beq.w	8004494 <_dtoa_r+0x454>
 80042a4:	ed9d 7b00 	vldr	d7, [sp]
 80042a8:	9906      	ldr	r1, [sp, #24]
 80042aa:	2900      	cmp	r1, #0
 80042ac:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80042b0:	f340 83e5 	ble.w	8004a7e <_dtoa_r+0xa3e>
 80042b4:	4b9d      	ldr	r3, [pc, #628]	; (800452c <_dtoa_r+0x4ec>)
 80042b6:	f001 020f 	and.w	r2, r1, #15
 80042ba:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80042be:	ed93 7b00 	vldr	d7, [r3]
 80042c2:	110c      	asrs	r4, r1, #4
 80042c4:	06e2      	lsls	r2, r4, #27
 80042c6:	ed8d 7b00 	vstr	d7, [sp]
 80042ca:	f140 849e 	bpl.w	8004c0a <_dtoa_r+0xbca>
 80042ce:	4b98      	ldr	r3, [pc, #608]	; (8004530 <_dtoa_r+0x4f0>)
 80042d0:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80042d4:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80042d8:	f7fc fd58 	bl	8000d8c <__aeabi_ddiv>
 80042dc:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80042e0:	f004 040f 	and.w	r4, r4, #15
 80042e4:	2603      	movs	r6, #3
 80042e6:	b17c      	cbz	r4, 8004308 <_dtoa_r+0x2c8>
 80042e8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80042ec:	4d90      	ldr	r5, [pc, #576]	; (8004530 <_dtoa_r+0x4f0>)
 80042ee:	07e3      	lsls	r3, r4, #31
 80042f0:	d504      	bpl.n	80042fc <_dtoa_r+0x2bc>
 80042f2:	e9d5 2300 	ldrd	r2, r3, [r5]
 80042f6:	f7fc fc1f 	bl	8000b38 <__aeabi_dmul>
 80042fa:	3601      	adds	r6, #1
 80042fc:	1064      	asrs	r4, r4, #1
 80042fe:	f105 0508 	add.w	r5, r5, #8
 8004302:	d1f4      	bne.n	80042ee <_dtoa_r+0x2ae>
 8004304:	e9cd 0100 	strd	r0, r1, [sp]
 8004308:	e9dd 2300 	ldrd	r2, r3, [sp]
 800430c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004310:	f7fc fd3c 	bl	8000d8c <__aeabi_ddiv>
 8004314:	e9cd 0100 	strd	r0, r1, [sp]
 8004318:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800431a:	b143      	cbz	r3, 800432e <_dtoa_r+0x2ee>
 800431c:	2200      	movs	r2, #0
 800431e:	4b85      	ldr	r3, [pc, #532]	; (8004534 <_dtoa_r+0x4f4>)
 8004320:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004324:	f7fc fe7a 	bl	800101c <__aeabi_dcmplt>
 8004328:	2800      	cmp	r0, #0
 800432a:	f040 84ff 	bne.w	8004d2c <_dtoa_r+0xcec>
 800432e:	4630      	mov	r0, r6
 8004330:	f7fc fb98 	bl	8000a64 <__aeabi_i2d>
 8004334:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004338:	f7fc fbfe 	bl	8000b38 <__aeabi_dmul>
 800433c:	4b7e      	ldr	r3, [pc, #504]	; (8004538 <_dtoa_r+0x4f8>)
 800433e:	2200      	movs	r2, #0
 8004340:	f7fc fa44 	bl	80007cc <__adddf3>
 8004344:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004346:	4606      	mov	r6, r0
 8004348:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800434c:	2b00      	cmp	r3, #0
 800434e:	f000 841c 	beq.w	8004b8a <_dtoa_r+0xb4a>
 8004352:	9b06      	ldr	r3, [sp, #24]
 8004354:	9316      	str	r3, [sp, #88]	; 0x58
 8004356:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004358:	9312      	str	r3, [sp, #72]	; 0x48
 800435a:	e9dd 0100 	ldrd	r0, r1, [sp]
 800435e:	f7fc fe9b 	bl	8001098 <__aeabi_d2iz>
 8004362:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004364:	4b71      	ldr	r3, [pc, #452]	; (800452c <_dtoa_r+0x4ec>)
 8004366:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800436a:	ed13 7b02 	vldr	d7, [r3, #-8]
 800436e:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004372:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004376:	f7fc fb75 	bl	8000a64 <__aeabi_i2d>
 800437a:	460b      	mov	r3, r1
 800437c:	4602      	mov	r2, r0
 800437e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004382:	e9cd 6700 	strd	r6, r7, [sp]
 8004386:	f7fc fa1f 	bl	80007c8 <__aeabi_dsub>
 800438a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800438c:	b2ed      	uxtb	r5, r5
 800438e:	4606      	mov	r6, r0
 8004390:	460f      	mov	r7, r1
 8004392:	f10b 0401 	add.w	r4, fp, #1
 8004396:	2b00      	cmp	r3, #0
 8004398:	f000 8458 	beq.w	8004c4c <_dtoa_r+0xc0c>
 800439c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80043a0:	2000      	movs	r0, #0
 80043a2:	4966      	ldr	r1, [pc, #408]	; (800453c <_dtoa_r+0x4fc>)
 80043a4:	f7fc fcf2 	bl	8000d8c <__aeabi_ddiv>
 80043a8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80043ac:	f7fc fa0c 	bl	80007c8 <__aeabi_dsub>
 80043b0:	f88b 5000 	strb.w	r5, [fp]
 80043b4:	4632      	mov	r2, r6
 80043b6:	463b      	mov	r3, r7
 80043b8:	e9cd 0100 	strd	r0, r1, [sp]
 80043bc:	f7fc fe4c 	bl	8001058 <__aeabi_dcmpgt>
 80043c0:	2800      	cmp	r0, #0
 80043c2:	f040 8502 	bne.w	8004dca <_dtoa_r+0xd8a>
 80043c6:	4632      	mov	r2, r6
 80043c8:	463b      	mov	r3, r7
 80043ca:	2000      	movs	r0, #0
 80043cc:	4959      	ldr	r1, [pc, #356]	; (8004534 <_dtoa_r+0x4f4>)
 80043ce:	f7fc f9fb 	bl	80007c8 <__aeabi_dsub>
 80043d2:	4602      	mov	r2, r0
 80043d4:	460b      	mov	r3, r1
 80043d6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80043da:	f7fc fe3d 	bl	8001058 <__aeabi_dcmpgt>
 80043de:	2800      	cmp	r0, #0
 80043e0:	f040 84fb 	bne.w	8004dda <_dtoa_r+0xd9a>
 80043e4:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80043e6:	2a01      	cmp	r2, #1
 80043e8:	d050      	beq.n	800448c <_dtoa_r+0x44c>
 80043ea:	445a      	add	r2, fp
 80043ec:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 80043f0:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 80043f4:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 80043f8:	4692      	mov	sl, r2
 80043fa:	46cb      	mov	fp, r9
 80043fc:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004400:	e00c      	b.n	800441c <_dtoa_r+0x3dc>
 8004402:	2000      	movs	r0, #0
 8004404:	494b      	ldr	r1, [pc, #300]	; (8004534 <_dtoa_r+0x4f4>)
 8004406:	f7fc f9df 	bl	80007c8 <__aeabi_dsub>
 800440a:	4642      	mov	r2, r8
 800440c:	464b      	mov	r3, r9
 800440e:	f7fc fe05 	bl	800101c <__aeabi_dcmplt>
 8004412:	2800      	cmp	r0, #0
 8004414:	f040 84dc 	bne.w	8004dd0 <_dtoa_r+0xd90>
 8004418:	4554      	cmp	r4, sl
 800441a:	d030      	beq.n	800447e <_dtoa_r+0x43e>
 800441c:	4640      	mov	r0, r8
 800441e:	4649      	mov	r1, r9
 8004420:	2200      	movs	r2, #0
 8004422:	4b47      	ldr	r3, [pc, #284]	; (8004540 <_dtoa_r+0x500>)
 8004424:	f7fc fb88 	bl	8000b38 <__aeabi_dmul>
 8004428:	2200      	movs	r2, #0
 800442a:	4b45      	ldr	r3, [pc, #276]	; (8004540 <_dtoa_r+0x500>)
 800442c:	4680      	mov	r8, r0
 800442e:	4689      	mov	r9, r1
 8004430:	4630      	mov	r0, r6
 8004432:	4639      	mov	r1, r7
 8004434:	f7fc fb80 	bl	8000b38 <__aeabi_dmul>
 8004438:	460f      	mov	r7, r1
 800443a:	4606      	mov	r6, r0
 800443c:	f7fc fe2c 	bl	8001098 <__aeabi_d2iz>
 8004440:	4605      	mov	r5, r0
 8004442:	f7fc fb0f 	bl	8000a64 <__aeabi_i2d>
 8004446:	4602      	mov	r2, r0
 8004448:	460b      	mov	r3, r1
 800444a:	4630      	mov	r0, r6
 800444c:	4639      	mov	r1, r7
 800444e:	f7fc f9bb 	bl	80007c8 <__aeabi_dsub>
 8004452:	3530      	adds	r5, #48	; 0x30
 8004454:	b2ed      	uxtb	r5, r5
 8004456:	4642      	mov	r2, r8
 8004458:	464b      	mov	r3, r9
 800445a:	f804 5b01 	strb.w	r5, [r4], #1
 800445e:	4606      	mov	r6, r0
 8004460:	460f      	mov	r7, r1
 8004462:	f7fc fddb 	bl	800101c <__aeabi_dcmplt>
 8004466:	4632      	mov	r2, r6
 8004468:	463b      	mov	r3, r7
 800446a:	2800      	cmp	r0, #0
 800446c:	d0c9      	beq.n	8004402 <_dtoa_r+0x3c2>
 800446e:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004470:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004474:	9306      	str	r3, [sp, #24]
 8004476:	46d9      	mov	r9, fp
 8004478:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800447c:	e236      	b.n	80048ec <_dtoa_r+0x8ac>
 800447e:	46d9      	mov	r9, fp
 8004480:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004484:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004488:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800448c:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004490:	e9cd 3400 	strd	r3, r4, [sp]
 8004494:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004496:	2b00      	cmp	r3, #0
 8004498:	f2c0 80ae 	blt.w	80045f8 <_dtoa_r+0x5b8>
 800449c:	9a06      	ldr	r2, [sp, #24]
 800449e:	2a0e      	cmp	r2, #14
 80044a0:	f300 80aa 	bgt.w	80045f8 <_dtoa_r+0x5b8>
 80044a4:	4b21      	ldr	r3, [pc, #132]	; (800452c <_dtoa_r+0x4ec>)
 80044a6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80044aa:	ed93 7b00 	vldr	d7, [r3]
 80044ae:	9b07      	ldr	r3, [sp, #28]
 80044b0:	2b00      	cmp	r3, #0
 80044b2:	ed8d 7b02 	vstr	d7, [sp, #8]
 80044b6:	f2c0 82be 	blt.w	8004a36 <_dtoa_r+0x9f6>
 80044ba:	e9dd 6700 	ldrd	r6, r7, [sp]
 80044be:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80044c2:	4630      	mov	r0, r6
 80044c4:	4639      	mov	r1, r7
 80044c6:	f7fc fc61 	bl	8000d8c <__aeabi_ddiv>
 80044ca:	f7fc fde5 	bl	8001098 <__aeabi_d2iz>
 80044ce:	4605      	mov	r5, r0
 80044d0:	f7fc fac8 	bl	8000a64 <__aeabi_i2d>
 80044d4:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80044d8:	f7fc fb2e 	bl	8000b38 <__aeabi_dmul>
 80044dc:	460b      	mov	r3, r1
 80044de:	4602      	mov	r2, r0
 80044e0:	4639      	mov	r1, r7
 80044e2:	4630      	mov	r0, r6
 80044e4:	f7fc f970 	bl	80007c8 <__aeabi_dsub>
 80044e8:	f105 0330 	add.w	r3, r5, #48	; 0x30
 80044ec:	f88b 3000 	strb.w	r3, [fp]
 80044f0:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80044f2:	2b01      	cmp	r3, #1
 80044f4:	4606      	mov	r6, r0
 80044f6:	460f      	mov	r7, r1
 80044f8:	f10b 0401 	add.w	r4, fp, #1
 80044fc:	d053      	beq.n	80045a6 <_dtoa_r+0x566>
 80044fe:	2200      	movs	r2, #0
 8004500:	4b0f      	ldr	r3, [pc, #60]	; (8004540 <_dtoa_r+0x500>)
 8004502:	f7fc fb19 	bl	8000b38 <__aeabi_dmul>
 8004506:	2200      	movs	r2, #0
 8004508:	2300      	movs	r3, #0
 800450a:	4606      	mov	r6, r0
 800450c:	460f      	mov	r7, r1
 800450e:	f7fc fd7b 	bl	8001008 <__aeabi_dcmpeq>
 8004512:	2800      	cmp	r0, #0
 8004514:	f040 81ea 	bne.w	80048ec <_dtoa_r+0x8ac>
 8004518:	f8cd a000 	str.w	sl, [sp]
 800451c:	f8cd 901c 	str.w	r9, [sp, #28]
 8004520:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004524:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004528:	e017      	b.n	800455a <_dtoa_r+0x51a>
 800452a:	bf00      	nop
 800452c:	08007260 	.word	0x08007260
 8004530:	08007238 	.word	0x08007238
 8004534:	3ff00000 	.word	0x3ff00000
 8004538:	401c0000 	.word	0x401c0000
 800453c:	3fe00000 	.word	0x3fe00000
 8004540:	40240000 	.word	0x40240000
 8004544:	f7fc faf8 	bl	8000b38 <__aeabi_dmul>
 8004548:	2200      	movs	r2, #0
 800454a:	2300      	movs	r3, #0
 800454c:	4606      	mov	r6, r0
 800454e:	460f      	mov	r7, r1
 8004550:	f7fc fd5a 	bl	8001008 <__aeabi_dcmpeq>
 8004554:	2800      	cmp	r0, #0
 8004556:	f040 833d 	bne.w	8004bd4 <_dtoa_r+0xb94>
 800455a:	464a      	mov	r2, r9
 800455c:	4653      	mov	r3, sl
 800455e:	4630      	mov	r0, r6
 8004560:	4639      	mov	r1, r7
 8004562:	f7fc fc13 	bl	8000d8c <__aeabi_ddiv>
 8004566:	f7fc fd97 	bl	8001098 <__aeabi_d2iz>
 800456a:	4605      	mov	r5, r0
 800456c:	f7fc fa7a 	bl	8000a64 <__aeabi_i2d>
 8004570:	464a      	mov	r2, r9
 8004572:	4653      	mov	r3, sl
 8004574:	f7fc fae0 	bl	8000b38 <__aeabi_dmul>
 8004578:	4602      	mov	r2, r0
 800457a:	460b      	mov	r3, r1
 800457c:	4630      	mov	r0, r6
 800457e:	4639      	mov	r1, r7
 8004580:	f7fc f922 	bl	80007c8 <__aeabi_dsub>
 8004584:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004588:	f804 cb01 	strb.w	ip, [r4], #1
 800458c:	eba4 0c0b 	sub.w	ip, r4, fp
 8004590:	45e0      	cmp	r8, ip
 8004592:	4606      	mov	r6, r0
 8004594:	460f      	mov	r7, r1
 8004596:	f04f 0200 	mov.w	r2, #0
 800459a:	4bc1      	ldr	r3, [pc, #772]	; (80048a0 <_dtoa_r+0x860>)
 800459c:	d1d2      	bne.n	8004544 <_dtoa_r+0x504>
 800459e:	f8dd a000 	ldr.w	sl, [sp]
 80045a2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80045a6:	4632      	mov	r2, r6
 80045a8:	463b      	mov	r3, r7
 80045aa:	4630      	mov	r0, r6
 80045ac:	4639      	mov	r1, r7
 80045ae:	f7fc f90d 	bl	80007cc <__adddf3>
 80045b2:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80045b6:	4606      	mov	r6, r0
 80045b8:	460f      	mov	r7, r1
 80045ba:	f7fc fd4d 	bl	8001058 <__aeabi_dcmpgt>
 80045be:	b958      	cbnz	r0, 80045d8 <_dtoa_r+0x598>
 80045c0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80045c4:	4630      	mov	r0, r6
 80045c6:	4639      	mov	r1, r7
 80045c8:	f7fc fd1e 	bl	8001008 <__aeabi_dcmpeq>
 80045cc:	2800      	cmp	r0, #0
 80045ce:	f000 818d 	beq.w	80048ec <_dtoa_r+0x8ac>
 80045d2:	07e9      	lsls	r1, r5, #31
 80045d4:	f140 818a 	bpl.w	80048ec <_dtoa_r+0x8ac>
 80045d8:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80045dc:	e005      	b.n	80045ea <_dtoa_r+0x5aa>
 80045de:	459b      	cmp	fp, r3
 80045e0:	f000 8373 	beq.w	8004cca <_dtoa_r+0xc8a>
 80045e4:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 80045e8:	461c      	mov	r4, r3
 80045ea:	2d39      	cmp	r5, #57	; 0x39
 80045ec:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80045f0:	d0f5      	beq.n	80045de <_dtoa_r+0x59e>
 80045f2:	3501      	adds	r5, #1
 80045f4:	701d      	strb	r5, [r3, #0]
 80045f6:	e179      	b.n	80048ec <_dtoa_r+0x8ac>
 80045f8:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80045fa:	2a00      	cmp	r2, #0
 80045fc:	d03b      	beq.n	8004676 <_dtoa_r+0x636>
 80045fe:	9a02      	ldr	r2, [sp, #8]
 8004600:	2a01      	cmp	r2, #1
 8004602:	f340 820b 	ble.w	8004a1c <_dtoa_r+0x9dc>
 8004606:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004608:	1e5f      	subs	r7, r3, #1
 800460a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800460c:	42bb      	cmp	r3, r7
 800460e:	f2c0 82e6 	blt.w	8004bde <_dtoa_r+0xb9e>
 8004612:	1bdf      	subs	r7, r3, r7
 8004614:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004616:	2b00      	cmp	r3, #0
 8004618:	f2c0 830b 	blt.w	8004c32 <_dtoa_r+0xbf2>
 800461c:	9a08      	ldr	r2, [sp, #32]
 800461e:	4614      	mov	r4, r2
 8004620:	441a      	add	r2, r3
 8004622:	4498      	add	r8, r3
 8004624:	9208      	str	r2, [sp, #32]
 8004626:	2101      	movs	r1, #1
 8004628:	4648      	mov	r0, r9
 800462a:	f001 fcbf 	bl	8005fac <__i2b>
 800462e:	4605      	mov	r5, r0
 8004630:	e024      	b.n	800467c <_dtoa_r+0x63c>
 8004632:	2301      	movs	r3, #1
 8004634:	930d      	str	r3, [sp, #52]	; 0x34
 8004636:	e5af      	b.n	8004198 <_dtoa_r+0x158>
 8004638:	9a08      	ldr	r2, [sp, #32]
 800463a:	9b06      	ldr	r3, [sp, #24]
 800463c:	1ad2      	subs	r2, r2, r3
 800463e:	425b      	negs	r3, r3
 8004640:	930b      	str	r3, [sp, #44]	; 0x2c
 8004642:	2300      	movs	r3, #0
 8004644:	9208      	str	r2, [sp, #32]
 8004646:	930c      	str	r3, [sp, #48]	; 0x30
 8004648:	e5b5      	b.n	80041b6 <_dtoa_r+0x176>
 800464a:	f1c4 0301 	rsb	r3, r4, #1
 800464e:	9308      	str	r3, [sp, #32]
 8004650:	f04f 0800 	mov.w	r8, #0
 8004654:	e5a7      	b.n	80041a6 <_dtoa_r+0x166>
 8004656:	f8dd 8018 	ldr.w	r8, [sp, #24]
 800465a:	4640      	mov	r0, r8
 800465c:	f7fc fa02 	bl	8000a64 <__aeabi_i2d>
 8004660:	4632      	mov	r2, r6
 8004662:	463b      	mov	r3, r7
 8004664:	f7fc fcd0 	bl	8001008 <__aeabi_dcmpeq>
 8004668:	2800      	cmp	r0, #0
 800466a:	f47f ad81 	bne.w	8004170 <_dtoa_r+0x130>
 800466e:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004672:	9306      	str	r3, [sp, #24]
 8004674:	e57c      	b.n	8004170 <_dtoa_r+0x130>
 8004676:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004678:	9c08      	ldr	r4, [sp, #32]
 800467a:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 800467c:	2c00      	cmp	r4, #0
 800467e:	dd0c      	ble.n	800469a <_dtoa_r+0x65a>
 8004680:	f1b8 0f00 	cmp.w	r8, #0
 8004684:	dd09      	ble.n	800469a <_dtoa_r+0x65a>
 8004686:	4544      	cmp	r4, r8
 8004688:	9a08      	ldr	r2, [sp, #32]
 800468a:	4623      	mov	r3, r4
 800468c:	bfa8      	it	ge
 800468e:	4643      	movge	r3, r8
 8004690:	1ad2      	subs	r2, r2, r3
 8004692:	9208      	str	r2, [sp, #32]
 8004694:	1ae4      	subs	r4, r4, r3
 8004696:	eba8 0803 	sub.w	r8, r8, r3
 800469a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800469c:	b16b      	cbz	r3, 80046ba <_dtoa_r+0x67a>
 800469e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80046a0:	2a00      	cmp	r2, #0
 80046a2:	f000 8290 	beq.w	8004bc6 <_dtoa_r+0xb86>
 80046a6:	1bde      	subs	r6, r3, r7
 80046a8:	2f00      	cmp	r7, #0
 80046aa:	f040 819b 	bne.w	80049e4 <_dtoa_r+0x9a4>
 80046ae:	4651      	mov	r1, sl
 80046b0:	4632      	mov	r2, r6
 80046b2:	4648      	mov	r0, r9
 80046b4:	f001 fd2a 	bl	800610c <__pow5mult>
 80046b8:	4682      	mov	sl, r0
 80046ba:	2101      	movs	r1, #1
 80046bc:	4648      	mov	r0, r9
 80046be:	f001 fc75 	bl	8005fac <__i2b>
 80046c2:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80046c4:	4606      	mov	r6, r0
 80046c6:	2a00      	cmp	r2, #0
 80046c8:	f040 8125 	bne.w	8004916 <_dtoa_r+0x8d6>
 80046cc:	9b02      	ldr	r3, [sp, #8]
 80046ce:	2b01      	cmp	r3, #1
 80046d0:	f340 816c 	ble.w	80049ac <_dtoa_r+0x96c>
 80046d4:	2001      	movs	r0, #1
 80046d6:	4440      	add	r0, r8
 80046d8:	f010 001f 	ands.w	r0, r0, #31
 80046dc:	f000 8119 	beq.w	8004912 <_dtoa_r+0x8d2>
 80046e0:	f1c0 0320 	rsb	r3, r0, #32
 80046e4:	2b04      	cmp	r3, #4
 80046e6:	f340 83ac 	ble.w	8004e42 <_dtoa_r+0xe02>
 80046ea:	f1c0 001c 	rsb	r0, r0, #28
 80046ee:	9b08      	ldr	r3, [sp, #32]
 80046f0:	4403      	add	r3, r0
 80046f2:	9308      	str	r3, [sp, #32]
 80046f4:	4404      	add	r4, r0
 80046f6:	4480      	add	r8, r0
 80046f8:	9b08      	ldr	r3, [sp, #32]
 80046fa:	2b00      	cmp	r3, #0
 80046fc:	dd05      	ble.n	800470a <_dtoa_r+0x6ca>
 80046fe:	4651      	mov	r1, sl
 8004700:	461a      	mov	r2, r3
 8004702:	4648      	mov	r0, r9
 8004704:	f001 fd52 	bl	80061ac <__lshift>
 8004708:	4682      	mov	sl, r0
 800470a:	f1b8 0f00 	cmp.w	r8, #0
 800470e:	dd05      	ble.n	800471c <_dtoa_r+0x6dc>
 8004710:	4631      	mov	r1, r6
 8004712:	4642      	mov	r2, r8
 8004714:	4648      	mov	r0, r9
 8004716:	f001 fd49 	bl	80061ac <__lshift>
 800471a:	4606      	mov	r6, r0
 800471c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800471e:	2b00      	cmp	r3, #0
 8004720:	d177      	bne.n	8004812 <_dtoa_r+0x7d2>
 8004722:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004724:	2b00      	cmp	r3, #0
 8004726:	f340 8209 	ble.w	8004b3c <_dtoa_r+0xafc>
 800472a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800472c:	2b00      	cmp	r3, #0
 800472e:	f000 8089 	beq.w	8004844 <_dtoa_r+0x804>
 8004732:	2c00      	cmp	r4, #0
 8004734:	f300 816b 	bgt.w	8004a0e <_dtoa_r+0x9ce>
 8004738:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800473a:	2b00      	cmp	r3, #0
 800473c:	f040 81cd 	bne.w	8004ada <_dtoa_r+0xa9a>
 8004740:	46a8      	mov	r8, r5
 8004742:	9a00      	ldr	r2, [sp, #0]
 8004744:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004748:	f002 0201 	and.w	r2, r2, #1
 800474c:	920a      	str	r2, [sp, #40]	; 0x28
 800474e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004750:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004754:	441a      	add	r2, r3
 8004756:	465f      	mov	r7, fp
 8004758:	9209      	str	r2, [sp, #36]	; 0x24
 800475a:	46b3      	mov	fp, r6
 800475c:	4659      	mov	r1, fp
 800475e:	4650      	mov	r0, sl
 8004760:	f7ff fbdc 	bl	8003f1c <quorem>
 8004764:	4629      	mov	r1, r5
 8004766:	4604      	mov	r4, r0
 8004768:	4650      	mov	r0, sl
 800476a:	f001 fd75 	bl	8006258 <__mcmp>
 800476e:	4659      	mov	r1, fp
 8004770:	4606      	mov	r6, r0
 8004772:	4642      	mov	r2, r8
 8004774:	4648      	mov	r0, r9
 8004776:	f001 fd8b 	bl	8006290 <__mdiff>
 800477a:	f104 0330 	add.w	r3, r4, #48	; 0x30
 800477e:	9300      	str	r3, [sp, #0]
 8004780:	68c3      	ldr	r3, [r0, #12]
 8004782:	4601      	mov	r1, r0
 8004784:	2b00      	cmp	r3, #0
 8004786:	f040 81d4 	bne.w	8004b32 <_dtoa_r+0xaf2>
 800478a:	9008      	str	r0, [sp, #32]
 800478c:	4650      	mov	r0, sl
 800478e:	f001 fd63 	bl	8006258 <__mcmp>
 8004792:	9a08      	ldr	r2, [sp, #32]
 8004794:	9007      	str	r0, [sp, #28]
 8004796:	4611      	mov	r1, r2
 8004798:	4648      	mov	r0, r9
 800479a:	f001 fb6d 	bl	8005e78 <_Bfree>
 800479e:	9b07      	ldr	r3, [sp, #28]
 80047a0:	b933      	cbnz	r3, 80047b0 <_dtoa_r+0x770>
 80047a2:	9a02      	ldr	r2, [sp, #8]
 80047a4:	b922      	cbnz	r2, 80047b0 <_dtoa_r+0x770>
 80047a6:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80047a8:	2b00      	cmp	r3, #0
 80047aa:	f000 8319 	beq.w	8004de0 <_dtoa_r+0xda0>
 80047ae:	9b02      	ldr	r3, [sp, #8]
 80047b0:	2e00      	cmp	r6, #0
 80047b2:	f2c0 821c 	blt.w	8004bee <_dtoa_r+0xbae>
 80047b6:	d105      	bne.n	80047c4 <_dtoa_r+0x784>
 80047b8:	9a02      	ldr	r2, [sp, #8]
 80047ba:	b91a      	cbnz	r2, 80047c4 <_dtoa_r+0x784>
 80047bc:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80047be:	2a00      	cmp	r2, #0
 80047c0:	f000 8215 	beq.w	8004bee <_dtoa_r+0xbae>
 80047c4:	2b00      	cmp	r3, #0
 80047c6:	f107 0401 	add.w	r4, r7, #1
 80047ca:	f300 8225 	bgt.w	8004c18 <_dtoa_r+0xbd8>
 80047ce:	9b00      	ldr	r3, [sp, #0]
 80047d0:	703b      	strb	r3, [r7, #0]
 80047d2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80047d4:	42bb      	cmp	r3, r7
 80047d6:	f000 8230 	beq.w	8004c3a <_dtoa_r+0xbfa>
 80047da:	4651      	mov	r1, sl
 80047dc:	2300      	movs	r3, #0
 80047de:	220a      	movs	r2, #10
 80047e0:	4648      	mov	r0, r9
 80047e2:	f001 fb53 	bl	8005e8c <__multadd>
 80047e6:	4545      	cmp	r5, r8
 80047e8:	4682      	mov	sl, r0
 80047ea:	4629      	mov	r1, r5
 80047ec:	f04f 0300 	mov.w	r3, #0
 80047f0:	f04f 020a 	mov.w	r2, #10
 80047f4:	4648      	mov	r0, r9
 80047f6:	f000 8196 	beq.w	8004b26 <_dtoa_r+0xae6>
 80047fa:	f001 fb47 	bl	8005e8c <__multadd>
 80047fe:	4641      	mov	r1, r8
 8004800:	4605      	mov	r5, r0
 8004802:	2300      	movs	r3, #0
 8004804:	220a      	movs	r2, #10
 8004806:	4648      	mov	r0, r9
 8004808:	f001 fb40 	bl	8005e8c <__multadd>
 800480c:	4627      	mov	r7, r4
 800480e:	4680      	mov	r8, r0
 8004810:	e7a4      	b.n	800475c <_dtoa_r+0x71c>
 8004812:	4631      	mov	r1, r6
 8004814:	4650      	mov	r0, sl
 8004816:	f001 fd1f 	bl	8006258 <__mcmp>
 800481a:	2800      	cmp	r0, #0
 800481c:	da81      	bge.n	8004722 <_dtoa_r+0x6e2>
 800481e:	9f06      	ldr	r7, [sp, #24]
 8004820:	4651      	mov	r1, sl
 8004822:	2300      	movs	r3, #0
 8004824:	220a      	movs	r2, #10
 8004826:	4648      	mov	r0, r9
 8004828:	3f01      	subs	r7, #1
 800482a:	9706      	str	r7, [sp, #24]
 800482c:	f001 fb2e 	bl	8005e8c <__multadd>
 8004830:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004832:	4682      	mov	sl, r0
 8004834:	2b00      	cmp	r3, #0
 8004836:	f040 82eb 	bne.w	8004e10 <_dtoa_r+0xdd0>
 800483a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800483c:	2b00      	cmp	r3, #0
 800483e:	f340 82f3 	ble.w	8004e28 <_dtoa_r+0xde8>
 8004842:	9309      	str	r3, [sp, #36]	; 0x24
 8004844:	465c      	mov	r4, fp
 8004846:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800484a:	e002      	b.n	8004852 <_dtoa_r+0x812>
 800484c:	f001 fb1e 	bl	8005e8c <__multadd>
 8004850:	4682      	mov	sl, r0
 8004852:	4631      	mov	r1, r6
 8004854:	4650      	mov	r0, sl
 8004856:	f7ff fb61 	bl	8003f1c <quorem>
 800485a:	f100 0730 	add.w	r7, r0, #48	; 0x30
 800485e:	f804 7b01 	strb.w	r7, [r4], #1
 8004862:	eba4 030b 	sub.w	r3, r4, fp
 8004866:	4598      	cmp	r8, r3
 8004868:	f04f 020a 	mov.w	r2, #10
 800486c:	f04f 0300 	mov.w	r3, #0
 8004870:	4651      	mov	r1, sl
 8004872:	4648      	mov	r0, r9
 8004874:	dcea      	bgt.n	800484c <_dtoa_r+0x80c>
 8004876:	2300      	movs	r3, #0
 8004878:	9700      	str	r7, [sp, #0]
 800487a:	9302      	str	r3, [sp, #8]
 800487c:	4651      	mov	r1, sl
 800487e:	2201      	movs	r2, #1
 8004880:	4648      	mov	r0, r9
 8004882:	f001 fc93 	bl	80061ac <__lshift>
 8004886:	4631      	mov	r1, r6
 8004888:	4682      	mov	sl, r0
 800488a:	f001 fce5 	bl	8006258 <__mcmp>
 800488e:	2800      	cmp	r0, #0
 8004890:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004894:	dc14      	bgt.n	80048c0 <_dtoa_r+0x880>
 8004896:	d108      	bne.n	80048aa <_dtoa_r+0x86a>
 8004898:	9b00      	ldr	r3, [sp, #0]
 800489a:	07db      	lsls	r3, r3, #31
 800489c:	d410      	bmi.n	80048c0 <_dtoa_r+0x880>
 800489e:	e004      	b.n	80048aa <_dtoa_r+0x86a>
 80048a0:	40240000 	.word	0x40240000
 80048a4:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 80048a8:	461c      	mov	r4, r3
 80048aa:	2a30      	cmp	r2, #48	; 0x30
 80048ac:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80048b0:	d0f8      	beq.n	80048a4 <_dtoa_r+0x864>
 80048b2:	e00b      	b.n	80048cc <_dtoa_r+0x88c>
 80048b4:	459b      	cmp	fp, r3
 80048b6:	f000 814e 	beq.w	8004b56 <_dtoa_r+0xb16>
 80048ba:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80048be:	461c      	mov	r4, r3
 80048c0:	2a39      	cmp	r2, #57	; 0x39
 80048c2:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80048c6:	d0f5      	beq.n	80048b4 <_dtoa_r+0x874>
 80048c8:	3201      	adds	r2, #1
 80048ca:	701a      	strb	r2, [r3, #0]
 80048cc:	4631      	mov	r1, r6
 80048ce:	4648      	mov	r0, r9
 80048d0:	f001 fad2 	bl	8005e78 <_Bfree>
 80048d4:	b155      	cbz	r5, 80048ec <_dtoa_r+0x8ac>
 80048d6:	9902      	ldr	r1, [sp, #8]
 80048d8:	b121      	cbz	r1, 80048e4 <_dtoa_r+0x8a4>
 80048da:	42a9      	cmp	r1, r5
 80048dc:	d002      	beq.n	80048e4 <_dtoa_r+0x8a4>
 80048de:	4648      	mov	r0, r9
 80048e0:	f001 faca 	bl	8005e78 <_Bfree>
 80048e4:	4629      	mov	r1, r5
 80048e6:	4648      	mov	r0, r9
 80048e8:	f001 fac6 	bl	8005e78 <_Bfree>
 80048ec:	4651      	mov	r1, sl
 80048ee:	4648      	mov	r0, r9
 80048f0:	f001 fac2 	bl	8005e78 <_Bfree>
 80048f4:	2200      	movs	r2, #0
 80048f6:	9b06      	ldr	r3, [sp, #24]
 80048f8:	7022      	strb	r2, [r4, #0]
 80048fa:	9a05      	ldr	r2, [sp, #20]
 80048fc:	3301      	adds	r3, #1
 80048fe:	6013      	str	r3, [r2, #0]
 8004900:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004902:	2b00      	cmp	r3, #0
 8004904:	f43f abdb 	beq.w	80040be <_dtoa_r+0x7e>
 8004908:	4658      	mov	r0, fp
 800490a:	601c      	str	r4, [r3, #0]
 800490c:	b01b      	add	sp, #108	; 0x6c
 800490e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004912:	201c      	movs	r0, #28
 8004914:	e6eb      	b.n	80046ee <_dtoa_r+0x6ae>
 8004916:	4601      	mov	r1, r0
 8004918:	4648      	mov	r0, r9
 800491a:	f001 fbf7 	bl	800610c <__pow5mult>
 800491e:	9b02      	ldr	r3, [sp, #8]
 8004920:	2b01      	cmp	r3, #1
 8004922:	4606      	mov	r6, r0
 8004924:	f340 80d4 	ble.w	8004ad0 <_dtoa_r+0xa90>
 8004928:	2300      	movs	r3, #0
 800492a:	930c      	str	r3, [sp, #48]	; 0x30
 800492c:	6933      	ldr	r3, [r6, #16]
 800492e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004932:	6918      	ldr	r0, [r3, #16]
 8004934:	f001 faea 	bl	8005f0c <__hi0bits>
 8004938:	f1c0 0020 	rsb	r0, r0, #32
 800493c:	e6cb      	b.n	80046d6 <_dtoa_r+0x696>
 800493e:	900d      	str	r0, [sp, #52]	; 0x34
 8004940:	e42a      	b.n	8004198 <_dtoa_r+0x158>
 8004942:	2501      	movs	r5, #1
 8004944:	e440      	b.n	80041c8 <_dtoa_r+0x188>
 8004946:	f1c3 0820 	rsb	r8, r3, #32
 800494a:	9b00      	ldr	r3, [sp, #0]
 800494c:	fa03 f008 	lsl.w	r0, r3, r8
 8004950:	f7ff bbd8 	b.w	8004104 <_dtoa_r+0xc4>
 8004954:	2300      	movs	r3, #0
 8004956:	930a      	str	r3, [sp, #40]	; 0x28
 8004958:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 800495c:	4413      	add	r3, r2
 800495e:	930e      	str	r3, [sp, #56]	; 0x38
 8004960:	3301      	adds	r3, #1
 8004962:	2b01      	cmp	r3, #1
 8004964:	461e      	mov	r6, r3
 8004966:	9309      	str	r3, [sp, #36]	; 0x24
 8004968:	bfb8      	it	lt
 800496a:	2601      	movlt	r6, #1
 800496c:	2100      	movs	r1, #0
 800496e:	2e17      	cmp	r6, #23
 8004970:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004974:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004976:	f77f ac89 	ble.w	800428c <_dtoa_r+0x24c>
 800497a:	2201      	movs	r2, #1
 800497c:	2304      	movs	r3, #4
 800497e:	005b      	lsls	r3, r3, #1
 8004980:	f103 0014 	add.w	r0, r3, #20
 8004984:	42b0      	cmp	r0, r6
 8004986:	4611      	mov	r1, r2
 8004988:	f102 0201 	add.w	r2, r2, #1
 800498c:	d9f7      	bls.n	800497e <_dtoa_r+0x93e>
 800498e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004992:	e47b      	b.n	800428c <_dtoa_r+0x24c>
 8004994:	2300      	movs	r3, #0
 8004996:	930a      	str	r3, [sp, #40]	; 0x28
 8004998:	9e07      	ldr	r6, [sp, #28]
 800499a:	2e00      	cmp	r6, #0
 800499c:	f340 80e2 	ble.w	8004b64 <_dtoa_r+0xb24>
 80049a0:	960e      	str	r6, [sp, #56]	; 0x38
 80049a2:	9609      	str	r6, [sp, #36]	; 0x24
 80049a4:	e7e2      	b.n	800496c <_dtoa_r+0x92c>
 80049a6:	2301      	movs	r3, #1
 80049a8:	930a      	str	r3, [sp, #40]	; 0x28
 80049aa:	e7f5      	b.n	8004998 <_dtoa_r+0x958>
 80049ac:	9b00      	ldr	r3, [sp, #0]
 80049ae:	2b00      	cmp	r3, #0
 80049b0:	f47f ae90 	bne.w	80046d4 <_dtoa_r+0x694>
 80049b4:	e9dd 1200 	ldrd	r1, r2, [sp]
 80049b8:	f3c2 0313 	ubfx	r3, r2, #0, #20
 80049bc:	2b00      	cmp	r3, #0
 80049be:	f040 8192 	bne.w	8004ce6 <_dtoa_r+0xca6>
 80049c2:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80049c6:	0d1b      	lsrs	r3, r3, #20
 80049c8:	051b      	lsls	r3, r3, #20
 80049ca:	b12b      	cbz	r3, 80049d8 <_dtoa_r+0x998>
 80049cc:	9b08      	ldr	r3, [sp, #32]
 80049ce:	3301      	adds	r3, #1
 80049d0:	9308      	str	r3, [sp, #32]
 80049d2:	f108 0801 	add.w	r8, r8, #1
 80049d6:	2301      	movs	r3, #1
 80049d8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80049da:	930c      	str	r3, [sp, #48]	; 0x30
 80049dc:	2a00      	cmp	r2, #0
 80049de:	f43f ae79 	beq.w	80046d4 <_dtoa_r+0x694>
 80049e2:	e7a3      	b.n	800492c <_dtoa_r+0x8ec>
 80049e4:	463a      	mov	r2, r7
 80049e6:	4629      	mov	r1, r5
 80049e8:	4648      	mov	r0, r9
 80049ea:	f001 fb8f 	bl	800610c <__pow5mult>
 80049ee:	4652      	mov	r2, sl
 80049f0:	4601      	mov	r1, r0
 80049f2:	4605      	mov	r5, r0
 80049f4:	4648      	mov	r0, r9
 80049f6:	f001 fae3 	bl	8005fc0 <__multiply>
 80049fa:	4651      	mov	r1, sl
 80049fc:	4607      	mov	r7, r0
 80049fe:	4648      	mov	r0, r9
 8004a00:	f001 fa3a 	bl	8005e78 <_Bfree>
 8004a04:	46ba      	mov	sl, r7
 8004a06:	2e00      	cmp	r6, #0
 8004a08:	f43f ae57 	beq.w	80046ba <_dtoa_r+0x67a>
 8004a0c:	e64f      	b.n	80046ae <_dtoa_r+0x66e>
 8004a0e:	4629      	mov	r1, r5
 8004a10:	4622      	mov	r2, r4
 8004a12:	4648      	mov	r0, r9
 8004a14:	f001 fbca 	bl	80061ac <__lshift>
 8004a18:	4605      	mov	r5, r0
 8004a1a:	e68d      	b.n	8004738 <_dtoa_r+0x6f8>
 8004a1c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004a1e:	2a00      	cmp	r2, #0
 8004a20:	f000 815d 	beq.w	8004cde <_dtoa_r+0xc9e>
 8004a24:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004a28:	9a08      	ldr	r2, [sp, #32]
 8004a2a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004a2c:	4614      	mov	r4, r2
 8004a2e:	441a      	add	r2, r3
 8004a30:	4498      	add	r8, r3
 8004a32:	9208      	str	r2, [sp, #32]
 8004a34:	e5f7      	b.n	8004626 <_dtoa_r+0x5e6>
 8004a36:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a38:	2b00      	cmp	r3, #0
 8004a3a:	f73f ad3e 	bgt.w	80044ba <_dtoa_r+0x47a>
 8004a3e:	f040 80bc 	bne.w	8004bba <_dtoa_r+0xb7a>
 8004a42:	ec51 0b17 	vmov	r0, r1, d7
 8004a46:	2200      	movs	r2, #0
 8004a48:	4bb2      	ldr	r3, [pc, #712]	; (8004d14 <_dtoa_r+0xcd4>)
 8004a4a:	f7fc f875 	bl	8000b38 <__aeabi_dmul>
 8004a4e:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004a52:	f7fc faf7 	bl	8001044 <__aeabi_dcmpge>
 8004a56:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004a58:	4635      	mov	r5, r6
 8004a5a:	2800      	cmp	r0, #0
 8004a5c:	d176      	bne.n	8004b4c <_dtoa_r+0xb0c>
 8004a5e:	9a06      	ldr	r2, [sp, #24]
 8004a60:	2331      	movs	r3, #49	; 0x31
 8004a62:	3201      	adds	r2, #1
 8004a64:	9206      	str	r2, [sp, #24]
 8004a66:	f88b 3000 	strb.w	r3, [fp]
 8004a6a:	f10b 0401 	add.w	r4, fp, #1
 8004a6e:	4631      	mov	r1, r6
 8004a70:	4648      	mov	r0, r9
 8004a72:	f001 fa01 	bl	8005e78 <_Bfree>
 8004a76:	2d00      	cmp	r5, #0
 8004a78:	f47f af34 	bne.w	80048e4 <_dtoa_r+0x8a4>
 8004a7c:	e736      	b.n	80048ec <_dtoa_r+0x8ac>
 8004a7e:	f000 8142 	beq.w	8004d06 <_dtoa_r+0xcc6>
 8004a82:	9b06      	ldr	r3, [sp, #24]
 8004a84:	425c      	negs	r4, r3
 8004a86:	4ba4      	ldr	r3, [pc, #656]	; (8004d18 <_dtoa_r+0xcd8>)
 8004a88:	f004 020f 	and.w	r2, r4, #15
 8004a8c:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004a90:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004a94:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004a98:	f7fc f84e 	bl	8000b38 <__aeabi_dmul>
 8004a9c:	1124      	asrs	r4, r4, #4
 8004a9e:	e9cd 0100 	strd	r0, r1, [sp]
 8004aa2:	f000 81c6 	beq.w	8004e32 <_dtoa_r+0xdf2>
 8004aa6:	4d9d      	ldr	r5, [pc, #628]	; (8004d1c <_dtoa_r+0xcdc>)
 8004aa8:	2300      	movs	r3, #0
 8004aaa:	2602      	movs	r6, #2
 8004aac:	07e7      	lsls	r7, r4, #31
 8004aae:	d505      	bpl.n	8004abc <_dtoa_r+0xa7c>
 8004ab0:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004ab4:	f7fc f840 	bl	8000b38 <__aeabi_dmul>
 8004ab8:	3601      	adds	r6, #1
 8004aba:	2301      	movs	r3, #1
 8004abc:	1064      	asrs	r4, r4, #1
 8004abe:	f105 0508 	add.w	r5, r5, #8
 8004ac2:	d1f3      	bne.n	8004aac <_dtoa_r+0xa6c>
 8004ac4:	2b00      	cmp	r3, #0
 8004ac6:	f43f ac27 	beq.w	8004318 <_dtoa_r+0x2d8>
 8004aca:	e9cd 0100 	strd	r0, r1, [sp]
 8004ace:	e423      	b.n	8004318 <_dtoa_r+0x2d8>
 8004ad0:	9b00      	ldr	r3, [sp, #0]
 8004ad2:	2b00      	cmp	r3, #0
 8004ad4:	f43f af6e 	beq.w	80049b4 <_dtoa_r+0x974>
 8004ad8:	e726      	b.n	8004928 <_dtoa_r+0x8e8>
 8004ada:	6869      	ldr	r1, [r5, #4]
 8004adc:	4648      	mov	r0, r9
 8004ade:	f001 f9a5 	bl	8005e2c <_Balloc>
 8004ae2:	692b      	ldr	r3, [r5, #16]
 8004ae4:	3302      	adds	r3, #2
 8004ae6:	009a      	lsls	r2, r3, #2
 8004ae8:	4604      	mov	r4, r0
 8004aea:	f105 010c 	add.w	r1, r5, #12
 8004aee:	300c      	adds	r0, #12
 8004af0:	f7fb fd06 	bl	8000500 <memcpy>
 8004af4:	4621      	mov	r1, r4
 8004af6:	2201      	movs	r2, #1
 8004af8:	4648      	mov	r0, r9
 8004afa:	f001 fb57 	bl	80061ac <__lshift>
 8004afe:	4680      	mov	r8, r0
 8004b00:	e61f      	b.n	8004742 <_dtoa_r+0x702>
 8004b02:	2400      	movs	r4, #0
 8004b04:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004b08:	4621      	mov	r1, r4
 8004b0a:	4648      	mov	r0, r9
 8004b0c:	f001 f98e 	bl	8005e2c <_Balloc>
 8004b10:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004b14:	930e      	str	r3, [sp, #56]	; 0x38
 8004b16:	9309      	str	r3, [sp, #36]	; 0x24
 8004b18:	2301      	movs	r3, #1
 8004b1a:	4683      	mov	fp, r0
 8004b1c:	9407      	str	r4, [sp, #28]
 8004b1e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004b22:	930a      	str	r3, [sp, #40]	; 0x28
 8004b24:	e4b6      	b.n	8004494 <_dtoa_r+0x454>
 8004b26:	f001 f9b1 	bl	8005e8c <__multadd>
 8004b2a:	4627      	mov	r7, r4
 8004b2c:	4605      	mov	r5, r0
 8004b2e:	4680      	mov	r8, r0
 8004b30:	e614      	b.n	800475c <_dtoa_r+0x71c>
 8004b32:	4648      	mov	r0, r9
 8004b34:	f001 f9a0 	bl	8005e78 <_Bfree>
 8004b38:	2301      	movs	r3, #1
 8004b3a:	e639      	b.n	80047b0 <_dtoa_r+0x770>
 8004b3c:	9b02      	ldr	r3, [sp, #8]
 8004b3e:	2b02      	cmp	r3, #2
 8004b40:	f77f adf3 	ble.w	800472a <_dtoa_r+0x6ea>
 8004b44:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b46:	2b00      	cmp	r3, #0
 8004b48:	f000 80cf 	beq.w	8004cea <_dtoa_r+0xcaa>
 8004b4c:	9b07      	ldr	r3, [sp, #28]
 8004b4e:	43db      	mvns	r3, r3
 8004b50:	9306      	str	r3, [sp, #24]
 8004b52:	465c      	mov	r4, fp
 8004b54:	e78b      	b.n	8004a6e <_dtoa_r+0xa2e>
 8004b56:	9a06      	ldr	r2, [sp, #24]
 8004b58:	2331      	movs	r3, #49	; 0x31
 8004b5a:	3201      	adds	r2, #1
 8004b5c:	9206      	str	r2, [sp, #24]
 8004b5e:	f88b 3000 	strb.w	r3, [fp]
 8004b62:	e6b3      	b.n	80048cc <_dtoa_r+0x88c>
 8004b64:	2401      	movs	r4, #1
 8004b66:	9409      	str	r4, [sp, #36]	; 0x24
 8004b68:	9407      	str	r4, [sp, #28]
 8004b6a:	f7ff bb8b 	b.w	8004284 <_dtoa_r+0x244>
 8004b6e:	4630      	mov	r0, r6
 8004b70:	f7fb ff78 	bl	8000a64 <__aeabi_i2d>
 8004b74:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004b78:	f7fb ffde 	bl	8000b38 <__aeabi_dmul>
 8004b7c:	2200      	movs	r2, #0
 8004b7e:	4b68      	ldr	r3, [pc, #416]	; (8004d20 <_dtoa_r+0xce0>)
 8004b80:	f7fb fe24 	bl	80007cc <__adddf3>
 8004b84:	4606      	mov	r6, r0
 8004b86:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004b8a:	2200      	movs	r2, #0
 8004b8c:	4b61      	ldr	r3, [pc, #388]	; (8004d14 <_dtoa_r+0xcd4>)
 8004b8e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004b92:	f7fb fe19 	bl	80007c8 <__aeabi_dsub>
 8004b96:	4632      	mov	r2, r6
 8004b98:	463b      	mov	r3, r7
 8004b9a:	4604      	mov	r4, r0
 8004b9c:	460d      	mov	r5, r1
 8004b9e:	f7fc fa5b 	bl	8001058 <__aeabi_dcmpgt>
 8004ba2:	2800      	cmp	r0, #0
 8004ba4:	d14f      	bne.n	8004c46 <_dtoa_r+0xc06>
 8004ba6:	4632      	mov	r2, r6
 8004ba8:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004bac:	4620      	mov	r0, r4
 8004bae:	4629      	mov	r1, r5
 8004bb0:	f7fc fa34 	bl	800101c <__aeabi_dcmplt>
 8004bb4:	2800      	cmp	r0, #0
 8004bb6:	f43f ac69 	beq.w	800448c <_dtoa_r+0x44c>
 8004bba:	2600      	movs	r6, #0
 8004bbc:	4635      	mov	r5, r6
 8004bbe:	e7c5      	b.n	8004b4c <_dtoa_r+0xb0c>
 8004bc0:	2301      	movs	r3, #1
 8004bc2:	930a      	str	r3, [sp, #40]	; 0x28
 8004bc4:	e6c8      	b.n	8004958 <_dtoa_r+0x918>
 8004bc6:	4651      	mov	r1, sl
 8004bc8:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004bca:	4648      	mov	r0, r9
 8004bcc:	f001 fa9e 	bl	800610c <__pow5mult>
 8004bd0:	4682      	mov	sl, r0
 8004bd2:	e572      	b.n	80046ba <_dtoa_r+0x67a>
 8004bd4:	f8dd a000 	ldr.w	sl, [sp]
 8004bd8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004bdc:	e686      	b.n	80048ec <_dtoa_r+0x8ac>
 8004bde:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004be0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004be2:	1afb      	subs	r3, r7, r3
 8004be4:	441a      	add	r2, r3
 8004be6:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004bea:	2700      	movs	r7, #0
 8004bec:	e512      	b.n	8004614 <_dtoa_r+0x5d4>
 8004bee:	2b00      	cmp	r3, #0
 8004bf0:	9402      	str	r4, [sp, #8]
 8004bf2:	465e      	mov	r6, fp
 8004bf4:	f107 0401 	add.w	r4, r7, #1
 8004bf8:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004bfc:	f300 80ba 	bgt.w	8004d74 <_dtoa_r+0xd34>
 8004c00:	9b00      	ldr	r3, [sp, #0]
 8004c02:	9502      	str	r5, [sp, #8]
 8004c04:	703b      	strb	r3, [r7, #0]
 8004c06:	4645      	mov	r5, r8
 8004c08:	e660      	b.n	80048cc <_dtoa_r+0x88c>
 8004c0a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004c0e:	2602      	movs	r6, #2
 8004c10:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004c14:	f7ff bb67 	b.w	80042e6 <_dtoa_r+0x2a6>
 8004c18:	9b00      	ldr	r3, [sp, #0]
 8004c1a:	2b39      	cmp	r3, #57	; 0x39
 8004c1c:	465e      	mov	r6, fp
 8004c1e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004c22:	f000 80b9 	beq.w	8004d98 <_dtoa_r+0xd58>
 8004c26:	9b00      	ldr	r3, [sp, #0]
 8004c28:	9502      	str	r5, [sp, #8]
 8004c2a:	3301      	adds	r3, #1
 8004c2c:	703b      	strb	r3, [r7, #0]
 8004c2e:	4645      	mov	r5, r8
 8004c30:	e64c      	b.n	80048cc <_dtoa_r+0x88c>
 8004c32:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004c36:	1a9c      	subs	r4, r3, r2
 8004c38:	e4f5      	b.n	8004626 <_dtoa_r+0x5e6>
 8004c3a:	465e      	mov	r6, fp
 8004c3c:	9502      	str	r5, [sp, #8]
 8004c3e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004c42:	4645      	mov	r5, r8
 8004c44:	e61a      	b.n	800487c <_dtoa_r+0x83c>
 8004c46:	2600      	movs	r6, #0
 8004c48:	4635      	mov	r5, r6
 8004c4a:	e708      	b.n	8004a5e <_dtoa_r+0xa1e>
 8004c4c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004c50:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004c54:	f7fb ff70 	bl	8000b38 <__aeabi_dmul>
 8004c58:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004c5a:	f88b 5000 	strb.w	r5, [fp]
 8004c5e:	2b01      	cmp	r3, #1
 8004c60:	e9cd 0100 	strd	r0, r1, [sp]
 8004c64:	d020      	beq.n	8004ca8 <_dtoa_r+0xc68>
 8004c66:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004c68:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004c6c:	445b      	add	r3, fp
 8004c6e:	4698      	mov	r8, r3
 8004c70:	2200      	movs	r2, #0
 8004c72:	4b2c      	ldr	r3, [pc, #176]	; (8004d24 <_dtoa_r+0xce4>)
 8004c74:	4630      	mov	r0, r6
 8004c76:	4639      	mov	r1, r7
 8004c78:	f7fb ff5e 	bl	8000b38 <__aeabi_dmul>
 8004c7c:	460f      	mov	r7, r1
 8004c7e:	4606      	mov	r6, r0
 8004c80:	f7fc fa0a 	bl	8001098 <__aeabi_d2iz>
 8004c84:	4605      	mov	r5, r0
 8004c86:	f7fb feed 	bl	8000a64 <__aeabi_i2d>
 8004c8a:	3530      	adds	r5, #48	; 0x30
 8004c8c:	4602      	mov	r2, r0
 8004c8e:	460b      	mov	r3, r1
 8004c90:	4630      	mov	r0, r6
 8004c92:	4639      	mov	r1, r7
 8004c94:	f7fb fd98 	bl	80007c8 <__aeabi_dsub>
 8004c98:	f804 5b01 	strb.w	r5, [r4], #1
 8004c9c:	4544      	cmp	r4, r8
 8004c9e:	4606      	mov	r6, r0
 8004ca0:	460f      	mov	r7, r1
 8004ca2:	d1e5      	bne.n	8004c70 <_dtoa_r+0xc30>
 8004ca4:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004ca8:	4b1f      	ldr	r3, [pc, #124]	; (8004d28 <_dtoa_r+0xce8>)
 8004caa:	2200      	movs	r2, #0
 8004cac:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004cb0:	f7fb fd8c 	bl	80007cc <__adddf3>
 8004cb4:	4632      	mov	r2, r6
 8004cb6:	463b      	mov	r3, r7
 8004cb8:	f7fc f9b0 	bl	800101c <__aeabi_dcmplt>
 8004cbc:	2800      	cmp	r0, #0
 8004cbe:	d070      	beq.n	8004da2 <_dtoa_r+0xd62>
 8004cc0:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004cc2:	9306      	str	r3, [sp, #24]
 8004cc4:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004cc8:	e48f      	b.n	80045ea <_dtoa_r+0x5aa>
 8004cca:	2330      	movs	r3, #48	; 0x30
 8004ccc:	f88b 3000 	strb.w	r3, [fp]
 8004cd0:	9b06      	ldr	r3, [sp, #24]
 8004cd2:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004cd6:	3301      	adds	r3, #1
 8004cd8:	9306      	str	r3, [sp, #24]
 8004cda:	465b      	mov	r3, fp
 8004cdc:	e489      	b.n	80045f2 <_dtoa_r+0x5b2>
 8004cde:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004ce0:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004ce4:	e6a0      	b.n	8004a28 <_dtoa_r+0x9e8>
 8004ce6:	2300      	movs	r3, #0
 8004ce8:	e676      	b.n	80049d8 <_dtoa_r+0x998>
 8004cea:	4631      	mov	r1, r6
 8004cec:	2205      	movs	r2, #5
 8004cee:	4648      	mov	r0, r9
 8004cf0:	f001 f8cc 	bl	8005e8c <__multadd>
 8004cf4:	4601      	mov	r1, r0
 8004cf6:	4606      	mov	r6, r0
 8004cf8:	4650      	mov	r0, sl
 8004cfa:	f001 faad 	bl	8006258 <__mcmp>
 8004cfe:	2800      	cmp	r0, #0
 8004d00:	f73f aead 	bgt.w	8004a5e <_dtoa_r+0xa1e>
 8004d04:	e722      	b.n	8004b4c <_dtoa_r+0xb0c>
 8004d06:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004d0a:	2602      	movs	r6, #2
 8004d0c:	ed8d 7b00 	vstr	d7, [sp]
 8004d10:	f7ff bb02 	b.w	8004318 <_dtoa_r+0x2d8>
 8004d14:	40140000 	.word	0x40140000
 8004d18:	08007260 	.word	0x08007260
 8004d1c:	08007238 	.word	0x08007238
 8004d20:	401c0000 	.word	0x401c0000
 8004d24:	40240000 	.word	0x40240000
 8004d28:	3fe00000 	.word	0x3fe00000
 8004d2c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d2e:	2b00      	cmp	r3, #0
 8004d30:	f43f af1d 	beq.w	8004b6e <_dtoa_r+0xb2e>
 8004d34:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004d36:	2c00      	cmp	r4, #0
 8004d38:	f77f aba8 	ble.w	800448c <_dtoa_r+0x44c>
 8004d3c:	2200      	movs	r2, #0
 8004d3e:	4b45      	ldr	r3, [pc, #276]	; (8004e54 <_dtoa_r+0xe14>)
 8004d40:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d44:	f7fb fef8 	bl	8000b38 <__aeabi_dmul>
 8004d48:	e9cd 0100 	strd	r0, r1, [sp]
 8004d4c:	1c70      	adds	r0, r6, #1
 8004d4e:	f7fb fe89 	bl	8000a64 <__aeabi_i2d>
 8004d52:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d56:	f7fb feef 	bl	8000b38 <__aeabi_dmul>
 8004d5a:	4b3f      	ldr	r3, [pc, #252]	; (8004e58 <_dtoa_r+0xe18>)
 8004d5c:	2200      	movs	r2, #0
 8004d5e:	f7fb fd35 	bl	80007cc <__adddf3>
 8004d62:	9b06      	ldr	r3, [sp, #24]
 8004d64:	9412      	str	r4, [sp, #72]	; 0x48
 8004d66:	3b01      	subs	r3, #1
 8004d68:	4606      	mov	r6, r0
 8004d6a:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004d6e:	9316      	str	r3, [sp, #88]	; 0x58
 8004d70:	f7ff baf3 	b.w	800435a <_dtoa_r+0x31a>
 8004d74:	4651      	mov	r1, sl
 8004d76:	2201      	movs	r2, #1
 8004d78:	4648      	mov	r0, r9
 8004d7a:	f001 fa17 	bl	80061ac <__lshift>
 8004d7e:	4631      	mov	r1, r6
 8004d80:	4682      	mov	sl, r0
 8004d82:	f001 fa69 	bl	8006258 <__mcmp>
 8004d86:	2800      	cmp	r0, #0
 8004d88:	dd3b      	ble.n	8004e02 <_dtoa_r+0xdc2>
 8004d8a:	9b00      	ldr	r3, [sp, #0]
 8004d8c:	2b39      	cmp	r3, #57	; 0x39
 8004d8e:	d003      	beq.n	8004d98 <_dtoa_r+0xd58>
 8004d90:	9b02      	ldr	r3, [sp, #8]
 8004d92:	3331      	adds	r3, #49	; 0x31
 8004d94:	9300      	str	r3, [sp, #0]
 8004d96:	e733      	b.n	8004c00 <_dtoa_r+0xbc0>
 8004d98:	2239      	movs	r2, #57	; 0x39
 8004d9a:	9502      	str	r5, [sp, #8]
 8004d9c:	703a      	strb	r2, [r7, #0]
 8004d9e:	4645      	mov	r5, r8
 8004da0:	e58e      	b.n	80048c0 <_dtoa_r+0x880>
 8004da2:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004da6:	2000      	movs	r0, #0
 8004da8:	492c      	ldr	r1, [pc, #176]	; (8004e5c <_dtoa_r+0xe1c>)
 8004daa:	f7fb fd0d 	bl	80007c8 <__aeabi_dsub>
 8004dae:	4632      	mov	r2, r6
 8004db0:	463b      	mov	r3, r7
 8004db2:	f7fc f951 	bl	8001058 <__aeabi_dcmpgt>
 8004db6:	b910      	cbnz	r0, 8004dbe <_dtoa_r+0xd7e>
 8004db8:	f7ff bb68 	b.w	800448c <_dtoa_r+0x44c>
 8004dbc:	4614      	mov	r4, r2
 8004dbe:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004dc2:	2b30      	cmp	r3, #48	; 0x30
 8004dc4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004dc8:	d0f8      	beq.n	8004dbc <_dtoa_r+0xd7c>
 8004dca:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004dcc:	9306      	str	r3, [sp, #24]
 8004dce:	e58d      	b.n	80048ec <_dtoa_r+0x8ac>
 8004dd0:	46d9      	mov	r9, fp
 8004dd2:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004dd6:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004dda:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004ddc:	9306      	str	r3, [sp, #24]
 8004dde:	e404      	b.n	80045ea <_dtoa_r+0x5aa>
 8004de0:	9b00      	ldr	r3, [sp, #0]
 8004de2:	2b39      	cmp	r3, #57	; 0x39
 8004de4:	4621      	mov	r1, r4
 8004de6:	4632      	mov	r2, r6
 8004de8:	f107 0401 	add.w	r4, r7, #1
 8004dec:	465e      	mov	r6, fp
 8004dee:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004df2:	d0d1      	beq.n	8004d98 <_dtoa_r+0xd58>
 8004df4:	2a00      	cmp	r2, #0
 8004df6:	f77f af03 	ble.w	8004c00 <_dtoa_r+0xbc0>
 8004dfa:	460b      	mov	r3, r1
 8004dfc:	3331      	adds	r3, #49	; 0x31
 8004dfe:	9300      	str	r3, [sp, #0]
 8004e00:	e6fe      	b.n	8004c00 <_dtoa_r+0xbc0>
 8004e02:	f47f aefd 	bne.w	8004c00 <_dtoa_r+0xbc0>
 8004e06:	9b00      	ldr	r3, [sp, #0]
 8004e08:	07da      	lsls	r2, r3, #31
 8004e0a:	f57f aef9 	bpl.w	8004c00 <_dtoa_r+0xbc0>
 8004e0e:	e7bc      	b.n	8004d8a <_dtoa_r+0xd4a>
 8004e10:	4629      	mov	r1, r5
 8004e12:	2300      	movs	r3, #0
 8004e14:	220a      	movs	r2, #10
 8004e16:	4648      	mov	r0, r9
 8004e18:	f001 f838 	bl	8005e8c <__multadd>
 8004e1c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004e1e:	2b00      	cmp	r3, #0
 8004e20:	4605      	mov	r5, r0
 8004e22:	dd09      	ble.n	8004e38 <_dtoa_r+0xdf8>
 8004e24:	9309      	str	r3, [sp, #36]	; 0x24
 8004e26:	e484      	b.n	8004732 <_dtoa_r+0x6f2>
 8004e28:	9b02      	ldr	r3, [sp, #8]
 8004e2a:	2b02      	cmp	r3, #2
 8004e2c:	dc0e      	bgt.n	8004e4c <_dtoa_r+0xe0c>
 8004e2e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004e30:	e507      	b.n	8004842 <_dtoa_r+0x802>
 8004e32:	2602      	movs	r6, #2
 8004e34:	f7ff ba70 	b.w	8004318 <_dtoa_r+0x2d8>
 8004e38:	9b02      	ldr	r3, [sp, #8]
 8004e3a:	2b02      	cmp	r3, #2
 8004e3c:	dc06      	bgt.n	8004e4c <_dtoa_r+0xe0c>
 8004e3e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004e40:	e7f0      	b.n	8004e24 <_dtoa_r+0xde4>
 8004e42:	f43f ac59 	beq.w	80046f8 <_dtoa_r+0x6b8>
 8004e46:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004e4a:	e450      	b.n	80046ee <_dtoa_r+0x6ae>
 8004e4c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004e4e:	9309      	str	r3, [sp, #36]	; 0x24
 8004e50:	e678      	b.n	8004b44 <_dtoa_r+0xb04>
 8004e52:	bf00      	nop
 8004e54:	40240000 	.word	0x40240000
 8004e58:	401c0000 	.word	0x401c0000
 8004e5c:	3fe00000 	.word	0x3fe00000

08004e60 <__sflush_r>:
 8004e60:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004e64:	b29a      	uxth	r2, r3
 8004e66:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004e6a:	460c      	mov	r4, r1
 8004e6c:	0711      	lsls	r1, r2, #28
 8004e6e:	4680      	mov	r8, r0
 8004e70:	d444      	bmi.n	8004efc <__sflush_r+0x9c>
 8004e72:	6862      	ldr	r2, [r4, #4]
 8004e74:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004e78:	2a00      	cmp	r2, #0
 8004e7a:	81a3      	strh	r3, [r4, #12]
 8004e7c:	dd59      	ble.n	8004f32 <__sflush_r+0xd2>
 8004e7e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004e80:	2d00      	cmp	r5, #0
 8004e82:	d053      	beq.n	8004f2c <__sflush_r+0xcc>
 8004e84:	2200      	movs	r2, #0
 8004e86:	b29b      	uxth	r3, r3
 8004e88:	f8d8 6000 	ldr.w	r6, [r8]
 8004e8c:	69e1      	ldr	r1, [r4, #28]
 8004e8e:	f8c8 2000 	str.w	r2, [r8]
 8004e92:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8004e96:	f040 8083 	bne.w	8004fa0 <__sflush_r+0x140>
 8004e9a:	2301      	movs	r3, #1
 8004e9c:	4640      	mov	r0, r8
 8004e9e:	47a8      	blx	r5
 8004ea0:	1c42      	adds	r2, r0, #1
 8004ea2:	d04a      	beq.n	8004f3a <__sflush_r+0xda>
 8004ea4:	89a3      	ldrh	r3, [r4, #12]
 8004ea6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004ea8:	69e1      	ldr	r1, [r4, #28]
 8004eaa:	075b      	lsls	r3, r3, #29
 8004eac:	d505      	bpl.n	8004eba <__sflush_r+0x5a>
 8004eae:	6862      	ldr	r2, [r4, #4]
 8004eb0:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8004eb2:	1a80      	subs	r0, r0, r2
 8004eb4:	b10b      	cbz	r3, 8004eba <__sflush_r+0x5a>
 8004eb6:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8004eb8:	1ac0      	subs	r0, r0, r3
 8004eba:	4602      	mov	r2, r0
 8004ebc:	2300      	movs	r3, #0
 8004ebe:	4640      	mov	r0, r8
 8004ec0:	47a8      	blx	r5
 8004ec2:	1c47      	adds	r7, r0, #1
 8004ec4:	d045      	beq.n	8004f52 <__sflush_r+0xf2>
 8004ec6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004eca:	6922      	ldr	r2, [r4, #16]
 8004ecc:	6022      	str	r2, [r4, #0]
 8004ece:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8004ed2:	2200      	movs	r2, #0
 8004ed4:	81a3      	strh	r3, [r4, #12]
 8004ed6:	04db      	lsls	r3, r3, #19
 8004ed8:	6062      	str	r2, [r4, #4]
 8004eda:	d500      	bpl.n	8004ede <__sflush_r+0x7e>
 8004edc:	6520      	str	r0, [r4, #80]	; 0x50
 8004ede:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004ee0:	f8c8 6000 	str.w	r6, [r8]
 8004ee4:	b311      	cbz	r1, 8004f2c <__sflush_r+0xcc>
 8004ee6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004eea:	4299      	cmp	r1, r3
 8004eec:	d002      	beq.n	8004ef4 <__sflush_r+0x94>
 8004eee:	4640      	mov	r0, r8
 8004ef0:	f000 f95e 	bl	80051b0 <_free_r>
 8004ef4:	2000      	movs	r0, #0
 8004ef6:	6320      	str	r0, [r4, #48]	; 0x30
 8004ef8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004efc:	6926      	ldr	r6, [r4, #16]
 8004efe:	b1ae      	cbz	r6, 8004f2c <__sflush_r+0xcc>
 8004f00:	6825      	ldr	r5, [r4, #0]
 8004f02:	6026      	str	r6, [r4, #0]
 8004f04:	0792      	lsls	r2, r2, #30
 8004f06:	bf0c      	ite	eq
 8004f08:	6963      	ldreq	r3, [r4, #20]
 8004f0a:	2300      	movne	r3, #0
 8004f0c:	1bad      	subs	r5, r5, r6
 8004f0e:	60a3      	str	r3, [r4, #8]
 8004f10:	e00a      	b.n	8004f28 <__sflush_r+0xc8>
 8004f12:	462b      	mov	r3, r5
 8004f14:	4632      	mov	r2, r6
 8004f16:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8004f18:	69e1      	ldr	r1, [r4, #28]
 8004f1a:	4640      	mov	r0, r8
 8004f1c:	47b8      	blx	r7
 8004f1e:	2800      	cmp	r0, #0
 8004f20:	eba5 0500 	sub.w	r5, r5, r0
 8004f24:	4406      	add	r6, r0
 8004f26:	dd2b      	ble.n	8004f80 <__sflush_r+0x120>
 8004f28:	2d00      	cmp	r5, #0
 8004f2a:	dcf2      	bgt.n	8004f12 <__sflush_r+0xb2>
 8004f2c:	2000      	movs	r0, #0
 8004f2e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004f32:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8004f34:	2a00      	cmp	r2, #0
 8004f36:	dca2      	bgt.n	8004e7e <__sflush_r+0x1e>
 8004f38:	e7f8      	b.n	8004f2c <__sflush_r+0xcc>
 8004f3a:	f8d8 3000 	ldr.w	r3, [r8]
 8004f3e:	2b00      	cmp	r3, #0
 8004f40:	d0b0      	beq.n	8004ea4 <__sflush_r+0x44>
 8004f42:	2b1d      	cmp	r3, #29
 8004f44:	d001      	beq.n	8004f4a <__sflush_r+0xea>
 8004f46:	2b16      	cmp	r3, #22
 8004f48:	d12c      	bne.n	8004fa4 <__sflush_r+0x144>
 8004f4a:	f8c8 6000 	str.w	r6, [r8]
 8004f4e:	2000      	movs	r0, #0
 8004f50:	e7ed      	b.n	8004f2e <__sflush_r+0xce>
 8004f52:	f8d8 1000 	ldr.w	r1, [r8]
 8004f56:	291d      	cmp	r1, #29
 8004f58:	d81a      	bhi.n	8004f90 <__sflush_r+0x130>
 8004f5a:	4b15      	ldr	r3, [pc, #84]	; (8004fb0 <__sflush_r+0x150>)
 8004f5c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004f60:	40cb      	lsrs	r3, r1
 8004f62:	43db      	mvns	r3, r3
 8004f64:	f013 0301 	ands.w	r3, r3, #1
 8004f68:	d114      	bne.n	8004f94 <__sflush_r+0x134>
 8004f6a:	6925      	ldr	r5, [r4, #16]
 8004f6c:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8004f70:	e9c4 5300 	strd	r5, r3, [r4]
 8004f74:	04d5      	lsls	r5, r2, #19
 8004f76:	81a2      	strh	r2, [r4, #12]
 8004f78:	d5b1      	bpl.n	8004ede <__sflush_r+0x7e>
 8004f7a:	2900      	cmp	r1, #0
 8004f7c:	d1af      	bne.n	8004ede <__sflush_r+0x7e>
 8004f7e:	e7ad      	b.n	8004edc <__sflush_r+0x7c>
 8004f80:	89a3      	ldrh	r3, [r4, #12]
 8004f82:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004f86:	81a3      	strh	r3, [r4, #12]
 8004f88:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004f8c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004f90:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004f94:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004f98:	81a2      	strh	r2, [r4, #12]
 8004f9a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004f9e:	e7c6      	b.n	8004f2e <__sflush_r+0xce>
 8004fa0:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8004fa2:	e782      	b.n	8004eaa <__sflush_r+0x4a>
 8004fa4:	89a3      	ldrh	r3, [r4, #12]
 8004fa6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004faa:	81a3      	strh	r3, [r4, #12]
 8004fac:	e7bf      	b.n	8004f2e <__sflush_r+0xce>
 8004fae:	bf00      	nop
 8004fb0:	20400001 	.word	0x20400001

08004fb4 <_fflush_r>:
 8004fb4:	b538      	push	{r3, r4, r5, lr}
 8004fb6:	460d      	mov	r5, r1
 8004fb8:	4604      	mov	r4, r0
 8004fba:	b108      	cbz	r0, 8004fc0 <_fflush_r+0xc>
 8004fbc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8004fbe:	b1a3      	cbz	r3, 8004fea <_fflush_r+0x36>
 8004fc0:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8004fc4:	b1b8      	cbz	r0, 8004ff6 <_fflush_r+0x42>
 8004fc6:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8004fc8:	07db      	lsls	r3, r3, #31
 8004fca:	d401      	bmi.n	8004fd0 <_fflush_r+0x1c>
 8004fcc:	0581      	lsls	r1, r0, #22
 8004fce:	d51a      	bpl.n	8005006 <_fflush_r+0x52>
 8004fd0:	4620      	mov	r0, r4
 8004fd2:	4629      	mov	r1, r5
 8004fd4:	f7ff ff44 	bl	8004e60 <__sflush_r>
 8004fd8:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8004fda:	07da      	lsls	r2, r3, #31
 8004fdc:	4604      	mov	r4, r0
 8004fde:	d402      	bmi.n	8004fe6 <_fflush_r+0x32>
 8004fe0:	89ab      	ldrh	r3, [r5, #12]
 8004fe2:	059b      	lsls	r3, r3, #22
 8004fe4:	d50a      	bpl.n	8004ffc <_fflush_r+0x48>
 8004fe6:	4620      	mov	r0, r4
 8004fe8:	bd38      	pop	{r3, r4, r5, pc}
 8004fea:	f000 f83f 	bl	800506c <__sinit>
 8004fee:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8004ff2:	2800      	cmp	r0, #0
 8004ff4:	d1e7      	bne.n	8004fc6 <_fflush_r+0x12>
 8004ff6:	4604      	mov	r4, r0
 8004ff8:	4620      	mov	r0, r4
 8004ffa:	bd38      	pop	{r3, r4, r5, pc}
 8004ffc:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8004ffe:	f000 fb87 	bl	8005710 <__retarget_lock_release_recursive>
 8005002:	4620      	mov	r0, r4
 8005004:	bd38      	pop	{r3, r4, r5, pc}
 8005006:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005008:	f000 fb80 	bl	800570c <__retarget_lock_acquire_recursive>
 800500c:	e7e0      	b.n	8004fd0 <_fflush_r+0x1c>
 800500e:	bf00      	nop

08005010 <std>:
 8005010:	b510      	push	{r4, lr}
 8005012:	2300      	movs	r3, #0
 8005014:	4604      	mov	r4, r0
 8005016:	8181      	strh	r1, [r0, #12]
 8005018:	81c2      	strh	r2, [r0, #14]
 800501a:	e9c0 3300 	strd	r3, r3, [r0]
 800501e:	6083      	str	r3, [r0, #8]
 8005020:	6643      	str	r3, [r0, #100]	; 0x64
 8005022:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005026:	6183      	str	r3, [r0, #24]
 8005028:	4619      	mov	r1, r3
 800502a:	2208      	movs	r2, #8
 800502c:	305c      	adds	r0, #92	; 0x5c
 800502e:	f7fd f8cb 	bl	80021c8 <memset>
 8005032:	4807      	ldr	r0, [pc, #28]	; (8005050 <std+0x40>)
 8005034:	4907      	ldr	r1, [pc, #28]	; (8005054 <std+0x44>)
 8005036:	4a08      	ldr	r2, [pc, #32]	; (8005058 <std+0x48>)
 8005038:	4b08      	ldr	r3, [pc, #32]	; (800505c <std+0x4c>)
 800503a:	62e3      	str	r3, [r4, #44]	; 0x2c
 800503c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005040:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005044:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005048:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800504c:	f000 bb5a 	b.w	8005704 <__retarget_lock_init_recursive>
 8005050:	08006829 	.word	0x08006829
 8005054:	0800684d 	.word	0x0800684d
 8005058:	08006889 	.word	0x08006889
 800505c:	080068a9 	.word	0x080068a9

08005060 <_cleanup_r>:
 8005060:	4901      	ldr	r1, [pc, #4]	; (8005068 <_cleanup_r+0x8>)
 8005062:	f000 bb17 	b.w	8005694 <_fwalk_reent>
 8005066:	bf00      	nop
 8005068:	08006b19 	.word	0x08006b19

0800506c <__sinit>:
 800506c:	b510      	push	{r4, lr}
 800506e:	4604      	mov	r4, r0
 8005070:	4812      	ldr	r0, [pc, #72]	; (80050bc <__sinit+0x50>)
 8005072:	f000 fb4b 	bl	800570c <__retarget_lock_acquire_recursive>
 8005076:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005078:	b9d2      	cbnz	r2, 80050b0 <__sinit+0x44>
 800507a:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 800507e:	4810      	ldr	r0, [pc, #64]	; (80050c0 <__sinit+0x54>)
 8005080:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8005084:	2103      	movs	r1, #3
 8005086:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 800508a:	63e0      	str	r0, [r4, #60]	; 0x3c
 800508c:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005090:	6860      	ldr	r0, [r4, #4]
 8005092:	2104      	movs	r1, #4
 8005094:	f7ff ffbc 	bl	8005010 <std>
 8005098:	2201      	movs	r2, #1
 800509a:	2109      	movs	r1, #9
 800509c:	68a0      	ldr	r0, [r4, #8]
 800509e:	f7ff ffb7 	bl	8005010 <std>
 80050a2:	2202      	movs	r2, #2
 80050a4:	2112      	movs	r1, #18
 80050a6:	68e0      	ldr	r0, [r4, #12]
 80050a8:	f7ff ffb2 	bl	8005010 <std>
 80050ac:	2301      	movs	r3, #1
 80050ae:	63a3      	str	r3, [r4, #56]	; 0x38
 80050b0:	4802      	ldr	r0, [pc, #8]	; (80050bc <__sinit+0x50>)
 80050b2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80050b6:	f000 bb2b 	b.w	8005710 <__retarget_lock_release_recursive>
 80050ba:	bf00      	nop
 80050bc:	20000c90 	.word	0x20000c90
 80050c0:	08005061 	.word	0x08005061

080050c4 <__sfp_lock_acquire>:
 80050c4:	4801      	ldr	r0, [pc, #4]	; (80050cc <__sfp_lock_acquire+0x8>)
 80050c6:	f000 bb21 	b.w	800570c <__retarget_lock_acquire_recursive>
 80050ca:	bf00      	nop
 80050cc:	20000ca4 	.word	0x20000ca4

080050d0 <__sfp_lock_release>:
 80050d0:	4801      	ldr	r0, [pc, #4]	; (80050d8 <__sfp_lock_release+0x8>)
 80050d2:	f000 bb1d 	b.w	8005710 <__retarget_lock_release_recursive>
 80050d6:	bf00      	nop
 80050d8:	20000ca4 	.word	0x20000ca4

080050dc <__libc_fini_array>:
 80050dc:	b538      	push	{r3, r4, r5, lr}
 80050de:	4c0a      	ldr	r4, [pc, #40]	; (8005108 <__libc_fini_array+0x2c>)
 80050e0:	4d0a      	ldr	r5, [pc, #40]	; (800510c <__libc_fini_array+0x30>)
 80050e2:	1b64      	subs	r4, r4, r5
 80050e4:	10a4      	asrs	r4, r4, #2
 80050e6:	d00a      	beq.n	80050fe <__libc_fini_array+0x22>
 80050e8:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80050ec:	3b01      	subs	r3, #1
 80050ee:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80050f2:	3c01      	subs	r4, #1
 80050f4:	f855 3904 	ldr.w	r3, [r5], #-4
 80050f8:	4798      	blx	r3
 80050fa:	2c00      	cmp	r4, #0
 80050fc:	d1f9      	bne.n	80050f2 <__libc_fini_array+0x16>
 80050fe:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005102:	f001 befd 	b.w	8006f00 <_fini>
 8005106:	bf00      	nop
 8005108:	0800745c 	.word	0x0800745c
 800510c:	08007458 	.word	0x08007458

08005110 <_malloc_trim_r>:
 8005110:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005112:	4f24      	ldr	r7, [pc, #144]	; (80051a4 <_malloc_trim_r+0x94>)
 8005114:	460c      	mov	r4, r1
 8005116:	4606      	mov	r6, r0
 8005118:	f000 fe7c 	bl	8005e14 <__malloc_lock>
 800511c:	68bb      	ldr	r3, [r7, #8]
 800511e:	685d      	ldr	r5, [r3, #4]
 8005120:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005124:	310f      	adds	r1, #15
 8005126:	f025 0503 	bic.w	r5, r5, #3
 800512a:	4429      	add	r1, r5
 800512c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005130:	f021 010f 	bic.w	r1, r1, #15
 8005134:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005138:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800513c:	db07      	blt.n	800514e <_malloc_trim_r+0x3e>
 800513e:	2100      	movs	r1, #0
 8005140:	4630      	mov	r0, r6
 8005142:	f001 fb5f 	bl	8006804 <_sbrk_r>
 8005146:	68bb      	ldr	r3, [r7, #8]
 8005148:	442b      	add	r3, r5
 800514a:	4298      	cmp	r0, r3
 800514c:	d004      	beq.n	8005158 <_malloc_trim_r+0x48>
 800514e:	4630      	mov	r0, r6
 8005150:	f000 fe66 	bl	8005e20 <__malloc_unlock>
 8005154:	2000      	movs	r0, #0
 8005156:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005158:	4261      	negs	r1, r4
 800515a:	4630      	mov	r0, r6
 800515c:	f001 fb52 	bl	8006804 <_sbrk_r>
 8005160:	3001      	adds	r0, #1
 8005162:	d00d      	beq.n	8005180 <_malloc_trim_r+0x70>
 8005164:	4b10      	ldr	r3, [pc, #64]	; (80051a8 <_malloc_trim_r+0x98>)
 8005166:	68ba      	ldr	r2, [r7, #8]
 8005168:	6819      	ldr	r1, [r3, #0]
 800516a:	1b2d      	subs	r5, r5, r4
 800516c:	f045 0501 	orr.w	r5, r5, #1
 8005170:	4630      	mov	r0, r6
 8005172:	1b09      	subs	r1, r1, r4
 8005174:	6055      	str	r5, [r2, #4]
 8005176:	6019      	str	r1, [r3, #0]
 8005178:	f000 fe52 	bl	8005e20 <__malloc_unlock>
 800517c:	2001      	movs	r0, #1
 800517e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005180:	2100      	movs	r1, #0
 8005182:	4630      	mov	r0, r6
 8005184:	f001 fb3e 	bl	8006804 <_sbrk_r>
 8005188:	68ba      	ldr	r2, [r7, #8]
 800518a:	1a83      	subs	r3, r0, r2
 800518c:	2b0f      	cmp	r3, #15
 800518e:	ddde      	ble.n	800514e <_malloc_trim_r+0x3e>
 8005190:	4c06      	ldr	r4, [pc, #24]	; (80051ac <_malloc_trim_r+0x9c>)
 8005192:	4905      	ldr	r1, [pc, #20]	; (80051a8 <_malloc_trim_r+0x98>)
 8005194:	6824      	ldr	r4, [r4, #0]
 8005196:	f043 0301 	orr.w	r3, r3, #1
 800519a:	1b00      	subs	r0, r0, r4
 800519c:	6053      	str	r3, [r2, #4]
 800519e:	6008      	str	r0, [r1, #0]
 80051a0:	e7d5      	b.n	800514e <_malloc_trim_r+0x3e>
 80051a2:	bf00      	nop
 80051a4:	2000044c 	.word	0x2000044c
 80051a8:	20000a6c 	.word	0x20000a6c
 80051ac:	20000854 	.word	0x20000854

080051b0 <_free_r>:
 80051b0:	2900      	cmp	r1, #0
 80051b2:	d053      	beq.n	800525c <_free_r+0xac>
 80051b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80051b6:	460c      	mov	r4, r1
 80051b8:	4606      	mov	r6, r0
 80051ba:	f000 fe2b 	bl	8005e14 <__malloc_lock>
 80051be:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80051c2:	4f71      	ldr	r7, [pc, #452]	; (8005388 <_free_r+0x1d8>)
 80051c4:	f02c 0101 	bic.w	r1, ip, #1
 80051c8:	f1a4 0508 	sub.w	r5, r4, #8
 80051cc:	186b      	adds	r3, r5, r1
 80051ce:	68b8      	ldr	r0, [r7, #8]
 80051d0:	685a      	ldr	r2, [r3, #4]
 80051d2:	4298      	cmp	r0, r3
 80051d4:	f022 0203 	bic.w	r2, r2, #3
 80051d8:	d053      	beq.n	8005282 <_free_r+0xd2>
 80051da:	f01c 0f01 	tst.w	ip, #1
 80051de:	605a      	str	r2, [r3, #4]
 80051e0:	eb03 0002 	add.w	r0, r3, r2
 80051e4:	d13b      	bne.n	800525e <_free_r+0xae>
 80051e6:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80051ea:	6840      	ldr	r0, [r0, #4]
 80051ec:	eba5 050c 	sub.w	r5, r5, ip
 80051f0:	f107 0e08 	add.w	lr, r7, #8
 80051f4:	68ac      	ldr	r4, [r5, #8]
 80051f6:	4574      	cmp	r4, lr
 80051f8:	4461      	add	r1, ip
 80051fa:	f000 0001 	and.w	r0, r0, #1
 80051fe:	d075      	beq.n	80052ec <_free_r+0x13c>
 8005200:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005204:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005208:	f8cc 4008 	str.w	r4, [ip, #8]
 800520c:	b360      	cbz	r0, 8005268 <_free_r+0xb8>
 800520e:	f041 0301 	orr.w	r3, r1, #1
 8005212:	606b      	str	r3, [r5, #4]
 8005214:	5069      	str	r1, [r5, r1]
 8005216:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800521a:	d350      	bcc.n	80052be <_free_r+0x10e>
 800521c:	0a4b      	lsrs	r3, r1, #9
 800521e:	2b04      	cmp	r3, #4
 8005220:	d870      	bhi.n	8005304 <_free_r+0x154>
 8005222:	098b      	lsrs	r3, r1, #6
 8005224:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005228:	00e4      	lsls	r4, r4, #3
 800522a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 800522e:	1938      	adds	r0, r7, r4
 8005230:	593b      	ldr	r3, [r7, r4]
 8005232:	3808      	subs	r0, #8
 8005234:	4298      	cmp	r0, r3
 8005236:	d078      	beq.n	800532a <_free_r+0x17a>
 8005238:	685a      	ldr	r2, [r3, #4]
 800523a:	f022 0203 	bic.w	r2, r2, #3
 800523e:	428a      	cmp	r2, r1
 8005240:	d971      	bls.n	8005326 <_free_r+0x176>
 8005242:	689b      	ldr	r3, [r3, #8]
 8005244:	4298      	cmp	r0, r3
 8005246:	d1f7      	bne.n	8005238 <_free_r+0x88>
 8005248:	68c3      	ldr	r3, [r0, #12]
 800524a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 800524e:	609d      	str	r5, [r3, #8]
 8005250:	60c5      	str	r5, [r0, #12]
 8005252:	4630      	mov	r0, r6
 8005254:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005258:	f000 bde2 	b.w	8005e20 <__malloc_unlock>
 800525c:	4770      	bx	lr
 800525e:	6840      	ldr	r0, [r0, #4]
 8005260:	f000 0001 	and.w	r0, r0, #1
 8005264:	2800      	cmp	r0, #0
 8005266:	d1d2      	bne.n	800520e <_free_r+0x5e>
 8005268:	6898      	ldr	r0, [r3, #8]
 800526a:	4c48      	ldr	r4, [pc, #288]	; (800538c <_free_r+0x1dc>)
 800526c:	4411      	add	r1, r2
 800526e:	42a0      	cmp	r0, r4
 8005270:	f041 0201 	orr.w	r2, r1, #1
 8005274:	d062      	beq.n	800533c <_free_r+0x18c>
 8005276:	68db      	ldr	r3, [r3, #12]
 8005278:	60c3      	str	r3, [r0, #12]
 800527a:	6098      	str	r0, [r3, #8]
 800527c:	606a      	str	r2, [r5, #4]
 800527e:	5069      	str	r1, [r5, r1]
 8005280:	e7c9      	b.n	8005216 <_free_r+0x66>
 8005282:	f01c 0f01 	tst.w	ip, #1
 8005286:	440a      	add	r2, r1
 8005288:	d107      	bne.n	800529a <_free_r+0xea>
 800528a:	f854 3c08 	ldr.w	r3, [r4, #-8]
 800528e:	1aed      	subs	r5, r5, r3
 8005290:	441a      	add	r2, r3
 8005292:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8005296:	60cb      	str	r3, [r1, #12]
 8005298:	6099      	str	r1, [r3, #8]
 800529a:	4b3d      	ldr	r3, [pc, #244]	; (8005390 <_free_r+0x1e0>)
 800529c:	681b      	ldr	r3, [r3, #0]
 800529e:	f042 0101 	orr.w	r1, r2, #1
 80052a2:	4293      	cmp	r3, r2
 80052a4:	6069      	str	r1, [r5, #4]
 80052a6:	60bd      	str	r5, [r7, #8]
 80052a8:	d804      	bhi.n	80052b4 <_free_r+0x104>
 80052aa:	4b3a      	ldr	r3, [pc, #232]	; (8005394 <_free_r+0x1e4>)
 80052ac:	4630      	mov	r0, r6
 80052ae:	6819      	ldr	r1, [r3, #0]
 80052b0:	f7ff ff2e 	bl	8005110 <_malloc_trim_r>
 80052b4:	4630      	mov	r0, r6
 80052b6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80052ba:	f000 bdb1 	b.w	8005e20 <__malloc_unlock>
 80052be:	08c9      	lsrs	r1, r1, #3
 80052c0:	6878      	ldr	r0, [r7, #4]
 80052c2:	1c4a      	adds	r2, r1, #1
 80052c4:	2301      	movs	r3, #1
 80052c6:	1089      	asrs	r1, r1, #2
 80052c8:	408b      	lsls	r3, r1
 80052ca:	4303      	orrs	r3, r0
 80052cc:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80052d0:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80052d4:	607b      	str	r3, [r7, #4]
 80052d6:	3908      	subs	r1, #8
 80052d8:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80052dc:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80052e0:	60c5      	str	r5, [r0, #12]
 80052e2:	4630      	mov	r0, r6
 80052e4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80052e8:	f000 bd9a 	b.w	8005e20 <__malloc_unlock>
 80052ec:	2800      	cmp	r0, #0
 80052ee:	d145      	bne.n	800537c <_free_r+0x1cc>
 80052f0:	440a      	add	r2, r1
 80052f2:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 80052f6:	f042 0001 	orr.w	r0, r2, #1
 80052fa:	60cb      	str	r3, [r1, #12]
 80052fc:	6099      	str	r1, [r3, #8]
 80052fe:	6068      	str	r0, [r5, #4]
 8005300:	50aa      	str	r2, [r5, r2]
 8005302:	e7d7      	b.n	80052b4 <_free_r+0x104>
 8005304:	2b14      	cmp	r3, #20
 8005306:	d908      	bls.n	800531a <_free_r+0x16a>
 8005308:	2b54      	cmp	r3, #84	; 0x54
 800530a:	d81e      	bhi.n	800534a <_free_r+0x19a>
 800530c:	0b0b      	lsrs	r3, r1, #12
 800530e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005312:	00e4      	lsls	r4, r4, #3
 8005314:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005318:	e789      	b.n	800522e <_free_r+0x7e>
 800531a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 800531e:	00e4      	lsls	r4, r4, #3
 8005320:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005324:	e783      	b.n	800522e <_free_r+0x7e>
 8005326:	4618      	mov	r0, r3
 8005328:	e78e      	b.n	8005248 <_free_r+0x98>
 800532a:	1093      	asrs	r3, r2, #2
 800532c:	6879      	ldr	r1, [r7, #4]
 800532e:	2201      	movs	r2, #1
 8005330:	fa02 f303 	lsl.w	r3, r2, r3
 8005334:	430b      	orrs	r3, r1
 8005336:	607b      	str	r3, [r7, #4]
 8005338:	4603      	mov	r3, r0
 800533a:	e786      	b.n	800524a <_free_r+0x9a>
 800533c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005340:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005344:	606a      	str	r2, [r5, #4]
 8005346:	5069      	str	r1, [r5, r1]
 8005348:	e7b4      	b.n	80052b4 <_free_r+0x104>
 800534a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800534e:	d806      	bhi.n	800535e <_free_r+0x1ae>
 8005350:	0bcb      	lsrs	r3, r1, #15
 8005352:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005356:	00e4      	lsls	r4, r4, #3
 8005358:	f103 0277 	add.w	r2, r3, #119	; 0x77
 800535c:	e767      	b.n	800522e <_free_r+0x7e>
 800535e:	f240 5254 	movw	r2, #1364	; 0x554
 8005362:	4293      	cmp	r3, r2
 8005364:	d806      	bhi.n	8005374 <_free_r+0x1c4>
 8005366:	0c8b      	lsrs	r3, r1, #18
 8005368:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 800536c:	00e4      	lsls	r4, r4, #3
 800536e:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005372:	e75c      	b.n	800522e <_free_r+0x7e>
 8005374:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005378:	227e      	movs	r2, #126	; 0x7e
 800537a:	e758      	b.n	800522e <_free_r+0x7e>
 800537c:	f041 0201 	orr.w	r2, r1, #1
 8005380:	606a      	str	r2, [r5, #4]
 8005382:	6019      	str	r1, [r3, #0]
 8005384:	e796      	b.n	80052b4 <_free_r+0x104>
 8005386:	bf00      	nop
 8005388:	2000044c 	.word	0x2000044c
 800538c:	20000454 	.word	0x20000454
 8005390:	20000858 	.word	0x20000858
 8005394:	20000a9c 	.word	0x20000a9c

08005398 <__sfvwrite_r>:
 8005398:	6893      	ldr	r3, [r2, #8]
 800539a:	2b00      	cmp	r3, #0
 800539c:	f000 80e4 	beq.w	8005568 <__sfvwrite_r+0x1d0>
 80053a0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80053a4:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80053a8:	b29b      	uxth	r3, r3
 80053aa:	460c      	mov	r4, r1
 80053ac:	0719      	lsls	r1, r3, #28
 80053ae:	b083      	sub	sp, #12
 80053b0:	4682      	mov	sl, r0
 80053b2:	4690      	mov	r8, r2
 80053b4:	d535      	bpl.n	8005422 <__sfvwrite_r+0x8a>
 80053b6:	6922      	ldr	r2, [r4, #16]
 80053b8:	b39a      	cbz	r2, 8005422 <__sfvwrite_r+0x8a>
 80053ba:	f013 0202 	ands.w	r2, r3, #2
 80053be:	f8d8 6000 	ldr.w	r6, [r8]
 80053c2:	d03d      	beq.n	8005440 <__sfvwrite_r+0xa8>
 80053c4:	2700      	movs	r7, #0
 80053c6:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80053ca:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80053ce:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005690 <__sfvwrite_r+0x2f8>
 80053d2:	463d      	mov	r5, r7
 80053d4:	454d      	cmp	r5, r9
 80053d6:	462b      	mov	r3, r5
 80053d8:	463a      	mov	r2, r7
 80053da:	bf28      	it	cs
 80053dc:	464b      	movcs	r3, r9
 80053de:	4661      	mov	r1, ip
 80053e0:	4650      	mov	r0, sl
 80053e2:	b1d5      	cbz	r5, 800541a <__sfvwrite_r+0x82>
 80053e4:	47d8      	blx	fp
 80053e6:	2800      	cmp	r0, #0
 80053e8:	f340 80c6 	ble.w	8005578 <__sfvwrite_r+0x1e0>
 80053ec:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80053f0:	1a1b      	subs	r3, r3, r0
 80053f2:	4407      	add	r7, r0
 80053f4:	1a2d      	subs	r5, r5, r0
 80053f6:	f8c8 3008 	str.w	r3, [r8, #8]
 80053fa:	2b00      	cmp	r3, #0
 80053fc:	f000 80b0 	beq.w	8005560 <__sfvwrite_r+0x1c8>
 8005400:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005404:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005408:	454d      	cmp	r5, r9
 800540a:	462b      	mov	r3, r5
 800540c:	463a      	mov	r2, r7
 800540e:	bf28      	it	cs
 8005410:	464b      	movcs	r3, r9
 8005412:	4661      	mov	r1, ip
 8005414:	4650      	mov	r0, sl
 8005416:	2d00      	cmp	r5, #0
 8005418:	d1e4      	bne.n	80053e4 <__sfvwrite_r+0x4c>
 800541a:	e9d6 7500 	ldrd	r7, r5, [r6]
 800541e:	3608      	adds	r6, #8
 8005420:	e7d8      	b.n	80053d4 <__sfvwrite_r+0x3c>
 8005422:	4621      	mov	r1, r4
 8005424:	4650      	mov	r0, sl
 8005426:	f7fe fd03 	bl	8003e30 <__swsetup_r>
 800542a:	2800      	cmp	r0, #0
 800542c:	f040 812a 	bne.w	8005684 <__sfvwrite_r+0x2ec>
 8005430:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005434:	f8d8 6000 	ldr.w	r6, [r8]
 8005438:	b29b      	uxth	r3, r3
 800543a:	f013 0202 	ands.w	r2, r3, #2
 800543e:	d1c1      	bne.n	80053c4 <__sfvwrite_r+0x2c>
 8005440:	f013 0901 	ands.w	r9, r3, #1
 8005444:	d15d      	bne.n	8005502 <__sfvwrite_r+0x16a>
 8005446:	68a7      	ldr	r7, [r4, #8]
 8005448:	6820      	ldr	r0, [r4, #0]
 800544a:	464d      	mov	r5, r9
 800544c:	2d00      	cmp	r5, #0
 800544e:	d054      	beq.n	80054fa <__sfvwrite_r+0x162>
 8005450:	059a      	lsls	r2, r3, #22
 8005452:	f140 809b 	bpl.w	800558c <__sfvwrite_r+0x1f4>
 8005456:	42af      	cmp	r7, r5
 8005458:	46bb      	mov	fp, r7
 800545a:	f200 80d8 	bhi.w	800560e <__sfvwrite_r+0x276>
 800545e:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005462:	d02f      	beq.n	80054c4 <__sfvwrite_r+0x12c>
 8005464:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005468:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 800546c:	eba0 0b01 	sub.w	fp, r0, r1
 8005470:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005474:	1c68      	adds	r0, r5, #1
 8005476:	107f      	asrs	r7, r7, #1
 8005478:	4458      	add	r0, fp
 800547a:	42b8      	cmp	r0, r7
 800547c:	463a      	mov	r2, r7
 800547e:	bf84      	itt	hi
 8005480:	4607      	movhi	r7, r0
 8005482:	463a      	movhi	r2, r7
 8005484:	055b      	lsls	r3, r3, #21
 8005486:	f140 80d3 	bpl.w	8005630 <__sfvwrite_r+0x298>
 800548a:	4611      	mov	r1, r2
 800548c:	4650      	mov	r0, sl
 800548e:	f000 f9b9 	bl	8005804 <_malloc_r>
 8005492:	2800      	cmp	r0, #0
 8005494:	f000 80f0 	beq.w	8005678 <__sfvwrite_r+0x2e0>
 8005498:	465a      	mov	r2, fp
 800549a:	6921      	ldr	r1, [r4, #16]
 800549c:	9001      	str	r0, [sp, #4]
 800549e:	f7fb f82f 	bl	8000500 <memcpy>
 80054a2:	89a2      	ldrh	r2, [r4, #12]
 80054a4:	9b01      	ldr	r3, [sp, #4]
 80054a6:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80054aa:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80054ae:	81a2      	strh	r2, [r4, #12]
 80054b0:	eba7 020b 	sub.w	r2, r7, fp
 80054b4:	eb03 000b 	add.w	r0, r3, fp
 80054b8:	6167      	str	r7, [r4, #20]
 80054ba:	6123      	str	r3, [r4, #16]
 80054bc:	6020      	str	r0, [r4, #0]
 80054be:	60a2      	str	r2, [r4, #8]
 80054c0:	462f      	mov	r7, r5
 80054c2:	46ab      	mov	fp, r5
 80054c4:	465a      	mov	r2, fp
 80054c6:	4649      	mov	r1, r9
 80054c8:	f000 fc40 	bl	8005d4c <memmove>
 80054cc:	68a2      	ldr	r2, [r4, #8]
 80054ce:	6823      	ldr	r3, [r4, #0]
 80054d0:	1bd2      	subs	r2, r2, r7
 80054d2:	445b      	add	r3, fp
 80054d4:	462f      	mov	r7, r5
 80054d6:	60a2      	str	r2, [r4, #8]
 80054d8:	6023      	str	r3, [r4, #0]
 80054da:	2500      	movs	r5, #0
 80054dc:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80054e0:	1bdb      	subs	r3, r3, r7
 80054e2:	44b9      	add	r9, r7
 80054e4:	f8c8 3008 	str.w	r3, [r8, #8]
 80054e8:	2b00      	cmp	r3, #0
 80054ea:	d039      	beq.n	8005560 <__sfvwrite_r+0x1c8>
 80054ec:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80054f0:	68a7      	ldr	r7, [r4, #8]
 80054f2:	6820      	ldr	r0, [r4, #0]
 80054f4:	b29b      	uxth	r3, r3
 80054f6:	2d00      	cmp	r5, #0
 80054f8:	d1aa      	bne.n	8005450 <__sfvwrite_r+0xb8>
 80054fa:	e9d6 9500 	ldrd	r9, r5, [r6]
 80054fe:	3608      	adds	r6, #8
 8005500:	e7a4      	b.n	800544c <__sfvwrite_r+0xb4>
 8005502:	4633      	mov	r3, r6
 8005504:	4691      	mov	r9, r2
 8005506:	4610      	mov	r0, r2
 8005508:	4617      	mov	r7, r2
 800550a:	464e      	mov	r6, r9
 800550c:	469b      	mov	fp, r3
 800550e:	2f00      	cmp	r7, #0
 8005510:	d06b      	beq.n	80055ea <__sfvwrite_r+0x252>
 8005512:	2800      	cmp	r0, #0
 8005514:	d071      	beq.n	80055fa <__sfvwrite_r+0x262>
 8005516:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 800551a:	6820      	ldr	r0, [r4, #0]
 800551c:	45b9      	cmp	r9, r7
 800551e:	464b      	mov	r3, r9
 8005520:	bf28      	it	cs
 8005522:	463b      	movcs	r3, r7
 8005524:	4288      	cmp	r0, r1
 8005526:	d903      	bls.n	8005530 <__sfvwrite_r+0x198>
 8005528:	68a5      	ldr	r5, [r4, #8]
 800552a:	4415      	add	r5, r2
 800552c:	42ab      	cmp	r3, r5
 800552e:	dc71      	bgt.n	8005614 <__sfvwrite_r+0x27c>
 8005530:	429a      	cmp	r2, r3
 8005532:	f300 8093 	bgt.w	800565c <__sfvwrite_r+0x2c4>
 8005536:	4613      	mov	r3, r2
 8005538:	6a65      	ldr	r5, [r4, #36]	; 0x24
 800553a:	69e1      	ldr	r1, [r4, #28]
 800553c:	4632      	mov	r2, r6
 800553e:	4650      	mov	r0, sl
 8005540:	47a8      	blx	r5
 8005542:	1e05      	subs	r5, r0, #0
 8005544:	dd18      	ble.n	8005578 <__sfvwrite_r+0x1e0>
 8005546:	ebb9 0905 	subs.w	r9, r9, r5
 800554a:	d00f      	beq.n	800556c <__sfvwrite_r+0x1d4>
 800554c:	2001      	movs	r0, #1
 800554e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005552:	1b5b      	subs	r3, r3, r5
 8005554:	442e      	add	r6, r5
 8005556:	1b7f      	subs	r7, r7, r5
 8005558:	f8c8 3008 	str.w	r3, [r8, #8]
 800555c:	2b00      	cmp	r3, #0
 800555e:	d1d6      	bne.n	800550e <__sfvwrite_r+0x176>
 8005560:	2000      	movs	r0, #0
 8005562:	b003      	add	sp, #12
 8005564:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005568:	2000      	movs	r0, #0
 800556a:	4770      	bx	lr
 800556c:	4621      	mov	r1, r4
 800556e:	4650      	mov	r0, sl
 8005570:	f7ff fd20 	bl	8004fb4 <_fflush_r>
 8005574:	2800      	cmp	r0, #0
 8005576:	d0ea      	beq.n	800554e <__sfvwrite_r+0x1b6>
 8005578:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800557c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005580:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005584:	81a3      	strh	r3, [r4, #12]
 8005586:	b003      	add	sp, #12
 8005588:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800558c:	6923      	ldr	r3, [r4, #16]
 800558e:	4283      	cmp	r3, r0
 8005590:	d315      	bcc.n	80055be <__sfvwrite_r+0x226>
 8005592:	6961      	ldr	r1, [r4, #20]
 8005594:	42a9      	cmp	r1, r5
 8005596:	d812      	bhi.n	80055be <__sfvwrite_r+0x226>
 8005598:	4b3c      	ldr	r3, [pc, #240]	; (800568c <__sfvwrite_r+0x2f4>)
 800559a:	6a67      	ldr	r7, [r4, #36]	; 0x24
 800559c:	429d      	cmp	r5, r3
 800559e:	bf94      	ite	ls
 80055a0:	462b      	movls	r3, r5
 80055a2:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80055a6:	464a      	mov	r2, r9
 80055a8:	fb93 f3f1 	sdiv	r3, r3, r1
 80055ac:	4650      	mov	r0, sl
 80055ae:	fb01 f303 	mul.w	r3, r1, r3
 80055b2:	69e1      	ldr	r1, [r4, #28]
 80055b4:	47b8      	blx	r7
 80055b6:	1e07      	subs	r7, r0, #0
 80055b8:	ddde      	ble.n	8005578 <__sfvwrite_r+0x1e0>
 80055ba:	1bed      	subs	r5, r5, r7
 80055bc:	e78e      	b.n	80054dc <__sfvwrite_r+0x144>
 80055be:	42af      	cmp	r7, r5
 80055c0:	bf28      	it	cs
 80055c2:	462f      	movcs	r7, r5
 80055c4:	463a      	mov	r2, r7
 80055c6:	4649      	mov	r1, r9
 80055c8:	f000 fbc0 	bl	8005d4c <memmove>
 80055cc:	68a3      	ldr	r3, [r4, #8]
 80055ce:	6822      	ldr	r2, [r4, #0]
 80055d0:	1bdb      	subs	r3, r3, r7
 80055d2:	443a      	add	r2, r7
 80055d4:	60a3      	str	r3, [r4, #8]
 80055d6:	6022      	str	r2, [r4, #0]
 80055d8:	2b00      	cmp	r3, #0
 80055da:	d1ee      	bne.n	80055ba <__sfvwrite_r+0x222>
 80055dc:	4621      	mov	r1, r4
 80055de:	4650      	mov	r0, sl
 80055e0:	f7ff fce8 	bl	8004fb4 <_fflush_r>
 80055e4:	2800      	cmp	r0, #0
 80055e6:	d0e8      	beq.n	80055ba <__sfvwrite_r+0x222>
 80055e8:	e7c6      	b.n	8005578 <__sfvwrite_r+0x1e0>
 80055ea:	f10b 0308 	add.w	r3, fp, #8
 80055ee:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 80055f2:	469b      	mov	fp, r3
 80055f4:	3308      	adds	r3, #8
 80055f6:	2f00      	cmp	r7, #0
 80055f8:	d0f9      	beq.n	80055ee <__sfvwrite_r+0x256>
 80055fa:	463a      	mov	r2, r7
 80055fc:	210a      	movs	r1, #10
 80055fe:	4630      	mov	r0, r6
 8005600:	f7fb f88e 	bl	8000720 <memchr>
 8005604:	b338      	cbz	r0, 8005656 <__sfvwrite_r+0x2be>
 8005606:	3001      	adds	r0, #1
 8005608:	eba0 0906 	sub.w	r9, r0, r6
 800560c:	e783      	b.n	8005516 <__sfvwrite_r+0x17e>
 800560e:	462f      	mov	r7, r5
 8005610:	46ab      	mov	fp, r5
 8005612:	e757      	b.n	80054c4 <__sfvwrite_r+0x12c>
 8005614:	4631      	mov	r1, r6
 8005616:	462a      	mov	r2, r5
 8005618:	f000 fb98 	bl	8005d4c <memmove>
 800561c:	6823      	ldr	r3, [r4, #0]
 800561e:	442b      	add	r3, r5
 8005620:	6023      	str	r3, [r4, #0]
 8005622:	4621      	mov	r1, r4
 8005624:	4650      	mov	r0, sl
 8005626:	f7ff fcc5 	bl	8004fb4 <_fflush_r>
 800562a:	2800      	cmp	r0, #0
 800562c:	d08b      	beq.n	8005546 <__sfvwrite_r+0x1ae>
 800562e:	e7a3      	b.n	8005578 <__sfvwrite_r+0x1e0>
 8005630:	4650      	mov	r0, sl
 8005632:	f000 ff05 	bl	8006440 <_realloc_r>
 8005636:	4603      	mov	r3, r0
 8005638:	2800      	cmp	r0, #0
 800563a:	f47f af39 	bne.w	80054b0 <__sfvwrite_r+0x118>
 800563e:	6921      	ldr	r1, [r4, #16]
 8005640:	4650      	mov	r0, sl
 8005642:	f7ff fdb5 	bl	80051b0 <_free_r>
 8005646:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800564a:	220c      	movs	r2, #12
 800564c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005650:	f8ca 2000 	str.w	r2, [sl]
 8005654:	e792      	b.n	800557c <__sfvwrite_r+0x1e4>
 8005656:	f107 0901 	add.w	r9, r7, #1
 800565a:	e75c      	b.n	8005516 <__sfvwrite_r+0x17e>
 800565c:	461a      	mov	r2, r3
 800565e:	4631      	mov	r1, r6
 8005660:	9301      	str	r3, [sp, #4]
 8005662:	f000 fb73 	bl	8005d4c <memmove>
 8005666:	9b01      	ldr	r3, [sp, #4]
 8005668:	68a1      	ldr	r1, [r4, #8]
 800566a:	6822      	ldr	r2, [r4, #0]
 800566c:	1ac9      	subs	r1, r1, r3
 800566e:	441a      	add	r2, r3
 8005670:	60a1      	str	r1, [r4, #8]
 8005672:	6022      	str	r2, [r4, #0]
 8005674:	461d      	mov	r5, r3
 8005676:	e766      	b.n	8005546 <__sfvwrite_r+0x1ae>
 8005678:	230c      	movs	r3, #12
 800567a:	f8ca 3000 	str.w	r3, [sl]
 800567e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005682:	e77b      	b.n	800557c <__sfvwrite_r+0x1e4>
 8005684:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005688:	e76b      	b.n	8005562 <__sfvwrite_r+0x1ca>
 800568a:	bf00      	nop
 800568c:	7ffffffe 	.word	0x7ffffffe
 8005690:	7ffffc00 	.word	0x7ffffc00

08005694 <_fwalk_reent>:
 8005694:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005698:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 800569c:	d01f      	beq.n	80056de <_fwalk_reent+0x4a>
 800569e:	4688      	mov	r8, r1
 80056a0:	4606      	mov	r6, r0
 80056a2:	f04f 0900 	mov.w	r9, #0
 80056a6:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 80056aa:	3d01      	subs	r5, #1
 80056ac:	d411      	bmi.n	80056d2 <_fwalk_reent+0x3e>
 80056ae:	89a3      	ldrh	r3, [r4, #12]
 80056b0:	2b01      	cmp	r3, #1
 80056b2:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 80056b6:	4621      	mov	r1, r4
 80056b8:	4630      	mov	r0, r6
 80056ba:	d906      	bls.n	80056ca <_fwalk_reent+0x36>
 80056bc:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80056c0:	3301      	adds	r3, #1
 80056c2:	d002      	beq.n	80056ca <_fwalk_reent+0x36>
 80056c4:	47c0      	blx	r8
 80056c6:	ea49 0900 	orr.w	r9, r9, r0
 80056ca:	1c6b      	adds	r3, r5, #1
 80056cc:	f104 0468 	add.w	r4, r4, #104	; 0x68
 80056d0:	d1ed      	bne.n	80056ae <_fwalk_reent+0x1a>
 80056d2:	683f      	ldr	r7, [r7, #0]
 80056d4:	2f00      	cmp	r7, #0
 80056d6:	d1e6      	bne.n	80056a6 <_fwalk_reent+0x12>
 80056d8:	4648      	mov	r0, r9
 80056da:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80056de:	46b9      	mov	r9, r7
 80056e0:	4648      	mov	r0, r9
 80056e2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80056e6:	bf00      	nop

080056e8 <_localeconv_r>:
 80056e8:	4a04      	ldr	r2, [pc, #16]	; (80056fc <_localeconv_r+0x14>)
 80056ea:	4b05      	ldr	r3, [pc, #20]	; (8005700 <_localeconv_r+0x18>)
 80056ec:	6812      	ldr	r2, [r2, #0]
 80056ee:	6b50      	ldr	r0, [r2, #52]	; 0x34
 80056f0:	2800      	cmp	r0, #0
 80056f2:	bf08      	it	eq
 80056f4:	4618      	moveq	r0, r3
 80056f6:	30f0      	adds	r0, #240	; 0xf0
 80056f8:	4770      	bx	lr
 80056fa:	bf00      	nop
 80056fc:	20000018 	.word	0x20000018
 8005700:	2000085c 	.word	0x2000085c

08005704 <__retarget_lock_init_recursive>:
 8005704:	4770      	bx	lr
 8005706:	bf00      	nop

08005708 <__retarget_lock_close_recursive>:
 8005708:	4770      	bx	lr
 800570a:	bf00      	nop

0800570c <__retarget_lock_acquire_recursive>:
 800570c:	4770      	bx	lr
 800570e:	bf00      	nop

08005710 <__retarget_lock_release_recursive>:
 8005710:	4770      	bx	lr
 8005712:	bf00      	nop

08005714 <__swhatbuf_r>:
 8005714:	b570      	push	{r4, r5, r6, lr}
 8005716:	460c      	mov	r4, r1
 8005718:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800571c:	2900      	cmp	r1, #0
 800571e:	b096      	sub	sp, #88	; 0x58
 8005720:	4615      	mov	r5, r2
 8005722:	461e      	mov	r6, r3
 8005724:	da0f      	bge.n	8005746 <__swhatbuf_r+0x32>
 8005726:	89a2      	ldrh	r2, [r4, #12]
 8005728:	2300      	movs	r3, #0
 800572a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 800572e:	6033      	str	r3, [r6, #0]
 8005730:	d104      	bne.n	800573c <__swhatbuf_r+0x28>
 8005732:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005736:	602b      	str	r3, [r5, #0]
 8005738:	b016      	add	sp, #88	; 0x58
 800573a:	bd70      	pop	{r4, r5, r6, pc}
 800573c:	2240      	movs	r2, #64	; 0x40
 800573e:	4618      	mov	r0, r3
 8005740:	602a      	str	r2, [r5, #0]
 8005742:	b016      	add	sp, #88	; 0x58
 8005744:	bd70      	pop	{r4, r5, r6, pc}
 8005746:	466a      	mov	r2, sp
 8005748:	f001 fad0 	bl	8006cec <_fstat_r>
 800574c:	2800      	cmp	r0, #0
 800574e:	dbea      	blt.n	8005726 <__swhatbuf_r+0x12>
 8005750:	9b01      	ldr	r3, [sp, #4]
 8005752:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005756:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 800575a:	fab3 f383 	clz	r3, r3
 800575e:	095b      	lsrs	r3, r3, #5
 8005760:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005764:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005768:	6033      	str	r3, [r6, #0]
 800576a:	602a      	str	r2, [r5, #0]
 800576c:	b016      	add	sp, #88	; 0x58
 800576e:	bd70      	pop	{r4, r5, r6, pc}

08005770 <__smakebuf_r>:
 8005770:	898a      	ldrh	r2, [r1, #12]
 8005772:	0792      	lsls	r2, r2, #30
 8005774:	460b      	mov	r3, r1
 8005776:	d506      	bpl.n	8005786 <__smakebuf_r+0x16>
 8005778:	f101 0243 	add.w	r2, r1, #67	; 0x43
 800577c:	2101      	movs	r1, #1
 800577e:	601a      	str	r2, [r3, #0]
 8005780:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005784:	4770      	bx	lr
 8005786:	b570      	push	{r4, r5, r6, lr}
 8005788:	b082      	sub	sp, #8
 800578a:	ab01      	add	r3, sp, #4
 800578c:	466a      	mov	r2, sp
 800578e:	460c      	mov	r4, r1
 8005790:	4605      	mov	r5, r0
 8005792:	f7ff ffbf 	bl	8005714 <__swhatbuf_r>
 8005796:	9900      	ldr	r1, [sp, #0]
 8005798:	4606      	mov	r6, r0
 800579a:	4628      	mov	r0, r5
 800579c:	f000 f832 	bl	8005804 <_malloc_r>
 80057a0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80057a4:	b1d8      	cbz	r0, 80057de <__smakebuf_r+0x6e>
 80057a6:	4916      	ldr	r1, [pc, #88]	; (8005800 <__smakebuf_r+0x90>)
 80057a8:	63e9      	str	r1, [r5, #60]	; 0x3c
 80057aa:	9a01      	ldr	r2, [sp, #4]
 80057ac:	9900      	ldr	r1, [sp, #0]
 80057ae:	6020      	str	r0, [r4, #0]
 80057b0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80057b4:	81a3      	strh	r3, [r4, #12]
 80057b6:	e9c4 0104 	strd	r0, r1, [r4, #16]
 80057ba:	b91a      	cbnz	r2, 80057c4 <__smakebuf_r+0x54>
 80057bc:	4333      	orrs	r3, r6
 80057be:	81a3      	strh	r3, [r4, #12]
 80057c0:	b002      	add	sp, #8
 80057c2:	bd70      	pop	{r4, r5, r6, pc}
 80057c4:	4628      	mov	r0, r5
 80057c6:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80057ca:	f001 faa3 	bl	8006d14 <_isatty_r>
 80057ce:	b1a0      	cbz	r0, 80057fa <__smakebuf_r+0x8a>
 80057d0:	89a3      	ldrh	r3, [r4, #12]
 80057d2:	f023 0303 	bic.w	r3, r3, #3
 80057d6:	f043 0301 	orr.w	r3, r3, #1
 80057da:	b21b      	sxth	r3, r3
 80057dc:	e7ee      	b.n	80057bc <__smakebuf_r+0x4c>
 80057de:	059a      	lsls	r2, r3, #22
 80057e0:	d4ee      	bmi.n	80057c0 <__smakebuf_r+0x50>
 80057e2:	f023 0303 	bic.w	r3, r3, #3
 80057e6:	f104 0243 	add.w	r2, r4, #67	; 0x43
 80057ea:	f043 0302 	orr.w	r3, r3, #2
 80057ee:	2101      	movs	r1, #1
 80057f0:	81a3      	strh	r3, [r4, #12]
 80057f2:	6022      	str	r2, [r4, #0]
 80057f4:	e9c4 2104 	strd	r2, r1, [r4, #16]
 80057f8:	e7e2      	b.n	80057c0 <__smakebuf_r+0x50>
 80057fa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80057fe:	e7dd      	b.n	80057bc <__smakebuf_r+0x4c>
 8005800:	08005061 	.word	0x08005061

08005804 <_malloc_r>:
 8005804:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005808:	f101 050b 	add.w	r5, r1, #11
 800580c:	2d16      	cmp	r5, #22
 800580e:	b083      	sub	sp, #12
 8005810:	4606      	mov	r6, r0
 8005812:	d823      	bhi.n	800585c <_malloc_r+0x58>
 8005814:	2910      	cmp	r1, #16
 8005816:	f200 80b9 	bhi.w	800598c <_malloc_r+0x188>
 800581a:	f000 fafb 	bl	8005e14 <__malloc_lock>
 800581e:	2510      	movs	r5, #16
 8005820:	2318      	movs	r3, #24
 8005822:	2002      	movs	r0, #2
 8005824:	4fc5      	ldr	r7, [pc, #788]	; (8005b3c <_malloc_r+0x338>)
 8005826:	443b      	add	r3, r7
 8005828:	f1a3 0208 	sub.w	r2, r3, #8
 800582c:	685c      	ldr	r4, [r3, #4]
 800582e:	4294      	cmp	r4, r2
 8005830:	f000 8166 	beq.w	8005b00 <_malloc_r+0x2fc>
 8005834:	6863      	ldr	r3, [r4, #4]
 8005836:	f023 0303 	bic.w	r3, r3, #3
 800583a:	4423      	add	r3, r4
 800583c:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005840:	685a      	ldr	r2, [r3, #4]
 8005842:	60e9      	str	r1, [r5, #12]
 8005844:	f042 0201 	orr.w	r2, r2, #1
 8005848:	608d      	str	r5, [r1, #8]
 800584a:	4630      	mov	r0, r6
 800584c:	605a      	str	r2, [r3, #4]
 800584e:	f000 fae7 	bl	8005e20 <__malloc_unlock>
 8005852:	3408      	adds	r4, #8
 8005854:	4620      	mov	r0, r4
 8005856:	b003      	add	sp, #12
 8005858:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800585c:	f035 0507 	bics.w	r5, r5, #7
 8005860:	f100 8094 	bmi.w	800598c <_malloc_r+0x188>
 8005864:	42a9      	cmp	r1, r5
 8005866:	f200 8091 	bhi.w	800598c <_malloc_r+0x188>
 800586a:	f000 fad3 	bl	8005e14 <__malloc_lock>
 800586e:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005872:	f0c0 8183 	bcc.w	8005b7c <_malloc_r+0x378>
 8005876:	0a6b      	lsrs	r3, r5, #9
 8005878:	f000 808f 	beq.w	800599a <_malloc_r+0x196>
 800587c:	2b04      	cmp	r3, #4
 800587e:	f200 8146 	bhi.w	8005b0e <_malloc_r+0x30a>
 8005882:	09ab      	lsrs	r3, r5, #6
 8005884:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005888:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 800588c:	00c3      	lsls	r3, r0, #3
 800588e:	4fab      	ldr	r7, [pc, #684]	; (8005b3c <_malloc_r+0x338>)
 8005890:	443b      	add	r3, r7
 8005892:	f1a3 0108 	sub.w	r1, r3, #8
 8005896:	685c      	ldr	r4, [r3, #4]
 8005898:	42a1      	cmp	r1, r4
 800589a:	d106      	bne.n	80058aa <_malloc_r+0xa6>
 800589c:	e00c      	b.n	80058b8 <_malloc_r+0xb4>
 800589e:	2a00      	cmp	r2, #0
 80058a0:	f280 811d 	bge.w	8005ade <_malloc_r+0x2da>
 80058a4:	68e4      	ldr	r4, [r4, #12]
 80058a6:	42a1      	cmp	r1, r4
 80058a8:	d006      	beq.n	80058b8 <_malloc_r+0xb4>
 80058aa:	6863      	ldr	r3, [r4, #4]
 80058ac:	f023 0303 	bic.w	r3, r3, #3
 80058b0:	1b5a      	subs	r2, r3, r5
 80058b2:	2a0f      	cmp	r2, #15
 80058b4:	ddf3      	ble.n	800589e <_malloc_r+0x9a>
 80058b6:	4660      	mov	r0, ip
 80058b8:	693c      	ldr	r4, [r7, #16]
 80058ba:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005b50 <_malloc_r+0x34c>
 80058be:	4564      	cmp	r4, ip
 80058c0:	d071      	beq.n	80059a6 <_malloc_r+0x1a2>
 80058c2:	6863      	ldr	r3, [r4, #4]
 80058c4:	f023 0303 	bic.w	r3, r3, #3
 80058c8:	1b5a      	subs	r2, r3, r5
 80058ca:	2a0f      	cmp	r2, #15
 80058cc:	f300 8144 	bgt.w	8005b58 <_malloc_r+0x354>
 80058d0:	2a00      	cmp	r2, #0
 80058d2:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 80058d6:	f280 8126 	bge.w	8005b26 <_malloc_r+0x322>
 80058da:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80058de:	f080 8169 	bcs.w	8005bb4 <_malloc_r+0x3b0>
 80058e2:	08db      	lsrs	r3, r3, #3
 80058e4:	1c59      	adds	r1, r3, #1
 80058e6:	687a      	ldr	r2, [r7, #4]
 80058e8:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 80058ec:	f8c4 8008 	str.w	r8, [r4, #8]
 80058f0:	f04f 0e01 	mov.w	lr, #1
 80058f4:	109b      	asrs	r3, r3, #2
 80058f6:	fa0e f303 	lsl.w	r3, lr, r3
 80058fa:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 80058fe:	4313      	orrs	r3, r2
 8005900:	f1ae 0208 	sub.w	r2, lr, #8
 8005904:	60e2      	str	r2, [r4, #12]
 8005906:	607b      	str	r3, [r7, #4]
 8005908:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 800590c:	f8c8 400c 	str.w	r4, [r8, #12]
 8005910:	1082      	asrs	r2, r0, #2
 8005912:	2401      	movs	r4, #1
 8005914:	4094      	lsls	r4, r2
 8005916:	429c      	cmp	r4, r3
 8005918:	d84b      	bhi.n	80059b2 <_malloc_r+0x1ae>
 800591a:	421c      	tst	r4, r3
 800591c:	d106      	bne.n	800592c <_malloc_r+0x128>
 800591e:	f020 0003 	bic.w	r0, r0, #3
 8005922:	0064      	lsls	r4, r4, #1
 8005924:	421c      	tst	r4, r3
 8005926:	f100 0004 	add.w	r0, r0, #4
 800592a:	d0fa      	beq.n	8005922 <_malloc_r+0x11e>
 800592c:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005930:	46ce      	mov	lr, r9
 8005932:	4680      	mov	r8, r0
 8005934:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005938:	459e      	cmp	lr, r3
 800593a:	d107      	bne.n	800594c <_malloc_r+0x148>
 800593c:	e122      	b.n	8005b84 <_malloc_r+0x380>
 800593e:	2a00      	cmp	r2, #0
 8005940:	f280 8129 	bge.w	8005b96 <_malloc_r+0x392>
 8005944:	68db      	ldr	r3, [r3, #12]
 8005946:	459e      	cmp	lr, r3
 8005948:	f000 811c 	beq.w	8005b84 <_malloc_r+0x380>
 800594c:	6859      	ldr	r1, [r3, #4]
 800594e:	f021 0103 	bic.w	r1, r1, #3
 8005952:	1b4a      	subs	r2, r1, r5
 8005954:	2a0f      	cmp	r2, #15
 8005956:	ddf2      	ble.n	800593e <_malloc_r+0x13a>
 8005958:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 800595c:	195c      	adds	r4, r3, r5
 800595e:	f045 0501 	orr.w	r5, r5, #1
 8005962:	605d      	str	r5, [r3, #4]
 8005964:	f042 0501 	orr.w	r5, r2, #1
 8005968:	f8c8 e00c 	str.w	lr, [r8, #12]
 800596c:	4630      	mov	r0, r6
 800596e:	f8ce 8008 	str.w	r8, [lr, #8]
 8005972:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005976:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 800597a:	6065      	str	r5, [r4, #4]
 800597c:	505a      	str	r2, [r3, r1]
 800597e:	9301      	str	r3, [sp, #4]
 8005980:	f000 fa4e 	bl	8005e20 <__malloc_unlock>
 8005984:	9b01      	ldr	r3, [sp, #4]
 8005986:	f103 0408 	add.w	r4, r3, #8
 800598a:	e763      	b.n	8005854 <_malloc_r+0x50>
 800598c:	2400      	movs	r4, #0
 800598e:	230c      	movs	r3, #12
 8005990:	4620      	mov	r0, r4
 8005992:	6033      	str	r3, [r6, #0]
 8005994:	b003      	add	sp, #12
 8005996:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800599a:	f44f 7300 	mov.w	r3, #512	; 0x200
 800599e:	2040      	movs	r0, #64	; 0x40
 80059a0:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 80059a4:	e773      	b.n	800588e <_malloc_r+0x8a>
 80059a6:	687b      	ldr	r3, [r7, #4]
 80059a8:	1082      	asrs	r2, r0, #2
 80059aa:	2401      	movs	r4, #1
 80059ac:	4094      	lsls	r4, r2
 80059ae:	429c      	cmp	r4, r3
 80059b0:	d9b3      	bls.n	800591a <_malloc_r+0x116>
 80059b2:	68bc      	ldr	r4, [r7, #8]
 80059b4:	6863      	ldr	r3, [r4, #4]
 80059b6:	f023 0903 	bic.w	r9, r3, #3
 80059ba:	45a9      	cmp	r9, r5
 80059bc:	d303      	bcc.n	80059c6 <_malloc_r+0x1c2>
 80059be:	eba9 0305 	sub.w	r3, r9, r5
 80059c2:	2b0f      	cmp	r3, #15
 80059c4:	dc7b      	bgt.n	8005abe <_malloc_r+0x2ba>
 80059c6:	4b5e      	ldr	r3, [pc, #376]	; (8005b40 <_malloc_r+0x33c>)
 80059c8:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005b54 <_malloc_r+0x350>
 80059cc:	681a      	ldr	r2, [r3, #0]
 80059ce:	f8da 3000 	ldr.w	r3, [sl]
 80059d2:	3301      	adds	r3, #1
 80059d4:	eb05 0802 	add.w	r8, r5, r2
 80059d8:	f000 8148 	beq.w	8005c6c <_malloc_r+0x468>
 80059dc:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 80059e0:	f108 080f 	add.w	r8, r8, #15
 80059e4:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 80059e8:	f028 080f 	bic.w	r8, r8, #15
 80059ec:	4641      	mov	r1, r8
 80059ee:	4630      	mov	r0, r6
 80059f0:	f000 ff08 	bl	8006804 <_sbrk_r>
 80059f4:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 80059f8:	4683      	mov	fp, r0
 80059fa:	f000 8104 	beq.w	8005c06 <_malloc_r+0x402>
 80059fe:	eb04 0009 	add.w	r0, r4, r9
 8005a02:	4558      	cmp	r0, fp
 8005a04:	f200 80fd 	bhi.w	8005c02 <_malloc_r+0x3fe>
 8005a08:	4a4e      	ldr	r2, [pc, #312]	; (8005b44 <_malloc_r+0x340>)
 8005a0a:	6813      	ldr	r3, [r2, #0]
 8005a0c:	4443      	add	r3, r8
 8005a0e:	6013      	str	r3, [r2, #0]
 8005a10:	f000 814d 	beq.w	8005cae <_malloc_r+0x4aa>
 8005a14:	f8da 1000 	ldr.w	r1, [sl]
 8005a18:	3101      	adds	r1, #1
 8005a1a:	bf1b      	ittet	ne
 8005a1c:	ebab 0000 	subne.w	r0, fp, r0
 8005a20:	181b      	addne	r3, r3, r0
 8005a22:	f8ca b000 	streq.w	fp, [sl]
 8005a26:	6013      	strne	r3, [r2, #0]
 8005a28:	f01b 0307 	ands.w	r3, fp, #7
 8005a2c:	f000 8134 	beq.w	8005c98 <_malloc_r+0x494>
 8005a30:	f1c3 0108 	rsb	r1, r3, #8
 8005a34:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005a38:	448b      	add	fp, r1
 8005a3a:	3308      	adds	r3, #8
 8005a3c:	44d8      	add	r8, fp
 8005a3e:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005a42:	eba3 0808 	sub.w	r8, r3, r8
 8005a46:	4641      	mov	r1, r8
 8005a48:	4630      	mov	r0, r6
 8005a4a:	9201      	str	r2, [sp, #4]
 8005a4c:	f000 feda 	bl	8006804 <_sbrk_r>
 8005a50:	1c43      	adds	r3, r0, #1
 8005a52:	9a01      	ldr	r2, [sp, #4]
 8005a54:	f000 8146 	beq.w	8005ce4 <_malloc_r+0x4e0>
 8005a58:	eba0 010b 	sub.w	r1, r0, fp
 8005a5c:	4441      	add	r1, r8
 8005a5e:	f041 0101 	orr.w	r1, r1, #1
 8005a62:	6813      	ldr	r3, [r2, #0]
 8005a64:	f8c7 b008 	str.w	fp, [r7, #8]
 8005a68:	4443      	add	r3, r8
 8005a6a:	42bc      	cmp	r4, r7
 8005a6c:	f8cb 1004 	str.w	r1, [fp, #4]
 8005a70:	6013      	str	r3, [r2, #0]
 8005a72:	d015      	beq.n	8005aa0 <_malloc_r+0x29c>
 8005a74:	f1b9 0f0f 	cmp.w	r9, #15
 8005a78:	f240 8130 	bls.w	8005cdc <_malloc_r+0x4d8>
 8005a7c:	6860      	ldr	r0, [r4, #4]
 8005a7e:	f1a9 010c 	sub.w	r1, r9, #12
 8005a82:	f021 0107 	bic.w	r1, r1, #7
 8005a86:	f000 0001 	and.w	r0, r0, #1
 8005a8a:	eb04 0c01 	add.w	ip, r4, r1
 8005a8e:	4308      	orrs	r0, r1
 8005a90:	f04f 0e05 	mov.w	lr, #5
 8005a94:	290f      	cmp	r1, #15
 8005a96:	6060      	str	r0, [r4, #4]
 8005a98:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005a9c:	f200 813a 	bhi.w	8005d14 <_malloc_r+0x510>
 8005aa0:	4a29      	ldr	r2, [pc, #164]	; (8005b48 <_malloc_r+0x344>)
 8005aa2:	482a      	ldr	r0, [pc, #168]	; (8005b4c <_malloc_r+0x348>)
 8005aa4:	6811      	ldr	r1, [r2, #0]
 8005aa6:	68bc      	ldr	r4, [r7, #8]
 8005aa8:	428b      	cmp	r3, r1
 8005aaa:	6801      	ldr	r1, [r0, #0]
 8005aac:	bf88      	it	hi
 8005aae:	6013      	strhi	r3, [r2, #0]
 8005ab0:	6862      	ldr	r2, [r4, #4]
 8005ab2:	428b      	cmp	r3, r1
 8005ab4:	f022 0203 	bic.w	r2, r2, #3
 8005ab8:	bf88      	it	hi
 8005aba:	6003      	strhi	r3, [r0, #0]
 8005abc:	e0a7      	b.n	8005c0e <_malloc_r+0x40a>
 8005abe:	1962      	adds	r2, r4, r5
 8005ac0:	f043 0301 	orr.w	r3, r3, #1
 8005ac4:	f045 0501 	orr.w	r5, r5, #1
 8005ac8:	6065      	str	r5, [r4, #4]
 8005aca:	4630      	mov	r0, r6
 8005acc:	60ba      	str	r2, [r7, #8]
 8005ace:	6053      	str	r3, [r2, #4]
 8005ad0:	f000 f9a6 	bl	8005e20 <__malloc_unlock>
 8005ad4:	3408      	adds	r4, #8
 8005ad6:	4620      	mov	r0, r4
 8005ad8:	b003      	add	sp, #12
 8005ada:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ade:	4423      	add	r3, r4
 8005ae0:	68e1      	ldr	r1, [r4, #12]
 8005ae2:	685a      	ldr	r2, [r3, #4]
 8005ae4:	68a5      	ldr	r5, [r4, #8]
 8005ae6:	f042 0201 	orr.w	r2, r2, #1
 8005aea:	60e9      	str	r1, [r5, #12]
 8005aec:	4630      	mov	r0, r6
 8005aee:	608d      	str	r5, [r1, #8]
 8005af0:	605a      	str	r2, [r3, #4]
 8005af2:	f000 f995 	bl	8005e20 <__malloc_unlock>
 8005af6:	3408      	adds	r4, #8
 8005af8:	4620      	mov	r0, r4
 8005afa:	b003      	add	sp, #12
 8005afc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b00:	68dc      	ldr	r4, [r3, #12]
 8005b02:	42a3      	cmp	r3, r4
 8005b04:	bf08      	it	eq
 8005b06:	3002      	addeq	r0, #2
 8005b08:	f43f aed6 	beq.w	80058b8 <_malloc_r+0xb4>
 8005b0c:	e692      	b.n	8005834 <_malloc_r+0x30>
 8005b0e:	2b14      	cmp	r3, #20
 8005b10:	d971      	bls.n	8005bf6 <_malloc_r+0x3f2>
 8005b12:	2b54      	cmp	r3, #84	; 0x54
 8005b14:	f200 80ad 	bhi.w	8005c72 <_malloc_r+0x46e>
 8005b18:	0b2b      	lsrs	r3, r5, #12
 8005b1a:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005b1e:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005b22:	00c3      	lsls	r3, r0, #3
 8005b24:	e6b3      	b.n	800588e <_malloc_r+0x8a>
 8005b26:	4423      	add	r3, r4
 8005b28:	4630      	mov	r0, r6
 8005b2a:	685a      	ldr	r2, [r3, #4]
 8005b2c:	f042 0201 	orr.w	r2, r2, #1
 8005b30:	605a      	str	r2, [r3, #4]
 8005b32:	3408      	adds	r4, #8
 8005b34:	f000 f974 	bl	8005e20 <__malloc_unlock>
 8005b38:	e68c      	b.n	8005854 <_malloc_r+0x50>
 8005b3a:	bf00      	nop
 8005b3c:	2000044c 	.word	0x2000044c
 8005b40:	20000a9c 	.word	0x20000a9c
 8005b44:	20000a6c 	.word	0x20000a6c
 8005b48:	20000a94 	.word	0x20000a94
 8005b4c:	20000a98 	.word	0x20000a98
 8005b50:	20000454 	.word	0x20000454
 8005b54:	20000854 	.word	0x20000854
 8005b58:	1961      	adds	r1, r4, r5
 8005b5a:	f045 0e01 	orr.w	lr, r5, #1
 8005b5e:	f042 0501 	orr.w	r5, r2, #1
 8005b62:	f8c4 e004 	str.w	lr, [r4, #4]
 8005b66:	4630      	mov	r0, r6
 8005b68:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005b6c:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005b70:	604d      	str	r5, [r1, #4]
 8005b72:	50e2      	str	r2, [r4, r3]
 8005b74:	f000 f954 	bl	8005e20 <__malloc_unlock>
 8005b78:	3408      	adds	r4, #8
 8005b7a:	e66b      	b.n	8005854 <_malloc_r+0x50>
 8005b7c:	08e8      	lsrs	r0, r5, #3
 8005b7e:	f105 0308 	add.w	r3, r5, #8
 8005b82:	e64f      	b.n	8005824 <_malloc_r+0x20>
 8005b84:	f108 0801 	add.w	r8, r8, #1
 8005b88:	f018 0f03 	tst.w	r8, #3
 8005b8c:	f10e 0e08 	add.w	lr, lr, #8
 8005b90:	f47f aed0 	bne.w	8005934 <_malloc_r+0x130>
 8005b94:	e052      	b.n	8005c3c <_malloc_r+0x438>
 8005b96:	4419      	add	r1, r3
 8005b98:	461c      	mov	r4, r3
 8005b9a:	684a      	ldr	r2, [r1, #4]
 8005b9c:	68db      	ldr	r3, [r3, #12]
 8005b9e:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005ba2:	f042 0201 	orr.w	r2, r2, #1
 8005ba6:	604a      	str	r2, [r1, #4]
 8005ba8:	4630      	mov	r0, r6
 8005baa:	60eb      	str	r3, [r5, #12]
 8005bac:	609d      	str	r5, [r3, #8]
 8005bae:	f000 f937 	bl	8005e20 <__malloc_unlock>
 8005bb2:	e64f      	b.n	8005854 <_malloc_r+0x50>
 8005bb4:	0a5a      	lsrs	r2, r3, #9
 8005bb6:	2a04      	cmp	r2, #4
 8005bb8:	d935      	bls.n	8005c26 <_malloc_r+0x422>
 8005bba:	2a14      	cmp	r2, #20
 8005bbc:	d86f      	bhi.n	8005c9e <_malloc_r+0x49a>
 8005bbe:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005bc2:	00c9      	lsls	r1, r1, #3
 8005bc4:	325b      	adds	r2, #91	; 0x5b
 8005bc6:	eb07 0e01 	add.w	lr, r7, r1
 8005bca:	5879      	ldr	r1, [r7, r1]
 8005bcc:	f1ae 0e08 	sub.w	lr, lr, #8
 8005bd0:	458e      	cmp	lr, r1
 8005bd2:	d058      	beq.n	8005c86 <_malloc_r+0x482>
 8005bd4:	684a      	ldr	r2, [r1, #4]
 8005bd6:	f022 0203 	bic.w	r2, r2, #3
 8005bda:	429a      	cmp	r2, r3
 8005bdc:	d902      	bls.n	8005be4 <_malloc_r+0x3e0>
 8005bde:	6889      	ldr	r1, [r1, #8]
 8005be0:	458e      	cmp	lr, r1
 8005be2:	d1f7      	bne.n	8005bd4 <_malloc_r+0x3d0>
 8005be4:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005be8:	687b      	ldr	r3, [r7, #4]
 8005bea:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005bee:	f8ce 4008 	str.w	r4, [lr, #8]
 8005bf2:	60cc      	str	r4, [r1, #12]
 8005bf4:	e68c      	b.n	8005910 <_malloc_r+0x10c>
 8005bf6:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005bfa:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005bfe:	00c3      	lsls	r3, r0, #3
 8005c00:	e645      	b.n	800588e <_malloc_r+0x8a>
 8005c02:	42bc      	cmp	r4, r7
 8005c04:	d072      	beq.n	8005cec <_malloc_r+0x4e8>
 8005c06:	68bc      	ldr	r4, [r7, #8]
 8005c08:	6862      	ldr	r2, [r4, #4]
 8005c0a:	f022 0203 	bic.w	r2, r2, #3
 8005c0e:	4295      	cmp	r5, r2
 8005c10:	eba2 0305 	sub.w	r3, r2, r5
 8005c14:	d802      	bhi.n	8005c1c <_malloc_r+0x418>
 8005c16:	2b0f      	cmp	r3, #15
 8005c18:	f73f af51 	bgt.w	8005abe <_malloc_r+0x2ba>
 8005c1c:	4630      	mov	r0, r6
 8005c1e:	f000 f8ff 	bl	8005e20 <__malloc_unlock>
 8005c22:	2400      	movs	r4, #0
 8005c24:	e616      	b.n	8005854 <_malloc_r+0x50>
 8005c26:	099a      	lsrs	r2, r3, #6
 8005c28:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005c2c:	00c9      	lsls	r1, r1, #3
 8005c2e:	3238      	adds	r2, #56	; 0x38
 8005c30:	e7c9      	b.n	8005bc6 <_malloc_r+0x3c2>
 8005c32:	f8d9 9000 	ldr.w	r9, [r9]
 8005c36:	4599      	cmp	r9, r3
 8005c38:	f040 8083 	bne.w	8005d42 <_malloc_r+0x53e>
 8005c3c:	f010 0f03 	tst.w	r0, #3
 8005c40:	f1a9 0308 	sub.w	r3, r9, #8
 8005c44:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005c48:	d1f3      	bne.n	8005c32 <_malloc_r+0x42e>
 8005c4a:	687b      	ldr	r3, [r7, #4]
 8005c4c:	ea23 0304 	bic.w	r3, r3, r4
 8005c50:	607b      	str	r3, [r7, #4]
 8005c52:	0064      	lsls	r4, r4, #1
 8005c54:	429c      	cmp	r4, r3
 8005c56:	f63f aeac 	bhi.w	80059b2 <_malloc_r+0x1ae>
 8005c5a:	b91c      	cbnz	r4, 8005c64 <_malloc_r+0x460>
 8005c5c:	e6a9      	b.n	80059b2 <_malloc_r+0x1ae>
 8005c5e:	0064      	lsls	r4, r4, #1
 8005c60:	f108 0804 	add.w	r8, r8, #4
 8005c64:	421c      	tst	r4, r3
 8005c66:	d0fa      	beq.n	8005c5e <_malloc_r+0x45a>
 8005c68:	4640      	mov	r0, r8
 8005c6a:	e65f      	b.n	800592c <_malloc_r+0x128>
 8005c6c:	f108 0810 	add.w	r8, r8, #16
 8005c70:	e6bc      	b.n	80059ec <_malloc_r+0x1e8>
 8005c72:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005c76:	d826      	bhi.n	8005cc6 <_malloc_r+0x4c2>
 8005c78:	0beb      	lsrs	r3, r5, #15
 8005c7a:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005c7e:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005c82:	00c3      	lsls	r3, r0, #3
 8005c84:	e603      	b.n	800588e <_malloc_r+0x8a>
 8005c86:	687b      	ldr	r3, [r7, #4]
 8005c88:	1092      	asrs	r2, r2, #2
 8005c8a:	f04f 0801 	mov.w	r8, #1
 8005c8e:	fa08 f202 	lsl.w	r2, r8, r2
 8005c92:	4313      	orrs	r3, r2
 8005c94:	607b      	str	r3, [r7, #4]
 8005c96:	e7a8      	b.n	8005bea <_malloc_r+0x3e6>
 8005c98:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005c9c:	e6ce      	b.n	8005a3c <_malloc_r+0x238>
 8005c9e:	2a54      	cmp	r2, #84	; 0x54
 8005ca0:	d829      	bhi.n	8005cf6 <_malloc_r+0x4f2>
 8005ca2:	0b1a      	lsrs	r2, r3, #12
 8005ca4:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005ca8:	00c9      	lsls	r1, r1, #3
 8005caa:	326e      	adds	r2, #110	; 0x6e
 8005cac:	e78b      	b.n	8005bc6 <_malloc_r+0x3c2>
 8005cae:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005cb2:	2900      	cmp	r1, #0
 8005cb4:	f47f aeae 	bne.w	8005a14 <_malloc_r+0x210>
 8005cb8:	eb09 0208 	add.w	r2, r9, r8
 8005cbc:	68b9      	ldr	r1, [r7, #8]
 8005cbe:	f042 0201 	orr.w	r2, r2, #1
 8005cc2:	604a      	str	r2, [r1, #4]
 8005cc4:	e6ec      	b.n	8005aa0 <_malloc_r+0x29c>
 8005cc6:	f240 5254 	movw	r2, #1364	; 0x554
 8005cca:	4293      	cmp	r3, r2
 8005ccc:	d81c      	bhi.n	8005d08 <_malloc_r+0x504>
 8005cce:	0cab      	lsrs	r3, r5, #18
 8005cd0:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005cd4:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005cd8:	00c3      	lsls	r3, r0, #3
 8005cda:	e5d8      	b.n	800588e <_malloc_r+0x8a>
 8005cdc:	2301      	movs	r3, #1
 8005cde:	f8cb 3004 	str.w	r3, [fp, #4]
 8005ce2:	e79b      	b.n	8005c1c <_malloc_r+0x418>
 8005ce4:	2101      	movs	r1, #1
 8005ce6:	f04f 0800 	mov.w	r8, #0
 8005cea:	e6ba      	b.n	8005a62 <_malloc_r+0x25e>
 8005cec:	4a16      	ldr	r2, [pc, #88]	; (8005d48 <_malloc_r+0x544>)
 8005cee:	6813      	ldr	r3, [r2, #0]
 8005cf0:	4443      	add	r3, r8
 8005cf2:	6013      	str	r3, [r2, #0]
 8005cf4:	e68e      	b.n	8005a14 <_malloc_r+0x210>
 8005cf6:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005cfa:	d814      	bhi.n	8005d26 <_malloc_r+0x522>
 8005cfc:	0bda      	lsrs	r2, r3, #15
 8005cfe:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005d02:	00c9      	lsls	r1, r1, #3
 8005d04:	3277      	adds	r2, #119	; 0x77
 8005d06:	e75e      	b.n	8005bc6 <_malloc_r+0x3c2>
 8005d08:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005d0c:	207f      	movs	r0, #127	; 0x7f
 8005d0e:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005d12:	e5bc      	b.n	800588e <_malloc_r+0x8a>
 8005d14:	f104 0108 	add.w	r1, r4, #8
 8005d18:	4630      	mov	r0, r6
 8005d1a:	9201      	str	r2, [sp, #4]
 8005d1c:	f7ff fa48 	bl	80051b0 <_free_r>
 8005d20:	9a01      	ldr	r2, [sp, #4]
 8005d22:	6813      	ldr	r3, [r2, #0]
 8005d24:	e6bc      	b.n	8005aa0 <_malloc_r+0x29c>
 8005d26:	f240 5154 	movw	r1, #1364	; 0x554
 8005d2a:	428a      	cmp	r2, r1
 8005d2c:	d805      	bhi.n	8005d3a <_malloc_r+0x536>
 8005d2e:	0c9a      	lsrs	r2, r3, #18
 8005d30:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005d34:	00c9      	lsls	r1, r1, #3
 8005d36:	327c      	adds	r2, #124	; 0x7c
 8005d38:	e745      	b.n	8005bc6 <_malloc_r+0x3c2>
 8005d3a:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005d3e:	227e      	movs	r2, #126	; 0x7e
 8005d40:	e741      	b.n	8005bc6 <_malloc_r+0x3c2>
 8005d42:	687b      	ldr	r3, [r7, #4]
 8005d44:	e785      	b.n	8005c52 <_malloc_r+0x44e>
 8005d46:	bf00      	nop
 8005d48:	20000a6c 	.word	0x20000a6c

08005d4c <memmove>:
 8005d4c:	4288      	cmp	r0, r1
 8005d4e:	b4f0      	push	{r4, r5, r6, r7}
 8005d50:	d90d      	bls.n	8005d6e <memmove+0x22>
 8005d52:	188b      	adds	r3, r1, r2
 8005d54:	4283      	cmp	r3, r0
 8005d56:	d90a      	bls.n	8005d6e <memmove+0x22>
 8005d58:	1884      	adds	r4, r0, r2
 8005d5a:	b132      	cbz	r2, 8005d6a <memmove+0x1e>
 8005d5c:	4622      	mov	r2, r4
 8005d5e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005d62:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005d66:	4299      	cmp	r1, r3
 8005d68:	d1f9      	bne.n	8005d5e <memmove+0x12>
 8005d6a:	bcf0      	pop	{r4, r5, r6, r7}
 8005d6c:	4770      	bx	lr
 8005d6e:	2a0f      	cmp	r2, #15
 8005d70:	d949      	bls.n	8005e06 <memmove+0xba>
 8005d72:	ea40 0301 	orr.w	r3, r0, r1
 8005d76:	079b      	lsls	r3, r3, #30
 8005d78:	d147      	bne.n	8005e0a <memmove+0xbe>
 8005d7a:	f1a2 0310 	sub.w	r3, r2, #16
 8005d7e:	091b      	lsrs	r3, r3, #4
 8005d80:	f101 0720 	add.w	r7, r1, #32
 8005d84:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005d88:	f101 0410 	add.w	r4, r1, #16
 8005d8c:	f100 0510 	add.w	r5, r0, #16
 8005d90:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005d94:	f845 6c10 	str.w	r6, [r5, #-16]
 8005d98:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005d9c:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005da0:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005da4:	f845 6c08 	str.w	r6, [r5, #-8]
 8005da8:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005dac:	f845 6c04 	str.w	r6, [r5, #-4]
 8005db0:	3410      	adds	r4, #16
 8005db2:	42bc      	cmp	r4, r7
 8005db4:	f105 0510 	add.w	r5, r5, #16
 8005db8:	d1ea      	bne.n	8005d90 <memmove+0x44>
 8005dba:	3301      	adds	r3, #1
 8005dbc:	f002 050f 	and.w	r5, r2, #15
 8005dc0:	011b      	lsls	r3, r3, #4
 8005dc2:	2d03      	cmp	r5, #3
 8005dc4:	4419      	add	r1, r3
 8005dc6:	4403      	add	r3, r0
 8005dc8:	d921      	bls.n	8005e0e <memmove+0xc2>
 8005dca:	1f1f      	subs	r7, r3, #4
 8005dcc:	460e      	mov	r6, r1
 8005dce:	462c      	mov	r4, r5
 8005dd0:	3c04      	subs	r4, #4
 8005dd2:	f856 cb04 	ldr.w	ip, [r6], #4
 8005dd6:	f847 cf04 	str.w	ip, [r7, #4]!
 8005dda:	2c03      	cmp	r4, #3
 8005ddc:	d8f8      	bhi.n	8005dd0 <memmove+0x84>
 8005dde:	1f2c      	subs	r4, r5, #4
 8005de0:	f024 0403 	bic.w	r4, r4, #3
 8005de4:	3404      	adds	r4, #4
 8005de6:	4423      	add	r3, r4
 8005de8:	4421      	add	r1, r4
 8005dea:	f002 0203 	and.w	r2, r2, #3
 8005dee:	2a00      	cmp	r2, #0
 8005df0:	d0bb      	beq.n	8005d6a <memmove+0x1e>
 8005df2:	3b01      	subs	r3, #1
 8005df4:	440a      	add	r2, r1
 8005df6:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005dfa:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005dfe:	4291      	cmp	r1, r2
 8005e00:	d1f9      	bne.n	8005df6 <memmove+0xaa>
 8005e02:	bcf0      	pop	{r4, r5, r6, r7}
 8005e04:	4770      	bx	lr
 8005e06:	4603      	mov	r3, r0
 8005e08:	e7f1      	b.n	8005dee <memmove+0xa2>
 8005e0a:	4603      	mov	r3, r0
 8005e0c:	e7f1      	b.n	8005df2 <memmove+0xa6>
 8005e0e:	462a      	mov	r2, r5
 8005e10:	e7ed      	b.n	8005dee <memmove+0xa2>
 8005e12:	bf00      	nop

08005e14 <__malloc_lock>:
 8005e14:	4801      	ldr	r0, [pc, #4]	; (8005e1c <__malloc_lock+0x8>)
 8005e16:	f7ff bc79 	b.w	800570c <__retarget_lock_acquire_recursive>
 8005e1a:	bf00      	nop
 8005e1c:	20000c94 	.word	0x20000c94

08005e20 <__malloc_unlock>:
 8005e20:	4801      	ldr	r0, [pc, #4]	; (8005e28 <__malloc_unlock+0x8>)
 8005e22:	f7ff bc75 	b.w	8005710 <__retarget_lock_release_recursive>
 8005e26:	bf00      	nop
 8005e28:	20000c94 	.word	0x20000c94

08005e2c <_Balloc>:
 8005e2c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005e2e:	b570      	push	{r4, r5, r6, lr}
 8005e30:	4605      	mov	r5, r0
 8005e32:	460c      	mov	r4, r1
 8005e34:	b14b      	cbz	r3, 8005e4a <_Balloc+0x1e>
 8005e36:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005e3a:	b180      	cbz	r0, 8005e5e <_Balloc+0x32>
 8005e3c:	6802      	ldr	r2, [r0, #0]
 8005e3e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005e42:	2300      	movs	r3, #0
 8005e44:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005e48:	bd70      	pop	{r4, r5, r6, pc}
 8005e4a:	2221      	movs	r2, #33	; 0x21
 8005e4c:	2104      	movs	r1, #4
 8005e4e:	f000 fe1d 	bl	8006a8c <_calloc_r>
 8005e52:	4603      	mov	r3, r0
 8005e54:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005e56:	2800      	cmp	r0, #0
 8005e58:	d1ed      	bne.n	8005e36 <_Balloc+0xa>
 8005e5a:	2000      	movs	r0, #0
 8005e5c:	bd70      	pop	{r4, r5, r6, pc}
 8005e5e:	2101      	movs	r1, #1
 8005e60:	fa01 f604 	lsl.w	r6, r1, r4
 8005e64:	1d72      	adds	r2, r6, #5
 8005e66:	4628      	mov	r0, r5
 8005e68:	0092      	lsls	r2, r2, #2
 8005e6a:	f000 fe0f 	bl	8006a8c <_calloc_r>
 8005e6e:	2800      	cmp	r0, #0
 8005e70:	d0f3      	beq.n	8005e5a <_Balloc+0x2e>
 8005e72:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005e76:	e7e4      	b.n	8005e42 <_Balloc+0x16>

08005e78 <_Bfree>:
 8005e78:	b131      	cbz	r1, 8005e88 <_Bfree+0x10>
 8005e7a:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005e7c:	684a      	ldr	r2, [r1, #4]
 8005e7e:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005e82:	6008      	str	r0, [r1, #0]
 8005e84:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005e88:	4770      	bx	lr
 8005e8a:	bf00      	nop

08005e8c <__multadd>:
 8005e8c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005e8e:	690c      	ldr	r4, [r1, #16]
 8005e90:	b083      	sub	sp, #12
 8005e92:	460d      	mov	r5, r1
 8005e94:	4606      	mov	r6, r0
 8005e96:	f101 0c14 	add.w	ip, r1, #20
 8005e9a:	2700      	movs	r7, #0
 8005e9c:	f8dc 0000 	ldr.w	r0, [ip]
 8005ea0:	b281      	uxth	r1, r0
 8005ea2:	fb02 3301 	mla	r3, r2, r1, r3
 8005ea6:	0c01      	lsrs	r1, r0, #16
 8005ea8:	0c18      	lsrs	r0, r3, #16
 8005eaa:	fb02 0101 	mla	r1, r2, r1, r0
 8005eae:	b29b      	uxth	r3, r3
 8005eb0:	3701      	adds	r7, #1
 8005eb2:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005eb6:	42bc      	cmp	r4, r7
 8005eb8:	f84c 3b04 	str.w	r3, [ip], #4
 8005ebc:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8005ec0:	dcec      	bgt.n	8005e9c <__multadd+0x10>
 8005ec2:	b13b      	cbz	r3, 8005ed4 <__multadd+0x48>
 8005ec4:	68aa      	ldr	r2, [r5, #8]
 8005ec6:	42a2      	cmp	r2, r4
 8005ec8:	dd07      	ble.n	8005eda <__multadd+0x4e>
 8005eca:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8005ece:	3401      	adds	r4, #1
 8005ed0:	6153      	str	r3, [r2, #20]
 8005ed2:	612c      	str	r4, [r5, #16]
 8005ed4:	4628      	mov	r0, r5
 8005ed6:	b003      	add	sp, #12
 8005ed8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005eda:	6869      	ldr	r1, [r5, #4]
 8005edc:	9301      	str	r3, [sp, #4]
 8005ede:	3101      	adds	r1, #1
 8005ee0:	4630      	mov	r0, r6
 8005ee2:	f7ff ffa3 	bl	8005e2c <_Balloc>
 8005ee6:	692a      	ldr	r2, [r5, #16]
 8005ee8:	3202      	adds	r2, #2
 8005eea:	f105 010c 	add.w	r1, r5, #12
 8005eee:	4607      	mov	r7, r0
 8005ef0:	0092      	lsls	r2, r2, #2
 8005ef2:	300c      	adds	r0, #12
 8005ef4:	f7fa fb04 	bl	8000500 <memcpy>
 8005ef8:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8005efa:	6869      	ldr	r1, [r5, #4]
 8005efc:	9b01      	ldr	r3, [sp, #4]
 8005efe:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8005f02:	6028      	str	r0, [r5, #0]
 8005f04:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8005f08:	463d      	mov	r5, r7
 8005f0a:	e7de      	b.n	8005eca <__multadd+0x3e>

08005f0c <__hi0bits>:
 8005f0c:	0c02      	lsrs	r2, r0, #16
 8005f0e:	0412      	lsls	r2, r2, #16
 8005f10:	4603      	mov	r3, r0
 8005f12:	b9c2      	cbnz	r2, 8005f46 <__hi0bits+0x3a>
 8005f14:	0403      	lsls	r3, r0, #16
 8005f16:	2010      	movs	r0, #16
 8005f18:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8005f1c:	bf04      	itt	eq
 8005f1e:	021b      	lsleq	r3, r3, #8
 8005f20:	3008      	addeq	r0, #8
 8005f22:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8005f26:	bf04      	itt	eq
 8005f28:	011b      	lsleq	r3, r3, #4
 8005f2a:	3004      	addeq	r0, #4
 8005f2c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8005f30:	bf04      	itt	eq
 8005f32:	009b      	lsleq	r3, r3, #2
 8005f34:	3002      	addeq	r0, #2
 8005f36:	2b00      	cmp	r3, #0
 8005f38:	db04      	blt.n	8005f44 <__hi0bits+0x38>
 8005f3a:	005b      	lsls	r3, r3, #1
 8005f3c:	d501      	bpl.n	8005f42 <__hi0bits+0x36>
 8005f3e:	3001      	adds	r0, #1
 8005f40:	4770      	bx	lr
 8005f42:	2020      	movs	r0, #32
 8005f44:	4770      	bx	lr
 8005f46:	2000      	movs	r0, #0
 8005f48:	e7e6      	b.n	8005f18 <__hi0bits+0xc>
 8005f4a:	bf00      	nop

08005f4c <__lo0bits>:
 8005f4c:	6803      	ldr	r3, [r0, #0]
 8005f4e:	f013 0207 	ands.w	r2, r3, #7
 8005f52:	4601      	mov	r1, r0
 8005f54:	d007      	beq.n	8005f66 <__lo0bits+0x1a>
 8005f56:	07da      	lsls	r2, r3, #31
 8005f58:	d41f      	bmi.n	8005f9a <__lo0bits+0x4e>
 8005f5a:	0798      	lsls	r0, r3, #30
 8005f5c:	d51f      	bpl.n	8005f9e <__lo0bits+0x52>
 8005f5e:	085b      	lsrs	r3, r3, #1
 8005f60:	600b      	str	r3, [r1, #0]
 8005f62:	2001      	movs	r0, #1
 8005f64:	4770      	bx	lr
 8005f66:	b298      	uxth	r0, r3
 8005f68:	b1a0      	cbz	r0, 8005f94 <__lo0bits+0x48>
 8005f6a:	4610      	mov	r0, r2
 8005f6c:	f013 0fff 	tst.w	r3, #255	; 0xff
 8005f70:	bf04      	itt	eq
 8005f72:	0a1b      	lsreq	r3, r3, #8
 8005f74:	3008      	addeq	r0, #8
 8005f76:	071a      	lsls	r2, r3, #28
 8005f78:	bf04      	itt	eq
 8005f7a:	091b      	lsreq	r3, r3, #4
 8005f7c:	3004      	addeq	r0, #4
 8005f7e:	079a      	lsls	r2, r3, #30
 8005f80:	bf04      	itt	eq
 8005f82:	089b      	lsreq	r3, r3, #2
 8005f84:	3002      	addeq	r0, #2
 8005f86:	07da      	lsls	r2, r3, #31
 8005f88:	d402      	bmi.n	8005f90 <__lo0bits+0x44>
 8005f8a:	085b      	lsrs	r3, r3, #1
 8005f8c:	d00b      	beq.n	8005fa6 <__lo0bits+0x5a>
 8005f8e:	3001      	adds	r0, #1
 8005f90:	600b      	str	r3, [r1, #0]
 8005f92:	4770      	bx	lr
 8005f94:	0c1b      	lsrs	r3, r3, #16
 8005f96:	2010      	movs	r0, #16
 8005f98:	e7e8      	b.n	8005f6c <__lo0bits+0x20>
 8005f9a:	2000      	movs	r0, #0
 8005f9c:	4770      	bx	lr
 8005f9e:	089b      	lsrs	r3, r3, #2
 8005fa0:	600b      	str	r3, [r1, #0]
 8005fa2:	2002      	movs	r0, #2
 8005fa4:	4770      	bx	lr
 8005fa6:	2020      	movs	r0, #32
 8005fa8:	4770      	bx	lr
 8005faa:	bf00      	nop

08005fac <__i2b>:
 8005fac:	b510      	push	{r4, lr}
 8005fae:	460c      	mov	r4, r1
 8005fb0:	2101      	movs	r1, #1
 8005fb2:	f7ff ff3b 	bl	8005e2c <_Balloc>
 8005fb6:	2201      	movs	r2, #1
 8005fb8:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8005fbc:	bd10      	pop	{r4, pc}
 8005fbe:	bf00      	nop

08005fc0 <__multiply>:
 8005fc0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005fc4:	690e      	ldr	r6, [r1, #16]
 8005fc6:	6914      	ldr	r4, [r2, #16]
 8005fc8:	42a6      	cmp	r6, r4
 8005fca:	b083      	sub	sp, #12
 8005fcc:	460f      	mov	r7, r1
 8005fce:	4615      	mov	r5, r2
 8005fd0:	da04      	bge.n	8005fdc <__multiply+0x1c>
 8005fd2:	4632      	mov	r2, r6
 8005fd4:	462f      	mov	r7, r5
 8005fd6:	4626      	mov	r6, r4
 8005fd8:	460d      	mov	r5, r1
 8005fda:	4614      	mov	r4, r2
 8005fdc:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8005fe0:	eb06 0804 	add.w	r8, r6, r4
 8005fe4:	4543      	cmp	r3, r8
 8005fe6:	bfb8      	it	lt
 8005fe8:	3101      	addlt	r1, #1
 8005fea:	f7ff ff1f 	bl	8005e2c <_Balloc>
 8005fee:	f100 0914 	add.w	r9, r0, #20
 8005ff2:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8005ff6:	45f1      	cmp	r9, lr
 8005ff8:	9000      	str	r0, [sp, #0]
 8005ffa:	d205      	bcs.n	8006008 <__multiply+0x48>
 8005ffc:	464b      	mov	r3, r9
 8005ffe:	2200      	movs	r2, #0
 8006000:	f843 2b04 	str.w	r2, [r3], #4
 8006004:	459e      	cmp	lr, r3
 8006006:	d8fb      	bhi.n	8006000 <__multiply+0x40>
 8006008:	f105 0a14 	add.w	sl, r5, #20
 800600c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006010:	f107 0314 	add.w	r3, r7, #20
 8006014:	45a2      	cmp	sl, r4
 8006016:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800601a:	d261      	bcs.n	80060e0 <__multiply+0x120>
 800601c:	1b64      	subs	r4, r4, r5
 800601e:	3c15      	subs	r4, #21
 8006020:	f024 0403 	bic.w	r4, r4, #3
 8006024:	f8cd e004 	str.w	lr, [sp, #4]
 8006028:	44a2      	add	sl, r4
 800602a:	f105 0210 	add.w	r2, r5, #16
 800602e:	469e      	mov	lr, r3
 8006030:	e005      	b.n	800603e <__multiply+0x7e>
 8006032:	0c2d      	lsrs	r5, r5, #16
 8006034:	d12b      	bne.n	800608e <__multiply+0xce>
 8006036:	4592      	cmp	sl, r2
 8006038:	f109 0904 	add.w	r9, r9, #4
 800603c:	d04e      	beq.n	80060dc <__multiply+0x11c>
 800603e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8006042:	fa1f fb85 	uxth.w	fp, r5
 8006046:	f1bb 0f00 	cmp.w	fp, #0
 800604a:	d0f2      	beq.n	8006032 <__multiply+0x72>
 800604c:	4677      	mov	r7, lr
 800604e:	464e      	mov	r6, r9
 8006050:	2000      	movs	r0, #0
 8006052:	e000      	b.n	8006056 <__multiply+0x96>
 8006054:	4626      	mov	r6, r4
 8006056:	f857 1b04 	ldr.w	r1, [r7], #4
 800605a:	6834      	ldr	r4, [r6, #0]
 800605c:	b28b      	uxth	r3, r1
 800605e:	b2a5      	uxth	r5, r4
 8006060:	0c09      	lsrs	r1, r1, #16
 8006062:	0c24      	lsrs	r4, r4, #16
 8006064:	fb0b 5303 	mla	r3, fp, r3, r5
 8006068:	4403      	add	r3, r0
 800606a:	fb0b 4001 	mla	r0, fp, r1, r4
 800606e:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8006072:	4634      	mov	r4, r6
 8006074:	b29b      	uxth	r3, r3
 8006076:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800607a:	45bc      	cmp	ip, r7
 800607c:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006080:	f844 3b04 	str.w	r3, [r4], #4
 8006084:	d8e6      	bhi.n	8006054 <__multiply+0x94>
 8006086:	6070      	str	r0, [r6, #4]
 8006088:	6815      	ldr	r5, [r2, #0]
 800608a:	0c2d      	lsrs	r5, r5, #16
 800608c:	d0d3      	beq.n	8006036 <__multiply+0x76>
 800608e:	f8d9 3000 	ldr.w	r3, [r9]
 8006092:	4676      	mov	r6, lr
 8006094:	4618      	mov	r0, r3
 8006096:	46cb      	mov	fp, r9
 8006098:	2100      	movs	r1, #0
 800609a:	e000      	b.n	800609e <__multiply+0xde>
 800609c:	46a3      	mov	fp, r4
 800609e:	8834      	ldrh	r4, [r6, #0]
 80060a0:	0c00      	lsrs	r0, r0, #16
 80060a2:	fb05 0004 	mla	r0, r5, r4, r0
 80060a6:	4401      	add	r1, r0
 80060a8:	b29b      	uxth	r3, r3
 80060aa:	465c      	mov	r4, fp
 80060ac:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80060b0:	f844 3b04 	str.w	r3, [r4], #4
 80060b4:	f856 3b04 	ldr.w	r3, [r6], #4
 80060b8:	f8db 0004 	ldr.w	r0, [fp, #4]
 80060bc:	0c1b      	lsrs	r3, r3, #16
 80060be:	b287      	uxth	r7, r0
 80060c0:	fb05 7303 	mla	r3, r5, r3, r7
 80060c4:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80060c8:	45b4      	cmp	ip, r6
 80060ca:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80060ce:	d8e5      	bhi.n	800609c <__multiply+0xdc>
 80060d0:	4592      	cmp	sl, r2
 80060d2:	f8cb 3004 	str.w	r3, [fp, #4]
 80060d6:	f109 0904 	add.w	r9, r9, #4
 80060da:	d1b0      	bne.n	800603e <__multiply+0x7e>
 80060dc:	f8dd e004 	ldr.w	lr, [sp, #4]
 80060e0:	f1b8 0f00 	cmp.w	r8, #0
 80060e4:	dd0b      	ble.n	80060fe <__multiply+0x13e>
 80060e6:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80060ea:	f1ae 0e04 	sub.w	lr, lr, #4
 80060ee:	b11b      	cbz	r3, 80060f8 <__multiply+0x138>
 80060f0:	e005      	b.n	80060fe <__multiply+0x13e>
 80060f2:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80060f6:	b913      	cbnz	r3, 80060fe <__multiply+0x13e>
 80060f8:	f1b8 0801 	subs.w	r8, r8, #1
 80060fc:	d1f9      	bne.n	80060f2 <__multiply+0x132>
 80060fe:	9800      	ldr	r0, [sp, #0]
 8006100:	f8c0 8010 	str.w	r8, [r0, #16]
 8006104:	b003      	add	sp, #12
 8006106:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800610a:	bf00      	nop

0800610c <__pow5mult>:
 800610c:	f012 0303 	ands.w	r3, r2, #3
 8006110:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006114:	4614      	mov	r4, r2
 8006116:	4607      	mov	r7, r0
 8006118:	d12e      	bne.n	8006178 <__pow5mult+0x6c>
 800611a:	460d      	mov	r5, r1
 800611c:	10a4      	asrs	r4, r4, #2
 800611e:	d01c      	beq.n	800615a <__pow5mult+0x4e>
 8006120:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8006122:	b396      	cbz	r6, 800618a <__pow5mult+0x7e>
 8006124:	07e3      	lsls	r3, r4, #31
 8006126:	f04f 0800 	mov.w	r8, #0
 800612a:	d406      	bmi.n	800613a <__pow5mult+0x2e>
 800612c:	1064      	asrs	r4, r4, #1
 800612e:	d014      	beq.n	800615a <__pow5mult+0x4e>
 8006130:	6830      	ldr	r0, [r6, #0]
 8006132:	b1a8      	cbz	r0, 8006160 <__pow5mult+0x54>
 8006134:	4606      	mov	r6, r0
 8006136:	07e3      	lsls	r3, r4, #31
 8006138:	d5f8      	bpl.n	800612c <__pow5mult+0x20>
 800613a:	4632      	mov	r2, r6
 800613c:	4629      	mov	r1, r5
 800613e:	4638      	mov	r0, r7
 8006140:	f7ff ff3e 	bl	8005fc0 <__multiply>
 8006144:	b1b5      	cbz	r5, 8006174 <__pow5mult+0x68>
 8006146:	686a      	ldr	r2, [r5, #4]
 8006148:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800614a:	1064      	asrs	r4, r4, #1
 800614c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006150:	6029      	str	r1, [r5, #0]
 8006152:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006156:	4605      	mov	r5, r0
 8006158:	d1ea      	bne.n	8006130 <__pow5mult+0x24>
 800615a:	4628      	mov	r0, r5
 800615c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006160:	4632      	mov	r2, r6
 8006162:	4631      	mov	r1, r6
 8006164:	4638      	mov	r0, r7
 8006166:	f7ff ff2b 	bl	8005fc0 <__multiply>
 800616a:	6030      	str	r0, [r6, #0]
 800616c:	f8c0 8000 	str.w	r8, [r0]
 8006170:	4606      	mov	r6, r0
 8006172:	e7e0      	b.n	8006136 <__pow5mult+0x2a>
 8006174:	4605      	mov	r5, r0
 8006176:	e7d9      	b.n	800612c <__pow5mult+0x20>
 8006178:	3b01      	subs	r3, #1
 800617a:	4a0b      	ldr	r2, [pc, #44]	; (80061a8 <__pow5mult+0x9c>)
 800617c:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006180:	2300      	movs	r3, #0
 8006182:	f7ff fe83 	bl	8005e8c <__multadd>
 8006186:	4605      	mov	r5, r0
 8006188:	e7c8      	b.n	800611c <__pow5mult+0x10>
 800618a:	2101      	movs	r1, #1
 800618c:	4638      	mov	r0, r7
 800618e:	f7ff fe4d 	bl	8005e2c <_Balloc>
 8006192:	f240 2371 	movw	r3, #625	; 0x271
 8006196:	6143      	str	r3, [r0, #20]
 8006198:	2201      	movs	r2, #1
 800619a:	2300      	movs	r3, #0
 800619c:	6102      	str	r2, [r0, #16]
 800619e:	4606      	mov	r6, r0
 80061a0:	64b8      	str	r0, [r7, #72]	; 0x48
 80061a2:	6003      	str	r3, [r0, #0]
 80061a4:	e7be      	b.n	8006124 <__pow5mult+0x18>
 80061a6:	bf00      	nop
 80061a8:	08007328 	.word	0x08007328

080061ac <__lshift>:
 80061ac:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80061b0:	4691      	mov	r9, r2
 80061b2:	690a      	ldr	r2, [r1, #16]
 80061b4:	460e      	mov	r6, r1
 80061b6:	ea4f 1469 	mov.w	r4, r9, asr #5
 80061ba:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80061be:	eb04 0802 	add.w	r8, r4, r2
 80061c2:	f108 0501 	add.w	r5, r8, #1
 80061c6:	429d      	cmp	r5, r3
 80061c8:	4607      	mov	r7, r0
 80061ca:	dd04      	ble.n	80061d6 <__lshift+0x2a>
 80061cc:	005b      	lsls	r3, r3, #1
 80061ce:	429d      	cmp	r5, r3
 80061d0:	f101 0101 	add.w	r1, r1, #1
 80061d4:	dcfa      	bgt.n	80061cc <__lshift+0x20>
 80061d6:	4638      	mov	r0, r7
 80061d8:	f7ff fe28 	bl	8005e2c <_Balloc>
 80061dc:	2c00      	cmp	r4, #0
 80061de:	f100 0314 	add.w	r3, r0, #20
 80061e2:	dd37      	ble.n	8006254 <__lshift+0xa8>
 80061e4:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80061e8:	2200      	movs	r2, #0
 80061ea:	f843 2b04 	str.w	r2, [r3], #4
 80061ee:	428b      	cmp	r3, r1
 80061f0:	d1fb      	bne.n	80061ea <__lshift+0x3e>
 80061f2:	6934      	ldr	r4, [r6, #16]
 80061f4:	f106 0314 	add.w	r3, r6, #20
 80061f8:	f019 091f 	ands.w	r9, r9, #31
 80061fc:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006200:	d020      	beq.n	8006244 <__lshift+0x98>
 8006202:	f1c9 0e20 	rsb	lr, r9, #32
 8006206:	2200      	movs	r2, #0
 8006208:	e000      	b.n	800620c <__lshift+0x60>
 800620a:	4651      	mov	r1, sl
 800620c:	681c      	ldr	r4, [r3, #0]
 800620e:	468a      	mov	sl, r1
 8006210:	fa04 f409 	lsl.w	r4, r4, r9
 8006214:	4314      	orrs	r4, r2
 8006216:	f84a 4b04 	str.w	r4, [sl], #4
 800621a:	f853 2b04 	ldr.w	r2, [r3], #4
 800621e:	4563      	cmp	r3, ip
 8006220:	fa22 f20e 	lsr.w	r2, r2, lr
 8006224:	d3f1      	bcc.n	800620a <__lshift+0x5e>
 8006226:	604a      	str	r2, [r1, #4]
 8006228:	b10a      	cbz	r2, 800622e <__lshift+0x82>
 800622a:	f108 0502 	add.w	r5, r8, #2
 800622e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006230:	6872      	ldr	r2, [r6, #4]
 8006232:	3d01      	subs	r5, #1
 8006234:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006238:	6105      	str	r5, [r0, #16]
 800623a:	6031      	str	r1, [r6, #0]
 800623c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006240:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006244:	3904      	subs	r1, #4
 8006246:	f853 2b04 	ldr.w	r2, [r3], #4
 800624a:	f841 2f04 	str.w	r2, [r1, #4]!
 800624e:	459c      	cmp	ip, r3
 8006250:	d8f9      	bhi.n	8006246 <__lshift+0x9a>
 8006252:	e7ec      	b.n	800622e <__lshift+0x82>
 8006254:	4619      	mov	r1, r3
 8006256:	e7cc      	b.n	80061f2 <__lshift+0x46>

08006258 <__mcmp>:
 8006258:	b430      	push	{r4, r5}
 800625a:	690b      	ldr	r3, [r1, #16]
 800625c:	4605      	mov	r5, r0
 800625e:	6900      	ldr	r0, [r0, #16]
 8006260:	1ac0      	subs	r0, r0, r3
 8006262:	d10f      	bne.n	8006284 <__mcmp+0x2c>
 8006264:	009b      	lsls	r3, r3, #2
 8006266:	3514      	adds	r5, #20
 8006268:	3114      	adds	r1, #20
 800626a:	4419      	add	r1, r3
 800626c:	442b      	add	r3, r5
 800626e:	e001      	b.n	8006274 <__mcmp+0x1c>
 8006270:	429d      	cmp	r5, r3
 8006272:	d207      	bcs.n	8006284 <__mcmp+0x2c>
 8006274:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006278:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 800627c:	4294      	cmp	r4, r2
 800627e:	d0f7      	beq.n	8006270 <__mcmp+0x18>
 8006280:	d302      	bcc.n	8006288 <__mcmp+0x30>
 8006282:	2001      	movs	r0, #1
 8006284:	bc30      	pop	{r4, r5}
 8006286:	4770      	bx	lr
 8006288:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800628c:	e7fa      	b.n	8006284 <__mcmp+0x2c>
 800628e:	bf00      	nop

08006290 <__mdiff>:
 8006290:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006294:	6913      	ldr	r3, [r2, #16]
 8006296:	690d      	ldr	r5, [r1, #16]
 8006298:	1aed      	subs	r5, r5, r3
 800629a:	2d00      	cmp	r5, #0
 800629c:	460e      	mov	r6, r1
 800629e:	4690      	mov	r8, r2
 80062a0:	f101 0414 	add.w	r4, r1, #20
 80062a4:	f102 0714 	add.w	r7, r2, #20
 80062a8:	d114      	bne.n	80062d4 <__mdiff+0x44>
 80062aa:	009b      	lsls	r3, r3, #2
 80062ac:	18e2      	adds	r2, r4, r3
 80062ae:	443b      	add	r3, r7
 80062b0:	e001      	b.n	80062b6 <__mdiff+0x26>
 80062b2:	42a2      	cmp	r2, r4
 80062b4:	d959      	bls.n	800636a <__mdiff+0xda>
 80062b6:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80062ba:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80062be:	458c      	cmp	ip, r1
 80062c0:	d0f7      	beq.n	80062b2 <__mdiff+0x22>
 80062c2:	d209      	bcs.n	80062d8 <__mdiff+0x48>
 80062c4:	4622      	mov	r2, r4
 80062c6:	4633      	mov	r3, r6
 80062c8:	463c      	mov	r4, r7
 80062ca:	4646      	mov	r6, r8
 80062cc:	4617      	mov	r7, r2
 80062ce:	4698      	mov	r8, r3
 80062d0:	2501      	movs	r5, #1
 80062d2:	e001      	b.n	80062d8 <__mdiff+0x48>
 80062d4:	dbf6      	blt.n	80062c4 <__mdiff+0x34>
 80062d6:	2500      	movs	r5, #0
 80062d8:	6871      	ldr	r1, [r6, #4]
 80062da:	f7ff fda7 	bl	8005e2c <_Balloc>
 80062de:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80062e2:	6936      	ldr	r6, [r6, #16]
 80062e4:	60c5      	str	r5, [r0, #12]
 80062e6:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80062ea:	46bc      	mov	ip, r7
 80062ec:	f100 0514 	add.w	r5, r0, #20
 80062f0:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80062f4:	2300      	movs	r3, #0
 80062f6:	f85c 1b04 	ldr.w	r1, [ip], #4
 80062fa:	f854 8b04 	ldr.w	r8, [r4], #4
 80062fe:	b28a      	uxth	r2, r1
 8006300:	fa13 f388 	uxtah	r3, r3, r8
 8006304:	0c09      	lsrs	r1, r1, #16
 8006306:	1a9a      	subs	r2, r3, r2
 8006308:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 800630c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006310:	b292      	uxth	r2, r2
 8006312:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006316:	45e6      	cmp	lr, ip
 8006318:	f845 2b04 	str.w	r2, [r5], #4
 800631c:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006320:	d8e9      	bhi.n	80062f6 <__mdiff+0x66>
 8006322:	42a7      	cmp	r7, r4
 8006324:	d917      	bls.n	8006356 <__mdiff+0xc6>
 8006326:	46ae      	mov	lr, r5
 8006328:	46a4      	mov	ip, r4
 800632a:	f85c 2b04 	ldr.w	r2, [ip], #4
 800632e:	fa13 f382 	uxtah	r3, r3, r2
 8006332:	1419      	asrs	r1, r3, #16
 8006334:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006338:	b29b      	uxth	r3, r3
 800633a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800633e:	4567      	cmp	r7, ip
 8006340:	f84e 2b04 	str.w	r2, [lr], #4
 8006344:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006348:	d8ef      	bhi.n	800632a <__mdiff+0x9a>
 800634a:	43e4      	mvns	r4, r4
 800634c:	4427      	add	r7, r4
 800634e:	f027 0703 	bic.w	r7, r7, #3
 8006352:	3704      	adds	r7, #4
 8006354:	443d      	add	r5, r7
 8006356:	3d04      	subs	r5, #4
 8006358:	b922      	cbnz	r2, 8006364 <__mdiff+0xd4>
 800635a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800635e:	3e01      	subs	r6, #1
 8006360:	2b00      	cmp	r3, #0
 8006362:	d0fa      	beq.n	800635a <__mdiff+0xca>
 8006364:	6106      	str	r6, [r0, #16]
 8006366:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800636a:	2100      	movs	r1, #0
 800636c:	f7ff fd5e 	bl	8005e2c <_Balloc>
 8006370:	2201      	movs	r2, #1
 8006372:	2300      	movs	r3, #0
 8006374:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006378:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0800637c <__d2b>:
 800637c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006380:	460f      	mov	r7, r1
 8006382:	b083      	sub	sp, #12
 8006384:	2101      	movs	r1, #1
 8006386:	ec55 4b10 	vmov	r4, r5, d0
 800638a:	4616      	mov	r6, r2
 800638c:	f7ff fd4e 	bl	8005e2c <_Balloc>
 8006390:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8006394:	4681      	mov	r9, r0
 8006396:	f3c5 0313 	ubfx	r3, r5, #0, #20
 800639a:	f1b8 0f00 	cmp.w	r8, #0
 800639e:	d001      	beq.n	80063a4 <__d2b+0x28>
 80063a0:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80063a4:	2c00      	cmp	r4, #0
 80063a6:	9301      	str	r3, [sp, #4]
 80063a8:	d024      	beq.n	80063f4 <__d2b+0x78>
 80063aa:	a802      	add	r0, sp, #8
 80063ac:	f840 4d08 	str.w	r4, [r0, #-8]!
 80063b0:	f7ff fdcc 	bl	8005f4c <__lo0bits>
 80063b4:	2800      	cmp	r0, #0
 80063b6:	d136      	bne.n	8006426 <__d2b+0xaa>
 80063b8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80063bc:	f8c9 2014 	str.w	r2, [r9, #20]
 80063c0:	2b00      	cmp	r3, #0
 80063c2:	bf0c      	ite	eq
 80063c4:	2101      	moveq	r1, #1
 80063c6:	2102      	movne	r1, #2
 80063c8:	f8c9 3018 	str.w	r3, [r9, #24]
 80063cc:	f8c9 1010 	str.w	r1, [r9, #16]
 80063d0:	f1b8 0f00 	cmp.w	r8, #0
 80063d4:	d11b      	bne.n	800640e <__d2b+0x92>
 80063d6:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80063da:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80063de:	6038      	str	r0, [r7, #0]
 80063e0:	6918      	ldr	r0, [r3, #16]
 80063e2:	f7ff fd93 	bl	8005f0c <__hi0bits>
 80063e6:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80063ea:	6030      	str	r0, [r6, #0]
 80063ec:	4648      	mov	r0, r9
 80063ee:	b003      	add	sp, #12
 80063f0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80063f4:	a801      	add	r0, sp, #4
 80063f6:	f7ff fda9 	bl	8005f4c <__lo0bits>
 80063fa:	9b01      	ldr	r3, [sp, #4]
 80063fc:	f8c9 3014 	str.w	r3, [r9, #20]
 8006400:	2101      	movs	r1, #1
 8006402:	3020      	adds	r0, #32
 8006404:	f8c9 1010 	str.w	r1, [r9, #16]
 8006408:	f1b8 0f00 	cmp.w	r8, #0
 800640c:	d0e3      	beq.n	80063d6 <__d2b+0x5a>
 800640e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006412:	eb08 0300 	add.w	r3, r8, r0
 8006416:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 800641a:	603b      	str	r3, [r7, #0]
 800641c:	6030      	str	r0, [r6, #0]
 800641e:	4648      	mov	r0, r9
 8006420:	b003      	add	sp, #12
 8006422:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006426:	e9dd 1300 	ldrd	r1, r3, [sp]
 800642a:	f1c0 0220 	rsb	r2, r0, #32
 800642e:	fa03 f202 	lsl.w	r2, r3, r2
 8006432:	430a      	orrs	r2, r1
 8006434:	40c3      	lsrs	r3, r0
 8006436:	9301      	str	r3, [sp, #4]
 8006438:	f8c9 2014 	str.w	r2, [r9, #20]
 800643c:	e7c0      	b.n	80063c0 <__d2b+0x44>
 800643e:	bf00      	nop

08006440 <_realloc_r>:
 8006440:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006444:	4692      	mov	sl, r2
 8006446:	b083      	sub	sp, #12
 8006448:	2900      	cmp	r1, #0
 800644a:	f000 80a1 	beq.w	8006590 <_realloc_r+0x150>
 800644e:	460d      	mov	r5, r1
 8006450:	4680      	mov	r8, r0
 8006452:	f10a 040b 	add.w	r4, sl, #11
 8006456:	f7ff fcdd 	bl	8005e14 <__malloc_lock>
 800645a:	f855 2c04 	ldr.w	r2, [r5, #-4]
 800645e:	2c16      	cmp	r4, #22
 8006460:	f022 0603 	bic.w	r6, r2, #3
 8006464:	f1a5 0708 	sub.w	r7, r5, #8
 8006468:	d83e      	bhi.n	80064e8 <_realloc_r+0xa8>
 800646a:	2410      	movs	r4, #16
 800646c:	4621      	mov	r1, r4
 800646e:	45a2      	cmp	sl, r4
 8006470:	d83f      	bhi.n	80064f2 <_realloc_r+0xb2>
 8006472:	428e      	cmp	r6, r1
 8006474:	eb07 0906 	add.w	r9, r7, r6
 8006478:	da74      	bge.n	8006564 <_realloc_r+0x124>
 800647a:	4bc7      	ldr	r3, [pc, #796]	; (8006798 <_realloc_r+0x358>)
 800647c:	6898      	ldr	r0, [r3, #8]
 800647e:	4548      	cmp	r0, r9
 8006480:	f000 80aa 	beq.w	80065d8 <_realloc_r+0x198>
 8006484:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006488:	f020 0301 	bic.w	r3, r0, #1
 800648c:	444b      	add	r3, r9
 800648e:	685b      	ldr	r3, [r3, #4]
 8006490:	07db      	lsls	r3, r3, #31
 8006492:	f140 8083 	bpl.w	800659c <_realloc_r+0x15c>
 8006496:	07d2      	lsls	r2, r2, #31
 8006498:	d534      	bpl.n	8006504 <_realloc_r+0xc4>
 800649a:	4651      	mov	r1, sl
 800649c:	4640      	mov	r0, r8
 800649e:	f7ff f9b1 	bl	8005804 <_malloc_r>
 80064a2:	4682      	mov	sl, r0
 80064a4:	b1e0      	cbz	r0, 80064e0 <_realloc_r+0xa0>
 80064a6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80064aa:	f023 0301 	bic.w	r3, r3, #1
 80064ae:	443b      	add	r3, r7
 80064b0:	f1a0 0208 	sub.w	r2, r0, #8
 80064b4:	4293      	cmp	r3, r2
 80064b6:	f000 80f9 	beq.w	80066ac <_realloc_r+0x26c>
 80064ba:	1f32      	subs	r2, r6, #4
 80064bc:	2a24      	cmp	r2, #36	; 0x24
 80064be:	f200 8107 	bhi.w	80066d0 <_realloc_r+0x290>
 80064c2:	2a13      	cmp	r2, #19
 80064c4:	6829      	ldr	r1, [r5, #0]
 80064c6:	f200 80e6 	bhi.w	8006696 <_realloc_r+0x256>
 80064ca:	4603      	mov	r3, r0
 80064cc:	462a      	mov	r2, r5
 80064ce:	6019      	str	r1, [r3, #0]
 80064d0:	6851      	ldr	r1, [r2, #4]
 80064d2:	6059      	str	r1, [r3, #4]
 80064d4:	6892      	ldr	r2, [r2, #8]
 80064d6:	609a      	str	r2, [r3, #8]
 80064d8:	4629      	mov	r1, r5
 80064da:	4640      	mov	r0, r8
 80064dc:	f7fe fe68 	bl	80051b0 <_free_r>
 80064e0:	4640      	mov	r0, r8
 80064e2:	f7ff fc9d 	bl	8005e20 <__malloc_unlock>
 80064e6:	e04f      	b.n	8006588 <_realloc_r+0x148>
 80064e8:	f024 0407 	bic.w	r4, r4, #7
 80064ec:	2c00      	cmp	r4, #0
 80064ee:	4621      	mov	r1, r4
 80064f0:	dabd      	bge.n	800646e <_realloc_r+0x2e>
 80064f2:	f04f 0a00 	mov.w	sl, #0
 80064f6:	230c      	movs	r3, #12
 80064f8:	4650      	mov	r0, sl
 80064fa:	f8c8 3000 	str.w	r3, [r8]
 80064fe:	b003      	add	sp, #12
 8006500:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006504:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006508:	eba7 0b03 	sub.w	fp, r7, r3
 800650c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006510:	f022 0203 	bic.w	r2, r2, #3
 8006514:	18b3      	adds	r3, r6, r2
 8006516:	428b      	cmp	r3, r1
 8006518:	dbbf      	blt.n	800649a <_realloc_r+0x5a>
 800651a:	46da      	mov	sl, fp
 800651c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006520:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006524:	1f32      	subs	r2, r6, #4
 8006526:	2a24      	cmp	r2, #36	; 0x24
 8006528:	60c1      	str	r1, [r0, #12]
 800652a:	eb0b 0903 	add.w	r9, fp, r3
 800652e:	6088      	str	r0, [r1, #8]
 8006530:	f200 80c6 	bhi.w	80066c0 <_realloc_r+0x280>
 8006534:	2a13      	cmp	r2, #19
 8006536:	6829      	ldr	r1, [r5, #0]
 8006538:	f240 80c0 	bls.w	80066bc <_realloc_r+0x27c>
 800653c:	f8cb 1008 	str.w	r1, [fp, #8]
 8006540:	6869      	ldr	r1, [r5, #4]
 8006542:	f8cb 100c 	str.w	r1, [fp, #12]
 8006546:	2a1b      	cmp	r2, #27
 8006548:	68a9      	ldr	r1, [r5, #8]
 800654a:	f200 80d8 	bhi.w	80066fe <_realloc_r+0x2be>
 800654e:	f10b 0210 	add.w	r2, fp, #16
 8006552:	3508      	adds	r5, #8
 8006554:	6011      	str	r1, [r2, #0]
 8006556:	6869      	ldr	r1, [r5, #4]
 8006558:	6051      	str	r1, [r2, #4]
 800655a:	68a9      	ldr	r1, [r5, #8]
 800655c:	6091      	str	r1, [r2, #8]
 800655e:	461e      	mov	r6, r3
 8006560:	465f      	mov	r7, fp
 8006562:	4655      	mov	r5, sl
 8006564:	687b      	ldr	r3, [r7, #4]
 8006566:	1b32      	subs	r2, r6, r4
 8006568:	2a0f      	cmp	r2, #15
 800656a:	f003 0301 	and.w	r3, r3, #1
 800656e:	d822      	bhi.n	80065b6 <_realloc_r+0x176>
 8006570:	4333      	orrs	r3, r6
 8006572:	607b      	str	r3, [r7, #4]
 8006574:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006578:	f043 0301 	orr.w	r3, r3, #1
 800657c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006580:	4640      	mov	r0, r8
 8006582:	f7ff fc4d 	bl	8005e20 <__malloc_unlock>
 8006586:	46aa      	mov	sl, r5
 8006588:	4650      	mov	r0, sl
 800658a:	b003      	add	sp, #12
 800658c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006590:	4611      	mov	r1, r2
 8006592:	b003      	add	sp, #12
 8006594:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006598:	f7ff b934 	b.w	8005804 <_malloc_r>
 800659c:	f020 0003 	bic.w	r0, r0, #3
 80065a0:	1833      	adds	r3, r6, r0
 80065a2:	428b      	cmp	r3, r1
 80065a4:	db61      	blt.n	800666a <_realloc_r+0x22a>
 80065a6:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80065aa:	461e      	mov	r6, r3
 80065ac:	60ca      	str	r2, [r1, #12]
 80065ae:	eb07 0903 	add.w	r9, r7, r3
 80065b2:	6091      	str	r1, [r2, #8]
 80065b4:	e7d6      	b.n	8006564 <_realloc_r+0x124>
 80065b6:	1939      	adds	r1, r7, r4
 80065b8:	4323      	orrs	r3, r4
 80065ba:	f042 0201 	orr.w	r2, r2, #1
 80065be:	607b      	str	r3, [r7, #4]
 80065c0:	604a      	str	r2, [r1, #4]
 80065c2:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80065c6:	f043 0301 	orr.w	r3, r3, #1
 80065ca:	3108      	adds	r1, #8
 80065cc:	f8c9 3004 	str.w	r3, [r9, #4]
 80065d0:	4640      	mov	r0, r8
 80065d2:	f7fe fded 	bl	80051b0 <_free_r>
 80065d6:	e7d3      	b.n	8006580 <_realloc_r+0x140>
 80065d8:	6840      	ldr	r0, [r0, #4]
 80065da:	f020 0903 	bic.w	r9, r0, #3
 80065de:	44b1      	add	r9, r6
 80065e0:	f104 0010 	add.w	r0, r4, #16
 80065e4:	4581      	cmp	r9, r0
 80065e6:	da77      	bge.n	80066d8 <_realloc_r+0x298>
 80065e8:	07d2      	lsls	r2, r2, #31
 80065ea:	f53f af56 	bmi.w	800649a <_realloc_r+0x5a>
 80065ee:	f855 2c08 	ldr.w	r2, [r5, #-8]
 80065f2:	eba7 0b02 	sub.w	fp, r7, r2
 80065f6:	f8db 2004 	ldr.w	r2, [fp, #4]
 80065fa:	f022 0203 	bic.w	r2, r2, #3
 80065fe:	4491      	add	r9, r2
 8006600:	4548      	cmp	r0, r9
 8006602:	dc87      	bgt.n	8006514 <_realloc_r+0xd4>
 8006604:	46da      	mov	sl, fp
 8006606:	f8db 100c 	ldr.w	r1, [fp, #12]
 800660a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800660e:	1f32      	subs	r2, r6, #4
 8006610:	2a24      	cmp	r2, #36	; 0x24
 8006612:	60c1      	str	r1, [r0, #12]
 8006614:	6088      	str	r0, [r1, #8]
 8006616:	f200 80a1 	bhi.w	800675c <_realloc_r+0x31c>
 800661a:	2a13      	cmp	r2, #19
 800661c:	6829      	ldr	r1, [r5, #0]
 800661e:	f240 809b 	bls.w	8006758 <_realloc_r+0x318>
 8006622:	f8cb 1008 	str.w	r1, [fp, #8]
 8006626:	6869      	ldr	r1, [r5, #4]
 8006628:	f8cb 100c 	str.w	r1, [fp, #12]
 800662c:	2a1b      	cmp	r2, #27
 800662e:	68a9      	ldr	r1, [r5, #8]
 8006630:	f200 809b 	bhi.w	800676a <_realloc_r+0x32a>
 8006634:	f10b 0210 	add.w	r2, fp, #16
 8006638:	3508      	adds	r5, #8
 800663a:	6011      	str	r1, [r2, #0]
 800663c:	6869      	ldr	r1, [r5, #4]
 800663e:	6051      	str	r1, [r2, #4]
 8006640:	68a9      	ldr	r1, [r5, #8]
 8006642:	6091      	str	r1, [r2, #8]
 8006644:	eb0b 0104 	add.w	r1, fp, r4
 8006648:	eba9 0204 	sub.w	r2, r9, r4
 800664c:	f042 0201 	orr.w	r2, r2, #1
 8006650:	6099      	str	r1, [r3, #8]
 8006652:	604a      	str	r2, [r1, #4]
 8006654:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006658:	f003 0301 	and.w	r3, r3, #1
 800665c:	431c      	orrs	r4, r3
 800665e:	4640      	mov	r0, r8
 8006660:	f8cb 4004 	str.w	r4, [fp, #4]
 8006664:	f7ff fbdc 	bl	8005e20 <__malloc_unlock>
 8006668:	e78e      	b.n	8006588 <_realloc_r+0x148>
 800666a:	07d3      	lsls	r3, r2, #31
 800666c:	f53f af15 	bmi.w	800649a <_realloc_r+0x5a>
 8006670:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006674:	eba7 0b03 	sub.w	fp, r7, r3
 8006678:	f8db 2004 	ldr.w	r2, [fp, #4]
 800667c:	f022 0203 	bic.w	r2, r2, #3
 8006680:	4410      	add	r0, r2
 8006682:	1983      	adds	r3, r0, r6
 8006684:	428b      	cmp	r3, r1
 8006686:	f6ff af45 	blt.w	8006514 <_realloc_r+0xd4>
 800668a:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800668e:	46da      	mov	sl, fp
 8006690:	60ca      	str	r2, [r1, #12]
 8006692:	6091      	str	r1, [r2, #8]
 8006694:	e742      	b.n	800651c <_realloc_r+0xdc>
 8006696:	6001      	str	r1, [r0, #0]
 8006698:	686b      	ldr	r3, [r5, #4]
 800669a:	6043      	str	r3, [r0, #4]
 800669c:	2a1b      	cmp	r2, #27
 800669e:	d83a      	bhi.n	8006716 <_realloc_r+0x2d6>
 80066a0:	f105 0208 	add.w	r2, r5, #8
 80066a4:	f100 0308 	add.w	r3, r0, #8
 80066a8:	68a9      	ldr	r1, [r5, #8]
 80066aa:	e710      	b.n	80064ce <_realloc_r+0x8e>
 80066ac:	f850 3c04 	ldr.w	r3, [r0, #-4]
 80066b0:	f023 0303 	bic.w	r3, r3, #3
 80066b4:	441e      	add	r6, r3
 80066b6:	eb07 0906 	add.w	r9, r7, r6
 80066ba:	e753      	b.n	8006564 <_realloc_r+0x124>
 80066bc:	4652      	mov	r2, sl
 80066be:	e749      	b.n	8006554 <_realloc_r+0x114>
 80066c0:	4629      	mov	r1, r5
 80066c2:	4650      	mov	r0, sl
 80066c4:	461e      	mov	r6, r3
 80066c6:	465f      	mov	r7, fp
 80066c8:	f7ff fb40 	bl	8005d4c <memmove>
 80066cc:	4655      	mov	r5, sl
 80066ce:	e749      	b.n	8006564 <_realloc_r+0x124>
 80066d0:	4629      	mov	r1, r5
 80066d2:	f7ff fb3b 	bl	8005d4c <memmove>
 80066d6:	e6ff      	b.n	80064d8 <_realloc_r+0x98>
 80066d8:	4427      	add	r7, r4
 80066da:	eba9 0904 	sub.w	r9, r9, r4
 80066de:	f049 0201 	orr.w	r2, r9, #1
 80066e2:	609f      	str	r7, [r3, #8]
 80066e4:	607a      	str	r2, [r7, #4]
 80066e6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80066ea:	f003 0301 	and.w	r3, r3, #1
 80066ee:	431c      	orrs	r4, r3
 80066f0:	4640      	mov	r0, r8
 80066f2:	f845 4c04 	str.w	r4, [r5, #-4]
 80066f6:	f7ff fb93 	bl	8005e20 <__malloc_unlock>
 80066fa:	46aa      	mov	sl, r5
 80066fc:	e744      	b.n	8006588 <_realloc_r+0x148>
 80066fe:	f8cb 1010 	str.w	r1, [fp, #16]
 8006702:	68e9      	ldr	r1, [r5, #12]
 8006704:	f8cb 1014 	str.w	r1, [fp, #20]
 8006708:	2a24      	cmp	r2, #36	; 0x24
 800670a:	d010      	beq.n	800672e <_realloc_r+0x2ee>
 800670c:	6929      	ldr	r1, [r5, #16]
 800670e:	f10b 0218 	add.w	r2, fp, #24
 8006712:	3510      	adds	r5, #16
 8006714:	e71e      	b.n	8006554 <_realloc_r+0x114>
 8006716:	68ab      	ldr	r3, [r5, #8]
 8006718:	6083      	str	r3, [r0, #8]
 800671a:	68eb      	ldr	r3, [r5, #12]
 800671c:	60c3      	str	r3, [r0, #12]
 800671e:	2a24      	cmp	r2, #36	; 0x24
 8006720:	d010      	beq.n	8006744 <_realloc_r+0x304>
 8006722:	f105 0210 	add.w	r2, r5, #16
 8006726:	f100 0310 	add.w	r3, r0, #16
 800672a:	6929      	ldr	r1, [r5, #16]
 800672c:	e6cf      	b.n	80064ce <_realloc_r+0x8e>
 800672e:	692a      	ldr	r2, [r5, #16]
 8006730:	f8cb 2018 	str.w	r2, [fp, #24]
 8006734:	696a      	ldr	r2, [r5, #20]
 8006736:	f8cb 201c 	str.w	r2, [fp, #28]
 800673a:	69a9      	ldr	r1, [r5, #24]
 800673c:	f10b 0220 	add.w	r2, fp, #32
 8006740:	3518      	adds	r5, #24
 8006742:	e707      	b.n	8006554 <_realloc_r+0x114>
 8006744:	692b      	ldr	r3, [r5, #16]
 8006746:	6103      	str	r3, [r0, #16]
 8006748:	696b      	ldr	r3, [r5, #20]
 800674a:	6143      	str	r3, [r0, #20]
 800674c:	69a9      	ldr	r1, [r5, #24]
 800674e:	f105 0218 	add.w	r2, r5, #24
 8006752:	f100 0318 	add.w	r3, r0, #24
 8006756:	e6ba      	b.n	80064ce <_realloc_r+0x8e>
 8006758:	4652      	mov	r2, sl
 800675a:	e76e      	b.n	800663a <_realloc_r+0x1fa>
 800675c:	4629      	mov	r1, r5
 800675e:	4650      	mov	r0, sl
 8006760:	9301      	str	r3, [sp, #4]
 8006762:	f7ff faf3 	bl	8005d4c <memmove>
 8006766:	9b01      	ldr	r3, [sp, #4]
 8006768:	e76c      	b.n	8006644 <_realloc_r+0x204>
 800676a:	f8cb 1010 	str.w	r1, [fp, #16]
 800676e:	68e9      	ldr	r1, [r5, #12]
 8006770:	f8cb 1014 	str.w	r1, [fp, #20]
 8006774:	2a24      	cmp	r2, #36	; 0x24
 8006776:	d004      	beq.n	8006782 <_realloc_r+0x342>
 8006778:	6929      	ldr	r1, [r5, #16]
 800677a:	f10b 0218 	add.w	r2, fp, #24
 800677e:	3510      	adds	r5, #16
 8006780:	e75b      	b.n	800663a <_realloc_r+0x1fa>
 8006782:	692a      	ldr	r2, [r5, #16]
 8006784:	f8cb 2018 	str.w	r2, [fp, #24]
 8006788:	696a      	ldr	r2, [r5, #20]
 800678a:	f8cb 201c 	str.w	r2, [fp, #28]
 800678e:	69a9      	ldr	r1, [r5, #24]
 8006790:	f10b 0220 	add.w	r2, fp, #32
 8006794:	3518      	adds	r5, #24
 8006796:	e750      	b.n	800663a <_realloc_r+0x1fa>
 8006798:	2000044c 	.word	0x2000044c

0800679c <frexp>:
 800679c:	ec53 2b10 	vmov	r2, r3, d0
 80067a0:	b570      	push	{r4, r5, r6, lr}
 80067a2:	4e16      	ldr	r6, [pc, #88]	; (80067fc <frexp+0x60>)
 80067a4:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 80067a8:	2500      	movs	r5, #0
 80067aa:	42b1      	cmp	r1, r6
 80067ac:	4604      	mov	r4, r0
 80067ae:	6005      	str	r5, [r0, #0]
 80067b0:	dc21      	bgt.n	80067f6 <frexp+0x5a>
 80067b2:	ee10 6a10 	vmov	r6, s0
 80067b6:	430e      	orrs	r6, r1
 80067b8:	d01d      	beq.n	80067f6 <frexp+0x5a>
 80067ba:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80067be:	4618      	mov	r0, r3
 80067c0:	da0c      	bge.n	80067dc <frexp+0x40>
 80067c2:	4619      	mov	r1, r3
 80067c4:	2200      	movs	r2, #0
 80067c6:	ee10 0a10 	vmov	r0, s0
 80067ca:	4b0d      	ldr	r3, [pc, #52]	; (8006800 <frexp+0x64>)
 80067cc:	f7fa f9b4 	bl	8000b38 <__aeabi_dmul>
 80067d0:	f06f 0535 	mvn.w	r5, #53	; 0x35
 80067d4:	4602      	mov	r2, r0
 80067d6:	4608      	mov	r0, r1
 80067d8:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80067dc:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 80067e0:	1509      	asrs	r1, r1, #20
 80067e2:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 80067e6:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 80067ea:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 80067ee:	4429      	add	r1, r5
 80067f0:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80067f4:	6021      	str	r1, [r4, #0]
 80067f6:	ec43 2b10 	vmov	d0, r2, r3
 80067fa:	bd70      	pop	{r4, r5, r6, pc}
 80067fc:	7fefffff 	.word	0x7fefffff
 8006800:	43500000 	.word	0x43500000

08006804 <_sbrk_r>:
 8006804:	b538      	push	{r3, r4, r5, lr}
 8006806:	4c07      	ldr	r4, [pc, #28]	; (8006824 <_sbrk_r+0x20>)
 8006808:	2300      	movs	r3, #0
 800680a:	4605      	mov	r5, r0
 800680c:	4608      	mov	r0, r1
 800680e:	6023      	str	r3, [r4, #0]
 8006810:	f7fb fc35 	bl	800207e <_sbrk>
 8006814:	1c43      	adds	r3, r0, #1
 8006816:	d000      	beq.n	800681a <_sbrk_r+0x16>
 8006818:	bd38      	pop	{r3, r4, r5, pc}
 800681a:	6823      	ldr	r3, [r4, #0]
 800681c:	2b00      	cmp	r3, #0
 800681e:	d0fb      	beq.n	8006818 <_sbrk_r+0x14>
 8006820:	602b      	str	r3, [r5, #0]
 8006822:	bd38      	pop	{r3, r4, r5, pc}
 8006824:	20000ca8 	.word	0x20000ca8

08006828 <__sread>:
 8006828:	b510      	push	{r4, lr}
 800682a:	460c      	mov	r4, r1
 800682c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006830:	f000 fabc 	bl	8006dac <_read_r>
 8006834:	2800      	cmp	r0, #0
 8006836:	db03      	blt.n	8006840 <__sread+0x18>
 8006838:	6d23      	ldr	r3, [r4, #80]	; 0x50
 800683a:	4403      	add	r3, r0
 800683c:	6523      	str	r3, [r4, #80]	; 0x50
 800683e:	bd10      	pop	{r4, pc}
 8006840:	89a3      	ldrh	r3, [r4, #12]
 8006842:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006846:	81a3      	strh	r3, [r4, #12]
 8006848:	bd10      	pop	{r4, pc}
 800684a:	bf00      	nop

0800684c <__swrite>:
 800684c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006850:	4616      	mov	r6, r2
 8006852:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006856:	461f      	mov	r7, r3
 8006858:	05d3      	lsls	r3, r2, #23
 800685a:	460c      	mov	r4, r1
 800685c:	4605      	mov	r5, r0
 800685e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006862:	d507      	bpl.n	8006874 <__swrite+0x28>
 8006864:	2200      	movs	r2, #0
 8006866:	2302      	movs	r3, #2
 8006868:	f000 fa74 	bl	8006d54 <_lseek_r>
 800686c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006870:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006874:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006878:	81a2      	strh	r2, [r4, #12]
 800687a:	463b      	mov	r3, r7
 800687c:	4632      	mov	r2, r6
 800687e:	4628      	mov	r0, r5
 8006880:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006884:	f000 b88c 	b.w	80069a0 <_write_r>

08006888 <__sseek>:
 8006888:	b510      	push	{r4, lr}
 800688a:	460c      	mov	r4, r1
 800688c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006890:	f000 fa60 	bl	8006d54 <_lseek_r>
 8006894:	89a3      	ldrh	r3, [r4, #12]
 8006896:	1c42      	adds	r2, r0, #1
 8006898:	bf0e      	itee	eq
 800689a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 800689e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 80068a2:	6520      	strne	r0, [r4, #80]	; 0x50
 80068a4:	81a3      	strh	r3, [r4, #12]
 80068a6:	bd10      	pop	{r4, pc}

080068a8 <__sclose>:
 80068a8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80068ac:	f000 b922 	b.w	8006af4 <_close_r>

080068b0 <strncpy>:
 80068b0:	ea40 0301 	orr.w	r3, r0, r1
 80068b4:	079b      	lsls	r3, r3, #30
 80068b6:	b470      	push	{r4, r5, r6}
 80068b8:	d12a      	bne.n	8006910 <strncpy+0x60>
 80068ba:	2a03      	cmp	r2, #3
 80068bc:	d928      	bls.n	8006910 <strncpy+0x60>
 80068be:	460c      	mov	r4, r1
 80068c0:	4603      	mov	r3, r0
 80068c2:	4621      	mov	r1, r4
 80068c4:	f854 6b04 	ldr.w	r6, [r4], #4
 80068c8:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 80068cc:	ea25 0506 	bic.w	r5, r5, r6
 80068d0:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 80068d4:	d106      	bne.n	80068e4 <strncpy+0x34>
 80068d6:	3a04      	subs	r2, #4
 80068d8:	2a03      	cmp	r2, #3
 80068da:	f843 6b04 	str.w	r6, [r3], #4
 80068de:	4621      	mov	r1, r4
 80068e0:	d8ef      	bhi.n	80068c2 <strncpy+0x12>
 80068e2:	b19a      	cbz	r2, 800690c <strncpy+0x5c>
 80068e4:	780c      	ldrb	r4, [r1, #0]
 80068e6:	701c      	strb	r4, [r3, #0]
 80068e8:	3a01      	subs	r2, #1
 80068ea:	3301      	adds	r3, #1
 80068ec:	b13c      	cbz	r4, 80068fe <strncpy+0x4e>
 80068ee:	b16a      	cbz	r2, 800690c <strncpy+0x5c>
 80068f0:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 80068f4:	f803 4b01 	strb.w	r4, [r3], #1
 80068f8:	3a01      	subs	r2, #1
 80068fa:	2c00      	cmp	r4, #0
 80068fc:	d1f7      	bne.n	80068ee <strncpy+0x3e>
 80068fe:	b12a      	cbz	r2, 800690c <strncpy+0x5c>
 8006900:	441a      	add	r2, r3
 8006902:	2100      	movs	r1, #0
 8006904:	f803 1b01 	strb.w	r1, [r3], #1
 8006908:	4293      	cmp	r3, r2
 800690a:	d1fb      	bne.n	8006904 <strncpy+0x54>
 800690c:	bc70      	pop	{r4, r5, r6}
 800690e:	4770      	bx	lr
 8006910:	4603      	mov	r3, r0
 8006912:	e7e6      	b.n	80068e2 <strncpy+0x32>

08006914 <__sprint_r.part.0>:
 8006914:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006918:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 800691a:	049c      	lsls	r4, r3, #18
 800691c:	4692      	mov	sl, r2
 800691e:	d52d      	bpl.n	800697c <__sprint_r.part.0+0x68>
 8006920:	6893      	ldr	r3, [r2, #8]
 8006922:	6812      	ldr	r2, [r2, #0]
 8006924:	b343      	cbz	r3, 8006978 <__sprint_r.part.0+0x64>
 8006926:	460e      	mov	r6, r1
 8006928:	4607      	mov	r7, r0
 800692a:	f102 0908 	add.w	r9, r2, #8
 800692e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006932:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006936:	d015      	beq.n	8006964 <__sprint_r.part.0+0x50>
 8006938:	3d04      	subs	r5, #4
 800693a:	2400      	movs	r4, #0
 800693c:	e001      	b.n	8006942 <__sprint_r.part.0+0x2e>
 800693e:	45a0      	cmp	r8, r4
 8006940:	d00e      	beq.n	8006960 <__sprint_r.part.0+0x4c>
 8006942:	4632      	mov	r2, r6
 8006944:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006948:	4638      	mov	r0, r7
 800694a:	f000 f99d 	bl	8006c88 <_fputwc_r>
 800694e:	1c43      	adds	r3, r0, #1
 8006950:	f104 0401 	add.w	r4, r4, #1
 8006954:	d1f3      	bne.n	800693e <__sprint_r.part.0+0x2a>
 8006956:	2300      	movs	r3, #0
 8006958:	e9ca 3301 	strd	r3, r3, [sl, #4]
 800695c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006960:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006964:	f02b 0b03 	bic.w	fp, fp, #3
 8006968:	eba3 030b 	sub.w	r3, r3, fp
 800696c:	f8ca 3008 	str.w	r3, [sl, #8]
 8006970:	f109 0908 	add.w	r9, r9, #8
 8006974:	2b00      	cmp	r3, #0
 8006976:	d1da      	bne.n	800692e <__sprint_r.part.0+0x1a>
 8006978:	2000      	movs	r0, #0
 800697a:	e7ec      	b.n	8006956 <__sprint_r.part.0+0x42>
 800697c:	f7fe fd0c 	bl	8005398 <__sfvwrite_r>
 8006980:	2300      	movs	r3, #0
 8006982:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006986:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800698a:	bf00      	nop

0800698c <__sprint_r>:
 800698c:	6893      	ldr	r3, [r2, #8]
 800698e:	b10b      	cbz	r3, 8006994 <__sprint_r+0x8>
 8006990:	f7ff bfc0 	b.w	8006914 <__sprint_r.part.0>
 8006994:	b410      	push	{r4}
 8006996:	4618      	mov	r0, r3
 8006998:	6053      	str	r3, [r2, #4]
 800699a:	f85d 4b04 	ldr.w	r4, [sp], #4
 800699e:	4770      	bx	lr

080069a0 <_write_r>:
 80069a0:	b570      	push	{r4, r5, r6, lr}
 80069a2:	460d      	mov	r5, r1
 80069a4:	4c08      	ldr	r4, [pc, #32]	; (80069c8 <_write_r+0x28>)
 80069a6:	4611      	mov	r1, r2
 80069a8:	4606      	mov	r6, r0
 80069aa:	461a      	mov	r2, r3
 80069ac:	4628      	mov	r0, r5
 80069ae:	2300      	movs	r3, #0
 80069b0:	6023      	str	r3, [r4, #0]
 80069b2:	f7fb fb51 	bl	8002058 <_write>
 80069b6:	1c43      	adds	r3, r0, #1
 80069b8:	d000      	beq.n	80069bc <_write_r+0x1c>
 80069ba:	bd70      	pop	{r4, r5, r6, pc}
 80069bc:	6823      	ldr	r3, [r4, #0]
 80069be:	2b00      	cmp	r3, #0
 80069c0:	d0fb      	beq.n	80069ba <_write_r+0x1a>
 80069c2:	6033      	str	r3, [r6, #0]
 80069c4:	bd70      	pop	{r4, r5, r6, pc}
 80069c6:	bf00      	nop
 80069c8:	20000ca8 	.word	0x20000ca8

080069cc <__register_exitproc>:
 80069cc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80069d0:	4d2b      	ldr	r5, [pc, #172]	; (8006a80 <__register_exitproc+0xb4>)
 80069d2:	4606      	mov	r6, r0
 80069d4:	6828      	ldr	r0, [r5, #0]
 80069d6:	4698      	mov	r8, r3
 80069d8:	460f      	mov	r7, r1
 80069da:	4691      	mov	r9, r2
 80069dc:	f7fe fe96 	bl	800570c <__retarget_lock_acquire_recursive>
 80069e0:	4b28      	ldr	r3, [pc, #160]	; (8006a84 <__register_exitproc+0xb8>)
 80069e2:	681c      	ldr	r4, [r3, #0]
 80069e4:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 80069e8:	2b00      	cmp	r3, #0
 80069ea:	d03d      	beq.n	8006a68 <__register_exitproc+0x9c>
 80069ec:	685a      	ldr	r2, [r3, #4]
 80069ee:	2a1f      	cmp	r2, #31
 80069f0:	dc0d      	bgt.n	8006a0e <__register_exitproc+0x42>
 80069f2:	f102 0c01 	add.w	ip, r2, #1
 80069f6:	bb16      	cbnz	r6, 8006a3e <__register_exitproc+0x72>
 80069f8:	3202      	adds	r2, #2
 80069fa:	f8c3 c004 	str.w	ip, [r3, #4]
 80069fe:	6828      	ldr	r0, [r5, #0]
 8006a00:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006a04:	f7fe fe84 	bl	8005710 <__retarget_lock_release_recursive>
 8006a08:	2000      	movs	r0, #0
 8006a0a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006a0e:	4b1e      	ldr	r3, [pc, #120]	; (8006a88 <__register_exitproc+0xbc>)
 8006a10:	b37b      	cbz	r3, 8006a72 <__register_exitproc+0xa6>
 8006a12:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006a16:	f3af 8000 	nop.w
 8006a1a:	4603      	mov	r3, r0
 8006a1c:	b348      	cbz	r0, 8006a72 <__register_exitproc+0xa6>
 8006a1e:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006a22:	2100      	movs	r1, #0
 8006a24:	e9c0 2100 	strd	r2, r1, [r0]
 8006a28:	f04f 0c01 	mov.w	ip, #1
 8006a2c:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006a30:	460a      	mov	r2, r1
 8006a32:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006a36:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006a3a:	2e00      	cmp	r6, #0
 8006a3c:	d0dc      	beq.n	80069f8 <__register_exitproc+0x2c>
 8006a3e:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006a42:	2401      	movs	r4, #1
 8006a44:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006a48:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006a4c:	4094      	lsls	r4, r2
 8006a4e:	4320      	orrs	r0, r4
 8006a50:	2e02      	cmp	r6, #2
 8006a52:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006a56:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006a5a:	d1cd      	bne.n	80069f8 <__register_exitproc+0x2c>
 8006a5c:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006a60:	430c      	orrs	r4, r1
 8006a62:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006a66:	e7c7      	b.n	80069f8 <__register_exitproc+0x2c>
 8006a68:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006a6c:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006a70:	e7bc      	b.n	80069ec <__register_exitproc+0x20>
 8006a72:	6828      	ldr	r0, [r5, #0]
 8006a74:	f7fe fe4c 	bl	8005710 <__retarget_lock_release_recursive>
 8006a78:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006a7c:	e7c5      	b.n	8006a0a <__register_exitproc+0x3e>
 8006a7e:	bf00      	nop
 8006a80:	20000448 	.word	0x20000448
 8006a84:	080071b8 	.word	0x080071b8
 8006a88:	00000000 	.word	0x00000000

08006a8c <_calloc_r>:
 8006a8c:	b510      	push	{r4, lr}
 8006a8e:	fb02 f101 	mul.w	r1, r2, r1
 8006a92:	f7fe feb7 	bl	8005804 <_malloc_r>
 8006a96:	4604      	mov	r4, r0
 8006a98:	b1d8      	cbz	r0, 8006ad2 <_calloc_r+0x46>
 8006a9a:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006a9e:	f022 0203 	bic.w	r2, r2, #3
 8006aa2:	3a04      	subs	r2, #4
 8006aa4:	2a24      	cmp	r2, #36	; 0x24
 8006aa6:	d81d      	bhi.n	8006ae4 <_calloc_r+0x58>
 8006aa8:	2a13      	cmp	r2, #19
 8006aaa:	d914      	bls.n	8006ad6 <_calloc_r+0x4a>
 8006aac:	2300      	movs	r3, #0
 8006aae:	2a1b      	cmp	r2, #27
 8006ab0:	e9c0 3300 	strd	r3, r3, [r0]
 8006ab4:	d91b      	bls.n	8006aee <_calloc_r+0x62>
 8006ab6:	2a24      	cmp	r2, #36	; 0x24
 8006ab8:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006abc:	bf0a      	itet	eq
 8006abe:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006ac2:	f100 0210 	addne.w	r2, r0, #16
 8006ac6:	f100 0218 	addeq.w	r2, r0, #24
 8006aca:	2300      	movs	r3, #0
 8006acc:	e9c2 3300 	strd	r3, r3, [r2]
 8006ad0:	6093      	str	r3, [r2, #8]
 8006ad2:	4620      	mov	r0, r4
 8006ad4:	bd10      	pop	{r4, pc}
 8006ad6:	4602      	mov	r2, r0
 8006ad8:	2300      	movs	r3, #0
 8006ada:	e9c2 3300 	strd	r3, r3, [r2]
 8006ade:	6093      	str	r3, [r2, #8]
 8006ae0:	4620      	mov	r0, r4
 8006ae2:	bd10      	pop	{r4, pc}
 8006ae4:	2100      	movs	r1, #0
 8006ae6:	f7fb fb6f 	bl	80021c8 <memset>
 8006aea:	4620      	mov	r0, r4
 8006aec:	bd10      	pop	{r4, pc}
 8006aee:	f100 0208 	add.w	r2, r0, #8
 8006af2:	e7f1      	b.n	8006ad8 <_calloc_r+0x4c>

08006af4 <_close_r>:
 8006af4:	b538      	push	{r3, r4, r5, lr}
 8006af6:	4c07      	ldr	r4, [pc, #28]	; (8006b14 <_close_r+0x20>)
 8006af8:	2300      	movs	r3, #0
 8006afa:	4605      	mov	r5, r0
 8006afc:	4608      	mov	r0, r1
 8006afe:	6023      	str	r3, [r4, #0]
 8006b00:	f7fb fad9 	bl	80020b6 <_close>
 8006b04:	1c43      	adds	r3, r0, #1
 8006b06:	d000      	beq.n	8006b0a <_close_r+0x16>
 8006b08:	bd38      	pop	{r3, r4, r5, pc}
 8006b0a:	6823      	ldr	r3, [r4, #0]
 8006b0c:	2b00      	cmp	r3, #0
 8006b0e:	d0fb      	beq.n	8006b08 <_close_r+0x14>
 8006b10:	602b      	str	r3, [r5, #0]
 8006b12:	bd38      	pop	{r3, r4, r5, pc}
 8006b14:	20000ca8 	.word	0x20000ca8

08006b18 <_fclose_r>:
 8006b18:	b570      	push	{r4, r5, r6, lr}
 8006b1a:	2900      	cmp	r1, #0
 8006b1c:	d048      	beq.n	8006bb0 <_fclose_r+0x98>
 8006b1e:	4605      	mov	r5, r0
 8006b20:	460c      	mov	r4, r1
 8006b22:	b110      	cbz	r0, 8006b2a <_fclose_r+0x12>
 8006b24:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006b26:	2b00      	cmp	r3, #0
 8006b28:	d048      	beq.n	8006bbc <_fclose_r+0xa4>
 8006b2a:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006b2c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b30:	07d0      	lsls	r0, r2, #31
 8006b32:	d440      	bmi.n	8006bb6 <_fclose_r+0x9e>
 8006b34:	0599      	lsls	r1, r3, #22
 8006b36:	d530      	bpl.n	8006b9a <_fclose_r+0x82>
 8006b38:	4621      	mov	r1, r4
 8006b3a:	4628      	mov	r0, r5
 8006b3c:	f7fe f990 	bl	8004e60 <__sflush_r>
 8006b40:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006b42:	4606      	mov	r6, r0
 8006b44:	b133      	cbz	r3, 8006b54 <_fclose_r+0x3c>
 8006b46:	69e1      	ldr	r1, [r4, #28]
 8006b48:	4628      	mov	r0, r5
 8006b4a:	4798      	blx	r3
 8006b4c:	2800      	cmp	r0, #0
 8006b4e:	bfb8      	it	lt
 8006b50:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006b54:	89a3      	ldrh	r3, [r4, #12]
 8006b56:	061a      	lsls	r2, r3, #24
 8006b58:	d43c      	bmi.n	8006bd4 <_fclose_r+0xbc>
 8006b5a:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006b5c:	b141      	cbz	r1, 8006b70 <_fclose_r+0x58>
 8006b5e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006b62:	4299      	cmp	r1, r3
 8006b64:	d002      	beq.n	8006b6c <_fclose_r+0x54>
 8006b66:	4628      	mov	r0, r5
 8006b68:	f7fe fb22 	bl	80051b0 <_free_r>
 8006b6c:	2300      	movs	r3, #0
 8006b6e:	6323      	str	r3, [r4, #48]	; 0x30
 8006b70:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006b72:	b121      	cbz	r1, 8006b7e <_fclose_r+0x66>
 8006b74:	4628      	mov	r0, r5
 8006b76:	f7fe fb1b 	bl	80051b0 <_free_r>
 8006b7a:	2300      	movs	r3, #0
 8006b7c:	6463      	str	r3, [r4, #68]	; 0x44
 8006b7e:	f7fe faa1 	bl	80050c4 <__sfp_lock_acquire>
 8006b82:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006b84:	2200      	movs	r2, #0
 8006b86:	07db      	lsls	r3, r3, #31
 8006b88:	81a2      	strh	r2, [r4, #12]
 8006b8a:	d51f      	bpl.n	8006bcc <_fclose_r+0xb4>
 8006b8c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b8e:	f7fe fdbb 	bl	8005708 <__retarget_lock_close_recursive>
 8006b92:	f7fe fa9d 	bl	80050d0 <__sfp_lock_release>
 8006b96:	4630      	mov	r0, r6
 8006b98:	bd70      	pop	{r4, r5, r6, pc}
 8006b9a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b9c:	f7fe fdb6 	bl	800570c <__retarget_lock_acquire_recursive>
 8006ba0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ba4:	2b00      	cmp	r3, #0
 8006ba6:	d1c7      	bne.n	8006b38 <_fclose_r+0x20>
 8006ba8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006baa:	f016 0601 	ands.w	r6, r6, #1
 8006bae:	d016      	beq.n	8006bde <_fclose_r+0xc6>
 8006bb0:	2600      	movs	r6, #0
 8006bb2:	4630      	mov	r0, r6
 8006bb4:	bd70      	pop	{r4, r5, r6, pc}
 8006bb6:	2b00      	cmp	r3, #0
 8006bb8:	d0fa      	beq.n	8006bb0 <_fclose_r+0x98>
 8006bba:	e7bd      	b.n	8006b38 <_fclose_r+0x20>
 8006bbc:	f7fe fa56 	bl	800506c <__sinit>
 8006bc0:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006bc2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006bc6:	07d0      	lsls	r0, r2, #31
 8006bc8:	d4f5      	bmi.n	8006bb6 <_fclose_r+0x9e>
 8006bca:	e7b3      	b.n	8006b34 <_fclose_r+0x1c>
 8006bcc:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006bce:	f7fe fd9f 	bl	8005710 <__retarget_lock_release_recursive>
 8006bd2:	e7db      	b.n	8006b8c <_fclose_r+0x74>
 8006bd4:	6921      	ldr	r1, [r4, #16]
 8006bd6:	4628      	mov	r0, r5
 8006bd8:	f7fe faea 	bl	80051b0 <_free_r>
 8006bdc:	e7bd      	b.n	8006b5a <_fclose_r+0x42>
 8006bde:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006be0:	f7fe fd96 	bl	8005710 <__retarget_lock_release_recursive>
 8006be4:	4630      	mov	r0, r6
 8006be6:	bd70      	pop	{r4, r5, r6, pc}

08006be8 <__fputwc>:
 8006be8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006bec:	b082      	sub	sp, #8
 8006bee:	4681      	mov	r9, r0
 8006bf0:	4688      	mov	r8, r1
 8006bf2:	4614      	mov	r4, r2
 8006bf4:	f000 f8a0 	bl	8006d38 <__locale_mb_cur_max>
 8006bf8:	2801      	cmp	r0, #1
 8006bfa:	d103      	bne.n	8006c04 <__fputwc+0x1c>
 8006bfc:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006c00:	2bfe      	cmp	r3, #254	; 0xfe
 8006c02:	d933      	bls.n	8006c6c <__fputwc+0x84>
 8006c04:	4642      	mov	r2, r8
 8006c06:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006c0a:	a901      	add	r1, sp, #4
 8006c0c:	4648      	mov	r0, r9
 8006c0e:	f000 f93b 	bl	8006e88 <_wcrtomb_r>
 8006c12:	1c42      	adds	r2, r0, #1
 8006c14:	4606      	mov	r6, r0
 8006c16:	d02f      	beq.n	8006c78 <__fputwc+0x90>
 8006c18:	b320      	cbz	r0, 8006c64 <__fputwc+0x7c>
 8006c1a:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006c1e:	2500      	movs	r5, #0
 8006c20:	f10d 0a04 	add.w	sl, sp, #4
 8006c24:	e009      	b.n	8006c3a <__fputwc+0x52>
 8006c26:	6823      	ldr	r3, [r4, #0]
 8006c28:	1c5a      	adds	r2, r3, #1
 8006c2a:	6022      	str	r2, [r4, #0]
 8006c2c:	f883 c000 	strb.w	ip, [r3]
 8006c30:	3501      	adds	r5, #1
 8006c32:	42b5      	cmp	r5, r6
 8006c34:	d216      	bcs.n	8006c64 <__fputwc+0x7c>
 8006c36:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006c3a:	68a3      	ldr	r3, [r4, #8]
 8006c3c:	3b01      	subs	r3, #1
 8006c3e:	2b00      	cmp	r3, #0
 8006c40:	60a3      	str	r3, [r4, #8]
 8006c42:	daf0      	bge.n	8006c26 <__fputwc+0x3e>
 8006c44:	69a7      	ldr	r7, [r4, #24]
 8006c46:	42bb      	cmp	r3, r7
 8006c48:	4661      	mov	r1, ip
 8006c4a:	4622      	mov	r2, r4
 8006c4c:	4648      	mov	r0, r9
 8006c4e:	db02      	blt.n	8006c56 <__fputwc+0x6e>
 8006c50:	f1bc 0f0a 	cmp.w	ip, #10
 8006c54:	d1e7      	bne.n	8006c26 <__fputwc+0x3e>
 8006c56:	f000 f8bf 	bl	8006dd8 <__swbuf_r>
 8006c5a:	1c43      	adds	r3, r0, #1
 8006c5c:	d1e8      	bne.n	8006c30 <__fputwc+0x48>
 8006c5e:	b002      	add	sp, #8
 8006c60:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c64:	4640      	mov	r0, r8
 8006c66:	b002      	add	sp, #8
 8006c68:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c6c:	fa5f fc88 	uxtb.w	ip, r8
 8006c70:	4606      	mov	r6, r0
 8006c72:	f88d c004 	strb.w	ip, [sp, #4]
 8006c76:	e7d2      	b.n	8006c1e <__fputwc+0x36>
 8006c78:	89a3      	ldrh	r3, [r4, #12]
 8006c7a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006c7e:	81a3      	strh	r3, [r4, #12]
 8006c80:	b002      	add	sp, #8
 8006c82:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c86:	bf00      	nop

08006c88 <_fputwc_r>:
 8006c88:	b530      	push	{r4, r5, lr}
 8006c8a:	4605      	mov	r5, r0
 8006c8c:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006c8e:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006c92:	07c0      	lsls	r0, r0, #31
 8006c94:	4614      	mov	r4, r2
 8006c96:	b083      	sub	sp, #12
 8006c98:	b29a      	uxth	r2, r3
 8006c9a:	d401      	bmi.n	8006ca0 <_fputwc_r+0x18>
 8006c9c:	0590      	lsls	r0, r2, #22
 8006c9e:	d51c      	bpl.n	8006cda <_fputwc_r+0x52>
 8006ca0:	0490      	lsls	r0, r2, #18
 8006ca2:	d406      	bmi.n	8006cb2 <_fputwc_r+0x2a>
 8006ca4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006ca6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006caa:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006cae:	81a3      	strh	r3, [r4, #12]
 8006cb0:	6662      	str	r2, [r4, #100]	; 0x64
 8006cb2:	4628      	mov	r0, r5
 8006cb4:	4622      	mov	r2, r4
 8006cb6:	f7ff ff97 	bl	8006be8 <__fputwc>
 8006cba:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006cbc:	07da      	lsls	r2, r3, #31
 8006cbe:	4605      	mov	r5, r0
 8006cc0:	d402      	bmi.n	8006cc8 <_fputwc_r+0x40>
 8006cc2:	89a3      	ldrh	r3, [r4, #12]
 8006cc4:	059b      	lsls	r3, r3, #22
 8006cc6:	d502      	bpl.n	8006cce <_fputwc_r+0x46>
 8006cc8:	4628      	mov	r0, r5
 8006cca:	b003      	add	sp, #12
 8006ccc:	bd30      	pop	{r4, r5, pc}
 8006cce:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cd0:	f7fe fd1e 	bl	8005710 <__retarget_lock_release_recursive>
 8006cd4:	4628      	mov	r0, r5
 8006cd6:	b003      	add	sp, #12
 8006cd8:	bd30      	pop	{r4, r5, pc}
 8006cda:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cdc:	9101      	str	r1, [sp, #4]
 8006cde:	f7fe fd15 	bl	800570c <__retarget_lock_acquire_recursive>
 8006ce2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ce6:	9901      	ldr	r1, [sp, #4]
 8006ce8:	b29a      	uxth	r2, r3
 8006cea:	e7d9      	b.n	8006ca0 <_fputwc_r+0x18>

08006cec <_fstat_r>:
 8006cec:	b538      	push	{r3, r4, r5, lr}
 8006cee:	460b      	mov	r3, r1
 8006cf0:	4c07      	ldr	r4, [pc, #28]	; (8006d10 <_fstat_r+0x24>)
 8006cf2:	4605      	mov	r5, r0
 8006cf4:	4611      	mov	r1, r2
 8006cf6:	4618      	mov	r0, r3
 8006cf8:	2300      	movs	r3, #0
 8006cfa:	6023      	str	r3, [r4, #0]
 8006cfc:	f7fb f9de 	bl	80020bc <_fstat>
 8006d00:	1c43      	adds	r3, r0, #1
 8006d02:	d000      	beq.n	8006d06 <_fstat_r+0x1a>
 8006d04:	bd38      	pop	{r3, r4, r5, pc}
 8006d06:	6823      	ldr	r3, [r4, #0]
 8006d08:	2b00      	cmp	r3, #0
 8006d0a:	d0fb      	beq.n	8006d04 <_fstat_r+0x18>
 8006d0c:	602b      	str	r3, [r5, #0]
 8006d0e:	bd38      	pop	{r3, r4, r5, pc}
 8006d10:	20000ca8 	.word	0x20000ca8

08006d14 <_isatty_r>:
 8006d14:	b538      	push	{r3, r4, r5, lr}
 8006d16:	4c07      	ldr	r4, [pc, #28]	; (8006d34 <_isatty_r+0x20>)
 8006d18:	2300      	movs	r3, #0
 8006d1a:	4605      	mov	r5, r0
 8006d1c:	4608      	mov	r0, r1
 8006d1e:	6023      	str	r3, [r4, #0]
 8006d20:	f7fb f9d1 	bl	80020c6 <_isatty>
 8006d24:	1c43      	adds	r3, r0, #1
 8006d26:	d000      	beq.n	8006d2a <_isatty_r+0x16>
 8006d28:	bd38      	pop	{r3, r4, r5, pc}
 8006d2a:	6823      	ldr	r3, [r4, #0]
 8006d2c:	2b00      	cmp	r3, #0
 8006d2e:	d0fb      	beq.n	8006d28 <_isatty_r+0x14>
 8006d30:	602b      	str	r3, [r5, #0]
 8006d32:	bd38      	pop	{r3, r4, r5, pc}
 8006d34:	20000ca8 	.word	0x20000ca8

08006d38 <__locale_mb_cur_max>:
 8006d38:	4b04      	ldr	r3, [pc, #16]	; (8006d4c <__locale_mb_cur_max+0x14>)
 8006d3a:	4a05      	ldr	r2, [pc, #20]	; (8006d50 <__locale_mb_cur_max+0x18>)
 8006d3c:	681b      	ldr	r3, [r3, #0]
 8006d3e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006d40:	2b00      	cmp	r3, #0
 8006d42:	bf08      	it	eq
 8006d44:	4613      	moveq	r3, r2
 8006d46:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006d4a:	4770      	bx	lr
 8006d4c:	20000018 	.word	0x20000018
 8006d50:	2000085c 	.word	0x2000085c

08006d54 <_lseek_r>:
 8006d54:	b570      	push	{r4, r5, r6, lr}
 8006d56:	460d      	mov	r5, r1
 8006d58:	4c08      	ldr	r4, [pc, #32]	; (8006d7c <_lseek_r+0x28>)
 8006d5a:	4611      	mov	r1, r2
 8006d5c:	4606      	mov	r6, r0
 8006d5e:	461a      	mov	r2, r3
 8006d60:	4628      	mov	r0, r5
 8006d62:	2300      	movs	r3, #0
 8006d64:	6023      	str	r3, [r4, #0]
 8006d66:	f7fb f9b0 	bl	80020ca <_lseek>
 8006d6a:	1c43      	adds	r3, r0, #1
 8006d6c:	d000      	beq.n	8006d70 <_lseek_r+0x1c>
 8006d6e:	bd70      	pop	{r4, r5, r6, pc}
 8006d70:	6823      	ldr	r3, [r4, #0]
 8006d72:	2b00      	cmp	r3, #0
 8006d74:	d0fb      	beq.n	8006d6e <_lseek_r+0x1a>
 8006d76:	6033      	str	r3, [r6, #0]
 8006d78:	bd70      	pop	{r4, r5, r6, pc}
 8006d7a:	bf00      	nop
 8006d7c:	20000ca8 	.word	0x20000ca8

08006d80 <__ascii_mbtowc>:
 8006d80:	b082      	sub	sp, #8
 8006d82:	b149      	cbz	r1, 8006d98 <__ascii_mbtowc+0x18>
 8006d84:	b15a      	cbz	r2, 8006d9e <__ascii_mbtowc+0x1e>
 8006d86:	b16b      	cbz	r3, 8006da4 <__ascii_mbtowc+0x24>
 8006d88:	7813      	ldrb	r3, [r2, #0]
 8006d8a:	600b      	str	r3, [r1, #0]
 8006d8c:	7812      	ldrb	r2, [r2, #0]
 8006d8e:	1c10      	adds	r0, r2, #0
 8006d90:	bf18      	it	ne
 8006d92:	2001      	movne	r0, #1
 8006d94:	b002      	add	sp, #8
 8006d96:	4770      	bx	lr
 8006d98:	a901      	add	r1, sp, #4
 8006d9a:	2a00      	cmp	r2, #0
 8006d9c:	d1f3      	bne.n	8006d86 <__ascii_mbtowc+0x6>
 8006d9e:	4610      	mov	r0, r2
 8006da0:	b002      	add	sp, #8
 8006da2:	4770      	bx	lr
 8006da4:	f06f 0001 	mvn.w	r0, #1
 8006da8:	e7f4      	b.n	8006d94 <__ascii_mbtowc+0x14>
 8006daa:	bf00      	nop

08006dac <_read_r>:
 8006dac:	b570      	push	{r4, r5, r6, lr}
 8006dae:	460d      	mov	r5, r1
 8006db0:	4c08      	ldr	r4, [pc, #32]	; (8006dd4 <_read_r+0x28>)
 8006db2:	4611      	mov	r1, r2
 8006db4:	4606      	mov	r6, r0
 8006db6:	461a      	mov	r2, r3
 8006db8:	4628      	mov	r0, r5
 8006dba:	2300      	movs	r3, #0
 8006dbc:	6023      	str	r3, [r4, #0]
 8006dbe:	f7fb f938 	bl	8002032 <_read>
 8006dc2:	1c43      	adds	r3, r0, #1
 8006dc4:	d000      	beq.n	8006dc8 <_read_r+0x1c>
 8006dc6:	bd70      	pop	{r4, r5, r6, pc}
 8006dc8:	6823      	ldr	r3, [r4, #0]
 8006dca:	2b00      	cmp	r3, #0
 8006dcc:	d0fb      	beq.n	8006dc6 <_read_r+0x1a>
 8006dce:	6033      	str	r3, [r6, #0]
 8006dd0:	bd70      	pop	{r4, r5, r6, pc}
 8006dd2:	bf00      	nop
 8006dd4:	20000ca8 	.word	0x20000ca8

08006dd8 <__swbuf_r>:
 8006dd8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006dda:	460d      	mov	r5, r1
 8006ddc:	4614      	mov	r4, r2
 8006dde:	4606      	mov	r6, r0
 8006de0:	b110      	cbz	r0, 8006de8 <__swbuf_r+0x10>
 8006de2:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006de4:	2b00      	cmp	r3, #0
 8006de6:	d043      	beq.n	8006e70 <__swbuf_r+0x98>
 8006de8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006dec:	69a3      	ldr	r3, [r4, #24]
 8006dee:	60a3      	str	r3, [r4, #8]
 8006df0:	b291      	uxth	r1, r2
 8006df2:	0708      	lsls	r0, r1, #28
 8006df4:	d51b      	bpl.n	8006e2e <__swbuf_r+0x56>
 8006df6:	6923      	ldr	r3, [r4, #16]
 8006df8:	b1cb      	cbz	r3, 8006e2e <__swbuf_r+0x56>
 8006dfa:	b2ed      	uxtb	r5, r5
 8006dfc:	0489      	lsls	r1, r1, #18
 8006dfe:	462f      	mov	r7, r5
 8006e00:	d522      	bpl.n	8006e48 <__swbuf_r+0x70>
 8006e02:	6822      	ldr	r2, [r4, #0]
 8006e04:	6961      	ldr	r1, [r4, #20]
 8006e06:	1ad3      	subs	r3, r2, r3
 8006e08:	4299      	cmp	r1, r3
 8006e0a:	dd29      	ble.n	8006e60 <__swbuf_r+0x88>
 8006e0c:	3301      	adds	r3, #1
 8006e0e:	68a1      	ldr	r1, [r4, #8]
 8006e10:	1c50      	adds	r0, r2, #1
 8006e12:	3901      	subs	r1, #1
 8006e14:	60a1      	str	r1, [r4, #8]
 8006e16:	6020      	str	r0, [r4, #0]
 8006e18:	7015      	strb	r5, [r2, #0]
 8006e1a:	6962      	ldr	r2, [r4, #20]
 8006e1c:	429a      	cmp	r2, r3
 8006e1e:	d02a      	beq.n	8006e76 <__swbuf_r+0x9e>
 8006e20:	89a3      	ldrh	r3, [r4, #12]
 8006e22:	07db      	lsls	r3, r3, #31
 8006e24:	d501      	bpl.n	8006e2a <__swbuf_r+0x52>
 8006e26:	2d0a      	cmp	r5, #10
 8006e28:	d025      	beq.n	8006e76 <__swbuf_r+0x9e>
 8006e2a:	4638      	mov	r0, r7
 8006e2c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006e2e:	4621      	mov	r1, r4
 8006e30:	4630      	mov	r0, r6
 8006e32:	f7fc fffd 	bl	8003e30 <__swsetup_r>
 8006e36:	bb20      	cbnz	r0, 8006e82 <__swbuf_r+0xaa>
 8006e38:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006e3c:	6923      	ldr	r3, [r4, #16]
 8006e3e:	b291      	uxth	r1, r2
 8006e40:	b2ed      	uxtb	r5, r5
 8006e42:	0489      	lsls	r1, r1, #18
 8006e44:	462f      	mov	r7, r5
 8006e46:	d4dc      	bmi.n	8006e02 <__swbuf_r+0x2a>
 8006e48:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006e4a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006e4e:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006e52:	81a2      	strh	r2, [r4, #12]
 8006e54:	6822      	ldr	r2, [r4, #0]
 8006e56:	6661      	str	r1, [r4, #100]	; 0x64
 8006e58:	6961      	ldr	r1, [r4, #20]
 8006e5a:	1ad3      	subs	r3, r2, r3
 8006e5c:	4299      	cmp	r1, r3
 8006e5e:	dcd5      	bgt.n	8006e0c <__swbuf_r+0x34>
 8006e60:	4621      	mov	r1, r4
 8006e62:	4630      	mov	r0, r6
 8006e64:	f7fe f8a6 	bl	8004fb4 <_fflush_r>
 8006e68:	b958      	cbnz	r0, 8006e82 <__swbuf_r+0xaa>
 8006e6a:	6822      	ldr	r2, [r4, #0]
 8006e6c:	2301      	movs	r3, #1
 8006e6e:	e7ce      	b.n	8006e0e <__swbuf_r+0x36>
 8006e70:	f7fe f8fc 	bl	800506c <__sinit>
 8006e74:	e7b8      	b.n	8006de8 <__swbuf_r+0x10>
 8006e76:	4621      	mov	r1, r4
 8006e78:	4630      	mov	r0, r6
 8006e7a:	f7fe f89b 	bl	8004fb4 <_fflush_r>
 8006e7e:	2800      	cmp	r0, #0
 8006e80:	d0d3      	beq.n	8006e2a <__swbuf_r+0x52>
 8006e82:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006e86:	e7d0      	b.n	8006e2a <__swbuf_r+0x52>

08006e88 <_wcrtomb_r>:
 8006e88:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006e8a:	4c11      	ldr	r4, [pc, #68]	; (8006ed0 <_wcrtomb_r+0x48>)
 8006e8c:	6824      	ldr	r4, [r4, #0]
 8006e8e:	b085      	sub	sp, #20
 8006e90:	4606      	mov	r6, r0
 8006e92:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006e94:	461f      	mov	r7, r3
 8006e96:	b151      	cbz	r1, 8006eae <_wcrtomb_r+0x26>
 8006e98:	4d0e      	ldr	r5, [pc, #56]	; (8006ed4 <_wcrtomb_r+0x4c>)
 8006e9a:	2c00      	cmp	r4, #0
 8006e9c:	bf08      	it	eq
 8006e9e:	462c      	moveq	r4, r5
 8006ea0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006ea4:	47a0      	blx	r4
 8006ea6:	1c43      	adds	r3, r0, #1
 8006ea8:	d00c      	beq.n	8006ec4 <_wcrtomb_r+0x3c>
 8006eaa:	b005      	add	sp, #20
 8006eac:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006eae:	4a09      	ldr	r2, [pc, #36]	; (8006ed4 <_wcrtomb_r+0x4c>)
 8006eb0:	2c00      	cmp	r4, #0
 8006eb2:	bf08      	it	eq
 8006eb4:	4614      	moveq	r4, r2
 8006eb6:	460a      	mov	r2, r1
 8006eb8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006ebc:	a901      	add	r1, sp, #4
 8006ebe:	47a0      	blx	r4
 8006ec0:	1c43      	adds	r3, r0, #1
 8006ec2:	d1f2      	bne.n	8006eaa <_wcrtomb_r+0x22>
 8006ec4:	2200      	movs	r2, #0
 8006ec6:	238a      	movs	r3, #138	; 0x8a
 8006ec8:	603a      	str	r2, [r7, #0]
 8006eca:	6033      	str	r3, [r6, #0]
 8006ecc:	b005      	add	sp, #20
 8006ece:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006ed0:	20000018 	.word	0x20000018
 8006ed4:	2000085c 	.word	0x2000085c

08006ed8 <__ascii_wctomb>:
 8006ed8:	b121      	cbz	r1, 8006ee4 <__ascii_wctomb+0xc>
 8006eda:	2aff      	cmp	r2, #255	; 0xff
 8006edc:	d804      	bhi.n	8006ee8 <__ascii_wctomb+0x10>
 8006ede:	700a      	strb	r2, [r1, #0]
 8006ee0:	2001      	movs	r0, #1
 8006ee2:	4770      	bx	lr
 8006ee4:	4608      	mov	r0, r1
 8006ee6:	4770      	bx	lr
 8006ee8:	238a      	movs	r3, #138	; 0x8a
 8006eea:	6003      	str	r3, [r0, #0]
 8006eec:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006ef0:	4770      	bx	lr
 8006ef2:	bf00      	nop

08006ef4 <_init>:
 8006ef4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006ef6:	bf00      	nop
 8006ef8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006efa:	bc08      	pop	{r3}
 8006efc:	469e      	mov	lr, r3
 8006efe:	4770      	bx	lr

08006f00 <_fini>:
 8006f00:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006f02:	bf00      	nop
 8006f04:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006f06:	bc08      	pop	{r3}
 8006f08:	469e      	mov	lr, r3
 8006f0a:	4770      	bx	lr
 8006f0c:	0000      	movs	r0, r0
	...
