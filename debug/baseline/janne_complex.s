
janne_complex.elf:     file format elf32-littlearm


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
 80001e0:	08006e6c 	.word	0x08006e6c

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
 80001fc:	08006e6c 	.word	0x08006e6c

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
 8001108:	f640 20a8 	movw	r0, #2728	; 0xaa8
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 20a8 	movw	r0, #2728	; 0xaa8
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
 80013e8:	f646 62a0 	movw	r2, #28320	; 0x6ea0
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
 8001462:	f646 6298 	movw	r2, #28312	; 0x6e98
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
 800148c:	f646 6298 	movw	r2, #28312	; 0x6e98
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
 8001842:	f640 21ac 	movw	r1, #2732	; 0xaac
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
 800188c:	f640 20ac 	movw	r0, #2732	; 0xaac
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 20ac 	movw	r0, #2732	; 0xaac
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
 80019d4:	f646 63d0 	movw	r3, #28368	; 0x6ed0
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
 80019fc:	f646 63e0 	movw	r3, #28384	; 0x6ee0
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
 8001eb6:	2001      	movs	r0, #1
 8001eb8:	4770      	bx	lr

08001eba <initialise_benchmark>:
 8001eba:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8001ebe:	2101      	movs	r1, #1
 8001ec0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ec4:	7001      	strb	r1, [r0, #0]
 8001ec6:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8001eca:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ece:	7001      	strb	r1, [r0, #0]
 8001ed0:	4770      	bx	lr

08001ed2 <verify_benchmark>:
 8001ed2:	2801      	cmp	r0, #1
 8001ed4:	bf18      	it	ne
 8001ed6:	2000      	movne	r0, #0
 8001ed8:	4770      	bx	lr

08001eda <__io_putchar>:
 8001eda:	b580      	push	{r7, lr}
 8001edc:	466f      	mov	r7, sp
 8001ede:	b082      	sub	sp, #8
 8001ee0:	9001      	str	r0, [sp, #4]
 8001ee2:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8001ee6:	a901      	add	r1, sp, #4
 8001ee8:	2201      	movs	r2, #1
 8001eea:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001eee:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ef2:	f7ff fef2 	bl	8001cda <HAL_UART_Transmit>
 8001ef6:	9801      	ldr	r0, [sp, #4]
 8001ef8:	b002      	add	sp, #8
 8001efa:	bd80      	pop	{r7, pc}

08001efc <main>:
 8001efc:	b5b0      	push	{r4, r5, r7, lr}
 8001efe:	af02      	add	r7, sp, #8
 8001f00:	f640 11ec 	movw	r1, #2540	; 0x9ec
 8001f04:	f643 0000 	movw	r0, #14336	; 0x3800
 8001f08:	220c      	movs	r2, #12
 8001f0a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001f0e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001f12:	6008      	str	r0, [r1, #0]
 8001f14:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8001f18:	6048      	str	r0, [r1, #4]
 8001f1a:	2000      	movs	r0, #0
 8001f1c:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8001f20:	6108      	str	r0, [r1, #16]
 8001f22:	6248      	str	r0, [r1, #36]	; 0x24
 8001f24:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8001f28:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8001f2c:	2000      	movs	r0, #0
 8001f2e:	f7ff ff69 	bl	8001e04 <BSP_COM_Init>
 8001f32:	f7ff ffc2 	bl	8001eba <initialise_benchmark>
 8001f36:	f646 60f0 	movw	r0, #28400	; 0x6ef0
 8001f3a:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f3e:	f000 f949 	bl	80021d4 <printf>
 8001f42:	f646 70a0 	movw	r0, #28576	; 0x6fa0
 8001f46:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f4a:	f000 f9a5 	bl	8002298 <puts>
 8001f4e:	f7ff f8cb 	bl	80010e8 <HAL_Init>
 8001f52:	f7ff f8e1 	bl	8001118 <HAL_GetTick>
 8001f56:	4604      	mov	r4, r0
 8001f58:	f7ff ffad 	bl	8001eb6 <benchmark>
 8001f5c:	4605      	mov	r5, r0
 8001f5e:	f7ff f8db 	bl	8001118 <HAL_GetTick>
 8001f62:	1b04      	subs	r4, r0, r4
 8001f64:	4628      	mov	r0, r5
 8001f66:	f7ff ffb4 	bl	8001ed2 <verify_benchmark>
 8001f6a:	1c41      	adds	r1, r0, #1
 8001f6c:	d006      	beq.n	8001f7c <main+0x80>
 8001f6e:	2801      	cmp	r0, #1
 8001f70:	d109      	bne.n	8001f86 <main+0x8a>
 8001f72:	f646 700c 	movw	r0, #28428	; 0x6f0c
 8001f76:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f7a:	e008      	b.n	8001f8e <main+0x92>
 8001f7c:	f646 7030 	movw	r0, #28464	; 0x6f30
 8001f80:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f84:	e003      	b.n	8001f8e <main+0x92>
 8001f86:	f646 7065 	movw	r0, #28517	; 0x6f65
 8001f8a:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f8e:	4621      	mov	r1, r4
 8001f90:	f000 f920 	bl	80021d4 <printf>
 8001f94:	2000      	movs	r0, #0
 8001f96:	bdb0      	pop	{r4, r5, r7, pc}

08001f98 <SysTick_Handler>:
 8001f98:	b580      	push	{r7, lr}
 8001f9a:	466f      	mov	r7, sp
 8001f9c:	f7ff f8b4 	bl	8001108 <HAL_IncTick>
 8001fa0:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001fa4:	f7ff b90e 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

08001fa8 <_read>:
 8001fa8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001faa:	af03      	add	r7, sp, #12
 8001fac:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001fb0:	4614      	mov	r4, r2
 8001fb2:	460d      	mov	r5, r1
 8001fb4:	2c01      	cmp	r4, #1
 8001fb6:	db06      	blt.n	8001fc6 <_read+0x1e>
 8001fb8:	4626      	mov	r6, r4
 8001fba:	f3af 8000 	nop.w
 8001fbe:	f805 0b01 	strb.w	r0, [r5], #1
 8001fc2:	3e01      	subs	r6, #1
 8001fc4:	d1f9      	bne.n	8001fba <_read+0x12>
 8001fc6:	4620      	mov	r0, r4
 8001fc8:	f85d bb04 	ldr.w	fp, [sp], #4
 8001fcc:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001fce <_write>:
 8001fce:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001fd0:	af03      	add	r7, sp, #12
 8001fd2:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001fd6:	4614      	mov	r4, r2
 8001fd8:	460d      	mov	r5, r1
 8001fda:	2c01      	cmp	r4, #1
 8001fdc:	db06      	blt.n	8001fec <_write+0x1e>
 8001fde:	4626      	mov	r6, r4
 8001fe0:	f815 0b01 	ldrb.w	r0, [r5], #1
 8001fe4:	f7ff ff79 	bl	8001eda <__io_putchar>
 8001fe8:	3e01      	subs	r6, #1
 8001fea:	d1f9      	bne.n	8001fe0 <_write+0x12>
 8001fec:	4620      	mov	r0, r4
 8001fee:	f85d bb04 	ldr.w	fp, [sp], #4
 8001ff2:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001ff4 <_sbrk>:
 8001ff4:	f640 2270 	movw	r2, #2672	; 0xa70
 8001ff8:	4601      	mov	r1, r0
 8001ffa:	466b      	mov	r3, sp
 8001ffc:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002000:	6810      	ldr	r0, [r2, #0]
 8002002:	2800      	cmp	r0, #0
 8002004:	bf02      	ittt	eq
 8002006:	f640 3018 	movweq	r0, #2840	; 0xb18
 800200a:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 800200e:	6010      	streq	r0, [r2, #0]
 8002010:	4401      	add	r1, r0
 8002012:	4299      	cmp	r1, r3
 8002014:	bf9c      	itt	ls
 8002016:	6011      	strls	r1, [r2, #0]
 8002018:	4770      	bxls	lr
 800201a:	b580      	push	{r7, lr}
 800201c:	466f      	mov	r7, sp
 800201e:	f000 f865 	bl	80020ec <__errno>
 8002022:	210c      	movs	r1, #12
 8002024:	6001      	str	r1, [r0, #0]
 8002026:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800202a:	bd80      	pop	{r7, pc}

0800202c <_close>:
 800202c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002030:	4770      	bx	lr

08002032 <_fstat>:
 8002032:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002036:	6048      	str	r0, [r1, #4]
 8002038:	2000      	movs	r0, #0
 800203a:	4770      	bx	lr

0800203c <_isatty>:
 800203c:	2001      	movs	r0, #1
 800203e:	4770      	bx	lr

08002040 <_lseek>:
 8002040:	2000      	movs	r0, #0
 8002042:	4770      	bx	lr

08002044 <SystemInit>:
 8002044:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002048:	f04f 0c00 	mov.w	ip, #0
 800204c:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002050:	6801      	ldr	r1, [r0, #0]
 8002052:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002056:	6001      	str	r1, [r0, #0]
 8002058:	f241 0100 	movw	r1, #4096	; 0x1000
 800205c:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002060:	680a      	ldr	r2, [r1, #0]
 8002062:	f042 0201 	orr.w	r2, r2, #1
 8002066:	600a      	str	r2, [r1, #0]
 8002068:	f8c1 c008 	str.w	ip, [r1, #8]
 800206c:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002070:	680b      	ldr	r3, [r1, #0]
 8002072:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002076:	401a      	ands	r2, r3
 8002078:	600a      	str	r2, [r1, #0]
 800207a:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 800207e:	60ca      	str	r2, [r1, #12]
 8002080:	680a      	ldr	r2, [r1, #0]
 8002082:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002086:	600a      	str	r2, [r1, #0]
 8002088:	f8c1 c018 	str.w	ip, [r1, #24]
 800208c:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002090:	f840 1c80 	str.w	r1, [r0, #-128]
 8002094:	4770      	bx	lr
	...

08002098 <Reset_Handler>:
 8002098:	f8df d034 	ldr.w	sp, [pc, #52]	; 80020d0 <LoopForever+0x2>
 800209c:	2100      	movs	r1, #0
 800209e:	e003      	b.n	80020a8 <LoopCopyDataInit>

080020a0 <CopyDataInit>:
 80020a0:	4b0c      	ldr	r3, [pc, #48]	; (80020d4 <LoopForever+0x6>)
 80020a2:	585b      	ldr	r3, [r3, r1]
 80020a4:	5043      	str	r3, [r0, r1]
 80020a6:	3104      	adds	r1, #4

080020a8 <LoopCopyDataInit>:
 80020a8:	480b      	ldr	r0, [pc, #44]	; (80020d8 <LoopForever+0xa>)
 80020aa:	4b0c      	ldr	r3, [pc, #48]	; (80020dc <LoopForever+0xe>)
 80020ac:	1842      	adds	r2, r0, r1
 80020ae:	429a      	cmp	r2, r3
 80020b0:	d3f6      	bcc.n	80020a0 <CopyDataInit>
 80020b2:	4a0b      	ldr	r2, [pc, #44]	; (80020e0 <LoopForever+0x12>)
 80020b4:	e002      	b.n	80020bc <LoopFillZerobss>

080020b6 <FillZerobss>:
 80020b6:	2300      	movs	r3, #0
 80020b8:	f842 3b04 	str.w	r3, [r2], #4

080020bc <LoopFillZerobss>:
 80020bc:	4b09      	ldr	r3, [pc, #36]	; (80020e4 <LoopForever+0x16>)
 80020be:	429a      	cmp	r2, r3
 80020c0:	d3f9      	bcc.n	80020b6 <FillZerobss>
 80020c2:	f7ff ffbf 	bl	8002044 <SystemInit>
 80020c6:	f000 f817 	bl	80020f8 <__libc_init_array>
 80020ca:	f7ff ff17 	bl	8001efc <main>

080020ce <LoopForever>:
 80020ce:	e7fe      	b.n	80020ce <LoopForever>
 80020d0:	20018000 	.word	0x20018000
 80020d4:	08007248 	.word	0x08007248
 80020d8:	20000000 	.word	0x20000000
 80020dc:	200009c8 	.word	0x200009c8
 80020e0:	200009c8 	.word	0x200009c8
 80020e4:	20000b18 	.word	0x20000b18

080020e8 <ADC1_2_IRQHandler>:
 80020e8:	e7fe      	b.n	80020e8 <ADC1_2_IRQHandler>
	...

080020ec <__errno>:
 80020ec:	4b01      	ldr	r3, [pc, #4]	; (80020f4 <__errno+0x8>)
 80020ee:	6818      	ldr	r0, [r3, #0]
 80020f0:	4770      	bx	lr
 80020f2:	bf00      	nop
 80020f4:	20000018 	.word	0x20000018

080020f8 <__libc_init_array>:
 80020f8:	b570      	push	{r4, r5, r6, lr}
 80020fa:	4e0d      	ldr	r6, [pc, #52]	; (8002130 <__libc_init_array+0x38>)
 80020fc:	4d0d      	ldr	r5, [pc, #52]	; (8002134 <__libc_init_array+0x3c>)
 80020fe:	1b76      	subs	r6, r6, r5
 8002100:	10b6      	asrs	r6, r6, #2
 8002102:	d006      	beq.n	8002112 <__libc_init_array+0x1a>
 8002104:	2400      	movs	r4, #0
 8002106:	3401      	adds	r4, #1
 8002108:	f855 3b04 	ldr.w	r3, [r5], #4
 800210c:	4798      	blx	r3
 800210e:	42a6      	cmp	r6, r4
 8002110:	d1f9      	bne.n	8002106 <__libc_init_array+0xe>
 8002112:	4e09      	ldr	r6, [pc, #36]	; (8002138 <__libc_init_array+0x40>)
 8002114:	4d09      	ldr	r5, [pc, #36]	; (800213c <__libc_init_array+0x44>)
 8002116:	1b76      	subs	r6, r6, r5
 8002118:	f004 fea8 	bl	8006e6c <_init>
 800211c:	10b6      	asrs	r6, r6, #2
 800211e:	d006      	beq.n	800212e <__libc_init_array+0x36>
 8002120:	2400      	movs	r4, #0
 8002122:	3401      	adds	r4, #1
 8002124:	f855 3b04 	ldr.w	r3, [r5], #4
 8002128:	4798      	blx	r3
 800212a:	42a6      	cmp	r6, r4
 800212c:	d1f9      	bne.n	8002122 <__libc_init_array+0x2a>
 800212e:	bd70      	pop	{r4, r5, r6, pc}
 8002130:	08007238 	.word	0x08007238
 8002134:	08007238 	.word	0x08007238
 8002138:	08007240 	.word	0x08007240
 800213c:	08007238 	.word	0x08007238

08002140 <memset>:
 8002140:	b4f0      	push	{r4, r5, r6, r7}
 8002142:	0786      	lsls	r6, r0, #30
 8002144:	d043      	beq.n	80021ce <memset+0x8e>
 8002146:	1e54      	subs	r4, r2, #1
 8002148:	2a00      	cmp	r2, #0
 800214a:	d03e      	beq.n	80021ca <memset+0x8a>
 800214c:	b2ca      	uxtb	r2, r1
 800214e:	4603      	mov	r3, r0
 8002150:	e002      	b.n	8002158 <memset+0x18>
 8002152:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002156:	d338      	bcc.n	80021ca <memset+0x8a>
 8002158:	f803 2b01 	strb.w	r2, [r3], #1
 800215c:	079d      	lsls	r5, r3, #30
 800215e:	d1f8      	bne.n	8002152 <memset+0x12>
 8002160:	2c03      	cmp	r4, #3
 8002162:	d92b      	bls.n	80021bc <memset+0x7c>
 8002164:	b2cd      	uxtb	r5, r1
 8002166:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800216a:	2c0f      	cmp	r4, #15
 800216c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002170:	d916      	bls.n	80021a0 <memset+0x60>
 8002172:	f1a4 0710 	sub.w	r7, r4, #16
 8002176:	093f      	lsrs	r7, r7, #4
 8002178:	f103 0620 	add.w	r6, r3, #32
 800217c:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002180:	f103 0210 	add.w	r2, r3, #16
 8002184:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002188:	e942 5502 	strd	r5, r5, [r2, #-8]
 800218c:	3210      	adds	r2, #16
 800218e:	42b2      	cmp	r2, r6
 8002190:	d1f8      	bne.n	8002184 <memset+0x44>
 8002192:	f004 040f 	and.w	r4, r4, #15
 8002196:	3701      	adds	r7, #1
 8002198:	2c03      	cmp	r4, #3
 800219a:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800219e:	d90d      	bls.n	80021bc <memset+0x7c>
 80021a0:	461e      	mov	r6, r3
 80021a2:	4622      	mov	r2, r4
 80021a4:	3a04      	subs	r2, #4
 80021a6:	2a03      	cmp	r2, #3
 80021a8:	f846 5b04 	str.w	r5, [r6], #4
 80021ac:	d8fa      	bhi.n	80021a4 <memset+0x64>
 80021ae:	1f22      	subs	r2, r4, #4
 80021b0:	f022 0203 	bic.w	r2, r2, #3
 80021b4:	3204      	adds	r2, #4
 80021b6:	4413      	add	r3, r2
 80021b8:	f004 0403 	and.w	r4, r4, #3
 80021bc:	b12c      	cbz	r4, 80021ca <memset+0x8a>
 80021be:	b2c9      	uxtb	r1, r1
 80021c0:	441c      	add	r4, r3
 80021c2:	f803 1b01 	strb.w	r1, [r3], #1
 80021c6:	429c      	cmp	r4, r3
 80021c8:	d1fb      	bne.n	80021c2 <memset+0x82>
 80021ca:	bcf0      	pop	{r4, r5, r6, r7}
 80021cc:	4770      	bx	lr
 80021ce:	4614      	mov	r4, r2
 80021d0:	4603      	mov	r3, r0
 80021d2:	e7c5      	b.n	8002160 <memset+0x20>

080021d4 <printf>:
 80021d4:	b40f      	push	{r0, r1, r2, r3}
 80021d6:	b500      	push	{lr}
 80021d8:	4907      	ldr	r1, [pc, #28]	; (80021f8 <printf+0x24>)
 80021da:	b083      	sub	sp, #12
 80021dc:	ab04      	add	r3, sp, #16
 80021de:	6808      	ldr	r0, [r1, #0]
 80021e0:	f853 2b04 	ldr.w	r2, [r3], #4
 80021e4:	6881      	ldr	r1, [r0, #8]
 80021e6:	9301      	str	r3, [sp, #4]
 80021e8:	f000 f85e 	bl	80022a8 <_vfprintf_r>
 80021ec:	b003      	add	sp, #12
 80021ee:	f85d eb04 	ldr.w	lr, [sp], #4
 80021f2:	b004      	add	sp, #16
 80021f4:	4770      	bx	lr
 80021f6:	bf00      	nop
 80021f8:	20000018 	.word	0x20000018

080021fc <_puts_r>:
 80021fc:	b570      	push	{r4, r5, r6, lr}
 80021fe:	4605      	mov	r5, r0
 8002200:	b088      	sub	sp, #32
 8002202:	4608      	mov	r0, r1
 8002204:	460c      	mov	r4, r1
 8002206:	f7fe fa1b 	bl	8000640 <strlen>
 800220a:	4a22      	ldr	r2, [pc, #136]	; (8002294 <_puts_r+0x98>)
 800220c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800220e:	9404      	str	r4, [sp, #16]
 8002210:	2601      	movs	r6, #1
 8002212:	1c44      	adds	r4, r0, #1
 8002214:	a904      	add	r1, sp, #16
 8002216:	9206      	str	r2, [sp, #24]
 8002218:	2202      	movs	r2, #2
 800221a:	9403      	str	r4, [sp, #12]
 800221c:	9005      	str	r0, [sp, #20]
 800221e:	68ac      	ldr	r4, [r5, #8]
 8002220:	9607      	str	r6, [sp, #28]
 8002222:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002226:	b31b      	cbz	r3, 8002270 <_puts_r+0x74>
 8002228:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800222a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800222e:	07ce      	lsls	r6, r1, #31
 8002230:	b29a      	uxth	r2, r3
 8002232:	d401      	bmi.n	8002238 <_puts_r+0x3c>
 8002234:	0590      	lsls	r0, r2, #22
 8002236:	d525      	bpl.n	8002284 <_puts_r+0x88>
 8002238:	0491      	lsls	r1, r2, #18
 800223a:	d406      	bmi.n	800224a <_puts_r+0x4e>
 800223c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800223e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002242:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002246:	81a3      	strh	r3, [r4, #12]
 8002248:	6662      	str	r2, [r4, #100]	; 0x64
 800224a:	4628      	mov	r0, r5
 800224c:	aa01      	add	r2, sp, #4
 800224e:	4621      	mov	r1, r4
 8002250:	f003 f85e 	bl	8005310 <__sfvwrite_r>
 8002254:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002256:	2800      	cmp	r0, #0
 8002258:	bf0c      	ite	eq
 800225a:	250a      	moveq	r5, #10
 800225c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002260:	07da      	lsls	r2, r3, #31
 8002262:	d402      	bmi.n	800226a <_puts_r+0x6e>
 8002264:	89a3      	ldrh	r3, [r4, #12]
 8002266:	059b      	lsls	r3, r3, #22
 8002268:	d506      	bpl.n	8002278 <_puts_r+0x7c>
 800226a:	4628      	mov	r0, r5
 800226c:	b008      	add	sp, #32
 800226e:	bd70      	pop	{r4, r5, r6, pc}
 8002270:	4628      	mov	r0, r5
 8002272:	f002 feb7 	bl	8004fe4 <__sinit>
 8002276:	e7d7      	b.n	8002228 <_puts_r+0x2c>
 8002278:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800227a:	f003 fa05 	bl	8005688 <__retarget_lock_release_recursive>
 800227e:	4628      	mov	r0, r5
 8002280:	b008      	add	sp, #32
 8002282:	bd70      	pop	{r4, r5, r6, pc}
 8002284:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002286:	f003 f9fd 	bl	8005684 <__retarget_lock_acquire_recursive>
 800228a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800228e:	b29a      	uxth	r2, r3
 8002290:	e7d2      	b.n	8002238 <_puts_r+0x3c>
 8002292:	bf00      	nop
 8002294:	08006fa8 	.word	0x08006fa8

08002298 <puts>:
 8002298:	4b02      	ldr	r3, [pc, #8]	; (80022a4 <puts+0xc>)
 800229a:	4601      	mov	r1, r0
 800229c:	6818      	ldr	r0, [r3, #0]
 800229e:	f7ff bfad 	b.w	80021fc <_puts_r>
 80022a2:	bf00      	nop
 80022a4:	20000018 	.word	0x20000018

080022a8 <_vfprintf_r>:
 80022a8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80022ac:	b0d7      	sub	sp, #348	; 0x15c
 80022ae:	461c      	mov	r4, r3
 80022b0:	4689      	mov	r9, r1
 80022b2:	4617      	mov	r7, r2
 80022b4:	4605      	mov	r5, r0
 80022b6:	9003      	str	r0, [sp, #12]
 80022b8:	f003 f9d2 	bl	8005660 <_localeconv_r>
 80022bc:	6803      	ldr	r3, [r0, #0]
 80022be:	9316      	str	r3, [sp, #88]	; 0x58
 80022c0:	4618      	mov	r0, r3
 80022c2:	f7fe f9bd 	bl	8000640 <strlen>
 80022c6:	9408      	str	r4, [sp, #32]
 80022c8:	9015      	str	r0, [sp, #84]	; 0x54
 80022ca:	b11d      	cbz	r5, 80022d4 <_vfprintf_r+0x2c>
 80022cc:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80022ce:	2b00      	cmp	r3, #0
 80022d0:	f000 8107 	beq.w	80024e2 <_vfprintf_r+0x23a>
 80022d4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80022d8:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80022dc:	07c8      	lsls	r0, r1, #31
 80022de:	b293      	uxth	r3, r2
 80022e0:	d402      	bmi.n	80022e8 <_vfprintf_r+0x40>
 80022e2:	0599      	lsls	r1, r3, #22
 80022e4:	f140 811f 	bpl.w	8002526 <_vfprintf_r+0x27e>
 80022e8:	049e      	lsls	r6, r3, #18
 80022ea:	d40a      	bmi.n	8002302 <_vfprintf_r+0x5a>
 80022ec:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80022f0:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 80022f4:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80022f8:	f8a9 300c 	strh.w	r3, [r9, #12]
 80022fc:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002300:	b29b      	uxth	r3, r3
 8002302:	071d      	lsls	r5, r3, #28
 8002304:	f140 80b2 	bpl.w	800246c <_vfprintf_r+0x1c4>
 8002308:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800230c:	2a00      	cmp	r2, #0
 800230e:	f000 80ad 	beq.w	800246c <_vfprintf_r+0x1c4>
 8002312:	f003 021a 	and.w	r2, r3, #26
 8002316:	2a0a      	cmp	r2, #10
 8002318:	f000 80c9 	beq.w	80024ae <_vfprintf_r+0x206>
 800231c:	2300      	movs	r3, #0
 800231e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002538 <_vfprintf_r+0x290>
 8002322:	9310      	str	r3, [sp, #64]	; 0x40
 8002324:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002328:	9317      	str	r3, [sp, #92]	; 0x5c
 800232a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 800232e:	931b      	str	r3, [sp, #108]	; 0x6c
 8002330:	9318      	str	r3, [sp, #96]	; 0x60
 8002332:	9305      	str	r3, [sp, #20]
 8002334:	ab2d      	add	r3, sp, #180	; 0xb4
 8002336:	932a      	str	r3, [sp, #168]	; 0xa8
 8002338:	469b      	mov	fp, r3
 800233a:	783b      	ldrb	r3, [r7, #0]
 800233c:	f8cd 901c 	str.w	r9, [sp, #28]
 8002340:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002344:	2b00      	cmp	r3, #0
 8002346:	f000 8259 	beq.w	80027fc <_vfprintf_r+0x554>
 800234a:	2b25      	cmp	r3, #37	; 0x25
 800234c:	463c      	mov	r4, r7
 800234e:	d102      	bne.n	8002356 <_vfprintf_r+0xae>
 8002350:	e01d      	b.n	800238e <_vfprintf_r+0xe6>
 8002352:	2b25      	cmp	r3, #37	; 0x25
 8002354:	d003      	beq.n	800235e <_vfprintf_r+0xb6>
 8002356:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 800235a:	2b00      	cmp	r3, #0
 800235c:	d1f9      	bne.n	8002352 <_vfprintf_r+0xaa>
 800235e:	1be5      	subs	r5, r4, r7
 8002360:	b18d      	cbz	r5, 8002386 <_vfprintf_r+0xde>
 8002362:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002366:	3301      	adds	r3, #1
 8002368:	442a      	add	r2, r5
 800236a:	2b07      	cmp	r3, #7
 800236c:	f8cb 7000 	str.w	r7, [fp]
 8002370:	f8cb 5004 	str.w	r5, [fp, #4]
 8002374:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002378:	f300 80ca 	bgt.w	8002510 <_vfprintf_r+0x268>
 800237c:	f10b 0b08 	add.w	fp, fp, #8
 8002380:	9b05      	ldr	r3, [sp, #20]
 8002382:	442b      	add	r3, r5
 8002384:	9305      	str	r3, [sp, #20]
 8002386:	7823      	ldrb	r3, [r4, #0]
 8002388:	2b00      	cmp	r3, #0
 800238a:	f000 8237 	beq.w	80027fc <_vfprintf_r+0x554>
 800238e:	2300      	movs	r3, #0
 8002390:	7866      	ldrb	r6, [r4, #1]
 8002392:	9306      	str	r3, [sp, #24]
 8002394:	4698      	mov	r8, r3
 8002396:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800239a:	f104 0a01 	add.w	sl, r4, #1
 800239e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 80023a2:	252b      	movs	r5, #43	; 0x2b
 80023a4:	f10a 0a01 	add.w	sl, sl, #1
 80023a8:	f1a6 0320 	sub.w	r3, r6, #32
 80023ac:	2b5a      	cmp	r3, #90	; 0x5a
 80023ae:	f200 842a 	bhi.w	8002c06 <_vfprintf_r+0x95e>
 80023b2:	e8df f013 	tbh	[pc, r3, lsl #1]
 80023b6:	03aa      	.short	0x03aa
 80023b8:	04280428 	.word	0x04280428
 80023bc:	0428029c 	.word	0x0428029c
 80023c0:	04280428 	.word	0x04280428
 80023c4:	042802a7 	.word	0x042802a7
 80023c8:	02c60428 	.word	0x02c60428
 80023cc:	042802d2 	.word	0x042802d2
 80023d0:	02dc02d7 	.word	0x02dc02d7
 80023d4:	02f60428 	.word	0x02f60428
 80023d8:	026d026d 	.word	0x026d026d
 80023dc:	026d026d 	.word	0x026d026d
 80023e0:	026d026d 	.word	0x026d026d
 80023e4:	026d026d 	.word	0x026d026d
 80023e8:	0428026d 	.word	0x0428026d
 80023ec:	04280428 	.word	0x04280428
 80023f0:	04280428 	.word	0x04280428
 80023f4:	04280428 	.word	0x04280428
 80023f8:	042802fb 	.word	0x042802fb
 80023fc:	03f3033c 	.word	0x03f3033c
 8002400:	02fb02fb 	.word	0x02fb02fb
 8002404:	042802fb 	.word	0x042802fb
 8002408:	04280428 	.word	0x04280428
 800240c:	03ee0428 	.word	0x03ee0428
 8002410:	04280428 	.word	0x04280428
 8002414:	0428009a 	.word	0x0428009a
 8002418:	04280428 	.word	0x04280428
 800241c:	04280350 	.word	0x04280350
 8002420:	04280379 	.word	0x04280379
 8002424:	03900428 	.word	0x03900428
 8002428:	04280428 	.word	0x04280428
 800242c:	04280428 	.word	0x04280428
 8002430:	04280428 	.word	0x04280428
 8002434:	04280428 	.word	0x04280428
 8002438:	042802fb 	.word	0x042802fb
 800243c:	00c5033c 	.word	0x00c5033c
 8002440:	02fb02fb 	.word	0x02fb02fb
 8002444:	03d102fb 	.word	0x03d102fb
 8002448:	007000c5 	.word	0x007000c5
 800244c:	03b50428 	.word	0x03b50428
 8002450:	03c20428 	.word	0x03c20428
 8002454:	03de009c 	.word	0x03de009c
 8002458:	04280070 	.word	0x04280070
 800245c:	00720350 	.word	0x00720350
 8002460:	0428022c 	.word	0x0428022c
 8002464:	027c0428 	.word	0x027c0428
 8002468:	00720428 	.word	0x00720428
 800246c:	4649      	mov	r1, r9
 800246e:	9803      	ldr	r0, [sp, #12]
 8002470:	f001 fc9a 	bl	8003da8 <__swsetup_r>
 8002474:	b1a0      	cbz	r0, 80024a0 <_vfprintf_r+0x1f8>
 8002476:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 800247a:	07d8      	lsls	r0, r3, #31
 800247c:	d404      	bmi.n	8002488 <_vfprintf_r+0x1e0>
 800247e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002482:	0599      	lsls	r1, r3, #22
 8002484:	f140 83b7 	bpl.w	8002bf6 <_vfprintf_r+0x94e>
 8002488:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800248c:	9305      	str	r3, [sp, #20]
 800248e:	9805      	ldr	r0, [sp, #20]
 8002490:	b057      	add	sp, #348	; 0x15c
 8002492:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002496:	f048 0820 	orr.w	r8, r8, #32
 800249a:	f89a 6000 	ldrb.w	r6, [sl]
 800249e:	e781      	b.n	80023a4 <_vfprintf_r+0xfc>
 80024a0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80024a4:	f003 021a 	and.w	r2, r3, #26
 80024a8:	2a0a      	cmp	r2, #10
 80024aa:	f47f af37 	bne.w	800231c <_vfprintf_r+0x74>
 80024ae:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 80024b2:	2a00      	cmp	r2, #0
 80024b4:	f6ff af32 	blt.w	800231c <_vfprintf_r+0x74>
 80024b8:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80024bc:	07d2      	lsls	r2, r2, #31
 80024be:	d405      	bmi.n	80024cc <_vfprintf_r+0x224>
 80024c0:	059b      	lsls	r3, r3, #22
 80024c2:	d403      	bmi.n	80024cc <_vfprintf_r+0x224>
 80024c4:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80024c8:	f003 f8de 	bl	8005688 <__retarget_lock_release_recursive>
 80024cc:	4623      	mov	r3, r4
 80024ce:	463a      	mov	r2, r7
 80024d0:	4649      	mov	r1, r9
 80024d2:	9803      	ldr	r0, [sp, #12]
 80024d4:	f001 fc26 	bl	8003d24 <__sbprintf>
 80024d8:	9005      	str	r0, [sp, #20]
 80024da:	9805      	ldr	r0, [sp, #20]
 80024dc:	b057      	add	sp, #348	; 0x15c
 80024de:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80024e2:	9803      	ldr	r0, [sp, #12]
 80024e4:	f002 fd7e 	bl	8004fe4 <__sinit>
 80024e8:	e6f4      	b.n	80022d4 <_vfprintf_r+0x2c>
 80024ea:	f048 0810 	orr.w	r8, r8, #16
 80024ee:	f018 0f20 	tst.w	r8, #32
 80024f2:	f000 836c 	beq.w	8002bce <_vfprintf_r+0x926>
 80024f6:	9c08      	ldr	r4, [sp, #32]
 80024f8:	3407      	adds	r4, #7
 80024fa:	f024 0307 	bic.w	r3, r4, #7
 80024fe:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002502:	f103 0208 	add.w	r2, r3, #8
 8002506:	9208      	str	r2, [sp, #32]
 8002508:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800250c:	2200      	movs	r2, #0
 800250e:	e18c      	b.n	800282a <_vfprintf_r+0x582>
 8002510:	aa2a      	add	r2, sp, #168	; 0xa8
 8002512:	9907      	ldr	r1, [sp, #28]
 8002514:	9803      	ldr	r0, [sp, #12]
 8002516:	f004 f9f5 	bl	8006904 <__sprint_r>
 800251a:	2800      	cmp	r0, #0
 800251c:	f041 8376 	bne.w	8003c0c <_vfprintf_r+0x1964>
 8002520:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002524:	e72c      	b.n	8002380 <_vfprintf_r+0xd8>
 8002526:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800252a:	f003 f8ab 	bl	8005684 <__retarget_lock_acquire_recursive>
 800252e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002532:	b293      	uxth	r3, r2
 8002534:	e6d8      	b.n	80022e8 <_vfprintf_r+0x40>
 8002536:	bf00      	nop
	...
 8002540:	4643      	mov	r3, r8
 8002542:	069f      	lsls	r7, r3, #26
 8002544:	f140 832f 	bpl.w	8002ba6 <_vfprintf_r+0x8fe>
 8002548:	9c08      	ldr	r4, [sp, #32]
 800254a:	3407      	adds	r4, #7
 800254c:	f024 0407 	bic.w	r4, r4, #7
 8002550:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002554:	f104 0208 	add.w	r2, r4, #8
 8002558:	9208      	str	r2, [sp, #32]
 800255a:	4604      	mov	r4, r0
 800255c:	460d      	mov	r5, r1
 800255e:	2800      	cmp	r0, #0
 8002560:	f171 0200 	sbcs.w	r2, r1, #0
 8002564:	da05      	bge.n	8002572 <_vfprintf_r+0x2ca>
 8002566:	222d      	movs	r2, #45	; 0x2d
 8002568:	4264      	negs	r4, r4
 800256a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 800256e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002572:	aa56      	add	r2, sp, #344	; 0x158
 8002574:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002578:	9204      	str	r2, [sp, #16]
 800257a:	f000 84b2 	beq.w	8002ee2 <_vfprintf_r+0xc3a>
 800257e:	2201      	movs	r2, #1
 8002580:	ea54 0105 	orrs.w	r1, r4, r5
 8002584:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002588:	f040 8159 	bne.w	800283e <_vfprintf_r+0x596>
 800258c:	f1b9 0f00 	cmp.w	r9, #0
 8002590:	f040 8619 	bne.w	80031c6 <_vfprintf_r+0xf1e>
 8002594:	2a00      	cmp	r2, #0
 8002596:	f040 8508 	bne.w	8002faa <_vfprintf_r+0xd02>
 800259a:	f013 0301 	ands.w	r3, r3, #1
 800259e:	af56      	add	r7, sp, #344	; 0x158
 80025a0:	9309      	str	r3, [sp, #36]	; 0x24
 80025a2:	d002      	beq.n	80025aa <_vfprintf_r+0x302>
 80025a4:	2330      	movs	r3, #48	; 0x30
 80025a6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80025aa:	2300      	movs	r3, #0
 80025ac:	930a      	str	r3, [sp, #40]	; 0x28
 80025ae:	930f      	str	r3, [sp, #60]	; 0x3c
 80025b0:	9314      	str	r3, [sp, #80]	; 0x50
 80025b2:	9311      	str	r3, [sp, #68]	; 0x44
 80025b4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80025b6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80025ba:	454b      	cmp	r3, r9
 80025bc:	bfb8      	it	lt
 80025be:	464b      	movlt	r3, r9
 80025c0:	9304      	str	r3, [sp, #16]
 80025c2:	b112      	cbz	r2, 80025ca <_vfprintf_r+0x322>
 80025c4:	9b04      	ldr	r3, [sp, #16]
 80025c6:	3301      	adds	r3, #1
 80025c8:	9304      	str	r3, [sp, #16]
 80025ca:	f018 0302 	ands.w	r3, r8, #2
 80025ce:	930b      	str	r3, [sp, #44]	; 0x2c
 80025d0:	d002      	beq.n	80025d8 <_vfprintf_r+0x330>
 80025d2:	9b04      	ldr	r3, [sp, #16]
 80025d4:	3302      	adds	r3, #2
 80025d6:	9304      	str	r3, [sp, #16]
 80025d8:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 80025dc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80025de:	930e      	str	r3, [sp, #56]	; 0x38
 80025e0:	d13f      	bne.n	8002662 <_vfprintf_r+0x3ba>
 80025e2:	9b06      	ldr	r3, [sp, #24]
 80025e4:	9904      	ldr	r1, [sp, #16]
 80025e6:	1a5d      	subs	r5, r3, r1
 80025e8:	2d00      	cmp	r5, #0
 80025ea:	dd3a      	ble.n	8002662 <_vfprintf_r+0x3ba>
 80025ec:	2d10      	cmp	r5, #16
 80025ee:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80025f0:	dd29      	ble.n	8002646 <_vfprintf_r+0x39e>
 80025f2:	4659      	mov	r1, fp
 80025f4:	4620      	mov	r0, r4
 80025f6:	9620      	str	r6, [sp, #128]	; 0x80
 80025f8:	2310      	movs	r3, #16
 80025fa:	9c03      	ldr	r4, [sp, #12]
 80025fc:	9e07      	ldr	r6, [sp, #28]
 80025fe:	46bb      	mov	fp, r7
 8002600:	e004      	b.n	800260c <_vfprintf_r+0x364>
 8002602:	3d10      	subs	r5, #16
 8002604:	2d10      	cmp	r5, #16
 8002606:	f101 0108 	add.w	r1, r1, #8
 800260a:	dd18      	ble.n	800263e <_vfprintf_r+0x396>
 800260c:	3201      	adds	r2, #1
 800260e:	4fba      	ldr	r7, [pc, #744]	; (80028f8 <_vfprintf_r+0x650>)
 8002610:	3010      	adds	r0, #16
 8002612:	2a07      	cmp	r2, #7
 8002614:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002618:	e9c1 7300 	strd	r7, r3, [r1]
 800261c:	ddf1      	ble.n	8002602 <_vfprintf_r+0x35a>
 800261e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002620:	4631      	mov	r1, r6
 8002622:	4620      	mov	r0, r4
 8002624:	930c      	str	r3, [sp, #48]	; 0x30
 8002626:	f004 f96d 	bl	8006904 <__sprint_r>
 800262a:	2800      	cmp	r0, #0
 800262c:	f040 843d 	bne.w	8002eaa <_vfprintf_r+0xc02>
 8002630:	3d10      	subs	r5, #16
 8002632:	2d10      	cmp	r5, #16
 8002634:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002638:	a92d      	add	r1, sp, #180	; 0xb4
 800263a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800263c:	dce6      	bgt.n	800260c <_vfprintf_r+0x364>
 800263e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002640:	465f      	mov	r7, fp
 8002642:	4604      	mov	r4, r0
 8002644:	468b      	mov	fp, r1
 8002646:	3201      	adds	r2, #1
 8002648:	4bab      	ldr	r3, [pc, #684]	; (80028f8 <_vfprintf_r+0x650>)
 800264a:	442c      	add	r4, r5
 800264c:	2a07      	cmp	r2, #7
 800264e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002652:	e9cb 3500 	strd	r3, r5, [fp]
 8002656:	f300 84ff 	bgt.w	8003058 <_vfprintf_r+0xdb0>
 800265a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800265e:	f10b 0b08 	add.w	fp, fp, #8
 8002662:	b172      	cbz	r2, 8002682 <_vfprintf_r+0x3da>
 8002664:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002666:	3201      	adds	r2, #1
 8002668:	3401      	adds	r4, #1
 800266a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 800266e:	2101      	movs	r1, #1
 8002670:	2a07      	cmp	r2, #7
 8002672:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002676:	e9cb 0100 	strd	r0, r1, [fp]
 800267a:	f300 8418 	bgt.w	8002eae <_vfprintf_r+0xc06>
 800267e:	f10b 0b08 	add.w	fp, fp, #8
 8002682:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002684:	b16b      	cbz	r3, 80026a2 <_vfprintf_r+0x3fa>
 8002686:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002688:	3301      	adds	r3, #1
 800268a:	3402      	adds	r4, #2
 800268c:	a923      	add	r1, sp, #140	; 0x8c
 800268e:	2202      	movs	r2, #2
 8002690:	2b07      	cmp	r3, #7
 8002692:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002696:	e9cb 1200 	strd	r1, r2, [fp]
 800269a:	f300 8415 	bgt.w	8002ec8 <_vfprintf_r+0xc20>
 800269e:	f10b 0b08 	add.w	fp, fp, #8
 80026a2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80026a4:	2b80      	cmp	r3, #128	; 0x80
 80026a6:	f000 8331 	beq.w	8002d0c <_vfprintf_r+0xa64>
 80026aa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80026ac:	eba9 0503 	sub.w	r5, r9, r3
 80026b0:	2d00      	cmp	r5, #0
 80026b2:	dd37      	ble.n	8002724 <_vfprintf_r+0x47c>
 80026b4:	2d10      	cmp	r5, #16
 80026b6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80026b8:	4b90      	ldr	r3, [pc, #576]	; (80028fc <_vfprintf_r+0x654>)
 80026ba:	dd28      	ble.n	800270e <_vfprintf_r+0x466>
 80026bc:	4659      	mov	r1, fp
 80026be:	4620      	mov	r0, r4
 80026c0:	46bb      	mov	fp, r7
 80026c2:	f04f 0910 	mov.w	r9, #16
 80026c6:	4637      	mov	r7, r6
 80026c8:	461c      	mov	r4, r3
 80026ca:	9e07      	ldr	r6, [sp, #28]
 80026cc:	e004      	b.n	80026d8 <_vfprintf_r+0x430>
 80026ce:	3d10      	subs	r5, #16
 80026d0:	2d10      	cmp	r5, #16
 80026d2:	f101 0108 	add.w	r1, r1, #8
 80026d6:	dd15      	ble.n	8002704 <_vfprintf_r+0x45c>
 80026d8:	3201      	adds	r2, #1
 80026da:	3010      	adds	r0, #16
 80026dc:	2a07      	cmp	r2, #7
 80026de:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80026e2:	e9c1 4900 	strd	r4, r9, [r1]
 80026e6:	ddf2      	ble.n	80026ce <_vfprintf_r+0x426>
 80026e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80026ea:	4631      	mov	r1, r6
 80026ec:	9803      	ldr	r0, [sp, #12]
 80026ee:	f004 f909 	bl	8006904 <__sprint_r>
 80026f2:	2800      	cmp	r0, #0
 80026f4:	f040 83d9 	bne.w	8002eaa <_vfprintf_r+0xc02>
 80026f8:	3d10      	subs	r5, #16
 80026fa:	2d10      	cmp	r5, #16
 80026fc:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002700:	a92d      	add	r1, sp, #180	; 0xb4
 8002702:	dce9      	bgt.n	80026d8 <_vfprintf_r+0x430>
 8002704:	463e      	mov	r6, r7
 8002706:	4623      	mov	r3, r4
 8002708:	465f      	mov	r7, fp
 800270a:	4604      	mov	r4, r0
 800270c:	468b      	mov	fp, r1
 800270e:	3201      	adds	r2, #1
 8002710:	442c      	add	r4, r5
 8002712:	2a07      	cmp	r2, #7
 8002714:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002718:	e9cb 3500 	strd	r3, r5, [fp]
 800271c:	f300 83ef 	bgt.w	8002efe <_vfprintf_r+0xc56>
 8002720:	f10b 0b08 	add.w	fp, fp, #8
 8002724:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002728:	f040 8280 	bne.w	8002c2c <_vfprintf_r+0x984>
 800272c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800272e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002730:	f8cb 7000 	str.w	r7, [fp]
 8002734:	3301      	adds	r3, #1
 8002736:	4414      	add	r4, r2
 8002738:	2b07      	cmp	r3, #7
 800273a:	942c      	str	r4, [sp, #176]	; 0xb0
 800273c:	f8cb 2004 	str.w	r2, [fp, #4]
 8002740:	932b      	str	r3, [sp, #172]	; 0xac
 8002742:	f300 8392 	bgt.w	8002e6a <_vfprintf_r+0xbc2>
 8002746:	f10b 0b08 	add.w	fp, fp, #8
 800274a:	f018 0f04 	tst.w	r8, #4
 800274e:	d03b      	beq.n	80027c8 <_vfprintf_r+0x520>
 8002750:	9b06      	ldr	r3, [sp, #24]
 8002752:	9a04      	ldr	r2, [sp, #16]
 8002754:	1a9d      	subs	r5, r3, r2
 8002756:	2d00      	cmp	r5, #0
 8002758:	dd36      	ble.n	80027c8 <_vfprintf_r+0x520>
 800275a:	2d10      	cmp	r5, #16
 800275c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800275e:	dd21      	ble.n	80027a4 <_vfprintf_r+0x4fc>
 8002760:	2610      	movs	r6, #16
 8002762:	9f03      	ldr	r7, [sp, #12]
 8002764:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002768:	e004      	b.n	8002774 <_vfprintf_r+0x4cc>
 800276a:	3d10      	subs	r5, #16
 800276c:	2d10      	cmp	r5, #16
 800276e:	f10b 0b08 	add.w	fp, fp, #8
 8002772:	dd17      	ble.n	80027a4 <_vfprintf_r+0x4fc>
 8002774:	3301      	adds	r3, #1
 8002776:	4a60      	ldr	r2, [pc, #384]	; (80028f8 <_vfprintf_r+0x650>)
 8002778:	3410      	adds	r4, #16
 800277a:	2b07      	cmp	r3, #7
 800277c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002780:	e9cb 2600 	strd	r2, r6, [fp]
 8002784:	ddf1      	ble.n	800276a <_vfprintf_r+0x4c2>
 8002786:	aa2a      	add	r2, sp, #168	; 0xa8
 8002788:	4641      	mov	r1, r8
 800278a:	4638      	mov	r0, r7
 800278c:	f004 f8ba 	bl	8006904 <__sprint_r>
 8002790:	2800      	cmp	r0, #0
 8002792:	f040 856c 	bne.w	800326e <_vfprintf_r+0xfc6>
 8002796:	3d10      	subs	r5, #16
 8002798:	2d10      	cmp	r5, #16
 800279a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800279e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80027a2:	dce7      	bgt.n	8002774 <_vfprintf_r+0x4cc>
 80027a4:	3301      	adds	r3, #1
 80027a6:	4a54      	ldr	r2, [pc, #336]	; (80028f8 <_vfprintf_r+0x650>)
 80027a8:	442c      	add	r4, r5
 80027aa:	2b07      	cmp	r3, #7
 80027ac:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80027b0:	e9cb 2500 	strd	r2, r5, [fp]
 80027b4:	dd08      	ble.n	80027c8 <_vfprintf_r+0x520>
 80027b6:	aa2a      	add	r2, sp, #168	; 0xa8
 80027b8:	9907      	ldr	r1, [sp, #28]
 80027ba:	9803      	ldr	r0, [sp, #12]
 80027bc:	f004 f8a2 	bl	8006904 <__sprint_r>
 80027c0:	2800      	cmp	r0, #0
 80027c2:	f040 82e9 	bne.w	8002d98 <_vfprintf_r+0xaf0>
 80027c6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80027c8:	9904      	ldr	r1, [sp, #16]
 80027ca:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 80027ce:	428a      	cmp	r2, r1
 80027d0:	bfac      	ite	ge
 80027d2:	189b      	addge	r3, r3, r2
 80027d4:	185b      	addlt	r3, r3, r1
 80027d6:	9305      	str	r3, [sp, #20]
 80027d8:	2c00      	cmp	r4, #0
 80027da:	f040 82d5 	bne.w	8002d88 <_vfprintf_r+0xae0>
 80027de:	2300      	movs	r3, #0
 80027e0:	932b      	str	r3, [sp, #172]	; 0xac
 80027e2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80027e4:	b11b      	cbz	r3, 80027ee <_vfprintf_r+0x546>
 80027e6:	990a      	ldr	r1, [sp, #40]	; 0x28
 80027e8:	9803      	ldr	r0, [sp, #12]
 80027ea:	f002 fc9d 	bl	8005128 <_free_r>
 80027ee:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80027f2:	4657      	mov	r7, sl
 80027f4:	783b      	ldrb	r3, [r7, #0]
 80027f6:	2b00      	cmp	r3, #0
 80027f8:	f47f ada7 	bne.w	800234a <_vfprintf_r+0xa2>
 80027fc:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80027fe:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002802:	2b00      	cmp	r3, #0
 8002804:	f041 80e7 	bne.w	80039d6 <_vfprintf_r+0x172e>
 8002808:	2300      	movs	r3, #0
 800280a:	932b      	str	r3, [sp, #172]	; 0xac
 800280c:	e2cb      	b.n	8002da6 <_vfprintf_r+0xafe>
 800280e:	4643      	mov	r3, r8
 8002810:	069a      	lsls	r2, r3, #26
 8002812:	f140 814e 	bpl.w	8002ab2 <_vfprintf_r+0x80a>
 8002816:	9c08      	ldr	r4, [sp, #32]
 8002818:	3407      	adds	r4, #7
 800281a:	f024 0207 	bic.w	r2, r4, #7
 800281e:	f102 0108 	add.w	r1, r2, #8
 8002822:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002826:	9108      	str	r1, [sp, #32]
 8002828:	2201      	movs	r2, #1
 800282a:	2100      	movs	r1, #0
 800282c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002830:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002834:	a956      	add	r1, sp, #344	; 0x158
 8002836:	9104      	str	r1, [sp, #16]
 8002838:	f47f aea2 	bne.w	8002580 <_vfprintf_r+0x2d8>
 800283c:	4698      	mov	r8, r3
 800283e:	2a01      	cmp	r2, #1
 8002840:	f000 8350 	beq.w	8002ee4 <_vfprintf_r+0xc3c>
 8002844:	2a02      	cmp	r2, #2
 8002846:	f000 831b 	beq.w	8002e80 <_vfprintf_r+0xbd8>
 800284a:	a956      	add	r1, sp, #344	; 0x158
 800284c:	e000      	b.n	8002850 <_vfprintf_r+0x5a8>
 800284e:	4639      	mov	r1, r7
 8002850:	08e2      	lsrs	r2, r4, #3
 8002852:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002856:	08e8      	lsrs	r0, r5, #3
 8002858:	f004 0307 	and.w	r3, r4, #7
 800285c:	4605      	mov	r5, r0
 800285e:	4614      	mov	r4, r2
 8002860:	3330      	adds	r3, #48	; 0x30
 8002862:	ea54 0205 	orrs.w	r2, r4, r5
 8002866:	f801 3c01 	strb.w	r3, [r1, #-1]
 800286a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 800286e:	d1ee      	bne.n	800284e <_vfprintf_r+0x5a6>
 8002870:	f018 0f01 	tst.w	r8, #1
 8002874:	f000 8314 	beq.w	8002ea0 <_vfprintf_r+0xbf8>
 8002878:	2b30      	cmp	r3, #48	; 0x30
 800287a:	f000 8311 	beq.w	8002ea0 <_vfprintf_r+0xbf8>
 800287e:	9a04      	ldr	r2, [sp, #16]
 8002880:	3902      	subs	r1, #2
 8002882:	2330      	movs	r3, #48	; 0x30
 8002884:	1a52      	subs	r2, r2, r1
 8002886:	f807 3c01 	strb.w	r3, [r7, #-1]
 800288a:	9209      	str	r2, [sp, #36]	; 0x24
 800288c:	460f      	mov	r7, r1
 800288e:	e68c      	b.n	80025aa <_vfprintf_r+0x302>
 8002890:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002894:	2200      	movs	r2, #0
 8002896:	f81a 6b01 	ldrb.w	r6, [sl], #1
 800289a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 800289e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 80028a2:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80028a6:	2b09      	cmp	r3, #9
 80028a8:	d9f5      	bls.n	8002896 <_vfprintf_r+0x5ee>
 80028aa:	9206      	str	r2, [sp, #24]
 80028ac:	e57c      	b.n	80023a8 <_vfprintf_r+0x100>
 80028ae:	4b14      	ldr	r3, [pc, #80]	; (8002900 <_vfprintf_r+0x658>)
 80028b0:	9317      	str	r3, [sp, #92]	; 0x5c
 80028b2:	f018 0f20 	tst.w	r8, #32
 80028b6:	f000 8114 	beq.w	8002ae2 <_vfprintf_r+0x83a>
 80028ba:	9c08      	ldr	r4, [sp, #32]
 80028bc:	3407      	adds	r4, #7
 80028be:	f024 0307 	bic.w	r3, r4, #7
 80028c2:	e9d3 4500 	ldrd	r4, r5, [r3]
 80028c6:	f103 0208 	add.w	r2, r3, #8
 80028ca:	9208      	str	r2, [sp, #32]
 80028cc:	f018 0f01 	tst.w	r8, #1
 80028d0:	d009      	beq.n	80028e6 <_vfprintf_r+0x63e>
 80028d2:	ea54 0305 	orrs.w	r3, r4, r5
 80028d6:	d006      	beq.n	80028e6 <_vfprintf_r+0x63e>
 80028d8:	2330      	movs	r3, #48	; 0x30
 80028da:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 80028de:	f048 0802 	orr.w	r8, r8, #2
 80028e2:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80028e6:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80028ea:	2202      	movs	r2, #2
 80028ec:	e79d      	b.n	800282a <_vfprintf_r+0x582>
 80028ee:	f048 0801 	orr.w	r8, r8, #1
 80028f2:	f89a 6000 	ldrb.w	r6, [sl]
 80028f6:	e555      	b.n	80023a4 <_vfprintf_r+0xfc>
 80028f8:	08006ff0 	.word	0x08006ff0
 80028fc:	08007000 	.word	0x08007000
 8002900:	08006fbc 	.word	0x08006fbc
 8002904:	9e03      	ldr	r6, [sp, #12]
 8002906:	4630      	mov	r0, r6
 8002908:	f002 feaa 	bl	8005660 <_localeconv_r>
 800290c:	6843      	ldr	r3, [r0, #4]
 800290e:	9318      	str	r3, [sp, #96]	; 0x60
 8002910:	4618      	mov	r0, r3
 8002912:	f7fd fe95 	bl	8000640 <strlen>
 8002916:	901b      	str	r0, [sp, #108]	; 0x6c
 8002918:	4604      	mov	r4, r0
 800291a:	4630      	mov	r0, r6
 800291c:	f002 fea0 	bl	8005660 <_localeconv_r>
 8002920:	6883      	ldr	r3, [r0, #8]
 8002922:	931a      	str	r3, [sp, #104]	; 0x68
 8002924:	2c00      	cmp	r4, #0
 8002926:	f43f adb8 	beq.w	800249a <_vfprintf_r+0x1f2>
 800292a:	f89a 6000 	ldrb.w	r6, [sl]
 800292e:	2b00      	cmp	r3, #0
 8002930:	f43f ad38 	beq.w	80023a4 <_vfprintf_r+0xfc>
 8002934:	781b      	ldrb	r3, [r3, #0]
 8002936:	2b00      	cmp	r3, #0
 8002938:	f43f ad34 	beq.w	80023a4 <_vfprintf_r+0xfc>
 800293c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002940:	e530      	b.n	80023a4 <_vfprintf_r+0xfc>
 8002942:	9b08      	ldr	r3, [sp, #32]
 8002944:	f89a 6000 	ldrb.w	r6, [sl]
 8002948:	681a      	ldr	r2, [r3, #0]
 800294a:	9206      	str	r2, [sp, #24]
 800294c:	2a00      	cmp	r2, #0
 800294e:	f103 0304 	add.w	r3, r3, #4
 8002952:	f2c0 8697 	blt.w	8003684 <_vfprintf_r+0x13dc>
 8002956:	9308      	str	r3, [sp, #32]
 8002958:	e524      	b.n	80023a4 <_vfprintf_r+0xfc>
 800295a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 800295e:	f89a 6000 	ldrb.w	r6, [sl]
 8002962:	e51f      	b.n	80023a4 <_vfprintf_r+0xfc>
 8002964:	f89a 6000 	ldrb.w	r6, [sl]
 8002968:	f048 0804 	orr.w	r8, r8, #4
 800296c:	e51a      	b.n	80023a4 <_vfprintf_r+0xfc>
 800296e:	f89a 6000 	ldrb.w	r6, [sl]
 8002972:	2e2a      	cmp	r6, #42	; 0x2a
 8002974:	f10a 0201 	add.w	r2, sl, #1
 8002978:	f001 81b0 	beq.w	8003cdc <_vfprintf_r+0x1a34>
 800297c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002980:	2b09      	cmp	r3, #9
 8002982:	4692      	mov	sl, r2
 8002984:	f04f 0900 	mov.w	r9, #0
 8002988:	f63f ad0e 	bhi.w	80023a8 <_vfprintf_r+0x100>
 800298c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002990:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002994:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002998:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800299c:	2b09      	cmp	r3, #9
 800299e:	d9f5      	bls.n	800298c <_vfprintf_r+0x6e4>
 80029a0:	e502      	b.n	80023a8 <_vfprintf_r+0x100>
 80029a2:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 80029a6:	f89a 6000 	ldrb.w	r6, [sl]
 80029aa:	e4fb      	b.n	80023a4 <_vfprintf_r+0xfc>
 80029ac:	9c08      	ldr	r4, [sp, #32]
 80029ae:	3407      	adds	r4, #7
 80029b0:	f024 0407 	bic.w	r4, r4, #7
 80029b4:	ed94 7b00 	vldr	d7, [r4]
 80029b8:	ec52 1b17 	vmov	r1, r2, d7
 80029bc:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80029c0:	931d      	str	r3, [sp, #116]	; 0x74
 80029c2:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 80029c6:	3408      	adds	r4, #8
 80029c8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80029cc:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80029d0:	4bba      	ldr	r3, [pc, #744]	; (8002cbc <_vfprintf_r+0xa14>)
 80029d2:	9408      	str	r4, [sp, #32]
 80029d4:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80029d8:	f7fe fb48 	bl	800106c <__aeabi_dcmpun>
 80029dc:	2800      	cmp	r0, #0
 80029de:	f040 846f 	bne.w	80032c0 <_vfprintf_r+0x1018>
 80029e2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80029e6:	4bb5      	ldr	r3, [pc, #724]	; (8002cbc <_vfprintf_r+0xa14>)
 80029e8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80029ec:	f7fe fb20 	bl	8001030 <__aeabi_dcmple>
 80029f0:	2800      	cmp	r0, #0
 80029f2:	f040 8465 	bne.w	80032c0 <_vfprintf_r+0x1018>
 80029f6:	2200      	movs	r2, #0
 80029f8:	2300      	movs	r3, #0
 80029fa:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80029fe:	f7fe fb0d 	bl	800101c <__aeabi_dcmplt>
 8002a02:	2800      	cmp	r0, #0
 8002a04:	f040 855b 	bne.w	80034be <_vfprintf_r+0x1216>
 8002a08:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002a0c:	4fac      	ldr	r7, [pc, #688]	; (8002cc0 <_vfprintf_r+0xa18>)
 8002a0e:	4bad      	ldr	r3, [pc, #692]	; (8002cc4 <_vfprintf_r+0xa1c>)
 8002a10:	2000      	movs	r0, #0
 8002a12:	2103      	movs	r1, #3
 8002a14:	9104      	str	r1, [sp, #16]
 8002a16:	900a      	str	r0, [sp, #40]	; 0x28
 8002a18:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002a1c:	2e47      	cmp	r6, #71	; 0x47
 8002a1e:	bfd8      	it	le
 8002a20:	461f      	movle	r7, r3
 8002a22:	9109      	str	r1, [sp, #36]	; 0x24
 8002a24:	4681      	mov	r9, r0
 8002a26:	900f      	str	r0, [sp, #60]	; 0x3c
 8002a28:	9014      	str	r0, [sp, #80]	; 0x50
 8002a2a:	9011      	str	r0, [sp, #68]	; 0x44
 8002a2c:	e5c9      	b.n	80025c2 <_vfprintf_r+0x31a>
 8002a2e:	9808      	ldr	r0, [sp, #32]
 8002a30:	2300      	movs	r3, #0
 8002a32:	6801      	ldr	r1, [r0, #0]
 8002a34:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002a38:	461a      	mov	r2, r3
 8002a3a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002a3e:	2301      	movs	r3, #1
 8002a40:	1d01      	adds	r1, r0, #4
 8002a42:	9304      	str	r3, [sp, #16]
 8002a44:	920a      	str	r2, [sp, #40]	; 0x28
 8002a46:	4691      	mov	r9, r2
 8002a48:	920f      	str	r2, [sp, #60]	; 0x3c
 8002a4a:	9214      	str	r2, [sp, #80]	; 0x50
 8002a4c:	9211      	str	r2, [sp, #68]	; 0x44
 8002a4e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002a52:	af3d      	add	r7, sp, #244	; 0xf4
 8002a54:	e5b9      	b.n	80025ca <_vfprintf_r+0x322>
 8002a56:	9b08      	ldr	r3, [sp, #32]
 8002a58:	681f      	ldr	r7, [r3, #0]
 8002a5a:	2500      	movs	r5, #0
 8002a5c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002a60:	1d1c      	adds	r4, r3, #4
 8002a62:	2f00      	cmp	r7, #0
 8002a64:	f000 8639 	beq.w	80036da <_vfprintf_r+0x1432>
 8002a68:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002a6c:	f000 8711 	beq.w	8003892 <_vfprintf_r+0x15ea>
 8002a70:	464a      	mov	r2, r9
 8002a72:	4629      	mov	r1, r5
 8002a74:	4638      	mov	r0, r7
 8002a76:	f7fd fe53 	bl	8000720 <memchr>
 8002a7a:	900a      	str	r0, [sp, #40]	; 0x28
 8002a7c:	2800      	cmp	r0, #0
 8002a7e:	f000 85e7 	beq.w	8003650 <_vfprintf_r+0x13a8>
 8002a82:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002a84:	1bdb      	subs	r3, r3, r7
 8002a86:	9309      	str	r3, [sp, #36]	; 0x24
 8002a88:	46a9      	mov	r9, r5
 8002a8a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002a8e:	9408      	str	r4, [sp, #32]
 8002a90:	9304      	str	r3, [sp, #16]
 8002a92:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002a96:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002a9a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002a9e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002aa2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002aa6:	e58c      	b.n	80025c2 <_vfprintf_r+0x31a>
 8002aa8:	f048 0310 	orr.w	r3, r8, #16
 8002aac:	069a      	lsls	r2, r3, #26
 8002aae:	f53f aeb2 	bmi.w	8002816 <_vfprintf_r+0x56e>
 8002ab2:	9a08      	ldr	r2, [sp, #32]
 8002ab4:	06df      	lsls	r7, r3, #27
 8002ab6:	f102 0104 	add.w	r1, r2, #4
 8002aba:	f100 837e 	bmi.w	80031ba <_vfprintf_r+0xf12>
 8002abe:	065d      	lsls	r5, r3, #25
 8002ac0:	9a08      	ldr	r2, [sp, #32]
 8002ac2:	f100 84e4 	bmi.w	800348e <_vfprintf_r+0x11e6>
 8002ac6:	059c      	lsls	r4, r3, #22
 8002ac8:	f140 8377 	bpl.w	80031ba <_vfprintf_r+0xf12>
 8002acc:	7814      	ldrb	r4, [r2, #0]
 8002ace:	9108      	str	r1, [sp, #32]
 8002ad0:	2500      	movs	r5, #0
 8002ad2:	2201      	movs	r2, #1
 8002ad4:	e6a9      	b.n	800282a <_vfprintf_r+0x582>
 8002ad6:	4b7c      	ldr	r3, [pc, #496]	; (8002cc8 <_vfprintf_r+0xa20>)
 8002ad8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002ada:	f018 0f20 	tst.w	r8, #32
 8002ade:	f47f aeec 	bne.w	80028ba <_vfprintf_r+0x612>
 8002ae2:	9a08      	ldr	r2, [sp, #32]
 8002ae4:	f018 0f10 	tst.w	r8, #16
 8002ae8:	f102 0304 	add.w	r3, r2, #4
 8002aec:	f040 8354 	bne.w	8003198 <_vfprintf_r+0xef0>
 8002af0:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002af4:	9a08      	ldr	r2, [sp, #32]
 8002af6:	f040 84d0 	bne.w	800349a <_vfprintf_r+0x11f2>
 8002afa:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002afe:	f000 834b 	beq.w	8003198 <_vfprintf_r+0xef0>
 8002b02:	7814      	ldrb	r4, [r2, #0]
 8002b04:	9308      	str	r3, [sp, #32]
 8002b06:	2500      	movs	r5, #0
 8002b08:	e6e0      	b.n	80028cc <_vfprintf_r+0x624>
 8002b0a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002b0e:	f89a 6000 	ldrb.w	r6, [sl]
 8002b12:	2b00      	cmp	r3, #0
 8002b14:	f47f ac46 	bne.w	80023a4 <_vfprintf_r+0xfc>
 8002b18:	2320      	movs	r3, #32
 8002b1a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002b1e:	e441      	b.n	80023a4 <_vfprintf_r+0xfc>
 8002b20:	f89a 6000 	ldrb.w	r6, [sl]
 8002b24:	2e6c      	cmp	r6, #108	; 0x6c
 8002b26:	bf03      	ittte	eq
 8002b28:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002b2c:	f048 0820 	orreq.w	r8, r8, #32
 8002b30:	f10a 0a01 	addeq.w	sl, sl, #1
 8002b34:	f048 0810 	orrne.w	r8, r8, #16
 8002b38:	e434      	b.n	80023a4 <_vfprintf_r+0xfc>
 8002b3a:	9a08      	ldr	r2, [sp, #32]
 8002b3c:	f018 0f20 	tst.w	r8, #32
 8002b40:	f852 3b04 	ldr.w	r3, [r2], #4
 8002b44:	9208      	str	r2, [sp, #32]
 8002b46:	f000 83a1 	beq.w	800328c <_vfprintf_r+0xfe4>
 8002b4a:	9a05      	ldr	r2, [sp, #20]
 8002b4c:	4610      	mov	r0, r2
 8002b4e:	17d1      	asrs	r1, r2, #31
 8002b50:	e9c3 0100 	strd	r0, r1, [r3]
 8002b54:	4657      	mov	r7, sl
 8002b56:	e64d      	b.n	80027f4 <_vfprintf_r+0x54c>
 8002b58:	f89a 6000 	ldrb.w	r6, [sl]
 8002b5c:	2e68      	cmp	r6, #104	; 0x68
 8002b5e:	bf03      	ittte	eq
 8002b60:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002b64:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002b68:	f10a 0a01 	addeq.w	sl, sl, #1
 8002b6c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002b70:	e418      	b.n	80023a4 <_vfprintf_r+0xfc>
 8002b72:	9908      	ldr	r1, [sp, #32]
 8002b74:	4b55      	ldr	r3, [pc, #340]	; (8002ccc <_vfprintf_r+0xa24>)
 8002b76:	680c      	ldr	r4, [r1, #0]
 8002b78:	9317      	str	r3, [sp, #92]	; 0x5c
 8002b7a:	f647 0230 	movw	r2, #30768	; 0x7830
 8002b7e:	3104      	adds	r1, #4
 8002b80:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002b84:	f048 0302 	orr.w	r3, r8, #2
 8002b88:	9108      	str	r1, [sp, #32]
 8002b8a:	2500      	movs	r5, #0
 8002b8c:	2202      	movs	r2, #2
 8002b8e:	2678      	movs	r6, #120	; 0x78
 8002b90:	e64b      	b.n	800282a <_vfprintf_r+0x582>
 8002b92:	f048 0808 	orr.w	r8, r8, #8
 8002b96:	f89a 6000 	ldrb.w	r6, [sl]
 8002b9a:	e403      	b.n	80023a4 <_vfprintf_r+0xfc>
 8002b9c:	f048 0310 	orr.w	r3, r8, #16
 8002ba0:	069f      	lsls	r7, r3, #26
 8002ba2:	f53f acd1 	bmi.w	8002548 <_vfprintf_r+0x2a0>
 8002ba6:	9908      	ldr	r1, [sp, #32]
 8002ba8:	06dd      	lsls	r5, r3, #27
 8002baa:	f101 0204 	add.w	r2, r1, #4
 8002bae:	f100 82fd 	bmi.w	80031ac <_vfprintf_r+0xf04>
 8002bb2:	065c      	lsls	r4, r3, #25
 8002bb4:	9908      	ldr	r1, [sp, #32]
 8002bb6:	f100 8475 	bmi.w	80034a4 <_vfprintf_r+0x11fc>
 8002bba:	0598      	lsls	r0, r3, #22
 8002bbc:	f140 82f6 	bpl.w	80031ac <_vfprintf_r+0xf04>
 8002bc0:	f991 4000 	ldrsb.w	r4, [r1]
 8002bc4:	9208      	str	r2, [sp, #32]
 8002bc6:	17e5      	asrs	r5, r4, #31
 8002bc8:	4620      	mov	r0, r4
 8002bca:	4629      	mov	r1, r5
 8002bcc:	e4c7      	b.n	800255e <_vfprintf_r+0x2b6>
 8002bce:	9a08      	ldr	r2, [sp, #32]
 8002bd0:	f018 0f10 	tst.w	r8, #16
 8002bd4:	f102 0304 	add.w	r3, r2, #4
 8002bd8:	f040 82e3 	bne.w	80031a2 <_vfprintf_r+0xefa>
 8002bdc:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002be0:	9a08      	ldr	r2, [sp, #32]
 8002be2:	f040 8467 	bne.w	80034b4 <_vfprintf_r+0x120c>
 8002be6:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002bea:	f000 82da 	beq.w	80031a2 <_vfprintf_r+0xefa>
 8002bee:	7814      	ldrb	r4, [r2, #0]
 8002bf0:	9308      	str	r3, [sp, #32]
 8002bf2:	2500      	movs	r5, #0
 8002bf4:	e488      	b.n	8002508 <_vfprintf_r+0x260>
 8002bf6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002bfa:	f002 fd45 	bl	8005688 <__retarget_lock_release_recursive>
 8002bfe:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002c02:	9305      	str	r3, [sp, #20]
 8002c04:	e443      	b.n	800248e <_vfprintf_r+0x1e6>
 8002c06:	2e00      	cmp	r6, #0
 8002c08:	f43f adf8 	beq.w	80027fc <_vfprintf_r+0x554>
 8002c0c:	2300      	movs	r3, #0
 8002c0e:	2101      	movs	r1, #1
 8002c10:	461a      	mov	r2, r3
 8002c12:	9104      	str	r1, [sp, #16]
 8002c14:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002c18:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002c1c:	930a      	str	r3, [sp, #40]	; 0x28
 8002c1e:	4699      	mov	r9, r3
 8002c20:	930f      	str	r3, [sp, #60]	; 0x3c
 8002c22:	9314      	str	r3, [sp, #80]	; 0x50
 8002c24:	9311      	str	r3, [sp, #68]	; 0x44
 8002c26:	9109      	str	r1, [sp, #36]	; 0x24
 8002c28:	af3d      	add	r7, sp, #244	; 0xf4
 8002c2a:	e4ce      	b.n	80025ca <_vfprintf_r+0x322>
 8002c2c:	2e65      	cmp	r6, #101	; 0x65
 8002c2e:	f340 80ca 	ble.w	8002dc6 <_vfprintf_r+0xb1e>
 8002c32:	2200      	movs	r2, #0
 8002c34:	2300      	movs	r3, #0
 8002c36:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002c3a:	f7fe f9e5 	bl	8001008 <__aeabi_dcmpeq>
 8002c3e:	2800      	cmp	r0, #0
 8002c40:	f000 8169 	beq.w	8002f16 <_vfprintf_r+0xc6e>
 8002c44:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002c46:	4a22      	ldr	r2, [pc, #136]	; (8002cd0 <_vfprintf_r+0xa28>)
 8002c48:	f8cb 2000 	str.w	r2, [fp]
 8002c4c:	3301      	adds	r3, #1
 8002c4e:	3401      	adds	r4, #1
 8002c50:	2201      	movs	r2, #1
 8002c52:	2b07      	cmp	r3, #7
 8002c54:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c58:	f8cb 2004 	str.w	r2, [fp, #4]
 8002c5c:	f300 8406 	bgt.w	800346c <_vfprintf_r+0x11c4>
 8002c60:	f10b 0b08 	add.w	fp, fp, #8
 8002c64:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002c66:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002c68:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002c6a:	4293      	cmp	r3, r2
 8002c6c:	db03      	blt.n	8002c76 <_vfprintf_r+0x9ce>
 8002c6e:	f018 0f01 	tst.w	r8, #1
 8002c72:	f43f ad6a 	beq.w	800274a <_vfprintf_r+0x4a2>
 8002c76:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002c78:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002c7a:	f8cb 2000 	str.w	r2, [fp]
 8002c7e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002c80:	f8cb 2004 	str.w	r2, [fp, #4]
 8002c84:	3301      	adds	r3, #1
 8002c86:	4414      	add	r4, r2
 8002c88:	2b07      	cmp	r3, #7
 8002c8a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c8e:	f300 8517 	bgt.w	80036c0 <_vfprintf_r+0x1418>
 8002c92:	f10b 0b08 	add.w	fp, fp, #8
 8002c96:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002c98:	1e5d      	subs	r5, r3, #1
 8002c9a:	2d00      	cmp	r5, #0
 8002c9c:	f77f ad55 	ble.w	800274a <_vfprintf_r+0x4a2>
 8002ca0:	2d10      	cmp	r5, #16
 8002ca2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002ca4:	4b0b      	ldr	r3, [pc, #44]	; (8002cd4 <_vfprintf_r+0xa2c>)
 8002ca6:	f340 82e7 	ble.w	8003278 <_vfprintf_r+0xfd0>
 8002caa:	4619      	mov	r1, r3
 8002cac:	2610      	movs	r6, #16
 8002cae:	4623      	mov	r3, r4
 8002cb0:	9f03      	ldr	r7, [sp, #12]
 8002cb2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002cb6:	460c      	mov	r4, r1
 8002cb8:	e014      	b.n	8002ce4 <_vfprintf_r+0xa3c>
 8002cba:	bf00      	nop
 8002cbc:	7fefffff 	.word	0x7fefffff
 8002cc0:	08006fb0 	.word	0x08006fb0
 8002cc4:	08006fac 	.word	0x08006fac
 8002cc8:	08006fd0 	.word	0x08006fd0
 8002ccc:	08006fbc 	.word	0x08006fbc
 8002cd0:	08006fec 	.word	0x08006fec
 8002cd4:	08007000 	.word	0x08007000
 8002cd8:	f10b 0b08 	add.w	fp, fp, #8
 8002cdc:	3d10      	subs	r5, #16
 8002cde:	2d10      	cmp	r5, #16
 8002ce0:	f340 82c7 	ble.w	8003272 <_vfprintf_r+0xfca>
 8002ce4:	3201      	adds	r2, #1
 8002ce6:	3310      	adds	r3, #16
 8002ce8:	2a07      	cmp	r2, #7
 8002cea:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002cee:	e9cb 4600 	strd	r4, r6, [fp]
 8002cf2:	ddf1      	ble.n	8002cd8 <_vfprintf_r+0xa30>
 8002cf4:	aa2a      	add	r2, sp, #168	; 0xa8
 8002cf6:	4649      	mov	r1, r9
 8002cf8:	4638      	mov	r0, r7
 8002cfa:	f003 fe03 	bl	8006904 <__sprint_r>
 8002cfe:	2800      	cmp	r0, #0
 8002d00:	d14c      	bne.n	8002d9c <_vfprintf_r+0xaf4>
 8002d02:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002d06:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002d0a:	e7e7      	b.n	8002cdc <_vfprintf_r+0xa34>
 8002d0c:	9b06      	ldr	r3, [sp, #24]
 8002d0e:	9a04      	ldr	r2, [sp, #16]
 8002d10:	1a9d      	subs	r5, r3, r2
 8002d12:	2d00      	cmp	r5, #0
 8002d14:	f77f acc9 	ble.w	80026aa <_vfprintf_r+0x402>
 8002d18:	2d10      	cmp	r5, #16
 8002d1a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002d1c:	4bbc      	ldr	r3, [pc, #752]	; (8003010 <_vfprintf_r+0xd68>)
 8002d1e:	dd27      	ble.n	8002d70 <_vfprintf_r+0xac8>
 8002d20:	4659      	mov	r1, fp
 8002d22:	4620      	mov	r0, r4
 8002d24:	46bb      	mov	fp, r7
 8002d26:	461c      	mov	r4, r3
 8002d28:	4637      	mov	r7, r6
 8002d2a:	9e07      	ldr	r6, [sp, #28]
 8002d2c:	e004      	b.n	8002d38 <_vfprintf_r+0xa90>
 8002d2e:	3d10      	subs	r5, #16
 8002d30:	2d10      	cmp	r5, #16
 8002d32:	f101 0108 	add.w	r1, r1, #8
 8002d36:	dd16      	ble.n	8002d66 <_vfprintf_r+0xabe>
 8002d38:	3201      	adds	r2, #1
 8002d3a:	3010      	adds	r0, #16
 8002d3c:	2310      	movs	r3, #16
 8002d3e:	2a07      	cmp	r2, #7
 8002d40:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002d44:	600c      	str	r4, [r1, #0]
 8002d46:	604b      	str	r3, [r1, #4]
 8002d48:	ddf1      	ble.n	8002d2e <_vfprintf_r+0xa86>
 8002d4a:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d4c:	4631      	mov	r1, r6
 8002d4e:	9803      	ldr	r0, [sp, #12]
 8002d50:	f003 fdd8 	bl	8006904 <__sprint_r>
 8002d54:	2800      	cmp	r0, #0
 8002d56:	f040 80a8 	bne.w	8002eaa <_vfprintf_r+0xc02>
 8002d5a:	3d10      	subs	r5, #16
 8002d5c:	2d10      	cmp	r5, #16
 8002d5e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002d62:	a92d      	add	r1, sp, #180	; 0xb4
 8002d64:	dce8      	bgt.n	8002d38 <_vfprintf_r+0xa90>
 8002d66:	463e      	mov	r6, r7
 8002d68:	4623      	mov	r3, r4
 8002d6a:	465f      	mov	r7, fp
 8002d6c:	4604      	mov	r4, r0
 8002d6e:	468b      	mov	fp, r1
 8002d70:	3201      	adds	r2, #1
 8002d72:	442c      	add	r4, r5
 8002d74:	2a07      	cmp	r2, #7
 8002d76:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002d7a:	e9cb 3500 	strd	r3, r5, [fp]
 8002d7e:	f300 8292 	bgt.w	80032a6 <_vfprintf_r+0xffe>
 8002d82:	f10b 0b08 	add.w	fp, fp, #8
 8002d86:	e490      	b.n	80026aa <_vfprintf_r+0x402>
 8002d88:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d8a:	9907      	ldr	r1, [sp, #28]
 8002d8c:	9803      	ldr	r0, [sp, #12]
 8002d8e:	f003 fdb9 	bl	8006904 <__sprint_r>
 8002d92:	2800      	cmp	r0, #0
 8002d94:	f43f ad23 	beq.w	80027de <_vfprintf_r+0x536>
 8002d98:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002d9c:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002d9e:	b111      	cbz	r1, 8002da6 <_vfprintf_r+0xafe>
 8002da0:	9803      	ldr	r0, [sp, #12]
 8002da2:	f002 f9c1 	bl	8005128 <_free_r>
 8002da6:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002daa:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002dae:	07d0      	lsls	r0, r2, #31
 8002db0:	d402      	bmi.n	8002db8 <_vfprintf_r+0xb10>
 8002db2:	0599      	lsls	r1, r3, #22
 8002db4:	f140 81d0 	bpl.w	8003158 <_vfprintf_r+0xeb0>
 8002db8:	065a      	lsls	r2, r3, #25
 8002dba:	f53f ab65 	bmi.w	8002488 <_vfprintf_r+0x1e0>
 8002dbe:	9805      	ldr	r0, [sp, #20]
 8002dc0:	b057      	add	sp, #348	; 0x15c
 8002dc2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002dc6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002dc8:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002dca:	2a01      	cmp	r2, #1
 8002dcc:	f104 0401 	add.w	r4, r4, #1
 8002dd0:	f103 0501 	add.w	r5, r3, #1
 8002dd4:	f10b 0608 	add.w	r6, fp, #8
 8002dd8:	f340 811c 	ble.w	8003014 <_vfprintf_r+0xd6c>
 8002ddc:	2301      	movs	r3, #1
 8002dde:	2d07      	cmp	r5, #7
 8002de0:	f8cb 7000 	str.w	r7, [fp]
 8002de4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002de8:	f8cb 3004 	str.w	r3, [fp, #4]
 8002dec:	f300 81bb 	bgt.w	8003166 <_vfprintf_r+0xebe>
 8002df0:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002df2:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002df4:	1c69      	adds	r1, r5, #1
 8002df6:	441c      	add	r4, r3
 8002df8:	2907      	cmp	r1, #7
 8002dfa:	910b      	str	r1, [sp, #44]	; 0x2c
 8002dfc:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8002e00:	e9c6 2300 	strd	r2, r3, [r6]
 8002e04:	f300 81bb 	bgt.w	800317e <_vfprintf_r+0xed6>
 8002e08:	3608      	adds	r6, #8
 8002e0a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002e0c:	1c53      	adds	r3, r2, #1
 8002e0e:	461d      	mov	r5, r3
 8002e10:	9509      	str	r5, [sp, #36]	; 0x24
 8002e12:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8002e14:	930e      	str	r3, [sp, #56]	; 0x38
 8002e16:	2200      	movs	r2, #0
 8002e18:	2300      	movs	r3, #0
 8002e1a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002e1e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8002e22:	f106 0b08 	add.w	fp, r6, #8
 8002e26:	f7fe f8ef 	bl	8001008 <__aeabi_dcmpeq>
 8002e2a:	2800      	cmp	r0, #0
 8002e2c:	f040 80c2 	bne.w	8002fb4 <_vfprintf_r+0xd0c>
 8002e30:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002e32:	f8c6 9004 	str.w	r9, [r6, #4]
 8002e36:	3701      	adds	r7, #1
 8002e38:	444c      	add	r4, r9
 8002e3a:	2d07      	cmp	r5, #7
 8002e3c:	6037      	str	r7, [r6, #0]
 8002e3e:	942c      	str	r4, [sp, #176]	; 0xb0
 8002e40:	952b      	str	r5, [sp, #172]	; 0xac
 8002e42:	f300 80f9 	bgt.w	8003038 <_vfprintf_r+0xd90>
 8002e46:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002e48:	f106 0310 	add.w	r3, r6, #16
 8002e4c:	3202      	adds	r2, #2
 8002e4e:	465e      	mov	r6, fp
 8002e50:	9209      	str	r2, [sp, #36]	; 0x24
 8002e52:	469b      	mov	fp, r3
 8002e54:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8002e56:	6072      	str	r2, [r6, #4]
 8002e58:	4414      	add	r4, r2
 8002e5a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002e5c:	942c      	str	r4, [sp, #176]	; 0xb0
 8002e5e:	ab26      	add	r3, sp, #152	; 0x98
 8002e60:	2a07      	cmp	r2, #7
 8002e62:	922b      	str	r2, [sp, #172]	; 0xac
 8002e64:	6033      	str	r3, [r6, #0]
 8002e66:	f77f ac70 	ble.w	800274a <_vfprintf_r+0x4a2>
 8002e6a:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e6c:	9907      	ldr	r1, [sp, #28]
 8002e6e:	9803      	ldr	r0, [sp, #12]
 8002e70:	f003 fd48 	bl	8006904 <__sprint_r>
 8002e74:	2800      	cmp	r0, #0
 8002e76:	d18f      	bne.n	8002d98 <_vfprintf_r+0xaf0>
 8002e78:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002e7a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002e7e:	e464      	b.n	800274a <_vfprintf_r+0x4a2>
 8002e80:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8002e82:	af56      	add	r7, sp, #344	; 0x158
 8002e84:	0923      	lsrs	r3, r4, #4
 8002e86:	f004 010f 	and.w	r1, r4, #15
 8002e8a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8002e8e:	092a      	lsrs	r2, r5, #4
 8002e90:	461c      	mov	r4, r3
 8002e92:	4615      	mov	r5, r2
 8002e94:	5c43      	ldrb	r3, [r0, r1]
 8002e96:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002e9a:	ea54 0305 	orrs.w	r3, r4, r5
 8002e9e:	d1f1      	bne.n	8002e84 <_vfprintf_r+0xbdc>
 8002ea0:	9b04      	ldr	r3, [sp, #16]
 8002ea2:	1bdb      	subs	r3, r3, r7
 8002ea4:	9309      	str	r3, [sp, #36]	; 0x24
 8002ea6:	f7ff bb80 	b.w	80025aa <_vfprintf_r+0x302>
 8002eaa:	46b1      	mov	r9, r6
 8002eac:	e776      	b.n	8002d9c <_vfprintf_r+0xaf4>
 8002eae:	aa2a      	add	r2, sp, #168	; 0xa8
 8002eb0:	9907      	ldr	r1, [sp, #28]
 8002eb2:	9803      	ldr	r0, [sp, #12]
 8002eb4:	f003 fd26 	bl	8006904 <__sprint_r>
 8002eb8:	2800      	cmp	r0, #0
 8002eba:	f47f af6d 	bne.w	8002d98 <_vfprintf_r+0xaf0>
 8002ebe:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002ec0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002ec4:	f7ff bbdd 	b.w	8002682 <_vfprintf_r+0x3da>
 8002ec8:	aa2a      	add	r2, sp, #168	; 0xa8
 8002eca:	9907      	ldr	r1, [sp, #28]
 8002ecc:	9803      	ldr	r0, [sp, #12]
 8002ece:	f003 fd19 	bl	8006904 <__sprint_r>
 8002ed2:	2800      	cmp	r0, #0
 8002ed4:	f47f af60 	bne.w	8002d98 <_vfprintf_r+0xaf0>
 8002ed8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002eda:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002ede:	f7ff bbe0 	b.w	80026a2 <_vfprintf_r+0x3fa>
 8002ee2:	4698      	mov	r8, r3
 8002ee4:	2d00      	cmp	r5, #0
 8002ee6:	bf08      	it	eq
 8002ee8:	2c0a      	cmpeq	r4, #10
 8002eea:	f080 8170 	bcs.w	80031ce <_vfprintf_r+0xf26>
 8002eee:	af56      	add	r7, sp, #344	; 0x158
 8002ef0:	3430      	adds	r4, #48	; 0x30
 8002ef2:	2301      	movs	r3, #1
 8002ef4:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8002ef8:	9309      	str	r3, [sp, #36]	; 0x24
 8002efa:	f7ff bb56 	b.w	80025aa <_vfprintf_r+0x302>
 8002efe:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f00:	9907      	ldr	r1, [sp, #28]
 8002f02:	9803      	ldr	r0, [sp, #12]
 8002f04:	f003 fcfe 	bl	8006904 <__sprint_r>
 8002f08:	2800      	cmp	r0, #0
 8002f0a:	f47f af45 	bne.w	8002d98 <_vfprintf_r+0xaf0>
 8002f0e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f10:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f14:	e406      	b.n	8002724 <_vfprintf_r+0x47c>
 8002f16:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002f18:	2b00      	cmp	r3, #0
 8002f1a:	f340 8273 	ble.w	8003404 <_vfprintf_r+0x115c>
 8002f1e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8002f22:	4293      	cmp	r3, r2
 8002f24:	bfa8      	it	ge
 8002f26:	4613      	movge	r3, r2
 8002f28:	2b00      	cmp	r3, #0
 8002f2a:	461d      	mov	r5, r3
 8002f2c:	dd0d      	ble.n	8002f4a <_vfprintf_r+0xca2>
 8002f2e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f30:	f8cb 7000 	str.w	r7, [fp]
 8002f34:	3301      	adds	r3, #1
 8002f36:	442c      	add	r4, r5
 8002f38:	2b07      	cmp	r3, #7
 8002f3a:	942c      	str	r4, [sp, #176]	; 0xb0
 8002f3c:	f8cb 5004 	str.w	r5, [fp, #4]
 8002f40:	932b      	str	r3, [sp, #172]	; 0xac
 8002f42:	f300 82c1 	bgt.w	80034c8 <_vfprintf_r+0x1220>
 8002f46:	f10b 0b08 	add.w	fp, fp, #8
 8002f4a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002f4c:	2d00      	cmp	r5, #0
 8002f4e:	bfa8      	it	ge
 8002f50:	1b5b      	subge	r3, r3, r5
 8002f52:	2b00      	cmp	r3, #0
 8002f54:	461d      	mov	r5, r3
 8002f56:	f340 8099 	ble.w	800308c <_vfprintf_r+0xde4>
 8002f5a:	2d10      	cmp	r5, #16
 8002f5c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002f5e:	4b2c      	ldr	r3, [pc, #176]	; (8003010 <_vfprintf_r+0xd68>)
 8002f60:	f340 83db 	ble.w	800371a <_vfprintf_r+0x1472>
 8002f64:	4618      	mov	r0, r3
 8002f66:	4621      	mov	r1, r4
 8002f68:	465b      	mov	r3, fp
 8002f6a:	2610      	movs	r6, #16
 8002f6c:	46bb      	mov	fp, r7
 8002f6e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8002f72:	9c07      	ldr	r4, [sp, #28]
 8002f74:	4607      	mov	r7, r0
 8002f76:	e004      	b.n	8002f82 <_vfprintf_r+0xcda>
 8002f78:	3308      	adds	r3, #8
 8002f7a:	3d10      	subs	r5, #16
 8002f7c:	2d10      	cmp	r5, #16
 8002f7e:	f340 83c7 	ble.w	8003710 <_vfprintf_r+0x1468>
 8002f82:	3201      	adds	r2, #1
 8002f84:	3110      	adds	r1, #16
 8002f86:	2a07      	cmp	r2, #7
 8002f88:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8002f8c:	e9c3 7600 	strd	r7, r6, [r3]
 8002f90:	ddf2      	ble.n	8002f78 <_vfprintf_r+0xcd0>
 8002f92:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f94:	4621      	mov	r1, r4
 8002f96:	4648      	mov	r0, r9
 8002f98:	f003 fcb4 	bl	8006904 <__sprint_r>
 8002f9c:	2800      	cmp	r0, #0
 8002f9e:	f040 84a5 	bne.w	80038ec <_vfprintf_r+0x1644>
 8002fa2:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8002fa6:	ab2d      	add	r3, sp, #180	; 0xb4
 8002fa8:	e7e7      	b.n	8002f7a <_vfprintf_r+0xcd2>
 8002faa:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8002fae:	af56      	add	r7, sp, #344	; 0x158
 8002fb0:	f7ff bafb 	b.w	80025aa <_vfprintf_r+0x302>
 8002fb4:	f1b9 0f00 	cmp.w	r9, #0
 8002fb8:	f77f af4c 	ble.w	8002e54 <_vfprintf_r+0xbac>
 8002fbc:	f1b9 0f10 	cmp.w	r9, #16
 8002fc0:	4b13      	ldr	r3, [pc, #76]	; (8003010 <_vfprintf_r+0xd68>)
 8002fc2:	f340 8659 	ble.w	8003c78 <_vfprintf_r+0x19d0>
 8002fc6:	4619      	mov	r1, r3
 8002fc8:	4622      	mov	r2, r4
 8002fca:	4633      	mov	r3, r6
 8002fcc:	2710      	movs	r7, #16
 8002fce:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8002fd2:	9c07      	ldr	r4, [sp, #28]
 8002fd4:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8002fd6:	460e      	mov	r6, r1
 8002fd8:	e007      	b.n	8002fea <_vfprintf_r+0xd42>
 8002fda:	3308      	adds	r3, #8
 8002fdc:	f1a9 0910 	sub.w	r9, r9, #16
 8002fe0:	f1b9 0f10 	cmp.w	r9, #16
 8002fe4:	f340 8353 	ble.w	800368e <_vfprintf_r+0x13e6>
 8002fe8:	3501      	adds	r5, #1
 8002fea:	3210      	adds	r2, #16
 8002fec:	2d07      	cmp	r5, #7
 8002fee:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8002ff2:	e9c3 6700 	strd	r6, r7, [r3]
 8002ff6:	ddf0      	ble.n	8002fda <_vfprintf_r+0xd32>
 8002ff8:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ffa:	4621      	mov	r1, r4
 8002ffc:	4658      	mov	r0, fp
 8002ffe:	f003 fc81 	bl	8006904 <__sprint_r>
 8003002:	2800      	cmp	r0, #0
 8003004:	f040 8472 	bne.w	80038ec <_vfprintf_r+0x1644>
 8003008:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800300c:	ab2d      	add	r3, sp, #180	; 0xb4
 800300e:	e7e5      	b.n	8002fdc <_vfprintf_r+0xd34>
 8003010:	08007000 	.word	0x08007000
 8003014:	f018 0f01 	tst.w	r8, #1
 8003018:	f47f aee0 	bne.w	8002ddc <_vfprintf_r+0xb34>
 800301c:	2201      	movs	r2, #1
 800301e:	2d07      	cmp	r5, #7
 8003020:	f8cb 7000 	str.w	r7, [fp]
 8003024:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003028:	f8cb 2004 	str.w	r2, [fp, #4]
 800302c:	dc04      	bgt.n	8003038 <_vfprintf_r+0xd90>
 800302e:	3302      	adds	r3, #2
 8003030:	9309      	str	r3, [sp, #36]	; 0x24
 8003032:	f10b 0b10 	add.w	fp, fp, #16
 8003036:	e70d      	b.n	8002e54 <_vfprintf_r+0xbac>
 8003038:	aa2a      	add	r2, sp, #168	; 0xa8
 800303a:	9907      	ldr	r1, [sp, #28]
 800303c:	9803      	ldr	r0, [sp, #12]
 800303e:	f003 fc61 	bl	8006904 <__sprint_r>
 8003042:	2800      	cmp	r0, #0
 8003044:	f47f aea8 	bne.w	8002d98 <_vfprintf_r+0xaf0>
 8003048:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800304c:	3301      	adds	r3, #1
 800304e:	9309      	str	r3, [sp, #36]	; 0x24
 8003050:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003054:	ae2d      	add	r6, sp, #180	; 0xb4
 8003056:	e6fd      	b.n	8002e54 <_vfprintf_r+0xbac>
 8003058:	aa2a      	add	r2, sp, #168	; 0xa8
 800305a:	9907      	ldr	r1, [sp, #28]
 800305c:	9803      	ldr	r0, [sp, #12]
 800305e:	f003 fc51 	bl	8006904 <__sprint_r>
 8003062:	2800      	cmp	r0, #0
 8003064:	f47f ae98 	bne.w	8002d98 <_vfprintf_r+0xaf0>
 8003068:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800306c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800306e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003072:	f7ff baf6 	b.w	8002662 <_vfprintf_r+0x3ba>
 8003076:	aa2a      	add	r2, sp, #168	; 0xa8
 8003078:	9907      	ldr	r1, [sp, #28]
 800307a:	9803      	ldr	r0, [sp, #12]
 800307c:	f003 fc42 	bl	8006904 <__sprint_r>
 8003080:	2800      	cmp	r0, #0
 8003082:	f47f ae89 	bne.w	8002d98 <_vfprintf_r+0xaf0>
 8003086:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003088:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800308c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800308e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003092:	443b      	add	r3, r7
 8003094:	4699      	mov	r9, r3
 8003096:	f040 8357 	bne.w	8003748 <_vfprintf_r+0x14a0>
 800309a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800309c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800309e:	4293      	cmp	r3, r2
 80030a0:	db49      	blt.n	8003136 <_vfprintf_r+0xe8e>
 80030a2:	f018 0f01 	tst.w	r8, #1
 80030a6:	d146      	bne.n	8003136 <_vfprintf_r+0xe8e>
 80030a8:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80030aa:	18bd      	adds	r5, r7, r2
 80030ac:	eba5 0509 	sub.w	r5, r5, r9
 80030b0:	1ad3      	subs	r3, r2, r3
 80030b2:	429d      	cmp	r5, r3
 80030b4:	bfa8      	it	ge
 80030b6:	461d      	movge	r5, r3
 80030b8:	2d00      	cmp	r5, #0
 80030ba:	dd0d      	ble.n	80030d8 <_vfprintf_r+0xe30>
 80030bc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80030be:	f8cb 9000 	str.w	r9, [fp]
 80030c2:	3201      	adds	r2, #1
 80030c4:	442c      	add	r4, r5
 80030c6:	2a07      	cmp	r2, #7
 80030c8:	942c      	str	r4, [sp, #176]	; 0xb0
 80030ca:	f8cb 5004 	str.w	r5, [fp, #4]
 80030ce:	922b      	str	r2, [sp, #172]	; 0xac
 80030d0:	f300 8462 	bgt.w	8003998 <_vfprintf_r+0x16f0>
 80030d4:	f10b 0b08 	add.w	fp, fp, #8
 80030d8:	2d00      	cmp	r5, #0
 80030da:	bfac      	ite	ge
 80030dc:	1b5d      	subge	r5, r3, r5
 80030de:	461d      	movlt	r5, r3
 80030e0:	2d00      	cmp	r5, #0
 80030e2:	f77f ab32 	ble.w	800274a <_vfprintf_r+0x4a2>
 80030e6:	2d10      	cmp	r5, #16
 80030e8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80030ea:	4bc5      	ldr	r3, [pc, #788]	; (8003400 <_vfprintf_r+0x1158>)
 80030ec:	f340 80c4 	ble.w	8003278 <_vfprintf_r+0xfd0>
 80030f0:	4619      	mov	r1, r3
 80030f2:	2610      	movs	r6, #16
 80030f4:	4623      	mov	r3, r4
 80030f6:	9f03      	ldr	r7, [sp, #12]
 80030f8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80030fc:	460c      	mov	r4, r1
 80030fe:	e005      	b.n	800310c <_vfprintf_r+0xe64>
 8003100:	f10b 0b08 	add.w	fp, fp, #8
 8003104:	3d10      	subs	r5, #16
 8003106:	2d10      	cmp	r5, #16
 8003108:	f340 80b3 	ble.w	8003272 <_vfprintf_r+0xfca>
 800310c:	3201      	adds	r2, #1
 800310e:	3310      	adds	r3, #16
 8003110:	2a07      	cmp	r2, #7
 8003112:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003116:	e9cb 4600 	strd	r4, r6, [fp]
 800311a:	ddf1      	ble.n	8003100 <_vfprintf_r+0xe58>
 800311c:	aa2a      	add	r2, sp, #168	; 0xa8
 800311e:	4649      	mov	r1, r9
 8003120:	4638      	mov	r0, r7
 8003122:	f003 fbef 	bl	8006904 <__sprint_r>
 8003126:	2800      	cmp	r0, #0
 8003128:	f47f ae38 	bne.w	8002d9c <_vfprintf_r+0xaf4>
 800312c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003130:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003134:	e7e6      	b.n	8003104 <_vfprintf_r+0xe5c>
 8003136:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003138:	9916      	ldr	r1, [sp, #88]	; 0x58
 800313a:	f8cb 1000 	str.w	r1, [fp]
 800313e:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003140:	f8cb 1004 	str.w	r1, [fp, #4]
 8003144:	3201      	adds	r2, #1
 8003146:	440c      	add	r4, r1
 8003148:	2a07      	cmp	r2, #7
 800314a:	942c      	str	r4, [sp, #176]	; 0xb0
 800314c:	922b      	str	r2, [sp, #172]	; 0xac
 800314e:	f300 828c 	bgt.w	800366a <_vfprintf_r+0x13c2>
 8003152:	f10b 0b08 	add.w	fp, fp, #8
 8003156:	e7a7      	b.n	80030a8 <_vfprintf_r+0xe00>
 8003158:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800315c:	f002 fa94 	bl	8005688 <__retarget_lock_release_recursive>
 8003160:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003164:	e628      	b.n	8002db8 <_vfprintf_r+0xb10>
 8003166:	aa2a      	add	r2, sp, #168	; 0xa8
 8003168:	9907      	ldr	r1, [sp, #28]
 800316a:	9803      	ldr	r0, [sp, #12]
 800316c:	f003 fbca 	bl	8006904 <__sprint_r>
 8003170:	2800      	cmp	r0, #0
 8003172:	f47f ae11 	bne.w	8002d98 <_vfprintf_r+0xaf0>
 8003176:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800317a:	ae2d      	add	r6, sp, #180	; 0xb4
 800317c:	e638      	b.n	8002df0 <_vfprintf_r+0xb48>
 800317e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003180:	9907      	ldr	r1, [sp, #28]
 8003182:	9803      	ldr	r0, [sp, #12]
 8003184:	f003 fbbe 	bl	8006904 <__sprint_r>
 8003188:	2800      	cmp	r0, #0
 800318a:	f47f ae05 	bne.w	8002d98 <_vfprintf_r+0xaf0>
 800318e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003192:	ae2d      	add	r6, sp, #180	; 0xb4
 8003194:	930b      	str	r3, [sp, #44]	; 0x2c
 8003196:	e638      	b.n	8002e0a <_vfprintf_r+0xb62>
 8003198:	6814      	ldr	r4, [r2, #0]
 800319a:	9308      	str	r3, [sp, #32]
 800319c:	2500      	movs	r5, #0
 800319e:	f7ff bb95 	b.w	80028cc <_vfprintf_r+0x624>
 80031a2:	6814      	ldr	r4, [r2, #0]
 80031a4:	9308      	str	r3, [sp, #32]
 80031a6:	2500      	movs	r5, #0
 80031a8:	f7ff b9ae 	b.w	8002508 <_vfprintf_r+0x260>
 80031ac:	680c      	ldr	r4, [r1, #0]
 80031ae:	9208      	str	r2, [sp, #32]
 80031b0:	17e5      	asrs	r5, r4, #31
 80031b2:	4620      	mov	r0, r4
 80031b4:	4629      	mov	r1, r5
 80031b6:	f7ff b9d2 	b.w	800255e <_vfprintf_r+0x2b6>
 80031ba:	6814      	ldr	r4, [r2, #0]
 80031bc:	9108      	str	r1, [sp, #32]
 80031be:	2201      	movs	r2, #1
 80031c0:	2500      	movs	r5, #0
 80031c2:	f7ff bb32 	b.w	800282a <_vfprintf_r+0x582>
 80031c6:	2a01      	cmp	r2, #1
 80031c8:	f47f ab3c 	bne.w	8002844 <_vfprintf_r+0x59c>
 80031cc:	e68f      	b.n	8002eee <_vfprintf_r+0xc46>
 80031ce:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 80031d2:	2200      	movs	r2, #0
 80031d4:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80031d8:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80031dc:	af56      	add	r7, sp, #344	; 0x158
 80031de:	4692      	mov	sl, r2
 80031e0:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 80031e4:	461e      	mov	r6, r3
 80031e6:	e00a      	b.n	80031fe <_vfprintf_r+0xf56>
 80031e8:	2300      	movs	r3, #0
 80031ea:	4620      	mov	r0, r4
 80031ec:	4629      	mov	r1, r5
 80031ee:	220a      	movs	r2, #10
 80031f0:	f7fd f806 	bl	8000200 <__aeabi_uldivmod>
 80031f4:	4604      	mov	r4, r0
 80031f6:	460d      	mov	r5, r1
 80031f8:	ea54 0305 	orrs.w	r3, r4, r5
 80031fc:	d029      	beq.n	8003252 <_vfprintf_r+0xfaa>
 80031fe:	220a      	movs	r2, #10
 8003200:	2300      	movs	r3, #0
 8003202:	4620      	mov	r0, r4
 8003204:	4629      	mov	r1, r5
 8003206:	f7fc fffb 	bl	8000200 <__aeabi_uldivmod>
 800320a:	3230      	adds	r2, #48	; 0x30
 800320c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003210:	f10a 0a01 	add.w	sl, sl, #1
 8003214:	3f01      	subs	r7, #1
 8003216:	2e00      	cmp	r6, #0
 8003218:	d0e6      	beq.n	80031e8 <_vfprintf_r+0xf40>
 800321a:	f898 3000 	ldrb.w	r3, [r8]
 800321e:	459a      	cmp	sl, r3
 8003220:	d1e2      	bne.n	80031e8 <_vfprintf_r+0xf40>
 8003222:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003226:	d0df      	beq.n	80031e8 <_vfprintf_r+0xf40>
 8003228:	2d00      	cmp	r5, #0
 800322a:	bf08      	it	eq
 800322c:	2c0a      	cmpeq	r4, #10
 800322e:	d3db      	bcc.n	80031e8 <_vfprintf_r+0xf40>
 8003230:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003232:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003234:	1aff      	subs	r7, r7, r3
 8003236:	461a      	mov	r2, r3
 8003238:	4638      	mov	r0, r7
 800323a:	f003 faf5 	bl	8006828 <strncpy>
 800323e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003242:	2b00      	cmp	r3, #0
 8003244:	f000 8496 	beq.w	8003b74 <_vfprintf_r+0x18cc>
 8003248:	f108 0801 	add.w	r8, r8, #1
 800324c:	f04f 0a00 	mov.w	sl, #0
 8003250:	e7ca      	b.n	80031e8 <_vfprintf_r+0xf40>
 8003252:	9b04      	ldr	r3, [sp, #16]
 8003254:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003258:	1bdb      	subs	r3, r3, r7
 800325a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 800325e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003260:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003264:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003268:	9309      	str	r3, [sp, #36]	; 0x24
 800326a:	f7ff b99e 	b.w	80025aa <_vfprintf_r+0x302>
 800326e:	46c1      	mov	r9, r8
 8003270:	e594      	b.n	8002d9c <_vfprintf_r+0xaf4>
 8003272:	4621      	mov	r1, r4
 8003274:	461c      	mov	r4, r3
 8003276:	460b      	mov	r3, r1
 8003278:	3201      	adds	r2, #1
 800327a:	442c      	add	r4, r5
 800327c:	2a07      	cmp	r2, #7
 800327e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003282:	e9cb 3500 	strd	r3, r5, [fp]
 8003286:	f77f aa5e 	ble.w	8002746 <_vfprintf_r+0x49e>
 800328a:	e5ee      	b.n	8002e6a <_vfprintf_r+0xbc2>
 800328c:	f018 0f10 	tst.w	r8, #16
 8003290:	f040 80f8 	bne.w	8003484 <_vfprintf_r+0x11dc>
 8003294:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003298:	f000 8351 	beq.w	800393e <_vfprintf_r+0x1696>
 800329c:	9a05      	ldr	r2, [sp, #20]
 800329e:	801a      	strh	r2, [r3, #0]
 80032a0:	4657      	mov	r7, sl
 80032a2:	f7ff baa7 	b.w	80027f4 <_vfprintf_r+0x54c>
 80032a6:	aa2a      	add	r2, sp, #168	; 0xa8
 80032a8:	9907      	ldr	r1, [sp, #28]
 80032aa:	9803      	ldr	r0, [sp, #12]
 80032ac:	f003 fb2a 	bl	8006904 <__sprint_r>
 80032b0:	2800      	cmp	r0, #0
 80032b2:	f47f ad71 	bne.w	8002d98 <_vfprintf_r+0xaf0>
 80032b6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80032b8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032bc:	f7ff b9f5 	b.w	80026aa <_vfprintf_r+0x402>
 80032c0:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80032c4:	4602      	mov	r2, r0
 80032c6:	460b      	mov	r3, r1
 80032c8:	f7fd fed0 	bl	800106c <__aeabi_dcmpun>
 80032cc:	2800      	cmp	r0, #0
 80032ce:	f040 8491 	bne.w	8003bf4 <_vfprintf_r+0x194c>
 80032d2:	2e61      	cmp	r6, #97	; 0x61
 80032d4:	f000 8111 	beq.w	80034fa <_vfprintf_r+0x1252>
 80032d8:	2e41      	cmp	r6, #65	; 0x41
 80032da:	f000 8377 	beq.w	80039cc <_vfprintf_r+0x1724>
 80032de:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80032e2:	f026 0220 	bic.w	r2, r6, #32
 80032e6:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80032ea:	930e      	str	r3, [sp, #56]	; 0x38
 80032ec:	9204      	str	r2, [sp, #16]
 80032ee:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80032f0:	f000 842d 	beq.w	8003b4e <_vfprintf_r+0x18a6>
 80032f4:	2a47      	cmp	r2, #71	; 0x47
 80032f6:	f000 8424 	beq.w	8003b42 <_vfprintf_r+0x189a>
 80032fa:	2b00      	cmp	r3, #0
 80032fc:	f2c0 82f9 	blt.w	80038f2 <_vfprintf_r+0x164a>
 8003300:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003304:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003308:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800330c:	2e66      	cmp	r6, #102	; 0x66
 800330e:	f000 83eb 	beq.w	8003ae8 <_vfprintf_r+0x1840>
 8003312:	2e46      	cmp	r6, #70	; 0x46
 8003314:	f000 847e 	beq.w	8003c14 <_vfprintf_r+0x196c>
 8003318:	9b04      	ldr	r3, [sp, #16]
 800331a:	9803      	ldr	r0, [sp, #12]
 800331c:	2b45      	cmp	r3, #69	; 0x45
 800331e:	bf0c      	ite	eq
 8003320:	f109 0501 	addeq.w	r5, r9, #1
 8003324:	464d      	movne	r5, r9
 8003326:	aa28      	add	r2, sp, #160	; 0xa0
 8003328:	ab25      	add	r3, sp, #148	; 0x94
 800332a:	e9cd 3200 	strd	r3, r2, [sp]
 800332e:	2102      	movs	r1, #2
 8003330:	ab24      	add	r3, sp, #144	; 0x90
 8003332:	462a      	mov	r2, r5
 8003334:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003338:	f000 fe3e 	bl	8003fb8 <_dtoa_r>
 800333c:	2e67      	cmp	r6, #103	; 0x67
 800333e:	4607      	mov	r7, r0
 8003340:	f040 849c 	bne.w	8003c7c <_vfprintf_r+0x19d4>
 8003344:	f018 0f01 	tst.w	r8, #1
 8003348:	f040 83f9 	bne.w	8003b3e <_vfprintf_r+0x1896>
 800334c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 800334e:	4640      	mov	r0, r8
 8003350:	1bdb      	subs	r3, r3, r7
 8003352:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003356:	9310      	str	r3, [sp, #64]	; 0x40
 8003358:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800335a:	9311      	str	r3, [sp, #68]	; 0x44
 800335c:	9b04      	ldr	r3, [sp, #16]
 800335e:	2b47      	cmp	r3, #71	; 0x47
 8003360:	f000 81e7 	beq.w	8003732 <_vfprintf_r+0x148a>
 8003364:	9b04      	ldr	r3, [sp, #16]
 8003366:	2b46      	cmp	r3, #70	; 0x46
 8003368:	f000 8300 	beq.w	800396c <_vfprintf_r+0x16c4>
 800336c:	9904      	ldr	r1, [sp, #16]
 800336e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003370:	b2f2      	uxtb	r2, r6
 8003372:	2941      	cmp	r1, #65	; 0x41
 8003374:	bf08      	it	eq
 8003376:	320f      	addeq	r2, #15
 8003378:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 800337c:	bf06      	itte	eq
 800337e:	b2d2      	uxtbeq	r2, r2
 8003380:	2101      	moveq	r1, #1
 8003382:	2100      	movne	r1, #0
 8003384:	2b00      	cmp	r3, #0
 8003386:	9324      	str	r3, [sp, #144]	; 0x90
 8003388:	bfb8      	it	lt
 800338a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 800338c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003390:	bfba      	itte	lt
 8003392:	f1c3 0301 	rsblt	r3, r3, #1
 8003396:	222d      	movlt	r2, #45	; 0x2d
 8003398:	222b      	movge	r2, #43	; 0x2b
 800339a:	2b09      	cmp	r3, #9
 800339c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 80033a0:	f300 83f9 	bgt.w	8003b96 <_vfprintf_r+0x18ee>
 80033a4:	2900      	cmp	r1, #0
 80033a6:	f040 8487 	bne.w	8003cb8 <_vfprintf_r+0x1a10>
 80033aa:	2230      	movs	r2, #48	; 0x30
 80033ac:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 80033b0:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 80033b4:	3330      	adds	r3, #48	; 0x30
 80033b6:	7013      	strb	r3, [r2, #0]
 80033b8:	1c53      	adds	r3, r2, #1
 80033ba:	aa26      	add	r2, sp, #152	; 0x98
 80033bc:	1a9b      	subs	r3, r3, r2
 80033be:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80033c0:	9319      	str	r3, [sp, #100]	; 0x64
 80033c2:	2a01      	cmp	r2, #1
 80033c4:	4413      	add	r3, r2
 80033c6:	9309      	str	r3, [sp, #36]	; 0x24
 80033c8:	f340 8442 	ble.w	8003c50 <_vfprintf_r+0x19a8>
 80033cc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80033ce:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80033d0:	4413      	add	r3, r2
 80033d2:	9309      	str	r3, [sp, #36]	; 0x24
 80033d4:	2300      	movs	r3, #0
 80033d6:	930f      	str	r3, [sp, #60]	; 0x3c
 80033d8:	9314      	str	r3, [sp, #80]	; 0x50
 80033da:	9311      	str	r3, [sp, #68]	; 0x44
 80033dc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80033de:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 80033e2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80033e6:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 80033ea:	9304      	str	r3, [sp, #16]
 80033ec:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80033ee:	2b00      	cmp	r3, #0
 80033f0:	f040 8275 	bne.w	80038de <_vfprintf_r+0x1636>
 80033f4:	4699      	mov	r9, r3
 80033f6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80033fa:	f7ff b8e2 	b.w	80025c2 <_vfprintf_r+0x31a>
 80033fe:	bf00      	nop
 8003400:	08007000 	.word	0x08007000
 8003404:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003406:	49bd      	ldr	r1, [pc, #756]	; (80036fc <_vfprintf_r+0x1454>)
 8003408:	f8cb 1000 	str.w	r1, [fp]
 800340c:	3201      	adds	r2, #1
 800340e:	3401      	adds	r4, #1
 8003410:	2101      	movs	r1, #1
 8003412:	2a07      	cmp	r2, #7
 8003414:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003418:	f8cb 1004 	str.w	r1, [fp, #4]
 800341c:	dc60      	bgt.n	80034e0 <_vfprintf_r+0x1238>
 800341e:	f10b 0b08 	add.w	fp, fp, #8
 8003422:	b92b      	cbnz	r3, 8003430 <_vfprintf_r+0x1188>
 8003424:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003426:	b91a      	cbnz	r2, 8003430 <_vfprintf_r+0x1188>
 8003428:	f018 0f01 	tst.w	r8, #1
 800342c:	f43f a98d 	beq.w	800274a <_vfprintf_r+0x4a2>
 8003430:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003432:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003434:	f8cb 1000 	str.w	r1, [fp]
 8003438:	9915      	ldr	r1, [sp, #84]	; 0x54
 800343a:	f8cb 1004 	str.w	r1, [fp, #4]
 800343e:	3201      	adds	r2, #1
 8003440:	440c      	add	r4, r1
 8003442:	2a07      	cmp	r2, #7
 8003444:	942c      	str	r4, [sp, #176]	; 0xb0
 8003446:	922b      	str	r2, [sp, #172]	; 0xac
 8003448:	f300 8282 	bgt.w	8003950 <_vfprintf_r+0x16a8>
 800344c:	f10b 0b08 	add.w	fp, fp, #8
 8003450:	2b00      	cmp	r3, #0
 8003452:	f2c0 82e7 	blt.w	8003a24 <_vfprintf_r+0x177c>
 8003456:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003458:	3201      	adds	r2, #1
 800345a:	441c      	add	r4, r3
 800345c:	2a07      	cmp	r2, #7
 800345e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003462:	e9cb 7300 	strd	r7, r3, [fp]
 8003466:	f77f a96e 	ble.w	8002746 <_vfprintf_r+0x49e>
 800346a:	e4fe      	b.n	8002e6a <_vfprintf_r+0xbc2>
 800346c:	aa2a      	add	r2, sp, #168	; 0xa8
 800346e:	9907      	ldr	r1, [sp, #28]
 8003470:	9803      	ldr	r0, [sp, #12]
 8003472:	f003 fa47 	bl	8006904 <__sprint_r>
 8003476:	2800      	cmp	r0, #0
 8003478:	f47f ac8e 	bne.w	8002d98 <_vfprintf_r+0xaf0>
 800347c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003480:	f7ff bbf0 	b.w	8002c64 <_vfprintf_r+0x9bc>
 8003484:	9a05      	ldr	r2, [sp, #20]
 8003486:	601a      	str	r2, [r3, #0]
 8003488:	4657      	mov	r7, sl
 800348a:	f7ff b9b3 	b.w	80027f4 <_vfprintf_r+0x54c>
 800348e:	8814      	ldrh	r4, [r2, #0]
 8003490:	9108      	str	r1, [sp, #32]
 8003492:	2500      	movs	r5, #0
 8003494:	2201      	movs	r2, #1
 8003496:	f7ff b9c8 	b.w	800282a <_vfprintf_r+0x582>
 800349a:	8814      	ldrh	r4, [r2, #0]
 800349c:	9308      	str	r3, [sp, #32]
 800349e:	2500      	movs	r5, #0
 80034a0:	f7ff ba14 	b.w	80028cc <_vfprintf_r+0x624>
 80034a4:	f9b1 4000 	ldrsh.w	r4, [r1]
 80034a8:	9208      	str	r2, [sp, #32]
 80034aa:	17e5      	asrs	r5, r4, #31
 80034ac:	4620      	mov	r0, r4
 80034ae:	4629      	mov	r1, r5
 80034b0:	f7ff b855 	b.w	800255e <_vfprintf_r+0x2b6>
 80034b4:	8814      	ldrh	r4, [r2, #0]
 80034b6:	9308      	str	r3, [sp, #32]
 80034b8:	2500      	movs	r5, #0
 80034ba:	f7ff b825 	b.w	8002508 <_vfprintf_r+0x260>
 80034be:	222d      	movs	r2, #45	; 0x2d
 80034c0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80034c4:	f7ff baa2 	b.w	8002a0c <_vfprintf_r+0x764>
 80034c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80034ca:	9907      	ldr	r1, [sp, #28]
 80034cc:	9803      	ldr	r0, [sp, #12]
 80034ce:	f003 fa19 	bl	8006904 <__sprint_r>
 80034d2:	2800      	cmp	r0, #0
 80034d4:	f47f ac60 	bne.w	8002d98 <_vfprintf_r+0xaf0>
 80034d8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80034da:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034de:	e534      	b.n	8002f4a <_vfprintf_r+0xca2>
 80034e0:	aa2a      	add	r2, sp, #168	; 0xa8
 80034e2:	9907      	ldr	r1, [sp, #28]
 80034e4:	9803      	ldr	r0, [sp, #12]
 80034e6:	f003 fa0d 	bl	8006904 <__sprint_r>
 80034ea:	2800      	cmp	r0, #0
 80034ec:	f47f ac54 	bne.w	8002d98 <_vfprintf_r+0xaf0>
 80034f0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80034f2:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80034f4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034f8:	e793      	b.n	8003422 <_vfprintf_r+0x117a>
 80034fa:	2330      	movs	r3, #48	; 0x30
 80034fc:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003500:	2378      	movs	r3, #120	; 0x78
 8003502:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003506:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 800350a:	f048 0402 	orr.w	r4, r8, #2
 800350e:	f300 82b0 	bgt.w	8003a72 <_vfprintf_r+0x17ca>
 8003512:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003516:	930e      	str	r3, [sp, #56]	; 0x38
 8003518:	f026 0320 	bic.w	r3, r6, #32
 800351c:	9304      	str	r3, [sp, #16]
 800351e:	2200      	movs	r2, #0
 8003520:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003522:	920a      	str	r2, [sp, #40]	; 0x28
 8003524:	46a0      	mov	r8, r4
 8003526:	af3d      	add	r7, sp, #244	; 0xf4
 8003528:	2b00      	cmp	r3, #0
 800352a:	f2c0 81e3 	blt.w	80038f4 <_vfprintf_r+0x164c>
 800352e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003532:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003536:	2300      	movs	r3, #0
 8003538:	930b      	str	r3, [sp, #44]	; 0x2c
 800353a:	2e61      	cmp	r6, #97	; 0x61
 800353c:	f000 8255 	beq.w	80039ea <_vfprintf_r+0x1742>
 8003540:	2e41      	cmp	r6, #65	; 0x41
 8003542:	f47f aee3 	bne.w	800330c <_vfprintf_r+0x1064>
 8003546:	a824      	add	r0, sp, #144	; 0x90
 8003548:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800354c:	f003 f8e2 	bl	8006714 <frexp>
 8003550:	2200      	movs	r2, #0
 8003552:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003556:	ec51 0b10 	vmov	r0, r1, d0
 800355a:	f7fd faed 	bl	8000b38 <__aeabi_dmul>
 800355e:	2200      	movs	r2, #0
 8003560:	2300      	movs	r3, #0
 8003562:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003566:	f7fd fd4f 	bl	8001008 <__aeabi_dcmpeq>
 800356a:	2800      	cmp	r0, #0
 800356c:	f040 8305 	bne.w	8003b7a <_vfprintf_r+0x18d2>
 8003570:	4b63      	ldr	r3, [pc, #396]	; (8003700 <_vfprintf_r+0x1458>)
 8003572:	9309      	str	r3, [sp, #36]	; 0x24
 8003574:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003578:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 800357c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003580:	9721      	str	r7, [sp, #132]	; 0x84
 8003582:	46b9      	mov	r9, r7
 8003584:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003588:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 800358c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003590:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003594:	e003      	b.n	800359e <_vfprintf_r+0x12f6>
 8003596:	f7fd fd37 	bl	8001008 <__aeabi_dcmpeq>
 800359a:	bb20      	cbnz	r0, 80035e6 <_vfprintf_r+0x133e>
 800359c:	46a9      	mov	r9, r5
 800359e:	2200      	movs	r2, #0
 80035a0:	4b58      	ldr	r3, [pc, #352]	; (8003704 <_vfprintf_r+0x145c>)
 80035a2:	4630      	mov	r0, r6
 80035a4:	4639      	mov	r1, r7
 80035a6:	f7fd fac7 	bl	8000b38 <__aeabi_dmul>
 80035aa:	460f      	mov	r7, r1
 80035ac:	4606      	mov	r6, r0
 80035ae:	f7fd fd73 	bl	8001098 <__aeabi_d2iz>
 80035b2:	4680      	mov	r8, r0
 80035b4:	f7fd fa56 	bl	8000a64 <__aeabi_i2d>
 80035b8:	4602      	mov	r2, r0
 80035ba:	460b      	mov	r3, r1
 80035bc:	4630      	mov	r0, r6
 80035be:	4639      	mov	r1, r7
 80035c0:	f7fd f902 	bl	80007c8 <__aeabi_dsub>
 80035c4:	464d      	mov	r5, r9
 80035c6:	f81a c008 	ldrb.w	ip, [sl, r8]
 80035ca:	f805 cb01 	strb.w	ip, [r5], #1
 80035ce:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 80035d2:	46a3      	mov	fp, r4
 80035d4:	4606      	mov	r6, r0
 80035d6:	460f      	mov	r7, r1
 80035d8:	f04f 0200 	mov.w	r2, #0
 80035dc:	f04f 0300 	mov.w	r3, #0
 80035e0:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 80035e4:	d1d7      	bne.n	8003596 <_vfprintf_r+0x12ee>
 80035e6:	4630      	mov	r0, r6
 80035e8:	4639      	mov	r1, r7
 80035ea:	2200      	movs	r2, #0
 80035ec:	4b46      	ldr	r3, [pc, #280]	; (8003708 <_vfprintf_r+0x1460>)
 80035ee:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 80035f2:	9e10      	ldr	r6, [sp, #64]	; 0x40
 80035f4:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 80035f8:	4644      	mov	r4, r8
 80035fa:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 80035fe:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003602:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003606:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 800360a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 800360c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003610:	f7fd fd22 	bl	8001058 <__aeabi_dcmpgt>
 8003614:	2800      	cmp	r0, #0
 8003616:	f040 8176 	bne.w	8003906 <_vfprintf_r+0x165e>
 800361a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 800361e:	2200      	movs	r2, #0
 8003620:	4b39      	ldr	r3, [pc, #228]	; (8003708 <_vfprintf_r+0x1460>)
 8003622:	f7fd fcf1 	bl	8001008 <__aeabi_dcmpeq>
 8003626:	b110      	cbz	r0, 800362e <_vfprintf_r+0x1386>
 8003628:	07e2      	lsls	r2, r4, #31
 800362a:	f100 816c 	bmi.w	8003906 <_vfprintf_r+0x165e>
 800362e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003630:	2b00      	cmp	r3, #0
 8003632:	db07      	blt.n	8003644 <_vfprintf_r+0x139c>
 8003634:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003636:	3301      	adds	r3, #1
 8003638:	442b      	add	r3, r5
 800363a:	2230      	movs	r2, #48	; 0x30
 800363c:	f805 2b01 	strb.w	r2, [r5], #1
 8003640:	42ab      	cmp	r3, r5
 8003642:	d1fb      	bne.n	800363c <_vfprintf_r+0x1394>
 8003644:	1beb      	subs	r3, r5, r7
 8003646:	4640      	mov	r0, r8
 8003648:	9310      	str	r3, [sp, #64]	; 0x40
 800364a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800364e:	e683      	b.n	8003358 <_vfprintf_r+0x10b0>
 8003650:	f8cd 9010 	str.w	r9, [sp, #16]
 8003654:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003658:	9408      	str	r4, [sp, #32]
 800365a:	4681      	mov	r9, r0
 800365c:	900f      	str	r0, [sp, #60]	; 0x3c
 800365e:	9014      	str	r0, [sp, #80]	; 0x50
 8003660:	9011      	str	r0, [sp, #68]	; 0x44
 8003662:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003666:	f7fe bfac 	b.w	80025c2 <_vfprintf_r+0x31a>
 800366a:	aa2a      	add	r2, sp, #168	; 0xa8
 800366c:	9907      	ldr	r1, [sp, #28]
 800366e:	9803      	ldr	r0, [sp, #12]
 8003670:	f003 f948 	bl	8006904 <__sprint_r>
 8003674:	2800      	cmp	r0, #0
 8003676:	f47f ab8f 	bne.w	8002d98 <_vfprintf_r+0xaf0>
 800367a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800367c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800367e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003682:	e511      	b.n	80030a8 <_vfprintf_r+0xe00>
 8003684:	4252      	negs	r2, r2
 8003686:	9206      	str	r2, [sp, #24]
 8003688:	9308      	str	r3, [sp, #32]
 800368a:	f7ff b96d 	b.w	8002968 <_vfprintf_r+0x6c0>
 800368e:	4614      	mov	r4, r2
 8003690:	4632      	mov	r2, r6
 8003692:	461e      	mov	r6, r3
 8003694:	4613      	mov	r3, r2
 8003696:	462a      	mov	r2, r5
 8003698:	3201      	adds	r2, #1
 800369a:	9209      	str	r2, [sp, #36]	; 0x24
 800369c:	f106 0208 	add.w	r2, r6, #8
 80036a0:	e9c6 3900 	strd	r3, r9, [r6]
 80036a4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80036a6:	932b      	str	r3, [sp, #172]	; 0xac
 80036a8:	444c      	add	r4, r9
 80036aa:	2b07      	cmp	r3, #7
 80036ac:	942c      	str	r4, [sp, #176]	; 0xb0
 80036ae:	f73f acc3 	bgt.w	8003038 <_vfprintf_r+0xd90>
 80036b2:	3301      	adds	r3, #1
 80036b4:	9309      	str	r3, [sp, #36]	; 0x24
 80036b6:	f102 0b08 	add.w	fp, r2, #8
 80036ba:	4616      	mov	r6, r2
 80036bc:	f7ff bbca 	b.w	8002e54 <_vfprintf_r+0xbac>
 80036c0:	aa2a      	add	r2, sp, #168	; 0xa8
 80036c2:	9907      	ldr	r1, [sp, #28]
 80036c4:	9803      	ldr	r0, [sp, #12]
 80036c6:	f003 f91d 	bl	8006904 <__sprint_r>
 80036ca:	2800      	cmp	r0, #0
 80036cc:	f47f ab64 	bne.w	8002d98 <_vfprintf_r+0xaf0>
 80036d0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036d2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036d6:	f7ff bade 	b.w	8002c96 <_vfprintf_r+0x9ee>
 80036da:	464b      	mov	r3, r9
 80036dc:	2b06      	cmp	r3, #6
 80036de:	bf28      	it	cs
 80036e0:	2306      	movcs	r3, #6
 80036e2:	46b9      	mov	r9, r7
 80036e4:	970f      	str	r7, [sp, #60]	; 0x3c
 80036e6:	9714      	str	r7, [sp, #80]	; 0x50
 80036e8:	9711      	str	r7, [sp, #68]	; 0x44
 80036ea:	970a      	str	r7, [sp, #40]	; 0x28
 80036ec:	463a      	mov	r2, r7
 80036ee:	9304      	str	r3, [sp, #16]
 80036f0:	e9cd 4308 	strd	r4, r3, [sp, #32]
 80036f4:	4f05      	ldr	r7, [pc, #20]	; (800370c <_vfprintf_r+0x1464>)
 80036f6:	f7fe bf64 	b.w	80025c2 <_vfprintf_r+0x31a>
 80036fa:	bf00      	nop
 80036fc:	08006fec 	.word	0x08006fec
 8003700:	08006fd0 	.word	0x08006fd0
 8003704:	40300000 	.word	0x40300000
 8003708:	3fe00000 	.word	0x3fe00000
 800370c:	08006fe4 	.word	0x08006fe4
 8003710:	460c      	mov	r4, r1
 8003712:	4639      	mov	r1, r7
 8003714:	465f      	mov	r7, fp
 8003716:	469b      	mov	fp, r3
 8003718:	460b      	mov	r3, r1
 800371a:	3201      	adds	r2, #1
 800371c:	442c      	add	r4, r5
 800371e:	2a07      	cmp	r2, #7
 8003720:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003724:	e9cb 3500 	strd	r3, r5, [fp]
 8003728:	f73f aca5 	bgt.w	8003076 <_vfprintf_r+0xdce>
 800372c:	f10b 0b08 	add.w	fp, fp, #8
 8003730:	e4ac      	b.n	800308c <_vfprintf_r+0xde4>
 8003732:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003734:	1cda      	adds	r2, r3, #3
 8003736:	db02      	blt.n	800373e <_vfprintf_r+0x1496>
 8003738:	4599      	cmp	r9, r3
 800373a:	f280 80b5 	bge.w	80038a8 <_vfprintf_r+0x1600>
 800373e:	3e02      	subs	r6, #2
 8003740:	f026 0320 	bic.w	r3, r6, #32
 8003744:	9304      	str	r3, [sp, #16]
 8003746:	e611      	b.n	800336c <_vfprintf_r+0x10c4>
 8003748:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800374a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 800374e:	465a      	mov	r2, fp
 8003750:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003754:	18fb      	adds	r3, r7, r3
 8003756:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 800375a:	970c      	str	r7, [sp, #48]	; 0x30
 800375c:	4eaf      	ldr	r6, [pc, #700]	; (8003a1c <_vfprintf_r+0x1774>)
 800375e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003762:	9309      	str	r3, [sp, #36]	; 0x24
 8003764:	464f      	mov	r7, r9
 8003766:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800376a:	4621      	mov	r1, r4
 800376c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800376e:	2b00      	cmp	r3, #0
 8003770:	d05b      	beq.n	800382a <_vfprintf_r+0x1582>
 8003772:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003774:	2b00      	cmp	r3, #0
 8003776:	d154      	bne.n	8003822 <_vfprintf_r+0x157a>
 8003778:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800377a:	3b01      	subs	r3, #1
 800377c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003780:	9314      	str	r3, [sp, #80]	; 0x50
 8003782:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003784:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003786:	6010      	str	r0, [r2, #0]
 8003788:	3301      	adds	r3, #1
 800378a:	4459      	add	r1, fp
 800378c:	2b07      	cmp	r3, #7
 800378e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003790:	f8c2 b004 	str.w	fp, [r2, #4]
 8003794:	932b      	str	r3, [sp, #172]	; 0xac
 8003796:	dc68      	bgt.n	800386a <_vfprintf_r+0x15c2>
 8003798:	3208      	adds	r2, #8
 800379a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800379c:	f898 3000 	ldrb.w	r3, [r8]
 80037a0:	1bc5      	subs	r5, r0, r7
 80037a2:	429d      	cmp	r5, r3
 80037a4:	bfa8      	it	ge
 80037a6:	461d      	movge	r5, r3
 80037a8:	2d00      	cmp	r5, #0
 80037aa:	dd0b      	ble.n	80037c4 <_vfprintf_r+0x151c>
 80037ac:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80037ae:	6017      	str	r7, [r2, #0]
 80037b0:	3301      	adds	r3, #1
 80037b2:	4429      	add	r1, r5
 80037b4:	2b07      	cmp	r3, #7
 80037b6:	912c      	str	r1, [sp, #176]	; 0xb0
 80037b8:	6055      	str	r5, [r2, #4]
 80037ba:	932b      	str	r3, [sp, #172]	; 0xac
 80037bc:	dc5e      	bgt.n	800387c <_vfprintf_r+0x15d4>
 80037be:	f898 3000 	ldrb.w	r3, [r8]
 80037c2:	3208      	adds	r2, #8
 80037c4:	2d00      	cmp	r5, #0
 80037c6:	bfac      	ite	ge
 80037c8:	1b5d      	subge	r5, r3, r5
 80037ca:	461d      	movlt	r5, r3
 80037cc:	2d00      	cmp	r5, #0
 80037ce:	dd26      	ble.n	800381e <_vfprintf_r+0x1576>
 80037d0:	2d10      	cmp	r5, #16
 80037d2:	982b      	ldr	r0, [sp, #172]	; 0xac
 80037d4:	dd3c      	ble.n	8003850 <_vfprintf_r+0x15a8>
 80037d6:	2410      	movs	r4, #16
 80037d8:	e003      	b.n	80037e2 <_vfprintf_r+0x153a>
 80037da:	3208      	adds	r2, #8
 80037dc:	3d10      	subs	r5, #16
 80037de:	2d10      	cmp	r5, #16
 80037e0:	dd36      	ble.n	8003850 <_vfprintf_r+0x15a8>
 80037e2:	3001      	adds	r0, #1
 80037e4:	3110      	adds	r1, #16
 80037e6:	2807      	cmp	r0, #7
 80037e8:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80037ec:	e9c2 6400 	strd	r6, r4, [r2]
 80037f0:	ddf3      	ble.n	80037da <_vfprintf_r+0x1532>
 80037f2:	aa2a      	add	r2, sp, #168	; 0xa8
 80037f4:	4651      	mov	r1, sl
 80037f6:	4648      	mov	r0, r9
 80037f8:	f003 f884 	bl	8006904 <__sprint_r>
 80037fc:	2800      	cmp	r0, #0
 80037fe:	d150      	bne.n	80038a2 <_vfprintf_r+0x15fa>
 8003800:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003804:	aa2d      	add	r2, sp, #180	; 0xb4
 8003806:	e7e9      	b.n	80037dc <_vfprintf_r+0x1534>
 8003808:	aa2a      	add	r2, sp, #168	; 0xa8
 800380a:	4651      	mov	r1, sl
 800380c:	4648      	mov	r0, r9
 800380e:	f003 f879 	bl	8006904 <__sprint_r>
 8003812:	2800      	cmp	r0, #0
 8003814:	d145      	bne.n	80038a2 <_vfprintf_r+0x15fa>
 8003816:	f898 3000 	ldrb.w	r3, [r8]
 800381a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800381c:	aa2d      	add	r2, sp, #180	; 0xb4
 800381e:	441f      	add	r7, r3
 8003820:	e7a4      	b.n	800376c <_vfprintf_r+0x14c4>
 8003822:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003824:	3b01      	subs	r3, #1
 8003826:	930f      	str	r3, [sp, #60]	; 0x3c
 8003828:	e7ab      	b.n	8003782 <_vfprintf_r+0x14da>
 800382a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800382c:	2b00      	cmp	r3, #0
 800382e:	d1f8      	bne.n	8003822 <_vfprintf_r+0x157a>
 8003830:	46b9      	mov	r9, r7
 8003832:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003834:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003836:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 800383a:	18fb      	adds	r3, r7, r3
 800383c:	4599      	cmp	r9, r3
 800383e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003842:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003846:	4693      	mov	fp, r2
 8003848:	460c      	mov	r4, r1
 800384a:	bf28      	it	cs
 800384c:	4699      	movcs	r9, r3
 800384e:	e424      	b.n	800309a <_vfprintf_r+0xdf2>
 8003850:	3001      	adds	r0, #1
 8003852:	4429      	add	r1, r5
 8003854:	2807      	cmp	r0, #7
 8003856:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800385a:	e9c2 6500 	strd	r6, r5, [r2]
 800385e:	dcd3      	bgt.n	8003808 <_vfprintf_r+0x1560>
 8003860:	f898 3000 	ldrb.w	r3, [r8]
 8003864:	3208      	adds	r2, #8
 8003866:	441f      	add	r7, r3
 8003868:	e780      	b.n	800376c <_vfprintf_r+0x14c4>
 800386a:	aa2a      	add	r2, sp, #168	; 0xa8
 800386c:	4651      	mov	r1, sl
 800386e:	4648      	mov	r0, r9
 8003870:	f003 f848 	bl	8006904 <__sprint_r>
 8003874:	b9a8      	cbnz	r0, 80038a2 <_vfprintf_r+0x15fa>
 8003876:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003878:	aa2d      	add	r2, sp, #180	; 0xb4
 800387a:	e78e      	b.n	800379a <_vfprintf_r+0x14f2>
 800387c:	aa2a      	add	r2, sp, #168	; 0xa8
 800387e:	4651      	mov	r1, sl
 8003880:	4648      	mov	r0, r9
 8003882:	f003 f83f 	bl	8006904 <__sprint_r>
 8003886:	b960      	cbnz	r0, 80038a2 <_vfprintf_r+0x15fa>
 8003888:	f898 3000 	ldrb.w	r3, [r8]
 800388c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800388e:	aa2d      	add	r2, sp, #180	; 0xb4
 8003890:	e798      	b.n	80037c4 <_vfprintf_r+0x151c>
 8003892:	4638      	mov	r0, r7
 8003894:	f7fc fed4 	bl	8000640 <strlen>
 8003898:	46a9      	mov	r9, r5
 800389a:	4603      	mov	r3, r0
 800389c:	9009      	str	r0, [sp, #36]	; 0x24
 800389e:	f7ff b8f4 	b.w	8002a8a <_vfprintf_r+0x7e2>
 80038a2:	46d1      	mov	r9, sl
 80038a4:	f7ff ba7a 	b.w	8002d9c <_vfprintf_r+0xaf4>
 80038a8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80038aa:	4619      	mov	r1, r3
 80038ac:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80038ae:	4299      	cmp	r1, r3
 80038b0:	f300 8082 	bgt.w	80039b8 <_vfprintf_r+0x1710>
 80038b4:	07c4      	lsls	r4, r0, #31
 80038b6:	f140 816b 	bpl.w	8003b90 <_vfprintf_r+0x18e8>
 80038ba:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80038bc:	4413      	add	r3, r2
 80038be:	9309      	str	r3, [sp, #36]	; 0x24
 80038c0:	0541      	lsls	r1, r0, #21
 80038c2:	d503      	bpl.n	80038cc <_vfprintf_r+0x1624>
 80038c4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80038c6:	2b00      	cmp	r3, #0
 80038c8:	f300 80e6 	bgt.w	8003a98 <_vfprintf_r+0x17f0>
 80038cc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80038ce:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80038d2:	9304      	str	r3, [sp, #16]
 80038d4:	2667      	movs	r6, #103	; 0x67
 80038d6:	2300      	movs	r3, #0
 80038d8:	930f      	str	r3, [sp, #60]	; 0x3c
 80038da:	9314      	str	r3, [sp, #80]	; 0x50
 80038dc:	e586      	b.n	80033ec <_vfprintf_r+0x1144>
 80038de:	222d      	movs	r2, #45	; 0x2d
 80038e0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80038e4:	f04f 0900 	mov.w	r9, #0
 80038e8:	f7fe be6c 	b.w	80025c4 <_vfprintf_r+0x31c>
 80038ec:	46a1      	mov	r9, r4
 80038ee:	f7ff ba55 	b.w	8002d9c <_vfprintf_r+0xaf4>
 80038f2:	900a      	str	r0, [sp, #40]	; 0x28
 80038f4:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 80038f8:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 80038fc:	931f      	str	r3, [sp, #124]	; 0x7c
 80038fe:	232d      	movs	r3, #45	; 0x2d
 8003900:	911e      	str	r1, [sp, #120]	; 0x78
 8003902:	930b      	str	r3, [sp, #44]	; 0x2c
 8003904:	e619      	b.n	800353a <_vfprintf_r+0x1292>
 8003906:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003908:	9328      	str	r3, [sp, #160]	; 0xa0
 800390a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800390c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003910:	7bd9      	ldrb	r1, [r3, #15]
 8003912:	4291      	cmp	r1, r2
 8003914:	462b      	mov	r3, r5
 8003916:	d109      	bne.n	800392c <_vfprintf_r+0x1684>
 8003918:	2030      	movs	r0, #48	; 0x30
 800391a:	f803 0c01 	strb.w	r0, [r3, #-1]
 800391e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003920:	1e5a      	subs	r2, r3, #1
 8003922:	9228      	str	r2, [sp, #160]	; 0xa0
 8003924:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003928:	4291      	cmp	r1, r2
 800392a:	d0f6      	beq.n	800391a <_vfprintf_r+0x1672>
 800392c:	2a39      	cmp	r2, #57	; 0x39
 800392e:	bf0b      	itete	eq
 8003930:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003932:	3201      	addne	r2, #1
 8003934:	7a92      	ldrbeq	r2, [r2, #10]
 8003936:	b2d2      	uxtbne	r2, r2
 8003938:	f803 2c01 	strb.w	r2, [r3, #-1]
 800393c:	e682      	b.n	8003644 <_vfprintf_r+0x139c>
 800393e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003942:	f43f ad9f 	beq.w	8003484 <_vfprintf_r+0x11dc>
 8003946:	9a05      	ldr	r2, [sp, #20]
 8003948:	701a      	strb	r2, [r3, #0]
 800394a:	4657      	mov	r7, sl
 800394c:	f7fe bf52 	b.w	80027f4 <_vfprintf_r+0x54c>
 8003950:	aa2a      	add	r2, sp, #168	; 0xa8
 8003952:	9907      	ldr	r1, [sp, #28]
 8003954:	9803      	ldr	r0, [sp, #12]
 8003956:	f002 ffd5 	bl	8006904 <__sprint_r>
 800395a:	2800      	cmp	r0, #0
 800395c:	f47f aa1c 	bne.w	8002d98 <_vfprintf_r+0xaf0>
 8003960:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003962:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003966:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800396a:	e571      	b.n	8003450 <_vfprintf_r+0x11a8>
 800396c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800396e:	2b00      	cmp	r3, #0
 8003970:	f340 8164 	ble.w	8003c3c <_vfprintf_r+0x1994>
 8003974:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003976:	f1b9 0f00 	cmp.w	r9, #0
 800397a:	f040 8103 	bne.w	8003b84 <_vfprintf_r+0x18dc>
 800397e:	07c6      	lsls	r6, r0, #31
 8003980:	f100 8100 	bmi.w	8003b84 <_vfprintf_r+0x18dc>
 8003984:	9309      	str	r3, [sp, #36]	; 0x24
 8003986:	2666      	movs	r6, #102	; 0x66
 8003988:	0543      	lsls	r3, r0, #21
 800398a:	f100 8086 	bmi.w	8003a9a <_vfprintf_r+0x17f2>
 800398e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003990:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003994:	9304      	str	r3, [sp, #16]
 8003996:	e79e      	b.n	80038d6 <_vfprintf_r+0x162e>
 8003998:	aa2a      	add	r2, sp, #168	; 0xa8
 800399a:	9907      	ldr	r1, [sp, #28]
 800399c:	9803      	ldr	r0, [sp, #12]
 800399e:	f002 ffb1 	bl	8006904 <__sprint_r>
 80039a2:	2800      	cmp	r0, #0
 80039a4:	f47f a9f8 	bne.w	8002d98 <_vfprintf_r+0xaf0>
 80039a8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80039aa:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80039ac:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80039ae:	1ad3      	subs	r3, r2, r3
 80039b0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039b4:	f7ff bb90 	b.w	80030d8 <_vfprintf_r+0xe30>
 80039b8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80039ba:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80039bc:	4413      	add	r3, r2
 80039be:	9309      	str	r3, [sp, #36]	; 0x24
 80039c0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039c2:	2b00      	cmp	r3, #0
 80039c4:	f340 8149 	ble.w	8003c5a <_vfprintf_r+0x19b2>
 80039c8:	2667      	movs	r6, #103	; 0x67
 80039ca:	e7dd      	b.n	8003988 <_vfprintf_r+0x16e0>
 80039cc:	2330      	movs	r3, #48	; 0x30
 80039ce:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80039d2:	2358      	movs	r3, #88	; 0x58
 80039d4:	e595      	b.n	8003502 <_vfprintf_r+0x125a>
 80039d6:	9803      	ldr	r0, [sp, #12]
 80039d8:	aa2a      	add	r2, sp, #168	; 0xa8
 80039da:	4649      	mov	r1, r9
 80039dc:	f002 ff92 	bl	8006904 <__sprint_r>
 80039e0:	2800      	cmp	r0, #0
 80039e2:	f47f a9e0 	bne.w	8002da6 <_vfprintf_r+0xafe>
 80039e6:	f7fe bf0f 	b.w	8002808 <_vfprintf_r+0x560>
 80039ea:	a824      	add	r0, sp, #144	; 0x90
 80039ec:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80039f0:	f002 fe90 	bl	8006714 <frexp>
 80039f4:	2200      	movs	r2, #0
 80039f6:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80039fa:	ec51 0b10 	vmov	r0, r1, d0
 80039fe:	f7fd f89b 	bl	8000b38 <__aeabi_dmul>
 8003a02:	2200      	movs	r2, #0
 8003a04:	2300      	movs	r3, #0
 8003a06:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003a0a:	f7fd fafd 	bl	8001008 <__aeabi_dcmpeq>
 8003a0e:	b108      	cbz	r0, 8003a14 <_vfprintf_r+0x176c>
 8003a10:	2301      	movs	r3, #1
 8003a12:	9324      	str	r3, [sp, #144]	; 0x90
 8003a14:	4b02      	ldr	r3, [pc, #8]	; (8003a20 <_vfprintf_r+0x1778>)
 8003a16:	9309      	str	r3, [sp, #36]	; 0x24
 8003a18:	e5ac      	b.n	8003574 <_vfprintf_r+0x12cc>
 8003a1a:	bf00      	nop
 8003a1c:	08007000 	.word	0x08007000
 8003a20:	08006fbc 	.word	0x08006fbc
 8003a24:	425d      	negs	r5, r3
 8003a26:	3310      	adds	r3, #16
 8003a28:	4bb9      	ldr	r3, [pc, #740]	; (8003d10 <_vfprintf_r+0x1a68>)
 8003a2a:	f280 8097 	bge.w	8003b5c <_vfprintf_r+0x18b4>
 8003a2e:	4619      	mov	r1, r3
 8003a30:	2610      	movs	r6, #16
 8003a32:	4623      	mov	r3, r4
 8003a34:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003a38:	460c      	mov	r4, r1
 8003a3a:	e005      	b.n	8003a48 <_vfprintf_r+0x17a0>
 8003a3c:	f10b 0b08 	add.w	fp, fp, #8
 8003a40:	3d10      	subs	r5, #16
 8003a42:	2d10      	cmp	r5, #16
 8003a44:	f340 8087 	ble.w	8003b56 <_vfprintf_r+0x18ae>
 8003a48:	3201      	adds	r2, #1
 8003a4a:	3310      	adds	r3, #16
 8003a4c:	2a07      	cmp	r2, #7
 8003a4e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003a52:	e9cb 4600 	strd	r4, r6, [fp]
 8003a56:	ddf1      	ble.n	8003a3c <_vfprintf_r+0x1794>
 8003a58:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a5a:	9907      	ldr	r1, [sp, #28]
 8003a5c:	4648      	mov	r0, r9
 8003a5e:	f002 ff51 	bl	8006904 <__sprint_r>
 8003a62:	2800      	cmp	r0, #0
 8003a64:	f47f a998 	bne.w	8002d98 <_vfprintf_r+0xaf0>
 8003a68:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003a6c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a70:	e7e6      	b.n	8003a40 <_vfprintf_r+0x1798>
 8003a72:	f109 0101 	add.w	r1, r9, #1
 8003a76:	9803      	ldr	r0, [sp, #12]
 8003a78:	f001 fe80 	bl	800577c <_malloc_r>
 8003a7c:	4607      	mov	r7, r0
 8003a7e:	2800      	cmp	r0, #0
 8003a80:	f000 813b 	beq.w	8003cfa <_vfprintf_r+0x1a52>
 8003a84:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003a88:	930e      	str	r3, [sp, #56]	; 0x38
 8003a8a:	f026 0320 	bic.w	r3, r6, #32
 8003a8e:	9304      	str	r3, [sp, #16]
 8003a90:	46a0      	mov	r8, r4
 8003a92:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003a94:	900a      	str	r0, [sp, #40]	; 0x28
 8003a96:	e547      	b.n	8003528 <_vfprintf_r+0x1280>
 8003a98:	2667      	movs	r6, #103	; 0x67
 8003a9a:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003a9c:	2200      	movs	r2, #0
 8003a9e:	920f      	str	r2, [sp, #60]	; 0x3c
 8003aa0:	9214      	str	r2, [sp, #80]	; 0x50
 8003aa2:	7803      	ldrb	r3, [r0, #0]
 8003aa4:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003aa6:	2bff      	cmp	r3, #255	; 0xff
 8003aa8:	d00c      	beq.n	8003ac4 <_vfprintf_r+0x181c>
 8003aaa:	4293      	cmp	r3, r2
 8003aac:	da0a      	bge.n	8003ac4 <_vfprintf_r+0x181c>
 8003aae:	7841      	ldrb	r1, [r0, #1]
 8003ab0:	1ad2      	subs	r2, r2, r3
 8003ab2:	b1a9      	cbz	r1, 8003ae0 <_vfprintf_r+0x1838>
 8003ab4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003ab6:	3301      	adds	r3, #1
 8003ab8:	9314      	str	r3, [sp, #80]	; 0x50
 8003aba:	460b      	mov	r3, r1
 8003abc:	2bff      	cmp	r3, #255	; 0xff
 8003abe:	f100 0001 	add.w	r0, r0, #1
 8003ac2:	d1f2      	bne.n	8003aaa <_vfprintf_r+0x1802>
 8003ac4:	9211      	str	r2, [sp, #68]	; 0x44
 8003ac6:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003ac8:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003aca:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003acc:	901a      	str	r0, [sp, #104]	; 0x68
 8003ace:	4413      	add	r3, r2
 8003ad0:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003ad2:	fb02 1303 	mla	r3, r2, r3, r1
 8003ad6:	9309      	str	r3, [sp, #36]	; 0x24
 8003ad8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003adc:	9304      	str	r3, [sp, #16]
 8003ade:	e485      	b.n	80033ec <_vfprintf_r+0x1144>
 8003ae0:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003ae2:	3101      	adds	r1, #1
 8003ae4:	910f      	str	r1, [sp, #60]	; 0x3c
 8003ae6:	e7de      	b.n	8003aa6 <_vfprintf_r+0x17fe>
 8003ae8:	aa28      	add	r2, sp, #160	; 0xa0
 8003aea:	ab25      	add	r3, sp, #148	; 0x94
 8003aec:	e9cd 3200 	strd	r3, r2, [sp]
 8003af0:	2103      	movs	r1, #3
 8003af2:	ab24      	add	r3, sp, #144	; 0x90
 8003af4:	464a      	mov	r2, r9
 8003af6:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003afa:	9803      	ldr	r0, [sp, #12]
 8003afc:	f000 fa5c 	bl	8003fb8 <_dtoa_r>
 8003b00:	464d      	mov	r5, r9
 8003b02:	4607      	mov	r7, r0
 8003b04:	eb00 0409 	add.w	r4, r0, r9
 8003b08:	783b      	ldrb	r3, [r7, #0]
 8003b0a:	2b30      	cmp	r3, #48	; 0x30
 8003b0c:	f000 80be 	beq.w	8003c8c <_vfprintf_r+0x19e4>
 8003b10:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003b12:	442c      	add	r4, r5
 8003b14:	2200      	movs	r2, #0
 8003b16:	2300      	movs	r3, #0
 8003b18:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003b1c:	f7fd fa74 	bl	8001008 <__aeabi_dcmpeq>
 8003b20:	b108      	cbz	r0, 8003b26 <_vfprintf_r+0x187e>
 8003b22:	4623      	mov	r3, r4
 8003b24:	e413      	b.n	800334e <_vfprintf_r+0x10a6>
 8003b26:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003b28:	42a3      	cmp	r3, r4
 8003b2a:	f4bf ac10 	bcs.w	800334e <_vfprintf_r+0x10a6>
 8003b2e:	2130      	movs	r1, #48	; 0x30
 8003b30:	1c5a      	adds	r2, r3, #1
 8003b32:	9228      	str	r2, [sp, #160]	; 0xa0
 8003b34:	7019      	strb	r1, [r3, #0]
 8003b36:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003b38:	429c      	cmp	r4, r3
 8003b3a:	d8f9      	bhi.n	8003b30 <_vfprintf_r+0x1888>
 8003b3c:	e407      	b.n	800334e <_vfprintf_r+0x10a6>
 8003b3e:	197c      	adds	r4, r7, r5
 8003b40:	e7e8      	b.n	8003b14 <_vfprintf_r+0x186c>
 8003b42:	f1b9 0f00 	cmp.w	r9, #0
 8003b46:	f000 8092 	beq.w	8003c6e <_vfprintf_r+0x19c6>
 8003b4a:	900a      	str	r0, [sp, #40]	; 0x28
 8003b4c:	e4ec      	b.n	8003528 <_vfprintf_r+0x1280>
 8003b4e:	900a      	str	r0, [sp, #40]	; 0x28
 8003b50:	f04f 0906 	mov.w	r9, #6
 8003b54:	e4e8      	b.n	8003528 <_vfprintf_r+0x1280>
 8003b56:	4621      	mov	r1, r4
 8003b58:	461c      	mov	r4, r3
 8003b5a:	460b      	mov	r3, r1
 8003b5c:	3201      	adds	r2, #1
 8003b5e:	442c      	add	r4, r5
 8003b60:	2a07      	cmp	r2, #7
 8003b62:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003b66:	e9cb 3500 	strd	r3, r5, [fp]
 8003b6a:	f300 80a9 	bgt.w	8003cc0 <_vfprintf_r+0x1a18>
 8003b6e:	f10b 0b08 	add.w	fp, fp, #8
 8003b72:	e470      	b.n	8003456 <_vfprintf_r+0x11ae>
 8003b74:	469a      	mov	sl, r3
 8003b76:	f7ff bb37 	b.w	80031e8 <_vfprintf_r+0xf40>
 8003b7a:	2301      	movs	r3, #1
 8003b7c:	9324      	str	r3, [sp, #144]	; 0x90
 8003b7e:	4b65      	ldr	r3, [pc, #404]	; (8003d14 <_vfprintf_r+0x1a6c>)
 8003b80:	9309      	str	r3, [sp, #36]	; 0x24
 8003b82:	e4f7      	b.n	8003574 <_vfprintf_r+0x12cc>
 8003b84:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b86:	4413      	add	r3, r2
 8003b88:	444b      	add	r3, r9
 8003b8a:	9309      	str	r3, [sp, #36]	; 0x24
 8003b8c:	2666      	movs	r6, #102	; 0x66
 8003b8e:	e6fb      	b.n	8003988 <_vfprintf_r+0x16e0>
 8003b90:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b92:	9309      	str	r3, [sp, #36]	; 0x24
 8003b94:	e694      	b.n	80038c0 <_vfprintf_r+0x1618>
 8003b96:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003b9a:	4664      	mov	r4, ip
 8003b9c:	4d5e      	ldr	r5, [pc, #376]	; (8003d18 <_vfprintf_r+0x1a70>)
 8003b9e:	e000      	b.n	8003ba2 <_vfprintf_r+0x18fa>
 8003ba0:	4614      	mov	r4, r2
 8003ba2:	fba5 1203 	umull	r1, r2, r5, r3
 8003ba6:	08d2      	lsrs	r2, r2, #3
 8003ba8:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003bac:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003bb0:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003bb4:	4613      	mov	r3, r2
 8003bb6:	2b09      	cmp	r3, #9
 8003bb8:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003bbc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003bc0:	dcee      	bgt.n	8003ba0 <_vfprintf_r+0x18f8>
 8003bc2:	3330      	adds	r3, #48	; 0x30
 8003bc4:	3c02      	subs	r4, #2
 8003bc6:	b2db      	uxtb	r3, r3
 8003bc8:	45a4      	cmp	ip, r4
 8003bca:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003bce:	f240 8090 	bls.w	8003cf2 <_vfprintf_r+0x1a4a>
 8003bd2:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003bd6:	4611      	mov	r1, r2
 8003bd8:	e001      	b.n	8003bde <_vfprintf_r+0x1936>
 8003bda:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003bde:	f804 3b01 	strb.w	r3, [r4], #1
 8003be2:	458c      	cmp	ip, r1
 8003be4:	d1f9      	bne.n	8003bda <_vfprintf_r+0x1932>
 8003be6:	ab2a      	add	r3, sp, #168	; 0xa8
 8003be8:	1a9b      	subs	r3, r3, r2
 8003bea:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003bee:	4413      	add	r3, r2
 8003bf0:	f7ff bbe3 	b.w	80033ba <_vfprintf_r+0x1112>
 8003bf4:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003bf6:	4f49      	ldr	r7, [pc, #292]	; (8003d1c <_vfprintf_r+0x1a74>)
 8003bf8:	2b00      	cmp	r3, #0
 8003bfa:	bfb6      	itet	lt
 8003bfc:	222d      	movlt	r2, #45	; 0x2d
 8003bfe:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003c02:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003c06:	4b46      	ldr	r3, [pc, #280]	; (8003d20 <_vfprintf_r+0x1a78>)
 8003c08:	f7fe bf02 	b.w	8002a10 <_vfprintf_r+0x768>
 8003c0c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003c10:	f7ff b8c9 	b.w	8002da6 <_vfprintf_r+0xafe>
 8003c14:	aa28      	add	r2, sp, #160	; 0xa0
 8003c16:	ab25      	add	r3, sp, #148	; 0x94
 8003c18:	e9cd 3200 	strd	r3, r2, [sp]
 8003c1c:	2103      	movs	r1, #3
 8003c1e:	ab24      	add	r3, sp, #144	; 0x90
 8003c20:	464a      	mov	r2, r9
 8003c22:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c26:	9803      	ldr	r0, [sp, #12]
 8003c28:	f000 f9c6 	bl	8003fb8 <_dtoa_r>
 8003c2c:	464d      	mov	r5, r9
 8003c2e:	4607      	mov	r7, r0
 8003c30:	2e46      	cmp	r6, #70	; 0x46
 8003c32:	eb07 0405 	add.w	r4, r7, r5
 8003c36:	f43f af67 	beq.w	8003b08 <_vfprintf_r+0x1860>
 8003c3a:	e76b      	b.n	8003b14 <_vfprintf_r+0x186c>
 8003c3c:	f1b9 0f00 	cmp.w	r9, #0
 8003c40:	d131      	bne.n	8003ca6 <_vfprintf_r+0x19fe>
 8003c42:	07c5      	lsls	r5, r0, #31
 8003c44:	d42f      	bmi.n	8003ca6 <_vfprintf_r+0x19fe>
 8003c46:	2301      	movs	r3, #1
 8003c48:	9304      	str	r3, [sp, #16]
 8003c4a:	9309      	str	r3, [sp, #36]	; 0x24
 8003c4c:	2666      	movs	r6, #102	; 0x66
 8003c4e:	e642      	b.n	80038d6 <_vfprintf_r+0x162e>
 8003c50:	07c3      	lsls	r3, r0, #31
 8003c52:	f57f abbf 	bpl.w	80033d4 <_vfprintf_r+0x112c>
 8003c56:	f7ff bbb9 	b.w	80033cc <_vfprintf_r+0x1124>
 8003c5a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003c5c:	f1c3 0301 	rsb	r3, r3, #1
 8003c60:	441a      	add	r2, r3
 8003c62:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003c66:	9209      	str	r2, [sp, #36]	; 0x24
 8003c68:	9304      	str	r3, [sp, #16]
 8003c6a:	2667      	movs	r6, #103	; 0x67
 8003c6c:	e633      	b.n	80038d6 <_vfprintf_r+0x162e>
 8003c6e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003c72:	f04f 0901 	mov.w	r9, #1
 8003c76:	e457      	b.n	8003528 <_vfprintf_r+0x1280>
 8003c78:	465a      	mov	r2, fp
 8003c7a:	e511      	b.n	80036a0 <_vfprintf_r+0x13f8>
 8003c7c:	2e47      	cmp	r6, #71	; 0x47
 8003c7e:	f47f af5e 	bne.w	8003b3e <_vfprintf_r+0x1896>
 8003c82:	f018 0f01 	tst.w	r8, #1
 8003c86:	f43f ab61 	beq.w	800334c <_vfprintf_r+0x10a4>
 8003c8a:	e7d1      	b.n	8003c30 <_vfprintf_r+0x1988>
 8003c8c:	2200      	movs	r2, #0
 8003c8e:	2300      	movs	r3, #0
 8003c90:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003c94:	f7fd f9b8 	bl	8001008 <__aeabi_dcmpeq>
 8003c98:	2800      	cmp	r0, #0
 8003c9a:	f47f af39 	bne.w	8003b10 <_vfprintf_r+0x1868>
 8003c9e:	f1c5 0501 	rsb	r5, r5, #1
 8003ca2:	9524      	str	r5, [sp, #144]	; 0x90
 8003ca4:	e735      	b.n	8003b12 <_vfprintf_r+0x186a>
 8003ca6:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003ca8:	3301      	adds	r3, #1
 8003caa:	444b      	add	r3, r9
 8003cac:	9309      	str	r3, [sp, #36]	; 0x24
 8003cae:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003cb2:	9304      	str	r3, [sp, #16]
 8003cb4:	2666      	movs	r6, #102	; 0x66
 8003cb6:	e60e      	b.n	80038d6 <_vfprintf_r+0x162e>
 8003cb8:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003cbc:	f7ff bb7a 	b.w	80033b4 <_vfprintf_r+0x110c>
 8003cc0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cc2:	9907      	ldr	r1, [sp, #28]
 8003cc4:	9803      	ldr	r0, [sp, #12]
 8003cc6:	f002 fe1d 	bl	8006904 <__sprint_r>
 8003cca:	2800      	cmp	r0, #0
 8003ccc:	f47f a864 	bne.w	8002d98 <_vfprintf_r+0xaf0>
 8003cd0:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003cd4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003cd8:	f7ff bbbd 	b.w	8003456 <_vfprintf_r+0x11ae>
 8003cdc:	9908      	ldr	r1, [sp, #32]
 8003cde:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003ce2:	680b      	ldr	r3, [r1, #0]
 8003ce4:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003ce8:	1d0b      	adds	r3, r1, #4
 8003cea:	4692      	mov	sl, r2
 8003cec:	9308      	str	r3, [sp, #32]
 8003cee:	f7fe bb59 	b.w	80023a4 <_vfprintf_r+0xfc>
 8003cf2:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003cf6:	f7ff bb60 	b.w	80033ba <_vfprintf_r+0x1112>
 8003cfa:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003cfe:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003d02:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003d06:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003d0a:	f7ff b84c 	b.w	8002da6 <_vfprintf_r+0xafe>
 8003d0e:	bf00      	nop
 8003d10:	08007000 	.word	0x08007000
 8003d14:	08006fd0 	.word	0x08006fd0
 8003d18:	cccccccd 	.word	0xcccccccd
 8003d1c:	08006fb8 	.word	0x08006fb8
 8003d20:	08006fb4 	.word	0x08006fb4

08003d24 <__sbprintf>:
 8003d24:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003d28:	460c      	mov	r4, r1
 8003d2a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003d2e:	8989      	ldrh	r1, [r1, #12]
 8003d30:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003d32:	89e5      	ldrh	r5, [r4, #14]
 8003d34:	9619      	str	r6, [sp, #100]	; 0x64
 8003d36:	f021 0102 	bic.w	r1, r1, #2
 8003d3a:	4606      	mov	r6, r0
 8003d3c:	69e0      	ldr	r0, [r4, #28]
 8003d3e:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003d42:	4617      	mov	r7, r2
 8003d44:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003d48:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003d4a:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003d4e:	4698      	mov	r8, r3
 8003d50:	ad1a      	add	r5, sp, #104	; 0x68
 8003d52:	2300      	movs	r3, #0
 8003d54:	9007      	str	r0, [sp, #28]
 8003d56:	a816      	add	r0, sp, #88	; 0x58
 8003d58:	9209      	str	r2, [sp, #36]	; 0x24
 8003d5a:	9306      	str	r3, [sp, #24]
 8003d5c:	9500      	str	r5, [sp, #0]
 8003d5e:	9504      	str	r5, [sp, #16]
 8003d60:	9102      	str	r1, [sp, #8]
 8003d62:	9105      	str	r1, [sp, #20]
 8003d64:	f001 fc8a 	bl	800567c <__retarget_lock_init_recursive>
 8003d68:	4643      	mov	r3, r8
 8003d6a:	463a      	mov	r2, r7
 8003d6c:	4669      	mov	r1, sp
 8003d6e:	4630      	mov	r0, r6
 8003d70:	f7fe fa9a 	bl	80022a8 <_vfprintf_r>
 8003d74:	1e05      	subs	r5, r0, #0
 8003d76:	db07      	blt.n	8003d88 <__sbprintf+0x64>
 8003d78:	4630      	mov	r0, r6
 8003d7a:	4669      	mov	r1, sp
 8003d7c:	f001 f8d6 	bl	8004f2c <_fflush_r>
 8003d80:	2800      	cmp	r0, #0
 8003d82:	bf18      	it	ne
 8003d84:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003d88:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003d8c:	065b      	lsls	r3, r3, #25
 8003d8e:	d503      	bpl.n	8003d98 <__sbprintf+0x74>
 8003d90:	89a3      	ldrh	r3, [r4, #12]
 8003d92:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003d96:	81a3      	strh	r3, [r4, #12]
 8003d98:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003d9a:	f001 fc71 	bl	8005680 <__retarget_lock_close_recursive>
 8003d9e:	4628      	mov	r0, r5
 8003da0:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003da4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003da8 <__swsetup_r>:
 8003da8:	b538      	push	{r3, r4, r5, lr}
 8003daa:	4b31      	ldr	r3, [pc, #196]	; (8003e70 <__swsetup_r+0xc8>)
 8003dac:	681b      	ldr	r3, [r3, #0]
 8003dae:	4605      	mov	r5, r0
 8003db0:	460c      	mov	r4, r1
 8003db2:	b113      	cbz	r3, 8003dba <__swsetup_r+0x12>
 8003db4:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003db6:	2a00      	cmp	r2, #0
 8003db8:	d03a      	beq.n	8003e30 <__swsetup_r+0x88>
 8003dba:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003dbe:	b293      	uxth	r3, r2
 8003dc0:	0718      	lsls	r0, r3, #28
 8003dc2:	d50c      	bpl.n	8003dde <__swsetup_r+0x36>
 8003dc4:	6920      	ldr	r0, [r4, #16]
 8003dc6:	b1a8      	cbz	r0, 8003df4 <__swsetup_r+0x4c>
 8003dc8:	f013 0201 	ands.w	r2, r3, #1
 8003dcc:	d020      	beq.n	8003e10 <__swsetup_r+0x68>
 8003dce:	6963      	ldr	r3, [r4, #20]
 8003dd0:	2200      	movs	r2, #0
 8003dd2:	425b      	negs	r3, r3
 8003dd4:	61a3      	str	r3, [r4, #24]
 8003dd6:	60a2      	str	r2, [r4, #8]
 8003dd8:	b300      	cbz	r0, 8003e1c <__swsetup_r+0x74>
 8003dda:	2000      	movs	r0, #0
 8003ddc:	bd38      	pop	{r3, r4, r5, pc}
 8003dde:	06d9      	lsls	r1, r3, #27
 8003de0:	d53e      	bpl.n	8003e60 <__swsetup_r+0xb8>
 8003de2:	0758      	lsls	r0, r3, #29
 8003de4:	d428      	bmi.n	8003e38 <__swsetup_r+0x90>
 8003de6:	6920      	ldr	r0, [r4, #16]
 8003de8:	f042 0308 	orr.w	r3, r2, #8
 8003dec:	81a3      	strh	r3, [r4, #12]
 8003dee:	b29b      	uxth	r3, r3
 8003df0:	2800      	cmp	r0, #0
 8003df2:	d1e9      	bne.n	8003dc8 <__swsetup_r+0x20>
 8003df4:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003df8:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003dfc:	d0e4      	beq.n	8003dc8 <__swsetup_r+0x20>
 8003dfe:	4628      	mov	r0, r5
 8003e00:	4621      	mov	r1, r4
 8003e02:	f001 fc71 	bl	80056e8 <__smakebuf_r>
 8003e06:	89a3      	ldrh	r3, [r4, #12]
 8003e08:	6920      	ldr	r0, [r4, #16]
 8003e0a:	f013 0201 	ands.w	r2, r3, #1
 8003e0e:	d1de      	bne.n	8003dce <__swsetup_r+0x26>
 8003e10:	0799      	lsls	r1, r3, #30
 8003e12:	bf58      	it	pl
 8003e14:	6962      	ldrpl	r2, [r4, #20]
 8003e16:	60a2      	str	r2, [r4, #8]
 8003e18:	2800      	cmp	r0, #0
 8003e1a:	d1de      	bne.n	8003dda <__swsetup_r+0x32>
 8003e1c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003e20:	061a      	lsls	r2, r3, #24
 8003e22:	d5db      	bpl.n	8003ddc <__swsetup_r+0x34>
 8003e24:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003e28:	81a3      	strh	r3, [r4, #12]
 8003e2a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003e2e:	bd38      	pop	{r3, r4, r5, pc}
 8003e30:	4618      	mov	r0, r3
 8003e32:	f001 f8d7 	bl	8004fe4 <__sinit>
 8003e36:	e7c0      	b.n	8003dba <__swsetup_r+0x12>
 8003e38:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8003e3a:	b151      	cbz	r1, 8003e52 <__swsetup_r+0xaa>
 8003e3c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8003e40:	4299      	cmp	r1, r3
 8003e42:	d004      	beq.n	8003e4e <__swsetup_r+0xa6>
 8003e44:	4628      	mov	r0, r5
 8003e46:	f001 f96f 	bl	8005128 <_free_r>
 8003e4a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003e4e:	2300      	movs	r3, #0
 8003e50:	6323      	str	r3, [r4, #48]	; 0x30
 8003e52:	2300      	movs	r3, #0
 8003e54:	6920      	ldr	r0, [r4, #16]
 8003e56:	6063      	str	r3, [r4, #4]
 8003e58:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8003e5c:	6020      	str	r0, [r4, #0]
 8003e5e:	e7c3      	b.n	8003de8 <__swsetup_r+0x40>
 8003e60:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8003e64:	2309      	movs	r3, #9
 8003e66:	602b      	str	r3, [r5, #0]
 8003e68:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003e6c:	81a2      	strh	r2, [r4, #12]
 8003e6e:	bd38      	pop	{r3, r4, r5, pc}
 8003e70:	20000018 	.word	0x20000018

08003e74 <register_fini>:
 8003e74:	4b02      	ldr	r3, [pc, #8]	; (8003e80 <register_fini+0xc>)
 8003e76:	b113      	cbz	r3, 8003e7e <register_fini+0xa>
 8003e78:	4802      	ldr	r0, [pc, #8]	; (8003e84 <register_fini+0x10>)
 8003e7a:	f000 b805 	b.w	8003e88 <atexit>
 8003e7e:	4770      	bx	lr
 8003e80:	00000000 	.word	0x00000000
 8003e84:	08005055 	.word	0x08005055

08003e88 <atexit>:
 8003e88:	2300      	movs	r3, #0
 8003e8a:	4601      	mov	r1, r0
 8003e8c:	461a      	mov	r2, r3
 8003e8e:	4618      	mov	r0, r3
 8003e90:	f002 bd58 	b.w	8006944 <__register_exitproc>

08003e94 <quorem>:
 8003e94:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003e98:	6903      	ldr	r3, [r0, #16]
 8003e9a:	690f      	ldr	r7, [r1, #16]
 8003e9c:	42bb      	cmp	r3, r7
 8003e9e:	b083      	sub	sp, #12
 8003ea0:	f2c0 8086 	blt.w	8003fb0 <quorem+0x11c>
 8003ea4:	3f01      	subs	r7, #1
 8003ea6:	f101 0914 	add.w	r9, r1, #20
 8003eaa:	f100 0a14 	add.w	sl, r0, #20
 8003eae:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8003eb2:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8003eb6:	00bc      	lsls	r4, r7, #2
 8003eb8:	3201      	adds	r2, #1
 8003eba:	fbb3 f8f2 	udiv	r8, r3, r2
 8003ebe:	eb0a 0304 	add.w	r3, sl, r4
 8003ec2:	9400      	str	r4, [sp, #0]
 8003ec4:	eb09 0b04 	add.w	fp, r9, r4
 8003ec8:	9301      	str	r3, [sp, #4]
 8003eca:	f1b8 0f00 	cmp.w	r8, #0
 8003ece:	d038      	beq.n	8003f42 <quorem+0xae>
 8003ed0:	2500      	movs	r5, #0
 8003ed2:	462e      	mov	r6, r5
 8003ed4:	46ce      	mov	lr, r9
 8003ed6:	46d4      	mov	ip, sl
 8003ed8:	f85e 4b04 	ldr.w	r4, [lr], #4
 8003edc:	f8dc 3000 	ldr.w	r3, [ip]
 8003ee0:	b2a2      	uxth	r2, r4
 8003ee2:	fb08 5502 	mla	r5, r8, r2, r5
 8003ee6:	0c22      	lsrs	r2, r4, #16
 8003ee8:	0c2c      	lsrs	r4, r5, #16
 8003eea:	fb08 4202 	mla	r2, r8, r2, r4
 8003eee:	b2ad      	uxth	r5, r5
 8003ef0:	1b75      	subs	r5, r6, r5
 8003ef2:	b296      	uxth	r6, r2
 8003ef4:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8003ef8:	fa15 f383 	uxtah	r3, r5, r3
 8003efc:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8003f00:	b29b      	uxth	r3, r3
 8003f02:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8003f06:	45f3      	cmp	fp, lr
 8003f08:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8003f0c:	f84c 3b04 	str.w	r3, [ip], #4
 8003f10:	ea4f 4626 	mov.w	r6, r6, asr #16
 8003f14:	d2e0      	bcs.n	8003ed8 <quorem+0x44>
 8003f16:	9b00      	ldr	r3, [sp, #0]
 8003f18:	f85a 3003 	ldr.w	r3, [sl, r3]
 8003f1c:	b98b      	cbnz	r3, 8003f42 <quorem+0xae>
 8003f1e:	9a01      	ldr	r2, [sp, #4]
 8003f20:	1f13      	subs	r3, r2, #4
 8003f22:	459a      	cmp	sl, r3
 8003f24:	d20c      	bcs.n	8003f40 <quorem+0xac>
 8003f26:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8003f2a:	b94b      	cbnz	r3, 8003f40 <quorem+0xac>
 8003f2c:	f1a2 0308 	sub.w	r3, r2, #8
 8003f30:	e002      	b.n	8003f38 <quorem+0xa4>
 8003f32:	681a      	ldr	r2, [r3, #0]
 8003f34:	3b04      	subs	r3, #4
 8003f36:	b91a      	cbnz	r2, 8003f40 <quorem+0xac>
 8003f38:	459a      	cmp	sl, r3
 8003f3a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8003f3e:	d3f8      	bcc.n	8003f32 <quorem+0x9e>
 8003f40:	6107      	str	r7, [r0, #16]
 8003f42:	4604      	mov	r4, r0
 8003f44:	f002 f944 	bl	80061d0 <__mcmp>
 8003f48:	2800      	cmp	r0, #0
 8003f4a:	db2d      	blt.n	8003fa8 <quorem+0x114>
 8003f4c:	f108 0801 	add.w	r8, r8, #1
 8003f50:	4655      	mov	r5, sl
 8003f52:	2300      	movs	r3, #0
 8003f54:	f859 1b04 	ldr.w	r1, [r9], #4
 8003f58:	6828      	ldr	r0, [r5, #0]
 8003f5a:	b28a      	uxth	r2, r1
 8003f5c:	1a9a      	subs	r2, r3, r2
 8003f5e:	0c0b      	lsrs	r3, r1, #16
 8003f60:	fa12 f280 	uxtah	r2, r2, r0
 8003f64:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8003f68:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8003f6c:	b292      	uxth	r2, r2
 8003f6e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8003f72:	45cb      	cmp	fp, r9
 8003f74:	f845 2b04 	str.w	r2, [r5], #4
 8003f78:	ea4f 4323 	mov.w	r3, r3, asr #16
 8003f7c:	d2ea      	bcs.n	8003f54 <quorem+0xc0>
 8003f7e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8003f82:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8003f86:	b97a      	cbnz	r2, 8003fa8 <quorem+0x114>
 8003f88:	1f1a      	subs	r2, r3, #4
 8003f8a:	4592      	cmp	sl, r2
 8003f8c:	d20b      	bcs.n	8003fa6 <quorem+0x112>
 8003f8e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8003f92:	b942      	cbnz	r2, 8003fa6 <quorem+0x112>
 8003f94:	3b08      	subs	r3, #8
 8003f96:	e002      	b.n	8003f9e <quorem+0x10a>
 8003f98:	681a      	ldr	r2, [r3, #0]
 8003f9a:	3b04      	subs	r3, #4
 8003f9c:	b91a      	cbnz	r2, 8003fa6 <quorem+0x112>
 8003f9e:	459a      	cmp	sl, r3
 8003fa0:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8003fa4:	d3f8      	bcc.n	8003f98 <quorem+0x104>
 8003fa6:	6127      	str	r7, [r4, #16]
 8003fa8:	4640      	mov	r0, r8
 8003faa:	b003      	add	sp, #12
 8003fac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003fb0:	2000      	movs	r0, #0
 8003fb2:	b003      	add	sp, #12
 8003fb4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08003fb8 <_dtoa_r>:
 8003fb8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003fbc:	ec55 4b10 	vmov	r4, r5, d0
 8003fc0:	b09b      	sub	sp, #108	; 0x6c
 8003fc2:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8003fc4:	9102      	str	r1, [sp, #8]
 8003fc6:	4681      	mov	r9, r0
 8003fc8:	9207      	str	r2, [sp, #28]
 8003fca:	9305      	str	r3, [sp, #20]
 8003fcc:	e9cd 4500 	strd	r4, r5, [sp]
 8003fd0:	b156      	cbz	r6, 8003fe8 <_dtoa_r+0x30>
 8003fd2:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8003fd4:	6072      	str	r2, [r6, #4]
 8003fd6:	2301      	movs	r3, #1
 8003fd8:	4093      	lsls	r3, r2
 8003fda:	60b3      	str	r3, [r6, #8]
 8003fdc:	4631      	mov	r1, r6
 8003fde:	f001 ff07 	bl	8005df0 <_Bfree>
 8003fe2:	2300      	movs	r3, #0
 8003fe4:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8003fe8:	f1b5 0800 	subs.w	r8, r5, #0
 8003fec:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8003fee:	bfb4      	ite	lt
 8003ff0:	2301      	movlt	r3, #1
 8003ff2:	2300      	movge	r3, #0
 8003ff4:	6013      	str	r3, [r2, #0]
 8003ff6:	4b76      	ldr	r3, [pc, #472]	; (80041d0 <_dtoa_r+0x218>)
 8003ff8:	bfbc      	itt	lt
 8003ffa:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8003ffe:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004002:	ea33 0308 	bics.w	r3, r3, r8
 8004006:	f000 80a6 	beq.w	8004156 <_dtoa_r+0x19e>
 800400a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800400e:	2200      	movs	r2, #0
 8004010:	2300      	movs	r3, #0
 8004012:	4630      	mov	r0, r6
 8004014:	4639      	mov	r1, r7
 8004016:	f7fc fff7 	bl	8001008 <__aeabi_dcmpeq>
 800401a:	4605      	mov	r5, r0
 800401c:	b178      	cbz	r0, 800403e <_dtoa_r+0x86>
 800401e:	9a05      	ldr	r2, [sp, #20]
 8004020:	2301      	movs	r3, #1
 8004022:	6013      	str	r3, [r2, #0]
 8004024:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004026:	2b00      	cmp	r3, #0
 8004028:	f000 80c0 	beq.w	80041ac <_dtoa_r+0x1f4>
 800402c:	4b69      	ldr	r3, [pc, #420]	; (80041d4 <_dtoa_r+0x21c>)
 800402e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004030:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004034:	6013      	str	r3, [r2, #0]
 8004036:	4658      	mov	r0, fp
 8004038:	b01b      	add	sp, #108	; 0x6c
 800403a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800403e:	aa18      	add	r2, sp, #96	; 0x60
 8004040:	a919      	add	r1, sp, #100	; 0x64
 8004042:	ec47 6b10 	vmov	d0, r6, r7
 8004046:	4648      	mov	r0, r9
 8004048:	f002 f954 	bl	80062f4 <__d2b>
 800404c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004050:	4682      	mov	sl, r0
 8004052:	f040 80a0 	bne.w	8004196 <_dtoa_r+0x1de>
 8004056:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800405a:	442c      	add	r4, r5
 800405c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004060:	2b20      	cmp	r3, #32
 8004062:	f340 842c 	ble.w	80048be <_dtoa_r+0x906>
 8004066:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800406a:	fa08 f803 	lsl.w	r8, r8, r3
 800406e:	9b00      	ldr	r3, [sp, #0]
 8004070:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004074:	fa23 f000 	lsr.w	r0, r3, r0
 8004078:	ea48 0000 	orr.w	r0, r8, r0
 800407c:	f7fc fce2 	bl	8000a44 <__aeabi_ui2d>
 8004080:	2301      	movs	r3, #1
 8004082:	4606      	mov	r6, r0
 8004084:	3c01      	subs	r4, #1
 8004086:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800408a:	930f      	str	r3, [sp, #60]	; 0x3c
 800408c:	4630      	mov	r0, r6
 800408e:	4639      	mov	r1, r7
 8004090:	2200      	movs	r2, #0
 8004092:	4b51      	ldr	r3, [pc, #324]	; (80041d8 <_dtoa_r+0x220>)
 8004094:	f7fc fb98 	bl	80007c8 <__aeabi_dsub>
 8004098:	a347      	add	r3, pc, #284	; (adr r3, 80041b8 <_dtoa_r+0x200>)
 800409a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800409e:	f7fc fd4b 	bl	8000b38 <__aeabi_dmul>
 80040a2:	a347      	add	r3, pc, #284	; (adr r3, 80041c0 <_dtoa_r+0x208>)
 80040a4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040a8:	f7fc fb90 	bl	80007cc <__adddf3>
 80040ac:	4606      	mov	r6, r0
 80040ae:	4620      	mov	r0, r4
 80040b0:	460f      	mov	r7, r1
 80040b2:	f7fc fcd7 	bl	8000a64 <__aeabi_i2d>
 80040b6:	a344      	add	r3, pc, #272	; (adr r3, 80041c8 <_dtoa_r+0x210>)
 80040b8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040bc:	f7fc fd3c 	bl	8000b38 <__aeabi_dmul>
 80040c0:	4602      	mov	r2, r0
 80040c2:	460b      	mov	r3, r1
 80040c4:	4630      	mov	r0, r6
 80040c6:	4639      	mov	r1, r7
 80040c8:	f7fc fb80 	bl	80007cc <__adddf3>
 80040cc:	4606      	mov	r6, r0
 80040ce:	460f      	mov	r7, r1
 80040d0:	f7fc ffe2 	bl	8001098 <__aeabi_d2iz>
 80040d4:	2200      	movs	r2, #0
 80040d6:	9006      	str	r0, [sp, #24]
 80040d8:	2300      	movs	r3, #0
 80040da:	4630      	mov	r0, r6
 80040dc:	4639      	mov	r1, r7
 80040de:	f7fc ff9d 	bl	800101c <__aeabi_dcmplt>
 80040e2:	2800      	cmp	r0, #0
 80040e4:	f040 8273 	bne.w	80045ce <_dtoa_r+0x616>
 80040e8:	9e06      	ldr	r6, [sp, #24]
 80040ea:	2e16      	cmp	r6, #22
 80040ec:	f200 825d 	bhi.w	80045aa <_dtoa_r+0x5f2>
 80040f0:	4b3a      	ldr	r3, [pc, #232]	; (80041dc <_dtoa_r+0x224>)
 80040f2:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80040f6:	e9d3 0100 	ldrd	r0, r1, [r3]
 80040fa:	e9dd 2300 	ldrd	r2, r3, [sp]
 80040fe:	f7fc ffab 	bl	8001058 <__aeabi_dcmpgt>
 8004102:	2800      	cmp	r0, #0
 8004104:	f000 83d7 	beq.w	80048b6 <_dtoa_r+0x8fe>
 8004108:	1e73      	subs	r3, r6, #1
 800410a:	9306      	str	r3, [sp, #24]
 800410c:	2300      	movs	r3, #0
 800410e:	930d      	str	r3, [sp, #52]	; 0x34
 8004110:	1b2c      	subs	r4, r5, r4
 8004112:	f1b4 0801 	subs.w	r8, r4, #1
 8004116:	f100 8254 	bmi.w	80045c2 <_dtoa_r+0x60a>
 800411a:	2300      	movs	r3, #0
 800411c:	9308      	str	r3, [sp, #32]
 800411e:	9b06      	ldr	r3, [sp, #24]
 8004120:	2b00      	cmp	r3, #0
 8004122:	f2c0 8245 	blt.w	80045b0 <_dtoa_r+0x5f8>
 8004126:	4498      	add	r8, r3
 8004128:	930c      	str	r3, [sp, #48]	; 0x30
 800412a:	2300      	movs	r3, #0
 800412c:	930b      	str	r3, [sp, #44]	; 0x2c
 800412e:	9b02      	ldr	r3, [sp, #8]
 8004130:	2b09      	cmp	r3, #9
 8004132:	d85b      	bhi.n	80041ec <_dtoa_r+0x234>
 8004134:	2b05      	cmp	r3, #5
 8004136:	f340 83c0 	ble.w	80048ba <_dtoa_r+0x902>
 800413a:	3b04      	subs	r3, #4
 800413c:	9302      	str	r3, [sp, #8]
 800413e:	2500      	movs	r5, #0
 8004140:	9b02      	ldr	r3, [sp, #8]
 8004142:	3b02      	subs	r3, #2
 8004144:	2b03      	cmp	r3, #3
 8004146:	f200 8498 	bhi.w	8004a7a <_dtoa_r+0xac2>
 800414a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800414e:	03df      	.short	0x03df
 8004150:	03e803bf 	.word	0x03e803bf
 8004154:	04f5      	.short	0x04f5
 8004156:	9a05      	ldr	r2, [sp, #20]
 8004158:	f242 730f 	movw	r3, #9999	; 0x270f
 800415c:	6013      	str	r3, [r2, #0]
 800415e:	9b00      	ldr	r3, [sp, #0]
 8004160:	b983      	cbnz	r3, 8004184 <_dtoa_r+0x1cc>
 8004162:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004166:	b96b      	cbnz	r3, 8004184 <_dtoa_r+0x1cc>
 8004168:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800416a:	f8df b074 	ldr.w	fp, [pc, #116]	; 80041e0 <_dtoa_r+0x228>
 800416e:	2b00      	cmp	r3, #0
 8004170:	f43f af61 	beq.w	8004036 <_dtoa_r+0x7e>
 8004174:	f10b 0308 	add.w	r3, fp, #8
 8004178:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800417a:	4658      	mov	r0, fp
 800417c:	6013      	str	r3, [r2, #0]
 800417e:	b01b      	add	sp, #108	; 0x6c
 8004180:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004184:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004186:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80041e4 <_dtoa_r+0x22c>
 800418a:	2b00      	cmp	r3, #0
 800418c:	f43f af53 	beq.w	8004036 <_dtoa_r+0x7e>
 8004190:	f10b 0303 	add.w	r3, fp, #3
 8004194:	e7f0      	b.n	8004178 <_dtoa_r+0x1c0>
 8004196:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800419a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800419e:	950f      	str	r5, [sp, #60]	; 0x3c
 80041a0:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 80041a4:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 80041a8:	9d18      	ldr	r5, [sp, #96]	; 0x60
 80041aa:	e76f      	b.n	800408c <_dtoa_r+0xd4>
 80041ac:	f8df b038 	ldr.w	fp, [pc, #56]	; 80041e8 <_dtoa_r+0x230>
 80041b0:	4658      	mov	r0, fp
 80041b2:	b01b      	add	sp, #108	; 0x6c
 80041b4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80041b8:	636f4361 	.word	0x636f4361
 80041bc:	3fd287a7 	.word	0x3fd287a7
 80041c0:	8b60c8b3 	.word	0x8b60c8b3
 80041c4:	3fc68a28 	.word	0x3fc68a28
 80041c8:	509f79fb 	.word	0x509f79fb
 80041cc:	3fd34413 	.word	0x3fd34413
 80041d0:	7ff00000 	.word	0x7ff00000
 80041d4:	08006fed 	.word	0x08006fed
 80041d8:	3ff80000 	.word	0x3ff80000
 80041dc:	08007048 	.word	0x08007048
 80041e0:	08007010 	.word	0x08007010
 80041e4:	0800701c 	.word	0x0800701c
 80041e8:	08006fec 	.word	0x08006fec
 80041ec:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80041f0:	2501      	movs	r5, #1
 80041f2:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80041f6:	2300      	movs	r3, #0
 80041f8:	9302      	str	r3, [sp, #8]
 80041fa:	9307      	str	r3, [sp, #28]
 80041fc:	2100      	movs	r1, #0
 80041fe:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004202:	940e      	str	r4, [sp, #56]	; 0x38
 8004204:	4648      	mov	r0, r9
 8004206:	f001 fdcd 	bl	8005da4 <_Balloc>
 800420a:	2c0e      	cmp	r4, #14
 800420c:	4683      	mov	fp, r0
 800420e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004212:	f200 80fb 	bhi.w	800440c <_dtoa_r+0x454>
 8004216:	2d00      	cmp	r5, #0
 8004218:	f000 80f8 	beq.w	800440c <_dtoa_r+0x454>
 800421c:	ed9d 7b00 	vldr	d7, [sp]
 8004220:	9906      	ldr	r1, [sp, #24]
 8004222:	2900      	cmp	r1, #0
 8004224:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004228:	f340 83e5 	ble.w	80049f6 <_dtoa_r+0xa3e>
 800422c:	4b9d      	ldr	r3, [pc, #628]	; (80044a4 <_dtoa_r+0x4ec>)
 800422e:	f001 020f 	and.w	r2, r1, #15
 8004232:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004236:	ed93 7b00 	vldr	d7, [r3]
 800423a:	110c      	asrs	r4, r1, #4
 800423c:	06e2      	lsls	r2, r4, #27
 800423e:	ed8d 7b00 	vstr	d7, [sp]
 8004242:	f140 849e 	bpl.w	8004b82 <_dtoa_r+0xbca>
 8004246:	4b98      	ldr	r3, [pc, #608]	; (80044a8 <_dtoa_r+0x4f0>)
 8004248:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800424c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004250:	f7fc fd9c 	bl	8000d8c <__aeabi_ddiv>
 8004254:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004258:	f004 040f 	and.w	r4, r4, #15
 800425c:	2603      	movs	r6, #3
 800425e:	b17c      	cbz	r4, 8004280 <_dtoa_r+0x2c8>
 8004260:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004264:	4d90      	ldr	r5, [pc, #576]	; (80044a8 <_dtoa_r+0x4f0>)
 8004266:	07e3      	lsls	r3, r4, #31
 8004268:	d504      	bpl.n	8004274 <_dtoa_r+0x2bc>
 800426a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800426e:	f7fc fc63 	bl	8000b38 <__aeabi_dmul>
 8004272:	3601      	adds	r6, #1
 8004274:	1064      	asrs	r4, r4, #1
 8004276:	f105 0508 	add.w	r5, r5, #8
 800427a:	d1f4      	bne.n	8004266 <_dtoa_r+0x2ae>
 800427c:	e9cd 0100 	strd	r0, r1, [sp]
 8004280:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004284:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004288:	f7fc fd80 	bl	8000d8c <__aeabi_ddiv>
 800428c:	e9cd 0100 	strd	r0, r1, [sp]
 8004290:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004292:	b143      	cbz	r3, 80042a6 <_dtoa_r+0x2ee>
 8004294:	2200      	movs	r2, #0
 8004296:	4b85      	ldr	r3, [pc, #532]	; (80044ac <_dtoa_r+0x4f4>)
 8004298:	e9dd 0100 	ldrd	r0, r1, [sp]
 800429c:	f7fc febe 	bl	800101c <__aeabi_dcmplt>
 80042a0:	2800      	cmp	r0, #0
 80042a2:	f040 84ff 	bne.w	8004ca4 <_dtoa_r+0xcec>
 80042a6:	4630      	mov	r0, r6
 80042a8:	f7fc fbdc 	bl	8000a64 <__aeabi_i2d>
 80042ac:	e9dd 2300 	ldrd	r2, r3, [sp]
 80042b0:	f7fc fc42 	bl	8000b38 <__aeabi_dmul>
 80042b4:	4b7e      	ldr	r3, [pc, #504]	; (80044b0 <_dtoa_r+0x4f8>)
 80042b6:	2200      	movs	r2, #0
 80042b8:	f7fc fa88 	bl	80007cc <__adddf3>
 80042bc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80042be:	4606      	mov	r6, r0
 80042c0:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80042c4:	2b00      	cmp	r3, #0
 80042c6:	f000 841c 	beq.w	8004b02 <_dtoa_r+0xb4a>
 80042ca:	9b06      	ldr	r3, [sp, #24]
 80042cc:	9316      	str	r3, [sp, #88]	; 0x58
 80042ce:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80042d0:	9312      	str	r3, [sp, #72]	; 0x48
 80042d2:	e9dd 0100 	ldrd	r0, r1, [sp]
 80042d6:	f7fc fedf 	bl	8001098 <__aeabi_d2iz>
 80042da:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80042dc:	4b71      	ldr	r3, [pc, #452]	; (80044a4 <_dtoa_r+0x4ec>)
 80042de:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80042e2:	ed13 7b02 	vldr	d7, [r3, #-8]
 80042e6:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80042ea:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80042ee:	f7fc fbb9 	bl	8000a64 <__aeabi_i2d>
 80042f2:	460b      	mov	r3, r1
 80042f4:	4602      	mov	r2, r0
 80042f6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80042fa:	e9cd 6700 	strd	r6, r7, [sp]
 80042fe:	f7fc fa63 	bl	80007c8 <__aeabi_dsub>
 8004302:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004304:	b2ed      	uxtb	r5, r5
 8004306:	4606      	mov	r6, r0
 8004308:	460f      	mov	r7, r1
 800430a:	f10b 0401 	add.w	r4, fp, #1
 800430e:	2b00      	cmp	r3, #0
 8004310:	f000 8458 	beq.w	8004bc4 <_dtoa_r+0xc0c>
 8004314:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004318:	2000      	movs	r0, #0
 800431a:	4966      	ldr	r1, [pc, #408]	; (80044b4 <_dtoa_r+0x4fc>)
 800431c:	f7fc fd36 	bl	8000d8c <__aeabi_ddiv>
 8004320:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004324:	f7fc fa50 	bl	80007c8 <__aeabi_dsub>
 8004328:	f88b 5000 	strb.w	r5, [fp]
 800432c:	4632      	mov	r2, r6
 800432e:	463b      	mov	r3, r7
 8004330:	e9cd 0100 	strd	r0, r1, [sp]
 8004334:	f7fc fe90 	bl	8001058 <__aeabi_dcmpgt>
 8004338:	2800      	cmp	r0, #0
 800433a:	f040 8502 	bne.w	8004d42 <_dtoa_r+0xd8a>
 800433e:	4632      	mov	r2, r6
 8004340:	463b      	mov	r3, r7
 8004342:	2000      	movs	r0, #0
 8004344:	4959      	ldr	r1, [pc, #356]	; (80044ac <_dtoa_r+0x4f4>)
 8004346:	f7fc fa3f 	bl	80007c8 <__aeabi_dsub>
 800434a:	4602      	mov	r2, r0
 800434c:	460b      	mov	r3, r1
 800434e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004352:	f7fc fe81 	bl	8001058 <__aeabi_dcmpgt>
 8004356:	2800      	cmp	r0, #0
 8004358:	f040 84fb 	bne.w	8004d52 <_dtoa_r+0xd9a>
 800435c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800435e:	2a01      	cmp	r2, #1
 8004360:	d050      	beq.n	8004404 <_dtoa_r+0x44c>
 8004362:	445a      	add	r2, fp
 8004364:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004368:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 800436c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004370:	4692      	mov	sl, r2
 8004372:	46cb      	mov	fp, r9
 8004374:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004378:	e00c      	b.n	8004394 <_dtoa_r+0x3dc>
 800437a:	2000      	movs	r0, #0
 800437c:	494b      	ldr	r1, [pc, #300]	; (80044ac <_dtoa_r+0x4f4>)
 800437e:	f7fc fa23 	bl	80007c8 <__aeabi_dsub>
 8004382:	4642      	mov	r2, r8
 8004384:	464b      	mov	r3, r9
 8004386:	f7fc fe49 	bl	800101c <__aeabi_dcmplt>
 800438a:	2800      	cmp	r0, #0
 800438c:	f040 84dc 	bne.w	8004d48 <_dtoa_r+0xd90>
 8004390:	4554      	cmp	r4, sl
 8004392:	d030      	beq.n	80043f6 <_dtoa_r+0x43e>
 8004394:	4640      	mov	r0, r8
 8004396:	4649      	mov	r1, r9
 8004398:	2200      	movs	r2, #0
 800439a:	4b47      	ldr	r3, [pc, #284]	; (80044b8 <_dtoa_r+0x500>)
 800439c:	f7fc fbcc 	bl	8000b38 <__aeabi_dmul>
 80043a0:	2200      	movs	r2, #0
 80043a2:	4b45      	ldr	r3, [pc, #276]	; (80044b8 <_dtoa_r+0x500>)
 80043a4:	4680      	mov	r8, r0
 80043a6:	4689      	mov	r9, r1
 80043a8:	4630      	mov	r0, r6
 80043aa:	4639      	mov	r1, r7
 80043ac:	f7fc fbc4 	bl	8000b38 <__aeabi_dmul>
 80043b0:	460f      	mov	r7, r1
 80043b2:	4606      	mov	r6, r0
 80043b4:	f7fc fe70 	bl	8001098 <__aeabi_d2iz>
 80043b8:	4605      	mov	r5, r0
 80043ba:	f7fc fb53 	bl	8000a64 <__aeabi_i2d>
 80043be:	4602      	mov	r2, r0
 80043c0:	460b      	mov	r3, r1
 80043c2:	4630      	mov	r0, r6
 80043c4:	4639      	mov	r1, r7
 80043c6:	f7fc f9ff 	bl	80007c8 <__aeabi_dsub>
 80043ca:	3530      	adds	r5, #48	; 0x30
 80043cc:	b2ed      	uxtb	r5, r5
 80043ce:	4642      	mov	r2, r8
 80043d0:	464b      	mov	r3, r9
 80043d2:	f804 5b01 	strb.w	r5, [r4], #1
 80043d6:	4606      	mov	r6, r0
 80043d8:	460f      	mov	r7, r1
 80043da:	f7fc fe1f 	bl	800101c <__aeabi_dcmplt>
 80043de:	4632      	mov	r2, r6
 80043e0:	463b      	mov	r3, r7
 80043e2:	2800      	cmp	r0, #0
 80043e4:	d0c9      	beq.n	800437a <_dtoa_r+0x3c2>
 80043e6:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80043e8:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80043ec:	9306      	str	r3, [sp, #24]
 80043ee:	46d9      	mov	r9, fp
 80043f0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80043f4:	e236      	b.n	8004864 <_dtoa_r+0x8ac>
 80043f6:	46d9      	mov	r9, fp
 80043f8:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80043fc:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004400:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004404:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004408:	e9cd 3400 	strd	r3, r4, [sp]
 800440c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 800440e:	2b00      	cmp	r3, #0
 8004410:	f2c0 80ae 	blt.w	8004570 <_dtoa_r+0x5b8>
 8004414:	9a06      	ldr	r2, [sp, #24]
 8004416:	2a0e      	cmp	r2, #14
 8004418:	f300 80aa 	bgt.w	8004570 <_dtoa_r+0x5b8>
 800441c:	4b21      	ldr	r3, [pc, #132]	; (80044a4 <_dtoa_r+0x4ec>)
 800441e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004422:	ed93 7b00 	vldr	d7, [r3]
 8004426:	9b07      	ldr	r3, [sp, #28]
 8004428:	2b00      	cmp	r3, #0
 800442a:	ed8d 7b02 	vstr	d7, [sp, #8]
 800442e:	f2c0 82be 	blt.w	80049ae <_dtoa_r+0x9f6>
 8004432:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004436:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800443a:	4630      	mov	r0, r6
 800443c:	4639      	mov	r1, r7
 800443e:	f7fc fca5 	bl	8000d8c <__aeabi_ddiv>
 8004442:	f7fc fe29 	bl	8001098 <__aeabi_d2iz>
 8004446:	4605      	mov	r5, r0
 8004448:	f7fc fb0c 	bl	8000a64 <__aeabi_i2d>
 800444c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004450:	f7fc fb72 	bl	8000b38 <__aeabi_dmul>
 8004454:	460b      	mov	r3, r1
 8004456:	4602      	mov	r2, r0
 8004458:	4639      	mov	r1, r7
 800445a:	4630      	mov	r0, r6
 800445c:	f7fc f9b4 	bl	80007c8 <__aeabi_dsub>
 8004460:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004464:	f88b 3000 	strb.w	r3, [fp]
 8004468:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800446a:	2b01      	cmp	r3, #1
 800446c:	4606      	mov	r6, r0
 800446e:	460f      	mov	r7, r1
 8004470:	f10b 0401 	add.w	r4, fp, #1
 8004474:	d053      	beq.n	800451e <_dtoa_r+0x566>
 8004476:	2200      	movs	r2, #0
 8004478:	4b0f      	ldr	r3, [pc, #60]	; (80044b8 <_dtoa_r+0x500>)
 800447a:	f7fc fb5d 	bl	8000b38 <__aeabi_dmul>
 800447e:	2200      	movs	r2, #0
 8004480:	2300      	movs	r3, #0
 8004482:	4606      	mov	r6, r0
 8004484:	460f      	mov	r7, r1
 8004486:	f7fc fdbf 	bl	8001008 <__aeabi_dcmpeq>
 800448a:	2800      	cmp	r0, #0
 800448c:	f040 81ea 	bne.w	8004864 <_dtoa_r+0x8ac>
 8004490:	f8cd a000 	str.w	sl, [sp]
 8004494:	f8cd 901c 	str.w	r9, [sp, #28]
 8004498:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800449c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 80044a0:	e017      	b.n	80044d2 <_dtoa_r+0x51a>
 80044a2:	bf00      	nop
 80044a4:	08007048 	.word	0x08007048
 80044a8:	08007020 	.word	0x08007020
 80044ac:	3ff00000 	.word	0x3ff00000
 80044b0:	401c0000 	.word	0x401c0000
 80044b4:	3fe00000 	.word	0x3fe00000
 80044b8:	40240000 	.word	0x40240000
 80044bc:	f7fc fb3c 	bl	8000b38 <__aeabi_dmul>
 80044c0:	2200      	movs	r2, #0
 80044c2:	2300      	movs	r3, #0
 80044c4:	4606      	mov	r6, r0
 80044c6:	460f      	mov	r7, r1
 80044c8:	f7fc fd9e 	bl	8001008 <__aeabi_dcmpeq>
 80044cc:	2800      	cmp	r0, #0
 80044ce:	f040 833d 	bne.w	8004b4c <_dtoa_r+0xb94>
 80044d2:	464a      	mov	r2, r9
 80044d4:	4653      	mov	r3, sl
 80044d6:	4630      	mov	r0, r6
 80044d8:	4639      	mov	r1, r7
 80044da:	f7fc fc57 	bl	8000d8c <__aeabi_ddiv>
 80044de:	f7fc fddb 	bl	8001098 <__aeabi_d2iz>
 80044e2:	4605      	mov	r5, r0
 80044e4:	f7fc fabe 	bl	8000a64 <__aeabi_i2d>
 80044e8:	464a      	mov	r2, r9
 80044ea:	4653      	mov	r3, sl
 80044ec:	f7fc fb24 	bl	8000b38 <__aeabi_dmul>
 80044f0:	4602      	mov	r2, r0
 80044f2:	460b      	mov	r3, r1
 80044f4:	4630      	mov	r0, r6
 80044f6:	4639      	mov	r1, r7
 80044f8:	f7fc f966 	bl	80007c8 <__aeabi_dsub>
 80044fc:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004500:	f804 cb01 	strb.w	ip, [r4], #1
 8004504:	eba4 0c0b 	sub.w	ip, r4, fp
 8004508:	45e0      	cmp	r8, ip
 800450a:	4606      	mov	r6, r0
 800450c:	460f      	mov	r7, r1
 800450e:	f04f 0200 	mov.w	r2, #0
 8004512:	4bc1      	ldr	r3, [pc, #772]	; (8004818 <_dtoa_r+0x860>)
 8004514:	d1d2      	bne.n	80044bc <_dtoa_r+0x504>
 8004516:	f8dd a000 	ldr.w	sl, [sp]
 800451a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800451e:	4632      	mov	r2, r6
 8004520:	463b      	mov	r3, r7
 8004522:	4630      	mov	r0, r6
 8004524:	4639      	mov	r1, r7
 8004526:	f7fc f951 	bl	80007cc <__adddf3>
 800452a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800452e:	4606      	mov	r6, r0
 8004530:	460f      	mov	r7, r1
 8004532:	f7fc fd91 	bl	8001058 <__aeabi_dcmpgt>
 8004536:	b958      	cbnz	r0, 8004550 <_dtoa_r+0x598>
 8004538:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800453c:	4630      	mov	r0, r6
 800453e:	4639      	mov	r1, r7
 8004540:	f7fc fd62 	bl	8001008 <__aeabi_dcmpeq>
 8004544:	2800      	cmp	r0, #0
 8004546:	f000 818d 	beq.w	8004864 <_dtoa_r+0x8ac>
 800454a:	07e9      	lsls	r1, r5, #31
 800454c:	f140 818a 	bpl.w	8004864 <_dtoa_r+0x8ac>
 8004550:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004554:	e005      	b.n	8004562 <_dtoa_r+0x5aa>
 8004556:	459b      	cmp	fp, r3
 8004558:	f000 8373 	beq.w	8004c42 <_dtoa_r+0xc8a>
 800455c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004560:	461c      	mov	r4, r3
 8004562:	2d39      	cmp	r5, #57	; 0x39
 8004564:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004568:	d0f5      	beq.n	8004556 <_dtoa_r+0x59e>
 800456a:	3501      	adds	r5, #1
 800456c:	701d      	strb	r5, [r3, #0]
 800456e:	e179      	b.n	8004864 <_dtoa_r+0x8ac>
 8004570:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004572:	2a00      	cmp	r2, #0
 8004574:	d03b      	beq.n	80045ee <_dtoa_r+0x636>
 8004576:	9a02      	ldr	r2, [sp, #8]
 8004578:	2a01      	cmp	r2, #1
 800457a:	f340 820b 	ble.w	8004994 <_dtoa_r+0x9dc>
 800457e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004580:	1e5f      	subs	r7, r3, #1
 8004582:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004584:	42bb      	cmp	r3, r7
 8004586:	f2c0 82e6 	blt.w	8004b56 <_dtoa_r+0xb9e>
 800458a:	1bdf      	subs	r7, r3, r7
 800458c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800458e:	2b00      	cmp	r3, #0
 8004590:	f2c0 830b 	blt.w	8004baa <_dtoa_r+0xbf2>
 8004594:	9a08      	ldr	r2, [sp, #32]
 8004596:	4614      	mov	r4, r2
 8004598:	441a      	add	r2, r3
 800459a:	4498      	add	r8, r3
 800459c:	9208      	str	r2, [sp, #32]
 800459e:	2101      	movs	r1, #1
 80045a0:	4648      	mov	r0, r9
 80045a2:	f001 fcbf 	bl	8005f24 <__i2b>
 80045a6:	4605      	mov	r5, r0
 80045a8:	e024      	b.n	80045f4 <_dtoa_r+0x63c>
 80045aa:	2301      	movs	r3, #1
 80045ac:	930d      	str	r3, [sp, #52]	; 0x34
 80045ae:	e5af      	b.n	8004110 <_dtoa_r+0x158>
 80045b0:	9a08      	ldr	r2, [sp, #32]
 80045b2:	9b06      	ldr	r3, [sp, #24]
 80045b4:	1ad2      	subs	r2, r2, r3
 80045b6:	425b      	negs	r3, r3
 80045b8:	930b      	str	r3, [sp, #44]	; 0x2c
 80045ba:	2300      	movs	r3, #0
 80045bc:	9208      	str	r2, [sp, #32]
 80045be:	930c      	str	r3, [sp, #48]	; 0x30
 80045c0:	e5b5      	b.n	800412e <_dtoa_r+0x176>
 80045c2:	f1c4 0301 	rsb	r3, r4, #1
 80045c6:	9308      	str	r3, [sp, #32]
 80045c8:	f04f 0800 	mov.w	r8, #0
 80045cc:	e5a7      	b.n	800411e <_dtoa_r+0x166>
 80045ce:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80045d2:	4640      	mov	r0, r8
 80045d4:	f7fc fa46 	bl	8000a64 <__aeabi_i2d>
 80045d8:	4632      	mov	r2, r6
 80045da:	463b      	mov	r3, r7
 80045dc:	f7fc fd14 	bl	8001008 <__aeabi_dcmpeq>
 80045e0:	2800      	cmp	r0, #0
 80045e2:	f47f ad81 	bne.w	80040e8 <_dtoa_r+0x130>
 80045e6:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80045ea:	9306      	str	r3, [sp, #24]
 80045ec:	e57c      	b.n	80040e8 <_dtoa_r+0x130>
 80045ee:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80045f0:	9c08      	ldr	r4, [sp, #32]
 80045f2:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80045f4:	2c00      	cmp	r4, #0
 80045f6:	dd0c      	ble.n	8004612 <_dtoa_r+0x65a>
 80045f8:	f1b8 0f00 	cmp.w	r8, #0
 80045fc:	dd09      	ble.n	8004612 <_dtoa_r+0x65a>
 80045fe:	4544      	cmp	r4, r8
 8004600:	9a08      	ldr	r2, [sp, #32]
 8004602:	4623      	mov	r3, r4
 8004604:	bfa8      	it	ge
 8004606:	4643      	movge	r3, r8
 8004608:	1ad2      	subs	r2, r2, r3
 800460a:	9208      	str	r2, [sp, #32]
 800460c:	1ae4      	subs	r4, r4, r3
 800460e:	eba8 0803 	sub.w	r8, r8, r3
 8004612:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004614:	b16b      	cbz	r3, 8004632 <_dtoa_r+0x67a>
 8004616:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004618:	2a00      	cmp	r2, #0
 800461a:	f000 8290 	beq.w	8004b3e <_dtoa_r+0xb86>
 800461e:	1bde      	subs	r6, r3, r7
 8004620:	2f00      	cmp	r7, #0
 8004622:	f040 819b 	bne.w	800495c <_dtoa_r+0x9a4>
 8004626:	4651      	mov	r1, sl
 8004628:	4632      	mov	r2, r6
 800462a:	4648      	mov	r0, r9
 800462c:	f001 fd2a 	bl	8006084 <__pow5mult>
 8004630:	4682      	mov	sl, r0
 8004632:	2101      	movs	r1, #1
 8004634:	4648      	mov	r0, r9
 8004636:	f001 fc75 	bl	8005f24 <__i2b>
 800463a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800463c:	4606      	mov	r6, r0
 800463e:	2a00      	cmp	r2, #0
 8004640:	f040 8125 	bne.w	800488e <_dtoa_r+0x8d6>
 8004644:	9b02      	ldr	r3, [sp, #8]
 8004646:	2b01      	cmp	r3, #1
 8004648:	f340 816c 	ble.w	8004924 <_dtoa_r+0x96c>
 800464c:	2001      	movs	r0, #1
 800464e:	4440      	add	r0, r8
 8004650:	f010 001f 	ands.w	r0, r0, #31
 8004654:	f000 8119 	beq.w	800488a <_dtoa_r+0x8d2>
 8004658:	f1c0 0320 	rsb	r3, r0, #32
 800465c:	2b04      	cmp	r3, #4
 800465e:	f340 83ac 	ble.w	8004dba <_dtoa_r+0xe02>
 8004662:	f1c0 001c 	rsb	r0, r0, #28
 8004666:	9b08      	ldr	r3, [sp, #32]
 8004668:	4403      	add	r3, r0
 800466a:	9308      	str	r3, [sp, #32]
 800466c:	4404      	add	r4, r0
 800466e:	4480      	add	r8, r0
 8004670:	9b08      	ldr	r3, [sp, #32]
 8004672:	2b00      	cmp	r3, #0
 8004674:	dd05      	ble.n	8004682 <_dtoa_r+0x6ca>
 8004676:	4651      	mov	r1, sl
 8004678:	461a      	mov	r2, r3
 800467a:	4648      	mov	r0, r9
 800467c:	f001 fd52 	bl	8006124 <__lshift>
 8004680:	4682      	mov	sl, r0
 8004682:	f1b8 0f00 	cmp.w	r8, #0
 8004686:	dd05      	ble.n	8004694 <_dtoa_r+0x6dc>
 8004688:	4631      	mov	r1, r6
 800468a:	4642      	mov	r2, r8
 800468c:	4648      	mov	r0, r9
 800468e:	f001 fd49 	bl	8006124 <__lshift>
 8004692:	4606      	mov	r6, r0
 8004694:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004696:	2b00      	cmp	r3, #0
 8004698:	d177      	bne.n	800478a <_dtoa_r+0x7d2>
 800469a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800469c:	2b00      	cmp	r3, #0
 800469e:	f340 8209 	ble.w	8004ab4 <_dtoa_r+0xafc>
 80046a2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80046a4:	2b00      	cmp	r3, #0
 80046a6:	f000 8089 	beq.w	80047bc <_dtoa_r+0x804>
 80046aa:	2c00      	cmp	r4, #0
 80046ac:	f300 816b 	bgt.w	8004986 <_dtoa_r+0x9ce>
 80046b0:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80046b2:	2b00      	cmp	r3, #0
 80046b4:	f040 81cd 	bne.w	8004a52 <_dtoa_r+0xa9a>
 80046b8:	46a8      	mov	r8, r5
 80046ba:	9a00      	ldr	r2, [sp, #0]
 80046bc:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 80046c0:	f002 0201 	and.w	r2, r2, #1
 80046c4:	920a      	str	r2, [sp, #40]	; 0x28
 80046c6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80046c8:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 80046cc:	441a      	add	r2, r3
 80046ce:	465f      	mov	r7, fp
 80046d0:	9209      	str	r2, [sp, #36]	; 0x24
 80046d2:	46b3      	mov	fp, r6
 80046d4:	4659      	mov	r1, fp
 80046d6:	4650      	mov	r0, sl
 80046d8:	f7ff fbdc 	bl	8003e94 <quorem>
 80046dc:	4629      	mov	r1, r5
 80046de:	4604      	mov	r4, r0
 80046e0:	4650      	mov	r0, sl
 80046e2:	f001 fd75 	bl	80061d0 <__mcmp>
 80046e6:	4659      	mov	r1, fp
 80046e8:	4606      	mov	r6, r0
 80046ea:	4642      	mov	r2, r8
 80046ec:	4648      	mov	r0, r9
 80046ee:	f001 fd8b 	bl	8006208 <__mdiff>
 80046f2:	f104 0330 	add.w	r3, r4, #48	; 0x30
 80046f6:	9300      	str	r3, [sp, #0]
 80046f8:	68c3      	ldr	r3, [r0, #12]
 80046fa:	4601      	mov	r1, r0
 80046fc:	2b00      	cmp	r3, #0
 80046fe:	f040 81d4 	bne.w	8004aaa <_dtoa_r+0xaf2>
 8004702:	9008      	str	r0, [sp, #32]
 8004704:	4650      	mov	r0, sl
 8004706:	f001 fd63 	bl	80061d0 <__mcmp>
 800470a:	9a08      	ldr	r2, [sp, #32]
 800470c:	9007      	str	r0, [sp, #28]
 800470e:	4611      	mov	r1, r2
 8004710:	4648      	mov	r0, r9
 8004712:	f001 fb6d 	bl	8005df0 <_Bfree>
 8004716:	9b07      	ldr	r3, [sp, #28]
 8004718:	b933      	cbnz	r3, 8004728 <_dtoa_r+0x770>
 800471a:	9a02      	ldr	r2, [sp, #8]
 800471c:	b922      	cbnz	r2, 8004728 <_dtoa_r+0x770>
 800471e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004720:	2b00      	cmp	r3, #0
 8004722:	f000 8319 	beq.w	8004d58 <_dtoa_r+0xda0>
 8004726:	9b02      	ldr	r3, [sp, #8]
 8004728:	2e00      	cmp	r6, #0
 800472a:	f2c0 821c 	blt.w	8004b66 <_dtoa_r+0xbae>
 800472e:	d105      	bne.n	800473c <_dtoa_r+0x784>
 8004730:	9a02      	ldr	r2, [sp, #8]
 8004732:	b91a      	cbnz	r2, 800473c <_dtoa_r+0x784>
 8004734:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004736:	2a00      	cmp	r2, #0
 8004738:	f000 8215 	beq.w	8004b66 <_dtoa_r+0xbae>
 800473c:	2b00      	cmp	r3, #0
 800473e:	f107 0401 	add.w	r4, r7, #1
 8004742:	f300 8225 	bgt.w	8004b90 <_dtoa_r+0xbd8>
 8004746:	9b00      	ldr	r3, [sp, #0]
 8004748:	703b      	strb	r3, [r7, #0]
 800474a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800474c:	42bb      	cmp	r3, r7
 800474e:	f000 8230 	beq.w	8004bb2 <_dtoa_r+0xbfa>
 8004752:	4651      	mov	r1, sl
 8004754:	2300      	movs	r3, #0
 8004756:	220a      	movs	r2, #10
 8004758:	4648      	mov	r0, r9
 800475a:	f001 fb53 	bl	8005e04 <__multadd>
 800475e:	4545      	cmp	r5, r8
 8004760:	4682      	mov	sl, r0
 8004762:	4629      	mov	r1, r5
 8004764:	f04f 0300 	mov.w	r3, #0
 8004768:	f04f 020a 	mov.w	r2, #10
 800476c:	4648      	mov	r0, r9
 800476e:	f000 8196 	beq.w	8004a9e <_dtoa_r+0xae6>
 8004772:	f001 fb47 	bl	8005e04 <__multadd>
 8004776:	4641      	mov	r1, r8
 8004778:	4605      	mov	r5, r0
 800477a:	2300      	movs	r3, #0
 800477c:	220a      	movs	r2, #10
 800477e:	4648      	mov	r0, r9
 8004780:	f001 fb40 	bl	8005e04 <__multadd>
 8004784:	4627      	mov	r7, r4
 8004786:	4680      	mov	r8, r0
 8004788:	e7a4      	b.n	80046d4 <_dtoa_r+0x71c>
 800478a:	4631      	mov	r1, r6
 800478c:	4650      	mov	r0, sl
 800478e:	f001 fd1f 	bl	80061d0 <__mcmp>
 8004792:	2800      	cmp	r0, #0
 8004794:	da81      	bge.n	800469a <_dtoa_r+0x6e2>
 8004796:	9f06      	ldr	r7, [sp, #24]
 8004798:	4651      	mov	r1, sl
 800479a:	2300      	movs	r3, #0
 800479c:	220a      	movs	r2, #10
 800479e:	4648      	mov	r0, r9
 80047a0:	3f01      	subs	r7, #1
 80047a2:	9706      	str	r7, [sp, #24]
 80047a4:	f001 fb2e 	bl	8005e04 <__multadd>
 80047a8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80047aa:	4682      	mov	sl, r0
 80047ac:	2b00      	cmp	r3, #0
 80047ae:	f040 82eb 	bne.w	8004d88 <_dtoa_r+0xdd0>
 80047b2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80047b4:	2b00      	cmp	r3, #0
 80047b6:	f340 82f3 	ble.w	8004da0 <_dtoa_r+0xde8>
 80047ba:	9309      	str	r3, [sp, #36]	; 0x24
 80047bc:	465c      	mov	r4, fp
 80047be:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80047c2:	e002      	b.n	80047ca <_dtoa_r+0x812>
 80047c4:	f001 fb1e 	bl	8005e04 <__multadd>
 80047c8:	4682      	mov	sl, r0
 80047ca:	4631      	mov	r1, r6
 80047cc:	4650      	mov	r0, sl
 80047ce:	f7ff fb61 	bl	8003e94 <quorem>
 80047d2:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80047d6:	f804 7b01 	strb.w	r7, [r4], #1
 80047da:	eba4 030b 	sub.w	r3, r4, fp
 80047de:	4598      	cmp	r8, r3
 80047e0:	f04f 020a 	mov.w	r2, #10
 80047e4:	f04f 0300 	mov.w	r3, #0
 80047e8:	4651      	mov	r1, sl
 80047ea:	4648      	mov	r0, r9
 80047ec:	dcea      	bgt.n	80047c4 <_dtoa_r+0x80c>
 80047ee:	2300      	movs	r3, #0
 80047f0:	9700      	str	r7, [sp, #0]
 80047f2:	9302      	str	r3, [sp, #8]
 80047f4:	4651      	mov	r1, sl
 80047f6:	2201      	movs	r2, #1
 80047f8:	4648      	mov	r0, r9
 80047fa:	f001 fc93 	bl	8006124 <__lshift>
 80047fe:	4631      	mov	r1, r6
 8004800:	4682      	mov	sl, r0
 8004802:	f001 fce5 	bl	80061d0 <__mcmp>
 8004806:	2800      	cmp	r0, #0
 8004808:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 800480c:	dc14      	bgt.n	8004838 <_dtoa_r+0x880>
 800480e:	d108      	bne.n	8004822 <_dtoa_r+0x86a>
 8004810:	9b00      	ldr	r3, [sp, #0]
 8004812:	07db      	lsls	r3, r3, #31
 8004814:	d410      	bmi.n	8004838 <_dtoa_r+0x880>
 8004816:	e004      	b.n	8004822 <_dtoa_r+0x86a>
 8004818:	40240000 	.word	0x40240000
 800481c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004820:	461c      	mov	r4, r3
 8004822:	2a30      	cmp	r2, #48	; 0x30
 8004824:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004828:	d0f8      	beq.n	800481c <_dtoa_r+0x864>
 800482a:	e00b      	b.n	8004844 <_dtoa_r+0x88c>
 800482c:	459b      	cmp	fp, r3
 800482e:	f000 814e 	beq.w	8004ace <_dtoa_r+0xb16>
 8004832:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004836:	461c      	mov	r4, r3
 8004838:	2a39      	cmp	r2, #57	; 0x39
 800483a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 800483e:	d0f5      	beq.n	800482c <_dtoa_r+0x874>
 8004840:	3201      	adds	r2, #1
 8004842:	701a      	strb	r2, [r3, #0]
 8004844:	4631      	mov	r1, r6
 8004846:	4648      	mov	r0, r9
 8004848:	f001 fad2 	bl	8005df0 <_Bfree>
 800484c:	b155      	cbz	r5, 8004864 <_dtoa_r+0x8ac>
 800484e:	9902      	ldr	r1, [sp, #8]
 8004850:	b121      	cbz	r1, 800485c <_dtoa_r+0x8a4>
 8004852:	42a9      	cmp	r1, r5
 8004854:	d002      	beq.n	800485c <_dtoa_r+0x8a4>
 8004856:	4648      	mov	r0, r9
 8004858:	f001 faca 	bl	8005df0 <_Bfree>
 800485c:	4629      	mov	r1, r5
 800485e:	4648      	mov	r0, r9
 8004860:	f001 fac6 	bl	8005df0 <_Bfree>
 8004864:	4651      	mov	r1, sl
 8004866:	4648      	mov	r0, r9
 8004868:	f001 fac2 	bl	8005df0 <_Bfree>
 800486c:	2200      	movs	r2, #0
 800486e:	9b06      	ldr	r3, [sp, #24]
 8004870:	7022      	strb	r2, [r4, #0]
 8004872:	9a05      	ldr	r2, [sp, #20]
 8004874:	3301      	adds	r3, #1
 8004876:	6013      	str	r3, [r2, #0]
 8004878:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800487a:	2b00      	cmp	r3, #0
 800487c:	f43f abdb 	beq.w	8004036 <_dtoa_r+0x7e>
 8004880:	4658      	mov	r0, fp
 8004882:	601c      	str	r4, [r3, #0]
 8004884:	b01b      	add	sp, #108	; 0x6c
 8004886:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800488a:	201c      	movs	r0, #28
 800488c:	e6eb      	b.n	8004666 <_dtoa_r+0x6ae>
 800488e:	4601      	mov	r1, r0
 8004890:	4648      	mov	r0, r9
 8004892:	f001 fbf7 	bl	8006084 <__pow5mult>
 8004896:	9b02      	ldr	r3, [sp, #8]
 8004898:	2b01      	cmp	r3, #1
 800489a:	4606      	mov	r6, r0
 800489c:	f340 80d4 	ble.w	8004a48 <_dtoa_r+0xa90>
 80048a0:	2300      	movs	r3, #0
 80048a2:	930c      	str	r3, [sp, #48]	; 0x30
 80048a4:	6933      	ldr	r3, [r6, #16]
 80048a6:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 80048aa:	6918      	ldr	r0, [r3, #16]
 80048ac:	f001 faea 	bl	8005e84 <__hi0bits>
 80048b0:	f1c0 0020 	rsb	r0, r0, #32
 80048b4:	e6cb      	b.n	800464e <_dtoa_r+0x696>
 80048b6:	900d      	str	r0, [sp, #52]	; 0x34
 80048b8:	e42a      	b.n	8004110 <_dtoa_r+0x158>
 80048ba:	2501      	movs	r5, #1
 80048bc:	e440      	b.n	8004140 <_dtoa_r+0x188>
 80048be:	f1c3 0820 	rsb	r8, r3, #32
 80048c2:	9b00      	ldr	r3, [sp, #0]
 80048c4:	fa03 f008 	lsl.w	r0, r3, r8
 80048c8:	f7ff bbd8 	b.w	800407c <_dtoa_r+0xc4>
 80048cc:	2300      	movs	r3, #0
 80048ce:	930a      	str	r3, [sp, #40]	; 0x28
 80048d0:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 80048d4:	4413      	add	r3, r2
 80048d6:	930e      	str	r3, [sp, #56]	; 0x38
 80048d8:	3301      	adds	r3, #1
 80048da:	2b01      	cmp	r3, #1
 80048dc:	461e      	mov	r6, r3
 80048de:	9309      	str	r3, [sp, #36]	; 0x24
 80048e0:	bfb8      	it	lt
 80048e2:	2601      	movlt	r6, #1
 80048e4:	2100      	movs	r1, #0
 80048e6:	2e17      	cmp	r6, #23
 80048e8:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80048ec:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80048ee:	f77f ac89 	ble.w	8004204 <_dtoa_r+0x24c>
 80048f2:	2201      	movs	r2, #1
 80048f4:	2304      	movs	r3, #4
 80048f6:	005b      	lsls	r3, r3, #1
 80048f8:	f103 0014 	add.w	r0, r3, #20
 80048fc:	42b0      	cmp	r0, r6
 80048fe:	4611      	mov	r1, r2
 8004900:	f102 0201 	add.w	r2, r2, #1
 8004904:	d9f7      	bls.n	80048f6 <_dtoa_r+0x93e>
 8004906:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800490a:	e47b      	b.n	8004204 <_dtoa_r+0x24c>
 800490c:	2300      	movs	r3, #0
 800490e:	930a      	str	r3, [sp, #40]	; 0x28
 8004910:	9e07      	ldr	r6, [sp, #28]
 8004912:	2e00      	cmp	r6, #0
 8004914:	f340 80e2 	ble.w	8004adc <_dtoa_r+0xb24>
 8004918:	960e      	str	r6, [sp, #56]	; 0x38
 800491a:	9609      	str	r6, [sp, #36]	; 0x24
 800491c:	e7e2      	b.n	80048e4 <_dtoa_r+0x92c>
 800491e:	2301      	movs	r3, #1
 8004920:	930a      	str	r3, [sp, #40]	; 0x28
 8004922:	e7f5      	b.n	8004910 <_dtoa_r+0x958>
 8004924:	9b00      	ldr	r3, [sp, #0]
 8004926:	2b00      	cmp	r3, #0
 8004928:	f47f ae90 	bne.w	800464c <_dtoa_r+0x694>
 800492c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004930:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004934:	2b00      	cmp	r3, #0
 8004936:	f040 8192 	bne.w	8004c5e <_dtoa_r+0xca6>
 800493a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 800493e:	0d1b      	lsrs	r3, r3, #20
 8004940:	051b      	lsls	r3, r3, #20
 8004942:	b12b      	cbz	r3, 8004950 <_dtoa_r+0x998>
 8004944:	9b08      	ldr	r3, [sp, #32]
 8004946:	3301      	adds	r3, #1
 8004948:	9308      	str	r3, [sp, #32]
 800494a:	f108 0801 	add.w	r8, r8, #1
 800494e:	2301      	movs	r3, #1
 8004950:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004952:	930c      	str	r3, [sp, #48]	; 0x30
 8004954:	2a00      	cmp	r2, #0
 8004956:	f43f ae79 	beq.w	800464c <_dtoa_r+0x694>
 800495a:	e7a3      	b.n	80048a4 <_dtoa_r+0x8ec>
 800495c:	463a      	mov	r2, r7
 800495e:	4629      	mov	r1, r5
 8004960:	4648      	mov	r0, r9
 8004962:	f001 fb8f 	bl	8006084 <__pow5mult>
 8004966:	4652      	mov	r2, sl
 8004968:	4601      	mov	r1, r0
 800496a:	4605      	mov	r5, r0
 800496c:	4648      	mov	r0, r9
 800496e:	f001 fae3 	bl	8005f38 <__multiply>
 8004972:	4651      	mov	r1, sl
 8004974:	4607      	mov	r7, r0
 8004976:	4648      	mov	r0, r9
 8004978:	f001 fa3a 	bl	8005df0 <_Bfree>
 800497c:	46ba      	mov	sl, r7
 800497e:	2e00      	cmp	r6, #0
 8004980:	f43f ae57 	beq.w	8004632 <_dtoa_r+0x67a>
 8004984:	e64f      	b.n	8004626 <_dtoa_r+0x66e>
 8004986:	4629      	mov	r1, r5
 8004988:	4622      	mov	r2, r4
 800498a:	4648      	mov	r0, r9
 800498c:	f001 fbca 	bl	8006124 <__lshift>
 8004990:	4605      	mov	r5, r0
 8004992:	e68d      	b.n	80046b0 <_dtoa_r+0x6f8>
 8004994:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004996:	2a00      	cmp	r2, #0
 8004998:	f000 815d 	beq.w	8004c56 <_dtoa_r+0xc9e>
 800499c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 80049a0:	9a08      	ldr	r2, [sp, #32]
 80049a2:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80049a4:	4614      	mov	r4, r2
 80049a6:	441a      	add	r2, r3
 80049a8:	4498      	add	r8, r3
 80049aa:	9208      	str	r2, [sp, #32]
 80049ac:	e5f7      	b.n	800459e <_dtoa_r+0x5e6>
 80049ae:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80049b0:	2b00      	cmp	r3, #0
 80049b2:	f73f ad3e 	bgt.w	8004432 <_dtoa_r+0x47a>
 80049b6:	f040 80bc 	bne.w	8004b32 <_dtoa_r+0xb7a>
 80049ba:	ec51 0b17 	vmov	r0, r1, d7
 80049be:	2200      	movs	r2, #0
 80049c0:	4bb2      	ldr	r3, [pc, #712]	; (8004c8c <_dtoa_r+0xcd4>)
 80049c2:	f7fc f8b9 	bl	8000b38 <__aeabi_dmul>
 80049c6:	e9dd 2300 	ldrd	r2, r3, [sp]
 80049ca:	f7fc fb3b 	bl	8001044 <__aeabi_dcmpge>
 80049ce:	9e09      	ldr	r6, [sp, #36]	; 0x24
 80049d0:	4635      	mov	r5, r6
 80049d2:	2800      	cmp	r0, #0
 80049d4:	d176      	bne.n	8004ac4 <_dtoa_r+0xb0c>
 80049d6:	9a06      	ldr	r2, [sp, #24]
 80049d8:	2331      	movs	r3, #49	; 0x31
 80049da:	3201      	adds	r2, #1
 80049dc:	9206      	str	r2, [sp, #24]
 80049de:	f88b 3000 	strb.w	r3, [fp]
 80049e2:	f10b 0401 	add.w	r4, fp, #1
 80049e6:	4631      	mov	r1, r6
 80049e8:	4648      	mov	r0, r9
 80049ea:	f001 fa01 	bl	8005df0 <_Bfree>
 80049ee:	2d00      	cmp	r5, #0
 80049f0:	f47f af34 	bne.w	800485c <_dtoa_r+0x8a4>
 80049f4:	e736      	b.n	8004864 <_dtoa_r+0x8ac>
 80049f6:	f000 8142 	beq.w	8004c7e <_dtoa_r+0xcc6>
 80049fa:	9b06      	ldr	r3, [sp, #24]
 80049fc:	425c      	negs	r4, r3
 80049fe:	4ba4      	ldr	r3, [pc, #656]	; (8004c90 <_dtoa_r+0xcd8>)
 8004a00:	f004 020f 	and.w	r2, r4, #15
 8004a04:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004a08:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004a0c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004a10:	f7fc f892 	bl	8000b38 <__aeabi_dmul>
 8004a14:	1124      	asrs	r4, r4, #4
 8004a16:	e9cd 0100 	strd	r0, r1, [sp]
 8004a1a:	f000 81c6 	beq.w	8004daa <_dtoa_r+0xdf2>
 8004a1e:	4d9d      	ldr	r5, [pc, #628]	; (8004c94 <_dtoa_r+0xcdc>)
 8004a20:	2300      	movs	r3, #0
 8004a22:	2602      	movs	r6, #2
 8004a24:	07e7      	lsls	r7, r4, #31
 8004a26:	d505      	bpl.n	8004a34 <_dtoa_r+0xa7c>
 8004a28:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004a2c:	f7fc f884 	bl	8000b38 <__aeabi_dmul>
 8004a30:	3601      	adds	r6, #1
 8004a32:	2301      	movs	r3, #1
 8004a34:	1064      	asrs	r4, r4, #1
 8004a36:	f105 0508 	add.w	r5, r5, #8
 8004a3a:	d1f3      	bne.n	8004a24 <_dtoa_r+0xa6c>
 8004a3c:	2b00      	cmp	r3, #0
 8004a3e:	f43f ac27 	beq.w	8004290 <_dtoa_r+0x2d8>
 8004a42:	e9cd 0100 	strd	r0, r1, [sp]
 8004a46:	e423      	b.n	8004290 <_dtoa_r+0x2d8>
 8004a48:	9b00      	ldr	r3, [sp, #0]
 8004a4a:	2b00      	cmp	r3, #0
 8004a4c:	f43f af6e 	beq.w	800492c <_dtoa_r+0x974>
 8004a50:	e726      	b.n	80048a0 <_dtoa_r+0x8e8>
 8004a52:	6869      	ldr	r1, [r5, #4]
 8004a54:	4648      	mov	r0, r9
 8004a56:	f001 f9a5 	bl	8005da4 <_Balloc>
 8004a5a:	692b      	ldr	r3, [r5, #16]
 8004a5c:	3302      	adds	r3, #2
 8004a5e:	009a      	lsls	r2, r3, #2
 8004a60:	4604      	mov	r4, r0
 8004a62:	f105 010c 	add.w	r1, r5, #12
 8004a66:	300c      	adds	r0, #12
 8004a68:	f7fb fd4a 	bl	8000500 <memcpy>
 8004a6c:	4621      	mov	r1, r4
 8004a6e:	2201      	movs	r2, #1
 8004a70:	4648      	mov	r0, r9
 8004a72:	f001 fb57 	bl	8006124 <__lshift>
 8004a76:	4680      	mov	r8, r0
 8004a78:	e61f      	b.n	80046ba <_dtoa_r+0x702>
 8004a7a:	2400      	movs	r4, #0
 8004a7c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004a80:	4621      	mov	r1, r4
 8004a82:	4648      	mov	r0, r9
 8004a84:	f001 f98e 	bl	8005da4 <_Balloc>
 8004a88:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004a8c:	930e      	str	r3, [sp, #56]	; 0x38
 8004a8e:	9309      	str	r3, [sp, #36]	; 0x24
 8004a90:	2301      	movs	r3, #1
 8004a92:	4683      	mov	fp, r0
 8004a94:	9407      	str	r4, [sp, #28]
 8004a96:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004a9a:	930a      	str	r3, [sp, #40]	; 0x28
 8004a9c:	e4b6      	b.n	800440c <_dtoa_r+0x454>
 8004a9e:	f001 f9b1 	bl	8005e04 <__multadd>
 8004aa2:	4627      	mov	r7, r4
 8004aa4:	4605      	mov	r5, r0
 8004aa6:	4680      	mov	r8, r0
 8004aa8:	e614      	b.n	80046d4 <_dtoa_r+0x71c>
 8004aaa:	4648      	mov	r0, r9
 8004aac:	f001 f9a0 	bl	8005df0 <_Bfree>
 8004ab0:	2301      	movs	r3, #1
 8004ab2:	e639      	b.n	8004728 <_dtoa_r+0x770>
 8004ab4:	9b02      	ldr	r3, [sp, #8]
 8004ab6:	2b02      	cmp	r3, #2
 8004ab8:	f77f adf3 	ble.w	80046a2 <_dtoa_r+0x6ea>
 8004abc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004abe:	2b00      	cmp	r3, #0
 8004ac0:	f000 80cf 	beq.w	8004c62 <_dtoa_r+0xcaa>
 8004ac4:	9b07      	ldr	r3, [sp, #28]
 8004ac6:	43db      	mvns	r3, r3
 8004ac8:	9306      	str	r3, [sp, #24]
 8004aca:	465c      	mov	r4, fp
 8004acc:	e78b      	b.n	80049e6 <_dtoa_r+0xa2e>
 8004ace:	9a06      	ldr	r2, [sp, #24]
 8004ad0:	2331      	movs	r3, #49	; 0x31
 8004ad2:	3201      	adds	r2, #1
 8004ad4:	9206      	str	r2, [sp, #24]
 8004ad6:	f88b 3000 	strb.w	r3, [fp]
 8004ada:	e6b3      	b.n	8004844 <_dtoa_r+0x88c>
 8004adc:	2401      	movs	r4, #1
 8004ade:	9409      	str	r4, [sp, #36]	; 0x24
 8004ae0:	9407      	str	r4, [sp, #28]
 8004ae2:	f7ff bb8b 	b.w	80041fc <_dtoa_r+0x244>
 8004ae6:	4630      	mov	r0, r6
 8004ae8:	f7fb ffbc 	bl	8000a64 <__aeabi_i2d>
 8004aec:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004af0:	f7fc f822 	bl	8000b38 <__aeabi_dmul>
 8004af4:	2200      	movs	r2, #0
 8004af6:	4b68      	ldr	r3, [pc, #416]	; (8004c98 <_dtoa_r+0xce0>)
 8004af8:	f7fb fe68 	bl	80007cc <__adddf3>
 8004afc:	4606      	mov	r6, r0
 8004afe:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004b02:	2200      	movs	r2, #0
 8004b04:	4b61      	ldr	r3, [pc, #388]	; (8004c8c <_dtoa_r+0xcd4>)
 8004b06:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004b0a:	f7fb fe5d 	bl	80007c8 <__aeabi_dsub>
 8004b0e:	4632      	mov	r2, r6
 8004b10:	463b      	mov	r3, r7
 8004b12:	4604      	mov	r4, r0
 8004b14:	460d      	mov	r5, r1
 8004b16:	f7fc fa9f 	bl	8001058 <__aeabi_dcmpgt>
 8004b1a:	2800      	cmp	r0, #0
 8004b1c:	d14f      	bne.n	8004bbe <_dtoa_r+0xc06>
 8004b1e:	4632      	mov	r2, r6
 8004b20:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004b24:	4620      	mov	r0, r4
 8004b26:	4629      	mov	r1, r5
 8004b28:	f7fc fa78 	bl	800101c <__aeabi_dcmplt>
 8004b2c:	2800      	cmp	r0, #0
 8004b2e:	f43f ac69 	beq.w	8004404 <_dtoa_r+0x44c>
 8004b32:	2600      	movs	r6, #0
 8004b34:	4635      	mov	r5, r6
 8004b36:	e7c5      	b.n	8004ac4 <_dtoa_r+0xb0c>
 8004b38:	2301      	movs	r3, #1
 8004b3a:	930a      	str	r3, [sp, #40]	; 0x28
 8004b3c:	e6c8      	b.n	80048d0 <_dtoa_r+0x918>
 8004b3e:	4651      	mov	r1, sl
 8004b40:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004b42:	4648      	mov	r0, r9
 8004b44:	f001 fa9e 	bl	8006084 <__pow5mult>
 8004b48:	4682      	mov	sl, r0
 8004b4a:	e572      	b.n	8004632 <_dtoa_r+0x67a>
 8004b4c:	f8dd a000 	ldr.w	sl, [sp]
 8004b50:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004b54:	e686      	b.n	8004864 <_dtoa_r+0x8ac>
 8004b56:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004b58:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004b5a:	1afb      	subs	r3, r7, r3
 8004b5c:	441a      	add	r2, r3
 8004b5e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004b62:	2700      	movs	r7, #0
 8004b64:	e512      	b.n	800458c <_dtoa_r+0x5d4>
 8004b66:	2b00      	cmp	r3, #0
 8004b68:	9402      	str	r4, [sp, #8]
 8004b6a:	465e      	mov	r6, fp
 8004b6c:	f107 0401 	add.w	r4, r7, #1
 8004b70:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004b74:	f300 80ba 	bgt.w	8004cec <_dtoa_r+0xd34>
 8004b78:	9b00      	ldr	r3, [sp, #0]
 8004b7a:	9502      	str	r5, [sp, #8]
 8004b7c:	703b      	strb	r3, [r7, #0]
 8004b7e:	4645      	mov	r5, r8
 8004b80:	e660      	b.n	8004844 <_dtoa_r+0x88c>
 8004b82:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004b86:	2602      	movs	r6, #2
 8004b88:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004b8c:	f7ff bb67 	b.w	800425e <_dtoa_r+0x2a6>
 8004b90:	9b00      	ldr	r3, [sp, #0]
 8004b92:	2b39      	cmp	r3, #57	; 0x39
 8004b94:	465e      	mov	r6, fp
 8004b96:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004b9a:	f000 80b9 	beq.w	8004d10 <_dtoa_r+0xd58>
 8004b9e:	9b00      	ldr	r3, [sp, #0]
 8004ba0:	9502      	str	r5, [sp, #8]
 8004ba2:	3301      	adds	r3, #1
 8004ba4:	703b      	strb	r3, [r7, #0]
 8004ba6:	4645      	mov	r5, r8
 8004ba8:	e64c      	b.n	8004844 <_dtoa_r+0x88c>
 8004baa:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004bae:	1a9c      	subs	r4, r3, r2
 8004bb0:	e4f5      	b.n	800459e <_dtoa_r+0x5e6>
 8004bb2:	465e      	mov	r6, fp
 8004bb4:	9502      	str	r5, [sp, #8]
 8004bb6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004bba:	4645      	mov	r5, r8
 8004bbc:	e61a      	b.n	80047f4 <_dtoa_r+0x83c>
 8004bbe:	2600      	movs	r6, #0
 8004bc0:	4635      	mov	r5, r6
 8004bc2:	e708      	b.n	80049d6 <_dtoa_r+0xa1e>
 8004bc4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004bc8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004bcc:	f7fb ffb4 	bl	8000b38 <__aeabi_dmul>
 8004bd0:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004bd2:	f88b 5000 	strb.w	r5, [fp]
 8004bd6:	2b01      	cmp	r3, #1
 8004bd8:	e9cd 0100 	strd	r0, r1, [sp]
 8004bdc:	d020      	beq.n	8004c20 <_dtoa_r+0xc68>
 8004bde:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004be0:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004be4:	445b      	add	r3, fp
 8004be6:	4698      	mov	r8, r3
 8004be8:	2200      	movs	r2, #0
 8004bea:	4b2c      	ldr	r3, [pc, #176]	; (8004c9c <_dtoa_r+0xce4>)
 8004bec:	4630      	mov	r0, r6
 8004bee:	4639      	mov	r1, r7
 8004bf0:	f7fb ffa2 	bl	8000b38 <__aeabi_dmul>
 8004bf4:	460f      	mov	r7, r1
 8004bf6:	4606      	mov	r6, r0
 8004bf8:	f7fc fa4e 	bl	8001098 <__aeabi_d2iz>
 8004bfc:	4605      	mov	r5, r0
 8004bfe:	f7fb ff31 	bl	8000a64 <__aeabi_i2d>
 8004c02:	3530      	adds	r5, #48	; 0x30
 8004c04:	4602      	mov	r2, r0
 8004c06:	460b      	mov	r3, r1
 8004c08:	4630      	mov	r0, r6
 8004c0a:	4639      	mov	r1, r7
 8004c0c:	f7fb fddc 	bl	80007c8 <__aeabi_dsub>
 8004c10:	f804 5b01 	strb.w	r5, [r4], #1
 8004c14:	4544      	cmp	r4, r8
 8004c16:	4606      	mov	r6, r0
 8004c18:	460f      	mov	r7, r1
 8004c1a:	d1e5      	bne.n	8004be8 <_dtoa_r+0xc30>
 8004c1c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004c20:	4b1f      	ldr	r3, [pc, #124]	; (8004ca0 <_dtoa_r+0xce8>)
 8004c22:	2200      	movs	r2, #0
 8004c24:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004c28:	f7fb fdd0 	bl	80007cc <__adddf3>
 8004c2c:	4632      	mov	r2, r6
 8004c2e:	463b      	mov	r3, r7
 8004c30:	f7fc f9f4 	bl	800101c <__aeabi_dcmplt>
 8004c34:	2800      	cmp	r0, #0
 8004c36:	d070      	beq.n	8004d1a <_dtoa_r+0xd62>
 8004c38:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004c3a:	9306      	str	r3, [sp, #24]
 8004c3c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004c40:	e48f      	b.n	8004562 <_dtoa_r+0x5aa>
 8004c42:	2330      	movs	r3, #48	; 0x30
 8004c44:	f88b 3000 	strb.w	r3, [fp]
 8004c48:	9b06      	ldr	r3, [sp, #24]
 8004c4a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004c4e:	3301      	adds	r3, #1
 8004c50:	9306      	str	r3, [sp, #24]
 8004c52:	465b      	mov	r3, fp
 8004c54:	e489      	b.n	800456a <_dtoa_r+0x5b2>
 8004c56:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004c58:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004c5c:	e6a0      	b.n	80049a0 <_dtoa_r+0x9e8>
 8004c5e:	2300      	movs	r3, #0
 8004c60:	e676      	b.n	8004950 <_dtoa_r+0x998>
 8004c62:	4631      	mov	r1, r6
 8004c64:	2205      	movs	r2, #5
 8004c66:	4648      	mov	r0, r9
 8004c68:	f001 f8cc 	bl	8005e04 <__multadd>
 8004c6c:	4601      	mov	r1, r0
 8004c6e:	4606      	mov	r6, r0
 8004c70:	4650      	mov	r0, sl
 8004c72:	f001 faad 	bl	80061d0 <__mcmp>
 8004c76:	2800      	cmp	r0, #0
 8004c78:	f73f aead 	bgt.w	80049d6 <_dtoa_r+0xa1e>
 8004c7c:	e722      	b.n	8004ac4 <_dtoa_r+0xb0c>
 8004c7e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004c82:	2602      	movs	r6, #2
 8004c84:	ed8d 7b00 	vstr	d7, [sp]
 8004c88:	f7ff bb02 	b.w	8004290 <_dtoa_r+0x2d8>
 8004c8c:	40140000 	.word	0x40140000
 8004c90:	08007048 	.word	0x08007048
 8004c94:	08007020 	.word	0x08007020
 8004c98:	401c0000 	.word	0x401c0000
 8004c9c:	40240000 	.word	0x40240000
 8004ca0:	3fe00000 	.word	0x3fe00000
 8004ca4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004ca6:	2b00      	cmp	r3, #0
 8004ca8:	f43f af1d 	beq.w	8004ae6 <_dtoa_r+0xb2e>
 8004cac:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004cae:	2c00      	cmp	r4, #0
 8004cb0:	f77f aba8 	ble.w	8004404 <_dtoa_r+0x44c>
 8004cb4:	2200      	movs	r2, #0
 8004cb6:	4b45      	ldr	r3, [pc, #276]	; (8004dcc <_dtoa_r+0xe14>)
 8004cb8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004cbc:	f7fb ff3c 	bl	8000b38 <__aeabi_dmul>
 8004cc0:	e9cd 0100 	strd	r0, r1, [sp]
 8004cc4:	1c70      	adds	r0, r6, #1
 8004cc6:	f7fb fecd 	bl	8000a64 <__aeabi_i2d>
 8004cca:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004cce:	f7fb ff33 	bl	8000b38 <__aeabi_dmul>
 8004cd2:	4b3f      	ldr	r3, [pc, #252]	; (8004dd0 <_dtoa_r+0xe18>)
 8004cd4:	2200      	movs	r2, #0
 8004cd6:	f7fb fd79 	bl	80007cc <__adddf3>
 8004cda:	9b06      	ldr	r3, [sp, #24]
 8004cdc:	9412      	str	r4, [sp, #72]	; 0x48
 8004cde:	3b01      	subs	r3, #1
 8004ce0:	4606      	mov	r6, r0
 8004ce2:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004ce6:	9316      	str	r3, [sp, #88]	; 0x58
 8004ce8:	f7ff baf3 	b.w	80042d2 <_dtoa_r+0x31a>
 8004cec:	4651      	mov	r1, sl
 8004cee:	2201      	movs	r2, #1
 8004cf0:	4648      	mov	r0, r9
 8004cf2:	f001 fa17 	bl	8006124 <__lshift>
 8004cf6:	4631      	mov	r1, r6
 8004cf8:	4682      	mov	sl, r0
 8004cfa:	f001 fa69 	bl	80061d0 <__mcmp>
 8004cfe:	2800      	cmp	r0, #0
 8004d00:	dd3b      	ble.n	8004d7a <_dtoa_r+0xdc2>
 8004d02:	9b00      	ldr	r3, [sp, #0]
 8004d04:	2b39      	cmp	r3, #57	; 0x39
 8004d06:	d003      	beq.n	8004d10 <_dtoa_r+0xd58>
 8004d08:	9b02      	ldr	r3, [sp, #8]
 8004d0a:	3331      	adds	r3, #49	; 0x31
 8004d0c:	9300      	str	r3, [sp, #0]
 8004d0e:	e733      	b.n	8004b78 <_dtoa_r+0xbc0>
 8004d10:	2239      	movs	r2, #57	; 0x39
 8004d12:	9502      	str	r5, [sp, #8]
 8004d14:	703a      	strb	r2, [r7, #0]
 8004d16:	4645      	mov	r5, r8
 8004d18:	e58e      	b.n	8004838 <_dtoa_r+0x880>
 8004d1a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d1e:	2000      	movs	r0, #0
 8004d20:	492c      	ldr	r1, [pc, #176]	; (8004dd4 <_dtoa_r+0xe1c>)
 8004d22:	f7fb fd51 	bl	80007c8 <__aeabi_dsub>
 8004d26:	4632      	mov	r2, r6
 8004d28:	463b      	mov	r3, r7
 8004d2a:	f7fc f995 	bl	8001058 <__aeabi_dcmpgt>
 8004d2e:	b910      	cbnz	r0, 8004d36 <_dtoa_r+0xd7e>
 8004d30:	f7ff bb68 	b.w	8004404 <_dtoa_r+0x44c>
 8004d34:	4614      	mov	r4, r2
 8004d36:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004d3a:	2b30      	cmp	r3, #48	; 0x30
 8004d3c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004d40:	d0f8      	beq.n	8004d34 <_dtoa_r+0xd7c>
 8004d42:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004d44:	9306      	str	r3, [sp, #24]
 8004d46:	e58d      	b.n	8004864 <_dtoa_r+0x8ac>
 8004d48:	46d9      	mov	r9, fp
 8004d4a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004d4e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004d52:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004d54:	9306      	str	r3, [sp, #24]
 8004d56:	e404      	b.n	8004562 <_dtoa_r+0x5aa>
 8004d58:	9b00      	ldr	r3, [sp, #0]
 8004d5a:	2b39      	cmp	r3, #57	; 0x39
 8004d5c:	4621      	mov	r1, r4
 8004d5e:	4632      	mov	r2, r6
 8004d60:	f107 0401 	add.w	r4, r7, #1
 8004d64:	465e      	mov	r6, fp
 8004d66:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d6a:	d0d1      	beq.n	8004d10 <_dtoa_r+0xd58>
 8004d6c:	2a00      	cmp	r2, #0
 8004d6e:	f77f af03 	ble.w	8004b78 <_dtoa_r+0xbc0>
 8004d72:	460b      	mov	r3, r1
 8004d74:	3331      	adds	r3, #49	; 0x31
 8004d76:	9300      	str	r3, [sp, #0]
 8004d78:	e6fe      	b.n	8004b78 <_dtoa_r+0xbc0>
 8004d7a:	f47f aefd 	bne.w	8004b78 <_dtoa_r+0xbc0>
 8004d7e:	9b00      	ldr	r3, [sp, #0]
 8004d80:	07da      	lsls	r2, r3, #31
 8004d82:	f57f aef9 	bpl.w	8004b78 <_dtoa_r+0xbc0>
 8004d86:	e7bc      	b.n	8004d02 <_dtoa_r+0xd4a>
 8004d88:	4629      	mov	r1, r5
 8004d8a:	2300      	movs	r3, #0
 8004d8c:	220a      	movs	r2, #10
 8004d8e:	4648      	mov	r0, r9
 8004d90:	f001 f838 	bl	8005e04 <__multadd>
 8004d94:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004d96:	2b00      	cmp	r3, #0
 8004d98:	4605      	mov	r5, r0
 8004d9a:	dd09      	ble.n	8004db0 <_dtoa_r+0xdf8>
 8004d9c:	9309      	str	r3, [sp, #36]	; 0x24
 8004d9e:	e484      	b.n	80046aa <_dtoa_r+0x6f2>
 8004da0:	9b02      	ldr	r3, [sp, #8]
 8004da2:	2b02      	cmp	r3, #2
 8004da4:	dc0e      	bgt.n	8004dc4 <_dtoa_r+0xe0c>
 8004da6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004da8:	e507      	b.n	80047ba <_dtoa_r+0x802>
 8004daa:	2602      	movs	r6, #2
 8004dac:	f7ff ba70 	b.w	8004290 <_dtoa_r+0x2d8>
 8004db0:	9b02      	ldr	r3, [sp, #8]
 8004db2:	2b02      	cmp	r3, #2
 8004db4:	dc06      	bgt.n	8004dc4 <_dtoa_r+0xe0c>
 8004db6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004db8:	e7f0      	b.n	8004d9c <_dtoa_r+0xde4>
 8004dba:	f43f ac59 	beq.w	8004670 <_dtoa_r+0x6b8>
 8004dbe:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004dc2:	e450      	b.n	8004666 <_dtoa_r+0x6ae>
 8004dc4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004dc6:	9309      	str	r3, [sp, #36]	; 0x24
 8004dc8:	e678      	b.n	8004abc <_dtoa_r+0xb04>
 8004dca:	bf00      	nop
 8004dcc:	40240000 	.word	0x40240000
 8004dd0:	401c0000 	.word	0x401c0000
 8004dd4:	3fe00000 	.word	0x3fe00000

08004dd8 <__sflush_r>:
 8004dd8:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004ddc:	b29a      	uxth	r2, r3
 8004dde:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004de2:	460c      	mov	r4, r1
 8004de4:	0711      	lsls	r1, r2, #28
 8004de6:	4680      	mov	r8, r0
 8004de8:	d444      	bmi.n	8004e74 <__sflush_r+0x9c>
 8004dea:	6862      	ldr	r2, [r4, #4]
 8004dec:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004df0:	2a00      	cmp	r2, #0
 8004df2:	81a3      	strh	r3, [r4, #12]
 8004df4:	dd59      	ble.n	8004eaa <__sflush_r+0xd2>
 8004df6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004df8:	2d00      	cmp	r5, #0
 8004dfa:	d053      	beq.n	8004ea4 <__sflush_r+0xcc>
 8004dfc:	2200      	movs	r2, #0
 8004dfe:	b29b      	uxth	r3, r3
 8004e00:	f8d8 6000 	ldr.w	r6, [r8]
 8004e04:	69e1      	ldr	r1, [r4, #28]
 8004e06:	f8c8 2000 	str.w	r2, [r8]
 8004e0a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8004e0e:	f040 8083 	bne.w	8004f18 <__sflush_r+0x140>
 8004e12:	2301      	movs	r3, #1
 8004e14:	4640      	mov	r0, r8
 8004e16:	47a8      	blx	r5
 8004e18:	1c42      	adds	r2, r0, #1
 8004e1a:	d04a      	beq.n	8004eb2 <__sflush_r+0xda>
 8004e1c:	89a3      	ldrh	r3, [r4, #12]
 8004e1e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004e20:	69e1      	ldr	r1, [r4, #28]
 8004e22:	075b      	lsls	r3, r3, #29
 8004e24:	d505      	bpl.n	8004e32 <__sflush_r+0x5a>
 8004e26:	6862      	ldr	r2, [r4, #4]
 8004e28:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8004e2a:	1a80      	subs	r0, r0, r2
 8004e2c:	b10b      	cbz	r3, 8004e32 <__sflush_r+0x5a>
 8004e2e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8004e30:	1ac0      	subs	r0, r0, r3
 8004e32:	4602      	mov	r2, r0
 8004e34:	2300      	movs	r3, #0
 8004e36:	4640      	mov	r0, r8
 8004e38:	47a8      	blx	r5
 8004e3a:	1c47      	adds	r7, r0, #1
 8004e3c:	d045      	beq.n	8004eca <__sflush_r+0xf2>
 8004e3e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004e42:	6922      	ldr	r2, [r4, #16]
 8004e44:	6022      	str	r2, [r4, #0]
 8004e46:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8004e4a:	2200      	movs	r2, #0
 8004e4c:	81a3      	strh	r3, [r4, #12]
 8004e4e:	04db      	lsls	r3, r3, #19
 8004e50:	6062      	str	r2, [r4, #4]
 8004e52:	d500      	bpl.n	8004e56 <__sflush_r+0x7e>
 8004e54:	6520      	str	r0, [r4, #80]	; 0x50
 8004e56:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004e58:	f8c8 6000 	str.w	r6, [r8]
 8004e5c:	b311      	cbz	r1, 8004ea4 <__sflush_r+0xcc>
 8004e5e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004e62:	4299      	cmp	r1, r3
 8004e64:	d002      	beq.n	8004e6c <__sflush_r+0x94>
 8004e66:	4640      	mov	r0, r8
 8004e68:	f000 f95e 	bl	8005128 <_free_r>
 8004e6c:	2000      	movs	r0, #0
 8004e6e:	6320      	str	r0, [r4, #48]	; 0x30
 8004e70:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004e74:	6926      	ldr	r6, [r4, #16]
 8004e76:	b1ae      	cbz	r6, 8004ea4 <__sflush_r+0xcc>
 8004e78:	6825      	ldr	r5, [r4, #0]
 8004e7a:	6026      	str	r6, [r4, #0]
 8004e7c:	0792      	lsls	r2, r2, #30
 8004e7e:	bf0c      	ite	eq
 8004e80:	6963      	ldreq	r3, [r4, #20]
 8004e82:	2300      	movne	r3, #0
 8004e84:	1bad      	subs	r5, r5, r6
 8004e86:	60a3      	str	r3, [r4, #8]
 8004e88:	e00a      	b.n	8004ea0 <__sflush_r+0xc8>
 8004e8a:	462b      	mov	r3, r5
 8004e8c:	4632      	mov	r2, r6
 8004e8e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8004e90:	69e1      	ldr	r1, [r4, #28]
 8004e92:	4640      	mov	r0, r8
 8004e94:	47b8      	blx	r7
 8004e96:	2800      	cmp	r0, #0
 8004e98:	eba5 0500 	sub.w	r5, r5, r0
 8004e9c:	4406      	add	r6, r0
 8004e9e:	dd2b      	ble.n	8004ef8 <__sflush_r+0x120>
 8004ea0:	2d00      	cmp	r5, #0
 8004ea2:	dcf2      	bgt.n	8004e8a <__sflush_r+0xb2>
 8004ea4:	2000      	movs	r0, #0
 8004ea6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004eaa:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8004eac:	2a00      	cmp	r2, #0
 8004eae:	dca2      	bgt.n	8004df6 <__sflush_r+0x1e>
 8004eb0:	e7f8      	b.n	8004ea4 <__sflush_r+0xcc>
 8004eb2:	f8d8 3000 	ldr.w	r3, [r8]
 8004eb6:	2b00      	cmp	r3, #0
 8004eb8:	d0b0      	beq.n	8004e1c <__sflush_r+0x44>
 8004eba:	2b1d      	cmp	r3, #29
 8004ebc:	d001      	beq.n	8004ec2 <__sflush_r+0xea>
 8004ebe:	2b16      	cmp	r3, #22
 8004ec0:	d12c      	bne.n	8004f1c <__sflush_r+0x144>
 8004ec2:	f8c8 6000 	str.w	r6, [r8]
 8004ec6:	2000      	movs	r0, #0
 8004ec8:	e7ed      	b.n	8004ea6 <__sflush_r+0xce>
 8004eca:	f8d8 1000 	ldr.w	r1, [r8]
 8004ece:	291d      	cmp	r1, #29
 8004ed0:	d81a      	bhi.n	8004f08 <__sflush_r+0x130>
 8004ed2:	4b15      	ldr	r3, [pc, #84]	; (8004f28 <__sflush_r+0x150>)
 8004ed4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004ed8:	40cb      	lsrs	r3, r1
 8004eda:	43db      	mvns	r3, r3
 8004edc:	f013 0301 	ands.w	r3, r3, #1
 8004ee0:	d114      	bne.n	8004f0c <__sflush_r+0x134>
 8004ee2:	6925      	ldr	r5, [r4, #16]
 8004ee4:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8004ee8:	e9c4 5300 	strd	r5, r3, [r4]
 8004eec:	04d5      	lsls	r5, r2, #19
 8004eee:	81a2      	strh	r2, [r4, #12]
 8004ef0:	d5b1      	bpl.n	8004e56 <__sflush_r+0x7e>
 8004ef2:	2900      	cmp	r1, #0
 8004ef4:	d1af      	bne.n	8004e56 <__sflush_r+0x7e>
 8004ef6:	e7ad      	b.n	8004e54 <__sflush_r+0x7c>
 8004ef8:	89a3      	ldrh	r3, [r4, #12]
 8004efa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004efe:	81a3      	strh	r3, [r4, #12]
 8004f00:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004f04:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004f08:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004f0c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004f10:	81a2      	strh	r2, [r4, #12]
 8004f12:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004f16:	e7c6      	b.n	8004ea6 <__sflush_r+0xce>
 8004f18:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8004f1a:	e782      	b.n	8004e22 <__sflush_r+0x4a>
 8004f1c:	89a3      	ldrh	r3, [r4, #12]
 8004f1e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004f22:	81a3      	strh	r3, [r4, #12]
 8004f24:	e7bf      	b.n	8004ea6 <__sflush_r+0xce>
 8004f26:	bf00      	nop
 8004f28:	20400001 	.word	0x20400001

08004f2c <_fflush_r>:
 8004f2c:	b538      	push	{r3, r4, r5, lr}
 8004f2e:	460d      	mov	r5, r1
 8004f30:	4604      	mov	r4, r0
 8004f32:	b108      	cbz	r0, 8004f38 <_fflush_r+0xc>
 8004f34:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8004f36:	b1a3      	cbz	r3, 8004f62 <_fflush_r+0x36>
 8004f38:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8004f3c:	b1b8      	cbz	r0, 8004f6e <_fflush_r+0x42>
 8004f3e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8004f40:	07db      	lsls	r3, r3, #31
 8004f42:	d401      	bmi.n	8004f48 <_fflush_r+0x1c>
 8004f44:	0581      	lsls	r1, r0, #22
 8004f46:	d51a      	bpl.n	8004f7e <_fflush_r+0x52>
 8004f48:	4620      	mov	r0, r4
 8004f4a:	4629      	mov	r1, r5
 8004f4c:	f7ff ff44 	bl	8004dd8 <__sflush_r>
 8004f50:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8004f52:	07da      	lsls	r2, r3, #31
 8004f54:	4604      	mov	r4, r0
 8004f56:	d402      	bmi.n	8004f5e <_fflush_r+0x32>
 8004f58:	89ab      	ldrh	r3, [r5, #12]
 8004f5a:	059b      	lsls	r3, r3, #22
 8004f5c:	d50a      	bpl.n	8004f74 <_fflush_r+0x48>
 8004f5e:	4620      	mov	r0, r4
 8004f60:	bd38      	pop	{r3, r4, r5, pc}
 8004f62:	f000 f83f 	bl	8004fe4 <__sinit>
 8004f66:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8004f6a:	2800      	cmp	r0, #0
 8004f6c:	d1e7      	bne.n	8004f3e <_fflush_r+0x12>
 8004f6e:	4604      	mov	r4, r0
 8004f70:	4620      	mov	r0, r4
 8004f72:	bd38      	pop	{r3, r4, r5, pc}
 8004f74:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8004f76:	f000 fb87 	bl	8005688 <__retarget_lock_release_recursive>
 8004f7a:	4620      	mov	r0, r4
 8004f7c:	bd38      	pop	{r3, r4, r5, pc}
 8004f7e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8004f80:	f000 fb80 	bl	8005684 <__retarget_lock_acquire_recursive>
 8004f84:	e7e0      	b.n	8004f48 <_fflush_r+0x1c>
 8004f86:	bf00      	nop

08004f88 <std>:
 8004f88:	b510      	push	{r4, lr}
 8004f8a:	2300      	movs	r3, #0
 8004f8c:	4604      	mov	r4, r0
 8004f8e:	8181      	strh	r1, [r0, #12]
 8004f90:	81c2      	strh	r2, [r0, #14]
 8004f92:	e9c0 3300 	strd	r3, r3, [r0]
 8004f96:	6083      	str	r3, [r0, #8]
 8004f98:	6643      	str	r3, [r0, #100]	; 0x64
 8004f9a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8004f9e:	6183      	str	r3, [r0, #24]
 8004fa0:	4619      	mov	r1, r3
 8004fa2:	2208      	movs	r2, #8
 8004fa4:	305c      	adds	r0, #92	; 0x5c
 8004fa6:	f7fd f8cb 	bl	8002140 <memset>
 8004faa:	4807      	ldr	r0, [pc, #28]	; (8004fc8 <std+0x40>)
 8004fac:	4907      	ldr	r1, [pc, #28]	; (8004fcc <std+0x44>)
 8004fae:	4a08      	ldr	r2, [pc, #32]	; (8004fd0 <std+0x48>)
 8004fb0:	4b08      	ldr	r3, [pc, #32]	; (8004fd4 <std+0x4c>)
 8004fb2:	62e3      	str	r3, [r4, #44]	; 0x2c
 8004fb4:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8004fb8:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8004fbc:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8004fc0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8004fc4:	f000 bb5a 	b.w	800567c <__retarget_lock_init_recursive>
 8004fc8:	080067a1 	.word	0x080067a1
 8004fcc:	080067c5 	.word	0x080067c5
 8004fd0:	08006801 	.word	0x08006801
 8004fd4:	08006821 	.word	0x08006821

08004fd8 <_cleanup_r>:
 8004fd8:	4901      	ldr	r1, [pc, #4]	; (8004fe0 <_cleanup_r+0x8>)
 8004fda:	f000 bb17 	b.w	800560c <_fwalk_reent>
 8004fde:	bf00      	nop
 8004fe0:	08006a91 	.word	0x08006a91

08004fe4 <__sinit>:
 8004fe4:	b510      	push	{r4, lr}
 8004fe6:	4604      	mov	r4, r0
 8004fe8:	4812      	ldr	r0, [pc, #72]	; (8005034 <__sinit+0x50>)
 8004fea:	f000 fb4b 	bl	8005684 <__retarget_lock_acquire_recursive>
 8004fee:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8004ff0:	b9d2      	cbnz	r2, 8005028 <__sinit+0x44>
 8004ff2:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8004ff6:	4810      	ldr	r0, [pc, #64]	; (8005038 <__sinit+0x54>)
 8004ff8:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8004ffc:	2103      	movs	r1, #3
 8004ffe:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005002:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005004:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005008:	6860      	ldr	r0, [r4, #4]
 800500a:	2104      	movs	r1, #4
 800500c:	f7ff ffbc 	bl	8004f88 <std>
 8005010:	2201      	movs	r2, #1
 8005012:	2109      	movs	r1, #9
 8005014:	68a0      	ldr	r0, [r4, #8]
 8005016:	f7ff ffb7 	bl	8004f88 <std>
 800501a:	2202      	movs	r2, #2
 800501c:	2112      	movs	r1, #18
 800501e:	68e0      	ldr	r0, [r4, #12]
 8005020:	f7ff ffb2 	bl	8004f88 <std>
 8005024:	2301      	movs	r3, #1
 8005026:	63a3      	str	r3, [r4, #56]	; 0x38
 8005028:	4802      	ldr	r0, [pc, #8]	; (8005034 <__sinit+0x50>)
 800502a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800502e:	f000 bb2b 	b.w	8005688 <__retarget_lock_release_recursive>
 8005032:	bf00      	nop
 8005034:	20000afc 	.word	0x20000afc
 8005038:	08004fd9 	.word	0x08004fd9

0800503c <__sfp_lock_acquire>:
 800503c:	4801      	ldr	r0, [pc, #4]	; (8005044 <__sfp_lock_acquire+0x8>)
 800503e:	f000 bb21 	b.w	8005684 <__retarget_lock_acquire_recursive>
 8005042:	bf00      	nop
 8005044:	20000b10 	.word	0x20000b10

08005048 <__sfp_lock_release>:
 8005048:	4801      	ldr	r0, [pc, #4]	; (8005050 <__sfp_lock_release+0x8>)
 800504a:	f000 bb1d 	b.w	8005688 <__retarget_lock_release_recursive>
 800504e:	bf00      	nop
 8005050:	20000b10 	.word	0x20000b10

08005054 <__libc_fini_array>:
 8005054:	b538      	push	{r3, r4, r5, lr}
 8005056:	4c0a      	ldr	r4, [pc, #40]	; (8005080 <__libc_fini_array+0x2c>)
 8005058:	4d0a      	ldr	r5, [pc, #40]	; (8005084 <__libc_fini_array+0x30>)
 800505a:	1b64      	subs	r4, r4, r5
 800505c:	10a4      	asrs	r4, r4, #2
 800505e:	d00a      	beq.n	8005076 <__libc_fini_array+0x22>
 8005060:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005064:	3b01      	subs	r3, #1
 8005066:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800506a:	3c01      	subs	r4, #1
 800506c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005070:	4798      	blx	r3
 8005072:	2c00      	cmp	r4, #0
 8005074:	d1f9      	bne.n	800506a <__libc_fini_array+0x16>
 8005076:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800507a:	f001 befd 	b.w	8006e78 <_fini>
 800507e:	bf00      	nop
 8005080:	08007244 	.word	0x08007244
 8005084:	08007240 	.word	0x08007240

08005088 <_malloc_trim_r>:
 8005088:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800508a:	4f24      	ldr	r7, [pc, #144]	; (800511c <_malloc_trim_r+0x94>)
 800508c:	460c      	mov	r4, r1
 800508e:	4606      	mov	r6, r0
 8005090:	f000 fe7c 	bl	8005d8c <__malloc_lock>
 8005094:	68bb      	ldr	r3, [r7, #8]
 8005096:	685d      	ldr	r5, [r3, #4]
 8005098:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800509c:	310f      	adds	r1, #15
 800509e:	f025 0503 	bic.w	r5, r5, #3
 80050a2:	4429      	add	r1, r5
 80050a4:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 80050a8:	f021 010f 	bic.w	r1, r1, #15
 80050ac:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 80050b0:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 80050b4:	db07      	blt.n	80050c6 <_malloc_trim_r+0x3e>
 80050b6:	2100      	movs	r1, #0
 80050b8:	4630      	mov	r0, r6
 80050ba:	f001 fb5f 	bl	800677c <_sbrk_r>
 80050be:	68bb      	ldr	r3, [r7, #8]
 80050c0:	442b      	add	r3, r5
 80050c2:	4298      	cmp	r0, r3
 80050c4:	d004      	beq.n	80050d0 <_malloc_trim_r+0x48>
 80050c6:	4630      	mov	r0, r6
 80050c8:	f000 fe66 	bl	8005d98 <__malloc_unlock>
 80050cc:	2000      	movs	r0, #0
 80050ce:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80050d0:	4261      	negs	r1, r4
 80050d2:	4630      	mov	r0, r6
 80050d4:	f001 fb52 	bl	800677c <_sbrk_r>
 80050d8:	3001      	adds	r0, #1
 80050da:	d00d      	beq.n	80050f8 <_malloc_trim_r+0x70>
 80050dc:	4b10      	ldr	r3, [pc, #64]	; (8005120 <_malloc_trim_r+0x98>)
 80050de:	68ba      	ldr	r2, [r7, #8]
 80050e0:	6819      	ldr	r1, [r3, #0]
 80050e2:	1b2d      	subs	r5, r5, r4
 80050e4:	f045 0501 	orr.w	r5, r5, #1
 80050e8:	4630      	mov	r0, r6
 80050ea:	1b09      	subs	r1, r1, r4
 80050ec:	6055      	str	r5, [r2, #4]
 80050ee:	6019      	str	r1, [r3, #0]
 80050f0:	f000 fe52 	bl	8005d98 <__malloc_unlock>
 80050f4:	2001      	movs	r0, #1
 80050f6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80050f8:	2100      	movs	r1, #0
 80050fa:	4630      	mov	r0, r6
 80050fc:	f001 fb3e 	bl	800677c <_sbrk_r>
 8005100:	68ba      	ldr	r2, [r7, #8]
 8005102:	1a83      	subs	r3, r0, r2
 8005104:	2b0f      	cmp	r3, #15
 8005106:	ddde      	ble.n	80050c6 <_malloc_trim_r+0x3e>
 8005108:	4c06      	ldr	r4, [pc, #24]	; (8005124 <_malloc_trim_r+0x9c>)
 800510a:	4905      	ldr	r1, [pc, #20]	; (8005120 <_malloc_trim_r+0x98>)
 800510c:	6824      	ldr	r4, [r4, #0]
 800510e:	f043 0301 	orr.w	r3, r3, #1
 8005112:	1b00      	subs	r0, r0, r4
 8005114:	6053      	str	r3, [r2, #4]
 8005116:	6008      	str	r0, [r1, #0]
 8005118:	e7d5      	b.n	80050c6 <_malloc_trim_r+0x3e>
 800511a:	bf00      	nop
 800511c:	2000044c 	.word	0x2000044c
 8005120:	20000a74 	.word	0x20000a74
 8005124:	20000854 	.word	0x20000854

08005128 <_free_r>:
 8005128:	2900      	cmp	r1, #0
 800512a:	d053      	beq.n	80051d4 <_free_r+0xac>
 800512c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800512e:	460c      	mov	r4, r1
 8005130:	4606      	mov	r6, r0
 8005132:	f000 fe2b 	bl	8005d8c <__malloc_lock>
 8005136:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800513a:	4f71      	ldr	r7, [pc, #452]	; (8005300 <_free_r+0x1d8>)
 800513c:	f02c 0101 	bic.w	r1, ip, #1
 8005140:	f1a4 0508 	sub.w	r5, r4, #8
 8005144:	186b      	adds	r3, r5, r1
 8005146:	68b8      	ldr	r0, [r7, #8]
 8005148:	685a      	ldr	r2, [r3, #4]
 800514a:	4298      	cmp	r0, r3
 800514c:	f022 0203 	bic.w	r2, r2, #3
 8005150:	d053      	beq.n	80051fa <_free_r+0xd2>
 8005152:	f01c 0f01 	tst.w	ip, #1
 8005156:	605a      	str	r2, [r3, #4]
 8005158:	eb03 0002 	add.w	r0, r3, r2
 800515c:	d13b      	bne.n	80051d6 <_free_r+0xae>
 800515e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005162:	6840      	ldr	r0, [r0, #4]
 8005164:	eba5 050c 	sub.w	r5, r5, ip
 8005168:	f107 0e08 	add.w	lr, r7, #8
 800516c:	68ac      	ldr	r4, [r5, #8]
 800516e:	4574      	cmp	r4, lr
 8005170:	4461      	add	r1, ip
 8005172:	f000 0001 	and.w	r0, r0, #1
 8005176:	d075      	beq.n	8005264 <_free_r+0x13c>
 8005178:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800517c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005180:	f8cc 4008 	str.w	r4, [ip, #8]
 8005184:	b360      	cbz	r0, 80051e0 <_free_r+0xb8>
 8005186:	f041 0301 	orr.w	r3, r1, #1
 800518a:	606b      	str	r3, [r5, #4]
 800518c:	5069      	str	r1, [r5, r1]
 800518e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005192:	d350      	bcc.n	8005236 <_free_r+0x10e>
 8005194:	0a4b      	lsrs	r3, r1, #9
 8005196:	2b04      	cmp	r3, #4
 8005198:	d870      	bhi.n	800527c <_free_r+0x154>
 800519a:	098b      	lsrs	r3, r1, #6
 800519c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 80051a0:	00e4      	lsls	r4, r4, #3
 80051a2:	f103 0238 	add.w	r2, r3, #56	; 0x38
 80051a6:	1938      	adds	r0, r7, r4
 80051a8:	593b      	ldr	r3, [r7, r4]
 80051aa:	3808      	subs	r0, #8
 80051ac:	4298      	cmp	r0, r3
 80051ae:	d078      	beq.n	80052a2 <_free_r+0x17a>
 80051b0:	685a      	ldr	r2, [r3, #4]
 80051b2:	f022 0203 	bic.w	r2, r2, #3
 80051b6:	428a      	cmp	r2, r1
 80051b8:	d971      	bls.n	800529e <_free_r+0x176>
 80051ba:	689b      	ldr	r3, [r3, #8]
 80051bc:	4298      	cmp	r0, r3
 80051be:	d1f7      	bne.n	80051b0 <_free_r+0x88>
 80051c0:	68c3      	ldr	r3, [r0, #12]
 80051c2:	e9c5 0302 	strd	r0, r3, [r5, #8]
 80051c6:	609d      	str	r5, [r3, #8]
 80051c8:	60c5      	str	r5, [r0, #12]
 80051ca:	4630      	mov	r0, r6
 80051cc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80051d0:	f000 bde2 	b.w	8005d98 <__malloc_unlock>
 80051d4:	4770      	bx	lr
 80051d6:	6840      	ldr	r0, [r0, #4]
 80051d8:	f000 0001 	and.w	r0, r0, #1
 80051dc:	2800      	cmp	r0, #0
 80051de:	d1d2      	bne.n	8005186 <_free_r+0x5e>
 80051e0:	6898      	ldr	r0, [r3, #8]
 80051e2:	4c48      	ldr	r4, [pc, #288]	; (8005304 <_free_r+0x1dc>)
 80051e4:	4411      	add	r1, r2
 80051e6:	42a0      	cmp	r0, r4
 80051e8:	f041 0201 	orr.w	r2, r1, #1
 80051ec:	d062      	beq.n	80052b4 <_free_r+0x18c>
 80051ee:	68db      	ldr	r3, [r3, #12]
 80051f0:	60c3      	str	r3, [r0, #12]
 80051f2:	6098      	str	r0, [r3, #8]
 80051f4:	606a      	str	r2, [r5, #4]
 80051f6:	5069      	str	r1, [r5, r1]
 80051f8:	e7c9      	b.n	800518e <_free_r+0x66>
 80051fa:	f01c 0f01 	tst.w	ip, #1
 80051fe:	440a      	add	r2, r1
 8005200:	d107      	bne.n	8005212 <_free_r+0xea>
 8005202:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005206:	1aed      	subs	r5, r5, r3
 8005208:	441a      	add	r2, r3
 800520a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800520e:	60cb      	str	r3, [r1, #12]
 8005210:	6099      	str	r1, [r3, #8]
 8005212:	4b3d      	ldr	r3, [pc, #244]	; (8005308 <_free_r+0x1e0>)
 8005214:	681b      	ldr	r3, [r3, #0]
 8005216:	f042 0101 	orr.w	r1, r2, #1
 800521a:	4293      	cmp	r3, r2
 800521c:	6069      	str	r1, [r5, #4]
 800521e:	60bd      	str	r5, [r7, #8]
 8005220:	d804      	bhi.n	800522c <_free_r+0x104>
 8005222:	4b3a      	ldr	r3, [pc, #232]	; (800530c <_free_r+0x1e4>)
 8005224:	4630      	mov	r0, r6
 8005226:	6819      	ldr	r1, [r3, #0]
 8005228:	f7ff ff2e 	bl	8005088 <_malloc_trim_r>
 800522c:	4630      	mov	r0, r6
 800522e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005232:	f000 bdb1 	b.w	8005d98 <__malloc_unlock>
 8005236:	08c9      	lsrs	r1, r1, #3
 8005238:	6878      	ldr	r0, [r7, #4]
 800523a:	1c4a      	adds	r2, r1, #1
 800523c:	2301      	movs	r3, #1
 800523e:	1089      	asrs	r1, r1, #2
 8005240:	408b      	lsls	r3, r1
 8005242:	4303      	orrs	r3, r0
 8005244:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005248:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 800524c:	607b      	str	r3, [r7, #4]
 800524e:	3908      	subs	r1, #8
 8005250:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005254:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005258:	60c5      	str	r5, [r0, #12]
 800525a:	4630      	mov	r0, r6
 800525c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005260:	f000 bd9a 	b.w	8005d98 <__malloc_unlock>
 8005264:	2800      	cmp	r0, #0
 8005266:	d145      	bne.n	80052f4 <_free_r+0x1cc>
 8005268:	440a      	add	r2, r1
 800526a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800526e:	f042 0001 	orr.w	r0, r2, #1
 8005272:	60cb      	str	r3, [r1, #12]
 8005274:	6099      	str	r1, [r3, #8]
 8005276:	6068      	str	r0, [r5, #4]
 8005278:	50aa      	str	r2, [r5, r2]
 800527a:	e7d7      	b.n	800522c <_free_r+0x104>
 800527c:	2b14      	cmp	r3, #20
 800527e:	d908      	bls.n	8005292 <_free_r+0x16a>
 8005280:	2b54      	cmp	r3, #84	; 0x54
 8005282:	d81e      	bhi.n	80052c2 <_free_r+0x19a>
 8005284:	0b0b      	lsrs	r3, r1, #12
 8005286:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800528a:	00e4      	lsls	r4, r4, #3
 800528c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005290:	e789      	b.n	80051a6 <_free_r+0x7e>
 8005292:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005296:	00e4      	lsls	r4, r4, #3
 8005298:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800529c:	e783      	b.n	80051a6 <_free_r+0x7e>
 800529e:	4618      	mov	r0, r3
 80052a0:	e78e      	b.n	80051c0 <_free_r+0x98>
 80052a2:	1093      	asrs	r3, r2, #2
 80052a4:	6879      	ldr	r1, [r7, #4]
 80052a6:	2201      	movs	r2, #1
 80052a8:	fa02 f303 	lsl.w	r3, r2, r3
 80052ac:	430b      	orrs	r3, r1
 80052ae:	607b      	str	r3, [r7, #4]
 80052b0:	4603      	mov	r3, r0
 80052b2:	e786      	b.n	80051c2 <_free_r+0x9a>
 80052b4:	e9c7 5504 	strd	r5, r5, [r7, #16]
 80052b8:	e9c5 0002 	strd	r0, r0, [r5, #8]
 80052bc:	606a      	str	r2, [r5, #4]
 80052be:	5069      	str	r1, [r5, r1]
 80052c0:	e7b4      	b.n	800522c <_free_r+0x104>
 80052c2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80052c6:	d806      	bhi.n	80052d6 <_free_r+0x1ae>
 80052c8:	0bcb      	lsrs	r3, r1, #15
 80052ca:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80052ce:	00e4      	lsls	r4, r4, #3
 80052d0:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80052d4:	e767      	b.n	80051a6 <_free_r+0x7e>
 80052d6:	f240 5254 	movw	r2, #1364	; 0x554
 80052da:	4293      	cmp	r3, r2
 80052dc:	d806      	bhi.n	80052ec <_free_r+0x1c4>
 80052de:	0c8b      	lsrs	r3, r1, #18
 80052e0:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80052e4:	00e4      	lsls	r4, r4, #3
 80052e6:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80052ea:	e75c      	b.n	80051a6 <_free_r+0x7e>
 80052ec:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80052f0:	227e      	movs	r2, #126	; 0x7e
 80052f2:	e758      	b.n	80051a6 <_free_r+0x7e>
 80052f4:	f041 0201 	orr.w	r2, r1, #1
 80052f8:	606a      	str	r2, [r5, #4]
 80052fa:	6019      	str	r1, [r3, #0]
 80052fc:	e796      	b.n	800522c <_free_r+0x104>
 80052fe:	bf00      	nop
 8005300:	2000044c 	.word	0x2000044c
 8005304:	20000454 	.word	0x20000454
 8005308:	20000858 	.word	0x20000858
 800530c:	20000aa4 	.word	0x20000aa4

08005310 <__sfvwrite_r>:
 8005310:	6893      	ldr	r3, [r2, #8]
 8005312:	2b00      	cmp	r3, #0
 8005314:	f000 80e4 	beq.w	80054e0 <__sfvwrite_r+0x1d0>
 8005318:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800531c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005320:	b29b      	uxth	r3, r3
 8005322:	460c      	mov	r4, r1
 8005324:	0719      	lsls	r1, r3, #28
 8005326:	b083      	sub	sp, #12
 8005328:	4682      	mov	sl, r0
 800532a:	4690      	mov	r8, r2
 800532c:	d535      	bpl.n	800539a <__sfvwrite_r+0x8a>
 800532e:	6922      	ldr	r2, [r4, #16]
 8005330:	b39a      	cbz	r2, 800539a <__sfvwrite_r+0x8a>
 8005332:	f013 0202 	ands.w	r2, r3, #2
 8005336:	f8d8 6000 	ldr.w	r6, [r8]
 800533a:	d03d      	beq.n	80053b8 <__sfvwrite_r+0xa8>
 800533c:	2700      	movs	r7, #0
 800533e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005342:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005346:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005608 <__sfvwrite_r+0x2f8>
 800534a:	463d      	mov	r5, r7
 800534c:	454d      	cmp	r5, r9
 800534e:	462b      	mov	r3, r5
 8005350:	463a      	mov	r2, r7
 8005352:	bf28      	it	cs
 8005354:	464b      	movcs	r3, r9
 8005356:	4661      	mov	r1, ip
 8005358:	4650      	mov	r0, sl
 800535a:	b1d5      	cbz	r5, 8005392 <__sfvwrite_r+0x82>
 800535c:	47d8      	blx	fp
 800535e:	2800      	cmp	r0, #0
 8005360:	f340 80c6 	ble.w	80054f0 <__sfvwrite_r+0x1e0>
 8005364:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005368:	1a1b      	subs	r3, r3, r0
 800536a:	4407      	add	r7, r0
 800536c:	1a2d      	subs	r5, r5, r0
 800536e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005372:	2b00      	cmp	r3, #0
 8005374:	f000 80b0 	beq.w	80054d8 <__sfvwrite_r+0x1c8>
 8005378:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800537c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005380:	454d      	cmp	r5, r9
 8005382:	462b      	mov	r3, r5
 8005384:	463a      	mov	r2, r7
 8005386:	bf28      	it	cs
 8005388:	464b      	movcs	r3, r9
 800538a:	4661      	mov	r1, ip
 800538c:	4650      	mov	r0, sl
 800538e:	2d00      	cmp	r5, #0
 8005390:	d1e4      	bne.n	800535c <__sfvwrite_r+0x4c>
 8005392:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005396:	3608      	adds	r6, #8
 8005398:	e7d8      	b.n	800534c <__sfvwrite_r+0x3c>
 800539a:	4621      	mov	r1, r4
 800539c:	4650      	mov	r0, sl
 800539e:	f7fe fd03 	bl	8003da8 <__swsetup_r>
 80053a2:	2800      	cmp	r0, #0
 80053a4:	f040 812a 	bne.w	80055fc <__sfvwrite_r+0x2ec>
 80053a8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80053ac:	f8d8 6000 	ldr.w	r6, [r8]
 80053b0:	b29b      	uxth	r3, r3
 80053b2:	f013 0202 	ands.w	r2, r3, #2
 80053b6:	d1c1      	bne.n	800533c <__sfvwrite_r+0x2c>
 80053b8:	f013 0901 	ands.w	r9, r3, #1
 80053bc:	d15d      	bne.n	800547a <__sfvwrite_r+0x16a>
 80053be:	68a7      	ldr	r7, [r4, #8]
 80053c0:	6820      	ldr	r0, [r4, #0]
 80053c2:	464d      	mov	r5, r9
 80053c4:	2d00      	cmp	r5, #0
 80053c6:	d054      	beq.n	8005472 <__sfvwrite_r+0x162>
 80053c8:	059a      	lsls	r2, r3, #22
 80053ca:	f140 809b 	bpl.w	8005504 <__sfvwrite_r+0x1f4>
 80053ce:	42af      	cmp	r7, r5
 80053d0:	46bb      	mov	fp, r7
 80053d2:	f200 80d8 	bhi.w	8005586 <__sfvwrite_r+0x276>
 80053d6:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80053da:	d02f      	beq.n	800543c <__sfvwrite_r+0x12c>
 80053dc:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80053e0:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80053e4:	eba0 0b01 	sub.w	fp, r0, r1
 80053e8:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80053ec:	1c68      	adds	r0, r5, #1
 80053ee:	107f      	asrs	r7, r7, #1
 80053f0:	4458      	add	r0, fp
 80053f2:	42b8      	cmp	r0, r7
 80053f4:	463a      	mov	r2, r7
 80053f6:	bf84      	itt	hi
 80053f8:	4607      	movhi	r7, r0
 80053fa:	463a      	movhi	r2, r7
 80053fc:	055b      	lsls	r3, r3, #21
 80053fe:	f140 80d3 	bpl.w	80055a8 <__sfvwrite_r+0x298>
 8005402:	4611      	mov	r1, r2
 8005404:	4650      	mov	r0, sl
 8005406:	f000 f9b9 	bl	800577c <_malloc_r>
 800540a:	2800      	cmp	r0, #0
 800540c:	f000 80f0 	beq.w	80055f0 <__sfvwrite_r+0x2e0>
 8005410:	465a      	mov	r2, fp
 8005412:	6921      	ldr	r1, [r4, #16]
 8005414:	9001      	str	r0, [sp, #4]
 8005416:	f7fb f873 	bl	8000500 <memcpy>
 800541a:	89a2      	ldrh	r2, [r4, #12]
 800541c:	9b01      	ldr	r3, [sp, #4]
 800541e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005422:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005426:	81a2      	strh	r2, [r4, #12]
 8005428:	eba7 020b 	sub.w	r2, r7, fp
 800542c:	eb03 000b 	add.w	r0, r3, fp
 8005430:	6167      	str	r7, [r4, #20]
 8005432:	6123      	str	r3, [r4, #16]
 8005434:	6020      	str	r0, [r4, #0]
 8005436:	60a2      	str	r2, [r4, #8]
 8005438:	462f      	mov	r7, r5
 800543a:	46ab      	mov	fp, r5
 800543c:	465a      	mov	r2, fp
 800543e:	4649      	mov	r1, r9
 8005440:	f000 fc40 	bl	8005cc4 <memmove>
 8005444:	68a2      	ldr	r2, [r4, #8]
 8005446:	6823      	ldr	r3, [r4, #0]
 8005448:	1bd2      	subs	r2, r2, r7
 800544a:	445b      	add	r3, fp
 800544c:	462f      	mov	r7, r5
 800544e:	60a2      	str	r2, [r4, #8]
 8005450:	6023      	str	r3, [r4, #0]
 8005452:	2500      	movs	r5, #0
 8005454:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005458:	1bdb      	subs	r3, r3, r7
 800545a:	44b9      	add	r9, r7
 800545c:	f8c8 3008 	str.w	r3, [r8, #8]
 8005460:	2b00      	cmp	r3, #0
 8005462:	d039      	beq.n	80054d8 <__sfvwrite_r+0x1c8>
 8005464:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005468:	68a7      	ldr	r7, [r4, #8]
 800546a:	6820      	ldr	r0, [r4, #0]
 800546c:	b29b      	uxth	r3, r3
 800546e:	2d00      	cmp	r5, #0
 8005470:	d1aa      	bne.n	80053c8 <__sfvwrite_r+0xb8>
 8005472:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005476:	3608      	adds	r6, #8
 8005478:	e7a4      	b.n	80053c4 <__sfvwrite_r+0xb4>
 800547a:	4633      	mov	r3, r6
 800547c:	4691      	mov	r9, r2
 800547e:	4610      	mov	r0, r2
 8005480:	4617      	mov	r7, r2
 8005482:	464e      	mov	r6, r9
 8005484:	469b      	mov	fp, r3
 8005486:	2f00      	cmp	r7, #0
 8005488:	d06b      	beq.n	8005562 <__sfvwrite_r+0x252>
 800548a:	2800      	cmp	r0, #0
 800548c:	d071      	beq.n	8005572 <__sfvwrite_r+0x262>
 800548e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005492:	6820      	ldr	r0, [r4, #0]
 8005494:	45b9      	cmp	r9, r7
 8005496:	464b      	mov	r3, r9
 8005498:	bf28      	it	cs
 800549a:	463b      	movcs	r3, r7
 800549c:	4288      	cmp	r0, r1
 800549e:	d903      	bls.n	80054a8 <__sfvwrite_r+0x198>
 80054a0:	68a5      	ldr	r5, [r4, #8]
 80054a2:	4415      	add	r5, r2
 80054a4:	42ab      	cmp	r3, r5
 80054a6:	dc71      	bgt.n	800558c <__sfvwrite_r+0x27c>
 80054a8:	429a      	cmp	r2, r3
 80054aa:	f300 8093 	bgt.w	80055d4 <__sfvwrite_r+0x2c4>
 80054ae:	4613      	mov	r3, r2
 80054b0:	6a65      	ldr	r5, [r4, #36]	; 0x24
 80054b2:	69e1      	ldr	r1, [r4, #28]
 80054b4:	4632      	mov	r2, r6
 80054b6:	4650      	mov	r0, sl
 80054b8:	47a8      	blx	r5
 80054ba:	1e05      	subs	r5, r0, #0
 80054bc:	dd18      	ble.n	80054f0 <__sfvwrite_r+0x1e0>
 80054be:	ebb9 0905 	subs.w	r9, r9, r5
 80054c2:	d00f      	beq.n	80054e4 <__sfvwrite_r+0x1d4>
 80054c4:	2001      	movs	r0, #1
 80054c6:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80054ca:	1b5b      	subs	r3, r3, r5
 80054cc:	442e      	add	r6, r5
 80054ce:	1b7f      	subs	r7, r7, r5
 80054d0:	f8c8 3008 	str.w	r3, [r8, #8]
 80054d4:	2b00      	cmp	r3, #0
 80054d6:	d1d6      	bne.n	8005486 <__sfvwrite_r+0x176>
 80054d8:	2000      	movs	r0, #0
 80054da:	b003      	add	sp, #12
 80054dc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80054e0:	2000      	movs	r0, #0
 80054e2:	4770      	bx	lr
 80054e4:	4621      	mov	r1, r4
 80054e6:	4650      	mov	r0, sl
 80054e8:	f7ff fd20 	bl	8004f2c <_fflush_r>
 80054ec:	2800      	cmp	r0, #0
 80054ee:	d0ea      	beq.n	80054c6 <__sfvwrite_r+0x1b6>
 80054f0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80054f4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80054f8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80054fc:	81a3      	strh	r3, [r4, #12]
 80054fe:	b003      	add	sp, #12
 8005500:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005504:	6923      	ldr	r3, [r4, #16]
 8005506:	4283      	cmp	r3, r0
 8005508:	d315      	bcc.n	8005536 <__sfvwrite_r+0x226>
 800550a:	6961      	ldr	r1, [r4, #20]
 800550c:	42a9      	cmp	r1, r5
 800550e:	d812      	bhi.n	8005536 <__sfvwrite_r+0x226>
 8005510:	4b3c      	ldr	r3, [pc, #240]	; (8005604 <__sfvwrite_r+0x2f4>)
 8005512:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005514:	429d      	cmp	r5, r3
 8005516:	bf94      	ite	ls
 8005518:	462b      	movls	r3, r5
 800551a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 800551e:	464a      	mov	r2, r9
 8005520:	fb93 f3f1 	sdiv	r3, r3, r1
 8005524:	4650      	mov	r0, sl
 8005526:	fb01 f303 	mul.w	r3, r1, r3
 800552a:	69e1      	ldr	r1, [r4, #28]
 800552c:	47b8      	blx	r7
 800552e:	1e07      	subs	r7, r0, #0
 8005530:	ddde      	ble.n	80054f0 <__sfvwrite_r+0x1e0>
 8005532:	1bed      	subs	r5, r5, r7
 8005534:	e78e      	b.n	8005454 <__sfvwrite_r+0x144>
 8005536:	42af      	cmp	r7, r5
 8005538:	bf28      	it	cs
 800553a:	462f      	movcs	r7, r5
 800553c:	463a      	mov	r2, r7
 800553e:	4649      	mov	r1, r9
 8005540:	f000 fbc0 	bl	8005cc4 <memmove>
 8005544:	68a3      	ldr	r3, [r4, #8]
 8005546:	6822      	ldr	r2, [r4, #0]
 8005548:	1bdb      	subs	r3, r3, r7
 800554a:	443a      	add	r2, r7
 800554c:	60a3      	str	r3, [r4, #8]
 800554e:	6022      	str	r2, [r4, #0]
 8005550:	2b00      	cmp	r3, #0
 8005552:	d1ee      	bne.n	8005532 <__sfvwrite_r+0x222>
 8005554:	4621      	mov	r1, r4
 8005556:	4650      	mov	r0, sl
 8005558:	f7ff fce8 	bl	8004f2c <_fflush_r>
 800555c:	2800      	cmp	r0, #0
 800555e:	d0e8      	beq.n	8005532 <__sfvwrite_r+0x222>
 8005560:	e7c6      	b.n	80054f0 <__sfvwrite_r+0x1e0>
 8005562:	f10b 0308 	add.w	r3, fp, #8
 8005566:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 800556a:	469b      	mov	fp, r3
 800556c:	3308      	adds	r3, #8
 800556e:	2f00      	cmp	r7, #0
 8005570:	d0f9      	beq.n	8005566 <__sfvwrite_r+0x256>
 8005572:	463a      	mov	r2, r7
 8005574:	210a      	movs	r1, #10
 8005576:	4630      	mov	r0, r6
 8005578:	f7fb f8d2 	bl	8000720 <memchr>
 800557c:	b338      	cbz	r0, 80055ce <__sfvwrite_r+0x2be>
 800557e:	3001      	adds	r0, #1
 8005580:	eba0 0906 	sub.w	r9, r0, r6
 8005584:	e783      	b.n	800548e <__sfvwrite_r+0x17e>
 8005586:	462f      	mov	r7, r5
 8005588:	46ab      	mov	fp, r5
 800558a:	e757      	b.n	800543c <__sfvwrite_r+0x12c>
 800558c:	4631      	mov	r1, r6
 800558e:	462a      	mov	r2, r5
 8005590:	f000 fb98 	bl	8005cc4 <memmove>
 8005594:	6823      	ldr	r3, [r4, #0]
 8005596:	442b      	add	r3, r5
 8005598:	6023      	str	r3, [r4, #0]
 800559a:	4621      	mov	r1, r4
 800559c:	4650      	mov	r0, sl
 800559e:	f7ff fcc5 	bl	8004f2c <_fflush_r>
 80055a2:	2800      	cmp	r0, #0
 80055a4:	d08b      	beq.n	80054be <__sfvwrite_r+0x1ae>
 80055a6:	e7a3      	b.n	80054f0 <__sfvwrite_r+0x1e0>
 80055a8:	4650      	mov	r0, sl
 80055aa:	f000 ff05 	bl	80063b8 <_realloc_r>
 80055ae:	4603      	mov	r3, r0
 80055b0:	2800      	cmp	r0, #0
 80055b2:	f47f af39 	bne.w	8005428 <__sfvwrite_r+0x118>
 80055b6:	6921      	ldr	r1, [r4, #16]
 80055b8:	4650      	mov	r0, sl
 80055ba:	f7ff fdb5 	bl	8005128 <_free_r>
 80055be:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80055c2:	220c      	movs	r2, #12
 80055c4:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80055c8:	f8ca 2000 	str.w	r2, [sl]
 80055cc:	e792      	b.n	80054f4 <__sfvwrite_r+0x1e4>
 80055ce:	f107 0901 	add.w	r9, r7, #1
 80055d2:	e75c      	b.n	800548e <__sfvwrite_r+0x17e>
 80055d4:	461a      	mov	r2, r3
 80055d6:	4631      	mov	r1, r6
 80055d8:	9301      	str	r3, [sp, #4]
 80055da:	f000 fb73 	bl	8005cc4 <memmove>
 80055de:	9b01      	ldr	r3, [sp, #4]
 80055e0:	68a1      	ldr	r1, [r4, #8]
 80055e2:	6822      	ldr	r2, [r4, #0]
 80055e4:	1ac9      	subs	r1, r1, r3
 80055e6:	441a      	add	r2, r3
 80055e8:	60a1      	str	r1, [r4, #8]
 80055ea:	6022      	str	r2, [r4, #0]
 80055ec:	461d      	mov	r5, r3
 80055ee:	e766      	b.n	80054be <__sfvwrite_r+0x1ae>
 80055f0:	230c      	movs	r3, #12
 80055f2:	f8ca 3000 	str.w	r3, [sl]
 80055f6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80055fa:	e77b      	b.n	80054f4 <__sfvwrite_r+0x1e4>
 80055fc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005600:	e76b      	b.n	80054da <__sfvwrite_r+0x1ca>
 8005602:	bf00      	nop
 8005604:	7ffffffe 	.word	0x7ffffffe
 8005608:	7ffffc00 	.word	0x7ffffc00

0800560c <_fwalk_reent>:
 800560c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005610:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005614:	d01f      	beq.n	8005656 <_fwalk_reent+0x4a>
 8005616:	4688      	mov	r8, r1
 8005618:	4606      	mov	r6, r0
 800561a:	f04f 0900 	mov.w	r9, #0
 800561e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005622:	3d01      	subs	r5, #1
 8005624:	d411      	bmi.n	800564a <_fwalk_reent+0x3e>
 8005626:	89a3      	ldrh	r3, [r4, #12]
 8005628:	2b01      	cmp	r3, #1
 800562a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 800562e:	4621      	mov	r1, r4
 8005630:	4630      	mov	r0, r6
 8005632:	d906      	bls.n	8005642 <_fwalk_reent+0x36>
 8005634:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005638:	3301      	adds	r3, #1
 800563a:	d002      	beq.n	8005642 <_fwalk_reent+0x36>
 800563c:	47c0      	blx	r8
 800563e:	ea49 0900 	orr.w	r9, r9, r0
 8005642:	1c6b      	adds	r3, r5, #1
 8005644:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005648:	d1ed      	bne.n	8005626 <_fwalk_reent+0x1a>
 800564a:	683f      	ldr	r7, [r7, #0]
 800564c:	2f00      	cmp	r7, #0
 800564e:	d1e6      	bne.n	800561e <_fwalk_reent+0x12>
 8005650:	4648      	mov	r0, r9
 8005652:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005656:	46b9      	mov	r9, r7
 8005658:	4648      	mov	r0, r9
 800565a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800565e:	bf00      	nop

08005660 <_localeconv_r>:
 8005660:	4a04      	ldr	r2, [pc, #16]	; (8005674 <_localeconv_r+0x14>)
 8005662:	4b05      	ldr	r3, [pc, #20]	; (8005678 <_localeconv_r+0x18>)
 8005664:	6812      	ldr	r2, [r2, #0]
 8005666:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005668:	2800      	cmp	r0, #0
 800566a:	bf08      	it	eq
 800566c:	4618      	moveq	r0, r3
 800566e:	30f0      	adds	r0, #240	; 0xf0
 8005670:	4770      	bx	lr
 8005672:	bf00      	nop
 8005674:	20000018 	.word	0x20000018
 8005678:	2000085c 	.word	0x2000085c

0800567c <__retarget_lock_init_recursive>:
 800567c:	4770      	bx	lr
 800567e:	bf00      	nop

08005680 <__retarget_lock_close_recursive>:
 8005680:	4770      	bx	lr
 8005682:	bf00      	nop

08005684 <__retarget_lock_acquire_recursive>:
 8005684:	4770      	bx	lr
 8005686:	bf00      	nop

08005688 <__retarget_lock_release_recursive>:
 8005688:	4770      	bx	lr
 800568a:	bf00      	nop

0800568c <__swhatbuf_r>:
 800568c:	b570      	push	{r4, r5, r6, lr}
 800568e:	460c      	mov	r4, r1
 8005690:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005694:	2900      	cmp	r1, #0
 8005696:	b096      	sub	sp, #88	; 0x58
 8005698:	4615      	mov	r5, r2
 800569a:	461e      	mov	r6, r3
 800569c:	da0f      	bge.n	80056be <__swhatbuf_r+0x32>
 800569e:	89a2      	ldrh	r2, [r4, #12]
 80056a0:	2300      	movs	r3, #0
 80056a2:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 80056a6:	6033      	str	r3, [r6, #0]
 80056a8:	d104      	bne.n	80056b4 <__swhatbuf_r+0x28>
 80056aa:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80056ae:	602b      	str	r3, [r5, #0]
 80056b0:	b016      	add	sp, #88	; 0x58
 80056b2:	bd70      	pop	{r4, r5, r6, pc}
 80056b4:	2240      	movs	r2, #64	; 0x40
 80056b6:	4618      	mov	r0, r3
 80056b8:	602a      	str	r2, [r5, #0]
 80056ba:	b016      	add	sp, #88	; 0x58
 80056bc:	bd70      	pop	{r4, r5, r6, pc}
 80056be:	466a      	mov	r2, sp
 80056c0:	f001 fad0 	bl	8006c64 <_fstat_r>
 80056c4:	2800      	cmp	r0, #0
 80056c6:	dbea      	blt.n	800569e <__swhatbuf_r+0x12>
 80056c8:	9b01      	ldr	r3, [sp, #4]
 80056ca:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 80056ce:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 80056d2:	fab3 f383 	clz	r3, r3
 80056d6:	095b      	lsrs	r3, r3, #5
 80056d8:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80056dc:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80056e0:	6033      	str	r3, [r6, #0]
 80056e2:	602a      	str	r2, [r5, #0]
 80056e4:	b016      	add	sp, #88	; 0x58
 80056e6:	bd70      	pop	{r4, r5, r6, pc}

080056e8 <__smakebuf_r>:
 80056e8:	898a      	ldrh	r2, [r1, #12]
 80056ea:	0792      	lsls	r2, r2, #30
 80056ec:	460b      	mov	r3, r1
 80056ee:	d506      	bpl.n	80056fe <__smakebuf_r+0x16>
 80056f0:	f101 0243 	add.w	r2, r1, #67	; 0x43
 80056f4:	2101      	movs	r1, #1
 80056f6:	601a      	str	r2, [r3, #0]
 80056f8:	e9c3 2104 	strd	r2, r1, [r3, #16]
 80056fc:	4770      	bx	lr
 80056fe:	b570      	push	{r4, r5, r6, lr}
 8005700:	b082      	sub	sp, #8
 8005702:	ab01      	add	r3, sp, #4
 8005704:	466a      	mov	r2, sp
 8005706:	460c      	mov	r4, r1
 8005708:	4605      	mov	r5, r0
 800570a:	f7ff ffbf 	bl	800568c <__swhatbuf_r>
 800570e:	9900      	ldr	r1, [sp, #0]
 8005710:	4606      	mov	r6, r0
 8005712:	4628      	mov	r0, r5
 8005714:	f000 f832 	bl	800577c <_malloc_r>
 8005718:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800571c:	b1d8      	cbz	r0, 8005756 <__smakebuf_r+0x6e>
 800571e:	4916      	ldr	r1, [pc, #88]	; (8005778 <__smakebuf_r+0x90>)
 8005720:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005722:	9a01      	ldr	r2, [sp, #4]
 8005724:	9900      	ldr	r1, [sp, #0]
 8005726:	6020      	str	r0, [r4, #0]
 8005728:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800572c:	81a3      	strh	r3, [r4, #12]
 800572e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005732:	b91a      	cbnz	r2, 800573c <__smakebuf_r+0x54>
 8005734:	4333      	orrs	r3, r6
 8005736:	81a3      	strh	r3, [r4, #12]
 8005738:	b002      	add	sp, #8
 800573a:	bd70      	pop	{r4, r5, r6, pc}
 800573c:	4628      	mov	r0, r5
 800573e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005742:	f001 faa3 	bl	8006c8c <_isatty_r>
 8005746:	b1a0      	cbz	r0, 8005772 <__smakebuf_r+0x8a>
 8005748:	89a3      	ldrh	r3, [r4, #12]
 800574a:	f023 0303 	bic.w	r3, r3, #3
 800574e:	f043 0301 	orr.w	r3, r3, #1
 8005752:	b21b      	sxth	r3, r3
 8005754:	e7ee      	b.n	8005734 <__smakebuf_r+0x4c>
 8005756:	059a      	lsls	r2, r3, #22
 8005758:	d4ee      	bmi.n	8005738 <__smakebuf_r+0x50>
 800575a:	f023 0303 	bic.w	r3, r3, #3
 800575e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005762:	f043 0302 	orr.w	r3, r3, #2
 8005766:	2101      	movs	r1, #1
 8005768:	81a3      	strh	r3, [r4, #12]
 800576a:	6022      	str	r2, [r4, #0]
 800576c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005770:	e7e2      	b.n	8005738 <__smakebuf_r+0x50>
 8005772:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005776:	e7dd      	b.n	8005734 <__smakebuf_r+0x4c>
 8005778:	08004fd9 	.word	0x08004fd9

0800577c <_malloc_r>:
 800577c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005780:	f101 050b 	add.w	r5, r1, #11
 8005784:	2d16      	cmp	r5, #22
 8005786:	b083      	sub	sp, #12
 8005788:	4606      	mov	r6, r0
 800578a:	d823      	bhi.n	80057d4 <_malloc_r+0x58>
 800578c:	2910      	cmp	r1, #16
 800578e:	f200 80b9 	bhi.w	8005904 <_malloc_r+0x188>
 8005792:	f000 fafb 	bl	8005d8c <__malloc_lock>
 8005796:	2510      	movs	r5, #16
 8005798:	2318      	movs	r3, #24
 800579a:	2002      	movs	r0, #2
 800579c:	4fc5      	ldr	r7, [pc, #788]	; (8005ab4 <_malloc_r+0x338>)
 800579e:	443b      	add	r3, r7
 80057a0:	f1a3 0208 	sub.w	r2, r3, #8
 80057a4:	685c      	ldr	r4, [r3, #4]
 80057a6:	4294      	cmp	r4, r2
 80057a8:	f000 8166 	beq.w	8005a78 <_malloc_r+0x2fc>
 80057ac:	6863      	ldr	r3, [r4, #4]
 80057ae:	f023 0303 	bic.w	r3, r3, #3
 80057b2:	4423      	add	r3, r4
 80057b4:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 80057b8:	685a      	ldr	r2, [r3, #4]
 80057ba:	60e9      	str	r1, [r5, #12]
 80057bc:	f042 0201 	orr.w	r2, r2, #1
 80057c0:	608d      	str	r5, [r1, #8]
 80057c2:	4630      	mov	r0, r6
 80057c4:	605a      	str	r2, [r3, #4]
 80057c6:	f000 fae7 	bl	8005d98 <__malloc_unlock>
 80057ca:	3408      	adds	r4, #8
 80057cc:	4620      	mov	r0, r4
 80057ce:	b003      	add	sp, #12
 80057d0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80057d4:	f035 0507 	bics.w	r5, r5, #7
 80057d8:	f100 8094 	bmi.w	8005904 <_malloc_r+0x188>
 80057dc:	42a9      	cmp	r1, r5
 80057de:	f200 8091 	bhi.w	8005904 <_malloc_r+0x188>
 80057e2:	f000 fad3 	bl	8005d8c <__malloc_lock>
 80057e6:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80057ea:	f0c0 8183 	bcc.w	8005af4 <_malloc_r+0x378>
 80057ee:	0a6b      	lsrs	r3, r5, #9
 80057f0:	f000 808f 	beq.w	8005912 <_malloc_r+0x196>
 80057f4:	2b04      	cmp	r3, #4
 80057f6:	f200 8146 	bhi.w	8005a86 <_malloc_r+0x30a>
 80057fa:	09ab      	lsrs	r3, r5, #6
 80057fc:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005800:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005804:	00c3      	lsls	r3, r0, #3
 8005806:	4fab      	ldr	r7, [pc, #684]	; (8005ab4 <_malloc_r+0x338>)
 8005808:	443b      	add	r3, r7
 800580a:	f1a3 0108 	sub.w	r1, r3, #8
 800580e:	685c      	ldr	r4, [r3, #4]
 8005810:	42a1      	cmp	r1, r4
 8005812:	d106      	bne.n	8005822 <_malloc_r+0xa6>
 8005814:	e00c      	b.n	8005830 <_malloc_r+0xb4>
 8005816:	2a00      	cmp	r2, #0
 8005818:	f280 811d 	bge.w	8005a56 <_malloc_r+0x2da>
 800581c:	68e4      	ldr	r4, [r4, #12]
 800581e:	42a1      	cmp	r1, r4
 8005820:	d006      	beq.n	8005830 <_malloc_r+0xb4>
 8005822:	6863      	ldr	r3, [r4, #4]
 8005824:	f023 0303 	bic.w	r3, r3, #3
 8005828:	1b5a      	subs	r2, r3, r5
 800582a:	2a0f      	cmp	r2, #15
 800582c:	ddf3      	ble.n	8005816 <_malloc_r+0x9a>
 800582e:	4660      	mov	r0, ip
 8005830:	693c      	ldr	r4, [r7, #16]
 8005832:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005ac8 <_malloc_r+0x34c>
 8005836:	4564      	cmp	r4, ip
 8005838:	d071      	beq.n	800591e <_malloc_r+0x1a2>
 800583a:	6863      	ldr	r3, [r4, #4]
 800583c:	f023 0303 	bic.w	r3, r3, #3
 8005840:	1b5a      	subs	r2, r3, r5
 8005842:	2a0f      	cmp	r2, #15
 8005844:	f300 8144 	bgt.w	8005ad0 <_malloc_r+0x354>
 8005848:	2a00      	cmp	r2, #0
 800584a:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 800584e:	f280 8126 	bge.w	8005a9e <_malloc_r+0x322>
 8005852:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005856:	f080 8169 	bcs.w	8005b2c <_malloc_r+0x3b0>
 800585a:	08db      	lsrs	r3, r3, #3
 800585c:	1c59      	adds	r1, r3, #1
 800585e:	687a      	ldr	r2, [r7, #4]
 8005860:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005864:	f8c4 8008 	str.w	r8, [r4, #8]
 8005868:	f04f 0e01 	mov.w	lr, #1
 800586c:	109b      	asrs	r3, r3, #2
 800586e:	fa0e f303 	lsl.w	r3, lr, r3
 8005872:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005876:	4313      	orrs	r3, r2
 8005878:	f1ae 0208 	sub.w	r2, lr, #8
 800587c:	60e2      	str	r2, [r4, #12]
 800587e:	607b      	str	r3, [r7, #4]
 8005880:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005884:	f8c8 400c 	str.w	r4, [r8, #12]
 8005888:	1082      	asrs	r2, r0, #2
 800588a:	2401      	movs	r4, #1
 800588c:	4094      	lsls	r4, r2
 800588e:	429c      	cmp	r4, r3
 8005890:	d84b      	bhi.n	800592a <_malloc_r+0x1ae>
 8005892:	421c      	tst	r4, r3
 8005894:	d106      	bne.n	80058a4 <_malloc_r+0x128>
 8005896:	f020 0003 	bic.w	r0, r0, #3
 800589a:	0064      	lsls	r4, r4, #1
 800589c:	421c      	tst	r4, r3
 800589e:	f100 0004 	add.w	r0, r0, #4
 80058a2:	d0fa      	beq.n	800589a <_malloc_r+0x11e>
 80058a4:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 80058a8:	46ce      	mov	lr, r9
 80058aa:	4680      	mov	r8, r0
 80058ac:	f8de 300c 	ldr.w	r3, [lr, #12]
 80058b0:	459e      	cmp	lr, r3
 80058b2:	d107      	bne.n	80058c4 <_malloc_r+0x148>
 80058b4:	e122      	b.n	8005afc <_malloc_r+0x380>
 80058b6:	2a00      	cmp	r2, #0
 80058b8:	f280 8129 	bge.w	8005b0e <_malloc_r+0x392>
 80058bc:	68db      	ldr	r3, [r3, #12]
 80058be:	459e      	cmp	lr, r3
 80058c0:	f000 811c 	beq.w	8005afc <_malloc_r+0x380>
 80058c4:	6859      	ldr	r1, [r3, #4]
 80058c6:	f021 0103 	bic.w	r1, r1, #3
 80058ca:	1b4a      	subs	r2, r1, r5
 80058cc:	2a0f      	cmp	r2, #15
 80058ce:	ddf2      	ble.n	80058b6 <_malloc_r+0x13a>
 80058d0:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 80058d4:	195c      	adds	r4, r3, r5
 80058d6:	f045 0501 	orr.w	r5, r5, #1
 80058da:	605d      	str	r5, [r3, #4]
 80058dc:	f042 0501 	orr.w	r5, r2, #1
 80058e0:	f8c8 e00c 	str.w	lr, [r8, #12]
 80058e4:	4630      	mov	r0, r6
 80058e6:	f8ce 8008 	str.w	r8, [lr, #8]
 80058ea:	e9c7 4404 	strd	r4, r4, [r7, #16]
 80058ee:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80058f2:	6065      	str	r5, [r4, #4]
 80058f4:	505a      	str	r2, [r3, r1]
 80058f6:	9301      	str	r3, [sp, #4]
 80058f8:	f000 fa4e 	bl	8005d98 <__malloc_unlock>
 80058fc:	9b01      	ldr	r3, [sp, #4]
 80058fe:	f103 0408 	add.w	r4, r3, #8
 8005902:	e763      	b.n	80057cc <_malloc_r+0x50>
 8005904:	2400      	movs	r4, #0
 8005906:	230c      	movs	r3, #12
 8005908:	4620      	mov	r0, r4
 800590a:	6033      	str	r3, [r6, #0]
 800590c:	b003      	add	sp, #12
 800590e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005912:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005916:	2040      	movs	r0, #64	; 0x40
 8005918:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 800591c:	e773      	b.n	8005806 <_malloc_r+0x8a>
 800591e:	687b      	ldr	r3, [r7, #4]
 8005920:	1082      	asrs	r2, r0, #2
 8005922:	2401      	movs	r4, #1
 8005924:	4094      	lsls	r4, r2
 8005926:	429c      	cmp	r4, r3
 8005928:	d9b3      	bls.n	8005892 <_malloc_r+0x116>
 800592a:	68bc      	ldr	r4, [r7, #8]
 800592c:	6863      	ldr	r3, [r4, #4]
 800592e:	f023 0903 	bic.w	r9, r3, #3
 8005932:	45a9      	cmp	r9, r5
 8005934:	d303      	bcc.n	800593e <_malloc_r+0x1c2>
 8005936:	eba9 0305 	sub.w	r3, r9, r5
 800593a:	2b0f      	cmp	r3, #15
 800593c:	dc7b      	bgt.n	8005a36 <_malloc_r+0x2ba>
 800593e:	4b5e      	ldr	r3, [pc, #376]	; (8005ab8 <_malloc_r+0x33c>)
 8005940:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005acc <_malloc_r+0x350>
 8005944:	681a      	ldr	r2, [r3, #0]
 8005946:	f8da 3000 	ldr.w	r3, [sl]
 800594a:	3301      	adds	r3, #1
 800594c:	eb05 0802 	add.w	r8, r5, r2
 8005950:	f000 8148 	beq.w	8005be4 <_malloc_r+0x468>
 8005954:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005958:	f108 080f 	add.w	r8, r8, #15
 800595c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005960:	f028 080f 	bic.w	r8, r8, #15
 8005964:	4641      	mov	r1, r8
 8005966:	4630      	mov	r0, r6
 8005968:	f000 ff08 	bl	800677c <_sbrk_r>
 800596c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005970:	4683      	mov	fp, r0
 8005972:	f000 8104 	beq.w	8005b7e <_malloc_r+0x402>
 8005976:	eb04 0009 	add.w	r0, r4, r9
 800597a:	4558      	cmp	r0, fp
 800597c:	f200 80fd 	bhi.w	8005b7a <_malloc_r+0x3fe>
 8005980:	4a4e      	ldr	r2, [pc, #312]	; (8005abc <_malloc_r+0x340>)
 8005982:	6813      	ldr	r3, [r2, #0]
 8005984:	4443      	add	r3, r8
 8005986:	6013      	str	r3, [r2, #0]
 8005988:	f000 814d 	beq.w	8005c26 <_malloc_r+0x4aa>
 800598c:	f8da 1000 	ldr.w	r1, [sl]
 8005990:	3101      	adds	r1, #1
 8005992:	bf1b      	ittet	ne
 8005994:	ebab 0000 	subne.w	r0, fp, r0
 8005998:	181b      	addne	r3, r3, r0
 800599a:	f8ca b000 	streq.w	fp, [sl]
 800599e:	6013      	strne	r3, [r2, #0]
 80059a0:	f01b 0307 	ands.w	r3, fp, #7
 80059a4:	f000 8134 	beq.w	8005c10 <_malloc_r+0x494>
 80059a8:	f1c3 0108 	rsb	r1, r3, #8
 80059ac:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 80059b0:	448b      	add	fp, r1
 80059b2:	3308      	adds	r3, #8
 80059b4:	44d8      	add	r8, fp
 80059b6:	f3c8 080b 	ubfx	r8, r8, #0, #12
 80059ba:	eba3 0808 	sub.w	r8, r3, r8
 80059be:	4641      	mov	r1, r8
 80059c0:	4630      	mov	r0, r6
 80059c2:	9201      	str	r2, [sp, #4]
 80059c4:	f000 feda 	bl	800677c <_sbrk_r>
 80059c8:	1c43      	adds	r3, r0, #1
 80059ca:	9a01      	ldr	r2, [sp, #4]
 80059cc:	f000 8146 	beq.w	8005c5c <_malloc_r+0x4e0>
 80059d0:	eba0 010b 	sub.w	r1, r0, fp
 80059d4:	4441      	add	r1, r8
 80059d6:	f041 0101 	orr.w	r1, r1, #1
 80059da:	6813      	ldr	r3, [r2, #0]
 80059dc:	f8c7 b008 	str.w	fp, [r7, #8]
 80059e0:	4443      	add	r3, r8
 80059e2:	42bc      	cmp	r4, r7
 80059e4:	f8cb 1004 	str.w	r1, [fp, #4]
 80059e8:	6013      	str	r3, [r2, #0]
 80059ea:	d015      	beq.n	8005a18 <_malloc_r+0x29c>
 80059ec:	f1b9 0f0f 	cmp.w	r9, #15
 80059f0:	f240 8130 	bls.w	8005c54 <_malloc_r+0x4d8>
 80059f4:	6860      	ldr	r0, [r4, #4]
 80059f6:	f1a9 010c 	sub.w	r1, r9, #12
 80059fa:	f021 0107 	bic.w	r1, r1, #7
 80059fe:	f000 0001 	and.w	r0, r0, #1
 8005a02:	eb04 0c01 	add.w	ip, r4, r1
 8005a06:	4308      	orrs	r0, r1
 8005a08:	f04f 0e05 	mov.w	lr, #5
 8005a0c:	290f      	cmp	r1, #15
 8005a0e:	6060      	str	r0, [r4, #4]
 8005a10:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005a14:	f200 813a 	bhi.w	8005c8c <_malloc_r+0x510>
 8005a18:	4a29      	ldr	r2, [pc, #164]	; (8005ac0 <_malloc_r+0x344>)
 8005a1a:	482a      	ldr	r0, [pc, #168]	; (8005ac4 <_malloc_r+0x348>)
 8005a1c:	6811      	ldr	r1, [r2, #0]
 8005a1e:	68bc      	ldr	r4, [r7, #8]
 8005a20:	428b      	cmp	r3, r1
 8005a22:	6801      	ldr	r1, [r0, #0]
 8005a24:	bf88      	it	hi
 8005a26:	6013      	strhi	r3, [r2, #0]
 8005a28:	6862      	ldr	r2, [r4, #4]
 8005a2a:	428b      	cmp	r3, r1
 8005a2c:	f022 0203 	bic.w	r2, r2, #3
 8005a30:	bf88      	it	hi
 8005a32:	6003      	strhi	r3, [r0, #0]
 8005a34:	e0a7      	b.n	8005b86 <_malloc_r+0x40a>
 8005a36:	1962      	adds	r2, r4, r5
 8005a38:	f043 0301 	orr.w	r3, r3, #1
 8005a3c:	f045 0501 	orr.w	r5, r5, #1
 8005a40:	6065      	str	r5, [r4, #4]
 8005a42:	4630      	mov	r0, r6
 8005a44:	60ba      	str	r2, [r7, #8]
 8005a46:	6053      	str	r3, [r2, #4]
 8005a48:	f000 f9a6 	bl	8005d98 <__malloc_unlock>
 8005a4c:	3408      	adds	r4, #8
 8005a4e:	4620      	mov	r0, r4
 8005a50:	b003      	add	sp, #12
 8005a52:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a56:	4423      	add	r3, r4
 8005a58:	68e1      	ldr	r1, [r4, #12]
 8005a5a:	685a      	ldr	r2, [r3, #4]
 8005a5c:	68a5      	ldr	r5, [r4, #8]
 8005a5e:	f042 0201 	orr.w	r2, r2, #1
 8005a62:	60e9      	str	r1, [r5, #12]
 8005a64:	4630      	mov	r0, r6
 8005a66:	608d      	str	r5, [r1, #8]
 8005a68:	605a      	str	r2, [r3, #4]
 8005a6a:	f000 f995 	bl	8005d98 <__malloc_unlock>
 8005a6e:	3408      	adds	r4, #8
 8005a70:	4620      	mov	r0, r4
 8005a72:	b003      	add	sp, #12
 8005a74:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a78:	68dc      	ldr	r4, [r3, #12]
 8005a7a:	42a3      	cmp	r3, r4
 8005a7c:	bf08      	it	eq
 8005a7e:	3002      	addeq	r0, #2
 8005a80:	f43f aed6 	beq.w	8005830 <_malloc_r+0xb4>
 8005a84:	e692      	b.n	80057ac <_malloc_r+0x30>
 8005a86:	2b14      	cmp	r3, #20
 8005a88:	d971      	bls.n	8005b6e <_malloc_r+0x3f2>
 8005a8a:	2b54      	cmp	r3, #84	; 0x54
 8005a8c:	f200 80ad 	bhi.w	8005bea <_malloc_r+0x46e>
 8005a90:	0b2b      	lsrs	r3, r5, #12
 8005a92:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005a96:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005a9a:	00c3      	lsls	r3, r0, #3
 8005a9c:	e6b3      	b.n	8005806 <_malloc_r+0x8a>
 8005a9e:	4423      	add	r3, r4
 8005aa0:	4630      	mov	r0, r6
 8005aa2:	685a      	ldr	r2, [r3, #4]
 8005aa4:	f042 0201 	orr.w	r2, r2, #1
 8005aa8:	605a      	str	r2, [r3, #4]
 8005aaa:	3408      	adds	r4, #8
 8005aac:	f000 f974 	bl	8005d98 <__malloc_unlock>
 8005ab0:	e68c      	b.n	80057cc <_malloc_r+0x50>
 8005ab2:	bf00      	nop
 8005ab4:	2000044c 	.word	0x2000044c
 8005ab8:	20000aa4 	.word	0x20000aa4
 8005abc:	20000a74 	.word	0x20000a74
 8005ac0:	20000a9c 	.word	0x20000a9c
 8005ac4:	20000aa0 	.word	0x20000aa0
 8005ac8:	20000454 	.word	0x20000454
 8005acc:	20000854 	.word	0x20000854
 8005ad0:	1961      	adds	r1, r4, r5
 8005ad2:	f045 0e01 	orr.w	lr, r5, #1
 8005ad6:	f042 0501 	orr.w	r5, r2, #1
 8005ada:	f8c4 e004 	str.w	lr, [r4, #4]
 8005ade:	4630      	mov	r0, r6
 8005ae0:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005ae4:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005ae8:	604d      	str	r5, [r1, #4]
 8005aea:	50e2      	str	r2, [r4, r3]
 8005aec:	f000 f954 	bl	8005d98 <__malloc_unlock>
 8005af0:	3408      	adds	r4, #8
 8005af2:	e66b      	b.n	80057cc <_malloc_r+0x50>
 8005af4:	08e8      	lsrs	r0, r5, #3
 8005af6:	f105 0308 	add.w	r3, r5, #8
 8005afa:	e64f      	b.n	800579c <_malloc_r+0x20>
 8005afc:	f108 0801 	add.w	r8, r8, #1
 8005b00:	f018 0f03 	tst.w	r8, #3
 8005b04:	f10e 0e08 	add.w	lr, lr, #8
 8005b08:	f47f aed0 	bne.w	80058ac <_malloc_r+0x130>
 8005b0c:	e052      	b.n	8005bb4 <_malloc_r+0x438>
 8005b0e:	4419      	add	r1, r3
 8005b10:	461c      	mov	r4, r3
 8005b12:	684a      	ldr	r2, [r1, #4]
 8005b14:	68db      	ldr	r3, [r3, #12]
 8005b16:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005b1a:	f042 0201 	orr.w	r2, r2, #1
 8005b1e:	604a      	str	r2, [r1, #4]
 8005b20:	4630      	mov	r0, r6
 8005b22:	60eb      	str	r3, [r5, #12]
 8005b24:	609d      	str	r5, [r3, #8]
 8005b26:	f000 f937 	bl	8005d98 <__malloc_unlock>
 8005b2a:	e64f      	b.n	80057cc <_malloc_r+0x50>
 8005b2c:	0a5a      	lsrs	r2, r3, #9
 8005b2e:	2a04      	cmp	r2, #4
 8005b30:	d935      	bls.n	8005b9e <_malloc_r+0x422>
 8005b32:	2a14      	cmp	r2, #20
 8005b34:	d86f      	bhi.n	8005c16 <_malloc_r+0x49a>
 8005b36:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005b3a:	00c9      	lsls	r1, r1, #3
 8005b3c:	325b      	adds	r2, #91	; 0x5b
 8005b3e:	eb07 0e01 	add.w	lr, r7, r1
 8005b42:	5879      	ldr	r1, [r7, r1]
 8005b44:	f1ae 0e08 	sub.w	lr, lr, #8
 8005b48:	458e      	cmp	lr, r1
 8005b4a:	d058      	beq.n	8005bfe <_malloc_r+0x482>
 8005b4c:	684a      	ldr	r2, [r1, #4]
 8005b4e:	f022 0203 	bic.w	r2, r2, #3
 8005b52:	429a      	cmp	r2, r3
 8005b54:	d902      	bls.n	8005b5c <_malloc_r+0x3e0>
 8005b56:	6889      	ldr	r1, [r1, #8]
 8005b58:	458e      	cmp	lr, r1
 8005b5a:	d1f7      	bne.n	8005b4c <_malloc_r+0x3d0>
 8005b5c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005b60:	687b      	ldr	r3, [r7, #4]
 8005b62:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005b66:	f8ce 4008 	str.w	r4, [lr, #8]
 8005b6a:	60cc      	str	r4, [r1, #12]
 8005b6c:	e68c      	b.n	8005888 <_malloc_r+0x10c>
 8005b6e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005b72:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005b76:	00c3      	lsls	r3, r0, #3
 8005b78:	e645      	b.n	8005806 <_malloc_r+0x8a>
 8005b7a:	42bc      	cmp	r4, r7
 8005b7c:	d072      	beq.n	8005c64 <_malloc_r+0x4e8>
 8005b7e:	68bc      	ldr	r4, [r7, #8]
 8005b80:	6862      	ldr	r2, [r4, #4]
 8005b82:	f022 0203 	bic.w	r2, r2, #3
 8005b86:	4295      	cmp	r5, r2
 8005b88:	eba2 0305 	sub.w	r3, r2, r5
 8005b8c:	d802      	bhi.n	8005b94 <_malloc_r+0x418>
 8005b8e:	2b0f      	cmp	r3, #15
 8005b90:	f73f af51 	bgt.w	8005a36 <_malloc_r+0x2ba>
 8005b94:	4630      	mov	r0, r6
 8005b96:	f000 f8ff 	bl	8005d98 <__malloc_unlock>
 8005b9a:	2400      	movs	r4, #0
 8005b9c:	e616      	b.n	80057cc <_malloc_r+0x50>
 8005b9e:	099a      	lsrs	r2, r3, #6
 8005ba0:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005ba4:	00c9      	lsls	r1, r1, #3
 8005ba6:	3238      	adds	r2, #56	; 0x38
 8005ba8:	e7c9      	b.n	8005b3e <_malloc_r+0x3c2>
 8005baa:	f8d9 9000 	ldr.w	r9, [r9]
 8005bae:	4599      	cmp	r9, r3
 8005bb0:	f040 8083 	bne.w	8005cba <_malloc_r+0x53e>
 8005bb4:	f010 0f03 	tst.w	r0, #3
 8005bb8:	f1a9 0308 	sub.w	r3, r9, #8
 8005bbc:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005bc0:	d1f3      	bne.n	8005baa <_malloc_r+0x42e>
 8005bc2:	687b      	ldr	r3, [r7, #4]
 8005bc4:	ea23 0304 	bic.w	r3, r3, r4
 8005bc8:	607b      	str	r3, [r7, #4]
 8005bca:	0064      	lsls	r4, r4, #1
 8005bcc:	429c      	cmp	r4, r3
 8005bce:	f63f aeac 	bhi.w	800592a <_malloc_r+0x1ae>
 8005bd2:	b91c      	cbnz	r4, 8005bdc <_malloc_r+0x460>
 8005bd4:	e6a9      	b.n	800592a <_malloc_r+0x1ae>
 8005bd6:	0064      	lsls	r4, r4, #1
 8005bd8:	f108 0804 	add.w	r8, r8, #4
 8005bdc:	421c      	tst	r4, r3
 8005bde:	d0fa      	beq.n	8005bd6 <_malloc_r+0x45a>
 8005be0:	4640      	mov	r0, r8
 8005be2:	e65f      	b.n	80058a4 <_malloc_r+0x128>
 8005be4:	f108 0810 	add.w	r8, r8, #16
 8005be8:	e6bc      	b.n	8005964 <_malloc_r+0x1e8>
 8005bea:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005bee:	d826      	bhi.n	8005c3e <_malloc_r+0x4c2>
 8005bf0:	0beb      	lsrs	r3, r5, #15
 8005bf2:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005bf6:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005bfa:	00c3      	lsls	r3, r0, #3
 8005bfc:	e603      	b.n	8005806 <_malloc_r+0x8a>
 8005bfe:	687b      	ldr	r3, [r7, #4]
 8005c00:	1092      	asrs	r2, r2, #2
 8005c02:	f04f 0801 	mov.w	r8, #1
 8005c06:	fa08 f202 	lsl.w	r2, r8, r2
 8005c0a:	4313      	orrs	r3, r2
 8005c0c:	607b      	str	r3, [r7, #4]
 8005c0e:	e7a8      	b.n	8005b62 <_malloc_r+0x3e6>
 8005c10:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005c14:	e6ce      	b.n	80059b4 <_malloc_r+0x238>
 8005c16:	2a54      	cmp	r2, #84	; 0x54
 8005c18:	d829      	bhi.n	8005c6e <_malloc_r+0x4f2>
 8005c1a:	0b1a      	lsrs	r2, r3, #12
 8005c1c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005c20:	00c9      	lsls	r1, r1, #3
 8005c22:	326e      	adds	r2, #110	; 0x6e
 8005c24:	e78b      	b.n	8005b3e <_malloc_r+0x3c2>
 8005c26:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005c2a:	2900      	cmp	r1, #0
 8005c2c:	f47f aeae 	bne.w	800598c <_malloc_r+0x210>
 8005c30:	eb09 0208 	add.w	r2, r9, r8
 8005c34:	68b9      	ldr	r1, [r7, #8]
 8005c36:	f042 0201 	orr.w	r2, r2, #1
 8005c3a:	604a      	str	r2, [r1, #4]
 8005c3c:	e6ec      	b.n	8005a18 <_malloc_r+0x29c>
 8005c3e:	f240 5254 	movw	r2, #1364	; 0x554
 8005c42:	4293      	cmp	r3, r2
 8005c44:	d81c      	bhi.n	8005c80 <_malloc_r+0x504>
 8005c46:	0cab      	lsrs	r3, r5, #18
 8005c48:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005c4c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005c50:	00c3      	lsls	r3, r0, #3
 8005c52:	e5d8      	b.n	8005806 <_malloc_r+0x8a>
 8005c54:	2301      	movs	r3, #1
 8005c56:	f8cb 3004 	str.w	r3, [fp, #4]
 8005c5a:	e79b      	b.n	8005b94 <_malloc_r+0x418>
 8005c5c:	2101      	movs	r1, #1
 8005c5e:	f04f 0800 	mov.w	r8, #0
 8005c62:	e6ba      	b.n	80059da <_malloc_r+0x25e>
 8005c64:	4a16      	ldr	r2, [pc, #88]	; (8005cc0 <_malloc_r+0x544>)
 8005c66:	6813      	ldr	r3, [r2, #0]
 8005c68:	4443      	add	r3, r8
 8005c6a:	6013      	str	r3, [r2, #0]
 8005c6c:	e68e      	b.n	800598c <_malloc_r+0x210>
 8005c6e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005c72:	d814      	bhi.n	8005c9e <_malloc_r+0x522>
 8005c74:	0bda      	lsrs	r2, r3, #15
 8005c76:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005c7a:	00c9      	lsls	r1, r1, #3
 8005c7c:	3277      	adds	r2, #119	; 0x77
 8005c7e:	e75e      	b.n	8005b3e <_malloc_r+0x3c2>
 8005c80:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005c84:	207f      	movs	r0, #127	; 0x7f
 8005c86:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005c8a:	e5bc      	b.n	8005806 <_malloc_r+0x8a>
 8005c8c:	f104 0108 	add.w	r1, r4, #8
 8005c90:	4630      	mov	r0, r6
 8005c92:	9201      	str	r2, [sp, #4]
 8005c94:	f7ff fa48 	bl	8005128 <_free_r>
 8005c98:	9a01      	ldr	r2, [sp, #4]
 8005c9a:	6813      	ldr	r3, [r2, #0]
 8005c9c:	e6bc      	b.n	8005a18 <_malloc_r+0x29c>
 8005c9e:	f240 5154 	movw	r1, #1364	; 0x554
 8005ca2:	428a      	cmp	r2, r1
 8005ca4:	d805      	bhi.n	8005cb2 <_malloc_r+0x536>
 8005ca6:	0c9a      	lsrs	r2, r3, #18
 8005ca8:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005cac:	00c9      	lsls	r1, r1, #3
 8005cae:	327c      	adds	r2, #124	; 0x7c
 8005cb0:	e745      	b.n	8005b3e <_malloc_r+0x3c2>
 8005cb2:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005cb6:	227e      	movs	r2, #126	; 0x7e
 8005cb8:	e741      	b.n	8005b3e <_malloc_r+0x3c2>
 8005cba:	687b      	ldr	r3, [r7, #4]
 8005cbc:	e785      	b.n	8005bca <_malloc_r+0x44e>
 8005cbe:	bf00      	nop
 8005cc0:	20000a74 	.word	0x20000a74

08005cc4 <memmove>:
 8005cc4:	4288      	cmp	r0, r1
 8005cc6:	b4f0      	push	{r4, r5, r6, r7}
 8005cc8:	d90d      	bls.n	8005ce6 <memmove+0x22>
 8005cca:	188b      	adds	r3, r1, r2
 8005ccc:	4283      	cmp	r3, r0
 8005cce:	d90a      	bls.n	8005ce6 <memmove+0x22>
 8005cd0:	1884      	adds	r4, r0, r2
 8005cd2:	b132      	cbz	r2, 8005ce2 <memmove+0x1e>
 8005cd4:	4622      	mov	r2, r4
 8005cd6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005cda:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005cde:	4299      	cmp	r1, r3
 8005ce0:	d1f9      	bne.n	8005cd6 <memmove+0x12>
 8005ce2:	bcf0      	pop	{r4, r5, r6, r7}
 8005ce4:	4770      	bx	lr
 8005ce6:	2a0f      	cmp	r2, #15
 8005ce8:	d949      	bls.n	8005d7e <memmove+0xba>
 8005cea:	ea40 0301 	orr.w	r3, r0, r1
 8005cee:	079b      	lsls	r3, r3, #30
 8005cf0:	d147      	bne.n	8005d82 <memmove+0xbe>
 8005cf2:	f1a2 0310 	sub.w	r3, r2, #16
 8005cf6:	091b      	lsrs	r3, r3, #4
 8005cf8:	f101 0720 	add.w	r7, r1, #32
 8005cfc:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005d00:	f101 0410 	add.w	r4, r1, #16
 8005d04:	f100 0510 	add.w	r5, r0, #16
 8005d08:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005d0c:	f845 6c10 	str.w	r6, [r5, #-16]
 8005d10:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005d14:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005d18:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005d1c:	f845 6c08 	str.w	r6, [r5, #-8]
 8005d20:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005d24:	f845 6c04 	str.w	r6, [r5, #-4]
 8005d28:	3410      	adds	r4, #16
 8005d2a:	42bc      	cmp	r4, r7
 8005d2c:	f105 0510 	add.w	r5, r5, #16
 8005d30:	d1ea      	bne.n	8005d08 <memmove+0x44>
 8005d32:	3301      	adds	r3, #1
 8005d34:	f002 050f 	and.w	r5, r2, #15
 8005d38:	011b      	lsls	r3, r3, #4
 8005d3a:	2d03      	cmp	r5, #3
 8005d3c:	4419      	add	r1, r3
 8005d3e:	4403      	add	r3, r0
 8005d40:	d921      	bls.n	8005d86 <memmove+0xc2>
 8005d42:	1f1f      	subs	r7, r3, #4
 8005d44:	460e      	mov	r6, r1
 8005d46:	462c      	mov	r4, r5
 8005d48:	3c04      	subs	r4, #4
 8005d4a:	f856 cb04 	ldr.w	ip, [r6], #4
 8005d4e:	f847 cf04 	str.w	ip, [r7, #4]!
 8005d52:	2c03      	cmp	r4, #3
 8005d54:	d8f8      	bhi.n	8005d48 <memmove+0x84>
 8005d56:	1f2c      	subs	r4, r5, #4
 8005d58:	f024 0403 	bic.w	r4, r4, #3
 8005d5c:	3404      	adds	r4, #4
 8005d5e:	4423      	add	r3, r4
 8005d60:	4421      	add	r1, r4
 8005d62:	f002 0203 	and.w	r2, r2, #3
 8005d66:	2a00      	cmp	r2, #0
 8005d68:	d0bb      	beq.n	8005ce2 <memmove+0x1e>
 8005d6a:	3b01      	subs	r3, #1
 8005d6c:	440a      	add	r2, r1
 8005d6e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005d72:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005d76:	4291      	cmp	r1, r2
 8005d78:	d1f9      	bne.n	8005d6e <memmove+0xaa>
 8005d7a:	bcf0      	pop	{r4, r5, r6, r7}
 8005d7c:	4770      	bx	lr
 8005d7e:	4603      	mov	r3, r0
 8005d80:	e7f1      	b.n	8005d66 <memmove+0xa2>
 8005d82:	4603      	mov	r3, r0
 8005d84:	e7f1      	b.n	8005d6a <memmove+0xa6>
 8005d86:	462a      	mov	r2, r5
 8005d88:	e7ed      	b.n	8005d66 <memmove+0xa2>
 8005d8a:	bf00      	nop

08005d8c <__malloc_lock>:
 8005d8c:	4801      	ldr	r0, [pc, #4]	; (8005d94 <__malloc_lock+0x8>)
 8005d8e:	f7ff bc79 	b.w	8005684 <__retarget_lock_acquire_recursive>
 8005d92:	bf00      	nop
 8005d94:	20000b00 	.word	0x20000b00

08005d98 <__malloc_unlock>:
 8005d98:	4801      	ldr	r0, [pc, #4]	; (8005da0 <__malloc_unlock+0x8>)
 8005d9a:	f7ff bc75 	b.w	8005688 <__retarget_lock_release_recursive>
 8005d9e:	bf00      	nop
 8005da0:	20000b00 	.word	0x20000b00

08005da4 <_Balloc>:
 8005da4:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005da6:	b570      	push	{r4, r5, r6, lr}
 8005da8:	4605      	mov	r5, r0
 8005daa:	460c      	mov	r4, r1
 8005dac:	b14b      	cbz	r3, 8005dc2 <_Balloc+0x1e>
 8005dae:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005db2:	b180      	cbz	r0, 8005dd6 <_Balloc+0x32>
 8005db4:	6802      	ldr	r2, [r0, #0]
 8005db6:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005dba:	2300      	movs	r3, #0
 8005dbc:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005dc0:	bd70      	pop	{r4, r5, r6, pc}
 8005dc2:	2221      	movs	r2, #33	; 0x21
 8005dc4:	2104      	movs	r1, #4
 8005dc6:	f000 fe1d 	bl	8006a04 <_calloc_r>
 8005dca:	4603      	mov	r3, r0
 8005dcc:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005dce:	2800      	cmp	r0, #0
 8005dd0:	d1ed      	bne.n	8005dae <_Balloc+0xa>
 8005dd2:	2000      	movs	r0, #0
 8005dd4:	bd70      	pop	{r4, r5, r6, pc}
 8005dd6:	2101      	movs	r1, #1
 8005dd8:	fa01 f604 	lsl.w	r6, r1, r4
 8005ddc:	1d72      	adds	r2, r6, #5
 8005dde:	4628      	mov	r0, r5
 8005de0:	0092      	lsls	r2, r2, #2
 8005de2:	f000 fe0f 	bl	8006a04 <_calloc_r>
 8005de6:	2800      	cmp	r0, #0
 8005de8:	d0f3      	beq.n	8005dd2 <_Balloc+0x2e>
 8005dea:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005dee:	e7e4      	b.n	8005dba <_Balloc+0x16>

08005df0 <_Bfree>:
 8005df0:	b131      	cbz	r1, 8005e00 <_Bfree+0x10>
 8005df2:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005df4:	684a      	ldr	r2, [r1, #4]
 8005df6:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005dfa:	6008      	str	r0, [r1, #0]
 8005dfc:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005e00:	4770      	bx	lr
 8005e02:	bf00      	nop

08005e04 <__multadd>:
 8005e04:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005e06:	690c      	ldr	r4, [r1, #16]
 8005e08:	b083      	sub	sp, #12
 8005e0a:	460d      	mov	r5, r1
 8005e0c:	4606      	mov	r6, r0
 8005e0e:	f101 0c14 	add.w	ip, r1, #20
 8005e12:	2700      	movs	r7, #0
 8005e14:	f8dc 0000 	ldr.w	r0, [ip]
 8005e18:	b281      	uxth	r1, r0
 8005e1a:	fb02 3301 	mla	r3, r2, r1, r3
 8005e1e:	0c01      	lsrs	r1, r0, #16
 8005e20:	0c18      	lsrs	r0, r3, #16
 8005e22:	fb02 0101 	mla	r1, r2, r1, r0
 8005e26:	b29b      	uxth	r3, r3
 8005e28:	3701      	adds	r7, #1
 8005e2a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005e2e:	42bc      	cmp	r4, r7
 8005e30:	f84c 3b04 	str.w	r3, [ip], #4
 8005e34:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8005e38:	dcec      	bgt.n	8005e14 <__multadd+0x10>
 8005e3a:	b13b      	cbz	r3, 8005e4c <__multadd+0x48>
 8005e3c:	68aa      	ldr	r2, [r5, #8]
 8005e3e:	42a2      	cmp	r2, r4
 8005e40:	dd07      	ble.n	8005e52 <__multadd+0x4e>
 8005e42:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8005e46:	3401      	adds	r4, #1
 8005e48:	6153      	str	r3, [r2, #20]
 8005e4a:	612c      	str	r4, [r5, #16]
 8005e4c:	4628      	mov	r0, r5
 8005e4e:	b003      	add	sp, #12
 8005e50:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005e52:	6869      	ldr	r1, [r5, #4]
 8005e54:	9301      	str	r3, [sp, #4]
 8005e56:	3101      	adds	r1, #1
 8005e58:	4630      	mov	r0, r6
 8005e5a:	f7ff ffa3 	bl	8005da4 <_Balloc>
 8005e5e:	692a      	ldr	r2, [r5, #16]
 8005e60:	3202      	adds	r2, #2
 8005e62:	f105 010c 	add.w	r1, r5, #12
 8005e66:	4607      	mov	r7, r0
 8005e68:	0092      	lsls	r2, r2, #2
 8005e6a:	300c      	adds	r0, #12
 8005e6c:	f7fa fb48 	bl	8000500 <memcpy>
 8005e70:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8005e72:	6869      	ldr	r1, [r5, #4]
 8005e74:	9b01      	ldr	r3, [sp, #4]
 8005e76:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8005e7a:	6028      	str	r0, [r5, #0]
 8005e7c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8005e80:	463d      	mov	r5, r7
 8005e82:	e7de      	b.n	8005e42 <__multadd+0x3e>

08005e84 <__hi0bits>:
 8005e84:	0c02      	lsrs	r2, r0, #16
 8005e86:	0412      	lsls	r2, r2, #16
 8005e88:	4603      	mov	r3, r0
 8005e8a:	b9c2      	cbnz	r2, 8005ebe <__hi0bits+0x3a>
 8005e8c:	0403      	lsls	r3, r0, #16
 8005e8e:	2010      	movs	r0, #16
 8005e90:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8005e94:	bf04      	itt	eq
 8005e96:	021b      	lsleq	r3, r3, #8
 8005e98:	3008      	addeq	r0, #8
 8005e9a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8005e9e:	bf04      	itt	eq
 8005ea0:	011b      	lsleq	r3, r3, #4
 8005ea2:	3004      	addeq	r0, #4
 8005ea4:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8005ea8:	bf04      	itt	eq
 8005eaa:	009b      	lsleq	r3, r3, #2
 8005eac:	3002      	addeq	r0, #2
 8005eae:	2b00      	cmp	r3, #0
 8005eb0:	db04      	blt.n	8005ebc <__hi0bits+0x38>
 8005eb2:	005b      	lsls	r3, r3, #1
 8005eb4:	d501      	bpl.n	8005eba <__hi0bits+0x36>
 8005eb6:	3001      	adds	r0, #1
 8005eb8:	4770      	bx	lr
 8005eba:	2020      	movs	r0, #32
 8005ebc:	4770      	bx	lr
 8005ebe:	2000      	movs	r0, #0
 8005ec0:	e7e6      	b.n	8005e90 <__hi0bits+0xc>
 8005ec2:	bf00      	nop

08005ec4 <__lo0bits>:
 8005ec4:	6803      	ldr	r3, [r0, #0]
 8005ec6:	f013 0207 	ands.w	r2, r3, #7
 8005eca:	4601      	mov	r1, r0
 8005ecc:	d007      	beq.n	8005ede <__lo0bits+0x1a>
 8005ece:	07da      	lsls	r2, r3, #31
 8005ed0:	d41f      	bmi.n	8005f12 <__lo0bits+0x4e>
 8005ed2:	0798      	lsls	r0, r3, #30
 8005ed4:	d51f      	bpl.n	8005f16 <__lo0bits+0x52>
 8005ed6:	085b      	lsrs	r3, r3, #1
 8005ed8:	600b      	str	r3, [r1, #0]
 8005eda:	2001      	movs	r0, #1
 8005edc:	4770      	bx	lr
 8005ede:	b298      	uxth	r0, r3
 8005ee0:	b1a0      	cbz	r0, 8005f0c <__lo0bits+0x48>
 8005ee2:	4610      	mov	r0, r2
 8005ee4:	f013 0fff 	tst.w	r3, #255	; 0xff
 8005ee8:	bf04      	itt	eq
 8005eea:	0a1b      	lsreq	r3, r3, #8
 8005eec:	3008      	addeq	r0, #8
 8005eee:	071a      	lsls	r2, r3, #28
 8005ef0:	bf04      	itt	eq
 8005ef2:	091b      	lsreq	r3, r3, #4
 8005ef4:	3004      	addeq	r0, #4
 8005ef6:	079a      	lsls	r2, r3, #30
 8005ef8:	bf04      	itt	eq
 8005efa:	089b      	lsreq	r3, r3, #2
 8005efc:	3002      	addeq	r0, #2
 8005efe:	07da      	lsls	r2, r3, #31
 8005f00:	d402      	bmi.n	8005f08 <__lo0bits+0x44>
 8005f02:	085b      	lsrs	r3, r3, #1
 8005f04:	d00b      	beq.n	8005f1e <__lo0bits+0x5a>
 8005f06:	3001      	adds	r0, #1
 8005f08:	600b      	str	r3, [r1, #0]
 8005f0a:	4770      	bx	lr
 8005f0c:	0c1b      	lsrs	r3, r3, #16
 8005f0e:	2010      	movs	r0, #16
 8005f10:	e7e8      	b.n	8005ee4 <__lo0bits+0x20>
 8005f12:	2000      	movs	r0, #0
 8005f14:	4770      	bx	lr
 8005f16:	089b      	lsrs	r3, r3, #2
 8005f18:	600b      	str	r3, [r1, #0]
 8005f1a:	2002      	movs	r0, #2
 8005f1c:	4770      	bx	lr
 8005f1e:	2020      	movs	r0, #32
 8005f20:	4770      	bx	lr
 8005f22:	bf00      	nop

08005f24 <__i2b>:
 8005f24:	b510      	push	{r4, lr}
 8005f26:	460c      	mov	r4, r1
 8005f28:	2101      	movs	r1, #1
 8005f2a:	f7ff ff3b 	bl	8005da4 <_Balloc>
 8005f2e:	2201      	movs	r2, #1
 8005f30:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8005f34:	bd10      	pop	{r4, pc}
 8005f36:	bf00      	nop

08005f38 <__multiply>:
 8005f38:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005f3c:	690e      	ldr	r6, [r1, #16]
 8005f3e:	6914      	ldr	r4, [r2, #16]
 8005f40:	42a6      	cmp	r6, r4
 8005f42:	b083      	sub	sp, #12
 8005f44:	460f      	mov	r7, r1
 8005f46:	4615      	mov	r5, r2
 8005f48:	da04      	bge.n	8005f54 <__multiply+0x1c>
 8005f4a:	4632      	mov	r2, r6
 8005f4c:	462f      	mov	r7, r5
 8005f4e:	4626      	mov	r6, r4
 8005f50:	460d      	mov	r5, r1
 8005f52:	4614      	mov	r4, r2
 8005f54:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8005f58:	eb06 0804 	add.w	r8, r6, r4
 8005f5c:	4543      	cmp	r3, r8
 8005f5e:	bfb8      	it	lt
 8005f60:	3101      	addlt	r1, #1
 8005f62:	f7ff ff1f 	bl	8005da4 <_Balloc>
 8005f66:	f100 0914 	add.w	r9, r0, #20
 8005f6a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8005f6e:	45f1      	cmp	r9, lr
 8005f70:	9000      	str	r0, [sp, #0]
 8005f72:	d205      	bcs.n	8005f80 <__multiply+0x48>
 8005f74:	464b      	mov	r3, r9
 8005f76:	2200      	movs	r2, #0
 8005f78:	f843 2b04 	str.w	r2, [r3], #4
 8005f7c:	459e      	cmp	lr, r3
 8005f7e:	d8fb      	bhi.n	8005f78 <__multiply+0x40>
 8005f80:	f105 0a14 	add.w	sl, r5, #20
 8005f84:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8005f88:	f107 0314 	add.w	r3, r7, #20
 8005f8c:	45a2      	cmp	sl, r4
 8005f8e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8005f92:	d261      	bcs.n	8006058 <__multiply+0x120>
 8005f94:	1b64      	subs	r4, r4, r5
 8005f96:	3c15      	subs	r4, #21
 8005f98:	f024 0403 	bic.w	r4, r4, #3
 8005f9c:	f8cd e004 	str.w	lr, [sp, #4]
 8005fa0:	44a2      	add	sl, r4
 8005fa2:	f105 0210 	add.w	r2, r5, #16
 8005fa6:	469e      	mov	lr, r3
 8005fa8:	e005      	b.n	8005fb6 <__multiply+0x7e>
 8005faa:	0c2d      	lsrs	r5, r5, #16
 8005fac:	d12b      	bne.n	8006006 <__multiply+0xce>
 8005fae:	4592      	cmp	sl, r2
 8005fb0:	f109 0904 	add.w	r9, r9, #4
 8005fb4:	d04e      	beq.n	8006054 <__multiply+0x11c>
 8005fb6:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8005fba:	fa1f fb85 	uxth.w	fp, r5
 8005fbe:	f1bb 0f00 	cmp.w	fp, #0
 8005fc2:	d0f2      	beq.n	8005faa <__multiply+0x72>
 8005fc4:	4677      	mov	r7, lr
 8005fc6:	464e      	mov	r6, r9
 8005fc8:	2000      	movs	r0, #0
 8005fca:	e000      	b.n	8005fce <__multiply+0x96>
 8005fcc:	4626      	mov	r6, r4
 8005fce:	f857 1b04 	ldr.w	r1, [r7], #4
 8005fd2:	6834      	ldr	r4, [r6, #0]
 8005fd4:	b28b      	uxth	r3, r1
 8005fd6:	b2a5      	uxth	r5, r4
 8005fd8:	0c09      	lsrs	r1, r1, #16
 8005fda:	0c24      	lsrs	r4, r4, #16
 8005fdc:	fb0b 5303 	mla	r3, fp, r3, r5
 8005fe0:	4403      	add	r3, r0
 8005fe2:	fb0b 4001 	mla	r0, fp, r1, r4
 8005fe6:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8005fea:	4634      	mov	r4, r6
 8005fec:	b29b      	uxth	r3, r3
 8005fee:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8005ff2:	45bc      	cmp	ip, r7
 8005ff4:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8005ff8:	f844 3b04 	str.w	r3, [r4], #4
 8005ffc:	d8e6      	bhi.n	8005fcc <__multiply+0x94>
 8005ffe:	6070      	str	r0, [r6, #4]
 8006000:	6815      	ldr	r5, [r2, #0]
 8006002:	0c2d      	lsrs	r5, r5, #16
 8006004:	d0d3      	beq.n	8005fae <__multiply+0x76>
 8006006:	f8d9 3000 	ldr.w	r3, [r9]
 800600a:	4676      	mov	r6, lr
 800600c:	4618      	mov	r0, r3
 800600e:	46cb      	mov	fp, r9
 8006010:	2100      	movs	r1, #0
 8006012:	e000      	b.n	8006016 <__multiply+0xde>
 8006014:	46a3      	mov	fp, r4
 8006016:	8834      	ldrh	r4, [r6, #0]
 8006018:	0c00      	lsrs	r0, r0, #16
 800601a:	fb05 0004 	mla	r0, r5, r4, r0
 800601e:	4401      	add	r1, r0
 8006020:	b29b      	uxth	r3, r3
 8006022:	465c      	mov	r4, fp
 8006024:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006028:	f844 3b04 	str.w	r3, [r4], #4
 800602c:	f856 3b04 	ldr.w	r3, [r6], #4
 8006030:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006034:	0c1b      	lsrs	r3, r3, #16
 8006036:	b287      	uxth	r7, r0
 8006038:	fb05 7303 	mla	r3, r5, r3, r7
 800603c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006040:	45b4      	cmp	ip, r6
 8006042:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006046:	d8e5      	bhi.n	8006014 <__multiply+0xdc>
 8006048:	4592      	cmp	sl, r2
 800604a:	f8cb 3004 	str.w	r3, [fp, #4]
 800604e:	f109 0904 	add.w	r9, r9, #4
 8006052:	d1b0      	bne.n	8005fb6 <__multiply+0x7e>
 8006054:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006058:	f1b8 0f00 	cmp.w	r8, #0
 800605c:	dd0b      	ble.n	8006076 <__multiply+0x13e>
 800605e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006062:	f1ae 0e04 	sub.w	lr, lr, #4
 8006066:	b11b      	cbz	r3, 8006070 <__multiply+0x138>
 8006068:	e005      	b.n	8006076 <__multiply+0x13e>
 800606a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800606e:	b913      	cbnz	r3, 8006076 <__multiply+0x13e>
 8006070:	f1b8 0801 	subs.w	r8, r8, #1
 8006074:	d1f9      	bne.n	800606a <__multiply+0x132>
 8006076:	9800      	ldr	r0, [sp, #0]
 8006078:	f8c0 8010 	str.w	r8, [r0, #16]
 800607c:	b003      	add	sp, #12
 800607e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006082:	bf00      	nop

08006084 <__pow5mult>:
 8006084:	f012 0303 	ands.w	r3, r2, #3
 8006088:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800608c:	4614      	mov	r4, r2
 800608e:	4607      	mov	r7, r0
 8006090:	d12e      	bne.n	80060f0 <__pow5mult+0x6c>
 8006092:	460d      	mov	r5, r1
 8006094:	10a4      	asrs	r4, r4, #2
 8006096:	d01c      	beq.n	80060d2 <__pow5mult+0x4e>
 8006098:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800609a:	b396      	cbz	r6, 8006102 <__pow5mult+0x7e>
 800609c:	07e3      	lsls	r3, r4, #31
 800609e:	f04f 0800 	mov.w	r8, #0
 80060a2:	d406      	bmi.n	80060b2 <__pow5mult+0x2e>
 80060a4:	1064      	asrs	r4, r4, #1
 80060a6:	d014      	beq.n	80060d2 <__pow5mult+0x4e>
 80060a8:	6830      	ldr	r0, [r6, #0]
 80060aa:	b1a8      	cbz	r0, 80060d8 <__pow5mult+0x54>
 80060ac:	4606      	mov	r6, r0
 80060ae:	07e3      	lsls	r3, r4, #31
 80060b0:	d5f8      	bpl.n	80060a4 <__pow5mult+0x20>
 80060b2:	4632      	mov	r2, r6
 80060b4:	4629      	mov	r1, r5
 80060b6:	4638      	mov	r0, r7
 80060b8:	f7ff ff3e 	bl	8005f38 <__multiply>
 80060bc:	b1b5      	cbz	r5, 80060ec <__pow5mult+0x68>
 80060be:	686a      	ldr	r2, [r5, #4]
 80060c0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80060c2:	1064      	asrs	r4, r4, #1
 80060c4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80060c8:	6029      	str	r1, [r5, #0]
 80060ca:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80060ce:	4605      	mov	r5, r0
 80060d0:	d1ea      	bne.n	80060a8 <__pow5mult+0x24>
 80060d2:	4628      	mov	r0, r5
 80060d4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80060d8:	4632      	mov	r2, r6
 80060da:	4631      	mov	r1, r6
 80060dc:	4638      	mov	r0, r7
 80060de:	f7ff ff2b 	bl	8005f38 <__multiply>
 80060e2:	6030      	str	r0, [r6, #0]
 80060e4:	f8c0 8000 	str.w	r8, [r0]
 80060e8:	4606      	mov	r6, r0
 80060ea:	e7e0      	b.n	80060ae <__pow5mult+0x2a>
 80060ec:	4605      	mov	r5, r0
 80060ee:	e7d9      	b.n	80060a4 <__pow5mult+0x20>
 80060f0:	3b01      	subs	r3, #1
 80060f2:	4a0b      	ldr	r2, [pc, #44]	; (8006120 <__pow5mult+0x9c>)
 80060f4:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80060f8:	2300      	movs	r3, #0
 80060fa:	f7ff fe83 	bl	8005e04 <__multadd>
 80060fe:	4605      	mov	r5, r0
 8006100:	e7c8      	b.n	8006094 <__pow5mult+0x10>
 8006102:	2101      	movs	r1, #1
 8006104:	4638      	mov	r0, r7
 8006106:	f7ff fe4d 	bl	8005da4 <_Balloc>
 800610a:	f240 2371 	movw	r3, #625	; 0x271
 800610e:	6143      	str	r3, [r0, #20]
 8006110:	2201      	movs	r2, #1
 8006112:	2300      	movs	r3, #0
 8006114:	6102      	str	r2, [r0, #16]
 8006116:	4606      	mov	r6, r0
 8006118:	64b8      	str	r0, [r7, #72]	; 0x48
 800611a:	6003      	str	r3, [r0, #0]
 800611c:	e7be      	b.n	800609c <__pow5mult+0x18>
 800611e:	bf00      	nop
 8006120:	08007110 	.word	0x08007110

08006124 <__lshift>:
 8006124:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006128:	4691      	mov	r9, r2
 800612a:	690a      	ldr	r2, [r1, #16]
 800612c:	460e      	mov	r6, r1
 800612e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8006132:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8006136:	eb04 0802 	add.w	r8, r4, r2
 800613a:	f108 0501 	add.w	r5, r8, #1
 800613e:	429d      	cmp	r5, r3
 8006140:	4607      	mov	r7, r0
 8006142:	dd04      	ble.n	800614e <__lshift+0x2a>
 8006144:	005b      	lsls	r3, r3, #1
 8006146:	429d      	cmp	r5, r3
 8006148:	f101 0101 	add.w	r1, r1, #1
 800614c:	dcfa      	bgt.n	8006144 <__lshift+0x20>
 800614e:	4638      	mov	r0, r7
 8006150:	f7ff fe28 	bl	8005da4 <_Balloc>
 8006154:	2c00      	cmp	r4, #0
 8006156:	f100 0314 	add.w	r3, r0, #20
 800615a:	dd37      	ble.n	80061cc <__lshift+0xa8>
 800615c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006160:	2200      	movs	r2, #0
 8006162:	f843 2b04 	str.w	r2, [r3], #4
 8006166:	428b      	cmp	r3, r1
 8006168:	d1fb      	bne.n	8006162 <__lshift+0x3e>
 800616a:	6934      	ldr	r4, [r6, #16]
 800616c:	f106 0314 	add.w	r3, r6, #20
 8006170:	f019 091f 	ands.w	r9, r9, #31
 8006174:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006178:	d020      	beq.n	80061bc <__lshift+0x98>
 800617a:	f1c9 0e20 	rsb	lr, r9, #32
 800617e:	2200      	movs	r2, #0
 8006180:	e000      	b.n	8006184 <__lshift+0x60>
 8006182:	4651      	mov	r1, sl
 8006184:	681c      	ldr	r4, [r3, #0]
 8006186:	468a      	mov	sl, r1
 8006188:	fa04 f409 	lsl.w	r4, r4, r9
 800618c:	4314      	orrs	r4, r2
 800618e:	f84a 4b04 	str.w	r4, [sl], #4
 8006192:	f853 2b04 	ldr.w	r2, [r3], #4
 8006196:	4563      	cmp	r3, ip
 8006198:	fa22 f20e 	lsr.w	r2, r2, lr
 800619c:	d3f1      	bcc.n	8006182 <__lshift+0x5e>
 800619e:	604a      	str	r2, [r1, #4]
 80061a0:	b10a      	cbz	r2, 80061a6 <__lshift+0x82>
 80061a2:	f108 0502 	add.w	r5, r8, #2
 80061a6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80061a8:	6872      	ldr	r2, [r6, #4]
 80061aa:	3d01      	subs	r5, #1
 80061ac:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80061b0:	6105      	str	r5, [r0, #16]
 80061b2:	6031      	str	r1, [r6, #0]
 80061b4:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80061b8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80061bc:	3904      	subs	r1, #4
 80061be:	f853 2b04 	ldr.w	r2, [r3], #4
 80061c2:	f841 2f04 	str.w	r2, [r1, #4]!
 80061c6:	459c      	cmp	ip, r3
 80061c8:	d8f9      	bhi.n	80061be <__lshift+0x9a>
 80061ca:	e7ec      	b.n	80061a6 <__lshift+0x82>
 80061cc:	4619      	mov	r1, r3
 80061ce:	e7cc      	b.n	800616a <__lshift+0x46>

080061d0 <__mcmp>:
 80061d0:	b430      	push	{r4, r5}
 80061d2:	690b      	ldr	r3, [r1, #16]
 80061d4:	4605      	mov	r5, r0
 80061d6:	6900      	ldr	r0, [r0, #16]
 80061d8:	1ac0      	subs	r0, r0, r3
 80061da:	d10f      	bne.n	80061fc <__mcmp+0x2c>
 80061dc:	009b      	lsls	r3, r3, #2
 80061de:	3514      	adds	r5, #20
 80061e0:	3114      	adds	r1, #20
 80061e2:	4419      	add	r1, r3
 80061e4:	442b      	add	r3, r5
 80061e6:	e001      	b.n	80061ec <__mcmp+0x1c>
 80061e8:	429d      	cmp	r5, r3
 80061ea:	d207      	bcs.n	80061fc <__mcmp+0x2c>
 80061ec:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80061f0:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80061f4:	4294      	cmp	r4, r2
 80061f6:	d0f7      	beq.n	80061e8 <__mcmp+0x18>
 80061f8:	d302      	bcc.n	8006200 <__mcmp+0x30>
 80061fa:	2001      	movs	r0, #1
 80061fc:	bc30      	pop	{r4, r5}
 80061fe:	4770      	bx	lr
 8006200:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006204:	e7fa      	b.n	80061fc <__mcmp+0x2c>
 8006206:	bf00      	nop

08006208 <__mdiff>:
 8006208:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800620c:	6913      	ldr	r3, [r2, #16]
 800620e:	690d      	ldr	r5, [r1, #16]
 8006210:	1aed      	subs	r5, r5, r3
 8006212:	2d00      	cmp	r5, #0
 8006214:	460e      	mov	r6, r1
 8006216:	4690      	mov	r8, r2
 8006218:	f101 0414 	add.w	r4, r1, #20
 800621c:	f102 0714 	add.w	r7, r2, #20
 8006220:	d114      	bne.n	800624c <__mdiff+0x44>
 8006222:	009b      	lsls	r3, r3, #2
 8006224:	18e2      	adds	r2, r4, r3
 8006226:	443b      	add	r3, r7
 8006228:	e001      	b.n	800622e <__mdiff+0x26>
 800622a:	42a2      	cmp	r2, r4
 800622c:	d959      	bls.n	80062e2 <__mdiff+0xda>
 800622e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006232:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006236:	458c      	cmp	ip, r1
 8006238:	d0f7      	beq.n	800622a <__mdiff+0x22>
 800623a:	d209      	bcs.n	8006250 <__mdiff+0x48>
 800623c:	4622      	mov	r2, r4
 800623e:	4633      	mov	r3, r6
 8006240:	463c      	mov	r4, r7
 8006242:	4646      	mov	r6, r8
 8006244:	4617      	mov	r7, r2
 8006246:	4698      	mov	r8, r3
 8006248:	2501      	movs	r5, #1
 800624a:	e001      	b.n	8006250 <__mdiff+0x48>
 800624c:	dbf6      	blt.n	800623c <__mdiff+0x34>
 800624e:	2500      	movs	r5, #0
 8006250:	6871      	ldr	r1, [r6, #4]
 8006252:	f7ff fda7 	bl	8005da4 <_Balloc>
 8006256:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800625a:	6936      	ldr	r6, [r6, #16]
 800625c:	60c5      	str	r5, [r0, #12]
 800625e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006262:	46bc      	mov	ip, r7
 8006264:	f100 0514 	add.w	r5, r0, #20
 8006268:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800626c:	2300      	movs	r3, #0
 800626e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006272:	f854 8b04 	ldr.w	r8, [r4], #4
 8006276:	b28a      	uxth	r2, r1
 8006278:	fa13 f388 	uxtah	r3, r3, r8
 800627c:	0c09      	lsrs	r1, r1, #16
 800627e:	1a9a      	subs	r2, r3, r2
 8006280:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006284:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006288:	b292      	uxth	r2, r2
 800628a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800628e:	45e6      	cmp	lr, ip
 8006290:	f845 2b04 	str.w	r2, [r5], #4
 8006294:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006298:	d8e9      	bhi.n	800626e <__mdiff+0x66>
 800629a:	42a7      	cmp	r7, r4
 800629c:	d917      	bls.n	80062ce <__mdiff+0xc6>
 800629e:	46ae      	mov	lr, r5
 80062a0:	46a4      	mov	ip, r4
 80062a2:	f85c 2b04 	ldr.w	r2, [ip], #4
 80062a6:	fa13 f382 	uxtah	r3, r3, r2
 80062aa:	1419      	asrs	r1, r3, #16
 80062ac:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80062b0:	b29b      	uxth	r3, r3
 80062b2:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80062b6:	4567      	cmp	r7, ip
 80062b8:	f84e 2b04 	str.w	r2, [lr], #4
 80062bc:	ea4f 4321 	mov.w	r3, r1, asr #16
 80062c0:	d8ef      	bhi.n	80062a2 <__mdiff+0x9a>
 80062c2:	43e4      	mvns	r4, r4
 80062c4:	4427      	add	r7, r4
 80062c6:	f027 0703 	bic.w	r7, r7, #3
 80062ca:	3704      	adds	r7, #4
 80062cc:	443d      	add	r5, r7
 80062ce:	3d04      	subs	r5, #4
 80062d0:	b922      	cbnz	r2, 80062dc <__mdiff+0xd4>
 80062d2:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80062d6:	3e01      	subs	r6, #1
 80062d8:	2b00      	cmp	r3, #0
 80062da:	d0fa      	beq.n	80062d2 <__mdiff+0xca>
 80062dc:	6106      	str	r6, [r0, #16]
 80062de:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80062e2:	2100      	movs	r1, #0
 80062e4:	f7ff fd5e 	bl	8005da4 <_Balloc>
 80062e8:	2201      	movs	r2, #1
 80062ea:	2300      	movs	r3, #0
 80062ec:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80062f0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080062f4 <__d2b>:
 80062f4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80062f8:	460f      	mov	r7, r1
 80062fa:	b083      	sub	sp, #12
 80062fc:	2101      	movs	r1, #1
 80062fe:	ec55 4b10 	vmov	r4, r5, d0
 8006302:	4616      	mov	r6, r2
 8006304:	f7ff fd4e 	bl	8005da4 <_Balloc>
 8006308:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800630c:	4681      	mov	r9, r0
 800630e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006312:	f1b8 0f00 	cmp.w	r8, #0
 8006316:	d001      	beq.n	800631c <__d2b+0x28>
 8006318:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800631c:	2c00      	cmp	r4, #0
 800631e:	9301      	str	r3, [sp, #4]
 8006320:	d024      	beq.n	800636c <__d2b+0x78>
 8006322:	a802      	add	r0, sp, #8
 8006324:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006328:	f7ff fdcc 	bl	8005ec4 <__lo0bits>
 800632c:	2800      	cmp	r0, #0
 800632e:	d136      	bne.n	800639e <__d2b+0xaa>
 8006330:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006334:	f8c9 2014 	str.w	r2, [r9, #20]
 8006338:	2b00      	cmp	r3, #0
 800633a:	bf0c      	ite	eq
 800633c:	2101      	moveq	r1, #1
 800633e:	2102      	movne	r1, #2
 8006340:	f8c9 3018 	str.w	r3, [r9, #24]
 8006344:	f8c9 1010 	str.w	r1, [r9, #16]
 8006348:	f1b8 0f00 	cmp.w	r8, #0
 800634c:	d11b      	bne.n	8006386 <__d2b+0x92>
 800634e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006352:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006356:	6038      	str	r0, [r7, #0]
 8006358:	6918      	ldr	r0, [r3, #16]
 800635a:	f7ff fd93 	bl	8005e84 <__hi0bits>
 800635e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006362:	6030      	str	r0, [r6, #0]
 8006364:	4648      	mov	r0, r9
 8006366:	b003      	add	sp, #12
 8006368:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800636c:	a801      	add	r0, sp, #4
 800636e:	f7ff fda9 	bl	8005ec4 <__lo0bits>
 8006372:	9b01      	ldr	r3, [sp, #4]
 8006374:	f8c9 3014 	str.w	r3, [r9, #20]
 8006378:	2101      	movs	r1, #1
 800637a:	3020      	adds	r0, #32
 800637c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006380:	f1b8 0f00 	cmp.w	r8, #0
 8006384:	d0e3      	beq.n	800634e <__d2b+0x5a>
 8006386:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800638a:	eb08 0300 	add.w	r3, r8, r0
 800638e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006392:	603b      	str	r3, [r7, #0]
 8006394:	6030      	str	r0, [r6, #0]
 8006396:	4648      	mov	r0, r9
 8006398:	b003      	add	sp, #12
 800639a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800639e:	e9dd 1300 	ldrd	r1, r3, [sp]
 80063a2:	f1c0 0220 	rsb	r2, r0, #32
 80063a6:	fa03 f202 	lsl.w	r2, r3, r2
 80063aa:	430a      	orrs	r2, r1
 80063ac:	40c3      	lsrs	r3, r0
 80063ae:	9301      	str	r3, [sp, #4]
 80063b0:	f8c9 2014 	str.w	r2, [r9, #20]
 80063b4:	e7c0      	b.n	8006338 <__d2b+0x44>
 80063b6:	bf00      	nop

080063b8 <_realloc_r>:
 80063b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80063bc:	4692      	mov	sl, r2
 80063be:	b083      	sub	sp, #12
 80063c0:	2900      	cmp	r1, #0
 80063c2:	f000 80a1 	beq.w	8006508 <_realloc_r+0x150>
 80063c6:	460d      	mov	r5, r1
 80063c8:	4680      	mov	r8, r0
 80063ca:	f10a 040b 	add.w	r4, sl, #11
 80063ce:	f7ff fcdd 	bl	8005d8c <__malloc_lock>
 80063d2:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80063d6:	2c16      	cmp	r4, #22
 80063d8:	f022 0603 	bic.w	r6, r2, #3
 80063dc:	f1a5 0708 	sub.w	r7, r5, #8
 80063e0:	d83e      	bhi.n	8006460 <_realloc_r+0xa8>
 80063e2:	2410      	movs	r4, #16
 80063e4:	4621      	mov	r1, r4
 80063e6:	45a2      	cmp	sl, r4
 80063e8:	d83f      	bhi.n	800646a <_realloc_r+0xb2>
 80063ea:	428e      	cmp	r6, r1
 80063ec:	eb07 0906 	add.w	r9, r7, r6
 80063f0:	da74      	bge.n	80064dc <_realloc_r+0x124>
 80063f2:	4bc7      	ldr	r3, [pc, #796]	; (8006710 <_realloc_r+0x358>)
 80063f4:	6898      	ldr	r0, [r3, #8]
 80063f6:	4548      	cmp	r0, r9
 80063f8:	f000 80aa 	beq.w	8006550 <_realloc_r+0x198>
 80063fc:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006400:	f020 0301 	bic.w	r3, r0, #1
 8006404:	444b      	add	r3, r9
 8006406:	685b      	ldr	r3, [r3, #4]
 8006408:	07db      	lsls	r3, r3, #31
 800640a:	f140 8083 	bpl.w	8006514 <_realloc_r+0x15c>
 800640e:	07d2      	lsls	r2, r2, #31
 8006410:	d534      	bpl.n	800647c <_realloc_r+0xc4>
 8006412:	4651      	mov	r1, sl
 8006414:	4640      	mov	r0, r8
 8006416:	f7ff f9b1 	bl	800577c <_malloc_r>
 800641a:	4682      	mov	sl, r0
 800641c:	b1e0      	cbz	r0, 8006458 <_realloc_r+0xa0>
 800641e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006422:	f023 0301 	bic.w	r3, r3, #1
 8006426:	443b      	add	r3, r7
 8006428:	f1a0 0208 	sub.w	r2, r0, #8
 800642c:	4293      	cmp	r3, r2
 800642e:	f000 80f9 	beq.w	8006624 <_realloc_r+0x26c>
 8006432:	1f32      	subs	r2, r6, #4
 8006434:	2a24      	cmp	r2, #36	; 0x24
 8006436:	f200 8107 	bhi.w	8006648 <_realloc_r+0x290>
 800643a:	2a13      	cmp	r2, #19
 800643c:	6829      	ldr	r1, [r5, #0]
 800643e:	f200 80e6 	bhi.w	800660e <_realloc_r+0x256>
 8006442:	4603      	mov	r3, r0
 8006444:	462a      	mov	r2, r5
 8006446:	6019      	str	r1, [r3, #0]
 8006448:	6851      	ldr	r1, [r2, #4]
 800644a:	6059      	str	r1, [r3, #4]
 800644c:	6892      	ldr	r2, [r2, #8]
 800644e:	609a      	str	r2, [r3, #8]
 8006450:	4629      	mov	r1, r5
 8006452:	4640      	mov	r0, r8
 8006454:	f7fe fe68 	bl	8005128 <_free_r>
 8006458:	4640      	mov	r0, r8
 800645a:	f7ff fc9d 	bl	8005d98 <__malloc_unlock>
 800645e:	e04f      	b.n	8006500 <_realloc_r+0x148>
 8006460:	f024 0407 	bic.w	r4, r4, #7
 8006464:	2c00      	cmp	r4, #0
 8006466:	4621      	mov	r1, r4
 8006468:	dabd      	bge.n	80063e6 <_realloc_r+0x2e>
 800646a:	f04f 0a00 	mov.w	sl, #0
 800646e:	230c      	movs	r3, #12
 8006470:	4650      	mov	r0, sl
 8006472:	f8c8 3000 	str.w	r3, [r8]
 8006476:	b003      	add	sp, #12
 8006478:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800647c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006480:	eba7 0b03 	sub.w	fp, r7, r3
 8006484:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006488:	f022 0203 	bic.w	r2, r2, #3
 800648c:	18b3      	adds	r3, r6, r2
 800648e:	428b      	cmp	r3, r1
 8006490:	dbbf      	blt.n	8006412 <_realloc_r+0x5a>
 8006492:	46da      	mov	sl, fp
 8006494:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006498:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800649c:	1f32      	subs	r2, r6, #4
 800649e:	2a24      	cmp	r2, #36	; 0x24
 80064a0:	60c1      	str	r1, [r0, #12]
 80064a2:	eb0b 0903 	add.w	r9, fp, r3
 80064a6:	6088      	str	r0, [r1, #8]
 80064a8:	f200 80c6 	bhi.w	8006638 <_realloc_r+0x280>
 80064ac:	2a13      	cmp	r2, #19
 80064ae:	6829      	ldr	r1, [r5, #0]
 80064b0:	f240 80c0 	bls.w	8006634 <_realloc_r+0x27c>
 80064b4:	f8cb 1008 	str.w	r1, [fp, #8]
 80064b8:	6869      	ldr	r1, [r5, #4]
 80064ba:	f8cb 100c 	str.w	r1, [fp, #12]
 80064be:	2a1b      	cmp	r2, #27
 80064c0:	68a9      	ldr	r1, [r5, #8]
 80064c2:	f200 80d8 	bhi.w	8006676 <_realloc_r+0x2be>
 80064c6:	f10b 0210 	add.w	r2, fp, #16
 80064ca:	3508      	adds	r5, #8
 80064cc:	6011      	str	r1, [r2, #0]
 80064ce:	6869      	ldr	r1, [r5, #4]
 80064d0:	6051      	str	r1, [r2, #4]
 80064d2:	68a9      	ldr	r1, [r5, #8]
 80064d4:	6091      	str	r1, [r2, #8]
 80064d6:	461e      	mov	r6, r3
 80064d8:	465f      	mov	r7, fp
 80064da:	4655      	mov	r5, sl
 80064dc:	687b      	ldr	r3, [r7, #4]
 80064de:	1b32      	subs	r2, r6, r4
 80064e0:	2a0f      	cmp	r2, #15
 80064e2:	f003 0301 	and.w	r3, r3, #1
 80064e6:	d822      	bhi.n	800652e <_realloc_r+0x176>
 80064e8:	4333      	orrs	r3, r6
 80064ea:	607b      	str	r3, [r7, #4]
 80064ec:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80064f0:	f043 0301 	orr.w	r3, r3, #1
 80064f4:	f8c9 3004 	str.w	r3, [r9, #4]
 80064f8:	4640      	mov	r0, r8
 80064fa:	f7ff fc4d 	bl	8005d98 <__malloc_unlock>
 80064fe:	46aa      	mov	sl, r5
 8006500:	4650      	mov	r0, sl
 8006502:	b003      	add	sp, #12
 8006504:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006508:	4611      	mov	r1, r2
 800650a:	b003      	add	sp, #12
 800650c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006510:	f7ff b934 	b.w	800577c <_malloc_r>
 8006514:	f020 0003 	bic.w	r0, r0, #3
 8006518:	1833      	adds	r3, r6, r0
 800651a:	428b      	cmp	r3, r1
 800651c:	db61      	blt.n	80065e2 <_realloc_r+0x22a>
 800651e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006522:	461e      	mov	r6, r3
 8006524:	60ca      	str	r2, [r1, #12]
 8006526:	eb07 0903 	add.w	r9, r7, r3
 800652a:	6091      	str	r1, [r2, #8]
 800652c:	e7d6      	b.n	80064dc <_realloc_r+0x124>
 800652e:	1939      	adds	r1, r7, r4
 8006530:	4323      	orrs	r3, r4
 8006532:	f042 0201 	orr.w	r2, r2, #1
 8006536:	607b      	str	r3, [r7, #4]
 8006538:	604a      	str	r2, [r1, #4]
 800653a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800653e:	f043 0301 	orr.w	r3, r3, #1
 8006542:	3108      	adds	r1, #8
 8006544:	f8c9 3004 	str.w	r3, [r9, #4]
 8006548:	4640      	mov	r0, r8
 800654a:	f7fe fded 	bl	8005128 <_free_r>
 800654e:	e7d3      	b.n	80064f8 <_realloc_r+0x140>
 8006550:	6840      	ldr	r0, [r0, #4]
 8006552:	f020 0903 	bic.w	r9, r0, #3
 8006556:	44b1      	add	r9, r6
 8006558:	f104 0010 	add.w	r0, r4, #16
 800655c:	4581      	cmp	r9, r0
 800655e:	da77      	bge.n	8006650 <_realloc_r+0x298>
 8006560:	07d2      	lsls	r2, r2, #31
 8006562:	f53f af56 	bmi.w	8006412 <_realloc_r+0x5a>
 8006566:	f855 2c08 	ldr.w	r2, [r5, #-8]
 800656a:	eba7 0b02 	sub.w	fp, r7, r2
 800656e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006572:	f022 0203 	bic.w	r2, r2, #3
 8006576:	4491      	add	r9, r2
 8006578:	4548      	cmp	r0, r9
 800657a:	dc87      	bgt.n	800648c <_realloc_r+0xd4>
 800657c:	46da      	mov	sl, fp
 800657e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006582:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006586:	1f32      	subs	r2, r6, #4
 8006588:	2a24      	cmp	r2, #36	; 0x24
 800658a:	60c1      	str	r1, [r0, #12]
 800658c:	6088      	str	r0, [r1, #8]
 800658e:	f200 80a1 	bhi.w	80066d4 <_realloc_r+0x31c>
 8006592:	2a13      	cmp	r2, #19
 8006594:	6829      	ldr	r1, [r5, #0]
 8006596:	f240 809b 	bls.w	80066d0 <_realloc_r+0x318>
 800659a:	f8cb 1008 	str.w	r1, [fp, #8]
 800659e:	6869      	ldr	r1, [r5, #4]
 80065a0:	f8cb 100c 	str.w	r1, [fp, #12]
 80065a4:	2a1b      	cmp	r2, #27
 80065a6:	68a9      	ldr	r1, [r5, #8]
 80065a8:	f200 809b 	bhi.w	80066e2 <_realloc_r+0x32a>
 80065ac:	f10b 0210 	add.w	r2, fp, #16
 80065b0:	3508      	adds	r5, #8
 80065b2:	6011      	str	r1, [r2, #0]
 80065b4:	6869      	ldr	r1, [r5, #4]
 80065b6:	6051      	str	r1, [r2, #4]
 80065b8:	68a9      	ldr	r1, [r5, #8]
 80065ba:	6091      	str	r1, [r2, #8]
 80065bc:	eb0b 0104 	add.w	r1, fp, r4
 80065c0:	eba9 0204 	sub.w	r2, r9, r4
 80065c4:	f042 0201 	orr.w	r2, r2, #1
 80065c8:	6099      	str	r1, [r3, #8]
 80065ca:	604a      	str	r2, [r1, #4]
 80065cc:	f8db 3004 	ldr.w	r3, [fp, #4]
 80065d0:	f003 0301 	and.w	r3, r3, #1
 80065d4:	431c      	orrs	r4, r3
 80065d6:	4640      	mov	r0, r8
 80065d8:	f8cb 4004 	str.w	r4, [fp, #4]
 80065dc:	f7ff fbdc 	bl	8005d98 <__malloc_unlock>
 80065e0:	e78e      	b.n	8006500 <_realloc_r+0x148>
 80065e2:	07d3      	lsls	r3, r2, #31
 80065e4:	f53f af15 	bmi.w	8006412 <_realloc_r+0x5a>
 80065e8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80065ec:	eba7 0b03 	sub.w	fp, r7, r3
 80065f0:	f8db 2004 	ldr.w	r2, [fp, #4]
 80065f4:	f022 0203 	bic.w	r2, r2, #3
 80065f8:	4410      	add	r0, r2
 80065fa:	1983      	adds	r3, r0, r6
 80065fc:	428b      	cmp	r3, r1
 80065fe:	f6ff af45 	blt.w	800648c <_realloc_r+0xd4>
 8006602:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006606:	46da      	mov	sl, fp
 8006608:	60ca      	str	r2, [r1, #12]
 800660a:	6091      	str	r1, [r2, #8]
 800660c:	e742      	b.n	8006494 <_realloc_r+0xdc>
 800660e:	6001      	str	r1, [r0, #0]
 8006610:	686b      	ldr	r3, [r5, #4]
 8006612:	6043      	str	r3, [r0, #4]
 8006614:	2a1b      	cmp	r2, #27
 8006616:	d83a      	bhi.n	800668e <_realloc_r+0x2d6>
 8006618:	f105 0208 	add.w	r2, r5, #8
 800661c:	f100 0308 	add.w	r3, r0, #8
 8006620:	68a9      	ldr	r1, [r5, #8]
 8006622:	e710      	b.n	8006446 <_realloc_r+0x8e>
 8006624:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006628:	f023 0303 	bic.w	r3, r3, #3
 800662c:	441e      	add	r6, r3
 800662e:	eb07 0906 	add.w	r9, r7, r6
 8006632:	e753      	b.n	80064dc <_realloc_r+0x124>
 8006634:	4652      	mov	r2, sl
 8006636:	e749      	b.n	80064cc <_realloc_r+0x114>
 8006638:	4629      	mov	r1, r5
 800663a:	4650      	mov	r0, sl
 800663c:	461e      	mov	r6, r3
 800663e:	465f      	mov	r7, fp
 8006640:	f7ff fb40 	bl	8005cc4 <memmove>
 8006644:	4655      	mov	r5, sl
 8006646:	e749      	b.n	80064dc <_realloc_r+0x124>
 8006648:	4629      	mov	r1, r5
 800664a:	f7ff fb3b 	bl	8005cc4 <memmove>
 800664e:	e6ff      	b.n	8006450 <_realloc_r+0x98>
 8006650:	4427      	add	r7, r4
 8006652:	eba9 0904 	sub.w	r9, r9, r4
 8006656:	f049 0201 	orr.w	r2, r9, #1
 800665a:	609f      	str	r7, [r3, #8]
 800665c:	607a      	str	r2, [r7, #4]
 800665e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006662:	f003 0301 	and.w	r3, r3, #1
 8006666:	431c      	orrs	r4, r3
 8006668:	4640      	mov	r0, r8
 800666a:	f845 4c04 	str.w	r4, [r5, #-4]
 800666e:	f7ff fb93 	bl	8005d98 <__malloc_unlock>
 8006672:	46aa      	mov	sl, r5
 8006674:	e744      	b.n	8006500 <_realloc_r+0x148>
 8006676:	f8cb 1010 	str.w	r1, [fp, #16]
 800667a:	68e9      	ldr	r1, [r5, #12]
 800667c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006680:	2a24      	cmp	r2, #36	; 0x24
 8006682:	d010      	beq.n	80066a6 <_realloc_r+0x2ee>
 8006684:	6929      	ldr	r1, [r5, #16]
 8006686:	f10b 0218 	add.w	r2, fp, #24
 800668a:	3510      	adds	r5, #16
 800668c:	e71e      	b.n	80064cc <_realloc_r+0x114>
 800668e:	68ab      	ldr	r3, [r5, #8]
 8006690:	6083      	str	r3, [r0, #8]
 8006692:	68eb      	ldr	r3, [r5, #12]
 8006694:	60c3      	str	r3, [r0, #12]
 8006696:	2a24      	cmp	r2, #36	; 0x24
 8006698:	d010      	beq.n	80066bc <_realloc_r+0x304>
 800669a:	f105 0210 	add.w	r2, r5, #16
 800669e:	f100 0310 	add.w	r3, r0, #16
 80066a2:	6929      	ldr	r1, [r5, #16]
 80066a4:	e6cf      	b.n	8006446 <_realloc_r+0x8e>
 80066a6:	692a      	ldr	r2, [r5, #16]
 80066a8:	f8cb 2018 	str.w	r2, [fp, #24]
 80066ac:	696a      	ldr	r2, [r5, #20]
 80066ae:	f8cb 201c 	str.w	r2, [fp, #28]
 80066b2:	69a9      	ldr	r1, [r5, #24]
 80066b4:	f10b 0220 	add.w	r2, fp, #32
 80066b8:	3518      	adds	r5, #24
 80066ba:	e707      	b.n	80064cc <_realloc_r+0x114>
 80066bc:	692b      	ldr	r3, [r5, #16]
 80066be:	6103      	str	r3, [r0, #16]
 80066c0:	696b      	ldr	r3, [r5, #20]
 80066c2:	6143      	str	r3, [r0, #20]
 80066c4:	69a9      	ldr	r1, [r5, #24]
 80066c6:	f105 0218 	add.w	r2, r5, #24
 80066ca:	f100 0318 	add.w	r3, r0, #24
 80066ce:	e6ba      	b.n	8006446 <_realloc_r+0x8e>
 80066d0:	4652      	mov	r2, sl
 80066d2:	e76e      	b.n	80065b2 <_realloc_r+0x1fa>
 80066d4:	4629      	mov	r1, r5
 80066d6:	4650      	mov	r0, sl
 80066d8:	9301      	str	r3, [sp, #4]
 80066da:	f7ff faf3 	bl	8005cc4 <memmove>
 80066de:	9b01      	ldr	r3, [sp, #4]
 80066e0:	e76c      	b.n	80065bc <_realloc_r+0x204>
 80066e2:	f8cb 1010 	str.w	r1, [fp, #16]
 80066e6:	68e9      	ldr	r1, [r5, #12]
 80066e8:	f8cb 1014 	str.w	r1, [fp, #20]
 80066ec:	2a24      	cmp	r2, #36	; 0x24
 80066ee:	d004      	beq.n	80066fa <_realloc_r+0x342>
 80066f0:	6929      	ldr	r1, [r5, #16]
 80066f2:	f10b 0218 	add.w	r2, fp, #24
 80066f6:	3510      	adds	r5, #16
 80066f8:	e75b      	b.n	80065b2 <_realloc_r+0x1fa>
 80066fa:	692a      	ldr	r2, [r5, #16]
 80066fc:	f8cb 2018 	str.w	r2, [fp, #24]
 8006700:	696a      	ldr	r2, [r5, #20]
 8006702:	f8cb 201c 	str.w	r2, [fp, #28]
 8006706:	69a9      	ldr	r1, [r5, #24]
 8006708:	f10b 0220 	add.w	r2, fp, #32
 800670c:	3518      	adds	r5, #24
 800670e:	e750      	b.n	80065b2 <_realloc_r+0x1fa>
 8006710:	2000044c 	.word	0x2000044c

08006714 <frexp>:
 8006714:	ec53 2b10 	vmov	r2, r3, d0
 8006718:	b570      	push	{r4, r5, r6, lr}
 800671a:	4e16      	ldr	r6, [pc, #88]	; (8006774 <frexp+0x60>)
 800671c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006720:	2500      	movs	r5, #0
 8006722:	42b1      	cmp	r1, r6
 8006724:	4604      	mov	r4, r0
 8006726:	6005      	str	r5, [r0, #0]
 8006728:	dc21      	bgt.n	800676e <frexp+0x5a>
 800672a:	ee10 6a10 	vmov	r6, s0
 800672e:	430e      	orrs	r6, r1
 8006730:	d01d      	beq.n	800676e <frexp+0x5a>
 8006732:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006736:	4618      	mov	r0, r3
 8006738:	da0c      	bge.n	8006754 <frexp+0x40>
 800673a:	4619      	mov	r1, r3
 800673c:	2200      	movs	r2, #0
 800673e:	ee10 0a10 	vmov	r0, s0
 8006742:	4b0d      	ldr	r3, [pc, #52]	; (8006778 <frexp+0x64>)
 8006744:	f7fa f9f8 	bl	8000b38 <__aeabi_dmul>
 8006748:	f06f 0535 	mvn.w	r5, #53	; 0x35
 800674c:	4602      	mov	r2, r0
 800674e:	4608      	mov	r0, r1
 8006750:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006754:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006758:	1509      	asrs	r1, r1, #20
 800675a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 800675e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006762:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006766:	4429      	add	r1, r5
 8006768:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800676c:	6021      	str	r1, [r4, #0]
 800676e:	ec43 2b10 	vmov	d0, r2, r3
 8006772:	bd70      	pop	{r4, r5, r6, pc}
 8006774:	7fefffff 	.word	0x7fefffff
 8006778:	43500000 	.word	0x43500000

0800677c <_sbrk_r>:
 800677c:	b538      	push	{r3, r4, r5, lr}
 800677e:	4c07      	ldr	r4, [pc, #28]	; (800679c <_sbrk_r+0x20>)
 8006780:	2300      	movs	r3, #0
 8006782:	4605      	mov	r5, r0
 8006784:	4608      	mov	r0, r1
 8006786:	6023      	str	r3, [r4, #0]
 8006788:	f7fb fc34 	bl	8001ff4 <_sbrk>
 800678c:	1c43      	adds	r3, r0, #1
 800678e:	d000      	beq.n	8006792 <_sbrk_r+0x16>
 8006790:	bd38      	pop	{r3, r4, r5, pc}
 8006792:	6823      	ldr	r3, [r4, #0]
 8006794:	2b00      	cmp	r3, #0
 8006796:	d0fb      	beq.n	8006790 <_sbrk_r+0x14>
 8006798:	602b      	str	r3, [r5, #0]
 800679a:	bd38      	pop	{r3, r4, r5, pc}
 800679c:	20000b14 	.word	0x20000b14

080067a0 <__sread>:
 80067a0:	b510      	push	{r4, lr}
 80067a2:	460c      	mov	r4, r1
 80067a4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80067a8:	f000 fabc 	bl	8006d24 <_read_r>
 80067ac:	2800      	cmp	r0, #0
 80067ae:	db03      	blt.n	80067b8 <__sread+0x18>
 80067b0:	6d23      	ldr	r3, [r4, #80]	; 0x50
 80067b2:	4403      	add	r3, r0
 80067b4:	6523      	str	r3, [r4, #80]	; 0x50
 80067b6:	bd10      	pop	{r4, pc}
 80067b8:	89a3      	ldrh	r3, [r4, #12]
 80067ba:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 80067be:	81a3      	strh	r3, [r4, #12]
 80067c0:	bd10      	pop	{r4, pc}
 80067c2:	bf00      	nop

080067c4 <__swrite>:
 80067c4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80067c8:	4616      	mov	r6, r2
 80067ca:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 80067ce:	461f      	mov	r7, r3
 80067d0:	05d3      	lsls	r3, r2, #23
 80067d2:	460c      	mov	r4, r1
 80067d4:	4605      	mov	r5, r0
 80067d6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80067da:	d507      	bpl.n	80067ec <__swrite+0x28>
 80067dc:	2200      	movs	r2, #0
 80067de:	2302      	movs	r3, #2
 80067e0:	f000 fa74 	bl	8006ccc <_lseek_r>
 80067e4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80067e8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80067ec:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 80067f0:	81a2      	strh	r2, [r4, #12]
 80067f2:	463b      	mov	r3, r7
 80067f4:	4632      	mov	r2, r6
 80067f6:	4628      	mov	r0, r5
 80067f8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80067fc:	f000 b88c 	b.w	8006918 <_write_r>

08006800 <__sseek>:
 8006800:	b510      	push	{r4, lr}
 8006802:	460c      	mov	r4, r1
 8006804:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006808:	f000 fa60 	bl	8006ccc <_lseek_r>
 800680c:	89a3      	ldrh	r3, [r4, #12]
 800680e:	1c42      	adds	r2, r0, #1
 8006810:	bf0e      	itee	eq
 8006812:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006816:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 800681a:	6520      	strne	r0, [r4, #80]	; 0x50
 800681c:	81a3      	strh	r3, [r4, #12]
 800681e:	bd10      	pop	{r4, pc}

08006820 <__sclose>:
 8006820:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006824:	f000 b922 	b.w	8006a6c <_close_r>

08006828 <strncpy>:
 8006828:	ea40 0301 	orr.w	r3, r0, r1
 800682c:	079b      	lsls	r3, r3, #30
 800682e:	b470      	push	{r4, r5, r6}
 8006830:	d12a      	bne.n	8006888 <strncpy+0x60>
 8006832:	2a03      	cmp	r2, #3
 8006834:	d928      	bls.n	8006888 <strncpy+0x60>
 8006836:	460c      	mov	r4, r1
 8006838:	4603      	mov	r3, r0
 800683a:	4621      	mov	r1, r4
 800683c:	f854 6b04 	ldr.w	r6, [r4], #4
 8006840:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006844:	ea25 0506 	bic.w	r5, r5, r6
 8006848:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 800684c:	d106      	bne.n	800685c <strncpy+0x34>
 800684e:	3a04      	subs	r2, #4
 8006850:	2a03      	cmp	r2, #3
 8006852:	f843 6b04 	str.w	r6, [r3], #4
 8006856:	4621      	mov	r1, r4
 8006858:	d8ef      	bhi.n	800683a <strncpy+0x12>
 800685a:	b19a      	cbz	r2, 8006884 <strncpy+0x5c>
 800685c:	780c      	ldrb	r4, [r1, #0]
 800685e:	701c      	strb	r4, [r3, #0]
 8006860:	3a01      	subs	r2, #1
 8006862:	3301      	adds	r3, #1
 8006864:	b13c      	cbz	r4, 8006876 <strncpy+0x4e>
 8006866:	b16a      	cbz	r2, 8006884 <strncpy+0x5c>
 8006868:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 800686c:	f803 4b01 	strb.w	r4, [r3], #1
 8006870:	3a01      	subs	r2, #1
 8006872:	2c00      	cmp	r4, #0
 8006874:	d1f7      	bne.n	8006866 <strncpy+0x3e>
 8006876:	b12a      	cbz	r2, 8006884 <strncpy+0x5c>
 8006878:	441a      	add	r2, r3
 800687a:	2100      	movs	r1, #0
 800687c:	f803 1b01 	strb.w	r1, [r3], #1
 8006880:	4293      	cmp	r3, r2
 8006882:	d1fb      	bne.n	800687c <strncpy+0x54>
 8006884:	bc70      	pop	{r4, r5, r6}
 8006886:	4770      	bx	lr
 8006888:	4603      	mov	r3, r0
 800688a:	e7e6      	b.n	800685a <strncpy+0x32>

0800688c <__sprint_r.part.0>:
 800688c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006890:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006892:	049c      	lsls	r4, r3, #18
 8006894:	4692      	mov	sl, r2
 8006896:	d52d      	bpl.n	80068f4 <__sprint_r.part.0+0x68>
 8006898:	6893      	ldr	r3, [r2, #8]
 800689a:	6812      	ldr	r2, [r2, #0]
 800689c:	b343      	cbz	r3, 80068f0 <__sprint_r.part.0+0x64>
 800689e:	460e      	mov	r6, r1
 80068a0:	4607      	mov	r7, r0
 80068a2:	f102 0908 	add.w	r9, r2, #8
 80068a6:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 80068aa:	ea5f 089b 	movs.w	r8, fp, lsr #2
 80068ae:	d015      	beq.n	80068dc <__sprint_r.part.0+0x50>
 80068b0:	3d04      	subs	r5, #4
 80068b2:	2400      	movs	r4, #0
 80068b4:	e001      	b.n	80068ba <__sprint_r.part.0+0x2e>
 80068b6:	45a0      	cmp	r8, r4
 80068b8:	d00e      	beq.n	80068d8 <__sprint_r.part.0+0x4c>
 80068ba:	4632      	mov	r2, r6
 80068bc:	f855 1f04 	ldr.w	r1, [r5, #4]!
 80068c0:	4638      	mov	r0, r7
 80068c2:	f000 f99d 	bl	8006c00 <_fputwc_r>
 80068c6:	1c43      	adds	r3, r0, #1
 80068c8:	f104 0401 	add.w	r4, r4, #1
 80068cc:	d1f3      	bne.n	80068b6 <__sprint_r.part.0+0x2a>
 80068ce:	2300      	movs	r3, #0
 80068d0:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80068d4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80068d8:	f8da 3008 	ldr.w	r3, [sl, #8]
 80068dc:	f02b 0b03 	bic.w	fp, fp, #3
 80068e0:	eba3 030b 	sub.w	r3, r3, fp
 80068e4:	f8ca 3008 	str.w	r3, [sl, #8]
 80068e8:	f109 0908 	add.w	r9, r9, #8
 80068ec:	2b00      	cmp	r3, #0
 80068ee:	d1da      	bne.n	80068a6 <__sprint_r.part.0+0x1a>
 80068f0:	2000      	movs	r0, #0
 80068f2:	e7ec      	b.n	80068ce <__sprint_r.part.0+0x42>
 80068f4:	f7fe fd0c 	bl	8005310 <__sfvwrite_r>
 80068f8:	2300      	movs	r3, #0
 80068fa:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80068fe:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006902:	bf00      	nop

08006904 <__sprint_r>:
 8006904:	6893      	ldr	r3, [r2, #8]
 8006906:	b10b      	cbz	r3, 800690c <__sprint_r+0x8>
 8006908:	f7ff bfc0 	b.w	800688c <__sprint_r.part.0>
 800690c:	b410      	push	{r4}
 800690e:	4618      	mov	r0, r3
 8006910:	6053      	str	r3, [r2, #4]
 8006912:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006916:	4770      	bx	lr

08006918 <_write_r>:
 8006918:	b570      	push	{r4, r5, r6, lr}
 800691a:	460d      	mov	r5, r1
 800691c:	4c08      	ldr	r4, [pc, #32]	; (8006940 <_write_r+0x28>)
 800691e:	4611      	mov	r1, r2
 8006920:	4606      	mov	r6, r0
 8006922:	461a      	mov	r2, r3
 8006924:	4628      	mov	r0, r5
 8006926:	2300      	movs	r3, #0
 8006928:	6023      	str	r3, [r4, #0]
 800692a:	f7fb fb50 	bl	8001fce <_write>
 800692e:	1c43      	adds	r3, r0, #1
 8006930:	d000      	beq.n	8006934 <_write_r+0x1c>
 8006932:	bd70      	pop	{r4, r5, r6, pc}
 8006934:	6823      	ldr	r3, [r4, #0]
 8006936:	2b00      	cmp	r3, #0
 8006938:	d0fb      	beq.n	8006932 <_write_r+0x1a>
 800693a:	6033      	str	r3, [r6, #0]
 800693c:	bd70      	pop	{r4, r5, r6, pc}
 800693e:	bf00      	nop
 8006940:	20000b14 	.word	0x20000b14

08006944 <__register_exitproc>:
 8006944:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006948:	4d2b      	ldr	r5, [pc, #172]	; (80069f8 <__register_exitproc+0xb4>)
 800694a:	4606      	mov	r6, r0
 800694c:	6828      	ldr	r0, [r5, #0]
 800694e:	4698      	mov	r8, r3
 8006950:	460f      	mov	r7, r1
 8006952:	4691      	mov	r9, r2
 8006954:	f7fe fe96 	bl	8005684 <__retarget_lock_acquire_recursive>
 8006958:	4b28      	ldr	r3, [pc, #160]	; (80069fc <__register_exitproc+0xb8>)
 800695a:	681c      	ldr	r4, [r3, #0]
 800695c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006960:	2b00      	cmp	r3, #0
 8006962:	d03d      	beq.n	80069e0 <__register_exitproc+0x9c>
 8006964:	685a      	ldr	r2, [r3, #4]
 8006966:	2a1f      	cmp	r2, #31
 8006968:	dc0d      	bgt.n	8006986 <__register_exitproc+0x42>
 800696a:	f102 0c01 	add.w	ip, r2, #1
 800696e:	bb16      	cbnz	r6, 80069b6 <__register_exitproc+0x72>
 8006970:	3202      	adds	r2, #2
 8006972:	f8c3 c004 	str.w	ip, [r3, #4]
 8006976:	6828      	ldr	r0, [r5, #0]
 8006978:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 800697c:	f7fe fe84 	bl	8005688 <__retarget_lock_release_recursive>
 8006980:	2000      	movs	r0, #0
 8006982:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006986:	4b1e      	ldr	r3, [pc, #120]	; (8006a00 <__register_exitproc+0xbc>)
 8006988:	b37b      	cbz	r3, 80069ea <__register_exitproc+0xa6>
 800698a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 800698e:	f3af 8000 	nop.w
 8006992:	4603      	mov	r3, r0
 8006994:	b348      	cbz	r0, 80069ea <__register_exitproc+0xa6>
 8006996:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 800699a:	2100      	movs	r1, #0
 800699c:	e9c0 2100 	strd	r2, r1, [r0]
 80069a0:	f04f 0c01 	mov.w	ip, #1
 80069a4:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 80069a8:	460a      	mov	r2, r1
 80069aa:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 80069ae:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 80069b2:	2e00      	cmp	r6, #0
 80069b4:	d0dc      	beq.n	8006970 <__register_exitproc+0x2c>
 80069b6:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 80069ba:	2401      	movs	r4, #1
 80069bc:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 80069c0:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 80069c4:	4094      	lsls	r4, r2
 80069c6:	4320      	orrs	r0, r4
 80069c8:	2e02      	cmp	r6, #2
 80069ca:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 80069ce:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 80069d2:	d1cd      	bne.n	8006970 <__register_exitproc+0x2c>
 80069d4:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 80069d8:	430c      	orrs	r4, r1
 80069da:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 80069de:	e7c7      	b.n	8006970 <__register_exitproc+0x2c>
 80069e0:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 80069e4:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 80069e8:	e7bc      	b.n	8006964 <__register_exitproc+0x20>
 80069ea:	6828      	ldr	r0, [r5, #0]
 80069ec:	f7fe fe4c 	bl	8005688 <__retarget_lock_release_recursive>
 80069f0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80069f4:	e7c5      	b.n	8006982 <__register_exitproc+0x3e>
 80069f6:	bf00      	nop
 80069f8:	20000448 	.word	0x20000448
 80069fc:	08006fa4 	.word	0x08006fa4
 8006a00:	00000000 	.word	0x00000000

08006a04 <_calloc_r>:
 8006a04:	b510      	push	{r4, lr}
 8006a06:	fb02 f101 	mul.w	r1, r2, r1
 8006a0a:	f7fe feb7 	bl	800577c <_malloc_r>
 8006a0e:	4604      	mov	r4, r0
 8006a10:	b1d8      	cbz	r0, 8006a4a <_calloc_r+0x46>
 8006a12:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006a16:	f022 0203 	bic.w	r2, r2, #3
 8006a1a:	3a04      	subs	r2, #4
 8006a1c:	2a24      	cmp	r2, #36	; 0x24
 8006a1e:	d81d      	bhi.n	8006a5c <_calloc_r+0x58>
 8006a20:	2a13      	cmp	r2, #19
 8006a22:	d914      	bls.n	8006a4e <_calloc_r+0x4a>
 8006a24:	2300      	movs	r3, #0
 8006a26:	2a1b      	cmp	r2, #27
 8006a28:	e9c0 3300 	strd	r3, r3, [r0]
 8006a2c:	d91b      	bls.n	8006a66 <_calloc_r+0x62>
 8006a2e:	2a24      	cmp	r2, #36	; 0x24
 8006a30:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006a34:	bf0a      	itet	eq
 8006a36:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006a3a:	f100 0210 	addne.w	r2, r0, #16
 8006a3e:	f100 0218 	addeq.w	r2, r0, #24
 8006a42:	2300      	movs	r3, #0
 8006a44:	e9c2 3300 	strd	r3, r3, [r2]
 8006a48:	6093      	str	r3, [r2, #8]
 8006a4a:	4620      	mov	r0, r4
 8006a4c:	bd10      	pop	{r4, pc}
 8006a4e:	4602      	mov	r2, r0
 8006a50:	2300      	movs	r3, #0
 8006a52:	e9c2 3300 	strd	r3, r3, [r2]
 8006a56:	6093      	str	r3, [r2, #8]
 8006a58:	4620      	mov	r0, r4
 8006a5a:	bd10      	pop	{r4, pc}
 8006a5c:	2100      	movs	r1, #0
 8006a5e:	f7fb fb6f 	bl	8002140 <memset>
 8006a62:	4620      	mov	r0, r4
 8006a64:	bd10      	pop	{r4, pc}
 8006a66:	f100 0208 	add.w	r2, r0, #8
 8006a6a:	e7f1      	b.n	8006a50 <_calloc_r+0x4c>

08006a6c <_close_r>:
 8006a6c:	b538      	push	{r3, r4, r5, lr}
 8006a6e:	4c07      	ldr	r4, [pc, #28]	; (8006a8c <_close_r+0x20>)
 8006a70:	2300      	movs	r3, #0
 8006a72:	4605      	mov	r5, r0
 8006a74:	4608      	mov	r0, r1
 8006a76:	6023      	str	r3, [r4, #0]
 8006a78:	f7fb fad8 	bl	800202c <_close>
 8006a7c:	1c43      	adds	r3, r0, #1
 8006a7e:	d000      	beq.n	8006a82 <_close_r+0x16>
 8006a80:	bd38      	pop	{r3, r4, r5, pc}
 8006a82:	6823      	ldr	r3, [r4, #0]
 8006a84:	2b00      	cmp	r3, #0
 8006a86:	d0fb      	beq.n	8006a80 <_close_r+0x14>
 8006a88:	602b      	str	r3, [r5, #0]
 8006a8a:	bd38      	pop	{r3, r4, r5, pc}
 8006a8c:	20000b14 	.word	0x20000b14

08006a90 <_fclose_r>:
 8006a90:	b570      	push	{r4, r5, r6, lr}
 8006a92:	2900      	cmp	r1, #0
 8006a94:	d048      	beq.n	8006b28 <_fclose_r+0x98>
 8006a96:	4605      	mov	r5, r0
 8006a98:	460c      	mov	r4, r1
 8006a9a:	b110      	cbz	r0, 8006aa2 <_fclose_r+0x12>
 8006a9c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006a9e:	2b00      	cmp	r3, #0
 8006aa0:	d048      	beq.n	8006b34 <_fclose_r+0xa4>
 8006aa2:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006aa4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006aa8:	07d0      	lsls	r0, r2, #31
 8006aaa:	d440      	bmi.n	8006b2e <_fclose_r+0x9e>
 8006aac:	0599      	lsls	r1, r3, #22
 8006aae:	d530      	bpl.n	8006b12 <_fclose_r+0x82>
 8006ab0:	4621      	mov	r1, r4
 8006ab2:	4628      	mov	r0, r5
 8006ab4:	f7fe f990 	bl	8004dd8 <__sflush_r>
 8006ab8:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006aba:	4606      	mov	r6, r0
 8006abc:	b133      	cbz	r3, 8006acc <_fclose_r+0x3c>
 8006abe:	69e1      	ldr	r1, [r4, #28]
 8006ac0:	4628      	mov	r0, r5
 8006ac2:	4798      	blx	r3
 8006ac4:	2800      	cmp	r0, #0
 8006ac6:	bfb8      	it	lt
 8006ac8:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006acc:	89a3      	ldrh	r3, [r4, #12]
 8006ace:	061a      	lsls	r2, r3, #24
 8006ad0:	d43c      	bmi.n	8006b4c <_fclose_r+0xbc>
 8006ad2:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006ad4:	b141      	cbz	r1, 8006ae8 <_fclose_r+0x58>
 8006ad6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006ada:	4299      	cmp	r1, r3
 8006adc:	d002      	beq.n	8006ae4 <_fclose_r+0x54>
 8006ade:	4628      	mov	r0, r5
 8006ae0:	f7fe fb22 	bl	8005128 <_free_r>
 8006ae4:	2300      	movs	r3, #0
 8006ae6:	6323      	str	r3, [r4, #48]	; 0x30
 8006ae8:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006aea:	b121      	cbz	r1, 8006af6 <_fclose_r+0x66>
 8006aec:	4628      	mov	r0, r5
 8006aee:	f7fe fb1b 	bl	8005128 <_free_r>
 8006af2:	2300      	movs	r3, #0
 8006af4:	6463      	str	r3, [r4, #68]	; 0x44
 8006af6:	f7fe faa1 	bl	800503c <__sfp_lock_acquire>
 8006afa:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006afc:	2200      	movs	r2, #0
 8006afe:	07db      	lsls	r3, r3, #31
 8006b00:	81a2      	strh	r2, [r4, #12]
 8006b02:	d51f      	bpl.n	8006b44 <_fclose_r+0xb4>
 8006b04:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b06:	f7fe fdbb 	bl	8005680 <__retarget_lock_close_recursive>
 8006b0a:	f7fe fa9d 	bl	8005048 <__sfp_lock_release>
 8006b0e:	4630      	mov	r0, r6
 8006b10:	bd70      	pop	{r4, r5, r6, pc}
 8006b12:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b14:	f7fe fdb6 	bl	8005684 <__retarget_lock_acquire_recursive>
 8006b18:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b1c:	2b00      	cmp	r3, #0
 8006b1e:	d1c7      	bne.n	8006ab0 <_fclose_r+0x20>
 8006b20:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006b22:	f016 0601 	ands.w	r6, r6, #1
 8006b26:	d016      	beq.n	8006b56 <_fclose_r+0xc6>
 8006b28:	2600      	movs	r6, #0
 8006b2a:	4630      	mov	r0, r6
 8006b2c:	bd70      	pop	{r4, r5, r6, pc}
 8006b2e:	2b00      	cmp	r3, #0
 8006b30:	d0fa      	beq.n	8006b28 <_fclose_r+0x98>
 8006b32:	e7bd      	b.n	8006ab0 <_fclose_r+0x20>
 8006b34:	f7fe fa56 	bl	8004fe4 <__sinit>
 8006b38:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006b3a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b3e:	07d0      	lsls	r0, r2, #31
 8006b40:	d4f5      	bmi.n	8006b2e <_fclose_r+0x9e>
 8006b42:	e7b3      	b.n	8006aac <_fclose_r+0x1c>
 8006b44:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b46:	f7fe fd9f 	bl	8005688 <__retarget_lock_release_recursive>
 8006b4a:	e7db      	b.n	8006b04 <_fclose_r+0x74>
 8006b4c:	6921      	ldr	r1, [r4, #16]
 8006b4e:	4628      	mov	r0, r5
 8006b50:	f7fe faea 	bl	8005128 <_free_r>
 8006b54:	e7bd      	b.n	8006ad2 <_fclose_r+0x42>
 8006b56:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b58:	f7fe fd96 	bl	8005688 <__retarget_lock_release_recursive>
 8006b5c:	4630      	mov	r0, r6
 8006b5e:	bd70      	pop	{r4, r5, r6, pc}

08006b60 <__fputwc>:
 8006b60:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006b64:	b082      	sub	sp, #8
 8006b66:	4681      	mov	r9, r0
 8006b68:	4688      	mov	r8, r1
 8006b6a:	4614      	mov	r4, r2
 8006b6c:	f000 f8a0 	bl	8006cb0 <__locale_mb_cur_max>
 8006b70:	2801      	cmp	r0, #1
 8006b72:	d103      	bne.n	8006b7c <__fputwc+0x1c>
 8006b74:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006b78:	2bfe      	cmp	r3, #254	; 0xfe
 8006b7a:	d933      	bls.n	8006be4 <__fputwc+0x84>
 8006b7c:	4642      	mov	r2, r8
 8006b7e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006b82:	a901      	add	r1, sp, #4
 8006b84:	4648      	mov	r0, r9
 8006b86:	f000 f93b 	bl	8006e00 <_wcrtomb_r>
 8006b8a:	1c42      	adds	r2, r0, #1
 8006b8c:	4606      	mov	r6, r0
 8006b8e:	d02f      	beq.n	8006bf0 <__fputwc+0x90>
 8006b90:	b320      	cbz	r0, 8006bdc <__fputwc+0x7c>
 8006b92:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006b96:	2500      	movs	r5, #0
 8006b98:	f10d 0a04 	add.w	sl, sp, #4
 8006b9c:	e009      	b.n	8006bb2 <__fputwc+0x52>
 8006b9e:	6823      	ldr	r3, [r4, #0]
 8006ba0:	1c5a      	adds	r2, r3, #1
 8006ba2:	6022      	str	r2, [r4, #0]
 8006ba4:	f883 c000 	strb.w	ip, [r3]
 8006ba8:	3501      	adds	r5, #1
 8006baa:	42b5      	cmp	r5, r6
 8006bac:	d216      	bcs.n	8006bdc <__fputwc+0x7c>
 8006bae:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006bb2:	68a3      	ldr	r3, [r4, #8]
 8006bb4:	3b01      	subs	r3, #1
 8006bb6:	2b00      	cmp	r3, #0
 8006bb8:	60a3      	str	r3, [r4, #8]
 8006bba:	daf0      	bge.n	8006b9e <__fputwc+0x3e>
 8006bbc:	69a7      	ldr	r7, [r4, #24]
 8006bbe:	42bb      	cmp	r3, r7
 8006bc0:	4661      	mov	r1, ip
 8006bc2:	4622      	mov	r2, r4
 8006bc4:	4648      	mov	r0, r9
 8006bc6:	db02      	blt.n	8006bce <__fputwc+0x6e>
 8006bc8:	f1bc 0f0a 	cmp.w	ip, #10
 8006bcc:	d1e7      	bne.n	8006b9e <__fputwc+0x3e>
 8006bce:	f000 f8bf 	bl	8006d50 <__swbuf_r>
 8006bd2:	1c43      	adds	r3, r0, #1
 8006bd4:	d1e8      	bne.n	8006ba8 <__fputwc+0x48>
 8006bd6:	b002      	add	sp, #8
 8006bd8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006bdc:	4640      	mov	r0, r8
 8006bde:	b002      	add	sp, #8
 8006be0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006be4:	fa5f fc88 	uxtb.w	ip, r8
 8006be8:	4606      	mov	r6, r0
 8006bea:	f88d c004 	strb.w	ip, [sp, #4]
 8006bee:	e7d2      	b.n	8006b96 <__fputwc+0x36>
 8006bf0:	89a3      	ldrh	r3, [r4, #12]
 8006bf2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006bf6:	81a3      	strh	r3, [r4, #12]
 8006bf8:	b002      	add	sp, #8
 8006bfa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006bfe:	bf00      	nop

08006c00 <_fputwc_r>:
 8006c00:	b530      	push	{r4, r5, lr}
 8006c02:	4605      	mov	r5, r0
 8006c04:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006c06:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006c0a:	07c0      	lsls	r0, r0, #31
 8006c0c:	4614      	mov	r4, r2
 8006c0e:	b083      	sub	sp, #12
 8006c10:	b29a      	uxth	r2, r3
 8006c12:	d401      	bmi.n	8006c18 <_fputwc_r+0x18>
 8006c14:	0590      	lsls	r0, r2, #22
 8006c16:	d51c      	bpl.n	8006c52 <_fputwc_r+0x52>
 8006c18:	0490      	lsls	r0, r2, #18
 8006c1a:	d406      	bmi.n	8006c2a <_fputwc_r+0x2a>
 8006c1c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c1e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006c22:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006c26:	81a3      	strh	r3, [r4, #12]
 8006c28:	6662      	str	r2, [r4, #100]	; 0x64
 8006c2a:	4628      	mov	r0, r5
 8006c2c:	4622      	mov	r2, r4
 8006c2e:	f7ff ff97 	bl	8006b60 <__fputwc>
 8006c32:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006c34:	07da      	lsls	r2, r3, #31
 8006c36:	4605      	mov	r5, r0
 8006c38:	d402      	bmi.n	8006c40 <_fputwc_r+0x40>
 8006c3a:	89a3      	ldrh	r3, [r4, #12]
 8006c3c:	059b      	lsls	r3, r3, #22
 8006c3e:	d502      	bpl.n	8006c46 <_fputwc_r+0x46>
 8006c40:	4628      	mov	r0, r5
 8006c42:	b003      	add	sp, #12
 8006c44:	bd30      	pop	{r4, r5, pc}
 8006c46:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c48:	f7fe fd1e 	bl	8005688 <__retarget_lock_release_recursive>
 8006c4c:	4628      	mov	r0, r5
 8006c4e:	b003      	add	sp, #12
 8006c50:	bd30      	pop	{r4, r5, pc}
 8006c52:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c54:	9101      	str	r1, [sp, #4]
 8006c56:	f7fe fd15 	bl	8005684 <__retarget_lock_acquire_recursive>
 8006c5a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c5e:	9901      	ldr	r1, [sp, #4]
 8006c60:	b29a      	uxth	r2, r3
 8006c62:	e7d9      	b.n	8006c18 <_fputwc_r+0x18>

08006c64 <_fstat_r>:
 8006c64:	b538      	push	{r3, r4, r5, lr}
 8006c66:	460b      	mov	r3, r1
 8006c68:	4c07      	ldr	r4, [pc, #28]	; (8006c88 <_fstat_r+0x24>)
 8006c6a:	4605      	mov	r5, r0
 8006c6c:	4611      	mov	r1, r2
 8006c6e:	4618      	mov	r0, r3
 8006c70:	2300      	movs	r3, #0
 8006c72:	6023      	str	r3, [r4, #0]
 8006c74:	f7fb f9dd 	bl	8002032 <_fstat>
 8006c78:	1c43      	adds	r3, r0, #1
 8006c7a:	d000      	beq.n	8006c7e <_fstat_r+0x1a>
 8006c7c:	bd38      	pop	{r3, r4, r5, pc}
 8006c7e:	6823      	ldr	r3, [r4, #0]
 8006c80:	2b00      	cmp	r3, #0
 8006c82:	d0fb      	beq.n	8006c7c <_fstat_r+0x18>
 8006c84:	602b      	str	r3, [r5, #0]
 8006c86:	bd38      	pop	{r3, r4, r5, pc}
 8006c88:	20000b14 	.word	0x20000b14

08006c8c <_isatty_r>:
 8006c8c:	b538      	push	{r3, r4, r5, lr}
 8006c8e:	4c07      	ldr	r4, [pc, #28]	; (8006cac <_isatty_r+0x20>)
 8006c90:	2300      	movs	r3, #0
 8006c92:	4605      	mov	r5, r0
 8006c94:	4608      	mov	r0, r1
 8006c96:	6023      	str	r3, [r4, #0]
 8006c98:	f7fb f9d0 	bl	800203c <_isatty>
 8006c9c:	1c43      	adds	r3, r0, #1
 8006c9e:	d000      	beq.n	8006ca2 <_isatty_r+0x16>
 8006ca0:	bd38      	pop	{r3, r4, r5, pc}
 8006ca2:	6823      	ldr	r3, [r4, #0]
 8006ca4:	2b00      	cmp	r3, #0
 8006ca6:	d0fb      	beq.n	8006ca0 <_isatty_r+0x14>
 8006ca8:	602b      	str	r3, [r5, #0]
 8006caa:	bd38      	pop	{r3, r4, r5, pc}
 8006cac:	20000b14 	.word	0x20000b14

08006cb0 <__locale_mb_cur_max>:
 8006cb0:	4b04      	ldr	r3, [pc, #16]	; (8006cc4 <__locale_mb_cur_max+0x14>)
 8006cb2:	4a05      	ldr	r2, [pc, #20]	; (8006cc8 <__locale_mb_cur_max+0x18>)
 8006cb4:	681b      	ldr	r3, [r3, #0]
 8006cb6:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006cb8:	2b00      	cmp	r3, #0
 8006cba:	bf08      	it	eq
 8006cbc:	4613      	moveq	r3, r2
 8006cbe:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006cc2:	4770      	bx	lr
 8006cc4:	20000018 	.word	0x20000018
 8006cc8:	2000085c 	.word	0x2000085c

08006ccc <_lseek_r>:
 8006ccc:	b570      	push	{r4, r5, r6, lr}
 8006cce:	460d      	mov	r5, r1
 8006cd0:	4c08      	ldr	r4, [pc, #32]	; (8006cf4 <_lseek_r+0x28>)
 8006cd2:	4611      	mov	r1, r2
 8006cd4:	4606      	mov	r6, r0
 8006cd6:	461a      	mov	r2, r3
 8006cd8:	4628      	mov	r0, r5
 8006cda:	2300      	movs	r3, #0
 8006cdc:	6023      	str	r3, [r4, #0]
 8006cde:	f7fb f9af 	bl	8002040 <_lseek>
 8006ce2:	1c43      	adds	r3, r0, #1
 8006ce4:	d000      	beq.n	8006ce8 <_lseek_r+0x1c>
 8006ce6:	bd70      	pop	{r4, r5, r6, pc}
 8006ce8:	6823      	ldr	r3, [r4, #0]
 8006cea:	2b00      	cmp	r3, #0
 8006cec:	d0fb      	beq.n	8006ce6 <_lseek_r+0x1a>
 8006cee:	6033      	str	r3, [r6, #0]
 8006cf0:	bd70      	pop	{r4, r5, r6, pc}
 8006cf2:	bf00      	nop
 8006cf4:	20000b14 	.word	0x20000b14

08006cf8 <__ascii_mbtowc>:
 8006cf8:	b082      	sub	sp, #8
 8006cfa:	b149      	cbz	r1, 8006d10 <__ascii_mbtowc+0x18>
 8006cfc:	b15a      	cbz	r2, 8006d16 <__ascii_mbtowc+0x1e>
 8006cfe:	b16b      	cbz	r3, 8006d1c <__ascii_mbtowc+0x24>
 8006d00:	7813      	ldrb	r3, [r2, #0]
 8006d02:	600b      	str	r3, [r1, #0]
 8006d04:	7812      	ldrb	r2, [r2, #0]
 8006d06:	1c10      	adds	r0, r2, #0
 8006d08:	bf18      	it	ne
 8006d0a:	2001      	movne	r0, #1
 8006d0c:	b002      	add	sp, #8
 8006d0e:	4770      	bx	lr
 8006d10:	a901      	add	r1, sp, #4
 8006d12:	2a00      	cmp	r2, #0
 8006d14:	d1f3      	bne.n	8006cfe <__ascii_mbtowc+0x6>
 8006d16:	4610      	mov	r0, r2
 8006d18:	b002      	add	sp, #8
 8006d1a:	4770      	bx	lr
 8006d1c:	f06f 0001 	mvn.w	r0, #1
 8006d20:	e7f4      	b.n	8006d0c <__ascii_mbtowc+0x14>
 8006d22:	bf00      	nop

08006d24 <_read_r>:
 8006d24:	b570      	push	{r4, r5, r6, lr}
 8006d26:	460d      	mov	r5, r1
 8006d28:	4c08      	ldr	r4, [pc, #32]	; (8006d4c <_read_r+0x28>)
 8006d2a:	4611      	mov	r1, r2
 8006d2c:	4606      	mov	r6, r0
 8006d2e:	461a      	mov	r2, r3
 8006d30:	4628      	mov	r0, r5
 8006d32:	2300      	movs	r3, #0
 8006d34:	6023      	str	r3, [r4, #0]
 8006d36:	f7fb f937 	bl	8001fa8 <_read>
 8006d3a:	1c43      	adds	r3, r0, #1
 8006d3c:	d000      	beq.n	8006d40 <_read_r+0x1c>
 8006d3e:	bd70      	pop	{r4, r5, r6, pc}
 8006d40:	6823      	ldr	r3, [r4, #0]
 8006d42:	2b00      	cmp	r3, #0
 8006d44:	d0fb      	beq.n	8006d3e <_read_r+0x1a>
 8006d46:	6033      	str	r3, [r6, #0]
 8006d48:	bd70      	pop	{r4, r5, r6, pc}
 8006d4a:	bf00      	nop
 8006d4c:	20000b14 	.word	0x20000b14

08006d50 <__swbuf_r>:
 8006d50:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006d52:	460d      	mov	r5, r1
 8006d54:	4614      	mov	r4, r2
 8006d56:	4606      	mov	r6, r0
 8006d58:	b110      	cbz	r0, 8006d60 <__swbuf_r+0x10>
 8006d5a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006d5c:	2b00      	cmp	r3, #0
 8006d5e:	d043      	beq.n	8006de8 <__swbuf_r+0x98>
 8006d60:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006d64:	69a3      	ldr	r3, [r4, #24]
 8006d66:	60a3      	str	r3, [r4, #8]
 8006d68:	b291      	uxth	r1, r2
 8006d6a:	0708      	lsls	r0, r1, #28
 8006d6c:	d51b      	bpl.n	8006da6 <__swbuf_r+0x56>
 8006d6e:	6923      	ldr	r3, [r4, #16]
 8006d70:	b1cb      	cbz	r3, 8006da6 <__swbuf_r+0x56>
 8006d72:	b2ed      	uxtb	r5, r5
 8006d74:	0489      	lsls	r1, r1, #18
 8006d76:	462f      	mov	r7, r5
 8006d78:	d522      	bpl.n	8006dc0 <__swbuf_r+0x70>
 8006d7a:	6822      	ldr	r2, [r4, #0]
 8006d7c:	6961      	ldr	r1, [r4, #20]
 8006d7e:	1ad3      	subs	r3, r2, r3
 8006d80:	4299      	cmp	r1, r3
 8006d82:	dd29      	ble.n	8006dd8 <__swbuf_r+0x88>
 8006d84:	3301      	adds	r3, #1
 8006d86:	68a1      	ldr	r1, [r4, #8]
 8006d88:	1c50      	adds	r0, r2, #1
 8006d8a:	3901      	subs	r1, #1
 8006d8c:	60a1      	str	r1, [r4, #8]
 8006d8e:	6020      	str	r0, [r4, #0]
 8006d90:	7015      	strb	r5, [r2, #0]
 8006d92:	6962      	ldr	r2, [r4, #20]
 8006d94:	429a      	cmp	r2, r3
 8006d96:	d02a      	beq.n	8006dee <__swbuf_r+0x9e>
 8006d98:	89a3      	ldrh	r3, [r4, #12]
 8006d9a:	07db      	lsls	r3, r3, #31
 8006d9c:	d501      	bpl.n	8006da2 <__swbuf_r+0x52>
 8006d9e:	2d0a      	cmp	r5, #10
 8006da0:	d025      	beq.n	8006dee <__swbuf_r+0x9e>
 8006da2:	4638      	mov	r0, r7
 8006da4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006da6:	4621      	mov	r1, r4
 8006da8:	4630      	mov	r0, r6
 8006daa:	f7fc fffd 	bl	8003da8 <__swsetup_r>
 8006dae:	bb20      	cbnz	r0, 8006dfa <__swbuf_r+0xaa>
 8006db0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006db4:	6923      	ldr	r3, [r4, #16]
 8006db6:	b291      	uxth	r1, r2
 8006db8:	b2ed      	uxtb	r5, r5
 8006dba:	0489      	lsls	r1, r1, #18
 8006dbc:	462f      	mov	r7, r5
 8006dbe:	d4dc      	bmi.n	8006d7a <__swbuf_r+0x2a>
 8006dc0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006dc2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006dc6:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006dca:	81a2      	strh	r2, [r4, #12]
 8006dcc:	6822      	ldr	r2, [r4, #0]
 8006dce:	6661      	str	r1, [r4, #100]	; 0x64
 8006dd0:	6961      	ldr	r1, [r4, #20]
 8006dd2:	1ad3      	subs	r3, r2, r3
 8006dd4:	4299      	cmp	r1, r3
 8006dd6:	dcd5      	bgt.n	8006d84 <__swbuf_r+0x34>
 8006dd8:	4621      	mov	r1, r4
 8006dda:	4630      	mov	r0, r6
 8006ddc:	f7fe f8a6 	bl	8004f2c <_fflush_r>
 8006de0:	b958      	cbnz	r0, 8006dfa <__swbuf_r+0xaa>
 8006de2:	6822      	ldr	r2, [r4, #0]
 8006de4:	2301      	movs	r3, #1
 8006de6:	e7ce      	b.n	8006d86 <__swbuf_r+0x36>
 8006de8:	f7fe f8fc 	bl	8004fe4 <__sinit>
 8006dec:	e7b8      	b.n	8006d60 <__swbuf_r+0x10>
 8006dee:	4621      	mov	r1, r4
 8006df0:	4630      	mov	r0, r6
 8006df2:	f7fe f89b 	bl	8004f2c <_fflush_r>
 8006df6:	2800      	cmp	r0, #0
 8006df8:	d0d3      	beq.n	8006da2 <__swbuf_r+0x52>
 8006dfa:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006dfe:	e7d0      	b.n	8006da2 <__swbuf_r+0x52>

08006e00 <_wcrtomb_r>:
 8006e00:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006e02:	4c11      	ldr	r4, [pc, #68]	; (8006e48 <_wcrtomb_r+0x48>)
 8006e04:	6824      	ldr	r4, [r4, #0]
 8006e06:	b085      	sub	sp, #20
 8006e08:	4606      	mov	r6, r0
 8006e0a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006e0c:	461f      	mov	r7, r3
 8006e0e:	b151      	cbz	r1, 8006e26 <_wcrtomb_r+0x26>
 8006e10:	4d0e      	ldr	r5, [pc, #56]	; (8006e4c <_wcrtomb_r+0x4c>)
 8006e12:	2c00      	cmp	r4, #0
 8006e14:	bf08      	it	eq
 8006e16:	462c      	moveq	r4, r5
 8006e18:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006e1c:	47a0      	blx	r4
 8006e1e:	1c43      	adds	r3, r0, #1
 8006e20:	d00c      	beq.n	8006e3c <_wcrtomb_r+0x3c>
 8006e22:	b005      	add	sp, #20
 8006e24:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006e26:	4a09      	ldr	r2, [pc, #36]	; (8006e4c <_wcrtomb_r+0x4c>)
 8006e28:	2c00      	cmp	r4, #0
 8006e2a:	bf08      	it	eq
 8006e2c:	4614      	moveq	r4, r2
 8006e2e:	460a      	mov	r2, r1
 8006e30:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006e34:	a901      	add	r1, sp, #4
 8006e36:	47a0      	blx	r4
 8006e38:	1c43      	adds	r3, r0, #1
 8006e3a:	d1f2      	bne.n	8006e22 <_wcrtomb_r+0x22>
 8006e3c:	2200      	movs	r2, #0
 8006e3e:	238a      	movs	r3, #138	; 0x8a
 8006e40:	603a      	str	r2, [r7, #0]
 8006e42:	6033      	str	r3, [r6, #0]
 8006e44:	b005      	add	sp, #20
 8006e46:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006e48:	20000018 	.word	0x20000018
 8006e4c:	2000085c 	.word	0x2000085c

08006e50 <__ascii_wctomb>:
 8006e50:	b121      	cbz	r1, 8006e5c <__ascii_wctomb+0xc>
 8006e52:	2aff      	cmp	r2, #255	; 0xff
 8006e54:	d804      	bhi.n	8006e60 <__ascii_wctomb+0x10>
 8006e56:	700a      	strb	r2, [r1, #0]
 8006e58:	2001      	movs	r0, #1
 8006e5a:	4770      	bx	lr
 8006e5c:	4608      	mov	r0, r1
 8006e5e:	4770      	bx	lr
 8006e60:	238a      	movs	r3, #138	; 0x8a
 8006e62:	6003      	str	r3, [r0, #0]
 8006e64:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006e68:	4770      	bx	lr
 8006e6a:	bf00      	nop

08006e6c <_init>:
 8006e6c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006e6e:	bf00      	nop
 8006e70:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006e72:	bc08      	pop	{r3}
 8006e74:	469e      	mov	lr, r3
 8006e76:	4770      	bx	lr

08006e78 <_fini>:
 8006e78:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006e7a:	bf00      	nop
 8006e7c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006e7e:	bc08      	pop	{r3}
 8006e80:	469e      	mov	lr, r3
 8006e82:	4770      	bx	lr
 8006e84:	0000      	movs	r0, r0
	...
