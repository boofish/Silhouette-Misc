
fasta.elf:     file format elf32-littlearm


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
 80001d8:	20000a60 	.word	0x20000a60
 80001dc:	00000000 	.word	0x00000000
 80001e0:	0800703c 	.word	0x0800703c

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	20000a64 	.word	0x20000a64
 80001fc:	0800703c 	.word	0x0800703c

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
 8001108:	f640 3038 	movw	r0, #2872	; 0xb38
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 3038 	movw	r0, #2872	; 0xb38
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
 80013e8:	f247 0270 	movw	r2, #28784	; 0x7070
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
 800145a:	f240 00b0 	movw	r0, #176	; 0xb0
 800145e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001462:	f247 0268 	movw	r2, #28776	; 0x7068
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
 8001484:	f240 00b0 	movw	r0, #176	; 0xb0
 8001488:	f241 0108 	movw	r1, #4104	; 0x1008
 800148c:	f247 0268 	movw	r2, #28776	; 0x7068
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
 8001842:	f640 313c 	movw	r1, #2876	; 0xb3c
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
 800188c:	f640 303c 	movw	r0, #2876	; 0xb3c
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 303c 	movw	r0, #2876	; 0xb3c
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
 80019d4:	f247 03a0 	movw	r3, #28832	; 0x70a0
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
 80019fc:	f247 03b0 	movw	r3, #28848	; 0x70b0
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

08001eb6 <verify_benchmark>:
 8001eb6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001eba:	4770      	bx	lr

08001ebc <initialise_benchmark>:
 8001ebc:	4770      	bx	lr
	...

08001ec0 <benchmark>:
 8001ec0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001ec2:	af03      	add	r7, sp, #12
 8001ec4:	e92d 0700 	stmdb	sp!, {r8, r9, sl}
 8001ec8:	f240 0814 	movw	r8, #20
 8001ecc:	ed9f 0a75 	vldr	s0, [pc, #468]	; 80020a4 <benchmark+0x1e4>
 8001ed0:	f240 008c 	movw	r0, #140	; 0x8c
 8001ed4:	f240 0cac 	movw	ip, #172	; 0xac
 8001ed8:	f245 6281 	movw	r2, #22145	; 0x5681
 8001edc:	f640 3eb8 	movw	lr, #3000	; 0xbb8
 8001ee0:	f247 3985 	movw	r9, #29573	; 0x7385
 8001ee4:	f640 7a25 	movw	sl, #3877	; 0xf25
 8001ee8:	f640 058b 	movw	r5, #2187	; 0x88b
 8001eec:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8001ef0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ef4:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8001ef8:	f6c1 52f7 	movt	r2, #7671	; 0x1df7
 8001efc:	ed98 1a00 	vldr	s2, [r8]
 8001f00:	f8dc 3000 	ldr.w	r3, [ip]
 8001f04:	ee31 1a00 	vadd.f32	s2, s2, s0
 8001f08:	ed88 1a00 	vstr	s2, [r8]
 8001f0c:	ed98 2a02 	vldr	s4, [r8, #8]
 8001f10:	ee31 1a02 	vadd.f32	s2, s2, s4
 8001f14:	ed88 1a02 	vstr	s2, [r8, #8]
 8001f18:	ed98 2a04 	vldr	s4, [r8, #16]
 8001f1c:	ee31 1a02 	vadd.f32	s2, s2, s4
 8001f20:	ed88 1a04 	vstr	s2, [r8, #16]
 8001f24:	ed98 2a06 	vldr	s4, [r8, #24]
 8001f28:	ee31 1a02 	vadd.f32	s2, s2, s4
 8001f2c:	ed88 1a06 	vstr	s2, [r8, #24]
 8001f30:	ed98 2a08 	vldr	s4, [r8, #32]
 8001f34:	ee31 1a02 	vadd.f32	s2, s2, s4
 8001f38:	ed88 1a08 	vstr	s2, [r8, #32]
 8001f3c:	ed98 2a0a 	vldr	s4, [r8, #40]	; 0x28
 8001f40:	ee31 1a02 	vadd.f32	s2, s2, s4
 8001f44:	ed88 1a0a 	vstr	s2, [r8, #40]	; 0x28
 8001f48:	ed98 2a0c 	vldr	s4, [r8, #48]	; 0x30
 8001f4c:	ee31 1a02 	vadd.f32	s2, s2, s4
 8001f50:	ed88 1a0c 	vstr	s2, [r8, #48]	; 0x30
 8001f54:	ed98 2a0e 	vldr	s4, [r8, #56]	; 0x38
 8001f58:	ee31 1a02 	vadd.f32	s2, s2, s4
 8001f5c:	ed88 1a0e 	vstr	s2, [r8, #56]	; 0x38
 8001f60:	ed98 2a10 	vldr	s4, [r8, #64]	; 0x40
 8001f64:	ee31 1a02 	vadd.f32	s2, s2, s4
 8001f68:	ed88 1a10 	vstr	s2, [r8, #64]	; 0x40
 8001f6c:	ed98 2a12 	vldr	s4, [r8, #72]	; 0x48
 8001f70:	ee31 1a02 	vadd.f32	s2, s2, s4
 8001f74:	ed88 1a12 	vstr	s2, [r8, #72]	; 0x48
 8001f78:	ed98 2a14 	vldr	s4, [r8, #80]	; 0x50
 8001f7c:	ee31 1a02 	vadd.f32	s2, s2, s4
 8001f80:	ed88 1a14 	vstr	s2, [r8, #80]	; 0x50
 8001f84:	ed98 2a16 	vldr	s4, [r8, #88]	; 0x58
 8001f88:	ee31 1a02 	vadd.f32	s2, s2, s4
 8001f8c:	ed88 1a16 	vstr	s2, [r8, #88]	; 0x58
 8001f90:	ed98 2a18 	vldr	s4, [r8, #96]	; 0x60
 8001f94:	ee31 1a02 	vadd.f32	s2, s2, s4
 8001f98:	ed88 1a18 	vstr	s2, [r8, #96]	; 0x60
 8001f9c:	ed98 2a1a 	vldr	s4, [r8, #104]	; 0x68
 8001fa0:	ee31 1a02 	vadd.f32	s2, s2, s4
 8001fa4:	ed88 1a1a 	vstr	s2, [r8, #104]	; 0x68
 8001fa8:	ed98 2a1c 	vldr	s4, [r8, #112]	; 0x70
 8001fac:	ee31 1a02 	vadd.f32	s2, s2, s4
 8001fb0:	ed88 1a1c 	vstr	s2, [r8, #112]	; 0x70
 8001fb4:	ed90 1a00 	vldr	s2, [r0]
 8001fb8:	ee31 0a00 	vadd.f32	s0, s2, s0
 8001fbc:	ed80 0a00 	vstr	s0, [r0]
 8001fc0:	ed90 1a02 	vldr	s2, [r0, #8]
 8001fc4:	ee30 0a01 	vadd.f32	s0, s0, s2
 8001fc8:	ed80 0a02 	vstr	s0, [r0, #8]
 8001fcc:	ed90 1a04 	vldr	s2, [r0, #16]
 8001fd0:	ee30 0a01 	vadd.f32	s0, s0, s2
 8001fd4:	ed80 0a04 	vstr	s0, [r0, #16]
 8001fd8:	ed90 1a06 	vldr	s2, [r0, #24]
 8001fdc:	ee30 0a01 	vadd.f32	s0, s0, s2
 8001fe0:	ed80 0a06 	vstr	s0, [r0, #24]
 8001fe4:	ed9f 0a30 	vldr	s0, [pc, #192]	; 80020a8 <benchmark+0x1e8>
 8001fe8:	f1be 0f3c 	cmp.w	lr, #60	; 0x3c
 8001fec:	4676      	mov	r6, lr
 8001fee:	f04f 0100 	mov.w	r1, #0
 8001ff2:	bf28      	it	cs
 8001ff4:	263c      	movcs	r6, #60	; 0x3c
 8001ff6:	fb03 900a 	mla	r0, r3, sl, r9
 8001ffa:	fba0 3402 	umull	r3, r4, r0, r2
 8001ffe:	0ba3      	lsrs	r3, r4, #14
 8002000:	436b      	muls	r3, r5
 8002002:	eba0 1383 	sub.w	r3, r0, r3, lsl #6
 8002006:	4640      	mov	r0, r8
 8002008:	ee01 3a10 	vmov	s2, r3
 800200c:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
 8002010:	ee81 1a00 	vdiv.f32	s2, s2, s0
 8002014:	ed90 2a00 	vldr	s4, [r0]
 8002018:	3008      	adds	r0, #8
 800201a:	eeb4 2ac1 	vcmpe.f32	s4, s2
 800201e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002022:	d4f7      	bmi.n	8002014 <benchmark+0x154>
 8002024:	3101      	adds	r1, #1
 8002026:	42b1      	cmp	r1, r6
 8002028:	d3e5      	bcc.n	8001ff6 <benchmark+0x136>
 800202a:	ebbe 0e06 	subs.w	lr, lr, r6
 800202e:	d1db      	bne.n	8001fe8 <benchmark+0x128>
 8002030:	f240 048c 	movw	r4, #140	; 0x8c
 8002034:	f241 3e88 	movw	lr, #5000	; 0x1388
 8002038:	f247 3885 	movw	r8, #29573	; 0x7385
 800203c:	f640 7925 	movw	r9, #3877	; 0xf25
 8002040:	f640 0a8b 	movw	sl, #2187	; 0x88b
 8002044:	f8cc 3000 	str.w	r3, [ip]
 8002048:	f2c2 0400 	movt	r4, #8192	; 0x2000
 800204c:	f1be 0f3c 	cmp.w	lr, #60	; 0x3c
 8002050:	4676      	mov	r6, lr
 8002052:	f04f 0100 	mov.w	r1, #0
 8002056:	bf28      	it	cs
 8002058:	263c      	movcs	r6, #60	; 0x3c
 800205a:	fb03 8009 	mla	r0, r3, r9, r8
 800205e:	fba0 3502 	umull	r3, r5, r0, r2
 8002062:	0bab      	lsrs	r3, r5, #14
 8002064:	fb03 f30a 	mul.w	r3, r3, sl
 8002068:	eba0 1383 	sub.w	r3, r0, r3, lsl #6
 800206c:	4620      	mov	r0, r4
 800206e:	ee01 3a10 	vmov	s2, r3
 8002072:	eeb8 1ac1 	vcvt.f32.s32	s2, s2
 8002076:	ee81 1a00 	vdiv.f32	s2, s2, s0
 800207a:	ed90 2a00 	vldr	s4, [r0]
 800207e:	3008      	adds	r0, #8
 8002080:	eeb4 2ac1 	vcmpe.f32	s4, s2
 8002084:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002088:	d4f7      	bmi.n	800207a <benchmark+0x1ba>
 800208a:	3101      	adds	r1, #1
 800208c:	42b1      	cmp	r1, r6
 800208e:	d3e4      	bcc.n	800205a <benchmark+0x19a>
 8002090:	ebbe 0e06 	subs.w	lr, lr, r6
 8002094:	d1da      	bne.n	800204c <benchmark+0x18c>
 8002096:	f8cc 3000 	str.w	r3, [ip]
 800209a:	2000      	movs	r0, #0
 800209c:	e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
 80020a0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80020a2:	bf00      	nop
 80020a4:	00000000 	.word	0x00000000
 80020a8:	4808b000 	.word	0x4808b000

080020ac <__io_putchar>:
 80020ac:	b580      	push	{r7, lr}
 80020ae:	466f      	mov	r7, sp
 80020b0:	b082      	sub	sp, #8
 80020b2:	9001      	str	r0, [sp, #4]
 80020b4:	f640 207c 	movw	r0, #2684	; 0xa7c
 80020b8:	a901      	add	r1, sp, #4
 80020ba:	2201      	movs	r2, #1
 80020bc:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80020c0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020c4:	f7ff fe09 	bl	8001cda <HAL_UART_Transmit>
 80020c8:	9801      	ldr	r0, [sp, #4]
 80020ca:	b002      	add	sp, #8
 80020cc:	bd80      	pop	{r7, pc}

080020ce <main>:
 80020ce:	b5b0      	push	{r4, r5, r7, lr}
 80020d0:	af02      	add	r7, sp, #8
 80020d2:	f640 217c 	movw	r1, #2684	; 0xa7c
 80020d6:	f643 0000 	movw	r0, #14336	; 0x3800
 80020da:	220c      	movs	r2, #12
 80020dc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80020e0:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80020e4:	6008      	str	r0, [r1, #0]
 80020e6:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80020ea:	6048      	str	r0, [r1, #4]
 80020ec:	2000      	movs	r0, #0
 80020ee:	e9c1 0002 	strd	r0, r0, [r1, #8]
 80020f2:	6108      	str	r0, [r1, #16]
 80020f4:	6248      	str	r0, [r1, #36]	; 0x24
 80020f6:	e9c1 0007 	strd	r0, r0, [r1, #28]
 80020fa:	e9c1 2005 	strd	r2, r0, [r1, #20]
 80020fe:	2000      	movs	r0, #0
 8002100:	f7ff fe80 	bl	8001e04 <BSP_COM_Init>
 8002104:	f7ff feda 	bl	8001ebc <initialise_benchmark>
 8002108:	f247 00c0 	movw	r0, #28864	; 0x70c0
 800210c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002110:	f000 f948 	bl	80023a4 <printf>
 8002114:	f247 1068 	movw	r0, #29032	; 0x7168
 8002118:	f6c0 0000 	movt	r0, #2048	; 0x800
 800211c:	f000 f9a4 	bl	8002468 <puts>
 8002120:	f7fe ffe2 	bl	80010e8 <HAL_Init>
 8002124:	f7fe fff8 	bl	8001118 <HAL_GetTick>
 8002128:	4604      	mov	r4, r0
 800212a:	f7ff fec9 	bl	8001ec0 <benchmark>
 800212e:	4605      	mov	r5, r0
 8002130:	f7fe fff2 	bl	8001118 <HAL_GetTick>
 8002134:	1b04      	subs	r4, r0, r4
 8002136:	4628      	mov	r0, r5
 8002138:	f7ff febd 	bl	8001eb6 <verify_benchmark>
 800213c:	1c41      	adds	r1, r0, #1
 800213e:	d006      	beq.n	800214e <main+0x80>
 8002140:	2801      	cmp	r0, #1
 8002142:	d109      	bne.n	8002158 <main+0x8a>
 8002144:	f247 00d4 	movw	r0, #28884	; 0x70d4
 8002148:	f6c0 0000 	movt	r0, #2048	; 0x800
 800214c:	e008      	b.n	8002160 <main+0x92>
 800214e:	f247 00f8 	movw	r0, #28920	; 0x70f8
 8002152:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002156:	e003      	b.n	8002160 <main+0x92>
 8002158:	f247 102d 	movw	r0, #28973	; 0x712d
 800215c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002160:	4621      	mov	r1, r4
 8002162:	f000 f91f 	bl	80023a4 <printf>
 8002166:	2000      	movs	r0, #0
 8002168:	bdb0      	pop	{r4, r5, r7, pc}

0800216a <SysTick_Handler>:
 800216a:	b580      	push	{r7, lr}
 800216c:	466f      	mov	r7, sp
 800216e:	f7fe ffcb 	bl	8001108 <HAL_IncTick>
 8002172:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002176:	f7ff b825 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

0800217a <_read>:
 800217a:	b5f0      	push	{r4, r5, r6, r7, lr}
 800217c:	af03      	add	r7, sp, #12
 800217e:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002182:	4614      	mov	r4, r2
 8002184:	460d      	mov	r5, r1
 8002186:	2c01      	cmp	r4, #1
 8002188:	db06      	blt.n	8002198 <_read+0x1e>
 800218a:	4626      	mov	r6, r4
 800218c:	f3af 8000 	nop.w
 8002190:	f805 0b01 	strb.w	r0, [r5], #1
 8002194:	3e01      	subs	r6, #1
 8002196:	d1f9      	bne.n	800218c <_read+0x12>
 8002198:	4620      	mov	r0, r4
 800219a:	f85d bb04 	ldr.w	fp, [sp], #4
 800219e:	bdf0      	pop	{r4, r5, r6, r7, pc}

080021a0 <_write>:
 80021a0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80021a2:	af03      	add	r7, sp, #12
 80021a4:	f84d bd04 	str.w	fp, [sp, #-4]!
 80021a8:	4614      	mov	r4, r2
 80021aa:	460d      	mov	r5, r1
 80021ac:	2c01      	cmp	r4, #1
 80021ae:	db06      	blt.n	80021be <_write+0x1e>
 80021b0:	4626      	mov	r6, r4
 80021b2:	f815 0b01 	ldrb.w	r0, [r5], #1
 80021b6:	f7ff ff79 	bl	80020ac <__io_putchar>
 80021ba:	3e01      	subs	r6, #1
 80021bc:	d1f9      	bne.n	80021b2 <_write+0x12>
 80021be:	4620      	mov	r0, r4
 80021c0:	f85d bb04 	ldr.w	fp, [sp], #4
 80021c4:	bdf0      	pop	{r4, r5, r6, r7, pc}

080021c6 <_sbrk>:
 80021c6:	f640 3200 	movw	r2, #2816	; 0xb00
 80021ca:	4601      	mov	r1, r0
 80021cc:	466b      	mov	r3, sp
 80021ce:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80021d2:	6810      	ldr	r0, [r2, #0]
 80021d4:	2800      	cmp	r0, #0
 80021d6:	bf02      	ittt	eq
 80021d8:	f640 30a8 	movweq	r0, #2984	; 0xba8
 80021dc:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80021e0:	6010      	streq	r0, [r2, #0]
 80021e2:	4401      	add	r1, r0
 80021e4:	4299      	cmp	r1, r3
 80021e6:	bf9c      	itt	ls
 80021e8:	6011      	strls	r1, [r2, #0]
 80021ea:	4770      	bxls	lr
 80021ec:	b580      	push	{r7, lr}
 80021ee:	466f      	mov	r7, sp
 80021f0:	f000 f864 	bl	80022bc <__errno>
 80021f4:	210c      	movs	r1, #12
 80021f6:	6001      	str	r1, [r0, #0]
 80021f8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80021fc:	bd80      	pop	{r7, pc}

080021fe <_close>:
 80021fe:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002202:	4770      	bx	lr

08002204 <_fstat>:
 8002204:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002208:	6048      	str	r0, [r1, #4]
 800220a:	2000      	movs	r0, #0
 800220c:	4770      	bx	lr

0800220e <_isatty>:
 800220e:	2001      	movs	r0, #1
 8002210:	4770      	bx	lr

08002212 <_lseek>:
 8002212:	2000      	movs	r0, #0
 8002214:	4770      	bx	lr

08002216 <SystemInit>:
 8002216:	f64e 5088 	movw	r0, #60808	; 0xed88
 800221a:	f04f 0c00 	mov.w	ip, #0
 800221e:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002222:	6801      	ldr	r1, [r0, #0]
 8002224:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002228:	6001      	str	r1, [r0, #0]
 800222a:	f241 0100 	movw	r1, #4096	; 0x1000
 800222e:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002232:	680a      	ldr	r2, [r1, #0]
 8002234:	f042 0201 	orr.w	r2, r2, #1
 8002238:	600a      	str	r2, [r1, #0]
 800223a:	f8c1 c008 	str.w	ip, [r1, #8]
 800223e:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002242:	680b      	ldr	r3, [r1, #0]
 8002244:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002248:	401a      	ands	r2, r3
 800224a:	600a      	str	r2, [r1, #0]
 800224c:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002250:	60ca      	str	r2, [r1, #12]
 8002252:	680a      	ldr	r2, [r1, #0]
 8002254:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002258:	600a      	str	r2, [r1, #0]
 800225a:	f8c1 c018 	str.w	ip, [r1, #24]
 800225e:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002262:	f840 1c80 	str.w	r1, [r0, #-128]
 8002266:	4770      	bx	lr

08002268 <Reset_Handler>:
 8002268:	f8df d034 	ldr.w	sp, [pc, #52]	; 80022a0 <LoopForever+0x2>
 800226c:	2100      	movs	r1, #0
 800226e:	e003      	b.n	8002278 <LoopCopyDataInit>

08002270 <CopyDataInit>:
 8002270:	4b0c      	ldr	r3, [pc, #48]	; (80022a4 <LoopForever+0x6>)
 8002272:	585b      	ldr	r3, [r3, r1]
 8002274:	5043      	str	r3, [r0, r1]
 8002276:	3104      	adds	r1, #4

08002278 <LoopCopyDataInit>:
 8002278:	480b      	ldr	r0, [pc, #44]	; (80022a8 <LoopForever+0xa>)
 800227a:	4b0c      	ldr	r3, [pc, #48]	; (80022ac <LoopForever+0xe>)
 800227c:	1842      	adds	r2, r0, r1
 800227e:	429a      	cmp	r2, r3
 8002280:	d3f6      	bcc.n	8002270 <CopyDataInit>
 8002282:	4a0b      	ldr	r2, [pc, #44]	; (80022b0 <LoopForever+0x12>)
 8002284:	e002      	b.n	800228c <LoopFillZerobss>

08002286 <FillZerobss>:
 8002286:	2300      	movs	r3, #0
 8002288:	f842 3b04 	str.w	r3, [r2], #4

0800228c <LoopFillZerobss>:
 800228c:	4b09      	ldr	r3, [pc, #36]	; (80022b4 <LoopForever+0x16>)
 800228e:	429a      	cmp	r2, r3
 8002290:	d3f9      	bcc.n	8002286 <FillZerobss>
 8002292:	f7ff ffc0 	bl	8002216 <SystemInit>
 8002296:	f000 f817 	bl	80022c8 <__libc_init_array>
 800229a:	f7ff ff18 	bl	80020ce <main>

0800229e <LoopForever>:
 800229e:	e7fe      	b.n	800229e <LoopForever>
 80022a0:	20018000 	.word	0x20018000
 80022a4:	08007410 	.word	0x08007410
 80022a8:	20000000 	.word	0x20000000
 80022ac:	20000a60 	.word	0x20000a60
 80022b0:	20000a60 	.word	0x20000a60
 80022b4:	20000ba8 	.word	0x20000ba8

080022b8 <ADC1_2_IRQHandler>:
 80022b8:	e7fe      	b.n	80022b8 <ADC1_2_IRQHandler>
	...

080022bc <__errno>:
 80022bc:	4b01      	ldr	r3, [pc, #4]	; (80022c4 <__errno+0x8>)
 80022be:	6818      	ldr	r0, [r3, #0]
 80022c0:	4770      	bx	lr
 80022c2:	bf00      	nop
 80022c4:	200000b4 	.word	0x200000b4

080022c8 <__libc_init_array>:
 80022c8:	b570      	push	{r4, r5, r6, lr}
 80022ca:	4e0d      	ldr	r6, [pc, #52]	; (8002300 <__libc_init_array+0x38>)
 80022cc:	4d0d      	ldr	r5, [pc, #52]	; (8002304 <__libc_init_array+0x3c>)
 80022ce:	1b76      	subs	r6, r6, r5
 80022d0:	10b6      	asrs	r6, r6, #2
 80022d2:	d006      	beq.n	80022e2 <__libc_init_array+0x1a>
 80022d4:	2400      	movs	r4, #0
 80022d6:	3401      	adds	r4, #1
 80022d8:	f855 3b04 	ldr.w	r3, [r5], #4
 80022dc:	4798      	blx	r3
 80022de:	42a6      	cmp	r6, r4
 80022e0:	d1f9      	bne.n	80022d6 <__libc_init_array+0xe>
 80022e2:	4e09      	ldr	r6, [pc, #36]	; (8002308 <__libc_init_array+0x40>)
 80022e4:	4d09      	ldr	r5, [pc, #36]	; (800230c <__libc_init_array+0x44>)
 80022e6:	1b76      	subs	r6, r6, r5
 80022e8:	f004 fea8 	bl	800703c <_init>
 80022ec:	10b6      	asrs	r6, r6, #2
 80022ee:	d006      	beq.n	80022fe <__libc_init_array+0x36>
 80022f0:	2400      	movs	r4, #0
 80022f2:	3401      	adds	r4, #1
 80022f4:	f855 3b04 	ldr.w	r3, [r5], #4
 80022f8:	4798      	blx	r3
 80022fa:	42a6      	cmp	r6, r4
 80022fc:	d1f9      	bne.n	80022f2 <__libc_init_array+0x2a>
 80022fe:	bd70      	pop	{r4, r5, r6, pc}
 8002300:	08007400 	.word	0x08007400
 8002304:	08007400 	.word	0x08007400
 8002308:	08007408 	.word	0x08007408
 800230c:	08007400 	.word	0x08007400

08002310 <memset>:
 8002310:	b4f0      	push	{r4, r5, r6, r7}
 8002312:	0786      	lsls	r6, r0, #30
 8002314:	d043      	beq.n	800239e <memset+0x8e>
 8002316:	1e54      	subs	r4, r2, #1
 8002318:	2a00      	cmp	r2, #0
 800231a:	d03e      	beq.n	800239a <memset+0x8a>
 800231c:	b2ca      	uxtb	r2, r1
 800231e:	4603      	mov	r3, r0
 8002320:	e002      	b.n	8002328 <memset+0x18>
 8002322:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002326:	d338      	bcc.n	800239a <memset+0x8a>
 8002328:	f803 2b01 	strb.w	r2, [r3], #1
 800232c:	079d      	lsls	r5, r3, #30
 800232e:	d1f8      	bne.n	8002322 <memset+0x12>
 8002330:	2c03      	cmp	r4, #3
 8002332:	d92b      	bls.n	800238c <memset+0x7c>
 8002334:	b2cd      	uxtb	r5, r1
 8002336:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800233a:	2c0f      	cmp	r4, #15
 800233c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002340:	d916      	bls.n	8002370 <memset+0x60>
 8002342:	f1a4 0710 	sub.w	r7, r4, #16
 8002346:	093f      	lsrs	r7, r7, #4
 8002348:	f103 0620 	add.w	r6, r3, #32
 800234c:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002350:	f103 0210 	add.w	r2, r3, #16
 8002354:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002358:	e942 5502 	strd	r5, r5, [r2, #-8]
 800235c:	3210      	adds	r2, #16
 800235e:	42b2      	cmp	r2, r6
 8002360:	d1f8      	bne.n	8002354 <memset+0x44>
 8002362:	f004 040f 	and.w	r4, r4, #15
 8002366:	3701      	adds	r7, #1
 8002368:	2c03      	cmp	r4, #3
 800236a:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800236e:	d90d      	bls.n	800238c <memset+0x7c>
 8002370:	461e      	mov	r6, r3
 8002372:	4622      	mov	r2, r4
 8002374:	3a04      	subs	r2, #4
 8002376:	2a03      	cmp	r2, #3
 8002378:	f846 5b04 	str.w	r5, [r6], #4
 800237c:	d8fa      	bhi.n	8002374 <memset+0x64>
 800237e:	1f22      	subs	r2, r4, #4
 8002380:	f022 0203 	bic.w	r2, r2, #3
 8002384:	3204      	adds	r2, #4
 8002386:	4413      	add	r3, r2
 8002388:	f004 0403 	and.w	r4, r4, #3
 800238c:	b12c      	cbz	r4, 800239a <memset+0x8a>
 800238e:	b2c9      	uxtb	r1, r1
 8002390:	441c      	add	r4, r3
 8002392:	f803 1b01 	strb.w	r1, [r3], #1
 8002396:	429c      	cmp	r4, r3
 8002398:	d1fb      	bne.n	8002392 <memset+0x82>
 800239a:	bcf0      	pop	{r4, r5, r6, r7}
 800239c:	4770      	bx	lr
 800239e:	4614      	mov	r4, r2
 80023a0:	4603      	mov	r3, r0
 80023a2:	e7c5      	b.n	8002330 <memset+0x20>

080023a4 <printf>:
 80023a4:	b40f      	push	{r0, r1, r2, r3}
 80023a6:	b500      	push	{lr}
 80023a8:	4907      	ldr	r1, [pc, #28]	; (80023c8 <printf+0x24>)
 80023aa:	b083      	sub	sp, #12
 80023ac:	ab04      	add	r3, sp, #16
 80023ae:	6808      	ldr	r0, [r1, #0]
 80023b0:	f853 2b04 	ldr.w	r2, [r3], #4
 80023b4:	6881      	ldr	r1, [r0, #8]
 80023b6:	9301      	str	r3, [sp, #4]
 80023b8:	f000 f85e 	bl	8002478 <_vfprintf_r>
 80023bc:	b003      	add	sp, #12
 80023be:	f85d eb04 	ldr.w	lr, [sp], #4
 80023c2:	b004      	add	sp, #16
 80023c4:	4770      	bx	lr
 80023c6:	bf00      	nop
 80023c8:	200000b4 	.word	0x200000b4

080023cc <_puts_r>:
 80023cc:	b570      	push	{r4, r5, r6, lr}
 80023ce:	4605      	mov	r5, r0
 80023d0:	b088      	sub	sp, #32
 80023d2:	4608      	mov	r0, r1
 80023d4:	460c      	mov	r4, r1
 80023d6:	f7fe f933 	bl	8000640 <strlen>
 80023da:	4a22      	ldr	r2, [pc, #136]	; (8002464 <_puts_r+0x98>)
 80023dc:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80023de:	9404      	str	r4, [sp, #16]
 80023e0:	2601      	movs	r6, #1
 80023e2:	1c44      	adds	r4, r0, #1
 80023e4:	a904      	add	r1, sp, #16
 80023e6:	9206      	str	r2, [sp, #24]
 80023e8:	2202      	movs	r2, #2
 80023ea:	9403      	str	r4, [sp, #12]
 80023ec:	9005      	str	r0, [sp, #20]
 80023ee:	68ac      	ldr	r4, [r5, #8]
 80023f0:	9607      	str	r6, [sp, #28]
 80023f2:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80023f6:	b31b      	cbz	r3, 8002440 <_puts_r+0x74>
 80023f8:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80023fa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80023fe:	07ce      	lsls	r6, r1, #31
 8002400:	b29a      	uxth	r2, r3
 8002402:	d401      	bmi.n	8002408 <_puts_r+0x3c>
 8002404:	0590      	lsls	r0, r2, #22
 8002406:	d525      	bpl.n	8002454 <_puts_r+0x88>
 8002408:	0491      	lsls	r1, r2, #18
 800240a:	d406      	bmi.n	800241a <_puts_r+0x4e>
 800240c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800240e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002412:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002416:	81a3      	strh	r3, [r4, #12]
 8002418:	6662      	str	r2, [r4, #100]	; 0x64
 800241a:	4628      	mov	r0, r5
 800241c:	aa01      	add	r2, sp, #4
 800241e:	4621      	mov	r1, r4
 8002420:	f003 f85e 	bl	80054e0 <__sfvwrite_r>
 8002424:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002426:	2800      	cmp	r0, #0
 8002428:	bf0c      	ite	eq
 800242a:	250a      	moveq	r5, #10
 800242c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002430:	07da      	lsls	r2, r3, #31
 8002432:	d402      	bmi.n	800243a <_puts_r+0x6e>
 8002434:	89a3      	ldrh	r3, [r4, #12]
 8002436:	059b      	lsls	r3, r3, #22
 8002438:	d506      	bpl.n	8002448 <_puts_r+0x7c>
 800243a:	4628      	mov	r0, r5
 800243c:	b008      	add	sp, #32
 800243e:	bd70      	pop	{r4, r5, r6, pc}
 8002440:	4628      	mov	r0, r5
 8002442:	f002 feb7 	bl	80051b4 <__sinit>
 8002446:	e7d7      	b.n	80023f8 <_puts_r+0x2c>
 8002448:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800244a:	f003 fa05 	bl	8005858 <__retarget_lock_release_recursive>
 800244e:	4628      	mov	r0, r5
 8002450:	b008      	add	sp, #32
 8002452:	bd70      	pop	{r4, r5, r6, pc}
 8002454:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002456:	f003 f9fd 	bl	8005854 <__retarget_lock_acquire_recursive>
 800245a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800245e:	b29a      	uxth	r2, r3
 8002460:	e7d2      	b.n	8002408 <_puts_r+0x3c>
 8002462:	bf00      	nop
 8002464:	08007170 	.word	0x08007170

08002468 <puts>:
 8002468:	4b02      	ldr	r3, [pc, #8]	; (8002474 <puts+0xc>)
 800246a:	4601      	mov	r1, r0
 800246c:	6818      	ldr	r0, [r3, #0]
 800246e:	f7ff bfad 	b.w	80023cc <_puts_r>
 8002472:	bf00      	nop
 8002474:	200000b4 	.word	0x200000b4

08002478 <_vfprintf_r>:
 8002478:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800247c:	b0d7      	sub	sp, #348	; 0x15c
 800247e:	461c      	mov	r4, r3
 8002480:	4689      	mov	r9, r1
 8002482:	4617      	mov	r7, r2
 8002484:	4605      	mov	r5, r0
 8002486:	9003      	str	r0, [sp, #12]
 8002488:	f003 f9d2 	bl	8005830 <_localeconv_r>
 800248c:	6803      	ldr	r3, [r0, #0]
 800248e:	9316      	str	r3, [sp, #88]	; 0x58
 8002490:	4618      	mov	r0, r3
 8002492:	f7fe f8d5 	bl	8000640 <strlen>
 8002496:	9408      	str	r4, [sp, #32]
 8002498:	9015      	str	r0, [sp, #84]	; 0x54
 800249a:	b11d      	cbz	r5, 80024a4 <_vfprintf_r+0x2c>
 800249c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800249e:	2b00      	cmp	r3, #0
 80024a0:	f000 8107 	beq.w	80026b2 <_vfprintf_r+0x23a>
 80024a4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80024a8:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80024ac:	07c8      	lsls	r0, r1, #31
 80024ae:	b293      	uxth	r3, r2
 80024b0:	d402      	bmi.n	80024b8 <_vfprintf_r+0x40>
 80024b2:	0599      	lsls	r1, r3, #22
 80024b4:	f140 811f 	bpl.w	80026f6 <_vfprintf_r+0x27e>
 80024b8:	049e      	lsls	r6, r3, #18
 80024ba:	d40a      	bmi.n	80024d2 <_vfprintf_r+0x5a>
 80024bc:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80024c0:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 80024c4:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80024c8:	f8a9 300c 	strh.w	r3, [r9, #12]
 80024cc:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80024d0:	b29b      	uxth	r3, r3
 80024d2:	071d      	lsls	r5, r3, #28
 80024d4:	f140 80b2 	bpl.w	800263c <_vfprintf_r+0x1c4>
 80024d8:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80024dc:	2a00      	cmp	r2, #0
 80024de:	f000 80ad 	beq.w	800263c <_vfprintf_r+0x1c4>
 80024e2:	f003 021a 	and.w	r2, r3, #26
 80024e6:	2a0a      	cmp	r2, #10
 80024e8:	f000 80c9 	beq.w	800267e <_vfprintf_r+0x206>
 80024ec:	2300      	movs	r3, #0
 80024ee:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002708 <_vfprintf_r+0x290>
 80024f2:	9310      	str	r3, [sp, #64]	; 0x40
 80024f4:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80024f8:	9317      	str	r3, [sp, #92]	; 0x5c
 80024fa:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80024fe:	931b      	str	r3, [sp, #108]	; 0x6c
 8002500:	9318      	str	r3, [sp, #96]	; 0x60
 8002502:	9305      	str	r3, [sp, #20]
 8002504:	ab2d      	add	r3, sp, #180	; 0xb4
 8002506:	932a      	str	r3, [sp, #168]	; 0xa8
 8002508:	469b      	mov	fp, r3
 800250a:	783b      	ldrb	r3, [r7, #0]
 800250c:	f8cd 901c 	str.w	r9, [sp, #28]
 8002510:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002514:	2b00      	cmp	r3, #0
 8002516:	f000 8259 	beq.w	80029cc <_vfprintf_r+0x554>
 800251a:	2b25      	cmp	r3, #37	; 0x25
 800251c:	463c      	mov	r4, r7
 800251e:	d102      	bne.n	8002526 <_vfprintf_r+0xae>
 8002520:	e01d      	b.n	800255e <_vfprintf_r+0xe6>
 8002522:	2b25      	cmp	r3, #37	; 0x25
 8002524:	d003      	beq.n	800252e <_vfprintf_r+0xb6>
 8002526:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 800252a:	2b00      	cmp	r3, #0
 800252c:	d1f9      	bne.n	8002522 <_vfprintf_r+0xaa>
 800252e:	1be5      	subs	r5, r4, r7
 8002530:	b18d      	cbz	r5, 8002556 <_vfprintf_r+0xde>
 8002532:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002536:	3301      	adds	r3, #1
 8002538:	442a      	add	r2, r5
 800253a:	2b07      	cmp	r3, #7
 800253c:	f8cb 7000 	str.w	r7, [fp]
 8002540:	f8cb 5004 	str.w	r5, [fp, #4]
 8002544:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002548:	f300 80ca 	bgt.w	80026e0 <_vfprintf_r+0x268>
 800254c:	f10b 0b08 	add.w	fp, fp, #8
 8002550:	9b05      	ldr	r3, [sp, #20]
 8002552:	442b      	add	r3, r5
 8002554:	9305      	str	r3, [sp, #20]
 8002556:	7823      	ldrb	r3, [r4, #0]
 8002558:	2b00      	cmp	r3, #0
 800255a:	f000 8237 	beq.w	80029cc <_vfprintf_r+0x554>
 800255e:	2300      	movs	r3, #0
 8002560:	7866      	ldrb	r6, [r4, #1]
 8002562:	9306      	str	r3, [sp, #24]
 8002564:	4698      	mov	r8, r3
 8002566:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800256a:	f104 0a01 	add.w	sl, r4, #1
 800256e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002572:	252b      	movs	r5, #43	; 0x2b
 8002574:	f10a 0a01 	add.w	sl, sl, #1
 8002578:	f1a6 0320 	sub.w	r3, r6, #32
 800257c:	2b5a      	cmp	r3, #90	; 0x5a
 800257e:	f200 842a 	bhi.w	8002dd6 <_vfprintf_r+0x95e>
 8002582:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002586:	03aa      	.short	0x03aa
 8002588:	04280428 	.word	0x04280428
 800258c:	0428029c 	.word	0x0428029c
 8002590:	04280428 	.word	0x04280428
 8002594:	042802a7 	.word	0x042802a7
 8002598:	02c60428 	.word	0x02c60428
 800259c:	042802d2 	.word	0x042802d2
 80025a0:	02dc02d7 	.word	0x02dc02d7
 80025a4:	02f60428 	.word	0x02f60428
 80025a8:	026d026d 	.word	0x026d026d
 80025ac:	026d026d 	.word	0x026d026d
 80025b0:	026d026d 	.word	0x026d026d
 80025b4:	026d026d 	.word	0x026d026d
 80025b8:	0428026d 	.word	0x0428026d
 80025bc:	04280428 	.word	0x04280428
 80025c0:	04280428 	.word	0x04280428
 80025c4:	04280428 	.word	0x04280428
 80025c8:	042802fb 	.word	0x042802fb
 80025cc:	03f3033c 	.word	0x03f3033c
 80025d0:	02fb02fb 	.word	0x02fb02fb
 80025d4:	042802fb 	.word	0x042802fb
 80025d8:	04280428 	.word	0x04280428
 80025dc:	03ee0428 	.word	0x03ee0428
 80025e0:	04280428 	.word	0x04280428
 80025e4:	0428009a 	.word	0x0428009a
 80025e8:	04280428 	.word	0x04280428
 80025ec:	04280350 	.word	0x04280350
 80025f0:	04280379 	.word	0x04280379
 80025f4:	03900428 	.word	0x03900428
 80025f8:	04280428 	.word	0x04280428
 80025fc:	04280428 	.word	0x04280428
 8002600:	04280428 	.word	0x04280428
 8002604:	04280428 	.word	0x04280428
 8002608:	042802fb 	.word	0x042802fb
 800260c:	00c5033c 	.word	0x00c5033c
 8002610:	02fb02fb 	.word	0x02fb02fb
 8002614:	03d102fb 	.word	0x03d102fb
 8002618:	007000c5 	.word	0x007000c5
 800261c:	03b50428 	.word	0x03b50428
 8002620:	03c20428 	.word	0x03c20428
 8002624:	03de009c 	.word	0x03de009c
 8002628:	04280070 	.word	0x04280070
 800262c:	00720350 	.word	0x00720350
 8002630:	0428022c 	.word	0x0428022c
 8002634:	027c0428 	.word	0x027c0428
 8002638:	00720428 	.word	0x00720428
 800263c:	4649      	mov	r1, r9
 800263e:	9803      	ldr	r0, [sp, #12]
 8002640:	f001 fc9a 	bl	8003f78 <__swsetup_r>
 8002644:	b1a0      	cbz	r0, 8002670 <_vfprintf_r+0x1f8>
 8002646:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 800264a:	07d8      	lsls	r0, r3, #31
 800264c:	d404      	bmi.n	8002658 <_vfprintf_r+0x1e0>
 800264e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002652:	0599      	lsls	r1, r3, #22
 8002654:	f140 83b7 	bpl.w	8002dc6 <_vfprintf_r+0x94e>
 8002658:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800265c:	9305      	str	r3, [sp, #20]
 800265e:	9805      	ldr	r0, [sp, #20]
 8002660:	b057      	add	sp, #348	; 0x15c
 8002662:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002666:	f048 0820 	orr.w	r8, r8, #32
 800266a:	f89a 6000 	ldrb.w	r6, [sl]
 800266e:	e781      	b.n	8002574 <_vfprintf_r+0xfc>
 8002670:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002674:	f003 021a 	and.w	r2, r3, #26
 8002678:	2a0a      	cmp	r2, #10
 800267a:	f47f af37 	bne.w	80024ec <_vfprintf_r+0x74>
 800267e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002682:	2a00      	cmp	r2, #0
 8002684:	f6ff af32 	blt.w	80024ec <_vfprintf_r+0x74>
 8002688:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800268c:	07d2      	lsls	r2, r2, #31
 800268e:	d405      	bmi.n	800269c <_vfprintf_r+0x224>
 8002690:	059b      	lsls	r3, r3, #22
 8002692:	d403      	bmi.n	800269c <_vfprintf_r+0x224>
 8002694:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002698:	f003 f8de 	bl	8005858 <__retarget_lock_release_recursive>
 800269c:	4623      	mov	r3, r4
 800269e:	463a      	mov	r2, r7
 80026a0:	4649      	mov	r1, r9
 80026a2:	9803      	ldr	r0, [sp, #12]
 80026a4:	f001 fc26 	bl	8003ef4 <__sbprintf>
 80026a8:	9005      	str	r0, [sp, #20]
 80026aa:	9805      	ldr	r0, [sp, #20]
 80026ac:	b057      	add	sp, #348	; 0x15c
 80026ae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80026b2:	9803      	ldr	r0, [sp, #12]
 80026b4:	f002 fd7e 	bl	80051b4 <__sinit>
 80026b8:	e6f4      	b.n	80024a4 <_vfprintf_r+0x2c>
 80026ba:	f048 0810 	orr.w	r8, r8, #16
 80026be:	f018 0f20 	tst.w	r8, #32
 80026c2:	f000 836c 	beq.w	8002d9e <_vfprintf_r+0x926>
 80026c6:	9c08      	ldr	r4, [sp, #32]
 80026c8:	3407      	adds	r4, #7
 80026ca:	f024 0307 	bic.w	r3, r4, #7
 80026ce:	e9d3 4500 	ldrd	r4, r5, [r3]
 80026d2:	f103 0208 	add.w	r2, r3, #8
 80026d6:	9208      	str	r2, [sp, #32]
 80026d8:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80026dc:	2200      	movs	r2, #0
 80026de:	e18c      	b.n	80029fa <_vfprintf_r+0x582>
 80026e0:	aa2a      	add	r2, sp, #168	; 0xa8
 80026e2:	9907      	ldr	r1, [sp, #28]
 80026e4:	9803      	ldr	r0, [sp, #12]
 80026e6:	f004 f9f5 	bl	8006ad4 <__sprint_r>
 80026ea:	2800      	cmp	r0, #0
 80026ec:	f041 8376 	bne.w	8003ddc <_vfprintf_r+0x1964>
 80026f0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80026f4:	e72c      	b.n	8002550 <_vfprintf_r+0xd8>
 80026f6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80026fa:	f003 f8ab 	bl	8005854 <__retarget_lock_acquire_recursive>
 80026fe:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002702:	b293      	uxth	r3, r2
 8002704:	e6d8      	b.n	80024b8 <_vfprintf_r+0x40>
 8002706:	bf00      	nop
	...
 8002710:	4643      	mov	r3, r8
 8002712:	069f      	lsls	r7, r3, #26
 8002714:	f140 832f 	bpl.w	8002d76 <_vfprintf_r+0x8fe>
 8002718:	9c08      	ldr	r4, [sp, #32]
 800271a:	3407      	adds	r4, #7
 800271c:	f024 0407 	bic.w	r4, r4, #7
 8002720:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002724:	f104 0208 	add.w	r2, r4, #8
 8002728:	9208      	str	r2, [sp, #32]
 800272a:	4604      	mov	r4, r0
 800272c:	460d      	mov	r5, r1
 800272e:	2800      	cmp	r0, #0
 8002730:	f171 0200 	sbcs.w	r2, r1, #0
 8002734:	da05      	bge.n	8002742 <_vfprintf_r+0x2ca>
 8002736:	222d      	movs	r2, #45	; 0x2d
 8002738:	4264      	negs	r4, r4
 800273a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 800273e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002742:	aa56      	add	r2, sp, #344	; 0x158
 8002744:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002748:	9204      	str	r2, [sp, #16]
 800274a:	f000 84b2 	beq.w	80030b2 <_vfprintf_r+0xc3a>
 800274e:	2201      	movs	r2, #1
 8002750:	ea54 0105 	orrs.w	r1, r4, r5
 8002754:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002758:	f040 8159 	bne.w	8002a0e <_vfprintf_r+0x596>
 800275c:	f1b9 0f00 	cmp.w	r9, #0
 8002760:	f040 8619 	bne.w	8003396 <_vfprintf_r+0xf1e>
 8002764:	2a00      	cmp	r2, #0
 8002766:	f040 8508 	bne.w	800317a <_vfprintf_r+0xd02>
 800276a:	f013 0301 	ands.w	r3, r3, #1
 800276e:	af56      	add	r7, sp, #344	; 0x158
 8002770:	9309      	str	r3, [sp, #36]	; 0x24
 8002772:	d002      	beq.n	800277a <_vfprintf_r+0x302>
 8002774:	2330      	movs	r3, #48	; 0x30
 8002776:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800277a:	2300      	movs	r3, #0
 800277c:	930a      	str	r3, [sp, #40]	; 0x28
 800277e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002780:	9314      	str	r3, [sp, #80]	; 0x50
 8002782:	9311      	str	r3, [sp, #68]	; 0x44
 8002784:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002786:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800278a:	454b      	cmp	r3, r9
 800278c:	bfb8      	it	lt
 800278e:	464b      	movlt	r3, r9
 8002790:	9304      	str	r3, [sp, #16]
 8002792:	b112      	cbz	r2, 800279a <_vfprintf_r+0x322>
 8002794:	9b04      	ldr	r3, [sp, #16]
 8002796:	3301      	adds	r3, #1
 8002798:	9304      	str	r3, [sp, #16]
 800279a:	f018 0302 	ands.w	r3, r8, #2
 800279e:	930b      	str	r3, [sp, #44]	; 0x2c
 80027a0:	d002      	beq.n	80027a8 <_vfprintf_r+0x330>
 80027a2:	9b04      	ldr	r3, [sp, #16]
 80027a4:	3302      	adds	r3, #2
 80027a6:	9304      	str	r3, [sp, #16]
 80027a8:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 80027ac:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80027ae:	930e      	str	r3, [sp, #56]	; 0x38
 80027b0:	d13f      	bne.n	8002832 <_vfprintf_r+0x3ba>
 80027b2:	9b06      	ldr	r3, [sp, #24]
 80027b4:	9904      	ldr	r1, [sp, #16]
 80027b6:	1a5d      	subs	r5, r3, r1
 80027b8:	2d00      	cmp	r5, #0
 80027ba:	dd3a      	ble.n	8002832 <_vfprintf_r+0x3ba>
 80027bc:	2d10      	cmp	r5, #16
 80027be:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80027c0:	dd29      	ble.n	8002816 <_vfprintf_r+0x39e>
 80027c2:	4659      	mov	r1, fp
 80027c4:	4620      	mov	r0, r4
 80027c6:	9620      	str	r6, [sp, #128]	; 0x80
 80027c8:	2310      	movs	r3, #16
 80027ca:	9c03      	ldr	r4, [sp, #12]
 80027cc:	9e07      	ldr	r6, [sp, #28]
 80027ce:	46bb      	mov	fp, r7
 80027d0:	e004      	b.n	80027dc <_vfprintf_r+0x364>
 80027d2:	3d10      	subs	r5, #16
 80027d4:	2d10      	cmp	r5, #16
 80027d6:	f101 0108 	add.w	r1, r1, #8
 80027da:	dd18      	ble.n	800280e <_vfprintf_r+0x396>
 80027dc:	3201      	adds	r2, #1
 80027de:	4fba      	ldr	r7, [pc, #744]	; (8002ac8 <_vfprintf_r+0x650>)
 80027e0:	3010      	adds	r0, #16
 80027e2:	2a07      	cmp	r2, #7
 80027e4:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80027e8:	e9c1 7300 	strd	r7, r3, [r1]
 80027ec:	ddf1      	ble.n	80027d2 <_vfprintf_r+0x35a>
 80027ee:	aa2a      	add	r2, sp, #168	; 0xa8
 80027f0:	4631      	mov	r1, r6
 80027f2:	4620      	mov	r0, r4
 80027f4:	930c      	str	r3, [sp, #48]	; 0x30
 80027f6:	f004 f96d 	bl	8006ad4 <__sprint_r>
 80027fa:	2800      	cmp	r0, #0
 80027fc:	f040 843d 	bne.w	800307a <_vfprintf_r+0xc02>
 8002800:	3d10      	subs	r5, #16
 8002802:	2d10      	cmp	r5, #16
 8002804:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002808:	a92d      	add	r1, sp, #180	; 0xb4
 800280a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800280c:	dce6      	bgt.n	80027dc <_vfprintf_r+0x364>
 800280e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002810:	465f      	mov	r7, fp
 8002812:	4604      	mov	r4, r0
 8002814:	468b      	mov	fp, r1
 8002816:	3201      	adds	r2, #1
 8002818:	4bab      	ldr	r3, [pc, #684]	; (8002ac8 <_vfprintf_r+0x650>)
 800281a:	442c      	add	r4, r5
 800281c:	2a07      	cmp	r2, #7
 800281e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002822:	e9cb 3500 	strd	r3, r5, [fp]
 8002826:	f300 84ff 	bgt.w	8003228 <_vfprintf_r+0xdb0>
 800282a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800282e:	f10b 0b08 	add.w	fp, fp, #8
 8002832:	b172      	cbz	r2, 8002852 <_vfprintf_r+0x3da>
 8002834:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002836:	3201      	adds	r2, #1
 8002838:	3401      	adds	r4, #1
 800283a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 800283e:	2101      	movs	r1, #1
 8002840:	2a07      	cmp	r2, #7
 8002842:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002846:	e9cb 0100 	strd	r0, r1, [fp]
 800284a:	f300 8418 	bgt.w	800307e <_vfprintf_r+0xc06>
 800284e:	f10b 0b08 	add.w	fp, fp, #8
 8002852:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002854:	b16b      	cbz	r3, 8002872 <_vfprintf_r+0x3fa>
 8002856:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002858:	3301      	adds	r3, #1
 800285a:	3402      	adds	r4, #2
 800285c:	a923      	add	r1, sp, #140	; 0x8c
 800285e:	2202      	movs	r2, #2
 8002860:	2b07      	cmp	r3, #7
 8002862:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002866:	e9cb 1200 	strd	r1, r2, [fp]
 800286a:	f300 8415 	bgt.w	8003098 <_vfprintf_r+0xc20>
 800286e:	f10b 0b08 	add.w	fp, fp, #8
 8002872:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002874:	2b80      	cmp	r3, #128	; 0x80
 8002876:	f000 8331 	beq.w	8002edc <_vfprintf_r+0xa64>
 800287a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800287c:	eba9 0503 	sub.w	r5, r9, r3
 8002880:	2d00      	cmp	r5, #0
 8002882:	dd37      	ble.n	80028f4 <_vfprintf_r+0x47c>
 8002884:	2d10      	cmp	r5, #16
 8002886:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002888:	4b90      	ldr	r3, [pc, #576]	; (8002acc <_vfprintf_r+0x654>)
 800288a:	dd28      	ble.n	80028de <_vfprintf_r+0x466>
 800288c:	4659      	mov	r1, fp
 800288e:	4620      	mov	r0, r4
 8002890:	46bb      	mov	fp, r7
 8002892:	f04f 0910 	mov.w	r9, #16
 8002896:	4637      	mov	r7, r6
 8002898:	461c      	mov	r4, r3
 800289a:	9e07      	ldr	r6, [sp, #28]
 800289c:	e004      	b.n	80028a8 <_vfprintf_r+0x430>
 800289e:	3d10      	subs	r5, #16
 80028a0:	2d10      	cmp	r5, #16
 80028a2:	f101 0108 	add.w	r1, r1, #8
 80028a6:	dd15      	ble.n	80028d4 <_vfprintf_r+0x45c>
 80028a8:	3201      	adds	r2, #1
 80028aa:	3010      	adds	r0, #16
 80028ac:	2a07      	cmp	r2, #7
 80028ae:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80028b2:	e9c1 4900 	strd	r4, r9, [r1]
 80028b6:	ddf2      	ble.n	800289e <_vfprintf_r+0x426>
 80028b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80028ba:	4631      	mov	r1, r6
 80028bc:	9803      	ldr	r0, [sp, #12]
 80028be:	f004 f909 	bl	8006ad4 <__sprint_r>
 80028c2:	2800      	cmp	r0, #0
 80028c4:	f040 83d9 	bne.w	800307a <_vfprintf_r+0xc02>
 80028c8:	3d10      	subs	r5, #16
 80028ca:	2d10      	cmp	r5, #16
 80028cc:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80028d0:	a92d      	add	r1, sp, #180	; 0xb4
 80028d2:	dce9      	bgt.n	80028a8 <_vfprintf_r+0x430>
 80028d4:	463e      	mov	r6, r7
 80028d6:	4623      	mov	r3, r4
 80028d8:	465f      	mov	r7, fp
 80028da:	4604      	mov	r4, r0
 80028dc:	468b      	mov	fp, r1
 80028de:	3201      	adds	r2, #1
 80028e0:	442c      	add	r4, r5
 80028e2:	2a07      	cmp	r2, #7
 80028e4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80028e8:	e9cb 3500 	strd	r3, r5, [fp]
 80028ec:	f300 83ef 	bgt.w	80030ce <_vfprintf_r+0xc56>
 80028f0:	f10b 0b08 	add.w	fp, fp, #8
 80028f4:	f418 7f80 	tst.w	r8, #256	; 0x100
 80028f8:	f040 8280 	bne.w	8002dfc <_vfprintf_r+0x984>
 80028fc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80028fe:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002900:	f8cb 7000 	str.w	r7, [fp]
 8002904:	3301      	adds	r3, #1
 8002906:	4414      	add	r4, r2
 8002908:	2b07      	cmp	r3, #7
 800290a:	942c      	str	r4, [sp, #176]	; 0xb0
 800290c:	f8cb 2004 	str.w	r2, [fp, #4]
 8002910:	932b      	str	r3, [sp, #172]	; 0xac
 8002912:	f300 8392 	bgt.w	800303a <_vfprintf_r+0xbc2>
 8002916:	f10b 0b08 	add.w	fp, fp, #8
 800291a:	f018 0f04 	tst.w	r8, #4
 800291e:	d03b      	beq.n	8002998 <_vfprintf_r+0x520>
 8002920:	9b06      	ldr	r3, [sp, #24]
 8002922:	9a04      	ldr	r2, [sp, #16]
 8002924:	1a9d      	subs	r5, r3, r2
 8002926:	2d00      	cmp	r5, #0
 8002928:	dd36      	ble.n	8002998 <_vfprintf_r+0x520>
 800292a:	2d10      	cmp	r5, #16
 800292c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800292e:	dd21      	ble.n	8002974 <_vfprintf_r+0x4fc>
 8002930:	2610      	movs	r6, #16
 8002932:	9f03      	ldr	r7, [sp, #12]
 8002934:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002938:	e004      	b.n	8002944 <_vfprintf_r+0x4cc>
 800293a:	3d10      	subs	r5, #16
 800293c:	2d10      	cmp	r5, #16
 800293e:	f10b 0b08 	add.w	fp, fp, #8
 8002942:	dd17      	ble.n	8002974 <_vfprintf_r+0x4fc>
 8002944:	3301      	adds	r3, #1
 8002946:	4a60      	ldr	r2, [pc, #384]	; (8002ac8 <_vfprintf_r+0x650>)
 8002948:	3410      	adds	r4, #16
 800294a:	2b07      	cmp	r3, #7
 800294c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002950:	e9cb 2600 	strd	r2, r6, [fp]
 8002954:	ddf1      	ble.n	800293a <_vfprintf_r+0x4c2>
 8002956:	aa2a      	add	r2, sp, #168	; 0xa8
 8002958:	4641      	mov	r1, r8
 800295a:	4638      	mov	r0, r7
 800295c:	f004 f8ba 	bl	8006ad4 <__sprint_r>
 8002960:	2800      	cmp	r0, #0
 8002962:	f040 856c 	bne.w	800343e <_vfprintf_r+0xfc6>
 8002966:	3d10      	subs	r5, #16
 8002968:	2d10      	cmp	r5, #16
 800296a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800296e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002972:	dce7      	bgt.n	8002944 <_vfprintf_r+0x4cc>
 8002974:	3301      	adds	r3, #1
 8002976:	4a54      	ldr	r2, [pc, #336]	; (8002ac8 <_vfprintf_r+0x650>)
 8002978:	442c      	add	r4, r5
 800297a:	2b07      	cmp	r3, #7
 800297c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002980:	e9cb 2500 	strd	r2, r5, [fp]
 8002984:	dd08      	ble.n	8002998 <_vfprintf_r+0x520>
 8002986:	aa2a      	add	r2, sp, #168	; 0xa8
 8002988:	9907      	ldr	r1, [sp, #28]
 800298a:	9803      	ldr	r0, [sp, #12]
 800298c:	f004 f8a2 	bl	8006ad4 <__sprint_r>
 8002990:	2800      	cmp	r0, #0
 8002992:	f040 82e9 	bne.w	8002f68 <_vfprintf_r+0xaf0>
 8002996:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002998:	9904      	ldr	r1, [sp, #16]
 800299a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 800299e:	428a      	cmp	r2, r1
 80029a0:	bfac      	ite	ge
 80029a2:	189b      	addge	r3, r3, r2
 80029a4:	185b      	addlt	r3, r3, r1
 80029a6:	9305      	str	r3, [sp, #20]
 80029a8:	2c00      	cmp	r4, #0
 80029aa:	f040 82d5 	bne.w	8002f58 <_vfprintf_r+0xae0>
 80029ae:	2300      	movs	r3, #0
 80029b0:	932b      	str	r3, [sp, #172]	; 0xac
 80029b2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80029b4:	b11b      	cbz	r3, 80029be <_vfprintf_r+0x546>
 80029b6:	990a      	ldr	r1, [sp, #40]	; 0x28
 80029b8:	9803      	ldr	r0, [sp, #12]
 80029ba:	f002 fc9d 	bl	80052f8 <_free_r>
 80029be:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80029c2:	4657      	mov	r7, sl
 80029c4:	783b      	ldrb	r3, [r7, #0]
 80029c6:	2b00      	cmp	r3, #0
 80029c8:	f47f ada7 	bne.w	800251a <_vfprintf_r+0xa2>
 80029cc:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80029ce:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80029d2:	2b00      	cmp	r3, #0
 80029d4:	f041 80e7 	bne.w	8003ba6 <_vfprintf_r+0x172e>
 80029d8:	2300      	movs	r3, #0
 80029da:	932b      	str	r3, [sp, #172]	; 0xac
 80029dc:	e2cb      	b.n	8002f76 <_vfprintf_r+0xafe>
 80029de:	4643      	mov	r3, r8
 80029e0:	069a      	lsls	r2, r3, #26
 80029e2:	f140 814e 	bpl.w	8002c82 <_vfprintf_r+0x80a>
 80029e6:	9c08      	ldr	r4, [sp, #32]
 80029e8:	3407      	adds	r4, #7
 80029ea:	f024 0207 	bic.w	r2, r4, #7
 80029ee:	f102 0108 	add.w	r1, r2, #8
 80029f2:	e9d2 4500 	ldrd	r4, r5, [r2]
 80029f6:	9108      	str	r1, [sp, #32]
 80029f8:	2201      	movs	r2, #1
 80029fa:	2100      	movs	r1, #0
 80029fc:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002a00:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002a04:	a956      	add	r1, sp, #344	; 0x158
 8002a06:	9104      	str	r1, [sp, #16]
 8002a08:	f47f aea2 	bne.w	8002750 <_vfprintf_r+0x2d8>
 8002a0c:	4698      	mov	r8, r3
 8002a0e:	2a01      	cmp	r2, #1
 8002a10:	f000 8350 	beq.w	80030b4 <_vfprintf_r+0xc3c>
 8002a14:	2a02      	cmp	r2, #2
 8002a16:	f000 831b 	beq.w	8003050 <_vfprintf_r+0xbd8>
 8002a1a:	a956      	add	r1, sp, #344	; 0x158
 8002a1c:	e000      	b.n	8002a20 <_vfprintf_r+0x5a8>
 8002a1e:	4639      	mov	r1, r7
 8002a20:	08e2      	lsrs	r2, r4, #3
 8002a22:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002a26:	08e8      	lsrs	r0, r5, #3
 8002a28:	f004 0307 	and.w	r3, r4, #7
 8002a2c:	4605      	mov	r5, r0
 8002a2e:	4614      	mov	r4, r2
 8002a30:	3330      	adds	r3, #48	; 0x30
 8002a32:	ea54 0205 	orrs.w	r2, r4, r5
 8002a36:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002a3a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002a3e:	d1ee      	bne.n	8002a1e <_vfprintf_r+0x5a6>
 8002a40:	f018 0f01 	tst.w	r8, #1
 8002a44:	f000 8314 	beq.w	8003070 <_vfprintf_r+0xbf8>
 8002a48:	2b30      	cmp	r3, #48	; 0x30
 8002a4a:	f000 8311 	beq.w	8003070 <_vfprintf_r+0xbf8>
 8002a4e:	9a04      	ldr	r2, [sp, #16]
 8002a50:	3902      	subs	r1, #2
 8002a52:	2330      	movs	r3, #48	; 0x30
 8002a54:	1a52      	subs	r2, r2, r1
 8002a56:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002a5a:	9209      	str	r2, [sp, #36]	; 0x24
 8002a5c:	460f      	mov	r7, r1
 8002a5e:	e68c      	b.n	800277a <_vfprintf_r+0x302>
 8002a60:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a64:	2200      	movs	r2, #0
 8002a66:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002a6a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002a6e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002a72:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a76:	2b09      	cmp	r3, #9
 8002a78:	d9f5      	bls.n	8002a66 <_vfprintf_r+0x5ee>
 8002a7a:	9206      	str	r2, [sp, #24]
 8002a7c:	e57c      	b.n	8002578 <_vfprintf_r+0x100>
 8002a7e:	4b14      	ldr	r3, [pc, #80]	; (8002ad0 <_vfprintf_r+0x658>)
 8002a80:	9317      	str	r3, [sp, #92]	; 0x5c
 8002a82:	f018 0f20 	tst.w	r8, #32
 8002a86:	f000 8114 	beq.w	8002cb2 <_vfprintf_r+0x83a>
 8002a8a:	9c08      	ldr	r4, [sp, #32]
 8002a8c:	3407      	adds	r4, #7
 8002a8e:	f024 0307 	bic.w	r3, r4, #7
 8002a92:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002a96:	f103 0208 	add.w	r2, r3, #8
 8002a9a:	9208      	str	r2, [sp, #32]
 8002a9c:	f018 0f01 	tst.w	r8, #1
 8002aa0:	d009      	beq.n	8002ab6 <_vfprintf_r+0x63e>
 8002aa2:	ea54 0305 	orrs.w	r3, r4, r5
 8002aa6:	d006      	beq.n	8002ab6 <_vfprintf_r+0x63e>
 8002aa8:	2330      	movs	r3, #48	; 0x30
 8002aaa:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002aae:	f048 0802 	orr.w	r8, r8, #2
 8002ab2:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002ab6:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002aba:	2202      	movs	r2, #2
 8002abc:	e79d      	b.n	80029fa <_vfprintf_r+0x582>
 8002abe:	f048 0801 	orr.w	r8, r8, #1
 8002ac2:	f89a 6000 	ldrb.w	r6, [sl]
 8002ac6:	e555      	b.n	8002574 <_vfprintf_r+0xfc>
 8002ac8:	080071b8 	.word	0x080071b8
 8002acc:	080071c8 	.word	0x080071c8
 8002ad0:	08007184 	.word	0x08007184
 8002ad4:	9e03      	ldr	r6, [sp, #12]
 8002ad6:	4630      	mov	r0, r6
 8002ad8:	f002 feaa 	bl	8005830 <_localeconv_r>
 8002adc:	6843      	ldr	r3, [r0, #4]
 8002ade:	9318      	str	r3, [sp, #96]	; 0x60
 8002ae0:	4618      	mov	r0, r3
 8002ae2:	f7fd fdad 	bl	8000640 <strlen>
 8002ae6:	901b      	str	r0, [sp, #108]	; 0x6c
 8002ae8:	4604      	mov	r4, r0
 8002aea:	4630      	mov	r0, r6
 8002aec:	f002 fea0 	bl	8005830 <_localeconv_r>
 8002af0:	6883      	ldr	r3, [r0, #8]
 8002af2:	931a      	str	r3, [sp, #104]	; 0x68
 8002af4:	2c00      	cmp	r4, #0
 8002af6:	f43f adb8 	beq.w	800266a <_vfprintf_r+0x1f2>
 8002afa:	f89a 6000 	ldrb.w	r6, [sl]
 8002afe:	2b00      	cmp	r3, #0
 8002b00:	f43f ad38 	beq.w	8002574 <_vfprintf_r+0xfc>
 8002b04:	781b      	ldrb	r3, [r3, #0]
 8002b06:	2b00      	cmp	r3, #0
 8002b08:	f43f ad34 	beq.w	8002574 <_vfprintf_r+0xfc>
 8002b0c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002b10:	e530      	b.n	8002574 <_vfprintf_r+0xfc>
 8002b12:	9b08      	ldr	r3, [sp, #32]
 8002b14:	f89a 6000 	ldrb.w	r6, [sl]
 8002b18:	681a      	ldr	r2, [r3, #0]
 8002b1a:	9206      	str	r2, [sp, #24]
 8002b1c:	2a00      	cmp	r2, #0
 8002b1e:	f103 0304 	add.w	r3, r3, #4
 8002b22:	f2c0 8697 	blt.w	8003854 <_vfprintf_r+0x13dc>
 8002b26:	9308      	str	r3, [sp, #32]
 8002b28:	e524      	b.n	8002574 <_vfprintf_r+0xfc>
 8002b2a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002b2e:	f89a 6000 	ldrb.w	r6, [sl]
 8002b32:	e51f      	b.n	8002574 <_vfprintf_r+0xfc>
 8002b34:	f89a 6000 	ldrb.w	r6, [sl]
 8002b38:	f048 0804 	orr.w	r8, r8, #4
 8002b3c:	e51a      	b.n	8002574 <_vfprintf_r+0xfc>
 8002b3e:	f89a 6000 	ldrb.w	r6, [sl]
 8002b42:	2e2a      	cmp	r6, #42	; 0x2a
 8002b44:	f10a 0201 	add.w	r2, sl, #1
 8002b48:	f001 81b0 	beq.w	8003eac <_vfprintf_r+0x1a34>
 8002b4c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b50:	2b09      	cmp	r3, #9
 8002b52:	4692      	mov	sl, r2
 8002b54:	f04f 0900 	mov.w	r9, #0
 8002b58:	f63f ad0e 	bhi.w	8002578 <_vfprintf_r+0x100>
 8002b5c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002b60:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002b64:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002b68:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b6c:	2b09      	cmp	r3, #9
 8002b6e:	d9f5      	bls.n	8002b5c <_vfprintf_r+0x6e4>
 8002b70:	e502      	b.n	8002578 <_vfprintf_r+0x100>
 8002b72:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002b76:	f89a 6000 	ldrb.w	r6, [sl]
 8002b7a:	e4fb      	b.n	8002574 <_vfprintf_r+0xfc>
 8002b7c:	9c08      	ldr	r4, [sp, #32]
 8002b7e:	3407      	adds	r4, #7
 8002b80:	f024 0407 	bic.w	r4, r4, #7
 8002b84:	ed94 7b00 	vldr	d7, [r4]
 8002b88:	ec52 1b17 	vmov	r1, r2, d7
 8002b8c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002b90:	931d      	str	r3, [sp, #116]	; 0x74
 8002b92:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002b96:	3408      	adds	r4, #8
 8002b98:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002b9c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002ba0:	4bba      	ldr	r3, [pc, #744]	; (8002e8c <_vfprintf_r+0xa14>)
 8002ba2:	9408      	str	r4, [sp, #32]
 8002ba4:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002ba8:	f7fe fa60 	bl	800106c <__aeabi_dcmpun>
 8002bac:	2800      	cmp	r0, #0
 8002bae:	f040 846f 	bne.w	8003490 <_vfprintf_r+0x1018>
 8002bb2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002bb6:	4bb5      	ldr	r3, [pc, #724]	; (8002e8c <_vfprintf_r+0xa14>)
 8002bb8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002bbc:	f7fe fa38 	bl	8001030 <__aeabi_dcmple>
 8002bc0:	2800      	cmp	r0, #0
 8002bc2:	f040 8465 	bne.w	8003490 <_vfprintf_r+0x1018>
 8002bc6:	2200      	movs	r2, #0
 8002bc8:	2300      	movs	r3, #0
 8002bca:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002bce:	f7fe fa25 	bl	800101c <__aeabi_dcmplt>
 8002bd2:	2800      	cmp	r0, #0
 8002bd4:	f040 855b 	bne.w	800368e <_vfprintf_r+0x1216>
 8002bd8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002bdc:	4fac      	ldr	r7, [pc, #688]	; (8002e90 <_vfprintf_r+0xa18>)
 8002bde:	4bad      	ldr	r3, [pc, #692]	; (8002e94 <_vfprintf_r+0xa1c>)
 8002be0:	2000      	movs	r0, #0
 8002be2:	2103      	movs	r1, #3
 8002be4:	9104      	str	r1, [sp, #16]
 8002be6:	900a      	str	r0, [sp, #40]	; 0x28
 8002be8:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002bec:	2e47      	cmp	r6, #71	; 0x47
 8002bee:	bfd8      	it	le
 8002bf0:	461f      	movle	r7, r3
 8002bf2:	9109      	str	r1, [sp, #36]	; 0x24
 8002bf4:	4681      	mov	r9, r0
 8002bf6:	900f      	str	r0, [sp, #60]	; 0x3c
 8002bf8:	9014      	str	r0, [sp, #80]	; 0x50
 8002bfa:	9011      	str	r0, [sp, #68]	; 0x44
 8002bfc:	e5c9      	b.n	8002792 <_vfprintf_r+0x31a>
 8002bfe:	9808      	ldr	r0, [sp, #32]
 8002c00:	2300      	movs	r3, #0
 8002c02:	6801      	ldr	r1, [r0, #0]
 8002c04:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002c08:	461a      	mov	r2, r3
 8002c0a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002c0e:	2301      	movs	r3, #1
 8002c10:	1d01      	adds	r1, r0, #4
 8002c12:	9304      	str	r3, [sp, #16]
 8002c14:	920a      	str	r2, [sp, #40]	; 0x28
 8002c16:	4691      	mov	r9, r2
 8002c18:	920f      	str	r2, [sp, #60]	; 0x3c
 8002c1a:	9214      	str	r2, [sp, #80]	; 0x50
 8002c1c:	9211      	str	r2, [sp, #68]	; 0x44
 8002c1e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002c22:	af3d      	add	r7, sp, #244	; 0xf4
 8002c24:	e5b9      	b.n	800279a <_vfprintf_r+0x322>
 8002c26:	9b08      	ldr	r3, [sp, #32]
 8002c28:	681f      	ldr	r7, [r3, #0]
 8002c2a:	2500      	movs	r5, #0
 8002c2c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002c30:	1d1c      	adds	r4, r3, #4
 8002c32:	2f00      	cmp	r7, #0
 8002c34:	f000 8639 	beq.w	80038aa <_vfprintf_r+0x1432>
 8002c38:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002c3c:	f000 8711 	beq.w	8003a62 <_vfprintf_r+0x15ea>
 8002c40:	464a      	mov	r2, r9
 8002c42:	4629      	mov	r1, r5
 8002c44:	4638      	mov	r0, r7
 8002c46:	f7fd fd6b 	bl	8000720 <memchr>
 8002c4a:	900a      	str	r0, [sp, #40]	; 0x28
 8002c4c:	2800      	cmp	r0, #0
 8002c4e:	f000 85e7 	beq.w	8003820 <_vfprintf_r+0x13a8>
 8002c52:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002c54:	1bdb      	subs	r3, r3, r7
 8002c56:	9309      	str	r3, [sp, #36]	; 0x24
 8002c58:	46a9      	mov	r9, r5
 8002c5a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002c5e:	9408      	str	r4, [sp, #32]
 8002c60:	9304      	str	r3, [sp, #16]
 8002c62:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002c66:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002c6a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002c6e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002c72:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002c76:	e58c      	b.n	8002792 <_vfprintf_r+0x31a>
 8002c78:	f048 0310 	orr.w	r3, r8, #16
 8002c7c:	069a      	lsls	r2, r3, #26
 8002c7e:	f53f aeb2 	bmi.w	80029e6 <_vfprintf_r+0x56e>
 8002c82:	9a08      	ldr	r2, [sp, #32]
 8002c84:	06df      	lsls	r7, r3, #27
 8002c86:	f102 0104 	add.w	r1, r2, #4
 8002c8a:	f100 837e 	bmi.w	800338a <_vfprintf_r+0xf12>
 8002c8e:	065d      	lsls	r5, r3, #25
 8002c90:	9a08      	ldr	r2, [sp, #32]
 8002c92:	f100 84e4 	bmi.w	800365e <_vfprintf_r+0x11e6>
 8002c96:	059c      	lsls	r4, r3, #22
 8002c98:	f140 8377 	bpl.w	800338a <_vfprintf_r+0xf12>
 8002c9c:	7814      	ldrb	r4, [r2, #0]
 8002c9e:	9108      	str	r1, [sp, #32]
 8002ca0:	2500      	movs	r5, #0
 8002ca2:	2201      	movs	r2, #1
 8002ca4:	e6a9      	b.n	80029fa <_vfprintf_r+0x582>
 8002ca6:	4b7c      	ldr	r3, [pc, #496]	; (8002e98 <_vfprintf_r+0xa20>)
 8002ca8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002caa:	f018 0f20 	tst.w	r8, #32
 8002cae:	f47f aeec 	bne.w	8002a8a <_vfprintf_r+0x612>
 8002cb2:	9a08      	ldr	r2, [sp, #32]
 8002cb4:	f018 0f10 	tst.w	r8, #16
 8002cb8:	f102 0304 	add.w	r3, r2, #4
 8002cbc:	f040 8354 	bne.w	8003368 <_vfprintf_r+0xef0>
 8002cc0:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002cc4:	9a08      	ldr	r2, [sp, #32]
 8002cc6:	f040 84d0 	bne.w	800366a <_vfprintf_r+0x11f2>
 8002cca:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002cce:	f000 834b 	beq.w	8003368 <_vfprintf_r+0xef0>
 8002cd2:	7814      	ldrb	r4, [r2, #0]
 8002cd4:	9308      	str	r3, [sp, #32]
 8002cd6:	2500      	movs	r5, #0
 8002cd8:	e6e0      	b.n	8002a9c <_vfprintf_r+0x624>
 8002cda:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002cde:	f89a 6000 	ldrb.w	r6, [sl]
 8002ce2:	2b00      	cmp	r3, #0
 8002ce4:	f47f ac46 	bne.w	8002574 <_vfprintf_r+0xfc>
 8002ce8:	2320      	movs	r3, #32
 8002cea:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002cee:	e441      	b.n	8002574 <_vfprintf_r+0xfc>
 8002cf0:	f89a 6000 	ldrb.w	r6, [sl]
 8002cf4:	2e6c      	cmp	r6, #108	; 0x6c
 8002cf6:	bf03      	ittte	eq
 8002cf8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002cfc:	f048 0820 	orreq.w	r8, r8, #32
 8002d00:	f10a 0a01 	addeq.w	sl, sl, #1
 8002d04:	f048 0810 	orrne.w	r8, r8, #16
 8002d08:	e434      	b.n	8002574 <_vfprintf_r+0xfc>
 8002d0a:	9a08      	ldr	r2, [sp, #32]
 8002d0c:	f018 0f20 	tst.w	r8, #32
 8002d10:	f852 3b04 	ldr.w	r3, [r2], #4
 8002d14:	9208      	str	r2, [sp, #32]
 8002d16:	f000 83a1 	beq.w	800345c <_vfprintf_r+0xfe4>
 8002d1a:	9a05      	ldr	r2, [sp, #20]
 8002d1c:	4610      	mov	r0, r2
 8002d1e:	17d1      	asrs	r1, r2, #31
 8002d20:	e9c3 0100 	strd	r0, r1, [r3]
 8002d24:	4657      	mov	r7, sl
 8002d26:	e64d      	b.n	80029c4 <_vfprintf_r+0x54c>
 8002d28:	f89a 6000 	ldrb.w	r6, [sl]
 8002d2c:	2e68      	cmp	r6, #104	; 0x68
 8002d2e:	bf03      	ittte	eq
 8002d30:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002d34:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002d38:	f10a 0a01 	addeq.w	sl, sl, #1
 8002d3c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002d40:	e418      	b.n	8002574 <_vfprintf_r+0xfc>
 8002d42:	9908      	ldr	r1, [sp, #32]
 8002d44:	4b55      	ldr	r3, [pc, #340]	; (8002e9c <_vfprintf_r+0xa24>)
 8002d46:	680c      	ldr	r4, [r1, #0]
 8002d48:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d4a:	f647 0230 	movw	r2, #30768	; 0x7830
 8002d4e:	3104      	adds	r1, #4
 8002d50:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002d54:	f048 0302 	orr.w	r3, r8, #2
 8002d58:	9108      	str	r1, [sp, #32]
 8002d5a:	2500      	movs	r5, #0
 8002d5c:	2202      	movs	r2, #2
 8002d5e:	2678      	movs	r6, #120	; 0x78
 8002d60:	e64b      	b.n	80029fa <_vfprintf_r+0x582>
 8002d62:	f048 0808 	orr.w	r8, r8, #8
 8002d66:	f89a 6000 	ldrb.w	r6, [sl]
 8002d6a:	e403      	b.n	8002574 <_vfprintf_r+0xfc>
 8002d6c:	f048 0310 	orr.w	r3, r8, #16
 8002d70:	069f      	lsls	r7, r3, #26
 8002d72:	f53f acd1 	bmi.w	8002718 <_vfprintf_r+0x2a0>
 8002d76:	9908      	ldr	r1, [sp, #32]
 8002d78:	06dd      	lsls	r5, r3, #27
 8002d7a:	f101 0204 	add.w	r2, r1, #4
 8002d7e:	f100 82fd 	bmi.w	800337c <_vfprintf_r+0xf04>
 8002d82:	065c      	lsls	r4, r3, #25
 8002d84:	9908      	ldr	r1, [sp, #32]
 8002d86:	f100 8475 	bmi.w	8003674 <_vfprintf_r+0x11fc>
 8002d8a:	0598      	lsls	r0, r3, #22
 8002d8c:	f140 82f6 	bpl.w	800337c <_vfprintf_r+0xf04>
 8002d90:	f991 4000 	ldrsb.w	r4, [r1]
 8002d94:	9208      	str	r2, [sp, #32]
 8002d96:	17e5      	asrs	r5, r4, #31
 8002d98:	4620      	mov	r0, r4
 8002d9a:	4629      	mov	r1, r5
 8002d9c:	e4c7      	b.n	800272e <_vfprintf_r+0x2b6>
 8002d9e:	9a08      	ldr	r2, [sp, #32]
 8002da0:	f018 0f10 	tst.w	r8, #16
 8002da4:	f102 0304 	add.w	r3, r2, #4
 8002da8:	f040 82e3 	bne.w	8003372 <_vfprintf_r+0xefa>
 8002dac:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002db0:	9a08      	ldr	r2, [sp, #32]
 8002db2:	f040 8467 	bne.w	8003684 <_vfprintf_r+0x120c>
 8002db6:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002dba:	f000 82da 	beq.w	8003372 <_vfprintf_r+0xefa>
 8002dbe:	7814      	ldrb	r4, [r2, #0]
 8002dc0:	9308      	str	r3, [sp, #32]
 8002dc2:	2500      	movs	r5, #0
 8002dc4:	e488      	b.n	80026d8 <_vfprintf_r+0x260>
 8002dc6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002dca:	f002 fd45 	bl	8005858 <__retarget_lock_release_recursive>
 8002dce:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002dd2:	9305      	str	r3, [sp, #20]
 8002dd4:	e443      	b.n	800265e <_vfprintf_r+0x1e6>
 8002dd6:	2e00      	cmp	r6, #0
 8002dd8:	f43f adf8 	beq.w	80029cc <_vfprintf_r+0x554>
 8002ddc:	2300      	movs	r3, #0
 8002dde:	2101      	movs	r1, #1
 8002de0:	461a      	mov	r2, r3
 8002de2:	9104      	str	r1, [sp, #16]
 8002de4:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002de8:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002dec:	930a      	str	r3, [sp, #40]	; 0x28
 8002dee:	4699      	mov	r9, r3
 8002df0:	930f      	str	r3, [sp, #60]	; 0x3c
 8002df2:	9314      	str	r3, [sp, #80]	; 0x50
 8002df4:	9311      	str	r3, [sp, #68]	; 0x44
 8002df6:	9109      	str	r1, [sp, #36]	; 0x24
 8002df8:	af3d      	add	r7, sp, #244	; 0xf4
 8002dfa:	e4ce      	b.n	800279a <_vfprintf_r+0x322>
 8002dfc:	2e65      	cmp	r6, #101	; 0x65
 8002dfe:	f340 80ca 	ble.w	8002f96 <_vfprintf_r+0xb1e>
 8002e02:	2200      	movs	r2, #0
 8002e04:	2300      	movs	r3, #0
 8002e06:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002e0a:	f7fe f8fd 	bl	8001008 <__aeabi_dcmpeq>
 8002e0e:	2800      	cmp	r0, #0
 8002e10:	f000 8169 	beq.w	80030e6 <_vfprintf_r+0xc6e>
 8002e14:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e16:	4a22      	ldr	r2, [pc, #136]	; (8002ea0 <_vfprintf_r+0xa28>)
 8002e18:	f8cb 2000 	str.w	r2, [fp]
 8002e1c:	3301      	adds	r3, #1
 8002e1e:	3401      	adds	r4, #1
 8002e20:	2201      	movs	r2, #1
 8002e22:	2b07      	cmp	r3, #7
 8002e24:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e28:	f8cb 2004 	str.w	r2, [fp, #4]
 8002e2c:	f300 8406 	bgt.w	800363c <_vfprintf_r+0x11c4>
 8002e30:	f10b 0b08 	add.w	fp, fp, #8
 8002e34:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002e36:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002e38:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002e3a:	4293      	cmp	r3, r2
 8002e3c:	db03      	blt.n	8002e46 <_vfprintf_r+0x9ce>
 8002e3e:	f018 0f01 	tst.w	r8, #1
 8002e42:	f43f ad6a 	beq.w	800291a <_vfprintf_r+0x4a2>
 8002e46:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e48:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002e4a:	f8cb 2000 	str.w	r2, [fp]
 8002e4e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002e50:	f8cb 2004 	str.w	r2, [fp, #4]
 8002e54:	3301      	adds	r3, #1
 8002e56:	4414      	add	r4, r2
 8002e58:	2b07      	cmp	r3, #7
 8002e5a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e5e:	f300 8517 	bgt.w	8003890 <_vfprintf_r+0x1418>
 8002e62:	f10b 0b08 	add.w	fp, fp, #8
 8002e66:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002e68:	1e5d      	subs	r5, r3, #1
 8002e6a:	2d00      	cmp	r5, #0
 8002e6c:	f77f ad55 	ble.w	800291a <_vfprintf_r+0x4a2>
 8002e70:	2d10      	cmp	r5, #16
 8002e72:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e74:	4b0b      	ldr	r3, [pc, #44]	; (8002ea4 <_vfprintf_r+0xa2c>)
 8002e76:	f340 82e7 	ble.w	8003448 <_vfprintf_r+0xfd0>
 8002e7a:	4619      	mov	r1, r3
 8002e7c:	2610      	movs	r6, #16
 8002e7e:	4623      	mov	r3, r4
 8002e80:	9f03      	ldr	r7, [sp, #12]
 8002e82:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002e86:	460c      	mov	r4, r1
 8002e88:	e014      	b.n	8002eb4 <_vfprintf_r+0xa3c>
 8002e8a:	bf00      	nop
 8002e8c:	7fefffff 	.word	0x7fefffff
 8002e90:	08007178 	.word	0x08007178
 8002e94:	08007174 	.word	0x08007174
 8002e98:	08007198 	.word	0x08007198
 8002e9c:	08007184 	.word	0x08007184
 8002ea0:	080071b4 	.word	0x080071b4
 8002ea4:	080071c8 	.word	0x080071c8
 8002ea8:	f10b 0b08 	add.w	fp, fp, #8
 8002eac:	3d10      	subs	r5, #16
 8002eae:	2d10      	cmp	r5, #16
 8002eb0:	f340 82c7 	ble.w	8003442 <_vfprintf_r+0xfca>
 8002eb4:	3201      	adds	r2, #1
 8002eb6:	3310      	adds	r3, #16
 8002eb8:	2a07      	cmp	r2, #7
 8002eba:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002ebe:	e9cb 4600 	strd	r4, r6, [fp]
 8002ec2:	ddf1      	ble.n	8002ea8 <_vfprintf_r+0xa30>
 8002ec4:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ec6:	4649      	mov	r1, r9
 8002ec8:	4638      	mov	r0, r7
 8002eca:	f003 fe03 	bl	8006ad4 <__sprint_r>
 8002ece:	2800      	cmp	r0, #0
 8002ed0:	d14c      	bne.n	8002f6c <_vfprintf_r+0xaf4>
 8002ed2:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002ed6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002eda:	e7e7      	b.n	8002eac <_vfprintf_r+0xa34>
 8002edc:	9b06      	ldr	r3, [sp, #24]
 8002ede:	9a04      	ldr	r2, [sp, #16]
 8002ee0:	1a9d      	subs	r5, r3, r2
 8002ee2:	2d00      	cmp	r5, #0
 8002ee4:	f77f acc9 	ble.w	800287a <_vfprintf_r+0x402>
 8002ee8:	2d10      	cmp	r5, #16
 8002eea:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002eec:	4bbc      	ldr	r3, [pc, #752]	; (80031e0 <_vfprintf_r+0xd68>)
 8002eee:	dd27      	ble.n	8002f40 <_vfprintf_r+0xac8>
 8002ef0:	4659      	mov	r1, fp
 8002ef2:	4620      	mov	r0, r4
 8002ef4:	46bb      	mov	fp, r7
 8002ef6:	461c      	mov	r4, r3
 8002ef8:	4637      	mov	r7, r6
 8002efa:	9e07      	ldr	r6, [sp, #28]
 8002efc:	e004      	b.n	8002f08 <_vfprintf_r+0xa90>
 8002efe:	3d10      	subs	r5, #16
 8002f00:	2d10      	cmp	r5, #16
 8002f02:	f101 0108 	add.w	r1, r1, #8
 8002f06:	dd16      	ble.n	8002f36 <_vfprintf_r+0xabe>
 8002f08:	3201      	adds	r2, #1
 8002f0a:	3010      	adds	r0, #16
 8002f0c:	2310      	movs	r3, #16
 8002f0e:	2a07      	cmp	r2, #7
 8002f10:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002f14:	600c      	str	r4, [r1, #0]
 8002f16:	604b      	str	r3, [r1, #4]
 8002f18:	ddf1      	ble.n	8002efe <_vfprintf_r+0xa86>
 8002f1a:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f1c:	4631      	mov	r1, r6
 8002f1e:	9803      	ldr	r0, [sp, #12]
 8002f20:	f003 fdd8 	bl	8006ad4 <__sprint_r>
 8002f24:	2800      	cmp	r0, #0
 8002f26:	f040 80a8 	bne.w	800307a <_vfprintf_r+0xc02>
 8002f2a:	3d10      	subs	r5, #16
 8002f2c:	2d10      	cmp	r5, #16
 8002f2e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002f32:	a92d      	add	r1, sp, #180	; 0xb4
 8002f34:	dce8      	bgt.n	8002f08 <_vfprintf_r+0xa90>
 8002f36:	463e      	mov	r6, r7
 8002f38:	4623      	mov	r3, r4
 8002f3a:	465f      	mov	r7, fp
 8002f3c:	4604      	mov	r4, r0
 8002f3e:	468b      	mov	fp, r1
 8002f40:	3201      	adds	r2, #1
 8002f42:	442c      	add	r4, r5
 8002f44:	2a07      	cmp	r2, #7
 8002f46:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002f4a:	e9cb 3500 	strd	r3, r5, [fp]
 8002f4e:	f300 8292 	bgt.w	8003476 <_vfprintf_r+0xffe>
 8002f52:	f10b 0b08 	add.w	fp, fp, #8
 8002f56:	e490      	b.n	800287a <_vfprintf_r+0x402>
 8002f58:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f5a:	9907      	ldr	r1, [sp, #28]
 8002f5c:	9803      	ldr	r0, [sp, #12]
 8002f5e:	f003 fdb9 	bl	8006ad4 <__sprint_r>
 8002f62:	2800      	cmp	r0, #0
 8002f64:	f43f ad23 	beq.w	80029ae <_vfprintf_r+0x536>
 8002f68:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002f6c:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002f6e:	b111      	cbz	r1, 8002f76 <_vfprintf_r+0xafe>
 8002f70:	9803      	ldr	r0, [sp, #12]
 8002f72:	f002 f9c1 	bl	80052f8 <_free_r>
 8002f76:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002f7a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002f7e:	07d0      	lsls	r0, r2, #31
 8002f80:	d402      	bmi.n	8002f88 <_vfprintf_r+0xb10>
 8002f82:	0599      	lsls	r1, r3, #22
 8002f84:	f140 81d0 	bpl.w	8003328 <_vfprintf_r+0xeb0>
 8002f88:	065a      	lsls	r2, r3, #25
 8002f8a:	f53f ab65 	bmi.w	8002658 <_vfprintf_r+0x1e0>
 8002f8e:	9805      	ldr	r0, [sp, #20]
 8002f90:	b057      	add	sp, #348	; 0x15c
 8002f92:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002f96:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002f98:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f9a:	2a01      	cmp	r2, #1
 8002f9c:	f104 0401 	add.w	r4, r4, #1
 8002fa0:	f103 0501 	add.w	r5, r3, #1
 8002fa4:	f10b 0608 	add.w	r6, fp, #8
 8002fa8:	f340 811c 	ble.w	80031e4 <_vfprintf_r+0xd6c>
 8002fac:	2301      	movs	r3, #1
 8002fae:	2d07      	cmp	r5, #7
 8002fb0:	f8cb 7000 	str.w	r7, [fp]
 8002fb4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002fb8:	f8cb 3004 	str.w	r3, [fp, #4]
 8002fbc:	f300 81bb 	bgt.w	8003336 <_vfprintf_r+0xebe>
 8002fc0:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002fc2:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002fc4:	1c69      	adds	r1, r5, #1
 8002fc6:	441c      	add	r4, r3
 8002fc8:	2907      	cmp	r1, #7
 8002fca:	910b      	str	r1, [sp, #44]	; 0x2c
 8002fcc:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8002fd0:	e9c6 2300 	strd	r2, r3, [r6]
 8002fd4:	f300 81bb 	bgt.w	800334e <_vfprintf_r+0xed6>
 8002fd8:	3608      	adds	r6, #8
 8002fda:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002fdc:	1c53      	adds	r3, r2, #1
 8002fde:	461d      	mov	r5, r3
 8002fe0:	9509      	str	r5, [sp, #36]	; 0x24
 8002fe2:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8002fe4:	930e      	str	r3, [sp, #56]	; 0x38
 8002fe6:	2200      	movs	r2, #0
 8002fe8:	2300      	movs	r3, #0
 8002fea:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002fee:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8002ff2:	f106 0b08 	add.w	fp, r6, #8
 8002ff6:	f7fe f807 	bl	8001008 <__aeabi_dcmpeq>
 8002ffa:	2800      	cmp	r0, #0
 8002ffc:	f040 80c2 	bne.w	8003184 <_vfprintf_r+0xd0c>
 8003000:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8003002:	f8c6 9004 	str.w	r9, [r6, #4]
 8003006:	3701      	adds	r7, #1
 8003008:	444c      	add	r4, r9
 800300a:	2d07      	cmp	r5, #7
 800300c:	6037      	str	r7, [r6, #0]
 800300e:	942c      	str	r4, [sp, #176]	; 0xb0
 8003010:	952b      	str	r5, [sp, #172]	; 0xac
 8003012:	f300 80f9 	bgt.w	8003208 <_vfprintf_r+0xd90>
 8003016:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003018:	f106 0310 	add.w	r3, r6, #16
 800301c:	3202      	adds	r2, #2
 800301e:	465e      	mov	r6, fp
 8003020:	9209      	str	r2, [sp, #36]	; 0x24
 8003022:	469b      	mov	fp, r3
 8003024:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003026:	6072      	str	r2, [r6, #4]
 8003028:	4414      	add	r4, r2
 800302a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800302c:	942c      	str	r4, [sp, #176]	; 0xb0
 800302e:	ab26      	add	r3, sp, #152	; 0x98
 8003030:	2a07      	cmp	r2, #7
 8003032:	922b      	str	r2, [sp, #172]	; 0xac
 8003034:	6033      	str	r3, [r6, #0]
 8003036:	f77f ac70 	ble.w	800291a <_vfprintf_r+0x4a2>
 800303a:	aa2a      	add	r2, sp, #168	; 0xa8
 800303c:	9907      	ldr	r1, [sp, #28]
 800303e:	9803      	ldr	r0, [sp, #12]
 8003040:	f003 fd48 	bl	8006ad4 <__sprint_r>
 8003044:	2800      	cmp	r0, #0
 8003046:	d18f      	bne.n	8002f68 <_vfprintf_r+0xaf0>
 8003048:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800304a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800304e:	e464      	b.n	800291a <_vfprintf_r+0x4a2>
 8003050:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003052:	af56      	add	r7, sp, #344	; 0x158
 8003054:	0923      	lsrs	r3, r4, #4
 8003056:	f004 010f 	and.w	r1, r4, #15
 800305a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800305e:	092a      	lsrs	r2, r5, #4
 8003060:	461c      	mov	r4, r3
 8003062:	4615      	mov	r5, r2
 8003064:	5c43      	ldrb	r3, [r0, r1]
 8003066:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800306a:	ea54 0305 	orrs.w	r3, r4, r5
 800306e:	d1f1      	bne.n	8003054 <_vfprintf_r+0xbdc>
 8003070:	9b04      	ldr	r3, [sp, #16]
 8003072:	1bdb      	subs	r3, r3, r7
 8003074:	9309      	str	r3, [sp, #36]	; 0x24
 8003076:	f7ff bb80 	b.w	800277a <_vfprintf_r+0x302>
 800307a:	46b1      	mov	r9, r6
 800307c:	e776      	b.n	8002f6c <_vfprintf_r+0xaf4>
 800307e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003080:	9907      	ldr	r1, [sp, #28]
 8003082:	9803      	ldr	r0, [sp, #12]
 8003084:	f003 fd26 	bl	8006ad4 <__sprint_r>
 8003088:	2800      	cmp	r0, #0
 800308a:	f47f af6d 	bne.w	8002f68 <_vfprintf_r+0xaf0>
 800308e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003090:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003094:	f7ff bbdd 	b.w	8002852 <_vfprintf_r+0x3da>
 8003098:	aa2a      	add	r2, sp, #168	; 0xa8
 800309a:	9907      	ldr	r1, [sp, #28]
 800309c:	9803      	ldr	r0, [sp, #12]
 800309e:	f003 fd19 	bl	8006ad4 <__sprint_r>
 80030a2:	2800      	cmp	r0, #0
 80030a4:	f47f af60 	bne.w	8002f68 <_vfprintf_r+0xaf0>
 80030a8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030aa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030ae:	f7ff bbe0 	b.w	8002872 <_vfprintf_r+0x3fa>
 80030b2:	4698      	mov	r8, r3
 80030b4:	2d00      	cmp	r5, #0
 80030b6:	bf08      	it	eq
 80030b8:	2c0a      	cmpeq	r4, #10
 80030ba:	f080 8170 	bcs.w	800339e <_vfprintf_r+0xf26>
 80030be:	af56      	add	r7, sp, #344	; 0x158
 80030c0:	3430      	adds	r4, #48	; 0x30
 80030c2:	2301      	movs	r3, #1
 80030c4:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80030c8:	9309      	str	r3, [sp, #36]	; 0x24
 80030ca:	f7ff bb56 	b.w	800277a <_vfprintf_r+0x302>
 80030ce:	aa2a      	add	r2, sp, #168	; 0xa8
 80030d0:	9907      	ldr	r1, [sp, #28]
 80030d2:	9803      	ldr	r0, [sp, #12]
 80030d4:	f003 fcfe 	bl	8006ad4 <__sprint_r>
 80030d8:	2800      	cmp	r0, #0
 80030da:	f47f af45 	bne.w	8002f68 <_vfprintf_r+0xaf0>
 80030de:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030e0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030e4:	e406      	b.n	80028f4 <_vfprintf_r+0x47c>
 80030e6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80030e8:	2b00      	cmp	r3, #0
 80030ea:	f340 8273 	ble.w	80035d4 <_vfprintf_r+0x115c>
 80030ee:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80030f2:	4293      	cmp	r3, r2
 80030f4:	bfa8      	it	ge
 80030f6:	4613      	movge	r3, r2
 80030f8:	2b00      	cmp	r3, #0
 80030fa:	461d      	mov	r5, r3
 80030fc:	dd0d      	ble.n	800311a <_vfprintf_r+0xca2>
 80030fe:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003100:	f8cb 7000 	str.w	r7, [fp]
 8003104:	3301      	adds	r3, #1
 8003106:	442c      	add	r4, r5
 8003108:	2b07      	cmp	r3, #7
 800310a:	942c      	str	r4, [sp, #176]	; 0xb0
 800310c:	f8cb 5004 	str.w	r5, [fp, #4]
 8003110:	932b      	str	r3, [sp, #172]	; 0xac
 8003112:	f300 82c1 	bgt.w	8003698 <_vfprintf_r+0x1220>
 8003116:	f10b 0b08 	add.w	fp, fp, #8
 800311a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800311c:	2d00      	cmp	r5, #0
 800311e:	bfa8      	it	ge
 8003120:	1b5b      	subge	r3, r3, r5
 8003122:	2b00      	cmp	r3, #0
 8003124:	461d      	mov	r5, r3
 8003126:	f340 8099 	ble.w	800325c <_vfprintf_r+0xde4>
 800312a:	2d10      	cmp	r5, #16
 800312c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800312e:	4b2c      	ldr	r3, [pc, #176]	; (80031e0 <_vfprintf_r+0xd68>)
 8003130:	f340 83db 	ble.w	80038ea <_vfprintf_r+0x1472>
 8003134:	4618      	mov	r0, r3
 8003136:	4621      	mov	r1, r4
 8003138:	465b      	mov	r3, fp
 800313a:	2610      	movs	r6, #16
 800313c:	46bb      	mov	fp, r7
 800313e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003142:	9c07      	ldr	r4, [sp, #28]
 8003144:	4607      	mov	r7, r0
 8003146:	e004      	b.n	8003152 <_vfprintf_r+0xcda>
 8003148:	3308      	adds	r3, #8
 800314a:	3d10      	subs	r5, #16
 800314c:	2d10      	cmp	r5, #16
 800314e:	f340 83c7 	ble.w	80038e0 <_vfprintf_r+0x1468>
 8003152:	3201      	adds	r2, #1
 8003154:	3110      	adds	r1, #16
 8003156:	2a07      	cmp	r2, #7
 8003158:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800315c:	e9c3 7600 	strd	r7, r6, [r3]
 8003160:	ddf2      	ble.n	8003148 <_vfprintf_r+0xcd0>
 8003162:	aa2a      	add	r2, sp, #168	; 0xa8
 8003164:	4621      	mov	r1, r4
 8003166:	4648      	mov	r0, r9
 8003168:	f003 fcb4 	bl	8006ad4 <__sprint_r>
 800316c:	2800      	cmp	r0, #0
 800316e:	f040 84a5 	bne.w	8003abc <_vfprintf_r+0x1644>
 8003172:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003176:	ab2d      	add	r3, sp, #180	; 0xb4
 8003178:	e7e7      	b.n	800314a <_vfprintf_r+0xcd2>
 800317a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800317e:	af56      	add	r7, sp, #344	; 0x158
 8003180:	f7ff bafb 	b.w	800277a <_vfprintf_r+0x302>
 8003184:	f1b9 0f00 	cmp.w	r9, #0
 8003188:	f77f af4c 	ble.w	8003024 <_vfprintf_r+0xbac>
 800318c:	f1b9 0f10 	cmp.w	r9, #16
 8003190:	4b13      	ldr	r3, [pc, #76]	; (80031e0 <_vfprintf_r+0xd68>)
 8003192:	f340 8659 	ble.w	8003e48 <_vfprintf_r+0x19d0>
 8003196:	4619      	mov	r1, r3
 8003198:	4622      	mov	r2, r4
 800319a:	4633      	mov	r3, r6
 800319c:	2710      	movs	r7, #16
 800319e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80031a2:	9c07      	ldr	r4, [sp, #28]
 80031a4:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80031a6:	460e      	mov	r6, r1
 80031a8:	e007      	b.n	80031ba <_vfprintf_r+0xd42>
 80031aa:	3308      	adds	r3, #8
 80031ac:	f1a9 0910 	sub.w	r9, r9, #16
 80031b0:	f1b9 0f10 	cmp.w	r9, #16
 80031b4:	f340 8353 	ble.w	800385e <_vfprintf_r+0x13e6>
 80031b8:	3501      	adds	r5, #1
 80031ba:	3210      	adds	r2, #16
 80031bc:	2d07      	cmp	r5, #7
 80031be:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80031c2:	e9c3 6700 	strd	r6, r7, [r3]
 80031c6:	ddf0      	ble.n	80031aa <_vfprintf_r+0xd32>
 80031c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80031ca:	4621      	mov	r1, r4
 80031cc:	4658      	mov	r0, fp
 80031ce:	f003 fc81 	bl	8006ad4 <__sprint_r>
 80031d2:	2800      	cmp	r0, #0
 80031d4:	f040 8472 	bne.w	8003abc <_vfprintf_r+0x1644>
 80031d8:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80031dc:	ab2d      	add	r3, sp, #180	; 0xb4
 80031de:	e7e5      	b.n	80031ac <_vfprintf_r+0xd34>
 80031e0:	080071c8 	.word	0x080071c8
 80031e4:	f018 0f01 	tst.w	r8, #1
 80031e8:	f47f aee0 	bne.w	8002fac <_vfprintf_r+0xb34>
 80031ec:	2201      	movs	r2, #1
 80031ee:	2d07      	cmp	r5, #7
 80031f0:	f8cb 7000 	str.w	r7, [fp]
 80031f4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80031f8:	f8cb 2004 	str.w	r2, [fp, #4]
 80031fc:	dc04      	bgt.n	8003208 <_vfprintf_r+0xd90>
 80031fe:	3302      	adds	r3, #2
 8003200:	9309      	str	r3, [sp, #36]	; 0x24
 8003202:	f10b 0b10 	add.w	fp, fp, #16
 8003206:	e70d      	b.n	8003024 <_vfprintf_r+0xbac>
 8003208:	aa2a      	add	r2, sp, #168	; 0xa8
 800320a:	9907      	ldr	r1, [sp, #28]
 800320c:	9803      	ldr	r0, [sp, #12]
 800320e:	f003 fc61 	bl	8006ad4 <__sprint_r>
 8003212:	2800      	cmp	r0, #0
 8003214:	f47f aea8 	bne.w	8002f68 <_vfprintf_r+0xaf0>
 8003218:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800321c:	3301      	adds	r3, #1
 800321e:	9309      	str	r3, [sp, #36]	; 0x24
 8003220:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003224:	ae2d      	add	r6, sp, #180	; 0xb4
 8003226:	e6fd      	b.n	8003024 <_vfprintf_r+0xbac>
 8003228:	aa2a      	add	r2, sp, #168	; 0xa8
 800322a:	9907      	ldr	r1, [sp, #28]
 800322c:	9803      	ldr	r0, [sp, #12]
 800322e:	f003 fc51 	bl	8006ad4 <__sprint_r>
 8003232:	2800      	cmp	r0, #0
 8003234:	f47f ae98 	bne.w	8002f68 <_vfprintf_r+0xaf0>
 8003238:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800323c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800323e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003242:	f7ff baf6 	b.w	8002832 <_vfprintf_r+0x3ba>
 8003246:	aa2a      	add	r2, sp, #168	; 0xa8
 8003248:	9907      	ldr	r1, [sp, #28]
 800324a:	9803      	ldr	r0, [sp, #12]
 800324c:	f003 fc42 	bl	8006ad4 <__sprint_r>
 8003250:	2800      	cmp	r0, #0
 8003252:	f47f ae89 	bne.w	8002f68 <_vfprintf_r+0xaf0>
 8003256:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003258:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800325c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800325e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003262:	443b      	add	r3, r7
 8003264:	4699      	mov	r9, r3
 8003266:	f040 8357 	bne.w	8003918 <_vfprintf_r+0x14a0>
 800326a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800326c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800326e:	4293      	cmp	r3, r2
 8003270:	db49      	blt.n	8003306 <_vfprintf_r+0xe8e>
 8003272:	f018 0f01 	tst.w	r8, #1
 8003276:	d146      	bne.n	8003306 <_vfprintf_r+0xe8e>
 8003278:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800327a:	18bd      	adds	r5, r7, r2
 800327c:	eba5 0509 	sub.w	r5, r5, r9
 8003280:	1ad3      	subs	r3, r2, r3
 8003282:	429d      	cmp	r5, r3
 8003284:	bfa8      	it	ge
 8003286:	461d      	movge	r5, r3
 8003288:	2d00      	cmp	r5, #0
 800328a:	dd0d      	ble.n	80032a8 <_vfprintf_r+0xe30>
 800328c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800328e:	f8cb 9000 	str.w	r9, [fp]
 8003292:	3201      	adds	r2, #1
 8003294:	442c      	add	r4, r5
 8003296:	2a07      	cmp	r2, #7
 8003298:	942c      	str	r4, [sp, #176]	; 0xb0
 800329a:	f8cb 5004 	str.w	r5, [fp, #4]
 800329e:	922b      	str	r2, [sp, #172]	; 0xac
 80032a0:	f300 8462 	bgt.w	8003b68 <_vfprintf_r+0x16f0>
 80032a4:	f10b 0b08 	add.w	fp, fp, #8
 80032a8:	2d00      	cmp	r5, #0
 80032aa:	bfac      	ite	ge
 80032ac:	1b5d      	subge	r5, r3, r5
 80032ae:	461d      	movlt	r5, r3
 80032b0:	2d00      	cmp	r5, #0
 80032b2:	f77f ab32 	ble.w	800291a <_vfprintf_r+0x4a2>
 80032b6:	2d10      	cmp	r5, #16
 80032b8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80032ba:	4bc5      	ldr	r3, [pc, #788]	; (80035d0 <_vfprintf_r+0x1158>)
 80032bc:	f340 80c4 	ble.w	8003448 <_vfprintf_r+0xfd0>
 80032c0:	4619      	mov	r1, r3
 80032c2:	2610      	movs	r6, #16
 80032c4:	4623      	mov	r3, r4
 80032c6:	9f03      	ldr	r7, [sp, #12]
 80032c8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80032cc:	460c      	mov	r4, r1
 80032ce:	e005      	b.n	80032dc <_vfprintf_r+0xe64>
 80032d0:	f10b 0b08 	add.w	fp, fp, #8
 80032d4:	3d10      	subs	r5, #16
 80032d6:	2d10      	cmp	r5, #16
 80032d8:	f340 80b3 	ble.w	8003442 <_vfprintf_r+0xfca>
 80032dc:	3201      	adds	r2, #1
 80032de:	3310      	adds	r3, #16
 80032e0:	2a07      	cmp	r2, #7
 80032e2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80032e6:	e9cb 4600 	strd	r4, r6, [fp]
 80032ea:	ddf1      	ble.n	80032d0 <_vfprintf_r+0xe58>
 80032ec:	aa2a      	add	r2, sp, #168	; 0xa8
 80032ee:	4649      	mov	r1, r9
 80032f0:	4638      	mov	r0, r7
 80032f2:	f003 fbef 	bl	8006ad4 <__sprint_r>
 80032f6:	2800      	cmp	r0, #0
 80032f8:	f47f ae38 	bne.w	8002f6c <_vfprintf_r+0xaf4>
 80032fc:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003300:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003304:	e7e6      	b.n	80032d4 <_vfprintf_r+0xe5c>
 8003306:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003308:	9916      	ldr	r1, [sp, #88]	; 0x58
 800330a:	f8cb 1000 	str.w	r1, [fp]
 800330e:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003310:	f8cb 1004 	str.w	r1, [fp, #4]
 8003314:	3201      	adds	r2, #1
 8003316:	440c      	add	r4, r1
 8003318:	2a07      	cmp	r2, #7
 800331a:	942c      	str	r4, [sp, #176]	; 0xb0
 800331c:	922b      	str	r2, [sp, #172]	; 0xac
 800331e:	f300 828c 	bgt.w	800383a <_vfprintf_r+0x13c2>
 8003322:	f10b 0b08 	add.w	fp, fp, #8
 8003326:	e7a7      	b.n	8003278 <_vfprintf_r+0xe00>
 8003328:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800332c:	f002 fa94 	bl	8005858 <__retarget_lock_release_recursive>
 8003330:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003334:	e628      	b.n	8002f88 <_vfprintf_r+0xb10>
 8003336:	aa2a      	add	r2, sp, #168	; 0xa8
 8003338:	9907      	ldr	r1, [sp, #28]
 800333a:	9803      	ldr	r0, [sp, #12]
 800333c:	f003 fbca 	bl	8006ad4 <__sprint_r>
 8003340:	2800      	cmp	r0, #0
 8003342:	f47f ae11 	bne.w	8002f68 <_vfprintf_r+0xaf0>
 8003346:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800334a:	ae2d      	add	r6, sp, #180	; 0xb4
 800334c:	e638      	b.n	8002fc0 <_vfprintf_r+0xb48>
 800334e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003350:	9907      	ldr	r1, [sp, #28]
 8003352:	9803      	ldr	r0, [sp, #12]
 8003354:	f003 fbbe 	bl	8006ad4 <__sprint_r>
 8003358:	2800      	cmp	r0, #0
 800335a:	f47f ae05 	bne.w	8002f68 <_vfprintf_r+0xaf0>
 800335e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003362:	ae2d      	add	r6, sp, #180	; 0xb4
 8003364:	930b      	str	r3, [sp, #44]	; 0x2c
 8003366:	e638      	b.n	8002fda <_vfprintf_r+0xb62>
 8003368:	6814      	ldr	r4, [r2, #0]
 800336a:	9308      	str	r3, [sp, #32]
 800336c:	2500      	movs	r5, #0
 800336e:	f7ff bb95 	b.w	8002a9c <_vfprintf_r+0x624>
 8003372:	6814      	ldr	r4, [r2, #0]
 8003374:	9308      	str	r3, [sp, #32]
 8003376:	2500      	movs	r5, #0
 8003378:	f7ff b9ae 	b.w	80026d8 <_vfprintf_r+0x260>
 800337c:	680c      	ldr	r4, [r1, #0]
 800337e:	9208      	str	r2, [sp, #32]
 8003380:	17e5      	asrs	r5, r4, #31
 8003382:	4620      	mov	r0, r4
 8003384:	4629      	mov	r1, r5
 8003386:	f7ff b9d2 	b.w	800272e <_vfprintf_r+0x2b6>
 800338a:	6814      	ldr	r4, [r2, #0]
 800338c:	9108      	str	r1, [sp, #32]
 800338e:	2201      	movs	r2, #1
 8003390:	2500      	movs	r5, #0
 8003392:	f7ff bb32 	b.w	80029fa <_vfprintf_r+0x582>
 8003396:	2a01      	cmp	r2, #1
 8003398:	f47f ab3c 	bne.w	8002a14 <_vfprintf_r+0x59c>
 800339c:	e68f      	b.n	80030be <_vfprintf_r+0xc46>
 800339e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 80033a2:	2200      	movs	r2, #0
 80033a4:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80033a8:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80033ac:	af56      	add	r7, sp, #344	; 0x158
 80033ae:	4692      	mov	sl, r2
 80033b0:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 80033b4:	461e      	mov	r6, r3
 80033b6:	e00a      	b.n	80033ce <_vfprintf_r+0xf56>
 80033b8:	2300      	movs	r3, #0
 80033ba:	4620      	mov	r0, r4
 80033bc:	4629      	mov	r1, r5
 80033be:	220a      	movs	r2, #10
 80033c0:	f7fc ff1e 	bl	8000200 <__aeabi_uldivmod>
 80033c4:	4604      	mov	r4, r0
 80033c6:	460d      	mov	r5, r1
 80033c8:	ea54 0305 	orrs.w	r3, r4, r5
 80033cc:	d029      	beq.n	8003422 <_vfprintf_r+0xfaa>
 80033ce:	220a      	movs	r2, #10
 80033d0:	2300      	movs	r3, #0
 80033d2:	4620      	mov	r0, r4
 80033d4:	4629      	mov	r1, r5
 80033d6:	f7fc ff13 	bl	8000200 <__aeabi_uldivmod>
 80033da:	3230      	adds	r2, #48	; 0x30
 80033dc:	f807 2c01 	strb.w	r2, [r7, #-1]
 80033e0:	f10a 0a01 	add.w	sl, sl, #1
 80033e4:	3f01      	subs	r7, #1
 80033e6:	2e00      	cmp	r6, #0
 80033e8:	d0e6      	beq.n	80033b8 <_vfprintf_r+0xf40>
 80033ea:	f898 3000 	ldrb.w	r3, [r8]
 80033ee:	459a      	cmp	sl, r3
 80033f0:	d1e2      	bne.n	80033b8 <_vfprintf_r+0xf40>
 80033f2:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80033f6:	d0df      	beq.n	80033b8 <_vfprintf_r+0xf40>
 80033f8:	2d00      	cmp	r5, #0
 80033fa:	bf08      	it	eq
 80033fc:	2c0a      	cmpeq	r4, #10
 80033fe:	d3db      	bcc.n	80033b8 <_vfprintf_r+0xf40>
 8003400:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003402:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003404:	1aff      	subs	r7, r7, r3
 8003406:	461a      	mov	r2, r3
 8003408:	4638      	mov	r0, r7
 800340a:	f003 faf5 	bl	80069f8 <strncpy>
 800340e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003412:	2b00      	cmp	r3, #0
 8003414:	f000 8496 	beq.w	8003d44 <_vfprintf_r+0x18cc>
 8003418:	f108 0801 	add.w	r8, r8, #1
 800341c:	f04f 0a00 	mov.w	sl, #0
 8003420:	e7ca      	b.n	80033b8 <_vfprintf_r+0xf40>
 8003422:	9b04      	ldr	r3, [sp, #16]
 8003424:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003428:	1bdb      	subs	r3, r3, r7
 800342a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 800342e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003430:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003434:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003438:	9309      	str	r3, [sp, #36]	; 0x24
 800343a:	f7ff b99e 	b.w	800277a <_vfprintf_r+0x302>
 800343e:	46c1      	mov	r9, r8
 8003440:	e594      	b.n	8002f6c <_vfprintf_r+0xaf4>
 8003442:	4621      	mov	r1, r4
 8003444:	461c      	mov	r4, r3
 8003446:	460b      	mov	r3, r1
 8003448:	3201      	adds	r2, #1
 800344a:	442c      	add	r4, r5
 800344c:	2a07      	cmp	r2, #7
 800344e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003452:	e9cb 3500 	strd	r3, r5, [fp]
 8003456:	f77f aa5e 	ble.w	8002916 <_vfprintf_r+0x49e>
 800345a:	e5ee      	b.n	800303a <_vfprintf_r+0xbc2>
 800345c:	f018 0f10 	tst.w	r8, #16
 8003460:	f040 80f8 	bne.w	8003654 <_vfprintf_r+0x11dc>
 8003464:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003468:	f000 8351 	beq.w	8003b0e <_vfprintf_r+0x1696>
 800346c:	9a05      	ldr	r2, [sp, #20]
 800346e:	801a      	strh	r2, [r3, #0]
 8003470:	4657      	mov	r7, sl
 8003472:	f7ff baa7 	b.w	80029c4 <_vfprintf_r+0x54c>
 8003476:	aa2a      	add	r2, sp, #168	; 0xa8
 8003478:	9907      	ldr	r1, [sp, #28]
 800347a:	9803      	ldr	r0, [sp, #12]
 800347c:	f003 fb2a 	bl	8006ad4 <__sprint_r>
 8003480:	2800      	cmp	r0, #0
 8003482:	f47f ad71 	bne.w	8002f68 <_vfprintf_r+0xaf0>
 8003486:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003488:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800348c:	f7ff b9f5 	b.w	800287a <_vfprintf_r+0x402>
 8003490:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003494:	4602      	mov	r2, r0
 8003496:	460b      	mov	r3, r1
 8003498:	f7fd fde8 	bl	800106c <__aeabi_dcmpun>
 800349c:	2800      	cmp	r0, #0
 800349e:	f040 8491 	bne.w	8003dc4 <_vfprintf_r+0x194c>
 80034a2:	2e61      	cmp	r6, #97	; 0x61
 80034a4:	f000 8111 	beq.w	80036ca <_vfprintf_r+0x1252>
 80034a8:	2e41      	cmp	r6, #65	; 0x41
 80034aa:	f000 8377 	beq.w	8003b9c <_vfprintf_r+0x1724>
 80034ae:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80034b2:	f026 0220 	bic.w	r2, r6, #32
 80034b6:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80034ba:	930e      	str	r3, [sp, #56]	; 0x38
 80034bc:	9204      	str	r2, [sp, #16]
 80034be:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80034c0:	f000 842d 	beq.w	8003d1e <_vfprintf_r+0x18a6>
 80034c4:	2a47      	cmp	r2, #71	; 0x47
 80034c6:	f000 8424 	beq.w	8003d12 <_vfprintf_r+0x189a>
 80034ca:	2b00      	cmp	r3, #0
 80034cc:	f2c0 82f9 	blt.w	8003ac2 <_vfprintf_r+0x164a>
 80034d0:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80034d4:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80034d8:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80034dc:	2e66      	cmp	r6, #102	; 0x66
 80034de:	f000 83eb 	beq.w	8003cb8 <_vfprintf_r+0x1840>
 80034e2:	2e46      	cmp	r6, #70	; 0x46
 80034e4:	f000 847e 	beq.w	8003de4 <_vfprintf_r+0x196c>
 80034e8:	9b04      	ldr	r3, [sp, #16]
 80034ea:	9803      	ldr	r0, [sp, #12]
 80034ec:	2b45      	cmp	r3, #69	; 0x45
 80034ee:	bf0c      	ite	eq
 80034f0:	f109 0501 	addeq.w	r5, r9, #1
 80034f4:	464d      	movne	r5, r9
 80034f6:	aa28      	add	r2, sp, #160	; 0xa0
 80034f8:	ab25      	add	r3, sp, #148	; 0x94
 80034fa:	e9cd 3200 	strd	r3, r2, [sp]
 80034fe:	2102      	movs	r1, #2
 8003500:	ab24      	add	r3, sp, #144	; 0x90
 8003502:	462a      	mov	r2, r5
 8003504:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003508:	f000 fe3e 	bl	8004188 <_dtoa_r>
 800350c:	2e67      	cmp	r6, #103	; 0x67
 800350e:	4607      	mov	r7, r0
 8003510:	f040 849c 	bne.w	8003e4c <_vfprintf_r+0x19d4>
 8003514:	f018 0f01 	tst.w	r8, #1
 8003518:	f040 83f9 	bne.w	8003d0e <_vfprintf_r+0x1896>
 800351c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 800351e:	4640      	mov	r0, r8
 8003520:	1bdb      	subs	r3, r3, r7
 8003522:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003526:	9310      	str	r3, [sp, #64]	; 0x40
 8003528:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800352a:	9311      	str	r3, [sp, #68]	; 0x44
 800352c:	9b04      	ldr	r3, [sp, #16]
 800352e:	2b47      	cmp	r3, #71	; 0x47
 8003530:	f000 81e7 	beq.w	8003902 <_vfprintf_r+0x148a>
 8003534:	9b04      	ldr	r3, [sp, #16]
 8003536:	2b46      	cmp	r3, #70	; 0x46
 8003538:	f000 8300 	beq.w	8003b3c <_vfprintf_r+0x16c4>
 800353c:	9904      	ldr	r1, [sp, #16]
 800353e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003540:	b2f2      	uxtb	r2, r6
 8003542:	2941      	cmp	r1, #65	; 0x41
 8003544:	bf08      	it	eq
 8003546:	320f      	addeq	r2, #15
 8003548:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 800354c:	bf06      	itte	eq
 800354e:	b2d2      	uxtbeq	r2, r2
 8003550:	2101      	moveq	r1, #1
 8003552:	2100      	movne	r1, #0
 8003554:	2b00      	cmp	r3, #0
 8003556:	9324      	str	r3, [sp, #144]	; 0x90
 8003558:	bfb8      	it	lt
 800355a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 800355c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003560:	bfba      	itte	lt
 8003562:	f1c3 0301 	rsblt	r3, r3, #1
 8003566:	222d      	movlt	r2, #45	; 0x2d
 8003568:	222b      	movge	r2, #43	; 0x2b
 800356a:	2b09      	cmp	r3, #9
 800356c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003570:	f300 83f9 	bgt.w	8003d66 <_vfprintf_r+0x18ee>
 8003574:	2900      	cmp	r1, #0
 8003576:	f040 8487 	bne.w	8003e88 <_vfprintf_r+0x1a10>
 800357a:	2230      	movs	r2, #48	; 0x30
 800357c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003580:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003584:	3330      	adds	r3, #48	; 0x30
 8003586:	7013      	strb	r3, [r2, #0]
 8003588:	1c53      	adds	r3, r2, #1
 800358a:	aa26      	add	r2, sp, #152	; 0x98
 800358c:	1a9b      	subs	r3, r3, r2
 800358e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003590:	9319      	str	r3, [sp, #100]	; 0x64
 8003592:	2a01      	cmp	r2, #1
 8003594:	4413      	add	r3, r2
 8003596:	9309      	str	r3, [sp, #36]	; 0x24
 8003598:	f340 8442 	ble.w	8003e20 <_vfprintf_r+0x19a8>
 800359c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800359e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80035a0:	4413      	add	r3, r2
 80035a2:	9309      	str	r3, [sp, #36]	; 0x24
 80035a4:	2300      	movs	r3, #0
 80035a6:	930f      	str	r3, [sp, #60]	; 0x3c
 80035a8:	9314      	str	r3, [sp, #80]	; 0x50
 80035aa:	9311      	str	r3, [sp, #68]	; 0x44
 80035ac:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80035ae:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 80035b2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80035b6:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 80035ba:	9304      	str	r3, [sp, #16]
 80035bc:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80035be:	2b00      	cmp	r3, #0
 80035c0:	f040 8275 	bne.w	8003aae <_vfprintf_r+0x1636>
 80035c4:	4699      	mov	r9, r3
 80035c6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80035ca:	f7ff b8e2 	b.w	8002792 <_vfprintf_r+0x31a>
 80035ce:	bf00      	nop
 80035d0:	080071c8 	.word	0x080071c8
 80035d4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035d6:	49bd      	ldr	r1, [pc, #756]	; (80038cc <_vfprintf_r+0x1454>)
 80035d8:	f8cb 1000 	str.w	r1, [fp]
 80035dc:	3201      	adds	r2, #1
 80035de:	3401      	adds	r4, #1
 80035e0:	2101      	movs	r1, #1
 80035e2:	2a07      	cmp	r2, #7
 80035e4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80035e8:	f8cb 1004 	str.w	r1, [fp, #4]
 80035ec:	dc60      	bgt.n	80036b0 <_vfprintf_r+0x1238>
 80035ee:	f10b 0b08 	add.w	fp, fp, #8
 80035f2:	b92b      	cbnz	r3, 8003600 <_vfprintf_r+0x1188>
 80035f4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80035f6:	b91a      	cbnz	r2, 8003600 <_vfprintf_r+0x1188>
 80035f8:	f018 0f01 	tst.w	r8, #1
 80035fc:	f43f a98d 	beq.w	800291a <_vfprintf_r+0x4a2>
 8003600:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003602:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003604:	f8cb 1000 	str.w	r1, [fp]
 8003608:	9915      	ldr	r1, [sp, #84]	; 0x54
 800360a:	f8cb 1004 	str.w	r1, [fp, #4]
 800360e:	3201      	adds	r2, #1
 8003610:	440c      	add	r4, r1
 8003612:	2a07      	cmp	r2, #7
 8003614:	942c      	str	r4, [sp, #176]	; 0xb0
 8003616:	922b      	str	r2, [sp, #172]	; 0xac
 8003618:	f300 8282 	bgt.w	8003b20 <_vfprintf_r+0x16a8>
 800361c:	f10b 0b08 	add.w	fp, fp, #8
 8003620:	2b00      	cmp	r3, #0
 8003622:	f2c0 82e7 	blt.w	8003bf4 <_vfprintf_r+0x177c>
 8003626:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003628:	3201      	adds	r2, #1
 800362a:	441c      	add	r4, r3
 800362c:	2a07      	cmp	r2, #7
 800362e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003632:	e9cb 7300 	strd	r7, r3, [fp]
 8003636:	f77f a96e 	ble.w	8002916 <_vfprintf_r+0x49e>
 800363a:	e4fe      	b.n	800303a <_vfprintf_r+0xbc2>
 800363c:	aa2a      	add	r2, sp, #168	; 0xa8
 800363e:	9907      	ldr	r1, [sp, #28]
 8003640:	9803      	ldr	r0, [sp, #12]
 8003642:	f003 fa47 	bl	8006ad4 <__sprint_r>
 8003646:	2800      	cmp	r0, #0
 8003648:	f47f ac8e 	bne.w	8002f68 <_vfprintf_r+0xaf0>
 800364c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003650:	f7ff bbf0 	b.w	8002e34 <_vfprintf_r+0x9bc>
 8003654:	9a05      	ldr	r2, [sp, #20]
 8003656:	601a      	str	r2, [r3, #0]
 8003658:	4657      	mov	r7, sl
 800365a:	f7ff b9b3 	b.w	80029c4 <_vfprintf_r+0x54c>
 800365e:	8814      	ldrh	r4, [r2, #0]
 8003660:	9108      	str	r1, [sp, #32]
 8003662:	2500      	movs	r5, #0
 8003664:	2201      	movs	r2, #1
 8003666:	f7ff b9c8 	b.w	80029fa <_vfprintf_r+0x582>
 800366a:	8814      	ldrh	r4, [r2, #0]
 800366c:	9308      	str	r3, [sp, #32]
 800366e:	2500      	movs	r5, #0
 8003670:	f7ff ba14 	b.w	8002a9c <_vfprintf_r+0x624>
 8003674:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003678:	9208      	str	r2, [sp, #32]
 800367a:	17e5      	asrs	r5, r4, #31
 800367c:	4620      	mov	r0, r4
 800367e:	4629      	mov	r1, r5
 8003680:	f7ff b855 	b.w	800272e <_vfprintf_r+0x2b6>
 8003684:	8814      	ldrh	r4, [r2, #0]
 8003686:	9308      	str	r3, [sp, #32]
 8003688:	2500      	movs	r5, #0
 800368a:	f7ff b825 	b.w	80026d8 <_vfprintf_r+0x260>
 800368e:	222d      	movs	r2, #45	; 0x2d
 8003690:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003694:	f7ff baa2 	b.w	8002bdc <_vfprintf_r+0x764>
 8003698:	aa2a      	add	r2, sp, #168	; 0xa8
 800369a:	9907      	ldr	r1, [sp, #28]
 800369c:	9803      	ldr	r0, [sp, #12]
 800369e:	f003 fa19 	bl	8006ad4 <__sprint_r>
 80036a2:	2800      	cmp	r0, #0
 80036a4:	f47f ac60 	bne.w	8002f68 <_vfprintf_r+0xaf0>
 80036a8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036aa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036ae:	e534      	b.n	800311a <_vfprintf_r+0xca2>
 80036b0:	aa2a      	add	r2, sp, #168	; 0xa8
 80036b2:	9907      	ldr	r1, [sp, #28]
 80036b4:	9803      	ldr	r0, [sp, #12]
 80036b6:	f003 fa0d 	bl	8006ad4 <__sprint_r>
 80036ba:	2800      	cmp	r0, #0
 80036bc:	f47f ac54 	bne.w	8002f68 <_vfprintf_r+0xaf0>
 80036c0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80036c2:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036c4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036c8:	e793      	b.n	80035f2 <_vfprintf_r+0x117a>
 80036ca:	2330      	movs	r3, #48	; 0x30
 80036cc:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80036d0:	2378      	movs	r3, #120	; 0x78
 80036d2:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 80036d6:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80036da:	f048 0402 	orr.w	r4, r8, #2
 80036de:	f300 82b0 	bgt.w	8003c42 <_vfprintf_r+0x17ca>
 80036e2:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80036e6:	930e      	str	r3, [sp, #56]	; 0x38
 80036e8:	f026 0320 	bic.w	r3, r6, #32
 80036ec:	9304      	str	r3, [sp, #16]
 80036ee:	2200      	movs	r2, #0
 80036f0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80036f2:	920a      	str	r2, [sp, #40]	; 0x28
 80036f4:	46a0      	mov	r8, r4
 80036f6:	af3d      	add	r7, sp, #244	; 0xf4
 80036f8:	2b00      	cmp	r3, #0
 80036fa:	f2c0 81e3 	blt.w	8003ac4 <_vfprintf_r+0x164c>
 80036fe:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003702:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003706:	2300      	movs	r3, #0
 8003708:	930b      	str	r3, [sp, #44]	; 0x2c
 800370a:	2e61      	cmp	r6, #97	; 0x61
 800370c:	f000 8255 	beq.w	8003bba <_vfprintf_r+0x1742>
 8003710:	2e41      	cmp	r6, #65	; 0x41
 8003712:	f47f aee3 	bne.w	80034dc <_vfprintf_r+0x1064>
 8003716:	a824      	add	r0, sp, #144	; 0x90
 8003718:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800371c:	f003 f8e2 	bl	80068e4 <frexp>
 8003720:	2200      	movs	r2, #0
 8003722:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003726:	ec51 0b10 	vmov	r0, r1, d0
 800372a:	f7fd fa05 	bl	8000b38 <__aeabi_dmul>
 800372e:	2200      	movs	r2, #0
 8003730:	2300      	movs	r3, #0
 8003732:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003736:	f7fd fc67 	bl	8001008 <__aeabi_dcmpeq>
 800373a:	2800      	cmp	r0, #0
 800373c:	f040 8305 	bne.w	8003d4a <_vfprintf_r+0x18d2>
 8003740:	4b63      	ldr	r3, [pc, #396]	; (80038d0 <_vfprintf_r+0x1458>)
 8003742:	9309      	str	r3, [sp, #36]	; 0x24
 8003744:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003748:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 800374c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003750:	9721      	str	r7, [sp, #132]	; 0x84
 8003752:	46b9      	mov	r9, r7
 8003754:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003758:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 800375c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003760:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003764:	e003      	b.n	800376e <_vfprintf_r+0x12f6>
 8003766:	f7fd fc4f 	bl	8001008 <__aeabi_dcmpeq>
 800376a:	bb20      	cbnz	r0, 80037b6 <_vfprintf_r+0x133e>
 800376c:	46a9      	mov	r9, r5
 800376e:	2200      	movs	r2, #0
 8003770:	4b58      	ldr	r3, [pc, #352]	; (80038d4 <_vfprintf_r+0x145c>)
 8003772:	4630      	mov	r0, r6
 8003774:	4639      	mov	r1, r7
 8003776:	f7fd f9df 	bl	8000b38 <__aeabi_dmul>
 800377a:	460f      	mov	r7, r1
 800377c:	4606      	mov	r6, r0
 800377e:	f7fd fc8b 	bl	8001098 <__aeabi_d2iz>
 8003782:	4680      	mov	r8, r0
 8003784:	f7fd f96e 	bl	8000a64 <__aeabi_i2d>
 8003788:	4602      	mov	r2, r0
 800378a:	460b      	mov	r3, r1
 800378c:	4630      	mov	r0, r6
 800378e:	4639      	mov	r1, r7
 8003790:	f7fd f81a 	bl	80007c8 <__aeabi_dsub>
 8003794:	464d      	mov	r5, r9
 8003796:	f81a c008 	ldrb.w	ip, [sl, r8]
 800379a:	f805 cb01 	strb.w	ip, [r5], #1
 800379e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 80037a2:	46a3      	mov	fp, r4
 80037a4:	4606      	mov	r6, r0
 80037a6:	460f      	mov	r7, r1
 80037a8:	f04f 0200 	mov.w	r2, #0
 80037ac:	f04f 0300 	mov.w	r3, #0
 80037b0:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 80037b4:	d1d7      	bne.n	8003766 <_vfprintf_r+0x12ee>
 80037b6:	4630      	mov	r0, r6
 80037b8:	4639      	mov	r1, r7
 80037ba:	2200      	movs	r2, #0
 80037bc:	4b46      	ldr	r3, [pc, #280]	; (80038d8 <_vfprintf_r+0x1460>)
 80037be:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 80037c2:	9e10      	ldr	r6, [sp, #64]	; 0x40
 80037c4:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 80037c8:	4644      	mov	r4, r8
 80037ca:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 80037ce:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 80037d2:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 80037d6:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 80037da:	9f21      	ldr	r7, [sp, #132]	; 0x84
 80037dc:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80037e0:	f7fd fc3a 	bl	8001058 <__aeabi_dcmpgt>
 80037e4:	2800      	cmp	r0, #0
 80037e6:	f040 8176 	bne.w	8003ad6 <_vfprintf_r+0x165e>
 80037ea:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80037ee:	2200      	movs	r2, #0
 80037f0:	4b39      	ldr	r3, [pc, #228]	; (80038d8 <_vfprintf_r+0x1460>)
 80037f2:	f7fd fc09 	bl	8001008 <__aeabi_dcmpeq>
 80037f6:	b110      	cbz	r0, 80037fe <_vfprintf_r+0x1386>
 80037f8:	07e2      	lsls	r2, r4, #31
 80037fa:	f100 816c 	bmi.w	8003ad6 <_vfprintf_r+0x165e>
 80037fe:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003800:	2b00      	cmp	r3, #0
 8003802:	db07      	blt.n	8003814 <_vfprintf_r+0x139c>
 8003804:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003806:	3301      	adds	r3, #1
 8003808:	442b      	add	r3, r5
 800380a:	2230      	movs	r2, #48	; 0x30
 800380c:	f805 2b01 	strb.w	r2, [r5], #1
 8003810:	42ab      	cmp	r3, r5
 8003812:	d1fb      	bne.n	800380c <_vfprintf_r+0x1394>
 8003814:	1beb      	subs	r3, r5, r7
 8003816:	4640      	mov	r0, r8
 8003818:	9310      	str	r3, [sp, #64]	; 0x40
 800381a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800381e:	e683      	b.n	8003528 <_vfprintf_r+0x10b0>
 8003820:	f8cd 9010 	str.w	r9, [sp, #16]
 8003824:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003828:	9408      	str	r4, [sp, #32]
 800382a:	4681      	mov	r9, r0
 800382c:	900f      	str	r0, [sp, #60]	; 0x3c
 800382e:	9014      	str	r0, [sp, #80]	; 0x50
 8003830:	9011      	str	r0, [sp, #68]	; 0x44
 8003832:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003836:	f7fe bfac 	b.w	8002792 <_vfprintf_r+0x31a>
 800383a:	aa2a      	add	r2, sp, #168	; 0xa8
 800383c:	9907      	ldr	r1, [sp, #28]
 800383e:	9803      	ldr	r0, [sp, #12]
 8003840:	f003 f948 	bl	8006ad4 <__sprint_r>
 8003844:	2800      	cmp	r0, #0
 8003846:	f47f ab8f 	bne.w	8002f68 <_vfprintf_r+0xaf0>
 800384a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800384c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800384e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003852:	e511      	b.n	8003278 <_vfprintf_r+0xe00>
 8003854:	4252      	negs	r2, r2
 8003856:	9206      	str	r2, [sp, #24]
 8003858:	9308      	str	r3, [sp, #32]
 800385a:	f7ff b96d 	b.w	8002b38 <_vfprintf_r+0x6c0>
 800385e:	4614      	mov	r4, r2
 8003860:	4632      	mov	r2, r6
 8003862:	461e      	mov	r6, r3
 8003864:	4613      	mov	r3, r2
 8003866:	462a      	mov	r2, r5
 8003868:	3201      	adds	r2, #1
 800386a:	9209      	str	r2, [sp, #36]	; 0x24
 800386c:	f106 0208 	add.w	r2, r6, #8
 8003870:	e9c6 3900 	strd	r3, r9, [r6]
 8003874:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003876:	932b      	str	r3, [sp, #172]	; 0xac
 8003878:	444c      	add	r4, r9
 800387a:	2b07      	cmp	r3, #7
 800387c:	942c      	str	r4, [sp, #176]	; 0xb0
 800387e:	f73f acc3 	bgt.w	8003208 <_vfprintf_r+0xd90>
 8003882:	3301      	adds	r3, #1
 8003884:	9309      	str	r3, [sp, #36]	; 0x24
 8003886:	f102 0b08 	add.w	fp, r2, #8
 800388a:	4616      	mov	r6, r2
 800388c:	f7ff bbca 	b.w	8003024 <_vfprintf_r+0xbac>
 8003890:	aa2a      	add	r2, sp, #168	; 0xa8
 8003892:	9907      	ldr	r1, [sp, #28]
 8003894:	9803      	ldr	r0, [sp, #12]
 8003896:	f003 f91d 	bl	8006ad4 <__sprint_r>
 800389a:	2800      	cmp	r0, #0
 800389c:	f47f ab64 	bne.w	8002f68 <_vfprintf_r+0xaf0>
 80038a0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80038a2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80038a6:	f7ff bade 	b.w	8002e66 <_vfprintf_r+0x9ee>
 80038aa:	464b      	mov	r3, r9
 80038ac:	2b06      	cmp	r3, #6
 80038ae:	bf28      	it	cs
 80038b0:	2306      	movcs	r3, #6
 80038b2:	46b9      	mov	r9, r7
 80038b4:	970f      	str	r7, [sp, #60]	; 0x3c
 80038b6:	9714      	str	r7, [sp, #80]	; 0x50
 80038b8:	9711      	str	r7, [sp, #68]	; 0x44
 80038ba:	970a      	str	r7, [sp, #40]	; 0x28
 80038bc:	463a      	mov	r2, r7
 80038be:	9304      	str	r3, [sp, #16]
 80038c0:	e9cd 4308 	strd	r4, r3, [sp, #32]
 80038c4:	4f05      	ldr	r7, [pc, #20]	; (80038dc <_vfprintf_r+0x1464>)
 80038c6:	f7fe bf64 	b.w	8002792 <_vfprintf_r+0x31a>
 80038ca:	bf00      	nop
 80038cc:	080071b4 	.word	0x080071b4
 80038d0:	08007198 	.word	0x08007198
 80038d4:	40300000 	.word	0x40300000
 80038d8:	3fe00000 	.word	0x3fe00000
 80038dc:	080071ac 	.word	0x080071ac
 80038e0:	460c      	mov	r4, r1
 80038e2:	4639      	mov	r1, r7
 80038e4:	465f      	mov	r7, fp
 80038e6:	469b      	mov	fp, r3
 80038e8:	460b      	mov	r3, r1
 80038ea:	3201      	adds	r2, #1
 80038ec:	442c      	add	r4, r5
 80038ee:	2a07      	cmp	r2, #7
 80038f0:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80038f4:	e9cb 3500 	strd	r3, r5, [fp]
 80038f8:	f73f aca5 	bgt.w	8003246 <_vfprintf_r+0xdce>
 80038fc:	f10b 0b08 	add.w	fp, fp, #8
 8003900:	e4ac      	b.n	800325c <_vfprintf_r+0xde4>
 8003902:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003904:	1cda      	adds	r2, r3, #3
 8003906:	db02      	blt.n	800390e <_vfprintf_r+0x1496>
 8003908:	4599      	cmp	r9, r3
 800390a:	f280 80b5 	bge.w	8003a78 <_vfprintf_r+0x1600>
 800390e:	3e02      	subs	r6, #2
 8003910:	f026 0320 	bic.w	r3, r6, #32
 8003914:	9304      	str	r3, [sp, #16]
 8003916:	e611      	b.n	800353c <_vfprintf_r+0x10c4>
 8003918:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800391a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 800391e:	465a      	mov	r2, fp
 8003920:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003924:	18fb      	adds	r3, r7, r3
 8003926:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 800392a:	970c      	str	r7, [sp, #48]	; 0x30
 800392c:	4eaf      	ldr	r6, [pc, #700]	; (8003bec <_vfprintf_r+0x1774>)
 800392e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003932:	9309      	str	r3, [sp, #36]	; 0x24
 8003934:	464f      	mov	r7, r9
 8003936:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800393a:	4621      	mov	r1, r4
 800393c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800393e:	2b00      	cmp	r3, #0
 8003940:	d05b      	beq.n	80039fa <_vfprintf_r+0x1582>
 8003942:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003944:	2b00      	cmp	r3, #0
 8003946:	d154      	bne.n	80039f2 <_vfprintf_r+0x157a>
 8003948:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800394a:	3b01      	subs	r3, #1
 800394c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003950:	9314      	str	r3, [sp, #80]	; 0x50
 8003952:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003954:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003956:	6010      	str	r0, [r2, #0]
 8003958:	3301      	adds	r3, #1
 800395a:	4459      	add	r1, fp
 800395c:	2b07      	cmp	r3, #7
 800395e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003960:	f8c2 b004 	str.w	fp, [r2, #4]
 8003964:	932b      	str	r3, [sp, #172]	; 0xac
 8003966:	dc68      	bgt.n	8003a3a <_vfprintf_r+0x15c2>
 8003968:	3208      	adds	r2, #8
 800396a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800396c:	f898 3000 	ldrb.w	r3, [r8]
 8003970:	1bc5      	subs	r5, r0, r7
 8003972:	429d      	cmp	r5, r3
 8003974:	bfa8      	it	ge
 8003976:	461d      	movge	r5, r3
 8003978:	2d00      	cmp	r5, #0
 800397a:	dd0b      	ble.n	8003994 <_vfprintf_r+0x151c>
 800397c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800397e:	6017      	str	r7, [r2, #0]
 8003980:	3301      	adds	r3, #1
 8003982:	4429      	add	r1, r5
 8003984:	2b07      	cmp	r3, #7
 8003986:	912c      	str	r1, [sp, #176]	; 0xb0
 8003988:	6055      	str	r5, [r2, #4]
 800398a:	932b      	str	r3, [sp, #172]	; 0xac
 800398c:	dc5e      	bgt.n	8003a4c <_vfprintf_r+0x15d4>
 800398e:	f898 3000 	ldrb.w	r3, [r8]
 8003992:	3208      	adds	r2, #8
 8003994:	2d00      	cmp	r5, #0
 8003996:	bfac      	ite	ge
 8003998:	1b5d      	subge	r5, r3, r5
 800399a:	461d      	movlt	r5, r3
 800399c:	2d00      	cmp	r5, #0
 800399e:	dd26      	ble.n	80039ee <_vfprintf_r+0x1576>
 80039a0:	2d10      	cmp	r5, #16
 80039a2:	982b      	ldr	r0, [sp, #172]	; 0xac
 80039a4:	dd3c      	ble.n	8003a20 <_vfprintf_r+0x15a8>
 80039a6:	2410      	movs	r4, #16
 80039a8:	e003      	b.n	80039b2 <_vfprintf_r+0x153a>
 80039aa:	3208      	adds	r2, #8
 80039ac:	3d10      	subs	r5, #16
 80039ae:	2d10      	cmp	r5, #16
 80039b0:	dd36      	ble.n	8003a20 <_vfprintf_r+0x15a8>
 80039b2:	3001      	adds	r0, #1
 80039b4:	3110      	adds	r1, #16
 80039b6:	2807      	cmp	r0, #7
 80039b8:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80039bc:	e9c2 6400 	strd	r6, r4, [r2]
 80039c0:	ddf3      	ble.n	80039aa <_vfprintf_r+0x1532>
 80039c2:	aa2a      	add	r2, sp, #168	; 0xa8
 80039c4:	4651      	mov	r1, sl
 80039c6:	4648      	mov	r0, r9
 80039c8:	f003 f884 	bl	8006ad4 <__sprint_r>
 80039cc:	2800      	cmp	r0, #0
 80039ce:	d150      	bne.n	8003a72 <_vfprintf_r+0x15fa>
 80039d0:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 80039d4:	aa2d      	add	r2, sp, #180	; 0xb4
 80039d6:	e7e9      	b.n	80039ac <_vfprintf_r+0x1534>
 80039d8:	aa2a      	add	r2, sp, #168	; 0xa8
 80039da:	4651      	mov	r1, sl
 80039dc:	4648      	mov	r0, r9
 80039de:	f003 f879 	bl	8006ad4 <__sprint_r>
 80039e2:	2800      	cmp	r0, #0
 80039e4:	d145      	bne.n	8003a72 <_vfprintf_r+0x15fa>
 80039e6:	f898 3000 	ldrb.w	r3, [r8]
 80039ea:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80039ec:	aa2d      	add	r2, sp, #180	; 0xb4
 80039ee:	441f      	add	r7, r3
 80039f0:	e7a4      	b.n	800393c <_vfprintf_r+0x14c4>
 80039f2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80039f4:	3b01      	subs	r3, #1
 80039f6:	930f      	str	r3, [sp, #60]	; 0x3c
 80039f8:	e7ab      	b.n	8003952 <_vfprintf_r+0x14da>
 80039fa:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80039fc:	2b00      	cmp	r3, #0
 80039fe:	d1f8      	bne.n	80039f2 <_vfprintf_r+0x157a>
 8003a00:	46b9      	mov	r9, r7
 8003a02:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a04:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003a06:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003a0a:	18fb      	adds	r3, r7, r3
 8003a0c:	4599      	cmp	r9, r3
 8003a0e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003a12:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003a16:	4693      	mov	fp, r2
 8003a18:	460c      	mov	r4, r1
 8003a1a:	bf28      	it	cs
 8003a1c:	4699      	movcs	r9, r3
 8003a1e:	e424      	b.n	800326a <_vfprintf_r+0xdf2>
 8003a20:	3001      	adds	r0, #1
 8003a22:	4429      	add	r1, r5
 8003a24:	2807      	cmp	r0, #7
 8003a26:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003a2a:	e9c2 6500 	strd	r6, r5, [r2]
 8003a2e:	dcd3      	bgt.n	80039d8 <_vfprintf_r+0x1560>
 8003a30:	f898 3000 	ldrb.w	r3, [r8]
 8003a34:	3208      	adds	r2, #8
 8003a36:	441f      	add	r7, r3
 8003a38:	e780      	b.n	800393c <_vfprintf_r+0x14c4>
 8003a3a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a3c:	4651      	mov	r1, sl
 8003a3e:	4648      	mov	r0, r9
 8003a40:	f003 f848 	bl	8006ad4 <__sprint_r>
 8003a44:	b9a8      	cbnz	r0, 8003a72 <_vfprintf_r+0x15fa>
 8003a46:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a48:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a4a:	e78e      	b.n	800396a <_vfprintf_r+0x14f2>
 8003a4c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a4e:	4651      	mov	r1, sl
 8003a50:	4648      	mov	r0, r9
 8003a52:	f003 f83f 	bl	8006ad4 <__sprint_r>
 8003a56:	b960      	cbnz	r0, 8003a72 <_vfprintf_r+0x15fa>
 8003a58:	f898 3000 	ldrb.w	r3, [r8]
 8003a5c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a5e:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a60:	e798      	b.n	8003994 <_vfprintf_r+0x151c>
 8003a62:	4638      	mov	r0, r7
 8003a64:	f7fc fdec 	bl	8000640 <strlen>
 8003a68:	46a9      	mov	r9, r5
 8003a6a:	4603      	mov	r3, r0
 8003a6c:	9009      	str	r0, [sp, #36]	; 0x24
 8003a6e:	f7ff b8f4 	b.w	8002c5a <_vfprintf_r+0x7e2>
 8003a72:	46d1      	mov	r9, sl
 8003a74:	f7ff ba7a 	b.w	8002f6c <_vfprintf_r+0xaf4>
 8003a78:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a7a:	4619      	mov	r1, r3
 8003a7c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a7e:	4299      	cmp	r1, r3
 8003a80:	f300 8082 	bgt.w	8003b88 <_vfprintf_r+0x1710>
 8003a84:	07c4      	lsls	r4, r0, #31
 8003a86:	f140 816b 	bpl.w	8003d60 <_vfprintf_r+0x18e8>
 8003a8a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003a8c:	4413      	add	r3, r2
 8003a8e:	9309      	str	r3, [sp, #36]	; 0x24
 8003a90:	0541      	lsls	r1, r0, #21
 8003a92:	d503      	bpl.n	8003a9c <_vfprintf_r+0x1624>
 8003a94:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a96:	2b00      	cmp	r3, #0
 8003a98:	f300 80e6 	bgt.w	8003c68 <_vfprintf_r+0x17f0>
 8003a9c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a9e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003aa2:	9304      	str	r3, [sp, #16]
 8003aa4:	2667      	movs	r6, #103	; 0x67
 8003aa6:	2300      	movs	r3, #0
 8003aa8:	930f      	str	r3, [sp, #60]	; 0x3c
 8003aaa:	9314      	str	r3, [sp, #80]	; 0x50
 8003aac:	e586      	b.n	80035bc <_vfprintf_r+0x1144>
 8003aae:	222d      	movs	r2, #45	; 0x2d
 8003ab0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003ab4:	f04f 0900 	mov.w	r9, #0
 8003ab8:	f7fe be6c 	b.w	8002794 <_vfprintf_r+0x31c>
 8003abc:	46a1      	mov	r9, r4
 8003abe:	f7ff ba55 	b.w	8002f6c <_vfprintf_r+0xaf4>
 8003ac2:	900a      	str	r0, [sp, #40]	; 0x28
 8003ac4:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003ac8:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003acc:	931f      	str	r3, [sp, #124]	; 0x7c
 8003ace:	232d      	movs	r3, #45	; 0x2d
 8003ad0:	911e      	str	r1, [sp, #120]	; 0x78
 8003ad2:	930b      	str	r3, [sp, #44]	; 0x2c
 8003ad4:	e619      	b.n	800370a <_vfprintf_r+0x1292>
 8003ad6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003ad8:	9328      	str	r3, [sp, #160]	; 0xa0
 8003ada:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003adc:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003ae0:	7bd9      	ldrb	r1, [r3, #15]
 8003ae2:	4291      	cmp	r1, r2
 8003ae4:	462b      	mov	r3, r5
 8003ae6:	d109      	bne.n	8003afc <_vfprintf_r+0x1684>
 8003ae8:	2030      	movs	r0, #48	; 0x30
 8003aea:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003aee:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003af0:	1e5a      	subs	r2, r3, #1
 8003af2:	9228      	str	r2, [sp, #160]	; 0xa0
 8003af4:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003af8:	4291      	cmp	r1, r2
 8003afa:	d0f6      	beq.n	8003aea <_vfprintf_r+0x1672>
 8003afc:	2a39      	cmp	r2, #57	; 0x39
 8003afe:	bf0b      	itete	eq
 8003b00:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003b02:	3201      	addne	r2, #1
 8003b04:	7a92      	ldrbeq	r2, [r2, #10]
 8003b06:	b2d2      	uxtbne	r2, r2
 8003b08:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003b0c:	e682      	b.n	8003814 <_vfprintf_r+0x139c>
 8003b0e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003b12:	f43f ad9f 	beq.w	8003654 <_vfprintf_r+0x11dc>
 8003b16:	9a05      	ldr	r2, [sp, #20]
 8003b18:	701a      	strb	r2, [r3, #0]
 8003b1a:	4657      	mov	r7, sl
 8003b1c:	f7fe bf52 	b.w	80029c4 <_vfprintf_r+0x54c>
 8003b20:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b22:	9907      	ldr	r1, [sp, #28]
 8003b24:	9803      	ldr	r0, [sp, #12]
 8003b26:	f002 ffd5 	bl	8006ad4 <__sprint_r>
 8003b2a:	2800      	cmp	r0, #0
 8003b2c:	f47f aa1c 	bne.w	8002f68 <_vfprintf_r+0xaf0>
 8003b30:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b32:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003b36:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b3a:	e571      	b.n	8003620 <_vfprintf_r+0x11a8>
 8003b3c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b3e:	2b00      	cmp	r3, #0
 8003b40:	f340 8164 	ble.w	8003e0c <_vfprintf_r+0x1994>
 8003b44:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b46:	f1b9 0f00 	cmp.w	r9, #0
 8003b4a:	f040 8103 	bne.w	8003d54 <_vfprintf_r+0x18dc>
 8003b4e:	07c6      	lsls	r6, r0, #31
 8003b50:	f100 8100 	bmi.w	8003d54 <_vfprintf_r+0x18dc>
 8003b54:	9309      	str	r3, [sp, #36]	; 0x24
 8003b56:	2666      	movs	r6, #102	; 0x66
 8003b58:	0543      	lsls	r3, r0, #21
 8003b5a:	f100 8086 	bmi.w	8003c6a <_vfprintf_r+0x17f2>
 8003b5e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b60:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b64:	9304      	str	r3, [sp, #16]
 8003b66:	e79e      	b.n	8003aa6 <_vfprintf_r+0x162e>
 8003b68:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b6a:	9907      	ldr	r1, [sp, #28]
 8003b6c:	9803      	ldr	r0, [sp, #12]
 8003b6e:	f002 ffb1 	bl	8006ad4 <__sprint_r>
 8003b72:	2800      	cmp	r0, #0
 8003b74:	f47f a9f8 	bne.w	8002f68 <_vfprintf_r+0xaf0>
 8003b78:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b7a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003b7c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b7e:	1ad3      	subs	r3, r2, r3
 8003b80:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b84:	f7ff bb90 	b.w	80032a8 <_vfprintf_r+0xe30>
 8003b88:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b8a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b8c:	4413      	add	r3, r2
 8003b8e:	9309      	str	r3, [sp, #36]	; 0x24
 8003b90:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b92:	2b00      	cmp	r3, #0
 8003b94:	f340 8149 	ble.w	8003e2a <_vfprintf_r+0x19b2>
 8003b98:	2667      	movs	r6, #103	; 0x67
 8003b9a:	e7dd      	b.n	8003b58 <_vfprintf_r+0x16e0>
 8003b9c:	2330      	movs	r3, #48	; 0x30
 8003b9e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003ba2:	2358      	movs	r3, #88	; 0x58
 8003ba4:	e595      	b.n	80036d2 <_vfprintf_r+0x125a>
 8003ba6:	9803      	ldr	r0, [sp, #12]
 8003ba8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003baa:	4649      	mov	r1, r9
 8003bac:	f002 ff92 	bl	8006ad4 <__sprint_r>
 8003bb0:	2800      	cmp	r0, #0
 8003bb2:	f47f a9e0 	bne.w	8002f76 <_vfprintf_r+0xafe>
 8003bb6:	f7fe bf0f 	b.w	80029d8 <_vfprintf_r+0x560>
 8003bba:	a824      	add	r0, sp, #144	; 0x90
 8003bbc:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003bc0:	f002 fe90 	bl	80068e4 <frexp>
 8003bc4:	2200      	movs	r2, #0
 8003bc6:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003bca:	ec51 0b10 	vmov	r0, r1, d0
 8003bce:	f7fc ffb3 	bl	8000b38 <__aeabi_dmul>
 8003bd2:	2200      	movs	r2, #0
 8003bd4:	2300      	movs	r3, #0
 8003bd6:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003bda:	f7fd fa15 	bl	8001008 <__aeabi_dcmpeq>
 8003bde:	b108      	cbz	r0, 8003be4 <_vfprintf_r+0x176c>
 8003be0:	2301      	movs	r3, #1
 8003be2:	9324      	str	r3, [sp, #144]	; 0x90
 8003be4:	4b02      	ldr	r3, [pc, #8]	; (8003bf0 <_vfprintf_r+0x1778>)
 8003be6:	9309      	str	r3, [sp, #36]	; 0x24
 8003be8:	e5ac      	b.n	8003744 <_vfprintf_r+0x12cc>
 8003bea:	bf00      	nop
 8003bec:	080071c8 	.word	0x080071c8
 8003bf0:	08007184 	.word	0x08007184
 8003bf4:	425d      	negs	r5, r3
 8003bf6:	3310      	adds	r3, #16
 8003bf8:	4bb9      	ldr	r3, [pc, #740]	; (8003ee0 <_vfprintf_r+0x1a68>)
 8003bfa:	f280 8097 	bge.w	8003d2c <_vfprintf_r+0x18b4>
 8003bfe:	4619      	mov	r1, r3
 8003c00:	2610      	movs	r6, #16
 8003c02:	4623      	mov	r3, r4
 8003c04:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003c08:	460c      	mov	r4, r1
 8003c0a:	e005      	b.n	8003c18 <_vfprintf_r+0x17a0>
 8003c0c:	f10b 0b08 	add.w	fp, fp, #8
 8003c10:	3d10      	subs	r5, #16
 8003c12:	2d10      	cmp	r5, #16
 8003c14:	f340 8087 	ble.w	8003d26 <_vfprintf_r+0x18ae>
 8003c18:	3201      	adds	r2, #1
 8003c1a:	3310      	adds	r3, #16
 8003c1c:	2a07      	cmp	r2, #7
 8003c1e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003c22:	e9cb 4600 	strd	r4, r6, [fp]
 8003c26:	ddf1      	ble.n	8003c0c <_vfprintf_r+0x1794>
 8003c28:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c2a:	9907      	ldr	r1, [sp, #28]
 8003c2c:	4648      	mov	r0, r9
 8003c2e:	f002 ff51 	bl	8006ad4 <__sprint_r>
 8003c32:	2800      	cmp	r0, #0
 8003c34:	f47f a998 	bne.w	8002f68 <_vfprintf_r+0xaf0>
 8003c38:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003c3c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c40:	e7e6      	b.n	8003c10 <_vfprintf_r+0x1798>
 8003c42:	f109 0101 	add.w	r1, r9, #1
 8003c46:	9803      	ldr	r0, [sp, #12]
 8003c48:	f001 fe80 	bl	800594c <_malloc_r>
 8003c4c:	4607      	mov	r7, r0
 8003c4e:	2800      	cmp	r0, #0
 8003c50:	f000 813b 	beq.w	8003eca <_vfprintf_r+0x1a52>
 8003c54:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003c58:	930e      	str	r3, [sp, #56]	; 0x38
 8003c5a:	f026 0320 	bic.w	r3, r6, #32
 8003c5e:	9304      	str	r3, [sp, #16]
 8003c60:	46a0      	mov	r8, r4
 8003c62:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003c64:	900a      	str	r0, [sp, #40]	; 0x28
 8003c66:	e547      	b.n	80036f8 <_vfprintf_r+0x1280>
 8003c68:	2667      	movs	r6, #103	; 0x67
 8003c6a:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003c6c:	2200      	movs	r2, #0
 8003c6e:	920f      	str	r2, [sp, #60]	; 0x3c
 8003c70:	9214      	str	r2, [sp, #80]	; 0x50
 8003c72:	7803      	ldrb	r3, [r0, #0]
 8003c74:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003c76:	2bff      	cmp	r3, #255	; 0xff
 8003c78:	d00c      	beq.n	8003c94 <_vfprintf_r+0x181c>
 8003c7a:	4293      	cmp	r3, r2
 8003c7c:	da0a      	bge.n	8003c94 <_vfprintf_r+0x181c>
 8003c7e:	7841      	ldrb	r1, [r0, #1]
 8003c80:	1ad2      	subs	r2, r2, r3
 8003c82:	b1a9      	cbz	r1, 8003cb0 <_vfprintf_r+0x1838>
 8003c84:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c86:	3301      	adds	r3, #1
 8003c88:	9314      	str	r3, [sp, #80]	; 0x50
 8003c8a:	460b      	mov	r3, r1
 8003c8c:	2bff      	cmp	r3, #255	; 0xff
 8003c8e:	f100 0001 	add.w	r0, r0, #1
 8003c92:	d1f2      	bne.n	8003c7a <_vfprintf_r+0x1802>
 8003c94:	9211      	str	r2, [sp, #68]	; 0x44
 8003c96:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c98:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003c9a:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003c9c:	901a      	str	r0, [sp, #104]	; 0x68
 8003c9e:	4413      	add	r3, r2
 8003ca0:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003ca2:	fb02 1303 	mla	r3, r2, r3, r1
 8003ca6:	9309      	str	r3, [sp, #36]	; 0x24
 8003ca8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003cac:	9304      	str	r3, [sp, #16]
 8003cae:	e485      	b.n	80035bc <_vfprintf_r+0x1144>
 8003cb0:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003cb2:	3101      	adds	r1, #1
 8003cb4:	910f      	str	r1, [sp, #60]	; 0x3c
 8003cb6:	e7de      	b.n	8003c76 <_vfprintf_r+0x17fe>
 8003cb8:	aa28      	add	r2, sp, #160	; 0xa0
 8003cba:	ab25      	add	r3, sp, #148	; 0x94
 8003cbc:	e9cd 3200 	strd	r3, r2, [sp]
 8003cc0:	2103      	movs	r1, #3
 8003cc2:	ab24      	add	r3, sp, #144	; 0x90
 8003cc4:	464a      	mov	r2, r9
 8003cc6:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003cca:	9803      	ldr	r0, [sp, #12]
 8003ccc:	f000 fa5c 	bl	8004188 <_dtoa_r>
 8003cd0:	464d      	mov	r5, r9
 8003cd2:	4607      	mov	r7, r0
 8003cd4:	eb00 0409 	add.w	r4, r0, r9
 8003cd8:	783b      	ldrb	r3, [r7, #0]
 8003cda:	2b30      	cmp	r3, #48	; 0x30
 8003cdc:	f000 80be 	beq.w	8003e5c <_vfprintf_r+0x19e4>
 8003ce0:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003ce2:	442c      	add	r4, r5
 8003ce4:	2200      	movs	r2, #0
 8003ce6:	2300      	movs	r3, #0
 8003ce8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003cec:	f7fd f98c 	bl	8001008 <__aeabi_dcmpeq>
 8003cf0:	b108      	cbz	r0, 8003cf6 <_vfprintf_r+0x187e>
 8003cf2:	4623      	mov	r3, r4
 8003cf4:	e413      	b.n	800351e <_vfprintf_r+0x10a6>
 8003cf6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003cf8:	42a3      	cmp	r3, r4
 8003cfa:	f4bf ac10 	bcs.w	800351e <_vfprintf_r+0x10a6>
 8003cfe:	2130      	movs	r1, #48	; 0x30
 8003d00:	1c5a      	adds	r2, r3, #1
 8003d02:	9228      	str	r2, [sp, #160]	; 0xa0
 8003d04:	7019      	strb	r1, [r3, #0]
 8003d06:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003d08:	429c      	cmp	r4, r3
 8003d0a:	d8f9      	bhi.n	8003d00 <_vfprintf_r+0x1888>
 8003d0c:	e407      	b.n	800351e <_vfprintf_r+0x10a6>
 8003d0e:	197c      	adds	r4, r7, r5
 8003d10:	e7e8      	b.n	8003ce4 <_vfprintf_r+0x186c>
 8003d12:	f1b9 0f00 	cmp.w	r9, #0
 8003d16:	f000 8092 	beq.w	8003e3e <_vfprintf_r+0x19c6>
 8003d1a:	900a      	str	r0, [sp, #40]	; 0x28
 8003d1c:	e4ec      	b.n	80036f8 <_vfprintf_r+0x1280>
 8003d1e:	900a      	str	r0, [sp, #40]	; 0x28
 8003d20:	f04f 0906 	mov.w	r9, #6
 8003d24:	e4e8      	b.n	80036f8 <_vfprintf_r+0x1280>
 8003d26:	4621      	mov	r1, r4
 8003d28:	461c      	mov	r4, r3
 8003d2a:	460b      	mov	r3, r1
 8003d2c:	3201      	adds	r2, #1
 8003d2e:	442c      	add	r4, r5
 8003d30:	2a07      	cmp	r2, #7
 8003d32:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003d36:	e9cb 3500 	strd	r3, r5, [fp]
 8003d3a:	f300 80a9 	bgt.w	8003e90 <_vfprintf_r+0x1a18>
 8003d3e:	f10b 0b08 	add.w	fp, fp, #8
 8003d42:	e470      	b.n	8003626 <_vfprintf_r+0x11ae>
 8003d44:	469a      	mov	sl, r3
 8003d46:	f7ff bb37 	b.w	80033b8 <_vfprintf_r+0xf40>
 8003d4a:	2301      	movs	r3, #1
 8003d4c:	9324      	str	r3, [sp, #144]	; 0x90
 8003d4e:	4b65      	ldr	r3, [pc, #404]	; (8003ee4 <_vfprintf_r+0x1a6c>)
 8003d50:	9309      	str	r3, [sp, #36]	; 0x24
 8003d52:	e4f7      	b.n	8003744 <_vfprintf_r+0x12cc>
 8003d54:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003d56:	4413      	add	r3, r2
 8003d58:	444b      	add	r3, r9
 8003d5a:	9309      	str	r3, [sp, #36]	; 0x24
 8003d5c:	2666      	movs	r6, #102	; 0x66
 8003d5e:	e6fb      	b.n	8003b58 <_vfprintf_r+0x16e0>
 8003d60:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d62:	9309      	str	r3, [sp, #36]	; 0x24
 8003d64:	e694      	b.n	8003a90 <_vfprintf_r+0x1618>
 8003d66:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003d6a:	4664      	mov	r4, ip
 8003d6c:	4d5e      	ldr	r5, [pc, #376]	; (8003ee8 <_vfprintf_r+0x1a70>)
 8003d6e:	e000      	b.n	8003d72 <_vfprintf_r+0x18fa>
 8003d70:	4614      	mov	r4, r2
 8003d72:	fba5 1203 	umull	r1, r2, r5, r3
 8003d76:	08d2      	lsrs	r2, r2, #3
 8003d78:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003d7c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003d80:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003d84:	4613      	mov	r3, r2
 8003d86:	2b09      	cmp	r3, #9
 8003d88:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003d8c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003d90:	dcee      	bgt.n	8003d70 <_vfprintf_r+0x18f8>
 8003d92:	3330      	adds	r3, #48	; 0x30
 8003d94:	3c02      	subs	r4, #2
 8003d96:	b2db      	uxtb	r3, r3
 8003d98:	45a4      	cmp	ip, r4
 8003d9a:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003d9e:	f240 8090 	bls.w	8003ec2 <_vfprintf_r+0x1a4a>
 8003da2:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003da6:	4611      	mov	r1, r2
 8003da8:	e001      	b.n	8003dae <_vfprintf_r+0x1936>
 8003daa:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003dae:	f804 3b01 	strb.w	r3, [r4], #1
 8003db2:	458c      	cmp	ip, r1
 8003db4:	d1f9      	bne.n	8003daa <_vfprintf_r+0x1932>
 8003db6:	ab2a      	add	r3, sp, #168	; 0xa8
 8003db8:	1a9b      	subs	r3, r3, r2
 8003dba:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003dbe:	4413      	add	r3, r2
 8003dc0:	f7ff bbe3 	b.w	800358a <_vfprintf_r+0x1112>
 8003dc4:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003dc6:	4f49      	ldr	r7, [pc, #292]	; (8003eec <_vfprintf_r+0x1a74>)
 8003dc8:	2b00      	cmp	r3, #0
 8003dca:	bfb6      	itet	lt
 8003dcc:	222d      	movlt	r2, #45	; 0x2d
 8003dce:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003dd2:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003dd6:	4b46      	ldr	r3, [pc, #280]	; (8003ef0 <_vfprintf_r+0x1a78>)
 8003dd8:	f7fe bf02 	b.w	8002be0 <_vfprintf_r+0x768>
 8003ddc:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003de0:	f7ff b8c9 	b.w	8002f76 <_vfprintf_r+0xafe>
 8003de4:	aa28      	add	r2, sp, #160	; 0xa0
 8003de6:	ab25      	add	r3, sp, #148	; 0x94
 8003de8:	e9cd 3200 	strd	r3, r2, [sp]
 8003dec:	2103      	movs	r1, #3
 8003dee:	ab24      	add	r3, sp, #144	; 0x90
 8003df0:	464a      	mov	r2, r9
 8003df2:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003df6:	9803      	ldr	r0, [sp, #12]
 8003df8:	f000 f9c6 	bl	8004188 <_dtoa_r>
 8003dfc:	464d      	mov	r5, r9
 8003dfe:	4607      	mov	r7, r0
 8003e00:	2e46      	cmp	r6, #70	; 0x46
 8003e02:	eb07 0405 	add.w	r4, r7, r5
 8003e06:	f43f af67 	beq.w	8003cd8 <_vfprintf_r+0x1860>
 8003e0a:	e76b      	b.n	8003ce4 <_vfprintf_r+0x186c>
 8003e0c:	f1b9 0f00 	cmp.w	r9, #0
 8003e10:	d131      	bne.n	8003e76 <_vfprintf_r+0x19fe>
 8003e12:	07c5      	lsls	r5, r0, #31
 8003e14:	d42f      	bmi.n	8003e76 <_vfprintf_r+0x19fe>
 8003e16:	2301      	movs	r3, #1
 8003e18:	9304      	str	r3, [sp, #16]
 8003e1a:	9309      	str	r3, [sp, #36]	; 0x24
 8003e1c:	2666      	movs	r6, #102	; 0x66
 8003e1e:	e642      	b.n	8003aa6 <_vfprintf_r+0x162e>
 8003e20:	07c3      	lsls	r3, r0, #31
 8003e22:	f57f abbf 	bpl.w	80035a4 <_vfprintf_r+0x112c>
 8003e26:	f7ff bbb9 	b.w	800359c <_vfprintf_r+0x1124>
 8003e2a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003e2c:	f1c3 0301 	rsb	r3, r3, #1
 8003e30:	441a      	add	r2, r3
 8003e32:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003e36:	9209      	str	r2, [sp, #36]	; 0x24
 8003e38:	9304      	str	r3, [sp, #16]
 8003e3a:	2667      	movs	r6, #103	; 0x67
 8003e3c:	e633      	b.n	8003aa6 <_vfprintf_r+0x162e>
 8003e3e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003e42:	f04f 0901 	mov.w	r9, #1
 8003e46:	e457      	b.n	80036f8 <_vfprintf_r+0x1280>
 8003e48:	465a      	mov	r2, fp
 8003e4a:	e511      	b.n	8003870 <_vfprintf_r+0x13f8>
 8003e4c:	2e47      	cmp	r6, #71	; 0x47
 8003e4e:	f47f af5e 	bne.w	8003d0e <_vfprintf_r+0x1896>
 8003e52:	f018 0f01 	tst.w	r8, #1
 8003e56:	f43f ab61 	beq.w	800351c <_vfprintf_r+0x10a4>
 8003e5a:	e7d1      	b.n	8003e00 <_vfprintf_r+0x1988>
 8003e5c:	2200      	movs	r2, #0
 8003e5e:	2300      	movs	r3, #0
 8003e60:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003e64:	f7fd f8d0 	bl	8001008 <__aeabi_dcmpeq>
 8003e68:	2800      	cmp	r0, #0
 8003e6a:	f47f af39 	bne.w	8003ce0 <_vfprintf_r+0x1868>
 8003e6e:	f1c5 0501 	rsb	r5, r5, #1
 8003e72:	9524      	str	r5, [sp, #144]	; 0x90
 8003e74:	e735      	b.n	8003ce2 <_vfprintf_r+0x186a>
 8003e76:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003e78:	3301      	adds	r3, #1
 8003e7a:	444b      	add	r3, r9
 8003e7c:	9309      	str	r3, [sp, #36]	; 0x24
 8003e7e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003e82:	9304      	str	r3, [sp, #16]
 8003e84:	2666      	movs	r6, #102	; 0x66
 8003e86:	e60e      	b.n	8003aa6 <_vfprintf_r+0x162e>
 8003e88:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003e8c:	f7ff bb7a 	b.w	8003584 <_vfprintf_r+0x110c>
 8003e90:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e92:	9907      	ldr	r1, [sp, #28]
 8003e94:	9803      	ldr	r0, [sp, #12]
 8003e96:	f002 fe1d 	bl	8006ad4 <__sprint_r>
 8003e9a:	2800      	cmp	r0, #0
 8003e9c:	f47f a864 	bne.w	8002f68 <_vfprintf_r+0xaf0>
 8003ea0:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003ea4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ea8:	f7ff bbbd 	b.w	8003626 <_vfprintf_r+0x11ae>
 8003eac:	9908      	ldr	r1, [sp, #32]
 8003eae:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003eb2:	680b      	ldr	r3, [r1, #0]
 8003eb4:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003eb8:	1d0b      	adds	r3, r1, #4
 8003eba:	4692      	mov	sl, r2
 8003ebc:	9308      	str	r3, [sp, #32]
 8003ebe:	f7fe bb59 	b.w	8002574 <_vfprintf_r+0xfc>
 8003ec2:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003ec6:	f7ff bb60 	b.w	800358a <_vfprintf_r+0x1112>
 8003eca:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003ece:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003ed2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003ed6:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003eda:	f7ff b84c 	b.w	8002f76 <_vfprintf_r+0xafe>
 8003ede:	bf00      	nop
 8003ee0:	080071c8 	.word	0x080071c8
 8003ee4:	08007198 	.word	0x08007198
 8003ee8:	cccccccd 	.word	0xcccccccd
 8003eec:	08007180 	.word	0x08007180
 8003ef0:	0800717c 	.word	0x0800717c

08003ef4 <__sbprintf>:
 8003ef4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003ef8:	460c      	mov	r4, r1
 8003efa:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003efe:	8989      	ldrh	r1, [r1, #12]
 8003f00:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003f02:	89e5      	ldrh	r5, [r4, #14]
 8003f04:	9619      	str	r6, [sp, #100]	; 0x64
 8003f06:	f021 0102 	bic.w	r1, r1, #2
 8003f0a:	4606      	mov	r6, r0
 8003f0c:	69e0      	ldr	r0, [r4, #28]
 8003f0e:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003f12:	4617      	mov	r7, r2
 8003f14:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003f18:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003f1a:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003f1e:	4698      	mov	r8, r3
 8003f20:	ad1a      	add	r5, sp, #104	; 0x68
 8003f22:	2300      	movs	r3, #0
 8003f24:	9007      	str	r0, [sp, #28]
 8003f26:	a816      	add	r0, sp, #88	; 0x58
 8003f28:	9209      	str	r2, [sp, #36]	; 0x24
 8003f2a:	9306      	str	r3, [sp, #24]
 8003f2c:	9500      	str	r5, [sp, #0]
 8003f2e:	9504      	str	r5, [sp, #16]
 8003f30:	9102      	str	r1, [sp, #8]
 8003f32:	9105      	str	r1, [sp, #20]
 8003f34:	f001 fc8a 	bl	800584c <__retarget_lock_init_recursive>
 8003f38:	4643      	mov	r3, r8
 8003f3a:	463a      	mov	r2, r7
 8003f3c:	4669      	mov	r1, sp
 8003f3e:	4630      	mov	r0, r6
 8003f40:	f7fe fa9a 	bl	8002478 <_vfprintf_r>
 8003f44:	1e05      	subs	r5, r0, #0
 8003f46:	db07      	blt.n	8003f58 <__sbprintf+0x64>
 8003f48:	4630      	mov	r0, r6
 8003f4a:	4669      	mov	r1, sp
 8003f4c:	f001 f8d6 	bl	80050fc <_fflush_r>
 8003f50:	2800      	cmp	r0, #0
 8003f52:	bf18      	it	ne
 8003f54:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003f58:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003f5c:	065b      	lsls	r3, r3, #25
 8003f5e:	d503      	bpl.n	8003f68 <__sbprintf+0x74>
 8003f60:	89a3      	ldrh	r3, [r4, #12]
 8003f62:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003f66:	81a3      	strh	r3, [r4, #12]
 8003f68:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003f6a:	f001 fc71 	bl	8005850 <__retarget_lock_close_recursive>
 8003f6e:	4628      	mov	r0, r5
 8003f70:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003f74:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003f78 <__swsetup_r>:
 8003f78:	b538      	push	{r3, r4, r5, lr}
 8003f7a:	4b31      	ldr	r3, [pc, #196]	; (8004040 <__swsetup_r+0xc8>)
 8003f7c:	681b      	ldr	r3, [r3, #0]
 8003f7e:	4605      	mov	r5, r0
 8003f80:	460c      	mov	r4, r1
 8003f82:	b113      	cbz	r3, 8003f8a <__swsetup_r+0x12>
 8003f84:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003f86:	2a00      	cmp	r2, #0
 8003f88:	d03a      	beq.n	8004000 <__swsetup_r+0x88>
 8003f8a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003f8e:	b293      	uxth	r3, r2
 8003f90:	0718      	lsls	r0, r3, #28
 8003f92:	d50c      	bpl.n	8003fae <__swsetup_r+0x36>
 8003f94:	6920      	ldr	r0, [r4, #16]
 8003f96:	b1a8      	cbz	r0, 8003fc4 <__swsetup_r+0x4c>
 8003f98:	f013 0201 	ands.w	r2, r3, #1
 8003f9c:	d020      	beq.n	8003fe0 <__swsetup_r+0x68>
 8003f9e:	6963      	ldr	r3, [r4, #20]
 8003fa0:	2200      	movs	r2, #0
 8003fa2:	425b      	negs	r3, r3
 8003fa4:	61a3      	str	r3, [r4, #24]
 8003fa6:	60a2      	str	r2, [r4, #8]
 8003fa8:	b300      	cbz	r0, 8003fec <__swsetup_r+0x74>
 8003faa:	2000      	movs	r0, #0
 8003fac:	bd38      	pop	{r3, r4, r5, pc}
 8003fae:	06d9      	lsls	r1, r3, #27
 8003fb0:	d53e      	bpl.n	8004030 <__swsetup_r+0xb8>
 8003fb2:	0758      	lsls	r0, r3, #29
 8003fb4:	d428      	bmi.n	8004008 <__swsetup_r+0x90>
 8003fb6:	6920      	ldr	r0, [r4, #16]
 8003fb8:	f042 0308 	orr.w	r3, r2, #8
 8003fbc:	81a3      	strh	r3, [r4, #12]
 8003fbe:	b29b      	uxth	r3, r3
 8003fc0:	2800      	cmp	r0, #0
 8003fc2:	d1e9      	bne.n	8003f98 <__swsetup_r+0x20>
 8003fc4:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003fc8:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003fcc:	d0e4      	beq.n	8003f98 <__swsetup_r+0x20>
 8003fce:	4628      	mov	r0, r5
 8003fd0:	4621      	mov	r1, r4
 8003fd2:	f001 fc71 	bl	80058b8 <__smakebuf_r>
 8003fd6:	89a3      	ldrh	r3, [r4, #12]
 8003fd8:	6920      	ldr	r0, [r4, #16]
 8003fda:	f013 0201 	ands.w	r2, r3, #1
 8003fde:	d1de      	bne.n	8003f9e <__swsetup_r+0x26>
 8003fe0:	0799      	lsls	r1, r3, #30
 8003fe2:	bf58      	it	pl
 8003fe4:	6962      	ldrpl	r2, [r4, #20]
 8003fe6:	60a2      	str	r2, [r4, #8]
 8003fe8:	2800      	cmp	r0, #0
 8003fea:	d1de      	bne.n	8003faa <__swsetup_r+0x32>
 8003fec:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003ff0:	061a      	lsls	r2, r3, #24
 8003ff2:	d5db      	bpl.n	8003fac <__swsetup_r+0x34>
 8003ff4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003ff8:	81a3      	strh	r3, [r4, #12]
 8003ffa:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003ffe:	bd38      	pop	{r3, r4, r5, pc}
 8004000:	4618      	mov	r0, r3
 8004002:	f001 f8d7 	bl	80051b4 <__sinit>
 8004006:	e7c0      	b.n	8003f8a <__swsetup_r+0x12>
 8004008:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800400a:	b151      	cbz	r1, 8004022 <__swsetup_r+0xaa>
 800400c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004010:	4299      	cmp	r1, r3
 8004012:	d004      	beq.n	800401e <__swsetup_r+0xa6>
 8004014:	4628      	mov	r0, r5
 8004016:	f001 f96f 	bl	80052f8 <_free_r>
 800401a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800401e:	2300      	movs	r3, #0
 8004020:	6323      	str	r3, [r4, #48]	; 0x30
 8004022:	2300      	movs	r3, #0
 8004024:	6920      	ldr	r0, [r4, #16]
 8004026:	6063      	str	r3, [r4, #4]
 8004028:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 800402c:	6020      	str	r0, [r4, #0]
 800402e:	e7c3      	b.n	8003fb8 <__swsetup_r+0x40>
 8004030:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004034:	2309      	movs	r3, #9
 8004036:	602b      	str	r3, [r5, #0]
 8004038:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800403c:	81a2      	strh	r2, [r4, #12]
 800403e:	bd38      	pop	{r3, r4, r5, pc}
 8004040:	200000b4 	.word	0x200000b4

08004044 <register_fini>:
 8004044:	4b02      	ldr	r3, [pc, #8]	; (8004050 <register_fini+0xc>)
 8004046:	b113      	cbz	r3, 800404e <register_fini+0xa>
 8004048:	4802      	ldr	r0, [pc, #8]	; (8004054 <register_fini+0x10>)
 800404a:	f000 b805 	b.w	8004058 <atexit>
 800404e:	4770      	bx	lr
 8004050:	00000000 	.word	0x00000000
 8004054:	08005225 	.word	0x08005225

08004058 <atexit>:
 8004058:	2300      	movs	r3, #0
 800405a:	4601      	mov	r1, r0
 800405c:	461a      	mov	r2, r3
 800405e:	4618      	mov	r0, r3
 8004060:	f002 bd58 	b.w	8006b14 <__register_exitproc>

08004064 <quorem>:
 8004064:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004068:	6903      	ldr	r3, [r0, #16]
 800406a:	690f      	ldr	r7, [r1, #16]
 800406c:	42bb      	cmp	r3, r7
 800406e:	b083      	sub	sp, #12
 8004070:	f2c0 8086 	blt.w	8004180 <quorem+0x11c>
 8004074:	3f01      	subs	r7, #1
 8004076:	f101 0914 	add.w	r9, r1, #20
 800407a:	f100 0a14 	add.w	sl, r0, #20
 800407e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004082:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004086:	00bc      	lsls	r4, r7, #2
 8004088:	3201      	adds	r2, #1
 800408a:	fbb3 f8f2 	udiv	r8, r3, r2
 800408e:	eb0a 0304 	add.w	r3, sl, r4
 8004092:	9400      	str	r4, [sp, #0]
 8004094:	eb09 0b04 	add.w	fp, r9, r4
 8004098:	9301      	str	r3, [sp, #4]
 800409a:	f1b8 0f00 	cmp.w	r8, #0
 800409e:	d038      	beq.n	8004112 <quorem+0xae>
 80040a0:	2500      	movs	r5, #0
 80040a2:	462e      	mov	r6, r5
 80040a4:	46ce      	mov	lr, r9
 80040a6:	46d4      	mov	ip, sl
 80040a8:	f85e 4b04 	ldr.w	r4, [lr], #4
 80040ac:	f8dc 3000 	ldr.w	r3, [ip]
 80040b0:	b2a2      	uxth	r2, r4
 80040b2:	fb08 5502 	mla	r5, r8, r2, r5
 80040b6:	0c22      	lsrs	r2, r4, #16
 80040b8:	0c2c      	lsrs	r4, r5, #16
 80040ba:	fb08 4202 	mla	r2, r8, r2, r4
 80040be:	b2ad      	uxth	r5, r5
 80040c0:	1b75      	subs	r5, r6, r5
 80040c2:	b296      	uxth	r6, r2
 80040c4:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80040c8:	fa15 f383 	uxtah	r3, r5, r3
 80040cc:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80040d0:	b29b      	uxth	r3, r3
 80040d2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80040d6:	45f3      	cmp	fp, lr
 80040d8:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80040dc:	f84c 3b04 	str.w	r3, [ip], #4
 80040e0:	ea4f 4626 	mov.w	r6, r6, asr #16
 80040e4:	d2e0      	bcs.n	80040a8 <quorem+0x44>
 80040e6:	9b00      	ldr	r3, [sp, #0]
 80040e8:	f85a 3003 	ldr.w	r3, [sl, r3]
 80040ec:	b98b      	cbnz	r3, 8004112 <quorem+0xae>
 80040ee:	9a01      	ldr	r2, [sp, #4]
 80040f0:	1f13      	subs	r3, r2, #4
 80040f2:	459a      	cmp	sl, r3
 80040f4:	d20c      	bcs.n	8004110 <quorem+0xac>
 80040f6:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80040fa:	b94b      	cbnz	r3, 8004110 <quorem+0xac>
 80040fc:	f1a2 0308 	sub.w	r3, r2, #8
 8004100:	e002      	b.n	8004108 <quorem+0xa4>
 8004102:	681a      	ldr	r2, [r3, #0]
 8004104:	3b04      	subs	r3, #4
 8004106:	b91a      	cbnz	r2, 8004110 <quorem+0xac>
 8004108:	459a      	cmp	sl, r3
 800410a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800410e:	d3f8      	bcc.n	8004102 <quorem+0x9e>
 8004110:	6107      	str	r7, [r0, #16]
 8004112:	4604      	mov	r4, r0
 8004114:	f002 f944 	bl	80063a0 <__mcmp>
 8004118:	2800      	cmp	r0, #0
 800411a:	db2d      	blt.n	8004178 <quorem+0x114>
 800411c:	f108 0801 	add.w	r8, r8, #1
 8004120:	4655      	mov	r5, sl
 8004122:	2300      	movs	r3, #0
 8004124:	f859 1b04 	ldr.w	r1, [r9], #4
 8004128:	6828      	ldr	r0, [r5, #0]
 800412a:	b28a      	uxth	r2, r1
 800412c:	1a9a      	subs	r2, r3, r2
 800412e:	0c0b      	lsrs	r3, r1, #16
 8004130:	fa12 f280 	uxtah	r2, r2, r0
 8004134:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004138:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800413c:	b292      	uxth	r2, r2
 800413e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004142:	45cb      	cmp	fp, r9
 8004144:	f845 2b04 	str.w	r2, [r5], #4
 8004148:	ea4f 4323 	mov.w	r3, r3, asr #16
 800414c:	d2ea      	bcs.n	8004124 <quorem+0xc0>
 800414e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004152:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004156:	b97a      	cbnz	r2, 8004178 <quorem+0x114>
 8004158:	1f1a      	subs	r2, r3, #4
 800415a:	4592      	cmp	sl, r2
 800415c:	d20b      	bcs.n	8004176 <quorem+0x112>
 800415e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004162:	b942      	cbnz	r2, 8004176 <quorem+0x112>
 8004164:	3b08      	subs	r3, #8
 8004166:	e002      	b.n	800416e <quorem+0x10a>
 8004168:	681a      	ldr	r2, [r3, #0]
 800416a:	3b04      	subs	r3, #4
 800416c:	b91a      	cbnz	r2, 8004176 <quorem+0x112>
 800416e:	459a      	cmp	sl, r3
 8004170:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004174:	d3f8      	bcc.n	8004168 <quorem+0x104>
 8004176:	6127      	str	r7, [r4, #16]
 8004178:	4640      	mov	r0, r8
 800417a:	b003      	add	sp, #12
 800417c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004180:	2000      	movs	r0, #0
 8004182:	b003      	add	sp, #12
 8004184:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004188 <_dtoa_r>:
 8004188:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800418c:	ec55 4b10 	vmov	r4, r5, d0
 8004190:	b09b      	sub	sp, #108	; 0x6c
 8004192:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004194:	9102      	str	r1, [sp, #8]
 8004196:	4681      	mov	r9, r0
 8004198:	9207      	str	r2, [sp, #28]
 800419a:	9305      	str	r3, [sp, #20]
 800419c:	e9cd 4500 	strd	r4, r5, [sp]
 80041a0:	b156      	cbz	r6, 80041b8 <_dtoa_r+0x30>
 80041a2:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80041a4:	6072      	str	r2, [r6, #4]
 80041a6:	2301      	movs	r3, #1
 80041a8:	4093      	lsls	r3, r2
 80041aa:	60b3      	str	r3, [r6, #8]
 80041ac:	4631      	mov	r1, r6
 80041ae:	f001 ff07 	bl	8005fc0 <_Bfree>
 80041b2:	2300      	movs	r3, #0
 80041b4:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80041b8:	f1b5 0800 	subs.w	r8, r5, #0
 80041bc:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80041be:	bfb4      	ite	lt
 80041c0:	2301      	movlt	r3, #1
 80041c2:	2300      	movge	r3, #0
 80041c4:	6013      	str	r3, [r2, #0]
 80041c6:	4b76      	ldr	r3, [pc, #472]	; (80043a0 <_dtoa_r+0x218>)
 80041c8:	bfbc      	itt	lt
 80041ca:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80041ce:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80041d2:	ea33 0308 	bics.w	r3, r3, r8
 80041d6:	f000 80a6 	beq.w	8004326 <_dtoa_r+0x19e>
 80041da:	e9dd 6700 	ldrd	r6, r7, [sp]
 80041de:	2200      	movs	r2, #0
 80041e0:	2300      	movs	r3, #0
 80041e2:	4630      	mov	r0, r6
 80041e4:	4639      	mov	r1, r7
 80041e6:	f7fc ff0f 	bl	8001008 <__aeabi_dcmpeq>
 80041ea:	4605      	mov	r5, r0
 80041ec:	b178      	cbz	r0, 800420e <_dtoa_r+0x86>
 80041ee:	9a05      	ldr	r2, [sp, #20]
 80041f0:	2301      	movs	r3, #1
 80041f2:	6013      	str	r3, [r2, #0]
 80041f4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80041f6:	2b00      	cmp	r3, #0
 80041f8:	f000 80c0 	beq.w	800437c <_dtoa_r+0x1f4>
 80041fc:	4b69      	ldr	r3, [pc, #420]	; (80043a4 <_dtoa_r+0x21c>)
 80041fe:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004200:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004204:	6013      	str	r3, [r2, #0]
 8004206:	4658      	mov	r0, fp
 8004208:	b01b      	add	sp, #108	; 0x6c
 800420a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800420e:	aa18      	add	r2, sp, #96	; 0x60
 8004210:	a919      	add	r1, sp, #100	; 0x64
 8004212:	ec47 6b10 	vmov	d0, r6, r7
 8004216:	4648      	mov	r0, r9
 8004218:	f002 f954 	bl	80064c4 <__d2b>
 800421c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004220:	4682      	mov	sl, r0
 8004222:	f040 80a0 	bne.w	8004366 <_dtoa_r+0x1de>
 8004226:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800422a:	442c      	add	r4, r5
 800422c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004230:	2b20      	cmp	r3, #32
 8004232:	f340 842c 	ble.w	8004a8e <_dtoa_r+0x906>
 8004236:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800423a:	fa08 f803 	lsl.w	r8, r8, r3
 800423e:	9b00      	ldr	r3, [sp, #0]
 8004240:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004244:	fa23 f000 	lsr.w	r0, r3, r0
 8004248:	ea48 0000 	orr.w	r0, r8, r0
 800424c:	f7fc fbfa 	bl	8000a44 <__aeabi_ui2d>
 8004250:	2301      	movs	r3, #1
 8004252:	4606      	mov	r6, r0
 8004254:	3c01      	subs	r4, #1
 8004256:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800425a:	930f      	str	r3, [sp, #60]	; 0x3c
 800425c:	4630      	mov	r0, r6
 800425e:	4639      	mov	r1, r7
 8004260:	2200      	movs	r2, #0
 8004262:	4b51      	ldr	r3, [pc, #324]	; (80043a8 <_dtoa_r+0x220>)
 8004264:	f7fc fab0 	bl	80007c8 <__aeabi_dsub>
 8004268:	a347      	add	r3, pc, #284	; (adr r3, 8004388 <_dtoa_r+0x200>)
 800426a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800426e:	f7fc fc63 	bl	8000b38 <__aeabi_dmul>
 8004272:	a347      	add	r3, pc, #284	; (adr r3, 8004390 <_dtoa_r+0x208>)
 8004274:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004278:	f7fc faa8 	bl	80007cc <__adddf3>
 800427c:	4606      	mov	r6, r0
 800427e:	4620      	mov	r0, r4
 8004280:	460f      	mov	r7, r1
 8004282:	f7fc fbef 	bl	8000a64 <__aeabi_i2d>
 8004286:	a344      	add	r3, pc, #272	; (adr r3, 8004398 <_dtoa_r+0x210>)
 8004288:	e9d3 2300 	ldrd	r2, r3, [r3]
 800428c:	f7fc fc54 	bl	8000b38 <__aeabi_dmul>
 8004290:	4602      	mov	r2, r0
 8004292:	460b      	mov	r3, r1
 8004294:	4630      	mov	r0, r6
 8004296:	4639      	mov	r1, r7
 8004298:	f7fc fa98 	bl	80007cc <__adddf3>
 800429c:	4606      	mov	r6, r0
 800429e:	460f      	mov	r7, r1
 80042a0:	f7fc fefa 	bl	8001098 <__aeabi_d2iz>
 80042a4:	2200      	movs	r2, #0
 80042a6:	9006      	str	r0, [sp, #24]
 80042a8:	2300      	movs	r3, #0
 80042aa:	4630      	mov	r0, r6
 80042ac:	4639      	mov	r1, r7
 80042ae:	f7fc feb5 	bl	800101c <__aeabi_dcmplt>
 80042b2:	2800      	cmp	r0, #0
 80042b4:	f040 8273 	bne.w	800479e <_dtoa_r+0x616>
 80042b8:	9e06      	ldr	r6, [sp, #24]
 80042ba:	2e16      	cmp	r6, #22
 80042bc:	f200 825d 	bhi.w	800477a <_dtoa_r+0x5f2>
 80042c0:	4b3a      	ldr	r3, [pc, #232]	; (80043ac <_dtoa_r+0x224>)
 80042c2:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80042c6:	e9d3 0100 	ldrd	r0, r1, [r3]
 80042ca:	e9dd 2300 	ldrd	r2, r3, [sp]
 80042ce:	f7fc fec3 	bl	8001058 <__aeabi_dcmpgt>
 80042d2:	2800      	cmp	r0, #0
 80042d4:	f000 83d7 	beq.w	8004a86 <_dtoa_r+0x8fe>
 80042d8:	1e73      	subs	r3, r6, #1
 80042da:	9306      	str	r3, [sp, #24]
 80042dc:	2300      	movs	r3, #0
 80042de:	930d      	str	r3, [sp, #52]	; 0x34
 80042e0:	1b2c      	subs	r4, r5, r4
 80042e2:	f1b4 0801 	subs.w	r8, r4, #1
 80042e6:	f100 8254 	bmi.w	8004792 <_dtoa_r+0x60a>
 80042ea:	2300      	movs	r3, #0
 80042ec:	9308      	str	r3, [sp, #32]
 80042ee:	9b06      	ldr	r3, [sp, #24]
 80042f0:	2b00      	cmp	r3, #0
 80042f2:	f2c0 8245 	blt.w	8004780 <_dtoa_r+0x5f8>
 80042f6:	4498      	add	r8, r3
 80042f8:	930c      	str	r3, [sp, #48]	; 0x30
 80042fa:	2300      	movs	r3, #0
 80042fc:	930b      	str	r3, [sp, #44]	; 0x2c
 80042fe:	9b02      	ldr	r3, [sp, #8]
 8004300:	2b09      	cmp	r3, #9
 8004302:	d85b      	bhi.n	80043bc <_dtoa_r+0x234>
 8004304:	2b05      	cmp	r3, #5
 8004306:	f340 83c0 	ble.w	8004a8a <_dtoa_r+0x902>
 800430a:	3b04      	subs	r3, #4
 800430c:	9302      	str	r3, [sp, #8]
 800430e:	2500      	movs	r5, #0
 8004310:	9b02      	ldr	r3, [sp, #8]
 8004312:	3b02      	subs	r3, #2
 8004314:	2b03      	cmp	r3, #3
 8004316:	f200 8498 	bhi.w	8004c4a <_dtoa_r+0xac2>
 800431a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800431e:	03df      	.short	0x03df
 8004320:	03e803bf 	.word	0x03e803bf
 8004324:	04f5      	.short	0x04f5
 8004326:	9a05      	ldr	r2, [sp, #20]
 8004328:	f242 730f 	movw	r3, #9999	; 0x270f
 800432c:	6013      	str	r3, [r2, #0]
 800432e:	9b00      	ldr	r3, [sp, #0]
 8004330:	b983      	cbnz	r3, 8004354 <_dtoa_r+0x1cc>
 8004332:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004336:	b96b      	cbnz	r3, 8004354 <_dtoa_r+0x1cc>
 8004338:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800433a:	f8df b074 	ldr.w	fp, [pc, #116]	; 80043b0 <_dtoa_r+0x228>
 800433e:	2b00      	cmp	r3, #0
 8004340:	f43f af61 	beq.w	8004206 <_dtoa_r+0x7e>
 8004344:	f10b 0308 	add.w	r3, fp, #8
 8004348:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800434a:	4658      	mov	r0, fp
 800434c:	6013      	str	r3, [r2, #0]
 800434e:	b01b      	add	sp, #108	; 0x6c
 8004350:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004354:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004356:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80043b4 <_dtoa_r+0x22c>
 800435a:	2b00      	cmp	r3, #0
 800435c:	f43f af53 	beq.w	8004206 <_dtoa_r+0x7e>
 8004360:	f10b 0303 	add.w	r3, fp, #3
 8004364:	e7f0      	b.n	8004348 <_dtoa_r+0x1c0>
 8004366:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800436a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800436e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004370:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004374:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004378:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800437a:	e76f      	b.n	800425c <_dtoa_r+0xd4>
 800437c:	f8df b038 	ldr.w	fp, [pc, #56]	; 80043b8 <_dtoa_r+0x230>
 8004380:	4658      	mov	r0, fp
 8004382:	b01b      	add	sp, #108	; 0x6c
 8004384:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004388:	636f4361 	.word	0x636f4361
 800438c:	3fd287a7 	.word	0x3fd287a7
 8004390:	8b60c8b3 	.word	0x8b60c8b3
 8004394:	3fc68a28 	.word	0x3fc68a28
 8004398:	509f79fb 	.word	0x509f79fb
 800439c:	3fd34413 	.word	0x3fd34413
 80043a0:	7ff00000 	.word	0x7ff00000
 80043a4:	080071b5 	.word	0x080071b5
 80043a8:	3ff80000 	.word	0x3ff80000
 80043ac:	08007210 	.word	0x08007210
 80043b0:	080071d8 	.word	0x080071d8
 80043b4:	080071e4 	.word	0x080071e4
 80043b8:	080071b4 	.word	0x080071b4
 80043bc:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80043c0:	2501      	movs	r5, #1
 80043c2:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80043c6:	2300      	movs	r3, #0
 80043c8:	9302      	str	r3, [sp, #8]
 80043ca:	9307      	str	r3, [sp, #28]
 80043cc:	2100      	movs	r1, #0
 80043ce:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80043d2:	940e      	str	r4, [sp, #56]	; 0x38
 80043d4:	4648      	mov	r0, r9
 80043d6:	f001 fdcd 	bl	8005f74 <_Balloc>
 80043da:	2c0e      	cmp	r4, #14
 80043dc:	4683      	mov	fp, r0
 80043de:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80043e2:	f200 80fb 	bhi.w	80045dc <_dtoa_r+0x454>
 80043e6:	2d00      	cmp	r5, #0
 80043e8:	f000 80f8 	beq.w	80045dc <_dtoa_r+0x454>
 80043ec:	ed9d 7b00 	vldr	d7, [sp]
 80043f0:	9906      	ldr	r1, [sp, #24]
 80043f2:	2900      	cmp	r1, #0
 80043f4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80043f8:	f340 83e5 	ble.w	8004bc6 <_dtoa_r+0xa3e>
 80043fc:	4b9d      	ldr	r3, [pc, #628]	; (8004674 <_dtoa_r+0x4ec>)
 80043fe:	f001 020f 	and.w	r2, r1, #15
 8004402:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004406:	ed93 7b00 	vldr	d7, [r3]
 800440a:	110c      	asrs	r4, r1, #4
 800440c:	06e2      	lsls	r2, r4, #27
 800440e:	ed8d 7b00 	vstr	d7, [sp]
 8004412:	f140 849e 	bpl.w	8004d52 <_dtoa_r+0xbca>
 8004416:	4b98      	ldr	r3, [pc, #608]	; (8004678 <_dtoa_r+0x4f0>)
 8004418:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800441c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004420:	f7fc fcb4 	bl	8000d8c <__aeabi_ddiv>
 8004424:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004428:	f004 040f 	and.w	r4, r4, #15
 800442c:	2603      	movs	r6, #3
 800442e:	b17c      	cbz	r4, 8004450 <_dtoa_r+0x2c8>
 8004430:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004434:	4d90      	ldr	r5, [pc, #576]	; (8004678 <_dtoa_r+0x4f0>)
 8004436:	07e3      	lsls	r3, r4, #31
 8004438:	d504      	bpl.n	8004444 <_dtoa_r+0x2bc>
 800443a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800443e:	f7fc fb7b 	bl	8000b38 <__aeabi_dmul>
 8004442:	3601      	adds	r6, #1
 8004444:	1064      	asrs	r4, r4, #1
 8004446:	f105 0508 	add.w	r5, r5, #8
 800444a:	d1f4      	bne.n	8004436 <_dtoa_r+0x2ae>
 800444c:	e9cd 0100 	strd	r0, r1, [sp]
 8004450:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004454:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004458:	f7fc fc98 	bl	8000d8c <__aeabi_ddiv>
 800445c:	e9cd 0100 	strd	r0, r1, [sp]
 8004460:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004462:	b143      	cbz	r3, 8004476 <_dtoa_r+0x2ee>
 8004464:	2200      	movs	r2, #0
 8004466:	4b85      	ldr	r3, [pc, #532]	; (800467c <_dtoa_r+0x4f4>)
 8004468:	e9dd 0100 	ldrd	r0, r1, [sp]
 800446c:	f7fc fdd6 	bl	800101c <__aeabi_dcmplt>
 8004470:	2800      	cmp	r0, #0
 8004472:	f040 84ff 	bne.w	8004e74 <_dtoa_r+0xcec>
 8004476:	4630      	mov	r0, r6
 8004478:	f7fc faf4 	bl	8000a64 <__aeabi_i2d>
 800447c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004480:	f7fc fb5a 	bl	8000b38 <__aeabi_dmul>
 8004484:	4b7e      	ldr	r3, [pc, #504]	; (8004680 <_dtoa_r+0x4f8>)
 8004486:	2200      	movs	r2, #0
 8004488:	f7fc f9a0 	bl	80007cc <__adddf3>
 800448c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800448e:	4606      	mov	r6, r0
 8004490:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004494:	2b00      	cmp	r3, #0
 8004496:	f000 841c 	beq.w	8004cd2 <_dtoa_r+0xb4a>
 800449a:	9b06      	ldr	r3, [sp, #24]
 800449c:	9316      	str	r3, [sp, #88]	; 0x58
 800449e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80044a0:	9312      	str	r3, [sp, #72]	; 0x48
 80044a2:	e9dd 0100 	ldrd	r0, r1, [sp]
 80044a6:	f7fc fdf7 	bl	8001098 <__aeabi_d2iz>
 80044aa:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80044ac:	4b71      	ldr	r3, [pc, #452]	; (8004674 <_dtoa_r+0x4ec>)
 80044ae:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80044b2:	ed13 7b02 	vldr	d7, [r3, #-8]
 80044b6:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80044ba:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80044be:	f7fc fad1 	bl	8000a64 <__aeabi_i2d>
 80044c2:	460b      	mov	r3, r1
 80044c4:	4602      	mov	r2, r0
 80044c6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80044ca:	e9cd 6700 	strd	r6, r7, [sp]
 80044ce:	f7fc f97b 	bl	80007c8 <__aeabi_dsub>
 80044d2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80044d4:	b2ed      	uxtb	r5, r5
 80044d6:	4606      	mov	r6, r0
 80044d8:	460f      	mov	r7, r1
 80044da:	f10b 0401 	add.w	r4, fp, #1
 80044de:	2b00      	cmp	r3, #0
 80044e0:	f000 8458 	beq.w	8004d94 <_dtoa_r+0xc0c>
 80044e4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80044e8:	2000      	movs	r0, #0
 80044ea:	4966      	ldr	r1, [pc, #408]	; (8004684 <_dtoa_r+0x4fc>)
 80044ec:	f7fc fc4e 	bl	8000d8c <__aeabi_ddiv>
 80044f0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80044f4:	f7fc f968 	bl	80007c8 <__aeabi_dsub>
 80044f8:	f88b 5000 	strb.w	r5, [fp]
 80044fc:	4632      	mov	r2, r6
 80044fe:	463b      	mov	r3, r7
 8004500:	e9cd 0100 	strd	r0, r1, [sp]
 8004504:	f7fc fda8 	bl	8001058 <__aeabi_dcmpgt>
 8004508:	2800      	cmp	r0, #0
 800450a:	f040 8502 	bne.w	8004f12 <_dtoa_r+0xd8a>
 800450e:	4632      	mov	r2, r6
 8004510:	463b      	mov	r3, r7
 8004512:	2000      	movs	r0, #0
 8004514:	4959      	ldr	r1, [pc, #356]	; (800467c <_dtoa_r+0x4f4>)
 8004516:	f7fc f957 	bl	80007c8 <__aeabi_dsub>
 800451a:	4602      	mov	r2, r0
 800451c:	460b      	mov	r3, r1
 800451e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004522:	f7fc fd99 	bl	8001058 <__aeabi_dcmpgt>
 8004526:	2800      	cmp	r0, #0
 8004528:	f040 84fb 	bne.w	8004f22 <_dtoa_r+0xd9a>
 800452c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800452e:	2a01      	cmp	r2, #1
 8004530:	d050      	beq.n	80045d4 <_dtoa_r+0x44c>
 8004532:	445a      	add	r2, fp
 8004534:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004538:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 800453c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004540:	4692      	mov	sl, r2
 8004542:	46cb      	mov	fp, r9
 8004544:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004548:	e00c      	b.n	8004564 <_dtoa_r+0x3dc>
 800454a:	2000      	movs	r0, #0
 800454c:	494b      	ldr	r1, [pc, #300]	; (800467c <_dtoa_r+0x4f4>)
 800454e:	f7fc f93b 	bl	80007c8 <__aeabi_dsub>
 8004552:	4642      	mov	r2, r8
 8004554:	464b      	mov	r3, r9
 8004556:	f7fc fd61 	bl	800101c <__aeabi_dcmplt>
 800455a:	2800      	cmp	r0, #0
 800455c:	f040 84dc 	bne.w	8004f18 <_dtoa_r+0xd90>
 8004560:	4554      	cmp	r4, sl
 8004562:	d030      	beq.n	80045c6 <_dtoa_r+0x43e>
 8004564:	4640      	mov	r0, r8
 8004566:	4649      	mov	r1, r9
 8004568:	2200      	movs	r2, #0
 800456a:	4b47      	ldr	r3, [pc, #284]	; (8004688 <_dtoa_r+0x500>)
 800456c:	f7fc fae4 	bl	8000b38 <__aeabi_dmul>
 8004570:	2200      	movs	r2, #0
 8004572:	4b45      	ldr	r3, [pc, #276]	; (8004688 <_dtoa_r+0x500>)
 8004574:	4680      	mov	r8, r0
 8004576:	4689      	mov	r9, r1
 8004578:	4630      	mov	r0, r6
 800457a:	4639      	mov	r1, r7
 800457c:	f7fc fadc 	bl	8000b38 <__aeabi_dmul>
 8004580:	460f      	mov	r7, r1
 8004582:	4606      	mov	r6, r0
 8004584:	f7fc fd88 	bl	8001098 <__aeabi_d2iz>
 8004588:	4605      	mov	r5, r0
 800458a:	f7fc fa6b 	bl	8000a64 <__aeabi_i2d>
 800458e:	4602      	mov	r2, r0
 8004590:	460b      	mov	r3, r1
 8004592:	4630      	mov	r0, r6
 8004594:	4639      	mov	r1, r7
 8004596:	f7fc f917 	bl	80007c8 <__aeabi_dsub>
 800459a:	3530      	adds	r5, #48	; 0x30
 800459c:	b2ed      	uxtb	r5, r5
 800459e:	4642      	mov	r2, r8
 80045a0:	464b      	mov	r3, r9
 80045a2:	f804 5b01 	strb.w	r5, [r4], #1
 80045a6:	4606      	mov	r6, r0
 80045a8:	460f      	mov	r7, r1
 80045aa:	f7fc fd37 	bl	800101c <__aeabi_dcmplt>
 80045ae:	4632      	mov	r2, r6
 80045b0:	463b      	mov	r3, r7
 80045b2:	2800      	cmp	r0, #0
 80045b4:	d0c9      	beq.n	800454a <_dtoa_r+0x3c2>
 80045b6:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80045b8:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80045bc:	9306      	str	r3, [sp, #24]
 80045be:	46d9      	mov	r9, fp
 80045c0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80045c4:	e236      	b.n	8004a34 <_dtoa_r+0x8ac>
 80045c6:	46d9      	mov	r9, fp
 80045c8:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80045cc:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80045d0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80045d4:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80045d8:	e9cd 3400 	strd	r3, r4, [sp]
 80045dc:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80045de:	2b00      	cmp	r3, #0
 80045e0:	f2c0 80ae 	blt.w	8004740 <_dtoa_r+0x5b8>
 80045e4:	9a06      	ldr	r2, [sp, #24]
 80045e6:	2a0e      	cmp	r2, #14
 80045e8:	f300 80aa 	bgt.w	8004740 <_dtoa_r+0x5b8>
 80045ec:	4b21      	ldr	r3, [pc, #132]	; (8004674 <_dtoa_r+0x4ec>)
 80045ee:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80045f2:	ed93 7b00 	vldr	d7, [r3]
 80045f6:	9b07      	ldr	r3, [sp, #28]
 80045f8:	2b00      	cmp	r3, #0
 80045fa:	ed8d 7b02 	vstr	d7, [sp, #8]
 80045fe:	f2c0 82be 	blt.w	8004b7e <_dtoa_r+0x9f6>
 8004602:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004606:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800460a:	4630      	mov	r0, r6
 800460c:	4639      	mov	r1, r7
 800460e:	f7fc fbbd 	bl	8000d8c <__aeabi_ddiv>
 8004612:	f7fc fd41 	bl	8001098 <__aeabi_d2iz>
 8004616:	4605      	mov	r5, r0
 8004618:	f7fc fa24 	bl	8000a64 <__aeabi_i2d>
 800461c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004620:	f7fc fa8a 	bl	8000b38 <__aeabi_dmul>
 8004624:	460b      	mov	r3, r1
 8004626:	4602      	mov	r2, r0
 8004628:	4639      	mov	r1, r7
 800462a:	4630      	mov	r0, r6
 800462c:	f7fc f8cc 	bl	80007c8 <__aeabi_dsub>
 8004630:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004634:	f88b 3000 	strb.w	r3, [fp]
 8004638:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800463a:	2b01      	cmp	r3, #1
 800463c:	4606      	mov	r6, r0
 800463e:	460f      	mov	r7, r1
 8004640:	f10b 0401 	add.w	r4, fp, #1
 8004644:	d053      	beq.n	80046ee <_dtoa_r+0x566>
 8004646:	2200      	movs	r2, #0
 8004648:	4b0f      	ldr	r3, [pc, #60]	; (8004688 <_dtoa_r+0x500>)
 800464a:	f7fc fa75 	bl	8000b38 <__aeabi_dmul>
 800464e:	2200      	movs	r2, #0
 8004650:	2300      	movs	r3, #0
 8004652:	4606      	mov	r6, r0
 8004654:	460f      	mov	r7, r1
 8004656:	f7fc fcd7 	bl	8001008 <__aeabi_dcmpeq>
 800465a:	2800      	cmp	r0, #0
 800465c:	f040 81ea 	bne.w	8004a34 <_dtoa_r+0x8ac>
 8004660:	f8cd a000 	str.w	sl, [sp]
 8004664:	f8cd 901c 	str.w	r9, [sp, #28]
 8004668:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800466c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004670:	e017      	b.n	80046a2 <_dtoa_r+0x51a>
 8004672:	bf00      	nop
 8004674:	08007210 	.word	0x08007210
 8004678:	080071e8 	.word	0x080071e8
 800467c:	3ff00000 	.word	0x3ff00000
 8004680:	401c0000 	.word	0x401c0000
 8004684:	3fe00000 	.word	0x3fe00000
 8004688:	40240000 	.word	0x40240000
 800468c:	f7fc fa54 	bl	8000b38 <__aeabi_dmul>
 8004690:	2200      	movs	r2, #0
 8004692:	2300      	movs	r3, #0
 8004694:	4606      	mov	r6, r0
 8004696:	460f      	mov	r7, r1
 8004698:	f7fc fcb6 	bl	8001008 <__aeabi_dcmpeq>
 800469c:	2800      	cmp	r0, #0
 800469e:	f040 833d 	bne.w	8004d1c <_dtoa_r+0xb94>
 80046a2:	464a      	mov	r2, r9
 80046a4:	4653      	mov	r3, sl
 80046a6:	4630      	mov	r0, r6
 80046a8:	4639      	mov	r1, r7
 80046aa:	f7fc fb6f 	bl	8000d8c <__aeabi_ddiv>
 80046ae:	f7fc fcf3 	bl	8001098 <__aeabi_d2iz>
 80046b2:	4605      	mov	r5, r0
 80046b4:	f7fc f9d6 	bl	8000a64 <__aeabi_i2d>
 80046b8:	464a      	mov	r2, r9
 80046ba:	4653      	mov	r3, sl
 80046bc:	f7fc fa3c 	bl	8000b38 <__aeabi_dmul>
 80046c0:	4602      	mov	r2, r0
 80046c2:	460b      	mov	r3, r1
 80046c4:	4630      	mov	r0, r6
 80046c6:	4639      	mov	r1, r7
 80046c8:	f7fc f87e 	bl	80007c8 <__aeabi_dsub>
 80046cc:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80046d0:	f804 cb01 	strb.w	ip, [r4], #1
 80046d4:	eba4 0c0b 	sub.w	ip, r4, fp
 80046d8:	45e0      	cmp	r8, ip
 80046da:	4606      	mov	r6, r0
 80046dc:	460f      	mov	r7, r1
 80046de:	f04f 0200 	mov.w	r2, #0
 80046e2:	4bc1      	ldr	r3, [pc, #772]	; (80049e8 <_dtoa_r+0x860>)
 80046e4:	d1d2      	bne.n	800468c <_dtoa_r+0x504>
 80046e6:	f8dd a000 	ldr.w	sl, [sp]
 80046ea:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80046ee:	4632      	mov	r2, r6
 80046f0:	463b      	mov	r3, r7
 80046f2:	4630      	mov	r0, r6
 80046f4:	4639      	mov	r1, r7
 80046f6:	f7fc f869 	bl	80007cc <__adddf3>
 80046fa:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80046fe:	4606      	mov	r6, r0
 8004700:	460f      	mov	r7, r1
 8004702:	f7fc fca9 	bl	8001058 <__aeabi_dcmpgt>
 8004706:	b958      	cbnz	r0, 8004720 <_dtoa_r+0x598>
 8004708:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800470c:	4630      	mov	r0, r6
 800470e:	4639      	mov	r1, r7
 8004710:	f7fc fc7a 	bl	8001008 <__aeabi_dcmpeq>
 8004714:	2800      	cmp	r0, #0
 8004716:	f000 818d 	beq.w	8004a34 <_dtoa_r+0x8ac>
 800471a:	07e9      	lsls	r1, r5, #31
 800471c:	f140 818a 	bpl.w	8004a34 <_dtoa_r+0x8ac>
 8004720:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004724:	e005      	b.n	8004732 <_dtoa_r+0x5aa>
 8004726:	459b      	cmp	fp, r3
 8004728:	f000 8373 	beq.w	8004e12 <_dtoa_r+0xc8a>
 800472c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004730:	461c      	mov	r4, r3
 8004732:	2d39      	cmp	r5, #57	; 0x39
 8004734:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004738:	d0f5      	beq.n	8004726 <_dtoa_r+0x59e>
 800473a:	3501      	adds	r5, #1
 800473c:	701d      	strb	r5, [r3, #0]
 800473e:	e179      	b.n	8004a34 <_dtoa_r+0x8ac>
 8004740:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004742:	2a00      	cmp	r2, #0
 8004744:	d03b      	beq.n	80047be <_dtoa_r+0x636>
 8004746:	9a02      	ldr	r2, [sp, #8]
 8004748:	2a01      	cmp	r2, #1
 800474a:	f340 820b 	ble.w	8004b64 <_dtoa_r+0x9dc>
 800474e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004750:	1e5f      	subs	r7, r3, #1
 8004752:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004754:	42bb      	cmp	r3, r7
 8004756:	f2c0 82e6 	blt.w	8004d26 <_dtoa_r+0xb9e>
 800475a:	1bdf      	subs	r7, r3, r7
 800475c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800475e:	2b00      	cmp	r3, #0
 8004760:	f2c0 830b 	blt.w	8004d7a <_dtoa_r+0xbf2>
 8004764:	9a08      	ldr	r2, [sp, #32]
 8004766:	4614      	mov	r4, r2
 8004768:	441a      	add	r2, r3
 800476a:	4498      	add	r8, r3
 800476c:	9208      	str	r2, [sp, #32]
 800476e:	2101      	movs	r1, #1
 8004770:	4648      	mov	r0, r9
 8004772:	f001 fcbf 	bl	80060f4 <__i2b>
 8004776:	4605      	mov	r5, r0
 8004778:	e024      	b.n	80047c4 <_dtoa_r+0x63c>
 800477a:	2301      	movs	r3, #1
 800477c:	930d      	str	r3, [sp, #52]	; 0x34
 800477e:	e5af      	b.n	80042e0 <_dtoa_r+0x158>
 8004780:	9a08      	ldr	r2, [sp, #32]
 8004782:	9b06      	ldr	r3, [sp, #24]
 8004784:	1ad2      	subs	r2, r2, r3
 8004786:	425b      	negs	r3, r3
 8004788:	930b      	str	r3, [sp, #44]	; 0x2c
 800478a:	2300      	movs	r3, #0
 800478c:	9208      	str	r2, [sp, #32]
 800478e:	930c      	str	r3, [sp, #48]	; 0x30
 8004790:	e5b5      	b.n	80042fe <_dtoa_r+0x176>
 8004792:	f1c4 0301 	rsb	r3, r4, #1
 8004796:	9308      	str	r3, [sp, #32]
 8004798:	f04f 0800 	mov.w	r8, #0
 800479c:	e5a7      	b.n	80042ee <_dtoa_r+0x166>
 800479e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80047a2:	4640      	mov	r0, r8
 80047a4:	f7fc f95e 	bl	8000a64 <__aeabi_i2d>
 80047a8:	4632      	mov	r2, r6
 80047aa:	463b      	mov	r3, r7
 80047ac:	f7fc fc2c 	bl	8001008 <__aeabi_dcmpeq>
 80047b0:	2800      	cmp	r0, #0
 80047b2:	f47f ad81 	bne.w	80042b8 <_dtoa_r+0x130>
 80047b6:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80047ba:	9306      	str	r3, [sp, #24]
 80047bc:	e57c      	b.n	80042b8 <_dtoa_r+0x130>
 80047be:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80047c0:	9c08      	ldr	r4, [sp, #32]
 80047c2:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80047c4:	2c00      	cmp	r4, #0
 80047c6:	dd0c      	ble.n	80047e2 <_dtoa_r+0x65a>
 80047c8:	f1b8 0f00 	cmp.w	r8, #0
 80047cc:	dd09      	ble.n	80047e2 <_dtoa_r+0x65a>
 80047ce:	4544      	cmp	r4, r8
 80047d0:	9a08      	ldr	r2, [sp, #32]
 80047d2:	4623      	mov	r3, r4
 80047d4:	bfa8      	it	ge
 80047d6:	4643      	movge	r3, r8
 80047d8:	1ad2      	subs	r2, r2, r3
 80047da:	9208      	str	r2, [sp, #32]
 80047dc:	1ae4      	subs	r4, r4, r3
 80047de:	eba8 0803 	sub.w	r8, r8, r3
 80047e2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80047e4:	b16b      	cbz	r3, 8004802 <_dtoa_r+0x67a>
 80047e6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80047e8:	2a00      	cmp	r2, #0
 80047ea:	f000 8290 	beq.w	8004d0e <_dtoa_r+0xb86>
 80047ee:	1bde      	subs	r6, r3, r7
 80047f0:	2f00      	cmp	r7, #0
 80047f2:	f040 819b 	bne.w	8004b2c <_dtoa_r+0x9a4>
 80047f6:	4651      	mov	r1, sl
 80047f8:	4632      	mov	r2, r6
 80047fa:	4648      	mov	r0, r9
 80047fc:	f001 fd2a 	bl	8006254 <__pow5mult>
 8004800:	4682      	mov	sl, r0
 8004802:	2101      	movs	r1, #1
 8004804:	4648      	mov	r0, r9
 8004806:	f001 fc75 	bl	80060f4 <__i2b>
 800480a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800480c:	4606      	mov	r6, r0
 800480e:	2a00      	cmp	r2, #0
 8004810:	f040 8125 	bne.w	8004a5e <_dtoa_r+0x8d6>
 8004814:	9b02      	ldr	r3, [sp, #8]
 8004816:	2b01      	cmp	r3, #1
 8004818:	f340 816c 	ble.w	8004af4 <_dtoa_r+0x96c>
 800481c:	2001      	movs	r0, #1
 800481e:	4440      	add	r0, r8
 8004820:	f010 001f 	ands.w	r0, r0, #31
 8004824:	f000 8119 	beq.w	8004a5a <_dtoa_r+0x8d2>
 8004828:	f1c0 0320 	rsb	r3, r0, #32
 800482c:	2b04      	cmp	r3, #4
 800482e:	f340 83ac 	ble.w	8004f8a <_dtoa_r+0xe02>
 8004832:	f1c0 001c 	rsb	r0, r0, #28
 8004836:	9b08      	ldr	r3, [sp, #32]
 8004838:	4403      	add	r3, r0
 800483a:	9308      	str	r3, [sp, #32]
 800483c:	4404      	add	r4, r0
 800483e:	4480      	add	r8, r0
 8004840:	9b08      	ldr	r3, [sp, #32]
 8004842:	2b00      	cmp	r3, #0
 8004844:	dd05      	ble.n	8004852 <_dtoa_r+0x6ca>
 8004846:	4651      	mov	r1, sl
 8004848:	461a      	mov	r2, r3
 800484a:	4648      	mov	r0, r9
 800484c:	f001 fd52 	bl	80062f4 <__lshift>
 8004850:	4682      	mov	sl, r0
 8004852:	f1b8 0f00 	cmp.w	r8, #0
 8004856:	dd05      	ble.n	8004864 <_dtoa_r+0x6dc>
 8004858:	4631      	mov	r1, r6
 800485a:	4642      	mov	r2, r8
 800485c:	4648      	mov	r0, r9
 800485e:	f001 fd49 	bl	80062f4 <__lshift>
 8004862:	4606      	mov	r6, r0
 8004864:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004866:	2b00      	cmp	r3, #0
 8004868:	d177      	bne.n	800495a <_dtoa_r+0x7d2>
 800486a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800486c:	2b00      	cmp	r3, #0
 800486e:	f340 8209 	ble.w	8004c84 <_dtoa_r+0xafc>
 8004872:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004874:	2b00      	cmp	r3, #0
 8004876:	f000 8089 	beq.w	800498c <_dtoa_r+0x804>
 800487a:	2c00      	cmp	r4, #0
 800487c:	f300 816b 	bgt.w	8004b56 <_dtoa_r+0x9ce>
 8004880:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004882:	2b00      	cmp	r3, #0
 8004884:	f040 81cd 	bne.w	8004c22 <_dtoa_r+0xa9a>
 8004888:	46a8      	mov	r8, r5
 800488a:	9a00      	ldr	r2, [sp, #0]
 800488c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004890:	f002 0201 	and.w	r2, r2, #1
 8004894:	920a      	str	r2, [sp, #40]	; 0x28
 8004896:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004898:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 800489c:	441a      	add	r2, r3
 800489e:	465f      	mov	r7, fp
 80048a0:	9209      	str	r2, [sp, #36]	; 0x24
 80048a2:	46b3      	mov	fp, r6
 80048a4:	4659      	mov	r1, fp
 80048a6:	4650      	mov	r0, sl
 80048a8:	f7ff fbdc 	bl	8004064 <quorem>
 80048ac:	4629      	mov	r1, r5
 80048ae:	4604      	mov	r4, r0
 80048b0:	4650      	mov	r0, sl
 80048b2:	f001 fd75 	bl	80063a0 <__mcmp>
 80048b6:	4659      	mov	r1, fp
 80048b8:	4606      	mov	r6, r0
 80048ba:	4642      	mov	r2, r8
 80048bc:	4648      	mov	r0, r9
 80048be:	f001 fd8b 	bl	80063d8 <__mdiff>
 80048c2:	f104 0330 	add.w	r3, r4, #48	; 0x30
 80048c6:	9300      	str	r3, [sp, #0]
 80048c8:	68c3      	ldr	r3, [r0, #12]
 80048ca:	4601      	mov	r1, r0
 80048cc:	2b00      	cmp	r3, #0
 80048ce:	f040 81d4 	bne.w	8004c7a <_dtoa_r+0xaf2>
 80048d2:	9008      	str	r0, [sp, #32]
 80048d4:	4650      	mov	r0, sl
 80048d6:	f001 fd63 	bl	80063a0 <__mcmp>
 80048da:	9a08      	ldr	r2, [sp, #32]
 80048dc:	9007      	str	r0, [sp, #28]
 80048de:	4611      	mov	r1, r2
 80048e0:	4648      	mov	r0, r9
 80048e2:	f001 fb6d 	bl	8005fc0 <_Bfree>
 80048e6:	9b07      	ldr	r3, [sp, #28]
 80048e8:	b933      	cbnz	r3, 80048f8 <_dtoa_r+0x770>
 80048ea:	9a02      	ldr	r2, [sp, #8]
 80048ec:	b922      	cbnz	r2, 80048f8 <_dtoa_r+0x770>
 80048ee:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80048f0:	2b00      	cmp	r3, #0
 80048f2:	f000 8319 	beq.w	8004f28 <_dtoa_r+0xda0>
 80048f6:	9b02      	ldr	r3, [sp, #8]
 80048f8:	2e00      	cmp	r6, #0
 80048fa:	f2c0 821c 	blt.w	8004d36 <_dtoa_r+0xbae>
 80048fe:	d105      	bne.n	800490c <_dtoa_r+0x784>
 8004900:	9a02      	ldr	r2, [sp, #8]
 8004902:	b91a      	cbnz	r2, 800490c <_dtoa_r+0x784>
 8004904:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004906:	2a00      	cmp	r2, #0
 8004908:	f000 8215 	beq.w	8004d36 <_dtoa_r+0xbae>
 800490c:	2b00      	cmp	r3, #0
 800490e:	f107 0401 	add.w	r4, r7, #1
 8004912:	f300 8225 	bgt.w	8004d60 <_dtoa_r+0xbd8>
 8004916:	9b00      	ldr	r3, [sp, #0]
 8004918:	703b      	strb	r3, [r7, #0]
 800491a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800491c:	42bb      	cmp	r3, r7
 800491e:	f000 8230 	beq.w	8004d82 <_dtoa_r+0xbfa>
 8004922:	4651      	mov	r1, sl
 8004924:	2300      	movs	r3, #0
 8004926:	220a      	movs	r2, #10
 8004928:	4648      	mov	r0, r9
 800492a:	f001 fb53 	bl	8005fd4 <__multadd>
 800492e:	4545      	cmp	r5, r8
 8004930:	4682      	mov	sl, r0
 8004932:	4629      	mov	r1, r5
 8004934:	f04f 0300 	mov.w	r3, #0
 8004938:	f04f 020a 	mov.w	r2, #10
 800493c:	4648      	mov	r0, r9
 800493e:	f000 8196 	beq.w	8004c6e <_dtoa_r+0xae6>
 8004942:	f001 fb47 	bl	8005fd4 <__multadd>
 8004946:	4641      	mov	r1, r8
 8004948:	4605      	mov	r5, r0
 800494a:	2300      	movs	r3, #0
 800494c:	220a      	movs	r2, #10
 800494e:	4648      	mov	r0, r9
 8004950:	f001 fb40 	bl	8005fd4 <__multadd>
 8004954:	4627      	mov	r7, r4
 8004956:	4680      	mov	r8, r0
 8004958:	e7a4      	b.n	80048a4 <_dtoa_r+0x71c>
 800495a:	4631      	mov	r1, r6
 800495c:	4650      	mov	r0, sl
 800495e:	f001 fd1f 	bl	80063a0 <__mcmp>
 8004962:	2800      	cmp	r0, #0
 8004964:	da81      	bge.n	800486a <_dtoa_r+0x6e2>
 8004966:	9f06      	ldr	r7, [sp, #24]
 8004968:	4651      	mov	r1, sl
 800496a:	2300      	movs	r3, #0
 800496c:	220a      	movs	r2, #10
 800496e:	4648      	mov	r0, r9
 8004970:	3f01      	subs	r7, #1
 8004972:	9706      	str	r7, [sp, #24]
 8004974:	f001 fb2e 	bl	8005fd4 <__multadd>
 8004978:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800497a:	4682      	mov	sl, r0
 800497c:	2b00      	cmp	r3, #0
 800497e:	f040 82eb 	bne.w	8004f58 <_dtoa_r+0xdd0>
 8004982:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004984:	2b00      	cmp	r3, #0
 8004986:	f340 82f3 	ble.w	8004f70 <_dtoa_r+0xde8>
 800498a:	9309      	str	r3, [sp, #36]	; 0x24
 800498c:	465c      	mov	r4, fp
 800498e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004992:	e002      	b.n	800499a <_dtoa_r+0x812>
 8004994:	f001 fb1e 	bl	8005fd4 <__multadd>
 8004998:	4682      	mov	sl, r0
 800499a:	4631      	mov	r1, r6
 800499c:	4650      	mov	r0, sl
 800499e:	f7ff fb61 	bl	8004064 <quorem>
 80049a2:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80049a6:	f804 7b01 	strb.w	r7, [r4], #1
 80049aa:	eba4 030b 	sub.w	r3, r4, fp
 80049ae:	4598      	cmp	r8, r3
 80049b0:	f04f 020a 	mov.w	r2, #10
 80049b4:	f04f 0300 	mov.w	r3, #0
 80049b8:	4651      	mov	r1, sl
 80049ba:	4648      	mov	r0, r9
 80049bc:	dcea      	bgt.n	8004994 <_dtoa_r+0x80c>
 80049be:	2300      	movs	r3, #0
 80049c0:	9700      	str	r7, [sp, #0]
 80049c2:	9302      	str	r3, [sp, #8]
 80049c4:	4651      	mov	r1, sl
 80049c6:	2201      	movs	r2, #1
 80049c8:	4648      	mov	r0, r9
 80049ca:	f001 fc93 	bl	80062f4 <__lshift>
 80049ce:	4631      	mov	r1, r6
 80049d0:	4682      	mov	sl, r0
 80049d2:	f001 fce5 	bl	80063a0 <__mcmp>
 80049d6:	2800      	cmp	r0, #0
 80049d8:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 80049dc:	dc14      	bgt.n	8004a08 <_dtoa_r+0x880>
 80049de:	d108      	bne.n	80049f2 <_dtoa_r+0x86a>
 80049e0:	9b00      	ldr	r3, [sp, #0]
 80049e2:	07db      	lsls	r3, r3, #31
 80049e4:	d410      	bmi.n	8004a08 <_dtoa_r+0x880>
 80049e6:	e004      	b.n	80049f2 <_dtoa_r+0x86a>
 80049e8:	40240000 	.word	0x40240000
 80049ec:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 80049f0:	461c      	mov	r4, r3
 80049f2:	2a30      	cmp	r2, #48	; 0x30
 80049f4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80049f8:	d0f8      	beq.n	80049ec <_dtoa_r+0x864>
 80049fa:	e00b      	b.n	8004a14 <_dtoa_r+0x88c>
 80049fc:	459b      	cmp	fp, r3
 80049fe:	f000 814e 	beq.w	8004c9e <_dtoa_r+0xb16>
 8004a02:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004a06:	461c      	mov	r4, r3
 8004a08:	2a39      	cmp	r2, #57	; 0x39
 8004a0a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004a0e:	d0f5      	beq.n	80049fc <_dtoa_r+0x874>
 8004a10:	3201      	adds	r2, #1
 8004a12:	701a      	strb	r2, [r3, #0]
 8004a14:	4631      	mov	r1, r6
 8004a16:	4648      	mov	r0, r9
 8004a18:	f001 fad2 	bl	8005fc0 <_Bfree>
 8004a1c:	b155      	cbz	r5, 8004a34 <_dtoa_r+0x8ac>
 8004a1e:	9902      	ldr	r1, [sp, #8]
 8004a20:	b121      	cbz	r1, 8004a2c <_dtoa_r+0x8a4>
 8004a22:	42a9      	cmp	r1, r5
 8004a24:	d002      	beq.n	8004a2c <_dtoa_r+0x8a4>
 8004a26:	4648      	mov	r0, r9
 8004a28:	f001 faca 	bl	8005fc0 <_Bfree>
 8004a2c:	4629      	mov	r1, r5
 8004a2e:	4648      	mov	r0, r9
 8004a30:	f001 fac6 	bl	8005fc0 <_Bfree>
 8004a34:	4651      	mov	r1, sl
 8004a36:	4648      	mov	r0, r9
 8004a38:	f001 fac2 	bl	8005fc0 <_Bfree>
 8004a3c:	2200      	movs	r2, #0
 8004a3e:	9b06      	ldr	r3, [sp, #24]
 8004a40:	7022      	strb	r2, [r4, #0]
 8004a42:	9a05      	ldr	r2, [sp, #20]
 8004a44:	3301      	adds	r3, #1
 8004a46:	6013      	str	r3, [r2, #0]
 8004a48:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004a4a:	2b00      	cmp	r3, #0
 8004a4c:	f43f abdb 	beq.w	8004206 <_dtoa_r+0x7e>
 8004a50:	4658      	mov	r0, fp
 8004a52:	601c      	str	r4, [r3, #0]
 8004a54:	b01b      	add	sp, #108	; 0x6c
 8004a56:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004a5a:	201c      	movs	r0, #28
 8004a5c:	e6eb      	b.n	8004836 <_dtoa_r+0x6ae>
 8004a5e:	4601      	mov	r1, r0
 8004a60:	4648      	mov	r0, r9
 8004a62:	f001 fbf7 	bl	8006254 <__pow5mult>
 8004a66:	9b02      	ldr	r3, [sp, #8]
 8004a68:	2b01      	cmp	r3, #1
 8004a6a:	4606      	mov	r6, r0
 8004a6c:	f340 80d4 	ble.w	8004c18 <_dtoa_r+0xa90>
 8004a70:	2300      	movs	r3, #0
 8004a72:	930c      	str	r3, [sp, #48]	; 0x30
 8004a74:	6933      	ldr	r3, [r6, #16]
 8004a76:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004a7a:	6918      	ldr	r0, [r3, #16]
 8004a7c:	f001 faea 	bl	8006054 <__hi0bits>
 8004a80:	f1c0 0020 	rsb	r0, r0, #32
 8004a84:	e6cb      	b.n	800481e <_dtoa_r+0x696>
 8004a86:	900d      	str	r0, [sp, #52]	; 0x34
 8004a88:	e42a      	b.n	80042e0 <_dtoa_r+0x158>
 8004a8a:	2501      	movs	r5, #1
 8004a8c:	e440      	b.n	8004310 <_dtoa_r+0x188>
 8004a8e:	f1c3 0820 	rsb	r8, r3, #32
 8004a92:	9b00      	ldr	r3, [sp, #0]
 8004a94:	fa03 f008 	lsl.w	r0, r3, r8
 8004a98:	f7ff bbd8 	b.w	800424c <_dtoa_r+0xc4>
 8004a9c:	2300      	movs	r3, #0
 8004a9e:	930a      	str	r3, [sp, #40]	; 0x28
 8004aa0:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004aa4:	4413      	add	r3, r2
 8004aa6:	930e      	str	r3, [sp, #56]	; 0x38
 8004aa8:	3301      	adds	r3, #1
 8004aaa:	2b01      	cmp	r3, #1
 8004aac:	461e      	mov	r6, r3
 8004aae:	9309      	str	r3, [sp, #36]	; 0x24
 8004ab0:	bfb8      	it	lt
 8004ab2:	2601      	movlt	r6, #1
 8004ab4:	2100      	movs	r1, #0
 8004ab6:	2e17      	cmp	r6, #23
 8004ab8:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004abc:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004abe:	f77f ac89 	ble.w	80043d4 <_dtoa_r+0x24c>
 8004ac2:	2201      	movs	r2, #1
 8004ac4:	2304      	movs	r3, #4
 8004ac6:	005b      	lsls	r3, r3, #1
 8004ac8:	f103 0014 	add.w	r0, r3, #20
 8004acc:	42b0      	cmp	r0, r6
 8004ace:	4611      	mov	r1, r2
 8004ad0:	f102 0201 	add.w	r2, r2, #1
 8004ad4:	d9f7      	bls.n	8004ac6 <_dtoa_r+0x93e>
 8004ad6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004ada:	e47b      	b.n	80043d4 <_dtoa_r+0x24c>
 8004adc:	2300      	movs	r3, #0
 8004ade:	930a      	str	r3, [sp, #40]	; 0x28
 8004ae0:	9e07      	ldr	r6, [sp, #28]
 8004ae2:	2e00      	cmp	r6, #0
 8004ae4:	f340 80e2 	ble.w	8004cac <_dtoa_r+0xb24>
 8004ae8:	960e      	str	r6, [sp, #56]	; 0x38
 8004aea:	9609      	str	r6, [sp, #36]	; 0x24
 8004aec:	e7e2      	b.n	8004ab4 <_dtoa_r+0x92c>
 8004aee:	2301      	movs	r3, #1
 8004af0:	930a      	str	r3, [sp, #40]	; 0x28
 8004af2:	e7f5      	b.n	8004ae0 <_dtoa_r+0x958>
 8004af4:	9b00      	ldr	r3, [sp, #0]
 8004af6:	2b00      	cmp	r3, #0
 8004af8:	f47f ae90 	bne.w	800481c <_dtoa_r+0x694>
 8004afc:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004b00:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004b04:	2b00      	cmp	r3, #0
 8004b06:	f040 8192 	bne.w	8004e2e <_dtoa_r+0xca6>
 8004b0a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004b0e:	0d1b      	lsrs	r3, r3, #20
 8004b10:	051b      	lsls	r3, r3, #20
 8004b12:	b12b      	cbz	r3, 8004b20 <_dtoa_r+0x998>
 8004b14:	9b08      	ldr	r3, [sp, #32]
 8004b16:	3301      	adds	r3, #1
 8004b18:	9308      	str	r3, [sp, #32]
 8004b1a:	f108 0801 	add.w	r8, r8, #1
 8004b1e:	2301      	movs	r3, #1
 8004b20:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004b22:	930c      	str	r3, [sp, #48]	; 0x30
 8004b24:	2a00      	cmp	r2, #0
 8004b26:	f43f ae79 	beq.w	800481c <_dtoa_r+0x694>
 8004b2a:	e7a3      	b.n	8004a74 <_dtoa_r+0x8ec>
 8004b2c:	463a      	mov	r2, r7
 8004b2e:	4629      	mov	r1, r5
 8004b30:	4648      	mov	r0, r9
 8004b32:	f001 fb8f 	bl	8006254 <__pow5mult>
 8004b36:	4652      	mov	r2, sl
 8004b38:	4601      	mov	r1, r0
 8004b3a:	4605      	mov	r5, r0
 8004b3c:	4648      	mov	r0, r9
 8004b3e:	f001 fae3 	bl	8006108 <__multiply>
 8004b42:	4651      	mov	r1, sl
 8004b44:	4607      	mov	r7, r0
 8004b46:	4648      	mov	r0, r9
 8004b48:	f001 fa3a 	bl	8005fc0 <_Bfree>
 8004b4c:	46ba      	mov	sl, r7
 8004b4e:	2e00      	cmp	r6, #0
 8004b50:	f43f ae57 	beq.w	8004802 <_dtoa_r+0x67a>
 8004b54:	e64f      	b.n	80047f6 <_dtoa_r+0x66e>
 8004b56:	4629      	mov	r1, r5
 8004b58:	4622      	mov	r2, r4
 8004b5a:	4648      	mov	r0, r9
 8004b5c:	f001 fbca 	bl	80062f4 <__lshift>
 8004b60:	4605      	mov	r5, r0
 8004b62:	e68d      	b.n	8004880 <_dtoa_r+0x6f8>
 8004b64:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004b66:	2a00      	cmp	r2, #0
 8004b68:	f000 815d 	beq.w	8004e26 <_dtoa_r+0xc9e>
 8004b6c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004b70:	9a08      	ldr	r2, [sp, #32]
 8004b72:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004b74:	4614      	mov	r4, r2
 8004b76:	441a      	add	r2, r3
 8004b78:	4498      	add	r8, r3
 8004b7a:	9208      	str	r2, [sp, #32]
 8004b7c:	e5f7      	b.n	800476e <_dtoa_r+0x5e6>
 8004b7e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b80:	2b00      	cmp	r3, #0
 8004b82:	f73f ad3e 	bgt.w	8004602 <_dtoa_r+0x47a>
 8004b86:	f040 80bc 	bne.w	8004d02 <_dtoa_r+0xb7a>
 8004b8a:	ec51 0b17 	vmov	r0, r1, d7
 8004b8e:	2200      	movs	r2, #0
 8004b90:	4bb2      	ldr	r3, [pc, #712]	; (8004e5c <_dtoa_r+0xcd4>)
 8004b92:	f7fb ffd1 	bl	8000b38 <__aeabi_dmul>
 8004b96:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004b9a:	f7fc fa53 	bl	8001044 <__aeabi_dcmpge>
 8004b9e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004ba0:	4635      	mov	r5, r6
 8004ba2:	2800      	cmp	r0, #0
 8004ba4:	d176      	bne.n	8004c94 <_dtoa_r+0xb0c>
 8004ba6:	9a06      	ldr	r2, [sp, #24]
 8004ba8:	2331      	movs	r3, #49	; 0x31
 8004baa:	3201      	adds	r2, #1
 8004bac:	9206      	str	r2, [sp, #24]
 8004bae:	f88b 3000 	strb.w	r3, [fp]
 8004bb2:	f10b 0401 	add.w	r4, fp, #1
 8004bb6:	4631      	mov	r1, r6
 8004bb8:	4648      	mov	r0, r9
 8004bba:	f001 fa01 	bl	8005fc0 <_Bfree>
 8004bbe:	2d00      	cmp	r5, #0
 8004bc0:	f47f af34 	bne.w	8004a2c <_dtoa_r+0x8a4>
 8004bc4:	e736      	b.n	8004a34 <_dtoa_r+0x8ac>
 8004bc6:	f000 8142 	beq.w	8004e4e <_dtoa_r+0xcc6>
 8004bca:	9b06      	ldr	r3, [sp, #24]
 8004bcc:	425c      	negs	r4, r3
 8004bce:	4ba4      	ldr	r3, [pc, #656]	; (8004e60 <_dtoa_r+0xcd8>)
 8004bd0:	f004 020f 	and.w	r2, r4, #15
 8004bd4:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004bd8:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004bdc:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004be0:	f7fb ffaa 	bl	8000b38 <__aeabi_dmul>
 8004be4:	1124      	asrs	r4, r4, #4
 8004be6:	e9cd 0100 	strd	r0, r1, [sp]
 8004bea:	f000 81c6 	beq.w	8004f7a <_dtoa_r+0xdf2>
 8004bee:	4d9d      	ldr	r5, [pc, #628]	; (8004e64 <_dtoa_r+0xcdc>)
 8004bf0:	2300      	movs	r3, #0
 8004bf2:	2602      	movs	r6, #2
 8004bf4:	07e7      	lsls	r7, r4, #31
 8004bf6:	d505      	bpl.n	8004c04 <_dtoa_r+0xa7c>
 8004bf8:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004bfc:	f7fb ff9c 	bl	8000b38 <__aeabi_dmul>
 8004c00:	3601      	adds	r6, #1
 8004c02:	2301      	movs	r3, #1
 8004c04:	1064      	asrs	r4, r4, #1
 8004c06:	f105 0508 	add.w	r5, r5, #8
 8004c0a:	d1f3      	bne.n	8004bf4 <_dtoa_r+0xa6c>
 8004c0c:	2b00      	cmp	r3, #0
 8004c0e:	f43f ac27 	beq.w	8004460 <_dtoa_r+0x2d8>
 8004c12:	e9cd 0100 	strd	r0, r1, [sp]
 8004c16:	e423      	b.n	8004460 <_dtoa_r+0x2d8>
 8004c18:	9b00      	ldr	r3, [sp, #0]
 8004c1a:	2b00      	cmp	r3, #0
 8004c1c:	f43f af6e 	beq.w	8004afc <_dtoa_r+0x974>
 8004c20:	e726      	b.n	8004a70 <_dtoa_r+0x8e8>
 8004c22:	6869      	ldr	r1, [r5, #4]
 8004c24:	4648      	mov	r0, r9
 8004c26:	f001 f9a5 	bl	8005f74 <_Balloc>
 8004c2a:	692b      	ldr	r3, [r5, #16]
 8004c2c:	3302      	adds	r3, #2
 8004c2e:	009a      	lsls	r2, r3, #2
 8004c30:	4604      	mov	r4, r0
 8004c32:	f105 010c 	add.w	r1, r5, #12
 8004c36:	300c      	adds	r0, #12
 8004c38:	f7fb fc62 	bl	8000500 <memcpy>
 8004c3c:	4621      	mov	r1, r4
 8004c3e:	2201      	movs	r2, #1
 8004c40:	4648      	mov	r0, r9
 8004c42:	f001 fb57 	bl	80062f4 <__lshift>
 8004c46:	4680      	mov	r8, r0
 8004c48:	e61f      	b.n	800488a <_dtoa_r+0x702>
 8004c4a:	2400      	movs	r4, #0
 8004c4c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004c50:	4621      	mov	r1, r4
 8004c52:	4648      	mov	r0, r9
 8004c54:	f001 f98e 	bl	8005f74 <_Balloc>
 8004c58:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004c5c:	930e      	str	r3, [sp, #56]	; 0x38
 8004c5e:	9309      	str	r3, [sp, #36]	; 0x24
 8004c60:	2301      	movs	r3, #1
 8004c62:	4683      	mov	fp, r0
 8004c64:	9407      	str	r4, [sp, #28]
 8004c66:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004c6a:	930a      	str	r3, [sp, #40]	; 0x28
 8004c6c:	e4b6      	b.n	80045dc <_dtoa_r+0x454>
 8004c6e:	f001 f9b1 	bl	8005fd4 <__multadd>
 8004c72:	4627      	mov	r7, r4
 8004c74:	4605      	mov	r5, r0
 8004c76:	4680      	mov	r8, r0
 8004c78:	e614      	b.n	80048a4 <_dtoa_r+0x71c>
 8004c7a:	4648      	mov	r0, r9
 8004c7c:	f001 f9a0 	bl	8005fc0 <_Bfree>
 8004c80:	2301      	movs	r3, #1
 8004c82:	e639      	b.n	80048f8 <_dtoa_r+0x770>
 8004c84:	9b02      	ldr	r3, [sp, #8]
 8004c86:	2b02      	cmp	r3, #2
 8004c88:	f77f adf3 	ble.w	8004872 <_dtoa_r+0x6ea>
 8004c8c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c8e:	2b00      	cmp	r3, #0
 8004c90:	f000 80cf 	beq.w	8004e32 <_dtoa_r+0xcaa>
 8004c94:	9b07      	ldr	r3, [sp, #28]
 8004c96:	43db      	mvns	r3, r3
 8004c98:	9306      	str	r3, [sp, #24]
 8004c9a:	465c      	mov	r4, fp
 8004c9c:	e78b      	b.n	8004bb6 <_dtoa_r+0xa2e>
 8004c9e:	9a06      	ldr	r2, [sp, #24]
 8004ca0:	2331      	movs	r3, #49	; 0x31
 8004ca2:	3201      	adds	r2, #1
 8004ca4:	9206      	str	r2, [sp, #24]
 8004ca6:	f88b 3000 	strb.w	r3, [fp]
 8004caa:	e6b3      	b.n	8004a14 <_dtoa_r+0x88c>
 8004cac:	2401      	movs	r4, #1
 8004cae:	9409      	str	r4, [sp, #36]	; 0x24
 8004cb0:	9407      	str	r4, [sp, #28]
 8004cb2:	f7ff bb8b 	b.w	80043cc <_dtoa_r+0x244>
 8004cb6:	4630      	mov	r0, r6
 8004cb8:	f7fb fed4 	bl	8000a64 <__aeabi_i2d>
 8004cbc:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004cc0:	f7fb ff3a 	bl	8000b38 <__aeabi_dmul>
 8004cc4:	2200      	movs	r2, #0
 8004cc6:	4b68      	ldr	r3, [pc, #416]	; (8004e68 <_dtoa_r+0xce0>)
 8004cc8:	f7fb fd80 	bl	80007cc <__adddf3>
 8004ccc:	4606      	mov	r6, r0
 8004cce:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004cd2:	2200      	movs	r2, #0
 8004cd4:	4b61      	ldr	r3, [pc, #388]	; (8004e5c <_dtoa_r+0xcd4>)
 8004cd6:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004cda:	f7fb fd75 	bl	80007c8 <__aeabi_dsub>
 8004cde:	4632      	mov	r2, r6
 8004ce0:	463b      	mov	r3, r7
 8004ce2:	4604      	mov	r4, r0
 8004ce4:	460d      	mov	r5, r1
 8004ce6:	f7fc f9b7 	bl	8001058 <__aeabi_dcmpgt>
 8004cea:	2800      	cmp	r0, #0
 8004cec:	d14f      	bne.n	8004d8e <_dtoa_r+0xc06>
 8004cee:	4632      	mov	r2, r6
 8004cf0:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004cf4:	4620      	mov	r0, r4
 8004cf6:	4629      	mov	r1, r5
 8004cf8:	f7fc f990 	bl	800101c <__aeabi_dcmplt>
 8004cfc:	2800      	cmp	r0, #0
 8004cfe:	f43f ac69 	beq.w	80045d4 <_dtoa_r+0x44c>
 8004d02:	2600      	movs	r6, #0
 8004d04:	4635      	mov	r5, r6
 8004d06:	e7c5      	b.n	8004c94 <_dtoa_r+0xb0c>
 8004d08:	2301      	movs	r3, #1
 8004d0a:	930a      	str	r3, [sp, #40]	; 0x28
 8004d0c:	e6c8      	b.n	8004aa0 <_dtoa_r+0x918>
 8004d0e:	4651      	mov	r1, sl
 8004d10:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004d12:	4648      	mov	r0, r9
 8004d14:	f001 fa9e 	bl	8006254 <__pow5mult>
 8004d18:	4682      	mov	sl, r0
 8004d1a:	e572      	b.n	8004802 <_dtoa_r+0x67a>
 8004d1c:	f8dd a000 	ldr.w	sl, [sp]
 8004d20:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004d24:	e686      	b.n	8004a34 <_dtoa_r+0x8ac>
 8004d26:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004d28:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004d2a:	1afb      	subs	r3, r7, r3
 8004d2c:	441a      	add	r2, r3
 8004d2e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004d32:	2700      	movs	r7, #0
 8004d34:	e512      	b.n	800475c <_dtoa_r+0x5d4>
 8004d36:	2b00      	cmp	r3, #0
 8004d38:	9402      	str	r4, [sp, #8]
 8004d3a:	465e      	mov	r6, fp
 8004d3c:	f107 0401 	add.w	r4, r7, #1
 8004d40:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d44:	f300 80ba 	bgt.w	8004ebc <_dtoa_r+0xd34>
 8004d48:	9b00      	ldr	r3, [sp, #0]
 8004d4a:	9502      	str	r5, [sp, #8]
 8004d4c:	703b      	strb	r3, [r7, #0]
 8004d4e:	4645      	mov	r5, r8
 8004d50:	e660      	b.n	8004a14 <_dtoa_r+0x88c>
 8004d52:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004d56:	2602      	movs	r6, #2
 8004d58:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004d5c:	f7ff bb67 	b.w	800442e <_dtoa_r+0x2a6>
 8004d60:	9b00      	ldr	r3, [sp, #0]
 8004d62:	2b39      	cmp	r3, #57	; 0x39
 8004d64:	465e      	mov	r6, fp
 8004d66:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d6a:	f000 80b9 	beq.w	8004ee0 <_dtoa_r+0xd58>
 8004d6e:	9b00      	ldr	r3, [sp, #0]
 8004d70:	9502      	str	r5, [sp, #8]
 8004d72:	3301      	adds	r3, #1
 8004d74:	703b      	strb	r3, [r7, #0]
 8004d76:	4645      	mov	r5, r8
 8004d78:	e64c      	b.n	8004a14 <_dtoa_r+0x88c>
 8004d7a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004d7e:	1a9c      	subs	r4, r3, r2
 8004d80:	e4f5      	b.n	800476e <_dtoa_r+0x5e6>
 8004d82:	465e      	mov	r6, fp
 8004d84:	9502      	str	r5, [sp, #8]
 8004d86:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d8a:	4645      	mov	r5, r8
 8004d8c:	e61a      	b.n	80049c4 <_dtoa_r+0x83c>
 8004d8e:	2600      	movs	r6, #0
 8004d90:	4635      	mov	r5, r6
 8004d92:	e708      	b.n	8004ba6 <_dtoa_r+0xa1e>
 8004d94:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004d98:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d9c:	f7fb fecc 	bl	8000b38 <__aeabi_dmul>
 8004da0:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004da2:	f88b 5000 	strb.w	r5, [fp]
 8004da6:	2b01      	cmp	r3, #1
 8004da8:	e9cd 0100 	strd	r0, r1, [sp]
 8004dac:	d020      	beq.n	8004df0 <_dtoa_r+0xc68>
 8004dae:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004db0:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004db4:	445b      	add	r3, fp
 8004db6:	4698      	mov	r8, r3
 8004db8:	2200      	movs	r2, #0
 8004dba:	4b2c      	ldr	r3, [pc, #176]	; (8004e6c <_dtoa_r+0xce4>)
 8004dbc:	4630      	mov	r0, r6
 8004dbe:	4639      	mov	r1, r7
 8004dc0:	f7fb feba 	bl	8000b38 <__aeabi_dmul>
 8004dc4:	460f      	mov	r7, r1
 8004dc6:	4606      	mov	r6, r0
 8004dc8:	f7fc f966 	bl	8001098 <__aeabi_d2iz>
 8004dcc:	4605      	mov	r5, r0
 8004dce:	f7fb fe49 	bl	8000a64 <__aeabi_i2d>
 8004dd2:	3530      	adds	r5, #48	; 0x30
 8004dd4:	4602      	mov	r2, r0
 8004dd6:	460b      	mov	r3, r1
 8004dd8:	4630      	mov	r0, r6
 8004dda:	4639      	mov	r1, r7
 8004ddc:	f7fb fcf4 	bl	80007c8 <__aeabi_dsub>
 8004de0:	f804 5b01 	strb.w	r5, [r4], #1
 8004de4:	4544      	cmp	r4, r8
 8004de6:	4606      	mov	r6, r0
 8004de8:	460f      	mov	r7, r1
 8004dea:	d1e5      	bne.n	8004db8 <_dtoa_r+0xc30>
 8004dec:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004df0:	4b1f      	ldr	r3, [pc, #124]	; (8004e70 <_dtoa_r+0xce8>)
 8004df2:	2200      	movs	r2, #0
 8004df4:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004df8:	f7fb fce8 	bl	80007cc <__adddf3>
 8004dfc:	4632      	mov	r2, r6
 8004dfe:	463b      	mov	r3, r7
 8004e00:	f7fc f90c 	bl	800101c <__aeabi_dcmplt>
 8004e04:	2800      	cmp	r0, #0
 8004e06:	d070      	beq.n	8004eea <_dtoa_r+0xd62>
 8004e08:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004e0a:	9306      	str	r3, [sp, #24]
 8004e0c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004e10:	e48f      	b.n	8004732 <_dtoa_r+0x5aa>
 8004e12:	2330      	movs	r3, #48	; 0x30
 8004e14:	f88b 3000 	strb.w	r3, [fp]
 8004e18:	9b06      	ldr	r3, [sp, #24]
 8004e1a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004e1e:	3301      	adds	r3, #1
 8004e20:	9306      	str	r3, [sp, #24]
 8004e22:	465b      	mov	r3, fp
 8004e24:	e489      	b.n	800473a <_dtoa_r+0x5b2>
 8004e26:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004e28:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004e2c:	e6a0      	b.n	8004b70 <_dtoa_r+0x9e8>
 8004e2e:	2300      	movs	r3, #0
 8004e30:	e676      	b.n	8004b20 <_dtoa_r+0x998>
 8004e32:	4631      	mov	r1, r6
 8004e34:	2205      	movs	r2, #5
 8004e36:	4648      	mov	r0, r9
 8004e38:	f001 f8cc 	bl	8005fd4 <__multadd>
 8004e3c:	4601      	mov	r1, r0
 8004e3e:	4606      	mov	r6, r0
 8004e40:	4650      	mov	r0, sl
 8004e42:	f001 faad 	bl	80063a0 <__mcmp>
 8004e46:	2800      	cmp	r0, #0
 8004e48:	f73f aead 	bgt.w	8004ba6 <_dtoa_r+0xa1e>
 8004e4c:	e722      	b.n	8004c94 <_dtoa_r+0xb0c>
 8004e4e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004e52:	2602      	movs	r6, #2
 8004e54:	ed8d 7b00 	vstr	d7, [sp]
 8004e58:	f7ff bb02 	b.w	8004460 <_dtoa_r+0x2d8>
 8004e5c:	40140000 	.word	0x40140000
 8004e60:	08007210 	.word	0x08007210
 8004e64:	080071e8 	.word	0x080071e8
 8004e68:	401c0000 	.word	0x401c0000
 8004e6c:	40240000 	.word	0x40240000
 8004e70:	3fe00000 	.word	0x3fe00000
 8004e74:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e76:	2b00      	cmp	r3, #0
 8004e78:	f43f af1d 	beq.w	8004cb6 <_dtoa_r+0xb2e>
 8004e7c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004e7e:	2c00      	cmp	r4, #0
 8004e80:	f77f aba8 	ble.w	80045d4 <_dtoa_r+0x44c>
 8004e84:	2200      	movs	r2, #0
 8004e86:	4b45      	ldr	r3, [pc, #276]	; (8004f9c <_dtoa_r+0xe14>)
 8004e88:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e8c:	f7fb fe54 	bl	8000b38 <__aeabi_dmul>
 8004e90:	e9cd 0100 	strd	r0, r1, [sp]
 8004e94:	1c70      	adds	r0, r6, #1
 8004e96:	f7fb fde5 	bl	8000a64 <__aeabi_i2d>
 8004e9a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e9e:	f7fb fe4b 	bl	8000b38 <__aeabi_dmul>
 8004ea2:	4b3f      	ldr	r3, [pc, #252]	; (8004fa0 <_dtoa_r+0xe18>)
 8004ea4:	2200      	movs	r2, #0
 8004ea6:	f7fb fc91 	bl	80007cc <__adddf3>
 8004eaa:	9b06      	ldr	r3, [sp, #24]
 8004eac:	9412      	str	r4, [sp, #72]	; 0x48
 8004eae:	3b01      	subs	r3, #1
 8004eb0:	4606      	mov	r6, r0
 8004eb2:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004eb6:	9316      	str	r3, [sp, #88]	; 0x58
 8004eb8:	f7ff baf3 	b.w	80044a2 <_dtoa_r+0x31a>
 8004ebc:	4651      	mov	r1, sl
 8004ebe:	2201      	movs	r2, #1
 8004ec0:	4648      	mov	r0, r9
 8004ec2:	f001 fa17 	bl	80062f4 <__lshift>
 8004ec6:	4631      	mov	r1, r6
 8004ec8:	4682      	mov	sl, r0
 8004eca:	f001 fa69 	bl	80063a0 <__mcmp>
 8004ece:	2800      	cmp	r0, #0
 8004ed0:	dd3b      	ble.n	8004f4a <_dtoa_r+0xdc2>
 8004ed2:	9b00      	ldr	r3, [sp, #0]
 8004ed4:	2b39      	cmp	r3, #57	; 0x39
 8004ed6:	d003      	beq.n	8004ee0 <_dtoa_r+0xd58>
 8004ed8:	9b02      	ldr	r3, [sp, #8]
 8004eda:	3331      	adds	r3, #49	; 0x31
 8004edc:	9300      	str	r3, [sp, #0]
 8004ede:	e733      	b.n	8004d48 <_dtoa_r+0xbc0>
 8004ee0:	2239      	movs	r2, #57	; 0x39
 8004ee2:	9502      	str	r5, [sp, #8]
 8004ee4:	703a      	strb	r2, [r7, #0]
 8004ee6:	4645      	mov	r5, r8
 8004ee8:	e58e      	b.n	8004a08 <_dtoa_r+0x880>
 8004eea:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004eee:	2000      	movs	r0, #0
 8004ef0:	492c      	ldr	r1, [pc, #176]	; (8004fa4 <_dtoa_r+0xe1c>)
 8004ef2:	f7fb fc69 	bl	80007c8 <__aeabi_dsub>
 8004ef6:	4632      	mov	r2, r6
 8004ef8:	463b      	mov	r3, r7
 8004efa:	f7fc f8ad 	bl	8001058 <__aeabi_dcmpgt>
 8004efe:	b910      	cbnz	r0, 8004f06 <_dtoa_r+0xd7e>
 8004f00:	f7ff bb68 	b.w	80045d4 <_dtoa_r+0x44c>
 8004f04:	4614      	mov	r4, r2
 8004f06:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004f0a:	2b30      	cmp	r3, #48	; 0x30
 8004f0c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004f10:	d0f8      	beq.n	8004f04 <_dtoa_r+0xd7c>
 8004f12:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004f14:	9306      	str	r3, [sp, #24]
 8004f16:	e58d      	b.n	8004a34 <_dtoa_r+0x8ac>
 8004f18:	46d9      	mov	r9, fp
 8004f1a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004f1e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004f22:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004f24:	9306      	str	r3, [sp, #24]
 8004f26:	e404      	b.n	8004732 <_dtoa_r+0x5aa>
 8004f28:	9b00      	ldr	r3, [sp, #0]
 8004f2a:	2b39      	cmp	r3, #57	; 0x39
 8004f2c:	4621      	mov	r1, r4
 8004f2e:	4632      	mov	r2, r6
 8004f30:	f107 0401 	add.w	r4, r7, #1
 8004f34:	465e      	mov	r6, fp
 8004f36:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004f3a:	d0d1      	beq.n	8004ee0 <_dtoa_r+0xd58>
 8004f3c:	2a00      	cmp	r2, #0
 8004f3e:	f77f af03 	ble.w	8004d48 <_dtoa_r+0xbc0>
 8004f42:	460b      	mov	r3, r1
 8004f44:	3331      	adds	r3, #49	; 0x31
 8004f46:	9300      	str	r3, [sp, #0]
 8004f48:	e6fe      	b.n	8004d48 <_dtoa_r+0xbc0>
 8004f4a:	f47f aefd 	bne.w	8004d48 <_dtoa_r+0xbc0>
 8004f4e:	9b00      	ldr	r3, [sp, #0]
 8004f50:	07da      	lsls	r2, r3, #31
 8004f52:	f57f aef9 	bpl.w	8004d48 <_dtoa_r+0xbc0>
 8004f56:	e7bc      	b.n	8004ed2 <_dtoa_r+0xd4a>
 8004f58:	4629      	mov	r1, r5
 8004f5a:	2300      	movs	r3, #0
 8004f5c:	220a      	movs	r2, #10
 8004f5e:	4648      	mov	r0, r9
 8004f60:	f001 f838 	bl	8005fd4 <__multadd>
 8004f64:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f66:	2b00      	cmp	r3, #0
 8004f68:	4605      	mov	r5, r0
 8004f6a:	dd09      	ble.n	8004f80 <_dtoa_r+0xdf8>
 8004f6c:	9309      	str	r3, [sp, #36]	; 0x24
 8004f6e:	e484      	b.n	800487a <_dtoa_r+0x6f2>
 8004f70:	9b02      	ldr	r3, [sp, #8]
 8004f72:	2b02      	cmp	r3, #2
 8004f74:	dc0e      	bgt.n	8004f94 <_dtoa_r+0xe0c>
 8004f76:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f78:	e507      	b.n	800498a <_dtoa_r+0x802>
 8004f7a:	2602      	movs	r6, #2
 8004f7c:	f7ff ba70 	b.w	8004460 <_dtoa_r+0x2d8>
 8004f80:	9b02      	ldr	r3, [sp, #8]
 8004f82:	2b02      	cmp	r3, #2
 8004f84:	dc06      	bgt.n	8004f94 <_dtoa_r+0xe0c>
 8004f86:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f88:	e7f0      	b.n	8004f6c <_dtoa_r+0xde4>
 8004f8a:	f43f ac59 	beq.w	8004840 <_dtoa_r+0x6b8>
 8004f8e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004f92:	e450      	b.n	8004836 <_dtoa_r+0x6ae>
 8004f94:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f96:	9309      	str	r3, [sp, #36]	; 0x24
 8004f98:	e678      	b.n	8004c8c <_dtoa_r+0xb04>
 8004f9a:	bf00      	nop
 8004f9c:	40240000 	.word	0x40240000
 8004fa0:	401c0000 	.word	0x401c0000
 8004fa4:	3fe00000 	.word	0x3fe00000

08004fa8 <__sflush_r>:
 8004fa8:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004fac:	b29a      	uxth	r2, r3
 8004fae:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004fb2:	460c      	mov	r4, r1
 8004fb4:	0711      	lsls	r1, r2, #28
 8004fb6:	4680      	mov	r8, r0
 8004fb8:	d444      	bmi.n	8005044 <__sflush_r+0x9c>
 8004fba:	6862      	ldr	r2, [r4, #4]
 8004fbc:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004fc0:	2a00      	cmp	r2, #0
 8004fc2:	81a3      	strh	r3, [r4, #12]
 8004fc4:	dd59      	ble.n	800507a <__sflush_r+0xd2>
 8004fc6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004fc8:	2d00      	cmp	r5, #0
 8004fca:	d053      	beq.n	8005074 <__sflush_r+0xcc>
 8004fcc:	2200      	movs	r2, #0
 8004fce:	b29b      	uxth	r3, r3
 8004fd0:	f8d8 6000 	ldr.w	r6, [r8]
 8004fd4:	69e1      	ldr	r1, [r4, #28]
 8004fd6:	f8c8 2000 	str.w	r2, [r8]
 8004fda:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8004fde:	f040 8083 	bne.w	80050e8 <__sflush_r+0x140>
 8004fe2:	2301      	movs	r3, #1
 8004fe4:	4640      	mov	r0, r8
 8004fe6:	47a8      	blx	r5
 8004fe8:	1c42      	adds	r2, r0, #1
 8004fea:	d04a      	beq.n	8005082 <__sflush_r+0xda>
 8004fec:	89a3      	ldrh	r3, [r4, #12]
 8004fee:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004ff0:	69e1      	ldr	r1, [r4, #28]
 8004ff2:	075b      	lsls	r3, r3, #29
 8004ff4:	d505      	bpl.n	8005002 <__sflush_r+0x5a>
 8004ff6:	6862      	ldr	r2, [r4, #4]
 8004ff8:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8004ffa:	1a80      	subs	r0, r0, r2
 8004ffc:	b10b      	cbz	r3, 8005002 <__sflush_r+0x5a>
 8004ffe:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005000:	1ac0      	subs	r0, r0, r3
 8005002:	4602      	mov	r2, r0
 8005004:	2300      	movs	r3, #0
 8005006:	4640      	mov	r0, r8
 8005008:	47a8      	blx	r5
 800500a:	1c47      	adds	r7, r0, #1
 800500c:	d045      	beq.n	800509a <__sflush_r+0xf2>
 800500e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005012:	6922      	ldr	r2, [r4, #16]
 8005014:	6022      	str	r2, [r4, #0]
 8005016:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 800501a:	2200      	movs	r2, #0
 800501c:	81a3      	strh	r3, [r4, #12]
 800501e:	04db      	lsls	r3, r3, #19
 8005020:	6062      	str	r2, [r4, #4]
 8005022:	d500      	bpl.n	8005026 <__sflush_r+0x7e>
 8005024:	6520      	str	r0, [r4, #80]	; 0x50
 8005026:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005028:	f8c8 6000 	str.w	r6, [r8]
 800502c:	b311      	cbz	r1, 8005074 <__sflush_r+0xcc>
 800502e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005032:	4299      	cmp	r1, r3
 8005034:	d002      	beq.n	800503c <__sflush_r+0x94>
 8005036:	4640      	mov	r0, r8
 8005038:	f000 f95e 	bl	80052f8 <_free_r>
 800503c:	2000      	movs	r0, #0
 800503e:	6320      	str	r0, [r4, #48]	; 0x30
 8005040:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005044:	6926      	ldr	r6, [r4, #16]
 8005046:	b1ae      	cbz	r6, 8005074 <__sflush_r+0xcc>
 8005048:	6825      	ldr	r5, [r4, #0]
 800504a:	6026      	str	r6, [r4, #0]
 800504c:	0792      	lsls	r2, r2, #30
 800504e:	bf0c      	ite	eq
 8005050:	6963      	ldreq	r3, [r4, #20]
 8005052:	2300      	movne	r3, #0
 8005054:	1bad      	subs	r5, r5, r6
 8005056:	60a3      	str	r3, [r4, #8]
 8005058:	e00a      	b.n	8005070 <__sflush_r+0xc8>
 800505a:	462b      	mov	r3, r5
 800505c:	4632      	mov	r2, r6
 800505e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005060:	69e1      	ldr	r1, [r4, #28]
 8005062:	4640      	mov	r0, r8
 8005064:	47b8      	blx	r7
 8005066:	2800      	cmp	r0, #0
 8005068:	eba5 0500 	sub.w	r5, r5, r0
 800506c:	4406      	add	r6, r0
 800506e:	dd2b      	ble.n	80050c8 <__sflush_r+0x120>
 8005070:	2d00      	cmp	r5, #0
 8005072:	dcf2      	bgt.n	800505a <__sflush_r+0xb2>
 8005074:	2000      	movs	r0, #0
 8005076:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800507a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800507c:	2a00      	cmp	r2, #0
 800507e:	dca2      	bgt.n	8004fc6 <__sflush_r+0x1e>
 8005080:	e7f8      	b.n	8005074 <__sflush_r+0xcc>
 8005082:	f8d8 3000 	ldr.w	r3, [r8]
 8005086:	2b00      	cmp	r3, #0
 8005088:	d0b0      	beq.n	8004fec <__sflush_r+0x44>
 800508a:	2b1d      	cmp	r3, #29
 800508c:	d001      	beq.n	8005092 <__sflush_r+0xea>
 800508e:	2b16      	cmp	r3, #22
 8005090:	d12c      	bne.n	80050ec <__sflush_r+0x144>
 8005092:	f8c8 6000 	str.w	r6, [r8]
 8005096:	2000      	movs	r0, #0
 8005098:	e7ed      	b.n	8005076 <__sflush_r+0xce>
 800509a:	f8d8 1000 	ldr.w	r1, [r8]
 800509e:	291d      	cmp	r1, #29
 80050a0:	d81a      	bhi.n	80050d8 <__sflush_r+0x130>
 80050a2:	4b15      	ldr	r3, [pc, #84]	; (80050f8 <__sflush_r+0x150>)
 80050a4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80050a8:	40cb      	lsrs	r3, r1
 80050aa:	43db      	mvns	r3, r3
 80050ac:	f013 0301 	ands.w	r3, r3, #1
 80050b0:	d114      	bne.n	80050dc <__sflush_r+0x134>
 80050b2:	6925      	ldr	r5, [r4, #16]
 80050b4:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80050b8:	e9c4 5300 	strd	r5, r3, [r4]
 80050bc:	04d5      	lsls	r5, r2, #19
 80050be:	81a2      	strh	r2, [r4, #12]
 80050c0:	d5b1      	bpl.n	8005026 <__sflush_r+0x7e>
 80050c2:	2900      	cmp	r1, #0
 80050c4:	d1af      	bne.n	8005026 <__sflush_r+0x7e>
 80050c6:	e7ad      	b.n	8005024 <__sflush_r+0x7c>
 80050c8:	89a3      	ldrh	r3, [r4, #12]
 80050ca:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80050ce:	81a3      	strh	r3, [r4, #12]
 80050d0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80050d4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80050d8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80050dc:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80050e0:	81a2      	strh	r2, [r4, #12]
 80050e2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80050e6:	e7c6      	b.n	8005076 <__sflush_r+0xce>
 80050e8:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80050ea:	e782      	b.n	8004ff2 <__sflush_r+0x4a>
 80050ec:	89a3      	ldrh	r3, [r4, #12]
 80050ee:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80050f2:	81a3      	strh	r3, [r4, #12]
 80050f4:	e7bf      	b.n	8005076 <__sflush_r+0xce>
 80050f6:	bf00      	nop
 80050f8:	20400001 	.word	0x20400001

080050fc <_fflush_r>:
 80050fc:	b538      	push	{r3, r4, r5, lr}
 80050fe:	460d      	mov	r5, r1
 8005100:	4604      	mov	r4, r0
 8005102:	b108      	cbz	r0, 8005108 <_fflush_r+0xc>
 8005104:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005106:	b1a3      	cbz	r3, 8005132 <_fflush_r+0x36>
 8005108:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800510c:	b1b8      	cbz	r0, 800513e <_fflush_r+0x42>
 800510e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005110:	07db      	lsls	r3, r3, #31
 8005112:	d401      	bmi.n	8005118 <_fflush_r+0x1c>
 8005114:	0581      	lsls	r1, r0, #22
 8005116:	d51a      	bpl.n	800514e <_fflush_r+0x52>
 8005118:	4620      	mov	r0, r4
 800511a:	4629      	mov	r1, r5
 800511c:	f7ff ff44 	bl	8004fa8 <__sflush_r>
 8005120:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005122:	07da      	lsls	r2, r3, #31
 8005124:	4604      	mov	r4, r0
 8005126:	d402      	bmi.n	800512e <_fflush_r+0x32>
 8005128:	89ab      	ldrh	r3, [r5, #12]
 800512a:	059b      	lsls	r3, r3, #22
 800512c:	d50a      	bpl.n	8005144 <_fflush_r+0x48>
 800512e:	4620      	mov	r0, r4
 8005130:	bd38      	pop	{r3, r4, r5, pc}
 8005132:	f000 f83f 	bl	80051b4 <__sinit>
 8005136:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800513a:	2800      	cmp	r0, #0
 800513c:	d1e7      	bne.n	800510e <_fflush_r+0x12>
 800513e:	4604      	mov	r4, r0
 8005140:	4620      	mov	r0, r4
 8005142:	bd38      	pop	{r3, r4, r5, pc}
 8005144:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005146:	f000 fb87 	bl	8005858 <__retarget_lock_release_recursive>
 800514a:	4620      	mov	r0, r4
 800514c:	bd38      	pop	{r3, r4, r5, pc}
 800514e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005150:	f000 fb80 	bl	8005854 <__retarget_lock_acquire_recursive>
 8005154:	e7e0      	b.n	8005118 <_fflush_r+0x1c>
 8005156:	bf00      	nop

08005158 <std>:
 8005158:	b510      	push	{r4, lr}
 800515a:	2300      	movs	r3, #0
 800515c:	4604      	mov	r4, r0
 800515e:	8181      	strh	r1, [r0, #12]
 8005160:	81c2      	strh	r2, [r0, #14]
 8005162:	e9c0 3300 	strd	r3, r3, [r0]
 8005166:	6083      	str	r3, [r0, #8]
 8005168:	6643      	str	r3, [r0, #100]	; 0x64
 800516a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800516e:	6183      	str	r3, [r0, #24]
 8005170:	4619      	mov	r1, r3
 8005172:	2208      	movs	r2, #8
 8005174:	305c      	adds	r0, #92	; 0x5c
 8005176:	f7fd f8cb 	bl	8002310 <memset>
 800517a:	4807      	ldr	r0, [pc, #28]	; (8005198 <std+0x40>)
 800517c:	4907      	ldr	r1, [pc, #28]	; (800519c <std+0x44>)
 800517e:	4a08      	ldr	r2, [pc, #32]	; (80051a0 <std+0x48>)
 8005180:	4b08      	ldr	r3, [pc, #32]	; (80051a4 <std+0x4c>)
 8005182:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005184:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005188:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800518c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005190:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005194:	f000 bb5a 	b.w	800584c <__retarget_lock_init_recursive>
 8005198:	08006971 	.word	0x08006971
 800519c:	08006995 	.word	0x08006995
 80051a0:	080069d1 	.word	0x080069d1
 80051a4:	080069f1 	.word	0x080069f1

080051a8 <_cleanup_r>:
 80051a8:	4901      	ldr	r1, [pc, #4]	; (80051b0 <_cleanup_r+0x8>)
 80051aa:	f000 bb17 	b.w	80057dc <_fwalk_reent>
 80051ae:	bf00      	nop
 80051b0:	08006c61 	.word	0x08006c61

080051b4 <__sinit>:
 80051b4:	b510      	push	{r4, lr}
 80051b6:	4604      	mov	r4, r0
 80051b8:	4812      	ldr	r0, [pc, #72]	; (8005204 <__sinit+0x50>)
 80051ba:	f000 fb4b 	bl	8005854 <__retarget_lock_acquire_recursive>
 80051be:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80051c0:	b9d2      	cbnz	r2, 80051f8 <__sinit+0x44>
 80051c2:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80051c6:	4810      	ldr	r0, [pc, #64]	; (8005208 <__sinit+0x54>)
 80051c8:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80051cc:	2103      	movs	r1, #3
 80051ce:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80051d2:	63e0      	str	r0, [r4, #60]	; 0x3c
 80051d4:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80051d8:	6860      	ldr	r0, [r4, #4]
 80051da:	2104      	movs	r1, #4
 80051dc:	f7ff ffbc 	bl	8005158 <std>
 80051e0:	2201      	movs	r2, #1
 80051e2:	2109      	movs	r1, #9
 80051e4:	68a0      	ldr	r0, [r4, #8]
 80051e6:	f7ff ffb7 	bl	8005158 <std>
 80051ea:	2202      	movs	r2, #2
 80051ec:	2112      	movs	r1, #18
 80051ee:	68e0      	ldr	r0, [r4, #12]
 80051f0:	f7ff ffb2 	bl	8005158 <std>
 80051f4:	2301      	movs	r3, #1
 80051f6:	63a3      	str	r3, [r4, #56]	; 0x38
 80051f8:	4802      	ldr	r0, [pc, #8]	; (8005204 <__sinit+0x50>)
 80051fa:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80051fe:	f000 bb2b 	b.w	8005858 <__retarget_lock_release_recursive>
 8005202:	bf00      	nop
 8005204:	20000b8c 	.word	0x20000b8c
 8005208:	080051a9 	.word	0x080051a9

0800520c <__sfp_lock_acquire>:
 800520c:	4801      	ldr	r0, [pc, #4]	; (8005214 <__sfp_lock_acquire+0x8>)
 800520e:	f000 bb21 	b.w	8005854 <__retarget_lock_acquire_recursive>
 8005212:	bf00      	nop
 8005214:	20000ba0 	.word	0x20000ba0

08005218 <__sfp_lock_release>:
 8005218:	4801      	ldr	r0, [pc, #4]	; (8005220 <__sfp_lock_release+0x8>)
 800521a:	f000 bb1d 	b.w	8005858 <__retarget_lock_release_recursive>
 800521e:	bf00      	nop
 8005220:	20000ba0 	.word	0x20000ba0

08005224 <__libc_fini_array>:
 8005224:	b538      	push	{r3, r4, r5, lr}
 8005226:	4c0a      	ldr	r4, [pc, #40]	; (8005250 <__libc_fini_array+0x2c>)
 8005228:	4d0a      	ldr	r5, [pc, #40]	; (8005254 <__libc_fini_array+0x30>)
 800522a:	1b64      	subs	r4, r4, r5
 800522c:	10a4      	asrs	r4, r4, #2
 800522e:	d00a      	beq.n	8005246 <__libc_fini_array+0x22>
 8005230:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005234:	3b01      	subs	r3, #1
 8005236:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800523a:	3c01      	subs	r4, #1
 800523c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005240:	4798      	blx	r3
 8005242:	2c00      	cmp	r4, #0
 8005244:	d1f9      	bne.n	800523a <__libc_fini_array+0x16>
 8005246:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800524a:	f001 befd 	b.w	8007048 <_fini>
 800524e:	bf00      	nop
 8005250:	0800740c 	.word	0x0800740c
 8005254:	08007408 	.word	0x08007408

08005258 <_malloc_trim_r>:
 8005258:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800525a:	4f24      	ldr	r7, [pc, #144]	; (80052ec <_malloc_trim_r+0x94>)
 800525c:	460c      	mov	r4, r1
 800525e:	4606      	mov	r6, r0
 8005260:	f000 fe7c 	bl	8005f5c <__malloc_lock>
 8005264:	68bb      	ldr	r3, [r7, #8]
 8005266:	685d      	ldr	r5, [r3, #4]
 8005268:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800526c:	310f      	adds	r1, #15
 800526e:	f025 0503 	bic.w	r5, r5, #3
 8005272:	4429      	add	r1, r5
 8005274:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005278:	f021 010f 	bic.w	r1, r1, #15
 800527c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005280:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005284:	db07      	blt.n	8005296 <_malloc_trim_r+0x3e>
 8005286:	2100      	movs	r1, #0
 8005288:	4630      	mov	r0, r6
 800528a:	f001 fb5f 	bl	800694c <_sbrk_r>
 800528e:	68bb      	ldr	r3, [r7, #8]
 8005290:	442b      	add	r3, r5
 8005292:	4298      	cmp	r0, r3
 8005294:	d004      	beq.n	80052a0 <_malloc_trim_r+0x48>
 8005296:	4630      	mov	r0, r6
 8005298:	f000 fe66 	bl	8005f68 <__malloc_unlock>
 800529c:	2000      	movs	r0, #0
 800529e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80052a0:	4261      	negs	r1, r4
 80052a2:	4630      	mov	r0, r6
 80052a4:	f001 fb52 	bl	800694c <_sbrk_r>
 80052a8:	3001      	adds	r0, #1
 80052aa:	d00d      	beq.n	80052c8 <_malloc_trim_r+0x70>
 80052ac:	4b10      	ldr	r3, [pc, #64]	; (80052f0 <_malloc_trim_r+0x98>)
 80052ae:	68ba      	ldr	r2, [r7, #8]
 80052b0:	6819      	ldr	r1, [r3, #0]
 80052b2:	1b2d      	subs	r5, r5, r4
 80052b4:	f045 0501 	orr.w	r5, r5, #1
 80052b8:	4630      	mov	r0, r6
 80052ba:	1b09      	subs	r1, r1, r4
 80052bc:	6055      	str	r5, [r2, #4]
 80052be:	6019      	str	r1, [r3, #0]
 80052c0:	f000 fe52 	bl	8005f68 <__malloc_unlock>
 80052c4:	2001      	movs	r0, #1
 80052c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80052c8:	2100      	movs	r1, #0
 80052ca:	4630      	mov	r0, r6
 80052cc:	f001 fb3e 	bl	800694c <_sbrk_r>
 80052d0:	68ba      	ldr	r2, [r7, #8]
 80052d2:	1a83      	subs	r3, r0, r2
 80052d4:	2b0f      	cmp	r3, #15
 80052d6:	ddde      	ble.n	8005296 <_malloc_trim_r+0x3e>
 80052d8:	4c06      	ldr	r4, [pc, #24]	; (80052f4 <_malloc_trim_r+0x9c>)
 80052da:	4905      	ldr	r1, [pc, #20]	; (80052f0 <_malloc_trim_r+0x98>)
 80052dc:	6824      	ldr	r4, [r4, #0]
 80052de:	f043 0301 	orr.w	r3, r3, #1
 80052e2:	1b00      	subs	r0, r0, r4
 80052e4:	6053      	str	r3, [r2, #4]
 80052e6:	6008      	str	r0, [r1, #0]
 80052e8:	e7d5      	b.n	8005296 <_malloc_trim_r+0x3e>
 80052ea:	bf00      	nop
 80052ec:	200004e4 	.word	0x200004e4
 80052f0:	20000b04 	.word	0x20000b04
 80052f4:	200008ec 	.word	0x200008ec

080052f8 <_free_r>:
 80052f8:	2900      	cmp	r1, #0
 80052fa:	d053      	beq.n	80053a4 <_free_r+0xac>
 80052fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80052fe:	460c      	mov	r4, r1
 8005300:	4606      	mov	r6, r0
 8005302:	f000 fe2b 	bl	8005f5c <__malloc_lock>
 8005306:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800530a:	4f71      	ldr	r7, [pc, #452]	; (80054d0 <_free_r+0x1d8>)
 800530c:	f02c 0101 	bic.w	r1, ip, #1
 8005310:	f1a4 0508 	sub.w	r5, r4, #8
 8005314:	186b      	adds	r3, r5, r1
 8005316:	68b8      	ldr	r0, [r7, #8]
 8005318:	685a      	ldr	r2, [r3, #4]
 800531a:	4298      	cmp	r0, r3
 800531c:	f022 0203 	bic.w	r2, r2, #3
 8005320:	d053      	beq.n	80053ca <_free_r+0xd2>
 8005322:	f01c 0f01 	tst.w	ip, #1
 8005326:	605a      	str	r2, [r3, #4]
 8005328:	eb03 0002 	add.w	r0, r3, r2
 800532c:	d13b      	bne.n	80053a6 <_free_r+0xae>
 800532e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005332:	6840      	ldr	r0, [r0, #4]
 8005334:	eba5 050c 	sub.w	r5, r5, ip
 8005338:	f107 0e08 	add.w	lr, r7, #8
 800533c:	68ac      	ldr	r4, [r5, #8]
 800533e:	4574      	cmp	r4, lr
 8005340:	4461      	add	r1, ip
 8005342:	f000 0001 	and.w	r0, r0, #1
 8005346:	d075      	beq.n	8005434 <_free_r+0x13c>
 8005348:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800534c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005350:	f8cc 4008 	str.w	r4, [ip, #8]
 8005354:	b360      	cbz	r0, 80053b0 <_free_r+0xb8>
 8005356:	f041 0301 	orr.w	r3, r1, #1
 800535a:	606b      	str	r3, [r5, #4]
 800535c:	5069      	str	r1, [r5, r1]
 800535e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005362:	d350      	bcc.n	8005406 <_free_r+0x10e>
 8005364:	0a4b      	lsrs	r3, r1, #9
 8005366:	2b04      	cmp	r3, #4
 8005368:	d870      	bhi.n	800544c <_free_r+0x154>
 800536a:	098b      	lsrs	r3, r1, #6
 800536c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005370:	00e4      	lsls	r4, r4, #3
 8005372:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005376:	1938      	adds	r0, r7, r4
 8005378:	593b      	ldr	r3, [r7, r4]
 800537a:	3808      	subs	r0, #8
 800537c:	4298      	cmp	r0, r3
 800537e:	d078      	beq.n	8005472 <_free_r+0x17a>
 8005380:	685a      	ldr	r2, [r3, #4]
 8005382:	f022 0203 	bic.w	r2, r2, #3
 8005386:	428a      	cmp	r2, r1
 8005388:	d971      	bls.n	800546e <_free_r+0x176>
 800538a:	689b      	ldr	r3, [r3, #8]
 800538c:	4298      	cmp	r0, r3
 800538e:	d1f7      	bne.n	8005380 <_free_r+0x88>
 8005390:	68c3      	ldr	r3, [r0, #12]
 8005392:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005396:	609d      	str	r5, [r3, #8]
 8005398:	60c5      	str	r5, [r0, #12]
 800539a:	4630      	mov	r0, r6
 800539c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80053a0:	f000 bde2 	b.w	8005f68 <__malloc_unlock>
 80053a4:	4770      	bx	lr
 80053a6:	6840      	ldr	r0, [r0, #4]
 80053a8:	f000 0001 	and.w	r0, r0, #1
 80053ac:	2800      	cmp	r0, #0
 80053ae:	d1d2      	bne.n	8005356 <_free_r+0x5e>
 80053b0:	6898      	ldr	r0, [r3, #8]
 80053b2:	4c48      	ldr	r4, [pc, #288]	; (80054d4 <_free_r+0x1dc>)
 80053b4:	4411      	add	r1, r2
 80053b6:	42a0      	cmp	r0, r4
 80053b8:	f041 0201 	orr.w	r2, r1, #1
 80053bc:	d062      	beq.n	8005484 <_free_r+0x18c>
 80053be:	68db      	ldr	r3, [r3, #12]
 80053c0:	60c3      	str	r3, [r0, #12]
 80053c2:	6098      	str	r0, [r3, #8]
 80053c4:	606a      	str	r2, [r5, #4]
 80053c6:	5069      	str	r1, [r5, r1]
 80053c8:	e7c9      	b.n	800535e <_free_r+0x66>
 80053ca:	f01c 0f01 	tst.w	ip, #1
 80053ce:	440a      	add	r2, r1
 80053d0:	d107      	bne.n	80053e2 <_free_r+0xea>
 80053d2:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80053d6:	1aed      	subs	r5, r5, r3
 80053d8:	441a      	add	r2, r3
 80053da:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80053de:	60cb      	str	r3, [r1, #12]
 80053e0:	6099      	str	r1, [r3, #8]
 80053e2:	4b3d      	ldr	r3, [pc, #244]	; (80054d8 <_free_r+0x1e0>)
 80053e4:	681b      	ldr	r3, [r3, #0]
 80053e6:	f042 0101 	orr.w	r1, r2, #1
 80053ea:	4293      	cmp	r3, r2
 80053ec:	6069      	str	r1, [r5, #4]
 80053ee:	60bd      	str	r5, [r7, #8]
 80053f0:	d804      	bhi.n	80053fc <_free_r+0x104>
 80053f2:	4b3a      	ldr	r3, [pc, #232]	; (80054dc <_free_r+0x1e4>)
 80053f4:	4630      	mov	r0, r6
 80053f6:	6819      	ldr	r1, [r3, #0]
 80053f8:	f7ff ff2e 	bl	8005258 <_malloc_trim_r>
 80053fc:	4630      	mov	r0, r6
 80053fe:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005402:	f000 bdb1 	b.w	8005f68 <__malloc_unlock>
 8005406:	08c9      	lsrs	r1, r1, #3
 8005408:	6878      	ldr	r0, [r7, #4]
 800540a:	1c4a      	adds	r2, r1, #1
 800540c:	2301      	movs	r3, #1
 800540e:	1089      	asrs	r1, r1, #2
 8005410:	408b      	lsls	r3, r1
 8005412:	4303      	orrs	r3, r0
 8005414:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005418:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 800541c:	607b      	str	r3, [r7, #4]
 800541e:	3908      	subs	r1, #8
 8005420:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005424:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005428:	60c5      	str	r5, [r0, #12]
 800542a:	4630      	mov	r0, r6
 800542c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005430:	f000 bd9a 	b.w	8005f68 <__malloc_unlock>
 8005434:	2800      	cmp	r0, #0
 8005436:	d145      	bne.n	80054c4 <_free_r+0x1cc>
 8005438:	440a      	add	r2, r1
 800543a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800543e:	f042 0001 	orr.w	r0, r2, #1
 8005442:	60cb      	str	r3, [r1, #12]
 8005444:	6099      	str	r1, [r3, #8]
 8005446:	6068      	str	r0, [r5, #4]
 8005448:	50aa      	str	r2, [r5, r2]
 800544a:	e7d7      	b.n	80053fc <_free_r+0x104>
 800544c:	2b14      	cmp	r3, #20
 800544e:	d908      	bls.n	8005462 <_free_r+0x16a>
 8005450:	2b54      	cmp	r3, #84	; 0x54
 8005452:	d81e      	bhi.n	8005492 <_free_r+0x19a>
 8005454:	0b0b      	lsrs	r3, r1, #12
 8005456:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800545a:	00e4      	lsls	r4, r4, #3
 800545c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005460:	e789      	b.n	8005376 <_free_r+0x7e>
 8005462:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005466:	00e4      	lsls	r4, r4, #3
 8005468:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800546c:	e783      	b.n	8005376 <_free_r+0x7e>
 800546e:	4618      	mov	r0, r3
 8005470:	e78e      	b.n	8005390 <_free_r+0x98>
 8005472:	1093      	asrs	r3, r2, #2
 8005474:	6879      	ldr	r1, [r7, #4]
 8005476:	2201      	movs	r2, #1
 8005478:	fa02 f303 	lsl.w	r3, r2, r3
 800547c:	430b      	orrs	r3, r1
 800547e:	607b      	str	r3, [r7, #4]
 8005480:	4603      	mov	r3, r0
 8005482:	e786      	b.n	8005392 <_free_r+0x9a>
 8005484:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005488:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800548c:	606a      	str	r2, [r5, #4]
 800548e:	5069      	str	r1, [r5, r1]
 8005490:	e7b4      	b.n	80053fc <_free_r+0x104>
 8005492:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005496:	d806      	bhi.n	80054a6 <_free_r+0x1ae>
 8005498:	0bcb      	lsrs	r3, r1, #15
 800549a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800549e:	00e4      	lsls	r4, r4, #3
 80054a0:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80054a4:	e767      	b.n	8005376 <_free_r+0x7e>
 80054a6:	f240 5254 	movw	r2, #1364	; 0x554
 80054aa:	4293      	cmp	r3, r2
 80054ac:	d806      	bhi.n	80054bc <_free_r+0x1c4>
 80054ae:	0c8b      	lsrs	r3, r1, #18
 80054b0:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80054b4:	00e4      	lsls	r4, r4, #3
 80054b6:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80054ba:	e75c      	b.n	8005376 <_free_r+0x7e>
 80054bc:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80054c0:	227e      	movs	r2, #126	; 0x7e
 80054c2:	e758      	b.n	8005376 <_free_r+0x7e>
 80054c4:	f041 0201 	orr.w	r2, r1, #1
 80054c8:	606a      	str	r2, [r5, #4]
 80054ca:	6019      	str	r1, [r3, #0]
 80054cc:	e796      	b.n	80053fc <_free_r+0x104>
 80054ce:	bf00      	nop
 80054d0:	200004e4 	.word	0x200004e4
 80054d4:	200004ec 	.word	0x200004ec
 80054d8:	200008f0 	.word	0x200008f0
 80054dc:	20000b34 	.word	0x20000b34

080054e0 <__sfvwrite_r>:
 80054e0:	6893      	ldr	r3, [r2, #8]
 80054e2:	2b00      	cmp	r3, #0
 80054e4:	f000 80e4 	beq.w	80056b0 <__sfvwrite_r+0x1d0>
 80054e8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80054ec:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80054f0:	b29b      	uxth	r3, r3
 80054f2:	460c      	mov	r4, r1
 80054f4:	0719      	lsls	r1, r3, #28
 80054f6:	b083      	sub	sp, #12
 80054f8:	4682      	mov	sl, r0
 80054fa:	4690      	mov	r8, r2
 80054fc:	d535      	bpl.n	800556a <__sfvwrite_r+0x8a>
 80054fe:	6922      	ldr	r2, [r4, #16]
 8005500:	b39a      	cbz	r2, 800556a <__sfvwrite_r+0x8a>
 8005502:	f013 0202 	ands.w	r2, r3, #2
 8005506:	f8d8 6000 	ldr.w	r6, [r8]
 800550a:	d03d      	beq.n	8005588 <__sfvwrite_r+0xa8>
 800550c:	2700      	movs	r7, #0
 800550e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005512:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005516:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 80057d8 <__sfvwrite_r+0x2f8>
 800551a:	463d      	mov	r5, r7
 800551c:	454d      	cmp	r5, r9
 800551e:	462b      	mov	r3, r5
 8005520:	463a      	mov	r2, r7
 8005522:	bf28      	it	cs
 8005524:	464b      	movcs	r3, r9
 8005526:	4661      	mov	r1, ip
 8005528:	4650      	mov	r0, sl
 800552a:	b1d5      	cbz	r5, 8005562 <__sfvwrite_r+0x82>
 800552c:	47d8      	blx	fp
 800552e:	2800      	cmp	r0, #0
 8005530:	f340 80c6 	ble.w	80056c0 <__sfvwrite_r+0x1e0>
 8005534:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005538:	1a1b      	subs	r3, r3, r0
 800553a:	4407      	add	r7, r0
 800553c:	1a2d      	subs	r5, r5, r0
 800553e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005542:	2b00      	cmp	r3, #0
 8005544:	f000 80b0 	beq.w	80056a8 <__sfvwrite_r+0x1c8>
 8005548:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800554c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005550:	454d      	cmp	r5, r9
 8005552:	462b      	mov	r3, r5
 8005554:	463a      	mov	r2, r7
 8005556:	bf28      	it	cs
 8005558:	464b      	movcs	r3, r9
 800555a:	4661      	mov	r1, ip
 800555c:	4650      	mov	r0, sl
 800555e:	2d00      	cmp	r5, #0
 8005560:	d1e4      	bne.n	800552c <__sfvwrite_r+0x4c>
 8005562:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005566:	3608      	adds	r6, #8
 8005568:	e7d8      	b.n	800551c <__sfvwrite_r+0x3c>
 800556a:	4621      	mov	r1, r4
 800556c:	4650      	mov	r0, sl
 800556e:	f7fe fd03 	bl	8003f78 <__swsetup_r>
 8005572:	2800      	cmp	r0, #0
 8005574:	f040 812a 	bne.w	80057cc <__sfvwrite_r+0x2ec>
 8005578:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800557c:	f8d8 6000 	ldr.w	r6, [r8]
 8005580:	b29b      	uxth	r3, r3
 8005582:	f013 0202 	ands.w	r2, r3, #2
 8005586:	d1c1      	bne.n	800550c <__sfvwrite_r+0x2c>
 8005588:	f013 0901 	ands.w	r9, r3, #1
 800558c:	d15d      	bne.n	800564a <__sfvwrite_r+0x16a>
 800558e:	68a7      	ldr	r7, [r4, #8]
 8005590:	6820      	ldr	r0, [r4, #0]
 8005592:	464d      	mov	r5, r9
 8005594:	2d00      	cmp	r5, #0
 8005596:	d054      	beq.n	8005642 <__sfvwrite_r+0x162>
 8005598:	059a      	lsls	r2, r3, #22
 800559a:	f140 809b 	bpl.w	80056d4 <__sfvwrite_r+0x1f4>
 800559e:	42af      	cmp	r7, r5
 80055a0:	46bb      	mov	fp, r7
 80055a2:	f200 80d8 	bhi.w	8005756 <__sfvwrite_r+0x276>
 80055a6:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80055aa:	d02f      	beq.n	800560c <__sfvwrite_r+0x12c>
 80055ac:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80055b0:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80055b4:	eba0 0b01 	sub.w	fp, r0, r1
 80055b8:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80055bc:	1c68      	adds	r0, r5, #1
 80055be:	107f      	asrs	r7, r7, #1
 80055c0:	4458      	add	r0, fp
 80055c2:	42b8      	cmp	r0, r7
 80055c4:	463a      	mov	r2, r7
 80055c6:	bf84      	itt	hi
 80055c8:	4607      	movhi	r7, r0
 80055ca:	463a      	movhi	r2, r7
 80055cc:	055b      	lsls	r3, r3, #21
 80055ce:	f140 80d3 	bpl.w	8005778 <__sfvwrite_r+0x298>
 80055d2:	4611      	mov	r1, r2
 80055d4:	4650      	mov	r0, sl
 80055d6:	f000 f9b9 	bl	800594c <_malloc_r>
 80055da:	2800      	cmp	r0, #0
 80055dc:	f000 80f0 	beq.w	80057c0 <__sfvwrite_r+0x2e0>
 80055e0:	465a      	mov	r2, fp
 80055e2:	6921      	ldr	r1, [r4, #16]
 80055e4:	9001      	str	r0, [sp, #4]
 80055e6:	f7fa ff8b 	bl	8000500 <memcpy>
 80055ea:	89a2      	ldrh	r2, [r4, #12]
 80055ec:	9b01      	ldr	r3, [sp, #4]
 80055ee:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80055f2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80055f6:	81a2      	strh	r2, [r4, #12]
 80055f8:	eba7 020b 	sub.w	r2, r7, fp
 80055fc:	eb03 000b 	add.w	r0, r3, fp
 8005600:	6167      	str	r7, [r4, #20]
 8005602:	6123      	str	r3, [r4, #16]
 8005604:	6020      	str	r0, [r4, #0]
 8005606:	60a2      	str	r2, [r4, #8]
 8005608:	462f      	mov	r7, r5
 800560a:	46ab      	mov	fp, r5
 800560c:	465a      	mov	r2, fp
 800560e:	4649      	mov	r1, r9
 8005610:	f000 fc40 	bl	8005e94 <memmove>
 8005614:	68a2      	ldr	r2, [r4, #8]
 8005616:	6823      	ldr	r3, [r4, #0]
 8005618:	1bd2      	subs	r2, r2, r7
 800561a:	445b      	add	r3, fp
 800561c:	462f      	mov	r7, r5
 800561e:	60a2      	str	r2, [r4, #8]
 8005620:	6023      	str	r3, [r4, #0]
 8005622:	2500      	movs	r5, #0
 8005624:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005628:	1bdb      	subs	r3, r3, r7
 800562a:	44b9      	add	r9, r7
 800562c:	f8c8 3008 	str.w	r3, [r8, #8]
 8005630:	2b00      	cmp	r3, #0
 8005632:	d039      	beq.n	80056a8 <__sfvwrite_r+0x1c8>
 8005634:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005638:	68a7      	ldr	r7, [r4, #8]
 800563a:	6820      	ldr	r0, [r4, #0]
 800563c:	b29b      	uxth	r3, r3
 800563e:	2d00      	cmp	r5, #0
 8005640:	d1aa      	bne.n	8005598 <__sfvwrite_r+0xb8>
 8005642:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005646:	3608      	adds	r6, #8
 8005648:	e7a4      	b.n	8005594 <__sfvwrite_r+0xb4>
 800564a:	4633      	mov	r3, r6
 800564c:	4691      	mov	r9, r2
 800564e:	4610      	mov	r0, r2
 8005650:	4617      	mov	r7, r2
 8005652:	464e      	mov	r6, r9
 8005654:	469b      	mov	fp, r3
 8005656:	2f00      	cmp	r7, #0
 8005658:	d06b      	beq.n	8005732 <__sfvwrite_r+0x252>
 800565a:	2800      	cmp	r0, #0
 800565c:	d071      	beq.n	8005742 <__sfvwrite_r+0x262>
 800565e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005662:	6820      	ldr	r0, [r4, #0]
 8005664:	45b9      	cmp	r9, r7
 8005666:	464b      	mov	r3, r9
 8005668:	bf28      	it	cs
 800566a:	463b      	movcs	r3, r7
 800566c:	4288      	cmp	r0, r1
 800566e:	d903      	bls.n	8005678 <__sfvwrite_r+0x198>
 8005670:	68a5      	ldr	r5, [r4, #8]
 8005672:	4415      	add	r5, r2
 8005674:	42ab      	cmp	r3, r5
 8005676:	dc71      	bgt.n	800575c <__sfvwrite_r+0x27c>
 8005678:	429a      	cmp	r2, r3
 800567a:	f300 8093 	bgt.w	80057a4 <__sfvwrite_r+0x2c4>
 800567e:	4613      	mov	r3, r2
 8005680:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005682:	69e1      	ldr	r1, [r4, #28]
 8005684:	4632      	mov	r2, r6
 8005686:	4650      	mov	r0, sl
 8005688:	47a8      	blx	r5
 800568a:	1e05      	subs	r5, r0, #0
 800568c:	dd18      	ble.n	80056c0 <__sfvwrite_r+0x1e0>
 800568e:	ebb9 0905 	subs.w	r9, r9, r5
 8005692:	d00f      	beq.n	80056b4 <__sfvwrite_r+0x1d4>
 8005694:	2001      	movs	r0, #1
 8005696:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800569a:	1b5b      	subs	r3, r3, r5
 800569c:	442e      	add	r6, r5
 800569e:	1b7f      	subs	r7, r7, r5
 80056a0:	f8c8 3008 	str.w	r3, [r8, #8]
 80056a4:	2b00      	cmp	r3, #0
 80056a6:	d1d6      	bne.n	8005656 <__sfvwrite_r+0x176>
 80056a8:	2000      	movs	r0, #0
 80056aa:	b003      	add	sp, #12
 80056ac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80056b0:	2000      	movs	r0, #0
 80056b2:	4770      	bx	lr
 80056b4:	4621      	mov	r1, r4
 80056b6:	4650      	mov	r0, sl
 80056b8:	f7ff fd20 	bl	80050fc <_fflush_r>
 80056bc:	2800      	cmp	r0, #0
 80056be:	d0ea      	beq.n	8005696 <__sfvwrite_r+0x1b6>
 80056c0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80056c4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80056c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80056cc:	81a3      	strh	r3, [r4, #12]
 80056ce:	b003      	add	sp, #12
 80056d0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80056d4:	6923      	ldr	r3, [r4, #16]
 80056d6:	4283      	cmp	r3, r0
 80056d8:	d315      	bcc.n	8005706 <__sfvwrite_r+0x226>
 80056da:	6961      	ldr	r1, [r4, #20]
 80056dc:	42a9      	cmp	r1, r5
 80056de:	d812      	bhi.n	8005706 <__sfvwrite_r+0x226>
 80056e0:	4b3c      	ldr	r3, [pc, #240]	; (80057d4 <__sfvwrite_r+0x2f4>)
 80056e2:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80056e4:	429d      	cmp	r5, r3
 80056e6:	bf94      	ite	ls
 80056e8:	462b      	movls	r3, r5
 80056ea:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80056ee:	464a      	mov	r2, r9
 80056f0:	fb93 f3f1 	sdiv	r3, r3, r1
 80056f4:	4650      	mov	r0, sl
 80056f6:	fb01 f303 	mul.w	r3, r1, r3
 80056fa:	69e1      	ldr	r1, [r4, #28]
 80056fc:	47b8      	blx	r7
 80056fe:	1e07      	subs	r7, r0, #0
 8005700:	ddde      	ble.n	80056c0 <__sfvwrite_r+0x1e0>
 8005702:	1bed      	subs	r5, r5, r7
 8005704:	e78e      	b.n	8005624 <__sfvwrite_r+0x144>
 8005706:	42af      	cmp	r7, r5
 8005708:	bf28      	it	cs
 800570a:	462f      	movcs	r7, r5
 800570c:	463a      	mov	r2, r7
 800570e:	4649      	mov	r1, r9
 8005710:	f000 fbc0 	bl	8005e94 <memmove>
 8005714:	68a3      	ldr	r3, [r4, #8]
 8005716:	6822      	ldr	r2, [r4, #0]
 8005718:	1bdb      	subs	r3, r3, r7
 800571a:	443a      	add	r2, r7
 800571c:	60a3      	str	r3, [r4, #8]
 800571e:	6022      	str	r2, [r4, #0]
 8005720:	2b00      	cmp	r3, #0
 8005722:	d1ee      	bne.n	8005702 <__sfvwrite_r+0x222>
 8005724:	4621      	mov	r1, r4
 8005726:	4650      	mov	r0, sl
 8005728:	f7ff fce8 	bl	80050fc <_fflush_r>
 800572c:	2800      	cmp	r0, #0
 800572e:	d0e8      	beq.n	8005702 <__sfvwrite_r+0x222>
 8005730:	e7c6      	b.n	80056c0 <__sfvwrite_r+0x1e0>
 8005732:	f10b 0308 	add.w	r3, fp, #8
 8005736:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 800573a:	469b      	mov	fp, r3
 800573c:	3308      	adds	r3, #8
 800573e:	2f00      	cmp	r7, #0
 8005740:	d0f9      	beq.n	8005736 <__sfvwrite_r+0x256>
 8005742:	463a      	mov	r2, r7
 8005744:	210a      	movs	r1, #10
 8005746:	4630      	mov	r0, r6
 8005748:	f7fa ffea 	bl	8000720 <memchr>
 800574c:	b338      	cbz	r0, 800579e <__sfvwrite_r+0x2be>
 800574e:	3001      	adds	r0, #1
 8005750:	eba0 0906 	sub.w	r9, r0, r6
 8005754:	e783      	b.n	800565e <__sfvwrite_r+0x17e>
 8005756:	462f      	mov	r7, r5
 8005758:	46ab      	mov	fp, r5
 800575a:	e757      	b.n	800560c <__sfvwrite_r+0x12c>
 800575c:	4631      	mov	r1, r6
 800575e:	462a      	mov	r2, r5
 8005760:	f000 fb98 	bl	8005e94 <memmove>
 8005764:	6823      	ldr	r3, [r4, #0]
 8005766:	442b      	add	r3, r5
 8005768:	6023      	str	r3, [r4, #0]
 800576a:	4621      	mov	r1, r4
 800576c:	4650      	mov	r0, sl
 800576e:	f7ff fcc5 	bl	80050fc <_fflush_r>
 8005772:	2800      	cmp	r0, #0
 8005774:	d08b      	beq.n	800568e <__sfvwrite_r+0x1ae>
 8005776:	e7a3      	b.n	80056c0 <__sfvwrite_r+0x1e0>
 8005778:	4650      	mov	r0, sl
 800577a:	f000 ff05 	bl	8006588 <_realloc_r>
 800577e:	4603      	mov	r3, r0
 8005780:	2800      	cmp	r0, #0
 8005782:	f47f af39 	bne.w	80055f8 <__sfvwrite_r+0x118>
 8005786:	6921      	ldr	r1, [r4, #16]
 8005788:	4650      	mov	r0, sl
 800578a:	f7ff fdb5 	bl	80052f8 <_free_r>
 800578e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005792:	220c      	movs	r2, #12
 8005794:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005798:	f8ca 2000 	str.w	r2, [sl]
 800579c:	e792      	b.n	80056c4 <__sfvwrite_r+0x1e4>
 800579e:	f107 0901 	add.w	r9, r7, #1
 80057a2:	e75c      	b.n	800565e <__sfvwrite_r+0x17e>
 80057a4:	461a      	mov	r2, r3
 80057a6:	4631      	mov	r1, r6
 80057a8:	9301      	str	r3, [sp, #4]
 80057aa:	f000 fb73 	bl	8005e94 <memmove>
 80057ae:	9b01      	ldr	r3, [sp, #4]
 80057b0:	68a1      	ldr	r1, [r4, #8]
 80057b2:	6822      	ldr	r2, [r4, #0]
 80057b4:	1ac9      	subs	r1, r1, r3
 80057b6:	441a      	add	r2, r3
 80057b8:	60a1      	str	r1, [r4, #8]
 80057ba:	6022      	str	r2, [r4, #0]
 80057bc:	461d      	mov	r5, r3
 80057be:	e766      	b.n	800568e <__sfvwrite_r+0x1ae>
 80057c0:	230c      	movs	r3, #12
 80057c2:	f8ca 3000 	str.w	r3, [sl]
 80057c6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80057ca:	e77b      	b.n	80056c4 <__sfvwrite_r+0x1e4>
 80057cc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80057d0:	e76b      	b.n	80056aa <__sfvwrite_r+0x1ca>
 80057d2:	bf00      	nop
 80057d4:	7ffffffe 	.word	0x7ffffffe
 80057d8:	7ffffc00 	.word	0x7ffffc00

080057dc <_fwalk_reent>:
 80057dc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80057e0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80057e4:	d01f      	beq.n	8005826 <_fwalk_reent+0x4a>
 80057e6:	4688      	mov	r8, r1
 80057e8:	4606      	mov	r6, r0
 80057ea:	f04f 0900 	mov.w	r9, #0
 80057ee:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 80057f2:	3d01      	subs	r5, #1
 80057f4:	d411      	bmi.n	800581a <_fwalk_reent+0x3e>
 80057f6:	89a3      	ldrh	r3, [r4, #12]
 80057f8:	2b01      	cmp	r3, #1
 80057fa:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 80057fe:	4621      	mov	r1, r4
 8005800:	4630      	mov	r0, r6
 8005802:	d906      	bls.n	8005812 <_fwalk_reent+0x36>
 8005804:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005808:	3301      	adds	r3, #1
 800580a:	d002      	beq.n	8005812 <_fwalk_reent+0x36>
 800580c:	47c0      	blx	r8
 800580e:	ea49 0900 	orr.w	r9, r9, r0
 8005812:	1c6b      	adds	r3, r5, #1
 8005814:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005818:	d1ed      	bne.n	80057f6 <_fwalk_reent+0x1a>
 800581a:	683f      	ldr	r7, [r7, #0]
 800581c:	2f00      	cmp	r7, #0
 800581e:	d1e6      	bne.n	80057ee <_fwalk_reent+0x12>
 8005820:	4648      	mov	r0, r9
 8005822:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005826:	46b9      	mov	r9, r7
 8005828:	4648      	mov	r0, r9
 800582a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800582e:	bf00      	nop

08005830 <_localeconv_r>:
 8005830:	4a04      	ldr	r2, [pc, #16]	; (8005844 <_localeconv_r+0x14>)
 8005832:	4b05      	ldr	r3, [pc, #20]	; (8005848 <_localeconv_r+0x18>)
 8005834:	6812      	ldr	r2, [r2, #0]
 8005836:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005838:	2800      	cmp	r0, #0
 800583a:	bf08      	it	eq
 800583c:	4618      	moveq	r0, r3
 800583e:	30f0      	adds	r0, #240	; 0xf0
 8005840:	4770      	bx	lr
 8005842:	bf00      	nop
 8005844:	200000b4 	.word	0x200000b4
 8005848:	200008f4 	.word	0x200008f4

0800584c <__retarget_lock_init_recursive>:
 800584c:	4770      	bx	lr
 800584e:	bf00      	nop

08005850 <__retarget_lock_close_recursive>:
 8005850:	4770      	bx	lr
 8005852:	bf00      	nop

08005854 <__retarget_lock_acquire_recursive>:
 8005854:	4770      	bx	lr
 8005856:	bf00      	nop

08005858 <__retarget_lock_release_recursive>:
 8005858:	4770      	bx	lr
 800585a:	bf00      	nop

0800585c <__swhatbuf_r>:
 800585c:	b570      	push	{r4, r5, r6, lr}
 800585e:	460c      	mov	r4, r1
 8005860:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005864:	2900      	cmp	r1, #0
 8005866:	b096      	sub	sp, #88	; 0x58
 8005868:	4615      	mov	r5, r2
 800586a:	461e      	mov	r6, r3
 800586c:	da0f      	bge.n	800588e <__swhatbuf_r+0x32>
 800586e:	89a2      	ldrh	r2, [r4, #12]
 8005870:	2300      	movs	r3, #0
 8005872:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005876:	6033      	str	r3, [r6, #0]
 8005878:	d104      	bne.n	8005884 <__swhatbuf_r+0x28>
 800587a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800587e:	602b      	str	r3, [r5, #0]
 8005880:	b016      	add	sp, #88	; 0x58
 8005882:	bd70      	pop	{r4, r5, r6, pc}
 8005884:	2240      	movs	r2, #64	; 0x40
 8005886:	4618      	mov	r0, r3
 8005888:	602a      	str	r2, [r5, #0]
 800588a:	b016      	add	sp, #88	; 0x58
 800588c:	bd70      	pop	{r4, r5, r6, pc}
 800588e:	466a      	mov	r2, sp
 8005890:	f001 fad0 	bl	8006e34 <_fstat_r>
 8005894:	2800      	cmp	r0, #0
 8005896:	dbea      	blt.n	800586e <__swhatbuf_r+0x12>
 8005898:	9b01      	ldr	r3, [sp, #4]
 800589a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 800589e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 80058a2:	fab3 f383 	clz	r3, r3
 80058a6:	095b      	lsrs	r3, r3, #5
 80058a8:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80058ac:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80058b0:	6033      	str	r3, [r6, #0]
 80058b2:	602a      	str	r2, [r5, #0]
 80058b4:	b016      	add	sp, #88	; 0x58
 80058b6:	bd70      	pop	{r4, r5, r6, pc}

080058b8 <__smakebuf_r>:
 80058b8:	898a      	ldrh	r2, [r1, #12]
 80058ba:	0792      	lsls	r2, r2, #30
 80058bc:	460b      	mov	r3, r1
 80058be:	d506      	bpl.n	80058ce <__smakebuf_r+0x16>
 80058c0:	f101 0243 	add.w	r2, r1, #67	; 0x43
 80058c4:	2101      	movs	r1, #1
 80058c6:	601a      	str	r2, [r3, #0]
 80058c8:	e9c3 2104 	strd	r2, r1, [r3, #16]
 80058cc:	4770      	bx	lr
 80058ce:	b570      	push	{r4, r5, r6, lr}
 80058d0:	b082      	sub	sp, #8
 80058d2:	ab01      	add	r3, sp, #4
 80058d4:	466a      	mov	r2, sp
 80058d6:	460c      	mov	r4, r1
 80058d8:	4605      	mov	r5, r0
 80058da:	f7ff ffbf 	bl	800585c <__swhatbuf_r>
 80058de:	9900      	ldr	r1, [sp, #0]
 80058e0:	4606      	mov	r6, r0
 80058e2:	4628      	mov	r0, r5
 80058e4:	f000 f832 	bl	800594c <_malloc_r>
 80058e8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80058ec:	b1d8      	cbz	r0, 8005926 <__smakebuf_r+0x6e>
 80058ee:	4916      	ldr	r1, [pc, #88]	; (8005948 <__smakebuf_r+0x90>)
 80058f0:	63e9      	str	r1, [r5, #60]	; 0x3c
 80058f2:	9a01      	ldr	r2, [sp, #4]
 80058f4:	9900      	ldr	r1, [sp, #0]
 80058f6:	6020      	str	r0, [r4, #0]
 80058f8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80058fc:	81a3      	strh	r3, [r4, #12]
 80058fe:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005902:	b91a      	cbnz	r2, 800590c <__smakebuf_r+0x54>
 8005904:	4333      	orrs	r3, r6
 8005906:	81a3      	strh	r3, [r4, #12]
 8005908:	b002      	add	sp, #8
 800590a:	bd70      	pop	{r4, r5, r6, pc}
 800590c:	4628      	mov	r0, r5
 800590e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005912:	f001 faa3 	bl	8006e5c <_isatty_r>
 8005916:	b1a0      	cbz	r0, 8005942 <__smakebuf_r+0x8a>
 8005918:	89a3      	ldrh	r3, [r4, #12]
 800591a:	f023 0303 	bic.w	r3, r3, #3
 800591e:	f043 0301 	orr.w	r3, r3, #1
 8005922:	b21b      	sxth	r3, r3
 8005924:	e7ee      	b.n	8005904 <__smakebuf_r+0x4c>
 8005926:	059a      	lsls	r2, r3, #22
 8005928:	d4ee      	bmi.n	8005908 <__smakebuf_r+0x50>
 800592a:	f023 0303 	bic.w	r3, r3, #3
 800592e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005932:	f043 0302 	orr.w	r3, r3, #2
 8005936:	2101      	movs	r1, #1
 8005938:	81a3      	strh	r3, [r4, #12]
 800593a:	6022      	str	r2, [r4, #0]
 800593c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005940:	e7e2      	b.n	8005908 <__smakebuf_r+0x50>
 8005942:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005946:	e7dd      	b.n	8005904 <__smakebuf_r+0x4c>
 8005948:	080051a9 	.word	0x080051a9

0800594c <_malloc_r>:
 800594c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005950:	f101 050b 	add.w	r5, r1, #11
 8005954:	2d16      	cmp	r5, #22
 8005956:	b083      	sub	sp, #12
 8005958:	4606      	mov	r6, r0
 800595a:	d823      	bhi.n	80059a4 <_malloc_r+0x58>
 800595c:	2910      	cmp	r1, #16
 800595e:	f200 80b9 	bhi.w	8005ad4 <_malloc_r+0x188>
 8005962:	f000 fafb 	bl	8005f5c <__malloc_lock>
 8005966:	2510      	movs	r5, #16
 8005968:	2318      	movs	r3, #24
 800596a:	2002      	movs	r0, #2
 800596c:	4fc5      	ldr	r7, [pc, #788]	; (8005c84 <_malloc_r+0x338>)
 800596e:	443b      	add	r3, r7
 8005970:	f1a3 0208 	sub.w	r2, r3, #8
 8005974:	685c      	ldr	r4, [r3, #4]
 8005976:	4294      	cmp	r4, r2
 8005978:	f000 8166 	beq.w	8005c48 <_malloc_r+0x2fc>
 800597c:	6863      	ldr	r3, [r4, #4]
 800597e:	f023 0303 	bic.w	r3, r3, #3
 8005982:	4423      	add	r3, r4
 8005984:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005988:	685a      	ldr	r2, [r3, #4]
 800598a:	60e9      	str	r1, [r5, #12]
 800598c:	f042 0201 	orr.w	r2, r2, #1
 8005990:	608d      	str	r5, [r1, #8]
 8005992:	4630      	mov	r0, r6
 8005994:	605a      	str	r2, [r3, #4]
 8005996:	f000 fae7 	bl	8005f68 <__malloc_unlock>
 800599a:	3408      	adds	r4, #8
 800599c:	4620      	mov	r0, r4
 800599e:	b003      	add	sp, #12
 80059a0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80059a4:	f035 0507 	bics.w	r5, r5, #7
 80059a8:	f100 8094 	bmi.w	8005ad4 <_malloc_r+0x188>
 80059ac:	42a9      	cmp	r1, r5
 80059ae:	f200 8091 	bhi.w	8005ad4 <_malloc_r+0x188>
 80059b2:	f000 fad3 	bl	8005f5c <__malloc_lock>
 80059b6:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80059ba:	f0c0 8183 	bcc.w	8005cc4 <_malloc_r+0x378>
 80059be:	0a6b      	lsrs	r3, r5, #9
 80059c0:	f000 808f 	beq.w	8005ae2 <_malloc_r+0x196>
 80059c4:	2b04      	cmp	r3, #4
 80059c6:	f200 8146 	bhi.w	8005c56 <_malloc_r+0x30a>
 80059ca:	09ab      	lsrs	r3, r5, #6
 80059cc:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80059d0:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80059d4:	00c3      	lsls	r3, r0, #3
 80059d6:	4fab      	ldr	r7, [pc, #684]	; (8005c84 <_malloc_r+0x338>)
 80059d8:	443b      	add	r3, r7
 80059da:	f1a3 0108 	sub.w	r1, r3, #8
 80059de:	685c      	ldr	r4, [r3, #4]
 80059e0:	42a1      	cmp	r1, r4
 80059e2:	d106      	bne.n	80059f2 <_malloc_r+0xa6>
 80059e4:	e00c      	b.n	8005a00 <_malloc_r+0xb4>
 80059e6:	2a00      	cmp	r2, #0
 80059e8:	f280 811d 	bge.w	8005c26 <_malloc_r+0x2da>
 80059ec:	68e4      	ldr	r4, [r4, #12]
 80059ee:	42a1      	cmp	r1, r4
 80059f0:	d006      	beq.n	8005a00 <_malloc_r+0xb4>
 80059f2:	6863      	ldr	r3, [r4, #4]
 80059f4:	f023 0303 	bic.w	r3, r3, #3
 80059f8:	1b5a      	subs	r2, r3, r5
 80059fa:	2a0f      	cmp	r2, #15
 80059fc:	ddf3      	ble.n	80059e6 <_malloc_r+0x9a>
 80059fe:	4660      	mov	r0, ip
 8005a00:	693c      	ldr	r4, [r7, #16]
 8005a02:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005c98 <_malloc_r+0x34c>
 8005a06:	4564      	cmp	r4, ip
 8005a08:	d071      	beq.n	8005aee <_malloc_r+0x1a2>
 8005a0a:	6863      	ldr	r3, [r4, #4]
 8005a0c:	f023 0303 	bic.w	r3, r3, #3
 8005a10:	1b5a      	subs	r2, r3, r5
 8005a12:	2a0f      	cmp	r2, #15
 8005a14:	f300 8144 	bgt.w	8005ca0 <_malloc_r+0x354>
 8005a18:	2a00      	cmp	r2, #0
 8005a1a:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005a1e:	f280 8126 	bge.w	8005c6e <_malloc_r+0x322>
 8005a22:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005a26:	f080 8169 	bcs.w	8005cfc <_malloc_r+0x3b0>
 8005a2a:	08db      	lsrs	r3, r3, #3
 8005a2c:	1c59      	adds	r1, r3, #1
 8005a2e:	687a      	ldr	r2, [r7, #4]
 8005a30:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005a34:	f8c4 8008 	str.w	r8, [r4, #8]
 8005a38:	f04f 0e01 	mov.w	lr, #1
 8005a3c:	109b      	asrs	r3, r3, #2
 8005a3e:	fa0e f303 	lsl.w	r3, lr, r3
 8005a42:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005a46:	4313      	orrs	r3, r2
 8005a48:	f1ae 0208 	sub.w	r2, lr, #8
 8005a4c:	60e2      	str	r2, [r4, #12]
 8005a4e:	607b      	str	r3, [r7, #4]
 8005a50:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005a54:	f8c8 400c 	str.w	r4, [r8, #12]
 8005a58:	1082      	asrs	r2, r0, #2
 8005a5a:	2401      	movs	r4, #1
 8005a5c:	4094      	lsls	r4, r2
 8005a5e:	429c      	cmp	r4, r3
 8005a60:	d84b      	bhi.n	8005afa <_malloc_r+0x1ae>
 8005a62:	421c      	tst	r4, r3
 8005a64:	d106      	bne.n	8005a74 <_malloc_r+0x128>
 8005a66:	f020 0003 	bic.w	r0, r0, #3
 8005a6a:	0064      	lsls	r4, r4, #1
 8005a6c:	421c      	tst	r4, r3
 8005a6e:	f100 0004 	add.w	r0, r0, #4
 8005a72:	d0fa      	beq.n	8005a6a <_malloc_r+0x11e>
 8005a74:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005a78:	46ce      	mov	lr, r9
 8005a7a:	4680      	mov	r8, r0
 8005a7c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005a80:	459e      	cmp	lr, r3
 8005a82:	d107      	bne.n	8005a94 <_malloc_r+0x148>
 8005a84:	e122      	b.n	8005ccc <_malloc_r+0x380>
 8005a86:	2a00      	cmp	r2, #0
 8005a88:	f280 8129 	bge.w	8005cde <_malloc_r+0x392>
 8005a8c:	68db      	ldr	r3, [r3, #12]
 8005a8e:	459e      	cmp	lr, r3
 8005a90:	f000 811c 	beq.w	8005ccc <_malloc_r+0x380>
 8005a94:	6859      	ldr	r1, [r3, #4]
 8005a96:	f021 0103 	bic.w	r1, r1, #3
 8005a9a:	1b4a      	subs	r2, r1, r5
 8005a9c:	2a0f      	cmp	r2, #15
 8005a9e:	ddf2      	ble.n	8005a86 <_malloc_r+0x13a>
 8005aa0:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005aa4:	195c      	adds	r4, r3, r5
 8005aa6:	f045 0501 	orr.w	r5, r5, #1
 8005aaa:	605d      	str	r5, [r3, #4]
 8005aac:	f042 0501 	orr.w	r5, r2, #1
 8005ab0:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005ab4:	4630      	mov	r0, r6
 8005ab6:	f8ce 8008 	str.w	r8, [lr, #8]
 8005aba:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005abe:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005ac2:	6065      	str	r5, [r4, #4]
 8005ac4:	505a      	str	r2, [r3, r1]
 8005ac6:	9301      	str	r3, [sp, #4]
 8005ac8:	f000 fa4e 	bl	8005f68 <__malloc_unlock>
 8005acc:	9b01      	ldr	r3, [sp, #4]
 8005ace:	f103 0408 	add.w	r4, r3, #8
 8005ad2:	e763      	b.n	800599c <_malloc_r+0x50>
 8005ad4:	2400      	movs	r4, #0
 8005ad6:	230c      	movs	r3, #12
 8005ad8:	4620      	mov	r0, r4
 8005ada:	6033      	str	r3, [r6, #0]
 8005adc:	b003      	add	sp, #12
 8005ade:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ae2:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005ae6:	2040      	movs	r0, #64	; 0x40
 8005ae8:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005aec:	e773      	b.n	80059d6 <_malloc_r+0x8a>
 8005aee:	687b      	ldr	r3, [r7, #4]
 8005af0:	1082      	asrs	r2, r0, #2
 8005af2:	2401      	movs	r4, #1
 8005af4:	4094      	lsls	r4, r2
 8005af6:	429c      	cmp	r4, r3
 8005af8:	d9b3      	bls.n	8005a62 <_malloc_r+0x116>
 8005afa:	68bc      	ldr	r4, [r7, #8]
 8005afc:	6863      	ldr	r3, [r4, #4]
 8005afe:	f023 0903 	bic.w	r9, r3, #3
 8005b02:	45a9      	cmp	r9, r5
 8005b04:	d303      	bcc.n	8005b0e <_malloc_r+0x1c2>
 8005b06:	eba9 0305 	sub.w	r3, r9, r5
 8005b0a:	2b0f      	cmp	r3, #15
 8005b0c:	dc7b      	bgt.n	8005c06 <_malloc_r+0x2ba>
 8005b0e:	4b5e      	ldr	r3, [pc, #376]	; (8005c88 <_malloc_r+0x33c>)
 8005b10:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005c9c <_malloc_r+0x350>
 8005b14:	681a      	ldr	r2, [r3, #0]
 8005b16:	f8da 3000 	ldr.w	r3, [sl]
 8005b1a:	3301      	adds	r3, #1
 8005b1c:	eb05 0802 	add.w	r8, r5, r2
 8005b20:	f000 8148 	beq.w	8005db4 <_malloc_r+0x468>
 8005b24:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005b28:	f108 080f 	add.w	r8, r8, #15
 8005b2c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005b30:	f028 080f 	bic.w	r8, r8, #15
 8005b34:	4641      	mov	r1, r8
 8005b36:	4630      	mov	r0, r6
 8005b38:	f000 ff08 	bl	800694c <_sbrk_r>
 8005b3c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005b40:	4683      	mov	fp, r0
 8005b42:	f000 8104 	beq.w	8005d4e <_malloc_r+0x402>
 8005b46:	eb04 0009 	add.w	r0, r4, r9
 8005b4a:	4558      	cmp	r0, fp
 8005b4c:	f200 80fd 	bhi.w	8005d4a <_malloc_r+0x3fe>
 8005b50:	4a4e      	ldr	r2, [pc, #312]	; (8005c8c <_malloc_r+0x340>)
 8005b52:	6813      	ldr	r3, [r2, #0]
 8005b54:	4443      	add	r3, r8
 8005b56:	6013      	str	r3, [r2, #0]
 8005b58:	f000 814d 	beq.w	8005df6 <_malloc_r+0x4aa>
 8005b5c:	f8da 1000 	ldr.w	r1, [sl]
 8005b60:	3101      	adds	r1, #1
 8005b62:	bf1b      	ittet	ne
 8005b64:	ebab 0000 	subne.w	r0, fp, r0
 8005b68:	181b      	addne	r3, r3, r0
 8005b6a:	f8ca b000 	streq.w	fp, [sl]
 8005b6e:	6013      	strne	r3, [r2, #0]
 8005b70:	f01b 0307 	ands.w	r3, fp, #7
 8005b74:	f000 8134 	beq.w	8005de0 <_malloc_r+0x494>
 8005b78:	f1c3 0108 	rsb	r1, r3, #8
 8005b7c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005b80:	448b      	add	fp, r1
 8005b82:	3308      	adds	r3, #8
 8005b84:	44d8      	add	r8, fp
 8005b86:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005b8a:	eba3 0808 	sub.w	r8, r3, r8
 8005b8e:	4641      	mov	r1, r8
 8005b90:	4630      	mov	r0, r6
 8005b92:	9201      	str	r2, [sp, #4]
 8005b94:	f000 feda 	bl	800694c <_sbrk_r>
 8005b98:	1c43      	adds	r3, r0, #1
 8005b9a:	9a01      	ldr	r2, [sp, #4]
 8005b9c:	f000 8146 	beq.w	8005e2c <_malloc_r+0x4e0>
 8005ba0:	eba0 010b 	sub.w	r1, r0, fp
 8005ba4:	4441      	add	r1, r8
 8005ba6:	f041 0101 	orr.w	r1, r1, #1
 8005baa:	6813      	ldr	r3, [r2, #0]
 8005bac:	f8c7 b008 	str.w	fp, [r7, #8]
 8005bb0:	4443      	add	r3, r8
 8005bb2:	42bc      	cmp	r4, r7
 8005bb4:	f8cb 1004 	str.w	r1, [fp, #4]
 8005bb8:	6013      	str	r3, [r2, #0]
 8005bba:	d015      	beq.n	8005be8 <_malloc_r+0x29c>
 8005bbc:	f1b9 0f0f 	cmp.w	r9, #15
 8005bc0:	f240 8130 	bls.w	8005e24 <_malloc_r+0x4d8>
 8005bc4:	6860      	ldr	r0, [r4, #4]
 8005bc6:	f1a9 010c 	sub.w	r1, r9, #12
 8005bca:	f021 0107 	bic.w	r1, r1, #7
 8005bce:	f000 0001 	and.w	r0, r0, #1
 8005bd2:	eb04 0c01 	add.w	ip, r4, r1
 8005bd6:	4308      	orrs	r0, r1
 8005bd8:	f04f 0e05 	mov.w	lr, #5
 8005bdc:	290f      	cmp	r1, #15
 8005bde:	6060      	str	r0, [r4, #4]
 8005be0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005be4:	f200 813a 	bhi.w	8005e5c <_malloc_r+0x510>
 8005be8:	4a29      	ldr	r2, [pc, #164]	; (8005c90 <_malloc_r+0x344>)
 8005bea:	482a      	ldr	r0, [pc, #168]	; (8005c94 <_malloc_r+0x348>)
 8005bec:	6811      	ldr	r1, [r2, #0]
 8005bee:	68bc      	ldr	r4, [r7, #8]
 8005bf0:	428b      	cmp	r3, r1
 8005bf2:	6801      	ldr	r1, [r0, #0]
 8005bf4:	bf88      	it	hi
 8005bf6:	6013      	strhi	r3, [r2, #0]
 8005bf8:	6862      	ldr	r2, [r4, #4]
 8005bfa:	428b      	cmp	r3, r1
 8005bfc:	f022 0203 	bic.w	r2, r2, #3
 8005c00:	bf88      	it	hi
 8005c02:	6003      	strhi	r3, [r0, #0]
 8005c04:	e0a7      	b.n	8005d56 <_malloc_r+0x40a>
 8005c06:	1962      	adds	r2, r4, r5
 8005c08:	f043 0301 	orr.w	r3, r3, #1
 8005c0c:	f045 0501 	orr.w	r5, r5, #1
 8005c10:	6065      	str	r5, [r4, #4]
 8005c12:	4630      	mov	r0, r6
 8005c14:	60ba      	str	r2, [r7, #8]
 8005c16:	6053      	str	r3, [r2, #4]
 8005c18:	f000 f9a6 	bl	8005f68 <__malloc_unlock>
 8005c1c:	3408      	adds	r4, #8
 8005c1e:	4620      	mov	r0, r4
 8005c20:	b003      	add	sp, #12
 8005c22:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c26:	4423      	add	r3, r4
 8005c28:	68e1      	ldr	r1, [r4, #12]
 8005c2a:	685a      	ldr	r2, [r3, #4]
 8005c2c:	68a5      	ldr	r5, [r4, #8]
 8005c2e:	f042 0201 	orr.w	r2, r2, #1
 8005c32:	60e9      	str	r1, [r5, #12]
 8005c34:	4630      	mov	r0, r6
 8005c36:	608d      	str	r5, [r1, #8]
 8005c38:	605a      	str	r2, [r3, #4]
 8005c3a:	f000 f995 	bl	8005f68 <__malloc_unlock>
 8005c3e:	3408      	adds	r4, #8
 8005c40:	4620      	mov	r0, r4
 8005c42:	b003      	add	sp, #12
 8005c44:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c48:	68dc      	ldr	r4, [r3, #12]
 8005c4a:	42a3      	cmp	r3, r4
 8005c4c:	bf08      	it	eq
 8005c4e:	3002      	addeq	r0, #2
 8005c50:	f43f aed6 	beq.w	8005a00 <_malloc_r+0xb4>
 8005c54:	e692      	b.n	800597c <_malloc_r+0x30>
 8005c56:	2b14      	cmp	r3, #20
 8005c58:	d971      	bls.n	8005d3e <_malloc_r+0x3f2>
 8005c5a:	2b54      	cmp	r3, #84	; 0x54
 8005c5c:	f200 80ad 	bhi.w	8005dba <_malloc_r+0x46e>
 8005c60:	0b2b      	lsrs	r3, r5, #12
 8005c62:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005c66:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005c6a:	00c3      	lsls	r3, r0, #3
 8005c6c:	e6b3      	b.n	80059d6 <_malloc_r+0x8a>
 8005c6e:	4423      	add	r3, r4
 8005c70:	4630      	mov	r0, r6
 8005c72:	685a      	ldr	r2, [r3, #4]
 8005c74:	f042 0201 	orr.w	r2, r2, #1
 8005c78:	605a      	str	r2, [r3, #4]
 8005c7a:	3408      	adds	r4, #8
 8005c7c:	f000 f974 	bl	8005f68 <__malloc_unlock>
 8005c80:	e68c      	b.n	800599c <_malloc_r+0x50>
 8005c82:	bf00      	nop
 8005c84:	200004e4 	.word	0x200004e4
 8005c88:	20000b34 	.word	0x20000b34
 8005c8c:	20000b04 	.word	0x20000b04
 8005c90:	20000b2c 	.word	0x20000b2c
 8005c94:	20000b30 	.word	0x20000b30
 8005c98:	200004ec 	.word	0x200004ec
 8005c9c:	200008ec 	.word	0x200008ec
 8005ca0:	1961      	adds	r1, r4, r5
 8005ca2:	f045 0e01 	orr.w	lr, r5, #1
 8005ca6:	f042 0501 	orr.w	r5, r2, #1
 8005caa:	f8c4 e004 	str.w	lr, [r4, #4]
 8005cae:	4630      	mov	r0, r6
 8005cb0:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005cb4:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005cb8:	604d      	str	r5, [r1, #4]
 8005cba:	50e2      	str	r2, [r4, r3]
 8005cbc:	f000 f954 	bl	8005f68 <__malloc_unlock>
 8005cc0:	3408      	adds	r4, #8
 8005cc2:	e66b      	b.n	800599c <_malloc_r+0x50>
 8005cc4:	08e8      	lsrs	r0, r5, #3
 8005cc6:	f105 0308 	add.w	r3, r5, #8
 8005cca:	e64f      	b.n	800596c <_malloc_r+0x20>
 8005ccc:	f108 0801 	add.w	r8, r8, #1
 8005cd0:	f018 0f03 	tst.w	r8, #3
 8005cd4:	f10e 0e08 	add.w	lr, lr, #8
 8005cd8:	f47f aed0 	bne.w	8005a7c <_malloc_r+0x130>
 8005cdc:	e052      	b.n	8005d84 <_malloc_r+0x438>
 8005cde:	4419      	add	r1, r3
 8005ce0:	461c      	mov	r4, r3
 8005ce2:	684a      	ldr	r2, [r1, #4]
 8005ce4:	68db      	ldr	r3, [r3, #12]
 8005ce6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005cea:	f042 0201 	orr.w	r2, r2, #1
 8005cee:	604a      	str	r2, [r1, #4]
 8005cf0:	4630      	mov	r0, r6
 8005cf2:	60eb      	str	r3, [r5, #12]
 8005cf4:	609d      	str	r5, [r3, #8]
 8005cf6:	f000 f937 	bl	8005f68 <__malloc_unlock>
 8005cfa:	e64f      	b.n	800599c <_malloc_r+0x50>
 8005cfc:	0a5a      	lsrs	r2, r3, #9
 8005cfe:	2a04      	cmp	r2, #4
 8005d00:	d935      	bls.n	8005d6e <_malloc_r+0x422>
 8005d02:	2a14      	cmp	r2, #20
 8005d04:	d86f      	bhi.n	8005de6 <_malloc_r+0x49a>
 8005d06:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005d0a:	00c9      	lsls	r1, r1, #3
 8005d0c:	325b      	adds	r2, #91	; 0x5b
 8005d0e:	eb07 0e01 	add.w	lr, r7, r1
 8005d12:	5879      	ldr	r1, [r7, r1]
 8005d14:	f1ae 0e08 	sub.w	lr, lr, #8
 8005d18:	458e      	cmp	lr, r1
 8005d1a:	d058      	beq.n	8005dce <_malloc_r+0x482>
 8005d1c:	684a      	ldr	r2, [r1, #4]
 8005d1e:	f022 0203 	bic.w	r2, r2, #3
 8005d22:	429a      	cmp	r2, r3
 8005d24:	d902      	bls.n	8005d2c <_malloc_r+0x3e0>
 8005d26:	6889      	ldr	r1, [r1, #8]
 8005d28:	458e      	cmp	lr, r1
 8005d2a:	d1f7      	bne.n	8005d1c <_malloc_r+0x3d0>
 8005d2c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005d30:	687b      	ldr	r3, [r7, #4]
 8005d32:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005d36:	f8ce 4008 	str.w	r4, [lr, #8]
 8005d3a:	60cc      	str	r4, [r1, #12]
 8005d3c:	e68c      	b.n	8005a58 <_malloc_r+0x10c>
 8005d3e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005d42:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005d46:	00c3      	lsls	r3, r0, #3
 8005d48:	e645      	b.n	80059d6 <_malloc_r+0x8a>
 8005d4a:	42bc      	cmp	r4, r7
 8005d4c:	d072      	beq.n	8005e34 <_malloc_r+0x4e8>
 8005d4e:	68bc      	ldr	r4, [r7, #8]
 8005d50:	6862      	ldr	r2, [r4, #4]
 8005d52:	f022 0203 	bic.w	r2, r2, #3
 8005d56:	4295      	cmp	r5, r2
 8005d58:	eba2 0305 	sub.w	r3, r2, r5
 8005d5c:	d802      	bhi.n	8005d64 <_malloc_r+0x418>
 8005d5e:	2b0f      	cmp	r3, #15
 8005d60:	f73f af51 	bgt.w	8005c06 <_malloc_r+0x2ba>
 8005d64:	4630      	mov	r0, r6
 8005d66:	f000 f8ff 	bl	8005f68 <__malloc_unlock>
 8005d6a:	2400      	movs	r4, #0
 8005d6c:	e616      	b.n	800599c <_malloc_r+0x50>
 8005d6e:	099a      	lsrs	r2, r3, #6
 8005d70:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005d74:	00c9      	lsls	r1, r1, #3
 8005d76:	3238      	adds	r2, #56	; 0x38
 8005d78:	e7c9      	b.n	8005d0e <_malloc_r+0x3c2>
 8005d7a:	f8d9 9000 	ldr.w	r9, [r9]
 8005d7e:	4599      	cmp	r9, r3
 8005d80:	f040 8083 	bne.w	8005e8a <_malloc_r+0x53e>
 8005d84:	f010 0f03 	tst.w	r0, #3
 8005d88:	f1a9 0308 	sub.w	r3, r9, #8
 8005d8c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005d90:	d1f3      	bne.n	8005d7a <_malloc_r+0x42e>
 8005d92:	687b      	ldr	r3, [r7, #4]
 8005d94:	ea23 0304 	bic.w	r3, r3, r4
 8005d98:	607b      	str	r3, [r7, #4]
 8005d9a:	0064      	lsls	r4, r4, #1
 8005d9c:	429c      	cmp	r4, r3
 8005d9e:	f63f aeac 	bhi.w	8005afa <_malloc_r+0x1ae>
 8005da2:	b91c      	cbnz	r4, 8005dac <_malloc_r+0x460>
 8005da4:	e6a9      	b.n	8005afa <_malloc_r+0x1ae>
 8005da6:	0064      	lsls	r4, r4, #1
 8005da8:	f108 0804 	add.w	r8, r8, #4
 8005dac:	421c      	tst	r4, r3
 8005dae:	d0fa      	beq.n	8005da6 <_malloc_r+0x45a>
 8005db0:	4640      	mov	r0, r8
 8005db2:	e65f      	b.n	8005a74 <_malloc_r+0x128>
 8005db4:	f108 0810 	add.w	r8, r8, #16
 8005db8:	e6bc      	b.n	8005b34 <_malloc_r+0x1e8>
 8005dba:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005dbe:	d826      	bhi.n	8005e0e <_malloc_r+0x4c2>
 8005dc0:	0beb      	lsrs	r3, r5, #15
 8005dc2:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005dc6:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005dca:	00c3      	lsls	r3, r0, #3
 8005dcc:	e603      	b.n	80059d6 <_malloc_r+0x8a>
 8005dce:	687b      	ldr	r3, [r7, #4]
 8005dd0:	1092      	asrs	r2, r2, #2
 8005dd2:	f04f 0801 	mov.w	r8, #1
 8005dd6:	fa08 f202 	lsl.w	r2, r8, r2
 8005dda:	4313      	orrs	r3, r2
 8005ddc:	607b      	str	r3, [r7, #4]
 8005dde:	e7a8      	b.n	8005d32 <_malloc_r+0x3e6>
 8005de0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005de4:	e6ce      	b.n	8005b84 <_malloc_r+0x238>
 8005de6:	2a54      	cmp	r2, #84	; 0x54
 8005de8:	d829      	bhi.n	8005e3e <_malloc_r+0x4f2>
 8005dea:	0b1a      	lsrs	r2, r3, #12
 8005dec:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005df0:	00c9      	lsls	r1, r1, #3
 8005df2:	326e      	adds	r2, #110	; 0x6e
 8005df4:	e78b      	b.n	8005d0e <_malloc_r+0x3c2>
 8005df6:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005dfa:	2900      	cmp	r1, #0
 8005dfc:	f47f aeae 	bne.w	8005b5c <_malloc_r+0x210>
 8005e00:	eb09 0208 	add.w	r2, r9, r8
 8005e04:	68b9      	ldr	r1, [r7, #8]
 8005e06:	f042 0201 	orr.w	r2, r2, #1
 8005e0a:	604a      	str	r2, [r1, #4]
 8005e0c:	e6ec      	b.n	8005be8 <_malloc_r+0x29c>
 8005e0e:	f240 5254 	movw	r2, #1364	; 0x554
 8005e12:	4293      	cmp	r3, r2
 8005e14:	d81c      	bhi.n	8005e50 <_malloc_r+0x504>
 8005e16:	0cab      	lsrs	r3, r5, #18
 8005e18:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005e1c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005e20:	00c3      	lsls	r3, r0, #3
 8005e22:	e5d8      	b.n	80059d6 <_malloc_r+0x8a>
 8005e24:	2301      	movs	r3, #1
 8005e26:	f8cb 3004 	str.w	r3, [fp, #4]
 8005e2a:	e79b      	b.n	8005d64 <_malloc_r+0x418>
 8005e2c:	2101      	movs	r1, #1
 8005e2e:	f04f 0800 	mov.w	r8, #0
 8005e32:	e6ba      	b.n	8005baa <_malloc_r+0x25e>
 8005e34:	4a16      	ldr	r2, [pc, #88]	; (8005e90 <_malloc_r+0x544>)
 8005e36:	6813      	ldr	r3, [r2, #0]
 8005e38:	4443      	add	r3, r8
 8005e3a:	6013      	str	r3, [r2, #0]
 8005e3c:	e68e      	b.n	8005b5c <_malloc_r+0x210>
 8005e3e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005e42:	d814      	bhi.n	8005e6e <_malloc_r+0x522>
 8005e44:	0bda      	lsrs	r2, r3, #15
 8005e46:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005e4a:	00c9      	lsls	r1, r1, #3
 8005e4c:	3277      	adds	r2, #119	; 0x77
 8005e4e:	e75e      	b.n	8005d0e <_malloc_r+0x3c2>
 8005e50:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005e54:	207f      	movs	r0, #127	; 0x7f
 8005e56:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005e5a:	e5bc      	b.n	80059d6 <_malloc_r+0x8a>
 8005e5c:	f104 0108 	add.w	r1, r4, #8
 8005e60:	4630      	mov	r0, r6
 8005e62:	9201      	str	r2, [sp, #4]
 8005e64:	f7ff fa48 	bl	80052f8 <_free_r>
 8005e68:	9a01      	ldr	r2, [sp, #4]
 8005e6a:	6813      	ldr	r3, [r2, #0]
 8005e6c:	e6bc      	b.n	8005be8 <_malloc_r+0x29c>
 8005e6e:	f240 5154 	movw	r1, #1364	; 0x554
 8005e72:	428a      	cmp	r2, r1
 8005e74:	d805      	bhi.n	8005e82 <_malloc_r+0x536>
 8005e76:	0c9a      	lsrs	r2, r3, #18
 8005e78:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005e7c:	00c9      	lsls	r1, r1, #3
 8005e7e:	327c      	adds	r2, #124	; 0x7c
 8005e80:	e745      	b.n	8005d0e <_malloc_r+0x3c2>
 8005e82:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005e86:	227e      	movs	r2, #126	; 0x7e
 8005e88:	e741      	b.n	8005d0e <_malloc_r+0x3c2>
 8005e8a:	687b      	ldr	r3, [r7, #4]
 8005e8c:	e785      	b.n	8005d9a <_malloc_r+0x44e>
 8005e8e:	bf00      	nop
 8005e90:	20000b04 	.word	0x20000b04

08005e94 <memmove>:
 8005e94:	4288      	cmp	r0, r1
 8005e96:	b4f0      	push	{r4, r5, r6, r7}
 8005e98:	d90d      	bls.n	8005eb6 <memmove+0x22>
 8005e9a:	188b      	adds	r3, r1, r2
 8005e9c:	4283      	cmp	r3, r0
 8005e9e:	d90a      	bls.n	8005eb6 <memmove+0x22>
 8005ea0:	1884      	adds	r4, r0, r2
 8005ea2:	b132      	cbz	r2, 8005eb2 <memmove+0x1e>
 8005ea4:	4622      	mov	r2, r4
 8005ea6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005eaa:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005eae:	4299      	cmp	r1, r3
 8005eb0:	d1f9      	bne.n	8005ea6 <memmove+0x12>
 8005eb2:	bcf0      	pop	{r4, r5, r6, r7}
 8005eb4:	4770      	bx	lr
 8005eb6:	2a0f      	cmp	r2, #15
 8005eb8:	d949      	bls.n	8005f4e <memmove+0xba>
 8005eba:	ea40 0301 	orr.w	r3, r0, r1
 8005ebe:	079b      	lsls	r3, r3, #30
 8005ec0:	d147      	bne.n	8005f52 <memmove+0xbe>
 8005ec2:	f1a2 0310 	sub.w	r3, r2, #16
 8005ec6:	091b      	lsrs	r3, r3, #4
 8005ec8:	f101 0720 	add.w	r7, r1, #32
 8005ecc:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005ed0:	f101 0410 	add.w	r4, r1, #16
 8005ed4:	f100 0510 	add.w	r5, r0, #16
 8005ed8:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005edc:	f845 6c10 	str.w	r6, [r5, #-16]
 8005ee0:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005ee4:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005ee8:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005eec:	f845 6c08 	str.w	r6, [r5, #-8]
 8005ef0:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005ef4:	f845 6c04 	str.w	r6, [r5, #-4]
 8005ef8:	3410      	adds	r4, #16
 8005efa:	42bc      	cmp	r4, r7
 8005efc:	f105 0510 	add.w	r5, r5, #16
 8005f00:	d1ea      	bne.n	8005ed8 <memmove+0x44>
 8005f02:	3301      	adds	r3, #1
 8005f04:	f002 050f 	and.w	r5, r2, #15
 8005f08:	011b      	lsls	r3, r3, #4
 8005f0a:	2d03      	cmp	r5, #3
 8005f0c:	4419      	add	r1, r3
 8005f0e:	4403      	add	r3, r0
 8005f10:	d921      	bls.n	8005f56 <memmove+0xc2>
 8005f12:	1f1f      	subs	r7, r3, #4
 8005f14:	460e      	mov	r6, r1
 8005f16:	462c      	mov	r4, r5
 8005f18:	3c04      	subs	r4, #4
 8005f1a:	f856 cb04 	ldr.w	ip, [r6], #4
 8005f1e:	f847 cf04 	str.w	ip, [r7, #4]!
 8005f22:	2c03      	cmp	r4, #3
 8005f24:	d8f8      	bhi.n	8005f18 <memmove+0x84>
 8005f26:	1f2c      	subs	r4, r5, #4
 8005f28:	f024 0403 	bic.w	r4, r4, #3
 8005f2c:	3404      	adds	r4, #4
 8005f2e:	4423      	add	r3, r4
 8005f30:	4421      	add	r1, r4
 8005f32:	f002 0203 	and.w	r2, r2, #3
 8005f36:	2a00      	cmp	r2, #0
 8005f38:	d0bb      	beq.n	8005eb2 <memmove+0x1e>
 8005f3a:	3b01      	subs	r3, #1
 8005f3c:	440a      	add	r2, r1
 8005f3e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005f42:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005f46:	4291      	cmp	r1, r2
 8005f48:	d1f9      	bne.n	8005f3e <memmove+0xaa>
 8005f4a:	bcf0      	pop	{r4, r5, r6, r7}
 8005f4c:	4770      	bx	lr
 8005f4e:	4603      	mov	r3, r0
 8005f50:	e7f1      	b.n	8005f36 <memmove+0xa2>
 8005f52:	4603      	mov	r3, r0
 8005f54:	e7f1      	b.n	8005f3a <memmove+0xa6>
 8005f56:	462a      	mov	r2, r5
 8005f58:	e7ed      	b.n	8005f36 <memmove+0xa2>
 8005f5a:	bf00      	nop

08005f5c <__malloc_lock>:
 8005f5c:	4801      	ldr	r0, [pc, #4]	; (8005f64 <__malloc_lock+0x8>)
 8005f5e:	f7ff bc79 	b.w	8005854 <__retarget_lock_acquire_recursive>
 8005f62:	bf00      	nop
 8005f64:	20000b90 	.word	0x20000b90

08005f68 <__malloc_unlock>:
 8005f68:	4801      	ldr	r0, [pc, #4]	; (8005f70 <__malloc_unlock+0x8>)
 8005f6a:	f7ff bc75 	b.w	8005858 <__retarget_lock_release_recursive>
 8005f6e:	bf00      	nop
 8005f70:	20000b90 	.word	0x20000b90

08005f74 <_Balloc>:
 8005f74:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005f76:	b570      	push	{r4, r5, r6, lr}
 8005f78:	4605      	mov	r5, r0
 8005f7a:	460c      	mov	r4, r1
 8005f7c:	b14b      	cbz	r3, 8005f92 <_Balloc+0x1e>
 8005f7e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005f82:	b180      	cbz	r0, 8005fa6 <_Balloc+0x32>
 8005f84:	6802      	ldr	r2, [r0, #0]
 8005f86:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005f8a:	2300      	movs	r3, #0
 8005f8c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005f90:	bd70      	pop	{r4, r5, r6, pc}
 8005f92:	2221      	movs	r2, #33	; 0x21
 8005f94:	2104      	movs	r1, #4
 8005f96:	f000 fe1d 	bl	8006bd4 <_calloc_r>
 8005f9a:	4603      	mov	r3, r0
 8005f9c:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005f9e:	2800      	cmp	r0, #0
 8005fa0:	d1ed      	bne.n	8005f7e <_Balloc+0xa>
 8005fa2:	2000      	movs	r0, #0
 8005fa4:	bd70      	pop	{r4, r5, r6, pc}
 8005fa6:	2101      	movs	r1, #1
 8005fa8:	fa01 f604 	lsl.w	r6, r1, r4
 8005fac:	1d72      	adds	r2, r6, #5
 8005fae:	4628      	mov	r0, r5
 8005fb0:	0092      	lsls	r2, r2, #2
 8005fb2:	f000 fe0f 	bl	8006bd4 <_calloc_r>
 8005fb6:	2800      	cmp	r0, #0
 8005fb8:	d0f3      	beq.n	8005fa2 <_Balloc+0x2e>
 8005fba:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005fbe:	e7e4      	b.n	8005f8a <_Balloc+0x16>

08005fc0 <_Bfree>:
 8005fc0:	b131      	cbz	r1, 8005fd0 <_Bfree+0x10>
 8005fc2:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005fc4:	684a      	ldr	r2, [r1, #4]
 8005fc6:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005fca:	6008      	str	r0, [r1, #0]
 8005fcc:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005fd0:	4770      	bx	lr
 8005fd2:	bf00      	nop

08005fd4 <__multadd>:
 8005fd4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005fd6:	690c      	ldr	r4, [r1, #16]
 8005fd8:	b083      	sub	sp, #12
 8005fda:	460d      	mov	r5, r1
 8005fdc:	4606      	mov	r6, r0
 8005fde:	f101 0c14 	add.w	ip, r1, #20
 8005fe2:	2700      	movs	r7, #0
 8005fe4:	f8dc 0000 	ldr.w	r0, [ip]
 8005fe8:	b281      	uxth	r1, r0
 8005fea:	fb02 3301 	mla	r3, r2, r1, r3
 8005fee:	0c01      	lsrs	r1, r0, #16
 8005ff0:	0c18      	lsrs	r0, r3, #16
 8005ff2:	fb02 0101 	mla	r1, r2, r1, r0
 8005ff6:	b29b      	uxth	r3, r3
 8005ff8:	3701      	adds	r7, #1
 8005ffa:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005ffe:	42bc      	cmp	r4, r7
 8006000:	f84c 3b04 	str.w	r3, [ip], #4
 8006004:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006008:	dcec      	bgt.n	8005fe4 <__multadd+0x10>
 800600a:	b13b      	cbz	r3, 800601c <__multadd+0x48>
 800600c:	68aa      	ldr	r2, [r5, #8]
 800600e:	42a2      	cmp	r2, r4
 8006010:	dd07      	ble.n	8006022 <__multadd+0x4e>
 8006012:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8006016:	3401      	adds	r4, #1
 8006018:	6153      	str	r3, [r2, #20]
 800601a:	612c      	str	r4, [r5, #16]
 800601c:	4628      	mov	r0, r5
 800601e:	b003      	add	sp, #12
 8006020:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006022:	6869      	ldr	r1, [r5, #4]
 8006024:	9301      	str	r3, [sp, #4]
 8006026:	3101      	adds	r1, #1
 8006028:	4630      	mov	r0, r6
 800602a:	f7ff ffa3 	bl	8005f74 <_Balloc>
 800602e:	692a      	ldr	r2, [r5, #16]
 8006030:	3202      	adds	r2, #2
 8006032:	f105 010c 	add.w	r1, r5, #12
 8006036:	4607      	mov	r7, r0
 8006038:	0092      	lsls	r2, r2, #2
 800603a:	300c      	adds	r0, #12
 800603c:	f7fa fa60 	bl	8000500 <memcpy>
 8006040:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006042:	6869      	ldr	r1, [r5, #4]
 8006044:	9b01      	ldr	r3, [sp, #4]
 8006046:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800604a:	6028      	str	r0, [r5, #0]
 800604c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006050:	463d      	mov	r5, r7
 8006052:	e7de      	b.n	8006012 <__multadd+0x3e>

08006054 <__hi0bits>:
 8006054:	0c02      	lsrs	r2, r0, #16
 8006056:	0412      	lsls	r2, r2, #16
 8006058:	4603      	mov	r3, r0
 800605a:	b9c2      	cbnz	r2, 800608e <__hi0bits+0x3a>
 800605c:	0403      	lsls	r3, r0, #16
 800605e:	2010      	movs	r0, #16
 8006060:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006064:	bf04      	itt	eq
 8006066:	021b      	lsleq	r3, r3, #8
 8006068:	3008      	addeq	r0, #8
 800606a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800606e:	bf04      	itt	eq
 8006070:	011b      	lsleq	r3, r3, #4
 8006072:	3004      	addeq	r0, #4
 8006074:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006078:	bf04      	itt	eq
 800607a:	009b      	lsleq	r3, r3, #2
 800607c:	3002      	addeq	r0, #2
 800607e:	2b00      	cmp	r3, #0
 8006080:	db04      	blt.n	800608c <__hi0bits+0x38>
 8006082:	005b      	lsls	r3, r3, #1
 8006084:	d501      	bpl.n	800608a <__hi0bits+0x36>
 8006086:	3001      	adds	r0, #1
 8006088:	4770      	bx	lr
 800608a:	2020      	movs	r0, #32
 800608c:	4770      	bx	lr
 800608e:	2000      	movs	r0, #0
 8006090:	e7e6      	b.n	8006060 <__hi0bits+0xc>
 8006092:	bf00      	nop

08006094 <__lo0bits>:
 8006094:	6803      	ldr	r3, [r0, #0]
 8006096:	f013 0207 	ands.w	r2, r3, #7
 800609a:	4601      	mov	r1, r0
 800609c:	d007      	beq.n	80060ae <__lo0bits+0x1a>
 800609e:	07da      	lsls	r2, r3, #31
 80060a0:	d41f      	bmi.n	80060e2 <__lo0bits+0x4e>
 80060a2:	0798      	lsls	r0, r3, #30
 80060a4:	d51f      	bpl.n	80060e6 <__lo0bits+0x52>
 80060a6:	085b      	lsrs	r3, r3, #1
 80060a8:	600b      	str	r3, [r1, #0]
 80060aa:	2001      	movs	r0, #1
 80060ac:	4770      	bx	lr
 80060ae:	b298      	uxth	r0, r3
 80060b0:	b1a0      	cbz	r0, 80060dc <__lo0bits+0x48>
 80060b2:	4610      	mov	r0, r2
 80060b4:	f013 0fff 	tst.w	r3, #255	; 0xff
 80060b8:	bf04      	itt	eq
 80060ba:	0a1b      	lsreq	r3, r3, #8
 80060bc:	3008      	addeq	r0, #8
 80060be:	071a      	lsls	r2, r3, #28
 80060c0:	bf04      	itt	eq
 80060c2:	091b      	lsreq	r3, r3, #4
 80060c4:	3004      	addeq	r0, #4
 80060c6:	079a      	lsls	r2, r3, #30
 80060c8:	bf04      	itt	eq
 80060ca:	089b      	lsreq	r3, r3, #2
 80060cc:	3002      	addeq	r0, #2
 80060ce:	07da      	lsls	r2, r3, #31
 80060d0:	d402      	bmi.n	80060d8 <__lo0bits+0x44>
 80060d2:	085b      	lsrs	r3, r3, #1
 80060d4:	d00b      	beq.n	80060ee <__lo0bits+0x5a>
 80060d6:	3001      	adds	r0, #1
 80060d8:	600b      	str	r3, [r1, #0]
 80060da:	4770      	bx	lr
 80060dc:	0c1b      	lsrs	r3, r3, #16
 80060de:	2010      	movs	r0, #16
 80060e0:	e7e8      	b.n	80060b4 <__lo0bits+0x20>
 80060e2:	2000      	movs	r0, #0
 80060e4:	4770      	bx	lr
 80060e6:	089b      	lsrs	r3, r3, #2
 80060e8:	600b      	str	r3, [r1, #0]
 80060ea:	2002      	movs	r0, #2
 80060ec:	4770      	bx	lr
 80060ee:	2020      	movs	r0, #32
 80060f0:	4770      	bx	lr
 80060f2:	bf00      	nop

080060f4 <__i2b>:
 80060f4:	b510      	push	{r4, lr}
 80060f6:	460c      	mov	r4, r1
 80060f8:	2101      	movs	r1, #1
 80060fa:	f7ff ff3b 	bl	8005f74 <_Balloc>
 80060fe:	2201      	movs	r2, #1
 8006100:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8006104:	bd10      	pop	{r4, pc}
 8006106:	bf00      	nop

08006108 <__multiply>:
 8006108:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800610c:	690e      	ldr	r6, [r1, #16]
 800610e:	6914      	ldr	r4, [r2, #16]
 8006110:	42a6      	cmp	r6, r4
 8006112:	b083      	sub	sp, #12
 8006114:	460f      	mov	r7, r1
 8006116:	4615      	mov	r5, r2
 8006118:	da04      	bge.n	8006124 <__multiply+0x1c>
 800611a:	4632      	mov	r2, r6
 800611c:	462f      	mov	r7, r5
 800611e:	4626      	mov	r6, r4
 8006120:	460d      	mov	r5, r1
 8006122:	4614      	mov	r4, r2
 8006124:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006128:	eb06 0804 	add.w	r8, r6, r4
 800612c:	4543      	cmp	r3, r8
 800612e:	bfb8      	it	lt
 8006130:	3101      	addlt	r1, #1
 8006132:	f7ff ff1f 	bl	8005f74 <_Balloc>
 8006136:	f100 0914 	add.w	r9, r0, #20
 800613a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800613e:	45f1      	cmp	r9, lr
 8006140:	9000      	str	r0, [sp, #0]
 8006142:	d205      	bcs.n	8006150 <__multiply+0x48>
 8006144:	464b      	mov	r3, r9
 8006146:	2200      	movs	r2, #0
 8006148:	f843 2b04 	str.w	r2, [r3], #4
 800614c:	459e      	cmp	lr, r3
 800614e:	d8fb      	bhi.n	8006148 <__multiply+0x40>
 8006150:	f105 0a14 	add.w	sl, r5, #20
 8006154:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006158:	f107 0314 	add.w	r3, r7, #20
 800615c:	45a2      	cmp	sl, r4
 800615e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006162:	d261      	bcs.n	8006228 <__multiply+0x120>
 8006164:	1b64      	subs	r4, r4, r5
 8006166:	3c15      	subs	r4, #21
 8006168:	f024 0403 	bic.w	r4, r4, #3
 800616c:	f8cd e004 	str.w	lr, [sp, #4]
 8006170:	44a2      	add	sl, r4
 8006172:	f105 0210 	add.w	r2, r5, #16
 8006176:	469e      	mov	lr, r3
 8006178:	e005      	b.n	8006186 <__multiply+0x7e>
 800617a:	0c2d      	lsrs	r5, r5, #16
 800617c:	d12b      	bne.n	80061d6 <__multiply+0xce>
 800617e:	4592      	cmp	sl, r2
 8006180:	f109 0904 	add.w	r9, r9, #4
 8006184:	d04e      	beq.n	8006224 <__multiply+0x11c>
 8006186:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800618a:	fa1f fb85 	uxth.w	fp, r5
 800618e:	f1bb 0f00 	cmp.w	fp, #0
 8006192:	d0f2      	beq.n	800617a <__multiply+0x72>
 8006194:	4677      	mov	r7, lr
 8006196:	464e      	mov	r6, r9
 8006198:	2000      	movs	r0, #0
 800619a:	e000      	b.n	800619e <__multiply+0x96>
 800619c:	4626      	mov	r6, r4
 800619e:	f857 1b04 	ldr.w	r1, [r7], #4
 80061a2:	6834      	ldr	r4, [r6, #0]
 80061a4:	b28b      	uxth	r3, r1
 80061a6:	b2a5      	uxth	r5, r4
 80061a8:	0c09      	lsrs	r1, r1, #16
 80061aa:	0c24      	lsrs	r4, r4, #16
 80061ac:	fb0b 5303 	mla	r3, fp, r3, r5
 80061b0:	4403      	add	r3, r0
 80061b2:	fb0b 4001 	mla	r0, fp, r1, r4
 80061b6:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80061ba:	4634      	mov	r4, r6
 80061bc:	b29b      	uxth	r3, r3
 80061be:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80061c2:	45bc      	cmp	ip, r7
 80061c4:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80061c8:	f844 3b04 	str.w	r3, [r4], #4
 80061cc:	d8e6      	bhi.n	800619c <__multiply+0x94>
 80061ce:	6070      	str	r0, [r6, #4]
 80061d0:	6815      	ldr	r5, [r2, #0]
 80061d2:	0c2d      	lsrs	r5, r5, #16
 80061d4:	d0d3      	beq.n	800617e <__multiply+0x76>
 80061d6:	f8d9 3000 	ldr.w	r3, [r9]
 80061da:	4676      	mov	r6, lr
 80061dc:	4618      	mov	r0, r3
 80061de:	46cb      	mov	fp, r9
 80061e0:	2100      	movs	r1, #0
 80061e2:	e000      	b.n	80061e6 <__multiply+0xde>
 80061e4:	46a3      	mov	fp, r4
 80061e6:	8834      	ldrh	r4, [r6, #0]
 80061e8:	0c00      	lsrs	r0, r0, #16
 80061ea:	fb05 0004 	mla	r0, r5, r4, r0
 80061ee:	4401      	add	r1, r0
 80061f0:	b29b      	uxth	r3, r3
 80061f2:	465c      	mov	r4, fp
 80061f4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80061f8:	f844 3b04 	str.w	r3, [r4], #4
 80061fc:	f856 3b04 	ldr.w	r3, [r6], #4
 8006200:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006204:	0c1b      	lsrs	r3, r3, #16
 8006206:	b287      	uxth	r7, r0
 8006208:	fb05 7303 	mla	r3, r5, r3, r7
 800620c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006210:	45b4      	cmp	ip, r6
 8006212:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006216:	d8e5      	bhi.n	80061e4 <__multiply+0xdc>
 8006218:	4592      	cmp	sl, r2
 800621a:	f8cb 3004 	str.w	r3, [fp, #4]
 800621e:	f109 0904 	add.w	r9, r9, #4
 8006222:	d1b0      	bne.n	8006186 <__multiply+0x7e>
 8006224:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006228:	f1b8 0f00 	cmp.w	r8, #0
 800622c:	dd0b      	ble.n	8006246 <__multiply+0x13e>
 800622e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006232:	f1ae 0e04 	sub.w	lr, lr, #4
 8006236:	b11b      	cbz	r3, 8006240 <__multiply+0x138>
 8006238:	e005      	b.n	8006246 <__multiply+0x13e>
 800623a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800623e:	b913      	cbnz	r3, 8006246 <__multiply+0x13e>
 8006240:	f1b8 0801 	subs.w	r8, r8, #1
 8006244:	d1f9      	bne.n	800623a <__multiply+0x132>
 8006246:	9800      	ldr	r0, [sp, #0]
 8006248:	f8c0 8010 	str.w	r8, [r0, #16]
 800624c:	b003      	add	sp, #12
 800624e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006252:	bf00      	nop

08006254 <__pow5mult>:
 8006254:	f012 0303 	ands.w	r3, r2, #3
 8006258:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800625c:	4614      	mov	r4, r2
 800625e:	4607      	mov	r7, r0
 8006260:	d12e      	bne.n	80062c0 <__pow5mult+0x6c>
 8006262:	460d      	mov	r5, r1
 8006264:	10a4      	asrs	r4, r4, #2
 8006266:	d01c      	beq.n	80062a2 <__pow5mult+0x4e>
 8006268:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800626a:	b396      	cbz	r6, 80062d2 <__pow5mult+0x7e>
 800626c:	07e3      	lsls	r3, r4, #31
 800626e:	f04f 0800 	mov.w	r8, #0
 8006272:	d406      	bmi.n	8006282 <__pow5mult+0x2e>
 8006274:	1064      	asrs	r4, r4, #1
 8006276:	d014      	beq.n	80062a2 <__pow5mult+0x4e>
 8006278:	6830      	ldr	r0, [r6, #0]
 800627a:	b1a8      	cbz	r0, 80062a8 <__pow5mult+0x54>
 800627c:	4606      	mov	r6, r0
 800627e:	07e3      	lsls	r3, r4, #31
 8006280:	d5f8      	bpl.n	8006274 <__pow5mult+0x20>
 8006282:	4632      	mov	r2, r6
 8006284:	4629      	mov	r1, r5
 8006286:	4638      	mov	r0, r7
 8006288:	f7ff ff3e 	bl	8006108 <__multiply>
 800628c:	b1b5      	cbz	r5, 80062bc <__pow5mult+0x68>
 800628e:	686a      	ldr	r2, [r5, #4]
 8006290:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006292:	1064      	asrs	r4, r4, #1
 8006294:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006298:	6029      	str	r1, [r5, #0]
 800629a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800629e:	4605      	mov	r5, r0
 80062a0:	d1ea      	bne.n	8006278 <__pow5mult+0x24>
 80062a2:	4628      	mov	r0, r5
 80062a4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80062a8:	4632      	mov	r2, r6
 80062aa:	4631      	mov	r1, r6
 80062ac:	4638      	mov	r0, r7
 80062ae:	f7ff ff2b 	bl	8006108 <__multiply>
 80062b2:	6030      	str	r0, [r6, #0]
 80062b4:	f8c0 8000 	str.w	r8, [r0]
 80062b8:	4606      	mov	r6, r0
 80062ba:	e7e0      	b.n	800627e <__pow5mult+0x2a>
 80062bc:	4605      	mov	r5, r0
 80062be:	e7d9      	b.n	8006274 <__pow5mult+0x20>
 80062c0:	3b01      	subs	r3, #1
 80062c2:	4a0b      	ldr	r2, [pc, #44]	; (80062f0 <__pow5mult+0x9c>)
 80062c4:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80062c8:	2300      	movs	r3, #0
 80062ca:	f7ff fe83 	bl	8005fd4 <__multadd>
 80062ce:	4605      	mov	r5, r0
 80062d0:	e7c8      	b.n	8006264 <__pow5mult+0x10>
 80062d2:	2101      	movs	r1, #1
 80062d4:	4638      	mov	r0, r7
 80062d6:	f7ff fe4d 	bl	8005f74 <_Balloc>
 80062da:	f240 2371 	movw	r3, #625	; 0x271
 80062de:	6143      	str	r3, [r0, #20]
 80062e0:	2201      	movs	r2, #1
 80062e2:	2300      	movs	r3, #0
 80062e4:	6102      	str	r2, [r0, #16]
 80062e6:	4606      	mov	r6, r0
 80062e8:	64b8      	str	r0, [r7, #72]	; 0x48
 80062ea:	6003      	str	r3, [r0, #0]
 80062ec:	e7be      	b.n	800626c <__pow5mult+0x18>
 80062ee:	bf00      	nop
 80062f0:	080072d8 	.word	0x080072d8

080062f4 <__lshift>:
 80062f4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80062f8:	4691      	mov	r9, r2
 80062fa:	690a      	ldr	r2, [r1, #16]
 80062fc:	460e      	mov	r6, r1
 80062fe:	ea4f 1469 	mov.w	r4, r9, asr #5
 8006302:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8006306:	eb04 0802 	add.w	r8, r4, r2
 800630a:	f108 0501 	add.w	r5, r8, #1
 800630e:	429d      	cmp	r5, r3
 8006310:	4607      	mov	r7, r0
 8006312:	dd04      	ble.n	800631e <__lshift+0x2a>
 8006314:	005b      	lsls	r3, r3, #1
 8006316:	429d      	cmp	r5, r3
 8006318:	f101 0101 	add.w	r1, r1, #1
 800631c:	dcfa      	bgt.n	8006314 <__lshift+0x20>
 800631e:	4638      	mov	r0, r7
 8006320:	f7ff fe28 	bl	8005f74 <_Balloc>
 8006324:	2c00      	cmp	r4, #0
 8006326:	f100 0314 	add.w	r3, r0, #20
 800632a:	dd37      	ble.n	800639c <__lshift+0xa8>
 800632c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006330:	2200      	movs	r2, #0
 8006332:	f843 2b04 	str.w	r2, [r3], #4
 8006336:	428b      	cmp	r3, r1
 8006338:	d1fb      	bne.n	8006332 <__lshift+0x3e>
 800633a:	6934      	ldr	r4, [r6, #16]
 800633c:	f106 0314 	add.w	r3, r6, #20
 8006340:	f019 091f 	ands.w	r9, r9, #31
 8006344:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006348:	d020      	beq.n	800638c <__lshift+0x98>
 800634a:	f1c9 0e20 	rsb	lr, r9, #32
 800634e:	2200      	movs	r2, #0
 8006350:	e000      	b.n	8006354 <__lshift+0x60>
 8006352:	4651      	mov	r1, sl
 8006354:	681c      	ldr	r4, [r3, #0]
 8006356:	468a      	mov	sl, r1
 8006358:	fa04 f409 	lsl.w	r4, r4, r9
 800635c:	4314      	orrs	r4, r2
 800635e:	f84a 4b04 	str.w	r4, [sl], #4
 8006362:	f853 2b04 	ldr.w	r2, [r3], #4
 8006366:	4563      	cmp	r3, ip
 8006368:	fa22 f20e 	lsr.w	r2, r2, lr
 800636c:	d3f1      	bcc.n	8006352 <__lshift+0x5e>
 800636e:	604a      	str	r2, [r1, #4]
 8006370:	b10a      	cbz	r2, 8006376 <__lshift+0x82>
 8006372:	f108 0502 	add.w	r5, r8, #2
 8006376:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006378:	6872      	ldr	r2, [r6, #4]
 800637a:	3d01      	subs	r5, #1
 800637c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006380:	6105      	str	r5, [r0, #16]
 8006382:	6031      	str	r1, [r6, #0]
 8006384:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006388:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800638c:	3904      	subs	r1, #4
 800638e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006392:	f841 2f04 	str.w	r2, [r1, #4]!
 8006396:	459c      	cmp	ip, r3
 8006398:	d8f9      	bhi.n	800638e <__lshift+0x9a>
 800639a:	e7ec      	b.n	8006376 <__lshift+0x82>
 800639c:	4619      	mov	r1, r3
 800639e:	e7cc      	b.n	800633a <__lshift+0x46>

080063a0 <__mcmp>:
 80063a0:	b430      	push	{r4, r5}
 80063a2:	690b      	ldr	r3, [r1, #16]
 80063a4:	4605      	mov	r5, r0
 80063a6:	6900      	ldr	r0, [r0, #16]
 80063a8:	1ac0      	subs	r0, r0, r3
 80063aa:	d10f      	bne.n	80063cc <__mcmp+0x2c>
 80063ac:	009b      	lsls	r3, r3, #2
 80063ae:	3514      	adds	r5, #20
 80063b0:	3114      	adds	r1, #20
 80063b2:	4419      	add	r1, r3
 80063b4:	442b      	add	r3, r5
 80063b6:	e001      	b.n	80063bc <__mcmp+0x1c>
 80063b8:	429d      	cmp	r5, r3
 80063ba:	d207      	bcs.n	80063cc <__mcmp+0x2c>
 80063bc:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80063c0:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80063c4:	4294      	cmp	r4, r2
 80063c6:	d0f7      	beq.n	80063b8 <__mcmp+0x18>
 80063c8:	d302      	bcc.n	80063d0 <__mcmp+0x30>
 80063ca:	2001      	movs	r0, #1
 80063cc:	bc30      	pop	{r4, r5}
 80063ce:	4770      	bx	lr
 80063d0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80063d4:	e7fa      	b.n	80063cc <__mcmp+0x2c>
 80063d6:	bf00      	nop

080063d8 <__mdiff>:
 80063d8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80063dc:	6913      	ldr	r3, [r2, #16]
 80063de:	690d      	ldr	r5, [r1, #16]
 80063e0:	1aed      	subs	r5, r5, r3
 80063e2:	2d00      	cmp	r5, #0
 80063e4:	460e      	mov	r6, r1
 80063e6:	4690      	mov	r8, r2
 80063e8:	f101 0414 	add.w	r4, r1, #20
 80063ec:	f102 0714 	add.w	r7, r2, #20
 80063f0:	d114      	bne.n	800641c <__mdiff+0x44>
 80063f2:	009b      	lsls	r3, r3, #2
 80063f4:	18e2      	adds	r2, r4, r3
 80063f6:	443b      	add	r3, r7
 80063f8:	e001      	b.n	80063fe <__mdiff+0x26>
 80063fa:	42a2      	cmp	r2, r4
 80063fc:	d959      	bls.n	80064b2 <__mdiff+0xda>
 80063fe:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006402:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006406:	458c      	cmp	ip, r1
 8006408:	d0f7      	beq.n	80063fa <__mdiff+0x22>
 800640a:	d209      	bcs.n	8006420 <__mdiff+0x48>
 800640c:	4622      	mov	r2, r4
 800640e:	4633      	mov	r3, r6
 8006410:	463c      	mov	r4, r7
 8006412:	4646      	mov	r6, r8
 8006414:	4617      	mov	r7, r2
 8006416:	4698      	mov	r8, r3
 8006418:	2501      	movs	r5, #1
 800641a:	e001      	b.n	8006420 <__mdiff+0x48>
 800641c:	dbf6      	blt.n	800640c <__mdiff+0x34>
 800641e:	2500      	movs	r5, #0
 8006420:	6871      	ldr	r1, [r6, #4]
 8006422:	f7ff fda7 	bl	8005f74 <_Balloc>
 8006426:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800642a:	6936      	ldr	r6, [r6, #16]
 800642c:	60c5      	str	r5, [r0, #12]
 800642e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006432:	46bc      	mov	ip, r7
 8006434:	f100 0514 	add.w	r5, r0, #20
 8006438:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800643c:	2300      	movs	r3, #0
 800643e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006442:	f854 8b04 	ldr.w	r8, [r4], #4
 8006446:	b28a      	uxth	r2, r1
 8006448:	fa13 f388 	uxtah	r3, r3, r8
 800644c:	0c09      	lsrs	r1, r1, #16
 800644e:	1a9a      	subs	r2, r3, r2
 8006450:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006454:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006458:	b292      	uxth	r2, r2
 800645a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800645e:	45e6      	cmp	lr, ip
 8006460:	f845 2b04 	str.w	r2, [r5], #4
 8006464:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006468:	d8e9      	bhi.n	800643e <__mdiff+0x66>
 800646a:	42a7      	cmp	r7, r4
 800646c:	d917      	bls.n	800649e <__mdiff+0xc6>
 800646e:	46ae      	mov	lr, r5
 8006470:	46a4      	mov	ip, r4
 8006472:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006476:	fa13 f382 	uxtah	r3, r3, r2
 800647a:	1419      	asrs	r1, r3, #16
 800647c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006480:	b29b      	uxth	r3, r3
 8006482:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006486:	4567      	cmp	r7, ip
 8006488:	f84e 2b04 	str.w	r2, [lr], #4
 800648c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006490:	d8ef      	bhi.n	8006472 <__mdiff+0x9a>
 8006492:	43e4      	mvns	r4, r4
 8006494:	4427      	add	r7, r4
 8006496:	f027 0703 	bic.w	r7, r7, #3
 800649a:	3704      	adds	r7, #4
 800649c:	443d      	add	r5, r7
 800649e:	3d04      	subs	r5, #4
 80064a0:	b922      	cbnz	r2, 80064ac <__mdiff+0xd4>
 80064a2:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80064a6:	3e01      	subs	r6, #1
 80064a8:	2b00      	cmp	r3, #0
 80064aa:	d0fa      	beq.n	80064a2 <__mdiff+0xca>
 80064ac:	6106      	str	r6, [r0, #16]
 80064ae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80064b2:	2100      	movs	r1, #0
 80064b4:	f7ff fd5e 	bl	8005f74 <_Balloc>
 80064b8:	2201      	movs	r2, #1
 80064ba:	2300      	movs	r3, #0
 80064bc:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80064c0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080064c4 <__d2b>:
 80064c4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80064c8:	460f      	mov	r7, r1
 80064ca:	b083      	sub	sp, #12
 80064cc:	2101      	movs	r1, #1
 80064ce:	ec55 4b10 	vmov	r4, r5, d0
 80064d2:	4616      	mov	r6, r2
 80064d4:	f7ff fd4e 	bl	8005f74 <_Balloc>
 80064d8:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80064dc:	4681      	mov	r9, r0
 80064de:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80064e2:	f1b8 0f00 	cmp.w	r8, #0
 80064e6:	d001      	beq.n	80064ec <__d2b+0x28>
 80064e8:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80064ec:	2c00      	cmp	r4, #0
 80064ee:	9301      	str	r3, [sp, #4]
 80064f0:	d024      	beq.n	800653c <__d2b+0x78>
 80064f2:	a802      	add	r0, sp, #8
 80064f4:	f840 4d08 	str.w	r4, [r0, #-8]!
 80064f8:	f7ff fdcc 	bl	8006094 <__lo0bits>
 80064fc:	2800      	cmp	r0, #0
 80064fe:	d136      	bne.n	800656e <__d2b+0xaa>
 8006500:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006504:	f8c9 2014 	str.w	r2, [r9, #20]
 8006508:	2b00      	cmp	r3, #0
 800650a:	bf0c      	ite	eq
 800650c:	2101      	moveq	r1, #1
 800650e:	2102      	movne	r1, #2
 8006510:	f8c9 3018 	str.w	r3, [r9, #24]
 8006514:	f8c9 1010 	str.w	r1, [r9, #16]
 8006518:	f1b8 0f00 	cmp.w	r8, #0
 800651c:	d11b      	bne.n	8006556 <__d2b+0x92>
 800651e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006522:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006526:	6038      	str	r0, [r7, #0]
 8006528:	6918      	ldr	r0, [r3, #16]
 800652a:	f7ff fd93 	bl	8006054 <__hi0bits>
 800652e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006532:	6030      	str	r0, [r6, #0]
 8006534:	4648      	mov	r0, r9
 8006536:	b003      	add	sp, #12
 8006538:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800653c:	a801      	add	r0, sp, #4
 800653e:	f7ff fda9 	bl	8006094 <__lo0bits>
 8006542:	9b01      	ldr	r3, [sp, #4]
 8006544:	f8c9 3014 	str.w	r3, [r9, #20]
 8006548:	2101      	movs	r1, #1
 800654a:	3020      	adds	r0, #32
 800654c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006550:	f1b8 0f00 	cmp.w	r8, #0
 8006554:	d0e3      	beq.n	800651e <__d2b+0x5a>
 8006556:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800655a:	eb08 0300 	add.w	r3, r8, r0
 800655e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006562:	603b      	str	r3, [r7, #0]
 8006564:	6030      	str	r0, [r6, #0]
 8006566:	4648      	mov	r0, r9
 8006568:	b003      	add	sp, #12
 800656a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800656e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006572:	f1c0 0220 	rsb	r2, r0, #32
 8006576:	fa03 f202 	lsl.w	r2, r3, r2
 800657a:	430a      	orrs	r2, r1
 800657c:	40c3      	lsrs	r3, r0
 800657e:	9301      	str	r3, [sp, #4]
 8006580:	f8c9 2014 	str.w	r2, [r9, #20]
 8006584:	e7c0      	b.n	8006508 <__d2b+0x44>
 8006586:	bf00      	nop

08006588 <_realloc_r>:
 8006588:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800658c:	4692      	mov	sl, r2
 800658e:	b083      	sub	sp, #12
 8006590:	2900      	cmp	r1, #0
 8006592:	f000 80a1 	beq.w	80066d8 <_realloc_r+0x150>
 8006596:	460d      	mov	r5, r1
 8006598:	4680      	mov	r8, r0
 800659a:	f10a 040b 	add.w	r4, sl, #11
 800659e:	f7ff fcdd 	bl	8005f5c <__malloc_lock>
 80065a2:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80065a6:	2c16      	cmp	r4, #22
 80065a8:	f022 0603 	bic.w	r6, r2, #3
 80065ac:	f1a5 0708 	sub.w	r7, r5, #8
 80065b0:	d83e      	bhi.n	8006630 <_realloc_r+0xa8>
 80065b2:	2410      	movs	r4, #16
 80065b4:	4621      	mov	r1, r4
 80065b6:	45a2      	cmp	sl, r4
 80065b8:	d83f      	bhi.n	800663a <_realloc_r+0xb2>
 80065ba:	428e      	cmp	r6, r1
 80065bc:	eb07 0906 	add.w	r9, r7, r6
 80065c0:	da74      	bge.n	80066ac <_realloc_r+0x124>
 80065c2:	4bc7      	ldr	r3, [pc, #796]	; (80068e0 <_realloc_r+0x358>)
 80065c4:	6898      	ldr	r0, [r3, #8]
 80065c6:	4548      	cmp	r0, r9
 80065c8:	f000 80aa 	beq.w	8006720 <_realloc_r+0x198>
 80065cc:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80065d0:	f020 0301 	bic.w	r3, r0, #1
 80065d4:	444b      	add	r3, r9
 80065d6:	685b      	ldr	r3, [r3, #4]
 80065d8:	07db      	lsls	r3, r3, #31
 80065da:	f140 8083 	bpl.w	80066e4 <_realloc_r+0x15c>
 80065de:	07d2      	lsls	r2, r2, #31
 80065e0:	d534      	bpl.n	800664c <_realloc_r+0xc4>
 80065e2:	4651      	mov	r1, sl
 80065e4:	4640      	mov	r0, r8
 80065e6:	f7ff f9b1 	bl	800594c <_malloc_r>
 80065ea:	4682      	mov	sl, r0
 80065ec:	b1e0      	cbz	r0, 8006628 <_realloc_r+0xa0>
 80065ee:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80065f2:	f023 0301 	bic.w	r3, r3, #1
 80065f6:	443b      	add	r3, r7
 80065f8:	f1a0 0208 	sub.w	r2, r0, #8
 80065fc:	4293      	cmp	r3, r2
 80065fe:	f000 80f9 	beq.w	80067f4 <_realloc_r+0x26c>
 8006602:	1f32      	subs	r2, r6, #4
 8006604:	2a24      	cmp	r2, #36	; 0x24
 8006606:	f200 8107 	bhi.w	8006818 <_realloc_r+0x290>
 800660a:	2a13      	cmp	r2, #19
 800660c:	6829      	ldr	r1, [r5, #0]
 800660e:	f200 80e6 	bhi.w	80067de <_realloc_r+0x256>
 8006612:	4603      	mov	r3, r0
 8006614:	462a      	mov	r2, r5
 8006616:	6019      	str	r1, [r3, #0]
 8006618:	6851      	ldr	r1, [r2, #4]
 800661a:	6059      	str	r1, [r3, #4]
 800661c:	6892      	ldr	r2, [r2, #8]
 800661e:	609a      	str	r2, [r3, #8]
 8006620:	4629      	mov	r1, r5
 8006622:	4640      	mov	r0, r8
 8006624:	f7fe fe68 	bl	80052f8 <_free_r>
 8006628:	4640      	mov	r0, r8
 800662a:	f7ff fc9d 	bl	8005f68 <__malloc_unlock>
 800662e:	e04f      	b.n	80066d0 <_realloc_r+0x148>
 8006630:	f024 0407 	bic.w	r4, r4, #7
 8006634:	2c00      	cmp	r4, #0
 8006636:	4621      	mov	r1, r4
 8006638:	dabd      	bge.n	80065b6 <_realloc_r+0x2e>
 800663a:	f04f 0a00 	mov.w	sl, #0
 800663e:	230c      	movs	r3, #12
 8006640:	4650      	mov	r0, sl
 8006642:	f8c8 3000 	str.w	r3, [r8]
 8006646:	b003      	add	sp, #12
 8006648:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800664c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006650:	eba7 0b03 	sub.w	fp, r7, r3
 8006654:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006658:	f022 0203 	bic.w	r2, r2, #3
 800665c:	18b3      	adds	r3, r6, r2
 800665e:	428b      	cmp	r3, r1
 8006660:	dbbf      	blt.n	80065e2 <_realloc_r+0x5a>
 8006662:	46da      	mov	sl, fp
 8006664:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006668:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800666c:	1f32      	subs	r2, r6, #4
 800666e:	2a24      	cmp	r2, #36	; 0x24
 8006670:	60c1      	str	r1, [r0, #12]
 8006672:	eb0b 0903 	add.w	r9, fp, r3
 8006676:	6088      	str	r0, [r1, #8]
 8006678:	f200 80c6 	bhi.w	8006808 <_realloc_r+0x280>
 800667c:	2a13      	cmp	r2, #19
 800667e:	6829      	ldr	r1, [r5, #0]
 8006680:	f240 80c0 	bls.w	8006804 <_realloc_r+0x27c>
 8006684:	f8cb 1008 	str.w	r1, [fp, #8]
 8006688:	6869      	ldr	r1, [r5, #4]
 800668a:	f8cb 100c 	str.w	r1, [fp, #12]
 800668e:	2a1b      	cmp	r2, #27
 8006690:	68a9      	ldr	r1, [r5, #8]
 8006692:	f200 80d8 	bhi.w	8006846 <_realloc_r+0x2be>
 8006696:	f10b 0210 	add.w	r2, fp, #16
 800669a:	3508      	adds	r5, #8
 800669c:	6011      	str	r1, [r2, #0]
 800669e:	6869      	ldr	r1, [r5, #4]
 80066a0:	6051      	str	r1, [r2, #4]
 80066a2:	68a9      	ldr	r1, [r5, #8]
 80066a4:	6091      	str	r1, [r2, #8]
 80066a6:	461e      	mov	r6, r3
 80066a8:	465f      	mov	r7, fp
 80066aa:	4655      	mov	r5, sl
 80066ac:	687b      	ldr	r3, [r7, #4]
 80066ae:	1b32      	subs	r2, r6, r4
 80066b0:	2a0f      	cmp	r2, #15
 80066b2:	f003 0301 	and.w	r3, r3, #1
 80066b6:	d822      	bhi.n	80066fe <_realloc_r+0x176>
 80066b8:	4333      	orrs	r3, r6
 80066ba:	607b      	str	r3, [r7, #4]
 80066bc:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80066c0:	f043 0301 	orr.w	r3, r3, #1
 80066c4:	f8c9 3004 	str.w	r3, [r9, #4]
 80066c8:	4640      	mov	r0, r8
 80066ca:	f7ff fc4d 	bl	8005f68 <__malloc_unlock>
 80066ce:	46aa      	mov	sl, r5
 80066d0:	4650      	mov	r0, sl
 80066d2:	b003      	add	sp, #12
 80066d4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80066d8:	4611      	mov	r1, r2
 80066da:	b003      	add	sp, #12
 80066dc:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80066e0:	f7ff b934 	b.w	800594c <_malloc_r>
 80066e4:	f020 0003 	bic.w	r0, r0, #3
 80066e8:	1833      	adds	r3, r6, r0
 80066ea:	428b      	cmp	r3, r1
 80066ec:	db61      	blt.n	80067b2 <_realloc_r+0x22a>
 80066ee:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80066f2:	461e      	mov	r6, r3
 80066f4:	60ca      	str	r2, [r1, #12]
 80066f6:	eb07 0903 	add.w	r9, r7, r3
 80066fa:	6091      	str	r1, [r2, #8]
 80066fc:	e7d6      	b.n	80066ac <_realloc_r+0x124>
 80066fe:	1939      	adds	r1, r7, r4
 8006700:	4323      	orrs	r3, r4
 8006702:	f042 0201 	orr.w	r2, r2, #1
 8006706:	607b      	str	r3, [r7, #4]
 8006708:	604a      	str	r2, [r1, #4]
 800670a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800670e:	f043 0301 	orr.w	r3, r3, #1
 8006712:	3108      	adds	r1, #8
 8006714:	f8c9 3004 	str.w	r3, [r9, #4]
 8006718:	4640      	mov	r0, r8
 800671a:	f7fe fded 	bl	80052f8 <_free_r>
 800671e:	e7d3      	b.n	80066c8 <_realloc_r+0x140>
 8006720:	6840      	ldr	r0, [r0, #4]
 8006722:	f020 0903 	bic.w	r9, r0, #3
 8006726:	44b1      	add	r9, r6
 8006728:	f104 0010 	add.w	r0, r4, #16
 800672c:	4581      	cmp	r9, r0
 800672e:	da77      	bge.n	8006820 <_realloc_r+0x298>
 8006730:	07d2      	lsls	r2, r2, #31
 8006732:	f53f af56 	bmi.w	80065e2 <_realloc_r+0x5a>
 8006736:	f855 2c08 	ldr.w	r2, [r5, #-8]
 800673a:	eba7 0b02 	sub.w	fp, r7, r2
 800673e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006742:	f022 0203 	bic.w	r2, r2, #3
 8006746:	4491      	add	r9, r2
 8006748:	4548      	cmp	r0, r9
 800674a:	dc87      	bgt.n	800665c <_realloc_r+0xd4>
 800674c:	46da      	mov	sl, fp
 800674e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006752:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006756:	1f32      	subs	r2, r6, #4
 8006758:	2a24      	cmp	r2, #36	; 0x24
 800675a:	60c1      	str	r1, [r0, #12]
 800675c:	6088      	str	r0, [r1, #8]
 800675e:	f200 80a1 	bhi.w	80068a4 <_realloc_r+0x31c>
 8006762:	2a13      	cmp	r2, #19
 8006764:	6829      	ldr	r1, [r5, #0]
 8006766:	f240 809b 	bls.w	80068a0 <_realloc_r+0x318>
 800676a:	f8cb 1008 	str.w	r1, [fp, #8]
 800676e:	6869      	ldr	r1, [r5, #4]
 8006770:	f8cb 100c 	str.w	r1, [fp, #12]
 8006774:	2a1b      	cmp	r2, #27
 8006776:	68a9      	ldr	r1, [r5, #8]
 8006778:	f200 809b 	bhi.w	80068b2 <_realloc_r+0x32a>
 800677c:	f10b 0210 	add.w	r2, fp, #16
 8006780:	3508      	adds	r5, #8
 8006782:	6011      	str	r1, [r2, #0]
 8006784:	6869      	ldr	r1, [r5, #4]
 8006786:	6051      	str	r1, [r2, #4]
 8006788:	68a9      	ldr	r1, [r5, #8]
 800678a:	6091      	str	r1, [r2, #8]
 800678c:	eb0b 0104 	add.w	r1, fp, r4
 8006790:	eba9 0204 	sub.w	r2, r9, r4
 8006794:	f042 0201 	orr.w	r2, r2, #1
 8006798:	6099      	str	r1, [r3, #8]
 800679a:	604a      	str	r2, [r1, #4]
 800679c:	f8db 3004 	ldr.w	r3, [fp, #4]
 80067a0:	f003 0301 	and.w	r3, r3, #1
 80067a4:	431c      	orrs	r4, r3
 80067a6:	4640      	mov	r0, r8
 80067a8:	f8cb 4004 	str.w	r4, [fp, #4]
 80067ac:	f7ff fbdc 	bl	8005f68 <__malloc_unlock>
 80067b0:	e78e      	b.n	80066d0 <_realloc_r+0x148>
 80067b2:	07d3      	lsls	r3, r2, #31
 80067b4:	f53f af15 	bmi.w	80065e2 <_realloc_r+0x5a>
 80067b8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80067bc:	eba7 0b03 	sub.w	fp, r7, r3
 80067c0:	f8db 2004 	ldr.w	r2, [fp, #4]
 80067c4:	f022 0203 	bic.w	r2, r2, #3
 80067c8:	4410      	add	r0, r2
 80067ca:	1983      	adds	r3, r0, r6
 80067cc:	428b      	cmp	r3, r1
 80067ce:	f6ff af45 	blt.w	800665c <_realloc_r+0xd4>
 80067d2:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80067d6:	46da      	mov	sl, fp
 80067d8:	60ca      	str	r2, [r1, #12]
 80067da:	6091      	str	r1, [r2, #8]
 80067dc:	e742      	b.n	8006664 <_realloc_r+0xdc>
 80067de:	6001      	str	r1, [r0, #0]
 80067e0:	686b      	ldr	r3, [r5, #4]
 80067e2:	6043      	str	r3, [r0, #4]
 80067e4:	2a1b      	cmp	r2, #27
 80067e6:	d83a      	bhi.n	800685e <_realloc_r+0x2d6>
 80067e8:	f105 0208 	add.w	r2, r5, #8
 80067ec:	f100 0308 	add.w	r3, r0, #8
 80067f0:	68a9      	ldr	r1, [r5, #8]
 80067f2:	e710      	b.n	8006616 <_realloc_r+0x8e>
 80067f4:	f850 3c04 	ldr.w	r3, [r0, #-4]
 80067f8:	f023 0303 	bic.w	r3, r3, #3
 80067fc:	441e      	add	r6, r3
 80067fe:	eb07 0906 	add.w	r9, r7, r6
 8006802:	e753      	b.n	80066ac <_realloc_r+0x124>
 8006804:	4652      	mov	r2, sl
 8006806:	e749      	b.n	800669c <_realloc_r+0x114>
 8006808:	4629      	mov	r1, r5
 800680a:	4650      	mov	r0, sl
 800680c:	461e      	mov	r6, r3
 800680e:	465f      	mov	r7, fp
 8006810:	f7ff fb40 	bl	8005e94 <memmove>
 8006814:	4655      	mov	r5, sl
 8006816:	e749      	b.n	80066ac <_realloc_r+0x124>
 8006818:	4629      	mov	r1, r5
 800681a:	f7ff fb3b 	bl	8005e94 <memmove>
 800681e:	e6ff      	b.n	8006620 <_realloc_r+0x98>
 8006820:	4427      	add	r7, r4
 8006822:	eba9 0904 	sub.w	r9, r9, r4
 8006826:	f049 0201 	orr.w	r2, r9, #1
 800682a:	609f      	str	r7, [r3, #8]
 800682c:	607a      	str	r2, [r7, #4]
 800682e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006832:	f003 0301 	and.w	r3, r3, #1
 8006836:	431c      	orrs	r4, r3
 8006838:	4640      	mov	r0, r8
 800683a:	f845 4c04 	str.w	r4, [r5, #-4]
 800683e:	f7ff fb93 	bl	8005f68 <__malloc_unlock>
 8006842:	46aa      	mov	sl, r5
 8006844:	e744      	b.n	80066d0 <_realloc_r+0x148>
 8006846:	f8cb 1010 	str.w	r1, [fp, #16]
 800684a:	68e9      	ldr	r1, [r5, #12]
 800684c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006850:	2a24      	cmp	r2, #36	; 0x24
 8006852:	d010      	beq.n	8006876 <_realloc_r+0x2ee>
 8006854:	6929      	ldr	r1, [r5, #16]
 8006856:	f10b 0218 	add.w	r2, fp, #24
 800685a:	3510      	adds	r5, #16
 800685c:	e71e      	b.n	800669c <_realloc_r+0x114>
 800685e:	68ab      	ldr	r3, [r5, #8]
 8006860:	6083      	str	r3, [r0, #8]
 8006862:	68eb      	ldr	r3, [r5, #12]
 8006864:	60c3      	str	r3, [r0, #12]
 8006866:	2a24      	cmp	r2, #36	; 0x24
 8006868:	d010      	beq.n	800688c <_realloc_r+0x304>
 800686a:	f105 0210 	add.w	r2, r5, #16
 800686e:	f100 0310 	add.w	r3, r0, #16
 8006872:	6929      	ldr	r1, [r5, #16]
 8006874:	e6cf      	b.n	8006616 <_realloc_r+0x8e>
 8006876:	692a      	ldr	r2, [r5, #16]
 8006878:	f8cb 2018 	str.w	r2, [fp, #24]
 800687c:	696a      	ldr	r2, [r5, #20]
 800687e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006882:	69a9      	ldr	r1, [r5, #24]
 8006884:	f10b 0220 	add.w	r2, fp, #32
 8006888:	3518      	adds	r5, #24
 800688a:	e707      	b.n	800669c <_realloc_r+0x114>
 800688c:	692b      	ldr	r3, [r5, #16]
 800688e:	6103      	str	r3, [r0, #16]
 8006890:	696b      	ldr	r3, [r5, #20]
 8006892:	6143      	str	r3, [r0, #20]
 8006894:	69a9      	ldr	r1, [r5, #24]
 8006896:	f105 0218 	add.w	r2, r5, #24
 800689a:	f100 0318 	add.w	r3, r0, #24
 800689e:	e6ba      	b.n	8006616 <_realloc_r+0x8e>
 80068a0:	4652      	mov	r2, sl
 80068a2:	e76e      	b.n	8006782 <_realloc_r+0x1fa>
 80068a4:	4629      	mov	r1, r5
 80068a6:	4650      	mov	r0, sl
 80068a8:	9301      	str	r3, [sp, #4]
 80068aa:	f7ff faf3 	bl	8005e94 <memmove>
 80068ae:	9b01      	ldr	r3, [sp, #4]
 80068b0:	e76c      	b.n	800678c <_realloc_r+0x204>
 80068b2:	f8cb 1010 	str.w	r1, [fp, #16]
 80068b6:	68e9      	ldr	r1, [r5, #12]
 80068b8:	f8cb 1014 	str.w	r1, [fp, #20]
 80068bc:	2a24      	cmp	r2, #36	; 0x24
 80068be:	d004      	beq.n	80068ca <_realloc_r+0x342>
 80068c0:	6929      	ldr	r1, [r5, #16]
 80068c2:	f10b 0218 	add.w	r2, fp, #24
 80068c6:	3510      	adds	r5, #16
 80068c8:	e75b      	b.n	8006782 <_realloc_r+0x1fa>
 80068ca:	692a      	ldr	r2, [r5, #16]
 80068cc:	f8cb 2018 	str.w	r2, [fp, #24]
 80068d0:	696a      	ldr	r2, [r5, #20]
 80068d2:	f8cb 201c 	str.w	r2, [fp, #28]
 80068d6:	69a9      	ldr	r1, [r5, #24]
 80068d8:	f10b 0220 	add.w	r2, fp, #32
 80068dc:	3518      	adds	r5, #24
 80068de:	e750      	b.n	8006782 <_realloc_r+0x1fa>
 80068e0:	200004e4 	.word	0x200004e4

080068e4 <frexp>:
 80068e4:	ec53 2b10 	vmov	r2, r3, d0
 80068e8:	b570      	push	{r4, r5, r6, lr}
 80068ea:	4e16      	ldr	r6, [pc, #88]	; (8006944 <frexp+0x60>)
 80068ec:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 80068f0:	2500      	movs	r5, #0
 80068f2:	42b1      	cmp	r1, r6
 80068f4:	4604      	mov	r4, r0
 80068f6:	6005      	str	r5, [r0, #0]
 80068f8:	dc21      	bgt.n	800693e <frexp+0x5a>
 80068fa:	ee10 6a10 	vmov	r6, s0
 80068fe:	430e      	orrs	r6, r1
 8006900:	d01d      	beq.n	800693e <frexp+0x5a>
 8006902:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006906:	4618      	mov	r0, r3
 8006908:	da0c      	bge.n	8006924 <frexp+0x40>
 800690a:	4619      	mov	r1, r3
 800690c:	2200      	movs	r2, #0
 800690e:	ee10 0a10 	vmov	r0, s0
 8006912:	4b0d      	ldr	r3, [pc, #52]	; (8006948 <frexp+0x64>)
 8006914:	f7fa f910 	bl	8000b38 <__aeabi_dmul>
 8006918:	f06f 0535 	mvn.w	r5, #53	; 0x35
 800691c:	4602      	mov	r2, r0
 800691e:	4608      	mov	r0, r1
 8006920:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006924:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006928:	1509      	asrs	r1, r1, #20
 800692a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 800692e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006932:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006936:	4429      	add	r1, r5
 8006938:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800693c:	6021      	str	r1, [r4, #0]
 800693e:	ec43 2b10 	vmov	d0, r2, r3
 8006942:	bd70      	pop	{r4, r5, r6, pc}
 8006944:	7fefffff 	.word	0x7fefffff
 8006948:	43500000 	.word	0x43500000

0800694c <_sbrk_r>:
 800694c:	b538      	push	{r3, r4, r5, lr}
 800694e:	4c07      	ldr	r4, [pc, #28]	; (800696c <_sbrk_r+0x20>)
 8006950:	2300      	movs	r3, #0
 8006952:	4605      	mov	r5, r0
 8006954:	4608      	mov	r0, r1
 8006956:	6023      	str	r3, [r4, #0]
 8006958:	f7fb fc35 	bl	80021c6 <_sbrk>
 800695c:	1c43      	adds	r3, r0, #1
 800695e:	d000      	beq.n	8006962 <_sbrk_r+0x16>
 8006960:	bd38      	pop	{r3, r4, r5, pc}
 8006962:	6823      	ldr	r3, [r4, #0]
 8006964:	2b00      	cmp	r3, #0
 8006966:	d0fb      	beq.n	8006960 <_sbrk_r+0x14>
 8006968:	602b      	str	r3, [r5, #0]
 800696a:	bd38      	pop	{r3, r4, r5, pc}
 800696c:	20000ba4 	.word	0x20000ba4

08006970 <__sread>:
 8006970:	b510      	push	{r4, lr}
 8006972:	460c      	mov	r4, r1
 8006974:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006978:	f000 fabc 	bl	8006ef4 <_read_r>
 800697c:	2800      	cmp	r0, #0
 800697e:	db03      	blt.n	8006988 <__sread+0x18>
 8006980:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006982:	4403      	add	r3, r0
 8006984:	6523      	str	r3, [r4, #80]	; 0x50
 8006986:	bd10      	pop	{r4, pc}
 8006988:	89a3      	ldrh	r3, [r4, #12]
 800698a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 800698e:	81a3      	strh	r3, [r4, #12]
 8006990:	bd10      	pop	{r4, pc}
 8006992:	bf00      	nop

08006994 <__swrite>:
 8006994:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006998:	4616      	mov	r6, r2
 800699a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 800699e:	461f      	mov	r7, r3
 80069a0:	05d3      	lsls	r3, r2, #23
 80069a2:	460c      	mov	r4, r1
 80069a4:	4605      	mov	r5, r0
 80069a6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069aa:	d507      	bpl.n	80069bc <__swrite+0x28>
 80069ac:	2200      	movs	r2, #0
 80069ae:	2302      	movs	r3, #2
 80069b0:	f000 fa74 	bl	8006e9c <_lseek_r>
 80069b4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80069b8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80069bc:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 80069c0:	81a2      	strh	r2, [r4, #12]
 80069c2:	463b      	mov	r3, r7
 80069c4:	4632      	mov	r2, r6
 80069c6:	4628      	mov	r0, r5
 80069c8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80069cc:	f000 b88c 	b.w	8006ae8 <_write_r>

080069d0 <__sseek>:
 80069d0:	b510      	push	{r4, lr}
 80069d2:	460c      	mov	r4, r1
 80069d4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069d8:	f000 fa60 	bl	8006e9c <_lseek_r>
 80069dc:	89a3      	ldrh	r3, [r4, #12]
 80069de:	1c42      	adds	r2, r0, #1
 80069e0:	bf0e      	itee	eq
 80069e2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80069e6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 80069ea:	6520      	strne	r0, [r4, #80]	; 0x50
 80069ec:	81a3      	strh	r3, [r4, #12]
 80069ee:	bd10      	pop	{r4, pc}

080069f0 <__sclose>:
 80069f0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069f4:	f000 b922 	b.w	8006c3c <_close_r>

080069f8 <strncpy>:
 80069f8:	ea40 0301 	orr.w	r3, r0, r1
 80069fc:	079b      	lsls	r3, r3, #30
 80069fe:	b470      	push	{r4, r5, r6}
 8006a00:	d12a      	bne.n	8006a58 <strncpy+0x60>
 8006a02:	2a03      	cmp	r2, #3
 8006a04:	d928      	bls.n	8006a58 <strncpy+0x60>
 8006a06:	460c      	mov	r4, r1
 8006a08:	4603      	mov	r3, r0
 8006a0a:	4621      	mov	r1, r4
 8006a0c:	f854 6b04 	ldr.w	r6, [r4], #4
 8006a10:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006a14:	ea25 0506 	bic.w	r5, r5, r6
 8006a18:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006a1c:	d106      	bne.n	8006a2c <strncpy+0x34>
 8006a1e:	3a04      	subs	r2, #4
 8006a20:	2a03      	cmp	r2, #3
 8006a22:	f843 6b04 	str.w	r6, [r3], #4
 8006a26:	4621      	mov	r1, r4
 8006a28:	d8ef      	bhi.n	8006a0a <strncpy+0x12>
 8006a2a:	b19a      	cbz	r2, 8006a54 <strncpy+0x5c>
 8006a2c:	780c      	ldrb	r4, [r1, #0]
 8006a2e:	701c      	strb	r4, [r3, #0]
 8006a30:	3a01      	subs	r2, #1
 8006a32:	3301      	adds	r3, #1
 8006a34:	b13c      	cbz	r4, 8006a46 <strncpy+0x4e>
 8006a36:	b16a      	cbz	r2, 8006a54 <strncpy+0x5c>
 8006a38:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006a3c:	f803 4b01 	strb.w	r4, [r3], #1
 8006a40:	3a01      	subs	r2, #1
 8006a42:	2c00      	cmp	r4, #0
 8006a44:	d1f7      	bne.n	8006a36 <strncpy+0x3e>
 8006a46:	b12a      	cbz	r2, 8006a54 <strncpy+0x5c>
 8006a48:	441a      	add	r2, r3
 8006a4a:	2100      	movs	r1, #0
 8006a4c:	f803 1b01 	strb.w	r1, [r3], #1
 8006a50:	4293      	cmp	r3, r2
 8006a52:	d1fb      	bne.n	8006a4c <strncpy+0x54>
 8006a54:	bc70      	pop	{r4, r5, r6}
 8006a56:	4770      	bx	lr
 8006a58:	4603      	mov	r3, r0
 8006a5a:	e7e6      	b.n	8006a2a <strncpy+0x32>

08006a5c <__sprint_r.part.0>:
 8006a5c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006a60:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006a62:	049c      	lsls	r4, r3, #18
 8006a64:	4692      	mov	sl, r2
 8006a66:	d52d      	bpl.n	8006ac4 <__sprint_r.part.0+0x68>
 8006a68:	6893      	ldr	r3, [r2, #8]
 8006a6a:	6812      	ldr	r2, [r2, #0]
 8006a6c:	b343      	cbz	r3, 8006ac0 <__sprint_r.part.0+0x64>
 8006a6e:	460e      	mov	r6, r1
 8006a70:	4607      	mov	r7, r0
 8006a72:	f102 0908 	add.w	r9, r2, #8
 8006a76:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006a7a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006a7e:	d015      	beq.n	8006aac <__sprint_r.part.0+0x50>
 8006a80:	3d04      	subs	r5, #4
 8006a82:	2400      	movs	r4, #0
 8006a84:	e001      	b.n	8006a8a <__sprint_r.part.0+0x2e>
 8006a86:	45a0      	cmp	r8, r4
 8006a88:	d00e      	beq.n	8006aa8 <__sprint_r.part.0+0x4c>
 8006a8a:	4632      	mov	r2, r6
 8006a8c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006a90:	4638      	mov	r0, r7
 8006a92:	f000 f99d 	bl	8006dd0 <_fputwc_r>
 8006a96:	1c43      	adds	r3, r0, #1
 8006a98:	f104 0401 	add.w	r4, r4, #1
 8006a9c:	d1f3      	bne.n	8006a86 <__sprint_r.part.0+0x2a>
 8006a9e:	2300      	movs	r3, #0
 8006aa0:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006aa4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006aa8:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006aac:	f02b 0b03 	bic.w	fp, fp, #3
 8006ab0:	eba3 030b 	sub.w	r3, r3, fp
 8006ab4:	f8ca 3008 	str.w	r3, [sl, #8]
 8006ab8:	f109 0908 	add.w	r9, r9, #8
 8006abc:	2b00      	cmp	r3, #0
 8006abe:	d1da      	bne.n	8006a76 <__sprint_r.part.0+0x1a>
 8006ac0:	2000      	movs	r0, #0
 8006ac2:	e7ec      	b.n	8006a9e <__sprint_r.part.0+0x42>
 8006ac4:	f7fe fd0c 	bl	80054e0 <__sfvwrite_r>
 8006ac8:	2300      	movs	r3, #0
 8006aca:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006ace:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ad2:	bf00      	nop

08006ad4 <__sprint_r>:
 8006ad4:	6893      	ldr	r3, [r2, #8]
 8006ad6:	b10b      	cbz	r3, 8006adc <__sprint_r+0x8>
 8006ad8:	f7ff bfc0 	b.w	8006a5c <__sprint_r.part.0>
 8006adc:	b410      	push	{r4}
 8006ade:	4618      	mov	r0, r3
 8006ae0:	6053      	str	r3, [r2, #4]
 8006ae2:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006ae6:	4770      	bx	lr

08006ae8 <_write_r>:
 8006ae8:	b570      	push	{r4, r5, r6, lr}
 8006aea:	460d      	mov	r5, r1
 8006aec:	4c08      	ldr	r4, [pc, #32]	; (8006b10 <_write_r+0x28>)
 8006aee:	4611      	mov	r1, r2
 8006af0:	4606      	mov	r6, r0
 8006af2:	461a      	mov	r2, r3
 8006af4:	4628      	mov	r0, r5
 8006af6:	2300      	movs	r3, #0
 8006af8:	6023      	str	r3, [r4, #0]
 8006afa:	f7fb fb51 	bl	80021a0 <_write>
 8006afe:	1c43      	adds	r3, r0, #1
 8006b00:	d000      	beq.n	8006b04 <_write_r+0x1c>
 8006b02:	bd70      	pop	{r4, r5, r6, pc}
 8006b04:	6823      	ldr	r3, [r4, #0]
 8006b06:	2b00      	cmp	r3, #0
 8006b08:	d0fb      	beq.n	8006b02 <_write_r+0x1a>
 8006b0a:	6033      	str	r3, [r6, #0]
 8006b0c:	bd70      	pop	{r4, r5, r6, pc}
 8006b0e:	bf00      	nop
 8006b10:	20000ba4 	.word	0x20000ba4

08006b14 <__register_exitproc>:
 8006b14:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006b18:	4d2b      	ldr	r5, [pc, #172]	; (8006bc8 <__register_exitproc+0xb4>)
 8006b1a:	4606      	mov	r6, r0
 8006b1c:	6828      	ldr	r0, [r5, #0]
 8006b1e:	4698      	mov	r8, r3
 8006b20:	460f      	mov	r7, r1
 8006b22:	4691      	mov	r9, r2
 8006b24:	f7fe fe96 	bl	8005854 <__retarget_lock_acquire_recursive>
 8006b28:	4b28      	ldr	r3, [pc, #160]	; (8006bcc <__register_exitproc+0xb8>)
 8006b2a:	681c      	ldr	r4, [r3, #0]
 8006b2c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006b30:	2b00      	cmp	r3, #0
 8006b32:	d03d      	beq.n	8006bb0 <__register_exitproc+0x9c>
 8006b34:	685a      	ldr	r2, [r3, #4]
 8006b36:	2a1f      	cmp	r2, #31
 8006b38:	dc0d      	bgt.n	8006b56 <__register_exitproc+0x42>
 8006b3a:	f102 0c01 	add.w	ip, r2, #1
 8006b3e:	bb16      	cbnz	r6, 8006b86 <__register_exitproc+0x72>
 8006b40:	3202      	adds	r2, #2
 8006b42:	f8c3 c004 	str.w	ip, [r3, #4]
 8006b46:	6828      	ldr	r0, [r5, #0]
 8006b48:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006b4c:	f7fe fe84 	bl	8005858 <__retarget_lock_release_recursive>
 8006b50:	2000      	movs	r0, #0
 8006b52:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006b56:	4b1e      	ldr	r3, [pc, #120]	; (8006bd0 <__register_exitproc+0xbc>)
 8006b58:	b37b      	cbz	r3, 8006bba <__register_exitproc+0xa6>
 8006b5a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006b5e:	f3af 8000 	nop.w
 8006b62:	4603      	mov	r3, r0
 8006b64:	b348      	cbz	r0, 8006bba <__register_exitproc+0xa6>
 8006b66:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006b6a:	2100      	movs	r1, #0
 8006b6c:	e9c0 2100 	strd	r2, r1, [r0]
 8006b70:	f04f 0c01 	mov.w	ip, #1
 8006b74:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006b78:	460a      	mov	r2, r1
 8006b7a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006b7e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006b82:	2e00      	cmp	r6, #0
 8006b84:	d0dc      	beq.n	8006b40 <__register_exitproc+0x2c>
 8006b86:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006b8a:	2401      	movs	r4, #1
 8006b8c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006b90:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006b94:	4094      	lsls	r4, r2
 8006b96:	4320      	orrs	r0, r4
 8006b98:	2e02      	cmp	r6, #2
 8006b9a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006b9e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006ba2:	d1cd      	bne.n	8006b40 <__register_exitproc+0x2c>
 8006ba4:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006ba8:	430c      	orrs	r4, r1
 8006baa:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006bae:	e7c7      	b.n	8006b40 <__register_exitproc+0x2c>
 8006bb0:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006bb4:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006bb8:	e7bc      	b.n	8006b34 <__register_exitproc+0x20>
 8006bba:	6828      	ldr	r0, [r5, #0]
 8006bbc:	f7fe fe4c 	bl	8005858 <__retarget_lock_release_recursive>
 8006bc0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006bc4:	e7c5      	b.n	8006b52 <__register_exitproc+0x3e>
 8006bc6:	bf00      	nop
 8006bc8:	200004e0 	.word	0x200004e0
 8006bcc:	0800716c 	.word	0x0800716c
 8006bd0:	00000000 	.word	0x00000000

08006bd4 <_calloc_r>:
 8006bd4:	b510      	push	{r4, lr}
 8006bd6:	fb02 f101 	mul.w	r1, r2, r1
 8006bda:	f7fe feb7 	bl	800594c <_malloc_r>
 8006bde:	4604      	mov	r4, r0
 8006be0:	b1d8      	cbz	r0, 8006c1a <_calloc_r+0x46>
 8006be2:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006be6:	f022 0203 	bic.w	r2, r2, #3
 8006bea:	3a04      	subs	r2, #4
 8006bec:	2a24      	cmp	r2, #36	; 0x24
 8006bee:	d81d      	bhi.n	8006c2c <_calloc_r+0x58>
 8006bf0:	2a13      	cmp	r2, #19
 8006bf2:	d914      	bls.n	8006c1e <_calloc_r+0x4a>
 8006bf4:	2300      	movs	r3, #0
 8006bf6:	2a1b      	cmp	r2, #27
 8006bf8:	e9c0 3300 	strd	r3, r3, [r0]
 8006bfc:	d91b      	bls.n	8006c36 <_calloc_r+0x62>
 8006bfe:	2a24      	cmp	r2, #36	; 0x24
 8006c00:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006c04:	bf0a      	itet	eq
 8006c06:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006c0a:	f100 0210 	addne.w	r2, r0, #16
 8006c0e:	f100 0218 	addeq.w	r2, r0, #24
 8006c12:	2300      	movs	r3, #0
 8006c14:	e9c2 3300 	strd	r3, r3, [r2]
 8006c18:	6093      	str	r3, [r2, #8]
 8006c1a:	4620      	mov	r0, r4
 8006c1c:	bd10      	pop	{r4, pc}
 8006c1e:	4602      	mov	r2, r0
 8006c20:	2300      	movs	r3, #0
 8006c22:	e9c2 3300 	strd	r3, r3, [r2]
 8006c26:	6093      	str	r3, [r2, #8]
 8006c28:	4620      	mov	r0, r4
 8006c2a:	bd10      	pop	{r4, pc}
 8006c2c:	2100      	movs	r1, #0
 8006c2e:	f7fb fb6f 	bl	8002310 <memset>
 8006c32:	4620      	mov	r0, r4
 8006c34:	bd10      	pop	{r4, pc}
 8006c36:	f100 0208 	add.w	r2, r0, #8
 8006c3a:	e7f1      	b.n	8006c20 <_calloc_r+0x4c>

08006c3c <_close_r>:
 8006c3c:	b538      	push	{r3, r4, r5, lr}
 8006c3e:	4c07      	ldr	r4, [pc, #28]	; (8006c5c <_close_r+0x20>)
 8006c40:	2300      	movs	r3, #0
 8006c42:	4605      	mov	r5, r0
 8006c44:	4608      	mov	r0, r1
 8006c46:	6023      	str	r3, [r4, #0]
 8006c48:	f7fb fad9 	bl	80021fe <_close>
 8006c4c:	1c43      	adds	r3, r0, #1
 8006c4e:	d000      	beq.n	8006c52 <_close_r+0x16>
 8006c50:	bd38      	pop	{r3, r4, r5, pc}
 8006c52:	6823      	ldr	r3, [r4, #0]
 8006c54:	2b00      	cmp	r3, #0
 8006c56:	d0fb      	beq.n	8006c50 <_close_r+0x14>
 8006c58:	602b      	str	r3, [r5, #0]
 8006c5a:	bd38      	pop	{r3, r4, r5, pc}
 8006c5c:	20000ba4 	.word	0x20000ba4

08006c60 <_fclose_r>:
 8006c60:	b570      	push	{r4, r5, r6, lr}
 8006c62:	2900      	cmp	r1, #0
 8006c64:	d048      	beq.n	8006cf8 <_fclose_r+0x98>
 8006c66:	4605      	mov	r5, r0
 8006c68:	460c      	mov	r4, r1
 8006c6a:	b110      	cbz	r0, 8006c72 <_fclose_r+0x12>
 8006c6c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006c6e:	2b00      	cmp	r3, #0
 8006c70:	d048      	beq.n	8006d04 <_fclose_r+0xa4>
 8006c72:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c74:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c78:	07d0      	lsls	r0, r2, #31
 8006c7a:	d440      	bmi.n	8006cfe <_fclose_r+0x9e>
 8006c7c:	0599      	lsls	r1, r3, #22
 8006c7e:	d530      	bpl.n	8006ce2 <_fclose_r+0x82>
 8006c80:	4621      	mov	r1, r4
 8006c82:	4628      	mov	r0, r5
 8006c84:	f7fe f990 	bl	8004fa8 <__sflush_r>
 8006c88:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006c8a:	4606      	mov	r6, r0
 8006c8c:	b133      	cbz	r3, 8006c9c <_fclose_r+0x3c>
 8006c8e:	69e1      	ldr	r1, [r4, #28]
 8006c90:	4628      	mov	r0, r5
 8006c92:	4798      	blx	r3
 8006c94:	2800      	cmp	r0, #0
 8006c96:	bfb8      	it	lt
 8006c98:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006c9c:	89a3      	ldrh	r3, [r4, #12]
 8006c9e:	061a      	lsls	r2, r3, #24
 8006ca0:	d43c      	bmi.n	8006d1c <_fclose_r+0xbc>
 8006ca2:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006ca4:	b141      	cbz	r1, 8006cb8 <_fclose_r+0x58>
 8006ca6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006caa:	4299      	cmp	r1, r3
 8006cac:	d002      	beq.n	8006cb4 <_fclose_r+0x54>
 8006cae:	4628      	mov	r0, r5
 8006cb0:	f7fe fb22 	bl	80052f8 <_free_r>
 8006cb4:	2300      	movs	r3, #0
 8006cb6:	6323      	str	r3, [r4, #48]	; 0x30
 8006cb8:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006cba:	b121      	cbz	r1, 8006cc6 <_fclose_r+0x66>
 8006cbc:	4628      	mov	r0, r5
 8006cbe:	f7fe fb1b 	bl	80052f8 <_free_r>
 8006cc2:	2300      	movs	r3, #0
 8006cc4:	6463      	str	r3, [r4, #68]	; 0x44
 8006cc6:	f7fe faa1 	bl	800520c <__sfp_lock_acquire>
 8006cca:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006ccc:	2200      	movs	r2, #0
 8006cce:	07db      	lsls	r3, r3, #31
 8006cd0:	81a2      	strh	r2, [r4, #12]
 8006cd2:	d51f      	bpl.n	8006d14 <_fclose_r+0xb4>
 8006cd4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cd6:	f7fe fdbb 	bl	8005850 <__retarget_lock_close_recursive>
 8006cda:	f7fe fa9d 	bl	8005218 <__sfp_lock_release>
 8006cde:	4630      	mov	r0, r6
 8006ce0:	bd70      	pop	{r4, r5, r6, pc}
 8006ce2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ce4:	f7fe fdb6 	bl	8005854 <__retarget_lock_acquire_recursive>
 8006ce8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006cec:	2b00      	cmp	r3, #0
 8006cee:	d1c7      	bne.n	8006c80 <_fclose_r+0x20>
 8006cf0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006cf2:	f016 0601 	ands.w	r6, r6, #1
 8006cf6:	d016      	beq.n	8006d26 <_fclose_r+0xc6>
 8006cf8:	2600      	movs	r6, #0
 8006cfa:	4630      	mov	r0, r6
 8006cfc:	bd70      	pop	{r4, r5, r6, pc}
 8006cfe:	2b00      	cmp	r3, #0
 8006d00:	d0fa      	beq.n	8006cf8 <_fclose_r+0x98>
 8006d02:	e7bd      	b.n	8006c80 <_fclose_r+0x20>
 8006d04:	f7fe fa56 	bl	80051b4 <__sinit>
 8006d08:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006d0a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d0e:	07d0      	lsls	r0, r2, #31
 8006d10:	d4f5      	bmi.n	8006cfe <_fclose_r+0x9e>
 8006d12:	e7b3      	b.n	8006c7c <_fclose_r+0x1c>
 8006d14:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d16:	f7fe fd9f 	bl	8005858 <__retarget_lock_release_recursive>
 8006d1a:	e7db      	b.n	8006cd4 <_fclose_r+0x74>
 8006d1c:	6921      	ldr	r1, [r4, #16]
 8006d1e:	4628      	mov	r0, r5
 8006d20:	f7fe faea 	bl	80052f8 <_free_r>
 8006d24:	e7bd      	b.n	8006ca2 <_fclose_r+0x42>
 8006d26:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d28:	f7fe fd96 	bl	8005858 <__retarget_lock_release_recursive>
 8006d2c:	4630      	mov	r0, r6
 8006d2e:	bd70      	pop	{r4, r5, r6, pc}

08006d30 <__fputwc>:
 8006d30:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006d34:	b082      	sub	sp, #8
 8006d36:	4681      	mov	r9, r0
 8006d38:	4688      	mov	r8, r1
 8006d3a:	4614      	mov	r4, r2
 8006d3c:	f000 f8a0 	bl	8006e80 <__locale_mb_cur_max>
 8006d40:	2801      	cmp	r0, #1
 8006d42:	d103      	bne.n	8006d4c <__fputwc+0x1c>
 8006d44:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006d48:	2bfe      	cmp	r3, #254	; 0xfe
 8006d4a:	d933      	bls.n	8006db4 <__fputwc+0x84>
 8006d4c:	4642      	mov	r2, r8
 8006d4e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006d52:	a901      	add	r1, sp, #4
 8006d54:	4648      	mov	r0, r9
 8006d56:	f000 f93b 	bl	8006fd0 <_wcrtomb_r>
 8006d5a:	1c42      	adds	r2, r0, #1
 8006d5c:	4606      	mov	r6, r0
 8006d5e:	d02f      	beq.n	8006dc0 <__fputwc+0x90>
 8006d60:	b320      	cbz	r0, 8006dac <__fputwc+0x7c>
 8006d62:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006d66:	2500      	movs	r5, #0
 8006d68:	f10d 0a04 	add.w	sl, sp, #4
 8006d6c:	e009      	b.n	8006d82 <__fputwc+0x52>
 8006d6e:	6823      	ldr	r3, [r4, #0]
 8006d70:	1c5a      	adds	r2, r3, #1
 8006d72:	6022      	str	r2, [r4, #0]
 8006d74:	f883 c000 	strb.w	ip, [r3]
 8006d78:	3501      	adds	r5, #1
 8006d7a:	42b5      	cmp	r5, r6
 8006d7c:	d216      	bcs.n	8006dac <__fputwc+0x7c>
 8006d7e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006d82:	68a3      	ldr	r3, [r4, #8]
 8006d84:	3b01      	subs	r3, #1
 8006d86:	2b00      	cmp	r3, #0
 8006d88:	60a3      	str	r3, [r4, #8]
 8006d8a:	daf0      	bge.n	8006d6e <__fputwc+0x3e>
 8006d8c:	69a7      	ldr	r7, [r4, #24]
 8006d8e:	42bb      	cmp	r3, r7
 8006d90:	4661      	mov	r1, ip
 8006d92:	4622      	mov	r2, r4
 8006d94:	4648      	mov	r0, r9
 8006d96:	db02      	blt.n	8006d9e <__fputwc+0x6e>
 8006d98:	f1bc 0f0a 	cmp.w	ip, #10
 8006d9c:	d1e7      	bne.n	8006d6e <__fputwc+0x3e>
 8006d9e:	f000 f8bf 	bl	8006f20 <__swbuf_r>
 8006da2:	1c43      	adds	r3, r0, #1
 8006da4:	d1e8      	bne.n	8006d78 <__fputwc+0x48>
 8006da6:	b002      	add	sp, #8
 8006da8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006dac:	4640      	mov	r0, r8
 8006dae:	b002      	add	sp, #8
 8006db0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006db4:	fa5f fc88 	uxtb.w	ip, r8
 8006db8:	4606      	mov	r6, r0
 8006dba:	f88d c004 	strb.w	ip, [sp, #4]
 8006dbe:	e7d2      	b.n	8006d66 <__fputwc+0x36>
 8006dc0:	89a3      	ldrh	r3, [r4, #12]
 8006dc2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006dc6:	81a3      	strh	r3, [r4, #12]
 8006dc8:	b002      	add	sp, #8
 8006dca:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006dce:	bf00      	nop

08006dd0 <_fputwc_r>:
 8006dd0:	b530      	push	{r4, r5, lr}
 8006dd2:	4605      	mov	r5, r0
 8006dd4:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006dd6:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006dda:	07c0      	lsls	r0, r0, #31
 8006ddc:	4614      	mov	r4, r2
 8006dde:	b083      	sub	sp, #12
 8006de0:	b29a      	uxth	r2, r3
 8006de2:	d401      	bmi.n	8006de8 <_fputwc_r+0x18>
 8006de4:	0590      	lsls	r0, r2, #22
 8006de6:	d51c      	bpl.n	8006e22 <_fputwc_r+0x52>
 8006de8:	0490      	lsls	r0, r2, #18
 8006dea:	d406      	bmi.n	8006dfa <_fputwc_r+0x2a>
 8006dec:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006dee:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006df2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006df6:	81a3      	strh	r3, [r4, #12]
 8006df8:	6662      	str	r2, [r4, #100]	; 0x64
 8006dfa:	4628      	mov	r0, r5
 8006dfc:	4622      	mov	r2, r4
 8006dfe:	f7ff ff97 	bl	8006d30 <__fputwc>
 8006e02:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006e04:	07da      	lsls	r2, r3, #31
 8006e06:	4605      	mov	r5, r0
 8006e08:	d402      	bmi.n	8006e10 <_fputwc_r+0x40>
 8006e0a:	89a3      	ldrh	r3, [r4, #12]
 8006e0c:	059b      	lsls	r3, r3, #22
 8006e0e:	d502      	bpl.n	8006e16 <_fputwc_r+0x46>
 8006e10:	4628      	mov	r0, r5
 8006e12:	b003      	add	sp, #12
 8006e14:	bd30      	pop	{r4, r5, pc}
 8006e16:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e18:	f7fe fd1e 	bl	8005858 <__retarget_lock_release_recursive>
 8006e1c:	4628      	mov	r0, r5
 8006e1e:	b003      	add	sp, #12
 8006e20:	bd30      	pop	{r4, r5, pc}
 8006e22:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e24:	9101      	str	r1, [sp, #4]
 8006e26:	f7fe fd15 	bl	8005854 <__retarget_lock_acquire_recursive>
 8006e2a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006e2e:	9901      	ldr	r1, [sp, #4]
 8006e30:	b29a      	uxth	r2, r3
 8006e32:	e7d9      	b.n	8006de8 <_fputwc_r+0x18>

08006e34 <_fstat_r>:
 8006e34:	b538      	push	{r3, r4, r5, lr}
 8006e36:	460b      	mov	r3, r1
 8006e38:	4c07      	ldr	r4, [pc, #28]	; (8006e58 <_fstat_r+0x24>)
 8006e3a:	4605      	mov	r5, r0
 8006e3c:	4611      	mov	r1, r2
 8006e3e:	4618      	mov	r0, r3
 8006e40:	2300      	movs	r3, #0
 8006e42:	6023      	str	r3, [r4, #0]
 8006e44:	f7fb f9de 	bl	8002204 <_fstat>
 8006e48:	1c43      	adds	r3, r0, #1
 8006e4a:	d000      	beq.n	8006e4e <_fstat_r+0x1a>
 8006e4c:	bd38      	pop	{r3, r4, r5, pc}
 8006e4e:	6823      	ldr	r3, [r4, #0]
 8006e50:	2b00      	cmp	r3, #0
 8006e52:	d0fb      	beq.n	8006e4c <_fstat_r+0x18>
 8006e54:	602b      	str	r3, [r5, #0]
 8006e56:	bd38      	pop	{r3, r4, r5, pc}
 8006e58:	20000ba4 	.word	0x20000ba4

08006e5c <_isatty_r>:
 8006e5c:	b538      	push	{r3, r4, r5, lr}
 8006e5e:	4c07      	ldr	r4, [pc, #28]	; (8006e7c <_isatty_r+0x20>)
 8006e60:	2300      	movs	r3, #0
 8006e62:	4605      	mov	r5, r0
 8006e64:	4608      	mov	r0, r1
 8006e66:	6023      	str	r3, [r4, #0]
 8006e68:	f7fb f9d1 	bl	800220e <_isatty>
 8006e6c:	1c43      	adds	r3, r0, #1
 8006e6e:	d000      	beq.n	8006e72 <_isatty_r+0x16>
 8006e70:	bd38      	pop	{r3, r4, r5, pc}
 8006e72:	6823      	ldr	r3, [r4, #0]
 8006e74:	2b00      	cmp	r3, #0
 8006e76:	d0fb      	beq.n	8006e70 <_isatty_r+0x14>
 8006e78:	602b      	str	r3, [r5, #0]
 8006e7a:	bd38      	pop	{r3, r4, r5, pc}
 8006e7c:	20000ba4 	.word	0x20000ba4

08006e80 <__locale_mb_cur_max>:
 8006e80:	4b04      	ldr	r3, [pc, #16]	; (8006e94 <__locale_mb_cur_max+0x14>)
 8006e82:	4a05      	ldr	r2, [pc, #20]	; (8006e98 <__locale_mb_cur_max+0x18>)
 8006e84:	681b      	ldr	r3, [r3, #0]
 8006e86:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006e88:	2b00      	cmp	r3, #0
 8006e8a:	bf08      	it	eq
 8006e8c:	4613      	moveq	r3, r2
 8006e8e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006e92:	4770      	bx	lr
 8006e94:	200000b4 	.word	0x200000b4
 8006e98:	200008f4 	.word	0x200008f4

08006e9c <_lseek_r>:
 8006e9c:	b570      	push	{r4, r5, r6, lr}
 8006e9e:	460d      	mov	r5, r1
 8006ea0:	4c08      	ldr	r4, [pc, #32]	; (8006ec4 <_lseek_r+0x28>)
 8006ea2:	4611      	mov	r1, r2
 8006ea4:	4606      	mov	r6, r0
 8006ea6:	461a      	mov	r2, r3
 8006ea8:	4628      	mov	r0, r5
 8006eaa:	2300      	movs	r3, #0
 8006eac:	6023      	str	r3, [r4, #0]
 8006eae:	f7fb f9b0 	bl	8002212 <_lseek>
 8006eb2:	1c43      	adds	r3, r0, #1
 8006eb4:	d000      	beq.n	8006eb8 <_lseek_r+0x1c>
 8006eb6:	bd70      	pop	{r4, r5, r6, pc}
 8006eb8:	6823      	ldr	r3, [r4, #0]
 8006eba:	2b00      	cmp	r3, #0
 8006ebc:	d0fb      	beq.n	8006eb6 <_lseek_r+0x1a>
 8006ebe:	6033      	str	r3, [r6, #0]
 8006ec0:	bd70      	pop	{r4, r5, r6, pc}
 8006ec2:	bf00      	nop
 8006ec4:	20000ba4 	.word	0x20000ba4

08006ec8 <__ascii_mbtowc>:
 8006ec8:	b082      	sub	sp, #8
 8006eca:	b149      	cbz	r1, 8006ee0 <__ascii_mbtowc+0x18>
 8006ecc:	b15a      	cbz	r2, 8006ee6 <__ascii_mbtowc+0x1e>
 8006ece:	b16b      	cbz	r3, 8006eec <__ascii_mbtowc+0x24>
 8006ed0:	7813      	ldrb	r3, [r2, #0]
 8006ed2:	600b      	str	r3, [r1, #0]
 8006ed4:	7812      	ldrb	r2, [r2, #0]
 8006ed6:	1c10      	adds	r0, r2, #0
 8006ed8:	bf18      	it	ne
 8006eda:	2001      	movne	r0, #1
 8006edc:	b002      	add	sp, #8
 8006ede:	4770      	bx	lr
 8006ee0:	a901      	add	r1, sp, #4
 8006ee2:	2a00      	cmp	r2, #0
 8006ee4:	d1f3      	bne.n	8006ece <__ascii_mbtowc+0x6>
 8006ee6:	4610      	mov	r0, r2
 8006ee8:	b002      	add	sp, #8
 8006eea:	4770      	bx	lr
 8006eec:	f06f 0001 	mvn.w	r0, #1
 8006ef0:	e7f4      	b.n	8006edc <__ascii_mbtowc+0x14>
 8006ef2:	bf00      	nop

08006ef4 <_read_r>:
 8006ef4:	b570      	push	{r4, r5, r6, lr}
 8006ef6:	460d      	mov	r5, r1
 8006ef8:	4c08      	ldr	r4, [pc, #32]	; (8006f1c <_read_r+0x28>)
 8006efa:	4611      	mov	r1, r2
 8006efc:	4606      	mov	r6, r0
 8006efe:	461a      	mov	r2, r3
 8006f00:	4628      	mov	r0, r5
 8006f02:	2300      	movs	r3, #0
 8006f04:	6023      	str	r3, [r4, #0]
 8006f06:	f7fb f938 	bl	800217a <_read>
 8006f0a:	1c43      	adds	r3, r0, #1
 8006f0c:	d000      	beq.n	8006f10 <_read_r+0x1c>
 8006f0e:	bd70      	pop	{r4, r5, r6, pc}
 8006f10:	6823      	ldr	r3, [r4, #0]
 8006f12:	2b00      	cmp	r3, #0
 8006f14:	d0fb      	beq.n	8006f0e <_read_r+0x1a>
 8006f16:	6033      	str	r3, [r6, #0]
 8006f18:	bd70      	pop	{r4, r5, r6, pc}
 8006f1a:	bf00      	nop
 8006f1c:	20000ba4 	.word	0x20000ba4

08006f20 <__swbuf_r>:
 8006f20:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006f22:	460d      	mov	r5, r1
 8006f24:	4614      	mov	r4, r2
 8006f26:	4606      	mov	r6, r0
 8006f28:	b110      	cbz	r0, 8006f30 <__swbuf_r+0x10>
 8006f2a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006f2c:	2b00      	cmp	r3, #0
 8006f2e:	d043      	beq.n	8006fb8 <__swbuf_r+0x98>
 8006f30:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f34:	69a3      	ldr	r3, [r4, #24]
 8006f36:	60a3      	str	r3, [r4, #8]
 8006f38:	b291      	uxth	r1, r2
 8006f3a:	0708      	lsls	r0, r1, #28
 8006f3c:	d51b      	bpl.n	8006f76 <__swbuf_r+0x56>
 8006f3e:	6923      	ldr	r3, [r4, #16]
 8006f40:	b1cb      	cbz	r3, 8006f76 <__swbuf_r+0x56>
 8006f42:	b2ed      	uxtb	r5, r5
 8006f44:	0489      	lsls	r1, r1, #18
 8006f46:	462f      	mov	r7, r5
 8006f48:	d522      	bpl.n	8006f90 <__swbuf_r+0x70>
 8006f4a:	6822      	ldr	r2, [r4, #0]
 8006f4c:	6961      	ldr	r1, [r4, #20]
 8006f4e:	1ad3      	subs	r3, r2, r3
 8006f50:	4299      	cmp	r1, r3
 8006f52:	dd29      	ble.n	8006fa8 <__swbuf_r+0x88>
 8006f54:	3301      	adds	r3, #1
 8006f56:	68a1      	ldr	r1, [r4, #8]
 8006f58:	1c50      	adds	r0, r2, #1
 8006f5a:	3901      	subs	r1, #1
 8006f5c:	60a1      	str	r1, [r4, #8]
 8006f5e:	6020      	str	r0, [r4, #0]
 8006f60:	7015      	strb	r5, [r2, #0]
 8006f62:	6962      	ldr	r2, [r4, #20]
 8006f64:	429a      	cmp	r2, r3
 8006f66:	d02a      	beq.n	8006fbe <__swbuf_r+0x9e>
 8006f68:	89a3      	ldrh	r3, [r4, #12]
 8006f6a:	07db      	lsls	r3, r3, #31
 8006f6c:	d501      	bpl.n	8006f72 <__swbuf_r+0x52>
 8006f6e:	2d0a      	cmp	r5, #10
 8006f70:	d025      	beq.n	8006fbe <__swbuf_r+0x9e>
 8006f72:	4638      	mov	r0, r7
 8006f74:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006f76:	4621      	mov	r1, r4
 8006f78:	4630      	mov	r0, r6
 8006f7a:	f7fc fffd 	bl	8003f78 <__swsetup_r>
 8006f7e:	bb20      	cbnz	r0, 8006fca <__swbuf_r+0xaa>
 8006f80:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f84:	6923      	ldr	r3, [r4, #16]
 8006f86:	b291      	uxth	r1, r2
 8006f88:	b2ed      	uxtb	r5, r5
 8006f8a:	0489      	lsls	r1, r1, #18
 8006f8c:	462f      	mov	r7, r5
 8006f8e:	d4dc      	bmi.n	8006f4a <__swbuf_r+0x2a>
 8006f90:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006f92:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006f96:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006f9a:	81a2      	strh	r2, [r4, #12]
 8006f9c:	6822      	ldr	r2, [r4, #0]
 8006f9e:	6661      	str	r1, [r4, #100]	; 0x64
 8006fa0:	6961      	ldr	r1, [r4, #20]
 8006fa2:	1ad3      	subs	r3, r2, r3
 8006fa4:	4299      	cmp	r1, r3
 8006fa6:	dcd5      	bgt.n	8006f54 <__swbuf_r+0x34>
 8006fa8:	4621      	mov	r1, r4
 8006faa:	4630      	mov	r0, r6
 8006fac:	f7fe f8a6 	bl	80050fc <_fflush_r>
 8006fb0:	b958      	cbnz	r0, 8006fca <__swbuf_r+0xaa>
 8006fb2:	6822      	ldr	r2, [r4, #0]
 8006fb4:	2301      	movs	r3, #1
 8006fb6:	e7ce      	b.n	8006f56 <__swbuf_r+0x36>
 8006fb8:	f7fe f8fc 	bl	80051b4 <__sinit>
 8006fbc:	e7b8      	b.n	8006f30 <__swbuf_r+0x10>
 8006fbe:	4621      	mov	r1, r4
 8006fc0:	4630      	mov	r0, r6
 8006fc2:	f7fe f89b 	bl	80050fc <_fflush_r>
 8006fc6:	2800      	cmp	r0, #0
 8006fc8:	d0d3      	beq.n	8006f72 <__swbuf_r+0x52>
 8006fca:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006fce:	e7d0      	b.n	8006f72 <__swbuf_r+0x52>

08006fd0 <_wcrtomb_r>:
 8006fd0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006fd2:	4c11      	ldr	r4, [pc, #68]	; (8007018 <_wcrtomb_r+0x48>)
 8006fd4:	6824      	ldr	r4, [r4, #0]
 8006fd6:	b085      	sub	sp, #20
 8006fd8:	4606      	mov	r6, r0
 8006fda:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006fdc:	461f      	mov	r7, r3
 8006fde:	b151      	cbz	r1, 8006ff6 <_wcrtomb_r+0x26>
 8006fe0:	4d0e      	ldr	r5, [pc, #56]	; (800701c <_wcrtomb_r+0x4c>)
 8006fe2:	2c00      	cmp	r4, #0
 8006fe4:	bf08      	it	eq
 8006fe6:	462c      	moveq	r4, r5
 8006fe8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006fec:	47a0      	blx	r4
 8006fee:	1c43      	adds	r3, r0, #1
 8006ff0:	d00c      	beq.n	800700c <_wcrtomb_r+0x3c>
 8006ff2:	b005      	add	sp, #20
 8006ff4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006ff6:	4a09      	ldr	r2, [pc, #36]	; (800701c <_wcrtomb_r+0x4c>)
 8006ff8:	2c00      	cmp	r4, #0
 8006ffa:	bf08      	it	eq
 8006ffc:	4614      	moveq	r4, r2
 8006ffe:	460a      	mov	r2, r1
 8007000:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007004:	a901      	add	r1, sp, #4
 8007006:	47a0      	blx	r4
 8007008:	1c43      	adds	r3, r0, #1
 800700a:	d1f2      	bne.n	8006ff2 <_wcrtomb_r+0x22>
 800700c:	2200      	movs	r2, #0
 800700e:	238a      	movs	r3, #138	; 0x8a
 8007010:	603a      	str	r2, [r7, #0]
 8007012:	6033      	str	r3, [r6, #0]
 8007014:	b005      	add	sp, #20
 8007016:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007018:	200000b4 	.word	0x200000b4
 800701c:	200008f4 	.word	0x200008f4

08007020 <__ascii_wctomb>:
 8007020:	b121      	cbz	r1, 800702c <__ascii_wctomb+0xc>
 8007022:	2aff      	cmp	r2, #255	; 0xff
 8007024:	d804      	bhi.n	8007030 <__ascii_wctomb+0x10>
 8007026:	700a      	strb	r2, [r1, #0]
 8007028:	2001      	movs	r0, #1
 800702a:	4770      	bx	lr
 800702c:	4608      	mov	r0, r1
 800702e:	4770      	bx	lr
 8007030:	238a      	movs	r3, #138	; 0x8a
 8007032:	6003      	str	r3, [r0, #0]
 8007034:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007038:	4770      	bx	lr
 800703a:	bf00      	nop

0800703c <_init>:
 800703c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800703e:	bf00      	nop
 8007040:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007042:	bc08      	pop	{r3}
 8007044:	469e      	mov	lr, r3
 8007046:	4770      	bx	lr

08007048 <_fini>:
 8007048:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800704a:	bf00      	nop
 800704c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800704e:	bc08      	pop	{r3}
 8007050:	469e      	mov	lr, r3
 8007052:	4770      	bx	lr
 8007054:	0000      	movs	r0, r0
	...
