
qsort.elf:     file format elf32-littlearm


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
 80001d8:	20000a18 	.word	0x20000a18
 80001dc:	00000000 	.word	0x00000000
 80001e0:	08006ffc 	.word	0x08006ffc

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	20000a1c 	.word	0x20000a1c
 80001fc:	08006ffc 	.word	0x08006ffc

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
 8001108:	f640 20f0 	movw	r0, #2800	; 0xaf0
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 20f0 	movw	r0, #2800	; 0xaf0
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
 80013e8:	f247 0230 	movw	r2, #28720	; 0x7030
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
 800145a:	f240 0064 	movw	r0, #100	; 0x64
 800145e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001462:	f247 0228 	movw	r2, #28712	; 0x7028
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
 8001484:	f240 0064 	movw	r0, #100	; 0x64
 8001488:	f241 0108 	movw	r1, #4104	; 0x1008
 800148c:	f247 0228 	movw	r2, #28712	; 0x7028
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
 8001842:	f640 21f4 	movw	r1, #2804	; 0xaf4
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
 800188c:	f640 20f4 	movw	r0, #2804	; 0xaf4
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 20f4 	movw	r0, #2804	; 0xaf4
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
 80019d4:	f247 0360 	movw	r3, #28768	; 0x7060
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
 80019fc:	f247 0370 	movw	r3, #28784	; 0x7070
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

08001eb6 <sort>:
 8001eb6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eb8:	af03      	add	r7, sp, #12
 8001eba:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ebe:	f640 3e38 	movw	lr, #2872	; 0xb38
 8001ec2:	f240 0214 	movw	r2, #20
 8001ec6:	f04f 0900 	mov.w	r9, #0
 8001eca:	f04f 0b01 	mov.w	fp, #1
 8001ece:	f06f 0c03 	mvn.w	ip, #3
 8001ed2:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8001ed6:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001eda:	e015      	b.n	8001f08 <sort+0x52>
 8001edc:	f84e 002a 	str.w	r0, [lr, sl, lsl #2]
 8001ee0:	eb0e 0089 	add.w	r0, lr, r9, lsl #2
 8001ee4:	46d1      	mov	r9, sl
 8001ee6:	6043      	str	r3, [r0, #4]
 8001ee8:	1e68      	subs	r0, r5, #1
 8001eea:	e00d      	b.n	8001f08 <sort+0x52>
 8001eec:	f1ba 0f00 	cmp.w	sl, #0
 8001ef0:	bf04      	itt	eq
 8001ef2:	e8bd 0f00 	ldmiaeq.w	sp!, {r8, r9, sl, fp}
 8001ef6:	bdf0      	popeq	{r4, r5, r6, r7, pc}
 8001ef8:	eb0e 018a 	add.w	r1, lr, sl, lsl #2
 8001efc:	f85e 002a 	ldr.w	r0, [lr, sl, lsl #2]
 8001f00:	f1aa 0902 	sub.w	r9, sl, #2
 8001f04:	f851 bc04 	ldr.w	fp, [r1, #-4]
 8001f08:	eba0 010b 	sub.w	r1, r0, fp
 8001f0c:	2907      	cmp	r1, #7
 8001f0e:	d202      	bcs.n	8001f16 <sort+0x60>
 8001f10:	465b      	mov	r3, fp
 8001f12:	46ca      	mov	sl, r9
 8001f14:	e076      	b.n	8002004 <sort+0x14e>
 8001f16:	eb02 0880 	add.w	r8, r2, r0, lsl #2
 8001f1a:	eb0b 0100 	add.w	r1, fp, r0
 8001f1e:	f10b 0301 	add.w	r3, fp, #1
 8001f22:	ea0c 0141 	and.w	r1, ip, r1, lsl #1
 8001f26:	f852 5023 	ldr.w	r5, [r2, r3, lsl #2]
 8001f2a:	eb02 0a83 	add.w	sl, r2, r3, lsl #2
 8001f2e:	5854      	ldr	r4, [r2, r1]
 8001f30:	5055      	str	r5, [r2, r1]
 8001f32:	eb02 058b 	add.w	r5, r2, fp, lsl #2
 8001f36:	f842 4023 	str.w	r4, [r2, r3, lsl #2]
 8001f3a:	ed98 0a00 	vldr	s0, [r8]
 8001f3e:	ed95 2a00 	vldr	s4, [r5]
 8001f42:	eeb4 2ac0 	vcmpe.f32	s4, s0
 8001f46:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f4a:	dd08      	ble.n	8001f5e <sort+0xa8>
 8001f4c:	ed85 0a00 	vstr	s0, [r5]
 8001f50:	ed88 2a00 	vstr	s4, [r8]
 8001f54:	eeb0 0a42 	vmov.f32	s0, s4
 8001f58:	ed9a 1a00 	vldr	s2, [sl]
 8001f5c:	e001      	b.n	8001f62 <sort+0xac>
 8001f5e:	ee01 4a10 	vmov	s2, r4
 8001f62:	eeb4 1ac0 	vcmpe.f32	s2, s0
 8001f66:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f6a:	bfc2      	ittt	gt
 8001f6c:	ed8a 0a00 	vstrgt	s0, [sl]
 8001f70:	ed88 1a00 	vstrgt	s2, [r8]
 8001f74:	ed9a 1a00 	vldrgt	s2, [sl]
 8001f78:	ed95 0a00 	vldr	s0, [r5]
 8001f7c:	eeb4 0ac1 	vcmpe.f32	s0, s2
 8001f80:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f84:	bfc6      	itte	gt
 8001f86:	ed85 1a00 	vstrgt	s2, [r5]
 8001f8a:	ed8a 0a00 	vstrgt	s0, [sl]
 8001f8e:	eeb0 0a41 	vmovle.f32	s0, s2
 8001f92:	4605      	mov	r5, r0
 8001f94:	e003      	b.n	8001f9e <sort+0xe8>
 8001f96:	ed04 2a01 	vstr	s4, [r4, #-4]
 8001f9a:	ed81 1a00 	vstr	s2, [r1]
 8001f9e:	eb02 0183 	add.w	r1, r2, r3, lsl #2
 8001fa2:	1d0e      	adds	r6, r1, #4
 8001fa4:	ed96 1a00 	vldr	s2, [r6]
 8001fa8:	1d34      	adds	r4, r6, #4
 8001faa:	3301      	adds	r3, #1
 8001fac:	4626      	mov	r6, r4
 8001fae:	eeb4 1ac0 	vcmpe.f32	s2, s0
 8001fb2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001fb6:	d4f5      	bmi.n	8001fa4 <sort+0xee>
 8001fb8:	eb02 0685 	add.w	r6, r2, r5, lsl #2
 8001fbc:	ed16 2a01 	vldr	s4, [r6, #-4]
 8001fc0:	1f31      	subs	r1, r6, #4
 8001fc2:	3d01      	subs	r5, #1
 8001fc4:	460e      	mov	r6, r1
 8001fc6:	eeb4 2ac0 	vcmpe.f32	s4, s0
 8001fca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001fce:	dcf5      	bgt.n	8001fbc <sort+0x106>
 8001fd0:	429d      	cmp	r5, r3
 8001fd2:	d2e0      	bcs.n	8001f96 <sort+0xe0>
 8001fd4:	1ac4      	subs	r4, r0, r3
 8001fd6:	ed8a 2a00 	vstr	s4, [sl]
 8001fda:	ed81 0a00 	vstr	s0, [r1]
 8001fde:	eba5 010b 	sub.w	r1, r5, fp
 8001fe2:	f109 0a02 	add.w	sl, r9, #2
 8001fe6:	1c66      	adds	r6, r4, #1
 8001fe8:	428e      	cmp	r6, r1
 8001fea:	f4bf af77 	bcs.w	8001edc <sort+0x26>
 8001fee:	1e69      	subs	r1, r5, #1
 8001ff0:	2c07      	cmp	r4, #7
 8001ff2:	f84e 102a 	str.w	r1, [lr, sl, lsl #2]
 8001ff6:	eb0e 0189 	add.w	r1, lr, r9, lsl #2
 8001ffa:	46d1      	mov	r9, sl
 8001ffc:	f8c1 b004 	str.w	fp, [r1, #4]
 8002000:	469b      	mov	fp, r3
 8002002:	d28a      	bcs.n	8001f1a <sort+0x64>
 8002004:	1c5c      	adds	r4, r3, #1
 8002006:	4284      	cmp	r4, r0
 8002008:	f63f af70 	bhi.w	8001eec <sort+0x36>
 800200c:	eb02 0183 	add.w	r1, r2, r3, lsl #2
 8002010:	461e      	mov	r6, r3
 8002012:	3104      	adds	r1, #4
 8002014:	4635      	mov	r5, r6
 8002016:	4626      	mov	r6, r4
 8002018:	eb02 0486 	add.w	r4, r2, r6, lsl #2
 800201c:	429d      	cmp	r5, r3
 800201e:	ed94 0a00 	vldr	s0, [r4]
 8002022:	d30d      	bcc.n	8002040 <sort+0x18a>
 8002024:	460c      	mov	r4, r1
 8002026:	ed14 1a01 	vldr	s2, [r4, #-4]
 800202a:	eeb4 1ac0 	vcmpe.f32	s2, s0
 800202e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002032:	d905      	bls.n	8002040 <sort+0x18a>
 8002034:	3d01      	subs	r5, #1
 8002036:	ed84 1a00 	vstr	s2, [r4]
 800203a:	3c04      	subs	r4, #4
 800203c:	429d      	cmp	r5, r3
 800203e:	d2f2      	bcs.n	8002026 <sort+0x170>
 8002040:	eb02 0485 	add.w	r4, r2, r5, lsl #2
 8002044:	3104      	adds	r1, #4
 8002046:	ed84 0a01 	vstr	s0, [r4, #4]
 800204a:	1c74      	adds	r4, r6, #1
 800204c:	4284      	cmp	r4, r0
 800204e:	d9e1      	bls.n	8002014 <sort+0x15e>
 8002050:	e74c      	b.n	8001eec <sort+0x36>

08002052 <verify_benchmark>:
 8002052:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002056:	4770      	bx	lr

08002058 <initialise_benchmark>:
 8002058:	4770      	bx	lr

0800205a <benchmark>:
 800205a:	b580      	push	{r7, lr}
 800205c:	466f      	mov	r7, sp
 800205e:	2014      	movs	r0, #20
 8002060:	f7ff ff29 	bl	8001eb6 <sort>
 8002064:	2000      	movs	r0, #0
 8002066:	bd80      	pop	{r7, pc}

08002068 <__io_putchar>:
 8002068:	b580      	push	{r7, lr}
 800206a:	466f      	mov	r7, sp
 800206c:	b082      	sub	sp, #8
 800206e:	9001      	str	r0, [sp, #4]
 8002070:	f640 2034 	movw	r0, #2612	; 0xa34
 8002074:	a901      	add	r1, sp, #4
 8002076:	2201      	movs	r2, #1
 8002078:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800207c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002080:	f7ff fe2b 	bl	8001cda <HAL_UART_Transmit>
 8002084:	9801      	ldr	r0, [sp, #4]
 8002086:	b002      	add	sp, #8
 8002088:	bd80      	pop	{r7, pc}

0800208a <main>:
 800208a:	b5b0      	push	{r4, r5, r7, lr}
 800208c:	af02      	add	r7, sp, #8
 800208e:	f640 2134 	movw	r1, #2612	; 0xa34
 8002092:	f643 0000 	movw	r0, #14336	; 0x3800
 8002096:	220c      	movs	r2, #12
 8002098:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800209c:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80020a0:	6008      	str	r0, [r1, #0]
 80020a2:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80020a6:	6048      	str	r0, [r1, #4]
 80020a8:	2000      	movs	r0, #0
 80020aa:	e9c1 0002 	strd	r0, r0, [r1, #8]
 80020ae:	6108      	str	r0, [r1, #16]
 80020b0:	6248      	str	r0, [r1, #36]	; 0x24
 80020b2:	e9c1 0007 	strd	r0, r0, [r1, #28]
 80020b6:	e9c1 2005 	strd	r2, r0, [r1, #20]
 80020ba:	2000      	movs	r0, #0
 80020bc:	f7ff fea2 	bl	8001e04 <BSP_COM_Init>
 80020c0:	f7ff ffca 	bl	8002058 <initialise_benchmark>
 80020c4:	f247 0080 	movw	r0, #28800	; 0x7080
 80020c8:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020cc:	f000 f948 	bl	8002360 <printf>
 80020d0:	f247 1028 	movw	r0, #28968	; 0x7128
 80020d4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020d8:	f000 f9a4 	bl	8002424 <puts>
 80020dc:	f7ff f804 	bl	80010e8 <HAL_Init>
 80020e0:	f7ff f81a 	bl	8001118 <HAL_GetTick>
 80020e4:	4604      	mov	r4, r0
 80020e6:	f7ff ffb8 	bl	800205a <benchmark>
 80020ea:	4605      	mov	r5, r0
 80020ec:	f7ff f814 	bl	8001118 <HAL_GetTick>
 80020f0:	1b04      	subs	r4, r0, r4
 80020f2:	4628      	mov	r0, r5
 80020f4:	f7ff ffad 	bl	8002052 <verify_benchmark>
 80020f8:	1c41      	adds	r1, r0, #1
 80020fa:	d006      	beq.n	800210a <main+0x80>
 80020fc:	2801      	cmp	r0, #1
 80020fe:	d109      	bne.n	8002114 <main+0x8a>
 8002100:	f247 0094 	movw	r0, #28820	; 0x7094
 8002104:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002108:	e008      	b.n	800211c <main+0x92>
 800210a:	f247 00b8 	movw	r0, #28856	; 0x70b8
 800210e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002112:	e003      	b.n	800211c <main+0x92>
 8002114:	f247 00ed 	movw	r0, #28909	; 0x70ed
 8002118:	f6c0 0000 	movt	r0, #2048	; 0x800
 800211c:	4621      	mov	r1, r4
 800211e:	f000 f91f 	bl	8002360 <printf>
 8002122:	2000      	movs	r0, #0
 8002124:	bdb0      	pop	{r4, r5, r7, pc}

08002126 <SysTick_Handler>:
 8002126:	b580      	push	{r7, lr}
 8002128:	466f      	mov	r7, sp
 800212a:	f7fe ffed 	bl	8001108 <HAL_IncTick>
 800212e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002132:	f7ff b847 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

08002136 <_read>:
 8002136:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002138:	af03      	add	r7, sp, #12
 800213a:	f84d bd04 	str.w	fp, [sp, #-4]!
 800213e:	4614      	mov	r4, r2
 8002140:	460d      	mov	r5, r1
 8002142:	2c01      	cmp	r4, #1
 8002144:	db06      	blt.n	8002154 <_read+0x1e>
 8002146:	4626      	mov	r6, r4
 8002148:	f3af 8000 	nop.w
 800214c:	f805 0b01 	strb.w	r0, [r5], #1
 8002150:	3e01      	subs	r6, #1
 8002152:	d1f9      	bne.n	8002148 <_read+0x12>
 8002154:	4620      	mov	r0, r4
 8002156:	f85d bb04 	ldr.w	fp, [sp], #4
 800215a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800215c <_write>:
 800215c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800215e:	af03      	add	r7, sp, #12
 8002160:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002164:	4614      	mov	r4, r2
 8002166:	460d      	mov	r5, r1
 8002168:	2c01      	cmp	r4, #1
 800216a:	db06      	blt.n	800217a <_write+0x1e>
 800216c:	4626      	mov	r6, r4
 800216e:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002172:	f7ff ff79 	bl	8002068 <__io_putchar>
 8002176:	3e01      	subs	r6, #1
 8002178:	d1f9      	bne.n	800216e <_write+0x12>
 800217a:	4620      	mov	r0, r4
 800217c:	f85d bb04 	ldr.w	fp, [sp], #4
 8002180:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002182 <_sbrk>:
 8002182:	f640 22b8 	movw	r2, #2744	; 0xab8
 8002186:	4601      	mov	r1, r0
 8002188:	466b      	mov	r3, sp
 800218a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800218e:	6810      	ldr	r0, [r2, #0]
 8002190:	2800      	cmp	r0, #0
 8002192:	bf02      	ittt	eq
 8002194:	f640 40f0 	movweq	r0, #3312	; 0xcf0
 8002198:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 800219c:	6010      	streq	r0, [r2, #0]
 800219e:	4401      	add	r1, r0
 80021a0:	4299      	cmp	r1, r3
 80021a2:	bf9c      	itt	ls
 80021a4:	6011      	strls	r1, [r2, #0]
 80021a6:	4770      	bxls	lr
 80021a8:	b580      	push	{r7, lr}
 80021aa:	466f      	mov	r7, sp
 80021ac:	f000 f864 	bl	8002278 <__errno>
 80021b0:	210c      	movs	r1, #12
 80021b2:	6001      	str	r1, [r0, #0]
 80021b4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80021b8:	bd80      	pop	{r7, pc}

080021ba <_close>:
 80021ba:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80021be:	4770      	bx	lr

080021c0 <_fstat>:
 80021c0:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80021c4:	6048      	str	r0, [r1, #4]
 80021c6:	2000      	movs	r0, #0
 80021c8:	4770      	bx	lr

080021ca <_isatty>:
 80021ca:	2001      	movs	r0, #1
 80021cc:	4770      	bx	lr

080021ce <_lseek>:
 80021ce:	2000      	movs	r0, #0
 80021d0:	4770      	bx	lr

080021d2 <SystemInit>:
 80021d2:	f64e 5088 	movw	r0, #60808	; 0xed88
 80021d6:	f04f 0c00 	mov.w	ip, #0
 80021da:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80021de:	6801      	ldr	r1, [r0, #0]
 80021e0:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80021e4:	6001      	str	r1, [r0, #0]
 80021e6:	f241 0100 	movw	r1, #4096	; 0x1000
 80021ea:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80021ee:	680a      	ldr	r2, [r1, #0]
 80021f0:	f042 0201 	orr.w	r2, r2, #1
 80021f4:	600a      	str	r2, [r1, #0]
 80021f6:	f8c1 c008 	str.w	ip, [r1, #8]
 80021fa:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80021fe:	680b      	ldr	r3, [r1, #0]
 8002200:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002204:	401a      	ands	r2, r3
 8002206:	600a      	str	r2, [r1, #0]
 8002208:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 800220c:	60ca      	str	r2, [r1, #12]
 800220e:	680a      	ldr	r2, [r1, #0]
 8002210:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002214:	600a      	str	r2, [r1, #0]
 8002216:	f8c1 c018 	str.w	ip, [r1, #24]
 800221a:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 800221e:	f840 1c80 	str.w	r1, [r0, #-128]
 8002222:	4770      	bx	lr

08002224 <Reset_Handler>:
 8002224:	f8df d034 	ldr.w	sp, [pc, #52]	; 800225c <LoopForever+0x2>
 8002228:	2100      	movs	r1, #0
 800222a:	e003      	b.n	8002234 <LoopCopyDataInit>

0800222c <CopyDataInit>:
 800222c:	4b0c      	ldr	r3, [pc, #48]	; (8002260 <LoopForever+0x6>)
 800222e:	585b      	ldr	r3, [r3, r1]
 8002230:	5043      	str	r3, [r0, r1]
 8002232:	3104      	adds	r1, #4

08002234 <LoopCopyDataInit>:
 8002234:	480b      	ldr	r0, [pc, #44]	; (8002264 <LoopForever+0xa>)
 8002236:	4b0c      	ldr	r3, [pc, #48]	; (8002268 <LoopForever+0xe>)
 8002238:	1842      	adds	r2, r0, r1
 800223a:	429a      	cmp	r2, r3
 800223c:	d3f6      	bcc.n	800222c <CopyDataInit>
 800223e:	4a0b      	ldr	r2, [pc, #44]	; (800226c <LoopForever+0x12>)
 8002240:	e002      	b.n	8002248 <LoopFillZerobss>

08002242 <FillZerobss>:
 8002242:	2300      	movs	r3, #0
 8002244:	f842 3b04 	str.w	r3, [r2], #4

08002248 <LoopFillZerobss>:
 8002248:	4b09      	ldr	r3, [pc, #36]	; (8002270 <LoopForever+0x16>)
 800224a:	429a      	cmp	r2, r3
 800224c:	d3f9      	bcc.n	8002242 <FillZerobss>
 800224e:	f7ff ffc0 	bl	80021d2 <SystemInit>
 8002252:	f000 f817 	bl	8002284 <__libc_init_array>
 8002256:	f7ff ff18 	bl	800208a <main>

0800225a <LoopForever>:
 800225a:	e7fe      	b.n	800225a <LoopForever>
 800225c:	20018000 	.word	0x20018000
 8002260:	080073d0 	.word	0x080073d0
 8002264:	20000000 	.word	0x20000000
 8002268:	20000a18 	.word	0x20000a18
 800226c:	20000a18 	.word	0x20000a18
 8002270:	20000cf0 	.word	0x20000cf0

08002274 <ADC1_2_IRQHandler>:
 8002274:	e7fe      	b.n	8002274 <ADC1_2_IRQHandler>
	...

08002278 <__errno>:
 8002278:	4b01      	ldr	r3, [pc, #4]	; (8002280 <__errno+0x8>)
 800227a:	6818      	ldr	r0, [r3, #0]
 800227c:	4770      	bx	lr
 800227e:	bf00      	nop
 8002280:	20000068 	.word	0x20000068

08002284 <__libc_init_array>:
 8002284:	b570      	push	{r4, r5, r6, lr}
 8002286:	4e0d      	ldr	r6, [pc, #52]	; (80022bc <__libc_init_array+0x38>)
 8002288:	4d0d      	ldr	r5, [pc, #52]	; (80022c0 <__libc_init_array+0x3c>)
 800228a:	1b76      	subs	r6, r6, r5
 800228c:	10b6      	asrs	r6, r6, #2
 800228e:	d006      	beq.n	800229e <__libc_init_array+0x1a>
 8002290:	2400      	movs	r4, #0
 8002292:	3401      	adds	r4, #1
 8002294:	f855 3b04 	ldr.w	r3, [r5], #4
 8002298:	4798      	blx	r3
 800229a:	42a6      	cmp	r6, r4
 800229c:	d1f9      	bne.n	8002292 <__libc_init_array+0xe>
 800229e:	4e09      	ldr	r6, [pc, #36]	; (80022c4 <__libc_init_array+0x40>)
 80022a0:	4d09      	ldr	r5, [pc, #36]	; (80022c8 <__libc_init_array+0x44>)
 80022a2:	1b76      	subs	r6, r6, r5
 80022a4:	f004 feaa 	bl	8006ffc <_init>
 80022a8:	10b6      	asrs	r6, r6, #2
 80022aa:	d006      	beq.n	80022ba <__libc_init_array+0x36>
 80022ac:	2400      	movs	r4, #0
 80022ae:	3401      	adds	r4, #1
 80022b0:	f855 3b04 	ldr.w	r3, [r5], #4
 80022b4:	4798      	blx	r3
 80022b6:	42a6      	cmp	r6, r4
 80022b8:	d1f9      	bne.n	80022ae <__libc_init_array+0x2a>
 80022ba:	bd70      	pop	{r4, r5, r6, pc}
 80022bc:	080073c0 	.word	0x080073c0
 80022c0:	080073c0 	.word	0x080073c0
 80022c4:	080073c8 	.word	0x080073c8
 80022c8:	080073c0 	.word	0x080073c0

080022cc <memset>:
 80022cc:	b4f0      	push	{r4, r5, r6, r7}
 80022ce:	0786      	lsls	r6, r0, #30
 80022d0:	d043      	beq.n	800235a <memset+0x8e>
 80022d2:	1e54      	subs	r4, r2, #1
 80022d4:	2a00      	cmp	r2, #0
 80022d6:	d03e      	beq.n	8002356 <memset+0x8a>
 80022d8:	b2ca      	uxtb	r2, r1
 80022da:	4603      	mov	r3, r0
 80022dc:	e002      	b.n	80022e4 <memset+0x18>
 80022de:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80022e2:	d338      	bcc.n	8002356 <memset+0x8a>
 80022e4:	f803 2b01 	strb.w	r2, [r3], #1
 80022e8:	079d      	lsls	r5, r3, #30
 80022ea:	d1f8      	bne.n	80022de <memset+0x12>
 80022ec:	2c03      	cmp	r4, #3
 80022ee:	d92b      	bls.n	8002348 <memset+0x7c>
 80022f0:	b2cd      	uxtb	r5, r1
 80022f2:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80022f6:	2c0f      	cmp	r4, #15
 80022f8:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80022fc:	d916      	bls.n	800232c <memset+0x60>
 80022fe:	f1a4 0710 	sub.w	r7, r4, #16
 8002302:	093f      	lsrs	r7, r7, #4
 8002304:	f103 0620 	add.w	r6, r3, #32
 8002308:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 800230c:	f103 0210 	add.w	r2, r3, #16
 8002310:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002314:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002318:	3210      	adds	r2, #16
 800231a:	42b2      	cmp	r2, r6
 800231c:	d1f8      	bne.n	8002310 <memset+0x44>
 800231e:	f004 040f 	and.w	r4, r4, #15
 8002322:	3701      	adds	r7, #1
 8002324:	2c03      	cmp	r4, #3
 8002326:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800232a:	d90d      	bls.n	8002348 <memset+0x7c>
 800232c:	461e      	mov	r6, r3
 800232e:	4622      	mov	r2, r4
 8002330:	3a04      	subs	r2, #4
 8002332:	2a03      	cmp	r2, #3
 8002334:	f846 5b04 	str.w	r5, [r6], #4
 8002338:	d8fa      	bhi.n	8002330 <memset+0x64>
 800233a:	1f22      	subs	r2, r4, #4
 800233c:	f022 0203 	bic.w	r2, r2, #3
 8002340:	3204      	adds	r2, #4
 8002342:	4413      	add	r3, r2
 8002344:	f004 0403 	and.w	r4, r4, #3
 8002348:	b12c      	cbz	r4, 8002356 <memset+0x8a>
 800234a:	b2c9      	uxtb	r1, r1
 800234c:	441c      	add	r4, r3
 800234e:	f803 1b01 	strb.w	r1, [r3], #1
 8002352:	429c      	cmp	r4, r3
 8002354:	d1fb      	bne.n	800234e <memset+0x82>
 8002356:	bcf0      	pop	{r4, r5, r6, r7}
 8002358:	4770      	bx	lr
 800235a:	4614      	mov	r4, r2
 800235c:	4603      	mov	r3, r0
 800235e:	e7c5      	b.n	80022ec <memset+0x20>

08002360 <printf>:
 8002360:	b40f      	push	{r0, r1, r2, r3}
 8002362:	b500      	push	{lr}
 8002364:	4907      	ldr	r1, [pc, #28]	; (8002384 <printf+0x24>)
 8002366:	b083      	sub	sp, #12
 8002368:	ab04      	add	r3, sp, #16
 800236a:	6808      	ldr	r0, [r1, #0]
 800236c:	f853 2b04 	ldr.w	r2, [r3], #4
 8002370:	6881      	ldr	r1, [r0, #8]
 8002372:	9301      	str	r3, [sp, #4]
 8002374:	f000 f860 	bl	8002438 <_vfprintf_r>
 8002378:	b003      	add	sp, #12
 800237a:	f85d eb04 	ldr.w	lr, [sp], #4
 800237e:	b004      	add	sp, #16
 8002380:	4770      	bx	lr
 8002382:	bf00      	nop
 8002384:	20000068 	.word	0x20000068

08002388 <_puts_r>:
 8002388:	b570      	push	{r4, r5, r6, lr}
 800238a:	4605      	mov	r5, r0
 800238c:	b088      	sub	sp, #32
 800238e:	4608      	mov	r0, r1
 8002390:	460c      	mov	r4, r1
 8002392:	f7fe f955 	bl	8000640 <strlen>
 8002396:	4a22      	ldr	r2, [pc, #136]	; (8002420 <_puts_r+0x98>)
 8002398:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800239a:	9404      	str	r4, [sp, #16]
 800239c:	2601      	movs	r6, #1
 800239e:	1c44      	adds	r4, r0, #1
 80023a0:	a904      	add	r1, sp, #16
 80023a2:	9206      	str	r2, [sp, #24]
 80023a4:	2202      	movs	r2, #2
 80023a6:	9403      	str	r4, [sp, #12]
 80023a8:	9005      	str	r0, [sp, #20]
 80023aa:	68ac      	ldr	r4, [r5, #8]
 80023ac:	9607      	str	r6, [sp, #28]
 80023ae:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80023b2:	b31b      	cbz	r3, 80023fc <_puts_r+0x74>
 80023b4:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80023b6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80023ba:	07ce      	lsls	r6, r1, #31
 80023bc:	b29a      	uxth	r2, r3
 80023be:	d401      	bmi.n	80023c4 <_puts_r+0x3c>
 80023c0:	0590      	lsls	r0, r2, #22
 80023c2:	d525      	bpl.n	8002410 <_puts_r+0x88>
 80023c4:	0491      	lsls	r1, r2, #18
 80023c6:	d406      	bmi.n	80023d6 <_puts_r+0x4e>
 80023c8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80023ca:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80023ce:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80023d2:	81a3      	strh	r3, [r4, #12]
 80023d4:	6662      	str	r2, [r4, #100]	; 0x64
 80023d6:	4628      	mov	r0, r5
 80023d8:	aa01      	add	r2, sp, #4
 80023da:	4621      	mov	r1, r4
 80023dc:	f003 f860 	bl	80054a0 <__sfvwrite_r>
 80023e0:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80023e2:	2800      	cmp	r0, #0
 80023e4:	bf0c      	ite	eq
 80023e6:	250a      	moveq	r5, #10
 80023e8:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80023ec:	07da      	lsls	r2, r3, #31
 80023ee:	d402      	bmi.n	80023f6 <_puts_r+0x6e>
 80023f0:	89a3      	ldrh	r3, [r4, #12]
 80023f2:	059b      	lsls	r3, r3, #22
 80023f4:	d506      	bpl.n	8002404 <_puts_r+0x7c>
 80023f6:	4628      	mov	r0, r5
 80023f8:	b008      	add	sp, #32
 80023fa:	bd70      	pop	{r4, r5, r6, pc}
 80023fc:	4628      	mov	r0, r5
 80023fe:	f002 feb9 	bl	8005174 <__sinit>
 8002402:	e7d7      	b.n	80023b4 <_puts_r+0x2c>
 8002404:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002406:	f003 fa07 	bl	8005818 <__retarget_lock_release_recursive>
 800240a:	4628      	mov	r0, r5
 800240c:	b008      	add	sp, #32
 800240e:	bd70      	pop	{r4, r5, r6, pc}
 8002410:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002412:	f003 f9ff 	bl	8005814 <__retarget_lock_acquire_recursive>
 8002416:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800241a:	b29a      	uxth	r2, r3
 800241c:	e7d2      	b.n	80023c4 <_puts_r+0x3c>
 800241e:	bf00      	nop
 8002420:	08007130 	.word	0x08007130

08002424 <puts>:
 8002424:	4b02      	ldr	r3, [pc, #8]	; (8002430 <puts+0xc>)
 8002426:	4601      	mov	r1, r0
 8002428:	6818      	ldr	r0, [r3, #0]
 800242a:	f7ff bfad 	b.w	8002388 <_puts_r>
 800242e:	bf00      	nop
 8002430:	20000068 	.word	0x20000068
 8002434:	00000000 	.word	0x00000000

08002438 <_vfprintf_r>:
 8002438:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800243c:	b0d7      	sub	sp, #348	; 0x15c
 800243e:	461c      	mov	r4, r3
 8002440:	4689      	mov	r9, r1
 8002442:	4617      	mov	r7, r2
 8002444:	4605      	mov	r5, r0
 8002446:	9003      	str	r0, [sp, #12]
 8002448:	f003 f9d2 	bl	80057f0 <_localeconv_r>
 800244c:	6803      	ldr	r3, [r0, #0]
 800244e:	9316      	str	r3, [sp, #88]	; 0x58
 8002450:	4618      	mov	r0, r3
 8002452:	f7fe f8f5 	bl	8000640 <strlen>
 8002456:	9408      	str	r4, [sp, #32]
 8002458:	9015      	str	r0, [sp, #84]	; 0x54
 800245a:	b11d      	cbz	r5, 8002464 <_vfprintf_r+0x2c>
 800245c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800245e:	2b00      	cmp	r3, #0
 8002460:	f000 8107 	beq.w	8002672 <_vfprintf_r+0x23a>
 8002464:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002468:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800246c:	07c8      	lsls	r0, r1, #31
 800246e:	b293      	uxth	r3, r2
 8002470:	d402      	bmi.n	8002478 <_vfprintf_r+0x40>
 8002472:	0599      	lsls	r1, r3, #22
 8002474:	f140 811f 	bpl.w	80026b6 <_vfprintf_r+0x27e>
 8002478:	049e      	lsls	r6, r3, #18
 800247a:	d40a      	bmi.n	8002492 <_vfprintf_r+0x5a>
 800247c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002480:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002484:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002488:	f8a9 300c 	strh.w	r3, [r9, #12]
 800248c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002490:	b29b      	uxth	r3, r3
 8002492:	071d      	lsls	r5, r3, #28
 8002494:	f140 80b2 	bpl.w	80025fc <_vfprintf_r+0x1c4>
 8002498:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800249c:	2a00      	cmp	r2, #0
 800249e:	f000 80ad 	beq.w	80025fc <_vfprintf_r+0x1c4>
 80024a2:	f003 021a 	and.w	r2, r3, #26
 80024a6:	2a0a      	cmp	r2, #10
 80024a8:	f000 80c9 	beq.w	800263e <_vfprintf_r+0x206>
 80024ac:	2300      	movs	r3, #0
 80024ae:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80026c8 <_vfprintf_r+0x290>
 80024b2:	9310      	str	r3, [sp, #64]	; 0x40
 80024b4:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80024b8:	9317      	str	r3, [sp, #92]	; 0x5c
 80024ba:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80024be:	931b      	str	r3, [sp, #108]	; 0x6c
 80024c0:	9318      	str	r3, [sp, #96]	; 0x60
 80024c2:	9305      	str	r3, [sp, #20]
 80024c4:	ab2d      	add	r3, sp, #180	; 0xb4
 80024c6:	932a      	str	r3, [sp, #168]	; 0xa8
 80024c8:	469b      	mov	fp, r3
 80024ca:	783b      	ldrb	r3, [r7, #0]
 80024cc:	f8cd 901c 	str.w	r9, [sp, #28]
 80024d0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80024d4:	2b00      	cmp	r3, #0
 80024d6:	f000 8259 	beq.w	800298c <_vfprintf_r+0x554>
 80024da:	2b25      	cmp	r3, #37	; 0x25
 80024dc:	463c      	mov	r4, r7
 80024de:	d102      	bne.n	80024e6 <_vfprintf_r+0xae>
 80024e0:	e01d      	b.n	800251e <_vfprintf_r+0xe6>
 80024e2:	2b25      	cmp	r3, #37	; 0x25
 80024e4:	d003      	beq.n	80024ee <_vfprintf_r+0xb6>
 80024e6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80024ea:	2b00      	cmp	r3, #0
 80024ec:	d1f9      	bne.n	80024e2 <_vfprintf_r+0xaa>
 80024ee:	1be5      	subs	r5, r4, r7
 80024f0:	b18d      	cbz	r5, 8002516 <_vfprintf_r+0xde>
 80024f2:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 80024f6:	3301      	adds	r3, #1
 80024f8:	442a      	add	r2, r5
 80024fa:	2b07      	cmp	r3, #7
 80024fc:	f8cb 7000 	str.w	r7, [fp]
 8002500:	f8cb 5004 	str.w	r5, [fp, #4]
 8002504:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002508:	f300 80ca 	bgt.w	80026a0 <_vfprintf_r+0x268>
 800250c:	f10b 0b08 	add.w	fp, fp, #8
 8002510:	9b05      	ldr	r3, [sp, #20]
 8002512:	442b      	add	r3, r5
 8002514:	9305      	str	r3, [sp, #20]
 8002516:	7823      	ldrb	r3, [r4, #0]
 8002518:	2b00      	cmp	r3, #0
 800251a:	f000 8237 	beq.w	800298c <_vfprintf_r+0x554>
 800251e:	2300      	movs	r3, #0
 8002520:	7866      	ldrb	r6, [r4, #1]
 8002522:	9306      	str	r3, [sp, #24]
 8002524:	4698      	mov	r8, r3
 8002526:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800252a:	f104 0a01 	add.w	sl, r4, #1
 800252e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002532:	252b      	movs	r5, #43	; 0x2b
 8002534:	f10a 0a01 	add.w	sl, sl, #1
 8002538:	f1a6 0320 	sub.w	r3, r6, #32
 800253c:	2b5a      	cmp	r3, #90	; 0x5a
 800253e:	f200 842a 	bhi.w	8002d96 <_vfprintf_r+0x95e>
 8002542:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002546:	03aa      	.short	0x03aa
 8002548:	04280428 	.word	0x04280428
 800254c:	0428029c 	.word	0x0428029c
 8002550:	04280428 	.word	0x04280428
 8002554:	042802a7 	.word	0x042802a7
 8002558:	02c60428 	.word	0x02c60428
 800255c:	042802d2 	.word	0x042802d2
 8002560:	02dc02d7 	.word	0x02dc02d7
 8002564:	02f60428 	.word	0x02f60428
 8002568:	026d026d 	.word	0x026d026d
 800256c:	026d026d 	.word	0x026d026d
 8002570:	026d026d 	.word	0x026d026d
 8002574:	026d026d 	.word	0x026d026d
 8002578:	0428026d 	.word	0x0428026d
 800257c:	04280428 	.word	0x04280428
 8002580:	04280428 	.word	0x04280428
 8002584:	04280428 	.word	0x04280428
 8002588:	042802fb 	.word	0x042802fb
 800258c:	03f3033c 	.word	0x03f3033c
 8002590:	02fb02fb 	.word	0x02fb02fb
 8002594:	042802fb 	.word	0x042802fb
 8002598:	04280428 	.word	0x04280428
 800259c:	03ee0428 	.word	0x03ee0428
 80025a0:	04280428 	.word	0x04280428
 80025a4:	0428009a 	.word	0x0428009a
 80025a8:	04280428 	.word	0x04280428
 80025ac:	04280350 	.word	0x04280350
 80025b0:	04280379 	.word	0x04280379
 80025b4:	03900428 	.word	0x03900428
 80025b8:	04280428 	.word	0x04280428
 80025bc:	04280428 	.word	0x04280428
 80025c0:	04280428 	.word	0x04280428
 80025c4:	04280428 	.word	0x04280428
 80025c8:	042802fb 	.word	0x042802fb
 80025cc:	00c5033c 	.word	0x00c5033c
 80025d0:	02fb02fb 	.word	0x02fb02fb
 80025d4:	03d102fb 	.word	0x03d102fb
 80025d8:	007000c5 	.word	0x007000c5
 80025dc:	03b50428 	.word	0x03b50428
 80025e0:	03c20428 	.word	0x03c20428
 80025e4:	03de009c 	.word	0x03de009c
 80025e8:	04280070 	.word	0x04280070
 80025ec:	00720350 	.word	0x00720350
 80025f0:	0428022c 	.word	0x0428022c
 80025f4:	027c0428 	.word	0x027c0428
 80025f8:	00720428 	.word	0x00720428
 80025fc:	4649      	mov	r1, r9
 80025fe:	9803      	ldr	r0, [sp, #12]
 8002600:	f001 fc9a 	bl	8003f38 <__swsetup_r>
 8002604:	b1a0      	cbz	r0, 8002630 <_vfprintf_r+0x1f8>
 8002606:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 800260a:	07d8      	lsls	r0, r3, #31
 800260c:	d404      	bmi.n	8002618 <_vfprintf_r+0x1e0>
 800260e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002612:	0599      	lsls	r1, r3, #22
 8002614:	f140 83b7 	bpl.w	8002d86 <_vfprintf_r+0x94e>
 8002618:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800261c:	9305      	str	r3, [sp, #20]
 800261e:	9805      	ldr	r0, [sp, #20]
 8002620:	b057      	add	sp, #348	; 0x15c
 8002622:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002626:	f048 0820 	orr.w	r8, r8, #32
 800262a:	f89a 6000 	ldrb.w	r6, [sl]
 800262e:	e781      	b.n	8002534 <_vfprintf_r+0xfc>
 8002630:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002634:	f003 021a 	and.w	r2, r3, #26
 8002638:	2a0a      	cmp	r2, #10
 800263a:	f47f af37 	bne.w	80024ac <_vfprintf_r+0x74>
 800263e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002642:	2a00      	cmp	r2, #0
 8002644:	f6ff af32 	blt.w	80024ac <_vfprintf_r+0x74>
 8002648:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800264c:	07d2      	lsls	r2, r2, #31
 800264e:	d405      	bmi.n	800265c <_vfprintf_r+0x224>
 8002650:	059b      	lsls	r3, r3, #22
 8002652:	d403      	bmi.n	800265c <_vfprintf_r+0x224>
 8002654:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002658:	f003 f8de 	bl	8005818 <__retarget_lock_release_recursive>
 800265c:	4623      	mov	r3, r4
 800265e:	463a      	mov	r2, r7
 8002660:	4649      	mov	r1, r9
 8002662:	9803      	ldr	r0, [sp, #12]
 8002664:	f001 fc26 	bl	8003eb4 <__sbprintf>
 8002668:	9005      	str	r0, [sp, #20]
 800266a:	9805      	ldr	r0, [sp, #20]
 800266c:	b057      	add	sp, #348	; 0x15c
 800266e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002672:	9803      	ldr	r0, [sp, #12]
 8002674:	f002 fd7e 	bl	8005174 <__sinit>
 8002678:	e6f4      	b.n	8002464 <_vfprintf_r+0x2c>
 800267a:	f048 0810 	orr.w	r8, r8, #16
 800267e:	f018 0f20 	tst.w	r8, #32
 8002682:	f000 836c 	beq.w	8002d5e <_vfprintf_r+0x926>
 8002686:	9c08      	ldr	r4, [sp, #32]
 8002688:	3407      	adds	r4, #7
 800268a:	f024 0307 	bic.w	r3, r4, #7
 800268e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002692:	f103 0208 	add.w	r2, r3, #8
 8002696:	9208      	str	r2, [sp, #32]
 8002698:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800269c:	2200      	movs	r2, #0
 800269e:	e18c      	b.n	80029ba <_vfprintf_r+0x582>
 80026a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80026a2:	9907      	ldr	r1, [sp, #28]
 80026a4:	9803      	ldr	r0, [sp, #12]
 80026a6:	f004 f9f5 	bl	8006a94 <__sprint_r>
 80026aa:	2800      	cmp	r0, #0
 80026ac:	f041 8376 	bne.w	8003d9c <_vfprintf_r+0x1964>
 80026b0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80026b4:	e72c      	b.n	8002510 <_vfprintf_r+0xd8>
 80026b6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80026ba:	f003 f8ab 	bl	8005814 <__retarget_lock_acquire_recursive>
 80026be:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80026c2:	b293      	uxth	r3, r2
 80026c4:	e6d8      	b.n	8002478 <_vfprintf_r+0x40>
 80026c6:	bf00      	nop
	...
 80026d0:	4643      	mov	r3, r8
 80026d2:	069f      	lsls	r7, r3, #26
 80026d4:	f140 832f 	bpl.w	8002d36 <_vfprintf_r+0x8fe>
 80026d8:	9c08      	ldr	r4, [sp, #32]
 80026da:	3407      	adds	r4, #7
 80026dc:	f024 0407 	bic.w	r4, r4, #7
 80026e0:	e9d4 0100 	ldrd	r0, r1, [r4]
 80026e4:	f104 0208 	add.w	r2, r4, #8
 80026e8:	9208      	str	r2, [sp, #32]
 80026ea:	4604      	mov	r4, r0
 80026ec:	460d      	mov	r5, r1
 80026ee:	2800      	cmp	r0, #0
 80026f0:	f171 0200 	sbcs.w	r2, r1, #0
 80026f4:	da05      	bge.n	8002702 <_vfprintf_r+0x2ca>
 80026f6:	222d      	movs	r2, #45	; 0x2d
 80026f8:	4264      	negs	r4, r4
 80026fa:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80026fe:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002702:	aa56      	add	r2, sp, #344	; 0x158
 8002704:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002708:	9204      	str	r2, [sp, #16]
 800270a:	f000 84b2 	beq.w	8003072 <_vfprintf_r+0xc3a>
 800270e:	2201      	movs	r2, #1
 8002710:	ea54 0105 	orrs.w	r1, r4, r5
 8002714:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002718:	f040 8159 	bne.w	80029ce <_vfprintf_r+0x596>
 800271c:	f1b9 0f00 	cmp.w	r9, #0
 8002720:	f040 8619 	bne.w	8003356 <_vfprintf_r+0xf1e>
 8002724:	2a00      	cmp	r2, #0
 8002726:	f040 8508 	bne.w	800313a <_vfprintf_r+0xd02>
 800272a:	f013 0301 	ands.w	r3, r3, #1
 800272e:	af56      	add	r7, sp, #344	; 0x158
 8002730:	9309      	str	r3, [sp, #36]	; 0x24
 8002732:	d002      	beq.n	800273a <_vfprintf_r+0x302>
 8002734:	2330      	movs	r3, #48	; 0x30
 8002736:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800273a:	2300      	movs	r3, #0
 800273c:	930a      	str	r3, [sp, #40]	; 0x28
 800273e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002740:	9314      	str	r3, [sp, #80]	; 0x50
 8002742:	9311      	str	r3, [sp, #68]	; 0x44
 8002744:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002746:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800274a:	454b      	cmp	r3, r9
 800274c:	bfb8      	it	lt
 800274e:	464b      	movlt	r3, r9
 8002750:	9304      	str	r3, [sp, #16]
 8002752:	b112      	cbz	r2, 800275a <_vfprintf_r+0x322>
 8002754:	9b04      	ldr	r3, [sp, #16]
 8002756:	3301      	adds	r3, #1
 8002758:	9304      	str	r3, [sp, #16]
 800275a:	f018 0302 	ands.w	r3, r8, #2
 800275e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002760:	d002      	beq.n	8002768 <_vfprintf_r+0x330>
 8002762:	9b04      	ldr	r3, [sp, #16]
 8002764:	3302      	adds	r3, #2
 8002766:	9304      	str	r3, [sp, #16]
 8002768:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 800276c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800276e:	930e      	str	r3, [sp, #56]	; 0x38
 8002770:	d13f      	bne.n	80027f2 <_vfprintf_r+0x3ba>
 8002772:	9b06      	ldr	r3, [sp, #24]
 8002774:	9904      	ldr	r1, [sp, #16]
 8002776:	1a5d      	subs	r5, r3, r1
 8002778:	2d00      	cmp	r5, #0
 800277a:	dd3a      	ble.n	80027f2 <_vfprintf_r+0x3ba>
 800277c:	2d10      	cmp	r5, #16
 800277e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002780:	dd29      	ble.n	80027d6 <_vfprintf_r+0x39e>
 8002782:	4659      	mov	r1, fp
 8002784:	4620      	mov	r0, r4
 8002786:	9620      	str	r6, [sp, #128]	; 0x80
 8002788:	2310      	movs	r3, #16
 800278a:	9c03      	ldr	r4, [sp, #12]
 800278c:	9e07      	ldr	r6, [sp, #28]
 800278e:	46bb      	mov	fp, r7
 8002790:	e004      	b.n	800279c <_vfprintf_r+0x364>
 8002792:	3d10      	subs	r5, #16
 8002794:	2d10      	cmp	r5, #16
 8002796:	f101 0108 	add.w	r1, r1, #8
 800279a:	dd18      	ble.n	80027ce <_vfprintf_r+0x396>
 800279c:	3201      	adds	r2, #1
 800279e:	4fba      	ldr	r7, [pc, #744]	; (8002a88 <_vfprintf_r+0x650>)
 80027a0:	3010      	adds	r0, #16
 80027a2:	2a07      	cmp	r2, #7
 80027a4:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80027a8:	e9c1 7300 	strd	r7, r3, [r1]
 80027ac:	ddf1      	ble.n	8002792 <_vfprintf_r+0x35a>
 80027ae:	aa2a      	add	r2, sp, #168	; 0xa8
 80027b0:	4631      	mov	r1, r6
 80027b2:	4620      	mov	r0, r4
 80027b4:	930c      	str	r3, [sp, #48]	; 0x30
 80027b6:	f004 f96d 	bl	8006a94 <__sprint_r>
 80027ba:	2800      	cmp	r0, #0
 80027bc:	f040 843d 	bne.w	800303a <_vfprintf_r+0xc02>
 80027c0:	3d10      	subs	r5, #16
 80027c2:	2d10      	cmp	r5, #16
 80027c4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80027c8:	a92d      	add	r1, sp, #180	; 0xb4
 80027ca:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80027cc:	dce6      	bgt.n	800279c <_vfprintf_r+0x364>
 80027ce:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80027d0:	465f      	mov	r7, fp
 80027d2:	4604      	mov	r4, r0
 80027d4:	468b      	mov	fp, r1
 80027d6:	3201      	adds	r2, #1
 80027d8:	4bab      	ldr	r3, [pc, #684]	; (8002a88 <_vfprintf_r+0x650>)
 80027da:	442c      	add	r4, r5
 80027dc:	2a07      	cmp	r2, #7
 80027de:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80027e2:	e9cb 3500 	strd	r3, r5, [fp]
 80027e6:	f300 84ff 	bgt.w	80031e8 <_vfprintf_r+0xdb0>
 80027ea:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80027ee:	f10b 0b08 	add.w	fp, fp, #8
 80027f2:	b172      	cbz	r2, 8002812 <_vfprintf_r+0x3da>
 80027f4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80027f6:	3201      	adds	r2, #1
 80027f8:	3401      	adds	r4, #1
 80027fa:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 80027fe:	2101      	movs	r1, #1
 8002800:	2a07      	cmp	r2, #7
 8002802:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002806:	e9cb 0100 	strd	r0, r1, [fp]
 800280a:	f300 8418 	bgt.w	800303e <_vfprintf_r+0xc06>
 800280e:	f10b 0b08 	add.w	fp, fp, #8
 8002812:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002814:	b16b      	cbz	r3, 8002832 <_vfprintf_r+0x3fa>
 8002816:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002818:	3301      	adds	r3, #1
 800281a:	3402      	adds	r4, #2
 800281c:	a923      	add	r1, sp, #140	; 0x8c
 800281e:	2202      	movs	r2, #2
 8002820:	2b07      	cmp	r3, #7
 8002822:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002826:	e9cb 1200 	strd	r1, r2, [fp]
 800282a:	f300 8415 	bgt.w	8003058 <_vfprintf_r+0xc20>
 800282e:	f10b 0b08 	add.w	fp, fp, #8
 8002832:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002834:	2b80      	cmp	r3, #128	; 0x80
 8002836:	f000 8331 	beq.w	8002e9c <_vfprintf_r+0xa64>
 800283a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800283c:	eba9 0503 	sub.w	r5, r9, r3
 8002840:	2d00      	cmp	r5, #0
 8002842:	dd37      	ble.n	80028b4 <_vfprintf_r+0x47c>
 8002844:	2d10      	cmp	r5, #16
 8002846:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002848:	4b90      	ldr	r3, [pc, #576]	; (8002a8c <_vfprintf_r+0x654>)
 800284a:	dd28      	ble.n	800289e <_vfprintf_r+0x466>
 800284c:	4659      	mov	r1, fp
 800284e:	4620      	mov	r0, r4
 8002850:	46bb      	mov	fp, r7
 8002852:	f04f 0910 	mov.w	r9, #16
 8002856:	4637      	mov	r7, r6
 8002858:	461c      	mov	r4, r3
 800285a:	9e07      	ldr	r6, [sp, #28]
 800285c:	e004      	b.n	8002868 <_vfprintf_r+0x430>
 800285e:	3d10      	subs	r5, #16
 8002860:	2d10      	cmp	r5, #16
 8002862:	f101 0108 	add.w	r1, r1, #8
 8002866:	dd15      	ble.n	8002894 <_vfprintf_r+0x45c>
 8002868:	3201      	adds	r2, #1
 800286a:	3010      	adds	r0, #16
 800286c:	2a07      	cmp	r2, #7
 800286e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002872:	e9c1 4900 	strd	r4, r9, [r1]
 8002876:	ddf2      	ble.n	800285e <_vfprintf_r+0x426>
 8002878:	aa2a      	add	r2, sp, #168	; 0xa8
 800287a:	4631      	mov	r1, r6
 800287c:	9803      	ldr	r0, [sp, #12]
 800287e:	f004 f909 	bl	8006a94 <__sprint_r>
 8002882:	2800      	cmp	r0, #0
 8002884:	f040 83d9 	bne.w	800303a <_vfprintf_r+0xc02>
 8002888:	3d10      	subs	r5, #16
 800288a:	2d10      	cmp	r5, #16
 800288c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002890:	a92d      	add	r1, sp, #180	; 0xb4
 8002892:	dce9      	bgt.n	8002868 <_vfprintf_r+0x430>
 8002894:	463e      	mov	r6, r7
 8002896:	4623      	mov	r3, r4
 8002898:	465f      	mov	r7, fp
 800289a:	4604      	mov	r4, r0
 800289c:	468b      	mov	fp, r1
 800289e:	3201      	adds	r2, #1
 80028a0:	442c      	add	r4, r5
 80028a2:	2a07      	cmp	r2, #7
 80028a4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80028a8:	e9cb 3500 	strd	r3, r5, [fp]
 80028ac:	f300 83ef 	bgt.w	800308e <_vfprintf_r+0xc56>
 80028b0:	f10b 0b08 	add.w	fp, fp, #8
 80028b4:	f418 7f80 	tst.w	r8, #256	; 0x100
 80028b8:	f040 8280 	bne.w	8002dbc <_vfprintf_r+0x984>
 80028bc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80028be:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80028c0:	f8cb 7000 	str.w	r7, [fp]
 80028c4:	3301      	adds	r3, #1
 80028c6:	4414      	add	r4, r2
 80028c8:	2b07      	cmp	r3, #7
 80028ca:	942c      	str	r4, [sp, #176]	; 0xb0
 80028cc:	f8cb 2004 	str.w	r2, [fp, #4]
 80028d0:	932b      	str	r3, [sp, #172]	; 0xac
 80028d2:	f300 8392 	bgt.w	8002ffa <_vfprintf_r+0xbc2>
 80028d6:	f10b 0b08 	add.w	fp, fp, #8
 80028da:	f018 0f04 	tst.w	r8, #4
 80028de:	d03b      	beq.n	8002958 <_vfprintf_r+0x520>
 80028e0:	9b06      	ldr	r3, [sp, #24]
 80028e2:	9a04      	ldr	r2, [sp, #16]
 80028e4:	1a9d      	subs	r5, r3, r2
 80028e6:	2d00      	cmp	r5, #0
 80028e8:	dd36      	ble.n	8002958 <_vfprintf_r+0x520>
 80028ea:	2d10      	cmp	r5, #16
 80028ec:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80028ee:	dd21      	ble.n	8002934 <_vfprintf_r+0x4fc>
 80028f0:	2610      	movs	r6, #16
 80028f2:	9f03      	ldr	r7, [sp, #12]
 80028f4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 80028f8:	e004      	b.n	8002904 <_vfprintf_r+0x4cc>
 80028fa:	3d10      	subs	r5, #16
 80028fc:	2d10      	cmp	r5, #16
 80028fe:	f10b 0b08 	add.w	fp, fp, #8
 8002902:	dd17      	ble.n	8002934 <_vfprintf_r+0x4fc>
 8002904:	3301      	adds	r3, #1
 8002906:	4a60      	ldr	r2, [pc, #384]	; (8002a88 <_vfprintf_r+0x650>)
 8002908:	3410      	adds	r4, #16
 800290a:	2b07      	cmp	r3, #7
 800290c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002910:	e9cb 2600 	strd	r2, r6, [fp]
 8002914:	ddf1      	ble.n	80028fa <_vfprintf_r+0x4c2>
 8002916:	aa2a      	add	r2, sp, #168	; 0xa8
 8002918:	4641      	mov	r1, r8
 800291a:	4638      	mov	r0, r7
 800291c:	f004 f8ba 	bl	8006a94 <__sprint_r>
 8002920:	2800      	cmp	r0, #0
 8002922:	f040 856c 	bne.w	80033fe <_vfprintf_r+0xfc6>
 8002926:	3d10      	subs	r5, #16
 8002928:	2d10      	cmp	r5, #16
 800292a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800292e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002932:	dce7      	bgt.n	8002904 <_vfprintf_r+0x4cc>
 8002934:	3301      	adds	r3, #1
 8002936:	4a54      	ldr	r2, [pc, #336]	; (8002a88 <_vfprintf_r+0x650>)
 8002938:	442c      	add	r4, r5
 800293a:	2b07      	cmp	r3, #7
 800293c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002940:	e9cb 2500 	strd	r2, r5, [fp]
 8002944:	dd08      	ble.n	8002958 <_vfprintf_r+0x520>
 8002946:	aa2a      	add	r2, sp, #168	; 0xa8
 8002948:	9907      	ldr	r1, [sp, #28]
 800294a:	9803      	ldr	r0, [sp, #12]
 800294c:	f004 f8a2 	bl	8006a94 <__sprint_r>
 8002950:	2800      	cmp	r0, #0
 8002952:	f040 82e9 	bne.w	8002f28 <_vfprintf_r+0xaf0>
 8002956:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002958:	9904      	ldr	r1, [sp, #16]
 800295a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 800295e:	428a      	cmp	r2, r1
 8002960:	bfac      	ite	ge
 8002962:	189b      	addge	r3, r3, r2
 8002964:	185b      	addlt	r3, r3, r1
 8002966:	9305      	str	r3, [sp, #20]
 8002968:	2c00      	cmp	r4, #0
 800296a:	f040 82d5 	bne.w	8002f18 <_vfprintf_r+0xae0>
 800296e:	2300      	movs	r3, #0
 8002970:	932b      	str	r3, [sp, #172]	; 0xac
 8002972:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002974:	b11b      	cbz	r3, 800297e <_vfprintf_r+0x546>
 8002976:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002978:	9803      	ldr	r0, [sp, #12]
 800297a:	f002 fc9d 	bl	80052b8 <_free_r>
 800297e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002982:	4657      	mov	r7, sl
 8002984:	783b      	ldrb	r3, [r7, #0]
 8002986:	2b00      	cmp	r3, #0
 8002988:	f47f ada7 	bne.w	80024da <_vfprintf_r+0xa2>
 800298c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 800298e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002992:	2b00      	cmp	r3, #0
 8002994:	f041 80e7 	bne.w	8003b66 <_vfprintf_r+0x172e>
 8002998:	2300      	movs	r3, #0
 800299a:	932b      	str	r3, [sp, #172]	; 0xac
 800299c:	e2cb      	b.n	8002f36 <_vfprintf_r+0xafe>
 800299e:	4643      	mov	r3, r8
 80029a0:	069a      	lsls	r2, r3, #26
 80029a2:	f140 814e 	bpl.w	8002c42 <_vfprintf_r+0x80a>
 80029a6:	9c08      	ldr	r4, [sp, #32]
 80029a8:	3407      	adds	r4, #7
 80029aa:	f024 0207 	bic.w	r2, r4, #7
 80029ae:	f102 0108 	add.w	r1, r2, #8
 80029b2:	e9d2 4500 	ldrd	r4, r5, [r2]
 80029b6:	9108      	str	r1, [sp, #32]
 80029b8:	2201      	movs	r2, #1
 80029ba:	2100      	movs	r1, #0
 80029bc:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 80029c0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80029c4:	a956      	add	r1, sp, #344	; 0x158
 80029c6:	9104      	str	r1, [sp, #16]
 80029c8:	f47f aea2 	bne.w	8002710 <_vfprintf_r+0x2d8>
 80029cc:	4698      	mov	r8, r3
 80029ce:	2a01      	cmp	r2, #1
 80029d0:	f000 8350 	beq.w	8003074 <_vfprintf_r+0xc3c>
 80029d4:	2a02      	cmp	r2, #2
 80029d6:	f000 831b 	beq.w	8003010 <_vfprintf_r+0xbd8>
 80029da:	a956      	add	r1, sp, #344	; 0x158
 80029dc:	e000      	b.n	80029e0 <_vfprintf_r+0x5a8>
 80029de:	4639      	mov	r1, r7
 80029e0:	08e2      	lsrs	r2, r4, #3
 80029e2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 80029e6:	08e8      	lsrs	r0, r5, #3
 80029e8:	f004 0307 	and.w	r3, r4, #7
 80029ec:	4605      	mov	r5, r0
 80029ee:	4614      	mov	r4, r2
 80029f0:	3330      	adds	r3, #48	; 0x30
 80029f2:	ea54 0205 	orrs.w	r2, r4, r5
 80029f6:	f801 3c01 	strb.w	r3, [r1, #-1]
 80029fa:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 80029fe:	d1ee      	bne.n	80029de <_vfprintf_r+0x5a6>
 8002a00:	f018 0f01 	tst.w	r8, #1
 8002a04:	f000 8314 	beq.w	8003030 <_vfprintf_r+0xbf8>
 8002a08:	2b30      	cmp	r3, #48	; 0x30
 8002a0a:	f000 8311 	beq.w	8003030 <_vfprintf_r+0xbf8>
 8002a0e:	9a04      	ldr	r2, [sp, #16]
 8002a10:	3902      	subs	r1, #2
 8002a12:	2330      	movs	r3, #48	; 0x30
 8002a14:	1a52      	subs	r2, r2, r1
 8002a16:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002a1a:	9209      	str	r2, [sp, #36]	; 0x24
 8002a1c:	460f      	mov	r7, r1
 8002a1e:	e68c      	b.n	800273a <_vfprintf_r+0x302>
 8002a20:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a24:	2200      	movs	r2, #0
 8002a26:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002a2a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002a2e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002a32:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a36:	2b09      	cmp	r3, #9
 8002a38:	d9f5      	bls.n	8002a26 <_vfprintf_r+0x5ee>
 8002a3a:	9206      	str	r2, [sp, #24]
 8002a3c:	e57c      	b.n	8002538 <_vfprintf_r+0x100>
 8002a3e:	4b14      	ldr	r3, [pc, #80]	; (8002a90 <_vfprintf_r+0x658>)
 8002a40:	9317      	str	r3, [sp, #92]	; 0x5c
 8002a42:	f018 0f20 	tst.w	r8, #32
 8002a46:	f000 8114 	beq.w	8002c72 <_vfprintf_r+0x83a>
 8002a4a:	9c08      	ldr	r4, [sp, #32]
 8002a4c:	3407      	adds	r4, #7
 8002a4e:	f024 0307 	bic.w	r3, r4, #7
 8002a52:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002a56:	f103 0208 	add.w	r2, r3, #8
 8002a5a:	9208      	str	r2, [sp, #32]
 8002a5c:	f018 0f01 	tst.w	r8, #1
 8002a60:	d009      	beq.n	8002a76 <_vfprintf_r+0x63e>
 8002a62:	ea54 0305 	orrs.w	r3, r4, r5
 8002a66:	d006      	beq.n	8002a76 <_vfprintf_r+0x63e>
 8002a68:	2330      	movs	r3, #48	; 0x30
 8002a6a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002a6e:	f048 0802 	orr.w	r8, r8, #2
 8002a72:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002a76:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002a7a:	2202      	movs	r2, #2
 8002a7c:	e79d      	b.n	80029ba <_vfprintf_r+0x582>
 8002a7e:	f048 0801 	orr.w	r8, r8, #1
 8002a82:	f89a 6000 	ldrb.w	r6, [sl]
 8002a86:	e555      	b.n	8002534 <_vfprintf_r+0xfc>
 8002a88:	08007178 	.word	0x08007178
 8002a8c:	08007188 	.word	0x08007188
 8002a90:	08007144 	.word	0x08007144
 8002a94:	9e03      	ldr	r6, [sp, #12]
 8002a96:	4630      	mov	r0, r6
 8002a98:	f002 feaa 	bl	80057f0 <_localeconv_r>
 8002a9c:	6843      	ldr	r3, [r0, #4]
 8002a9e:	9318      	str	r3, [sp, #96]	; 0x60
 8002aa0:	4618      	mov	r0, r3
 8002aa2:	f7fd fdcd 	bl	8000640 <strlen>
 8002aa6:	901b      	str	r0, [sp, #108]	; 0x6c
 8002aa8:	4604      	mov	r4, r0
 8002aaa:	4630      	mov	r0, r6
 8002aac:	f002 fea0 	bl	80057f0 <_localeconv_r>
 8002ab0:	6883      	ldr	r3, [r0, #8]
 8002ab2:	931a      	str	r3, [sp, #104]	; 0x68
 8002ab4:	2c00      	cmp	r4, #0
 8002ab6:	f43f adb8 	beq.w	800262a <_vfprintf_r+0x1f2>
 8002aba:	f89a 6000 	ldrb.w	r6, [sl]
 8002abe:	2b00      	cmp	r3, #0
 8002ac0:	f43f ad38 	beq.w	8002534 <_vfprintf_r+0xfc>
 8002ac4:	781b      	ldrb	r3, [r3, #0]
 8002ac6:	2b00      	cmp	r3, #0
 8002ac8:	f43f ad34 	beq.w	8002534 <_vfprintf_r+0xfc>
 8002acc:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002ad0:	e530      	b.n	8002534 <_vfprintf_r+0xfc>
 8002ad2:	9b08      	ldr	r3, [sp, #32]
 8002ad4:	f89a 6000 	ldrb.w	r6, [sl]
 8002ad8:	681a      	ldr	r2, [r3, #0]
 8002ada:	9206      	str	r2, [sp, #24]
 8002adc:	2a00      	cmp	r2, #0
 8002ade:	f103 0304 	add.w	r3, r3, #4
 8002ae2:	f2c0 8697 	blt.w	8003814 <_vfprintf_r+0x13dc>
 8002ae6:	9308      	str	r3, [sp, #32]
 8002ae8:	e524      	b.n	8002534 <_vfprintf_r+0xfc>
 8002aea:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002aee:	f89a 6000 	ldrb.w	r6, [sl]
 8002af2:	e51f      	b.n	8002534 <_vfprintf_r+0xfc>
 8002af4:	f89a 6000 	ldrb.w	r6, [sl]
 8002af8:	f048 0804 	orr.w	r8, r8, #4
 8002afc:	e51a      	b.n	8002534 <_vfprintf_r+0xfc>
 8002afe:	f89a 6000 	ldrb.w	r6, [sl]
 8002b02:	2e2a      	cmp	r6, #42	; 0x2a
 8002b04:	f10a 0201 	add.w	r2, sl, #1
 8002b08:	f001 81b0 	beq.w	8003e6c <_vfprintf_r+0x1a34>
 8002b0c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b10:	2b09      	cmp	r3, #9
 8002b12:	4692      	mov	sl, r2
 8002b14:	f04f 0900 	mov.w	r9, #0
 8002b18:	f63f ad0e 	bhi.w	8002538 <_vfprintf_r+0x100>
 8002b1c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002b20:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002b24:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002b28:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b2c:	2b09      	cmp	r3, #9
 8002b2e:	d9f5      	bls.n	8002b1c <_vfprintf_r+0x6e4>
 8002b30:	e502      	b.n	8002538 <_vfprintf_r+0x100>
 8002b32:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002b36:	f89a 6000 	ldrb.w	r6, [sl]
 8002b3a:	e4fb      	b.n	8002534 <_vfprintf_r+0xfc>
 8002b3c:	9c08      	ldr	r4, [sp, #32]
 8002b3e:	3407      	adds	r4, #7
 8002b40:	f024 0407 	bic.w	r4, r4, #7
 8002b44:	ed94 7b00 	vldr	d7, [r4]
 8002b48:	ec52 1b17 	vmov	r1, r2, d7
 8002b4c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002b50:	931d      	str	r3, [sp, #116]	; 0x74
 8002b52:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002b56:	3408      	adds	r4, #8
 8002b58:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002b5c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002b60:	4bba      	ldr	r3, [pc, #744]	; (8002e4c <_vfprintf_r+0xa14>)
 8002b62:	9408      	str	r4, [sp, #32]
 8002b64:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002b68:	f7fe fa80 	bl	800106c <__aeabi_dcmpun>
 8002b6c:	2800      	cmp	r0, #0
 8002b6e:	f040 846f 	bne.w	8003450 <_vfprintf_r+0x1018>
 8002b72:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002b76:	4bb5      	ldr	r3, [pc, #724]	; (8002e4c <_vfprintf_r+0xa14>)
 8002b78:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002b7c:	f7fe fa58 	bl	8001030 <__aeabi_dcmple>
 8002b80:	2800      	cmp	r0, #0
 8002b82:	f040 8465 	bne.w	8003450 <_vfprintf_r+0x1018>
 8002b86:	2200      	movs	r2, #0
 8002b88:	2300      	movs	r3, #0
 8002b8a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002b8e:	f7fe fa45 	bl	800101c <__aeabi_dcmplt>
 8002b92:	2800      	cmp	r0, #0
 8002b94:	f040 855b 	bne.w	800364e <_vfprintf_r+0x1216>
 8002b98:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002b9c:	4fac      	ldr	r7, [pc, #688]	; (8002e50 <_vfprintf_r+0xa18>)
 8002b9e:	4bad      	ldr	r3, [pc, #692]	; (8002e54 <_vfprintf_r+0xa1c>)
 8002ba0:	2000      	movs	r0, #0
 8002ba2:	2103      	movs	r1, #3
 8002ba4:	9104      	str	r1, [sp, #16]
 8002ba6:	900a      	str	r0, [sp, #40]	; 0x28
 8002ba8:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002bac:	2e47      	cmp	r6, #71	; 0x47
 8002bae:	bfd8      	it	le
 8002bb0:	461f      	movle	r7, r3
 8002bb2:	9109      	str	r1, [sp, #36]	; 0x24
 8002bb4:	4681      	mov	r9, r0
 8002bb6:	900f      	str	r0, [sp, #60]	; 0x3c
 8002bb8:	9014      	str	r0, [sp, #80]	; 0x50
 8002bba:	9011      	str	r0, [sp, #68]	; 0x44
 8002bbc:	e5c9      	b.n	8002752 <_vfprintf_r+0x31a>
 8002bbe:	9808      	ldr	r0, [sp, #32]
 8002bc0:	2300      	movs	r3, #0
 8002bc2:	6801      	ldr	r1, [r0, #0]
 8002bc4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002bc8:	461a      	mov	r2, r3
 8002bca:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002bce:	2301      	movs	r3, #1
 8002bd0:	1d01      	adds	r1, r0, #4
 8002bd2:	9304      	str	r3, [sp, #16]
 8002bd4:	920a      	str	r2, [sp, #40]	; 0x28
 8002bd6:	4691      	mov	r9, r2
 8002bd8:	920f      	str	r2, [sp, #60]	; 0x3c
 8002bda:	9214      	str	r2, [sp, #80]	; 0x50
 8002bdc:	9211      	str	r2, [sp, #68]	; 0x44
 8002bde:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002be2:	af3d      	add	r7, sp, #244	; 0xf4
 8002be4:	e5b9      	b.n	800275a <_vfprintf_r+0x322>
 8002be6:	9b08      	ldr	r3, [sp, #32]
 8002be8:	681f      	ldr	r7, [r3, #0]
 8002bea:	2500      	movs	r5, #0
 8002bec:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002bf0:	1d1c      	adds	r4, r3, #4
 8002bf2:	2f00      	cmp	r7, #0
 8002bf4:	f000 8639 	beq.w	800386a <_vfprintf_r+0x1432>
 8002bf8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002bfc:	f000 8711 	beq.w	8003a22 <_vfprintf_r+0x15ea>
 8002c00:	464a      	mov	r2, r9
 8002c02:	4629      	mov	r1, r5
 8002c04:	4638      	mov	r0, r7
 8002c06:	f7fd fd8b 	bl	8000720 <memchr>
 8002c0a:	900a      	str	r0, [sp, #40]	; 0x28
 8002c0c:	2800      	cmp	r0, #0
 8002c0e:	f000 85e7 	beq.w	80037e0 <_vfprintf_r+0x13a8>
 8002c12:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002c14:	1bdb      	subs	r3, r3, r7
 8002c16:	9309      	str	r3, [sp, #36]	; 0x24
 8002c18:	46a9      	mov	r9, r5
 8002c1a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002c1e:	9408      	str	r4, [sp, #32]
 8002c20:	9304      	str	r3, [sp, #16]
 8002c22:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002c26:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002c2a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002c2e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002c32:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002c36:	e58c      	b.n	8002752 <_vfprintf_r+0x31a>
 8002c38:	f048 0310 	orr.w	r3, r8, #16
 8002c3c:	069a      	lsls	r2, r3, #26
 8002c3e:	f53f aeb2 	bmi.w	80029a6 <_vfprintf_r+0x56e>
 8002c42:	9a08      	ldr	r2, [sp, #32]
 8002c44:	06df      	lsls	r7, r3, #27
 8002c46:	f102 0104 	add.w	r1, r2, #4
 8002c4a:	f100 837e 	bmi.w	800334a <_vfprintf_r+0xf12>
 8002c4e:	065d      	lsls	r5, r3, #25
 8002c50:	9a08      	ldr	r2, [sp, #32]
 8002c52:	f100 84e4 	bmi.w	800361e <_vfprintf_r+0x11e6>
 8002c56:	059c      	lsls	r4, r3, #22
 8002c58:	f140 8377 	bpl.w	800334a <_vfprintf_r+0xf12>
 8002c5c:	7814      	ldrb	r4, [r2, #0]
 8002c5e:	9108      	str	r1, [sp, #32]
 8002c60:	2500      	movs	r5, #0
 8002c62:	2201      	movs	r2, #1
 8002c64:	e6a9      	b.n	80029ba <_vfprintf_r+0x582>
 8002c66:	4b7c      	ldr	r3, [pc, #496]	; (8002e58 <_vfprintf_r+0xa20>)
 8002c68:	9317      	str	r3, [sp, #92]	; 0x5c
 8002c6a:	f018 0f20 	tst.w	r8, #32
 8002c6e:	f47f aeec 	bne.w	8002a4a <_vfprintf_r+0x612>
 8002c72:	9a08      	ldr	r2, [sp, #32]
 8002c74:	f018 0f10 	tst.w	r8, #16
 8002c78:	f102 0304 	add.w	r3, r2, #4
 8002c7c:	f040 8354 	bne.w	8003328 <_vfprintf_r+0xef0>
 8002c80:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002c84:	9a08      	ldr	r2, [sp, #32]
 8002c86:	f040 84d0 	bne.w	800362a <_vfprintf_r+0x11f2>
 8002c8a:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002c8e:	f000 834b 	beq.w	8003328 <_vfprintf_r+0xef0>
 8002c92:	7814      	ldrb	r4, [r2, #0]
 8002c94:	9308      	str	r3, [sp, #32]
 8002c96:	2500      	movs	r5, #0
 8002c98:	e6e0      	b.n	8002a5c <_vfprintf_r+0x624>
 8002c9a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002c9e:	f89a 6000 	ldrb.w	r6, [sl]
 8002ca2:	2b00      	cmp	r3, #0
 8002ca4:	f47f ac46 	bne.w	8002534 <_vfprintf_r+0xfc>
 8002ca8:	2320      	movs	r3, #32
 8002caa:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002cae:	e441      	b.n	8002534 <_vfprintf_r+0xfc>
 8002cb0:	f89a 6000 	ldrb.w	r6, [sl]
 8002cb4:	2e6c      	cmp	r6, #108	; 0x6c
 8002cb6:	bf03      	ittte	eq
 8002cb8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002cbc:	f048 0820 	orreq.w	r8, r8, #32
 8002cc0:	f10a 0a01 	addeq.w	sl, sl, #1
 8002cc4:	f048 0810 	orrne.w	r8, r8, #16
 8002cc8:	e434      	b.n	8002534 <_vfprintf_r+0xfc>
 8002cca:	9a08      	ldr	r2, [sp, #32]
 8002ccc:	f018 0f20 	tst.w	r8, #32
 8002cd0:	f852 3b04 	ldr.w	r3, [r2], #4
 8002cd4:	9208      	str	r2, [sp, #32]
 8002cd6:	f000 83a1 	beq.w	800341c <_vfprintf_r+0xfe4>
 8002cda:	9a05      	ldr	r2, [sp, #20]
 8002cdc:	4610      	mov	r0, r2
 8002cde:	17d1      	asrs	r1, r2, #31
 8002ce0:	e9c3 0100 	strd	r0, r1, [r3]
 8002ce4:	4657      	mov	r7, sl
 8002ce6:	e64d      	b.n	8002984 <_vfprintf_r+0x54c>
 8002ce8:	f89a 6000 	ldrb.w	r6, [sl]
 8002cec:	2e68      	cmp	r6, #104	; 0x68
 8002cee:	bf03      	ittte	eq
 8002cf0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002cf4:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002cf8:	f10a 0a01 	addeq.w	sl, sl, #1
 8002cfc:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002d00:	e418      	b.n	8002534 <_vfprintf_r+0xfc>
 8002d02:	9908      	ldr	r1, [sp, #32]
 8002d04:	4b55      	ldr	r3, [pc, #340]	; (8002e5c <_vfprintf_r+0xa24>)
 8002d06:	680c      	ldr	r4, [r1, #0]
 8002d08:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d0a:	f647 0230 	movw	r2, #30768	; 0x7830
 8002d0e:	3104      	adds	r1, #4
 8002d10:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002d14:	f048 0302 	orr.w	r3, r8, #2
 8002d18:	9108      	str	r1, [sp, #32]
 8002d1a:	2500      	movs	r5, #0
 8002d1c:	2202      	movs	r2, #2
 8002d1e:	2678      	movs	r6, #120	; 0x78
 8002d20:	e64b      	b.n	80029ba <_vfprintf_r+0x582>
 8002d22:	f048 0808 	orr.w	r8, r8, #8
 8002d26:	f89a 6000 	ldrb.w	r6, [sl]
 8002d2a:	e403      	b.n	8002534 <_vfprintf_r+0xfc>
 8002d2c:	f048 0310 	orr.w	r3, r8, #16
 8002d30:	069f      	lsls	r7, r3, #26
 8002d32:	f53f acd1 	bmi.w	80026d8 <_vfprintf_r+0x2a0>
 8002d36:	9908      	ldr	r1, [sp, #32]
 8002d38:	06dd      	lsls	r5, r3, #27
 8002d3a:	f101 0204 	add.w	r2, r1, #4
 8002d3e:	f100 82fd 	bmi.w	800333c <_vfprintf_r+0xf04>
 8002d42:	065c      	lsls	r4, r3, #25
 8002d44:	9908      	ldr	r1, [sp, #32]
 8002d46:	f100 8475 	bmi.w	8003634 <_vfprintf_r+0x11fc>
 8002d4a:	0598      	lsls	r0, r3, #22
 8002d4c:	f140 82f6 	bpl.w	800333c <_vfprintf_r+0xf04>
 8002d50:	f991 4000 	ldrsb.w	r4, [r1]
 8002d54:	9208      	str	r2, [sp, #32]
 8002d56:	17e5      	asrs	r5, r4, #31
 8002d58:	4620      	mov	r0, r4
 8002d5a:	4629      	mov	r1, r5
 8002d5c:	e4c7      	b.n	80026ee <_vfprintf_r+0x2b6>
 8002d5e:	9a08      	ldr	r2, [sp, #32]
 8002d60:	f018 0f10 	tst.w	r8, #16
 8002d64:	f102 0304 	add.w	r3, r2, #4
 8002d68:	f040 82e3 	bne.w	8003332 <_vfprintf_r+0xefa>
 8002d6c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002d70:	9a08      	ldr	r2, [sp, #32]
 8002d72:	f040 8467 	bne.w	8003644 <_vfprintf_r+0x120c>
 8002d76:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002d7a:	f000 82da 	beq.w	8003332 <_vfprintf_r+0xefa>
 8002d7e:	7814      	ldrb	r4, [r2, #0]
 8002d80:	9308      	str	r3, [sp, #32]
 8002d82:	2500      	movs	r5, #0
 8002d84:	e488      	b.n	8002698 <_vfprintf_r+0x260>
 8002d86:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002d8a:	f002 fd45 	bl	8005818 <__retarget_lock_release_recursive>
 8002d8e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002d92:	9305      	str	r3, [sp, #20]
 8002d94:	e443      	b.n	800261e <_vfprintf_r+0x1e6>
 8002d96:	2e00      	cmp	r6, #0
 8002d98:	f43f adf8 	beq.w	800298c <_vfprintf_r+0x554>
 8002d9c:	2300      	movs	r3, #0
 8002d9e:	2101      	movs	r1, #1
 8002da0:	461a      	mov	r2, r3
 8002da2:	9104      	str	r1, [sp, #16]
 8002da4:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002da8:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002dac:	930a      	str	r3, [sp, #40]	; 0x28
 8002dae:	4699      	mov	r9, r3
 8002db0:	930f      	str	r3, [sp, #60]	; 0x3c
 8002db2:	9314      	str	r3, [sp, #80]	; 0x50
 8002db4:	9311      	str	r3, [sp, #68]	; 0x44
 8002db6:	9109      	str	r1, [sp, #36]	; 0x24
 8002db8:	af3d      	add	r7, sp, #244	; 0xf4
 8002dba:	e4ce      	b.n	800275a <_vfprintf_r+0x322>
 8002dbc:	2e65      	cmp	r6, #101	; 0x65
 8002dbe:	f340 80ca 	ble.w	8002f56 <_vfprintf_r+0xb1e>
 8002dc2:	2200      	movs	r2, #0
 8002dc4:	2300      	movs	r3, #0
 8002dc6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002dca:	f7fe f91d 	bl	8001008 <__aeabi_dcmpeq>
 8002dce:	2800      	cmp	r0, #0
 8002dd0:	f000 8169 	beq.w	80030a6 <_vfprintf_r+0xc6e>
 8002dd4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002dd6:	4a22      	ldr	r2, [pc, #136]	; (8002e60 <_vfprintf_r+0xa28>)
 8002dd8:	f8cb 2000 	str.w	r2, [fp]
 8002ddc:	3301      	adds	r3, #1
 8002dde:	3401      	adds	r4, #1
 8002de0:	2201      	movs	r2, #1
 8002de2:	2b07      	cmp	r3, #7
 8002de4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002de8:	f8cb 2004 	str.w	r2, [fp, #4]
 8002dec:	f300 8406 	bgt.w	80035fc <_vfprintf_r+0x11c4>
 8002df0:	f10b 0b08 	add.w	fp, fp, #8
 8002df4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002df6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002df8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002dfa:	4293      	cmp	r3, r2
 8002dfc:	db03      	blt.n	8002e06 <_vfprintf_r+0x9ce>
 8002dfe:	f018 0f01 	tst.w	r8, #1
 8002e02:	f43f ad6a 	beq.w	80028da <_vfprintf_r+0x4a2>
 8002e06:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e08:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002e0a:	f8cb 2000 	str.w	r2, [fp]
 8002e0e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002e10:	f8cb 2004 	str.w	r2, [fp, #4]
 8002e14:	3301      	adds	r3, #1
 8002e16:	4414      	add	r4, r2
 8002e18:	2b07      	cmp	r3, #7
 8002e1a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e1e:	f300 8517 	bgt.w	8003850 <_vfprintf_r+0x1418>
 8002e22:	f10b 0b08 	add.w	fp, fp, #8
 8002e26:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002e28:	1e5d      	subs	r5, r3, #1
 8002e2a:	2d00      	cmp	r5, #0
 8002e2c:	f77f ad55 	ble.w	80028da <_vfprintf_r+0x4a2>
 8002e30:	2d10      	cmp	r5, #16
 8002e32:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e34:	4b0b      	ldr	r3, [pc, #44]	; (8002e64 <_vfprintf_r+0xa2c>)
 8002e36:	f340 82e7 	ble.w	8003408 <_vfprintf_r+0xfd0>
 8002e3a:	4619      	mov	r1, r3
 8002e3c:	2610      	movs	r6, #16
 8002e3e:	4623      	mov	r3, r4
 8002e40:	9f03      	ldr	r7, [sp, #12]
 8002e42:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002e46:	460c      	mov	r4, r1
 8002e48:	e014      	b.n	8002e74 <_vfprintf_r+0xa3c>
 8002e4a:	bf00      	nop
 8002e4c:	7fefffff 	.word	0x7fefffff
 8002e50:	08007138 	.word	0x08007138
 8002e54:	08007134 	.word	0x08007134
 8002e58:	08007158 	.word	0x08007158
 8002e5c:	08007144 	.word	0x08007144
 8002e60:	08007174 	.word	0x08007174
 8002e64:	08007188 	.word	0x08007188
 8002e68:	f10b 0b08 	add.w	fp, fp, #8
 8002e6c:	3d10      	subs	r5, #16
 8002e6e:	2d10      	cmp	r5, #16
 8002e70:	f340 82c7 	ble.w	8003402 <_vfprintf_r+0xfca>
 8002e74:	3201      	adds	r2, #1
 8002e76:	3310      	adds	r3, #16
 8002e78:	2a07      	cmp	r2, #7
 8002e7a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002e7e:	e9cb 4600 	strd	r4, r6, [fp]
 8002e82:	ddf1      	ble.n	8002e68 <_vfprintf_r+0xa30>
 8002e84:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e86:	4649      	mov	r1, r9
 8002e88:	4638      	mov	r0, r7
 8002e8a:	f003 fe03 	bl	8006a94 <__sprint_r>
 8002e8e:	2800      	cmp	r0, #0
 8002e90:	d14c      	bne.n	8002f2c <_vfprintf_r+0xaf4>
 8002e92:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002e96:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002e9a:	e7e7      	b.n	8002e6c <_vfprintf_r+0xa34>
 8002e9c:	9b06      	ldr	r3, [sp, #24]
 8002e9e:	9a04      	ldr	r2, [sp, #16]
 8002ea0:	1a9d      	subs	r5, r3, r2
 8002ea2:	2d00      	cmp	r5, #0
 8002ea4:	f77f acc9 	ble.w	800283a <_vfprintf_r+0x402>
 8002ea8:	2d10      	cmp	r5, #16
 8002eaa:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002eac:	4bbc      	ldr	r3, [pc, #752]	; (80031a0 <_vfprintf_r+0xd68>)
 8002eae:	dd27      	ble.n	8002f00 <_vfprintf_r+0xac8>
 8002eb0:	4659      	mov	r1, fp
 8002eb2:	4620      	mov	r0, r4
 8002eb4:	46bb      	mov	fp, r7
 8002eb6:	461c      	mov	r4, r3
 8002eb8:	4637      	mov	r7, r6
 8002eba:	9e07      	ldr	r6, [sp, #28]
 8002ebc:	e004      	b.n	8002ec8 <_vfprintf_r+0xa90>
 8002ebe:	3d10      	subs	r5, #16
 8002ec0:	2d10      	cmp	r5, #16
 8002ec2:	f101 0108 	add.w	r1, r1, #8
 8002ec6:	dd16      	ble.n	8002ef6 <_vfprintf_r+0xabe>
 8002ec8:	3201      	adds	r2, #1
 8002eca:	3010      	adds	r0, #16
 8002ecc:	2310      	movs	r3, #16
 8002ece:	2a07      	cmp	r2, #7
 8002ed0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002ed4:	600c      	str	r4, [r1, #0]
 8002ed6:	604b      	str	r3, [r1, #4]
 8002ed8:	ddf1      	ble.n	8002ebe <_vfprintf_r+0xa86>
 8002eda:	aa2a      	add	r2, sp, #168	; 0xa8
 8002edc:	4631      	mov	r1, r6
 8002ede:	9803      	ldr	r0, [sp, #12]
 8002ee0:	f003 fdd8 	bl	8006a94 <__sprint_r>
 8002ee4:	2800      	cmp	r0, #0
 8002ee6:	f040 80a8 	bne.w	800303a <_vfprintf_r+0xc02>
 8002eea:	3d10      	subs	r5, #16
 8002eec:	2d10      	cmp	r5, #16
 8002eee:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002ef2:	a92d      	add	r1, sp, #180	; 0xb4
 8002ef4:	dce8      	bgt.n	8002ec8 <_vfprintf_r+0xa90>
 8002ef6:	463e      	mov	r6, r7
 8002ef8:	4623      	mov	r3, r4
 8002efa:	465f      	mov	r7, fp
 8002efc:	4604      	mov	r4, r0
 8002efe:	468b      	mov	fp, r1
 8002f00:	3201      	adds	r2, #1
 8002f02:	442c      	add	r4, r5
 8002f04:	2a07      	cmp	r2, #7
 8002f06:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002f0a:	e9cb 3500 	strd	r3, r5, [fp]
 8002f0e:	f300 8292 	bgt.w	8003436 <_vfprintf_r+0xffe>
 8002f12:	f10b 0b08 	add.w	fp, fp, #8
 8002f16:	e490      	b.n	800283a <_vfprintf_r+0x402>
 8002f18:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f1a:	9907      	ldr	r1, [sp, #28]
 8002f1c:	9803      	ldr	r0, [sp, #12]
 8002f1e:	f003 fdb9 	bl	8006a94 <__sprint_r>
 8002f22:	2800      	cmp	r0, #0
 8002f24:	f43f ad23 	beq.w	800296e <_vfprintf_r+0x536>
 8002f28:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002f2c:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002f2e:	b111      	cbz	r1, 8002f36 <_vfprintf_r+0xafe>
 8002f30:	9803      	ldr	r0, [sp, #12]
 8002f32:	f002 f9c1 	bl	80052b8 <_free_r>
 8002f36:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002f3a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002f3e:	07d0      	lsls	r0, r2, #31
 8002f40:	d402      	bmi.n	8002f48 <_vfprintf_r+0xb10>
 8002f42:	0599      	lsls	r1, r3, #22
 8002f44:	f140 81d0 	bpl.w	80032e8 <_vfprintf_r+0xeb0>
 8002f48:	065a      	lsls	r2, r3, #25
 8002f4a:	f53f ab65 	bmi.w	8002618 <_vfprintf_r+0x1e0>
 8002f4e:	9805      	ldr	r0, [sp, #20]
 8002f50:	b057      	add	sp, #348	; 0x15c
 8002f52:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002f56:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002f58:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f5a:	2a01      	cmp	r2, #1
 8002f5c:	f104 0401 	add.w	r4, r4, #1
 8002f60:	f103 0501 	add.w	r5, r3, #1
 8002f64:	f10b 0608 	add.w	r6, fp, #8
 8002f68:	f340 811c 	ble.w	80031a4 <_vfprintf_r+0xd6c>
 8002f6c:	2301      	movs	r3, #1
 8002f6e:	2d07      	cmp	r5, #7
 8002f70:	f8cb 7000 	str.w	r7, [fp]
 8002f74:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002f78:	f8cb 3004 	str.w	r3, [fp, #4]
 8002f7c:	f300 81bb 	bgt.w	80032f6 <_vfprintf_r+0xebe>
 8002f80:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002f82:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002f84:	1c69      	adds	r1, r5, #1
 8002f86:	441c      	add	r4, r3
 8002f88:	2907      	cmp	r1, #7
 8002f8a:	910b      	str	r1, [sp, #44]	; 0x2c
 8002f8c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8002f90:	e9c6 2300 	strd	r2, r3, [r6]
 8002f94:	f300 81bb 	bgt.w	800330e <_vfprintf_r+0xed6>
 8002f98:	3608      	adds	r6, #8
 8002f9a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002f9c:	1c53      	adds	r3, r2, #1
 8002f9e:	461d      	mov	r5, r3
 8002fa0:	9509      	str	r5, [sp, #36]	; 0x24
 8002fa2:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8002fa4:	930e      	str	r3, [sp, #56]	; 0x38
 8002fa6:	2200      	movs	r2, #0
 8002fa8:	2300      	movs	r3, #0
 8002faa:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002fae:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8002fb2:	f106 0b08 	add.w	fp, r6, #8
 8002fb6:	f7fe f827 	bl	8001008 <__aeabi_dcmpeq>
 8002fba:	2800      	cmp	r0, #0
 8002fbc:	f040 80c2 	bne.w	8003144 <_vfprintf_r+0xd0c>
 8002fc0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002fc2:	f8c6 9004 	str.w	r9, [r6, #4]
 8002fc6:	3701      	adds	r7, #1
 8002fc8:	444c      	add	r4, r9
 8002fca:	2d07      	cmp	r5, #7
 8002fcc:	6037      	str	r7, [r6, #0]
 8002fce:	942c      	str	r4, [sp, #176]	; 0xb0
 8002fd0:	952b      	str	r5, [sp, #172]	; 0xac
 8002fd2:	f300 80f9 	bgt.w	80031c8 <_vfprintf_r+0xd90>
 8002fd6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002fd8:	f106 0310 	add.w	r3, r6, #16
 8002fdc:	3202      	adds	r2, #2
 8002fde:	465e      	mov	r6, fp
 8002fe0:	9209      	str	r2, [sp, #36]	; 0x24
 8002fe2:	469b      	mov	fp, r3
 8002fe4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8002fe6:	6072      	str	r2, [r6, #4]
 8002fe8:	4414      	add	r4, r2
 8002fea:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002fec:	942c      	str	r4, [sp, #176]	; 0xb0
 8002fee:	ab26      	add	r3, sp, #152	; 0x98
 8002ff0:	2a07      	cmp	r2, #7
 8002ff2:	922b      	str	r2, [sp, #172]	; 0xac
 8002ff4:	6033      	str	r3, [r6, #0]
 8002ff6:	f77f ac70 	ble.w	80028da <_vfprintf_r+0x4a2>
 8002ffa:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ffc:	9907      	ldr	r1, [sp, #28]
 8002ffe:	9803      	ldr	r0, [sp, #12]
 8003000:	f003 fd48 	bl	8006a94 <__sprint_r>
 8003004:	2800      	cmp	r0, #0
 8003006:	d18f      	bne.n	8002f28 <_vfprintf_r+0xaf0>
 8003008:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800300a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800300e:	e464      	b.n	80028da <_vfprintf_r+0x4a2>
 8003010:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003012:	af56      	add	r7, sp, #344	; 0x158
 8003014:	0923      	lsrs	r3, r4, #4
 8003016:	f004 010f 	and.w	r1, r4, #15
 800301a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800301e:	092a      	lsrs	r2, r5, #4
 8003020:	461c      	mov	r4, r3
 8003022:	4615      	mov	r5, r2
 8003024:	5c43      	ldrb	r3, [r0, r1]
 8003026:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800302a:	ea54 0305 	orrs.w	r3, r4, r5
 800302e:	d1f1      	bne.n	8003014 <_vfprintf_r+0xbdc>
 8003030:	9b04      	ldr	r3, [sp, #16]
 8003032:	1bdb      	subs	r3, r3, r7
 8003034:	9309      	str	r3, [sp, #36]	; 0x24
 8003036:	f7ff bb80 	b.w	800273a <_vfprintf_r+0x302>
 800303a:	46b1      	mov	r9, r6
 800303c:	e776      	b.n	8002f2c <_vfprintf_r+0xaf4>
 800303e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003040:	9907      	ldr	r1, [sp, #28]
 8003042:	9803      	ldr	r0, [sp, #12]
 8003044:	f003 fd26 	bl	8006a94 <__sprint_r>
 8003048:	2800      	cmp	r0, #0
 800304a:	f47f af6d 	bne.w	8002f28 <_vfprintf_r+0xaf0>
 800304e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003050:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003054:	f7ff bbdd 	b.w	8002812 <_vfprintf_r+0x3da>
 8003058:	aa2a      	add	r2, sp, #168	; 0xa8
 800305a:	9907      	ldr	r1, [sp, #28]
 800305c:	9803      	ldr	r0, [sp, #12]
 800305e:	f003 fd19 	bl	8006a94 <__sprint_r>
 8003062:	2800      	cmp	r0, #0
 8003064:	f47f af60 	bne.w	8002f28 <_vfprintf_r+0xaf0>
 8003068:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800306a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800306e:	f7ff bbe0 	b.w	8002832 <_vfprintf_r+0x3fa>
 8003072:	4698      	mov	r8, r3
 8003074:	2d00      	cmp	r5, #0
 8003076:	bf08      	it	eq
 8003078:	2c0a      	cmpeq	r4, #10
 800307a:	f080 8170 	bcs.w	800335e <_vfprintf_r+0xf26>
 800307e:	af56      	add	r7, sp, #344	; 0x158
 8003080:	3430      	adds	r4, #48	; 0x30
 8003082:	2301      	movs	r3, #1
 8003084:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003088:	9309      	str	r3, [sp, #36]	; 0x24
 800308a:	f7ff bb56 	b.w	800273a <_vfprintf_r+0x302>
 800308e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003090:	9907      	ldr	r1, [sp, #28]
 8003092:	9803      	ldr	r0, [sp, #12]
 8003094:	f003 fcfe 	bl	8006a94 <__sprint_r>
 8003098:	2800      	cmp	r0, #0
 800309a:	f47f af45 	bne.w	8002f28 <_vfprintf_r+0xaf0>
 800309e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030a0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030a4:	e406      	b.n	80028b4 <_vfprintf_r+0x47c>
 80030a6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80030a8:	2b00      	cmp	r3, #0
 80030aa:	f340 8273 	ble.w	8003594 <_vfprintf_r+0x115c>
 80030ae:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80030b2:	4293      	cmp	r3, r2
 80030b4:	bfa8      	it	ge
 80030b6:	4613      	movge	r3, r2
 80030b8:	2b00      	cmp	r3, #0
 80030ba:	461d      	mov	r5, r3
 80030bc:	dd0d      	ble.n	80030da <_vfprintf_r+0xca2>
 80030be:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80030c0:	f8cb 7000 	str.w	r7, [fp]
 80030c4:	3301      	adds	r3, #1
 80030c6:	442c      	add	r4, r5
 80030c8:	2b07      	cmp	r3, #7
 80030ca:	942c      	str	r4, [sp, #176]	; 0xb0
 80030cc:	f8cb 5004 	str.w	r5, [fp, #4]
 80030d0:	932b      	str	r3, [sp, #172]	; 0xac
 80030d2:	f300 82c1 	bgt.w	8003658 <_vfprintf_r+0x1220>
 80030d6:	f10b 0b08 	add.w	fp, fp, #8
 80030da:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80030dc:	2d00      	cmp	r5, #0
 80030de:	bfa8      	it	ge
 80030e0:	1b5b      	subge	r3, r3, r5
 80030e2:	2b00      	cmp	r3, #0
 80030e4:	461d      	mov	r5, r3
 80030e6:	f340 8099 	ble.w	800321c <_vfprintf_r+0xde4>
 80030ea:	2d10      	cmp	r5, #16
 80030ec:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80030ee:	4b2c      	ldr	r3, [pc, #176]	; (80031a0 <_vfprintf_r+0xd68>)
 80030f0:	f340 83db 	ble.w	80038aa <_vfprintf_r+0x1472>
 80030f4:	4618      	mov	r0, r3
 80030f6:	4621      	mov	r1, r4
 80030f8:	465b      	mov	r3, fp
 80030fa:	2610      	movs	r6, #16
 80030fc:	46bb      	mov	fp, r7
 80030fe:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003102:	9c07      	ldr	r4, [sp, #28]
 8003104:	4607      	mov	r7, r0
 8003106:	e004      	b.n	8003112 <_vfprintf_r+0xcda>
 8003108:	3308      	adds	r3, #8
 800310a:	3d10      	subs	r5, #16
 800310c:	2d10      	cmp	r5, #16
 800310e:	f340 83c7 	ble.w	80038a0 <_vfprintf_r+0x1468>
 8003112:	3201      	adds	r2, #1
 8003114:	3110      	adds	r1, #16
 8003116:	2a07      	cmp	r2, #7
 8003118:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800311c:	e9c3 7600 	strd	r7, r6, [r3]
 8003120:	ddf2      	ble.n	8003108 <_vfprintf_r+0xcd0>
 8003122:	aa2a      	add	r2, sp, #168	; 0xa8
 8003124:	4621      	mov	r1, r4
 8003126:	4648      	mov	r0, r9
 8003128:	f003 fcb4 	bl	8006a94 <__sprint_r>
 800312c:	2800      	cmp	r0, #0
 800312e:	f040 84a5 	bne.w	8003a7c <_vfprintf_r+0x1644>
 8003132:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003136:	ab2d      	add	r3, sp, #180	; 0xb4
 8003138:	e7e7      	b.n	800310a <_vfprintf_r+0xcd2>
 800313a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800313e:	af56      	add	r7, sp, #344	; 0x158
 8003140:	f7ff bafb 	b.w	800273a <_vfprintf_r+0x302>
 8003144:	f1b9 0f00 	cmp.w	r9, #0
 8003148:	f77f af4c 	ble.w	8002fe4 <_vfprintf_r+0xbac>
 800314c:	f1b9 0f10 	cmp.w	r9, #16
 8003150:	4b13      	ldr	r3, [pc, #76]	; (80031a0 <_vfprintf_r+0xd68>)
 8003152:	f340 8659 	ble.w	8003e08 <_vfprintf_r+0x19d0>
 8003156:	4619      	mov	r1, r3
 8003158:	4622      	mov	r2, r4
 800315a:	4633      	mov	r3, r6
 800315c:	2710      	movs	r7, #16
 800315e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003162:	9c07      	ldr	r4, [sp, #28]
 8003164:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003166:	460e      	mov	r6, r1
 8003168:	e007      	b.n	800317a <_vfprintf_r+0xd42>
 800316a:	3308      	adds	r3, #8
 800316c:	f1a9 0910 	sub.w	r9, r9, #16
 8003170:	f1b9 0f10 	cmp.w	r9, #16
 8003174:	f340 8353 	ble.w	800381e <_vfprintf_r+0x13e6>
 8003178:	3501      	adds	r5, #1
 800317a:	3210      	adds	r2, #16
 800317c:	2d07      	cmp	r5, #7
 800317e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003182:	e9c3 6700 	strd	r6, r7, [r3]
 8003186:	ddf0      	ble.n	800316a <_vfprintf_r+0xd32>
 8003188:	aa2a      	add	r2, sp, #168	; 0xa8
 800318a:	4621      	mov	r1, r4
 800318c:	4658      	mov	r0, fp
 800318e:	f003 fc81 	bl	8006a94 <__sprint_r>
 8003192:	2800      	cmp	r0, #0
 8003194:	f040 8472 	bne.w	8003a7c <_vfprintf_r+0x1644>
 8003198:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800319c:	ab2d      	add	r3, sp, #180	; 0xb4
 800319e:	e7e5      	b.n	800316c <_vfprintf_r+0xd34>
 80031a0:	08007188 	.word	0x08007188
 80031a4:	f018 0f01 	tst.w	r8, #1
 80031a8:	f47f aee0 	bne.w	8002f6c <_vfprintf_r+0xb34>
 80031ac:	2201      	movs	r2, #1
 80031ae:	2d07      	cmp	r5, #7
 80031b0:	f8cb 7000 	str.w	r7, [fp]
 80031b4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80031b8:	f8cb 2004 	str.w	r2, [fp, #4]
 80031bc:	dc04      	bgt.n	80031c8 <_vfprintf_r+0xd90>
 80031be:	3302      	adds	r3, #2
 80031c0:	9309      	str	r3, [sp, #36]	; 0x24
 80031c2:	f10b 0b10 	add.w	fp, fp, #16
 80031c6:	e70d      	b.n	8002fe4 <_vfprintf_r+0xbac>
 80031c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80031ca:	9907      	ldr	r1, [sp, #28]
 80031cc:	9803      	ldr	r0, [sp, #12]
 80031ce:	f003 fc61 	bl	8006a94 <__sprint_r>
 80031d2:	2800      	cmp	r0, #0
 80031d4:	f47f aea8 	bne.w	8002f28 <_vfprintf_r+0xaf0>
 80031d8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80031dc:	3301      	adds	r3, #1
 80031de:	9309      	str	r3, [sp, #36]	; 0x24
 80031e0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80031e4:	ae2d      	add	r6, sp, #180	; 0xb4
 80031e6:	e6fd      	b.n	8002fe4 <_vfprintf_r+0xbac>
 80031e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80031ea:	9907      	ldr	r1, [sp, #28]
 80031ec:	9803      	ldr	r0, [sp, #12]
 80031ee:	f003 fc51 	bl	8006a94 <__sprint_r>
 80031f2:	2800      	cmp	r0, #0
 80031f4:	f47f ae98 	bne.w	8002f28 <_vfprintf_r+0xaf0>
 80031f8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80031fc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80031fe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003202:	f7ff baf6 	b.w	80027f2 <_vfprintf_r+0x3ba>
 8003206:	aa2a      	add	r2, sp, #168	; 0xa8
 8003208:	9907      	ldr	r1, [sp, #28]
 800320a:	9803      	ldr	r0, [sp, #12]
 800320c:	f003 fc42 	bl	8006a94 <__sprint_r>
 8003210:	2800      	cmp	r0, #0
 8003212:	f47f ae89 	bne.w	8002f28 <_vfprintf_r+0xaf0>
 8003216:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003218:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800321c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800321e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003222:	443b      	add	r3, r7
 8003224:	4699      	mov	r9, r3
 8003226:	f040 8357 	bne.w	80038d8 <_vfprintf_r+0x14a0>
 800322a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800322c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800322e:	4293      	cmp	r3, r2
 8003230:	db49      	blt.n	80032c6 <_vfprintf_r+0xe8e>
 8003232:	f018 0f01 	tst.w	r8, #1
 8003236:	d146      	bne.n	80032c6 <_vfprintf_r+0xe8e>
 8003238:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800323a:	18bd      	adds	r5, r7, r2
 800323c:	eba5 0509 	sub.w	r5, r5, r9
 8003240:	1ad3      	subs	r3, r2, r3
 8003242:	429d      	cmp	r5, r3
 8003244:	bfa8      	it	ge
 8003246:	461d      	movge	r5, r3
 8003248:	2d00      	cmp	r5, #0
 800324a:	dd0d      	ble.n	8003268 <_vfprintf_r+0xe30>
 800324c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800324e:	f8cb 9000 	str.w	r9, [fp]
 8003252:	3201      	adds	r2, #1
 8003254:	442c      	add	r4, r5
 8003256:	2a07      	cmp	r2, #7
 8003258:	942c      	str	r4, [sp, #176]	; 0xb0
 800325a:	f8cb 5004 	str.w	r5, [fp, #4]
 800325e:	922b      	str	r2, [sp, #172]	; 0xac
 8003260:	f300 8462 	bgt.w	8003b28 <_vfprintf_r+0x16f0>
 8003264:	f10b 0b08 	add.w	fp, fp, #8
 8003268:	2d00      	cmp	r5, #0
 800326a:	bfac      	ite	ge
 800326c:	1b5d      	subge	r5, r3, r5
 800326e:	461d      	movlt	r5, r3
 8003270:	2d00      	cmp	r5, #0
 8003272:	f77f ab32 	ble.w	80028da <_vfprintf_r+0x4a2>
 8003276:	2d10      	cmp	r5, #16
 8003278:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800327a:	4bc5      	ldr	r3, [pc, #788]	; (8003590 <_vfprintf_r+0x1158>)
 800327c:	f340 80c4 	ble.w	8003408 <_vfprintf_r+0xfd0>
 8003280:	4619      	mov	r1, r3
 8003282:	2610      	movs	r6, #16
 8003284:	4623      	mov	r3, r4
 8003286:	9f03      	ldr	r7, [sp, #12]
 8003288:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800328c:	460c      	mov	r4, r1
 800328e:	e005      	b.n	800329c <_vfprintf_r+0xe64>
 8003290:	f10b 0b08 	add.w	fp, fp, #8
 8003294:	3d10      	subs	r5, #16
 8003296:	2d10      	cmp	r5, #16
 8003298:	f340 80b3 	ble.w	8003402 <_vfprintf_r+0xfca>
 800329c:	3201      	adds	r2, #1
 800329e:	3310      	adds	r3, #16
 80032a0:	2a07      	cmp	r2, #7
 80032a2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80032a6:	e9cb 4600 	strd	r4, r6, [fp]
 80032aa:	ddf1      	ble.n	8003290 <_vfprintf_r+0xe58>
 80032ac:	aa2a      	add	r2, sp, #168	; 0xa8
 80032ae:	4649      	mov	r1, r9
 80032b0:	4638      	mov	r0, r7
 80032b2:	f003 fbef 	bl	8006a94 <__sprint_r>
 80032b6:	2800      	cmp	r0, #0
 80032b8:	f47f ae38 	bne.w	8002f2c <_vfprintf_r+0xaf4>
 80032bc:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80032c0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032c4:	e7e6      	b.n	8003294 <_vfprintf_r+0xe5c>
 80032c6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80032c8:	9916      	ldr	r1, [sp, #88]	; 0x58
 80032ca:	f8cb 1000 	str.w	r1, [fp]
 80032ce:	9915      	ldr	r1, [sp, #84]	; 0x54
 80032d0:	f8cb 1004 	str.w	r1, [fp, #4]
 80032d4:	3201      	adds	r2, #1
 80032d6:	440c      	add	r4, r1
 80032d8:	2a07      	cmp	r2, #7
 80032da:	942c      	str	r4, [sp, #176]	; 0xb0
 80032dc:	922b      	str	r2, [sp, #172]	; 0xac
 80032de:	f300 828c 	bgt.w	80037fa <_vfprintf_r+0x13c2>
 80032e2:	f10b 0b08 	add.w	fp, fp, #8
 80032e6:	e7a7      	b.n	8003238 <_vfprintf_r+0xe00>
 80032e8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80032ec:	f002 fa94 	bl	8005818 <__retarget_lock_release_recursive>
 80032f0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80032f4:	e628      	b.n	8002f48 <_vfprintf_r+0xb10>
 80032f6:	aa2a      	add	r2, sp, #168	; 0xa8
 80032f8:	9907      	ldr	r1, [sp, #28]
 80032fa:	9803      	ldr	r0, [sp, #12]
 80032fc:	f003 fbca 	bl	8006a94 <__sprint_r>
 8003300:	2800      	cmp	r0, #0
 8003302:	f47f ae11 	bne.w	8002f28 <_vfprintf_r+0xaf0>
 8003306:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800330a:	ae2d      	add	r6, sp, #180	; 0xb4
 800330c:	e638      	b.n	8002f80 <_vfprintf_r+0xb48>
 800330e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003310:	9907      	ldr	r1, [sp, #28]
 8003312:	9803      	ldr	r0, [sp, #12]
 8003314:	f003 fbbe 	bl	8006a94 <__sprint_r>
 8003318:	2800      	cmp	r0, #0
 800331a:	f47f ae05 	bne.w	8002f28 <_vfprintf_r+0xaf0>
 800331e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003322:	ae2d      	add	r6, sp, #180	; 0xb4
 8003324:	930b      	str	r3, [sp, #44]	; 0x2c
 8003326:	e638      	b.n	8002f9a <_vfprintf_r+0xb62>
 8003328:	6814      	ldr	r4, [r2, #0]
 800332a:	9308      	str	r3, [sp, #32]
 800332c:	2500      	movs	r5, #0
 800332e:	f7ff bb95 	b.w	8002a5c <_vfprintf_r+0x624>
 8003332:	6814      	ldr	r4, [r2, #0]
 8003334:	9308      	str	r3, [sp, #32]
 8003336:	2500      	movs	r5, #0
 8003338:	f7ff b9ae 	b.w	8002698 <_vfprintf_r+0x260>
 800333c:	680c      	ldr	r4, [r1, #0]
 800333e:	9208      	str	r2, [sp, #32]
 8003340:	17e5      	asrs	r5, r4, #31
 8003342:	4620      	mov	r0, r4
 8003344:	4629      	mov	r1, r5
 8003346:	f7ff b9d2 	b.w	80026ee <_vfprintf_r+0x2b6>
 800334a:	6814      	ldr	r4, [r2, #0]
 800334c:	9108      	str	r1, [sp, #32]
 800334e:	2201      	movs	r2, #1
 8003350:	2500      	movs	r5, #0
 8003352:	f7ff bb32 	b.w	80029ba <_vfprintf_r+0x582>
 8003356:	2a01      	cmp	r2, #1
 8003358:	f47f ab3c 	bne.w	80029d4 <_vfprintf_r+0x59c>
 800335c:	e68f      	b.n	800307e <_vfprintf_r+0xc46>
 800335e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003362:	2200      	movs	r2, #0
 8003364:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003368:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800336c:	af56      	add	r7, sp, #344	; 0x158
 800336e:	4692      	mov	sl, r2
 8003370:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003374:	461e      	mov	r6, r3
 8003376:	e00a      	b.n	800338e <_vfprintf_r+0xf56>
 8003378:	2300      	movs	r3, #0
 800337a:	4620      	mov	r0, r4
 800337c:	4629      	mov	r1, r5
 800337e:	220a      	movs	r2, #10
 8003380:	f7fc ff3e 	bl	8000200 <__aeabi_uldivmod>
 8003384:	4604      	mov	r4, r0
 8003386:	460d      	mov	r5, r1
 8003388:	ea54 0305 	orrs.w	r3, r4, r5
 800338c:	d029      	beq.n	80033e2 <_vfprintf_r+0xfaa>
 800338e:	220a      	movs	r2, #10
 8003390:	2300      	movs	r3, #0
 8003392:	4620      	mov	r0, r4
 8003394:	4629      	mov	r1, r5
 8003396:	f7fc ff33 	bl	8000200 <__aeabi_uldivmod>
 800339a:	3230      	adds	r2, #48	; 0x30
 800339c:	f807 2c01 	strb.w	r2, [r7, #-1]
 80033a0:	f10a 0a01 	add.w	sl, sl, #1
 80033a4:	3f01      	subs	r7, #1
 80033a6:	2e00      	cmp	r6, #0
 80033a8:	d0e6      	beq.n	8003378 <_vfprintf_r+0xf40>
 80033aa:	f898 3000 	ldrb.w	r3, [r8]
 80033ae:	459a      	cmp	sl, r3
 80033b0:	d1e2      	bne.n	8003378 <_vfprintf_r+0xf40>
 80033b2:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80033b6:	d0df      	beq.n	8003378 <_vfprintf_r+0xf40>
 80033b8:	2d00      	cmp	r5, #0
 80033ba:	bf08      	it	eq
 80033bc:	2c0a      	cmpeq	r4, #10
 80033be:	d3db      	bcc.n	8003378 <_vfprintf_r+0xf40>
 80033c0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80033c2:	9918      	ldr	r1, [sp, #96]	; 0x60
 80033c4:	1aff      	subs	r7, r7, r3
 80033c6:	461a      	mov	r2, r3
 80033c8:	4638      	mov	r0, r7
 80033ca:	f003 faf5 	bl	80069b8 <strncpy>
 80033ce:	f898 3001 	ldrb.w	r3, [r8, #1]
 80033d2:	2b00      	cmp	r3, #0
 80033d4:	f000 8496 	beq.w	8003d04 <_vfprintf_r+0x18cc>
 80033d8:	f108 0801 	add.w	r8, r8, #1
 80033dc:	f04f 0a00 	mov.w	sl, #0
 80033e0:	e7ca      	b.n	8003378 <_vfprintf_r+0xf40>
 80033e2:	9b04      	ldr	r3, [sp, #16]
 80033e4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80033e8:	1bdb      	subs	r3, r3, r7
 80033ea:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80033ee:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80033f0:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80033f4:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 80033f8:	9309      	str	r3, [sp, #36]	; 0x24
 80033fa:	f7ff b99e 	b.w	800273a <_vfprintf_r+0x302>
 80033fe:	46c1      	mov	r9, r8
 8003400:	e594      	b.n	8002f2c <_vfprintf_r+0xaf4>
 8003402:	4621      	mov	r1, r4
 8003404:	461c      	mov	r4, r3
 8003406:	460b      	mov	r3, r1
 8003408:	3201      	adds	r2, #1
 800340a:	442c      	add	r4, r5
 800340c:	2a07      	cmp	r2, #7
 800340e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003412:	e9cb 3500 	strd	r3, r5, [fp]
 8003416:	f77f aa5e 	ble.w	80028d6 <_vfprintf_r+0x49e>
 800341a:	e5ee      	b.n	8002ffa <_vfprintf_r+0xbc2>
 800341c:	f018 0f10 	tst.w	r8, #16
 8003420:	f040 80f8 	bne.w	8003614 <_vfprintf_r+0x11dc>
 8003424:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003428:	f000 8351 	beq.w	8003ace <_vfprintf_r+0x1696>
 800342c:	9a05      	ldr	r2, [sp, #20]
 800342e:	801a      	strh	r2, [r3, #0]
 8003430:	4657      	mov	r7, sl
 8003432:	f7ff baa7 	b.w	8002984 <_vfprintf_r+0x54c>
 8003436:	aa2a      	add	r2, sp, #168	; 0xa8
 8003438:	9907      	ldr	r1, [sp, #28]
 800343a:	9803      	ldr	r0, [sp, #12]
 800343c:	f003 fb2a 	bl	8006a94 <__sprint_r>
 8003440:	2800      	cmp	r0, #0
 8003442:	f47f ad71 	bne.w	8002f28 <_vfprintf_r+0xaf0>
 8003446:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003448:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800344c:	f7ff b9f5 	b.w	800283a <_vfprintf_r+0x402>
 8003450:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003454:	4602      	mov	r2, r0
 8003456:	460b      	mov	r3, r1
 8003458:	f7fd fe08 	bl	800106c <__aeabi_dcmpun>
 800345c:	2800      	cmp	r0, #0
 800345e:	f040 8491 	bne.w	8003d84 <_vfprintf_r+0x194c>
 8003462:	2e61      	cmp	r6, #97	; 0x61
 8003464:	f000 8111 	beq.w	800368a <_vfprintf_r+0x1252>
 8003468:	2e41      	cmp	r6, #65	; 0x41
 800346a:	f000 8377 	beq.w	8003b5c <_vfprintf_r+0x1724>
 800346e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003472:	f026 0220 	bic.w	r2, r6, #32
 8003476:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800347a:	930e      	str	r3, [sp, #56]	; 0x38
 800347c:	9204      	str	r2, [sp, #16]
 800347e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003480:	f000 842d 	beq.w	8003cde <_vfprintf_r+0x18a6>
 8003484:	2a47      	cmp	r2, #71	; 0x47
 8003486:	f000 8424 	beq.w	8003cd2 <_vfprintf_r+0x189a>
 800348a:	2b00      	cmp	r3, #0
 800348c:	f2c0 82f9 	blt.w	8003a82 <_vfprintf_r+0x164a>
 8003490:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003494:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003498:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800349c:	2e66      	cmp	r6, #102	; 0x66
 800349e:	f000 83eb 	beq.w	8003c78 <_vfprintf_r+0x1840>
 80034a2:	2e46      	cmp	r6, #70	; 0x46
 80034a4:	f000 847e 	beq.w	8003da4 <_vfprintf_r+0x196c>
 80034a8:	9b04      	ldr	r3, [sp, #16]
 80034aa:	9803      	ldr	r0, [sp, #12]
 80034ac:	2b45      	cmp	r3, #69	; 0x45
 80034ae:	bf0c      	ite	eq
 80034b0:	f109 0501 	addeq.w	r5, r9, #1
 80034b4:	464d      	movne	r5, r9
 80034b6:	aa28      	add	r2, sp, #160	; 0xa0
 80034b8:	ab25      	add	r3, sp, #148	; 0x94
 80034ba:	e9cd 3200 	strd	r3, r2, [sp]
 80034be:	2102      	movs	r1, #2
 80034c0:	ab24      	add	r3, sp, #144	; 0x90
 80034c2:	462a      	mov	r2, r5
 80034c4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80034c8:	f000 fe3e 	bl	8004148 <_dtoa_r>
 80034cc:	2e67      	cmp	r6, #103	; 0x67
 80034ce:	4607      	mov	r7, r0
 80034d0:	f040 849c 	bne.w	8003e0c <_vfprintf_r+0x19d4>
 80034d4:	f018 0f01 	tst.w	r8, #1
 80034d8:	f040 83f9 	bne.w	8003cce <_vfprintf_r+0x1896>
 80034dc:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80034de:	4640      	mov	r0, r8
 80034e0:	1bdb      	subs	r3, r3, r7
 80034e2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80034e6:	9310      	str	r3, [sp, #64]	; 0x40
 80034e8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80034ea:	9311      	str	r3, [sp, #68]	; 0x44
 80034ec:	9b04      	ldr	r3, [sp, #16]
 80034ee:	2b47      	cmp	r3, #71	; 0x47
 80034f0:	f000 81e7 	beq.w	80038c2 <_vfprintf_r+0x148a>
 80034f4:	9b04      	ldr	r3, [sp, #16]
 80034f6:	2b46      	cmp	r3, #70	; 0x46
 80034f8:	f000 8300 	beq.w	8003afc <_vfprintf_r+0x16c4>
 80034fc:	9904      	ldr	r1, [sp, #16]
 80034fe:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003500:	b2f2      	uxtb	r2, r6
 8003502:	2941      	cmp	r1, #65	; 0x41
 8003504:	bf08      	it	eq
 8003506:	320f      	addeq	r2, #15
 8003508:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 800350c:	bf06      	itte	eq
 800350e:	b2d2      	uxtbeq	r2, r2
 8003510:	2101      	moveq	r1, #1
 8003512:	2100      	movne	r1, #0
 8003514:	2b00      	cmp	r3, #0
 8003516:	9324      	str	r3, [sp, #144]	; 0x90
 8003518:	bfb8      	it	lt
 800351a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 800351c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003520:	bfba      	itte	lt
 8003522:	f1c3 0301 	rsblt	r3, r3, #1
 8003526:	222d      	movlt	r2, #45	; 0x2d
 8003528:	222b      	movge	r2, #43	; 0x2b
 800352a:	2b09      	cmp	r3, #9
 800352c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003530:	f300 83f9 	bgt.w	8003d26 <_vfprintf_r+0x18ee>
 8003534:	2900      	cmp	r1, #0
 8003536:	f040 8487 	bne.w	8003e48 <_vfprintf_r+0x1a10>
 800353a:	2230      	movs	r2, #48	; 0x30
 800353c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003540:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003544:	3330      	adds	r3, #48	; 0x30
 8003546:	7013      	strb	r3, [r2, #0]
 8003548:	1c53      	adds	r3, r2, #1
 800354a:	aa26      	add	r2, sp, #152	; 0x98
 800354c:	1a9b      	subs	r3, r3, r2
 800354e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003550:	9319      	str	r3, [sp, #100]	; 0x64
 8003552:	2a01      	cmp	r2, #1
 8003554:	4413      	add	r3, r2
 8003556:	9309      	str	r3, [sp, #36]	; 0x24
 8003558:	f340 8442 	ble.w	8003de0 <_vfprintf_r+0x19a8>
 800355c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800355e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003560:	4413      	add	r3, r2
 8003562:	9309      	str	r3, [sp, #36]	; 0x24
 8003564:	2300      	movs	r3, #0
 8003566:	930f      	str	r3, [sp, #60]	; 0x3c
 8003568:	9314      	str	r3, [sp, #80]	; 0x50
 800356a:	9311      	str	r3, [sp, #68]	; 0x44
 800356c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800356e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003572:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003576:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 800357a:	9304      	str	r3, [sp, #16]
 800357c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800357e:	2b00      	cmp	r3, #0
 8003580:	f040 8275 	bne.w	8003a6e <_vfprintf_r+0x1636>
 8003584:	4699      	mov	r9, r3
 8003586:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800358a:	f7ff b8e2 	b.w	8002752 <_vfprintf_r+0x31a>
 800358e:	bf00      	nop
 8003590:	08007188 	.word	0x08007188
 8003594:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003596:	49bd      	ldr	r1, [pc, #756]	; (800388c <_vfprintf_r+0x1454>)
 8003598:	f8cb 1000 	str.w	r1, [fp]
 800359c:	3201      	adds	r2, #1
 800359e:	3401      	adds	r4, #1
 80035a0:	2101      	movs	r1, #1
 80035a2:	2a07      	cmp	r2, #7
 80035a4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80035a8:	f8cb 1004 	str.w	r1, [fp, #4]
 80035ac:	dc60      	bgt.n	8003670 <_vfprintf_r+0x1238>
 80035ae:	f10b 0b08 	add.w	fp, fp, #8
 80035b2:	b92b      	cbnz	r3, 80035c0 <_vfprintf_r+0x1188>
 80035b4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80035b6:	b91a      	cbnz	r2, 80035c0 <_vfprintf_r+0x1188>
 80035b8:	f018 0f01 	tst.w	r8, #1
 80035bc:	f43f a98d 	beq.w	80028da <_vfprintf_r+0x4a2>
 80035c0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035c2:	9916      	ldr	r1, [sp, #88]	; 0x58
 80035c4:	f8cb 1000 	str.w	r1, [fp]
 80035c8:	9915      	ldr	r1, [sp, #84]	; 0x54
 80035ca:	f8cb 1004 	str.w	r1, [fp, #4]
 80035ce:	3201      	adds	r2, #1
 80035d0:	440c      	add	r4, r1
 80035d2:	2a07      	cmp	r2, #7
 80035d4:	942c      	str	r4, [sp, #176]	; 0xb0
 80035d6:	922b      	str	r2, [sp, #172]	; 0xac
 80035d8:	f300 8282 	bgt.w	8003ae0 <_vfprintf_r+0x16a8>
 80035dc:	f10b 0b08 	add.w	fp, fp, #8
 80035e0:	2b00      	cmp	r3, #0
 80035e2:	f2c0 82e7 	blt.w	8003bb4 <_vfprintf_r+0x177c>
 80035e6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80035e8:	3201      	adds	r2, #1
 80035ea:	441c      	add	r4, r3
 80035ec:	2a07      	cmp	r2, #7
 80035ee:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80035f2:	e9cb 7300 	strd	r7, r3, [fp]
 80035f6:	f77f a96e 	ble.w	80028d6 <_vfprintf_r+0x49e>
 80035fa:	e4fe      	b.n	8002ffa <_vfprintf_r+0xbc2>
 80035fc:	aa2a      	add	r2, sp, #168	; 0xa8
 80035fe:	9907      	ldr	r1, [sp, #28]
 8003600:	9803      	ldr	r0, [sp, #12]
 8003602:	f003 fa47 	bl	8006a94 <__sprint_r>
 8003606:	2800      	cmp	r0, #0
 8003608:	f47f ac8e 	bne.w	8002f28 <_vfprintf_r+0xaf0>
 800360c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003610:	f7ff bbf0 	b.w	8002df4 <_vfprintf_r+0x9bc>
 8003614:	9a05      	ldr	r2, [sp, #20]
 8003616:	601a      	str	r2, [r3, #0]
 8003618:	4657      	mov	r7, sl
 800361a:	f7ff b9b3 	b.w	8002984 <_vfprintf_r+0x54c>
 800361e:	8814      	ldrh	r4, [r2, #0]
 8003620:	9108      	str	r1, [sp, #32]
 8003622:	2500      	movs	r5, #0
 8003624:	2201      	movs	r2, #1
 8003626:	f7ff b9c8 	b.w	80029ba <_vfprintf_r+0x582>
 800362a:	8814      	ldrh	r4, [r2, #0]
 800362c:	9308      	str	r3, [sp, #32]
 800362e:	2500      	movs	r5, #0
 8003630:	f7ff ba14 	b.w	8002a5c <_vfprintf_r+0x624>
 8003634:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003638:	9208      	str	r2, [sp, #32]
 800363a:	17e5      	asrs	r5, r4, #31
 800363c:	4620      	mov	r0, r4
 800363e:	4629      	mov	r1, r5
 8003640:	f7ff b855 	b.w	80026ee <_vfprintf_r+0x2b6>
 8003644:	8814      	ldrh	r4, [r2, #0]
 8003646:	9308      	str	r3, [sp, #32]
 8003648:	2500      	movs	r5, #0
 800364a:	f7ff b825 	b.w	8002698 <_vfprintf_r+0x260>
 800364e:	222d      	movs	r2, #45	; 0x2d
 8003650:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003654:	f7ff baa2 	b.w	8002b9c <_vfprintf_r+0x764>
 8003658:	aa2a      	add	r2, sp, #168	; 0xa8
 800365a:	9907      	ldr	r1, [sp, #28]
 800365c:	9803      	ldr	r0, [sp, #12]
 800365e:	f003 fa19 	bl	8006a94 <__sprint_r>
 8003662:	2800      	cmp	r0, #0
 8003664:	f47f ac60 	bne.w	8002f28 <_vfprintf_r+0xaf0>
 8003668:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800366a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800366e:	e534      	b.n	80030da <_vfprintf_r+0xca2>
 8003670:	aa2a      	add	r2, sp, #168	; 0xa8
 8003672:	9907      	ldr	r1, [sp, #28]
 8003674:	9803      	ldr	r0, [sp, #12]
 8003676:	f003 fa0d 	bl	8006a94 <__sprint_r>
 800367a:	2800      	cmp	r0, #0
 800367c:	f47f ac54 	bne.w	8002f28 <_vfprintf_r+0xaf0>
 8003680:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003682:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003684:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003688:	e793      	b.n	80035b2 <_vfprintf_r+0x117a>
 800368a:	2330      	movs	r3, #48	; 0x30
 800368c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003690:	2378      	movs	r3, #120	; 0x78
 8003692:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003696:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 800369a:	f048 0402 	orr.w	r4, r8, #2
 800369e:	f300 82b0 	bgt.w	8003c02 <_vfprintf_r+0x17ca>
 80036a2:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80036a6:	930e      	str	r3, [sp, #56]	; 0x38
 80036a8:	f026 0320 	bic.w	r3, r6, #32
 80036ac:	9304      	str	r3, [sp, #16]
 80036ae:	2200      	movs	r2, #0
 80036b0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80036b2:	920a      	str	r2, [sp, #40]	; 0x28
 80036b4:	46a0      	mov	r8, r4
 80036b6:	af3d      	add	r7, sp, #244	; 0xf4
 80036b8:	2b00      	cmp	r3, #0
 80036ba:	f2c0 81e3 	blt.w	8003a84 <_vfprintf_r+0x164c>
 80036be:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80036c2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80036c6:	2300      	movs	r3, #0
 80036c8:	930b      	str	r3, [sp, #44]	; 0x2c
 80036ca:	2e61      	cmp	r6, #97	; 0x61
 80036cc:	f000 8255 	beq.w	8003b7a <_vfprintf_r+0x1742>
 80036d0:	2e41      	cmp	r6, #65	; 0x41
 80036d2:	f47f aee3 	bne.w	800349c <_vfprintf_r+0x1064>
 80036d6:	a824      	add	r0, sp, #144	; 0x90
 80036d8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80036dc:	f003 f8e2 	bl	80068a4 <frexp>
 80036e0:	2200      	movs	r2, #0
 80036e2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80036e6:	ec51 0b10 	vmov	r0, r1, d0
 80036ea:	f7fd fa25 	bl	8000b38 <__aeabi_dmul>
 80036ee:	2200      	movs	r2, #0
 80036f0:	2300      	movs	r3, #0
 80036f2:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80036f6:	f7fd fc87 	bl	8001008 <__aeabi_dcmpeq>
 80036fa:	2800      	cmp	r0, #0
 80036fc:	f040 8305 	bne.w	8003d0a <_vfprintf_r+0x18d2>
 8003700:	4b63      	ldr	r3, [pc, #396]	; (8003890 <_vfprintf_r+0x1458>)
 8003702:	9309      	str	r3, [sp, #36]	; 0x24
 8003704:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003708:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 800370c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003710:	9721      	str	r7, [sp, #132]	; 0x84
 8003712:	46b9      	mov	r9, r7
 8003714:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003718:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 800371c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003720:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003724:	e003      	b.n	800372e <_vfprintf_r+0x12f6>
 8003726:	f7fd fc6f 	bl	8001008 <__aeabi_dcmpeq>
 800372a:	bb20      	cbnz	r0, 8003776 <_vfprintf_r+0x133e>
 800372c:	46a9      	mov	r9, r5
 800372e:	2200      	movs	r2, #0
 8003730:	4b58      	ldr	r3, [pc, #352]	; (8003894 <_vfprintf_r+0x145c>)
 8003732:	4630      	mov	r0, r6
 8003734:	4639      	mov	r1, r7
 8003736:	f7fd f9ff 	bl	8000b38 <__aeabi_dmul>
 800373a:	460f      	mov	r7, r1
 800373c:	4606      	mov	r6, r0
 800373e:	f7fd fcab 	bl	8001098 <__aeabi_d2iz>
 8003742:	4680      	mov	r8, r0
 8003744:	f7fd f98e 	bl	8000a64 <__aeabi_i2d>
 8003748:	4602      	mov	r2, r0
 800374a:	460b      	mov	r3, r1
 800374c:	4630      	mov	r0, r6
 800374e:	4639      	mov	r1, r7
 8003750:	f7fd f83a 	bl	80007c8 <__aeabi_dsub>
 8003754:	464d      	mov	r5, r9
 8003756:	f81a c008 	ldrb.w	ip, [sl, r8]
 800375a:	f805 cb01 	strb.w	ip, [r5], #1
 800375e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003762:	46a3      	mov	fp, r4
 8003764:	4606      	mov	r6, r0
 8003766:	460f      	mov	r7, r1
 8003768:	f04f 0200 	mov.w	r2, #0
 800376c:	f04f 0300 	mov.w	r3, #0
 8003770:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003774:	d1d7      	bne.n	8003726 <_vfprintf_r+0x12ee>
 8003776:	4630      	mov	r0, r6
 8003778:	4639      	mov	r1, r7
 800377a:	2200      	movs	r2, #0
 800377c:	4b46      	ldr	r3, [pc, #280]	; (8003898 <_vfprintf_r+0x1460>)
 800377e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003782:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003784:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003788:	4644      	mov	r4, r8
 800378a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 800378e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003792:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003796:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 800379a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 800379c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80037a0:	f7fd fc5a 	bl	8001058 <__aeabi_dcmpgt>
 80037a4:	2800      	cmp	r0, #0
 80037a6:	f040 8176 	bne.w	8003a96 <_vfprintf_r+0x165e>
 80037aa:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80037ae:	2200      	movs	r2, #0
 80037b0:	4b39      	ldr	r3, [pc, #228]	; (8003898 <_vfprintf_r+0x1460>)
 80037b2:	f7fd fc29 	bl	8001008 <__aeabi_dcmpeq>
 80037b6:	b110      	cbz	r0, 80037be <_vfprintf_r+0x1386>
 80037b8:	07e2      	lsls	r2, r4, #31
 80037ba:	f100 816c 	bmi.w	8003a96 <_vfprintf_r+0x165e>
 80037be:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80037c0:	2b00      	cmp	r3, #0
 80037c2:	db07      	blt.n	80037d4 <_vfprintf_r+0x139c>
 80037c4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80037c6:	3301      	adds	r3, #1
 80037c8:	442b      	add	r3, r5
 80037ca:	2230      	movs	r2, #48	; 0x30
 80037cc:	f805 2b01 	strb.w	r2, [r5], #1
 80037d0:	42ab      	cmp	r3, r5
 80037d2:	d1fb      	bne.n	80037cc <_vfprintf_r+0x1394>
 80037d4:	1beb      	subs	r3, r5, r7
 80037d6:	4640      	mov	r0, r8
 80037d8:	9310      	str	r3, [sp, #64]	; 0x40
 80037da:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80037de:	e683      	b.n	80034e8 <_vfprintf_r+0x10b0>
 80037e0:	f8cd 9010 	str.w	r9, [sp, #16]
 80037e4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80037e8:	9408      	str	r4, [sp, #32]
 80037ea:	4681      	mov	r9, r0
 80037ec:	900f      	str	r0, [sp, #60]	; 0x3c
 80037ee:	9014      	str	r0, [sp, #80]	; 0x50
 80037f0:	9011      	str	r0, [sp, #68]	; 0x44
 80037f2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80037f6:	f7fe bfac 	b.w	8002752 <_vfprintf_r+0x31a>
 80037fa:	aa2a      	add	r2, sp, #168	; 0xa8
 80037fc:	9907      	ldr	r1, [sp, #28]
 80037fe:	9803      	ldr	r0, [sp, #12]
 8003800:	f003 f948 	bl	8006a94 <__sprint_r>
 8003804:	2800      	cmp	r0, #0
 8003806:	f47f ab8f 	bne.w	8002f28 <_vfprintf_r+0xaf0>
 800380a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800380c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800380e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003812:	e511      	b.n	8003238 <_vfprintf_r+0xe00>
 8003814:	4252      	negs	r2, r2
 8003816:	9206      	str	r2, [sp, #24]
 8003818:	9308      	str	r3, [sp, #32]
 800381a:	f7ff b96d 	b.w	8002af8 <_vfprintf_r+0x6c0>
 800381e:	4614      	mov	r4, r2
 8003820:	4632      	mov	r2, r6
 8003822:	461e      	mov	r6, r3
 8003824:	4613      	mov	r3, r2
 8003826:	462a      	mov	r2, r5
 8003828:	3201      	adds	r2, #1
 800382a:	9209      	str	r2, [sp, #36]	; 0x24
 800382c:	f106 0208 	add.w	r2, r6, #8
 8003830:	e9c6 3900 	strd	r3, r9, [r6]
 8003834:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003836:	932b      	str	r3, [sp, #172]	; 0xac
 8003838:	444c      	add	r4, r9
 800383a:	2b07      	cmp	r3, #7
 800383c:	942c      	str	r4, [sp, #176]	; 0xb0
 800383e:	f73f acc3 	bgt.w	80031c8 <_vfprintf_r+0xd90>
 8003842:	3301      	adds	r3, #1
 8003844:	9309      	str	r3, [sp, #36]	; 0x24
 8003846:	f102 0b08 	add.w	fp, r2, #8
 800384a:	4616      	mov	r6, r2
 800384c:	f7ff bbca 	b.w	8002fe4 <_vfprintf_r+0xbac>
 8003850:	aa2a      	add	r2, sp, #168	; 0xa8
 8003852:	9907      	ldr	r1, [sp, #28]
 8003854:	9803      	ldr	r0, [sp, #12]
 8003856:	f003 f91d 	bl	8006a94 <__sprint_r>
 800385a:	2800      	cmp	r0, #0
 800385c:	f47f ab64 	bne.w	8002f28 <_vfprintf_r+0xaf0>
 8003860:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003862:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003866:	f7ff bade 	b.w	8002e26 <_vfprintf_r+0x9ee>
 800386a:	464b      	mov	r3, r9
 800386c:	2b06      	cmp	r3, #6
 800386e:	bf28      	it	cs
 8003870:	2306      	movcs	r3, #6
 8003872:	46b9      	mov	r9, r7
 8003874:	970f      	str	r7, [sp, #60]	; 0x3c
 8003876:	9714      	str	r7, [sp, #80]	; 0x50
 8003878:	9711      	str	r7, [sp, #68]	; 0x44
 800387a:	970a      	str	r7, [sp, #40]	; 0x28
 800387c:	463a      	mov	r2, r7
 800387e:	9304      	str	r3, [sp, #16]
 8003880:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003884:	4f05      	ldr	r7, [pc, #20]	; (800389c <_vfprintf_r+0x1464>)
 8003886:	f7fe bf64 	b.w	8002752 <_vfprintf_r+0x31a>
 800388a:	bf00      	nop
 800388c:	08007174 	.word	0x08007174
 8003890:	08007158 	.word	0x08007158
 8003894:	40300000 	.word	0x40300000
 8003898:	3fe00000 	.word	0x3fe00000
 800389c:	0800716c 	.word	0x0800716c
 80038a0:	460c      	mov	r4, r1
 80038a2:	4639      	mov	r1, r7
 80038a4:	465f      	mov	r7, fp
 80038a6:	469b      	mov	fp, r3
 80038a8:	460b      	mov	r3, r1
 80038aa:	3201      	adds	r2, #1
 80038ac:	442c      	add	r4, r5
 80038ae:	2a07      	cmp	r2, #7
 80038b0:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80038b4:	e9cb 3500 	strd	r3, r5, [fp]
 80038b8:	f73f aca5 	bgt.w	8003206 <_vfprintf_r+0xdce>
 80038bc:	f10b 0b08 	add.w	fp, fp, #8
 80038c0:	e4ac      	b.n	800321c <_vfprintf_r+0xde4>
 80038c2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80038c4:	1cda      	adds	r2, r3, #3
 80038c6:	db02      	blt.n	80038ce <_vfprintf_r+0x1496>
 80038c8:	4599      	cmp	r9, r3
 80038ca:	f280 80b5 	bge.w	8003a38 <_vfprintf_r+0x1600>
 80038ce:	3e02      	subs	r6, #2
 80038d0:	f026 0320 	bic.w	r3, r6, #32
 80038d4:	9304      	str	r3, [sp, #16]
 80038d6:	e611      	b.n	80034fc <_vfprintf_r+0x10c4>
 80038d8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80038da:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80038de:	465a      	mov	r2, fp
 80038e0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 80038e4:	18fb      	adds	r3, r7, r3
 80038e6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80038ea:	970c      	str	r7, [sp, #48]	; 0x30
 80038ec:	4eaf      	ldr	r6, [pc, #700]	; (8003bac <_vfprintf_r+0x1774>)
 80038ee:	f8dd a01c 	ldr.w	sl, [sp, #28]
 80038f2:	9309      	str	r3, [sp, #36]	; 0x24
 80038f4:	464f      	mov	r7, r9
 80038f6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80038fa:	4621      	mov	r1, r4
 80038fc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80038fe:	2b00      	cmp	r3, #0
 8003900:	d05b      	beq.n	80039ba <_vfprintf_r+0x1582>
 8003902:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003904:	2b00      	cmp	r3, #0
 8003906:	d154      	bne.n	80039b2 <_vfprintf_r+0x157a>
 8003908:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800390a:	3b01      	subs	r3, #1
 800390c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003910:	9314      	str	r3, [sp, #80]	; 0x50
 8003912:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003914:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003916:	6010      	str	r0, [r2, #0]
 8003918:	3301      	adds	r3, #1
 800391a:	4459      	add	r1, fp
 800391c:	2b07      	cmp	r3, #7
 800391e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003920:	f8c2 b004 	str.w	fp, [r2, #4]
 8003924:	932b      	str	r3, [sp, #172]	; 0xac
 8003926:	dc68      	bgt.n	80039fa <_vfprintf_r+0x15c2>
 8003928:	3208      	adds	r2, #8
 800392a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800392c:	f898 3000 	ldrb.w	r3, [r8]
 8003930:	1bc5      	subs	r5, r0, r7
 8003932:	429d      	cmp	r5, r3
 8003934:	bfa8      	it	ge
 8003936:	461d      	movge	r5, r3
 8003938:	2d00      	cmp	r5, #0
 800393a:	dd0b      	ble.n	8003954 <_vfprintf_r+0x151c>
 800393c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800393e:	6017      	str	r7, [r2, #0]
 8003940:	3301      	adds	r3, #1
 8003942:	4429      	add	r1, r5
 8003944:	2b07      	cmp	r3, #7
 8003946:	912c      	str	r1, [sp, #176]	; 0xb0
 8003948:	6055      	str	r5, [r2, #4]
 800394a:	932b      	str	r3, [sp, #172]	; 0xac
 800394c:	dc5e      	bgt.n	8003a0c <_vfprintf_r+0x15d4>
 800394e:	f898 3000 	ldrb.w	r3, [r8]
 8003952:	3208      	adds	r2, #8
 8003954:	2d00      	cmp	r5, #0
 8003956:	bfac      	ite	ge
 8003958:	1b5d      	subge	r5, r3, r5
 800395a:	461d      	movlt	r5, r3
 800395c:	2d00      	cmp	r5, #0
 800395e:	dd26      	ble.n	80039ae <_vfprintf_r+0x1576>
 8003960:	2d10      	cmp	r5, #16
 8003962:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003964:	dd3c      	ble.n	80039e0 <_vfprintf_r+0x15a8>
 8003966:	2410      	movs	r4, #16
 8003968:	e003      	b.n	8003972 <_vfprintf_r+0x153a>
 800396a:	3208      	adds	r2, #8
 800396c:	3d10      	subs	r5, #16
 800396e:	2d10      	cmp	r5, #16
 8003970:	dd36      	ble.n	80039e0 <_vfprintf_r+0x15a8>
 8003972:	3001      	adds	r0, #1
 8003974:	3110      	adds	r1, #16
 8003976:	2807      	cmp	r0, #7
 8003978:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800397c:	e9c2 6400 	strd	r6, r4, [r2]
 8003980:	ddf3      	ble.n	800396a <_vfprintf_r+0x1532>
 8003982:	aa2a      	add	r2, sp, #168	; 0xa8
 8003984:	4651      	mov	r1, sl
 8003986:	4648      	mov	r0, r9
 8003988:	f003 f884 	bl	8006a94 <__sprint_r>
 800398c:	2800      	cmp	r0, #0
 800398e:	d150      	bne.n	8003a32 <_vfprintf_r+0x15fa>
 8003990:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003994:	aa2d      	add	r2, sp, #180	; 0xb4
 8003996:	e7e9      	b.n	800396c <_vfprintf_r+0x1534>
 8003998:	aa2a      	add	r2, sp, #168	; 0xa8
 800399a:	4651      	mov	r1, sl
 800399c:	4648      	mov	r0, r9
 800399e:	f003 f879 	bl	8006a94 <__sprint_r>
 80039a2:	2800      	cmp	r0, #0
 80039a4:	d145      	bne.n	8003a32 <_vfprintf_r+0x15fa>
 80039a6:	f898 3000 	ldrb.w	r3, [r8]
 80039aa:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80039ac:	aa2d      	add	r2, sp, #180	; 0xb4
 80039ae:	441f      	add	r7, r3
 80039b0:	e7a4      	b.n	80038fc <_vfprintf_r+0x14c4>
 80039b2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80039b4:	3b01      	subs	r3, #1
 80039b6:	930f      	str	r3, [sp, #60]	; 0x3c
 80039b8:	e7ab      	b.n	8003912 <_vfprintf_r+0x14da>
 80039ba:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80039bc:	2b00      	cmp	r3, #0
 80039be:	d1f8      	bne.n	80039b2 <_vfprintf_r+0x157a>
 80039c0:	46b9      	mov	r9, r7
 80039c2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80039c4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 80039c6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80039ca:	18fb      	adds	r3, r7, r3
 80039cc:	4599      	cmp	r9, r3
 80039ce:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 80039d2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80039d6:	4693      	mov	fp, r2
 80039d8:	460c      	mov	r4, r1
 80039da:	bf28      	it	cs
 80039dc:	4699      	movcs	r9, r3
 80039de:	e424      	b.n	800322a <_vfprintf_r+0xdf2>
 80039e0:	3001      	adds	r0, #1
 80039e2:	4429      	add	r1, r5
 80039e4:	2807      	cmp	r0, #7
 80039e6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80039ea:	e9c2 6500 	strd	r6, r5, [r2]
 80039ee:	dcd3      	bgt.n	8003998 <_vfprintf_r+0x1560>
 80039f0:	f898 3000 	ldrb.w	r3, [r8]
 80039f4:	3208      	adds	r2, #8
 80039f6:	441f      	add	r7, r3
 80039f8:	e780      	b.n	80038fc <_vfprintf_r+0x14c4>
 80039fa:	aa2a      	add	r2, sp, #168	; 0xa8
 80039fc:	4651      	mov	r1, sl
 80039fe:	4648      	mov	r0, r9
 8003a00:	f003 f848 	bl	8006a94 <__sprint_r>
 8003a04:	b9a8      	cbnz	r0, 8003a32 <_vfprintf_r+0x15fa>
 8003a06:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a08:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a0a:	e78e      	b.n	800392a <_vfprintf_r+0x14f2>
 8003a0c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a0e:	4651      	mov	r1, sl
 8003a10:	4648      	mov	r0, r9
 8003a12:	f003 f83f 	bl	8006a94 <__sprint_r>
 8003a16:	b960      	cbnz	r0, 8003a32 <_vfprintf_r+0x15fa>
 8003a18:	f898 3000 	ldrb.w	r3, [r8]
 8003a1c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a1e:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a20:	e798      	b.n	8003954 <_vfprintf_r+0x151c>
 8003a22:	4638      	mov	r0, r7
 8003a24:	f7fc fe0c 	bl	8000640 <strlen>
 8003a28:	46a9      	mov	r9, r5
 8003a2a:	4603      	mov	r3, r0
 8003a2c:	9009      	str	r0, [sp, #36]	; 0x24
 8003a2e:	f7ff b8f4 	b.w	8002c1a <_vfprintf_r+0x7e2>
 8003a32:	46d1      	mov	r9, sl
 8003a34:	f7ff ba7a 	b.w	8002f2c <_vfprintf_r+0xaf4>
 8003a38:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a3a:	4619      	mov	r1, r3
 8003a3c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a3e:	4299      	cmp	r1, r3
 8003a40:	f300 8082 	bgt.w	8003b48 <_vfprintf_r+0x1710>
 8003a44:	07c4      	lsls	r4, r0, #31
 8003a46:	f140 816b 	bpl.w	8003d20 <_vfprintf_r+0x18e8>
 8003a4a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003a4c:	4413      	add	r3, r2
 8003a4e:	9309      	str	r3, [sp, #36]	; 0x24
 8003a50:	0541      	lsls	r1, r0, #21
 8003a52:	d503      	bpl.n	8003a5c <_vfprintf_r+0x1624>
 8003a54:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a56:	2b00      	cmp	r3, #0
 8003a58:	f300 80e6 	bgt.w	8003c28 <_vfprintf_r+0x17f0>
 8003a5c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a5e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003a62:	9304      	str	r3, [sp, #16]
 8003a64:	2667      	movs	r6, #103	; 0x67
 8003a66:	2300      	movs	r3, #0
 8003a68:	930f      	str	r3, [sp, #60]	; 0x3c
 8003a6a:	9314      	str	r3, [sp, #80]	; 0x50
 8003a6c:	e586      	b.n	800357c <_vfprintf_r+0x1144>
 8003a6e:	222d      	movs	r2, #45	; 0x2d
 8003a70:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003a74:	f04f 0900 	mov.w	r9, #0
 8003a78:	f7fe be6c 	b.w	8002754 <_vfprintf_r+0x31c>
 8003a7c:	46a1      	mov	r9, r4
 8003a7e:	f7ff ba55 	b.w	8002f2c <_vfprintf_r+0xaf4>
 8003a82:	900a      	str	r0, [sp, #40]	; 0x28
 8003a84:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003a88:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003a8c:	931f      	str	r3, [sp, #124]	; 0x7c
 8003a8e:	232d      	movs	r3, #45	; 0x2d
 8003a90:	911e      	str	r1, [sp, #120]	; 0x78
 8003a92:	930b      	str	r3, [sp, #44]	; 0x2c
 8003a94:	e619      	b.n	80036ca <_vfprintf_r+0x1292>
 8003a96:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a98:	9328      	str	r3, [sp, #160]	; 0xa0
 8003a9a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a9c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003aa0:	7bd9      	ldrb	r1, [r3, #15]
 8003aa2:	4291      	cmp	r1, r2
 8003aa4:	462b      	mov	r3, r5
 8003aa6:	d109      	bne.n	8003abc <_vfprintf_r+0x1684>
 8003aa8:	2030      	movs	r0, #48	; 0x30
 8003aaa:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003aae:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003ab0:	1e5a      	subs	r2, r3, #1
 8003ab2:	9228      	str	r2, [sp, #160]	; 0xa0
 8003ab4:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003ab8:	4291      	cmp	r1, r2
 8003aba:	d0f6      	beq.n	8003aaa <_vfprintf_r+0x1672>
 8003abc:	2a39      	cmp	r2, #57	; 0x39
 8003abe:	bf0b      	itete	eq
 8003ac0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003ac2:	3201      	addne	r2, #1
 8003ac4:	7a92      	ldrbeq	r2, [r2, #10]
 8003ac6:	b2d2      	uxtbne	r2, r2
 8003ac8:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003acc:	e682      	b.n	80037d4 <_vfprintf_r+0x139c>
 8003ace:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003ad2:	f43f ad9f 	beq.w	8003614 <_vfprintf_r+0x11dc>
 8003ad6:	9a05      	ldr	r2, [sp, #20]
 8003ad8:	701a      	strb	r2, [r3, #0]
 8003ada:	4657      	mov	r7, sl
 8003adc:	f7fe bf52 	b.w	8002984 <_vfprintf_r+0x54c>
 8003ae0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ae2:	9907      	ldr	r1, [sp, #28]
 8003ae4:	9803      	ldr	r0, [sp, #12]
 8003ae6:	f002 ffd5 	bl	8006a94 <__sprint_r>
 8003aea:	2800      	cmp	r0, #0
 8003aec:	f47f aa1c 	bne.w	8002f28 <_vfprintf_r+0xaf0>
 8003af0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003af2:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003af6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003afa:	e571      	b.n	80035e0 <_vfprintf_r+0x11a8>
 8003afc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003afe:	2b00      	cmp	r3, #0
 8003b00:	f340 8164 	ble.w	8003dcc <_vfprintf_r+0x1994>
 8003b04:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b06:	f1b9 0f00 	cmp.w	r9, #0
 8003b0a:	f040 8103 	bne.w	8003d14 <_vfprintf_r+0x18dc>
 8003b0e:	07c6      	lsls	r6, r0, #31
 8003b10:	f100 8100 	bmi.w	8003d14 <_vfprintf_r+0x18dc>
 8003b14:	9309      	str	r3, [sp, #36]	; 0x24
 8003b16:	2666      	movs	r6, #102	; 0x66
 8003b18:	0543      	lsls	r3, r0, #21
 8003b1a:	f100 8086 	bmi.w	8003c2a <_vfprintf_r+0x17f2>
 8003b1e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b20:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b24:	9304      	str	r3, [sp, #16]
 8003b26:	e79e      	b.n	8003a66 <_vfprintf_r+0x162e>
 8003b28:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b2a:	9907      	ldr	r1, [sp, #28]
 8003b2c:	9803      	ldr	r0, [sp, #12]
 8003b2e:	f002 ffb1 	bl	8006a94 <__sprint_r>
 8003b32:	2800      	cmp	r0, #0
 8003b34:	f47f a9f8 	bne.w	8002f28 <_vfprintf_r+0xaf0>
 8003b38:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b3a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003b3c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b3e:	1ad3      	subs	r3, r2, r3
 8003b40:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b44:	f7ff bb90 	b.w	8003268 <_vfprintf_r+0xe30>
 8003b48:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b4a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b4c:	4413      	add	r3, r2
 8003b4e:	9309      	str	r3, [sp, #36]	; 0x24
 8003b50:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b52:	2b00      	cmp	r3, #0
 8003b54:	f340 8149 	ble.w	8003dea <_vfprintf_r+0x19b2>
 8003b58:	2667      	movs	r6, #103	; 0x67
 8003b5a:	e7dd      	b.n	8003b18 <_vfprintf_r+0x16e0>
 8003b5c:	2330      	movs	r3, #48	; 0x30
 8003b5e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003b62:	2358      	movs	r3, #88	; 0x58
 8003b64:	e595      	b.n	8003692 <_vfprintf_r+0x125a>
 8003b66:	9803      	ldr	r0, [sp, #12]
 8003b68:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b6a:	4649      	mov	r1, r9
 8003b6c:	f002 ff92 	bl	8006a94 <__sprint_r>
 8003b70:	2800      	cmp	r0, #0
 8003b72:	f47f a9e0 	bne.w	8002f36 <_vfprintf_r+0xafe>
 8003b76:	f7fe bf0f 	b.w	8002998 <_vfprintf_r+0x560>
 8003b7a:	a824      	add	r0, sp, #144	; 0x90
 8003b7c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003b80:	f002 fe90 	bl	80068a4 <frexp>
 8003b84:	2200      	movs	r2, #0
 8003b86:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003b8a:	ec51 0b10 	vmov	r0, r1, d0
 8003b8e:	f7fc ffd3 	bl	8000b38 <__aeabi_dmul>
 8003b92:	2200      	movs	r2, #0
 8003b94:	2300      	movs	r3, #0
 8003b96:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003b9a:	f7fd fa35 	bl	8001008 <__aeabi_dcmpeq>
 8003b9e:	b108      	cbz	r0, 8003ba4 <_vfprintf_r+0x176c>
 8003ba0:	2301      	movs	r3, #1
 8003ba2:	9324      	str	r3, [sp, #144]	; 0x90
 8003ba4:	4b02      	ldr	r3, [pc, #8]	; (8003bb0 <_vfprintf_r+0x1778>)
 8003ba6:	9309      	str	r3, [sp, #36]	; 0x24
 8003ba8:	e5ac      	b.n	8003704 <_vfprintf_r+0x12cc>
 8003baa:	bf00      	nop
 8003bac:	08007188 	.word	0x08007188
 8003bb0:	08007144 	.word	0x08007144
 8003bb4:	425d      	negs	r5, r3
 8003bb6:	3310      	adds	r3, #16
 8003bb8:	4bb9      	ldr	r3, [pc, #740]	; (8003ea0 <_vfprintf_r+0x1a68>)
 8003bba:	f280 8097 	bge.w	8003cec <_vfprintf_r+0x18b4>
 8003bbe:	4619      	mov	r1, r3
 8003bc0:	2610      	movs	r6, #16
 8003bc2:	4623      	mov	r3, r4
 8003bc4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003bc8:	460c      	mov	r4, r1
 8003bca:	e005      	b.n	8003bd8 <_vfprintf_r+0x17a0>
 8003bcc:	f10b 0b08 	add.w	fp, fp, #8
 8003bd0:	3d10      	subs	r5, #16
 8003bd2:	2d10      	cmp	r5, #16
 8003bd4:	f340 8087 	ble.w	8003ce6 <_vfprintf_r+0x18ae>
 8003bd8:	3201      	adds	r2, #1
 8003bda:	3310      	adds	r3, #16
 8003bdc:	2a07      	cmp	r2, #7
 8003bde:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003be2:	e9cb 4600 	strd	r4, r6, [fp]
 8003be6:	ddf1      	ble.n	8003bcc <_vfprintf_r+0x1794>
 8003be8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bea:	9907      	ldr	r1, [sp, #28]
 8003bec:	4648      	mov	r0, r9
 8003bee:	f002 ff51 	bl	8006a94 <__sprint_r>
 8003bf2:	2800      	cmp	r0, #0
 8003bf4:	f47f a998 	bne.w	8002f28 <_vfprintf_r+0xaf0>
 8003bf8:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003bfc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c00:	e7e6      	b.n	8003bd0 <_vfprintf_r+0x1798>
 8003c02:	f109 0101 	add.w	r1, r9, #1
 8003c06:	9803      	ldr	r0, [sp, #12]
 8003c08:	f001 fe80 	bl	800590c <_malloc_r>
 8003c0c:	4607      	mov	r7, r0
 8003c0e:	2800      	cmp	r0, #0
 8003c10:	f000 813b 	beq.w	8003e8a <_vfprintf_r+0x1a52>
 8003c14:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003c18:	930e      	str	r3, [sp, #56]	; 0x38
 8003c1a:	f026 0320 	bic.w	r3, r6, #32
 8003c1e:	9304      	str	r3, [sp, #16]
 8003c20:	46a0      	mov	r8, r4
 8003c22:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003c24:	900a      	str	r0, [sp, #40]	; 0x28
 8003c26:	e547      	b.n	80036b8 <_vfprintf_r+0x1280>
 8003c28:	2667      	movs	r6, #103	; 0x67
 8003c2a:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003c2c:	2200      	movs	r2, #0
 8003c2e:	920f      	str	r2, [sp, #60]	; 0x3c
 8003c30:	9214      	str	r2, [sp, #80]	; 0x50
 8003c32:	7803      	ldrb	r3, [r0, #0]
 8003c34:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003c36:	2bff      	cmp	r3, #255	; 0xff
 8003c38:	d00c      	beq.n	8003c54 <_vfprintf_r+0x181c>
 8003c3a:	4293      	cmp	r3, r2
 8003c3c:	da0a      	bge.n	8003c54 <_vfprintf_r+0x181c>
 8003c3e:	7841      	ldrb	r1, [r0, #1]
 8003c40:	1ad2      	subs	r2, r2, r3
 8003c42:	b1a9      	cbz	r1, 8003c70 <_vfprintf_r+0x1838>
 8003c44:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c46:	3301      	adds	r3, #1
 8003c48:	9314      	str	r3, [sp, #80]	; 0x50
 8003c4a:	460b      	mov	r3, r1
 8003c4c:	2bff      	cmp	r3, #255	; 0xff
 8003c4e:	f100 0001 	add.w	r0, r0, #1
 8003c52:	d1f2      	bne.n	8003c3a <_vfprintf_r+0x1802>
 8003c54:	9211      	str	r2, [sp, #68]	; 0x44
 8003c56:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c58:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003c5a:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003c5c:	901a      	str	r0, [sp, #104]	; 0x68
 8003c5e:	4413      	add	r3, r2
 8003c60:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003c62:	fb02 1303 	mla	r3, r2, r3, r1
 8003c66:	9309      	str	r3, [sp, #36]	; 0x24
 8003c68:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003c6c:	9304      	str	r3, [sp, #16]
 8003c6e:	e485      	b.n	800357c <_vfprintf_r+0x1144>
 8003c70:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003c72:	3101      	adds	r1, #1
 8003c74:	910f      	str	r1, [sp, #60]	; 0x3c
 8003c76:	e7de      	b.n	8003c36 <_vfprintf_r+0x17fe>
 8003c78:	aa28      	add	r2, sp, #160	; 0xa0
 8003c7a:	ab25      	add	r3, sp, #148	; 0x94
 8003c7c:	e9cd 3200 	strd	r3, r2, [sp]
 8003c80:	2103      	movs	r1, #3
 8003c82:	ab24      	add	r3, sp, #144	; 0x90
 8003c84:	464a      	mov	r2, r9
 8003c86:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c8a:	9803      	ldr	r0, [sp, #12]
 8003c8c:	f000 fa5c 	bl	8004148 <_dtoa_r>
 8003c90:	464d      	mov	r5, r9
 8003c92:	4607      	mov	r7, r0
 8003c94:	eb00 0409 	add.w	r4, r0, r9
 8003c98:	783b      	ldrb	r3, [r7, #0]
 8003c9a:	2b30      	cmp	r3, #48	; 0x30
 8003c9c:	f000 80be 	beq.w	8003e1c <_vfprintf_r+0x19e4>
 8003ca0:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003ca2:	442c      	add	r4, r5
 8003ca4:	2200      	movs	r2, #0
 8003ca6:	2300      	movs	r3, #0
 8003ca8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003cac:	f7fd f9ac 	bl	8001008 <__aeabi_dcmpeq>
 8003cb0:	b108      	cbz	r0, 8003cb6 <_vfprintf_r+0x187e>
 8003cb2:	4623      	mov	r3, r4
 8003cb4:	e413      	b.n	80034de <_vfprintf_r+0x10a6>
 8003cb6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003cb8:	42a3      	cmp	r3, r4
 8003cba:	f4bf ac10 	bcs.w	80034de <_vfprintf_r+0x10a6>
 8003cbe:	2130      	movs	r1, #48	; 0x30
 8003cc0:	1c5a      	adds	r2, r3, #1
 8003cc2:	9228      	str	r2, [sp, #160]	; 0xa0
 8003cc4:	7019      	strb	r1, [r3, #0]
 8003cc6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003cc8:	429c      	cmp	r4, r3
 8003cca:	d8f9      	bhi.n	8003cc0 <_vfprintf_r+0x1888>
 8003ccc:	e407      	b.n	80034de <_vfprintf_r+0x10a6>
 8003cce:	197c      	adds	r4, r7, r5
 8003cd0:	e7e8      	b.n	8003ca4 <_vfprintf_r+0x186c>
 8003cd2:	f1b9 0f00 	cmp.w	r9, #0
 8003cd6:	f000 8092 	beq.w	8003dfe <_vfprintf_r+0x19c6>
 8003cda:	900a      	str	r0, [sp, #40]	; 0x28
 8003cdc:	e4ec      	b.n	80036b8 <_vfprintf_r+0x1280>
 8003cde:	900a      	str	r0, [sp, #40]	; 0x28
 8003ce0:	f04f 0906 	mov.w	r9, #6
 8003ce4:	e4e8      	b.n	80036b8 <_vfprintf_r+0x1280>
 8003ce6:	4621      	mov	r1, r4
 8003ce8:	461c      	mov	r4, r3
 8003cea:	460b      	mov	r3, r1
 8003cec:	3201      	adds	r2, #1
 8003cee:	442c      	add	r4, r5
 8003cf0:	2a07      	cmp	r2, #7
 8003cf2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003cf6:	e9cb 3500 	strd	r3, r5, [fp]
 8003cfa:	f300 80a9 	bgt.w	8003e50 <_vfprintf_r+0x1a18>
 8003cfe:	f10b 0b08 	add.w	fp, fp, #8
 8003d02:	e470      	b.n	80035e6 <_vfprintf_r+0x11ae>
 8003d04:	469a      	mov	sl, r3
 8003d06:	f7ff bb37 	b.w	8003378 <_vfprintf_r+0xf40>
 8003d0a:	2301      	movs	r3, #1
 8003d0c:	9324      	str	r3, [sp, #144]	; 0x90
 8003d0e:	4b65      	ldr	r3, [pc, #404]	; (8003ea4 <_vfprintf_r+0x1a6c>)
 8003d10:	9309      	str	r3, [sp, #36]	; 0x24
 8003d12:	e4f7      	b.n	8003704 <_vfprintf_r+0x12cc>
 8003d14:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003d16:	4413      	add	r3, r2
 8003d18:	444b      	add	r3, r9
 8003d1a:	9309      	str	r3, [sp, #36]	; 0x24
 8003d1c:	2666      	movs	r6, #102	; 0x66
 8003d1e:	e6fb      	b.n	8003b18 <_vfprintf_r+0x16e0>
 8003d20:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d22:	9309      	str	r3, [sp, #36]	; 0x24
 8003d24:	e694      	b.n	8003a50 <_vfprintf_r+0x1618>
 8003d26:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003d2a:	4664      	mov	r4, ip
 8003d2c:	4d5e      	ldr	r5, [pc, #376]	; (8003ea8 <_vfprintf_r+0x1a70>)
 8003d2e:	e000      	b.n	8003d32 <_vfprintf_r+0x18fa>
 8003d30:	4614      	mov	r4, r2
 8003d32:	fba5 1203 	umull	r1, r2, r5, r3
 8003d36:	08d2      	lsrs	r2, r2, #3
 8003d38:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003d3c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003d40:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003d44:	4613      	mov	r3, r2
 8003d46:	2b09      	cmp	r3, #9
 8003d48:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003d4c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003d50:	dcee      	bgt.n	8003d30 <_vfprintf_r+0x18f8>
 8003d52:	3330      	adds	r3, #48	; 0x30
 8003d54:	3c02      	subs	r4, #2
 8003d56:	b2db      	uxtb	r3, r3
 8003d58:	45a4      	cmp	ip, r4
 8003d5a:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003d5e:	f240 8090 	bls.w	8003e82 <_vfprintf_r+0x1a4a>
 8003d62:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003d66:	4611      	mov	r1, r2
 8003d68:	e001      	b.n	8003d6e <_vfprintf_r+0x1936>
 8003d6a:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003d6e:	f804 3b01 	strb.w	r3, [r4], #1
 8003d72:	458c      	cmp	ip, r1
 8003d74:	d1f9      	bne.n	8003d6a <_vfprintf_r+0x1932>
 8003d76:	ab2a      	add	r3, sp, #168	; 0xa8
 8003d78:	1a9b      	subs	r3, r3, r2
 8003d7a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003d7e:	4413      	add	r3, r2
 8003d80:	f7ff bbe3 	b.w	800354a <_vfprintf_r+0x1112>
 8003d84:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003d86:	4f49      	ldr	r7, [pc, #292]	; (8003eac <_vfprintf_r+0x1a74>)
 8003d88:	2b00      	cmp	r3, #0
 8003d8a:	bfb6      	itet	lt
 8003d8c:	222d      	movlt	r2, #45	; 0x2d
 8003d8e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003d92:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003d96:	4b46      	ldr	r3, [pc, #280]	; (8003eb0 <_vfprintf_r+0x1a78>)
 8003d98:	f7fe bf02 	b.w	8002ba0 <_vfprintf_r+0x768>
 8003d9c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003da0:	f7ff b8c9 	b.w	8002f36 <_vfprintf_r+0xafe>
 8003da4:	aa28      	add	r2, sp, #160	; 0xa0
 8003da6:	ab25      	add	r3, sp, #148	; 0x94
 8003da8:	e9cd 3200 	strd	r3, r2, [sp]
 8003dac:	2103      	movs	r1, #3
 8003dae:	ab24      	add	r3, sp, #144	; 0x90
 8003db0:	464a      	mov	r2, r9
 8003db2:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003db6:	9803      	ldr	r0, [sp, #12]
 8003db8:	f000 f9c6 	bl	8004148 <_dtoa_r>
 8003dbc:	464d      	mov	r5, r9
 8003dbe:	4607      	mov	r7, r0
 8003dc0:	2e46      	cmp	r6, #70	; 0x46
 8003dc2:	eb07 0405 	add.w	r4, r7, r5
 8003dc6:	f43f af67 	beq.w	8003c98 <_vfprintf_r+0x1860>
 8003dca:	e76b      	b.n	8003ca4 <_vfprintf_r+0x186c>
 8003dcc:	f1b9 0f00 	cmp.w	r9, #0
 8003dd0:	d131      	bne.n	8003e36 <_vfprintf_r+0x19fe>
 8003dd2:	07c5      	lsls	r5, r0, #31
 8003dd4:	d42f      	bmi.n	8003e36 <_vfprintf_r+0x19fe>
 8003dd6:	2301      	movs	r3, #1
 8003dd8:	9304      	str	r3, [sp, #16]
 8003dda:	9309      	str	r3, [sp, #36]	; 0x24
 8003ddc:	2666      	movs	r6, #102	; 0x66
 8003dde:	e642      	b.n	8003a66 <_vfprintf_r+0x162e>
 8003de0:	07c3      	lsls	r3, r0, #31
 8003de2:	f57f abbf 	bpl.w	8003564 <_vfprintf_r+0x112c>
 8003de6:	f7ff bbb9 	b.w	800355c <_vfprintf_r+0x1124>
 8003dea:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003dec:	f1c3 0301 	rsb	r3, r3, #1
 8003df0:	441a      	add	r2, r3
 8003df2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003df6:	9209      	str	r2, [sp, #36]	; 0x24
 8003df8:	9304      	str	r3, [sp, #16]
 8003dfa:	2667      	movs	r6, #103	; 0x67
 8003dfc:	e633      	b.n	8003a66 <_vfprintf_r+0x162e>
 8003dfe:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003e02:	f04f 0901 	mov.w	r9, #1
 8003e06:	e457      	b.n	80036b8 <_vfprintf_r+0x1280>
 8003e08:	465a      	mov	r2, fp
 8003e0a:	e511      	b.n	8003830 <_vfprintf_r+0x13f8>
 8003e0c:	2e47      	cmp	r6, #71	; 0x47
 8003e0e:	f47f af5e 	bne.w	8003cce <_vfprintf_r+0x1896>
 8003e12:	f018 0f01 	tst.w	r8, #1
 8003e16:	f43f ab61 	beq.w	80034dc <_vfprintf_r+0x10a4>
 8003e1a:	e7d1      	b.n	8003dc0 <_vfprintf_r+0x1988>
 8003e1c:	2200      	movs	r2, #0
 8003e1e:	2300      	movs	r3, #0
 8003e20:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003e24:	f7fd f8f0 	bl	8001008 <__aeabi_dcmpeq>
 8003e28:	2800      	cmp	r0, #0
 8003e2a:	f47f af39 	bne.w	8003ca0 <_vfprintf_r+0x1868>
 8003e2e:	f1c5 0501 	rsb	r5, r5, #1
 8003e32:	9524      	str	r5, [sp, #144]	; 0x90
 8003e34:	e735      	b.n	8003ca2 <_vfprintf_r+0x186a>
 8003e36:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003e38:	3301      	adds	r3, #1
 8003e3a:	444b      	add	r3, r9
 8003e3c:	9309      	str	r3, [sp, #36]	; 0x24
 8003e3e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003e42:	9304      	str	r3, [sp, #16]
 8003e44:	2666      	movs	r6, #102	; 0x66
 8003e46:	e60e      	b.n	8003a66 <_vfprintf_r+0x162e>
 8003e48:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003e4c:	f7ff bb7a 	b.w	8003544 <_vfprintf_r+0x110c>
 8003e50:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e52:	9907      	ldr	r1, [sp, #28]
 8003e54:	9803      	ldr	r0, [sp, #12]
 8003e56:	f002 fe1d 	bl	8006a94 <__sprint_r>
 8003e5a:	2800      	cmp	r0, #0
 8003e5c:	f47f a864 	bne.w	8002f28 <_vfprintf_r+0xaf0>
 8003e60:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003e64:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e68:	f7ff bbbd 	b.w	80035e6 <_vfprintf_r+0x11ae>
 8003e6c:	9908      	ldr	r1, [sp, #32]
 8003e6e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003e72:	680b      	ldr	r3, [r1, #0]
 8003e74:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003e78:	1d0b      	adds	r3, r1, #4
 8003e7a:	4692      	mov	sl, r2
 8003e7c:	9308      	str	r3, [sp, #32]
 8003e7e:	f7fe bb59 	b.w	8002534 <_vfprintf_r+0xfc>
 8003e82:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003e86:	f7ff bb60 	b.w	800354a <_vfprintf_r+0x1112>
 8003e8a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003e8e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003e92:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003e96:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003e9a:	f7ff b84c 	b.w	8002f36 <_vfprintf_r+0xafe>
 8003e9e:	bf00      	nop
 8003ea0:	08007188 	.word	0x08007188
 8003ea4:	08007158 	.word	0x08007158
 8003ea8:	cccccccd 	.word	0xcccccccd
 8003eac:	08007140 	.word	0x08007140
 8003eb0:	0800713c 	.word	0x0800713c

08003eb4 <__sbprintf>:
 8003eb4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003eb8:	460c      	mov	r4, r1
 8003eba:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003ebe:	8989      	ldrh	r1, [r1, #12]
 8003ec0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003ec2:	89e5      	ldrh	r5, [r4, #14]
 8003ec4:	9619      	str	r6, [sp, #100]	; 0x64
 8003ec6:	f021 0102 	bic.w	r1, r1, #2
 8003eca:	4606      	mov	r6, r0
 8003ecc:	69e0      	ldr	r0, [r4, #28]
 8003ece:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003ed2:	4617      	mov	r7, r2
 8003ed4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003ed8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003eda:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003ede:	4698      	mov	r8, r3
 8003ee0:	ad1a      	add	r5, sp, #104	; 0x68
 8003ee2:	2300      	movs	r3, #0
 8003ee4:	9007      	str	r0, [sp, #28]
 8003ee6:	a816      	add	r0, sp, #88	; 0x58
 8003ee8:	9209      	str	r2, [sp, #36]	; 0x24
 8003eea:	9306      	str	r3, [sp, #24]
 8003eec:	9500      	str	r5, [sp, #0]
 8003eee:	9504      	str	r5, [sp, #16]
 8003ef0:	9102      	str	r1, [sp, #8]
 8003ef2:	9105      	str	r1, [sp, #20]
 8003ef4:	f001 fc8a 	bl	800580c <__retarget_lock_init_recursive>
 8003ef8:	4643      	mov	r3, r8
 8003efa:	463a      	mov	r2, r7
 8003efc:	4669      	mov	r1, sp
 8003efe:	4630      	mov	r0, r6
 8003f00:	f7fe fa9a 	bl	8002438 <_vfprintf_r>
 8003f04:	1e05      	subs	r5, r0, #0
 8003f06:	db07      	blt.n	8003f18 <__sbprintf+0x64>
 8003f08:	4630      	mov	r0, r6
 8003f0a:	4669      	mov	r1, sp
 8003f0c:	f001 f8d6 	bl	80050bc <_fflush_r>
 8003f10:	2800      	cmp	r0, #0
 8003f12:	bf18      	it	ne
 8003f14:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003f18:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003f1c:	065b      	lsls	r3, r3, #25
 8003f1e:	d503      	bpl.n	8003f28 <__sbprintf+0x74>
 8003f20:	89a3      	ldrh	r3, [r4, #12]
 8003f22:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003f26:	81a3      	strh	r3, [r4, #12]
 8003f28:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003f2a:	f001 fc71 	bl	8005810 <__retarget_lock_close_recursive>
 8003f2e:	4628      	mov	r0, r5
 8003f30:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003f34:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003f38 <__swsetup_r>:
 8003f38:	b538      	push	{r3, r4, r5, lr}
 8003f3a:	4b31      	ldr	r3, [pc, #196]	; (8004000 <__swsetup_r+0xc8>)
 8003f3c:	681b      	ldr	r3, [r3, #0]
 8003f3e:	4605      	mov	r5, r0
 8003f40:	460c      	mov	r4, r1
 8003f42:	b113      	cbz	r3, 8003f4a <__swsetup_r+0x12>
 8003f44:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003f46:	2a00      	cmp	r2, #0
 8003f48:	d03a      	beq.n	8003fc0 <__swsetup_r+0x88>
 8003f4a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003f4e:	b293      	uxth	r3, r2
 8003f50:	0718      	lsls	r0, r3, #28
 8003f52:	d50c      	bpl.n	8003f6e <__swsetup_r+0x36>
 8003f54:	6920      	ldr	r0, [r4, #16]
 8003f56:	b1a8      	cbz	r0, 8003f84 <__swsetup_r+0x4c>
 8003f58:	f013 0201 	ands.w	r2, r3, #1
 8003f5c:	d020      	beq.n	8003fa0 <__swsetup_r+0x68>
 8003f5e:	6963      	ldr	r3, [r4, #20]
 8003f60:	2200      	movs	r2, #0
 8003f62:	425b      	negs	r3, r3
 8003f64:	61a3      	str	r3, [r4, #24]
 8003f66:	60a2      	str	r2, [r4, #8]
 8003f68:	b300      	cbz	r0, 8003fac <__swsetup_r+0x74>
 8003f6a:	2000      	movs	r0, #0
 8003f6c:	bd38      	pop	{r3, r4, r5, pc}
 8003f6e:	06d9      	lsls	r1, r3, #27
 8003f70:	d53e      	bpl.n	8003ff0 <__swsetup_r+0xb8>
 8003f72:	0758      	lsls	r0, r3, #29
 8003f74:	d428      	bmi.n	8003fc8 <__swsetup_r+0x90>
 8003f76:	6920      	ldr	r0, [r4, #16]
 8003f78:	f042 0308 	orr.w	r3, r2, #8
 8003f7c:	81a3      	strh	r3, [r4, #12]
 8003f7e:	b29b      	uxth	r3, r3
 8003f80:	2800      	cmp	r0, #0
 8003f82:	d1e9      	bne.n	8003f58 <__swsetup_r+0x20>
 8003f84:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003f88:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003f8c:	d0e4      	beq.n	8003f58 <__swsetup_r+0x20>
 8003f8e:	4628      	mov	r0, r5
 8003f90:	4621      	mov	r1, r4
 8003f92:	f001 fc71 	bl	8005878 <__smakebuf_r>
 8003f96:	89a3      	ldrh	r3, [r4, #12]
 8003f98:	6920      	ldr	r0, [r4, #16]
 8003f9a:	f013 0201 	ands.w	r2, r3, #1
 8003f9e:	d1de      	bne.n	8003f5e <__swsetup_r+0x26>
 8003fa0:	0799      	lsls	r1, r3, #30
 8003fa2:	bf58      	it	pl
 8003fa4:	6962      	ldrpl	r2, [r4, #20]
 8003fa6:	60a2      	str	r2, [r4, #8]
 8003fa8:	2800      	cmp	r0, #0
 8003faa:	d1de      	bne.n	8003f6a <__swsetup_r+0x32>
 8003fac:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003fb0:	061a      	lsls	r2, r3, #24
 8003fb2:	d5db      	bpl.n	8003f6c <__swsetup_r+0x34>
 8003fb4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003fb8:	81a3      	strh	r3, [r4, #12]
 8003fba:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003fbe:	bd38      	pop	{r3, r4, r5, pc}
 8003fc0:	4618      	mov	r0, r3
 8003fc2:	f001 f8d7 	bl	8005174 <__sinit>
 8003fc6:	e7c0      	b.n	8003f4a <__swsetup_r+0x12>
 8003fc8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8003fca:	b151      	cbz	r1, 8003fe2 <__swsetup_r+0xaa>
 8003fcc:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8003fd0:	4299      	cmp	r1, r3
 8003fd2:	d004      	beq.n	8003fde <__swsetup_r+0xa6>
 8003fd4:	4628      	mov	r0, r5
 8003fd6:	f001 f96f 	bl	80052b8 <_free_r>
 8003fda:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003fde:	2300      	movs	r3, #0
 8003fe0:	6323      	str	r3, [r4, #48]	; 0x30
 8003fe2:	2300      	movs	r3, #0
 8003fe4:	6920      	ldr	r0, [r4, #16]
 8003fe6:	6063      	str	r3, [r4, #4]
 8003fe8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8003fec:	6020      	str	r0, [r4, #0]
 8003fee:	e7c3      	b.n	8003f78 <__swsetup_r+0x40>
 8003ff0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8003ff4:	2309      	movs	r3, #9
 8003ff6:	602b      	str	r3, [r5, #0]
 8003ff8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003ffc:	81a2      	strh	r2, [r4, #12]
 8003ffe:	bd38      	pop	{r3, r4, r5, pc}
 8004000:	20000068 	.word	0x20000068

08004004 <register_fini>:
 8004004:	4b02      	ldr	r3, [pc, #8]	; (8004010 <register_fini+0xc>)
 8004006:	b113      	cbz	r3, 800400e <register_fini+0xa>
 8004008:	4802      	ldr	r0, [pc, #8]	; (8004014 <register_fini+0x10>)
 800400a:	f000 b805 	b.w	8004018 <atexit>
 800400e:	4770      	bx	lr
 8004010:	00000000 	.word	0x00000000
 8004014:	080051e5 	.word	0x080051e5

08004018 <atexit>:
 8004018:	2300      	movs	r3, #0
 800401a:	4601      	mov	r1, r0
 800401c:	461a      	mov	r2, r3
 800401e:	4618      	mov	r0, r3
 8004020:	f002 bd58 	b.w	8006ad4 <__register_exitproc>

08004024 <quorem>:
 8004024:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004028:	6903      	ldr	r3, [r0, #16]
 800402a:	690f      	ldr	r7, [r1, #16]
 800402c:	42bb      	cmp	r3, r7
 800402e:	b083      	sub	sp, #12
 8004030:	f2c0 8086 	blt.w	8004140 <quorem+0x11c>
 8004034:	3f01      	subs	r7, #1
 8004036:	f101 0914 	add.w	r9, r1, #20
 800403a:	f100 0a14 	add.w	sl, r0, #20
 800403e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004042:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004046:	00bc      	lsls	r4, r7, #2
 8004048:	3201      	adds	r2, #1
 800404a:	fbb3 f8f2 	udiv	r8, r3, r2
 800404e:	eb0a 0304 	add.w	r3, sl, r4
 8004052:	9400      	str	r4, [sp, #0]
 8004054:	eb09 0b04 	add.w	fp, r9, r4
 8004058:	9301      	str	r3, [sp, #4]
 800405a:	f1b8 0f00 	cmp.w	r8, #0
 800405e:	d038      	beq.n	80040d2 <quorem+0xae>
 8004060:	2500      	movs	r5, #0
 8004062:	462e      	mov	r6, r5
 8004064:	46ce      	mov	lr, r9
 8004066:	46d4      	mov	ip, sl
 8004068:	f85e 4b04 	ldr.w	r4, [lr], #4
 800406c:	f8dc 3000 	ldr.w	r3, [ip]
 8004070:	b2a2      	uxth	r2, r4
 8004072:	fb08 5502 	mla	r5, r8, r2, r5
 8004076:	0c22      	lsrs	r2, r4, #16
 8004078:	0c2c      	lsrs	r4, r5, #16
 800407a:	fb08 4202 	mla	r2, r8, r2, r4
 800407e:	b2ad      	uxth	r5, r5
 8004080:	1b75      	subs	r5, r6, r5
 8004082:	b296      	uxth	r6, r2
 8004084:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004088:	fa15 f383 	uxtah	r3, r5, r3
 800408c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004090:	b29b      	uxth	r3, r3
 8004092:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004096:	45f3      	cmp	fp, lr
 8004098:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800409c:	f84c 3b04 	str.w	r3, [ip], #4
 80040a0:	ea4f 4626 	mov.w	r6, r6, asr #16
 80040a4:	d2e0      	bcs.n	8004068 <quorem+0x44>
 80040a6:	9b00      	ldr	r3, [sp, #0]
 80040a8:	f85a 3003 	ldr.w	r3, [sl, r3]
 80040ac:	b98b      	cbnz	r3, 80040d2 <quorem+0xae>
 80040ae:	9a01      	ldr	r2, [sp, #4]
 80040b0:	1f13      	subs	r3, r2, #4
 80040b2:	459a      	cmp	sl, r3
 80040b4:	d20c      	bcs.n	80040d0 <quorem+0xac>
 80040b6:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80040ba:	b94b      	cbnz	r3, 80040d0 <quorem+0xac>
 80040bc:	f1a2 0308 	sub.w	r3, r2, #8
 80040c0:	e002      	b.n	80040c8 <quorem+0xa4>
 80040c2:	681a      	ldr	r2, [r3, #0]
 80040c4:	3b04      	subs	r3, #4
 80040c6:	b91a      	cbnz	r2, 80040d0 <quorem+0xac>
 80040c8:	459a      	cmp	sl, r3
 80040ca:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80040ce:	d3f8      	bcc.n	80040c2 <quorem+0x9e>
 80040d0:	6107      	str	r7, [r0, #16]
 80040d2:	4604      	mov	r4, r0
 80040d4:	f002 f944 	bl	8006360 <__mcmp>
 80040d8:	2800      	cmp	r0, #0
 80040da:	db2d      	blt.n	8004138 <quorem+0x114>
 80040dc:	f108 0801 	add.w	r8, r8, #1
 80040e0:	4655      	mov	r5, sl
 80040e2:	2300      	movs	r3, #0
 80040e4:	f859 1b04 	ldr.w	r1, [r9], #4
 80040e8:	6828      	ldr	r0, [r5, #0]
 80040ea:	b28a      	uxth	r2, r1
 80040ec:	1a9a      	subs	r2, r3, r2
 80040ee:	0c0b      	lsrs	r3, r1, #16
 80040f0:	fa12 f280 	uxtah	r2, r2, r0
 80040f4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80040f8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80040fc:	b292      	uxth	r2, r2
 80040fe:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004102:	45cb      	cmp	fp, r9
 8004104:	f845 2b04 	str.w	r2, [r5], #4
 8004108:	ea4f 4323 	mov.w	r3, r3, asr #16
 800410c:	d2ea      	bcs.n	80040e4 <quorem+0xc0>
 800410e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004112:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004116:	b97a      	cbnz	r2, 8004138 <quorem+0x114>
 8004118:	1f1a      	subs	r2, r3, #4
 800411a:	4592      	cmp	sl, r2
 800411c:	d20b      	bcs.n	8004136 <quorem+0x112>
 800411e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004122:	b942      	cbnz	r2, 8004136 <quorem+0x112>
 8004124:	3b08      	subs	r3, #8
 8004126:	e002      	b.n	800412e <quorem+0x10a>
 8004128:	681a      	ldr	r2, [r3, #0]
 800412a:	3b04      	subs	r3, #4
 800412c:	b91a      	cbnz	r2, 8004136 <quorem+0x112>
 800412e:	459a      	cmp	sl, r3
 8004130:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004134:	d3f8      	bcc.n	8004128 <quorem+0x104>
 8004136:	6127      	str	r7, [r4, #16]
 8004138:	4640      	mov	r0, r8
 800413a:	b003      	add	sp, #12
 800413c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004140:	2000      	movs	r0, #0
 8004142:	b003      	add	sp, #12
 8004144:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004148 <_dtoa_r>:
 8004148:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800414c:	ec55 4b10 	vmov	r4, r5, d0
 8004150:	b09b      	sub	sp, #108	; 0x6c
 8004152:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004154:	9102      	str	r1, [sp, #8]
 8004156:	4681      	mov	r9, r0
 8004158:	9207      	str	r2, [sp, #28]
 800415a:	9305      	str	r3, [sp, #20]
 800415c:	e9cd 4500 	strd	r4, r5, [sp]
 8004160:	b156      	cbz	r6, 8004178 <_dtoa_r+0x30>
 8004162:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004164:	6072      	str	r2, [r6, #4]
 8004166:	2301      	movs	r3, #1
 8004168:	4093      	lsls	r3, r2
 800416a:	60b3      	str	r3, [r6, #8]
 800416c:	4631      	mov	r1, r6
 800416e:	f001 ff07 	bl	8005f80 <_Bfree>
 8004172:	2300      	movs	r3, #0
 8004174:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004178:	f1b5 0800 	subs.w	r8, r5, #0
 800417c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800417e:	bfb4      	ite	lt
 8004180:	2301      	movlt	r3, #1
 8004182:	2300      	movge	r3, #0
 8004184:	6013      	str	r3, [r2, #0]
 8004186:	4b76      	ldr	r3, [pc, #472]	; (8004360 <_dtoa_r+0x218>)
 8004188:	bfbc      	itt	lt
 800418a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800418e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004192:	ea33 0308 	bics.w	r3, r3, r8
 8004196:	f000 80a6 	beq.w	80042e6 <_dtoa_r+0x19e>
 800419a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800419e:	2200      	movs	r2, #0
 80041a0:	2300      	movs	r3, #0
 80041a2:	4630      	mov	r0, r6
 80041a4:	4639      	mov	r1, r7
 80041a6:	f7fc ff2f 	bl	8001008 <__aeabi_dcmpeq>
 80041aa:	4605      	mov	r5, r0
 80041ac:	b178      	cbz	r0, 80041ce <_dtoa_r+0x86>
 80041ae:	9a05      	ldr	r2, [sp, #20]
 80041b0:	2301      	movs	r3, #1
 80041b2:	6013      	str	r3, [r2, #0]
 80041b4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80041b6:	2b00      	cmp	r3, #0
 80041b8:	f000 80c0 	beq.w	800433c <_dtoa_r+0x1f4>
 80041bc:	4b69      	ldr	r3, [pc, #420]	; (8004364 <_dtoa_r+0x21c>)
 80041be:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80041c0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80041c4:	6013      	str	r3, [r2, #0]
 80041c6:	4658      	mov	r0, fp
 80041c8:	b01b      	add	sp, #108	; 0x6c
 80041ca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80041ce:	aa18      	add	r2, sp, #96	; 0x60
 80041d0:	a919      	add	r1, sp, #100	; 0x64
 80041d2:	ec47 6b10 	vmov	d0, r6, r7
 80041d6:	4648      	mov	r0, r9
 80041d8:	f002 f954 	bl	8006484 <__d2b>
 80041dc:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80041e0:	4682      	mov	sl, r0
 80041e2:	f040 80a0 	bne.w	8004326 <_dtoa_r+0x1de>
 80041e6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80041ea:	442c      	add	r4, r5
 80041ec:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80041f0:	2b20      	cmp	r3, #32
 80041f2:	f340 842c 	ble.w	8004a4e <_dtoa_r+0x906>
 80041f6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80041fa:	fa08 f803 	lsl.w	r8, r8, r3
 80041fe:	9b00      	ldr	r3, [sp, #0]
 8004200:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004204:	fa23 f000 	lsr.w	r0, r3, r0
 8004208:	ea48 0000 	orr.w	r0, r8, r0
 800420c:	f7fc fc1a 	bl	8000a44 <__aeabi_ui2d>
 8004210:	2301      	movs	r3, #1
 8004212:	4606      	mov	r6, r0
 8004214:	3c01      	subs	r4, #1
 8004216:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800421a:	930f      	str	r3, [sp, #60]	; 0x3c
 800421c:	4630      	mov	r0, r6
 800421e:	4639      	mov	r1, r7
 8004220:	2200      	movs	r2, #0
 8004222:	4b51      	ldr	r3, [pc, #324]	; (8004368 <_dtoa_r+0x220>)
 8004224:	f7fc fad0 	bl	80007c8 <__aeabi_dsub>
 8004228:	a347      	add	r3, pc, #284	; (adr r3, 8004348 <_dtoa_r+0x200>)
 800422a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800422e:	f7fc fc83 	bl	8000b38 <__aeabi_dmul>
 8004232:	a347      	add	r3, pc, #284	; (adr r3, 8004350 <_dtoa_r+0x208>)
 8004234:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004238:	f7fc fac8 	bl	80007cc <__adddf3>
 800423c:	4606      	mov	r6, r0
 800423e:	4620      	mov	r0, r4
 8004240:	460f      	mov	r7, r1
 8004242:	f7fc fc0f 	bl	8000a64 <__aeabi_i2d>
 8004246:	a344      	add	r3, pc, #272	; (adr r3, 8004358 <_dtoa_r+0x210>)
 8004248:	e9d3 2300 	ldrd	r2, r3, [r3]
 800424c:	f7fc fc74 	bl	8000b38 <__aeabi_dmul>
 8004250:	4602      	mov	r2, r0
 8004252:	460b      	mov	r3, r1
 8004254:	4630      	mov	r0, r6
 8004256:	4639      	mov	r1, r7
 8004258:	f7fc fab8 	bl	80007cc <__adddf3>
 800425c:	4606      	mov	r6, r0
 800425e:	460f      	mov	r7, r1
 8004260:	f7fc ff1a 	bl	8001098 <__aeabi_d2iz>
 8004264:	2200      	movs	r2, #0
 8004266:	9006      	str	r0, [sp, #24]
 8004268:	2300      	movs	r3, #0
 800426a:	4630      	mov	r0, r6
 800426c:	4639      	mov	r1, r7
 800426e:	f7fc fed5 	bl	800101c <__aeabi_dcmplt>
 8004272:	2800      	cmp	r0, #0
 8004274:	f040 8273 	bne.w	800475e <_dtoa_r+0x616>
 8004278:	9e06      	ldr	r6, [sp, #24]
 800427a:	2e16      	cmp	r6, #22
 800427c:	f200 825d 	bhi.w	800473a <_dtoa_r+0x5f2>
 8004280:	4b3a      	ldr	r3, [pc, #232]	; (800436c <_dtoa_r+0x224>)
 8004282:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004286:	e9d3 0100 	ldrd	r0, r1, [r3]
 800428a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800428e:	f7fc fee3 	bl	8001058 <__aeabi_dcmpgt>
 8004292:	2800      	cmp	r0, #0
 8004294:	f000 83d7 	beq.w	8004a46 <_dtoa_r+0x8fe>
 8004298:	1e73      	subs	r3, r6, #1
 800429a:	9306      	str	r3, [sp, #24]
 800429c:	2300      	movs	r3, #0
 800429e:	930d      	str	r3, [sp, #52]	; 0x34
 80042a0:	1b2c      	subs	r4, r5, r4
 80042a2:	f1b4 0801 	subs.w	r8, r4, #1
 80042a6:	f100 8254 	bmi.w	8004752 <_dtoa_r+0x60a>
 80042aa:	2300      	movs	r3, #0
 80042ac:	9308      	str	r3, [sp, #32]
 80042ae:	9b06      	ldr	r3, [sp, #24]
 80042b0:	2b00      	cmp	r3, #0
 80042b2:	f2c0 8245 	blt.w	8004740 <_dtoa_r+0x5f8>
 80042b6:	4498      	add	r8, r3
 80042b8:	930c      	str	r3, [sp, #48]	; 0x30
 80042ba:	2300      	movs	r3, #0
 80042bc:	930b      	str	r3, [sp, #44]	; 0x2c
 80042be:	9b02      	ldr	r3, [sp, #8]
 80042c0:	2b09      	cmp	r3, #9
 80042c2:	d85b      	bhi.n	800437c <_dtoa_r+0x234>
 80042c4:	2b05      	cmp	r3, #5
 80042c6:	f340 83c0 	ble.w	8004a4a <_dtoa_r+0x902>
 80042ca:	3b04      	subs	r3, #4
 80042cc:	9302      	str	r3, [sp, #8]
 80042ce:	2500      	movs	r5, #0
 80042d0:	9b02      	ldr	r3, [sp, #8]
 80042d2:	3b02      	subs	r3, #2
 80042d4:	2b03      	cmp	r3, #3
 80042d6:	f200 8498 	bhi.w	8004c0a <_dtoa_r+0xac2>
 80042da:	e8df f013 	tbh	[pc, r3, lsl #1]
 80042de:	03df      	.short	0x03df
 80042e0:	03e803bf 	.word	0x03e803bf
 80042e4:	04f5      	.short	0x04f5
 80042e6:	9a05      	ldr	r2, [sp, #20]
 80042e8:	f242 730f 	movw	r3, #9999	; 0x270f
 80042ec:	6013      	str	r3, [r2, #0]
 80042ee:	9b00      	ldr	r3, [sp, #0]
 80042f0:	b983      	cbnz	r3, 8004314 <_dtoa_r+0x1cc>
 80042f2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80042f6:	b96b      	cbnz	r3, 8004314 <_dtoa_r+0x1cc>
 80042f8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80042fa:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004370 <_dtoa_r+0x228>
 80042fe:	2b00      	cmp	r3, #0
 8004300:	f43f af61 	beq.w	80041c6 <_dtoa_r+0x7e>
 8004304:	f10b 0308 	add.w	r3, fp, #8
 8004308:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800430a:	4658      	mov	r0, fp
 800430c:	6013      	str	r3, [r2, #0]
 800430e:	b01b      	add	sp, #108	; 0x6c
 8004310:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004314:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004316:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004374 <_dtoa_r+0x22c>
 800431a:	2b00      	cmp	r3, #0
 800431c:	f43f af53 	beq.w	80041c6 <_dtoa_r+0x7e>
 8004320:	f10b 0303 	add.w	r3, fp, #3
 8004324:	e7f0      	b.n	8004308 <_dtoa_r+0x1c0>
 8004326:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800432a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800432e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004330:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004334:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004338:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800433a:	e76f      	b.n	800421c <_dtoa_r+0xd4>
 800433c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004378 <_dtoa_r+0x230>
 8004340:	4658      	mov	r0, fp
 8004342:	b01b      	add	sp, #108	; 0x6c
 8004344:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004348:	636f4361 	.word	0x636f4361
 800434c:	3fd287a7 	.word	0x3fd287a7
 8004350:	8b60c8b3 	.word	0x8b60c8b3
 8004354:	3fc68a28 	.word	0x3fc68a28
 8004358:	509f79fb 	.word	0x509f79fb
 800435c:	3fd34413 	.word	0x3fd34413
 8004360:	7ff00000 	.word	0x7ff00000
 8004364:	08007175 	.word	0x08007175
 8004368:	3ff80000 	.word	0x3ff80000
 800436c:	080071d0 	.word	0x080071d0
 8004370:	08007198 	.word	0x08007198
 8004374:	080071a4 	.word	0x080071a4
 8004378:	08007174 	.word	0x08007174
 800437c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004380:	2501      	movs	r5, #1
 8004382:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004386:	2300      	movs	r3, #0
 8004388:	9302      	str	r3, [sp, #8]
 800438a:	9307      	str	r3, [sp, #28]
 800438c:	2100      	movs	r1, #0
 800438e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004392:	940e      	str	r4, [sp, #56]	; 0x38
 8004394:	4648      	mov	r0, r9
 8004396:	f001 fdcd 	bl	8005f34 <_Balloc>
 800439a:	2c0e      	cmp	r4, #14
 800439c:	4683      	mov	fp, r0
 800439e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80043a2:	f200 80fb 	bhi.w	800459c <_dtoa_r+0x454>
 80043a6:	2d00      	cmp	r5, #0
 80043a8:	f000 80f8 	beq.w	800459c <_dtoa_r+0x454>
 80043ac:	ed9d 7b00 	vldr	d7, [sp]
 80043b0:	9906      	ldr	r1, [sp, #24]
 80043b2:	2900      	cmp	r1, #0
 80043b4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80043b8:	f340 83e5 	ble.w	8004b86 <_dtoa_r+0xa3e>
 80043bc:	4b9d      	ldr	r3, [pc, #628]	; (8004634 <_dtoa_r+0x4ec>)
 80043be:	f001 020f 	and.w	r2, r1, #15
 80043c2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80043c6:	ed93 7b00 	vldr	d7, [r3]
 80043ca:	110c      	asrs	r4, r1, #4
 80043cc:	06e2      	lsls	r2, r4, #27
 80043ce:	ed8d 7b00 	vstr	d7, [sp]
 80043d2:	f140 849e 	bpl.w	8004d12 <_dtoa_r+0xbca>
 80043d6:	4b98      	ldr	r3, [pc, #608]	; (8004638 <_dtoa_r+0x4f0>)
 80043d8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80043dc:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80043e0:	f7fc fcd4 	bl	8000d8c <__aeabi_ddiv>
 80043e4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80043e8:	f004 040f 	and.w	r4, r4, #15
 80043ec:	2603      	movs	r6, #3
 80043ee:	b17c      	cbz	r4, 8004410 <_dtoa_r+0x2c8>
 80043f0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80043f4:	4d90      	ldr	r5, [pc, #576]	; (8004638 <_dtoa_r+0x4f0>)
 80043f6:	07e3      	lsls	r3, r4, #31
 80043f8:	d504      	bpl.n	8004404 <_dtoa_r+0x2bc>
 80043fa:	e9d5 2300 	ldrd	r2, r3, [r5]
 80043fe:	f7fc fb9b 	bl	8000b38 <__aeabi_dmul>
 8004402:	3601      	adds	r6, #1
 8004404:	1064      	asrs	r4, r4, #1
 8004406:	f105 0508 	add.w	r5, r5, #8
 800440a:	d1f4      	bne.n	80043f6 <_dtoa_r+0x2ae>
 800440c:	e9cd 0100 	strd	r0, r1, [sp]
 8004410:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004414:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004418:	f7fc fcb8 	bl	8000d8c <__aeabi_ddiv>
 800441c:	e9cd 0100 	strd	r0, r1, [sp]
 8004420:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004422:	b143      	cbz	r3, 8004436 <_dtoa_r+0x2ee>
 8004424:	2200      	movs	r2, #0
 8004426:	4b85      	ldr	r3, [pc, #532]	; (800463c <_dtoa_r+0x4f4>)
 8004428:	e9dd 0100 	ldrd	r0, r1, [sp]
 800442c:	f7fc fdf6 	bl	800101c <__aeabi_dcmplt>
 8004430:	2800      	cmp	r0, #0
 8004432:	f040 84ff 	bne.w	8004e34 <_dtoa_r+0xcec>
 8004436:	4630      	mov	r0, r6
 8004438:	f7fc fb14 	bl	8000a64 <__aeabi_i2d>
 800443c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004440:	f7fc fb7a 	bl	8000b38 <__aeabi_dmul>
 8004444:	4b7e      	ldr	r3, [pc, #504]	; (8004640 <_dtoa_r+0x4f8>)
 8004446:	2200      	movs	r2, #0
 8004448:	f7fc f9c0 	bl	80007cc <__adddf3>
 800444c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800444e:	4606      	mov	r6, r0
 8004450:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004454:	2b00      	cmp	r3, #0
 8004456:	f000 841c 	beq.w	8004c92 <_dtoa_r+0xb4a>
 800445a:	9b06      	ldr	r3, [sp, #24]
 800445c:	9316      	str	r3, [sp, #88]	; 0x58
 800445e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004460:	9312      	str	r3, [sp, #72]	; 0x48
 8004462:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004466:	f7fc fe17 	bl	8001098 <__aeabi_d2iz>
 800446a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800446c:	4b71      	ldr	r3, [pc, #452]	; (8004634 <_dtoa_r+0x4ec>)
 800446e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004472:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004476:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800447a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800447e:	f7fc faf1 	bl	8000a64 <__aeabi_i2d>
 8004482:	460b      	mov	r3, r1
 8004484:	4602      	mov	r2, r0
 8004486:	e9dd 0100 	ldrd	r0, r1, [sp]
 800448a:	e9cd 6700 	strd	r6, r7, [sp]
 800448e:	f7fc f99b 	bl	80007c8 <__aeabi_dsub>
 8004492:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004494:	b2ed      	uxtb	r5, r5
 8004496:	4606      	mov	r6, r0
 8004498:	460f      	mov	r7, r1
 800449a:	f10b 0401 	add.w	r4, fp, #1
 800449e:	2b00      	cmp	r3, #0
 80044a0:	f000 8458 	beq.w	8004d54 <_dtoa_r+0xc0c>
 80044a4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80044a8:	2000      	movs	r0, #0
 80044aa:	4966      	ldr	r1, [pc, #408]	; (8004644 <_dtoa_r+0x4fc>)
 80044ac:	f7fc fc6e 	bl	8000d8c <__aeabi_ddiv>
 80044b0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80044b4:	f7fc f988 	bl	80007c8 <__aeabi_dsub>
 80044b8:	f88b 5000 	strb.w	r5, [fp]
 80044bc:	4632      	mov	r2, r6
 80044be:	463b      	mov	r3, r7
 80044c0:	e9cd 0100 	strd	r0, r1, [sp]
 80044c4:	f7fc fdc8 	bl	8001058 <__aeabi_dcmpgt>
 80044c8:	2800      	cmp	r0, #0
 80044ca:	f040 8502 	bne.w	8004ed2 <_dtoa_r+0xd8a>
 80044ce:	4632      	mov	r2, r6
 80044d0:	463b      	mov	r3, r7
 80044d2:	2000      	movs	r0, #0
 80044d4:	4959      	ldr	r1, [pc, #356]	; (800463c <_dtoa_r+0x4f4>)
 80044d6:	f7fc f977 	bl	80007c8 <__aeabi_dsub>
 80044da:	4602      	mov	r2, r0
 80044dc:	460b      	mov	r3, r1
 80044de:	e9dd 0100 	ldrd	r0, r1, [sp]
 80044e2:	f7fc fdb9 	bl	8001058 <__aeabi_dcmpgt>
 80044e6:	2800      	cmp	r0, #0
 80044e8:	f040 84fb 	bne.w	8004ee2 <_dtoa_r+0xd9a>
 80044ec:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80044ee:	2a01      	cmp	r2, #1
 80044f0:	d050      	beq.n	8004594 <_dtoa_r+0x44c>
 80044f2:	445a      	add	r2, fp
 80044f4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 80044f8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 80044fc:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004500:	4692      	mov	sl, r2
 8004502:	46cb      	mov	fp, r9
 8004504:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004508:	e00c      	b.n	8004524 <_dtoa_r+0x3dc>
 800450a:	2000      	movs	r0, #0
 800450c:	494b      	ldr	r1, [pc, #300]	; (800463c <_dtoa_r+0x4f4>)
 800450e:	f7fc f95b 	bl	80007c8 <__aeabi_dsub>
 8004512:	4642      	mov	r2, r8
 8004514:	464b      	mov	r3, r9
 8004516:	f7fc fd81 	bl	800101c <__aeabi_dcmplt>
 800451a:	2800      	cmp	r0, #0
 800451c:	f040 84dc 	bne.w	8004ed8 <_dtoa_r+0xd90>
 8004520:	4554      	cmp	r4, sl
 8004522:	d030      	beq.n	8004586 <_dtoa_r+0x43e>
 8004524:	4640      	mov	r0, r8
 8004526:	4649      	mov	r1, r9
 8004528:	2200      	movs	r2, #0
 800452a:	4b47      	ldr	r3, [pc, #284]	; (8004648 <_dtoa_r+0x500>)
 800452c:	f7fc fb04 	bl	8000b38 <__aeabi_dmul>
 8004530:	2200      	movs	r2, #0
 8004532:	4b45      	ldr	r3, [pc, #276]	; (8004648 <_dtoa_r+0x500>)
 8004534:	4680      	mov	r8, r0
 8004536:	4689      	mov	r9, r1
 8004538:	4630      	mov	r0, r6
 800453a:	4639      	mov	r1, r7
 800453c:	f7fc fafc 	bl	8000b38 <__aeabi_dmul>
 8004540:	460f      	mov	r7, r1
 8004542:	4606      	mov	r6, r0
 8004544:	f7fc fda8 	bl	8001098 <__aeabi_d2iz>
 8004548:	4605      	mov	r5, r0
 800454a:	f7fc fa8b 	bl	8000a64 <__aeabi_i2d>
 800454e:	4602      	mov	r2, r0
 8004550:	460b      	mov	r3, r1
 8004552:	4630      	mov	r0, r6
 8004554:	4639      	mov	r1, r7
 8004556:	f7fc f937 	bl	80007c8 <__aeabi_dsub>
 800455a:	3530      	adds	r5, #48	; 0x30
 800455c:	b2ed      	uxtb	r5, r5
 800455e:	4642      	mov	r2, r8
 8004560:	464b      	mov	r3, r9
 8004562:	f804 5b01 	strb.w	r5, [r4], #1
 8004566:	4606      	mov	r6, r0
 8004568:	460f      	mov	r7, r1
 800456a:	f7fc fd57 	bl	800101c <__aeabi_dcmplt>
 800456e:	4632      	mov	r2, r6
 8004570:	463b      	mov	r3, r7
 8004572:	2800      	cmp	r0, #0
 8004574:	d0c9      	beq.n	800450a <_dtoa_r+0x3c2>
 8004576:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004578:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800457c:	9306      	str	r3, [sp, #24]
 800457e:	46d9      	mov	r9, fp
 8004580:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004584:	e236      	b.n	80049f4 <_dtoa_r+0x8ac>
 8004586:	46d9      	mov	r9, fp
 8004588:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 800458c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004590:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004594:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004598:	e9cd 3400 	strd	r3, r4, [sp]
 800459c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 800459e:	2b00      	cmp	r3, #0
 80045a0:	f2c0 80ae 	blt.w	8004700 <_dtoa_r+0x5b8>
 80045a4:	9a06      	ldr	r2, [sp, #24]
 80045a6:	2a0e      	cmp	r2, #14
 80045a8:	f300 80aa 	bgt.w	8004700 <_dtoa_r+0x5b8>
 80045ac:	4b21      	ldr	r3, [pc, #132]	; (8004634 <_dtoa_r+0x4ec>)
 80045ae:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80045b2:	ed93 7b00 	vldr	d7, [r3]
 80045b6:	9b07      	ldr	r3, [sp, #28]
 80045b8:	2b00      	cmp	r3, #0
 80045ba:	ed8d 7b02 	vstr	d7, [sp, #8]
 80045be:	f2c0 82be 	blt.w	8004b3e <_dtoa_r+0x9f6>
 80045c2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80045c6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80045ca:	4630      	mov	r0, r6
 80045cc:	4639      	mov	r1, r7
 80045ce:	f7fc fbdd 	bl	8000d8c <__aeabi_ddiv>
 80045d2:	f7fc fd61 	bl	8001098 <__aeabi_d2iz>
 80045d6:	4605      	mov	r5, r0
 80045d8:	f7fc fa44 	bl	8000a64 <__aeabi_i2d>
 80045dc:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80045e0:	f7fc faaa 	bl	8000b38 <__aeabi_dmul>
 80045e4:	460b      	mov	r3, r1
 80045e6:	4602      	mov	r2, r0
 80045e8:	4639      	mov	r1, r7
 80045ea:	4630      	mov	r0, r6
 80045ec:	f7fc f8ec 	bl	80007c8 <__aeabi_dsub>
 80045f0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 80045f4:	f88b 3000 	strb.w	r3, [fp]
 80045f8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80045fa:	2b01      	cmp	r3, #1
 80045fc:	4606      	mov	r6, r0
 80045fe:	460f      	mov	r7, r1
 8004600:	f10b 0401 	add.w	r4, fp, #1
 8004604:	d053      	beq.n	80046ae <_dtoa_r+0x566>
 8004606:	2200      	movs	r2, #0
 8004608:	4b0f      	ldr	r3, [pc, #60]	; (8004648 <_dtoa_r+0x500>)
 800460a:	f7fc fa95 	bl	8000b38 <__aeabi_dmul>
 800460e:	2200      	movs	r2, #0
 8004610:	2300      	movs	r3, #0
 8004612:	4606      	mov	r6, r0
 8004614:	460f      	mov	r7, r1
 8004616:	f7fc fcf7 	bl	8001008 <__aeabi_dcmpeq>
 800461a:	2800      	cmp	r0, #0
 800461c:	f040 81ea 	bne.w	80049f4 <_dtoa_r+0x8ac>
 8004620:	f8cd a000 	str.w	sl, [sp]
 8004624:	f8cd 901c 	str.w	r9, [sp, #28]
 8004628:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800462c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004630:	e017      	b.n	8004662 <_dtoa_r+0x51a>
 8004632:	bf00      	nop
 8004634:	080071d0 	.word	0x080071d0
 8004638:	080071a8 	.word	0x080071a8
 800463c:	3ff00000 	.word	0x3ff00000
 8004640:	401c0000 	.word	0x401c0000
 8004644:	3fe00000 	.word	0x3fe00000
 8004648:	40240000 	.word	0x40240000
 800464c:	f7fc fa74 	bl	8000b38 <__aeabi_dmul>
 8004650:	2200      	movs	r2, #0
 8004652:	2300      	movs	r3, #0
 8004654:	4606      	mov	r6, r0
 8004656:	460f      	mov	r7, r1
 8004658:	f7fc fcd6 	bl	8001008 <__aeabi_dcmpeq>
 800465c:	2800      	cmp	r0, #0
 800465e:	f040 833d 	bne.w	8004cdc <_dtoa_r+0xb94>
 8004662:	464a      	mov	r2, r9
 8004664:	4653      	mov	r3, sl
 8004666:	4630      	mov	r0, r6
 8004668:	4639      	mov	r1, r7
 800466a:	f7fc fb8f 	bl	8000d8c <__aeabi_ddiv>
 800466e:	f7fc fd13 	bl	8001098 <__aeabi_d2iz>
 8004672:	4605      	mov	r5, r0
 8004674:	f7fc f9f6 	bl	8000a64 <__aeabi_i2d>
 8004678:	464a      	mov	r2, r9
 800467a:	4653      	mov	r3, sl
 800467c:	f7fc fa5c 	bl	8000b38 <__aeabi_dmul>
 8004680:	4602      	mov	r2, r0
 8004682:	460b      	mov	r3, r1
 8004684:	4630      	mov	r0, r6
 8004686:	4639      	mov	r1, r7
 8004688:	f7fc f89e 	bl	80007c8 <__aeabi_dsub>
 800468c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004690:	f804 cb01 	strb.w	ip, [r4], #1
 8004694:	eba4 0c0b 	sub.w	ip, r4, fp
 8004698:	45e0      	cmp	r8, ip
 800469a:	4606      	mov	r6, r0
 800469c:	460f      	mov	r7, r1
 800469e:	f04f 0200 	mov.w	r2, #0
 80046a2:	4bc1      	ldr	r3, [pc, #772]	; (80049a8 <_dtoa_r+0x860>)
 80046a4:	d1d2      	bne.n	800464c <_dtoa_r+0x504>
 80046a6:	f8dd a000 	ldr.w	sl, [sp]
 80046aa:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80046ae:	4632      	mov	r2, r6
 80046b0:	463b      	mov	r3, r7
 80046b2:	4630      	mov	r0, r6
 80046b4:	4639      	mov	r1, r7
 80046b6:	f7fc f889 	bl	80007cc <__adddf3>
 80046ba:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80046be:	4606      	mov	r6, r0
 80046c0:	460f      	mov	r7, r1
 80046c2:	f7fc fcc9 	bl	8001058 <__aeabi_dcmpgt>
 80046c6:	b958      	cbnz	r0, 80046e0 <_dtoa_r+0x598>
 80046c8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80046cc:	4630      	mov	r0, r6
 80046ce:	4639      	mov	r1, r7
 80046d0:	f7fc fc9a 	bl	8001008 <__aeabi_dcmpeq>
 80046d4:	2800      	cmp	r0, #0
 80046d6:	f000 818d 	beq.w	80049f4 <_dtoa_r+0x8ac>
 80046da:	07e9      	lsls	r1, r5, #31
 80046dc:	f140 818a 	bpl.w	80049f4 <_dtoa_r+0x8ac>
 80046e0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80046e4:	e005      	b.n	80046f2 <_dtoa_r+0x5aa>
 80046e6:	459b      	cmp	fp, r3
 80046e8:	f000 8373 	beq.w	8004dd2 <_dtoa_r+0xc8a>
 80046ec:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 80046f0:	461c      	mov	r4, r3
 80046f2:	2d39      	cmp	r5, #57	; 0x39
 80046f4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80046f8:	d0f5      	beq.n	80046e6 <_dtoa_r+0x59e>
 80046fa:	3501      	adds	r5, #1
 80046fc:	701d      	strb	r5, [r3, #0]
 80046fe:	e179      	b.n	80049f4 <_dtoa_r+0x8ac>
 8004700:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004702:	2a00      	cmp	r2, #0
 8004704:	d03b      	beq.n	800477e <_dtoa_r+0x636>
 8004706:	9a02      	ldr	r2, [sp, #8]
 8004708:	2a01      	cmp	r2, #1
 800470a:	f340 820b 	ble.w	8004b24 <_dtoa_r+0x9dc>
 800470e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004710:	1e5f      	subs	r7, r3, #1
 8004712:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004714:	42bb      	cmp	r3, r7
 8004716:	f2c0 82e6 	blt.w	8004ce6 <_dtoa_r+0xb9e>
 800471a:	1bdf      	subs	r7, r3, r7
 800471c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800471e:	2b00      	cmp	r3, #0
 8004720:	f2c0 830b 	blt.w	8004d3a <_dtoa_r+0xbf2>
 8004724:	9a08      	ldr	r2, [sp, #32]
 8004726:	4614      	mov	r4, r2
 8004728:	441a      	add	r2, r3
 800472a:	4498      	add	r8, r3
 800472c:	9208      	str	r2, [sp, #32]
 800472e:	2101      	movs	r1, #1
 8004730:	4648      	mov	r0, r9
 8004732:	f001 fcbf 	bl	80060b4 <__i2b>
 8004736:	4605      	mov	r5, r0
 8004738:	e024      	b.n	8004784 <_dtoa_r+0x63c>
 800473a:	2301      	movs	r3, #1
 800473c:	930d      	str	r3, [sp, #52]	; 0x34
 800473e:	e5af      	b.n	80042a0 <_dtoa_r+0x158>
 8004740:	9a08      	ldr	r2, [sp, #32]
 8004742:	9b06      	ldr	r3, [sp, #24]
 8004744:	1ad2      	subs	r2, r2, r3
 8004746:	425b      	negs	r3, r3
 8004748:	930b      	str	r3, [sp, #44]	; 0x2c
 800474a:	2300      	movs	r3, #0
 800474c:	9208      	str	r2, [sp, #32]
 800474e:	930c      	str	r3, [sp, #48]	; 0x30
 8004750:	e5b5      	b.n	80042be <_dtoa_r+0x176>
 8004752:	f1c4 0301 	rsb	r3, r4, #1
 8004756:	9308      	str	r3, [sp, #32]
 8004758:	f04f 0800 	mov.w	r8, #0
 800475c:	e5a7      	b.n	80042ae <_dtoa_r+0x166>
 800475e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004762:	4640      	mov	r0, r8
 8004764:	f7fc f97e 	bl	8000a64 <__aeabi_i2d>
 8004768:	4632      	mov	r2, r6
 800476a:	463b      	mov	r3, r7
 800476c:	f7fc fc4c 	bl	8001008 <__aeabi_dcmpeq>
 8004770:	2800      	cmp	r0, #0
 8004772:	f47f ad81 	bne.w	8004278 <_dtoa_r+0x130>
 8004776:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800477a:	9306      	str	r3, [sp, #24]
 800477c:	e57c      	b.n	8004278 <_dtoa_r+0x130>
 800477e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004780:	9c08      	ldr	r4, [sp, #32]
 8004782:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004784:	2c00      	cmp	r4, #0
 8004786:	dd0c      	ble.n	80047a2 <_dtoa_r+0x65a>
 8004788:	f1b8 0f00 	cmp.w	r8, #0
 800478c:	dd09      	ble.n	80047a2 <_dtoa_r+0x65a>
 800478e:	4544      	cmp	r4, r8
 8004790:	9a08      	ldr	r2, [sp, #32]
 8004792:	4623      	mov	r3, r4
 8004794:	bfa8      	it	ge
 8004796:	4643      	movge	r3, r8
 8004798:	1ad2      	subs	r2, r2, r3
 800479a:	9208      	str	r2, [sp, #32]
 800479c:	1ae4      	subs	r4, r4, r3
 800479e:	eba8 0803 	sub.w	r8, r8, r3
 80047a2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80047a4:	b16b      	cbz	r3, 80047c2 <_dtoa_r+0x67a>
 80047a6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80047a8:	2a00      	cmp	r2, #0
 80047aa:	f000 8290 	beq.w	8004cce <_dtoa_r+0xb86>
 80047ae:	1bde      	subs	r6, r3, r7
 80047b0:	2f00      	cmp	r7, #0
 80047b2:	f040 819b 	bne.w	8004aec <_dtoa_r+0x9a4>
 80047b6:	4651      	mov	r1, sl
 80047b8:	4632      	mov	r2, r6
 80047ba:	4648      	mov	r0, r9
 80047bc:	f001 fd2a 	bl	8006214 <__pow5mult>
 80047c0:	4682      	mov	sl, r0
 80047c2:	2101      	movs	r1, #1
 80047c4:	4648      	mov	r0, r9
 80047c6:	f001 fc75 	bl	80060b4 <__i2b>
 80047ca:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80047cc:	4606      	mov	r6, r0
 80047ce:	2a00      	cmp	r2, #0
 80047d0:	f040 8125 	bne.w	8004a1e <_dtoa_r+0x8d6>
 80047d4:	9b02      	ldr	r3, [sp, #8]
 80047d6:	2b01      	cmp	r3, #1
 80047d8:	f340 816c 	ble.w	8004ab4 <_dtoa_r+0x96c>
 80047dc:	2001      	movs	r0, #1
 80047de:	4440      	add	r0, r8
 80047e0:	f010 001f 	ands.w	r0, r0, #31
 80047e4:	f000 8119 	beq.w	8004a1a <_dtoa_r+0x8d2>
 80047e8:	f1c0 0320 	rsb	r3, r0, #32
 80047ec:	2b04      	cmp	r3, #4
 80047ee:	f340 83ac 	ble.w	8004f4a <_dtoa_r+0xe02>
 80047f2:	f1c0 001c 	rsb	r0, r0, #28
 80047f6:	9b08      	ldr	r3, [sp, #32]
 80047f8:	4403      	add	r3, r0
 80047fa:	9308      	str	r3, [sp, #32]
 80047fc:	4404      	add	r4, r0
 80047fe:	4480      	add	r8, r0
 8004800:	9b08      	ldr	r3, [sp, #32]
 8004802:	2b00      	cmp	r3, #0
 8004804:	dd05      	ble.n	8004812 <_dtoa_r+0x6ca>
 8004806:	4651      	mov	r1, sl
 8004808:	461a      	mov	r2, r3
 800480a:	4648      	mov	r0, r9
 800480c:	f001 fd52 	bl	80062b4 <__lshift>
 8004810:	4682      	mov	sl, r0
 8004812:	f1b8 0f00 	cmp.w	r8, #0
 8004816:	dd05      	ble.n	8004824 <_dtoa_r+0x6dc>
 8004818:	4631      	mov	r1, r6
 800481a:	4642      	mov	r2, r8
 800481c:	4648      	mov	r0, r9
 800481e:	f001 fd49 	bl	80062b4 <__lshift>
 8004822:	4606      	mov	r6, r0
 8004824:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004826:	2b00      	cmp	r3, #0
 8004828:	d177      	bne.n	800491a <_dtoa_r+0x7d2>
 800482a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800482c:	2b00      	cmp	r3, #0
 800482e:	f340 8209 	ble.w	8004c44 <_dtoa_r+0xafc>
 8004832:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004834:	2b00      	cmp	r3, #0
 8004836:	f000 8089 	beq.w	800494c <_dtoa_r+0x804>
 800483a:	2c00      	cmp	r4, #0
 800483c:	f300 816b 	bgt.w	8004b16 <_dtoa_r+0x9ce>
 8004840:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004842:	2b00      	cmp	r3, #0
 8004844:	f040 81cd 	bne.w	8004be2 <_dtoa_r+0xa9a>
 8004848:	46a8      	mov	r8, r5
 800484a:	9a00      	ldr	r2, [sp, #0]
 800484c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004850:	f002 0201 	and.w	r2, r2, #1
 8004854:	920a      	str	r2, [sp, #40]	; 0x28
 8004856:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004858:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 800485c:	441a      	add	r2, r3
 800485e:	465f      	mov	r7, fp
 8004860:	9209      	str	r2, [sp, #36]	; 0x24
 8004862:	46b3      	mov	fp, r6
 8004864:	4659      	mov	r1, fp
 8004866:	4650      	mov	r0, sl
 8004868:	f7ff fbdc 	bl	8004024 <quorem>
 800486c:	4629      	mov	r1, r5
 800486e:	4604      	mov	r4, r0
 8004870:	4650      	mov	r0, sl
 8004872:	f001 fd75 	bl	8006360 <__mcmp>
 8004876:	4659      	mov	r1, fp
 8004878:	4606      	mov	r6, r0
 800487a:	4642      	mov	r2, r8
 800487c:	4648      	mov	r0, r9
 800487e:	f001 fd8b 	bl	8006398 <__mdiff>
 8004882:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004886:	9300      	str	r3, [sp, #0]
 8004888:	68c3      	ldr	r3, [r0, #12]
 800488a:	4601      	mov	r1, r0
 800488c:	2b00      	cmp	r3, #0
 800488e:	f040 81d4 	bne.w	8004c3a <_dtoa_r+0xaf2>
 8004892:	9008      	str	r0, [sp, #32]
 8004894:	4650      	mov	r0, sl
 8004896:	f001 fd63 	bl	8006360 <__mcmp>
 800489a:	9a08      	ldr	r2, [sp, #32]
 800489c:	9007      	str	r0, [sp, #28]
 800489e:	4611      	mov	r1, r2
 80048a0:	4648      	mov	r0, r9
 80048a2:	f001 fb6d 	bl	8005f80 <_Bfree>
 80048a6:	9b07      	ldr	r3, [sp, #28]
 80048a8:	b933      	cbnz	r3, 80048b8 <_dtoa_r+0x770>
 80048aa:	9a02      	ldr	r2, [sp, #8]
 80048ac:	b922      	cbnz	r2, 80048b8 <_dtoa_r+0x770>
 80048ae:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80048b0:	2b00      	cmp	r3, #0
 80048b2:	f000 8319 	beq.w	8004ee8 <_dtoa_r+0xda0>
 80048b6:	9b02      	ldr	r3, [sp, #8]
 80048b8:	2e00      	cmp	r6, #0
 80048ba:	f2c0 821c 	blt.w	8004cf6 <_dtoa_r+0xbae>
 80048be:	d105      	bne.n	80048cc <_dtoa_r+0x784>
 80048c0:	9a02      	ldr	r2, [sp, #8]
 80048c2:	b91a      	cbnz	r2, 80048cc <_dtoa_r+0x784>
 80048c4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80048c6:	2a00      	cmp	r2, #0
 80048c8:	f000 8215 	beq.w	8004cf6 <_dtoa_r+0xbae>
 80048cc:	2b00      	cmp	r3, #0
 80048ce:	f107 0401 	add.w	r4, r7, #1
 80048d2:	f300 8225 	bgt.w	8004d20 <_dtoa_r+0xbd8>
 80048d6:	9b00      	ldr	r3, [sp, #0]
 80048d8:	703b      	strb	r3, [r7, #0]
 80048da:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80048dc:	42bb      	cmp	r3, r7
 80048de:	f000 8230 	beq.w	8004d42 <_dtoa_r+0xbfa>
 80048e2:	4651      	mov	r1, sl
 80048e4:	2300      	movs	r3, #0
 80048e6:	220a      	movs	r2, #10
 80048e8:	4648      	mov	r0, r9
 80048ea:	f001 fb53 	bl	8005f94 <__multadd>
 80048ee:	4545      	cmp	r5, r8
 80048f0:	4682      	mov	sl, r0
 80048f2:	4629      	mov	r1, r5
 80048f4:	f04f 0300 	mov.w	r3, #0
 80048f8:	f04f 020a 	mov.w	r2, #10
 80048fc:	4648      	mov	r0, r9
 80048fe:	f000 8196 	beq.w	8004c2e <_dtoa_r+0xae6>
 8004902:	f001 fb47 	bl	8005f94 <__multadd>
 8004906:	4641      	mov	r1, r8
 8004908:	4605      	mov	r5, r0
 800490a:	2300      	movs	r3, #0
 800490c:	220a      	movs	r2, #10
 800490e:	4648      	mov	r0, r9
 8004910:	f001 fb40 	bl	8005f94 <__multadd>
 8004914:	4627      	mov	r7, r4
 8004916:	4680      	mov	r8, r0
 8004918:	e7a4      	b.n	8004864 <_dtoa_r+0x71c>
 800491a:	4631      	mov	r1, r6
 800491c:	4650      	mov	r0, sl
 800491e:	f001 fd1f 	bl	8006360 <__mcmp>
 8004922:	2800      	cmp	r0, #0
 8004924:	da81      	bge.n	800482a <_dtoa_r+0x6e2>
 8004926:	9f06      	ldr	r7, [sp, #24]
 8004928:	4651      	mov	r1, sl
 800492a:	2300      	movs	r3, #0
 800492c:	220a      	movs	r2, #10
 800492e:	4648      	mov	r0, r9
 8004930:	3f01      	subs	r7, #1
 8004932:	9706      	str	r7, [sp, #24]
 8004934:	f001 fb2e 	bl	8005f94 <__multadd>
 8004938:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800493a:	4682      	mov	sl, r0
 800493c:	2b00      	cmp	r3, #0
 800493e:	f040 82eb 	bne.w	8004f18 <_dtoa_r+0xdd0>
 8004942:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004944:	2b00      	cmp	r3, #0
 8004946:	f340 82f3 	ble.w	8004f30 <_dtoa_r+0xde8>
 800494a:	9309      	str	r3, [sp, #36]	; 0x24
 800494c:	465c      	mov	r4, fp
 800494e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004952:	e002      	b.n	800495a <_dtoa_r+0x812>
 8004954:	f001 fb1e 	bl	8005f94 <__multadd>
 8004958:	4682      	mov	sl, r0
 800495a:	4631      	mov	r1, r6
 800495c:	4650      	mov	r0, sl
 800495e:	f7ff fb61 	bl	8004024 <quorem>
 8004962:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004966:	f804 7b01 	strb.w	r7, [r4], #1
 800496a:	eba4 030b 	sub.w	r3, r4, fp
 800496e:	4598      	cmp	r8, r3
 8004970:	f04f 020a 	mov.w	r2, #10
 8004974:	f04f 0300 	mov.w	r3, #0
 8004978:	4651      	mov	r1, sl
 800497a:	4648      	mov	r0, r9
 800497c:	dcea      	bgt.n	8004954 <_dtoa_r+0x80c>
 800497e:	2300      	movs	r3, #0
 8004980:	9700      	str	r7, [sp, #0]
 8004982:	9302      	str	r3, [sp, #8]
 8004984:	4651      	mov	r1, sl
 8004986:	2201      	movs	r2, #1
 8004988:	4648      	mov	r0, r9
 800498a:	f001 fc93 	bl	80062b4 <__lshift>
 800498e:	4631      	mov	r1, r6
 8004990:	4682      	mov	sl, r0
 8004992:	f001 fce5 	bl	8006360 <__mcmp>
 8004996:	2800      	cmp	r0, #0
 8004998:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 800499c:	dc14      	bgt.n	80049c8 <_dtoa_r+0x880>
 800499e:	d108      	bne.n	80049b2 <_dtoa_r+0x86a>
 80049a0:	9b00      	ldr	r3, [sp, #0]
 80049a2:	07db      	lsls	r3, r3, #31
 80049a4:	d410      	bmi.n	80049c8 <_dtoa_r+0x880>
 80049a6:	e004      	b.n	80049b2 <_dtoa_r+0x86a>
 80049a8:	40240000 	.word	0x40240000
 80049ac:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 80049b0:	461c      	mov	r4, r3
 80049b2:	2a30      	cmp	r2, #48	; 0x30
 80049b4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80049b8:	d0f8      	beq.n	80049ac <_dtoa_r+0x864>
 80049ba:	e00b      	b.n	80049d4 <_dtoa_r+0x88c>
 80049bc:	459b      	cmp	fp, r3
 80049be:	f000 814e 	beq.w	8004c5e <_dtoa_r+0xb16>
 80049c2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80049c6:	461c      	mov	r4, r3
 80049c8:	2a39      	cmp	r2, #57	; 0x39
 80049ca:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80049ce:	d0f5      	beq.n	80049bc <_dtoa_r+0x874>
 80049d0:	3201      	adds	r2, #1
 80049d2:	701a      	strb	r2, [r3, #0]
 80049d4:	4631      	mov	r1, r6
 80049d6:	4648      	mov	r0, r9
 80049d8:	f001 fad2 	bl	8005f80 <_Bfree>
 80049dc:	b155      	cbz	r5, 80049f4 <_dtoa_r+0x8ac>
 80049de:	9902      	ldr	r1, [sp, #8]
 80049e0:	b121      	cbz	r1, 80049ec <_dtoa_r+0x8a4>
 80049e2:	42a9      	cmp	r1, r5
 80049e4:	d002      	beq.n	80049ec <_dtoa_r+0x8a4>
 80049e6:	4648      	mov	r0, r9
 80049e8:	f001 faca 	bl	8005f80 <_Bfree>
 80049ec:	4629      	mov	r1, r5
 80049ee:	4648      	mov	r0, r9
 80049f0:	f001 fac6 	bl	8005f80 <_Bfree>
 80049f4:	4651      	mov	r1, sl
 80049f6:	4648      	mov	r0, r9
 80049f8:	f001 fac2 	bl	8005f80 <_Bfree>
 80049fc:	2200      	movs	r2, #0
 80049fe:	9b06      	ldr	r3, [sp, #24]
 8004a00:	7022      	strb	r2, [r4, #0]
 8004a02:	9a05      	ldr	r2, [sp, #20]
 8004a04:	3301      	adds	r3, #1
 8004a06:	6013      	str	r3, [r2, #0]
 8004a08:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004a0a:	2b00      	cmp	r3, #0
 8004a0c:	f43f abdb 	beq.w	80041c6 <_dtoa_r+0x7e>
 8004a10:	4658      	mov	r0, fp
 8004a12:	601c      	str	r4, [r3, #0]
 8004a14:	b01b      	add	sp, #108	; 0x6c
 8004a16:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004a1a:	201c      	movs	r0, #28
 8004a1c:	e6eb      	b.n	80047f6 <_dtoa_r+0x6ae>
 8004a1e:	4601      	mov	r1, r0
 8004a20:	4648      	mov	r0, r9
 8004a22:	f001 fbf7 	bl	8006214 <__pow5mult>
 8004a26:	9b02      	ldr	r3, [sp, #8]
 8004a28:	2b01      	cmp	r3, #1
 8004a2a:	4606      	mov	r6, r0
 8004a2c:	f340 80d4 	ble.w	8004bd8 <_dtoa_r+0xa90>
 8004a30:	2300      	movs	r3, #0
 8004a32:	930c      	str	r3, [sp, #48]	; 0x30
 8004a34:	6933      	ldr	r3, [r6, #16]
 8004a36:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004a3a:	6918      	ldr	r0, [r3, #16]
 8004a3c:	f001 faea 	bl	8006014 <__hi0bits>
 8004a40:	f1c0 0020 	rsb	r0, r0, #32
 8004a44:	e6cb      	b.n	80047de <_dtoa_r+0x696>
 8004a46:	900d      	str	r0, [sp, #52]	; 0x34
 8004a48:	e42a      	b.n	80042a0 <_dtoa_r+0x158>
 8004a4a:	2501      	movs	r5, #1
 8004a4c:	e440      	b.n	80042d0 <_dtoa_r+0x188>
 8004a4e:	f1c3 0820 	rsb	r8, r3, #32
 8004a52:	9b00      	ldr	r3, [sp, #0]
 8004a54:	fa03 f008 	lsl.w	r0, r3, r8
 8004a58:	f7ff bbd8 	b.w	800420c <_dtoa_r+0xc4>
 8004a5c:	2300      	movs	r3, #0
 8004a5e:	930a      	str	r3, [sp, #40]	; 0x28
 8004a60:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004a64:	4413      	add	r3, r2
 8004a66:	930e      	str	r3, [sp, #56]	; 0x38
 8004a68:	3301      	adds	r3, #1
 8004a6a:	2b01      	cmp	r3, #1
 8004a6c:	461e      	mov	r6, r3
 8004a6e:	9309      	str	r3, [sp, #36]	; 0x24
 8004a70:	bfb8      	it	lt
 8004a72:	2601      	movlt	r6, #1
 8004a74:	2100      	movs	r1, #0
 8004a76:	2e17      	cmp	r6, #23
 8004a78:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004a7c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004a7e:	f77f ac89 	ble.w	8004394 <_dtoa_r+0x24c>
 8004a82:	2201      	movs	r2, #1
 8004a84:	2304      	movs	r3, #4
 8004a86:	005b      	lsls	r3, r3, #1
 8004a88:	f103 0014 	add.w	r0, r3, #20
 8004a8c:	42b0      	cmp	r0, r6
 8004a8e:	4611      	mov	r1, r2
 8004a90:	f102 0201 	add.w	r2, r2, #1
 8004a94:	d9f7      	bls.n	8004a86 <_dtoa_r+0x93e>
 8004a96:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004a9a:	e47b      	b.n	8004394 <_dtoa_r+0x24c>
 8004a9c:	2300      	movs	r3, #0
 8004a9e:	930a      	str	r3, [sp, #40]	; 0x28
 8004aa0:	9e07      	ldr	r6, [sp, #28]
 8004aa2:	2e00      	cmp	r6, #0
 8004aa4:	f340 80e2 	ble.w	8004c6c <_dtoa_r+0xb24>
 8004aa8:	960e      	str	r6, [sp, #56]	; 0x38
 8004aaa:	9609      	str	r6, [sp, #36]	; 0x24
 8004aac:	e7e2      	b.n	8004a74 <_dtoa_r+0x92c>
 8004aae:	2301      	movs	r3, #1
 8004ab0:	930a      	str	r3, [sp, #40]	; 0x28
 8004ab2:	e7f5      	b.n	8004aa0 <_dtoa_r+0x958>
 8004ab4:	9b00      	ldr	r3, [sp, #0]
 8004ab6:	2b00      	cmp	r3, #0
 8004ab8:	f47f ae90 	bne.w	80047dc <_dtoa_r+0x694>
 8004abc:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004ac0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004ac4:	2b00      	cmp	r3, #0
 8004ac6:	f040 8192 	bne.w	8004dee <_dtoa_r+0xca6>
 8004aca:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004ace:	0d1b      	lsrs	r3, r3, #20
 8004ad0:	051b      	lsls	r3, r3, #20
 8004ad2:	b12b      	cbz	r3, 8004ae0 <_dtoa_r+0x998>
 8004ad4:	9b08      	ldr	r3, [sp, #32]
 8004ad6:	3301      	adds	r3, #1
 8004ad8:	9308      	str	r3, [sp, #32]
 8004ada:	f108 0801 	add.w	r8, r8, #1
 8004ade:	2301      	movs	r3, #1
 8004ae0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004ae2:	930c      	str	r3, [sp, #48]	; 0x30
 8004ae4:	2a00      	cmp	r2, #0
 8004ae6:	f43f ae79 	beq.w	80047dc <_dtoa_r+0x694>
 8004aea:	e7a3      	b.n	8004a34 <_dtoa_r+0x8ec>
 8004aec:	463a      	mov	r2, r7
 8004aee:	4629      	mov	r1, r5
 8004af0:	4648      	mov	r0, r9
 8004af2:	f001 fb8f 	bl	8006214 <__pow5mult>
 8004af6:	4652      	mov	r2, sl
 8004af8:	4601      	mov	r1, r0
 8004afa:	4605      	mov	r5, r0
 8004afc:	4648      	mov	r0, r9
 8004afe:	f001 fae3 	bl	80060c8 <__multiply>
 8004b02:	4651      	mov	r1, sl
 8004b04:	4607      	mov	r7, r0
 8004b06:	4648      	mov	r0, r9
 8004b08:	f001 fa3a 	bl	8005f80 <_Bfree>
 8004b0c:	46ba      	mov	sl, r7
 8004b0e:	2e00      	cmp	r6, #0
 8004b10:	f43f ae57 	beq.w	80047c2 <_dtoa_r+0x67a>
 8004b14:	e64f      	b.n	80047b6 <_dtoa_r+0x66e>
 8004b16:	4629      	mov	r1, r5
 8004b18:	4622      	mov	r2, r4
 8004b1a:	4648      	mov	r0, r9
 8004b1c:	f001 fbca 	bl	80062b4 <__lshift>
 8004b20:	4605      	mov	r5, r0
 8004b22:	e68d      	b.n	8004840 <_dtoa_r+0x6f8>
 8004b24:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004b26:	2a00      	cmp	r2, #0
 8004b28:	f000 815d 	beq.w	8004de6 <_dtoa_r+0xc9e>
 8004b2c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004b30:	9a08      	ldr	r2, [sp, #32]
 8004b32:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004b34:	4614      	mov	r4, r2
 8004b36:	441a      	add	r2, r3
 8004b38:	4498      	add	r8, r3
 8004b3a:	9208      	str	r2, [sp, #32]
 8004b3c:	e5f7      	b.n	800472e <_dtoa_r+0x5e6>
 8004b3e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b40:	2b00      	cmp	r3, #0
 8004b42:	f73f ad3e 	bgt.w	80045c2 <_dtoa_r+0x47a>
 8004b46:	f040 80bc 	bne.w	8004cc2 <_dtoa_r+0xb7a>
 8004b4a:	ec51 0b17 	vmov	r0, r1, d7
 8004b4e:	2200      	movs	r2, #0
 8004b50:	4bb2      	ldr	r3, [pc, #712]	; (8004e1c <_dtoa_r+0xcd4>)
 8004b52:	f7fb fff1 	bl	8000b38 <__aeabi_dmul>
 8004b56:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004b5a:	f7fc fa73 	bl	8001044 <__aeabi_dcmpge>
 8004b5e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004b60:	4635      	mov	r5, r6
 8004b62:	2800      	cmp	r0, #0
 8004b64:	d176      	bne.n	8004c54 <_dtoa_r+0xb0c>
 8004b66:	9a06      	ldr	r2, [sp, #24]
 8004b68:	2331      	movs	r3, #49	; 0x31
 8004b6a:	3201      	adds	r2, #1
 8004b6c:	9206      	str	r2, [sp, #24]
 8004b6e:	f88b 3000 	strb.w	r3, [fp]
 8004b72:	f10b 0401 	add.w	r4, fp, #1
 8004b76:	4631      	mov	r1, r6
 8004b78:	4648      	mov	r0, r9
 8004b7a:	f001 fa01 	bl	8005f80 <_Bfree>
 8004b7e:	2d00      	cmp	r5, #0
 8004b80:	f47f af34 	bne.w	80049ec <_dtoa_r+0x8a4>
 8004b84:	e736      	b.n	80049f4 <_dtoa_r+0x8ac>
 8004b86:	f000 8142 	beq.w	8004e0e <_dtoa_r+0xcc6>
 8004b8a:	9b06      	ldr	r3, [sp, #24]
 8004b8c:	425c      	negs	r4, r3
 8004b8e:	4ba4      	ldr	r3, [pc, #656]	; (8004e20 <_dtoa_r+0xcd8>)
 8004b90:	f004 020f 	and.w	r2, r4, #15
 8004b94:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004b98:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004b9c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004ba0:	f7fb ffca 	bl	8000b38 <__aeabi_dmul>
 8004ba4:	1124      	asrs	r4, r4, #4
 8004ba6:	e9cd 0100 	strd	r0, r1, [sp]
 8004baa:	f000 81c6 	beq.w	8004f3a <_dtoa_r+0xdf2>
 8004bae:	4d9d      	ldr	r5, [pc, #628]	; (8004e24 <_dtoa_r+0xcdc>)
 8004bb0:	2300      	movs	r3, #0
 8004bb2:	2602      	movs	r6, #2
 8004bb4:	07e7      	lsls	r7, r4, #31
 8004bb6:	d505      	bpl.n	8004bc4 <_dtoa_r+0xa7c>
 8004bb8:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004bbc:	f7fb ffbc 	bl	8000b38 <__aeabi_dmul>
 8004bc0:	3601      	adds	r6, #1
 8004bc2:	2301      	movs	r3, #1
 8004bc4:	1064      	asrs	r4, r4, #1
 8004bc6:	f105 0508 	add.w	r5, r5, #8
 8004bca:	d1f3      	bne.n	8004bb4 <_dtoa_r+0xa6c>
 8004bcc:	2b00      	cmp	r3, #0
 8004bce:	f43f ac27 	beq.w	8004420 <_dtoa_r+0x2d8>
 8004bd2:	e9cd 0100 	strd	r0, r1, [sp]
 8004bd6:	e423      	b.n	8004420 <_dtoa_r+0x2d8>
 8004bd8:	9b00      	ldr	r3, [sp, #0]
 8004bda:	2b00      	cmp	r3, #0
 8004bdc:	f43f af6e 	beq.w	8004abc <_dtoa_r+0x974>
 8004be0:	e726      	b.n	8004a30 <_dtoa_r+0x8e8>
 8004be2:	6869      	ldr	r1, [r5, #4]
 8004be4:	4648      	mov	r0, r9
 8004be6:	f001 f9a5 	bl	8005f34 <_Balloc>
 8004bea:	692b      	ldr	r3, [r5, #16]
 8004bec:	3302      	adds	r3, #2
 8004bee:	009a      	lsls	r2, r3, #2
 8004bf0:	4604      	mov	r4, r0
 8004bf2:	f105 010c 	add.w	r1, r5, #12
 8004bf6:	300c      	adds	r0, #12
 8004bf8:	f7fb fc82 	bl	8000500 <memcpy>
 8004bfc:	4621      	mov	r1, r4
 8004bfe:	2201      	movs	r2, #1
 8004c00:	4648      	mov	r0, r9
 8004c02:	f001 fb57 	bl	80062b4 <__lshift>
 8004c06:	4680      	mov	r8, r0
 8004c08:	e61f      	b.n	800484a <_dtoa_r+0x702>
 8004c0a:	2400      	movs	r4, #0
 8004c0c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004c10:	4621      	mov	r1, r4
 8004c12:	4648      	mov	r0, r9
 8004c14:	f001 f98e 	bl	8005f34 <_Balloc>
 8004c18:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004c1c:	930e      	str	r3, [sp, #56]	; 0x38
 8004c1e:	9309      	str	r3, [sp, #36]	; 0x24
 8004c20:	2301      	movs	r3, #1
 8004c22:	4683      	mov	fp, r0
 8004c24:	9407      	str	r4, [sp, #28]
 8004c26:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004c2a:	930a      	str	r3, [sp, #40]	; 0x28
 8004c2c:	e4b6      	b.n	800459c <_dtoa_r+0x454>
 8004c2e:	f001 f9b1 	bl	8005f94 <__multadd>
 8004c32:	4627      	mov	r7, r4
 8004c34:	4605      	mov	r5, r0
 8004c36:	4680      	mov	r8, r0
 8004c38:	e614      	b.n	8004864 <_dtoa_r+0x71c>
 8004c3a:	4648      	mov	r0, r9
 8004c3c:	f001 f9a0 	bl	8005f80 <_Bfree>
 8004c40:	2301      	movs	r3, #1
 8004c42:	e639      	b.n	80048b8 <_dtoa_r+0x770>
 8004c44:	9b02      	ldr	r3, [sp, #8]
 8004c46:	2b02      	cmp	r3, #2
 8004c48:	f77f adf3 	ble.w	8004832 <_dtoa_r+0x6ea>
 8004c4c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c4e:	2b00      	cmp	r3, #0
 8004c50:	f000 80cf 	beq.w	8004df2 <_dtoa_r+0xcaa>
 8004c54:	9b07      	ldr	r3, [sp, #28]
 8004c56:	43db      	mvns	r3, r3
 8004c58:	9306      	str	r3, [sp, #24]
 8004c5a:	465c      	mov	r4, fp
 8004c5c:	e78b      	b.n	8004b76 <_dtoa_r+0xa2e>
 8004c5e:	9a06      	ldr	r2, [sp, #24]
 8004c60:	2331      	movs	r3, #49	; 0x31
 8004c62:	3201      	adds	r2, #1
 8004c64:	9206      	str	r2, [sp, #24]
 8004c66:	f88b 3000 	strb.w	r3, [fp]
 8004c6a:	e6b3      	b.n	80049d4 <_dtoa_r+0x88c>
 8004c6c:	2401      	movs	r4, #1
 8004c6e:	9409      	str	r4, [sp, #36]	; 0x24
 8004c70:	9407      	str	r4, [sp, #28]
 8004c72:	f7ff bb8b 	b.w	800438c <_dtoa_r+0x244>
 8004c76:	4630      	mov	r0, r6
 8004c78:	f7fb fef4 	bl	8000a64 <__aeabi_i2d>
 8004c7c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004c80:	f7fb ff5a 	bl	8000b38 <__aeabi_dmul>
 8004c84:	2200      	movs	r2, #0
 8004c86:	4b68      	ldr	r3, [pc, #416]	; (8004e28 <_dtoa_r+0xce0>)
 8004c88:	f7fb fda0 	bl	80007cc <__adddf3>
 8004c8c:	4606      	mov	r6, r0
 8004c8e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004c92:	2200      	movs	r2, #0
 8004c94:	4b61      	ldr	r3, [pc, #388]	; (8004e1c <_dtoa_r+0xcd4>)
 8004c96:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004c9a:	f7fb fd95 	bl	80007c8 <__aeabi_dsub>
 8004c9e:	4632      	mov	r2, r6
 8004ca0:	463b      	mov	r3, r7
 8004ca2:	4604      	mov	r4, r0
 8004ca4:	460d      	mov	r5, r1
 8004ca6:	f7fc f9d7 	bl	8001058 <__aeabi_dcmpgt>
 8004caa:	2800      	cmp	r0, #0
 8004cac:	d14f      	bne.n	8004d4e <_dtoa_r+0xc06>
 8004cae:	4632      	mov	r2, r6
 8004cb0:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004cb4:	4620      	mov	r0, r4
 8004cb6:	4629      	mov	r1, r5
 8004cb8:	f7fc f9b0 	bl	800101c <__aeabi_dcmplt>
 8004cbc:	2800      	cmp	r0, #0
 8004cbe:	f43f ac69 	beq.w	8004594 <_dtoa_r+0x44c>
 8004cc2:	2600      	movs	r6, #0
 8004cc4:	4635      	mov	r5, r6
 8004cc6:	e7c5      	b.n	8004c54 <_dtoa_r+0xb0c>
 8004cc8:	2301      	movs	r3, #1
 8004cca:	930a      	str	r3, [sp, #40]	; 0x28
 8004ccc:	e6c8      	b.n	8004a60 <_dtoa_r+0x918>
 8004cce:	4651      	mov	r1, sl
 8004cd0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004cd2:	4648      	mov	r0, r9
 8004cd4:	f001 fa9e 	bl	8006214 <__pow5mult>
 8004cd8:	4682      	mov	sl, r0
 8004cda:	e572      	b.n	80047c2 <_dtoa_r+0x67a>
 8004cdc:	f8dd a000 	ldr.w	sl, [sp]
 8004ce0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004ce4:	e686      	b.n	80049f4 <_dtoa_r+0x8ac>
 8004ce6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004ce8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004cea:	1afb      	subs	r3, r7, r3
 8004cec:	441a      	add	r2, r3
 8004cee:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004cf2:	2700      	movs	r7, #0
 8004cf4:	e512      	b.n	800471c <_dtoa_r+0x5d4>
 8004cf6:	2b00      	cmp	r3, #0
 8004cf8:	9402      	str	r4, [sp, #8]
 8004cfa:	465e      	mov	r6, fp
 8004cfc:	f107 0401 	add.w	r4, r7, #1
 8004d00:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d04:	f300 80ba 	bgt.w	8004e7c <_dtoa_r+0xd34>
 8004d08:	9b00      	ldr	r3, [sp, #0]
 8004d0a:	9502      	str	r5, [sp, #8]
 8004d0c:	703b      	strb	r3, [r7, #0]
 8004d0e:	4645      	mov	r5, r8
 8004d10:	e660      	b.n	80049d4 <_dtoa_r+0x88c>
 8004d12:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004d16:	2602      	movs	r6, #2
 8004d18:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004d1c:	f7ff bb67 	b.w	80043ee <_dtoa_r+0x2a6>
 8004d20:	9b00      	ldr	r3, [sp, #0]
 8004d22:	2b39      	cmp	r3, #57	; 0x39
 8004d24:	465e      	mov	r6, fp
 8004d26:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d2a:	f000 80b9 	beq.w	8004ea0 <_dtoa_r+0xd58>
 8004d2e:	9b00      	ldr	r3, [sp, #0]
 8004d30:	9502      	str	r5, [sp, #8]
 8004d32:	3301      	adds	r3, #1
 8004d34:	703b      	strb	r3, [r7, #0]
 8004d36:	4645      	mov	r5, r8
 8004d38:	e64c      	b.n	80049d4 <_dtoa_r+0x88c>
 8004d3a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004d3e:	1a9c      	subs	r4, r3, r2
 8004d40:	e4f5      	b.n	800472e <_dtoa_r+0x5e6>
 8004d42:	465e      	mov	r6, fp
 8004d44:	9502      	str	r5, [sp, #8]
 8004d46:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d4a:	4645      	mov	r5, r8
 8004d4c:	e61a      	b.n	8004984 <_dtoa_r+0x83c>
 8004d4e:	2600      	movs	r6, #0
 8004d50:	4635      	mov	r5, r6
 8004d52:	e708      	b.n	8004b66 <_dtoa_r+0xa1e>
 8004d54:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004d58:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d5c:	f7fb feec 	bl	8000b38 <__aeabi_dmul>
 8004d60:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004d62:	f88b 5000 	strb.w	r5, [fp]
 8004d66:	2b01      	cmp	r3, #1
 8004d68:	e9cd 0100 	strd	r0, r1, [sp]
 8004d6c:	d020      	beq.n	8004db0 <_dtoa_r+0xc68>
 8004d6e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004d70:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004d74:	445b      	add	r3, fp
 8004d76:	4698      	mov	r8, r3
 8004d78:	2200      	movs	r2, #0
 8004d7a:	4b2c      	ldr	r3, [pc, #176]	; (8004e2c <_dtoa_r+0xce4>)
 8004d7c:	4630      	mov	r0, r6
 8004d7e:	4639      	mov	r1, r7
 8004d80:	f7fb feda 	bl	8000b38 <__aeabi_dmul>
 8004d84:	460f      	mov	r7, r1
 8004d86:	4606      	mov	r6, r0
 8004d88:	f7fc f986 	bl	8001098 <__aeabi_d2iz>
 8004d8c:	4605      	mov	r5, r0
 8004d8e:	f7fb fe69 	bl	8000a64 <__aeabi_i2d>
 8004d92:	3530      	adds	r5, #48	; 0x30
 8004d94:	4602      	mov	r2, r0
 8004d96:	460b      	mov	r3, r1
 8004d98:	4630      	mov	r0, r6
 8004d9a:	4639      	mov	r1, r7
 8004d9c:	f7fb fd14 	bl	80007c8 <__aeabi_dsub>
 8004da0:	f804 5b01 	strb.w	r5, [r4], #1
 8004da4:	4544      	cmp	r4, r8
 8004da6:	4606      	mov	r6, r0
 8004da8:	460f      	mov	r7, r1
 8004daa:	d1e5      	bne.n	8004d78 <_dtoa_r+0xc30>
 8004dac:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004db0:	4b1f      	ldr	r3, [pc, #124]	; (8004e30 <_dtoa_r+0xce8>)
 8004db2:	2200      	movs	r2, #0
 8004db4:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004db8:	f7fb fd08 	bl	80007cc <__adddf3>
 8004dbc:	4632      	mov	r2, r6
 8004dbe:	463b      	mov	r3, r7
 8004dc0:	f7fc f92c 	bl	800101c <__aeabi_dcmplt>
 8004dc4:	2800      	cmp	r0, #0
 8004dc6:	d070      	beq.n	8004eaa <_dtoa_r+0xd62>
 8004dc8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004dca:	9306      	str	r3, [sp, #24]
 8004dcc:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004dd0:	e48f      	b.n	80046f2 <_dtoa_r+0x5aa>
 8004dd2:	2330      	movs	r3, #48	; 0x30
 8004dd4:	f88b 3000 	strb.w	r3, [fp]
 8004dd8:	9b06      	ldr	r3, [sp, #24]
 8004dda:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004dde:	3301      	adds	r3, #1
 8004de0:	9306      	str	r3, [sp, #24]
 8004de2:	465b      	mov	r3, fp
 8004de4:	e489      	b.n	80046fa <_dtoa_r+0x5b2>
 8004de6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004de8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004dec:	e6a0      	b.n	8004b30 <_dtoa_r+0x9e8>
 8004dee:	2300      	movs	r3, #0
 8004df0:	e676      	b.n	8004ae0 <_dtoa_r+0x998>
 8004df2:	4631      	mov	r1, r6
 8004df4:	2205      	movs	r2, #5
 8004df6:	4648      	mov	r0, r9
 8004df8:	f001 f8cc 	bl	8005f94 <__multadd>
 8004dfc:	4601      	mov	r1, r0
 8004dfe:	4606      	mov	r6, r0
 8004e00:	4650      	mov	r0, sl
 8004e02:	f001 faad 	bl	8006360 <__mcmp>
 8004e06:	2800      	cmp	r0, #0
 8004e08:	f73f aead 	bgt.w	8004b66 <_dtoa_r+0xa1e>
 8004e0c:	e722      	b.n	8004c54 <_dtoa_r+0xb0c>
 8004e0e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004e12:	2602      	movs	r6, #2
 8004e14:	ed8d 7b00 	vstr	d7, [sp]
 8004e18:	f7ff bb02 	b.w	8004420 <_dtoa_r+0x2d8>
 8004e1c:	40140000 	.word	0x40140000
 8004e20:	080071d0 	.word	0x080071d0
 8004e24:	080071a8 	.word	0x080071a8
 8004e28:	401c0000 	.word	0x401c0000
 8004e2c:	40240000 	.word	0x40240000
 8004e30:	3fe00000 	.word	0x3fe00000
 8004e34:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e36:	2b00      	cmp	r3, #0
 8004e38:	f43f af1d 	beq.w	8004c76 <_dtoa_r+0xb2e>
 8004e3c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004e3e:	2c00      	cmp	r4, #0
 8004e40:	f77f aba8 	ble.w	8004594 <_dtoa_r+0x44c>
 8004e44:	2200      	movs	r2, #0
 8004e46:	4b45      	ldr	r3, [pc, #276]	; (8004f5c <_dtoa_r+0xe14>)
 8004e48:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e4c:	f7fb fe74 	bl	8000b38 <__aeabi_dmul>
 8004e50:	e9cd 0100 	strd	r0, r1, [sp]
 8004e54:	1c70      	adds	r0, r6, #1
 8004e56:	f7fb fe05 	bl	8000a64 <__aeabi_i2d>
 8004e5a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e5e:	f7fb fe6b 	bl	8000b38 <__aeabi_dmul>
 8004e62:	4b3f      	ldr	r3, [pc, #252]	; (8004f60 <_dtoa_r+0xe18>)
 8004e64:	2200      	movs	r2, #0
 8004e66:	f7fb fcb1 	bl	80007cc <__adddf3>
 8004e6a:	9b06      	ldr	r3, [sp, #24]
 8004e6c:	9412      	str	r4, [sp, #72]	; 0x48
 8004e6e:	3b01      	subs	r3, #1
 8004e70:	4606      	mov	r6, r0
 8004e72:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004e76:	9316      	str	r3, [sp, #88]	; 0x58
 8004e78:	f7ff baf3 	b.w	8004462 <_dtoa_r+0x31a>
 8004e7c:	4651      	mov	r1, sl
 8004e7e:	2201      	movs	r2, #1
 8004e80:	4648      	mov	r0, r9
 8004e82:	f001 fa17 	bl	80062b4 <__lshift>
 8004e86:	4631      	mov	r1, r6
 8004e88:	4682      	mov	sl, r0
 8004e8a:	f001 fa69 	bl	8006360 <__mcmp>
 8004e8e:	2800      	cmp	r0, #0
 8004e90:	dd3b      	ble.n	8004f0a <_dtoa_r+0xdc2>
 8004e92:	9b00      	ldr	r3, [sp, #0]
 8004e94:	2b39      	cmp	r3, #57	; 0x39
 8004e96:	d003      	beq.n	8004ea0 <_dtoa_r+0xd58>
 8004e98:	9b02      	ldr	r3, [sp, #8]
 8004e9a:	3331      	adds	r3, #49	; 0x31
 8004e9c:	9300      	str	r3, [sp, #0]
 8004e9e:	e733      	b.n	8004d08 <_dtoa_r+0xbc0>
 8004ea0:	2239      	movs	r2, #57	; 0x39
 8004ea2:	9502      	str	r5, [sp, #8]
 8004ea4:	703a      	strb	r2, [r7, #0]
 8004ea6:	4645      	mov	r5, r8
 8004ea8:	e58e      	b.n	80049c8 <_dtoa_r+0x880>
 8004eaa:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004eae:	2000      	movs	r0, #0
 8004eb0:	492c      	ldr	r1, [pc, #176]	; (8004f64 <_dtoa_r+0xe1c>)
 8004eb2:	f7fb fc89 	bl	80007c8 <__aeabi_dsub>
 8004eb6:	4632      	mov	r2, r6
 8004eb8:	463b      	mov	r3, r7
 8004eba:	f7fc f8cd 	bl	8001058 <__aeabi_dcmpgt>
 8004ebe:	b910      	cbnz	r0, 8004ec6 <_dtoa_r+0xd7e>
 8004ec0:	f7ff bb68 	b.w	8004594 <_dtoa_r+0x44c>
 8004ec4:	4614      	mov	r4, r2
 8004ec6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004eca:	2b30      	cmp	r3, #48	; 0x30
 8004ecc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004ed0:	d0f8      	beq.n	8004ec4 <_dtoa_r+0xd7c>
 8004ed2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004ed4:	9306      	str	r3, [sp, #24]
 8004ed6:	e58d      	b.n	80049f4 <_dtoa_r+0x8ac>
 8004ed8:	46d9      	mov	r9, fp
 8004eda:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004ede:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004ee2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004ee4:	9306      	str	r3, [sp, #24]
 8004ee6:	e404      	b.n	80046f2 <_dtoa_r+0x5aa>
 8004ee8:	9b00      	ldr	r3, [sp, #0]
 8004eea:	2b39      	cmp	r3, #57	; 0x39
 8004eec:	4621      	mov	r1, r4
 8004eee:	4632      	mov	r2, r6
 8004ef0:	f107 0401 	add.w	r4, r7, #1
 8004ef4:	465e      	mov	r6, fp
 8004ef6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004efa:	d0d1      	beq.n	8004ea0 <_dtoa_r+0xd58>
 8004efc:	2a00      	cmp	r2, #0
 8004efe:	f77f af03 	ble.w	8004d08 <_dtoa_r+0xbc0>
 8004f02:	460b      	mov	r3, r1
 8004f04:	3331      	adds	r3, #49	; 0x31
 8004f06:	9300      	str	r3, [sp, #0]
 8004f08:	e6fe      	b.n	8004d08 <_dtoa_r+0xbc0>
 8004f0a:	f47f aefd 	bne.w	8004d08 <_dtoa_r+0xbc0>
 8004f0e:	9b00      	ldr	r3, [sp, #0]
 8004f10:	07da      	lsls	r2, r3, #31
 8004f12:	f57f aef9 	bpl.w	8004d08 <_dtoa_r+0xbc0>
 8004f16:	e7bc      	b.n	8004e92 <_dtoa_r+0xd4a>
 8004f18:	4629      	mov	r1, r5
 8004f1a:	2300      	movs	r3, #0
 8004f1c:	220a      	movs	r2, #10
 8004f1e:	4648      	mov	r0, r9
 8004f20:	f001 f838 	bl	8005f94 <__multadd>
 8004f24:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f26:	2b00      	cmp	r3, #0
 8004f28:	4605      	mov	r5, r0
 8004f2a:	dd09      	ble.n	8004f40 <_dtoa_r+0xdf8>
 8004f2c:	9309      	str	r3, [sp, #36]	; 0x24
 8004f2e:	e484      	b.n	800483a <_dtoa_r+0x6f2>
 8004f30:	9b02      	ldr	r3, [sp, #8]
 8004f32:	2b02      	cmp	r3, #2
 8004f34:	dc0e      	bgt.n	8004f54 <_dtoa_r+0xe0c>
 8004f36:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f38:	e507      	b.n	800494a <_dtoa_r+0x802>
 8004f3a:	2602      	movs	r6, #2
 8004f3c:	f7ff ba70 	b.w	8004420 <_dtoa_r+0x2d8>
 8004f40:	9b02      	ldr	r3, [sp, #8]
 8004f42:	2b02      	cmp	r3, #2
 8004f44:	dc06      	bgt.n	8004f54 <_dtoa_r+0xe0c>
 8004f46:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f48:	e7f0      	b.n	8004f2c <_dtoa_r+0xde4>
 8004f4a:	f43f ac59 	beq.w	8004800 <_dtoa_r+0x6b8>
 8004f4e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004f52:	e450      	b.n	80047f6 <_dtoa_r+0x6ae>
 8004f54:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f56:	9309      	str	r3, [sp, #36]	; 0x24
 8004f58:	e678      	b.n	8004c4c <_dtoa_r+0xb04>
 8004f5a:	bf00      	nop
 8004f5c:	40240000 	.word	0x40240000
 8004f60:	401c0000 	.word	0x401c0000
 8004f64:	3fe00000 	.word	0x3fe00000

08004f68 <__sflush_r>:
 8004f68:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004f6c:	b29a      	uxth	r2, r3
 8004f6e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004f72:	460c      	mov	r4, r1
 8004f74:	0711      	lsls	r1, r2, #28
 8004f76:	4680      	mov	r8, r0
 8004f78:	d444      	bmi.n	8005004 <__sflush_r+0x9c>
 8004f7a:	6862      	ldr	r2, [r4, #4]
 8004f7c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004f80:	2a00      	cmp	r2, #0
 8004f82:	81a3      	strh	r3, [r4, #12]
 8004f84:	dd59      	ble.n	800503a <__sflush_r+0xd2>
 8004f86:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004f88:	2d00      	cmp	r5, #0
 8004f8a:	d053      	beq.n	8005034 <__sflush_r+0xcc>
 8004f8c:	2200      	movs	r2, #0
 8004f8e:	b29b      	uxth	r3, r3
 8004f90:	f8d8 6000 	ldr.w	r6, [r8]
 8004f94:	69e1      	ldr	r1, [r4, #28]
 8004f96:	f8c8 2000 	str.w	r2, [r8]
 8004f9a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8004f9e:	f040 8083 	bne.w	80050a8 <__sflush_r+0x140>
 8004fa2:	2301      	movs	r3, #1
 8004fa4:	4640      	mov	r0, r8
 8004fa6:	47a8      	blx	r5
 8004fa8:	1c42      	adds	r2, r0, #1
 8004faa:	d04a      	beq.n	8005042 <__sflush_r+0xda>
 8004fac:	89a3      	ldrh	r3, [r4, #12]
 8004fae:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004fb0:	69e1      	ldr	r1, [r4, #28]
 8004fb2:	075b      	lsls	r3, r3, #29
 8004fb4:	d505      	bpl.n	8004fc2 <__sflush_r+0x5a>
 8004fb6:	6862      	ldr	r2, [r4, #4]
 8004fb8:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8004fba:	1a80      	subs	r0, r0, r2
 8004fbc:	b10b      	cbz	r3, 8004fc2 <__sflush_r+0x5a>
 8004fbe:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8004fc0:	1ac0      	subs	r0, r0, r3
 8004fc2:	4602      	mov	r2, r0
 8004fc4:	2300      	movs	r3, #0
 8004fc6:	4640      	mov	r0, r8
 8004fc8:	47a8      	blx	r5
 8004fca:	1c47      	adds	r7, r0, #1
 8004fcc:	d045      	beq.n	800505a <__sflush_r+0xf2>
 8004fce:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004fd2:	6922      	ldr	r2, [r4, #16]
 8004fd4:	6022      	str	r2, [r4, #0]
 8004fd6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8004fda:	2200      	movs	r2, #0
 8004fdc:	81a3      	strh	r3, [r4, #12]
 8004fde:	04db      	lsls	r3, r3, #19
 8004fe0:	6062      	str	r2, [r4, #4]
 8004fe2:	d500      	bpl.n	8004fe6 <__sflush_r+0x7e>
 8004fe4:	6520      	str	r0, [r4, #80]	; 0x50
 8004fe6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004fe8:	f8c8 6000 	str.w	r6, [r8]
 8004fec:	b311      	cbz	r1, 8005034 <__sflush_r+0xcc>
 8004fee:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004ff2:	4299      	cmp	r1, r3
 8004ff4:	d002      	beq.n	8004ffc <__sflush_r+0x94>
 8004ff6:	4640      	mov	r0, r8
 8004ff8:	f000 f95e 	bl	80052b8 <_free_r>
 8004ffc:	2000      	movs	r0, #0
 8004ffe:	6320      	str	r0, [r4, #48]	; 0x30
 8005000:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005004:	6926      	ldr	r6, [r4, #16]
 8005006:	b1ae      	cbz	r6, 8005034 <__sflush_r+0xcc>
 8005008:	6825      	ldr	r5, [r4, #0]
 800500a:	6026      	str	r6, [r4, #0]
 800500c:	0792      	lsls	r2, r2, #30
 800500e:	bf0c      	ite	eq
 8005010:	6963      	ldreq	r3, [r4, #20]
 8005012:	2300      	movne	r3, #0
 8005014:	1bad      	subs	r5, r5, r6
 8005016:	60a3      	str	r3, [r4, #8]
 8005018:	e00a      	b.n	8005030 <__sflush_r+0xc8>
 800501a:	462b      	mov	r3, r5
 800501c:	4632      	mov	r2, r6
 800501e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005020:	69e1      	ldr	r1, [r4, #28]
 8005022:	4640      	mov	r0, r8
 8005024:	47b8      	blx	r7
 8005026:	2800      	cmp	r0, #0
 8005028:	eba5 0500 	sub.w	r5, r5, r0
 800502c:	4406      	add	r6, r0
 800502e:	dd2b      	ble.n	8005088 <__sflush_r+0x120>
 8005030:	2d00      	cmp	r5, #0
 8005032:	dcf2      	bgt.n	800501a <__sflush_r+0xb2>
 8005034:	2000      	movs	r0, #0
 8005036:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800503a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800503c:	2a00      	cmp	r2, #0
 800503e:	dca2      	bgt.n	8004f86 <__sflush_r+0x1e>
 8005040:	e7f8      	b.n	8005034 <__sflush_r+0xcc>
 8005042:	f8d8 3000 	ldr.w	r3, [r8]
 8005046:	2b00      	cmp	r3, #0
 8005048:	d0b0      	beq.n	8004fac <__sflush_r+0x44>
 800504a:	2b1d      	cmp	r3, #29
 800504c:	d001      	beq.n	8005052 <__sflush_r+0xea>
 800504e:	2b16      	cmp	r3, #22
 8005050:	d12c      	bne.n	80050ac <__sflush_r+0x144>
 8005052:	f8c8 6000 	str.w	r6, [r8]
 8005056:	2000      	movs	r0, #0
 8005058:	e7ed      	b.n	8005036 <__sflush_r+0xce>
 800505a:	f8d8 1000 	ldr.w	r1, [r8]
 800505e:	291d      	cmp	r1, #29
 8005060:	d81a      	bhi.n	8005098 <__sflush_r+0x130>
 8005062:	4b15      	ldr	r3, [pc, #84]	; (80050b8 <__sflush_r+0x150>)
 8005064:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005068:	40cb      	lsrs	r3, r1
 800506a:	43db      	mvns	r3, r3
 800506c:	f013 0301 	ands.w	r3, r3, #1
 8005070:	d114      	bne.n	800509c <__sflush_r+0x134>
 8005072:	6925      	ldr	r5, [r4, #16]
 8005074:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005078:	e9c4 5300 	strd	r5, r3, [r4]
 800507c:	04d5      	lsls	r5, r2, #19
 800507e:	81a2      	strh	r2, [r4, #12]
 8005080:	d5b1      	bpl.n	8004fe6 <__sflush_r+0x7e>
 8005082:	2900      	cmp	r1, #0
 8005084:	d1af      	bne.n	8004fe6 <__sflush_r+0x7e>
 8005086:	e7ad      	b.n	8004fe4 <__sflush_r+0x7c>
 8005088:	89a3      	ldrh	r3, [r4, #12]
 800508a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800508e:	81a3      	strh	r3, [r4, #12]
 8005090:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005094:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005098:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800509c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80050a0:	81a2      	strh	r2, [r4, #12]
 80050a2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80050a6:	e7c6      	b.n	8005036 <__sflush_r+0xce>
 80050a8:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80050aa:	e782      	b.n	8004fb2 <__sflush_r+0x4a>
 80050ac:	89a3      	ldrh	r3, [r4, #12]
 80050ae:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80050b2:	81a3      	strh	r3, [r4, #12]
 80050b4:	e7bf      	b.n	8005036 <__sflush_r+0xce>
 80050b6:	bf00      	nop
 80050b8:	20400001 	.word	0x20400001

080050bc <_fflush_r>:
 80050bc:	b538      	push	{r3, r4, r5, lr}
 80050be:	460d      	mov	r5, r1
 80050c0:	4604      	mov	r4, r0
 80050c2:	b108      	cbz	r0, 80050c8 <_fflush_r+0xc>
 80050c4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80050c6:	b1a3      	cbz	r3, 80050f2 <_fflush_r+0x36>
 80050c8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80050cc:	b1b8      	cbz	r0, 80050fe <_fflush_r+0x42>
 80050ce:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80050d0:	07db      	lsls	r3, r3, #31
 80050d2:	d401      	bmi.n	80050d8 <_fflush_r+0x1c>
 80050d4:	0581      	lsls	r1, r0, #22
 80050d6:	d51a      	bpl.n	800510e <_fflush_r+0x52>
 80050d8:	4620      	mov	r0, r4
 80050da:	4629      	mov	r1, r5
 80050dc:	f7ff ff44 	bl	8004f68 <__sflush_r>
 80050e0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80050e2:	07da      	lsls	r2, r3, #31
 80050e4:	4604      	mov	r4, r0
 80050e6:	d402      	bmi.n	80050ee <_fflush_r+0x32>
 80050e8:	89ab      	ldrh	r3, [r5, #12]
 80050ea:	059b      	lsls	r3, r3, #22
 80050ec:	d50a      	bpl.n	8005104 <_fflush_r+0x48>
 80050ee:	4620      	mov	r0, r4
 80050f0:	bd38      	pop	{r3, r4, r5, pc}
 80050f2:	f000 f83f 	bl	8005174 <__sinit>
 80050f6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80050fa:	2800      	cmp	r0, #0
 80050fc:	d1e7      	bne.n	80050ce <_fflush_r+0x12>
 80050fe:	4604      	mov	r4, r0
 8005100:	4620      	mov	r0, r4
 8005102:	bd38      	pop	{r3, r4, r5, pc}
 8005104:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005106:	f000 fb87 	bl	8005818 <__retarget_lock_release_recursive>
 800510a:	4620      	mov	r0, r4
 800510c:	bd38      	pop	{r3, r4, r5, pc}
 800510e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005110:	f000 fb80 	bl	8005814 <__retarget_lock_acquire_recursive>
 8005114:	e7e0      	b.n	80050d8 <_fflush_r+0x1c>
 8005116:	bf00      	nop

08005118 <std>:
 8005118:	b510      	push	{r4, lr}
 800511a:	2300      	movs	r3, #0
 800511c:	4604      	mov	r4, r0
 800511e:	8181      	strh	r1, [r0, #12]
 8005120:	81c2      	strh	r2, [r0, #14]
 8005122:	e9c0 3300 	strd	r3, r3, [r0]
 8005126:	6083      	str	r3, [r0, #8]
 8005128:	6643      	str	r3, [r0, #100]	; 0x64
 800512a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800512e:	6183      	str	r3, [r0, #24]
 8005130:	4619      	mov	r1, r3
 8005132:	2208      	movs	r2, #8
 8005134:	305c      	adds	r0, #92	; 0x5c
 8005136:	f7fd f8c9 	bl	80022cc <memset>
 800513a:	4807      	ldr	r0, [pc, #28]	; (8005158 <std+0x40>)
 800513c:	4907      	ldr	r1, [pc, #28]	; (800515c <std+0x44>)
 800513e:	4a08      	ldr	r2, [pc, #32]	; (8005160 <std+0x48>)
 8005140:	4b08      	ldr	r3, [pc, #32]	; (8005164 <std+0x4c>)
 8005142:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005144:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005148:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800514c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005150:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005154:	f000 bb5a 	b.w	800580c <__retarget_lock_init_recursive>
 8005158:	08006931 	.word	0x08006931
 800515c:	08006955 	.word	0x08006955
 8005160:	08006991 	.word	0x08006991
 8005164:	080069b1 	.word	0x080069b1

08005168 <_cleanup_r>:
 8005168:	4901      	ldr	r1, [pc, #4]	; (8005170 <_cleanup_r+0x8>)
 800516a:	f000 bb17 	b.w	800579c <_fwalk_reent>
 800516e:	bf00      	nop
 8005170:	08006c21 	.word	0x08006c21

08005174 <__sinit>:
 8005174:	b510      	push	{r4, lr}
 8005176:	4604      	mov	r4, r0
 8005178:	4812      	ldr	r0, [pc, #72]	; (80051c4 <__sinit+0x50>)
 800517a:	f000 fb4b 	bl	8005814 <__retarget_lock_acquire_recursive>
 800517e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005180:	b9d2      	cbnz	r2, 80051b8 <__sinit+0x44>
 8005182:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005186:	4810      	ldr	r0, [pc, #64]	; (80051c8 <__sinit+0x54>)
 8005188:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800518c:	2103      	movs	r1, #3
 800518e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005192:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005194:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005198:	6860      	ldr	r0, [r4, #4]
 800519a:	2104      	movs	r1, #4
 800519c:	f7ff ffbc 	bl	8005118 <std>
 80051a0:	2201      	movs	r2, #1
 80051a2:	2109      	movs	r1, #9
 80051a4:	68a0      	ldr	r0, [r4, #8]
 80051a6:	f7ff ffb7 	bl	8005118 <std>
 80051aa:	2202      	movs	r2, #2
 80051ac:	2112      	movs	r1, #18
 80051ae:	68e0      	ldr	r0, [r4, #12]
 80051b0:	f7ff ffb2 	bl	8005118 <std>
 80051b4:	2301      	movs	r3, #1
 80051b6:	63a3      	str	r3, [r4, #56]	; 0x38
 80051b8:	4802      	ldr	r0, [pc, #8]	; (80051c4 <__sinit+0x50>)
 80051ba:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80051be:	f000 bb2b 	b.w	8005818 <__retarget_lock_release_recursive>
 80051c2:	bf00      	nop
 80051c4:	20000cd4 	.word	0x20000cd4
 80051c8:	08005169 	.word	0x08005169

080051cc <__sfp_lock_acquire>:
 80051cc:	4801      	ldr	r0, [pc, #4]	; (80051d4 <__sfp_lock_acquire+0x8>)
 80051ce:	f000 bb21 	b.w	8005814 <__retarget_lock_acquire_recursive>
 80051d2:	bf00      	nop
 80051d4:	20000ce8 	.word	0x20000ce8

080051d8 <__sfp_lock_release>:
 80051d8:	4801      	ldr	r0, [pc, #4]	; (80051e0 <__sfp_lock_release+0x8>)
 80051da:	f000 bb1d 	b.w	8005818 <__retarget_lock_release_recursive>
 80051de:	bf00      	nop
 80051e0:	20000ce8 	.word	0x20000ce8

080051e4 <__libc_fini_array>:
 80051e4:	b538      	push	{r3, r4, r5, lr}
 80051e6:	4c0a      	ldr	r4, [pc, #40]	; (8005210 <__libc_fini_array+0x2c>)
 80051e8:	4d0a      	ldr	r5, [pc, #40]	; (8005214 <__libc_fini_array+0x30>)
 80051ea:	1b64      	subs	r4, r4, r5
 80051ec:	10a4      	asrs	r4, r4, #2
 80051ee:	d00a      	beq.n	8005206 <__libc_fini_array+0x22>
 80051f0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80051f4:	3b01      	subs	r3, #1
 80051f6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80051fa:	3c01      	subs	r4, #1
 80051fc:	f855 3904 	ldr.w	r3, [r5], #-4
 8005200:	4798      	blx	r3
 8005202:	2c00      	cmp	r4, #0
 8005204:	d1f9      	bne.n	80051fa <__libc_fini_array+0x16>
 8005206:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800520a:	f001 befd 	b.w	8007008 <_fini>
 800520e:	bf00      	nop
 8005210:	080073cc 	.word	0x080073cc
 8005214:	080073c8 	.word	0x080073c8

08005218 <_malloc_trim_r>:
 8005218:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800521a:	4f24      	ldr	r7, [pc, #144]	; (80052ac <_malloc_trim_r+0x94>)
 800521c:	460c      	mov	r4, r1
 800521e:	4606      	mov	r6, r0
 8005220:	f000 fe7c 	bl	8005f1c <__malloc_lock>
 8005224:	68bb      	ldr	r3, [r7, #8]
 8005226:	685d      	ldr	r5, [r3, #4]
 8005228:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800522c:	310f      	adds	r1, #15
 800522e:	f025 0503 	bic.w	r5, r5, #3
 8005232:	4429      	add	r1, r5
 8005234:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005238:	f021 010f 	bic.w	r1, r1, #15
 800523c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005240:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005244:	db07      	blt.n	8005256 <_malloc_trim_r+0x3e>
 8005246:	2100      	movs	r1, #0
 8005248:	4630      	mov	r0, r6
 800524a:	f001 fb5f 	bl	800690c <_sbrk_r>
 800524e:	68bb      	ldr	r3, [r7, #8]
 8005250:	442b      	add	r3, r5
 8005252:	4298      	cmp	r0, r3
 8005254:	d004      	beq.n	8005260 <_malloc_trim_r+0x48>
 8005256:	4630      	mov	r0, r6
 8005258:	f000 fe66 	bl	8005f28 <__malloc_unlock>
 800525c:	2000      	movs	r0, #0
 800525e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005260:	4261      	negs	r1, r4
 8005262:	4630      	mov	r0, r6
 8005264:	f001 fb52 	bl	800690c <_sbrk_r>
 8005268:	3001      	adds	r0, #1
 800526a:	d00d      	beq.n	8005288 <_malloc_trim_r+0x70>
 800526c:	4b10      	ldr	r3, [pc, #64]	; (80052b0 <_malloc_trim_r+0x98>)
 800526e:	68ba      	ldr	r2, [r7, #8]
 8005270:	6819      	ldr	r1, [r3, #0]
 8005272:	1b2d      	subs	r5, r5, r4
 8005274:	f045 0501 	orr.w	r5, r5, #1
 8005278:	4630      	mov	r0, r6
 800527a:	1b09      	subs	r1, r1, r4
 800527c:	6055      	str	r5, [r2, #4]
 800527e:	6019      	str	r1, [r3, #0]
 8005280:	f000 fe52 	bl	8005f28 <__malloc_unlock>
 8005284:	2001      	movs	r0, #1
 8005286:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005288:	2100      	movs	r1, #0
 800528a:	4630      	mov	r0, r6
 800528c:	f001 fb3e 	bl	800690c <_sbrk_r>
 8005290:	68ba      	ldr	r2, [r7, #8]
 8005292:	1a83      	subs	r3, r0, r2
 8005294:	2b0f      	cmp	r3, #15
 8005296:	ddde      	ble.n	8005256 <_malloc_trim_r+0x3e>
 8005298:	4c06      	ldr	r4, [pc, #24]	; (80052b4 <_malloc_trim_r+0x9c>)
 800529a:	4905      	ldr	r1, [pc, #20]	; (80052b0 <_malloc_trim_r+0x98>)
 800529c:	6824      	ldr	r4, [r4, #0]
 800529e:	f043 0301 	orr.w	r3, r3, #1
 80052a2:	1b00      	subs	r0, r0, r4
 80052a4:	6053      	str	r3, [r2, #4]
 80052a6:	6008      	str	r0, [r1, #0]
 80052a8:	e7d5      	b.n	8005256 <_malloc_trim_r+0x3e>
 80052aa:	bf00      	nop
 80052ac:	2000049c 	.word	0x2000049c
 80052b0:	20000abc 	.word	0x20000abc
 80052b4:	200008a4 	.word	0x200008a4

080052b8 <_free_r>:
 80052b8:	2900      	cmp	r1, #0
 80052ba:	d053      	beq.n	8005364 <_free_r+0xac>
 80052bc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80052be:	460c      	mov	r4, r1
 80052c0:	4606      	mov	r6, r0
 80052c2:	f000 fe2b 	bl	8005f1c <__malloc_lock>
 80052c6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80052ca:	4f71      	ldr	r7, [pc, #452]	; (8005490 <_free_r+0x1d8>)
 80052cc:	f02c 0101 	bic.w	r1, ip, #1
 80052d0:	f1a4 0508 	sub.w	r5, r4, #8
 80052d4:	186b      	adds	r3, r5, r1
 80052d6:	68b8      	ldr	r0, [r7, #8]
 80052d8:	685a      	ldr	r2, [r3, #4]
 80052da:	4298      	cmp	r0, r3
 80052dc:	f022 0203 	bic.w	r2, r2, #3
 80052e0:	d053      	beq.n	800538a <_free_r+0xd2>
 80052e2:	f01c 0f01 	tst.w	ip, #1
 80052e6:	605a      	str	r2, [r3, #4]
 80052e8:	eb03 0002 	add.w	r0, r3, r2
 80052ec:	d13b      	bne.n	8005366 <_free_r+0xae>
 80052ee:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80052f2:	6840      	ldr	r0, [r0, #4]
 80052f4:	eba5 050c 	sub.w	r5, r5, ip
 80052f8:	f107 0e08 	add.w	lr, r7, #8
 80052fc:	68ac      	ldr	r4, [r5, #8]
 80052fe:	4574      	cmp	r4, lr
 8005300:	4461      	add	r1, ip
 8005302:	f000 0001 	and.w	r0, r0, #1
 8005306:	d075      	beq.n	80053f4 <_free_r+0x13c>
 8005308:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800530c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005310:	f8cc 4008 	str.w	r4, [ip, #8]
 8005314:	b360      	cbz	r0, 8005370 <_free_r+0xb8>
 8005316:	f041 0301 	orr.w	r3, r1, #1
 800531a:	606b      	str	r3, [r5, #4]
 800531c:	5069      	str	r1, [r5, r1]
 800531e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005322:	d350      	bcc.n	80053c6 <_free_r+0x10e>
 8005324:	0a4b      	lsrs	r3, r1, #9
 8005326:	2b04      	cmp	r3, #4
 8005328:	d870      	bhi.n	800540c <_free_r+0x154>
 800532a:	098b      	lsrs	r3, r1, #6
 800532c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005330:	00e4      	lsls	r4, r4, #3
 8005332:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005336:	1938      	adds	r0, r7, r4
 8005338:	593b      	ldr	r3, [r7, r4]
 800533a:	3808      	subs	r0, #8
 800533c:	4298      	cmp	r0, r3
 800533e:	d078      	beq.n	8005432 <_free_r+0x17a>
 8005340:	685a      	ldr	r2, [r3, #4]
 8005342:	f022 0203 	bic.w	r2, r2, #3
 8005346:	428a      	cmp	r2, r1
 8005348:	d971      	bls.n	800542e <_free_r+0x176>
 800534a:	689b      	ldr	r3, [r3, #8]
 800534c:	4298      	cmp	r0, r3
 800534e:	d1f7      	bne.n	8005340 <_free_r+0x88>
 8005350:	68c3      	ldr	r3, [r0, #12]
 8005352:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005356:	609d      	str	r5, [r3, #8]
 8005358:	60c5      	str	r5, [r0, #12]
 800535a:	4630      	mov	r0, r6
 800535c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005360:	f000 bde2 	b.w	8005f28 <__malloc_unlock>
 8005364:	4770      	bx	lr
 8005366:	6840      	ldr	r0, [r0, #4]
 8005368:	f000 0001 	and.w	r0, r0, #1
 800536c:	2800      	cmp	r0, #0
 800536e:	d1d2      	bne.n	8005316 <_free_r+0x5e>
 8005370:	6898      	ldr	r0, [r3, #8]
 8005372:	4c48      	ldr	r4, [pc, #288]	; (8005494 <_free_r+0x1dc>)
 8005374:	4411      	add	r1, r2
 8005376:	42a0      	cmp	r0, r4
 8005378:	f041 0201 	orr.w	r2, r1, #1
 800537c:	d062      	beq.n	8005444 <_free_r+0x18c>
 800537e:	68db      	ldr	r3, [r3, #12]
 8005380:	60c3      	str	r3, [r0, #12]
 8005382:	6098      	str	r0, [r3, #8]
 8005384:	606a      	str	r2, [r5, #4]
 8005386:	5069      	str	r1, [r5, r1]
 8005388:	e7c9      	b.n	800531e <_free_r+0x66>
 800538a:	f01c 0f01 	tst.w	ip, #1
 800538e:	440a      	add	r2, r1
 8005390:	d107      	bne.n	80053a2 <_free_r+0xea>
 8005392:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005396:	1aed      	subs	r5, r5, r3
 8005398:	441a      	add	r2, r3
 800539a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800539e:	60cb      	str	r3, [r1, #12]
 80053a0:	6099      	str	r1, [r3, #8]
 80053a2:	4b3d      	ldr	r3, [pc, #244]	; (8005498 <_free_r+0x1e0>)
 80053a4:	681b      	ldr	r3, [r3, #0]
 80053a6:	f042 0101 	orr.w	r1, r2, #1
 80053aa:	4293      	cmp	r3, r2
 80053ac:	6069      	str	r1, [r5, #4]
 80053ae:	60bd      	str	r5, [r7, #8]
 80053b0:	d804      	bhi.n	80053bc <_free_r+0x104>
 80053b2:	4b3a      	ldr	r3, [pc, #232]	; (800549c <_free_r+0x1e4>)
 80053b4:	4630      	mov	r0, r6
 80053b6:	6819      	ldr	r1, [r3, #0]
 80053b8:	f7ff ff2e 	bl	8005218 <_malloc_trim_r>
 80053bc:	4630      	mov	r0, r6
 80053be:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80053c2:	f000 bdb1 	b.w	8005f28 <__malloc_unlock>
 80053c6:	08c9      	lsrs	r1, r1, #3
 80053c8:	6878      	ldr	r0, [r7, #4]
 80053ca:	1c4a      	adds	r2, r1, #1
 80053cc:	2301      	movs	r3, #1
 80053ce:	1089      	asrs	r1, r1, #2
 80053d0:	408b      	lsls	r3, r1
 80053d2:	4303      	orrs	r3, r0
 80053d4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80053d8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80053dc:	607b      	str	r3, [r7, #4]
 80053de:	3908      	subs	r1, #8
 80053e0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80053e4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80053e8:	60c5      	str	r5, [r0, #12]
 80053ea:	4630      	mov	r0, r6
 80053ec:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80053f0:	f000 bd9a 	b.w	8005f28 <__malloc_unlock>
 80053f4:	2800      	cmp	r0, #0
 80053f6:	d145      	bne.n	8005484 <_free_r+0x1cc>
 80053f8:	440a      	add	r2, r1
 80053fa:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 80053fe:	f042 0001 	orr.w	r0, r2, #1
 8005402:	60cb      	str	r3, [r1, #12]
 8005404:	6099      	str	r1, [r3, #8]
 8005406:	6068      	str	r0, [r5, #4]
 8005408:	50aa      	str	r2, [r5, r2]
 800540a:	e7d7      	b.n	80053bc <_free_r+0x104>
 800540c:	2b14      	cmp	r3, #20
 800540e:	d908      	bls.n	8005422 <_free_r+0x16a>
 8005410:	2b54      	cmp	r3, #84	; 0x54
 8005412:	d81e      	bhi.n	8005452 <_free_r+0x19a>
 8005414:	0b0b      	lsrs	r3, r1, #12
 8005416:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800541a:	00e4      	lsls	r4, r4, #3
 800541c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005420:	e789      	b.n	8005336 <_free_r+0x7e>
 8005422:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005426:	00e4      	lsls	r4, r4, #3
 8005428:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800542c:	e783      	b.n	8005336 <_free_r+0x7e>
 800542e:	4618      	mov	r0, r3
 8005430:	e78e      	b.n	8005350 <_free_r+0x98>
 8005432:	1093      	asrs	r3, r2, #2
 8005434:	6879      	ldr	r1, [r7, #4]
 8005436:	2201      	movs	r2, #1
 8005438:	fa02 f303 	lsl.w	r3, r2, r3
 800543c:	430b      	orrs	r3, r1
 800543e:	607b      	str	r3, [r7, #4]
 8005440:	4603      	mov	r3, r0
 8005442:	e786      	b.n	8005352 <_free_r+0x9a>
 8005444:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005448:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800544c:	606a      	str	r2, [r5, #4]
 800544e:	5069      	str	r1, [r5, r1]
 8005450:	e7b4      	b.n	80053bc <_free_r+0x104>
 8005452:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005456:	d806      	bhi.n	8005466 <_free_r+0x1ae>
 8005458:	0bcb      	lsrs	r3, r1, #15
 800545a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800545e:	00e4      	lsls	r4, r4, #3
 8005460:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005464:	e767      	b.n	8005336 <_free_r+0x7e>
 8005466:	f240 5254 	movw	r2, #1364	; 0x554
 800546a:	4293      	cmp	r3, r2
 800546c:	d806      	bhi.n	800547c <_free_r+0x1c4>
 800546e:	0c8b      	lsrs	r3, r1, #18
 8005470:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005474:	00e4      	lsls	r4, r4, #3
 8005476:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800547a:	e75c      	b.n	8005336 <_free_r+0x7e>
 800547c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005480:	227e      	movs	r2, #126	; 0x7e
 8005482:	e758      	b.n	8005336 <_free_r+0x7e>
 8005484:	f041 0201 	orr.w	r2, r1, #1
 8005488:	606a      	str	r2, [r5, #4]
 800548a:	6019      	str	r1, [r3, #0]
 800548c:	e796      	b.n	80053bc <_free_r+0x104>
 800548e:	bf00      	nop
 8005490:	2000049c 	.word	0x2000049c
 8005494:	200004a4 	.word	0x200004a4
 8005498:	200008a8 	.word	0x200008a8
 800549c:	20000aec 	.word	0x20000aec

080054a0 <__sfvwrite_r>:
 80054a0:	6893      	ldr	r3, [r2, #8]
 80054a2:	2b00      	cmp	r3, #0
 80054a4:	f000 80e4 	beq.w	8005670 <__sfvwrite_r+0x1d0>
 80054a8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80054ac:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80054b0:	b29b      	uxth	r3, r3
 80054b2:	460c      	mov	r4, r1
 80054b4:	0719      	lsls	r1, r3, #28
 80054b6:	b083      	sub	sp, #12
 80054b8:	4682      	mov	sl, r0
 80054ba:	4690      	mov	r8, r2
 80054bc:	d535      	bpl.n	800552a <__sfvwrite_r+0x8a>
 80054be:	6922      	ldr	r2, [r4, #16]
 80054c0:	b39a      	cbz	r2, 800552a <__sfvwrite_r+0x8a>
 80054c2:	f013 0202 	ands.w	r2, r3, #2
 80054c6:	f8d8 6000 	ldr.w	r6, [r8]
 80054ca:	d03d      	beq.n	8005548 <__sfvwrite_r+0xa8>
 80054cc:	2700      	movs	r7, #0
 80054ce:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80054d2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80054d6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005798 <__sfvwrite_r+0x2f8>
 80054da:	463d      	mov	r5, r7
 80054dc:	454d      	cmp	r5, r9
 80054de:	462b      	mov	r3, r5
 80054e0:	463a      	mov	r2, r7
 80054e2:	bf28      	it	cs
 80054e4:	464b      	movcs	r3, r9
 80054e6:	4661      	mov	r1, ip
 80054e8:	4650      	mov	r0, sl
 80054ea:	b1d5      	cbz	r5, 8005522 <__sfvwrite_r+0x82>
 80054ec:	47d8      	blx	fp
 80054ee:	2800      	cmp	r0, #0
 80054f0:	f340 80c6 	ble.w	8005680 <__sfvwrite_r+0x1e0>
 80054f4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80054f8:	1a1b      	subs	r3, r3, r0
 80054fa:	4407      	add	r7, r0
 80054fc:	1a2d      	subs	r5, r5, r0
 80054fe:	f8c8 3008 	str.w	r3, [r8, #8]
 8005502:	2b00      	cmp	r3, #0
 8005504:	f000 80b0 	beq.w	8005668 <__sfvwrite_r+0x1c8>
 8005508:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800550c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005510:	454d      	cmp	r5, r9
 8005512:	462b      	mov	r3, r5
 8005514:	463a      	mov	r2, r7
 8005516:	bf28      	it	cs
 8005518:	464b      	movcs	r3, r9
 800551a:	4661      	mov	r1, ip
 800551c:	4650      	mov	r0, sl
 800551e:	2d00      	cmp	r5, #0
 8005520:	d1e4      	bne.n	80054ec <__sfvwrite_r+0x4c>
 8005522:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005526:	3608      	adds	r6, #8
 8005528:	e7d8      	b.n	80054dc <__sfvwrite_r+0x3c>
 800552a:	4621      	mov	r1, r4
 800552c:	4650      	mov	r0, sl
 800552e:	f7fe fd03 	bl	8003f38 <__swsetup_r>
 8005532:	2800      	cmp	r0, #0
 8005534:	f040 812a 	bne.w	800578c <__sfvwrite_r+0x2ec>
 8005538:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800553c:	f8d8 6000 	ldr.w	r6, [r8]
 8005540:	b29b      	uxth	r3, r3
 8005542:	f013 0202 	ands.w	r2, r3, #2
 8005546:	d1c1      	bne.n	80054cc <__sfvwrite_r+0x2c>
 8005548:	f013 0901 	ands.w	r9, r3, #1
 800554c:	d15d      	bne.n	800560a <__sfvwrite_r+0x16a>
 800554e:	68a7      	ldr	r7, [r4, #8]
 8005550:	6820      	ldr	r0, [r4, #0]
 8005552:	464d      	mov	r5, r9
 8005554:	2d00      	cmp	r5, #0
 8005556:	d054      	beq.n	8005602 <__sfvwrite_r+0x162>
 8005558:	059a      	lsls	r2, r3, #22
 800555a:	f140 809b 	bpl.w	8005694 <__sfvwrite_r+0x1f4>
 800555e:	42af      	cmp	r7, r5
 8005560:	46bb      	mov	fp, r7
 8005562:	f200 80d8 	bhi.w	8005716 <__sfvwrite_r+0x276>
 8005566:	f413 6f90 	tst.w	r3, #1152	; 0x480
 800556a:	d02f      	beq.n	80055cc <__sfvwrite_r+0x12c>
 800556c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005570:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005574:	eba0 0b01 	sub.w	fp, r0, r1
 8005578:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 800557c:	1c68      	adds	r0, r5, #1
 800557e:	107f      	asrs	r7, r7, #1
 8005580:	4458      	add	r0, fp
 8005582:	42b8      	cmp	r0, r7
 8005584:	463a      	mov	r2, r7
 8005586:	bf84      	itt	hi
 8005588:	4607      	movhi	r7, r0
 800558a:	463a      	movhi	r2, r7
 800558c:	055b      	lsls	r3, r3, #21
 800558e:	f140 80d3 	bpl.w	8005738 <__sfvwrite_r+0x298>
 8005592:	4611      	mov	r1, r2
 8005594:	4650      	mov	r0, sl
 8005596:	f000 f9b9 	bl	800590c <_malloc_r>
 800559a:	2800      	cmp	r0, #0
 800559c:	f000 80f0 	beq.w	8005780 <__sfvwrite_r+0x2e0>
 80055a0:	465a      	mov	r2, fp
 80055a2:	6921      	ldr	r1, [r4, #16]
 80055a4:	9001      	str	r0, [sp, #4]
 80055a6:	f7fa ffab 	bl	8000500 <memcpy>
 80055aa:	89a2      	ldrh	r2, [r4, #12]
 80055ac:	9b01      	ldr	r3, [sp, #4]
 80055ae:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80055b2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80055b6:	81a2      	strh	r2, [r4, #12]
 80055b8:	eba7 020b 	sub.w	r2, r7, fp
 80055bc:	eb03 000b 	add.w	r0, r3, fp
 80055c0:	6167      	str	r7, [r4, #20]
 80055c2:	6123      	str	r3, [r4, #16]
 80055c4:	6020      	str	r0, [r4, #0]
 80055c6:	60a2      	str	r2, [r4, #8]
 80055c8:	462f      	mov	r7, r5
 80055ca:	46ab      	mov	fp, r5
 80055cc:	465a      	mov	r2, fp
 80055ce:	4649      	mov	r1, r9
 80055d0:	f000 fc40 	bl	8005e54 <memmove>
 80055d4:	68a2      	ldr	r2, [r4, #8]
 80055d6:	6823      	ldr	r3, [r4, #0]
 80055d8:	1bd2      	subs	r2, r2, r7
 80055da:	445b      	add	r3, fp
 80055dc:	462f      	mov	r7, r5
 80055de:	60a2      	str	r2, [r4, #8]
 80055e0:	6023      	str	r3, [r4, #0]
 80055e2:	2500      	movs	r5, #0
 80055e4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80055e8:	1bdb      	subs	r3, r3, r7
 80055ea:	44b9      	add	r9, r7
 80055ec:	f8c8 3008 	str.w	r3, [r8, #8]
 80055f0:	2b00      	cmp	r3, #0
 80055f2:	d039      	beq.n	8005668 <__sfvwrite_r+0x1c8>
 80055f4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80055f8:	68a7      	ldr	r7, [r4, #8]
 80055fa:	6820      	ldr	r0, [r4, #0]
 80055fc:	b29b      	uxth	r3, r3
 80055fe:	2d00      	cmp	r5, #0
 8005600:	d1aa      	bne.n	8005558 <__sfvwrite_r+0xb8>
 8005602:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005606:	3608      	adds	r6, #8
 8005608:	e7a4      	b.n	8005554 <__sfvwrite_r+0xb4>
 800560a:	4633      	mov	r3, r6
 800560c:	4691      	mov	r9, r2
 800560e:	4610      	mov	r0, r2
 8005610:	4617      	mov	r7, r2
 8005612:	464e      	mov	r6, r9
 8005614:	469b      	mov	fp, r3
 8005616:	2f00      	cmp	r7, #0
 8005618:	d06b      	beq.n	80056f2 <__sfvwrite_r+0x252>
 800561a:	2800      	cmp	r0, #0
 800561c:	d071      	beq.n	8005702 <__sfvwrite_r+0x262>
 800561e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005622:	6820      	ldr	r0, [r4, #0]
 8005624:	45b9      	cmp	r9, r7
 8005626:	464b      	mov	r3, r9
 8005628:	bf28      	it	cs
 800562a:	463b      	movcs	r3, r7
 800562c:	4288      	cmp	r0, r1
 800562e:	d903      	bls.n	8005638 <__sfvwrite_r+0x198>
 8005630:	68a5      	ldr	r5, [r4, #8]
 8005632:	4415      	add	r5, r2
 8005634:	42ab      	cmp	r3, r5
 8005636:	dc71      	bgt.n	800571c <__sfvwrite_r+0x27c>
 8005638:	429a      	cmp	r2, r3
 800563a:	f300 8093 	bgt.w	8005764 <__sfvwrite_r+0x2c4>
 800563e:	4613      	mov	r3, r2
 8005640:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005642:	69e1      	ldr	r1, [r4, #28]
 8005644:	4632      	mov	r2, r6
 8005646:	4650      	mov	r0, sl
 8005648:	47a8      	blx	r5
 800564a:	1e05      	subs	r5, r0, #0
 800564c:	dd18      	ble.n	8005680 <__sfvwrite_r+0x1e0>
 800564e:	ebb9 0905 	subs.w	r9, r9, r5
 8005652:	d00f      	beq.n	8005674 <__sfvwrite_r+0x1d4>
 8005654:	2001      	movs	r0, #1
 8005656:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800565a:	1b5b      	subs	r3, r3, r5
 800565c:	442e      	add	r6, r5
 800565e:	1b7f      	subs	r7, r7, r5
 8005660:	f8c8 3008 	str.w	r3, [r8, #8]
 8005664:	2b00      	cmp	r3, #0
 8005666:	d1d6      	bne.n	8005616 <__sfvwrite_r+0x176>
 8005668:	2000      	movs	r0, #0
 800566a:	b003      	add	sp, #12
 800566c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005670:	2000      	movs	r0, #0
 8005672:	4770      	bx	lr
 8005674:	4621      	mov	r1, r4
 8005676:	4650      	mov	r0, sl
 8005678:	f7ff fd20 	bl	80050bc <_fflush_r>
 800567c:	2800      	cmp	r0, #0
 800567e:	d0ea      	beq.n	8005656 <__sfvwrite_r+0x1b6>
 8005680:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005684:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005688:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800568c:	81a3      	strh	r3, [r4, #12]
 800568e:	b003      	add	sp, #12
 8005690:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005694:	6923      	ldr	r3, [r4, #16]
 8005696:	4283      	cmp	r3, r0
 8005698:	d315      	bcc.n	80056c6 <__sfvwrite_r+0x226>
 800569a:	6961      	ldr	r1, [r4, #20]
 800569c:	42a9      	cmp	r1, r5
 800569e:	d812      	bhi.n	80056c6 <__sfvwrite_r+0x226>
 80056a0:	4b3c      	ldr	r3, [pc, #240]	; (8005794 <__sfvwrite_r+0x2f4>)
 80056a2:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80056a4:	429d      	cmp	r5, r3
 80056a6:	bf94      	ite	ls
 80056a8:	462b      	movls	r3, r5
 80056aa:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80056ae:	464a      	mov	r2, r9
 80056b0:	fb93 f3f1 	sdiv	r3, r3, r1
 80056b4:	4650      	mov	r0, sl
 80056b6:	fb01 f303 	mul.w	r3, r1, r3
 80056ba:	69e1      	ldr	r1, [r4, #28]
 80056bc:	47b8      	blx	r7
 80056be:	1e07      	subs	r7, r0, #0
 80056c0:	ddde      	ble.n	8005680 <__sfvwrite_r+0x1e0>
 80056c2:	1bed      	subs	r5, r5, r7
 80056c4:	e78e      	b.n	80055e4 <__sfvwrite_r+0x144>
 80056c6:	42af      	cmp	r7, r5
 80056c8:	bf28      	it	cs
 80056ca:	462f      	movcs	r7, r5
 80056cc:	463a      	mov	r2, r7
 80056ce:	4649      	mov	r1, r9
 80056d0:	f000 fbc0 	bl	8005e54 <memmove>
 80056d4:	68a3      	ldr	r3, [r4, #8]
 80056d6:	6822      	ldr	r2, [r4, #0]
 80056d8:	1bdb      	subs	r3, r3, r7
 80056da:	443a      	add	r2, r7
 80056dc:	60a3      	str	r3, [r4, #8]
 80056de:	6022      	str	r2, [r4, #0]
 80056e0:	2b00      	cmp	r3, #0
 80056e2:	d1ee      	bne.n	80056c2 <__sfvwrite_r+0x222>
 80056e4:	4621      	mov	r1, r4
 80056e6:	4650      	mov	r0, sl
 80056e8:	f7ff fce8 	bl	80050bc <_fflush_r>
 80056ec:	2800      	cmp	r0, #0
 80056ee:	d0e8      	beq.n	80056c2 <__sfvwrite_r+0x222>
 80056f0:	e7c6      	b.n	8005680 <__sfvwrite_r+0x1e0>
 80056f2:	f10b 0308 	add.w	r3, fp, #8
 80056f6:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 80056fa:	469b      	mov	fp, r3
 80056fc:	3308      	adds	r3, #8
 80056fe:	2f00      	cmp	r7, #0
 8005700:	d0f9      	beq.n	80056f6 <__sfvwrite_r+0x256>
 8005702:	463a      	mov	r2, r7
 8005704:	210a      	movs	r1, #10
 8005706:	4630      	mov	r0, r6
 8005708:	f7fb f80a 	bl	8000720 <memchr>
 800570c:	b338      	cbz	r0, 800575e <__sfvwrite_r+0x2be>
 800570e:	3001      	adds	r0, #1
 8005710:	eba0 0906 	sub.w	r9, r0, r6
 8005714:	e783      	b.n	800561e <__sfvwrite_r+0x17e>
 8005716:	462f      	mov	r7, r5
 8005718:	46ab      	mov	fp, r5
 800571a:	e757      	b.n	80055cc <__sfvwrite_r+0x12c>
 800571c:	4631      	mov	r1, r6
 800571e:	462a      	mov	r2, r5
 8005720:	f000 fb98 	bl	8005e54 <memmove>
 8005724:	6823      	ldr	r3, [r4, #0]
 8005726:	442b      	add	r3, r5
 8005728:	6023      	str	r3, [r4, #0]
 800572a:	4621      	mov	r1, r4
 800572c:	4650      	mov	r0, sl
 800572e:	f7ff fcc5 	bl	80050bc <_fflush_r>
 8005732:	2800      	cmp	r0, #0
 8005734:	d08b      	beq.n	800564e <__sfvwrite_r+0x1ae>
 8005736:	e7a3      	b.n	8005680 <__sfvwrite_r+0x1e0>
 8005738:	4650      	mov	r0, sl
 800573a:	f000 ff05 	bl	8006548 <_realloc_r>
 800573e:	4603      	mov	r3, r0
 8005740:	2800      	cmp	r0, #0
 8005742:	f47f af39 	bne.w	80055b8 <__sfvwrite_r+0x118>
 8005746:	6921      	ldr	r1, [r4, #16]
 8005748:	4650      	mov	r0, sl
 800574a:	f7ff fdb5 	bl	80052b8 <_free_r>
 800574e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005752:	220c      	movs	r2, #12
 8005754:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005758:	f8ca 2000 	str.w	r2, [sl]
 800575c:	e792      	b.n	8005684 <__sfvwrite_r+0x1e4>
 800575e:	f107 0901 	add.w	r9, r7, #1
 8005762:	e75c      	b.n	800561e <__sfvwrite_r+0x17e>
 8005764:	461a      	mov	r2, r3
 8005766:	4631      	mov	r1, r6
 8005768:	9301      	str	r3, [sp, #4]
 800576a:	f000 fb73 	bl	8005e54 <memmove>
 800576e:	9b01      	ldr	r3, [sp, #4]
 8005770:	68a1      	ldr	r1, [r4, #8]
 8005772:	6822      	ldr	r2, [r4, #0]
 8005774:	1ac9      	subs	r1, r1, r3
 8005776:	441a      	add	r2, r3
 8005778:	60a1      	str	r1, [r4, #8]
 800577a:	6022      	str	r2, [r4, #0]
 800577c:	461d      	mov	r5, r3
 800577e:	e766      	b.n	800564e <__sfvwrite_r+0x1ae>
 8005780:	230c      	movs	r3, #12
 8005782:	f8ca 3000 	str.w	r3, [sl]
 8005786:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800578a:	e77b      	b.n	8005684 <__sfvwrite_r+0x1e4>
 800578c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005790:	e76b      	b.n	800566a <__sfvwrite_r+0x1ca>
 8005792:	bf00      	nop
 8005794:	7ffffffe 	.word	0x7ffffffe
 8005798:	7ffffc00 	.word	0x7ffffc00

0800579c <_fwalk_reent>:
 800579c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80057a0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80057a4:	d01f      	beq.n	80057e6 <_fwalk_reent+0x4a>
 80057a6:	4688      	mov	r8, r1
 80057a8:	4606      	mov	r6, r0
 80057aa:	f04f 0900 	mov.w	r9, #0
 80057ae:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 80057b2:	3d01      	subs	r5, #1
 80057b4:	d411      	bmi.n	80057da <_fwalk_reent+0x3e>
 80057b6:	89a3      	ldrh	r3, [r4, #12]
 80057b8:	2b01      	cmp	r3, #1
 80057ba:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 80057be:	4621      	mov	r1, r4
 80057c0:	4630      	mov	r0, r6
 80057c2:	d906      	bls.n	80057d2 <_fwalk_reent+0x36>
 80057c4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80057c8:	3301      	adds	r3, #1
 80057ca:	d002      	beq.n	80057d2 <_fwalk_reent+0x36>
 80057cc:	47c0      	blx	r8
 80057ce:	ea49 0900 	orr.w	r9, r9, r0
 80057d2:	1c6b      	adds	r3, r5, #1
 80057d4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 80057d8:	d1ed      	bne.n	80057b6 <_fwalk_reent+0x1a>
 80057da:	683f      	ldr	r7, [r7, #0]
 80057dc:	2f00      	cmp	r7, #0
 80057de:	d1e6      	bne.n	80057ae <_fwalk_reent+0x12>
 80057e0:	4648      	mov	r0, r9
 80057e2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80057e6:	46b9      	mov	r9, r7
 80057e8:	4648      	mov	r0, r9
 80057ea:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80057ee:	bf00      	nop

080057f0 <_localeconv_r>:
 80057f0:	4a04      	ldr	r2, [pc, #16]	; (8005804 <_localeconv_r+0x14>)
 80057f2:	4b05      	ldr	r3, [pc, #20]	; (8005808 <_localeconv_r+0x18>)
 80057f4:	6812      	ldr	r2, [r2, #0]
 80057f6:	6b50      	ldr	r0, [r2, #52]	; 0x34
 80057f8:	2800      	cmp	r0, #0
 80057fa:	bf08      	it	eq
 80057fc:	4618      	moveq	r0, r3
 80057fe:	30f0      	adds	r0, #240	; 0xf0
 8005800:	4770      	bx	lr
 8005802:	bf00      	nop
 8005804:	20000068 	.word	0x20000068
 8005808:	200008ac 	.word	0x200008ac

0800580c <__retarget_lock_init_recursive>:
 800580c:	4770      	bx	lr
 800580e:	bf00      	nop

08005810 <__retarget_lock_close_recursive>:
 8005810:	4770      	bx	lr
 8005812:	bf00      	nop

08005814 <__retarget_lock_acquire_recursive>:
 8005814:	4770      	bx	lr
 8005816:	bf00      	nop

08005818 <__retarget_lock_release_recursive>:
 8005818:	4770      	bx	lr
 800581a:	bf00      	nop

0800581c <__swhatbuf_r>:
 800581c:	b570      	push	{r4, r5, r6, lr}
 800581e:	460c      	mov	r4, r1
 8005820:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005824:	2900      	cmp	r1, #0
 8005826:	b096      	sub	sp, #88	; 0x58
 8005828:	4615      	mov	r5, r2
 800582a:	461e      	mov	r6, r3
 800582c:	da0f      	bge.n	800584e <__swhatbuf_r+0x32>
 800582e:	89a2      	ldrh	r2, [r4, #12]
 8005830:	2300      	movs	r3, #0
 8005832:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005836:	6033      	str	r3, [r6, #0]
 8005838:	d104      	bne.n	8005844 <__swhatbuf_r+0x28>
 800583a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800583e:	602b      	str	r3, [r5, #0]
 8005840:	b016      	add	sp, #88	; 0x58
 8005842:	bd70      	pop	{r4, r5, r6, pc}
 8005844:	2240      	movs	r2, #64	; 0x40
 8005846:	4618      	mov	r0, r3
 8005848:	602a      	str	r2, [r5, #0]
 800584a:	b016      	add	sp, #88	; 0x58
 800584c:	bd70      	pop	{r4, r5, r6, pc}
 800584e:	466a      	mov	r2, sp
 8005850:	f001 fad0 	bl	8006df4 <_fstat_r>
 8005854:	2800      	cmp	r0, #0
 8005856:	dbea      	blt.n	800582e <__swhatbuf_r+0x12>
 8005858:	9b01      	ldr	r3, [sp, #4]
 800585a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 800585e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005862:	fab3 f383 	clz	r3, r3
 8005866:	095b      	lsrs	r3, r3, #5
 8005868:	f44f 6280 	mov.w	r2, #1024	; 0x400
 800586c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005870:	6033      	str	r3, [r6, #0]
 8005872:	602a      	str	r2, [r5, #0]
 8005874:	b016      	add	sp, #88	; 0x58
 8005876:	bd70      	pop	{r4, r5, r6, pc}

08005878 <__smakebuf_r>:
 8005878:	898a      	ldrh	r2, [r1, #12]
 800587a:	0792      	lsls	r2, r2, #30
 800587c:	460b      	mov	r3, r1
 800587e:	d506      	bpl.n	800588e <__smakebuf_r+0x16>
 8005880:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005884:	2101      	movs	r1, #1
 8005886:	601a      	str	r2, [r3, #0]
 8005888:	e9c3 2104 	strd	r2, r1, [r3, #16]
 800588c:	4770      	bx	lr
 800588e:	b570      	push	{r4, r5, r6, lr}
 8005890:	b082      	sub	sp, #8
 8005892:	ab01      	add	r3, sp, #4
 8005894:	466a      	mov	r2, sp
 8005896:	460c      	mov	r4, r1
 8005898:	4605      	mov	r5, r0
 800589a:	f7ff ffbf 	bl	800581c <__swhatbuf_r>
 800589e:	9900      	ldr	r1, [sp, #0]
 80058a0:	4606      	mov	r6, r0
 80058a2:	4628      	mov	r0, r5
 80058a4:	f000 f832 	bl	800590c <_malloc_r>
 80058a8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80058ac:	b1d8      	cbz	r0, 80058e6 <__smakebuf_r+0x6e>
 80058ae:	4916      	ldr	r1, [pc, #88]	; (8005908 <__smakebuf_r+0x90>)
 80058b0:	63e9      	str	r1, [r5, #60]	; 0x3c
 80058b2:	9a01      	ldr	r2, [sp, #4]
 80058b4:	9900      	ldr	r1, [sp, #0]
 80058b6:	6020      	str	r0, [r4, #0]
 80058b8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80058bc:	81a3      	strh	r3, [r4, #12]
 80058be:	e9c4 0104 	strd	r0, r1, [r4, #16]
 80058c2:	b91a      	cbnz	r2, 80058cc <__smakebuf_r+0x54>
 80058c4:	4333      	orrs	r3, r6
 80058c6:	81a3      	strh	r3, [r4, #12]
 80058c8:	b002      	add	sp, #8
 80058ca:	bd70      	pop	{r4, r5, r6, pc}
 80058cc:	4628      	mov	r0, r5
 80058ce:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80058d2:	f001 faa3 	bl	8006e1c <_isatty_r>
 80058d6:	b1a0      	cbz	r0, 8005902 <__smakebuf_r+0x8a>
 80058d8:	89a3      	ldrh	r3, [r4, #12]
 80058da:	f023 0303 	bic.w	r3, r3, #3
 80058de:	f043 0301 	orr.w	r3, r3, #1
 80058e2:	b21b      	sxth	r3, r3
 80058e4:	e7ee      	b.n	80058c4 <__smakebuf_r+0x4c>
 80058e6:	059a      	lsls	r2, r3, #22
 80058e8:	d4ee      	bmi.n	80058c8 <__smakebuf_r+0x50>
 80058ea:	f023 0303 	bic.w	r3, r3, #3
 80058ee:	f104 0243 	add.w	r2, r4, #67	; 0x43
 80058f2:	f043 0302 	orr.w	r3, r3, #2
 80058f6:	2101      	movs	r1, #1
 80058f8:	81a3      	strh	r3, [r4, #12]
 80058fa:	6022      	str	r2, [r4, #0]
 80058fc:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005900:	e7e2      	b.n	80058c8 <__smakebuf_r+0x50>
 8005902:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005906:	e7dd      	b.n	80058c4 <__smakebuf_r+0x4c>
 8005908:	08005169 	.word	0x08005169

0800590c <_malloc_r>:
 800590c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005910:	f101 050b 	add.w	r5, r1, #11
 8005914:	2d16      	cmp	r5, #22
 8005916:	b083      	sub	sp, #12
 8005918:	4606      	mov	r6, r0
 800591a:	d823      	bhi.n	8005964 <_malloc_r+0x58>
 800591c:	2910      	cmp	r1, #16
 800591e:	f200 80b9 	bhi.w	8005a94 <_malloc_r+0x188>
 8005922:	f000 fafb 	bl	8005f1c <__malloc_lock>
 8005926:	2510      	movs	r5, #16
 8005928:	2318      	movs	r3, #24
 800592a:	2002      	movs	r0, #2
 800592c:	4fc5      	ldr	r7, [pc, #788]	; (8005c44 <_malloc_r+0x338>)
 800592e:	443b      	add	r3, r7
 8005930:	f1a3 0208 	sub.w	r2, r3, #8
 8005934:	685c      	ldr	r4, [r3, #4]
 8005936:	4294      	cmp	r4, r2
 8005938:	f000 8166 	beq.w	8005c08 <_malloc_r+0x2fc>
 800593c:	6863      	ldr	r3, [r4, #4]
 800593e:	f023 0303 	bic.w	r3, r3, #3
 8005942:	4423      	add	r3, r4
 8005944:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005948:	685a      	ldr	r2, [r3, #4]
 800594a:	60e9      	str	r1, [r5, #12]
 800594c:	f042 0201 	orr.w	r2, r2, #1
 8005950:	608d      	str	r5, [r1, #8]
 8005952:	4630      	mov	r0, r6
 8005954:	605a      	str	r2, [r3, #4]
 8005956:	f000 fae7 	bl	8005f28 <__malloc_unlock>
 800595a:	3408      	adds	r4, #8
 800595c:	4620      	mov	r0, r4
 800595e:	b003      	add	sp, #12
 8005960:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005964:	f035 0507 	bics.w	r5, r5, #7
 8005968:	f100 8094 	bmi.w	8005a94 <_malloc_r+0x188>
 800596c:	42a9      	cmp	r1, r5
 800596e:	f200 8091 	bhi.w	8005a94 <_malloc_r+0x188>
 8005972:	f000 fad3 	bl	8005f1c <__malloc_lock>
 8005976:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 800597a:	f0c0 8183 	bcc.w	8005c84 <_malloc_r+0x378>
 800597e:	0a6b      	lsrs	r3, r5, #9
 8005980:	f000 808f 	beq.w	8005aa2 <_malloc_r+0x196>
 8005984:	2b04      	cmp	r3, #4
 8005986:	f200 8146 	bhi.w	8005c16 <_malloc_r+0x30a>
 800598a:	09ab      	lsrs	r3, r5, #6
 800598c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005990:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005994:	00c3      	lsls	r3, r0, #3
 8005996:	4fab      	ldr	r7, [pc, #684]	; (8005c44 <_malloc_r+0x338>)
 8005998:	443b      	add	r3, r7
 800599a:	f1a3 0108 	sub.w	r1, r3, #8
 800599e:	685c      	ldr	r4, [r3, #4]
 80059a0:	42a1      	cmp	r1, r4
 80059a2:	d106      	bne.n	80059b2 <_malloc_r+0xa6>
 80059a4:	e00c      	b.n	80059c0 <_malloc_r+0xb4>
 80059a6:	2a00      	cmp	r2, #0
 80059a8:	f280 811d 	bge.w	8005be6 <_malloc_r+0x2da>
 80059ac:	68e4      	ldr	r4, [r4, #12]
 80059ae:	42a1      	cmp	r1, r4
 80059b0:	d006      	beq.n	80059c0 <_malloc_r+0xb4>
 80059b2:	6863      	ldr	r3, [r4, #4]
 80059b4:	f023 0303 	bic.w	r3, r3, #3
 80059b8:	1b5a      	subs	r2, r3, r5
 80059ba:	2a0f      	cmp	r2, #15
 80059bc:	ddf3      	ble.n	80059a6 <_malloc_r+0x9a>
 80059be:	4660      	mov	r0, ip
 80059c0:	693c      	ldr	r4, [r7, #16]
 80059c2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005c58 <_malloc_r+0x34c>
 80059c6:	4564      	cmp	r4, ip
 80059c8:	d071      	beq.n	8005aae <_malloc_r+0x1a2>
 80059ca:	6863      	ldr	r3, [r4, #4]
 80059cc:	f023 0303 	bic.w	r3, r3, #3
 80059d0:	1b5a      	subs	r2, r3, r5
 80059d2:	2a0f      	cmp	r2, #15
 80059d4:	f300 8144 	bgt.w	8005c60 <_malloc_r+0x354>
 80059d8:	2a00      	cmp	r2, #0
 80059da:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 80059de:	f280 8126 	bge.w	8005c2e <_malloc_r+0x322>
 80059e2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80059e6:	f080 8169 	bcs.w	8005cbc <_malloc_r+0x3b0>
 80059ea:	08db      	lsrs	r3, r3, #3
 80059ec:	1c59      	adds	r1, r3, #1
 80059ee:	687a      	ldr	r2, [r7, #4]
 80059f0:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 80059f4:	f8c4 8008 	str.w	r8, [r4, #8]
 80059f8:	f04f 0e01 	mov.w	lr, #1
 80059fc:	109b      	asrs	r3, r3, #2
 80059fe:	fa0e f303 	lsl.w	r3, lr, r3
 8005a02:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005a06:	4313      	orrs	r3, r2
 8005a08:	f1ae 0208 	sub.w	r2, lr, #8
 8005a0c:	60e2      	str	r2, [r4, #12]
 8005a0e:	607b      	str	r3, [r7, #4]
 8005a10:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005a14:	f8c8 400c 	str.w	r4, [r8, #12]
 8005a18:	1082      	asrs	r2, r0, #2
 8005a1a:	2401      	movs	r4, #1
 8005a1c:	4094      	lsls	r4, r2
 8005a1e:	429c      	cmp	r4, r3
 8005a20:	d84b      	bhi.n	8005aba <_malloc_r+0x1ae>
 8005a22:	421c      	tst	r4, r3
 8005a24:	d106      	bne.n	8005a34 <_malloc_r+0x128>
 8005a26:	f020 0003 	bic.w	r0, r0, #3
 8005a2a:	0064      	lsls	r4, r4, #1
 8005a2c:	421c      	tst	r4, r3
 8005a2e:	f100 0004 	add.w	r0, r0, #4
 8005a32:	d0fa      	beq.n	8005a2a <_malloc_r+0x11e>
 8005a34:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005a38:	46ce      	mov	lr, r9
 8005a3a:	4680      	mov	r8, r0
 8005a3c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005a40:	459e      	cmp	lr, r3
 8005a42:	d107      	bne.n	8005a54 <_malloc_r+0x148>
 8005a44:	e122      	b.n	8005c8c <_malloc_r+0x380>
 8005a46:	2a00      	cmp	r2, #0
 8005a48:	f280 8129 	bge.w	8005c9e <_malloc_r+0x392>
 8005a4c:	68db      	ldr	r3, [r3, #12]
 8005a4e:	459e      	cmp	lr, r3
 8005a50:	f000 811c 	beq.w	8005c8c <_malloc_r+0x380>
 8005a54:	6859      	ldr	r1, [r3, #4]
 8005a56:	f021 0103 	bic.w	r1, r1, #3
 8005a5a:	1b4a      	subs	r2, r1, r5
 8005a5c:	2a0f      	cmp	r2, #15
 8005a5e:	ddf2      	ble.n	8005a46 <_malloc_r+0x13a>
 8005a60:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005a64:	195c      	adds	r4, r3, r5
 8005a66:	f045 0501 	orr.w	r5, r5, #1
 8005a6a:	605d      	str	r5, [r3, #4]
 8005a6c:	f042 0501 	orr.w	r5, r2, #1
 8005a70:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005a74:	4630      	mov	r0, r6
 8005a76:	f8ce 8008 	str.w	r8, [lr, #8]
 8005a7a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005a7e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005a82:	6065      	str	r5, [r4, #4]
 8005a84:	505a      	str	r2, [r3, r1]
 8005a86:	9301      	str	r3, [sp, #4]
 8005a88:	f000 fa4e 	bl	8005f28 <__malloc_unlock>
 8005a8c:	9b01      	ldr	r3, [sp, #4]
 8005a8e:	f103 0408 	add.w	r4, r3, #8
 8005a92:	e763      	b.n	800595c <_malloc_r+0x50>
 8005a94:	2400      	movs	r4, #0
 8005a96:	230c      	movs	r3, #12
 8005a98:	4620      	mov	r0, r4
 8005a9a:	6033      	str	r3, [r6, #0]
 8005a9c:	b003      	add	sp, #12
 8005a9e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005aa2:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005aa6:	2040      	movs	r0, #64	; 0x40
 8005aa8:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005aac:	e773      	b.n	8005996 <_malloc_r+0x8a>
 8005aae:	687b      	ldr	r3, [r7, #4]
 8005ab0:	1082      	asrs	r2, r0, #2
 8005ab2:	2401      	movs	r4, #1
 8005ab4:	4094      	lsls	r4, r2
 8005ab6:	429c      	cmp	r4, r3
 8005ab8:	d9b3      	bls.n	8005a22 <_malloc_r+0x116>
 8005aba:	68bc      	ldr	r4, [r7, #8]
 8005abc:	6863      	ldr	r3, [r4, #4]
 8005abe:	f023 0903 	bic.w	r9, r3, #3
 8005ac2:	45a9      	cmp	r9, r5
 8005ac4:	d303      	bcc.n	8005ace <_malloc_r+0x1c2>
 8005ac6:	eba9 0305 	sub.w	r3, r9, r5
 8005aca:	2b0f      	cmp	r3, #15
 8005acc:	dc7b      	bgt.n	8005bc6 <_malloc_r+0x2ba>
 8005ace:	4b5e      	ldr	r3, [pc, #376]	; (8005c48 <_malloc_r+0x33c>)
 8005ad0:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005c5c <_malloc_r+0x350>
 8005ad4:	681a      	ldr	r2, [r3, #0]
 8005ad6:	f8da 3000 	ldr.w	r3, [sl]
 8005ada:	3301      	adds	r3, #1
 8005adc:	eb05 0802 	add.w	r8, r5, r2
 8005ae0:	f000 8148 	beq.w	8005d74 <_malloc_r+0x468>
 8005ae4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005ae8:	f108 080f 	add.w	r8, r8, #15
 8005aec:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005af0:	f028 080f 	bic.w	r8, r8, #15
 8005af4:	4641      	mov	r1, r8
 8005af6:	4630      	mov	r0, r6
 8005af8:	f000 ff08 	bl	800690c <_sbrk_r>
 8005afc:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005b00:	4683      	mov	fp, r0
 8005b02:	f000 8104 	beq.w	8005d0e <_malloc_r+0x402>
 8005b06:	eb04 0009 	add.w	r0, r4, r9
 8005b0a:	4558      	cmp	r0, fp
 8005b0c:	f200 80fd 	bhi.w	8005d0a <_malloc_r+0x3fe>
 8005b10:	4a4e      	ldr	r2, [pc, #312]	; (8005c4c <_malloc_r+0x340>)
 8005b12:	6813      	ldr	r3, [r2, #0]
 8005b14:	4443      	add	r3, r8
 8005b16:	6013      	str	r3, [r2, #0]
 8005b18:	f000 814d 	beq.w	8005db6 <_malloc_r+0x4aa>
 8005b1c:	f8da 1000 	ldr.w	r1, [sl]
 8005b20:	3101      	adds	r1, #1
 8005b22:	bf1b      	ittet	ne
 8005b24:	ebab 0000 	subne.w	r0, fp, r0
 8005b28:	181b      	addne	r3, r3, r0
 8005b2a:	f8ca b000 	streq.w	fp, [sl]
 8005b2e:	6013      	strne	r3, [r2, #0]
 8005b30:	f01b 0307 	ands.w	r3, fp, #7
 8005b34:	f000 8134 	beq.w	8005da0 <_malloc_r+0x494>
 8005b38:	f1c3 0108 	rsb	r1, r3, #8
 8005b3c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005b40:	448b      	add	fp, r1
 8005b42:	3308      	adds	r3, #8
 8005b44:	44d8      	add	r8, fp
 8005b46:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005b4a:	eba3 0808 	sub.w	r8, r3, r8
 8005b4e:	4641      	mov	r1, r8
 8005b50:	4630      	mov	r0, r6
 8005b52:	9201      	str	r2, [sp, #4]
 8005b54:	f000 feda 	bl	800690c <_sbrk_r>
 8005b58:	1c43      	adds	r3, r0, #1
 8005b5a:	9a01      	ldr	r2, [sp, #4]
 8005b5c:	f000 8146 	beq.w	8005dec <_malloc_r+0x4e0>
 8005b60:	eba0 010b 	sub.w	r1, r0, fp
 8005b64:	4441      	add	r1, r8
 8005b66:	f041 0101 	orr.w	r1, r1, #1
 8005b6a:	6813      	ldr	r3, [r2, #0]
 8005b6c:	f8c7 b008 	str.w	fp, [r7, #8]
 8005b70:	4443      	add	r3, r8
 8005b72:	42bc      	cmp	r4, r7
 8005b74:	f8cb 1004 	str.w	r1, [fp, #4]
 8005b78:	6013      	str	r3, [r2, #0]
 8005b7a:	d015      	beq.n	8005ba8 <_malloc_r+0x29c>
 8005b7c:	f1b9 0f0f 	cmp.w	r9, #15
 8005b80:	f240 8130 	bls.w	8005de4 <_malloc_r+0x4d8>
 8005b84:	6860      	ldr	r0, [r4, #4]
 8005b86:	f1a9 010c 	sub.w	r1, r9, #12
 8005b8a:	f021 0107 	bic.w	r1, r1, #7
 8005b8e:	f000 0001 	and.w	r0, r0, #1
 8005b92:	eb04 0c01 	add.w	ip, r4, r1
 8005b96:	4308      	orrs	r0, r1
 8005b98:	f04f 0e05 	mov.w	lr, #5
 8005b9c:	290f      	cmp	r1, #15
 8005b9e:	6060      	str	r0, [r4, #4]
 8005ba0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005ba4:	f200 813a 	bhi.w	8005e1c <_malloc_r+0x510>
 8005ba8:	4a29      	ldr	r2, [pc, #164]	; (8005c50 <_malloc_r+0x344>)
 8005baa:	482a      	ldr	r0, [pc, #168]	; (8005c54 <_malloc_r+0x348>)
 8005bac:	6811      	ldr	r1, [r2, #0]
 8005bae:	68bc      	ldr	r4, [r7, #8]
 8005bb0:	428b      	cmp	r3, r1
 8005bb2:	6801      	ldr	r1, [r0, #0]
 8005bb4:	bf88      	it	hi
 8005bb6:	6013      	strhi	r3, [r2, #0]
 8005bb8:	6862      	ldr	r2, [r4, #4]
 8005bba:	428b      	cmp	r3, r1
 8005bbc:	f022 0203 	bic.w	r2, r2, #3
 8005bc0:	bf88      	it	hi
 8005bc2:	6003      	strhi	r3, [r0, #0]
 8005bc4:	e0a7      	b.n	8005d16 <_malloc_r+0x40a>
 8005bc6:	1962      	adds	r2, r4, r5
 8005bc8:	f043 0301 	orr.w	r3, r3, #1
 8005bcc:	f045 0501 	orr.w	r5, r5, #1
 8005bd0:	6065      	str	r5, [r4, #4]
 8005bd2:	4630      	mov	r0, r6
 8005bd4:	60ba      	str	r2, [r7, #8]
 8005bd6:	6053      	str	r3, [r2, #4]
 8005bd8:	f000 f9a6 	bl	8005f28 <__malloc_unlock>
 8005bdc:	3408      	adds	r4, #8
 8005bde:	4620      	mov	r0, r4
 8005be0:	b003      	add	sp, #12
 8005be2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005be6:	4423      	add	r3, r4
 8005be8:	68e1      	ldr	r1, [r4, #12]
 8005bea:	685a      	ldr	r2, [r3, #4]
 8005bec:	68a5      	ldr	r5, [r4, #8]
 8005bee:	f042 0201 	orr.w	r2, r2, #1
 8005bf2:	60e9      	str	r1, [r5, #12]
 8005bf4:	4630      	mov	r0, r6
 8005bf6:	608d      	str	r5, [r1, #8]
 8005bf8:	605a      	str	r2, [r3, #4]
 8005bfa:	f000 f995 	bl	8005f28 <__malloc_unlock>
 8005bfe:	3408      	adds	r4, #8
 8005c00:	4620      	mov	r0, r4
 8005c02:	b003      	add	sp, #12
 8005c04:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c08:	68dc      	ldr	r4, [r3, #12]
 8005c0a:	42a3      	cmp	r3, r4
 8005c0c:	bf08      	it	eq
 8005c0e:	3002      	addeq	r0, #2
 8005c10:	f43f aed6 	beq.w	80059c0 <_malloc_r+0xb4>
 8005c14:	e692      	b.n	800593c <_malloc_r+0x30>
 8005c16:	2b14      	cmp	r3, #20
 8005c18:	d971      	bls.n	8005cfe <_malloc_r+0x3f2>
 8005c1a:	2b54      	cmp	r3, #84	; 0x54
 8005c1c:	f200 80ad 	bhi.w	8005d7a <_malloc_r+0x46e>
 8005c20:	0b2b      	lsrs	r3, r5, #12
 8005c22:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005c26:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005c2a:	00c3      	lsls	r3, r0, #3
 8005c2c:	e6b3      	b.n	8005996 <_malloc_r+0x8a>
 8005c2e:	4423      	add	r3, r4
 8005c30:	4630      	mov	r0, r6
 8005c32:	685a      	ldr	r2, [r3, #4]
 8005c34:	f042 0201 	orr.w	r2, r2, #1
 8005c38:	605a      	str	r2, [r3, #4]
 8005c3a:	3408      	adds	r4, #8
 8005c3c:	f000 f974 	bl	8005f28 <__malloc_unlock>
 8005c40:	e68c      	b.n	800595c <_malloc_r+0x50>
 8005c42:	bf00      	nop
 8005c44:	2000049c 	.word	0x2000049c
 8005c48:	20000aec 	.word	0x20000aec
 8005c4c:	20000abc 	.word	0x20000abc
 8005c50:	20000ae4 	.word	0x20000ae4
 8005c54:	20000ae8 	.word	0x20000ae8
 8005c58:	200004a4 	.word	0x200004a4
 8005c5c:	200008a4 	.word	0x200008a4
 8005c60:	1961      	adds	r1, r4, r5
 8005c62:	f045 0e01 	orr.w	lr, r5, #1
 8005c66:	f042 0501 	orr.w	r5, r2, #1
 8005c6a:	f8c4 e004 	str.w	lr, [r4, #4]
 8005c6e:	4630      	mov	r0, r6
 8005c70:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005c74:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005c78:	604d      	str	r5, [r1, #4]
 8005c7a:	50e2      	str	r2, [r4, r3]
 8005c7c:	f000 f954 	bl	8005f28 <__malloc_unlock>
 8005c80:	3408      	adds	r4, #8
 8005c82:	e66b      	b.n	800595c <_malloc_r+0x50>
 8005c84:	08e8      	lsrs	r0, r5, #3
 8005c86:	f105 0308 	add.w	r3, r5, #8
 8005c8a:	e64f      	b.n	800592c <_malloc_r+0x20>
 8005c8c:	f108 0801 	add.w	r8, r8, #1
 8005c90:	f018 0f03 	tst.w	r8, #3
 8005c94:	f10e 0e08 	add.w	lr, lr, #8
 8005c98:	f47f aed0 	bne.w	8005a3c <_malloc_r+0x130>
 8005c9c:	e052      	b.n	8005d44 <_malloc_r+0x438>
 8005c9e:	4419      	add	r1, r3
 8005ca0:	461c      	mov	r4, r3
 8005ca2:	684a      	ldr	r2, [r1, #4]
 8005ca4:	68db      	ldr	r3, [r3, #12]
 8005ca6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005caa:	f042 0201 	orr.w	r2, r2, #1
 8005cae:	604a      	str	r2, [r1, #4]
 8005cb0:	4630      	mov	r0, r6
 8005cb2:	60eb      	str	r3, [r5, #12]
 8005cb4:	609d      	str	r5, [r3, #8]
 8005cb6:	f000 f937 	bl	8005f28 <__malloc_unlock>
 8005cba:	e64f      	b.n	800595c <_malloc_r+0x50>
 8005cbc:	0a5a      	lsrs	r2, r3, #9
 8005cbe:	2a04      	cmp	r2, #4
 8005cc0:	d935      	bls.n	8005d2e <_malloc_r+0x422>
 8005cc2:	2a14      	cmp	r2, #20
 8005cc4:	d86f      	bhi.n	8005da6 <_malloc_r+0x49a>
 8005cc6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005cca:	00c9      	lsls	r1, r1, #3
 8005ccc:	325b      	adds	r2, #91	; 0x5b
 8005cce:	eb07 0e01 	add.w	lr, r7, r1
 8005cd2:	5879      	ldr	r1, [r7, r1]
 8005cd4:	f1ae 0e08 	sub.w	lr, lr, #8
 8005cd8:	458e      	cmp	lr, r1
 8005cda:	d058      	beq.n	8005d8e <_malloc_r+0x482>
 8005cdc:	684a      	ldr	r2, [r1, #4]
 8005cde:	f022 0203 	bic.w	r2, r2, #3
 8005ce2:	429a      	cmp	r2, r3
 8005ce4:	d902      	bls.n	8005cec <_malloc_r+0x3e0>
 8005ce6:	6889      	ldr	r1, [r1, #8]
 8005ce8:	458e      	cmp	lr, r1
 8005cea:	d1f7      	bne.n	8005cdc <_malloc_r+0x3d0>
 8005cec:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005cf0:	687b      	ldr	r3, [r7, #4]
 8005cf2:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005cf6:	f8ce 4008 	str.w	r4, [lr, #8]
 8005cfa:	60cc      	str	r4, [r1, #12]
 8005cfc:	e68c      	b.n	8005a18 <_malloc_r+0x10c>
 8005cfe:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005d02:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005d06:	00c3      	lsls	r3, r0, #3
 8005d08:	e645      	b.n	8005996 <_malloc_r+0x8a>
 8005d0a:	42bc      	cmp	r4, r7
 8005d0c:	d072      	beq.n	8005df4 <_malloc_r+0x4e8>
 8005d0e:	68bc      	ldr	r4, [r7, #8]
 8005d10:	6862      	ldr	r2, [r4, #4]
 8005d12:	f022 0203 	bic.w	r2, r2, #3
 8005d16:	4295      	cmp	r5, r2
 8005d18:	eba2 0305 	sub.w	r3, r2, r5
 8005d1c:	d802      	bhi.n	8005d24 <_malloc_r+0x418>
 8005d1e:	2b0f      	cmp	r3, #15
 8005d20:	f73f af51 	bgt.w	8005bc6 <_malloc_r+0x2ba>
 8005d24:	4630      	mov	r0, r6
 8005d26:	f000 f8ff 	bl	8005f28 <__malloc_unlock>
 8005d2a:	2400      	movs	r4, #0
 8005d2c:	e616      	b.n	800595c <_malloc_r+0x50>
 8005d2e:	099a      	lsrs	r2, r3, #6
 8005d30:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005d34:	00c9      	lsls	r1, r1, #3
 8005d36:	3238      	adds	r2, #56	; 0x38
 8005d38:	e7c9      	b.n	8005cce <_malloc_r+0x3c2>
 8005d3a:	f8d9 9000 	ldr.w	r9, [r9]
 8005d3e:	4599      	cmp	r9, r3
 8005d40:	f040 8083 	bne.w	8005e4a <_malloc_r+0x53e>
 8005d44:	f010 0f03 	tst.w	r0, #3
 8005d48:	f1a9 0308 	sub.w	r3, r9, #8
 8005d4c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005d50:	d1f3      	bne.n	8005d3a <_malloc_r+0x42e>
 8005d52:	687b      	ldr	r3, [r7, #4]
 8005d54:	ea23 0304 	bic.w	r3, r3, r4
 8005d58:	607b      	str	r3, [r7, #4]
 8005d5a:	0064      	lsls	r4, r4, #1
 8005d5c:	429c      	cmp	r4, r3
 8005d5e:	f63f aeac 	bhi.w	8005aba <_malloc_r+0x1ae>
 8005d62:	b91c      	cbnz	r4, 8005d6c <_malloc_r+0x460>
 8005d64:	e6a9      	b.n	8005aba <_malloc_r+0x1ae>
 8005d66:	0064      	lsls	r4, r4, #1
 8005d68:	f108 0804 	add.w	r8, r8, #4
 8005d6c:	421c      	tst	r4, r3
 8005d6e:	d0fa      	beq.n	8005d66 <_malloc_r+0x45a>
 8005d70:	4640      	mov	r0, r8
 8005d72:	e65f      	b.n	8005a34 <_malloc_r+0x128>
 8005d74:	f108 0810 	add.w	r8, r8, #16
 8005d78:	e6bc      	b.n	8005af4 <_malloc_r+0x1e8>
 8005d7a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005d7e:	d826      	bhi.n	8005dce <_malloc_r+0x4c2>
 8005d80:	0beb      	lsrs	r3, r5, #15
 8005d82:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005d86:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005d8a:	00c3      	lsls	r3, r0, #3
 8005d8c:	e603      	b.n	8005996 <_malloc_r+0x8a>
 8005d8e:	687b      	ldr	r3, [r7, #4]
 8005d90:	1092      	asrs	r2, r2, #2
 8005d92:	f04f 0801 	mov.w	r8, #1
 8005d96:	fa08 f202 	lsl.w	r2, r8, r2
 8005d9a:	4313      	orrs	r3, r2
 8005d9c:	607b      	str	r3, [r7, #4]
 8005d9e:	e7a8      	b.n	8005cf2 <_malloc_r+0x3e6>
 8005da0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005da4:	e6ce      	b.n	8005b44 <_malloc_r+0x238>
 8005da6:	2a54      	cmp	r2, #84	; 0x54
 8005da8:	d829      	bhi.n	8005dfe <_malloc_r+0x4f2>
 8005daa:	0b1a      	lsrs	r2, r3, #12
 8005dac:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005db0:	00c9      	lsls	r1, r1, #3
 8005db2:	326e      	adds	r2, #110	; 0x6e
 8005db4:	e78b      	b.n	8005cce <_malloc_r+0x3c2>
 8005db6:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005dba:	2900      	cmp	r1, #0
 8005dbc:	f47f aeae 	bne.w	8005b1c <_malloc_r+0x210>
 8005dc0:	eb09 0208 	add.w	r2, r9, r8
 8005dc4:	68b9      	ldr	r1, [r7, #8]
 8005dc6:	f042 0201 	orr.w	r2, r2, #1
 8005dca:	604a      	str	r2, [r1, #4]
 8005dcc:	e6ec      	b.n	8005ba8 <_malloc_r+0x29c>
 8005dce:	f240 5254 	movw	r2, #1364	; 0x554
 8005dd2:	4293      	cmp	r3, r2
 8005dd4:	d81c      	bhi.n	8005e10 <_malloc_r+0x504>
 8005dd6:	0cab      	lsrs	r3, r5, #18
 8005dd8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005ddc:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005de0:	00c3      	lsls	r3, r0, #3
 8005de2:	e5d8      	b.n	8005996 <_malloc_r+0x8a>
 8005de4:	2301      	movs	r3, #1
 8005de6:	f8cb 3004 	str.w	r3, [fp, #4]
 8005dea:	e79b      	b.n	8005d24 <_malloc_r+0x418>
 8005dec:	2101      	movs	r1, #1
 8005dee:	f04f 0800 	mov.w	r8, #0
 8005df2:	e6ba      	b.n	8005b6a <_malloc_r+0x25e>
 8005df4:	4a16      	ldr	r2, [pc, #88]	; (8005e50 <_malloc_r+0x544>)
 8005df6:	6813      	ldr	r3, [r2, #0]
 8005df8:	4443      	add	r3, r8
 8005dfa:	6013      	str	r3, [r2, #0]
 8005dfc:	e68e      	b.n	8005b1c <_malloc_r+0x210>
 8005dfe:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005e02:	d814      	bhi.n	8005e2e <_malloc_r+0x522>
 8005e04:	0bda      	lsrs	r2, r3, #15
 8005e06:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005e0a:	00c9      	lsls	r1, r1, #3
 8005e0c:	3277      	adds	r2, #119	; 0x77
 8005e0e:	e75e      	b.n	8005cce <_malloc_r+0x3c2>
 8005e10:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005e14:	207f      	movs	r0, #127	; 0x7f
 8005e16:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005e1a:	e5bc      	b.n	8005996 <_malloc_r+0x8a>
 8005e1c:	f104 0108 	add.w	r1, r4, #8
 8005e20:	4630      	mov	r0, r6
 8005e22:	9201      	str	r2, [sp, #4]
 8005e24:	f7ff fa48 	bl	80052b8 <_free_r>
 8005e28:	9a01      	ldr	r2, [sp, #4]
 8005e2a:	6813      	ldr	r3, [r2, #0]
 8005e2c:	e6bc      	b.n	8005ba8 <_malloc_r+0x29c>
 8005e2e:	f240 5154 	movw	r1, #1364	; 0x554
 8005e32:	428a      	cmp	r2, r1
 8005e34:	d805      	bhi.n	8005e42 <_malloc_r+0x536>
 8005e36:	0c9a      	lsrs	r2, r3, #18
 8005e38:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005e3c:	00c9      	lsls	r1, r1, #3
 8005e3e:	327c      	adds	r2, #124	; 0x7c
 8005e40:	e745      	b.n	8005cce <_malloc_r+0x3c2>
 8005e42:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005e46:	227e      	movs	r2, #126	; 0x7e
 8005e48:	e741      	b.n	8005cce <_malloc_r+0x3c2>
 8005e4a:	687b      	ldr	r3, [r7, #4]
 8005e4c:	e785      	b.n	8005d5a <_malloc_r+0x44e>
 8005e4e:	bf00      	nop
 8005e50:	20000abc 	.word	0x20000abc

08005e54 <memmove>:
 8005e54:	4288      	cmp	r0, r1
 8005e56:	b4f0      	push	{r4, r5, r6, r7}
 8005e58:	d90d      	bls.n	8005e76 <memmove+0x22>
 8005e5a:	188b      	adds	r3, r1, r2
 8005e5c:	4283      	cmp	r3, r0
 8005e5e:	d90a      	bls.n	8005e76 <memmove+0x22>
 8005e60:	1884      	adds	r4, r0, r2
 8005e62:	b132      	cbz	r2, 8005e72 <memmove+0x1e>
 8005e64:	4622      	mov	r2, r4
 8005e66:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005e6a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005e6e:	4299      	cmp	r1, r3
 8005e70:	d1f9      	bne.n	8005e66 <memmove+0x12>
 8005e72:	bcf0      	pop	{r4, r5, r6, r7}
 8005e74:	4770      	bx	lr
 8005e76:	2a0f      	cmp	r2, #15
 8005e78:	d949      	bls.n	8005f0e <memmove+0xba>
 8005e7a:	ea40 0301 	orr.w	r3, r0, r1
 8005e7e:	079b      	lsls	r3, r3, #30
 8005e80:	d147      	bne.n	8005f12 <memmove+0xbe>
 8005e82:	f1a2 0310 	sub.w	r3, r2, #16
 8005e86:	091b      	lsrs	r3, r3, #4
 8005e88:	f101 0720 	add.w	r7, r1, #32
 8005e8c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005e90:	f101 0410 	add.w	r4, r1, #16
 8005e94:	f100 0510 	add.w	r5, r0, #16
 8005e98:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005e9c:	f845 6c10 	str.w	r6, [r5, #-16]
 8005ea0:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005ea4:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005ea8:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005eac:	f845 6c08 	str.w	r6, [r5, #-8]
 8005eb0:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005eb4:	f845 6c04 	str.w	r6, [r5, #-4]
 8005eb8:	3410      	adds	r4, #16
 8005eba:	42bc      	cmp	r4, r7
 8005ebc:	f105 0510 	add.w	r5, r5, #16
 8005ec0:	d1ea      	bne.n	8005e98 <memmove+0x44>
 8005ec2:	3301      	adds	r3, #1
 8005ec4:	f002 050f 	and.w	r5, r2, #15
 8005ec8:	011b      	lsls	r3, r3, #4
 8005eca:	2d03      	cmp	r5, #3
 8005ecc:	4419      	add	r1, r3
 8005ece:	4403      	add	r3, r0
 8005ed0:	d921      	bls.n	8005f16 <memmove+0xc2>
 8005ed2:	1f1f      	subs	r7, r3, #4
 8005ed4:	460e      	mov	r6, r1
 8005ed6:	462c      	mov	r4, r5
 8005ed8:	3c04      	subs	r4, #4
 8005eda:	f856 cb04 	ldr.w	ip, [r6], #4
 8005ede:	f847 cf04 	str.w	ip, [r7, #4]!
 8005ee2:	2c03      	cmp	r4, #3
 8005ee4:	d8f8      	bhi.n	8005ed8 <memmove+0x84>
 8005ee6:	1f2c      	subs	r4, r5, #4
 8005ee8:	f024 0403 	bic.w	r4, r4, #3
 8005eec:	3404      	adds	r4, #4
 8005eee:	4423      	add	r3, r4
 8005ef0:	4421      	add	r1, r4
 8005ef2:	f002 0203 	and.w	r2, r2, #3
 8005ef6:	2a00      	cmp	r2, #0
 8005ef8:	d0bb      	beq.n	8005e72 <memmove+0x1e>
 8005efa:	3b01      	subs	r3, #1
 8005efc:	440a      	add	r2, r1
 8005efe:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005f02:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005f06:	4291      	cmp	r1, r2
 8005f08:	d1f9      	bne.n	8005efe <memmove+0xaa>
 8005f0a:	bcf0      	pop	{r4, r5, r6, r7}
 8005f0c:	4770      	bx	lr
 8005f0e:	4603      	mov	r3, r0
 8005f10:	e7f1      	b.n	8005ef6 <memmove+0xa2>
 8005f12:	4603      	mov	r3, r0
 8005f14:	e7f1      	b.n	8005efa <memmove+0xa6>
 8005f16:	462a      	mov	r2, r5
 8005f18:	e7ed      	b.n	8005ef6 <memmove+0xa2>
 8005f1a:	bf00      	nop

08005f1c <__malloc_lock>:
 8005f1c:	4801      	ldr	r0, [pc, #4]	; (8005f24 <__malloc_lock+0x8>)
 8005f1e:	f7ff bc79 	b.w	8005814 <__retarget_lock_acquire_recursive>
 8005f22:	bf00      	nop
 8005f24:	20000cd8 	.word	0x20000cd8

08005f28 <__malloc_unlock>:
 8005f28:	4801      	ldr	r0, [pc, #4]	; (8005f30 <__malloc_unlock+0x8>)
 8005f2a:	f7ff bc75 	b.w	8005818 <__retarget_lock_release_recursive>
 8005f2e:	bf00      	nop
 8005f30:	20000cd8 	.word	0x20000cd8

08005f34 <_Balloc>:
 8005f34:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005f36:	b570      	push	{r4, r5, r6, lr}
 8005f38:	4605      	mov	r5, r0
 8005f3a:	460c      	mov	r4, r1
 8005f3c:	b14b      	cbz	r3, 8005f52 <_Balloc+0x1e>
 8005f3e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005f42:	b180      	cbz	r0, 8005f66 <_Balloc+0x32>
 8005f44:	6802      	ldr	r2, [r0, #0]
 8005f46:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005f4a:	2300      	movs	r3, #0
 8005f4c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005f50:	bd70      	pop	{r4, r5, r6, pc}
 8005f52:	2221      	movs	r2, #33	; 0x21
 8005f54:	2104      	movs	r1, #4
 8005f56:	f000 fe1d 	bl	8006b94 <_calloc_r>
 8005f5a:	4603      	mov	r3, r0
 8005f5c:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005f5e:	2800      	cmp	r0, #0
 8005f60:	d1ed      	bne.n	8005f3e <_Balloc+0xa>
 8005f62:	2000      	movs	r0, #0
 8005f64:	bd70      	pop	{r4, r5, r6, pc}
 8005f66:	2101      	movs	r1, #1
 8005f68:	fa01 f604 	lsl.w	r6, r1, r4
 8005f6c:	1d72      	adds	r2, r6, #5
 8005f6e:	4628      	mov	r0, r5
 8005f70:	0092      	lsls	r2, r2, #2
 8005f72:	f000 fe0f 	bl	8006b94 <_calloc_r>
 8005f76:	2800      	cmp	r0, #0
 8005f78:	d0f3      	beq.n	8005f62 <_Balloc+0x2e>
 8005f7a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005f7e:	e7e4      	b.n	8005f4a <_Balloc+0x16>

08005f80 <_Bfree>:
 8005f80:	b131      	cbz	r1, 8005f90 <_Bfree+0x10>
 8005f82:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005f84:	684a      	ldr	r2, [r1, #4]
 8005f86:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005f8a:	6008      	str	r0, [r1, #0]
 8005f8c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005f90:	4770      	bx	lr
 8005f92:	bf00      	nop

08005f94 <__multadd>:
 8005f94:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005f96:	690c      	ldr	r4, [r1, #16]
 8005f98:	b083      	sub	sp, #12
 8005f9a:	460d      	mov	r5, r1
 8005f9c:	4606      	mov	r6, r0
 8005f9e:	f101 0c14 	add.w	ip, r1, #20
 8005fa2:	2700      	movs	r7, #0
 8005fa4:	f8dc 0000 	ldr.w	r0, [ip]
 8005fa8:	b281      	uxth	r1, r0
 8005faa:	fb02 3301 	mla	r3, r2, r1, r3
 8005fae:	0c01      	lsrs	r1, r0, #16
 8005fb0:	0c18      	lsrs	r0, r3, #16
 8005fb2:	fb02 0101 	mla	r1, r2, r1, r0
 8005fb6:	b29b      	uxth	r3, r3
 8005fb8:	3701      	adds	r7, #1
 8005fba:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005fbe:	42bc      	cmp	r4, r7
 8005fc0:	f84c 3b04 	str.w	r3, [ip], #4
 8005fc4:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8005fc8:	dcec      	bgt.n	8005fa4 <__multadd+0x10>
 8005fca:	b13b      	cbz	r3, 8005fdc <__multadd+0x48>
 8005fcc:	68aa      	ldr	r2, [r5, #8]
 8005fce:	42a2      	cmp	r2, r4
 8005fd0:	dd07      	ble.n	8005fe2 <__multadd+0x4e>
 8005fd2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8005fd6:	3401      	adds	r4, #1
 8005fd8:	6153      	str	r3, [r2, #20]
 8005fda:	612c      	str	r4, [r5, #16]
 8005fdc:	4628      	mov	r0, r5
 8005fde:	b003      	add	sp, #12
 8005fe0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005fe2:	6869      	ldr	r1, [r5, #4]
 8005fe4:	9301      	str	r3, [sp, #4]
 8005fe6:	3101      	adds	r1, #1
 8005fe8:	4630      	mov	r0, r6
 8005fea:	f7ff ffa3 	bl	8005f34 <_Balloc>
 8005fee:	692a      	ldr	r2, [r5, #16]
 8005ff0:	3202      	adds	r2, #2
 8005ff2:	f105 010c 	add.w	r1, r5, #12
 8005ff6:	4607      	mov	r7, r0
 8005ff8:	0092      	lsls	r2, r2, #2
 8005ffa:	300c      	adds	r0, #12
 8005ffc:	f7fa fa80 	bl	8000500 <memcpy>
 8006000:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006002:	6869      	ldr	r1, [r5, #4]
 8006004:	9b01      	ldr	r3, [sp, #4]
 8006006:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800600a:	6028      	str	r0, [r5, #0]
 800600c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006010:	463d      	mov	r5, r7
 8006012:	e7de      	b.n	8005fd2 <__multadd+0x3e>

08006014 <__hi0bits>:
 8006014:	0c02      	lsrs	r2, r0, #16
 8006016:	0412      	lsls	r2, r2, #16
 8006018:	4603      	mov	r3, r0
 800601a:	b9c2      	cbnz	r2, 800604e <__hi0bits+0x3a>
 800601c:	0403      	lsls	r3, r0, #16
 800601e:	2010      	movs	r0, #16
 8006020:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006024:	bf04      	itt	eq
 8006026:	021b      	lsleq	r3, r3, #8
 8006028:	3008      	addeq	r0, #8
 800602a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800602e:	bf04      	itt	eq
 8006030:	011b      	lsleq	r3, r3, #4
 8006032:	3004      	addeq	r0, #4
 8006034:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006038:	bf04      	itt	eq
 800603a:	009b      	lsleq	r3, r3, #2
 800603c:	3002      	addeq	r0, #2
 800603e:	2b00      	cmp	r3, #0
 8006040:	db04      	blt.n	800604c <__hi0bits+0x38>
 8006042:	005b      	lsls	r3, r3, #1
 8006044:	d501      	bpl.n	800604a <__hi0bits+0x36>
 8006046:	3001      	adds	r0, #1
 8006048:	4770      	bx	lr
 800604a:	2020      	movs	r0, #32
 800604c:	4770      	bx	lr
 800604e:	2000      	movs	r0, #0
 8006050:	e7e6      	b.n	8006020 <__hi0bits+0xc>
 8006052:	bf00      	nop

08006054 <__lo0bits>:
 8006054:	6803      	ldr	r3, [r0, #0]
 8006056:	f013 0207 	ands.w	r2, r3, #7
 800605a:	4601      	mov	r1, r0
 800605c:	d007      	beq.n	800606e <__lo0bits+0x1a>
 800605e:	07da      	lsls	r2, r3, #31
 8006060:	d41f      	bmi.n	80060a2 <__lo0bits+0x4e>
 8006062:	0798      	lsls	r0, r3, #30
 8006064:	d51f      	bpl.n	80060a6 <__lo0bits+0x52>
 8006066:	085b      	lsrs	r3, r3, #1
 8006068:	600b      	str	r3, [r1, #0]
 800606a:	2001      	movs	r0, #1
 800606c:	4770      	bx	lr
 800606e:	b298      	uxth	r0, r3
 8006070:	b1a0      	cbz	r0, 800609c <__lo0bits+0x48>
 8006072:	4610      	mov	r0, r2
 8006074:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006078:	bf04      	itt	eq
 800607a:	0a1b      	lsreq	r3, r3, #8
 800607c:	3008      	addeq	r0, #8
 800607e:	071a      	lsls	r2, r3, #28
 8006080:	bf04      	itt	eq
 8006082:	091b      	lsreq	r3, r3, #4
 8006084:	3004      	addeq	r0, #4
 8006086:	079a      	lsls	r2, r3, #30
 8006088:	bf04      	itt	eq
 800608a:	089b      	lsreq	r3, r3, #2
 800608c:	3002      	addeq	r0, #2
 800608e:	07da      	lsls	r2, r3, #31
 8006090:	d402      	bmi.n	8006098 <__lo0bits+0x44>
 8006092:	085b      	lsrs	r3, r3, #1
 8006094:	d00b      	beq.n	80060ae <__lo0bits+0x5a>
 8006096:	3001      	adds	r0, #1
 8006098:	600b      	str	r3, [r1, #0]
 800609a:	4770      	bx	lr
 800609c:	0c1b      	lsrs	r3, r3, #16
 800609e:	2010      	movs	r0, #16
 80060a0:	e7e8      	b.n	8006074 <__lo0bits+0x20>
 80060a2:	2000      	movs	r0, #0
 80060a4:	4770      	bx	lr
 80060a6:	089b      	lsrs	r3, r3, #2
 80060a8:	600b      	str	r3, [r1, #0]
 80060aa:	2002      	movs	r0, #2
 80060ac:	4770      	bx	lr
 80060ae:	2020      	movs	r0, #32
 80060b0:	4770      	bx	lr
 80060b2:	bf00      	nop

080060b4 <__i2b>:
 80060b4:	b510      	push	{r4, lr}
 80060b6:	460c      	mov	r4, r1
 80060b8:	2101      	movs	r1, #1
 80060ba:	f7ff ff3b 	bl	8005f34 <_Balloc>
 80060be:	2201      	movs	r2, #1
 80060c0:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80060c4:	bd10      	pop	{r4, pc}
 80060c6:	bf00      	nop

080060c8 <__multiply>:
 80060c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80060cc:	690e      	ldr	r6, [r1, #16]
 80060ce:	6914      	ldr	r4, [r2, #16]
 80060d0:	42a6      	cmp	r6, r4
 80060d2:	b083      	sub	sp, #12
 80060d4:	460f      	mov	r7, r1
 80060d6:	4615      	mov	r5, r2
 80060d8:	da04      	bge.n	80060e4 <__multiply+0x1c>
 80060da:	4632      	mov	r2, r6
 80060dc:	462f      	mov	r7, r5
 80060de:	4626      	mov	r6, r4
 80060e0:	460d      	mov	r5, r1
 80060e2:	4614      	mov	r4, r2
 80060e4:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80060e8:	eb06 0804 	add.w	r8, r6, r4
 80060ec:	4543      	cmp	r3, r8
 80060ee:	bfb8      	it	lt
 80060f0:	3101      	addlt	r1, #1
 80060f2:	f7ff ff1f 	bl	8005f34 <_Balloc>
 80060f6:	f100 0914 	add.w	r9, r0, #20
 80060fa:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80060fe:	45f1      	cmp	r9, lr
 8006100:	9000      	str	r0, [sp, #0]
 8006102:	d205      	bcs.n	8006110 <__multiply+0x48>
 8006104:	464b      	mov	r3, r9
 8006106:	2200      	movs	r2, #0
 8006108:	f843 2b04 	str.w	r2, [r3], #4
 800610c:	459e      	cmp	lr, r3
 800610e:	d8fb      	bhi.n	8006108 <__multiply+0x40>
 8006110:	f105 0a14 	add.w	sl, r5, #20
 8006114:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006118:	f107 0314 	add.w	r3, r7, #20
 800611c:	45a2      	cmp	sl, r4
 800611e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006122:	d261      	bcs.n	80061e8 <__multiply+0x120>
 8006124:	1b64      	subs	r4, r4, r5
 8006126:	3c15      	subs	r4, #21
 8006128:	f024 0403 	bic.w	r4, r4, #3
 800612c:	f8cd e004 	str.w	lr, [sp, #4]
 8006130:	44a2      	add	sl, r4
 8006132:	f105 0210 	add.w	r2, r5, #16
 8006136:	469e      	mov	lr, r3
 8006138:	e005      	b.n	8006146 <__multiply+0x7e>
 800613a:	0c2d      	lsrs	r5, r5, #16
 800613c:	d12b      	bne.n	8006196 <__multiply+0xce>
 800613e:	4592      	cmp	sl, r2
 8006140:	f109 0904 	add.w	r9, r9, #4
 8006144:	d04e      	beq.n	80061e4 <__multiply+0x11c>
 8006146:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800614a:	fa1f fb85 	uxth.w	fp, r5
 800614e:	f1bb 0f00 	cmp.w	fp, #0
 8006152:	d0f2      	beq.n	800613a <__multiply+0x72>
 8006154:	4677      	mov	r7, lr
 8006156:	464e      	mov	r6, r9
 8006158:	2000      	movs	r0, #0
 800615a:	e000      	b.n	800615e <__multiply+0x96>
 800615c:	4626      	mov	r6, r4
 800615e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006162:	6834      	ldr	r4, [r6, #0]
 8006164:	b28b      	uxth	r3, r1
 8006166:	b2a5      	uxth	r5, r4
 8006168:	0c09      	lsrs	r1, r1, #16
 800616a:	0c24      	lsrs	r4, r4, #16
 800616c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006170:	4403      	add	r3, r0
 8006172:	fb0b 4001 	mla	r0, fp, r1, r4
 8006176:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800617a:	4634      	mov	r4, r6
 800617c:	b29b      	uxth	r3, r3
 800617e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006182:	45bc      	cmp	ip, r7
 8006184:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006188:	f844 3b04 	str.w	r3, [r4], #4
 800618c:	d8e6      	bhi.n	800615c <__multiply+0x94>
 800618e:	6070      	str	r0, [r6, #4]
 8006190:	6815      	ldr	r5, [r2, #0]
 8006192:	0c2d      	lsrs	r5, r5, #16
 8006194:	d0d3      	beq.n	800613e <__multiply+0x76>
 8006196:	f8d9 3000 	ldr.w	r3, [r9]
 800619a:	4676      	mov	r6, lr
 800619c:	4618      	mov	r0, r3
 800619e:	46cb      	mov	fp, r9
 80061a0:	2100      	movs	r1, #0
 80061a2:	e000      	b.n	80061a6 <__multiply+0xde>
 80061a4:	46a3      	mov	fp, r4
 80061a6:	8834      	ldrh	r4, [r6, #0]
 80061a8:	0c00      	lsrs	r0, r0, #16
 80061aa:	fb05 0004 	mla	r0, r5, r4, r0
 80061ae:	4401      	add	r1, r0
 80061b0:	b29b      	uxth	r3, r3
 80061b2:	465c      	mov	r4, fp
 80061b4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80061b8:	f844 3b04 	str.w	r3, [r4], #4
 80061bc:	f856 3b04 	ldr.w	r3, [r6], #4
 80061c0:	f8db 0004 	ldr.w	r0, [fp, #4]
 80061c4:	0c1b      	lsrs	r3, r3, #16
 80061c6:	b287      	uxth	r7, r0
 80061c8:	fb05 7303 	mla	r3, r5, r3, r7
 80061cc:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80061d0:	45b4      	cmp	ip, r6
 80061d2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80061d6:	d8e5      	bhi.n	80061a4 <__multiply+0xdc>
 80061d8:	4592      	cmp	sl, r2
 80061da:	f8cb 3004 	str.w	r3, [fp, #4]
 80061de:	f109 0904 	add.w	r9, r9, #4
 80061e2:	d1b0      	bne.n	8006146 <__multiply+0x7e>
 80061e4:	f8dd e004 	ldr.w	lr, [sp, #4]
 80061e8:	f1b8 0f00 	cmp.w	r8, #0
 80061ec:	dd0b      	ble.n	8006206 <__multiply+0x13e>
 80061ee:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80061f2:	f1ae 0e04 	sub.w	lr, lr, #4
 80061f6:	b11b      	cbz	r3, 8006200 <__multiply+0x138>
 80061f8:	e005      	b.n	8006206 <__multiply+0x13e>
 80061fa:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80061fe:	b913      	cbnz	r3, 8006206 <__multiply+0x13e>
 8006200:	f1b8 0801 	subs.w	r8, r8, #1
 8006204:	d1f9      	bne.n	80061fa <__multiply+0x132>
 8006206:	9800      	ldr	r0, [sp, #0]
 8006208:	f8c0 8010 	str.w	r8, [r0, #16]
 800620c:	b003      	add	sp, #12
 800620e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006212:	bf00      	nop

08006214 <__pow5mult>:
 8006214:	f012 0303 	ands.w	r3, r2, #3
 8006218:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800621c:	4614      	mov	r4, r2
 800621e:	4607      	mov	r7, r0
 8006220:	d12e      	bne.n	8006280 <__pow5mult+0x6c>
 8006222:	460d      	mov	r5, r1
 8006224:	10a4      	asrs	r4, r4, #2
 8006226:	d01c      	beq.n	8006262 <__pow5mult+0x4e>
 8006228:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800622a:	b396      	cbz	r6, 8006292 <__pow5mult+0x7e>
 800622c:	07e3      	lsls	r3, r4, #31
 800622e:	f04f 0800 	mov.w	r8, #0
 8006232:	d406      	bmi.n	8006242 <__pow5mult+0x2e>
 8006234:	1064      	asrs	r4, r4, #1
 8006236:	d014      	beq.n	8006262 <__pow5mult+0x4e>
 8006238:	6830      	ldr	r0, [r6, #0]
 800623a:	b1a8      	cbz	r0, 8006268 <__pow5mult+0x54>
 800623c:	4606      	mov	r6, r0
 800623e:	07e3      	lsls	r3, r4, #31
 8006240:	d5f8      	bpl.n	8006234 <__pow5mult+0x20>
 8006242:	4632      	mov	r2, r6
 8006244:	4629      	mov	r1, r5
 8006246:	4638      	mov	r0, r7
 8006248:	f7ff ff3e 	bl	80060c8 <__multiply>
 800624c:	b1b5      	cbz	r5, 800627c <__pow5mult+0x68>
 800624e:	686a      	ldr	r2, [r5, #4]
 8006250:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006252:	1064      	asrs	r4, r4, #1
 8006254:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006258:	6029      	str	r1, [r5, #0]
 800625a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800625e:	4605      	mov	r5, r0
 8006260:	d1ea      	bne.n	8006238 <__pow5mult+0x24>
 8006262:	4628      	mov	r0, r5
 8006264:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006268:	4632      	mov	r2, r6
 800626a:	4631      	mov	r1, r6
 800626c:	4638      	mov	r0, r7
 800626e:	f7ff ff2b 	bl	80060c8 <__multiply>
 8006272:	6030      	str	r0, [r6, #0]
 8006274:	f8c0 8000 	str.w	r8, [r0]
 8006278:	4606      	mov	r6, r0
 800627a:	e7e0      	b.n	800623e <__pow5mult+0x2a>
 800627c:	4605      	mov	r5, r0
 800627e:	e7d9      	b.n	8006234 <__pow5mult+0x20>
 8006280:	3b01      	subs	r3, #1
 8006282:	4a0b      	ldr	r2, [pc, #44]	; (80062b0 <__pow5mult+0x9c>)
 8006284:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006288:	2300      	movs	r3, #0
 800628a:	f7ff fe83 	bl	8005f94 <__multadd>
 800628e:	4605      	mov	r5, r0
 8006290:	e7c8      	b.n	8006224 <__pow5mult+0x10>
 8006292:	2101      	movs	r1, #1
 8006294:	4638      	mov	r0, r7
 8006296:	f7ff fe4d 	bl	8005f34 <_Balloc>
 800629a:	f240 2371 	movw	r3, #625	; 0x271
 800629e:	6143      	str	r3, [r0, #20]
 80062a0:	2201      	movs	r2, #1
 80062a2:	2300      	movs	r3, #0
 80062a4:	6102      	str	r2, [r0, #16]
 80062a6:	4606      	mov	r6, r0
 80062a8:	64b8      	str	r0, [r7, #72]	; 0x48
 80062aa:	6003      	str	r3, [r0, #0]
 80062ac:	e7be      	b.n	800622c <__pow5mult+0x18>
 80062ae:	bf00      	nop
 80062b0:	08007298 	.word	0x08007298

080062b4 <__lshift>:
 80062b4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80062b8:	4691      	mov	r9, r2
 80062ba:	690a      	ldr	r2, [r1, #16]
 80062bc:	460e      	mov	r6, r1
 80062be:	ea4f 1469 	mov.w	r4, r9, asr #5
 80062c2:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80062c6:	eb04 0802 	add.w	r8, r4, r2
 80062ca:	f108 0501 	add.w	r5, r8, #1
 80062ce:	429d      	cmp	r5, r3
 80062d0:	4607      	mov	r7, r0
 80062d2:	dd04      	ble.n	80062de <__lshift+0x2a>
 80062d4:	005b      	lsls	r3, r3, #1
 80062d6:	429d      	cmp	r5, r3
 80062d8:	f101 0101 	add.w	r1, r1, #1
 80062dc:	dcfa      	bgt.n	80062d4 <__lshift+0x20>
 80062de:	4638      	mov	r0, r7
 80062e0:	f7ff fe28 	bl	8005f34 <_Balloc>
 80062e4:	2c00      	cmp	r4, #0
 80062e6:	f100 0314 	add.w	r3, r0, #20
 80062ea:	dd37      	ble.n	800635c <__lshift+0xa8>
 80062ec:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80062f0:	2200      	movs	r2, #0
 80062f2:	f843 2b04 	str.w	r2, [r3], #4
 80062f6:	428b      	cmp	r3, r1
 80062f8:	d1fb      	bne.n	80062f2 <__lshift+0x3e>
 80062fa:	6934      	ldr	r4, [r6, #16]
 80062fc:	f106 0314 	add.w	r3, r6, #20
 8006300:	f019 091f 	ands.w	r9, r9, #31
 8006304:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006308:	d020      	beq.n	800634c <__lshift+0x98>
 800630a:	f1c9 0e20 	rsb	lr, r9, #32
 800630e:	2200      	movs	r2, #0
 8006310:	e000      	b.n	8006314 <__lshift+0x60>
 8006312:	4651      	mov	r1, sl
 8006314:	681c      	ldr	r4, [r3, #0]
 8006316:	468a      	mov	sl, r1
 8006318:	fa04 f409 	lsl.w	r4, r4, r9
 800631c:	4314      	orrs	r4, r2
 800631e:	f84a 4b04 	str.w	r4, [sl], #4
 8006322:	f853 2b04 	ldr.w	r2, [r3], #4
 8006326:	4563      	cmp	r3, ip
 8006328:	fa22 f20e 	lsr.w	r2, r2, lr
 800632c:	d3f1      	bcc.n	8006312 <__lshift+0x5e>
 800632e:	604a      	str	r2, [r1, #4]
 8006330:	b10a      	cbz	r2, 8006336 <__lshift+0x82>
 8006332:	f108 0502 	add.w	r5, r8, #2
 8006336:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006338:	6872      	ldr	r2, [r6, #4]
 800633a:	3d01      	subs	r5, #1
 800633c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006340:	6105      	str	r5, [r0, #16]
 8006342:	6031      	str	r1, [r6, #0]
 8006344:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006348:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800634c:	3904      	subs	r1, #4
 800634e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006352:	f841 2f04 	str.w	r2, [r1, #4]!
 8006356:	459c      	cmp	ip, r3
 8006358:	d8f9      	bhi.n	800634e <__lshift+0x9a>
 800635a:	e7ec      	b.n	8006336 <__lshift+0x82>
 800635c:	4619      	mov	r1, r3
 800635e:	e7cc      	b.n	80062fa <__lshift+0x46>

08006360 <__mcmp>:
 8006360:	b430      	push	{r4, r5}
 8006362:	690b      	ldr	r3, [r1, #16]
 8006364:	4605      	mov	r5, r0
 8006366:	6900      	ldr	r0, [r0, #16]
 8006368:	1ac0      	subs	r0, r0, r3
 800636a:	d10f      	bne.n	800638c <__mcmp+0x2c>
 800636c:	009b      	lsls	r3, r3, #2
 800636e:	3514      	adds	r5, #20
 8006370:	3114      	adds	r1, #20
 8006372:	4419      	add	r1, r3
 8006374:	442b      	add	r3, r5
 8006376:	e001      	b.n	800637c <__mcmp+0x1c>
 8006378:	429d      	cmp	r5, r3
 800637a:	d207      	bcs.n	800638c <__mcmp+0x2c>
 800637c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006380:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006384:	4294      	cmp	r4, r2
 8006386:	d0f7      	beq.n	8006378 <__mcmp+0x18>
 8006388:	d302      	bcc.n	8006390 <__mcmp+0x30>
 800638a:	2001      	movs	r0, #1
 800638c:	bc30      	pop	{r4, r5}
 800638e:	4770      	bx	lr
 8006390:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006394:	e7fa      	b.n	800638c <__mcmp+0x2c>
 8006396:	bf00      	nop

08006398 <__mdiff>:
 8006398:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800639c:	6913      	ldr	r3, [r2, #16]
 800639e:	690d      	ldr	r5, [r1, #16]
 80063a0:	1aed      	subs	r5, r5, r3
 80063a2:	2d00      	cmp	r5, #0
 80063a4:	460e      	mov	r6, r1
 80063a6:	4690      	mov	r8, r2
 80063a8:	f101 0414 	add.w	r4, r1, #20
 80063ac:	f102 0714 	add.w	r7, r2, #20
 80063b0:	d114      	bne.n	80063dc <__mdiff+0x44>
 80063b2:	009b      	lsls	r3, r3, #2
 80063b4:	18e2      	adds	r2, r4, r3
 80063b6:	443b      	add	r3, r7
 80063b8:	e001      	b.n	80063be <__mdiff+0x26>
 80063ba:	42a2      	cmp	r2, r4
 80063bc:	d959      	bls.n	8006472 <__mdiff+0xda>
 80063be:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80063c2:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80063c6:	458c      	cmp	ip, r1
 80063c8:	d0f7      	beq.n	80063ba <__mdiff+0x22>
 80063ca:	d209      	bcs.n	80063e0 <__mdiff+0x48>
 80063cc:	4622      	mov	r2, r4
 80063ce:	4633      	mov	r3, r6
 80063d0:	463c      	mov	r4, r7
 80063d2:	4646      	mov	r6, r8
 80063d4:	4617      	mov	r7, r2
 80063d6:	4698      	mov	r8, r3
 80063d8:	2501      	movs	r5, #1
 80063da:	e001      	b.n	80063e0 <__mdiff+0x48>
 80063dc:	dbf6      	blt.n	80063cc <__mdiff+0x34>
 80063de:	2500      	movs	r5, #0
 80063e0:	6871      	ldr	r1, [r6, #4]
 80063e2:	f7ff fda7 	bl	8005f34 <_Balloc>
 80063e6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80063ea:	6936      	ldr	r6, [r6, #16]
 80063ec:	60c5      	str	r5, [r0, #12]
 80063ee:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80063f2:	46bc      	mov	ip, r7
 80063f4:	f100 0514 	add.w	r5, r0, #20
 80063f8:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80063fc:	2300      	movs	r3, #0
 80063fe:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006402:	f854 8b04 	ldr.w	r8, [r4], #4
 8006406:	b28a      	uxth	r2, r1
 8006408:	fa13 f388 	uxtah	r3, r3, r8
 800640c:	0c09      	lsrs	r1, r1, #16
 800640e:	1a9a      	subs	r2, r3, r2
 8006410:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006414:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006418:	b292      	uxth	r2, r2
 800641a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800641e:	45e6      	cmp	lr, ip
 8006420:	f845 2b04 	str.w	r2, [r5], #4
 8006424:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006428:	d8e9      	bhi.n	80063fe <__mdiff+0x66>
 800642a:	42a7      	cmp	r7, r4
 800642c:	d917      	bls.n	800645e <__mdiff+0xc6>
 800642e:	46ae      	mov	lr, r5
 8006430:	46a4      	mov	ip, r4
 8006432:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006436:	fa13 f382 	uxtah	r3, r3, r2
 800643a:	1419      	asrs	r1, r3, #16
 800643c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006440:	b29b      	uxth	r3, r3
 8006442:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006446:	4567      	cmp	r7, ip
 8006448:	f84e 2b04 	str.w	r2, [lr], #4
 800644c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006450:	d8ef      	bhi.n	8006432 <__mdiff+0x9a>
 8006452:	43e4      	mvns	r4, r4
 8006454:	4427      	add	r7, r4
 8006456:	f027 0703 	bic.w	r7, r7, #3
 800645a:	3704      	adds	r7, #4
 800645c:	443d      	add	r5, r7
 800645e:	3d04      	subs	r5, #4
 8006460:	b922      	cbnz	r2, 800646c <__mdiff+0xd4>
 8006462:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006466:	3e01      	subs	r6, #1
 8006468:	2b00      	cmp	r3, #0
 800646a:	d0fa      	beq.n	8006462 <__mdiff+0xca>
 800646c:	6106      	str	r6, [r0, #16]
 800646e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006472:	2100      	movs	r1, #0
 8006474:	f7ff fd5e 	bl	8005f34 <_Balloc>
 8006478:	2201      	movs	r2, #1
 800647a:	2300      	movs	r3, #0
 800647c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006480:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006484 <__d2b>:
 8006484:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006488:	460f      	mov	r7, r1
 800648a:	b083      	sub	sp, #12
 800648c:	2101      	movs	r1, #1
 800648e:	ec55 4b10 	vmov	r4, r5, d0
 8006492:	4616      	mov	r6, r2
 8006494:	f7ff fd4e 	bl	8005f34 <_Balloc>
 8006498:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800649c:	4681      	mov	r9, r0
 800649e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80064a2:	f1b8 0f00 	cmp.w	r8, #0
 80064a6:	d001      	beq.n	80064ac <__d2b+0x28>
 80064a8:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80064ac:	2c00      	cmp	r4, #0
 80064ae:	9301      	str	r3, [sp, #4]
 80064b0:	d024      	beq.n	80064fc <__d2b+0x78>
 80064b2:	a802      	add	r0, sp, #8
 80064b4:	f840 4d08 	str.w	r4, [r0, #-8]!
 80064b8:	f7ff fdcc 	bl	8006054 <__lo0bits>
 80064bc:	2800      	cmp	r0, #0
 80064be:	d136      	bne.n	800652e <__d2b+0xaa>
 80064c0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80064c4:	f8c9 2014 	str.w	r2, [r9, #20]
 80064c8:	2b00      	cmp	r3, #0
 80064ca:	bf0c      	ite	eq
 80064cc:	2101      	moveq	r1, #1
 80064ce:	2102      	movne	r1, #2
 80064d0:	f8c9 3018 	str.w	r3, [r9, #24]
 80064d4:	f8c9 1010 	str.w	r1, [r9, #16]
 80064d8:	f1b8 0f00 	cmp.w	r8, #0
 80064dc:	d11b      	bne.n	8006516 <__d2b+0x92>
 80064de:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80064e2:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80064e6:	6038      	str	r0, [r7, #0]
 80064e8:	6918      	ldr	r0, [r3, #16]
 80064ea:	f7ff fd93 	bl	8006014 <__hi0bits>
 80064ee:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80064f2:	6030      	str	r0, [r6, #0]
 80064f4:	4648      	mov	r0, r9
 80064f6:	b003      	add	sp, #12
 80064f8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80064fc:	a801      	add	r0, sp, #4
 80064fe:	f7ff fda9 	bl	8006054 <__lo0bits>
 8006502:	9b01      	ldr	r3, [sp, #4]
 8006504:	f8c9 3014 	str.w	r3, [r9, #20]
 8006508:	2101      	movs	r1, #1
 800650a:	3020      	adds	r0, #32
 800650c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006510:	f1b8 0f00 	cmp.w	r8, #0
 8006514:	d0e3      	beq.n	80064de <__d2b+0x5a>
 8006516:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800651a:	eb08 0300 	add.w	r3, r8, r0
 800651e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006522:	603b      	str	r3, [r7, #0]
 8006524:	6030      	str	r0, [r6, #0]
 8006526:	4648      	mov	r0, r9
 8006528:	b003      	add	sp, #12
 800652a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800652e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006532:	f1c0 0220 	rsb	r2, r0, #32
 8006536:	fa03 f202 	lsl.w	r2, r3, r2
 800653a:	430a      	orrs	r2, r1
 800653c:	40c3      	lsrs	r3, r0
 800653e:	9301      	str	r3, [sp, #4]
 8006540:	f8c9 2014 	str.w	r2, [r9, #20]
 8006544:	e7c0      	b.n	80064c8 <__d2b+0x44>
 8006546:	bf00      	nop

08006548 <_realloc_r>:
 8006548:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800654c:	4692      	mov	sl, r2
 800654e:	b083      	sub	sp, #12
 8006550:	2900      	cmp	r1, #0
 8006552:	f000 80a1 	beq.w	8006698 <_realloc_r+0x150>
 8006556:	460d      	mov	r5, r1
 8006558:	4680      	mov	r8, r0
 800655a:	f10a 040b 	add.w	r4, sl, #11
 800655e:	f7ff fcdd 	bl	8005f1c <__malloc_lock>
 8006562:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006566:	2c16      	cmp	r4, #22
 8006568:	f022 0603 	bic.w	r6, r2, #3
 800656c:	f1a5 0708 	sub.w	r7, r5, #8
 8006570:	d83e      	bhi.n	80065f0 <_realloc_r+0xa8>
 8006572:	2410      	movs	r4, #16
 8006574:	4621      	mov	r1, r4
 8006576:	45a2      	cmp	sl, r4
 8006578:	d83f      	bhi.n	80065fa <_realloc_r+0xb2>
 800657a:	428e      	cmp	r6, r1
 800657c:	eb07 0906 	add.w	r9, r7, r6
 8006580:	da74      	bge.n	800666c <_realloc_r+0x124>
 8006582:	4bc7      	ldr	r3, [pc, #796]	; (80068a0 <_realloc_r+0x358>)
 8006584:	6898      	ldr	r0, [r3, #8]
 8006586:	4548      	cmp	r0, r9
 8006588:	f000 80aa 	beq.w	80066e0 <_realloc_r+0x198>
 800658c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006590:	f020 0301 	bic.w	r3, r0, #1
 8006594:	444b      	add	r3, r9
 8006596:	685b      	ldr	r3, [r3, #4]
 8006598:	07db      	lsls	r3, r3, #31
 800659a:	f140 8083 	bpl.w	80066a4 <_realloc_r+0x15c>
 800659e:	07d2      	lsls	r2, r2, #31
 80065a0:	d534      	bpl.n	800660c <_realloc_r+0xc4>
 80065a2:	4651      	mov	r1, sl
 80065a4:	4640      	mov	r0, r8
 80065a6:	f7ff f9b1 	bl	800590c <_malloc_r>
 80065aa:	4682      	mov	sl, r0
 80065ac:	b1e0      	cbz	r0, 80065e8 <_realloc_r+0xa0>
 80065ae:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80065b2:	f023 0301 	bic.w	r3, r3, #1
 80065b6:	443b      	add	r3, r7
 80065b8:	f1a0 0208 	sub.w	r2, r0, #8
 80065bc:	4293      	cmp	r3, r2
 80065be:	f000 80f9 	beq.w	80067b4 <_realloc_r+0x26c>
 80065c2:	1f32      	subs	r2, r6, #4
 80065c4:	2a24      	cmp	r2, #36	; 0x24
 80065c6:	f200 8107 	bhi.w	80067d8 <_realloc_r+0x290>
 80065ca:	2a13      	cmp	r2, #19
 80065cc:	6829      	ldr	r1, [r5, #0]
 80065ce:	f200 80e6 	bhi.w	800679e <_realloc_r+0x256>
 80065d2:	4603      	mov	r3, r0
 80065d4:	462a      	mov	r2, r5
 80065d6:	6019      	str	r1, [r3, #0]
 80065d8:	6851      	ldr	r1, [r2, #4]
 80065da:	6059      	str	r1, [r3, #4]
 80065dc:	6892      	ldr	r2, [r2, #8]
 80065de:	609a      	str	r2, [r3, #8]
 80065e0:	4629      	mov	r1, r5
 80065e2:	4640      	mov	r0, r8
 80065e4:	f7fe fe68 	bl	80052b8 <_free_r>
 80065e8:	4640      	mov	r0, r8
 80065ea:	f7ff fc9d 	bl	8005f28 <__malloc_unlock>
 80065ee:	e04f      	b.n	8006690 <_realloc_r+0x148>
 80065f0:	f024 0407 	bic.w	r4, r4, #7
 80065f4:	2c00      	cmp	r4, #0
 80065f6:	4621      	mov	r1, r4
 80065f8:	dabd      	bge.n	8006576 <_realloc_r+0x2e>
 80065fa:	f04f 0a00 	mov.w	sl, #0
 80065fe:	230c      	movs	r3, #12
 8006600:	4650      	mov	r0, sl
 8006602:	f8c8 3000 	str.w	r3, [r8]
 8006606:	b003      	add	sp, #12
 8006608:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800660c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006610:	eba7 0b03 	sub.w	fp, r7, r3
 8006614:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006618:	f022 0203 	bic.w	r2, r2, #3
 800661c:	18b3      	adds	r3, r6, r2
 800661e:	428b      	cmp	r3, r1
 8006620:	dbbf      	blt.n	80065a2 <_realloc_r+0x5a>
 8006622:	46da      	mov	sl, fp
 8006624:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006628:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800662c:	1f32      	subs	r2, r6, #4
 800662e:	2a24      	cmp	r2, #36	; 0x24
 8006630:	60c1      	str	r1, [r0, #12]
 8006632:	eb0b 0903 	add.w	r9, fp, r3
 8006636:	6088      	str	r0, [r1, #8]
 8006638:	f200 80c6 	bhi.w	80067c8 <_realloc_r+0x280>
 800663c:	2a13      	cmp	r2, #19
 800663e:	6829      	ldr	r1, [r5, #0]
 8006640:	f240 80c0 	bls.w	80067c4 <_realloc_r+0x27c>
 8006644:	f8cb 1008 	str.w	r1, [fp, #8]
 8006648:	6869      	ldr	r1, [r5, #4]
 800664a:	f8cb 100c 	str.w	r1, [fp, #12]
 800664e:	2a1b      	cmp	r2, #27
 8006650:	68a9      	ldr	r1, [r5, #8]
 8006652:	f200 80d8 	bhi.w	8006806 <_realloc_r+0x2be>
 8006656:	f10b 0210 	add.w	r2, fp, #16
 800665a:	3508      	adds	r5, #8
 800665c:	6011      	str	r1, [r2, #0]
 800665e:	6869      	ldr	r1, [r5, #4]
 8006660:	6051      	str	r1, [r2, #4]
 8006662:	68a9      	ldr	r1, [r5, #8]
 8006664:	6091      	str	r1, [r2, #8]
 8006666:	461e      	mov	r6, r3
 8006668:	465f      	mov	r7, fp
 800666a:	4655      	mov	r5, sl
 800666c:	687b      	ldr	r3, [r7, #4]
 800666e:	1b32      	subs	r2, r6, r4
 8006670:	2a0f      	cmp	r2, #15
 8006672:	f003 0301 	and.w	r3, r3, #1
 8006676:	d822      	bhi.n	80066be <_realloc_r+0x176>
 8006678:	4333      	orrs	r3, r6
 800667a:	607b      	str	r3, [r7, #4]
 800667c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006680:	f043 0301 	orr.w	r3, r3, #1
 8006684:	f8c9 3004 	str.w	r3, [r9, #4]
 8006688:	4640      	mov	r0, r8
 800668a:	f7ff fc4d 	bl	8005f28 <__malloc_unlock>
 800668e:	46aa      	mov	sl, r5
 8006690:	4650      	mov	r0, sl
 8006692:	b003      	add	sp, #12
 8006694:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006698:	4611      	mov	r1, r2
 800669a:	b003      	add	sp, #12
 800669c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80066a0:	f7ff b934 	b.w	800590c <_malloc_r>
 80066a4:	f020 0003 	bic.w	r0, r0, #3
 80066a8:	1833      	adds	r3, r6, r0
 80066aa:	428b      	cmp	r3, r1
 80066ac:	db61      	blt.n	8006772 <_realloc_r+0x22a>
 80066ae:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80066b2:	461e      	mov	r6, r3
 80066b4:	60ca      	str	r2, [r1, #12]
 80066b6:	eb07 0903 	add.w	r9, r7, r3
 80066ba:	6091      	str	r1, [r2, #8]
 80066bc:	e7d6      	b.n	800666c <_realloc_r+0x124>
 80066be:	1939      	adds	r1, r7, r4
 80066c0:	4323      	orrs	r3, r4
 80066c2:	f042 0201 	orr.w	r2, r2, #1
 80066c6:	607b      	str	r3, [r7, #4]
 80066c8:	604a      	str	r2, [r1, #4]
 80066ca:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80066ce:	f043 0301 	orr.w	r3, r3, #1
 80066d2:	3108      	adds	r1, #8
 80066d4:	f8c9 3004 	str.w	r3, [r9, #4]
 80066d8:	4640      	mov	r0, r8
 80066da:	f7fe fded 	bl	80052b8 <_free_r>
 80066de:	e7d3      	b.n	8006688 <_realloc_r+0x140>
 80066e0:	6840      	ldr	r0, [r0, #4]
 80066e2:	f020 0903 	bic.w	r9, r0, #3
 80066e6:	44b1      	add	r9, r6
 80066e8:	f104 0010 	add.w	r0, r4, #16
 80066ec:	4581      	cmp	r9, r0
 80066ee:	da77      	bge.n	80067e0 <_realloc_r+0x298>
 80066f0:	07d2      	lsls	r2, r2, #31
 80066f2:	f53f af56 	bmi.w	80065a2 <_realloc_r+0x5a>
 80066f6:	f855 2c08 	ldr.w	r2, [r5, #-8]
 80066fa:	eba7 0b02 	sub.w	fp, r7, r2
 80066fe:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006702:	f022 0203 	bic.w	r2, r2, #3
 8006706:	4491      	add	r9, r2
 8006708:	4548      	cmp	r0, r9
 800670a:	dc87      	bgt.n	800661c <_realloc_r+0xd4>
 800670c:	46da      	mov	sl, fp
 800670e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006712:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006716:	1f32      	subs	r2, r6, #4
 8006718:	2a24      	cmp	r2, #36	; 0x24
 800671a:	60c1      	str	r1, [r0, #12]
 800671c:	6088      	str	r0, [r1, #8]
 800671e:	f200 80a1 	bhi.w	8006864 <_realloc_r+0x31c>
 8006722:	2a13      	cmp	r2, #19
 8006724:	6829      	ldr	r1, [r5, #0]
 8006726:	f240 809b 	bls.w	8006860 <_realloc_r+0x318>
 800672a:	f8cb 1008 	str.w	r1, [fp, #8]
 800672e:	6869      	ldr	r1, [r5, #4]
 8006730:	f8cb 100c 	str.w	r1, [fp, #12]
 8006734:	2a1b      	cmp	r2, #27
 8006736:	68a9      	ldr	r1, [r5, #8]
 8006738:	f200 809b 	bhi.w	8006872 <_realloc_r+0x32a>
 800673c:	f10b 0210 	add.w	r2, fp, #16
 8006740:	3508      	adds	r5, #8
 8006742:	6011      	str	r1, [r2, #0]
 8006744:	6869      	ldr	r1, [r5, #4]
 8006746:	6051      	str	r1, [r2, #4]
 8006748:	68a9      	ldr	r1, [r5, #8]
 800674a:	6091      	str	r1, [r2, #8]
 800674c:	eb0b 0104 	add.w	r1, fp, r4
 8006750:	eba9 0204 	sub.w	r2, r9, r4
 8006754:	f042 0201 	orr.w	r2, r2, #1
 8006758:	6099      	str	r1, [r3, #8]
 800675a:	604a      	str	r2, [r1, #4]
 800675c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006760:	f003 0301 	and.w	r3, r3, #1
 8006764:	431c      	orrs	r4, r3
 8006766:	4640      	mov	r0, r8
 8006768:	f8cb 4004 	str.w	r4, [fp, #4]
 800676c:	f7ff fbdc 	bl	8005f28 <__malloc_unlock>
 8006770:	e78e      	b.n	8006690 <_realloc_r+0x148>
 8006772:	07d3      	lsls	r3, r2, #31
 8006774:	f53f af15 	bmi.w	80065a2 <_realloc_r+0x5a>
 8006778:	f855 3c08 	ldr.w	r3, [r5, #-8]
 800677c:	eba7 0b03 	sub.w	fp, r7, r3
 8006780:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006784:	f022 0203 	bic.w	r2, r2, #3
 8006788:	4410      	add	r0, r2
 800678a:	1983      	adds	r3, r0, r6
 800678c:	428b      	cmp	r3, r1
 800678e:	f6ff af45 	blt.w	800661c <_realloc_r+0xd4>
 8006792:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006796:	46da      	mov	sl, fp
 8006798:	60ca      	str	r2, [r1, #12]
 800679a:	6091      	str	r1, [r2, #8]
 800679c:	e742      	b.n	8006624 <_realloc_r+0xdc>
 800679e:	6001      	str	r1, [r0, #0]
 80067a0:	686b      	ldr	r3, [r5, #4]
 80067a2:	6043      	str	r3, [r0, #4]
 80067a4:	2a1b      	cmp	r2, #27
 80067a6:	d83a      	bhi.n	800681e <_realloc_r+0x2d6>
 80067a8:	f105 0208 	add.w	r2, r5, #8
 80067ac:	f100 0308 	add.w	r3, r0, #8
 80067b0:	68a9      	ldr	r1, [r5, #8]
 80067b2:	e710      	b.n	80065d6 <_realloc_r+0x8e>
 80067b4:	f850 3c04 	ldr.w	r3, [r0, #-4]
 80067b8:	f023 0303 	bic.w	r3, r3, #3
 80067bc:	441e      	add	r6, r3
 80067be:	eb07 0906 	add.w	r9, r7, r6
 80067c2:	e753      	b.n	800666c <_realloc_r+0x124>
 80067c4:	4652      	mov	r2, sl
 80067c6:	e749      	b.n	800665c <_realloc_r+0x114>
 80067c8:	4629      	mov	r1, r5
 80067ca:	4650      	mov	r0, sl
 80067cc:	461e      	mov	r6, r3
 80067ce:	465f      	mov	r7, fp
 80067d0:	f7ff fb40 	bl	8005e54 <memmove>
 80067d4:	4655      	mov	r5, sl
 80067d6:	e749      	b.n	800666c <_realloc_r+0x124>
 80067d8:	4629      	mov	r1, r5
 80067da:	f7ff fb3b 	bl	8005e54 <memmove>
 80067de:	e6ff      	b.n	80065e0 <_realloc_r+0x98>
 80067e0:	4427      	add	r7, r4
 80067e2:	eba9 0904 	sub.w	r9, r9, r4
 80067e6:	f049 0201 	orr.w	r2, r9, #1
 80067ea:	609f      	str	r7, [r3, #8]
 80067ec:	607a      	str	r2, [r7, #4]
 80067ee:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80067f2:	f003 0301 	and.w	r3, r3, #1
 80067f6:	431c      	orrs	r4, r3
 80067f8:	4640      	mov	r0, r8
 80067fa:	f845 4c04 	str.w	r4, [r5, #-4]
 80067fe:	f7ff fb93 	bl	8005f28 <__malloc_unlock>
 8006802:	46aa      	mov	sl, r5
 8006804:	e744      	b.n	8006690 <_realloc_r+0x148>
 8006806:	f8cb 1010 	str.w	r1, [fp, #16]
 800680a:	68e9      	ldr	r1, [r5, #12]
 800680c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006810:	2a24      	cmp	r2, #36	; 0x24
 8006812:	d010      	beq.n	8006836 <_realloc_r+0x2ee>
 8006814:	6929      	ldr	r1, [r5, #16]
 8006816:	f10b 0218 	add.w	r2, fp, #24
 800681a:	3510      	adds	r5, #16
 800681c:	e71e      	b.n	800665c <_realloc_r+0x114>
 800681e:	68ab      	ldr	r3, [r5, #8]
 8006820:	6083      	str	r3, [r0, #8]
 8006822:	68eb      	ldr	r3, [r5, #12]
 8006824:	60c3      	str	r3, [r0, #12]
 8006826:	2a24      	cmp	r2, #36	; 0x24
 8006828:	d010      	beq.n	800684c <_realloc_r+0x304>
 800682a:	f105 0210 	add.w	r2, r5, #16
 800682e:	f100 0310 	add.w	r3, r0, #16
 8006832:	6929      	ldr	r1, [r5, #16]
 8006834:	e6cf      	b.n	80065d6 <_realloc_r+0x8e>
 8006836:	692a      	ldr	r2, [r5, #16]
 8006838:	f8cb 2018 	str.w	r2, [fp, #24]
 800683c:	696a      	ldr	r2, [r5, #20]
 800683e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006842:	69a9      	ldr	r1, [r5, #24]
 8006844:	f10b 0220 	add.w	r2, fp, #32
 8006848:	3518      	adds	r5, #24
 800684a:	e707      	b.n	800665c <_realloc_r+0x114>
 800684c:	692b      	ldr	r3, [r5, #16]
 800684e:	6103      	str	r3, [r0, #16]
 8006850:	696b      	ldr	r3, [r5, #20]
 8006852:	6143      	str	r3, [r0, #20]
 8006854:	69a9      	ldr	r1, [r5, #24]
 8006856:	f105 0218 	add.w	r2, r5, #24
 800685a:	f100 0318 	add.w	r3, r0, #24
 800685e:	e6ba      	b.n	80065d6 <_realloc_r+0x8e>
 8006860:	4652      	mov	r2, sl
 8006862:	e76e      	b.n	8006742 <_realloc_r+0x1fa>
 8006864:	4629      	mov	r1, r5
 8006866:	4650      	mov	r0, sl
 8006868:	9301      	str	r3, [sp, #4]
 800686a:	f7ff faf3 	bl	8005e54 <memmove>
 800686e:	9b01      	ldr	r3, [sp, #4]
 8006870:	e76c      	b.n	800674c <_realloc_r+0x204>
 8006872:	f8cb 1010 	str.w	r1, [fp, #16]
 8006876:	68e9      	ldr	r1, [r5, #12]
 8006878:	f8cb 1014 	str.w	r1, [fp, #20]
 800687c:	2a24      	cmp	r2, #36	; 0x24
 800687e:	d004      	beq.n	800688a <_realloc_r+0x342>
 8006880:	6929      	ldr	r1, [r5, #16]
 8006882:	f10b 0218 	add.w	r2, fp, #24
 8006886:	3510      	adds	r5, #16
 8006888:	e75b      	b.n	8006742 <_realloc_r+0x1fa>
 800688a:	692a      	ldr	r2, [r5, #16]
 800688c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006890:	696a      	ldr	r2, [r5, #20]
 8006892:	f8cb 201c 	str.w	r2, [fp, #28]
 8006896:	69a9      	ldr	r1, [r5, #24]
 8006898:	f10b 0220 	add.w	r2, fp, #32
 800689c:	3518      	adds	r5, #24
 800689e:	e750      	b.n	8006742 <_realloc_r+0x1fa>
 80068a0:	2000049c 	.word	0x2000049c

080068a4 <frexp>:
 80068a4:	ec53 2b10 	vmov	r2, r3, d0
 80068a8:	b570      	push	{r4, r5, r6, lr}
 80068aa:	4e16      	ldr	r6, [pc, #88]	; (8006904 <frexp+0x60>)
 80068ac:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 80068b0:	2500      	movs	r5, #0
 80068b2:	42b1      	cmp	r1, r6
 80068b4:	4604      	mov	r4, r0
 80068b6:	6005      	str	r5, [r0, #0]
 80068b8:	dc21      	bgt.n	80068fe <frexp+0x5a>
 80068ba:	ee10 6a10 	vmov	r6, s0
 80068be:	430e      	orrs	r6, r1
 80068c0:	d01d      	beq.n	80068fe <frexp+0x5a>
 80068c2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80068c6:	4618      	mov	r0, r3
 80068c8:	da0c      	bge.n	80068e4 <frexp+0x40>
 80068ca:	4619      	mov	r1, r3
 80068cc:	2200      	movs	r2, #0
 80068ce:	ee10 0a10 	vmov	r0, s0
 80068d2:	4b0d      	ldr	r3, [pc, #52]	; (8006908 <frexp+0x64>)
 80068d4:	f7fa f930 	bl	8000b38 <__aeabi_dmul>
 80068d8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 80068dc:	4602      	mov	r2, r0
 80068de:	4608      	mov	r0, r1
 80068e0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80068e4:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 80068e8:	1509      	asrs	r1, r1, #20
 80068ea:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 80068ee:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 80068f2:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 80068f6:	4429      	add	r1, r5
 80068f8:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80068fc:	6021      	str	r1, [r4, #0]
 80068fe:	ec43 2b10 	vmov	d0, r2, r3
 8006902:	bd70      	pop	{r4, r5, r6, pc}
 8006904:	7fefffff 	.word	0x7fefffff
 8006908:	43500000 	.word	0x43500000

0800690c <_sbrk_r>:
 800690c:	b538      	push	{r3, r4, r5, lr}
 800690e:	4c07      	ldr	r4, [pc, #28]	; (800692c <_sbrk_r+0x20>)
 8006910:	2300      	movs	r3, #0
 8006912:	4605      	mov	r5, r0
 8006914:	4608      	mov	r0, r1
 8006916:	6023      	str	r3, [r4, #0]
 8006918:	f7fb fc33 	bl	8002182 <_sbrk>
 800691c:	1c43      	adds	r3, r0, #1
 800691e:	d000      	beq.n	8006922 <_sbrk_r+0x16>
 8006920:	bd38      	pop	{r3, r4, r5, pc}
 8006922:	6823      	ldr	r3, [r4, #0]
 8006924:	2b00      	cmp	r3, #0
 8006926:	d0fb      	beq.n	8006920 <_sbrk_r+0x14>
 8006928:	602b      	str	r3, [r5, #0]
 800692a:	bd38      	pop	{r3, r4, r5, pc}
 800692c:	20000cec 	.word	0x20000cec

08006930 <__sread>:
 8006930:	b510      	push	{r4, lr}
 8006932:	460c      	mov	r4, r1
 8006934:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006938:	f000 fabc 	bl	8006eb4 <_read_r>
 800693c:	2800      	cmp	r0, #0
 800693e:	db03      	blt.n	8006948 <__sread+0x18>
 8006940:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006942:	4403      	add	r3, r0
 8006944:	6523      	str	r3, [r4, #80]	; 0x50
 8006946:	bd10      	pop	{r4, pc}
 8006948:	89a3      	ldrh	r3, [r4, #12]
 800694a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 800694e:	81a3      	strh	r3, [r4, #12]
 8006950:	bd10      	pop	{r4, pc}
 8006952:	bf00      	nop

08006954 <__swrite>:
 8006954:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006958:	4616      	mov	r6, r2
 800695a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 800695e:	461f      	mov	r7, r3
 8006960:	05d3      	lsls	r3, r2, #23
 8006962:	460c      	mov	r4, r1
 8006964:	4605      	mov	r5, r0
 8006966:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800696a:	d507      	bpl.n	800697c <__swrite+0x28>
 800696c:	2200      	movs	r2, #0
 800696e:	2302      	movs	r3, #2
 8006970:	f000 fa74 	bl	8006e5c <_lseek_r>
 8006974:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006978:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800697c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006980:	81a2      	strh	r2, [r4, #12]
 8006982:	463b      	mov	r3, r7
 8006984:	4632      	mov	r2, r6
 8006986:	4628      	mov	r0, r5
 8006988:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800698c:	f000 b88c 	b.w	8006aa8 <_write_r>

08006990 <__sseek>:
 8006990:	b510      	push	{r4, lr}
 8006992:	460c      	mov	r4, r1
 8006994:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006998:	f000 fa60 	bl	8006e5c <_lseek_r>
 800699c:	89a3      	ldrh	r3, [r4, #12]
 800699e:	1c42      	adds	r2, r0, #1
 80069a0:	bf0e      	itee	eq
 80069a2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80069a6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 80069aa:	6520      	strne	r0, [r4, #80]	; 0x50
 80069ac:	81a3      	strh	r3, [r4, #12]
 80069ae:	bd10      	pop	{r4, pc}

080069b0 <__sclose>:
 80069b0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069b4:	f000 b922 	b.w	8006bfc <_close_r>

080069b8 <strncpy>:
 80069b8:	ea40 0301 	orr.w	r3, r0, r1
 80069bc:	079b      	lsls	r3, r3, #30
 80069be:	b470      	push	{r4, r5, r6}
 80069c0:	d12a      	bne.n	8006a18 <strncpy+0x60>
 80069c2:	2a03      	cmp	r2, #3
 80069c4:	d928      	bls.n	8006a18 <strncpy+0x60>
 80069c6:	460c      	mov	r4, r1
 80069c8:	4603      	mov	r3, r0
 80069ca:	4621      	mov	r1, r4
 80069cc:	f854 6b04 	ldr.w	r6, [r4], #4
 80069d0:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 80069d4:	ea25 0506 	bic.w	r5, r5, r6
 80069d8:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 80069dc:	d106      	bne.n	80069ec <strncpy+0x34>
 80069de:	3a04      	subs	r2, #4
 80069e0:	2a03      	cmp	r2, #3
 80069e2:	f843 6b04 	str.w	r6, [r3], #4
 80069e6:	4621      	mov	r1, r4
 80069e8:	d8ef      	bhi.n	80069ca <strncpy+0x12>
 80069ea:	b19a      	cbz	r2, 8006a14 <strncpy+0x5c>
 80069ec:	780c      	ldrb	r4, [r1, #0]
 80069ee:	701c      	strb	r4, [r3, #0]
 80069f0:	3a01      	subs	r2, #1
 80069f2:	3301      	adds	r3, #1
 80069f4:	b13c      	cbz	r4, 8006a06 <strncpy+0x4e>
 80069f6:	b16a      	cbz	r2, 8006a14 <strncpy+0x5c>
 80069f8:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 80069fc:	f803 4b01 	strb.w	r4, [r3], #1
 8006a00:	3a01      	subs	r2, #1
 8006a02:	2c00      	cmp	r4, #0
 8006a04:	d1f7      	bne.n	80069f6 <strncpy+0x3e>
 8006a06:	b12a      	cbz	r2, 8006a14 <strncpy+0x5c>
 8006a08:	441a      	add	r2, r3
 8006a0a:	2100      	movs	r1, #0
 8006a0c:	f803 1b01 	strb.w	r1, [r3], #1
 8006a10:	4293      	cmp	r3, r2
 8006a12:	d1fb      	bne.n	8006a0c <strncpy+0x54>
 8006a14:	bc70      	pop	{r4, r5, r6}
 8006a16:	4770      	bx	lr
 8006a18:	4603      	mov	r3, r0
 8006a1a:	e7e6      	b.n	80069ea <strncpy+0x32>

08006a1c <__sprint_r.part.0>:
 8006a1c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006a20:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006a22:	049c      	lsls	r4, r3, #18
 8006a24:	4692      	mov	sl, r2
 8006a26:	d52d      	bpl.n	8006a84 <__sprint_r.part.0+0x68>
 8006a28:	6893      	ldr	r3, [r2, #8]
 8006a2a:	6812      	ldr	r2, [r2, #0]
 8006a2c:	b343      	cbz	r3, 8006a80 <__sprint_r.part.0+0x64>
 8006a2e:	460e      	mov	r6, r1
 8006a30:	4607      	mov	r7, r0
 8006a32:	f102 0908 	add.w	r9, r2, #8
 8006a36:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006a3a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006a3e:	d015      	beq.n	8006a6c <__sprint_r.part.0+0x50>
 8006a40:	3d04      	subs	r5, #4
 8006a42:	2400      	movs	r4, #0
 8006a44:	e001      	b.n	8006a4a <__sprint_r.part.0+0x2e>
 8006a46:	45a0      	cmp	r8, r4
 8006a48:	d00e      	beq.n	8006a68 <__sprint_r.part.0+0x4c>
 8006a4a:	4632      	mov	r2, r6
 8006a4c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006a50:	4638      	mov	r0, r7
 8006a52:	f000 f99d 	bl	8006d90 <_fputwc_r>
 8006a56:	1c43      	adds	r3, r0, #1
 8006a58:	f104 0401 	add.w	r4, r4, #1
 8006a5c:	d1f3      	bne.n	8006a46 <__sprint_r.part.0+0x2a>
 8006a5e:	2300      	movs	r3, #0
 8006a60:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006a64:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a68:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006a6c:	f02b 0b03 	bic.w	fp, fp, #3
 8006a70:	eba3 030b 	sub.w	r3, r3, fp
 8006a74:	f8ca 3008 	str.w	r3, [sl, #8]
 8006a78:	f109 0908 	add.w	r9, r9, #8
 8006a7c:	2b00      	cmp	r3, #0
 8006a7e:	d1da      	bne.n	8006a36 <__sprint_r.part.0+0x1a>
 8006a80:	2000      	movs	r0, #0
 8006a82:	e7ec      	b.n	8006a5e <__sprint_r.part.0+0x42>
 8006a84:	f7fe fd0c 	bl	80054a0 <__sfvwrite_r>
 8006a88:	2300      	movs	r3, #0
 8006a8a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006a8e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a92:	bf00      	nop

08006a94 <__sprint_r>:
 8006a94:	6893      	ldr	r3, [r2, #8]
 8006a96:	b10b      	cbz	r3, 8006a9c <__sprint_r+0x8>
 8006a98:	f7ff bfc0 	b.w	8006a1c <__sprint_r.part.0>
 8006a9c:	b410      	push	{r4}
 8006a9e:	4618      	mov	r0, r3
 8006aa0:	6053      	str	r3, [r2, #4]
 8006aa2:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006aa6:	4770      	bx	lr

08006aa8 <_write_r>:
 8006aa8:	b570      	push	{r4, r5, r6, lr}
 8006aaa:	460d      	mov	r5, r1
 8006aac:	4c08      	ldr	r4, [pc, #32]	; (8006ad0 <_write_r+0x28>)
 8006aae:	4611      	mov	r1, r2
 8006ab0:	4606      	mov	r6, r0
 8006ab2:	461a      	mov	r2, r3
 8006ab4:	4628      	mov	r0, r5
 8006ab6:	2300      	movs	r3, #0
 8006ab8:	6023      	str	r3, [r4, #0]
 8006aba:	f7fb fb4f 	bl	800215c <_write>
 8006abe:	1c43      	adds	r3, r0, #1
 8006ac0:	d000      	beq.n	8006ac4 <_write_r+0x1c>
 8006ac2:	bd70      	pop	{r4, r5, r6, pc}
 8006ac4:	6823      	ldr	r3, [r4, #0]
 8006ac6:	2b00      	cmp	r3, #0
 8006ac8:	d0fb      	beq.n	8006ac2 <_write_r+0x1a>
 8006aca:	6033      	str	r3, [r6, #0]
 8006acc:	bd70      	pop	{r4, r5, r6, pc}
 8006ace:	bf00      	nop
 8006ad0:	20000cec 	.word	0x20000cec

08006ad4 <__register_exitproc>:
 8006ad4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006ad8:	4d2b      	ldr	r5, [pc, #172]	; (8006b88 <__register_exitproc+0xb4>)
 8006ada:	4606      	mov	r6, r0
 8006adc:	6828      	ldr	r0, [r5, #0]
 8006ade:	4698      	mov	r8, r3
 8006ae0:	460f      	mov	r7, r1
 8006ae2:	4691      	mov	r9, r2
 8006ae4:	f7fe fe96 	bl	8005814 <__retarget_lock_acquire_recursive>
 8006ae8:	4b28      	ldr	r3, [pc, #160]	; (8006b8c <__register_exitproc+0xb8>)
 8006aea:	681c      	ldr	r4, [r3, #0]
 8006aec:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006af0:	2b00      	cmp	r3, #0
 8006af2:	d03d      	beq.n	8006b70 <__register_exitproc+0x9c>
 8006af4:	685a      	ldr	r2, [r3, #4]
 8006af6:	2a1f      	cmp	r2, #31
 8006af8:	dc0d      	bgt.n	8006b16 <__register_exitproc+0x42>
 8006afa:	f102 0c01 	add.w	ip, r2, #1
 8006afe:	bb16      	cbnz	r6, 8006b46 <__register_exitproc+0x72>
 8006b00:	3202      	adds	r2, #2
 8006b02:	f8c3 c004 	str.w	ip, [r3, #4]
 8006b06:	6828      	ldr	r0, [r5, #0]
 8006b08:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006b0c:	f7fe fe84 	bl	8005818 <__retarget_lock_release_recursive>
 8006b10:	2000      	movs	r0, #0
 8006b12:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006b16:	4b1e      	ldr	r3, [pc, #120]	; (8006b90 <__register_exitproc+0xbc>)
 8006b18:	b37b      	cbz	r3, 8006b7a <__register_exitproc+0xa6>
 8006b1a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006b1e:	f3af 8000 	nop.w
 8006b22:	4603      	mov	r3, r0
 8006b24:	b348      	cbz	r0, 8006b7a <__register_exitproc+0xa6>
 8006b26:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006b2a:	2100      	movs	r1, #0
 8006b2c:	e9c0 2100 	strd	r2, r1, [r0]
 8006b30:	f04f 0c01 	mov.w	ip, #1
 8006b34:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006b38:	460a      	mov	r2, r1
 8006b3a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006b3e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006b42:	2e00      	cmp	r6, #0
 8006b44:	d0dc      	beq.n	8006b00 <__register_exitproc+0x2c>
 8006b46:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006b4a:	2401      	movs	r4, #1
 8006b4c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006b50:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006b54:	4094      	lsls	r4, r2
 8006b56:	4320      	orrs	r0, r4
 8006b58:	2e02      	cmp	r6, #2
 8006b5a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006b5e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006b62:	d1cd      	bne.n	8006b00 <__register_exitproc+0x2c>
 8006b64:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006b68:	430c      	orrs	r4, r1
 8006b6a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006b6e:	e7c7      	b.n	8006b00 <__register_exitproc+0x2c>
 8006b70:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006b74:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006b78:	e7bc      	b.n	8006af4 <__register_exitproc+0x20>
 8006b7a:	6828      	ldr	r0, [r5, #0]
 8006b7c:	f7fe fe4c 	bl	8005818 <__retarget_lock_release_recursive>
 8006b80:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006b84:	e7c5      	b.n	8006b12 <__register_exitproc+0x3e>
 8006b86:	bf00      	nop
 8006b88:	20000498 	.word	0x20000498
 8006b8c:	0800712c 	.word	0x0800712c
 8006b90:	00000000 	.word	0x00000000

08006b94 <_calloc_r>:
 8006b94:	b510      	push	{r4, lr}
 8006b96:	fb02 f101 	mul.w	r1, r2, r1
 8006b9a:	f7fe feb7 	bl	800590c <_malloc_r>
 8006b9e:	4604      	mov	r4, r0
 8006ba0:	b1d8      	cbz	r0, 8006bda <_calloc_r+0x46>
 8006ba2:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006ba6:	f022 0203 	bic.w	r2, r2, #3
 8006baa:	3a04      	subs	r2, #4
 8006bac:	2a24      	cmp	r2, #36	; 0x24
 8006bae:	d81d      	bhi.n	8006bec <_calloc_r+0x58>
 8006bb0:	2a13      	cmp	r2, #19
 8006bb2:	d914      	bls.n	8006bde <_calloc_r+0x4a>
 8006bb4:	2300      	movs	r3, #0
 8006bb6:	2a1b      	cmp	r2, #27
 8006bb8:	e9c0 3300 	strd	r3, r3, [r0]
 8006bbc:	d91b      	bls.n	8006bf6 <_calloc_r+0x62>
 8006bbe:	2a24      	cmp	r2, #36	; 0x24
 8006bc0:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006bc4:	bf0a      	itet	eq
 8006bc6:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006bca:	f100 0210 	addne.w	r2, r0, #16
 8006bce:	f100 0218 	addeq.w	r2, r0, #24
 8006bd2:	2300      	movs	r3, #0
 8006bd4:	e9c2 3300 	strd	r3, r3, [r2]
 8006bd8:	6093      	str	r3, [r2, #8]
 8006bda:	4620      	mov	r0, r4
 8006bdc:	bd10      	pop	{r4, pc}
 8006bde:	4602      	mov	r2, r0
 8006be0:	2300      	movs	r3, #0
 8006be2:	e9c2 3300 	strd	r3, r3, [r2]
 8006be6:	6093      	str	r3, [r2, #8]
 8006be8:	4620      	mov	r0, r4
 8006bea:	bd10      	pop	{r4, pc}
 8006bec:	2100      	movs	r1, #0
 8006bee:	f7fb fb6d 	bl	80022cc <memset>
 8006bf2:	4620      	mov	r0, r4
 8006bf4:	bd10      	pop	{r4, pc}
 8006bf6:	f100 0208 	add.w	r2, r0, #8
 8006bfa:	e7f1      	b.n	8006be0 <_calloc_r+0x4c>

08006bfc <_close_r>:
 8006bfc:	b538      	push	{r3, r4, r5, lr}
 8006bfe:	4c07      	ldr	r4, [pc, #28]	; (8006c1c <_close_r+0x20>)
 8006c00:	2300      	movs	r3, #0
 8006c02:	4605      	mov	r5, r0
 8006c04:	4608      	mov	r0, r1
 8006c06:	6023      	str	r3, [r4, #0]
 8006c08:	f7fb fad7 	bl	80021ba <_close>
 8006c0c:	1c43      	adds	r3, r0, #1
 8006c0e:	d000      	beq.n	8006c12 <_close_r+0x16>
 8006c10:	bd38      	pop	{r3, r4, r5, pc}
 8006c12:	6823      	ldr	r3, [r4, #0]
 8006c14:	2b00      	cmp	r3, #0
 8006c16:	d0fb      	beq.n	8006c10 <_close_r+0x14>
 8006c18:	602b      	str	r3, [r5, #0]
 8006c1a:	bd38      	pop	{r3, r4, r5, pc}
 8006c1c:	20000cec 	.word	0x20000cec

08006c20 <_fclose_r>:
 8006c20:	b570      	push	{r4, r5, r6, lr}
 8006c22:	2900      	cmp	r1, #0
 8006c24:	d048      	beq.n	8006cb8 <_fclose_r+0x98>
 8006c26:	4605      	mov	r5, r0
 8006c28:	460c      	mov	r4, r1
 8006c2a:	b110      	cbz	r0, 8006c32 <_fclose_r+0x12>
 8006c2c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006c2e:	2b00      	cmp	r3, #0
 8006c30:	d048      	beq.n	8006cc4 <_fclose_r+0xa4>
 8006c32:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c34:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c38:	07d0      	lsls	r0, r2, #31
 8006c3a:	d440      	bmi.n	8006cbe <_fclose_r+0x9e>
 8006c3c:	0599      	lsls	r1, r3, #22
 8006c3e:	d530      	bpl.n	8006ca2 <_fclose_r+0x82>
 8006c40:	4621      	mov	r1, r4
 8006c42:	4628      	mov	r0, r5
 8006c44:	f7fe f990 	bl	8004f68 <__sflush_r>
 8006c48:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006c4a:	4606      	mov	r6, r0
 8006c4c:	b133      	cbz	r3, 8006c5c <_fclose_r+0x3c>
 8006c4e:	69e1      	ldr	r1, [r4, #28]
 8006c50:	4628      	mov	r0, r5
 8006c52:	4798      	blx	r3
 8006c54:	2800      	cmp	r0, #0
 8006c56:	bfb8      	it	lt
 8006c58:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006c5c:	89a3      	ldrh	r3, [r4, #12]
 8006c5e:	061a      	lsls	r2, r3, #24
 8006c60:	d43c      	bmi.n	8006cdc <_fclose_r+0xbc>
 8006c62:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006c64:	b141      	cbz	r1, 8006c78 <_fclose_r+0x58>
 8006c66:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006c6a:	4299      	cmp	r1, r3
 8006c6c:	d002      	beq.n	8006c74 <_fclose_r+0x54>
 8006c6e:	4628      	mov	r0, r5
 8006c70:	f7fe fb22 	bl	80052b8 <_free_r>
 8006c74:	2300      	movs	r3, #0
 8006c76:	6323      	str	r3, [r4, #48]	; 0x30
 8006c78:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006c7a:	b121      	cbz	r1, 8006c86 <_fclose_r+0x66>
 8006c7c:	4628      	mov	r0, r5
 8006c7e:	f7fe fb1b 	bl	80052b8 <_free_r>
 8006c82:	2300      	movs	r3, #0
 8006c84:	6463      	str	r3, [r4, #68]	; 0x44
 8006c86:	f7fe faa1 	bl	80051cc <__sfp_lock_acquire>
 8006c8a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006c8c:	2200      	movs	r2, #0
 8006c8e:	07db      	lsls	r3, r3, #31
 8006c90:	81a2      	strh	r2, [r4, #12]
 8006c92:	d51f      	bpl.n	8006cd4 <_fclose_r+0xb4>
 8006c94:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c96:	f7fe fdbb 	bl	8005810 <__retarget_lock_close_recursive>
 8006c9a:	f7fe fa9d 	bl	80051d8 <__sfp_lock_release>
 8006c9e:	4630      	mov	r0, r6
 8006ca0:	bd70      	pop	{r4, r5, r6, pc}
 8006ca2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ca4:	f7fe fdb6 	bl	8005814 <__retarget_lock_acquire_recursive>
 8006ca8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006cac:	2b00      	cmp	r3, #0
 8006cae:	d1c7      	bne.n	8006c40 <_fclose_r+0x20>
 8006cb0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006cb2:	f016 0601 	ands.w	r6, r6, #1
 8006cb6:	d016      	beq.n	8006ce6 <_fclose_r+0xc6>
 8006cb8:	2600      	movs	r6, #0
 8006cba:	4630      	mov	r0, r6
 8006cbc:	bd70      	pop	{r4, r5, r6, pc}
 8006cbe:	2b00      	cmp	r3, #0
 8006cc0:	d0fa      	beq.n	8006cb8 <_fclose_r+0x98>
 8006cc2:	e7bd      	b.n	8006c40 <_fclose_r+0x20>
 8006cc4:	f7fe fa56 	bl	8005174 <__sinit>
 8006cc8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006cca:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006cce:	07d0      	lsls	r0, r2, #31
 8006cd0:	d4f5      	bmi.n	8006cbe <_fclose_r+0x9e>
 8006cd2:	e7b3      	b.n	8006c3c <_fclose_r+0x1c>
 8006cd4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cd6:	f7fe fd9f 	bl	8005818 <__retarget_lock_release_recursive>
 8006cda:	e7db      	b.n	8006c94 <_fclose_r+0x74>
 8006cdc:	6921      	ldr	r1, [r4, #16]
 8006cde:	4628      	mov	r0, r5
 8006ce0:	f7fe faea 	bl	80052b8 <_free_r>
 8006ce4:	e7bd      	b.n	8006c62 <_fclose_r+0x42>
 8006ce6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ce8:	f7fe fd96 	bl	8005818 <__retarget_lock_release_recursive>
 8006cec:	4630      	mov	r0, r6
 8006cee:	bd70      	pop	{r4, r5, r6, pc}

08006cf0 <__fputwc>:
 8006cf0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006cf4:	b082      	sub	sp, #8
 8006cf6:	4681      	mov	r9, r0
 8006cf8:	4688      	mov	r8, r1
 8006cfa:	4614      	mov	r4, r2
 8006cfc:	f000 f8a0 	bl	8006e40 <__locale_mb_cur_max>
 8006d00:	2801      	cmp	r0, #1
 8006d02:	d103      	bne.n	8006d0c <__fputwc+0x1c>
 8006d04:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006d08:	2bfe      	cmp	r3, #254	; 0xfe
 8006d0a:	d933      	bls.n	8006d74 <__fputwc+0x84>
 8006d0c:	4642      	mov	r2, r8
 8006d0e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006d12:	a901      	add	r1, sp, #4
 8006d14:	4648      	mov	r0, r9
 8006d16:	f000 f93b 	bl	8006f90 <_wcrtomb_r>
 8006d1a:	1c42      	adds	r2, r0, #1
 8006d1c:	4606      	mov	r6, r0
 8006d1e:	d02f      	beq.n	8006d80 <__fputwc+0x90>
 8006d20:	b320      	cbz	r0, 8006d6c <__fputwc+0x7c>
 8006d22:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006d26:	2500      	movs	r5, #0
 8006d28:	f10d 0a04 	add.w	sl, sp, #4
 8006d2c:	e009      	b.n	8006d42 <__fputwc+0x52>
 8006d2e:	6823      	ldr	r3, [r4, #0]
 8006d30:	1c5a      	adds	r2, r3, #1
 8006d32:	6022      	str	r2, [r4, #0]
 8006d34:	f883 c000 	strb.w	ip, [r3]
 8006d38:	3501      	adds	r5, #1
 8006d3a:	42b5      	cmp	r5, r6
 8006d3c:	d216      	bcs.n	8006d6c <__fputwc+0x7c>
 8006d3e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006d42:	68a3      	ldr	r3, [r4, #8]
 8006d44:	3b01      	subs	r3, #1
 8006d46:	2b00      	cmp	r3, #0
 8006d48:	60a3      	str	r3, [r4, #8]
 8006d4a:	daf0      	bge.n	8006d2e <__fputwc+0x3e>
 8006d4c:	69a7      	ldr	r7, [r4, #24]
 8006d4e:	42bb      	cmp	r3, r7
 8006d50:	4661      	mov	r1, ip
 8006d52:	4622      	mov	r2, r4
 8006d54:	4648      	mov	r0, r9
 8006d56:	db02      	blt.n	8006d5e <__fputwc+0x6e>
 8006d58:	f1bc 0f0a 	cmp.w	ip, #10
 8006d5c:	d1e7      	bne.n	8006d2e <__fputwc+0x3e>
 8006d5e:	f000 f8bf 	bl	8006ee0 <__swbuf_r>
 8006d62:	1c43      	adds	r3, r0, #1
 8006d64:	d1e8      	bne.n	8006d38 <__fputwc+0x48>
 8006d66:	b002      	add	sp, #8
 8006d68:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d6c:	4640      	mov	r0, r8
 8006d6e:	b002      	add	sp, #8
 8006d70:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d74:	fa5f fc88 	uxtb.w	ip, r8
 8006d78:	4606      	mov	r6, r0
 8006d7a:	f88d c004 	strb.w	ip, [sp, #4]
 8006d7e:	e7d2      	b.n	8006d26 <__fputwc+0x36>
 8006d80:	89a3      	ldrh	r3, [r4, #12]
 8006d82:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006d86:	81a3      	strh	r3, [r4, #12]
 8006d88:	b002      	add	sp, #8
 8006d8a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d8e:	bf00      	nop

08006d90 <_fputwc_r>:
 8006d90:	b530      	push	{r4, r5, lr}
 8006d92:	4605      	mov	r5, r0
 8006d94:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006d96:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006d9a:	07c0      	lsls	r0, r0, #31
 8006d9c:	4614      	mov	r4, r2
 8006d9e:	b083      	sub	sp, #12
 8006da0:	b29a      	uxth	r2, r3
 8006da2:	d401      	bmi.n	8006da8 <_fputwc_r+0x18>
 8006da4:	0590      	lsls	r0, r2, #22
 8006da6:	d51c      	bpl.n	8006de2 <_fputwc_r+0x52>
 8006da8:	0490      	lsls	r0, r2, #18
 8006daa:	d406      	bmi.n	8006dba <_fputwc_r+0x2a>
 8006dac:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006dae:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006db2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006db6:	81a3      	strh	r3, [r4, #12]
 8006db8:	6662      	str	r2, [r4, #100]	; 0x64
 8006dba:	4628      	mov	r0, r5
 8006dbc:	4622      	mov	r2, r4
 8006dbe:	f7ff ff97 	bl	8006cf0 <__fputwc>
 8006dc2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006dc4:	07da      	lsls	r2, r3, #31
 8006dc6:	4605      	mov	r5, r0
 8006dc8:	d402      	bmi.n	8006dd0 <_fputwc_r+0x40>
 8006dca:	89a3      	ldrh	r3, [r4, #12]
 8006dcc:	059b      	lsls	r3, r3, #22
 8006dce:	d502      	bpl.n	8006dd6 <_fputwc_r+0x46>
 8006dd0:	4628      	mov	r0, r5
 8006dd2:	b003      	add	sp, #12
 8006dd4:	bd30      	pop	{r4, r5, pc}
 8006dd6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006dd8:	f7fe fd1e 	bl	8005818 <__retarget_lock_release_recursive>
 8006ddc:	4628      	mov	r0, r5
 8006dde:	b003      	add	sp, #12
 8006de0:	bd30      	pop	{r4, r5, pc}
 8006de2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006de4:	9101      	str	r1, [sp, #4]
 8006de6:	f7fe fd15 	bl	8005814 <__retarget_lock_acquire_recursive>
 8006dea:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006dee:	9901      	ldr	r1, [sp, #4]
 8006df0:	b29a      	uxth	r2, r3
 8006df2:	e7d9      	b.n	8006da8 <_fputwc_r+0x18>

08006df4 <_fstat_r>:
 8006df4:	b538      	push	{r3, r4, r5, lr}
 8006df6:	460b      	mov	r3, r1
 8006df8:	4c07      	ldr	r4, [pc, #28]	; (8006e18 <_fstat_r+0x24>)
 8006dfa:	4605      	mov	r5, r0
 8006dfc:	4611      	mov	r1, r2
 8006dfe:	4618      	mov	r0, r3
 8006e00:	2300      	movs	r3, #0
 8006e02:	6023      	str	r3, [r4, #0]
 8006e04:	f7fb f9dc 	bl	80021c0 <_fstat>
 8006e08:	1c43      	adds	r3, r0, #1
 8006e0a:	d000      	beq.n	8006e0e <_fstat_r+0x1a>
 8006e0c:	bd38      	pop	{r3, r4, r5, pc}
 8006e0e:	6823      	ldr	r3, [r4, #0]
 8006e10:	2b00      	cmp	r3, #0
 8006e12:	d0fb      	beq.n	8006e0c <_fstat_r+0x18>
 8006e14:	602b      	str	r3, [r5, #0]
 8006e16:	bd38      	pop	{r3, r4, r5, pc}
 8006e18:	20000cec 	.word	0x20000cec

08006e1c <_isatty_r>:
 8006e1c:	b538      	push	{r3, r4, r5, lr}
 8006e1e:	4c07      	ldr	r4, [pc, #28]	; (8006e3c <_isatty_r+0x20>)
 8006e20:	2300      	movs	r3, #0
 8006e22:	4605      	mov	r5, r0
 8006e24:	4608      	mov	r0, r1
 8006e26:	6023      	str	r3, [r4, #0]
 8006e28:	f7fb f9cf 	bl	80021ca <_isatty>
 8006e2c:	1c43      	adds	r3, r0, #1
 8006e2e:	d000      	beq.n	8006e32 <_isatty_r+0x16>
 8006e30:	bd38      	pop	{r3, r4, r5, pc}
 8006e32:	6823      	ldr	r3, [r4, #0]
 8006e34:	2b00      	cmp	r3, #0
 8006e36:	d0fb      	beq.n	8006e30 <_isatty_r+0x14>
 8006e38:	602b      	str	r3, [r5, #0]
 8006e3a:	bd38      	pop	{r3, r4, r5, pc}
 8006e3c:	20000cec 	.word	0x20000cec

08006e40 <__locale_mb_cur_max>:
 8006e40:	4b04      	ldr	r3, [pc, #16]	; (8006e54 <__locale_mb_cur_max+0x14>)
 8006e42:	4a05      	ldr	r2, [pc, #20]	; (8006e58 <__locale_mb_cur_max+0x18>)
 8006e44:	681b      	ldr	r3, [r3, #0]
 8006e46:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006e48:	2b00      	cmp	r3, #0
 8006e4a:	bf08      	it	eq
 8006e4c:	4613      	moveq	r3, r2
 8006e4e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006e52:	4770      	bx	lr
 8006e54:	20000068 	.word	0x20000068
 8006e58:	200008ac 	.word	0x200008ac

08006e5c <_lseek_r>:
 8006e5c:	b570      	push	{r4, r5, r6, lr}
 8006e5e:	460d      	mov	r5, r1
 8006e60:	4c08      	ldr	r4, [pc, #32]	; (8006e84 <_lseek_r+0x28>)
 8006e62:	4611      	mov	r1, r2
 8006e64:	4606      	mov	r6, r0
 8006e66:	461a      	mov	r2, r3
 8006e68:	4628      	mov	r0, r5
 8006e6a:	2300      	movs	r3, #0
 8006e6c:	6023      	str	r3, [r4, #0]
 8006e6e:	f7fb f9ae 	bl	80021ce <_lseek>
 8006e72:	1c43      	adds	r3, r0, #1
 8006e74:	d000      	beq.n	8006e78 <_lseek_r+0x1c>
 8006e76:	bd70      	pop	{r4, r5, r6, pc}
 8006e78:	6823      	ldr	r3, [r4, #0]
 8006e7a:	2b00      	cmp	r3, #0
 8006e7c:	d0fb      	beq.n	8006e76 <_lseek_r+0x1a>
 8006e7e:	6033      	str	r3, [r6, #0]
 8006e80:	bd70      	pop	{r4, r5, r6, pc}
 8006e82:	bf00      	nop
 8006e84:	20000cec 	.word	0x20000cec

08006e88 <__ascii_mbtowc>:
 8006e88:	b082      	sub	sp, #8
 8006e8a:	b149      	cbz	r1, 8006ea0 <__ascii_mbtowc+0x18>
 8006e8c:	b15a      	cbz	r2, 8006ea6 <__ascii_mbtowc+0x1e>
 8006e8e:	b16b      	cbz	r3, 8006eac <__ascii_mbtowc+0x24>
 8006e90:	7813      	ldrb	r3, [r2, #0]
 8006e92:	600b      	str	r3, [r1, #0]
 8006e94:	7812      	ldrb	r2, [r2, #0]
 8006e96:	1c10      	adds	r0, r2, #0
 8006e98:	bf18      	it	ne
 8006e9a:	2001      	movne	r0, #1
 8006e9c:	b002      	add	sp, #8
 8006e9e:	4770      	bx	lr
 8006ea0:	a901      	add	r1, sp, #4
 8006ea2:	2a00      	cmp	r2, #0
 8006ea4:	d1f3      	bne.n	8006e8e <__ascii_mbtowc+0x6>
 8006ea6:	4610      	mov	r0, r2
 8006ea8:	b002      	add	sp, #8
 8006eaa:	4770      	bx	lr
 8006eac:	f06f 0001 	mvn.w	r0, #1
 8006eb0:	e7f4      	b.n	8006e9c <__ascii_mbtowc+0x14>
 8006eb2:	bf00      	nop

08006eb4 <_read_r>:
 8006eb4:	b570      	push	{r4, r5, r6, lr}
 8006eb6:	460d      	mov	r5, r1
 8006eb8:	4c08      	ldr	r4, [pc, #32]	; (8006edc <_read_r+0x28>)
 8006eba:	4611      	mov	r1, r2
 8006ebc:	4606      	mov	r6, r0
 8006ebe:	461a      	mov	r2, r3
 8006ec0:	4628      	mov	r0, r5
 8006ec2:	2300      	movs	r3, #0
 8006ec4:	6023      	str	r3, [r4, #0]
 8006ec6:	f7fb f936 	bl	8002136 <_read>
 8006eca:	1c43      	adds	r3, r0, #1
 8006ecc:	d000      	beq.n	8006ed0 <_read_r+0x1c>
 8006ece:	bd70      	pop	{r4, r5, r6, pc}
 8006ed0:	6823      	ldr	r3, [r4, #0]
 8006ed2:	2b00      	cmp	r3, #0
 8006ed4:	d0fb      	beq.n	8006ece <_read_r+0x1a>
 8006ed6:	6033      	str	r3, [r6, #0]
 8006ed8:	bd70      	pop	{r4, r5, r6, pc}
 8006eda:	bf00      	nop
 8006edc:	20000cec 	.word	0x20000cec

08006ee0 <__swbuf_r>:
 8006ee0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006ee2:	460d      	mov	r5, r1
 8006ee4:	4614      	mov	r4, r2
 8006ee6:	4606      	mov	r6, r0
 8006ee8:	b110      	cbz	r0, 8006ef0 <__swbuf_r+0x10>
 8006eea:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006eec:	2b00      	cmp	r3, #0
 8006eee:	d043      	beq.n	8006f78 <__swbuf_r+0x98>
 8006ef0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006ef4:	69a3      	ldr	r3, [r4, #24]
 8006ef6:	60a3      	str	r3, [r4, #8]
 8006ef8:	b291      	uxth	r1, r2
 8006efa:	0708      	lsls	r0, r1, #28
 8006efc:	d51b      	bpl.n	8006f36 <__swbuf_r+0x56>
 8006efe:	6923      	ldr	r3, [r4, #16]
 8006f00:	b1cb      	cbz	r3, 8006f36 <__swbuf_r+0x56>
 8006f02:	b2ed      	uxtb	r5, r5
 8006f04:	0489      	lsls	r1, r1, #18
 8006f06:	462f      	mov	r7, r5
 8006f08:	d522      	bpl.n	8006f50 <__swbuf_r+0x70>
 8006f0a:	6822      	ldr	r2, [r4, #0]
 8006f0c:	6961      	ldr	r1, [r4, #20]
 8006f0e:	1ad3      	subs	r3, r2, r3
 8006f10:	4299      	cmp	r1, r3
 8006f12:	dd29      	ble.n	8006f68 <__swbuf_r+0x88>
 8006f14:	3301      	adds	r3, #1
 8006f16:	68a1      	ldr	r1, [r4, #8]
 8006f18:	1c50      	adds	r0, r2, #1
 8006f1a:	3901      	subs	r1, #1
 8006f1c:	60a1      	str	r1, [r4, #8]
 8006f1e:	6020      	str	r0, [r4, #0]
 8006f20:	7015      	strb	r5, [r2, #0]
 8006f22:	6962      	ldr	r2, [r4, #20]
 8006f24:	429a      	cmp	r2, r3
 8006f26:	d02a      	beq.n	8006f7e <__swbuf_r+0x9e>
 8006f28:	89a3      	ldrh	r3, [r4, #12]
 8006f2a:	07db      	lsls	r3, r3, #31
 8006f2c:	d501      	bpl.n	8006f32 <__swbuf_r+0x52>
 8006f2e:	2d0a      	cmp	r5, #10
 8006f30:	d025      	beq.n	8006f7e <__swbuf_r+0x9e>
 8006f32:	4638      	mov	r0, r7
 8006f34:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006f36:	4621      	mov	r1, r4
 8006f38:	4630      	mov	r0, r6
 8006f3a:	f7fc fffd 	bl	8003f38 <__swsetup_r>
 8006f3e:	bb20      	cbnz	r0, 8006f8a <__swbuf_r+0xaa>
 8006f40:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f44:	6923      	ldr	r3, [r4, #16]
 8006f46:	b291      	uxth	r1, r2
 8006f48:	b2ed      	uxtb	r5, r5
 8006f4a:	0489      	lsls	r1, r1, #18
 8006f4c:	462f      	mov	r7, r5
 8006f4e:	d4dc      	bmi.n	8006f0a <__swbuf_r+0x2a>
 8006f50:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006f52:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006f56:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006f5a:	81a2      	strh	r2, [r4, #12]
 8006f5c:	6822      	ldr	r2, [r4, #0]
 8006f5e:	6661      	str	r1, [r4, #100]	; 0x64
 8006f60:	6961      	ldr	r1, [r4, #20]
 8006f62:	1ad3      	subs	r3, r2, r3
 8006f64:	4299      	cmp	r1, r3
 8006f66:	dcd5      	bgt.n	8006f14 <__swbuf_r+0x34>
 8006f68:	4621      	mov	r1, r4
 8006f6a:	4630      	mov	r0, r6
 8006f6c:	f7fe f8a6 	bl	80050bc <_fflush_r>
 8006f70:	b958      	cbnz	r0, 8006f8a <__swbuf_r+0xaa>
 8006f72:	6822      	ldr	r2, [r4, #0]
 8006f74:	2301      	movs	r3, #1
 8006f76:	e7ce      	b.n	8006f16 <__swbuf_r+0x36>
 8006f78:	f7fe f8fc 	bl	8005174 <__sinit>
 8006f7c:	e7b8      	b.n	8006ef0 <__swbuf_r+0x10>
 8006f7e:	4621      	mov	r1, r4
 8006f80:	4630      	mov	r0, r6
 8006f82:	f7fe f89b 	bl	80050bc <_fflush_r>
 8006f86:	2800      	cmp	r0, #0
 8006f88:	d0d3      	beq.n	8006f32 <__swbuf_r+0x52>
 8006f8a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006f8e:	e7d0      	b.n	8006f32 <__swbuf_r+0x52>

08006f90 <_wcrtomb_r>:
 8006f90:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006f92:	4c11      	ldr	r4, [pc, #68]	; (8006fd8 <_wcrtomb_r+0x48>)
 8006f94:	6824      	ldr	r4, [r4, #0]
 8006f96:	b085      	sub	sp, #20
 8006f98:	4606      	mov	r6, r0
 8006f9a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006f9c:	461f      	mov	r7, r3
 8006f9e:	b151      	cbz	r1, 8006fb6 <_wcrtomb_r+0x26>
 8006fa0:	4d0e      	ldr	r5, [pc, #56]	; (8006fdc <_wcrtomb_r+0x4c>)
 8006fa2:	2c00      	cmp	r4, #0
 8006fa4:	bf08      	it	eq
 8006fa6:	462c      	moveq	r4, r5
 8006fa8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006fac:	47a0      	blx	r4
 8006fae:	1c43      	adds	r3, r0, #1
 8006fb0:	d00c      	beq.n	8006fcc <_wcrtomb_r+0x3c>
 8006fb2:	b005      	add	sp, #20
 8006fb4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006fb6:	4a09      	ldr	r2, [pc, #36]	; (8006fdc <_wcrtomb_r+0x4c>)
 8006fb8:	2c00      	cmp	r4, #0
 8006fba:	bf08      	it	eq
 8006fbc:	4614      	moveq	r4, r2
 8006fbe:	460a      	mov	r2, r1
 8006fc0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006fc4:	a901      	add	r1, sp, #4
 8006fc6:	47a0      	blx	r4
 8006fc8:	1c43      	adds	r3, r0, #1
 8006fca:	d1f2      	bne.n	8006fb2 <_wcrtomb_r+0x22>
 8006fcc:	2200      	movs	r2, #0
 8006fce:	238a      	movs	r3, #138	; 0x8a
 8006fd0:	603a      	str	r2, [r7, #0]
 8006fd2:	6033      	str	r3, [r6, #0]
 8006fd4:	b005      	add	sp, #20
 8006fd6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006fd8:	20000068 	.word	0x20000068
 8006fdc:	200008ac 	.word	0x200008ac

08006fe0 <__ascii_wctomb>:
 8006fe0:	b121      	cbz	r1, 8006fec <__ascii_wctomb+0xc>
 8006fe2:	2aff      	cmp	r2, #255	; 0xff
 8006fe4:	d804      	bhi.n	8006ff0 <__ascii_wctomb+0x10>
 8006fe6:	700a      	strb	r2, [r1, #0]
 8006fe8:	2001      	movs	r0, #1
 8006fea:	4770      	bx	lr
 8006fec:	4608      	mov	r0, r1
 8006fee:	4770      	bx	lr
 8006ff0:	238a      	movs	r3, #138	; 0x8a
 8006ff2:	6003      	str	r3, [r0, #0]
 8006ff4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006ff8:	4770      	bx	lr
 8006ffa:	bf00      	nop

08006ffc <_init>:
 8006ffc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006ffe:	bf00      	nop
 8007000:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007002:	bc08      	pop	{r3}
 8007004:	469e      	mov	lr, r3
 8007006:	4770      	bx	lr

08007008 <_fini>:
 8007008:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800700a:	bf00      	nop
 800700c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800700e:	bc08      	pop	{r3}
 8007010:	469e      	mov	lr, r3
 8007012:	4770      	bx	lr
 8007014:	0000      	movs	r0, r0
	...
