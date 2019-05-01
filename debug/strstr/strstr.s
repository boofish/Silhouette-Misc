
strstr.elf:     file format elf32-littlearm


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
 80001d8:	200009d0 	.word	0x200009d0
 80001dc:	00000000 	.word	0x00000000
 80001e0:	08006f7c 	.word	0x08006f7c

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	200009d4 	.word	0x200009d4
 80001fc:	08006f7c 	.word	0x08006f7c

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
 80013e8:	f646 72b0 	movw	r2, #28592	; 0x6fb0
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
 800145a:	f240 001c 	movw	r0, #28
 800145e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001462:	f646 72a8 	movw	r2, #28584	; 0x6fa8
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
 8001484:	f240 001c 	movw	r0, #28
 8001488:	f241 0108 	movw	r1, #4104	; 0x1008
 800148c:	f646 72a8 	movw	r2, #28584	; 0x6fa8
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
 80019d4:	f646 73e0 	movw	r3, #28640	; 0x6fe0
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
 80019fc:	f646 73f0 	movw	r3, #28656	; 0x6ff0
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

08001eb6 <strstr>:
 8001eb6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eb8:	af03      	add	r7, sp, #12
 8001eba:	e92d 0700 	stmdb	sp!, {r8, r9, sl}
 8001ebe:	780b      	ldrb	r3, [r1, #0]
 8001ec0:	2b00      	cmp	r3, #0
 8001ec2:	d069      	beq.n	8001f98 <strstr+0xe2>
 8001ec4:	4602      	mov	r2, r0
 8001ec6:	7816      	ldrb	r6, [r2, #0]
 8001ec8:	2e00      	cmp	r6, #0
 8001eca:	d05e      	beq.n	8001f8a <strstr+0xd4>
 8001ecc:	1c50      	adds	r0, r2, #1
 8001ece:	429e      	cmp	r6, r3
 8001ed0:	d1f8      	bne.n	8001ec4 <strstr+0xe>
 8001ed2:	f891 c001 	ldrb.w	ip, [r1, #1]
 8001ed6:	f1bc 0f00 	cmp.w	ip, #0
 8001eda:	d005      	beq.n	8001ee8 <strstr+0x32>
 8001edc:	7804      	ldrb	r4, [r0, #0]
 8001ede:	f101 0e02 	add.w	lr, r1, #2
 8001ee2:	4564      	cmp	r4, ip
 8001ee4:	d142      	bne.n	8001f6c <strstr+0xb6>
 8001ee6:	e004      	b.n	8001ef2 <strstr+0x3c>
 8001ee8:	f04f 0805 	mov.w	r8, #5
 8001eec:	e04f      	b.n	8001f8e <strstr+0xd8>
 8001eee:	1e48      	subs	r0, r1, #1
 8001ef0:	e038      	b.n	8001f64 <strstr+0xae>
 8001ef2:	f89e 9000 	ldrb.w	r9, [lr]
 8001ef6:	7841      	ldrb	r1, [r0, #1]
 8001ef8:	1e42      	subs	r2, r0, #1
 8001efa:	f04f 0800 	mov.w	r8, #0
 8001efe:	2500      	movs	r5, #0
 8001f00:	4549      	cmp	r1, r9
 8001f02:	d11f      	bne.n	8001f44 <strstr+0x8e>
 8001f04:	46f2      	mov	sl, lr
 8001f06:	f1b9 0f00 	cmp.w	r9, #0
 8001f0a:	d012      	beq.n	8001f32 <strstr+0x7c>
 8001f0c:	eb0e 0105 	add.w	r1, lr, r5
 8001f10:	1944      	adds	r4, r0, r5
 8001f12:	f891 9001 	ldrb.w	r9, [r1, #1]
 8001f16:	78a6      	ldrb	r6, [r4, #2]
 8001f18:	454e      	cmp	r6, r9
 8001f1a:	d10e      	bne.n	8001f3a <strstr+0x84>
 8001f1c:	b17e      	cbz	r6, 8001f3e <strstr+0x88>
 8001f1e:	f891 9002 	ldrb.w	r9, [r1, #2]
 8001f22:	78e1      	ldrb	r1, [r4, #3]
 8001f24:	3502      	adds	r5, #2
 8001f26:	f10a 0a02 	add.w	sl, sl, #2
 8001f2a:	4549      	cmp	r1, r9
 8001f2c:	d0eb      	beq.n	8001f06 <strstr+0x50>
 8001f2e:	2500      	movs	r5, #0
 8001f30:	e008      	b.n	8001f44 <strstr+0x8e>
 8001f32:	44ae      	add	lr, r5
 8001f34:	f04f 0900 	mov.w	r9, #0
 8001f38:	e003      	b.n	8001f42 <strstr+0x8c>
 8001f3a:	2500      	movs	r5, #0
 8001f3c:	e002      	b.n	8001f44 <strstr+0x8e>
 8001f3e:	f10a 0e01 	add.w	lr, sl, #1
 8001f42:	2505      	movs	r5, #5
 8001f44:	f1b9 0f00 	cmp.w	r9, #0
 8001f48:	bf08      	it	eq
 8001f4a:	f04f 0807 	moveq.w	r8, #7
 8001f4e:	2d00      	cmp	r5, #0
 8001f50:	bf18      	it	ne
 8001f52:	46a8      	movne	r8, r5
 8001f54:	f008 0107 	and.w	r1, r8, #7
 8001f58:	2907      	cmp	r1, #7
 8001f5a:	d024      	beq.n	8001fa6 <strstr+0xf0>
 8001f5c:	2900      	cmp	r1, #0
 8001f5e:	4664      	mov	r4, ip
 8001f60:	d004      	beq.n	8001f6c <strstr+0xb6>
 8001f62:	e014      	b.n	8001f8e <strstr+0xd8>
 8001f64:	f810 4f01 	ldrb.w	r4, [r0, #1]!
 8001f68:	4564      	cmp	r4, ip
 8001f6a:	d0c2      	beq.n	8001ef2 <strstr+0x3c>
 8001f6c:	429c      	cmp	r4, r3
 8001f6e:	d0f9      	beq.n	8001f64 <strstr+0xae>
 8001f70:	3001      	adds	r0, #1
 8001f72:	b14c      	cbz	r4, 8001f88 <strstr+0xd2>
 8001f74:	7801      	ldrb	r1, [r0, #0]
 8001f76:	4299      	cmp	r1, r3
 8001f78:	d0f4      	beq.n	8001f64 <strstr+0xae>
 8001f7a:	b181      	cbz	r1, 8001f9e <strstr+0xe8>
 8001f7c:	7844      	ldrb	r4, [r0, #1]
 8001f7e:	1c81      	adds	r1, r0, #2
 8001f80:	4608      	mov	r0, r1
 8001f82:	429c      	cmp	r4, r3
 8001f84:	d1f5      	bne.n	8001f72 <strstr+0xbc>
 8001f86:	e7b2      	b.n	8001eee <strstr+0x38>
 8001f88:	1e42      	subs	r2, r0, #1
 8001f8a:	f04f 0804 	mov.w	r8, #4
 8001f8e:	f1b8 0f04 	cmp.w	r8, #4
 8001f92:	bf08      	it	eq
 8001f94:	2200      	moveq	r2, #0
 8001f96:	4610      	mov	r0, r2
 8001f98:	e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
 8001f9c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001f9e:	f04f 0804 	mov.w	r8, #4
 8001fa2:	4602      	mov	r2, r0
 8001fa4:	e7f3      	b.n	8001f8e <strstr+0xd8>
 8001fa6:	f04f 0800 	mov.w	r8, #0
 8001faa:	e7f0      	b.n	8001f8e <strstr+0xd8>

08001fac <initialise_benchmark>:
 8001fac:	4770      	bx	lr

08001fae <benchmark>:
 8001fae:	b5b0      	push	{r4, r5, r7, lr}
 8001fb0:	af02      	add	r7, sp, #8
 8001fb2:	f240 0018 	movw	r0, #24
 8001fb6:	2500      	movs	r5, #0
 8001fb8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fbc:	6804      	ldr	r4, [r0, #0]
 8001fbe:	f240 0014 	movw	r0, #20
 8001fc2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fc6:	6800      	ldr	r0, [r0, #0]
 8001fc8:	3001      	adds	r0, #1
 8001fca:	4621      	mov	r1, r4
 8001fcc:	f7ff ff73 	bl	8001eb6 <strstr>
 8001fd0:	3501      	adds	r5, #1
 8001fd2:	2800      	cmp	r0, #0
 8001fd4:	d1f8      	bne.n	8001fc8 <benchmark+0x1a>
 8001fd6:	4628      	mov	r0, r5
 8001fd8:	bdb0      	pop	{r4, r5, r7, pc}

08001fda <verify_benchmark>:
 8001fda:	2100      	movs	r1, #0
 8001fdc:	2808      	cmp	r0, #8
 8001fde:	bf08      	it	eq
 8001fe0:	2101      	moveq	r1, #1
 8001fe2:	4608      	mov	r0, r1
 8001fe4:	4770      	bx	lr

08001fe6 <__io_putchar>:
 8001fe6:	b580      	push	{r7, lr}
 8001fe8:	466f      	mov	r7, sp
 8001fea:	b082      	sub	sp, #8
 8001fec:	9001      	str	r0, [sp, #4]
 8001fee:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8001ff2:	a901      	add	r1, sp, #4
 8001ff4:	2201      	movs	r2, #1
 8001ff6:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001ffa:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ffe:	f7ff fe6c 	bl	8001cda <HAL_UART_Transmit>
 8002002:	9801      	ldr	r0, [sp, #4]
 8002004:	b002      	add	sp, #8
 8002006:	bd80      	pop	{r7, pc}

08002008 <main>:
 8002008:	b5b0      	push	{r4, r5, r7, lr}
 800200a:	af02      	add	r7, sp, #8
 800200c:	f640 11ec 	movw	r1, #2540	; 0x9ec
 8002010:	f643 0000 	movw	r0, #14336	; 0x3800
 8002014:	220c      	movs	r2, #12
 8002016:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800201a:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800201e:	6008      	str	r0, [r1, #0]
 8002020:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8002024:	6048      	str	r0, [r1, #4]
 8002026:	2000      	movs	r0, #0
 8002028:	e9c1 0002 	strd	r0, r0, [r1, #8]
 800202c:	6108      	str	r0, [r1, #16]
 800202e:	6248      	str	r0, [r1, #36]	; 0x24
 8002030:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8002034:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8002038:	2000      	movs	r0, #0
 800203a:	f7ff fee3 	bl	8001e04 <BSP_COM_Init>
 800203e:	f7ff ffb5 	bl	8001fac <initialise_benchmark>
 8002042:	f247 0045 	movw	r0, #28741	; 0x7045
 8002046:	f6c0 0000 	movt	r0, #2048	; 0x800
 800204a:	f000 f949 	bl	80022e0 <printf>
 800204e:	f247 00ee 	movw	r0, #28910	; 0x70ee
 8002052:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002056:	f000 f9a5 	bl	80023a4 <puts>
 800205a:	f7ff f845 	bl	80010e8 <HAL_Init>
 800205e:	f7ff f85b 	bl	8001118 <HAL_GetTick>
 8002062:	4604      	mov	r4, r0
 8002064:	f7ff ffa3 	bl	8001fae <benchmark>
 8002068:	4605      	mov	r5, r0
 800206a:	f7ff f855 	bl	8001118 <HAL_GetTick>
 800206e:	1b04      	subs	r4, r0, r4
 8002070:	4628      	mov	r0, r5
 8002072:	f7ff ffb2 	bl	8001fda <verify_benchmark>
 8002076:	1c41      	adds	r1, r0, #1
 8002078:	d006      	beq.n	8002088 <main+0x80>
 800207a:	2801      	cmp	r0, #1
 800207c:	d109      	bne.n	8002092 <main+0x8a>
 800207e:	f247 005a 	movw	r0, #28762	; 0x705a
 8002082:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002086:	e008      	b.n	800209a <main+0x92>
 8002088:	f247 007e 	movw	r0, #28798	; 0x707e
 800208c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002090:	e003      	b.n	800209a <main+0x92>
 8002092:	f247 00b3 	movw	r0, #28851	; 0x70b3
 8002096:	f6c0 0000 	movt	r0, #2048	; 0x800
 800209a:	4621      	mov	r1, r4
 800209c:	f000 f920 	bl	80022e0 <printf>
 80020a0:	2000      	movs	r0, #0
 80020a2:	bdb0      	pop	{r4, r5, r7, pc}

080020a4 <SysTick_Handler>:
 80020a4:	b580      	push	{r7, lr}
 80020a6:	466f      	mov	r7, sp
 80020a8:	f7ff f82e 	bl	8001108 <HAL_IncTick>
 80020ac:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80020b0:	f7ff b888 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

080020b4 <_read>:
 80020b4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80020b6:	af03      	add	r7, sp, #12
 80020b8:	f84d bd04 	str.w	fp, [sp, #-4]!
 80020bc:	4614      	mov	r4, r2
 80020be:	460d      	mov	r5, r1
 80020c0:	2c01      	cmp	r4, #1
 80020c2:	db06      	blt.n	80020d2 <_read+0x1e>
 80020c4:	4626      	mov	r6, r4
 80020c6:	f3af 8000 	nop.w
 80020ca:	f805 0b01 	strb.w	r0, [r5], #1
 80020ce:	3e01      	subs	r6, #1
 80020d0:	d1f9      	bne.n	80020c6 <_read+0x12>
 80020d2:	4620      	mov	r0, r4
 80020d4:	f85d bb04 	ldr.w	fp, [sp], #4
 80020d8:	bdf0      	pop	{r4, r5, r6, r7, pc}

080020da <_write>:
 80020da:	b5f0      	push	{r4, r5, r6, r7, lr}
 80020dc:	af03      	add	r7, sp, #12
 80020de:	f84d bd04 	str.w	fp, [sp, #-4]!
 80020e2:	4614      	mov	r4, r2
 80020e4:	460d      	mov	r5, r1
 80020e6:	2c01      	cmp	r4, #1
 80020e8:	db06      	blt.n	80020f8 <_write+0x1e>
 80020ea:	4626      	mov	r6, r4
 80020ec:	f815 0b01 	ldrb.w	r0, [r5], #1
 80020f0:	f7ff ff79 	bl	8001fe6 <__io_putchar>
 80020f4:	3e01      	subs	r6, #1
 80020f6:	d1f9      	bne.n	80020ec <_write+0x12>
 80020f8:	4620      	mov	r0, r4
 80020fa:	f85d bb04 	ldr.w	fp, [sp], #4
 80020fe:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002100 <_sbrk>:
 8002100:	f640 2270 	movw	r2, #2672	; 0xa70
 8002104:	4601      	mov	r1, r0
 8002106:	466b      	mov	r3, sp
 8002108:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800210c:	6810      	ldr	r0, [r2, #0]
 800210e:	2800      	cmp	r0, #0
 8002110:	bf02      	ittt	eq
 8002112:	f640 3018 	movweq	r0, #2840	; 0xb18
 8002116:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 800211a:	6010      	streq	r0, [r2, #0]
 800211c:	4401      	add	r1, r0
 800211e:	4299      	cmp	r1, r3
 8002120:	bf9c      	itt	ls
 8002122:	6011      	strls	r1, [r2, #0]
 8002124:	4770      	bxls	lr
 8002126:	b580      	push	{r7, lr}
 8002128:	466f      	mov	r7, sp
 800212a:	f000 f865 	bl	80021f8 <__errno>
 800212e:	210c      	movs	r1, #12
 8002130:	6001      	str	r1, [r0, #0]
 8002132:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002136:	bd80      	pop	{r7, pc}

08002138 <_close>:
 8002138:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800213c:	4770      	bx	lr

0800213e <_fstat>:
 800213e:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002142:	6048      	str	r0, [r1, #4]
 8002144:	2000      	movs	r0, #0
 8002146:	4770      	bx	lr

08002148 <_isatty>:
 8002148:	2001      	movs	r0, #1
 800214a:	4770      	bx	lr

0800214c <_lseek>:
 800214c:	2000      	movs	r0, #0
 800214e:	4770      	bx	lr

08002150 <SystemInit>:
 8002150:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002154:	f04f 0c00 	mov.w	ip, #0
 8002158:	f2ce 0000 	movt	r0, #57344	; 0xe000
 800215c:	6801      	ldr	r1, [r0, #0]
 800215e:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002162:	6001      	str	r1, [r0, #0]
 8002164:	f241 0100 	movw	r1, #4096	; 0x1000
 8002168:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800216c:	680a      	ldr	r2, [r1, #0]
 800216e:	f042 0201 	orr.w	r2, r2, #1
 8002172:	600a      	str	r2, [r1, #0]
 8002174:	f8c1 c008 	str.w	ip, [r1, #8]
 8002178:	f64f 72ff 	movw	r2, #65535	; 0xffff
 800217c:	680b      	ldr	r3, [r1, #0]
 800217e:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002182:	401a      	ands	r2, r3
 8002184:	600a      	str	r2, [r1, #0]
 8002186:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 800218a:	60ca      	str	r2, [r1, #12]
 800218c:	680a      	ldr	r2, [r1, #0]
 800218e:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002192:	600a      	str	r2, [r1, #0]
 8002194:	f8c1 c018 	str.w	ip, [r1, #24]
 8002198:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 800219c:	f840 1c80 	str.w	r1, [r0, #-128]
 80021a0:	4770      	bx	lr
	...

080021a4 <Reset_Handler>:
 80021a4:	f8df d034 	ldr.w	sp, [pc, #52]	; 80021dc <LoopForever+0x2>
 80021a8:	2100      	movs	r1, #0
 80021aa:	e003      	b.n	80021b4 <LoopCopyDataInit>

080021ac <CopyDataInit>:
 80021ac:	4b0c      	ldr	r3, [pc, #48]	; (80021e0 <LoopForever+0x6>)
 80021ae:	585b      	ldr	r3, [r3, r1]
 80021b0:	5043      	str	r3, [r0, r1]
 80021b2:	3104      	adds	r1, #4

080021b4 <LoopCopyDataInit>:
 80021b4:	480b      	ldr	r0, [pc, #44]	; (80021e4 <LoopForever+0xa>)
 80021b6:	4b0c      	ldr	r3, [pc, #48]	; (80021e8 <LoopForever+0xe>)
 80021b8:	1842      	adds	r2, r0, r1
 80021ba:	429a      	cmp	r2, r3
 80021bc:	d3f6      	bcc.n	80021ac <CopyDataInit>
 80021be:	4a0b      	ldr	r2, [pc, #44]	; (80021ec <LoopForever+0x12>)
 80021c0:	e002      	b.n	80021c8 <LoopFillZerobss>

080021c2 <FillZerobss>:
 80021c2:	2300      	movs	r3, #0
 80021c4:	f842 3b04 	str.w	r3, [r2], #4

080021c8 <LoopFillZerobss>:
 80021c8:	4b09      	ldr	r3, [pc, #36]	; (80021f0 <LoopForever+0x16>)
 80021ca:	429a      	cmp	r2, r3
 80021cc:	d3f9      	bcc.n	80021c2 <FillZerobss>
 80021ce:	f7ff ffbf 	bl	8002150 <SystemInit>
 80021d2:	f000 f817 	bl	8002204 <__libc_init_array>
 80021d6:	f7ff ff17 	bl	8002008 <main>

080021da <LoopForever>:
 80021da:	e7fe      	b.n	80021da <LoopForever>
 80021dc:	20018000 	.word	0x20018000
 80021e0:	08007398 	.word	0x08007398
 80021e4:	20000000 	.word	0x20000000
 80021e8:	200009d0 	.word	0x200009d0
 80021ec:	200009d0 	.word	0x200009d0
 80021f0:	20000b18 	.word	0x20000b18

080021f4 <ADC1_2_IRQHandler>:
 80021f4:	e7fe      	b.n	80021f4 <ADC1_2_IRQHandler>
	...

080021f8 <__errno>:
 80021f8:	4b01      	ldr	r3, [pc, #4]	; (8002200 <__errno+0x8>)
 80021fa:	6818      	ldr	r0, [r3, #0]
 80021fc:	4770      	bx	lr
 80021fe:	bf00      	nop
 8002200:	20000020 	.word	0x20000020

08002204 <__libc_init_array>:
 8002204:	b570      	push	{r4, r5, r6, lr}
 8002206:	4e0d      	ldr	r6, [pc, #52]	; (800223c <__libc_init_array+0x38>)
 8002208:	4d0d      	ldr	r5, [pc, #52]	; (8002240 <__libc_init_array+0x3c>)
 800220a:	1b76      	subs	r6, r6, r5
 800220c:	10b6      	asrs	r6, r6, #2
 800220e:	d006      	beq.n	800221e <__libc_init_array+0x1a>
 8002210:	2400      	movs	r4, #0
 8002212:	3401      	adds	r4, #1
 8002214:	f855 3b04 	ldr.w	r3, [r5], #4
 8002218:	4798      	blx	r3
 800221a:	42a6      	cmp	r6, r4
 800221c:	d1f9      	bne.n	8002212 <__libc_init_array+0xe>
 800221e:	4e09      	ldr	r6, [pc, #36]	; (8002244 <__libc_init_array+0x40>)
 8002220:	4d09      	ldr	r5, [pc, #36]	; (8002248 <__libc_init_array+0x44>)
 8002222:	1b76      	subs	r6, r6, r5
 8002224:	f004 feaa 	bl	8006f7c <_init>
 8002228:	10b6      	asrs	r6, r6, #2
 800222a:	d006      	beq.n	800223a <__libc_init_array+0x36>
 800222c:	2400      	movs	r4, #0
 800222e:	3401      	adds	r4, #1
 8002230:	f855 3b04 	ldr.w	r3, [r5], #4
 8002234:	4798      	blx	r3
 8002236:	42a6      	cmp	r6, r4
 8002238:	d1f9      	bne.n	800222e <__libc_init_array+0x2a>
 800223a:	bd70      	pop	{r4, r5, r6, pc}
 800223c:	08007388 	.word	0x08007388
 8002240:	08007388 	.word	0x08007388
 8002244:	08007390 	.word	0x08007390
 8002248:	08007388 	.word	0x08007388

0800224c <memset>:
 800224c:	b4f0      	push	{r4, r5, r6, r7}
 800224e:	0786      	lsls	r6, r0, #30
 8002250:	d043      	beq.n	80022da <memset+0x8e>
 8002252:	1e54      	subs	r4, r2, #1
 8002254:	2a00      	cmp	r2, #0
 8002256:	d03e      	beq.n	80022d6 <memset+0x8a>
 8002258:	b2ca      	uxtb	r2, r1
 800225a:	4603      	mov	r3, r0
 800225c:	e002      	b.n	8002264 <memset+0x18>
 800225e:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002262:	d338      	bcc.n	80022d6 <memset+0x8a>
 8002264:	f803 2b01 	strb.w	r2, [r3], #1
 8002268:	079d      	lsls	r5, r3, #30
 800226a:	d1f8      	bne.n	800225e <memset+0x12>
 800226c:	2c03      	cmp	r4, #3
 800226e:	d92b      	bls.n	80022c8 <memset+0x7c>
 8002270:	b2cd      	uxtb	r5, r1
 8002272:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002276:	2c0f      	cmp	r4, #15
 8002278:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 800227c:	d916      	bls.n	80022ac <memset+0x60>
 800227e:	f1a4 0710 	sub.w	r7, r4, #16
 8002282:	093f      	lsrs	r7, r7, #4
 8002284:	f103 0620 	add.w	r6, r3, #32
 8002288:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 800228c:	f103 0210 	add.w	r2, r3, #16
 8002290:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002294:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002298:	3210      	adds	r2, #16
 800229a:	42b2      	cmp	r2, r6
 800229c:	d1f8      	bne.n	8002290 <memset+0x44>
 800229e:	f004 040f 	and.w	r4, r4, #15
 80022a2:	3701      	adds	r7, #1
 80022a4:	2c03      	cmp	r4, #3
 80022a6:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80022aa:	d90d      	bls.n	80022c8 <memset+0x7c>
 80022ac:	461e      	mov	r6, r3
 80022ae:	4622      	mov	r2, r4
 80022b0:	3a04      	subs	r2, #4
 80022b2:	2a03      	cmp	r2, #3
 80022b4:	f846 5b04 	str.w	r5, [r6], #4
 80022b8:	d8fa      	bhi.n	80022b0 <memset+0x64>
 80022ba:	1f22      	subs	r2, r4, #4
 80022bc:	f022 0203 	bic.w	r2, r2, #3
 80022c0:	3204      	adds	r2, #4
 80022c2:	4413      	add	r3, r2
 80022c4:	f004 0403 	and.w	r4, r4, #3
 80022c8:	b12c      	cbz	r4, 80022d6 <memset+0x8a>
 80022ca:	b2c9      	uxtb	r1, r1
 80022cc:	441c      	add	r4, r3
 80022ce:	f803 1b01 	strb.w	r1, [r3], #1
 80022d2:	429c      	cmp	r4, r3
 80022d4:	d1fb      	bne.n	80022ce <memset+0x82>
 80022d6:	bcf0      	pop	{r4, r5, r6, r7}
 80022d8:	4770      	bx	lr
 80022da:	4614      	mov	r4, r2
 80022dc:	4603      	mov	r3, r0
 80022de:	e7c5      	b.n	800226c <memset+0x20>

080022e0 <printf>:
 80022e0:	b40f      	push	{r0, r1, r2, r3}
 80022e2:	b500      	push	{lr}
 80022e4:	4907      	ldr	r1, [pc, #28]	; (8002304 <printf+0x24>)
 80022e6:	b083      	sub	sp, #12
 80022e8:	ab04      	add	r3, sp, #16
 80022ea:	6808      	ldr	r0, [r1, #0]
 80022ec:	f853 2b04 	ldr.w	r2, [r3], #4
 80022f0:	6881      	ldr	r1, [r0, #8]
 80022f2:	9301      	str	r3, [sp, #4]
 80022f4:	f000 f860 	bl	80023b8 <_vfprintf_r>
 80022f8:	b003      	add	sp, #12
 80022fa:	f85d eb04 	ldr.w	lr, [sp], #4
 80022fe:	b004      	add	sp, #16
 8002300:	4770      	bx	lr
 8002302:	bf00      	nop
 8002304:	20000020 	.word	0x20000020

08002308 <_puts_r>:
 8002308:	b570      	push	{r4, r5, r6, lr}
 800230a:	4605      	mov	r5, r0
 800230c:	b088      	sub	sp, #32
 800230e:	4608      	mov	r0, r1
 8002310:	460c      	mov	r4, r1
 8002312:	f7fe f995 	bl	8000640 <strlen>
 8002316:	4a22      	ldr	r2, [pc, #136]	; (80023a0 <_puts_r+0x98>)
 8002318:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800231a:	9404      	str	r4, [sp, #16]
 800231c:	2601      	movs	r6, #1
 800231e:	1c44      	adds	r4, r0, #1
 8002320:	a904      	add	r1, sp, #16
 8002322:	9206      	str	r2, [sp, #24]
 8002324:	2202      	movs	r2, #2
 8002326:	9403      	str	r4, [sp, #12]
 8002328:	9005      	str	r0, [sp, #20]
 800232a:	68ac      	ldr	r4, [r5, #8]
 800232c:	9607      	str	r6, [sp, #28]
 800232e:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002332:	b31b      	cbz	r3, 800237c <_puts_r+0x74>
 8002334:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002336:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800233a:	07ce      	lsls	r6, r1, #31
 800233c:	b29a      	uxth	r2, r3
 800233e:	d401      	bmi.n	8002344 <_puts_r+0x3c>
 8002340:	0590      	lsls	r0, r2, #22
 8002342:	d525      	bpl.n	8002390 <_puts_r+0x88>
 8002344:	0491      	lsls	r1, r2, #18
 8002346:	d406      	bmi.n	8002356 <_puts_r+0x4e>
 8002348:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800234a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800234e:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002352:	81a3      	strh	r3, [r4, #12]
 8002354:	6662      	str	r2, [r4, #100]	; 0x64
 8002356:	4628      	mov	r0, r5
 8002358:	aa01      	add	r2, sp, #4
 800235a:	4621      	mov	r1, r4
 800235c:	f003 f860 	bl	8005420 <__sfvwrite_r>
 8002360:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002362:	2800      	cmp	r0, #0
 8002364:	bf0c      	ite	eq
 8002366:	250a      	moveq	r5, #10
 8002368:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 800236c:	07da      	lsls	r2, r3, #31
 800236e:	d402      	bmi.n	8002376 <_puts_r+0x6e>
 8002370:	89a3      	ldrh	r3, [r4, #12]
 8002372:	059b      	lsls	r3, r3, #22
 8002374:	d506      	bpl.n	8002384 <_puts_r+0x7c>
 8002376:	4628      	mov	r0, r5
 8002378:	b008      	add	sp, #32
 800237a:	bd70      	pop	{r4, r5, r6, pc}
 800237c:	4628      	mov	r0, r5
 800237e:	f002 feb9 	bl	80050f4 <__sinit>
 8002382:	e7d7      	b.n	8002334 <_puts_r+0x2c>
 8002384:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002386:	f003 fa07 	bl	8005798 <__retarget_lock_release_recursive>
 800238a:	4628      	mov	r0, r5
 800238c:	b008      	add	sp, #32
 800238e:	bd70      	pop	{r4, r5, r6, pc}
 8002390:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002392:	f003 f9ff 	bl	8005794 <__retarget_lock_acquire_recursive>
 8002396:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800239a:	b29a      	uxth	r2, r3
 800239c:	e7d2      	b.n	8002344 <_puts_r+0x3c>
 800239e:	bf00      	nop
 80023a0:	080070f4 	.word	0x080070f4

080023a4 <puts>:
 80023a4:	4b02      	ldr	r3, [pc, #8]	; (80023b0 <puts+0xc>)
 80023a6:	4601      	mov	r1, r0
 80023a8:	6818      	ldr	r0, [r3, #0]
 80023aa:	f7ff bfad 	b.w	8002308 <_puts_r>
 80023ae:	bf00      	nop
 80023b0:	20000020 	.word	0x20000020
 80023b4:	00000000 	.word	0x00000000

080023b8 <_vfprintf_r>:
 80023b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80023bc:	b0d7      	sub	sp, #348	; 0x15c
 80023be:	461c      	mov	r4, r3
 80023c0:	4689      	mov	r9, r1
 80023c2:	4617      	mov	r7, r2
 80023c4:	4605      	mov	r5, r0
 80023c6:	9003      	str	r0, [sp, #12]
 80023c8:	f003 f9d2 	bl	8005770 <_localeconv_r>
 80023cc:	6803      	ldr	r3, [r0, #0]
 80023ce:	9316      	str	r3, [sp, #88]	; 0x58
 80023d0:	4618      	mov	r0, r3
 80023d2:	f7fe f935 	bl	8000640 <strlen>
 80023d6:	9408      	str	r4, [sp, #32]
 80023d8:	9015      	str	r0, [sp, #84]	; 0x54
 80023da:	b11d      	cbz	r5, 80023e4 <_vfprintf_r+0x2c>
 80023dc:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80023de:	2b00      	cmp	r3, #0
 80023e0:	f000 8107 	beq.w	80025f2 <_vfprintf_r+0x23a>
 80023e4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80023e8:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80023ec:	07c8      	lsls	r0, r1, #31
 80023ee:	b293      	uxth	r3, r2
 80023f0:	d402      	bmi.n	80023f8 <_vfprintf_r+0x40>
 80023f2:	0599      	lsls	r1, r3, #22
 80023f4:	f140 811f 	bpl.w	8002636 <_vfprintf_r+0x27e>
 80023f8:	049e      	lsls	r6, r3, #18
 80023fa:	d40a      	bmi.n	8002412 <_vfprintf_r+0x5a>
 80023fc:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002400:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002404:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002408:	f8a9 300c 	strh.w	r3, [r9, #12]
 800240c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002410:	b29b      	uxth	r3, r3
 8002412:	071d      	lsls	r5, r3, #28
 8002414:	f140 80b2 	bpl.w	800257c <_vfprintf_r+0x1c4>
 8002418:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800241c:	2a00      	cmp	r2, #0
 800241e:	f000 80ad 	beq.w	800257c <_vfprintf_r+0x1c4>
 8002422:	f003 021a 	and.w	r2, r3, #26
 8002426:	2a0a      	cmp	r2, #10
 8002428:	f000 80c9 	beq.w	80025be <_vfprintf_r+0x206>
 800242c:	2300      	movs	r3, #0
 800242e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002648 <_vfprintf_r+0x290>
 8002432:	9310      	str	r3, [sp, #64]	; 0x40
 8002434:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002438:	9317      	str	r3, [sp, #92]	; 0x5c
 800243a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 800243e:	931b      	str	r3, [sp, #108]	; 0x6c
 8002440:	9318      	str	r3, [sp, #96]	; 0x60
 8002442:	9305      	str	r3, [sp, #20]
 8002444:	ab2d      	add	r3, sp, #180	; 0xb4
 8002446:	932a      	str	r3, [sp, #168]	; 0xa8
 8002448:	469b      	mov	fp, r3
 800244a:	783b      	ldrb	r3, [r7, #0]
 800244c:	f8cd 901c 	str.w	r9, [sp, #28]
 8002450:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002454:	2b00      	cmp	r3, #0
 8002456:	f000 8259 	beq.w	800290c <_vfprintf_r+0x554>
 800245a:	2b25      	cmp	r3, #37	; 0x25
 800245c:	463c      	mov	r4, r7
 800245e:	d102      	bne.n	8002466 <_vfprintf_r+0xae>
 8002460:	e01d      	b.n	800249e <_vfprintf_r+0xe6>
 8002462:	2b25      	cmp	r3, #37	; 0x25
 8002464:	d003      	beq.n	800246e <_vfprintf_r+0xb6>
 8002466:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 800246a:	2b00      	cmp	r3, #0
 800246c:	d1f9      	bne.n	8002462 <_vfprintf_r+0xaa>
 800246e:	1be5      	subs	r5, r4, r7
 8002470:	b18d      	cbz	r5, 8002496 <_vfprintf_r+0xde>
 8002472:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002476:	3301      	adds	r3, #1
 8002478:	442a      	add	r2, r5
 800247a:	2b07      	cmp	r3, #7
 800247c:	f8cb 7000 	str.w	r7, [fp]
 8002480:	f8cb 5004 	str.w	r5, [fp, #4]
 8002484:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002488:	f300 80ca 	bgt.w	8002620 <_vfprintf_r+0x268>
 800248c:	f10b 0b08 	add.w	fp, fp, #8
 8002490:	9b05      	ldr	r3, [sp, #20]
 8002492:	442b      	add	r3, r5
 8002494:	9305      	str	r3, [sp, #20]
 8002496:	7823      	ldrb	r3, [r4, #0]
 8002498:	2b00      	cmp	r3, #0
 800249a:	f000 8237 	beq.w	800290c <_vfprintf_r+0x554>
 800249e:	2300      	movs	r3, #0
 80024a0:	7866      	ldrb	r6, [r4, #1]
 80024a2:	9306      	str	r3, [sp, #24]
 80024a4:	4698      	mov	r8, r3
 80024a6:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80024aa:	f104 0a01 	add.w	sl, r4, #1
 80024ae:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 80024b2:	252b      	movs	r5, #43	; 0x2b
 80024b4:	f10a 0a01 	add.w	sl, sl, #1
 80024b8:	f1a6 0320 	sub.w	r3, r6, #32
 80024bc:	2b5a      	cmp	r3, #90	; 0x5a
 80024be:	f200 842a 	bhi.w	8002d16 <_vfprintf_r+0x95e>
 80024c2:	e8df f013 	tbh	[pc, r3, lsl #1]
 80024c6:	03aa      	.short	0x03aa
 80024c8:	04280428 	.word	0x04280428
 80024cc:	0428029c 	.word	0x0428029c
 80024d0:	04280428 	.word	0x04280428
 80024d4:	042802a7 	.word	0x042802a7
 80024d8:	02c60428 	.word	0x02c60428
 80024dc:	042802d2 	.word	0x042802d2
 80024e0:	02dc02d7 	.word	0x02dc02d7
 80024e4:	02f60428 	.word	0x02f60428
 80024e8:	026d026d 	.word	0x026d026d
 80024ec:	026d026d 	.word	0x026d026d
 80024f0:	026d026d 	.word	0x026d026d
 80024f4:	026d026d 	.word	0x026d026d
 80024f8:	0428026d 	.word	0x0428026d
 80024fc:	04280428 	.word	0x04280428
 8002500:	04280428 	.word	0x04280428
 8002504:	04280428 	.word	0x04280428
 8002508:	042802fb 	.word	0x042802fb
 800250c:	03f3033c 	.word	0x03f3033c
 8002510:	02fb02fb 	.word	0x02fb02fb
 8002514:	042802fb 	.word	0x042802fb
 8002518:	04280428 	.word	0x04280428
 800251c:	03ee0428 	.word	0x03ee0428
 8002520:	04280428 	.word	0x04280428
 8002524:	0428009a 	.word	0x0428009a
 8002528:	04280428 	.word	0x04280428
 800252c:	04280350 	.word	0x04280350
 8002530:	04280379 	.word	0x04280379
 8002534:	03900428 	.word	0x03900428
 8002538:	04280428 	.word	0x04280428
 800253c:	04280428 	.word	0x04280428
 8002540:	04280428 	.word	0x04280428
 8002544:	04280428 	.word	0x04280428
 8002548:	042802fb 	.word	0x042802fb
 800254c:	00c5033c 	.word	0x00c5033c
 8002550:	02fb02fb 	.word	0x02fb02fb
 8002554:	03d102fb 	.word	0x03d102fb
 8002558:	007000c5 	.word	0x007000c5
 800255c:	03b50428 	.word	0x03b50428
 8002560:	03c20428 	.word	0x03c20428
 8002564:	03de009c 	.word	0x03de009c
 8002568:	04280070 	.word	0x04280070
 800256c:	00720350 	.word	0x00720350
 8002570:	0428022c 	.word	0x0428022c
 8002574:	027c0428 	.word	0x027c0428
 8002578:	00720428 	.word	0x00720428
 800257c:	4649      	mov	r1, r9
 800257e:	9803      	ldr	r0, [sp, #12]
 8002580:	f001 fc9a 	bl	8003eb8 <__swsetup_r>
 8002584:	b1a0      	cbz	r0, 80025b0 <_vfprintf_r+0x1f8>
 8002586:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 800258a:	07d8      	lsls	r0, r3, #31
 800258c:	d404      	bmi.n	8002598 <_vfprintf_r+0x1e0>
 800258e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002592:	0599      	lsls	r1, r3, #22
 8002594:	f140 83b7 	bpl.w	8002d06 <_vfprintf_r+0x94e>
 8002598:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800259c:	9305      	str	r3, [sp, #20]
 800259e:	9805      	ldr	r0, [sp, #20]
 80025a0:	b057      	add	sp, #348	; 0x15c
 80025a2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80025a6:	f048 0820 	orr.w	r8, r8, #32
 80025aa:	f89a 6000 	ldrb.w	r6, [sl]
 80025ae:	e781      	b.n	80024b4 <_vfprintf_r+0xfc>
 80025b0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80025b4:	f003 021a 	and.w	r2, r3, #26
 80025b8:	2a0a      	cmp	r2, #10
 80025ba:	f47f af37 	bne.w	800242c <_vfprintf_r+0x74>
 80025be:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 80025c2:	2a00      	cmp	r2, #0
 80025c4:	f6ff af32 	blt.w	800242c <_vfprintf_r+0x74>
 80025c8:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80025cc:	07d2      	lsls	r2, r2, #31
 80025ce:	d405      	bmi.n	80025dc <_vfprintf_r+0x224>
 80025d0:	059b      	lsls	r3, r3, #22
 80025d2:	d403      	bmi.n	80025dc <_vfprintf_r+0x224>
 80025d4:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80025d8:	f003 f8de 	bl	8005798 <__retarget_lock_release_recursive>
 80025dc:	4623      	mov	r3, r4
 80025de:	463a      	mov	r2, r7
 80025e0:	4649      	mov	r1, r9
 80025e2:	9803      	ldr	r0, [sp, #12]
 80025e4:	f001 fc26 	bl	8003e34 <__sbprintf>
 80025e8:	9005      	str	r0, [sp, #20]
 80025ea:	9805      	ldr	r0, [sp, #20]
 80025ec:	b057      	add	sp, #348	; 0x15c
 80025ee:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80025f2:	9803      	ldr	r0, [sp, #12]
 80025f4:	f002 fd7e 	bl	80050f4 <__sinit>
 80025f8:	e6f4      	b.n	80023e4 <_vfprintf_r+0x2c>
 80025fa:	f048 0810 	orr.w	r8, r8, #16
 80025fe:	f018 0f20 	tst.w	r8, #32
 8002602:	f000 836c 	beq.w	8002cde <_vfprintf_r+0x926>
 8002606:	9c08      	ldr	r4, [sp, #32]
 8002608:	3407      	adds	r4, #7
 800260a:	f024 0307 	bic.w	r3, r4, #7
 800260e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002612:	f103 0208 	add.w	r2, r3, #8
 8002616:	9208      	str	r2, [sp, #32]
 8002618:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800261c:	2200      	movs	r2, #0
 800261e:	e18c      	b.n	800293a <_vfprintf_r+0x582>
 8002620:	aa2a      	add	r2, sp, #168	; 0xa8
 8002622:	9907      	ldr	r1, [sp, #28]
 8002624:	9803      	ldr	r0, [sp, #12]
 8002626:	f004 f9f5 	bl	8006a14 <__sprint_r>
 800262a:	2800      	cmp	r0, #0
 800262c:	f041 8376 	bne.w	8003d1c <_vfprintf_r+0x1964>
 8002630:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002634:	e72c      	b.n	8002490 <_vfprintf_r+0xd8>
 8002636:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800263a:	f003 f8ab 	bl	8005794 <__retarget_lock_acquire_recursive>
 800263e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002642:	b293      	uxth	r3, r2
 8002644:	e6d8      	b.n	80023f8 <_vfprintf_r+0x40>
 8002646:	bf00      	nop
	...
 8002650:	4643      	mov	r3, r8
 8002652:	069f      	lsls	r7, r3, #26
 8002654:	f140 832f 	bpl.w	8002cb6 <_vfprintf_r+0x8fe>
 8002658:	9c08      	ldr	r4, [sp, #32]
 800265a:	3407      	adds	r4, #7
 800265c:	f024 0407 	bic.w	r4, r4, #7
 8002660:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002664:	f104 0208 	add.w	r2, r4, #8
 8002668:	9208      	str	r2, [sp, #32]
 800266a:	4604      	mov	r4, r0
 800266c:	460d      	mov	r5, r1
 800266e:	2800      	cmp	r0, #0
 8002670:	f171 0200 	sbcs.w	r2, r1, #0
 8002674:	da05      	bge.n	8002682 <_vfprintf_r+0x2ca>
 8002676:	222d      	movs	r2, #45	; 0x2d
 8002678:	4264      	negs	r4, r4
 800267a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 800267e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002682:	aa56      	add	r2, sp, #344	; 0x158
 8002684:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002688:	9204      	str	r2, [sp, #16]
 800268a:	f000 84b2 	beq.w	8002ff2 <_vfprintf_r+0xc3a>
 800268e:	2201      	movs	r2, #1
 8002690:	ea54 0105 	orrs.w	r1, r4, r5
 8002694:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002698:	f040 8159 	bne.w	800294e <_vfprintf_r+0x596>
 800269c:	f1b9 0f00 	cmp.w	r9, #0
 80026a0:	f040 8619 	bne.w	80032d6 <_vfprintf_r+0xf1e>
 80026a4:	2a00      	cmp	r2, #0
 80026a6:	f040 8508 	bne.w	80030ba <_vfprintf_r+0xd02>
 80026aa:	f013 0301 	ands.w	r3, r3, #1
 80026ae:	af56      	add	r7, sp, #344	; 0x158
 80026b0:	9309      	str	r3, [sp, #36]	; 0x24
 80026b2:	d002      	beq.n	80026ba <_vfprintf_r+0x302>
 80026b4:	2330      	movs	r3, #48	; 0x30
 80026b6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80026ba:	2300      	movs	r3, #0
 80026bc:	930a      	str	r3, [sp, #40]	; 0x28
 80026be:	930f      	str	r3, [sp, #60]	; 0x3c
 80026c0:	9314      	str	r3, [sp, #80]	; 0x50
 80026c2:	9311      	str	r3, [sp, #68]	; 0x44
 80026c4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80026c6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80026ca:	454b      	cmp	r3, r9
 80026cc:	bfb8      	it	lt
 80026ce:	464b      	movlt	r3, r9
 80026d0:	9304      	str	r3, [sp, #16]
 80026d2:	b112      	cbz	r2, 80026da <_vfprintf_r+0x322>
 80026d4:	9b04      	ldr	r3, [sp, #16]
 80026d6:	3301      	adds	r3, #1
 80026d8:	9304      	str	r3, [sp, #16]
 80026da:	f018 0302 	ands.w	r3, r8, #2
 80026de:	930b      	str	r3, [sp, #44]	; 0x2c
 80026e0:	d002      	beq.n	80026e8 <_vfprintf_r+0x330>
 80026e2:	9b04      	ldr	r3, [sp, #16]
 80026e4:	3302      	adds	r3, #2
 80026e6:	9304      	str	r3, [sp, #16]
 80026e8:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 80026ec:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80026ee:	930e      	str	r3, [sp, #56]	; 0x38
 80026f0:	d13f      	bne.n	8002772 <_vfprintf_r+0x3ba>
 80026f2:	9b06      	ldr	r3, [sp, #24]
 80026f4:	9904      	ldr	r1, [sp, #16]
 80026f6:	1a5d      	subs	r5, r3, r1
 80026f8:	2d00      	cmp	r5, #0
 80026fa:	dd3a      	ble.n	8002772 <_vfprintf_r+0x3ba>
 80026fc:	2d10      	cmp	r5, #16
 80026fe:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002700:	dd29      	ble.n	8002756 <_vfprintf_r+0x39e>
 8002702:	4659      	mov	r1, fp
 8002704:	4620      	mov	r0, r4
 8002706:	9620      	str	r6, [sp, #128]	; 0x80
 8002708:	2310      	movs	r3, #16
 800270a:	9c03      	ldr	r4, [sp, #12]
 800270c:	9e07      	ldr	r6, [sp, #28]
 800270e:	46bb      	mov	fp, r7
 8002710:	e004      	b.n	800271c <_vfprintf_r+0x364>
 8002712:	3d10      	subs	r5, #16
 8002714:	2d10      	cmp	r5, #16
 8002716:	f101 0108 	add.w	r1, r1, #8
 800271a:	dd18      	ble.n	800274e <_vfprintf_r+0x396>
 800271c:	3201      	adds	r2, #1
 800271e:	4fba      	ldr	r7, [pc, #744]	; (8002a08 <_vfprintf_r+0x650>)
 8002720:	3010      	adds	r0, #16
 8002722:	2a07      	cmp	r2, #7
 8002724:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002728:	e9c1 7300 	strd	r7, r3, [r1]
 800272c:	ddf1      	ble.n	8002712 <_vfprintf_r+0x35a>
 800272e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002730:	4631      	mov	r1, r6
 8002732:	4620      	mov	r0, r4
 8002734:	930c      	str	r3, [sp, #48]	; 0x30
 8002736:	f004 f96d 	bl	8006a14 <__sprint_r>
 800273a:	2800      	cmp	r0, #0
 800273c:	f040 843d 	bne.w	8002fba <_vfprintf_r+0xc02>
 8002740:	3d10      	subs	r5, #16
 8002742:	2d10      	cmp	r5, #16
 8002744:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002748:	a92d      	add	r1, sp, #180	; 0xb4
 800274a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800274c:	dce6      	bgt.n	800271c <_vfprintf_r+0x364>
 800274e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002750:	465f      	mov	r7, fp
 8002752:	4604      	mov	r4, r0
 8002754:	468b      	mov	fp, r1
 8002756:	3201      	adds	r2, #1
 8002758:	4bab      	ldr	r3, [pc, #684]	; (8002a08 <_vfprintf_r+0x650>)
 800275a:	442c      	add	r4, r5
 800275c:	2a07      	cmp	r2, #7
 800275e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002762:	e9cb 3500 	strd	r3, r5, [fp]
 8002766:	f300 84ff 	bgt.w	8003168 <_vfprintf_r+0xdb0>
 800276a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800276e:	f10b 0b08 	add.w	fp, fp, #8
 8002772:	b172      	cbz	r2, 8002792 <_vfprintf_r+0x3da>
 8002774:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002776:	3201      	adds	r2, #1
 8002778:	3401      	adds	r4, #1
 800277a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 800277e:	2101      	movs	r1, #1
 8002780:	2a07      	cmp	r2, #7
 8002782:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002786:	e9cb 0100 	strd	r0, r1, [fp]
 800278a:	f300 8418 	bgt.w	8002fbe <_vfprintf_r+0xc06>
 800278e:	f10b 0b08 	add.w	fp, fp, #8
 8002792:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002794:	b16b      	cbz	r3, 80027b2 <_vfprintf_r+0x3fa>
 8002796:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002798:	3301      	adds	r3, #1
 800279a:	3402      	adds	r4, #2
 800279c:	a923      	add	r1, sp, #140	; 0x8c
 800279e:	2202      	movs	r2, #2
 80027a0:	2b07      	cmp	r3, #7
 80027a2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80027a6:	e9cb 1200 	strd	r1, r2, [fp]
 80027aa:	f300 8415 	bgt.w	8002fd8 <_vfprintf_r+0xc20>
 80027ae:	f10b 0b08 	add.w	fp, fp, #8
 80027b2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80027b4:	2b80      	cmp	r3, #128	; 0x80
 80027b6:	f000 8331 	beq.w	8002e1c <_vfprintf_r+0xa64>
 80027ba:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80027bc:	eba9 0503 	sub.w	r5, r9, r3
 80027c0:	2d00      	cmp	r5, #0
 80027c2:	dd37      	ble.n	8002834 <_vfprintf_r+0x47c>
 80027c4:	2d10      	cmp	r5, #16
 80027c6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80027c8:	4b90      	ldr	r3, [pc, #576]	; (8002a0c <_vfprintf_r+0x654>)
 80027ca:	dd28      	ble.n	800281e <_vfprintf_r+0x466>
 80027cc:	4659      	mov	r1, fp
 80027ce:	4620      	mov	r0, r4
 80027d0:	46bb      	mov	fp, r7
 80027d2:	f04f 0910 	mov.w	r9, #16
 80027d6:	4637      	mov	r7, r6
 80027d8:	461c      	mov	r4, r3
 80027da:	9e07      	ldr	r6, [sp, #28]
 80027dc:	e004      	b.n	80027e8 <_vfprintf_r+0x430>
 80027de:	3d10      	subs	r5, #16
 80027e0:	2d10      	cmp	r5, #16
 80027e2:	f101 0108 	add.w	r1, r1, #8
 80027e6:	dd15      	ble.n	8002814 <_vfprintf_r+0x45c>
 80027e8:	3201      	adds	r2, #1
 80027ea:	3010      	adds	r0, #16
 80027ec:	2a07      	cmp	r2, #7
 80027ee:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80027f2:	e9c1 4900 	strd	r4, r9, [r1]
 80027f6:	ddf2      	ble.n	80027de <_vfprintf_r+0x426>
 80027f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80027fa:	4631      	mov	r1, r6
 80027fc:	9803      	ldr	r0, [sp, #12]
 80027fe:	f004 f909 	bl	8006a14 <__sprint_r>
 8002802:	2800      	cmp	r0, #0
 8002804:	f040 83d9 	bne.w	8002fba <_vfprintf_r+0xc02>
 8002808:	3d10      	subs	r5, #16
 800280a:	2d10      	cmp	r5, #16
 800280c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002810:	a92d      	add	r1, sp, #180	; 0xb4
 8002812:	dce9      	bgt.n	80027e8 <_vfprintf_r+0x430>
 8002814:	463e      	mov	r6, r7
 8002816:	4623      	mov	r3, r4
 8002818:	465f      	mov	r7, fp
 800281a:	4604      	mov	r4, r0
 800281c:	468b      	mov	fp, r1
 800281e:	3201      	adds	r2, #1
 8002820:	442c      	add	r4, r5
 8002822:	2a07      	cmp	r2, #7
 8002824:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002828:	e9cb 3500 	strd	r3, r5, [fp]
 800282c:	f300 83ef 	bgt.w	800300e <_vfprintf_r+0xc56>
 8002830:	f10b 0b08 	add.w	fp, fp, #8
 8002834:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002838:	f040 8280 	bne.w	8002d3c <_vfprintf_r+0x984>
 800283c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800283e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002840:	f8cb 7000 	str.w	r7, [fp]
 8002844:	3301      	adds	r3, #1
 8002846:	4414      	add	r4, r2
 8002848:	2b07      	cmp	r3, #7
 800284a:	942c      	str	r4, [sp, #176]	; 0xb0
 800284c:	f8cb 2004 	str.w	r2, [fp, #4]
 8002850:	932b      	str	r3, [sp, #172]	; 0xac
 8002852:	f300 8392 	bgt.w	8002f7a <_vfprintf_r+0xbc2>
 8002856:	f10b 0b08 	add.w	fp, fp, #8
 800285a:	f018 0f04 	tst.w	r8, #4
 800285e:	d03b      	beq.n	80028d8 <_vfprintf_r+0x520>
 8002860:	9b06      	ldr	r3, [sp, #24]
 8002862:	9a04      	ldr	r2, [sp, #16]
 8002864:	1a9d      	subs	r5, r3, r2
 8002866:	2d00      	cmp	r5, #0
 8002868:	dd36      	ble.n	80028d8 <_vfprintf_r+0x520>
 800286a:	2d10      	cmp	r5, #16
 800286c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800286e:	dd21      	ble.n	80028b4 <_vfprintf_r+0x4fc>
 8002870:	2610      	movs	r6, #16
 8002872:	9f03      	ldr	r7, [sp, #12]
 8002874:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002878:	e004      	b.n	8002884 <_vfprintf_r+0x4cc>
 800287a:	3d10      	subs	r5, #16
 800287c:	2d10      	cmp	r5, #16
 800287e:	f10b 0b08 	add.w	fp, fp, #8
 8002882:	dd17      	ble.n	80028b4 <_vfprintf_r+0x4fc>
 8002884:	3301      	adds	r3, #1
 8002886:	4a60      	ldr	r2, [pc, #384]	; (8002a08 <_vfprintf_r+0x650>)
 8002888:	3410      	adds	r4, #16
 800288a:	2b07      	cmp	r3, #7
 800288c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002890:	e9cb 2600 	strd	r2, r6, [fp]
 8002894:	ddf1      	ble.n	800287a <_vfprintf_r+0x4c2>
 8002896:	aa2a      	add	r2, sp, #168	; 0xa8
 8002898:	4641      	mov	r1, r8
 800289a:	4638      	mov	r0, r7
 800289c:	f004 f8ba 	bl	8006a14 <__sprint_r>
 80028a0:	2800      	cmp	r0, #0
 80028a2:	f040 856c 	bne.w	800337e <_vfprintf_r+0xfc6>
 80028a6:	3d10      	subs	r5, #16
 80028a8:	2d10      	cmp	r5, #16
 80028aa:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80028ae:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80028b2:	dce7      	bgt.n	8002884 <_vfprintf_r+0x4cc>
 80028b4:	3301      	adds	r3, #1
 80028b6:	4a54      	ldr	r2, [pc, #336]	; (8002a08 <_vfprintf_r+0x650>)
 80028b8:	442c      	add	r4, r5
 80028ba:	2b07      	cmp	r3, #7
 80028bc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80028c0:	e9cb 2500 	strd	r2, r5, [fp]
 80028c4:	dd08      	ble.n	80028d8 <_vfprintf_r+0x520>
 80028c6:	aa2a      	add	r2, sp, #168	; 0xa8
 80028c8:	9907      	ldr	r1, [sp, #28]
 80028ca:	9803      	ldr	r0, [sp, #12]
 80028cc:	f004 f8a2 	bl	8006a14 <__sprint_r>
 80028d0:	2800      	cmp	r0, #0
 80028d2:	f040 82e9 	bne.w	8002ea8 <_vfprintf_r+0xaf0>
 80028d6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80028d8:	9904      	ldr	r1, [sp, #16]
 80028da:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 80028de:	428a      	cmp	r2, r1
 80028e0:	bfac      	ite	ge
 80028e2:	189b      	addge	r3, r3, r2
 80028e4:	185b      	addlt	r3, r3, r1
 80028e6:	9305      	str	r3, [sp, #20]
 80028e8:	2c00      	cmp	r4, #0
 80028ea:	f040 82d5 	bne.w	8002e98 <_vfprintf_r+0xae0>
 80028ee:	2300      	movs	r3, #0
 80028f0:	932b      	str	r3, [sp, #172]	; 0xac
 80028f2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80028f4:	b11b      	cbz	r3, 80028fe <_vfprintf_r+0x546>
 80028f6:	990a      	ldr	r1, [sp, #40]	; 0x28
 80028f8:	9803      	ldr	r0, [sp, #12]
 80028fa:	f002 fc9d 	bl	8005238 <_free_r>
 80028fe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002902:	4657      	mov	r7, sl
 8002904:	783b      	ldrb	r3, [r7, #0]
 8002906:	2b00      	cmp	r3, #0
 8002908:	f47f ada7 	bne.w	800245a <_vfprintf_r+0xa2>
 800290c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 800290e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002912:	2b00      	cmp	r3, #0
 8002914:	f041 80e7 	bne.w	8003ae6 <_vfprintf_r+0x172e>
 8002918:	2300      	movs	r3, #0
 800291a:	932b      	str	r3, [sp, #172]	; 0xac
 800291c:	e2cb      	b.n	8002eb6 <_vfprintf_r+0xafe>
 800291e:	4643      	mov	r3, r8
 8002920:	069a      	lsls	r2, r3, #26
 8002922:	f140 814e 	bpl.w	8002bc2 <_vfprintf_r+0x80a>
 8002926:	9c08      	ldr	r4, [sp, #32]
 8002928:	3407      	adds	r4, #7
 800292a:	f024 0207 	bic.w	r2, r4, #7
 800292e:	f102 0108 	add.w	r1, r2, #8
 8002932:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002936:	9108      	str	r1, [sp, #32]
 8002938:	2201      	movs	r2, #1
 800293a:	2100      	movs	r1, #0
 800293c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002940:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002944:	a956      	add	r1, sp, #344	; 0x158
 8002946:	9104      	str	r1, [sp, #16]
 8002948:	f47f aea2 	bne.w	8002690 <_vfprintf_r+0x2d8>
 800294c:	4698      	mov	r8, r3
 800294e:	2a01      	cmp	r2, #1
 8002950:	f000 8350 	beq.w	8002ff4 <_vfprintf_r+0xc3c>
 8002954:	2a02      	cmp	r2, #2
 8002956:	f000 831b 	beq.w	8002f90 <_vfprintf_r+0xbd8>
 800295a:	a956      	add	r1, sp, #344	; 0x158
 800295c:	e000      	b.n	8002960 <_vfprintf_r+0x5a8>
 800295e:	4639      	mov	r1, r7
 8002960:	08e2      	lsrs	r2, r4, #3
 8002962:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002966:	08e8      	lsrs	r0, r5, #3
 8002968:	f004 0307 	and.w	r3, r4, #7
 800296c:	4605      	mov	r5, r0
 800296e:	4614      	mov	r4, r2
 8002970:	3330      	adds	r3, #48	; 0x30
 8002972:	ea54 0205 	orrs.w	r2, r4, r5
 8002976:	f801 3c01 	strb.w	r3, [r1, #-1]
 800297a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 800297e:	d1ee      	bne.n	800295e <_vfprintf_r+0x5a6>
 8002980:	f018 0f01 	tst.w	r8, #1
 8002984:	f000 8314 	beq.w	8002fb0 <_vfprintf_r+0xbf8>
 8002988:	2b30      	cmp	r3, #48	; 0x30
 800298a:	f000 8311 	beq.w	8002fb0 <_vfprintf_r+0xbf8>
 800298e:	9a04      	ldr	r2, [sp, #16]
 8002990:	3902      	subs	r1, #2
 8002992:	2330      	movs	r3, #48	; 0x30
 8002994:	1a52      	subs	r2, r2, r1
 8002996:	f807 3c01 	strb.w	r3, [r7, #-1]
 800299a:	9209      	str	r2, [sp, #36]	; 0x24
 800299c:	460f      	mov	r7, r1
 800299e:	e68c      	b.n	80026ba <_vfprintf_r+0x302>
 80029a0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80029a4:	2200      	movs	r2, #0
 80029a6:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80029aa:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 80029ae:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 80029b2:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80029b6:	2b09      	cmp	r3, #9
 80029b8:	d9f5      	bls.n	80029a6 <_vfprintf_r+0x5ee>
 80029ba:	9206      	str	r2, [sp, #24]
 80029bc:	e57c      	b.n	80024b8 <_vfprintf_r+0x100>
 80029be:	4b14      	ldr	r3, [pc, #80]	; (8002a10 <_vfprintf_r+0x658>)
 80029c0:	9317      	str	r3, [sp, #92]	; 0x5c
 80029c2:	f018 0f20 	tst.w	r8, #32
 80029c6:	f000 8114 	beq.w	8002bf2 <_vfprintf_r+0x83a>
 80029ca:	9c08      	ldr	r4, [sp, #32]
 80029cc:	3407      	adds	r4, #7
 80029ce:	f024 0307 	bic.w	r3, r4, #7
 80029d2:	e9d3 4500 	ldrd	r4, r5, [r3]
 80029d6:	f103 0208 	add.w	r2, r3, #8
 80029da:	9208      	str	r2, [sp, #32]
 80029dc:	f018 0f01 	tst.w	r8, #1
 80029e0:	d009      	beq.n	80029f6 <_vfprintf_r+0x63e>
 80029e2:	ea54 0305 	orrs.w	r3, r4, r5
 80029e6:	d006      	beq.n	80029f6 <_vfprintf_r+0x63e>
 80029e8:	2330      	movs	r3, #48	; 0x30
 80029ea:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 80029ee:	f048 0802 	orr.w	r8, r8, #2
 80029f2:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80029f6:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80029fa:	2202      	movs	r2, #2
 80029fc:	e79d      	b.n	800293a <_vfprintf_r+0x582>
 80029fe:	f048 0801 	orr.w	r8, r8, #1
 8002a02:	f89a 6000 	ldrb.w	r6, [sl]
 8002a06:	e555      	b.n	80024b4 <_vfprintf_r+0xfc>
 8002a08:	0800713c 	.word	0x0800713c
 8002a0c:	0800714c 	.word	0x0800714c
 8002a10:	08007108 	.word	0x08007108
 8002a14:	9e03      	ldr	r6, [sp, #12]
 8002a16:	4630      	mov	r0, r6
 8002a18:	f002 feaa 	bl	8005770 <_localeconv_r>
 8002a1c:	6843      	ldr	r3, [r0, #4]
 8002a1e:	9318      	str	r3, [sp, #96]	; 0x60
 8002a20:	4618      	mov	r0, r3
 8002a22:	f7fd fe0d 	bl	8000640 <strlen>
 8002a26:	901b      	str	r0, [sp, #108]	; 0x6c
 8002a28:	4604      	mov	r4, r0
 8002a2a:	4630      	mov	r0, r6
 8002a2c:	f002 fea0 	bl	8005770 <_localeconv_r>
 8002a30:	6883      	ldr	r3, [r0, #8]
 8002a32:	931a      	str	r3, [sp, #104]	; 0x68
 8002a34:	2c00      	cmp	r4, #0
 8002a36:	f43f adb8 	beq.w	80025aa <_vfprintf_r+0x1f2>
 8002a3a:	f89a 6000 	ldrb.w	r6, [sl]
 8002a3e:	2b00      	cmp	r3, #0
 8002a40:	f43f ad38 	beq.w	80024b4 <_vfprintf_r+0xfc>
 8002a44:	781b      	ldrb	r3, [r3, #0]
 8002a46:	2b00      	cmp	r3, #0
 8002a48:	f43f ad34 	beq.w	80024b4 <_vfprintf_r+0xfc>
 8002a4c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002a50:	e530      	b.n	80024b4 <_vfprintf_r+0xfc>
 8002a52:	9b08      	ldr	r3, [sp, #32]
 8002a54:	f89a 6000 	ldrb.w	r6, [sl]
 8002a58:	681a      	ldr	r2, [r3, #0]
 8002a5a:	9206      	str	r2, [sp, #24]
 8002a5c:	2a00      	cmp	r2, #0
 8002a5e:	f103 0304 	add.w	r3, r3, #4
 8002a62:	f2c0 8697 	blt.w	8003794 <_vfprintf_r+0x13dc>
 8002a66:	9308      	str	r3, [sp, #32]
 8002a68:	e524      	b.n	80024b4 <_vfprintf_r+0xfc>
 8002a6a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002a6e:	f89a 6000 	ldrb.w	r6, [sl]
 8002a72:	e51f      	b.n	80024b4 <_vfprintf_r+0xfc>
 8002a74:	f89a 6000 	ldrb.w	r6, [sl]
 8002a78:	f048 0804 	orr.w	r8, r8, #4
 8002a7c:	e51a      	b.n	80024b4 <_vfprintf_r+0xfc>
 8002a7e:	f89a 6000 	ldrb.w	r6, [sl]
 8002a82:	2e2a      	cmp	r6, #42	; 0x2a
 8002a84:	f10a 0201 	add.w	r2, sl, #1
 8002a88:	f001 81b0 	beq.w	8003dec <_vfprintf_r+0x1a34>
 8002a8c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a90:	2b09      	cmp	r3, #9
 8002a92:	4692      	mov	sl, r2
 8002a94:	f04f 0900 	mov.w	r9, #0
 8002a98:	f63f ad0e 	bhi.w	80024b8 <_vfprintf_r+0x100>
 8002a9c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002aa0:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002aa4:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002aa8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002aac:	2b09      	cmp	r3, #9
 8002aae:	d9f5      	bls.n	8002a9c <_vfprintf_r+0x6e4>
 8002ab0:	e502      	b.n	80024b8 <_vfprintf_r+0x100>
 8002ab2:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002ab6:	f89a 6000 	ldrb.w	r6, [sl]
 8002aba:	e4fb      	b.n	80024b4 <_vfprintf_r+0xfc>
 8002abc:	9c08      	ldr	r4, [sp, #32]
 8002abe:	3407      	adds	r4, #7
 8002ac0:	f024 0407 	bic.w	r4, r4, #7
 8002ac4:	ed94 7b00 	vldr	d7, [r4]
 8002ac8:	ec52 1b17 	vmov	r1, r2, d7
 8002acc:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002ad0:	931d      	str	r3, [sp, #116]	; 0x74
 8002ad2:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002ad6:	3408      	adds	r4, #8
 8002ad8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002adc:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002ae0:	4bba      	ldr	r3, [pc, #744]	; (8002dcc <_vfprintf_r+0xa14>)
 8002ae2:	9408      	str	r4, [sp, #32]
 8002ae4:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002ae8:	f7fe fac0 	bl	800106c <__aeabi_dcmpun>
 8002aec:	2800      	cmp	r0, #0
 8002aee:	f040 846f 	bne.w	80033d0 <_vfprintf_r+0x1018>
 8002af2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002af6:	4bb5      	ldr	r3, [pc, #724]	; (8002dcc <_vfprintf_r+0xa14>)
 8002af8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002afc:	f7fe fa98 	bl	8001030 <__aeabi_dcmple>
 8002b00:	2800      	cmp	r0, #0
 8002b02:	f040 8465 	bne.w	80033d0 <_vfprintf_r+0x1018>
 8002b06:	2200      	movs	r2, #0
 8002b08:	2300      	movs	r3, #0
 8002b0a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002b0e:	f7fe fa85 	bl	800101c <__aeabi_dcmplt>
 8002b12:	2800      	cmp	r0, #0
 8002b14:	f040 855b 	bne.w	80035ce <_vfprintf_r+0x1216>
 8002b18:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002b1c:	4fac      	ldr	r7, [pc, #688]	; (8002dd0 <_vfprintf_r+0xa18>)
 8002b1e:	4bad      	ldr	r3, [pc, #692]	; (8002dd4 <_vfprintf_r+0xa1c>)
 8002b20:	2000      	movs	r0, #0
 8002b22:	2103      	movs	r1, #3
 8002b24:	9104      	str	r1, [sp, #16]
 8002b26:	900a      	str	r0, [sp, #40]	; 0x28
 8002b28:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002b2c:	2e47      	cmp	r6, #71	; 0x47
 8002b2e:	bfd8      	it	le
 8002b30:	461f      	movle	r7, r3
 8002b32:	9109      	str	r1, [sp, #36]	; 0x24
 8002b34:	4681      	mov	r9, r0
 8002b36:	900f      	str	r0, [sp, #60]	; 0x3c
 8002b38:	9014      	str	r0, [sp, #80]	; 0x50
 8002b3a:	9011      	str	r0, [sp, #68]	; 0x44
 8002b3c:	e5c9      	b.n	80026d2 <_vfprintf_r+0x31a>
 8002b3e:	9808      	ldr	r0, [sp, #32]
 8002b40:	2300      	movs	r3, #0
 8002b42:	6801      	ldr	r1, [r0, #0]
 8002b44:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002b48:	461a      	mov	r2, r3
 8002b4a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002b4e:	2301      	movs	r3, #1
 8002b50:	1d01      	adds	r1, r0, #4
 8002b52:	9304      	str	r3, [sp, #16]
 8002b54:	920a      	str	r2, [sp, #40]	; 0x28
 8002b56:	4691      	mov	r9, r2
 8002b58:	920f      	str	r2, [sp, #60]	; 0x3c
 8002b5a:	9214      	str	r2, [sp, #80]	; 0x50
 8002b5c:	9211      	str	r2, [sp, #68]	; 0x44
 8002b5e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002b62:	af3d      	add	r7, sp, #244	; 0xf4
 8002b64:	e5b9      	b.n	80026da <_vfprintf_r+0x322>
 8002b66:	9b08      	ldr	r3, [sp, #32]
 8002b68:	681f      	ldr	r7, [r3, #0]
 8002b6a:	2500      	movs	r5, #0
 8002b6c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002b70:	1d1c      	adds	r4, r3, #4
 8002b72:	2f00      	cmp	r7, #0
 8002b74:	f000 8639 	beq.w	80037ea <_vfprintf_r+0x1432>
 8002b78:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002b7c:	f000 8711 	beq.w	80039a2 <_vfprintf_r+0x15ea>
 8002b80:	464a      	mov	r2, r9
 8002b82:	4629      	mov	r1, r5
 8002b84:	4638      	mov	r0, r7
 8002b86:	f7fd fdcb 	bl	8000720 <memchr>
 8002b8a:	900a      	str	r0, [sp, #40]	; 0x28
 8002b8c:	2800      	cmp	r0, #0
 8002b8e:	f000 85e7 	beq.w	8003760 <_vfprintf_r+0x13a8>
 8002b92:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002b94:	1bdb      	subs	r3, r3, r7
 8002b96:	9309      	str	r3, [sp, #36]	; 0x24
 8002b98:	46a9      	mov	r9, r5
 8002b9a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002b9e:	9408      	str	r4, [sp, #32]
 8002ba0:	9304      	str	r3, [sp, #16]
 8002ba2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002ba6:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002baa:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002bae:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002bb2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002bb6:	e58c      	b.n	80026d2 <_vfprintf_r+0x31a>
 8002bb8:	f048 0310 	orr.w	r3, r8, #16
 8002bbc:	069a      	lsls	r2, r3, #26
 8002bbe:	f53f aeb2 	bmi.w	8002926 <_vfprintf_r+0x56e>
 8002bc2:	9a08      	ldr	r2, [sp, #32]
 8002bc4:	06df      	lsls	r7, r3, #27
 8002bc6:	f102 0104 	add.w	r1, r2, #4
 8002bca:	f100 837e 	bmi.w	80032ca <_vfprintf_r+0xf12>
 8002bce:	065d      	lsls	r5, r3, #25
 8002bd0:	9a08      	ldr	r2, [sp, #32]
 8002bd2:	f100 84e4 	bmi.w	800359e <_vfprintf_r+0x11e6>
 8002bd6:	059c      	lsls	r4, r3, #22
 8002bd8:	f140 8377 	bpl.w	80032ca <_vfprintf_r+0xf12>
 8002bdc:	7814      	ldrb	r4, [r2, #0]
 8002bde:	9108      	str	r1, [sp, #32]
 8002be0:	2500      	movs	r5, #0
 8002be2:	2201      	movs	r2, #1
 8002be4:	e6a9      	b.n	800293a <_vfprintf_r+0x582>
 8002be6:	4b7c      	ldr	r3, [pc, #496]	; (8002dd8 <_vfprintf_r+0xa20>)
 8002be8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002bea:	f018 0f20 	tst.w	r8, #32
 8002bee:	f47f aeec 	bne.w	80029ca <_vfprintf_r+0x612>
 8002bf2:	9a08      	ldr	r2, [sp, #32]
 8002bf4:	f018 0f10 	tst.w	r8, #16
 8002bf8:	f102 0304 	add.w	r3, r2, #4
 8002bfc:	f040 8354 	bne.w	80032a8 <_vfprintf_r+0xef0>
 8002c00:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002c04:	9a08      	ldr	r2, [sp, #32]
 8002c06:	f040 84d0 	bne.w	80035aa <_vfprintf_r+0x11f2>
 8002c0a:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002c0e:	f000 834b 	beq.w	80032a8 <_vfprintf_r+0xef0>
 8002c12:	7814      	ldrb	r4, [r2, #0]
 8002c14:	9308      	str	r3, [sp, #32]
 8002c16:	2500      	movs	r5, #0
 8002c18:	e6e0      	b.n	80029dc <_vfprintf_r+0x624>
 8002c1a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002c1e:	f89a 6000 	ldrb.w	r6, [sl]
 8002c22:	2b00      	cmp	r3, #0
 8002c24:	f47f ac46 	bne.w	80024b4 <_vfprintf_r+0xfc>
 8002c28:	2320      	movs	r3, #32
 8002c2a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002c2e:	e441      	b.n	80024b4 <_vfprintf_r+0xfc>
 8002c30:	f89a 6000 	ldrb.w	r6, [sl]
 8002c34:	2e6c      	cmp	r6, #108	; 0x6c
 8002c36:	bf03      	ittte	eq
 8002c38:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002c3c:	f048 0820 	orreq.w	r8, r8, #32
 8002c40:	f10a 0a01 	addeq.w	sl, sl, #1
 8002c44:	f048 0810 	orrne.w	r8, r8, #16
 8002c48:	e434      	b.n	80024b4 <_vfprintf_r+0xfc>
 8002c4a:	9a08      	ldr	r2, [sp, #32]
 8002c4c:	f018 0f20 	tst.w	r8, #32
 8002c50:	f852 3b04 	ldr.w	r3, [r2], #4
 8002c54:	9208      	str	r2, [sp, #32]
 8002c56:	f000 83a1 	beq.w	800339c <_vfprintf_r+0xfe4>
 8002c5a:	9a05      	ldr	r2, [sp, #20]
 8002c5c:	4610      	mov	r0, r2
 8002c5e:	17d1      	asrs	r1, r2, #31
 8002c60:	e9c3 0100 	strd	r0, r1, [r3]
 8002c64:	4657      	mov	r7, sl
 8002c66:	e64d      	b.n	8002904 <_vfprintf_r+0x54c>
 8002c68:	f89a 6000 	ldrb.w	r6, [sl]
 8002c6c:	2e68      	cmp	r6, #104	; 0x68
 8002c6e:	bf03      	ittte	eq
 8002c70:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002c74:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002c78:	f10a 0a01 	addeq.w	sl, sl, #1
 8002c7c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002c80:	e418      	b.n	80024b4 <_vfprintf_r+0xfc>
 8002c82:	9908      	ldr	r1, [sp, #32]
 8002c84:	4b55      	ldr	r3, [pc, #340]	; (8002ddc <_vfprintf_r+0xa24>)
 8002c86:	680c      	ldr	r4, [r1, #0]
 8002c88:	9317      	str	r3, [sp, #92]	; 0x5c
 8002c8a:	f647 0230 	movw	r2, #30768	; 0x7830
 8002c8e:	3104      	adds	r1, #4
 8002c90:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002c94:	f048 0302 	orr.w	r3, r8, #2
 8002c98:	9108      	str	r1, [sp, #32]
 8002c9a:	2500      	movs	r5, #0
 8002c9c:	2202      	movs	r2, #2
 8002c9e:	2678      	movs	r6, #120	; 0x78
 8002ca0:	e64b      	b.n	800293a <_vfprintf_r+0x582>
 8002ca2:	f048 0808 	orr.w	r8, r8, #8
 8002ca6:	f89a 6000 	ldrb.w	r6, [sl]
 8002caa:	e403      	b.n	80024b4 <_vfprintf_r+0xfc>
 8002cac:	f048 0310 	orr.w	r3, r8, #16
 8002cb0:	069f      	lsls	r7, r3, #26
 8002cb2:	f53f acd1 	bmi.w	8002658 <_vfprintf_r+0x2a0>
 8002cb6:	9908      	ldr	r1, [sp, #32]
 8002cb8:	06dd      	lsls	r5, r3, #27
 8002cba:	f101 0204 	add.w	r2, r1, #4
 8002cbe:	f100 82fd 	bmi.w	80032bc <_vfprintf_r+0xf04>
 8002cc2:	065c      	lsls	r4, r3, #25
 8002cc4:	9908      	ldr	r1, [sp, #32]
 8002cc6:	f100 8475 	bmi.w	80035b4 <_vfprintf_r+0x11fc>
 8002cca:	0598      	lsls	r0, r3, #22
 8002ccc:	f140 82f6 	bpl.w	80032bc <_vfprintf_r+0xf04>
 8002cd0:	f991 4000 	ldrsb.w	r4, [r1]
 8002cd4:	9208      	str	r2, [sp, #32]
 8002cd6:	17e5      	asrs	r5, r4, #31
 8002cd8:	4620      	mov	r0, r4
 8002cda:	4629      	mov	r1, r5
 8002cdc:	e4c7      	b.n	800266e <_vfprintf_r+0x2b6>
 8002cde:	9a08      	ldr	r2, [sp, #32]
 8002ce0:	f018 0f10 	tst.w	r8, #16
 8002ce4:	f102 0304 	add.w	r3, r2, #4
 8002ce8:	f040 82e3 	bne.w	80032b2 <_vfprintf_r+0xefa>
 8002cec:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002cf0:	9a08      	ldr	r2, [sp, #32]
 8002cf2:	f040 8467 	bne.w	80035c4 <_vfprintf_r+0x120c>
 8002cf6:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002cfa:	f000 82da 	beq.w	80032b2 <_vfprintf_r+0xefa>
 8002cfe:	7814      	ldrb	r4, [r2, #0]
 8002d00:	9308      	str	r3, [sp, #32]
 8002d02:	2500      	movs	r5, #0
 8002d04:	e488      	b.n	8002618 <_vfprintf_r+0x260>
 8002d06:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002d0a:	f002 fd45 	bl	8005798 <__retarget_lock_release_recursive>
 8002d0e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002d12:	9305      	str	r3, [sp, #20]
 8002d14:	e443      	b.n	800259e <_vfprintf_r+0x1e6>
 8002d16:	2e00      	cmp	r6, #0
 8002d18:	f43f adf8 	beq.w	800290c <_vfprintf_r+0x554>
 8002d1c:	2300      	movs	r3, #0
 8002d1e:	2101      	movs	r1, #1
 8002d20:	461a      	mov	r2, r3
 8002d22:	9104      	str	r1, [sp, #16]
 8002d24:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002d28:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002d2c:	930a      	str	r3, [sp, #40]	; 0x28
 8002d2e:	4699      	mov	r9, r3
 8002d30:	930f      	str	r3, [sp, #60]	; 0x3c
 8002d32:	9314      	str	r3, [sp, #80]	; 0x50
 8002d34:	9311      	str	r3, [sp, #68]	; 0x44
 8002d36:	9109      	str	r1, [sp, #36]	; 0x24
 8002d38:	af3d      	add	r7, sp, #244	; 0xf4
 8002d3a:	e4ce      	b.n	80026da <_vfprintf_r+0x322>
 8002d3c:	2e65      	cmp	r6, #101	; 0x65
 8002d3e:	f340 80ca 	ble.w	8002ed6 <_vfprintf_r+0xb1e>
 8002d42:	2200      	movs	r2, #0
 8002d44:	2300      	movs	r3, #0
 8002d46:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002d4a:	f7fe f95d 	bl	8001008 <__aeabi_dcmpeq>
 8002d4e:	2800      	cmp	r0, #0
 8002d50:	f000 8169 	beq.w	8003026 <_vfprintf_r+0xc6e>
 8002d54:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002d56:	4a22      	ldr	r2, [pc, #136]	; (8002de0 <_vfprintf_r+0xa28>)
 8002d58:	f8cb 2000 	str.w	r2, [fp]
 8002d5c:	3301      	adds	r3, #1
 8002d5e:	3401      	adds	r4, #1
 8002d60:	2201      	movs	r2, #1
 8002d62:	2b07      	cmp	r3, #7
 8002d64:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002d68:	f8cb 2004 	str.w	r2, [fp, #4]
 8002d6c:	f300 8406 	bgt.w	800357c <_vfprintf_r+0x11c4>
 8002d70:	f10b 0b08 	add.w	fp, fp, #8
 8002d74:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002d76:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002d78:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002d7a:	4293      	cmp	r3, r2
 8002d7c:	db03      	blt.n	8002d86 <_vfprintf_r+0x9ce>
 8002d7e:	f018 0f01 	tst.w	r8, #1
 8002d82:	f43f ad6a 	beq.w	800285a <_vfprintf_r+0x4a2>
 8002d86:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002d88:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002d8a:	f8cb 2000 	str.w	r2, [fp]
 8002d8e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002d90:	f8cb 2004 	str.w	r2, [fp, #4]
 8002d94:	3301      	adds	r3, #1
 8002d96:	4414      	add	r4, r2
 8002d98:	2b07      	cmp	r3, #7
 8002d9a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002d9e:	f300 8517 	bgt.w	80037d0 <_vfprintf_r+0x1418>
 8002da2:	f10b 0b08 	add.w	fp, fp, #8
 8002da6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002da8:	1e5d      	subs	r5, r3, #1
 8002daa:	2d00      	cmp	r5, #0
 8002dac:	f77f ad55 	ble.w	800285a <_vfprintf_r+0x4a2>
 8002db0:	2d10      	cmp	r5, #16
 8002db2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002db4:	4b0b      	ldr	r3, [pc, #44]	; (8002de4 <_vfprintf_r+0xa2c>)
 8002db6:	f340 82e7 	ble.w	8003388 <_vfprintf_r+0xfd0>
 8002dba:	4619      	mov	r1, r3
 8002dbc:	2610      	movs	r6, #16
 8002dbe:	4623      	mov	r3, r4
 8002dc0:	9f03      	ldr	r7, [sp, #12]
 8002dc2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002dc6:	460c      	mov	r4, r1
 8002dc8:	e014      	b.n	8002df4 <_vfprintf_r+0xa3c>
 8002dca:	bf00      	nop
 8002dcc:	7fefffff 	.word	0x7fefffff
 8002dd0:	080070fc 	.word	0x080070fc
 8002dd4:	080070f8 	.word	0x080070f8
 8002dd8:	0800711c 	.word	0x0800711c
 8002ddc:	08007108 	.word	0x08007108
 8002de0:	08007138 	.word	0x08007138
 8002de4:	0800714c 	.word	0x0800714c
 8002de8:	f10b 0b08 	add.w	fp, fp, #8
 8002dec:	3d10      	subs	r5, #16
 8002dee:	2d10      	cmp	r5, #16
 8002df0:	f340 82c7 	ble.w	8003382 <_vfprintf_r+0xfca>
 8002df4:	3201      	adds	r2, #1
 8002df6:	3310      	adds	r3, #16
 8002df8:	2a07      	cmp	r2, #7
 8002dfa:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002dfe:	e9cb 4600 	strd	r4, r6, [fp]
 8002e02:	ddf1      	ble.n	8002de8 <_vfprintf_r+0xa30>
 8002e04:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e06:	4649      	mov	r1, r9
 8002e08:	4638      	mov	r0, r7
 8002e0a:	f003 fe03 	bl	8006a14 <__sprint_r>
 8002e0e:	2800      	cmp	r0, #0
 8002e10:	d14c      	bne.n	8002eac <_vfprintf_r+0xaf4>
 8002e12:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002e16:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002e1a:	e7e7      	b.n	8002dec <_vfprintf_r+0xa34>
 8002e1c:	9b06      	ldr	r3, [sp, #24]
 8002e1e:	9a04      	ldr	r2, [sp, #16]
 8002e20:	1a9d      	subs	r5, r3, r2
 8002e22:	2d00      	cmp	r5, #0
 8002e24:	f77f acc9 	ble.w	80027ba <_vfprintf_r+0x402>
 8002e28:	2d10      	cmp	r5, #16
 8002e2a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e2c:	4bbc      	ldr	r3, [pc, #752]	; (8003120 <_vfprintf_r+0xd68>)
 8002e2e:	dd27      	ble.n	8002e80 <_vfprintf_r+0xac8>
 8002e30:	4659      	mov	r1, fp
 8002e32:	4620      	mov	r0, r4
 8002e34:	46bb      	mov	fp, r7
 8002e36:	461c      	mov	r4, r3
 8002e38:	4637      	mov	r7, r6
 8002e3a:	9e07      	ldr	r6, [sp, #28]
 8002e3c:	e004      	b.n	8002e48 <_vfprintf_r+0xa90>
 8002e3e:	3d10      	subs	r5, #16
 8002e40:	2d10      	cmp	r5, #16
 8002e42:	f101 0108 	add.w	r1, r1, #8
 8002e46:	dd16      	ble.n	8002e76 <_vfprintf_r+0xabe>
 8002e48:	3201      	adds	r2, #1
 8002e4a:	3010      	adds	r0, #16
 8002e4c:	2310      	movs	r3, #16
 8002e4e:	2a07      	cmp	r2, #7
 8002e50:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002e54:	600c      	str	r4, [r1, #0]
 8002e56:	604b      	str	r3, [r1, #4]
 8002e58:	ddf1      	ble.n	8002e3e <_vfprintf_r+0xa86>
 8002e5a:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e5c:	4631      	mov	r1, r6
 8002e5e:	9803      	ldr	r0, [sp, #12]
 8002e60:	f003 fdd8 	bl	8006a14 <__sprint_r>
 8002e64:	2800      	cmp	r0, #0
 8002e66:	f040 80a8 	bne.w	8002fba <_vfprintf_r+0xc02>
 8002e6a:	3d10      	subs	r5, #16
 8002e6c:	2d10      	cmp	r5, #16
 8002e6e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002e72:	a92d      	add	r1, sp, #180	; 0xb4
 8002e74:	dce8      	bgt.n	8002e48 <_vfprintf_r+0xa90>
 8002e76:	463e      	mov	r6, r7
 8002e78:	4623      	mov	r3, r4
 8002e7a:	465f      	mov	r7, fp
 8002e7c:	4604      	mov	r4, r0
 8002e7e:	468b      	mov	fp, r1
 8002e80:	3201      	adds	r2, #1
 8002e82:	442c      	add	r4, r5
 8002e84:	2a07      	cmp	r2, #7
 8002e86:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002e8a:	e9cb 3500 	strd	r3, r5, [fp]
 8002e8e:	f300 8292 	bgt.w	80033b6 <_vfprintf_r+0xffe>
 8002e92:	f10b 0b08 	add.w	fp, fp, #8
 8002e96:	e490      	b.n	80027ba <_vfprintf_r+0x402>
 8002e98:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e9a:	9907      	ldr	r1, [sp, #28]
 8002e9c:	9803      	ldr	r0, [sp, #12]
 8002e9e:	f003 fdb9 	bl	8006a14 <__sprint_r>
 8002ea2:	2800      	cmp	r0, #0
 8002ea4:	f43f ad23 	beq.w	80028ee <_vfprintf_r+0x536>
 8002ea8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002eac:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002eae:	b111      	cbz	r1, 8002eb6 <_vfprintf_r+0xafe>
 8002eb0:	9803      	ldr	r0, [sp, #12]
 8002eb2:	f002 f9c1 	bl	8005238 <_free_r>
 8002eb6:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002eba:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002ebe:	07d0      	lsls	r0, r2, #31
 8002ec0:	d402      	bmi.n	8002ec8 <_vfprintf_r+0xb10>
 8002ec2:	0599      	lsls	r1, r3, #22
 8002ec4:	f140 81d0 	bpl.w	8003268 <_vfprintf_r+0xeb0>
 8002ec8:	065a      	lsls	r2, r3, #25
 8002eca:	f53f ab65 	bmi.w	8002598 <_vfprintf_r+0x1e0>
 8002ece:	9805      	ldr	r0, [sp, #20]
 8002ed0:	b057      	add	sp, #348	; 0x15c
 8002ed2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002ed6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002ed8:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002eda:	2a01      	cmp	r2, #1
 8002edc:	f104 0401 	add.w	r4, r4, #1
 8002ee0:	f103 0501 	add.w	r5, r3, #1
 8002ee4:	f10b 0608 	add.w	r6, fp, #8
 8002ee8:	f340 811c 	ble.w	8003124 <_vfprintf_r+0xd6c>
 8002eec:	2301      	movs	r3, #1
 8002eee:	2d07      	cmp	r5, #7
 8002ef0:	f8cb 7000 	str.w	r7, [fp]
 8002ef4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002ef8:	f8cb 3004 	str.w	r3, [fp, #4]
 8002efc:	f300 81bb 	bgt.w	8003276 <_vfprintf_r+0xebe>
 8002f00:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002f02:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002f04:	1c69      	adds	r1, r5, #1
 8002f06:	441c      	add	r4, r3
 8002f08:	2907      	cmp	r1, #7
 8002f0a:	910b      	str	r1, [sp, #44]	; 0x2c
 8002f0c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8002f10:	e9c6 2300 	strd	r2, r3, [r6]
 8002f14:	f300 81bb 	bgt.w	800328e <_vfprintf_r+0xed6>
 8002f18:	3608      	adds	r6, #8
 8002f1a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002f1c:	1c53      	adds	r3, r2, #1
 8002f1e:	461d      	mov	r5, r3
 8002f20:	9509      	str	r5, [sp, #36]	; 0x24
 8002f22:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8002f24:	930e      	str	r3, [sp, #56]	; 0x38
 8002f26:	2200      	movs	r2, #0
 8002f28:	2300      	movs	r3, #0
 8002f2a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002f2e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8002f32:	f106 0b08 	add.w	fp, r6, #8
 8002f36:	f7fe f867 	bl	8001008 <__aeabi_dcmpeq>
 8002f3a:	2800      	cmp	r0, #0
 8002f3c:	f040 80c2 	bne.w	80030c4 <_vfprintf_r+0xd0c>
 8002f40:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002f42:	f8c6 9004 	str.w	r9, [r6, #4]
 8002f46:	3701      	adds	r7, #1
 8002f48:	444c      	add	r4, r9
 8002f4a:	2d07      	cmp	r5, #7
 8002f4c:	6037      	str	r7, [r6, #0]
 8002f4e:	942c      	str	r4, [sp, #176]	; 0xb0
 8002f50:	952b      	str	r5, [sp, #172]	; 0xac
 8002f52:	f300 80f9 	bgt.w	8003148 <_vfprintf_r+0xd90>
 8002f56:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002f58:	f106 0310 	add.w	r3, r6, #16
 8002f5c:	3202      	adds	r2, #2
 8002f5e:	465e      	mov	r6, fp
 8002f60:	9209      	str	r2, [sp, #36]	; 0x24
 8002f62:	469b      	mov	fp, r3
 8002f64:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8002f66:	6072      	str	r2, [r6, #4]
 8002f68:	4414      	add	r4, r2
 8002f6a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002f6c:	942c      	str	r4, [sp, #176]	; 0xb0
 8002f6e:	ab26      	add	r3, sp, #152	; 0x98
 8002f70:	2a07      	cmp	r2, #7
 8002f72:	922b      	str	r2, [sp, #172]	; 0xac
 8002f74:	6033      	str	r3, [r6, #0]
 8002f76:	f77f ac70 	ble.w	800285a <_vfprintf_r+0x4a2>
 8002f7a:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f7c:	9907      	ldr	r1, [sp, #28]
 8002f7e:	9803      	ldr	r0, [sp, #12]
 8002f80:	f003 fd48 	bl	8006a14 <__sprint_r>
 8002f84:	2800      	cmp	r0, #0
 8002f86:	d18f      	bne.n	8002ea8 <_vfprintf_r+0xaf0>
 8002f88:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f8a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f8e:	e464      	b.n	800285a <_vfprintf_r+0x4a2>
 8002f90:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8002f92:	af56      	add	r7, sp, #344	; 0x158
 8002f94:	0923      	lsrs	r3, r4, #4
 8002f96:	f004 010f 	and.w	r1, r4, #15
 8002f9a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8002f9e:	092a      	lsrs	r2, r5, #4
 8002fa0:	461c      	mov	r4, r3
 8002fa2:	4615      	mov	r5, r2
 8002fa4:	5c43      	ldrb	r3, [r0, r1]
 8002fa6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002faa:	ea54 0305 	orrs.w	r3, r4, r5
 8002fae:	d1f1      	bne.n	8002f94 <_vfprintf_r+0xbdc>
 8002fb0:	9b04      	ldr	r3, [sp, #16]
 8002fb2:	1bdb      	subs	r3, r3, r7
 8002fb4:	9309      	str	r3, [sp, #36]	; 0x24
 8002fb6:	f7ff bb80 	b.w	80026ba <_vfprintf_r+0x302>
 8002fba:	46b1      	mov	r9, r6
 8002fbc:	e776      	b.n	8002eac <_vfprintf_r+0xaf4>
 8002fbe:	aa2a      	add	r2, sp, #168	; 0xa8
 8002fc0:	9907      	ldr	r1, [sp, #28]
 8002fc2:	9803      	ldr	r0, [sp, #12]
 8002fc4:	f003 fd26 	bl	8006a14 <__sprint_r>
 8002fc8:	2800      	cmp	r0, #0
 8002fca:	f47f af6d 	bne.w	8002ea8 <_vfprintf_r+0xaf0>
 8002fce:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002fd0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002fd4:	f7ff bbdd 	b.w	8002792 <_vfprintf_r+0x3da>
 8002fd8:	aa2a      	add	r2, sp, #168	; 0xa8
 8002fda:	9907      	ldr	r1, [sp, #28]
 8002fdc:	9803      	ldr	r0, [sp, #12]
 8002fde:	f003 fd19 	bl	8006a14 <__sprint_r>
 8002fe2:	2800      	cmp	r0, #0
 8002fe4:	f47f af60 	bne.w	8002ea8 <_vfprintf_r+0xaf0>
 8002fe8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002fea:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002fee:	f7ff bbe0 	b.w	80027b2 <_vfprintf_r+0x3fa>
 8002ff2:	4698      	mov	r8, r3
 8002ff4:	2d00      	cmp	r5, #0
 8002ff6:	bf08      	it	eq
 8002ff8:	2c0a      	cmpeq	r4, #10
 8002ffa:	f080 8170 	bcs.w	80032de <_vfprintf_r+0xf26>
 8002ffe:	af56      	add	r7, sp, #344	; 0x158
 8003000:	3430      	adds	r4, #48	; 0x30
 8003002:	2301      	movs	r3, #1
 8003004:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003008:	9309      	str	r3, [sp, #36]	; 0x24
 800300a:	f7ff bb56 	b.w	80026ba <_vfprintf_r+0x302>
 800300e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003010:	9907      	ldr	r1, [sp, #28]
 8003012:	9803      	ldr	r0, [sp, #12]
 8003014:	f003 fcfe 	bl	8006a14 <__sprint_r>
 8003018:	2800      	cmp	r0, #0
 800301a:	f47f af45 	bne.w	8002ea8 <_vfprintf_r+0xaf0>
 800301e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003020:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003024:	e406      	b.n	8002834 <_vfprintf_r+0x47c>
 8003026:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003028:	2b00      	cmp	r3, #0
 800302a:	f340 8273 	ble.w	8003514 <_vfprintf_r+0x115c>
 800302e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003032:	4293      	cmp	r3, r2
 8003034:	bfa8      	it	ge
 8003036:	4613      	movge	r3, r2
 8003038:	2b00      	cmp	r3, #0
 800303a:	461d      	mov	r5, r3
 800303c:	dd0d      	ble.n	800305a <_vfprintf_r+0xca2>
 800303e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003040:	f8cb 7000 	str.w	r7, [fp]
 8003044:	3301      	adds	r3, #1
 8003046:	442c      	add	r4, r5
 8003048:	2b07      	cmp	r3, #7
 800304a:	942c      	str	r4, [sp, #176]	; 0xb0
 800304c:	f8cb 5004 	str.w	r5, [fp, #4]
 8003050:	932b      	str	r3, [sp, #172]	; 0xac
 8003052:	f300 82c1 	bgt.w	80035d8 <_vfprintf_r+0x1220>
 8003056:	f10b 0b08 	add.w	fp, fp, #8
 800305a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800305c:	2d00      	cmp	r5, #0
 800305e:	bfa8      	it	ge
 8003060:	1b5b      	subge	r3, r3, r5
 8003062:	2b00      	cmp	r3, #0
 8003064:	461d      	mov	r5, r3
 8003066:	f340 8099 	ble.w	800319c <_vfprintf_r+0xde4>
 800306a:	2d10      	cmp	r5, #16
 800306c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800306e:	4b2c      	ldr	r3, [pc, #176]	; (8003120 <_vfprintf_r+0xd68>)
 8003070:	f340 83db 	ble.w	800382a <_vfprintf_r+0x1472>
 8003074:	4618      	mov	r0, r3
 8003076:	4621      	mov	r1, r4
 8003078:	465b      	mov	r3, fp
 800307a:	2610      	movs	r6, #16
 800307c:	46bb      	mov	fp, r7
 800307e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003082:	9c07      	ldr	r4, [sp, #28]
 8003084:	4607      	mov	r7, r0
 8003086:	e004      	b.n	8003092 <_vfprintf_r+0xcda>
 8003088:	3308      	adds	r3, #8
 800308a:	3d10      	subs	r5, #16
 800308c:	2d10      	cmp	r5, #16
 800308e:	f340 83c7 	ble.w	8003820 <_vfprintf_r+0x1468>
 8003092:	3201      	adds	r2, #1
 8003094:	3110      	adds	r1, #16
 8003096:	2a07      	cmp	r2, #7
 8003098:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800309c:	e9c3 7600 	strd	r7, r6, [r3]
 80030a0:	ddf2      	ble.n	8003088 <_vfprintf_r+0xcd0>
 80030a2:	aa2a      	add	r2, sp, #168	; 0xa8
 80030a4:	4621      	mov	r1, r4
 80030a6:	4648      	mov	r0, r9
 80030a8:	f003 fcb4 	bl	8006a14 <__sprint_r>
 80030ac:	2800      	cmp	r0, #0
 80030ae:	f040 84a5 	bne.w	80039fc <_vfprintf_r+0x1644>
 80030b2:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 80030b6:	ab2d      	add	r3, sp, #180	; 0xb4
 80030b8:	e7e7      	b.n	800308a <_vfprintf_r+0xcd2>
 80030ba:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80030be:	af56      	add	r7, sp, #344	; 0x158
 80030c0:	f7ff bafb 	b.w	80026ba <_vfprintf_r+0x302>
 80030c4:	f1b9 0f00 	cmp.w	r9, #0
 80030c8:	f77f af4c 	ble.w	8002f64 <_vfprintf_r+0xbac>
 80030cc:	f1b9 0f10 	cmp.w	r9, #16
 80030d0:	4b13      	ldr	r3, [pc, #76]	; (8003120 <_vfprintf_r+0xd68>)
 80030d2:	f340 8659 	ble.w	8003d88 <_vfprintf_r+0x19d0>
 80030d6:	4619      	mov	r1, r3
 80030d8:	4622      	mov	r2, r4
 80030da:	4633      	mov	r3, r6
 80030dc:	2710      	movs	r7, #16
 80030de:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80030e2:	9c07      	ldr	r4, [sp, #28]
 80030e4:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80030e6:	460e      	mov	r6, r1
 80030e8:	e007      	b.n	80030fa <_vfprintf_r+0xd42>
 80030ea:	3308      	adds	r3, #8
 80030ec:	f1a9 0910 	sub.w	r9, r9, #16
 80030f0:	f1b9 0f10 	cmp.w	r9, #16
 80030f4:	f340 8353 	ble.w	800379e <_vfprintf_r+0x13e6>
 80030f8:	3501      	adds	r5, #1
 80030fa:	3210      	adds	r2, #16
 80030fc:	2d07      	cmp	r5, #7
 80030fe:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003102:	e9c3 6700 	strd	r6, r7, [r3]
 8003106:	ddf0      	ble.n	80030ea <_vfprintf_r+0xd32>
 8003108:	aa2a      	add	r2, sp, #168	; 0xa8
 800310a:	4621      	mov	r1, r4
 800310c:	4658      	mov	r0, fp
 800310e:	f003 fc81 	bl	8006a14 <__sprint_r>
 8003112:	2800      	cmp	r0, #0
 8003114:	f040 8472 	bne.w	80039fc <_vfprintf_r+0x1644>
 8003118:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800311c:	ab2d      	add	r3, sp, #180	; 0xb4
 800311e:	e7e5      	b.n	80030ec <_vfprintf_r+0xd34>
 8003120:	0800714c 	.word	0x0800714c
 8003124:	f018 0f01 	tst.w	r8, #1
 8003128:	f47f aee0 	bne.w	8002eec <_vfprintf_r+0xb34>
 800312c:	2201      	movs	r2, #1
 800312e:	2d07      	cmp	r5, #7
 8003130:	f8cb 7000 	str.w	r7, [fp]
 8003134:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003138:	f8cb 2004 	str.w	r2, [fp, #4]
 800313c:	dc04      	bgt.n	8003148 <_vfprintf_r+0xd90>
 800313e:	3302      	adds	r3, #2
 8003140:	9309      	str	r3, [sp, #36]	; 0x24
 8003142:	f10b 0b10 	add.w	fp, fp, #16
 8003146:	e70d      	b.n	8002f64 <_vfprintf_r+0xbac>
 8003148:	aa2a      	add	r2, sp, #168	; 0xa8
 800314a:	9907      	ldr	r1, [sp, #28]
 800314c:	9803      	ldr	r0, [sp, #12]
 800314e:	f003 fc61 	bl	8006a14 <__sprint_r>
 8003152:	2800      	cmp	r0, #0
 8003154:	f47f aea8 	bne.w	8002ea8 <_vfprintf_r+0xaf0>
 8003158:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800315c:	3301      	adds	r3, #1
 800315e:	9309      	str	r3, [sp, #36]	; 0x24
 8003160:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003164:	ae2d      	add	r6, sp, #180	; 0xb4
 8003166:	e6fd      	b.n	8002f64 <_vfprintf_r+0xbac>
 8003168:	aa2a      	add	r2, sp, #168	; 0xa8
 800316a:	9907      	ldr	r1, [sp, #28]
 800316c:	9803      	ldr	r0, [sp, #12]
 800316e:	f003 fc51 	bl	8006a14 <__sprint_r>
 8003172:	2800      	cmp	r0, #0
 8003174:	f47f ae98 	bne.w	8002ea8 <_vfprintf_r+0xaf0>
 8003178:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800317c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800317e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003182:	f7ff baf6 	b.w	8002772 <_vfprintf_r+0x3ba>
 8003186:	aa2a      	add	r2, sp, #168	; 0xa8
 8003188:	9907      	ldr	r1, [sp, #28]
 800318a:	9803      	ldr	r0, [sp, #12]
 800318c:	f003 fc42 	bl	8006a14 <__sprint_r>
 8003190:	2800      	cmp	r0, #0
 8003192:	f47f ae89 	bne.w	8002ea8 <_vfprintf_r+0xaf0>
 8003196:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003198:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800319c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800319e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80031a2:	443b      	add	r3, r7
 80031a4:	4699      	mov	r9, r3
 80031a6:	f040 8357 	bne.w	8003858 <_vfprintf_r+0x14a0>
 80031aa:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80031ac:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80031ae:	4293      	cmp	r3, r2
 80031b0:	db49      	blt.n	8003246 <_vfprintf_r+0xe8e>
 80031b2:	f018 0f01 	tst.w	r8, #1
 80031b6:	d146      	bne.n	8003246 <_vfprintf_r+0xe8e>
 80031b8:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80031ba:	18bd      	adds	r5, r7, r2
 80031bc:	eba5 0509 	sub.w	r5, r5, r9
 80031c0:	1ad3      	subs	r3, r2, r3
 80031c2:	429d      	cmp	r5, r3
 80031c4:	bfa8      	it	ge
 80031c6:	461d      	movge	r5, r3
 80031c8:	2d00      	cmp	r5, #0
 80031ca:	dd0d      	ble.n	80031e8 <_vfprintf_r+0xe30>
 80031cc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031ce:	f8cb 9000 	str.w	r9, [fp]
 80031d2:	3201      	adds	r2, #1
 80031d4:	442c      	add	r4, r5
 80031d6:	2a07      	cmp	r2, #7
 80031d8:	942c      	str	r4, [sp, #176]	; 0xb0
 80031da:	f8cb 5004 	str.w	r5, [fp, #4]
 80031de:	922b      	str	r2, [sp, #172]	; 0xac
 80031e0:	f300 8462 	bgt.w	8003aa8 <_vfprintf_r+0x16f0>
 80031e4:	f10b 0b08 	add.w	fp, fp, #8
 80031e8:	2d00      	cmp	r5, #0
 80031ea:	bfac      	ite	ge
 80031ec:	1b5d      	subge	r5, r3, r5
 80031ee:	461d      	movlt	r5, r3
 80031f0:	2d00      	cmp	r5, #0
 80031f2:	f77f ab32 	ble.w	800285a <_vfprintf_r+0x4a2>
 80031f6:	2d10      	cmp	r5, #16
 80031f8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031fa:	4bc5      	ldr	r3, [pc, #788]	; (8003510 <_vfprintf_r+0x1158>)
 80031fc:	f340 80c4 	ble.w	8003388 <_vfprintf_r+0xfd0>
 8003200:	4619      	mov	r1, r3
 8003202:	2610      	movs	r6, #16
 8003204:	4623      	mov	r3, r4
 8003206:	9f03      	ldr	r7, [sp, #12]
 8003208:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800320c:	460c      	mov	r4, r1
 800320e:	e005      	b.n	800321c <_vfprintf_r+0xe64>
 8003210:	f10b 0b08 	add.w	fp, fp, #8
 8003214:	3d10      	subs	r5, #16
 8003216:	2d10      	cmp	r5, #16
 8003218:	f340 80b3 	ble.w	8003382 <_vfprintf_r+0xfca>
 800321c:	3201      	adds	r2, #1
 800321e:	3310      	adds	r3, #16
 8003220:	2a07      	cmp	r2, #7
 8003222:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003226:	e9cb 4600 	strd	r4, r6, [fp]
 800322a:	ddf1      	ble.n	8003210 <_vfprintf_r+0xe58>
 800322c:	aa2a      	add	r2, sp, #168	; 0xa8
 800322e:	4649      	mov	r1, r9
 8003230:	4638      	mov	r0, r7
 8003232:	f003 fbef 	bl	8006a14 <__sprint_r>
 8003236:	2800      	cmp	r0, #0
 8003238:	f47f ae38 	bne.w	8002eac <_vfprintf_r+0xaf4>
 800323c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003240:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003244:	e7e6      	b.n	8003214 <_vfprintf_r+0xe5c>
 8003246:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003248:	9916      	ldr	r1, [sp, #88]	; 0x58
 800324a:	f8cb 1000 	str.w	r1, [fp]
 800324e:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003250:	f8cb 1004 	str.w	r1, [fp, #4]
 8003254:	3201      	adds	r2, #1
 8003256:	440c      	add	r4, r1
 8003258:	2a07      	cmp	r2, #7
 800325a:	942c      	str	r4, [sp, #176]	; 0xb0
 800325c:	922b      	str	r2, [sp, #172]	; 0xac
 800325e:	f300 828c 	bgt.w	800377a <_vfprintf_r+0x13c2>
 8003262:	f10b 0b08 	add.w	fp, fp, #8
 8003266:	e7a7      	b.n	80031b8 <_vfprintf_r+0xe00>
 8003268:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800326c:	f002 fa94 	bl	8005798 <__retarget_lock_release_recursive>
 8003270:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003274:	e628      	b.n	8002ec8 <_vfprintf_r+0xb10>
 8003276:	aa2a      	add	r2, sp, #168	; 0xa8
 8003278:	9907      	ldr	r1, [sp, #28]
 800327a:	9803      	ldr	r0, [sp, #12]
 800327c:	f003 fbca 	bl	8006a14 <__sprint_r>
 8003280:	2800      	cmp	r0, #0
 8003282:	f47f ae11 	bne.w	8002ea8 <_vfprintf_r+0xaf0>
 8003286:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800328a:	ae2d      	add	r6, sp, #180	; 0xb4
 800328c:	e638      	b.n	8002f00 <_vfprintf_r+0xb48>
 800328e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003290:	9907      	ldr	r1, [sp, #28]
 8003292:	9803      	ldr	r0, [sp, #12]
 8003294:	f003 fbbe 	bl	8006a14 <__sprint_r>
 8003298:	2800      	cmp	r0, #0
 800329a:	f47f ae05 	bne.w	8002ea8 <_vfprintf_r+0xaf0>
 800329e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80032a2:	ae2d      	add	r6, sp, #180	; 0xb4
 80032a4:	930b      	str	r3, [sp, #44]	; 0x2c
 80032a6:	e638      	b.n	8002f1a <_vfprintf_r+0xb62>
 80032a8:	6814      	ldr	r4, [r2, #0]
 80032aa:	9308      	str	r3, [sp, #32]
 80032ac:	2500      	movs	r5, #0
 80032ae:	f7ff bb95 	b.w	80029dc <_vfprintf_r+0x624>
 80032b2:	6814      	ldr	r4, [r2, #0]
 80032b4:	9308      	str	r3, [sp, #32]
 80032b6:	2500      	movs	r5, #0
 80032b8:	f7ff b9ae 	b.w	8002618 <_vfprintf_r+0x260>
 80032bc:	680c      	ldr	r4, [r1, #0]
 80032be:	9208      	str	r2, [sp, #32]
 80032c0:	17e5      	asrs	r5, r4, #31
 80032c2:	4620      	mov	r0, r4
 80032c4:	4629      	mov	r1, r5
 80032c6:	f7ff b9d2 	b.w	800266e <_vfprintf_r+0x2b6>
 80032ca:	6814      	ldr	r4, [r2, #0]
 80032cc:	9108      	str	r1, [sp, #32]
 80032ce:	2201      	movs	r2, #1
 80032d0:	2500      	movs	r5, #0
 80032d2:	f7ff bb32 	b.w	800293a <_vfprintf_r+0x582>
 80032d6:	2a01      	cmp	r2, #1
 80032d8:	f47f ab3c 	bne.w	8002954 <_vfprintf_r+0x59c>
 80032dc:	e68f      	b.n	8002ffe <_vfprintf_r+0xc46>
 80032de:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 80032e2:	2200      	movs	r2, #0
 80032e4:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80032e8:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80032ec:	af56      	add	r7, sp, #344	; 0x158
 80032ee:	4692      	mov	sl, r2
 80032f0:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 80032f4:	461e      	mov	r6, r3
 80032f6:	e00a      	b.n	800330e <_vfprintf_r+0xf56>
 80032f8:	2300      	movs	r3, #0
 80032fa:	4620      	mov	r0, r4
 80032fc:	4629      	mov	r1, r5
 80032fe:	220a      	movs	r2, #10
 8003300:	f7fc ff7e 	bl	8000200 <__aeabi_uldivmod>
 8003304:	4604      	mov	r4, r0
 8003306:	460d      	mov	r5, r1
 8003308:	ea54 0305 	orrs.w	r3, r4, r5
 800330c:	d029      	beq.n	8003362 <_vfprintf_r+0xfaa>
 800330e:	220a      	movs	r2, #10
 8003310:	2300      	movs	r3, #0
 8003312:	4620      	mov	r0, r4
 8003314:	4629      	mov	r1, r5
 8003316:	f7fc ff73 	bl	8000200 <__aeabi_uldivmod>
 800331a:	3230      	adds	r2, #48	; 0x30
 800331c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003320:	f10a 0a01 	add.w	sl, sl, #1
 8003324:	3f01      	subs	r7, #1
 8003326:	2e00      	cmp	r6, #0
 8003328:	d0e6      	beq.n	80032f8 <_vfprintf_r+0xf40>
 800332a:	f898 3000 	ldrb.w	r3, [r8]
 800332e:	459a      	cmp	sl, r3
 8003330:	d1e2      	bne.n	80032f8 <_vfprintf_r+0xf40>
 8003332:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003336:	d0df      	beq.n	80032f8 <_vfprintf_r+0xf40>
 8003338:	2d00      	cmp	r5, #0
 800333a:	bf08      	it	eq
 800333c:	2c0a      	cmpeq	r4, #10
 800333e:	d3db      	bcc.n	80032f8 <_vfprintf_r+0xf40>
 8003340:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003342:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003344:	1aff      	subs	r7, r7, r3
 8003346:	461a      	mov	r2, r3
 8003348:	4638      	mov	r0, r7
 800334a:	f003 faf5 	bl	8006938 <strncpy>
 800334e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003352:	2b00      	cmp	r3, #0
 8003354:	f000 8496 	beq.w	8003c84 <_vfprintf_r+0x18cc>
 8003358:	f108 0801 	add.w	r8, r8, #1
 800335c:	f04f 0a00 	mov.w	sl, #0
 8003360:	e7ca      	b.n	80032f8 <_vfprintf_r+0xf40>
 8003362:	9b04      	ldr	r3, [sp, #16]
 8003364:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003368:	1bdb      	subs	r3, r3, r7
 800336a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 800336e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003370:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003374:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003378:	9309      	str	r3, [sp, #36]	; 0x24
 800337a:	f7ff b99e 	b.w	80026ba <_vfprintf_r+0x302>
 800337e:	46c1      	mov	r9, r8
 8003380:	e594      	b.n	8002eac <_vfprintf_r+0xaf4>
 8003382:	4621      	mov	r1, r4
 8003384:	461c      	mov	r4, r3
 8003386:	460b      	mov	r3, r1
 8003388:	3201      	adds	r2, #1
 800338a:	442c      	add	r4, r5
 800338c:	2a07      	cmp	r2, #7
 800338e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003392:	e9cb 3500 	strd	r3, r5, [fp]
 8003396:	f77f aa5e 	ble.w	8002856 <_vfprintf_r+0x49e>
 800339a:	e5ee      	b.n	8002f7a <_vfprintf_r+0xbc2>
 800339c:	f018 0f10 	tst.w	r8, #16
 80033a0:	f040 80f8 	bne.w	8003594 <_vfprintf_r+0x11dc>
 80033a4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80033a8:	f000 8351 	beq.w	8003a4e <_vfprintf_r+0x1696>
 80033ac:	9a05      	ldr	r2, [sp, #20]
 80033ae:	801a      	strh	r2, [r3, #0]
 80033b0:	4657      	mov	r7, sl
 80033b2:	f7ff baa7 	b.w	8002904 <_vfprintf_r+0x54c>
 80033b6:	aa2a      	add	r2, sp, #168	; 0xa8
 80033b8:	9907      	ldr	r1, [sp, #28]
 80033ba:	9803      	ldr	r0, [sp, #12]
 80033bc:	f003 fb2a 	bl	8006a14 <__sprint_r>
 80033c0:	2800      	cmp	r0, #0
 80033c2:	f47f ad71 	bne.w	8002ea8 <_vfprintf_r+0xaf0>
 80033c6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80033c8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033cc:	f7ff b9f5 	b.w	80027ba <_vfprintf_r+0x402>
 80033d0:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80033d4:	4602      	mov	r2, r0
 80033d6:	460b      	mov	r3, r1
 80033d8:	f7fd fe48 	bl	800106c <__aeabi_dcmpun>
 80033dc:	2800      	cmp	r0, #0
 80033de:	f040 8491 	bne.w	8003d04 <_vfprintf_r+0x194c>
 80033e2:	2e61      	cmp	r6, #97	; 0x61
 80033e4:	f000 8111 	beq.w	800360a <_vfprintf_r+0x1252>
 80033e8:	2e41      	cmp	r6, #65	; 0x41
 80033ea:	f000 8377 	beq.w	8003adc <_vfprintf_r+0x1724>
 80033ee:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80033f2:	f026 0220 	bic.w	r2, r6, #32
 80033f6:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80033fa:	930e      	str	r3, [sp, #56]	; 0x38
 80033fc:	9204      	str	r2, [sp, #16]
 80033fe:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003400:	f000 842d 	beq.w	8003c5e <_vfprintf_r+0x18a6>
 8003404:	2a47      	cmp	r2, #71	; 0x47
 8003406:	f000 8424 	beq.w	8003c52 <_vfprintf_r+0x189a>
 800340a:	2b00      	cmp	r3, #0
 800340c:	f2c0 82f9 	blt.w	8003a02 <_vfprintf_r+0x164a>
 8003410:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003414:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003418:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800341c:	2e66      	cmp	r6, #102	; 0x66
 800341e:	f000 83eb 	beq.w	8003bf8 <_vfprintf_r+0x1840>
 8003422:	2e46      	cmp	r6, #70	; 0x46
 8003424:	f000 847e 	beq.w	8003d24 <_vfprintf_r+0x196c>
 8003428:	9b04      	ldr	r3, [sp, #16]
 800342a:	9803      	ldr	r0, [sp, #12]
 800342c:	2b45      	cmp	r3, #69	; 0x45
 800342e:	bf0c      	ite	eq
 8003430:	f109 0501 	addeq.w	r5, r9, #1
 8003434:	464d      	movne	r5, r9
 8003436:	aa28      	add	r2, sp, #160	; 0xa0
 8003438:	ab25      	add	r3, sp, #148	; 0x94
 800343a:	e9cd 3200 	strd	r3, r2, [sp]
 800343e:	2102      	movs	r1, #2
 8003440:	ab24      	add	r3, sp, #144	; 0x90
 8003442:	462a      	mov	r2, r5
 8003444:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003448:	f000 fe3e 	bl	80040c8 <_dtoa_r>
 800344c:	2e67      	cmp	r6, #103	; 0x67
 800344e:	4607      	mov	r7, r0
 8003450:	f040 849c 	bne.w	8003d8c <_vfprintf_r+0x19d4>
 8003454:	f018 0f01 	tst.w	r8, #1
 8003458:	f040 83f9 	bne.w	8003c4e <_vfprintf_r+0x1896>
 800345c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 800345e:	4640      	mov	r0, r8
 8003460:	1bdb      	subs	r3, r3, r7
 8003462:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003466:	9310      	str	r3, [sp, #64]	; 0x40
 8003468:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800346a:	9311      	str	r3, [sp, #68]	; 0x44
 800346c:	9b04      	ldr	r3, [sp, #16]
 800346e:	2b47      	cmp	r3, #71	; 0x47
 8003470:	f000 81e7 	beq.w	8003842 <_vfprintf_r+0x148a>
 8003474:	9b04      	ldr	r3, [sp, #16]
 8003476:	2b46      	cmp	r3, #70	; 0x46
 8003478:	f000 8300 	beq.w	8003a7c <_vfprintf_r+0x16c4>
 800347c:	9904      	ldr	r1, [sp, #16]
 800347e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003480:	b2f2      	uxtb	r2, r6
 8003482:	2941      	cmp	r1, #65	; 0x41
 8003484:	bf08      	it	eq
 8003486:	320f      	addeq	r2, #15
 8003488:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 800348c:	bf06      	itte	eq
 800348e:	b2d2      	uxtbeq	r2, r2
 8003490:	2101      	moveq	r1, #1
 8003492:	2100      	movne	r1, #0
 8003494:	2b00      	cmp	r3, #0
 8003496:	9324      	str	r3, [sp, #144]	; 0x90
 8003498:	bfb8      	it	lt
 800349a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 800349c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 80034a0:	bfba      	itte	lt
 80034a2:	f1c3 0301 	rsblt	r3, r3, #1
 80034a6:	222d      	movlt	r2, #45	; 0x2d
 80034a8:	222b      	movge	r2, #43	; 0x2b
 80034aa:	2b09      	cmp	r3, #9
 80034ac:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 80034b0:	f300 83f9 	bgt.w	8003ca6 <_vfprintf_r+0x18ee>
 80034b4:	2900      	cmp	r1, #0
 80034b6:	f040 8487 	bne.w	8003dc8 <_vfprintf_r+0x1a10>
 80034ba:	2230      	movs	r2, #48	; 0x30
 80034bc:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 80034c0:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 80034c4:	3330      	adds	r3, #48	; 0x30
 80034c6:	7013      	strb	r3, [r2, #0]
 80034c8:	1c53      	adds	r3, r2, #1
 80034ca:	aa26      	add	r2, sp, #152	; 0x98
 80034cc:	1a9b      	subs	r3, r3, r2
 80034ce:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80034d0:	9319      	str	r3, [sp, #100]	; 0x64
 80034d2:	2a01      	cmp	r2, #1
 80034d4:	4413      	add	r3, r2
 80034d6:	9309      	str	r3, [sp, #36]	; 0x24
 80034d8:	f340 8442 	ble.w	8003d60 <_vfprintf_r+0x19a8>
 80034dc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80034de:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80034e0:	4413      	add	r3, r2
 80034e2:	9309      	str	r3, [sp, #36]	; 0x24
 80034e4:	2300      	movs	r3, #0
 80034e6:	930f      	str	r3, [sp, #60]	; 0x3c
 80034e8:	9314      	str	r3, [sp, #80]	; 0x50
 80034ea:	9311      	str	r3, [sp, #68]	; 0x44
 80034ec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80034ee:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 80034f2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80034f6:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 80034fa:	9304      	str	r3, [sp, #16]
 80034fc:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80034fe:	2b00      	cmp	r3, #0
 8003500:	f040 8275 	bne.w	80039ee <_vfprintf_r+0x1636>
 8003504:	4699      	mov	r9, r3
 8003506:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800350a:	f7ff b8e2 	b.w	80026d2 <_vfprintf_r+0x31a>
 800350e:	bf00      	nop
 8003510:	0800714c 	.word	0x0800714c
 8003514:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003516:	49bd      	ldr	r1, [pc, #756]	; (800380c <_vfprintf_r+0x1454>)
 8003518:	f8cb 1000 	str.w	r1, [fp]
 800351c:	3201      	adds	r2, #1
 800351e:	3401      	adds	r4, #1
 8003520:	2101      	movs	r1, #1
 8003522:	2a07      	cmp	r2, #7
 8003524:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003528:	f8cb 1004 	str.w	r1, [fp, #4]
 800352c:	dc60      	bgt.n	80035f0 <_vfprintf_r+0x1238>
 800352e:	f10b 0b08 	add.w	fp, fp, #8
 8003532:	b92b      	cbnz	r3, 8003540 <_vfprintf_r+0x1188>
 8003534:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003536:	b91a      	cbnz	r2, 8003540 <_vfprintf_r+0x1188>
 8003538:	f018 0f01 	tst.w	r8, #1
 800353c:	f43f a98d 	beq.w	800285a <_vfprintf_r+0x4a2>
 8003540:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003542:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003544:	f8cb 1000 	str.w	r1, [fp]
 8003548:	9915      	ldr	r1, [sp, #84]	; 0x54
 800354a:	f8cb 1004 	str.w	r1, [fp, #4]
 800354e:	3201      	adds	r2, #1
 8003550:	440c      	add	r4, r1
 8003552:	2a07      	cmp	r2, #7
 8003554:	942c      	str	r4, [sp, #176]	; 0xb0
 8003556:	922b      	str	r2, [sp, #172]	; 0xac
 8003558:	f300 8282 	bgt.w	8003a60 <_vfprintf_r+0x16a8>
 800355c:	f10b 0b08 	add.w	fp, fp, #8
 8003560:	2b00      	cmp	r3, #0
 8003562:	f2c0 82e7 	blt.w	8003b34 <_vfprintf_r+0x177c>
 8003566:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003568:	3201      	adds	r2, #1
 800356a:	441c      	add	r4, r3
 800356c:	2a07      	cmp	r2, #7
 800356e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003572:	e9cb 7300 	strd	r7, r3, [fp]
 8003576:	f77f a96e 	ble.w	8002856 <_vfprintf_r+0x49e>
 800357a:	e4fe      	b.n	8002f7a <_vfprintf_r+0xbc2>
 800357c:	aa2a      	add	r2, sp, #168	; 0xa8
 800357e:	9907      	ldr	r1, [sp, #28]
 8003580:	9803      	ldr	r0, [sp, #12]
 8003582:	f003 fa47 	bl	8006a14 <__sprint_r>
 8003586:	2800      	cmp	r0, #0
 8003588:	f47f ac8e 	bne.w	8002ea8 <_vfprintf_r+0xaf0>
 800358c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003590:	f7ff bbf0 	b.w	8002d74 <_vfprintf_r+0x9bc>
 8003594:	9a05      	ldr	r2, [sp, #20]
 8003596:	601a      	str	r2, [r3, #0]
 8003598:	4657      	mov	r7, sl
 800359a:	f7ff b9b3 	b.w	8002904 <_vfprintf_r+0x54c>
 800359e:	8814      	ldrh	r4, [r2, #0]
 80035a0:	9108      	str	r1, [sp, #32]
 80035a2:	2500      	movs	r5, #0
 80035a4:	2201      	movs	r2, #1
 80035a6:	f7ff b9c8 	b.w	800293a <_vfprintf_r+0x582>
 80035aa:	8814      	ldrh	r4, [r2, #0]
 80035ac:	9308      	str	r3, [sp, #32]
 80035ae:	2500      	movs	r5, #0
 80035b0:	f7ff ba14 	b.w	80029dc <_vfprintf_r+0x624>
 80035b4:	f9b1 4000 	ldrsh.w	r4, [r1]
 80035b8:	9208      	str	r2, [sp, #32]
 80035ba:	17e5      	asrs	r5, r4, #31
 80035bc:	4620      	mov	r0, r4
 80035be:	4629      	mov	r1, r5
 80035c0:	f7ff b855 	b.w	800266e <_vfprintf_r+0x2b6>
 80035c4:	8814      	ldrh	r4, [r2, #0]
 80035c6:	9308      	str	r3, [sp, #32]
 80035c8:	2500      	movs	r5, #0
 80035ca:	f7ff b825 	b.w	8002618 <_vfprintf_r+0x260>
 80035ce:	222d      	movs	r2, #45	; 0x2d
 80035d0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80035d4:	f7ff baa2 	b.w	8002b1c <_vfprintf_r+0x764>
 80035d8:	aa2a      	add	r2, sp, #168	; 0xa8
 80035da:	9907      	ldr	r1, [sp, #28]
 80035dc:	9803      	ldr	r0, [sp, #12]
 80035de:	f003 fa19 	bl	8006a14 <__sprint_r>
 80035e2:	2800      	cmp	r0, #0
 80035e4:	f47f ac60 	bne.w	8002ea8 <_vfprintf_r+0xaf0>
 80035e8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80035ea:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035ee:	e534      	b.n	800305a <_vfprintf_r+0xca2>
 80035f0:	aa2a      	add	r2, sp, #168	; 0xa8
 80035f2:	9907      	ldr	r1, [sp, #28]
 80035f4:	9803      	ldr	r0, [sp, #12]
 80035f6:	f003 fa0d 	bl	8006a14 <__sprint_r>
 80035fa:	2800      	cmp	r0, #0
 80035fc:	f47f ac54 	bne.w	8002ea8 <_vfprintf_r+0xaf0>
 8003600:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003602:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003604:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003608:	e793      	b.n	8003532 <_vfprintf_r+0x117a>
 800360a:	2330      	movs	r3, #48	; 0x30
 800360c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003610:	2378      	movs	r3, #120	; 0x78
 8003612:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003616:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 800361a:	f048 0402 	orr.w	r4, r8, #2
 800361e:	f300 82b0 	bgt.w	8003b82 <_vfprintf_r+0x17ca>
 8003622:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003626:	930e      	str	r3, [sp, #56]	; 0x38
 8003628:	f026 0320 	bic.w	r3, r6, #32
 800362c:	9304      	str	r3, [sp, #16]
 800362e:	2200      	movs	r2, #0
 8003630:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003632:	920a      	str	r2, [sp, #40]	; 0x28
 8003634:	46a0      	mov	r8, r4
 8003636:	af3d      	add	r7, sp, #244	; 0xf4
 8003638:	2b00      	cmp	r3, #0
 800363a:	f2c0 81e3 	blt.w	8003a04 <_vfprintf_r+0x164c>
 800363e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003642:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003646:	2300      	movs	r3, #0
 8003648:	930b      	str	r3, [sp, #44]	; 0x2c
 800364a:	2e61      	cmp	r6, #97	; 0x61
 800364c:	f000 8255 	beq.w	8003afa <_vfprintf_r+0x1742>
 8003650:	2e41      	cmp	r6, #65	; 0x41
 8003652:	f47f aee3 	bne.w	800341c <_vfprintf_r+0x1064>
 8003656:	a824      	add	r0, sp, #144	; 0x90
 8003658:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800365c:	f003 f8e2 	bl	8006824 <frexp>
 8003660:	2200      	movs	r2, #0
 8003662:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003666:	ec51 0b10 	vmov	r0, r1, d0
 800366a:	f7fd fa65 	bl	8000b38 <__aeabi_dmul>
 800366e:	2200      	movs	r2, #0
 8003670:	2300      	movs	r3, #0
 8003672:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003676:	f7fd fcc7 	bl	8001008 <__aeabi_dcmpeq>
 800367a:	2800      	cmp	r0, #0
 800367c:	f040 8305 	bne.w	8003c8a <_vfprintf_r+0x18d2>
 8003680:	4b63      	ldr	r3, [pc, #396]	; (8003810 <_vfprintf_r+0x1458>)
 8003682:	9309      	str	r3, [sp, #36]	; 0x24
 8003684:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003688:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 800368c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003690:	9721      	str	r7, [sp, #132]	; 0x84
 8003692:	46b9      	mov	r9, r7
 8003694:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003698:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 800369c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80036a0:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 80036a4:	e003      	b.n	80036ae <_vfprintf_r+0x12f6>
 80036a6:	f7fd fcaf 	bl	8001008 <__aeabi_dcmpeq>
 80036aa:	bb20      	cbnz	r0, 80036f6 <_vfprintf_r+0x133e>
 80036ac:	46a9      	mov	r9, r5
 80036ae:	2200      	movs	r2, #0
 80036b0:	4b58      	ldr	r3, [pc, #352]	; (8003814 <_vfprintf_r+0x145c>)
 80036b2:	4630      	mov	r0, r6
 80036b4:	4639      	mov	r1, r7
 80036b6:	f7fd fa3f 	bl	8000b38 <__aeabi_dmul>
 80036ba:	460f      	mov	r7, r1
 80036bc:	4606      	mov	r6, r0
 80036be:	f7fd fceb 	bl	8001098 <__aeabi_d2iz>
 80036c2:	4680      	mov	r8, r0
 80036c4:	f7fd f9ce 	bl	8000a64 <__aeabi_i2d>
 80036c8:	4602      	mov	r2, r0
 80036ca:	460b      	mov	r3, r1
 80036cc:	4630      	mov	r0, r6
 80036ce:	4639      	mov	r1, r7
 80036d0:	f7fd f87a 	bl	80007c8 <__aeabi_dsub>
 80036d4:	464d      	mov	r5, r9
 80036d6:	f81a c008 	ldrb.w	ip, [sl, r8]
 80036da:	f805 cb01 	strb.w	ip, [r5], #1
 80036de:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 80036e2:	46a3      	mov	fp, r4
 80036e4:	4606      	mov	r6, r0
 80036e6:	460f      	mov	r7, r1
 80036e8:	f04f 0200 	mov.w	r2, #0
 80036ec:	f04f 0300 	mov.w	r3, #0
 80036f0:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 80036f4:	d1d7      	bne.n	80036a6 <_vfprintf_r+0x12ee>
 80036f6:	4630      	mov	r0, r6
 80036f8:	4639      	mov	r1, r7
 80036fa:	2200      	movs	r2, #0
 80036fc:	4b46      	ldr	r3, [pc, #280]	; (8003818 <_vfprintf_r+0x1460>)
 80036fe:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003702:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003704:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003708:	4644      	mov	r4, r8
 800370a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 800370e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003712:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003716:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 800371a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 800371c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003720:	f7fd fc9a 	bl	8001058 <__aeabi_dcmpgt>
 8003724:	2800      	cmp	r0, #0
 8003726:	f040 8176 	bne.w	8003a16 <_vfprintf_r+0x165e>
 800372a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 800372e:	2200      	movs	r2, #0
 8003730:	4b39      	ldr	r3, [pc, #228]	; (8003818 <_vfprintf_r+0x1460>)
 8003732:	f7fd fc69 	bl	8001008 <__aeabi_dcmpeq>
 8003736:	b110      	cbz	r0, 800373e <_vfprintf_r+0x1386>
 8003738:	07e2      	lsls	r2, r4, #31
 800373a:	f100 816c 	bmi.w	8003a16 <_vfprintf_r+0x165e>
 800373e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003740:	2b00      	cmp	r3, #0
 8003742:	db07      	blt.n	8003754 <_vfprintf_r+0x139c>
 8003744:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003746:	3301      	adds	r3, #1
 8003748:	442b      	add	r3, r5
 800374a:	2230      	movs	r2, #48	; 0x30
 800374c:	f805 2b01 	strb.w	r2, [r5], #1
 8003750:	42ab      	cmp	r3, r5
 8003752:	d1fb      	bne.n	800374c <_vfprintf_r+0x1394>
 8003754:	1beb      	subs	r3, r5, r7
 8003756:	4640      	mov	r0, r8
 8003758:	9310      	str	r3, [sp, #64]	; 0x40
 800375a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800375e:	e683      	b.n	8003468 <_vfprintf_r+0x10b0>
 8003760:	f8cd 9010 	str.w	r9, [sp, #16]
 8003764:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003768:	9408      	str	r4, [sp, #32]
 800376a:	4681      	mov	r9, r0
 800376c:	900f      	str	r0, [sp, #60]	; 0x3c
 800376e:	9014      	str	r0, [sp, #80]	; 0x50
 8003770:	9011      	str	r0, [sp, #68]	; 0x44
 8003772:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003776:	f7fe bfac 	b.w	80026d2 <_vfprintf_r+0x31a>
 800377a:	aa2a      	add	r2, sp, #168	; 0xa8
 800377c:	9907      	ldr	r1, [sp, #28]
 800377e:	9803      	ldr	r0, [sp, #12]
 8003780:	f003 f948 	bl	8006a14 <__sprint_r>
 8003784:	2800      	cmp	r0, #0
 8003786:	f47f ab8f 	bne.w	8002ea8 <_vfprintf_r+0xaf0>
 800378a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800378c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800378e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003792:	e511      	b.n	80031b8 <_vfprintf_r+0xe00>
 8003794:	4252      	negs	r2, r2
 8003796:	9206      	str	r2, [sp, #24]
 8003798:	9308      	str	r3, [sp, #32]
 800379a:	f7ff b96d 	b.w	8002a78 <_vfprintf_r+0x6c0>
 800379e:	4614      	mov	r4, r2
 80037a0:	4632      	mov	r2, r6
 80037a2:	461e      	mov	r6, r3
 80037a4:	4613      	mov	r3, r2
 80037a6:	462a      	mov	r2, r5
 80037a8:	3201      	adds	r2, #1
 80037aa:	9209      	str	r2, [sp, #36]	; 0x24
 80037ac:	f106 0208 	add.w	r2, r6, #8
 80037b0:	e9c6 3900 	strd	r3, r9, [r6]
 80037b4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80037b6:	932b      	str	r3, [sp, #172]	; 0xac
 80037b8:	444c      	add	r4, r9
 80037ba:	2b07      	cmp	r3, #7
 80037bc:	942c      	str	r4, [sp, #176]	; 0xb0
 80037be:	f73f acc3 	bgt.w	8003148 <_vfprintf_r+0xd90>
 80037c2:	3301      	adds	r3, #1
 80037c4:	9309      	str	r3, [sp, #36]	; 0x24
 80037c6:	f102 0b08 	add.w	fp, r2, #8
 80037ca:	4616      	mov	r6, r2
 80037cc:	f7ff bbca 	b.w	8002f64 <_vfprintf_r+0xbac>
 80037d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80037d2:	9907      	ldr	r1, [sp, #28]
 80037d4:	9803      	ldr	r0, [sp, #12]
 80037d6:	f003 f91d 	bl	8006a14 <__sprint_r>
 80037da:	2800      	cmp	r0, #0
 80037dc:	f47f ab64 	bne.w	8002ea8 <_vfprintf_r+0xaf0>
 80037e0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80037e2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80037e6:	f7ff bade 	b.w	8002da6 <_vfprintf_r+0x9ee>
 80037ea:	464b      	mov	r3, r9
 80037ec:	2b06      	cmp	r3, #6
 80037ee:	bf28      	it	cs
 80037f0:	2306      	movcs	r3, #6
 80037f2:	46b9      	mov	r9, r7
 80037f4:	970f      	str	r7, [sp, #60]	; 0x3c
 80037f6:	9714      	str	r7, [sp, #80]	; 0x50
 80037f8:	9711      	str	r7, [sp, #68]	; 0x44
 80037fa:	970a      	str	r7, [sp, #40]	; 0x28
 80037fc:	463a      	mov	r2, r7
 80037fe:	9304      	str	r3, [sp, #16]
 8003800:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003804:	4f05      	ldr	r7, [pc, #20]	; (800381c <_vfprintf_r+0x1464>)
 8003806:	f7fe bf64 	b.w	80026d2 <_vfprintf_r+0x31a>
 800380a:	bf00      	nop
 800380c:	08007138 	.word	0x08007138
 8003810:	0800711c 	.word	0x0800711c
 8003814:	40300000 	.word	0x40300000
 8003818:	3fe00000 	.word	0x3fe00000
 800381c:	08007130 	.word	0x08007130
 8003820:	460c      	mov	r4, r1
 8003822:	4639      	mov	r1, r7
 8003824:	465f      	mov	r7, fp
 8003826:	469b      	mov	fp, r3
 8003828:	460b      	mov	r3, r1
 800382a:	3201      	adds	r2, #1
 800382c:	442c      	add	r4, r5
 800382e:	2a07      	cmp	r2, #7
 8003830:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003834:	e9cb 3500 	strd	r3, r5, [fp]
 8003838:	f73f aca5 	bgt.w	8003186 <_vfprintf_r+0xdce>
 800383c:	f10b 0b08 	add.w	fp, fp, #8
 8003840:	e4ac      	b.n	800319c <_vfprintf_r+0xde4>
 8003842:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003844:	1cda      	adds	r2, r3, #3
 8003846:	db02      	blt.n	800384e <_vfprintf_r+0x1496>
 8003848:	4599      	cmp	r9, r3
 800384a:	f280 80b5 	bge.w	80039b8 <_vfprintf_r+0x1600>
 800384e:	3e02      	subs	r6, #2
 8003850:	f026 0320 	bic.w	r3, r6, #32
 8003854:	9304      	str	r3, [sp, #16]
 8003856:	e611      	b.n	800347c <_vfprintf_r+0x10c4>
 8003858:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800385a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 800385e:	465a      	mov	r2, fp
 8003860:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003864:	18fb      	adds	r3, r7, r3
 8003866:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 800386a:	970c      	str	r7, [sp, #48]	; 0x30
 800386c:	4eaf      	ldr	r6, [pc, #700]	; (8003b2c <_vfprintf_r+0x1774>)
 800386e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003872:	9309      	str	r3, [sp, #36]	; 0x24
 8003874:	464f      	mov	r7, r9
 8003876:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800387a:	4621      	mov	r1, r4
 800387c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800387e:	2b00      	cmp	r3, #0
 8003880:	d05b      	beq.n	800393a <_vfprintf_r+0x1582>
 8003882:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003884:	2b00      	cmp	r3, #0
 8003886:	d154      	bne.n	8003932 <_vfprintf_r+0x157a>
 8003888:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800388a:	3b01      	subs	r3, #1
 800388c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003890:	9314      	str	r3, [sp, #80]	; 0x50
 8003892:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003894:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003896:	6010      	str	r0, [r2, #0]
 8003898:	3301      	adds	r3, #1
 800389a:	4459      	add	r1, fp
 800389c:	2b07      	cmp	r3, #7
 800389e:	912c      	str	r1, [sp, #176]	; 0xb0
 80038a0:	f8c2 b004 	str.w	fp, [r2, #4]
 80038a4:	932b      	str	r3, [sp, #172]	; 0xac
 80038a6:	dc68      	bgt.n	800397a <_vfprintf_r+0x15c2>
 80038a8:	3208      	adds	r2, #8
 80038aa:	9809      	ldr	r0, [sp, #36]	; 0x24
 80038ac:	f898 3000 	ldrb.w	r3, [r8]
 80038b0:	1bc5      	subs	r5, r0, r7
 80038b2:	429d      	cmp	r5, r3
 80038b4:	bfa8      	it	ge
 80038b6:	461d      	movge	r5, r3
 80038b8:	2d00      	cmp	r5, #0
 80038ba:	dd0b      	ble.n	80038d4 <_vfprintf_r+0x151c>
 80038bc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80038be:	6017      	str	r7, [r2, #0]
 80038c0:	3301      	adds	r3, #1
 80038c2:	4429      	add	r1, r5
 80038c4:	2b07      	cmp	r3, #7
 80038c6:	912c      	str	r1, [sp, #176]	; 0xb0
 80038c8:	6055      	str	r5, [r2, #4]
 80038ca:	932b      	str	r3, [sp, #172]	; 0xac
 80038cc:	dc5e      	bgt.n	800398c <_vfprintf_r+0x15d4>
 80038ce:	f898 3000 	ldrb.w	r3, [r8]
 80038d2:	3208      	adds	r2, #8
 80038d4:	2d00      	cmp	r5, #0
 80038d6:	bfac      	ite	ge
 80038d8:	1b5d      	subge	r5, r3, r5
 80038da:	461d      	movlt	r5, r3
 80038dc:	2d00      	cmp	r5, #0
 80038de:	dd26      	ble.n	800392e <_vfprintf_r+0x1576>
 80038e0:	2d10      	cmp	r5, #16
 80038e2:	982b      	ldr	r0, [sp, #172]	; 0xac
 80038e4:	dd3c      	ble.n	8003960 <_vfprintf_r+0x15a8>
 80038e6:	2410      	movs	r4, #16
 80038e8:	e003      	b.n	80038f2 <_vfprintf_r+0x153a>
 80038ea:	3208      	adds	r2, #8
 80038ec:	3d10      	subs	r5, #16
 80038ee:	2d10      	cmp	r5, #16
 80038f0:	dd36      	ble.n	8003960 <_vfprintf_r+0x15a8>
 80038f2:	3001      	adds	r0, #1
 80038f4:	3110      	adds	r1, #16
 80038f6:	2807      	cmp	r0, #7
 80038f8:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80038fc:	e9c2 6400 	strd	r6, r4, [r2]
 8003900:	ddf3      	ble.n	80038ea <_vfprintf_r+0x1532>
 8003902:	aa2a      	add	r2, sp, #168	; 0xa8
 8003904:	4651      	mov	r1, sl
 8003906:	4648      	mov	r0, r9
 8003908:	f003 f884 	bl	8006a14 <__sprint_r>
 800390c:	2800      	cmp	r0, #0
 800390e:	d150      	bne.n	80039b2 <_vfprintf_r+0x15fa>
 8003910:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003914:	aa2d      	add	r2, sp, #180	; 0xb4
 8003916:	e7e9      	b.n	80038ec <_vfprintf_r+0x1534>
 8003918:	aa2a      	add	r2, sp, #168	; 0xa8
 800391a:	4651      	mov	r1, sl
 800391c:	4648      	mov	r0, r9
 800391e:	f003 f879 	bl	8006a14 <__sprint_r>
 8003922:	2800      	cmp	r0, #0
 8003924:	d145      	bne.n	80039b2 <_vfprintf_r+0x15fa>
 8003926:	f898 3000 	ldrb.w	r3, [r8]
 800392a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800392c:	aa2d      	add	r2, sp, #180	; 0xb4
 800392e:	441f      	add	r7, r3
 8003930:	e7a4      	b.n	800387c <_vfprintf_r+0x14c4>
 8003932:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003934:	3b01      	subs	r3, #1
 8003936:	930f      	str	r3, [sp, #60]	; 0x3c
 8003938:	e7ab      	b.n	8003892 <_vfprintf_r+0x14da>
 800393a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800393c:	2b00      	cmp	r3, #0
 800393e:	d1f8      	bne.n	8003932 <_vfprintf_r+0x157a>
 8003940:	46b9      	mov	r9, r7
 8003942:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003944:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003946:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 800394a:	18fb      	adds	r3, r7, r3
 800394c:	4599      	cmp	r9, r3
 800394e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003952:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003956:	4693      	mov	fp, r2
 8003958:	460c      	mov	r4, r1
 800395a:	bf28      	it	cs
 800395c:	4699      	movcs	r9, r3
 800395e:	e424      	b.n	80031aa <_vfprintf_r+0xdf2>
 8003960:	3001      	adds	r0, #1
 8003962:	4429      	add	r1, r5
 8003964:	2807      	cmp	r0, #7
 8003966:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800396a:	e9c2 6500 	strd	r6, r5, [r2]
 800396e:	dcd3      	bgt.n	8003918 <_vfprintf_r+0x1560>
 8003970:	f898 3000 	ldrb.w	r3, [r8]
 8003974:	3208      	adds	r2, #8
 8003976:	441f      	add	r7, r3
 8003978:	e780      	b.n	800387c <_vfprintf_r+0x14c4>
 800397a:	aa2a      	add	r2, sp, #168	; 0xa8
 800397c:	4651      	mov	r1, sl
 800397e:	4648      	mov	r0, r9
 8003980:	f003 f848 	bl	8006a14 <__sprint_r>
 8003984:	b9a8      	cbnz	r0, 80039b2 <_vfprintf_r+0x15fa>
 8003986:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003988:	aa2d      	add	r2, sp, #180	; 0xb4
 800398a:	e78e      	b.n	80038aa <_vfprintf_r+0x14f2>
 800398c:	aa2a      	add	r2, sp, #168	; 0xa8
 800398e:	4651      	mov	r1, sl
 8003990:	4648      	mov	r0, r9
 8003992:	f003 f83f 	bl	8006a14 <__sprint_r>
 8003996:	b960      	cbnz	r0, 80039b2 <_vfprintf_r+0x15fa>
 8003998:	f898 3000 	ldrb.w	r3, [r8]
 800399c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800399e:	aa2d      	add	r2, sp, #180	; 0xb4
 80039a0:	e798      	b.n	80038d4 <_vfprintf_r+0x151c>
 80039a2:	4638      	mov	r0, r7
 80039a4:	f7fc fe4c 	bl	8000640 <strlen>
 80039a8:	46a9      	mov	r9, r5
 80039aa:	4603      	mov	r3, r0
 80039ac:	9009      	str	r0, [sp, #36]	; 0x24
 80039ae:	f7ff b8f4 	b.w	8002b9a <_vfprintf_r+0x7e2>
 80039b2:	46d1      	mov	r9, sl
 80039b4:	f7ff ba7a 	b.w	8002eac <_vfprintf_r+0xaf4>
 80039b8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80039ba:	4619      	mov	r1, r3
 80039bc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039be:	4299      	cmp	r1, r3
 80039c0:	f300 8082 	bgt.w	8003ac8 <_vfprintf_r+0x1710>
 80039c4:	07c4      	lsls	r4, r0, #31
 80039c6:	f140 816b 	bpl.w	8003ca0 <_vfprintf_r+0x18e8>
 80039ca:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80039cc:	4413      	add	r3, r2
 80039ce:	9309      	str	r3, [sp, #36]	; 0x24
 80039d0:	0541      	lsls	r1, r0, #21
 80039d2:	d503      	bpl.n	80039dc <_vfprintf_r+0x1624>
 80039d4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039d6:	2b00      	cmp	r3, #0
 80039d8:	f300 80e6 	bgt.w	8003ba8 <_vfprintf_r+0x17f0>
 80039dc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80039de:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80039e2:	9304      	str	r3, [sp, #16]
 80039e4:	2667      	movs	r6, #103	; 0x67
 80039e6:	2300      	movs	r3, #0
 80039e8:	930f      	str	r3, [sp, #60]	; 0x3c
 80039ea:	9314      	str	r3, [sp, #80]	; 0x50
 80039ec:	e586      	b.n	80034fc <_vfprintf_r+0x1144>
 80039ee:	222d      	movs	r2, #45	; 0x2d
 80039f0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80039f4:	f04f 0900 	mov.w	r9, #0
 80039f8:	f7fe be6c 	b.w	80026d4 <_vfprintf_r+0x31c>
 80039fc:	46a1      	mov	r9, r4
 80039fe:	f7ff ba55 	b.w	8002eac <_vfprintf_r+0xaf4>
 8003a02:	900a      	str	r0, [sp, #40]	; 0x28
 8003a04:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003a08:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003a0c:	931f      	str	r3, [sp, #124]	; 0x7c
 8003a0e:	232d      	movs	r3, #45	; 0x2d
 8003a10:	911e      	str	r1, [sp, #120]	; 0x78
 8003a12:	930b      	str	r3, [sp, #44]	; 0x2c
 8003a14:	e619      	b.n	800364a <_vfprintf_r+0x1292>
 8003a16:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a18:	9328      	str	r3, [sp, #160]	; 0xa0
 8003a1a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a1c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003a20:	7bd9      	ldrb	r1, [r3, #15]
 8003a22:	4291      	cmp	r1, r2
 8003a24:	462b      	mov	r3, r5
 8003a26:	d109      	bne.n	8003a3c <_vfprintf_r+0x1684>
 8003a28:	2030      	movs	r0, #48	; 0x30
 8003a2a:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003a2e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003a30:	1e5a      	subs	r2, r3, #1
 8003a32:	9228      	str	r2, [sp, #160]	; 0xa0
 8003a34:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003a38:	4291      	cmp	r1, r2
 8003a3a:	d0f6      	beq.n	8003a2a <_vfprintf_r+0x1672>
 8003a3c:	2a39      	cmp	r2, #57	; 0x39
 8003a3e:	bf0b      	itete	eq
 8003a40:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003a42:	3201      	addne	r2, #1
 8003a44:	7a92      	ldrbeq	r2, [r2, #10]
 8003a46:	b2d2      	uxtbne	r2, r2
 8003a48:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003a4c:	e682      	b.n	8003754 <_vfprintf_r+0x139c>
 8003a4e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003a52:	f43f ad9f 	beq.w	8003594 <_vfprintf_r+0x11dc>
 8003a56:	9a05      	ldr	r2, [sp, #20]
 8003a58:	701a      	strb	r2, [r3, #0]
 8003a5a:	4657      	mov	r7, sl
 8003a5c:	f7fe bf52 	b.w	8002904 <_vfprintf_r+0x54c>
 8003a60:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a62:	9907      	ldr	r1, [sp, #28]
 8003a64:	9803      	ldr	r0, [sp, #12]
 8003a66:	f002 ffd5 	bl	8006a14 <__sprint_r>
 8003a6a:	2800      	cmp	r0, #0
 8003a6c:	f47f aa1c 	bne.w	8002ea8 <_vfprintf_r+0xaf0>
 8003a70:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003a72:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003a76:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a7a:	e571      	b.n	8003560 <_vfprintf_r+0x11a8>
 8003a7c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a7e:	2b00      	cmp	r3, #0
 8003a80:	f340 8164 	ble.w	8003d4c <_vfprintf_r+0x1994>
 8003a84:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a86:	f1b9 0f00 	cmp.w	r9, #0
 8003a8a:	f040 8103 	bne.w	8003c94 <_vfprintf_r+0x18dc>
 8003a8e:	07c6      	lsls	r6, r0, #31
 8003a90:	f100 8100 	bmi.w	8003c94 <_vfprintf_r+0x18dc>
 8003a94:	9309      	str	r3, [sp, #36]	; 0x24
 8003a96:	2666      	movs	r6, #102	; 0x66
 8003a98:	0543      	lsls	r3, r0, #21
 8003a9a:	f100 8086 	bmi.w	8003baa <_vfprintf_r+0x17f2>
 8003a9e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003aa0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003aa4:	9304      	str	r3, [sp, #16]
 8003aa6:	e79e      	b.n	80039e6 <_vfprintf_r+0x162e>
 8003aa8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003aaa:	9907      	ldr	r1, [sp, #28]
 8003aac:	9803      	ldr	r0, [sp, #12]
 8003aae:	f002 ffb1 	bl	8006a14 <__sprint_r>
 8003ab2:	2800      	cmp	r0, #0
 8003ab4:	f47f a9f8 	bne.w	8002ea8 <_vfprintf_r+0xaf0>
 8003ab8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003aba:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003abc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003abe:	1ad3      	subs	r3, r2, r3
 8003ac0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ac4:	f7ff bb90 	b.w	80031e8 <_vfprintf_r+0xe30>
 8003ac8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003aca:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003acc:	4413      	add	r3, r2
 8003ace:	9309      	str	r3, [sp, #36]	; 0x24
 8003ad0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ad2:	2b00      	cmp	r3, #0
 8003ad4:	f340 8149 	ble.w	8003d6a <_vfprintf_r+0x19b2>
 8003ad8:	2667      	movs	r6, #103	; 0x67
 8003ada:	e7dd      	b.n	8003a98 <_vfprintf_r+0x16e0>
 8003adc:	2330      	movs	r3, #48	; 0x30
 8003ade:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003ae2:	2358      	movs	r3, #88	; 0x58
 8003ae4:	e595      	b.n	8003612 <_vfprintf_r+0x125a>
 8003ae6:	9803      	ldr	r0, [sp, #12]
 8003ae8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003aea:	4649      	mov	r1, r9
 8003aec:	f002 ff92 	bl	8006a14 <__sprint_r>
 8003af0:	2800      	cmp	r0, #0
 8003af2:	f47f a9e0 	bne.w	8002eb6 <_vfprintf_r+0xafe>
 8003af6:	f7fe bf0f 	b.w	8002918 <_vfprintf_r+0x560>
 8003afa:	a824      	add	r0, sp, #144	; 0x90
 8003afc:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003b00:	f002 fe90 	bl	8006824 <frexp>
 8003b04:	2200      	movs	r2, #0
 8003b06:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003b0a:	ec51 0b10 	vmov	r0, r1, d0
 8003b0e:	f7fd f813 	bl	8000b38 <__aeabi_dmul>
 8003b12:	2200      	movs	r2, #0
 8003b14:	2300      	movs	r3, #0
 8003b16:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003b1a:	f7fd fa75 	bl	8001008 <__aeabi_dcmpeq>
 8003b1e:	b108      	cbz	r0, 8003b24 <_vfprintf_r+0x176c>
 8003b20:	2301      	movs	r3, #1
 8003b22:	9324      	str	r3, [sp, #144]	; 0x90
 8003b24:	4b02      	ldr	r3, [pc, #8]	; (8003b30 <_vfprintf_r+0x1778>)
 8003b26:	9309      	str	r3, [sp, #36]	; 0x24
 8003b28:	e5ac      	b.n	8003684 <_vfprintf_r+0x12cc>
 8003b2a:	bf00      	nop
 8003b2c:	0800714c 	.word	0x0800714c
 8003b30:	08007108 	.word	0x08007108
 8003b34:	425d      	negs	r5, r3
 8003b36:	3310      	adds	r3, #16
 8003b38:	4bb9      	ldr	r3, [pc, #740]	; (8003e20 <_vfprintf_r+0x1a68>)
 8003b3a:	f280 8097 	bge.w	8003c6c <_vfprintf_r+0x18b4>
 8003b3e:	4619      	mov	r1, r3
 8003b40:	2610      	movs	r6, #16
 8003b42:	4623      	mov	r3, r4
 8003b44:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003b48:	460c      	mov	r4, r1
 8003b4a:	e005      	b.n	8003b58 <_vfprintf_r+0x17a0>
 8003b4c:	f10b 0b08 	add.w	fp, fp, #8
 8003b50:	3d10      	subs	r5, #16
 8003b52:	2d10      	cmp	r5, #16
 8003b54:	f340 8087 	ble.w	8003c66 <_vfprintf_r+0x18ae>
 8003b58:	3201      	adds	r2, #1
 8003b5a:	3310      	adds	r3, #16
 8003b5c:	2a07      	cmp	r2, #7
 8003b5e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003b62:	e9cb 4600 	strd	r4, r6, [fp]
 8003b66:	ddf1      	ble.n	8003b4c <_vfprintf_r+0x1794>
 8003b68:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b6a:	9907      	ldr	r1, [sp, #28]
 8003b6c:	4648      	mov	r0, r9
 8003b6e:	f002 ff51 	bl	8006a14 <__sprint_r>
 8003b72:	2800      	cmp	r0, #0
 8003b74:	f47f a998 	bne.w	8002ea8 <_vfprintf_r+0xaf0>
 8003b78:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003b7c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b80:	e7e6      	b.n	8003b50 <_vfprintf_r+0x1798>
 8003b82:	f109 0101 	add.w	r1, r9, #1
 8003b86:	9803      	ldr	r0, [sp, #12]
 8003b88:	f001 fe80 	bl	800588c <_malloc_r>
 8003b8c:	4607      	mov	r7, r0
 8003b8e:	2800      	cmp	r0, #0
 8003b90:	f000 813b 	beq.w	8003e0a <_vfprintf_r+0x1a52>
 8003b94:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003b98:	930e      	str	r3, [sp, #56]	; 0x38
 8003b9a:	f026 0320 	bic.w	r3, r6, #32
 8003b9e:	9304      	str	r3, [sp, #16]
 8003ba0:	46a0      	mov	r8, r4
 8003ba2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003ba4:	900a      	str	r0, [sp, #40]	; 0x28
 8003ba6:	e547      	b.n	8003638 <_vfprintf_r+0x1280>
 8003ba8:	2667      	movs	r6, #103	; 0x67
 8003baa:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003bac:	2200      	movs	r2, #0
 8003bae:	920f      	str	r2, [sp, #60]	; 0x3c
 8003bb0:	9214      	str	r2, [sp, #80]	; 0x50
 8003bb2:	7803      	ldrb	r3, [r0, #0]
 8003bb4:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003bb6:	2bff      	cmp	r3, #255	; 0xff
 8003bb8:	d00c      	beq.n	8003bd4 <_vfprintf_r+0x181c>
 8003bba:	4293      	cmp	r3, r2
 8003bbc:	da0a      	bge.n	8003bd4 <_vfprintf_r+0x181c>
 8003bbe:	7841      	ldrb	r1, [r0, #1]
 8003bc0:	1ad2      	subs	r2, r2, r3
 8003bc2:	b1a9      	cbz	r1, 8003bf0 <_vfprintf_r+0x1838>
 8003bc4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003bc6:	3301      	adds	r3, #1
 8003bc8:	9314      	str	r3, [sp, #80]	; 0x50
 8003bca:	460b      	mov	r3, r1
 8003bcc:	2bff      	cmp	r3, #255	; 0xff
 8003bce:	f100 0001 	add.w	r0, r0, #1
 8003bd2:	d1f2      	bne.n	8003bba <_vfprintf_r+0x1802>
 8003bd4:	9211      	str	r2, [sp, #68]	; 0x44
 8003bd6:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003bd8:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003bda:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003bdc:	901a      	str	r0, [sp, #104]	; 0x68
 8003bde:	4413      	add	r3, r2
 8003be0:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003be2:	fb02 1303 	mla	r3, r2, r3, r1
 8003be6:	9309      	str	r3, [sp, #36]	; 0x24
 8003be8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003bec:	9304      	str	r3, [sp, #16]
 8003bee:	e485      	b.n	80034fc <_vfprintf_r+0x1144>
 8003bf0:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003bf2:	3101      	adds	r1, #1
 8003bf4:	910f      	str	r1, [sp, #60]	; 0x3c
 8003bf6:	e7de      	b.n	8003bb6 <_vfprintf_r+0x17fe>
 8003bf8:	aa28      	add	r2, sp, #160	; 0xa0
 8003bfa:	ab25      	add	r3, sp, #148	; 0x94
 8003bfc:	e9cd 3200 	strd	r3, r2, [sp]
 8003c00:	2103      	movs	r1, #3
 8003c02:	ab24      	add	r3, sp, #144	; 0x90
 8003c04:	464a      	mov	r2, r9
 8003c06:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c0a:	9803      	ldr	r0, [sp, #12]
 8003c0c:	f000 fa5c 	bl	80040c8 <_dtoa_r>
 8003c10:	464d      	mov	r5, r9
 8003c12:	4607      	mov	r7, r0
 8003c14:	eb00 0409 	add.w	r4, r0, r9
 8003c18:	783b      	ldrb	r3, [r7, #0]
 8003c1a:	2b30      	cmp	r3, #48	; 0x30
 8003c1c:	f000 80be 	beq.w	8003d9c <_vfprintf_r+0x19e4>
 8003c20:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003c22:	442c      	add	r4, r5
 8003c24:	2200      	movs	r2, #0
 8003c26:	2300      	movs	r3, #0
 8003c28:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003c2c:	f7fd f9ec 	bl	8001008 <__aeabi_dcmpeq>
 8003c30:	b108      	cbz	r0, 8003c36 <_vfprintf_r+0x187e>
 8003c32:	4623      	mov	r3, r4
 8003c34:	e413      	b.n	800345e <_vfprintf_r+0x10a6>
 8003c36:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003c38:	42a3      	cmp	r3, r4
 8003c3a:	f4bf ac10 	bcs.w	800345e <_vfprintf_r+0x10a6>
 8003c3e:	2130      	movs	r1, #48	; 0x30
 8003c40:	1c5a      	adds	r2, r3, #1
 8003c42:	9228      	str	r2, [sp, #160]	; 0xa0
 8003c44:	7019      	strb	r1, [r3, #0]
 8003c46:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003c48:	429c      	cmp	r4, r3
 8003c4a:	d8f9      	bhi.n	8003c40 <_vfprintf_r+0x1888>
 8003c4c:	e407      	b.n	800345e <_vfprintf_r+0x10a6>
 8003c4e:	197c      	adds	r4, r7, r5
 8003c50:	e7e8      	b.n	8003c24 <_vfprintf_r+0x186c>
 8003c52:	f1b9 0f00 	cmp.w	r9, #0
 8003c56:	f000 8092 	beq.w	8003d7e <_vfprintf_r+0x19c6>
 8003c5a:	900a      	str	r0, [sp, #40]	; 0x28
 8003c5c:	e4ec      	b.n	8003638 <_vfprintf_r+0x1280>
 8003c5e:	900a      	str	r0, [sp, #40]	; 0x28
 8003c60:	f04f 0906 	mov.w	r9, #6
 8003c64:	e4e8      	b.n	8003638 <_vfprintf_r+0x1280>
 8003c66:	4621      	mov	r1, r4
 8003c68:	461c      	mov	r4, r3
 8003c6a:	460b      	mov	r3, r1
 8003c6c:	3201      	adds	r2, #1
 8003c6e:	442c      	add	r4, r5
 8003c70:	2a07      	cmp	r2, #7
 8003c72:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003c76:	e9cb 3500 	strd	r3, r5, [fp]
 8003c7a:	f300 80a9 	bgt.w	8003dd0 <_vfprintf_r+0x1a18>
 8003c7e:	f10b 0b08 	add.w	fp, fp, #8
 8003c82:	e470      	b.n	8003566 <_vfprintf_r+0x11ae>
 8003c84:	469a      	mov	sl, r3
 8003c86:	f7ff bb37 	b.w	80032f8 <_vfprintf_r+0xf40>
 8003c8a:	2301      	movs	r3, #1
 8003c8c:	9324      	str	r3, [sp, #144]	; 0x90
 8003c8e:	4b65      	ldr	r3, [pc, #404]	; (8003e24 <_vfprintf_r+0x1a6c>)
 8003c90:	9309      	str	r3, [sp, #36]	; 0x24
 8003c92:	e4f7      	b.n	8003684 <_vfprintf_r+0x12cc>
 8003c94:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003c96:	4413      	add	r3, r2
 8003c98:	444b      	add	r3, r9
 8003c9a:	9309      	str	r3, [sp, #36]	; 0x24
 8003c9c:	2666      	movs	r6, #102	; 0x66
 8003c9e:	e6fb      	b.n	8003a98 <_vfprintf_r+0x16e0>
 8003ca0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ca2:	9309      	str	r3, [sp, #36]	; 0x24
 8003ca4:	e694      	b.n	80039d0 <_vfprintf_r+0x1618>
 8003ca6:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003caa:	4664      	mov	r4, ip
 8003cac:	4d5e      	ldr	r5, [pc, #376]	; (8003e28 <_vfprintf_r+0x1a70>)
 8003cae:	e000      	b.n	8003cb2 <_vfprintf_r+0x18fa>
 8003cb0:	4614      	mov	r4, r2
 8003cb2:	fba5 1203 	umull	r1, r2, r5, r3
 8003cb6:	08d2      	lsrs	r2, r2, #3
 8003cb8:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003cbc:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003cc0:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003cc4:	4613      	mov	r3, r2
 8003cc6:	2b09      	cmp	r3, #9
 8003cc8:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003ccc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003cd0:	dcee      	bgt.n	8003cb0 <_vfprintf_r+0x18f8>
 8003cd2:	3330      	adds	r3, #48	; 0x30
 8003cd4:	3c02      	subs	r4, #2
 8003cd6:	b2db      	uxtb	r3, r3
 8003cd8:	45a4      	cmp	ip, r4
 8003cda:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003cde:	f240 8090 	bls.w	8003e02 <_vfprintf_r+0x1a4a>
 8003ce2:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003ce6:	4611      	mov	r1, r2
 8003ce8:	e001      	b.n	8003cee <_vfprintf_r+0x1936>
 8003cea:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003cee:	f804 3b01 	strb.w	r3, [r4], #1
 8003cf2:	458c      	cmp	ip, r1
 8003cf4:	d1f9      	bne.n	8003cea <_vfprintf_r+0x1932>
 8003cf6:	ab2a      	add	r3, sp, #168	; 0xa8
 8003cf8:	1a9b      	subs	r3, r3, r2
 8003cfa:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003cfe:	4413      	add	r3, r2
 8003d00:	f7ff bbe3 	b.w	80034ca <_vfprintf_r+0x1112>
 8003d04:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003d06:	4f49      	ldr	r7, [pc, #292]	; (8003e2c <_vfprintf_r+0x1a74>)
 8003d08:	2b00      	cmp	r3, #0
 8003d0a:	bfb6      	itet	lt
 8003d0c:	222d      	movlt	r2, #45	; 0x2d
 8003d0e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003d12:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003d16:	4b46      	ldr	r3, [pc, #280]	; (8003e30 <_vfprintf_r+0x1a78>)
 8003d18:	f7fe bf02 	b.w	8002b20 <_vfprintf_r+0x768>
 8003d1c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003d20:	f7ff b8c9 	b.w	8002eb6 <_vfprintf_r+0xafe>
 8003d24:	aa28      	add	r2, sp, #160	; 0xa0
 8003d26:	ab25      	add	r3, sp, #148	; 0x94
 8003d28:	e9cd 3200 	strd	r3, r2, [sp]
 8003d2c:	2103      	movs	r1, #3
 8003d2e:	ab24      	add	r3, sp, #144	; 0x90
 8003d30:	464a      	mov	r2, r9
 8003d32:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003d36:	9803      	ldr	r0, [sp, #12]
 8003d38:	f000 f9c6 	bl	80040c8 <_dtoa_r>
 8003d3c:	464d      	mov	r5, r9
 8003d3e:	4607      	mov	r7, r0
 8003d40:	2e46      	cmp	r6, #70	; 0x46
 8003d42:	eb07 0405 	add.w	r4, r7, r5
 8003d46:	f43f af67 	beq.w	8003c18 <_vfprintf_r+0x1860>
 8003d4a:	e76b      	b.n	8003c24 <_vfprintf_r+0x186c>
 8003d4c:	f1b9 0f00 	cmp.w	r9, #0
 8003d50:	d131      	bne.n	8003db6 <_vfprintf_r+0x19fe>
 8003d52:	07c5      	lsls	r5, r0, #31
 8003d54:	d42f      	bmi.n	8003db6 <_vfprintf_r+0x19fe>
 8003d56:	2301      	movs	r3, #1
 8003d58:	9304      	str	r3, [sp, #16]
 8003d5a:	9309      	str	r3, [sp, #36]	; 0x24
 8003d5c:	2666      	movs	r6, #102	; 0x66
 8003d5e:	e642      	b.n	80039e6 <_vfprintf_r+0x162e>
 8003d60:	07c3      	lsls	r3, r0, #31
 8003d62:	f57f abbf 	bpl.w	80034e4 <_vfprintf_r+0x112c>
 8003d66:	f7ff bbb9 	b.w	80034dc <_vfprintf_r+0x1124>
 8003d6a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003d6c:	f1c3 0301 	rsb	r3, r3, #1
 8003d70:	441a      	add	r2, r3
 8003d72:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003d76:	9209      	str	r2, [sp, #36]	; 0x24
 8003d78:	9304      	str	r3, [sp, #16]
 8003d7a:	2667      	movs	r6, #103	; 0x67
 8003d7c:	e633      	b.n	80039e6 <_vfprintf_r+0x162e>
 8003d7e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003d82:	f04f 0901 	mov.w	r9, #1
 8003d86:	e457      	b.n	8003638 <_vfprintf_r+0x1280>
 8003d88:	465a      	mov	r2, fp
 8003d8a:	e511      	b.n	80037b0 <_vfprintf_r+0x13f8>
 8003d8c:	2e47      	cmp	r6, #71	; 0x47
 8003d8e:	f47f af5e 	bne.w	8003c4e <_vfprintf_r+0x1896>
 8003d92:	f018 0f01 	tst.w	r8, #1
 8003d96:	f43f ab61 	beq.w	800345c <_vfprintf_r+0x10a4>
 8003d9a:	e7d1      	b.n	8003d40 <_vfprintf_r+0x1988>
 8003d9c:	2200      	movs	r2, #0
 8003d9e:	2300      	movs	r3, #0
 8003da0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003da4:	f7fd f930 	bl	8001008 <__aeabi_dcmpeq>
 8003da8:	2800      	cmp	r0, #0
 8003daa:	f47f af39 	bne.w	8003c20 <_vfprintf_r+0x1868>
 8003dae:	f1c5 0501 	rsb	r5, r5, #1
 8003db2:	9524      	str	r5, [sp, #144]	; 0x90
 8003db4:	e735      	b.n	8003c22 <_vfprintf_r+0x186a>
 8003db6:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003db8:	3301      	adds	r3, #1
 8003dba:	444b      	add	r3, r9
 8003dbc:	9309      	str	r3, [sp, #36]	; 0x24
 8003dbe:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003dc2:	9304      	str	r3, [sp, #16]
 8003dc4:	2666      	movs	r6, #102	; 0x66
 8003dc6:	e60e      	b.n	80039e6 <_vfprintf_r+0x162e>
 8003dc8:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003dcc:	f7ff bb7a 	b.w	80034c4 <_vfprintf_r+0x110c>
 8003dd0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003dd2:	9907      	ldr	r1, [sp, #28]
 8003dd4:	9803      	ldr	r0, [sp, #12]
 8003dd6:	f002 fe1d 	bl	8006a14 <__sprint_r>
 8003dda:	2800      	cmp	r0, #0
 8003ddc:	f47f a864 	bne.w	8002ea8 <_vfprintf_r+0xaf0>
 8003de0:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003de4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003de8:	f7ff bbbd 	b.w	8003566 <_vfprintf_r+0x11ae>
 8003dec:	9908      	ldr	r1, [sp, #32]
 8003dee:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003df2:	680b      	ldr	r3, [r1, #0]
 8003df4:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003df8:	1d0b      	adds	r3, r1, #4
 8003dfa:	4692      	mov	sl, r2
 8003dfc:	9308      	str	r3, [sp, #32]
 8003dfe:	f7fe bb59 	b.w	80024b4 <_vfprintf_r+0xfc>
 8003e02:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003e06:	f7ff bb60 	b.w	80034ca <_vfprintf_r+0x1112>
 8003e0a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003e0e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003e12:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003e16:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003e1a:	f7ff b84c 	b.w	8002eb6 <_vfprintf_r+0xafe>
 8003e1e:	bf00      	nop
 8003e20:	0800714c 	.word	0x0800714c
 8003e24:	0800711c 	.word	0x0800711c
 8003e28:	cccccccd 	.word	0xcccccccd
 8003e2c:	08007104 	.word	0x08007104
 8003e30:	08007100 	.word	0x08007100

08003e34 <__sbprintf>:
 8003e34:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003e38:	460c      	mov	r4, r1
 8003e3a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003e3e:	8989      	ldrh	r1, [r1, #12]
 8003e40:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003e42:	89e5      	ldrh	r5, [r4, #14]
 8003e44:	9619      	str	r6, [sp, #100]	; 0x64
 8003e46:	f021 0102 	bic.w	r1, r1, #2
 8003e4a:	4606      	mov	r6, r0
 8003e4c:	69e0      	ldr	r0, [r4, #28]
 8003e4e:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003e52:	4617      	mov	r7, r2
 8003e54:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003e58:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003e5a:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003e5e:	4698      	mov	r8, r3
 8003e60:	ad1a      	add	r5, sp, #104	; 0x68
 8003e62:	2300      	movs	r3, #0
 8003e64:	9007      	str	r0, [sp, #28]
 8003e66:	a816      	add	r0, sp, #88	; 0x58
 8003e68:	9209      	str	r2, [sp, #36]	; 0x24
 8003e6a:	9306      	str	r3, [sp, #24]
 8003e6c:	9500      	str	r5, [sp, #0]
 8003e6e:	9504      	str	r5, [sp, #16]
 8003e70:	9102      	str	r1, [sp, #8]
 8003e72:	9105      	str	r1, [sp, #20]
 8003e74:	f001 fc8a 	bl	800578c <__retarget_lock_init_recursive>
 8003e78:	4643      	mov	r3, r8
 8003e7a:	463a      	mov	r2, r7
 8003e7c:	4669      	mov	r1, sp
 8003e7e:	4630      	mov	r0, r6
 8003e80:	f7fe fa9a 	bl	80023b8 <_vfprintf_r>
 8003e84:	1e05      	subs	r5, r0, #0
 8003e86:	db07      	blt.n	8003e98 <__sbprintf+0x64>
 8003e88:	4630      	mov	r0, r6
 8003e8a:	4669      	mov	r1, sp
 8003e8c:	f001 f8d6 	bl	800503c <_fflush_r>
 8003e90:	2800      	cmp	r0, #0
 8003e92:	bf18      	it	ne
 8003e94:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003e98:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003e9c:	065b      	lsls	r3, r3, #25
 8003e9e:	d503      	bpl.n	8003ea8 <__sbprintf+0x74>
 8003ea0:	89a3      	ldrh	r3, [r4, #12]
 8003ea2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003ea6:	81a3      	strh	r3, [r4, #12]
 8003ea8:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003eaa:	f001 fc71 	bl	8005790 <__retarget_lock_close_recursive>
 8003eae:	4628      	mov	r0, r5
 8003eb0:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003eb4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003eb8 <__swsetup_r>:
 8003eb8:	b538      	push	{r3, r4, r5, lr}
 8003eba:	4b31      	ldr	r3, [pc, #196]	; (8003f80 <__swsetup_r+0xc8>)
 8003ebc:	681b      	ldr	r3, [r3, #0]
 8003ebe:	4605      	mov	r5, r0
 8003ec0:	460c      	mov	r4, r1
 8003ec2:	b113      	cbz	r3, 8003eca <__swsetup_r+0x12>
 8003ec4:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003ec6:	2a00      	cmp	r2, #0
 8003ec8:	d03a      	beq.n	8003f40 <__swsetup_r+0x88>
 8003eca:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003ece:	b293      	uxth	r3, r2
 8003ed0:	0718      	lsls	r0, r3, #28
 8003ed2:	d50c      	bpl.n	8003eee <__swsetup_r+0x36>
 8003ed4:	6920      	ldr	r0, [r4, #16]
 8003ed6:	b1a8      	cbz	r0, 8003f04 <__swsetup_r+0x4c>
 8003ed8:	f013 0201 	ands.w	r2, r3, #1
 8003edc:	d020      	beq.n	8003f20 <__swsetup_r+0x68>
 8003ede:	6963      	ldr	r3, [r4, #20]
 8003ee0:	2200      	movs	r2, #0
 8003ee2:	425b      	negs	r3, r3
 8003ee4:	61a3      	str	r3, [r4, #24]
 8003ee6:	60a2      	str	r2, [r4, #8]
 8003ee8:	b300      	cbz	r0, 8003f2c <__swsetup_r+0x74>
 8003eea:	2000      	movs	r0, #0
 8003eec:	bd38      	pop	{r3, r4, r5, pc}
 8003eee:	06d9      	lsls	r1, r3, #27
 8003ef0:	d53e      	bpl.n	8003f70 <__swsetup_r+0xb8>
 8003ef2:	0758      	lsls	r0, r3, #29
 8003ef4:	d428      	bmi.n	8003f48 <__swsetup_r+0x90>
 8003ef6:	6920      	ldr	r0, [r4, #16]
 8003ef8:	f042 0308 	orr.w	r3, r2, #8
 8003efc:	81a3      	strh	r3, [r4, #12]
 8003efe:	b29b      	uxth	r3, r3
 8003f00:	2800      	cmp	r0, #0
 8003f02:	d1e9      	bne.n	8003ed8 <__swsetup_r+0x20>
 8003f04:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003f08:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003f0c:	d0e4      	beq.n	8003ed8 <__swsetup_r+0x20>
 8003f0e:	4628      	mov	r0, r5
 8003f10:	4621      	mov	r1, r4
 8003f12:	f001 fc71 	bl	80057f8 <__smakebuf_r>
 8003f16:	89a3      	ldrh	r3, [r4, #12]
 8003f18:	6920      	ldr	r0, [r4, #16]
 8003f1a:	f013 0201 	ands.w	r2, r3, #1
 8003f1e:	d1de      	bne.n	8003ede <__swsetup_r+0x26>
 8003f20:	0799      	lsls	r1, r3, #30
 8003f22:	bf58      	it	pl
 8003f24:	6962      	ldrpl	r2, [r4, #20]
 8003f26:	60a2      	str	r2, [r4, #8]
 8003f28:	2800      	cmp	r0, #0
 8003f2a:	d1de      	bne.n	8003eea <__swsetup_r+0x32>
 8003f2c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003f30:	061a      	lsls	r2, r3, #24
 8003f32:	d5db      	bpl.n	8003eec <__swsetup_r+0x34>
 8003f34:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003f38:	81a3      	strh	r3, [r4, #12]
 8003f3a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003f3e:	bd38      	pop	{r3, r4, r5, pc}
 8003f40:	4618      	mov	r0, r3
 8003f42:	f001 f8d7 	bl	80050f4 <__sinit>
 8003f46:	e7c0      	b.n	8003eca <__swsetup_r+0x12>
 8003f48:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8003f4a:	b151      	cbz	r1, 8003f62 <__swsetup_r+0xaa>
 8003f4c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8003f50:	4299      	cmp	r1, r3
 8003f52:	d004      	beq.n	8003f5e <__swsetup_r+0xa6>
 8003f54:	4628      	mov	r0, r5
 8003f56:	f001 f96f 	bl	8005238 <_free_r>
 8003f5a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003f5e:	2300      	movs	r3, #0
 8003f60:	6323      	str	r3, [r4, #48]	; 0x30
 8003f62:	2300      	movs	r3, #0
 8003f64:	6920      	ldr	r0, [r4, #16]
 8003f66:	6063      	str	r3, [r4, #4]
 8003f68:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8003f6c:	6020      	str	r0, [r4, #0]
 8003f6e:	e7c3      	b.n	8003ef8 <__swsetup_r+0x40>
 8003f70:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8003f74:	2309      	movs	r3, #9
 8003f76:	602b      	str	r3, [r5, #0]
 8003f78:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003f7c:	81a2      	strh	r2, [r4, #12]
 8003f7e:	bd38      	pop	{r3, r4, r5, pc}
 8003f80:	20000020 	.word	0x20000020

08003f84 <register_fini>:
 8003f84:	4b02      	ldr	r3, [pc, #8]	; (8003f90 <register_fini+0xc>)
 8003f86:	b113      	cbz	r3, 8003f8e <register_fini+0xa>
 8003f88:	4802      	ldr	r0, [pc, #8]	; (8003f94 <register_fini+0x10>)
 8003f8a:	f000 b805 	b.w	8003f98 <atexit>
 8003f8e:	4770      	bx	lr
 8003f90:	00000000 	.word	0x00000000
 8003f94:	08005165 	.word	0x08005165

08003f98 <atexit>:
 8003f98:	2300      	movs	r3, #0
 8003f9a:	4601      	mov	r1, r0
 8003f9c:	461a      	mov	r2, r3
 8003f9e:	4618      	mov	r0, r3
 8003fa0:	f002 bd58 	b.w	8006a54 <__register_exitproc>

08003fa4 <quorem>:
 8003fa4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003fa8:	6903      	ldr	r3, [r0, #16]
 8003faa:	690f      	ldr	r7, [r1, #16]
 8003fac:	42bb      	cmp	r3, r7
 8003fae:	b083      	sub	sp, #12
 8003fb0:	f2c0 8086 	blt.w	80040c0 <quorem+0x11c>
 8003fb4:	3f01      	subs	r7, #1
 8003fb6:	f101 0914 	add.w	r9, r1, #20
 8003fba:	f100 0a14 	add.w	sl, r0, #20
 8003fbe:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8003fc2:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8003fc6:	00bc      	lsls	r4, r7, #2
 8003fc8:	3201      	adds	r2, #1
 8003fca:	fbb3 f8f2 	udiv	r8, r3, r2
 8003fce:	eb0a 0304 	add.w	r3, sl, r4
 8003fd2:	9400      	str	r4, [sp, #0]
 8003fd4:	eb09 0b04 	add.w	fp, r9, r4
 8003fd8:	9301      	str	r3, [sp, #4]
 8003fda:	f1b8 0f00 	cmp.w	r8, #0
 8003fde:	d038      	beq.n	8004052 <quorem+0xae>
 8003fe0:	2500      	movs	r5, #0
 8003fe2:	462e      	mov	r6, r5
 8003fe4:	46ce      	mov	lr, r9
 8003fe6:	46d4      	mov	ip, sl
 8003fe8:	f85e 4b04 	ldr.w	r4, [lr], #4
 8003fec:	f8dc 3000 	ldr.w	r3, [ip]
 8003ff0:	b2a2      	uxth	r2, r4
 8003ff2:	fb08 5502 	mla	r5, r8, r2, r5
 8003ff6:	0c22      	lsrs	r2, r4, #16
 8003ff8:	0c2c      	lsrs	r4, r5, #16
 8003ffa:	fb08 4202 	mla	r2, r8, r2, r4
 8003ffe:	b2ad      	uxth	r5, r5
 8004000:	1b75      	subs	r5, r6, r5
 8004002:	b296      	uxth	r6, r2
 8004004:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004008:	fa15 f383 	uxtah	r3, r5, r3
 800400c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004010:	b29b      	uxth	r3, r3
 8004012:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004016:	45f3      	cmp	fp, lr
 8004018:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800401c:	f84c 3b04 	str.w	r3, [ip], #4
 8004020:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004024:	d2e0      	bcs.n	8003fe8 <quorem+0x44>
 8004026:	9b00      	ldr	r3, [sp, #0]
 8004028:	f85a 3003 	ldr.w	r3, [sl, r3]
 800402c:	b98b      	cbnz	r3, 8004052 <quorem+0xae>
 800402e:	9a01      	ldr	r2, [sp, #4]
 8004030:	1f13      	subs	r3, r2, #4
 8004032:	459a      	cmp	sl, r3
 8004034:	d20c      	bcs.n	8004050 <quorem+0xac>
 8004036:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800403a:	b94b      	cbnz	r3, 8004050 <quorem+0xac>
 800403c:	f1a2 0308 	sub.w	r3, r2, #8
 8004040:	e002      	b.n	8004048 <quorem+0xa4>
 8004042:	681a      	ldr	r2, [r3, #0]
 8004044:	3b04      	subs	r3, #4
 8004046:	b91a      	cbnz	r2, 8004050 <quorem+0xac>
 8004048:	459a      	cmp	sl, r3
 800404a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800404e:	d3f8      	bcc.n	8004042 <quorem+0x9e>
 8004050:	6107      	str	r7, [r0, #16]
 8004052:	4604      	mov	r4, r0
 8004054:	f002 f944 	bl	80062e0 <__mcmp>
 8004058:	2800      	cmp	r0, #0
 800405a:	db2d      	blt.n	80040b8 <quorem+0x114>
 800405c:	f108 0801 	add.w	r8, r8, #1
 8004060:	4655      	mov	r5, sl
 8004062:	2300      	movs	r3, #0
 8004064:	f859 1b04 	ldr.w	r1, [r9], #4
 8004068:	6828      	ldr	r0, [r5, #0]
 800406a:	b28a      	uxth	r2, r1
 800406c:	1a9a      	subs	r2, r3, r2
 800406e:	0c0b      	lsrs	r3, r1, #16
 8004070:	fa12 f280 	uxtah	r2, r2, r0
 8004074:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004078:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800407c:	b292      	uxth	r2, r2
 800407e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004082:	45cb      	cmp	fp, r9
 8004084:	f845 2b04 	str.w	r2, [r5], #4
 8004088:	ea4f 4323 	mov.w	r3, r3, asr #16
 800408c:	d2ea      	bcs.n	8004064 <quorem+0xc0>
 800408e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004092:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004096:	b97a      	cbnz	r2, 80040b8 <quorem+0x114>
 8004098:	1f1a      	subs	r2, r3, #4
 800409a:	4592      	cmp	sl, r2
 800409c:	d20b      	bcs.n	80040b6 <quorem+0x112>
 800409e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80040a2:	b942      	cbnz	r2, 80040b6 <quorem+0x112>
 80040a4:	3b08      	subs	r3, #8
 80040a6:	e002      	b.n	80040ae <quorem+0x10a>
 80040a8:	681a      	ldr	r2, [r3, #0]
 80040aa:	3b04      	subs	r3, #4
 80040ac:	b91a      	cbnz	r2, 80040b6 <quorem+0x112>
 80040ae:	459a      	cmp	sl, r3
 80040b0:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80040b4:	d3f8      	bcc.n	80040a8 <quorem+0x104>
 80040b6:	6127      	str	r7, [r4, #16]
 80040b8:	4640      	mov	r0, r8
 80040ba:	b003      	add	sp, #12
 80040bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80040c0:	2000      	movs	r0, #0
 80040c2:	b003      	add	sp, #12
 80040c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

080040c8 <_dtoa_r>:
 80040c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80040cc:	ec55 4b10 	vmov	r4, r5, d0
 80040d0:	b09b      	sub	sp, #108	; 0x6c
 80040d2:	6c06      	ldr	r6, [r0, #64]	; 0x40
 80040d4:	9102      	str	r1, [sp, #8]
 80040d6:	4681      	mov	r9, r0
 80040d8:	9207      	str	r2, [sp, #28]
 80040da:	9305      	str	r3, [sp, #20]
 80040dc:	e9cd 4500 	strd	r4, r5, [sp]
 80040e0:	b156      	cbz	r6, 80040f8 <_dtoa_r+0x30>
 80040e2:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80040e4:	6072      	str	r2, [r6, #4]
 80040e6:	2301      	movs	r3, #1
 80040e8:	4093      	lsls	r3, r2
 80040ea:	60b3      	str	r3, [r6, #8]
 80040ec:	4631      	mov	r1, r6
 80040ee:	f001 ff07 	bl	8005f00 <_Bfree>
 80040f2:	2300      	movs	r3, #0
 80040f4:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80040f8:	f1b5 0800 	subs.w	r8, r5, #0
 80040fc:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80040fe:	bfb4      	ite	lt
 8004100:	2301      	movlt	r3, #1
 8004102:	2300      	movge	r3, #0
 8004104:	6013      	str	r3, [r2, #0]
 8004106:	4b76      	ldr	r3, [pc, #472]	; (80042e0 <_dtoa_r+0x218>)
 8004108:	bfbc      	itt	lt
 800410a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800410e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004112:	ea33 0308 	bics.w	r3, r3, r8
 8004116:	f000 80a6 	beq.w	8004266 <_dtoa_r+0x19e>
 800411a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800411e:	2200      	movs	r2, #0
 8004120:	2300      	movs	r3, #0
 8004122:	4630      	mov	r0, r6
 8004124:	4639      	mov	r1, r7
 8004126:	f7fc ff6f 	bl	8001008 <__aeabi_dcmpeq>
 800412a:	4605      	mov	r5, r0
 800412c:	b178      	cbz	r0, 800414e <_dtoa_r+0x86>
 800412e:	9a05      	ldr	r2, [sp, #20]
 8004130:	2301      	movs	r3, #1
 8004132:	6013      	str	r3, [r2, #0]
 8004134:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004136:	2b00      	cmp	r3, #0
 8004138:	f000 80c0 	beq.w	80042bc <_dtoa_r+0x1f4>
 800413c:	4b69      	ldr	r3, [pc, #420]	; (80042e4 <_dtoa_r+0x21c>)
 800413e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004140:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004144:	6013      	str	r3, [r2, #0]
 8004146:	4658      	mov	r0, fp
 8004148:	b01b      	add	sp, #108	; 0x6c
 800414a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800414e:	aa18      	add	r2, sp, #96	; 0x60
 8004150:	a919      	add	r1, sp, #100	; 0x64
 8004152:	ec47 6b10 	vmov	d0, r6, r7
 8004156:	4648      	mov	r0, r9
 8004158:	f002 f954 	bl	8006404 <__d2b>
 800415c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004160:	4682      	mov	sl, r0
 8004162:	f040 80a0 	bne.w	80042a6 <_dtoa_r+0x1de>
 8004166:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800416a:	442c      	add	r4, r5
 800416c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004170:	2b20      	cmp	r3, #32
 8004172:	f340 842c 	ble.w	80049ce <_dtoa_r+0x906>
 8004176:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800417a:	fa08 f803 	lsl.w	r8, r8, r3
 800417e:	9b00      	ldr	r3, [sp, #0]
 8004180:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004184:	fa23 f000 	lsr.w	r0, r3, r0
 8004188:	ea48 0000 	orr.w	r0, r8, r0
 800418c:	f7fc fc5a 	bl	8000a44 <__aeabi_ui2d>
 8004190:	2301      	movs	r3, #1
 8004192:	4606      	mov	r6, r0
 8004194:	3c01      	subs	r4, #1
 8004196:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800419a:	930f      	str	r3, [sp, #60]	; 0x3c
 800419c:	4630      	mov	r0, r6
 800419e:	4639      	mov	r1, r7
 80041a0:	2200      	movs	r2, #0
 80041a2:	4b51      	ldr	r3, [pc, #324]	; (80042e8 <_dtoa_r+0x220>)
 80041a4:	f7fc fb10 	bl	80007c8 <__aeabi_dsub>
 80041a8:	a347      	add	r3, pc, #284	; (adr r3, 80042c8 <_dtoa_r+0x200>)
 80041aa:	e9d3 2300 	ldrd	r2, r3, [r3]
 80041ae:	f7fc fcc3 	bl	8000b38 <__aeabi_dmul>
 80041b2:	a347      	add	r3, pc, #284	; (adr r3, 80042d0 <_dtoa_r+0x208>)
 80041b4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80041b8:	f7fc fb08 	bl	80007cc <__adddf3>
 80041bc:	4606      	mov	r6, r0
 80041be:	4620      	mov	r0, r4
 80041c0:	460f      	mov	r7, r1
 80041c2:	f7fc fc4f 	bl	8000a64 <__aeabi_i2d>
 80041c6:	a344      	add	r3, pc, #272	; (adr r3, 80042d8 <_dtoa_r+0x210>)
 80041c8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80041cc:	f7fc fcb4 	bl	8000b38 <__aeabi_dmul>
 80041d0:	4602      	mov	r2, r0
 80041d2:	460b      	mov	r3, r1
 80041d4:	4630      	mov	r0, r6
 80041d6:	4639      	mov	r1, r7
 80041d8:	f7fc faf8 	bl	80007cc <__adddf3>
 80041dc:	4606      	mov	r6, r0
 80041de:	460f      	mov	r7, r1
 80041e0:	f7fc ff5a 	bl	8001098 <__aeabi_d2iz>
 80041e4:	2200      	movs	r2, #0
 80041e6:	9006      	str	r0, [sp, #24]
 80041e8:	2300      	movs	r3, #0
 80041ea:	4630      	mov	r0, r6
 80041ec:	4639      	mov	r1, r7
 80041ee:	f7fc ff15 	bl	800101c <__aeabi_dcmplt>
 80041f2:	2800      	cmp	r0, #0
 80041f4:	f040 8273 	bne.w	80046de <_dtoa_r+0x616>
 80041f8:	9e06      	ldr	r6, [sp, #24]
 80041fa:	2e16      	cmp	r6, #22
 80041fc:	f200 825d 	bhi.w	80046ba <_dtoa_r+0x5f2>
 8004200:	4b3a      	ldr	r3, [pc, #232]	; (80042ec <_dtoa_r+0x224>)
 8004202:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004206:	e9d3 0100 	ldrd	r0, r1, [r3]
 800420a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800420e:	f7fc ff23 	bl	8001058 <__aeabi_dcmpgt>
 8004212:	2800      	cmp	r0, #0
 8004214:	f000 83d7 	beq.w	80049c6 <_dtoa_r+0x8fe>
 8004218:	1e73      	subs	r3, r6, #1
 800421a:	9306      	str	r3, [sp, #24]
 800421c:	2300      	movs	r3, #0
 800421e:	930d      	str	r3, [sp, #52]	; 0x34
 8004220:	1b2c      	subs	r4, r5, r4
 8004222:	f1b4 0801 	subs.w	r8, r4, #1
 8004226:	f100 8254 	bmi.w	80046d2 <_dtoa_r+0x60a>
 800422a:	2300      	movs	r3, #0
 800422c:	9308      	str	r3, [sp, #32]
 800422e:	9b06      	ldr	r3, [sp, #24]
 8004230:	2b00      	cmp	r3, #0
 8004232:	f2c0 8245 	blt.w	80046c0 <_dtoa_r+0x5f8>
 8004236:	4498      	add	r8, r3
 8004238:	930c      	str	r3, [sp, #48]	; 0x30
 800423a:	2300      	movs	r3, #0
 800423c:	930b      	str	r3, [sp, #44]	; 0x2c
 800423e:	9b02      	ldr	r3, [sp, #8]
 8004240:	2b09      	cmp	r3, #9
 8004242:	d85b      	bhi.n	80042fc <_dtoa_r+0x234>
 8004244:	2b05      	cmp	r3, #5
 8004246:	f340 83c0 	ble.w	80049ca <_dtoa_r+0x902>
 800424a:	3b04      	subs	r3, #4
 800424c:	9302      	str	r3, [sp, #8]
 800424e:	2500      	movs	r5, #0
 8004250:	9b02      	ldr	r3, [sp, #8]
 8004252:	3b02      	subs	r3, #2
 8004254:	2b03      	cmp	r3, #3
 8004256:	f200 8498 	bhi.w	8004b8a <_dtoa_r+0xac2>
 800425a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800425e:	03df      	.short	0x03df
 8004260:	03e803bf 	.word	0x03e803bf
 8004264:	04f5      	.short	0x04f5
 8004266:	9a05      	ldr	r2, [sp, #20]
 8004268:	f242 730f 	movw	r3, #9999	; 0x270f
 800426c:	6013      	str	r3, [r2, #0]
 800426e:	9b00      	ldr	r3, [sp, #0]
 8004270:	b983      	cbnz	r3, 8004294 <_dtoa_r+0x1cc>
 8004272:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004276:	b96b      	cbnz	r3, 8004294 <_dtoa_r+0x1cc>
 8004278:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800427a:	f8df b074 	ldr.w	fp, [pc, #116]	; 80042f0 <_dtoa_r+0x228>
 800427e:	2b00      	cmp	r3, #0
 8004280:	f43f af61 	beq.w	8004146 <_dtoa_r+0x7e>
 8004284:	f10b 0308 	add.w	r3, fp, #8
 8004288:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800428a:	4658      	mov	r0, fp
 800428c:	6013      	str	r3, [r2, #0]
 800428e:	b01b      	add	sp, #108	; 0x6c
 8004290:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004294:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004296:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80042f4 <_dtoa_r+0x22c>
 800429a:	2b00      	cmp	r3, #0
 800429c:	f43f af53 	beq.w	8004146 <_dtoa_r+0x7e>
 80042a0:	f10b 0303 	add.w	r3, fp, #3
 80042a4:	e7f0      	b.n	8004288 <_dtoa_r+0x1c0>
 80042a6:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80042aa:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80042ae:	950f      	str	r5, [sp, #60]	; 0x3c
 80042b0:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 80042b4:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 80042b8:	9d18      	ldr	r5, [sp, #96]	; 0x60
 80042ba:	e76f      	b.n	800419c <_dtoa_r+0xd4>
 80042bc:	f8df b038 	ldr.w	fp, [pc, #56]	; 80042f8 <_dtoa_r+0x230>
 80042c0:	4658      	mov	r0, fp
 80042c2:	b01b      	add	sp, #108	; 0x6c
 80042c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80042c8:	636f4361 	.word	0x636f4361
 80042cc:	3fd287a7 	.word	0x3fd287a7
 80042d0:	8b60c8b3 	.word	0x8b60c8b3
 80042d4:	3fc68a28 	.word	0x3fc68a28
 80042d8:	509f79fb 	.word	0x509f79fb
 80042dc:	3fd34413 	.word	0x3fd34413
 80042e0:	7ff00000 	.word	0x7ff00000
 80042e4:	08007139 	.word	0x08007139
 80042e8:	3ff80000 	.word	0x3ff80000
 80042ec:	08007198 	.word	0x08007198
 80042f0:	0800715c 	.word	0x0800715c
 80042f4:	08007168 	.word	0x08007168
 80042f8:	08007138 	.word	0x08007138
 80042fc:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004300:	2501      	movs	r5, #1
 8004302:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004306:	2300      	movs	r3, #0
 8004308:	9302      	str	r3, [sp, #8]
 800430a:	9307      	str	r3, [sp, #28]
 800430c:	2100      	movs	r1, #0
 800430e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004312:	940e      	str	r4, [sp, #56]	; 0x38
 8004314:	4648      	mov	r0, r9
 8004316:	f001 fdcd 	bl	8005eb4 <_Balloc>
 800431a:	2c0e      	cmp	r4, #14
 800431c:	4683      	mov	fp, r0
 800431e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004322:	f200 80fb 	bhi.w	800451c <_dtoa_r+0x454>
 8004326:	2d00      	cmp	r5, #0
 8004328:	f000 80f8 	beq.w	800451c <_dtoa_r+0x454>
 800432c:	ed9d 7b00 	vldr	d7, [sp]
 8004330:	9906      	ldr	r1, [sp, #24]
 8004332:	2900      	cmp	r1, #0
 8004334:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004338:	f340 83e5 	ble.w	8004b06 <_dtoa_r+0xa3e>
 800433c:	4b9d      	ldr	r3, [pc, #628]	; (80045b4 <_dtoa_r+0x4ec>)
 800433e:	f001 020f 	and.w	r2, r1, #15
 8004342:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004346:	ed93 7b00 	vldr	d7, [r3]
 800434a:	110c      	asrs	r4, r1, #4
 800434c:	06e2      	lsls	r2, r4, #27
 800434e:	ed8d 7b00 	vstr	d7, [sp]
 8004352:	f140 849e 	bpl.w	8004c92 <_dtoa_r+0xbca>
 8004356:	4b98      	ldr	r3, [pc, #608]	; (80045b8 <_dtoa_r+0x4f0>)
 8004358:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800435c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004360:	f7fc fd14 	bl	8000d8c <__aeabi_ddiv>
 8004364:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004368:	f004 040f 	and.w	r4, r4, #15
 800436c:	2603      	movs	r6, #3
 800436e:	b17c      	cbz	r4, 8004390 <_dtoa_r+0x2c8>
 8004370:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004374:	4d90      	ldr	r5, [pc, #576]	; (80045b8 <_dtoa_r+0x4f0>)
 8004376:	07e3      	lsls	r3, r4, #31
 8004378:	d504      	bpl.n	8004384 <_dtoa_r+0x2bc>
 800437a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800437e:	f7fc fbdb 	bl	8000b38 <__aeabi_dmul>
 8004382:	3601      	adds	r6, #1
 8004384:	1064      	asrs	r4, r4, #1
 8004386:	f105 0508 	add.w	r5, r5, #8
 800438a:	d1f4      	bne.n	8004376 <_dtoa_r+0x2ae>
 800438c:	e9cd 0100 	strd	r0, r1, [sp]
 8004390:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004394:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004398:	f7fc fcf8 	bl	8000d8c <__aeabi_ddiv>
 800439c:	e9cd 0100 	strd	r0, r1, [sp]
 80043a0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80043a2:	b143      	cbz	r3, 80043b6 <_dtoa_r+0x2ee>
 80043a4:	2200      	movs	r2, #0
 80043a6:	4b85      	ldr	r3, [pc, #532]	; (80045bc <_dtoa_r+0x4f4>)
 80043a8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80043ac:	f7fc fe36 	bl	800101c <__aeabi_dcmplt>
 80043b0:	2800      	cmp	r0, #0
 80043b2:	f040 84ff 	bne.w	8004db4 <_dtoa_r+0xcec>
 80043b6:	4630      	mov	r0, r6
 80043b8:	f7fc fb54 	bl	8000a64 <__aeabi_i2d>
 80043bc:	e9dd 2300 	ldrd	r2, r3, [sp]
 80043c0:	f7fc fbba 	bl	8000b38 <__aeabi_dmul>
 80043c4:	4b7e      	ldr	r3, [pc, #504]	; (80045c0 <_dtoa_r+0x4f8>)
 80043c6:	2200      	movs	r2, #0
 80043c8:	f7fc fa00 	bl	80007cc <__adddf3>
 80043cc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80043ce:	4606      	mov	r6, r0
 80043d0:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80043d4:	2b00      	cmp	r3, #0
 80043d6:	f000 841c 	beq.w	8004c12 <_dtoa_r+0xb4a>
 80043da:	9b06      	ldr	r3, [sp, #24]
 80043dc:	9316      	str	r3, [sp, #88]	; 0x58
 80043de:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80043e0:	9312      	str	r3, [sp, #72]	; 0x48
 80043e2:	e9dd 0100 	ldrd	r0, r1, [sp]
 80043e6:	f7fc fe57 	bl	8001098 <__aeabi_d2iz>
 80043ea:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80043ec:	4b71      	ldr	r3, [pc, #452]	; (80045b4 <_dtoa_r+0x4ec>)
 80043ee:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80043f2:	ed13 7b02 	vldr	d7, [r3, #-8]
 80043f6:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80043fa:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80043fe:	f7fc fb31 	bl	8000a64 <__aeabi_i2d>
 8004402:	460b      	mov	r3, r1
 8004404:	4602      	mov	r2, r0
 8004406:	e9dd 0100 	ldrd	r0, r1, [sp]
 800440a:	e9cd 6700 	strd	r6, r7, [sp]
 800440e:	f7fc f9db 	bl	80007c8 <__aeabi_dsub>
 8004412:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004414:	b2ed      	uxtb	r5, r5
 8004416:	4606      	mov	r6, r0
 8004418:	460f      	mov	r7, r1
 800441a:	f10b 0401 	add.w	r4, fp, #1
 800441e:	2b00      	cmp	r3, #0
 8004420:	f000 8458 	beq.w	8004cd4 <_dtoa_r+0xc0c>
 8004424:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004428:	2000      	movs	r0, #0
 800442a:	4966      	ldr	r1, [pc, #408]	; (80045c4 <_dtoa_r+0x4fc>)
 800442c:	f7fc fcae 	bl	8000d8c <__aeabi_ddiv>
 8004430:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004434:	f7fc f9c8 	bl	80007c8 <__aeabi_dsub>
 8004438:	f88b 5000 	strb.w	r5, [fp]
 800443c:	4632      	mov	r2, r6
 800443e:	463b      	mov	r3, r7
 8004440:	e9cd 0100 	strd	r0, r1, [sp]
 8004444:	f7fc fe08 	bl	8001058 <__aeabi_dcmpgt>
 8004448:	2800      	cmp	r0, #0
 800444a:	f040 8502 	bne.w	8004e52 <_dtoa_r+0xd8a>
 800444e:	4632      	mov	r2, r6
 8004450:	463b      	mov	r3, r7
 8004452:	2000      	movs	r0, #0
 8004454:	4959      	ldr	r1, [pc, #356]	; (80045bc <_dtoa_r+0x4f4>)
 8004456:	f7fc f9b7 	bl	80007c8 <__aeabi_dsub>
 800445a:	4602      	mov	r2, r0
 800445c:	460b      	mov	r3, r1
 800445e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004462:	f7fc fdf9 	bl	8001058 <__aeabi_dcmpgt>
 8004466:	2800      	cmp	r0, #0
 8004468:	f040 84fb 	bne.w	8004e62 <_dtoa_r+0xd9a>
 800446c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800446e:	2a01      	cmp	r2, #1
 8004470:	d050      	beq.n	8004514 <_dtoa_r+0x44c>
 8004472:	445a      	add	r2, fp
 8004474:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004478:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 800447c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004480:	4692      	mov	sl, r2
 8004482:	46cb      	mov	fp, r9
 8004484:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004488:	e00c      	b.n	80044a4 <_dtoa_r+0x3dc>
 800448a:	2000      	movs	r0, #0
 800448c:	494b      	ldr	r1, [pc, #300]	; (80045bc <_dtoa_r+0x4f4>)
 800448e:	f7fc f99b 	bl	80007c8 <__aeabi_dsub>
 8004492:	4642      	mov	r2, r8
 8004494:	464b      	mov	r3, r9
 8004496:	f7fc fdc1 	bl	800101c <__aeabi_dcmplt>
 800449a:	2800      	cmp	r0, #0
 800449c:	f040 84dc 	bne.w	8004e58 <_dtoa_r+0xd90>
 80044a0:	4554      	cmp	r4, sl
 80044a2:	d030      	beq.n	8004506 <_dtoa_r+0x43e>
 80044a4:	4640      	mov	r0, r8
 80044a6:	4649      	mov	r1, r9
 80044a8:	2200      	movs	r2, #0
 80044aa:	4b47      	ldr	r3, [pc, #284]	; (80045c8 <_dtoa_r+0x500>)
 80044ac:	f7fc fb44 	bl	8000b38 <__aeabi_dmul>
 80044b0:	2200      	movs	r2, #0
 80044b2:	4b45      	ldr	r3, [pc, #276]	; (80045c8 <_dtoa_r+0x500>)
 80044b4:	4680      	mov	r8, r0
 80044b6:	4689      	mov	r9, r1
 80044b8:	4630      	mov	r0, r6
 80044ba:	4639      	mov	r1, r7
 80044bc:	f7fc fb3c 	bl	8000b38 <__aeabi_dmul>
 80044c0:	460f      	mov	r7, r1
 80044c2:	4606      	mov	r6, r0
 80044c4:	f7fc fde8 	bl	8001098 <__aeabi_d2iz>
 80044c8:	4605      	mov	r5, r0
 80044ca:	f7fc facb 	bl	8000a64 <__aeabi_i2d>
 80044ce:	4602      	mov	r2, r0
 80044d0:	460b      	mov	r3, r1
 80044d2:	4630      	mov	r0, r6
 80044d4:	4639      	mov	r1, r7
 80044d6:	f7fc f977 	bl	80007c8 <__aeabi_dsub>
 80044da:	3530      	adds	r5, #48	; 0x30
 80044dc:	b2ed      	uxtb	r5, r5
 80044de:	4642      	mov	r2, r8
 80044e0:	464b      	mov	r3, r9
 80044e2:	f804 5b01 	strb.w	r5, [r4], #1
 80044e6:	4606      	mov	r6, r0
 80044e8:	460f      	mov	r7, r1
 80044ea:	f7fc fd97 	bl	800101c <__aeabi_dcmplt>
 80044ee:	4632      	mov	r2, r6
 80044f0:	463b      	mov	r3, r7
 80044f2:	2800      	cmp	r0, #0
 80044f4:	d0c9      	beq.n	800448a <_dtoa_r+0x3c2>
 80044f6:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80044f8:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80044fc:	9306      	str	r3, [sp, #24]
 80044fe:	46d9      	mov	r9, fp
 8004500:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004504:	e236      	b.n	8004974 <_dtoa_r+0x8ac>
 8004506:	46d9      	mov	r9, fp
 8004508:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 800450c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004510:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004514:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004518:	e9cd 3400 	strd	r3, r4, [sp]
 800451c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 800451e:	2b00      	cmp	r3, #0
 8004520:	f2c0 80ae 	blt.w	8004680 <_dtoa_r+0x5b8>
 8004524:	9a06      	ldr	r2, [sp, #24]
 8004526:	2a0e      	cmp	r2, #14
 8004528:	f300 80aa 	bgt.w	8004680 <_dtoa_r+0x5b8>
 800452c:	4b21      	ldr	r3, [pc, #132]	; (80045b4 <_dtoa_r+0x4ec>)
 800452e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004532:	ed93 7b00 	vldr	d7, [r3]
 8004536:	9b07      	ldr	r3, [sp, #28]
 8004538:	2b00      	cmp	r3, #0
 800453a:	ed8d 7b02 	vstr	d7, [sp, #8]
 800453e:	f2c0 82be 	blt.w	8004abe <_dtoa_r+0x9f6>
 8004542:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004546:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800454a:	4630      	mov	r0, r6
 800454c:	4639      	mov	r1, r7
 800454e:	f7fc fc1d 	bl	8000d8c <__aeabi_ddiv>
 8004552:	f7fc fda1 	bl	8001098 <__aeabi_d2iz>
 8004556:	4605      	mov	r5, r0
 8004558:	f7fc fa84 	bl	8000a64 <__aeabi_i2d>
 800455c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004560:	f7fc faea 	bl	8000b38 <__aeabi_dmul>
 8004564:	460b      	mov	r3, r1
 8004566:	4602      	mov	r2, r0
 8004568:	4639      	mov	r1, r7
 800456a:	4630      	mov	r0, r6
 800456c:	f7fc f92c 	bl	80007c8 <__aeabi_dsub>
 8004570:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004574:	f88b 3000 	strb.w	r3, [fp]
 8004578:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800457a:	2b01      	cmp	r3, #1
 800457c:	4606      	mov	r6, r0
 800457e:	460f      	mov	r7, r1
 8004580:	f10b 0401 	add.w	r4, fp, #1
 8004584:	d053      	beq.n	800462e <_dtoa_r+0x566>
 8004586:	2200      	movs	r2, #0
 8004588:	4b0f      	ldr	r3, [pc, #60]	; (80045c8 <_dtoa_r+0x500>)
 800458a:	f7fc fad5 	bl	8000b38 <__aeabi_dmul>
 800458e:	2200      	movs	r2, #0
 8004590:	2300      	movs	r3, #0
 8004592:	4606      	mov	r6, r0
 8004594:	460f      	mov	r7, r1
 8004596:	f7fc fd37 	bl	8001008 <__aeabi_dcmpeq>
 800459a:	2800      	cmp	r0, #0
 800459c:	f040 81ea 	bne.w	8004974 <_dtoa_r+0x8ac>
 80045a0:	f8cd a000 	str.w	sl, [sp]
 80045a4:	f8cd 901c 	str.w	r9, [sp, #28]
 80045a8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80045ac:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 80045b0:	e017      	b.n	80045e2 <_dtoa_r+0x51a>
 80045b2:	bf00      	nop
 80045b4:	08007198 	.word	0x08007198
 80045b8:	08007170 	.word	0x08007170
 80045bc:	3ff00000 	.word	0x3ff00000
 80045c0:	401c0000 	.word	0x401c0000
 80045c4:	3fe00000 	.word	0x3fe00000
 80045c8:	40240000 	.word	0x40240000
 80045cc:	f7fc fab4 	bl	8000b38 <__aeabi_dmul>
 80045d0:	2200      	movs	r2, #0
 80045d2:	2300      	movs	r3, #0
 80045d4:	4606      	mov	r6, r0
 80045d6:	460f      	mov	r7, r1
 80045d8:	f7fc fd16 	bl	8001008 <__aeabi_dcmpeq>
 80045dc:	2800      	cmp	r0, #0
 80045de:	f040 833d 	bne.w	8004c5c <_dtoa_r+0xb94>
 80045e2:	464a      	mov	r2, r9
 80045e4:	4653      	mov	r3, sl
 80045e6:	4630      	mov	r0, r6
 80045e8:	4639      	mov	r1, r7
 80045ea:	f7fc fbcf 	bl	8000d8c <__aeabi_ddiv>
 80045ee:	f7fc fd53 	bl	8001098 <__aeabi_d2iz>
 80045f2:	4605      	mov	r5, r0
 80045f4:	f7fc fa36 	bl	8000a64 <__aeabi_i2d>
 80045f8:	464a      	mov	r2, r9
 80045fa:	4653      	mov	r3, sl
 80045fc:	f7fc fa9c 	bl	8000b38 <__aeabi_dmul>
 8004600:	4602      	mov	r2, r0
 8004602:	460b      	mov	r3, r1
 8004604:	4630      	mov	r0, r6
 8004606:	4639      	mov	r1, r7
 8004608:	f7fc f8de 	bl	80007c8 <__aeabi_dsub>
 800460c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004610:	f804 cb01 	strb.w	ip, [r4], #1
 8004614:	eba4 0c0b 	sub.w	ip, r4, fp
 8004618:	45e0      	cmp	r8, ip
 800461a:	4606      	mov	r6, r0
 800461c:	460f      	mov	r7, r1
 800461e:	f04f 0200 	mov.w	r2, #0
 8004622:	4bc1      	ldr	r3, [pc, #772]	; (8004928 <_dtoa_r+0x860>)
 8004624:	d1d2      	bne.n	80045cc <_dtoa_r+0x504>
 8004626:	f8dd a000 	ldr.w	sl, [sp]
 800462a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800462e:	4632      	mov	r2, r6
 8004630:	463b      	mov	r3, r7
 8004632:	4630      	mov	r0, r6
 8004634:	4639      	mov	r1, r7
 8004636:	f7fc f8c9 	bl	80007cc <__adddf3>
 800463a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800463e:	4606      	mov	r6, r0
 8004640:	460f      	mov	r7, r1
 8004642:	f7fc fd09 	bl	8001058 <__aeabi_dcmpgt>
 8004646:	b958      	cbnz	r0, 8004660 <_dtoa_r+0x598>
 8004648:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800464c:	4630      	mov	r0, r6
 800464e:	4639      	mov	r1, r7
 8004650:	f7fc fcda 	bl	8001008 <__aeabi_dcmpeq>
 8004654:	2800      	cmp	r0, #0
 8004656:	f000 818d 	beq.w	8004974 <_dtoa_r+0x8ac>
 800465a:	07e9      	lsls	r1, r5, #31
 800465c:	f140 818a 	bpl.w	8004974 <_dtoa_r+0x8ac>
 8004660:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004664:	e005      	b.n	8004672 <_dtoa_r+0x5aa>
 8004666:	459b      	cmp	fp, r3
 8004668:	f000 8373 	beq.w	8004d52 <_dtoa_r+0xc8a>
 800466c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004670:	461c      	mov	r4, r3
 8004672:	2d39      	cmp	r5, #57	; 0x39
 8004674:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004678:	d0f5      	beq.n	8004666 <_dtoa_r+0x59e>
 800467a:	3501      	adds	r5, #1
 800467c:	701d      	strb	r5, [r3, #0]
 800467e:	e179      	b.n	8004974 <_dtoa_r+0x8ac>
 8004680:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004682:	2a00      	cmp	r2, #0
 8004684:	d03b      	beq.n	80046fe <_dtoa_r+0x636>
 8004686:	9a02      	ldr	r2, [sp, #8]
 8004688:	2a01      	cmp	r2, #1
 800468a:	f340 820b 	ble.w	8004aa4 <_dtoa_r+0x9dc>
 800468e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004690:	1e5f      	subs	r7, r3, #1
 8004692:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004694:	42bb      	cmp	r3, r7
 8004696:	f2c0 82e6 	blt.w	8004c66 <_dtoa_r+0xb9e>
 800469a:	1bdf      	subs	r7, r3, r7
 800469c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800469e:	2b00      	cmp	r3, #0
 80046a0:	f2c0 830b 	blt.w	8004cba <_dtoa_r+0xbf2>
 80046a4:	9a08      	ldr	r2, [sp, #32]
 80046a6:	4614      	mov	r4, r2
 80046a8:	441a      	add	r2, r3
 80046aa:	4498      	add	r8, r3
 80046ac:	9208      	str	r2, [sp, #32]
 80046ae:	2101      	movs	r1, #1
 80046b0:	4648      	mov	r0, r9
 80046b2:	f001 fcbf 	bl	8006034 <__i2b>
 80046b6:	4605      	mov	r5, r0
 80046b8:	e024      	b.n	8004704 <_dtoa_r+0x63c>
 80046ba:	2301      	movs	r3, #1
 80046bc:	930d      	str	r3, [sp, #52]	; 0x34
 80046be:	e5af      	b.n	8004220 <_dtoa_r+0x158>
 80046c0:	9a08      	ldr	r2, [sp, #32]
 80046c2:	9b06      	ldr	r3, [sp, #24]
 80046c4:	1ad2      	subs	r2, r2, r3
 80046c6:	425b      	negs	r3, r3
 80046c8:	930b      	str	r3, [sp, #44]	; 0x2c
 80046ca:	2300      	movs	r3, #0
 80046cc:	9208      	str	r2, [sp, #32]
 80046ce:	930c      	str	r3, [sp, #48]	; 0x30
 80046d0:	e5b5      	b.n	800423e <_dtoa_r+0x176>
 80046d2:	f1c4 0301 	rsb	r3, r4, #1
 80046d6:	9308      	str	r3, [sp, #32]
 80046d8:	f04f 0800 	mov.w	r8, #0
 80046dc:	e5a7      	b.n	800422e <_dtoa_r+0x166>
 80046de:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80046e2:	4640      	mov	r0, r8
 80046e4:	f7fc f9be 	bl	8000a64 <__aeabi_i2d>
 80046e8:	4632      	mov	r2, r6
 80046ea:	463b      	mov	r3, r7
 80046ec:	f7fc fc8c 	bl	8001008 <__aeabi_dcmpeq>
 80046f0:	2800      	cmp	r0, #0
 80046f2:	f47f ad81 	bne.w	80041f8 <_dtoa_r+0x130>
 80046f6:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80046fa:	9306      	str	r3, [sp, #24]
 80046fc:	e57c      	b.n	80041f8 <_dtoa_r+0x130>
 80046fe:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004700:	9c08      	ldr	r4, [sp, #32]
 8004702:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004704:	2c00      	cmp	r4, #0
 8004706:	dd0c      	ble.n	8004722 <_dtoa_r+0x65a>
 8004708:	f1b8 0f00 	cmp.w	r8, #0
 800470c:	dd09      	ble.n	8004722 <_dtoa_r+0x65a>
 800470e:	4544      	cmp	r4, r8
 8004710:	9a08      	ldr	r2, [sp, #32]
 8004712:	4623      	mov	r3, r4
 8004714:	bfa8      	it	ge
 8004716:	4643      	movge	r3, r8
 8004718:	1ad2      	subs	r2, r2, r3
 800471a:	9208      	str	r2, [sp, #32]
 800471c:	1ae4      	subs	r4, r4, r3
 800471e:	eba8 0803 	sub.w	r8, r8, r3
 8004722:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004724:	b16b      	cbz	r3, 8004742 <_dtoa_r+0x67a>
 8004726:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004728:	2a00      	cmp	r2, #0
 800472a:	f000 8290 	beq.w	8004c4e <_dtoa_r+0xb86>
 800472e:	1bde      	subs	r6, r3, r7
 8004730:	2f00      	cmp	r7, #0
 8004732:	f040 819b 	bne.w	8004a6c <_dtoa_r+0x9a4>
 8004736:	4651      	mov	r1, sl
 8004738:	4632      	mov	r2, r6
 800473a:	4648      	mov	r0, r9
 800473c:	f001 fd2a 	bl	8006194 <__pow5mult>
 8004740:	4682      	mov	sl, r0
 8004742:	2101      	movs	r1, #1
 8004744:	4648      	mov	r0, r9
 8004746:	f001 fc75 	bl	8006034 <__i2b>
 800474a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800474c:	4606      	mov	r6, r0
 800474e:	2a00      	cmp	r2, #0
 8004750:	f040 8125 	bne.w	800499e <_dtoa_r+0x8d6>
 8004754:	9b02      	ldr	r3, [sp, #8]
 8004756:	2b01      	cmp	r3, #1
 8004758:	f340 816c 	ble.w	8004a34 <_dtoa_r+0x96c>
 800475c:	2001      	movs	r0, #1
 800475e:	4440      	add	r0, r8
 8004760:	f010 001f 	ands.w	r0, r0, #31
 8004764:	f000 8119 	beq.w	800499a <_dtoa_r+0x8d2>
 8004768:	f1c0 0320 	rsb	r3, r0, #32
 800476c:	2b04      	cmp	r3, #4
 800476e:	f340 83ac 	ble.w	8004eca <_dtoa_r+0xe02>
 8004772:	f1c0 001c 	rsb	r0, r0, #28
 8004776:	9b08      	ldr	r3, [sp, #32]
 8004778:	4403      	add	r3, r0
 800477a:	9308      	str	r3, [sp, #32]
 800477c:	4404      	add	r4, r0
 800477e:	4480      	add	r8, r0
 8004780:	9b08      	ldr	r3, [sp, #32]
 8004782:	2b00      	cmp	r3, #0
 8004784:	dd05      	ble.n	8004792 <_dtoa_r+0x6ca>
 8004786:	4651      	mov	r1, sl
 8004788:	461a      	mov	r2, r3
 800478a:	4648      	mov	r0, r9
 800478c:	f001 fd52 	bl	8006234 <__lshift>
 8004790:	4682      	mov	sl, r0
 8004792:	f1b8 0f00 	cmp.w	r8, #0
 8004796:	dd05      	ble.n	80047a4 <_dtoa_r+0x6dc>
 8004798:	4631      	mov	r1, r6
 800479a:	4642      	mov	r2, r8
 800479c:	4648      	mov	r0, r9
 800479e:	f001 fd49 	bl	8006234 <__lshift>
 80047a2:	4606      	mov	r6, r0
 80047a4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80047a6:	2b00      	cmp	r3, #0
 80047a8:	d177      	bne.n	800489a <_dtoa_r+0x7d2>
 80047aa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80047ac:	2b00      	cmp	r3, #0
 80047ae:	f340 8209 	ble.w	8004bc4 <_dtoa_r+0xafc>
 80047b2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80047b4:	2b00      	cmp	r3, #0
 80047b6:	f000 8089 	beq.w	80048cc <_dtoa_r+0x804>
 80047ba:	2c00      	cmp	r4, #0
 80047bc:	f300 816b 	bgt.w	8004a96 <_dtoa_r+0x9ce>
 80047c0:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80047c2:	2b00      	cmp	r3, #0
 80047c4:	f040 81cd 	bne.w	8004b62 <_dtoa_r+0xa9a>
 80047c8:	46a8      	mov	r8, r5
 80047ca:	9a00      	ldr	r2, [sp, #0]
 80047cc:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 80047d0:	f002 0201 	and.w	r2, r2, #1
 80047d4:	920a      	str	r2, [sp, #40]	; 0x28
 80047d6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80047d8:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 80047dc:	441a      	add	r2, r3
 80047de:	465f      	mov	r7, fp
 80047e0:	9209      	str	r2, [sp, #36]	; 0x24
 80047e2:	46b3      	mov	fp, r6
 80047e4:	4659      	mov	r1, fp
 80047e6:	4650      	mov	r0, sl
 80047e8:	f7ff fbdc 	bl	8003fa4 <quorem>
 80047ec:	4629      	mov	r1, r5
 80047ee:	4604      	mov	r4, r0
 80047f0:	4650      	mov	r0, sl
 80047f2:	f001 fd75 	bl	80062e0 <__mcmp>
 80047f6:	4659      	mov	r1, fp
 80047f8:	4606      	mov	r6, r0
 80047fa:	4642      	mov	r2, r8
 80047fc:	4648      	mov	r0, r9
 80047fe:	f001 fd8b 	bl	8006318 <__mdiff>
 8004802:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004806:	9300      	str	r3, [sp, #0]
 8004808:	68c3      	ldr	r3, [r0, #12]
 800480a:	4601      	mov	r1, r0
 800480c:	2b00      	cmp	r3, #0
 800480e:	f040 81d4 	bne.w	8004bba <_dtoa_r+0xaf2>
 8004812:	9008      	str	r0, [sp, #32]
 8004814:	4650      	mov	r0, sl
 8004816:	f001 fd63 	bl	80062e0 <__mcmp>
 800481a:	9a08      	ldr	r2, [sp, #32]
 800481c:	9007      	str	r0, [sp, #28]
 800481e:	4611      	mov	r1, r2
 8004820:	4648      	mov	r0, r9
 8004822:	f001 fb6d 	bl	8005f00 <_Bfree>
 8004826:	9b07      	ldr	r3, [sp, #28]
 8004828:	b933      	cbnz	r3, 8004838 <_dtoa_r+0x770>
 800482a:	9a02      	ldr	r2, [sp, #8]
 800482c:	b922      	cbnz	r2, 8004838 <_dtoa_r+0x770>
 800482e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004830:	2b00      	cmp	r3, #0
 8004832:	f000 8319 	beq.w	8004e68 <_dtoa_r+0xda0>
 8004836:	9b02      	ldr	r3, [sp, #8]
 8004838:	2e00      	cmp	r6, #0
 800483a:	f2c0 821c 	blt.w	8004c76 <_dtoa_r+0xbae>
 800483e:	d105      	bne.n	800484c <_dtoa_r+0x784>
 8004840:	9a02      	ldr	r2, [sp, #8]
 8004842:	b91a      	cbnz	r2, 800484c <_dtoa_r+0x784>
 8004844:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004846:	2a00      	cmp	r2, #0
 8004848:	f000 8215 	beq.w	8004c76 <_dtoa_r+0xbae>
 800484c:	2b00      	cmp	r3, #0
 800484e:	f107 0401 	add.w	r4, r7, #1
 8004852:	f300 8225 	bgt.w	8004ca0 <_dtoa_r+0xbd8>
 8004856:	9b00      	ldr	r3, [sp, #0]
 8004858:	703b      	strb	r3, [r7, #0]
 800485a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800485c:	42bb      	cmp	r3, r7
 800485e:	f000 8230 	beq.w	8004cc2 <_dtoa_r+0xbfa>
 8004862:	4651      	mov	r1, sl
 8004864:	2300      	movs	r3, #0
 8004866:	220a      	movs	r2, #10
 8004868:	4648      	mov	r0, r9
 800486a:	f001 fb53 	bl	8005f14 <__multadd>
 800486e:	4545      	cmp	r5, r8
 8004870:	4682      	mov	sl, r0
 8004872:	4629      	mov	r1, r5
 8004874:	f04f 0300 	mov.w	r3, #0
 8004878:	f04f 020a 	mov.w	r2, #10
 800487c:	4648      	mov	r0, r9
 800487e:	f000 8196 	beq.w	8004bae <_dtoa_r+0xae6>
 8004882:	f001 fb47 	bl	8005f14 <__multadd>
 8004886:	4641      	mov	r1, r8
 8004888:	4605      	mov	r5, r0
 800488a:	2300      	movs	r3, #0
 800488c:	220a      	movs	r2, #10
 800488e:	4648      	mov	r0, r9
 8004890:	f001 fb40 	bl	8005f14 <__multadd>
 8004894:	4627      	mov	r7, r4
 8004896:	4680      	mov	r8, r0
 8004898:	e7a4      	b.n	80047e4 <_dtoa_r+0x71c>
 800489a:	4631      	mov	r1, r6
 800489c:	4650      	mov	r0, sl
 800489e:	f001 fd1f 	bl	80062e0 <__mcmp>
 80048a2:	2800      	cmp	r0, #0
 80048a4:	da81      	bge.n	80047aa <_dtoa_r+0x6e2>
 80048a6:	9f06      	ldr	r7, [sp, #24]
 80048a8:	4651      	mov	r1, sl
 80048aa:	2300      	movs	r3, #0
 80048ac:	220a      	movs	r2, #10
 80048ae:	4648      	mov	r0, r9
 80048b0:	3f01      	subs	r7, #1
 80048b2:	9706      	str	r7, [sp, #24]
 80048b4:	f001 fb2e 	bl	8005f14 <__multadd>
 80048b8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80048ba:	4682      	mov	sl, r0
 80048bc:	2b00      	cmp	r3, #0
 80048be:	f040 82eb 	bne.w	8004e98 <_dtoa_r+0xdd0>
 80048c2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80048c4:	2b00      	cmp	r3, #0
 80048c6:	f340 82f3 	ble.w	8004eb0 <_dtoa_r+0xde8>
 80048ca:	9309      	str	r3, [sp, #36]	; 0x24
 80048cc:	465c      	mov	r4, fp
 80048ce:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80048d2:	e002      	b.n	80048da <_dtoa_r+0x812>
 80048d4:	f001 fb1e 	bl	8005f14 <__multadd>
 80048d8:	4682      	mov	sl, r0
 80048da:	4631      	mov	r1, r6
 80048dc:	4650      	mov	r0, sl
 80048de:	f7ff fb61 	bl	8003fa4 <quorem>
 80048e2:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80048e6:	f804 7b01 	strb.w	r7, [r4], #1
 80048ea:	eba4 030b 	sub.w	r3, r4, fp
 80048ee:	4598      	cmp	r8, r3
 80048f0:	f04f 020a 	mov.w	r2, #10
 80048f4:	f04f 0300 	mov.w	r3, #0
 80048f8:	4651      	mov	r1, sl
 80048fa:	4648      	mov	r0, r9
 80048fc:	dcea      	bgt.n	80048d4 <_dtoa_r+0x80c>
 80048fe:	2300      	movs	r3, #0
 8004900:	9700      	str	r7, [sp, #0]
 8004902:	9302      	str	r3, [sp, #8]
 8004904:	4651      	mov	r1, sl
 8004906:	2201      	movs	r2, #1
 8004908:	4648      	mov	r0, r9
 800490a:	f001 fc93 	bl	8006234 <__lshift>
 800490e:	4631      	mov	r1, r6
 8004910:	4682      	mov	sl, r0
 8004912:	f001 fce5 	bl	80062e0 <__mcmp>
 8004916:	2800      	cmp	r0, #0
 8004918:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 800491c:	dc14      	bgt.n	8004948 <_dtoa_r+0x880>
 800491e:	d108      	bne.n	8004932 <_dtoa_r+0x86a>
 8004920:	9b00      	ldr	r3, [sp, #0]
 8004922:	07db      	lsls	r3, r3, #31
 8004924:	d410      	bmi.n	8004948 <_dtoa_r+0x880>
 8004926:	e004      	b.n	8004932 <_dtoa_r+0x86a>
 8004928:	40240000 	.word	0x40240000
 800492c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004930:	461c      	mov	r4, r3
 8004932:	2a30      	cmp	r2, #48	; 0x30
 8004934:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004938:	d0f8      	beq.n	800492c <_dtoa_r+0x864>
 800493a:	e00b      	b.n	8004954 <_dtoa_r+0x88c>
 800493c:	459b      	cmp	fp, r3
 800493e:	f000 814e 	beq.w	8004bde <_dtoa_r+0xb16>
 8004942:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004946:	461c      	mov	r4, r3
 8004948:	2a39      	cmp	r2, #57	; 0x39
 800494a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 800494e:	d0f5      	beq.n	800493c <_dtoa_r+0x874>
 8004950:	3201      	adds	r2, #1
 8004952:	701a      	strb	r2, [r3, #0]
 8004954:	4631      	mov	r1, r6
 8004956:	4648      	mov	r0, r9
 8004958:	f001 fad2 	bl	8005f00 <_Bfree>
 800495c:	b155      	cbz	r5, 8004974 <_dtoa_r+0x8ac>
 800495e:	9902      	ldr	r1, [sp, #8]
 8004960:	b121      	cbz	r1, 800496c <_dtoa_r+0x8a4>
 8004962:	42a9      	cmp	r1, r5
 8004964:	d002      	beq.n	800496c <_dtoa_r+0x8a4>
 8004966:	4648      	mov	r0, r9
 8004968:	f001 faca 	bl	8005f00 <_Bfree>
 800496c:	4629      	mov	r1, r5
 800496e:	4648      	mov	r0, r9
 8004970:	f001 fac6 	bl	8005f00 <_Bfree>
 8004974:	4651      	mov	r1, sl
 8004976:	4648      	mov	r0, r9
 8004978:	f001 fac2 	bl	8005f00 <_Bfree>
 800497c:	2200      	movs	r2, #0
 800497e:	9b06      	ldr	r3, [sp, #24]
 8004980:	7022      	strb	r2, [r4, #0]
 8004982:	9a05      	ldr	r2, [sp, #20]
 8004984:	3301      	adds	r3, #1
 8004986:	6013      	str	r3, [r2, #0]
 8004988:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800498a:	2b00      	cmp	r3, #0
 800498c:	f43f abdb 	beq.w	8004146 <_dtoa_r+0x7e>
 8004990:	4658      	mov	r0, fp
 8004992:	601c      	str	r4, [r3, #0]
 8004994:	b01b      	add	sp, #108	; 0x6c
 8004996:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800499a:	201c      	movs	r0, #28
 800499c:	e6eb      	b.n	8004776 <_dtoa_r+0x6ae>
 800499e:	4601      	mov	r1, r0
 80049a0:	4648      	mov	r0, r9
 80049a2:	f001 fbf7 	bl	8006194 <__pow5mult>
 80049a6:	9b02      	ldr	r3, [sp, #8]
 80049a8:	2b01      	cmp	r3, #1
 80049aa:	4606      	mov	r6, r0
 80049ac:	f340 80d4 	ble.w	8004b58 <_dtoa_r+0xa90>
 80049b0:	2300      	movs	r3, #0
 80049b2:	930c      	str	r3, [sp, #48]	; 0x30
 80049b4:	6933      	ldr	r3, [r6, #16]
 80049b6:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 80049ba:	6918      	ldr	r0, [r3, #16]
 80049bc:	f001 faea 	bl	8005f94 <__hi0bits>
 80049c0:	f1c0 0020 	rsb	r0, r0, #32
 80049c4:	e6cb      	b.n	800475e <_dtoa_r+0x696>
 80049c6:	900d      	str	r0, [sp, #52]	; 0x34
 80049c8:	e42a      	b.n	8004220 <_dtoa_r+0x158>
 80049ca:	2501      	movs	r5, #1
 80049cc:	e440      	b.n	8004250 <_dtoa_r+0x188>
 80049ce:	f1c3 0820 	rsb	r8, r3, #32
 80049d2:	9b00      	ldr	r3, [sp, #0]
 80049d4:	fa03 f008 	lsl.w	r0, r3, r8
 80049d8:	f7ff bbd8 	b.w	800418c <_dtoa_r+0xc4>
 80049dc:	2300      	movs	r3, #0
 80049de:	930a      	str	r3, [sp, #40]	; 0x28
 80049e0:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 80049e4:	4413      	add	r3, r2
 80049e6:	930e      	str	r3, [sp, #56]	; 0x38
 80049e8:	3301      	adds	r3, #1
 80049ea:	2b01      	cmp	r3, #1
 80049ec:	461e      	mov	r6, r3
 80049ee:	9309      	str	r3, [sp, #36]	; 0x24
 80049f0:	bfb8      	it	lt
 80049f2:	2601      	movlt	r6, #1
 80049f4:	2100      	movs	r1, #0
 80049f6:	2e17      	cmp	r6, #23
 80049f8:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80049fc:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80049fe:	f77f ac89 	ble.w	8004314 <_dtoa_r+0x24c>
 8004a02:	2201      	movs	r2, #1
 8004a04:	2304      	movs	r3, #4
 8004a06:	005b      	lsls	r3, r3, #1
 8004a08:	f103 0014 	add.w	r0, r3, #20
 8004a0c:	42b0      	cmp	r0, r6
 8004a0e:	4611      	mov	r1, r2
 8004a10:	f102 0201 	add.w	r2, r2, #1
 8004a14:	d9f7      	bls.n	8004a06 <_dtoa_r+0x93e>
 8004a16:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004a1a:	e47b      	b.n	8004314 <_dtoa_r+0x24c>
 8004a1c:	2300      	movs	r3, #0
 8004a1e:	930a      	str	r3, [sp, #40]	; 0x28
 8004a20:	9e07      	ldr	r6, [sp, #28]
 8004a22:	2e00      	cmp	r6, #0
 8004a24:	f340 80e2 	ble.w	8004bec <_dtoa_r+0xb24>
 8004a28:	960e      	str	r6, [sp, #56]	; 0x38
 8004a2a:	9609      	str	r6, [sp, #36]	; 0x24
 8004a2c:	e7e2      	b.n	80049f4 <_dtoa_r+0x92c>
 8004a2e:	2301      	movs	r3, #1
 8004a30:	930a      	str	r3, [sp, #40]	; 0x28
 8004a32:	e7f5      	b.n	8004a20 <_dtoa_r+0x958>
 8004a34:	9b00      	ldr	r3, [sp, #0]
 8004a36:	2b00      	cmp	r3, #0
 8004a38:	f47f ae90 	bne.w	800475c <_dtoa_r+0x694>
 8004a3c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004a40:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004a44:	2b00      	cmp	r3, #0
 8004a46:	f040 8192 	bne.w	8004d6e <_dtoa_r+0xca6>
 8004a4a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004a4e:	0d1b      	lsrs	r3, r3, #20
 8004a50:	051b      	lsls	r3, r3, #20
 8004a52:	b12b      	cbz	r3, 8004a60 <_dtoa_r+0x998>
 8004a54:	9b08      	ldr	r3, [sp, #32]
 8004a56:	3301      	adds	r3, #1
 8004a58:	9308      	str	r3, [sp, #32]
 8004a5a:	f108 0801 	add.w	r8, r8, #1
 8004a5e:	2301      	movs	r3, #1
 8004a60:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004a62:	930c      	str	r3, [sp, #48]	; 0x30
 8004a64:	2a00      	cmp	r2, #0
 8004a66:	f43f ae79 	beq.w	800475c <_dtoa_r+0x694>
 8004a6a:	e7a3      	b.n	80049b4 <_dtoa_r+0x8ec>
 8004a6c:	463a      	mov	r2, r7
 8004a6e:	4629      	mov	r1, r5
 8004a70:	4648      	mov	r0, r9
 8004a72:	f001 fb8f 	bl	8006194 <__pow5mult>
 8004a76:	4652      	mov	r2, sl
 8004a78:	4601      	mov	r1, r0
 8004a7a:	4605      	mov	r5, r0
 8004a7c:	4648      	mov	r0, r9
 8004a7e:	f001 fae3 	bl	8006048 <__multiply>
 8004a82:	4651      	mov	r1, sl
 8004a84:	4607      	mov	r7, r0
 8004a86:	4648      	mov	r0, r9
 8004a88:	f001 fa3a 	bl	8005f00 <_Bfree>
 8004a8c:	46ba      	mov	sl, r7
 8004a8e:	2e00      	cmp	r6, #0
 8004a90:	f43f ae57 	beq.w	8004742 <_dtoa_r+0x67a>
 8004a94:	e64f      	b.n	8004736 <_dtoa_r+0x66e>
 8004a96:	4629      	mov	r1, r5
 8004a98:	4622      	mov	r2, r4
 8004a9a:	4648      	mov	r0, r9
 8004a9c:	f001 fbca 	bl	8006234 <__lshift>
 8004aa0:	4605      	mov	r5, r0
 8004aa2:	e68d      	b.n	80047c0 <_dtoa_r+0x6f8>
 8004aa4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004aa6:	2a00      	cmp	r2, #0
 8004aa8:	f000 815d 	beq.w	8004d66 <_dtoa_r+0xc9e>
 8004aac:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004ab0:	9a08      	ldr	r2, [sp, #32]
 8004ab2:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004ab4:	4614      	mov	r4, r2
 8004ab6:	441a      	add	r2, r3
 8004ab8:	4498      	add	r8, r3
 8004aba:	9208      	str	r2, [sp, #32]
 8004abc:	e5f7      	b.n	80046ae <_dtoa_r+0x5e6>
 8004abe:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004ac0:	2b00      	cmp	r3, #0
 8004ac2:	f73f ad3e 	bgt.w	8004542 <_dtoa_r+0x47a>
 8004ac6:	f040 80bc 	bne.w	8004c42 <_dtoa_r+0xb7a>
 8004aca:	ec51 0b17 	vmov	r0, r1, d7
 8004ace:	2200      	movs	r2, #0
 8004ad0:	4bb2      	ldr	r3, [pc, #712]	; (8004d9c <_dtoa_r+0xcd4>)
 8004ad2:	f7fc f831 	bl	8000b38 <__aeabi_dmul>
 8004ad6:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004ada:	f7fc fab3 	bl	8001044 <__aeabi_dcmpge>
 8004ade:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004ae0:	4635      	mov	r5, r6
 8004ae2:	2800      	cmp	r0, #0
 8004ae4:	d176      	bne.n	8004bd4 <_dtoa_r+0xb0c>
 8004ae6:	9a06      	ldr	r2, [sp, #24]
 8004ae8:	2331      	movs	r3, #49	; 0x31
 8004aea:	3201      	adds	r2, #1
 8004aec:	9206      	str	r2, [sp, #24]
 8004aee:	f88b 3000 	strb.w	r3, [fp]
 8004af2:	f10b 0401 	add.w	r4, fp, #1
 8004af6:	4631      	mov	r1, r6
 8004af8:	4648      	mov	r0, r9
 8004afa:	f001 fa01 	bl	8005f00 <_Bfree>
 8004afe:	2d00      	cmp	r5, #0
 8004b00:	f47f af34 	bne.w	800496c <_dtoa_r+0x8a4>
 8004b04:	e736      	b.n	8004974 <_dtoa_r+0x8ac>
 8004b06:	f000 8142 	beq.w	8004d8e <_dtoa_r+0xcc6>
 8004b0a:	9b06      	ldr	r3, [sp, #24]
 8004b0c:	425c      	negs	r4, r3
 8004b0e:	4ba4      	ldr	r3, [pc, #656]	; (8004da0 <_dtoa_r+0xcd8>)
 8004b10:	f004 020f 	and.w	r2, r4, #15
 8004b14:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004b18:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004b1c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004b20:	f7fc f80a 	bl	8000b38 <__aeabi_dmul>
 8004b24:	1124      	asrs	r4, r4, #4
 8004b26:	e9cd 0100 	strd	r0, r1, [sp]
 8004b2a:	f000 81c6 	beq.w	8004eba <_dtoa_r+0xdf2>
 8004b2e:	4d9d      	ldr	r5, [pc, #628]	; (8004da4 <_dtoa_r+0xcdc>)
 8004b30:	2300      	movs	r3, #0
 8004b32:	2602      	movs	r6, #2
 8004b34:	07e7      	lsls	r7, r4, #31
 8004b36:	d505      	bpl.n	8004b44 <_dtoa_r+0xa7c>
 8004b38:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004b3c:	f7fb fffc 	bl	8000b38 <__aeabi_dmul>
 8004b40:	3601      	adds	r6, #1
 8004b42:	2301      	movs	r3, #1
 8004b44:	1064      	asrs	r4, r4, #1
 8004b46:	f105 0508 	add.w	r5, r5, #8
 8004b4a:	d1f3      	bne.n	8004b34 <_dtoa_r+0xa6c>
 8004b4c:	2b00      	cmp	r3, #0
 8004b4e:	f43f ac27 	beq.w	80043a0 <_dtoa_r+0x2d8>
 8004b52:	e9cd 0100 	strd	r0, r1, [sp]
 8004b56:	e423      	b.n	80043a0 <_dtoa_r+0x2d8>
 8004b58:	9b00      	ldr	r3, [sp, #0]
 8004b5a:	2b00      	cmp	r3, #0
 8004b5c:	f43f af6e 	beq.w	8004a3c <_dtoa_r+0x974>
 8004b60:	e726      	b.n	80049b0 <_dtoa_r+0x8e8>
 8004b62:	6869      	ldr	r1, [r5, #4]
 8004b64:	4648      	mov	r0, r9
 8004b66:	f001 f9a5 	bl	8005eb4 <_Balloc>
 8004b6a:	692b      	ldr	r3, [r5, #16]
 8004b6c:	3302      	adds	r3, #2
 8004b6e:	009a      	lsls	r2, r3, #2
 8004b70:	4604      	mov	r4, r0
 8004b72:	f105 010c 	add.w	r1, r5, #12
 8004b76:	300c      	adds	r0, #12
 8004b78:	f7fb fcc2 	bl	8000500 <memcpy>
 8004b7c:	4621      	mov	r1, r4
 8004b7e:	2201      	movs	r2, #1
 8004b80:	4648      	mov	r0, r9
 8004b82:	f001 fb57 	bl	8006234 <__lshift>
 8004b86:	4680      	mov	r8, r0
 8004b88:	e61f      	b.n	80047ca <_dtoa_r+0x702>
 8004b8a:	2400      	movs	r4, #0
 8004b8c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004b90:	4621      	mov	r1, r4
 8004b92:	4648      	mov	r0, r9
 8004b94:	f001 f98e 	bl	8005eb4 <_Balloc>
 8004b98:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004b9c:	930e      	str	r3, [sp, #56]	; 0x38
 8004b9e:	9309      	str	r3, [sp, #36]	; 0x24
 8004ba0:	2301      	movs	r3, #1
 8004ba2:	4683      	mov	fp, r0
 8004ba4:	9407      	str	r4, [sp, #28]
 8004ba6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004baa:	930a      	str	r3, [sp, #40]	; 0x28
 8004bac:	e4b6      	b.n	800451c <_dtoa_r+0x454>
 8004bae:	f001 f9b1 	bl	8005f14 <__multadd>
 8004bb2:	4627      	mov	r7, r4
 8004bb4:	4605      	mov	r5, r0
 8004bb6:	4680      	mov	r8, r0
 8004bb8:	e614      	b.n	80047e4 <_dtoa_r+0x71c>
 8004bba:	4648      	mov	r0, r9
 8004bbc:	f001 f9a0 	bl	8005f00 <_Bfree>
 8004bc0:	2301      	movs	r3, #1
 8004bc2:	e639      	b.n	8004838 <_dtoa_r+0x770>
 8004bc4:	9b02      	ldr	r3, [sp, #8]
 8004bc6:	2b02      	cmp	r3, #2
 8004bc8:	f77f adf3 	ble.w	80047b2 <_dtoa_r+0x6ea>
 8004bcc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004bce:	2b00      	cmp	r3, #0
 8004bd0:	f000 80cf 	beq.w	8004d72 <_dtoa_r+0xcaa>
 8004bd4:	9b07      	ldr	r3, [sp, #28]
 8004bd6:	43db      	mvns	r3, r3
 8004bd8:	9306      	str	r3, [sp, #24]
 8004bda:	465c      	mov	r4, fp
 8004bdc:	e78b      	b.n	8004af6 <_dtoa_r+0xa2e>
 8004bde:	9a06      	ldr	r2, [sp, #24]
 8004be0:	2331      	movs	r3, #49	; 0x31
 8004be2:	3201      	adds	r2, #1
 8004be4:	9206      	str	r2, [sp, #24]
 8004be6:	f88b 3000 	strb.w	r3, [fp]
 8004bea:	e6b3      	b.n	8004954 <_dtoa_r+0x88c>
 8004bec:	2401      	movs	r4, #1
 8004bee:	9409      	str	r4, [sp, #36]	; 0x24
 8004bf0:	9407      	str	r4, [sp, #28]
 8004bf2:	f7ff bb8b 	b.w	800430c <_dtoa_r+0x244>
 8004bf6:	4630      	mov	r0, r6
 8004bf8:	f7fb ff34 	bl	8000a64 <__aeabi_i2d>
 8004bfc:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004c00:	f7fb ff9a 	bl	8000b38 <__aeabi_dmul>
 8004c04:	2200      	movs	r2, #0
 8004c06:	4b68      	ldr	r3, [pc, #416]	; (8004da8 <_dtoa_r+0xce0>)
 8004c08:	f7fb fde0 	bl	80007cc <__adddf3>
 8004c0c:	4606      	mov	r6, r0
 8004c0e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004c12:	2200      	movs	r2, #0
 8004c14:	4b61      	ldr	r3, [pc, #388]	; (8004d9c <_dtoa_r+0xcd4>)
 8004c16:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004c1a:	f7fb fdd5 	bl	80007c8 <__aeabi_dsub>
 8004c1e:	4632      	mov	r2, r6
 8004c20:	463b      	mov	r3, r7
 8004c22:	4604      	mov	r4, r0
 8004c24:	460d      	mov	r5, r1
 8004c26:	f7fc fa17 	bl	8001058 <__aeabi_dcmpgt>
 8004c2a:	2800      	cmp	r0, #0
 8004c2c:	d14f      	bne.n	8004cce <_dtoa_r+0xc06>
 8004c2e:	4632      	mov	r2, r6
 8004c30:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004c34:	4620      	mov	r0, r4
 8004c36:	4629      	mov	r1, r5
 8004c38:	f7fc f9f0 	bl	800101c <__aeabi_dcmplt>
 8004c3c:	2800      	cmp	r0, #0
 8004c3e:	f43f ac69 	beq.w	8004514 <_dtoa_r+0x44c>
 8004c42:	2600      	movs	r6, #0
 8004c44:	4635      	mov	r5, r6
 8004c46:	e7c5      	b.n	8004bd4 <_dtoa_r+0xb0c>
 8004c48:	2301      	movs	r3, #1
 8004c4a:	930a      	str	r3, [sp, #40]	; 0x28
 8004c4c:	e6c8      	b.n	80049e0 <_dtoa_r+0x918>
 8004c4e:	4651      	mov	r1, sl
 8004c50:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004c52:	4648      	mov	r0, r9
 8004c54:	f001 fa9e 	bl	8006194 <__pow5mult>
 8004c58:	4682      	mov	sl, r0
 8004c5a:	e572      	b.n	8004742 <_dtoa_r+0x67a>
 8004c5c:	f8dd a000 	ldr.w	sl, [sp]
 8004c60:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004c64:	e686      	b.n	8004974 <_dtoa_r+0x8ac>
 8004c66:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004c68:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004c6a:	1afb      	subs	r3, r7, r3
 8004c6c:	441a      	add	r2, r3
 8004c6e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004c72:	2700      	movs	r7, #0
 8004c74:	e512      	b.n	800469c <_dtoa_r+0x5d4>
 8004c76:	2b00      	cmp	r3, #0
 8004c78:	9402      	str	r4, [sp, #8]
 8004c7a:	465e      	mov	r6, fp
 8004c7c:	f107 0401 	add.w	r4, r7, #1
 8004c80:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004c84:	f300 80ba 	bgt.w	8004dfc <_dtoa_r+0xd34>
 8004c88:	9b00      	ldr	r3, [sp, #0]
 8004c8a:	9502      	str	r5, [sp, #8]
 8004c8c:	703b      	strb	r3, [r7, #0]
 8004c8e:	4645      	mov	r5, r8
 8004c90:	e660      	b.n	8004954 <_dtoa_r+0x88c>
 8004c92:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004c96:	2602      	movs	r6, #2
 8004c98:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004c9c:	f7ff bb67 	b.w	800436e <_dtoa_r+0x2a6>
 8004ca0:	9b00      	ldr	r3, [sp, #0]
 8004ca2:	2b39      	cmp	r3, #57	; 0x39
 8004ca4:	465e      	mov	r6, fp
 8004ca6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004caa:	f000 80b9 	beq.w	8004e20 <_dtoa_r+0xd58>
 8004cae:	9b00      	ldr	r3, [sp, #0]
 8004cb0:	9502      	str	r5, [sp, #8]
 8004cb2:	3301      	adds	r3, #1
 8004cb4:	703b      	strb	r3, [r7, #0]
 8004cb6:	4645      	mov	r5, r8
 8004cb8:	e64c      	b.n	8004954 <_dtoa_r+0x88c>
 8004cba:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004cbe:	1a9c      	subs	r4, r3, r2
 8004cc0:	e4f5      	b.n	80046ae <_dtoa_r+0x5e6>
 8004cc2:	465e      	mov	r6, fp
 8004cc4:	9502      	str	r5, [sp, #8]
 8004cc6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004cca:	4645      	mov	r5, r8
 8004ccc:	e61a      	b.n	8004904 <_dtoa_r+0x83c>
 8004cce:	2600      	movs	r6, #0
 8004cd0:	4635      	mov	r5, r6
 8004cd2:	e708      	b.n	8004ae6 <_dtoa_r+0xa1e>
 8004cd4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004cd8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004cdc:	f7fb ff2c 	bl	8000b38 <__aeabi_dmul>
 8004ce0:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004ce2:	f88b 5000 	strb.w	r5, [fp]
 8004ce6:	2b01      	cmp	r3, #1
 8004ce8:	e9cd 0100 	strd	r0, r1, [sp]
 8004cec:	d020      	beq.n	8004d30 <_dtoa_r+0xc68>
 8004cee:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004cf0:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004cf4:	445b      	add	r3, fp
 8004cf6:	4698      	mov	r8, r3
 8004cf8:	2200      	movs	r2, #0
 8004cfa:	4b2c      	ldr	r3, [pc, #176]	; (8004dac <_dtoa_r+0xce4>)
 8004cfc:	4630      	mov	r0, r6
 8004cfe:	4639      	mov	r1, r7
 8004d00:	f7fb ff1a 	bl	8000b38 <__aeabi_dmul>
 8004d04:	460f      	mov	r7, r1
 8004d06:	4606      	mov	r6, r0
 8004d08:	f7fc f9c6 	bl	8001098 <__aeabi_d2iz>
 8004d0c:	4605      	mov	r5, r0
 8004d0e:	f7fb fea9 	bl	8000a64 <__aeabi_i2d>
 8004d12:	3530      	adds	r5, #48	; 0x30
 8004d14:	4602      	mov	r2, r0
 8004d16:	460b      	mov	r3, r1
 8004d18:	4630      	mov	r0, r6
 8004d1a:	4639      	mov	r1, r7
 8004d1c:	f7fb fd54 	bl	80007c8 <__aeabi_dsub>
 8004d20:	f804 5b01 	strb.w	r5, [r4], #1
 8004d24:	4544      	cmp	r4, r8
 8004d26:	4606      	mov	r6, r0
 8004d28:	460f      	mov	r7, r1
 8004d2a:	d1e5      	bne.n	8004cf8 <_dtoa_r+0xc30>
 8004d2c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004d30:	4b1f      	ldr	r3, [pc, #124]	; (8004db0 <_dtoa_r+0xce8>)
 8004d32:	2200      	movs	r2, #0
 8004d34:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d38:	f7fb fd48 	bl	80007cc <__adddf3>
 8004d3c:	4632      	mov	r2, r6
 8004d3e:	463b      	mov	r3, r7
 8004d40:	f7fc f96c 	bl	800101c <__aeabi_dcmplt>
 8004d44:	2800      	cmp	r0, #0
 8004d46:	d070      	beq.n	8004e2a <_dtoa_r+0xd62>
 8004d48:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004d4a:	9306      	str	r3, [sp, #24]
 8004d4c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004d50:	e48f      	b.n	8004672 <_dtoa_r+0x5aa>
 8004d52:	2330      	movs	r3, #48	; 0x30
 8004d54:	f88b 3000 	strb.w	r3, [fp]
 8004d58:	9b06      	ldr	r3, [sp, #24]
 8004d5a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004d5e:	3301      	adds	r3, #1
 8004d60:	9306      	str	r3, [sp, #24]
 8004d62:	465b      	mov	r3, fp
 8004d64:	e489      	b.n	800467a <_dtoa_r+0x5b2>
 8004d66:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004d68:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004d6c:	e6a0      	b.n	8004ab0 <_dtoa_r+0x9e8>
 8004d6e:	2300      	movs	r3, #0
 8004d70:	e676      	b.n	8004a60 <_dtoa_r+0x998>
 8004d72:	4631      	mov	r1, r6
 8004d74:	2205      	movs	r2, #5
 8004d76:	4648      	mov	r0, r9
 8004d78:	f001 f8cc 	bl	8005f14 <__multadd>
 8004d7c:	4601      	mov	r1, r0
 8004d7e:	4606      	mov	r6, r0
 8004d80:	4650      	mov	r0, sl
 8004d82:	f001 faad 	bl	80062e0 <__mcmp>
 8004d86:	2800      	cmp	r0, #0
 8004d88:	f73f aead 	bgt.w	8004ae6 <_dtoa_r+0xa1e>
 8004d8c:	e722      	b.n	8004bd4 <_dtoa_r+0xb0c>
 8004d8e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004d92:	2602      	movs	r6, #2
 8004d94:	ed8d 7b00 	vstr	d7, [sp]
 8004d98:	f7ff bb02 	b.w	80043a0 <_dtoa_r+0x2d8>
 8004d9c:	40140000 	.word	0x40140000
 8004da0:	08007198 	.word	0x08007198
 8004da4:	08007170 	.word	0x08007170
 8004da8:	401c0000 	.word	0x401c0000
 8004dac:	40240000 	.word	0x40240000
 8004db0:	3fe00000 	.word	0x3fe00000
 8004db4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004db6:	2b00      	cmp	r3, #0
 8004db8:	f43f af1d 	beq.w	8004bf6 <_dtoa_r+0xb2e>
 8004dbc:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004dbe:	2c00      	cmp	r4, #0
 8004dc0:	f77f aba8 	ble.w	8004514 <_dtoa_r+0x44c>
 8004dc4:	2200      	movs	r2, #0
 8004dc6:	4b45      	ldr	r3, [pc, #276]	; (8004edc <_dtoa_r+0xe14>)
 8004dc8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004dcc:	f7fb feb4 	bl	8000b38 <__aeabi_dmul>
 8004dd0:	e9cd 0100 	strd	r0, r1, [sp]
 8004dd4:	1c70      	adds	r0, r6, #1
 8004dd6:	f7fb fe45 	bl	8000a64 <__aeabi_i2d>
 8004dda:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004dde:	f7fb feab 	bl	8000b38 <__aeabi_dmul>
 8004de2:	4b3f      	ldr	r3, [pc, #252]	; (8004ee0 <_dtoa_r+0xe18>)
 8004de4:	2200      	movs	r2, #0
 8004de6:	f7fb fcf1 	bl	80007cc <__adddf3>
 8004dea:	9b06      	ldr	r3, [sp, #24]
 8004dec:	9412      	str	r4, [sp, #72]	; 0x48
 8004dee:	3b01      	subs	r3, #1
 8004df0:	4606      	mov	r6, r0
 8004df2:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004df6:	9316      	str	r3, [sp, #88]	; 0x58
 8004df8:	f7ff baf3 	b.w	80043e2 <_dtoa_r+0x31a>
 8004dfc:	4651      	mov	r1, sl
 8004dfe:	2201      	movs	r2, #1
 8004e00:	4648      	mov	r0, r9
 8004e02:	f001 fa17 	bl	8006234 <__lshift>
 8004e06:	4631      	mov	r1, r6
 8004e08:	4682      	mov	sl, r0
 8004e0a:	f001 fa69 	bl	80062e0 <__mcmp>
 8004e0e:	2800      	cmp	r0, #0
 8004e10:	dd3b      	ble.n	8004e8a <_dtoa_r+0xdc2>
 8004e12:	9b00      	ldr	r3, [sp, #0]
 8004e14:	2b39      	cmp	r3, #57	; 0x39
 8004e16:	d003      	beq.n	8004e20 <_dtoa_r+0xd58>
 8004e18:	9b02      	ldr	r3, [sp, #8]
 8004e1a:	3331      	adds	r3, #49	; 0x31
 8004e1c:	9300      	str	r3, [sp, #0]
 8004e1e:	e733      	b.n	8004c88 <_dtoa_r+0xbc0>
 8004e20:	2239      	movs	r2, #57	; 0x39
 8004e22:	9502      	str	r5, [sp, #8]
 8004e24:	703a      	strb	r2, [r7, #0]
 8004e26:	4645      	mov	r5, r8
 8004e28:	e58e      	b.n	8004948 <_dtoa_r+0x880>
 8004e2a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e2e:	2000      	movs	r0, #0
 8004e30:	492c      	ldr	r1, [pc, #176]	; (8004ee4 <_dtoa_r+0xe1c>)
 8004e32:	f7fb fcc9 	bl	80007c8 <__aeabi_dsub>
 8004e36:	4632      	mov	r2, r6
 8004e38:	463b      	mov	r3, r7
 8004e3a:	f7fc f90d 	bl	8001058 <__aeabi_dcmpgt>
 8004e3e:	b910      	cbnz	r0, 8004e46 <_dtoa_r+0xd7e>
 8004e40:	f7ff bb68 	b.w	8004514 <_dtoa_r+0x44c>
 8004e44:	4614      	mov	r4, r2
 8004e46:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004e4a:	2b30      	cmp	r3, #48	; 0x30
 8004e4c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004e50:	d0f8      	beq.n	8004e44 <_dtoa_r+0xd7c>
 8004e52:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004e54:	9306      	str	r3, [sp, #24]
 8004e56:	e58d      	b.n	8004974 <_dtoa_r+0x8ac>
 8004e58:	46d9      	mov	r9, fp
 8004e5a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004e5e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004e62:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004e64:	9306      	str	r3, [sp, #24]
 8004e66:	e404      	b.n	8004672 <_dtoa_r+0x5aa>
 8004e68:	9b00      	ldr	r3, [sp, #0]
 8004e6a:	2b39      	cmp	r3, #57	; 0x39
 8004e6c:	4621      	mov	r1, r4
 8004e6e:	4632      	mov	r2, r6
 8004e70:	f107 0401 	add.w	r4, r7, #1
 8004e74:	465e      	mov	r6, fp
 8004e76:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004e7a:	d0d1      	beq.n	8004e20 <_dtoa_r+0xd58>
 8004e7c:	2a00      	cmp	r2, #0
 8004e7e:	f77f af03 	ble.w	8004c88 <_dtoa_r+0xbc0>
 8004e82:	460b      	mov	r3, r1
 8004e84:	3331      	adds	r3, #49	; 0x31
 8004e86:	9300      	str	r3, [sp, #0]
 8004e88:	e6fe      	b.n	8004c88 <_dtoa_r+0xbc0>
 8004e8a:	f47f aefd 	bne.w	8004c88 <_dtoa_r+0xbc0>
 8004e8e:	9b00      	ldr	r3, [sp, #0]
 8004e90:	07da      	lsls	r2, r3, #31
 8004e92:	f57f aef9 	bpl.w	8004c88 <_dtoa_r+0xbc0>
 8004e96:	e7bc      	b.n	8004e12 <_dtoa_r+0xd4a>
 8004e98:	4629      	mov	r1, r5
 8004e9a:	2300      	movs	r3, #0
 8004e9c:	220a      	movs	r2, #10
 8004e9e:	4648      	mov	r0, r9
 8004ea0:	f001 f838 	bl	8005f14 <__multadd>
 8004ea4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004ea6:	2b00      	cmp	r3, #0
 8004ea8:	4605      	mov	r5, r0
 8004eaa:	dd09      	ble.n	8004ec0 <_dtoa_r+0xdf8>
 8004eac:	9309      	str	r3, [sp, #36]	; 0x24
 8004eae:	e484      	b.n	80047ba <_dtoa_r+0x6f2>
 8004eb0:	9b02      	ldr	r3, [sp, #8]
 8004eb2:	2b02      	cmp	r3, #2
 8004eb4:	dc0e      	bgt.n	8004ed4 <_dtoa_r+0xe0c>
 8004eb6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004eb8:	e507      	b.n	80048ca <_dtoa_r+0x802>
 8004eba:	2602      	movs	r6, #2
 8004ebc:	f7ff ba70 	b.w	80043a0 <_dtoa_r+0x2d8>
 8004ec0:	9b02      	ldr	r3, [sp, #8]
 8004ec2:	2b02      	cmp	r3, #2
 8004ec4:	dc06      	bgt.n	8004ed4 <_dtoa_r+0xe0c>
 8004ec6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004ec8:	e7f0      	b.n	8004eac <_dtoa_r+0xde4>
 8004eca:	f43f ac59 	beq.w	8004780 <_dtoa_r+0x6b8>
 8004ece:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004ed2:	e450      	b.n	8004776 <_dtoa_r+0x6ae>
 8004ed4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004ed6:	9309      	str	r3, [sp, #36]	; 0x24
 8004ed8:	e678      	b.n	8004bcc <_dtoa_r+0xb04>
 8004eda:	bf00      	nop
 8004edc:	40240000 	.word	0x40240000
 8004ee0:	401c0000 	.word	0x401c0000
 8004ee4:	3fe00000 	.word	0x3fe00000

08004ee8 <__sflush_r>:
 8004ee8:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004eec:	b29a      	uxth	r2, r3
 8004eee:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004ef2:	460c      	mov	r4, r1
 8004ef4:	0711      	lsls	r1, r2, #28
 8004ef6:	4680      	mov	r8, r0
 8004ef8:	d444      	bmi.n	8004f84 <__sflush_r+0x9c>
 8004efa:	6862      	ldr	r2, [r4, #4]
 8004efc:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004f00:	2a00      	cmp	r2, #0
 8004f02:	81a3      	strh	r3, [r4, #12]
 8004f04:	dd59      	ble.n	8004fba <__sflush_r+0xd2>
 8004f06:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004f08:	2d00      	cmp	r5, #0
 8004f0a:	d053      	beq.n	8004fb4 <__sflush_r+0xcc>
 8004f0c:	2200      	movs	r2, #0
 8004f0e:	b29b      	uxth	r3, r3
 8004f10:	f8d8 6000 	ldr.w	r6, [r8]
 8004f14:	69e1      	ldr	r1, [r4, #28]
 8004f16:	f8c8 2000 	str.w	r2, [r8]
 8004f1a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8004f1e:	f040 8083 	bne.w	8005028 <__sflush_r+0x140>
 8004f22:	2301      	movs	r3, #1
 8004f24:	4640      	mov	r0, r8
 8004f26:	47a8      	blx	r5
 8004f28:	1c42      	adds	r2, r0, #1
 8004f2a:	d04a      	beq.n	8004fc2 <__sflush_r+0xda>
 8004f2c:	89a3      	ldrh	r3, [r4, #12]
 8004f2e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004f30:	69e1      	ldr	r1, [r4, #28]
 8004f32:	075b      	lsls	r3, r3, #29
 8004f34:	d505      	bpl.n	8004f42 <__sflush_r+0x5a>
 8004f36:	6862      	ldr	r2, [r4, #4]
 8004f38:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8004f3a:	1a80      	subs	r0, r0, r2
 8004f3c:	b10b      	cbz	r3, 8004f42 <__sflush_r+0x5a>
 8004f3e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8004f40:	1ac0      	subs	r0, r0, r3
 8004f42:	4602      	mov	r2, r0
 8004f44:	2300      	movs	r3, #0
 8004f46:	4640      	mov	r0, r8
 8004f48:	47a8      	blx	r5
 8004f4a:	1c47      	adds	r7, r0, #1
 8004f4c:	d045      	beq.n	8004fda <__sflush_r+0xf2>
 8004f4e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004f52:	6922      	ldr	r2, [r4, #16]
 8004f54:	6022      	str	r2, [r4, #0]
 8004f56:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8004f5a:	2200      	movs	r2, #0
 8004f5c:	81a3      	strh	r3, [r4, #12]
 8004f5e:	04db      	lsls	r3, r3, #19
 8004f60:	6062      	str	r2, [r4, #4]
 8004f62:	d500      	bpl.n	8004f66 <__sflush_r+0x7e>
 8004f64:	6520      	str	r0, [r4, #80]	; 0x50
 8004f66:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004f68:	f8c8 6000 	str.w	r6, [r8]
 8004f6c:	b311      	cbz	r1, 8004fb4 <__sflush_r+0xcc>
 8004f6e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004f72:	4299      	cmp	r1, r3
 8004f74:	d002      	beq.n	8004f7c <__sflush_r+0x94>
 8004f76:	4640      	mov	r0, r8
 8004f78:	f000 f95e 	bl	8005238 <_free_r>
 8004f7c:	2000      	movs	r0, #0
 8004f7e:	6320      	str	r0, [r4, #48]	; 0x30
 8004f80:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004f84:	6926      	ldr	r6, [r4, #16]
 8004f86:	b1ae      	cbz	r6, 8004fb4 <__sflush_r+0xcc>
 8004f88:	6825      	ldr	r5, [r4, #0]
 8004f8a:	6026      	str	r6, [r4, #0]
 8004f8c:	0792      	lsls	r2, r2, #30
 8004f8e:	bf0c      	ite	eq
 8004f90:	6963      	ldreq	r3, [r4, #20]
 8004f92:	2300      	movne	r3, #0
 8004f94:	1bad      	subs	r5, r5, r6
 8004f96:	60a3      	str	r3, [r4, #8]
 8004f98:	e00a      	b.n	8004fb0 <__sflush_r+0xc8>
 8004f9a:	462b      	mov	r3, r5
 8004f9c:	4632      	mov	r2, r6
 8004f9e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8004fa0:	69e1      	ldr	r1, [r4, #28]
 8004fa2:	4640      	mov	r0, r8
 8004fa4:	47b8      	blx	r7
 8004fa6:	2800      	cmp	r0, #0
 8004fa8:	eba5 0500 	sub.w	r5, r5, r0
 8004fac:	4406      	add	r6, r0
 8004fae:	dd2b      	ble.n	8005008 <__sflush_r+0x120>
 8004fb0:	2d00      	cmp	r5, #0
 8004fb2:	dcf2      	bgt.n	8004f9a <__sflush_r+0xb2>
 8004fb4:	2000      	movs	r0, #0
 8004fb6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004fba:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8004fbc:	2a00      	cmp	r2, #0
 8004fbe:	dca2      	bgt.n	8004f06 <__sflush_r+0x1e>
 8004fc0:	e7f8      	b.n	8004fb4 <__sflush_r+0xcc>
 8004fc2:	f8d8 3000 	ldr.w	r3, [r8]
 8004fc6:	2b00      	cmp	r3, #0
 8004fc8:	d0b0      	beq.n	8004f2c <__sflush_r+0x44>
 8004fca:	2b1d      	cmp	r3, #29
 8004fcc:	d001      	beq.n	8004fd2 <__sflush_r+0xea>
 8004fce:	2b16      	cmp	r3, #22
 8004fd0:	d12c      	bne.n	800502c <__sflush_r+0x144>
 8004fd2:	f8c8 6000 	str.w	r6, [r8]
 8004fd6:	2000      	movs	r0, #0
 8004fd8:	e7ed      	b.n	8004fb6 <__sflush_r+0xce>
 8004fda:	f8d8 1000 	ldr.w	r1, [r8]
 8004fde:	291d      	cmp	r1, #29
 8004fe0:	d81a      	bhi.n	8005018 <__sflush_r+0x130>
 8004fe2:	4b15      	ldr	r3, [pc, #84]	; (8005038 <__sflush_r+0x150>)
 8004fe4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004fe8:	40cb      	lsrs	r3, r1
 8004fea:	43db      	mvns	r3, r3
 8004fec:	f013 0301 	ands.w	r3, r3, #1
 8004ff0:	d114      	bne.n	800501c <__sflush_r+0x134>
 8004ff2:	6925      	ldr	r5, [r4, #16]
 8004ff4:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8004ff8:	e9c4 5300 	strd	r5, r3, [r4]
 8004ffc:	04d5      	lsls	r5, r2, #19
 8004ffe:	81a2      	strh	r2, [r4, #12]
 8005000:	d5b1      	bpl.n	8004f66 <__sflush_r+0x7e>
 8005002:	2900      	cmp	r1, #0
 8005004:	d1af      	bne.n	8004f66 <__sflush_r+0x7e>
 8005006:	e7ad      	b.n	8004f64 <__sflush_r+0x7c>
 8005008:	89a3      	ldrh	r3, [r4, #12]
 800500a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800500e:	81a3      	strh	r3, [r4, #12]
 8005010:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005014:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005018:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800501c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005020:	81a2      	strh	r2, [r4, #12]
 8005022:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005026:	e7c6      	b.n	8004fb6 <__sflush_r+0xce>
 8005028:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800502a:	e782      	b.n	8004f32 <__sflush_r+0x4a>
 800502c:	89a3      	ldrh	r3, [r4, #12]
 800502e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005032:	81a3      	strh	r3, [r4, #12]
 8005034:	e7bf      	b.n	8004fb6 <__sflush_r+0xce>
 8005036:	bf00      	nop
 8005038:	20400001 	.word	0x20400001

0800503c <_fflush_r>:
 800503c:	b538      	push	{r3, r4, r5, lr}
 800503e:	460d      	mov	r5, r1
 8005040:	4604      	mov	r4, r0
 8005042:	b108      	cbz	r0, 8005048 <_fflush_r+0xc>
 8005044:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005046:	b1a3      	cbz	r3, 8005072 <_fflush_r+0x36>
 8005048:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800504c:	b1b8      	cbz	r0, 800507e <_fflush_r+0x42>
 800504e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005050:	07db      	lsls	r3, r3, #31
 8005052:	d401      	bmi.n	8005058 <_fflush_r+0x1c>
 8005054:	0581      	lsls	r1, r0, #22
 8005056:	d51a      	bpl.n	800508e <_fflush_r+0x52>
 8005058:	4620      	mov	r0, r4
 800505a:	4629      	mov	r1, r5
 800505c:	f7ff ff44 	bl	8004ee8 <__sflush_r>
 8005060:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005062:	07da      	lsls	r2, r3, #31
 8005064:	4604      	mov	r4, r0
 8005066:	d402      	bmi.n	800506e <_fflush_r+0x32>
 8005068:	89ab      	ldrh	r3, [r5, #12]
 800506a:	059b      	lsls	r3, r3, #22
 800506c:	d50a      	bpl.n	8005084 <_fflush_r+0x48>
 800506e:	4620      	mov	r0, r4
 8005070:	bd38      	pop	{r3, r4, r5, pc}
 8005072:	f000 f83f 	bl	80050f4 <__sinit>
 8005076:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800507a:	2800      	cmp	r0, #0
 800507c:	d1e7      	bne.n	800504e <_fflush_r+0x12>
 800507e:	4604      	mov	r4, r0
 8005080:	4620      	mov	r0, r4
 8005082:	bd38      	pop	{r3, r4, r5, pc}
 8005084:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005086:	f000 fb87 	bl	8005798 <__retarget_lock_release_recursive>
 800508a:	4620      	mov	r0, r4
 800508c:	bd38      	pop	{r3, r4, r5, pc}
 800508e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005090:	f000 fb80 	bl	8005794 <__retarget_lock_acquire_recursive>
 8005094:	e7e0      	b.n	8005058 <_fflush_r+0x1c>
 8005096:	bf00      	nop

08005098 <std>:
 8005098:	b510      	push	{r4, lr}
 800509a:	2300      	movs	r3, #0
 800509c:	4604      	mov	r4, r0
 800509e:	8181      	strh	r1, [r0, #12]
 80050a0:	81c2      	strh	r2, [r0, #14]
 80050a2:	e9c0 3300 	strd	r3, r3, [r0]
 80050a6:	6083      	str	r3, [r0, #8]
 80050a8:	6643      	str	r3, [r0, #100]	; 0x64
 80050aa:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80050ae:	6183      	str	r3, [r0, #24]
 80050b0:	4619      	mov	r1, r3
 80050b2:	2208      	movs	r2, #8
 80050b4:	305c      	adds	r0, #92	; 0x5c
 80050b6:	f7fd f8c9 	bl	800224c <memset>
 80050ba:	4807      	ldr	r0, [pc, #28]	; (80050d8 <std+0x40>)
 80050bc:	4907      	ldr	r1, [pc, #28]	; (80050dc <std+0x44>)
 80050be:	4a08      	ldr	r2, [pc, #32]	; (80050e0 <std+0x48>)
 80050c0:	4b08      	ldr	r3, [pc, #32]	; (80050e4 <std+0x4c>)
 80050c2:	62e3      	str	r3, [r4, #44]	; 0x2c
 80050c4:	e9c4 4007 	strd	r4, r0, [r4, #28]
 80050c8:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 80050cc:	f104 0058 	add.w	r0, r4, #88	; 0x58
 80050d0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80050d4:	f000 bb5a 	b.w	800578c <__retarget_lock_init_recursive>
 80050d8:	080068b1 	.word	0x080068b1
 80050dc:	080068d5 	.word	0x080068d5
 80050e0:	08006911 	.word	0x08006911
 80050e4:	08006931 	.word	0x08006931

080050e8 <_cleanup_r>:
 80050e8:	4901      	ldr	r1, [pc, #4]	; (80050f0 <_cleanup_r+0x8>)
 80050ea:	f000 bb17 	b.w	800571c <_fwalk_reent>
 80050ee:	bf00      	nop
 80050f0:	08006ba1 	.word	0x08006ba1

080050f4 <__sinit>:
 80050f4:	b510      	push	{r4, lr}
 80050f6:	4604      	mov	r4, r0
 80050f8:	4812      	ldr	r0, [pc, #72]	; (8005144 <__sinit+0x50>)
 80050fa:	f000 fb4b 	bl	8005794 <__retarget_lock_acquire_recursive>
 80050fe:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005100:	b9d2      	cbnz	r2, 8005138 <__sinit+0x44>
 8005102:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005106:	4810      	ldr	r0, [pc, #64]	; (8005148 <__sinit+0x54>)
 8005108:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800510c:	2103      	movs	r1, #3
 800510e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005112:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005114:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005118:	6860      	ldr	r0, [r4, #4]
 800511a:	2104      	movs	r1, #4
 800511c:	f7ff ffbc 	bl	8005098 <std>
 8005120:	2201      	movs	r2, #1
 8005122:	2109      	movs	r1, #9
 8005124:	68a0      	ldr	r0, [r4, #8]
 8005126:	f7ff ffb7 	bl	8005098 <std>
 800512a:	2202      	movs	r2, #2
 800512c:	2112      	movs	r1, #18
 800512e:	68e0      	ldr	r0, [r4, #12]
 8005130:	f7ff ffb2 	bl	8005098 <std>
 8005134:	2301      	movs	r3, #1
 8005136:	63a3      	str	r3, [r4, #56]	; 0x38
 8005138:	4802      	ldr	r0, [pc, #8]	; (8005144 <__sinit+0x50>)
 800513a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800513e:	f000 bb2b 	b.w	8005798 <__retarget_lock_release_recursive>
 8005142:	bf00      	nop
 8005144:	20000afc 	.word	0x20000afc
 8005148:	080050e9 	.word	0x080050e9

0800514c <__sfp_lock_acquire>:
 800514c:	4801      	ldr	r0, [pc, #4]	; (8005154 <__sfp_lock_acquire+0x8>)
 800514e:	f000 bb21 	b.w	8005794 <__retarget_lock_acquire_recursive>
 8005152:	bf00      	nop
 8005154:	20000b10 	.word	0x20000b10

08005158 <__sfp_lock_release>:
 8005158:	4801      	ldr	r0, [pc, #4]	; (8005160 <__sfp_lock_release+0x8>)
 800515a:	f000 bb1d 	b.w	8005798 <__retarget_lock_release_recursive>
 800515e:	bf00      	nop
 8005160:	20000b10 	.word	0x20000b10

08005164 <__libc_fini_array>:
 8005164:	b538      	push	{r3, r4, r5, lr}
 8005166:	4c0a      	ldr	r4, [pc, #40]	; (8005190 <__libc_fini_array+0x2c>)
 8005168:	4d0a      	ldr	r5, [pc, #40]	; (8005194 <__libc_fini_array+0x30>)
 800516a:	1b64      	subs	r4, r4, r5
 800516c:	10a4      	asrs	r4, r4, #2
 800516e:	d00a      	beq.n	8005186 <__libc_fini_array+0x22>
 8005170:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005174:	3b01      	subs	r3, #1
 8005176:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800517a:	3c01      	subs	r4, #1
 800517c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005180:	4798      	blx	r3
 8005182:	2c00      	cmp	r4, #0
 8005184:	d1f9      	bne.n	800517a <__libc_fini_array+0x16>
 8005186:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800518a:	f001 befd 	b.w	8006f88 <_fini>
 800518e:	bf00      	nop
 8005190:	08007394 	.word	0x08007394
 8005194:	08007390 	.word	0x08007390

08005198 <_malloc_trim_r>:
 8005198:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800519a:	4f24      	ldr	r7, [pc, #144]	; (800522c <_malloc_trim_r+0x94>)
 800519c:	460c      	mov	r4, r1
 800519e:	4606      	mov	r6, r0
 80051a0:	f000 fe7c 	bl	8005e9c <__malloc_lock>
 80051a4:	68bb      	ldr	r3, [r7, #8]
 80051a6:	685d      	ldr	r5, [r3, #4]
 80051a8:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80051ac:	310f      	adds	r1, #15
 80051ae:	f025 0503 	bic.w	r5, r5, #3
 80051b2:	4429      	add	r1, r5
 80051b4:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 80051b8:	f021 010f 	bic.w	r1, r1, #15
 80051bc:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 80051c0:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 80051c4:	db07      	blt.n	80051d6 <_malloc_trim_r+0x3e>
 80051c6:	2100      	movs	r1, #0
 80051c8:	4630      	mov	r0, r6
 80051ca:	f001 fb5f 	bl	800688c <_sbrk_r>
 80051ce:	68bb      	ldr	r3, [r7, #8]
 80051d0:	442b      	add	r3, r5
 80051d2:	4298      	cmp	r0, r3
 80051d4:	d004      	beq.n	80051e0 <_malloc_trim_r+0x48>
 80051d6:	4630      	mov	r0, r6
 80051d8:	f000 fe66 	bl	8005ea8 <__malloc_unlock>
 80051dc:	2000      	movs	r0, #0
 80051de:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80051e0:	4261      	negs	r1, r4
 80051e2:	4630      	mov	r0, r6
 80051e4:	f001 fb52 	bl	800688c <_sbrk_r>
 80051e8:	3001      	adds	r0, #1
 80051ea:	d00d      	beq.n	8005208 <_malloc_trim_r+0x70>
 80051ec:	4b10      	ldr	r3, [pc, #64]	; (8005230 <_malloc_trim_r+0x98>)
 80051ee:	68ba      	ldr	r2, [r7, #8]
 80051f0:	6819      	ldr	r1, [r3, #0]
 80051f2:	1b2d      	subs	r5, r5, r4
 80051f4:	f045 0501 	orr.w	r5, r5, #1
 80051f8:	4630      	mov	r0, r6
 80051fa:	1b09      	subs	r1, r1, r4
 80051fc:	6055      	str	r5, [r2, #4]
 80051fe:	6019      	str	r1, [r3, #0]
 8005200:	f000 fe52 	bl	8005ea8 <__malloc_unlock>
 8005204:	2001      	movs	r0, #1
 8005206:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005208:	2100      	movs	r1, #0
 800520a:	4630      	mov	r0, r6
 800520c:	f001 fb3e 	bl	800688c <_sbrk_r>
 8005210:	68ba      	ldr	r2, [r7, #8]
 8005212:	1a83      	subs	r3, r0, r2
 8005214:	2b0f      	cmp	r3, #15
 8005216:	ddde      	ble.n	80051d6 <_malloc_trim_r+0x3e>
 8005218:	4c06      	ldr	r4, [pc, #24]	; (8005234 <_malloc_trim_r+0x9c>)
 800521a:	4905      	ldr	r1, [pc, #20]	; (8005230 <_malloc_trim_r+0x98>)
 800521c:	6824      	ldr	r4, [r4, #0]
 800521e:	f043 0301 	orr.w	r3, r3, #1
 8005222:	1b00      	subs	r0, r0, r4
 8005224:	6053      	str	r3, [r2, #4]
 8005226:	6008      	str	r0, [r1, #0]
 8005228:	e7d5      	b.n	80051d6 <_malloc_trim_r+0x3e>
 800522a:	bf00      	nop
 800522c:	20000454 	.word	0x20000454
 8005230:	20000a74 	.word	0x20000a74
 8005234:	2000085c 	.word	0x2000085c

08005238 <_free_r>:
 8005238:	2900      	cmp	r1, #0
 800523a:	d053      	beq.n	80052e4 <_free_r+0xac>
 800523c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800523e:	460c      	mov	r4, r1
 8005240:	4606      	mov	r6, r0
 8005242:	f000 fe2b 	bl	8005e9c <__malloc_lock>
 8005246:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800524a:	4f71      	ldr	r7, [pc, #452]	; (8005410 <_free_r+0x1d8>)
 800524c:	f02c 0101 	bic.w	r1, ip, #1
 8005250:	f1a4 0508 	sub.w	r5, r4, #8
 8005254:	186b      	adds	r3, r5, r1
 8005256:	68b8      	ldr	r0, [r7, #8]
 8005258:	685a      	ldr	r2, [r3, #4]
 800525a:	4298      	cmp	r0, r3
 800525c:	f022 0203 	bic.w	r2, r2, #3
 8005260:	d053      	beq.n	800530a <_free_r+0xd2>
 8005262:	f01c 0f01 	tst.w	ip, #1
 8005266:	605a      	str	r2, [r3, #4]
 8005268:	eb03 0002 	add.w	r0, r3, r2
 800526c:	d13b      	bne.n	80052e6 <_free_r+0xae>
 800526e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005272:	6840      	ldr	r0, [r0, #4]
 8005274:	eba5 050c 	sub.w	r5, r5, ip
 8005278:	f107 0e08 	add.w	lr, r7, #8
 800527c:	68ac      	ldr	r4, [r5, #8]
 800527e:	4574      	cmp	r4, lr
 8005280:	4461      	add	r1, ip
 8005282:	f000 0001 	and.w	r0, r0, #1
 8005286:	d075      	beq.n	8005374 <_free_r+0x13c>
 8005288:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800528c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005290:	f8cc 4008 	str.w	r4, [ip, #8]
 8005294:	b360      	cbz	r0, 80052f0 <_free_r+0xb8>
 8005296:	f041 0301 	orr.w	r3, r1, #1
 800529a:	606b      	str	r3, [r5, #4]
 800529c:	5069      	str	r1, [r5, r1]
 800529e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80052a2:	d350      	bcc.n	8005346 <_free_r+0x10e>
 80052a4:	0a4b      	lsrs	r3, r1, #9
 80052a6:	2b04      	cmp	r3, #4
 80052a8:	d870      	bhi.n	800538c <_free_r+0x154>
 80052aa:	098b      	lsrs	r3, r1, #6
 80052ac:	f103 0439 	add.w	r4, r3, #57	; 0x39
 80052b0:	00e4      	lsls	r4, r4, #3
 80052b2:	f103 0238 	add.w	r2, r3, #56	; 0x38
 80052b6:	1938      	adds	r0, r7, r4
 80052b8:	593b      	ldr	r3, [r7, r4]
 80052ba:	3808      	subs	r0, #8
 80052bc:	4298      	cmp	r0, r3
 80052be:	d078      	beq.n	80053b2 <_free_r+0x17a>
 80052c0:	685a      	ldr	r2, [r3, #4]
 80052c2:	f022 0203 	bic.w	r2, r2, #3
 80052c6:	428a      	cmp	r2, r1
 80052c8:	d971      	bls.n	80053ae <_free_r+0x176>
 80052ca:	689b      	ldr	r3, [r3, #8]
 80052cc:	4298      	cmp	r0, r3
 80052ce:	d1f7      	bne.n	80052c0 <_free_r+0x88>
 80052d0:	68c3      	ldr	r3, [r0, #12]
 80052d2:	e9c5 0302 	strd	r0, r3, [r5, #8]
 80052d6:	609d      	str	r5, [r3, #8]
 80052d8:	60c5      	str	r5, [r0, #12]
 80052da:	4630      	mov	r0, r6
 80052dc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80052e0:	f000 bde2 	b.w	8005ea8 <__malloc_unlock>
 80052e4:	4770      	bx	lr
 80052e6:	6840      	ldr	r0, [r0, #4]
 80052e8:	f000 0001 	and.w	r0, r0, #1
 80052ec:	2800      	cmp	r0, #0
 80052ee:	d1d2      	bne.n	8005296 <_free_r+0x5e>
 80052f0:	6898      	ldr	r0, [r3, #8]
 80052f2:	4c48      	ldr	r4, [pc, #288]	; (8005414 <_free_r+0x1dc>)
 80052f4:	4411      	add	r1, r2
 80052f6:	42a0      	cmp	r0, r4
 80052f8:	f041 0201 	orr.w	r2, r1, #1
 80052fc:	d062      	beq.n	80053c4 <_free_r+0x18c>
 80052fe:	68db      	ldr	r3, [r3, #12]
 8005300:	60c3      	str	r3, [r0, #12]
 8005302:	6098      	str	r0, [r3, #8]
 8005304:	606a      	str	r2, [r5, #4]
 8005306:	5069      	str	r1, [r5, r1]
 8005308:	e7c9      	b.n	800529e <_free_r+0x66>
 800530a:	f01c 0f01 	tst.w	ip, #1
 800530e:	440a      	add	r2, r1
 8005310:	d107      	bne.n	8005322 <_free_r+0xea>
 8005312:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005316:	1aed      	subs	r5, r5, r3
 8005318:	441a      	add	r2, r3
 800531a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800531e:	60cb      	str	r3, [r1, #12]
 8005320:	6099      	str	r1, [r3, #8]
 8005322:	4b3d      	ldr	r3, [pc, #244]	; (8005418 <_free_r+0x1e0>)
 8005324:	681b      	ldr	r3, [r3, #0]
 8005326:	f042 0101 	orr.w	r1, r2, #1
 800532a:	4293      	cmp	r3, r2
 800532c:	6069      	str	r1, [r5, #4]
 800532e:	60bd      	str	r5, [r7, #8]
 8005330:	d804      	bhi.n	800533c <_free_r+0x104>
 8005332:	4b3a      	ldr	r3, [pc, #232]	; (800541c <_free_r+0x1e4>)
 8005334:	4630      	mov	r0, r6
 8005336:	6819      	ldr	r1, [r3, #0]
 8005338:	f7ff ff2e 	bl	8005198 <_malloc_trim_r>
 800533c:	4630      	mov	r0, r6
 800533e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005342:	f000 bdb1 	b.w	8005ea8 <__malloc_unlock>
 8005346:	08c9      	lsrs	r1, r1, #3
 8005348:	6878      	ldr	r0, [r7, #4]
 800534a:	1c4a      	adds	r2, r1, #1
 800534c:	2301      	movs	r3, #1
 800534e:	1089      	asrs	r1, r1, #2
 8005350:	408b      	lsls	r3, r1
 8005352:	4303      	orrs	r3, r0
 8005354:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005358:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 800535c:	607b      	str	r3, [r7, #4]
 800535e:	3908      	subs	r1, #8
 8005360:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005364:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005368:	60c5      	str	r5, [r0, #12]
 800536a:	4630      	mov	r0, r6
 800536c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005370:	f000 bd9a 	b.w	8005ea8 <__malloc_unlock>
 8005374:	2800      	cmp	r0, #0
 8005376:	d145      	bne.n	8005404 <_free_r+0x1cc>
 8005378:	440a      	add	r2, r1
 800537a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800537e:	f042 0001 	orr.w	r0, r2, #1
 8005382:	60cb      	str	r3, [r1, #12]
 8005384:	6099      	str	r1, [r3, #8]
 8005386:	6068      	str	r0, [r5, #4]
 8005388:	50aa      	str	r2, [r5, r2]
 800538a:	e7d7      	b.n	800533c <_free_r+0x104>
 800538c:	2b14      	cmp	r3, #20
 800538e:	d908      	bls.n	80053a2 <_free_r+0x16a>
 8005390:	2b54      	cmp	r3, #84	; 0x54
 8005392:	d81e      	bhi.n	80053d2 <_free_r+0x19a>
 8005394:	0b0b      	lsrs	r3, r1, #12
 8005396:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800539a:	00e4      	lsls	r4, r4, #3
 800539c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80053a0:	e789      	b.n	80052b6 <_free_r+0x7e>
 80053a2:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80053a6:	00e4      	lsls	r4, r4, #3
 80053a8:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80053ac:	e783      	b.n	80052b6 <_free_r+0x7e>
 80053ae:	4618      	mov	r0, r3
 80053b0:	e78e      	b.n	80052d0 <_free_r+0x98>
 80053b2:	1093      	asrs	r3, r2, #2
 80053b4:	6879      	ldr	r1, [r7, #4]
 80053b6:	2201      	movs	r2, #1
 80053b8:	fa02 f303 	lsl.w	r3, r2, r3
 80053bc:	430b      	orrs	r3, r1
 80053be:	607b      	str	r3, [r7, #4]
 80053c0:	4603      	mov	r3, r0
 80053c2:	e786      	b.n	80052d2 <_free_r+0x9a>
 80053c4:	e9c7 5504 	strd	r5, r5, [r7, #16]
 80053c8:	e9c5 0002 	strd	r0, r0, [r5, #8]
 80053cc:	606a      	str	r2, [r5, #4]
 80053ce:	5069      	str	r1, [r5, r1]
 80053d0:	e7b4      	b.n	800533c <_free_r+0x104>
 80053d2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80053d6:	d806      	bhi.n	80053e6 <_free_r+0x1ae>
 80053d8:	0bcb      	lsrs	r3, r1, #15
 80053da:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80053de:	00e4      	lsls	r4, r4, #3
 80053e0:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80053e4:	e767      	b.n	80052b6 <_free_r+0x7e>
 80053e6:	f240 5254 	movw	r2, #1364	; 0x554
 80053ea:	4293      	cmp	r3, r2
 80053ec:	d806      	bhi.n	80053fc <_free_r+0x1c4>
 80053ee:	0c8b      	lsrs	r3, r1, #18
 80053f0:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80053f4:	00e4      	lsls	r4, r4, #3
 80053f6:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80053fa:	e75c      	b.n	80052b6 <_free_r+0x7e>
 80053fc:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005400:	227e      	movs	r2, #126	; 0x7e
 8005402:	e758      	b.n	80052b6 <_free_r+0x7e>
 8005404:	f041 0201 	orr.w	r2, r1, #1
 8005408:	606a      	str	r2, [r5, #4]
 800540a:	6019      	str	r1, [r3, #0]
 800540c:	e796      	b.n	800533c <_free_r+0x104>
 800540e:	bf00      	nop
 8005410:	20000454 	.word	0x20000454
 8005414:	2000045c 	.word	0x2000045c
 8005418:	20000860 	.word	0x20000860
 800541c:	20000aa4 	.word	0x20000aa4

08005420 <__sfvwrite_r>:
 8005420:	6893      	ldr	r3, [r2, #8]
 8005422:	2b00      	cmp	r3, #0
 8005424:	f000 80e4 	beq.w	80055f0 <__sfvwrite_r+0x1d0>
 8005428:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800542c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005430:	b29b      	uxth	r3, r3
 8005432:	460c      	mov	r4, r1
 8005434:	0719      	lsls	r1, r3, #28
 8005436:	b083      	sub	sp, #12
 8005438:	4682      	mov	sl, r0
 800543a:	4690      	mov	r8, r2
 800543c:	d535      	bpl.n	80054aa <__sfvwrite_r+0x8a>
 800543e:	6922      	ldr	r2, [r4, #16]
 8005440:	b39a      	cbz	r2, 80054aa <__sfvwrite_r+0x8a>
 8005442:	f013 0202 	ands.w	r2, r3, #2
 8005446:	f8d8 6000 	ldr.w	r6, [r8]
 800544a:	d03d      	beq.n	80054c8 <__sfvwrite_r+0xa8>
 800544c:	2700      	movs	r7, #0
 800544e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005452:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005456:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005718 <__sfvwrite_r+0x2f8>
 800545a:	463d      	mov	r5, r7
 800545c:	454d      	cmp	r5, r9
 800545e:	462b      	mov	r3, r5
 8005460:	463a      	mov	r2, r7
 8005462:	bf28      	it	cs
 8005464:	464b      	movcs	r3, r9
 8005466:	4661      	mov	r1, ip
 8005468:	4650      	mov	r0, sl
 800546a:	b1d5      	cbz	r5, 80054a2 <__sfvwrite_r+0x82>
 800546c:	47d8      	blx	fp
 800546e:	2800      	cmp	r0, #0
 8005470:	f340 80c6 	ble.w	8005600 <__sfvwrite_r+0x1e0>
 8005474:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005478:	1a1b      	subs	r3, r3, r0
 800547a:	4407      	add	r7, r0
 800547c:	1a2d      	subs	r5, r5, r0
 800547e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005482:	2b00      	cmp	r3, #0
 8005484:	f000 80b0 	beq.w	80055e8 <__sfvwrite_r+0x1c8>
 8005488:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800548c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005490:	454d      	cmp	r5, r9
 8005492:	462b      	mov	r3, r5
 8005494:	463a      	mov	r2, r7
 8005496:	bf28      	it	cs
 8005498:	464b      	movcs	r3, r9
 800549a:	4661      	mov	r1, ip
 800549c:	4650      	mov	r0, sl
 800549e:	2d00      	cmp	r5, #0
 80054a0:	d1e4      	bne.n	800546c <__sfvwrite_r+0x4c>
 80054a2:	e9d6 7500 	ldrd	r7, r5, [r6]
 80054a6:	3608      	adds	r6, #8
 80054a8:	e7d8      	b.n	800545c <__sfvwrite_r+0x3c>
 80054aa:	4621      	mov	r1, r4
 80054ac:	4650      	mov	r0, sl
 80054ae:	f7fe fd03 	bl	8003eb8 <__swsetup_r>
 80054b2:	2800      	cmp	r0, #0
 80054b4:	f040 812a 	bne.w	800570c <__sfvwrite_r+0x2ec>
 80054b8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80054bc:	f8d8 6000 	ldr.w	r6, [r8]
 80054c0:	b29b      	uxth	r3, r3
 80054c2:	f013 0202 	ands.w	r2, r3, #2
 80054c6:	d1c1      	bne.n	800544c <__sfvwrite_r+0x2c>
 80054c8:	f013 0901 	ands.w	r9, r3, #1
 80054cc:	d15d      	bne.n	800558a <__sfvwrite_r+0x16a>
 80054ce:	68a7      	ldr	r7, [r4, #8]
 80054d0:	6820      	ldr	r0, [r4, #0]
 80054d2:	464d      	mov	r5, r9
 80054d4:	2d00      	cmp	r5, #0
 80054d6:	d054      	beq.n	8005582 <__sfvwrite_r+0x162>
 80054d8:	059a      	lsls	r2, r3, #22
 80054da:	f140 809b 	bpl.w	8005614 <__sfvwrite_r+0x1f4>
 80054de:	42af      	cmp	r7, r5
 80054e0:	46bb      	mov	fp, r7
 80054e2:	f200 80d8 	bhi.w	8005696 <__sfvwrite_r+0x276>
 80054e6:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80054ea:	d02f      	beq.n	800554c <__sfvwrite_r+0x12c>
 80054ec:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80054f0:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80054f4:	eba0 0b01 	sub.w	fp, r0, r1
 80054f8:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80054fc:	1c68      	adds	r0, r5, #1
 80054fe:	107f      	asrs	r7, r7, #1
 8005500:	4458      	add	r0, fp
 8005502:	42b8      	cmp	r0, r7
 8005504:	463a      	mov	r2, r7
 8005506:	bf84      	itt	hi
 8005508:	4607      	movhi	r7, r0
 800550a:	463a      	movhi	r2, r7
 800550c:	055b      	lsls	r3, r3, #21
 800550e:	f140 80d3 	bpl.w	80056b8 <__sfvwrite_r+0x298>
 8005512:	4611      	mov	r1, r2
 8005514:	4650      	mov	r0, sl
 8005516:	f000 f9b9 	bl	800588c <_malloc_r>
 800551a:	2800      	cmp	r0, #0
 800551c:	f000 80f0 	beq.w	8005700 <__sfvwrite_r+0x2e0>
 8005520:	465a      	mov	r2, fp
 8005522:	6921      	ldr	r1, [r4, #16]
 8005524:	9001      	str	r0, [sp, #4]
 8005526:	f7fa ffeb 	bl	8000500 <memcpy>
 800552a:	89a2      	ldrh	r2, [r4, #12]
 800552c:	9b01      	ldr	r3, [sp, #4]
 800552e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005532:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005536:	81a2      	strh	r2, [r4, #12]
 8005538:	eba7 020b 	sub.w	r2, r7, fp
 800553c:	eb03 000b 	add.w	r0, r3, fp
 8005540:	6167      	str	r7, [r4, #20]
 8005542:	6123      	str	r3, [r4, #16]
 8005544:	6020      	str	r0, [r4, #0]
 8005546:	60a2      	str	r2, [r4, #8]
 8005548:	462f      	mov	r7, r5
 800554a:	46ab      	mov	fp, r5
 800554c:	465a      	mov	r2, fp
 800554e:	4649      	mov	r1, r9
 8005550:	f000 fc40 	bl	8005dd4 <memmove>
 8005554:	68a2      	ldr	r2, [r4, #8]
 8005556:	6823      	ldr	r3, [r4, #0]
 8005558:	1bd2      	subs	r2, r2, r7
 800555a:	445b      	add	r3, fp
 800555c:	462f      	mov	r7, r5
 800555e:	60a2      	str	r2, [r4, #8]
 8005560:	6023      	str	r3, [r4, #0]
 8005562:	2500      	movs	r5, #0
 8005564:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005568:	1bdb      	subs	r3, r3, r7
 800556a:	44b9      	add	r9, r7
 800556c:	f8c8 3008 	str.w	r3, [r8, #8]
 8005570:	2b00      	cmp	r3, #0
 8005572:	d039      	beq.n	80055e8 <__sfvwrite_r+0x1c8>
 8005574:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005578:	68a7      	ldr	r7, [r4, #8]
 800557a:	6820      	ldr	r0, [r4, #0]
 800557c:	b29b      	uxth	r3, r3
 800557e:	2d00      	cmp	r5, #0
 8005580:	d1aa      	bne.n	80054d8 <__sfvwrite_r+0xb8>
 8005582:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005586:	3608      	adds	r6, #8
 8005588:	e7a4      	b.n	80054d4 <__sfvwrite_r+0xb4>
 800558a:	4633      	mov	r3, r6
 800558c:	4691      	mov	r9, r2
 800558e:	4610      	mov	r0, r2
 8005590:	4617      	mov	r7, r2
 8005592:	464e      	mov	r6, r9
 8005594:	469b      	mov	fp, r3
 8005596:	2f00      	cmp	r7, #0
 8005598:	d06b      	beq.n	8005672 <__sfvwrite_r+0x252>
 800559a:	2800      	cmp	r0, #0
 800559c:	d071      	beq.n	8005682 <__sfvwrite_r+0x262>
 800559e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 80055a2:	6820      	ldr	r0, [r4, #0]
 80055a4:	45b9      	cmp	r9, r7
 80055a6:	464b      	mov	r3, r9
 80055a8:	bf28      	it	cs
 80055aa:	463b      	movcs	r3, r7
 80055ac:	4288      	cmp	r0, r1
 80055ae:	d903      	bls.n	80055b8 <__sfvwrite_r+0x198>
 80055b0:	68a5      	ldr	r5, [r4, #8]
 80055b2:	4415      	add	r5, r2
 80055b4:	42ab      	cmp	r3, r5
 80055b6:	dc71      	bgt.n	800569c <__sfvwrite_r+0x27c>
 80055b8:	429a      	cmp	r2, r3
 80055ba:	f300 8093 	bgt.w	80056e4 <__sfvwrite_r+0x2c4>
 80055be:	4613      	mov	r3, r2
 80055c0:	6a65      	ldr	r5, [r4, #36]	; 0x24
 80055c2:	69e1      	ldr	r1, [r4, #28]
 80055c4:	4632      	mov	r2, r6
 80055c6:	4650      	mov	r0, sl
 80055c8:	47a8      	blx	r5
 80055ca:	1e05      	subs	r5, r0, #0
 80055cc:	dd18      	ble.n	8005600 <__sfvwrite_r+0x1e0>
 80055ce:	ebb9 0905 	subs.w	r9, r9, r5
 80055d2:	d00f      	beq.n	80055f4 <__sfvwrite_r+0x1d4>
 80055d4:	2001      	movs	r0, #1
 80055d6:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80055da:	1b5b      	subs	r3, r3, r5
 80055dc:	442e      	add	r6, r5
 80055de:	1b7f      	subs	r7, r7, r5
 80055e0:	f8c8 3008 	str.w	r3, [r8, #8]
 80055e4:	2b00      	cmp	r3, #0
 80055e6:	d1d6      	bne.n	8005596 <__sfvwrite_r+0x176>
 80055e8:	2000      	movs	r0, #0
 80055ea:	b003      	add	sp, #12
 80055ec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80055f0:	2000      	movs	r0, #0
 80055f2:	4770      	bx	lr
 80055f4:	4621      	mov	r1, r4
 80055f6:	4650      	mov	r0, sl
 80055f8:	f7ff fd20 	bl	800503c <_fflush_r>
 80055fc:	2800      	cmp	r0, #0
 80055fe:	d0ea      	beq.n	80055d6 <__sfvwrite_r+0x1b6>
 8005600:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005604:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005608:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800560c:	81a3      	strh	r3, [r4, #12]
 800560e:	b003      	add	sp, #12
 8005610:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005614:	6923      	ldr	r3, [r4, #16]
 8005616:	4283      	cmp	r3, r0
 8005618:	d315      	bcc.n	8005646 <__sfvwrite_r+0x226>
 800561a:	6961      	ldr	r1, [r4, #20]
 800561c:	42a9      	cmp	r1, r5
 800561e:	d812      	bhi.n	8005646 <__sfvwrite_r+0x226>
 8005620:	4b3c      	ldr	r3, [pc, #240]	; (8005714 <__sfvwrite_r+0x2f4>)
 8005622:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005624:	429d      	cmp	r5, r3
 8005626:	bf94      	ite	ls
 8005628:	462b      	movls	r3, r5
 800562a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 800562e:	464a      	mov	r2, r9
 8005630:	fb93 f3f1 	sdiv	r3, r3, r1
 8005634:	4650      	mov	r0, sl
 8005636:	fb01 f303 	mul.w	r3, r1, r3
 800563a:	69e1      	ldr	r1, [r4, #28]
 800563c:	47b8      	blx	r7
 800563e:	1e07      	subs	r7, r0, #0
 8005640:	ddde      	ble.n	8005600 <__sfvwrite_r+0x1e0>
 8005642:	1bed      	subs	r5, r5, r7
 8005644:	e78e      	b.n	8005564 <__sfvwrite_r+0x144>
 8005646:	42af      	cmp	r7, r5
 8005648:	bf28      	it	cs
 800564a:	462f      	movcs	r7, r5
 800564c:	463a      	mov	r2, r7
 800564e:	4649      	mov	r1, r9
 8005650:	f000 fbc0 	bl	8005dd4 <memmove>
 8005654:	68a3      	ldr	r3, [r4, #8]
 8005656:	6822      	ldr	r2, [r4, #0]
 8005658:	1bdb      	subs	r3, r3, r7
 800565a:	443a      	add	r2, r7
 800565c:	60a3      	str	r3, [r4, #8]
 800565e:	6022      	str	r2, [r4, #0]
 8005660:	2b00      	cmp	r3, #0
 8005662:	d1ee      	bne.n	8005642 <__sfvwrite_r+0x222>
 8005664:	4621      	mov	r1, r4
 8005666:	4650      	mov	r0, sl
 8005668:	f7ff fce8 	bl	800503c <_fflush_r>
 800566c:	2800      	cmp	r0, #0
 800566e:	d0e8      	beq.n	8005642 <__sfvwrite_r+0x222>
 8005670:	e7c6      	b.n	8005600 <__sfvwrite_r+0x1e0>
 8005672:	f10b 0308 	add.w	r3, fp, #8
 8005676:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 800567a:	469b      	mov	fp, r3
 800567c:	3308      	adds	r3, #8
 800567e:	2f00      	cmp	r7, #0
 8005680:	d0f9      	beq.n	8005676 <__sfvwrite_r+0x256>
 8005682:	463a      	mov	r2, r7
 8005684:	210a      	movs	r1, #10
 8005686:	4630      	mov	r0, r6
 8005688:	f7fb f84a 	bl	8000720 <memchr>
 800568c:	b338      	cbz	r0, 80056de <__sfvwrite_r+0x2be>
 800568e:	3001      	adds	r0, #1
 8005690:	eba0 0906 	sub.w	r9, r0, r6
 8005694:	e783      	b.n	800559e <__sfvwrite_r+0x17e>
 8005696:	462f      	mov	r7, r5
 8005698:	46ab      	mov	fp, r5
 800569a:	e757      	b.n	800554c <__sfvwrite_r+0x12c>
 800569c:	4631      	mov	r1, r6
 800569e:	462a      	mov	r2, r5
 80056a0:	f000 fb98 	bl	8005dd4 <memmove>
 80056a4:	6823      	ldr	r3, [r4, #0]
 80056a6:	442b      	add	r3, r5
 80056a8:	6023      	str	r3, [r4, #0]
 80056aa:	4621      	mov	r1, r4
 80056ac:	4650      	mov	r0, sl
 80056ae:	f7ff fcc5 	bl	800503c <_fflush_r>
 80056b2:	2800      	cmp	r0, #0
 80056b4:	d08b      	beq.n	80055ce <__sfvwrite_r+0x1ae>
 80056b6:	e7a3      	b.n	8005600 <__sfvwrite_r+0x1e0>
 80056b8:	4650      	mov	r0, sl
 80056ba:	f000 ff05 	bl	80064c8 <_realloc_r>
 80056be:	4603      	mov	r3, r0
 80056c0:	2800      	cmp	r0, #0
 80056c2:	f47f af39 	bne.w	8005538 <__sfvwrite_r+0x118>
 80056c6:	6921      	ldr	r1, [r4, #16]
 80056c8:	4650      	mov	r0, sl
 80056ca:	f7ff fdb5 	bl	8005238 <_free_r>
 80056ce:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80056d2:	220c      	movs	r2, #12
 80056d4:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80056d8:	f8ca 2000 	str.w	r2, [sl]
 80056dc:	e792      	b.n	8005604 <__sfvwrite_r+0x1e4>
 80056de:	f107 0901 	add.w	r9, r7, #1
 80056e2:	e75c      	b.n	800559e <__sfvwrite_r+0x17e>
 80056e4:	461a      	mov	r2, r3
 80056e6:	4631      	mov	r1, r6
 80056e8:	9301      	str	r3, [sp, #4]
 80056ea:	f000 fb73 	bl	8005dd4 <memmove>
 80056ee:	9b01      	ldr	r3, [sp, #4]
 80056f0:	68a1      	ldr	r1, [r4, #8]
 80056f2:	6822      	ldr	r2, [r4, #0]
 80056f4:	1ac9      	subs	r1, r1, r3
 80056f6:	441a      	add	r2, r3
 80056f8:	60a1      	str	r1, [r4, #8]
 80056fa:	6022      	str	r2, [r4, #0]
 80056fc:	461d      	mov	r5, r3
 80056fe:	e766      	b.n	80055ce <__sfvwrite_r+0x1ae>
 8005700:	230c      	movs	r3, #12
 8005702:	f8ca 3000 	str.w	r3, [sl]
 8005706:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800570a:	e77b      	b.n	8005604 <__sfvwrite_r+0x1e4>
 800570c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005710:	e76b      	b.n	80055ea <__sfvwrite_r+0x1ca>
 8005712:	bf00      	nop
 8005714:	7ffffffe 	.word	0x7ffffffe
 8005718:	7ffffc00 	.word	0x7ffffc00

0800571c <_fwalk_reent>:
 800571c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005720:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005724:	d01f      	beq.n	8005766 <_fwalk_reent+0x4a>
 8005726:	4688      	mov	r8, r1
 8005728:	4606      	mov	r6, r0
 800572a:	f04f 0900 	mov.w	r9, #0
 800572e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005732:	3d01      	subs	r5, #1
 8005734:	d411      	bmi.n	800575a <_fwalk_reent+0x3e>
 8005736:	89a3      	ldrh	r3, [r4, #12]
 8005738:	2b01      	cmp	r3, #1
 800573a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 800573e:	4621      	mov	r1, r4
 8005740:	4630      	mov	r0, r6
 8005742:	d906      	bls.n	8005752 <_fwalk_reent+0x36>
 8005744:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005748:	3301      	adds	r3, #1
 800574a:	d002      	beq.n	8005752 <_fwalk_reent+0x36>
 800574c:	47c0      	blx	r8
 800574e:	ea49 0900 	orr.w	r9, r9, r0
 8005752:	1c6b      	adds	r3, r5, #1
 8005754:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005758:	d1ed      	bne.n	8005736 <_fwalk_reent+0x1a>
 800575a:	683f      	ldr	r7, [r7, #0]
 800575c:	2f00      	cmp	r7, #0
 800575e:	d1e6      	bne.n	800572e <_fwalk_reent+0x12>
 8005760:	4648      	mov	r0, r9
 8005762:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005766:	46b9      	mov	r9, r7
 8005768:	4648      	mov	r0, r9
 800576a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800576e:	bf00      	nop

08005770 <_localeconv_r>:
 8005770:	4a04      	ldr	r2, [pc, #16]	; (8005784 <_localeconv_r+0x14>)
 8005772:	4b05      	ldr	r3, [pc, #20]	; (8005788 <_localeconv_r+0x18>)
 8005774:	6812      	ldr	r2, [r2, #0]
 8005776:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005778:	2800      	cmp	r0, #0
 800577a:	bf08      	it	eq
 800577c:	4618      	moveq	r0, r3
 800577e:	30f0      	adds	r0, #240	; 0xf0
 8005780:	4770      	bx	lr
 8005782:	bf00      	nop
 8005784:	20000020 	.word	0x20000020
 8005788:	20000864 	.word	0x20000864

0800578c <__retarget_lock_init_recursive>:
 800578c:	4770      	bx	lr
 800578e:	bf00      	nop

08005790 <__retarget_lock_close_recursive>:
 8005790:	4770      	bx	lr
 8005792:	bf00      	nop

08005794 <__retarget_lock_acquire_recursive>:
 8005794:	4770      	bx	lr
 8005796:	bf00      	nop

08005798 <__retarget_lock_release_recursive>:
 8005798:	4770      	bx	lr
 800579a:	bf00      	nop

0800579c <__swhatbuf_r>:
 800579c:	b570      	push	{r4, r5, r6, lr}
 800579e:	460c      	mov	r4, r1
 80057a0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80057a4:	2900      	cmp	r1, #0
 80057a6:	b096      	sub	sp, #88	; 0x58
 80057a8:	4615      	mov	r5, r2
 80057aa:	461e      	mov	r6, r3
 80057ac:	da0f      	bge.n	80057ce <__swhatbuf_r+0x32>
 80057ae:	89a2      	ldrh	r2, [r4, #12]
 80057b0:	2300      	movs	r3, #0
 80057b2:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 80057b6:	6033      	str	r3, [r6, #0]
 80057b8:	d104      	bne.n	80057c4 <__swhatbuf_r+0x28>
 80057ba:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80057be:	602b      	str	r3, [r5, #0]
 80057c0:	b016      	add	sp, #88	; 0x58
 80057c2:	bd70      	pop	{r4, r5, r6, pc}
 80057c4:	2240      	movs	r2, #64	; 0x40
 80057c6:	4618      	mov	r0, r3
 80057c8:	602a      	str	r2, [r5, #0]
 80057ca:	b016      	add	sp, #88	; 0x58
 80057cc:	bd70      	pop	{r4, r5, r6, pc}
 80057ce:	466a      	mov	r2, sp
 80057d0:	f001 fad0 	bl	8006d74 <_fstat_r>
 80057d4:	2800      	cmp	r0, #0
 80057d6:	dbea      	blt.n	80057ae <__swhatbuf_r+0x12>
 80057d8:	9b01      	ldr	r3, [sp, #4]
 80057da:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 80057de:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 80057e2:	fab3 f383 	clz	r3, r3
 80057e6:	095b      	lsrs	r3, r3, #5
 80057e8:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80057ec:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80057f0:	6033      	str	r3, [r6, #0]
 80057f2:	602a      	str	r2, [r5, #0]
 80057f4:	b016      	add	sp, #88	; 0x58
 80057f6:	bd70      	pop	{r4, r5, r6, pc}

080057f8 <__smakebuf_r>:
 80057f8:	898a      	ldrh	r2, [r1, #12]
 80057fa:	0792      	lsls	r2, r2, #30
 80057fc:	460b      	mov	r3, r1
 80057fe:	d506      	bpl.n	800580e <__smakebuf_r+0x16>
 8005800:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005804:	2101      	movs	r1, #1
 8005806:	601a      	str	r2, [r3, #0]
 8005808:	e9c3 2104 	strd	r2, r1, [r3, #16]
 800580c:	4770      	bx	lr
 800580e:	b570      	push	{r4, r5, r6, lr}
 8005810:	b082      	sub	sp, #8
 8005812:	ab01      	add	r3, sp, #4
 8005814:	466a      	mov	r2, sp
 8005816:	460c      	mov	r4, r1
 8005818:	4605      	mov	r5, r0
 800581a:	f7ff ffbf 	bl	800579c <__swhatbuf_r>
 800581e:	9900      	ldr	r1, [sp, #0]
 8005820:	4606      	mov	r6, r0
 8005822:	4628      	mov	r0, r5
 8005824:	f000 f832 	bl	800588c <_malloc_r>
 8005828:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800582c:	b1d8      	cbz	r0, 8005866 <__smakebuf_r+0x6e>
 800582e:	4916      	ldr	r1, [pc, #88]	; (8005888 <__smakebuf_r+0x90>)
 8005830:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005832:	9a01      	ldr	r2, [sp, #4]
 8005834:	9900      	ldr	r1, [sp, #0]
 8005836:	6020      	str	r0, [r4, #0]
 8005838:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800583c:	81a3      	strh	r3, [r4, #12]
 800583e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005842:	b91a      	cbnz	r2, 800584c <__smakebuf_r+0x54>
 8005844:	4333      	orrs	r3, r6
 8005846:	81a3      	strh	r3, [r4, #12]
 8005848:	b002      	add	sp, #8
 800584a:	bd70      	pop	{r4, r5, r6, pc}
 800584c:	4628      	mov	r0, r5
 800584e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005852:	f001 faa3 	bl	8006d9c <_isatty_r>
 8005856:	b1a0      	cbz	r0, 8005882 <__smakebuf_r+0x8a>
 8005858:	89a3      	ldrh	r3, [r4, #12]
 800585a:	f023 0303 	bic.w	r3, r3, #3
 800585e:	f043 0301 	orr.w	r3, r3, #1
 8005862:	b21b      	sxth	r3, r3
 8005864:	e7ee      	b.n	8005844 <__smakebuf_r+0x4c>
 8005866:	059a      	lsls	r2, r3, #22
 8005868:	d4ee      	bmi.n	8005848 <__smakebuf_r+0x50>
 800586a:	f023 0303 	bic.w	r3, r3, #3
 800586e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005872:	f043 0302 	orr.w	r3, r3, #2
 8005876:	2101      	movs	r1, #1
 8005878:	81a3      	strh	r3, [r4, #12]
 800587a:	6022      	str	r2, [r4, #0]
 800587c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005880:	e7e2      	b.n	8005848 <__smakebuf_r+0x50>
 8005882:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005886:	e7dd      	b.n	8005844 <__smakebuf_r+0x4c>
 8005888:	080050e9 	.word	0x080050e9

0800588c <_malloc_r>:
 800588c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005890:	f101 050b 	add.w	r5, r1, #11
 8005894:	2d16      	cmp	r5, #22
 8005896:	b083      	sub	sp, #12
 8005898:	4606      	mov	r6, r0
 800589a:	d823      	bhi.n	80058e4 <_malloc_r+0x58>
 800589c:	2910      	cmp	r1, #16
 800589e:	f200 80b9 	bhi.w	8005a14 <_malloc_r+0x188>
 80058a2:	f000 fafb 	bl	8005e9c <__malloc_lock>
 80058a6:	2510      	movs	r5, #16
 80058a8:	2318      	movs	r3, #24
 80058aa:	2002      	movs	r0, #2
 80058ac:	4fc5      	ldr	r7, [pc, #788]	; (8005bc4 <_malloc_r+0x338>)
 80058ae:	443b      	add	r3, r7
 80058b0:	f1a3 0208 	sub.w	r2, r3, #8
 80058b4:	685c      	ldr	r4, [r3, #4]
 80058b6:	4294      	cmp	r4, r2
 80058b8:	f000 8166 	beq.w	8005b88 <_malloc_r+0x2fc>
 80058bc:	6863      	ldr	r3, [r4, #4]
 80058be:	f023 0303 	bic.w	r3, r3, #3
 80058c2:	4423      	add	r3, r4
 80058c4:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 80058c8:	685a      	ldr	r2, [r3, #4]
 80058ca:	60e9      	str	r1, [r5, #12]
 80058cc:	f042 0201 	orr.w	r2, r2, #1
 80058d0:	608d      	str	r5, [r1, #8]
 80058d2:	4630      	mov	r0, r6
 80058d4:	605a      	str	r2, [r3, #4]
 80058d6:	f000 fae7 	bl	8005ea8 <__malloc_unlock>
 80058da:	3408      	adds	r4, #8
 80058dc:	4620      	mov	r0, r4
 80058de:	b003      	add	sp, #12
 80058e0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80058e4:	f035 0507 	bics.w	r5, r5, #7
 80058e8:	f100 8094 	bmi.w	8005a14 <_malloc_r+0x188>
 80058ec:	42a9      	cmp	r1, r5
 80058ee:	f200 8091 	bhi.w	8005a14 <_malloc_r+0x188>
 80058f2:	f000 fad3 	bl	8005e9c <__malloc_lock>
 80058f6:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80058fa:	f0c0 8183 	bcc.w	8005c04 <_malloc_r+0x378>
 80058fe:	0a6b      	lsrs	r3, r5, #9
 8005900:	f000 808f 	beq.w	8005a22 <_malloc_r+0x196>
 8005904:	2b04      	cmp	r3, #4
 8005906:	f200 8146 	bhi.w	8005b96 <_malloc_r+0x30a>
 800590a:	09ab      	lsrs	r3, r5, #6
 800590c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005910:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005914:	00c3      	lsls	r3, r0, #3
 8005916:	4fab      	ldr	r7, [pc, #684]	; (8005bc4 <_malloc_r+0x338>)
 8005918:	443b      	add	r3, r7
 800591a:	f1a3 0108 	sub.w	r1, r3, #8
 800591e:	685c      	ldr	r4, [r3, #4]
 8005920:	42a1      	cmp	r1, r4
 8005922:	d106      	bne.n	8005932 <_malloc_r+0xa6>
 8005924:	e00c      	b.n	8005940 <_malloc_r+0xb4>
 8005926:	2a00      	cmp	r2, #0
 8005928:	f280 811d 	bge.w	8005b66 <_malloc_r+0x2da>
 800592c:	68e4      	ldr	r4, [r4, #12]
 800592e:	42a1      	cmp	r1, r4
 8005930:	d006      	beq.n	8005940 <_malloc_r+0xb4>
 8005932:	6863      	ldr	r3, [r4, #4]
 8005934:	f023 0303 	bic.w	r3, r3, #3
 8005938:	1b5a      	subs	r2, r3, r5
 800593a:	2a0f      	cmp	r2, #15
 800593c:	ddf3      	ble.n	8005926 <_malloc_r+0x9a>
 800593e:	4660      	mov	r0, ip
 8005940:	693c      	ldr	r4, [r7, #16]
 8005942:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005bd8 <_malloc_r+0x34c>
 8005946:	4564      	cmp	r4, ip
 8005948:	d071      	beq.n	8005a2e <_malloc_r+0x1a2>
 800594a:	6863      	ldr	r3, [r4, #4]
 800594c:	f023 0303 	bic.w	r3, r3, #3
 8005950:	1b5a      	subs	r2, r3, r5
 8005952:	2a0f      	cmp	r2, #15
 8005954:	f300 8144 	bgt.w	8005be0 <_malloc_r+0x354>
 8005958:	2a00      	cmp	r2, #0
 800595a:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 800595e:	f280 8126 	bge.w	8005bae <_malloc_r+0x322>
 8005962:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005966:	f080 8169 	bcs.w	8005c3c <_malloc_r+0x3b0>
 800596a:	08db      	lsrs	r3, r3, #3
 800596c:	1c59      	adds	r1, r3, #1
 800596e:	687a      	ldr	r2, [r7, #4]
 8005970:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005974:	f8c4 8008 	str.w	r8, [r4, #8]
 8005978:	f04f 0e01 	mov.w	lr, #1
 800597c:	109b      	asrs	r3, r3, #2
 800597e:	fa0e f303 	lsl.w	r3, lr, r3
 8005982:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005986:	4313      	orrs	r3, r2
 8005988:	f1ae 0208 	sub.w	r2, lr, #8
 800598c:	60e2      	str	r2, [r4, #12]
 800598e:	607b      	str	r3, [r7, #4]
 8005990:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005994:	f8c8 400c 	str.w	r4, [r8, #12]
 8005998:	1082      	asrs	r2, r0, #2
 800599a:	2401      	movs	r4, #1
 800599c:	4094      	lsls	r4, r2
 800599e:	429c      	cmp	r4, r3
 80059a0:	d84b      	bhi.n	8005a3a <_malloc_r+0x1ae>
 80059a2:	421c      	tst	r4, r3
 80059a4:	d106      	bne.n	80059b4 <_malloc_r+0x128>
 80059a6:	f020 0003 	bic.w	r0, r0, #3
 80059aa:	0064      	lsls	r4, r4, #1
 80059ac:	421c      	tst	r4, r3
 80059ae:	f100 0004 	add.w	r0, r0, #4
 80059b2:	d0fa      	beq.n	80059aa <_malloc_r+0x11e>
 80059b4:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 80059b8:	46ce      	mov	lr, r9
 80059ba:	4680      	mov	r8, r0
 80059bc:	f8de 300c 	ldr.w	r3, [lr, #12]
 80059c0:	459e      	cmp	lr, r3
 80059c2:	d107      	bne.n	80059d4 <_malloc_r+0x148>
 80059c4:	e122      	b.n	8005c0c <_malloc_r+0x380>
 80059c6:	2a00      	cmp	r2, #0
 80059c8:	f280 8129 	bge.w	8005c1e <_malloc_r+0x392>
 80059cc:	68db      	ldr	r3, [r3, #12]
 80059ce:	459e      	cmp	lr, r3
 80059d0:	f000 811c 	beq.w	8005c0c <_malloc_r+0x380>
 80059d4:	6859      	ldr	r1, [r3, #4]
 80059d6:	f021 0103 	bic.w	r1, r1, #3
 80059da:	1b4a      	subs	r2, r1, r5
 80059dc:	2a0f      	cmp	r2, #15
 80059de:	ddf2      	ble.n	80059c6 <_malloc_r+0x13a>
 80059e0:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 80059e4:	195c      	adds	r4, r3, r5
 80059e6:	f045 0501 	orr.w	r5, r5, #1
 80059ea:	605d      	str	r5, [r3, #4]
 80059ec:	f042 0501 	orr.w	r5, r2, #1
 80059f0:	f8c8 e00c 	str.w	lr, [r8, #12]
 80059f4:	4630      	mov	r0, r6
 80059f6:	f8ce 8008 	str.w	r8, [lr, #8]
 80059fa:	e9c7 4404 	strd	r4, r4, [r7, #16]
 80059fe:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005a02:	6065      	str	r5, [r4, #4]
 8005a04:	505a      	str	r2, [r3, r1]
 8005a06:	9301      	str	r3, [sp, #4]
 8005a08:	f000 fa4e 	bl	8005ea8 <__malloc_unlock>
 8005a0c:	9b01      	ldr	r3, [sp, #4]
 8005a0e:	f103 0408 	add.w	r4, r3, #8
 8005a12:	e763      	b.n	80058dc <_malloc_r+0x50>
 8005a14:	2400      	movs	r4, #0
 8005a16:	230c      	movs	r3, #12
 8005a18:	4620      	mov	r0, r4
 8005a1a:	6033      	str	r3, [r6, #0]
 8005a1c:	b003      	add	sp, #12
 8005a1e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a22:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005a26:	2040      	movs	r0, #64	; 0x40
 8005a28:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005a2c:	e773      	b.n	8005916 <_malloc_r+0x8a>
 8005a2e:	687b      	ldr	r3, [r7, #4]
 8005a30:	1082      	asrs	r2, r0, #2
 8005a32:	2401      	movs	r4, #1
 8005a34:	4094      	lsls	r4, r2
 8005a36:	429c      	cmp	r4, r3
 8005a38:	d9b3      	bls.n	80059a2 <_malloc_r+0x116>
 8005a3a:	68bc      	ldr	r4, [r7, #8]
 8005a3c:	6863      	ldr	r3, [r4, #4]
 8005a3e:	f023 0903 	bic.w	r9, r3, #3
 8005a42:	45a9      	cmp	r9, r5
 8005a44:	d303      	bcc.n	8005a4e <_malloc_r+0x1c2>
 8005a46:	eba9 0305 	sub.w	r3, r9, r5
 8005a4a:	2b0f      	cmp	r3, #15
 8005a4c:	dc7b      	bgt.n	8005b46 <_malloc_r+0x2ba>
 8005a4e:	4b5e      	ldr	r3, [pc, #376]	; (8005bc8 <_malloc_r+0x33c>)
 8005a50:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005bdc <_malloc_r+0x350>
 8005a54:	681a      	ldr	r2, [r3, #0]
 8005a56:	f8da 3000 	ldr.w	r3, [sl]
 8005a5a:	3301      	adds	r3, #1
 8005a5c:	eb05 0802 	add.w	r8, r5, r2
 8005a60:	f000 8148 	beq.w	8005cf4 <_malloc_r+0x468>
 8005a64:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005a68:	f108 080f 	add.w	r8, r8, #15
 8005a6c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005a70:	f028 080f 	bic.w	r8, r8, #15
 8005a74:	4641      	mov	r1, r8
 8005a76:	4630      	mov	r0, r6
 8005a78:	f000 ff08 	bl	800688c <_sbrk_r>
 8005a7c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005a80:	4683      	mov	fp, r0
 8005a82:	f000 8104 	beq.w	8005c8e <_malloc_r+0x402>
 8005a86:	eb04 0009 	add.w	r0, r4, r9
 8005a8a:	4558      	cmp	r0, fp
 8005a8c:	f200 80fd 	bhi.w	8005c8a <_malloc_r+0x3fe>
 8005a90:	4a4e      	ldr	r2, [pc, #312]	; (8005bcc <_malloc_r+0x340>)
 8005a92:	6813      	ldr	r3, [r2, #0]
 8005a94:	4443      	add	r3, r8
 8005a96:	6013      	str	r3, [r2, #0]
 8005a98:	f000 814d 	beq.w	8005d36 <_malloc_r+0x4aa>
 8005a9c:	f8da 1000 	ldr.w	r1, [sl]
 8005aa0:	3101      	adds	r1, #1
 8005aa2:	bf1b      	ittet	ne
 8005aa4:	ebab 0000 	subne.w	r0, fp, r0
 8005aa8:	181b      	addne	r3, r3, r0
 8005aaa:	f8ca b000 	streq.w	fp, [sl]
 8005aae:	6013      	strne	r3, [r2, #0]
 8005ab0:	f01b 0307 	ands.w	r3, fp, #7
 8005ab4:	f000 8134 	beq.w	8005d20 <_malloc_r+0x494>
 8005ab8:	f1c3 0108 	rsb	r1, r3, #8
 8005abc:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005ac0:	448b      	add	fp, r1
 8005ac2:	3308      	adds	r3, #8
 8005ac4:	44d8      	add	r8, fp
 8005ac6:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005aca:	eba3 0808 	sub.w	r8, r3, r8
 8005ace:	4641      	mov	r1, r8
 8005ad0:	4630      	mov	r0, r6
 8005ad2:	9201      	str	r2, [sp, #4]
 8005ad4:	f000 feda 	bl	800688c <_sbrk_r>
 8005ad8:	1c43      	adds	r3, r0, #1
 8005ada:	9a01      	ldr	r2, [sp, #4]
 8005adc:	f000 8146 	beq.w	8005d6c <_malloc_r+0x4e0>
 8005ae0:	eba0 010b 	sub.w	r1, r0, fp
 8005ae4:	4441      	add	r1, r8
 8005ae6:	f041 0101 	orr.w	r1, r1, #1
 8005aea:	6813      	ldr	r3, [r2, #0]
 8005aec:	f8c7 b008 	str.w	fp, [r7, #8]
 8005af0:	4443      	add	r3, r8
 8005af2:	42bc      	cmp	r4, r7
 8005af4:	f8cb 1004 	str.w	r1, [fp, #4]
 8005af8:	6013      	str	r3, [r2, #0]
 8005afa:	d015      	beq.n	8005b28 <_malloc_r+0x29c>
 8005afc:	f1b9 0f0f 	cmp.w	r9, #15
 8005b00:	f240 8130 	bls.w	8005d64 <_malloc_r+0x4d8>
 8005b04:	6860      	ldr	r0, [r4, #4]
 8005b06:	f1a9 010c 	sub.w	r1, r9, #12
 8005b0a:	f021 0107 	bic.w	r1, r1, #7
 8005b0e:	f000 0001 	and.w	r0, r0, #1
 8005b12:	eb04 0c01 	add.w	ip, r4, r1
 8005b16:	4308      	orrs	r0, r1
 8005b18:	f04f 0e05 	mov.w	lr, #5
 8005b1c:	290f      	cmp	r1, #15
 8005b1e:	6060      	str	r0, [r4, #4]
 8005b20:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005b24:	f200 813a 	bhi.w	8005d9c <_malloc_r+0x510>
 8005b28:	4a29      	ldr	r2, [pc, #164]	; (8005bd0 <_malloc_r+0x344>)
 8005b2a:	482a      	ldr	r0, [pc, #168]	; (8005bd4 <_malloc_r+0x348>)
 8005b2c:	6811      	ldr	r1, [r2, #0]
 8005b2e:	68bc      	ldr	r4, [r7, #8]
 8005b30:	428b      	cmp	r3, r1
 8005b32:	6801      	ldr	r1, [r0, #0]
 8005b34:	bf88      	it	hi
 8005b36:	6013      	strhi	r3, [r2, #0]
 8005b38:	6862      	ldr	r2, [r4, #4]
 8005b3a:	428b      	cmp	r3, r1
 8005b3c:	f022 0203 	bic.w	r2, r2, #3
 8005b40:	bf88      	it	hi
 8005b42:	6003      	strhi	r3, [r0, #0]
 8005b44:	e0a7      	b.n	8005c96 <_malloc_r+0x40a>
 8005b46:	1962      	adds	r2, r4, r5
 8005b48:	f043 0301 	orr.w	r3, r3, #1
 8005b4c:	f045 0501 	orr.w	r5, r5, #1
 8005b50:	6065      	str	r5, [r4, #4]
 8005b52:	4630      	mov	r0, r6
 8005b54:	60ba      	str	r2, [r7, #8]
 8005b56:	6053      	str	r3, [r2, #4]
 8005b58:	f000 f9a6 	bl	8005ea8 <__malloc_unlock>
 8005b5c:	3408      	adds	r4, #8
 8005b5e:	4620      	mov	r0, r4
 8005b60:	b003      	add	sp, #12
 8005b62:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b66:	4423      	add	r3, r4
 8005b68:	68e1      	ldr	r1, [r4, #12]
 8005b6a:	685a      	ldr	r2, [r3, #4]
 8005b6c:	68a5      	ldr	r5, [r4, #8]
 8005b6e:	f042 0201 	orr.w	r2, r2, #1
 8005b72:	60e9      	str	r1, [r5, #12]
 8005b74:	4630      	mov	r0, r6
 8005b76:	608d      	str	r5, [r1, #8]
 8005b78:	605a      	str	r2, [r3, #4]
 8005b7a:	f000 f995 	bl	8005ea8 <__malloc_unlock>
 8005b7e:	3408      	adds	r4, #8
 8005b80:	4620      	mov	r0, r4
 8005b82:	b003      	add	sp, #12
 8005b84:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b88:	68dc      	ldr	r4, [r3, #12]
 8005b8a:	42a3      	cmp	r3, r4
 8005b8c:	bf08      	it	eq
 8005b8e:	3002      	addeq	r0, #2
 8005b90:	f43f aed6 	beq.w	8005940 <_malloc_r+0xb4>
 8005b94:	e692      	b.n	80058bc <_malloc_r+0x30>
 8005b96:	2b14      	cmp	r3, #20
 8005b98:	d971      	bls.n	8005c7e <_malloc_r+0x3f2>
 8005b9a:	2b54      	cmp	r3, #84	; 0x54
 8005b9c:	f200 80ad 	bhi.w	8005cfa <_malloc_r+0x46e>
 8005ba0:	0b2b      	lsrs	r3, r5, #12
 8005ba2:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005ba6:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005baa:	00c3      	lsls	r3, r0, #3
 8005bac:	e6b3      	b.n	8005916 <_malloc_r+0x8a>
 8005bae:	4423      	add	r3, r4
 8005bb0:	4630      	mov	r0, r6
 8005bb2:	685a      	ldr	r2, [r3, #4]
 8005bb4:	f042 0201 	orr.w	r2, r2, #1
 8005bb8:	605a      	str	r2, [r3, #4]
 8005bba:	3408      	adds	r4, #8
 8005bbc:	f000 f974 	bl	8005ea8 <__malloc_unlock>
 8005bc0:	e68c      	b.n	80058dc <_malloc_r+0x50>
 8005bc2:	bf00      	nop
 8005bc4:	20000454 	.word	0x20000454
 8005bc8:	20000aa4 	.word	0x20000aa4
 8005bcc:	20000a74 	.word	0x20000a74
 8005bd0:	20000a9c 	.word	0x20000a9c
 8005bd4:	20000aa0 	.word	0x20000aa0
 8005bd8:	2000045c 	.word	0x2000045c
 8005bdc:	2000085c 	.word	0x2000085c
 8005be0:	1961      	adds	r1, r4, r5
 8005be2:	f045 0e01 	orr.w	lr, r5, #1
 8005be6:	f042 0501 	orr.w	r5, r2, #1
 8005bea:	f8c4 e004 	str.w	lr, [r4, #4]
 8005bee:	4630      	mov	r0, r6
 8005bf0:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005bf4:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005bf8:	604d      	str	r5, [r1, #4]
 8005bfa:	50e2      	str	r2, [r4, r3]
 8005bfc:	f000 f954 	bl	8005ea8 <__malloc_unlock>
 8005c00:	3408      	adds	r4, #8
 8005c02:	e66b      	b.n	80058dc <_malloc_r+0x50>
 8005c04:	08e8      	lsrs	r0, r5, #3
 8005c06:	f105 0308 	add.w	r3, r5, #8
 8005c0a:	e64f      	b.n	80058ac <_malloc_r+0x20>
 8005c0c:	f108 0801 	add.w	r8, r8, #1
 8005c10:	f018 0f03 	tst.w	r8, #3
 8005c14:	f10e 0e08 	add.w	lr, lr, #8
 8005c18:	f47f aed0 	bne.w	80059bc <_malloc_r+0x130>
 8005c1c:	e052      	b.n	8005cc4 <_malloc_r+0x438>
 8005c1e:	4419      	add	r1, r3
 8005c20:	461c      	mov	r4, r3
 8005c22:	684a      	ldr	r2, [r1, #4]
 8005c24:	68db      	ldr	r3, [r3, #12]
 8005c26:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005c2a:	f042 0201 	orr.w	r2, r2, #1
 8005c2e:	604a      	str	r2, [r1, #4]
 8005c30:	4630      	mov	r0, r6
 8005c32:	60eb      	str	r3, [r5, #12]
 8005c34:	609d      	str	r5, [r3, #8]
 8005c36:	f000 f937 	bl	8005ea8 <__malloc_unlock>
 8005c3a:	e64f      	b.n	80058dc <_malloc_r+0x50>
 8005c3c:	0a5a      	lsrs	r2, r3, #9
 8005c3e:	2a04      	cmp	r2, #4
 8005c40:	d935      	bls.n	8005cae <_malloc_r+0x422>
 8005c42:	2a14      	cmp	r2, #20
 8005c44:	d86f      	bhi.n	8005d26 <_malloc_r+0x49a>
 8005c46:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005c4a:	00c9      	lsls	r1, r1, #3
 8005c4c:	325b      	adds	r2, #91	; 0x5b
 8005c4e:	eb07 0e01 	add.w	lr, r7, r1
 8005c52:	5879      	ldr	r1, [r7, r1]
 8005c54:	f1ae 0e08 	sub.w	lr, lr, #8
 8005c58:	458e      	cmp	lr, r1
 8005c5a:	d058      	beq.n	8005d0e <_malloc_r+0x482>
 8005c5c:	684a      	ldr	r2, [r1, #4]
 8005c5e:	f022 0203 	bic.w	r2, r2, #3
 8005c62:	429a      	cmp	r2, r3
 8005c64:	d902      	bls.n	8005c6c <_malloc_r+0x3e0>
 8005c66:	6889      	ldr	r1, [r1, #8]
 8005c68:	458e      	cmp	lr, r1
 8005c6a:	d1f7      	bne.n	8005c5c <_malloc_r+0x3d0>
 8005c6c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005c70:	687b      	ldr	r3, [r7, #4]
 8005c72:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005c76:	f8ce 4008 	str.w	r4, [lr, #8]
 8005c7a:	60cc      	str	r4, [r1, #12]
 8005c7c:	e68c      	b.n	8005998 <_malloc_r+0x10c>
 8005c7e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005c82:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005c86:	00c3      	lsls	r3, r0, #3
 8005c88:	e645      	b.n	8005916 <_malloc_r+0x8a>
 8005c8a:	42bc      	cmp	r4, r7
 8005c8c:	d072      	beq.n	8005d74 <_malloc_r+0x4e8>
 8005c8e:	68bc      	ldr	r4, [r7, #8]
 8005c90:	6862      	ldr	r2, [r4, #4]
 8005c92:	f022 0203 	bic.w	r2, r2, #3
 8005c96:	4295      	cmp	r5, r2
 8005c98:	eba2 0305 	sub.w	r3, r2, r5
 8005c9c:	d802      	bhi.n	8005ca4 <_malloc_r+0x418>
 8005c9e:	2b0f      	cmp	r3, #15
 8005ca0:	f73f af51 	bgt.w	8005b46 <_malloc_r+0x2ba>
 8005ca4:	4630      	mov	r0, r6
 8005ca6:	f000 f8ff 	bl	8005ea8 <__malloc_unlock>
 8005caa:	2400      	movs	r4, #0
 8005cac:	e616      	b.n	80058dc <_malloc_r+0x50>
 8005cae:	099a      	lsrs	r2, r3, #6
 8005cb0:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005cb4:	00c9      	lsls	r1, r1, #3
 8005cb6:	3238      	adds	r2, #56	; 0x38
 8005cb8:	e7c9      	b.n	8005c4e <_malloc_r+0x3c2>
 8005cba:	f8d9 9000 	ldr.w	r9, [r9]
 8005cbe:	4599      	cmp	r9, r3
 8005cc0:	f040 8083 	bne.w	8005dca <_malloc_r+0x53e>
 8005cc4:	f010 0f03 	tst.w	r0, #3
 8005cc8:	f1a9 0308 	sub.w	r3, r9, #8
 8005ccc:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005cd0:	d1f3      	bne.n	8005cba <_malloc_r+0x42e>
 8005cd2:	687b      	ldr	r3, [r7, #4]
 8005cd4:	ea23 0304 	bic.w	r3, r3, r4
 8005cd8:	607b      	str	r3, [r7, #4]
 8005cda:	0064      	lsls	r4, r4, #1
 8005cdc:	429c      	cmp	r4, r3
 8005cde:	f63f aeac 	bhi.w	8005a3a <_malloc_r+0x1ae>
 8005ce2:	b91c      	cbnz	r4, 8005cec <_malloc_r+0x460>
 8005ce4:	e6a9      	b.n	8005a3a <_malloc_r+0x1ae>
 8005ce6:	0064      	lsls	r4, r4, #1
 8005ce8:	f108 0804 	add.w	r8, r8, #4
 8005cec:	421c      	tst	r4, r3
 8005cee:	d0fa      	beq.n	8005ce6 <_malloc_r+0x45a>
 8005cf0:	4640      	mov	r0, r8
 8005cf2:	e65f      	b.n	80059b4 <_malloc_r+0x128>
 8005cf4:	f108 0810 	add.w	r8, r8, #16
 8005cf8:	e6bc      	b.n	8005a74 <_malloc_r+0x1e8>
 8005cfa:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005cfe:	d826      	bhi.n	8005d4e <_malloc_r+0x4c2>
 8005d00:	0beb      	lsrs	r3, r5, #15
 8005d02:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005d06:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005d0a:	00c3      	lsls	r3, r0, #3
 8005d0c:	e603      	b.n	8005916 <_malloc_r+0x8a>
 8005d0e:	687b      	ldr	r3, [r7, #4]
 8005d10:	1092      	asrs	r2, r2, #2
 8005d12:	f04f 0801 	mov.w	r8, #1
 8005d16:	fa08 f202 	lsl.w	r2, r8, r2
 8005d1a:	4313      	orrs	r3, r2
 8005d1c:	607b      	str	r3, [r7, #4]
 8005d1e:	e7a8      	b.n	8005c72 <_malloc_r+0x3e6>
 8005d20:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005d24:	e6ce      	b.n	8005ac4 <_malloc_r+0x238>
 8005d26:	2a54      	cmp	r2, #84	; 0x54
 8005d28:	d829      	bhi.n	8005d7e <_malloc_r+0x4f2>
 8005d2a:	0b1a      	lsrs	r2, r3, #12
 8005d2c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005d30:	00c9      	lsls	r1, r1, #3
 8005d32:	326e      	adds	r2, #110	; 0x6e
 8005d34:	e78b      	b.n	8005c4e <_malloc_r+0x3c2>
 8005d36:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005d3a:	2900      	cmp	r1, #0
 8005d3c:	f47f aeae 	bne.w	8005a9c <_malloc_r+0x210>
 8005d40:	eb09 0208 	add.w	r2, r9, r8
 8005d44:	68b9      	ldr	r1, [r7, #8]
 8005d46:	f042 0201 	orr.w	r2, r2, #1
 8005d4a:	604a      	str	r2, [r1, #4]
 8005d4c:	e6ec      	b.n	8005b28 <_malloc_r+0x29c>
 8005d4e:	f240 5254 	movw	r2, #1364	; 0x554
 8005d52:	4293      	cmp	r3, r2
 8005d54:	d81c      	bhi.n	8005d90 <_malloc_r+0x504>
 8005d56:	0cab      	lsrs	r3, r5, #18
 8005d58:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005d5c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005d60:	00c3      	lsls	r3, r0, #3
 8005d62:	e5d8      	b.n	8005916 <_malloc_r+0x8a>
 8005d64:	2301      	movs	r3, #1
 8005d66:	f8cb 3004 	str.w	r3, [fp, #4]
 8005d6a:	e79b      	b.n	8005ca4 <_malloc_r+0x418>
 8005d6c:	2101      	movs	r1, #1
 8005d6e:	f04f 0800 	mov.w	r8, #0
 8005d72:	e6ba      	b.n	8005aea <_malloc_r+0x25e>
 8005d74:	4a16      	ldr	r2, [pc, #88]	; (8005dd0 <_malloc_r+0x544>)
 8005d76:	6813      	ldr	r3, [r2, #0]
 8005d78:	4443      	add	r3, r8
 8005d7a:	6013      	str	r3, [r2, #0]
 8005d7c:	e68e      	b.n	8005a9c <_malloc_r+0x210>
 8005d7e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005d82:	d814      	bhi.n	8005dae <_malloc_r+0x522>
 8005d84:	0bda      	lsrs	r2, r3, #15
 8005d86:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005d8a:	00c9      	lsls	r1, r1, #3
 8005d8c:	3277      	adds	r2, #119	; 0x77
 8005d8e:	e75e      	b.n	8005c4e <_malloc_r+0x3c2>
 8005d90:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005d94:	207f      	movs	r0, #127	; 0x7f
 8005d96:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005d9a:	e5bc      	b.n	8005916 <_malloc_r+0x8a>
 8005d9c:	f104 0108 	add.w	r1, r4, #8
 8005da0:	4630      	mov	r0, r6
 8005da2:	9201      	str	r2, [sp, #4]
 8005da4:	f7ff fa48 	bl	8005238 <_free_r>
 8005da8:	9a01      	ldr	r2, [sp, #4]
 8005daa:	6813      	ldr	r3, [r2, #0]
 8005dac:	e6bc      	b.n	8005b28 <_malloc_r+0x29c>
 8005dae:	f240 5154 	movw	r1, #1364	; 0x554
 8005db2:	428a      	cmp	r2, r1
 8005db4:	d805      	bhi.n	8005dc2 <_malloc_r+0x536>
 8005db6:	0c9a      	lsrs	r2, r3, #18
 8005db8:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005dbc:	00c9      	lsls	r1, r1, #3
 8005dbe:	327c      	adds	r2, #124	; 0x7c
 8005dc0:	e745      	b.n	8005c4e <_malloc_r+0x3c2>
 8005dc2:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005dc6:	227e      	movs	r2, #126	; 0x7e
 8005dc8:	e741      	b.n	8005c4e <_malloc_r+0x3c2>
 8005dca:	687b      	ldr	r3, [r7, #4]
 8005dcc:	e785      	b.n	8005cda <_malloc_r+0x44e>
 8005dce:	bf00      	nop
 8005dd0:	20000a74 	.word	0x20000a74

08005dd4 <memmove>:
 8005dd4:	4288      	cmp	r0, r1
 8005dd6:	b4f0      	push	{r4, r5, r6, r7}
 8005dd8:	d90d      	bls.n	8005df6 <memmove+0x22>
 8005dda:	188b      	adds	r3, r1, r2
 8005ddc:	4283      	cmp	r3, r0
 8005dde:	d90a      	bls.n	8005df6 <memmove+0x22>
 8005de0:	1884      	adds	r4, r0, r2
 8005de2:	b132      	cbz	r2, 8005df2 <memmove+0x1e>
 8005de4:	4622      	mov	r2, r4
 8005de6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005dea:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005dee:	4299      	cmp	r1, r3
 8005df0:	d1f9      	bne.n	8005de6 <memmove+0x12>
 8005df2:	bcf0      	pop	{r4, r5, r6, r7}
 8005df4:	4770      	bx	lr
 8005df6:	2a0f      	cmp	r2, #15
 8005df8:	d949      	bls.n	8005e8e <memmove+0xba>
 8005dfa:	ea40 0301 	orr.w	r3, r0, r1
 8005dfe:	079b      	lsls	r3, r3, #30
 8005e00:	d147      	bne.n	8005e92 <memmove+0xbe>
 8005e02:	f1a2 0310 	sub.w	r3, r2, #16
 8005e06:	091b      	lsrs	r3, r3, #4
 8005e08:	f101 0720 	add.w	r7, r1, #32
 8005e0c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005e10:	f101 0410 	add.w	r4, r1, #16
 8005e14:	f100 0510 	add.w	r5, r0, #16
 8005e18:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005e1c:	f845 6c10 	str.w	r6, [r5, #-16]
 8005e20:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005e24:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005e28:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005e2c:	f845 6c08 	str.w	r6, [r5, #-8]
 8005e30:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005e34:	f845 6c04 	str.w	r6, [r5, #-4]
 8005e38:	3410      	adds	r4, #16
 8005e3a:	42bc      	cmp	r4, r7
 8005e3c:	f105 0510 	add.w	r5, r5, #16
 8005e40:	d1ea      	bne.n	8005e18 <memmove+0x44>
 8005e42:	3301      	adds	r3, #1
 8005e44:	f002 050f 	and.w	r5, r2, #15
 8005e48:	011b      	lsls	r3, r3, #4
 8005e4a:	2d03      	cmp	r5, #3
 8005e4c:	4419      	add	r1, r3
 8005e4e:	4403      	add	r3, r0
 8005e50:	d921      	bls.n	8005e96 <memmove+0xc2>
 8005e52:	1f1f      	subs	r7, r3, #4
 8005e54:	460e      	mov	r6, r1
 8005e56:	462c      	mov	r4, r5
 8005e58:	3c04      	subs	r4, #4
 8005e5a:	f856 cb04 	ldr.w	ip, [r6], #4
 8005e5e:	f847 cf04 	str.w	ip, [r7, #4]!
 8005e62:	2c03      	cmp	r4, #3
 8005e64:	d8f8      	bhi.n	8005e58 <memmove+0x84>
 8005e66:	1f2c      	subs	r4, r5, #4
 8005e68:	f024 0403 	bic.w	r4, r4, #3
 8005e6c:	3404      	adds	r4, #4
 8005e6e:	4423      	add	r3, r4
 8005e70:	4421      	add	r1, r4
 8005e72:	f002 0203 	and.w	r2, r2, #3
 8005e76:	2a00      	cmp	r2, #0
 8005e78:	d0bb      	beq.n	8005df2 <memmove+0x1e>
 8005e7a:	3b01      	subs	r3, #1
 8005e7c:	440a      	add	r2, r1
 8005e7e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005e82:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005e86:	4291      	cmp	r1, r2
 8005e88:	d1f9      	bne.n	8005e7e <memmove+0xaa>
 8005e8a:	bcf0      	pop	{r4, r5, r6, r7}
 8005e8c:	4770      	bx	lr
 8005e8e:	4603      	mov	r3, r0
 8005e90:	e7f1      	b.n	8005e76 <memmove+0xa2>
 8005e92:	4603      	mov	r3, r0
 8005e94:	e7f1      	b.n	8005e7a <memmove+0xa6>
 8005e96:	462a      	mov	r2, r5
 8005e98:	e7ed      	b.n	8005e76 <memmove+0xa2>
 8005e9a:	bf00      	nop

08005e9c <__malloc_lock>:
 8005e9c:	4801      	ldr	r0, [pc, #4]	; (8005ea4 <__malloc_lock+0x8>)
 8005e9e:	f7ff bc79 	b.w	8005794 <__retarget_lock_acquire_recursive>
 8005ea2:	bf00      	nop
 8005ea4:	20000b00 	.word	0x20000b00

08005ea8 <__malloc_unlock>:
 8005ea8:	4801      	ldr	r0, [pc, #4]	; (8005eb0 <__malloc_unlock+0x8>)
 8005eaa:	f7ff bc75 	b.w	8005798 <__retarget_lock_release_recursive>
 8005eae:	bf00      	nop
 8005eb0:	20000b00 	.word	0x20000b00

08005eb4 <_Balloc>:
 8005eb4:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005eb6:	b570      	push	{r4, r5, r6, lr}
 8005eb8:	4605      	mov	r5, r0
 8005eba:	460c      	mov	r4, r1
 8005ebc:	b14b      	cbz	r3, 8005ed2 <_Balloc+0x1e>
 8005ebe:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005ec2:	b180      	cbz	r0, 8005ee6 <_Balloc+0x32>
 8005ec4:	6802      	ldr	r2, [r0, #0]
 8005ec6:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005eca:	2300      	movs	r3, #0
 8005ecc:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005ed0:	bd70      	pop	{r4, r5, r6, pc}
 8005ed2:	2221      	movs	r2, #33	; 0x21
 8005ed4:	2104      	movs	r1, #4
 8005ed6:	f000 fe1d 	bl	8006b14 <_calloc_r>
 8005eda:	4603      	mov	r3, r0
 8005edc:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005ede:	2800      	cmp	r0, #0
 8005ee0:	d1ed      	bne.n	8005ebe <_Balloc+0xa>
 8005ee2:	2000      	movs	r0, #0
 8005ee4:	bd70      	pop	{r4, r5, r6, pc}
 8005ee6:	2101      	movs	r1, #1
 8005ee8:	fa01 f604 	lsl.w	r6, r1, r4
 8005eec:	1d72      	adds	r2, r6, #5
 8005eee:	4628      	mov	r0, r5
 8005ef0:	0092      	lsls	r2, r2, #2
 8005ef2:	f000 fe0f 	bl	8006b14 <_calloc_r>
 8005ef6:	2800      	cmp	r0, #0
 8005ef8:	d0f3      	beq.n	8005ee2 <_Balloc+0x2e>
 8005efa:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005efe:	e7e4      	b.n	8005eca <_Balloc+0x16>

08005f00 <_Bfree>:
 8005f00:	b131      	cbz	r1, 8005f10 <_Bfree+0x10>
 8005f02:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005f04:	684a      	ldr	r2, [r1, #4]
 8005f06:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005f0a:	6008      	str	r0, [r1, #0]
 8005f0c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005f10:	4770      	bx	lr
 8005f12:	bf00      	nop

08005f14 <__multadd>:
 8005f14:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005f16:	690c      	ldr	r4, [r1, #16]
 8005f18:	b083      	sub	sp, #12
 8005f1a:	460d      	mov	r5, r1
 8005f1c:	4606      	mov	r6, r0
 8005f1e:	f101 0c14 	add.w	ip, r1, #20
 8005f22:	2700      	movs	r7, #0
 8005f24:	f8dc 0000 	ldr.w	r0, [ip]
 8005f28:	b281      	uxth	r1, r0
 8005f2a:	fb02 3301 	mla	r3, r2, r1, r3
 8005f2e:	0c01      	lsrs	r1, r0, #16
 8005f30:	0c18      	lsrs	r0, r3, #16
 8005f32:	fb02 0101 	mla	r1, r2, r1, r0
 8005f36:	b29b      	uxth	r3, r3
 8005f38:	3701      	adds	r7, #1
 8005f3a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005f3e:	42bc      	cmp	r4, r7
 8005f40:	f84c 3b04 	str.w	r3, [ip], #4
 8005f44:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8005f48:	dcec      	bgt.n	8005f24 <__multadd+0x10>
 8005f4a:	b13b      	cbz	r3, 8005f5c <__multadd+0x48>
 8005f4c:	68aa      	ldr	r2, [r5, #8]
 8005f4e:	42a2      	cmp	r2, r4
 8005f50:	dd07      	ble.n	8005f62 <__multadd+0x4e>
 8005f52:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8005f56:	3401      	adds	r4, #1
 8005f58:	6153      	str	r3, [r2, #20]
 8005f5a:	612c      	str	r4, [r5, #16]
 8005f5c:	4628      	mov	r0, r5
 8005f5e:	b003      	add	sp, #12
 8005f60:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005f62:	6869      	ldr	r1, [r5, #4]
 8005f64:	9301      	str	r3, [sp, #4]
 8005f66:	3101      	adds	r1, #1
 8005f68:	4630      	mov	r0, r6
 8005f6a:	f7ff ffa3 	bl	8005eb4 <_Balloc>
 8005f6e:	692a      	ldr	r2, [r5, #16]
 8005f70:	3202      	adds	r2, #2
 8005f72:	f105 010c 	add.w	r1, r5, #12
 8005f76:	4607      	mov	r7, r0
 8005f78:	0092      	lsls	r2, r2, #2
 8005f7a:	300c      	adds	r0, #12
 8005f7c:	f7fa fac0 	bl	8000500 <memcpy>
 8005f80:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8005f82:	6869      	ldr	r1, [r5, #4]
 8005f84:	9b01      	ldr	r3, [sp, #4]
 8005f86:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8005f8a:	6028      	str	r0, [r5, #0]
 8005f8c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8005f90:	463d      	mov	r5, r7
 8005f92:	e7de      	b.n	8005f52 <__multadd+0x3e>

08005f94 <__hi0bits>:
 8005f94:	0c02      	lsrs	r2, r0, #16
 8005f96:	0412      	lsls	r2, r2, #16
 8005f98:	4603      	mov	r3, r0
 8005f9a:	b9c2      	cbnz	r2, 8005fce <__hi0bits+0x3a>
 8005f9c:	0403      	lsls	r3, r0, #16
 8005f9e:	2010      	movs	r0, #16
 8005fa0:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8005fa4:	bf04      	itt	eq
 8005fa6:	021b      	lsleq	r3, r3, #8
 8005fa8:	3008      	addeq	r0, #8
 8005faa:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8005fae:	bf04      	itt	eq
 8005fb0:	011b      	lsleq	r3, r3, #4
 8005fb2:	3004      	addeq	r0, #4
 8005fb4:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8005fb8:	bf04      	itt	eq
 8005fba:	009b      	lsleq	r3, r3, #2
 8005fbc:	3002      	addeq	r0, #2
 8005fbe:	2b00      	cmp	r3, #0
 8005fc0:	db04      	blt.n	8005fcc <__hi0bits+0x38>
 8005fc2:	005b      	lsls	r3, r3, #1
 8005fc4:	d501      	bpl.n	8005fca <__hi0bits+0x36>
 8005fc6:	3001      	adds	r0, #1
 8005fc8:	4770      	bx	lr
 8005fca:	2020      	movs	r0, #32
 8005fcc:	4770      	bx	lr
 8005fce:	2000      	movs	r0, #0
 8005fd0:	e7e6      	b.n	8005fa0 <__hi0bits+0xc>
 8005fd2:	bf00      	nop

08005fd4 <__lo0bits>:
 8005fd4:	6803      	ldr	r3, [r0, #0]
 8005fd6:	f013 0207 	ands.w	r2, r3, #7
 8005fda:	4601      	mov	r1, r0
 8005fdc:	d007      	beq.n	8005fee <__lo0bits+0x1a>
 8005fde:	07da      	lsls	r2, r3, #31
 8005fe0:	d41f      	bmi.n	8006022 <__lo0bits+0x4e>
 8005fe2:	0798      	lsls	r0, r3, #30
 8005fe4:	d51f      	bpl.n	8006026 <__lo0bits+0x52>
 8005fe6:	085b      	lsrs	r3, r3, #1
 8005fe8:	600b      	str	r3, [r1, #0]
 8005fea:	2001      	movs	r0, #1
 8005fec:	4770      	bx	lr
 8005fee:	b298      	uxth	r0, r3
 8005ff0:	b1a0      	cbz	r0, 800601c <__lo0bits+0x48>
 8005ff2:	4610      	mov	r0, r2
 8005ff4:	f013 0fff 	tst.w	r3, #255	; 0xff
 8005ff8:	bf04      	itt	eq
 8005ffa:	0a1b      	lsreq	r3, r3, #8
 8005ffc:	3008      	addeq	r0, #8
 8005ffe:	071a      	lsls	r2, r3, #28
 8006000:	bf04      	itt	eq
 8006002:	091b      	lsreq	r3, r3, #4
 8006004:	3004      	addeq	r0, #4
 8006006:	079a      	lsls	r2, r3, #30
 8006008:	bf04      	itt	eq
 800600a:	089b      	lsreq	r3, r3, #2
 800600c:	3002      	addeq	r0, #2
 800600e:	07da      	lsls	r2, r3, #31
 8006010:	d402      	bmi.n	8006018 <__lo0bits+0x44>
 8006012:	085b      	lsrs	r3, r3, #1
 8006014:	d00b      	beq.n	800602e <__lo0bits+0x5a>
 8006016:	3001      	adds	r0, #1
 8006018:	600b      	str	r3, [r1, #0]
 800601a:	4770      	bx	lr
 800601c:	0c1b      	lsrs	r3, r3, #16
 800601e:	2010      	movs	r0, #16
 8006020:	e7e8      	b.n	8005ff4 <__lo0bits+0x20>
 8006022:	2000      	movs	r0, #0
 8006024:	4770      	bx	lr
 8006026:	089b      	lsrs	r3, r3, #2
 8006028:	600b      	str	r3, [r1, #0]
 800602a:	2002      	movs	r0, #2
 800602c:	4770      	bx	lr
 800602e:	2020      	movs	r0, #32
 8006030:	4770      	bx	lr
 8006032:	bf00      	nop

08006034 <__i2b>:
 8006034:	b510      	push	{r4, lr}
 8006036:	460c      	mov	r4, r1
 8006038:	2101      	movs	r1, #1
 800603a:	f7ff ff3b 	bl	8005eb4 <_Balloc>
 800603e:	2201      	movs	r2, #1
 8006040:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8006044:	bd10      	pop	{r4, pc}
 8006046:	bf00      	nop

08006048 <__multiply>:
 8006048:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800604c:	690e      	ldr	r6, [r1, #16]
 800604e:	6914      	ldr	r4, [r2, #16]
 8006050:	42a6      	cmp	r6, r4
 8006052:	b083      	sub	sp, #12
 8006054:	460f      	mov	r7, r1
 8006056:	4615      	mov	r5, r2
 8006058:	da04      	bge.n	8006064 <__multiply+0x1c>
 800605a:	4632      	mov	r2, r6
 800605c:	462f      	mov	r7, r5
 800605e:	4626      	mov	r6, r4
 8006060:	460d      	mov	r5, r1
 8006062:	4614      	mov	r4, r2
 8006064:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006068:	eb06 0804 	add.w	r8, r6, r4
 800606c:	4543      	cmp	r3, r8
 800606e:	bfb8      	it	lt
 8006070:	3101      	addlt	r1, #1
 8006072:	f7ff ff1f 	bl	8005eb4 <_Balloc>
 8006076:	f100 0914 	add.w	r9, r0, #20
 800607a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800607e:	45f1      	cmp	r9, lr
 8006080:	9000      	str	r0, [sp, #0]
 8006082:	d205      	bcs.n	8006090 <__multiply+0x48>
 8006084:	464b      	mov	r3, r9
 8006086:	2200      	movs	r2, #0
 8006088:	f843 2b04 	str.w	r2, [r3], #4
 800608c:	459e      	cmp	lr, r3
 800608e:	d8fb      	bhi.n	8006088 <__multiply+0x40>
 8006090:	f105 0a14 	add.w	sl, r5, #20
 8006094:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006098:	f107 0314 	add.w	r3, r7, #20
 800609c:	45a2      	cmp	sl, r4
 800609e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80060a2:	d261      	bcs.n	8006168 <__multiply+0x120>
 80060a4:	1b64      	subs	r4, r4, r5
 80060a6:	3c15      	subs	r4, #21
 80060a8:	f024 0403 	bic.w	r4, r4, #3
 80060ac:	f8cd e004 	str.w	lr, [sp, #4]
 80060b0:	44a2      	add	sl, r4
 80060b2:	f105 0210 	add.w	r2, r5, #16
 80060b6:	469e      	mov	lr, r3
 80060b8:	e005      	b.n	80060c6 <__multiply+0x7e>
 80060ba:	0c2d      	lsrs	r5, r5, #16
 80060bc:	d12b      	bne.n	8006116 <__multiply+0xce>
 80060be:	4592      	cmp	sl, r2
 80060c0:	f109 0904 	add.w	r9, r9, #4
 80060c4:	d04e      	beq.n	8006164 <__multiply+0x11c>
 80060c6:	f852 5f04 	ldr.w	r5, [r2, #4]!
 80060ca:	fa1f fb85 	uxth.w	fp, r5
 80060ce:	f1bb 0f00 	cmp.w	fp, #0
 80060d2:	d0f2      	beq.n	80060ba <__multiply+0x72>
 80060d4:	4677      	mov	r7, lr
 80060d6:	464e      	mov	r6, r9
 80060d8:	2000      	movs	r0, #0
 80060da:	e000      	b.n	80060de <__multiply+0x96>
 80060dc:	4626      	mov	r6, r4
 80060de:	f857 1b04 	ldr.w	r1, [r7], #4
 80060e2:	6834      	ldr	r4, [r6, #0]
 80060e4:	b28b      	uxth	r3, r1
 80060e6:	b2a5      	uxth	r5, r4
 80060e8:	0c09      	lsrs	r1, r1, #16
 80060ea:	0c24      	lsrs	r4, r4, #16
 80060ec:	fb0b 5303 	mla	r3, fp, r3, r5
 80060f0:	4403      	add	r3, r0
 80060f2:	fb0b 4001 	mla	r0, fp, r1, r4
 80060f6:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80060fa:	4634      	mov	r4, r6
 80060fc:	b29b      	uxth	r3, r3
 80060fe:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006102:	45bc      	cmp	ip, r7
 8006104:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006108:	f844 3b04 	str.w	r3, [r4], #4
 800610c:	d8e6      	bhi.n	80060dc <__multiply+0x94>
 800610e:	6070      	str	r0, [r6, #4]
 8006110:	6815      	ldr	r5, [r2, #0]
 8006112:	0c2d      	lsrs	r5, r5, #16
 8006114:	d0d3      	beq.n	80060be <__multiply+0x76>
 8006116:	f8d9 3000 	ldr.w	r3, [r9]
 800611a:	4676      	mov	r6, lr
 800611c:	4618      	mov	r0, r3
 800611e:	46cb      	mov	fp, r9
 8006120:	2100      	movs	r1, #0
 8006122:	e000      	b.n	8006126 <__multiply+0xde>
 8006124:	46a3      	mov	fp, r4
 8006126:	8834      	ldrh	r4, [r6, #0]
 8006128:	0c00      	lsrs	r0, r0, #16
 800612a:	fb05 0004 	mla	r0, r5, r4, r0
 800612e:	4401      	add	r1, r0
 8006130:	b29b      	uxth	r3, r3
 8006132:	465c      	mov	r4, fp
 8006134:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006138:	f844 3b04 	str.w	r3, [r4], #4
 800613c:	f856 3b04 	ldr.w	r3, [r6], #4
 8006140:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006144:	0c1b      	lsrs	r3, r3, #16
 8006146:	b287      	uxth	r7, r0
 8006148:	fb05 7303 	mla	r3, r5, r3, r7
 800614c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006150:	45b4      	cmp	ip, r6
 8006152:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006156:	d8e5      	bhi.n	8006124 <__multiply+0xdc>
 8006158:	4592      	cmp	sl, r2
 800615a:	f8cb 3004 	str.w	r3, [fp, #4]
 800615e:	f109 0904 	add.w	r9, r9, #4
 8006162:	d1b0      	bne.n	80060c6 <__multiply+0x7e>
 8006164:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006168:	f1b8 0f00 	cmp.w	r8, #0
 800616c:	dd0b      	ble.n	8006186 <__multiply+0x13e>
 800616e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006172:	f1ae 0e04 	sub.w	lr, lr, #4
 8006176:	b11b      	cbz	r3, 8006180 <__multiply+0x138>
 8006178:	e005      	b.n	8006186 <__multiply+0x13e>
 800617a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800617e:	b913      	cbnz	r3, 8006186 <__multiply+0x13e>
 8006180:	f1b8 0801 	subs.w	r8, r8, #1
 8006184:	d1f9      	bne.n	800617a <__multiply+0x132>
 8006186:	9800      	ldr	r0, [sp, #0]
 8006188:	f8c0 8010 	str.w	r8, [r0, #16]
 800618c:	b003      	add	sp, #12
 800618e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006192:	bf00      	nop

08006194 <__pow5mult>:
 8006194:	f012 0303 	ands.w	r3, r2, #3
 8006198:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800619c:	4614      	mov	r4, r2
 800619e:	4607      	mov	r7, r0
 80061a0:	d12e      	bne.n	8006200 <__pow5mult+0x6c>
 80061a2:	460d      	mov	r5, r1
 80061a4:	10a4      	asrs	r4, r4, #2
 80061a6:	d01c      	beq.n	80061e2 <__pow5mult+0x4e>
 80061a8:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80061aa:	b396      	cbz	r6, 8006212 <__pow5mult+0x7e>
 80061ac:	07e3      	lsls	r3, r4, #31
 80061ae:	f04f 0800 	mov.w	r8, #0
 80061b2:	d406      	bmi.n	80061c2 <__pow5mult+0x2e>
 80061b4:	1064      	asrs	r4, r4, #1
 80061b6:	d014      	beq.n	80061e2 <__pow5mult+0x4e>
 80061b8:	6830      	ldr	r0, [r6, #0]
 80061ba:	b1a8      	cbz	r0, 80061e8 <__pow5mult+0x54>
 80061bc:	4606      	mov	r6, r0
 80061be:	07e3      	lsls	r3, r4, #31
 80061c0:	d5f8      	bpl.n	80061b4 <__pow5mult+0x20>
 80061c2:	4632      	mov	r2, r6
 80061c4:	4629      	mov	r1, r5
 80061c6:	4638      	mov	r0, r7
 80061c8:	f7ff ff3e 	bl	8006048 <__multiply>
 80061cc:	b1b5      	cbz	r5, 80061fc <__pow5mult+0x68>
 80061ce:	686a      	ldr	r2, [r5, #4]
 80061d0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80061d2:	1064      	asrs	r4, r4, #1
 80061d4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80061d8:	6029      	str	r1, [r5, #0]
 80061da:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80061de:	4605      	mov	r5, r0
 80061e0:	d1ea      	bne.n	80061b8 <__pow5mult+0x24>
 80061e2:	4628      	mov	r0, r5
 80061e4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80061e8:	4632      	mov	r2, r6
 80061ea:	4631      	mov	r1, r6
 80061ec:	4638      	mov	r0, r7
 80061ee:	f7ff ff2b 	bl	8006048 <__multiply>
 80061f2:	6030      	str	r0, [r6, #0]
 80061f4:	f8c0 8000 	str.w	r8, [r0]
 80061f8:	4606      	mov	r6, r0
 80061fa:	e7e0      	b.n	80061be <__pow5mult+0x2a>
 80061fc:	4605      	mov	r5, r0
 80061fe:	e7d9      	b.n	80061b4 <__pow5mult+0x20>
 8006200:	3b01      	subs	r3, #1
 8006202:	4a0b      	ldr	r2, [pc, #44]	; (8006230 <__pow5mult+0x9c>)
 8006204:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006208:	2300      	movs	r3, #0
 800620a:	f7ff fe83 	bl	8005f14 <__multadd>
 800620e:	4605      	mov	r5, r0
 8006210:	e7c8      	b.n	80061a4 <__pow5mult+0x10>
 8006212:	2101      	movs	r1, #1
 8006214:	4638      	mov	r0, r7
 8006216:	f7ff fe4d 	bl	8005eb4 <_Balloc>
 800621a:	f240 2371 	movw	r3, #625	; 0x271
 800621e:	6143      	str	r3, [r0, #20]
 8006220:	2201      	movs	r2, #1
 8006222:	2300      	movs	r3, #0
 8006224:	6102      	str	r2, [r0, #16]
 8006226:	4606      	mov	r6, r0
 8006228:	64b8      	str	r0, [r7, #72]	; 0x48
 800622a:	6003      	str	r3, [r0, #0]
 800622c:	e7be      	b.n	80061ac <__pow5mult+0x18>
 800622e:	bf00      	nop
 8006230:	08007260 	.word	0x08007260

08006234 <__lshift>:
 8006234:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006238:	4691      	mov	r9, r2
 800623a:	690a      	ldr	r2, [r1, #16]
 800623c:	460e      	mov	r6, r1
 800623e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8006242:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8006246:	eb04 0802 	add.w	r8, r4, r2
 800624a:	f108 0501 	add.w	r5, r8, #1
 800624e:	429d      	cmp	r5, r3
 8006250:	4607      	mov	r7, r0
 8006252:	dd04      	ble.n	800625e <__lshift+0x2a>
 8006254:	005b      	lsls	r3, r3, #1
 8006256:	429d      	cmp	r5, r3
 8006258:	f101 0101 	add.w	r1, r1, #1
 800625c:	dcfa      	bgt.n	8006254 <__lshift+0x20>
 800625e:	4638      	mov	r0, r7
 8006260:	f7ff fe28 	bl	8005eb4 <_Balloc>
 8006264:	2c00      	cmp	r4, #0
 8006266:	f100 0314 	add.w	r3, r0, #20
 800626a:	dd37      	ble.n	80062dc <__lshift+0xa8>
 800626c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006270:	2200      	movs	r2, #0
 8006272:	f843 2b04 	str.w	r2, [r3], #4
 8006276:	428b      	cmp	r3, r1
 8006278:	d1fb      	bne.n	8006272 <__lshift+0x3e>
 800627a:	6934      	ldr	r4, [r6, #16]
 800627c:	f106 0314 	add.w	r3, r6, #20
 8006280:	f019 091f 	ands.w	r9, r9, #31
 8006284:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006288:	d020      	beq.n	80062cc <__lshift+0x98>
 800628a:	f1c9 0e20 	rsb	lr, r9, #32
 800628e:	2200      	movs	r2, #0
 8006290:	e000      	b.n	8006294 <__lshift+0x60>
 8006292:	4651      	mov	r1, sl
 8006294:	681c      	ldr	r4, [r3, #0]
 8006296:	468a      	mov	sl, r1
 8006298:	fa04 f409 	lsl.w	r4, r4, r9
 800629c:	4314      	orrs	r4, r2
 800629e:	f84a 4b04 	str.w	r4, [sl], #4
 80062a2:	f853 2b04 	ldr.w	r2, [r3], #4
 80062a6:	4563      	cmp	r3, ip
 80062a8:	fa22 f20e 	lsr.w	r2, r2, lr
 80062ac:	d3f1      	bcc.n	8006292 <__lshift+0x5e>
 80062ae:	604a      	str	r2, [r1, #4]
 80062b0:	b10a      	cbz	r2, 80062b6 <__lshift+0x82>
 80062b2:	f108 0502 	add.w	r5, r8, #2
 80062b6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80062b8:	6872      	ldr	r2, [r6, #4]
 80062ba:	3d01      	subs	r5, #1
 80062bc:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80062c0:	6105      	str	r5, [r0, #16]
 80062c2:	6031      	str	r1, [r6, #0]
 80062c4:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80062c8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80062cc:	3904      	subs	r1, #4
 80062ce:	f853 2b04 	ldr.w	r2, [r3], #4
 80062d2:	f841 2f04 	str.w	r2, [r1, #4]!
 80062d6:	459c      	cmp	ip, r3
 80062d8:	d8f9      	bhi.n	80062ce <__lshift+0x9a>
 80062da:	e7ec      	b.n	80062b6 <__lshift+0x82>
 80062dc:	4619      	mov	r1, r3
 80062de:	e7cc      	b.n	800627a <__lshift+0x46>

080062e0 <__mcmp>:
 80062e0:	b430      	push	{r4, r5}
 80062e2:	690b      	ldr	r3, [r1, #16]
 80062e4:	4605      	mov	r5, r0
 80062e6:	6900      	ldr	r0, [r0, #16]
 80062e8:	1ac0      	subs	r0, r0, r3
 80062ea:	d10f      	bne.n	800630c <__mcmp+0x2c>
 80062ec:	009b      	lsls	r3, r3, #2
 80062ee:	3514      	adds	r5, #20
 80062f0:	3114      	adds	r1, #20
 80062f2:	4419      	add	r1, r3
 80062f4:	442b      	add	r3, r5
 80062f6:	e001      	b.n	80062fc <__mcmp+0x1c>
 80062f8:	429d      	cmp	r5, r3
 80062fa:	d207      	bcs.n	800630c <__mcmp+0x2c>
 80062fc:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006300:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006304:	4294      	cmp	r4, r2
 8006306:	d0f7      	beq.n	80062f8 <__mcmp+0x18>
 8006308:	d302      	bcc.n	8006310 <__mcmp+0x30>
 800630a:	2001      	movs	r0, #1
 800630c:	bc30      	pop	{r4, r5}
 800630e:	4770      	bx	lr
 8006310:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006314:	e7fa      	b.n	800630c <__mcmp+0x2c>
 8006316:	bf00      	nop

08006318 <__mdiff>:
 8006318:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800631c:	6913      	ldr	r3, [r2, #16]
 800631e:	690d      	ldr	r5, [r1, #16]
 8006320:	1aed      	subs	r5, r5, r3
 8006322:	2d00      	cmp	r5, #0
 8006324:	460e      	mov	r6, r1
 8006326:	4690      	mov	r8, r2
 8006328:	f101 0414 	add.w	r4, r1, #20
 800632c:	f102 0714 	add.w	r7, r2, #20
 8006330:	d114      	bne.n	800635c <__mdiff+0x44>
 8006332:	009b      	lsls	r3, r3, #2
 8006334:	18e2      	adds	r2, r4, r3
 8006336:	443b      	add	r3, r7
 8006338:	e001      	b.n	800633e <__mdiff+0x26>
 800633a:	42a2      	cmp	r2, r4
 800633c:	d959      	bls.n	80063f2 <__mdiff+0xda>
 800633e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006342:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006346:	458c      	cmp	ip, r1
 8006348:	d0f7      	beq.n	800633a <__mdiff+0x22>
 800634a:	d209      	bcs.n	8006360 <__mdiff+0x48>
 800634c:	4622      	mov	r2, r4
 800634e:	4633      	mov	r3, r6
 8006350:	463c      	mov	r4, r7
 8006352:	4646      	mov	r6, r8
 8006354:	4617      	mov	r7, r2
 8006356:	4698      	mov	r8, r3
 8006358:	2501      	movs	r5, #1
 800635a:	e001      	b.n	8006360 <__mdiff+0x48>
 800635c:	dbf6      	blt.n	800634c <__mdiff+0x34>
 800635e:	2500      	movs	r5, #0
 8006360:	6871      	ldr	r1, [r6, #4]
 8006362:	f7ff fda7 	bl	8005eb4 <_Balloc>
 8006366:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800636a:	6936      	ldr	r6, [r6, #16]
 800636c:	60c5      	str	r5, [r0, #12]
 800636e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006372:	46bc      	mov	ip, r7
 8006374:	f100 0514 	add.w	r5, r0, #20
 8006378:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800637c:	2300      	movs	r3, #0
 800637e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006382:	f854 8b04 	ldr.w	r8, [r4], #4
 8006386:	b28a      	uxth	r2, r1
 8006388:	fa13 f388 	uxtah	r3, r3, r8
 800638c:	0c09      	lsrs	r1, r1, #16
 800638e:	1a9a      	subs	r2, r3, r2
 8006390:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006394:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006398:	b292      	uxth	r2, r2
 800639a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800639e:	45e6      	cmp	lr, ip
 80063a0:	f845 2b04 	str.w	r2, [r5], #4
 80063a4:	ea4f 4323 	mov.w	r3, r3, asr #16
 80063a8:	d8e9      	bhi.n	800637e <__mdiff+0x66>
 80063aa:	42a7      	cmp	r7, r4
 80063ac:	d917      	bls.n	80063de <__mdiff+0xc6>
 80063ae:	46ae      	mov	lr, r5
 80063b0:	46a4      	mov	ip, r4
 80063b2:	f85c 2b04 	ldr.w	r2, [ip], #4
 80063b6:	fa13 f382 	uxtah	r3, r3, r2
 80063ba:	1419      	asrs	r1, r3, #16
 80063bc:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80063c0:	b29b      	uxth	r3, r3
 80063c2:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80063c6:	4567      	cmp	r7, ip
 80063c8:	f84e 2b04 	str.w	r2, [lr], #4
 80063cc:	ea4f 4321 	mov.w	r3, r1, asr #16
 80063d0:	d8ef      	bhi.n	80063b2 <__mdiff+0x9a>
 80063d2:	43e4      	mvns	r4, r4
 80063d4:	4427      	add	r7, r4
 80063d6:	f027 0703 	bic.w	r7, r7, #3
 80063da:	3704      	adds	r7, #4
 80063dc:	443d      	add	r5, r7
 80063de:	3d04      	subs	r5, #4
 80063e0:	b922      	cbnz	r2, 80063ec <__mdiff+0xd4>
 80063e2:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80063e6:	3e01      	subs	r6, #1
 80063e8:	2b00      	cmp	r3, #0
 80063ea:	d0fa      	beq.n	80063e2 <__mdiff+0xca>
 80063ec:	6106      	str	r6, [r0, #16]
 80063ee:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80063f2:	2100      	movs	r1, #0
 80063f4:	f7ff fd5e 	bl	8005eb4 <_Balloc>
 80063f8:	2201      	movs	r2, #1
 80063fa:	2300      	movs	r3, #0
 80063fc:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006400:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006404 <__d2b>:
 8006404:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006408:	460f      	mov	r7, r1
 800640a:	b083      	sub	sp, #12
 800640c:	2101      	movs	r1, #1
 800640e:	ec55 4b10 	vmov	r4, r5, d0
 8006412:	4616      	mov	r6, r2
 8006414:	f7ff fd4e 	bl	8005eb4 <_Balloc>
 8006418:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800641c:	4681      	mov	r9, r0
 800641e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006422:	f1b8 0f00 	cmp.w	r8, #0
 8006426:	d001      	beq.n	800642c <__d2b+0x28>
 8006428:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800642c:	2c00      	cmp	r4, #0
 800642e:	9301      	str	r3, [sp, #4]
 8006430:	d024      	beq.n	800647c <__d2b+0x78>
 8006432:	a802      	add	r0, sp, #8
 8006434:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006438:	f7ff fdcc 	bl	8005fd4 <__lo0bits>
 800643c:	2800      	cmp	r0, #0
 800643e:	d136      	bne.n	80064ae <__d2b+0xaa>
 8006440:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006444:	f8c9 2014 	str.w	r2, [r9, #20]
 8006448:	2b00      	cmp	r3, #0
 800644a:	bf0c      	ite	eq
 800644c:	2101      	moveq	r1, #1
 800644e:	2102      	movne	r1, #2
 8006450:	f8c9 3018 	str.w	r3, [r9, #24]
 8006454:	f8c9 1010 	str.w	r1, [r9, #16]
 8006458:	f1b8 0f00 	cmp.w	r8, #0
 800645c:	d11b      	bne.n	8006496 <__d2b+0x92>
 800645e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006462:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006466:	6038      	str	r0, [r7, #0]
 8006468:	6918      	ldr	r0, [r3, #16]
 800646a:	f7ff fd93 	bl	8005f94 <__hi0bits>
 800646e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006472:	6030      	str	r0, [r6, #0]
 8006474:	4648      	mov	r0, r9
 8006476:	b003      	add	sp, #12
 8006478:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800647c:	a801      	add	r0, sp, #4
 800647e:	f7ff fda9 	bl	8005fd4 <__lo0bits>
 8006482:	9b01      	ldr	r3, [sp, #4]
 8006484:	f8c9 3014 	str.w	r3, [r9, #20]
 8006488:	2101      	movs	r1, #1
 800648a:	3020      	adds	r0, #32
 800648c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006490:	f1b8 0f00 	cmp.w	r8, #0
 8006494:	d0e3      	beq.n	800645e <__d2b+0x5a>
 8006496:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800649a:	eb08 0300 	add.w	r3, r8, r0
 800649e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80064a2:	603b      	str	r3, [r7, #0]
 80064a4:	6030      	str	r0, [r6, #0]
 80064a6:	4648      	mov	r0, r9
 80064a8:	b003      	add	sp, #12
 80064aa:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80064ae:	e9dd 1300 	ldrd	r1, r3, [sp]
 80064b2:	f1c0 0220 	rsb	r2, r0, #32
 80064b6:	fa03 f202 	lsl.w	r2, r3, r2
 80064ba:	430a      	orrs	r2, r1
 80064bc:	40c3      	lsrs	r3, r0
 80064be:	9301      	str	r3, [sp, #4]
 80064c0:	f8c9 2014 	str.w	r2, [r9, #20]
 80064c4:	e7c0      	b.n	8006448 <__d2b+0x44>
 80064c6:	bf00      	nop

080064c8 <_realloc_r>:
 80064c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80064cc:	4692      	mov	sl, r2
 80064ce:	b083      	sub	sp, #12
 80064d0:	2900      	cmp	r1, #0
 80064d2:	f000 80a1 	beq.w	8006618 <_realloc_r+0x150>
 80064d6:	460d      	mov	r5, r1
 80064d8:	4680      	mov	r8, r0
 80064da:	f10a 040b 	add.w	r4, sl, #11
 80064de:	f7ff fcdd 	bl	8005e9c <__malloc_lock>
 80064e2:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80064e6:	2c16      	cmp	r4, #22
 80064e8:	f022 0603 	bic.w	r6, r2, #3
 80064ec:	f1a5 0708 	sub.w	r7, r5, #8
 80064f0:	d83e      	bhi.n	8006570 <_realloc_r+0xa8>
 80064f2:	2410      	movs	r4, #16
 80064f4:	4621      	mov	r1, r4
 80064f6:	45a2      	cmp	sl, r4
 80064f8:	d83f      	bhi.n	800657a <_realloc_r+0xb2>
 80064fa:	428e      	cmp	r6, r1
 80064fc:	eb07 0906 	add.w	r9, r7, r6
 8006500:	da74      	bge.n	80065ec <_realloc_r+0x124>
 8006502:	4bc7      	ldr	r3, [pc, #796]	; (8006820 <_realloc_r+0x358>)
 8006504:	6898      	ldr	r0, [r3, #8]
 8006506:	4548      	cmp	r0, r9
 8006508:	f000 80aa 	beq.w	8006660 <_realloc_r+0x198>
 800650c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006510:	f020 0301 	bic.w	r3, r0, #1
 8006514:	444b      	add	r3, r9
 8006516:	685b      	ldr	r3, [r3, #4]
 8006518:	07db      	lsls	r3, r3, #31
 800651a:	f140 8083 	bpl.w	8006624 <_realloc_r+0x15c>
 800651e:	07d2      	lsls	r2, r2, #31
 8006520:	d534      	bpl.n	800658c <_realloc_r+0xc4>
 8006522:	4651      	mov	r1, sl
 8006524:	4640      	mov	r0, r8
 8006526:	f7ff f9b1 	bl	800588c <_malloc_r>
 800652a:	4682      	mov	sl, r0
 800652c:	b1e0      	cbz	r0, 8006568 <_realloc_r+0xa0>
 800652e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006532:	f023 0301 	bic.w	r3, r3, #1
 8006536:	443b      	add	r3, r7
 8006538:	f1a0 0208 	sub.w	r2, r0, #8
 800653c:	4293      	cmp	r3, r2
 800653e:	f000 80f9 	beq.w	8006734 <_realloc_r+0x26c>
 8006542:	1f32      	subs	r2, r6, #4
 8006544:	2a24      	cmp	r2, #36	; 0x24
 8006546:	f200 8107 	bhi.w	8006758 <_realloc_r+0x290>
 800654a:	2a13      	cmp	r2, #19
 800654c:	6829      	ldr	r1, [r5, #0]
 800654e:	f200 80e6 	bhi.w	800671e <_realloc_r+0x256>
 8006552:	4603      	mov	r3, r0
 8006554:	462a      	mov	r2, r5
 8006556:	6019      	str	r1, [r3, #0]
 8006558:	6851      	ldr	r1, [r2, #4]
 800655a:	6059      	str	r1, [r3, #4]
 800655c:	6892      	ldr	r2, [r2, #8]
 800655e:	609a      	str	r2, [r3, #8]
 8006560:	4629      	mov	r1, r5
 8006562:	4640      	mov	r0, r8
 8006564:	f7fe fe68 	bl	8005238 <_free_r>
 8006568:	4640      	mov	r0, r8
 800656a:	f7ff fc9d 	bl	8005ea8 <__malloc_unlock>
 800656e:	e04f      	b.n	8006610 <_realloc_r+0x148>
 8006570:	f024 0407 	bic.w	r4, r4, #7
 8006574:	2c00      	cmp	r4, #0
 8006576:	4621      	mov	r1, r4
 8006578:	dabd      	bge.n	80064f6 <_realloc_r+0x2e>
 800657a:	f04f 0a00 	mov.w	sl, #0
 800657e:	230c      	movs	r3, #12
 8006580:	4650      	mov	r0, sl
 8006582:	f8c8 3000 	str.w	r3, [r8]
 8006586:	b003      	add	sp, #12
 8006588:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800658c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006590:	eba7 0b03 	sub.w	fp, r7, r3
 8006594:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006598:	f022 0203 	bic.w	r2, r2, #3
 800659c:	18b3      	adds	r3, r6, r2
 800659e:	428b      	cmp	r3, r1
 80065a0:	dbbf      	blt.n	8006522 <_realloc_r+0x5a>
 80065a2:	46da      	mov	sl, fp
 80065a4:	f8db 100c 	ldr.w	r1, [fp, #12]
 80065a8:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80065ac:	1f32      	subs	r2, r6, #4
 80065ae:	2a24      	cmp	r2, #36	; 0x24
 80065b0:	60c1      	str	r1, [r0, #12]
 80065b2:	eb0b 0903 	add.w	r9, fp, r3
 80065b6:	6088      	str	r0, [r1, #8]
 80065b8:	f200 80c6 	bhi.w	8006748 <_realloc_r+0x280>
 80065bc:	2a13      	cmp	r2, #19
 80065be:	6829      	ldr	r1, [r5, #0]
 80065c0:	f240 80c0 	bls.w	8006744 <_realloc_r+0x27c>
 80065c4:	f8cb 1008 	str.w	r1, [fp, #8]
 80065c8:	6869      	ldr	r1, [r5, #4]
 80065ca:	f8cb 100c 	str.w	r1, [fp, #12]
 80065ce:	2a1b      	cmp	r2, #27
 80065d0:	68a9      	ldr	r1, [r5, #8]
 80065d2:	f200 80d8 	bhi.w	8006786 <_realloc_r+0x2be>
 80065d6:	f10b 0210 	add.w	r2, fp, #16
 80065da:	3508      	adds	r5, #8
 80065dc:	6011      	str	r1, [r2, #0]
 80065de:	6869      	ldr	r1, [r5, #4]
 80065e0:	6051      	str	r1, [r2, #4]
 80065e2:	68a9      	ldr	r1, [r5, #8]
 80065e4:	6091      	str	r1, [r2, #8]
 80065e6:	461e      	mov	r6, r3
 80065e8:	465f      	mov	r7, fp
 80065ea:	4655      	mov	r5, sl
 80065ec:	687b      	ldr	r3, [r7, #4]
 80065ee:	1b32      	subs	r2, r6, r4
 80065f0:	2a0f      	cmp	r2, #15
 80065f2:	f003 0301 	and.w	r3, r3, #1
 80065f6:	d822      	bhi.n	800663e <_realloc_r+0x176>
 80065f8:	4333      	orrs	r3, r6
 80065fa:	607b      	str	r3, [r7, #4]
 80065fc:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006600:	f043 0301 	orr.w	r3, r3, #1
 8006604:	f8c9 3004 	str.w	r3, [r9, #4]
 8006608:	4640      	mov	r0, r8
 800660a:	f7ff fc4d 	bl	8005ea8 <__malloc_unlock>
 800660e:	46aa      	mov	sl, r5
 8006610:	4650      	mov	r0, sl
 8006612:	b003      	add	sp, #12
 8006614:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006618:	4611      	mov	r1, r2
 800661a:	b003      	add	sp, #12
 800661c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006620:	f7ff b934 	b.w	800588c <_malloc_r>
 8006624:	f020 0003 	bic.w	r0, r0, #3
 8006628:	1833      	adds	r3, r6, r0
 800662a:	428b      	cmp	r3, r1
 800662c:	db61      	blt.n	80066f2 <_realloc_r+0x22a>
 800662e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006632:	461e      	mov	r6, r3
 8006634:	60ca      	str	r2, [r1, #12]
 8006636:	eb07 0903 	add.w	r9, r7, r3
 800663a:	6091      	str	r1, [r2, #8]
 800663c:	e7d6      	b.n	80065ec <_realloc_r+0x124>
 800663e:	1939      	adds	r1, r7, r4
 8006640:	4323      	orrs	r3, r4
 8006642:	f042 0201 	orr.w	r2, r2, #1
 8006646:	607b      	str	r3, [r7, #4]
 8006648:	604a      	str	r2, [r1, #4]
 800664a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800664e:	f043 0301 	orr.w	r3, r3, #1
 8006652:	3108      	adds	r1, #8
 8006654:	f8c9 3004 	str.w	r3, [r9, #4]
 8006658:	4640      	mov	r0, r8
 800665a:	f7fe fded 	bl	8005238 <_free_r>
 800665e:	e7d3      	b.n	8006608 <_realloc_r+0x140>
 8006660:	6840      	ldr	r0, [r0, #4]
 8006662:	f020 0903 	bic.w	r9, r0, #3
 8006666:	44b1      	add	r9, r6
 8006668:	f104 0010 	add.w	r0, r4, #16
 800666c:	4581      	cmp	r9, r0
 800666e:	da77      	bge.n	8006760 <_realloc_r+0x298>
 8006670:	07d2      	lsls	r2, r2, #31
 8006672:	f53f af56 	bmi.w	8006522 <_realloc_r+0x5a>
 8006676:	f855 2c08 	ldr.w	r2, [r5, #-8]
 800667a:	eba7 0b02 	sub.w	fp, r7, r2
 800667e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006682:	f022 0203 	bic.w	r2, r2, #3
 8006686:	4491      	add	r9, r2
 8006688:	4548      	cmp	r0, r9
 800668a:	dc87      	bgt.n	800659c <_realloc_r+0xd4>
 800668c:	46da      	mov	sl, fp
 800668e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006692:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006696:	1f32      	subs	r2, r6, #4
 8006698:	2a24      	cmp	r2, #36	; 0x24
 800669a:	60c1      	str	r1, [r0, #12]
 800669c:	6088      	str	r0, [r1, #8]
 800669e:	f200 80a1 	bhi.w	80067e4 <_realloc_r+0x31c>
 80066a2:	2a13      	cmp	r2, #19
 80066a4:	6829      	ldr	r1, [r5, #0]
 80066a6:	f240 809b 	bls.w	80067e0 <_realloc_r+0x318>
 80066aa:	f8cb 1008 	str.w	r1, [fp, #8]
 80066ae:	6869      	ldr	r1, [r5, #4]
 80066b0:	f8cb 100c 	str.w	r1, [fp, #12]
 80066b4:	2a1b      	cmp	r2, #27
 80066b6:	68a9      	ldr	r1, [r5, #8]
 80066b8:	f200 809b 	bhi.w	80067f2 <_realloc_r+0x32a>
 80066bc:	f10b 0210 	add.w	r2, fp, #16
 80066c0:	3508      	adds	r5, #8
 80066c2:	6011      	str	r1, [r2, #0]
 80066c4:	6869      	ldr	r1, [r5, #4]
 80066c6:	6051      	str	r1, [r2, #4]
 80066c8:	68a9      	ldr	r1, [r5, #8]
 80066ca:	6091      	str	r1, [r2, #8]
 80066cc:	eb0b 0104 	add.w	r1, fp, r4
 80066d0:	eba9 0204 	sub.w	r2, r9, r4
 80066d4:	f042 0201 	orr.w	r2, r2, #1
 80066d8:	6099      	str	r1, [r3, #8]
 80066da:	604a      	str	r2, [r1, #4]
 80066dc:	f8db 3004 	ldr.w	r3, [fp, #4]
 80066e0:	f003 0301 	and.w	r3, r3, #1
 80066e4:	431c      	orrs	r4, r3
 80066e6:	4640      	mov	r0, r8
 80066e8:	f8cb 4004 	str.w	r4, [fp, #4]
 80066ec:	f7ff fbdc 	bl	8005ea8 <__malloc_unlock>
 80066f0:	e78e      	b.n	8006610 <_realloc_r+0x148>
 80066f2:	07d3      	lsls	r3, r2, #31
 80066f4:	f53f af15 	bmi.w	8006522 <_realloc_r+0x5a>
 80066f8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80066fc:	eba7 0b03 	sub.w	fp, r7, r3
 8006700:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006704:	f022 0203 	bic.w	r2, r2, #3
 8006708:	4410      	add	r0, r2
 800670a:	1983      	adds	r3, r0, r6
 800670c:	428b      	cmp	r3, r1
 800670e:	f6ff af45 	blt.w	800659c <_realloc_r+0xd4>
 8006712:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006716:	46da      	mov	sl, fp
 8006718:	60ca      	str	r2, [r1, #12]
 800671a:	6091      	str	r1, [r2, #8]
 800671c:	e742      	b.n	80065a4 <_realloc_r+0xdc>
 800671e:	6001      	str	r1, [r0, #0]
 8006720:	686b      	ldr	r3, [r5, #4]
 8006722:	6043      	str	r3, [r0, #4]
 8006724:	2a1b      	cmp	r2, #27
 8006726:	d83a      	bhi.n	800679e <_realloc_r+0x2d6>
 8006728:	f105 0208 	add.w	r2, r5, #8
 800672c:	f100 0308 	add.w	r3, r0, #8
 8006730:	68a9      	ldr	r1, [r5, #8]
 8006732:	e710      	b.n	8006556 <_realloc_r+0x8e>
 8006734:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006738:	f023 0303 	bic.w	r3, r3, #3
 800673c:	441e      	add	r6, r3
 800673e:	eb07 0906 	add.w	r9, r7, r6
 8006742:	e753      	b.n	80065ec <_realloc_r+0x124>
 8006744:	4652      	mov	r2, sl
 8006746:	e749      	b.n	80065dc <_realloc_r+0x114>
 8006748:	4629      	mov	r1, r5
 800674a:	4650      	mov	r0, sl
 800674c:	461e      	mov	r6, r3
 800674e:	465f      	mov	r7, fp
 8006750:	f7ff fb40 	bl	8005dd4 <memmove>
 8006754:	4655      	mov	r5, sl
 8006756:	e749      	b.n	80065ec <_realloc_r+0x124>
 8006758:	4629      	mov	r1, r5
 800675a:	f7ff fb3b 	bl	8005dd4 <memmove>
 800675e:	e6ff      	b.n	8006560 <_realloc_r+0x98>
 8006760:	4427      	add	r7, r4
 8006762:	eba9 0904 	sub.w	r9, r9, r4
 8006766:	f049 0201 	orr.w	r2, r9, #1
 800676a:	609f      	str	r7, [r3, #8]
 800676c:	607a      	str	r2, [r7, #4]
 800676e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006772:	f003 0301 	and.w	r3, r3, #1
 8006776:	431c      	orrs	r4, r3
 8006778:	4640      	mov	r0, r8
 800677a:	f845 4c04 	str.w	r4, [r5, #-4]
 800677e:	f7ff fb93 	bl	8005ea8 <__malloc_unlock>
 8006782:	46aa      	mov	sl, r5
 8006784:	e744      	b.n	8006610 <_realloc_r+0x148>
 8006786:	f8cb 1010 	str.w	r1, [fp, #16]
 800678a:	68e9      	ldr	r1, [r5, #12]
 800678c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006790:	2a24      	cmp	r2, #36	; 0x24
 8006792:	d010      	beq.n	80067b6 <_realloc_r+0x2ee>
 8006794:	6929      	ldr	r1, [r5, #16]
 8006796:	f10b 0218 	add.w	r2, fp, #24
 800679a:	3510      	adds	r5, #16
 800679c:	e71e      	b.n	80065dc <_realloc_r+0x114>
 800679e:	68ab      	ldr	r3, [r5, #8]
 80067a0:	6083      	str	r3, [r0, #8]
 80067a2:	68eb      	ldr	r3, [r5, #12]
 80067a4:	60c3      	str	r3, [r0, #12]
 80067a6:	2a24      	cmp	r2, #36	; 0x24
 80067a8:	d010      	beq.n	80067cc <_realloc_r+0x304>
 80067aa:	f105 0210 	add.w	r2, r5, #16
 80067ae:	f100 0310 	add.w	r3, r0, #16
 80067b2:	6929      	ldr	r1, [r5, #16]
 80067b4:	e6cf      	b.n	8006556 <_realloc_r+0x8e>
 80067b6:	692a      	ldr	r2, [r5, #16]
 80067b8:	f8cb 2018 	str.w	r2, [fp, #24]
 80067bc:	696a      	ldr	r2, [r5, #20]
 80067be:	f8cb 201c 	str.w	r2, [fp, #28]
 80067c2:	69a9      	ldr	r1, [r5, #24]
 80067c4:	f10b 0220 	add.w	r2, fp, #32
 80067c8:	3518      	adds	r5, #24
 80067ca:	e707      	b.n	80065dc <_realloc_r+0x114>
 80067cc:	692b      	ldr	r3, [r5, #16]
 80067ce:	6103      	str	r3, [r0, #16]
 80067d0:	696b      	ldr	r3, [r5, #20]
 80067d2:	6143      	str	r3, [r0, #20]
 80067d4:	69a9      	ldr	r1, [r5, #24]
 80067d6:	f105 0218 	add.w	r2, r5, #24
 80067da:	f100 0318 	add.w	r3, r0, #24
 80067de:	e6ba      	b.n	8006556 <_realloc_r+0x8e>
 80067e0:	4652      	mov	r2, sl
 80067e2:	e76e      	b.n	80066c2 <_realloc_r+0x1fa>
 80067e4:	4629      	mov	r1, r5
 80067e6:	4650      	mov	r0, sl
 80067e8:	9301      	str	r3, [sp, #4]
 80067ea:	f7ff faf3 	bl	8005dd4 <memmove>
 80067ee:	9b01      	ldr	r3, [sp, #4]
 80067f0:	e76c      	b.n	80066cc <_realloc_r+0x204>
 80067f2:	f8cb 1010 	str.w	r1, [fp, #16]
 80067f6:	68e9      	ldr	r1, [r5, #12]
 80067f8:	f8cb 1014 	str.w	r1, [fp, #20]
 80067fc:	2a24      	cmp	r2, #36	; 0x24
 80067fe:	d004      	beq.n	800680a <_realloc_r+0x342>
 8006800:	6929      	ldr	r1, [r5, #16]
 8006802:	f10b 0218 	add.w	r2, fp, #24
 8006806:	3510      	adds	r5, #16
 8006808:	e75b      	b.n	80066c2 <_realloc_r+0x1fa>
 800680a:	692a      	ldr	r2, [r5, #16]
 800680c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006810:	696a      	ldr	r2, [r5, #20]
 8006812:	f8cb 201c 	str.w	r2, [fp, #28]
 8006816:	69a9      	ldr	r1, [r5, #24]
 8006818:	f10b 0220 	add.w	r2, fp, #32
 800681c:	3518      	adds	r5, #24
 800681e:	e750      	b.n	80066c2 <_realloc_r+0x1fa>
 8006820:	20000454 	.word	0x20000454

08006824 <frexp>:
 8006824:	ec53 2b10 	vmov	r2, r3, d0
 8006828:	b570      	push	{r4, r5, r6, lr}
 800682a:	4e16      	ldr	r6, [pc, #88]	; (8006884 <frexp+0x60>)
 800682c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006830:	2500      	movs	r5, #0
 8006832:	42b1      	cmp	r1, r6
 8006834:	4604      	mov	r4, r0
 8006836:	6005      	str	r5, [r0, #0]
 8006838:	dc21      	bgt.n	800687e <frexp+0x5a>
 800683a:	ee10 6a10 	vmov	r6, s0
 800683e:	430e      	orrs	r6, r1
 8006840:	d01d      	beq.n	800687e <frexp+0x5a>
 8006842:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006846:	4618      	mov	r0, r3
 8006848:	da0c      	bge.n	8006864 <frexp+0x40>
 800684a:	4619      	mov	r1, r3
 800684c:	2200      	movs	r2, #0
 800684e:	ee10 0a10 	vmov	r0, s0
 8006852:	4b0d      	ldr	r3, [pc, #52]	; (8006888 <frexp+0x64>)
 8006854:	f7fa f970 	bl	8000b38 <__aeabi_dmul>
 8006858:	f06f 0535 	mvn.w	r5, #53	; 0x35
 800685c:	4602      	mov	r2, r0
 800685e:	4608      	mov	r0, r1
 8006860:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006864:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006868:	1509      	asrs	r1, r1, #20
 800686a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 800686e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006872:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006876:	4429      	add	r1, r5
 8006878:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800687c:	6021      	str	r1, [r4, #0]
 800687e:	ec43 2b10 	vmov	d0, r2, r3
 8006882:	bd70      	pop	{r4, r5, r6, pc}
 8006884:	7fefffff 	.word	0x7fefffff
 8006888:	43500000 	.word	0x43500000

0800688c <_sbrk_r>:
 800688c:	b538      	push	{r3, r4, r5, lr}
 800688e:	4c07      	ldr	r4, [pc, #28]	; (80068ac <_sbrk_r+0x20>)
 8006890:	2300      	movs	r3, #0
 8006892:	4605      	mov	r5, r0
 8006894:	4608      	mov	r0, r1
 8006896:	6023      	str	r3, [r4, #0]
 8006898:	f7fb fc32 	bl	8002100 <_sbrk>
 800689c:	1c43      	adds	r3, r0, #1
 800689e:	d000      	beq.n	80068a2 <_sbrk_r+0x16>
 80068a0:	bd38      	pop	{r3, r4, r5, pc}
 80068a2:	6823      	ldr	r3, [r4, #0]
 80068a4:	2b00      	cmp	r3, #0
 80068a6:	d0fb      	beq.n	80068a0 <_sbrk_r+0x14>
 80068a8:	602b      	str	r3, [r5, #0]
 80068aa:	bd38      	pop	{r3, r4, r5, pc}
 80068ac:	20000b14 	.word	0x20000b14

080068b0 <__sread>:
 80068b0:	b510      	push	{r4, lr}
 80068b2:	460c      	mov	r4, r1
 80068b4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80068b8:	f000 fabc 	bl	8006e34 <_read_r>
 80068bc:	2800      	cmp	r0, #0
 80068be:	db03      	blt.n	80068c8 <__sread+0x18>
 80068c0:	6d23      	ldr	r3, [r4, #80]	; 0x50
 80068c2:	4403      	add	r3, r0
 80068c4:	6523      	str	r3, [r4, #80]	; 0x50
 80068c6:	bd10      	pop	{r4, pc}
 80068c8:	89a3      	ldrh	r3, [r4, #12]
 80068ca:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 80068ce:	81a3      	strh	r3, [r4, #12]
 80068d0:	bd10      	pop	{r4, pc}
 80068d2:	bf00      	nop

080068d4 <__swrite>:
 80068d4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80068d8:	4616      	mov	r6, r2
 80068da:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 80068de:	461f      	mov	r7, r3
 80068e0:	05d3      	lsls	r3, r2, #23
 80068e2:	460c      	mov	r4, r1
 80068e4:	4605      	mov	r5, r0
 80068e6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80068ea:	d507      	bpl.n	80068fc <__swrite+0x28>
 80068ec:	2200      	movs	r2, #0
 80068ee:	2302      	movs	r3, #2
 80068f0:	f000 fa74 	bl	8006ddc <_lseek_r>
 80068f4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80068f8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80068fc:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006900:	81a2      	strh	r2, [r4, #12]
 8006902:	463b      	mov	r3, r7
 8006904:	4632      	mov	r2, r6
 8006906:	4628      	mov	r0, r5
 8006908:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800690c:	f000 b88c 	b.w	8006a28 <_write_r>

08006910 <__sseek>:
 8006910:	b510      	push	{r4, lr}
 8006912:	460c      	mov	r4, r1
 8006914:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006918:	f000 fa60 	bl	8006ddc <_lseek_r>
 800691c:	89a3      	ldrh	r3, [r4, #12]
 800691e:	1c42      	adds	r2, r0, #1
 8006920:	bf0e      	itee	eq
 8006922:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006926:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 800692a:	6520      	strne	r0, [r4, #80]	; 0x50
 800692c:	81a3      	strh	r3, [r4, #12]
 800692e:	bd10      	pop	{r4, pc}

08006930 <__sclose>:
 8006930:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006934:	f000 b922 	b.w	8006b7c <_close_r>

08006938 <strncpy>:
 8006938:	ea40 0301 	orr.w	r3, r0, r1
 800693c:	079b      	lsls	r3, r3, #30
 800693e:	b470      	push	{r4, r5, r6}
 8006940:	d12a      	bne.n	8006998 <strncpy+0x60>
 8006942:	2a03      	cmp	r2, #3
 8006944:	d928      	bls.n	8006998 <strncpy+0x60>
 8006946:	460c      	mov	r4, r1
 8006948:	4603      	mov	r3, r0
 800694a:	4621      	mov	r1, r4
 800694c:	f854 6b04 	ldr.w	r6, [r4], #4
 8006950:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006954:	ea25 0506 	bic.w	r5, r5, r6
 8006958:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 800695c:	d106      	bne.n	800696c <strncpy+0x34>
 800695e:	3a04      	subs	r2, #4
 8006960:	2a03      	cmp	r2, #3
 8006962:	f843 6b04 	str.w	r6, [r3], #4
 8006966:	4621      	mov	r1, r4
 8006968:	d8ef      	bhi.n	800694a <strncpy+0x12>
 800696a:	b19a      	cbz	r2, 8006994 <strncpy+0x5c>
 800696c:	780c      	ldrb	r4, [r1, #0]
 800696e:	701c      	strb	r4, [r3, #0]
 8006970:	3a01      	subs	r2, #1
 8006972:	3301      	adds	r3, #1
 8006974:	b13c      	cbz	r4, 8006986 <strncpy+0x4e>
 8006976:	b16a      	cbz	r2, 8006994 <strncpy+0x5c>
 8006978:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 800697c:	f803 4b01 	strb.w	r4, [r3], #1
 8006980:	3a01      	subs	r2, #1
 8006982:	2c00      	cmp	r4, #0
 8006984:	d1f7      	bne.n	8006976 <strncpy+0x3e>
 8006986:	b12a      	cbz	r2, 8006994 <strncpy+0x5c>
 8006988:	441a      	add	r2, r3
 800698a:	2100      	movs	r1, #0
 800698c:	f803 1b01 	strb.w	r1, [r3], #1
 8006990:	4293      	cmp	r3, r2
 8006992:	d1fb      	bne.n	800698c <strncpy+0x54>
 8006994:	bc70      	pop	{r4, r5, r6}
 8006996:	4770      	bx	lr
 8006998:	4603      	mov	r3, r0
 800699a:	e7e6      	b.n	800696a <strncpy+0x32>

0800699c <__sprint_r.part.0>:
 800699c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80069a0:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 80069a2:	049c      	lsls	r4, r3, #18
 80069a4:	4692      	mov	sl, r2
 80069a6:	d52d      	bpl.n	8006a04 <__sprint_r.part.0+0x68>
 80069a8:	6893      	ldr	r3, [r2, #8]
 80069aa:	6812      	ldr	r2, [r2, #0]
 80069ac:	b343      	cbz	r3, 8006a00 <__sprint_r.part.0+0x64>
 80069ae:	460e      	mov	r6, r1
 80069b0:	4607      	mov	r7, r0
 80069b2:	f102 0908 	add.w	r9, r2, #8
 80069b6:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 80069ba:	ea5f 089b 	movs.w	r8, fp, lsr #2
 80069be:	d015      	beq.n	80069ec <__sprint_r.part.0+0x50>
 80069c0:	3d04      	subs	r5, #4
 80069c2:	2400      	movs	r4, #0
 80069c4:	e001      	b.n	80069ca <__sprint_r.part.0+0x2e>
 80069c6:	45a0      	cmp	r8, r4
 80069c8:	d00e      	beq.n	80069e8 <__sprint_r.part.0+0x4c>
 80069ca:	4632      	mov	r2, r6
 80069cc:	f855 1f04 	ldr.w	r1, [r5, #4]!
 80069d0:	4638      	mov	r0, r7
 80069d2:	f000 f99d 	bl	8006d10 <_fputwc_r>
 80069d6:	1c43      	adds	r3, r0, #1
 80069d8:	f104 0401 	add.w	r4, r4, #1
 80069dc:	d1f3      	bne.n	80069c6 <__sprint_r.part.0+0x2a>
 80069de:	2300      	movs	r3, #0
 80069e0:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80069e4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80069e8:	f8da 3008 	ldr.w	r3, [sl, #8]
 80069ec:	f02b 0b03 	bic.w	fp, fp, #3
 80069f0:	eba3 030b 	sub.w	r3, r3, fp
 80069f4:	f8ca 3008 	str.w	r3, [sl, #8]
 80069f8:	f109 0908 	add.w	r9, r9, #8
 80069fc:	2b00      	cmp	r3, #0
 80069fe:	d1da      	bne.n	80069b6 <__sprint_r.part.0+0x1a>
 8006a00:	2000      	movs	r0, #0
 8006a02:	e7ec      	b.n	80069de <__sprint_r.part.0+0x42>
 8006a04:	f7fe fd0c 	bl	8005420 <__sfvwrite_r>
 8006a08:	2300      	movs	r3, #0
 8006a0a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006a0e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a12:	bf00      	nop

08006a14 <__sprint_r>:
 8006a14:	6893      	ldr	r3, [r2, #8]
 8006a16:	b10b      	cbz	r3, 8006a1c <__sprint_r+0x8>
 8006a18:	f7ff bfc0 	b.w	800699c <__sprint_r.part.0>
 8006a1c:	b410      	push	{r4}
 8006a1e:	4618      	mov	r0, r3
 8006a20:	6053      	str	r3, [r2, #4]
 8006a22:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006a26:	4770      	bx	lr

08006a28 <_write_r>:
 8006a28:	b570      	push	{r4, r5, r6, lr}
 8006a2a:	460d      	mov	r5, r1
 8006a2c:	4c08      	ldr	r4, [pc, #32]	; (8006a50 <_write_r+0x28>)
 8006a2e:	4611      	mov	r1, r2
 8006a30:	4606      	mov	r6, r0
 8006a32:	461a      	mov	r2, r3
 8006a34:	4628      	mov	r0, r5
 8006a36:	2300      	movs	r3, #0
 8006a38:	6023      	str	r3, [r4, #0]
 8006a3a:	f7fb fb4e 	bl	80020da <_write>
 8006a3e:	1c43      	adds	r3, r0, #1
 8006a40:	d000      	beq.n	8006a44 <_write_r+0x1c>
 8006a42:	bd70      	pop	{r4, r5, r6, pc}
 8006a44:	6823      	ldr	r3, [r4, #0]
 8006a46:	2b00      	cmp	r3, #0
 8006a48:	d0fb      	beq.n	8006a42 <_write_r+0x1a>
 8006a4a:	6033      	str	r3, [r6, #0]
 8006a4c:	bd70      	pop	{r4, r5, r6, pc}
 8006a4e:	bf00      	nop
 8006a50:	20000b14 	.word	0x20000b14

08006a54 <__register_exitproc>:
 8006a54:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006a58:	4d2b      	ldr	r5, [pc, #172]	; (8006b08 <__register_exitproc+0xb4>)
 8006a5a:	4606      	mov	r6, r0
 8006a5c:	6828      	ldr	r0, [r5, #0]
 8006a5e:	4698      	mov	r8, r3
 8006a60:	460f      	mov	r7, r1
 8006a62:	4691      	mov	r9, r2
 8006a64:	f7fe fe96 	bl	8005794 <__retarget_lock_acquire_recursive>
 8006a68:	4b28      	ldr	r3, [pc, #160]	; (8006b0c <__register_exitproc+0xb8>)
 8006a6a:	681c      	ldr	r4, [r3, #0]
 8006a6c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006a70:	2b00      	cmp	r3, #0
 8006a72:	d03d      	beq.n	8006af0 <__register_exitproc+0x9c>
 8006a74:	685a      	ldr	r2, [r3, #4]
 8006a76:	2a1f      	cmp	r2, #31
 8006a78:	dc0d      	bgt.n	8006a96 <__register_exitproc+0x42>
 8006a7a:	f102 0c01 	add.w	ip, r2, #1
 8006a7e:	bb16      	cbnz	r6, 8006ac6 <__register_exitproc+0x72>
 8006a80:	3202      	adds	r2, #2
 8006a82:	f8c3 c004 	str.w	ip, [r3, #4]
 8006a86:	6828      	ldr	r0, [r5, #0]
 8006a88:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006a8c:	f7fe fe84 	bl	8005798 <__retarget_lock_release_recursive>
 8006a90:	2000      	movs	r0, #0
 8006a92:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006a96:	4b1e      	ldr	r3, [pc, #120]	; (8006b10 <__register_exitproc+0xbc>)
 8006a98:	b37b      	cbz	r3, 8006afa <__register_exitproc+0xa6>
 8006a9a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006a9e:	f3af 8000 	nop.w
 8006aa2:	4603      	mov	r3, r0
 8006aa4:	b348      	cbz	r0, 8006afa <__register_exitproc+0xa6>
 8006aa6:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006aaa:	2100      	movs	r1, #0
 8006aac:	e9c0 2100 	strd	r2, r1, [r0]
 8006ab0:	f04f 0c01 	mov.w	ip, #1
 8006ab4:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006ab8:	460a      	mov	r2, r1
 8006aba:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006abe:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006ac2:	2e00      	cmp	r6, #0
 8006ac4:	d0dc      	beq.n	8006a80 <__register_exitproc+0x2c>
 8006ac6:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006aca:	2401      	movs	r4, #1
 8006acc:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006ad0:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006ad4:	4094      	lsls	r4, r2
 8006ad6:	4320      	orrs	r0, r4
 8006ad8:	2e02      	cmp	r6, #2
 8006ada:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006ade:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006ae2:	d1cd      	bne.n	8006a80 <__register_exitproc+0x2c>
 8006ae4:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006ae8:	430c      	orrs	r4, r1
 8006aea:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006aee:	e7c7      	b.n	8006a80 <__register_exitproc+0x2c>
 8006af0:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006af4:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006af8:	e7bc      	b.n	8006a74 <__register_exitproc+0x20>
 8006afa:	6828      	ldr	r0, [r5, #0]
 8006afc:	f7fe fe4c 	bl	8005798 <__retarget_lock_release_recursive>
 8006b00:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006b04:	e7c5      	b.n	8006a92 <__register_exitproc+0x3e>
 8006b06:	bf00      	nop
 8006b08:	20000450 	.word	0x20000450
 8006b0c:	080070f0 	.word	0x080070f0
 8006b10:	00000000 	.word	0x00000000

08006b14 <_calloc_r>:
 8006b14:	b510      	push	{r4, lr}
 8006b16:	fb02 f101 	mul.w	r1, r2, r1
 8006b1a:	f7fe feb7 	bl	800588c <_malloc_r>
 8006b1e:	4604      	mov	r4, r0
 8006b20:	b1d8      	cbz	r0, 8006b5a <_calloc_r+0x46>
 8006b22:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006b26:	f022 0203 	bic.w	r2, r2, #3
 8006b2a:	3a04      	subs	r2, #4
 8006b2c:	2a24      	cmp	r2, #36	; 0x24
 8006b2e:	d81d      	bhi.n	8006b6c <_calloc_r+0x58>
 8006b30:	2a13      	cmp	r2, #19
 8006b32:	d914      	bls.n	8006b5e <_calloc_r+0x4a>
 8006b34:	2300      	movs	r3, #0
 8006b36:	2a1b      	cmp	r2, #27
 8006b38:	e9c0 3300 	strd	r3, r3, [r0]
 8006b3c:	d91b      	bls.n	8006b76 <_calloc_r+0x62>
 8006b3e:	2a24      	cmp	r2, #36	; 0x24
 8006b40:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006b44:	bf0a      	itet	eq
 8006b46:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006b4a:	f100 0210 	addne.w	r2, r0, #16
 8006b4e:	f100 0218 	addeq.w	r2, r0, #24
 8006b52:	2300      	movs	r3, #0
 8006b54:	e9c2 3300 	strd	r3, r3, [r2]
 8006b58:	6093      	str	r3, [r2, #8]
 8006b5a:	4620      	mov	r0, r4
 8006b5c:	bd10      	pop	{r4, pc}
 8006b5e:	4602      	mov	r2, r0
 8006b60:	2300      	movs	r3, #0
 8006b62:	e9c2 3300 	strd	r3, r3, [r2]
 8006b66:	6093      	str	r3, [r2, #8]
 8006b68:	4620      	mov	r0, r4
 8006b6a:	bd10      	pop	{r4, pc}
 8006b6c:	2100      	movs	r1, #0
 8006b6e:	f7fb fb6d 	bl	800224c <memset>
 8006b72:	4620      	mov	r0, r4
 8006b74:	bd10      	pop	{r4, pc}
 8006b76:	f100 0208 	add.w	r2, r0, #8
 8006b7a:	e7f1      	b.n	8006b60 <_calloc_r+0x4c>

08006b7c <_close_r>:
 8006b7c:	b538      	push	{r3, r4, r5, lr}
 8006b7e:	4c07      	ldr	r4, [pc, #28]	; (8006b9c <_close_r+0x20>)
 8006b80:	2300      	movs	r3, #0
 8006b82:	4605      	mov	r5, r0
 8006b84:	4608      	mov	r0, r1
 8006b86:	6023      	str	r3, [r4, #0]
 8006b88:	f7fb fad6 	bl	8002138 <_close>
 8006b8c:	1c43      	adds	r3, r0, #1
 8006b8e:	d000      	beq.n	8006b92 <_close_r+0x16>
 8006b90:	bd38      	pop	{r3, r4, r5, pc}
 8006b92:	6823      	ldr	r3, [r4, #0]
 8006b94:	2b00      	cmp	r3, #0
 8006b96:	d0fb      	beq.n	8006b90 <_close_r+0x14>
 8006b98:	602b      	str	r3, [r5, #0]
 8006b9a:	bd38      	pop	{r3, r4, r5, pc}
 8006b9c:	20000b14 	.word	0x20000b14

08006ba0 <_fclose_r>:
 8006ba0:	b570      	push	{r4, r5, r6, lr}
 8006ba2:	2900      	cmp	r1, #0
 8006ba4:	d048      	beq.n	8006c38 <_fclose_r+0x98>
 8006ba6:	4605      	mov	r5, r0
 8006ba8:	460c      	mov	r4, r1
 8006baa:	b110      	cbz	r0, 8006bb2 <_fclose_r+0x12>
 8006bac:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006bae:	2b00      	cmp	r3, #0
 8006bb0:	d048      	beq.n	8006c44 <_fclose_r+0xa4>
 8006bb2:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006bb4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006bb8:	07d0      	lsls	r0, r2, #31
 8006bba:	d440      	bmi.n	8006c3e <_fclose_r+0x9e>
 8006bbc:	0599      	lsls	r1, r3, #22
 8006bbe:	d530      	bpl.n	8006c22 <_fclose_r+0x82>
 8006bc0:	4621      	mov	r1, r4
 8006bc2:	4628      	mov	r0, r5
 8006bc4:	f7fe f990 	bl	8004ee8 <__sflush_r>
 8006bc8:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006bca:	4606      	mov	r6, r0
 8006bcc:	b133      	cbz	r3, 8006bdc <_fclose_r+0x3c>
 8006bce:	69e1      	ldr	r1, [r4, #28]
 8006bd0:	4628      	mov	r0, r5
 8006bd2:	4798      	blx	r3
 8006bd4:	2800      	cmp	r0, #0
 8006bd6:	bfb8      	it	lt
 8006bd8:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006bdc:	89a3      	ldrh	r3, [r4, #12]
 8006bde:	061a      	lsls	r2, r3, #24
 8006be0:	d43c      	bmi.n	8006c5c <_fclose_r+0xbc>
 8006be2:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006be4:	b141      	cbz	r1, 8006bf8 <_fclose_r+0x58>
 8006be6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006bea:	4299      	cmp	r1, r3
 8006bec:	d002      	beq.n	8006bf4 <_fclose_r+0x54>
 8006bee:	4628      	mov	r0, r5
 8006bf0:	f7fe fb22 	bl	8005238 <_free_r>
 8006bf4:	2300      	movs	r3, #0
 8006bf6:	6323      	str	r3, [r4, #48]	; 0x30
 8006bf8:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006bfa:	b121      	cbz	r1, 8006c06 <_fclose_r+0x66>
 8006bfc:	4628      	mov	r0, r5
 8006bfe:	f7fe fb1b 	bl	8005238 <_free_r>
 8006c02:	2300      	movs	r3, #0
 8006c04:	6463      	str	r3, [r4, #68]	; 0x44
 8006c06:	f7fe faa1 	bl	800514c <__sfp_lock_acquire>
 8006c0a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006c0c:	2200      	movs	r2, #0
 8006c0e:	07db      	lsls	r3, r3, #31
 8006c10:	81a2      	strh	r2, [r4, #12]
 8006c12:	d51f      	bpl.n	8006c54 <_fclose_r+0xb4>
 8006c14:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c16:	f7fe fdbb 	bl	8005790 <__retarget_lock_close_recursive>
 8006c1a:	f7fe fa9d 	bl	8005158 <__sfp_lock_release>
 8006c1e:	4630      	mov	r0, r6
 8006c20:	bd70      	pop	{r4, r5, r6, pc}
 8006c22:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c24:	f7fe fdb6 	bl	8005794 <__retarget_lock_acquire_recursive>
 8006c28:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c2c:	2b00      	cmp	r3, #0
 8006c2e:	d1c7      	bne.n	8006bc0 <_fclose_r+0x20>
 8006c30:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006c32:	f016 0601 	ands.w	r6, r6, #1
 8006c36:	d016      	beq.n	8006c66 <_fclose_r+0xc6>
 8006c38:	2600      	movs	r6, #0
 8006c3a:	4630      	mov	r0, r6
 8006c3c:	bd70      	pop	{r4, r5, r6, pc}
 8006c3e:	2b00      	cmp	r3, #0
 8006c40:	d0fa      	beq.n	8006c38 <_fclose_r+0x98>
 8006c42:	e7bd      	b.n	8006bc0 <_fclose_r+0x20>
 8006c44:	f7fe fa56 	bl	80050f4 <__sinit>
 8006c48:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c4a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c4e:	07d0      	lsls	r0, r2, #31
 8006c50:	d4f5      	bmi.n	8006c3e <_fclose_r+0x9e>
 8006c52:	e7b3      	b.n	8006bbc <_fclose_r+0x1c>
 8006c54:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c56:	f7fe fd9f 	bl	8005798 <__retarget_lock_release_recursive>
 8006c5a:	e7db      	b.n	8006c14 <_fclose_r+0x74>
 8006c5c:	6921      	ldr	r1, [r4, #16]
 8006c5e:	4628      	mov	r0, r5
 8006c60:	f7fe faea 	bl	8005238 <_free_r>
 8006c64:	e7bd      	b.n	8006be2 <_fclose_r+0x42>
 8006c66:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c68:	f7fe fd96 	bl	8005798 <__retarget_lock_release_recursive>
 8006c6c:	4630      	mov	r0, r6
 8006c6e:	bd70      	pop	{r4, r5, r6, pc}

08006c70 <__fputwc>:
 8006c70:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006c74:	b082      	sub	sp, #8
 8006c76:	4681      	mov	r9, r0
 8006c78:	4688      	mov	r8, r1
 8006c7a:	4614      	mov	r4, r2
 8006c7c:	f000 f8a0 	bl	8006dc0 <__locale_mb_cur_max>
 8006c80:	2801      	cmp	r0, #1
 8006c82:	d103      	bne.n	8006c8c <__fputwc+0x1c>
 8006c84:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006c88:	2bfe      	cmp	r3, #254	; 0xfe
 8006c8a:	d933      	bls.n	8006cf4 <__fputwc+0x84>
 8006c8c:	4642      	mov	r2, r8
 8006c8e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006c92:	a901      	add	r1, sp, #4
 8006c94:	4648      	mov	r0, r9
 8006c96:	f000 f93b 	bl	8006f10 <_wcrtomb_r>
 8006c9a:	1c42      	adds	r2, r0, #1
 8006c9c:	4606      	mov	r6, r0
 8006c9e:	d02f      	beq.n	8006d00 <__fputwc+0x90>
 8006ca0:	b320      	cbz	r0, 8006cec <__fputwc+0x7c>
 8006ca2:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006ca6:	2500      	movs	r5, #0
 8006ca8:	f10d 0a04 	add.w	sl, sp, #4
 8006cac:	e009      	b.n	8006cc2 <__fputwc+0x52>
 8006cae:	6823      	ldr	r3, [r4, #0]
 8006cb0:	1c5a      	adds	r2, r3, #1
 8006cb2:	6022      	str	r2, [r4, #0]
 8006cb4:	f883 c000 	strb.w	ip, [r3]
 8006cb8:	3501      	adds	r5, #1
 8006cba:	42b5      	cmp	r5, r6
 8006cbc:	d216      	bcs.n	8006cec <__fputwc+0x7c>
 8006cbe:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006cc2:	68a3      	ldr	r3, [r4, #8]
 8006cc4:	3b01      	subs	r3, #1
 8006cc6:	2b00      	cmp	r3, #0
 8006cc8:	60a3      	str	r3, [r4, #8]
 8006cca:	daf0      	bge.n	8006cae <__fputwc+0x3e>
 8006ccc:	69a7      	ldr	r7, [r4, #24]
 8006cce:	42bb      	cmp	r3, r7
 8006cd0:	4661      	mov	r1, ip
 8006cd2:	4622      	mov	r2, r4
 8006cd4:	4648      	mov	r0, r9
 8006cd6:	db02      	blt.n	8006cde <__fputwc+0x6e>
 8006cd8:	f1bc 0f0a 	cmp.w	ip, #10
 8006cdc:	d1e7      	bne.n	8006cae <__fputwc+0x3e>
 8006cde:	f000 f8bf 	bl	8006e60 <__swbuf_r>
 8006ce2:	1c43      	adds	r3, r0, #1
 8006ce4:	d1e8      	bne.n	8006cb8 <__fputwc+0x48>
 8006ce6:	b002      	add	sp, #8
 8006ce8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006cec:	4640      	mov	r0, r8
 8006cee:	b002      	add	sp, #8
 8006cf0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006cf4:	fa5f fc88 	uxtb.w	ip, r8
 8006cf8:	4606      	mov	r6, r0
 8006cfa:	f88d c004 	strb.w	ip, [sp, #4]
 8006cfe:	e7d2      	b.n	8006ca6 <__fputwc+0x36>
 8006d00:	89a3      	ldrh	r3, [r4, #12]
 8006d02:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006d06:	81a3      	strh	r3, [r4, #12]
 8006d08:	b002      	add	sp, #8
 8006d0a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d0e:	bf00      	nop

08006d10 <_fputwc_r>:
 8006d10:	b530      	push	{r4, r5, lr}
 8006d12:	4605      	mov	r5, r0
 8006d14:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006d16:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006d1a:	07c0      	lsls	r0, r0, #31
 8006d1c:	4614      	mov	r4, r2
 8006d1e:	b083      	sub	sp, #12
 8006d20:	b29a      	uxth	r2, r3
 8006d22:	d401      	bmi.n	8006d28 <_fputwc_r+0x18>
 8006d24:	0590      	lsls	r0, r2, #22
 8006d26:	d51c      	bpl.n	8006d62 <_fputwc_r+0x52>
 8006d28:	0490      	lsls	r0, r2, #18
 8006d2a:	d406      	bmi.n	8006d3a <_fputwc_r+0x2a>
 8006d2c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006d2e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006d32:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006d36:	81a3      	strh	r3, [r4, #12]
 8006d38:	6662      	str	r2, [r4, #100]	; 0x64
 8006d3a:	4628      	mov	r0, r5
 8006d3c:	4622      	mov	r2, r4
 8006d3e:	f7ff ff97 	bl	8006c70 <__fputwc>
 8006d42:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006d44:	07da      	lsls	r2, r3, #31
 8006d46:	4605      	mov	r5, r0
 8006d48:	d402      	bmi.n	8006d50 <_fputwc_r+0x40>
 8006d4a:	89a3      	ldrh	r3, [r4, #12]
 8006d4c:	059b      	lsls	r3, r3, #22
 8006d4e:	d502      	bpl.n	8006d56 <_fputwc_r+0x46>
 8006d50:	4628      	mov	r0, r5
 8006d52:	b003      	add	sp, #12
 8006d54:	bd30      	pop	{r4, r5, pc}
 8006d56:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d58:	f7fe fd1e 	bl	8005798 <__retarget_lock_release_recursive>
 8006d5c:	4628      	mov	r0, r5
 8006d5e:	b003      	add	sp, #12
 8006d60:	bd30      	pop	{r4, r5, pc}
 8006d62:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d64:	9101      	str	r1, [sp, #4]
 8006d66:	f7fe fd15 	bl	8005794 <__retarget_lock_acquire_recursive>
 8006d6a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d6e:	9901      	ldr	r1, [sp, #4]
 8006d70:	b29a      	uxth	r2, r3
 8006d72:	e7d9      	b.n	8006d28 <_fputwc_r+0x18>

08006d74 <_fstat_r>:
 8006d74:	b538      	push	{r3, r4, r5, lr}
 8006d76:	460b      	mov	r3, r1
 8006d78:	4c07      	ldr	r4, [pc, #28]	; (8006d98 <_fstat_r+0x24>)
 8006d7a:	4605      	mov	r5, r0
 8006d7c:	4611      	mov	r1, r2
 8006d7e:	4618      	mov	r0, r3
 8006d80:	2300      	movs	r3, #0
 8006d82:	6023      	str	r3, [r4, #0]
 8006d84:	f7fb f9db 	bl	800213e <_fstat>
 8006d88:	1c43      	adds	r3, r0, #1
 8006d8a:	d000      	beq.n	8006d8e <_fstat_r+0x1a>
 8006d8c:	bd38      	pop	{r3, r4, r5, pc}
 8006d8e:	6823      	ldr	r3, [r4, #0]
 8006d90:	2b00      	cmp	r3, #0
 8006d92:	d0fb      	beq.n	8006d8c <_fstat_r+0x18>
 8006d94:	602b      	str	r3, [r5, #0]
 8006d96:	bd38      	pop	{r3, r4, r5, pc}
 8006d98:	20000b14 	.word	0x20000b14

08006d9c <_isatty_r>:
 8006d9c:	b538      	push	{r3, r4, r5, lr}
 8006d9e:	4c07      	ldr	r4, [pc, #28]	; (8006dbc <_isatty_r+0x20>)
 8006da0:	2300      	movs	r3, #0
 8006da2:	4605      	mov	r5, r0
 8006da4:	4608      	mov	r0, r1
 8006da6:	6023      	str	r3, [r4, #0]
 8006da8:	f7fb f9ce 	bl	8002148 <_isatty>
 8006dac:	1c43      	adds	r3, r0, #1
 8006dae:	d000      	beq.n	8006db2 <_isatty_r+0x16>
 8006db0:	bd38      	pop	{r3, r4, r5, pc}
 8006db2:	6823      	ldr	r3, [r4, #0]
 8006db4:	2b00      	cmp	r3, #0
 8006db6:	d0fb      	beq.n	8006db0 <_isatty_r+0x14>
 8006db8:	602b      	str	r3, [r5, #0]
 8006dba:	bd38      	pop	{r3, r4, r5, pc}
 8006dbc:	20000b14 	.word	0x20000b14

08006dc0 <__locale_mb_cur_max>:
 8006dc0:	4b04      	ldr	r3, [pc, #16]	; (8006dd4 <__locale_mb_cur_max+0x14>)
 8006dc2:	4a05      	ldr	r2, [pc, #20]	; (8006dd8 <__locale_mb_cur_max+0x18>)
 8006dc4:	681b      	ldr	r3, [r3, #0]
 8006dc6:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006dc8:	2b00      	cmp	r3, #0
 8006dca:	bf08      	it	eq
 8006dcc:	4613      	moveq	r3, r2
 8006dce:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006dd2:	4770      	bx	lr
 8006dd4:	20000020 	.word	0x20000020
 8006dd8:	20000864 	.word	0x20000864

08006ddc <_lseek_r>:
 8006ddc:	b570      	push	{r4, r5, r6, lr}
 8006dde:	460d      	mov	r5, r1
 8006de0:	4c08      	ldr	r4, [pc, #32]	; (8006e04 <_lseek_r+0x28>)
 8006de2:	4611      	mov	r1, r2
 8006de4:	4606      	mov	r6, r0
 8006de6:	461a      	mov	r2, r3
 8006de8:	4628      	mov	r0, r5
 8006dea:	2300      	movs	r3, #0
 8006dec:	6023      	str	r3, [r4, #0]
 8006dee:	f7fb f9ad 	bl	800214c <_lseek>
 8006df2:	1c43      	adds	r3, r0, #1
 8006df4:	d000      	beq.n	8006df8 <_lseek_r+0x1c>
 8006df6:	bd70      	pop	{r4, r5, r6, pc}
 8006df8:	6823      	ldr	r3, [r4, #0]
 8006dfa:	2b00      	cmp	r3, #0
 8006dfc:	d0fb      	beq.n	8006df6 <_lseek_r+0x1a>
 8006dfe:	6033      	str	r3, [r6, #0]
 8006e00:	bd70      	pop	{r4, r5, r6, pc}
 8006e02:	bf00      	nop
 8006e04:	20000b14 	.word	0x20000b14

08006e08 <__ascii_mbtowc>:
 8006e08:	b082      	sub	sp, #8
 8006e0a:	b149      	cbz	r1, 8006e20 <__ascii_mbtowc+0x18>
 8006e0c:	b15a      	cbz	r2, 8006e26 <__ascii_mbtowc+0x1e>
 8006e0e:	b16b      	cbz	r3, 8006e2c <__ascii_mbtowc+0x24>
 8006e10:	7813      	ldrb	r3, [r2, #0]
 8006e12:	600b      	str	r3, [r1, #0]
 8006e14:	7812      	ldrb	r2, [r2, #0]
 8006e16:	1c10      	adds	r0, r2, #0
 8006e18:	bf18      	it	ne
 8006e1a:	2001      	movne	r0, #1
 8006e1c:	b002      	add	sp, #8
 8006e1e:	4770      	bx	lr
 8006e20:	a901      	add	r1, sp, #4
 8006e22:	2a00      	cmp	r2, #0
 8006e24:	d1f3      	bne.n	8006e0e <__ascii_mbtowc+0x6>
 8006e26:	4610      	mov	r0, r2
 8006e28:	b002      	add	sp, #8
 8006e2a:	4770      	bx	lr
 8006e2c:	f06f 0001 	mvn.w	r0, #1
 8006e30:	e7f4      	b.n	8006e1c <__ascii_mbtowc+0x14>
 8006e32:	bf00      	nop

08006e34 <_read_r>:
 8006e34:	b570      	push	{r4, r5, r6, lr}
 8006e36:	460d      	mov	r5, r1
 8006e38:	4c08      	ldr	r4, [pc, #32]	; (8006e5c <_read_r+0x28>)
 8006e3a:	4611      	mov	r1, r2
 8006e3c:	4606      	mov	r6, r0
 8006e3e:	461a      	mov	r2, r3
 8006e40:	4628      	mov	r0, r5
 8006e42:	2300      	movs	r3, #0
 8006e44:	6023      	str	r3, [r4, #0]
 8006e46:	f7fb f935 	bl	80020b4 <_read>
 8006e4a:	1c43      	adds	r3, r0, #1
 8006e4c:	d000      	beq.n	8006e50 <_read_r+0x1c>
 8006e4e:	bd70      	pop	{r4, r5, r6, pc}
 8006e50:	6823      	ldr	r3, [r4, #0]
 8006e52:	2b00      	cmp	r3, #0
 8006e54:	d0fb      	beq.n	8006e4e <_read_r+0x1a>
 8006e56:	6033      	str	r3, [r6, #0]
 8006e58:	bd70      	pop	{r4, r5, r6, pc}
 8006e5a:	bf00      	nop
 8006e5c:	20000b14 	.word	0x20000b14

08006e60 <__swbuf_r>:
 8006e60:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006e62:	460d      	mov	r5, r1
 8006e64:	4614      	mov	r4, r2
 8006e66:	4606      	mov	r6, r0
 8006e68:	b110      	cbz	r0, 8006e70 <__swbuf_r+0x10>
 8006e6a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006e6c:	2b00      	cmp	r3, #0
 8006e6e:	d043      	beq.n	8006ef8 <__swbuf_r+0x98>
 8006e70:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006e74:	69a3      	ldr	r3, [r4, #24]
 8006e76:	60a3      	str	r3, [r4, #8]
 8006e78:	b291      	uxth	r1, r2
 8006e7a:	0708      	lsls	r0, r1, #28
 8006e7c:	d51b      	bpl.n	8006eb6 <__swbuf_r+0x56>
 8006e7e:	6923      	ldr	r3, [r4, #16]
 8006e80:	b1cb      	cbz	r3, 8006eb6 <__swbuf_r+0x56>
 8006e82:	b2ed      	uxtb	r5, r5
 8006e84:	0489      	lsls	r1, r1, #18
 8006e86:	462f      	mov	r7, r5
 8006e88:	d522      	bpl.n	8006ed0 <__swbuf_r+0x70>
 8006e8a:	6822      	ldr	r2, [r4, #0]
 8006e8c:	6961      	ldr	r1, [r4, #20]
 8006e8e:	1ad3      	subs	r3, r2, r3
 8006e90:	4299      	cmp	r1, r3
 8006e92:	dd29      	ble.n	8006ee8 <__swbuf_r+0x88>
 8006e94:	3301      	adds	r3, #1
 8006e96:	68a1      	ldr	r1, [r4, #8]
 8006e98:	1c50      	adds	r0, r2, #1
 8006e9a:	3901      	subs	r1, #1
 8006e9c:	60a1      	str	r1, [r4, #8]
 8006e9e:	6020      	str	r0, [r4, #0]
 8006ea0:	7015      	strb	r5, [r2, #0]
 8006ea2:	6962      	ldr	r2, [r4, #20]
 8006ea4:	429a      	cmp	r2, r3
 8006ea6:	d02a      	beq.n	8006efe <__swbuf_r+0x9e>
 8006ea8:	89a3      	ldrh	r3, [r4, #12]
 8006eaa:	07db      	lsls	r3, r3, #31
 8006eac:	d501      	bpl.n	8006eb2 <__swbuf_r+0x52>
 8006eae:	2d0a      	cmp	r5, #10
 8006eb0:	d025      	beq.n	8006efe <__swbuf_r+0x9e>
 8006eb2:	4638      	mov	r0, r7
 8006eb4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006eb6:	4621      	mov	r1, r4
 8006eb8:	4630      	mov	r0, r6
 8006eba:	f7fc fffd 	bl	8003eb8 <__swsetup_r>
 8006ebe:	bb20      	cbnz	r0, 8006f0a <__swbuf_r+0xaa>
 8006ec0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006ec4:	6923      	ldr	r3, [r4, #16]
 8006ec6:	b291      	uxth	r1, r2
 8006ec8:	b2ed      	uxtb	r5, r5
 8006eca:	0489      	lsls	r1, r1, #18
 8006ecc:	462f      	mov	r7, r5
 8006ece:	d4dc      	bmi.n	8006e8a <__swbuf_r+0x2a>
 8006ed0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006ed2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006ed6:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006eda:	81a2      	strh	r2, [r4, #12]
 8006edc:	6822      	ldr	r2, [r4, #0]
 8006ede:	6661      	str	r1, [r4, #100]	; 0x64
 8006ee0:	6961      	ldr	r1, [r4, #20]
 8006ee2:	1ad3      	subs	r3, r2, r3
 8006ee4:	4299      	cmp	r1, r3
 8006ee6:	dcd5      	bgt.n	8006e94 <__swbuf_r+0x34>
 8006ee8:	4621      	mov	r1, r4
 8006eea:	4630      	mov	r0, r6
 8006eec:	f7fe f8a6 	bl	800503c <_fflush_r>
 8006ef0:	b958      	cbnz	r0, 8006f0a <__swbuf_r+0xaa>
 8006ef2:	6822      	ldr	r2, [r4, #0]
 8006ef4:	2301      	movs	r3, #1
 8006ef6:	e7ce      	b.n	8006e96 <__swbuf_r+0x36>
 8006ef8:	f7fe f8fc 	bl	80050f4 <__sinit>
 8006efc:	e7b8      	b.n	8006e70 <__swbuf_r+0x10>
 8006efe:	4621      	mov	r1, r4
 8006f00:	4630      	mov	r0, r6
 8006f02:	f7fe f89b 	bl	800503c <_fflush_r>
 8006f06:	2800      	cmp	r0, #0
 8006f08:	d0d3      	beq.n	8006eb2 <__swbuf_r+0x52>
 8006f0a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006f0e:	e7d0      	b.n	8006eb2 <__swbuf_r+0x52>

08006f10 <_wcrtomb_r>:
 8006f10:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006f12:	4c11      	ldr	r4, [pc, #68]	; (8006f58 <_wcrtomb_r+0x48>)
 8006f14:	6824      	ldr	r4, [r4, #0]
 8006f16:	b085      	sub	sp, #20
 8006f18:	4606      	mov	r6, r0
 8006f1a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006f1c:	461f      	mov	r7, r3
 8006f1e:	b151      	cbz	r1, 8006f36 <_wcrtomb_r+0x26>
 8006f20:	4d0e      	ldr	r5, [pc, #56]	; (8006f5c <_wcrtomb_r+0x4c>)
 8006f22:	2c00      	cmp	r4, #0
 8006f24:	bf08      	it	eq
 8006f26:	462c      	moveq	r4, r5
 8006f28:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006f2c:	47a0      	blx	r4
 8006f2e:	1c43      	adds	r3, r0, #1
 8006f30:	d00c      	beq.n	8006f4c <_wcrtomb_r+0x3c>
 8006f32:	b005      	add	sp, #20
 8006f34:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006f36:	4a09      	ldr	r2, [pc, #36]	; (8006f5c <_wcrtomb_r+0x4c>)
 8006f38:	2c00      	cmp	r4, #0
 8006f3a:	bf08      	it	eq
 8006f3c:	4614      	moveq	r4, r2
 8006f3e:	460a      	mov	r2, r1
 8006f40:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006f44:	a901      	add	r1, sp, #4
 8006f46:	47a0      	blx	r4
 8006f48:	1c43      	adds	r3, r0, #1
 8006f4a:	d1f2      	bne.n	8006f32 <_wcrtomb_r+0x22>
 8006f4c:	2200      	movs	r2, #0
 8006f4e:	238a      	movs	r3, #138	; 0x8a
 8006f50:	603a      	str	r2, [r7, #0]
 8006f52:	6033      	str	r3, [r6, #0]
 8006f54:	b005      	add	sp, #20
 8006f56:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006f58:	20000020 	.word	0x20000020
 8006f5c:	20000864 	.word	0x20000864

08006f60 <__ascii_wctomb>:
 8006f60:	b121      	cbz	r1, 8006f6c <__ascii_wctomb+0xc>
 8006f62:	2aff      	cmp	r2, #255	; 0xff
 8006f64:	d804      	bhi.n	8006f70 <__ascii_wctomb+0x10>
 8006f66:	700a      	strb	r2, [r1, #0]
 8006f68:	2001      	movs	r0, #1
 8006f6a:	4770      	bx	lr
 8006f6c:	4608      	mov	r0, r1
 8006f6e:	4770      	bx	lr
 8006f70:	238a      	movs	r3, #138	; 0x8a
 8006f72:	6003      	str	r3, [r0, #0]
 8006f74:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006f78:	4770      	bx	lr
 8006f7a:	bf00      	nop

08006f7c <_init>:
 8006f7c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006f7e:	bf00      	nop
 8006f80:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006f82:	bc08      	pop	{r3}
 8006f84:	469e      	mov	lr, r3
 8006f86:	4770      	bx	lr

08006f88 <_fini>:
 8006f88:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006f8a:	bf00      	nop
 8006f8c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006f8e:	bc08      	pop	{r3}
 8006f90:	469e      	mov	lr, r3
 8006f92:	4770      	bx	lr
 8006f94:	0000      	movs	r0, r0
	...
