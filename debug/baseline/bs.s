
bs.elf:     file format elf32-littlearm


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
 80001e0:	08006e54 	.word	0x08006e54

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
 80001fc:	08006e54 	.word	0x08006e54

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
 80013e8:	f646 6288 	movw	r2, #28296	; 0x6e88
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
 8001462:	f646 6280 	movw	r2, #28288	; 0x6e80
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
 800148c:	f646 6280 	movw	r2, #28288	; 0x6e80
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
 80019d4:	f646 63b8 	movw	r3, #28344	; 0x6eb8
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
 80019fc:	f646 63c8 	movw	r3, #28360	; 0x6ec8
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

08001ebe <benchmark>:
 8001ebe:	2000      	movs	r0, #0
 8001ec0:	4770      	bx	lr

08001ec2 <__io_putchar>:
 8001ec2:	b580      	push	{r7, lr}
 8001ec4:	466f      	mov	r7, sp
 8001ec6:	b082      	sub	sp, #8
 8001ec8:	9001      	str	r0, [sp, #4]
 8001eca:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8001ece:	a901      	add	r1, sp, #4
 8001ed0:	2201      	movs	r2, #1
 8001ed2:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001ed6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001eda:	f7ff fefe 	bl	8001cda <HAL_UART_Transmit>
 8001ede:	9801      	ldr	r0, [sp, #4]
 8001ee0:	b002      	add	sp, #8
 8001ee2:	bd80      	pop	{r7, pc}

08001ee4 <main>:
 8001ee4:	b5b0      	push	{r4, r5, r7, lr}
 8001ee6:	af02      	add	r7, sp, #8
 8001ee8:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8001eec:	f643 0000 	movw	r0, #14336	; 0x3800
 8001ef0:	220c      	movs	r2, #12
 8001ef2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001ef6:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001efa:	6008      	str	r0, [r1, #0]
 8001efc:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8001f00:	6048      	str	r0, [r1, #4]
 8001f02:	2000      	movs	r0, #0
 8001f04:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8001f08:	6108      	str	r0, [r1, #16]
 8001f0a:	6248      	str	r0, [r1, #36]	; 0x24
 8001f0c:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8001f10:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8001f14:	2000      	movs	r0, #0
 8001f16:	f7ff ff75 	bl	8001e04 <BSP_COM_Init>
 8001f1a:	f7ff ffcf 	bl	8001ebc <initialise_benchmark>
 8001f1e:	f646 60d8 	movw	r0, #28376	; 0x6ed8
 8001f22:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f26:	f000 f949 	bl	80021bc <printf>
 8001f2a:	f646 707d 	movw	r0, #28541	; 0x6f7d
 8001f2e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f32:	f000 f9a5 	bl	8002280 <puts>
 8001f36:	f7ff f8d7 	bl	80010e8 <HAL_Init>
 8001f3a:	f7ff f8ed 	bl	8001118 <HAL_GetTick>
 8001f3e:	4604      	mov	r4, r0
 8001f40:	f7ff ffbd 	bl	8001ebe <benchmark>
 8001f44:	4605      	mov	r5, r0
 8001f46:	f7ff f8e7 	bl	8001118 <HAL_GetTick>
 8001f4a:	1b04      	subs	r4, r0, r4
 8001f4c:	4628      	mov	r0, r5
 8001f4e:	f7ff ffb2 	bl	8001eb6 <verify_benchmark>
 8001f52:	1c41      	adds	r1, r0, #1
 8001f54:	d006      	beq.n	8001f64 <main+0x80>
 8001f56:	2801      	cmp	r0, #1
 8001f58:	d109      	bne.n	8001f6e <main+0x8a>
 8001f5a:	f646 60e9 	movw	r0, #28393	; 0x6ee9
 8001f5e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f62:	e008      	b.n	8001f76 <main+0x92>
 8001f64:	f646 700d 	movw	r0, #28429	; 0x6f0d
 8001f68:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f6c:	e003      	b.n	8001f76 <main+0x92>
 8001f6e:	f646 7042 	movw	r0, #28482	; 0x6f42
 8001f72:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f76:	4621      	mov	r1, r4
 8001f78:	f000 f920 	bl	80021bc <printf>
 8001f7c:	2000      	movs	r0, #0
 8001f7e:	bdb0      	pop	{r4, r5, r7, pc}

08001f80 <SysTick_Handler>:
 8001f80:	b580      	push	{r7, lr}
 8001f82:	466f      	mov	r7, sp
 8001f84:	f7ff f8c0 	bl	8001108 <HAL_IncTick>
 8001f88:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001f8c:	f7ff b91a 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

08001f90 <_read>:
 8001f90:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001f92:	af03      	add	r7, sp, #12
 8001f94:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001f98:	4614      	mov	r4, r2
 8001f9a:	460d      	mov	r5, r1
 8001f9c:	2c01      	cmp	r4, #1
 8001f9e:	db06      	blt.n	8001fae <_read+0x1e>
 8001fa0:	4626      	mov	r6, r4
 8001fa2:	f3af 8000 	nop.w
 8001fa6:	f805 0b01 	strb.w	r0, [r5], #1
 8001faa:	3e01      	subs	r6, #1
 8001fac:	d1f9      	bne.n	8001fa2 <_read+0x12>
 8001fae:	4620      	mov	r0, r4
 8001fb0:	f85d bb04 	ldr.w	fp, [sp], #4
 8001fb4:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001fb6 <_write>:
 8001fb6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001fb8:	af03      	add	r7, sp, #12
 8001fba:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001fbe:	4614      	mov	r4, r2
 8001fc0:	460d      	mov	r5, r1
 8001fc2:	2c01      	cmp	r4, #1
 8001fc4:	db06      	blt.n	8001fd4 <_write+0x1e>
 8001fc6:	4626      	mov	r6, r4
 8001fc8:	f815 0b01 	ldrb.w	r0, [r5], #1
 8001fcc:	f7ff ff79 	bl	8001ec2 <__io_putchar>
 8001fd0:	3e01      	subs	r6, #1
 8001fd2:	d1f9      	bne.n	8001fc8 <_write+0x12>
 8001fd4:	4620      	mov	r0, r4
 8001fd6:	f85d bb04 	ldr.w	fp, [sp], #4
 8001fda:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001fdc <_sbrk>:
 8001fdc:	f640 2268 	movw	r2, #2664	; 0xa68
 8001fe0:	4601      	mov	r1, r0
 8001fe2:	466b      	mov	r3, sp
 8001fe4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001fe8:	6810      	ldr	r0, [r2, #0]
 8001fea:	2800      	cmp	r0, #0
 8001fec:	bf02      	ittt	eq
 8001fee:	f640 3010 	movweq	r0, #2832	; 0xb10
 8001ff2:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8001ff6:	6010      	streq	r0, [r2, #0]
 8001ff8:	4401      	add	r1, r0
 8001ffa:	4299      	cmp	r1, r3
 8001ffc:	bf9c      	itt	ls
 8001ffe:	6011      	strls	r1, [r2, #0]
 8002000:	4770      	bxls	lr
 8002002:	b580      	push	{r7, lr}
 8002004:	466f      	mov	r7, sp
 8002006:	f000 f865 	bl	80020d4 <__errno>
 800200a:	210c      	movs	r1, #12
 800200c:	6001      	str	r1, [r0, #0]
 800200e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002012:	bd80      	pop	{r7, pc}

08002014 <_close>:
 8002014:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002018:	4770      	bx	lr

0800201a <_fstat>:
 800201a:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 800201e:	6048      	str	r0, [r1, #4]
 8002020:	2000      	movs	r0, #0
 8002022:	4770      	bx	lr

08002024 <_isatty>:
 8002024:	2001      	movs	r0, #1
 8002026:	4770      	bx	lr

08002028 <_lseek>:
 8002028:	2000      	movs	r0, #0
 800202a:	4770      	bx	lr

0800202c <SystemInit>:
 800202c:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002030:	f04f 0c00 	mov.w	ip, #0
 8002034:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002038:	6801      	ldr	r1, [r0, #0]
 800203a:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 800203e:	6001      	str	r1, [r0, #0]
 8002040:	f241 0100 	movw	r1, #4096	; 0x1000
 8002044:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002048:	680a      	ldr	r2, [r1, #0]
 800204a:	f042 0201 	orr.w	r2, r2, #1
 800204e:	600a      	str	r2, [r1, #0]
 8002050:	f8c1 c008 	str.w	ip, [r1, #8]
 8002054:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002058:	680b      	ldr	r3, [r1, #0]
 800205a:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 800205e:	401a      	ands	r2, r3
 8002060:	600a      	str	r2, [r1, #0]
 8002062:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002066:	60ca      	str	r2, [r1, #12]
 8002068:	680a      	ldr	r2, [r1, #0]
 800206a:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800206e:	600a      	str	r2, [r1, #0]
 8002070:	f8c1 c018 	str.w	ip, [r1, #24]
 8002074:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002078:	f840 1c80 	str.w	r1, [r0, #-128]
 800207c:	4770      	bx	lr
	...

08002080 <Reset_Handler>:
 8002080:	f8df d034 	ldr.w	sp, [pc, #52]	; 80020b8 <LoopForever+0x2>
 8002084:	2100      	movs	r1, #0
 8002086:	e003      	b.n	8002090 <LoopCopyDataInit>

08002088 <CopyDataInit>:
 8002088:	4b0c      	ldr	r3, [pc, #48]	; (80020bc <LoopForever+0x6>)
 800208a:	585b      	ldr	r3, [r3, r1]
 800208c:	5043      	str	r3, [r0, r1]
 800208e:	3104      	adds	r1, #4

08002090 <LoopCopyDataInit>:
 8002090:	480b      	ldr	r0, [pc, #44]	; (80020c0 <LoopForever+0xa>)
 8002092:	4b0c      	ldr	r3, [pc, #48]	; (80020c4 <LoopForever+0xe>)
 8002094:	1842      	adds	r2, r0, r1
 8002096:	429a      	cmp	r2, r3
 8002098:	d3f6      	bcc.n	8002088 <CopyDataInit>
 800209a:	4a0b      	ldr	r2, [pc, #44]	; (80020c8 <LoopForever+0x12>)
 800209c:	e002      	b.n	80020a4 <LoopFillZerobss>

0800209e <FillZerobss>:
 800209e:	2300      	movs	r3, #0
 80020a0:	f842 3b04 	str.w	r3, [r2], #4

080020a4 <LoopFillZerobss>:
 80020a4:	4b09      	ldr	r3, [pc, #36]	; (80020cc <LoopForever+0x16>)
 80020a6:	429a      	cmp	r2, r3
 80020a8:	d3f9      	bcc.n	800209e <FillZerobss>
 80020aa:	f7ff ffbf 	bl	800202c <SystemInit>
 80020ae:	f000 f817 	bl	80020e0 <__libc_init_array>
 80020b2:	f7ff ff17 	bl	8001ee4 <main>

080020b6 <LoopForever>:
 80020b6:	e7fe      	b.n	80020b6 <LoopForever>
 80020b8:	20018000 	.word	0x20018000
 80020bc:	08007228 	.word	0x08007228
 80020c0:	20000000 	.word	0x20000000
 80020c4:	200009c8 	.word	0x200009c8
 80020c8:	200009c8 	.word	0x200009c8
 80020cc:	20000b10 	.word	0x20000b10

080020d0 <ADC1_2_IRQHandler>:
 80020d0:	e7fe      	b.n	80020d0 <ADC1_2_IRQHandler>
	...

080020d4 <__errno>:
 80020d4:	4b01      	ldr	r3, [pc, #4]	; (80020dc <__errno+0x8>)
 80020d6:	6818      	ldr	r0, [r3, #0]
 80020d8:	4770      	bx	lr
 80020da:	bf00      	nop
 80020dc:	20000018 	.word	0x20000018

080020e0 <__libc_init_array>:
 80020e0:	b570      	push	{r4, r5, r6, lr}
 80020e2:	4e0d      	ldr	r6, [pc, #52]	; (8002118 <__libc_init_array+0x38>)
 80020e4:	4d0d      	ldr	r5, [pc, #52]	; (800211c <__libc_init_array+0x3c>)
 80020e6:	1b76      	subs	r6, r6, r5
 80020e8:	10b6      	asrs	r6, r6, #2
 80020ea:	d006      	beq.n	80020fa <__libc_init_array+0x1a>
 80020ec:	2400      	movs	r4, #0
 80020ee:	3401      	adds	r4, #1
 80020f0:	f855 3b04 	ldr.w	r3, [r5], #4
 80020f4:	4798      	blx	r3
 80020f6:	42a6      	cmp	r6, r4
 80020f8:	d1f9      	bne.n	80020ee <__libc_init_array+0xe>
 80020fa:	4e09      	ldr	r6, [pc, #36]	; (8002120 <__libc_init_array+0x40>)
 80020fc:	4d09      	ldr	r5, [pc, #36]	; (8002124 <__libc_init_array+0x44>)
 80020fe:	1b76      	subs	r6, r6, r5
 8002100:	f004 fea8 	bl	8006e54 <_init>
 8002104:	10b6      	asrs	r6, r6, #2
 8002106:	d006      	beq.n	8002116 <__libc_init_array+0x36>
 8002108:	2400      	movs	r4, #0
 800210a:	3401      	adds	r4, #1
 800210c:	f855 3b04 	ldr.w	r3, [r5], #4
 8002110:	4798      	blx	r3
 8002112:	42a6      	cmp	r6, r4
 8002114:	d1f9      	bne.n	800210a <__libc_init_array+0x2a>
 8002116:	bd70      	pop	{r4, r5, r6, pc}
 8002118:	08007218 	.word	0x08007218
 800211c:	08007218 	.word	0x08007218
 8002120:	08007220 	.word	0x08007220
 8002124:	08007218 	.word	0x08007218

08002128 <memset>:
 8002128:	b4f0      	push	{r4, r5, r6, r7}
 800212a:	0786      	lsls	r6, r0, #30
 800212c:	d043      	beq.n	80021b6 <memset+0x8e>
 800212e:	1e54      	subs	r4, r2, #1
 8002130:	2a00      	cmp	r2, #0
 8002132:	d03e      	beq.n	80021b2 <memset+0x8a>
 8002134:	b2ca      	uxtb	r2, r1
 8002136:	4603      	mov	r3, r0
 8002138:	e002      	b.n	8002140 <memset+0x18>
 800213a:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 800213e:	d338      	bcc.n	80021b2 <memset+0x8a>
 8002140:	f803 2b01 	strb.w	r2, [r3], #1
 8002144:	079d      	lsls	r5, r3, #30
 8002146:	d1f8      	bne.n	800213a <memset+0x12>
 8002148:	2c03      	cmp	r4, #3
 800214a:	d92b      	bls.n	80021a4 <memset+0x7c>
 800214c:	b2cd      	uxtb	r5, r1
 800214e:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002152:	2c0f      	cmp	r4, #15
 8002154:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002158:	d916      	bls.n	8002188 <memset+0x60>
 800215a:	f1a4 0710 	sub.w	r7, r4, #16
 800215e:	093f      	lsrs	r7, r7, #4
 8002160:	f103 0620 	add.w	r6, r3, #32
 8002164:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002168:	f103 0210 	add.w	r2, r3, #16
 800216c:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002170:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002174:	3210      	adds	r2, #16
 8002176:	42b2      	cmp	r2, r6
 8002178:	d1f8      	bne.n	800216c <memset+0x44>
 800217a:	f004 040f 	and.w	r4, r4, #15
 800217e:	3701      	adds	r7, #1
 8002180:	2c03      	cmp	r4, #3
 8002182:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002186:	d90d      	bls.n	80021a4 <memset+0x7c>
 8002188:	461e      	mov	r6, r3
 800218a:	4622      	mov	r2, r4
 800218c:	3a04      	subs	r2, #4
 800218e:	2a03      	cmp	r2, #3
 8002190:	f846 5b04 	str.w	r5, [r6], #4
 8002194:	d8fa      	bhi.n	800218c <memset+0x64>
 8002196:	1f22      	subs	r2, r4, #4
 8002198:	f022 0203 	bic.w	r2, r2, #3
 800219c:	3204      	adds	r2, #4
 800219e:	4413      	add	r3, r2
 80021a0:	f004 0403 	and.w	r4, r4, #3
 80021a4:	b12c      	cbz	r4, 80021b2 <memset+0x8a>
 80021a6:	b2c9      	uxtb	r1, r1
 80021a8:	441c      	add	r4, r3
 80021aa:	f803 1b01 	strb.w	r1, [r3], #1
 80021ae:	429c      	cmp	r4, r3
 80021b0:	d1fb      	bne.n	80021aa <memset+0x82>
 80021b2:	bcf0      	pop	{r4, r5, r6, r7}
 80021b4:	4770      	bx	lr
 80021b6:	4614      	mov	r4, r2
 80021b8:	4603      	mov	r3, r0
 80021ba:	e7c5      	b.n	8002148 <memset+0x20>

080021bc <printf>:
 80021bc:	b40f      	push	{r0, r1, r2, r3}
 80021be:	b500      	push	{lr}
 80021c0:	4907      	ldr	r1, [pc, #28]	; (80021e0 <printf+0x24>)
 80021c2:	b083      	sub	sp, #12
 80021c4:	ab04      	add	r3, sp, #16
 80021c6:	6808      	ldr	r0, [r1, #0]
 80021c8:	f853 2b04 	ldr.w	r2, [r3], #4
 80021cc:	6881      	ldr	r1, [r0, #8]
 80021ce:	9301      	str	r3, [sp, #4]
 80021d0:	f000 f85e 	bl	8002290 <_vfprintf_r>
 80021d4:	b003      	add	sp, #12
 80021d6:	f85d eb04 	ldr.w	lr, [sp], #4
 80021da:	b004      	add	sp, #16
 80021dc:	4770      	bx	lr
 80021de:	bf00      	nop
 80021e0:	20000018 	.word	0x20000018

080021e4 <_puts_r>:
 80021e4:	b570      	push	{r4, r5, r6, lr}
 80021e6:	4605      	mov	r5, r0
 80021e8:	b088      	sub	sp, #32
 80021ea:	4608      	mov	r0, r1
 80021ec:	460c      	mov	r4, r1
 80021ee:	f7fe fa27 	bl	8000640 <strlen>
 80021f2:	4a22      	ldr	r2, [pc, #136]	; (800227c <_puts_r+0x98>)
 80021f4:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80021f6:	9404      	str	r4, [sp, #16]
 80021f8:	2601      	movs	r6, #1
 80021fa:	1c44      	adds	r4, r0, #1
 80021fc:	a904      	add	r1, sp, #16
 80021fe:	9206      	str	r2, [sp, #24]
 8002200:	2202      	movs	r2, #2
 8002202:	9403      	str	r4, [sp, #12]
 8002204:	9005      	str	r0, [sp, #20]
 8002206:	68ac      	ldr	r4, [r5, #8]
 8002208:	9607      	str	r6, [sp, #28]
 800220a:	e9cd 1201 	strd	r1, r2, [sp, #4]
 800220e:	b31b      	cbz	r3, 8002258 <_puts_r+0x74>
 8002210:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002212:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002216:	07ce      	lsls	r6, r1, #31
 8002218:	b29a      	uxth	r2, r3
 800221a:	d401      	bmi.n	8002220 <_puts_r+0x3c>
 800221c:	0590      	lsls	r0, r2, #22
 800221e:	d525      	bpl.n	800226c <_puts_r+0x88>
 8002220:	0491      	lsls	r1, r2, #18
 8002222:	d406      	bmi.n	8002232 <_puts_r+0x4e>
 8002224:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8002226:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800222a:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 800222e:	81a3      	strh	r3, [r4, #12]
 8002230:	6662      	str	r2, [r4, #100]	; 0x64
 8002232:	4628      	mov	r0, r5
 8002234:	aa01      	add	r2, sp, #4
 8002236:	4621      	mov	r1, r4
 8002238:	f003 f85e 	bl	80052f8 <__sfvwrite_r>
 800223c:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800223e:	2800      	cmp	r0, #0
 8002240:	bf0c      	ite	eq
 8002242:	250a      	moveq	r5, #10
 8002244:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002248:	07da      	lsls	r2, r3, #31
 800224a:	d402      	bmi.n	8002252 <_puts_r+0x6e>
 800224c:	89a3      	ldrh	r3, [r4, #12]
 800224e:	059b      	lsls	r3, r3, #22
 8002250:	d506      	bpl.n	8002260 <_puts_r+0x7c>
 8002252:	4628      	mov	r0, r5
 8002254:	b008      	add	sp, #32
 8002256:	bd70      	pop	{r4, r5, r6, pc}
 8002258:	4628      	mov	r0, r5
 800225a:	f002 feb7 	bl	8004fcc <__sinit>
 800225e:	e7d7      	b.n	8002210 <_puts_r+0x2c>
 8002260:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002262:	f003 fa05 	bl	8005670 <__retarget_lock_release_recursive>
 8002266:	4628      	mov	r0, r5
 8002268:	b008      	add	sp, #32
 800226a:	bd70      	pop	{r4, r5, r6, pc}
 800226c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800226e:	f003 f9fd 	bl	800566c <__retarget_lock_acquire_recursive>
 8002272:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002276:	b29a      	uxth	r2, r3
 8002278:	e7d2      	b.n	8002220 <_puts_r+0x3c>
 800227a:	bf00      	nop
 800227c:	08006f84 	.word	0x08006f84

08002280 <puts>:
 8002280:	4b02      	ldr	r3, [pc, #8]	; (800228c <puts+0xc>)
 8002282:	4601      	mov	r1, r0
 8002284:	6818      	ldr	r0, [r3, #0]
 8002286:	f7ff bfad 	b.w	80021e4 <_puts_r>
 800228a:	bf00      	nop
 800228c:	20000018 	.word	0x20000018

08002290 <_vfprintf_r>:
 8002290:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002294:	b0d7      	sub	sp, #348	; 0x15c
 8002296:	461c      	mov	r4, r3
 8002298:	4689      	mov	r9, r1
 800229a:	4617      	mov	r7, r2
 800229c:	4605      	mov	r5, r0
 800229e:	9003      	str	r0, [sp, #12]
 80022a0:	f003 f9d2 	bl	8005648 <_localeconv_r>
 80022a4:	6803      	ldr	r3, [r0, #0]
 80022a6:	9316      	str	r3, [sp, #88]	; 0x58
 80022a8:	4618      	mov	r0, r3
 80022aa:	f7fe f9c9 	bl	8000640 <strlen>
 80022ae:	9408      	str	r4, [sp, #32]
 80022b0:	9015      	str	r0, [sp, #84]	; 0x54
 80022b2:	b11d      	cbz	r5, 80022bc <_vfprintf_r+0x2c>
 80022b4:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80022b6:	2b00      	cmp	r3, #0
 80022b8:	f000 8107 	beq.w	80024ca <_vfprintf_r+0x23a>
 80022bc:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80022c0:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80022c4:	07c8      	lsls	r0, r1, #31
 80022c6:	b293      	uxth	r3, r2
 80022c8:	d402      	bmi.n	80022d0 <_vfprintf_r+0x40>
 80022ca:	0599      	lsls	r1, r3, #22
 80022cc:	f140 811f 	bpl.w	800250e <_vfprintf_r+0x27e>
 80022d0:	049e      	lsls	r6, r3, #18
 80022d2:	d40a      	bmi.n	80022ea <_vfprintf_r+0x5a>
 80022d4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80022d8:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 80022dc:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80022e0:	f8a9 300c 	strh.w	r3, [r9, #12]
 80022e4:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80022e8:	b29b      	uxth	r3, r3
 80022ea:	071d      	lsls	r5, r3, #28
 80022ec:	f140 80b2 	bpl.w	8002454 <_vfprintf_r+0x1c4>
 80022f0:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80022f4:	2a00      	cmp	r2, #0
 80022f6:	f000 80ad 	beq.w	8002454 <_vfprintf_r+0x1c4>
 80022fa:	f003 021a 	and.w	r2, r3, #26
 80022fe:	2a0a      	cmp	r2, #10
 8002300:	f000 80c9 	beq.w	8002496 <_vfprintf_r+0x206>
 8002304:	2300      	movs	r3, #0
 8002306:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002520 <_vfprintf_r+0x290>
 800230a:	9310      	str	r3, [sp, #64]	; 0x40
 800230c:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002310:	9317      	str	r3, [sp, #92]	; 0x5c
 8002312:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002316:	931b      	str	r3, [sp, #108]	; 0x6c
 8002318:	9318      	str	r3, [sp, #96]	; 0x60
 800231a:	9305      	str	r3, [sp, #20]
 800231c:	ab2d      	add	r3, sp, #180	; 0xb4
 800231e:	932a      	str	r3, [sp, #168]	; 0xa8
 8002320:	469b      	mov	fp, r3
 8002322:	783b      	ldrb	r3, [r7, #0]
 8002324:	f8cd 901c 	str.w	r9, [sp, #28]
 8002328:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800232c:	2b00      	cmp	r3, #0
 800232e:	f000 8259 	beq.w	80027e4 <_vfprintf_r+0x554>
 8002332:	2b25      	cmp	r3, #37	; 0x25
 8002334:	463c      	mov	r4, r7
 8002336:	d102      	bne.n	800233e <_vfprintf_r+0xae>
 8002338:	e01d      	b.n	8002376 <_vfprintf_r+0xe6>
 800233a:	2b25      	cmp	r3, #37	; 0x25
 800233c:	d003      	beq.n	8002346 <_vfprintf_r+0xb6>
 800233e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002342:	2b00      	cmp	r3, #0
 8002344:	d1f9      	bne.n	800233a <_vfprintf_r+0xaa>
 8002346:	1be5      	subs	r5, r4, r7
 8002348:	b18d      	cbz	r5, 800236e <_vfprintf_r+0xde>
 800234a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 800234e:	3301      	adds	r3, #1
 8002350:	442a      	add	r2, r5
 8002352:	2b07      	cmp	r3, #7
 8002354:	f8cb 7000 	str.w	r7, [fp]
 8002358:	f8cb 5004 	str.w	r5, [fp, #4]
 800235c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002360:	f300 80ca 	bgt.w	80024f8 <_vfprintf_r+0x268>
 8002364:	f10b 0b08 	add.w	fp, fp, #8
 8002368:	9b05      	ldr	r3, [sp, #20]
 800236a:	442b      	add	r3, r5
 800236c:	9305      	str	r3, [sp, #20]
 800236e:	7823      	ldrb	r3, [r4, #0]
 8002370:	2b00      	cmp	r3, #0
 8002372:	f000 8237 	beq.w	80027e4 <_vfprintf_r+0x554>
 8002376:	2300      	movs	r3, #0
 8002378:	7866      	ldrb	r6, [r4, #1]
 800237a:	9306      	str	r3, [sp, #24]
 800237c:	4698      	mov	r8, r3
 800237e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002382:	f104 0a01 	add.w	sl, r4, #1
 8002386:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 800238a:	252b      	movs	r5, #43	; 0x2b
 800238c:	f10a 0a01 	add.w	sl, sl, #1
 8002390:	f1a6 0320 	sub.w	r3, r6, #32
 8002394:	2b5a      	cmp	r3, #90	; 0x5a
 8002396:	f200 842a 	bhi.w	8002bee <_vfprintf_r+0x95e>
 800239a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800239e:	03aa      	.short	0x03aa
 80023a0:	04280428 	.word	0x04280428
 80023a4:	0428029c 	.word	0x0428029c
 80023a8:	04280428 	.word	0x04280428
 80023ac:	042802a7 	.word	0x042802a7
 80023b0:	02c60428 	.word	0x02c60428
 80023b4:	042802d2 	.word	0x042802d2
 80023b8:	02dc02d7 	.word	0x02dc02d7
 80023bc:	02f60428 	.word	0x02f60428
 80023c0:	026d026d 	.word	0x026d026d
 80023c4:	026d026d 	.word	0x026d026d
 80023c8:	026d026d 	.word	0x026d026d
 80023cc:	026d026d 	.word	0x026d026d
 80023d0:	0428026d 	.word	0x0428026d
 80023d4:	04280428 	.word	0x04280428
 80023d8:	04280428 	.word	0x04280428
 80023dc:	04280428 	.word	0x04280428
 80023e0:	042802fb 	.word	0x042802fb
 80023e4:	03f3033c 	.word	0x03f3033c
 80023e8:	02fb02fb 	.word	0x02fb02fb
 80023ec:	042802fb 	.word	0x042802fb
 80023f0:	04280428 	.word	0x04280428
 80023f4:	03ee0428 	.word	0x03ee0428
 80023f8:	04280428 	.word	0x04280428
 80023fc:	0428009a 	.word	0x0428009a
 8002400:	04280428 	.word	0x04280428
 8002404:	04280350 	.word	0x04280350
 8002408:	04280379 	.word	0x04280379
 800240c:	03900428 	.word	0x03900428
 8002410:	04280428 	.word	0x04280428
 8002414:	04280428 	.word	0x04280428
 8002418:	04280428 	.word	0x04280428
 800241c:	04280428 	.word	0x04280428
 8002420:	042802fb 	.word	0x042802fb
 8002424:	00c5033c 	.word	0x00c5033c
 8002428:	02fb02fb 	.word	0x02fb02fb
 800242c:	03d102fb 	.word	0x03d102fb
 8002430:	007000c5 	.word	0x007000c5
 8002434:	03b50428 	.word	0x03b50428
 8002438:	03c20428 	.word	0x03c20428
 800243c:	03de009c 	.word	0x03de009c
 8002440:	04280070 	.word	0x04280070
 8002444:	00720350 	.word	0x00720350
 8002448:	0428022c 	.word	0x0428022c
 800244c:	027c0428 	.word	0x027c0428
 8002450:	00720428 	.word	0x00720428
 8002454:	4649      	mov	r1, r9
 8002456:	9803      	ldr	r0, [sp, #12]
 8002458:	f001 fc9a 	bl	8003d90 <__swsetup_r>
 800245c:	b1a0      	cbz	r0, 8002488 <_vfprintf_r+0x1f8>
 800245e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002462:	07d8      	lsls	r0, r3, #31
 8002464:	d404      	bmi.n	8002470 <_vfprintf_r+0x1e0>
 8002466:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800246a:	0599      	lsls	r1, r3, #22
 800246c:	f140 83b7 	bpl.w	8002bde <_vfprintf_r+0x94e>
 8002470:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002474:	9305      	str	r3, [sp, #20]
 8002476:	9805      	ldr	r0, [sp, #20]
 8002478:	b057      	add	sp, #348	; 0x15c
 800247a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800247e:	f048 0820 	orr.w	r8, r8, #32
 8002482:	f89a 6000 	ldrb.w	r6, [sl]
 8002486:	e781      	b.n	800238c <_vfprintf_r+0xfc>
 8002488:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800248c:	f003 021a 	and.w	r2, r3, #26
 8002490:	2a0a      	cmp	r2, #10
 8002492:	f47f af37 	bne.w	8002304 <_vfprintf_r+0x74>
 8002496:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 800249a:	2a00      	cmp	r2, #0
 800249c:	f6ff af32 	blt.w	8002304 <_vfprintf_r+0x74>
 80024a0:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80024a4:	07d2      	lsls	r2, r2, #31
 80024a6:	d405      	bmi.n	80024b4 <_vfprintf_r+0x224>
 80024a8:	059b      	lsls	r3, r3, #22
 80024aa:	d403      	bmi.n	80024b4 <_vfprintf_r+0x224>
 80024ac:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80024b0:	f003 f8de 	bl	8005670 <__retarget_lock_release_recursive>
 80024b4:	4623      	mov	r3, r4
 80024b6:	463a      	mov	r2, r7
 80024b8:	4649      	mov	r1, r9
 80024ba:	9803      	ldr	r0, [sp, #12]
 80024bc:	f001 fc26 	bl	8003d0c <__sbprintf>
 80024c0:	9005      	str	r0, [sp, #20]
 80024c2:	9805      	ldr	r0, [sp, #20]
 80024c4:	b057      	add	sp, #348	; 0x15c
 80024c6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80024ca:	9803      	ldr	r0, [sp, #12]
 80024cc:	f002 fd7e 	bl	8004fcc <__sinit>
 80024d0:	e6f4      	b.n	80022bc <_vfprintf_r+0x2c>
 80024d2:	f048 0810 	orr.w	r8, r8, #16
 80024d6:	f018 0f20 	tst.w	r8, #32
 80024da:	f000 836c 	beq.w	8002bb6 <_vfprintf_r+0x926>
 80024de:	9c08      	ldr	r4, [sp, #32]
 80024e0:	3407      	adds	r4, #7
 80024e2:	f024 0307 	bic.w	r3, r4, #7
 80024e6:	e9d3 4500 	ldrd	r4, r5, [r3]
 80024ea:	f103 0208 	add.w	r2, r3, #8
 80024ee:	9208      	str	r2, [sp, #32]
 80024f0:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80024f4:	2200      	movs	r2, #0
 80024f6:	e18c      	b.n	8002812 <_vfprintf_r+0x582>
 80024f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80024fa:	9907      	ldr	r1, [sp, #28]
 80024fc:	9803      	ldr	r0, [sp, #12]
 80024fe:	f004 f9f5 	bl	80068ec <__sprint_r>
 8002502:	2800      	cmp	r0, #0
 8002504:	f041 8376 	bne.w	8003bf4 <_vfprintf_r+0x1964>
 8002508:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800250c:	e72c      	b.n	8002368 <_vfprintf_r+0xd8>
 800250e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002512:	f003 f8ab 	bl	800566c <__retarget_lock_acquire_recursive>
 8002516:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800251a:	b293      	uxth	r3, r2
 800251c:	e6d8      	b.n	80022d0 <_vfprintf_r+0x40>
 800251e:	bf00      	nop
	...
 8002528:	4643      	mov	r3, r8
 800252a:	069f      	lsls	r7, r3, #26
 800252c:	f140 832f 	bpl.w	8002b8e <_vfprintf_r+0x8fe>
 8002530:	9c08      	ldr	r4, [sp, #32]
 8002532:	3407      	adds	r4, #7
 8002534:	f024 0407 	bic.w	r4, r4, #7
 8002538:	e9d4 0100 	ldrd	r0, r1, [r4]
 800253c:	f104 0208 	add.w	r2, r4, #8
 8002540:	9208      	str	r2, [sp, #32]
 8002542:	4604      	mov	r4, r0
 8002544:	460d      	mov	r5, r1
 8002546:	2800      	cmp	r0, #0
 8002548:	f171 0200 	sbcs.w	r2, r1, #0
 800254c:	da05      	bge.n	800255a <_vfprintf_r+0x2ca>
 800254e:	222d      	movs	r2, #45	; 0x2d
 8002550:	4264      	negs	r4, r4
 8002552:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002556:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800255a:	aa56      	add	r2, sp, #344	; 0x158
 800255c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002560:	9204      	str	r2, [sp, #16]
 8002562:	f000 84b2 	beq.w	8002eca <_vfprintf_r+0xc3a>
 8002566:	2201      	movs	r2, #1
 8002568:	ea54 0105 	orrs.w	r1, r4, r5
 800256c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002570:	f040 8159 	bne.w	8002826 <_vfprintf_r+0x596>
 8002574:	f1b9 0f00 	cmp.w	r9, #0
 8002578:	f040 8619 	bne.w	80031ae <_vfprintf_r+0xf1e>
 800257c:	2a00      	cmp	r2, #0
 800257e:	f040 8508 	bne.w	8002f92 <_vfprintf_r+0xd02>
 8002582:	f013 0301 	ands.w	r3, r3, #1
 8002586:	af56      	add	r7, sp, #344	; 0x158
 8002588:	9309      	str	r3, [sp, #36]	; 0x24
 800258a:	d002      	beq.n	8002592 <_vfprintf_r+0x302>
 800258c:	2330      	movs	r3, #48	; 0x30
 800258e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002592:	2300      	movs	r3, #0
 8002594:	930a      	str	r3, [sp, #40]	; 0x28
 8002596:	930f      	str	r3, [sp, #60]	; 0x3c
 8002598:	9314      	str	r3, [sp, #80]	; 0x50
 800259a:	9311      	str	r3, [sp, #68]	; 0x44
 800259c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800259e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80025a2:	454b      	cmp	r3, r9
 80025a4:	bfb8      	it	lt
 80025a6:	464b      	movlt	r3, r9
 80025a8:	9304      	str	r3, [sp, #16]
 80025aa:	b112      	cbz	r2, 80025b2 <_vfprintf_r+0x322>
 80025ac:	9b04      	ldr	r3, [sp, #16]
 80025ae:	3301      	adds	r3, #1
 80025b0:	9304      	str	r3, [sp, #16]
 80025b2:	f018 0302 	ands.w	r3, r8, #2
 80025b6:	930b      	str	r3, [sp, #44]	; 0x2c
 80025b8:	d002      	beq.n	80025c0 <_vfprintf_r+0x330>
 80025ba:	9b04      	ldr	r3, [sp, #16]
 80025bc:	3302      	adds	r3, #2
 80025be:	9304      	str	r3, [sp, #16]
 80025c0:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 80025c4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80025c6:	930e      	str	r3, [sp, #56]	; 0x38
 80025c8:	d13f      	bne.n	800264a <_vfprintf_r+0x3ba>
 80025ca:	9b06      	ldr	r3, [sp, #24]
 80025cc:	9904      	ldr	r1, [sp, #16]
 80025ce:	1a5d      	subs	r5, r3, r1
 80025d0:	2d00      	cmp	r5, #0
 80025d2:	dd3a      	ble.n	800264a <_vfprintf_r+0x3ba>
 80025d4:	2d10      	cmp	r5, #16
 80025d6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80025d8:	dd29      	ble.n	800262e <_vfprintf_r+0x39e>
 80025da:	4659      	mov	r1, fp
 80025dc:	4620      	mov	r0, r4
 80025de:	9620      	str	r6, [sp, #128]	; 0x80
 80025e0:	2310      	movs	r3, #16
 80025e2:	9c03      	ldr	r4, [sp, #12]
 80025e4:	9e07      	ldr	r6, [sp, #28]
 80025e6:	46bb      	mov	fp, r7
 80025e8:	e004      	b.n	80025f4 <_vfprintf_r+0x364>
 80025ea:	3d10      	subs	r5, #16
 80025ec:	2d10      	cmp	r5, #16
 80025ee:	f101 0108 	add.w	r1, r1, #8
 80025f2:	dd18      	ble.n	8002626 <_vfprintf_r+0x396>
 80025f4:	3201      	adds	r2, #1
 80025f6:	4fba      	ldr	r7, [pc, #744]	; (80028e0 <_vfprintf_r+0x650>)
 80025f8:	3010      	adds	r0, #16
 80025fa:	2a07      	cmp	r2, #7
 80025fc:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002600:	e9c1 7300 	strd	r7, r3, [r1]
 8002604:	ddf1      	ble.n	80025ea <_vfprintf_r+0x35a>
 8002606:	aa2a      	add	r2, sp, #168	; 0xa8
 8002608:	4631      	mov	r1, r6
 800260a:	4620      	mov	r0, r4
 800260c:	930c      	str	r3, [sp, #48]	; 0x30
 800260e:	f004 f96d 	bl	80068ec <__sprint_r>
 8002612:	2800      	cmp	r0, #0
 8002614:	f040 843d 	bne.w	8002e92 <_vfprintf_r+0xc02>
 8002618:	3d10      	subs	r5, #16
 800261a:	2d10      	cmp	r5, #16
 800261c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002620:	a92d      	add	r1, sp, #180	; 0xb4
 8002622:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002624:	dce6      	bgt.n	80025f4 <_vfprintf_r+0x364>
 8002626:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002628:	465f      	mov	r7, fp
 800262a:	4604      	mov	r4, r0
 800262c:	468b      	mov	fp, r1
 800262e:	3201      	adds	r2, #1
 8002630:	4bab      	ldr	r3, [pc, #684]	; (80028e0 <_vfprintf_r+0x650>)
 8002632:	442c      	add	r4, r5
 8002634:	2a07      	cmp	r2, #7
 8002636:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800263a:	e9cb 3500 	strd	r3, r5, [fp]
 800263e:	f300 84ff 	bgt.w	8003040 <_vfprintf_r+0xdb0>
 8002642:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002646:	f10b 0b08 	add.w	fp, fp, #8
 800264a:	b172      	cbz	r2, 800266a <_vfprintf_r+0x3da>
 800264c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800264e:	3201      	adds	r2, #1
 8002650:	3401      	adds	r4, #1
 8002652:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002656:	2101      	movs	r1, #1
 8002658:	2a07      	cmp	r2, #7
 800265a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800265e:	e9cb 0100 	strd	r0, r1, [fp]
 8002662:	f300 8418 	bgt.w	8002e96 <_vfprintf_r+0xc06>
 8002666:	f10b 0b08 	add.w	fp, fp, #8
 800266a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800266c:	b16b      	cbz	r3, 800268a <_vfprintf_r+0x3fa>
 800266e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002670:	3301      	adds	r3, #1
 8002672:	3402      	adds	r4, #2
 8002674:	a923      	add	r1, sp, #140	; 0x8c
 8002676:	2202      	movs	r2, #2
 8002678:	2b07      	cmp	r3, #7
 800267a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800267e:	e9cb 1200 	strd	r1, r2, [fp]
 8002682:	f300 8415 	bgt.w	8002eb0 <_vfprintf_r+0xc20>
 8002686:	f10b 0b08 	add.w	fp, fp, #8
 800268a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800268c:	2b80      	cmp	r3, #128	; 0x80
 800268e:	f000 8331 	beq.w	8002cf4 <_vfprintf_r+0xa64>
 8002692:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002694:	eba9 0503 	sub.w	r5, r9, r3
 8002698:	2d00      	cmp	r5, #0
 800269a:	dd37      	ble.n	800270c <_vfprintf_r+0x47c>
 800269c:	2d10      	cmp	r5, #16
 800269e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80026a0:	4b90      	ldr	r3, [pc, #576]	; (80028e4 <_vfprintf_r+0x654>)
 80026a2:	dd28      	ble.n	80026f6 <_vfprintf_r+0x466>
 80026a4:	4659      	mov	r1, fp
 80026a6:	4620      	mov	r0, r4
 80026a8:	46bb      	mov	fp, r7
 80026aa:	f04f 0910 	mov.w	r9, #16
 80026ae:	4637      	mov	r7, r6
 80026b0:	461c      	mov	r4, r3
 80026b2:	9e07      	ldr	r6, [sp, #28]
 80026b4:	e004      	b.n	80026c0 <_vfprintf_r+0x430>
 80026b6:	3d10      	subs	r5, #16
 80026b8:	2d10      	cmp	r5, #16
 80026ba:	f101 0108 	add.w	r1, r1, #8
 80026be:	dd15      	ble.n	80026ec <_vfprintf_r+0x45c>
 80026c0:	3201      	adds	r2, #1
 80026c2:	3010      	adds	r0, #16
 80026c4:	2a07      	cmp	r2, #7
 80026c6:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80026ca:	e9c1 4900 	strd	r4, r9, [r1]
 80026ce:	ddf2      	ble.n	80026b6 <_vfprintf_r+0x426>
 80026d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80026d2:	4631      	mov	r1, r6
 80026d4:	9803      	ldr	r0, [sp, #12]
 80026d6:	f004 f909 	bl	80068ec <__sprint_r>
 80026da:	2800      	cmp	r0, #0
 80026dc:	f040 83d9 	bne.w	8002e92 <_vfprintf_r+0xc02>
 80026e0:	3d10      	subs	r5, #16
 80026e2:	2d10      	cmp	r5, #16
 80026e4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80026e8:	a92d      	add	r1, sp, #180	; 0xb4
 80026ea:	dce9      	bgt.n	80026c0 <_vfprintf_r+0x430>
 80026ec:	463e      	mov	r6, r7
 80026ee:	4623      	mov	r3, r4
 80026f0:	465f      	mov	r7, fp
 80026f2:	4604      	mov	r4, r0
 80026f4:	468b      	mov	fp, r1
 80026f6:	3201      	adds	r2, #1
 80026f8:	442c      	add	r4, r5
 80026fa:	2a07      	cmp	r2, #7
 80026fc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002700:	e9cb 3500 	strd	r3, r5, [fp]
 8002704:	f300 83ef 	bgt.w	8002ee6 <_vfprintf_r+0xc56>
 8002708:	f10b 0b08 	add.w	fp, fp, #8
 800270c:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002710:	f040 8280 	bne.w	8002c14 <_vfprintf_r+0x984>
 8002714:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002716:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002718:	f8cb 7000 	str.w	r7, [fp]
 800271c:	3301      	adds	r3, #1
 800271e:	4414      	add	r4, r2
 8002720:	2b07      	cmp	r3, #7
 8002722:	942c      	str	r4, [sp, #176]	; 0xb0
 8002724:	f8cb 2004 	str.w	r2, [fp, #4]
 8002728:	932b      	str	r3, [sp, #172]	; 0xac
 800272a:	f300 8392 	bgt.w	8002e52 <_vfprintf_r+0xbc2>
 800272e:	f10b 0b08 	add.w	fp, fp, #8
 8002732:	f018 0f04 	tst.w	r8, #4
 8002736:	d03b      	beq.n	80027b0 <_vfprintf_r+0x520>
 8002738:	9b06      	ldr	r3, [sp, #24]
 800273a:	9a04      	ldr	r2, [sp, #16]
 800273c:	1a9d      	subs	r5, r3, r2
 800273e:	2d00      	cmp	r5, #0
 8002740:	dd36      	ble.n	80027b0 <_vfprintf_r+0x520>
 8002742:	2d10      	cmp	r5, #16
 8002744:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002746:	dd21      	ble.n	800278c <_vfprintf_r+0x4fc>
 8002748:	2610      	movs	r6, #16
 800274a:	9f03      	ldr	r7, [sp, #12]
 800274c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002750:	e004      	b.n	800275c <_vfprintf_r+0x4cc>
 8002752:	3d10      	subs	r5, #16
 8002754:	2d10      	cmp	r5, #16
 8002756:	f10b 0b08 	add.w	fp, fp, #8
 800275a:	dd17      	ble.n	800278c <_vfprintf_r+0x4fc>
 800275c:	3301      	adds	r3, #1
 800275e:	4a60      	ldr	r2, [pc, #384]	; (80028e0 <_vfprintf_r+0x650>)
 8002760:	3410      	adds	r4, #16
 8002762:	2b07      	cmp	r3, #7
 8002764:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002768:	e9cb 2600 	strd	r2, r6, [fp]
 800276c:	ddf1      	ble.n	8002752 <_vfprintf_r+0x4c2>
 800276e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002770:	4641      	mov	r1, r8
 8002772:	4638      	mov	r0, r7
 8002774:	f004 f8ba 	bl	80068ec <__sprint_r>
 8002778:	2800      	cmp	r0, #0
 800277a:	f040 856c 	bne.w	8003256 <_vfprintf_r+0xfc6>
 800277e:	3d10      	subs	r5, #16
 8002780:	2d10      	cmp	r5, #16
 8002782:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002786:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800278a:	dce7      	bgt.n	800275c <_vfprintf_r+0x4cc>
 800278c:	3301      	adds	r3, #1
 800278e:	4a54      	ldr	r2, [pc, #336]	; (80028e0 <_vfprintf_r+0x650>)
 8002790:	442c      	add	r4, r5
 8002792:	2b07      	cmp	r3, #7
 8002794:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002798:	e9cb 2500 	strd	r2, r5, [fp]
 800279c:	dd08      	ble.n	80027b0 <_vfprintf_r+0x520>
 800279e:	aa2a      	add	r2, sp, #168	; 0xa8
 80027a0:	9907      	ldr	r1, [sp, #28]
 80027a2:	9803      	ldr	r0, [sp, #12]
 80027a4:	f004 f8a2 	bl	80068ec <__sprint_r>
 80027a8:	2800      	cmp	r0, #0
 80027aa:	f040 82e9 	bne.w	8002d80 <_vfprintf_r+0xaf0>
 80027ae:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80027b0:	9904      	ldr	r1, [sp, #16]
 80027b2:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 80027b6:	428a      	cmp	r2, r1
 80027b8:	bfac      	ite	ge
 80027ba:	189b      	addge	r3, r3, r2
 80027bc:	185b      	addlt	r3, r3, r1
 80027be:	9305      	str	r3, [sp, #20]
 80027c0:	2c00      	cmp	r4, #0
 80027c2:	f040 82d5 	bne.w	8002d70 <_vfprintf_r+0xae0>
 80027c6:	2300      	movs	r3, #0
 80027c8:	932b      	str	r3, [sp, #172]	; 0xac
 80027ca:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80027cc:	b11b      	cbz	r3, 80027d6 <_vfprintf_r+0x546>
 80027ce:	990a      	ldr	r1, [sp, #40]	; 0x28
 80027d0:	9803      	ldr	r0, [sp, #12]
 80027d2:	f002 fc9d 	bl	8005110 <_free_r>
 80027d6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80027da:	4657      	mov	r7, sl
 80027dc:	783b      	ldrb	r3, [r7, #0]
 80027de:	2b00      	cmp	r3, #0
 80027e0:	f47f ada7 	bne.w	8002332 <_vfprintf_r+0xa2>
 80027e4:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80027e6:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80027ea:	2b00      	cmp	r3, #0
 80027ec:	f041 80e7 	bne.w	80039be <_vfprintf_r+0x172e>
 80027f0:	2300      	movs	r3, #0
 80027f2:	932b      	str	r3, [sp, #172]	; 0xac
 80027f4:	e2cb      	b.n	8002d8e <_vfprintf_r+0xafe>
 80027f6:	4643      	mov	r3, r8
 80027f8:	069a      	lsls	r2, r3, #26
 80027fa:	f140 814e 	bpl.w	8002a9a <_vfprintf_r+0x80a>
 80027fe:	9c08      	ldr	r4, [sp, #32]
 8002800:	3407      	adds	r4, #7
 8002802:	f024 0207 	bic.w	r2, r4, #7
 8002806:	f102 0108 	add.w	r1, r2, #8
 800280a:	e9d2 4500 	ldrd	r4, r5, [r2]
 800280e:	9108      	str	r1, [sp, #32]
 8002810:	2201      	movs	r2, #1
 8002812:	2100      	movs	r1, #0
 8002814:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002818:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800281c:	a956      	add	r1, sp, #344	; 0x158
 800281e:	9104      	str	r1, [sp, #16]
 8002820:	f47f aea2 	bne.w	8002568 <_vfprintf_r+0x2d8>
 8002824:	4698      	mov	r8, r3
 8002826:	2a01      	cmp	r2, #1
 8002828:	f000 8350 	beq.w	8002ecc <_vfprintf_r+0xc3c>
 800282c:	2a02      	cmp	r2, #2
 800282e:	f000 831b 	beq.w	8002e68 <_vfprintf_r+0xbd8>
 8002832:	a956      	add	r1, sp, #344	; 0x158
 8002834:	e000      	b.n	8002838 <_vfprintf_r+0x5a8>
 8002836:	4639      	mov	r1, r7
 8002838:	08e2      	lsrs	r2, r4, #3
 800283a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 800283e:	08e8      	lsrs	r0, r5, #3
 8002840:	f004 0307 	and.w	r3, r4, #7
 8002844:	4605      	mov	r5, r0
 8002846:	4614      	mov	r4, r2
 8002848:	3330      	adds	r3, #48	; 0x30
 800284a:	ea54 0205 	orrs.w	r2, r4, r5
 800284e:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002852:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002856:	d1ee      	bne.n	8002836 <_vfprintf_r+0x5a6>
 8002858:	f018 0f01 	tst.w	r8, #1
 800285c:	f000 8314 	beq.w	8002e88 <_vfprintf_r+0xbf8>
 8002860:	2b30      	cmp	r3, #48	; 0x30
 8002862:	f000 8311 	beq.w	8002e88 <_vfprintf_r+0xbf8>
 8002866:	9a04      	ldr	r2, [sp, #16]
 8002868:	3902      	subs	r1, #2
 800286a:	2330      	movs	r3, #48	; 0x30
 800286c:	1a52      	subs	r2, r2, r1
 800286e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002872:	9209      	str	r2, [sp, #36]	; 0x24
 8002874:	460f      	mov	r7, r1
 8002876:	e68c      	b.n	8002592 <_vfprintf_r+0x302>
 8002878:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800287c:	2200      	movs	r2, #0
 800287e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002882:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002886:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 800288a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800288e:	2b09      	cmp	r3, #9
 8002890:	d9f5      	bls.n	800287e <_vfprintf_r+0x5ee>
 8002892:	9206      	str	r2, [sp, #24]
 8002894:	e57c      	b.n	8002390 <_vfprintf_r+0x100>
 8002896:	4b14      	ldr	r3, [pc, #80]	; (80028e8 <_vfprintf_r+0x658>)
 8002898:	9317      	str	r3, [sp, #92]	; 0x5c
 800289a:	f018 0f20 	tst.w	r8, #32
 800289e:	f000 8114 	beq.w	8002aca <_vfprintf_r+0x83a>
 80028a2:	9c08      	ldr	r4, [sp, #32]
 80028a4:	3407      	adds	r4, #7
 80028a6:	f024 0307 	bic.w	r3, r4, #7
 80028aa:	e9d3 4500 	ldrd	r4, r5, [r3]
 80028ae:	f103 0208 	add.w	r2, r3, #8
 80028b2:	9208      	str	r2, [sp, #32]
 80028b4:	f018 0f01 	tst.w	r8, #1
 80028b8:	d009      	beq.n	80028ce <_vfprintf_r+0x63e>
 80028ba:	ea54 0305 	orrs.w	r3, r4, r5
 80028be:	d006      	beq.n	80028ce <_vfprintf_r+0x63e>
 80028c0:	2330      	movs	r3, #48	; 0x30
 80028c2:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 80028c6:	f048 0802 	orr.w	r8, r8, #2
 80028ca:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80028ce:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80028d2:	2202      	movs	r2, #2
 80028d4:	e79d      	b.n	8002812 <_vfprintf_r+0x582>
 80028d6:	f048 0801 	orr.w	r8, r8, #1
 80028da:	f89a 6000 	ldrb.w	r6, [sl]
 80028de:	e555      	b.n	800238c <_vfprintf_r+0xfc>
 80028e0:	08006fcc 	.word	0x08006fcc
 80028e4:	08006fdc 	.word	0x08006fdc
 80028e8:	08006f98 	.word	0x08006f98
 80028ec:	9e03      	ldr	r6, [sp, #12]
 80028ee:	4630      	mov	r0, r6
 80028f0:	f002 feaa 	bl	8005648 <_localeconv_r>
 80028f4:	6843      	ldr	r3, [r0, #4]
 80028f6:	9318      	str	r3, [sp, #96]	; 0x60
 80028f8:	4618      	mov	r0, r3
 80028fa:	f7fd fea1 	bl	8000640 <strlen>
 80028fe:	901b      	str	r0, [sp, #108]	; 0x6c
 8002900:	4604      	mov	r4, r0
 8002902:	4630      	mov	r0, r6
 8002904:	f002 fea0 	bl	8005648 <_localeconv_r>
 8002908:	6883      	ldr	r3, [r0, #8]
 800290a:	931a      	str	r3, [sp, #104]	; 0x68
 800290c:	2c00      	cmp	r4, #0
 800290e:	f43f adb8 	beq.w	8002482 <_vfprintf_r+0x1f2>
 8002912:	f89a 6000 	ldrb.w	r6, [sl]
 8002916:	2b00      	cmp	r3, #0
 8002918:	f43f ad38 	beq.w	800238c <_vfprintf_r+0xfc>
 800291c:	781b      	ldrb	r3, [r3, #0]
 800291e:	2b00      	cmp	r3, #0
 8002920:	f43f ad34 	beq.w	800238c <_vfprintf_r+0xfc>
 8002924:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002928:	e530      	b.n	800238c <_vfprintf_r+0xfc>
 800292a:	9b08      	ldr	r3, [sp, #32]
 800292c:	f89a 6000 	ldrb.w	r6, [sl]
 8002930:	681a      	ldr	r2, [r3, #0]
 8002932:	9206      	str	r2, [sp, #24]
 8002934:	2a00      	cmp	r2, #0
 8002936:	f103 0304 	add.w	r3, r3, #4
 800293a:	f2c0 8697 	blt.w	800366c <_vfprintf_r+0x13dc>
 800293e:	9308      	str	r3, [sp, #32]
 8002940:	e524      	b.n	800238c <_vfprintf_r+0xfc>
 8002942:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002946:	f89a 6000 	ldrb.w	r6, [sl]
 800294a:	e51f      	b.n	800238c <_vfprintf_r+0xfc>
 800294c:	f89a 6000 	ldrb.w	r6, [sl]
 8002950:	f048 0804 	orr.w	r8, r8, #4
 8002954:	e51a      	b.n	800238c <_vfprintf_r+0xfc>
 8002956:	f89a 6000 	ldrb.w	r6, [sl]
 800295a:	2e2a      	cmp	r6, #42	; 0x2a
 800295c:	f10a 0201 	add.w	r2, sl, #1
 8002960:	f001 81b0 	beq.w	8003cc4 <_vfprintf_r+0x1a34>
 8002964:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002968:	2b09      	cmp	r3, #9
 800296a:	4692      	mov	sl, r2
 800296c:	f04f 0900 	mov.w	r9, #0
 8002970:	f63f ad0e 	bhi.w	8002390 <_vfprintf_r+0x100>
 8002974:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002978:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 800297c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002980:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002984:	2b09      	cmp	r3, #9
 8002986:	d9f5      	bls.n	8002974 <_vfprintf_r+0x6e4>
 8002988:	e502      	b.n	8002390 <_vfprintf_r+0x100>
 800298a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 800298e:	f89a 6000 	ldrb.w	r6, [sl]
 8002992:	e4fb      	b.n	800238c <_vfprintf_r+0xfc>
 8002994:	9c08      	ldr	r4, [sp, #32]
 8002996:	3407      	adds	r4, #7
 8002998:	f024 0407 	bic.w	r4, r4, #7
 800299c:	ed94 7b00 	vldr	d7, [r4]
 80029a0:	ec52 1b17 	vmov	r1, r2, d7
 80029a4:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80029a8:	931d      	str	r3, [sp, #116]	; 0x74
 80029aa:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 80029ae:	3408      	adds	r4, #8
 80029b0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80029b4:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80029b8:	4bba      	ldr	r3, [pc, #744]	; (8002ca4 <_vfprintf_r+0xa14>)
 80029ba:	9408      	str	r4, [sp, #32]
 80029bc:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80029c0:	f7fe fb54 	bl	800106c <__aeabi_dcmpun>
 80029c4:	2800      	cmp	r0, #0
 80029c6:	f040 846f 	bne.w	80032a8 <_vfprintf_r+0x1018>
 80029ca:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80029ce:	4bb5      	ldr	r3, [pc, #724]	; (8002ca4 <_vfprintf_r+0xa14>)
 80029d0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80029d4:	f7fe fb2c 	bl	8001030 <__aeabi_dcmple>
 80029d8:	2800      	cmp	r0, #0
 80029da:	f040 8465 	bne.w	80032a8 <_vfprintf_r+0x1018>
 80029de:	2200      	movs	r2, #0
 80029e0:	2300      	movs	r3, #0
 80029e2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80029e6:	f7fe fb19 	bl	800101c <__aeabi_dcmplt>
 80029ea:	2800      	cmp	r0, #0
 80029ec:	f040 855b 	bne.w	80034a6 <_vfprintf_r+0x1216>
 80029f0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80029f4:	4fac      	ldr	r7, [pc, #688]	; (8002ca8 <_vfprintf_r+0xa18>)
 80029f6:	4bad      	ldr	r3, [pc, #692]	; (8002cac <_vfprintf_r+0xa1c>)
 80029f8:	2000      	movs	r0, #0
 80029fa:	2103      	movs	r1, #3
 80029fc:	9104      	str	r1, [sp, #16]
 80029fe:	900a      	str	r0, [sp, #40]	; 0x28
 8002a00:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002a04:	2e47      	cmp	r6, #71	; 0x47
 8002a06:	bfd8      	it	le
 8002a08:	461f      	movle	r7, r3
 8002a0a:	9109      	str	r1, [sp, #36]	; 0x24
 8002a0c:	4681      	mov	r9, r0
 8002a0e:	900f      	str	r0, [sp, #60]	; 0x3c
 8002a10:	9014      	str	r0, [sp, #80]	; 0x50
 8002a12:	9011      	str	r0, [sp, #68]	; 0x44
 8002a14:	e5c9      	b.n	80025aa <_vfprintf_r+0x31a>
 8002a16:	9808      	ldr	r0, [sp, #32]
 8002a18:	2300      	movs	r3, #0
 8002a1a:	6801      	ldr	r1, [r0, #0]
 8002a1c:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002a20:	461a      	mov	r2, r3
 8002a22:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002a26:	2301      	movs	r3, #1
 8002a28:	1d01      	adds	r1, r0, #4
 8002a2a:	9304      	str	r3, [sp, #16]
 8002a2c:	920a      	str	r2, [sp, #40]	; 0x28
 8002a2e:	4691      	mov	r9, r2
 8002a30:	920f      	str	r2, [sp, #60]	; 0x3c
 8002a32:	9214      	str	r2, [sp, #80]	; 0x50
 8002a34:	9211      	str	r2, [sp, #68]	; 0x44
 8002a36:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002a3a:	af3d      	add	r7, sp, #244	; 0xf4
 8002a3c:	e5b9      	b.n	80025b2 <_vfprintf_r+0x322>
 8002a3e:	9b08      	ldr	r3, [sp, #32]
 8002a40:	681f      	ldr	r7, [r3, #0]
 8002a42:	2500      	movs	r5, #0
 8002a44:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002a48:	1d1c      	adds	r4, r3, #4
 8002a4a:	2f00      	cmp	r7, #0
 8002a4c:	f000 8639 	beq.w	80036c2 <_vfprintf_r+0x1432>
 8002a50:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002a54:	f000 8711 	beq.w	800387a <_vfprintf_r+0x15ea>
 8002a58:	464a      	mov	r2, r9
 8002a5a:	4629      	mov	r1, r5
 8002a5c:	4638      	mov	r0, r7
 8002a5e:	f7fd fe5f 	bl	8000720 <memchr>
 8002a62:	900a      	str	r0, [sp, #40]	; 0x28
 8002a64:	2800      	cmp	r0, #0
 8002a66:	f000 85e7 	beq.w	8003638 <_vfprintf_r+0x13a8>
 8002a6a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002a6c:	1bdb      	subs	r3, r3, r7
 8002a6e:	9309      	str	r3, [sp, #36]	; 0x24
 8002a70:	46a9      	mov	r9, r5
 8002a72:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002a76:	9408      	str	r4, [sp, #32]
 8002a78:	9304      	str	r3, [sp, #16]
 8002a7a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002a7e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002a82:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002a86:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002a8a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002a8e:	e58c      	b.n	80025aa <_vfprintf_r+0x31a>
 8002a90:	f048 0310 	orr.w	r3, r8, #16
 8002a94:	069a      	lsls	r2, r3, #26
 8002a96:	f53f aeb2 	bmi.w	80027fe <_vfprintf_r+0x56e>
 8002a9a:	9a08      	ldr	r2, [sp, #32]
 8002a9c:	06df      	lsls	r7, r3, #27
 8002a9e:	f102 0104 	add.w	r1, r2, #4
 8002aa2:	f100 837e 	bmi.w	80031a2 <_vfprintf_r+0xf12>
 8002aa6:	065d      	lsls	r5, r3, #25
 8002aa8:	9a08      	ldr	r2, [sp, #32]
 8002aaa:	f100 84e4 	bmi.w	8003476 <_vfprintf_r+0x11e6>
 8002aae:	059c      	lsls	r4, r3, #22
 8002ab0:	f140 8377 	bpl.w	80031a2 <_vfprintf_r+0xf12>
 8002ab4:	7814      	ldrb	r4, [r2, #0]
 8002ab6:	9108      	str	r1, [sp, #32]
 8002ab8:	2500      	movs	r5, #0
 8002aba:	2201      	movs	r2, #1
 8002abc:	e6a9      	b.n	8002812 <_vfprintf_r+0x582>
 8002abe:	4b7c      	ldr	r3, [pc, #496]	; (8002cb0 <_vfprintf_r+0xa20>)
 8002ac0:	9317      	str	r3, [sp, #92]	; 0x5c
 8002ac2:	f018 0f20 	tst.w	r8, #32
 8002ac6:	f47f aeec 	bne.w	80028a2 <_vfprintf_r+0x612>
 8002aca:	9a08      	ldr	r2, [sp, #32]
 8002acc:	f018 0f10 	tst.w	r8, #16
 8002ad0:	f102 0304 	add.w	r3, r2, #4
 8002ad4:	f040 8354 	bne.w	8003180 <_vfprintf_r+0xef0>
 8002ad8:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002adc:	9a08      	ldr	r2, [sp, #32]
 8002ade:	f040 84d0 	bne.w	8003482 <_vfprintf_r+0x11f2>
 8002ae2:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002ae6:	f000 834b 	beq.w	8003180 <_vfprintf_r+0xef0>
 8002aea:	7814      	ldrb	r4, [r2, #0]
 8002aec:	9308      	str	r3, [sp, #32]
 8002aee:	2500      	movs	r5, #0
 8002af0:	e6e0      	b.n	80028b4 <_vfprintf_r+0x624>
 8002af2:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002af6:	f89a 6000 	ldrb.w	r6, [sl]
 8002afa:	2b00      	cmp	r3, #0
 8002afc:	f47f ac46 	bne.w	800238c <_vfprintf_r+0xfc>
 8002b00:	2320      	movs	r3, #32
 8002b02:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002b06:	e441      	b.n	800238c <_vfprintf_r+0xfc>
 8002b08:	f89a 6000 	ldrb.w	r6, [sl]
 8002b0c:	2e6c      	cmp	r6, #108	; 0x6c
 8002b0e:	bf03      	ittte	eq
 8002b10:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002b14:	f048 0820 	orreq.w	r8, r8, #32
 8002b18:	f10a 0a01 	addeq.w	sl, sl, #1
 8002b1c:	f048 0810 	orrne.w	r8, r8, #16
 8002b20:	e434      	b.n	800238c <_vfprintf_r+0xfc>
 8002b22:	9a08      	ldr	r2, [sp, #32]
 8002b24:	f018 0f20 	tst.w	r8, #32
 8002b28:	f852 3b04 	ldr.w	r3, [r2], #4
 8002b2c:	9208      	str	r2, [sp, #32]
 8002b2e:	f000 83a1 	beq.w	8003274 <_vfprintf_r+0xfe4>
 8002b32:	9a05      	ldr	r2, [sp, #20]
 8002b34:	4610      	mov	r0, r2
 8002b36:	17d1      	asrs	r1, r2, #31
 8002b38:	e9c3 0100 	strd	r0, r1, [r3]
 8002b3c:	4657      	mov	r7, sl
 8002b3e:	e64d      	b.n	80027dc <_vfprintf_r+0x54c>
 8002b40:	f89a 6000 	ldrb.w	r6, [sl]
 8002b44:	2e68      	cmp	r6, #104	; 0x68
 8002b46:	bf03      	ittte	eq
 8002b48:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002b4c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002b50:	f10a 0a01 	addeq.w	sl, sl, #1
 8002b54:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002b58:	e418      	b.n	800238c <_vfprintf_r+0xfc>
 8002b5a:	9908      	ldr	r1, [sp, #32]
 8002b5c:	4b55      	ldr	r3, [pc, #340]	; (8002cb4 <_vfprintf_r+0xa24>)
 8002b5e:	680c      	ldr	r4, [r1, #0]
 8002b60:	9317      	str	r3, [sp, #92]	; 0x5c
 8002b62:	f647 0230 	movw	r2, #30768	; 0x7830
 8002b66:	3104      	adds	r1, #4
 8002b68:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002b6c:	f048 0302 	orr.w	r3, r8, #2
 8002b70:	9108      	str	r1, [sp, #32]
 8002b72:	2500      	movs	r5, #0
 8002b74:	2202      	movs	r2, #2
 8002b76:	2678      	movs	r6, #120	; 0x78
 8002b78:	e64b      	b.n	8002812 <_vfprintf_r+0x582>
 8002b7a:	f048 0808 	orr.w	r8, r8, #8
 8002b7e:	f89a 6000 	ldrb.w	r6, [sl]
 8002b82:	e403      	b.n	800238c <_vfprintf_r+0xfc>
 8002b84:	f048 0310 	orr.w	r3, r8, #16
 8002b88:	069f      	lsls	r7, r3, #26
 8002b8a:	f53f acd1 	bmi.w	8002530 <_vfprintf_r+0x2a0>
 8002b8e:	9908      	ldr	r1, [sp, #32]
 8002b90:	06dd      	lsls	r5, r3, #27
 8002b92:	f101 0204 	add.w	r2, r1, #4
 8002b96:	f100 82fd 	bmi.w	8003194 <_vfprintf_r+0xf04>
 8002b9a:	065c      	lsls	r4, r3, #25
 8002b9c:	9908      	ldr	r1, [sp, #32]
 8002b9e:	f100 8475 	bmi.w	800348c <_vfprintf_r+0x11fc>
 8002ba2:	0598      	lsls	r0, r3, #22
 8002ba4:	f140 82f6 	bpl.w	8003194 <_vfprintf_r+0xf04>
 8002ba8:	f991 4000 	ldrsb.w	r4, [r1]
 8002bac:	9208      	str	r2, [sp, #32]
 8002bae:	17e5      	asrs	r5, r4, #31
 8002bb0:	4620      	mov	r0, r4
 8002bb2:	4629      	mov	r1, r5
 8002bb4:	e4c7      	b.n	8002546 <_vfprintf_r+0x2b6>
 8002bb6:	9a08      	ldr	r2, [sp, #32]
 8002bb8:	f018 0f10 	tst.w	r8, #16
 8002bbc:	f102 0304 	add.w	r3, r2, #4
 8002bc0:	f040 82e3 	bne.w	800318a <_vfprintf_r+0xefa>
 8002bc4:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002bc8:	9a08      	ldr	r2, [sp, #32]
 8002bca:	f040 8467 	bne.w	800349c <_vfprintf_r+0x120c>
 8002bce:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002bd2:	f000 82da 	beq.w	800318a <_vfprintf_r+0xefa>
 8002bd6:	7814      	ldrb	r4, [r2, #0]
 8002bd8:	9308      	str	r3, [sp, #32]
 8002bda:	2500      	movs	r5, #0
 8002bdc:	e488      	b.n	80024f0 <_vfprintf_r+0x260>
 8002bde:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002be2:	f002 fd45 	bl	8005670 <__retarget_lock_release_recursive>
 8002be6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002bea:	9305      	str	r3, [sp, #20]
 8002bec:	e443      	b.n	8002476 <_vfprintf_r+0x1e6>
 8002bee:	2e00      	cmp	r6, #0
 8002bf0:	f43f adf8 	beq.w	80027e4 <_vfprintf_r+0x554>
 8002bf4:	2300      	movs	r3, #0
 8002bf6:	2101      	movs	r1, #1
 8002bf8:	461a      	mov	r2, r3
 8002bfa:	9104      	str	r1, [sp, #16]
 8002bfc:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002c00:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002c04:	930a      	str	r3, [sp, #40]	; 0x28
 8002c06:	4699      	mov	r9, r3
 8002c08:	930f      	str	r3, [sp, #60]	; 0x3c
 8002c0a:	9314      	str	r3, [sp, #80]	; 0x50
 8002c0c:	9311      	str	r3, [sp, #68]	; 0x44
 8002c0e:	9109      	str	r1, [sp, #36]	; 0x24
 8002c10:	af3d      	add	r7, sp, #244	; 0xf4
 8002c12:	e4ce      	b.n	80025b2 <_vfprintf_r+0x322>
 8002c14:	2e65      	cmp	r6, #101	; 0x65
 8002c16:	f340 80ca 	ble.w	8002dae <_vfprintf_r+0xb1e>
 8002c1a:	2200      	movs	r2, #0
 8002c1c:	2300      	movs	r3, #0
 8002c1e:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002c22:	f7fe f9f1 	bl	8001008 <__aeabi_dcmpeq>
 8002c26:	2800      	cmp	r0, #0
 8002c28:	f000 8169 	beq.w	8002efe <_vfprintf_r+0xc6e>
 8002c2c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002c2e:	4a22      	ldr	r2, [pc, #136]	; (8002cb8 <_vfprintf_r+0xa28>)
 8002c30:	f8cb 2000 	str.w	r2, [fp]
 8002c34:	3301      	adds	r3, #1
 8002c36:	3401      	adds	r4, #1
 8002c38:	2201      	movs	r2, #1
 8002c3a:	2b07      	cmp	r3, #7
 8002c3c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c40:	f8cb 2004 	str.w	r2, [fp, #4]
 8002c44:	f300 8406 	bgt.w	8003454 <_vfprintf_r+0x11c4>
 8002c48:	f10b 0b08 	add.w	fp, fp, #8
 8002c4c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002c4e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002c50:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002c52:	4293      	cmp	r3, r2
 8002c54:	db03      	blt.n	8002c5e <_vfprintf_r+0x9ce>
 8002c56:	f018 0f01 	tst.w	r8, #1
 8002c5a:	f43f ad6a 	beq.w	8002732 <_vfprintf_r+0x4a2>
 8002c5e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002c60:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002c62:	f8cb 2000 	str.w	r2, [fp]
 8002c66:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002c68:	f8cb 2004 	str.w	r2, [fp, #4]
 8002c6c:	3301      	adds	r3, #1
 8002c6e:	4414      	add	r4, r2
 8002c70:	2b07      	cmp	r3, #7
 8002c72:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c76:	f300 8517 	bgt.w	80036a8 <_vfprintf_r+0x1418>
 8002c7a:	f10b 0b08 	add.w	fp, fp, #8
 8002c7e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002c80:	1e5d      	subs	r5, r3, #1
 8002c82:	2d00      	cmp	r5, #0
 8002c84:	f77f ad55 	ble.w	8002732 <_vfprintf_r+0x4a2>
 8002c88:	2d10      	cmp	r5, #16
 8002c8a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002c8c:	4b0b      	ldr	r3, [pc, #44]	; (8002cbc <_vfprintf_r+0xa2c>)
 8002c8e:	f340 82e7 	ble.w	8003260 <_vfprintf_r+0xfd0>
 8002c92:	4619      	mov	r1, r3
 8002c94:	2610      	movs	r6, #16
 8002c96:	4623      	mov	r3, r4
 8002c98:	9f03      	ldr	r7, [sp, #12]
 8002c9a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002c9e:	460c      	mov	r4, r1
 8002ca0:	e014      	b.n	8002ccc <_vfprintf_r+0xa3c>
 8002ca2:	bf00      	nop
 8002ca4:	7fefffff 	.word	0x7fefffff
 8002ca8:	08006f8c 	.word	0x08006f8c
 8002cac:	08006f88 	.word	0x08006f88
 8002cb0:	08006fac 	.word	0x08006fac
 8002cb4:	08006f98 	.word	0x08006f98
 8002cb8:	08006fc8 	.word	0x08006fc8
 8002cbc:	08006fdc 	.word	0x08006fdc
 8002cc0:	f10b 0b08 	add.w	fp, fp, #8
 8002cc4:	3d10      	subs	r5, #16
 8002cc6:	2d10      	cmp	r5, #16
 8002cc8:	f340 82c7 	ble.w	800325a <_vfprintf_r+0xfca>
 8002ccc:	3201      	adds	r2, #1
 8002cce:	3310      	adds	r3, #16
 8002cd0:	2a07      	cmp	r2, #7
 8002cd2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002cd6:	e9cb 4600 	strd	r4, r6, [fp]
 8002cda:	ddf1      	ble.n	8002cc0 <_vfprintf_r+0xa30>
 8002cdc:	aa2a      	add	r2, sp, #168	; 0xa8
 8002cde:	4649      	mov	r1, r9
 8002ce0:	4638      	mov	r0, r7
 8002ce2:	f003 fe03 	bl	80068ec <__sprint_r>
 8002ce6:	2800      	cmp	r0, #0
 8002ce8:	d14c      	bne.n	8002d84 <_vfprintf_r+0xaf4>
 8002cea:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002cee:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002cf2:	e7e7      	b.n	8002cc4 <_vfprintf_r+0xa34>
 8002cf4:	9b06      	ldr	r3, [sp, #24]
 8002cf6:	9a04      	ldr	r2, [sp, #16]
 8002cf8:	1a9d      	subs	r5, r3, r2
 8002cfa:	2d00      	cmp	r5, #0
 8002cfc:	f77f acc9 	ble.w	8002692 <_vfprintf_r+0x402>
 8002d00:	2d10      	cmp	r5, #16
 8002d02:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002d04:	4bbc      	ldr	r3, [pc, #752]	; (8002ff8 <_vfprintf_r+0xd68>)
 8002d06:	dd27      	ble.n	8002d58 <_vfprintf_r+0xac8>
 8002d08:	4659      	mov	r1, fp
 8002d0a:	4620      	mov	r0, r4
 8002d0c:	46bb      	mov	fp, r7
 8002d0e:	461c      	mov	r4, r3
 8002d10:	4637      	mov	r7, r6
 8002d12:	9e07      	ldr	r6, [sp, #28]
 8002d14:	e004      	b.n	8002d20 <_vfprintf_r+0xa90>
 8002d16:	3d10      	subs	r5, #16
 8002d18:	2d10      	cmp	r5, #16
 8002d1a:	f101 0108 	add.w	r1, r1, #8
 8002d1e:	dd16      	ble.n	8002d4e <_vfprintf_r+0xabe>
 8002d20:	3201      	adds	r2, #1
 8002d22:	3010      	adds	r0, #16
 8002d24:	2310      	movs	r3, #16
 8002d26:	2a07      	cmp	r2, #7
 8002d28:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002d2c:	600c      	str	r4, [r1, #0]
 8002d2e:	604b      	str	r3, [r1, #4]
 8002d30:	ddf1      	ble.n	8002d16 <_vfprintf_r+0xa86>
 8002d32:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d34:	4631      	mov	r1, r6
 8002d36:	9803      	ldr	r0, [sp, #12]
 8002d38:	f003 fdd8 	bl	80068ec <__sprint_r>
 8002d3c:	2800      	cmp	r0, #0
 8002d3e:	f040 80a8 	bne.w	8002e92 <_vfprintf_r+0xc02>
 8002d42:	3d10      	subs	r5, #16
 8002d44:	2d10      	cmp	r5, #16
 8002d46:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002d4a:	a92d      	add	r1, sp, #180	; 0xb4
 8002d4c:	dce8      	bgt.n	8002d20 <_vfprintf_r+0xa90>
 8002d4e:	463e      	mov	r6, r7
 8002d50:	4623      	mov	r3, r4
 8002d52:	465f      	mov	r7, fp
 8002d54:	4604      	mov	r4, r0
 8002d56:	468b      	mov	fp, r1
 8002d58:	3201      	adds	r2, #1
 8002d5a:	442c      	add	r4, r5
 8002d5c:	2a07      	cmp	r2, #7
 8002d5e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002d62:	e9cb 3500 	strd	r3, r5, [fp]
 8002d66:	f300 8292 	bgt.w	800328e <_vfprintf_r+0xffe>
 8002d6a:	f10b 0b08 	add.w	fp, fp, #8
 8002d6e:	e490      	b.n	8002692 <_vfprintf_r+0x402>
 8002d70:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d72:	9907      	ldr	r1, [sp, #28]
 8002d74:	9803      	ldr	r0, [sp, #12]
 8002d76:	f003 fdb9 	bl	80068ec <__sprint_r>
 8002d7a:	2800      	cmp	r0, #0
 8002d7c:	f43f ad23 	beq.w	80027c6 <_vfprintf_r+0x536>
 8002d80:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002d84:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002d86:	b111      	cbz	r1, 8002d8e <_vfprintf_r+0xafe>
 8002d88:	9803      	ldr	r0, [sp, #12]
 8002d8a:	f002 f9c1 	bl	8005110 <_free_r>
 8002d8e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002d92:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002d96:	07d0      	lsls	r0, r2, #31
 8002d98:	d402      	bmi.n	8002da0 <_vfprintf_r+0xb10>
 8002d9a:	0599      	lsls	r1, r3, #22
 8002d9c:	f140 81d0 	bpl.w	8003140 <_vfprintf_r+0xeb0>
 8002da0:	065a      	lsls	r2, r3, #25
 8002da2:	f53f ab65 	bmi.w	8002470 <_vfprintf_r+0x1e0>
 8002da6:	9805      	ldr	r0, [sp, #20]
 8002da8:	b057      	add	sp, #348	; 0x15c
 8002daa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002dae:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002db0:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002db2:	2a01      	cmp	r2, #1
 8002db4:	f104 0401 	add.w	r4, r4, #1
 8002db8:	f103 0501 	add.w	r5, r3, #1
 8002dbc:	f10b 0608 	add.w	r6, fp, #8
 8002dc0:	f340 811c 	ble.w	8002ffc <_vfprintf_r+0xd6c>
 8002dc4:	2301      	movs	r3, #1
 8002dc6:	2d07      	cmp	r5, #7
 8002dc8:	f8cb 7000 	str.w	r7, [fp]
 8002dcc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002dd0:	f8cb 3004 	str.w	r3, [fp, #4]
 8002dd4:	f300 81bb 	bgt.w	800314e <_vfprintf_r+0xebe>
 8002dd8:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002dda:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002ddc:	1c69      	adds	r1, r5, #1
 8002dde:	441c      	add	r4, r3
 8002de0:	2907      	cmp	r1, #7
 8002de2:	910b      	str	r1, [sp, #44]	; 0x2c
 8002de4:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8002de8:	e9c6 2300 	strd	r2, r3, [r6]
 8002dec:	f300 81bb 	bgt.w	8003166 <_vfprintf_r+0xed6>
 8002df0:	3608      	adds	r6, #8
 8002df2:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002df4:	1c53      	adds	r3, r2, #1
 8002df6:	461d      	mov	r5, r3
 8002df8:	9509      	str	r5, [sp, #36]	; 0x24
 8002dfa:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8002dfc:	930e      	str	r3, [sp, #56]	; 0x38
 8002dfe:	2200      	movs	r2, #0
 8002e00:	2300      	movs	r3, #0
 8002e02:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002e06:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8002e0a:	f106 0b08 	add.w	fp, r6, #8
 8002e0e:	f7fe f8fb 	bl	8001008 <__aeabi_dcmpeq>
 8002e12:	2800      	cmp	r0, #0
 8002e14:	f040 80c2 	bne.w	8002f9c <_vfprintf_r+0xd0c>
 8002e18:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002e1a:	f8c6 9004 	str.w	r9, [r6, #4]
 8002e1e:	3701      	adds	r7, #1
 8002e20:	444c      	add	r4, r9
 8002e22:	2d07      	cmp	r5, #7
 8002e24:	6037      	str	r7, [r6, #0]
 8002e26:	942c      	str	r4, [sp, #176]	; 0xb0
 8002e28:	952b      	str	r5, [sp, #172]	; 0xac
 8002e2a:	f300 80f9 	bgt.w	8003020 <_vfprintf_r+0xd90>
 8002e2e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002e30:	f106 0310 	add.w	r3, r6, #16
 8002e34:	3202      	adds	r2, #2
 8002e36:	465e      	mov	r6, fp
 8002e38:	9209      	str	r2, [sp, #36]	; 0x24
 8002e3a:	469b      	mov	fp, r3
 8002e3c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8002e3e:	6072      	str	r2, [r6, #4]
 8002e40:	4414      	add	r4, r2
 8002e42:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002e44:	942c      	str	r4, [sp, #176]	; 0xb0
 8002e46:	ab26      	add	r3, sp, #152	; 0x98
 8002e48:	2a07      	cmp	r2, #7
 8002e4a:	922b      	str	r2, [sp, #172]	; 0xac
 8002e4c:	6033      	str	r3, [r6, #0]
 8002e4e:	f77f ac70 	ble.w	8002732 <_vfprintf_r+0x4a2>
 8002e52:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e54:	9907      	ldr	r1, [sp, #28]
 8002e56:	9803      	ldr	r0, [sp, #12]
 8002e58:	f003 fd48 	bl	80068ec <__sprint_r>
 8002e5c:	2800      	cmp	r0, #0
 8002e5e:	d18f      	bne.n	8002d80 <_vfprintf_r+0xaf0>
 8002e60:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002e62:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002e66:	e464      	b.n	8002732 <_vfprintf_r+0x4a2>
 8002e68:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8002e6a:	af56      	add	r7, sp, #344	; 0x158
 8002e6c:	0923      	lsrs	r3, r4, #4
 8002e6e:	f004 010f 	and.w	r1, r4, #15
 8002e72:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8002e76:	092a      	lsrs	r2, r5, #4
 8002e78:	461c      	mov	r4, r3
 8002e7a:	4615      	mov	r5, r2
 8002e7c:	5c43      	ldrb	r3, [r0, r1]
 8002e7e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002e82:	ea54 0305 	orrs.w	r3, r4, r5
 8002e86:	d1f1      	bne.n	8002e6c <_vfprintf_r+0xbdc>
 8002e88:	9b04      	ldr	r3, [sp, #16]
 8002e8a:	1bdb      	subs	r3, r3, r7
 8002e8c:	9309      	str	r3, [sp, #36]	; 0x24
 8002e8e:	f7ff bb80 	b.w	8002592 <_vfprintf_r+0x302>
 8002e92:	46b1      	mov	r9, r6
 8002e94:	e776      	b.n	8002d84 <_vfprintf_r+0xaf4>
 8002e96:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e98:	9907      	ldr	r1, [sp, #28]
 8002e9a:	9803      	ldr	r0, [sp, #12]
 8002e9c:	f003 fd26 	bl	80068ec <__sprint_r>
 8002ea0:	2800      	cmp	r0, #0
 8002ea2:	f47f af6d 	bne.w	8002d80 <_vfprintf_r+0xaf0>
 8002ea6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002ea8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002eac:	f7ff bbdd 	b.w	800266a <_vfprintf_r+0x3da>
 8002eb0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002eb2:	9907      	ldr	r1, [sp, #28]
 8002eb4:	9803      	ldr	r0, [sp, #12]
 8002eb6:	f003 fd19 	bl	80068ec <__sprint_r>
 8002eba:	2800      	cmp	r0, #0
 8002ebc:	f47f af60 	bne.w	8002d80 <_vfprintf_r+0xaf0>
 8002ec0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002ec2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002ec6:	f7ff bbe0 	b.w	800268a <_vfprintf_r+0x3fa>
 8002eca:	4698      	mov	r8, r3
 8002ecc:	2d00      	cmp	r5, #0
 8002ece:	bf08      	it	eq
 8002ed0:	2c0a      	cmpeq	r4, #10
 8002ed2:	f080 8170 	bcs.w	80031b6 <_vfprintf_r+0xf26>
 8002ed6:	af56      	add	r7, sp, #344	; 0x158
 8002ed8:	3430      	adds	r4, #48	; 0x30
 8002eda:	2301      	movs	r3, #1
 8002edc:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8002ee0:	9309      	str	r3, [sp, #36]	; 0x24
 8002ee2:	f7ff bb56 	b.w	8002592 <_vfprintf_r+0x302>
 8002ee6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ee8:	9907      	ldr	r1, [sp, #28]
 8002eea:	9803      	ldr	r0, [sp, #12]
 8002eec:	f003 fcfe 	bl	80068ec <__sprint_r>
 8002ef0:	2800      	cmp	r0, #0
 8002ef2:	f47f af45 	bne.w	8002d80 <_vfprintf_r+0xaf0>
 8002ef6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002ef8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002efc:	e406      	b.n	800270c <_vfprintf_r+0x47c>
 8002efe:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002f00:	2b00      	cmp	r3, #0
 8002f02:	f340 8273 	ble.w	80033ec <_vfprintf_r+0x115c>
 8002f06:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8002f0a:	4293      	cmp	r3, r2
 8002f0c:	bfa8      	it	ge
 8002f0e:	4613      	movge	r3, r2
 8002f10:	2b00      	cmp	r3, #0
 8002f12:	461d      	mov	r5, r3
 8002f14:	dd0d      	ble.n	8002f32 <_vfprintf_r+0xca2>
 8002f16:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f18:	f8cb 7000 	str.w	r7, [fp]
 8002f1c:	3301      	adds	r3, #1
 8002f1e:	442c      	add	r4, r5
 8002f20:	2b07      	cmp	r3, #7
 8002f22:	942c      	str	r4, [sp, #176]	; 0xb0
 8002f24:	f8cb 5004 	str.w	r5, [fp, #4]
 8002f28:	932b      	str	r3, [sp, #172]	; 0xac
 8002f2a:	f300 82c1 	bgt.w	80034b0 <_vfprintf_r+0x1220>
 8002f2e:	f10b 0b08 	add.w	fp, fp, #8
 8002f32:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002f34:	2d00      	cmp	r5, #0
 8002f36:	bfa8      	it	ge
 8002f38:	1b5b      	subge	r3, r3, r5
 8002f3a:	2b00      	cmp	r3, #0
 8002f3c:	461d      	mov	r5, r3
 8002f3e:	f340 8099 	ble.w	8003074 <_vfprintf_r+0xde4>
 8002f42:	2d10      	cmp	r5, #16
 8002f44:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002f46:	4b2c      	ldr	r3, [pc, #176]	; (8002ff8 <_vfprintf_r+0xd68>)
 8002f48:	f340 83db 	ble.w	8003702 <_vfprintf_r+0x1472>
 8002f4c:	4618      	mov	r0, r3
 8002f4e:	4621      	mov	r1, r4
 8002f50:	465b      	mov	r3, fp
 8002f52:	2610      	movs	r6, #16
 8002f54:	46bb      	mov	fp, r7
 8002f56:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8002f5a:	9c07      	ldr	r4, [sp, #28]
 8002f5c:	4607      	mov	r7, r0
 8002f5e:	e004      	b.n	8002f6a <_vfprintf_r+0xcda>
 8002f60:	3308      	adds	r3, #8
 8002f62:	3d10      	subs	r5, #16
 8002f64:	2d10      	cmp	r5, #16
 8002f66:	f340 83c7 	ble.w	80036f8 <_vfprintf_r+0x1468>
 8002f6a:	3201      	adds	r2, #1
 8002f6c:	3110      	adds	r1, #16
 8002f6e:	2a07      	cmp	r2, #7
 8002f70:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8002f74:	e9c3 7600 	strd	r7, r6, [r3]
 8002f78:	ddf2      	ble.n	8002f60 <_vfprintf_r+0xcd0>
 8002f7a:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f7c:	4621      	mov	r1, r4
 8002f7e:	4648      	mov	r0, r9
 8002f80:	f003 fcb4 	bl	80068ec <__sprint_r>
 8002f84:	2800      	cmp	r0, #0
 8002f86:	f040 84a5 	bne.w	80038d4 <_vfprintf_r+0x1644>
 8002f8a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8002f8e:	ab2d      	add	r3, sp, #180	; 0xb4
 8002f90:	e7e7      	b.n	8002f62 <_vfprintf_r+0xcd2>
 8002f92:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8002f96:	af56      	add	r7, sp, #344	; 0x158
 8002f98:	f7ff bafb 	b.w	8002592 <_vfprintf_r+0x302>
 8002f9c:	f1b9 0f00 	cmp.w	r9, #0
 8002fa0:	f77f af4c 	ble.w	8002e3c <_vfprintf_r+0xbac>
 8002fa4:	f1b9 0f10 	cmp.w	r9, #16
 8002fa8:	4b13      	ldr	r3, [pc, #76]	; (8002ff8 <_vfprintf_r+0xd68>)
 8002faa:	f340 8659 	ble.w	8003c60 <_vfprintf_r+0x19d0>
 8002fae:	4619      	mov	r1, r3
 8002fb0:	4622      	mov	r2, r4
 8002fb2:	4633      	mov	r3, r6
 8002fb4:	2710      	movs	r7, #16
 8002fb6:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8002fba:	9c07      	ldr	r4, [sp, #28]
 8002fbc:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8002fbe:	460e      	mov	r6, r1
 8002fc0:	e007      	b.n	8002fd2 <_vfprintf_r+0xd42>
 8002fc2:	3308      	adds	r3, #8
 8002fc4:	f1a9 0910 	sub.w	r9, r9, #16
 8002fc8:	f1b9 0f10 	cmp.w	r9, #16
 8002fcc:	f340 8353 	ble.w	8003676 <_vfprintf_r+0x13e6>
 8002fd0:	3501      	adds	r5, #1
 8002fd2:	3210      	adds	r2, #16
 8002fd4:	2d07      	cmp	r5, #7
 8002fd6:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8002fda:	e9c3 6700 	strd	r6, r7, [r3]
 8002fde:	ddf0      	ble.n	8002fc2 <_vfprintf_r+0xd32>
 8002fe0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002fe2:	4621      	mov	r1, r4
 8002fe4:	4658      	mov	r0, fp
 8002fe6:	f003 fc81 	bl	80068ec <__sprint_r>
 8002fea:	2800      	cmp	r0, #0
 8002fec:	f040 8472 	bne.w	80038d4 <_vfprintf_r+0x1644>
 8002ff0:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8002ff4:	ab2d      	add	r3, sp, #180	; 0xb4
 8002ff6:	e7e5      	b.n	8002fc4 <_vfprintf_r+0xd34>
 8002ff8:	08006fdc 	.word	0x08006fdc
 8002ffc:	f018 0f01 	tst.w	r8, #1
 8003000:	f47f aee0 	bne.w	8002dc4 <_vfprintf_r+0xb34>
 8003004:	2201      	movs	r2, #1
 8003006:	2d07      	cmp	r5, #7
 8003008:	f8cb 7000 	str.w	r7, [fp]
 800300c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003010:	f8cb 2004 	str.w	r2, [fp, #4]
 8003014:	dc04      	bgt.n	8003020 <_vfprintf_r+0xd90>
 8003016:	3302      	adds	r3, #2
 8003018:	9309      	str	r3, [sp, #36]	; 0x24
 800301a:	f10b 0b10 	add.w	fp, fp, #16
 800301e:	e70d      	b.n	8002e3c <_vfprintf_r+0xbac>
 8003020:	aa2a      	add	r2, sp, #168	; 0xa8
 8003022:	9907      	ldr	r1, [sp, #28]
 8003024:	9803      	ldr	r0, [sp, #12]
 8003026:	f003 fc61 	bl	80068ec <__sprint_r>
 800302a:	2800      	cmp	r0, #0
 800302c:	f47f aea8 	bne.w	8002d80 <_vfprintf_r+0xaf0>
 8003030:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003034:	3301      	adds	r3, #1
 8003036:	9309      	str	r3, [sp, #36]	; 0x24
 8003038:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 800303c:	ae2d      	add	r6, sp, #180	; 0xb4
 800303e:	e6fd      	b.n	8002e3c <_vfprintf_r+0xbac>
 8003040:	aa2a      	add	r2, sp, #168	; 0xa8
 8003042:	9907      	ldr	r1, [sp, #28]
 8003044:	9803      	ldr	r0, [sp, #12]
 8003046:	f003 fc51 	bl	80068ec <__sprint_r>
 800304a:	2800      	cmp	r0, #0
 800304c:	f47f ae98 	bne.w	8002d80 <_vfprintf_r+0xaf0>
 8003050:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003054:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003056:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800305a:	f7ff baf6 	b.w	800264a <_vfprintf_r+0x3ba>
 800305e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003060:	9907      	ldr	r1, [sp, #28]
 8003062:	9803      	ldr	r0, [sp, #12]
 8003064:	f003 fc42 	bl	80068ec <__sprint_r>
 8003068:	2800      	cmp	r0, #0
 800306a:	f47f ae89 	bne.w	8002d80 <_vfprintf_r+0xaf0>
 800306e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003070:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003074:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003076:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800307a:	443b      	add	r3, r7
 800307c:	4699      	mov	r9, r3
 800307e:	f040 8357 	bne.w	8003730 <_vfprintf_r+0x14a0>
 8003082:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003084:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003086:	4293      	cmp	r3, r2
 8003088:	db49      	blt.n	800311e <_vfprintf_r+0xe8e>
 800308a:	f018 0f01 	tst.w	r8, #1
 800308e:	d146      	bne.n	800311e <_vfprintf_r+0xe8e>
 8003090:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003092:	18bd      	adds	r5, r7, r2
 8003094:	eba5 0509 	sub.w	r5, r5, r9
 8003098:	1ad3      	subs	r3, r2, r3
 800309a:	429d      	cmp	r5, r3
 800309c:	bfa8      	it	ge
 800309e:	461d      	movge	r5, r3
 80030a0:	2d00      	cmp	r5, #0
 80030a2:	dd0d      	ble.n	80030c0 <_vfprintf_r+0xe30>
 80030a4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80030a6:	f8cb 9000 	str.w	r9, [fp]
 80030aa:	3201      	adds	r2, #1
 80030ac:	442c      	add	r4, r5
 80030ae:	2a07      	cmp	r2, #7
 80030b0:	942c      	str	r4, [sp, #176]	; 0xb0
 80030b2:	f8cb 5004 	str.w	r5, [fp, #4]
 80030b6:	922b      	str	r2, [sp, #172]	; 0xac
 80030b8:	f300 8462 	bgt.w	8003980 <_vfprintf_r+0x16f0>
 80030bc:	f10b 0b08 	add.w	fp, fp, #8
 80030c0:	2d00      	cmp	r5, #0
 80030c2:	bfac      	ite	ge
 80030c4:	1b5d      	subge	r5, r3, r5
 80030c6:	461d      	movlt	r5, r3
 80030c8:	2d00      	cmp	r5, #0
 80030ca:	f77f ab32 	ble.w	8002732 <_vfprintf_r+0x4a2>
 80030ce:	2d10      	cmp	r5, #16
 80030d0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80030d2:	4bc5      	ldr	r3, [pc, #788]	; (80033e8 <_vfprintf_r+0x1158>)
 80030d4:	f340 80c4 	ble.w	8003260 <_vfprintf_r+0xfd0>
 80030d8:	4619      	mov	r1, r3
 80030da:	2610      	movs	r6, #16
 80030dc:	4623      	mov	r3, r4
 80030de:	9f03      	ldr	r7, [sp, #12]
 80030e0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80030e4:	460c      	mov	r4, r1
 80030e6:	e005      	b.n	80030f4 <_vfprintf_r+0xe64>
 80030e8:	f10b 0b08 	add.w	fp, fp, #8
 80030ec:	3d10      	subs	r5, #16
 80030ee:	2d10      	cmp	r5, #16
 80030f0:	f340 80b3 	ble.w	800325a <_vfprintf_r+0xfca>
 80030f4:	3201      	adds	r2, #1
 80030f6:	3310      	adds	r3, #16
 80030f8:	2a07      	cmp	r2, #7
 80030fa:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80030fe:	e9cb 4600 	strd	r4, r6, [fp]
 8003102:	ddf1      	ble.n	80030e8 <_vfprintf_r+0xe58>
 8003104:	aa2a      	add	r2, sp, #168	; 0xa8
 8003106:	4649      	mov	r1, r9
 8003108:	4638      	mov	r0, r7
 800310a:	f003 fbef 	bl	80068ec <__sprint_r>
 800310e:	2800      	cmp	r0, #0
 8003110:	f47f ae38 	bne.w	8002d84 <_vfprintf_r+0xaf4>
 8003114:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003118:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800311c:	e7e6      	b.n	80030ec <_vfprintf_r+0xe5c>
 800311e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003120:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003122:	f8cb 1000 	str.w	r1, [fp]
 8003126:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003128:	f8cb 1004 	str.w	r1, [fp, #4]
 800312c:	3201      	adds	r2, #1
 800312e:	440c      	add	r4, r1
 8003130:	2a07      	cmp	r2, #7
 8003132:	942c      	str	r4, [sp, #176]	; 0xb0
 8003134:	922b      	str	r2, [sp, #172]	; 0xac
 8003136:	f300 828c 	bgt.w	8003652 <_vfprintf_r+0x13c2>
 800313a:	f10b 0b08 	add.w	fp, fp, #8
 800313e:	e7a7      	b.n	8003090 <_vfprintf_r+0xe00>
 8003140:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003144:	f002 fa94 	bl	8005670 <__retarget_lock_release_recursive>
 8003148:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800314c:	e628      	b.n	8002da0 <_vfprintf_r+0xb10>
 800314e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003150:	9907      	ldr	r1, [sp, #28]
 8003152:	9803      	ldr	r0, [sp, #12]
 8003154:	f003 fbca 	bl	80068ec <__sprint_r>
 8003158:	2800      	cmp	r0, #0
 800315a:	f47f ae11 	bne.w	8002d80 <_vfprintf_r+0xaf0>
 800315e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003162:	ae2d      	add	r6, sp, #180	; 0xb4
 8003164:	e638      	b.n	8002dd8 <_vfprintf_r+0xb48>
 8003166:	aa2a      	add	r2, sp, #168	; 0xa8
 8003168:	9907      	ldr	r1, [sp, #28]
 800316a:	9803      	ldr	r0, [sp, #12]
 800316c:	f003 fbbe 	bl	80068ec <__sprint_r>
 8003170:	2800      	cmp	r0, #0
 8003172:	f47f ae05 	bne.w	8002d80 <_vfprintf_r+0xaf0>
 8003176:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800317a:	ae2d      	add	r6, sp, #180	; 0xb4
 800317c:	930b      	str	r3, [sp, #44]	; 0x2c
 800317e:	e638      	b.n	8002df2 <_vfprintf_r+0xb62>
 8003180:	6814      	ldr	r4, [r2, #0]
 8003182:	9308      	str	r3, [sp, #32]
 8003184:	2500      	movs	r5, #0
 8003186:	f7ff bb95 	b.w	80028b4 <_vfprintf_r+0x624>
 800318a:	6814      	ldr	r4, [r2, #0]
 800318c:	9308      	str	r3, [sp, #32]
 800318e:	2500      	movs	r5, #0
 8003190:	f7ff b9ae 	b.w	80024f0 <_vfprintf_r+0x260>
 8003194:	680c      	ldr	r4, [r1, #0]
 8003196:	9208      	str	r2, [sp, #32]
 8003198:	17e5      	asrs	r5, r4, #31
 800319a:	4620      	mov	r0, r4
 800319c:	4629      	mov	r1, r5
 800319e:	f7ff b9d2 	b.w	8002546 <_vfprintf_r+0x2b6>
 80031a2:	6814      	ldr	r4, [r2, #0]
 80031a4:	9108      	str	r1, [sp, #32]
 80031a6:	2201      	movs	r2, #1
 80031a8:	2500      	movs	r5, #0
 80031aa:	f7ff bb32 	b.w	8002812 <_vfprintf_r+0x582>
 80031ae:	2a01      	cmp	r2, #1
 80031b0:	f47f ab3c 	bne.w	800282c <_vfprintf_r+0x59c>
 80031b4:	e68f      	b.n	8002ed6 <_vfprintf_r+0xc46>
 80031b6:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 80031ba:	2200      	movs	r2, #0
 80031bc:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80031c0:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80031c4:	af56      	add	r7, sp, #344	; 0x158
 80031c6:	4692      	mov	sl, r2
 80031c8:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 80031cc:	461e      	mov	r6, r3
 80031ce:	e00a      	b.n	80031e6 <_vfprintf_r+0xf56>
 80031d0:	2300      	movs	r3, #0
 80031d2:	4620      	mov	r0, r4
 80031d4:	4629      	mov	r1, r5
 80031d6:	220a      	movs	r2, #10
 80031d8:	f7fd f812 	bl	8000200 <__aeabi_uldivmod>
 80031dc:	4604      	mov	r4, r0
 80031de:	460d      	mov	r5, r1
 80031e0:	ea54 0305 	orrs.w	r3, r4, r5
 80031e4:	d029      	beq.n	800323a <_vfprintf_r+0xfaa>
 80031e6:	220a      	movs	r2, #10
 80031e8:	2300      	movs	r3, #0
 80031ea:	4620      	mov	r0, r4
 80031ec:	4629      	mov	r1, r5
 80031ee:	f7fd f807 	bl	8000200 <__aeabi_uldivmod>
 80031f2:	3230      	adds	r2, #48	; 0x30
 80031f4:	f807 2c01 	strb.w	r2, [r7, #-1]
 80031f8:	f10a 0a01 	add.w	sl, sl, #1
 80031fc:	3f01      	subs	r7, #1
 80031fe:	2e00      	cmp	r6, #0
 8003200:	d0e6      	beq.n	80031d0 <_vfprintf_r+0xf40>
 8003202:	f898 3000 	ldrb.w	r3, [r8]
 8003206:	459a      	cmp	sl, r3
 8003208:	d1e2      	bne.n	80031d0 <_vfprintf_r+0xf40>
 800320a:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 800320e:	d0df      	beq.n	80031d0 <_vfprintf_r+0xf40>
 8003210:	2d00      	cmp	r5, #0
 8003212:	bf08      	it	eq
 8003214:	2c0a      	cmpeq	r4, #10
 8003216:	d3db      	bcc.n	80031d0 <_vfprintf_r+0xf40>
 8003218:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 800321a:	9918      	ldr	r1, [sp, #96]	; 0x60
 800321c:	1aff      	subs	r7, r7, r3
 800321e:	461a      	mov	r2, r3
 8003220:	4638      	mov	r0, r7
 8003222:	f003 faf5 	bl	8006810 <strncpy>
 8003226:	f898 3001 	ldrb.w	r3, [r8, #1]
 800322a:	2b00      	cmp	r3, #0
 800322c:	f000 8496 	beq.w	8003b5c <_vfprintf_r+0x18cc>
 8003230:	f108 0801 	add.w	r8, r8, #1
 8003234:	f04f 0a00 	mov.w	sl, #0
 8003238:	e7ca      	b.n	80031d0 <_vfprintf_r+0xf40>
 800323a:	9b04      	ldr	r3, [sp, #16]
 800323c:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003240:	1bdb      	subs	r3, r3, r7
 8003242:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003246:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003248:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 800324c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003250:	9309      	str	r3, [sp, #36]	; 0x24
 8003252:	f7ff b99e 	b.w	8002592 <_vfprintf_r+0x302>
 8003256:	46c1      	mov	r9, r8
 8003258:	e594      	b.n	8002d84 <_vfprintf_r+0xaf4>
 800325a:	4621      	mov	r1, r4
 800325c:	461c      	mov	r4, r3
 800325e:	460b      	mov	r3, r1
 8003260:	3201      	adds	r2, #1
 8003262:	442c      	add	r4, r5
 8003264:	2a07      	cmp	r2, #7
 8003266:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800326a:	e9cb 3500 	strd	r3, r5, [fp]
 800326e:	f77f aa5e 	ble.w	800272e <_vfprintf_r+0x49e>
 8003272:	e5ee      	b.n	8002e52 <_vfprintf_r+0xbc2>
 8003274:	f018 0f10 	tst.w	r8, #16
 8003278:	f040 80f8 	bne.w	800346c <_vfprintf_r+0x11dc>
 800327c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003280:	f000 8351 	beq.w	8003926 <_vfprintf_r+0x1696>
 8003284:	9a05      	ldr	r2, [sp, #20]
 8003286:	801a      	strh	r2, [r3, #0]
 8003288:	4657      	mov	r7, sl
 800328a:	f7ff baa7 	b.w	80027dc <_vfprintf_r+0x54c>
 800328e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003290:	9907      	ldr	r1, [sp, #28]
 8003292:	9803      	ldr	r0, [sp, #12]
 8003294:	f003 fb2a 	bl	80068ec <__sprint_r>
 8003298:	2800      	cmp	r0, #0
 800329a:	f47f ad71 	bne.w	8002d80 <_vfprintf_r+0xaf0>
 800329e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80032a0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032a4:	f7ff b9f5 	b.w	8002692 <_vfprintf_r+0x402>
 80032a8:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80032ac:	4602      	mov	r2, r0
 80032ae:	460b      	mov	r3, r1
 80032b0:	f7fd fedc 	bl	800106c <__aeabi_dcmpun>
 80032b4:	2800      	cmp	r0, #0
 80032b6:	f040 8491 	bne.w	8003bdc <_vfprintf_r+0x194c>
 80032ba:	2e61      	cmp	r6, #97	; 0x61
 80032bc:	f000 8111 	beq.w	80034e2 <_vfprintf_r+0x1252>
 80032c0:	2e41      	cmp	r6, #65	; 0x41
 80032c2:	f000 8377 	beq.w	80039b4 <_vfprintf_r+0x1724>
 80032c6:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80032ca:	f026 0220 	bic.w	r2, r6, #32
 80032ce:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80032d2:	930e      	str	r3, [sp, #56]	; 0x38
 80032d4:	9204      	str	r2, [sp, #16]
 80032d6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80032d8:	f000 842d 	beq.w	8003b36 <_vfprintf_r+0x18a6>
 80032dc:	2a47      	cmp	r2, #71	; 0x47
 80032de:	f000 8424 	beq.w	8003b2a <_vfprintf_r+0x189a>
 80032e2:	2b00      	cmp	r3, #0
 80032e4:	f2c0 82f9 	blt.w	80038da <_vfprintf_r+0x164a>
 80032e8:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80032ec:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80032f0:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80032f4:	2e66      	cmp	r6, #102	; 0x66
 80032f6:	f000 83eb 	beq.w	8003ad0 <_vfprintf_r+0x1840>
 80032fa:	2e46      	cmp	r6, #70	; 0x46
 80032fc:	f000 847e 	beq.w	8003bfc <_vfprintf_r+0x196c>
 8003300:	9b04      	ldr	r3, [sp, #16]
 8003302:	9803      	ldr	r0, [sp, #12]
 8003304:	2b45      	cmp	r3, #69	; 0x45
 8003306:	bf0c      	ite	eq
 8003308:	f109 0501 	addeq.w	r5, r9, #1
 800330c:	464d      	movne	r5, r9
 800330e:	aa28      	add	r2, sp, #160	; 0xa0
 8003310:	ab25      	add	r3, sp, #148	; 0x94
 8003312:	e9cd 3200 	strd	r3, r2, [sp]
 8003316:	2102      	movs	r1, #2
 8003318:	ab24      	add	r3, sp, #144	; 0x90
 800331a:	462a      	mov	r2, r5
 800331c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003320:	f000 fe3e 	bl	8003fa0 <_dtoa_r>
 8003324:	2e67      	cmp	r6, #103	; 0x67
 8003326:	4607      	mov	r7, r0
 8003328:	f040 849c 	bne.w	8003c64 <_vfprintf_r+0x19d4>
 800332c:	f018 0f01 	tst.w	r8, #1
 8003330:	f040 83f9 	bne.w	8003b26 <_vfprintf_r+0x1896>
 8003334:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003336:	4640      	mov	r0, r8
 8003338:	1bdb      	subs	r3, r3, r7
 800333a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800333e:	9310      	str	r3, [sp, #64]	; 0x40
 8003340:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003342:	9311      	str	r3, [sp, #68]	; 0x44
 8003344:	9b04      	ldr	r3, [sp, #16]
 8003346:	2b47      	cmp	r3, #71	; 0x47
 8003348:	f000 81e7 	beq.w	800371a <_vfprintf_r+0x148a>
 800334c:	9b04      	ldr	r3, [sp, #16]
 800334e:	2b46      	cmp	r3, #70	; 0x46
 8003350:	f000 8300 	beq.w	8003954 <_vfprintf_r+0x16c4>
 8003354:	9904      	ldr	r1, [sp, #16]
 8003356:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003358:	b2f2      	uxtb	r2, r6
 800335a:	2941      	cmp	r1, #65	; 0x41
 800335c:	bf08      	it	eq
 800335e:	320f      	addeq	r2, #15
 8003360:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003364:	bf06      	itte	eq
 8003366:	b2d2      	uxtbeq	r2, r2
 8003368:	2101      	moveq	r1, #1
 800336a:	2100      	movne	r1, #0
 800336c:	2b00      	cmp	r3, #0
 800336e:	9324      	str	r3, [sp, #144]	; 0x90
 8003370:	bfb8      	it	lt
 8003372:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003374:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003378:	bfba      	itte	lt
 800337a:	f1c3 0301 	rsblt	r3, r3, #1
 800337e:	222d      	movlt	r2, #45	; 0x2d
 8003380:	222b      	movge	r2, #43	; 0x2b
 8003382:	2b09      	cmp	r3, #9
 8003384:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003388:	f300 83f9 	bgt.w	8003b7e <_vfprintf_r+0x18ee>
 800338c:	2900      	cmp	r1, #0
 800338e:	f040 8487 	bne.w	8003ca0 <_vfprintf_r+0x1a10>
 8003392:	2230      	movs	r2, #48	; 0x30
 8003394:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003398:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 800339c:	3330      	adds	r3, #48	; 0x30
 800339e:	7013      	strb	r3, [r2, #0]
 80033a0:	1c53      	adds	r3, r2, #1
 80033a2:	aa26      	add	r2, sp, #152	; 0x98
 80033a4:	1a9b      	subs	r3, r3, r2
 80033a6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80033a8:	9319      	str	r3, [sp, #100]	; 0x64
 80033aa:	2a01      	cmp	r2, #1
 80033ac:	4413      	add	r3, r2
 80033ae:	9309      	str	r3, [sp, #36]	; 0x24
 80033b0:	f340 8442 	ble.w	8003c38 <_vfprintf_r+0x19a8>
 80033b4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80033b6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80033b8:	4413      	add	r3, r2
 80033ba:	9309      	str	r3, [sp, #36]	; 0x24
 80033bc:	2300      	movs	r3, #0
 80033be:	930f      	str	r3, [sp, #60]	; 0x3c
 80033c0:	9314      	str	r3, [sp, #80]	; 0x50
 80033c2:	9311      	str	r3, [sp, #68]	; 0x44
 80033c4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80033c6:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 80033ca:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80033ce:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 80033d2:	9304      	str	r3, [sp, #16]
 80033d4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80033d6:	2b00      	cmp	r3, #0
 80033d8:	f040 8275 	bne.w	80038c6 <_vfprintf_r+0x1636>
 80033dc:	4699      	mov	r9, r3
 80033de:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80033e2:	f7ff b8e2 	b.w	80025aa <_vfprintf_r+0x31a>
 80033e6:	bf00      	nop
 80033e8:	08006fdc 	.word	0x08006fdc
 80033ec:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80033ee:	49bd      	ldr	r1, [pc, #756]	; (80036e4 <_vfprintf_r+0x1454>)
 80033f0:	f8cb 1000 	str.w	r1, [fp]
 80033f4:	3201      	adds	r2, #1
 80033f6:	3401      	adds	r4, #1
 80033f8:	2101      	movs	r1, #1
 80033fa:	2a07      	cmp	r2, #7
 80033fc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003400:	f8cb 1004 	str.w	r1, [fp, #4]
 8003404:	dc60      	bgt.n	80034c8 <_vfprintf_r+0x1238>
 8003406:	f10b 0b08 	add.w	fp, fp, #8
 800340a:	b92b      	cbnz	r3, 8003418 <_vfprintf_r+0x1188>
 800340c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800340e:	b91a      	cbnz	r2, 8003418 <_vfprintf_r+0x1188>
 8003410:	f018 0f01 	tst.w	r8, #1
 8003414:	f43f a98d 	beq.w	8002732 <_vfprintf_r+0x4a2>
 8003418:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800341a:	9916      	ldr	r1, [sp, #88]	; 0x58
 800341c:	f8cb 1000 	str.w	r1, [fp]
 8003420:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003422:	f8cb 1004 	str.w	r1, [fp, #4]
 8003426:	3201      	adds	r2, #1
 8003428:	440c      	add	r4, r1
 800342a:	2a07      	cmp	r2, #7
 800342c:	942c      	str	r4, [sp, #176]	; 0xb0
 800342e:	922b      	str	r2, [sp, #172]	; 0xac
 8003430:	f300 8282 	bgt.w	8003938 <_vfprintf_r+0x16a8>
 8003434:	f10b 0b08 	add.w	fp, fp, #8
 8003438:	2b00      	cmp	r3, #0
 800343a:	f2c0 82e7 	blt.w	8003a0c <_vfprintf_r+0x177c>
 800343e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003440:	3201      	adds	r2, #1
 8003442:	441c      	add	r4, r3
 8003444:	2a07      	cmp	r2, #7
 8003446:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800344a:	e9cb 7300 	strd	r7, r3, [fp]
 800344e:	f77f a96e 	ble.w	800272e <_vfprintf_r+0x49e>
 8003452:	e4fe      	b.n	8002e52 <_vfprintf_r+0xbc2>
 8003454:	aa2a      	add	r2, sp, #168	; 0xa8
 8003456:	9907      	ldr	r1, [sp, #28]
 8003458:	9803      	ldr	r0, [sp, #12]
 800345a:	f003 fa47 	bl	80068ec <__sprint_r>
 800345e:	2800      	cmp	r0, #0
 8003460:	f47f ac8e 	bne.w	8002d80 <_vfprintf_r+0xaf0>
 8003464:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003468:	f7ff bbf0 	b.w	8002c4c <_vfprintf_r+0x9bc>
 800346c:	9a05      	ldr	r2, [sp, #20]
 800346e:	601a      	str	r2, [r3, #0]
 8003470:	4657      	mov	r7, sl
 8003472:	f7ff b9b3 	b.w	80027dc <_vfprintf_r+0x54c>
 8003476:	8814      	ldrh	r4, [r2, #0]
 8003478:	9108      	str	r1, [sp, #32]
 800347a:	2500      	movs	r5, #0
 800347c:	2201      	movs	r2, #1
 800347e:	f7ff b9c8 	b.w	8002812 <_vfprintf_r+0x582>
 8003482:	8814      	ldrh	r4, [r2, #0]
 8003484:	9308      	str	r3, [sp, #32]
 8003486:	2500      	movs	r5, #0
 8003488:	f7ff ba14 	b.w	80028b4 <_vfprintf_r+0x624>
 800348c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003490:	9208      	str	r2, [sp, #32]
 8003492:	17e5      	asrs	r5, r4, #31
 8003494:	4620      	mov	r0, r4
 8003496:	4629      	mov	r1, r5
 8003498:	f7ff b855 	b.w	8002546 <_vfprintf_r+0x2b6>
 800349c:	8814      	ldrh	r4, [r2, #0]
 800349e:	9308      	str	r3, [sp, #32]
 80034a0:	2500      	movs	r5, #0
 80034a2:	f7ff b825 	b.w	80024f0 <_vfprintf_r+0x260>
 80034a6:	222d      	movs	r2, #45	; 0x2d
 80034a8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80034ac:	f7ff baa2 	b.w	80029f4 <_vfprintf_r+0x764>
 80034b0:	aa2a      	add	r2, sp, #168	; 0xa8
 80034b2:	9907      	ldr	r1, [sp, #28]
 80034b4:	9803      	ldr	r0, [sp, #12]
 80034b6:	f003 fa19 	bl	80068ec <__sprint_r>
 80034ba:	2800      	cmp	r0, #0
 80034bc:	f47f ac60 	bne.w	8002d80 <_vfprintf_r+0xaf0>
 80034c0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80034c2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034c6:	e534      	b.n	8002f32 <_vfprintf_r+0xca2>
 80034c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80034ca:	9907      	ldr	r1, [sp, #28]
 80034cc:	9803      	ldr	r0, [sp, #12]
 80034ce:	f003 fa0d 	bl	80068ec <__sprint_r>
 80034d2:	2800      	cmp	r0, #0
 80034d4:	f47f ac54 	bne.w	8002d80 <_vfprintf_r+0xaf0>
 80034d8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80034da:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80034dc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034e0:	e793      	b.n	800340a <_vfprintf_r+0x117a>
 80034e2:	2330      	movs	r3, #48	; 0x30
 80034e4:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80034e8:	2378      	movs	r3, #120	; 0x78
 80034ea:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 80034ee:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80034f2:	f048 0402 	orr.w	r4, r8, #2
 80034f6:	f300 82b0 	bgt.w	8003a5a <_vfprintf_r+0x17ca>
 80034fa:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80034fe:	930e      	str	r3, [sp, #56]	; 0x38
 8003500:	f026 0320 	bic.w	r3, r6, #32
 8003504:	9304      	str	r3, [sp, #16]
 8003506:	2200      	movs	r2, #0
 8003508:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800350a:	920a      	str	r2, [sp, #40]	; 0x28
 800350c:	46a0      	mov	r8, r4
 800350e:	af3d      	add	r7, sp, #244	; 0xf4
 8003510:	2b00      	cmp	r3, #0
 8003512:	f2c0 81e3 	blt.w	80038dc <_vfprintf_r+0x164c>
 8003516:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800351a:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800351e:	2300      	movs	r3, #0
 8003520:	930b      	str	r3, [sp, #44]	; 0x2c
 8003522:	2e61      	cmp	r6, #97	; 0x61
 8003524:	f000 8255 	beq.w	80039d2 <_vfprintf_r+0x1742>
 8003528:	2e41      	cmp	r6, #65	; 0x41
 800352a:	f47f aee3 	bne.w	80032f4 <_vfprintf_r+0x1064>
 800352e:	a824      	add	r0, sp, #144	; 0x90
 8003530:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003534:	f003 f8e2 	bl	80066fc <frexp>
 8003538:	2200      	movs	r2, #0
 800353a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800353e:	ec51 0b10 	vmov	r0, r1, d0
 8003542:	f7fd faf9 	bl	8000b38 <__aeabi_dmul>
 8003546:	2200      	movs	r2, #0
 8003548:	2300      	movs	r3, #0
 800354a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800354e:	f7fd fd5b 	bl	8001008 <__aeabi_dcmpeq>
 8003552:	2800      	cmp	r0, #0
 8003554:	f040 8305 	bne.w	8003b62 <_vfprintf_r+0x18d2>
 8003558:	4b63      	ldr	r3, [pc, #396]	; (80036e8 <_vfprintf_r+0x1458>)
 800355a:	9309      	str	r3, [sp, #36]	; 0x24
 800355c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003560:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003564:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003568:	9721      	str	r7, [sp, #132]	; 0x84
 800356a:	46b9      	mov	r9, r7
 800356c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003570:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003574:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003578:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 800357c:	e003      	b.n	8003586 <_vfprintf_r+0x12f6>
 800357e:	f7fd fd43 	bl	8001008 <__aeabi_dcmpeq>
 8003582:	bb20      	cbnz	r0, 80035ce <_vfprintf_r+0x133e>
 8003584:	46a9      	mov	r9, r5
 8003586:	2200      	movs	r2, #0
 8003588:	4b58      	ldr	r3, [pc, #352]	; (80036ec <_vfprintf_r+0x145c>)
 800358a:	4630      	mov	r0, r6
 800358c:	4639      	mov	r1, r7
 800358e:	f7fd fad3 	bl	8000b38 <__aeabi_dmul>
 8003592:	460f      	mov	r7, r1
 8003594:	4606      	mov	r6, r0
 8003596:	f7fd fd7f 	bl	8001098 <__aeabi_d2iz>
 800359a:	4680      	mov	r8, r0
 800359c:	f7fd fa62 	bl	8000a64 <__aeabi_i2d>
 80035a0:	4602      	mov	r2, r0
 80035a2:	460b      	mov	r3, r1
 80035a4:	4630      	mov	r0, r6
 80035a6:	4639      	mov	r1, r7
 80035a8:	f7fd f90e 	bl	80007c8 <__aeabi_dsub>
 80035ac:	464d      	mov	r5, r9
 80035ae:	f81a c008 	ldrb.w	ip, [sl, r8]
 80035b2:	f805 cb01 	strb.w	ip, [r5], #1
 80035b6:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 80035ba:	46a3      	mov	fp, r4
 80035bc:	4606      	mov	r6, r0
 80035be:	460f      	mov	r7, r1
 80035c0:	f04f 0200 	mov.w	r2, #0
 80035c4:	f04f 0300 	mov.w	r3, #0
 80035c8:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 80035cc:	d1d7      	bne.n	800357e <_vfprintf_r+0x12ee>
 80035ce:	4630      	mov	r0, r6
 80035d0:	4639      	mov	r1, r7
 80035d2:	2200      	movs	r2, #0
 80035d4:	4b46      	ldr	r3, [pc, #280]	; (80036f0 <_vfprintf_r+0x1460>)
 80035d6:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 80035da:	9e10      	ldr	r6, [sp, #64]	; 0x40
 80035dc:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 80035e0:	4644      	mov	r4, r8
 80035e2:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 80035e6:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 80035ea:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 80035ee:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 80035f2:	9f21      	ldr	r7, [sp, #132]	; 0x84
 80035f4:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80035f8:	f7fd fd2e 	bl	8001058 <__aeabi_dcmpgt>
 80035fc:	2800      	cmp	r0, #0
 80035fe:	f040 8176 	bne.w	80038ee <_vfprintf_r+0x165e>
 8003602:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003606:	2200      	movs	r2, #0
 8003608:	4b39      	ldr	r3, [pc, #228]	; (80036f0 <_vfprintf_r+0x1460>)
 800360a:	f7fd fcfd 	bl	8001008 <__aeabi_dcmpeq>
 800360e:	b110      	cbz	r0, 8003616 <_vfprintf_r+0x1386>
 8003610:	07e2      	lsls	r2, r4, #31
 8003612:	f100 816c 	bmi.w	80038ee <_vfprintf_r+0x165e>
 8003616:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003618:	2b00      	cmp	r3, #0
 800361a:	db07      	blt.n	800362c <_vfprintf_r+0x139c>
 800361c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800361e:	3301      	adds	r3, #1
 8003620:	442b      	add	r3, r5
 8003622:	2230      	movs	r2, #48	; 0x30
 8003624:	f805 2b01 	strb.w	r2, [r5], #1
 8003628:	42ab      	cmp	r3, r5
 800362a:	d1fb      	bne.n	8003624 <_vfprintf_r+0x1394>
 800362c:	1beb      	subs	r3, r5, r7
 800362e:	4640      	mov	r0, r8
 8003630:	9310      	str	r3, [sp, #64]	; 0x40
 8003632:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003636:	e683      	b.n	8003340 <_vfprintf_r+0x10b0>
 8003638:	f8cd 9010 	str.w	r9, [sp, #16]
 800363c:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003640:	9408      	str	r4, [sp, #32]
 8003642:	4681      	mov	r9, r0
 8003644:	900f      	str	r0, [sp, #60]	; 0x3c
 8003646:	9014      	str	r0, [sp, #80]	; 0x50
 8003648:	9011      	str	r0, [sp, #68]	; 0x44
 800364a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800364e:	f7fe bfac 	b.w	80025aa <_vfprintf_r+0x31a>
 8003652:	aa2a      	add	r2, sp, #168	; 0xa8
 8003654:	9907      	ldr	r1, [sp, #28]
 8003656:	9803      	ldr	r0, [sp, #12]
 8003658:	f003 f948 	bl	80068ec <__sprint_r>
 800365c:	2800      	cmp	r0, #0
 800365e:	f47f ab8f 	bne.w	8002d80 <_vfprintf_r+0xaf0>
 8003662:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003664:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003666:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800366a:	e511      	b.n	8003090 <_vfprintf_r+0xe00>
 800366c:	4252      	negs	r2, r2
 800366e:	9206      	str	r2, [sp, #24]
 8003670:	9308      	str	r3, [sp, #32]
 8003672:	f7ff b96d 	b.w	8002950 <_vfprintf_r+0x6c0>
 8003676:	4614      	mov	r4, r2
 8003678:	4632      	mov	r2, r6
 800367a:	461e      	mov	r6, r3
 800367c:	4613      	mov	r3, r2
 800367e:	462a      	mov	r2, r5
 8003680:	3201      	adds	r2, #1
 8003682:	9209      	str	r2, [sp, #36]	; 0x24
 8003684:	f106 0208 	add.w	r2, r6, #8
 8003688:	e9c6 3900 	strd	r3, r9, [r6]
 800368c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800368e:	932b      	str	r3, [sp, #172]	; 0xac
 8003690:	444c      	add	r4, r9
 8003692:	2b07      	cmp	r3, #7
 8003694:	942c      	str	r4, [sp, #176]	; 0xb0
 8003696:	f73f acc3 	bgt.w	8003020 <_vfprintf_r+0xd90>
 800369a:	3301      	adds	r3, #1
 800369c:	9309      	str	r3, [sp, #36]	; 0x24
 800369e:	f102 0b08 	add.w	fp, r2, #8
 80036a2:	4616      	mov	r6, r2
 80036a4:	f7ff bbca 	b.w	8002e3c <_vfprintf_r+0xbac>
 80036a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80036aa:	9907      	ldr	r1, [sp, #28]
 80036ac:	9803      	ldr	r0, [sp, #12]
 80036ae:	f003 f91d 	bl	80068ec <__sprint_r>
 80036b2:	2800      	cmp	r0, #0
 80036b4:	f47f ab64 	bne.w	8002d80 <_vfprintf_r+0xaf0>
 80036b8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036ba:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036be:	f7ff bade 	b.w	8002c7e <_vfprintf_r+0x9ee>
 80036c2:	464b      	mov	r3, r9
 80036c4:	2b06      	cmp	r3, #6
 80036c6:	bf28      	it	cs
 80036c8:	2306      	movcs	r3, #6
 80036ca:	46b9      	mov	r9, r7
 80036cc:	970f      	str	r7, [sp, #60]	; 0x3c
 80036ce:	9714      	str	r7, [sp, #80]	; 0x50
 80036d0:	9711      	str	r7, [sp, #68]	; 0x44
 80036d2:	970a      	str	r7, [sp, #40]	; 0x28
 80036d4:	463a      	mov	r2, r7
 80036d6:	9304      	str	r3, [sp, #16]
 80036d8:	e9cd 4308 	strd	r4, r3, [sp, #32]
 80036dc:	4f05      	ldr	r7, [pc, #20]	; (80036f4 <_vfprintf_r+0x1464>)
 80036de:	f7fe bf64 	b.w	80025aa <_vfprintf_r+0x31a>
 80036e2:	bf00      	nop
 80036e4:	08006fc8 	.word	0x08006fc8
 80036e8:	08006fac 	.word	0x08006fac
 80036ec:	40300000 	.word	0x40300000
 80036f0:	3fe00000 	.word	0x3fe00000
 80036f4:	08006fc0 	.word	0x08006fc0
 80036f8:	460c      	mov	r4, r1
 80036fa:	4639      	mov	r1, r7
 80036fc:	465f      	mov	r7, fp
 80036fe:	469b      	mov	fp, r3
 8003700:	460b      	mov	r3, r1
 8003702:	3201      	adds	r2, #1
 8003704:	442c      	add	r4, r5
 8003706:	2a07      	cmp	r2, #7
 8003708:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800370c:	e9cb 3500 	strd	r3, r5, [fp]
 8003710:	f73f aca5 	bgt.w	800305e <_vfprintf_r+0xdce>
 8003714:	f10b 0b08 	add.w	fp, fp, #8
 8003718:	e4ac      	b.n	8003074 <_vfprintf_r+0xde4>
 800371a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800371c:	1cda      	adds	r2, r3, #3
 800371e:	db02      	blt.n	8003726 <_vfprintf_r+0x1496>
 8003720:	4599      	cmp	r9, r3
 8003722:	f280 80b5 	bge.w	8003890 <_vfprintf_r+0x1600>
 8003726:	3e02      	subs	r6, #2
 8003728:	f026 0320 	bic.w	r3, r6, #32
 800372c:	9304      	str	r3, [sp, #16]
 800372e:	e611      	b.n	8003354 <_vfprintf_r+0x10c4>
 8003730:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003732:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003736:	465a      	mov	r2, fp
 8003738:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 800373c:	18fb      	adds	r3, r7, r3
 800373e:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003742:	970c      	str	r7, [sp, #48]	; 0x30
 8003744:	4eaf      	ldr	r6, [pc, #700]	; (8003a04 <_vfprintf_r+0x1774>)
 8003746:	f8dd a01c 	ldr.w	sl, [sp, #28]
 800374a:	9309      	str	r3, [sp, #36]	; 0x24
 800374c:	464f      	mov	r7, r9
 800374e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003752:	4621      	mov	r1, r4
 8003754:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003756:	2b00      	cmp	r3, #0
 8003758:	d05b      	beq.n	8003812 <_vfprintf_r+0x1582>
 800375a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800375c:	2b00      	cmp	r3, #0
 800375e:	d154      	bne.n	800380a <_vfprintf_r+0x157a>
 8003760:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003762:	3b01      	subs	r3, #1
 8003764:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003768:	9314      	str	r3, [sp, #80]	; 0x50
 800376a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800376c:	9818      	ldr	r0, [sp, #96]	; 0x60
 800376e:	6010      	str	r0, [r2, #0]
 8003770:	3301      	adds	r3, #1
 8003772:	4459      	add	r1, fp
 8003774:	2b07      	cmp	r3, #7
 8003776:	912c      	str	r1, [sp, #176]	; 0xb0
 8003778:	f8c2 b004 	str.w	fp, [r2, #4]
 800377c:	932b      	str	r3, [sp, #172]	; 0xac
 800377e:	dc68      	bgt.n	8003852 <_vfprintf_r+0x15c2>
 8003780:	3208      	adds	r2, #8
 8003782:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003784:	f898 3000 	ldrb.w	r3, [r8]
 8003788:	1bc5      	subs	r5, r0, r7
 800378a:	429d      	cmp	r5, r3
 800378c:	bfa8      	it	ge
 800378e:	461d      	movge	r5, r3
 8003790:	2d00      	cmp	r5, #0
 8003792:	dd0b      	ble.n	80037ac <_vfprintf_r+0x151c>
 8003794:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003796:	6017      	str	r7, [r2, #0]
 8003798:	3301      	adds	r3, #1
 800379a:	4429      	add	r1, r5
 800379c:	2b07      	cmp	r3, #7
 800379e:	912c      	str	r1, [sp, #176]	; 0xb0
 80037a0:	6055      	str	r5, [r2, #4]
 80037a2:	932b      	str	r3, [sp, #172]	; 0xac
 80037a4:	dc5e      	bgt.n	8003864 <_vfprintf_r+0x15d4>
 80037a6:	f898 3000 	ldrb.w	r3, [r8]
 80037aa:	3208      	adds	r2, #8
 80037ac:	2d00      	cmp	r5, #0
 80037ae:	bfac      	ite	ge
 80037b0:	1b5d      	subge	r5, r3, r5
 80037b2:	461d      	movlt	r5, r3
 80037b4:	2d00      	cmp	r5, #0
 80037b6:	dd26      	ble.n	8003806 <_vfprintf_r+0x1576>
 80037b8:	2d10      	cmp	r5, #16
 80037ba:	982b      	ldr	r0, [sp, #172]	; 0xac
 80037bc:	dd3c      	ble.n	8003838 <_vfprintf_r+0x15a8>
 80037be:	2410      	movs	r4, #16
 80037c0:	e003      	b.n	80037ca <_vfprintf_r+0x153a>
 80037c2:	3208      	adds	r2, #8
 80037c4:	3d10      	subs	r5, #16
 80037c6:	2d10      	cmp	r5, #16
 80037c8:	dd36      	ble.n	8003838 <_vfprintf_r+0x15a8>
 80037ca:	3001      	adds	r0, #1
 80037cc:	3110      	adds	r1, #16
 80037ce:	2807      	cmp	r0, #7
 80037d0:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80037d4:	e9c2 6400 	strd	r6, r4, [r2]
 80037d8:	ddf3      	ble.n	80037c2 <_vfprintf_r+0x1532>
 80037da:	aa2a      	add	r2, sp, #168	; 0xa8
 80037dc:	4651      	mov	r1, sl
 80037de:	4648      	mov	r0, r9
 80037e0:	f003 f884 	bl	80068ec <__sprint_r>
 80037e4:	2800      	cmp	r0, #0
 80037e6:	d150      	bne.n	800388a <_vfprintf_r+0x15fa>
 80037e8:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 80037ec:	aa2d      	add	r2, sp, #180	; 0xb4
 80037ee:	e7e9      	b.n	80037c4 <_vfprintf_r+0x1534>
 80037f0:	aa2a      	add	r2, sp, #168	; 0xa8
 80037f2:	4651      	mov	r1, sl
 80037f4:	4648      	mov	r0, r9
 80037f6:	f003 f879 	bl	80068ec <__sprint_r>
 80037fa:	2800      	cmp	r0, #0
 80037fc:	d145      	bne.n	800388a <_vfprintf_r+0x15fa>
 80037fe:	f898 3000 	ldrb.w	r3, [r8]
 8003802:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003804:	aa2d      	add	r2, sp, #180	; 0xb4
 8003806:	441f      	add	r7, r3
 8003808:	e7a4      	b.n	8003754 <_vfprintf_r+0x14c4>
 800380a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800380c:	3b01      	subs	r3, #1
 800380e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003810:	e7ab      	b.n	800376a <_vfprintf_r+0x14da>
 8003812:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003814:	2b00      	cmp	r3, #0
 8003816:	d1f8      	bne.n	800380a <_vfprintf_r+0x157a>
 8003818:	46b9      	mov	r9, r7
 800381a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800381c:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 800381e:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003822:	18fb      	adds	r3, r7, r3
 8003824:	4599      	cmp	r9, r3
 8003826:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 800382a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800382e:	4693      	mov	fp, r2
 8003830:	460c      	mov	r4, r1
 8003832:	bf28      	it	cs
 8003834:	4699      	movcs	r9, r3
 8003836:	e424      	b.n	8003082 <_vfprintf_r+0xdf2>
 8003838:	3001      	adds	r0, #1
 800383a:	4429      	add	r1, r5
 800383c:	2807      	cmp	r0, #7
 800383e:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003842:	e9c2 6500 	strd	r6, r5, [r2]
 8003846:	dcd3      	bgt.n	80037f0 <_vfprintf_r+0x1560>
 8003848:	f898 3000 	ldrb.w	r3, [r8]
 800384c:	3208      	adds	r2, #8
 800384e:	441f      	add	r7, r3
 8003850:	e780      	b.n	8003754 <_vfprintf_r+0x14c4>
 8003852:	aa2a      	add	r2, sp, #168	; 0xa8
 8003854:	4651      	mov	r1, sl
 8003856:	4648      	mov	r0, r9
 8003858:	f003 f848 	bl	80068ec <__sprint_r>
 800385c:	b9a8      	cbnz	r0, 800388a <_vfprintf_r+0x15fa>
 800385e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003860:	aa2d      	add	r2, sp, #180	; 0xb4
 8003862:	e78e      	b.n	8003782 <_vfprintf_r+0x14f2>
 8003864:	aa2a      	add	r2, sp, #168	; 0xa8
 8003866:	4651      	mov	r1, sl
 8003868:	4648      	mov	r0, r9
 800386a:	f003 f83f 	bl	80068ec <__sprint_r>
 800386e:	b960      	cbnz	r0, 800388a <_vfprintf_r+0x15fa>
 8003870:	f898 3000 	ldrb.w	r3, [r8]
 8003874:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003876:	aa2d      	add	r2, sp, #180	; 0xb4
 8003878:	e798      	b.n	80037ac <_vfprintf_r+0x151c>
 800387a:	4638      	mov	r0, r7
 800387c:	f7fc fee0 	bl	8000640 <strlen>
 8003880:	46a9      	mov	r9, r5
 8003882:	4603      	mov	r3, r0
 8003884:	9009      	str	r0, [sp, #36]	; 0x24
 8003886:	f7ff b8f4 	b.w	8002a72 <_vfprintf_r+0x7e2>
 800388a:	46d1      	mov	r9, sl
 800388c:	f7ff ba7a 	b.w	8002d84 <_vfprintf_r+0xaf4>
 8003890:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003892:	4619      	mov	r1, r3
 8003894:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003896:	4299      	cmp	r1, r3
 8003898:	f300 8082 	bgt.w	80039a0 <_vfprintf_r+0x1710>
 800389c:	07c4      	lsls	r4, r0, #31
 800389e:	f140 816b 	bpl.w	8003b78 <_vfprintf_r+0x18e8>
 80038a2:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80038a4:	4413      	add	r3, r2
 80038a6:	9309      	str	r3, [sp, #36]	; 0x24
 80038a8:	0541      	lsls	r1, r0, #21
 80038aa:	d503      	bpl.n	80038b4 <_vfprintf_r+0x1624>
 80038ac:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80038ae:	2b00      	cmp	r3, #0
 80038b0:	f300 80e6 	bgt.w	8003a80 <_vfprintf_r+0x17f0>
 80038b4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80038b6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80038ba:	9304      	str	r3, [sp, #16]
 80038bc:	2667      	movs	r6, #103	; 0x67
 80038be:	2300      	movs	r3, #0
 80038c0:	930f      	str	r3, [sp, #60]	; 0x3c
 80038c2:	9314      	str	r3, [sp, #80]	; 0x50
 80038c4:	e586      	b.n	80033d4 <_vfprintf_r+0x1144>
 80038c6:	222d      	movs	r2, #45	; 0x2d
 80038c8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80038cc:	f04f 0900 	mov.w	r9, #0
 80038d0:	f7fe be6c 	b.w	80025ac <_vfprintf_r+0x31c>
 80038d4:	46a1      	mov	r9, r4
 80038d6:	f7ff ba55 	b.w	8002d84 <_vfprintf_r+0xaf4>
 80038da:	900a      	str	r0, [sp, #40]	; 0x28
 80038dc:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 80038e0:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 80038e4:	931f      	str	r3, [sp, #124]	; 0x7c
 80038e6:	232d      	movs	r3, #45	; 0x2d
 80038e8:	911e      	str	r1, [sp, #120]	; 0x78
 80038ea:	930b      	str	r3, [sp, #44]	; 0x2c
 80038ec:	e619      	b.n	8003522 <_vfprintf_r+0x1292>
 80038ee:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80038f0:	9328      	str	r3, [sp, #160]	; 0xa0
 80038f2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80038f4:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 80038f8:	7bd9      	ldrb	r1, [r3, #15]
 80038fa:	4291      	cmp	r1, r2
 80038fc:	462b      	mov	r3, r5
 80038fe:	d109      	bne.n	8003914 <_vfprintf_r+0x1684>
 8003900:	2030      	movs	r0, #48	; 0x30
 8003902:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003906:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003908:	1e5a      	subs	r2, r3, #1
 800390a:	9228      	str	r2, [sp, #160]	; 0xa0
 800390c:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003910:	4291      	cmp	r1, r2
 8003912:	d0f6      	beq.n	8003902 <_vfprintf_r+0x1672>
 8003914:	2a39      	cmp	r2, #57	; 0x39
 8003916:	bf0b      	itete	eq
 8003918:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 800391a:	3201      	addne	r2, #1
 800391c:	7a92      	ldrbeq	r2, [r2, #10]
 800391e:	b2d2      	uxtbne	r2, r2
 8003920:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003924:	e682      	b.n	800362c <_vfprintf_r+0x139c>
 8003926:	f418 7f00 	tst.w	r8, #512	; 0x200
 800392a:	f43f ad9f 	beq.w	800346c <_vfprintf_r+0x11dc>
 800392e:	9a05      	ldr	r2, [sp, #20]
 8003930:	701a      	strb	r2, [r3, #0]
 8003932:	4657      	mov	r7, sl
 8003934:	f7fe bf52 	b.w	80027dc <_vfprintf_r+0x54c>
 8003938:	aa2a      	add	r2, sp, #168	; 0xa8
 800393a:	9907      	ldr	r1, [sp, #28]
 800393c:	9803      	ldr	r0, [sp, #12]
 800393e:	f002 ffd5 	bl	80068ec <__sprint_r>
 8003942:	2800      	cmp	r0, #0
 8003944:	f47f aa1c 	bne.w	8002d80 <_vfprintf_r+0xaf0>
 8003948:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800394a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 800394e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003952:	e571      	b.n	8003438 <_vfprintf_r+0x11a8>
 8003954:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003956:	2b00      	cmp	r3, #0
 8003958:	f340 8164 	ble.w	8003c24 <_vfprintf_r+0x1994>
 800395c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800395e:	f1b9 0f00 	cmp.w	r9, #0
 8003962:	f040 8103 	bne.w	8003b6c <_vfprintf_r+0x18dc>
 8003966:	07c6      	lsls	r6, r0, #31
 8003968:	f100 8100 	bmi.w	8003b6c <_vfprintf_r+0x18dc>
 800396c:	9309      	str	r3, [sp, #36]	; 0x24
 800396e:	2666      	movs	r6, #102	; 0x66
 8003970:	0543      	lsls	r3, r0, #21
 8003972:	f100 8086 	bmi.w	8003a82 <_vfprintf_r+0x17f2>
 8003976:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003978:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800397c:	9304      	str	r3, [sp, #16]
 800397e:	e79e      	b.n	80038be <_vfprintf_r+0x162e>
 8003980:	aa2a      	add	r2, sp, #168	; 0xa8
 8003982:	9907      	ldr	r1, [sp, #28]
 8003984:	9803      	ldr	r0, [sp, #12]
 8003986:	f002 ffb1 	bl	80068ec <__sprint_r>
 800398a:	2800      	cmp	r0, #0
 800398c:	f47f a9f8 	bne.w	8002d80 <_vfprintf_r+0xaf0>
 8003990:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003992:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003994:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003996:	1ad3      	subs	r3, r2, r3
 8003998:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800399c:	f7ff bb90 	b.w	80030c0 <_vfprintf_r+0xe30>
 80039a0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80039a2:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80039a4:	4413      	add	r3, r2
 80039a6:	9309      	str	r3, [sp, #36]	; 0x24
 80039a8:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039aa:	2b00      	cmp	r3, #0
 80039ac:	f340 8149 	ble.w	8003c42 <_vfprintf_r+0x19b2>
 80039b0:	2667      	movs	r6, #103	; 0x67
 80039b2:	e7dd      	b.n	8003970 <_vfprintf_r+0x16e0>
 80039b4:	2330      	movs	r3, #48	; 0x30
 80039b6:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80039ba:	2358      	movs	r3, #88	; 0x58
 80039bc:	e595      	b.n	80034ea <_vfprintf_r+0x125a>
 80039be:	9803      	ldr	r0, [sp, #12]
 80039c0:	aa2a      	add	r2, sp, #168	; 0xa8
 80039c2:	4649      	mov	r1, r9
 80039c4:	f002 ff92 	bl	80068ec <__sprint_r>
 80039c8:	2800      	cmp	r0, #0
 80039ca:	f47f a9e0 	bne.w	8002d8e <_vfprintf_r+0xafe>
 80039ce:	f7fe bf0f 	b.w	80027f0 <_vfprintf_r+0x560>
 80039d2:	a824      	add	r0, sp, #144	; 0x90
 80039d4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80039d8:	f002 fe90 	bl	80066fc <frexp>
 80039dc:	2200      	movs	r2, #0
 80039de:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80039e2:	ec51 0b10 	vmov	r0, r1, d0
 80039e6:	f7fd f8a7 	bl	8000b38 <__aeabi_dmul>
 80039ea:	2200      	movs	r2, #0
 80039ec:	2300      	movs	r3, #0
 80039ee:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80039f2:	f7fd fb09 	bl	8001008 <__aeabi_dcmpeq>
 80039f6:	b108      	cbz	r0, 80039fc <_vfprintf_r+0x176c>
 80039f8:	2301      	movs	r3, #1
 80039fa:	9324      	str	r3, [sp, #144]	; 0x90
 80039fc:	4b02      	ldr	r3, [pc, #8]	; (8003a08 <_vfprintf_r+0x1778>)
 80039fe:	9309      	str	r3, [sp, #36]	; 0x24
 8003a00:	e5ac      	b.n	800355c <_vfprintf_r+0x12cc>
 8003a02:	bf00      	nop
 8003a04:	08006fdc 	.word	0x08006fdc
 8003a08:	08006f98 	.word	0x08006f98
 8003a0c:	425d      	negs	r5, r3
 8003a0e:	3310      	adds	r3, #16
 8003a10:	4bb9      	ldr	r3, [pc, #740]	; (8003cf8 <_vfprintf_r+0x1a68>)
 8003a12:	f280 8097 	bge.w	8003b44 <_vfprintf_r+0x18b4>
 8003a16:	4619      	mov	r1, r3
 8003a18:	2610      	movs	r6, #16
 8003a1a:	4623      	mov	r3, r4
 8003a1c:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003a20:	460c      	mov	r4, r1
 8003a22:	e005      	b.n	8003a30 <_vfprintf_r+0x17a0>
 8003a24:	f10b 0b08 	add.w	fp, fp, #8
 8003a28:	3d10      	subs	r5, #16
 8003a2a:	2d10      	cmp	r5, #16
 8003a2c:	f340 8087 	ble.w	8003b3e <_vfprintf_r+0x18ae>
 8003a30:	3201      	adds	r2, #1
 8003a32:	3310      	adds	r3, #16
 8003a34:	2a07      	cmp	r2, #7
 8003a36:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003a3a:	e9cb 4600 	strd	r4, r6, [fp]
 8003a3e:	ddf1      	ble.n	8003a24 <_vfprintf_r+0x1794>
 8003a40:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a42:	9907      	ldr	r1, [sp, #28]
 8003a44:	4648      	mov	r0, r9
 8003a46:	f002 ff51 	bl	80068ec <__sprint_r>
 8003a4a:	2800      	cmp	r0, #0
 8003a4c:	f47f a998 	bne.w	8002d80 <_vfprintf_r+0xaf0>
 8003a50:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003a54:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a58:	e7e6      	b.n	8003a28 <_vfprintf_r+0x1798>
 8003a5a:	f109 0101 	add.w	r1, r9, #1
 8003a5e:	9803      	ldr	r0, [sp, #12]
 8003a60:	f001 fe80 	bl	8005764 <_malloc_r>
 8003a64:	4607      	mov	r7, r0
 8003a66:	2800      	cmp	r0, #0
 8003a68:	f000 813b 	beq.w	8003ce2 <_vfprintf_r+0x1a52>
 8003a6c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003a70:	930e      	str	r3, [sp, #56]	; 0x38
 8003a72:	f026 0320 	bic.w	r3, r6, #32
 8003a76:	9304      	str	r3, [sp, #16]
 8003a78:	46a0      	mov	r8, r4
 8003a7a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003a7c:	900a      	str	r0, [sp, #40]	; 0x28
 8003a7e:	e547      	b.n	8003510 <_vfprintf_r+0x1280>
 8003a80:	2667      	movs	r6, #103	; 0x67
 8003a82:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003a84:	2200      	movs	r2, #0
 8003a86:	920f      	str	r2, [sp, #60]	; 0x3c
 8003a88:	9214      	str	r2, [sp, #80]	; 0x50
 8003a8a:	7803      	ldrb	r3, [r0, #0]
 8003a8c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003a8e:	2bff      	cmp	r3, #255	; 0xff
 8003a90:	d00c      	beq.n	8003aac <_vfprintf_r+0x181c>
 8003a92:	4293      	cmp	r3, r2
 8003a94:	da0a      	bge.n	8003aac <_vfprintf_r+0x181c>
 8003a96:	7841      	ldrb	r1, [r0, #1]
 8003a98:	1ad2      	subs	r2, r2, r3
 8003a9a:	b1a9      	cbz	r1, 8003ac8 <_vfprintf_r+0x1838>
 8003a9c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003a9e:	3301      	adds	r3, #1
 8003aa0:	9314      	str	r3, [sp, #80]	; 0x50
 8003aa2:	460b      	mov	r3, r1
 8003aa4:	2bff      	cmp	r3, #255	; 0xff
 8003aa6:	f100 0001 	add.w	r0, r0, #1
 8003aaa:	d1f2      	bne.n	8003a92 <_vfprintf_r+0x1802>
 8003aac:	9211      	str	r2, [sp, #68]	; 0x44
 8003aae:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003ab0:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003ab2:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003ab4:	901a      	str	r0, [sp, #104]	; 0x68
 8003ab6:	4413      	add	r3, r2
 8003ab8:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003aba:	fb02 1303 	mla	r3, r2, r3, r1
 8003abe:	9309      	str	r3, [sp, #36]	; 0x24
 8003ac0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003ac4:	9304      	str	r3, [sp, #16]
 8003ac6:	e485      	b.n	80033d4 <_vfprintf_r+0x1144>
 8003ac8:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003aca:	3101      	adds	r1, #1
 8003acc:	910f      	str	r1, [sp, #60]	; 0x3c
 8003ace:	e7de      	b.n	8003a8e <_vfprintf_r+0x17fe>
 8003ad0:	aa28      	add	r2, sp, #160	; 0xa0
 8003ad2:	ab25      	add	r3, sp, #148	; 0x94
 8003ad4:	e9cd 3200 	strd	r3, r2, [sp]
 8003ad8:	2103      	movs	r1, #3
 8003ada:	ab24      	add	r3, sp, #144	; 0x90
 8003adc:	464a      	mov	r2, r9
 8003ade:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003ae2:	9803      	ldr	r0, [sp, #12]
 8003ae4:	f000 fa5c 	bl	8003fa0 <_dtoa_r>
 8003ae8:	464d      	mov	r5, r9
 8003aea:	4607      	mov	r7, r0
 8003aec:	eb00 0409 	add.w	r4, r0, r9
 8003af0:	783b      	ldrb	r3, [r7, #0]
 8003af2:	2b30      	cmp	r3, #48	; 0x30
 8003af4:	f000 80be 	beq.w	8003c74 <_vfprintf_r+0x19e4>
 8003af8:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003afa:	442c      	add	r4, r5
 8003afc:	2200      	movs	r2, #0
 8003afe:	2300      	movs	r3, #0
 8003b00:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003b04:	f7fd fa80 	bl	8001008 <__aeabi_dcmpeq>
 8003b08:	b108      	cbz	r0, 8003b0e <_vfprintf_r+0x187e>
 8003b0a:	4623      	mov	r3, r4
 8003b0c:	e413      	b.n	8003336 <_vfprintf_r+0x10a6>
 8003b0e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003b10:	42a3      	cmp	r3, r4
 8003b12:	f4bf ac10 	bcs.w	8003336 <_vfprintf_r+0x10a6>
 8003b16:	2130      	movs	r1, #48	; 0x30
 8003b18:	1c5a      	adds	r2, r3, #1
 8003b1a:	9228      	str	r2, [sp, #160]	; 0xa0
 8003b1c:	7019      	strb	r1, [r3, #0]
 8003b1e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003b20:	429c      	cmp	r4, r3
 8003b22:	d8f9      	bhi.n	8003b18 <_vfprintf_r+0x1888>
 8003b24:	e407      	b.n	8003336 <_vfprintf_r+0x10a6>
 8003b26:	197c      	adds	r4, r7, r5
 8003b28:	e7e8      	b.n	8003afc <_vfprintf_r+0x186c>
 8003b2a:	f1b9 0f00 	cmp.w	r9, #0
 8003b2e:	f000 8092 	beq.w	8003c56 <_vfprintf_r+0x19c6>
 8003b32:	900a      	str	r0, [sp, #40]	; 0x28
 8003b34:	e4ec      	b.n	8003510 <_vfprintf_r+0x1280>
 8003b36:	900a      	str	r0, [sp, #40]	; 0x28
 8003b38:	f04f 0906 	mov.w	r9, #6
 8003b3c:	e4e8      	b.n	8003510 <_vfprintf_r+0x1280>
 8003b3e:	4621      	mov	r1, r4
 8003b40:	461c      	mov	r4, r3
 8003b42:	460b      	mov	r3, r1
 8003b44:	3201      	adds	r2, #1
 8003b46:	442c      	add	r4, r5
 8003b48:	2a07      	cmp	r2, #7
 8003b4a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003b4e:	e9cb 3500 	strd	r3, r5, [fp]
 8003b52:	f300 80a9 	bgt.w	8003ca8 <_vfprintf_r+0x1a18>
 8003b56:	f10b 0b08 	add.w	fp, fp, #8
 8003b5a:	e470      	b.n	800343e <_vfprintf_r+0x11ae>
 8003b5c:	469a      	mov	sl, r3
 8003b5e:	f7ff bb37 	b.w	80031d0 <_vfprintf_r+0xf40>
 8003b62:	2301      	movs	r3, #1
 8003b64:	9324      	str	r3, [sp, #144]	; 0x90
 8003b66:	4b65      	ldr	r3, [pc, #404]	; (8003cfc <_vfprintf_r+0x1a6c>)
 8003b68:	9309      	str	r3, [sp, #36]	; 0x24
 8003b6a:	e4f7      	b.n	800355c <_vfprintf_r+0x12cc>
 8003b6c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b6e:	4413      	add	r3, r2
 8003b70:	444b      	add	r3, r9
 8003b72:	9309      	str	r3, [sp, #36]	; 0x24
 8003b74:	2666      	movs	r6, #102	; 0x66
 8003b76:	e6fb      	b.n	8003970 <_vfprintf_r+0x16e0>
 8003b78:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b7a:	9309      	str	r3, [sp, #36]	; 0x24
 8003b7c:	e694      	b.n	80038a8 <_vfprintf_r+0x1618>
 8003b7e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003b82:	4664      	mov	r4, ip
 8003b84:	4d5e      	ldr	r5, [pc, #376]	; (8003d00 <_vfprintf_r+0x1a70>)
 8003b86:	e000      	b.n	8003b8a <_vfprintf_r+0x18fa>
 8003b88:	4614      	mov	r4, r2
 8003b8a:	fba5 1203 	umull	r1, r2, r5, r3
 8003b8e:	08d2      	lsrs	r2, r2, #3
 8003b90:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003b94:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003b98:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003b9c:	4613      	mov	r3, r2
 8003b9e:	2b09      	cmp	r3, #9
 8003ba0:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003ba4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003ba8:	dcee      	bgt.n	8003b88 <_vfprintf_r+0x18f8>
 8003baa:	3330      	adds	r3, #48	; 0x30
 8003bac:	3c02      	subs	r4, #2
 8003bae:	b2db      	uxtb	r3, r3
 8003bb0:	45a4      	cmp	ip, r4
 8003bb2:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003bb6:	f240 8090 	bls.w	8003cda <_vfprintf_r+0x1a4a>
 8003bba:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003bbe:	4611      	mov	r1, r2
 8003bc0:	e001      	b.n	8003bc6 <_vfprintf_r+0x1936>
 8003bc2:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003bc6:	f804 3b01 	strb.w	r3, [r4], #1
 8003bca:	458c      	cmp	ip, r1
 8003bcc:	d1f9      	bne.n	8003bc2 <_vfprintf_r+0x1932>
 8003bce:	ab2a      	add	r3, sp, #168	; 0xa8
 8003bd0:	1a9b      	subs	r3, r3, r2
 8003bd2:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003bd6:	4413      	add	r3, r2
 8003bd8:	f7ff bbe3 	b.w	80033a2 <_vfprintf_r+0x1112>
 8003bdc:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003bde:	4f49      	ldr	r7, [pc, #292]	; (8003d04 <_vfprintf_r+0x1a74>)
 8003be0:	2b00      	cmp	r3, #0
 8003be2:	bfb6      	itet	lt
 8003be4:	222d      	movlt	r2, #45	; 0x2d
 8003be6:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003bea:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003bee:	4b46      	ldr	r3, [pc, #280]	; (8003d08 <_vfprintf_r+0x1a78>)
 8003bf0:	f7fe bf02 	b.w	80029f8 <_vfprintf_r+0x768>
 8003bf4:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003bf8:	f7ff b8c9 	b.w	8002d8e <_vfprintf_r+0xafe>
 8003bfc:	aa28      	add	r2, sp, #160	; 0xa0
 8003bfe:	ab25      	add	r3, sp, #148	; 0x94
 8003c00:	e9cd 3200 	strd	r3, r2, [sp]
 8003c04:	2103      	movs	r1, #3
 8003c06:	ab24      	add	r3, sp, #144	; 0x90
 8003c08:	464a      	mov	r2, r9
 8003c0a:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c0e:	9803      	ldr	r0, [sp, #12]
 8003c10:	f000 f9c6 	bl	8003fa0 <_dtoa_r>
 8003c14:	464d      	mov	r5, r9
 8003c16:	4607      	mov	r7, r0
 8003c18:	2e46      	cmp	r6, #70	; 0x46
 8003c1a:	eb07 0405 	add.w	r4, r7, r5
 8003c1e:	f43f af67 	beq.w	8003af0 <_vfprintf_r+0x1860>
 8003c22:	e76b      	b.n	8003afc <_vfprintf_r+0x186c>
 8003c24:	f1b9 0f00 	cmp.w	r9, #0
 8003c28:	d131      	bne.n	8003c8e <_vfprintf_r+0x19fe>
 8003c2a:	07c5      	lsls	r5, r0, #31
 8003c2c:	d42f      	bmi.n	8003c8e <_vfprintf_r+0x19fe>
 8003c2e:	2301      	movs	r3, #1
 8003c30:	9304      	str	r3, [sp, #16]
 8003c32:	9309      	str	r3, [sp, #36]	; 0x24
 8003c34:	2666      	movs	r6, #102	; 0x66
 8003c36:	e642      	b.n	80038be <_vfprintf_r+0x162e>
 8003c38:	07c3      	lsls	r3, r0, #31
 8003c3a:	f57f abbf 	bpl.w	80033bc <_vfprintf_r+0x112c>
 8003c3e:	f7ff bbb9 	b.w	80033b4 <_vfprintf_r+0x1124>
 8003c42:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003c44:	f1c3 0301 	rsb	r3, r3, #1
 8003c48:	441a      	add	r2, r3
 8003c4a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003c4e:	9209      	str	r2, [sp, #36]	; 0x24
 8003c50:	9304      	str	r3, [sp, #16]
 8003c52:	2667      	movs	r6, #103	; 0x67
 8003c54:	e633      	b.n	80038be <_vfprintf_r+0x162e>
 8003c56:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003c5a:	f04f 0901 	mov.w	r9, #1
 8003c5e:	e457      	b.n	8003510 <_vfprintf_r+0x1280>
 8003c60:	465a      	mov	r2, fp
 8003c62:	e511      	b.n	8003688 <_vfprintf_r+0x13f8>
 8003c64:	2e47      	cmp	r6, #71	; 0x47
 8003c66:	f47f af5e 	bne.w	8003b26 <_vfprintf_r+0x1896>
 8003c6a:	f018 0f01 	tst.w	r8, #1
 8003c6e:	f43f ab61 	beq.w	8003334 <_vfprintf_r+0x10a4>
 8003c72:	e7d1      	b.n	8003c18 <_vfprintf_r+0x1988>
 8003c74:	2200      	movs	r2, #0
 8003c76:	2300      	movs	r3, #0
 8003c78:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003c7c:	f7fd f9c4 	bl	8001008 <__aeabi_dcmpeq>
 8003c80:	2800      	cmp	r0, #0
 8003c82:	f47f af39 	bne.w	8003af8 <_vfprintf_r+0x1868>
 8003c86:	f1c5 0501 	rsb	r5, r5, #1
 8003c8a:	9524      	str	r5, [sp, #144]	; 0x90
 8003c8c:	e735      	b.n	8003afa <_vfprintf_r+0x186a>
 8003c8e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003c90:	3301      	adds	r3, #1
 8003c92:	444b      	add	r3, r9
 8003c94:	9309      	str	r3, [sp, #36]	; 0x24
 8003c96:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003c9a:	9304      	str	r3, [sp, #16]
 8003c9c:	2666      	movs	r6, #102	; 0x66
 8003c9e:	e60e      	b.n	80038be <_vfprintf_r+0x162e>
 8003ca0:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003ca4:	f7ff bb7a 	b.w	800339c <_vfprintf_r+0x110c>
 8003ca8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003caa:	9907      	ldr	r1, [sp, #28]
 8003cac:	9803      	ldr	r0, [sp, #12]
 8003cae:	f002 fe1d 	bl	80068ec <__sprint_r>
 8003cb2:	2800      	cmp	r0, #0
 8003cb4:	f47f a864 	bne.w	8002d80 <_vfprintf_r+0xaf0>
 8003cb8:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003cbc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003cc0:	f7ff bbbd 	b.w	800343e <_vfprintf_r+0x11ae>
 8003cc4:	9908      	ldr	r1, [sp, #32]
 8003cc6:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003cca:	680b      	ldr	r3, [r1, #0]
 8003ccc:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003cd0:	1d0b      	adds	r3, r1, #4
 8003cd2:	4692      	mov	sl, r2
 8003cd4:	9308      	str	r3, [sp, #32]
 8003cd6:	f7fe bb59 	b.w	800238c <_vfprintf_r+0xfc>
 8003cda:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003cde:	f7ff bb60 	b.w	80033a2 <_vfprintf_r+0x1112>
 8003ce2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003ce6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003cea:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003cee:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003cf2:	f7ff b84c 	b.w	8002d8e <_vfprintf_r+0xafe>
 8003cf6:	bf00      	nop
 8003cf8:	08006fdc 	.word	0x08006fdc
 8003cfc:	08006fac 	.word	0x08006fac
 8003d00:	cccccccd 	.word	0xcccccccd
 8003d04:	08006f94 	.word	0x08006f94
 8003d08:	08006f90 	.word	0x08006f90

08003d0c <__sbprintf>:
 8003d0c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003d10:	460c      	mov	r4, r1
 8003d12:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003d16:	8989      	ldrh	r1, [r1, #12]
 8003d18:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003d1a:	89e5      	ldrh	r5, [r4, #14]
 8003d1c:	9619      	str	r6, [sp, #100]	; 0x64
 8003d1e:	f021 0102 	bic.w	r1, r1, #2
 8003d22:	4606      	mov	r6, r0
 8003d24:	69e0      	ldr	r0, [r4, #28]
 8003d26:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003d2a:	4617      	mov	r7, r2
 8003d2c:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003d30:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003d32:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003d36:	4698      	mov	r8, r3
 8003d38:	ad1a      	add	r5, sp, #104	; 0x68
 8003d3a:	2300      	movs	r3, #0
 8003d3c:	9007      	str	r0, [sp, #28]
 8003d3e:	a816      	add	r0, sp, #88	; 0x58
 8003d40:	9209      	str	r2, [sp, #36]	; 0x24
 8003d42:	9306      	str	r3, [sp, #24]
 8003d44:	9500      	str	r5, [sp, #0]
 8003d46:	9504      	str	r5, [sp, #16]
 8003d48:	9102      	str	r1, [sp, #8]
 8003d4a:	9105      	str	r1, [sp, #20]
 8003d4c:	f001 fc8a 	bl	8005664 <__retarget_lock_init_recursive>
 8003d50:	4643      	mov	r3, r8
 8003d52:	463a      	mov	r2, r7
 8003d54:	4669      	mov	r1, sp
 8003d56:	4630      	mov	r0, r6
 8003d58:	f7fe fa9a 	bl	8002290 <_vfprintf_r>
 8003d5c:	1e05      	subs	r5, r0, #0
 8003d5e:	db07      	blt.n	8003d70 <__sbprintf+0x64>
 8003d60:	4630      	mov	r0, r6
 8003d62:	4669      	mov	r1, sp
 8003d64:	f001 f8d6 	bl	8004f14 <_fflush_r>
 8003d68:	2800      	cmp	r0, #0
 8003d6a:	bf18      	it	ne
 8003d6c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003d70:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003d74:	065b      	lsls	r3, r3, #25
 8003d76:	d503      	bpl.n	8003d80 <__sbprintf+0x74>
 8003d78:	89a3      	ldrh	r3, [r4, #12]
 8003d7a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003d7e:	81a3      	strh	r3, [r4, #12]
 8003d80:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003d82:	f001 fc71 	bl	8005668 <__retarget_lock_close_recursive>
 8003d86:	4628      	mov	r0, r5
 8003d88:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003d8c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003d90 <__swsetup_r>:
 8003d90:	b538      	push	{r3, r4, r5, lr}
 8003d92:	4b31      	ldr	r3, [pc, #196]	; (8003e58 <__swsetup_r+0xc8>)
 8003d94:	681b      	ldr	r3, [r3, #0]
 8003d96:	4605      	mov	r5, r0
 8003d98:	460c      	mov	r4, r1
 8003d9a:	b113      	cbz	r3, 8003da2 <__swsetup_r+0x12>
 8003d9c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003d9e:	2a00      	cmp	r2, #0
 8003da0:	d03a      	beq.n	8003e18 <__swsetup_r+0x88>
 8003da2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003da6:	b293      	uxth	r3, r2
 8003da8:	0718      	lsls	r0, r3, #28
 8003daa:	d50c      	bpl.n	8003dc6 <__swsetup_r+0x36>
 8003dac:	6920      	ldr	r0, [r4, #16]
 8003dae:	b1a8      	cbz	r0, 8003ddc <__swsetup_r+0x4c>
 8003db0:	f013 0201 	ands.w	r2, r3, #1
 8003db4:	d020      	beq.n	8003df8 <__swsetup_r+0x68>
 8003db6:	6963      	ldr	r3, [r4, #20]
 8003db8:	2200      	movs	r2, #0
 8003dba:	425b      	negs	r3, r3
 8003dbc:	61a3      	str	r3, [r4, #24]
 8003dbe:	60a2      	str	r2, [r4, #8]
 8003dc0:	b300      	cbz	r0, 8003e04 <__swsetup_r+0x74>
 8003dc2:	2000      	movs	r0, #0
 8003dc4:	bd38      	pop	{r3, r4, r5, pc}
 8003dc6:	06d9      	lsls	r1, r3, #27
 8003dc8:	d53e      	bpl.n	8003e48 <__swsetup_r+0xb8>
 8003dca:	0758      	lsls	r0, r3, #29
 8003dcc:	d428      	bmi.n	8003e20 <__swsetup_r+0x90>
 8003dce:	6920      	ldr	r0, [r4, #16]
 8003dd0:	f042 0308 	orr.w	r3, r2, #8
 8003dd4:	81a3      	strh	r3, [r4, #12]
 8003dd6:	b29b      	uxth	r3, r3
 8003dd8:	2800      	cmp	r0, #0
 8003dda:	d1e9      	bne.n	8003db0 <__swsetup_r+0x20>
 8003ddc:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003de0:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003de4:	d0e4      	beq.n	8003db0 <__swsetup_r+0x20>
 8003de6:	4628      	mov	r0, r5
 8003de8:	4621      	mov	r1, r4
 8003dea:	f001 fc71 	bl	80056d0 <__smakebuf_r>
 8003dee:	89a3      	ldrh	r3, [r4, #12]
 8003df0:	6920      	ldr	r0, [r4, #16]
 8003df2:	f013 0201 	ands.w	r2, r3, #1
 8003df6:	d1de      	bne.n	8003db6 <__swsetup_r+0x26>
 8003df8:	0799      	lsls	r1, r3, #30
 8003dfa:	bf58      	it	pl
 8003dfc:	6962      	ldrpl	r2, [r4, #20]
 8003dfe:	60a2      	str	r2, [r4, #8]
 8003e00:	2800      	cmp	r0, #0
 8003e02:	d1de      	bne.n	8003dc2 <__swsetup_r+0x32>
 8003e04:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003e08:	061a      	lsls	r2, r3, #24
 8003e0a:	d5db      	bpl.n	8003dc4 <__swsetup_r+0x34>
 8003e0c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003e10:	81a3      	strh	r3, [r4, #12]
 8003e12:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003e16:	bd38      	pop	{r3, r4, r5, pc}
 8003e18:	4618      	mov	r0, r3
 8003e1a:	f001 f8d7 	bl	8004fcc <__sinit>
 8003e1e:	e7c0      	b.n	8003da2 <__swsetup_r+0x12>
 8003e20:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8003e22:	b151      	cbz	r1, 8003e3a <__swsetup_r+0xaa>
 8003e24:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8003e28:	4299      	cmp	r1, r3
 8003e2a:	d004      	beq.n	8003e36 <__swsetup_r+0xa6>
 8003e2c:	4628      	mov	r0, r5
 8003e2e:	f001 f96f 	bl	8005110 <_free_r>
 8003e32:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003e36:	2300      	movs	r3, #0
 8003e38:	6323      	str	r3, [r4, #48]	; 0x30
 8003e3a:	2300      	movs	r3, #0
 8003e3c:	6920      	ldr	r0, [r4, #16]
 8003e3e:	6063      	str	r3, [r4, #4]
 8003e40:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8003e44:	6020      	str	r0, [r4, #0]
 8003e46:	e7c3      	b.n	8003dd0 <__swsetup_r+0x40>
 8003e48:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8003e4c:	2309      	movs	r3, #9
 8003e4e:	602b      	str	r3, [r5, #0]
 8003e50:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003e54:	81a2      	strh	r2, [r4, #12]
 8003e56:	bd38      	pop	{r3, r4, r5, pc}
 8003e58:	20000018 	.word	0x20000018

08003e5c <register_fini>:
 8003e5c:	4b02      	ldr	r3, [pc, #8]	; (8003e68 <register_fini+0xc>)
 8003e5e:	b113      	cbz	r3, 8003e66 <register_fini+0xa>
 8003e60:	4802      	ldr	r0, [pc, #8]	; (8003e6c <register_fini+0x10>)
 8003e62:	f000 b805 	b.w	8003e70 <atexit>
 8003e66:	4770      	bx	lr
 8003e68:	00000000 	.word	0x00000000
 8003e6c:	0800503d 	.word	0x0800503d

08003e70 <atexit>:
 8003e70:	2300      	movs	r3, #0
 8003e72:	4601      	mov	r1, r0
 8003e74:	461a      	mov	r2, r3
 8003e76:	4618      	mov	r0, r3
 8003e78:	f002 bd58 	b.w	800692c <__register_exitproc>

08003e7c <quorem>:
 8003e7c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003e80:	6903      	ldr	r3, [r0, #16]
 8003e82:	690f      	ldr	r7, [r1, #16]
 8003e84:	42bb      	cmp	r3, r7
 8003e86:	b083      	sub	sp, #12
 8003e88:	f2c0 8086 	blt.w	8003f98 <quorem+0x11c>
 8003e8c:	3f01      	subs	r7, #1
 8003e8e:	f101 0914 	add.w	r9, r1, #20
 8003e92:	f100 0a14 	add.w	sl, r0, #20
 8003e96:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8003e9a:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8003e9e:	00bc      	lsls	r4, r7, #2
 8003ea0:	3201      	adds	r2, #1
 8003ea2:	fbb3 f8f2 	udiv	r8, r3, r2
 8003ea6:	eb0a 0304 	add.w	r3, sl, r4
 8003eaa:	9400      	str	r4, [sp, #0]
 8003eac:	eb09 0b04 	add.w	fp, r9, r4
 8003eb0:	9301      	str	r3, [sp, #4]
 8003eb2:	f1b8 0f00 	cmp.w	r8, #0
 8003eb6:	d038      	beq.n	8003f2a <quorem+0xae>
 8003eb8:	2500      	movs	r5, #0
 8003eba:	462e      	mov	r6, r5
 8003ebc:	46ce      	mov	lr, r9
 8003ebe:	46d4      	mov	ip, sl
 8003ec0:	f85e 4b04 	ldr.w	r4, [lr], #4
 8003ec4:	f8dc 3000 	ldr.w	r3, [ip]
 8003ec8:	b2a2      	uxth	r2, r4
 8003eca:	fb08 5502 	mla	r5, r8, r2, r5
 8003ece:	0c22      	lsrs	r2, r4, #16
 8003ed0:	0c2c      	lsrs	r4, r5, #16
 8003ed2:	fb08 4202 	mla	r2, r8, r2, r4
 8003ed6:	b2ad      	uxth	r5, r5
 8003ed8:	1b75      	subs	r5, r6, r5
 8003eda:	b296      	uxth	r6, r2
 8003edc:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8003ee0:	fa15 f383 	uxtah	r3, r5, r3
 8003ee4:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8003ee8:	b29b      	uxth	r3, r3
 8003eea:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8003eee:	45f3      	cmp	fp, lr
 8003ef0:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8003ef4:	f84c 3b04 	str.w	r3, [ip], #4
 8003ef8:	ea4f 4626 	mov.w	r6, r6, asr #16
 8003efc:	d2e0      	bcs.n	8003ec0 <quorem+0x44>
 8003efe:	9b00      	ldr	r3, [sp, #0]
 8003f00:	f85a 3003 	ldr.w	r3, [sl, r3]
 8003f04:	b98b      	cbnz	r3, 8003f2a <quorem+0xae>
 8003f06:	9a01      	ldr	r2, [sp, #4]
 8003f08:	1f13      	subs	r3, r2, #4
 8003f0a:	459a      	cmp	sl, r3
 8003f0c:	d20c      	bcs.n	8003f28 <quorem+0xac>
 8003f0e:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8003f12:	b94b      	cbnz	r3, 8003f28 <quorem+0xac>
 8003f14:	f1a2 0308 	sub.w	r3, r2, #8
 8003f18:	e002      	b.n	8003f20 <quorem+0xa4>
 8003f1a:	681a      	ldr	r2, [r3, #0]
 8003f1c:	3b04      	subs	r3, #4
 8003f1e:	b91a      	cbnz	r2, 8003f28 <quorem+0xac>
 8003f20:	459a      	cmp	sl, r3
 8003f22:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8003f26:	d3f8      	bcc.n	8003f1a <quorem+0x9e>
 8003f28:	6107      	str	r7, [r0, #16]
 8003f2a:	4604      	mov	r4, r0
 8003f2c:	f002 f944 	bl	80061b8 <__mcmp>
 8003f30:	2800      	cmp	r0, #0
 8003f32:	db2d      	blt.n	8003f90 <quorem+0x114>
 8003f34:	f108 0801 	add.w	r8, r8, #1
 8003f38:	4655      	mov	r5, sl
 8003f3a:	2300      	movs	r3, #0
 8003f3c:	f859 1b04 	ldr.w	r1, [r9], #4
 8003f40:	6828      	ldr	r0, [r5, #0]
 8003f42:	b28a      	uxth	r2, r1
 8003f44:	1a9a      	subs	r2, r3, r2
 8003f46:	0c0b      	lsrs	r3, r1, #16
 8003f48:	fa12 f280 	uxtah	r2, r2, r0
 8003f4c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8003f50:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8003f54:	b292      	uxth	r2, r2
 8003f56:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8003f5a:	45cb      	cmp	fp, r9
 8003f5c:	f845 2b04 	str.w	r2, [r5], #4
 8003f60:	ea4f 4323 	mov.w	r3, r3, asr #16
 8003f64:	d2ea      	bcs.n	8003f3c <quorem+0xc0>
 8003f66:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8003f6a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8003f6e:	b97a      	cbnz	r2, 8003f90 <quorem+0x114>
 8003f70:	1f1a      	subs	r2, r3, #4
 8003f72:	4592      	cmp	sl, r2
 8003f74:	d20b      	bcs.n	8003f8e <quorem+0x112>
 8003f76:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8003f7a:	b942      	cbnz	r2, 8003f8e <quorem+0x112>
 8003f7c:	3b08      	subs	r3, #8
 8003f7e:	e002      	b.n	8003f86 <quorem+0x10a>
 8003f80:	681a      	ldr	r2, [r3, #0]
 8003f82:	3b04      	subs	r3, #4
 8003f84:	b91a      	cbnz	r2, 8003f8e <quorem+0x112>
 8003f86:	459a      	cmp	sl, r3
 8003f88:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8003f8c:	d3f8      	bcc.n	8003f80 <quorem+0x104>
 8003f8e:	6127      	str	r7, [r4, #16]
 8003f90:	4640      	mov	r0, r8
 8003f92:	b003      	add	sp, #12
 8003f94:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003f98:	2000      	movs	r0, #0
 8003f9a:	b003      	add	sp, #12
 8003f9c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08003fa0 <_dtoa_r>:
 8003fa0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003fa4:	ec55 4b10 	vmov	r4, r5, d0
 8003fa8:	b09b      	sub	sp, #108	; 0x6c
 8003faa:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8003fac:	9102      	str	r1, [sp, #8]
 8003fae:	4681      	mov	r9, r0
 8003fb0:	9207      	str	r2, [sp, #28]
 8003fb2:	9305      	str	r3, [sp, #20]
 8003fb4:	e9cd 4500 	strd	r4, r5, [sp]
 8003fb8:	b156      	cbz	r6, 8003fd0 <_dtoa_r+0x30>
 8003fba:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8003fbc:	6072      	str	r2, [r6, #4]
 8003fbe:	2301      	movs	r3, #1
 8003fc0:	4093      	lsls	r3, r2
 8003fc2:	60b3      	str	r3, [r6, #8]
 8003fc4:	4631      	mov	r1, r6
 8003fc6:	f001 ff07 	bl	8005dd8 <_Bfree>
 8003fca:	2300      	movs	r3, #0
 8003fcc:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8003fd0:	f1b5 0800 	subs.w	r8, r5, #0
 8003fd4:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8003fd6:	bfb4      	ite	lt
 8003fd8:	2301      	movlt	r3, #1
 8003fda:	2300      	movge	r3, #0
 8003fdc:	6013      	str	r3, [r2, #0]
 8003fde:	4b76      	ldr	r3, [pc, #472]	; (80041b8 <_dtoa_r+0x218>)
 8003fe0:	bfbc      	itt	lt
 8003fe2:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8003fe6:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8003fea:	ea33 0308 	bics.w	r3, r3, r8
 8003fee:	f000 80a6 	beq.w	800413e <_dtoa_r+0x19e>
 8003ff2:	e9dd 6700 	ldrd	r6, r7, [sp]
 8003ff6:	2200      	movs	r2, #0
 8003ff8:	2300      	movs	r3, #0
 8003ffa:	4630      	mov	r0, r6
 8003ffc:	4639      	mov	r1, r7
 8003ffe:	f7fd f803 	bl	8001008 <__aeabi_dcmpeq>
 8004002:	4605      	mov	r5, r0
 8004004:	b178      	cbz	r0, 8004026 <_dtoa_r+0x86>
 8004006:	9a05      	ldr	r2, [sp, #20]
 8004008:	2301      	movs	r3, #1
 800400a:	6013      	str	r3, [r2, #0]
 800400c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800400e:	2b00      	cmp	r3, #0
 8004010:	f000 80c0 	beq.w	8004194 <_dtoa_r+0x1f4>
 8004014:	4b69      	ldr	r3, [pc, #420]	; (80041bc <_dtoa_r+0x21c>)
 8004016:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004018:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 800401c:	6013      	str	r3, [r2, #0]
 800401e:	4658      	mov	r0, fp
 8004020:	b01b      	add	sp, #108	; 0x6c
 8004022:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004026:	aa18      	add	r2, sp, #96	; 0x60
 8004028:	a919      	add	r1, sp, #100	; 0x64
 800402a:	ec47 6b10 	vmov	d0, r6, r7
 800402e:	4648      	mov	r0, r9
 8004030:	f002 f954 	bl	80062dc <__d2b>
 8004034:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004038:	4682      	mov	sl, r0
 800403a:	f040 80a0 	bne.w	800417e <_dtoa_r+0x1de>
 800403e:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004042:	442c      	add	r4, r5
 8004044:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004048:	2b20      	cmp	r3, #32
 800404a:	f340 842c 	ble.w	80048a6 <_dtoa_r+0x906>
 800404e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004052:	fa08 f803 	lsl.w	r8, r8, r3
 8004056:	9b00      	ldr	r3, [sp, #0]
 8004058:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800405c:	fa23 f000 	lsr.w	r0, r3, r0
 8004060:	ea48 0000 	orr.w	r0, r8, r0
 8004064:	f7fc fcee 	bl	8000a44 <__aeabi_ui2d>
 8004068:	2301      	movs	r3, #1
 800406a:	4606      	mov	r6, r0
 800406c:	3c01      	subs	r4, #1
 800406e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004072:	930f      	str	r3, [sp, #60]	; 0x3c
 8004074:	4630      	mov	r0, r6
 8004076:	4639      	mov	r1, r7
 8004078:	2200      	movs	r2, #0
 800407a:	4b51      	ldr	r3, [pc, #324]	; (80041c0 <_dtoa_r+0x220>)
 800407c:	f7fc fba4 	bl	80007c8 <__aeabi_dsub>
 8004080:	a347      	add	r3, pc, #284	; (adr r3, 80041a0 <_dtoa_r+0x200>)
 8004082:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004086:	f7fc fd57 	bl	8000b38 <__aeabi_dmul>
 800408a:	a347      	add	r3, pc, #284	; (adr r3, 80041a8 <_dtoa_r+0x208>)
 800408c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004090:	f7fc fb9c 	bl	80007cc <__adddf3>
 8004094:	4606      	mov	r6, r0
 8004096:	4620      	mov	r0, r4
 8004098:	460f      	mov	r7, r1
 800409a:	f7fc fce3 	bl	8000a64 <__aeabi_i2d>
 800409e:	a344      	add	r3, pc, #272	; (adr r3, 80041b0 <_dtoa_r+0x210>)
 80040a0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040a4:	f7fc fd48 	bl	8000b38 <__aeabi_dmul>
 80040a8:	4602      	mov	r2, r0
 80040aa:	460b      	mov	r3, r1
 80040ac:	4630      	mov	r0, r6
 80040ae:	4639      	mov	r1, r7
 80040b0:	f7fc fb8c 	bl	80007cc <__adddf3>
 80040b4:	4606      	mov	r6, r0
 80040b6:	460f      	mov	r7, r1
 80040b8:	f7fc ffee 	bl	8001098 <__aeabi_d2iz>
 80040bc:	2200      	movs	r2, #0
 80040be:	9006      	str	r0, [sp, #24]
 80040c0:	2300      	movs	r3, #0
 80040c2:	4630      	mov	r0, r6
 80040c4:	4639      	mov	r1, r7
 80040c6:	f7fc ffa9 	bl	800101c <__aeabi_dcmplt>
 80040ca:	2800      	cmp	r0, #0
 80040cc:	f040 8273 	bne.w	80045b6 <_dtoa_r+0x616>
 80040d0:	9e06      	ldr	r6, [sp, #24]
 80040d2:	2e16      	cmp	r6, #22
 80040d4:	f200 825d 	bhi.w	8004592 <_dtoa_r+0x5f2>
 80040d8:	4b3a      	ldr	r3, [pc, #232]	; (80041c4 <_dtoa_r+0x224>)
 80040da:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80040de:	e9d3 0100 	ldrd	r0, r1, [r3]
 80040e2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80040e6:	f7fc ffb7 	bl	8001058 <__aeabi_dcmpgt>
 80040ea:	2800      	cmp	r0, #0
 80040ec:	f000 83d7 	beq.w	800489e <_dtoa_r+0x8fe>
 80040f0:	1e73      	subs	r3, r6, #1
 80040f2:	9306      	str	r3, [sp, #24]
 80040f4:	2300      	movs	r3, #0
 80040f6:	930d      	str	r3, [sp, #52]	; 0x34
 80040f8:	1b2c      	subs	r4, r5, r4
 80040fa:	f1b4 0801 	subs.w	r8, r4, #1
 80040fe:	f100 8254 	bmi.w	80045aa <_dtoa_r+0x60a>
 8004102:	2300      	movs	r3, #0
 8004104:	9308      	str	r3, [sp, #32]
 8004106:	9b06      	ldr	r3, [sp, #24]
 8004108:	2b00      	cmp	r3, #0
 800410a:	f2c0 8245 	blt.w	8004598 <_dtoa_r+0x5f8>
 800410e:	4498      	add	r8, r3
 8004110:	930c      	str	r3, [sp, #48]	; 0x30
 8004112:	2300      	movs	r3, #0
 8004114:	930b      	str	r3, [sp, #44]	; 0x2c
 8004116:	9b02      	ldr	r3, [sp, #8]
 8004118:	2b09      	cmp	r3, #9
 800411a:	d85b      	bhi.n	80041d4 <_dtoa_r+0x234>
 800411c:	2b05      	cmp	r3, #5
 800411e:	f340 83c0 	ble.w	80048a2 <_dtoa_r+0x902>
 8004122:	3b04      	subs	r3, #4
 8004124:	9302      	str	r3, [sp, #8]
 8004126:	2500      	movs	r5, #0
 8004128:	9b02      	ldr	r3, [sp, #8]
 800412a:	3b02      	subs	r3, #2
 800412c:	2b03      	cmp	r3, #3
 800412e:	f200 8498 	bhi.w	8004a62 <_dtoa_r+0xac2>
 8004132:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004136:	03df      	.short	0x03df
 8004138:	03e803bf 	.word	0x03e803bf
 800413c:	04f5      	.short	0x04f5
 800413e:	9a05      	ldr	r2, [sp, #20]
 8004140:	f242 730f 	movw	r3, #9999	; 0x270f
 8004144:	6013      	str	r3, [r2, #0]
 8004146:	9b00      	ldr	r3, [sp, #0]
 8004148:	b983      	cbnz	r3, 800416c <_dtoa_r+0x1cc>
 800414a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 800414e:	b96b      	cbnz	r3, 800416c <_dtoa_r+0x1cc>
 8004150:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004152:	f8df b074 	ldr.w	fp, [pc, #116]	; 80041c8 <_dtoa_r+0x228>
 8004156:	2b00      	cmp	r3, #0
 8004158:	f43f af61 	beq.w	800401e <_dtoa_r+0x7e>
 800415c:	f10b 0308 	add.w	r3, fp, #8
 8004160:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004162:	4658      	mov	r0, fp
 8004164:	6013      	str	r3, [r2, #0]
 8004166:	b01b      	add	sp, #108	; 0x6c
 8004168:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800416c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800416e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80041cc <_dtoa_r+0x22c>
 8004172:	2b00      	cmp	r3, #0
 8004174:	f43f af53 	beq.w	800401e <_dtoa_r+0x7e>
 8004178:	f10b 0303 	add.w	r3, fp, #3
 800417c:	e7f0      	b.n	8004160 <_dtoa_r+0x1c0>
 800417e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004182:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004186:	950f      	str	r5, [sp, #60]	; 0x3c
 8004188:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 800418c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004190:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004192:	e76f      	b.n	8004074 <_dtoa_r+0xd4>
 8004194:	f8df b038 	ldr.w	fp, [pc, #56]	; 80041d0 <_dtoa_r+0x230>
 8004198:	4658      	mov	r0, fp
 800419a:	b01b      	add	sp, #108	; 0x6c
 800419c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80041a0:	636f4361 	.word	0x636f4361
 80041a4:	3fd287a7 	.word	0x3fd287a7
 80041a8:	8b60c8b3 	.word	0x8b60c8b3
 80041ac:	3fc68a28 	.word	0x3fc68a28
 80041b0:	509f79fb 	.word	0x509f79fb
 80041b4:	3fd34413 	.word	0x3fd34413
 80041b8:	7ff00000 	.word	0x7ff00000
 80041bc:	08006fc9 	.word	0x08006fc9
 80041c0:	3ff80000 	.word	0x3ff80000
 80041c4:	08007028 	.word	0x08007028
 80041c8:	08006fec 	.word	0x08006fec
 80041cc:	08006ff8 	.word	0x08006ff8
 80041d0:	08006fc8 	.word	0x08006fc8
 80041d4:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80041d8:	2501      	movs	r5, #1
 80041da:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80041de:	2300      	movs	r3, #0
 80041e0:	9302      	str	r3, [sp, #8]
 80041e2:	9307      	str	r3, [sp, #28]
 80041e4:	2100      	movs	r1, #0
 80041e6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80041ea:	940e      	str	r4, [sp, #56]	; 0x38
 80041ec:	4648      	mov	r0, r9
 80041ee:	f001 fdcd 	bl	8005d8c <_Balloc>
 80041f2:	2c0e      	cmp	r4, #14
 80041f4:	4683      	mov	fp, r0
 80041f6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80041fa:	f200 80fb 	bhi.w	80043f4 <_dtoa_r+0x454>
 80041fe:	2d00      	cmp	r5, #0
 8004200:	f000 80f8 	beq.w	80043f4 <_dtoa_r+0x454>
 8004204:	ed9d 7b00 	vldr	d7, [sp]
 8004208:	9906      	ldr	r1, [sp, #24]
 800420a:	2900      	cmp	r1, #0
 800420c:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004210:	f340 83e5 	ble.w	80049de <_dtoa_r+0xa3e>
 8004214:	4b9d      	ldr	r3, [pc, #628]	; (800448c <_dtoa_r+0x4ec>)
 8004216:	f001 020f 	and.w	r2, r1, #15
 800421a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800421e:	ed93 7b00 	vldr	d7, [r3]
 8004222:	110c      	asrs	r4, r1, #4
 8004224:	06e2      	lsls	r2, r4, #27
 8004226:	ed8d 7b00 	vstr	d7, [sp]
 800422a:	f140 849e 	bpl.w	8004b6a <_dtoa_r+0xbca>
 800422e:	4b98      	ldr	r3, [pc, #608]	; (8004490 <_dtoa_r+0x4f0>)
 8004230:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004234:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004238:	f7fc fda8 	bl	8000d8c <__aeabi_ddiv>
 800423c:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004240:	f004 040f 	and.w	r4, r4, #15
 8004244:	2603      	movs	r6, #3
 8004246:	b17c      	cbz	r4, 8004268 <_dtoa_r+0x2c8>
 8004248:	e9dd 0100 	ldrd	r0, r1, [sp]
 800424c:	4d90      	ldr	r5, [pc, #576]	; (8004490 <_dtoa_r+0x4f0>)
 800424e:	07e3      	lsls	r3, r4, #31
 8004250:	d504      	bpl.n	800425c <_dtoa_r+0x2bc>
 8004252:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004256:	f7fc fc6f 	bl	8000b38 <__aeabi_dmul>
 800425a:	3601      	adds	r6, #1
 800425c:	1064      	asrs	r4, r4, #1
 800425e:	f105 0508 	add.w	r5, r5, #8
 8004262:	d1f4      	bne.n	800424e <_dtoa_r+0x2ae>
 8004264:	e9cd 0100 	strd	r0, r1, [sp]
 8004268:	e9dd 2300 	ldrd	r2, r3, [sp]
 800426c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004270:	f7fc fd8c 	bl	8000d8c <__aeabi_ddiv>
 8004274:	e9cd 0100 	strd	r0, r1, [sp]
 8004278:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800427a:	b143      	cbz	r3, 800428e <_dtoa_r+0x2ee>
 800427c:	2200      	movs	r2, #0
 800427e:	4b85      	ldr	r3, [pc, #532]	; (8004494 <_dtoa_r+0x4f4>)
 8004280:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004284:	f7fc feca 	bl	800101c <__aeabi_dcmplt>
 8004288:	2800      	cmp	r0, #0
 800428a:	f040 84ff 	bne.w	8004c8c <_dtoa_r+0xcec>
 800428e:	4630      	mov	r0, r6
 8004290:	f7fc fbe8 	bl	8000a64 <__aeabi_i2d>
 8004294:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004298:	f7fc fc4e 	bl	8000b38 <__aeabi_dmul>
 800429c:	4b7e      	ldr	r3, [pc, #504]	; (8004498 <_dtoa_r+0x4f8>)
 800429e:	2200      	movs	r2, #0
 80042a0:	f7fc fa94 	bl	80007cc <__adddf3>
 80042a4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80042a6:	4606      	mov	r6, r0
 80042a8:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80042ac:	2b00      	cmp	r3, #0
 80042ae:	f000 841c 	beq.w	8004aea <_dtoa_r+0xb4a>
 80042b2:	9b06      	ldr	r3, [sp, #24]
 80042b4:	9316      	str	r3, [sp, #88]	; 0x58
 80042b6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80042b8:	9312      	str	r3, [sp, #72]	; 0x48
 80042ba:	e9dd 0100 	ldrd	r0, r1, [sp]
 80042be:	f7fc feeb 	bl	8001098 <__aeabi_d2iz>
 80042c2:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80042c4:	4b71      	ldr	r3, [pc, #452]	; (800448c <_dtoa_r+0x4ec>)
 80042c6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80042ca:	ed13 7b02 	vldr	d7, [r3, #-8]
 80042ce:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80042d2:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80042d6:	f7fc fbc5 	bl	8000a64 <__aeabi_i2d>
 80042da:	460b      	mov	r3, r1
 80042dc:	4602      	mov	r2, r0
 80042de:	e9dd 0100 	ldrd	r0, r1, [sp]
 80042e2:	e9cd 6700 	strd	r6, r7, [sp]
 80042e6:	f7fc fa6f 	bl	80007c8 <__aeabi_dsub>
 80042ea:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80042ec:	b2ed      	uxtb	r5, r5
 80042ee:	4606      	mov	r6, r0
 80042f0:	460f      	mov	r7, r1
 80042f2:	f10b 0401 	add.w	r4, fp, #1
 80042f6:	2b00      	cmp	r3, #0
 80042f8:	f000 8458 	beq.w	8004bac <_dtoa_r+0xc0c>
 80042fc:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004300:	2000      	movs	r0, #0
 8004302:	4966      	ldr	r1, [pc, #408]	; (800449c <_dtoa_r+0x4fc>)
 8004304:	f7fc fd42 	bl	8000d8c <__aeabi_ddiv>
 8004308:	e9dd 2300 	ldrd	r2, r3, [sp]
 800430c:	f7fc fa5c 	bl	80007c8 <__aeabi_dsub>
 8004310:	f88b 5000 	strb.w	r5, [fp]
 8004314:	4632      	mov	r2, r6
 8004316:	463b      	mov	r3, r7
 8004318:	e9cd 0100 	strd	r0, r1, [sp]
 800431c:	f7fc fe9c 	bl	8001058 <__aeabi_dcmpgt>
 8004320:	2800      	cmp	r0, #0
 8004322:	f040 8502 	bne.w	8004d2a <_dtoa_r+0xd8a>
 8004326:	4632      	mov	r2, r6
 8004328:	463b      	mov	r3, r7
 800432a:	2000      	movs	r0, #0
 800432c:	4959      	ldr	r1, [pc, #356]	; (8004494 <_dtoa_r+0x4f4>)
 800432e:	f7fc fa4b 	bl	80007c8 <__aeabi_dsub>
 8004332:	4602      	mov	r2, r0
 8004334:	460b      	mov	r3, r1
 8004336:	e9dd 0100 	ldrd	r0, r1, [sp]
 800433a:	f7fc fe8d 	bl	8001058 <__aeabi_dcmpgt>
 800433e:	2800      	cmp	r0, #0
 8004340:	f040 84fb 	bne.w	8004d3a <_dtoa_r+0xd9a>
 8004344:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004346:	2a01      	cmp	r2, #1
 8004348:	d050      	beq.n	80043ec <_dtoa_r+0x44c>
 800434a:	445a      	add	r2, fp
 800434c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004350:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004354:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004358:	4692      	mov	sl, r2
 800435a:	46cb      	mov	fp, r9
 800435c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004360:	e00c      	b.n	800437c <_dtoa_r+0x3dc>
 8004362:	2000      	movs	r0, #0
 8004364:	494b      	ldr	r1, [pc, #300]	; (8004494 <_dtoa_r+0x4f4>)
 8004366:	f7fc fa2f 	bl	80007c8 <__aeabi_dsub>
 800436a:	4642      	mov	r2, r8
 800436c:	464b      	mov	r3, r9
 800436e:	f7fc fe55 	bl	800101c <__aeabi_dcmplt>
 8004372:	2800      	cmp	r0, #0
 8004374:	f040 84dc 	bne.w	8004d30 <_dtoa_r+0xd90>
 8004378:	4554      	cmp	r4, sl
 800437a:	d030      	beq.n	80043de <_dtoa_r+0x43e>
 800437c:	4640      	mov	r0, r8
 800437e:	4649      	mov	r1, r9
 8004380:	2200      	movs	r2, #0
 8004382:	4b47      	ldr	r3, [pc, #284]	; (80044a0 <_dtoa_r+0x500>)
 8004384:	f7fc fbd8 	bl	8000b38 <__aeabi_dmul>
 8004388:	2200      	movs	r2, #0
 800438a:	4b45      	ldr	r3, [pc, #276]	; (80044a0 <_dtoa_r+0x500>)
 800438c:	4680      	mov	r8, r0
 800438e:	4689      	mov	r9, r1
 8004390:	4630      	mov	r0, r6
 8004392:	4639      	mov	r1, r7
 8004394:	f7fc fbd0 	bl	8000b38 <__aeabi_dmul>
 8004398:	460f      	mov	r7, r1
 800439a:	4606      	mov	r6, r0
 800439c:	f7fc fe7c 	bl	8001098 <__aeabi_d2iz>
 80043a0:	4605      	mov	r5, r0
 80043a2:	f7fc fb5f 	bl	8000a64 <__aeabi_i2d>
 80043a6:	4602      	mov	r2, r0
 80043a8:	460b      	mov	r3, r1
 80043aa:	4630      	mov	r0, r6
 80043ac:	4639      	mov	r1, r7
 80043ae:	f7fc fa0b 	bl	80007c8 <__aeabi_dsub>
 80043b2:	3530      	adds	r5, #48	; 0x30
 80043b4:	b2ed      	uxtb	r5, r5
 80043b6:	4642      	mov	r2, r8
 80043b8:	464b      	mov	r3, r9
 80043ba:	f804 5b01 	strb.w	r5, [r4], #1
 80043be:	4606      	mov	r6, r0
 80043c0:	460f      	mov	r7, r1
 80043c2:	f7fc fe2b 	bl	800101c <__aeabi_dcmplt>
 80043c6:	4632      	mov	r2, r6
 80043c8:	463b      	mov	r3, r7
 80043ca:	2800      	cmp	r0, #0
 80043cc:	d0c9      	beq.n	8004362 <_dtoa_r+0x3c2>
 80043ce:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80043d0:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80043d4:	9306      	str	r3, [sp, #24]
 80043d6:	46d9      	mov	r9, fp
 80043d8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80043dc:	e236      	b.n	800484c <_dtoa_r+0x8ac>
 80043de:	46d9      	mov	r9, fp
 80043e0:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80043e4:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80043e8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80043ec:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80043f0:	e9cd 3400 	strd	r3, r4, [sp]
 80043f4:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80043f6:	2b00      	cmp	r3, #0
 80043f8:	f2c0 80ae 	blt.w	8004558 <_dtoa_r+0x5b8>
 80043fc:	9a06      	ldr	r2, [sp, #24]
 80043fe:	2a0e      	cmp	r2, #14
 8004400:	f300 80aa 	bgt.w	8004558 <_dtoa_r+0x5b8>
 8004404:	4b21      	ldr	r3, [pc, #132]	; (800448c <_dtoa_r+0x4ec>)
 8004406:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800440a:	ed93 7b00 	vldr	d7, [r3]
 800440e:	9b07      	ldr	r3, [sp, #28]
 8004410:	2b00      	cmp	r3, #0
 8004412:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004416:	f2c0 82be 	blt.w	8004996 <_dtoa_r+0x9f6>
 800441a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800441e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004422:	4630      	mov	r0, r6
 8004424:	4639      	mov	r1, r7
 8004426:	f7fc fcb1 	bl	8000d8c <__aeabi_ddiv>
 800442a:	f7fc fe35 	bl	8001098 <__aeabi_d2iz>
 800442e:	4605      	mov	r5, r0
 8004430:	f7fc fb18 	bl	8000a64 <__aeabi_i2d>
 8004434:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004438:	f7fc fb7e 	bl	8000b38 <__aeabi_dmul>
 800443c:	460b      	mov	r3, r1
 800443e:	4602      	mov	r2, r0
 8004440:	4639      	mov	r1, r7
 8004442:	4630      	mov	r0, r6
 8004444:	f7fc f9c0 	bl	80007c8 <__aeabi_dsub>
 8004448:	f105 0330 	add.w	r3, r5, #48	; 0x30
 800444c:	f88b 3000 	strb.w	r3, [fp]
 8004450:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004452:	2b01      	cmp	r3, #1
 8004454:	4606      	mov	r6, r0
 8004456:	460f      	mov	r7, r1
 8004458:	f10b 0401 	add.w	r4, fp, #1
 800445c:	d053      	beq.n	8004506 <_dtoa_r+0x566>
 800445e:	2200      	movs	r2, #0
 8004460:	4b0f      	ldr	r3, [pc, #60]	; (80044a0 <_dtoa_r+0x500>)
 8004462:	f7fc fb69 	bl	8000b38 <__aeabi_dmul>
 8004466:	2200      	movs	r2, #0
 8004468:	2300      	movs	r3, #0
 800446a:	4606      	mov	r6, r0
 800446c:	460f      	mov	r7, r1
 800446e:	f7fc fdcb 	bl	8001008 <__aeabi_dcmpeq>
 8004472:	2800      	cmp	r0, #0
 8004474:	f040 81ea 	bne.w	800484c <_dtoa_r+0x8ac>
 8004478:	f8cd a000 	str.w	sl, [sp]
 800447c:	f8cd 901c 	str.w	r9, [sp, #28]
 8004480:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004484:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004488:	e017      	b.n	80044ba <_dtoa_r+0x51a>
 800448a:	bf00      	nop
 800448c:	08007028 	.word	0x08007028
 8004490:	08007000 	.word	0x08007000
 8004494:	3ff00000 	.word	0x3ff00000
 8004498:	401c0000 	.word	0x401c0000
 800449c:	3fe00000 	.word	0x3fe00000
 80044a0:	40240000 	.word	0x40240000
 80044a4:	f7fc fb48 	bl	8000b38 <__aeabi_dmul>
 80044a8:	2200      	movs	r2, #0
 80044aa:	2300      	movs	r3, #0
 80044ac:	4606      	mov	r6, r0
 80044ae:	460f      	mov	r7, r1
 80044b0:	f7fc fdaa 	bl	8001008 <__aeabi_dcmpeq>
 80044b4:	2800      	cmp	r0, #0
 80044b6:	f040 833d 	bne.w	8004b34 <_dtoa_r+0xb94>
 80044ba:	464a      	mov	r2, r9
 80044bc:	4653      	mov	r3, sl
 80044be:	4630      	mov	r0, r6
 80044c0:	4639      	mov	r1, r7
 80044c2:	f7fc fc63 	bl	8000d8c <__aeabi_ddiv>
 80044c6:	f7fc fde7 	bl	8001098 <__aeabi_d2iz>
 80044ca:	4605      	mov	r5, r0
 80044cc:	f7fc faca 	bl	8000a64 <__aeabi_i2d>
 80044d0:	464a      	mov	r2, r9
 80044d2:	4653      	mov	r3, sl
 80044d4:	f7fc fb30 	bl	8000b38 <__aeabi_dmul>
 80044d8:	4602      	mov	r2, r0
 80044da:	460b      	mov	r3, r1
 80044dc:	4630      	mov	r0, r6
 80044de:	4639      	mov	r1, r7
 80044e0:	f7fc f972 	bl	80007c8 <__aeabi_dsub>
 80044e4:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80044e8:	f804 cb01 	strb.w	ip, [r4], #1
 80044ec:	eba4 0c0b 	sub.w	ip, r4, fp
 80044f0:	45e0      	cmp	r8, ip
 80044f2:	4606      	mov	r6, r0
 80044f4:	460f      	mov	r7, r1
 80044f6:	f04f 0200 	mov.w	r2, #0
 80044fa:	4bc1      	ldr	r3, [pc, #772]	; (8004800 <_dtoa_r+0x860>)
 80044fc:	d1d2      	bne.n	80044a4 <_dtoa_r+0x504>
 80044fe:	f8dd a000 	ldr.w	sl, [sp]
 8004502:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004506:	4632      	mov	r2, r6
 8004508:	463b      	mov	r3, r7
 800450a:	4630      	mov	r0, r6
 800450c:	4639      	mov	r1, r7
 800450e:	f7fc f95d 	bl	80007cc <__adddf3>
 8004512:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004516:	4606      	mov	r6, r0
 8004518:	460f      	mov	r7, r1
 800451a:	f7fc fd9d 	bl	8001058 <__aeabi_dcmpgt>
 800451e:	b958      	cbnz	r0, 8004538 <_dtoa_r+0x598>
 8004520:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004524:	4630      	mov	r0, r6
 8004526:	4639      	mov	r1, r7
 8004528:	f7fc fd6e 	bl	8001008 <__aeabi_dcmpeq>
 800452c:	2800      	cmp	r0, #0
 800452e:	f000 818d 	beq.w	800484c <_dtoa_r+0x8ac>
 8004532:	07e9      	lsls	r1, r5, #31
 8004534:	f140 818a 	bpl.w	800484c <_dtoa_r+0x8ac>
 8004538:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800453c:	e005      	b.n	800454a <_dtoa_r+0x5aa>
 800453e:	459b      	cmp	fp, r3
 8004540:	f000 8373 	beq.w	8004c2a <_dtoa_r+0xc8a>
 8004544:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004548:	461c      	mov	r4, r3
 800454a:	2d39      	cmp	r5, #57	; 0x39
 800454c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004550:	d0f5      	beq.n	800453e <_dtoa_r+0x59e>
 8004552:	3501      	adds	r5, #1
 8004554:	701d      	strb	r5, [r3, #0]
 8004556:	e179      	b.n	800484c <_dtoa_r+0x8ac>
 8004558:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800455a:	2a00      	cmp	r2, #0
 800455c:	d03b      	beq.n	80045d6 <_dtoa_r+0x636>
 800455e:	9a02      	ldr	r2, [sp, #8]
 8004560:	2a01      	cmp	r2, #1
 8004562:	f340 820b 	ble.w	800497c <_dtoa_r+0x9dc>
 8004566:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004568:	1e5f      	subs	r7, r3, #1
 800456a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800456c:	42bb      	cmp	r3, r7
 800456e:	f2c0 82e6 	blt.w	8004b3e <_dtoa_r+0xb9e>
 8004572:	1bdf      	subs	r7, r3, r7
 8004574:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004576:	2b00      	cmp	r3, #0
 8004578:	f2c0 830b 	blt.w	8004b92 <_dtoa_r+0xbf2>
 800457c:	9a08      	ldr	r2, [sp, #32]
 800457e:	4614      	mov	r4, r2
 8004580:	441a      	add	r2, r3
 8004582:	4498      	add	r8, r3
 8004584:	9208      	str	r2, [sp, #32]
 8004586:	2101      	movs	r1, #1
 8004588:	4648      	mov	r0, r9
 800458a:	f001 fcbf 	bl	8005f0c <__i2b>
 800458e:	4605      	mov	r5, r0
 8004590:	e024      	b.n	80045dc <_dtoa_r+0x63c>
 8004592:	2301      	movs	r3, #1
 8004594:	930d      	str	r3, [sp, #52]	; 0x34
 8004596:	e5af      	b.n	80040f8 <_dtoa_r+0x158>
 8004598:	9a08      	ldr	r2, [sp, #32]
 800459a:	9b06      	ldr	r3, [sp, #24]
 800459c:	1ad2      	subs	r2, r2, r3
 800459e:	425b      	negs	r3, r3
 80045a0:	930b      	str	r3, [sp, #44]	; 0x2c
 80045a2:	2300      	movs	r3, #0
 80045a4:	9208      	str	r2, [sp, #32]
 80045a6:	930c      	str	r3, [sp, #48]	; 0x30
 80045a8:	e5b5      	b.n	8004116 <_dtoa_r+0x176>
 80045aa:	f1c4 0301 	rsb	r3, r4, #1
 80045ae:	9308      	str	r3, [sp, #32]
 80045b0:	f04f 0800 	mov.w	r8, #0
 80045b4:	e5a7      	b.n	8004106 <_dtoa_r+0x166>
 80045b6:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80045ba:	4640      	mov	r0, r8
 80045bc:	f7fc fa52 	bl	8000a64 <__aeabi_i2d>
 80045c0:	4632      	mov	r2, r6
 80045c2:	463b      	mov	r3, r7
 80045c4:	f7fc fd20 	bl	8001008 <__aeabi_dcmpeq>
 80045c8:	2800      	cmp	r0, #0
 80045ca:	f47f ad81 	bne.w	80040d0 <_dtoa_r+0x130>
 80045ce:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80045d2:	9306      	str	r3, [sp, #24]
 80045d4:	e57c      	b.n	80040d0 <_dtoa_r+0x130>
 80045d6:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80045d8:	9c08      	ldr	r4, [sp, #32]
 80045da:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80045dc:	2c00      	cmp	r4, #0
 80045de:	dd0c      	ble.n	80045fa <_dtoa_r+0x65a>
 80045e0:	f1b8 0f00 	cmp.w	r8, #0
 80045e4:	dd09      	ble.n	80045fa <_dtoa_r+0x65a>
 80045e6:	4544      	cmp	r4, r8
 80045e8:	9a08      	ldr	r2, [sp, #32]
 80045ea:	4623      	mov	r3, r4
 80045ec:	bfa8      	it	ge
 80045ee:	4643      	movge	r3, r8
 80045f0:	1ad2      	subs	r2, r2, r3
 80045f2:	9208      	str	r2, [sp, #32]
 80045f4:	1ae4      	subs	r4, r4, r3
 80045f6:	eba8 0803 	sub.w	r8, r8, r3
 80045fa:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80045fc:	b16b      	cbz	r3, 800461a <_dtoa_r+0x67a>
 80045fe:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004600:	2a00      	cmp	r2, #0
 8004602:	f000 8290 	beq.w	8004b26 <_dtoa_r+0xb86>
 8004606:	1bde      	subs	r6, r3, r7
 8004608:	2f00      	cmp	r7, #0
 800460a:	f040 819b 	bne.w	8004944 <_dtoa_r+0x9a4>
 800460e:	4651      	mov	r1, sl
 8004610:	4632      	mov	r2, r6
 8004612:	4648      	mov	r0, r9
 8004614:	f001 fd2a 	bl	800606c <__pow5mult>
 8004618:	4682      	mov	sl, r0
 800461a:	2101      	movs	r1, #1
 800461c:	4648      	mov	r0, r9
 800461e:	f001 fc75 	bl	8005f0c <__i2b>
 8004622:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004624:	4606      	mov	r6, r0
 8004626:	2a00      	cmp	r2, #0
 8004628:	f040 8125 	bne.w	8004876 <_dtoa_r+0x8d6>
 800462c:	9b02      	ldr	r3, [sp, #8]
 800462e:	2b01      	cmp	r3, #1
 8004630:	f340 816c 	ble.w	800490c <_dtoa_r+0x96c>
 8004634:	2001      	movs	r0, #1
 8004636:	4440      	add	r0, r8
 8004638:	f010 001f 	ands.w	r0, r0, #31
 800463c:	f000 8119 	beq.w	8004872 <_dtoa_r+0x8d2>
 8004640:	f1c0 0320 	rsb	r3, r0, #32
 8004644:	2b04      	cmp	r3, #4
 8004646:	f340 83ac 	ble.w	8004da2 <_dtoa_r+0xe02>
 800464a:	f1c0 001c 	rsb	r0, r0, #28
 800464e:	9b08      	ldr	r3, [sp, #32]
 8004650:	4403      	add	r3, r0
 8004652:	9308      	str	r3, [sp, #32]
 8004654:	4404      	add	r4, r0
 8004656:	4480      	add	r8, r0
 8004658:	9b08      	ldr	r3, [sp, #32]
 800465a:	2b00      	cmp	r3, #0
 800465c:	dd05      	ble.n	800466a <_dtoa_r+0x6ca>
 800465e:	4651      	mov	r1, sl
 8004660:	461a      	mov	r2, r3
 8004662:	4648      	mov	r0, r9
 8004664:	f001 fd52 	bl	800610c <__lshift>
 8004668:	4682      	mov	sl, r0
 800466a:	f1b8 0f00 	cmp.w	r8, #0
 800466e:	dd05      	ble.n	800467c <_dtoa_r+0x6dc>
 8004670:	4631      	mov	r1, r6
 8004672:	4642      	mov	r2, r8
 8004674:	4648      	mov	r0, r9
 8004676:	f001 fd49 	bl	800610c <__lshift>
 800467a:	4606      	mov	r6, r0
 800467c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800467e:	2b00      	cmp	r3, #0
 8004680:	d177      	bne.n	8004772 <_dtoa_r+0x7d2>
 8004682:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004684:	2b00      	cmp	r3, #0
 8004686:	f340 8209 	ble.w	8004a9c <_dtoa_r+0xafc>
 800468a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800468c:	2b00      	cmp	r3, #0
 800468e:	f000 8089 	beq.w	80047a4 <_dtoa_r+0x804>
 8004692:	2c00      	cmp	r4, #0
 8004694:	f300 816b 	bgt.w	800496e <_dtoa_r+0x9ce>
 8004698:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800469a:	2b00      	cmp	r3, #0
 800469c:	f040 81cd 	bne.w	8004a3a <_dtoa_r+0xa9a>
 80046a0:	46a8      	mov	r8, r5
 80046a2:	9a00      	ldr	r2, [sp, #0]
 80046a4:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 80046a8:	f002 0201 	and.w	r2, r2, #1
 80046ac:	920a      	str	r2, [sp, #40]	; 0x28
 80046ae:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80046b0:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 80046b4:	441a      	add	r2, r3
 80046b6:	465f      	mov	r7, fp
 80046b8:	9209      	str	r2, [sp, #36]	; 0x24
 80046ba:	46b3      	mov	fp, r6
 80046bc:	4659      	mov	r1, fp
 80046be:	4650      	mov	r0, sl
 80046c0:	f7ff fbdc 	bl	8003e7c <quorem>
 80046c4:	4629      	mov	r1, r5
 80046c6:	4604      	mov	r4, r0
 80046c8:	4650      	mov	r0, sl
 80046ca:	f001 fd75 	bl	80061b8 <__mcmp>
 80046ce:	4659      	mov	r1, fp
 80046d0:	4606      	mov	r6, r0
 80046d2:	4642      	mov	r2, r8
 80046d4:	4648      	mov	r0, r9
 80046d6:	f001 fd8b 	bl	80061f0 <__mdiff>
 80046da:	f104 0330 	add.w	r3, r4, #48	; 0x30
 80046de:	9300      	str	r3, [sp, #0]
 80046e0:	68c3      	ldr	r3, [r0, #12]
 80046e2:	4601      	mov	r1, r0
 80046e4:	2b00      	cmp	r3, #0
 80046e6:	f040 81d4 	bne.w	8004a92 <_dtoa_r+0xaf2>
 80046ea:	9008      	str	r0, [sp, #32]
 80046ec:	4650      	mov	r0, sl
 80046ee:	f001 fd63 	bl	80061b8 <__mcmp>
 80046f2:	9a08      	ldr	r2, [sp, #32]
 80046f4:	9007      	str	r0, [sp, #28]
 80046f6:	4611      	mov	r1, r2
 80046f8:	4648      	mov	r0, r9
 80046fa:	f001 fb6d 	bl	8005dd8 <_Bfree>
 80046fe:	9b07      	ldr	r3, [sp, #28]
 8004700:	b933      	cbnz	r3, 8004710 <_dtoa_r+0x770>
 8004702:	9a02      	ldr	r2, [sp, #8]
 8004704:	b922      	cbnz	r2, 8004710 <_dtoa_r+0x770>
 8004706:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004708:	2b00      	cmp	r3, #0
 800470a:	f000 8319 	beq.w	8004d40 <_dtoa_r+0xda0>
 800470e:	9b02      	ldr	r3, [sp, #8]
 8004710:	2e00      	cmp	r6, #0
 8004712:	f2c0 821c 	blt.w	8004b4e <_dtoa_r+0xbae>
 8004716:	d105      	bne.n	8004724 <_dtoa_r+0x784>
 8004718:	9a02      	ldr	r2, [sp, #8]
 800471a:	b91a      	cbnz	r2, 8004724 <_dtoa_r+0x784>
 800471c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800471e:	2a00      	cmp	r2, #0
 8004720:	f000 8215 	beq.w	8004b4e <_dtoa_r+0xbae>
 8004724:	2b00      	cmp	r3, #0
 8004726:	f107 0401 	add.w	r4, r7, #1
 800472a:	f300 8225 	bgt.w	8004b78 <_dtoa_r+0xbd8>
 800472e:	9b00      	ldr	r3, [sp, #0]
 8004730:	703b      	strb	r3, [r7, #0]
 8004732:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004734:	42bb      	cmp	r3, r7
 8004736:	f000 8230 	beq.w	8004b9a <_dtoa_r+0xbfa>
 800473a:	4651      	mov	r1, sl
 800473c:	2300      	movs	r3, #0
 800473e:	220a      	movs	r2, #10
 8004740:	4648      	mov	r0, r9
 8004742:	f001 fb53 	bl	8005dec <__multadd>
 8004746:	4545      	cmp	r5, r8
 8004748:	4682      	mov	sl, r0
 800474a:	4629      	mov	r1, r5
 800474c:	f04f 0300 	mov.w	r3, #0
 8004750:	f04f 020a 	mov.w	r2, #10
 8004754:	4648      	mov	r0, r9
 8004756:	f000 8196 	beq.w	8004a86 <_dtoa_r+0xae6>
 800475a:	f001 fb47 	bl	8005dec <__multadd>
 800475e:	4641      	mov	r1, r8
 8004760:	4605      	mov	r5, r0
 8004762:	2300      	movs	r3, #0
 8004764:	220a      	movs	r2, #10
 8004766:	4648      	mov	r0, r9
 8004768:	f001 fb40 	bl	8005dec <__multadd>
 800476c:	4627      	mov	r7, r4
 800476e:	4680      	mov	r8, r0
 8004770:	e7a4      	b.n	80046bc <_dtoa_r+0x71c>
 8004772:	4631      	mov	r1, r6
 8004774:	4650      	mov	r0, sl
 8004776:	f001 fd1f 	bl	80061b8 <__mcmp>
 800477a:	2800      	cmp	r0, #0
 800477c:	da81      	bge.n	8004682 <_dtoa_r+0x6e2>
 800477e:	9f06      	ldr	r7, [sp, #24]
 8004780:	4651      	mov	r1, sl
 8004782:	2300      	movs	r3, #0
 8004784:	220a      	movs	r2, #10
 8004786:	4648      	mov	r0, r9
 8004788:	3f01      	subs	r7, #1
 800478a:	9706      	str	r7, [sp, #24]
 800478c:	f001 fb2e 	bl	8005dec <__multadd>
 8004790:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004792:	4682      	mov	sl, r0
 8004794:	2b00      	cmp	r3, #0
 8004796:	f040 82eb 	bne.w	8004d70 <_dtoa_r+0xdd0>
 800479a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800479c:	2b00      	cmp	r3, #0
 800479e:	f340 82f3 	ble.w	8004d88 <_dtoa_r+0xde8>
 80047a2:	9309      	str	r3, [sp, #36]	; 0x24
 80047a4:	465c      	mov	r4, fp
 80047a6:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80047aa:	e002      	b.n	80047b2 <_dtoa_r+0x812>
 80047ac:	f001 fb1e 	bl	8005dec <__multadd>
 80047b0:	4682      	mov	sl, r0
 80047b2:	4631      	mov	r1, r6
 80047b4:	4650      	mov	r0, sl
 80047b6:	f7ff fb61 	bl	8003e7c <quorem>
 80047ba:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80047be:	f804 7b01 	strb.w	r7, [r4], #1
 80047c2:	eba4 030b 	sub.w	r3, r4, fp
 80047c6:	4598      	cmp	r8, r3
 80047c8:	f04f 020a 	mov.w	r2, #10
 80047cc:	f04f 0300 	mov.w	r3, #0
 80047d0:	4651      	mov	r1, sl
 80047d2:	4648      	mov	r0, r9
 80047d4:	dcea      	bgt.n	80047ac <_dtoa_r+0x80c>
 80047d6:	2300      	movs	r3, #0
 80047d8:	9700      	str	r7, [sp, #0]
 80047da:	9302      	str	r3, [sp, #8]
 80047dc:	4651      	mov	r1, sl
 80047de:	2201      	movs	r2, #1
 80047e0:	4648      	mov	r0, r9
 80047e2:	f001 fc93 	bl	800610c <__lshift>
 80047e6:	4631      	mov	r1, r6
 80047e8:	4682      	mov	sl, r0
 80047ea:	f001 fce5 	bl	80061b8 <__mcmp>
 80047ee:	2800      	cmp	r0, #0
 80047f0:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 80047f4:	dc14      	bgt.n	8004820 <_dtoa_r+0x880>
 80047f6:	d108      	bne.n	800480a <_dtoa_r+0x86a>
 80047f8:	9b00      	ldr	r3, [sp, #0]
 80047fa:	07db      	lsls	r3, r3, #31
 80047fc:	d410      	bmi.n	8004820 <_dtoa_r+0x880>
 80047fe:	e004      	b.n	800480a <_dtoa_r+0x86a>
 8004800:	40240000 	.word	0x40240000
 8004804:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004808:	461c      	mov	r4, r3
 800480a:	2a30      	cmp	r2, #48	; 0x30
 800480c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004810:	d0f8      	beq.n	8004804 <_dtoa_r+0x864>
 8004812:	e00b      	b.n	800482c <_dtoa_r+0x88c>
 8004814:	459b      	cmp	fp, r3
 8004816:	f000 814e 	beq.w	8004ab6 <_dtoa_r+0xb16>
 800481a:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 800481e:	461c      	mov	r4, r3
 8004820:	2a39      	cmp	r2, #57	; 0x39
 8004822:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004826:	d0f5      	beq.n	8004814 <_dtoa_r+0x874>
 8004828:	3201      	adds	r2, #1
 800482a:	701a      	strb	r2, [r3, #0]
 800482c:	4631      	mov	r1, r6
 800482e:	4648      	mov	r0, r9
 8004830:	f001 fad2 	bl	8005dd8 <_Bfree>
 8004834:	b155      	cbz	r5, 800484c <_dtoa_r+0x8ac>
 8004836:	9902      	ldr	r1, [sp, #8]
 8004838:	b121      	cbz	r1, 8004844 <_dtoa_r+0x8a4>
 800483a:	42a9      	cmp	r1, r5
 800483c:	d002      	beq.n	8004844 <_dtoa_r+0x8a4>
 800483e:	4648      	mov	r0, r9
 8004840:	f001 faca 	bl	8005dd8 <_Bfree>
 8004844:	4629      	mov	r1, r5
 8004846:	4648      	mov	r0, r9
 8004848:	f001 fac6 	bl	8005dd8 <_Bfree>
 800484c:	4651      	mov	r1, sl
 800484e:	4648      	mov	r0, r9
 8004850:	f001 fac2 	bl	8005dd8 <_Bfree>
 8004854:	2200      	movs	r2, #0
 8004856:	9b06      	ldr	r3, [sp, #24]
 8004858:	7022      	strb	r2, [r4, #0]
 800485a:	9a05      	ldr	r2, [sp, #20]
 800485c:	3301      	adds	r3, #1
 800485e:	6013      	str	r3, [r2, #0]
 8004860:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004862:	2b00      	cmp	r3, #0
 8004864:	f43f abdb 	beq.w	800401e <_dtoa_r+0x7e>
 8004868:	4658      	mov	r0, fp
 800486a:	601c      	str	r4, [r3, #0]
 800486c:	b01b      	add	sp, #108	; 0x6c
 800486e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004872:	201c      	movs	r0, #28
 8004874:	e6eb      	b.n	800464e <_dtoa_r+0x6ae>
 8004876:	4601      	mov	r1, r0
 8004878:	4648      	mov	r0, r9
 800487a:	f001 fbf7 	bl	800606c <__pow5mult>
 800487e:	9b02      	ldr	r3, [sp, #8]
 8004880:	2b01      	cmp	r3, #1
 8004882:	4606      	mov	r6, r0
 8004884:	f340 80d4 	ble.w	8004a30 <_dtoa_r+0xa90>
 8004888:	2300      	movs	r3, #0
 800488a:	930c      	str	r3, [sp, #48]	; 0x30
 800488c:	6933      	ldr	r3, [r6, #16]
 800488e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004892:	6918      	ldr	r0, [r3, #16]
 8004894:	f001 faea 	bl	8005e6c <__hi0bits>
 8004898:	f1c0 0020 	rsb	r0, r0, #32
 800489c:	e6cb      	b.n	8004636 <_dtoa_r+0x696>
 800489e:	900d      	str	r0, [sp, #52]	; 0x34
 80048a0:	e42a      	b.n	80040f8 <_dtoa_r+0x158>
 80048a2:	2501      	movs	r5, #1
 80048a4:	e440      	b.n	8004128 <_dtoa_r+0x188>
 80048a6:	f1c3 0820 	rsb	r8, r3, #32
 80048aa:	9b00      	ldr	r3, [sp, #0]
 80048ac:	fa03 f008 	lsl.w	r0, r3, r8
 80048b0:	f7ff bbd8 	b.w	8004064 <_dtoa_r+0xc4>
 80048b4:	2300      	movs	r3, #0
 80048b6:	930a      	str	r3, [sp, #40]	; 0x28
 80048b8:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 80048bc:	4413      	add	r3, r2
 80048be:	930e      	str	r3, [sp, #56]	; 0x38
 80048c0:	3301      	adds	r3, #1
 80048c2:	2b01      	cmp	r3, #1
 80048c4:	461e      	mov	r6, r3
 80048c6:	9309      	str	r3, [sp, #36]	; 0x24
 80048c8:	bfb8      	it	lt
 80048ca:	2601      	movlt	r6, #1
 80048cc:	2100      	movs	r1, #0
 80048ce:	2e17      	cmp	r6, #23
 80048d0:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80048d4:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80048d6:	f77f ac89 	ble.w	80041ec <_dtoa_r+0x24c>
 80048da:	2201      	movs	r2, #1
 80048dc:	2304      	movs	r3, #4
 80048de:	005b      	lsls	r3, r3, #1
 80048e0:	f103 0014 	add.w	r0, r3, #20
 80048e4:	42b0      	cmp	r0, r6
 80048e6:	4611      	mov	r1, r2
 80048e8:	f102 0201 	add.w	r2, r2, #1
 80048ec:	d9f7      	bls.n	80048de <_dtoa_r+0x93e>
 80048ee:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80048f2:	e47b      	b.n	80041ec <_dtoa_r+0x24c>
 80048f4:	2300      	movs	r3, #0
 80048f6:	930a      	str	r3, [sp, #40]	; 0x28
 80048f8:	9e07      	ldr	r6, [sp, #28]
 80048fa:	2e00      	cmp	r6, #0
 80048fc:	f340 80e2 	ble.w	8004ac4 <_dtoa_r+0xb24>
 8004900:	960e      	str	r6, [sp, #56]	; 0x38
 8004902:	9609      	str	r6, [sp, #36]	; 0x24
 8004904:	e7e2      	b.n	80048cc <_dtoa_r+0x92c>
 8004906:	2301      	movs	r3, #1
 8004908:	930a      	str	r3, [sp, #40]	; 0x28
 800490a:	e7f5      	b.n	80048f8 <_dtoa_r+0x958>
 800490c:	9b00      	ldr	r3, [sp, #0]
 800490e:	2b00      	cmp	r3, #0
 8004910:	f47f ae90 	bne.w	8004634 <_dtoa_r+0x694>
 8004914:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004918:	f3c2 0313 	ubfx	r3, r2, #0, #20
 800491c:	2b00      	cmp	r3, #0
 800491e:	f040 8192 	bne.w	8004c46 <_dtoa_r+0xca6>
 8004922:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004926:	0d1b      	lsrs	r3, r3, #20
 8004928:	051b      	lsls	r3, r3, #20
 800492a:	b12b      	cbz	r3, 8004938 <_dtoa_r+0x998>
 800492c:	9b08      	ldr	r3, [sp, #32]
 800492e:	3301      	adds	r3, #1
 8004930:	9308      	str	r3, [sp, #32]
 8004932:	f108 0801 	add.w	r8, r8, #1
 8004936:	2301      	movs	r3, #1
 8004938:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800493a:	930c      	str	r3, [sp, #48]	; 0x30
 800493c:	2a00      	cmp	r2, #0
 800493e:	f43f ae79 	beq.w	8004634 <_dtoa_r+0x694>
 8004942:	e7a3      	b.n	800488c <_dtoa_r+0x8ec>
 8004944:	463a      	mov	r2, r7
 8004946:	4629      	mov	r1, r5
 8004948:	4648      	mov	r0, r9
 800494a:	f001 fb8f 	bl	800606c <__pow5mult>
 800494e:	4652      	mov	r2, sl
 8004950:	4601      	mov	r1, r0
 8004952:	4605      	mov	r5, r0
 8004954:	4648      	mov	r0, r9
 8004956:	f001 fae3 	bl	8005f20 <__multiply>
 800495a:	4651      	mov	r1, sl
 800495c:	4607      	mov	r7, r0
 800495e:	4648      	mov	r0, r9
 8004960:	f001 fa3a 	bl	8005dd8 <_Bfree>
 8004964:	46ba      	mov	sl, r7
 8004966:	2e00      	cmp	r6, #0
 8004968:	f43f ae57 	beq.w	800461a <_dtoa_r+0x67a>
 800496c:	e64f      	b.n	800460e <_dtoa_r+0x66e>
 800496e:	4629      	mov	r1, r5
 8004970:	4622      	mov	r2, r4
 8004972:	4648      	mov	r0, r9
 8004974:	f001 fbca 	bl	800610c <__lshift>
 8004978:	4605      	mov	r5, r0
 800497a:	e68d      	b.n	8004698 <_dtoa_r+0x6f8>
 800497c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800497e:	2a00      	cmp	r2, #0
 8004980:	f000 815d 	beq.w	8004c3e <_dtoa_r+0xc9e>
 8004984:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004988:	9a08      	ldr	r2, [sp, #32]
 800498a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 800498c:	4614      	mov	r4, r2
 800498e:	441a      	add	r2, r3
 8004990:	4498      	add	r8, r3
 8004992:	9208      	str	r2, [sp, #32]
 8004994:	e5f7      	b.n	8004586 <_dtoa_r+0x5e6>
 8004996:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004998:	2b00      	cmp	r3, #0
 800499a:	f73f ad3e 	bgt.w	800441a <_dtoa_r+0x47a>
 800499e:	f040 80bc 	bne.w	8004b1a <_dtoa_r+0xb7a>
 80049a2:	ec51 0b17 	vmov	r0, r1, d7
 80049a6:	2200      	movs	r2, #0
 80049a8:	4bb2      	ldr	r3, [pc, #712]	; (8004c74 <_dtoa_r+0xcd4>)
 80049aa:	f7fc f8c5 	bl	8000b38 <__aeabi_dmul>
 80049ae:	e9dd 2300 	ldrd	r2, r3, [sp]
 80049b2:	f7fc fb47 	bl	8001044 <__aeabi_dcmpge>
 80049b6:	9e09      	ldr	r6, [sp, #36]	; 0x24
 80049b8:	4635      	mov	r5, r6
 80049ba:	2800      	cmp	r0, #0
 80049bc:	d176      	bne.n	8004aac <_dtoa_r+0xb0c>
 80049be:	9a06      	ldr	r2, [sp, #24]
 80049c0:	2331      	movs	r3, #49	; 0x31
 80049c2:	3201      	adds	r2, #1
 80049c4:	9206      	str	r2, [sp, #24]
 80049c6:	f88b 3000 	strb.w	r3, [fp]
 80049ca:	f10b 0401 	add.w	r4, fp, #1
 80049ce:	4631      	mov	r1, r6
 80049d0:	4648      	mov	r0, r9
 80049d2:	f001 fa01 	bl	8005dd8 <_Bfree>
 80049d6:	2d00      	cmp	r5, #0
 80049d8:	f47f af34 	bne.w	8004844 <_dtoa_r+0x8a4>
 80049dc:	e736      	b.n	800484c <_dtoa_r+0x8ac>
 80049de:	f000 8142 	beq.w	8004c66 <_dtoa_r+0xcc6>
 80049e2:	9b06      	ldr	r3, [sp, #24]
 80049e4:	425c      	negs	r4, r3
 80049e6:	4ba4      	ldr	r3, [pc, #656]	; (8004c78 <_dtoa_r+0xcd8>)
 80049e8:	f004 020f 	and.w	r2, r4, #15
 80049ec:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80049f0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80049f4:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80049f8:	f7fc f89e 	bl	8000b38 <__aeabi_dmul>
 80049fc:	1124      	asrs	r4, r4, #4
 80049fe:	e9cd 0100 	strd	r0, r1, [sp]
 8004a02:	f000 81c6 	beq.w	8004d92 <_dtoa_r+0xdf2>
 8004a06:	4d9d      	ldr	r5, [pc, #628]	; (8004c7c <_dtoa_r+0xcdc>)
 8004a08:	2300      	movs	r3, #0
 8004a0a:	2602      	movs	r6, #2
 8004a0c:	07e7      	lsls	r7, r4, #31
 8004a0e:	d505      	bpl.n	8004a1c <_dtoa_r+0xa7c>
 8004a10:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004a14:	f7fc f890 	bl	8000b38 <__aeabi_dmul>
 8004a18:	3601      	adds	r6, #1
 8004a1a:	2301      	movs	r3, #1
 8004a1c:	1064      	asrs	r4, r4, #1
 8004a1e:	f105 0508 	add.w	r5, r5, #8
 8004a22:	d1f3      	bne.n	8004a0c <_dtoa_r+0xa6c>
 8004a24:	2b00      	cmp	r3, #0
 8004a26:	f43f ac27 	beq.w	8004278 <_dtoa_r+0x2d8>
 8004a2a:	e9cd 0100 	strd	r0, r1, [sp]
 8004a2e:	e423      	b.n	8004278 <_dtoa_r+0x2d8>
 8004a30:	9b00      	ldr	r3, [sp, #0]
 8004a32:	2b00      	cmp	r3, #0
 8004a34:	f43f af6e 	beq.w	8004914 <_dtoa_r+0x974>
 8004a38:	e726      	b.n	8004888 <_dtoa_r+0x8e8>
 8004a3a:	6869      	ldr	r1, [r5, #4]
 8004a3c:	4648      	mov	r0, r9
 8004a3e:	f001 f9a5 	bl	8005d8c <_Balloc>
 8004a42:	692b      	ldr	r3, [r5, #16]
 8004a44:	3302      	adds	r3, #2
 8004a46:	009a      	lsls	r2, r3, #2
 8004a48:	4604      	mov	r4, r0
 8004a4a:	f105 010c 	add.w	r1, r5, #12
 8004a4e:	300c      	adds	r0, #12
 8004a50:	f7fb fd56 	bl	8000500 <memcpy>
 8004a54:	4621      	mov	r1, r4
 8004a56:	2201      	movs	r2, #1
 8004a58:	4648      	mov	r0, r9
 8004a5a:	f001 fb57 	bl	800610c <__lshift>
 8004a5e:	4680      	mov	r8, r0
 8004a60:	e61f      	b.n	80046a2 <_dtoa_r+0x702>
 8004a62:	2400      	movs	r4, #0
 8004a64:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004a68:	4621      	mov	r1, r4
 8004a6a:	4648      	mov	r0, r9
 8004a6c:	f001 f98e 	bl	8005d8c <_Balloc>
 8004a70:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004a74:	930e      	str	r3, [sp, #56]	; 0x38
 8004a76:	9309      	str	r3, [sp, #36]	; 0x24
 8004a78:	2301      	movs	r3, #1
 8004a7a:	4683      	mov	fp, r0
 8004a7c:	9407      	str	r4, [sp, #28]
 8004a7e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004a82:	930a      	str	r3, [sp, #40]	; 0x28
 8004a84:	e4b6      	b.n	80043f4 <_dtoa_r+0x454>
 8004a86:	f001 f9b1 	bl	8005dec <__multadd>
 8004a8a:	4627      	mov	r7, r4
 8004a8c:	4605      	mov	r5, r0
 8004a8e:	4680      	mov	r8, r0
 8004a90:	e614      	b.n	80046bc <_dtoa_r+0x71c>
 8004a92:	4648      	mov	r0, r9
 8004a94:	f001 f9a0 	bl	8005dd8 <_Bfree>
 8004a98:	2301      	movs	r3, #1
 8004a9a:	e639      	b.n	8004710 <_dtoa_r+0x770>
 8004a9c:	9b02      	ldr	r3, [sp, #8]
 8004a9e:	2b02      	cmp	r3, #2
 8004aa0:	f77f adf3 	ble.w	800468a <_dtoa_r+0x6ea>
 8004aa4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004aa6:	2b00      	cmp	r3, #0
 8004aa8:	f000 80cf 	beq.w	8004c4a <_dtoa_r+0xcaa>
 8004aac:	9b07      	ldr	r3, [sp, #28]
 8004aae:	43db      	mvns	r3, r3
 8004ab0:	9306      	str	r3, [sp, #24]
 8004ab2:	465c      	mov	r4, fp
 8004ab4:	e78b      	b.n	80049ce <_dtoa_r+0xa2e>
 8004ab6:	9a06      	ldr	r2, [sp, #24]
 8004ab8:	2331      	movs	r3, #49	; 0x31
 8004aba:	3201      	adds	r2, #1
 8004abc:	9206      	str	r2, [sp, #24]
 8004abe:	f88b 3000 	strb.w	r3, [fp]
 8004ac2:	e6b3      	b.n	800482c <_dtoa_r+0x88c>
 8004ac4:	2401      	movs	r4, #1
 8004ac6:	9409      	str	r4, [sp, #36]	; 0x24
 8004ac8:	9407      	str	r4, [sp, #28]
 8004aca:	f7ff bb8b 	b.w	80041e4 <_dtoa_r+0x244>
 8004ace:	4630      	mov	r0, r6
 8004ad0:	f7fb ffc8 	bl	8000a64 <__aeabi_i2d>
 8004ad4:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004ad8:	f7fc f82e 	bl	8000b38 <__aeabi_dmul>
 8004adc:	2200      	movs	r2, #0
 8004ade:	4b68      	ldr	r3, [pc, #416]	; (8004c80 <_dtoa_r+0xce0>)
 8004ae0:	f7fb fe74 	bl	80007cc <__adddf3>
 8004ae4:	4606      	mov	r6, r0
 8004ae6:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004aea:	2200      	movs	r2, #0
 8004aec:	4b61      	ldr	r3, [pc, #388]	; (8004c74 <_dtoa_r+0xcd4>)
 8004aee:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004af2:	f7fb fe69 	bl	80007c8 <__aeabi_dsub>
 8004af6:	4632      	mov	r2, r6
 8004af8:	463b      	mov	r3, r7
 8004afa:	4604      	mov	r4, r0
 8004afc:	460d      	mov	r5, r1
 8004afe:	f7fc faab 	bl	8001058 <__aeabi_dcmpgt>
 8004b02:	2800      	cmp	r0, #0
 8004b04:	d14f      	bne.n	8004ba6 <_dtoa_r+0xc06>
 8004b06:	4632      	mov	r2, r6
 8004b08:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004b0c:	4620      	mov	r0, r4
 8004b0e:	4629      	mov	r1, r5
 8004b10:	f7fc fa84 	bl	800101c <__aeabi_dcmplt>
 8004b14:	2800      	cmp	r0, #0
 8004b16:	f43f ac69 	beq.w	80043ec <_dtoa_r+0x44c>
 8004b1a:	2600      	movs	r6, #0
 8004b1c:	4635      	mov	r5, r6
 8004b1e:	e7c5      	b.n	8004aac <_dtoa_r+0xb0c>
 8004b20:	2301      	movs	r3, #1
 8004b22:	930a      	str	r3, [sp, #40]	; 0x28
 8004b24:	e6c8      	b.n	80048b8 <_dtoa_r+0x918>
 8004b26:	4651      	mov	r1, sl
 8004b28:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004b2a:	4648      	mov	r0, r9
 8004b2c:	f001 fa9e 	bl	800606c <__pow5mult>
 8004b30:	4682      	mov	sl, r0
 8004b32:	e572      	b.n	800461a <_dtoa_r+0x67a>
 8004b34:	f8dd a000 	ldr.w	sl, [sp]
 8004b38:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004b3c:	e686      	b.n	800484c <_dtoa_r+0x8ac>
 8004b3e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004b40:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004b42:	1afb      	subs	r3, r7, r3
 8004b44:	441a      	add	r2, r3
 8004b46:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004b4a:	2700      	movs	r7, #0
 8004b4c:	e512      	b.n	8004574 <_dtoa_r+0x5d4>
 8004b4e:	2b00      	cmp	r3, #0
 8004b50:	9402      	str	r4, [sp, #8]
 8004b52:	465e      	mov	r6, fp
 8004b54:	f107 0401 	add.w	r4, r7, #1
 8004b58:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004b5c:	f300 80ba 	bgt.w	8004cd4 <_dtoa_r+0xd34>
 8004b60:	9b00      	ldr	r3, [sp, #0]
 8004b62:	9502      	str	r5, [sp, #8]
 8004b64:	703b      	strb	r3, [r7, #0]
 8004b66:	4645      	mov	r5, r8
 8004b68:	e660      	b.n	800482c <_dtoa_r+0x88c>
 8004b6a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004b6e:	2602      	movs	r6, #2
 8004b70:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004b74:	f7ff bb67 	b.w	8004246 <_dtoa_r+0x2a6>
 8004b78:	9b00      	ldr	r3, [sp, #0]
 8004b7a:	2b39      	cmp	r3, #57	; 0x39
 8004b7c:	465e      	mov	r6, fp
 8004b7e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004b82:	f000 80b9 	beq.w	8004cf8 <_dtoa_r+0xd58>
 8004b86:	9b00      	ldr	r3, [sp, #0]
 8004b88:	9502      	str	r5, [sp, #8]
 8004b8a:	3301      	adds	r3, #1
 8004b8c:	703b      	strb	r3, [r7, #0]
 8004b8e:	4645      	mov	r5, r8
 8004b90:	e64c      	b.n	800482c <_dtoa_r+0x88c>
 8004b92:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004b96:	1a9c      	subs	r4, r3, r2
 8004b98:	e4f5      	b.n	8004586 <_dtoa_r+0x5e6>
 8004b9a:	465e      	mov	r6, fp
 8004b9c:	9502      	str	r5, [sp, #8]
 8004b9e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004ba2:	4645      	mov	r5, r8
 8004ba4:	e61a      	b.n	80047dc <_dtoa_r+0x83c>
 8004ba6:	2600      	movs	r6, #0
 8004ba8:	4635      	mov	r5, r6
 8004baa:	e708      	b.n	80049be <_dtoa_r+0xa1e>
 8004bac:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004bb0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004bb4:	f7fb ffc0 	bl	8000b38 <__aeabi_dmul>
 8004bb8:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004bba:	f88b 5000 	strb.w	r5, [fp]
 8004bbe:	2b01      	cmp	r3, #1
 8004bc0:	e9cd 0100 	strd	r0, r1, [sp]
 8004bc4:	d020      	beq.n	8004c08 <_dtoa_r+0xc68>
 8004bc6:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004bc8:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004bcc:	445b      	add	r3, fp
 8004bce:	4698      	mov	r8, r3
 8004bd0:	2200      	movs	r2, #0
 8004bd2:	4b2c      	ldr	r3, [pc, #176]	; (8004c84 <_dtoa_r+0xce4>)
 8004bd4:	4630      	mov	r0, r6
 8004bd6:	4639      	mov	r1, r7
 8004bd8:	f7fb ffae 	bl	8000b38 <__aeabi_dmul>
 8004bdc:	460f      	mov	r7, r1
 8004bde:	4606      	mov	r6, r0
 8004be0:	f7fc fa5a 	bl	8001098 <__aeabi_d2iz>
 8004be4:	4605      	mov	r5, r0
 8004be6:	f7fb ff3d 	bl	8000a64 <__aeabi_i2d>
 8004bea:	3530      	adds	r5, #48	; 0x30
 8004bec:	4602      	mov	r2, r0
 8004bee:	460b      	mov	r3, r1
 8004bf0:	4630      	mov	r0, r6
 8004bf2:	4639      	mov	r1, r7
 8004bf4:	f7fb fde8 	bl	80007c8 <__aeabi_dsub>
 8004bf8:	f804 5b01 	strb.w	r5, [r4], #1
 8004bfc:	4544      	cmp	r4, r8
 8004bfe:	4606      	mov	r6, r0
 8004c00:	460f      	mov	r7, r1
 8004c02:	d1e5      	bne.n	8004bd0 <_dtoa_r+0xc30>
 8004c04:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004c08:	4b1f      	ldr	r3, [pc, #124]	; (8004c88 <_dtoa_r+0xce8>)
 8004c0a:	2200      	movs	r2, #0
 8004c0c:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004c10:	f7fb fddc 	bl	80007cc <__adddf3>
 8004c14:	4632      	mov	r2, r6
 8004c16:	463b      	mov	r3, r7
 8004c18:	f7fc fa00 	bl	800101c <__aeabi_dcmplt>
 8004c1c:	2800      	cmp	r0, #0
 8004c1e:	d070      	beq.n	8004d02 <_dtoa_r+0xd62>
 8004c20:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004c22:	9306      	str	r3, [sp, #24]
 8004c24:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004c28:	e48f      	b.n	800454a <_dtoa_r+0x5aa>
 8004c2a:	2330      	movs	r3, #48	; 0x30
 8004c2c:	f88b 3000 	strb.w	r3, [fp]
 8004c30:	9b06      	ldr	r3, [sp, #24]
 8004c32:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004c36:	3301      	adds	r3, #1
 8004c38:	9306      	str	r3, [sp, #24]
 8004c3a:	465b      	mov	r3, fp
 8004c3c:	e489      	b.n	8004552 <_dtoa_r+0x5b2>
 8004c3e:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004c40:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004c44:	e6a0      	b.n	8004988 <_dtoa_r+0x9e8>
 8004c46:	2300      	movs	r3, #0
 8004c48:	e676      	b.n	8004938 <_dtoa_r+0x998>
 8004c4a:	4631      	mov	r1, r6
 8004c4c:	2205      	movs	r2, #5
 8004c4e:	4648      	mov	r0, r9
 8004c50:	f001 f8cc 	bl	8005dec <__multadd>
 8004c54:	4601      	mov	r1, r0
 8004c56:	4606      	mov	r6, r0
 8004c58:	4650      	mov	r0, sl
 8004c5a:	f001 faad 	bl	80061b8 <__mcmp>
 8004c5e:	2800      	cmp	r0, #0
 8004c60:	f73f aead 	bgt.w	80049be <_dtoa_r+0xa1e>
 8004c64:	e722      	b.n	8004aac <_dtoa_r+0xb0c>
 8004c66:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004c6a:	2602      	movs	r6, #2
 8004c6c:	ed8d 7b00 	vstr	d7, [sp]
 8004c70:	f7ff bb02 	b.w	8004278 <_dtoa_r+0x2d8>
 8004c74:	40140000 	.word	0x40140000
 8004c78:	08007028 	.word	0x08007028
 8004c7c:	08007000 	.word	0x08007000
 8004c80:	401c0000 	.word	0x401c0000
 8004c84:	40240000 	.word	0x40240000
 8004c88:	3fe00000 	.word	0x3fe00000
 8004c8c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c8e:	2b00      	cmp	r3, #0
 8004c90:	f43f af1d 	beq.w	8004ace <_dtoa_r+0xb2e>
 8004c94:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004c96:	2c00      	cmp	r4, #0
 8004c98:	f77f aba8 	ble.w	80043ec <_dtoa_r+0x44c>
 8004c9c:	2200      	movs	r2, #0
 8004c9e:	4b45      	ldr	r3, [pc, #276]	; (8004db4 <_dtoa_r+0xe14>)
 8004ca0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004ca4:	f7fb ff48 	bl	8000b38 <__aeabi_dmul>
 8004ca8:	e9cd 0100 	strd	r0, r1, [sp]
 8004cac:	1c70      	adds	r0, r6, #1
 8004cae:	f7fb fed9 	bl	8000a64 <__aeabi_i2d>
 8004cb2:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004cb6:	f7fb ff3f 	bl	8000b38 <__aeabi_dmul>
 8004cba:	4b3f      	ldr	r3, [pc, #252]	; (8004db8 <_dtoa_r+0xe18>)
 8004cbc:	2200      	movs	r2, #0
 8004cbe:	f7fb fd85 	bl	80007cc <__adddf3>
 8004cc2:	9b06      	ldr	r3, [sp, #24]
 8004cc4:	9412      	str	r4, [sp, #72]	; 0x48
 8004cc6:	3b01      	subs	r3, #1
 8004cc8:	4606      	mov	r6, r0
 8004cca:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004cce:	9316      	str	r3, [sp, #88]	; 0x58
 8004cd0:	f7ff baf3 	b.w	80042ba <_dtoa_r+0x31a>
 8004cd4:	4651      	mov	r1, sl
 8004cd6:	2201      	movs	r2, #1
 8004cd8:	4648      	mov	r0, r9
 8004cda:	f001 fa17 	bl	800610c <__lshift>
 8004cde:	4631      	mov	r1, r6
 8004ce0:	4682      	mov	sl, r0
 8004ce2:	f001 fa69 	bl	80061b8 <__mcmp>
 8004ce6:	2800      	cmp	r0, #0
 8004ce8:	dd3b      	ble.n	8004d62 <_dtoa_r+0xdc2>
 8004cea:	9b00      	ldr	r3, [sp, #0]
 8004cec:	2b39      	cmp	r3, #57	; 0x39
 8004cee:	d003      	beq.n	8004cf8 <_dtoa_r+0xd58>
 8004cf0:	9b02      	ldr	r3, [sp, #8]
 8004cf2:	3331      	adds	r3, #49	; 0x31
 8004cf4:	9300      	str	r3, [sp, #0]
 8004cf6:	e733      	b.n	8004b60 <_dtoa_r+0xbc0>
 8004cf8:	2239      	movs	r2, #57	; 0x39
 8004cfa:	9502      	str	r5, [sp, #8]
 8004cfc:	703a      	strb	r2, [r7, #0]
 8004cfe:	4645      	mov	r5, r8
 8004d00:	e58e      	b.n	8004820 <_dtoa_r+0x880>
 8004d02:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d06:	2000      	movs	r0, #0
 8004d08:	492c      	ldr	r1, [pc, #176]	; (8004dbc <_dtoa_r+0xe1c>)
 8004d0a:	f7fb fd5d 	bl	80007c8 <__aeabi_dsub>
 8004d0e:	4632      	mov	r2, r6
 8004d10:	463b      	mov	r3, r7
 8004d12:	f7fc f9a1 	bl	8001058 <__aeabi_dcmpgt>
 8004d16:	b910      	cbnz	r0, 8004d1e <_dtoa_r+0xd7e>
 8004d18:	f7ff bb68 	b.w	80043ec <_dtoa_r+0x44c>
 8004d1c:	4614      	mov	r4, r2
 8004d1e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004d22:	2b30      	cmp	r3, #48	; 0x30
 8004d24:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004d28:	d0f8      	beq.n	8004d1c <_dtoa_r+0xd7c>
 8004d2a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004d2c:	9306      	str	r3, [sp, #24]
 8004d2e:	e58d      	b.n	800484c <_dtoa_r+0x8ac>
 8004d30:	46d9      	mov	r9, fp
 8004d32:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004d36:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004d3a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004d3c:	9306      	str	r3, [sp, #24]
 8004d3e:	e404      	b.n	800454a <_dtoa_r+0x5aa>
 8004d40:	9b00      	ldr	r3, [sp, #0]
 8004d42:	2b39      	cmp	r3, #57	; 0x39
 8004d44:	4621      	mov	r1, r4
 8004d46:	4632      	mov	r2, r6
 8004d48:	f107 0401 	add.w	r4, r7, #1
 8004d4c:	465e      	mov	r6, fp
 8004d4e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d52:	d0d1      	beq.n	8004cf8 <_dtoa_r+0xd58>
 8004d54:	2a00      	cmp	r2, #0
 8004d56:	f77f af03 	ble.w	8004b60 <_dtoa_r+0xbc0>
 8004d5a:	460b      	mov	r3, r1
 8004d5c:	3331      	adds	r3, #49	; 0x31
 8004d5e:	9300      	str	r3, [sp, #0]
 8004d60:	e6fe      	b.n	8004b60 <_dtoa_r+0xbc0>
 8004d62:	f47f aefd 	bne.w	8004b60 <_dtoa_r+0xbc0>
 8004d66:	9b00      	ldr	r3, [sp, #0]
 8004d68:	07da      	lsls	r2, r3, #31
 8004d6a:	f57f aef9 	bpl.w	8004b60 <_dtoa_r+0xbc0>
 8004d6e:	e7bc      	b.n	8004cea <_dtoa_r+0xd4a>
 8004d70:	4629      	mov	r1, r5
 8004d72:	2300      	movs	r3, #0
 8004d74:	220a      	movs	r2, #10
 8004d76:	4648      	mov	r0, r9
 8004d78:	f001 f838 	bl	8005dec <__multadd>
 8004d7c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004d7e:	2b00      	cmp	r3, #0
 8004d80:	4605      	mov	r5, r0
 8004d82:	dd09      	ble.n	8004d98 <_dtoa_r+0xdf8>
 8004d84:	9309      	str	r3, [sp, #36]	; 0x24
 8004d86:	e484      	b.n	8004692 <_dtoa_r+0x6f2>
 8004d88:	9b02      	ldr	r3, [sp, #8]
 8004d8a:	2b02      	cmp	r3, #2
 8004d8c:	dc0e      	bgt.n	8004dac <_dtoa_r+0xe0c>
 8004d8e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004d90:	e507      	b.n	80047a2 <_dtoa_r+0x802>
 8004d92:	2602      	movs	r6, #2
 8004d94:	f7ff ba70 	b.w	8004278 <_dtoa_r+0x2d8>
 8004d98:	9b02      	ldr	r3, [sp, #8]
 8004d9a:	2b02      	cmp	r3, #2
 8004d9c:	dc06      	bgt.n	8004dac <_dtoa_r+0xe0c>
 8004d9e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004da0:	e7f0      	b.n	8004d84 <_dtoa_r+0xde4>
 8004da2:	f43f ac59 	beq.w	8004658 <_dtoa_r+0x6b8>
 8004da6:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004daa:	e450      	b.n	800464e <_dtoa_r+0x6ae>
 8004dac:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004dae:	9309      	str	r3, [sp, #36]	; 0x24
 8004db0:	e678      	b.n	8004aa4 <_dtoa_r+0xb04>
 8004db2:	bf00      	nop
 8004db4:	40240000 	.word	0x40240000
 8004db8:	401c0000 	.word	0x401c0000
 8004dbc:	3fe00000 	.word	0x3fe00000

08004dc0 <__sflush_r>:
 8004dc0:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004dc4:	b29a      	uxth	r2, r3
 8004dc6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004dca:	460c      	mov	r4, r1
 8004dcc:	0711      	lsls	r1, r2, #28
 8004dce:	4680      	mov	r8, r0
 8004dd0:	d444      	bmi.n	8004e5c <__sflush_r+0x9c>
 8004dd2:	6862      	ldr	r2, [r4, #4]
 8004dd4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004dd8:	2a00      	cmp	r2, #0
 8004dda:	81a3      	strh	r3, [r4, #12]
 8004ddc:	dd59      	ble.n	8004e92 <__sflush_r+0xd2>
 8004dde:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004de0:	2d00      	cmp	r5, #0
 8004de2:	d053      	beq.n	8004e8c <__sflush_r+0xcc>
 8004de4:	2200      	movs	r2, #0
 8004de6:	b29b      	uxth	r3, r3
 8004de8:	f8d8 6000 	ldr.w	r6, [r8]
 8004dec:	69e1      	ldr	r1, [r4, #28]
 8004dee:	f8c8 2000 	str.w	r2, [r8]
 8004df2:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8004df6:	f040 8083 	bne.w	8004f00 <__sflush_r+0x140>
 8004dfa:	2301      	movs	r3, #1
 8004dfc:	4640      	mov	r0, r8
 8004dfe:	47a8      	blx	r5
 8004e00:	1c42      	adds	r2, r0, #1
 8004e02:	d04a      	beq.n	8004e9a <__sflush_r+0xda>
 8004e04:	89a3      	ldrh	r3, [r4, #12]
 8004e06:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004e08:	69e1      	ldr	r1, [r4, #28]
 8004e0a:	075b      	lsls	r3, r3, #29
 8004e0c:	d505      	bpl.n	8004e1a <__sflush_r+0x5a>
 8004e0e:	6862      	ldr	r2, [r4, #4]
 8004e10:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8004e12:	1a80      	subs	r0, r0, r2
 8004e14:	b10b      	cbz	r3, 8004e1a <__sflush_r+0x5a>
 8004e16:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8004e18:	1ac0      	subs	r0, r0, r3
 8004e1a:	4602      	mov	r2, r0
 8004e1c:	2300      	movs	r3, #0
 8004e1e:	4640      	mov	r0, r8
 8004e20:	47a8      	blx	r5
 8004e22:	1c47      	adds	r7, r0, #1
 8004e24:	d045      	beq.n	8004eb2 <__sflush_r+0xf2>
 8004e26:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004e2a:	6922      	ldr	r2, [r4, #16]
 8004e2c:	6022      	str	r2, [r4, #0]
 8004e2e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8004e32:	2200      	movs	r2, #0
 8004e34:	81a3      	strh	r3, [r4, #12]
 8004e36:	04db      	lsls	r3, r3, #19
 8004e38:	6062      	str	r2, [r4, #4]
 8004e3a:	d500      	bpl.n	8004e3e <__sflush_r+0x7e>
 8004e3c:	6520      	str	r0, [r4, #80]	; 0x50
 8004e3e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004e40:	f8c8 6000 	str.w	r6, [r8]
 8004e44:	b311      	cbz	r1, 8004e8c <__sflush_r+0xcc>
 8004e46:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004e4a:	4299      	cmp	r1, r3
 8004e4c:	d002      	beq.n	8004e54 <__sflush_r+0x94>
 8004e4e:	4640      	mov	r0, r8
 8004e50:	f000 f95e 	bl	8005110 <_free_r>
 8004e54:	2000      	movs	r0, #0
 8004e56:	6320      	str	r0, [r4, #48]	; 0x30
 8004e58:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004e5c:	6926      	ldr	r6, [r4, #16]
 8004e5e:	b1ae      	cbz	r6, 8004e8c <__sflush_r+0xcc>
 8004e60:	6825      	ldr	r5, [r4, #0]
 8004e62:	6026      	str	r6, [r4, #0]
 8004e64:	0792      	lsls	r2, r2, #30
 8004e66:	bf0c      	ite	eq
 8004e68:	6963      	ldreq	r3, [r4, #20]
 8004e6a:	2300      	movne	r3, #0
 8004e6c:	1bad      	subs	r5, r5, r6
 8004e6e:	60a3      	str	r3, [r4, #8]
 8004e70:	e00a      	b.n	8004e88 <__sflush_r+0xc8>
 8004e72:	462b      	mov	r3, r5
 8004e74:	4632      	mov	r2, r6
 8004e76:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8004e78:	69e1      	ldr	r1, [r4, #28]
 8004e7a:	4640      	mov	r0, r8
 8004e7c:	47b8      	blx	r7
 8004e7e:	2800      	cmp	r0, #0
 8004e80:	eba5 0500 	sub.w	r5, r5, r0
 8004e84:	4406      	add	r6, r0
 8004e86:	dd2b      	ble.n	8004ee0 <__sflush_r+0x120>
 8004e88:	2d00      	cmp	r5, #0
 8004e8a:	dcf2      	bgt.n	8004e72 <__sflush_r+0xb2>
 8004e8c:	2000      	movs	r0, #0
 8004e8e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004e92:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8004e94:	2a00      	cmp	r2, #0
 8004e96:	dca2      	bgt.n	8004dde <__sflush_r+0x1e>
 8004e98:	e7f8      	b.n	8004e8c <__sflush_r+0xcc>
 8004e9a:	f8d8 3000 	ldr.w	r3, [r8]
 8004e9e:	2b00      	cmp	r3, #0
 8004ea0:	d0b0      	beq.n	8004e04 <__sflush_r+0x44>
 8004ea2:	2b1d      	cmp	r3, #29
 8004ea4:	d001      	beq.n	8004eaa <__sflush_r+0xea>
 8004ea6:	2b16      	cmp	r3, #22
 8004ea8:	d12c      	bne.n	8004f04 <__sflush_r+0x144>
 8004eaa:	f8c8 6000 	str.w	r6, [r8]
 8004eae:	2000      	movs	r0, #0
 8004eb0:	e7ed      	b.n	8004e8e <__sflush_r+0xce>
 8004eb2:	f8d8 1000 	ldr.w	r1, [r8]
 8004eb6:	291d      	cmp	r1, #29
 8004eb8:	d81a      	bhi.n	8004ef0 <__sflush_r+0x130>
 8004eba:	4b15      	ldr	r3, [pc, #84]	; (8004f10 <__sflush_r+0x150>)
 8004ebc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004ec0:	40cb      	lsrs	r3, r1
 8004ec2:	43db      	mvns	r3, r3
 8004ec4:	f013 0301 	ands.w	r3, r3, #1
 8004ec8:	d114      	bne.n	8004ef4 <__sflush_r+0x134>
 8004eca:	6925      	ldr	r5, [r4, #16]
 8004ecc:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8004ed0:	e9c4 5300 	strd	r5, r3, [r4]
 8004ed4:	04d5      	lsls	r5, r2, #19
 8004ed6:	81a2      	strh	r2, [r4, #12]
 8004ed8:	d5b1      	bpl.n	8004e3e <__sflush_r+0x7e>
 8004eda:	2900      	cmp	r1, #0
 8004edc:	d1af      	bne.n	8004e3e <__sflush_r+0x7e>
 8004ede:	e7ad      	b.n	8004e3c <__sflush_r+0x7c>
 8004ee0:	89a3      	ldrh	r3, [r4, #12]
 8004ee2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004ee6:	81a3      	strh	r3, [r4, #12]
 8004ee8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004eec:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004ef0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004ef4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004ef8:	81a2      	strh	r2, [r4, #12]
 8004efa:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004efe:	e7c6      	b.n	8004e8e <__sflush_r+0xce>
 8004f00:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8004f02:	e782      	b.n	8004e0a <__sflush_r+0x4a>
 8004f04:	89a3      	ldrh	r3, [r4, #12]
 8004f06:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004f0a:	81a3      	strh	r3, [r4, #12]
 8004f0c:	e7bf      	b.n	8004e8e <__sflush_r+0xce>
 8004f0e:	bf00      	nop
 8004f10:	20400001 	.word	0x20400001

08004f14 <_fflush_r>:
 8004f14:	b538      	push	{r3, r4, r5, lr}
 8004f16:	460d      	mov	r5, r1
 8004f18:	4604      	mov	r4, r0
 8004f1a:	b108      	cbz	r0, 8004f20 <_fflush_r+0xc>
 8004f1c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8004f1e:	b1a3      	cbz	r3, 8004f4a <_fflush_r+0x36>
 8004f20:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8004f24:	b1b8      	cbz	r0, 8004f56 <_fflush_r+0x42>
 8004f26:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8004f28:	07db      	lsls	r3, r3, #31
 8004f2a:	d401      	bmi.n	8004f30 <_fflush_r+0x1c>
 8004f2c:	0581      	lsls	r1, r0, #22
 8004f2e:	d51a      	bpl.n	8004f66 <_fflush_r+0x52>
 8004f30:	4620      	mov	r0, r4
 8004f32:	4629      	mov	r1, r5
 8004f34:	f7ff ff44 	bl	8004dc0 <__sflush_r>
 8004f38:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8004f3a:	07da      	lsls	r2, r3, #31
 8004f3c:	4604      	mov	r4, r0
 8004f3e:	d402      	bmi.n	8004f46 <_fflush_r+0x32>
 8004f40:	89ab      	ldrh	r3, [r5, #12]
 8004f42:	059b      	lsls	r3, r3, #22
 8004f44:	d50a      	bpl.n	8004f5c <_fflush_r+0x48>
 8004f46:	4620      	mov	r0, r4
 8004f48:	bd38      	pop	{r3, r4, r5, pc}
 8004f4a:	f000 f83f 	bl	8004fcc <__sinit>
 8004f4e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8004f52:	2800      	cmp	r0, #0
 8004f54:	d1e7      	bne.n	8004f26 <_fflush_r+0x12>
 8004f56:	4604      	mov	r4, r0
 8004f58:	4620      	mov	r0, r4
 8004f5a:	bd38      	pop	{r3, r4, r5, pc}
 8004f5c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8004f5e:	f000 fb87 	bl	8005670 <__retarget_lock_release_recursive>
 8004f62:	4620      	mov	r0, r4
 8004f64:	bd38      	pop	{r3, r4, r5, pc}
 8004f66:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8004f68:	f000 fb80 	bl	800566c <__retarget_lock_acquire_recursive>
 8004f6c:	e7e0      	b.n	8004f30 <_fflush_r+0x1c>
 8004f6e:	bf00      	nop

08004f70 <std>:
 8004f70:	b510      	push	{r4, lr}
 8004f72:	2300      	movs	r3, #0
 8004f74:	4604      	mov	r4, r0
 8004f76:	8181      	strh	r1, [r0, #12]
 8004f78:	81c2      	strh	r2, [r0, #14]
 8004f7a:	e9c0 3300 	strd	r3, r3, [r0]
 8004f7e:	6083      	str	r3, [r0, #8]
 8004f80:	6643      	str	r3, [r0, #100]	; 0x64
 8004f82:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8004f86:	6183      	str	r3, [r0, #24]
 8004f88:	4619      	mov	r1, r3
 8004f8a:	2208      	movs	r2, #8
 8004f8c:	305c      	adds	r0, #92	; 0x5c
 8004f8e:	f7fd f8cb 	bl	8002128 <memset>
 8004f92:	4807      	ldr	r0, [pc, #28]	; (8004fb0 <std+0x40>)
 8004f94:	4907      	ldr	r1, [pc, #28]	; (8004fb4 <std+0x44>)
 8004f96:	4a08      	ldr	r2, [pc, #32]	; (8004fb8 <std+0x48>)
 8004f98:	4b08      	ldr	r3, [pc, #32]	; (8004fbc <std+0x4c>)
 8004f9a:	62e3      	str	r3, [r4, #44]	; 0x2c
 8004f9c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8004fa0:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8004fa4:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8004fa8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8004fac:	f000 bb5a 	b.w	8005664 <__retarget_lock_init_recursive>
 8004fb0:	08006789 	.word	0x08006789
 8004fb4:	080067ad 	.word	0x080067ad
 8004fb8:	080067e9 	.word	0x080067e9
 8004fbc:	08006809 	.word	0x08006809

08004fc0 <_cleanup_r>:
 8004fc0:	4901      	ldr	r1, [pc, #4]	; (8004fc8 <_cleanup_r+0x8>)
 8004fc2:	f000 bb17 	b.w	80055f4 <_fwalk_reent>
 8004fc6:	bf00      	nop
 8004fc8:	08006a79 	.word	0x08006a79

08004fcc <__sinit>:
 8004fcc:	b510      	push	{r4, lr}
 8004fce:	4604      	mov	r4, r0
 8004fd0:	4812      	ldr	r0, [pc, #72]	; (800501c <__sinit+0x50>)
 8004fd2:	f000 fb4b 	bl	800566c <__retarget_lock_acquire_recursive>
 8004fd6:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8004fd8:	b9d2      	cbnz	r2, 8005010 <__sinit+0x44>
 8004fda:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8004fde:	4810      	ldr	r0, [pc, #64]	; (8005020 <__sinit+0x54>)
 8004fe0:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8004fe4:	2103      	movs	r1, #3
 8004fe6:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8004fea:	63e0      	str	r0, [r4, #60]	; 0x3c
 8004fec:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8004ff0:	6860      	ldr	r0, [r4, #4]
 8004ff2:	2104      	movs	r1, #4
 8004ff4:	f7ff ffbc 	bl	8004f70 <std>
 8004ff8:	2201      	movs	r2, #1
 8004ffa:	2109      	movs	r1, #9
 8004ffc:	68a0      	ldr	r0, [r4, #8]
 8004ffe:	f7ff ffb7 	bl	8004f70 <std>
 8005002:	2202      	movs	r2, #2
 8005004:	2112      	movs	r1, #18
 8005006:	68e0      	ldr	r0, [r4, #12]
 8005008:	f7ff ffb2 	bl	8004f70 <std>
 800500c:	2301      	movs	r3, #1
 800500e:	63a3      	str	r3, [r4, #56]	; 0x38
 8005010:	4802      	ldr	r0, [pc, #8]	; (800501c <__sinit+0x50>)
 8005012:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005016:	f000 bb2b 	b.w	8005670 <__retarget_lock_release_recursive>
 800501a:	bf00      	nop
 800501c:	20000af4 	.word	0x20000af4
 8005020:	08004fc1 	.word	0x08004fc1

08005024 <__sfp_lock_acquire>:
 8005024:	4801      	ldr	r0, [pc, #4]	; (800502c <__sfp_lock_acquire+0x8>)
 8005026:	f000 bb21 	b.w	800566c <__retarget_lock_acquire_recursive>
 800502a:	bf00      	nop
 800502c:	20000b08 	.word	0x20000b08

08005030 <__sfp_lock_release>:
 8005030:	4801      	ldr	r0, [pc, #4]	; (8005038 <__sfp_lock_release+0x8>)
 8005032:	f000 bb1d 	b.w	8005670 <__retarget_lock_release_recursive>
 8005036:	bf00      	nop
 8005038:	20000b08 	.word	0x20000b08

0800503c <__libc_fini_array>:
 800503c:	b538      	push	{r3, r4, r5, lr}
 800503e:	4c0a      	ldr	r4, [pc, #40]	; (8005068 <__libc_fini_array+0x2c>)
 8005040:	4d0a      	ldr	r5, [pc, #40]	; (800506c <__libc_fini_array+0x30>)
 8005042:	1b64      	subs	r4, r4, r5
 8005044:	10a4      	asrs	r4, r4, #2
 8005046:	d00a      	beq.n	800505e <__libc_fini_array+0x22>
 8005048:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800504c:	3b01      	subs	r3, #1
 800504e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005052:	3c01      	subs	r4, #1
 8005054:	f855 3904 	ldr.w	r3, [r5], #-4
 8005058:	4798      	blx	r3
 800505a:	2c00      	cmp	r4, #0
 800505c:	d1f9      	bne.n	8005052 <__libc_fini_array+0x16>
 800505e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005062:	f001 befd 	b.w	8006e60 <_fini>
 8005066:	bf00      	nop
 8005068:	08007224 	.word	0x08007224
 800506c:	08007220 	.word	0x08007220

08005070 <_malloc_trim_r>:
 8005070:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005072:	4f24      	ldr	r7, [pc, #144]	; (8005104 <_malloc_trim_r+0x94>)
 8005074:	460c      	mov	r4, r1
 8005076:	4606      	mov	r6, r0
 8005078:	f000 fe7c 	bl	8005d74 <__malloc_lock>
 800507c:	68bb      	ldr	r3, [r7, #8]
 800507e:	685d      	ldr	r5, [r3, #4]
 8005080:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005084:	310f      	adds	r1, #15
 8005086:	f025 0503 	bic.w	r5, r5, #3
 800508a:	4429      	add	r1, r5
 800508c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005090:	f021 010f 	bic.w	r1, r1, #15
 8005094:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005098:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800509c:	db07      	blt.n	80050ae <_malloc_trim_r+0x3e>
 800509e:	2100      	movs	r1, #0
 80050a0:	4630      	mov	r0, r6
 80050a2:	f001 fb5f 	bl	8006764 <_sbrk_r>
 80050a6:	68bb      	ldr	r3, [r7, #8]
 80050a8:	442b      	add	r3, r5
 80050aa:	4298      	cmp	r0, r3
 80050ac:	d004      	beq.n	80050b8 <_malloc_trim_r+0x48>
 80050ae:	4630      	mov	r0, r6
 80050b0:	f000 fe66 	bl	8005d80 <__malloc_unlock>
 80050b4:	2000      	movs	r0, #0
 80050b6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80050b8:	4261      	negs	r1, r4
 80050ba:	4630      	mov	r0, r6
 80050bc:	f001 fb52 	bl	8006764 <_sbrk_r>
 80050c0:	3001      	adds	r0, #1
 80050c2:	d00d      	beq.n	80050e0 <_malloc_trim_r+0x70>
 80050c4:	4b10      	ldr	r3, [pc, #64]	; (8005108 <_malloc_trim_r+0x98>)
 80050c6:	68ba      	ldr	r2, [r7, #8]
 80050c8:	6819      	ldr	r1, [r3, #0]
 80050ca:	1b2d      	subs	r5, r5, r4
 80050cc:	f045 0501 	orr.w	r5, r5, #1
 80050d0:	4630      	mov	r0, r6
 80050d2:	1b09      	subs	r1, r1, r4
 80050d4:	6055      	str	r5, [r2, #4]
 80050d6:	6019      	str	r1, [r3, #0]
 80050d8:	f000 fe52 	bl	8005d80 <__malloc_unlock>
 80050dc:	2001      	movs	r0, #1
 80050de:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80050e0:	2100      	movs	r1, #0
 80050e2:	4630      	mov	r0, r6
 80050e4:	f001 fb3e 	bl	8006764 <_sbrk_r>
 80050e8:	68ba      	ldr	r2, [r7, #8]
 80050ea:	1a83      	subs	r3, r0, r2
 80050ec:	2b0f      	cmp	r3, #15
 80050ee:	ddde      	ble.n	80050ae <_malloc_trim_r+0x3e>
 80050f0:	4c06      	ldr	r4, [pc, #24]	; (800510c <_malloc_trim_r+0x9c>)
 80050f2:	4905      	ldr	r1, [pc, #20]	; (8005108 <_malloc_trim_r+0x98>)
 80050f4:	6824      	ldr	r4, [r4, #0]
 80050f6:	f043 0301 	orr.w	r3, r3, #1
 80050fa:	1b00      	subs	r0, r0, r4
 80050fc:	6053      	str	r3, [r2, #4]
 80050fe:	6008      	str	r0, [r1, #0]
 8005100:	e7d5      	b.n	80050ae <_malloc_trim_r+0x3e>
 8005102:	bf00      	nop
 8005104:	2000044c 	.word	0x2000044c
 8005108:	20000a6c 	.word	0x20000a6c
 800510c:	20000854 	.word	0x20000854

08005110 <_free_r>:
 8005110:	2900      	cmp	r1, #0
 8005112:	d053      	beq.n	80051bc <_free_r+0xac>
 8005114:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005116:	460c      	mov	r4, r1
 8005118:	4606      	mov	r6, r0
 800511a:	f000 fe2b 	bl	8005d74 <__malloc_lock>
 800511e:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8005122:	4f71      	ldr	r7, [pc, #452]	; (80052e8 <_free_r+0x1d8>)
 8005124:	f02c 0101 	bic.w	r1, ip, #1
 8005128:	f1a4 0508 	sub.w	r5, r4, #8
 800512c:	186b      	adds	r3, r5, r1
 800512e:	68b8      	ldr	r0, [r7, #8]
 8005130:	685a      	ldr	r2, [r3, #4]
 8005132:	4298      	cmp	r0, r3
 8005134:	f022 0203 	bic.w	r2, r2, #3
 8005138:	d053      	beq.n	80051e2 <_free_r+0xd2>
 800513a:	f01c 0f01 	tst.w	ip, #1
 800513e:	605a      	str	r2, [r3, #4]
 8005140:	eb03 0002 	add.w	r0, r3, r2
 8005144:	d13b      	bne.n	80051be <_free_r+0xae>
 8005146:	f854 cc08 	ldr.w	ip, [r4, #-8]
 800514a:	6840      	ldr	r0, [r0, #4]
 800514c:	eba5 050c 	sub.w	r5, r5, ip
 8005150:	f107 0e08 	add.w	lr, r7, #8
 8005154:	68ac      	ldr	r4, [r5, #8]
 8005156:	4574      	cmp	r4, lr
 8005158:	4461      	add	r1, ip
 800515a:	f000 0001 	and.w	r0, r0, #1
 800515e:	d075      	beq.n	800524c <_free_r+0x13c>
 8005160:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005164:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005168:	f8cc 4008 	str.w	r4, [ip, #8]
 800516c:	b360      	cbz	r0, 80051c8 <_free_r+0xb8>
 800516e:	f041 0301 	orr.w	r3, r1, #1
 8005172:	606b      	str	r3, [r5, #4]
 8005174:	5069      	str	r1, [r5, r1]
 8005176:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800517a:	d350      	bcc.n	800521e <_free_r+0x10e>
 800517c:	0a4b      	lsrs	r3, r1, #9
 800517e:	2b04      	cmp	r3, #4
 8005180:	d870      	bhi.n	8005264 <_free_r+0x154>
 8005182:	098b      	lsrs	r3, r1, #6
 8005184:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005188:	00e4      	lsls	r4, r4, #3
 800518a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 800518e:	1938      	adds	r0, r7, r4
 8005190:	593b      	ldr	r3, [r7, r4]
 8005192:	3808      	subs	r0, #8
 8005194:	4298      	cmp	r0, r3
 8005196:	d078      	beq.n	800528a <_free_r+0x17a>
 8005198:	685a      	ldr	r2, [r3, #4]
 800519a:	f022 0203 	bic.w	r2, r2, #3
 800519e:	428a      	cmp	r2, r1
 80051a0:	d971      	bls.n	8005286 <_free_r+0x176>
 80051a2:	689b      	ldr	r3, [r3, #8]
 80051a4:	4298      	cmp	r0, r3
 80051a6:	d1f7      	bne.n	8005198 <_free_r+0x88>
 80051a8:	68c3      	ldr	r3, [r0, #12]
 80051aa:	e9c5 0302 	strd	r0, r3, [r5, #8]
 80051ae:	609d      	str	r5, [r3, #8]
 80051b0:	60c5      	str	r5, [r0, #12]
 80051b2:	4630      	mov	r0, r6
 80051b4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80051b8:	f000 bde2 	b.w	8005d80 <__malloc_unlock>
 80051bc:	4770      	bx	lr
 80051be:	6840      	ldr	r0, [r0, #4]
 80051c0:	f000 0001 	and.w	r0, r0, #1
 80051c4:	2800      	cmp	r0, #0
 80051c6:	d1d2      	bne.n	800516e <_free_r+0x5e>
 80051c8:	6898      	ldr	r0, [r3, #8]
 80051ca:	4c48      	ldr	r4, [pc, #288]	; (80052ec <_free_r+0x1dc>)
 80051cc:	4411      	add	r1, r2
 80051ce:	42a0      	cmp	r0, r4
 80051d0:	f041 0201 	orr.w	r2, r1, #1
 80051d4:	d062      	beq.n	800529c <_free_r+0x18c>
 80051d6:	68db      	ldr	r3, [r3, #12]
 80051d8:	60c3      	str	r3, [r0, #12]
 80051da:	6098      	str	r0, [r3, #8]
 80051dc:	606a      	str	r2, [r5, #4]
 80051de:	5069      	str	r1, [r5, r1]
 80051e0:	e7c9      	b.n	8005176 <_free_r+0x66>
 80051e2:	f01c 0f01 	tst.w	ip, #1
 80051e6:	440a      	add	r2, r1
 80051e8:	d107      	bne.n	80051fa <_free_r+0xea>
 80051ea:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80051ee:	1aed      	subs	r5, r5, r3
 80051f0:	441a      	add	r2, r3
 80051f2:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80051f6:	60cb      	str	r3, [r1, #12]
 80051f8:	6099      	str	r1, [r3, #8]
 80051fa:	4b3d      	ldr	r3, [pc, #244]	; (80052f0 <_free_r+0x1e0>)
 80051fc:	681b      	ldr	r3, [r3, #0]
 80051fe:	f042 0101 	orr.w	r1, r2, #1
 8005202:	4293      	cmp	r3, r2
 8005204:	6069      	str	r1, [r5, #4]
 8005206:	60bd      	str	r5, [r7, #8]
 8005208:	d804      	bhi.n	8005214 <_free_r+0x104>
 800520a:	4b3a      	ldr	r3, [pc, #232]	; (80052f4 <_free_r+0x1e4>)
 800520c:	4630      	mov	r0, r6
 800520e:	6819      	ldr	r1, [r3, #0]
 8005210:	f7ff ff2e 	bl	8005070 <_malloc_trim_r>
 8005214:	4630      	mov	r0, r6
 8005216:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800521a:	f000 bdb1 	b.w	8005d80 <__malloc_unlock>
 800521e:	08c9      	lsrs	r1, r1, #3
 8005220:	6878      	ldr	r0, [r7, #4]
 8005222:	1c4a      	adds	r2, r1, #1
 8005224:	2301      	movs	r3, #1
 8005226:	1089      	asrs	r1, r1, #2
 8005228:	408b      	lsls	r3, r1
 800522a:	4303      	orrs	r3, r0
 800522c:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005230:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005234:	607b      	str	r3, [r7, #4]
 8005236:	3908      	subs	r1, #8
 8005238:	e9c5 0102 	strd	r0, r1, [r5, #8]
 800523c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005240:	60c5      	str	r5, [r0, #12]
 8005242:	4630      	mov	r0, r6
 8005244:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005248:	f000 bd9a 	b.w	8005d80 <__malloc_unlock>
 800524c:	2800      	cmp	r0, #0
 800524e:	d145      	bne.n	80052dc <_free_r+0x1cc>
 8005250:	440a      	add	r2, r1
 8005252:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005256:	f042 0001 	orr.w	r0, r2, #1
 800525a:	60cb      	str	r3, [r1, #12]
 800525c:	6099      	str	r1, [r3, #8]
 800525e:	6068      	str	r0, [r5, #4]
 8005260:	50aa      	str	r2, [r5, r2]
 8005262:	e7d7      	b.n	8005214 <_free_r+0x104>
 8005264:	2b14      	cmp	r3, #20
 8005266:	d908      	bls.n	800527a <_free_r+0x16a>
 8005268:	2b54      	cmp	r3, #84	; 0x54
 800526a:	d81e      	bhi.n	80052aa <_free_r+0x19a>
 800526c:	0b0b      	lsrs	r3, r1, #12
 800526e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005272:	00e4      	lsls	r4, r4, #3
 8005274:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005278:	e789      	b.n	800518e <_free_r+0x7e>
 800527a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 800527e:	00e4      	lsls	r4, r4, #3
 8005280:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005284:	e783      	b.n	800518e <_free_r+0x7e>
 8005286:	4618      	mov	r0, r3
 8005288:	e78e      	b.n	80051a8 <_free_r+0x98>
 800528a:	1093      	asrs	r3, r2, #2
 800528c:	6879      	ldr	r1, [r7, #4]
 800528e:	2201      	movs	r2, #1
 8005290:	fa02 f303 	lsl.w	r3, r2, r3
 8005294:	430b      	orrs	r3, r1
 8005296:	607b      	str	r3, [r7, #4]
 8005298:	4603      	mov	r3, r0
 800529a:	e786      	b.n	80051aa <_free_r+0x9a>
 800529c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 80052a0:	e9c5 0002 	strd	r0, r0, [r5, #8]
 80052a4:	606a      	str	r2, [r5, #4]
 80052a6:	5069      	str	r1, [r5, r1]
 80052a8:	e7b4      	b.n	8005214 <_free_r+0x104>
 80052aa:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80052ae:	d806      	bhi.n	80052be <_free_r+0x1ae>
 80052b0:	0bcb      	lsrs	r3, r1, #15
 80052b2:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80052b6:	00e4      	lsls	r4, r4, #3
 80052b8:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80052bc:	e767      	b.n	800518e <_free_r+0x7e>
 80052be:	f240 5254 	movw	r2, #1364	; 0x554
 80052c2:	4293      	cmp	r3, r2
 80052c4:	d806      	bhi.n	80052d4 <_free_r+0x1c4>
 80052c6:	0c8b      	lsrs	r3, r1, #18
 80052c8:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80052cc:	00e4      	lsls	r4, r4, #3
 80052ce:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80052d2:	e75c      	b.n	800518e <_free_r+0x7e>
 80052d4:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80052d8:	227e      	movs	r2, #126	; 0x7e
 80052da:	e758      	b.n	800518e <_free_r+0x7e>
 80052dc:	f041 0201 	orr.w	r2, r1, #1
 80052e0:	606a      	str	r2, [r5, #4]
 80052e2:	6019      	str	r1, [r3, #0]
 80052e4:	e796      	b.n	8005214 <_free_r+0x104>
 80052e6:	bf00      	nop
 80052e8:	2000044c 	.word	0x2000044c
 80052ec:	20000454 	.word	0x20000454
 80052f0:	20000858 	.word	0x20000858
 80052f4:	20000a9c 	.word	0x20000a9c

080052f8 <__sfvwrite_r>:
 80052f8:	6893      	ldr	r3, [r2, #8]
 80052fa:	2b00      	cmp	r3, #0
 80052fc:	f000 80e4 	beq.w	80054c8 <__sfvwrite_r+0x1d0>
 8005300:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005304:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005308:	b29b      	uxth	r3, r3
 800530a:	460c      	mov	r4, r1
 800530c:	0719      	lsls	r1, r3, #28
 800530e:	b083      	sub	sp, #12
 8005310:	4682      	mov	sl, r0
 8005312:	4690      	mov	r8, r2
 8005314:	d535      	bpl.n	8005382 <__sfvwrite_r+0x8a>
 8005316:	6922      	ldr	r2, [r4, #16]
 8005318:	b39a      	cbz	r2, 8005382 <__sfvwrite_r+0x8a>
 800531a:	f013 0202 	ands.w	r2, r3, #2
 800531e:	f8d8 6000 	ldr.w	r6, [r8]
 8005322:	d03d      	beq.n	80053a0 <__sfvwrite_r+0xa8>
 8005324:	2700      	movs	r7, #0
 8005326:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 800532a:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800532e:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 80055f0 <__sfvwrite_r+0x2f8>
 8005332:	463d      	mov	r5, r7
 8005334:	454d      	cmp	r5, r9
 8005336:	462b      	mov	r3, r5
 8005338:	463a      	mov	r2, r7
 800533a:	bf28      	it	cs
 800533c:	464b      	movcs	r3, r9
 800533e:	4661      	mov	r1, ip
 8005340:	4650      	mov	r0, sl
 8005342:	b1d5      	cbz	r5, 800537a <__sfvwrite_r+0x82>
 8005344:	47d8      	blx	fp
 8005346:	2800      	cmp	r0, #0
 8005348:	f340 80c6 	ble.w	80054d8 <__sfvwrite_r+0x1e0>
 800534c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005350:	1a1b      	subs	r3, r3, r0
 8005352:	4407      	add	r7, r0
 8005354:	1a2d      	subs	r5, r5, r0
 8005356:	f8c8 3008 	str.w	r3, [r8, #8]
 800535a:	2b00      	cmp	r3, #0
 800535c:	f000 80b0 	beq.w	80054c0 <__sfvwrite_r+0x1c8>
 8005360:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005364:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005368:	454d      	cmp	r5, r9
 800536a:	462b      	mov	r3, r5
 800536c:	463a      	mov	r2, r7
 800536e:	bf28      	it	cs
 8005370:	464b      	movcs	r3, r9
 8005372:	4661      	mov	r1, ip
 8005374:	4650      	mov	r0, sl
 8005376:	2d00      	cmp	r5, #0
 8005378:	d1e4      	bne.n	8005344 <__sfvwrite_r+0x4c>
 800537a:	e9d6 7500 	ldrd	r7, r5, [r6]
 800537e:	3608      	adds	r6, #8
 8005380:	e7d8      	b.n	8005334 <__sfvwrite_r+0x3c>
 8005382:	4621      	mov	r1, r4
 8005384:	4650      	mov	r0, sl
 8005386:	f7fe fd03 	bl	8003d90 <__swsetup_r>
 800538a:	2800      	cmp	r0, #0
 800538c:	f040 812a 	bne.w	80055e4 <__sfvwrite_r+0x2ec>
 8005390:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005394:	f8d8 6000 	ldr.w	r6, [r8]
 8005398:	b29b      	uxth	r3, r3
 800539a:	f013 0202 	ands.w	r2, r3, #2
 800539e:	d1c1      	bne.n	8005324 <__sfvwrite_r+0x2c>
 80053a0:	f013 0901 	ands.w	r9, r3, #1
 80053a4:	d15d      	bne.n	8005462 <__sfvwrite_r+0x16a>
 80053a6:	68a7      	ldr	r7, [r4, #8]
 80053a8:	6820      	ldr	r0, [r4, #0]
 80053aa:	464d      	mov	r5, r9
 80053ac:	2d00      	cmp	r5, #0
 80053ae:	d054      	beq.n	800545a <__sfvwrite_r+0x162>
 80053b0:	059a      	lsls	r2, r3, #22
 80053b2:	f140 809b 	bpl.w	80054ec <__sfvwrite_r+0x1f4>
 80053b6:	42af      	cmp	r7, r5
 80053b8:	46bb      	mov	fp, r7
 80053ba:	f200 80d8 	bhi.w	800556e <__sfvwrite_r+0x276>
 80053be:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80053c2:	d02f      	beq.n	8005424 <__sfvwrite_r+0x12c>
 80053c4:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80053c8:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80053cc:	eba0 0b01 	sub.w	fp, r0, r1
 80053d0:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80053d4:	1c68      	adds	r0, r5, #1
 80053d6:	107f      	asrs	r7, r7, #1
 80053d8:	4458      	add	r0, fp
 80053da:	42b8      	cmp	r0, r7
 80053dc:	463a      	mov	r2, r7
 80053de:	bf84      	itt	hi
 80053e0:	4607      	movhi	r7, r0
 80053e2:	463a      	movhi	r2, r7
 80053e4:	055b      	lsls	r3, r3, #21
 80053e6:	f140 80d3 	bpl.w	8005590 <__sfvwrite_r+0x298>
 80053ea:	4611      	mov	r1, r2
 80053ec:	4650      	mov	r0, sl
 80053ee:	f000 f9b9 	bl	8005764 <_malloc_r>
 80053f2:	2800      	cmp	r0, #0
 80053f4:	f000 80f0 	beq.w	80055d8 <__sfvwrite_r+0x2e0>
 80053f8:	465a      	mov	r2, fp
 80053fa:	6921      	ldr	r1, [r4, #16]
 80053fc:	9001      	str	r0, [sp, #4]
 80053fe:	f7fb f87f 	bl	8000500 <memcpy>
 8005402:	89a2      	ldrh	r2, [r4, #12]
 8005404:	9b01      	ldr	r3, [sp, #4]
 8005406:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 800540a:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800540e:	81a2      	strh	r2, [r4, #12]
 8005410:	eba7 020b 	sub.w	r2, r7, fp
 8005414:	eb03 000b 	add.w	r0, r3, fp
 8005418:	6167      	str	r7, [r4, #20]
 800541a:	6123      	str	r3, [r4, #16]
 800541c:	6020      	str	r0, [r4, #0]
 800541e:	60a2      	str	r2, [r4, #8]
 8005420:	462f      	mov	r7, r5
 8005422:	46ab      	mov	fp, r5
 8005424:	465a      	mov	r2, fp
 8005426:	4649      	mov	r1, r9
 8005428:	f000 fc40 	bl	8005cac <memmove>
 800542c:	68a2      	ldr	r2, [r4, #8]
 800542e:	6823      	ldr	r3, [r4, #0]
 8005430:	1bd2      	subs	r2, r2, r7
 8005432:	445b      	add	r3, fp
 8005434:	462f      	mov	r7, r5
 8005436:	60a2      	str	r2, [r4, #8]
 8005438:	6023      	str	r3, [r4, #0]
 800543a:	2500      	movs	r5, #0
 800543c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005440:	1bdb      	subs	r3, r3, r7
 8005442:	44b9      	add	r9, r7
 8005444:	f8c8 3008 	str.w	r3, [r8, #8]
 8005448:	2b00      	cmp	r3, #0
 800544a:	d039      	beq.n	80054c0 <__sfvwrite_r+0x1c8>
 800544c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005450:	68a7      	ldr	r7, [r4, #8]
 8005452:	6820      	ldr	r0, [r4, #0]
 8005454:	b29b      	uxth	r3, r3
 8005456:	2d00      	cmp	r5, #0
 8005458:	d1aa      	bne.n	80053b0 <__sfvwrite_r+0xb8>
 800545a:	e9d6 9500 	ldrd	r9, r5, [r6]
 800545e:	3608      	adds	r6, #8
 8005460:	e7a4      	b.n	80053ac <__sfvwrite_r+0xb4>
 8005462:	4633      	mov	r3, r6
 8005464:	4691      	mov	r9, r2
 8005466:	4610      	mov	r0, r2
 8005468:	4617      	mov	r7, r2
 800546a:	464e      	mov	r6, r9
 800546c:	469b      	mov	fp, r3
 800546e:	2f00      	cmp	r7, #0
 8005470:	d06b      	beq.n	800554a <__sfvwrite_r+0x252>
 8005472:	2800      	cmp	r0, #0
 8005474:	d071      	beq.n	800555a <__sfvwrite_r+0x262>
 8005476:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 800547a:	6820      	ldr	r0, [r4, #0]
 800547c:	45b9      	cmp	r9, r7
 800547e:	464b      	mov	r3, r9
 8005480:	bf28      	it	cs
 8005482:	463b      	movcs	r3, r7
 8005484:	4288      	cmp	r0, r1
 8005486:	d903      	bls.n	8005490 <__sfvwrite_r+0x198>
 8005488:	68a5      	ldr	r5, [r4, #8]
 800548a:	4415      	add	r5, r2
 800548c:	42ab      	cmp	r3, r5
 800548e:	dc71      	bgt.n	8005574 <__sfvwrite_r+0x27c>
 8005490:	429a      	cmp	r2, r3
 8005492:	f300 8093 	bgt.w	80055bc <__sfvwrite_r+0x2c4>
 8005496:	4613      	mov	r3, r2
 8005498:	6a65      	ldr	r5, [r4, #36]	; 0x24
 800549a:	69e1      	ldr	r1, [r4, #28]
 800549c:	4632      	mov	r2, r6
 800549e:	4650      	mov	r0, sl
 80054a0:	47a8      	blx	r5
 80054a2:	1e05      	subs	r5, r0, #0
 80054a4:	dd18      	ble.n	80054d8 <__sfvwrite_r+0x1e0>
 80054a6:	ebb9 0905 	subs.w	r9, r9, r5
 80054aa:	d00f      	beq.n	80054cc <__sfvwrite_r+0x1d4>
 80054ac:	2001      	movs	r0, #1
 80054ae:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80054b2:	1b5b      	subs	r3, r3, r5
 80054b4:	442e      	add	r6, r5
 80054b6:	1b7f      	subs	r7, r7, r5
 80054b8:	f8c8 3008 	str.w	r3, [r8, #8]
 80054bc:	2b00      	cmp	r3, #0
 80054be:	d1d6      	bne.n	800546e <__sfvwrite_r+0x176>
 80054c0:	2000      	movs	r0, #0
 80054c2:	b003      	add	sp, #12
 80054c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80054c8:	2000      	movs	r0, #0
 80054ca:	4770      	bx	lr
 80054cc:	4621      	mov	r1, r4
 80054ce:	4650      	mov	r0, sl
 80054d0:	f7ff fd20 	bl	8004f14 <_fflush_r>
 80054d4:	2800      	cmp	r0, #0
 80054d6:	d0ea      	beq.n	80054ae <__sfvwrite_r+0x1b6>
 80054d8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80054dc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80054e0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80054e4:	81a3      	strh	r3, [r4, #12]
 80054e6:	b003      	add	sp, #12
 80054e8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80054ec:	6923      	ldr	r3, [r4, #16]
 80054ee:	4283      	cmp	r3, r0
 80054f0:	d315      	bcc.n	800551e <__sfvwrite_r+0x226>
 80054f2:	6961      	ldr	r1, [r4, #20]
 80054f4:	42a9      	cmp	r1, r5
 80054f6:	d812      	bhi.n	800551e <__sfvwrite_r+0x226>
 80054f8:	4b3c      	ldr	r3, [pc, #240]	; (80055ec <__sfvwrite_r+0x2f4>)
 80054fa:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80054fc:	429d      	cmp	r5, r3
 80054fe:	bf94      	ite	ls
 8005500:	462b      	movls	r3, r5
 8005502:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005506:	464a      	mov	r2, r9
 8005508:	fb93 f3f1 	sdiv	r3, r3, r1
 800550c:	4650      	mov	r0, sl
 800550e:	fb01 f303 	mul.w	r3, r1, r3
 8005512:	69e1      	ldr	r1, [r4, #28]
 8005514:	47b8      	blx	r7
 8005516:	1e07      	subs	r7, r0, #0
 8005518:	ddde      	ble.n	80054d8 <__sfvwrite_r+0x1e0>
 800551a:	1bed      	subs	r5, r5, r7
 800551c:	e78e      	b.n	800543c <__sfvwrite_r+0x144>
 800551e:	42af      	cmp	r7, r5
 8005520:	bf28      	it	cs
 8005522:	462f      	movcs	r7, r5
 8005524:	463a      	mov	r2, r7
 8005526:	4649      	mov	r1, r9
 8005528:	f000 fbc0 	bl	8005cac <memmove>
 800552c:	68a3      	ldr	r3, [r4, #8]
 800552e:	6822      	ldr	r2, [r4, #0]
 8005530:	1bdb      	subs	r3, r3, r7
 8005532:	443a      	add	r2, r7
 8005534:	60a3      	str	r3, [r4, #8]
 8005536:	6022      	str	r2, [r4, #0]
 8005538:	2b00      	cmp	r3, #0
 800553a:	d1ee      	bne.n	800551a <__sfvwrite_r+0x222>
 800553c:	4621      	mov	r1, r4
 800553e:	4650      	mov	r0, sl
 8005540:	f7ff fce8 	bl	8004f14 <_fflush_r>
 8005544:	2800      	cmp	r0, #0
 8005546:	d0e8      	beq.n	800551a <__sfvwrite_r+0x222>
 8005548:	e7c6      	b.n	80054d8 <__sfvwrite_r+0x1e0>
 800554a:	f10b 0308 	add.w	r3, fp, #8
 800554e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005552:	469b      	mov	fp, r3
 8005554:	3308      	adds	r3, #8
 8005556:	2f00      	cmp	r7, #0
 8005558:	d0f9      	beq.n	800554e <__sfvwrite_r+0x256>
 800555a:	463a      	mov	r2, r7
 800555c:	210a      	movs	r1, #10
 800555e:	4630      	mov	r0, r6
 8005560:	f7fb f8de 	bl	8000720 <memchr>
 8005564:	b338      	cbz	r0, 80055b6 <__sfvwrite_r+0x2be>
 8005566:	3001      	adds	r0, #1
 8005568:	eba0 0906 	sub.w	r9, r0, r6
 800556c:	e783      	b.n	8005476 <__sfvwrite_r+0x17e>
 800556e:	462f      	mov	r7, r5
 8005570:	46ab      	mov	fp, r5
 8005572:	e757      	b.n	8005424 <__sfvwrite_r+0x12c>
 8005574:	4631      	mov	r1, r6
 8005576:	462a      	mov	r2, r5
 8005578:	f000 fb98 	bl	8005cac <memmove>
 800557c:	6823      	ldr	r3, [r4, #0]
 800557e:	442b      	add	r3, r5
 8005580:	6023      	str	r3, [r4, #0]
 8005582:	4621      	mov	r1, r4
 8005584:	4650      	mov	r0, sl
 8005586:	f7ff fcc5 	bl	8004f14 <_fflush_r>
 800558a:	2800      	cmp	r0, #0
 800558c:	d08b      	beq.n	80054a6 <__sfvwrite_r+0x1ae>
 800558e:	e7a3      	b.n	80054d8 <__sfvwrite_r+0x1e0>
 8005590:	4650      	mov	r0, sl
 8005592:	f000 ff05 	bl	80063a0 <_realloc_r>
 8005596:	4603      	mov	r3, r0
 8005598:	2800      	cmp	r0, #0
 800559a:	f47f af39 	bne.w	8005410 <__sfvwrite_r+0x118>
 800559e:	6921      	ldr	r1, [r4, #16]
 80055a0:	4650      	mov	r0, sl
 80055a2:	f7ff fdb5 	bl	8005110 <_free_r>
 80055a6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80055aa:	220c      	movs	r2, #12
 80055ac:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80055b0:	f8ca 2000 	str.w	r2, [sl]
 80055b4:	e792      	b.n	80054dc <__sfvwrite_r+0x1e4>
 80055b6:	f107 0901 	add.w	r9, r7, #1
 80055ba:	e75c      	b.n	8005476 <__sfvwrite_r+0x17e>
 80055bc:	461a      	mov	r2, r3
 80055be:	4631      	mov	r1, r6
 80055c0:	9301      	str	r3, [sp, #4]
 80055c2:	f000 fb73 	bl	8005cac <memmove>
 80055c6:	9b01      	ldr	r3, [sp, #4]
 80055c8:	68a1      	ldr	r1, [r4, #8]
 80055ca:	6822      	ldr	r2, [r4, #0]
 80055cc:	1ac9      	subs	r1, r1, r3
 80055ce:	441a      	add	r2, r3
 80055d0:	60a1      	str	r1, [r4, #8]
 80055d2:	6022      	str	r2, [r4, #0]
 80055d4:	461d      	mov	r5, r3
 80055d6:	e766      	b.n	80054a6 <__sfvwrite_r+0x1ae>
 80055d8:	230c      	movs	r3, #12
 80055da:	f8ca 3000 	str.w	r3, [sl]
 80055de:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80055e2:	e77b      	b.n	80054dc <__sfvwrite_r+0x1e4>
 80055e4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80055e8:	e76b      	b.n	80054c2 <__sfvwrite_r+0x1ca>
 80055ea:	bf00      	nop
 80055ec:	7ffffffe 	.word	0x7ffffffe
 80055f0:	7ffffc00 	.word	0x7ffffc00

080055f4 <_fwalk_reent>:
 80055f4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80055f8:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80055fc:	d01f      	beq.n	800563e <_fwalk_reent+0x4a>
 80055fe:	4688      	mov	r8, r1
 8005600:	4606      	mov	r6, r0
 8005602:	f04f 0900 	mov.w	r9, #0
 8005606:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 800560a:	3d01      	subs	r5, #1
 800560c:	d411      	bmi.n	8005632 <_fwalk_reent+0x3e>
 800560e:	89a3      	ldrh	r3, [r4, #12]
 8005610:	2b01      	cmp	r3, #1
 8005612:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005616:	4621      	mov	r1, r4
 8005618:	4630      	mov	r0, r6
 800561a:	d906      	bls.n	800562a <_fwalk_reent+0x36>
 800561c:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005620:	3301      	adds	r3, #1
 8005622:	d002      	beq.n	800562a <_fwalk_reent+0x36>
 8005624:	47c0      	blx	r8
 8005626:	ea49 0900 	orr.w	r9, r9, r0
 800562a:	1c6b      	adds	r3, r5, #1
 800562c:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005630:	d1ed      	bne.n	800560e <_fwalk_reent+0x1a>
 8005632:	683f      	ldr	r7, [r7, #0]
 8005634:	2f00      	cmp	r7, #0
 8005636:	d1e6      	bne.n	8005606 <_fwalk_reent+0x12>
 8005638:	4648      	mov	r0, r9
 800563a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800563e:	46b9      	mov	r9, r7
 8005640:	4648      	mov	r0, r9
 8005642:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005646:	bf00      	nop

08005648 <_localeconv_r>:
 8005648:	4a04      	ldr	r2, [pc, #16]	; (800565c <_localeconv_r+0x14>)
 800564a:	4b05      	ldr	r3, [pc, #20]	; (8005660 <_localeconv_r+0x18>)
 800564c:	6812      	ldr	r2, [r2, #0]
 800564e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005650:	2800      	cmp	r0, #0
 8005652:	bf08      	it	eq
 8005654:	4618      	moveq	r0, r3
 8005656:	30f0      	adds	r0, #240	; 0xf0
 8005658:	4770      	bx	lr
 800565a:	bf00      	nop
 800565c:	20000018 	.word	0x20000018
 8005660:	2000085c 	.word	0x2000085c

08005664 <__retarget_lock_init_recursive>:
 8005664:	4770      	bx	lr
 8005666:	bf00      	nop

08005668 <__retarget_lock_close_recursive>:
 8005668:	4770      	bx	lr
 800566a:	bf00      	nop

0800566c <__retarget_lock_acquire_recursive>:
 800566c:	4770      	bx	lr
 800566e:	bf00      	nop

08005670 <__retarget_lock_release_recursive>:
 8005670:	4770      	bx	lr
 8005672:	bf00      	nop

08005674 <__swhatbuf_r>:
 8005674:	b570      	push	{r4, r5, r6, lr}
 8005676:	460c      	mov	r4, r1
 8005678:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800567c:	2900      	cmp	r1, #0
 800567e:	b096      	sub	sp, #88	; 0x58
 8005680:	4615      	mov	r5, r2
 8005682:	461e      	mov	r6, r3
 8005684:	da0f      	bge.n	80056a6 <__swhatbuf_r+0x32>
 8005686:	89a2      	ldrh	r2, [r4, #12]
 8005688:	2300      	movs	r3, #0
 800568a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 800568e:	6033      	str	r3, [r6, #0]
 8005690:	d104      	bne.n	800569c <__swhatbuf_r+0x28>
 8005692:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005696:	602b      	str	r3, [r5, #0]
 8005698:	b016      	add	sp, #88	; 0x58
 800569a:	bd70      	pop	{r4, r5, r6, pc}
 800569c:	2240      	movs	r2, #64	; 0x40
 800569e:	4618      	mov	r0, r3
 80056a0:	602a      	str	r2, [r5, #0]
 80056a2:	b016      	add	sp, #88	; 0x58
 80056a4:	bd70      	pop	{r4, r5, r6, pc}
 80056a6:	466a      	mov	r2, sp
 80056a8:	f001 fad0 	bl	8006c4c <_fstat_r>
 80056ac:	2800      	cmp	r0, #0
 80056ae:	dbea      	blt.n	8005686 <__swhatbuf_r+0x12>
 80056b0:	9b01      	ldr	r3, [sp, #4]
 80056b2:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 80056b6:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 80056ba:	fab3 f383 	clz	r3, r3
 80056be:	095b      	lsrs	r3, r3, #5
 80056c0:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80056c4:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80056c8:	6033      	str	r3, [r6, #0]
 80056ca:	602a      	str	r2, [r5, #0]
 80056cc:	b016      	add	sp, #88	; 0x58
 80056ce:	bd70      	pop	{r4, r5, r6, pc}

080056d0 <__smakebuf_r>:
 80056d0:	898a      	ldrh	r2, [r1, #12]
 80056d2:	0792      	lsls	r2, r2, #30
 80056d4:	460b      	mov	r3, r1
 80056d6:	d506      	bpl.n	80056e6 <__smakebuf_r+0x16>
 80056d8:	f101 0243 	add.w	r2, r1, #67	; 0x43
 80056dc:	2101      	movs	r1, #1
 80056de:	601a      	str	r2, [r3, #0]
 80056e0:	e9c3 2104 	strd	r2, r1, [r3, #16]
 80056e4:	4770      	bx	lr
 80056e6:	b570      	push	{r4, r5, r6, lr}
 80056e8:	b082      	sub	sp, #8
 80056ea:	ab01      	add	r3, sp, #4
 80056ec:	466a      	mov	r2, sp
 80056ee:	460c      	mov	r4, r1
 80056f0:	4605      	mov	r5, r0
 80056f2:	f7ff ffbf 	bl	8005674 <__swhatbuf_r>
 80056f6:	9900      	ldr	r1, [sp, #0]
 80056f8:	4606      	mov	r6, r0
 80056fa:	4628      	mov	r0, r5
 80056fc:	f000 f832 	bl	8005764 <_malloc_r>
 8005700:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005704:	b1d8      	cbz	r0, 800573e <__smakebuf_r+0x6e>
 8005706:	4916      	ldr	r1, [pc, #88]	; (8005760 <__smakebuf_r+0x90>)
 8005708:	63e9      	str	r1, [r5, #60]	; 0x3c
 800570a:	9a01      	ldr	r2, [sp, #4]
 800570c:	9900      	ldr	r1, [sp, #0]
 800570e:	6020      	str	r0, [r4, #0]
 8005710:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005714:	81a3      	strh	r3, [r4, #12]
 8005716:	e9c4 0104 	strd	r0, r1, [r4, #16]
 800571a:	b91a      	cbnz	r2, 8005724 <__smakebuf_r+0x54>
 800571c:	4333      	orrs	r3, r6
 800571e:	81a3      	strh	r3, [r4, #12]
 8005720:	b002      	add	sp, #8
 8005722:	bd70      	pop	{r4, r5, r6, pc}
 8005724:	4628      	mov	r0, r5
 8005726:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800572a:	f001 faa3 	bl	8006c74 <_isatty_r>
 800572e:	b1a0      	cbz	r0, 800575a <__smakebuf_r+0x8a>
 8005730:	89a3      	ldrh	r3, [r4, #12]
 8005732:	f023 0303 	bic.w	r3, r3, #3
 8005736:	f043 0301 	orr.w	r3, r3, #1
 800573a:	b21b      	sxth	r3, r3
 800573c:	e7ee      	b.n	800571c <__smakebuf_r+0x4c>
 800573e:	059a      	lsls	r2, r3, #22
 8005740:	d4ee      	bmi.n	8005720 <__smakebuf_r+0x50>
 8005742:	f023 0303 	bic.w	r3, r3, #3
 8005746:	f104 0243 	add.w	r2, r4, #67	; 0x43
 800574a:	f043 0302 	orr.w	r3, r3, #2
 800574e:	2101      	movs	r1, #1
 8005750:	81a3      	strh	r3, [r4, #12]
 8005752:	6022      	str	r2, [r4, #0]
 8005754:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005758:	e7e2      	b.n	8005720 <__smakebuf_r+0x50>
 800575a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800575e:	e7dd      	b.n	800571c <__smakebuf_r+0x4c>
 8005760:	08004fc1 	.word	0x08004fc1

08005764 <_malloc_r>:
 8005764:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005768:	f101 050b 	add.w	r5, r1, #11
 800576c:	2d16      	cmp	r5, #22
 800576e:	b083      	sub	sp, #12
 8005770:	4606      	mov	r6, r0
 8005772:	d823      	bhi.n	80057bc <_malloc_r+0x58>
 8005774:	2910      	cmp	r1, #16
 8005776:	f200 80b9 	bhi.w	80058ec <_malloc_r+0x188>
 800577a:	f000 fafb 	bl	8005d74 <__malloc_lock>
 800577e:	2510      	movs	r5, #16
 8005780:	2318      	movs	r3, #24
 8005782:	2002      	movs	r0, #2
 8005784:	4fc5      	ldr	r7, [pc, #788]	; (8005a9c <_malloc_r+0x338>)
 8005786:	443b      	add	r3, r7
 8005788:	f1a3 0208 	sub.w	r2, r3, #8
 800578c:	685c      	ldr	r4, [r3, #4]
 800578e:	4294      	cmp	r4, r2
 8005790:	f000 8166 	beq.w	8005a60 <_malloc_r+0x2fc>
 8005794:	6863      	ldr	r3, [r4, #4]
 8005796:	f023 0303 	bic.w	r3, r3, #3
 800579a:	4423      	add	r3, r4
 800579c:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 80057a0:	685a      	ldr	r2, [r3, #4]
 80057a2:	60e9      	str	r1, [r5, #12]
 80057a4:	f042 0201 	orr.w	r2, r2, #1
 80057a8:	608d      	str	r5, [r1, #8]
 80057aa:	4630      	mov	r0, r6
 80057ac:	605a      	str	r2, [r3, #4]
 80057ae:	f000 fae7 	bl	8005d80 <__malloc_unlock>
 80057b2:	3408      	adds	r4, #8
 80057b4:	4620      	mov	r0, r4
 80057b6:	b003      	add	sp, #12
 80057b8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80057bc:	f035 0507 	bics.w	r5, r5, #7
 80057c0:	f100 8094 	bmi.w	80058ec <_malloc_r+0x188>
 80057c4:	42a9      	cmp	r1, r5
 80057c6:	f200 8091 	bhi.w	80058ec <_malloc_r+0x188>
 80057ca:	f000 fad3 	bl	8005d74 <__malloc_lock>
 80057ce:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80057d2:	f0c0 8183 	bcc.w	8005adc <_malloc_r+0x378>
 80057d6:	0a6b      	lsrs	r3, r5, #9
 80057d8:	f000 808f 	beq.w	80058fa <_malloc_r+0x196>
 80057dc:	2b04      	cmp	r3, #4
 80057de:	f200 8146 	bhi.w	8005a6e <_malloc_r+0x30a>
 80057e2:	09ab      	lsrs	r3, r5, #6
 80057e4:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80057e8:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80057ec:	00c3      	lsls	r3, r0, #3
 80057ee:	4fab      	ldr	r7, [pc, #684]	; (8005a9c <_malloc_r+0x338>)
 80057f0:	443b      	add	r3, r7
 80057f2:	f1a3 0108 	sub.w	r1, r3, #8
 80057f6:	685c      	ldr	r4, [r3, #4]
 80057f8:	42a1      	cmp	r1, r4
 80057fa:	d106      	bne.n	800580a <_malloc_r+0xa6>
 80057fc:	e00c      	b.n	8005818 <_malloc_r+0xb4>
 80057fe:	2a00      	cmp	r2, #0
 8005800:	f280 811d 	bge.w	8005a3e <_malloc_r+0x2da>
 8005804:	68e4      	ldr	r4, [r4, #12]
 8005806:	42a1      	cmp	r1, r4
 8005808:	d006      	beq.n	8005818 <_malloc_r+0xb4>
 800580a:	6863      	ldr	r3, [r4, #4]
 800580c:	f023 0303 	bic.w	r3, r3, #3
 8005810:	1b5a      	subs	r2, r3, r5
 8005812:	2a0f      	cmp	r2, #15
 8005814:	ddf3      	ble.n	80057fe <_malloc_r+0x9a>
 8005816:	4660      	mov	r0, ip
 8005818:	693c      	ldr	r4, [r7, #16]
 800581a:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005ab0 <_malloc_r+0x34c>
 800581e:	4564      	cmp	r4, ip
 8005820:	d071      	beq.n	8005906 <_malloc_r+0x1a2>
 8005822:	6863      	ldr	r3, [r4, #4]
 8005824:	f023 0303 	bic.w	r3, r3, #3
 8005828:	1b5a      	subs	r2, r3, r5
 800582a:	2a0f      	cmp	r2, #15
 800582c:	f300 8144 	bgt.w	8005ab8 <_malloc_r+0x354>
 8005830:	2a00      	cmp	r2, #0
 8005832:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005836:	f280 8126 	bge.w	8005a86 <_malloc_r+0x322>
 800583a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800583e:	f080 8169 	bcs.w	8005b14 <_malloc_r+0x3b0>
 8005842:	08db      	lsrs	r3, r3, #3
 8005844:	1c59      	adds	r1, r3, #1
 8005846:	687a      	ldr	r2, [r7, #4]
 8005848:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 800584c:	f8c4 8008 	str.w	r8, [r4, #8]
 8005850:	f04f 0e01 	mov.w	lr, #1
 8005854:	109b      	asrs	r3, r3, #2
 8005856:	fa0e f303 	lsl.w	r3, lr, r3
 800585a:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 800585e:	4313      	orrs	r3, r2
 8005860:	f1ae 0208 	sub.w	r2, lr, #8
 8005864:	60e2      	str	r2, [r4, #12]
 8005866:	607b      	str	r3, [r7, #4]
 8005868:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 800586c:	f8c8 400c 	str.w	r4, [r8, #12]
 8005870:	1082      	asrs	r2, r0, #2
 8005872:	2401      	movs	r4, #1
 8005874:	4094      	lsls	r4, r2
 8005876:	429c      	cmp	r4, r3
 8005878:	d84b      	bhi.n	8005912 <_malloc_r+0x1ae>
 800587a:	421c      	tst	r4, r3
 800587c:	d106      	bne.n	800588c <_malloc_r+0x128>
 800587e:	f020 0003 	bic.w	r0, r0, #3
 8005882:	0064      	lsls	r4, r4, #1
 8005884:	421c      	tst	r4, r3
 8005886:	f100 0004 	add.w	r0, r0, #4
 800588a:	d0fa      	beq.n	8005882 <_malloc_r+0x11e>
 800588c:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005890:	46ce      	mov	lr, r9
 8005892:	4680      	mov	r8, r0
 8005894:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005898:	459e      	cmp	lr, r3
 800589a:	d107      	bne.n	80058ac <_malloc_r+0x148>
 800589c:	e122      	b.n	8005ae4 <_malloc_r+0x380>
 800589e:	2a00      	cmp	r2, #0
 80058a0:	f280 8129 	bge.w	8005af6 <_malloc_r+0x392>
 80058a4:	68db      	ldr	r3, [r3, #12]
 80058a6:	459e      	cmp	lr, r3
 80058a8:	f000 811c 	beq.w	8005ae4 <_malloc_r+0x380>
 80058ac:	6859      	ldr	r1, [r3, #4]
 80058ae:	f021 0103 	bic.w	r1, r1, #3
 80058b2:	1b4a      	subs	r2, r1, r5
 80058b4:	2a0f      	cmp	r2, #15
 80058b6:	ddf2      	ble.n	800589e <_malloc_r+0x13a>
 80058b8:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 80058bc:	195c      	adds	r4, r3, r5
 80058be:	f045 0501 	orr.w	r5, r5, #1
 80058c2:	605d      	str	r5, [r3, #4]
 80058c4:	f042 0501 	orr.w	r5, r2, #1
 80058c8:	f8c8 e00c 	str.w	lr, [r8, #12]
 80058cc:	4630      	mov	r0, r6
 80058ce:	f8ce 8008 	str.w	r8, [lr, #8]
 80058d2:	e9c7 4404 	strd	r4, r4, [r7, #16]
 80058d6:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80058da:	6065      	str	r5, [r4, #4]
 80058dc:	505a      	str	r2, [r3, r1]
 80058de:	9301      	str	r3, [sp, #4]
 80058e0:	f000 fa4e 	bl	8005d80 <__malloc_unlock>
 80058e4:	9b01      	ldr	r3, [sp, #4]
 80058e6:	f103 0408 	add.w	r4, r3, #8
 80058ea:	e763      	b.n	80057b4 <_malloc_r+0x50>
 80058ec:	2400      	movs	r4, #0
 80058ee:	230c      	movs	r3, #12
 80058f0:	4620      	mov	r0, r4
 80058f2:	6033      	str	r3, [r6, #0]
 80058f4:	b003      	add	sp, #12
 80058f6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80058fa:	f44f 7300 	mov.w	r3, #512	; 0x200
 80058fe:	2040      	movs	r0, #64	; 0x40
 8005900:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005904:	e773      	b.n	80057ee <_malloc_r+0x8a>
 8005906:	687b      	ldr	r3, [r7, #4]
 8005908:	1082      	asrs	r2, r0, #2
 800590a:	2401      	movs	r4, #1
 800590c:	4094      	lsls	r4, r2
 800590e:	429c      	cmp	r4, r3
 8005910:	d9b3      	bls.n	800587a <_malloc_r+0x116>
 8005912:	68bc      	ldr	r4, [r7, #8]
 8005914:	6863      	ldr	r3, [r4, #4]
 8005916:	f023 0903 	bic.w	r9, r3, #3
 800591a:	45a9      	cmp	r9, r5
 800591c:	d303      	bcc.n	8005926 <_malloc_r+0x1c2>
 800591e:	eba9 0305 	sub.w	r3, r9, r5
 8005922:	2b0f      	cmp	r3, #15
 8005924:	dc7b      	bgt.n	8005a1e <_malloc_r+0x2ba>
 8005926:	4b5e      	ldr	r3, [pc, #376]	; (8005aa0 <_malloc_r+0x33c>)
 8005928:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005ab4 <_malloc_r+0x350>
 800592c:	681a      	ldr	r2, [r3, #0]
 800592e:	f8da 3000 	ldr.w	r3, [sl]
 8005932:	3301      	adds	r3, #1
 8005934:	eb05 0802 	add.w	r8, r5, r2
 8005938:	f000 8148 	beq.w	8005bcc <_malloc_r+0x468>
 800593c:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005940:	f108 080f 	add.w	r8, r8, #15
 8005944:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005948:	f028 080f 	bic.w	r8, r8, #15
 800594c:	4641      	mov	r1, r8
 800594e:	4630      	mov	r0, r6
 8005950:	f000 ff08 	bl	8006764 <_sbrk_r>
 8005954:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005958:	4683      	mov	fp, r0
 800595a:	f000 8104 	beq.w	8005b66 <_malloc_r+0x402>
 800595e:	eb04 0009 	add.w	r0, r4, r9
 8005962:	4558      	cmp	r0, fp
 8005964:	f200 80fd 	bhi.w	8005b62 <_malloc_r+0x3fe>
 8005968:	4a4e      	ldr	r2, [pc, #312]	; (8005aa4 <_malloc_r+0x340>)
 800596a:	6813      	ldr	r3, [r2, #0]
 800596c:	4443      	add	r3, r8
 800596e:	6013      	str	r3, [r2, #0]
 8005970:	f000 814d 	beq.w	8005c0e <_malloc_r+0x4aa>
 8005974:	f8da 1000 	ldr.w	r1, [sl]
 8005978:	3101      	adds	r1, #1
 800597a:	bf1b      	ittet	ne
 800597c:	ebab 0000 	subne.w	r0, fp, r0
 8005980:	181b      	addne	r3, r3, r0
 8005982:	f8ca b000 	streq.w	fp, [sl]
 8005986:	6013      	strne	r3, [r2, #0]
 8005988:	f01b 0307 	ands.w	r3, fp, #7
 800598c:	f000 8134 	beq.w	8005bf8 <_malloc_r+0x494>
 8005990:	f1c3 0108 	rsb	r1, r3, #8
 8005994:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005998:	448b      	add	fp, r1
 800599a:	3308      	adds	r3, #8
 800599c:	44d8      	add	r8, fp
 800599e:	f3c8 080b 	ubfx	r8, r8, #0, #12
 80059a2:	eba3 0808 	sub.w	r8, r3, r8
 80059a6:	4641      	mov	r1, r8
 80059a8:	4630      	mov	r0, r6
 80059aa:	9201      	str	r2, [sp, #4]
 80059ac:	f000 feda 	bl	8006764 <_sbrk_r>
 80059b0:	1c43      	adds	r3, r0, #1
 80059b2:	9a01      	ldr	r2, [sp, #4]
 80059b4:	f000 8146 	beq.w	8005c44 <_malloc_r+0x4e0>
 80059b8:	eba0 010b 	sub.w	r1, r0, fp
 80059bc:	4441      	add	r1, r8
 80059be:	f041 0101 	orr.w	r1, r1, #1
 80059c2:	6813      	ldr	r3, [r2, #0]
 80059c4:	f8c7 b008 	str.w	fp, [r7, #8]
 80059c8:	4443      	add	r3, r8
 80059ca:	42bc      	cmp	r4, r7
 80059cc:	f8cb 1004 	str.w	r1, [fp, #4]
 80059d0:	6013      	str	r3, [r2, #0]
 80059d2:	d015      	beq.n	8005a00 <_malloc_r+0x29c>
 80059d4:	f1b9 0f0f 	cmp.w	r9, #15
 80059d8:	f240 8130 	bls.w	8005c3c <_malloc_r+0x4d8>
 80059dc:	6860      	ldr	r0, [r4, #4]
 80059de:	f1a9 010c 	sub.w	r1, r9, #12
 80059e2:	f021 0107 	bic.w	r1, r1, #7
 80059e6:	f000 0001 	and.w	r0, r0, #1
 80059ea:	eb04 0c01 	add.w	ip, r4, r1
 80059ee:	4308      	orrs	r0, r1
 80059f0:	f04f 0e05 	mov.w	lr, #5
 80059f4:	290f      	cmp	r1, #15
 80059f6:	6060      	str	r0, [r4, #4]
 80059f8:	e9cc ee01 	strd	lr, lr, [ip, #4]
 80059fc:	f200 813a 	bhi.w	8005c74 <_malloc_r+0x510>
 8005a00:	4a29      	ldr	r2, [pc, #164]	; (8005aa8 <_malloc_r+0x344>)
 8005a02:	482a      	ldr	r0, [pc, #168]	; (8005aac <_malloc_r+0x348>)
 8005a04:	6811      	ldr	r1, [r2, #0]
 8005a06:	68bc      	ldr	r4, [r7, #8]
 8005a08:	428b      	cmp	r3, r1
 8005a0a:	6801      	ldr	r1, [r0, #0]
 8005a0c:	bf88      	it	hi
 8005a0e:	6013      	strhi	r3, [r2, #0]
 8005a10:	6862      	ldr	r2, [r4, #4]
 8005a12:	428b      	cmp	r3, r1
 8005a14:	f022 0203 	bic.w	r2, r2, #3
 8005a18:	bf88      	it	hi
 8005a1a:	6003      	strhi	r3, [r0, #0]
 8005a1c:	e0a7      	b.n	8005b6e <_malloc_r+0x40a>
 8005a1e:	1962      	adds	r2, r4, r5
 8005a20:	f043 0301 	orr.w	r3, r3, #1
 8005a24:	f045 0501 	orr.w	r5, r5, #1
 8005a28:	6065      	str	r5, [r4, #4]
 8005a2a:	4630      	mov	r0, r6
 8005a2c:	60ba      	str	r2, [r7, #8]
 8005a2e:	6053      	str	r3, [r2, #4]
 8005a30:	f000 f9a6 	bl	8005d80 <__malloc_unlock>
 8005a34:	3408      	adds	r4, #8
 8005a36:	4620      	mov	r0, r4
 8005a38:	b003      	add	sp, #12
 8005a3a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a3e:	4423      	add	r3, r4
 8005a40:	68e1      	ldr	r1, [r4, #12]
 8005a42:	685a      	ldr	r2, [r3, #4]
 8005a44:	68a5      	ldr	r5, [r4, #8]
 8005a46:	f042 0201 	orr.w	r2, r2, #1
 8005a4a:	60e9      	str	r1, [r5, #12]
 8005a4c:	4630      	mov	r0, r6
 8005a4e:	608d      	str	r5, [r1, #8]
 8005a50:	605a      	str	r2, [r3, #4]
 8005a52:	f000 f995 	bl	8005d80 <__malloc_unlock>
 8005a56:	3408      	adds	r4, #8
 8005a58:	4620      	mov	r0, r4
 8005a5a:	b003      	add	sp, #12
 8005a5c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a60:	68dc      	ldr	r4, [r3, #12]
 8005a62:	42a3      	cmp	r3, r4
 8005a64:	bf08      	it	eq
 8005a66:	3002      	addeq	r0, #2
 8005a68:	f43f aed6 	beq.w	8005818 <_malloc_r+0xb4>
 8005a6c:	e692      	b.n	8005794 <_malloc_r+0x30>
 8005a6e:	2b14      	cmp	r3, #20
 8005a70:	d971      	bls.n	8005b56 <_malloc_r+0x3f2>
 8005a72:	2b54      	cmp	r3, #84	; 0x54
 8005a74:	f200 80ad 	bhi.w	8005bd2 <_malloc_r+0x46e>
 8005a78:	0b2b      	lsrs	r3, r5, #12
 8005a7a:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005a7e:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005a82:	00c3      	lsls	r3, r0, #3
 8005a84:	e6b3      	b.n	80057ee <_malloc_r+0x8a>
 8005a86:	4423      	add	r3, r4
 8005a88:	4630      	mov	r0, r6
 8005a8a:	685a      	ldr	r2, [r3, #4]
 8005a8c:	f042 0201 	orr.w	r2, r2, #1
 8005a90:	605a      	str	r2, [r3, #4]
 8005a92:	3408      	adds	r4, #8
 8005a94:	f000 f974 	bl	8005d80 <__malloc_unlock>
 8005a98:	e68c      	b.n	80057b4 <_malloc_r+0x50>
 8005a9a:	bf00      	nop
 8005a9c:	2000044c 	.word	0x2000044c
 8005aa0:	20000a9c 	.word	0x20000a9c
 8005aa4:	20000a6c 	.word	0x20000a6c
 8005aa8:	20000a94 	.word	0x20000a94
 8005aac:	20000a98 	.word	0x20000a98
 8005ab0:	20000454 	.word	0x20000454
 8005ab4:	20000854 	.word	0x20000854
 8005ab8:	1961      	adds	r1, r4, r5
 8005aba:	f045 0e01 	orr.w	lr, r5, #1
 8005abe:	f042 0501 	orr.w	r5, r2, #1
 8005ac2:	f8c4 e004 	str.w	lr, [r4, #4]
 8005ac6:	4630      	mov	r0, r6
 8005ac8:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005acc:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005ad0:	604d      	str	r5, [r1, #4]
 8005ad2:	50e2      	str	r2, [r4, r3]
 8005ad4:	f000 f954 	bl	8005d80 <__malloc_unlock>
 8005ad8:	3408      	adds	r4, #8
 8005ada:	e66b      	b.n	80057b4 <_malloc_r+0x50>
 8005adc:	08e8      	lsrs	r0, r5, #3
 8005ade:	f105 0308 	add.w	r3, r5, #8
 8005ae2:	e64f      	b.n	8005784 <_malloc_r+0x20>
 8005ae4:	f108 0801 	add.w	r8, r8, #1
 8005ae8:	f018 0f03 	tst.w	r8, #3
 8005aec:	f10e 0e08 	add.w	lr, lr, #8
 8005af0:	f47f aed0 	bne.w	8005894 <_malloc_r+0x130>
 8005af4:	e052      	b.n	8005b9c <_malloc_r+0x438>
 8005af6:	4419      	add	r1, r3
 8005af8:	461c      	mov	r4, r3
 8005afa:	684a      	ldr	r2, [r1, #4]
 8005afc:	68db      	ldr	r3, [r3, #12]
 8005afe:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005b02:	f042 0201 	orr.w	r2, r2, #1
 8005b06:	604a      	str	r2, [r1, #4]
 8005b08:	4630      	mov	r0, r6
 8005b0a:	60eb      	str	r3, [r5, #12]
 8005b0c:	609d      	str	r5, [r3, #8]
 8005b0e:	f000 f937 	bl	8005d80 <__malloc_unlock>
 8005b12:	e64f      	b.n	80057b4 <_malloc_r+0x50>
 8005b14:	0a5a      	lsrs	r2, r3, #9
 8005b16:	2a04      	cmp	r2, #4
 8005b18:	d935      	bls.n	8005b86 <_malloc_r+0x422>
 8005b1a:	2a14      	cmp	r2, #20
 8005b1c:	d86f      	bhi.n	8005bfe <_malloc_r+0x49a>
 8005b1e:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005b22:	00c9      	lsls	r1, r1, #3
 8005b24:	325b      	adds	r2, #91	; 0x5b
 8005b26:	eb07 0e01 	add.w	lr, r7, r1
 8005b2a:	5879      	ldr	r1, [r7, r1]
 8005b2c:	f1ae 0e08 	sub.w	lr, lr, #8
 8005b30:	458e      	cmp	lr, r1
 8005b32:	d058      	beq.n	8005be6 <_malloc_r+0x482>
 8005b34:	684a      	ldr	r2, [r1, #4]
 8005b36:	f022 0203 	bic.w	r2, r2, #3
 8005b3a:	429a      	cmp	r2, r3
 8005b3c:	d902      	bls.n	8005b44 <_malloc_r+0x3e0>
 8005b3e:	6889      	ldr	r1, [r1, #8]
 8005b40:	458e      	cmp	lr, r1
 8005b42:	d1f7      	bne.n	8005b34 <_malloc_r+0x3d0>
 8005b44:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005b48:	687b      	ldr	r3, [r7, #4]
 8005b4a:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005b4e:	f8ce 4008 	str.w	r4, [lr, #8]
 8005b52:	60cc      	str	r4, [r1, #12]
 8005b54:	e68c      	b.n	8005870 <_malloc_r+0x10c>
 8005b56:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005b5a:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005b5e:	00c3      	lsls	r3, r0, #3
 8005b60:	e645      	b.n	80057ee <_malloc_r+0x8a>
 8005b62:	42bc      	cmp	r4, r7
 8005b64:	d072      	beq.n	8005c4c <_malloc_r+0x4e8>
 8005b66:	68bc      	ldr	r4, [r7, #8]
 8005b68:	6862      	ldr	r2, [r4, #4]
 8005b6a:	f022 0203 	bic.w	r2, r2, #3
 8005b6e:	4295      	cmp	r5, r2
 8005b70:	eba2 0305 	sub.w	r3, r2, r5
 8005b74:	d802      	bhi.n	8005b7c <_malloc_r+0x418>
 8005b76:	2b0f      	cmp	r3, #15
 8005b78:	f73f af51 	bgt.w	8005a1e <_malloc_r+0x2ba>
 8005b7c:	4630      	mov	r0, r6
 8005b7e:	f000 f8ff 	bl	8005d80 <__malloc_unlock>
 8005b82:	2400      	movs	r4, #0
 8005b84:	e616      	b.n	80057b4 <_malloc_r+0x50>
 8005b86:	099a      	lsrs	r2, r3, #6
 8005b88:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005b8c:	00c9      	lsls	r1, r1, #3
 8005b8e:	3238      	adds	r2, #56	; 0x38
 8005b90:	e7c9      	b.n	8005b26 <_malloc_r+0x3c2>
 8005b92:	f8d9 9000 	ldr.w	r9, [r9]
 8005b96:	4599      	cmp	r9, r3
 8005b98:	f040 8083 	bne.w	8005ca2 <_malloc_r+0x53e>
 8005b9c:	f010 0f03 	tst.w	r0, #3
 8005ba0:	f1a9 0308 	sub.w	r3, r9, #8
 8005ba4:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005ba8:	d1f3      	bne.n	8005b92 <_malloc_r+0x42e>
 8005baa:	687b      	ldr	r3, [r7, #4]
 8005bac:	ea23 0304 	bic.w	r3, r3, r4
 8005bb0:	607b      	str	r3, [r7, #4]
 8005bb2:	0064      	lsls	r4, r4, #1
 8005bb4:	429c      	cmp	r4, r3
 8005bb6:	f63f aeac 	bhi.w	8005912 <_malloc_r+0x1ae>
 8005bba:	b91c      	cbnz	r4, 8005bc4 <_malloc_r+0x460>
 8005bbc:	e6a9      	b.n	8005912 <_malloc_r+0x1ae>
 8005bbe:	0064      	lsls	r4, r4, #1
 8005bc0:	f108 0804 	add.w	r8, r8, #4
 8005bc4:	421c      	tst	r4, r3
 8005bc6:	d0fa      	beq.n	8005bbe <_malloc_r+0x45a>
 8005bc8:	4640      	mov	r0, r8
 8005bca:	e65f      	b.n	800588c <_malloc_r+0x128>
 8005bcc:	f108 0810 	add.w	r8, r8, #16
 8005bd0:	e6bc      	b.n	800594c <_malloc_r+0x1e8>
 8005bd2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005bd6:	d826      	bhi.n	8005c26 <_malloc_r+0x4c2>
 8005bd8:	0beb      	lsrs	r3, r5, #15
 8005bda:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005bde:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005be2:	00c3      	lsls	r3, r0, #3
 8005be4:	e603      	b.n	80057ee <_malloc_r+0x8a>
 8005be6:	687b      	ldr	r3, [r7, #4]
 8005be8:	1092      	asrs	r2, r2, #2
 8005bea:	f04f 0801 	mov.w	r8, #1
 8005bee:	fa08 f202 	lsl.w	r2, r8, r2
 8005bf2:	4313      	orrs	r3, r2
 8005bf4:	607b      	str	r3, [r7, #4]
 8005bf6:	e7a8      	b.n	8005b4a <_malloc_r+0x3e6>
 8005bf8:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005bfc:	e6ce      	b.n	800599c <_malloc_r+0x238>
 8005bfe:	2a54      	cmp	r2, #84	; 0x54
 8005c00:	d829      	bhi.n	8005c56 <_malloc_r+0x4f2>
 8005c02:	0b1a      	lsrs	r2, r3, #12
 8005c04:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005c08:	00c9      	lsls	r1, r1, #3
 8005c0a:	326e      	adds	r2, #110	; 0x6e
 8005c0c:	e78b      	b.n	8005b26 <_malloc_r+0x3c2>
 8005c0e:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005c12:	2900      	cmp	r1, #0
 8005c14:	f47f aeae 	bne.w	8005974 <_malloc_r+0x210>
 8005c18:	eb09 0208 	add.w	r2, r9, r8
 8005c1c:	68b9      	ldr	r1, [r7, #8]
 8005c1e:	f042 0201 	orr.w	r2, r2, #1
 8005c22:	604a      	str	r2, [r1, #4]
 8005c24:	e6ec      	b.n	8005a00 <_malloc_r+0x29c>
 8005c26:	f240 5254 	movw	r2, #1364	; 0x554
 8005c2a:	4293      	cmp	r3, r2
 8005c2c:	d81c      	bhi.n	8005c68 <_malloc_r+0x504>
 8005c2e:	0cab      	lsrs	r3, r5, #18
 8005c30:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005c34:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005c38:	00c3      	lsls	r3, r0, #3
 8005c3a:	e5d8      	b.n	80057ee <_malloc_r+0x8a>
 8005c3c:	2301      	movs	r3, #1
 8005c3e:	f8cb 3004 	str.w	r3, [fp, #4]
 8005c42:	e79b      	b.n	8005b7c <_malloc_r+0x418>
 8005c44:	2101      	movs	r1, #1
 8005c46:	f04f 0800 	mov.w	r8, #0
 8005c4a:	e6ba      	b.n	80059c2 <_malloc_r+0x25e>
 8005c4c:	4a16      	ldr	r2, [pc, #88]	; (8005ca8 <_malloc_r+0x544>)
 8005c4e:	6813      	ldr	r3, [r2, #0]
 8005c50:	4443      	add	r3, r8
 8005c52:	6013      	str	r3, [r2, #0]
 8005c54:	e68e      	b.n	8005974 <_malloc_r+0x210>
 8005c56:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005c5a:	d814      	bhi.n	8005c86 <_malloc_r+0x522>
 8005c5c:	0bda      	lsrs	r2, r3, #15
 8005c5e:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005c62:	00c9      	lsls	r1, r1, #3
 8005c64:	3277      	adds	r2, #119	; 0x77
 8005c66:	e75e      	b.n	8005b26 <_malloc_r+0x3c2>
 8005c68:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005c6c:	207f      	movs	r0, #127	; 0x7f
 8005c6e:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005c72:	e5bc      	b.n	80057ee <_malloc_r+0x8a>
 8005c74:	f104 0108 	add.w	r1, r4, #8
 8005c78:	4630      	mov	r0, r6
 8005c7a:	9201      	str	r2, [sp, #4]
 8005c7c:	f7ff fa48 	bl	8005110 <_free_r>
 8005c80:	9a01      	ldr	r2, [sp, #4]
 8005c82:	6813      	ldr	r3, [r2, #0]
 8005c84:	e6bc      	b.n	8005a00 <_malloc_r+0x29c>
 8005c86:	f240 5154 	movw	r1, #1364	; 0x554
 8005c8a:	428a      	cmp	r2, r1
 8005c8c:	d805      	bhi.n	8005c9a <_malloc_r+0x536>
 8005c8e:	0c9a      	lsrs	r2, r3, #18
 8005c90:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005c94:	00c9      	lsls	r1, r1, #3
 8005c96:	327c      	adds	r2, #124	; 0x7c
 8005c98:	e745      	b.n	8005b26 <_malloc_r+0x3c2>
 8005c9a:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005c9e:	227e      	movs	r2, #126	; 0x7e
 8005ca0:	e741      	b.n	8005b26 <_malloc_r+0x3c2>
 8005ca2:	687b      	ldr	r3, [r7, #4]
 8005ca4:	e785      	b.n	8005bb2 <_malloc_r+0x44e>
 8005ca6:	bf00      	nop
 8005ca8:	20000a6c 	.word	0x20000a6c

08005cac <memmove>:
 8005cac:	4288      	cmp	r0, r1
 8005cae:	b4f0      	push	{r4, r5, r6, r7}
 8005cb0:	d90d      	bls.n	8005cce <memmove+0x22>
 8005cb2:	188b      	adds	r3, r1, r2
 8005cb4:	4283      	cmp	r3, r0
 8005cb6:	d90a      	bls.n	8005cce <memmove+0x22>
 8005cb8:	1884      	adds	r4, r0, r2
 8005cba:	b132      	cbz	r2, 8005cca <memmove+0x1e>
 8005cbc:	4622      	mov	r2, r4
 8005cbe:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005cc2:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005cc6:	4299      	cmp	r1, r3
 8005cc8:	d1f9      	bne.n	8005cbe <memmove+0x12>
 8005cca:	bcf0      	pop	{r4, r5, r6, r7}
 8005ccc:	4770      	bx	lr
 8005cce:	2a0f      	cmp	r2, #15
 8005cd0:	d949      	bls.n	8005d66 <memmove+0xba>
 8005cd2:	ea40 0301 	orr.w	r3, r0, r1
 8005cd6:	079b      	lsls	r3, r3, #30
 8005cd8:	d147      	bne.n	8005d6a <memmove+0xbe>
 8005cda:	f1a2 0310 	sub.w	r3, r2, #16
 8005cde:	091b      	lsrs	r3, r3, #4
 8005ce0:	f101 0720 	add.w	r7, r1, #32
 8005ce4:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005ce8:	f101 0410 	add.w	r4, r1, #16
 8005cec:	f100 0510 	add.w	r5, r0, #16
 8005cf0:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005cf4:	f845 6c10 	str.w	r6, [r5, #-16]
 8005cf8:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005cfc:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005d00:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005d04:	f845 6c08 	str.w	r6, [r5, #-8]
 8005d08:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005d0c:	f845 6c04 	str.w	r6, [r5, #-4]
 8005d10:	3410      	adds	r4, #16
 8005d12:	42bc      	cmp	r4, r7
 8005d14:	f105 0510 	add.w	r5, r5, #16
 8005d18:	d1ea      	bne.n	8005cf0 <memmove+0x44>
 8005d1a:	3301      	adds	r3, #1
 8005d1c:	f002 050f 	and.w	r5, r2, #15
 8005d20:	011b      	lsls	r3, r3, #4
 8005d22:	2d03      	cmp	r5, #3
 8005d24:	4419      	add	r1, r3
 8005d26:	4403      	add	r3, r0
 8005d28:	d921      	bls.n	8005d6e <memmove+0xc2>
 8005d2a:	1f1f      	subs	r7, r3, #4
 8005d2c:	460e      	mov	r6, r1
 8005d2e:	462c      	mov	r4, r5
 8005d30:	3c04      	subs	r4, #4
 8005d32:	f856 cb04 	ldr.w	ip, [r6], #4
 8005d36:	f847 cf04 	str.w	ip, [r7, #4]!
 8005d3a:	2c03      	cmp	r4, #3
 8005d3c:	d8f8      	bhi.n	8005d30 <memmove+0x84>
 8005d3e:	1f2c      	subs	r4, r5, #4
 8005d40:	f024 0403 	bic.w	r4, r4, #3
 8005d44:	3404      	adds	r4, #4
 8005d46:	4423      	add	r3, r4
 8005d48:	4421      	add	r1, r4
 8005d4a:	f002 0203 	and.w	r2, r2, #3
 8005d4e:	2a00      	cmp	r2, #0
 8005d50:	d0bb      	beq.n	8005cca <memmove+0x1e>
 8005d52:	3b01      	subs	r3, #1
 8005d54:	440a      	add	r2, r1
 8005d56:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005d5a:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005d5e:	4291      	cmp	r1, r2
 8005d60:	d1f9      	bne.n	8005d56 <memmove+0xaa>
 8005d62:	bcf0      	pop	{r4, r5, r6, r7}
 8005d64:	4770      	bx	lr
 8005d66:	4603      	mov	r3, r0
 8005d68:	e7f1      	b.n	8005d4e <memmove+0xa2>
 8005d6a:	4603      	mov	r3, r0
 8005d6c:	e7f1      	b.n	8005d52 <memmove+0xa6>
 8005d6e:	462a      	mov	r2, r5
 8005d70:	e7ed      	b.n	8005d4e <memmove+0xa2>
 8005d72:	bf00      	nop

08005d74 <__malloc_lock>:
 8005d74:	4801      	ldr	r0, [pc, #4]	; (8005d7c <__malloc_lock+0x8>)
 8005d76:	f7ff bc79 	b.w	800566c <__retarget_lock_acquire_recursive>
 8005d7a:	bf00      	nop
 8005d7c:	20000af8 	.word	0x20000af8

08005d80 <__malloc_unlock>:
 8005d80:	4801      	ldr	r0, [pc, #4]	; (8005d88 <__malloc_unlock+0x8>)
 8005d82:	f7ff bc75 	b.w	8005670 <__retarget_lock_release_recursive>
 8005d86:	bf00      	nop
 8005d88:	20000af8 	.word	0x20000af8

08005d8c <_Balloc>:
 8005d8c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005d8e:	b570      	push	{r4, r5, r6, lr}
 8005d90:	4605      	mov	r5, r0
 8005d92:	460c      	mov	r4, r1
 8005d94:	b14b      	cbz	r3, 8005daa <_Balloc+0x1e>
 8005d96:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005d9a:	b180      	cbz	r0, 8005dbe <_Balloc+0x32>
 8005d9c:	6802      	ldr	r2, [r0, #0]
 8005d9e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005da2:	2300      	movs	r3, #0
 8005da4:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005da8:	bd70      	pop	{r4, r5, r6, pc}
 8005daa:	2221      	movs	r2, #33	; 0x21
 8005dac:	2104      	movs	r1, #4
 8005dae:	f000 fe1d 	bl	80069ec <_calloc_r>
 8005db2:	4603      	mov	r3, r0
 8005db4:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005db6:	2800      	cmp	r0, #0
 8005db8:	d1ed      	bne.n	8005d96 <_Balloc+0xa>
 8005dba:	2000      	movs	r0, #0
 8005dbc:	bd70      	pop	{r4, r5, r6, pc}
 8005dbe:	2101      	movs	r1, #1
 8005dc0:	fa01 f604 	lsl.w	r6, r1, r4
 8005dc4:	1d72      	adds	r2, r6, #5
 8005dc6:	4628      	mov	r0, r5
 8005dc8:	0092      	lsls	r2, r2, #2
 8005dca:	f000 fe0f 	bl	80069ec <_calloc_r>
 8005dce:	2800      	cmp	r0, #0
 8005dd0:	d0f3      	beq.n	8005dba <_Balloc+0x2e>
 8005dd2:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005dd6:	e7e4      	b.n	8005da2 <_Balloc+0x16>

08005dd8 <_Bfree>:
 8005dd8:	b131      	cbz	r1, 8005de8 <_Bfree+0x10>
 8005dda:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005ddc:	684a      	ldr	r2, [r1, #4]
 8005dde:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005de2:	6008      	str	r0, [r1, #0]
 8005de4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005de8:	4770      	bx	lr
 8005dea:	bf00      	nop

08005dec <__multadd>:
 8005dec:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005dee:	690c      	ldr	r4, [r1, #16]
 8005df0:	b083      	sub	sp, #12
 8005df2:	460d      	mov	r5, r1
 8005df4:	4606      	mov	r6, r0
 8005df6:	f101 0c14 	add.w	ip, r1, #20
 8005dfa:	2700      	movs	r7, #0
 8005dfc:	f8dc 0000 	ldr.w	r0, [ip]
 8005e00:	b281      	uxth	r1, r0
 8005e02:	fb02 3301 	mla	r3, r2, r1, r3
 8005e06:	0c01      	lsrs	r1, r0, #16
 8005e08:	0c18      	lsrs	r0, r3, #16
 8005e0a:	fb02 0101 	mla	r1, r2, r1, r0
 8005e0e:	b29b      	uxth	r3, r3
 8005e10:	3701      	adds	r7, #1
 8005e12:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005e16:	42bc      	cmp	r4, r7
 8005e18:	f84c 3b04 	str.w	r3, [ip], #4
 8005e1c:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8005e20:	dcec      	bgt.n	8005dfc <__multadd+0x10>
 8005e22:	b13b      	cbz	r3, 8005e34 <__multadd+0x48>
 8005e24:	68aa      	ldr	r2, [r5, #8]
 8005e26:	42a2      	cmp	r2, r4
 8005e28:	dd07      	ble.n	8005e3a <__multadd+0x4e>
 8005e2a:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8005e2e:	3401      	adds	r4, #1
 8005e30:	6153      	str	r3, [r2, #20]
 8005e32:	612c      	str	r4, [r5, #16]
 8005e34:	4628      	mov	r0, r5
 8005e36:	b003      	add	sp, #12
 8005e38:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005e3a:	6869      	ldr	r1, [r5, #4]
 8005e3c:	9301      	str	r3, [sp, #4]
 8005e3e:	3101      	adds	r1, #1
 8005e40:	4630      	mov	r0, r6
 8005e42:	f7ff ffa3 	bl	8005d8c <_Balloc>
 8005e46:	692a      	ldr	r2, [r5, #16]
 8005e48:	3202      	adds	r2, #2
 8005e4a:	f105 010c 	add.w	r1, r5, #12
 8005e4e:	4607      	mov	r7, r0
 8005e50:	0092      	lsls	r2, r2, #2
 8005e52:	300c      	adds	r0, #12
 8005e54:	f7fa fb54 	bl	8000500 <memcpy>
 8005e58:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8005e5a:	6869      	ldr	r1, [r5, #4]
 8005e5c:	9b01      	ldr	r3, [sp, #4]
 8005e5e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8005e62:	6028      	str	r0, [r5, #0]
 8005e64:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8005e68:	463d      	mov	r5, r7
 8005e6a:	e7de      	b.n	8005e2a <__multadd+0x3e>

08005e6c <__hi0bits>:
 8005e6c:	0c02      	lsrs	r2, r0, #16
 8005e6e:	0412      	lsls	r2, r2, #16
 8005e70:	4603      	mov	r3, r0
 8005e72:	b9c2      	cbnz	r2, 8005ea6 <__hi0bits+0x3a>
 8005e74:	0403      	lsls	r3, r0, #16
 8005e76:	2010      	movs	r0, #16
 8005e78:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8005e7c:	bf04      	itt	eq
 8005e7e:	021b      	lsleq	r3, r3, #8
 8005e80:	3008      	addeq	r0, #8
 8005e82:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8005e86:	bf04      	itt	eq
 8005e88:	011b      	lsleq	r3, r3, #4
 8005e8a:	3004      	addeq	r0, #4
 8005e8c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8005e90:	bf04      	itt	eq
 8005e92:	009b      	lsleq	r3, r3, #2
 8005e94:	3002      	addeq	r0, #2
 8005e96:	2b00      	cmp	r3, #0
 8005e98:	db04      	blt.n	8005ea4 <__hi0bits+0x38>
 8005e9a:	005b      	lsls	r3, r3, #1
 8005e9c:	d501      	bpl.n	8005ea2 <__hi0bits+0x36>
 8005e9e:	3001      	adds	r0, #1
 8005ea0:	4770      	bx	lr
 8005ea2:	2020      	movs	r0, #32
 8005ea4:	4770      	bx	lr
 8005ea6:	2000      	movs	r0, #0
 8005ea8:	e7e6      	b.n	8005e78 <__hi0bits+0xc>
 8005eaa:	bf00      	nop

08005eac <__lo0bits>:
 8005eac:	6803      	ldr	r3, [r0, #0]
 8005eae:	f013 0207 	ands.w	r2, r3, #7
 8005eb2:	4601      	mov	r1, r0
 8005eb4:	d007      	beq.n	8005ec6 <__lo0bits+0x1a>
 8005eb6:	07da      	lsls	r2, r3, #31
 8005eb8:	d41f      	bmi.n	8005efa <__lo0bits+0x4e>
 8005eba:	0798      	lsls	r0, r3, #30
 8005ebc:	d51f      	bpl.n	8005efe <__lo0bits+0x52>
 8005ebe:	085b      	lsrs	r3, r3, #1
 8005ec0:	600b      	str	r3, [r1, #0]
 8005ec2:	2001      	movs	r0, #1
 8005ec4:	4770      	bx	lr
 8005ec6:	b298      	uxth	r0, r3
 8005ec8:	b1a0      	cbz	r0, 8005ef4 <__lo0bits+0x48>
 8005eca:	4610      	mov	r0, r2
 8005ecc:	f013 0fff 	tst.w	r3, #255	; 0xff
 8005ed0:	bf04      	itt	eq
 8005ed2:	0a1b      	lsreq	r3, r3, #8
 8005ed4:	3008      	addeq	r0, #8
 8005ed6:	071a      	lsls	r2, r3, #28
 8005ed8:	bf04      	itt	eq
 8005eda:	091b      	lsreq	r3, r3, #4
 8005edc:	3004      	addeq	r0, #4
 8005ede:	079a      	lsls	r2, r3, #30
 8005ee0:	bf04      	itt	eq
 8005ee2:	089b      	lsreq	r3, r3, #2
 8005ee4:	3002      	addeq	r0, #2
 8005ee6:	07da      	lsls	r2, r3, #31
 8005ee8:	d402      	bmi.n	8005ef0 <__lo0bits+0x44>
 8005eea:	085b      	lsrs	r3, r3, #1
 8005eec:	d00b      	beq.n	8005f06 <__lo0bits+0x5a>
 8005eee:	3001      	adds	r0, #1
 8005ef0:	600b      	str	r3, [r1, #0]
 8005ef2:	4770      	bx	lr
 8005ef4:	0c1b      	lsrs	r3, r3, #16
 8005ef6:	2010      	movs	r0, #16
 8005ef8:	e7e8      	b.n	8005ecc <__lo0bits+0x20>
 8005efa:	2000      	movs	r0, #0
 8005efc:	4770      	bx	lr
 8005efe:	089b      	lsrs	r3, r3, #2
 8005f00:	600b      	str	r3, [r1, #0]
 8005f02:	2002      	movs	r0, #2
 8005f04:	4770      	bx	lr
 8005f06:	2020      	movs	r0, #32
 8005f08:	4770      	bx	lr
 8005f0a:	bf00      	nop

08005f0c <__i2b>:
 8005f0c:	b510      	push	{r4, lr}
 8005f0e:	460c      	mov	r4, r1
 8005f10:	2101      	movs	r1, #1
 8005f12:	f7ff ff3b 	bl	8005d8c <_Balloc>
 8005f16:	2201      	movs	r2, #1
 8005f18:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8005f1c:	bd10      	pop	{r4, pc}
 8005f1e:	bf00      	nop

08005f20 <__multiply>:
 8005f20:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005f24:	690e      	ldr	r6, [r1, #16]
 8005f26:	6914      	ldr	r4, [r2, #16]
 8005f28:	42a6      	cmp	r6, r4
 8005f2a:	b083      	sub	sp, #12
 8005f2c:	460f      	mov	r7, r1
 8005f2e:	4615      	mov	r5, r2
 8005f30:	da04      	bge.n	8005f3c <__multiply+0x1c>
 8005f32:	4632      	mov	r2, r6
 8005f34:	462f      	mov	r7, r5
 8005f36:	4626      	mov	r6, r4
 8005f38:	460d      	mov	r5, r1
 8005f3a:	4614      	mov	r4, r2
 8005f3c:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8005f40:	eb06 0804 	add.w	r8, r6, r4
 8005f44:	4543      	cmp	r3, r8
 8005f46:	bfb8      	it	lt
 8005f48:	3101      	addlt	r1, #1
 8005f4a:	f7ff ff1f 	bl	8005d8c <_Balloc>
 8005f4e:	f100 0914 	add.w	r9, r0, #20
 8005f52:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8005f56:	45f1      	cmp	r9, lr
 8005f58:	9000      	str	r0, [sp, #0]
 8005f5a:	d205      	bcs.n	8005f68 <__multiply+0x48>
 8005f5c:	464b      	mov	r3, r9
 8005f5e:	2200      	movs	r2, #0
 8005f60:	f843 2b04 	str.w	r2, [r3], #4
 8005f64:	459e      	cmp	lr, r3
 8005f66:	d8fb      	bhi.n	8005f60 <__multiply+0x40>
 8005f68:	f105 0a14 	add.w	sl, r5, #20
 8005f6c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8005f70:	f107 0314 	add.w	r3, r7, #20
 8005f74:	45a2      	cmp	sl, r4
 8005f76:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8005f7a:	d261      	bcs.n	8006040 <__multiply+0x120>
 8005f7c:	1b64      	subs	r4, r4, r5
 8005f7e:	3c15      	subs	r4, #21
 8005f80:	f024 0403 	bic.w	r4, r4, #3
 8005f84:	f8cd e004 	str.w	lr, [sp, #4]
 8005f88:	44a2      	add	sl, r4
 8005f8a:	f105 0210 	add.w	r2, r5, #16
 8005f8e:	469e      	mov	lr, r3
 8005f90:	e005      	b.n	8005f9e <__multiply+0x7e>
 8005f92:	0c2d      	lsrs	r5, r5, #16
 8005f94:	d12b      	bne.n	8005fee <__multiply+0xce>
 8005f96:	4592      	cmp	sl, r2
 8005f98:	f109 0904 	add.w	r9, r9, #4
 8005f9c:	d04e      	beq.n	800603c <__multiply+0x11c>
 8005f9e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8005fa2:	fa1f fb85 	uxth.w	fp, r5
 8005fa6:	f1bb 0f00 	cmp.w	fp, #0
 8005faa:	d0f2      	beq.n	8005f92 <__multiply+0x72>
 8005fac:	4677      	mov	r7, lr
 8005fae:	464e      	mov	r6, r9
 8005fb0:	2000      	movs	r0, #0
 8005fb2:	e000      	b.n	8005fb6 <__multiply+0x96>
 8005fb4:	4626      	mov	r6, r4
 8005fb6:	f857 1b04 	ldr.w	r1, [r7], #4
 8005fba:	6834      	ldr	r4, [r6, #0]
 8005fbc:	b28b      	uxth	r3, r1
 8005fbe:	b2a5      	uxth	r5, r4
 8005fc0:	0c09      	lsrs	r1, r1, #16
 8005fc2:	0c24      	lsrs	r4, r4, #16
 8005fc4:	fb0b 5303 	mla	r3, fp, r3, r5
 8005fc8:	4403      	add	r3, r0
 8005fca:	fb0b 4001 	mla	r0, fp, r1, r4
 8005fce:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8005fd2:	4634      	mov	r4, r6
 8005fd4:	b29b      	uxth	r3, r3
 8005fd6:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8005fda:	45bc      	cmp	ip, r7
 8005fdc:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8005fe0:	f844 3b04 	str.w	r3, [r4], #4
 8005fe4:	d8e6      	bhi.n	8005fb4 <__multiply+0x94>
 8005fe6:	6070      	str	r0, [r6, #4]
 8005fe8:	6815      	ldr	r5, [r2, #0]
 8005fea:	0c2d      	lsrs	r5, r5, #16
 8005fec:	d0d3      	beq.n	8005f96 <__multiply+0x76>
 8005fee:	f8d9 3000 	ldr.w	r3, [r9]
 8005ff2:	4676      	mov	r6, lr
 8005ff4:	4618      	mov	r0, r3
 8005ff6:	46cb      	mov	fp, r9
 8005ff8:	2100      	movs	r1, #0
 8005ffa:	e000      	b.n	8005ffe <__multiply+0xde>
 8005ffc:	46a3      	mov	fp, r4
 8005ffe:	8834      	ldrh	r4, [r6, #0]
 8006000:	0c00      	lsrs	r0, r0, #16
 8006002:	fb05 0004 	mla	r0, r5, r4, r0
 8006006:	4401      	add	r1, r0
 8006008:	b29b      	uxth	r3, r3
 800600a:	465c      	mov	r4, fp
 800600c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006010:	f844 3b04 	str.w	r3, [r4], #4
 8006014:	f856 3b04 	ldr.w	r3, [r6], #4
 8006018:	f8db 0004 	ldr.w	r0, [fp, #4]
 800601c:	0c1b      	lsrs	r3, r3, #16
 800601e:	b287      	uxth	r7, r0
 8006020:	fb05 7303 	mla	r3, r5, r3, r7
 8006024:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006028:	45b4      	cmp	ip, r6
 800602a:	ea4f 4113 	mov.w	r1, r3, lsr #16
 800602e:	d8e5      	bhi.n	8005ffc <__multiply+0xdc>
 8006030:	4592      	cmp	sl, r2
 8006032:	f8cb 3004 	str.w	r3, [fp, #4]
 8006036:	f109 0904 	add.w	r9, r9, #4
 800603a:	d1b0      	bne.n	8005f9e <__multiply+0x7e>
 800603c:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006040:	f1b8 0f00 	cmp.w	r8, #0
 8006044:	dd0b      	ble.n	800605e <__multiply+0x13e>
 8006046:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800604a:	f1ae 0e04 	sub.w	lr, lr, #4
 800604e:	b11b      	cbz	r3, 8006058 <__multiply+0x138>
 8006050:	e005      	b.n	800605e <__multiply+0x13e>
 8006052:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006056:	b913      	cbnz	r3, 800605e <__multiply+0x13e>
 8006058:	f1b8 0801 	subs.w	r8, r8, #1
 800605c:	d1f9      	bne.n	8006052 <__multiply+0x132>
 800605e:	9800      	ldr	r0, [sp, #0]
 8006060:	f8c0 8010 	str.w	r8, [r0, #16]
 8006064:	b003      	add	sp, #12
 8006066:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800606a:	bf00      	nop

0800606c <__pow5mult>:
 800606c:	f012 0303 	ands.w	r3, r2, #3
 8006070:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006074:	4614      	mov	r4, r2
 8006076:	4607      	mov	r7, r0
 8006078:	d12e      	bne.n	80060d8 <__pow5mult+0x6c>
 800607a:	460d      	mov	r5, r1
 800607c:	10a4      	asrs	r4, r4, #2
 800607e:	d01c      	beq.n	80060ba <__pow5mult+0x4e>
 8006080:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8006082:	b396      	cbz	r6, 80060ea <__pow5mult+0x7e>
 8006084:	07e3      	lsls	r3, r4, #31
 8006086:	f04f 0800 	mov.w	r8, #0
 800608a:	d406      	bmi.n	800609a <__pow5mult+0x2e>
 800608c:	1064      	asrs	r4, r4, #1
 800608e:	d014      	beq.n	80060ba <__pow5mult+0x4e>
 8006090:	6830      	ldr	r0, [r6, #0]
 8006092:	b1a8      	cbz	r0, 80060c0 <__pow5mult+0x54>
 8006094:	4606      	mov	r6, r0
 8006096:	07e3      	lsls	r3, r4, #31
 8006098:	d5f8      	bpl.n	800608c <__pow5mult+0x20>
 800609a:	4632      	mov	r2, r6
 800609c:	4629      	mov	r1, r5
 800609e:	4638      	mov	r0, r7
 80060a0:	f7ff ff3e 	bl	8005f20 <__multiply>
 80060a4:	b1b5      	cbz	r5, 80060d4 <__pow5mult+0x68>
 80060a6:	686a      	ldr	r2, [r5, #4]
 80060a8:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80060aa:	1064      	asrs	r4, r4, #1
 80060ac:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80060b0:	6029      	str	r1, [r5, #0]
 80060b2:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80060b6:	4605      	mov	r5, r0
 80060b8:	d1ea      	bne.n	8006090 <__pow5mult+0x24>
 80060ba:	4628      	mov	r0, r5
 80060bc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80060c0:	4632      	mov	r2, r6
 80060c2:	4631      	mov	r1, r6
 80060c4:	4638      	mov	r0, r7
 80060c6:	f7ff ff2b 	bl	8005f20 <__multiply>
 80060ca:	6030      	str	r0, [r6, #0]
 80060cc:	f8c0 8000 	str.w	r8, [r0]
 80060d0:	4606      	mov	r6, r0
 80060d2:	e7e0      	b.n	8006096 <__pow5mult+0x2a>
 80060d4:	4605      	mov	r5, r0
 80060d6:	e7d9      	b.n	800608c <__pow5mult+0x20>
 80060d8:	3b01      	subs	r3, #1
 80060da:	4a0b      	ldr	r2, [pc, #44]	; (8006108 <__pow5mult+0x9c>)
 80060dc:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80060e0:	2300      	movs	r3, #0
 80060e2:	f7ff fe83 	bl	8005dec <__multadd>
 80060e6:	4605      	mov	r5, r0
 80060e8:	e7c8      	b.n	800607c <__pow5mult+0x10>
 80060ea:	2101      	movs	r1, #1
 80060ec:	4638      	mov	r0, r7
 80060ee:	f7ff fe4d 	bl	8005d8c <_Balloc>
 80060f2:	f240 2371 	movw	r3, #625	; 0x271
 80060f6:	6143      	str	r3, [r0, #20]
 80060f8:	2201      	movs	r2, #1
 80060fa:	2300      	movs	r3, #0
 80060fc:	6102      	str	r2, [r0, #16]
 80060fe:	4606      	mov	r6, r0
 8006100:	64b8      	str	r0, [r7, #72]	; 0x48
 8006102:	6003      	str	r3, [r0, #0]
 8006104:	e7be      	b.n	8006084 <__pow5mult+0x18>
 8006106:	bf00      	nop
 8006108:	080070f0 	.word	0x080070f0

0800610c <__lshift>:
 800610c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006110:	4691      	mov	r9, r2
 8006112:	690a      	ldr	r2, [r1, #16]
 8006114:	460e      	mov	r6, r1
 8006116:	ea4f 1469 	mov.w	r4, r9, asr #5
 800611a:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 800611e:	eb04 0802 	add.w	r8, r4, r2
 8006122:	f108 0501 	add.w	r5, r8, #1
 8006126:	429d      	cmp	r5, r3
 8006128:	4607      	mov	r7, r0
 800612a:	dd04      	ble.n	8006136 <__lshift+0x2a>
 800612c:	005b      	lsls	r3, r3, #1
 800612e:	429d      	cmp	r5, r3
 8006130:	f101 0101 	add.w	r1, r1, #1
 8006134:	dcfa      	bgt.n	800612c <__lshift+0x20>
 8006136:	4638      	mov	r0, r7
 8006138:	f7ff fe28 	bl	8005d8c <_Balloc>
 800613c:	2c00      	cmp	r4, #0
 800613e:	f100 0314 	add.w	r3, r0, #20
 8006142:	dd37      	ble.n	80061b4 <__lshift+0xa8>
 8006144:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006148:	2200      	movs	r2, #0
 800614a:	f843 2b04 	str.w	r2, [r3], #4
 800614e:	428b      	cmp	r3, r1
 8006150:	d1fb      	bne.n	800614a <__lshift+0x3e>
 8006152:	6934      	ldr	r4, [r6, #16]
 8006154:	f106 0314 	add.w	r3, r6, #20
 8006158:	f019 091f 	ands.w	r9, r9, #31
 800615c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006160:	d020      	beq.n	80061a4 <__lshift+0x98>
 8006162:	f1c9 0e20 	rsb	lr, r9, #32
 8006166:	2200      	movs	r2, #0
 8006168:	e000      	b.n	800616c <__lshift+0x60>
 800616a:	4651      	mov	r1, sl
 800616c:	681c      	ldr	r4, [r3, #0]
 800616e:	468a      	mov	sl, r1
 8006170:	fa04 f409 	lsl.w	r4, r4, r9
 8006174:	4314      	orrs	r4, r2
 8006176:	f84a 4b04 	str.w	r4, [sl], #4
 800617a:	f853 2b04 	ldr.w	r2, [r3], #4
 800617e:	4563      	cmp	r3, ip
 8006180:	fa22 f20e 	lsr.w	r2, r2, lr
 8006184:	d3f1      	bcc.n	800616a <__lshift+0x5e>
 8006186:	604a      	str	r2, [r1, #4]
 8006188:	b10a      	cbz	r2, 800618e <__lshift+0x82>
 800618a:	f108 0502 	add.w	r5, r8, #2
 800618e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006190:	6872      	ldr	r2, [r6, #4]
 8006192:	3d01      	subs	r5, #1
 8006194:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006198:	6105      	str	r5, [r0, #16]
 800619a:	6031      	str	r1, [r6, #0]
 800619c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80061a0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80061a4:	3904      	subs	r1, #4
 80061a6:	f853 2b04 	ldr.w	r2, [r3], #4
 80061aa:	f841 2f04 	str.w	r2, [r1, #4]!
 80061ae:	459c      	cmp	ip, r3
 80061b0:	d8f9      	bhi.n	80061a6 <__lshift+0x9a>
 80061b2:	e7ec      	b.n	800618e <__lshift+0x82>
 80061b4:	4619      	mov	r1, r3
 80061b6:	e7cc      	b.n	8006152 <__lshift+0x46>

080061b8 <__mcmp>:
 80061b8:	b430      	push	{r4, r5}
 80061ba:	690b      	ldr	r3, [r1, #16]
 80061bc:	4605      	mov	r5, r0
 80061be:	6900      	ldr	r0, [r0, #16]
 80061c0:	1ac0      	subs	r0, r0, r3
 80061c2:	d10f      	bne.n	80061e4 <__mcmp+0x2c>
 80061c4:	009b      	lsls	r3, r3, #2
 80061c6:	3514      	adds	r5, #20
 80061c8:	3114      	adds	r1, #20
 80061ca:	4419      	add	r1, r3
 80061cc:	442b      	add	r3, r5
 80061ce:	e001      	b.n	80061d4 <__mcmp+0x1c>
 80061d0:	429d      	cmp	r5, r3
 80061d2:	d207      	bcs.n	80061e4 <__mcmp+0x2c>
 80061d4:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80061d8:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80061dc:	4294      	cmp	r4, r2
 80061de:	d0f7      	beq.n	80061d0 <__mcmp+0x18>
 80061e0:	d302      	bcc.n	80061e8 <__mcmp+0x30>
 80061e2:	2001      	movs	r0, #1
 80061e4:	bc30      	pop	{r4, r5}
 80061e6:	4770      	bx	lr
 80061e8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80061ec:	e7fa      	b.n	80061e4 <__mcmp+0x2c>
 80061ee:	bf00      	nop

080061f0 <__mdiff>:
 80061f0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80061f4:	6913      	ldr	r3, [r2, #16]
 80061f6:	690d      	ldr	r5, [r1, #16]
 80061f8:	1aed      	subs	r5, r5, r3
 80061fa:	2d00      	cmp	r5, #0
 80061fc:	460e      	mov	r6, r1
 80061fe:	4690      	mov	r8, r2
 8006200:	f101 0414 	add.w	r4, r1, #20
 8006204:	f102 0714 	add.w	r7, r2, #20
 8006208:	d114      	bne.n	8006234 <__mdiff+0x44>
 800620a:	009b      	lsls	r3, r3, #2
 800620c:	18e2      	adds	r2, r4, r3
 800620e:	443b      	add	r3, r7
 8006210:	e001      	b.n	8006216 <__mdiff+0x26>
 8006212:	42a2      	cmp	r2, r4
 8006214:	d959      	bls.n	80062ca <__mdiff+0xda>
 8006216:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 800621a:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800621e:	458c      	cmp	ip, r1
 8006220:	d0f7      	beq.n	8006212 <__mdiff+0x22>
 8006222:	d209      	bcs.n	8006238 <__mdiff+0x48>
 8006224:	4622      	mov	r2, r4
 8006226:	4633      	mov	r3, r6
 8006228:	463c      	mov	r4, r7
 800622a:	4646      	mov	r6, r8
 800622c:	4617      	mov	r7, r2
 800622e:	4698      	mov	r8, r3
 8006230:	2501      	movs	r5, #1
 8006232:	e001      	b.n	8006238 <__mdiff+0x48>
 8006234:	dbf6      	blt.n	8006224 <__mdiff+0x34>
 8006236:	2500      	movs	r5, #0
 8006238:	6871      	ldr	r1, [r6, #4]
 800623a:	f7ff fda7 	bl	8005d8c <_Balloc>
 800623e:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006242:	6936      	ldr	r6, [r6, #16]
 8006244:	60c5      	str	r5, [r0, #12]
 8006246:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 800624a:	46bc      	mov	ip, r7
 800624c:	f100 0514 	add.w	r5, r0, #20
 8006250:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006254:	2300      	movs	r3, #0
 8006256:	f85c 1b04 	ldr.w	r1, [ip], #4
 800625a:	f854 8b04 	ldr.w	r8, [r4], #4
 800625e:	b28a      	uxth	r2, r1
 8006260:	fa13 f388 	uxtah	r3, r3, r8
 8006264:	0c09      	lsrs	r1, r1, #16
 8006266:	1a9a      	subs	r2, r3, r2
 8006268:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 800626c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006270:	b292      	uxth	r2, r2
 8006272:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006276:	45e6      	cmp	lr, ip
 8006278:	f845 2b04 	str.w	r2, [r5], #4
 800627c:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006280:	d8e9      	bhi.n	8006256 <__mdiff+0x66>
 8006282:	42a7      	cmp	r7, r4
 8006284:	d917      	bls.n	80062b6 <__mdiff+0xc6>
 8006286:	46ae      	mov	lr, r5
 8006288:	46a4      	mov	ip, r4
 800628a:	f85c 2b04 	ldr.w	r2, [ip], #4
 800628e:	fa13 f382 	uxtah	r3, r3, r2
 8006292:	1419      	asrs	r1, r3, #16
 8006294:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006298:	b29b      	uxth	r3, r3
 800629a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800629e:	4567      	cmp	r7, ip
 80062a0:	f84e 2b04 	str.w	r2, [lr], #4
 80062a4:	ea4f 4321 	mov.w	r3, r1, asr #16
 80062a8:	d8ef      	bhi.n	800628a <__mdiff+0x9a>
 80062aa:	43e4      	mvns	r4, r4
 80062ac:	4427      	add	r7, r4
 80062ae:	f027 0703 	bic.w	r7, r7, #3
 80062b2:	3704      	adds	r7, #4
 80062b4:	443d      	add	r5, r7
 80062b6:	3d04      	subs	r5, #4
 80062b8:	b922      	cbnz	r2, 80062c4 <__mdiff+0xd4>
 80062ba:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80062be:	3e01      	subs	r6, #1
 80062c0:	2b00      	cmp	r3, #0
 80062c2:	d0fa      	beq.n	80062ba <__mdiff+0xca>
 80062c4:	6106      	str	r6, [r0, #16]
 80062c6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80062ca:	2100      	movs	r1, #0
 80062cc:	f7ff fd5e 	bl	8005d8c <_Balloc>
 80062d0:	2201      	movs	r2, #1
 80062d2:	2300      	movs	r3, #0
 80062d4:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80062d8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080062dc <__d2b>:
 80062dc:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80062e0:	460f      	mov	r7, r1
 80062e2:	b083      	sub	sp, #12
 80062e4:	2101      	movs	r1, #1
 80062e6:	ec55 4b10 	vmov	r4, r5, d0
 80062ea:	4616      	mov	r6, r2
 80062ec:	f7ff fd4e 	bl	8005d8c <_Balloc>
 80062f0:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80062f4:	4681      	mov	r9, r0
 80062f6:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80062fa:	f1b8 0f00 	cmp.w	r8, #0
 80062fe:	d001      	beq.n	8006304 <__d2b+0x28>
 8006300:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006304:	2c00      	cmp	r4, #0
 8006306:	9301      	str	r3, [sp, #4]
 8006308:	d024      	beq.n	8006354 <__d2b+0x78>
 800630a:	a802      	add	r0, sp, #8
 800630c:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006310:	f7ff fdcc 	bl	8005eac <__lo0bits>
 8006314:	2800      	cmp	r0, #0
 8006316:	d136      	bne.n	8006386 <__d2b+0xaa>
 8006318:	e9dd 2300 	ldrd	r2, r3, [sp]
 800631c:	f8c9 2014 	str.w	r2, [r9, #20]
 8006320:	2b00      	cmp	r3, #0
 8006322:	bf0c      	ite	eq
 8006324:	2101      	moveq	r1, #1
 8006326:	2102      	movne	r1, #2
 8006328:	f8c9 3018 	str.w	r3, [r9, #24]
 800632c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006330:	f1b8 0f00 	cmp.w	r8, #0
 8006334:	d11b      	bne.n	800636e <__d2b+0x92>
 8006336:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 800633a:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 800633e:	6038      	str	r0, [r7, #0]
 8006340:	6918      	ldr	r0, [r3, #16]
 8006342:	f7ff fd93 	bl	8005e6c <__hi0bits>
 8006346:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 800634a:	6030      	str	r0, [r6, #0]
 800634c:	4648      	mov	r0, r9
 800634e:	b003      	add	sp, #12
 8006350:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006354:	a801      	add	r0, sp, #4
 8006356:	f7ff fda9 	bl	8005eac <__lo0bits>
 800635a:	9b01      	ldr	r3, [sp, #4]
 800635c:	f8c9 3014 	str.w	r3, [r9, #20]
 8006360:	2101      	movs	r1, #1
 8006362:	3020      	adds	r0, #32
 8006364:	f8c9 1010 	str.w	r1, [r9, #16]
 8006368:	f1b8 0f00 	cmp.w	r8, #0
 800636c:	d0e3      	beq.n	8006336 <__d2b+0x5a>
 800636e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006372:	eb08 0300 	add.w	r3, r8, r0
 8006376:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 800637a:	603b      	str	r3, [r7, #0]
 800637c:	6030      	str	r0, [r6, #0]
 800637e:	4648      	mov	r0, r9
 8006380:	b003      	add	sp, #12
 8006382:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006386:	e9dd 1300 	ldrd	r1, r3, [sp]
 800638a:	f1c0 0220 	rsb	r2, r0, #32
 800638e:	fa03 f202 	lsl.w	r2, r3, r2
 8006392:	430a      	orrs	r2, r1
 8006394:	40c3      	lsrs	r3, r0
 8006396:	9301      	str	r3, [sp, #4]
 8006398:	f8c9 2014 	str.w	r2, [r9, #20]
 800639c:	e7c0      	b.n	8006320 <__d2b+0x44>
 800639e:	bf00      	nop

080063a0 <_realloc_r>:
 80063a0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80063a4:	4692      	mov	sl, r2
 80063a6:	b083      	sub	sp, #12
 80063a8:	2900      	cmp	r1, #0
 80063aa:	f000 80a1 	beq.w	80064f0 <_realloc_r+0x150>
 80063ae:	460d      	mov	r5, r1
 80063b0:	4680      	mov	r8, r0
 80063b2:	f10a 040b 	add.w	r4, sl, #11
 80063b6:	f7ff fcdd 	bl	8005d74 <__malloc_lock>
 80063ba:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80063be:	2c16      	cmp	r4, #22
 80063c0:	f022 0603 	bic.w	r6, r2, #3
 80063c4:	f1a5 0708 	sub.w	r7, r5, #8
 80063c8:	d83e      	bhi.n	8006448 <_realloc_r+0xa8>
 80063ca:	2410      	movs	r4, #16
 80063cc:	4621      	mov	r1, r4
 80063ce:	45a2      	cmp	sl, r4
 80063d0:	d83f      	bhi.n	8006452 <_realloc_r+0xb2>
 80063d2:	428e      	cmp	r6, r1
 80063d4:	eb07 0906 	add.w	r9, r7, r6
 80063d8:	da74      	bge.n	80064c4 <_realloc_r+0x124>
 80063da:	4bc7      	ldr	r3, [pc, #796]	; (80066f8 <_realloc_r+0x358>)
 80063dc:	6898      	ldr	r0, [r3, #8]
 80063de:	4548      	cmp	r0, r9
 80063e0:	f000 80aa 	beq.w	8006538 <_realloc_r+0x198>
 80063e4:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80063e8:	f020 0301 	bic.w	r3, r0, #1
 80063ec:	444b      	add	r3, r9
 80063ee:	685b      	ldr	r3, [r3, #4]
 80063f0:	07db      	lsls	r3, r3, #31
 80063f2:	f140 8083 	bpl.w	80064fc <_realloc_r+0x15c>
 80063f6:	07d2      	lsls	r2, r2, #31
 80063f8:	d534      	bpl.n	8006464 <_realloc_r+0xc4>
 80063fa:	4651      	mov	r1, sl
 80063fc:	4640      	mov	r0, r8
 80063fe:	f7ff f9b1 	bl	8005764 <_malloc_r>
 8006402:	4682      	mov	sl, r0
 8006404:	b1e0      	cbz	r0, 8006440 <_realloc_r+0xa0>
 8006406:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800640a:	f023 0301 	bic.w	r3, r3, #1
 800640e:	443b      	add	r3, r7
 8006410:	f1a0 0208 	sub.w	r2, r0, #8
 8006414:	4293      	cmp	r3, r2
 8006416:	f000 80f9 	beq.w	800660c <_realloc_r+0x26c>
 800641a:	1f32      	subs	r2, r6, #4
 800641c:	2a24      	cmp	r2, #36	; 0x24
 800641e:	f200 8107 	bhi.w	8006630 <_realloc_r+0x290>
 8006422:	2a13      	cmp	r2, #19
 8006424:	6829      	ldr	r1, [r5, #0]
 8006426:	f200 80e6 	bhi.w	80065f6 <_realloc_r+0x256>
 800642a:	4603      	mov	r3, r0
 800642c:	462a      	mov	r2, r5
 800642e:	6019      	str	r1, [r3, #0]
 8006430:	6851      	ldr	r1, [r2, #4]
 8006432:	6059      	str	r1, [r3, #4]
 8006434:	6892      	ldr	r2, [r2, #8]
 8006436:	609a      	str	r2, [r3, #8]
 8006438:	4629      	mov	r1, r5
 800643a:	4640      	mov	r0, r8
 800643c:	f7fe fe68 	bl	8005110 <_free_r>
 8006440:	4640      	mov	r0, r8
 8006442:	f7ff fc9d 	bl	8005d80 <__malloc_unlock>
 8006446:	e04f      	b.n	80064e8 <_realloc_r+0x148>
 8006448:	f024 0407 	bic.w	r4, r4, #7
 800644c:	2c00      	cmp	r4, #0
 800644e:	4621      	mov	r1, r4
 8006450:	dabd      	bge.n	80063ce <_realloc_r+0x2e>
 8006452:	f04f 0a00 	mov.w	sl, #0
 8006456:	230c      	movs	r3, #12
 8006458:	4650      	mov	r0, sl
 800645a:	f8c8 3000 	str.w	r3, [r8]
 800645e:	b003      	add	sp, #12
 8006460:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006464:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006468:	eba7 0b03 	sub.w	fp, r7, r3
 800646c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006470:	f022 0203 	bic.w	r2, r2, #3
 8006474:	18b3      	adds	r3, r6, r2
 8006476:	428b      	cmp	r3, r1
 8006478:	dbbf      	blt.n	80063fa <_realloc_r+0x5a>
 800647a:	46da      	mov	sl, fp
 800647c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006480:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006484:	1f32      	subs	r2, r6, #4
 8006486:	2a24      	cmp	r2, #36	; 0x24
 8006488:	60c1      	str	r1, [r0, #12]
 800648a:	eb0b 0903 	add.w	r9, fp, r3
 800648e:	6088      	str	r0, [r1, #8]
 8006490:	f200 80c6 	bhi.w	8006620 <_realloc_r+0x280>
 8006494:	2a13      	cmp	r2, #19
 8006496:	6829      	ldr	r1, [r5, #0]
 8006498:	f240 80c0 	bls.w	800661c <_realloc_r+0x27c>
 800649c:	f8cb 1008 	str.w	r1, [fp, #8]
 80064a0:	6869      	ldr	r1, [r5, #4]
 80064a2:	f8cb 100c 	str.w	r1, [fp, #12]
 80064a6:	2a1b      	cmp	r2, #27
 80064a8:	68a9      	ldr	r1, [r5, #8]
 80064aa:	f200 80d8 	bhi.w	800665e <_realloc_r+0x2be>
 80064ae:	f10b 0210 	add.w	r2, fp, #16
 80064b2:	3508      	adds	r5, #8
 80064b4:	6011      	str	r1, [r2, #0]
 80064b6:	6869      	ldr	r1, [r5, #4]
 80064b8:	6051      	str	r1, [r2, #4]
 80064ba:	68a9      	ldr	r1, [r5, #8]
 80064bc:	6091      	str	r1, [r2, #8]
 80064be:	461e      	mov	r6, r3
 80064c0:	465f      	mov	r7, fp
 80064c2:	4655      	mov	r5, sl
 80064c4:	687b      	ldr	r3, [r7, #4]
 80064c6:	1b32      	subs	r2, r6, r4
 80064c8:	2a0f      	cmp	r2, #15
 80064ca:	f003 0301 	and.w	r3, r3, #1
 80064ce:	d822      	bhi.n	8006516 <_realloc_r+0x176>
 80064d0:	4333      	orrs	r3, r6
 80064d2:	607b      	str	r3, [r7, #4]
 80064d4:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80064d8:	f043 0301 	orr.w	r3, r3, #1
 80064dc:	f8c9 3004 	str.w	r3, [r9, #4]
 80064e0:	4640      	mov	r0, r8
 80064e2:	f7ff fc4d 	bl	8005d80 <__malloc_unlock>
 80064e6:	46aa      	mov	sl, r5
 80064e8:	4650      	mov	r0, sl
 80064ea:	b003      	add	sp, #12
 80064ec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80064f0:	4611      	mov	r1, r2
 80064f2:	b003      	add	sp, #12
 80064f4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80064f8:	f7ff b934 	b.w	8005764 <_malloc_r>
 80064fc:	f020 0003 	bic.w	r0, r0, #3
 8006500:	1833      	adds	r3, r6, r0
 8006502:	428b      	cmp	r3, r1
 8006504:	db61      	blt.n	80065ca <_realloc_r+0x22a>
 8006506:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800650a:	461e      	mov	r6, r3
 800650c:	60ca      	str	r2, [r1, #12]
 800650e:	eb07 0903 	add.w	r9, r7, r3
 8006512:	6091      	str	r1, [r2, #8]
 8006514:	e7d6      	b.n	80064c4 <_realloc_r+0x124>
 8006516:	1939      	adds	r1, r7, r4
 8006518:	4323      	orrs	r3, r4
 800651a:	f042 0201 	orr.w	r2, r2, #1
 800651e:	607b      	str	r3, [r7, #4]
 8006520:	604a      	str	r2, [r1, #4]
 8006522:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006526:	f043 0301 	orr.w	r3, r3, #1
 800652a:	3108      	adds	r1, #8
 800652c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006530:	4640      	mov	r0, r8
 8006532:	f7fe fded 	bl	8005110 <_free_r>
 8006536:	e7d3      	b.n	80064e0 <_realloc_r+0x140>
 8006538:	6840      	ldr	r0, [r0, #4]
 800653a:	f020 0903 	bic.w	r9, r0, #3
 800653e:	44b1      	add	r9, r6
 8006540:	f104 0010 	add.w	r0, r4, #16
 8006544:	4581      	cmp	r9, r0
 8006546:	da77      	bge.n	8006638 <_realloc_r+0x298>
 8006548:	07d2      	lsls	r2, r2, #31
 800654a:	f53f af56 	bmi.w	80063fa <_realloc_r+0x5a>
 800654e:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006552:	eba7 0b02 	sub.w	fp, r7, r2
 8006556:	f8db 2004 	ldr.w	r2, [fp, #4]
 800655a:	f022 0203 	bic.w	r2, r2, #3
 800655e:	4491      	add	r9, r2
 8006560:	4548      	cmp	r0, r9
 8006562:	dc87      	bgt.n	8006474 <_realloc_r+0xd4>
 8006564:	46da      	mov	sl, fp
 8006566:	f8db 100c 	ldr.w	r1, [fp, #12]
 800656a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800656e:	1f32      	subs	r2, r6, #4
 8006570:	2a24      	cmp	r2, #36	; 0x24
 8006572:	60c1      	str	r1, [r0, #12]
 8006574:	6088      	str	r0, [r1, #8]
 8006576:	f200 80a1 	bhi.w	80066bc <_realloc_r+0x31c>
 800657a:	2a13      	cmp	r2, #19
 800657c:	6829      	ldr	r1, [r5, #0]
 800657e:	f240 809b 	bls.w	80066b8 <_realloc_r+0x318>
 8006582:	f8cb 1008 	str.w	r1, [fp, #8]
 8006586:	6869      	ldr	r1, [r5, #4]
 8006588:	f8cb 100c 	str.w	r1, [fp, #12]
 800658c:	2a1b      	cmp	r2, #27
 800658e:	68a9      	ldr	r1, [r5, #8]
 8006590:	f200 809b 	bhi.w	80066ca <_realloc_r+0x32a>
 8006594:	f10b 0210 	add.w	r2, fp, #16
 8006598:	3508      	adds	r5, #8
 800659a:	6011      	str	r1, [r2, #0]
 800659c:	6869      	ldr	r1, [r5, #4]
 800659e:	6051      	str	r1, [r2, #4]
 80065a0:	68a9      	ldr	r1, [r5, #8]
 80065a2:	6091      	str	r1, [r2, #8]
 80065a4:	eb0b 0104 	add.w	r1, fp, r4
 80065a8:	eba9 0204 	sub.w	r2, r9, r4
 80065ac:	f042 0201 	orr.w	r2, r2, #1
 80065b0:	6099      	str	r1, [r3, #8]
 80065b2:	604a      	str	r2, [r1, #4]
 80065b4:	f8db 3004 	ldr.w	r3, [fp, #4]
 80065b8:	f003 0301 	and.w	r3, r3, #1
 80065bc:	431c      	orrs	r4, r3
 80065be:	4640      	mov	r0, r8
 80065c0:	f8cb 4004 	str.w	r4, [fp, #4]
 80065c4:	f7ff fbdc 	bl	8005d80 <__malloc_unlock>
 80065c8:	e78e      	b.n	80064e8 <_realloc_r+0x148>
 80065ca:	07d3      	lsls	r3, r2, #31
 80065cc:	f53f af15 	bmi.w	80063fa <_realloc_r+0x5a>
 80065d0:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80065d4:	eba7 0b03 	sub.w	fp, r7, r3
 80065d8:	f8db 2004 	ldr.w	r2, [fp, #4]
 80065dc:	f022 0203 	bic.w	r2, r2, #3
 80065e0:	4410      	add	r0, r2
 80065e2:	1983      	adds	r3, r0, r6
 80065e4:	428b      	cmp	r3, r1
 80065e6:	f6ff af45 	blt.w	8006474 <_realloc_r+0xd4>
 80065ea:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80065ee:	46da      	mov	sl, fp
 80065f0:	60ca      	str	r2, [r1, #12]
 80065f2:	6091      	str	r1, [r2, #8]
 80065f4:	e742      	b.n	800647c <_realloc_r+0xdc>
 80065f6:	6001      	str	r1, [r0, #0]
 80065f8:	686b      	ldr	r3, [r5, #4]
 80065fa:	6043      	str	r3, [r0, #4]
 80065fc:	2a1b      	cmp	r2, #27
 80065fe:	d83a      	bhi.n	8006676 <_realloc_r+0x2d6>
 8006600:	f105 0208 	add.w	r2, r5, #8
 8006604:	f100 0308 	add.w	r3, r0, #8
 8006608:	68a9      	ldr	r1, [r5, #8]
 800660a:	e710      	b.n	800642e <_realloc_r+0x8e>
 800660c:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006610:	f023 0303 	bic.w	r3, r3, #3
 8006614:	441e      	add	r6, r3
 8006616:	eb07 0906 	add.w	r9, r7, r6
 800661a:	e753      	b.n	80064c4 <_realloc_r+0x124>
 800661c:	4652      	mov	r2, sl
 800661e:	e749      	b.n	80064b4 <_realloc_r+0x114>
 8006620:	4629      	mov	r1, r5
 8006622:	4650      	mov	r0, sl
 8006624:	461e      	mov	r6, r3
 8006626:	465f      	mov	r7, fp
 8006628:	f7ff fb40 	bl	8005cac <memmove>
 800662c:	4655      	mov	r5, sl
 800662e:	e749      	b.n	80064c4 <_realloc_r+0x124>
 8006630:	4629      	mov	r1, r5
 8006632:	f7ff fb3b 	bl	8005cac <memmove>
 8006636:	e6ff      	b.n	8006438 <_realloc_r+0x98>
 8006638:	4427      	add	r7, r4
 800663a:	eba9 0904 	sub.w	r9, r9, r4
 800663e:	f049 0201 	orr.w	r2, r9, #1
 8006642:	609f      	str	r7, [r3, #8]
 8006644:	607a      	str	r2, [r7, #4]
 8006646:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800664a:	f003 0301 	and.w	r3, r3, #1
 800664e:	431c      	orrs	r4, r3
 8006650:	4640      	mov	r0, r8
 8006652:	f845 4c04 	str.w	r4, [r5, #-4]
 8006656:	f7ff fb93 	bl	8005d80 <__malloc_unlock>
 800665a:	46aa      	mov	sl, r5
 800665c:	e744      	b.n	80064e8 <_realloc_r+0x148>
 800665e:	f8cb 1010 	str.w	r1, [fp, #16]
 8006662:	68e9      	ldr	r1, [r5, #12]
 8006664:	f8cb 1014 	str.w	r1, [fp, #20]
 8006668:	2a24      	cmp	r2, #36	; 0x24
 800666a:	d010      	beq.n	800668e <_realloc_r+0x2ee>
 800666c:	6929      	ldr	r1, [r5, #16]
 800666e:	f10b 0218 	add.w	r2, fp, #24
 8006672:	3510      	adds	r5, #16
 8006674:	e71e      	b.n	80064b4 <_realloc_r+0x114>
 8006676:	68ab      	ldr	r3, [r5, #8]
 8006678:	6083      	str	r3, [r0, #8]
 800667a:	68eb      	ldr	r3, [r5, #12]
 800667c:	60c3      	str	r3, [r0, #12]
 800667e:	2a24      	cmp	r2, #36	; 0x24
 8006680:	d010      	beq.n	80066a4 <_realloc_r+0x304>
 8006682:	f105 0210 	add.w	r2, r5, #16
 8006686:	f100 0310 	add.w	r3, r0, #16
 800668a:	6929      	ldr	r1, [r5, #16]
 800668c:	e6cf      	b.n	800642e <_realloc_r+0x8e>
 800668e:	692a      	ldr	r2, [r5, #16]
 8006690:	f8cb 2018 	str.w	r2, [fp, #24]
 8006694:	696a      	ldr	r2, [r5, #20]
 8006696:	f8cb 201c 	str.w	r2, [fp, #28]
 800669a:	69a9      	ldr	r1, [r5, #24]
 800669c:	f10b 0220 	add.w	r2, fp, #32
 80066a0:	3518      	adds	r5, #24
 80066a2:	e707      	b.n	80064b4 <_realloc_r+0x114>
 80066a4:	692b      	ldr	r3, [r5, #16]
 80066a6:	6103      	str	r3, [r0, #16]
 80066a8:	696b      	ldr	r3, [r5, #20]
 80066aa:	6143      	str	r3, [r0, #20]
 80066ac:	69a9      	ldr	r1, [r5, #24]
 80066ae:	f105 0218 	add.w	r2, r5, #24
 80066b2:	f100 0318 	add.w	r3, r0, #24
 80066b6:	e6ba      	b.n	800642e <_realloc_r+0x8e>
 80066b8:	4652      	mov	r2, sl
 80066ba:	e76e      	b.n	800659a <_realloc_r+0x1fa>
 80066bc:	4629      	mov	r1, r5
 80066be:	4650      	mov	r0, sl
 80066c0:	9301      	str	r3, [sp, #4]
 80066c2:	f7ff faf3 	bl	8005cac <memmove>
 80066c6:	9b01      	ldr	r3, [sp, #4]
 80066c8:	e76c      	b.n	80065a4 <_realloc_r+0x204>
 80066ca:	f8cb 1010 	str.w	r1, [fp, #16]
 80066ce:	68e9      	ldr	r1, [r5, #12]
 80066d0:	f8cb 1014 	str.w	r1, [fp, #20]
 80066d4:	2a24      	cmp	r2, #36	; 0x24
 80066d6:	d004      	beq.n	80066e2 <_realloc_r+0x342>
 80066d8:	6929      	ldr	r1, [r5, #16]
 80066da:	f10b 0218 	add.w	r2, fp, #24
 80066de:	3510      	adds	r5, #16
 80066e0:	e75b      	b.n	800659a <_realloc_r+0x1fa>
 80066e2:	692a      	ldr	r2, [r5, #16]
 80066e4:	f8cb 2018 	str.w	r2, [fp, #24]
 80066e8:	696a      	ldr	r2, [r5, #20]
 80066ea:	f8cb 201c 	str.w	r2, [fp, #28]
 80066ee:	69a9      	ldr	r1, [r5, #24]
 80066f0:	f10b 0220 	add.w	r2, fp, #32
 80066f4:	3518      	adds	r5, #24
 80066f6:	e750      	b.n	800659a <_realloc_r+0x1fa>
 80066f8:	2000044c 	.word	0x2000044c

080066fc <frexp>:
 80066fc:	ec53 2b10 	vmov	r2, r3, d0
 8006700:	b570      	push	{r4, r5, r6, lr}
 8006702:	4e16      	ldr	r6, [pc, #88]	; (800675c <frexp+0x60>)
 8006704:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006708:	2500      	movs	r5, #0
 800670a:	42b1      	cmp	r1, r6
 800670c:	4604      	mov	r4, r0
 800670e:	6005      	str	r5, [r0, #0]
 8006710:	dc21      	bgt.n	8006756 <frexp+0x5a>
 8006712:	ee10 6a10 	vmov	r6, s0
 8006716:	430e      	orrs	r6, r1
 8006718:	d01d      	beq.n	8006756 <frexp+0x5a>
 800671a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800671e:	4618      	mov	r0, r3
 8006720:	da0c      	bge.n	800673c <frexp+0x40>
 8006722:	4619      	mov	r1, r3
 8006724:	2200      	movs	r2, #0
 8006726:	ee10 0a10 	vmov	r0, s0
 800672a:	4b0d      	ldr	r3, [pc, #52]	; (8006760 <frexp+0x64>)
 800672c:	f7fa fa04 	bl	8000b38 <__aeabi_dmul>
 8006730:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006734:	4602      	mov	r2, r0
 8006736:	4608      	mov	r0, r1
 8006738:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 800673c:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006740:	1509      	asrs	r1, r1, #20
 8006742:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006746:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 800674a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 800674e:	4429      	add	r1, r5
 8006750:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006754:	6021      	str	r1, [r4, #0]
 8006756:	ec43 2b10 	vmov	d0, r2, r3
 800675a:	bd70      	pop	{r4, r5, r6, pc}
 800675c:	7fefffff 	.word	0x7fefffff
 8006760:	43500000 	.word	0x43500000

08006764 <_sbrk_r>:
 8006764:	b538      	push	{r3, r4, r5, lr}
 8006766:	4c07      	ldr	r4, [pc, #28]	; (8006784 <_sbrk_r+0x20>)
 8006768:	2300      	movs	r3, #0
 800676a:	4605      	mov	r5, r0
 800676c:	4608      	mov	r0, r1
 800676e:	6023      	str	r3, [r4, #0]
 8006770:	f7fb fc34 	bl	8001fdc <_sbrk>
 8006774:	1c43      	adds	r3, r0, #1
 8006776:	d000      	beq.n	800677a <_sbrk_r+0x16>
 8006778:	bd38      	pop	{r3, r4, r5, pc}
 800677a:	6823      	ldr	r3, [r4, #0]
 800677c:	2b00      	cmp	r3, #0
 800677e:	d0fb      	beq.n	8006778 <_sbrk_r+0x14>
 8006780:	602b      	str	r3, [r5, #0]
 8006782:	bd38      	pop	{r3, r4, r5, pc}
 8006784:	20000b0c 	.word	0x20000b0c

08006788 <__sread>:
 8006788:	b510      	push	{r4, lr}
 800678a:	460c      	mov	r4, r1
 800678c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006790:	f000 fabc 	bl	8006d0c <_read_r>
 8006794:	2800      	cmp	r0, #0
 8006796:	db03      	blt.n	80067a0 <__sread+0x18>
 8006798:	6d23      	ldr	r3, [r4, #80]	; 0x50
 800679a:	4403      	add	r3, r0
 800679c:	6523      	str	r3, [r4, #80]	; 0x50
 800679e:	bd10      	pop	{r4, pc}
 80067a0:	89a3      	ldrh	r3, [r4, #12]
 80067a2:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 80067a6:	81a3      	strh	r3, [r4, #12]
 80067a8:	bd10      	pop	{r4, pc}
 80067aa:	bf00      	nop

080067ac <__swrite>:
 80067ac:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80067b0:	4616      	mov	r6, r2
 80067b2:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 80067b6:	461f      	mov	r7, r3
 80067b8:	05d3      	lsls	r3, r2, #23
 80067ba:	460c      	mov	r4, r1
 80067bc:	4605      	mov	r5, r0
 80067be:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80067c2:	d507      	bpl.n	80067d4 <__swrite+0x28>
 80067c4:	2200      	movs	r2, #0
 80067c6:	2302      	movs	r3, #2
 80067c8:	f000 fa74 	bl	8006cb4 <_lseek_r>
 80067cc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80067d0:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80067d4:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 80067d8:	81a2      	strh	r2, [r4, #12]
 80067da:	463b      	mov	r3, r7
 80067dc:	4632      	mov	r2, r6
 80067de:	4628      	mov	r0, r5
 80067e0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80067e4:	f000 b88c 	b.w	8006900 <_write_r>

080067e8 <__sseek>:
 80067e8:	b510      	push	{r4, lr}
 80067ea:	460c      	mov	r4, r1
 80067ec:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80067f0:	f000 fa60 	bl	8006cb4 <_lseek_r>
 80067f4:	89a3      	ldrh	r3, [r4, #12]
 80067f6:	1c42      	adds	r2, r0, #1
 80067f8:	bf0e      	itee	eq
 80067fa:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80067fe:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006802:	6520      	strne	r0, [r4, #80]	; 0x50
 8006804:	81a3      	strh	r3, [r4, #12]
 8006806:	bd10      	pop	{r4, pc}

08006808 <__sclose>:
 8006808:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800680c:	f000 b922 	b.w	8006a54 <_close_r>

08006810 <strncpy>:
 8006810:	ea40 0301 	orr.w	r3, r0, r1
 8006814:	079b      	lsls	r3, r3, #30
 8006816:	b470      	push	{r4, r5, r6}
 8006818:	d12a      	bne.n	8006870 <strncpy+0x60>
 800681a:	2a03      	cmp	r2, #3
 800681c:	d928      	bls.n	8006870 <strncpy+0x60>
 800681e:	460c      	mov	r4, r1
 8006820:	4603      	mov	r3, r0
 8006822:	4621      	mov	r1, r4
 8006824:	f854 6b04 	ldr.w	r6, [r4], #4
 8006828:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 800682c:	ea25 0506 	bic.w	r5, r5, r6
 8006830:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006834:	d106      	bne.n	8006844 <strncpy+0x34>
 8006836:	3a04      	subs	r2, #4
 8006838:	2a03      	cmp	r2, #3
 800683a:	f843 6b04 	str.w	r6, [r3], #4
 800683e:	4621      	mov	r1, r4
 8006840:	d8ef      	bhi.n	8006822 <strncpy+0x12>
 8006842:	b19a      	cbz	r2, 800686c <strncpy+0x5c>
 8006844:	780c      	ldrb	r4, [r1, #0]
 8006846:	701c      	strb	r4, [r3, #0]
 8006848:	3a01      	subs	r2, #1
 800684a:	3301      	adds	r3, #1
 800684c:	b13c      	cbz	r4, 800685e <strncpy+0x4e>
 800684e:	b16a      	cbz	r2, 800686c <strncpy+0x5c>
 8006850:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006854:	f803 4b01 	strb.w	r4, [r3], #1
 8006858:	3a01      	subs	r2, #1
 800685a:	2c00      	cmp	r4, #0
 800685c:	d1f7      	bne.n	800684e <strncpy+0x3e>
 800685e:	b12a      	cbz	r2, 800686c <strncpy+0x5c>
 8006860:	441a      	add	r2, r3
 8006862:	2100      	movs	r1, #0
 8006864:	f803 1b01 	strb.w	r1, [r3], #1
 8006868:	4293      	cmp	r3, r2
 800686a:	d1fb      	bne.n	8006864 <strncpy+0x54>
 800686c:	bc70      	pop	{r4, r5, r6}
 800686e:	4770      	bx	lr
 8006870:	4603      	mov	r3, r0
 8006872:	e7e6      	b.n	8006842 <strncpy+0x32>

08006874 <__sprint_r.part.0>:
 8006874:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006878:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 800687a:	049c      	lsls	r4, r3, #18
 800687c:	4692      	mov	sl, r2
 800687e:	d52d      	bpl.n	80068dc <__sprint_r.part.0+0x68>
 8006880:	6893      	ldr	r3, [r2, #8]
 8006882:	6812      	ldr	r2, [r2, #0]
 8006884:	b343      	cbz	r3, 80068d8 <__sprint_r.part.0+0x64>
 8006886:	460e      	mov	r6, r1
 8006888:	4607      	mov	r7, r0
 800688a:	f102 0908 	add.w	r9, r2, #8
 800688e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006892:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006896:	d015      	beq.n	80068c4 <__sprint_r.part.0+0x50>
 8006898:	3d04      	subs	r5, #4
 800689a:	2400      	movs	r4, #0
 800689c:	e001      	b.n	80068a2 <__sprint_r.part.0+0x2e>
 800689e:	45a0      	cmp	r8, r4
 80068a0:	d00e      	beq.n	80068c0 <__sprint_r.part.0+0x4c>
 80068a2:	4632      	mov	r2, r6
 80068a4:	f855 1f04 	ldr.w	r1, [r5, #4]!
 80068a8:	4638      	mov	r0, r7
 80068aa:	f000 f99d 	bl	8006be8 <_fputwc_r>
 80068ae:	1c43      	adds	r3, r0, #1
 80068b0:	f104 0401 	add.w	r4, r4, #1
 80068b4:	d1f3      	bne.n	800689e <__sprint_r.part.0+0x2a>
 80068b6:	2300      	movs	r3, #0
 80068b8:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80068bc:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80068c0:	f8da 3008 	ldr.w	r3, [sl, #8]
 80068c4:	f02b 0b03 	bic.w	fp, fp, #3
 80068c8:	eba3 030b 	sub.w	r3, r3, fp
 80068cc:	f8ca 3008 	str.w	r3, [sl, #8]
 80068d0:	f109 0908 	add.w	r9, r9, #8
 80068d4:	2b00      	cmp	r3, #0
 80068d6:	d1da      	bne.n	800688e <__sprint_r.part.0+0x1a>
 80068d8:	2000      	movs	r0, #0
 80068da:	e7ec      	b.n	80068b6 <__sprint_r.part.0+0x42>
 80068dc:	f7fe fd0c 	bl	80052f8 <__sfvwrite_r>
 80068e0:	2300      	movs	r3, #0
 80068e2:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80068e6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80068ea:	bf00      	nop

080068ec <__sprint_r>:
 80068ec:	6893      	ldr	r3, [r2, #8]
 80068ee:	b10b      	cbz	r3, 80068f4 <__sprint_r+0x8>
 80068f0:	f7ff bfc0 	b.w	8006874 <__sprint_r.part.0>
 80068f4:	b410      	push	{r4}
 80068f6:	4618      	mov	r0, r3
 80068f8:	6053      	str	r3, [r2, #4]
 80068fa:	f85d 4b04 	ldr.w	r4, [sp], #4
 80068fe:	4770      	bx	lr

08006900 <_write_r>:
 8006900:	b570      	push	{r4, r5, r6, lr}
 8006902:	460d      	mov	r5, r1
 8006904:	4c08      	ldr	r4, [pc, #32]	; (8006928 <_write_r+0x28>)
 8006906:	4611      	mov	r1, r2
 8006908:	4606      	mov	r6, r0
 800690a:	461a      	mov	r2, r3
 800690c:	4628      	mov	r0, r5
 800690e:	2300      	movs	r3, #0
 8006910:	6023      	str	r3, [r4, #0]
 8006912:	f7fb fb50 	bl	8001fb6 <_write>
 8006916:	1c43      	adds	r3, r0, #1
 8006918:	d000      	beq.n	800691c <_write_r+0x1c>
 800691a:	bd70      	pop	{r4, r5, r6, pc}
 800691c:	6823      	ldr	r3, [r4, #0]
 800691e:	2b00      	cmp	r3, #0
 8006920:	d0fb      	beq.n	800691a <_write_r+0x1a>
 8006922:	6033      	str	r3, [r6, #0]
 8006924:	bd70      	pop	{r4, r5, r6, pc}
 8006926:	bf00      	nop
 8006928:	20000b0c 	.word	0x20000b0c

0800692c <__register_exitproc>:
 800692c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006930:	4d2b      	ldr	r5, [pc, #172]	; (80069e0 <__register_exitproc+0xb4>)
 8006932:	4606      	mov	r6, r0
 8006934:	6828      	ldr	r0, [r5, #0]
 8006936:	4698      	mov	r8, r3
 8006938:	460f      	mov	r7, r1
 800693a:	4691      	mov	r9, r2
 800693c:	f7fe fe96 	bl	800566c <__retarget_lock_acquire_recursive>
 8006940:	4b28      	ldr	r3, [pc, #160]	; (80069e4 <__register_exitproc+0xb8>)
 8006942:	681c      	ldr	r4, [r3, #0]
 8006944:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006948:	2b00      	cmp	r3, #0
 800694a:	d03d      	beq.n	80069c8 <__register_exitproc+0x9c>
 800694c:	685a      	ldr	r2, [r3, #4]
 800694e:	2a1f      	cmp	r2, #31
 8006950:	dc0d      	bgt.n	800696e <__register_exitproc+0x42>
 8006952:	f102 0c01 	add.w	ip, r2, #1
 8006956:	bb16      	cbnz	r6, 800699e <__register_exitproc+0x72>
 8006958:	3202      	adds	r2, #2
 800695a:	f8c3 c004 	str.w	ip, [r3, #4]
 800695e:	6828      	ldr	r0, [r5, #0]
 8006960:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006964:	f7fe fe84 	bl	8005670 <__retarget_lock_release_recursive>
 8006968:	2000      	movs	r0, #0
 800696a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800696e:	4b1e      	ldr	r3, [pc, #120]	; (80069e8 <__register_exitproc+0xbc>)
 8006970:	b37b      	cbz	r3, 80069d2 <__register_exitproc+0xa6>
 8006972:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006976:	f3af 8000 	nop.w
 800697a:	4603      	mov	r3, r0
 800697c:	b348      	cbz	r0, 80069d2 <__register_exitproc+0xa6>
 800697e:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006982:	2100      	movs	r1, #0
 8006984:	e9c0 2100 	strd	r2, r1, [r0]
 8006988:	f04f 0c01 	mov.w	ip, #1
 800698c:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006990:	460a      	mov	r2, r1
 8006992:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006996:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 800699a:	2e00      	cmp	r6, #0
 800699c:	d0dc      	beq.n	8006958 <__register_exitproc+0x2c>
 800699e:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 80069a2:	2401      	movs	r4, #1
 80069a4:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 80069a8:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 80069ac:	4094      	lsls	r4, r2
 80069ae:	4320      	orrs	r0, r4
 80069b0:	2e02      	cmp	r6, #2
 80069b2:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 80069b6:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 80069ba:	d1cd      	bne.n	8006958 <__register_exitproc+0x2c>
 80069bc:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 80069c0:	430c      	orrs	r4, r1
 80069c2:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 80069c6:	e7c7      	b.n	8006958 <__register_exitproc+0x2c>
 80069c8:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 80069cc:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 80069d0:	e7bc      	b.n	800694c <__register_exitproc+0x20>
 80069d2:	6828      	ldr	r0, [r5, #0]
 80069d4:	f7fe fe4c 	bl	8005670 <__retarget_lock_release_recursive>
 80069d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80069dc:	e7c5      	b.n	800696a <__register_exitproc+0x3e>
 80069de:	bf00      	nop
 80069e0:	20000448 	.word	0x20000448
 80069e4:	08006f80 	.word	0x08006f80
 80069e8:	00000000 	.word	0x00000000

080069ec <_calloc_r>:
 80069ec:	b510      	push	{r4, lr}
 80069ee:	fb02 f101 	mul.w	r1, r2, r1
 80069f2:	f7fe feb7 	bl	8005764 <_malloc_r>
 80069f6:	4604      	mov	r4, r0
 80069f8:	b1d8      	cbz	r0, 8006a32 <_calloc_r+0x46>
 80069fa:	f850 2c04 	ldr.w	r2, [r0, #-4]
 80069fe:	f022 0203 	bic.w	r2, r2, #3
 8006a02:	3a04      	subs	r2, #4
 8006a04:	2a24      	cmp	r2, #36	; 0x24
 8006a06:	d81d      	bhi.n	8006a44 <_calloc_r+0x58>
 8006a08:	2a13      	cmp	r2, #19
 8006a0a:	d914      	bls.n	8006a36 <_calloc_r+0x4a>
 8006a0c:	2300      	movs	r3, #0
 8006a0e:	2a1b      	cmp	r2, #27
 8006a10:	e9c0 3300 	strd	r3, r3, [r0]
 8006a14:	d91b      	bls.n	8006a4e <_calloc_r+0x62>
 8006a16:	2a24      	cmp	r2, #36	; 0x24
 8006a18:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006a1c:	bf0a      	itet	eq
 8006a1e:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006a22:	f100 0210 	addne.w	r2, r0, #16
 8006a26:	f100 0218 	addeq.w	r2, r0, #24
 8006a2a:	2300      	movs	r3, #0
 8006a2c:	e9c2 3300 	strd	r3, r3, [r2]
 8006a30:	6093      	str	r3, [r2, #8]
 8006a32:	4620      	mov	r0, r4
 8006a34:	bd10      	pop	{r4, pc}
 8006a36:	4602      	mov	r2, r0
 8006a38:	2300      	movs	r3, #0
 8006a3a:	e9c2 3300 	strd	r3, r3, [r2]
 8006a3e:	6093      	str	r3, [r2, #8]
 8006a40:	4620      	mov	r0, r4
 8006a42:	bd10      	pop	{r4, pc}
 8006a44:	2100      	movs	r1, #0
 8006a46:	f7fb fb6f 	bl	8002128 <memset>
 8006a4a:	4620      	mov	r0, r4
 8006a4c:	bd10      	pop	{r4, pc}
 8006a4e:	f100 0208 	add.w	r2, r0, #8
 8006a52:	e7f1      	b.n	8006a38 <_calloc_r+0x4c>

08006a54 <_close_r>:
 8006a54:	b538      	push	{r3, r4, r5, lr}
 8006a56:	4c07      	ldr	r4, [pc, #28]	; (8006a74 <_close_r+0x20>)
 8006a58:	2300      	movs	r3, #0
 8006a5a:	4605      	mov	r5, r0
 8006a5c:	4608      	mov	r0, r1
 8006a5e:	6023      	str	r3, [r4, #0]
 8006a60:	f7fb fad8 	bl	8002014 <_close>
 8006a64:	1c43      	adds	r3, r0, #1
 8006a66:	d000      	beq.n	8006a6a <_close_r+0x16>
 8006a68:	bd38      	pop	{r3, r4, r5, pc}
 8006a6a:	6823      	ldr	r3, [r4, #0]
 8006a6c:	2b00      	cmp	r3, #0
 8006a6e:	d0fb      	beq.n	8006a68 <_close_r+0x14>
 8006a70:	602b      	str	r3, [r5, #0]
 8006a72:	bd38      	pop	{r3, r4, r5, pc}
 8006a74:	20000b0c 	.word	0x20000b0c

08006a78 <_fclose_r>:
 8006a78:	b570      	push	{r4, r5, r6, lr}
 8006a7a:	2900      	cmp	r1, #0
 8006a7c:	d048      	beq.n	8006b10 <_fclose_r+0x98>
 8006a7e:	4605      	mov	r5, r0
 8006a80:	460c      	mov	r4, r1
 8006a82:	b110      	cbz	r0, 8006a8a <_fclose_r+0x12>
 8006a84:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006a86:	2b00      	cmp	r3, #0
 8006a88:	d048      	beq.n	8006b1c <_fclose_r+0xa4>
 8006a8a:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006a8c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006a90:	07d0      	lsls	r0, r2, #31
 8006a92:	d440      	bmi.n	8006b16 <_fclose_r+0x9e>
 8006a94:	0599      	lsls	r1, r3, #22
 8006a96:	d530      	bpl.n	8006afa <_fclose_r+0x82>
 8006a98:	4621      	mov	r1, r4
 8006a9a:	4628      	mov	r0, r5
 8006a9c:	f7fe f990 	bl	8004dc0 <__sflush_r>
 8006aa0:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006aa2:	4606      	mov	r6, r0
 8006aa4:	b133      	cbz	r3, 8006ab4 <_fclose_r+0x3c>
 8006aa6:	69e1      	ldr	r1, [r4, #28]
 8006aa8:	4628      	mov	r0, r5
 8006aaa:	4798      	blx	r3
 8006aac:	2800      	cmp	r0, #0
 8006aae:	bfb8      	it	lt
 8006ab0:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006ab4:	89a3      	ldrh	r3, [r4, #12]
 8006ab6:	061a      	lsls	r2, r3, #24
 8006ab8:	d43c      	bmi.n	8006b34 <_fclose_r+0xbc>
 8006aba:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006abc:	b141      	cbz	r1, 8006ad0 <_fclose_r+0x58>
 8006abe:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006ac2:	4299      	cmp	r1, r3
 8006ac4:	d002      	beq.n	8006acc <_fclose_r+0x54>
 8006ac6:	4628      	mov	r0, r5
 8006ac8:	f7fe fb22 	bl	8005110 <_free_r>
 8006acc:	2300      	movs	r3, #0
 8006ace:	6323      	str	r3, [r4, #48]	; 0x30
 8006ad0:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006ad2:	b121      	cbz	r1, 8006ade <_fclose_r+0x66>
 8006ad4:	4628      	mov	r0, r5
 8006ad6:	f7fe fb1b 	bl	8005110 <_free_r>
 8006ada:	2300      	movs	r3, #0
 8006adc:	6463      	str	r3, [r4, #68]	; 0x44
 8006ade:	f7fe faa1 	bl	8005024 <__sfp_lock_acquire>
 8006ae2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006ae4:	2200      	movs	r2, #0
 8006ae6:	07db      	lsls	r3, r3, #31
 8006ae8:	81a2      	strh	r2, [r4, #12]
 8006aea:	d51f      	bpl.n	8006b2c <_fclose_r+0xb4>
 8006aec:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006aee:	f7fe fdbb 	bl	8005668 <__retarget_lock_close_recursive>
 8006af2:	f7fe fa9d 	bl	8005030 <__sfp_lock_release>
 8006af6:	4630      	mov	r0, r6
 8006af8:	bd70      	pop	{r4, r5, r6, pc}
 8006afa:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006afc:	f7fe fdb6 	bl	800566c <__retarget_lock_acquire_recursive>
 8006b00:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b04:	2b00      	cmp	r3, #0
 8006b06:	d1c7      	bne.n	8006a98 <_fclose_r+0x20>
 8006b08:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006b0a:	f016 0601 	ands.w	r6, r6, #1
 8006b0e:	d016      	beq.n	8006b3e <_fclose_r+0xc6>
 8006b10:	2600      	movs	r6, #0
 8006b12:	4630      	mov	r0, r6
 8006b14:	bd70      	pop	{r4, r5, r6, pc}
 8006b16:	2b00      	cmp	r3, #0
 8006b18:	d0fa      	beq.n	8006b10 <_fclose_r+0x98>
 8006b1a:	e7bd      	b.n	8006a98 <_fclose_r+0x20>
 8006b1c:	f7fe fa56 	bl	8004fcc <__sinit>
 8006b20:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006b22:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b26:	07d0      	lsls	r0, r2, #31
 8006b28:	d4f5      	bmi.n	8006b16 <_fclose_r+0x9e>
 8006b2a:	e7b3      	b.n	8006a94 <_fclose_r+0x1c>
 8006b2c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b2e:	f7fe fd9f 	bl	8005670 <__retarget_lock_release_recursive>
 8006b32:	e7db      	b.n	8006aec <_fclose_r+0x74>
 8006b34:	6921      	ldr	r1, [r4, #16]
 8006b36:	4628      	mov	r0, r5
 8006b38:	f7fe faea 	bl	8005110 <_free_r>
 8006b3c:	e7bd      	b.n	8006aba <_fclose_r+0x42>
 8006b3e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b40:	f7fe fd96 	bl	8005670 <__retarget_lock_release_recursive>
 8006b44:	4630      	mov	r0, r6
 8006b46:	bd70      	pop	{r4, r5, r6, pc}

08006b48 <__fputwc>:
 8006b48:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006b4c:	b082      	sub	sp, #8
 8006b4e:	4681      	mov	r9, r0
 8006b50:	4688      	mov	r8, r1
 8006b52:	4614      	mov	r4, r2
 8006b54:	f000 f8a0 	bl	8006c98 <__locale_mb_cur_max>
 8006b58:	2801      	cmp	r0, #1
 8006b5a:	d103      	bne.n	8006b64 <__fputwc+0x1c>
 8006b5c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006b60:	2bfe      	cmp	r3, #254	; 0xfe
 8006b62:	d933      	bls.n	8006bcc <__fputwc+0x84>
 8006b64:	4642      	mov	r2, r8
 8006b66:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006b6a:	a901      	add	r1, sp, #4
 8006b6c:	4648      	mov	r0, r9
 8006b6e:	f000 f93b 	bl	8006de8 <_wcrtomb_r>
 8006b72:	1c42      	adds	r2, r0, #1
 8006b74:	4606      	mov	r6, r0
 8006b76:	d02f      	beq.n	8006bd8 <__fputwc+0x90>
 8006b78:	b320      	cbz	r0, 8006bc4 <__fputwc+0x7c>
 8006b7a:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006b7e:	2500      	movs	r5, #0
 8006b80:	f10d 0a04 	add.w	sl, sp, #4
 8006b84:	e009      	b.n	8006b9a <__fputwc+0x52>
 8006b86:	6823      	ldr	r3, [r4, #0]
 8006b88:	1c5a      	adds	r2, r3, #1
 8006b8a:	6022      	str	r2, [r4, #0]
 8006b8c:	f883 c000 	strb.w	ip, [r3]
 8006b90:	3501      	adds	r5, #1
 8006b92:	42b5      	cmp	r5, r6
 8006b94:	d216      	bcs.n	8006bc4 <__fputwc+0x7c>
 8006b96:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006b9a:	68a3      	ldr	r3, [r4, #8]
 8006b9c:	3b01      	subs	r3, #1
 8006b9e:	2b00      	cmp	r3, #0
 8006ba0:	60a3      	str	r3, [r4, #8]
 8006ba2:	daf0      	bge.n	8006b86 <__fputwc+0x3e>
 8006ba4:	69a7      	ldr	r7, [r4, #24]
 8006ba6:	42bb      	cmp	r3, r7
 8006ba8:	4661      	mov	r1, ip
 8006baa:	4622      	mov	r2, r4
 8006bac:	4648      	mov	r0, r9
 8006bae:	db02      	blt.n	8006bb6 <__fputwc+0x6e>
 8006bb0:	f1bc 0f0a 	cmp.w	ip, #10
 8006bb4:	d1e7      	bne.n	8006b86 <__fputwc+0x3e>
 8006bb6:	f000 f8bf 	bl	8006d38 <__swbuf_r>
 8006bba:	1c43      	adds	r3, r0, #1
 8006bbc:	d1e8      	bne.n	8006b90 <__fputwc+0x48>
 8006bbe:	b002      	add	sp, #8
 8006bc0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006bc4:	4640      	mov	r0, r8
 8006bc6:	b002      	add	sp, #8
 8006bc8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006bcc:	fa5f fc88 	uxtb.w	ip, r8
 8006bd0:	4606      	mov	r6, r0
 8006bd2:	f88d c004 	strb.w	ip, [sp, #4]
 8006bd6:	e7d2      	b.n	8006b7e <__fputwc+0x36>
 8006bd8:	89a3      	ldrh	r3, [r4, #12]
 8006bda:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006bde:	81a3      	strh	r3, [r4, #12]
 8006be0:	b002      	add	sp, #8
 8006be2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006be6:	bf00      	nop

08006be8 <_fputwc_r>:
 8006be8:	b530      	push	{r4, r5, lr}
 8006bea:	4605      	mov	r5, r0
 8006bec:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006bee:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006bf2:	07c0      	lsls	r0, r0, #31
 8006bf4:	4614      	mov	r4, r2
 8006bf6:	b083      	sub	sp, #12
 8006bf8:	b29a      	uxth	r2, r3
 8006bfa:	d401      	bmi.n	8006c00 <_fputwc_r+0x18>
 8006bfc:	0590      	lsls	r0, r2, #22
 8006bfe:	d51c      	bpl.n	8006c3a <_fputwc_r+0x52>
 8006c00:	0490      	lsls	r0, r2, #18
 8006c02:	d406      	bmi.n	8006c12 <_fputwc_r+0x2a>
 8006c04:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c06:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006c0a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006c0e:	81a3      	strh	r3, [r4, #12]
 8006c10:	6662      	str	r2, [r4, #100]	; 0x64
 8006c12:	4628      	mov	r0, r5
 8006c14:	4622      	mov	r2, r4
 8006c16:	f7ff ff97 	bl	8006b48 <__fputwc>
 8006c1a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006c1c:	07da      	lsls	r2, r3, #31
 8006c1e:	4605      	mov	r5, r0
 8006c20:	d402      	bmi.n	8006c28 <_fputwc_r+0x40>
 8006c22:	89a3      	ldrh	r3, [r4, #12]
 8006c24:	059b      	lsls	r3, r3, #22
 8006c26:	d502      	bpl.n	8006c2e <_fputwc_r+0x46>
 8006c28:	4628      	mov	r0, r5
 8006c2a:	b003      	add	sp, #12
 8006c2c:	bd30      	pop	{r4, r5, pc}
 8006c2e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c30:	f7fe fd1e 	bl	8005670 <__retarget_lock_release_recursive>
 8006c34:	4628      	mov	r0, r5
 8006c36:	b003      	add	sp, #12
 8006c38:	bd30      	pop	{r4, r5, pc}
 8006c3a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c3c:	9101      	str	r1, [sp, #4]
 8006c3e:	f7fe fd15 	bl	800566c <__retarget_lock_acquire_recursive>
 8006c42:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c46:	9901      	ldr	r1, [sp, #4]
 8006c48:	b29a      	uxth	r2, r3
 8006c4a:	e7d9      	b.n	8006c00 <_fputwc_r+0x18>

08006c4c <_fstat_r>:
 8006c4c:	b538      	push	{r3, r4, r5, lr}
 8006c4e:	460b      	mov	r3, r1
 8006c50:	4c07      	ldr	r4, [pc, #28]	; (8006c70 <_fstat_r+0x24>)
 8006c52:	4605      	mov	r5, r0
 8006c54:	4611      	mov	r1, r2
 8006c56:	4618      	mov	r0, r3
 8006c58:	2300      	movs	r3, #0
 8006c5a:	6023      	str	r3, [r4, #0]
 8006c5c:	f7fb f9dd 	bl	800201a <_fstat>
 8006c60:	1c43      	adds	r3, r0, #1
 8006c62:	d000      	beq.n	8006c66 <_fstat_r+0x1a>
 8006c64:	bd38      	pop	{r3, r4, r5, pc}
 8006c66:	6823      	ldr	r3, [r4, #0]
 8006c68:	2b00      	cmp	r3, #0
 8006c6a:	d0fb      	beq.n	8006c64 <_fstat_r+0x18>
 8006c6c:	602b      	str	r3, [r5, #0]
 8006c6e:	bd38      	pop	{r3, r4, r5, pc}
 8006c70:	20000b0c 	.word	0x20000b0c

08006c74 <_isatty_r>:
 8006c74:	b538      	push	{r3, r4, r5, lr}
 8006c76:	4c07      	ldr	r4, [pc, #28]	; (8006c94 <_isatty_r+0x20>)
 8006c78:	2300      	movs	r3, #0
 8006c7a:	4605      	mov	r5, r0
 8006c7c:	4608      	mov	r0, r1
 8006c7e:	6023      	str	r3, [r4, #0]
 8006c80:	f7fb f9d0 	bl	8002024 <_isatty>
 8006c84:	1c43      	adds	r3, r0, #1
 8006c86:	d000      	beq.n	8006c8a <_isatty_r+0x16>
 8006c88:	bd38      	pop	{r3, r4, r5, pc}
 8006c8a:	6823      	ldr	r3, [r4, #0]
 8006c8c:	2b00      	cmp	r3, #0
 8006c8e:	d0fb      	beq.n	8006c88 <_isatty_r+0x14>
 8006c90:	602b      	str	r3, [r5, #0]
 8006c92:	bd38      	pop	{r3, r4, r5, pc}
 8006c94:	20000b0c 	.word	0x20000b0c

08006c98 <__locale_mb_cur_max>:
 8006c98:	4b04      	ldr	r3, [pc, #16]	; (8006cac <__locale_mb_cur_max+0x14>)
 8006c9a:	4a05      	ldr	r2, [pc, #20]	; (8006cb0 <__locale_mb_cur_max+0x18>)
 8006c9c:	681b      	ldr	r3, [r3, #0]
 8006c9e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006ca0:	2b00      	cmp	r3, #0
 8006ca2:	bf08      	it	eq
 8006ca4:	4613      	moveq	r3, r2
 8006ca6:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006caa:	4770      	bx	lr
 8006cac:	20000018 	.word	0x20000018
 8006cb0:	2000085c 	.word	0x2000085c

08006cb4 <_lseek_r>:
 8006cb4:	b570      	push	{r4, r5, r6, lr}
 8006cb6:	460d      	mov	r5, r1
 8006cb8:	4c08      	ldr	r4, [pc, #32]	; (8006cdc <_lseek_r+0x28>)
 8006cba:	4611      	mov	r1, r2
 8006cbc:	4606      	mov	r6, r0
 8006cbe:	461a      	mov	r2, r3
 8006cc0:	4628      	mov	r0, r5
 8006cc2:	2300      	movs	r3, #0
 8006cc4:	6023      	str	r3, [r4, #0]
 8006cc6:	f7fb f9af 	bl	8002028 <_lseek>
 8006cca:	1c43      	adds	r3, r0, #1
 8006ccc:	d000      	beq.n	8006cd0 <_lseek_r+0x1c>
 8006cce:	bd70      	pop	{r4, r5, r6, pc}
 8006cd0:	6823      	ldr	r3, [r4, #0]
 8006cd2:	2b00      	cmp	r3, #0
 8006cd4:	d0fb      	beq.n	8006cce <_lseek_r+0x1a>
 8006cd6:	6033      	str	r3, [r6, #0]
 8006cd8:	bd70      	pop	{r4, r5, r6, pc}
 8006cda:	bf00      	nop
 8006cdc:	20000b0c 	.word	0x20000b0c

08006ce0 <__ascii_mbtowc>:
 8006ce0:	b082      	sub	sp, #8
 8006ce2:	b149      	cbz	r1, 8006cf8 <__ascii_mbtowc+0x18>
 8006ce4:	b15a      	cbz	r2, 8006cfe <__ascii_mbtowc+0x1e>
 8006ce6:	b16b      	cbz	r3, 8006d04 <__ascii_mbtowc+0x24>
 8006ce8:	7813      	ldrb	r3, [r2, #0]
 8006cea:	600b      	str	r3, [r1, #0]
 8006cec:	7812      	ldrb	r2, [r2, #0]
 8006cee:	1c10      	adds	r0, r2, #0
 8006cf0:	bf18      	it	ne
 8006cf2:	2001      	movne	r0, #1
 8006cf4:	b002      	add	sp, #8
 8006cf6:	4770      	bx	lr
 8006cf8:	a901      	add	r1, sp, #4
 8006cfa:	2a00      	cmp	r2, #0
 8006cfc:	d1f3      	bne.n	8006ce6 <__ascii_mbtowc+0x6>
 8006cfe:	4610      	mov	r0, r2
 8006d00:	b002      	add	sp, #8
 8006d02:	4770      	bx	lr
 8006d04:	f06f 0001 	mvn.w	r0, #1
 8006d08:	e7f4      	b.n	8006cf4 <__ascii_mbtowc+0x14>
 8006d0a:	bf00      	nop

08006d0c <_read_r>:
 8006d0c:	b570      	push	{r4, r5, r6, lr}
 8006d0e:	460d      	mov	r5, r1
 8006d10:	4c08      	ldr	r4, [pc, #32]	; (8006d34 <_read_r+0x28>)
 8006d12:	4611      	mov	r1, r2
 8006d14:	4606      	mov	r6, r0
 8006d16:	461a      	mov	r2, r3
 8006d18:	4628      	mov	r0, r5
 8006d1a:	2300      	movs	r3, #0
 8006d1c:	6023      	str	r3, [r4, #0]
 8006d1e:	f7fb f937 	bl	8001f90 <_read>
 8006d22:	1c43      	adds	r3, r0, #1
 8006d24:	d000      	beq.n	8006d28 <_read_r+0x1c>
 8006d26:	bd70      	pop	{r4, r5, r6, pc}
 8006d28:	6823      	ldr	r3, [r4, #0]
 8006d2a:	2b00      	cmp	r3, #0
 8006d2c:	d0fb      	beq.n	8006d26 <_read_r+0x1a>
 8006d2e:	6033      	str	r3, [r6, #0]
 8006d30:	bd70      	pop	{r4, r5, r6, pc}
 8006d32:	bf00      	nop
 8006d34:	20000b0c 	.word	0x20000b0c

08006d38 <__swbuf_r>:
 8006d38:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006d3a:	460d      	mov	r5, r1
 8006d3c:	4614      	mov	r4, r2
 8006d3e:	4606      	mov	r6, r0
 8006d40:	b110      	cbz	r0, 8006d48 <__swbuf_r+0x10>
 8006d42:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006d44:	2b00      	cmp	r3, #0
 8006d46:	d043      	beq.n	8006dd0 <__swbuf_r+0x98>
 8006d48:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006d4c:	69a3      	ldr	r3, [r4, #24]
 8006d4e:	60a3      	str	r3, [r4, #8]
 8006d50:	b291      	uxth	r1, r2
 8006d52:	0708      	lsls	r0, r1, #28
 8006d54:	d51b      	bpl.n	8006d8e <__swbuf_r+0x56>
 8006d56:	6923      	ldr	r3, [r4, #16]
 8006d58:	b1cb      	cbz	r3, 8006d8e <__swbuf_r+0x56>
 8006d5a:	b2ed      	uxtb	r5, r5
 8006d5c:	0489      	lsls	r1, r1, #18
 8006d5e:	462f      	mov	r7, r5
 8006d60:	d522      	bpl.n	8006da8 <__swbuf_r+0x70>
 8006d62:	6822      	ldr	r2, [r4, #0]
 8006d64:	6961      	ldr	r1, [r4, #20]
 8006d66:	1ad3      	subs	r3, r2, r3
 8006d68:	4299      	cmp	r1, r3
 8006d6a:	dd29      	ble.n	8006dc0 <__swbuf_r+0x88>
 8006d6c:	3301      	adds	r3, #1
 8006d6e:	68a1      	ldr	r1, [r4, #8]
 8006d70:	1c50      	adds	r0, r2, #1
 8006d72:	3901      	subs	r1, #1
 8006d74:	60a1      	str	r1, [r4, #8]
 8006d76:	6020      	str	r0, [r4, #0]
 8006d78:	7015      	strb	r5, [r2, #0]
 8006d7a:	6962      	ldr	r2, [r4, #20]
 8006d7c:	429a      	cmp	r2, r3
 8006d7e:	d02a      	beq.n	8006dd6 <__swbuf_r+0x9e>
 8006d80:	89a3      	ldrh	r3, [r4, #12]
 8006d82:	07db      	lsls	r3, r3, #31
 8006d84:	d501      	bpl.n	8006d8a <__swbuf_r+0x52>
 8006d86:	2d0a      	cmp	r5, #10
 8006d88:	d025      	beq.n	8006dd6 <__swbuf_r+0x9e>
 8006d8a:	4638      	mov	r0, r7
 8006d8c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006d8e:	4621      	mov	r1, r4
 8006d90:	4630      	mov	r0, r6
 8006d92:	f7fc fffd 	bl	8003d90 <__swsetup_r>
 8006d96:	bb20      	cbnz	r0, 8006de2 <__swbuf_r+0xaa>
 8006d98:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006d9c:	6923      	ldr	r3, [r4, #16]
 8006d9e:	b291      	uxth	r1, r2
 8006da0:	b2ed      	uxtb	r5, r5
 8006da2:	0489      	lsls	r1, r1, #18
 8006da4:	462f      	mov	r7, r5
 8006da6:	d4dc      	bmi.n	8006d62 <__swbuf_r+0x2a>
 8006da8:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006daa:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006dae:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006db2:	81a2      	strh	r2, [r4, #12]
 8006db4:	6822      	ldr	r2, [r4, #0]
 8006db6:	6661      	str	r1, [r4, #100]	; 0x64
 8006db8:	6961      	ldr	r1, [r4, #20]
 8006dba:	1ad3      	subs	r3, r2, r3
 8006dbc:	4299      	cmp	r1, r3
 8006dbe:	dcd5      	bgt.n	8006d6c <__swbuf_r+0x34>
 8006dc0:	4621      	mov	r1, r4
 8006dc2:	4630      	mov	r0, r6
 8006dc4:	f7fe f8a6 	bl	8004f14 <_fflush_r>
 8006dc8:	b958      	cbnz	r0, 8006de2 <__swbuf_r+0xaa>
 8006dca:	6822      	ldr	r2, [r4, #0]
 8006dcc:	2301      	movs	r3, #1
 8006dce:	e7ce      	b.n	8006d6e <__swbuf_r+0x36>
 8006dd0:	f7fe f8fc 	bl	8004fcc <__sinit>
 8006dd4:	e7b8      	b.n	8006d48 <__swbuf_r+0x10>
 8006dd6:	4621      	mov	r1, r4
 8006dd8:	4630      	mov	r0, r6
 8006dda:	f7fe f89b 	bl	8004f14 <_fflush_r>
 8006dde:	2800      	cmp	r0, #0
 8006de0:	d0d3      	beq.n	8006d8a <__swbuf_r+0x52>
 8006de2:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006de6:	e7d0      	b.n	8006d8a <__swbuf_r+0x52>

08006de8 <_wcrtomb_r>:
 8006de8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006dea:	4c11      	ldr	r4, [pc, #68]	; (8006e30 <_wcrtomb_r+0x48>)
 8006dec:	6824      	ldr	r4, [r4, #0]
 8006dee:	b085      	sub	sp, #20
 8006df0:	4606      	mov	r6, r0
 8006df2:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006df4:	461f      	mov	r7, r3
 8006df6:	b151      	cbz	r1, 8006e0e <_wcrtomb_r+0x26>
 8006df8:	4d0e      	ldr	r5, [pc, #56]	; (8006e34 <_wcrtomb_r+0x4c>)
 8006dfa:	2c00      	cmp	r4, #0
 8006dfc:	bf08      	it	eq
 8006dfe:	462c      	moveq	r4, r5
 8006e00:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006e04:	47a0      	blx	r4
 8006e06:	1c43      	adds	r3, r0, #1
 8006e08:	d00c      	beq.n	8006e24 <_wcrtomb_r+0x3c>
 8006e0a:	b005      	add	sp, #20
 8006e0c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006e0e:	4a09      	ldr	r2, [pc, #36]	; (8006e34 <_wcrtomb_r+0x4c>)
 8006e10:	2c00      	cmp	r4, #0
 8006e12:	bf08      	it	eq
 8006e14:	4614      	moveq	r4, r2
 8006e16:	460a      	mov	r2, r1
 8006e18:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006e1c:	a901      	add	r1, sp, #4
 8006e1e:	47a0      	blx	r4
 8006e20:	1c43      	adds	r3, r0, #1
 8006e22:	d1f2      	bne.n	8006e0a <_wcrtomb_r+0x22>
 8006e24:	2200      	movs	r2, #0
 8006e26:	238a      	movs	r3, #138	; 0x8a
 8006e28:	603a      	str	r2, [r7, #0]
 8006e2a:	6033      	str	r3, [r6, #0]
 8006e2c:	b005      	add	sp, #20
 8006e2e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006e30:	20000018 	.word	0x20000018
 8006e34:	2000085c 	.word	0x2000085c

08006e38 <__ascii_wctomb>:
 8006e38:	b121      	cbz	r1, 8006e44 <__ascii_wctomb+0xc>
 8006e3a:	2aff      	cmp	r2, #255	; 0xff
 8006e3c:	d804      	bhi.n	8006e48 <__ascii_wctomb+0x10>
 8006e3e:	700a      	strb	r2, [r1, #0]
 8006e40:	2001      	movs	r0, #1
 8006e42:	4770      	bx	lr
 8006e44:	4608      	mov	r0, r1
 8006e46:	4770      	bx	lr
 8006e48:	238a      	movs	r3, #138	; 0x8a
 8006e4a:	6003      	str	r3, [r0, #0]
 8006e4c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006e50:	4770      	bx	lr
 8006e52:	bf00      	nop

08006e54 <_init>:
 8006e54:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006e56:	bf00      	nop
 8006e58:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006e5a:	bc08      	pop	{r3}
 8006e5c:	469e      	mov	lr, r3
 8006e5e:	4770      	bx	lr

08006e60 <_fini>:
 8006e60:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006e62:	bf00      	nop
 8006e64:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006e66:	bc08      	pop	{r3}
 8006e68:	469e      	mov	lr, r3
 8006e6a:	4770      	bx	lr
 8006e6c:	0000      	movs	r0, r0
	...