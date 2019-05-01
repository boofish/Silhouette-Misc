
fac.elf:     file format elf32-littlearm


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
 80001e0:	08006e94 	.word	0x08006e94

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
 80001fc:	08006e94 	.word	0x08006e94

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
 80013e8:	f646 62c8 	movw	r2, #28360	; 0x6ec8
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
 8001462:	f646 62c0 	movw	r2, #28352	; 0x6ec0
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
 800148c:	f646 62c0 	movw	r2, #28352	; 0x6ec0
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
 80019d4:	f646 63f8 	movw	r3, #28408	; 0x6ef8
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
 80019fc:	f646 7308 	movw	r3, #28424	; 0x6f08
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
 8001eb8:	b082      	sub	sp, #8
 8001eba:	2000      	movs	r0, #0
 8001ebc:	9001      	str	r0, [sp, #4]
 8001ebe:	200a      	movs	r0, #10
 8001ec0:	9000      	str	r0, [sp, #0]
 8001ec2:	9800      	ldr	r0, [sp, #0]
 8001ec4:	2800      	cmp	r0, #0
 8001ec6:	db0e      	blt.n	8001ee6 <benchmark+0x2e>
 8001ec8:	2000      	movs	r0, #0
 8001eca:	2101      	movs	r1, #1
 8001ecc:	b118      	cbz	r0, 8001ed6 <benchmark+0x1e>
 8001ece:	4602      	mov	r2, r0
 8001ed0:	4351      	muls	r1, r2
 8001ed2:	3a01      	subs	r2, #1
 8001ed4:	d1fc      	bne.n	8001ed0 <benchmark+0x18>
 8001ed6:	9a01      	ldr	r2, [sp, #4]
 8001ed8:	4411      	add	r1, r2
 8001eda:	9101      	str	r1, [sp, #4]
 8001edc:	1c41      	adds	r1, r0, #1
 8001ede:	9a00      	ldr	r2, [sp, #0]
 8001ee0:	4290      	cmp	r0, r2
 8001ee2:	4608      	mov	r0, r1
 8001ee4:	dbf1      	blt.n	8001eca <benchmark+0x12>
 8001ee6:	9801      	ldr	r0, [sp, #4]
 8001ee8:	b002      	add	sp, #8
 8001eea:	4770      	bx	lr

08001eec <verify_benchmark>:
 8001eec:	f649 521a 	movw	r2, #40218	; 0x9d1a
 8001ef0:	2100      	movs	r1, #0
 8001ef2:	f2c0 023d 	movt	r2, #61	; 0x3d
 8001ef6:	4290      	cmp	r0, r2
 8001ef8:	bf08      	it	eq
 8001efa:	2101      	moveq	r1, #1
 8001efc:	4608      	mov	r0, r1
 8001efe:	4770      	bx	lr

08001f00 <__io_putchar>:
 8001f00:	b580      	push	{r7, lr}
 8001f02:	466f      	mov	r7, sp
 8001f04:	b082      	sub	sp, #8
 8001f06:	9001      	str	r0, [sp, #4]
 8001f08:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8001f0c:	a901      	add	r1, sp, #4
 8001f0e:	2201      	movs	r2, #1
 8001f10:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001f14:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f18:	f7ff fedf 	bl	8001cda <HAL_UART_Transmit>
 8001f1c:	9801      	ldr	r0, [sp, #4]
 8001f1e:	b002      	add	sp, #8
 8001f20:	bd80      	pop	{r7, pc}

08001f22 <main>:
 8001f22:	b5b0      	push	{r4, r5, r7, lr}
 8001f24:	af02      	add	r7, sp, #8
 8001f26:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8001f2a:	f643 0000 	movw	r0, #14336	; 0x3800
 8001f2e:	220c      	movs	r2, #12
 8001f30:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001f34:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001f38:	6008      	str	r0, [r1, #0]
 8001f3a:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8001f3e:	6048      	str	r0, [r1, #4]
 8001f40:	2000      	movs	r0, #0
 8001f42:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8001f46:	6108      	str	r0, [r1, #16]
 8001f48:	6248      	str	r0, [r1, #36]	; 0x24
 8001f4a:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8001f4e:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8001f52:	2000      	movs	r0, #0
 8001f54:	f7ff ff56 	bl	8001e04 <BSP_COM_Init>
 8001f58:	f7ff ffad 	bl	8001eb6 <initialise_benchmark>
 8001f5c:	f646 7018 	movw	r0, #28440	; 0x6f18
 8001f60:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f64:	f000 f948 	bl	80021f8 <printf>
 8001f68:	f646 70be 	movw	r0, #28606	; 0x6fbe
 8001f6c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f70:	f000 f9a4 	bl	80022bc <puts>
 8001f74:	f7ff f8b8 	bl	80010e8 <HAL_Init>
 8001f78:	f7ff f8ce 	bl	8001118 <HAL_GetTick>
 8001f7c:	4604      	mov	r4, r0
 8001f7e:	f7ff ff9b 	bl	8001eb8 <benchmark>
 8001f82:	4605      	mov	r5, r0
 8001f84:	f7ff f8c8 	bl	8001118 <HAL_GetTick>
 8001f88:	1b04      	subs	r4, r0, r4
 8001f8a:	4628      	mov	r0, r5
 8001f8c:	f7ff ffae 	bl	8001eec <verify_benchmark>
 8001f90:	1c41      	adds	r1, r0, #1
 8001f92:	d006      	beq.n	8001fa2 <main+0x80>
 8001f94:	2801      	cmp	r0, #1
 8001f96:	d109      	bne.n	8001fac <main+0x8a>
 8001f98:	f646 702a 	movw	r0, #28458	; 0x6f2a
 8001f9c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fa0:	e008      	b.n	8001fb4 <main+0x92>
 8001fa2:	f646 704e 	movw	r0, #28494	; 0x6f4e
 8001fa6:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001faa:	e003      	b.n	8001fb4 <main+0x92>
 8001fac:	f646 7083 	movw	r0, #28547	; 0x6f83
 8001fb0:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fb4:	4621      	mov	r1, r4
 8001fb6:	f000 f91f 	bl	80021f8 <printf>
 8001fba:	2000      	movs	r0, #0
 8001fbc:	bdb0      	pop	{r4, r5, r7, pc}

08001fbe <SysTick_Handler>:
 8001fbe:	b580      	push	{r7, lr}
 8001fc0:	466f      	mov	r7, sp
 8001fc2:	f7ff f8a1 	bl	8001108 <HAL_IncTick>
 8001fc6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001fca:	f7ff b8fb 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

08001fce <_read>:
 8001fce:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001fd0:	af03      	add	r7, sp, #12
 8001fd2:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001fd6:	4614      	mov	r4, r2
 8001fd8:	460d      	mov	r5, r1
 8001fda:	2c01      	cmp	r4, #1
 8001fdc:	db06      	blt.n	8001fec <_read+0x1e>
 8001fde:	4626      	mov	r6, r4
 8001fe0:	f3af 8000 	nop.w
 8001fe4:	f805 0b01 	strb.w	r0, [r5], #1
 8001fe8:	3e01      	subs	r6, #1
 8001fea:	d1f9      	bne.n	8001fe0 <_read+0x12>
 8001fec:	4620      	mov	r0, r4
 8001fee:	f85d bb04 	ldr.w	fp, [sp], #4
 8001ff2:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001ff4 <_write>:
 8001ff4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001ff6:	af03      	add	r7, sp, #12
 8001ff8:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001ffc:	4614      	mov	r4, r2
 8001ffe:	460d      	mov	r5, r1
 8002000:	2c01      	cmp	r4, #1
 8002002:	db06      	blt.n	8002012 <_write+0x1e>
 8002004:	4626      	mov	r6, r4
 8002006:	f815 0b01 	ldrb.w	r0, [r5], #1
 800200a:	f7ff ff79 	bl	8001f00 <__io_putchar>
 800200e:	3e01      	subs	r6, #1
 8002010:	d1f9      	bne.n	8002006 <_write+0x12>
 8002012:	4620      	mov	r0, r4
 8002014:	f85d bb04 	ldr.w	fp, [sp], #4
 8002018:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800201a <_sbrk>:
 800201a:	f640 2268 	movw	r2, #2664	; 0xa68
 800201e:	4601      	mov	r1, r0
 8002020:	466b      	mov	r3, sp
 8002022:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002026:	6810      	ldr	r0, [r2, #0]
 8002028:	2800      	cmp	r0, #0
 800202a:	bf02      	ittt	eq
 800202c:	f640 3010 	movweq	r0, #2832	; 0xb10
 8002030:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002034:	6010      	streq	r0, [r2, #0]
 8002036:	4401      	add	r1, r0
 8002038:	4299      	cmp	r1, r3
 800203a:	bf9c      	itt	ls
 800203c:	6011      	strls	r1, [r2, #0]
 800203e:	4770      	bxls	lr
 8002040:	b580      	push	{r7, lr}
 8002042:	466f      	mov	r7, sp
 8002044:	f000 f864 	bl	8002110 <__errno>
 8002048:	210c      	movs	r1, #12
 800204a:	6001      	str	r1, [r0, #0]
 800204c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002050:	bd80      	pop	{r7, pc}

08002052 <_close>:
 8002052:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002056:	4770      	bx	lr

08002058 <_fstat>:
 8002058:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 800205c:	6048      	str	r0, [r1, #4]
 800205e:	2000      	movs	r0, #0
 8002060:	4770      	bx	lr

08002062 <_isatty>:
 8002062:	2001      	movs	r0, #1
 8002064:	4770      	bx	lr

08002066 <_lseek>:
 8002066:	2000      	movs	r0, #0
 8002068:	4770      	bx	lr

0800206a <SystemInit>:
 800206a:	f64e 5088 	movw	r0, #60808	; 0xed88
 800206e:	f04f 0c00 	mov.w	ip, #0
 8002072:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002076:	6801      	ldr	r1, [r0, #0]
 8002078:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 800207c:	6001      	str	r1, [r0, #0]
 800207e:	f241 0100 	movw	r1, #4096	; 0x1000
 8002082:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002086:	680a      	ldr	r2, [r1, #0]
 8002088:	f042 0201 	orr.w	r2, r2, #1
 800208c:	600a      	str	r2, [r1, #0]
 800208e:	f8c1 c008 	str.w	ip, [r1, #8]
 8002092:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002096:	680b      	ldr	r3, [r1, #0]
 8002098:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 800209c:	401a      	ands	r2, r3
 800209e:	600a      	str	r2, [r1, #0]
 80020a0:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80020a4:	60ca      	str	r2, [r1, #12]
 80020a6:	680a      	ldr	r2, [r1, #0]
 80020a8:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80020ac:	600a      	str	r2, [r1, #0]
 80020ae:	f8c1 c018 	str.w	ip, [r1, #24]
 80020b2:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80020b6:	f840 1c80 	str.w	r1, [r0, #-128]
 80020ba:	4770      	bx	lr

080020bc <Reset_Handler>:
 80020bc:	f8df d034 	ldr.w	sp, [pc, #52]	; 80020f4 <LoopForever+0x2>
 80020c0:	2100      	movs	r1, #0
 80020c2:	e003      	b.n	80020cc <LoopCopyDataInit>

080020c4 <CopyDataInit>:
 80020c4:	4b0c      	ldr	r3, [pc, #48]	; (80020f8 <LoopForever+0x6>)
 80020c6:	585b      	ldr	r3, [r3, r1]
 80020c8:	5043      	str	r3, [r0, r1]
 80020ca:	3104      	adds	r1, #4

080020cc <LoopCopyDataInit>:
 80020cc:	480b      	ldr	r0, [pc, #44]	; (80020fc <LoopForever+0xa>)
 80020ce:	4b0c      	ldr	r3, [pc, #48]	; (8002100 <LoopForever+0xe>)
 80020d0:	1842      	adds	r2, r0, r1
 80020d2:	429a      	cmp	r2, r3
 80020d4:	d3f6      	bcc.n	80020c4 <CopyDataInit>
 80020d6:	4a0b      	ldr	r2, [pc, #44]	; (8002104 <LoopForever+0x12>)
 80020d8:	e002      	b.n	80020e0 <LoopFillZerobss>

080020da <FillZerobss>:
 80020da:	2300      	movs	r3, #0
 80020dc:	f842 3b04 	str.w	r3, [r2], #4

080020e0 <LoopFillZerobss>:
 80020e0:	4b09      	ldr	r3, [pc, #36]	; (8002108 <LoopForever+0x16>)
 80020e2:	429a      	cmp	r2, r3
 80020e4:	d3f9      	bcc.n	80020da <FillZerobss>
 80020e6:	f7ff ffc0 	bl	800206a <SystemInit>
 80020ea:	f000 f817 	bl	800211c <__libc_init_array>
 80020ee:	f7ff ff18 	bl	8001f22 <main>

080020f2 <LoopForever>:
 80020f2:	e7fe      	b.n	80020f2 <LoopForever>
 80020f4:	20018000 	.word	0x20018000
 80020f8:	08007268 	.word	0x08007268
 80020fc:	20000000 	.word	0x20000000
 8002100:	200009c8 	.word	0x200009c8
 8002104:	200009c8 	.word	0x200009c8
 8002108:	20000b10 	.word	0x20000b10

0800210c <ADC1_2_IRQHandler>:
 800210c:	e7fe      	b.n	800210c <ADC1_2_IRQHandler>
	...

08002110 <__errno>:
 8002110:	4b01      	ldr	r3, [pc, #4]	; (8002118 <__errno+0x8>)
 8002112:	6818      	ldr	r0, [r3, #0]
 8002114:	4770      	bx	lr
 8002116:	bf00      	nop
 8002118:	20000018 	.word	0x20000018

0800211c <__libc_init_array>:
 800211c:	b570      	push	{r4, r5, r6, lr}
 800211e:	4e0d      	ldr	r6, [pc, #52]	; (8002154 <__libc_init_array+0x38>)
 8002120:	4d0d      	ldr	r5, [pc, #52]	; (8002158 <__libc_init_array+0x3c>)
 8002122:	1b76      	subs	r6, r6, r5
 8002124:	10b6      	asrs	r6, r6, #2
 8002126:	d006      	beq.n	8002136 <__libc_init_array+0x1a>
 8002128:	2400      	movs	r4, #0
 800212a:	3401      	adds	r4, #1
 800212c:	f855 3b04 	ldr.w	r3, [r5], #4
 8002130:	4798      	blx	r3
 8002132:	42a6      	cmp	r6, r4
 8002134:	d1f9      	bne.n	800212a <__libc_init_array+0xe>
 8002136:	4e09      	ldr	r6, [pc, #36]	; (800215c <__libc_init_array+0x40>)
 8002138:	4d09      	ldr	r5, [pc, #36]	; (8002160 <__libc_init_array+0x44>)
 800213a:	1b76      	subs	r6, r6, r5
 800213c:	f004 feaa 	bl	8006e94 <_init>
 8002140:	10b6      	asrs	r6, r6, #2
 8002142:	d006      	beq.n	8002152 <__libc_init_array+0x36>
 8002144:	2400      	movs	r4, #0
 8002146:	3401      	adds	r4, #1
 8002148:	f855 3b04 	ldr.w	r3, [r5], #4
 800214c:	4798      	blx	r3
 800214e:	42a6      	cmp	r6, r4
 8002150:	d1f9      	bne.n	8002146 <__libc_init_array+0x2a>
 8002152:	bd70      	pop	{r4, r5, r6, pc}
 8002154:	08007258 	.word	0x08007258
 8002158:	08007258 	.word	0x08007258
 800215c:	08007260 	.word	0x08007260
 8002160:	08007258 	.word	0x08007258

08002164 <memset>:
 8002164:	b4f0      	push	{r4, r5, r6, r7}
 8002166:	0786      	lsls	r6, r0, #30
 8002168:	d043      	beq.n	80021f2 <memset+0x8e>
 800216a:	1e54      	subs	r4, r2, #1
 800216c:	2a00      	cmp	r2, #0
 800216e:	d03e      	beq.n	80021ee <memset+0x8a>
 8002170:	b2ca      	uxtb	r2, r1
 8002172:	4603      	mov	r3, r0
 8002174:	e002      	b.n	800217c <memset+0x18>
 8002176:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 800217a:	d338      	bcc.n	80021ee <memset+0x8a>
 800217c:	f803 2b01 	strb.w	r2, [r3], #1
 8002180:	079d      	lsls	r5, r3, #30
 8002182:	d1f8      	bne.n	8002176 <memset+0x12>
 8002184:	2c03      	cmp	r4, #3
 8002186:	d92b      	bls.n	80021e0 <memset+0x7c>
 8002188:	b2cd      	uxtb	r5, r1
 800218a:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800218e:	2c0f      	cmp	r4, #15
 8002190:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002194:	d916      	bls.n	80021c4 <memset+0x60>
 8002196:	f1a4 0710 	sub.w	r7, r4, #16
 800219a:	093f      	lsrs	r7, r7, #4
 800219c:	f103 0620 	add.w	r6, r3, #32
 80021a0:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80021a4:	f103 0210 	add.w	r2, r3, #16
 80021a8:	e942 5504 	strd	r5, r5, [r2, #-16]
 80021ac:	e942 5502 	strd	r5, r5, [r2, #-8]
 80021b0:	3210      	adds	r2, #16
 80021b2:	42b2      	cmp	r2, r6
 80021b4:	d1f8      	bne.n	80021a8 <memset+0x44>
 80021b6:	f004 040f 	and.w	r4, r4, #15
 80021ba:	3701      	adds	r7, #1
 80021bc:	2c03      	cmp	r4, #3
 80021be:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80021c2:	d90d      	bls.n	80021e0 <memset+0x7c>
 80021c4:	461e      	mov	r6, r3
 80021c6:	4622      	mov	r2, r4
 80021c8:	3a04      	subs	r2, #4
 80021ca:	2a03      	cmp	r2, #3
 80021cc:	f846 5b04 	str.w	r5, [r6], #4
 80021d0:	d8fa      	bhi.n	80021c8 <memset+0x64>
 80021d2:	1f22      	subs	r2, r4, #4
 80021d4:	f022 0203 	bic.w	r2, r2, #3
 80021d8:	3204      	adds	r2, #4
 80021da:	4413      	add	r3, r2
 80021dc:	f004 0403 	and.w	r4, r4, #3
 80021e0:	b12c      	cbz	r4, 80021ee <memset+0x8a>
 80021e2:	b2c9      	uxtb	r1, r1
 80021e4:	441c      	add	r4, r3
 80021e6:	f803 1b01 	strb.w	r1, [r3], #1
 80021ea:	429c      	cmp	r4, r3
 80021ec:	d1fb      	bne.n	80021e6 <memset+0x82>
 80021ee:	bcf0      	pop	{r4, r5, r6, r7}
 80021f0:	4770      	bx	lr
 80021f2:	4614      	mov	r4, r2
 80021f4:	4603      	mov	r3, r0
 80021f6:	e7c5      	b.n	8002184 <memset+0x20>

080021f8 <printf>:
 80021f8:	b40f      	push	{r0, r1, r2, r3}
 80021fa:	b500      	push	{lr}
 80021fc:	4907      	ldr	r1, [pc, #28]	; (800221c <printf+0x24>)
 80021fe:	b083      	sub	sp, #12
 8002200:	ab04      	add	r3, sp, #16
 8002202:	6808      	ldr	r0, [r1, #0]
 8002204:	f853 2b04 	ldr.w	r2, [r3], #4
 8002208:	6881      	ldr	r1, [r0, #8]
 800220a:	9301      	str	r3, [sp, #4]
 800220c:	f000 f860 	bl	80022d0 <_vfprintf_r>
 8002210:	b003      	add	sp, #12
 8002212:	f85d eb04 	ldr.w	lr, [sp], #4
 8002216:	b004      	add	sp, #16
 8002218:	4770      	bx	lr
 800221a:	bf00      	nop
 800221c:	20000018 	.word	0x20000018

08002220 <_puts_r>:
 8002220:	b570      	push	{r4, r5, r6, lr}
 8002222:	4605      	mov	r5, r0
 8002224:	b088      	sub	sp, #32
 8002226:	4608      	mov	r0, r1
 8002228:	460c      	mov	r4, r1
 800222a:	f7fe fa09 	bl	8000640 <strlen>
 800222e:	4a22      	ldr	r2, [pc, #136]	; (80022b8 <_puts_r+0x98>)
 8002230:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002232:	9404      	str	r4, [sp, #16]
 8002234:	2601      	movs	r6, #1
 8002236:	1c44      	adds	r4, r0, #1
 8002238:	a904      	add	r1, sp, #16
 800223a:	9206      	str	r2, [sp, #24]
 800223c:	2202      	movs	r2, #2
 800223e:	9403      	str	r4, [sp, #12]
 8002240:	9005      	str	r0, [sp, #20]
 8002242:	68ac      	ldr	r4, [r5, #8]
 8002244:	9607      	str	r6, [sp, #28]
 8002246:	e9cd 1201 	strd	r1, r2, [sp, #4]
 800224a:	b31b      	cbz	r3, 8002294 <_puts_r+0x74>
 800224c:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800224e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002252:	07ce      	lsls	r6, r1, #31
 8002254:	b29a      	uxth	r2, r3
 8002256:	d401      	bmi.n	800225c <_puts_r+0x3c>
 8002258:	0590      	lsls	r0, r2, #22
 800225a:	d525      	bpl.n	80022a8 <_puts_r+0x88>
 800225c:	0491      	lsls	r1, r2, #18
 800225e:	d406      	bmi.n	800226e <_puts_r+0x4e>
 8002260:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8002262:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002266:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 800226a:	81a3      	strh	r3, [r4, #12]
 800226c:	6662      	str	r2, [r4, #100]	; 0x64
 800226e:	4628      	mov	r0, r5
 8002270:	aa01      	add	r2, sp, #4
 8002272:	4621      	mov	r1, r4
 8002274:	f003 f860 	bl	8005338 <__sfvwrite_r>
 8002278:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800227a:	2800      	cmp	r0, #0
 800227c:	bf0c      	ite	eq
 800227e:	250a      	moveq	r5, #10
 8002280:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002284:	07da      	lsls	r2, r3, #31
 8002286:	d402      	bmi.n	800228e <_puts_r+0x6e>
 8002288:	89a3      	ldrh	r3, [r4, #12]
 800228a:	059b      	lsls	r3, r3, #22
 800228c:	d506      	bpl.n	800229c <_puts_r+0x7c>
 800228e:	4628      	mov	r0, r5
 8002290:	b008      	add	sp, #32
 8002292:	bd70      	pop	{r4, r5, r6, pc}
 8002294:	4628      	mov	r0, r5
 8002296:	f002 feb9 	bl	800500c <__sinit>
 800229a:	e7d7      	b.n	800224c <_puts_r+0x2c>
 800229c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800229e:	f003 fa07 	bl	80056b0 <__retarget_lock_release_recursive>
 80022a2:	4628      	mov	r0, r5
 80022a4:	b008      	add	sp, #32
 80022a6:	bd70      	pop	{r4, r5, r6, pc}
 80022a8:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80022aa:	f003 f9ff 	bl	80056ac <__retarget_lock_acquire_recursive>
 80022ae:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80022b2:	b29a      	uxth	r2, r3
 80022b4:	e7d2      	b.n	800225c <_puts_r+0x3c>
 80022b6:	bf00      	nop
 80022b8:	08006fc4 	.word	0x08006fc4

080022bc <puts>:
 80022bc:	4b02      	ldr	r3, [pc, #8]	; (80022c8 <puts+0xc>)
 80022be:	4601      	mov	r1, r0
 80022c0:	6818      	ldr	r0, [r3, #0]
 80022c2:	f7ff bfad 	b.w	8002220 <_puts_r>
 80022c6:	bf00      	nop
 80022c8:	20000018 	.word	0x20000018
 80022cc:	00000000 	.word	0x00000000

080022d0 <_vfprintf_r>:
 80022d0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80022d4:	b0d7      	sub	sp, #348	; 0x15c
 80022d6:	461c      	mov	r4, r3
 80022d8:	4689      	mov	r9, r1
 80022da:	4617      	mov	r7, r2
 80022dc:	4605      	mov	r5, r0
 80022de:	9003      	str	r0, [sp, #12]
 80022e0:	f003 f9d2 	bl	8005688 <_localeconv_r>
 80022e4:	6803      	ldr	r3, [r0, #0]
 80022e6:	9316      	str	r3, [sp, #88]	; 0x58
 80022e8:	4618      	mov	r0, r3
 80022ea:	f7fe f9a9 	bl	8000640 <strlen>
 80022ee:	9408      	str	r4, [sp, #32]
 80022f0:	9015      	str	r0, [sp, #84]	; 0x54
 80022f2:	b11d      	cbz	r5, 80022fc <_vfprintf_r+0x2c>
 80022f4:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80022f6:	2b00      	cmp	r3, #0
 80022f8:	f000 8107 	beq.w	800250a <_vfprintf_r+0x23a>
 80022fc:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002300:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002304:	07c8      	lsls	r0, r1, #31
 8002306:	b293      	uxth	r3, r2
 8002308:	d402      	bmi.n	8002310 <_vfprintf_r+0x40>
 800230a:	0599      	lsls	r1, r3, #22
 800230c:	f140 811f 	bpl.w	800254e <_vfprintf_r+0x27e>
 8002310:	049e      	lsls	r6, r3, #18
 8002312:	d40a      	bmi.n	800232a <_vfprintf_r+0x5a>
 8002314:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002318:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 800231c:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002320:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002324:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002328:	b29b      	uxth	r3, r3
 800232a:	071d      	lsls	r5, r3, #28
 800232c:	f140 80b2 	bpl.w	8002494 <_vfprintf_r+0x1c4>
 8002330:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002334:	2a00      	cmp	r2, #0
 8002336:	f000 80ad 	beq.w	8002494 <_vfprintf_r+0x1c4>
 800233a:	f003 021a 	and.w	r2, r3, #26
 800233e:	2a0a      	cmp	r2, #10
 8002340:	f000 80c9 	beq.w	80024d6 <_vfprintf_r+0x206>
 8002344:	2300      	movs	r3, #0
 8002346:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002560 <_vfprintf_r+0x290>
 800234a:	9310      	str	r3, [sp, #64]	; 0x40
 800234c:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002350:	9317      	str	r3, [sp, #92]	; 0x5c
 8002352:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002356:	931b      	str	r3, [sp, #108]	; 0x6c
 8002358:	9318      	str	r3, [sp, #96]	; 0x60
 800235a:	9305      	str	r3, [sp, #20]
 800235c:	ab2d      	add	r3, sp, #180	; 0xb4
 800235e:	932a      	str	r3, [sp, #168]	; 0xa8
 8002360:	469b      	mov	fp, r3
 8002362:	783b      	ldrb	r3, [r7, #0]
 8002364:	f8cd 901c 	str.w	r9, [sp, #28]
 8002368:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800236c:	2b00      	cmp	r3, #0
 800236e:	f000 8259 	beq.w	8002824 <_vfprintf_r+0x554>
 8002372:	2b25      	cmp	r3, #37	; 0x25
 8002374:	463c      	mov	r4, r7
 8002376:	d102      	bne.n	800237e <_vfprintf_r+0xae>
 8002378:	e01d      	b.n	80023b6 <_vfprintf_r+0xe6>
 800237a:	2b25      	cmp	r3, #37	; 0x25
 800237c:	d003      	beq.n	8002386 <_vfprintf_r+0xb6>
 800237e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002382:	2b00      	cmp	r3, #0
 8002384:	d1f9      	bne.n	800237a <_vfprintf_r+0xaa>
 8002386:	1be5      	subs	r5, r4, r7
 8002388:	b18d      	cbz	r5, 80023ae <_vfprintf_r+0xde>
 800238a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 800238e:	3301      	adds	r3, #1
 8002390:	442a      	add	r2, r5
 8002392:	2b07      	cmp	r3, #7
 8002394:	f8cb 7000 	str.w	r7, [fp]
 8002398:	f8cb 5004 	str.w	r5, [fp, #4]
 800239c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 80023a0:	f300 80ca 	bgt.w	8002538 <_vfprintf_r+0x268>
 80023a4:	f10b 0b08 	add.w	fp, fp, #8
 80023a8:	9b05      	ldr	r3, [sp, #20]
 80023aa:	442b      	add	r3, r5
 80023ac:	9305      	str	r3, [sp, #20]
 80023ae:	7823      	ldrb	r3, [r4, #0]
 80023b0:	2b00      	cmp	r3, #0
 80023b2:	f000 8237 	beq.w	8002824 <_vfprintf_r+0x554>
 80023b6:	2300      	movs	r3, #0
 80023b8:	7866      	ldrb	r6, [r4, #1]
 80023ba:	9306      	str	r3, [sp, #24]
 80023bc:	4698      	mov	r8, r3
 80023be:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80023c2:	f104 0a01 	add.w	sl, r4, #1
 80023c6:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 80023ca:	252b      	movs	r5, #43	; 0x2b
 80023cc:	f10a 0a01 	add.w	sl, sl, #1
 80023d0:	f1a6 0320 	sub.w	r3, r6, #32
 80023d4:	2b5a      	cmp	r3, #90	; 0x5a
 80023d6:	f200 842a 	bhi.w	8002c2e <_vfprintf_r+0x95e>
 80023da:	e8df f013 	tbh	[pc, r3, lsl #1]
 80023de:	03aa      	.short	0x03aa
 80023e0:	04280428 	.word	0x04280428
 80023e4:	0428029c 	.word	0x0428029c
 80023e8:	04280428 	.word	0x04280428
 80023ec:	042802a7 	.word	0x042802a7
 80023f0:	02c60428 	.word	0x02c60428
 80023f4:	042802d2 	.word	0x042802d2
 80023f8:	02dc02d7 	.word	0x02dc02d7
 80023fc:	02f60428 	.word	0x02f60428
 8002400:	026d026d 	.word	0x026d026d
 8002404:	026d026d 	.word	0x026d026d
 8002408:	026d026d 	.word	0x026d026d
 800240c:	026d026d 	.word	0x026d026d
 8002410:	0428026d 	.word	0x0428026d
 8002414:	04280428 	.word	0x04280428
 8002418:	04280428 	.word	0x04280428
 800241c:	04280428 	.word	0x04280428
 8002420:	042802fb 	.word	0x042802fb
 8002424:	03f3033c 	.word	0x03f3033c
 8002428:	02fb02fb 	.word	0x02fb02fb
 800242c:	042802fb 	.word	0x042802fb
 8002430:	04280428 	.word	0x04280428
 8002434:	03ee0428 	.word	0x03ee0428
 8002438:	04280428 	.word	0x04280428
 800243c:	0428009a 	.word	0x0428009a
 8002440:	04280428 	.word	0x04280428
 8002444:	04280350 	.word	0x04280350
 8002448:	04280379 	.word	0x04280379
 800244c:	03900428 	.word	0x03900428
 8002450:	04280428 	.word	0x04280428
 8002454:	04280428 	.word	0x04280428
 8002458:	04280428 	.word	0x04280428
 800245c:	04280428 	.word	0x04280428
 8002460:	042802fb 	.word	0x042802fb
 8002464:	00c5033c 	.word	0x00c5033c
 8002468:	02fb02fb 	.word	0x02fb02fb
 800246c:	03d102fb 	.word	0x03d102fb
 8002470:	007000c5 	.word	0x007000c5
 8002474:	03b50428 	.word	0x03b50428
 8002478:	03c20428 	.word	0x03c20428
 800247c:	03de009c 	.word	0x03de009c
 8002480:	04280070 	.word	0x04280070
 8002484:	00720350 	.word	0x00720350
 8002488:	0428022c 	.word	0x0428022c
 800248c:	027c0428 	.word	0x027c0428
 8002490:	00720428 	.word	0x00720428
 8002494:	4649      	mov	r1, r9
 8002496:	9803      	ldr	r0, [sp, #12]
 8002498:	f001 fc9a 	bl	8003dd0 <__swsetup_r>
 800249c:	b1a0      	cbz	r0, 80024c8 <_vfprintf_r+0x1f8>
 800249e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 80024a2:	07d8      	lsls	r0, r3, #31
 80024a4:	d404      	bmi.n	80024b0 <_vfprintf_r+0x1e0>
 80024a6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80024aa:	0599      	lsls	r1, r3, #22
 80024ac:	f140 83b7 	bpl.w	8002c1e <_vfprintf_r+0x94e>
 80024b0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80024b4:	9305      	str	r3, [sp, #20]
 80024b6:	9805      	ldr	r0, [sp, #20]
 80024b8:	b057      	add	sp, #348	; 0x15c
 80024ba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80024be:	f048 0820 	orr.w	r8, r8, #32
 80024c2:	f89a 6000 	ldrb.w	r6, [sl]
 80024c6:	e781      	b.n	80023cc <_vfprintf_r+0xfc>
 80024c8:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80024cc:	f003 021a 	and.w	r2, r3, #26
 80024d0:	2a0a      	cmp	r2, #10
 80024d2:	f47f af37 	bne.w	8002344 <_vfprintf_r+0x74>
 80024d6:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 80024da:	2a00      	cmp	r2, #0
 80024dc:	f6ff af32 	blt.w	8002344 <_vfprintf_r+0x74>
 80024e0:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80024e4:	07d2      	lsls	r2, r2, #31
 80024e6:	d405      	bmi.n	80024f4 <_vfprintf_r+0x224>
 80024e8:	059b      	lsls	r3, r3, #22
 80024ea:	d403      	bmi.n	80024f4 <_vfprintf_r+0x224>
 80024ec:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80024f0:	f003 f8de 	bl	80056b0 <__retarget_lock_release_recursive>
 80024f4:	4623      	mov	r3, r4
 80024f6:	463a      	mov	r2, r7
 80024f8:	4649      	mov	r1, r9
 80024fa:	9803      	ldr	r0, [sp, #12]
 80024fc:	f001 fc26 	bl	8003d4c <__sbprintf>
 8002500:	9005      	str	r0, [sp, #20]
 8002502:	9805      	ldr	r0, [sp, #20]
 8002504:	b057      	add	sp, #348	; 0x15c
 8002506:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800250a:	9803      	ldr	r0, [sp, #12]
 800250c:	f002 fd7e 	bl	800500c <__sinit>
 8002510:	e6f4      	b.n	80022fc <_vfprintf_r+0x2c>
 8002512:	f048 0810 	orr.w	r8, r8, #16
 8002516:	f018 0f20 	tst.w	r8, #32
 800251a:	f000 836c 	beq.w	8002bf6 <_vfprintf_r+0x926>
 800251e:	9c08      	ldr	r4, [sp, #32]
 8002520:	3407      	adds	r4, #7
 8002522:	f024 0307 	bic.w	r3, r4, #7
 8002526:	e9d3 4500 	ldrd	r4, r5, [r3]
 800252a:	f103 0208 	add.w	r2, r3, #8
 800252e:	9208      	str	r2, [sp, #32]
 8002530:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002534:	2200      	movs	r2, #0
 8002536:	e18c      	b.n	8002852 <_vfprintf_r+0x582>
 8002538:	aa2a      	add	r2, sp, #168	; 0xa8
 800253a:	9907      	ldr	r1, [sp, #28]
 800253c:	9803      	ldr	r0, [sp, #12]
 800253e:	f004 f9f5 	bl	800692c <__sprint_r>
 8002542:	2800      	cmp	r0, #0
 8002544:	f041 8376 	bne.w	8003c34 <_vfprintf_r+0x1964>
 8002548:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800254c:	e72c      	b.n	80023a8 <_vfprintf_r+0xd8>
 800254e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002552:	f003 f8ab 	bl	80056ac <__retarget_lock_acquire_recursive>
 8002556:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800255a:	b293      	uxth	r3, r2
 800255c:	e6d8      	b.n	8002310 <_vfprintf_r+0x40>
 800255e:	bf00      	nop
	...
 8002568:	4643      	mov	r3, r8
 800256a:	069f      	lsls	r7, r3, #26
 800256c:	f140 832f 	bpl.w	8002bce <_vfprintf_r+0x8fe>
 8002570:	9c08      	ldr	r4, [sp, #32]
 8002572:	3407      	adds	r4, #7
 8002574:	f024 0407 	bic.w	r4, r4, #7
 8002578:	e9d4 0100 	ldrd	r0, r1, [r4]
 800257c:	f104 0208 	add.w	r2, r4, #8
 8002580:	9208      	str	r2, [sp, #32]
 8002582:	4604      	mov	r4, r0
 8002584:	460d      	mov	r5, r1
 8002586:	2800      	cmp	r0, #0
 8002588:	f171 0200 	sbcs.w	r2, r1, #0
 800258c:	da05      	bge.n	800259a <_vfprintf_r+0x2ca>
 800258e:	222d      	movs	r2, #45	; 0x2d
 8002590:	4264      	negs	r4, r4
 8002592:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002596:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800259a:	aa56      	add	r2, sp, #344	; 0x158
 800259c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80025a0:	9204      	str	r2, [sp, #16]
 80025a2:	f000 84b2 	beq.w	8002f0a <_vfprintf_r+0xc3a>
 80025a6:	2201      	movs	r2, #1
 80025a8:	ea54 0105 	orrs.w	r1, r4, r5
 80025ac:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 80025b0:	f040 8159 	bne.w	8002866 <_vfprintf_r+0x596>
 80025b4:	f1b9 0f00 	cmp.w	r9, #0
 80025b8:	f040 8619 	bne.w	80031ee <_vfprintf_r+0xf1e>
 80025bc:	2a00      	cmp	r2, #0
 80025be:	f040 8508 	bne.w	8002fd2 <_vfprintf_r+0xd02>
 80025c2:	f013 0301 	ands.w	r3, r3, #1
 80025c6:	af56      	add	r7, sp, #344	; 0x158
 80025c8:	9309      	str	r3, [sp, #36]	; 0x24
 80025ca:	d002      	beq.n	80025d2 <_vfprintf_r+0x302>
 80025cc:	2330      	movs	r3, #48	; 0x30
 80025ce:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80025d2:	2300      	movs	r3, #0
 80025d4:	930a      	str	r3, [sp, #40]	; 0x28
 80025d6:	930f      	str	r3, [sp, #60]	; 0x3c
 80025d8:	9314      	str	r3, [sp, #80]	; 0x50
 80025da:	9311      	str	r3, [sp, #68]	; 0x44
 80025dc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80025de:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80025e2:	454b      	cmp	r3, r9
 80025e4:	bfb8      	it	lt
 80025e6:	464b      	movlt	r3, r9
 80025e8:	9304      	str	r3, [sp, #16]
 80025ea:	b112      	cbz	r2, 80025f2 <_vfprintf_r+0x322>
 80025ec:	9b04      	ldr	r3, [sp, #16]
 80025ee:	3301      	adds	r3, #1
 80025f0:	9304      	str	r3, [sp, #16]
 80025f2:	f018 0302 	ands.w	r3, r8, #2
 80025f6:	930b      	str	r3, [sp, #44]	; 0x2c
 80025f8:	d002      	beq.n	8002600 <_vfprintf_r+0x330>
 80025fa:	9b04      	ldr	r3, [sp, #16]
 80025fc:	3302      	adds	r3, #2
 80025fe:	9304      	str	r3, [sp, #16]
 8002600:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002604:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002606:	930e      	str	r3, [sp, #56]	; 0x38
 8002608:	d13f      	bne.n	800268a <_vfprintf_r+0x3ba>
 800260a:	9b06      	ldr	r3, [sp, #24]
 800260c:	9904      	ldr	r1, [sp, #16]
 800260e:	1a5d      	subs	r5, r3, r1
 8002610:	2d00      	cmp	r5, #0
 8002612:	dd3a      	ble.n	800268a <_vfprintf_r+0x3ba>
 8002614:	2d10      	cmp	r5, #16
 8002616:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002618:	dd29      	ble.n	800266e <_vfprintf_r+0x39e>
 800261a:	4659      	mov	r1, fp
 800261c:	4620      	mov	r0, r4
 800261e:	9620      	str	r6, [sp, #128]	; 0x80
 8002620:	2310      	movs	r3, #16
 8002622:	9c03      	ldr	r4, [sp, #12]
 8002624:	9e07      	ldr	r6, [sp, #28]
 8002626:	46bb      	mov	fp, r7
 8002628:	e004      	b.n	8002634 <_vfprintf_r+0x364>
 800262a:	3d10      	subs	r5, #16
 800262c:	2d10      	cmp	r5, #16
 800262e:	f101 0108 	add.w	r1, r1, #8
 8002632:	dd18      	ble.n	8002666 <_vfprintf_r+0x396>
 8002634:	3201      	adds	r2, #1
 8002636:	4fba      	ldr	r7, [pc, #744]	; (8002920 <_vfprintf_r+0x650>)
 8002638:	3010      	adds	r0, #16
 800263a:	2a07      	cmp	r2, #7
 800263c:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002640:	e9c1 7300 	strd	r7, r3, [r1]
 8002644:	ddf1      	ble.n	800262a <_vfprintf_r+0x35a>
 8002646:	aa2a      	add	r2, sp, #168	; 0xa8
 8002648:	4631      	mov	r1, r6
 800264a:	4620      	mov	r0, r4
 800264c:	930c      	str	r3, [sp, #48]	; 0x30
 800264e:	f004 f96d 	bl	800692c <__sprint_r>
 8002652:	2800      	cmp	r0, #0
 8002654:	f040 843d 	bne.w	8002ed2 <_vfprintf_r+0xc02>
 8002658:	3d10      	subs	r5, #16
 800265a:	2d10      	cmp	r5, #16
 800265c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002660:	a92d      	add	r1, sp, #180	; 0xb4
 8002662:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002664:	dce6      	bgt.n	8002634 <_vfprintf_r+0x364>
 8002666:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002668:	465f      	mov	r7, fp
 800266a:	4604      	mov	r4, r0
 800266c:	468b      	mov	fp, r1
 800266e:	3201      	adds	r2, #1
 8002670:	4bab      	ldr	r3, [pc, #684]	; (8002920 <_vfprintf_r+0x650>)
 8002672:	442c      	add	r4, r5
 8002674:	2a07      	cmp	r2, #7
 8002676:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800267a:	e9cb 3500 	strd	r3, r5, [fp]
 800267e:	f300 84ff 	bgt.w	8003080 <_vfprintf_r+0xdb0>
 8002682:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002686:	f10b 0b08 	add.w	fp, fp, #8
 800268a:	b172      	cbz	r2, 80026aa <_vfprintf_r+0x3da>
 800268c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800268e:	3201      	adds	r2, #1
 8002690:	3401      	adds	r4, #1
 8002692:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002696:	2101      	movs	r1, #1
 8002698:	2a07      	cmp	r2, #7
 800269a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800269e:	e9cb 0100 	strd	r0, r1, [fp]
 80026a2:	f300 8418 	bgt.w	8002ed6 <_vfprintf_r+0xc06>
 80026a6:	f10b 0b08 	add.w	fp, fp, #8
 80026aa:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80026ac:	b16b      	cbz	r3, 80026ca <_vfprintf_r+0x3fa>
 80026ae:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80026b0:	3301      	adds	r3, #1
 80026b2:	3402      	adds	r4, #2
 80026b4:	a923      	add	r1, sp, #140	; 0x8c
 80026b6:	2202      	movs	r2, #2
 80026b8:	2b07      	cmp	r3, #7
 80026ba:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80026be:	e9cb 1200 	strd	r1, r2, [fp]
 80026c2:	f300 8415 	bgt.w	8002ef0 <_vfprintf_r+0xc20>
 80026c6:	f10b 0b08 	add.w	fp, fp, #8
 80026ca:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80026cc:	2b80      	cmp	r3, #128	; 0x80
 80026ce:	f000 8331 	beq.w	8002d34 <_vfprintf_r+0xa64>
 80026d2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80026d4:	eba9 0503 	sub.w	r5, r9, r3
 80026d8:	2d00      	cmp	r5, #0
 80026da:	dd37      	ble.n	800274c <_vfprintf_r+0x47c>
 80026dc:	2d10      	cmp	r5, #16
 80026de:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80026e0:	4b90      	ldr	r3, [pc, #576]	; (8002924 <_vfprintf_r+0x654>)
 80026e2:	dd28      	ble.n	8002736 <_vfprintf_r+0x466>
 80026e4:	4659      	mov	r1, fp
 80026e6:	4620      	mov	r0, r4
 80026e8:	46bb      	mov	fp, r7
 80026ea:	f04f 0910 	mov.w	r9, #16
 80026ee:	4637      	mov	r7, r6
 80026f0:	461c      	mov	r4, r3
 80026f2:	9e07      	ldr	r6, [sp, #28]
 80026f4:	e004      	b.n	8002700 <_vfprintf_r+0x430>
 80026f6:	3d10      	subs	r5, #16
 80026f8:	2d10      	cmp	r5, #16
 80026fa:	f101 0108 	add.w	r1, r1, #8
 80026fe:	dd15      	ble.n	800272c <_vfprintf_r+0x45c>
 8002700:	3201      	adds	r2, #1
 8002702:	3010      	adds	r0, #16
 8002704:	2a07      	cmp	r2, #7
 8002706:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800270a:	e9c1 4900 	strd	r4, r9, [r1]
 800270e:	ddf2      	ble.n	80026f6 <_vfprintf_r+0x426>
 8002710:	aa2a      	add	r2, sp, #168	; 0xa8
 8002712:	4631      	mov	r1, r6
 8002714:	9803      	ldr	r0, [sp, #12]
 8002716:	f004 f909 	bl	800692c <__sprint_r>
 800271a:	2800      	cmp	r0, #0
 800271c:	f040 83d9 	bne.w	8002ed2 <_vfprintf_r+0xc02>
 8002720:	3d10      	subs	r5, #16
 8002722:	2d10      	cmp	r5, #16
 8002724:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002728:	a92d      	add	r1, sp, #180	; 0xb4
 800272a:	dce9      	bgt.n	8002700 <_vfprintf_r+0x430>
 800272c:	463e      	mov	r6, r7
 800272e:	4623      	mov	r3, r4
 8002730:	465f      	mov	r7, fp
 8002732:	4604      	mov	r4, r0
 8002734:	468b      	mov	fp, r1
 8002736:	3201      	adds	r2, #1
 8002738:	442c      	add	r4, r5
 800273a:	2a07      	cmp	r2, #7
 800273c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002740:	e9cb 3500 	strd	r3, r5, [fp]
 8002744:	f300 83ef 	bgt.w	8002f26 <_vfprintf_r+0xc56>
 8002748:	f10b 0b08 	add.w	fp, fp, #8
 800274c:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002750:	f040 8280 	bne.w	8002c54 <_vfprintf_r+0x984>
 8002754:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002756:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002758:	f8cb 7000 	str.w	r7, [fp]
 800275c:	3301      	adds	r3, #1
 800275e:	4414      	add	r4, r2
 8002760:	2b07      	cmp	r3, #7
 8002762:	942c      	str	r4, [sp, #176]	; 0xb0
 8002764:	f8cb 2004 	str.w	r2, [fp, #4]
 8002768:	932b      	str	r3, [sp, #172]	; 0xac
 800276a:	f300 8392 	bgt.w	8002e92 <_vfprintf_r+0xbc2>
 800276e:	f10b 0b08 	add.w	fp, fp, #8
 8002772:	f018 0f04 	tst.w	r8, #4
 8002776:	d03b      	beq.n	80027f0 <_vfprintf_r+0x520>
 8002778:	9b06      	ldr	r3, [sp, #24]
 800277a:	9a04      	ldr	r2, [sp, #16]
 800277c:	1a9d      	subs	r5, r3, r2
 800277e:	2d00      	cmp	r5, #0
 8002780:	dd36      	ble.n	80027f0 <_vfprintf_r+0x520>
 8002782:	2d10      	cmp	r5, #16
 8002784:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002786:	dd21      	ble.n	80027cc <_vfprintf_r+0x4fc>
 8002788:	2610      	movs	r6, #16
 800278a:	9f03      	ldr	r7, [sp, #12]
 800278c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002790:	e004      	b.n	800279c <_vfprintf_r+0x4cc>
 8002792:	3d10      	subs	r5, #16
 8002794:	2d10      	cmp	r5, #16
 8002796:	f10b 0b08 	add.w	fp, fp, #8
 800279a:	dd17      	ble.n	80027cc <_vfprintf_r+0x4fc>
 800279c:	3301      	adds	r3, #1
 800279e:	4a60      	ldr	r2, [pc, #384]	; (8002920 <_vfprintf_r+0x650>)
 80027a0:	3410      	adds	r4, #16
 80027a2:	2b07      	cmp	r3, #7
 80027a4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80027a8:	e9cb 2600 	strd	r2, r6, [fp]
 80027ac:	ddf1      	ble.n	8002792 <_vfprintf_r+0x4c2>
 80027ae:	aa2a      	add	r2, sp, #168	; 0xa8
 80027b0:	4641      	mov	r1, r8
 80027b2:	4638      	mov	r0, r7
 80027b4:	f004 f8ba 	bl	800692c <__sprint_r>
 80027b8:	2800      	cmp	r0, #0
 80027ba:	f040 856c 	bne.w	8003296 <_vfprintf_r+0xfc6>
 80027be:	3d10      	subs	r5, #16
 80027c0:	2d10      	cmp	r5, #16
 80027c2:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80027c6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80027ca:	dce7      	bgt.n	800279c <_vfprintf_r+0x4cc>
 80027cc:	3301      	adds	r3, #1
 80027ce:	4a54      	ldr	r2, [pc, #336]	; (8002920 <_vfprintf_r+0x650>)
 80027d0:	442c      	add	r4, r5
 80027d2:	2b07      	cmp	r3, #7
 80027d4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80027d8:	e9cb 2500 	strd	r2, r5, [fp]
 80027dc:	dd08      	ble.n	80027f0 <_vfprintf_r+0x520>
 80027de:	aa2a      	add	r2, sp, #168	; 0xa8
 80027e0:	9907      	ldr	r1, [sp, #28]
 80027e2:	9803      	ldr	r0, [sp, #12]
 80027e4:	f004 f8a2 	bl	800692c <__sprint_r>
 80027e8:	2800      	cmp	r0, #0
 80027ea:	f040 82e9 	bne.w	8002dc0 <_vfprintf_r+0xaf0>
 80027ee:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80027f0:	9904      	ldr	r1, [sp, #16]
 80027f2:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 80027f6:	428a      	cmp	r2, r1
 80027f8:	bfac      	ite	ge
 80027fa:	189b      	addge	r3, r3, r2
 80027fc:	185b      	addlt	r3, r3, r1
 80027fe:	9305      	str	r3, [sp, #20]
 8002800:	2c00      	cmp	r4, #0
 8002802:	f040 82d5 	bne.w	8002db0 <_vfprintf_r+0xae0>
 8002806:	2300      	movs	r3, #0
 8002808:	932b      	str	r3, [sp, #172]	; 0xac
 800280a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800280c:	b11b      	cbz	r3, 8002816 <_vfprintf_r+0x546>
 800280e:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002810:	9803      	ldr	r0, [sp, #12]
 8002812:	f002 fc9d 	bl	8005150 <_free_r>
 8002816:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800281a:	4657      	mov	r7, sl
 800281c:	783b      	ldrb	r3, [r7, #0]
 800281e:	2b00      	cmp	r3, #0
 8002820:	f47f ada7 	bne.w	8002372 <_vfprintf_r+0xa2>
 8002824:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002826:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800282a:	2b00      	cmp	r3, #0
 800282c:	f041 80e7 	bne.w	80039fe <_vfprintf_r+0x172e>
 8002830:	2300      	movs	r3, #0
 8002832:	932b      	str	r3, [sp, #172]	; 0xac
 8002834:	e2cb      	b.n	8002dce <_vfprintf_r+0xafe>
 8002836:	4643      	mov	r3, r8
 8002838:	069a      	lsls	r2, r3, #26
 800283a:	f140 814e 	bpl.w	8002ada <_vfprintf_r+0x80a>
 800283e:	9c08      	ldr	r4, [sp, #32]
 8002840:	3407      	adds	r4, #7
 8002842:	f024 0207 	bic.w	r2, r4, #7
 8002846:	f102 0108 	add.w	r1, r2, #8
 800284a:	e9d2 4500 	ldrd	r4, r5, [r2]
 800284e:	9108      	str	r1, [sp, #32]
 8002850:	2201      	movs	r2, #1
 8002852:	2100      	movs	r1, #0
 8002854:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002858:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800285c:	a956      	add	r1, sp, #344	; 0x158
 800285e:	9104      	str	r1, [sp, #16]
 8002860:	f47f aea2 	bne.w	80025a8 <_vfprintf_r+0x2d8>
 8002864:	4698      	mov	r8, r3
 8002866:	2a01      	cmp	r2, #1
 8002868:	f000 8350 	beq.w	8002f0c <_vfprintf_r+0xc3c>
 800286c:	2a02      	cmp	r2, #2
 800286e:	f000 831b 	beq.w	8002ea8 <_vfprintf_r+0xbd8>
 8002872:	a956      	add	r1, sp, #344	; 0x158
 8002874:	e000      	b.n	8002878 <_vfprintf_r+0x5a8>
 8002876:	4639      	mov	r1, r7
 8002878:	08e2      	lsrs	r2, r4, #3
 800287a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 800287e:	08e8      	lsrs	r0, r5, #3
 8002880:	f004 0307 	and.w	r3, r4, #7
 8002884:	4605      	mov	r5, r0
 8002886:	4614      	mov	r4, r2
 8002888:	3330      	adds	r3, #48	; 0x30
 800288a:	ea54 0205 	orrs.w	r2, r4, r5
 800288e:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002892:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002896:	d1ee      	bne.n	8002876 <_vfprintf_r+0x5a6>
 8002898:	f018 0f01 	tst.w	r8, #1
 800289c:	f000 8314 	beq.w	8002ec8 <_vfprintf_r+0xbf8>
 80028a0:	2b30      	cmp	r3, #48	; 0x30
 80028a2:	f000 8311 	beq.w	8002ec8 <_vfprintf_r+0xbf8>
 80028a6:	9a04      	ldr	r2, [sp, #16]
 80028a8:	3902      	subs	r1, #2
 80028aa:	2330      	movs	r3, #48	; 0x30
 80028ac:	1a52      	subs	r2, r2, r1
 80028ae:	f807 3c01 	strb.w	r3, [r7, #-1]
 80028b2:	9209      	str	r2, [sp, #36]	; 0x24
 80028b4:	460f      	mov	r7, r1
 80028b6:	e68c      	b.n	80025d2 <_vfprintf_r+0x302>
 80028b8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80028bc:	2200      	movs	r2, #0
 80028be:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80028c2:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 80028c6:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 80028ca:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80028ce:	2b09      	cmp	r3, #9
 80028d0:	d9f5      	bls.n	80028be <_vfprintf_r+0x5ee>
 80028d2:	9206      	str	r2, [sp, #24]
 80028d4:	e57c      	b.n	80023d0 <_vfprintf_r+0x100>
 80028d6:	4b14      	ldr	r3, [pc, #80]	; (8002928 <_vfprintf_r+0x658>)
 80028d8:	9317      	str	r3, [sp, #92]	; 0x5c
 80028da:	f018 0f20 	tst.w	r8, #32
 80028de:	f000 8114 	beq.w	8002b0a <_vfprintf_r+0x83a>
 80028e2:	9c08      	ldr	r4, [sp, #32]
 80028e4:	3407      	adds	r4, #7
 80028e6:	f024 0307 	bic.w	r3, r4, #7
 80028ea:	e9d3 4500 	ldrd	r4, r5, [r3]
 80028ee:	f103 0208 	add.w	r2, r3, #8
 80028f2:	9208      	str	r2, [sp, #32]
 80028f4:	f018 0f01 	tst.w	r8, #1
 80028f8:	d009      	beq.n	800290e <_vfprintf_r+0x63e>
 80028fa:	ea54 0305 	orrs.w	r3, r4, r5
 80028fe:	d006      	beq.n	800290e <_vfprintf_r+0x63e>
 8002900:	2330      	movs	r3, #48	; 0x30
 8002902:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002906:	f048 0802 	orr.w	r8, r8, #2
 800290a:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 800290e:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002912:	2202      	movs	r2, #2
 8002914:	e79d      	b.n	8002852 <_vfprintf_r+0x582>
 8002916:	f048 0801 	orr.w	r8, r8, #1
 800291a:	f89a 6000 	ldrb.w	r6, [sl]
 800291e:	e555      	b.n	80023cc <_vfprintf_r+0xfc>
 8002920:	0800700c 	.word	0x0800700c
 8002924:	0800701c 	.word	0x0800701c
 8002928:	08006fd8 	.word	0x08006fd8
 800292c:	9e03      	ldr	r6, [sp, #12]
 800292e:	4630      	mov	r0, r6
 8002930:	f002 feaa 	bl	8005688 <_localeconv_r>
 8002934:	6843      	ldr	r3, [r0, #4]
 8002936:	9318      	str	r3, [sp, #96]	; 0x60
 8002938:	4618      	mov	r0, r3
 800293a:	f7fd fe81 	bl	8000640 <strlen>
 800293e:	901b      	str	r0, [sp, #108]	; 0x6c
 8002940:	4604      	mov	r4, r0
 8002942:	4630      	mov	r0, r6
 8002944:	f002 fea0 	bl	8005688 <_localeconv_r>
 8002948:	6883      	ldr	r3, [r0, #8]
 800294a:	931a      	str	r3, [sp, #104]	; 0x68
 800294c:	2c00      	cmp	r4, #0
 800294e:	f43f adb8 	beq.w	80024c2 <_vfprintf_r+0x1f2>
 8002952:	f89a 6000 	ldrb.w	r6, [sl]
 8002956:	2b00      	cmp	r3, #0
 8002958:	f43f ad38 	beq.w	80023cc <_vfprintf_r+0xfc>
 800295c:	781b      	ldrb	r3, [r3, #0]
 800295e:	2b00      	cmp	r3, #0
 8002960:	f43f ad34 	beq.w	80023cc <_vfprintf_r+0xfc>
 8002964:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002968:	e530      	b.n	80023cc <_vfprintf_r+0xfc>
 800296a:	9b08      	ldr	r3, [sp, #32]
 800296c:	f89a 6000 	ldrb.w	r6, [sl]
 8002970:	681a      	ldr	r2, [r3, #0]
 8002972:	9206      	str	r2, [sp, #24]
 8002974:	2a00      	cmp	r2, #0
 8002976:	f103 0304 	add.w	r3, r3, #4
 800297a:	f2c0 8697 	blt.w	80036ac <_vfprintf_r+0x13dc>
 800297e:	9308      	str	r3, [sp, #32]
 8002980:	e524      	b.n	80023cc <_vfprintf_r+0xfc>
 8002982:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002986:	f89a 6000 	ldrb.w	r6, [sl]
 800298a:	e51f      	b.n	80023cc <_vfprintf_r+0xfc>
 800298c:	f89a 6000 	ldrb.w	r6, [sl]
 8002990:	f048 0804 	orr.w	r8, r8, #4
 8002994:	e51a      	b.n	80023cc <_vfprintf_r+0xfc>
 8002996:	f89a 6000 	ldrb.w	r6, [sl]
 800299a:	2e2a      	cmp	r6, #42	; 0x2a
 800299c:	f10a 0201 	add.w	r2, sl, #1
 80029a0:	f001 81b0 	beq.w	8003d04 <_vfprintf_r+0x1a34>
 80029a4:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80029a8:	2b09      	cmp	r3, #9
 80029aa:	4692      	mov	sl, r2
 80029ac:	f04f 0900 	mov.w	r9, #0
 80029b0:	f63f ad0e 	bhi.w	80023d0 <_vfprintf_r+0x100>
 80029b4:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80029b8:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 80029bc:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 80029c0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80029c4:	2b09      	cmp	r3, #9
 80029c6:	d9f5      	bls.n	80029b4 <_vfprintf_r+0x6e4>
 80029c8:	e502      	b.n	80023d0 <_vfprintf_r+0x100>
 80029ca:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 80029ce:	f89a 6000 	ldrb.w	r6, [sl]
 80029d2:	e4fb      	b.n	80023cc <_vfprintf_r+0xfc>
 80029d4:	9c08      	ldr	r4, [sp, #32]
 80029d6:	3407      	adds	r4, #7
 80029d8:	f024 0407 	bic.w	r4, r4, #7
 80029dc:	ed94 7b00 	vldr	d7, [r4]
 80029e0:	ec52 1b17 	vmov	r1, r2, d7
 80029e4:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80029e8:	931d      	str	r3, [sp, #116]	; 0x74
 80029ea:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 80029ee:	3408      	adds	r4, #8
 80029f0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80029f4:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80029f8:	4bba      	ldr	r3, [pc, #744]	; (8002ce4 <_vfprintf_r+0xa14>)
 80029fa:	9408      	str	r4, [sp, #32]
 80029fc:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002a00:	f7fe fb34 	bl	800106c <__aeabi_dcmpun>
 8002a04:	2800      	cmp	r0, #0
 8002a06:	f040 846f 	bne.w	80032e8 <_vfprintf_r+0x1018>
 8002a0a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002a0e:	4bb5      	ldr	r3, [pc, #724]	; (8002ce4 <_vfprintf_r+0xa14>)
 8002a10:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002a14:	f7fe fb0c 	bl	8001030 <__aeabi_dcmple>
 8002a18:	2800      	cmp	r0, #0
 8002a1a:	f040 8465 	bne.w	80032e8 <_vfprintf_r+0x1018>
 8002a1e:	2200      	movs	r2, #0
 8002a20:	2300      	movs	r3, #0
 8002a22:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002a26:	f7fe faf9 	bl	800101c <__aeabi_dcmplt>
 8002a2a:	2800      	cmp	r0, #0
 8002a2c:	f040 855b 	bne.w	80034e6 <_vfprintf_r+0x1216>
 8002a30:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002a34:	4fac      	ldr	r7, [pc, #688]	; (8002ce8 <_vfprintf_r+0xa18>)
 8002a36:	4bad      	ldr	r3, [pc, #692]	; (8002cec <_vfprintf_r+0xa1c>)
 8002a38:	2000      	movs	r0, #0
 8002a3a:	2103      	movs	r1, #3
 8002a3c:	9104      	str	r1, [sp, #16]
 8002a3e:	900a      	str	r0, [sp, #40]	; 0x28
 8002a40:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002a44:	2e47      	cmp	r6, #71	; 0x47
 8002a46:	bfd8      	it	le
 8002a48:	461f      	movle	r7, r3
 8002a4a:	9109      	str	r1, [sp, #36]	; 0x24
 8002a4c:	4681      	mov	r9, r0
 8002a4e:	900f      	str	r0, [sp, #60]	; 0x3c
 8002a50:	9014      	str	r0, [sp, #80]	; 0x50
 8002a52:	9011      	str	r0, [sp, #68]	; 0x44
 8002a54:	e5c9      	b.n	80025ea <_vfprintf_r+0x31a>
 8002a56:	9808      	ldr	r0, [sp, #32]
 8002a58:	2300      	movs	r3, #0
 8002a5a:	6801      	ldr	r1, [r0, #0]
 8002a5c:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002a60:	461a      	mov	r2, r3
 8002a62:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002a66:	2301      	movs	r3, #1
 8002a68:	1d01      	adds	r1, r0, #4
 8002a6a:	9304      	str	r3, [sp, #16]
 8002a6c:	920a      	str	r2, [sp, #40]	; 0x28
 8002a6e:	4691      	mov	r9, r2
 8002a70:	920f      	str	r2, [sp, #60]	; 0x3c
 8002a72:	9214      	str	r2, [sp, #80]	; 0x50
 8002a74:	9211      	str	r2, [sp, #68]	; 0x44
 8002a76:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002a7a:	af3d      	add	r7, sp, #244	; 0xf4
 8002a7c:	e5b9      	b.n	80025f2 <_vfprintf_r+0x322>
 8002a7e:	9b08      	ldr	r3, [sp, #32]
 8002a80:	681f      	ldr	r7, [r3, #0]
 8002a82:	2500      	movs	r5, #0
 8002a84:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002a88:	1d1c      	adds	r4, r3, #4
 8002a8a:	2f00      	cmp	r7, #0
 8002a8c:	f000 8639 	beq.w	8003702 <_vfprintf_r+0x1432>
 8002a90:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002a94:	f000 8711 	beq.w	80038ba <_vfprintf_r+0x15ea>
 8002a98:	464a      	mov	r2, r9
 8002a9a:	4629      	mov	r1, r5
 8002a9c:	4638      	mov	r0, r7
 8002a9e:	f7fd fe3f 	bl	8000720 <memchr>
 8002aa2:	900a      	str	r0, [sp, #40]	; 0x28
 8002aa4:	2800      	cmp	r0, #0
 8002aa6:	f000 85e7 	beq.w	8003678 <_vfprintf_r+0x13a8>
 8002aaa:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002aac:	1bdb      	subs	r3, r3, r7
 8002aae:	9309      	str	r3, [sp, #36]	; 0x24
 8002ab0:	46a9      	mov	r9, r5
 8002ab2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002ab6:	9408      	str	r4, [sp, #32]
 8002ab8:	9304      	str	r3, [sp, #16]
 8002aba:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002abe:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002ac2:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002ac6:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002aca:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002ace:	e58c      	b.n	80025ea <_vfprintf_r+0x31a>
 8002ad0:	f048 0310 	orr.w	r3, r8, #16
 8002ad4:	069a      	lsls	r2, r3, #26
 8002ad6:	f53f aeb2 	bmi.w	800283e <_vfprintf_r+0x56e>
 8002ada:	9a08      	ldr	r2, [sp, #32]
 8002adc:	06df      	lsls	r7, r3, #27
 8002ade:	f102 0104 	add.w	r1, r2, #4
 8002ae2:	f100 837e 	bmi.w	80031e2 <_vfprintf_r+0xf12>
 8002ae6:	065d      	lsls	r5, r3, #25
 8002ae8:	9a08      	ldr	r2, [sp, #32]
 8002aea:	f100 84e4 	bmi.w	80034b6 <_vfprintf_r+0x11e6>
 8002aee:	059c      	lsls	r4, r3, #22
 8002af0:	f140 8377 	bpl.w	80031e2 <_vfprintf_r+0xf12>
 8002af4:	7814      	ldrb	r4, [r2, #0]
 8002af6:	9108      	str	r1, [sp, #32]
 8002af8:	2500      	movs	r5, #0
 8002afa:	2201      	movs	r2, #1
 8002afc:	e6a9      	b.n	8002852 <_vfprintf_r+0x582>
 8002afe:	4b7c      	ldr	r3, [pc, #496]	; (8002cf0 <_vfprintf_r+0xa20>)
 8002b00:	9317      	str	r3, [sp, #92]	; 0x5c
 8002b02:	f018 0f20 	tst.w	r8, #32
 8002b06:	f47f aeec 	bne.w	80028e2 <_vfprintf_r+0x612>
 8002b0a:	9a08      	ldr	r2, [sp, #32]
 8002b0c:	f018 0f10 	tst.w	r8, #16
 8002b10:	f102 0304 	add.w	r3, r2, #4
 8002b14:	f040 8354 	bne.w	80031c0 <_vfprintf_r+0xef0>
 8002b18:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002b1c:	9a08      	ldr	r2, [sp, #32]
 8002b1e:	f040 84d0 	bne.w	80034c2 <_vfprintf_r+0x11f2>
 8002b22:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002b26:	f000 834b 	beq.w	80031c0 <_vfprintf_r+0xef0>
 8002b2a:	7814      	ldrb	r4, [r2, #0]
 8002b2c:	9308      	str	r3, [sp, #32]
 8002b2e:	2500      	movs	r5, #0
 8002b30:	e6e0      	b.n	80028f4 <_vfprintf_r+0x624>
 8002b32:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002b36:	f89a 6000 	ldrb.w	r6, [sl]
 8002b3a:	2b00      	cmp	r3, #0
 8002b3c:	f47f ac46 	bne.w	80023cc <_vfprintf_r+0xfc>
 8002b40:	2320      	movs	r3, #32
 8002b42:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002b46:	e441      	b.n	80023cc <_vfprintf_r+0xfc>
 8002b48:	f89a 6000 	ldrb.w	r6, [sl]
 8002b4c:	2e6c      	cmp	r6, #108	; 0x6c
 8002b4e:	bf03      	ittte	eq
 8002b50:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002b54:	f048 0820 	orreq.w	r8, r8, #32
 8002b58:	f10a 0a01 	addeq.w	sl, sl, #1
 8002b5c:	f048 0810 	orrne.w	r8, r8, #16
 8002b60:	e434      	b.n	80023cc <_vfprintf_r+0xfc>
 8002b62:	9a08      	ldr	r2, [sp, #32]
 8002b64:	f018 0f20 	tst.w	r8, #32
 8002b68:	f852 3b04 	ldr.w	r3, [r2], #4
 8002b6c:	9208      	str	r2, [sp, #32]
 8002b6e:	f000 83a1 	beq.w	80032b4 <_vfprintf_r+0xfe4>
 8002b72:	9a05      	ldr	r2, [sp, #20]
 8002b74:	4610      	mov	r0, r2
 8002b76:	17d1      	asrs	r1, r2, #31
 8002b78:	e9c3 0100 	strd	r0, r1, [r3]
 8002b7c:	4657      	mov	r7, sl
 8002b7e:	e64d      	b.n	800281c <_vfprintf_r+0x54c>
 8002b80:	f89a 6000 	ldrb.w	r6, [sl]
 8002b84:	2e68      	cmp	r6, #104	; 0x68
 8002b86:	bf03      	ittte	eq
 8002b88:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002b8c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002b90:	f10a 0a01 	addeq.w	sl, sl, #1
 8002b94:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002b98:	e418      	b.n	80023cc <_vfprintf_r+0xfc>
 8002b9a:	9908      	ldr	r1, [sp, #32]
 8002b9c:	4b55      	ldr	r3, [pc, #340]	; (8002cf4 <_vfprintf_r+0xa24>)
 8002b9e:	680c      	ldr	r4, [r1, #0]
 8002ba0:	9317      	str	r3, [sp, #92]	; 0x5c
 8002ba2:	f647 0230 	movw	r2, #30768	; 0x7830
 8002ba6:	3104      	adds	r1, #4
 8002ba8:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002bac:	f048 0302 	orr.w	r3, r8, #2
 8002bb0:	9108      	str	r1, [sp, #32]
 8002bb2:	2500      	movs	r5, #0
 8002bb4:	2202      	movs	r2, #2
 8002bb6:	2678      	movs	r6, #120	; 0x78
 8002bb8:	e64b      	b.n	8002852 <_vfprintf_r+0x582>
 8002bba:	f048 0808 	orr.w	r8, r8, #8
 8002bbe:	f89a 6000 	ldrb.w	r6, [sl]
 8002bc2:	e403      	b.n	80023cc <_vfprintf_r+0xfc>
 8002bc4:	f048 0310 	orr.w	r3, r8, #16
 8002bc8:	069f      	lsls	r7, r3, #26
 8002bca:	f53f acd1 	bmi.w	8002570 <_vfprintf_r+0x2a0>
 8002bce:	9908      	ldr	r1, [sp, #32]
 8002bd0:	06dd      	lsls	r5, r3, #27
 8002bd2:	f101 0204 	add.w	r2, r1, #4
 8002bd6:	f100 82fd 	bmi.w	80031d4 <_vfprintf_r+0xf04>
 8002bda:	065c      	lsls	r4, r3, #25
 8002bdc:	9908      	ldr	r1, [sp, #32]
 8002bde:	f100 8475 	bmi.w	80034cc <_vfprintf_r+0x11fc>
 8002be2:	0598      	lsls	r0, r3, #22
 8002be4:	f140 82f6 	bpl.w	80031d4 <_vfprintf_r+0xf04>
 8002be8:	f991 4000 	ldrsb.w	r4, [r1]
 8002bec:	9208      	str	r2, [sp, #32]
 8002bee:	17e5      	asrs	r5, r4, #31
 8002bf0:	4620      	mov	r0, r4
 8002bf2:	4629      	mov	r1, r5
 8002bf4:	e4c7      	b.n	8002586 <_vfprintf_r+0x2b6>
 8002bf6:	9a08      	ldr	r2, [sp, #32]
 8002bf8:	f018 0f10 	tst.w	r8, #16
 8002bfc:	f102 0304 	add.w	r3, r2, #4
 8002c00:	f040 82e3 	bne.w	80031ca <_vfprintf_r+0xefa>
 8002c04:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002c08:	9a08      	ldr	r2, [sp, #32]
 8002c0a:	f040 8467 	bne.w	80034dc <_vfprintf_r+0x120c>
 8002c0e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002c12:	f000 82da 	beq.w	80031ca <_vfprintf_r+0xefa>
 8002c16:	7814      	ldrb	r4, [r2, #0]
 8002c18:	9308      	str	r3, [sp, #32]
 8002c1a:	2500      	movs	r5, #0
 8002c1c:	e488      	b.n	8002530 <_vfprintf_r+0x260>
 8002c1e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002c22:	f002 fd45 	bl	80056b0 <__retarget_lock_release_recursive>
 8002c26:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002c2a:	9305      	str	r3, [sp, #20]
 8002c2c:	e443      	b.n	80024b6 <_vfprintf_r+0x1e6>
 8002c2e:	2e00      	cmp	r6, #0
 8002c30:	f43f adf8 	beq.w	8002824 <_vfprintf_r+0x554>
 8002c34:	2300      	movs	r3, #0
 8002c36:	2101      	movs	r1, #1
 8002c38:	461a      	mov	r2, r3
 8002c3a:	9104      	str	r1, [sp, #16]
 8002c3c:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002c40:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002c44:	930a      	str	r3, [sp, #40]	; 0x28
 8002c46:	4699      	mov	r9, r3
 8002c48:	930f      	str	r3, [sp, #60]	; 0x3c
 8002c4a:	9314      	str	r3, [sp, #80]	; 0x50
 8002c4c:	9311      	str	r3, [sp, #68]	; 0x44
 8002c4e:	9109      	str	r1, [sp, #36]	; 0x24
 8002c50:	af3d      	add	r7, sp, #244	; 0xf4
 8002c52:	e4ce      	b.n	80025f2 <_vfprintf_r+0x322>
 8002c54:	2e65      	cmp	r6, #101	; 0x65
 8002c56:	f340 80ca 	ble.w	8002dee <_vfprintf_r+0xb1e>
 8002c5a:	2200      	movs	r2, #0
 8002c5c:	2300      	movs	r3, #0
 8002c5e:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002c62:	f7fe f9d1 	bl	8001008 <__aeabi_dcmpeq>
 8002c66:	2800      	cmp	r0, #0
 8002c68:	f000 8169 	beq.w	8002f3e <_vfprintf_r+0xc6e>
 8002c6c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002c6e:	4a22      	ldr	r2, [pc, #136]	; (8002cf8 <_vfprintf_r+0xa28>)
 8002c70:	f8cb 2000 	str.w	r2, [fp]
 8002c74:	3301      	adds	r3, #1
 8002c76:	3401      	adds	r4, #1
 8002c78:	2201      	movs	r2, #1
 8002c7a:	2b07      	cmp	r3, #7
 8002c7c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c80:	f8cb 2004 	str.w	r2, [fp, #4]
 8002c84:	f300 8406 	bgt.w	8003494 <_vfprintf_r+0x11c4>
 8002c88:	f10b 0b08 	add.w	fp, fp, #8
 8002c8c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002c8e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002c90:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002c92:	4293      	cmp	r3, r2
 8002c94:	db03      	blt.n	8002c9e <_vfprintf_r+0x9ce>
 8002c96:	f018 0f01 	tst.w	r8, #1
 8002c9a:	f43f ad6a 	beq.w	8002772 <_vfprintf_r+0x4a2>
 8002c9e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002ca0:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002ca2:	f8cb 2000 	str.w	r2, [fp]
 8002ca6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002ca8:	f8cb 2004 	str.w	r2, [fp, #4]
 8002cac:	3301      	adds	r3, #1
 8002cae:	4414      	add	r4, r2
 8002cb0:	2b07      	cmp	r3, #7
 8002cb2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002cb6:	f300 8517 	bgt.w	80036e8 <_vfprintf_r+0x1418>
 8002cba:	f10b 0b08 	add.w	fp, fp, #8
 8002cbe:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002cc0:	1e5d      	subs	r5, r3, #1
 8002cc2:	2d00      	cmp	r5, #0
 8002cc4:	f77f ad55 	ble.w	8002772 <_vfprintf_r+0x4a2>
 8002cc8:	2d10      	cmp	r5, #16
 8002cca:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002ccc:	4b0b      	ldr	r3, [pc, #44]	; (8002cfc <_vfprintf_r+0xa2c>)
 8002cce:	f340 82e7 	ble.w	80032a0 <_vfprintf_r+0xfd0>
 8002cd2:	4619      	mov	r1, r3
 8002cd4:	2610      	movs	r6, #16
 8002cd6:	4623      	mov	r3, r4
 8002cd8:	9f03      	ldr	r7, [sp, #12]
 8002cda:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002cde:	460c      	mov	r4, r1
 8002ce0:	e014      	b.n	8002d0c <_vfprintf_r+0xa3c>
 8002ce2:	bf00      	nop
 8002ce4:	7fefffff 	.word	0x7fefffff
 8002ce8:	08006fcc 	.word	0x08006fcc
 8002cec:	08006fc8 	.word	0x08006fc8
 8002cf0:	08006fec 	.word	0x08006fec
 8002cf4:	08006fd8 	.word	0x08006fd8
 8002cf8:	08007008 	.word	0x08007008
 8002cfc:	0800701c 	.word	0x0800701c
 8002d00:	f10b 0b08 	add.w	fp, fp, #8
 8002d04:	3d10      	subs	r5, #16
 8002d06:	2d10      	cmp	r5, #16
 8002d08:	f340 82c7 	ble.w	800329a <_vfprintf_r+0xfca>
 8002d0c:	3201      	adds	r2, #1
 8002d0e:	3310      	adds	r3, #16
 8002d10:	2a07      	cmp	r2, #7
 8002d12:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002d16:	e9cb 4600 	strd	r4, r6, [fp]
 8002d1a:	ddf1      	ble.n	8002d00 <_vfprintf_r+0xa30>
 8002d1c:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d1e:	4649      	mov	r1, r9
 8002d20:	4638      	mov	r0, r7
 8002d22:	f003 fe03 	bl	800692c <__sprint_r>
 8002d26:	2800      	cmp	r0, #0
 8002d28:	d14c      	bne.n	8002dc4 <_vfprintf_r+0xaf4>
 8002d2a:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002d2e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002d32:	e7e7      	b.n	8002d04 <_vfprintf_r+0xa34>
 8002d34:	9b06      	ldr	r3, [sp, #24]
 8002d36:	9a04      	ldr	r2, [sp, #16]
 8002d38:	1a9d      	subs	r5, r3, r2
 8002d3a:	2d00      	cmp	r5, #0
 8002d3c:	f77f acc9 	ble.w	80026d2 <_vfprintf_r+0x402>
 8002d40:	2d10      	cmp	r5, #16
 8002d42:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002d44:	4bbc      	ldr	r3, [pc, #752]	; (8003038 <_vfprintf_r+0xd68>)
 8002d46:	dd27      	ble.n	8002d98 <_vfprintf_r+0xac8>
 8002d48:	4659      	mov	r1, fp
 8002d4a:	4620      	mov	r0, r4
 8002d4c:	46bb      	mov	fp, r7
 8002d4e:	461c      	mov	r4, r3
 8002d50:	4637      	mov	r7, r6
 8002d52:	9e07      	ldr	r6, [sp, #28]
 8002d54:	e004      	b.n	8002d60 <_vfprintf_r+0xa90>
 8002d56:	3d10      	subs	r5, #16
 8002d58:	2d10      	cmp	r5, #16
 8002d5a:	f101 0108 	add.w	r1, r1, #8
 8002d5e:	dd16      	ble.n	8002d8e <_vfprintf_r+0xabe>
 8002d60:	3201      	adds	r2, #1
 8002d62:	3010      	adds	r0, #16
 8002d64:	2310      	movs	r3, #16
 8002d66:	2a07      	cmp	r2, #7
 8002d68:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002d6c:	600c      	str	r4, [r1, #0]
 8002d6e:	604b      	str	r3, [r1, #4]
 8002d70:	ddf1      	ble.n	8002d56 <_vfprintf_r+0xa86>
 8002d72:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d74:	4631      	mov	r1, r6
 8002d76:	9803      	ldr	r0, [sp, #12]
 8002d78:	f003 fdd8 	bl	800692c <__sprint_r>
 8002d7c:	2800      	cmp	r0, #0
 8002d7e:	f040 80a8 	bne.w	8002ed2 <_vfprintf_r+0xc02>
 8002d82:	3d10      	subs	r5, #16
 8002d84:	2d10      	cmp	r5, #16
 8002d86:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002d8a:	a92d      	add	r1, sp, #180	; 0xb4
 8002d8c:	dce8      	bgt.n	8002d60 <_vfprintf_r+0xa90>
 8002d8e:	463e      	mov	r6, r7
 8002d90:	4623      	mov	r3, r4
 8002d92:	465f      	mov	r7, fp
 8002d94:	4604      	mov	r4, r0
 8002d96:	468b      	mov	fp, r1
 8002d98:	3201      	adds	r2, #1
 8002d9a:	442c      	add	r4, r5
 8002d9c:	2a07      	cmp	r2, #7
 8002d9e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002da2:	e9cb 3500 	strd	r3, r5, [fp]
 8002da6:	f300 8292 	bgt.w	80032ce <_vfprintf_r+0xffe>
 8002daa:	f10b 0b08 	add.w	fp, fp, #8
 8002dae:	e490      	b.n	80026d2 <_vfprintf_r+0x402>
 8002db0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002db2:	9907      	ldr	r1, [sp, #28]
 8002db4:	9803      	ldr	r0, [sp, #12]
 8002db6:	f003 fdb9 	bl	800692c <__sprint_r>
 8002dba:	2800      	cmp	r0, #0
 8002dbc:	f43f ad23 	beq.w	8002806 <_vfprintf_r+0x536>
 8002dc0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002dc4:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002dc6:	b111      	cbz	r1, 8002dce <_vfprintf_r+0xafe>
 8002dc8:	9803      	ldr	r0, [sp, #12]
 8002dca:	f002 f9c1 	bl	8005150 <_free_r>
 8002dce:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002dd2:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002dd6:	07d0      	lsls	r0, r2, #31
 8002dd8:	d402      	bmi.n	8002de0 <_vfprintf_r+0xb10>
 8002dda:	0599      	lsls	r1, r3, #22
 8002ddc:	f140 81d0 	bpl.w	8003180 <_vfprintf_r+0xeb0>
 8002de0:	065a      	lsls	r2, r3, #25
 8002de2:	f53f ab65 	bmi.w	80024b0 <_vfprintf_r+0x1e0>
 8002de6:	9805      	ldr	r0, [sp, #20]
 8002de8:	b057      	add	sp, #348	; 0x15c
 8002dea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002dee:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002df0:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002df2:	2a01      	cmp	r2, #1
 8002df4:	f104 0401 	add.w	r4, r4, #1
 8002df8:	f103 0501 	add.w	r5, r3, #1
 8002dfc:	f10b 0608 	add.w	r6, fp, #8
 8002e00:	f340 811c 	ble.w	800303c <_vfprintf_r+0xd6c>
 8002e04:	2301      	movs	r3, #1
 8002e06:	2d07      	cmp	r5, #7
 8002e08:	f8cb 7000 	str.w	r7, [fp]
 8002e0c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002e10:	f8cb 3004 	str.w	r3, [fp, #4]
 8002e14:	f300 81bb 	bgt.w	800318e <_vfprintf_r+0xebe>
 8002e18:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002e1a:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002e1c:	1c69      	adds	r1, r5, #1
 8002e1e:	441c      	add	r4, r3
 8002e20:	2907      	cmp	r1, #7
 8002e22:	910b      	str	r1, [sp, #44]	; 0x2c
 8002e24:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8002e28:	e9c6 2300 	strd	r2, r3, [r6]
 8002e2c:	f300 81bb 	bgt.w	80031a6 <_vfprintf_r+0xed6>
 8002e30:	3608      	adds	r6, #8
 8002e32:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002e34:	1c53      	adds	r3, r2, #1
 8002e36:	461d      	mov	r5, r3
 8002e38:	9509      	str	r5, [sp, #36]	; 0x24
 8002e3a:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8002e3c:	930e      	str	r3, [sp, #56]	; 0x38
 8002e3e:	2200      	movs	r2, #0
 8002e40:	2300      	movs	r3, #0
 8002e42:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002e46:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8002e4a:	f106 0b08 	add.w	fp, r6, #8
 8002e4e:	f7fe f8db 	bl	8001008 <__aeabi_dcmpeq>
 8002e52:	2800      	cmp	r0, #0
 8002e54:	f040 80c2 	bne.w	8002fdc <_vfprintf_r+0xd0c>
 8002e58:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002e5a:	f8c6 9004 	str.w	r9, [r6, #4]
 8002e5e:	3701      	adds	r7, #1
 8002e60:	444c      	add	r4, r9
 8002e62:	2d07      	cmp	r5, #7
 8002e64:	6037      	str	r7, [r6, #0]
 8002e66:	942c      	str	r4, [sp, #176]	; 0xb0
 8002e68:	952b      	str	r5, [sp, #172]	; 0xac
 8002e6a:	f300 80f9 	bgt.w	8003060 <_vfprintf_r+0xd90>
 8002e6e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002e70:	f106 0310 	add.w	r3, r6, #16
 8002e74:	3202      	adds	r2, #2
 8002e76:	465e      	mov	r6, fp
 8002e78:	9209      	str	r2, [sp, #36]	; 0x24
 8002e7a:	469b      	mov	fp, r3
 8002e7c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8002e7e:	6072      	str	r2, [r6, #4]
 8002e80:	4414      	add	r4, r2
 8002e82:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002e84:	942c      	str	r4, [sp, #176]	; 0xb0
 8002e86:	ab26      	add	r3, sp, #152	; 0x98
 8002e88:	2a07      	cmp	r2, #7
 8002e8a:	922b      	str	r2, [sp, #172]	; 0xac
 8002e8c:	6033      	str	r3, [r6, #0]
 8002e8e:	f77f ac70 	ble.w	8002772 <_vfprintf_r+0x4a2>
 8002e92:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e94:	9907      	ldr	r1, [sp, #28]
 8002e96:	9803      	ldr	r0, [sp, #12]
 8002e98:	f003 fd48 	bl	800692c <__sprint_r>
 8002e9c:	2800      	cmp	r0, #0
 8002e9e:	d18f      	bne.n	8002dc0 <_vfprintf_r+0xaf0>
 8002ea0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002ea2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002ea6:	e464      	b.n	8002772 <_vfprintf_r+0x4a2>
 8002ea8:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8002eaa:	af56      	add	r7, sp, #344	; 0x158
 8002eac:	0923      	lsrs	r3, r4, #4
 8002eae:	f004 010f 	and.w	r1, r4, #15
 8002eb2:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8002eb6:	092a      	lsrs	r2, r5, #4
 8002eb8:	461c      	mov	r4, r3
 8002eba:	4615      	mov	r5, r2
 8002ebc:	5c43      	ldrb	r3, [r0, r1]
 8002ebe:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002ec2:	ea54 0305 	orrs.w	r3, r4, r5
 8002ec6:	d1f1      	bne.n	8002eac <_vfprintf_r+0xbdc>
 8002ec8:	9b04      	ldr	r3, [sp, #16]
 8002eca:	1bdb      	subs	r3, r3, r7
 8002ecc:	9309      	str	r3, [sp, #36]	; 0x24
 8002ece:	f7ff bb80 	b.w	80025d2 <_vfprintf_r+0x302>
 8002ed2:	46b1      	mov	r9, r6
 8002ed4:	e776      	b.n	8002dc4 <_vfprintf_r+0xaf4>
 8002ed6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ed8:	9907      	ldr	r1, [sp, #28]
 8002eda:	9803      	ldr	r0, [sp, #12]
 8002edc:	f003 fd26 	bl	800692c <__sprint_r>
 8002ee0:	2800      	cmp	r0, #0
 8002ee2:	f47f af6d 	bne.w	8002dc0 <_vfprintf_r+0xaf0>
 8002ee6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002ee8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002eec:	f7ff bbdd 	b.w	80026aa <_vfprintf_r+0x3da>
 8002ef0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ef2:	9907      	ldr	r1, [sp, #28]
 8002ef4:	9803      	ldr	r0, [sp, #12]
 8002ef6:	f003 fd19 	bl	800692c <__sprint_r>
 8002efa:	2800      	cmp	r0, #0
 8002efc:	f47f af60 	bne.w	8002dc0 <_vfprintf_r+0xaf0>
 8002f00:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f02:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f06:	f7ff bbe0 	b.w	80026ca <_vfprintf_r+0x3fa>
 8002f0a:	4698      	mov	r8, r3
 8002f0c:	2d00      	cmp	r5, #0
 8002f0e:	bf08      	it	eq
 8002f10:	2c0a      	cmpeq	r4, #10
 8002f12:	f080 8170 	bcs.w	80031f6 <_vfprintf_r+0xf26>
 8002f16:	af56      	add	r7, sp, #344	; 0x158
 8002f18:	3430      	adds	r4, #48	; 0x30
 8002f1a:	2301      	movs	r3, #1
 8002f1c:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8002f20:	9309      	str	r3, [sp, #36]	; 0x24
 8002f22:	f7ff bb56 	b.w	80025d2 <_vfprintf_r+0x302>
 8002f26:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f28:	9907      	ldr	r1, [sp, #28]
 8002f2a:	9803      	ldr	r0, [sp, #12]
 8002f2c:	f003 fcfe 	bl	800692c <__sprint_r>
 8002f30:	2800      	cmp	r0, #0
 8002f32:	f47f af45 	bne.w	8002dc0 <_vfprintf_r+0xaf0>
 8002f36:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f38:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f3c:	e406      	b.n	800274c <_vfprintf_r+0x47c>
 8002f3e:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002f40:	2b00      	cmp	r3, #0
 8002f42:	f340 8273 	ble.w	800342c <_vfprintf_r+0x115c>
 8002f46:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8002f4a:	4293      	cmp	r3, r2
 8002f4c:	bfa8      	it	ge
 8002f4e:	4613      	movge	r3, r2
 8002f50:	2b00      	cmp	r3, #0
 8002f52:	461d      	mov	r5, r3
 8002f54:	dd0d      	ble.n	8002f72 <_vfprintf_r+0xca2>
 8002f56:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f58:	f8cb 7000 	str.w	r7, [fp]
 8002f5c:	3301      	adds	r3, #1
 8002f5e:	442c      	add	r4, r5
 8002f60:	2b07      	cmp	r3, #7
 8002f62:	942c      	str	r4, [sp, #176]	; 0xb0
 8002f64:	f8cb 5004 	str.w	r5, [fp, #4]
 8002f68:	932b      	str	r3, [sp, #172]	; 0xac
 8002f6a:	f300 82c1 	bgt.w	80034f0 <_vfprintf_r+0x1220>
 8002f6e:	f10b 0b08 	add.w	fp, fp, #8
 8002f72:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002f74:	2d00      	cmp	r5, #0
 8002f76:	bfa8      	it	ge
 8002f78:	1b5b      	subge	r3, r3, r5
 8002f7a:	2b00      	cmp	r3, #0
 8002f7c:	461d      	mov	r5, r3
 8002f7e:	f340 8099 	ble.w	80030b4 <_vfprintf_r+0xde4>
 8002f82:	2d10      	cmp	r5, #16
 8002f84:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002f86:	4b2c      	ldr	r3, [pc, #176]	; (8003038 <_vfprintf_r+0xd68>)
 8002f88:	f340 83db 	ble.w	8003742 <_vfprintf_r+0x1472>
 8002f8c:	4618      	mov	r0, r3
 8002f8e:	4621      	mov	r1, r4
 8002f90:	465b      	mov	r3, fp
 8002f92:	2610      	movs	r6, #16
 8002f94:	46bb      	mov	fp, r7
 8002f96:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8002f9a:	9c07      	ldr	r4, [sp, #28]
 8002f9c:	4607      	mov	r7, r0
 8002f9e:	e004      	b.n	8002faa <_vfprintf_r+0xcda>
 8002fa0:	3308      	adds	r3, #8
 8002fa2:	3d10      	subs	r5, #16
 8002fa4:	2d10      	cmp	r5, #16
 8002fa6:	f340 83c7 	ble.w	8003738 <_vfprintf_r+0x1468>
 8002faa:	3201      	adds	r2, #1
 8002fac:	3110      	adds	r1, #16
 8002fae:	2a07      	cmp	r2, #7
 8002fb0:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8002fb4:	e9c3 7600 	strd	r7, r6, [r3]
 8002fb8:	ddf2      	ble.n	8002fa0 <_vfprintf_r+0xcd0>
 8002fba:	aa2a      	add	r2, sp, #168	; 0xa8
 8002fbc:	4621      	mov	r1, r4
 8002fbe:	4648      	mov	r0, r9
 8002fc0:	f003 fcb4 	bl	800692c <__sprint_r>
 8002fc4:	2800      	cmp	r0, #0
 8002fc6:	f040 84a5 	bne.w	8003914 <_vfprintf_r+0x1644>
 8002fca:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8002fce:	ab2d      	add	r3, sp, #180	; 0xb4
 8002fd0:	e7e7      	b.n	8002fa2 <_vfprintf_r+0xcd2>
 8002fd2:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8002fd6:	af56      	add	r7, sp, #344	; 0x158
 8002fd8:	f7ff bafb 	b.w	80025d2 <_vfprintf_r+0x302>
 8002fdc:	f1b9 0f00 	cmp.w	r9, #0
 8002fe0:	f77f af4c 	ble.w	8002e7c <_vfprintf_r+0xbac>
 8002fe4:	f1b9 0f10 	cmp.w	r9, #16
 8002fe8:	4b13      	ldr	r3, [pc, #76]	; (8003038 <_vfprintf_r+0xd68>)
 8002fea:	f340 8659 	ble.w	8003ca0 <_vfprintf_r+0x19d0>
 8002fee:	4619      	mov	r1, r3
 8002ff0:	4622      	mov	r2, r4
 8002ff2:	4633      	mov	r3, r6
 8002ff4:	2710      	movs	r7, #16
 8002ff6:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8002ffa:	9c07      	ldr	r4, [sp, #28]
 8002ffc:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8002ffe:	460e      	mov	r6, r1
 8003000:	e007      	b.n	8003012 <_vfprintf_r+0xd42>
 8003002:	3308      	adds	r3, #8
 8003004:	f1a9 0910 	sub.w	r9, r9, #16
 8003008:	f1b9 0f10 	cmp.w	r9, #16
 800300c:	f340 8353 	ble.w	80036b6 <_vfprintf_r+0x13e6>
 8003010:	3501      	adds	r5, #1
 8003012:	3210      	adds	r2, #16
 8003014:	2d07      	cmp	r5, #7
 8003016:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 800301a:	e9c3 6700 	strd	r6, r7, [r3]
 800301e:	ddf0      	ble.n	8003002 <_vfprintf_r+0xd32>
 8003020:	aa2a      	add	r2, sp, #168	; 0xa8
 8003022:	4621      	mov	r1, r4
 8003024:	4658      	mov	r0, fp
 8003026:	f003 fc81 	bl	800692c <__sprint_r>
 800302a:	2800      	cmp	r0, #0
 800302c:	f040 8472 	bne.w	8003914 <_vfprintf_r+0x1644>
 8003030:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8003034:	ab2d      	add	r3, sp, #180	; 0xb4
 8003036:	e7e5      	b.n	8003004 <_vfprintf_r+0xd34>
 8003038:	0800701c 	.word	0x0800701c
 800303c:	f018 0f01 	tst.w	r8, #1
 8003040:	f47f aee0 	bne.w	8002e04 <_vfprintf_r+0xb34>
 8003044:	2201      	movs	r2, #1
 8003046:	2d07      	cmp	r5, #7
 8003048:	f8cb 7000 	str.w	r7, [fp]
 800304c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003050:	f8cb 2004 	str.w	r2, [fp, #4]
 8003054:	dc04      	bgt.n	8003060 <_vfprintf_r+0xd90>
 8003056:	3302      	adds	r3, #2
 8003058:	9309      	str	r3, [sp, #36]	; 0x24
 800305a:	f10b 0b10 	add.w	fp, fp, #16
 800305e:	e70d      	b.n	8002e7c <_vfprintf_r+0xbac>
 8003060:	aa2a      	add	r2, sp, #168	; 0xa8
 8003062:	9907      	ldr	r1, [sp, #28]
 8003064:	9803      	ldr	r0, [sp, #12]
 8003066:	f003 fc61 	bl	800692c <__sprint_r>
 800306a:	2800      	cmp	r0, #0
 800306c:	f47f aea8 	bne.w	8002dc0 <_vfprintf_r+0xaf0>
 8003070:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003074:	3301      	adds	r3, #1
 8003076:	9309      	str	r3, [sp, #36]	; 0x24
 8003078:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 800307c:	ae2d      	add	r6, sp, #180	; 0xb4
 800307e:	e6fd      	b.n	8002e7c <_vfprintf_r+0xbac>
 8003080:	aa2a      	add	r2, sp, #168	; 0xa8
 8003082:	9907      	ldr	r1, [sp, #28]
 8003084:	9803      	ldr	r0, [sp, #12]
 8003086:	f003 fc51 	bl	800692c <__sprint_r>
 800308a:	2800      	cmp	r0, #0
 800308c:	f47f ae98 	bne.w	8002dc0 <_vfprintf_r+0xaf0>
 8003090:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003094:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003096:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800309a:	f7ff baf6 	b.w	800268a <_vfprintf_r+0x3ba>
 800309e:	aa2a      	add	r2, sp, #168	; 0xa8
 80030a0:	9907      	ldr	r1, [sp, #28]
 80030a2:	9803      	ldr	r0, [sp, #12]
 80030a4:	f003 fc42 	bl	800692c <__sprint_r>
 80030a8:	2800      	cmp	r0, #0
 80030aa:	f47f ae89 	bne.w	8002dc0 <_vfprintf_r+0xaf0>
 80030ae:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030b0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030b4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80030b6:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80030ba:	443b      	add	r3, r7
 80030bc:	4699      	mov	r9, r3
 80030be:	f040 8357 	bne.w	8003770 <_vfprintf_r+0x14a0>
 80030c2:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80030c4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80030c6:	4293      	cmp	r3, r2
 80030c8:	db49      	blt.n	800315e <_vfprintf_r+0xe8e>
 80030ca:	f018 0f01 	tst.w	r8, #1
 80030ce:	d146      	bne.n	800315e <_vfprintf_r+0xe8e>
 80030d0:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80030d2:	18bd      	adds	r5, r7, r2
 80030d4:	eba5 0509 	sub.w	r5, r5, r9
 80030d8:	1ad3      	subs	r3, r2, r3
 80030da:	429d      	cmp	r5, r3
 80030dc:	bfa8      	it	ge
 80030de:	461d      	movge	r5, r3
 80030e0:	2d00      	cmp	r5, #0
 80030e2:	dd0d      	ble.n	8003100 <_vfprintf_r+0xe30>
 80030e4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80030e6:	f8cb 9000 	str.w	r9, [fp]
 80030ea:	3201      	adds	r2, #1
 80030ec:	442c      	add	r4, r5
 80030ee:	2a07      	cmp	r2, #7
 80030f0:	942c      	str	r4, [sp, #176]	; 0xb0
 80030f2:	f8cb 5004 	str.w	r5, [fp, #4]
 80030f6:	922b      	str	r2, [sp, #172]	; 0xac
 80030f8:	f300 8462 	bgt.w	80039c0 <_vfprintf_r+0x16f0>
 80030fc:	f10b 0b08 	add.w	fp, fp, #8
 8003100:	2d00      	cmp	r5, #0
 8003102:	bfac      	ite	ge
 8003104:	1b5d      	subge	r5, r3, r5
 8003106:	461d      	movlt	r5, r3
 8003108:	2d00      	cmp	r5, #0
 800310a:	f77f ab32 	ble.w	8002772 <_vfprintf_r+0x4a2>
 800310e:	2d10      	cmp	r5, #16
 8003110:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003112:	4bc5      	ldr	r3, [pc, #788]	; (8003428 <_vfprintf_r+0x1158>)
 8003114:	f340 80c4 	ble.w	80032a0 <_vfprintf_r+0xfd0>
 8003118:	4619      	mov	r1, r3
 800311a:	2610      	movs	r6, #16
 800311c:	4623      	mov	r3, r4
 800311e:	9f03      	ldr	r7, [sp, #12]
 8003120:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003124:	460c      	mov	r4, r1
 8003126:	e005      	b.n	8003134 <_vfprintf_r+0xe64>
 8003128:	f10b 0b08 	add.w	fp, fp, #8
 800312c:	3d10      	subs	r5, #16
 800312e:	2d10      	cmp	r5, #16
 8003130:	f340 80b3 	ble.w	800329a <_vfprintf_r+0xfca>
 8003134:	3201      	adds	r2, #1
 8003136:	3310      	adds	r3, #16
 8003138:	2a07      	cmp	r2, #7
 800313a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800313e:	e9cb 4600 	strd	r4, r6, [fp]
 8003142:	ddf1      	ble.n	8003128 <_vfprintf_r+0xe58>
 8003144:	aa2a      	add	r2, sp, #168	; 0xa8
 8003146:	4649      	mov	r1, r9
 8003148:	4638      	mov	r0, r7
 800314a:	f003 fbef 	bl	800692c <__sprint_r>
 800314e:	2800      	cmp	r0, #0
 8003150:	f47f ae38 	bne.w	8002dc4 <_vfprintf_r+0xaf4>
 8003154:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003158:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800315c:	e7e6      	b.n	800312c <_vfprintf_r+0xe5c>
 800315e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003160:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003162:	f8cb 1000 	str.w	r1, [fp]
 8003166:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003168:	f8cb 1004 	str.w	r1, [fp, #4]
 800316c:	3201      	adds	r2, #1
 800316e:	440c      	add	r4, r1
 8003170:	2a07      	cmp	r2, #7
 8003172:	942c      	str	r4, [sp, #176]	; 0xb0
 8003174:	922b      	str	r2, [sp, #172]	; 0xac
 8003176:	f300 828c 	bgt.w	8003692 <_vfprintf_r+0x13c2>
 800317a:	f10b 0b08 	add.w	fp, fp, #8
 800317e:	e7a7      	b.n	80030d0 <_vfprintf_r+0xe00>
 8003180:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003184:	f002 fa94 	bl	80056b0 <__retarget_lock_release_recursive>
 8003188:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800318c:	e628      	b.n	8002de0 <_vfprintf_r+0xb10>
 800318e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003190:	9907      	ldr	r1, [sp, #28]
 8003192:	9803      	ldr	r0, [sp, #12]
 8003194:	f003 fbca 	bl	800692c <__sprint_r>
 8003198:	2800      	cmp	r0, #0
 800319a:	f47f ae11 	bne.w	8002dc0 <_vfprintf_r+0xaf0>
 800319e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 80031a2:	ae2d      	add	r6, sp, #180	; 0xb4
 80031a4:	e638      	b.n	8002e18 <_vfprintf_r+0xb48>
 80031a6:	aa2a      	add	r2, sp, #168	; 0xa8
 80031a8:	9907      	ldr	r1, [sp, #28]
 80031aa:	9803      	ldr	r0, [sp, #12]
 80031ac:	f003 fbbe 	bl	800692c <__sprint_r>
 80031b0:	2800      	cmp	r0, #0
 80031b2:	f47f ae05 	bne.w	8002dc0 <_vfprintf_r+0xaf0>
 80031b6:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80031ba:	ae2d      	add	r6, sp, #180	; 0xb4
 80031bc:	930b      	str	r3, [sp, #44]	; 0x2c
 80031be:	e638      	b.n	8002e32 <_vfprintf_r+0xb62>
 80031c0:	6814      	ldr	r4, [r2, #0]
 80031c2:	9308      	str	r3, [sp, #32]
 80031c4:	2500      	movs	r5, #0
 80031c6:	f7ff bb95 	b.w	80028f4 <_vfprintf_r+0x624>
 80031ca:	6814      	ldr	r4, [r2, #0]
 80031cc:	9308      	str	r3, [sp, #32]
 80031ce:	2500      	movs	r5, #0
 80031d0:	f7ff b9ae 	b.w	8002530 <_vfprintf_r+0x260>
 80031d4:	680c      	ldr	r4, [r1, #0]
 80031d6:	9208      	str	r2, [sp, #32]
 80031d8:	17e5      	asrs	r5, r4, #31
 80031da:	4620      	mov	r0, r4
 80031dc:	4629      	mov	r1, r5
 80031de:	f7ff b9d2 	b.w	8002586 <_vfprintf_r+0x2b6>
 80031e2:	6814      	ldr	r4, [r2, #0]
 80031e4:	9108      	str	r1, [sp, #32]
 80031e6:	2201      	movs	r2, #1
 80031e8:	2500      	movs	r5, #0
 80031ea:	f7ff bb32 	b.w	8002852 <_vfprintf_r+0x582>
 80031ee:	2a01      	cmp	r2, #1
 80031f0:	f47f ab3c 	bne.w	800286c <_vfprintf_r+0x59c>
 80031f4:	e68f      	b.n	8002f16 <_vfprintf_r+0xc46>
 80031f6:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 80031fa:	2200      	movs	r2, #0
 80031fc:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003200:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003204:	af56      	add	r7, sp, #344	; 0x158
 8003206:	4692      	mov	sl, r2
 8003208:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 800320c:	461e      	mov	r6, r3
 800320e:	e00a      	b.n	8003226 <_vfprintf_r+0xf56>
 8003210:	2300      	movs	r3, #0
 8003212:	4620      	mov	r0, r4
 8003214:	4629      	mov	r1, r5
 8003216:	220a      	movs	r2, #10
 8003218:	f7fc fff2 	bl	8000200 <__aeabi_uldivmod>
 800321c:	4604      	mov	r4, r0
 800321e:	460d      	mov	r5, r1
 8003220:	ea54 0305 	orrs.w	r3, r4, r5
 8003224:	d029      	beq.n	800327a <_vfprintf_r+0xfaa>
 8003226:	220a      	movs	r2, #10
 8003228:	2300      	movs	r3, #0
 800322a:	4620      	mov	r0, r4
 800322c:	4629      	mov	r1, r5
 800322e:	f7fc ffe7 	bl	8000200 <__aeabi_uldivmod>
 8003232:	3230      	adds	r2, #48	; 0x30
 8003234:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003238:	f10a 0a01 	add.w	sl, sl, #1
 800323c:	3f01      	subs	r7, #1
 800323e:	2e00      	cmp	r6, #0
 8003240:	d0e6      	beq.n	8003210 <_vfprintf_r+0xf40>
 8003242:	f898 3000 	ldrb.w	r3, [r8]
 8003246:	459a      	cmp	sl, r3
 8003248:	d1e2      	bne.n	8003210 <_vfprintf_r+0xf40>
 800324a:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 800324e:	d0df      	beq.n	8003210 <_vfprintf_r+0xf40>
 8003250:	2d00      	cmp	r5, #0
 8003252:	bf08      	it	eq
 8003254:	2c0a      	cmpeq	r4, #10
 8003256:	d3db      	bcc.n	8003210 <_vfprintf_r+0xf40>
 8003258:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 800325a:	9918      	ldr	r1, [sp, #96]	; 0x60
 800325c:	1aff      	subs	r7, r7, r3
 800325e:	461a      	mov	r2, r3
 8003260:	4638      	mov	r0, r7
 8003262:	f003 faf5 	bl	8006850 <strncpy>
 8003266:	f898 3001 	ldrb.w	r3, [r8, #1]
 800326a:	2b00      	cmp	r3, #0
 800326c:	f000 8496 	beq.w	8003b9c <_vfprintf_r+0x18cc>
 8003270:	f108 0801 	add.w	r8, r8, #1
 8003274:	f04f 0a00 	mov.w	sl, #0
 8003278:	e7ca      	b.n	8003210 <_vfprintf_r+0xf40>
 800327a:	9b04      	ldr	r3, [sp, #16]
 800327c:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003280:	1bdb      	subs	r3, r3, r7
 8003282:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003286:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003288:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 800328c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003290:	9309      	str	r3, [sp, #36]	; 0x24
 8003292:	f7ff b99e 	b.w	80025d2 <_vfprintf_r+0x302>
 8003296:	46c1      	mov	r9, r8
 8003298:	e594      	b.n	8002dc4 <_vfprintf_r+0xaf4>
 800329a:	4621      	mov	r1, r4
 800329c:	461c      	mov	r4, r3
 800329e:	460b      	mov	r3, r1
 80032a0:	3201      	adds	r2, #1
 80032a2:	442c      	add	r4, r5
 80032a4:	2a07      	cmp	r2, #7
 80032a6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80032aa:	e9cb 3500 	strd	r3, r5, [fp]
 80032ae:	f77f aa5e 	ble.w	800276e <_vfprintf_r+0x49e>
 80032b2:	e5ee      	b.n	8002e92 <_vfprintf_r+0xbc2>
 80032b4:	f018 0f10 	tst.w	r8, #16
 80032b8:	f040 80f8 	bne.w	80034ac <_vfprintf_r+0x11dc>
 80032bc:	f018 0f40 	tst.w	r8, #64	; 0x40
 80032c0:	f000 8351 	beq.w	8003966 <_vfprintf_r+0x1696>
 80032c4:	9a05      	ldr	r2, [sp, #20]
 80032c6:	801a      	strh	r2, [r3, #0]
 80032c8:	4657      	mov	r7, sl
 80032ca:	f7ff baa7 	b.w	800281c <_vfprintf_r+0x54c>
 80032ce:	aa2a      	add	r2, sp, #168	; 0xa8
 80032d0:	9907      	ldr	r1, [sp, #28]
 80032d2:	9803      	ldr	r0, [sp, #12]
 80032d4:	f003 fb2a 	bl	800692c <__sprint_r>
 80032d8:	2800      	cmp	r0, #0
 80032da:	f47f ad71 	bne.w	8002dc0 <_vfprintf_r+0xaf0>
 80032de:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80032e0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032e4:	f7ff b9f5 	b.w	80026d2 <_vfprintf_r+0x402>
 80032e8:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80032ec:	4602      	mov	r2, r0
 80032ee:	460b      	mov	r3, r1
 80032f0:	f7fd febc 	bl	800106c <__aeabi_dcmpun>
 80032f4:	2800      	cmp	r0, #0
 80032f6:	f040 8491 	bne.w	8003c1c <_vfprintf_r+0x194c>
 80032fa:	2e61      	cmp	r6, #97	; 0x61
 80032fc:	f000 8111 	beq.w	8003522 <_vfprintf_r+0x1252>
 8003300:	2e41      	cmp	r6, #65	; 0x41
 8003302:	f000 8377 	beq.w	80039f4 <_vfprintf_r+0x1724>
 8003306:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 800330a:	f026 0220 	bic.w	r2, r6, #32
 800330e:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003312:	930e      	str	r3, [sp, #56]	; 0x38
 8003314:	9204      	str	r2, [sp, #16]
 8003316:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003318:	f000 842d 	beq.w	8003b76 <_vfprintf_r+0x18a6>
 800331c:	2a47      	cmp	r2, #71	; 0x47
 800331e:	f000 8424 	beq.w	8003b6a <_vfprintf_r+0x189a>
 8003322:	2b00      	cmp	r3, #0
 8003324:	f2c0 82f9 	blt.w	800391a <_vfprintf_r+0x164a>
 8003328:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800332c:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003330:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003334:	2e66      	cmp	r6, #102	; 0x66
 8003336:	f000 83eb 	beq.w	8003b10 <_vfprintf_r+0x1840>
 800333a:	2e46      	cmp	r6, #70	; 0x46
 800333c:	f000 847e 	beq.w	8003c3c <_vfprintf_r+0x196c>
 8003340:	9b04      	ldr	r3, [sp, #16]
 8003342:	9803      	ldr	r0, [sp, #12]
 8003344:	2b45      	cmp	r3, #69	; 0x45
 8003346:	bf0c      	ite	eq
 8003348:	f109 0501 	addeq.w	r5, r9, #1
 800334c:	464d      	movne	r5, r9
 800334e:	aa28      	add	r2, sp, #160	; 0xa0
 8003350:	ab25      	add	r3, sp, #148	; 0x94
 8003352:	e9cd 3200 	strd	r3, r2, [sp]
 8003356:	2102      	movs	r1, #2
 8003358:	ab24      	add	r3, sp, #144	; 0x90
 800335a:	462a      	mov	r2, r5
 800335c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003360:	f000 fe3e 	bl	8003fe0 <_dtoa_r>
 8003364:	2e67      	cmp	r6, #103	; 0x67
 8003366:	4607      	mov	r7, r0
 8003368:	f040 849c 	bne.w	8003ca4 <_vfprintf_r+0x19d4>
 800336c:	f018 0f01 	tst.w	r8, #1
 8003370:	f040 83f9 	bne.w	8003b66 <_vfprintf_r+0x1896>
 8003374:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003376:	4640      	mov	r0, r8
 8003378:	1bdb      	subs	r3, r3, r7
 800337a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800337e:	9310      	str	r3, [sp, #64]	; 0x40
 8003380:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003382:	9311      	str	r3, [sp, #68]	; 0x44
 8003384:	9b04      	ldr	r3, [sp, #16]
 8003386:	2b47      	cmp	r3, #71	; 0x47
 8003388:	f000 81e7 	beq.w	800375a <_vfprintf_r+0x148a>
 800338c:	9b04      	ldr	r3, [sp, #16]
 800338e:	2b46      	cmp	r3, #70	; 0x46
 8003390:	f000 8300 	beq.w	8003994 <_vfprintf_r+0x16c4>
 8003394:	9904      	ldr	r1, [sp, #16]
 8003396:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003398:	b2f2      	uxtb	r2, r6
 800339a:	2941      	cmp	r1, #65	; 0x41
 800339c:	bf08      	it	eq
 800339e:	320f      	addeq	r2, #15
 80033a0:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 80033a4:	bf06      	itte	eq
 80033a6:	b2d2      	uxtbeq	r2, r2
 80033a8:	2101      	moveq	r1, #1
 80033aa:	2100      	movne	r1, #0
 80033ac:	2b00      	cmp	r3, #0
 80033ae:	9324      	str	r3, [sp, #144]	; 0x90
 80033b0:	bfb8      	it	lt
 80033b2:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 80033b4:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 80033b8:	bfba      	itte	lt
 80033ba:	f1c3 0301 	rsblt	r3, r3, #1
 80033be:	222d      	movlt	r2, #45	; 0x2d
 80033c0:	222b      	movge	r2, #43	; 0x2b
 80033c2:	2b09      	cmp	r3, #9
 80033c4:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 80033c8:	f300 83f9 	bgt.w	8003bbe <_vfprintf_r+0x18ee>
 80033cc:	2900      	cmp	r1, #0
 80033ce:	f040 8487 	bne.w	8003ce0 <_vfprintf_r+0x1a10>
 80033d2:	2230      	movs	r2, #48	; 0x30
 80033d4:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 80033d8:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 80033dc:	3330      	adds	r3, #48	; 0x30
 80033de:	7013      	strb	r3, [r2, #0]
 80033e0:	1c53      	adds	r3, r2, #1
 80033e2:	aa26      	add	r2, sp, #152	; 0x98
 80033e4:	1a9b      	subs	r3, r3, r2
 80033e6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80033e8:	9319      	str	r3, [sp, #100]	; 0x64
 80033ea:	2a01      	cmp	r2, #1
 80033ec:	4413      	add	r3, r2
 80033ee:	9309      	str	r3, [sp, #36]	; 0x24
 80033f0:	f340 8442 	ble.w	8003c78 <_vfprintf_r+0x19a8>
 80033f4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80033f6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80033f8:	4413      	add	r3, r2
 80033fa:	9309      	str	r3, [sp, #36]	; 0x24
 80033fc:	2300      	movs	r3, #0
 80033fe:	930f      	str	r3, [sp, #60]	; 0x3c
 8003400:	9314      	str	r3, [sp, #80]	; 0x50
 8003402:	9311      	str	r3, [sp, #68]	; 0x44
 8003404:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003406:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 800340a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800340e:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003412:	9304      	str	r3, [sp, #16]
 8003414:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003416:	2b00      	cmp	r3, #0
 8003418:	f040 8275 	bne.w	8003906 <_vfprintf_r+0x1636>
 800341c:	4699      	mov	r9, r3
 800341e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003422:	f7ff b8e2 	b.w	80025ea <_vfprintf_r+0x31a>
 8003426:	bf00      	nop
 8003428:	0800701c 	.word	0x0800701c
 800342c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800342e:	49bd      	ldr	r1, [pc, #756]	; (8003724 <_vfprintf_r+0x1454>)
 8003430:	f8cb 1000 	str.w	r1, [fp]
 8003434:	3201      	adds	r2, #1
 8003436:	3401      	adds	r4, #1
 8003438:	2101      	movs	r1, #1
 800343a:	2a07      	cmp	r2, #7
 800343c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003440:	f8cb 1004 	str.w	r1, [fp, #4]
 8003444:	dc60      	bgt.n	8003508 <_vfprintf_r+0x1238>
 8003446:	f10b 0b08 	add.w	fp, fp, #8
 800344a:	b92b      	cbnz	r3, 8003458 <_vfprintf_r+0x1188>
 800344c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800344e:	b91a      	cbnz	r2, 8003458 <_vfprintf_r+0x1188>
 8003450:	f018 0f01 	tst.w	r8, #1
 8003454:	f43f a98d 	beq.w	8002772 <_vfprintf_r+0x4a2>
 8003458:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800345a:	9916      	ldr	r1, [sp, #88]	; 0x58
 800345c:	f8cb 1000 	str.w	r1, [fp]
 8003460:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003462:	f8cb 1004 	str.w	r1, [fp, #4]
 8003466:	3201      	adds	r2, #1
 8003468:	440c      	add	r4, r1
 800346a:	2a07      	cmp	r2, #7
 800346c:	942c      	str	r4, [sp, #176]	; 0xb0
 800346e:	922b      	str	r2, [sp, #172]	; 0xac
 8003470:	f300 8282 	bgt.w	8003978 <_vfprintf_r+0x16a8>
 8003474:	f10b 0b08 	add.w	fp, fp, #8
 8003478:	2b00      	cmp	r3, #0
 800347a:	f2c0 82e7 	blt.w	8003a4c <_vfprintf_r+0x177c>
 800347e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003480:	3201      	adds	r2, #1
 8003482:	441c      	add	r4, r3
 8003484:	2a07      	cmp	r2, #7
 8003486:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800348a:	e9cb 7300 	strd	r7, r3, [fp]
 800348e:	f77f a96e 	ble.w	800276e <_vfprintf_r+0x49e>
 8003492:	e4fe      	b.n	8002e92 <_vfprintf_r+0xbc2>
 8003494:	aa2a      	add	r2, sp, #168	; 0xa8
 8003496:	9907      	ldr	r1, [sp, #28]
 8003498:	9803      	ldr	r0, [sp, #12]
 800349a:	f003 fa47 	bl	800692c <__sprint_r>
 800349e:	2800      	cmp	r0, #0
 80034a0:	f47f ac8e 	bne.w	8002dc0 <_vfprintf_r+0xaf0>
 80034a4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034a8:	f7ff bbf0 	b.w	8002c8c <_vfprintf_r+0x9bc>
 80034ac:	9a05      	ldr	r2, [sp, #20]
 80034ae:	601a      	str	r2, [r3, #0]
 80034b0:	4657      	mov	r7, sl
 80034b2:	f7ff b9b3 	b.w	800281c <_vfprintf_r+0x54c>
 80034b6:	8814      	ldrh	r4, [r2, #0]
 80034b8:	9108      	str	r1, [sp, #32]
 80034ba:	2500      	movs	r5, #0
 80034bc:	2201      	movs	r2, #1
 80034be:	f7ff b9c8 	b.w	8002852 <_vfprintf_r+0x582>
 80034c2:	8814      	ldrh	r4, [r2, #0]
 80034c4:	9308      	str	r3, [sp, #32]
 80034c6:	2500      	movs	r5, #0
 80034c8:	f7ff ba14 	b.w	80028f4 <_vfprintf_r+0x624>
 80034cc:	f9b1 4000 	ldrsh.w	r4, [r1]
 80034d0:	9208      	str	r2, [sp, #32]
 80034d2:	17e5      	asrs	r5, r4, #31
 80034d4:	4620      	mov	r0, r4
 80034d6:	4629      	mov	r1, r5
 80034d8:	f7ff b855 	b.w	8002586 <_vfprintf_r+0x2b6>
 80034dc:	8814      	ldrh	r4, [r2, #0]
 80034de:	9308      	str	r3, [sp, #32]
 80034e0:	2500      	movs	r5, #0
 80034e2:	f7ff b825 	b.w	8002530 <_vfprintf_r+0x260>
 80034e6:	222d      	movs	r2, #45	; 0x2d
 80034e8:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80034ec:	f7ff baa2 	b.w	8002a34 <_vfprintf_r+0x764>
 80034f0:	aa2a      	add	r2, sp, #168	; 0xa8
 80034f2:	9907      	ldr	r1, [sp, #28]
 80034f4:	9803      	ldr	r0, [sp, #12]
 80034f6:	f003 fa19 	bl	800692c <__sprint_r>
 80034fa:	2800      	cmp	r0, #0
 80034fc:	f47f ac60 	bne.w	8002dc0 <_vfprintf_r+0xaf0>
 8003500:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003502:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003506:	e534      	b.n	8002f72 <_vfprintf_r+0xca2>
 8003508:	aa2a      	add	r2, sp, #168	; 0xa8
 800350a:	9907      	ldr	r1, [sp, #28]
 800350c:	9803      	ldr	r0, [sp, #12]
 800350e:	f003 fa0d 	bl	800692c <__sprint_r>
 8003512:	2800      	cmp	r0, #0
 8003514:	f47f ac54 	bne.w	8002dc0 <_vfprintf_r+0xaf0>
 8003518:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800351a:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800351c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003520:	e793      	b.n	800344a <_vfprintf_r+0x117a>
 8003522:	2330      	movs	r3, #48	; 0x30
 8003524:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003528:	2378      	movs	r3, #120	; 0x78
 800352a:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 800352e:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003532:	f048 0402 	orr.w	r4, r8, #2
 8003536:	f300 82b0 	bgt.w	8003a9a <_vfprintf_r+0x17ca>
 800353a:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 800353e:	930e      	str	r3, [sp, #56]	; 0x38
 8003540:	f026 0320 	bic.w	r3, r6, #32
 8003544:	9304      	str	r3, [sp, #16]
 8003546:	2200      	movs	r2, #0
 8003548:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800354a:	920a      	str	r2, [sp, #40]	; 0x28
 800354c:	46a0      	mov	r8, r4
 800354e:	af3d      	add	r7, sp, #244	; 0xf4
 8003550:	2b00      	cmp	r3, #0
 8003552:	f2c0 81e3 	blt.w	800391c <_vfprintf_r+0x164c>
 8003556:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800355a:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800355e:	2300      	movs	r3, #0
 8003560:	930b      	str	r3, [sp, #44]	; 0x2c
 8003562:	2e61      	cmp	r6, #97	; 0x61
 8003564:	f000 8255 	beq.w	8003a12 <_vfprintf_r+0x1742>
 8003568:	2e41      	cmp	r6, #65	; 0x41
 800356a:	f47f aee3 	bne.w	8003334 <_vfprintf_r+0x1064>
 800356e:	a824      	add	r0, sp, #144	; 0x90
 8003570:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003574:	f003 f8e2 	bl	800673c <frexp>
 8003578:	2200      	movs	r2, #0
 800357a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800357e:	ec51 0b10 	vmov	r0, r1, d0
 8003582:	f7fd fad9 	bl	8000b38 <__aeabi_dmul>
 8003586:	2200      	movs	r2, #0
 8003588:	2300      	movs	r3, #0
 800358a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800358e:	f7fd fd3b 	bl	8001008 <__aeabi_dcmpeq>
 8003592:	2800      	cmp	r0, #0
 8003594:	f040 8305 	bne.w	8003ba2 <_vfprintf_r+0x18d2>
 8003598:	4b63      	ldr	r3, [pc, #396]	; (8003728 <_vfprintf_r+0x1458>)
 800359a:	9309      	str	r3, [sp, #36]	; 0x24
 800359c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 80035a0:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 80035a4:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80035a8:	9721      	str	r7, [sp, #132]	; 0x84
 80035aa:	46b9      	mov	r9, r7
 80035ac:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 80035b0:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 80035b4:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80035b8:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 80035bc:	e003      	b.n	80035c6 <_vfprintf_r+0x12f6>
 80035be:	f7fd fd23 	bl	8001008 <__aeabi_dcmpeq>
 80035c2:	bb20      	cbnz	r0, 800360e <_vfprintf_r+0x133e>
 80035c4:	46a9      	mov	r9, r5
 80035c6:	2200      	movs	r2, #0
 80035c8:	4b58      	ldr	r3, [pc, #352]	; (800372c <_vfprintf_r+0x145c>)
 80035ca:	4630      	mov	r0, r6
 80035cc:	4639      	mov	r1, r7
 80035ce:	f7fd fab3 	bl	8000b38 <__aeabi_dmul>
 80035d2:	460f      	mov	r7, r1
 80035d4:	4606      	mov	r6, r0
 80035d6:	f7fd fd5f 	bl	8001098 <__aeabi_d2iz>
 80035da:	4680      	mov	r8, r0
 80035dc:	f7fd fa42 	bl	8000a64 <__aeabi_i2d>
 80035e0:	4602      	mov	r2, r0
 80035e2:	460b      	mov	r3, r1
 80035e4:	4630      	mov	r0, r6
 80035e6:	4639      	mov	r1, r7
 80035e8:	f7fd f8ee 	bl	80007c8 <__aeabi_dsub>
 80035ec:	464d      	mov	r5, r9
 80035ee:	f81a c008 	ldrb.w	ip, [sl, r8]
 80035f2:	f805 cb01 	strb.w	ip, [r5], #1
 80035f6:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 80035fa:	46a3      	mov	fp, r4
 80035fc:	4606      	mov	r6, r0
 80035fe:	460f      	mov	r7, r1
 8003600:	f04f 0200 	mov.w	r2, #0
 8003604:	f04f 0300 	mov.w	r3, #0
 8003608:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 800360c:	d1d7      	bne.n	80035be <_vfprintf_r+0x12ee>
 800360e:	4630      	mov	r0, r6
 8003610:	4639      	mov	r1, r7
 8003612:	2200      	movs	r2, #0
 8003614:	4b46      	ldr	r3, [pc, #280]	; (8003730 <_vfprintf_r+0x1460>)
 8003616:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 800361a:	9e10      	ldr	r6, [sp, #64]	; 0x40
 800361c:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003620:	4644      	mov	r4, r8
 8003622:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003626:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 800362a:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 800362e:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003632:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003634:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003638:	f7fd fd0e 	bl	8001058 <__aeabi_dcmpgt>
 800363c:	2800      	cmp	r0, #0
 800363e:	f040 8176 	bne.w	800392e <_vfprintf_r+0x165e>
 8003642:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003646:	2200      	movs	r2, #0
 8003648:	4b39      	ldr	r3, [pc, #228]	; (8003730 <_vfprintf_r+0x1460>)
 800364a:	f7fd fcdd 	bl	8001008 <__aeabi_dcmpeq>
 800364e:	b110      	cbz	r0, 8003656 <_vfprintf_r+0x1386>
 8003650:	07e2      	lsls	r2, r4, #31
 8003652:	f100 816c 	bmi.w	800392e <_vfprintf_r+0x165e>
 8003656:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003658:	2b00      	cmp	r3, #0
 800365a:	db07      	blt.n	800366c <_vfprintf_r+0x139c>
 800365c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800365e:	3301      	adds	r3, #1
 8003660:	442b      	add	r3, r5
 8003662:	2230      	movs	r2, #48	; 0x30
 8003664:	f805 2b01 	strb.w	r2, [r5], #1
 8003668:	42ab      	cmp	r3, r5
 800366a:	d1fb      	bne.n	8003664 <_vfprintf_r+0x1394>
 800366c:	1beb      	subs	r3, r5, r7
 800366e:	4640      	mov	r0, r8
 8003670:	9310      	str	r3, [sp, #64]	; 0x40
 8003672:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003676:	e683      	b.n	8003380 <_vfprintf_r+0x10b0>
 8003678:	f8cd 9010 	str.w	r9, [sp, #16]
 800367c:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003680:	9408      	str	r4, [sp, #32]
 8003682:	4681      	mov	r9, r0
 8003684:	900f      	str	r0, [sp, #60]	; 0x3c
 8003686:	9014      	str	r0, [sp, #80]	; 0x50
 8003688:	9011      	str	r0, [sp, #68]	; 0x44
 800368a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800368e:	f7fe bfac 	b.w	80025ea <_vfprintf_r+0x31a>
 8003692:	aa2a      	add	r2, sp, #168	; 0xa8
 8003694:	9907      	ldr	r1, [sp, #28]
 8003696:	9803      	ldr	r0, [sp, #12]
 8003698:	f003 f948 	bl	800692c <__sprint_r>
 800369c:	2800      	cmp	r0, #0
 800369e:	f47f ab8f 	bne.w	8002dc0 <_vfprintf_r+0xaf0>
 80036a2:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80036a4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036a6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036aa:	e511      	b.n	80030d0 <_vfprintf_r+0xe00>
 80036ac:	4252      	negs	r2, r2
 80036ae:	9206      	str	r2, [sp, #24]
 80036b0:	9308      	str	r3, [sp, #32]
 80036b2:	f7ff b96d 	b.w	8002990 <_vfprintf_r+0x6c0>
 80036b6:	4614      	mov	r4, r2
 80036b8:	4632      	mov	r2, r6
 80036ba:	461e      	mov	r6, r3
 80036bc:	4613      	mov	r3, r2
 80036be:	462a      	mov	r2, r5
 80036c0:	3201      	adds	r2, #1
 80036c2:	9209      	str	r2, [sp, #36]	; 0x24
 80036c4:	f106 0208 	add.w	r2, r6, #8
 80036c8:	e9c6 3900 	strd	r3, r9, [r6]
 80036cc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80036ce:	932b      	str	r3, [sp, #172]	; 0xac
 80036d0:	444c      	add	r4, r9
 80036d2:	2b07      	cmp	r3, #7
 80036d4:	942c      	str	r4, [sp, #176]	; 0xb0
 80036d6:	f73f acc3 	bgt.w	8003060 <_vfprintf_r+0xd90>
 80036da:	3301      	adds	r3, #1
 80036dc:	9309      	str	r3, [sp, #36]	; 0x24
 80036de:	f102 0b08 	add.w	fp, r2, #8
 80036e2:	4616      	mov	r6, r2
 80036e4:	f7ff bbca 	b.w	8002e7c <_vfprintf_r+0xbac>
 80036e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80036ea:	9907      	ldr	r1, [sp, #28]
 80036ec:	9803      	ldr	r0, [sp, #12]
 80036ee:	f003 f91d 	bl	800692c <__sprint_r>
 80036f2:	2800      	cmp	r0, #0
 80036f4:	f47f ab64 	bne.w	8002dc0 <_vfprintf_r+0xaf0>
 80036f8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036fa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036fe:	f7ff bade 	b.w	8002cbe <_vfprintf_r+0x9ee>
 8003702:	464b      	mov	r3, r9
 8003704:	2b06      	cmp	r3, #6
 8003706:	bf28      	it	cs
 8003708:	2306      	movcs	r3, #6
 800370a:	46b9      	mov	r9, r7
 800370c:	970f      	str	r7, [sp, #60]	; 0x3c
 800370e:	9714      	str	r7, [sp, #80]	; 0x50
 8003710:	9711      	str	r7, [sp, #68]	; 0x44
 8003712:	970a      	str	r7, [sp, #40]	; 0x28
 8003714:	463a      	mov	r2, r7
 8003716:	9304      	str	r3, [sp, #16]
 8003718:	e9cd 4308 	strd	r4, r3, [sp, #32]
 800371c:	4f05      	ldr	r7, [pc, #20]	; (8003734 <_vfprintf_r+0x1464>)
 800371e:	f7fe bf64 	b.w	80025ea <_vfprintf_r+0x31a>
 8003722:	bf00      	nop
 8003724:	08007008 	.word	0x08007008
 8003728:	08006fec 	.word	0x08006fec
 800372c:	40300000 	.word	0x40300000
 8003730:	3fe00000 	.word	0x3fe00000
 8003734:	08007000 	.word	0x08007000
 8003738:	460c      	mov	r4, r1
 800373a:	4639      	mov	r1, r7
 800373c:	465f      	mov	r7, fp
 800373e:	469b      	mov	fp, r3
 8003740:	460b      	mov	r3, r1
 8003742:	3201      	adds	r2, #1
 8003744:	442c      	add	r4, r5
 8003746:	2a07      	cmp	r2, #7
 8003748:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800374c:	e9cb 3500 	strd	r3, r5, [fp]
 8003750:	f73f aca5 	bgt.w	800309e <_vfprintf_r+0xdce>
 8003754:	f10b 0b08 	add.w	fp, fp, #8
 8003758:	e4ac      	b.n	80030b4 <_vfprintf_r+0xde4>
 800375a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800375c:	1cda      	adds	r2, r3, #3
 800375e:	db02      	blt.n	8003766 <_vfprintf_r+0x1496>
 8003760:	4599      	cmp	r9, r3
 8003762:	f280 80b5 	bge.w	80038d0 <_vfprintf_r+0x1600>
 8003766:	3e02      	subs	r6, #2
 8003768:	f026 0320 	bic.w	r3, r6, #32
 800376c:	9304      	str	r3, [sp, #16]
 800376e:	e611      	b.n	8003394 <_vfprintf_r+0x10c4>
 8003770:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003772:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003776:	465a      	mov	r2, fp
 8003778:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 800377c:	18fb      	adds	r3, r7, r3
 800377e:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003782:	970c      	str	r7, [sp, #48]	; 0x30
 8003784:	4eaf      	ldr	r6, [pc, #700]	; (8003a44 <_vfprintf_r+0x1774>)
 8003786:	f8dd a01c 	ldr.w	sl, [sp, #28]
 800378a:	9309      	str	r3, [sp, #36]	; 0x24
 800378c:	464f      	mov	r7, r9
 800378e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003792:	4621      	mov	r1, r4
 8003794:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003796:	2b00      	cmp	r3, #0
 8003798:	d05b      	beq.n	8003852 <_vfprintf_r+0x1582>
 800379a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800379c:	2b00      	cmp	r3, #0
 800379e:	d154      	bne.n	800384a <_vfprintf_r+0x157a>
 80037a0:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80037a2:	3b01      	subs	r3, #1
 80037a4:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80037a8:	9314      	str	r3, [sp, #80]	; 0x50
 80037aa:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80037ac:	9818      	ldr	r0, [sp, #96]	; 0x60
 80037ae:	6010      	str	r0, [r2, #0]
 80037b0:	3301      	adds	r3, #1
 80037b2:	4459      	add	r1, fp
 80037b4:	2b07      	cmp	r3, #7
 80037b6:	912c      	str	r1, [sp, #176]	; 0xb0
 80037b8:	f8c2 b004 	str.w	fp, [r2, #4]
 80037bc:	932b      	str	r3, [sp, #172]	; 0xac
 80037be:	dc68      	bgt.n	8003892 <_vfprintf_r+0x15c2>
 80037c0:	3208      	adds	r2, #8
 80037c2:	9809      	ldr	r0, [sp, #36]	; 0x24
 80037c4:	f898 3000 	ldrb.w	r3, [r8]
 80037c8:	1bc5      	subs	r5, r0, r7
 80037ca:	429d      	cmp	r5, r3
 80037cc:	bfa8      	it	ge
 80037ce:	461d      	movge	r5, r3
 80037d0:	2d00      	cmp	r5, #0
 80037d2:	dd0b      	ble.n	80037ec <_vfprintf_r+0x151c>
 80037d4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80037d6:	6017      	str	r7, [r2, #0]
 80037d8:	3301      	adds	r3, #1
 80037da:	4429      	add	r1, r5
 80037dc:	2b07      	cmp	r3, #7
 80037de:	912c      	str	r1, [sp, #176]	; 0xb0
 80037e0:	6055      	str	r5, [r2, #4]
 80037e2:	932b      	str	r3, [sp, #172]	; 0xac
 80037e4:	dc5e      	bgt.n	80038a4 <_vfprintf_r+0x15d4>
 80037e6:	f898 3000 	ldrb.w	r3, [r8]
 80037ea:	3208      	adds	r2, #8
 80037ec:	2d00      	cmp	r5, #0
 80037ee:	bfac      	ite	ge
 80037f0:	1b5d      	subge	r5, r3, r5
 80037f2:	461d      	movlt	r5, r3
 80037f4:	2d00      	cmp	r5, #0
 80037f6:	dd26      	ble.n	8003846 <_vfprintf_r+0x1576>
 80037f8:	2d10      	cmp	r5, #16
 80037fa:	982b      	ldr	r0, [sp, #172]	; 0xac
 80037fc:	dd3c      	ble.n	8003878 <_vfprintf_r+0x15a8>
 80037fe:	2410      	movs	r4, #16
 8003800:	e003      	b.n	800380a <_vfprintf_r+0x153a>
 8003802:	3208      	adds	r2, #8
 8003804:	3d10      	subs	r5, #16
 8003806:	2d10      	cmp	r5, #16
 8003808:	dd36      	ble.n	8003878 <_vfprintf_r+0x15a8>
 800380a:	3001      	adds	r0, #1
 800380c:	3110      	adds	r1, #16
 800380e:	2807      	cmp	r0, #7
 8003810:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003814:	e9c2 6400 	strd	r6, r4, [r2]
 8003818:	ddf3      	ble.n	8003802 <_vfprintf_r+0x1532>
 800381a:	aa2a      	add	r2, sp, #168	; 0xa8
 800381c:	4651      	mov	r1, sl
 800381e:	4648      	mov	r0, r9
 8003820:	f003 f884 	bl	800692c <__sprint_r>
 8003824:	2800      	cmp	r0, #0
 8003826:	d150      	bne.n	80038ca <_vfprintf_r+0x15fa>
 8003828:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 800382c:	aa2d      	add	r2, sp, #180	; 0xb4
 800382e:	e7e9      	b.n	8003804 <_vfprintf_r+0x1534>
 8003830:	aa2a      	add	r2, sp, #168	; 0xa8
 8003832:	4651      	mov	r1, sl
 8003834:	4648      	mov	r0, r9
 8003836:	f003 f879 	bl	800692c <__sprint_r>
 800383a:	2800      	cmp	r0, #0
 800383c:	d145      	bne.n	80038ca <_vfprintf_r+0x15fa>
 800383e:	f898 3000 	ldrb.w	r3, [r8]
 8003842:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003844:	aa2d      	add	r2, sp, #180	; 0xb4
 8003846:	441f      	add	r7, r3
 8003848:	e7a4      	b.n	8003794 <_vfprintf_r+0x14c4>
 800384a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800384c:	3b01      	subs	r3, #1
 800384e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003850:	e7ab      	b.n	80037aa <_vfprintf_r+0x14da>
 8003852:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003854:	2b00      	cmp	r3, #0
 8003856:	d1f8      	bne.n	800384a <_vfprintf_r+0x157a>
 8003858:	46b9      	mov	r9, r7
 800385a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800385c:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 800385e:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003862:	18fb      	adds	r3, r7, r3
 8003864:	4599      	cmp	r9, r3
 8003866:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 800386a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800386e:	4693      	mov	fp, r2
 8003870:	460c      	mov	r4, r1
 8003872:	bf28      	it	cs
 8003874:	4699      	movcs	r9, r3
 8003876:	e424      	b.n	80030c2 <_vfprintf_r+0xdf2>
 8003878:	3001      	adds	r0, #1
 800387a:	4429      	add	r1, r5
 800387c:	2807      	cmp	r0, #7
 800387e:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003882:	e9c2 6500 	strd	r6, r5, [r2]
 8003886:	dcd3      	bgt.n	8003830 <_vfprintf_r+0x1560>
 8003888:	f898 3000 	ldrb.w	r3, [r8]
 800388c:	3208      	adds	r2, #8
 800388e:	441f      	add	r7, r3
 8003890:	e780      	b.n	8003794 <_vfprintf_r+0x14c4>
 8003892:	aa2a      	add	r2, sp, #168	; 0xa8
 8003894:	4651      	mov	r1, sl
 8003896:	4648      	mov	r0, r9
 8003898:	f003 f848 	bl	800692c <__sprint_r>
 800389c:	b9a8      	cbnz	r0, 80038ca <_vfprintf_r+0x15fa>
 800389e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80038a0:	aa2d      	add	r2, sp, #180	; 0xb4
 80038a2:	e78e      	b.n	80037c2 <_vfprintf_r+0x14f2>
 80038a4:	aa2a      	add	r2, sp, #168	; 0xa8
 80038a6:	4651      	mov	r1, sl
 80038a8:	4648      	mov	r0, r9
 80038aa:	f003 f83f 	bl	800692c <__sprint_r>
 80038ae:	b960      	cbnz	r0, 80038ca <_vfprintf_r+0x15fa>
 80038b0:	f898 3000 	ldrb.w	r3, [r8]
 80038b4:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80038b6:	aa2d      	add	r2, sp, #180	; 0xb4
 80038b8:	e798      	b.n	80037ec <_vfprintf_r+0x151c>
 80038ba:	4638      	mov	r0, r7
 80038bc:	f7fc fec0 	bl	8000640 <strlen>
 80038c0:	46a9      	mov	r9, r5
 80038c2:	4603      	mov	r3, r0
 80038c4:	9009      	str	r0, [sp, #36]	; 0x24
 80038c6:	f7ff b8f4 	b.w	8002ab2 <_vfprintf_r+0x7e2>
 80038ca:	46d1      	mov	r9, sl
 80038cc:	f7ff ba7a 	b.w	8002dc4 <_vfprintf_r+0xaf4>
 80038d0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80038d2:	4619      	mov	r1, r3
 80038d4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80038d6:	4299      	cmp	r1, r3
 80038d8:	f300 8082 	bgt.w	80039e0 <_vfprintf_r+0x1710>
 80038dc:	07c4      	lsls	r4, r0, #31
 80038de:	f140 816b 	bpl.w	8003bb8 <_vfprintf_r+0x18e8>
 80038e2:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80038e4:	4413      	add	r3, r2
 80038e6:	9309      	str	r3, [sp, #36]	; 0x24
 80038e8:	0541      	lsls	r1, r0, #21
 80038ea:	d503      	bpl.n	80038f4 <_vfprintf_r+0x1624>
 80038ec:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80038ee:	2b00      	cmp	r3, #0
 80038f0:	f300 80e6 	bgt.w	8003ac0 <_vfprintf_r+0x17f0>
 80038f4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80038f6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80038fa:	9304      	str	r3, [sp, #16]
 80038fc:	2667      	movs	r6, #103	; 0x67
 80038fe:	2300      	movs	r3, #0
 8003900:	930f      	str	r3, [sp, #60]	; 0x3c
 8003902:	9314      	str	r3, [sp, #80]	; 0x50
 8003904:	e586      	b.n	8003414 <_vfprintf_r+0x1144>
 8003906:	222d      	movs	r2, #45	; 0x2d
 8003908:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800390c:	f04f 0900 	mov.w	r9, #0
 8003910:	f7fe be6c 	b.w	80025ec <_vfprintf_r+0x31c>
 8003914:	46a1      	mov	r9, r4
 8003916:	f7ff ba55 	b.w	8002dc4 <_vfprintf_r+0xaf4>
 800391a:	900a      	str	r0, [sp, #40]	; 0x28
 800391c:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003920:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003924:	931f      	str	r3, [sp, #124]	; 0x7c
 8003926:	232d      	movs	r3, #45	; 0x2d
 8003928:	911e      	str	r1, [sp, #120]	; 0x78
 800392a:	930b      	str	r3, [sp, #44]	; 0x2c
 800392c:	e619      	b.n	8003562 <_vfprintf_r+0x1292>
 800392e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003930:	9328      	str	r3, [sp, #160]	; 0xa0
 8003932:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003934:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003938:	7bd9      	ldrb	r1, [r3, #15]
 800393a:	4291      	cmp	r1, r2
 800393c:	462b      	mov	r3, r5
 800393e:	d109      	bne.n	8003954 <_vfprintf_r+0x1684>
 8003940:	2030      	movs	r0, #48	; 0x30
 8003942:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003946:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003948:	1e5a      	subs	r2, r3, #1
 800394a:	9228      	str	r2, [sp, #160]	; 0xa0
 800394c:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003950:	4291      	cmp	r1, r2
 8003952:	d0f6      	beq.n	8003942 <_vfprintf_r+0x1672>
 8003954:	2a39      	cmp	r2, #57	; 0x39
 8003956:	bf0b      	itete	eq
 8003958:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 800395a:	3201      	addne	r2, #1
 800395c:	7a92      	ldrbeq	r2, [r2, #10]
 800395e:	b2d2      	uxtbne	r2, r2
 8003960:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003964:	e682      	b.n	800366c <_vfprintf_r+0x139c>
 8003966:	f418 7f00 	tst.w	r8, #512	; 0x200
 800396a:	f43f ad9f 	beq.w	80034ac <_vfprintf_r+0x11dc>
 800396e:	9a05      	ldr	r2, [sp, #20]
 8003970:	701a      	strb	r2, [r3, #0]
 8003972:	4657      	mov	r7, sl
 8003974:	f7fe bf52 	b.w	800281c <_vfprintf_r+0x54c>
 8003978:	aa2a      	add	r2, sp, #168	; 0xa8
 800397a:	9907      	ldr	r1, [sp, #28]
 800397c:	9803      	ldr	r0, [sp, #12]
 800397e:	f002 ffd5 	bl	800692c <__sprint_r>
 8003982:	2800      	cmp	r0, #0
 8003984:	f47f aa1c 	bne.w	8002dc0 <_vfprintf_r+0xaf0>
 8003988:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800398a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 800398e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003992:	e571      	b.n	8003478 <_vfprintf_r+0x11a8>
 8003994:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003996:	2b00      	cmp	r3, #0
 8003998:	f340 8164 	ble.w	8003c64 <_vfprintf_r+0x1994>
 800399c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800399e:	f1b9 0f00 	cmp.w	r9, #0
 80039a2:	f040 8103 	bne.w	8003bac <_vfprintf_r+0x18dc>
 80039a6:	07c6      	lsls	r6, r0, #31
 80039a8:	f100 8100 	bmi.w	8003bac <_vfprintf_r+0x18dc>
 80039ac:	9309      	str	r3, [sp, #36]	; 0x24
 80039ae:	2666      	movs	r6, #102	; 0x66
 80039b0:	0543      	lsls	r3, r0, #21
 80039b2:	f100 8086 	bmi.w	8003ac2 <_vfprintf_r+0x17f2>
 80039b6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80039b8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80039bc:	9304      	str	r3, [sp, #16]
 80039be:	e79e      	b.n	80038fe <_vfprintf_r+0x162e>
 80039c0:	aa2a      	add	r2, sp, #168	; 0xa8
 80039c2:	9907      	ldr	r1, [sp, #28]
 80039c4:	9803      	ldr	r0, [sp, #12]
 80039c6:	f002 ffb1 	bl	800692c <__sprint_r>
 80039ca:	2800      	cmp	r0, #0
 80039cc:	f47f a9f8 	bne.w	8002dc0 <_vfprintf_r+0xaf0>
 80039d0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80039d2:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80039d4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80039d6:	1ad3      	subs	r3, r2, r3
 80039d8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039dc:	f7ff bb90 	b.w	8003100 <_vfprintf_r+0xe30>
 80039e0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80039e2:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80039e4:	4413      	add	r3, r2
 80039e6:	9309      	str	r3, [sp, #36]	; 0x24
 80039e8:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039ea:	2b00      	cmp	r3, #0
 80039ec:	f340 8149 	ble.w	8003c82 <_vfprintf_r+0x19b2>
 80039f0:	2667      	movs	r6, #103	; 0x67
 80039f2:	e7dd      	b.n	80039b0 <_vfprintf_r+0x16e0>
 80039f4:	2330      	movs	r3, #48	; 0x30
 80039f6:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80039fa:	2358      	movs	r3, #88	; 0x58
 80039fc:	e595      	b.n	800352a <_vfprintf_r+0x125a>
 80039fe:	9803      	ldr	r0, [sp, #12]
 8003a00:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a02:	4649      	mov	r1, r9
 8003a04:	f002 ff92 	bl	800692c <__sprint_r>
 8003a08:	2800      	cmp	r0, #0
 8003a0a:	f47f a9e0 	bne.w	8002dce <_vfprintf_r+0xafe>
 8003a0e:	f7fe bf0f 	b.w	8002830 <_vfprintf_r+0x560>
 8003a12:	a824      	add	r0, sp, #144	; 0x90
 8003a14:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003a18:	f002 fe90 	bl	800673c <frexp>
 8003a1c:	2200      	movs	r2, #0
 8003a1e:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003a22:	ec51 0b10 	vmov	r0, r1, d0
 8003a26:	f7fd f887 	bl	8000b38 <__aeabi_dmul>
 8003a2a:	2200      	movs	r2, #0
 8003a2c:	2300      	movs	r3, #0
 8003a2e:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003a32:	f7fd fae9 	bl	8001008 <__aeabi_dcmpeq>
 8003a36:	b108      	cbz	r0, 8003a3c <_vfprintf_r+0x176c>
 8003a38:	2301      	movs	r3, #1
 8003a3a:	9324      	str	r3, [sp, #144]	; 0x90
 8003a3c:	4b02      	ldr	r3, [pc, #8]	; (8003a48 <_vfprintf_r+0x1778>)
 8003a3e:	9309      	str	r3, [sp, #36]	; 0x24
 8003a40:	e5ac      	b.n	800359c <_vfprintf_r+0x12cc>
 8003a42:	bf00      	nop
 8003a44:	0800701c 	.word	0x0800701c
 8003a48:	08006fd8 	.word	0x08006fd8
 8003a4c:	425d      	negs	r5, r3
 8003a4e:	3310      	adds	r3, #16
 8003a50:	4bb9      	ldr	r3, [pc, #740]	; (8003d38 <_vfprintf_r+0x1a68>)
 8003a52:	f280 8097 	bge.w	8003b84 <_vfprintf_r+0x18b4>
 8003a56:	4619      	mov	r1, r3
 8003a58:	2610      	movs	r6, #16
 8003a5a:	4623      	mov	r3, r4
 8003a5c:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003a60:	460c      	mov	r4, r1
 8003a62:	e005      	b.n	8003a70 <_vfprintf_r+0x17a0>
 8003a64:	f10b 0b08 	add.w	fp, fp, #8
 8003a68:	3d10      	subs	r5, #16
 8003a6a:	2d10      	cmp	r5, #16
 8003a6c:	f340 8087 	ble.w	8003b7e <_vfprintf_r+0x18ae>
 8003a70:	3201      	adds	r2, #1
 8003a72:	3310      	adds	r3, #16
 8003a74:	2a07      	cmp	r2, #7
 8003a76:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003a7a:	e9cb 4600 	strd	r4, r6, [fp]
 8003a7e:	ddf1      	ble.n	8003a64 <_vfprintf_r+0x1794>
 8003a80:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a82:	9907      	ldr	r1, [sp, #28]
 8003a84:	4648      	mov	r0, r9
 8003a86:	f002 ff51 	bl	800692c <__sprint_r>
 8003a8a:	2800      	cmp	r0, #0
 8003a8c:	f47f a998 	bne.w	8002dc0 <_vfprintf_r+0xaf0>
 8003a90:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003a94:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a98:	e7e6      	b.n	8003a68 <_vfprintf_r+0x1798>
 8003a9a:	f109 0101 	add.w	r1, r9, #1
 8003a9e:	9803      	ldr	r0, [sp, #12]
 8003aa0:	f001 fe80 	bl	80057a4 <_malloc_r>
 8003aa4:	4607      	mov	r7, r0
 8003aa6:	2800      	cmp	r0, #0
 8003aa8:	f000 813b 	beq.w	8003d22 <_vfprintf_r+0x1a52>
 8003aac:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003ab0:	930e      	str	r3, [sp, #56]	; 0x38
 8003ab2:	f026 0320 	bic.w	r3, r6, #32
 8003ab6:	9304      	str	r3, [sp, #16]
 8003ab8:	46a0      	mov	r8, r4
 8003aba:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003abc:	900a      	str	r0, [sp, #40]	; 0x28
 8003abe:	e547      	b.n	8003550 <_vfprintf_r+0x1280>
 8003ac0:	2667      	movs	r6, #103	; 0x67
 8003ac2:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003ac4:	2200      	movs	r2, #0
 8003ac6:	920f      	str	r2, [sp, #60]	; 0x3c
 8003ac8:	9214      	str	r2, [sp, #80]	; 0x50
 8003aca:	7803      	ldrb	r3, [r0, #0]
 8003acc:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003ace:	2bff      	cmp	r3, #255	; 0xff
 8003ad0:	d00c      	beq.n	8003aec <_vfprintf_r+0x181c>
 8003ad2:	4293      	cmp	r3, r2
 8003ad4:	da0a      	bge.n	8003aec <_vfprintf_r+0x181c>
 8003ad6:	7841      	ldrb	r1, [r0, #1]
 8003ad8:	1ad2      	subs	r2, r2, r3
 8003ada:	b1a9      	cbz	r1, 8003b08 <_vfprintf_r+0x1838>
 8003adc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003ade:	3301      	adds	r3, #1
 8003ae0:	9314      	str	r3, [sp, #80]	; 0x50
 8003ae2:	460b      	mov	r3, r1
 8003ae4:	2bff      	cmp	r3, #255	; 0xff
 8003ae6:	f100 0001 	add.w	r0, r0, #1
 8003aea:	d1f2      	bne.n	8003ad2 <_vfprintf_r+0x1802>
 8003aec:	9211      	str	r2, [sp, #68]	; 0x44
 8003aee:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003af0:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003af2:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003af4:	901a      	str	r0, [sp, #104]	; 0x68
 8003af6:	4413      	add	r3, r2
 8003af8:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003afa:	fb02 1303 	mla	r3, r2, r3, r1
 8003afe:	9309      	str	r3, [sp, #36]	; 0x24
 8003b00:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b04:	9304      	str	r3, [sp, #16]
 8003b06:	e485      	b.n	8003414 <_vfprintf_r+0x1144>
 8003b08:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003b0a:	3101      	adds	r1, #1
 8003b0c:	910f      	str	r1, [sp, #60]	; 0x3c
 8003b0e:	e7de      	b.n	8003ace <_vfprintf_r+0x17fe>
 8003b10:	aa28      	add	r2, sp, #160	; 0xa0
 8003b12:	ab25      	add	r3, sp, #148	; 0x94
 8003b14:	e9cd 3200 	strd	r3, r2, [sp]
 8003b18:	2103      	movs	r1, #3
 8003b1a:	ab24      	add	r3, sp, #144	; 0x90
 8003b1c:	464a      	mov	r2, r9
 8003b1e:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003b22:	9803      	ldr	r0, [sp, #12]
 8003b24:	f000 fa5c 	bl	8003fe0 <_dtoa_r>
 8003b28:	464d      	mov	r5, r9
 8003b2a:	4607      	mov	r7, r0
 8003b2c:	eb00 0409 	add.w	r4, r0, r9
 8003b30:	783b      	ldrb	r3, [r7, #0]
 8003b32:	2b30      	cmp	r3, #48	; 0x30
 8003b34:	f000 80be 	beq.w	8003cb4 <_vfprintf_r+0x19e4>
 8003b38:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003b3a:	442c      	add	r4, r5
 8003b3c:	2200      	movs	r2, #0
 8003b3e:	2300      	movs	r3, #0
 8003b40:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003b44:	f7fd fa60 	bl	8001008 <__aeabi_dcmpeq>
 8003b48:	b108      	cbz	r0, 8003b4e <_vfprintf_r+0x187e>
 8003b4a:	4623      	mov	r3, r4
 8003b4c:	e413      	b.n	8003376 <_vfprintf_r+0x10a6>
 8003b4e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003b50:	42a3      	cmp	r3, r4
 8003b52:	f4bf ac10 	bcs.w	8003376 <_vfprintf_r+0x10a6>
 8003b56:	2130      	movs	r1, #48	; 0x30
 8003b58:	1c5a      	adds	r2, r3, #1
 8003b5a:	9228      	str	r2, [sp, #160]	; 0xa0
 8003b5c:	7019      	strb	r1, [r3, #0]
 8003b5e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003b60:	429c      	cmp	r4, r3
 8003b62:	d8f9      	bhi.n	8003b58 <_vfprintf_r+0x1888>
 8003b64:	e407      	b.n	8003376 <_vfprintf_r+0x10a6>
 8003b66:	197c      	adds	r4, r7, r5
 8003b68:	e7e8      	b.n	8003b3c <_vfprintf_r+0x186c>
 8003b6a:	f1b9 0f00 	cmp.w	r9, #0
 8003b6e:	f000 8092 	beq.w	8003c96 <_vfprintf_r+0x19c6>
 8003b72:	900a      	str	r0, [sp, #40]	; 0x28
 8003b74:	e4ec      	b.n	8003550 <_vfprintf_r+0x1280>
 8003b76:	900a      	str	r0, [sp, #40]	; 0x28
 8003b78:	f04f 0906 	mov.w	r9, #6
 8003b7c:	e4e8      	b.n	8003550 <_vfprintf_r+0x1280>
 8003b7e:	4621      	mov	r1, r4
 8003b80:	461c      	mov	r4, r3
 8003b82:	460b      	mov	r3, r1
 8003b84:	3201      	adds	r2, #1
 8003b86:	442c      	add	r4, r5
 8003b88:	2a07      	cmp	r2, #7
 8003b8a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003b8e:	e9cb 3500 	strd	r3, r5, [fp]
 8003b92:	f300 80a9 	bgt.w	8003ce8 <_vfprintf_r+0x1a18>
 8003b96:	f10b 0b08 	add.w	fp, fp, #8
 8003b9a:	e470      	b.n	800347e <_vfprintf_r+0x11ae>
 8003b9c:	469a      	mov	sl, r3
 8003b9e:	f7ff bb37 	b.w	8003210 <_vfprintf_r+0xf40>
 8003ba2:	2301      	movs	r3, #1
 8003ba4:	9324      	str	r3, [sp, #144]	; 0x90
 8003ba6:	4b65      	ldr	r3, [pc, #404]	; (8003d3c <_vfprintf_r+0x1a6c>)
 8003ba8:	9309      	str	r3, [sp, #36]	; 0x24
 8003baa:	e4f7      	b.n	800359c <_vfprintf_r+0x12cc>
 8003bac:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003bae:	4413      	add	r3, r2
 8003bb0:	444b      	add	r3, r9
 8003bb2:	9309      	str	r3, [sp, #36]	; 0x24
 8003bb4:	2666      	movs	r6, #102	; 0x66
 8003bb6:	e6fb      	b.n	80039b0 <_vfprintf_r+0x16e0>
 8003bb8:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003bba:	9309      	str	r3, [sp, #36]	; 0x24
 8003bbc:	e694      	b.n	80038e8 <_vfprintf_r+0x1618>
 8003bbe:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003bc2:	4664      	mov	r4, ip
 8003bc4:	4d5e      	ldr	r5, [pc, #376]	; (8003d40 <_vfprintf_r+0x1a70>)
 8003bc6:	e000      	b.n	8003bca <_vfprintf_r+0x18fa>
 8003bc8:	4614      	mov	r4, r2
 8003bca:	fba5 1203 	umull	r1, r2, r5, r3
 8003bce:	08d2      	lsrs	r2, r2, #3
 8003bd0:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003bd4:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003bd8:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003bdc:	4613      	mov	r3, r2
 8003bde:	2b09      	cmp	r3, #9
 8003be0:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003be4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003be8:	dcee      	bgt.n	8003bc8 <_vfprintf_r+0x18f8>
 8003bea:	3330      	adds	r3, #48	; 0x30
 8003bec:	3c02      	subs	r4, #2
 8003bee:	b2db      	uxtb	r3, r3
 8003bf0:	45a4      	cmp	ip, r4
 8003bf2:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003bf6:	f240 8090 	bls.w	8003d1a <_vfprintf_r+0x1a4a>
 8003bfa:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003bfe:	4611      	mov	r1, r2
 8003c00:	e001      	b.n	8003c06 <_vfprintf_r+0x1936>
 8003c02:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003c06:	f804 3b01 	strb.w	r3, [r4], #1
 8003c0a:	458c      	cmp	ip, r1
 8003c0c:	d1f9      	bne.n	8003c02 <_vfprintf_r+0x1932>
 8003c0e:	ab2a      	add	r3, sp, #168	; 0xa8
 8003c10:	1a9b      	subs	r3, r3, r2
 8003c12:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003c16:	4413      	add	r3, r2
 8003c18:	f7ff bbe3 	b.w	80033e2 <_vfprintf_r+0x1112>
 8003c1c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003c1e:	4f49      	ldr	r7, [pc, #292]	; (8003d44 <_vfprintf_r+0x1a74>)
 8003c20:	2b00      	cmp	r3, #0
 8003c22:	bfb6      	itet	lt
 8003c24:	222d      	movlt	r2, #45	; 0x2d
 8003c26:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003c2a:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003c2e:	4b46      	ldr	r3, [pc, #280]	; (8003d48 <_vfprintf_r+0x1a78>)
 8003c30:	f7fe bf02 	b.w	8002a38 <_vfprintf_r+0x768>
 8003c34:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003c38:	f7ff b8c9 	b.w	8002dce <_vfprintf_r+0xafe>
 8003c3c:	aa28      	add	r2, sp, #160	; 0xa0
 8003c3e:	ab25      	add	r3, sp, #148	; 0x94
 8003c40:	e9cd 3200 	strd	r3, r2, [sp]
 8003c44:	2103      	movs	r1, #3
 8003c46:	ab24      	add	r3, sp, #144	; 0x90
 8003c48:	464a      	mov	r2, r9
 8003c4a:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c4e:	9803      	ldr	r0, [sp, #12]
 8003c50:	f000 f9c6 	bl	8003fe0 <_dtoa_r>
 8003c54:	464d      	mov	r5, r9
 8003c56:	4607      	mov	r7, r0
 8003c58:	2e46      	cmp	r6, #70	; 0x46
 8003c5a:	eb07 0405 	add.w	r4, r7, r5
 8003c5e:	f43f af67 	beq.w	8003b30 <_vfprintf_r+0x1860>
 8003c62:	e76b      	b.n	8003b3c <_vfprintf_r+0x186c>
 8003c64:	f1b9 0f00 	cmp.w	r9, #0
 8003c68:	d131      	bne.n	8003cce <_vfprintf_r+0x19fe>
 8003c6a:	07c5      	lsls	r5, r0, #31
 8003c6c:	d42f      	bmi.n	8003cce <_vfprintf_r+0x19fe>
 8003c6e:	2301      	movs	r3, #1
 8003c70:	9304      	str	r3, [sp, #16]
 8003c72:	9309      	str	r3, [sp, #36]	; 0x24
 8003c74:	2666      	movs	r6, #102	; 0x66
 8003c76:	e642      	b.n	80038fe <_vfprintf_r+0x162e>
 8003c78:	07c3      	lsls	r3, r0, #31
 8003c7a:	f57f abbf 	bpl.w	80033fc <_vfprintf_r+0x112c>
 8003c7e:	f7ff bbb9 	b.w	80033f4 <_vfprintf_r+0x1124>
 8003c82:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003c84:	f1c3 0301 	rsb	r3, r3, #1
 8003c88:	441a      	add	r2, r3
 8003c8a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003c8e:	9209      	str	r2, [sp, #36]	; 0x24
 8003c90:	9304      	str	r3, [sp, #16]
 8003c92:	2667      	movs	r6, #103	; 0x67
 8003c94:	e633      	b.n	80038fe <_vfprintf_r+0x162e>
 8003c96:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003c9a:	f04f 0901 	mov.w	r9, #1
 8003c9e:	e457      	b.n	8003550 <_vfprintf_r+0x1280>
 8003ca0:	465a      	mov	r2, fp
 8003ca2:	e511      	b.n	80036c8 <_vfprintf_r+0x13f8>
 8003ca4:	2e47      	cmp	r6, #71	; 0x47
 8003ca6:	f47f af5e 	bne.w	8003b66 <_vfprintf_r+0x1896>
 8003caa:	f018 0f01 	tst.w	r8, #1
 8003cae:	f43f ab61 	beq.w	8003374 <_vfprintf_r+0x10a4>
 8003cb2:	e7d1      	b.n	8003c58 <_vfprintf_r+0x1988>
 8003cb4:	2200      	movs	r2, #0
 8003cb6:	2300      	movs	r3, #0
 8003cb8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003cbc:	f7fd f9a4 	bl	8001008 <__aeabi_dcmpeq>
 8003cc0:	2800      	cmp	r0, #0
 8003cc2:	f47f af39 	bne.w	8003b38 <_vfprintf_r+0x1868>
 8003cc6:	f1c5 0501 	rsb	r5, r5, #1
 8003cca:	9524      	str	r5, [sp, #144]	; 0x90
 8003ccc:	e735      	b.n	8003b3a <_vfprintf_r+0x186a>
 8003cce:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003cd0:	3301      	adds	r3, #1
 8003cd2:	444b      	add	r3, r9
 8003cd4:	9309      	str	r3, [sp, #36]	; 0x24
 8003cd6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003cda:	9304      	str	r3, [sp, #16]
 8003cdc:	2666      	movs	r6, #102	; 0x66
 8003cde:	e60e      	b.n	80038fe <_vfprintf_r+0x162e>
 8003ce0:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003ce4:	f7ff bb7a 	b.w	80033dc <_vfprintf_r+0x110c>
 8003ce8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cea:	9907      	ldr	r1, [sp, #28]
 8003cec:	9803      	ldr	r0, [sp, #12]
 8003cee:	f002 fe1d 	bl	800692c <__sprint_r>
 8003cf2:	2800      	cmp	r0, #0
 8003cf4:	f47f a864 	bne.w	8002dc0 <_vfprintf_r+0xaf0>
 8003cf8:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003cfc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d00:	f7ff bbbd 	b.w	800347e <_vfprintf_r+0x11ae>
 8003d04:	9908      	ldr	r1, [sp, #32]
 8003d06:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003d0a:	680b      	ldr	r3, [r1, #0]
 8003d0c:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003d10:	1d0b      	adds	r3, r1, #4
 8003d12:	4692      	mov	sl, r2
 8003d14:	9308      	str	r3, [sp, #32]
 8003d16:	f7fe bb59 	b.w	80023cc <_vfprintf_r+0xfc>
 8003d1a:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003d1e:	f7ff bb60 	b.w	80033e2 <_vfprintf_r+0x1112>
 8003d22:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003d26:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003d2a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003d2e:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003d32:	f7ff b84c 	b.w	8002dce <_vfprintf_r+0xafe>
 8003d36:	bf00      	nop
 8003d38:	0800701c 	.word	0x0800701c
 8003d3c:	08006fec 	.word	0x08006fec
 8003d40:	cccccccd 	.word	0xcccccccd
 8003d44:	08006fd4 	.word	0x08006fd4
 8003d48:	08006fd0 	.word	0x08006fd0

08003d4c <__sbprintf>:
 8003d4c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003d50:	460c      	mov	r4, r1
 8003d52:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003d56:	8989      	ldrh	r1, [r1, #12]
 8003d58:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003d5a:	89e5      	ldrh	r5, [r4, #14]
 8003d5c:	9619      	str	r6, [sp, #100]	; 0x64
 8003d5e:	f021 0102 	bic.w	r1, r1, #2
 8003d62:	4606      	mov	r6, r0
 8003d64:	69e0      	ldr	r0, [r4, #28]
 8003d66:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003d6a:	4617      	mov	r7, r2
 8003d6c:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003d70:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003d72:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003d76:	4698      	mov	r8, r3
 8003d78:	ad1a      	add	r5, sp, #104	; 0x68
 8003d7a:	2300      	movs	r3, #0
 8003d7c:	9007      	str	r0, [sp, #28]
 8003d7e:	a816      	add	r0, sp, #88	; 0x58
 8003d80:	9209      	str	r2, [sp, #36]	; 0x24
 8003d82:	9306      	str	r3, [sp, #24]
 8003d84:	9500      	str	r5, [sp, #0]
 8003d86:	9504      	str	r5, [sp, #16]
 8003d88:	9102      	str	r1, [sp, #8]
 8003d8a:	9105      	str	r1, [sp, #20]
 8003d8c:	f001 fc8a 	bl	80056a4 <__retarget_lock_init_recursive>
 8003d90:	4643      	mov	r3, r8
 8003d92:	463a      	mov	r2, r7
 8003d94:	4669      	mov	r1, sp
 8003d96:	4630      	mov	r0, r6
 8003d98:	f7fe fa9a 	bl	80022d0 <_vfprintf_r>
 8003d9c:	1e05      	subs	r5, r0, #0
 8003d9e:	db07      	blt.n	8003db0 <__sbprintf+0x64>
 8003da0:	4630      	mov	r0, r6
 8003da2:	4669      	mov	r1, sp
 8003da4:	f001 f8d6 	bl	8004f54 <_fflush_r>
 8003da8:	2800      	cmp	r0, #0
 8003daa:	bf18      	it	ne
 8003dac:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003db0:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003db4:	065b      	lsls	r3, r3, #25
 8003db6:	d503      	bpl.n	8003dc0 <__sbprintf+0x74>
 8003db8:	89a3      	ldrh	r3, [r4, #12]
 8003dba:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003dbe:	81a3      	strh	r3, [r4, #12]
 8003dc0:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003dc2:	f001 fc71 	bl	80056a8 <__retarget_lock_close_recursive>
 8003dc6:	4628      	mov	r0, r5
 8003dc8:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003dcc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003dd0 <__swsetup_r>:
 8003dd0:	b538      	push	{r3, r4, r5, lr}
 8003dd2:	4b31      	ldr	r3, [pc, #196]	; (8003e98 <__swsetup_r+0xc8>)
 8003dd4:	681b      	ldr	r3, [r3, #0]
 8003dd6:	4605      	mov	r5, r0
 8003dd8:	460c      	mov	r4, r1
 8003dda:	b113      	cbz	r3, 8003de2 <__swsetup_r+0x12>
 8003ddc:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003dde:	2a00      	cmp	r2, #0
 8003de0:	d03a      	beq.n	8003e58 <__swsetup_r+0x88>
 8003de2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003de6:	b293      	uxth	r3, r2
 8003de8:	0718      	lsls	r0, r3, #28
 8003dea:	d50c      	bpl.n	8003e06 <__swsetup_r+0x36>
 8003dec:	6920      	ldr	r0, [r4, #16]
 8003dee:	b1a8      	cbz	r0, 8003e1c <__swsetup_r+0x4c>
 8003df0:	f013 0201 	ands.w	r2, r3, #1
 8003df4:	d020      	beq.n	8003e38 <__swsetup_r+0x68>
 8003df6:	6963      	ldr	r3, [r4, #20]
 8003df8:	2200      	movs	r2, #0
 8003dfa:	425b      	negs	r3, r3
 8003dfc:	61a3      	str	r3, [r4, #24]
 8003dfe:	60a2      	str	r2, [r4, #8]
 8003e00:	b300      	cbz	r0, 8003e44 <__swsetup_r+0x74>
 8003e02:	2000      	movs	r0, #0
 8003e04:	bd38      	pop	{r3, r4, r5, pc}
 8003e06:	06d9      	lsls	r1, r3, #27
 8003e08:	d53e      	bpl.n	8003e88 <__swsetup_r+0xb8>
 8003e0a:	0758      	lsls	r0, r3, #29
 8003e0c:	d428      	bmi.n	8003e60 <__swsetup_r+0x90>
 8003e0e:	6920      	ldr	r0, [r4, #16]
 8003e10:	f042 0308 	orr.w	r3, r2, #8
 8003e14:	81a3      	strh	r3, [r4, #12]
 8003e16:	b29b      	uxth	r3, r3
 8003e18:	2800      	cmp	r0, #0
 8003e1a:	d1e9      	bne.n	8003df0 <__swsetup_r+0x20>
 8003e1c:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003e20:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003e24:	d0e4      	beq.n	8003df0 <__swsetup_r+0x20>
 8003e26:	4628      	mov	r0, r5
 8003e28:	4621      	mov	r1, r4
 8003e2a:	f001 fc71 	bl	8005710 <__smakebuf_r>
 8003e2e:	89a3      	ldrh	r3, [r4, #12]
 8003e30:	6920      	ldr	r0, [r4, #16]
 8003e32:	f013 0201 	ands.w	r2, r3, #1
 8003e36:	d1de      	bne.n	8003df6 <__swsetup_r+0x26>
 8003e38:	0799      	lsls	r1, r3, #30
 8003e3a:	bf58      	it	pl
 8003e3c:	6962      	ldrpl	r2, [r4, #20]
 8003e3e:	60a2      	str	r2, [r4, #8]
 8003e40:	2800      	cmp	r0, #0
 8003e42:	d1de      	bne.n	8003e02 <__swsetup_r+0x32>
 8003e44:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003e48:	061a      	lsls	r2, r3, #24
 8003e4a:	d5db      	bpl.n	8003e04 <__swsetup_r+0x34>
 8003e4c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003e50:	81a3      	strh	r3, [r4, #12]
 8003e52:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003e56:	bd38      	pop	{r3, r4, r5, pc}
 8003e58:	4618      	mov	r0, r3
 8003e5a:	f001 f8d7 	bl	800500c <__sinit>
 8003e5e:	e7c0      	b.n	8003de2 <__swsetup_r+0x12>
 8003e60:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8003e62:	b151      	cbz	r1, 8003e7a <__swsetup_r+0xaa>
 8003e64:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8003e68:	4299      	cmp	r1, r3
 8003e6a:	d004      	beq.n	8003e76 <__swsetup_r+0xa6>
 8003e6c:	4628      	mov	r0, r5
 8003e6e:	f001 f96f 	bl	8005150 <_free_r>
 8003e72:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003e76:	2300      	movs	r3, #0
 8003e78:	6323      	str	r3, [r4, #48]	; 0x30
 8003e7a:	2300      	movs	r3, #0
 8003e7c:	6920      	ldr	r0, [r4, #16]
 8003e7e:	6063      	str	r3, [r4, #4]
 8003e80:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8003e84:	6020      	str	r0, [r4, #0]
 8003e86:	e7c3      	b.n	8003e10 <__swsetup_r+0x40>
 8003e88:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8003e8c:	2309      	movs	r3, #9
 8003e8e:	602b      	str	r3, [r5, #0]
 8003e90:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003e94:	81a2      	strh	r2, [r4, #12]
 8003e96:	bd38      	pop	{r3, r4, r5, pc}
 8003e98:	20000018 	.word	0x20000018

08003e9c <register_fini>:
 8003e9c:	4b02      	ldr	r3, [pc, #8]	; (8003ea8 <register_fini+0xc>)
 8003e9e:	b113      	cbz	r3, 8003ea6 <register_fini+0xa>
 8003ea0:	4802      	ldr	r0, [pc, #8]	; (8003eac <register_fini+0x10>)
 8003ea2:	f000 b805 	b.w	8003eb0 <atexit>
 8003ea6:	4770      	bx	lr
 8003ea8:	00000000 	.word	0x00000000
 8003eac:	0800507d 	.word	0x0800507d

08003eb0 <atexit>:
 8003eb0:	2300      	movs	r3, #0
 8003eb2:	4601      	mov	r1, r0
 8003eb4:	461a      	mov	r2, r3
 8003eb6:	4618      	mov	r0, r3
 8003eb8:	f002 bd58 	b.w	800696c <__register_exitproc>

08003ebc <quorem>:
 8003ebc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003ec0:	6903      	ldr	r3, [r0, #16]
 8003ec2:	690f      	ldr	r7, [r1, #16]
 8003ec4:	42bb      	cmp	r3, r7
 8003ec6:	b083      	sub	sp, #12
 8003ec8:	f2c0 8086 	blt.w	8003fd8 <quorem+0x11c>
 8003ecc:	3f01      	subs	r7, #1
 8003ece:	f101 0914 	add.w	r9, r1, #20
 8003ed2:	f100 0a14 	add.w	sl, r0, #20
 8003ed6:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8003eda:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8003ede:	00bc      	lsls	r4, r7, #2
 8003ee0:	3201      	adds	r2, #1
 8003ee2:	fbb3 f8f2 	udiv	r8, r3, r2
 8003ee6:	eb0a 0304 	add.w	r3, sl, r4
 8003eea:	9400      	str	r4, [sp, #0]
 8003eec:	eb09 0b04 	add.w	fp, r9, r4
 8003ef0:	9301      	str	r3, [sp, #4]
 8003ef2:	f1b8 0f00 	cmp.w	r8, #0
 8003ef6:	d038      	beq.n	8003f6a <quorem+0xae>
 8003ef8:	2500      	movs	r5, #0
 8003efa:	462e      	mov	r6, r5
 8003efc:	46ce      	mov	lr, r9
 8003efe:	46d4      	mov	ip, sl
 8003f00:	f85e 4b04 	ldr.w	r4, [lr], #4
 8003f04:	f8dc 3000 	ldr.w	r3, [ip]
 8003f08:	b2a2      	uxth	r2, r4
 8003f0a:	fb08 5502 	mla	r5, r8, r2, r5
 8003f0e:	0c22      	lsrs	r2, r4, #16
 8003f10:	0c2c      	lsrs	r4, r5, #16
 8003f12:	fb08 4202 	mla	r2, r8, r2, r4
 8003f16:	b2ad      	uxth	r5, r5
 8003f18:	1b75      	subs	r5, r6, r5
 8003f1a:	b296      	uxth	r6, r2
 8003f1c:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8003f20:	fa15 f383 	uxtah	r3, r5, r3
 8003f24:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8003f28:	b29b      	uxth	r3, r3
 8003f2a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8003f2e:	45f3      	cmp	fp, lr
 8003f30:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8003f34:	f84c 3b04 	str.w	r3, [ip], #4
 8003f38:	ea4f 4626 	mov.w	r6, r6, asr #16
 8003f3c:	d2e0      	bcs.n	8003f00 <quorem+0x44>
 8003f3e:	9b00      	ldr	r3, [sp, #0]
 8003f40:	f85a 3003 	ldr.w	r3, [sl, r3]
 8003f44:	b98b      	cbnz	r3, 8003f6a <quorem+0xae>
 8003f46:	9a01      	ldr	r2, [sp, #4]
 8003f48:	1f13      	subs	r3, r2, #4
 8003f4a:	459a      	cmp	sl, r3
 8003f4c:	d20c      	bcs.n	8003f68 <quorem+0xac>
 8003f4e:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8003f52:	b94b      	cbnz	r3, 8003f68 <quorem+0xac>
 8003f54:	f1a2 0308 	sub.w	r3, r2, #8
 8003f58:	e002      	b.n	8003f60 <quorem+0xa4>
 8003f5a:	681a      	ldr	r2, [r3, #0]
 8003f5c:	3b04      	subs	r3, #4
 8003f5e:	b91a      	cbnz	r2, 8003f68 <quorem+0xac>
 8003f60:	459a      	cmp	sl, r3
 8003f62:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8003f66:	d3f8      	bcc.n	8003f5a <quorem+0x9e>
 8003f68:	6107      	str	r7, [r0, #16]
 8003f6a:	4604      	mov	r4, r0
 8003f6c:	f002 f944 	bl	80061f8 <__mcmp>
 8003f70:	2800      	cmp	r0, #0
 8003f72:	db2d      	blt.n	8003fd0 <quorem+0x114>
 8003f74:	f108 0801 	add.w	r8, r8, #1
 8003f78:	4655      	mov	r5, sl
 8003f7a:	2300      	movs	r3, #0
 8003f7c:	f859 1b04 	ldr.w	r1, [r9], #4
 8003f80:	6828      	ldr	r0, [r5, #0]
 8003f82:	b28a      	uxth	r2, r1
 8003f84:	1a9a      	subs	r2, r3, r2
 8003f86:	0c0b      	lsrs	r3, r1, #16
 8003f88:	fa12 f280 	uxtah	r2, r2, r0
 8003f8c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8003f90:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8003f94:	b292      	uxth	r2, r2
 8003f96:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8003f9a:	45cb      	cmp	fp, r9
 8003f9c:	f845 2b04 	str.w	r2, [r5], #4
 8003fa0:	ea4f 4323 	mov.w	r3, r3, asr #16
 8003fa4:	d2ea      	bcs.n	8003f7c <quorem+0xc0>
 8003fa6:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8003faa:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8003fae:	b97a      	cbnz	r2, 8003fd0 <quorem+0x114>
 8003fb0:	1f1a      	subs	r2, r3, #4
 8003fb2:	4592      	cmp	sl, r2
 8003fb4:	d20b      	bcs.n	8003fce <quorem+0x112>
 8003fb6:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8003fba:	b942      	cbnz	r2, 8003fce <quorem+0x112>
 8003fbc:	3b08      	subs	r3, #8
 8003fbe:	e002      	b.n	8003fc6 <quorem+0x10a>
 8003fc0:	681a      	ldr	r2, [r3, #0]
 8003fc2:	3b04      	subs	r3, #4
 8003fc4:	b91a      	cbnz	r2, 8003fce <quorem+0x112>
 8003fc6:	459a      	cmp	sl, r3
 8003fc8:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8003fcc:	d3f8      	bcc.n	8003fc0 <quorem+0x104>
 8003fce:	6127      	str	r7, [r4, #16]
 8003fd0:	4640      	mov	r0, r8
 8003fd2:	b003      	add	sp, #12
 8003fd4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003fd8:	2000      	movs	r0, #0
 8003fda:	b003      	add	sp, #12
 8003fdc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08003fe0 <_dtoa_r>:
 8003fe0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003fe4:	ec55 4b10 	vmov	r4, r5, d0
 8003fe8:	b09b      	sub	sp, #108	; 0x6c
 8003fea:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8003fec:	9102      	str	r1, [sp, #8]
 8003fee:	4681      	mov	r9, r0
 8003ff0:	9207      	str	r2, [sp, #28]
 8003ff2:	9305      	str	r3, [sp, #20]
 8003ff4:	e9cd 4500 	strd	r4, r5, [sp]
 8003ff8:	b156      	cbz	r6, 8004010 <_dtoa_r+0x30>
 8003ffa:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8003ffc:	6072      	str	r2, [r6, #4]
 8003ffe:	2301      	movs	r3, #1
 8004000:	4093      	lsls	r3, r2
 8004002:	60b3      	str	r3, [r6, #8]
 8004004:	4631      	mov	r1, r6
 8004006:	f001 ff07 	bl	8005e18 <_Bfree>
 800400a:	2300      	movs	r3, #0
 800400c:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004010:	f1b5 0800 	subs.w	r8, r5, #0
 8004014:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004016:	bfb4      	ite	lt
 8004018:	2301      	movlt	r3, #1
 800401a:	2300      	movge	r3, #0
 800401c:	6013      	str	r3, [r2, #0]
 800401e:	4b76      	ldr	r3, [pc, #472]	; (80041f8 <_dtoa_r+0x218>)
 8004020:	bfbc      	itt	lt
 8004022:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8004026:	f8cd 8004 	strlt.w	r8, [sp, #4]
 800402a:	ea33 0308 	bics.w	r3, r3, r8
 800402e:	f000 80a6 	beq.w	800417e <_dtoa_r+0x19e>
 8004032:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004036:	2200      	movs	r2, #0
 8004038:	2300      	movs	r3, #0
 800403a:	4630      	mov	r0, r6
 800403c:	4639      	mov	r1, r7
 800403e:	f7fc ffe3 	bl	8001008 <__aeabi_dcmpeq>
 8004042:	4605      	mov	r5, r0
 8004044:	b178      	cbz	r0, 8004066 <_dtoa_r+0x86>
 8004046:	9a05      	ldr	r2, [sp, #20]
 8004048:	2301      	movs	r3, #1
 800404a:	6013      	str	r3, [r2, #0]
 800404c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800404e:	2b00      	cmp	r3, #0
 8004050:	f000 80c0 	beq.w	80041d4 <_dtoa_r+0x1f4>
 8004054:	4b69      	ldr	r3, [pc, #420]	; (80041fc <_dtoa_r+0x21c>)
 8004056:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004058:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 800405c:	6013      	str	r3, [r2, #0]
 800405e:	4658      	mov	r0, fp
 8004060:	b01b      	add	sp, #108	; 0x6c
 8004062:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004066:	aa18      	add	r2, sp, #96	; 0x60
 8004068:	a919      	add	r1, sp, #100	; 0x64
 800406a:	ec47 6b10 	vmov	d0, r6, r7
 800406e:	4648      	mov	r0, r9
 8004070:	f002 f954 	bl	800631c <__d2b>
 8004074:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004078:	4682      	mov	sl, r0
 800407a:	f040 80a0 	bne.w	80041be <_dtoa_r+0x1de>
 800407e:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004082:	442c      	add	r4, r5
 8004084:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004088:	2b20      	cmp	r3, #32
 800408a:	f340 842c 	ble.w	80048e6 <_dtoa_r+0x906>
 800408e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004092:	fa08 f803 	lsl.w	r8, r8, r3
 8004096:	9b00      	ldr	r3, [sp, #0]
 8004098:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800409c:	fa23 f000 	lsr.w	r0, r3, r0
 80040a0:	ea48 0000 	orr.w	r0, r8, r0
 80040a4:	f7fc fcce 	bl	8000a44 <__aeabi_ui2d>
 80040a8:	2301      	movs	r3, #1
 80040aa:	4606      	mov	r6, r0
 80040ac:	3c01      	subs	r4, #1
 80040ae:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80040b2:	930f      	str	r3, [sp, #60]	; 0x3c
 80040b4:	4630      	mov	r0, r6
 80040b6:	4639      	mov	r1, r7
 80040b8:	2200      	movs	r2, #0
 80040ba:	4b51      	ldr	r3, [pc, #324]	; (8004200 <_dtoa_r+0x220>)
 80040bc:	f7fc fb84 	bl	80007c8 <__aeabi_dsub>
 80040c0:	a347      	add	r3, pc, #284	; (adr r3, 80041e0 <_dtoa_r+0x200>)
 80040c2:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040c6:	f7fc fd37 	bl	8000b38 <__aeabi_dmul>
 80040ca:	a347      	add	r3, pc, #284	; (adr r3, 80041e8 <_dtoa_r+0x208>)
 80040cc:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040d0:	f7fc fb7c 	bl	80007cc <__adddf3>
 80040d4:	4606      	mov	r6, r0
 80040d6:	4620      	mov	r0, r4
 80040d8:	460f      	mov	r7, r1
 80040da:	f7fc fcc3 	bl	8000a64 <__aeabi_i2d>
 80040de:	a344      	add	r3, pc, #272	; (adr r3, 80041f0 <_dtoa_r+0x210>)
 80040e0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040e4:	f7fc fd28 	bl	8000b38 <__aeabi_dmul>
 80040e8:	4602      	mov	r2, r0
 80040ea:	460b      	mov	r3, r1
 80040ec:	4630      	mov	r0, r6
 80040ee:	4639      	mov	r1, r7
 80040f0:	f7fc fb6c 	bl	80007cc <__adddf3>
 80040f4:	4606      	mov	r6, r0
 80040f6:	460f      	mov	r7, r1
 80040f8:	f7fc ffce 	bl	8001098 <__aeabi_d2iz>
 80040fc:	2200      	movs	r2, #0
 80040fe:	9006      	str	r0, [sp, #24]
 8004100:	2300      	movs	r3, #0
 8004102:	4630      	mov	r0, r6
 8004104:	4639      	mov	r1, r7
 8004106:	f7fc ff89 	bl	800101c <__aeabi_dcmplt>
 800410a:	2800      	cmp	r0, #0
 800410c:	f040 8273 	bne.w	80045f6 <_dtoa_r+0x616>
 8004110:	9e06      	ldr	r6, [sp, #24]
 8004112:	2e16      	cmp	r6, #22
 8004114:	f200 825d 	bhi.w	80045d2 <_dtoa_r+0x5f2>
 8004118:	4b3a      	ldr	r3, [pc, #232]	; (8004204 <_dtoa_r+0x224>)
 800411a:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 800411e:	e9d3 0100 	ldrd	r0, r1, [r3]
 8004122:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004126:	f7fc ff97 	bl	8001058 <__aeabi_dcmpgt>
 800412a:	2800      	cmp	r0, #0
 800412c:	f000 83d7 	beq.w	80048de <_dtoa_r+0x8fe>
 8004130:	1e73      	subs	r3, r6, #1
 8004132:	9306      	str	r3, [sp, #24]
 8004134:	2300      	movs	r3, #0
 8004136:	930d      	str	r3, [sp, #52]	; 0x34
 8004138:	1b2c      	subs	r4, r5, r4
 800413a:	f1b4 0801 	subs.w	r8, r4, #1
 800413e:	f100 8254 	bmi.w	80045ea <_dtoa_r+0x60a>
 8004142:	2300      	movs	r3, #0
 8004144:	9308      	str	r3, [sp, #32]
 8004146:	9b06      	ldr	r3, [sp, #24]
 8004148:	2b00      	cmp	r3, #0
 800414a:	f2c0 8245 	blt.w	80045d8 <_dtoa_r+0x5f8>
 800414e:	4498      	add	r8, r3
 8004150:	930c      	str	r3, [sp, #48]	; 0x30
 8004152:	2300      	movs	r3, #0
 8004154:	930b      	str	r3, [sp, #44]	; 0x2c
 8004156:	9b02      	ldr	r3, [sp, #8]
 8004158:	2b09      	cmp	r3, #9
 800415a:	d85b      	bhi.n	8004214 <_dtoa_r+0x234>
 800415c:	2b05      	cmp	r3, #5
 800415e:	f340 83c0 	ble.w	80048e2 <_dtoa_r+0x902>
 8004162:	3b04      	subs	r3, #4
 8004164:	9302      	str	r3, [sp, #8]
 8004166:	2500      	movs	r5, #0
 8004168:	9b02      	ldr	r3, [sp, #8]
 800416a:	3b02      	subs	r3, #2
 800416c:	2b03      	cmp	r3, #3
 800416e:	f200 8498 	bhi.w	8004aa2 <_dtoa_r+0xac2>
 8004172:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004176:	03df      	.short	0x03df
 8004178:	03e803bf 	.word	0x03e803bf
 800417c:	04f5      	.short	0x04f5
 800417e:	9a05      	ldr	r2, [sp, #20]
 8004180:	f242 730f 	movw	r3, #9999	; 0x270f
 8004184:	6013      	str	r3, [r2, #0]
 8004186:	9b00      	ldr	r3, [sp, #0]
 8004188:	b983      	cbnz	r3, 80041ac <_dtoa_r+0x1cc>
 800418a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 800418e:	b96b      	cbnz	r3, 80041ac <_dtoa_r+0x1cc>
 8004190:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004192:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004208 <_dtoa_r+0x228>
 8004196:	2b00      	cmp	r3, #0
 8004198:	f43f af61 	beq.w	800405e <_dtoa_r+0x7e>
 800419c:	f10b 0308 	add.w	r3, fp, #8
 80041a0:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80041a2:	4658      	mov	r0, fp
 80041a4:	6013      	str	r3, [r2, #0]
 80041a6:	b01b      	add	sp, #108	; 0x6c
 80041a8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80041ac:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80041ae:	f8df b05c 	ldr.w	fp, [pc, #92]	; 800420c <_dtoa_r+0x22c>
 80041b2:	2b00      	cmp	r3, #0
 80041b4:	f43f af53 	beq.w	800405e <_dtoa_r+0x7e>
 80041b8:	f10b 0303 	add.w	r3, fp, #3
 80041bc:	e7f0      	b.n	80041a0 <_dtoa_r+0x1c0>
 80041be:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80041c2:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80041c6:	950f      	str	r5, [sp, #60]	; 0x3c
 80041c8:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 80041cc:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 80041d0:	9d18      	ldr	r5, [sp, #96]	; 0x60
 80041d2:	e76f      	b.n	80040b4 <_dtoa_r+0xd4>
 80041d4:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004210 <_dtoa_r+0x230>
 80041d8:	4658      	mov	r0, fp
 80041da:	b01b      	add	sp, #108	; 0x6c
 80041dc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80041e0:	636f4361 	.word	0x636f4361
 80041e4:	3fd287a7 	.word	0x3fd287a7
 80041e8:	8b60c8b3 	.word	0x8b60c8b3
 80041ec:	3fc68a28 	.word	0x3fc68a28
 80041f0:	509f79fb 	.word	0x509f79fb
 80041f4:	3fd34413 	.word	0x3fd34413
 80041f8:	7ff00000 	.word	0x7ff00000
 80041fc:	08007009 	.word	0x08007009
 8004200:	3ff80000 	.word	0x3ff80000
 8004204:	08007068 	.word	0x08007068
 8004208:	0800702c 	.word	0x0800702c
 800420c:	08007038 	.word	0x08007038
 8004210:	08007008 	.word	0x08007008
 8004214:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004218:	2501      	movs	r5, #1
 800421a:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 800421e:	2300      	movs	r3, #0
 8004220:	9302      	str	r3, [sp, #8]
 8004222:	9307      	str	r3, [sp, #28]
 8004224:	2100      	movs	r1, #0
 8004226:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800422a:	940e      	str	r4, [sp, #56]	; 0x38
 800422c:	4648      	mov	r0, r9
 800422e:	f001 fdcd 	bl	8005dcc <_Balloc>
 8004232:	2c0e      	cmp	r4, #14
 8004234:	4683      	mov	fp, r0
 8004236:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800423a:	f200 80fb 	bhi.w	8004434 <_dtoa_r+0x454>
 800423e:	2d00      	cmp	r5, #0
 8004240:	f000 80f8 	beq.w	8004434 <_dtoa_r+0x454>
 8004244:	ed9d 7b00 	vldr	d7, [sp]
 8004248:	9906      	ldr	r1, [sp, #24]
 800424a:	2900      	cmp	r1, #0
 800424c:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004250:	f340 83e5 	ble.w	8004a1e <_dtoa_r+0xa3e>
 8004254:	4b9d      	ldr	r3, [pc, #628]	; (80044cc <_dtoa_r+0x4ec>)
 8004256:	f001 020f 	and.w	r2, r1, #15
 800425a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800425e:	ed93 7b00 	vldr	d7, [r3]
 8004262:	110c      	asrs	r4, r1, #4
 8004264:	06e2      	lsls	r2, r4, #27
 8004266:	ed8d 7b00 	vstr	d7, [sp]
 800426a:	f140 849e 	bpl.w	8004baa <_dtoa_r+0xbca>
 800426e:	4b98      	ldr	r3, [pc, #608]	; (80044d0 <_dtoa_r+0x4f0>)
 8004270:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004274:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004278:	f7fc fd88 	bl	8000d8c <__aeabi_ddiv>
 800427c:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004280:	f004 040f 	and.w	r4, r4, #15
 8004284:	2603      	movs	r6, #3
 8004286:	b17c      	cbz	r4, 80042a8 <_dtoa_r+0x2c8>
 8004288:	e9dd 0100 	ldrd	r0, r1, [sp]
 800428c:	4d90      	ldr	r5, [pc, #576]	; (80044d0 <_dtoa_r+0x4f0>)
 800428e:	07e3      	lsls	r3, r4, #31
 8004290:	d504      	bpl.n	800429c <_dtoa_r+0x2bc>
 8004292:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004296:	f7fc fc4f 	bl	8000b38 <__aeabi_dmul>
 800429a:	3601      	adds	r6, #1
 800429c:	1064      	asrs	r4, r4, #1
 800429e:	f105 0508 	add.w	r5, r5, #8
 80042a2:	d1f4      	bne.n	800428e <_dtoa_r+0x2ae>
 80042a4:	e9cd 0100 	strd	r0, r1, [sp]
 80042a8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80042ac:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80042b0:	f7fc fd6c 	bl	8000d8c <__aeabi_ddiv>
 80042b4:	e9cd 0100 	strd	r0, r1, [sp]
 80042b8:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80042ba:	b143      	cbz	r3, 80042ce <_dtoa_r+0x2ee>
 80042bc:	2200      	movs	r2, #0
 80042be:	4b85      	ldr	r3, [pc, #532]	; (80044d4 <_dtoa_r+0x4f4>)
 80042c0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80042c4:	f7fc feaa 	bl	800101c <__aeabi_dcmplt>
 80042c8:	2800      	cmp	r0, #0
 80042ca:	f040 84ff 	bne.w	8004ccc <_dtoa_r+0xcec>
 80042ce:	4630      	mov	r0, r6
 80042d0:	f7fc fbc8 	bl	8000a64 <__aeabi_i2d>
 80042d4:	e9dd 2300 	ldrd	r2, r3, [sp]
 80042d8:	f7fc fc2e 	bl	8000b38 <__aeabi_dmul>
 80042dc:	4b7e      	ldr	r3, [pc, #504]	; (80044d8 <_dtoa_r+0x4f8>)
 80042de:	2200      	movs	r2, #0
 80042e0:	f7fc fa74 	bl	80007cc <__adddf3>
 80042e4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80042e6:	4606      	mov	r6, r0
 80042e8:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80042ec:	2b00      	cmp	r3, #0
 80042ee:	f000 841c 	beq.w	8004b2a <_dtoa_r+0xb4a>
 80042f2:	9b06      	ldr	r3, [sp, #24]
 80042f4:	9316      	str	r3, [sp, #88]	; 0x58
 80042f6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80042f8:	9312      	str	r3, [sp, #72]	; 0x48
 80042fa:	e9dd 0100 	ldrd	r0, r1, [sp]
 80042fe:	f7fc fecb 	bl	8001098 <__aeabi_d2iz>
 8004302:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004304:	4b71      	ldr	r3, [pc, #452]	; (80044cc <_dtoa_r+0x4ec>)
 8004306:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800430a:	ed13 7b02 	vldr	d7, [r3, #-8]
 800430e:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004312:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004316:	f7fc fba5 	bl	8000a64 <__aeabi_i2d>
 800431a:	460b      	mov	r3, r1
 800431c:	4602      	mov	r2, r0
 800431e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004322:	e9cd 6700 	strd	r6, r7, [sp]
 8004326:	f7fc fa4f 	bl	80007c8 <__aeabi_dsub>
 800432a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800432c:	b2ed      	uxtb	r5, r5
 800432e:	4606      	mov	r6, r0
 8004330:	460f      	mov	r7, r1
 8004332:	f10b 0401 	add.w	r4, fp, #1
 8004336:	2b00      	cmp	r3, #0
 8004338:	f000 8458 	beq.w	8004bec <_dtoa_r+0xc0c>
 800433c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004340:	2000      	movs	r0, #0
 8004342:	4966      	ldr	r1, [pc, #408]	; (80044dc <_dtoa_r+0x4fc>)
 8004344:	f7fc fd22 	bl	8000d8c <__aeabi_ddiv>
 8004348:	e9dd 2300 	ldrd	r2, r3, [sp]
 800434c:	f7fc fa3c 	bl	80007c8 <__aeabi_dsub>
 8004350:	f88b 5000 	strb.w	r5, [fp]
 8004354:	4632      	mov	r2, r6
 8004356:	463b      	mov	r3, r7
 8004358:	e9cd 0100 	strd	r0, r1, [sp]
 800435c:	f7fc fe7c 	bl	8001058 <__aeabi_dcmpgt>
 8004360:	2800      	cmp	r0, #0
 8004362:	f040 8502 	bne.w	8004d6a <_dtoa_r+0xd8a>
 8004366:	4632      	mov	r2, r6
 8004368:	463b      	mov	r3, r7
 800436a:	2000      	movs	r0, #0
 800436c:	4959      	ldr	r1, [pc, #356]	; (80044d4 <_dtoa_r+0x4f4>)
 800436e:	f7fc fa2b 	bl	80007c8 <__aeabi_dsub>
 8004372:	4602      	mov	r2, r0
 8004374:	460b      	mov	r3, r1
 8004376:	e9dd 0100 	ldrd	r0, r1, [sp]
 800437a:	f7fc fe6d 	bl	8001058 <__aeabi_dcmpgt>
 800437e:	2800      	cmp	r0, #0
 8004380:	f040 84fb 	bne.w	8004d7a <_dtoa_r+0xd9a>
 8004384:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004386:	2a01      	cmp	r2, #1
 8004388:	d050      	beq.n	800442c <_dtoa_r+0x44c>
 800438a:	445a      	add	r2, fp
 800438c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004390:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004394:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004398:	4692      	mov	sl, r2
 800439a:	46cb      	mov	fp, r9
 800439c:	e9dd 8900 	ldrd	r8, r9, [sp]
 80043a0:	e00c      	b.n	80043bc <_dtoa_r+0x3dc>
 80043a2:	2000      	movs	r0, #0
 80043a4:	494b      	ldr	r1, [pc, #300]	; (80044d4 <_dtoa_r+0x4f4>)
 80043a6:	f7fc fa0f 	bl	80007c8 <__aeabi_dsub>
 80043aa:	4642      	mov	r2, r8
 80043ac:	464b      	mov	r3, r9
 80043ae:	f7fc fe35 	bl	800101c <__aeabi_dcmplt>
 80043b2:	2800      	cmp	r0, #0
 80043b4:	f040 84dc 	bne.w	8004d70 <_dtoa_r+0xd90>
 80043b8:	4554      	cmp	r4, sl
 80043ba:	d030      	beq.n	800441e <_dtoa_r+0x43e>
 80043bc:	4640      	mov	r0, r8
 80043be:	4649      	mov	r1, r9
 80043c0:	2200      	movs	r2, #0
 80043c2:	4b47      	ldr	r3, [pc, #284]	; (80044e0 <_dtoa_r+0x500>)
 80043c4:	f7fc fbb8 	bl	8000b38 <__aeabi_dmul>
 80043c8:	2200      	movs	r2, #0
 80043ca:	4b45      	ldr	r3, [pc, #276]	; (80044e0 <_dtoa_r+0x500>)
 80043cc:	4680      	mov	r8, r0
 80043ce:	4689      	mov	r9, r1
 80043d0:	4630      	mov	r0, r6
 80043d2:	4639      	mov	r1, r7
 80043d4:	f7fc fbb0 	bl	8000b38 <__aeabi_dmul>
 80043d8:	460f      	mov	r7, r1
 80043da:	4606      	mov	r6, r0
 80043dc:	f7fc fe5c 	bl	8001098 <__aeabi_d2iz>
 80043e0:	4605      	mov	r5, r0
 80043e2:	f7fc fb3f 	bl	8000a64 <__aeabi_i2d>
 80043e6:	4602      	mov	r2, r0
 80043e8:	460b      	mov	r3, r1
 80043ea:	4630      	mov	r0, r6
 80043ec:	4639      	mov	r1, r7
 80043ee:	f7fc f9eb 	bl	80007c8 <__aeabi_dsub>
 80043f2:	3530      	adds	r5, #48	; 0x30
 80043f4:	b2ed      	uxtb	r5, r5
 80043f6:	4642      	mov	r2, r8
 80043f8:	464b      	mov	r3, r9
 80043fa:	f804 5b01 	strb.w	r5, [r4], #1
 80043fe:	4606      	mov	r6, r0
 8004400:	460f      	mov	r7, r1
 8004402:	f7fc fe0b 	bl	800101c <__aeabi_dcmplt>
 8004406:	4632      	mov	r2, r6
 8004408:	463b      	mov	r3, r7
 800440a:	2800      	cmp	r0, #0
 800440c:	d0c9      	beq.n	80043a2 <_dtoa_r+0x3c2>
 800440e:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004410:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004414:	9306      	str	r3, [sp, #24]
 8004416:	46d9      	mov	r9, fp
 8004418:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800441c:	e236      	b.n	800488c <_dtoa_r+0x8ac>
 800441e:	46d9      	mov	r9, fp
 8004420:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004424:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004428:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800442c:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004430:	e9cd 3400 	strd	r3, r4, [sp]
 8004434:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004436:	2b00      	cmp	r3, #0
 8004438:	f2c0 80ae 	blt.w	8004598 <_dtoa_r+0x5b8>
 800443c:	9a06      	ldr	r2, [sp, #24]
 800443e:	2a0e      	cmp	r2, #14
 8004440:	f300 80aa 	bgt.w	8004598 <_dtoa_r+0x5b8>
 8004444:	4b21      	ldr	r3, [pc, #132]	; (80044cc <_dtoa_r+0x4ec>)
 8004446:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800444a:	ed93 7b00 	vldr	d7, [r3]
 800444e:	9b07      	ldr	r3, [sp, #28]
 8004450:	2b00      	cmp	r3, #0
 8004452:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004456:	f2c0 82be 	blt.w	80049d6 <_dtoa_r+0x9f6>
 800445a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800445e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004462:	4630      	mov	r0, r6
 8004464:	4639      	mov	r1, r7
 8004466:	f7fc fc91 	bl	8000d8c <__aeabi_ddiv>
 800446a:	f7fc fe15 	bl	8001098 <__aeabi_d2iz>
 800446e:	4605      	mov	r5, r0
 8004470:	f7fc faf8 	bl	8000a64 <__aeabi_i2d>
 8004474:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004478:	f7fc fb5e 	bl	8000b38 <__aeabi_dmul>
 800447c:	460b      	mov	r3, r1
 800447e:	4602      	mov	r2, r0
 8004480:	4639      	mov	r1, r7
 8004482:	4630      	mov	r0, r6
 8004484:	f7fc f9a0 	bl	80007c8 <__aeabi_dsub>
 8004488:	f105 0330 	add.w	r3, r5, #48	; 0x30
 800448c:	f88b 3000 	strb.w	r3, [fp]
 8004490:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004492:	2b01      	cmp	r3, #1
 8004494:	4606      	mov	r6, r0
 8004496:	460f      	mov	r7, r1
 8004498:	f10b 0401 	add.w	r4, fp, #1
 800449c:	d053      	beq.n	8004546 <_dtoa_r+0x566>
 800449e:	2200      	movs	r2, #0
 80044a0:	4b0f      	ldr	r3, [pc, #60]	; (80044e0 <_dtoa_r+0x500>)
 80044a2:	f7fc fb49 	bl	8000b38 <__aeabi_dmul>
 80044a6:	2200      	movs	r2, #0
 80044a8:	2300      	movs	r3, #0
 80044aa:	4606      	mov	r6, r0
 80044ac:	460f      	mov	r7, r1
 80044ae:	f7fc fdab 	bl	8001008 <__aeabi_dcmpeq>
 80044b2:	2800      	cmp	r0, #0
 80044b4:	f040 81ea 	bne.w	800488c <_dtoa_r+0x8ac>
 80044b8:	f8cd a000 	str.w	sl, [sp]
 80044bc:	f8cd 901c 	str.w	r9, [sp, #28]
 80044c0:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80044c4:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 80044c8:	e017      	b.n	80044fa <_dtoa_r+0x51a>
 80044ca:	bf00      	nop
 80044cc:	08007068 	.word	0x08007068
 80044d0:	08007040 	.word	0x08007040
 80044d4:	3ff00000 	.word	0x3ff00000
 80044d8:	401c0000 	.word	0x401c0000
 80044dc:	3fe00000 	.word	0x3fe00000
 80044e0:	40240000 	.word	0x40240000
 80044e4:	f7fc fb28 	bl	8000b38 <__aeabi_dmul>
 80044e8:	2200      	movs	r2, #0
 80044ea:	2300      	movs	r3, #0
 80044ec:	4606      	mov	r6, r0
 80044ee:	460f      	mov	r7, r1
 80044f0:	f7fc fd8a 	bl	8001008 <__aeabi_dcmpeq>
 80044f4:	2800      	cmp	r0, #0
 80044f6:	f040 833d 	bne.w	8004b74 <_dtoa_r+0xb94>
 80044fa:	464a      	mov	r2, r9
 80044fc:	4653      	mov	r3, sl
 80044fe:	4630      	mov	r0, r6
 8004500:	4639      	mov	r1, r7
 8004502:	f7fc fc43 	bl	8000d8c <__aeabi_ddiv>
 8004506:	f7fc fdc7 	bl	8001098 <__aeabi_d2iz>
 800450a:	4605      	mov	r5, r0
 800450c:	f7fc faaa 	bl	8000a64 <__aeabi_i2d>
 8004510:	464a      	mov	r2, r9
 8004512:	4653      	mov	r3, sl
 8004514:	f7fc fb10 	bl	8000b38 <__aeabi_dmul>
 8004518:	4602      	mov	r2, r0
 800451a:	460b      	mov	r3, r1
 800451c:	4630      	mov	r0, r6
 800451e:	4639      	mov	r1, r7
 8004520:	f7fc f952 	bl	80007c8 <__aeabi_dsub>
 8004524:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004528:	f804 cb01 	strb.w	ip, [r4], #1
 800452c:	eba4 0c0b 	sub.w	ip, r4, fp
 8004530:	45e0      	cmp	r8, ip
 8004532:	4606      	mov	r6, r0
 8004534:	460f      	mov	r7, r1
 8004536:	f04f 0200 	mov.w	r2, #0
 800453a:	4bc1      	ldr	r3, [pc, #772]	; (8004840 <_dtoa_r+0x860>)
 800453c:	d1d2      	bne.n	80044e4 <_dtoa_r+0x504>
 800453e:	f8dd a000 	ldr.w	sl, [sp]
 8004542:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004546:	4632      	mov	r2, r6
 8004548:	463b      	mov	r3, r7
 800454a:	4630      	mov	r0, r6
 800454c:	4639      	mov	r1, r7
 800454e:	f7fc f93d 	bl	80007cc <__adddf3>
 8004552:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004556:	4606      	mov	r6, r0
 8004558:	460f      	mov	r7, r1
 800455a:	f7fc fd7d 	bl	8001058 <__aeabi_dcmpgt>
 800455e:	b958      	cbnz	r0, 8004578 <_dtoa_r+0x598>
 8004560:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004564:	4630      	mov	r0, r6
 8004566:	4639      	mov	r1, r7
 8004568:	f7fc fd4e 	bl	8001008 <__aeabi_dcmpeq>
 800456c:	2800      	cmp	r0, #0
 800456e:	f000 818d 	beq.w	800488c <_dtoa_r+0x8ac>
 8004572:	07e9      	lsls	r1, r5, #31
 8004574:	f140 818a 	bpl.w	800488c <_dtoa_r+0x8ac>
 8004578:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800457c:	e005      	b.n	800458a <_dtoa_r+0x5aa>
 800457e:	459b      	cmp	fp, r3
 8004580:	f000 8373 	beq.w	8004c6a <_dtoa_r+0xc8a>
 8004584:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004588:	461c      	mov	r4, r3
 800458a:	2d39      	cmp	r5, #57	; 0x39
 800458c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004590:	d0f5      	beq.n	800457e <_dtoa_r+0x59e>
 8004592:	3501      	adds	r5, #1
 8004594:	701d      	strb	r5, [r3, #0]
 8004596:	e179      	b.n	800488c <_dtoa_r+0x8ac>
 8004598:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800459a:	2a00      	cmp	r2, #0
 800459c:	d03b      	beq.n	8004616 <_dtoa_r+0x636>
 800459e:	9a02      	ldr	r2, [sp, #8]
 80045a0:	2a01      	cmp	r2, #1
 80045a2:	f340 820b 	ble.w	80049bc <_dtoa_r+0x9dc>
 80045a6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80045a8:	1e5f      	subs	r7, r3, #1
 80045aa:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80045ac:	42bb      	cmp	r3, r7
 80045ae:	f2c0 82e6 	blt.w	8004b7e <_dtoa_r+0xb9e>
 80045b2:	1bdf      	subs	r7, r3, r7
 80045b4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80045b6:	2b00      	cmp	r3, #0
 80045b8:	f2c0 830b 	blt.w	8004bd2 <_dtoa_r+0xbf2>
 80045bc:	9a08      	ldr	r2, [sp, #32]
 80045be:	4614      	mov	r4, r2
 80045c0:	441a      	add	r2, r3
 80045c2:	4498      	add	r8, r3
 80045c4:	9208      	str	r2, [sp, #32]
 80045c6:	2101      	movs	r1, #1
 80045c8:	4648      	mov	r0, r9
 80045ca:	f001 fcbf 	bl	8005f4c <__i2b>
 80045ce:	4605      	mov	r5, r0
 80045d0:	e024      	b.n	800461c <_dtoa_r+0x63c>
 80045d2:	2301      	movs	r3, #1
 80045d4:	930d      	str	r3, [sp, #52]	; 0x34
 80045d6:	e5af      	b.n	8004138 <_dtoa_r+0x158>
 80045d8:	9a08      	ldr	r2, [sp, #32]
 80045da:	9b06      	ldr	r3, [sp, #24]
 80045dc:	1ad2      	subs	r2, r2, r3
 80045de:	425b      	negs	r3, r3
 80045e0:	930b      	str	r3, [sp, #44]	; 0x2c
 80045e2:	2300      	movs	r3, #0
 80045e4:	9208      	str	r2, [sp, #32]
 80045e6:	930c      	str	r3, [sp, #48]	; 0x30
 80045e8:	e5b5      	b.n	8004156 <_dtoa_r+0x176>
 80045ea:	f1c4 0301 	rsb	r3, r4, #1
 80045ee:	9308      	str	r3, [sp, #32]
 80045f0:	f04f 0800 	mov.w	r8, #0
 80045f4:	e5a7      	b.n	8004146 <_dtoa_r+0x166>
 80045f6:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80045fa:	4640      	mov	r0, r8
 80045fc:	f7fc fa32 	bl	8000a64 <__aeabi_i2d>
 8004600:	4632      	mov	r2, r6
 8004602:	463b      	mov	r3, r7
 8004604:	f7fc fd00 	bl	8001008 <__aeabi_dcmpeq>
 8004608:	2800      	cmp	r0, #0
 800460a:	f47f ad81 	bne.w	8004110 <_dtoa_r+0x130>
 800460e:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004612:	9306      	str	r3, [sp, #24]
 8004614:	e57c      	b.n	8004110 <_dtoa_r+0x130>
 8004616:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004618:	9c08      	ldr	r4, [sp, #32]
 800461a:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 800461c:	2c00      	cmp	r4, #0
 800461e:	dd0c      	ble.n	800463a <_dtoa_r+0x65a>
 8004620:	f1b8 0f00 	cmp.w	r8, #0
 8004624:	dd09      	ble.n	800463a <_dtoa_r+0x65a>
 8004626:	4544      	cmp	r4, r8
 8004628:	9a08      	ldr	r2, [sp, #32]
 800462a:	4623      	mov	r3, r4
 800462c:	bfa8      	it	ge
 800462e:	4643      	movge	r3, r8
 8004630:	1ad2      	subs	r2, r2, r3
 8004632:	9208      	str	r2, [sp, #32]
 8004634:	1ae4      	subs	r4, r4, r3
 8004636:	eba8 0803 	sub.w	r8, r8, r3
 800463a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800463c:	b16b      	cbz	r3, 800465a <_dtoa_r+0x67a>
 800463e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004640:	2a00      	cmp	r2, #0
 8004642:	f000 8290 	beq.w	8004b66 <_dtoa_r+0xb86>
 8004646:	1bde      	subs	r6, r3, r7
 8004648:	2f00      	cmp	r7, #0
 800464a:	f040 819b 	bne.w	8004984 <_dtoa_r+0x9a4>
 800464e:	4651      	mov	r1, sl
 8004650:	4632      	mov	r2, r6
 8004652:	4648      	mov	r0, r9
 8004654:	f001 fd2a 	bl	80060ac <__pow5mult>
 8004658:	4682      	mov	sl, r0
 800465a:	2101      	movs	r1, #1
 800465c:	4648      	mov	r0, r9
 800465e:	f001 fc75 	bl	8005f4c <__i2b>
 8004662:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004664:	4606      	mov	r6, r0
 8004666:	2a00      	cmp	r2, #0
 8004668:	f040 8125 	bne.w	80048b6 <_dtoa_r+0x8d6>
 800466c:	9b02      	ldr	r3, [sp, #8]
 800466e:	2b01      	cmp	r3, #1
 8004670:	f340 816c 	ble.w	800494c <_dtoa_r+0x96c>
 8004674:	2001      	movs	r0, #1
 8004676:	4440      	add	r0, r8
 8004678:	f010 001f 	ands.w	r0, r0, #31
 800467c:	f000 8119 	beq.w	80048b2 <_dtoa_r+0x8d2>
 8004680:	f1c0 0320 	rsb	r3, r0, #32
 8004684:	2b04      	cmp	r3, #4
 8004686:	f340 83ac 	ble.w	8004de2 <_dtoa_r+0xe02>
 800468a:	f1c0 001c 	rsb	r0, r0, #28
 800468e:	9b08      	ldr	r3, [sp, #32]
 8004690:	4403      	add	r3, r0
 8004692:	9308      	str	r3, [sp, #32]
 8004694:	4404      	add	r4, r0
 8004696:	4480      	add	r8, r0
 8004698:	9b08      	ldr	r3, [sp, #32]
 800469a:	2b00      	cmp	r3, #0
 800469c:	dd05      	ble.n	80046aa <_dtoa_r+0x6ca>
 800469e:	4651      	mov	r1, sl
 80046a0:	461a      	mov	r2, r3
 80046a2:	4648      	mov	r0, r9
 80046a4:	f001 fd52 	bl	800614c <__lshift>
 80046a8:	4682      	mov	sl, r0
 80046aa:	f1b8 0f00 	cmp.w	r8, #0
 80046ae:	dd05      	ble.n	80046bc <_dtoa_r+0x6dc>
 80046b0:	4631      	mov	r1, r6
 80046b2:	4642      	mov	r2, r8
 80046b4:	4648      	mov	r0, r9
 80046b6:	f001 fd49 	bl	800614c <__lshift>
 80046ba:	4606      	mov	r6, r0
 80046bc:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80046be:	2b00      	cmp	r3, #0
 80046c0:	d177      	bne.n	80047b2 <_dtoa_r+0x7d2>
 80046c2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80046c4:	2b00      	cmp	r3, #0
 80046c6:	f340 8209 	ble.w	8004adc <_dtoa_r+0xafc>
 80046ca:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80046cc:	2b00      	cmp	r3, #0
 80046ce:	f000 8089 	beq.w	80047e4 <_dtoa_r+0x804>
 80046d2:	2c00      	cmp	r4, #0
 80046d4:	f300 816b 	bgt.w	80049ae <_dtoa_r+0x9ce>
 80046d8:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80046da:	2b00      	cmp	r3, #0
 80046dc:	f040 81cd 	bne.w	8004a7a <_dtoa_r+0xa9a>
 80046e0:	46a8      	mov	r8, r5
 80046e2:	9a00      	ldr	r2, [sp, #0]
 80046e4:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 80046e8:	f002 0201 	and.w	r2, r2, #1
 80046ec:	920a      	str	r2, [sp, #40]	; 0x28
 80046ee:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80046f0:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 80046f4:	441a      	add	r2, r3
 80046f6:	465f      	mov	r7, fp
 80046f8:	9209      	str	r2, [sp, #36]	; 0x24
 80046fa:	46b3      	mov	fp, r6
 80046fc:	4659      	mov	r1, fp
 80046fe:	4650      	mov	r0, sl
 8004700:	f7ff fbdc 	bl	8003ebc <quorem>
 8004704:	4629      	mov	r1, r5
 8004706:	4604      	mov	r4, r0
 8004708:	4650      	mov	r0, sl
 800470a:	f001 fd75 	bl	80061f8 <__mcmp>
 800470e:	4659      	mov	r1, fp
 8004710:	4606      	mov	r6, r0
 8004712:	4642      	mov	r2, r8
 8004714:	4648      	mov	r0, r9
 8004716:	f001 fd8b 	bl	8006230 <__mdiff>
 800471a:	f104 0330 	add.w	r3, r4, #48	; 0x30
 800471e:	9300      	str	r3, [sp, #0]
 8004720:	68c3      	ldr	r3, [r0, #12]
 8004722:	4601      	mov	r1, r0
 8004724:	2b00      	cmp	r3, #0
 8004726:	f040 81d4 	bne.w	8004ad2 <_dtoa_r+0xaf2>
 800472a:	9008      	str	r0, [sp, #32]
 800472c:	4650      	mov	r0, sl
 800472e:	f001 fd63 	bl	80061f8 <__mcmp>
 8004732:	9a08      	ldr	r2, [sp, #32]
 8004734:	9007      	str	r0, [sp, #28]
 8004736:	4611      	mov	r1, r2
 8004738:	4648      	mov	r0, r9
 800473a:	f001 fb6d 	bl	8005e18 <_Bfree>
 800473e:	9b07      	ldr	r3, [sp, #28]
 8004740:	b933      	cbnz	r3, 8004750 <_dtoa_r+0x770>
 8004742:	9a02      	ldr	r2, [sp, #8]
 8004744:	b922      	cbnz	r2, 8004750 <_dtoa_r+0x770>
 8004746:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004748:	2b00      	cmp	r3, #0
 800474a:	f000 8319 	beq.w	8004d80 <_dtoa_r+0xda0>
 800474e:	9b02      	ldr	r3, [sp, #8]
 8004750:	2e00      	cmp	r6, #0
 8004752:	f2c0 821c 	blt.w	8004b8e <_dtoa_r+0xbae>
 8004756:	d105      	bne.n	8004764 <_dtoa_r+0x784>
 8004758:	9a02      	ldr	r2, [sp, #8]
 800475a:	b91a      	cbnz	r2, 8004764 <_dtoa_r+0x784>
 800475c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800475e:	2a00      	cmp	r2, #0
 8004760:	f000 8215 	beq.w	8004b8e <_dtoa_r+0xbae>
 8004764:	2b00      	cmp	r3, #0
 8004766:	f107 0401 	add.w	r4, r7, #1
 800476a:	f300 8225 	bgt.w	8004bb8 <_dtoa_r+0xbd8>
 800476e:	9b00      	ldr	r3, [sp, #0]
 8004770:	703b      	strb	r3, [r7, #0]
 8004772:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004774:	42bb      	cmp	r3, r7
 8004776:	f000 8230 	beq.w	8004bda <_dtoa_r+0xbfa>
 800477a:	4651      	mov	r1, sl
 800477c:	2300      	movs	r3, #0
 800477e:	220a      	movs	r2, #10
 8004780:	4648      	mov	r0, r9
 8004782:	f001 fb53 	bl	8005e2c <__multadd>
 8004786:	4545      	cmp	r5, r8
 8004788:	4682      	mov	sl, r0
 800478a:	4629      	mov	r1, r5
 800478c:	f04f 0300 	mov.w	r3, #0
 8004790:	f04f 020a 	mov.w	r2, #10
 8004794:	4648      	mov	r0, r9
 8004796:	f000 8196 	beq.w	8004ac6 <_dtoa_r+0xae6>
 800479a:	f001 fb47 	bl	8005e2c <__multadd>
 800479e:	4641      	mov	r1, r8
 80047a0:	4605      	mov	r5, r0
 80047a2:	2300      	movs	r3, #0
 80047a4:	220a      	movs	r2, #10
 80047a6:	4648      	mov	r0, r9
 80047a8:	f001 fb40 	bl	8005e2c <__multadd>
 80047ac:	4627      	mov	r7, r4
 80047ae:	4680      	mov	r8, r0
 80047b0:	e7a4      	b.n	80046fc <_dtoa_r+0x71c>
 80047b2:	4631      	mov	r1, r6
 80047b4:	4650      	mov	r0, sl
 80047b6:	f001 fd1f 	bl	80061f8 <__mcmp>
 80047ba:	2800      	cmp	r0, #0
 80047bc:	da81      	bge.n	80046c2 <_dtoa_r+0x6e2>
 80047be:	9f06      	ldr	r7, [sp, #24]
 80047c0:	4651      	mov	r1, sl
 80047c2:	2300      	movs	r3, #0
 80047c4:	220a      	movs	r2, #10
 80047c6:	4648      	mov	r0, r9
 80047c8:	3f01      	subs	r7, #1
 80047ca:	9706      	str	r7, [sp, #24]
 80047cc:	f001 fb2e 	bl	8005e2c <__multadd>
 80047d0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80047d2:	4682      	mov	sl, r0
 80047d4:	2b00      	cmp	r3, #0
 80047d6:	f040 82eb 	bne.w	8004db0 <_dtoa_r+0xdd0>
 80047da:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80047dc:	2b00      	cmp	r3, #0
 80047de:	f340 82f3 	ble.w	8004dc8 <_dtoa_r+0xde8>
 80047e2:	9309      	str	r3, [sp, #36]	; 0x24
 80047e4:	465c      	mov	r4, fp
 80047e6:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80047ea:	e002      	b.n	80047f2 <_dtoa_r+0x812>
 80047ec:	f001 fb1e 	bl	8005e2c <__multadd>
 80047f0:	4682      	mov	sl, r0
 80047f2:	4631      	mov	r1, r6
 80047f4:	4650      	mov	r0, sl
 80047f6:	f7ff fb61 	bl	8003ebc <quorem>
 80047fa:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80047fe:	f804 7b01 	strb.w	r7, [r4], #1
 8004802:	eba4 030b 	sub.w	r3, r4, fp
 8004806:	4598      	cmp	r8, r3
 8004808:	f04f 020a 	mov.w	r2, #10
 800480c:	f04f 0300 	mov.w	r3, #0
 8004810:	4651      	mov	r1, sl
 8004812:	4648      	mov	r0, r9
 8004814:	dcea      	bgt.n	80047ec <_dtoa_r+0x80c>
 8004816:	2300      	movs	r3, #0
 8004818:	9700      	str	r7, [sp, #0]
 800481a:	9302      	str	r3, [sp, #8]
 800481c:	4651      	mov	r1, sl
 800481e:	2201      	movs	r2, #1
 8004820:	4648      	mov	r0, r9
 8004822:	f001 fc93 	bl	800614c <__lshift>
 8004826:	4631      	mov	r1, r6
 8004828:	4682      	mov	sl, r0
 800482a:	f001 fce5 	bl	80061f8 <__mcmp>
 800482e:	2800      	cmp	r0, #0
 8004830:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004834:	dc14      	bgt.n	8004860 <_dtoa_r+0x880>
 8004836:	d108      	bne.n	800484a <_dtoa_r+0x86a>
 8004838:	9b00      	ldr	r3, [sp, #0]
 800483a:	07db      	lsls	r3, r3, #31
 800483c:	d410      	bmi.n	8004860 <_dtoa_r+0x880>
 800483e:	e004      	b.n	800484a <_dtoa_r+0x86a>
 8004840:	40240000 	.word	0x40240000
 8004844:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004848:	461c      	mov	r4, r3
 800484a:	2a30      	cmp	r2, #48	; 0x30
 800484c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004850:	d0f8      	beq.n	8004844 <_dtoa_r+0x864>
 8004852:	e00b      	b.n	800486c <_dtoa_r+0x88c>
 8004854:	459b      	cmp	fp, r3
 8004856:	f000 814e 	beq.w	8004af6 <_dtoa_r+0xb16>
 800485a:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 800485e:	461c      	mov	r4, r3
 8004860:	2a39      	cmp	r2, #57	; 0x39
 8004862:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004866:	d0f5      	beq.n	8004854 <_dtoa_r+0x874>
 8004868:	3201      	adds	r2, #1
 800486a:	701a      	strb	r2, [r3, #0]
 800486c:	4631      	mov	r1, r6
 800486e:	4648      	mov	r0, r9
 8004870:	f001 fad2 	bl	8005e18 <_Bfree>
 8004874:	b155      	cbz	r5, 800488c <_dtoa_r+0x8ac>
 8004876:	9902      	ldr	r1, [sp, #8]
 8004878:	b121      	cbz	r1, 8004884 <_dtoa_r+0x8a4>
 800487a:	42a9      	cmp	r1, r5
 800487c:	d002      	beq.n	8004884 <_dtoa_r+0x8a4>
 800487e:	4648      	mov	r0, r9
 8004880:	f001 faca 	bl	8005e18 <_Bfree>
 8004884:	4629      	mov	r1, r5
 8004886:	4648      	mov	r0, r9
 8004888:	f001 fac6 	bl	8005e18 <_Bfree>
 800488c:	4651      	mov	r1, sl
 800488e:	4648      	mov	r0, r9
 8004890:	f001 fac2 	bl	8005e18 <_Bfree>
 8004894:	2200      	movs	r2, #0
 8004896:	9b06      	ldr	r3, [sp, #24]
 8004898:	7022      	strb	r2, [r4, #0]
 800489a:	9a05      	ldr	r2, [sp, #20]
 800489c:	3301      	adds	r3, #1
 800489e:	6013      	str	r3, [r2, #0]
 80048a0:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80048a2:	2b00      	cmp	r3, #0
 80048a4:	f43f abdb 	beq.w	800405e <_dtoa_r+0x7e>
 80048a8:	4658      	mov	r0, fp
 80048aa:	601c      	str	r4, [r3, #0]
 80048ac:	b01b      	add	sp, #108	; 0x6c
 80048ae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80048b2:	201c      	movs	r0, #28
 80048b4:	e6eb      	b.n	800468e <_dtoa_r+0x6ae>
 80048b6:	4601      	mov	r1, r0
 80048b8:	4648      	mov	r0, r9
 80048ba:	f001 fbf7 	bl	80060ac <__pow5mult>
 80048be:	9b02      	ldr	r3, [sp, #8]
 80048c0:	2b01      	cmp	r3, #1
 80048c2:	4606      	mov	r6, r0
 80048c4:	f340 80d4 	ble.w	8004a70 <_dtoa_r+0xa90>
 80048c8:	2300      	movs	r3, #0
 80048ca:	930c      	str	r3, [sp, #48]	; 0x30
 80048cc:	6933      	ldr	r3, [r6, #16]
 80048ce:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 80048d2:	6918      	ldr	r0, [r3, #16]
 80048d4:	f001 faea 	bl	8005eac <__hi0bits>
 80048d8:	f1c0 0020 	rsb	r0, r0, #32
 80048dc:	e6cb      	b.n	8004676 <_dtoa_r+0x696>
 80048de:	900d      	str	r0, [sp, #52]	; 0x34
 80048e0:	e42a      	b.n	8004138 <_dtoa_r+0x158>
 80048e2:	2501      	movs	r5, #1
 80048e4:	e440      	b.n	8004168 <_dtoa_r+0x188>
 80048e6:	f1c3 0820 	rsb	r8, r3, #32
 80048ea:	9b00      	ldr	r3, [sp, #0]
 80048ec:	fa03 f008 	lsl.w	r0, r3, r8
 80048f0:	f7ff bbd8 	b.w	80040a4 <_dtoa_r+0xc4>
 80048f4:	2300      	movs	r3, #0
 80048f6:	930a      	str	r3, [sp, #40]	; 0x28
 80048f8:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 80048fc:	4413      	add	r3, r2
 80048fe:	930e      	str	r3, [sp, #56]	; 0x38
 8004900:	3301      	adds	r3, #1
 8004902:	2b01      	cmp	r3, #1
 8004904:	461e      	mov	r6, r3
 8004906:	9309      	str	r3, [sp, #36]	; 0x24
 8004908:	bfb8      	it	lt
 800490a:	2601      	movlt	r6, #1
 800490c:	2100      	movs	r1, #0
 800490e:	2e17      	cmp	r6, #23
 8004910:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004914:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004916:	f77f ac89 	ble.w	800422c <_dtoa_r+0x24c>
 800491a:	2201      	movs	r2, #1
 800491c:	2304      	movs	r3, #4
 800491e:	005b      	lsls	r3, r3, #1
 8004920:	f103 0014 	add.w	r0, r3, #20
 8004924:	42b0      	cmp	r0, r6
 8004926:	4611      	mov	r1, r2
 8004928:	f102 0201 	add.w	r2, r2, #1
 800492c:	d9f7      	bls.n	800491e <_dtoa_r+0x93e>
 800492e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004932:	e47b      	b.n	800422c <_dtoa_r+0x24c>
 8004934:	2300      	movs	r3, #0
 8004936:	930a      	str	r3, [sp, #40]	; 0x28
 8004938:	9e07      	ldr	r6, [sp, #28]
 800493a:	2e00      	cmp	r6, #0
 800493c:	f340 80e2 	ble.w	8004b04 <_dtoa_r+0xb24>
 8004940:	960e      	str	r6, [sp, #56]	; 0x38
 8004942:	9609      	str	r6, [sp, #36]	; 0x24
 8004944:	e7e2      	b.n	800490c <_dtoa_r+0x92c>
 8004946:	2301      	movs	r3, #1
 8004948:	930a      	str	r3, [sp, #40]	; 0x28
 800494a:	e7f5      	b.n	8004938 <_dtoa_r+0x958>
 800494c:	9b00      	ldr	r3, [sp, #0]
 800494e:	2b00      	cmp	r3, #0
 8004950:	f47f ae90 	bne.w	8004674 <_dtoa_r+0x694>
 8004954:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004958:	f3c2 0313 	ubfx	r3, r2, #0, #20
 800495c:	2b00      	cmp	r3, #0
 800495e:	f040 8192 	bne.w	8004c86 <_dtoa_r+0xca6>
 8004962:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004966:	0d1b      	lsrs	r3, r3, #20
 8004968:	051b      	lsls	r3, r3, #20
 800496a:	b12b      	cbz	r3, 8004978 <_dtoa_r+0x998>
 800496c:	9b08      	ldr	r3, [sp, #32]
 800496e:	3301      	adds	r3, #1
 8004970:	9308      	str	r3, [sp, #32]
 8004972:	f108 0801 	add.w	r8, r8, #1
 8004976:	2301      	movs	r3, #1
 8004978:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800497a:	930c      	str	r3, [sp, #48]	; 0x30
 800497c:	2a00      	cmp	r2, #0
 800497e:	f43f ae79 	beq.w	8004674 <_dtoa_r+0x694>
 8004982:	e7a3      	b.n	80048cc <_dtoa_r+0x8ec>
 8004984:	463a      	mov	r2, r7
 8004986:	4629      	mov	r1, r5
 8004988:	4648      	mov	r0, r9
 800498a:	f001 fb8f 	bl	80060ac <__pow5mult>
 800498e:	4652      	mov	r2, sl
 8004990:	4601      	mov	r1, r0
 8004992:	4605      	mov	r5, r0
 8004994:	4648      	mov	r0, r9
 8004996:	f001 fae3 	bl	8005f60 <__multiply>
 800499a:	4651      	mov	r1, sl
 800499c:	4607      	mov	r7, r0
 800499e:	4648      	mov	r0, r9
 80049a0:	f001 fa3a 	bl	8005e18 <_Bfree>
 80049a4:	46ba      	mov	sl, r7
 80049a6:	2e00      	cmp	r6, #0
 80049a8:	f43f ae57 	beq.w	800465a <_dtoa_r+0x67a>
 80049ac:	e64f      	b.n	800464e <_dtoa_r+0x66e>
 80049ae:	4629      	mov	r1, r5
 80049b0:	4622      	mov	r2, r4
 80049b2:	4648      	mov	r0, r9
 80049b4:	f001 fbca 	bl	800614c <__lshift>
 80049b8:	4605      	mov	r5, r0
 80049ba:	e68d      	b.n	80046d8 <_dtoa_r+0x6f8>
 80049bc:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80049be:	2a00      	cmp	r2, #0
 80049c0:	f000 815d 	beq.w	8004c7e <_dtoa_r+0xc9e>
 80049c4:	f203 4333 	addw	r3, r3, #1075	; 0x433
 80049c8:	9a08      	ldr	r2, [sp, #32]
 80049ca:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80049cc:	4614      	mov	r4, r2
 80049ce:	441a      	add	r2, r3
 80049d0:	4498      	add	r8, r3
 80049d2:	9208      	str	r2, [sp, #32]
 80049d4:	e5f7      	b.n	80045c6 <_dtoa_r+0x5e6>
 80049d6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80049d8:	2b00      	cmp	r3, #0
 80049da:	f73f ad3e 	bgt.w	800445a <_dtoa_r+0x47a>
 80049de:	f040 80bc 	bne.w	8004b5a <_dtoa_r+0xb7a>
 80049e2:	ec51 0b17 	vmov	r0, r1, d7
 80049e6:	2200      	movs	r2, #0
 80049e8:	4bb2      	ldr	r3, [pc, #712]	; (8004cb4 <_dtoa_r+0xcd4>)
 80049ea:	f7fc f8a5 	bl	8000b38 <__aeabi_dmul>
 80049ee:	e9dd 2300 	ldrd	r2, r3, [sp]
 80049f2:	f7fc fb27 	bl	8001044 <__aeabi_dcmpge>
 80049f6:	9e09      	ldr	r6, [sp, #36]	; 0x24
 80049f8:	4635      	mov	r5, r6
 80049fa:	2800      	cmp	r0, #0
 80049fc:	d176      	bne.n	8004aec <_dtoa_r+0xb0c>
 80049fe:	9a06      	ldr	r2, [sp, #24]
 8004a00:	2331      	movs	r3, #49	; 0x31
 8004a02:	3201      	adds	r2, #1
 8004a04:	9206      	str	r2, [sp, #24]
 8004a06:	f88b 3000 	strb.w	r3, [fp]
 8004a0a:	f10b 0401 	add.w	r4, fp, #1
 8004a0e:	4631      	mov	r1, r6
 8004a10:	4648      	mov	r0, r9
 8004a12:	f001 fa01 	bl	8005e18 <_Bfree>
 8004a16:	2d00      	cmp	r5, #0
 8004a18:	f47f af34 	bne.w	8004884 <_dtoa_r+0x8a4>
 8004a1c:	e736      	b.n	800488c <_dtoa_r+0x8ac>
 8004a1e:	f000 8142 	beq.w	8004ca6 <_dtoa_r+0xcc6>
 8004a22:	9b06      	ldr	r3, [sp, #24]
 8004a24:	425c      	negs	r4, r3
 8004a26:	4ba4      	ldr	r3, [pc, #656]	; (8004cb8 <_dtoa_r+0xcd8>)
 8004a28:	f004 020f 	and.w	r2, r4, #15
 8004a2c:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004a30:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004a34:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004a38:	f7fc f87e 	bl	8000b38 <__aeabi_dmul>
 8004a3c:	1124      	asrs	r4, r4, #4
 8004a3e:	e9cd 0100 	strd	r0, r1, [sp]
 8004a42:	f000 81c6 	beq.w	8004dd2 <_dtoa_r+0xdf2>
 8004a46:	4d9d      	ldr	r5, [pc, #628]	; (8004cbc <_dtoa_r+0xcdc>)
 8004a48:	2300      	movs	r3, #0
 8004a4a:	2602      	movs	r6, #2
 8004a4c:	07e7      	lsls	r7, r4, #31
 8004a4e:	d505      	bpl.n	8004a5c <_dtoa_r+0xa7c>
 8004a50:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004a54:	f7fc f870 	bl	8000b38 <__aeabi_dmul>
 8004a58:	3601      	adds	r6, #1
 8004a5a:	2301      	movs	r3, #1
 8004a5c:	1064      	asrs	r4, r4, #1
 8004a5e:	f105 0508 	add.w	r5, r5, #8
 8004a62:	d1f3      	bne.n	8004a4c <_dtoa_r+0xa6c>
 8004a64:	2b00      	cmp	r3, #0
 8004a66:	f43f ac27 	beq.w	80042b8 <_dtoa_r+0x2d8>
 8004a6a:	e9cd 0100 	strd	r0, r1, [sp]
 8004a6e:	e423      	b.n	80042b8 <_dtoa_r+0x2d8>
 8004a70:	9b00      	ldr	r3, [sp, #0]
 8004a72:	2b00      	cmp	r3, #0
 8004a74:	f43f af6e 	beq.w	8004954 <_dtoa_r+0x974>
 8004a78:	e726      	b.n	80048c8 <_dtoa_r+0x8e8>
 8004a7a:	6869      	ldr	r1, [r5, #4]
 8004a7c:	4648      	mov	r0, r9
 8004a7e:	f001 f9a5 	bl	8005dcc <_Balloc>
 8004a82:	692b      	ldr	r3, [r5, #16]
 8004a84:	3302      	adds	r3, #2
 8004a86:	009a      	lsls	r2, r3, #2
 8004a88:	4604      	mov	r4, r0
 8004a8a:	f105 010c 	add.w	r1, r5, #12
 8004a8e:	300c      	adds	r0, #12
 8004a90:	f7fb fd36 	bl	8000500 <memcpy>
 8004a94:	4621      	mov	r1, r4
 8004a96:	2201      	movs	r2, #1
 8004a98:	4648      	mov	r0, r9
 8004a9a:	f001 fb57 	bl	800614c <__lshift>
 8004a9e:	4680      	mov	r8, r0
 8004aa0:	e61f      	b.n	80046e2 <_dtoa_r+0x702>
 8004aa2:	2400      	movs	r4, #0
 8004aa4:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004aa8:	4621      	mov	r1, r4
 8004aaa:	4648      	mov	r0, r9
 8004aac:	f001 f98e 	bl	8005dcc <_Balloc>
 8004ab0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004ab4:	930e      	str	r3, [sp, #56]	; 0x38
 8004ab6:	9309      	str	r3, [sp, #36]	; 0x24
 8004ab8:	2301      	movs	r3, #1
 8004aba:	4683      	mov	fp, r0
 8004abc:	9407      	str	r4, [sp, #28]
 8004abe:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004ac2:	930a      	str	r3, [sp, #40]	; 0x28
 8004ac4:	e4b6      	b.n	8004434 <_dtoa_r+0x454>
 8004ac6:	f001 f9b1 	bl	8005e2c <__multadd>
 8004aca:	4627      	mov	r7, r4
 8004acc:	4605      	mov	r5, r0
 8004ace:	4680      	mov	r8, r0
 8004ad0:	e614      	b.n	80046fc <_dtoa_r+0x71c>
 8004ad2:	4648      	mov	r0, r9
 8004ad4:	f001 f9a0 	bl	8005e18 <_Bfree>
 8004ad8:	2301      	movs	r3, #1
 8004ada:	e639      	b.n	8004750 <_dtoa_r+0x770>
 8004adc:	9b02      	ldr	r3, [sp, #8]
 8004ade:	2b02      	cmp	r3, #2
 8004ae0:	f77f adf3 	ble.w	80046ca <_dtoa_r+0x6ea>
 8004ae4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004ae6:	2b00      	cmp	r3, #0
 8004ae8:	f000 80cf 	beq.w	8004c8a <_dtoa_r+0xcaa>
 8004aec:	9b07      	ldr	r3, [sp, #28]
 8004aee:	43db      	mvns	r3, r3
 8004af0:	9306      	str	r3, [sp, #24]
 8004af2:	465c      	mov	r4, fp
 8004af4:	e78b      	b.n	8004a0e <_dtoa_r+0xa2e>
 8004af6:	9a06      	ldr	r2, [sp, #24]
 8004af8:	2331      	movs	r3, #49	; 0x31
 8004afa:	3201      	adds	r2, #1
 8004afc:	9206      	str	r2, [sp, #24]
 8004afe:	f88b 3000 	strb.w	r3, [fp]
 8004b02:	e6b3      	b.n	800486c <_dtoa_r+0x88c>
 8004b04:	2401      	movs	r4, #1
 8004b06:	9409      	str	r4, [sp, #36]	; 0x24
 8004b08:	9407      	str	r4, [sp, #28]
 8004b0a:	f7ff bb8b 	b.w	8004224 <_dtoa_r+0x244>
 8004b0e:	4630      	mov	r0, r6
 8004b10:	f7fb ffa8 	bl	8000a64 <__aeabi_i2d>
 8004b14:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004b18:	f7fc f80e 	bl	8000b38 <__aeabi_dmul>
 8004b1c:	2200      	movs	r2, #0
 8004b1e:	4b68      	ldr	r3, [pc, #416]	; (8004cc0 <_dtoa_r+0xce0>)
 8004b20:	f7fb fe54 	bl	80007cc <__adddf3>
 8004b24:	4606      	mov	r6, r0
 8004b26:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004b2a:	2200      	movs	r2, #0
 8004b2c:	4b61      	ldr	r3, [pc, #388]	; (8004cb4 <_dtoa_r+0xcd4>)
 8004b2e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004b32:	f7fb fe49 	bl	80007c8 <__aeabi_dsub>
 8004b36:	4632      	mov	r2, r6
 8004b38:	463b      	mov	r3, r7
 8004b3a:	4604      	mov	r4, r0
 8004b3c:	460d      	mov	r5, r1
 8004b3e:	f7fc fa8b 	bl	8001058 <__aeabi_dcmpgt>
 8004b42:	2800      	cmp	r0, #0
 8004b44:	d14f      	bne.n	8004be6 <_dtoa_r+0xc06>
 8004b46:	4632      	mov	r2, r6
 8004b48:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004b4c:	4620      	mov	r0, r4
 8004b4e:	4629      	mov	r1, r5
 8004b50:	f7fc fa64 	bl	800101c <__aeabi_dcmplt>
 8004b54:	2800      	cmp	r0, #0
 8004b56:	f43f ac69 	beq.w	800442c <_dtoa_r+0x44c>
 8004b5a:	2600      	movs	r6, #0
 8004b5c:	4635      	mov	r5, r6
 8004b5e:	e7c5      	b.n	8004aec <_dtoa_r+0xb0c>
 8004b60:	2301      	movs	r3, #1
 8004b62:	930a      	str	r3, [sp, #40]	; 0x28
 8004b64:	e6c8      	b.n	80048f8 <_dtoa_r+0x918>
 8004b66:	4651      	mov	r1, sl
 8004b68:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004b6a:	4648      	mov	r0, r9
 8004b6c:	f001 fa9e 	bl	80060ac <__pow5mult>
 8004b70:	4682      	mov	sl, r0
 8004b72:	e572      	b.n	800465a <_dtoa_r+0x67a>
 8004b74:	f8dd a000 	ldr.w	sl, [sp]
 8004b78:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004b7c:	e686      	b.n	800488c <_dtoa_r+0x8ac>
 8004b7e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004b80:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004b82:	1afb      	subs	r3, r7, r3
 8004b84:	441a      	add	r2, r3
 8004b86:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004b8a:	2700      	movs	r7, #0
 8004b8c:	e512      	b.n	80045b4 <_dtoa_r+0x5d4>
 8004b8e:	2b00      	cmp	r3, #0
 8004b90:	9402      	str	r4, [sp, #8]
 8004b92:	465e      	mov	r6, fp
 8004b94:	f107 0401 	add.w	r4, r7, #1
 8004b98:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004b9c:	f300 80ba 	bgt.w	8004d14 <_dtoa_r+0xd34>
 8004ba0:	9b00      	ldr	r3, [sp, #0]
 8004ba2:	9502      	str	r5, [sp, #8]
 8004ba4:	703b      	strb	r3, [r7, #0]
 8004ba6:	4645      	mov	r5, r8
 8004ba8:	e660      	b.n	800486c <_dtoa_r+0x88c>
 8004baa:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004bae:	2602      	movs	r6, #2
 8004bb0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004bb4:	f7ff bb67 	b.w	8004286 <_dtoa_r+0x2a6>
 8004bb8:	9b00      	ldr	r3, [sp, #0]
 8004bba:	2b39      	cmp	r3, #57	; 0x39
 8004bbc:	465e      	mov	r6, fp
 8004bbe:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004bc2:	f000 80b9 	beq.w	8004d38 <_dtoa_r+0xd58>
 8004bc6:	9b00      	ldr	r3, [sp, #0]
 8004bc8:	9502      	str	r5, [sp, #8]
 8004bca:	3301      	adds	r3, #1
 8004bcc:	703b      	strb	r3, [r7, #0]
 8004bce:	4645      	mov	r5, r8
 8004bd0:	e64c      	b.n	800486c <_dtoa_r+0x88c>
 8004bd2:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004bd6:	1a9c      	subs	r4, r3, r2
 8004bd8:	e4f5      	b.n	80045c6 <_dtoa_r+0x5e6>
 8004bda:	465e      	mov	r6, fp
 8004bdc:	9502      	str	r5, [sp, #8]
 8004bde:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004be2:	4645      	mov	r5, r8
 8004be4:	e61a      	b.n	800481c <_dtoa_r+0x83c>
 8004be6:	2600      	movs	r6, #0
 8004be8:	4635      	mov	r5, r6
 8004bea:	e708      	b.n	80049fe <_dtoa_r+0xa1e>
 8004bec:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004bf0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004bf4:	f7fb ffa0 	bl	8000b38 <__aeabi_dmul>
 8004bf8:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004bfa:	f88b 5000 	strb.w	r5, [fp]
 8004bfe:	2b01      	cmp	r3, #1
 8004c00:	e9cd 0100 	strd	r0, r1, [sp]
 8004c04:	d020      	beq.n	8004c48 <_dtoa_r+0xc68>
 8004c06:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004c08:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004c0c:	445b      	add	r3, fp
 8004c0e:	4698      	mov	r8, r3
 8004c10:	2200      	movs	r2, #0
 8004c12:	4b2c      	ldr	r3, [pc, #176]	; (8004cc4 <_dtoa_r+0xce4>)
 8004c14:	4630      	mov	r0, r6
 8004c16:	4639      	mov	r1, r7
 8004c18:	f7fb ff8e 	bl	8000b38 <__aeabi_dmul>
 8004c1c:	460f      	mov	r7, r1
 8004c1e:	4606      	mov	r6, r0
 8004c20:	f7fc fa3a 	bl	8001098 <__aeabi_d2iz>
 8004c24:	4605      	mov	r5, r0
 8004c26:	f7fb ff1d 	bl	8000a64 <__aeabi_i2d>
 8004c2a:	3530      	adds	r5, #48	; 0x30
 8004c2c:	4602      	mov	r2, r0
 8004c2e:	460b      	mov	r3, r1
 8004c30:	4630      	mov	r0, r6
 8004c32:	4639      	mov	r1, r7
 8004c34:	f7fb fdc8 	bl	80007c8 <__aeabi_dsub>
 8004c38:	f804 5b01 	strb.w	r5, [r4], #1
 8004c3c:	4544      	cmp	r4, r8
 8004c3e:	4606      	mov	r6, r0
 8004c40:	460f      	mov	r7, r1
 8004c42:	d1e5      	bne.n	8004c10 <_dtoa_r+0xc30>
 8004c44:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004c48:	4b1f      	ldr	r3, [pc, #124]	; (8004cc8 <_dtoa_r+0xce8>)
 8004c4a:	2200      	movs	r2, #0
 8004c4c:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004c50:	f7fb fdbc 	bl	80007cc <__adddf3>
 8004c54:	4632      	mov	r2, r6
 8004c56:	463b      	mov	r3, r7
 8004c58:	f7fc f9e0 	bl	800101c <__aeabi_dcmplt>
 8004c5c:	2800      	cmp	r0, #0
 8004c5e:	d070      	beq.n	8004d42 <_dtoa_r+0xd62>
 8004c60:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004c62:	9306      	str	r3, [sp, #24]
 8004c64:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004c68:	e48f      	b.n	800458a <_dtoa_r+0x5aa>
 8004c6a:	2330      	movs	r3, #48	; 0x30
 8004c6c:	f88b 3000 	strb.w	r3, [fp]
 8004c70:	9b06      	ldr	r3, [sp, #24]
 8004c72:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004c76:	3301      	adds	r3, #1
 8004c78:	9306      	str	r3, [sp, #24]
 8004c7a:	465b      	mov	r3, fp
 8004c7c:	e489      	b.n	8004592 <_dtoa_r+0x5b2>
 8004c7e:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004c80:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004c84:	e6a0      	b.n	80049c8 <_dtoa_r+0x9e8>
 8004c86:	2300      	movs	r3, #0
 8004c88:	e676      	b.n	8004978 <_dtoa_r+0x998>
 8004c8a:	4631      	mov	r1, r6
 8004c8c:	2205      	movs	r2, #5
 8004c8e:	4648      	mov	r0, r9
 8004c90:	f001 f8cc 	bl	8005e2c <__multadd>
 8004c94:	4601      	mov	r1, r0
 8004c96:	4606      	mov	r6, r0
 8004c98:	4650      	mov	r0, sl
 8004c9a:	f001 faad 	bl	80061f8 <__mcmp>
 8004c9e:	2800      	cmp	r0, #0
 8004ca0:	f73f aead 	bgt.w	80049fe <_dtoa_r+0xa1e>
 8004ca4:	e722      	b.n	8004aec <_dtoa_r+0xb0c>
 8004ca6:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004caa:	2602      	movs	r6, #2
 8004cac:	ed8d 7b00 	vstr	d7, [sp]
 8004cb0:	f7ff bb02 	b.w	80042b8 <_dtoa_r+0x2d8>
 8004cb4:	40140000 	.word	0x40140000
 8004cb8:	08007068 	.word	0x08007068
 8004cbc:	08007040 	.word	0x08007040
 8004cc0:	401c0000 	.word	0x401c0000
 8004cc4:	40240000 	.word	0x40240000
 8004cc8:	3fe00000 	.word	0x3fe00000
 8004ccc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004cce:	2b00      	cmp	r3, #0
 8004cd0:	f43f af1d 	beq.w	8004b0e <_dtoa_r+0xb2e>
 8004cd4:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004cd6:	2c00      	cmp	r4, #0
 8004cd8:	f77f aba8 	ble.w	800442c <_dtoa_r+0x44c>
 8004cdc:	2200      	movs	r2, #0
 8004cde:	4b45      	ldr	r3, [pc, #276]	; (8004df4 <_dtoa_r+0xe14>)
 8004ce0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004ce4:	f7fb ff28 	bl	8000b38 <__aeabi_dmul>
 8004ce8:	e9cd 0100 	strd	r0, r1, [sp]
 8004cec:	1c70      	adds	r0, r6, #1
 8004cee:	f7fb feb9 	bl	8000a64 <__aeabi_i2d>
 8004cf2:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004cf6:	f7fb ff1f 	bl	8000b38 <__aeabi_dmul>
 8004cfa:	4b3f      	ldr	r3, [pc, #252]	; (8004df8 <_dtoa_r+0xe18>)
 8004cfc:	2200      	movs	r2, #0
 8004cfe:	f7fb fd65 	bl	80007cc <__adddf3>
 8004d02:	9b06      	ldr	r3, [sp, #24]
 8004d04:	9412      	str	r4, [sp, #72]	; 0x48
 8004d06:	3b01      	subs	r3, #1
 8004d08:	4606      	mov	r6, r0
 8004d0a:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004d0e:	9316      	str	r3, [sp, #88]	; 0x58
 8004d10:	f7ff baf3 	b.w	80042fa <_dtoa_r+0x31a>
 8004d14:	4651      	mov	r1, sl
 8004d16:	2201      	movs	r2, #1
 8004d18:	4648      	mov	r0, r9
 8004d1a:	f001 fa17 	bl	800614c <__lshift>
 8004d1e:	4631      	mov	r1, r6
 8004d20:	4682      	mov	sl, r0
 8004d22:	f001 fa69 	bl	80061f8 <__mcmp>
 8004d26:	2800      	cmp	r0, #0
 8004d28:	dd3b      	ble.n	8004da2 <_dtoa_r+0xdc2>
 8004d2a:	9b00      	ldr	r3, [sp, #0]
 8004d2c:	2b39      	cmp	r3, #57	; 0x39
 8004d2e:	d003      	beq.n	8004d38 <_dtoa_r+0xd58>
 8004d30:	9b02      	ldr	r3, [sp, #8]
 8004d32:	3331      	adds	r3, #49	; 0x31
 8004d34:	9300      	str	r3, [sp, #0]
 8004d36:	e733      	b.n	8004ba0 <_dtoa_r+0xbc0>
 8004d38:	2239      	movs	r2, #57	; 0x39
 8004d3a:	9502      	str	r5, [sp, #8]
 8004d3c:	703a      	strb	r2, [r7, #0]
 8004d3e:	4645      	mov	r5, r8
 8004d40:	e58e      	b.n	8004860 <_dtoa_r+0x880>
 8004d42:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d46:	2000      	movs	r0, #0
 8004d48:	492c      	ldr	r1, [pc, #176]	; (8004dfc <_dtoa_r+0xe1c>)
 8004d4a:	f7fb fd3d 	bl	80007c8 <__aeabi_dsub>
 8004d4e:	4632      	mov	r2, r6
 8004d50:	463b      	mov	r3, r7
 8004d52:	f7fc f981 	bl	8001058 <__aeabi_dcmpgt>
 8004d56:	b910      	cbnz	r0, 8004d5e <_dtoa_r+0xd7e>
 8004d58:	f7ff bb68 	b.w	800442c <_dtoa_r+0x44c>
 8004d5c:	4614      	mov	r4, r2
 8004d5e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004d62:	2b30      	cmp	r3, #48	; 0x30
 8004d64:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004d68:	d0f8      	beq.n	8004d5c <_dtoa_r+0xd7c>
 8004d6a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004d6c:	9306      	str	r3, [sp, #24]
 8004d6e:	e58d      	b.n	800488c <_dtoa_r+0x8ac>
 8004d70:	46d9      	mov	r9, fp
 8004d72:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004d76:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004d7a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004d7c:	9306      	str	r3, [sp, #24]
 8004d7e:	e404      	b.n	800458a <_dtoa_r+0x5aa>
 8004d80:	9b00      	ldr	r3, [sp, #0]
 8004d82:	2b39      	cmp	r3, #57	; 0x39
 8004d84:	4621      	mov	r1, r4
 8004d86:	4632      	mov	r2, r6
 8004d88:	f107 0401 	add.w	r4, r7, #1
 8004d8c:	465e      	mov	r6, fp
 8004d8e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d92:	d0d1      	beq.n	8004d38 <_dtoa_r+0xd58>
 8004d94:	2a00      	cmp	r2, #0
 8004d96:	f77f af03 	ble.w	8004ba0 <_dtoa_r+0xbc0>
 8004d9a:	460b      	mov	r3, r1
 8004d9c:	3331      	adds	r3, #49	; 0x31
 8004d9e:	9300      	str	r3, [sp, #0]
 8004da0:	e6fe      	b.n	8004ba0 <_dtoa_r+0xbc0>
 8004da2:	f47f aefd 	bne.w	8004ba0 <_dtoa_r+0xbc0>
 8004da6:	9b00      	ldr	r3, [sp, #0]
 8004da8:	07da      	lsls	r2, r3, #31
 8004daa:	f57f aef9 	bpl.w	8004ba0 <_dtoa_r+0xbc0>
 8004dae:	e7bc      	b.n	8004d2a <_dtoa_r+0xd4a>
 8004db0:	4629      	mov	r1, r5
 8004db2:	2300      	movs	r3, #0
 8004db4:	220a      	movs	r2, #10
 8004db6:	4648      	mov	r0, r9
 8004db8:	f001 f838 	bl	8005e2c <__multadd>
 8004dbc:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004dbe:	2b00      	cmp	r3, #0
 8004dc0:	4605      	mov	r5, r0
 8004dc2:	dd09      	ble.n	8004dd8 <_dtoa_r+0xdf8>
 8004dc4:	9309      	str	r3, [sp, #36]	; 0x24
 8004dc6:	e484      	b.n	80046d2 <_dtoa_r+0x6f2>
 8004dc8:	9b02      	ldr	r3, [sp, #8]
 8004dca:	2b02      	cmp	r3, #2
 8004dcc:	dc0e      	bgt.n	8004dec <_dtoa_r+0xe0c>
 8004dce:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004dd0:	e507      	b.n	80047e2 <_dtoa_r+0x802>
 8004dd2:	2602      	movs	r6, #2
 8004dd4:	f7ff ba70 	b.w	80042b8 <_dtoa_r+0x2d8>
 8004dd8:	9b02      	ldr	r3, [sp, #8]
 8004dda:	2b02      	cmp	r3, #2
 8004ddc:	dc06      	bgt.n	8004dec <_dtoa_r+0xe0c>
 8004dde:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004de0:	e7f0      	b.n	8004dc4 <_dtoa_r+0xde4>
 8004de2:	f43f ac59 	beq.w	8004698 <_dtoa_r+0x6b8>
 8004de6:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004dea:	e450      	b.n	800468e <_dtoa_r+0x6ae>
 8004dec:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004dee:	9309      	str	r3, [sp, #36]	; 0x24
 8004df0:	e678      	b.n	8004ae4 <_dtoa_r+0xb04>
 8004df2:	bf00      	nop
 8004df4:	40240000 	.word	0x40240000
 8004df8:	401c0000 	.word	0x401c0000
 8004dfc:	3fe00000 	.word	0x3fe00000

08004e00 <__sflush_r>:
 8004e00:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004e04:	b29a      	uxth	r2, r3
 8004e06:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004e0a:	460c      	mov	r4, r1
 8004e0c:	0711      	lsls	r1, r2, #28
 8004e0e:	4680      	mov	r8, r0
 8004e10:	d444      	bmi.n	8004e9c <__sflush_r+0x9c>
 8004e12:	6862      	ldr	r2, [r4, #4]
 8004e14:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004e18:	2a00      	cmp	r2, #0
 8004e1a:	81a3      	strh	r3, [r4, #12]
 8004e1c:	dd59      	ble.n	8004ed2 <__sflush_r+0xd2>
 8004e1e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004e20:	2d00      	cmp	r5, #0
 8004e22:	d053      	beq.n	8004ecc <__sflush_r+0xcc>
 8004e24:	2200      	movs	r2, #0
 8004e26:	b29b      	uxth	r3, r3
 8004e28:	f8d8 6000 	ldr.w	r6, [r8]
 8004e2c:	69e1      	ldr	r1, [r4, #28]
 8004e2e:	f8c8 2000 	str.w	r2, [r8]
 8004e32:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8004e36:	f040 8083 	bne.w	8004f40 <__sflush_r+0x140>
 8004e3a:	2301      	movs	r3, #1
 8004e3c:	4640      	mov	r0, r8
 8004e3e:	47a8      	blx	r5
 8004e40:	1c42      	adds	r2, r0, #1
 8004e42:	d04a      	beq.n	8004eda <__sflush_r+0xda>
 8004e44:	89a3      	ldrh	r3, [r4, #12]
 8004e46:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004e48:	69e1      	ldr	r1, [r4, #28]
 8004e4a:	075b      	lsls	r3, r3, #29
 8004e4c:	d505      	bpl.n	8004e5a <__sflush_r+0x5a>
 8004e4e:	6862      	ldr	r2, [r4, #4]
 8004e50:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8004e52:	1a80      	subs	r0, r0, r2
 8004e54:	b10b      	cbz	r3, 8004e5a <__sflush_r+0x5a>
 8004e56:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8004e58:	1ac0      	subs	r0, r0, r3
 8004e5a:	4602      	mov	r2, r0
 8004e5c:	2300      	movs	r3, #0
 8004e5e:	4640      	mov	r0, r8
 8004e60:	47a8      	blx	r5
 8004e62:	1c47      	adds	r7, r0, #1
 8004e64:	d045      	beq.n	8004ef2 <__sflush_r+0xf2>
 8004e66:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004e6a:	6922      	ldr	r2, [r4, #16]
 8004e6c:	6022      	str	r2, [r4, #0]
 8004e6e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8004e72:	2200      	movs	r2, #0
 8004e74:	81a3      	strh	r3, [r4, #12]
 8004e76:	04db      	lsls	r3, r3, #19
 8004e78:	6062      	str	r2, [r4, #4]
 8004e7a:	d500      	bpl.n	8004e7e <__sflush_r+0x7e>
 8004e7c:	6520      	str	r0, [r4, #80]	; 0x50
 8004e7e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004e80:	f8c8 6000 	str.w	r6, [r8]
 8004e84:	b311      	cbz	r1, 8004ecc <__sflush_r+0xcc>
 8004e86:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004e8a:	4299      	cmp	r1, r3
 8004e8c:	d002      	beq.n	8004e94 <__sflush_r+0x94>
 8004e8e:	4640      	mov	r0, r8
 8004e90:	f000 f95e 	bl	8005150 <_free_r>
 8004e94:	2000      	movs	r0, #0
 8004e96:	6320      	str	r0, [r4, #48]	; 0x30
 8004e98:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004e9c:	6926      	ldr	r6, [r4, #16]
 8004e9e:	b1ae      	cbz	r6, 8004ecc <__sflush_r+0xcc>
 8004ea0:	6825      	ldr	r5, [r4, #0]
 8004ea2:	6026      	str	r6, [r4, #0]
 8004ea4:	0792      	lsls	r2, r2, #30
 8004ea6:	bf0c      	ite	eq
 8004ea8:	6963      	ldreq	r3, [r4, #20]
 8004eaa:	2300      	movne	r3, #0
 8004eac:	1bad      	subs	r5, r5, r6
 8004eae:	60a3      	str	r3, [r4, #8]
 8004eb0:	e00a      	b.n	8004ec8 <__sflush_r+0xc8>
 8004eb2:	462b      	mov	r3, r5
 8004eb4:	4632      	mov	r2, r6
 8004eb6:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8004eb8:	69e1      	ldr	r1, [r4, #28]
 8004eba:	4640      	mov	r0, r8
 8004ebc:	47b8      	blx	r7
 8004ebe:	2800      	cmp	r0, #0
 8004ec0:	eba5 0500 	sub.w	r5, r5, r0
 8004ec4:	4406      	add	r6, r0
 8004ec6:	dd2b      	ble.n	8004f20 <__sflush_r+0x120>
 8004ec8:	2d00      	cmp	r5, #0
 8004eca:	dcf2      	bgt.n	8004eb2 <__sflush_r+0xb2>
 8004ecc:	2000      	movs	r0, #0
 8004ece:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004ed2:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8004ed4:	2a00      	cmp	r2, #0
 8004ed6:	dca2      	bgt.n	8004e1e <__sflush_r+0x1e>
 8004ed8:	e7f8      	b.n	8004ecc <__sflush_r+0xcc>
 8004eda:	f8d8 3000 	ldr.w	r3, [r8]
 8004ede:	2b00      	cmp	r3, #0
 8004ee0:	d0b0      	beq.n	8004e44 <__sflush_r+0x44>
 8004ee2:	2b1d      	cmp	r3, #29
 8004ee4:	d001      	beq.n	8004eea <__sflush_r+0xea>
 8004ee6:	2b16      	cmp	r3, #22
 8004ee8:	d12c      	bne.n	8004f44 <__sflush_r+0x144>
 8004eea:	f8c8 6000 	str.w	r6, [r8]
 8004eee:	2000      	movs	r0, #0
 8004ef0:	e7ed      	b.n	8004ece <__sflush_r+0xce>
 8004ef2:	f8d8 1000 	ldr.w	r1, [r8]
 8004ef6:	291d      	cmp	r1, #29
 8004ef8:	d81a      	bhi.n	8004f30 <__sflush_r+0x130>
 8004efa:	4b15      	ldr	r3, [pc, #84]	; (8004f50 <__sflush_r+0x150>)
 8004efc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004f00:	40cb      	lsrs	r3, r1
 8004f02:	43db      	mvns	r3, r3
 8004f04:	f013 0301 	ands.w	r3, r3, #1
 8004f08:	d114      	bne.n	8004f34 <__sflush_r+0x134>
 8004f0a:	6925      	ldr	r5, [r4, #16]
 8004f0c:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8004f10:	e9c4 5300 	strd	r5, r3, [r4]
 8004f14:	04d5      	lsls	r5, r2, #19
 8004f16:	81a2      	strh	r2, [r4, #12]
 8004f18:	d5b1      	bpl.n	8004e7e <__sflush_r+0x7e>
 8004f1a:	2900      	cmp	r1, #0
 8004f1c:	d1af      	bne.n	8004e7e <__sflush_r+0x7e>
 8004f1e:	e7ad      	b.n	8004e7c <__sflush_r+0x7c>
 8004f20:	89a3      	ldrh	r3, [r4, #12]
 8004f22:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004f26:	81a3      	strh	r3, [r4, #12]
 8004f28:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004f2c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004f30:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004f34:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004f38:	81a2      	strh	r2, [r4, #12]
 8004f3a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004f3e:	e7c6      	b.n	8004ece <__sflush_r+0xce>
 8004f40:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8004f42:	e782      	b.n	8004e4a <__sflush_r+0x4a>
 8004f44:	89a3      	ldrh	r3, [r4, #12]
 8004f46:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004f4a:	81a3      	strh	r3, [r4, #12]
 8004f4c:	e7bf      	b.n	8004ece <__sflush_r+0xce>
 8004f4e:	bf00      	nop
 8004f50:	20400001 	.word	0x20400001

08004f54 <_fflush_r>:
 8004f54:	b538      	push	{r3, r4, r5, lr}
 8004f56:	460d      	mov	r5, r1
 8004f58:	4604      	mov	r4, r0
 8004f5a:	b108      	cbz	r0, 8004f60 <_fflush_r+0xc>
 8004f5c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8004f5e:	b1a3      	cbz	r3, 8004f8a <_fflush_r+0x36>
 8004f60:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8004f64:	b1b8      	cbz	r0, 8004f96 <_fflush_r+0x42>
 8004f66:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8004f68:	07db      	lsls	r3, r3, #31
 8004f6a:	d401      	bmi.n	8004f70 <_fflush_r+0x1c>
 8004f6c:	0581      	lsls	r1, r0, #22
 8004f6e:	d51a      	bpl.n	8004fa6 <_fflush_r+0x52>
 8004f70:	4620      	mov	r0, r4
 8004f72:	4629      	mov	r1, r5
 8004f74:	f7ff ff44 	bl	8004e00 <__sflush_r>
 8004f78:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8004f7a:	07da      	lsls	r2, r3, #31
 8004f7c:	4604      	mov	r4, r0
 8004f7e:	d402      	bmi.n	8004f86 <_fflush_r+0x32>
 8004f80:	89ab      	ldrh	r3, [r5, #12]
 8004f82:	059b      	lsls	r3, r3, #22
 8004f84:	d50a      	bpl.n	8004f9c <_fflush_r+0x48>
 8004f86:	4620      	mov	r0, r4
 8004f88:	bd38      	pop	{r3, r4, r5, pc}
 8004f8a:	f000 f83f 	bl	800500c <__sinit>
 8004f8e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8004f92:	2800      	cmp	r0, #0
 8004f94:	d1e7      	bne.n	8004f66 <_fflush_r+0x12>
 8004f96:	4604      	mov	r4, r0
 8004f98:	4620      	mov	r0, r4
 8004f9a:	bd38      	pop	{r3, r4, r5, pc}
 8004f9c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8004f9e:	f000 fb87 	bl	80056b0 <__retarget_lock_release_recursive>
 8004fa2:	4620      	mov	r0, r4
 8004fa4:	bd38      	pop	{r3, r4, r5, pc}
 8004fa6:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8004fa8:	f000 fb80 	bl	80056ac <__retarget_lock_acquire_recursive>
 8004fac:	e7e0      	b.n	8004f70 <_fflush_r+0x1c>
 8004fae:	bf00      	nop

08004fb0 <std>:
 8004fb0:	b510      	push	{r4, lr}
 8004fb2:	2300      	movs	r3, #0
 8004fb4:	4604      	mov	r4, r0
 8004fb6:	8181      	strh	r1, [r0, #12]
 8004fb8:	81c2      	strh	r2, [r0, #14]
 8004fba:	e9c0 3300 	strd	r3, r3, [r0]
 8004fbe:	6083      	str	r3, [r0, #8]
 8004fc0:	6643      	str	r3, [r0, #100]	; 0x64
 8004fc2:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8004fc6:	6183      	str	r3, [r0, #24]
 8004fc8:	4619      	mov	r1, r3
 8004fca:	2208      	movs	r2, #8
 8004fcc:	305c      	adds	r0, #92	; 0x5c
 8004fce:	f7fd f8c9 	bl	8002164 <memset>
 8004fd2:	4807      	ldr	r0, [pc, #28]	; (8004ff0 <std+0x40>)
 8004fd4:	4907      	ldr	r1, [pc, #28]	; (8004ff4 <std+0x44>)
 8004fd6:	4a08      	ldr	r2, [pc, #32]	; (8004ff8 <std+0x48>)
 8004fd8:	4b08      	ldr	r3, [pc, #32]	; (8004ffc <std+0x4c>)
 8004fda:	62e3      	str	r3, [r4, #44]	; 0x2c
 8004fdc:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8004fe0:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8004fe4:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8004fe8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8004fec:	f000 bb5a 	b.w	80056a4 <__retarget_lock_init_recursive>
 8004ff0:	080067c9 	.word	0x080067c9
 8004ff4:	080067ed 	.word	0x080067ed
 8004ff8:	08006829 	.word	0x08006829
 8004ffc:	08006849 	.word	0x08006849

08005000 <_cleanup_r>:
 8005000:	4901      	ldr	r1, [pc, #4]	; (8005008 <_cleanup_r+0x8>)
 8005002:	f000 bb17 	b.w	8005634 <_fwalk_reent>
 8005006:	bf00      	nop
 8005008:	08006ab9 	.word	0x08006ab9

0800500c <__sinit>:
 800500c:	b510      	push	{r4, lr}
 800500e:	4604      	mov	r4, r0
 8005010:	4812      	ldr	r0, [pc, #72]	; (800505c <__sinit+0x50>)
 8005012:	f000 fb4b 	bl	80056ac <__retarget_lock_acquire_recursive>
 8005016:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005018:	b9d2      	cbnz	r2, 8005050 <__sinit+0x44>
 800501a:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 800501e:	4810      	ldr	r0, [pc, #64]	; (8005060 <__sinit+0x54>)
 8005020:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8005024:	2103      	movs	r1, #3
 8005026:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 800502a:	63e0      	str	r0, [r4, #60]	; 0x3c
 800502c:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005030:	6860      	ldr	r0, [r4, #4]
 8005032:	2104      	movs	r1, #4
 8005034:	f7ff ffbc 	bl	8004fb0 <std>
 8005038:	2201      	movs	r2, #1
 800503a:	2109      	movs	r1, #9
 800503c:	68a0      	ldr	r0, [r4, #8]
 800503e:	f7ff ffb7 	bl	8004fb0 <std>
 8005042:	2202      	movs	r2, #2
 8005044:	2112      	movs	r1, #18
 8005046:	68e0      	ldr	r0, [r4, #12]
 8005048:	f7ff ffb2 	bl	8004fb0 <std>
 800504c:	2301      	movs	r3, #1
 800504e:	63a3      	str	r3, [r4, #56]	; 0x38
 8005050:	4802      	ldr	r0, [pc, #8]	; (800505c <__sinit+0x50>)
 8005052:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005056:	f000 bb2b 	b.w	80056b0 <__retarget_lock_release_recursive>
 800505a:	bf00      	nop
 800505c:	20000af4 	.word	0x20000af4
 8005060:	08005001 	.word	0x08005001

08005064 <__sfp_lock_acquire>:
 8005064:	4801      	ldr	r0, [pc, #4]	; (800506c <__sfp_lock_acquire+0x8>)
 8005066:	f000 bb21 	b.w	80056ac <__retarget_lock_acquire_recursive>
 800506a:	bf00      	nop
 800506c:	20000b08 	.word	0x20000b08

08005070 <__sfp_lock_release>:
 8005070:	4801      	ldr	r0, [pc, #4]	; (8005078 <__sfp_lock_release+0x8>)
 8005072:	f000 bb1d 	b.w	80056b0 <__retarget_lock_release_recursive>
 8005076:	bf00      	nop
 8005078:	20000b08 	.word	0x20000b08

0800507c <__libc_fini_array>:
 800507c:	b538      	push	{r3, r4, r5, lr}
 800507e:	4c0a      	ldr	r4, [pc, #40]	; (80050a8 <__libc_fini_array+0x2c>)
 8005080:	4d0a      	ldr	r5, [pc, #40]	; (80050ac <__libc_fini_array+0x30>)
 8005082:	1b64      	subs	r4, r4, r5
 8005084:	10a4      	asrs	r4, r4, #2
 8005086:	d00a      	beq.n	800509e <__libc_fini_array+0x22>
 8005088:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800508c:	3b01      	subs	r3, #1
 800508e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005092:	3c01      	subs	r4, #1
 8005094:	f855 3904 	ldr.w	r3, [r5], #-4
 8005098:	4798      	blx	r3
 800509a:	2c00      	cmp	r4, #0
 800509c:	d1f9      	bne.n	8005092 <__libc_fini_array+0x16>
 800509e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80050a2:	f001 befd 	b.w	8006ea0 <_fini>
 80050a6:	bf00      	nop
 80050a8:	08007264 	.word	0x08007264
 80050ac:	08007260 	.word	0x08007260

080050b0 <_malloc_trim_r>:
 80050b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80050b2:	4f24      	ldr	r7, [pc, #144]	; (8005144 <_malloc_trim_r+0x94>)
 80050b4:	460c      	mov	r4, r1
 80050b6:	4606      	mov	r6, r0
 80050b8:	f000 fe7c 	bl	8005db4 <__malloc_lock>
 80050bc:	68bb      	ldr	r3, [r7, #8]
 80050be:	685d      	ldr	r5, [r3, #4]
 80050c0:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80050c4:	310f      	adds	r1, #15
 80050c6:	f025 0503 	bic.w	r5, r5, #3
 80050ca:	4429      	add	r1, r5
 80050cc:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 80050d0:	f021 010f 	bic.w	r1, r1, #15
 80050d4:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 80050d8:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 80050dc:	db07      	blt.n	80050ee <_malloc_trim_r+0x3e>
 80050de:	2100      	movs	r1, #0
 80050e0:	4630      	mov	r0, r6
 80050e2:	f001 fb5f 	bl	80067a4 <_sbrk_r>
 80050e6:	68bb      	ldr	r3, [r7, #8]
 80050e8:	442b      	add	r3, r5
 80050ea:	4298      	cmp	r0, r3
 80050ec:	d004      	beq.n	80050f8 <_malloc_trim_r+0x48>
 80050ee:	4630      	mov	r0, r6
 80050f0:	f000 fe66 	bl	8005dc0 <__malloc_unlock>
 80050f4:	2000      	movs	r0, #0
 80050f6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80050f8:	4261      	negs	r1, r4
 80050fa:	4630      	mov	r0, r6
 80050fc:	f001 fb52 	bl	80067a4 <_sbrk_r>
 8005100:	3001      	adds	r0, #1
 8005102:	d00d      	beq.n	8005120 <_malloc_trim_r+0x70>
 8005104:	4b10      	ldr	r3, [pc, #64]	; (8005148 <_malloc_trim_r+0x98>)
 8005106:	68ba      	ldr	r2, [r7, #8]
 8005108:	6819      	ldr	r1, [r3, #0]
 800510a:	1b2d      	subs	r5, r5, r4
 800510c:	f045 0501 	orr.w	r5, r5, #1
 8005110:	4630      	mov	r0, r6
 8005112:	1b09      	subs	r1, r1, r4
 8005114:	6055      	str	r5, [r2, #4]
 8005116:	6019      	str	r1, [r3, #0]
 8005118:	f000 fe52 	bl	8005dc0 <__malloc_unlock>
 800511c:	2001      	movs	r0, #1
 800511e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005120:	2100      	movs	r1, #0
 8005122:	4630      	mov	r0, r6
 8005124:	f001 fb3e 	bl	80067a4 <_sbrk_r>
 8005128:	68ba      	ldr	r2, [r7, #8]
 800512a:	1a83      	subs	r3, r0, r2
 800512c:	2b0f      	cmp	r3, #15
 800512e:	ddde      	ble.n	80050ee <_malloc_trim_r+0x3e>
 8005130:	4c06      	ldr	r4, [pc, #24]	; (800514c <_malloc_trim_r+0x9c>)
 8005132:	4905      	ldr	r1, [pc, #20]	; (8005148 <_malloc_trim_r+0x98>)
 8005134:	6824      	ldr	r4, [r4, #0]
 8005136:	f043 0301 	orr.w	r3, r3, #1
 800513a:	1b00      	subs	r0, r0, r4
 800513c:	6053      	str	r3, [r2, #4]
 800513e:	6008      	str	r0, [r1, #0]
 8005140:	e7d5      	b.n	80050ee <_malloc_trim_r+0x3e>
 8005142:	bf00      	nop
 8005144:	2000044c 	.word	0x2000044c
 8005148:	20000a6c 	.word	0x20000a6c
 800514c:	20000854 	.word	0x20000854

08005150 <_free_r>:
 8005150:	2900      	cmp	r1, #0
 8005152:	d053      	beq.n	80051fc <_free_r+0xac>
 8005154:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005156:	460c      	mov	r4, r1
 8005158:	4606      	mov	r6, r0
 800515a:	f000 fe2b 	bl	8005db4 <__malloc_lock>
 800515e:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8005162:	4f71      	ldr	r7, [pc, #452]	; (8005328 <_free_r+0x1d8>)
 8005164:	f02c 0101 	bic.w	r1, ip, #1
 8005168:	f1a4 0508 	sub.w	r5, r4, #8
 800516c:	186b      	adds	r3, r5, r1
 800516e:	68b8      	ldr	r0, [r7, #8]
 8005170:	685a      	ldr	r2, [r3, #4]
 8005172:	4298      	cmp	r0, r3
 8005174:	f022 0203 	bic.w	r2, r2, #3
 8005178:	d053      	beq.n	8005222 <_free_r+0xd2>
 800517a:	f01c 0f01 	tst.w	ip, #1
 800517e:	605a      	str	r2, [r3, #4]
 8005180:	eb03 0002 	add.w	r0, r3, r2
 8005184:	d13b      	bne.n	80051fe <_free_r+0xae>
 8005186:	f854 cc08 	ldr.w	ip, [r4, #-8]
 800518a:	6840      	ldr	r0, [r0, #4]
 800518c:	eba5 050c 	sub.w	r5, r5, ip
 8005190:	f107 0e08 	add.w	lr, r7, #8
 8005194:	68ac      	ldr	r4, [r5, #8]
 8005196:	4574      	cmp	r4, lr
 8005198:	4461      	add	r1, ip
 800519a:	f000 0001 	and.w	r0, r0, #1
 800519e:	d075      	beq.n	800528c <_free_r+0x13c>
 80051a0:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 80051a4:	f8c4 c00c 	str.w	ip, [r4, #12]
 80051a8:	f8cc 4008 	str.w	r4, [ip, #8]
 80051ac:	b360      	cbz	r0, 8005208 <_free_r+0xb8>
 80051ae:	f041 0301 	orr.w	r3, r1, #1
 80051b2:	606b      	str	r3, [r5, #4]
 80051b4:	5069      	str	r1, [r5, r1]
 80051b6:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80051ba:	d350      	bcc.n	800525e <_free_r+0x10e>
 80051bc:	0a4b      	lsrs	r3, r1, #9
 80051be:	2b04      	cmp	r3, #4
 80051c0:	d870      	bhi.n	80052a4 <_free_r+0x154>
 80051c2:	098b      	lsrs	r3, r1, #6
 80051c4:	f103 0439 	add.w	r4, r3, #57	; 0x39
 80051c8:	00e4      	lsls	r4, r4, #3
 80051ca:	f103 0238 	add.w	r2, r3, #56	; 0x38
 80051ce:	1938      	adds	r0, r7, r4
 80051d0:	593b      	ldr	r3, [r7, r4]
 80051d2:	3808      	subs	r0, #8
 80051d4:	4298      	cmp	r0, r3
 80051d6:	d078      	beq.n	80052ca <_free_r+0x17a>
 80051d8:	685a      	ldr	r2, [r3, #4]
 80051da:	f022 0203 	bic.w	r2, r2, #3
 80051de:	428a      	cmp	r2, r1
 80051e0:	d971      	bls.n	80052c6 <_free_r+0x176>
 80051e2:	689b      	ldr	r3, [r3, #8]
 80051e4:	4298      	cmp	r0, r3
 80051e6:	d1f7      	bne.n	80051d8 <_free_r+0x88>
 80051e8:	68c3      	ldr	r3, [r0, #12]
 80051ea:	e9c5 0302 	strd	r0, r3, [r5, #8]
 80051ee:	609d      	str	r5, [r3, #8]
 80051f0:	60c5      	str	r5, [r0, #12]
 80051f2:	4630      	mov	r0, r6
 80051f4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80051f8:	f000 bde2 	b.w	8005dc0 <__malloc_unlock>
 80051fc:	4770      	bx	lr
 80051fe:	6840      	ldr	r0, [r0, #4]
 8005200:	f000 0001 	and.w	r0, r0, #1
 8005204:	2800      	cmp	r0, #0
 8005206:	d1d2      	bne.n	80051ae <_free_r+0x5e>
 8005208:	6898      	ldr	r0, [r3, #8]
 800520a:	4c48      	ldr	r4, [pc, #288]	; (800532c <_free_r+0x1dc>)
 800520c:	4411      	add	r1, r2
 800520e:	42a0      	cmp	r0, r4
 8005210:	f041 0201 	orr.w	r2, r1, #1
 8005214:	d062      	beq.n	80052dc <_free_r+0x18c>
 8005216:	68db      	ldr	r3, [r3, #12]
 8005218:	60c3      	str	r3, [r0, #12]
 800521a:	6098      	str	r0, [r3, #8]
 800521c:	606a      	str	r2, [r5, #4]
 800521e:	5069      	str	r1, [r5, r1]
 8005220:	e7c9      	b.n	80051b6 <_free_r+0x66>
 8005222:	f01c 0f01 	tst.w	ip, #1
 8005226:	440a      	add	r2, r1
 8005228:	d107      	bne.n	800523a <_free_r+0xea>
 800522a:	f854 3c08 	ldr.w	r3, [r4, #-8]
 800522e:	1aed      	subs	r5, r5, r3
 8005230:	441a      	add	r2, r3
 8005232:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8005236:	60cb      	str	r3, [r1, #12]
 8005238:	6099      	str	r1, [r3, #8]
 800523a:	4b3d      	ldr	r3, [pc, #244]	; (8005330 <_free_r+0x1e0>)
 800523c:	681b      	ldr	r3, [r3, #0]
 800523e:	f042 0101 	orr.w	r1, r2, #1
 8005242:	4293      	cmp	r3, r2
 8005244:	6069      	str	r1, [r5, #4]
 8005246:	60bd      	str	r5, [r7, #8]
 8005248:	d804      	bhi.n	8005254 <_free_r+0x104>
 800524a:	4b3a      	ldr	r3, [pc, #232]	; (8005334 <_free_r+0x1e4>)
 800524c:	4630      	mov	r0, r6
 800524e:	6819      	ldr	r1, [r3, #0]
 8005250:	f7ff ff2e 	bl	80050b0 <_malloc_trim_r>
 8005254:	4630      	mov	r0, r6
 8005256:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800525a:	f000 bdb1 	b.w	8005dc0 <__malloc_unlock>
 800525e:	08c9      	lsrs	r1, r1, #3
 8005260:	6878      	ldr	r0, [r7, #4]
 8005262:	1c4a      	adds	r2, r1, #1
 8005264:	2301      	movs	r3, #1
 8005266:	1089      	asrs	r1, r1, #2
 8005268:	408b      	lsls	r3, r1
 800526a:	4303      	orrs	r3, r0
 800526c:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005270:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005274:	607b      	str	r3, [r7, #4]
 8005276:	3908      	subs	r1, #8
 8005278:	e9c5 0102 	strd	r0, r1, [r5, #8]
 800527c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005280:	60c5      	str	r5, [r0, #12]
 8005282:	4630      	mov	r0, r6
 8005284:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005288:	f000 bd9a 	b.w	8005dc0 <__malloc_unlock>
 800528c:	2800      	cmp	r0, #0
 800528e:	d145      	bne.n	800531c <_free_r+0x1cc>
 8005290:	440a      	add	r2, r1
 8005292:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005296:	f042 0001 	orr.w	r0, r2, #1
 800529a:	60cb      	str	r3, [r1, #12]
 800529c:	6099      	str	r1, [r3, #8]
 800529e:	6068      	str	r0, [r5, #4]
 80052a0:	50aa      	str	r2, [r5, r2]
 80052a2:	e7d7      	b.n	8005254 <_free_r+0x104>
 80052a4:	2b14      	cmp	r3, #20
 80052a6:	d908      	bls.n	80052ba <_free_r+0x16a>
 80052a8:	2b54      	cmp	r3, #84	; 0x54
 80052aa:	d81e      	bhi.n	80052ea <_free_r+0x19a>
 80052ac:	0b0b      	lsrs	r3, r1, #12
 80052ae:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80052b2:	00e4      	lsls	r4, r4, #3
 80052b4:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80052b8:	e789      	b.n	80051ce <_free_r+0x7e>
 80052ba:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80052be:	00e4      	lsls	r4, r4, #3
 80052c0:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80052c4:	e783      	b.n	80051ce <_free_r+0x7e>
 80052c6:	4618      	mov	r0, r3
 80052c8:	e78e      	b.n	80051e8 <_free_r+0x98>
 80052ca:	1093      	asrs	r3, r2, #2
 80052cc:	6879      	ldr	r1, [r7, #4]
 80052ce:	2201      	movs	r2, #1
 80052d0:	fa02 f303 	lsl.w	r3, r2, r3
 80052d4:	430b      	orrs	r3, r1
 80052d6:	607b      	str	r3, [r7, #4]
 80052d8:	4603      	mov	r3, r0
 80052da:	e786      	b.n	80051ea <_free_r+0x9a>
 80052dc:	e9c7 5504 	strd	r5, r5, [r7, #16]
 80052e0:	e9c5 0002 	strd	r0, r0, [r5, #8]
 80052e4:	606a      	str	r2, [r5, #4]
 80052e6:	5069      	str	r1, [r5, r1]
 80052e8:	e7b4      	b.n	8005254 <_free_r+0x104>
 80052ea:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80052ee:	d806      	bhi.n	80052fe <_free_r+0x1ae>
 80052f0:	0bcb      	lsrs	r3, r1, #15
 80052f2:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80052f6:	00e4      	lsls	r4, r4, #3
 80052f8:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80052fc:	e767      	b.n	80051ce <_free_r+0x7e>
 80052fe:	f240 5254 	movw	r2, #1364	; 0x554
 8005302:	4293      	cmp	r3, r2
 8005304:	d806      	bhi.n	8005314 <_free_r+0x1c4>
 8005306:	0c8b      	lsrs	r3, r1, #18
 8005308:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 800530c:	00e4      	lsls	r4, r4, #3
 800530e:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005312:	e75c      	b.n	80051ce <_free_r+0x7e>
 8005314:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005318:	227e      	movs	r2, #126	; 0x7e
 800531a:	e758      	b.n	80051ce <_free_r+0x7e>
 800531c:	f041 0201 	orr.w	r2, r1, #1
 8005320:	606a      	str	r2, [r5, #4]
 8005322:	6019      	str	r1, [r3, #0]
 8005324:	e796      	b.n	8005254 <_free_r+0x104>
 8005326:	bf00      	nop
 8005328:	2000044c 	.word	0x2000044c
 800532c:	20000454 	.word	0x20000454
 8005330:	20000858 	.word	0x20000858
 8005334:	20000a9c 	.word	0x20000a9c

08005338 <__sfvwrite_r>:
 8005338:	6893      	ldr	r3, [r2, #8]
 800533a:	2b00      	cmp	r3, #0
 800533c:	f000 80e4 	beq.w	8005508 <__sfvwrite_r+0x1d0>
 8005340:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005344:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005348:	b29b      	uxth	r3, r3
 800534a:	460c      	mov	r4, r1
 800534c:	0719      	lsls	r1, r3, #28
 800534e:	b083      	sub	sp, #12
 8005350:	4682      	mov	sl, r0
 8005352:	4690      	mov	r8, r2
 8005354:	d535      	bpl.n	80053c2 <__sfvwrite_r+0x8a>
 8005356:	6922      	ldr	r2, [r4, #16]
 8005358:	b39a      	cbz	r2, 80053c2 <__sfvwrite_r+0x8a>
 800535a:	f013 0202 	ands.w	r2, r3, #2
 800535e:	f8d8 6000 	ldr.w	r6, [r8]
 8005362:	d03d      	beq.n	80053e0 <__sfvwrite_r+0xa8>
 8005364:	2700      	movs	r7, #0
 8005366:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 800536a:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800536e:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005630 <__sfvwrite_r+0x2f8>
 8005372:	463d      	mov	r5, r7
 8005374:	454d      	cmp	r5, r9
 8005376:	462b      	mov	r3, r5
 8005378:	463a      	mov	r2, r7
 800537a:	bf28      	it	cs
 800537c:	464b      	movcs	r3, r9
 800537e:	4661      	mov	r1, ip
 8005380:	4650      	mov	r0, sl
 8005382:	b1d5      	cbz	r5, 80053ba <__sfvwrite_r+0x82>
 8005384:	47d8      	blx	fp
 8005386:	2800      	cmp	r0, #0
 8005388:	f340 80c6 	ble.w	8005518 <__sfvwrite_r+0x1e0>
 800538c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005390:	1a1b      	subs	r3, r3, r0
 8005392:	4407      	add	r7, r0
 8005394:	1a2d      	subs	r5, r5, r0
 8005396:	f8c8 3008 	str.w	r3, [r8, #8]
 800539a:	2b00      	cmp	r3, #0
 800539c:	f000 80b0 	beq.w	8005500 <__sfvwrite_r+0x1c8>
 80053a0:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80053a4:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80053a8:	454d      	cmp	r5, r9
 80053aa:	462b      	mov	r3, r5
 80053ac:	463a      	mov	r2, r7
 80053ae:	bf28      	it	cs
 80053b0:	464b      	movcs	r3, r9
 80053b2:	4661      	mov	r1, ip
 80053b4:	4650      	mov	r0, sl
 80053b6:	2d00      	cmp	r5, #0
 80053b8:	d1e4      	bne.n	8005384 <__sfvwrite_r+0x4c>
 80053ba:	e9d6 7500 	ldrd	r7, r5, [r6]
 80053be:	3608      	adds	r6, #8
 80053c0:	e7d8      	b.n	8005374 <__sfvwrite_r+0x3c>
 80053c2:	4621      	mov	r1, r4
 80053c4:	4650      	mov	r0, sl
 80053c6:	f7fe fd03 	bl	8003dd0 <__swsetup_r>
 80053ca:	2800      	cmp	r0, #0
 80053cc:	f040 812a 	bne.w	8005624 <__sfvwrite_r+0x2ec>
 80053d0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80053d4:	f8d8 6000 	ldr.w	r6, [r8]
 80053d8:	b29b      	uxth	r3, r3
 80053da:	f013 0202 	ands.w	r2, r3, #2
 80053de:	d1c1      	bne.n	8005364 <__sfvwrite_r+0x2c>
 80053e0:	f013 0901 	ands.w	r9, r3, #1
 80053e4:	d15d      	bne.n	80054a2 <__sfvwrite_r+0x16a>
 80053e6:	68a7      	ldr	r7, [r4, #8]
 80053e8:	6820      	ldr	r0, [r4, #0]
 80053ea:	464d      	mov	r5, r9
 80053ec:	2d00      	cmp	r5, #0
 80053ee:	d054      	beq.n	800549a <__sfvwrite_r+0x162>
 80053f0:	059a      	lsls	r2, r3, #22
 80053f2:	f140 809b 	bpl.w	800552c <__sfvwrite_r+0x1f4>
 80053f6:	42af      	cmp	r7, r5
 80053f8:	46bb      	mov	fp, r7
 80053fa:	f200 80d8 	bhi.w	80055ae <__sfvwrite_r+0x276>
 80053fe:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005402:	d02f      	beq.n	8005464 <__sfvwrite_r+0x12c>
 8005404:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005408:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 800540c:	eba0 0b01 	sub.w	fp, r0, r1
 8005410:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005414:	1c68      	adds	r0, r5, #1
 8005416:	107f      	asrs	r7, r7, #1
 8005418:	4458      	add	r0, fp
 800541a:	42b8      	cmp	r0, r7
 800541c:	463a      	mov	r2, r7
 800541e:	bf84      	itt	hi
 8005420:	4607      	movhi	r7, r0
 8005422:	463a      	movhi	r2, r7
 8005424:	055b      	lsls	r3, r3, #21
 8005426:	f140 80d3 	bpl.w	80055d0 <__sfvwrite_r+0x298>
 800542a:	4611      	mov	r1, r2
 800542c:	4650      	mov	r0, sl
 800542e:	f000 f9b9 	bl	80057a4 <_malloc_r>
 8005432:	2800      	cmp	r0, #0
 8005434:	f000 80f0 	beq.w	8005618 <__sfvwrite_r+0x2e0>
 8005438:	465a      	mov	r2, fp
 800543a:	6921      	ldr	r1, [r4, #16]
 800543c:	9001      	str	r0, [sp, #4]
 800543e:	f7fb f85f 	bl	8000500 <memcpy>
 8005442:	89a2      	ldrh	r2, [r4, #12]
 8005444:	9b01      	ldr	r3, [sp, #4]
 8005446:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 800544a:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800544e:	81a2      	strh	r2, [r4, #12]
 8005450:	eba7 020b 	sub.w	r2, r7, fp
 8005454:	eb03 000b 	add.w	r0, r3, fp
 8005458:	6167      	str	r7, [r4, #20]
 800545a:	6123      	str	r3, [r4, #16]
 800545c:	6020      	str	r0, [r4, #0]
 800545e:	60a2      	str	r2, [r4, #8]
 8005460:	462f      	mov	r7, r5
 8005462:	46ab      	mov	fp, r5
 8005464:	465a      	mov	r2, fp
 8005466:	4649      	mov	r1, r9
 8005468:	f000 fc40 	bl	8005cec <memmove>
 800546c:	68a2      	ldr	r2, [r4, #8]
 800546e:	6823      	ldr	r3, [r4, #0]
 8005470:	1bd2      	subs	r2, r2, r7
 8005472:	445b      	add	r3, fp
 8005474:	462f      	mov	r7, r5
 8005476:	60a2      	str	r2, [r4, #8]
 8005478:	6023      	str	r3, [r4, #0]
 800547a:	2500      	movs	r5, #0
 800547c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005480:	1bdb      	subs	r3, r3, r7
 8005482:	44b9      	add	r9, r7
 8005484:	f8c8 3008 	str.w	r3, [r8, #8]
 8005488:	2b00      	cmp	r3, #0
 800548a:	d039      	beq.n	8005500 <__sfvwrite_r+0x1c8>
 800548c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005490:	68a7      	ldr	r7, [r4, #8]
 8005492:	6820      	ldr	r0, [r4, #0]
 8005494:	b29b      	uxth	r3, r3
 8005496:	2d00      	cmp	r5, #0
 8005498:	d1aa      	bne.n	80053f0 <__sfvwrite_r+0xb8>
 800549a:	e9d6 9500 	ldrd	r9, r5, [r6]
 800549e:	3608      	adds	r6, #8
 80054a0:	e7a4      	b.n	80053ec <__sfvwrite_r+0xb4>
 80054a2:	4633      	mov	r3, r6
 80054a4:	4691      	mov	r9, r2
 80054a6:	4610      	mov	r0, r2
 80054a8:	4617      	mov	r7, r2
 80054aa:	464e      	mov	r6, r9
 80054ac:	469b      	mov	fp, r3
 80054ae:	2f00      	cmp	r7, #0
 80054b0:	d06b      	beq.n	800558a <__sfvwrite_r+0x252>
 80054b2:	2800      	cmp	r0, #0
 80054b4:	d071      	beq.n	800559a <__sfvwrite_r+0x262>
 80054b6:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 80054ba:	6820      	ldr	r0, [r4, #0]
 80054bc:	45b9      	cmp	r9, r7
 80054be:	464b      	mov	r3, r9
 80054c0:	bf28      	it	cs
 80054c2:	463b      	movcs	r3, r7
 80054c4:	4288      	cmp	r0, r1
 80054c6:	d903      	bls.n	80054d0 <__sfvwrite_r+0x198>
 80054c8:	68a5      	ldr	r5, [r4, #8]
 80054ca:	4415      	add	r5, r2
 80054cc:	42ab      	cmp	r3, r5
 80054ce:	dc71      	bgt.n	80055b4 <__sfvwrite_r+0x27c>
 80054d0:	429a      	cmp	r2, r3
 80054d2:	f300 8093 	bgt.w	80055fc <__sfvwrite_r+0x2c4>
 80054d6:	4613      	mov	r3, r2
 80054d8:	6a65      	ldr	r5, [r4, #36]	; 0x24
 80054da:	69e1      	ldr	r1, [r4, #28]
 80054dc:	4632      	mov	r2, r6
 80054de:	4650      	mov	r0, sl
 80054e0:	47a8      	blx	r5
 80054e2:	1e05      	subs	r5, r0, #0
 80054e4:	dd18      	ble.n	8005518 <__sfvwrite_r+0x1e0>
 80054e6:	ebb9 0905 	subs.w	r9, r9, r5
 80054ea:	d00f      	beq.n	800550c <__sfvwrite_r+0x1d4>
 80054ec:	2001      	movs	r0, #1
 80054ee:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80054f2:	1b5b      	subs	r3, r3, r5
 80054f4:	442e      	add	r6, r5
 80054f6:	1b7f      	subs	r7, r7, r5
 80054f8:	f8c8 3008 	str.w	r3, [r8, #8]
 80054fc:	2b00      	cmp	r3, #0
 80054fe:	d1d6      	bne.n	80054ae <__sfvwrite_r+0x176>
 8005500:	2000      	movs	r0, #0
 8005502:	b003      	add	sp, #12
 8005504:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005508:	2000      	movs	r0, #0
 800550a:	4770      	bx	lr
 800550c:	4621      	mov	r1, r4
 800550e:	4650      	mov	r0, sl
 8005510:	f7ff fd20 	bl	8004f54 <_fflush_r>
 8005514:	2800      	cmp	r0, #0
 8005516:	d0ea      	beq.n	80054ee <__sfvwrite_r+0x1b6>
 8005518:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800551c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005520:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005524:	81a3      	strh	r3, [r4, #12]
 8005526:	b003      	add	sp, #12
 8005528:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800552c:	6923      	ldr	r3, [r4, #16]
 800552e:	4283      	cmp	r3, r0
 8005530:	d315      	bcc.n	800555e <__sfvwrite_r+0x226>
 8005532:	6961      	ldr	r1, [r4, #20]
 8005534:	42a9      	cmp	r1, r5
 8005536:	d812      	bhi.n	800555e <__sfvwrite_r+0x226>
 8005538:	4b3c      	ldr	r3, [pc, #240]	; (800562c <__sfvwrite_r+0x2f4>)
 800553a:	6a67      	ldr	r7, [r4, #36]	; 0x24
 800553c:	429d      	cmp	r5, r3
 800553e:	bf94      	ite	ls
 8005540:	462b      	movls	r3, r5
 8005542:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005546:	464a      	mov	r2, r9
 8005548:	fb93 f3f1 	sdiv	r3, r3, r1
 800554c:	4650      	mov	r0, sl
 800554e:	fb01 f303 	mul.w	r3, r1, r3
 8005552:	69e1      	ldr	r1, [r4, #28]
 8005554:	47b8      	blx	r7
 8005556:	1e07      	subs	r7, r0, #0
 8005558:	ddde      	ble.n	8005518 <__sfvwrite_r+0x1e0>
 800555a:	1bed      	subs	r5, r5, r7
 800555c:	e78e      	b.n	800547c <__sfvwrite_r+0x144>
 800555e:	42af      	cmp	r7, r5
 8005560:	bf28      	it	cs
 8005562:	462f      	movcs	r7, r5
 8005564:	463a      	mov	r2, r7
 8005566:	4649      	mov	r1, r9
 8005568:	f000 fbc0 	bl	8005cec <memmove>
 800556c:	68a3      	ldr	r3, [r4, #8]
 800556e:	6822      	ldr	r2, [r4, #0]
 8005570:	1bdb      	subs	r3, r3, r7
 8005572:	443a      	add	r2, r7
 8005574:	60a3      	str	r3, [r4, #8]
 8005576:	6022      	str	r2, [r4, #0]
 8005578:	2b00      	cmp	r3, #0
 800557a:	d1ee      	bne.n	800555a <__sfvwrite_r+0x222>
 800557c:	4621      	mov	r1, r4
 800557e:	4650      	mov	r0, sl
 8005580:	f7ff fce8 	bl	8004f54 <_fflush_r>
 8005584:	2800      	cmp	r0, #0
 8005586:	d0e8      	beq.n	800555a <__sfvwrite_r+0x222>
 8005588:	e7c6      	b.n	8005518 <__sfvwrite_r+0x1e0>
 800558a:	f10b 0308 	add.w	r3, fp, #8
 800558e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005592:	469b      	mov	fp, r3
 8005594:	3308      	adds	r3, #8
 8005596:	2f00      	cmp	r7, #0
 8005598:	d0f9      	beq.n	800558e <__sfvwrite_r+0x256>
 800559a:	463a      	mov	r2, r7
 800559c:	210a      	movs	r1, #10
 800559e:	4630      	mov	r0, r6
 80055a0:	f7fb f8be 	bl	8000720 <memchr>
 80055a4:	b338      	cbz	r0, 80055f6 <__sfvwrite_r+0x2be>
 80055a6:	3001      	adds	r0, #1
 80055a8:	eba0 0906 	sub.w	r9, r0, r6
 80055ac:	e783      	b.n	80054b6 <__sfvwrite_r+0x17e>
 80055ae:	462f      	mov	r7, r5
 80055b0:	46ab      	mov	fp, r5
 80055b2:	e757      	b.n	8005464 <__sfvwrite_r+0x12c>
 80055b4:	4631      	mov	r1, r6
 80055b6:	462a      	mov	r2, r5
 80055b8:	f000 fb98 	bl	8005cec <memmove>
 80055bc:	6823      	ldr	r3, [r4, #0]
 80055be:	442b      	add	r3, r5
 80055c0:	6023      	str	r3, [r4, #0]
 80055c2:	4621      	mov	r1, r4
 80055c4:	4650      	mov	r0, sl
 80055c6:	f7ff fcc5 	bl	8004f54 <_fflush_r>
 80055ca:	2800      	cmp	r0, #0
 80055cc:	d08b      	beq.n	80054e6 <__sfvwrite_r+0x1ae>
 80055ce:	e7a3      	b.n	8005518 <__sfvwrite_r+0x1e0>
 80055d0:	4650      	mov	r0, sl
 80055d2:	f000 ff05 	bl	80063e0 <_realloc_r>
 80055d6:	4603      	mov	r3, r0
 80055d8:	2800      	cmp	r0, #0
 80055da:	f47f af39 	bne.w	8005450 <__sfvwrite_r+0x118>
 80055de:	6921      	ldr	r1, [r4, #16]
 80055e0:	4650      	mov	r0, sl
 80055e2:	f7ff fdb5 	bl	8005150 <_free_r>
 80055e6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80055ea:	220c      	movs	r2, #12
 80055ec:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80055f0:	f8ca 2000 	str.w	r2, [sl]
 80055f4:	e792      	b.n	800551c <__sfvwrite_r+0x1e4>
 80055f6:	f107 0901 	add.w	r9, r7, #1
 80055fa:	e75c      	b.n	80054b6 <__sfvwrite_r+0x17e>
 80055fc:	461a      	mov	r2, r3
 80055fe:	4631      	mov	r1, r6
 8005600:	9301      	str	r3, [sp, #4]
 8005602:	f000 fb73 	bl	8005cec <memmove>
 8005606:	9b01      	ldr	r3, [sp, #4]
 8005608:	68a1      	ldr	r1, [r4, #8]
 800560a:	6822      	ldr	r2, [r4, #0]
 800560c:	1ac9      	subs	r1, r1, r3
 800560e:	441a      	add	r2, r3
 8005610:	60a1      	str	r1, [r4, #8]
 8005612:	6022      	str	r2, [r4, #0]
 8005614:	461d      	mov	r5, r3
 8005616:	e766      	b.n	80054e6 <__sfvwrite_r+0x1ae>
 8005618:	230c      	movs	r3, #12
 800561a:	f8ca 3000 	str.w	r3, [sl]
 800561e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005622:	e77b      	b.n	800551c <__sfvwrite_r+0x1e4>
 8005624:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005628:	e76b      	b.n	8005502 <__sfvwrite_r+0x1ca>
 800562a:	bf00      	nop
 800562c:	7ffffffe 	.word	0x7ffffffe
 8005630:	7ffffc00 	.word	0x7ffffc00

08005634 <_fwalk_reent>:
 8005634:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005638:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 800563c:	d01f      	beq.n	800567e <_fwalk_reent+0x4a>
 800563e:	4688      	mov	r8, r1
 8005640:	4606      	mov	r6, r0
 8005642:	f04f 0900 	mov.w	r9, #0
 8005646:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 800564a:	3d01      	subs	r5, #1
 800564c:	d411      	bmi.n	8005672 <_fwalk_reent+0x3e>
 800564e:	89a3      	ldrh	r3, [r4, #12]
 8005650:	2b01      	cmp	r3, #1
 8005652:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005656:	4621      	mov	r1, r4
 8005658:	4630      	mov	r0, r6
 800565a:	d906      	bls.n	800566a <_fwalk_reent+0x36>
 800565c:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005660:	3301      	adds	r3, #1
 8005662:	d002      	beq.n	800566a <_fwalk_reent+0x36>
 8005664:	47c0      	blx	r8
 8005666:	ea49 0900 	orr.w	r9, r9, r0
 800566a:	1c6b      	adds	r3, r5, #1
 800566c:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005670:	d1ed      	bne.n	800564e <_fwalk_reent+0x1a>
 8005672:	683f      	ldr	r7, [r7, #0]
 8005674:	2f00      	cmp	r7, #0
 8005676:	d1e6      	bne.n	8005646 <_fwalk_reent+0x12>
 8005678:	4648      	mov	r0, r9
 800567a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800567e:	46b9      	mov	r9, r7
 8005680:	4648      	mov	r0, r9
 8005682:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005686:	bf00      	nop

08005688 <_localeconv_r>:
 8005688:	4a04      	ldr	r2, [pc, #16]	; (800569c <_localeconv_r+0x14>)
 800568a:	4b05      	ldr	r3, [pc, #20]	; (80056a0 <_localeconv_r+0x18>)
 800568c:	6812      	ldr	r2, [r2, #0]
 800568e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005690:	2800      	cmp	r0, #0
 8005692:	bf08      	it	eq
 8005694:	4618      	moveq	r0, r3
 8005696:	30f0      	adds	r0, #240	; 0xf0
 8005698:	4770      	bx	lr
 800569a:	bf00      	nop
 800569c:	20000018 	.word	0x20000018
 80056a0:	2000085c 	.word	0x2000085c

080056a4 <__retarget_lock_init_recursive>:
 80056a4:	4770      	bx	lr
 80056a6:	bf00      	nop

080056a8 <__retarget_lock_close_recursive>:
 80056a8:	4770      	bx	lr
 80056aa:	bf00      	nop

080056ac <__retarget_lock_acquire_recursive>:
 80056ac:	4770      	bx	lr
 80056ae:	bf00      	nop

080056b0 <__retarget_lock_release_recursive>:
 80056b0:	4770      	bx	lr
 80056b2:	bf00      	nop

080056b4 <__swhatbuf_r>:
 80056b4:	b570      	push	{r4, r5, r6, lr}
 80056b6:	460c      	mov	r4, r1
 80056b8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80056bc:	2900      	cmp	r1, #0
 80056be:	b096      	sub	sp, #88	; 0x58
 80056c0:	4615      	mov	r5, r2
 80056c2:	461e      	mov	r6, r3
 80056c4:	da0f      	bge.n	80056e6 <__swhatbuf_r+0x32>
 80056c6:	89a2      	ldrh	r2, [r4, #12]
 80056c8:	2300      	movs	r3, #0
 80056ca:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 80056ce:	6033      	str	r3, [r6, #0]
 80056d0:	d104      	bne.n	80056dc <__swhatbuf_r+0x28>
 80056d2:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80056d6:	602b      	str	r3, [r5, #0]
 80056d8:	b016      	add	sp, #88	; 0x58
 80056da:	bd70      	pop	{r4, r5, r6, pc}
 80056dc:	2240      	movs	r2, #64	; 0x40
 80056de:	4618      	mov	r0, r3
 80056e0:	602a      	str	r2, [r5, #0]
 80056e2:	b016      	add	sp, #88	; 0x58
 80056e4:	bd70      	pop	{r4, r5, r6, pc}
 80056e6:	466a      	mov	r2, sp
 80056e8:	f001 fad0 	bl	8006c8c <_fstat_r>
 80056ec:	2800      	cmp	r0, #0
 80056ee:	dbea      	blt.n	80056c6 <__swhatbuf_r+0x12>
 80056f0:	9b01      	ldr	r3, [sp, #4]
 80056f2:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 80056f6:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 80056fa:	fab3 f383 	clz	r3, r3
 80056fe:	095b      	lsrs	r3, r3, #5
 8005700:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005704:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005708:	6033      	str	r3, [r6, #0]
 800570a:	602a      	str	r2, [r5, #0]
 800570c:	b016      	add	sp, #88	; 0x58
 800570e:	bd70      	pop	{r4, r5, r6, pc}

08005710 <__smakebuf_r>:
 8005710:	898a      	ldrh	r2, [r1, #12]
 8005712:	0792      	lsls	r2, r2, #30
 8005714:	460b      	mov	r3, r1
 8005716:	d506      	bpl.n	8005726 <__smakebuf_r+0x16>
 8005718:	f101 0243 	add.w	r2, r1, #67	; 0x43
 800571c:	2101      	movs	r1, #1
 800571e:	601a      	str	r2, [r3, #0]
 8005720:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005724:	4770      	bx	lr
 8005726:	b570      	push	{r4, r5, r6, lr}
 8005728:	b082      	sub	sp, #8
 800572a:	ab01      	add	r3, sp, #4
 800572c:	466a      	mov	r2, sp
 800572e:	460c      	mov	r4, r1
 8005730:	4605      	mov	r5, r0
 8005732:	f7ff ffbf 	bl	80056b4 <__swhatbuf_r>
 8005736:	9900      	ldr	r1, [sp, #0]
 8005738:	4606      	mov	r6, r0
 800573a:	4628      	mov	r0, r5
 800573c:	f000 f832 	bl	80057a4 <_malloc_r>
 8005740:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005744:	b1d8      	cbz	r0, 800577e <__smakebuf_r+0x6e>
 8005746:	4916      	ldr	r1, [pc, #88]	; (80057a0 <__smakebuf_r+0x90>)
 8005748:	63e9      	str	r1, [r5, #60]	; 0x3c
 800574a:	9a01      	ldr	r2, [sp, #4]
 800574c:	9900      	ldr	r1, [sp, #0]
 800574e:	6020      	str	r0, [r4, #0]
 8005750:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005754:	81a3      	strh	r3, [r4, #12]
 8005756:	e9c4 0104 	strd	r0, r1, [r4, #16]
 800575a:	b91a      	cbnz	r2, 8005764 <__smakebuf_r+0x54>
 800575c:	4333      	orrs	r3, r6
 800575e:	81a3      	strh	r3, [r4, #12]
 8005760:	b002      	add	sp, #8
 8005762:	bd70      	pop	{r4, r5, r6, pc}
 8005764:	4628      	mov	r0, r5
 8005766:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800576a:	f001 faa3 	bl	8006cb4 <_isatty_r>
 800576e:	b1a0      	cbz	r0, 800579a <__smakebuf_r+0x8a>
 8005770:	89a3      	ldrh	r3, [r4, #12]
 8005772:	f023 0303 	bic.w	r3, r3, #3
 8005776:	f043 0301 	orr.w	r3, r3, #1
 800577a:	b21b      	sxth	r3, r3
 800577c:	e7ee      	b.n	800575c <__smakebuf_r+0x4c>
 800577e:	059a      	lsls	r2, r3, #22
 8005780:	d4ee      	bmi.n	8005760 <__smakebuf_r+0x50>
 8005782:	f023 0303 	bic.w	r3, r3, #3
 8005786:	f104 0243 	add.w	r2, r4, #67	; 0x43
 800578a:	f043 0302 	orr.w	r3, r3, #2
 800578e:	2101      	movs	r1, #1
 8005790:	81a3      	strh	r3, [r4, #12]
 8005792:	6022      	str	r2, [r4, #0]
 8005794:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005798:	e7e2      	b.n	8005760 <__smakebuf_r+0x50>
 800579a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800579e:	e7dd      	b.n	800575c <__smakebuf_r+0x4c>
 80057a0:	08005001 	.word	0x08005001

080057a4 <_malloc_r>:
 80057a4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80057a8:	f101 050b 	add.w	r5, r1, #11
 80057ac:	2d16      	cmp	r5, #22
 80057ae:	b083      	sub	sp, #12
 80057b0:	4606      	mov	r6, r0
 80057b2:	d823      	bhi.n	80057fc <_malloc_r+0x58>
 80057b4:	2910      	cmp	r1, #16
 80057b6:	f200 80b9 	bhi.w	800592c <_malloc_r+0x188>
 80057ba:	f000 fafb 	bl	8005db4 <__malloc_lock>
 80057be:	2510      	movs	r5, #16
 80057c0:	2318      	movs	r3, #24
 80057c2:	2002      	movs	r0, #2
 80057c4:	4fc5      	ldr	r7, [pc, #788]	; (8005adc <_malloc_r+0x338>)
 80057c6:	443b      	add	r3, r7
 80057c8:	f1a3 0208 	sub.w	r2, r3, #8
 80057cc:	685c      	ldr	r4, [r3, #4]
 80057ce:	4294      	cmp	r4, r2
 80057d0:	f000 8166 	beq.w	8005aa0 <_malloc_r+0x2fc>
 80057d4:	6863      	ldr	r3, [r4, #4]
 80057d6:	f023 0303 	bic.w	r3, r3, #3
 80057da:	4423      	add	r3, r4
 80057dc:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 80057e0:	685a      	ldr	r2, [r3, #4]
 80057e2:	60e9      	str	r1, [r5, #12]
 80057e4:	f042 0201 	orr.w	r2, r2, #1
 80057e8:	608d      	str	r5, [r1, #8]
 80057ea:	4630      	mov	r0, r6
 80057ec:	605a      	str	r2, [r3, #4]
 80057ee:	f000 fae7 	bl	8005dc0 <__malloc_unlock>
 80057f2:	3408      	adds	r4, #8
 80057f4:	4620      	mov	r0, r4
 80057f6:	b003      	add	sp, #12
 80057f8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80057fc:	f035 0507 	bics.w	r5, r5, #7
 8005800:	f100 8094 	bmi.w	800592c <_malloc_r+0x188>
 8005804:	42a9      	cmp	r1, r5
 8005806:	f200 8091 	bhi.w	800592c <_malloc_r+0x188>
 800580a:	f000 fad3 	bl	8005db4 <__malloc_lock>
 800580e:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005812:	f0c0 8183 	bcc.w	8005b1c <_malloc_r+0x378>
 8005816:	0a6b      	lsrs	r3, r5, #9
 8005818:	f000 808f 	beq.w	800593a <_malloc_r+0x196>
 800581c:	2b04      	cmp	r3, #4
 800581e:	f200 8146 	bhi.w	8005aae <_malloc_r+0x30a>
 8005822:	09ab      	lsrs	r3, r5, #6
 8005824:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005828:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 800582c:	00c3      	lsls	r3, r0, #3
 800582e:	4fab      	ldr	r7, [pc, #684]	; (8005adc <_malloc_r+0x338>)
 8005830:	443b      	add	r3, r7
 8005832:	f1a3 0108 	sub.w	r1, r3, #8
 8005836:	685c      	ldr	r4, [r3, #4]
 8005838:	42a1      	cmp	r1, r4
 800583a:	d106      	bne.n	800584a <_malloc_r+0xa6>
 800583c:	e00c      	b.n	8005858 <_malloc_r+0xb4>
 800583e:	2a00      	cmp	r2, #0
 8005840:	f280 811d 	bge.w	8005a7e <_malloc_r+0x2da>
 8005844:	68e4      	ldr	r4, [r4, #12]
 8005846:	42a1      	cmp	r1, r4
 8005848:	d006      	beq.n	8005858 <_malloc_r+0xb4>
 800584a:	6863      	ldr	r3, [r4, #4]
 800584c:	f023 0303 	bic.w	r3, r3, #3
 8005850:	1b5a      	subs	r2, r3, r5
 8005852:	2a0f      	cmp	r2, #15
 8005854:	ddf3      	ble.n	800583e <_malloc_r+0x9a>
 8005856:	4660      	mov	r0, ip
 8005858:	693c      	ldr	r4, [r7, #16]
 800585a:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005af0 <_malloc_r+0x34c>
 800585e:	4564      	cmp	r4, ip
 8005860:	d071      	beq.n	8005946 <_malloc_r+0x1a2>
 8005862:	6863      	ldr	r3, [r4, #4]
 8005864:	f023 0303 	bic.w	r3, r3, #3
 8005868:	1b5a      	subs	r2, r3, r5
 800586a:	2a0f      	cmp	r2, #15
 800586c:	f300 8144 	bgt.w	8005af8 <_malloc_r+0x354>
 8005870:	2a00      	cmp	r2, #0
 8005872:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005876:	f280 8126 	bge.w	8005ac6 <_malloc_r+0x322>
 800587a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800587e:	f080 8169 	bcs.w	8005b54 <_malloc_r+0x3b0>
 8005882:	08db      	lsrs	r3, r3, #3
 8005884:	1c59      	adds	r1, r3, #1
 8005886:	687a      	ldr	r2, [r7, #4]
 8005888:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 800588c:	f8c4 8008 	str.w	r8, [r4, #8]
 8005890:	f04f 0e01 	mov.w	lr, #1
 8005894:	109b      	asrs	r3, r3, #2
 8005896:	fa0e f303 	lsl.w	r3, lr, r3
 800589a:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 800589e:	4313      	orrs	r3, r2
 80058a0:	f1ae 0208 	sub.w	r2, lr, #8
 80058a4:	60e2      	str	r2, [r4, #12]
 80058a6:	607b      	str	r3, [r7, #4]
 80058a8:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 80058ac:	f8c8 400c 	str.w	r4, [r8, #12]
 80058b0:	1082      	asrs	r2, r0, #2
 80058b2:	2401      	movs	r4, #1
 80058b4:	4094      	lsls	r4, r2
 80058b6:	429c      	cmp	r4, r3
 80058b8:	d84b      	bhi.n	8005952 <_malloc_r+0x1ae>
 80058ba:	421c      	tst	r4, r3
 80058bc:	d106      	bne.n	80058cc <_malloc_r+0x128>
 80058be:	f020 0003 	bic.w	r0, r0, #3
 80058c2:	0064      	lsls	r4, r4, #1
 80058c4:	421c      	tst	r4, r3
 80058c6:	f100 0004 	add.w	r0, r0, #4
 80058ca:	d0fa      	beq.n	80058c2 <_malloc_r+0x11e>
 80058cc:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 80058d0:	46ce      	mov	lr, r9
 80058d2:	4680      	mov	r8, r0
 80058d4:	f8de 300c 	ldr.w	r3, [lr, #12]
 80058d8:	459e      	cmp	lr, r3
 80058da:	d107      	bne.n	80058ec <_malloc_r+0x148>
 80058dc:	e122      	b.n	8005b24 <_malloc_r+0x380>
 80058de:	2a00      	cmp	r2, #0
 80058e0:	f280 8129 	bge.w	8005b36 <_malloc_r+0x392>
 80058e4:	68db      	ldr	r3, [r3, #12]
 80058e6:	459e      	cmp	lr, r3
 80058e8:	f000 811c 	beq.w	8005b24 <_malloc_r+0x380>
 80058ec:	6859      	ldr	r1, [r3, #4]
 80058ee:	f021 0103 	bic.w	r1, r1, #3
 80058f2:	1b4a      	subs	r2, r1, r5
 80058f4:	2a0f      	cmp	r2, #15
 80058f6:	ddf2      	ble.n	80058de <_malloc_r+0x13a>
 80058f8:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 80058fc:	195c      	adds	r4, r3, r5
 80058fe:	f045 0501 	orr.w	r5, r5, #1
 8005902:	605d      	str	r5, [r3, #4]
 8005904:	f042 0501 	orr.w	r5, r2, #1
 8005908:	f8c8 e00c 	str.w	lr, [r8, #12]
 800590c:	4630      	mov	r0, r6
 800590e:	f8ce 8008 	str.w	r8, [lr, #8]
 8005912:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005916:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 800591a:	6065      	str	r5, [r4, #4]
 800591c:	505a      	str	r2, [r3, r1]
 800591e:	9301      	str	r3, [sp, #4]
 8005920:	f000 fa4e 	bl	8005dc0 <__malloc_unlock>
 8005924:	9b01      	ldr	r3, [sp, #4]
 8005926:	f103 0408 	add.w	r4, r3, #8
 800592a:	e763      	b.n	80057f4 <_malloc_r+0x50>
 800592c:	2400      	movs	r4, #0
 800592e:	230c      	movs	r3, #12
 8005930:	4620      	mov	r0, r4
 8005932:	6033      	str	r3, [r6, #0]
 8005934:	b003      	add	sp, #12
 8005936:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800593a:	f44f 7300 	mov.w	r3, #512	; 0x200
 800593e:	2040      	movs	r0, #64	; 0x40
 8005940:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005944:	e773      	b.n	800582e <_malloc_r+0x8a>
 8005946:	687b      	ldr	r3, [r7, #4]
 8005948:	1082      	asrs	r2, r0, #2
 800594a:	2401      	movs	r4, #1
 800594c:	4094      	lsls	r4, r2
 800594e:	429c      	cmp	r4, r3
 8005950:	d9b3      	bls.n	80058ba <_malloc_r+0x116>
 8005952:	68bc      	ldr	r4, [r7, #8]
 8005954:	6863      	ldr	r3, [r4, #4]
 8005956:	f023 0903 	bic.w	r9, r3, #3
 800595a:	45a9      	cmp	r9, r5
 800595c:	d303      	bcc.n	8005966 <_malloc_r+0x1c2>
 800595e:	eba9 0305 	sub.w	r3, r9, r5
 8005962:	2b0f      	cmp	r3, #15
 8005964:	dc7b      	bgt.n	8005a5e <_malloc_r+0x2ba>
 8005966:	4b5e      	ldr	r3, [pc, #376]	; (8005ae0 <_malloc_r+0x33c>)
 8005968:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005af4 <_malloc_r+0x350>
 800596c:	681a      	ldr	r2, [r3, #0]
 800596e:	f8da 3000 	ldr.w	r3, [sl]
 8005972:	3301      	adds	r3, #1
 8005974:	eb05 0802 	add.w	r8, r5, r2
 8005978:	f000 8148 	beq.w	8005c0c <_malloc_r+0x468>
 800597c:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005980:	f108 080f 	add.w	r8, r8, #15
 8005984:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005988:	f028 080f 	bic.w	r8, r8, #15
 800598c:	4641      	mov	r1, r8
 800598e:	4630      	mov	r0, r6
 8005990:	f000 ff08 	bl	80067a4 <_sbrk_r>
 8005994:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005998:	4683      	mov	fp, r0
 800599a:	f000 8104 	beq.w	8005ba6 <_malloc_r+0x402>
 800599e:	eb04 0009 	add.w	r0, r4, r9
 80059a2:	4558      	cmp	r0, fp
 80059a4:	f200 80fd 	bhi.w	8005ba2 <_malloc_r+0x3fe>
 80059a8:	4a4e      	ldr	r2, [pc, #312]	; (8005ae4 <_malloc_r+0x340>)
 80059aa:	6813      	ldr	r3, [r2, #0]
 80059ac:	4443      	add	r3, r8
 80059ae:	6013      	str	r3, [r2, #0]
 80059b0:	f000 814d 	beq.w	8005c4e <_malloc_r+0x4aa>
 80059b4:	f8da 1000 	ldr.w	r1, [sl]
 80059b8:	3101      	adds	r1, #1
 80059ba:	bf1b      	ittet	ne
 80059bc:	ebab 0000 	subne.w	r0, fp, r0
 80059c0:	181b      	addne	r3, r3, r0
 80059c2:	f8ca b000 	streq.w	fp, [sl]
 80059c6:	6013      	strne	r3, [r2, #0]
 80059c8:	f01b 0307 	ands.w	r3, fp, #7
 80059cc:	f000 8134 	beq.w	8005c38 <_malloc_r+0x494>
 80059d0:	f1c3 0108 	rsb	r1, r3, #8
 80059d4:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 80059d8:	448b      	add	fp, r1
 80059da:	3308      	adds	r3, #8
 80059dc:	44d8      	add	r8, fp
 80059de:	f3c8 080b 	ubfx	r8, r8, #0, #12
 80059e2:	eba3 0808 	sub.w	r8, r3, r8
 80059e6:	4641      	mov	r1, r8
 80059e8:	4630      	mov	r0, r6
 80059ea:	9201      	str	r2, [sp, #4]
 80059ec:	f000 feda 	bl	80067a4 <_sbrk_r>
 80059f0:	1c43      	adds	r3, r0, #1
 80059f2:	9a01      	ldr	r2, [sp, #4]
 80059f4:	f000 8146 	beq.w	8005c84 <_malloc_r+0x4e0>
 80059f8:	eba0 010b 	sub.w	r1, r0, fp
 80059fc:	4441      	add	r1, r8
 80059fe:	f041 0101 	orr.w	r1, r1, #1
 8005a02:	6813      	ldr	r3, [r2, #0]
 8005a04:	f8c7 b008 	str.w	fp, [r7, #8]
 8005a08:	4443      	add	r3, r8
 8005a0a:	42bc      	cmp	r4, r7
 8005a0c:	f8cb 1004 	str.w	r1, [fp, #4]
 8005a10:	6013      	str	r3, [r2, #0]
 8005a12:	d015      	beq.n	8005a40 <_malloc_r+0x29c>
 8005a14:	f1b9 0f0f 	cmp.w	r9, #15
 8005a18:	f240 8130 	bls.w	8005c7c <_malloc_r+0x4d8>
 8005a1c:	6860      	ldr	r0, [r4, #4]
 8005a1e:	f1a9 010c 	sub.w	r1, r9, #12
 8005a22:	f021 0107 	bic.w	r1, r1, #7
 8005a26:	f000 0001 	and.w	r0, r0, #1
 8005a2a:	eb04 0c01 	add.w	ip, r4, r1
 8005a2e:	4308      	orrs	r0, r1
 8005a30:	f04f 0e05 	mov.w	lr, #5
 8005a34:	290f      	cmp	r1, #15
 8005a36:	6060      	str	r0, [r4, #4]
 8005a38:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005a3c:	f200 813a 	bhi.w	8005cb4 <_malloc_r+0x510>
 8005a40:	4a29      	ldr	r2, [pc, #164]	; (8005ae8 <_malloc_r+0x344>)
 8005a42:	482a      	ldr	r0, [pc, #168]	; (8005aec <_malloc_r+0x348>)
 8005a44:	6811      	ldr	r1, [r2, #0]
 8005a46:	68bc      	ldr	r4, [r7, #8]
 8005a48:	428b      	cmp	r3, r1
 8005a4a:	6801      	ldr	r1, [r0, #0]
 8005a4c:	bf88      	it	hi
 8005a4e:	6013      	strhi	r3, [r2, #0]
 8005a50:	6862      	ldr	r2, [r4, #4]
 8005a52:	428b      	cmp	r3, r1
 8005a54:	f022 0203 	bic.w	r2, r2, #3
 8005a58:	bf88      	it	hi
 8005a5a:	6003      	strhi	r3, [r0, #0]
 8005a5c:	e0a7      	b.n	8005bae <_malloc_r+0x40a>
 8005a5e:	1962      	adds	r2, r4, r5
 8005a60:	f043 0301 	orr.w	r3, r3, #1
 8005a64:	f045 0501 	orr.w	r5, r5, #1
 8005a68:	6065      	str	r5, [r4, #4]
 8005a6a:	4630      	mov	r0, r6
 8005a6c:	60ba      	str	r2, [r7, #8]
 8005a6e:	6053      	str	r3, [r2, #4]
 8005a70:	f000 f9a6 	bl	8005dc0 <__malloc_unlock>
 8005a74:	3408      	adds	r4, #8
 8005a76:	4620      	mov	r0, r4
 8005a78:	b003      	add	sp, #12
 8005a7a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a7e:	4423      	add	r3, r4
 8005a80:	68e1      	ldr	r1, [r4, #12]
 8005a82:	685a      	ldr	r2, [r3, #4]
 8005a84:	68a5      	ldr	r5, [r4, #8]
 8005a86:	f042 0201 	orr.w	r2, r2, #1
 8005a8a:	60e9      	str	r1, [r5, #12]
 8005a8c:	4630      	mov	r0, r6
 8005a8e:	608d      	str	r5, [r1, #8]
 8005a90:	605a      	str	r2, [r3, #4]
 8005a92:	f000 f995 	bl	8005dc0 <__malloc_unlock>
 8005a96:	3408      	adds	r4, #8
 8005a98:	4620      	mov	r0, r4
 8005a9a:	b003      	add	sp, #12
 8005a9c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005aa0:	68dc      	ldr	r4, [r3, #12]
 8005aa2:	42a3      	cmp	r3, r4
 8005aa4:	bf08      	it	eq
 8005aa6:	3002      	addeq	r0, #2
 8005aa8:	f43f aed6 	beq.w	8005858 <_malloc_r+0xb4>
 8005aac:	e692      	b.n	80057d4 <_malloc_r+0x30>
 8005aae:	2b14      	cmp	r3, #20
 8005ab0:	d971      	bls.n	8005b96 <_malloc_r+0x3f2>
 8005ab2:	2b54      	cmp	r3, #84	; 0x54
 8005ab4:	f200 80ad 	bhi.w	8005c12 <_malloc_r+0x46e>
 8005ab8:	0b2b      	lsrs	r3, r5, #12
 8005aba:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005abe:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005ac2:	00c3      	lsls	r3, r0, #3
 8005ac4:	e6b3      	b.n	800582e <_malloc_r+0x8a>
 8005ac6:	4423      	add	r3, r4
 8005ac8:	4630      	mov	r0, r6
 8005aca:	685a      	ldr	r2, [r3, #4]
 8005acc:	f042 0201 	orr.w	r2, r2, #1
 8005ad0:	605a      	str	r2, [r3, #4]
 8005ad2:	3408      	adds	r4, #8
 8005ad4:	f000 f974 	bl	8005dc0 <__malloc_unlock>
 8005ad8:	e68c      	b.n	80057f4 <_malloc_r+0x50>
 8005ada:	bf00      	nop
 8005adc:	2000044c 	.word	0x2000044c
 8005ae0:	20000a9c 	.word	0x20000a9c
 8005ae4:	20000a6c 	.word	0x20000a6c
 8005ae8:	20000a94 	.word	0x20000a94
 8005aec:	20000a98 	.word	0x20000a98
 8005af0:	20000454 	.word	0x20000454
 8005af4:	20000854 	.word	0x20000854
 8005af8:	1961      	adds	r1, r4, r5
 8005afa:	f045 0e01 	orr.w	lr, r5, #1
 8005afe:	f042 0501 	orr.w	r5, r2, #1
 8005b02:	f8c4 e004 	str.w	lr, [r4, #4]
 8005b06:	4630      	mov	r0, r6
 8005b08:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005b0c:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005b10:	604d      	str	r5, [r1, #4]
 8005b12:	50e2      	str	r2, [r4, r3]
 8005b14:	f000 f954 	bl	8005dc0 <__malloc_unlock>
 8005b18:	3408      	adds	r4, #8
 8005b1a:	e66b      	b.n	80057f4 <_malloc_r+0x50>
 8005b1c:	08e8      	lsrs	r0, r5, #3
 8005b1e:	f105 0308 	add.w	r3, r5, #8
 8005b22:	e64f      	b.n	80057c4 <_malloc_r+0x20>
 8005b24:	f108 0801 	add.w	r8, r8, #1
 8005b28:	f018 0f03 	tst.w	r8, #3
 8005b2c:	f10e 0e08 	add.w	lr, lr, #8
 8005b30:	f47f aed0 	bne.w	80058d4 <_malloc_r+0x130>
 8005b34:	e052      	b.n	8005bdc <_malloc_r+0x438>
 8005b36:	4419      	add	r1, r3
 8005b38:	461c      	mov	r4, r3
 8005b3a:	684a      	ldr	r2, [r1, #4]
 8005b3c:	68db      	ldr	r3, [r3, #12]
 8005b3e:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005b42:	f042 0201 	orr.w	r2, r2, #1
 8005b46:	604a      	str	r2, [r1, #4]
 8005b48:	4630      	mov	r0, r6
 8005b4a:	60eb      	str	r3, [r5, #12]
 8005b4c:	609d      	str	r5, [r3, #8]
 8005b4e:	f000 f937 	bl	8005dc0 <__malloc_unlock>
 8005b52:	e64f      	b.n	80057f4 <_malloc_r+0x50>
 8005b54:	0a5a      	lsrs	r2, r3, #9
 8005b56:	2a04      	cmp	r2, #4
 8005b58:	d935      	bls.n	8005bc6 <_malloc_r+0x422>
 8005b5a:	2a14      	cmp	r2, #20
 8005b5c:	d86f      	bhi.n	8005c3e <_malloc_r+0x49a>
 8005b5e:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005b62:	00c9      	lsls	r1, r1, #3
 8005b64:	325b      	adds	r2, #91	; 0x5b
 8005b66:	eb07 0e01 	add.w	lr, r7, r1
 8005b6a:	5879      	ldr	r1, [r7, r1]
 8005b6c:	f1ae 0e08 	sub.w	lr, lr, #8
 8005b70:	458e      	cmp	lr, r1
 8005b72:	d058      	beq.n	8005c26 <_malloc_r+0x482>
 8005b74:	684a      	ldr	r2, [r1, #4]
 8005b76:	f022 0203 	bic.w	r2, r2, #3
 8005b7a:	429a      	cmp	r2, r3
 8005b7c:	d902      	bls.n	8005b84 <_malloc_r+0x3e0>
 8005b7e:	6889      	ldr	r1, [r1, #8]
 8005b80:	458e      	cmp	lr, r1
 8005b82:	d1f7      	bne.n	8005b74 <_malloc_r+0x3d0>
 8005b84:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005b88:	687b      	ldr	r3, [r7, #4]
 8005b8a:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005b8e:	f8ce 4008 	str.w	r4, [lr, #8]
 8005b92:	60cc      	str	r4, [r1, #12]
 8005b94:	e68c      	b.n	80058b0 <_malloc_r+0x10c>
 8005b96:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005b9a:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005b9e:	00c3      	lsls	r3, r0, #3
 8005ba0:	e645      	b.n	800582e <_malloc_r+0x8a>
 8005ba2:	42bc      	cmp	r4, r7
 8005ba4:	d072      	beq.n	8005c8c <_malloc_r+0x4e8>
 8005ba6:	68bc      	ldr	r4, [r7, #8]
 8005ba8:	6862      	ldr	r2, [r4, #4]
 8005baa:	f022 0203 	bic.w	r2, r2, #3
 8005bae:	4295      	cmp	r5, r2
 8005bb0:	eba2 0305 	sub.w	r3, r2, r5
 8005bb4:	d802      	bhi.n	8005bbc <_malloc_r+0x418>
 8005bb6:	2b0f      	cmp	r3, #15
 8005bb8:	f73f af51 	bgt.w	8005a5e <_malloc_r+0x2ba>
 8005bbc:	4630      	mov	r0, r6
 8005bbe:	f000 f8ff 	bl	8005dc0 <__malloc_unlock>
 8005bc2:	2400      	movs	r4, #0
 8005bc4:	e616      	b.n	80057f4 <_malloc_r+0x50>
 8005bc6:	099a      	lsrs	r2, r3, #6
 8005bc8:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005bcc:	00c9      	lsls	r1, r1, #3
 8005bce:	3238      	adds	r2, #56	; 0x38
 8005bd0:	e7c9      	b.n	8005b66 <_malloc_r+0x3c2>
 8005bd2:	f8d9 9000 	ldr.w	r9, [r9]
 8005bd6:	4599      	cmp	r9, r3
 8005bd8:	f040 8083 	bne.w	8005ce2 <_malloc_r+0x53e>
 8005bdc:	f010 0f03 	tst.w	r0, #3
 8005be0:	f1a9 0308 	sub.w	r3, r9, #8
 8005be4:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005be8:	d1f3      	bne.n	8005bd2 <_malloc_r+0x42e>
 8005bea:	687b      	ldr	r3, [r7, #4]
 8005bec:	ea23 0304 	bic.w	r3, r3, r4
 8005bf0:	607b      	str	r3, [r7, #4]
 8005bf2:	0064      	lsls	r4, r4, #1
 8005bf4:	429c      	cmp	r4, r3
 8005bf6:	f63f aeac 	bhi.w	8005952 <_malloc_r+0x1ae>
 8005bfa:	b91c      	cbnz	r4, 8005c04 <_malloc_r+0x460>
 8005bfc:	e6a9      	b.n	8005952 <_malloc_r+0x1ae>
 8005bfe:	0064      	lsls	r4, r4, #1
 8005c00:	f108 0804 	add.w	r8, r8, #4
 8005c04:	421c      	tst	r4, r3
 8005c06:	d0fa      	beq.n	8005bfe <_malloc_r+0x45a>
 8005c08:	4640      	mov	r0, r8
 8005c0a:	e65f      	b.n	80058cc <_malloc_r+0x128>
 8005c0c:	f108 0810 	add.w	r8, r8, #16
 8005c10:	e6bc      	b.n	800598c <_malloc_r+0x1e8>
 8005c12:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005c16:	d826      	bhi.n	8005c66 <_malloc_r+0x4c2>
 8005c18:	0beb      	lsrs	r3, r5, #15
 8005c1a:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005c1e:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005c22:	00c3      	lsls	r3, r0, #3
 8005c24:	e603      	b.n	800582e <_malloc_r+0x8a>
 8005c26:	687b      	ldr	r3, [r7, #4]
 8005c28:	1092      	asrs	r2, r2, #2
 8005c2a:	f04f 0801 	mov.w	r8, #1
 8005c2e:	fa08 f202 	lsl.w	r2, r8, r2
 8005c32:	4313      	orrs	r3, r2
 8005c34:	607b      	str	r3, [r7, #4]
 8005c36:	e7a8      	b.n	8005b8a <_malloc_r+0x3e6>
 8005c38:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005c3c:	e6ce      	b.n	80059dc <_malloc_r+0x238>
 8005c3e:	2a54      	cmp	r2, #84	; 0x54
 8005c40:	d829      	bhi.n	8005c96 <_malloc_r+0x4f2>
 8005c42:	0b1a      	lsrs	r2, r3, #12
 8005c44:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005c48:	00c9      	lsls	r1, r1, #3
 8005c4a:	326e      	adds	r2, #110	; 0x6e
 8005c4c:	e78b      	b.n	8005b66 <_malloc_r+0x3c2>
 8005c4e:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005c52:	2900      	cmp	r1, #0
 8005c54:	f47f aeae 	bne.w	80059b4 <_malloc_r+0x210>
 8005c58:	eb09 0208 	add.w	r2, r9, r8
 8005c5c:	68b9      	ldr	r1, [r7, #8]
 8005c5e:	f042 0201 	orr.w	r2, r2, #1
 8005c62:	604a      	str	r2, [r1, #4]
 8005c64:	e6ec      	b.n	8005a40 <_malloc_r+0x29c>
 8005c66:	f240 5254 	movw	r2, #1364	; 0x554
 8005c6a:	4293      	cmp	r3, r2
 8005c6c:	d81c      	bhi.n	8005ca8 <_malloc_r+0x504>
 8005c6e:	0cab      	lsrs	r3, r5, #18
 8005c70:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005c74:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005c78:	00c3      	lsls	r3, r0, #3
 8005c7a:	e5d8      	b.n	800582e <_malloc_r+0x8a>
 8005c7c:	2301      	movs	r3, #1
 8005c7e:	f8cb 3004 	str.w	r3, [fp, #4]
 8005c82:	e79b      	b.n	8005bbc <_malloc_r+0x418>
 8005c84:	2101      	movs	r1, #1
 8005c86:	f04f 0800 	mov.w	r8, #0
 8005c8a:	e6ba      	b.n	8005a02 <_malloc_r+0x25e>
 8005c8c:	4a16      	ldr	r2, [pc, #88]	; (8005ce8 <_malloc_r+0x544>)
 8005c8e:	6813      	ldr	r3, [r2, #0]
 8005c90:	4443      	add	r3, r8
 8005c92:	6013      	str	r3, [r2, #0]
 8005c94:	e68e      	b.n	80059b4 <_malloc_r+0x210>
 8005c96:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005c9a:	d814      	bhi.n	8005cc6 <_malloc_r+0x522>
 8005c9c:	0bda      	lsrs	r2, r3, #15
 8005c9e:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005ca2:	00c9      	lsls	r1, r1, #3
 8005ca4:	3277      	adds	r2, #119	; 0x77
 8005ca6:	e75e      	b.n	8005b66 <_malloc_r+0x3c2>
 8005ca8:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005cac:	207f      	movs	r0, #127	; 0x7f
 8005cae:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005cb2:	e5bc      	b.n	800582e <_malloc_r+0x8a>
 8005cb4:	f104 0108 	add.w	r1, r4, #8
 8005cb8:	4630      	mov	r0, r6
 8005cba:	9201      	str	r2, [sp, #4]
 8005cbc:	f7ff fa48 	bl	8005150 <_free_r>
 8005cc0:	9a01      	ldr	r2, [sp, #4]
 8005cc2:	6813      	ldr	r3, [r2, #0]
 8005cc4:	e6bc      	b.n	8005a40 <_malloc_r+0x29c>
 8005cc6:	f240 5154 	movw	r1, #1364	; 0x554
 8005cca:	428a      	cmp	r2, r1
 8005ccc:	d805      	bhi.n	8005cda <_malloc_r+0x536>
 8005cce:	0c9a      	lsrs	r2, r3, #18
 8005cd0:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005cd4:	00c9      	lsls	r1, r1, #3
 8005cd6:	327c      	adds	r2, #124	; 0x7c
 8005cd8:	e745      	b.n	8005b66 <_malloc_r+0x3c2>
 8005cda:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005cde:	227e      	movs	r2, #126	; 0x7e
 8005ce0:	e741      	b.n	8005b66 <_malloc_r+0x3c2>
 8005ce2:	687b      	ldr	r3, [r7, #4]
 8005ce4:	e785      	b.n	8005bf2 <_malloc_r+0x44e>
 8005ce6:	bf00      	nop
 8005ce8:	20000a6c 	.word	0x20000a6c

08005cec <memmove>:
 8005cec:	4288      	cmp	r0, r1
 8005cee:	b4f0      	push	{r4, r5, r6, r7}
 8005cf0:	d90d      	bls.n	8005d0e <memmove+0x22>
 8005cf2:	188b      	adds	r3, r1, r2
 8005cf4:	4283      	cmp	r3, r0
 8005cf6:	d90a      	bls.n	8005d0e <memmove+0x22>
 8005cf8:	1884      	adds	r4, r0, r2
 8005cfa:	b132      	cbz	r2, 8005d0a <memmove+0x1e>
 8005cfc:	4622      	mov	r2, r4
 8005cfe:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005d02:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005d06:	4299      	cmp	r1, r3
 8005d08:	d1f9      	bne.n	8005cfe <memmove+0x12>
 8005d0a:	bcf0      	pop	{r4, r5, r6, r7}
 8005d0c:	4770      	bx	lr
 8005d0e:	2a0f      	cmp	r2, #15
 8005d10:	d949      	bls.n	8005da6 <memmove+0xba>
 8005d12:	ea40 0301 	orr.w	r3, r0, r1
 8005d16:	079b      	lsls	r3, r3, #30
 8005d18:	d147      	bne.n	8005daa <memmove+0xbe>
 8005d1a:	f1a2 0310 	sub.w	r3, r2, #16
 8005d1e:	091b      	lsrs	r3, r3, #4
 8005d20:	f101 0720 	add.w	r7, r1, #32
 8005d24:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005d28:	f101 0410 	add.w	r4, r1, #16
 8005d2c:	f100 0510 	add.w	r5, r0, #16
 8005d30:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005d34:	f845 6c10 	str.w	r6, [r5, #-16]
 8005d38:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005d3c:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005d40:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005d44:	f845 6c08 	str.w	r6, [r5, #-8]
 8005d48:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005d4c:	f845 6c04 	str.w	r6, [r5, #-4]
 8005d50:	3410      	adds	r4, #16
 8005d52:	42bc      	cmp	r4, r7
 8005d54:	f105 0510 	add.w	r5, r5, #16
 8005d58:	d1ea      	bne.n	8005d30 <memmove+0x44>
 8005d5a:	3301      	adds	r3, #1
 8005d5c:	f002 050f 	and.w	r5, r2, #15
 8005d60:	011b      	lsls	r3, r3, #4
 8005d62:	2d03      	cmp	r5, #3
 8005d64:	4419      	add	r1, r3
 8005d66:	4403      	add	r3, r0
 8005d68:	d921      	bls.n	8005dae <memmove+0xc2>
 8005d6a:	1f1f      	subs	r7, r3, #4
 8005d6c:	460e      	mov	r6, r1
 8005d6e:	462c      	mov	r4, r5
 8005d70:	3c04      	subs	r4, #4
 8005d72:	f856 cb04 	ldr.w	ip, [r6], #4
 8005d76:	f847 cf04 	str.w	ip, [r7, #4]!
 8005d7a:	2c03      	cmp	r4, #3
 8005d7c:	d8f8      	bhi.n	8005d70 <memmove+0x84>
 8005d7e:	1f2c      	subs	r4, r5, #4
 8005d80:	f024 0403 	bic.w	r4, r4, #3
 8005d84:	3404      	adds	r4, #4
 8005d86:	4423      	add	r3, r4
 8005d88:	4421      	add	r1, r4
 8005d8a:	f002 0203 	and.w	r2, r2, #3
 8005d8e:	2a00      	cmp	r2, #0
 8005d90:	d0bb      	beq.n	8005d0a <memmove+0x1e>
 8005d92:	3b01      	subs	r3, #1
 8005d94:	440a      	add	r2, r1
 8005d96:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005d9a:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005d9e:	4291      	cmp	r1, r2
 8005da0:	d1f9      	bne.n	8005d96 <memmove+0xaa>
 8005da2:	bcf0      	pop	{r4, r5, r6, r7}
 8005da4:	4770      	bx	lr
 8005da6:	4603      	mov	r3, r0
 8005da8:	e7f1      	b.n	8005d8e <memmove+0xa2>
 8005daa:	4603      	mov	r3, r0
 8005dac:	e7f1      	b.n	8005d92 <memmove+0xa6>
 8005dae:	462a      	mov	r2, r5
 8005db0:	e7ed      	b.n	8005d8e <memmove+0xa2>
 8005db2:	bf00      	nop

08005db4 <__malloc_lock>:
 8005db4:	4801      	ldr	r0, [pc, #4]	; (8005dbc <__malloc_lock+0x8>)
 8005db6:	f7ff bc79 	b.w	80056ac <__retarget_lock_acquire_recursive>
 8005dba:	bf00      	nop
 8005dbc:	20000af8 	.word	0x20000af8

08005dc0 <__malloc_unlock>:
 8005dc0:	4801      	ldr	r0, [pc, #4]	; (8005dc8 <__malloc_unlock+0x8>)
 8005dc2:	f7ff bc75 	b.w	80056b0 <__retarget_lock_release_recursive>
 8005dc6:	bf00      	nop
 8005dc8:	20000af8 	.word	0x20000af8

08005dcc <_Balloc>:
 8005dcc:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005dce:	b570      	push	{r4, r5, r6, lr}
 8005dd0:	4605      	mov	r5, r0
 8005dd2:	460c      	mov	r4, r1
 8005dd4:	b14b      	cbz	r3, 8005dea <_Balloc+0x1e>
 8005dd6:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005dda:	b180      	cbz	r0, 8005dfe <_Balloc+0x32>
 8005ddc:	6802      	ldr	r2, [r0, #0]
 8005dde:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005de2:	2300      	movs	r3, #0
 8005de4:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005de8:	bd70      	pop	{r4, r5, r6, pc}
 8005dea:	2221      	movs	r2, #33	; 0x21
 8005dec:	2104      	movs	r1, #4
 8005dee:	f000 fe1d 	bl	8006a2c <_calloc_r>
 8005df2:	4603      	mov	r3, r0
 8005df4:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005df6:	2800      	cmp	r0, #0
 8005df8:	d1ed      	bne.n	8005dd6 <_Balloc+0xa>
 8005dfa:	2000      	movs	r0, #0
 8005dfc:	bd70      	pop	{r4, r5, r6, pc}
 8005dfe:	2101      	movs	r1, #1
 8005e00:	fa01 f604 	lsl.w	r6, r1, r4
 8005e04:	1d72      	adds	r2, r6, #5
 8005e06:	4628      	mov	r0, r5
 8005e08:	0092      	lsls	r2, r2, #2
 8005e0a:	f000 fe0f 	bl	8006a2c <_calloc_r>
 8005e0e:	2800      	cmp	r0, #0
 8005e10:	d0f3      	beq.n	8005dfa <_Balloc+0x2e>
 8005e12:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005e16:	e7e4      	b.n	8005de2 <_Balloc+0x16>

08005e18 <_Bfree>:
 8005e18:	b131      	cbz	r1, 8005e28 <_Bfree+0x10>
 8005e1a:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005e1c:	684a      	ldr	r2, [r1, #4]
 8005e1e:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005e22:	6008      	str	r0, [r1, #0]
 8005e24:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005e28:	4770      	bx	lr
 8005e2a:	bf00      	nop

08005e2c <__multadd>:
 8005e2c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005e2e:	690c      	ldr	r4, [r1, #16]
 8005e30:	b083      	sub	sp, #12
 8005e32:	460d      	mov	r5, r1
 8005e34:	4606      	mov	r6, r0
 8005e36:	f101 0c14 	add.w	ip, r1, #20
 8005e3a:	2700      	movs	r7, #0
 8005e3c:	f8dc 0000 	ldr.w	r0, [ip]
 8005e40:	b281      	uxth	r1, r0
 8005e42:	fb02 3301 	mla	r3, r2, r1, r3
 8005e46:	0c01      	lsrs	r1, r0, #16
 8005e48:	0c18      	lsrs	r0, r3, #16
 8005e4a:	fb02 0101 	mla	r1, r2, r1, r0
 8005e4e:	b29b      	uxth	r3, r3
 8005e50:	3701      	adds	r7, #1
 8005e52:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005e56:	42bc      	cmp	r4, r7
 8005e58:	f84c 3b04 	str.w	r3, [ip], #4
 8005e5c:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8005e60:	dcec      	bgt.n	8005e3c <__multadd+0x10>
 8005e62:	b13b      	cbz	r3, 8005e74 <__multadd+0x48>
 8005e64:	68aa      	ldr	r2, [r5, #8]
 8005e66:	42a2      	cmp	r2, r4
 8005e68:	dd07      	ble.n	8005e7a <__multadd+0x4e>
 8005e6a:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8005e6e:	3401      	adds	r4, #1
 8005e70:	6153      	str	r3, [r2, #20]
 8005e72:	612c      	str	r4, [r5, #16]
 8005e74:	4628      	mov	r0, r5
 8005e76:	b003      	add	sp, #12
 8005e78:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005e7a:	6869      	ldr	r1, [r5, #4]
 8005e7c:	9301      	str	r3, [sp, #4]
 8005e7e:	3101      	adds	r1, #1
 8005e80:	4630      	mov	r0, r6
 8005e82:	f7ff ffa3 	bl	8005dcc <_Balloc>
 8005e86:	692a      	ldr	r2, [r5, #16]
 8005e88:	3202      	adds	r2, #2
 8005e8a:	f105 010c 	add.w	r1, r5, #12
 8005e8e:	4607      	mov	r7, r0
 8005e90:	0092      	lsls	r2, r2, #2
 8005e92:	300c      	adds	r0, #12
 8005e94:	f7fa fb34 	bl	8000500 <memcpy>
 8005e98:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8005e9a:	6869      	ldr	r1, [r5, #4]
 8005e9c:	9b01      	ldr	r3, [sp, #4]
 8005e9e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8005ea2:	6028      	str	r0, [r5, #0]
 8005ea4:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8005ea8:	463d      	mov	r5, r7
 8005eaa:	e7de      	b.n	8005e6a <__multadd+0x3e>

08005eac <__hi0bits>:
 8005eac:	0c02      	lsrs	r2, r0, #16
 8005eae:	0412      	lsls	r2, r2, #16
 8005eb0:	4603      	mov	r3, r0
 8005eb2:	b9c2      	cbnz	r2, 8005ee6 <__hi0bits+0x3a>
 8005eb4:	0403      	lsls	r3, r0, #16
 8005eb6:	2010      	movs	r0, #16
 8005eb8:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8005ebc:	bf04      	itt	eq
 8005ebe:	021b      	lsleq	r3, r3, #8
 8005ec0:	3008      	addeq	r0, #8
 8005ec2:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8005ec6:	bf04      	itt	eq
 8005ec8:	011b      	lsleq	r3, r3, #4
 8005eca:	3004      	addeq	r0, #4
 8005ecc:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8005ed0:	bf04      	itt	eq
 8005ed2:	009b      	lsleq	r3, r3, #2
 8005ed4:	3002      	addeq	r0, #2
 8005ed6:	2b00      	cmp	r3, #0
 8005ed8:	db04      	blt.n	8005ee4 <__hi0bits+0x38>
 8005eda:	005b      	lsls	r3, r3, #1
 8005edc:	d501      	bpl.n	8005ee2 <__hi0bits+0x36>
 8005ede:	3001      	adds	r0, #1
 8005ee0:	4770      	bx	lr
 8005ee2:	2020      	movs	r0, #32
 8005ee4:	4770      	bx	lr
 8005ee6:	2000      	movs	r0, #0
 8005ee8:	e7e6      	b.n	8005eb8 <__hi0bits+0xc>
 8005eea:	bf00      	nop

08005eec <__lo0bits>:
 8005eec:	6803      	ldr	r3, [r0, #0]
 8005eee:	f013 0207 	ands.w	r2, r3, #7
 8005ef2:	4601      	mov	r1, r0
 8005ef4:	d007      	beq.n	8005f06 <__lo0bits+0x1a>
 8005ef6:	07da      	lsls	r2, r3, #31
 8005ef8:	d41f      	bmi.n	8005f3a <__lo0bits+0x4e>
 8005efa:	0798      	lsls	r0, r3, #30
 8005efc:	d51f      	bpl.n	8005f3e <__lo0bits+0x52>
 8005efe:	085b      	lsrs	r3, r3, #1
 8005f00:	600b      	str	r3, [r1, #0]
 8005f02:	2001      	movs	r0, #1
 8005f04:	4770      	bx	lr
 8005f06:	b298      	uxth	r0, r3
 8005f08:	b1a0      	cbz	r0, 8005f34 <__lo0bits+0x48>
 8005f0a:	4610      	mov	r0, r2
 8005f0c:	f013 0fff 	tst.w	r3, #255	; 0xff
 8005f10:	bf04      	itt	eq
 8005f12:	0a1b      	lsreq	r3, r3, #8
 8005f14:	3008      	addeq	r0, #8
 8005f16:	071a      	lsls	r2, r3, #28
 8005f18:	bf04      	itt	eq
 8005f1a:	091b      	lsreq	r3, r3, #4
 8005f1c:	3004      	addeq	r0, #4
 8005f1e:	079a      	lsls	r2, r3, #30
 8005f20:	bf04      	itt	eq
 8005f22:	089b      	lsreq	r3, r3, #2
 8005f24:	3002      	addeq	r0, #2
 8005f26:	07da      	lsls	r2, r3, #31
 8005f28:	d402      	bmi.n	8005f30 <__lo0bits+0x44>
 8005f2a:	085b      	lsrs	r3, r3, #1
 8005f2c:	d00b      	beq.n	8005f46 <__lo0bits+0x5a>
 8005f2e:	3001      	adds	r0, #1
 8005f30:	600b      	str	r3, [r1, #0]
 8005f32:	4770      	bx	lr
 8005f34:	0c1b      	lsrs	r3, r3, #16
 8005f36:	2010      	movs	r0, #16
 8005f38:	e7e8      	b.n	8005f0c <__lo0bits+0x20>
 8005f3a:	2000      	movs	r0, #0
 8005f3c:	4770      	bx	lr
 8005f3e:	089b      	lsrs	r3, r3, #2
 8005f40:	600b      	str	r3, [r1, #0]
 8005f42:	2002      	movs	r0, #2
 8005f44:	4770      	bx	lr
 8005f46:	2020      	movs	r0, #32
 8005f48:	4770      	bx	lr
 8005f4a:	bf00      	nop

08005f4c <__i2b>:
 8005f4c:	b510      	push	{r4, lr}
 8005f4e:	460c      	mov	r4, r1
 8005f50:	2101      	movs	r1, #1
 8005f52:	f7ff ff3b 	bl	8005dcc <_Balloc>
 8005f56:	2201      	movs	r2, #1
 8005f58:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8005f5c:	bd10      	pop	{r4, pc}
 8005f5e:	bf00      	nop

08005f60 <__multiply>:
 8005f60:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005f64:	690e      	ldr	r6, [r1, #16]
 8005f66:	6914      	ldr	r4, [r2, #16]
 8005f68:	42a6      	cmp	r6, r4
 8005f6a:	b083      	sub	sp, #12
 8005f6c:	460f      	mov	r7, r1
 8005f6e:	4615      	mov	r5, r2
 8005f70:	da04      	bge.n	8005f7c <__multiply+0x1c>
 8005f72:	4632      	mov	r2, r6
 8005f74:	462f      	mov	r7, r5
 8005f76:	4626      	mov	r6, r4
 8005f78:	460d      	mov	r5, r1
 8005f7a:	4614      	mov	r4, r2
 8005f7c:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8005f80:	eb06 0804 	add.w	r8, r6, r4
 8005f84:	4543      	cmp	r3, r8
 8005f86:	bfb8      	it	lt
 8005f88:	3101      	addlt	r1, #1
 8005f8a:	f7ff ff1f 	bl	8005dcc <_Balloc>
 8005f8e:	f100 0914 	add.w	r9, r0, #20
 8005f92:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8005f96:	45f1      	cmp	r9, lr
 8005f98:	9000      	str	r0, [sp, #0]
 8005f9a:	d205      	bcs.n	8005fa8 <__multiply+0x48>
 8005f9c:	464b      	mov	r3, r9
 8005f9e:	2200      	movs	r2, #0
 8005fa0:	f843 2b04 	str.w	r2, [r3], #4
 8005fa4:	459e      	cmp	lr, r3
 8005fa6:	d8fb      	bhi.n	8005fa0 <__multiply+0x40>
 8005fa8:	f105 0a14 	add.w	sl, r5, #20
 8005fac:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8005fb0:	f107 0314 	add.w	r3, r7, #20
 8005fb4:	45a2      	cmp	sl, r4
 8005fb6:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8005fba:	d261      	bcs.n	8006080 <__multiply+0x120>
 8005fbc:	1b64      	subs	r4, r4, r5
 8005fbe:	3c15      	subs	r4, #21
 8005fc0:	f024 0403 	bic.w	r4, r4, #3
 8005fc4:	f8cd e004 	str.w	lr, [sp, #4]
 8005fc8:	44a2      	add	sl, r4
 8005fca:	f105 0210 	add.w	r2, r5, #16
 8005fce:	469e      	mov	lr, r3
 8005fd0:	e005      	b.n	8005fde <__multiply+0x7e>
 8005fd2:	0c2d      	lsrs	r5, r5, #16
 8005fd4:	d12b      	bne.n	800602e <__multiply+0xce>
 8005fd6:	4592      	cmp	sl, r2
 8005fd8:	f109 0904 	add.w	r9, r9, #4
 8005fdc:	d04e      	beq.n	800607c <__multiply+0x11c>
 8005fde:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8005fe2:	fa1f fb85 	uxth.w	fp, r5
 8005fe6:	f1bb 0f00 	cmp.w	fp, #0
 8005fea:	d0f2      	beq.n	8005fd2 <__multiply+0x72>
 8005fec:	4677      	mov	r7, lr
 8005fee:	464e      	mov	r6, r9
 8005ff0:	2000      	movs	r0, #0
 8005ff2:	e000      	b.n	8005ff6 <__multiply+0x96>
 8005ff4:	4626      	mov	r6, r4
 8005ff6:	f857 1b04 	ldr.w	r1, [r7], #4
 8005ffa:	6834      	ldr	r4, [r6, #0]
 8005ffc:	b28b      	uxth	r3, r1
 8005ffe:	b2a5      	uxth	r5, r4
 8006000:	0c09      	lsrs	r1, r1, #16
 8006002:	0c24      	lsrs	r4, r4, #16
 8006004:	fb0b 5303 	mla	r3, fp, r3, r5
 8006008:	4403      	add	r3, r0
 800600a:	fb0b 4001 	mla	r0, fp, r1, r4
 800600e:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8006012:	4634      	mov	r4, r6
 8006014:	b29b      	uxth	r3, r3
 8006016:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800601a:	45bc      	cmp	ip, r7
 800601c:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006020:	f844 3b04 	str.w	r3, [r4], #4
 8006024:	d8e6      	bhi.n	8005ff4 <__multiply+0x94>
 8006026:	6070      	str	r0, [r6, #4]
 8006028:	6815      	ldr	r5, [r2, #0]
 800602a:	0c2d      	lsrs	r5, r5, #16
 800602c:	d0d3      	beq.n	8005fd6 <__multiply+0x76>
 800602e:	f8d9 3000 	ldr.w	r3, [r9]
 8006032:	4676      	mov	r6, lr
 8006034:	4618      	mov	r0, r3
 8006036:	46cb      	mov	fp, r9
 8006038:	2100      	movs	r1, #0
 800603a:	e000      	b.n	800603e <__multiply+0xde>
 800603c:	46a3      	mov	fp, r4
 800603e:	8834      	ldrh	r4, [r6, #0]
 8006040:	0c00      	lsrs	r0, r0, #16
 8006042:	fb05 0004 	mla	r0, r5, r4, r0
 8006046:	4401      	add	r1, r0
 8006048:	b29b      	uxth	r3, r3
 800604a:	465c      	mov	r4, fp
 800604c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006050:	f844 3b04 	str.w	r3, [r4], #4
 8006054:	f856 3b04 	ldr.w	r3, [r6], #4
 8006058:	f8db 0004 	ldr.w	r0, [fp, #4]
 800605c:	0c1b      	lsrs	r3, r3, #16
 800605e:	b287      	uxth	r7, r0
 8006060:	fb05 7303 	mla	r3, r5, r3, r7
 8006064:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006068:	45b4      	cmp	ip, r6
 800606a:	ea4f 4113 	mov.w	r1, r3, lsr #16
 800606e:	d8e5      	bhi.n	800603c <__multiply+0xdc>
 8006070:	4592      	cmp	sl, r2
 8006072:	f8cb 3004 	str.w	r3, [fp, #4]
 8006076:	f109 0904 	add.w	r9, r9, #4
 800607a:	d1b0      	bne.n	8005fde <__multiply+0x7e>
 800607c:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006080:	f1b8 0f00 	cmp.w	r8, #0
 8006084:	dd0b      	ble.n	800609e <__multiply+0x13e>
 8006086:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800608a:	f1ae 0e04 	sub.w	lr, lr, #4
 800608e:	b11b      	cbz	r3, 8006098 <__multiply+0x138>
 8006090:	e005      	b.n	800609e <__multiply+0x13e>
 8006092:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006096:	b913      	cbnz	r3, 800609e <__multiply+0x13e>
 8006098:	f1b8 0801 	subs.w	r8, r8, #1
 800609c:	d1f9      	bne.n	8006092 <__multiply+0x132>
 800609e:	9800      	ldr	r0, [sp, #0]
 80060a0:	f8c0 8010 	str.w	r8, [r0, #16]
 80060a4:	b003      	add	sp, #12
 80060a6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80060aa:	bf00      	nop

080060ac <__pow5mult>:
 80060ac:	f012 0303 	ands.w	r3, r2, #3
 80060b0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80060b4:	4614      	mov	r4, r2
 80060b6:	4607      	mov	r7, r0
 80060b8:	d12e      	bne.n	8006118 <__pow5mult+0x6c>
 80060ba:	460d      	mov	r5, r1
 80060bc:	10a4      	asrs	r4, r4, #2
 80060be:	d01c      	beq.n	80060fa <__pow5mult+0x4e>
 80060c0:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80060c2:	b396      	cbz	r6, 800612a <__pow5mult+0x7e>
 80060c4:	07e3      	lsls	r3, r4, #31
 80060c6:	f04f 0800 	mov.w	r8, #0
 80060ca:	d406      	bmi.n	80060da <__pow5mult+0x2e>
 80060cc:	1064      	asrs	r4, r4, #1
 80060ce:	d014      	beq.n	80060fa <__pow5mult+0x4e>
 80060d0:	6830      	ldr	r0, [r6, #0]
 80060d2:	b1a8      	cbz	r0, 8006100 <__pow5mult+0x54>
 80060d4:	4606      	mov	r6, r0
 80060d6:	07e3      	lsls	r3, r4, #31
 80060d8:	d5f8      	bpl.n	80060cc <__pow5mult+0x20>
 80060da:	4632      	mov	r2, r6
 80060dc:	4629      	mov	r1, r5
 80060de:	4638      	mov	r0, r7
 80060e0:	f7ff ff3e 	bl	8005f60 <__multiply>
 80060e4:	b1b5      	cbz	r5, 8006114 <__pow5mult+0x68>
 80060e6:	686a      	ldr	r2, [r5, #4]
 80060e8:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80060ea:	1064      	asrs	r4, r4, #1
 80060ec:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80060f0:	6029      	str	r1, [r5, #0]
 80060f2:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80060f6:	4605      	mov	r5, r0
 80060f8:	d1ea      	bne.n	80060d0 <__pow5mult+0x24>
 80060fa:	4628      	mov	r0, r5
 80060fc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006100:	4632      	mov	r2, r6
 8006102:	4631      	mov	r1, r6
 8006104:	4638      	mov	r0, r7
 8006106:	f7ff ff2b 	bl	8005f60 <__multiply>
 800610a:	6030      	str	r0, [r6, #0]
 800610c:	f8c0 8000 	str.w	r8, [r0]
 8006110:	4606      	mov	r6, r0
 8006112:	e7e0      	b.n	80060d6 <__pow5mult+0x2a>
 8006114:	4605      	mov	r5, r0
 8006116:	e7d9      	b.n	80060cc <__pow5mult+0x20>
 8006118:	3b01      	subs	r3, #1
 800611a:	4a0b      	ldr	r2, [pc, #44]	; (8006148 <__pow5mult+0x9c>)
 800611c:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006120:	2300      	movs	r3, #0
 8006122:	f7ff fe83 	bl	8005e2c <__multadd>
 8006126:	4605      	mov	r5, r0
 8006128:	e7c8      	b.n	80060bc <__pow5mult+0x10>
 800612a:	2101      	movs	r1, #1
 800612c:	4638      	mov	r0, r7
 800612e:	f7ff fe4d 	bl	8005dcc <_Balloc>
 8006132:	f240 2371 	movw	r3, #625	; 0x271
 8006136:	6143      	str	r3, [r0, #20]
 8006138:	2201      	movs	r2, #1
 800613a:	2300      	movs	r3, #0
 800613c:	6102      	str	r2, [r0, #16]
 800613e:	4606      	mov	r6, r0
 8006140:	64b8      	str	r0, [r7, #72]	; 0x48
 8006142:	6003      	str	r3, [r0, #0]
 8006144:	e7be      	b.n	80060c4 <__pow5mult+0x18>
 8006146:	bf00      	nop
 8006148:	08007130 	.word	0x08007130

0800614c <__lshift>:
 800614c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006150:	4691      	mov	r9, r2
 8006152:	690a      	ldr	r2, [r1, #16]
 8006154:	460e      	mov	r6, r1
 8006156:	ea4f 1469 	mov.w	r4, r9, asr #5
 800615a:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 800615e:	eb04 0802 	add.w	r8, r4, r2
 8006162:	f108 0501 	add.w	r5, r8, #1
 8006166:	429d      	cmp	r5, r3
 8006168:	4607      	mov	r7, r0
 800616a:	dd04      	ble.n	8006176 <__lshift+0x2a>
 800616c:	005b      	lsls	r3, r3, #1
 800616e:	429d      	cmp	r5, r3
 8006170:	f101 0101 	add.w	r1, r1, #1
 8006174:	dcfa      	bgt.n	800616c <__lshift+0x20>
 8006176:	4638      	mov	r0, r7
 8006178:	f7ff fe28 	bl	8005dcc <_Balloc>
 800617c:	2c00      	cmp	r4, #0
 800617e:	f100 0314 	add.w	r3, r0, #20
 8006182:	dd37      	ble.n	80061f4 <__lshift+0xa8>
 8006184:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006188:	2200      	movs	r2, #0
 800618a:	f843 2b04 	str.w	r2, [r3], #4
 800618e:	428b      	cmp	r3, r1
 8006190:	d1fb      	bne.n	800618a <__lshift+0x3e>
 8006192:	6934      	ldr	r4, [r6, #16]
 8006194:	f106 0314 	add.w	r3, r6, #20
 8006198:	f019 091f 	ands.w	r9, r9, #31
 800619c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80061a0:	d020      	beq.n	80061e4 <__lshift+0x98>
 80061a2:	f1c9 0e20 	rsb	lr, r9, #32
 80061a6:	2200      	movs	r2, #0
 80061a8:	e000      	b.n	80061ac <__lshift+0x60>
 80061aa:	4651      	mov	r1, sl
 80061ac:	681c      	ldr	r4, [r3, #0]
 80061ae:	468a      	mov	sl, r1
 80061b0:	fa04 f409 	lsl.w	r4, r4, r9
 80061b4:	4314      	orrs	r4, r2
 80061b6:	f84a 4b04 	str.w	r4, [sl], #4
 80061ba:	f853 2b04 	ldr.w	r2, [r3], #4
 80061be:	4563      	cmp	r3, ip
 80061c0:	fa22 f20e 	lsr.w	r2, r2, lr
 80061c4:	d3f1      	bcc.n	80061aa <__lshift+0x5e>
 80061c6:	604a      	str	r2, [r1, #4]
 80061c8:	b10a      	cbz	r2, 80061ce <__lshift+0x82>
 80061ca:	f108 0502 	add.w	r5, r8, #2
 80061ce:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80061d0:	6872      	ldr	r2, [r6, #4]
 80061d2:	3d01      	subs	r5, #1
 80061d4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80061d8:	6105      	str	r5, [r0, #16]
 80061da:	6031      	str	r1, [r6, #0]
 80061dc:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80061e0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80061e4:	3904      	subs	r1, #4
 80061e6:	f853 2b04 	ldr.w	r2, [r3], #4
 80061ea:	f841 2f04 	str.w	r2, [r1, #4]!
 80061ee:	459c      	cmp	ip, r3
 80061f0:	d8f9      	bhi.n	80061e6 <__lshift+0x9a>
 80061f2:	e7ec      	b.n	80061ce <__lshift+0x82>
 80061f4:	4619      	mov	r1, r3
 80061f6:	e7cc      	b.n	8006192 <__lshift+0x46>

080061f8 <__mcmp>:
 80061f8:	b430      	push	{r4, r5}
 80061fa:	690b      	ldr	r3, [r1, #16]
 80061fc:	4605      	mov	r5, r0
 80061fe:	6900      	ldr	r0, [r0, #16]
 8006200:	1ac0      	subs	r0, r0, r3
 8006202:	d10f      	bne.n	8006224 <__mcmp+0x2c>
 8006204:	009b      	lsls	r3, r3, #2
 8006206:	3514      	adds	r5, #20
 8006208:	3114      	adds	r1, #20
 800620a:	4419      	add	r1, r3
 800620c:	442b      	add	r3, r5
 800620e:	e001      	b.n	8006214 <__mcmp+0x1c>
 8006210:	429d      	cmp	r5, r3
 8006212:	d207      	bcs.n	8006224 <__mcmp+0x2c>
 8006214:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006218:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 800621c:	4294      	cmp	r4, r2
 800621e:	d0f7      	beq.n	8006210 <__mcmp+0x18>
 8006220:	d302      	bcc.n	8006228 <__mcmp+0x30>
 8006222:	2001      	movs	r0, #1
 8006224:	bc30      	pop	{r4, r5}
 8006226:	4770      	bx	lr
 8006228:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800622c:	e7fa      	b.n	8006224 <__mcmp+0x2c>
 800622e:	bf00      	nop

08006230 <__mdiff>:
 8006230:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006234:	6913      	ldr	r3, [r2, #16]
 8006236:	690d      	ldr	r5, [r1, #16]
 8006238:	1aed      	subs	r5, r5, r3
 800623a:	2d00      	cmp	r5, #0
 800623c:	460e      	mov	r6, r1
 800623e:	4690      	mov	r8, r2
 8006240:	f101 0414 	add.w	r4, r1, #20
 8006244:	f102 0714 	add.w	r7, r2, #20
 8006248:	d114      	bne.n	8006274 <__mdiff+0x44>
 800624a:	009b      	lsls	r3, r3, #2
 800624c:	18e2      	adds	r2, r4, r3
 800624e:	443b      	add	r3, r7
 8006250:	e001      	b.n	8006256 <__mdiff+0x26>
 8006252:	42a2      	cmp	r2, r4
 8006254:	d959      	bls.n	800630a <__mdiff+0xda>
 8006256:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 800625a:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800625e:	458c      	cmp	ip, r1
 8006260:	d0f7      	beq.n	8006252 <__mdiff+0x22>
 8006262:	d209      	bcs.n	8006278 <__mdiff+0x48>
 8006264:	4622      	mov	r2, r4
 8006266:	4633      	mov	r3, r6
 8006268:	463c      	mov	r4, r7
 800626a:	4646      	mov	r6, r8
 800626c:	4617      	mov	r7, r2
 800626e:	4698      	mov	r8, r3
 8006270:	2501      	movs	r5, #1
 8006272:	e001      	b.n	8006278 <__mdiff+0x48>
 8006274:	dbf6      	blt.n	8006264 <__mdiff+0x34>
 8006276:	2500      	movs	r5, #0
 8006278:	6871      	ldr	r1, [r6, #4]
 800627a:	f7ff fda7 	bl	8005dcc <_Balloc>
 800627e:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006282:	6936      	ldr	r6, [r6, #16]
 8006284:	60c5      	str	r5, [r0, #12]
 8006286:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 800628a:	46bc      	mov	ip, r7
 800628c:	f100 0514 	add.w	r5, r0, #20
 8006290:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006294:	2300      	movs	r3, #0
 8006296:	f85c 1b04 	ldr.w	r1, [ip], #4
 800629a:	f854 8b04 	ldr.w	r8, [r4], #4
 800629e:	b28a      	uxth	r2, r1
 80062a0:	fa13 f388 	uxtah	r3, r3, r8
 80062a4:	0c09      	lsrs	r1, r1, #16
 80062a6:	1a9a      	subs	r2, r3, r2
 80062a8:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80062ac:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80062b0:	b292      	uxth	r2, r2
 80062b2:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80062b6:	45e6      	cmp	lr, ip
 80062b8:	f845 2b04 	str.w	r2, [r5], #4
 80062bc:	ea4f 4323 	mov.w	r3, r3, asr #16
 80062c0:	d8e9      	bhi.n	8006296 <__mdiff+0x66>
 80062c2:	42a7      	cmp	r7, r4
 80062c4:	d917      	bls.n	80062f6 <__mdiff+0xc6>
 80062c6:	46ae      	mov	lr, r5
 80062c8:	46a4      	mov	ip, r4
 80062ca:	f85c 2b04 	ldr.w	r2, [ip], #4
 80062ce:	fa13 f382 	uxtah	r3, r3, r2
 80062d2:	1419      	asrs	r1, r3, #16
 80062d4:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80062d8:	b29b      	uxth	r3, r3
 80062da:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80062de:	4567      	cmp	r7, ip
 80062e0:	f84e 2b04 	str.w	r2, [lr], #4
 80062e4:	ea4f 4321 	mov.w	r3, r1, asr #16
 80062e8:	d8ef      	bhi.n	80062ca <__mdiff+0x9a>
 80062ea:	43e4      	mvns	r4, r4
 80062ec:	4427      	add	r7, r4
 80062ee:	f027 0703 	bic.w	r7, r7, #3
 80062f2:	3704      	adds	r7, #4
 80062f4:	443d      	add	r5, r7
 80062f6:	3d04      	subs	r5, #4
 80062f8:	b922      	cbnz	r2, 8006304 <__mdiff+0xd4>
 80062fa:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80062fe:	3e01      	subs	r6, #1
 8006300:	2b00      	cmp	r3, #0
 8006302:	d0fa      	beq.n	80062fa <__mdiff+0xca>
 8006304:	6106      	str	r6, [r0, #16]
 8006306:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800630a:	2100      	movs	r1, #0
 800630c:	f7ff fd5e 	bl	8005dcc <_Balloc>
 8006310:	2201      	movs	r2, #1
 8006312:	2300      	movs	r3, #0
 8006314:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006318:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0800631c <__d2b>:
 800631c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006320:	460f      	mov	r7, r1
 8006322:	b083      	sub	sp, #12
 8006324:	2101      	movs	r1, #1
 8006326:	ec55 4b10 	vmov	r4, r5, d0
 800632a:	4616      	mov	r6, r2
 800632c:	f7ff fd4e 	bl	8005dcc <_Balloc>
 8006330:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8006334:	4681      	mov	r9, r0
 8006336:	f3c5 0313 	ubfx	r3, r5, #0, #20
 800633a:	f1b8 0f00 	cmp.w	r8, #0
 800633e:	d001      	beq.n	8006344 <__d2b+0x28>
 8006340:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006344:	2c00      	cmp	r4, #0
 8006346:	9301      	str	r3, [sp, #4]
 8006348:	d024      	beq.n	8006394 <__d2b+0x78>
 800634a:	a802      	add	r0, sp, #8
 800634c:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006350:	f7ff fdcc 	bl	8005eec <__lo0bits>
 8006354:	2800      	cmp	r0, #0
 8006356:	d136      	bne.n	80063c6 <__d2b+0xaa>
 8006358:	e9dd 2300 	ldrd	r2, r3, [sp]
 800635c:	f8c9 2014 	str.w	r2, [r9, #20]
 8006360:	2b00      	cmp	r3, #0
 8006362:	bf0c      	ite	eq
 8006364:	2101      	moveq	r1, #1
 8006366:	2102      	movne	r1, #2
 8006368:	f8c9 3018 	str.w	r3, [r9, #24]
 800636c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006370:	f1b8 0f00 	cmp.w	r8, #0
 8006374:	d11b      	bne.n	80063ae <__d2b+0x92>
 8006376:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 800637a:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 800637e:	6038      	str	r0, [r7, #0]
 8006380:	6918      	ldr	r0, [r3, #16]
 8006382:	f7ff fd93 	bl	8005eac <__hi0bits>
 8006386:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 800638a:	6030      	str	r0, [r6, #0]
 800638c:	4648      	mov	r0, r9
 800638e:	b003      	add	sp, #12
 8006390:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006394:	a801      	add	r0, sp, #4
 8006396:	f7ff fda9 	bl	8005eec <__lo0bits>
 800639a:	9b01      	ldr	r3, [sp, #4]
 800639c:	f8c9 3014 	str.w	r3, [r9, #20]
 80063a0:	2101      	movs	r1, #1
 80063a2:	3020      	adds	r0, #32
 80063a4:	f8c9 1010 	str.w	r1, [r9, #16]
 80063a8:	f1b8 0f00 	cmp.w	r8, #0
 80063ac:	d0e3      	beq.n	8006376 <__d2b+0x5a>
 80063ae:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80063b2:	eb08 0300 	add.w	r3, r8, r0
 80063b6:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80063ba:	603b      	str	r3, [r7, #0]
 80063bc:	6030      	str	r0, [r6, #0]
 80063be:	4648      	mov	r0, r9
 80063c0:	b003      	add	sp, #12
 80063c2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80063c6:	e9dd 1300 	ldrd	r1, r3, [sp]
 80063ca:	f1c0 0220 	rsb	r2, r0, #32
 80063ce:	fa03 f202 	lsl.w	r2, r3, r2
 80063d2:	430a      	orrs	r2, r1
 80063d4:	40c3      	lsrs	r3, r0
 80063d6:	9301      	str	r3, [sp, #4]
 80063d8:	f8c9 2014 	str.w	r2, [r9, #20]
 80063dc:	e7c0      	b.n	8006360 <__d2b+0x44>
 80063de:	bf00      	nop

080063e0 <_realloc_r>:
 80063e0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80063e4:	4692      	mov	sl, r2
 80063e6:	b083      	sub	sp, #12
 80063e8:	2900      	cmp	r1, #0
 80063ea:	f000 80a1 	beq.w	8006530 <_realloc_r+0x150>
 80063ee:	460d      	mov	r5, r1
 80063f0:	4680      	mov	r8, r0
 80063f2:	f10a 040b 	add.w	r4, sl, #11
 80063f6:	f7ff fcdd 	bl	8005db4 <__malloc_lock>
 80063fa:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80063fe:	2c16      	cmp	r4, #22
 8006400:	f022 0603 	bic.w	r6, r2, #3
 8006404:	f1a5 0708 	sub.w	r7, r5, #8
 8006408:	d83e      	bhi.n	8006488 <_realloc_r+0xa8>
 800640a:	2410      	movs	r4, #16
 800640c:	4621      	mov	r1, r4
 800640e:	45a2      	cmp	sl, r4
 8006410:	d83f      	bhi.n	8006492 <_realloc_r+0xb2>
 8006412:	428e      	cmp	r6, r1
 8006414:	eb07 0906 	add.w	r9, r7, r6
 8006418:	da74      	bge.n	8006504 <_realloc_r+0x124>
 800641a:	4bc7      	ldr	r3, [pc, #796]	; (8006738 <_realloc_r+0x358>)
 800641c:	6898      	ldr	r0, [r3, #8]
 800641e:	4548      	cmp	r0, r9
 8006420:	f000 80aa 	beq.w	8006578 <_realloc_r+0x198>
 8006424:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006428:	f020 0301 	bic.w	r3, r0, #1
 800642c:	444b      	add	r3, r9
 800642e:	685b      	ldr	r3, [r3, #4]
 8006430:	07db      	lsls	r3, r3, #31
 8006432:	f140 8083 	bpl.w	800653c <_realloc_r+0x15c>
 8006436:	07d2      	lsls	r2, r2, #31
 8006438:	d534      	bpl.n	80064a4 <_realloc_r+0xc4>
 800643a:	4651      	mov	r1, sl
 800643c:	4640      	mov	r0, r8
 800643e:	f7ff f9b1 	bl	80057a4 <_malloc_r>
 8006442:	4682      	mov	sl, r0
 8006444:	b1e0      	cbz	r0, 8006480 <_realloc_r+0xa0>
 8006446:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800644a:	f023 0301 	bic.w	r3, r3, #1
 800644e:	443b      	add	r3, r7
 8006450:	f1a0 0208 	sub.w	r2, r0, #8
 8006454:	4293      	cmp	r3, r2
 8006456:	f000 80f9 	beq.w	800664c <_realloc_r+0x26c>
 800645a:	1f32      	subs	r2, r6, #4
 800645c:	2a24      	cmp	r2, #36	; 0x24
 800645e:	f200 8107 	bhi.w	8006670 <_realloc_r+0x290>
 8006462:	2a13      	cmp	r2, #19
 8006464:	6829      	ldr	r1, [r5, #0]
 8006466:	f200 80e6 	bhi.w	8006636 <_realloc_r+0x256>
 800646a:	4603      	mov	r3, r0
 800646c:	462a      	mov	r2, r5
 800646e:	6019      	str	r1, [r3, #0]
 8006470:	6851      	ldr	r1, [r2, #4]
 8006472:	6059      	str	r1, [r3, #4]
 8006474:	6892      	ldr	r2, [r2, #8]
 8006476:	609a      	str	r2, [r3, #8]
 8006478:	4629      	mov	r1, r5
 800647a:	4640      	mov	r0, r8
 800647c:	f7fe fe68 	bl	8005150 <_free_r>
 8006480:	4640      	mov	r0, r8
 8006482:	f7ff fc9d 	bl	8005dc0 <__malloc_unlock>
 8006486:	e04f      	b.n	8006528 <_realloc_r+0x148>
 8006488:	f024 0407 	bic.w	r4, r4, #7
 800648c:	2c00      	cmp	r4, #0
 800648e:	4621      	mov	r1, r4
 8006490:	dabd      	bge.n	800640e <_realloc_r+0x2e>
 8006492:	f04f 0a00 	mov.w	sl, #0
 8006496:	230c      	movs	r3, #12
 8006498:	4650      	mov	r0, sl
 800649a:	f8c8 3000 	str.w	r3, [r8]
 800649e:	b003      	add	sp, #12
 80064a0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80064a4:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80064a8:	eba7 0b03 	sub.w	fp, r7, r3
 80064ac:	f8db 2004 	ldr.w	r2, [fp, #4]
 80064b0:	f022 0203 	bic.w	r2, r2, #3
 80064b4:	18b3      	adds	r3, r6, r2
 80064b6:	428b      	cmp	r3, r1
 80064b8:	dbbf      	blt.n	800643a <_realloc_r+0x5a>
 80064ba:	46da      	mov	sl, fp
 80064bc:	f8db 100c 	ldr.w	r1, [fp, #12]
 80064c0:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80064c4:	1f32      	subs	r2, r6, #4
 80064c6:	2a24      	cmp	r2, #36	; 0x24
 80064c8:	60c1      	str	r1, [r0, #12]
 80064ca:	eb0b 0903 	add.w	r9, fp, r3
 80064ce:	6088      	str	r0, [r1, #8]
 80064d0:	f200 80c6 	bhi.w	8006660 <_realloc_r+0x280>
 80064d4:	2a13      	cmp	r2, #19
 80064d6:	6829      	ldr	r1, [r5, #0]
 80064d8:	f240 80c0 	bls.w	800665c <_realloc_r+0x27c>
 80064dc:	f8cb 1008 	str.w	r1, [fp, #8]
 80064e0:	6869      	ldr	r1, [r5, #4]
 80064e2:	f8cb 100c 	str.w	r1, [fp, #12]
 80064e6:	2a1b      	cmp	r2, #27
 80064e8:	68a9      	ldr	r1, [r5, #8]
 80064ea:	f200 80d8 	bhi.w	800669e <_realloc_r+0x2be>
 80064ee:	f10b 0210 	add.w	r2, fp, #16
 80064f2:	3508      	adds	r5, #8
 80064f4:	6011      	str	r1, [r2, #0]
 80064f6:	6869      	ldr	r1, [r5, #4]
 80064f8:	6051      	str	r1, [r2, #4]
 80064fa:	68a9      	ldr	r1, [r5, #8]
 80064fc:	6091      	str	r1, [r2, #8]
 80064fe:	461e      	mov	r6, r3
 8006500:	465f      	mov	r7, fp
 8006502:	4655      	mov	r5, sl
 8006504:	687b      	ldr	r3, [r7, #4]
 8006506:	1b32      	subs	r2, r6, r4
 8006508:	2a0f      	cmp	r2, #15
 800650a:	f003 0301 	and.w	r3, r3, #1
 800650e:	d822      	bhi.n	8006556 <_realloc_r+0x176>
 8006510:	4333      	orrs	r3, r6
 8006512:	607b      	str	r3, [r7, #4]
 8006514:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006518:	f043 0301 	orr.w	r3, r3, #1
 800651c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006520:	4640      	mov	r0, r8
 8006522:	f7ff fc4d 	bl	8005dc0 <__malloc_unlock>
 8006526:	46aa      	mov	sl, r5
 8006528:	4650      	mov	r0, sl
 800652a:	b003      	add	sp, #12
 800652c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006530:	4611      	mov	r1, r2
 8006532:	b003      	add	sp, #12
 8006534:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006538:	f7ff b934 	b.w	80057a4 <_malloc_r>
 800653c:	f020 0003 	bic.w	r0, r0, #3
 8006540:	1833      	adds	r3, r6, r0
 8006542:	428b      	cmp	r3, r1
 8006544:	db61      	blt.n	800660a <_realloc_r+0x22a>
 8006546:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800654a:	461e      	mov	r6, r3
 800654c:	60ca      	str	r2, [r1, #12]
 800654e:	eb07 0903 	add.w	r9, r7, r3
 8006552:	6091      	str	r1, [r2, #8]
 8006554:	e7d6      	b.n	8006504 <_realloc_r+0x124>
 8006556:	1939      	adds	r1, r7, r4
 8006558:	4323      	orrs	r3, r4
 800655a:	f042 0201 	orr.w	r2, r2, #1
 800655e:	607b      	str	r3, [r7, #4]
 8006560:	604a      	str	r2, [r1, #4]
 8006562:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006566:	f043 0301 	orr.w	r3, r3, #1
 800656a:	3108      	adds	r1, #8
 800656c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006570:	4640      	mov	r0, r8
 8006572:	f7fe fded 	bl	8005150 <_free_r>
 8006576:	e7d3      	b.n	8006520 <_realloc_r+0x140>
 8006578:	6840      	ldr	r0, [r0, #4]
 800657a:	f020 0903 	bic.w	r9, r0, #3
 800657e:	44b1      	add	r9, r6
 8006580:	f104 0010 	add.w	r0, r4, #16
 8006584:	4581      	cmp	r9, r0
 8006586:	da77      	bge.n	8006678 <_realloc_r+0x298>
 8006588:	07d2      	lsls	r2, r2, #31
 800658a:	f53f af56 	bmi.w	800643a <_realloc_r+0x5a>
 800658e:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006592:	eba7 0b02 	sub.w	fp, r7, r2
 8006596:	f8db 2004 	ldr.w	r2, [fp, #4]
 800659a:	f022 0203 	bic.w	r2, r2, #3
 800659e:	4491      	add	r9, r2
 80065a0:	4548      	cmp	r0, r9
 80065a2:	dc87      	bgt.n	80064b4 <_realloc_r+0xd4>
 80065a4:	46da      	mov	sl, fp
 80065a6:	f8db 100c 	ldr.w	r1, [fp, #12]
 80065aa:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80065ae:	1f32      	subs	r2, r6, #4
 80065b0:	2a24      	cmp	r2, #36	; 0x24
 80065b2:	60c1      	str	r1, [r0, #12]
 80065b4:	6088      	str	r0, [r1, #8]
 80065b6:	f200 80a1 	bhi.w	80066fc <_realloc_r+0x31c>
 80065ba:	2a13      	cmp	r2, #19
 80065bc:	6829      	ldr	r1, [r5, #0]
 80065be:	f240 809b 	bls.w	80066f8 <_realloc_r+0x318>
 80065c2:	f8cb 1008 	str.w	r1, [fp, #8]
 80065c6:	6869      	ldr	r1, [r5, #4]
 80065c8:	f8cb 100c 	str.w	r1, [fp, #12]
 80065cc:	2a1b      	cmp	r2, #27
 80065ce:	68a9      	ldr	r1, [r5, #8]
 80065d0:	f200 809b 	bhi.w	800670a <_realloc_r+0x32a>
 80065d4:	f10b 0210 	add.w	r2, fp, #16
 80065d8:	3508      	adds	r5, #8
 80065da:	6011      	str	r1, [r2, #0]
 80065dc:	6869      	ldr	r1, [r5, #4]
 80065de:	6051      	str	r1, [r2, #4]
 80065e0:	68a9      	ldr	r1, [r5, #8]
 80065e2:	6091      	str	r1, [r2, #8]
 80065e4:	eb0b 0104 	add.w	r1, fp, r4
 80065e8:	eba9 0204 	sub.w	r2, r9, r4
 80065ec:	f042 0201 	orr.w	r2, r2, #1
 80065f0:	6099      	str	r1, [r3, #8]
 80065f2:	604a      	str	r2, [r1, #4]
 80065f4:	f8db 3004 	ldr.w	r3, [fp, #4]
 80065f8:	f003 0301 	and.w	r3, r3, #1
 80065fc:	431c      	orrs	r4, r3
 80065fe:	4640      	mov	r0, r8
 8006600:	f8cb 4004 	str.w	r4, [fp, #4]
 8006604:	f7ff fbdc 	bl	8005dc0 <__malloc_unlock>
 8006608:	e78e      	b.n	8006528 <_realloc_r+0x148>
 800660a:	07d3      	lsls	r3, r2, #31
 800660c:	f53f af15 	bmi.w	800643a <_realloc_r+0x5a>
 8006610:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006614:	eba7 0b03 	sub.w	fp, r7, r3
 8006618:	f8db 2004 	ldr.w	r2, [fp, #4]
 800661c:	f022 0203 	bic.w	r2, r2, #3
 8006620:	4410      	add	r0, r2
 8006622:	1983      	adds	r3, r0, r6
 8006624:	428b      	cmp	r3, r1
 8006626:	f6ff af45 	blt.w	80064b4 <_realloc_r+0xd4>
 800662a:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800662e:	46da      	mov	sl, fp
 8006630:	60ca      	str	r2, [r1, #12]
 8006632:	6091      	str	r1, [r2, #8]
 8006634:	e742      	b.n	80064bc <_realloc_r+0xdc>
 8006636:	6001      	str	r1, [r0, #0]
 8006638:	686b      	ldr	r3, [r5, #4]
 800663a:	6043      	str	r3, [r0, #4]
 800663c:	2a1b      	cmp	r2, #27
 800663e:	d83a      	bhi.n	80066b6 <_realloc_r+0x2d6>
 8006640:	f105 0208 	add.w	r2, r5, #8
 8006644:	f100 0308 	add.w	r3, r0, #8
 8006648:	68a9      	ldr	r1, [r5, #8]
 800664a:	e710      	b.n	800646e <_realloc_r+0x8e>
 800664c:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006650:	f023 0303 	bic.w	r3, r3, #3
 8006654:	441e      	add	r6, r3
 8006656:	eb07 0906 	add.w	r9, r7, r6
 800665a:	e753      	b.n	8006504 <_realloc_r+0x124>
 800665c:	4652      	mov	r2, sl
 800665e:	e749      	b.n	80064f4 <_realloc_r+0x114>
 8006660:	4629      	mov	r1, r5
 8006662:	4650      	mov	r0, sl
 8006664:	461e      	mov	r6, r3
 8006666:	465f      	mov	r7, fp
 8006668:	f7ff fb40 	bl	8005cec <memmove>
 800666c:	4655      	mov	r5, sl
 800666e:	e749      	b.n	8006504 <_realloc_r+0x124>
 8006670:	4629      	mov	r1, r5
 8006672:	f7ff fb3b 	bl	8005cec <memmove>
 8006676:	e6ff      	b.n	8006478 <_realloc_r+0x98>
 8006678:	4427      	add	r7, r4
 800667a:	eba9 0904 	sub.w	r9, r9, r4
 800667e:	f049 0201 	orr.w	r2, r9, #1
 8006682:	609f      	str	r7, [r3, #8]
 8006684:	607a      	str	r2, [r7, #4]
 8006686:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800668a:	f003 0301 	and.w	r3, r3, #1
 800668e:	431c      	orrs	r4, r3
 8006690:	4640      	mov	r0, r8
 8006692:	f845 4c04 	str.w	r4, [r5, #-4]
 8006696:	f7ff fb93 	bl	8005dc0 <__malloc_unlock>
 800669a:	46aa      	mov	sl, r5
 800669c:	e744      	b.n	8006528 <_realloc_r+0x148>
 800669e:	f8cb 1010 	str.w	r1, [fp, #16]
 80066a2:	68e9      	ldr	r1, [r5, #12]
 80066a4:	f8cb 1014 	str.w	r1, [fp, #20]
 80066a8:	2a24      	cmp	r2, #36	; 0x24
 80066aa:	d010      	beq.n	80066ce <_realloc_r+0x2ee>
 80066ac:	6929      	ldr	r1, [r5, #16]
 80066ae:	f10b 0218 	add.w	r2, fp, #24
 80066b2:	3510      	adds	r5, #16
 80066b4:	e71e      	b.n	80064f4 <_realloc_r+0x114>
 80066b6:	68ab      	ldr	r3, [r5, #8]
 80066b8:	6083      	str	r3, [r0, #8]
 80066ba:	68eb      	ldr	r3, [r5, #12]
 80066bc:	60c3      	str	r3, [r0, #12]
 80066be:	2a24      	cmp	r2, #36	; 0x24
 80066c0:	d010      	beq.n	80066e4 <_realloc_r+0x304>
 80066c2:	f105 0210 	add.w	r2, r5, #16
 80066c6:	f100 0310 	add.w	r3, r0, #16
 80066ca:	6929      	ldr	r1, [r5, #16]
 80066cc:	e6cf      	b.n	800646e <_realloc_r+0x8e>
 80066ce:	692a      	ldr	r2, [r5, #16]
 80066d0:	f8cb 2018 	str.w	r2, [fp, #24]
 80066d4:	696a      	ldr	r2, [r5, #20]
 80066d6:	f8cb 201c 	str.w	r2, [fp, #28]
 80066da:	69a9      	ldr	r1, [r5, #24]
 80066dc:	f10b 0220 	add.w	r2, fp, #32
 80066e0:	3518      	adds	r5, #24
 80066e2:	e707      	b.n	80064f4 <_realloc_r+0x114>
 80066e4:	692b      	ldr	r3, [r5, #16]
 80066e6:	6103      	str	r3, [r0, #16]
 80066e8:	696b      	ldr	r3, [r5, #20]
 80066ea:	6143      	str	r3, [r0, #20]
 80066ec:	69a9      	ldr	r1, [r5, #24]
 80066ee:	f105 0218 	add.w	r2, r5, #24
 80066f2:	f100 0318 	add.w	r3, r0, #24
 80066f6:	e6ba      	b.n	800646e <_realloc_r+0x8e>
 80066f8:	4652      	mov	r2, sl
 80066fa:	e76e      	b.n	80065da <_realloc_r+0x1fa>
 80066fc:	4629      	mov	r1, r5
 80066fe:	4650      	mov	r0, sl
 8006700:	9301      	str	r3, [sp, #4]
 8006702:	f7ff faf3 	bl	8005cec <memmove>
 8006706:	9b01      	ldr	r3, [sp, #4]
 8006708:	e76c      	b.n	80065e4 <_realloc_r+0x204>
 800670a:	f8cb 1010 	str.w	r1, [fp, #16]
 800670e:	68e9      	ldr	r1, [r5, #12]
 8006710:	f8cb 1014 	str.w	r1, [fp, #20]
 8006714:	2a24      	cmp	r2, #36	; 0x24
 8006716:	d004      	beq.n	8006722 <_realloc_r+0x342>
 8006718:	6929      	ldr	r1, [r5, #16]
 800671a:	f10b 0218 	add.w	r2, fp, #24
 800671e:	3510      	adds	r5, #16
 8006720:	e75b      	b.n	80065da <_realloc_r+0x1fa>
 8006722:	692a      	ldr	r2, [r5, #16]
 8006724:	f8cb 2018 	str.w	r2, [fp, #24]
 8006728:	696a      	ldr	r2, [r5, #20]
 800672a:	f8cb 201c 	str.w	r2, [fp, #28]
 800672e:	69a9      	ldr	r1, [r5, #24]
 8006730:	f10b 0220 	add.w	r2, fp, #32
 8006734:	3518      	adds	r5, #24
 8006736:	e750      	b.n	80065da <_realloc_r+0x1fa>
 8006738:	2000044c 	.word	0x2000044c

0800673c <frexp>:
 800673c:	ec53 2b10 	vmov	r2, r3, d0
 8006740:	b570      	push	{r4, r5, r6, lr}
 8006742:	4e16      	ldr	r6, [pc, #88]	; (800679c <frexp+0x60>)
 8006744:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006748:	2500      	movs	r5, #0
 800674a:	42b1      	cmp	r1, r6
 800674c:	4604      	mov	r4, r0
 800674e:	6005      	str	r5, [r0, #0]
 8006750:	dc21      	bgt.n	8006796 <frexp+0x5a>
 8006752:	ee10 6a10 	vmov	r6, s0
 8006756:	430e      	orrs	r6, r1
 8006758:	d01d      	beq.n	8006796 <frexp+0x5a>
 800675a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800675e:	4618      	mov	r0, r3
 8006760:	da0c      	bge.n	800677c <frexp+0x40>
 8006762:	4619      	mov	r1, r3
 8006764:	2200      	movs	r2, #0
 8006766:	ee10 0a10 	vmov	r0, s0
 800676a:	4b0d      	ldr	r3, [pc, #52]	; (80067a0 <frexp+0x64>)
 800676c:	f7fa f9e4 	bl	8000b38 <__aeabi_dmul>
 8006770:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006774:	4602      	mov	r2, r0
 8006776:	4608      	mov	r0, r1
 8006778:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 800677c:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006780:	1509      	asrs	r1, r1, #20
 8006782:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006786:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 800678a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 800678e:	4429      	add	r1, r5
 8006790:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006794:	6021      	str	r1, [r4, #0]
 8006796:	ec43 2b10 	vmov	d0, r2, r3
 800679a:	bd70      	pop	{r4, r5, r6, pc}
 800679c:	7fefffff 	.word	0x7fefffff
 80067a0:	43500000 	.word	0x43500000

080067a4 <_sbrk_r>:
 80067a4:	b538      	push	{r3, r4, r5, lr}
 80067a6:	4c07      	ldr	r4, [pc, #28]	; (80067c4 <_sbrk_r+0x20>)
 80067a8:	2300      	movs	r3, #0
 80067aa:	4605      	mov	r5, r0
 80067ac:	4608      	mov	r0, r1
 80067ae:	6023      	str	r3, [r4, #0]
 80067b0:	f7fb fc33 	bl	800201a <_sbrk>
 80067b4:	1c43      	adds	r3, r0, #1
 80067b6:	d000      	beq.n	80067ba <_sbrk_r+0x16>
 80067b8:	bd38      	pop	{r3, r4, r5, pc}
 80067ba:	6823      	ldr	r3, [r4, #0]
 80067bc:	2b00      	cmp	r3, #0
 80067be:	d0fb      	beq.n	80067b8 <_sbrk_r+0x14>
 80067c0:	602b      	str	r3, [r5, #0]
 80067c2:	bd38      	pop	{r3, r4, r5, pc}
 80067c4:	20000b0c 	.word	0x20000b0c

080067c8 <__sread>:
 80067c8:	b510      	push	{r4, lr}
 80067ca:	460c      	mov	r4, r1
 80067cc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80067d0:	f000 fabc 	bl	8006d4c <_read_r>
 80067d4:	2800      	cmp	r0, #0
 80067d6:	db03      	blt.n	80067e0 <__sread+0x18>
 80067d8:	6d23      	ldr	r3, [r4, #80]	; 0x50
 80067da:	4403      	add	r3, r0
 80067dc:	6523      	str	r3, [r4, #80]	; 0x50
 80067de:	bd10      	pop	{r4, pc}
 80067e0:	89a3      	ldrh	r3, [r4, #12]
 80067e2:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 80067e6:	81a3      	strh	r3, [r4, #12]
 80067e8:	bd10      	pop	{r4, pc}
 80067ea:	bf00      	nop

080067ec <__swrite>:
 80067ec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80067f0:	4616      	mov	r6, r2
 80067f2:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 80067f6:	461f      	mov	r7, r3
 80067f8:	05d3      	lsls	r3, r2, #23
 80067fa:	460c      	mov	r4, r1
 80067fc:	4605      	mov	r5, r0
 80067fe:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006802:	d507      	bpl.n	8006814 <__swrite+0x28>
 8006804:	2200      	movs	r2, #0
 8006806:	2302      	movs	r3, #2
 8006808:	f000 fa74 	bl	8006cf4 <_lseek_r>
 800680c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006810:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006814:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006818:	81a2      	strh	r2, [r4, #12]
 800681a:	463b      	mov	r3, r7
 800681c:	4632      	mov	r2, r6
 800681e:	4628      	mov	r0, r5
 8006820:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006824:	f000 b88c 	b.w	8006940 <_write_r>

08006828 <__sseek>:
 8006828:	b510      	push	{r4, lr}
 800682a:	460c      	mov	r4, r1
 800682c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006830:	f000 fa60 	bl	8006cf4 <_lseek_r>
 8006834:	89a3      	ldrh	r3, [r4, #12]
 8006836:	1c42      	adds	r2, r0, #1
 8006838:	bf0e      	itee	eq
 800683a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 800683e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006842:	6520      	strne	r0, [r4, #80]	; 0x50
 8006844:	81a3      	strh	r3, [r4, #12]
 8006846:	bd10      	pop	{r4, pc}

08006848 <__sclose>:
 8006848:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800684c:	f000 b922 	b.w	8006a94 <_close_r>

08006850 <strncpy>:
 8006850:	ea40 0301 	orr.w	r3, r0, r1
 8006854:	079b      	lsls	r3, r3, #30
 8006856:	b470      	push	{r4, r5, r6}
 8006858:	d12a      	bne.n	80068b0 <strncpy+0x60>
 800685a:	2a03      	cmp	r2, #3
 800685c:	d928      	bls.n	80068b0 <strncpy+0x60>
 800685e:	460c      	mov	r4, r1
 8006860:	4603      	mov	r3, r0
 8006862:	4621      	mov	r1, r4
 8006864:	f854 6b04 	ldr.w	r6, [r4], #4
 8006868:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 800686c:	ea25 0506 	bic.w	r5, r5, r6
 8006870:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006874:	d106      	bne.n	8006884 <strncpy+0x34>
 8006876:	3a04      	subs	r2, #4
 8006878:	2a03      	cmp	r2, #3
 800687a:	f843 6b04 	str.w	r6, [r3], #4
 800687e:	4621      	mov	r1, r4
 8006880:	d8ef      	bhi.n	8006862 <strncpy+0x12>
 8006882:	b19a      	cbz	r2, 80068ac <strncpy+0x5c>
 8006884:	780c      	ldrb	r4, [r1, #0]
 8006886:	701c      	strb	r4, [r3, #0]
 8006888:	3a01      	subs	r2, #1
 800688a:	3301      	adds	r3, #1
 800688c:	b13c      	cbz	r4, 800689e <strncpy+0x4e>
 800688e:	b16a      	cbz	r2, 80068ac <strncpy+0x5c>
 8006890:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006894:	f803 4b01 	strb.w	r4, [r3], #1
 8006898:	3a01      	subs	r2, #1
 800689a:	2c00      	cmp	r4, #0
 800689c:	d1f7      	bne.n	800688e <strncpy+0x3e>
 800689e:	b12a      	cbz	r2, 80068ac <strncpy+0x5c>
 80068a0:	441a      	add	r2, r3
 80068a2:	2100      	movs	r1, #0
 80068a4:	f803 1b01 	strb.w	r1, [r3], #1
 80068a8:	4293      	cmp	r3, r2
 80068aa:	d1fb      	bne.n	80068a4 <strncpy+0x54>
 80068ac:	bc70      	pop	{r4, r5, r6}
 80068ae:	4770      	bx	lr
 80068b0:	4603      	mov	r3, r0
 80068b2:	e7e6      	b.n	8006882 <strncpy+0x32>

080068b4 <__sprint_r.part.0>:
 80068b4:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80068b8:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 80068ba:	049c      	lsls	r4, r3, #18
 80068bc:	4692      	mov	sl, r2
 80068be:	d52d      	bpl.n	800691c <__sprint_r.part.0+0x68>
 80068c0:	6893      	ldr	r3, [r2, #8]
 80068c2:	6812      	ldr	r2, [r2, #0]
 80068c4:	b343      	cbz	r3, 8006918 <__sprint_r.part.0+0x64>
 80068c6:	460e      	mov	r6, r1
 80068c8:	4607      	mov	r7, r0
 80068ca:	f102 0908 	add.w	r9, r2, #8
 80068ce:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 80068d2:	ea5f 089b 	movs.w	r8, fp, lsr #2
 80068d6:	d015      	beq.n	8006904 <__sprint_r.part.0+0x50>
 80068d8:	3d04      	subs	r5, #4
 80068da:	2400      	movs	r4, #0
 80068dc:	e001      	b.n	80068e2 <__sprint_r.part.0+0x2e>
 80068de:	45a0      	cmp	r8, r4
 80068e0:	d00e      	beq.n	8006900 <__sprint_r.part.0+0x4c>
 80068e2:	4632      	mov	r2, r6
 80068e4:	f855 1f04 	ldr.w	r1, [r5, #4]!
 80068e8:	4638      	mov	r0, r7
 80068ea:	f000 f99d 	bl	8006c28 <_fputwc_r>
 80068ee:	1c43      	adds	r3, r0, #1
 80068f0:	f104 0401 	add.w	r4, r4, #1
 80068f4:	d1f3      	bne.n	80068de <__sprint_r.part.0+0x2a>
 80068f6:	2300      	movs	r3, #0
 80068f8:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80068fc:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006900:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006904:	f02b 0b03 	bic.w	fp, fp, #3
 8006908:	eba3 030b 	sub.w	r3, r3, fp
 800690c:	f8ca 3008 	str.w	r3, [sl, #8]
 8006910:	f109 0908 	add.w	r9, r9, #8
 8006914:	2b00      	cmp	r3, #0
 8006916:	d1da      	bne.n	80068ce <__sprint_r.part.0+0x1a>
 8006918:	2000      	movs	r0, #0
 800691a:	e7ec      	b.n	80068f6 <__sprint_r.part.0+0x42>
 800691c:	f7fe fd0c 	bl	8005338 <__sfvwrite_r>
 8006920:	2300      	movs	r3, #0
 8006922:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006926:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800692a:	bf00      	nop

0800692c <__sprint_r>:
 800692c:	6893      	ldr	r3, [r2, #8]
 800692e:	b10b      	cbz	r3, 8006934 <__sprint_r+0x8>
 8006930:	f7ff bfc0 	b.w	80068b4 <__sprint_r.part.0>
 8006934:	b410      	push	{r4}
 8006936:	4618      	mov	r0, r3
 8006938:	6053      	str	r3, [r2, #4]
 800693a:	f85d 4b04 	ldr.w	r4, [sp], #4
 800693e:	4770      	bx	lr

08006940 <_write_r>:
 8006940:	b570      	push	{r4, r5, r6, lr}
 8006942:	460d      	mov	r5, r1
 8006944:	4c08      	ldr	r4, [pc, #32]	; (8006968 <_write_r+0x28>)
 8006946:	4611      	mov	r1, r2
 8006948:	4606      	mov	r6, r0
 800694a:	461a      	mov	r2, r3
 800694c:	4628      	mov	r0, r5
 800694e:	2300      	movs	r3, #0
 8006950:	6023      	str	r3, [r4, #0]
 8006952:	f7fb fb4f 	bl	8001ff4 <_write>
 8006956:	1c43      	adds	r3, r0, #1
 8006958:	d000      	beq.n	800695c <_write_r+0x1c>
 800695a:	bd70      	pop	{r4, r5, r6, pc}
 800695c:	6823      	ldr	r3, [r4, #0]
 800695e:	2b00      	cmp	r3, #0
 8006960:	d0fb      	beq.n	800695a <_write_r+0x1a>
 8006962:	6033      	str	r3, [r6, #0]
 8006964:	bd70      	pop	{r4, r5, r6, pc}
 8006966:	bf00      	nop
 8006968:	20000b0c 	.word	0x20000b0c

0800696c <__register_exitproc>:
 800696c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006970:	4d2b      	ldr	r5, [pc, #172]	; (8006a20 <__register_exitproc+0xb4>)
 8006972:	4606      	mov	r6, r0
 8006974:	6828      	ldr	r0, [r5, #0]
 8006976:	4698      	mov	r8, r3
 8006978:	460f      	mov	r7, r1
 800697a:	4691      	mov	r9, r2
 800697c:	f7fe fe96 	bl	80056ac <__retarget_lock_acquire_recursive>
 8006980:	4b28      	ldr	r3, [pc, #160]	; (8006a24 <__register_exitproc+0xb8>)
 8006982:	681c      	ldr	r4, [r3, #0]
 8006984:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006988:	2b00      	cmp	r3, #0
 800698a:	d03d      	beq.n	8006a08 <__register_exitproc+0x9c>
 800698c:	685a      	ldr	r2, [r3, #4]
 800698e:	2a1f      	cmp	r2, #31
 8006990:	dc0d      	bgt.n	80069ae <__register_exitproc+0x42>
 8006992:	f102 0c01 	add.w	ip, r2, #1
 8006996:	bb16      	cbnz	r6, 80069de <__register_exitproc+0x72>
 8006998:	3202      	adds	r2, #2
 800699a:	f8c3 c004 	str.w	ip, [r3, #4]
 800699e:	6828      	ldr	r0, [r5, #0]
 80069a0:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 80069a4:	f7fe fe84 	bl	80056b0 <__retarget_lock_release_recursive>
 80069a8:	2000      	movs	r0, #0
 80069aa:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80069ae:	4b1e      	ldr	r3, [pc, #120]	; (8006a28 <__register_exitproc+0xbc>)
 80069b0:	b37b      	cbz	r3, 8006a12 <__register_exitproc+0xa6>
 80069b2:	f44f 70c8 	mov.w	r0, #400	; 0x190
 80069b6:	f3af 8000 	nop.w
 80069ba:	4603      	mov	r3, r0
 80069bc:	b348      	cbz	r0, 8006a12 <__register_exitproc+0xa6>
 80069be:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 80069c2:	2100      	movs	r1, #0
 80069c4:	e9c0 2100 	strd	r2, r1, [r0]
 80069c8:	f04f 0c01 	mov.w	ip, #1
 80069cc:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 80069d0:	460a      	mov	r2, r1
 80069d2:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 80069d6:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 80069da:	2e00      	cmp	r6, #0
 80069dc:	d0dc      	beq.n	8006998 <__register_exitproc+0x2c>
 80069de:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 80069e2:	2401      	movs	r4, #1
 80069e4:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 80069e8:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 80069ec:	4094      	lsls	r4, r2
 80069ee:	4320      	orrs	r0, r4
 80069f0:	2e02      	cmp	r6, #2
 80069f2:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 80069f6:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 80069fa:	d1cd      	bne.n	8006998 <__register_exitproc+0x2c>
 80069fc:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006a00:	430c      	orrs	r4, r1
 8006a02:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006a06:	e7c7      	b.n	8006998 <__register_exitproc+0x2c>
 8006a08:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006a0c:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006a10:	e7bc      	b.n	800698c <__register_exitproc+0x20>
 8006a12:	6828      	ldr	r0, [r5, #0]
 8006a14:	f7fe fe4c 	bl	80056b0 <__retarget_lock_release_recursive>
 8006a18:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006a1c:	e7c5      	b.n	80069aa <__register_exitproc+0x3e>
 8006a1e:	bf00      	nop
 8006a20:	20000448 	.word	0x20000448
 8006a24:	08006fc0 	.word	0x08006fc0
 8006a28:	00000000 	.word	0x00000000

08006a2c <_calloc_r>:
 8006a2c:	b510      	push	{r4, lr}
 8006a2e:	fb02 f101 	mul.w	r1, r2, r1
 8006a32:	f7fe feb7 	bl	80057a4 <_malloc_r>
 8006a36:	4604      	mov	r4, r0
 8006a38:	b1d8      	cbz	r0, 8006a72 <_calloc_r+0x46>
 8006a3a:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006a3e:	f022 0203 	bic.w	r2, r2, #3
 8006a42:	3a04      	subs	r2, #4
 8006a44:	2a24      	cmp	r2, #36	; 0x24
 8006a46:	d81d      	bhi.n	8006a84 <_calloc_r+0x58>
 8006a48:	2a13      	cmp	r2, #19
 8006a4a:	d914      	bls.n	8006a76 <_calloc_r+0x4a>
 8006a4c:	2300      	movs	r3, #0
 8006a4e:	2a1b      	cmp	r2, #27
 8006a50:	e9c0 3300 	strd	r3, r3, [r0]
 8006a54:	d91b      	bls.n	8006a8e <_calloc_r+0x62>
 8006a56:	2a24      	cmp	r2, #36	; 0x24
 8006a58:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006a5c:	bf0a      	itet	eq
 8006a5e:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006a62:	f100 0210 	addne.w	r2, r0, #16
 8006a66:	f100 0218 	addeq.w	r2, r0, #24
 8006a6a:	2300      	movs	r3, #0
 8006a6c:	e9c2 3300 	strd	r3, r3, [r2]
 8006a70:	6093      	str	r3, [r2, #8]
 8006a72:	4620      	mov	r0, r4
 8006a74:	bd10      	pop	{r4, pc}
 8006a76:	4602      	mov	r2, r0
 8006a78:	2300      	movs	r3, #0
 8006a7a:	e9c2 3300 	strd	r3, r3, [r2]
 8006a7e:	6093      	str	r3, [r2, #8]
 8006a80:	4620      	mov	r0, r4
 8006a82:	bd10      	pop	{r4, pc}
 8006a84:	2100      	movs	r1, #0
 8006a86:	f7fb fb6d 	bl	8002164 <memset>
 8006a8a:	4620      	mov	r0, r4
 8006a8c:	bd10      	pop	{r4, pc}
 8006a8e:	f100 0208 	add.w	r2, r0, #8
 8006a92:	e7f1      	b.n	8006a78 <_calloc_r+0x4c>

08006a94 <_close_r>:
 8006a94:	b538      	push	{r3, r4, r5, lr}
 8006a96:	4c07      	ldr	r4, [pc, #28]	; (8006ab4 <_close_r+0x20>)
 8006a98:	2300      	movs	r3, #0
 8006a9a:	4605      	mov	r5, r0
 8006a9c:	4608      	mov	r0, r1
 8006a9e:	6023      	str	r3, [r4, #0]
 8006aa0:	f7fb fad7 	bl	8002052 <_close>
 8006aa4:	1c43      	adds	r3, r0, #1
 8006aa6:	d000      	beq.n	8006aaa <_close_r+0x16>
 8006aa8:	bd38      	pop	{r3, r4, r5, pc}
 8006aaa:	6823      	ldr	r3, [r4, #0]
 8006aac:	2b00      	cmp	r3, #0
 8006aae:	d0fb      	beq.n	8006aa8 <_close_r+0x14>
 8006ab0:	602b      	str	r3, [r5, #0]
 8006ab2:	bd38      	pop	{r3, r4, r5, pc}
 8006ab4:	20000b0c 	.word	0x20000b0c

08006ab8 <_fclose_r>:
 8006ab8:	b570      	push	{r4, r5, r6, lr}
 8006aba:	2900      	cmp	r1, #0
 8006abc:	d048      	beq.n	8006b50 <_fclose_r+0x98>
 8006abe:	4605      	mov	r5, r0
 8006ac0:	460c      	mov	r4, r1
 8006ac2:	b110      	cbz	r0, 8006aca <_fclose_r+0x12>
 8006ac4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006ac6:	2b00      	cmp	r3, #0
 8006ac8:	d048      	beq.n	8006b5c <_fclose_r+0xa4>
 8006aca:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006acc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ad0:	07d0      	lsls	r0, r2, #31
 8006ad2:	d440      	bmi.n	8006b56 <_fclose_r+0x9e>
 8006ad4:	0599      	lsls	r1, r3, #22
 8006ad6:	d530      	bpl.n	8006b3a <_fclose_r+0x82>
 8006ad8:	4621      	mov	r1, r4
 8006ada:	4628      	mov	r0, r5
 8006adc:	f7fe f990 	bl	8004e00 <__sflush_r>
 8006ae0:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006ae2:	4606      	mov	r6, r0
 8006ae4:	b133      	cbz	r3, 8006af4 <_fclose_r+0x3c>
 8006ae6:	69e1      	ldr	r1, [r4, #28]
 8006ae8:	4628      	mov	r0, r5
 8006aea:	4798      	blx	r3
 8006aec:	2800      	cmp	r0, #0
 8006aee:	bfb8      	it	lt
 8006af0:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006af4:	89a3      	ldrh	r3, [r4, #12]
 8006af6:	061a      	lsls	r2, r3, #24
 8006af8:	d43c      	bmi.n	8006b74 <_fclose_r+0xbc>
 8006afa:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006afc:	b141      	cbz	r1, 8006b10 <_fclose_r+0x58>
 8006afe:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006b02:	4299      	cmp	r1, r3
 8006b04:	d002      	beq.n	8006b0c <_fclose_r+0x54>
 8006b06:	4628      	mov	r0, r5
 8006b08:	f7fe fb22 	bl	8005150 <_free_r>
 8006b0c:	2300      	movs	r3, #0
 8006b0e:	6323      	str	r3, [r4, #48]	; 0x30
 8006b10:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006b12:	b121      	cbz	r1, 8006b1e <_fclose_r+0x66>
 8006b14:	4628      	mov	r0, r5
 8006b16:	f7fe fb1b 	bl	8005150 <_free_r>
 8006b1a:	2300      	movs	r3, #0
 8006b1c:	6463      	str	r3, [r4, #68]	; 0x44
 8006b1e:	f7fe faa1 	bl	8005064 <__sfp_lock_acquire>
 8006b22:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006b24:	2200      	movs	r2, #0
 8006b26:	07db      	lsls	r3, r3, #31
 8006b28:	81a2      	strh	r2, [r4, #12]
 8006b2a:	d51f      	bpl.n	8006b6c <_fclose_r+0xb4>
 8006b2c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b2e:	f7fe fdbb 	bl	80056a8 <__retarget_lock_close_recursive>
 8006b32:	f7fe fa9d 	bl	8005070 <__sfp_lock_release>
 8006b36:	4630      	mov	r0, r6
 8006b38:	bd70      	pop	{r4, r5, r6, pc}
 8006b3a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b3c:	f7fe fdb6 	bl	80056ac <__retarget_lock_acquire_recursive>
 8006b40:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b44:	2b00      	cmp	r3, #0
 8006b46:	d1c7      	bne.n	8006ad8 <_fclose_r+0x20>
 8006b48:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006b4a:	f016 0601 	ands.w	r6, r6, #1
 8006b4e:	d016      	beq.n	8006b7e <_fclose_r+0xc6>
 8006b50:	2600      	movs	r6, #0
 8006b52:	4630      	mov	r0, r6
 8006b54:	bd70      	pop	{r4, r5, r6, pc}
 8006b56:	2b00      	cmp	r3, #0
 8006b58:	d0fa      	beq.n	8006b50 <_fclose_r+0x98>
 8006b5a:	e7bd      	b.n	8006ad8 <_fclose_r+0x20>
 8006b5c:	f7fe fa56 	bl	800500c <__sinit>
 8006b60:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006b62:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b66:	07d0      	lsls	r0, r2, #31
 8006b68:	d4f5      	bmi.n	8006b56 <_fclose_r+0x9e>
 8006b6a:	e7b3      	b.n	8006ad4 <_fclose_r+0x1c>
 8006b6c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b6e:	f7fe fd9f 	bl	80056b0 <__retarget_lock_release_recursive>
 8006b72:	e7db      	b.n	8006b2c <_fclose_r+0x74>
 8006b74:	6921      	ldr	r1, [r4, #16]
 8006b76:	4628      	mov	r0, r5
 8006b78:	f7fe faea 	bl	8005150 <_free_r>
 8006b7c:	e7bd      	b.n	8006afa <_fclose_r+0x42>
 8006b7e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b80:	f7fe fd96 	bl	80056b0 <__retarget_lock_release_recursive>
 8006b84:	4630      	mov	r0, r6
 8006b86:	bd70      	pop	{r4, r5, r6, pc}

08006b88 <__fputwc>:
 8006b88:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006b8c:	b082      	sub	sp, #8
 8006b8e:	4681      	mov	r9, r0
 8006b90:	4688      	mov	r8, r1
 8006b92:	4614      	mov	r4, r2
 8006b94:	f000 f8a0 	bl	8006cd8 <__locale_mb_cur_max>
 8006b98:	2801      	cmp	r0, #1
 8006b9a:	d103      	bne.n	8006ba4 <__fputwc+0x1c>
 8006b9c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006ba0:	2bfe      	cmp	r3, #254	; 0xfe
 8006ba2:	d933      	bls.n	8006c0c <__fputwc+0x84>
 8006ba4:	4642      	mov	r2, r8
 8006ba6:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006baa:	a901      	add	r1, sp, #4
 8006bac:	4648      	mov	r0, r9
 8006bae:	f000 f93b 	bl	8006e28 <_wcrtomb_r>
 8006bb2:	1c42      	adds	r2, r0, #1
 8006bb4:	4606      	mov	r6, r0
 8006bb6:	d02f      	beq.n	8006c18 <__fputwc+0x90>
 8006bb8:	b320      	cbz	r0, 8006c04 <__fputwc+0x7c>
 8006bba:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006bbe:	2500      	movs	r5, #0
 8006bc0:	f10d 0a04 	add.w	sl, sp, #4
 8006bc4:	e009      	b.n	8006bda <__fputwc+0x52>
 8006bc6:	6823      	ldr	r3, [r4, #0]
 8006bc8:	1c5a      	adds	r2, r3, #1
 8006bca:	6022      	str	r2, [r4, #0]
 8006bcc:	f883 c000 	strb.w	ip, [r3]
 8006bd0:	3501      	adds	r5, #1
 8006bd2:	42b5      	cmp	r5, r6
 8006bd4:	d216      	bcs.n	8006c04 <__fputwc+0x7c>
 8006bd6:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006bda:	68a3      	ldr	r3, [r4, #8]
 8006bdc:	3b01      	subs	r3, #1
 8006bde:	2b00      	cmp	r3, #0
 8006be0:	60a3      	str	r3, [r4, #8]
 8006be2:	daf0      	bge.n	8006bc6 <__fputwc+0x3e>
 8006be4:	69a7      	ldr	r7, [r4, #24]
 8006be6:	42bb      	cmp	r3, r7
 8006be8:	4661      	mov	r1, ip
 8006bea:	4622      	mov	r2, r4
 8006bec:	4648      	mov	r0, r9
 8006bee:	db02      	blt.n	8006bf6 <__fputwc+0x6e>
 8006bf0:	f1bc 0f0a 	cmp.w	ip, #10
 8006bf4:	d1e7      	bne.n	8006bc6 <__fputwc+0x3e>
 8006bf6:	f000 f8bf 	bl	8006d78 <__swbuf_r>
 8006bfa:	1c43      	adds	r3, r0, #1
 8006bfc:	d1e8      	bne.n	8006bd0 <__fputwc+0x48>
 8006bfe:	b002      	add	sp, #8
 8006c00:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c04:	4640      	mov	r0, r8
 8006c06:	b002      	add	sp, #8
 8006c08:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c0c:	fa5f fc88 	uxtb.w	ip, r8
 8006c10:	4606      	mov	r6, r0
 8006c12:	f88d c004 	strb.w	ip, [sp, #4]
 8006c16:	e7d2      	b.n	8006bbe <__fputwc+0x36>
 8006c18:	89a3      	ldrh	r3, [r4, #12]
 8006c1a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006c1e:	81a3      	strh	r3, [r4, #12]
 8006c20:	b002      	add	sp, #8
 8006c22:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c26:	bf00      	nop

08006c28 <_fputwc_r>:
 8006c28:	b530      	push	{r4, r5, lr}
 8006c2a:	4605      	mov	r5, r0
 8006c2c:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006c2e:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006c32:	07c0      	lsls	r0, r0, #31
 8006c34:	4614      	mov	r4, r2
 8006c36:	b083      	sub	sp, #12
 8006c38:	b29a      	uxth	r2, r3
 8006c3a:	d401      	bmi.n	8006c40 <_fputwc_r+0x18>
 8006c3c:	0590      	lsls	r0, r2, #22
 8006c3e:	d51c      	bpl.n	8006c7a <_fputwc_r+0x52>
 8006c40:	0490      	lsls	r0, r2, #18
 8006c42:	d406      	bmi.n	8006c52 <_fputwc_r+0x2a>
 8006c44:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c46:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006c4a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006c4e:	81a3      	strh	r3, [r4, #12]
 8006c50:	6662      	str	r2, [r4, #100]	; 0x64
 8006c52:	4628      	mov	r0, r5
 8006c54:	4622      	mov	r2, r4
 8006c56:	f7ff ff97 	bl	8006b88 <__fputwc>
 8006c5a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006c5c:	07da      	lsls	r2, r3, #31
 8006c5e:	4605      	mov	r5, r0
 8006c60:	d402      	bmi.n	8006c68 <_fputwc_r+0x40>
 8006c62:	89a3      	ldrh	r3, [r4, #12]
 8006c64:	059b      	lsls	r3, r3, #22
 8006c66:	d502      	bpl.n	8006c6e <_fputwc_r+0x46>
 8006c68:	4628      	mov	r0, r5
 8006c6a:	b003      	add	sp, #12
 8006c6c:	bd30      	pop	{r4, r5, pc}
 8006c6e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c70:	f7fe fd1e 	bl	80056b0 <__retarget_lock_release_recursive>
 8006c74:	4628      	mov	r0, r5
 8006c76:	b003      	add	sp, #12
 8006c78:	bd30      	pop	{r4, r5, pc}
 8006c7a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c7c:	9101      	str	r1, [sp, #4]
 8006c7e:	f7fe fd15 	bl	80056ac <__retarget_lock_acquire_recursive>
 8006c82:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c86:	9901      	ldr	r1, [sp, #4]
 8006c88:	b29a      	uxth	r2, r3
 8006c8a:	e7d9      	b.n	8006c40 <_fputwc_r+0x18>

08006c8c <_fstat_r>:
 8006c8c:	b538      	push	{r3, r4, r5, lr}
 8006c8e:	460b      	mov	r3, r1
 8006c90:	4c07      	ldr	r4, [pc, #28]	; (8006cb0 <_fstat_r+0x24>)
 8006c92:	4605      	mov	r5, r0
 8006c94:	4611      	mov	r1, r2
 8006c96:	4618      	mov	r0, r3
 8006c98:	2300      	movs	r3, #0
 8006c9a:	6023      	str	r3, [r4, #0]
 8006c9c:	f7fb f9dc 	bl	8002058 <_fstat>
 8006ca0:	1c43      	adds	r3, r0, #1
 8006ca2:	d000      	beq.n	8006ca6 <_fstat_r+0x1a>
 8006ca4:	bd38      	pop	{r3, r4, r5, pc}
 8006ca6:	6823      	ldr	r3, [r4, #0]
 8006ca8:	2b00      	cmp	r3, #0
 8006caa:	d0fb      	beq.n	8006ca4 <_fstat_r+0x18>
 8006cac:	602b      	str	r3, [r5, #0]
 8006cae:	bd38      	pop	{r3, r4, r5, pc}
 8006cb0:	20000b0c 	.word	0x20000b0c

08006cb4 <_isatty_r>:
 8006cb4:	b538      	push	{r3, r4, r5, lr}
 8006cb6:	4c07      	ldr	r4, [pc, #28]	; (8006cd4 <_isatty_r+0x20>)
 8006cb8:	2300      	movs	r3, #0
 8006cba:	4605      	mov	r5, r0
 8006cbc:	4608      	mov	r0, r1
 8006cbe:	6023      	str	r3, [r4, #0]
 8006cc0:	f7fb f9cf 	bl	8002062 <_isatty>
 8006cc4:	1c43      	adds	r3, r0, #1
 8006cc6:	d000      	beq.n	8006cca <_isatty_r+0x16>
 8006cc8:	bd38      	pop	{r3, r4, r5, pc}
 8006cca:	6823      	ldr	r3, [r4, #0]
 8006ccc:	2b00      	cmp	r3, #0
 8006cce:	d0fb      	beq.n	8006cc8 <_isatty_r+0x14>
 8006cd0:	602b      	str	r3, [r5, #0]
 8006cd2:	bd38      	pop	{r3, r4, r5, pc}
 8006cd4:	20000b0c 	.word	0x20000b0c

08006cd8 <__locale_mb_cur_max>:
 8006cd8:	4b04      	ldr	r3, [pc, #16]	; (8006cec <__locale_mb_cur_max+0x14>)
 8006cda:	4a05      	ldr	r2, [pc, #20]	; (8006cf0 <__locale_mb_cur_max+0x18>)
 8006cdc:	681b      	ldr	r3, [r3, #0]
 8006cde:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006ce0:	2b00      	cmp	r3, #0
 8006ce2:	bf08      	it	eq
 8006ce4:	4613      	moveq	r3, r2
 8006ce6:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006cea:	4770      	bx	lr
 8006cec:	20000018 	.word	0x20000018
 8006cf0:	2000085c 	.word	0x2000085c

08006cf4 <_lseek_r>:
 8006cf4:	b570      	push	{r4, r5, r6, lr}
 8006cf6:	460d      	mov	r5, r1
 8006cf8:	4c08      	ldr	r4, [pc, #32]	; (8006d1c <_lseek_r+0x28>)
 8006cfa:	4611      	mov	r1, r2
 8006cfc:	4606      	mov	r6, r0
 8006cfe:	461a      	mov	r2, r3
 8006d00:	4628      	mov	r0, r5
 8006d02:	2300      	movs	r3, #0
 8006d04:	6023      	str	r3, [r4, #0]
 8006d06:	f7fb f9ae 	bl	8002066 <_lseek>
 8006d0a:	1c43      	adds	r3, r0, #1
 8006d0c:	d000      	beq.n	8006d10 <_lseek_r+0x1c>
 8006d0e:	bd70      	pop	{r4, r5, r6, pc}
 8006d10:	6823      	ldr	r3, [r4, #0]
 8006d12:	2b00      	cmp	r3, #0
 8006d14:	d0fb      	beq.n	8006d0e <_lseek_r+0x1a>
 8006d16:	6033      	str	r3, [r6, #0]
 8006d18:	bd70      	pop	{r4, r5, r6, pc}
 8006d1a:	bf00      	nop
 8006d1c:	20000b0c 	.word	0x20000b0c

08006d20 <__ascii_mbtowc>:
 8006d20:	b082      	sub	sp, #8
 8006d22:	b149      	cbz	r1, 8006d38 <__ascii_mbtowc+0x18>
 8006d24:	b15a      	cbz	r2, 8006d3e <__ascii_mbtowc+0x1e>
 8006d26:	b16b      	cbz	r3, 8006d44 <__ascii_mbtowc+0x24>
 8006d28:	7813      	ldrb	r3, [r2, #0]
 8006d2a:	600b      	str	r3, [r1, #0]
 8006d2c:	7812      	ldrb	r2, [r2, #0]
 8006d2e:	1c10      	adds	r0, r2, #0
 8006d30:	bf18      	it	ne
 8006d32:	2001      	movne	r0, #1
 8006d34:	b002      	add	sp, #8
 8006d36:	4770      	bx	lr
 8006d38:	a901      	add	r1, sp, #4
 8006d3a:	2a00      	cmp	r2, #0
 8006d3c:	d1f3      	bne.n	8006d26 <__ascii_mbtowc+0x6>
 8006d3e:	4610      	mov	r0, r2
 8006d40:	b002      	add	sp, #8
 8006d42:	4770      	bx	lr
 8006d44:	f06f 0001 	mvn.w	r0, #1
 8006d48:	e7f4      	b.n	8006d34 <__ascii_mbtowc+0x14>
 8006d4a:	bf00      	nop

08006d4c <_read_r>:
 8006d4c:	b570      	push	{r4, r5, r6, lr}
 8006d4e:	460d      	mov	r5, r1
 8006d50:	4c08      	ldr	r4, [pc, #32]	; (8006d74 <_read_r+0x28>)
 8006d52:	4611      	mov	r1, r2
 8006d54:	4606      	mov	r6, r0
 8006d56:	461a      	mov	r2, r3
 8006d58:	4628      	mov	r0, r5
 8006d5a:	2300      	movs	r3, #0
 8006d5c:	6023      	str	r3, [r4, #0]
 8006d5e:	f7fb f936 	bl	8001fce <_read>
 8006d62:	1c43      	adds	r3, r0, #1
 8006d64:	d000      	beq.n	8006d68 <_read_r+0x1c>
 8006d66:	bd70      	pop	{r4, r5, r6, pc}
 8006d68:	6823      	ldr	r3, [r4, #0]
 8006d6a:	2b00      	cmp	r3, #0
 8006d6c:	d0fb      	beq.n	8006d66 <_read_r+0x1a>
 8006d6e:	6033      	str	r3, [r6, #0]
 8006d70:	bd70      	pop	{r4, r5, r6, pc}
 8006d72:	bf00      	nop
 8006d74:	20000b0c 	.word	0x20000b0c

08006d78 <__swbuf_r>:
 8006d78:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006d7a:	460d      	mov	r5, r1
 8006d7c:	4614      	mov	r4, r2
 8006d7e:	4606      	mov	r6, r0
 8006d80:	b110      	cbz	r0, 8006d88 <__swbuf_r+0x10>
 8006d82:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006d84:	2b00      	cmp	r3, #0
 8006d86:	d043      	beq.n	8006e10 <__swbuf_r+0x98>
 8006d88:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006d8c:	69a3      	ldr	r3, [r4, #24]
 8006d8e:	60a3      	str	r3, [r4, #8]
 8006d90:	b291      	uxth	r1, r2
 8006d92:	0708      	lsls	r0, r1, #28
 8006d94:	d51b      	bpl.n	8006dce <__swbuf_r+0x56>
 8006d96:	6923      	ldr	r3, [r4, #16]
 8006d98:	b1cb      	cbz	r3, 8006dce <__swbuf_r+0x56>
 8006d9a:	b2ed      	uxtb	r5, r5
 8006d9c:	0489      	lsls	r1, r1, #18
 8006d9e:	462f      	mov	r7, r5
 8006da0:	d522      	bpl.n	8006de8 <__swbuf_r+0x70>
 8006da2:	6822      	ldr	r2, [r4, #0]
 8006da4:	6961      	ldr	r1, [r4, #20]
 8006da6:	1ad3      	subs	r3, r2, r3
 8006da8:	4299      	cmp	r1, r3
 8006daa:	dd29      	ble.n	8006e00 <__swbuf_r+0x88>
 8006dac:	3301      	adds	r3, #1
 8006dae:	68a1      	ldr	r1, [r4, #8]
 8006db0:	1c50      	adds	r0, r2, #1
 8006db2:	3901      	subs	r1, #1
 8006db4:	60a1      	str	r1, [r4, #8]
 8006db6:	6020      	str	r0, [r4, #0]
 8006db8:	7015      	strb	r5, [r2, #0]
 8006dba:	6962      	ldr	r2, [r4, #20]
 8006dbc:	429a      	cmp	r2, r3
 8006dbe:	d02a      	beq.n	8006e16 <__swbuf_r+0x9e>
 8006dc0:	89a3      	ldrh	r3, [r4, #12]
 8006dc2:	07db      	lsls	r3, r3, #31
 8006dc4:	d501      	bpl.n	8006dca <__swbuf_r+0x52>
 8006dc6:	2d0a      	cmp	r5, #10
 8006dc8:	d025      	beq.n	8006e16 <__swbuf_r+0x9e>
 8006dca:	4638      	mov	r0, r7
 8006dcc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006dce:	4621      	mov	r1, r4
 8006dd0:	4630      	mov	r0, r6
 8006dd2:	f7fc fffd 	bl	8003dd0 <__swsetup_r>
 8006dd6:	bb20      	cbnz	r0, 8006e22 <__swbuf_r+0xaa>
 8006dd8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006ddc:	6923      	ldr	r3, [r4, #16]
 8006dde:	b291      	uxth	r1, r2
 8006de0:	b2ed      	uxtb	r5, r5
 8006de2:	0489      	lsls	r1, r1, #18
 8006de4:	462f      	mov	r7, r5
 8006de6:	d4dc      	bmi.n	8006da2 <__swbuf_r+0x2a>
 8006de8:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006dea:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006dee:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006df2:	81a2      	strh	r2, [r4, #12]
 8006df4:	6822      	ldr	r2, [r4, #0]
 8006df6:	6661      	str	r1, [r4, #100]	; 0x64
 8006df8:	6961      	ldr	r1, [r4, #20]
 8006dfa:	1ad3      	subs	r3, r2, r3
 8006dfc:	4299      	cmp	r1, r3
 8006dfe:	dcd5      	bgt.n	8006dac <__swbuf_r+0x34>
 8006e00:	4621      	mov	r1, r4
 8006e02:	4630      	mov	r0, r6
 8006e04:	f7fe f8a6 	bl	8004f54 <_fflush_r>
 8006e08:	b958      	cbnz	r0, 8006e22 <__swbuf_r+0xaa>
 8006e0a:	6822      	ldr	r2, [r4, #0]
 8006e0c:	2301      	movs	r3, #1
 8006e0e:	e7ce      	b.n	8006dae <__swbuf_r+0x36>
 8006e10:	f7fe f8fc 	bl	800500c <__sinit>
 8006e14:	e7b8      	b.n	8006d88 <__swbuf_r+0x10>
 8006e16:	4621      	mov	r1, r4
 8006e18:	4630      	mov	r0, r6
 8006e1a:	f7fe f89b 	bl	8004f54 <_fflush_r>
 8006e1e:	2800      	cmp	r0, #0
 8006e20:	d0d3      	beq.n	8006dca <__swbuf_r+0x52>
 8006e22:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006e26:	e7d0      	b.n	8006dca <__swbuf_r+0x52>

08006e28 <_wcrtomb_r>:
 8006e28:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006e2a:	4c11      	ldr	r4, [pc, #68]	; (8006e70 <_wcrtomb_r+0x48>)
 8006e2c:	6824      	ldr	r4, [r4, #0]
 8006e2e:	b085      	sub	sp, #20
 8006e30:	4606      	mov	r6, r0
 8006e32:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006e34:	461f      	mov	r7, r3
 8006e36:	b151      	cbz	r1, 8006e4e <_wcrtomb_r+0x26>
 8006e38:	4d0e      	ldr	r5, [pc, #56]	; (8006e74 <_wcrtomb_r+0x4c>)
 8006e3a:	2c00      	cmp	r4, #0
 8006e3c:	bf08      	it	eq
 8006e3e:	462c      	moveq	r4, r5
 8006e40:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006e44:	47a0      	blx	r4
 8006e46:	1c43      	adds	r3, r0, #1
 8006e48:	d00c      	beq.n	8006e64 <_wcrtomb_r+0x3c>
 8006e4a:	b005      	add	sp, #20
 8006e4c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006e4e:	4a09      	ldr	r2, [pc, #36]	; (8006e74 <_wcrtomb_r+0x4c>)
 8006e50:	2c00      	cmp	r4, #0
 8006e52:	bf08      	it	eq
 8006e54:	4614      	moveq	r4, r2
 8006e56:	460a      	mov	r2, r1
 8006e58:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006e5c:	a901      	add	r1, sp, #4
 8006e5e:	47a0      	blx	r4
 8006e60:	1c43      	adds	r3, r0, #1
 8006e62:	d1f2      	bne.n	8006e4a <_wcrtomb_r+0x22>
 8006e64:	2200      	movs	r2, #0
 8006e66:	238a      	movs	r3, #138	; 0x8a
 8006e68:	603a      	str	r2, [r7, #0]
 8006e6a:	6033      	str	r3, [r6, #0]
 8006e6c:	b005      	add	sp, #20
 8006e6e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006e70:	20000018 	.word	0x20000018
 8006e74:	2000085c 	.word	0x2000085c

08006e78 <__ascii_wctomb>:
 8006e78:	b121      	cbz	r1, 8006e84 <__ascii_wctomb+0xc>
 8006e7a:	2aff      	cmp	r2, #255	; 0xff
 8006e7c:	d804      	bhi.n	8006e88 <__ascii_wctomb+0x10>
 8006e7e:	700a      	strb	r2, [r1, #0]
 8006e80:	2001      	movs	r0, #1
 8006e82:	4770      	bx	lr
 8006e84:	4608      	mov	r0, r1
 8006e86:	4770      	bx	lr
 8006e88:	238a      	movs	r3, #138	; 0x8a
 8006e8a:	6003      	str	r3, [r0, #0]
 8006e8c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006e90:	4770      	bx	lr
 8006e92:	bf00      	nop

08006e94 <_init>:
 8006e94:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006e96:	bf00      	nop
 8006e98:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006e9a:	bc08      	pop	{r3}
 8006e9c:	469e      	mov	lr, r3
 8006e9e:	4770      	bx	lr

08006ea0 <_fini>:
 8006ea0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006ea2:	bf00      	nop
 8006ea4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006ea6:	bc08      	pop	{r3}
 8006ea8:	469e      	mov	lr, r3
 8006eaa:	4770      	bx	lr
 8006eac:	0000      	movs	r0, r0
	...
