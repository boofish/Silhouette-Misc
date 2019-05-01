
beebs.elf:     file format elf32-littlearm


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
 80001d8:	200009d8 	.word	0x200009d8
 80001dc:	00000000 	.word	0x00000000
 80001e0:	08007004 	.word	0x08007004

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	200009dc 	.word	0x200009dc
 80001fc:	08007004 	.word	0x08007004

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
 8001108:	f640 20b0 	movw	r0, #2736	; 0xab0
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 20b0 	movw	r0, #2736	; 0xab0
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
 80013e8:	f247 0238 	movw	r2, #28728	; 0x7038
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
 800145a:	f240 0028 	movw	r0, #40	; 0x28
 800145e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001462:	f247 0230 	movw	r2, #28720	; 0x7030
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
 8001484:	f240 0028 	movw	r0, #40	; 0x28
 8001488:	f241 0108 	movw	r1, #4104	; 0x1008
 800148c:	f247 0230 	movw	r2, #28720	; 0x7030
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
 8001842:	f640 21b4 	movw	r1, #2740	; 0xab4
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
 800188c:	f640 20b4 	movw	r0, #2740	; 0xab4
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 20b4 	movw	r0, #2740	; 0xab4
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
 80019d4:	f247 0368 	movw	r3, #28776	; 0x7068
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
 80019fc:	f247 0378 	movw	r3, #28792	; 0x7078
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

08001eb6 <levenshtein_distance>:
 8001eb6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eb8:	af03      	add	r7, sp, #12
 8001eba:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ebe:	b087      	sub	sp, #28
 8001ec0:	460c      	mov	r4, r1
 8001ec2:	f847 0c30 	str.w	r0, [r7, #-48]
 8001ec6:	f7fe fbbb 	bl	8000640 <strlen>
 8001eca:	4605      	mov	r5, r0
 8001ecc:	4620      	mov	r0, r4
 8001ece:	f847 0c2c 	str.w	r0, [r7, #-44]
 8001ed2:	f7fe fbb5 	bl	8000640 <strlen>
 8001ed6:	4604      	mov	r4, r0
 8001ed8:	1c6a      	adds	r2, r5, #1
 8001eda:	2307      	movs	r3, #7
 8001edc:	1c61      	adds	r1, r4, #1
 8001ede:	fb01 f002 	mul.w	r0, r1, r2
 8001ee2:	eb03 0080 	add.w	r0, r3, r0, lsl #2
 8001ee6:	f020 0007 	bic.w	r0, r0, #7
 8001eea:	ebad 0b00 	sub.w	fp, sp, r0
 8001eee:	46dd      	mov	sp, fp
 8001ef0:	4628      	mov	r0, r5
 8001ef2:	2d00      	cmp	r5, #0
 8001ef4:	f847 0c28 	str.w	r0, [r7, #-40]
 8001ef8:	db09      	blt.n	8001f0e <levenshtein_distance+0x58>
 8001efa:	2004      	movs	r0, #4
 8001efc:	2300      	movs	r3, #0
 8001efe:	465e      	mov	r6, fp
 8001f00:	eb00 0084 	add.w	r0, r0, r4, lsl #2
 8001f04:	6033      	str	r3, [r6, #0]
 8001f06:	3301      	adds	r3, #1
 8001f08:	4406      	add	r6, r0
 8001f0a:	429a      	cmp	r2, r3
 8001f0c:	d1fa      	bne.n	8001f04 <levenshtein_distance+0x4e>
 8001f0e:	2c00      	cmp	r4, #0
 8001f10:	f847 4c34 	str.w	r4, [r7, #-52]
 8001f14:	db52      	blt.n	8001fbc <levenshtein_distance+0x106>
 8001f16:	2000      	movs	r0, #0
 8001f18:	f84b 0020 	str.w	r0, [fp, r0, lsl #2]
 8001f1c:	3001      	adds	r0, #1
 8001f1e:	4281      	cmp	r1, r0
 8001f20:	d1fa      	bne.n	8001f18 <levenshtein_distance+0x62>
 8001f22:	f857 0c34 	ldr.w	r0, [r7, #-52]
 8001f26:	2801      	cmp	r0, #1
 8001f28:	db48      	blt.n	8001fbc <levenshtein_distance+0x106>
 8001f2a:	f857 2c34 	ldr.w	r2, [r7, #-52]
 8001f2e:	2004      	movs	r0, #4
 8001f30:	2601      	movs	r6, #1
 8001f32:	eb00 0382 	add.w	r3, r0, r2, lsl #2
 8001f36:	ea4f 0e82 	mov.w	lr, r2, lsl #2
 8001f3a:	f10b 0004 	add.w	r0, fp, #4
 8001f3e:	f847 0c24 	str.w	r0, [r7, #-36]
 8001f42:	f857 0c28 	ldr.w	r0, [r7, #-40]
 8001f46:	2801      	cmp	r0, #1
 8001f48:	db2f      	blt.n	8001faa <levenshtein_distance+0xf4>
 8001f4a:	f857 0c2c 	ldr.w	r0, [r7, #-44]
 8001f4e:	f857 9c30 	ldr.w	r9, [r7, #-48]
 8001f52:	2401      	movs	r4, #1
 8001f54:	460a      	mov	r2, r1
 8001f56:	4430      	add	r0, r6
 8001f58:	f810 5c01 	ldrb.w	r5, [r0, #-1]
 8001f5c:	e957 ac0a 	ldrd	sl, ip, [r7, #-40]	; 0x28
 8001f60:	f899 0000 	ldrb.w	r0, [r9]
 8001f64:	f85c 8c04 	ldr.w	r8, [ip, #-4]
 8001f68:	42a8      	cmp	r0, r5
 8001f6a:	d102      	bne.n	8001f72 <levenshtein_distance+0xbc>
 8001f6c:	fb04 f001 	mul.w	r0, r4, r1
 8001f70:	e00e      	b.n	8001f90 <levenshtein_distance+0xda>
 8001f72:	f85e 000c 	ldr.w	r0, [lr, ip]
 8001f76:	f108 0801 	add.w	r8, r8, #1
 8001f7a:	3001      	adds	r0, #1
 8001f7c:	4540      	cmp	r0, r8
 8001f7e:	bfb8      	it	lt
 8001f80:	4680      	movlt	r8, r0
 8001f82:	f8dc 0000 	ldr.w	r0, [ip]
 8001f86:	3001      	adds	r0, #1
 8001f88:	4540      	cmp	r0, r8
 8001f8a:	bfb8      	it	lt
 8001f8c:	4680      	movlt	r8, r0
 8001f8e:	4610      	mov	r0, r2
 8001f90:	eb0b 0080 	add.w	r0, fp, r0, lsl #2
 8001f94:	440a      	add	r2, r1
 8001f96:	449c      	add	ip, r3
 8001f98:	f109 0901 	add.w	r9, r9, #1
 8001f9c:	f1ba 0a01 	subs.w	sl, sl, #1
 8001fa0:	f104 0401 	add.w	r4, r4, #1
 8001fa4:	f840 8026 	str.w	r8, [r0, r6, lsl #2]
 8001fa8:	d1da      	bne.n	8001f60 <levenshtein_distance+0xaa>
 8001faa:	f857 0c24 	ldr.w	r0, [r7, #-36]
 8001fae:	3601      	adds	r6, #1
 8001fb0:	428e      	cmp	r6, r1
 8001fb2:	f100 0004 	add.w	r0, r0, #4
 8001fb6:	f847 0c24 	str.w	r0, [r7, #-36]
 8001fba:	d1c2      	bne.n	8001f42 <levenshtein_distance+0x8c>
 8001fbc:	f857 0c28 	ldr.w	r0, [r7, #-40]
 8001fc0:	f1a7 041c 	sub.w	r4, r7, #28
 8001fc4:	4348      	muls	r0, r1
 8001fc6:	f857 1c34 	ldr.w	r1, [r7, #-52]
 8001fca:	eb0b 0080 	add.w	r0, fp, r0, lsl #2
 8001fce:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
 8001fd2:	46a5      	mov	sp, r4
 8001fd4:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001fd8:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001fda <initialise_benchmark>:
 8001fda:	4770      	bx	lr

08001fdc <benchmark>:
 8001fdc:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001fde:	af03      	add	r7, sp, #12
 8001fe0:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001fe4:	b081      	sub	sp, #4
 8001fe6:	f240 0014 	movw	r0, #20
 8001fea:	f04f 0b00 	mov.w	fp, #0
 8001fee:	f8cd b000 	str.w	fp, [sp]
 8001ff2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ff6:	e9d0 a800 	ldrd	sl, r8, [r0]
 8001ffa:	e9d0 9502 	ldrd	r9, r5, [r0, #8]
 8001ffe:	6906      	ldr	r6, [r0, #16]
 8002000:	4654      	mov	r4, sl
 8002002:	e009      	b.n	8002018 <benchmark+0x3c>
 8002004:	f240 0114 	movw	r1, #20
 8002008:	f10b 0001 	add.w	r0, fp, #1
 800200c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002010:	eb01 018b 	add.w	r1, r1, fp, lsl #2
 8002014:	4683      	mov	fp, r0
 8002016:	684c      	ldr	r4, [r1, #4]
 8002018:	4620      	mov	r0, r4
 800201a:	4651      	mov	r1, sl
 800201c:	f7ff ff4b 	bl	8001eb6 <levenshtein_distance>
 8002020:	9900      	ldr	r1, [sp, #0]
 8002022:	4408      	add	r0, r1
 8002024:	4641      	mov	r1, r8
 8002026:	9000      	str	r0, [sp, #0]
 8002028:	4620      	mov	r0, r4
 800202a:	f7ff ff44 	bl	8001eb6 <levenshtein_distance>
 800202e:	9900      	ldr	r1, [sp, #0]
 8002030:	4408      	add	r0, r1
 8002032:	4649      	mov	r1, r9
 8002034:	9000      	str	r0, [sp, #0]
 8002036:	4620      	mov	r0, r4
 8002038:	f7ff ff3d 	bl	8001eb6 <levenshtein_distance>
 800203c:	9900      	ldr	r1, [sp, #0]
 800203e:	4408      	add	r0, r1
 8002040:	4629      	mov	r1, r5
 8002042:	9000      	str	r0, [sp, #0]
 8002044:	4620      	mov	r0, r4
 8002046:	f7ff ff36 	bl	8001eb6 <levenshtein_distance>
 800204a:	9900      	ldr	r1, [sp, #0]
 800204c:	4408      	add	r0, r1
 800204e:	4631      	mov	r1, r6
 8002050:	9000      	str	r0, [sp, #0]
 8002052:	4620      	mov	r0, r4
 8002054:	f7ff ff2f 	bl	8001eb6 <levenshtein_distance>
 8002058:	9900      	ldr	r1, [sp, #0]
 800205a:	f1bb 0f04 	cmp.w	fp, #4
 800205e:	4408      	add	r0, r1
 8002060:	9000      	str	r0, [sp, #0]
 8002062:	d1cf      	bne.n	8002004 <benchmark+0x28>
 8002064:	9800      	ldr	r0, [sp, #0]
 8002066:	b001      	add	sp, #4
 8002068:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800206c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800206e <verify_benchmark>:
 800206e:	2100      	movs	r1, #0
 8002070:	287a      	cmp	r0, #122	; 0x7a
 8002072:	bf08      	it	eq
 8002074:	2101      	moveq	r1, #1
 8002076:	4608      	mov	r0, r1
 8002078:	4770      	bx	lr

0800207a <__io_putchar>:
 800207a:	b580      	push	{r7, lr}
 800207c:	466f      	mov	r7, sp
 800207e:	b082      	sub	sp, #8
 8002080:	9001      	str	r0, [sp, #4]
 8002082:	f640 10f4 	movw	r0, #2548	; 0x9f4
 8002086:	a901      	add	r1, sp, #4
 8002088:	2201      	movs	r2, #1
 800208a:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800208e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002092:	f7ff fe22 	bl	8001cda <HAL_UART_Transmit>
 8002096:	9801      	ldr	r0, [sp, #4]
 8002098:	b002      	add	sp, #8
 800209a:	bd80      	pop	{r7, pc}

0800209c <main>:
 800209c:	b5b0      	push	{r4, r5, r7, lr}
 800209e:	af02      	add	r7, sp, #8
 80020a0:	f640 11f4 	movw	r1, #2548	; 0x9f4
 80020a4:	f643 0000 	movw	r0, #14336	; 0x3800
 80020a8:	220c      	movs	r2, #12
 80020aa:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80020ae:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80020b2:	6008      	str	r0, [r1, #0]
 80020b4:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80020b8:	6048      	str	r0, [r1, #4]
 80020ba:	2000      	movs	r0, #0
 80020bc:	e9c1 0002 	strd	r0, r0, [r1, #8]
 80020c0:	6108      	str	r0, [r1, #16]
 80020c2:	6248      	str	r0, [r1, #36]	; 0x24
 80020c4:	e9c1 0007 	strd	r0, r0, [r1, #28]
 80020c8:	e9c1 2005 	strd	r2, r0, [r1, #20]
 80020cc:	2000      	movs	r0, #0
 80020ce:	f7ff fe99 	bl	8001e04 <BSP_COM_Init>
 80020d2:	f7ff ff82 	bl	8001fda <initialise_benchmark>
 80020d6:	f247 1050 	movw	r0, #29008	; 0x7150
 80020da:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020de:	f000 f9a5 	bl	800242c <puts>
 80020e2:	f7ff f801 	bl	80010e8 <HAL_Init>
 80020e6:	f7ff f817 	bl	8001118 <HAL_GetTick>
 80020ea:	4604      	mov	r4, r0
 80020ec:	f7ff ff76 	bl	8001fdc <benchmark>
 80020f0:	4605      	mov	r5, r0
 80020f2:	f7ff f811 	bl	8001118 <HAL_GetTick>
 80020f6:	1b04      	subs	r4, r0, r4
 80020f8:	4628      	mov	r0, r5
 80020fa:	f7ff ffb8 	bl	800206e <verify_benchmark>
 80020fe:	1c41      	adds	r1, r0, #1
 8002100:	d006      	beq.n	8002110 <main+0x74>
 8002102:	2801      	cmp	r0, #1
 8002104:	d109      	bne.n	800211a <main+0x7e>
 8002106:	f247 00af 	movw	r0, #28847	; 0x70af
 800210a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800210e:	e008      	b.n	8002122 <main+0x86>
 8002110:	f247 00d3 	movw	r0, #28883	; 0x70d3
 8002114:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002118:	e003      	b.n	8002122 <main+0x86>
 800211a:	f247 1008 	movw	r0, #28936	; 0x7108
 800211e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002122:	4621      	mov	r1, r4
 8002124:	f000 f920 	bl	8002368 <printf>
 8002128:	2000      	movs	r0, #0
 800212a:	bdb0      	pop	{r4, r5, r7, pc}

0800212c <SysTick_Handler>:
 800212c:	b580      	push	{r7, lr}
 800212e:	466f      	mov	r7, sp
 8002130:	f7fe ffea 	bl	8001108 <HAL_IncTick>
 8002134:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002138:	f7ff b844 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

0800213c <_read>:
 800213c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800213e:	af03      	add	r7, sp, #12
 8002140:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002144:	4614      	mov	r4, r2
 8002146:	460d      	mov	r5, r1
 8002148:	2c01      	cmp	r4, #1
 800214a:	db06      	blt.n	800215a <_read+0x1e>
 800214c:	4626      	mov	r6, r4
 800214e:	f3af 8000 	nop.w
 8002152:	f805 0b01 	strb.w	r0, [r5], #1
 8002156:	3e01      	subs	r6, #1
 8002158:	d1f9      	bne.n	800214e <_read+0x12>
 800215a:	4620      	mov	r0, r4
 800215c:	f85d bb04 	ldr.w	fp, [sp], #4
 8002160:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002162 <_write>:
 8002162:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002164:	af03      	add	r7, sp, #12
 8002166:	f84d bd04 	str.w	fp, [sp, #-4]!
 800216a:	4614      	mov	r4, r2
 800216c:	460d      	mov	r5, r1
 800216e:	2c01      	cmp	r4, #1
 8002170:	db06      	blt.n	8002180 <_write+0x1e>
 8002172:	4626      	mov	r6, r4
 8002174:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002178:	f7ff ff7f 	bl	800207a <__io_putchar>
 800217c:	3e01      	subs	r6, #1
 800217e:	d1f9      	bne.n	8002174 <_write+0x12>
 8002180:	4620      	mov	r0, r4
 8002182:	f85d bb04 	ldr.w	fp, [sp], #4
 8002186:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002188 <_sbrk>:
 8002188:	f640 2278 	movw	r2, #2680	; 0xa78
 800218c:	4601      	mov	r1, r0
 800218e:	466b      	mov	r3, sp
 8002190:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002194:	6810      	ldr	r0, [r2, #0]
 8002196:	2800      	cmp	r0, #0
 8002198:	bf02      	ittt	eq
 800219a:	f640 3020 	movweq	r0, #2848	; 0xb20
 800219e:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80021a2:	6010      	streq	r0, [r2, #0]
 80021a4:	4401      	add	r1, r0
 80021a6:	4299      	cmp	r1, r3
 80021a8:	bf9c      	itt	ls
 80021aa:	6011      	strls	r1, [r2, #0]
 80021ac:	4770      	bxls	lr
 80021ae:	b580      	push	{r7, lr}
 80021b0:	466f      	mov	r7, sp
 80021b2:	f000 f865 	bl	8002280 <__errno>
 80021b6:	210c      	movs	r1, #12
 80021b8:	6001      	str	r1, [r0, #0]
 80021ba:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80021be:	bd80      	pop	{r7, pc}

080021c0 <_close>:
 80021c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80021c4:	4770      	bx	lr

080021c6 <_fstat>:
 80021c6:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80021ca:	6048      	str	r0, [r1, #4]
 80021cc:	2000      	movs	r0, #0
 80021ce:	4770      	bx	lr

080021d0 <_isatty>:
 80021d0:	2001      	movs	r0, #1
 80021d2:	4770      	bx	lr

080021d4 <_lseek>:
 80021d4:	2000      	movs	r0, #0
 80021d6:	4770      	bx	lr

080021d8 <SystemInit>:
 80021d8:	f64e 5088 	movw	r0, #60808	; 0xed88
 80021dc:	f04f 0c00 	mov.w	ip, #0
 80021e0:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80021e4:	6801      	ldr	r1, [r0, #0]
 80021e6:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80021ea:	6001      	str	r1, [r0, #0]
 80021ec:	f241 0100 	movw	r1, #4096	; 0x1000
 80021f0:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80021f4:	680a      	ldr	r2, [r1, #0]
 80021f6:	f042 0201 	orr.w	r2, r2, #1
 80021fa:	600a      	str	r2, [r1, #0]
 80021fc:	f8c1 c008 	str.w	ip, [r1, #8]
 8002200:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002204:	680b      	ldr	r3, [r1, #0]
 8002206:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 800220a:	401a      	ands	r2, r3
 800220c:	600a      	str	r2, [r1, #0]
 800220e:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002212:	60ca      	str	r2, [r1, #12]
 8002214:	680a      	ldr	r2, [r1, #0]
 8002216:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800221a:	600a      	str	r2, [r1, #0]
 800221c:	f8c1 c018 	str.w	ip, [r1, #24]
 8002220:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002224:	f840 1c80 	str.w	r1, [r0, #-128]
 8002228:	4770      	bx	lr
	...

0800222c <Reset_Handler>:
 800222c:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002264 <LoopForever+0x2>
 8002230:	2100      	movs	r1, #0
 8002232:	e003      	b.n	800223c <LoopCopyDataInit>

08002234 <CopyDataInit>:
 8002234:	4b0c      	ldr	r3, [pc, #48]	; (8002268 <LoopForever+0x6>)
 8002236:	585b      	ldr	r3, [r3, r1]
 8002238:	5043      	str	r3, [r0, r1]
 800223a:	3104      	adds	r1, #4

0800223c <LoopCopyDataInit>:
 800223c:	480b      	ldr	r0, [pc, #44]	; (800226c <LoopForever+0xa>)
 800223e:	4b0c      	ldr	r3, [pc, #48]	; (8002270 <LoopForever+0xe>)
 8002240:	1842      	adds	r2, r0, r1
 8002242:	429a      	cmp	r2, r3
 8002244:	d3f6      	bcc.n	8002234 <CopyDataInit>
 8002246:	4a0b      	ldr	r2, [pc, #44]	; (8002274 <LoopForever+0x12>)
 8002248:	e002      	b.n	8002250 <LoopFillZerobss>

0800224a <FillZerobss>:
 800224a:	2300      	movs	r3, #0
 800224c:	f842 3b04 	str.w	r3, [r2], #4

08002250 <LoopFillZerobss>:
 8002250:	4b09      	ldr	r3, [pc, #36]	; (8002278 <LoopForever+0x16>)
 8002252:	429a      	cmp	r2, r3
 8002254:	d3f9      	bcc.n	800224a <FillZerobss>
 8002256:	f7ff ffbf 	bl	80021d8 <SystemInit>
 800225a:	f000 f817 	bl	800228c <__libc_init_array>
 800225e:	f7ff ff1d 	bl	800209c <main>

08002262 <LoopForever>:
 8002262:	e7fe      	b.n	8002262 <LoopForever>
 8002264:	20018000 	.word	0x20018000
 8002268:	08007418 	.word	0x08007418
 800226c:	20000000 	.word	0x20000000
 8002270:	200009d8 	.word	0x200009d8
 8002274:	200009d8 	.word	0x200009d8
 8002278:	20000b20 	.word	0x20000b20

0800227c <ADC1_2_IRQHandler>:
 800227c:	e7fe      	b.n	800227c <ADC1_2_IRQHandler>
	...

08002280 <__errno>:
 8002280:	4b01      	ldr	r3, [pc, #4]	; (8002288 <__errno+0x8>)
 8002282:	6818      	ldr	r0, [r3, #0]
 8002284:	4770      	bx	lr
 8002286:	bf00      	nop
 8002288:	2000002c 	.word	0x2000002c

0800228c <__libc_init_array>:
 800228c:	b570      	push	{r4, r5, r6, lr}
 800228e:	4e0d      	ldr	r6, [pc, #52]	; (80022c4 <__libc_init_array+0x38>)
 8002290:	4d0d      	ldr	r5, [pc, #52]	; (80022c8 <__libc_init_array+0x3c>)
 8002292:	1b76      	subs	r6, r6, r5
 8002294:	10b6      	asrs	r6, r6, #2
 8002296:	d006      	beq.n	80022a6 <__libc_init_array+0x1a>
 8002298:	2400      	movs	r4, #0
 800229a:	3401      	adds	r4, #1
 800229c:	f855 3b04 	ldr.w	r3, [r5], #4
 80022a0:	4798      	blx	r3
 80022a2:	42a6      	cmp	r6, r4
 80022a4:	d1f9      	bne.n	800229a <__libc_init_array+0xe>
 80022a6:	4e09      	ldr	r6, [pc, #36]	; (80022cc <__libc_init_array+0x40>)
 80022a8:	4d09      	ldr	r5, [pc, #36]	; (80022d0 <__libc_init_array+0x44>)
 80022aa:	1b76      	subs	r6, r6, r5
 80022ac:	f004 feaa 	bl	8007004 <_init>
 80022b0:	10b6      	asrs	r6, r6, #2
 80022b2:	d006      	beq.n	80022c2 <__libc_init_array+0x36>
 80022b4:	2400      	movs	r4, #0
 80022b6:	3401      	adds	r4, #1
 80022b8:	f855 3b04 	ldr.w	r3, [r5], #4
 80022bc:	4798      	blx	r3
 80022be:	42a6      	cmp	r6, r4
 80022c0:	d1f9      	bne.n	80022b6 <__libc_init_array+0x2a>
 80022c2:	bd70      	pop	{r4, r5, r6, pc}
 80022c4:	08007408 	.word	0x08007408
 80022c8:	08007408 	.word	0x08007408
 80022cc:	08007410 	.word	0x08007410
 80022d0:	08007408 	.word	0x08007408

080022d4 <memset>:
 80022d4:	b4f0      	push	{r4, r5, r6, r7}
 80022d6:	0786      	lsls	r6, r0, #30
 80022d8:	d043      	beq.n	8002362 <memset+0x8e>
 80022da:	1e54      	subs	r4, r2, #1
 80022dc:	2a00      	cmp	r2, #0
 80022de:	d03e      	beq.n	800235e <memset+0x8a>
 80022e0:	b2ca      	uxtb	r2, r1
 80022e2:	4603      	mov	r3, r0
 80022e4:	e002      	b.n	80022ec <memset+0x18>
 80022e6:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80022ea:	d338      	bcc.n	800235e <memset+0x8a>
 80022ec:	f803 2b01 	strb.w	r2, [r3], #1
 80022f0:	079d      	lsls	r5, r3, #30
 80022f2:	d1f8      	bne.n	80022e6 <memset+0x12>
 80022f4:	2c03      	cmp	r4, #3
 80022f6:	d92b      	bls.n	8002350 <memset+0x7c>
 80022f8:	b2cd      	uxtb	r5, r1
 80022fa:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80022fe:	2c0f      	cmp	r4, #15
 8002300:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002304:	d916      	bls.n	8002334 <memset+0x60>
 8002306:	f1a4 0710 	sub.w	r7, r4, #16
 800230a:	093f      	lsrs	r7, r7, #4
 800230c:	f103 0620 	add.w	r6, r3, #32
 8002310:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002314:	f103 0210 	add.w	r2, r3, #16
 8002318:	e942 5504 	strd	r5, r5, [r2, #-16]
 800231c:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002320:	3210      	adds	r2, #16
 8002322:	42b2      	cmp	r2, r6
 8002324:	d1f8      	bne.n	8002318 <memset+0x44>
 8002326:	f004 040f 	and.w	r4, r4, #15
 800232a:	3701      	adds	r7, #1
 800232c:	2c03      	cmp	r4, #3
 800232e:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002332:	d90d      	bls.n	8002350 <memset+0x7c>
 8002334:	461e      	mov	r6, r3
 8002336:	4622      	mov	r2, r4
 8002338:	3a04      	subs	r2, #4
 800233a:	2a03      	cmp	r2, #3
 800233c:	f846 5b04 	str.w	r5, [r6], #4
 8002340:	d8fa      	bhi.n	8002338 <memset+0x64>
 8002342:	1f22      	subs	r2, r4, #4
 8002344:	f022 0203 	bic.w	r2, r2, #3
 8002348:	3204      	adds	r2, #4
 800234a:	4413      	add	r3, r2
 800234c:	f004 0403 	and.w	r4, r4, #3
 8002350:	b12c      	cbz	r4, 800235e <memset+0x8a>
 8002352:	b2c9      	uxtb	r1, r1
 8002354:	441c      	add	r4, r3
 8002356:	f803 1b01 	strb.w	r1, [r3], #1
 800235a:	429c      	cmp	r4, r3
 800235c:	d1fb      	bne.n	8002356 <memset+0x82>
 800235e:	bcf0      	pop	{r4, r5, r6, r7}
 8002360:	4770      	bx	lr
 8002362:	4614      	mov	r4, r2
 8002364:	4603      	mov	r3, r0
 8002366:	e7c5      	b.n	80022f4 <memset+0x20>

08002368 <printf>:
 8002368:	b40f      	push	{r0, r1, r2, r3}
 800236a:	b500      	push	{lr}
 800236c:	4907      	ldr	r1, [pc, #28]	; (800238c <printf+0x24>)
 800236e:	b083      	sub	sp, #12
 8002370:	ab04      	add	r3, sp, #16
 8002372:	6808      	ldr	r0, [r1, #0]
 8002374:	f853 2b04 	ldr.w	r2, [r3], #4
 8002378:	6881      	ldr	r1, [r0, #8]
 800237a:	9301      	str	r3, [sp, #4]
 800237c:	f000 f860 	bl	8002440 <_vfprintf_r>
 8002380:	b003      	add	sp, #12
 8002382:	f85d eb04 	ldr.w	lr, [sp], #4
 8002386:	b004      	add	sp, #16
 8002388:	4770      	bx	lr
 800238a:	bf00      	nop
 800238c:	2000002c 	.word	0x2000002c

08002390 <_puts_r>:
 8002390:	b570      	push	{r4, r5, r6, lr}
 8002392:	4605      	mov	r5, r0
 8002394:	b088      	sub	sp, #32
 8002396:	4608      	mov	r0, r1
 8002398:	460c      	mov	r4, r1
 800239a:	f7fe f951 	bl	8000640 <strlen>
 800239e:	4a22      	ldr	r2, [pc, #136]	; (8002428 <_puts_r+0x98>)
 80023a0:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80023a2:	9404      	str	r4, [sp, #16]
 80023a4:	2601      	movs	r6, #1
 80023a6:	1c44      	adds	r4, r0, #1
 80023a8:	a904      	add	r1, sp, #16
 80023aa:	9206      	str	r2, [sp, #24]
 80023ac:	2202      	movs	r2, #2
 80023ae:	9403      	str	r4, [sp, #12]
 80023b0:	9005      	str	r0, [sp, #20]
 80023b2:	68ac      	ldr	r4, [r5, #8]
 80023b4:	9607      	str	r6, [sp, #28]
 80023b6:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80023ba:	b31b      	cbz	r3, 8002404 <_puts_r+0x74>
 80023bc:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80023be:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80023c2:	07ce      	lsls	r6, r1, #31
 80023c4:	b29a      	uxth	r2, r3
 80023c6:	d401      	bmi.n	80023cc <_puts_r+0x3c>
 80023c8:	0590      	lsls	r0, r2, #22
 80023ca:	d525      	bpl.n	8002418 <_puts_r+0x88>
 80023cc:	0491      	lsls	r1, r2, #18
 80023ce:	d406      	bmi.n	80023de <_puts_r+0x4e>
 80023d0:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80023d2:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80023d6:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80023da:	81a3      	strh	r3, [r4, #12]
 80023dc:	6662      	str	r2, [r4, #100]	; 0x64
 80023de:	4628      	mov	r0, r5
 80023e0:	aa01      	add	r2, sp, #4
 80023e2:	4621      	mov	r1, r4
 80023e4:	f003 f860 	bl	80054a8 <__sfvwrite_r>
 80023e8:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80023ea:	2800      	cmp	r0, #0
 80023ec:	bf0c      	ite	eq
 80023ee:	250a      	moveq	r5, #10
 80023f0:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80023f4:	07da      	lsls	r2, r3, #31
 80023f6:	d402      	bmi.n	80023fe <_puts_r+0x6e>
 80023f8:	89a3      	ldrh	r3, [r4, #12]
 80023fa:	059b      	lsls	r3, r3, #22
 80023fc:	d506      	bpl.n	800240c <_puts_r+0x7c>
 80023fe:	4628      	mov	r0, r5
 8002400:	b008      	add	sp, #32
 8002402:	bd70      	pop	{r4, r5, r6, pc}
 8002404:	4628      	mov	r0, r5
 8002406:	f002 feb9 	bl	800517c <__sinit>
 800240a:	e7d7      	b.n	80023bc <_puts_r+0x2c>
 800240c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800240e:	f003 fa07 	bl	8005820 <__retarget_lock_release_recursive>
 8002412:	4628      	mov	r0, r5
 8002414:	b008      	add	sp, #32
 8002416:	bd70      	pop	{r4, r5, r6, pc}
 8002418:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800241a:	f003 f9ff 	bl	800581c <__retarget_lock_acquire_recursive>
 800241e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002422:	b29a      	uxth	r2, r3
 8002424:	e7d2      	b.n	80023cc <_puts_r+0x3c>
 8002426:	bf00      	nop
 8002428:	08007174 	.word	0x08007174

0800242c <puts>:
 800242c:	4b02      	ldr	r3, [pc, #8]	; (8002438 <puts+0xc>)
 800242e:	4601      	mov	r1, r0
 8002430:	6818      	ldr	r0, [r3, #0]
 8002432:	f7ff bfad 	b.w	8002390 <_puts_r>
 8002436:	bf00      	nop
 8002438:	2000002c 	.word	0x2000002c
 800243c:	00000000 	.word	0x00000000

08002440 <_vfprintf_r>:
 8002440:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002444:	b0d7      	sub	sp, #348	; 0x15c
 8002446:	461c      	mov	r4, r3
 8002448:	4689      	mov	r9, r1
 800244a:	4617      	mov	r7, r2
 800244c:	4605      	mov	r5, r0
 800244e:	9003      	str	r0, [sp, #12]
 8002450:	f003 f9d2 	bl	80057f8 <_localeconv_r>
 8002454:	6803      	ldr	r3, [r0, #0]
 8002456:	9316      	str	r3, [sp, #88]	; 0x58
 8002458:	4618      	mov	r0, r3
 800245a:	f7fe f8f1 	bl	8000640 <strlen>
 800245e:	9408      	str	r4, [sp, #32]
 8002460:	9015      	str	r0, [sp, #84]	; 0x54
 8002462:	b11d      	cbz	r5, 800246c <_vfprintf_r+0x2c>
 8002464:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002466:	2b00      	cmp	r3, #0
 8002468:	f000 8107 	beq.w	800267a <_vfprintf_r+0x23a>
 800246c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002470:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002474:	07c8      	lsls	r0, r1, #31
 8002476:	b293      	uxth	r3, r2
 8002478:	d402      	bmi.n	8002480 <_vfprintf_r+0x40>
 800247a:	0599      	lsls	r1, r3, #22
 800247c:	f140 811f 	bpl.w	80026be <_vfprintf_r+0x27e>
 8002480:	049e      	lsls	r6, r3, #18
 8002482:	d40a      	bmi.n	800249a <_vfprintf_r+0x5a>
 8002484:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002488:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 800248c:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002490:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002494:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002498:	b29b      	uxth	r3, r3
 800249a:	071d      	lsls	r5, r3, #28
 800249c:	f140 80b2 	bpl.w	8002604 <_vfprintf_r+0x1c4>
 80024a0:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80024a4:	2a00      	cmp	r2, #0
 80024a6:	f000 80ad 	beq.w	8002604 <_vfprintf_r+0x1c4>
 80024aa:	f003 021a 	and.w	r2, r3, #26
 80024ae:	2a0a      	cmp	r2, #10
 80024b0:	f000 80c9 	beq.w	8002646 <_vfprintf_r+0x206>
 80024b4:	2300      	movs	r3, #0
 80024b6:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80026d0 <_vfprintf_r+0x290>
 80024ba:	9310      	str	r3, [sp, #64]	; 0x40
 80024bc:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80024c0:	9317      	str	r3, [sp, #92]	; 0x5c
 80024c2:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80024c6:	931b      	str	r3, [sp, #108]	; 0x6c
 80024c8:	9318      	str	r3, [sp, #96]	; 0x60
 80024ca:	9305      	str	r3, [sp, #20]
 80024cc:	ab2d      	add	r3, sp, #180	; 0xb4
 80024ce:	932a      	str	r3, [sp, #168]	; 0xa8
 80024d0:	469b      	mov	fp, r3
 80024d2:	783b      	ldrb	r3, [r7, #0]
 80024d4:	f8cd 901c 	str.w	r9, [sp, #28]
 80024d8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80024dc:	2b00      	cmp	r3, #0
 80024de:	f000 8259 	beq.w	8002994 <_vfprintf_r+0x554>
 80024e2:	2b25      	cmp	r3, #37	; 0x25
 80024e4:	463c      	mov	r4, r7
 80024e6:	d102      	bne.n	80024ee <_vfprintf_r+0xae>
 80024e8:	e01d      	b.n	8002526 <_vfprintf_r+0xe6>
 80024ea:	2b25      	cmp	r3, #37	; 0x25
 80024ec:	d003      	beq.n	80024f6 <_vfprintf_r+0xb6>
 80024ee:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80024f2:	2b00      	cmp	r3, #0
 80024f4:	d1f9      	bne.n	80024ea <_vfprintf_r+0xaa>
 80024f6:	1be5      	subs	r5, r4, r7
 80024f8:	b18d      	cbz	r5, 800251e <_vfprintf_r+0xde>
 80024fa:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 80024fe:	3301      	adds	r3, #1
 8002500:	442a      	add	r2, r5
 8002502:	2b07      	cmp	r3, #7
 8002504:	f8cb 7000 	str.w	r7, [fp]
 8002508:	f8cb 5004 	str.w	r5, [fp, #4]
 800250c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002510:	f300 80ca 	bgt.w	80026a8 <_vfprintf_r+0x268>
 8002514:	f10b 0b08 	add.w	fp, fp, #8
 8002518:	9b05      	ldr	r3, [sp, #20]
 800251a:	442b      	add	r3, r5
 800251c:	9305      	str	r3, [sp, #20]
 800251e:	7823      	ldrb	r3, [r4, #0]
 8002520:	2b00      	cmp	r3, #0
 8002522:	f000 8237 	beq.w	8002994 <_vfprintf_r+0x554>
 8002526:	2300      	movs	r3, #0
 8002528:	7866      	ldrb	r6, [r4, #1]
 800252a:	9306      	str	r3, [sp, #24]
 800252c:	4698      	mov	r8, r3
 800252e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002532:	f104 0a01 	add.w	sl, r4, #1
 8002536:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 800253a:	252b      	movs	r5, #43	; 0x2b
 800253c:	f10a 0a01 	add.w	sl, sl, #1
 8002540:	f1a6 0320 	sub.w	r3, r6, #32
 8002544:	2b5a      	cmp	r3, #90	; 0x5a
 8002546:	f200 842a 	bhi.w	8002d9e <_vfprintf_r+0x95e>
 800254a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800254e:	03aa      	.short	0x03aa
 8002550:	04280428 	.word	0x04280428
 8002554:	0428029c 	.word	0x0428029c
 8002558:	04280428 	.word	0x04280428
 800255c:	042802a7 	.word	0x042802a7
 8002560:	02c60428 	.word	0x02c60428
 8002564:	042802d2 	.word	0x042802d2
 8002568:	02dc02d7 	.word	0x02dc02d7
 800256c:	02f60428 	.word	0x02f60428
 8002570:	026d026d 	.word	0x026d026d
 8002574:	026d026d 	.word	0x026d026d
 8002578:	026d026d 	.word	0x026d026d
 800257c:	026d026d 	.word	0x026d026d
 8002580:	0428026d 	.word	0x0428026d
 8002584:	04280428 	.word	0x04280428
 8002588:	04280428 	.word	0x04280428
 800258c:	04280428 	.word	0x04280428
 8002590:	042802fb 	.word	0x042802fb
 8002594:	03f3033c 	.word	0x03f3033c
 8002598:	02fb02fb 	.word	0x02fb02fb
 800259c:	042802fb 	.word	0x042802fb
 80025a0:	04280428 	.word	0x04280428
 80025a4:	03ee0428 	.word	0x03ee0428
 80025a8:	04280428 	.word	0x04280428
 80025ac:	0428009a 	.word	0x0428009a
 80025b0:	04280428 	.word	0x04280428
 80025b4:	04280350 	.word	0x04280350
 80025b8:	04280379 	.word	0x04280379
 80025bc:	03900428 	.word	0x03900428
 80025c0:	04280428 	.word	0x04280428
 80025c4:	04280428 	.word	0x04280428
 80025c8:	04280428 	.word	0x04280428
 80025cc:	04280428 	.word	0x04280428
 80025d0:	042802fb 	.word	0x042802fb
 80025d4:	00c5033c 	.word	0x00c5033c
 80025d8:	02fb02fb 	.word	0x02fb02fb
 80025dc:	03d102fb 	.word	0x03d102fb
 80025e0:	007000c5 	.word	0x007000c5
 80025e4:	03b50428 	.word	0x03b50428
 80025e8:	03c20428 	.word	0x03c20428
 80025ec:	03de009c 	.word	0x03de009c
 80025f0:	04280070 	.word	0x04280070
 80025f4:	00720350 	.word	0x00720350
 80025f8:	0428022c 	.word	0x0428022c
 80025fc:	027c0428 	.word	0x027c0428
 8002600:	00720428 	.word	0x00720428
 8002604:	4649      	mov	r1, r9
 8002606:	9803      	ldr	r0, [sp, #12]
 8002608:	f001 fc9a 	bl	8003f40 <__swsetup_r>
 800260c:	b1a0      	cbz	r0, 8002638 <_vfprintf_r+0x1f8>
 800260e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002612:	07d8      	lsls	r0, r3, #31
 8002614:	d404      	bmi.n	8002620 <_vfprintf_r+0x1e0>
 8002616:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800261a:	0599      	lsls	r1, r3, #22
 800261c:	f140 83b7 	bpl.w	8002d8e <_vfprintf_r+0x94e>
 8002620:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002624:	9305      	str	r3, [sp, #20]
 8002626:	9805      	ldr	r0, [sp, #20]
 8002628:	b057      	add	sp, #348	; 0x15c
 800262a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800262e:	f048 0820 	orr.w	r8, r8, #32
 8002632:	f89a 6000 	ldrb.w	r6, [sl]
 8002636:	e781      	b.n	800253c <_vfprintf_r+0xfc>
 8002638:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800263c:	f003 021a 	and.w	r2, r3, #26
 8002640:	2a0a      	cmp	r2, #10
 8002642:	f47f af37 	bne.w	80024b4 <_vfprintf_r+0x74>
 8002646:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 800264a:	2a00      	cmp	r2, #0
 800264c:	f6ff af32 	blt.w	80024b4 <_vfprintf_r+0x74>
 8002650:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002654:	07d2      	lsls	r2, r2, #31
 8002656:	d405      	bmi.n	8002664 <_vfprintf_r+0x224>
 8002658:	059b      	lsls	r3, r3, #22
 800265a:	d403      	bmi.n	8002664 <_vfprintf_r+0x224>
 800265c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002660:	f003 f8de 	bl	8005820 <__retarget_lock_release_recursive>
 8002664:	4623      	mov	r3, r4
 8002666:	463a      	mov	r2, r7
 8002668:	4649      	mov	r1, r9
 800266a:	9803      	ldr	r0, [sp, #12]
 800266c:	f001 fc26 	bl	8003ebc <__sbprintf>
 8002670:	9005      	str	r0, [sp, #20]
 8002672:	9805      	ldr	r0, [sp, #20]
 8002674:	b057      	add	sp, #348	; 0x15c
 8002676:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800267a:	9803      	ldr	r0, [sp, #12]
 800267c:	f002 fd7e 	bl	800517c <__sinit>
 8002680:	e6f4      	b.n	800246c <_vfprintf_r+0x2c>
 8002682:	f048 0810 	orr.w	r8, r8, #16
 8002686:	f018 0f20 	tst.w	r8, #32
 800268a:	f000 836c 	beq.w	8002d66 <_vfprintf_r+0x926>
 800268e:	9c08      	ldr	r4, [sp, #32]
 8002690:	3407      	adds	r4, #7
 8002692:	f024 0307 	bic.w	r3, r4, #7
 8002696:	e9d3 4500 	ldrd	r4, r5, [r3]
 800269a:	f103 0208 	add.w	r2, r3, #8
 800269e:	9208      	str	r2, [sp, #32]
 80026a0:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80026a4:	2200      	movs	r2, #0
 80026a6:	e18c      	b.n	80029c2 <_vfprintf_r+0x582>
 80026a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80026aa:	9907      	ldr	r1, [sp, #28]
 80026ac:	9803      	ldr	r0, [sp, #12]
 80026ae:	f004 f9f5 	bl	8006a9c <__sprint_r>
 80026b2:	2800      	cmp	r0, #0
 80026b4:	f041 8376 	bne.w	8003da4 <_vfprintf_r+0x1964>
 80026b8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80026bc:	e72c      	b.n	8002518 <_vfprintf_r+0xd8>
 80026be:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80026c2:	f003 f8ab 	bl	800581c <__retarget_lock_acquire_recursive>
 80026c6:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80026ca:	b293      	uxth	r3, r2
 80026cc:	e6d8      	b.n	8002480 <_vfprintf_r+0x40>
 80026ce:	bf00      	nop
	...
 80026d8:	4643      	mov	r3, r8
 80026da:	069f      	lsls	r7, r3, #26
 80026dc:	f140 832f 	bpl.w	8002d3e <_vfprintf_r+0x8fe>
 80026e0:	9c08      	ldr	r4, [sp, #32]
 80026e2:	3407      	adds	r4, #7
 80026e4:	f024 0407 	bic.w	r4, r4, #7
 80026e8:	e9d4 0100 	ldrd	r0, r1, [r4]
 80026ec:	f104 0208 	add.w	r2, r4, #8
 80026f0:	9208      	str	r2, [sp, #32]
 80026f2:	4604      	mov	r4, r0
 80026f4:	460d      	mov	r5, r1
 80026f6:	2800      	cmp	r0, #0
 80026f8:	f171 0200 	sbcs.w	r2, r1, #0
 80026fc:	da05      	bge.n	800270a <_vfprintf_r+0x2ca>
 80026fe:	222d      	movs	r2, #45	; 0x2d
 8002700:	4264      	negs	r4, r4
 8002702:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002706:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800270a:	aa56      	add	r2, sp, #344	; 0x158
 800270c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002710:	9204      	str	r2, [sp, #16]
 8002712:	f000 84b2 	beq.w	800307a <_vfprintf_r+0xc3a>
 8002716:	2201      	movs	r2, #1
 8002718:	ea54 0105 	orrs.w	r1, r4, r5
 800271c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002720:	f040 8159 	bne.w	80029d6 <_vfprintf_r+0x596>
 8002724:	f1b9 0f00 	cmp.w	r9, #0
 8002728:	f040 8619 	bne.w	800335e <_vfprintf_r+0xf1e>
 800272c:	2a00      	cmp	r2, #0
 800272e:	f040 8508 	bne.w	8003142 <_vfprintf_r+0xd02>
 8002732:	f013 0301 	ands.w	r3, r3, #1
 8002736:	af56      	add	r7, sp, #344	; 0x158
 8002738:	9309      	str	r3, [sp, #36]	; 0x24
 800273a:	d002      	beq.n	8002742 <_vfprintf_r+0x302>
 800273c:	2330      	movs	r3, #48	; 0x30
 800273e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002742:	2300      	movs	r3, #0
 8002744:	930a      	str	r3, [sp, #40]	; 0x28
 8002746:	930f      	str	r3, [sp, #60]	; 0x3c
 8002748:	9314      	str	r3, [sp, #80]	; 0x50
 800274a:	9311      	str	r3, [sp, #68]	; 0x44
 800274c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800274e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002752:	454b      	cmp	r3, r9
 8002754:	bfb8      	it	lt
 8002756:	464b      	movlt	r3, r9
 8002758:	9304      	str	r3, [sp, #16]
 800275a:	b112      	cbz	r2, 8002762 <_vfprintf_r+0x322>
 800275c:	9b04      	ldr	r3, [sp, #16]
 800275e:	3301      	adds	r3, #1
 8002760:	9304      	str	r3, [sp, #16]
 8002762:	f018 0302 	ands.w	r3, r8, #2
 8002766:	930b      	str	r3, [sp, #44]	; 0x2c
 8002768:	d002      	beq.n	8002770 <_vfprintf_r+0x330>
 800276a:	9b04      	ldr	r3, [sp, #16]
 800276c:	3302      	adds	r3, #2
 800276e:	9304      	str	r3, [sp, #16]
 8002770:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002774:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002776:	930e      	str	r3, [sp, #56]	; 0x38
 8002778:	d13f      	bne.n	80027fa <_vfprintf_r+0x3ba>
 800277a:	9b06      	ldr	r3, [sp, #24]
 800277c:	9904      	ldr	r1, [sp, #16]
 800277e:	1a5d      	subs	r5, r3, r1
 8002780:	2d00      	cmp	r5, #0
 8002782:	dd3a      	ble.n	80027fa <_vfprintf_r+0x3ba>
 8002784:	2d10      	cmp	r5, #16
 8002786:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002788:	dd29      	ble.n	80027de <_vfprintf_r+0x39e>
 800278a:	4659      	mov	r1, fp
 800278c:	4620      	mov	r0, r4
 800278e:	9620      	str	r6, [sp, #128]	; 0x80
 8002790:	2310      	movs	r3, #16
 8002792:	9c03      	ldr	r4, [sp, #12]
 8002794:	9e07      	ldr	r6, [sp, #28]
 8002796:	46bb      	mov	fp, r7
 8002798:	e004      	b.n	80027a4 <_vfprintf_r+0x364>
 800279a:	3d10      	subs	r5, #16
 800279c:	2d10      	cmp	r5, #16
 800279e:	f101 0108 	add.w	r1, r1, #8
 80027a2:	dd18      	ble.n	80027d6 <_vfprintf_r+0x396>
 80027a4:	3201      	adds	r2, #1
 80027a6:	4fba      	ldr	r7, [pc, #744]	; (8002a90 <_vfprintf_r+0x650>)
 80027a8:	3010      	adds	r0, #16
 80027aa:	2a07      	cmp	r2, #7
 80027ac:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80027b0:	e9c1 7300 	strd	r7, r3, [r1]
 80027b4:	ddf1      	ble.n	800279a <_vfprintf_r+0x35a>
 80027b6:	aa2a      	add	r2, sp, #168	; 0xa8
 80027b8:	4631      	mov	r1, r6
 80027ba:	4620      	mov	r0, r4
 80027bc:	930c      	str	r3, [sp, #48]	; 0x30
 80027be:	f004 f96d 	bl	8006a9c <__sprint_r>
 80027c2:	2800      	cmp	r0, #0
 80027c4:	f040 843d 	bne.w	8003042 <_vfprintf_r+0xc02>
 80027c8:	3d10      	subs	r5, #16
 80027ca:	2d10      	cmp	r5, #16
 80027cc:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80027d0:	a92d      	add	r1, sp, #180	; 0xb4
 80027d2:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80027d4:	dce6      	bgt.n	80027a4 <_vfprintf_r+0x364>
 80027d6:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80027d8:	465f      	mov	r7, fp
 80027da:	4604      	mov	r4, r0
 80027dc:	468b      	mov	fp, r1
 80027de:	3201      	adds	r2, #1
 80027e0:	4bab      	ldr	r3, [pc, #684]	; (8002a90 <_vfprintf_r+0x650>)
 80027e2:	442c      	add	r4, r5
 80027e4:	2a07      	cmp	r2, #7
 80027e6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80027ea:	e9cb 3500 	strd	r3, r5, [fp]
 80027ee:	f300 84ff 	bgt.w	80031f0 <_vfprintf_r+0xdb0>
 80027f2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80027f6:	f10b 0b08 	add.w	fp, fp, #8
 80027fa:	b172      	cbz	r2, 800281a <_vfprintf_r+0x3da>
 80027fc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80027fe:	3201      	adds	r2, #1
 8002800:	3401      	adds	r4, #1
 8002802:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002806:	2101      	movs	r1, #1
 8002808:	2a07      	cmp	r2, #7
 800280a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800280e:	e9cb 0100 	strd	r0, r1, [fp]
 8002812:	f300 8418 	bgt.w	8003046 <_vfprintf_r+0xc06>
 8002816:	f10b 0b08 	add.w	fp, fp, #8
 800281a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800281c:	b16b      	cbz	r3, 800283a <_vfprintf_r+0x3fa>
 800281e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002820:	3301      	adds	r3, #1
 8002822:	3402      	adds	r4, #2
 8002824:	a923      	add	r1, sp, #140	; 0x8c
 8002826:	2202      	movs	r2, #2
 8002828:	2b07      	cmp	r3, #7
 800282a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800282e:	e9cb 1200 	strd	r1, r2, [fp]
 8002832:	f300 8415 	bgt.w	8003060 <_vfprintf_r+0xc20>
 8002836:	f10b 0b08 	add.w	fp, fp, #8
 800283a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800283c:	2b80      	cmp	r3, #128	; 0x80
 800283e:	f000 8331 	beq.w	8002ea4 <_vfprintf_r+0xa64>
 8002842:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002844:	eba9 0503 	sub.w	r5, r9, r3
 8002848:	2d00      	cmp	r5, #0
 800284a:	dd37      	ble.n	80028bc <_vfprintf_r+0x47c>
 800284c:	2d10      	cmp	r5, #16
 800284e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002850:	4b90      	ldr	r3, [pc, #576]	; (8002a94 <_vfprintf_r+0x654>)
 8002852:	dd28      	ble.n	80028a6 <_vfprintf_r+0x466>
 8002854:	4659      	mov	r1, fp
 8002856:	4620      	mov	r0, r4
 8002858:	46bb      	mov	fp, r7
 800285a:	f04f 0910 	mov.w	r9, #16
 800285e:	4637      	mov	r7, r6
 8002860:	461c      	mov	r4, r3
 8002862:	9e07      	ldr	r6, [sp, #28]
 8002864:	e004      	b.n	8002870 <_vfprintf_r+0x430>
 8002866:	3d10      	subs	r5, #16
 8002868:	2d10      	cmp	r5, #16
 800286a:	f101 0108 	add.w	r1, r1, #8
 800286e:	dd15      	ble.n	800289c <_vfprintf_r+0x45c>
 8002870:	3201      	adds	r2, #1
 8002872:	3010      	adds	r0, #16
 8002874:	2a07      	cmp	r2, #7
 8002876:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800287a:	e9c1 4900 	strd	r4, r9, [r1]
 800287e:	ddf2      	ble.n	8002866 <_vfprintf_r+0x426>
 8002880:	aa2a      	add	r2, sp, #168	; 0xa8
 8002882:	4631      	mov	r1, r6
 8002884:	9803      	ldr	r0, [sp, #12]
 8002886:	f004 f909 	bl	8006a9c <__sprint_r>
 800288a:	2800      	cmp	r0, #0
 800288c:	f040 83d9 	bne.w	8003042 <_vfprintf_r+0xc02>
 8002890:	3d10      	subs	r5, #16
 8002892:	2d10      	cmp	r5, #16
 8002894:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002898:	a92d      	add	r1, sp, #180	; 0xb4
 800289a:	dce9      	bgt.n	8002870 <_vfprintf_r+0x430>
 800289c:	463e      	mov	r6, r7
 800289e:	4623      	mov	r3, r4
 80028a0:	465f      	mov	r7, fp
 80028a2:	4604      	mov	r4, r0
 80028a4:	468b      	mov	fp, r1
 80028a6:	3201      	adds	r2, #1
 80028a8:	442c      	add	r4, r5
 80028aa:	2a07      	cmp	r2, #7
 80028ac:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80028b0:	e9cb 3500 	strd	r3, r5, [fp]
 80028b4:	f300 83ef 	bgt.w	8003096 <_vfprintf_r+0xc56>
 80028b8:	f10b 0b08 	add.w	fp, fp, #8
 80028bc:	f418 7f80 	tst.w	r8, #256	; 0x100
 80028c0:	f040 8280 	bne.w	8002dc4 <_vfprintf_r+0x984>
 80028c4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80028c6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80028c8:	f8cb 7000 	str.w	r7, [fp]
 80028cc:	3301      	adds	r3, #1
 80028ce:	4414      	add	r4, r2
 80028d0:	2b07      	cmp	r3, #7
 80028d2:	942c      	str	r4, [sp, #176]	; 0xb0
 80028d4:	f8cb 2004 	str.w	r2, [fp, #4]
 80028d8:	932b      	str	r3, [sp, #172]	; 0xac
 80028da:	f300 8392 	bgt.w	8003002 <_vfprintf_r+0xbc2>
 80028de:	f10b 0b08 	add.w	fp, fp, #8
 80028e2:	f018 0f04 	tst.w	r8, #4
 80028e6:	d03b      	beq.n	8002960 <_vfprintf_r+0x520>
 80028e8:	9b06      	ldr	r3, [sp, #24]
 80028ea:	9a04      	ldr	r2, [sp, #16]
 80028ec:	1a9d      	subs	r5, r3, r2
 80028ee:	2d00      	cmp	r5, #0
 80028f0:	dd36      	ble.n	8002960 <_vfprintf_r+0x520>
 80028f2:	2d10      	cmp	r5, #16
 80028f4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80028f6:	dd21      	ble.n	800293c <_vfprintf_r+0x4fc>
 80028f8:	2610      	movs	r6, #16
 80028fa:	9f03      	ldr	r7, [sp, #12]
 80028fc:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002900:	e004      	b.n	800290c <_vfprintf_r+0x4cc>
 8002902:	3d10      	subs	r5, #16
 8002904:	2d10      	cmp	r5, #16
 8002906:	f10b 0b08 	add.w	fp, fp, #8
 800290a:	dd17      	ble.n	800293c <_vfprintf_r+0x4fc>
 800290c:	3301      	adds	r3, #1
 800290e:	4a60      	ldr	r2, [pc, #384]	; (8002a90 <_vfprintf_r+0x650>)
 8002910:	3410      	adds	r4, #16
 8002912:	2b07      	cmp	r3, #7
 8002914:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002918:	e9cb 2600 	strd	r2, r6, [fp]
 800291c:	ddf1      	ble.n	8002902 <_vfprintf_r+0x4c2>
 800291e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002920:	4641      	mov	r1, r8
 8002922:	4638      	mov	r0, r7
 8002924:	f004 f8ba 	bl	8006a9c <__sprint_r>
 8002928:	2800      	cmp	r0, #0
 800292a:	f040 856c 	bne.w	8003406 <_vfprintf_r+0xfc6>
 800292e:	3d10      	subs	r5, #16
 8002930:	2d10      	cmp	r5, #16
 8002932:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002936:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800293a:	dce7      	bgt.n	800290c <_vfprintf_r+0x4cc>
 800293c:	3301      	adds	r3, #1
 800293e:	4a54      	ldr	r2, [pc, #336]	; (8002a90 <_vfprintf_r+0x650>)
 8002940:	442c      	add	r4, r5
 8002942:	2b07      	cmp	r3, #7
 8002944:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002948:	e9cb 2500 	strd	r2, r5, [fp]
 800294c:	dd08      	ble.n	8002960 <_vfprintf_r+0x520>
 800294e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002950:	9907      	ldr	r1, [sp, #28]
 8002952:	9803      	ldr	r0, [sp, #12]
 8002954:	f004 f8a2 	bl	8006a9c <__sprint_r>
 8002958:	2800      	cmp	r0, #0
 800295a:	f040 82e9 	bne.w	8002f30 <_vfprintf_r+0xaf0>
 800295e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002960:	9904      	ldr	r1, [sp, #16]
 8002962:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002966:	428a      	cmp	r2, r1
 8002968:	bfac      	ite	ge
 800296a:	189b      	addge	r3, r3, r2
 800296c:	185b      	addlt	r3, r3, r1
 800296e:	9305      	str	r3, [sp, #20]
 8002970:	2c00      	cmp	r4, #0
 8002972:	f040 82d5 	bne.w	8002f20 <_vfprintf_r+0xae0>
 8002976:	2300      	movs	r3, #0
 8002978:	932b      	str	r3, [sp, #172]	; 0xac
 800297a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800297c:	b11b      	cbz	r3, 8002986 <_vfprintf_r+0x546>
 800297e:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002980:	9803      	ldr	r0, [sp, #12]
 8002982:	f002 fc9d 	bl	80052c0 <_free_r>
 8002986:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800298a:	4657      	mov	r7, sl
 800298c:	783b      	ldrb	r3, [r7, #0]
 800298e:	2b00      	cmp	r3, #0
 8002990:	f47f ada7 	bne.w	80024e2 <_vfprintf_r+0xa2>
 8002994:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002996:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800299a:	2b00      	cmp	r3, #0
 800299c:	f041 80e7 	bne.w	8003b6e <_vfprintf_r+0x172e>
 80029a0:	2300      	movs	r3, #0
 80029a2:	932b      	str	r3, [sp, #172]	; 0xac
 80029a4:	e2cb      	b.n	8002f3e <_vfprintf_r+0xafe>
 80029a6:	4643      	mov	r3, r8
 80029a8:	069a      	lsls	r2, r3, #26
 80029aa:	f140 814e 	bpl.w	8002c4a <_vfprintf_r+0x80a>
 80029ae:	9c08      	ldr	r4, [sp, #32]
 80029b0:	3407      	adds	r4, #7
 80029b2:	f024 0207 	bic.w	r2, r4, #7
 80029b6:	f102 0108 	add.w	r1, r2, #8
 80029ba:	e9d2 4500 	ldrd	r4, r5, [r2]
 80029be:	9108      	str	r1, [sp, #32]
 80029c0:	2201      	movs	r2, #1
 80029c2:	2100      	movs	r1, #0
 80029c4:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 80029c8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80029cc:	a956      	add	r1, sp, #344	; 0x158
 80029ce:	9104      	str	r1, [sp, #16]
 80029d0:	f47f aea2 	bne.w	8002718 <_vfprintf_r+0x2d8>
 80029d4:	4698      	mov	r8, r3
 80029d6:	2a01      	cmp	r2, #1
 80029d8:	f000 8350 	beq.w	800307c <_vfprintf_r+0xc3c>
 80029dc:	2a02      	cmp	r2, #2
 80029de:	f000 831b 	beq.w	8003018 <_vfprintf_r+0xbd8>
 80029e2:	a956      	add	r1, sp, #344	; 0x158
 80029e4:	e000      	b.n	80029e8 <_vfprintf_r+0x5a8>
 80029e6:	4639      	mov	r1, r7
 80029e8:	08e2      	lsrs	r2, r4, #3
 80029ea:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 80029ee:	08e8      	lsrs	r0, r5, #3
 80029f0:	f004 0307 	and.w	r3, r4, #7
 80029f4:	4605      	mov	r5, r0
 80029f6:	4614      	mov	r4, r2
 80029f8:	3330      	adds	r3, #48	; 0x30
 80029fa:	ea54 0205 	orrs.w	r2, r4, r5
 80029fe:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002a02:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002a06:	d1ee      	bne.n	80029e6 <_vfprintf_r+0x5a6>
 8002a08:	f018 0f01 	tst.w	r8, #1
 8002a0c:	f000 8314 	beq.w	8003038 <_vfprintf_r+0xbf8>
 8002a10:	2b30      	cmp	r3, #48	; 0x30
 8002a12:	f000 8311 	beq.w	8003038 <_vfprintf_r+0xbf8>
 8002a16:	9a04      	ldr	r2, [sp, #16]
 8002a18:	3902      	subs	r1, #2
 8002a1a:	2330      	movs	r3, #48	; 0x30
 8002a1c:	1a52      	subs	r2, r2, r1
 8002a1e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002a22:	9209      	str	r2, [sp, #36]	; 0x24
 8002a24:	460f      	mov	r7, r1
 8002a26:	e68c      	b.n	8002742 <_vfprintf_r+0x302>
 8002a28:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a2c:	2200      	movs	r2, #0
 8002a2e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002a32:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002a36:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002a3a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a3e:	2b09      	cmp	r3, #9
 8002a40:	d9f5      	bls.n	8002a2e <_vfprintf_r+0x5ee>
 8002a42:	9206      	str	r2, [sp, #24]
 8002a44:	e57c      	b.n	8002540 <_vfprintf_r+0x100>
 8002a46:	4b14      	ldr	r3, [pc, #80]	; (8002a98 <_vfprintf_r+0x658>)
 8002a48:	9317      	str	r3, [sp, #92]	; 0x5c
 8002a4a:	f018 0f20 	tst.w	r8, #32
 8002a4e:	f000 8114 	beq.w	8002c7a <_vfprintf_r+0x83a>
 8002a52:	9c08      	ldr	r4, [sp, #32]
 8002a54:	3407      	adds	r4, #7
 8002a56:	f024 0307 	bic.w	r3, r4, #7
 8002a5a:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002a5e:	f103 0208 	add.w	r2, r3, #8
 8002a62:	9208      	str	r2, [sp, #32]
 8002a64:	f018 0f01 	tst.w	r8, #1
 8002a68:	d009      	beq.n	8002a7e <_vfprintf_r+0x63e>
 8002a6a:	ea54 0305 	orrs.w	r3, r4, r5
 8002a6e:	d006      	beq.n	8002a7e <_vfprintf_r+0x63e>
 8002a70:	2330      	movs	r3, #48	; 0x30
 8002a72:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002a76:	f048 0802 	orr.w	r8, r8, #2
 8002a7a:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002a7e:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002a82:	2202      	movs	r2, #2
 8002a84:	e79d      	b.n	80029c2 <_vfprintf_r+0x582>
 8002a86:	f048 0801 	orr.w	r8, r8, #1
 8002a8a:	f89a 6000 	ldrb.w	r6, [sl]
 8002a8e:	e555      	b.n	800253c <_vfprintf_r+0xfc>
 8002a90:	080071bc 	.word	0x080071bc
 8002a94:	080071cc 	.word	0x080071cc
 8002a98:	08007188 	.word	0x08007188
 8002a9c:	9e03      	ldr	r6, [sp, #12]
 8002a9e:	4630      	mov	r0, r6
 8002aa0:	f002 feaa 	bl	80057f8 <_localeconv_r>
 8002aa4:	6843      	ldr	r3, [r0, #4]
 8002aa6:	9318      	str	r3, [sp, #96]	; 0x60
 8002aa8:	4618      	mov	r0, r3
 8002aaa:	f7fd fdc9 	bl	8000640 <strlen>
 8002aae:	901b      	str	r0, [sp, #108]	; 0x6c
 8002ab0:	4604      	mov	r4, r0
 8002ab2:	4630      	mov	r0, r6
 8002ab4:	f002 fea0 	bl	80057f8 <_localeconv_r>
 8002ab8:	6883      	ldr	r3, [r0, #8]
 8002aba:	931a      	str	r3, [sp, #104]	; 0x68
 8002abc:	2c00      	cmp	r4, #0
 8002abe:	f43f adb8 	beq.w	8002632 <_vfprintf_r+0x1f2>
 8002ac2:	f89a 6000 	ldrb.w	r6, [sl]
 8002ac6:	2b00      	cmp	r3, #0
 8002ac8:	f43f ad38 	beq.w	800253c <_vfprintf_r+0xfc>
 8002acc:	781b      	ldrb	r3, [r3, #0]
 8002ace:	2b00      	cmp	r3, #0
 8002ad0:	f43f ad34 	beq.w	800253c <_vfprintf_r+0xfc>
 8002ad4:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002ad8:	e530      	b.n	800253c <_vfprintf_r+0xfc>
 8002ada:	9b08      	ldr	r3, [sp, #32]
 8002adc:	f89a 6000 	ldrb.w	r6, [sl]
 8002ae0:	681a      	ldr	r2, [r3, #0]
 8002ae2:	9206      	str	r2, [sp, #24]
 8002ae4:	2a00      	cmp	r2, #0
 8002ae6:	f103 0304 	add.w	r3, r3, #4
 8002aea:	f2c0 8697 	blt.w	800381c <_vfprintf_r+0x13dc>
 8002aee:	9308      	str	r3, [sp, #32]
 8002af0:	e524      	b.n	800253c <_vfprintf_r+0xfc>
 8002af2:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002af6:	f89a 6000 	ldrb.w	r6, [sl]
 8002afa:	e51f      	b.n	800253c <_vfprintf_r+0xfc>
 8002afc:	f89a 6000 	ldrb.w	r6, [sl]
 8002b00:	f048 0804 	orr.w	r8, r8, #4
 8002b04:	e51a      	b.n	800253c <_vfprintf_r+0xfc>
 8002b06:	f89a 6000 	ldrb.w	r6, [sl]
 8002b0a:	2e2a      	cmp	r6, #42	; 0x2a
 8002b0c:	f10a 0201 	add.w	r2, sl, #1
 8002b10:	f001 81b0 	beq.w	8003e74 <_vfprintf_r+0x1a34>
 8002b14:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b18:	2b09      	cmp	r3, #9
 8002b1a:	4692      	mov	sl, r2
 8002b1c:	f04f 0900 	mov.w	r9, #0
 8002b20:	f63f ad0e 	bhi.w	8002540 <_vfprintf_r+0x100>
 8002b24:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002b28:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002b2c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002b30:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b34:	2b09      	cmp	r3, #9
 8002b36:	d9f5      	bls.n	8002b24 <_vfprintf_r+0x6e4>
 8002b38:	e502      	b.n	8002540 <_vfprintf_r+0x100>
 8002b3a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002b3e:	f89a 6000 	ldrb.w	r6, [sl]
 8002b42:	e4fb      	b.n	800253c <_vfprintf_r+0xfc>
 8002b44:	9c08      	ldr	r4, [sp, #32]
 8002b46:	3407      	adds	r4, #7
 8002b48:	f024 0407 	bic.w	r4, r4, #7
 8002b4c:	ed94 7b00 	vldr	d7, [r4]
 8002b50:	ec52 1b17 	vmov	r1, r2, d7
 8002b54:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002b58:	931d      	str	r3, [sp, #116]	; 0x74
 8002b5a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002b5e:	3408      	adds	r4, #8
 8002b60:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002b64:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002b68:	4bba      	ldr	r3, [pc, #744]	; (8002e54 <_vfprintf_r+0xa14>)
 8002b6a:	9408      	str	r4, [sp, #32]
 8002b6c:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002b70:	f7fe fa7c 	bl	800106c <__aeabi_dcmpun>
 8002b74:	2800      	cmp	r0, #0
 8002b76:	f040 846f 	bne.w	8003458 <_vfprintf_r+0x1018>
 8002b7a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002b7e:	4bb5      	ldr	r3, [pc, #724]	; (8002e54 <_vfprintf_r+0xa14>)
 8002b80:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002b84:	f7fe fa54 	bl	8001030 <__aeabi_dcmple>
 8002b88:	2800      	cmp	r0, #0
 8002b8a:	f040 8465 	bne.w	8003458 <_vfprintf_r+0x1018>
 8002b8e:	2200      	movs	r2, #0
 8002b90:	2300      	movs	r3, #0
 8002b92:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002b96:	f7fe fa41 	bl	800101c <__aeabi_dcmplt>
 8002b9a:	2800      	cmp	r0, #0
 8002b9c:	f040 855b 	bne.w	8003656 <_vfprintf_r+0x1216>
 8002ba0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002ba4:	4fac      	ldr	r7, [pc, #688]	; (8002e58 <_vfprintf_r+0xa18>)
 8002ba6:	4bad      	ldr	r3, [pc, #692]	; (8002e5c <_vfprintf_r+0xa1c>)
 8002ba8:	2000      	movs	r0, #0
 8002baa:	2103      	movs	r1, #3
 8002bac:	9104      	str	r1, [sp, #16]
 8002bae:	900a      	str	r0, [sp, #40]	; 0x28
 8002bb0:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002bb4:	2e47      	cmp	r6, #71	; 0x47
 8002bb6:	bfd8      	it	le
 8002bb8:	461f      	movle	r7, r3
 8002bba:	9109      	str	r1, [sp, #36]	; 0x24
 8002bbc:	4681      	mov	r9, r0
 8002bbe:	900f      	str	r0, [sp, #60]	; 0x3c
 8002bc0:	9014      	str	r0, [sp, #80]	; 0x50
 8002bc2:	9011      	str	r0, [sp, #68]	; 0x44
 8002bc4:	e5c9      	b.n	800275a <_vfprintf_r+0x31a>
 8002bc6:	9808      	ldr	r0, [sp, #32]
 8002bc8:	2300      	movs	r3, #0
 8002bca:	6801      	ldr	r1, [r0, #0]
 8002bcc:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002bd0:	461a      	mov	r2, r3
 8002bd2:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002bd6:	2301      	movs	r3, #1
 8002bd8:	1d01      	adds	r1, r0, #4
 8002bda:	9304      	str	r3, [sp, #16]
 8002bdc:	920a      	str	r2, [sp, #40]	; 0x28
 8002bde:	4691      	mov	r9, r2
 8002be0:	920f      	str	r2, [sp, #60]	; 0x3c
 8002be2:	9214      	str	r2, [sp, #80]	; 0x50
 8002be4:	9211      	str	r2, [sp, #68]	; 0x44
 8002be6:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002bea:	af3d      	add	r7, sp, #244	; 0xf4
 8002bec:	e5b9      	b.n	8002762 <_vfprintf_r+0x322>
 8002bee:	9b08      	ldr	r3, [sp, #32]
 8002bf0:	681f      	ldr	r7, [r3, #0]
 8002bf2:	2500      	movs	r5, #0
 8002bf4:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002bf8:	1d1c      	adds	r4, r3, #4
 8002bfa:	2f00      	cmp	r7, #0
 8002bfc:	f000 8639 	beq.w	8003872 <_vfprintf_r+0x1432>
 8002c00:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002c04:	f000 8711 	beq.w	8003a2a <_vfprintf_r+0x15ea>
 8002c08:	464a      	mov	r2, r9
 8002c0a:	4629      	mov	r1, r5
 8002c0c:	4638      	mov	r0, r7
 8002c0e:	f7fd fd87 	bl	8000720 <memchr>
 8002c12:	900a      	str	r0, [sp, #40]	; 0x28
 8002c14:	2800      	cmp	r0, #0
 8002c16:	f000 85e7 	beq.w	80037e8 <_vfprintf_r+0x13a8>
 8002c1a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002c1c:	1bdb      	subs	r3, r3, r7
 8002c1e:	9309      	str	r3, [sp, #36]	; 0x24
 8002c20:	46a9      	mov	r9, r5
 8002c22:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002c26:	9408      	str	r4, [sp, #32]
 8002c28:	9304      	str	r3, [sp, #16]
 8002c2a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002c2e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002c32:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002c36:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002c3a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002c3e:	e58c      	b.n	800275a <_vfprintf_r+0x31a>
 8002c40:	f048 0310 	orr.w	r3, r8, #16
 8002c44:	069a      	lsls	r2, r3, #26
 8002c46:	f53f aeb2 	bmi.w	80029ae <_vfprintf_r+0x56e>
 8002c4a:	9a08      	ldr	r2, [sp, #32]
 8002c4c:	06df      	lsls	r7, r3, #27
 8002c4e:	f102 0104 	add.w	r1, r2, #4
 8002c52:	f100 837e 	bmi.w	8003352 <_vfprintf_r+0xf12>
 8002c56:	065d      	lsls	r5, r3, #25
 8002c58:	9a08      	ldr	r2, [sp, #32]
 8002c5a:	f100 84e4 	bmi.w	8003626 <_vfprintf_r+0x11e6>
 8002c5e:	059c      	lsls	r4, r3, #22
 8002c60:	f140 8377 	bpl.w	8003352 <_vfprintf_r+0xf12>
 8002c64:	7814      	ldrb	r4, [r2, #0]
 8002c66:	9108      	str	r1, [sp, #32]
 8002c68:	2500      	movs	r5, #0
 8002c6a:	2201      	movs	r2, #1
 8002c6c:	e6a9      	b.n	80029c2 <_vfprintf_r+0x582>
 8002c6e:	4b7c      	ldr	r3, [pc, #496]	; (8002e60 <_vfprintf_r+0xa20>)
 8002c70:	9317      	str	r3, [sp, #92]	; 0x5c
 8002c72:	f018 0f20 	tst.w	r8, #32
 8002c76:	f47f aeec 	bne.w	8002a52 <_vfprintf_r+0x612>
 8002c7a:	9a08      	ldr	r2, [sp, #32]
 8002c7c:	f018 0f10 	tst.w	r8, #16
 8002c80:	f102 0304 	add.w	r3, r2, #4
 8002c84:	f040 8354 	bne.w	8003330 <_vfprintf_r+0xef0>
 8002c88:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002c8c:	9a08      	ldr	r2, [sp, #32]
 8002c8e:	f040 84d0 	bne.w	8003632 <_vfprintf_r+0x11f2>
 8002c92:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002c96:	f000 834b 	beq.w	8003330 <_vfprintf_r+0xef0>
 8002c9a:	7814      	ldrb	r4, [r2, #0]
 8002c9c:	9308      	str	r3, [sp, #32]
 8002c9e:	2500      	movs	r5, #0
 8002ca0:	e6e0      	b.n	8002a64 <_vfprintf_r+0x624>
 8002ca2:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002ca6:	f89a 6000 	ldrb.w	r6, [sl]
 8002caa:	2b00      	cmp	r3, #0
 8002cac:	f47f ac46 	bne.w	800253c <_vfprintf_r+0xfc>
 8002cb0:	2320      	movs	r3, #32
 8002cb2:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002cb6:	e441      	b.n	800253c <_vfprintf_r+0xfc>
 8002cb8:	f89a 6000 	ldrb.w	r6, [sl]
 8002cbc:	2e6c      	cmp	r6, #108	; 0x6c
 8002cbe:	bf03      	ittte	eq
 8002cc0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002cc4:	f048 0820 	orreq.w	r8, r8, #32
 8002cc8:	f10a 0a01 	addeq.w	sl, sl, #1
 8002ccc:	f048 0810 	orrne.w	r8, r8, #16
 8002cd0:	e434      	b.n	800253c <_vfprintf_r+0xfc>
 8002cd2:	9a08      	ldr	r2, [sp, #32]
 8002cd4:	f018 0f20 	tst.w	r8, #32
 8002cd8:	f852 3b04 	ldr.w	r3, [r2], #4
 8002cdc:	9208      	str	r2, [sp, #32]
 8002cde:	f000 83a1 	beq.w	8003424 <_vfprintf_r+0xfe4>
 8002ce2:	9a05      	ldr	r2, [sp, #20]
 8002ce4:	4610      	mov	r0, r2
 8002ce6:	17d1      	asrs	r1, r2, #31
 8002ce8:	e9c3 0100 	strd	r0, r1, [r3]
 8002cec:	4657      	mov	r7, sl
 8002cee:	e64d      	b.n	800298c <_vfprintf_r+0x54c>
 8002cf0:	f89a 6000 	ldrb.w	r6, [sl]
 8002cf4:	2e68      	cmp	r6, #104	; 0x68
 8002cf6:	bf03      	ittte	eq
 8002cf8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002cfc:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002d00:	f10a 0a01 	addeq.w	sl, sl, #1
 8002d04:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002d08:	e418      	b.n	800253c <_vfprintf_r+0xfc>
 8002d0a:	9908      	ldr	r1, [sp, #32]
 8002d0c:	4b55      	ldr	r3, [pc, #340]	; (8002e64 <_vfprintf_r+0xa24>)
 8002d0e:	680c      	ldr	r4, [r1, #0]
 8002d10:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d12:	f647 0230 	movw	r2, #30768	; 0x7830
 8002d16:	3104      	adds	r1, #4
 8002d18:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002d1c:	f048 0302 	orr.w	r3, r8, #2
 8002d20:	9108      	str	r1, [sp, #32]
 8002d22:	2500      	movs	r5, #0
 8002d24:	2202      	movs	r2, #2
 8002d26:	2678      	movs	r6, #120	; 0x78
 8002d28:	e64b      	b.n	80029c2 <_vfprintf_r+0x582>
 8002d2a:	f048 0808 	orr.w	r8, r8, #8
 8002d2e:	f89a 6000 	ldrb.w	r6, [sl]
 8002d32:	e403      	b.n	800253c <_vfprintf_r+0xfc>
 8002d34:	f048 0310 	orr.w	r3, r8, #16
 8002d38:	069f      	lsls	r7, r3, #26
 8002d3a:	f53f acd1 	bmi.w	80026e0 <_vfprintf_r+0x2a0>
 8002d3e:	9908      	ldr	r1, [sp, #32]
 8002d40:	06dd      	lsls	r5, r3, #27
 8002d42:	f101 0204 	add.w	r2, r1, #4
 8002d46:	f100 82fd 	bmi.w	8003344 <_vfprintf_r+0xf04>
 8002d4a:	065c      	lsls	r4, r3, #25
 8002d4c:	9908      	ldr	r1, [sp, #32]
 8002d4e:	f100 8475 	bmi.w	800363c <_vfprintf_r+0x11fc>
 8002d52:	0598      	lsls	r0, r3, #22
 8002d54:	f140 82f6 	bpl.w	8003344 <_vfprintf_r+0xf04>
 8002d58:	f991 4000 	ldrsb.w	r4, [r1]
 8002d5c:	9208      	str	r2, [sp, #32]
 8002d5e:	17e5      	asrs	r5, r4, #31
 8002d60:	4620      	mov	r0, r4
 8002d62:	4629      	mov	r1, r5
 8002d64:	e4c7      	b.n	80026f6 <_vfprintf_r+0x2b6>
 8002d66:	9a08      	ldr	r2, [sp, #32]
 8002d68:	f018 0f10 	tst.w	r8, #16
 8002d6c:	f102 0304 	add.w	r3, r2, #4
 8002d70:	f040 82e3 	bne.w	800333a <_vfprintf_r+0xefa>
 8002d74:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002d78:	9a08      	ldr	r2, [sp, #32]
 8002d7a:	f040 8467 	bne.w	800364c <_vfprintf_r+0x120c>
 8002d7e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002d82:	f000 82da 	beq.w	800333a <_vfprintf_r+0xefa>
 8002d86:	7814      	ldrb	r4, [r2, #0]
 8002d88:	9308      	str	r3, [sp, #32]
 8002d8a:	2500      	movs	r5, #0
 8002d8c:	e488      	b.n	80026a0 <_vfprintf_r+0x260>
 8002d8e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002d92:	f002 fd45 	bl	8005820 <__retarget_lock_release_recursive>
 8002d96:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002d9a:	9305      	str	r3, [sp, #20]
 8002d9c:	e443      	b.n	8002626 <_vfprintf_r+0x1e6>
 8002d9e:	2e00      	cmp	r6, #0
 8002da0:	f43f adf8 	beq.w	8002994 <_vfprintf_r+0x554>
 8002da4:	2300      	movs	r3, #0
 8002da6:	2101      	movs	r1, #1
 8002da8:	461a      	mov	r2, r3
 8002daa:	9104      	str	r1, [sp, #16]
 8002dac:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002db0:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002db4:	930a      	str	r3, [sp, #40]	; 0x28
 8002db6:	4699      	mov	r9, r3
 8002db8:	930f      	str	r3, [sp, #60]	; 0x3c
 8002dba:	9314      	str	r3, [sp, #80]	; 0x50
 8002dbc:	9311      	str	r3, [sp, #68]	; 0x44
 8002dbe:	9109      	str	r1, [sp, #36]	; 0x24
 8002dc0:	af3d      	add	r7, sp, #244	; 0xf4
 8002dc2:	e4ce      	b.n	8002762 <_vfprintf_r+0x322>
 8002dc4:	2e65      	cmp	r6, #101	; 0x65
 8002dc6:	f340 80ca 	ble.w	8002f5e <_vfprintf_r+0xb1e>
 8002dca:	2200      	movs	r2, #0
 8002dcc:	2300      	movs	r3, #0
 8002dce:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002dd2:	f7fe f919 	bl	8001008 <__aeabi_dcmpeq>
 8002dd6:	2800      	cmp	r0, #0
 8002dd8:	f000 8169 	beq.w	80030ae <_vfprintf_r+0xc6e>
 8002ddc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002dde:	4a22      	ldr	r2, [pc, #136]	; (8002e68 <_vfprintf_r+0xa28>)
 8002de0:	f8cb 2000 	str.w	r2, [fp]
 8002de4:	3301      	adds	r3, #1
 8002de6:	3401      	adds	r4, #1
 8002de8:	2201      	movs	r2, #1
 8002dea:	2b07      	cmp	r3, #7
 8002dec:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002df0:	f8cb 2004 	str.w	r2, [fp, #4]
 8002df4:	f300 8406 	bgt.w	8003604 <_vfprintf_r+0x11c4>
 8002df8:	f10b 0b08 	add.w	fp, fp, #8
 8002dfc:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002dfe:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002e00:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002e02:	4293      	cmp	r3, r2
 8002e04:	db03      	blt.n	8002e0e <_vfprintf_r+0x9ce>
 8002e06:	f018 0f01 	tst.w	r8, #1
 8002e0a:	f43f ad6a 	beq.w	80028e2 <_vfprintf_r+0x4a2>
 8002e0e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e10:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002e12:	f8cb 2000 	str.w	r2, [fp]
 8002e16:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002e18:	f8cb 2004 	str.w	r2, [fp, #4]
 8002e1c:	3301      	adds	r3, #1
 8002e1e:	4414      	add	r4, r2
 8002e20:	2b07      	cmp	r3, #7
 8002e22:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e26:	f300 8517 	bgt.w	8003858 <_vfprintf_r+0x1418>
 8002e2a:	f10b 0b08 	add.w	fp, fp, #8
 8002e2e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002e30:	1e5d      	subs	r5, r3, #1
 8002e32:	2d00      	cmp	r5, #0
 8002e34:	f77f ad55 	ble.w	80028e2 <_vfprintf_r+0x4a2>
 8002e38:	2d10      	cmp	r5, #16
 8002e3a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e3c:	4b0b      	ldr	r3, [pc, #44]	; (8002e6c <_vfprintf_r+0xa2c>)
 8002e3e:	f340 82e7 	ble.w	8003410 <_vfprintf_r+0xfd0>
 8002e42:	4619      	mov	r1, r3
 8002e44:	2610      	movs	r6, #16
 8002e46:	4623      	mov	r3, r4
 8002e48:	9f03      	ldr	r7, [sp, #12]
 8002e4a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002e4e:	460c      	mov	r4, r1
 8002e50:	e014      	b.n	8002e7c <_vfprintf_r+0xa3c>
 8002e52:	bf00      	nop
 8002e54:	7fefffff 	.word	0x7fefffff
 8002e58:	0800717c 	.word	0x0800717c
 8002e5c:	08007178 	.word	0x08007178
 8002e60:	0800719c 	.word	0x0800719c
 8002e64:	08007188 	.word	0x08007188
 8002e68:	080071b8 	.word	0x080071b8
 8002e6c:	080071cc 	.word	0x080071cc
 8002e70:	f10b 0b08 	add.w	fp, fp, #8
 8002e74:	3d10      	subs	r5, #16
 8002e76:	2d10      	cmp	r5, #16
 8002e78:	f340 82c7 	ble.w	800340a <_vfprintf_r+0xfca>
 8002e7c:	3201      	adds	r2, #1
 8002e7e:	3310      	adds	r3, #16
 8002e80:	2a07      	cmp	r2, #7
 8002e82:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002e86:	e9cb 4600 	strd	r4, r6, [fp]
 8002e8a:	ddf1      	ble.n	8002e70 <_vfprintf_r+0xa30>
 8002e8c:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e8e:	4649      	mov	r1, r9
 8002e90:	4638      	mov	r0, r7
 8002e92:	f003 fe03 	bl	8006a9c <__sprint_r>
 8002e96:	2800      	cmp	r0, #0
 8002e98:	d14c      	bne.n	8002f34 <_vfprintf_r+0xaf4>
 8002e9a:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002e9e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002ea2:	e7e7      	b.n	8002e74 <_vfprintf_r+0xa34>
 8002ea4:	9b06      	ldr	r3, [sp, #24]
 8002ea6:	9a04      	ldr	r2, [sp, #16]
 8002ea8:	1a9d      	subs	r5, r3, r2
 8002eaa:	2d00      	cmp	r5, #0
 8002eac:	f77f acc9 	ble.w	8002842 <_vfprintf_r+0x402>
 8002eb0:	2d10      	cmp	r5, #16
 8002eb2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002eb4:	4bbc      	ldr	r3, [pc, #752]	; (80031a8 <_vfprintf_r+0xd68>)
 8002eb6:	dd27      	ble.n	8002f08 <_vfprintf_r+0xac8>
 8002eb8:	4659      	mov	r1, fp
 8002eba:	4620      	mov	r0, r4
 8002ebc:	46bb      	mov	fp, r7
 8002ebe:	461c      	mov	r4, r3
 8002ec0:	4637      	mov	r7, r6
 8002ec2:	9e07      	ldr	r6, [sp, #28]
 8002ec4:	e004      	b.n	8002ed0 <_vfprintf_r+0xa90>
 8002ec6:	3d10      	subs	r5, #16
 8002ec8:	2d10      	cmp	r5, #16
 8002eca:	f101 0108 	add.w	r1, r1, #8
 8002ece:	dd16      	ble.n	8002efe <_vfprintf_r+0xabe>
 8002ed0:	3201      	adds	r2, #1
 8002ed2:	3010      	adds	r0, #16
 8002ed4:	2310      	movs	r3, #16
 8002ed6:	2a07      	cmp	r2, #7
 8002ed8:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002edc:	600c      	str	r4, [r1, #0]
 8002ede:	604b      	str	r3, [r1, #4]
 8002ee0:	ddf1      	ble.n	8002ec6 <_vfprintf_r+0xa86>
 8002ee2:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ee4:	4631      	mov	r1, r6
 8002ee6:	9803      	ldr	r0, [sp, #12]
 8002ee8:	f003 fdd8 	bl	8006a9c <__sprint_r>
 8002eec:	2800      	cmp	r0, #0
 8002eee:	f040 80a8 	bne.w	8003042 <_vfprintf_r+0xc02>
 8002ef2:	3d10      	subs	r5, #16
 8002ef4:	2d10      	cmp	r5, #16
 8002ef6:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002efa:	a92d      	add	r1, sp, #180	; 0xb4
 8002efc:	dce8      	bgt.n	8002ed0 <_vfprintf_r+0xa90>
 8002efe:	463e      	mov	r6, r7
 8002f00:	4623      	mov	r3, r4
 8002f02:	465f      	mov	r7, fp
 8002f04:	4604      	mov	r4, r0
 8002f06:	468b      	mov	fp, r1
 8002f08:	3201      	adds	r2, #1
 8002f0a:	442c      	add	r4, r5
 8002f0c:	2a07      	cmp	r2, #7
 8002f0e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002f12:	e9cb 3500 	strd	r3, r5, [fp]
 8002f16:	f300 8292 	bgt.w	800343e <_vfprintf_r+0xffe>
 8002f1a:	f10b 0b08 	add.w	fp, fp, #8
 8002f1e:	e490      	b.n	8002842 <_vfprintf_r+0x402>
 8002f20:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f22:	9907      	ldr	r1, [sp, #28]
 8002f24:	9803      	ldr	r0, [sp, #12]
 8002f26:	f003 fdb9 	bl	8006a9c <__sprint_r>
 8002f2a:	2800      	cmp	r0, #0
 8002f2c:	f43f ad23 	beq.w	8002976 <_vfprintf_r+0x536>
 8002f30:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002f34:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002f36:	b111      	cbz	r1, 8002f3e <_vfprintf_r+0xafe>
 8002f38:	9803      	ldr	r0, [sp, #12]
 8002f3a:	f002 f9c1 	bl	80052c0 <_free_r>
 8002f3e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002f42:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002f46:	07d0      	lsls	r0, r2, #31
 8002f48:	d402      	bmi.n	8002f50 <_vfprintf_r+0xb10>
 8002f4a:	0599      	lsls	r1, r3, #22
 8002f4c:	f140 81d0 	bpl.w	80032f0 <_vfprintf_r+0xeb0>
 8002f50:	065a      	lsls	r2, r3, #25
 8002f52:	f53f ab65 	bmi.w	8002620 <_vfprintf_r+0x1e0>
 8002f56:	9805      	ldr	r0, [sp, #20]
 8002f58:	b057      	add	sp, #348	; 0x15c
 8002f5a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002f5e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002f60:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f62:	2a01      	cmp	r2, #1
 8002f64:	f104 0401 	add.w	r4, r4, #1
 8002f68:	f103 0501 	add.w	r5, r3, #1
 8002f6c:	f10b 0608 	add.w	r6, fp, #8
 8002f70:	f340 811c 	ble.w	80031ac <_vfprintf_r+0xd6c>
 8002f74:	2301      	movs	r3, #1
 8002f76:	2d07      	cmp	r5, #7
 8002f78:	f8cb 7000 	str.w	r7, [fp]
 8002f7c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002f80:	f8cb 3004 	str.w	r3, [fp, #4]
 8002f84:	f300 81bb 	bgt.w	80032fe <_vfprintf_r+0xebe>
 8002f88:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002f8a:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002f8c:	1c69      	adds	r1, r5, #1
 8002f8e:	441c      	add	r4, r3
 8002f90:	2907      	cmp	r1, #7
 8002f92:	910b      	str	r1, [sp, #44]	; 0x2c
 8002f94:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8002f98:	e9c6 2300 	strd	r2, r3, [r6]
 8002f9c:	f300 81bb 	bgt.w	8003316 <_vfprintf_r+0xed6>
 8002fa0:	3608      	adds	r6, #8
 8002fa2:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002fa4:	1c53      	adds	r3, r2, #1
 8002fa6:	461d      	mov	r5, r3
 8002fa8:	9509      	str	r5, [sp, #36]	; 0x24
 8002faa:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8002fac:	930e      	str	r3, [sp, #56]	; 0x38
 8002fae:	2200      	movs	r2, #0
 8002fb0:	2300      	movs	r3, #0
 8002fb2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002fb6:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8002fba:	f106 0b08 	add.w	fp, r6, #8
 8002fbe:	f7fe f823 	bl	8001008 <__aeabi_dcmpeq>
 8002fc2:	2800      	cmp	r0, #0
 8002fc4:	f040 80c2 	bne.w	800314c <_vfprintf_r+0xd0c>
 8002fc8:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002fca:	f8c6 9004 	str.w	r9, [r6, #4]
 8002fce:	3701      	adds	r7, #1
 8002fd0:	444c      	add	r4, r9
 8002fd2:	2d07      	cmp	r5, #7
 8002fd4:	6037      	str	r7, [r6, #0]
 8002fd6:	942c      	str	r4, [sp, #176]	; 0xb0
 8002fd8:	952b      	str	r5, [sp, #172]	; 0xac
 8002fda:	f300 80f9 	bgt.w	80031d0 <_vfprintf_r+0xd90>
 8002fde:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002fe0:	f106 0310 	add.w	r3, r6, #16
 8002fe4:	3202      	adds	r2, #2
 8002fe6:	465e      	mov	r6, fp
 8002fe8:	9209      	str	r2, [sp, #36]	; 0x24
 8002fea:	469b      	mov	fp, r3
 8002fec:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8002fee:	6072      	str	r2, [r6, #4]
 8002ff0:	4414      	add	r4, r2
 8002ff2:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002ff4:	942c      	str	r4, [sp, #176]	; 0xb0
 8002ff6:	ab26      	add	r3, sp, #152	; 0x98
 8002ff8:	2a07      	cmp	r2, #7
 8002ffa:	922b      	str	r2, [sp, #172]	; 0xac
 8002ffc:	6033      	str	r3, [r6, #0]
 8002ffe:	f77f ac70 	ble.w	80028e2 <_vfprintf_r+0x4a2>
 8003002:	aa2a      	add	r2, sp, #168	; 0xa8
 8003004:	9907      	ldr	r1, [sp, #28]
 8003006:	9803      	ldr	r0, [sp, #12]
 8003008:	f003 fd48 	bl	8006a9c <__sprint_r>
 800300c:	2800      	cmp	r0, #0
 800300e:	d18f      	bne.n	8002f30 <_vfprintf_r+0xaf0>
 8003010:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003012:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003016:	e464      	b.n	80028e2 <_vfprintf_r+0x4a2>
 8003018:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800301a:	af56      	add	r7, sp, #344	; 0x158
 800301c:	0923      	lsrs	r3, r4, #4
 800301e:	f004 010f 	and.w	r1, r4, #15
 8003022:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8003026:	092a      	lsrs	r2, r5, #4
 8003028:	461c      	mov	r4, r3
 800302a:	4615      	mov	r5, r2
 800302c:	5c43      	ldrb	r3, [r0, r1]
 800302e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003032:	ea54 0305 	orrs.w	r3, r4, r5
 8003036:	d1f1      	bne.n	800301c <_vfprintf_r+0xbdc>
 8003038:	9b04      	ldr	r3, [sp, #16]
 800303a:	1bdb      	subs	r3, r3, r7
 800303c:	9309      	str	r3, [sp, #36]	; 0x24
 800303e:	f7ff bb80 	b.w	8002742 <_vfprintf_r+0x302>
 8003042:	46b1      	mov	r9, r6
 8003044:	e776      	b.n	8002f34 <_vfprintf_r+0xaf4>
 8003046:	aa2a      	add	r2, sp, #168	; 0xa8
 8003048:	9907      	ldr	r1, [sp, #28]
 800304a:	9803      	ldr	r0, [sp, #12]
 800304c:	f003 fd26 	bl	8006a9c <__sprint_r>
 8003050:	2800      	cmp	r0, #0
 8003052:	f47f af6d 	bne.w	8002f30 <_vfprintf_r+0xaf0>
 8003056:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003058:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800305c:	f7ff bbdd 	b.w	800281a <_vfprintf_r+0x3da>
 8003060:	aa2a      	add	r2, sp, #168	; 0xa8
 8003062:	9907      	ldr	r1, [sp, #28]
 8003064:	9803      	ldr	r0, [sp, #12]
 8003066:	f003 fd19 	bl	8006a9c <__sprint_r>
 800306a:	2800      	cmp	r0, #0
 800306c:	f47f af60 	bne.w	8002f30 <_vfprintf_r+0xaf0>
 8003070:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003072:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003076:	f7ff bbe0 	b.w	800283a <_vfprintf_r+0x3fa>
 800307a:	4698      	mov	r8, r3
 800307c:	2d00      	cmp	r5, #0
 800307e:	bf08      	it	eq
 8003080:	2c0a      	cmpeq	r4, #10
 8003082:	f080 8170 	bcs.w	8003366 <_vfprintf_r+0xf26>
 8003086:	af56      	add	r7, sp, #344	; 0x158
 8003088:	3430      	adds	r4, #48	; 0x30
 800308a:	2301      	movs	r3, #1
 800308c:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003090:	9309      	str	r3, [sp, #36]	; 0x24
 8003092:	f7ff bb56 	b.w	8002742 <_vfprintf_r+0x302>
 8003096:	aa2a      	add	r2, sp, #168	; 0xa8
 8003098:	9907      	ldr	r1, [sp, #28]
 800309a:	9803      	ldr	r0, [sp, #12]
 800309c:	f003 fcfe 	bl	8006a9c <__sprint_r>
 80030a0:	2800      	cmp	r0, #0
 80030a2:	f47f af45 	bne.w	8002f30 <_vfprintf_r+0xaf0>
 80030a6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030a8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030ac:	e406      	b.n	80028bc <_vfprintf_r+0x47c>
 80030ae:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80030b0:	2b00      	cmp	r3, #0
 80030b2:	f340 8273 	ble.w	800359c <_vfprintf_r+0x115c>
 80030b6:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80030ba:	4293      	cmp	r3, r2
 80030bc:	bfa8      	it	ge
 80030be:	4613      	movge	r3, r2
 80030c0:	2b00      	cmp	r3, #0
 80030c2:	461d      	mov	r5, r3
 80030c4:	dd0d      	ble.n	80030e2 <_vfprintf_r+0xca2>
 80030c6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80030c8:	f8cb 7000 	str.w	r7, [fp]
 80030cc:	3301      	adds	r3, #1
 80030ce:	442c      	add	r4, r5
 80030d0:	2b07      	cmp	r3, #7
 80030d2:	942c      	str	r4, [sp, #176]	; 0xb0
 80030d4:	f8cb 5004 	str.w	r5, [fp, #4]
 80030d8:	932b      	str	r3, [sp, #172]	; 0xac
 80030da:	f300 82c1 	bgt.w	8003660 <_vfprintf_r+0x1220>
 80030de:	f10b 0b08 	add.w	fp, fp, #8
 80030e2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80030e4:	2d00      	cmp	r5, #0
 80030e6:	bfa8      	it	ge
 80030e8:	1b5b      	subge	r3, r3, r5
 80030ea:	2b00      	cmp	r3, #0
 80030ec:	461d      	mov	r5, r3
 80030ee:	f340 8099 	ble.w	8003224 <_vfprintf_r+0xde4>
 80030f2:	2d10      	cmp	r5, #16
 80030f4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80030f6:	4b2c      	ldr	r3, [pc, #176]	; (80031a8 <_vfprintf_r+0xd68>)
 80030f8:	f340 83db 	ble.w	80038b2 <_vfprintf_r+0x1472>
 80030fc:	4618      	mov	r0, r3
 80030fe:	4621      	mov	r1, r4
 8003100:	465b      	mov	r3, fp
 8003102:	2610      	movs	r6, #16
 8003104:	46bb      	mov	fp, r7
 8003106:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800310a:	9c07      	ldr	r4, [sp, #28]
 800310c:	4607      	mov	r7, r0
 800310e:	e004      	b.n	800311a <_vfprintf_r+0xcda>
 8003110:	3308      	adds	r3, #8
 8003112:	3d10      	subs	r5, #16
 8003114:	2d10      	cmp	r5, #16
 8003116:	f340 83c7 	ble.w	80038a8 <_vfprintf_r+0x1468>
 800311a:	3201      	adds	r2, #1
 800311c:	3110      	adds	r1, #16
 800311e:	2a07      	cmp	r2, #7
 8003120:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003124:	e9c3 7600 	strd	r7, r6, [r3]
 8003128:	ddf2      	ble.n	8003110 <_vfprintf_r+0xcd0>
 800312a:	aa2a      	add	r2, sp, #168	; 0xa8
 800312c:	4621      	mov	r1, r4
 800312e:	4648      	mov	r0, r9
 8003130:	f003 fcb4 	bl	8006a9c <__sprint_r>
 8003134:	2800      	cmp	r0, #0
 8003136:	f040 84a5 	bne.w	8003a84 <_vfprintf_r+0x1644>
 800313a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 800313e:	ab2d      	add	r3, sp, #180	; 0xb4
 8003140:	e7e7      	b.n	8003112 <_vfprintf_r+0xcd2>
 8003142:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003146:	af56      	add	r7, sp, #344	; 0x158
 8003148:	f7ff bafb 	b.w	8002742 <_vfprintf_r+0x302>
 800314c:	f1b9 0f00 	cmp.w	r9, #0
 8003150:	f77f af4c 	ble.w	8002fec <_vfprintf_r+0xbac>
 8003154:	f1b9 0f10 	cmp.w	r9, #16
 8003158:	4b13      	ldr	r3, [pc, #76]	; (80031a8 <_vfprintf_r+0xd68>)
 800315a:	f340 8659 	ble.w	8003e10 <_vfprintf_r+0x19d0>
 800315e:	4619      	mov	r1, r3
 8003160:	4622      	mov	r2, r4
 8003162:	4633      	mov	r3, r6
 8003164:	2710      	movs	r7, #16
 8003166:	f8dd b00c 	ldr.w	fp, [sp, #12]
 800316a:	9c07      	ldr	r4, [sp, #28]
 800316c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800316e:	460e      	mov	r6, r1
 8003170:	e007      	b.n	8003182 <_vfprintf_r+0xd42>
 8003172:	3308      	adds	r3, #8
 8003174:	f1a9 0910 	sub.w	r9, r9, #16
 8003178:	f1b9 0f10 	cmp.w	r9, #16
 800317c:	f340 8353 	ble.w	8003826 <_vfprintf_r+0x13e6>
 8003180:	3501      	adds	r5, #1
 8003182:	3210      	adds	r2, #16
 8003184:	2d07      	cmp	r5, #7
 8003186:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 800318a:	e9c3 6700 	strd	r6, r7, [r3]
 800318e:	ddf0      	ble.n	8003172 <_vfprintf_r+0xd32>
 8003190:	aa2a      	add	r2, sp, #168	; 0xa8
 8003192:	4621      	mov	r1, r4
 8003194:	4658      	mov	r0, fp
 8003196:	f003 fc81 	bl	8006a9c <__sprint_r>
 800319a:	2800      	cmp	r0, #0
 800319c:	f040 8472 	bne.w	8003a84 <_vfprintf_r+0x1644>
 80031a0:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80031a4:	ab2d      	add	r3, sp, #180	; 0xb4
 80031a6:	e7e5      	b.n	8003174 <_vfprintf_r+0xd34>
 80031a8:	080071cc 	.word	0x080071cc
 80031ac:	f018 0f01 	tst.w	r8, #1
 80031b0:	f47f aee0 	bne.w	8002f74 <_vfprintf_r+0xb34>
 80031b4:	2201      	movs	r2, #1
 80031b6:	2d07      	cmp	r5, #7
 80031b8:	f8cb 7000 	str.w	r7, [fp]
 80031bc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80031c0:	f8cb 2004 	str.w	r2, [fp, #4]
 80031c4:	dc04      	bgt.n	80031d0 <_vfprintf_r+0xd90>
 80031c6:	3302      	adds	r3, #2
 80031c8:	9309      	str	r3, [sp, #36]	; 0x24
 80031ca:	f10b 0b10 	add.w	fp, fp, #16
 80031ce:	e70d      	b.n	8002fec <_vfprintf_r+0xbac>
 80031d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80031d2:	9907      	ldr	r1, [sp, #28]
 80031d4:	9803      	ldr	r0, [sp, #12]
 80031d6:	f003 fc61 	bl	8006a9c <__sprint_r>
 80031da:	2800      	cmp	r0, #0
 80031dc:	f47f aea8 	bne.w	8002f30 <_vfprintf_r+0xaf0>
 80031e0:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80031e4:	3301      	adds	r3, #1
 80031e6:	9309      	str	r3, [sp, #36]	; 0x24
 80031e8:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80031ec:	ae2d      	add	r6, sp, #180	; 0xb4
 80031ee:	e6fd      	b.n	8002fec <_vfprintf_r+0xbac>
 80031f0:	aa2a      	add	r2, sp, #168	; 0xa8
 80031f2:	9907      	ldr	r1, [sp, #28]
 80031f4:	9803      	ldr	r0, [sp, #12]
 80031f6:	f003 fc51 	bl	8006a9c <__sprint_r>
 80031fa:	2800      	cmp	r0, #0
 80031fc:	f47f ae98 	bne.w	8002f30 <_vfprintf_r+0xaf0>
 8003200:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003204:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003206:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800320a:	f7ff baf6 	b.w	80027fa <_vfprintf_r+0x3ba>
 800320e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003210:	9907      	ldr	r1, [sp, #28]
 8003212:	9803      	ldr	r0, [sp, #12]
 8003214:	f003 fc42 	bl	8006a9c <__sprint_r>
 8003218:	2800      	cmp	r0, #0
 800321a:	f47f ae89 	bne.w	8002f30 <_vfprintf_r+0xaf0>
 800321e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003220:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003224:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003226:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800322a:	443b      	add	r3, r7
 800322c:	4699      	mov	r9, r3
 800322e:	f040 8357 	bne.w	80038e0 <_vfprintf_r+0x14a0>
 8003232:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003234:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003236:	4293      	cmp	r3, r2
 8003238:	db49      	blt.n	80032ce <_vfprintf_r+0xe8e>
 800323a:	f018 0f01 	tst.w	r8, #1
 800323e:	d146      	bne.n	80032ce <_vfprintf_r+0xe8e>
 8003240:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003242:	18bd      	adds	r5, r7, r2
 8003244:	eba5 0509 	sub.w	r5, r5, r9
 8003248:	1ad3      	subs	r3, r2, r3
 800324a:	429d      	cmp	r5, r3
 800324c:	bfa8      	it	ge
 800324e:	461d      	movge	r5, r3
 8003250:	2d00      	cmp	r5, #0
 8003252:	dd0d      	ble.n	8003270 <_vfprintf_r+0xe30>
 8003254:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003256:	f8cb 9000 	str.w	r9, [fp]
 800325a:	3201      	adds	r2, #1
 800325c:	442c      	add	r4, r5
 800325e:	2a07      	cmp	r2, #7
 8003260:	942c      	str	r4, [sp, #176]	; 0xb0
 8003262:	f8cb 5004 	str.w	r5, [fp, #4]
 8003266:	922b      	str	r2, [sp, #172]	; 0xac
 8003268:	f300 8462 	bgt.w	8003b30 <_vfprintf_r+0x16f0>
 800326c:	f10b 0b08 	add.w	fp, fp, #8
 8003270:	2d00      	cmp	r5, #0
 8003272:	bfac      	ite	ge
 8003274:	1b5d      	subge	r5, r3, r5
 8003276:	461d      	movlt	r5, r3
 8003278:	2d00      	cmp	r5, #0
 800327a:	f77f ab32 	ble.w	80028e2 <_vfprintf_r+0x4a2>
 800327e:	2d10      	cmp	r5, #16
 8003280:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003282:	4bc5      	ldr	r3, [pc, #788]	; (8003598 <_vfprintf_r+0x1158>)
 8003284:	f340 80c4 	ble.w	8003410 <_vfprintf_r+0xfd0>
 8003288:	4619      	mov	r1, r3
 800328a:	2610      	movs	r6, #16
 800328c:	4623      	mov	r3, r4
 800328e:	9f03      	ldr	r7, [sp, #12]
 8003290:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003294:	460c      	mov	r4, r1
 8003296:	e005      	b.n	80032a4 <_vfprintf_r+0xe64>
 8003298:	f10b 0b08 	add.w	fp, fp, #8
 800329c:	3d10      	subs	r5, #16
 800329e:	2d10      	cmp	r5, #16
 80032a0:	f340 80b3 	ble.w	800340a <_vfprintf_r+0xfca>
 80032a4:	3201      	adds	r2, #1
 80032a6:	3310      	adds	r3, #16
 80032a8:	2a07      	cmp	r2, #7
 80032aa:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80032ae:	e9cb 4600 	strd	r4, r6, [fp]
 80032b2:	ddf1      	ble.n	8003298 <_vfprintf_r+0xe58>
 80032b4:	aa2a      	add	r2, sp, #168	; 0xa8
 80032b6:	4649      	mov	r1, r9
 80032b8:	4638      	mov	r0, r7
 80032ba:	f003 fbef 	bl	8006a9c <__sprint_r>
 80032be:	2800      	cmp	r0, #0
 80032c0:	f47f ae38 	bne.w	8002f34 <_vfprintf_r+0xaf4>
 80032c4:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80032c8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032cc:	e7e6      	b.n	800329c <_vfprintf_r+0xe5c>
 80032ce:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80032d0:	9916      	ldr	r1, [sp, #88]	; 0x58
 80032d2:	f8cb 1000 	str.w	r1, [fp]
 80032d6:	9915      	ldr	r1, [sp, #84]	; 0x54
 80032d8:	f8cb 1004 	str.w	r1, [fp, #4]
 80032dc:	3201      	adds	r2, #1
 80032de:	440c      	add	r4, r1
 80032e0:	2a07      	cmp	r2, #7
 80032e2:	942c      	str	r4, [sp, #176]	; 0xb0
 80032e4:	922b      	str	r2, [sp, #172]	; 0xac
 80032e6:	f300 828c 	bgt.w	8003802 <_vfprintf_r+0x13c2>
 80032ea:	f10b 0b08 	add.w	fp, fp, #8
 80032ee:	e7a7      	b.n	8003240 <_vfprintf_r+0xe00>
 80032f0:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80032f4:	f002 fa94 	bl	8005820 <__retarget_lock_release_recursive>
 80032f8:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80032fc:	e628      	b.n	8002f50 <_vfprintf_r+0xb10>
 80032fe:	aa2a      	add	r2, sp, #168	; 0xa8
 8003300:	9907      	ldr	r1, [sp, #28]
 8003302:	9803      	ldr	r0, [sp, #12]
 8003304:	f003 fbca 	bl	8006a9c <__sprint_r>
 8003308:	2800      	cmp	r0, #0
 800330a:	f47f ae11 	bne.w	8002f30 <_vfprintf_r+0xaf0>
 800330e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003312:	ae2d      	add	r6, sp, #180	; 0xb4
 8003314:	e638      	b.n	8002f88 <_vfprintf_r+0xb48>
 8003316:	aa2a      	add	r2, sp, #168	; 0xa8
 8003318:	9907      	ldr	r1, [sp, #28]
 800331a:	9803      	ldr	r0, [sp, #12]
 800331c:	f003 fbbe 	bl	8006a9c <__sprint_r>
 8003320:	2800      	cmp	r0, #0
 8003322:	f47f ae05 	bne.w	8002f30 <_vfprintf_r+0xaf0>
 8003326:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800332a:	ae2d      	add	r6, sp, #180	; 0xb4
 800332c:	930b      	str	r3, [sp, #44]	; 0x2c
 800332e:	e638      	b.n	8002fa2 <_vfprintf_r+0xb62>
 8003330:	6814      	ldr	r4, [r2, #0]
 8003332:	9308      	str	r3, [sp, #32]
 8003334:	2500      	movs	r5, #0
 8003336:	f7ff bb95 	b.w	8002a64 <_vfprintf_r+0x624>
 800333a:	6814      	ldr	r4, [r2, #0]
 800333c:	9308      	str	r3, [sp, #32]
 800333e:	2500      	movs	r5, #0
 8003340:	f7ff b9ae 	b.w	80026a0 <_vfprintf_r+0x260>
 8003344:	680c      	ldr	r4, [r1, #0]
 8003346:	9208      	str	r2, [sp, #32]
 8003348:	17e5      	asrs	r5, r4, #31
 800334a:	4620      	mov	r0, r4
 800334c:	4629      	mov	r1, r5
 800334e:	f7ff b9d2 	b.w	80026f6 <_vfprintf_r+0x2b6>
 8003352:	6814      	ldr	r4, [r2, #0]
 8003354:	9108      	str	r1, [sp, #32]
 8003356:	2201      	movs	r2, #1
 8003358:	2500      	movs	r5, #0
 800335a:	f7ff bb32 	b.w	80029c2 <_vfprintf_r+0x582>
 800335e:	2a01      	cmp	r2, #1
 8003360:	f47f ab3c 	bne.w	80029dc <_vfprintf_r+0x59c>
 8003364:	e68f      	b.n	8003086 <_vfprintf_r+0xc46>
 8003366:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 800336a:	2200      	movs	r2, #0
 800336c:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003370:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003374:	af56      	add	r7, sp, #344	; 0x158
 8003376:	4692      	mov	sl, r2
 8003378:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 800337c:	461e      	mov	r6, r3
 800337e:	e00a      	b.n	8003396 <_vfprintf_r+0xf56>
 8003380:	2300      	movs	r3, #0
 8003382:	4620      	mov	r0, r4
 8003384:	4629      	mov	r1, r5
 8003386:	220a      	movs	r2, #10
 8003388:	f7fc ff3a 	bl	8000200 <__aeabi_uldivmod>
 800338c:	4604      	mov	r4, r0
 800338e:	460d      	mov	r5, r1
 8003390:	ea54 0305 	orrs.w	r3, r4, r5
 8003394:	d029      	beq.n	80033ea <_vfprintf_r+0xfaa>
 8003396:	220a      	movs	r2, #10
 8003398:	2300      	movs	r3, #0
 800339a:	4620      	mov	r0, r4
 800339c:	4629      	mov	r1, r5
 800339e:	f7fc ff2f 	bl	8000200 <__aeabi_uldivmod>
 80033a2:	3230      	adds	r2, #48	; 0x30
 80033a4:	f807 2c01 	strb.w	r2, [r7, #-1]
 80033a8:	f10a 0a01 	add.w	sl, sl, #1
 80033ac:	3f01      	subs	r7, #1
 80033ae:	2e00      	cmp	r6, #0
 80033b0:	d0e6      	beq.n	8003380 <_vfprintf_r+0xf40>
 80033b2:	f898 3000 	ldrb.w	r3, [r8]
 80033b6:	459a      	cmp	sl, r3
 80033b8:	d1e2      	bne.n	8003380 <_vfprintf_r+0xf40>
 80033ba:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80033be:	d0df      	beq.n	8003380 <_vfprintf_r+0xf40>
 80033c0:	2d00      	cmp	r5, #0
 80033c2:	bf08      	it	eq
 80033c4:	2c0a      	cmpeq	r4, #10
 80033c6:	d3db      	bcc.n	8003380 <_vfprintf_r+0xf40>
 80033c8:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80033ca:	9918      	ldr	r1, [sp, #96]	; 0x60
 80033cc:	1aff      	subs	r7, r7, r3
 80033ce:	461a      	mov	r2, r3
 80033d0:	4638      	mov	r0, r7
 80033d2:	f003 faf5 	bl	80069c0 <strncpy>
 80033d6:	f898 3001 	ldrb.w	r3, [r8, #1]
 80033da:	2b00      	cmp	r3, #0
 80033dc:	f000 8496 	beq.w	8003d0c <_vfprintf_r+0x18cc>
 80033e0:	f108 0801 	add.w	r8, r8, #1
 80033e4:	f04f 0a00 	mov.w	sl, #0
 80033e8:	e7ca      	b.n	8003380 <_vfprintf_r+0xf40>
 80033ea:	9b04      	ldr	r3, [sp, #16]
 80033ec:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80033f0:	1bdb      	subs	r3, r3, r7
 80033f2:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80033f6:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80033f8:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80033fc:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003400:	9309      	str	r3, [sp, #36]	; 0x24
 8003402:	f7ff b99e 	b.w	8002742 <_vfprintf_r+0x302>
 8003406:	46c1      	mov	r9, r8
 8003408:	e594      	b.n	8002f34 <_vfprintf_r+0xaf4>
 800340a:	4621      	mov	r1, r4
 800340c:	461c      	mov	r4, r3
 800340e:	460b      	mov	r3, r1
 8003410:	3201      	adds	r2, #1
 8003412:	442c      	add	r4, r5
 8003414:	2a07      	cmp	r2, #7
 8003416:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800341a:	e9cb 3500 	strd	r3, r5, [fp]
 800341e:	f77f aa5e 	ble.w	80028de <_vfprintf_r+0x49e>
 8003422:	e5ee      	b.n	8003002 <_vfprintf_r+0xbc2>
 8003424:	f018 0f10 	tst.w	r8, #16
 8003428:	f040 80f8 	bne.w	800361c <_vfprintf_r+0x11dc>
 800342c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003430:	f000 8351 	beq.w	8003ad6 <_vfprintf_r+0x1696>
 8003434:	9a05      	ldr	r2, [sp, #20]
 8003436:	801a      	strh	r2, [r3, #0]
 8003438:	4657      	mov	r7, sl
 800343a:	f7ff baa7 	b.w	800298c <_vfprintf_r+0x54c>
 800343e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003440:	9907      	ldr	r1, [sp, #28]
 8003442:	9803      	ldr	r0, [sp, #12]
 8003444:	f003 fb2a 	bl	8006a9c <__sprint_r>
 8003448:	2800      	cmp	r0, #0
 800344a:	f47f ad71 	bne.w	8002f30 <_vfprintf_r+0xaf0>
 800344e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003450:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003454:	f7ff b9f5 	b.w	8002842 <_vfprintf_r+0x402>
 8003458:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800345c:	4602      	mov	r2, r0
 800345e:	460b      	mov	r3, r1
 8003460:	f7fd fe04 	bl	800106c <__aeabi_dcmpun>
 8003464:	2800      	cmp	r0, #0
 8003466:	f040 8491 	bne.w	8003d8c <_vfprintf_r+0x194c>
 800346a:	2e61      	cmp	r6, #97	; 0x61
 800346c:	f000 8111 	beq.w	8003692 <_vfprintf_r+0x1252>
 8003470:	2e41      	cmp	r6, #65	; 0x41
 8003472:	f000 8377 	beq.w	8003b64 <_vfprintf_r+0x1724>
 8003476:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 800347a:	f026 0220 	bic.w	r2, r6, #32
 800347e:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003482:	930e      	str	r3, [sp, #56]	; 0x38
 8003484:	9204      	str	r2, [sp, #16]
 8003486:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003488:	f000 842d 	beq.w	8003ce6 <_vfprintf_r+0x18a6>
 800348c:	2a47      	cmp	r2, #71	; 0x47
 800348e:	f000 8424 	beq.w	8003cda <_vfprintf_r+0x189a>
 8003492:	2b00      	cmp	r3, #0
 8003494:	f2c0 82f9 	blt.w	8003a8a <_vfprintf_r+0x164a>
 8003498:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800349c:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80034a0:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80034a4:	2e66      	cmp	r6, #102	; 0x66
 80034a6:	f000 83eb 	beq.w	8003c80 <_vfprintf_r+0x1840>
 80034aa:	2e46      	cmp	r6, #70	; 0x46
 80034ac:	f000 847e 	beq.w	8003dac <_vfprintf_r+0x196c>
 80034b0:	9b04      	ldr	r3, [sp, #16]
 80034b2:	9803      	ldr	r0, [sp, #12]
 80034b4:	2b45      	cmp	r3, #69	; 0x45
 80034b6:	bf0c      	ite	eq
 80034b8:	f109 0501 	addeq.w	r5, r9, #1
 80034bc:	464d      	movne	r5, r9
 80034be:	aa28      	add	r2, sp, #160	; 0xa0
 80034c0:	ab25      	add	r3, sp, #148	; 0x94
 80034c2:	e9cd 3200 	strd	r3, r2, [sp]
 80034c6:	2102      	movs	r1, #2
 80034c8:	ab24      	add	r3, sp, #144	; 0x90
 80034ca:	462a      	mov	r2, r5
 80034cc:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80034d0:	f000 fe3e 	bl	8004150 <_dtoa_r>
 80034d4:	2e67      	cmp	r6, #103	; 0x67
 80034d6:	4607      	mov	r7, r0
 80034d8:	f040 849c 	bne.w	8003e14 <_vfprintf_r+0x19d4>
 80034dc:	f018 0f01 	tst.w	r8, #1
 80034e0:	f040 83f9 	bne.w	8003cd6 <_vfprintf_r+0x1896>
 80034e4:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80034e6:	4640      	mov	r0, r8
 80034e8:	1bdb      	subs	r3, r3, r7
 80034ea:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80034ee:	9310      	str	r3, [sp, #64]	; 0x40
 80034f0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80034f2:	9311      	str	r3, [sp, #68]	; 0x44
 80034f4:	9b04      	ldr	r3, [sp, #16]
 80034f6:	2b47      	cmp	r3, #71	; 0x47
 80034f8:	f000 81e7 	beq.w	80038ca <_vfprintf_r+0x148a>
 80034fc:	9b04      	ldr	r3, [sp, #16]
 80034fe:	2b46      	cmp	r3, #70	; 0x46
 8003500:	f000 8300 	beq.w	8003b04 <_vfprintf_r+0x16c4>
 8003504:	9904      	ldr	r1, [sp, #16]
 8003506:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003508:	b2f2      	uxtb	r2, r6
 800350a:	2941      	cmp	r1, #65	; 0x41
 800350c:	bf08      	it	eq
 800350e:	320f      	addeq	r2, #15
 8003510:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003514:	bf06      	itte	eq
 8003516:	b2d2      	uxtbeq	r2, r2
 8003518:	2101      	moveq	r1, #1
 800351a:	2100      	movne	r1, #0
 800351c:	2b00      	cmp	r3, #0
 800351e:	9324      	str	r3, [sp, #144]	; 0x90
 8003520:	bfb8      	it	lt
 8003522:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003524:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003528:	bfba      	itte	lt
 800352a:	f1c3 0301 	rsblt	r3, r3, #1
 800352e:	222d      	movlt	r2, #45	; 0x2d
 8003530:	222b      	movge	r2, #43	; 0x2b
 8003532:	2b09      	cmp	r3, #9
 8003534:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003538:	f300 83f9 	bgt.w	8003d2e <_vfprintf_r+0x18ee>
 800353c:	2900      	cmp	r1, #0
 800353e:	f040 8487 	bne.w	8003e50 <_vfprintf_r+0x1a10>
 8003542:	2230      	movs	r2, #48	; 0x30
 8003544:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003548:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 800354c:	3330      	adds	r3, #48	; 0x30
 800354e:	7013      	strb	r3, [r2, #0]
 8003550:	1c53      	adds	r3, r2, #1
 8003552:	aa26      	add	r2, sp, #152	; 0x98
 8003554:	1a9b      	subs	r3, r3, r2
 8003556:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003558:	9319      	str	r3, [sp, #100]	; 0x64
 800355a:	2a01      	cmp	r2, #1
 800355c:	4413      	add	r3, r2
 800355e:	9309      	str	r3, [sp, #36]	; 0x24
 8003560:	f340 8442 	ble.w	8003de8 <_vfprintf_r+0x19a8>
 8003564:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003566:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003568:	4413      	add	r3, r2
 800356a:	9309      	str	r3, [sp, #36]	; 0x24
 800356c:	2300      	movs	r3, #0
 800356e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003570:	9314      	str	r3, [sp, #80]	; 0x50
 8003572:	9311      	str	r3, [sp, #68]	; 0x44
 8003574:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003576:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 800357a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800357e:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003582:	9304      	str	r3, [sp, #16]
 8003584:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003586:	2b00      	cmp	r3, #0
 8003588:	f040 8275 	bne.w	8003a76 <_vfprintf_r+0x1636>
 800358c:	4699      	mov	r9, r3
 800358e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003592:	f7ff b8e2 	b.w	800275a <_vfprintf_r+0x31a>
 8003596:	bf00      	nop
 8003598:	080071cc 	.word	0x080071cc
 800359c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800359e:	49bd      	ldr	r1, [pc, #756]	; (8003894 <_vfprintf_r+0x1454>)
 80035a0:	f8cb 1000 	str.w	r1, [fp]
 80035a4:	3201      	adds	r2, #1
 80035a6:	3401      	adds	r4, #1
 80035a8:	2101      	movs	r1, #1
 80035aa:	2a07      	cmp	r2, #7
 80035ac:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80035b0:	f8cb 1004 	str.w	r1, [fp, #4]
 80035b4:	dc60      	bgt.n	8003678 <_vfprintf_r+0x1238>
 80035b6:	f10b 0b08 	add.w	fp, fp, #8
 80035ba:	b92b      	cbnz	r3, 80035c8 <_vfprintf_r+0x1188>
 80035bc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80035be:	b91a      	cbnz	r2, 80035c8 <_vfprintf_r+0x1188>
 80035c0:	f018 0f01 	tst.w	r8, #1
 80035c4:	f43f a98d 	beq.w	80028e2 <_vfprintf_r+0x4a2>
 80035c8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035ca:	9916      	ldr	r1, [sp, #88]	; 0x58
 80035cc:	f8cb 1000 	str.w	r1, [fp]
 80035d0:	9915      	ldr	r1, [sp, #84]	; 0x54
 80035d2:	f8cb 1004 	str.w	r1, [fp, #4]
 80035d6:	3201      	adds	r2, #1
 80035d8:	440c      	add	r4, r1
 80035da:	2a07      	cmp	r2, #7
 80035dc:	942c      	str	r4, [sp, #176]	; 0xb0
 80035de:	922b      	str	r2, [sp, #172]	; 0xac
 80035e0:	f300 8282 	bgt.w	8003ae8 <_vfprintf_r+0x16a8>
 80035e4:	f10b 0b08 	add.w	fp, fp, #8
 80035e8:	2b00      	cmp	r3, #0
 80035ea:	f2c0 82e7 	blt.w	8003bbc <_vfprintf_r+0x177c>
 80035ee:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80035f0:	3201      	adds	r2, #1
 80035f2:	441c      	add	r4, r3
 80035f4:	2a07      	cmp	r2, #7
 80035f6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80035fa:	e9cb 7300 	strd	r7, r3, [fp]
 80035fe:	f77f a96e 	ble.w	80028de <_vfprintf_r+0x49e>
 8003602:	e4fe      	b.n	8003002 <_vfprintf_r+0xbc2>
 8003604:	aa2a      	add	r2, sp, #168	; 0xa8
 8003606:	9907      	ldr	r1, [sp, #28]
 8003608:	9803      	ldr	r0, [sp, #12]
 800360a:	f003 fa47 	bl	8006a9c <__sprint_r>
 800360e:	2800      	cmp	r0, #0
 8003610:	f47f ac8e 	bne.w	8002f30 <_vfprintf_r+0xaf0>
 8003614:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003618:	f7ff bbf0 	b.w	8002dfc <_vfprintf_r+0x9bc>
 800361c:	9a05      	ldr	r2, [sp, #20]
 800361e:	601a      	str	r2, [r3, #0]
 8003620:	4657      	mov	r7, sl
 8003622:	f7ff b9b3 	b.w	800298c <_vfprintf_r+0x54c>
 8003626:	8814      	ldrh	r4, [r2, #0]
 8003628:	9108      	str	r1, [sp, #32]
 800362a:	2500      	movs	r5, #0
 800362c:	2201      	movs	r2, #1
 800362e:	f7ff b9c8 	b.w	80029c2 <_vfprintf_r+0x582>
 8003632:	8814      	ldrh	r4, [r2, #0]
 8003634:	9308      	str	r3, [sp, #32]
 8003636:	2500      	movs	r5, #0
 8003638:	f7ff ba14 	b.w	8002a64 <_vfprintf_r+0x624>
 800363c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003640:	9208      	str	r2, [sp, #32]
 8003642:	17e5      	asrs	r5, r4, #31
 8003644:	4620      	mov	r0, r4
 8003646:	4629      	mov	r1, r5
 8003648:	f7ff b855 	b.w	80026f6 <_vfprintf_r+0x2b6>
 800364c:	8814      	ldrh	r4, [r2, #0]
 800364e:	9308      	str	r3, [sp, #32]
 8003650:	2500      	movs	r5, #0
 8003652:	f7ff b825 	b.w	80026a0 <_vfprintf_r+0x260>
 8003656:	222d      	movs	r2, #45	; 0x2d
 8003658:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800365c:	f7ff baa2 	b.w	8002ba4 <_vfprintf_r+0x764>
 8003660:	aa2a      	add	r2, sp, #168	; 0xa8
 8003662:	9907      	ldr	r1, [sp, #28]
 8003664:	9803      	ldr	r0, [sp, #12]
 8003666:	f003 fa19 	bl	8006a9c <__sprint_r>
 800366a:	2800      	cmp	r0, #0
 800366c:	f47f ac60 	bne.w	8002f30 <_vfprintf_r+0xaf0>
 8003670:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003672:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003676:	e534      	b.n	80030e2 <_vfprintf_r+0xca2>
 8003678:	aa2a      	add	r2, sp, #168	; 0xa8
 800367a:	9907      	ldr	r1, [sp, #28]
 800367c:	9803      	ldr	r0, [sp, #12]
 800367e:	f003 fa0d 	bl	8006a9c <__sprint_r>
 8003682:	2800      	cmp	r0, #0
 8003684:	f47f ac54 	bne.w	8002f30 <_vfprintf_r+0xaf0>
 8003688:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800368a:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800368c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003690:	e793      	b.n	80035ba <_vfprintf_r+0x117a>
 8003692:	2330      	movs	r3, #48	; 0x30
 8003694:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003698:	2378      	movs	r3, #120	; 0x78
 800369a:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 800369e:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80036a2:	f048 0402 	orr.w	r4, r8, #2
 80036a6:	f300 82b0 	bgt.w	8003c0a <_vfprintf_r+0x17ca>
 80036aa:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80036ae:	930e      	str	r3, [sp, #56]	; 0x38
 80036b0:	f026 0320 	bic.w	r3, r6, #32
 80036b4:	9304      	str	r3, [sp, #16]
 80036b6:	2200      	movs	r2, #0
 80036b8:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80036ba:	920a      	str	r2, [sp, #40]	; 0x28
 80036bc:	46a0      	mov	r8, r4
 80036be:	af3d      	add	r7, sp, #244	; 0xf4
 80036c0:	2b00      	cmp	r3, #0
 80036c2:	f2c0 81e3 	blt.w	8003a8c <_vfprintf_r+0x164c>
 80036c6:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80036ca:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80036ce:	2300      	movs	r3, #0
 80036d0:	930b      	str	r3, [sp, #44]	; 0x2c
 80036d2:	2e61      	cmp	r6, #97	; 0x61
 80036d4:	f000 8255 	beq.w	8003b82 <_vfprintf_r+0x1742>
 80036d8:	2e41      	cmp	r6, #65	; 0x41
 80036da:	f47f aee3 	bne.w	80034a4 <_vfprintf_r+0x1064>
 80036de:	a824      	add	r0, sp, #144	; 0x90
 80036e0:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80036e4:	f003 f8e2 	bl	80068ac <frexp>
 80036e8:	2200      	movs	r2, #0
 80036ea:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80036ee:	ec51 0b10 	vmov	r0, r1, d0
 80036f2:	f7fd fa21 	bl	8000b38 <__aeabi_dmul>
 80036f6:	2200      	movs	r2, #0
 80036f8:	2300      	movs	r3, #0
 80036fa:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80036fe:	f7fd fc83 	bl	8001008 <__aeabi_dcmpeq>
 8003702:	2800      	cmp	r0, #0
 8003704:	f040 8305 	bne.w	8003d12 <_vfprintf_r+0x18d2>
 8003708:	4b63      	ldr	r3, [pc, #396]	; (8003898 <_vfprintf_r+0x1458>)
 800370a:	9309      	str	r3, [sp, #36]	; 0x24
 800370c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003710:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003714:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003718:	9721      	str	r7, [sp, #132]	; 0x84
 800371a:	46b9      	mov	r9, r7
 800371c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003720:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003724:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003728:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 800372c:	e003      	b.n	8003736 <_vfprintf_r+0x12f6>
 800372e:	f7fd fc6b 	bl	8001008 <__aeabi_dcmpeq>
 8003732:	bb20      	cbnz	r0, 800377e <_vfprintf_r+0x133e>
 8003734:	46a9      	mov	r9, r5
 8003736:	2200      	movs	r2, #0
 8003738:	4b58      	ldr	r3, [pc, #352]	; (800389c <_vfprintf_r+0x145c>)
 800373a:	4630      	mov	r0, r6
 800373c:	4639      	mov	r1, r7
 800373e:	f7fd f9fb 	bl	8000b38 <__aeabi_dmul>
 8003742:	460f      	mov	r7, r1
 8003744:	4606      	mov	r6, r0
 8003746:	f7fd fca7 	bl	8001098 <__aeabi_d2iz>
 800374a:	4680      	mov	r8, r0
 800374c:	f7fd f98a 	bl	8000a64 <__aeabi_i2d>
 8003750:	4602      	mov	r2, r0
 8003752:	460b      	mov	r3, r1
 8003754:	4630      	mov	r0, r6
 8003756:	4639      	mov	r1, r7
 8003758:	f7fd f836 	bl	80007c8 <__aeabi_dsub>
 800375c:	464d      	mov	r5, r9
 800375e:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003762:	f805 cb01 	strb.w	ip, [r5], #1
 8003766:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 800376a:	46a3      	mov	fp, r4
 800376c:	4606      	mov	r6, r0
 800376e:	460f      	mov	r7, r1
 8003770:	f04f 0200 	mov.w	r2, #0
 8003774:	f04f 0300 	mov.w	r3, #0
 8003778:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 800377c:	d1d7      	bne.n	800372e <_vfprintf_r+0x12ee>
 800377e:	4630      	mov	r0, r6
 8003780:	4639      	mov	r1, r7
 8003782:	2200      	movs	r2, #0
 8003784:	4b46      	ldr	r3, [pc, #280]	; (80038a0 <_vfprintf_r+0x1460>)
 8003786:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 800378a:	9e10      	ldr	r6, [sp, #64]	; 0x40
 800378c:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003790:	4644      	mov	r4, r8
 8003792:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003796:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 800379a:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 800379e:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 80037a2:	9f21      	ldr	r7, [sp, #132]	; 0x84
 80037a4:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80037a8:	f7fd fc56 	bl	8001058 <__aeabi_dcmpgt>
 80037ac:	2800      	cmp	r0, #0
 80037ae:	f040 8176 	bne.w	8003a9e <_vfprintf_r+0x165e>
 80037b2:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80037b6:	2200      	movs	r2, #0
 80037b8:	4b39      	ldr	r3, [pc, #228]	; (80038a0 <_vfprintf_r+0x1460>)
 80037ba:	f7fd fc25 	bl	8001008 <__aeabi_dcmpeq>
 80037be:	b110      	cbz	r0, 80037c6 <_vfprintf_r+0x1386>
 80037c0:	07e2      	lsls	r2, r4, #31
 80037c2:	f100 816c 	bmi.w	8003a9e <_vfprintf_r+0x165e>
 80037c6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80037c8:	2b00      	cmp	r3, #0
 80037ca:	db07      	blt.n	80037dc <_vfprintf_r+0x139c>
 80037cc:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80037ce:	3301      	adds	r3, #1
 80037d0:	442b      	add	r3, r5
 80037d2:	2230      	movs	r2, #48	; 0x30
 80037d4:	f805 2b01 	strb.w	r2, [r5], #1
 80037d8:	42ab      	cmp	r3, r5
 80037da:	d1fb      	bne.n	80037d4 <_vfprintf_r+0x1394>
 80037dc:	1beb      	subs	r3, r5, r7
 80037de:	4640      	mov	r0, r8
 80037e0:	9310      	str	r3, [sp, #64]	; 0x40
 80037e2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80037e6:	e683      	b.n	80034f0 <_vfprintf_r+0x10b0>
 80037e8:	f8cd 9010 	str.w	r9, [sp, #16]
 80037ec:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80037f0:	9408      	str	r4, [sp, #32]
 80037f2:	4681      	mov	r9, r0
 80037f4:	900f      	str	r0, [sp, #60]	; 0x3c
 80037f6:	9014      	str	r0, [sp, #80]	; 0x50
 80037f8:	9011      	str	r0, [sp, #68]	; 0x44
 80037fa:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80037fe:	f7fe bfac 	b.w	800275a <_vfprintf_r+0x31a>
 8003802:	aa2a      	add	r2, sp, #168	; 0xa8
 8003804:	9907      	ldr	r1, [sp, #28]
 8003806:	9803      	ldr	r0, [sp, #12]
 8003808:	f003 f948 	bl	8006a9c <__sprint_r>
 800380c:	2800      	cmp	r0, #0
 800380e:	f47f ab8f 	bne.w	8002f30 <_vfprintf_r+0xaf0>
 8003812:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003814:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003816:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800381a:	e511      	b.n	8003240 <_vfprintf_r+0xe00>
 800381c:	4252      	negs	r2, r2
 800381e:	9206      	str	r2, [sp, #24]
 8003820:	9308      	str	r3, [sp, #32]
 8003822:	f7ff b96d 	b.w	8002b00 <_vfprintf_r+0x6c0>
 8003826:	4614      	mov	r4, r2
 8003828:	4632      	mov	r2, r6
 800382a:	461e      	mov	r6, r3
 800382c:	4613      	mov	r3, r2
 800382e:	462a      	mov	r2, r5
 8003830:	3201      	adds	r2, #1
 8003832:	9209      	str	r2, [sp, #36]	; 0x24
 8003834:	f106 0208 	add.w	r2, r6, #8
 8003838:	e9c6 3900 	strd	r3, r9, [r6]
 800383c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800383e:	932b      	str	r3, [sp, #172]	; 0xac
 8003840:	444c      	add	r4, r9
 8003842:	2b07      	cmp	r3, #7
 8003844:	942c      	str	r4, [sp, #176]	; 0xb0
 8003846:	f73f acc3 	bgt.w	80031d0 <_vfprintf_r+0xd90>
 800384a:	3301      	adds	r3, #1
 800384c:	9309      	str	r3, [sp, #36]	; 0x24
 800384e:	f102 0b08 	add.w	fp, r2, #8
 8003852:	4616      	mov	r6, r2
 8003854:	f7ff bbca 	b.w	8002fec <_vfprintf_r+0xbac>
 8003858:	aa2a      	add	r2, sp, #168	; 0xa8
 800385a:	9907      	ldr	r1, [sp, #28]
 800385c:	9803      	ldr	r0, [sp, #12]
 800385e:	f003 f91d 	bl	8006a9c <__sprint_r>
 8003862:	2800      	cmp	r0, #0
 8003864:	f47f ab64 	bne.w	8002f30 <_vfprintf_r+0xaf0>
 8003868:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800386a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800386e:	f7ff bade 	b.w	8002e2e <_vfprintf_r+0x9ee>
 8003872:	464b      	mov	r3, r9
 8003874:	2b06      	cmp	r3, #6
 8003876:	bf28      	it	cs
 8003878:	2306      	movcs	r3, #6
 800387a:	46b9      	mov	r9, r7
 800387c:	970f      	str	r7, [sp, #60]	; 0x3c
 800387e:	9714      	str	r7, [sp, #80]	; 0x50
 8003880:	9711      	str	r7, [sp, #68]	; 0x44
 8003882:	970a      	str	r7, [sp, #40]	; 0x28
 8003884:	463a      	mov	r2, r7
 8003886:	9304      	str	r3, [sp, #16]
 8003888:	e9cd 4308 	strd	r4, r3, [sp, #32]
 800388c:	4f05      	ldr	r7, [pc, #20]	; (80038a4 <_vfprintf_r+0x1464>)
 800388e:	f7fe bf64 	b.w	800275a <_vfprintf_r+0x31a>
 8003892:	bf00      	nop
 8003894:	080071b8 	.word	0x080071b8
 8003898:	0800719c 	.word	0x0800719c
 800389c:	40300000 	.word	0x40300000
 80038a0:	3fe00000 	.word	0x3fe00000
 80038a4:	080071b0 	.word	0x080071b0
 80038a8:	460c      	mov	r4, r1
 80038aa:	4639      	mov	r1, r7
 80038ac:	465f      	mov	r7, fp
 80038ae:	469b      	mov	fp, r3
 80038b0:	460b      	mov	r3, r1
 80038b2:	3201      	adds	r2, #1
 80038b4:	442c      	add	r4, r5
 80038b6:	2a07      	cmp	r2, #7
 80038b8:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80038bc:	e9cb 3500 	strd	r3, r5, [fp]
 80038c0:	f73f aca5 	bgt.w	800320e <_vfprintf_r+0xdce>
 80038c4:	f10b 0b08 	add.w	fp, fp, #8
 80038c8:	e4ac      	b.n	8003224 <_vfprintf_r+0xde4>
 80038ca:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80038cc:	1cda      	adds	r2, r3, #3
 80038ce:	db02      	blt.n	80038d6 <_vfprintf_r+0x1496>
 80038d0:	4599      	cmp	r9, r3
 80038d2:	f280 80b5 	bge.w	8003a40 <_vfprintf_r+0x1600>
 80038d6:	3e02      	subs	r6, #2
 80038d8:	f026 0320 	bic.w	r3, r6, #32
 80038dc:	9304      	str	r3, [sp, #16]
 80038de:	e611      	b.n	8003504 <_vfprintf_r+0x10c4>
 80038e0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80038e2:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80038e6:	465a      	mov	r2, fp
 80038e8:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 80038ec:	18fb      	adds	r3, r7, r3
 80038ee:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80038f2:	970c      	str	r7, [sp, #48]	; 0x30
 80038f4:	4eaf      	ldr	r6, [pc, #700]	; (8003bb4 <_vfprintf_r+0x1774>)
 80038f6:	f8dd a01c 	ldr.w	sl, [sp, #28]
 80038fa:	9309      	str	r3, [sp, #36]	; 0x24
 80038fc:	464f      	mov	r7, r9
 80038fe:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003902:	4621      	mov	r1, r4
 8003904:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003906:	2b00      	cmp	r3, #0
 8003908:	d05b      	beq.n	80039c2 <_vfprintf_r+0x1582>
 800390a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800390c:	2b00      	cmp	r3, #0
 800390e:	d154      	bne.n	80039ba <_vfprintf_r+0x157a>
 8003910:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003912:	3b01      	subs	r3, #1
 8003914:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003918:	9314      	str	r3, [sp, #80]	; 0x50
 800391a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800391c:	9818      	ldr	r0, [sp, #96]	; 0x60
 800391e:	6010      	str	r0, [r2, #0]
 8003920:	3301      	adds	r3, #1
 8003922:	4459      	add	r1, fp
 8003924:	2b07      	cmp	r3, #7
 8003926:	912c      	str	r1, [sp, #176]	; 0xb0
 8003928:	f8c2 b004 	str.w	fp, [r2, #4]
 800392c:	932b      	str	r3, [sp, #172]	; 0xac
 800392e:	dc68      	bgt.n	8003a02 <_vfprintf_r+0x15c2>
 8003930:	3208      	adds	r2, #8
 8003932:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003934:	f898 3000 	ldrb.w	r3, [r8]
 8003938:	1bc5      	subs	r5, r0, r7
 800393a:	429d      	cmp	r5, r3
 800393c:	bfa8      	it	ge
 800393e:	461d      	movge	r5, r3
 8003940:	2d00      	cmp	r5, #0
 8003942:	dd0b      	ble.n	800395c <_vfprintf_r+0x151c>
 8003944:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003946:	6017      	str	r7, [r2, #0]
 8003948:	3301      	adds	r3, #1
 800394a:	4429      	add	r1, r5
 800394c:	2b07      	cmp	r3, #7
 800394e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003950:	6055      	str	r5, [r2, #4]
 8003952:	932b      	str	r3, [sp, #172]	; 0xac
 8003954:	dc5e      	bgt.n	8003a14 <_vfprintf_r+0x15d4>
 8003956:	f898 3000 	ldrb.w	r3, [r8]
 800395a:	3208      	adds	r2, #8
 800395c:	2d00      	cmp	r5, #0
 800395e:	bfac      	ite	ge
 8003960:	1b5d      	subge	r5, r3, r5
 8003962:	461d      	movlt	r5, r3
 8003964:	2d00      	cmp	r5, #0
 8003966:	dd26      	ble.n	80039b6 <_vfprintf_r+0x1576>
 8003968:	2d10      	cmp	r5, #16
 800396a:	982b      	ldr	r0, [sp, #172]	; 0xac
 800396c:	dd3c      	ble.n	80039e8 <_vfprintf_r+0x15a8>
 800396e:	2410      	movs	r4, #16
 8003970:	e003      	b.n	800397a <_vfprintf_r+0x153a>
 8003972:	3208      	adds	r2, #8
 8003974:	3d10      	subs	r5, #16
 8003976:	2d10      	cmp	r5, #16
 8003978:	dd36      	ble.n	80039e8 <_vfprintf_r+0x15a8>
 800397a:	3001      	adds	r0, #1
 800397c:	3110      	adds	r1, #16
 800397e:	2807      	cmp	r0, #7
 8003980:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003984:	e9c2 6400 	strd	r6, r4, [r2]
 8003988:	ddf3      	ble.n	8003972 <_vfprintf_r+0x1532>
 800398a:	aa2a      	add	r2, sp, #168	; 0xa8
 800398c:	4651      	mov	r1, sl
 800398e:	4648      	mov	r0, r9
 8003990:	f003 f884 	bl	8006a9c <__sprint_r>
 8003994:	2800      	cmp	r0, #0
 8003996:	d150      	bne.n	8003a3a <_vfprintf_r+0x15fa>
 8003998:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 800399c:	aa2d      	add	r2, sp, #180	; 0xb4
 800399e:	e7e9      	b.n	8003974 <_vfprintf_r+0x1534>
 80039a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80039a2:	4651      	mov	r1, sl
 80039a4:	4648      	mov	r0, r9
 80039a6:	f003 f879 	bl	8006a9c <__sprint_r>
 80039aa:	2800      	cmp	r0, #0
 80039ac:	d145      	bne.n	8003a3a <_vfprintf_r+0x15fa>
 80039ae:	f898 3000 	ldrb.w	r3, [r8]
 80039b2:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80039b4:	aa2d      	add	r2, sp, #180	; 0xb4
 80039b6:	441f      	add	r7, r3
 80039b8:	e7a4      	b.n	8003904 <_vfprintf_r+0x14c4>
 80039ba:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80039bc:	3b01      	subs	r3, #1
 80039be:	930f      	str	r3, [sp, #60]	; 0x3c
 80039c0:	e7ab      	b.n	800391a <_vfprintf_r+0x14da>
 80039c2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80039c4:	2b00      	cmp	r3, #0
 80039c6:	d1f8      	bne.n	80039ba <_vfprintf_r+0x157a>
 80039c8:	46b9      	mov	r9, r7
 80039ca:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80039cc:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 80039ce:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80039d2:	18fb      	adds	r3, r7, r3
 80039d4:	4599      	cmp	r9, r3
 80039d6:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 80039da:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80039de:	4693      	mov	fp, r2
 80039e0:	460c      	mov	r4, r1
 80039e2:	bf28      	it	cs
 80039e4:	4699      	movcs	r9, r3
 80039e6:	e424      	b.n	8003232 <_vfprintf_r+0xdf2>
 80039e8:	3001      	adds	r0, #1
 80039ea:	4429      	add	r1, r5
 80039ec:	2807      	cmp	r0, #7
 80039ee:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80039f2:	e9c2 6500 	strd	r6, r5, [r2]
 80039f6:	dcd3      	bgt.n	80039a0 <_vfprintf_r+0x1560>
 80039f8:	f898 3000 	ldrb.w	r3, [r8]
 80039fc:	3208      	adds	r2, #8
 80039fe:	441f      	add	r7, r3
 8003a00:	e780      	b.n	8003904 <_vfprintf_r+0x14c4>
 8003a02:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a04:	4651      	mov	r1, sl
 8003a06:	4648      	mov	r0, r9
 8003a08:	f003 f848 	bl	8006a9c <__sprint_r>
 8003a0c:	b9a8      	cbnz	r0, 8003a3a <_vfprintf_r+0x15fa>
 8003a0e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a10:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a12:	e78e      	b.n	8003932 <_vfprintf_r+0x14f2>
 8003a14:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a16:	4651      	mov	r1, sl
 8003a18:	4648      	mov	r0, r9
 8003a1a:	f003 f83f 	bl	8006a9c <__sprint_r>
 8003a1e:	b960      	cbnz	r0, 8003a3a <_vfprintf_r+0x15fa>
 8003a20:	f898 3000 	ldrb.w	r3, [r8]
 8003a24:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a26:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a28:	e798      	b.n	800395c <_vfprintf_r+0x151c>
 8003a2a:	4638      	mov	r0, r7
 8003a2c:	f7fc fe08 	bl	8000640 <strlen>
 8003a30:	46a9      	mov	r9, r5
 8003a32:	4603      	mov	r3, r0
 8003a34:	9009      	str	r0, [sp, #36]	; 0x24
 8003a36:	f7ff b8f4 	b.w	8002c22 <_vfprintf_r+0x7e2>
 8003a3a:	46d1      	mov	r9, sl
 8003a3c:	f7ff ba7a 	b.w	8002f34 <_vfprintf_r+0xaf4>
 8003a40:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a42:	4619      	mov	r1, r3
 8003a44:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a46:	4299      	cmp	r1, r3
 8003a48:	f300 8082 	bgt.w	8003b50 <_vfprintf_r+0x1710>
 8003a4c:	07c4      	lsls	r4, r0, #31
 8003a4e:	f140 816b 	bpl.w	8003d28 <_vfprintf_r+0x18e8>
 8003a52:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003a54:	4413      	add	r3, r2
 8003a56:	9309      	str	r3, [sp, #36]	; 0x24
 8003a58:	0541      	lsls	r1, r0, #21
 8003a5a:	d503      	bpl.n	8003a64 <_vfprintf_r+0x1624>
 8003a5c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a5e:	2b00      	cmp	r3, #0
 8003a60:	f300 80e6 	bgt.w	8003c30 <_vfprintf_r+0x17f0>
 8003a64:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a66:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003a6a:	9304      	str	r3, [sp, #16]
 8003a6c:	2667      	movs	r6, #103	; 0x67
 8003a6e:	2300      	movs	r3, #0
 8003a70:	930f      	str	r3, [sp, #60]	; 0x3c
 8003a72:	9314      	str	r3, [sp, #80]	; 0x50
 8003a74:	e586      	b.n	8003584 <_vfprintf_r+0x1144>
 8003a76:	222d      	movs	r2, #45	; 0x2d
 8003a78:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003a7c:	f04f 0900 	mov.w	r9, #0
 8003a80:	f7fe be6c 	b.w	800275c <_vfprintf_r+0x31c>
 8003a84:	46a1      	mov	r9, r4
 8003a86:	f7ff ba55 	b.w	8002f34 <_vfprintf_r+0xaf4>
 8003a8a:	900a      	str	r0, [sp, #40]	; 0x28
 8003a8c:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003a90:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003a94:	931f      	str	r3, [sp, #124]	; 0x7c
 8003a96:	232d      	movs	r3, #45	; 0x2d
 8003a98:	911e      	str	r1, [sp, #120]	; 0x78
 8003a9a:	930b      	str	r3, [sp, #44]	; 0x2c
 8003a9c:	e619      	b.n	80036d2 <_vfprintf_r+0x1292>
 8003a9e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003aa0:	9328      	str	r3, [sp, #160]	; 0xa0
 8003aa2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003aa4:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003aa8:	7bd9      	ldrb	r1, [r3, #15]
 8003aaa:	4291      	cmp	r1, r2
 8003aac:	462b      	mov	r3, r5
 8003aae:	d109      	bne.n	8003ac4 <_vfprintf_r+0x1684>
 8003ab0:	2030      	movs	r0, #48	; 0x30
 8003ab2:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003ab6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003ab8:	1e5a      	subs	r2, r3, #1
 8003aba:	9228      	str	r2, [sp, #160]	; 0xa0
 8003abc:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003ac0:	4291      	cmp	r1, r2
 8003ac2:	d0f6      	beq.n	8003ab2 <_vfprintf_r+0x1672>
 8003ac4:	2a39      	cmp	r2, #57	; 0x39
 8003ac6:	bf0b      	itete	eq
 8003ac8:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003aca:	3201      	addne	r2, #1
 8003acc:	7a92      	ldrbeq	r2, [r2, #10]
 8003ace:	b2d2      	uxtbne	r2, r2
 8003ad0:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003ad4:	e682      	b.n	80037dc <_vfprintf_r+0x139c>
 8003ad6:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003ada:	f43f ad9f 	beq.w	800361c <_vfprintf_r+0x11dc>
 8003ade:	9a05      	ldr	r2, [sp, #20]
 8003ae0:	701a      	strb	r2, [r3, #0]
 8003ae2:	4657      	mov	r7, sl
 8003ae4:	f7fe bf52 	b.w	800298c <_vfprintf_r+0x54c>
 8003ae8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003aea:	9907      	ldr	r1, [sp, #28]
 8003aec:	9803      	ldr	r0, [sp, #12]
 8003aee:	f002 ffd5 	bl	8006a9c <__sprint_r>
 8003af2:	2800      	cmp	r0, #0
 8003af4:	f47f aa1c 	bne.w	8002f30 <_vfprintf_r+0xaf0>
 8003af8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003afa:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003afe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b02:	e571      	b.n	80035e8 <_vfprintf_r+0x11a8>
 8003b04:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b06:	2b00      	cmp	r3, #0
 8003b08:	f340 8164 	ble.w	8003dd4 <_vfprintf_r+0x1994>
 8003b0c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b0e:	f1b9 0f00 	cmp.w	r9, #0
 8003b12:	f040 8103 	bne.w	8003d1c <_vfprintf_r+0x18dc>
 8003b16:	07c6      	lsls	r6, r0, #31
 8003b18:	f100 8100 	bmi.w	8003d1c <_vfprintf_r+0x18dc>
 8003b1c:	9309      	str	r3, [sp, #36]	; 0x24
 8003b1e:	2666      	movs	r6, #102	; 0x66
 8003b20:	0543      	lsls	r3, r0, #21
 8003b22:	f100 8086 	bmi.w	8003c32 <_vfprintf_r+0x17f2>
 8003b26:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b28:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b2c:	9304      	str	r3, [sp, #16]
 8003b2e:	e79e      	b.n	8003a6e <_vfprintf_r+0x162e>
 8003b30:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b32:	9907      	ldr	r1, [sp, #28]
 8003b34:	9803      	ldr	r0, [sp, #12]
 8003b36:	f002 ffb1 	bl	8006a9c <__sprint_r>
 8003b3a:	2800      	cmp	r0, #0
 8003b3c:	f47f a9f8 	bne.w	8002f30 <_vfprintf_r+0xaf0>
 8003b40:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b42:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003b44:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b46:	1ad3      	subs	r3, r2, r3
 8003b48:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b4c:	f7ff bb90 	b.w	8003270 <_vfprintf_r+0xe30>
 8003b50:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b52:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b54:	4413      	add	r3, r2
 8003b56:	9309      	str	r3, [sp, #36]	; 0x24
 8003b58:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b5a:	2b00      	cmp	r3, #0
 8003b5c:	f340 8149 	ble.w	8003df2 <_vfprintf_r+0x19b2>
 8003b60:	2667      	movs	r6, #103	; 0x67
 8003b62:	e7dd      	b.n	8003b20 <_vfprintf_r+0x16e0>
 8003b64:	2330      	movs	r3, #48	; 0x30
 8003b66:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003b6a:	2358      	movs	r3, #88	; 0x58
 8003b6c:	e595      	b.n	800369a <_vfprintf_r+0x125a>
 8003b6e:	9803      	ldr	r0, [sp, #12]
 8003b70:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b72:	4649      	mov	r1, r9
 8003b74:	f002 ff92 	bl	8006a9c <__sprint_r>
 8003b78:	2800      	cmp	r0, #0
 8003b7a:	f47f a9e0 	bne.w	8002f3e <_vfprintf_r+0xafe>
 8003b7e:	f7fe bf0f 	b.w	80029a0 <_vfprintf_r+0x560>
 8003b82:	a824      	add	r0, sp, #144	; 0x90
 8003b84:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003b88:	f002 fe90 	bl	80068ac <frexp>
 8003b8c:	2200      	movs	r2, #0
 8003b8e:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003b92:	ec51 0b10 	vmov	r0, r1, d0
 8003b96:	f7fc ffcf 	bl	8000b38 <__aeabi_dmul>
 8003b9a:	2200      	movs	r2, #0
 8003b9c:	2300      	movs	r3, #0
 8003b9e:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003ba2:	f7fd fa31 	bl	8001008 <__aeabi_dcmpeq>
 8003ba6:	b108      	cbz	r0, 8003bac <_vfprintf_r+0x176c>
 8003ba8:	2301      	movs	r3, #1
 8003baa:	9324      	str	r3, [sp, #144]	; 0x90
 8003bac:	4b02      	ldr	r3, [pc, #8]	; (8003bb8 <_vfprintf_r+0x1778>)
 8003bae:	9309      	str	r3, [sp, #36]	; 0x24
 8003bb0:	e5ac      	b.n	800370c <_vfprintf_r+0x12cc>
 8003bb2:	bf00      	nop
 8003bb4:	080071cc 	.word	0x080071cc
 8003bb8:	08007188 	.word	0x08007188
 8003bbc:	425d      	negs	r5, r3
 8003bbe:	3310      	adds	r3, #16
 8003bc0:	4bb9      	ldr	r3, [pc, #740]	; (8003ea8 <_vfprintf_r+0x1a68>)
 8003bc2:	f280 8097 	bge.w	8003cf4 <_vfprintf_r+0x18b4>
 8003bc6:	4619      	mov	r1, r3
 8003bc8:	2610      	movs	r6, #16
 8003bca:	4623      	mov	r3, r4
 8003bcc:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003bd0:	460c      	mov	r4, r1
 8003bd2:	e005      	b.n	8003be0 <_vfprintf_r+0x17a0>
 8003bd4:	f10b 0b08 	add.w	fp, fp, #8
 8003bd8:	3d10      	subs	r5, #16
 8003bda:	2d10      	cmp	r5, #16
 8003bdc:	f340 8087 	ble.w	8003cee <_vfprintf_r+0x18ae>
 8003be0:	3201      	adds	r2, #1
 8003be2:	3310      	adds	r3, #16
 8003be4:	2a07      	cmp	r2, #7
 8003be6:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003bea:	e9cb 4600 	strd	r4, r6, [fp]
 8003bee:	ddf1      	ble.n	8003bd4 <_vfprintf_r+0x1794>
 8003bf0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bf2:	9907      	ldr	r1, [sp, #28]
 8003bf4:	4648      	mov	r0, r9
 8003bf6:	f002 ff51 	bl	8006a9c <__sprint_r>
 8003bfa:	2800      	cmp	r0, #0
 8003bfc:	f47f a998 	bne.w	8002f30 <_vfprintf_r+0xaf0>
 8003c00:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003c04:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c08:	e7e6      	b.n	8003bd8 <_vfprintf_r+0x1798>
 8003c0a:	f109 0101 	add.w	r1, r9, #1
 8003c0e:	9803      	ldr	r0, [sp, #12]
 8003c10:	f001 fe80 	bl	8005914 <_malloc_r>
 8003c14:	4607      	mov	r7, r0
 8003c16:	2800      	cmp	r0, #0
 8003c18:	f000 813b 	beq.w	8003e92 <_vfprintf_r+0x1a52>
 8003c1c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003c20:	930e      	str	r3, [sp, #56]	; 0x38
 8003c22:	f026 0320 	bic.w	r3, r6, #32
 8003c26:	9304      	str	r3, [sp, #16]
 8003c28:	46a0      	mov	r8, r4
 8003c2a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003c2c:	900a      	str	r0, [sp, #40]	; 0x28
 8003c2e:	e547      	b.n	80036c0 <_vfprintf_r+0x1280>
 8003c30:	2667      	movs	r6, #103	; 0x67
 8003c32:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003c34:	2200      	movs	r2, #0
 8003c36:	920f      	str	r2, [sp, #60]	; 0x3c
 8003c38:	9214      	str	r2, [sp, #80]	; 0x50
 8003c3a:	7803      	ldrb	r3, [r0, #0]
 8003c3c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003c3e:	2bff      	cmp	r3, #255	; 0xff
 8003c40:	d00c      	beq.n	8003c5c <_vfprintf_r+0x181c>
 8003c42:	4293      	cmp	r3, r2
 8003c44:	da0a      	bge.n	8003c5c <_vfprintf_r+0x181c>
 8003c46:	7841      	ldrb	r1, [r0, #1]
 8003c48:	1ad2      	subs	r2, r2, r3
 8003c4a:	b1a9      	cbz	r1, 8003c78 <_vfprintf_r+0x1838>
 8003c4c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c4e:	3301      	adds	r3, #1
 8003c50:	9314      	str	r3, [sp, #80]	; 0x50
 8003c52:	460b      	mov	r3, r1
 8003c54:	2bff      	cmp	r3, #255	; 0xff
 8003c56:	f100 0001 	add.w	r0, r0, #1
 8003c5a:	d1f2      	bne.n	8003c42 <_vfprintf_r+0x1802>
 8003c5c:	9211      	str	r2, [sp, #68]	; 0x44
 8003c5e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c60:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003c62:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003c64:	901a      	str	r0, [sp, #104]	; 0x68
 8003c66:	4413      	add	r3, r2
 8003c68:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003c6a:	fb02 1303 	mla	r3, r2, r3, r1
 8003c6e:	9309      	str	r3, [sp, #36]	; 0x24
 8003c70:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003c74:	9304      	str	r3, [sp, #16]
 8003c76:	e485      	b.n	8003584 <_vfprintf_r+0x1144>
 8003c78:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003c7a:	3101      	adds	r1, #1
 8003c7c:	910f      	str	r1, [sp, #60]	; 0x3c
 8003c7e:	e7de      	b.n	8003c3e <_vfprintf_r+0x17fe>
 8003c80:	aa28      	add	r2, sp, #160	; 0xa0
 8003c82:	ab25      	add	r3, sp, #148	; 0x94
 8003c84:	e9cd 3200 	strd	r3, r2, [sp]
 8003c88:	2103      	movs	r1, #3
 8003c8a:	ab24      	add	r3, sp, #144	; 0x90
 8003c8c:	464a      	mov	r2, r9
 8003c8e:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c92:	9803      	ldr	r0, [sp, #12]
 8003c94:	f000 fa5c 	bl	8004150 <_dtoa_r>
 8003c98:	464d      	mov	r5, r9
 8003c9a:	4607      	mov	r7, r0
 8003c9c:	eb00 0409 	add.w	r4, r0, r9
 8003ca0:	783b      	ldrb	r3, [r7, #0]
 8003ca2:	2b30      	cmp	r3, #48	; 0x30
 8003ca4:	f000 80be 	beq.w	8003e24 <_vfprintf_r+0x19e4>
 8003ca8:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003caa:	442c      	add	r4, r5
 8003cac:	2200      	movs	r2, #0
 8003cae:	2300      	movs	r3, #0
 8003cb0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003cb4:	f7fd f9a8 	bl	8001008 <__aeabi_dcmpeq>
 8003cb8:	b108      	cbz	r0, 8003cbe <_vfprintf_r+0x187e>
 8003cba:	4623      	mov	r3, r4
 8003cbc:	e413      	b.n	80034e6 <_vfprintf_r+0x10a6>
 8003cbe:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003cc0:	42a3      	cmp	r3, r4
 8003cc2:	f4bf ac10 	bcs.w	80034e6 <_vfprintf_r+0x10a6>
 8003cc6:	2130      	movs	r1, #48	; 0x30
 8003cc8:	1c5a      	adds	r2, r3, #1
 8003cca:	9228      	str	r2, [sp, #160]	; 0xa0
 8003ccc:	7019      	strb	r1, [r3, #0]
 8003cce:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003cd0:	429c      	cmp	r4, r3
 8003cd2:	d8f9      	bhi.n	8003cc8 <_vfprintf_r+0x1888>
 8003cd4:	e407      	b.n	80034e6 <_vfprintf_r+0x10a6>
 8003cd6:	197c      	adds	r4, r7, r5
 8003cd8:	e7e8      	b.n	8003cac <_vfprintf_r+0x186c>
 8003cda:	f1b9 0f00 	cmp.w	r9, #0
 8003cde:	f000 8092 	beq.w	8003e06 <_vfprintf_r+0x19c6>
 8003ce2:	900a      	str	r0, [sp, #40]	; 0x28
 8003ce4:	e4ec      	b.n	80036c0 <_vfprintf_r+0x1280>
 8003ce6:	900a      	str	r0, [sp, #40]	; 0x28
 8003ce8:	f04f 0906 	mov.w	r9, #6
 8003cec:	e4e8      	b.n	80036c0 <_vfprintf_r+0x1280>
 8003cee:	4621      	mov	r1, r4
 8003cf0:	461c      	mov	r4, r3
 8003cf2:	460b      	mov	r3, r1
 8003cf4:	3201      	adds	r2, #1
 8003cf6:	442c      	add	r4, r5
 8003cf8:	2a07      	cmp	r2, #7
 8003cfa:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003cfe:	e9cb 3500 	strd	r3, r5, [fp]
 8003d02:	f300 80a9 	bgt.w	8003e58 <_vfprintf_r+0x1a18>
 8003d06:	f10b 0b08 	add.w	fp, fp, #8
 8003d0a:	e470      	b.n	80035ee <_vfprintf_r+0x11ae>
 8003d0c:	469a      	mov	sl, r3
 8003d0e:	f7ff bb37 	b.w	8003380 <_vfprintf_r+0xf40>
 8003d12:	2301      	movs	r3, #1
 8003d14:	9324      	str	r3, [sp, #144]	; 0x90
 8003d16:	4b65      	ldr	r3, [pc, #404]	; (8003eac <_vfprintf_r+0x1a6c>)
 8003d18:	9309      	str	r3, [sp, #36]	; 0x24
 8003d1a:	e4f7      	b.n	800370c <_vfprintf_r+0x12cc>
 8003d1c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003d1e:	4413      	add	r3, r2
 8003d20:	444b      	add	r3, r9
 8003d22:	9309      	str	r3, [sp, #36]	; 0x24
 8003d24:	2666      	movs	r6, #102	; 0x66
 8003d26:	e6fb      	b.n	8003b20 <_vfprintf_r+0x16e0>
 8003d28:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d2a:	9309      	str	r3, [sp, #36]	; 0x24
 8003d2c:	e694      	b.n	8003a58 <_vfprintf_r+0x1618>
 8003d2e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003d32:	4664      	mov	r4, ip
 8003d34:	4d5e      	ldr	r5, [pc, #376]	; (8003eb0 <_vfprintf_r+0x1a70>)
 8003d36:	e000      	b.n	8003d3a <_vfprintf_r+0x18fa>
 8003d38:	4614      	mov	r4, r2
 8003d3a:	fba5 1203 	umull	r1, r2, r5, r3
 8003d3e:	08d2      	lsrs	r2, r2, #3
 8003d40:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003d44:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003d48:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003d4c:	4613      	mov	r3, r2
 8003d4e:	2b09      	cmp	r3, #9
 8003d50:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003d54:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003d58:	dcee      	bgt.n	8003d38 <_vfprintf_r+0x18f8>
 8003d5a:	3330      	adds	r3, #48	; 0x30
 8003d5c:	3c02      	subs	r4, #2
 8003d5e:	b2db      	uxtb	r3, r3
 8003d60:	45a4      	cmp	ip, r4
 8003d62:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003d66:	f240 8090 	bls.w	8003e8a <_vfprintf_r+0x1a4a>
 8003d6a:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003d6e:	4611      	mov	r1, r2
 8003d70:	e001      	b.n	8003d76 <_vfprintf_r+0x1936>
 8003d72:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003d76:	f804 3b01 	strb.w	r3, [r4], #1
 8003d7a:	458c      	cmp	ip, r1
 8003d7c:	d1f9      	bne.n	8003d72 <_vfprintf_r+0x1932>
 8003d7e:	ab2a      	add	r3, sp, #168	; 0xa8
 8003d80:	1a9b      	subs	r3, r3, r2
 8003d82:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003d86:	4413      	add	r3, r2
 8003d88:	f7ff bbe3 	b.w	8003552 <_vfprintf_r+0x1112>
 8003d8c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003d8e:	4f49      	ldr	r7, [pc, #292]	; (8003eb4 <_vfprintf_r+0x1a74>)
 8003d90:	2b00      	cmp	r3, #0
 8003d92:	bfb6      	itet	lt
 8003d94:	222d      	movlt	r2, #45	; 0x2d
 8003d96:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003d9a:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003d9e:	4b46      	ldr	r3, [pc, #280]	; (8003eb8 <_vfprintf_r+0x1a78>)
 8003da0:	f7fe bf02 	b.w	8002ba8 <_vfprintf_r+0x768>
 8003da4:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003da8:	f7ff b8c9 	b.w	8002f3e <_vfprintf_r+0xafe>
 8003dac:	aa28      	add	r2, sp, #160	; 0xa0
 8003dae:	ab25      	add	r3, sp, #148	; 0x94
 8003db0:	e9cd 3200 	strd	r3, r2, [sp]
 8003db4:	2103      	movs	r1, #3
 8003db6:	ab24      	add	r3, sp, #144	; 0x90
 8003db8:	464a      	mov	r2, r9
 8003dba:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003dbe:	9803      	ldr	r0, [sp, #12]
 8003dc0:	f000 f9c6 	bl	8004150 <_dtoa_r>
 8003dc4:	464d      	mov	r5, r9
 8003dc6:	4607      	mov	r7, r0
 8003dc8:	2e46      	cmp	r6, #70	; 0x46
 8003dca:	eb07 0405 	add.w	r4, r7, r5
 8003dce:	f43f af67 	beq.w	8003ca0 <_vfprintf_r+0x1860>
 8003dd2:	e76b      	b.n	8003cac <_vfprintf_r+0x186c>
 8003dd4:	f1b9 0f00 	cmp.w	r9, #0
 8003dd8:	d131      	bne.n	8003e3e <_vfprintf_r+0x19fe>
 8003dda:	07c5      	lsls	r5, r0, #31
 8003ddc:	d42f      	bmi.n	8003e3e <_vfprintf_r+0x19fe>
 8003dde:	2301      	movs	r3, #1
 8003de0:	9304      	str	r3, [sp, #16]
 8003de2:	9309      	str	r3, [sp, #36]	; 0x24
 8003de4:	2666      	movs	r6, #102	; 0x66
 8003de6:	e642      	b.n	8003a6e <_vfprintf_r+0x162e>
 8003de8:	07c3      	lsls	r3, r0, #31
 8003dea:	f57f abbf 	bpl.w	800356c <_vfprintf_r+0x112c>
 8003dee:	f7ff bbb9 	b.w	8003564 <_vfprintf_r+0x1124>
 8003df2:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003df4:	f1c3 0301 	rsb	r3, r3, #1
 8003df8:	441a      	add	r2, r3
 8003dfa:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003dfe:	9209      	str	r2, [sp, #36]	; 0x24
 8003e00:	9304      	str	r3, [sp, #16]
 8003e02:	2667      	movs	r6, #103	; 0x67
 8003e04:	e633      	b.n	8003a6e <_vfprintf_r+0x162e>
 8003e06:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003e0a:	f04f 0901 	mov.w	r9, #1
 8003e0e:	e457      	b.n	80036c0 <_vfprintf_r+0x1280>
 8003e10:	465a      	mov	r2, fp
 8003e12:	e511      	b.n	8003838 <_vfprintf_r+0x13f8>
 8003e14:	2e47      	cmp	r6, #71	; 0x47
 8003e16:	f47f af5e 	bne.w	8003cd6 <_vfprintf_r+0x1896>
 8003e1a:	f018 0f01 	tst.w	r8, #1
 8003e1e:	f43f ab61 	beq.w	80034e4 <_vfprintf_r+0x10a4>
 8003e22:	e7d1      	b.n	8003dc8 <_vfprintf_r+0x1988>
 8003e24:	2200      	movs	r2, #0
 8003e26:	2300      	movs	r3, #0
 8003e28:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003e2c:	f7fd f8ec 	bl	8001008 <__aeabi_dcmpeq>
 8003e30:	2800      	cmp	r0, #0
 8003e32:	f47f af39 	bne.w	8003ca8 <_vfprintf_r+0x1868>
 8003e36:	f1c5 0501 	rsb	r5, r5, #1
 8003e3a:	9524      	str	r5, [sp, #144]	; 0x90
 8003e3c:	e735      	b.n	8003caa <_vfprintf_r+0x186a>
 8003e3e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003e40:	3301      	adds	r3, #1
 8003e42:	444b      	add	r3, r9
 8003e44:	9309      	str	r3, [sp, #36]	; 0x24
 8003e46:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003e4a:	9304      	str	r3, [sp, #16]
 8003e4c:	2666      	movs	r6, #102	; 0x66
 8003e4e:	e60e      	b.n	8003a6e <_vfprintf_r+0x162e>
 8003e50:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003e54:	f7ff bb7a 	b.w	800354c <_vfprintf_r+0x110c>
 8003e58:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e5a:	9907      	ldr	r1, [sp, #28]
 8003e5c:	9803      	ldr	r0, [sp, #12]
 8003e5e:	f002 fe1d 	bl	8006a9c <__sprint_r>
 8003e62:	2800      	cmp	r0, #0
 8003e64:	f47f a864 	bne.w	8002f30 <_vfprintf_r+0xaf0>
 8003e68:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003e6c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e70:	f7ff bbbd 	b.w	80035ee <_vfprintf_r+0x11ae>
 8003e74:	9908      	ldr	r1, [sp, #32]
 8003e76:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003e7a:	680b      	ldr	r3, [r1, #0]
 8003e7c:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003e80:	1d0b      	adds	r3, r1, #4
 8003e82:	4692      	mov	sl, r2
 8003e84:	9308      	str	r3, [sp, #32]
 8003e86:	f7fe bb59 	b.w	800253c <_vfprintf_r+0xfc>
 8003e8a:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003e8e:	f7ff bb60 	b.w	8003552 <_vfprintf_r+0x1112>
 8003e92:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003e96:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003e9a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003e9e:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003ea2:	f7ff b84c 	b.w	8002f3e <_vfprintf_r+0xafe>
 8003ea6:	bf00      	nop
 8003ea8:	080071cc 	.word	0x080071cc
 8003eac:	0800719c 	.word	0x0800719c
 8003eb0:	cccccccd 	.word	0xcccccccd
 8003eb4:	08007184 	.word	0x08007184
 8003eb8:	08007180 	.word	0x08007180

08003ebc <__sbprintf>:
 8003ebc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003ec0:	460c      	mov	r4, r1
 8003ec2:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003ec6:	8989      	ldrh	r1, [r1, #12]
 8003ec8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003eca:	89e5      	ldrh	r5, [r4, #14]
 8003ecc:	9619      	str	r6, [sp, #100]	; 0x64
 8003ece:	f021 0102 	bic.w	r1, r1, #2
 8003ed2:	4606      	mov	r6, r0
 8003ed4:	69e0      	ldr	r0, [r4, #28]
 8003ed6:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003eda:	4617      	mov	r7, r2
 8003edc:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003ee0:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003ee2:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003ee6:	4698      	mov	r8, r3
 8003ee8:	ad1a      	add	r5, sp, #104	; 0x68
 8003eea:	2300      	movs	r3, #0
 8003eec:	9007      	str	r0, [sp, #28]
 8003eee:	a816      	add	r0, sp, #88	; 0x58
 8003ef0:	9209      	str	r2, [sp, #36]	; 0x24
 8003ef2:	9306      	str	r3, [sp, #24]
 8003ef4:	9500      	str	r5, [sp, #0]
 8003ef6:	9504      	str	r5, [sp, #16]
 8003ef8:	9102      	str	r1, [sp, #8]
 8003efa:	9105      	str	r1, [sp, #20]
 8003efc:	f001 fc8a 	bl	8005814 <__retarget_lock_init_recursive>
 8003f00:	4643      	mov	r3, r8
 8003f02:	463a      	mov	r2, r7
 8003f04:	4669      	mov	r1, sp
 8003f06:	4630      	mov	r0, r6
 8003f08:	f7fe fa9a 	bl	8002440 <_vfprintf_r>
 8003f0c:	1e05      	subs	r5, r0, #0
 8003f0e:	db07      	blt.n	8003f20 <__sbprintf+0x64>
 8003f10:	4630      	mov	r0, r6
 8003f12:	4669      	mov	r1, sp
 8003f14:	f001 f8d6 	bl	80050c4 <_fflush_r>
 8003f18:	2800      	cmp	r0, #0
 8003f1a:	bf18      	it	ne
 8003f1c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003f20:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003f24:	065b      	lsls	r3, r3, #25
 8003f26:	d503      	bpl.n	8003f30 <__sbprintf+0x74>
 8003f28:	89a3      	ldrh	r3, [r4, #12]
 8003f2a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003f2e:	81a3      	strh	r3, [r4, #12]
 8003f30:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003f32:	f001 fc71 	bl	8005818 <__retarget_lock_close_recursive>
 8003f36:	4628      	mov	r0, r5
 8003f38:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003f3c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003f40 <__swsetup_r>:
 8003f40:	b538      	push	{r3, r4, r5, lr}
 8003f42:	4b31      	ldr	r3, [pc, #196]	; (8004008 <__swsetup_r+0xc8>)
 8003f44:	681b      	ldr	r3, [r3, #0]
 8003f46:	4605      	mov	r5, r0
 8003f48:	460c      	mov	r4, r1
 8003f4a:	b113      	cbz	r3, 8003f52 <__swsetup_r+0x12>
 8003f4c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003f4e:	2a00      	cmp	r2, #0
 8003f50:	d03a      	beq.n	8003fc8 <__swsetup_r+0x88>
 8003f52:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003f56:	b293      	uxth	r3, r2
 8003f58:	0718      	lsls	r0, r3, #28
 8003f5a:	d50c      	bpl.n	8003f76 <__swsetup_r+0x36>
 8003f5c:	6920      	ldr	r0, [r4, #16]
 8003f5e:	b1a8      	cbz	r0, 8003f8c <__swsetup_r+0x4c>
 8003f60:	f013 0201 	ands.w	r2, r3, #1
 8003f64:	d020      	beq.n	8003fa8 <__swsetup_r+0x68>
 8003f66:	6963      	ldr	r3, [r4, #20]
 8003f68:	2200      	movs	r2, #0
 8003f6a:	425b      	negs	r3, r3
 8003f6c:	61a3      	str	r3, [r4, #24]
 8003f6e:	60a2      	str	r2, [r4, #8]
 8003f70:	b300      	cbz	r0, 8003fb4 <__swsetup_r+0x74>
 8003f72:	2000      	movs	r0, #0
 8003f74:	bd38      	pop	{r3, r4, r5, pc}
 8003f76:	06d9      	lsls	r1, r3, #27
 8003f78:	d53e      	bpl.n	8003ff8 <__swsetup_r+0xb8>
 8003f7a:	0758      	lsls	r0, r3, #29
 8003f7c:	d428      	bmi.n	8003fd0 <__swsetup_r+0x90>
 8003f7e:	6920      	ldr	r0, [r4, #16]
 8003f80:	f042 0308 	orr.w	r3, r2, #8
 8003f84:	81a3      	strh	r3, [r4, #12]
 8003f86:	b29b      	uxth	r3, r3
 8003f88:	2800      	cmp	r0, #0
 8003f8a:	d1e9      	bne.n	8003f60 <__swsetup_r+0x20>
 8003f8c:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003f90:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003f94:	d0e4      	beq.n	8003f60 <__swsetup_r+0x20>
 8003f96:	4628      	mov	r0, r5
 8003f98:	4621      	mov	r1, r4
 8003f9a:	f001 fc71 	bl	8005880 <__smakebuf_r>
 8003f9e:	89a3      	ldrh	r3, [r4, #12]
 8003fa0:	6920      	ldr	r0, [r4, #16]
 8003fa2:	f013 0201 	ands.w	r2, r3, #1
 8003fa6:	d1de      	bne.n	8003f66 <__swsetup_r+0x26>
 8003fa8:	0799      	lsls	r1, r3, #30
 8003faa:	bf58      	it	pl
 8003fac:	6962      	ldrpl	r2, [r4, #20]
 8003fae:	60a2      	str	r2, [r4, #8]
 8003fb0:	2800      	cmp	r0, #0
 8003fb2:	d1de      	bne.n	8003f72 <__swsetup_r+0x32>
 8003fb4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003fb8:	061a      	lsls	r2, r3, #24
 8003fba:	d5db      	bpl.n	8003f74 <__swsetup_r+0x34>
 8003fbc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003fc0:	81a3      	strh	r3, [r4, #12]
 8003fc2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003fc6:	bd38      	pop	{r3, r4, r5, pc}
 8003fc8:	4618      	mov	r0, r3
 8003fca:	f001 f8d7 	bl	800517c <__sinit>
 8003fce:	e7c0      	b.n	8003f52 <__swsetup_r+0x12>
 8003fd0:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8003fd2:	b151      	cbz	r1, 8003fea <__swsetup_r+0xaa>
 8003fd4:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8003fd8:	4299      	cmp	r1, r3
 8003fda:	d004      	beq.n	8003fe6 <__swsetup_r+0xa6>
 8003fdc:	4628      	mov	r0, r5
 8003fde:	f001 f96f 	bl	80052c0 <_free_r>
 8003fe2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003fe6:	2300      	movs	r3, #0
 8003fe8:	6323      	str	r3, [r4, #48]	; 0x30
 8003fea:	2300      	movs	r3, #0
 8003fec:	6920      	ldr	r0, [r4, #16]
 8003fee:	6063      	str	r3, [r4, #4]
 8003ff0:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8003ff4:	6020      	str	r0, [r4, #0]
 8003ff6:	e7c3      	b.n	8003f80 <__swsetup_r+0x40>
 8003ff8:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8003ffc:	2309      	movs	r3, #9
 8003ffe:	602b      	str	r3, [r5, #0]
 8004000:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004004:	81a2      	strh	r2, [r4, #12]
 8004006:	bd38      	pop	{r3, r4, r5, pc}
 8004008:	2000002c 	.word	0x2000002c

0800400c <register_fini>:
 800400c:	4b02      	ldr	r3, [pc, #8]	; (8004018 <register_fini+0xc>)
 800400e:	b113      	cbz	r3, 8004016 <register_fini+0xa>
 8004010:	4802      	ldr	r0, [pc, #8]	; (800401c <register_fini+0x10>)
 8004012:	f000 b805 	b.w	8004020 <atexit>
 8004016:	4770      	bx	lr
 8004018:	00000000 	.word	0x00000000
 800401c:	080051ed 	.word	0x080051ed

08004020 <atexit>:
 8004020:	2300      	movs	r3, #0
 8004022:	4601      	mov	r1, r0
 8004024:	461a      	mov	r2, r3
 8004026:	4618      	mov	r0, r3
 8004028:	f002 bd58 	b.w	8006adc <__register_exitproc>

0800402c <quorem>:
 800402c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004030:	6903      	ldr	r3, [r0, #16]
 8004032:	690f      	ldr	r7, [r1, #16]
 8004034:	42bb      	cmp	r3, r7
 8004036:	b083      	sub	sp, #12
 8004038:	f2c0 8086 	blt.w	8004148 <quorem+0x11c>
 800403c:	3f01      	subs	r7, #1
 800403e:	f101 0914 	add.w	r9, r1, #20
 8004042:	f100 0a14 	add.w	sl, r0, #20
 8004046:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 800404a:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 800404e:	00bc      	lsls	r4, r7, #2
 8004050:	3201      	adds	r2, #1
 8004052:	fbb3 f8f2 	udiv	r8, r3, r2
 8004056:	eb0a 0304 	add.w	r3, sl, r4
 800405a:	9400      	str	r4, [sp, #0]
 800405c:	eb09 0b04 	add.w	fp, r9, r4
 8004060:	9301      	str	r3, [sp, #4]
 8004062:	f1b8 0f00 	cmp.w	r8, #0
 8004066:	d038      	beq.n	80040da <quorem+0xae>
 8004068:	2500      	movs	r5, #0
 800406a:	462e      	mov	r6, r5
 800406c:	46ce      	mov	lr, r9
 800406e:	46d4      	mov	ip, sl
 8004070:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004074:	f8dc 3000 	ldr.w	r3, [ip]
 8004078:	b2a2      	uxth	r2, r4
 800407a:	fb08 5502 	mla	r5, r8, r2, r5
 800407e:	0c22      	lsrs	r2, r4, #16
 8004080:	0c2c      	lsrs	r4, r5, #16
 8004082:	fb08 4202 	mla	r2, r8, r2, r4
 8004086:	b2ad      	uxth	r5, r5
 8004088:	1b75      	subs	r5, r6, r5
 800408a:	b296      	uxth	r6, r2
 800408c:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004090:	fa15 f383 	uxtah	r3, r5, r3
 8004094:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004098:	b29b      	uxth	r3, r3
 800409a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 800409e:	45f3      	cmp	fp, lr
 80040a0:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80040a4:	f84c 3b04 	str.w	r3, [ip], #4
 80040a8:	ea4f 4626 	mov.w	r6, r6, asr #16
 80040ac:	d2e0      	bcs.n	8004070 <quorem+0x44>
 80040ae:	9b00      	ldr	r3, [sp, #0]
 80040b0:	f85a 3003 	ldr.w	r3, [sl, r3]
 80040b4:	b98b      	cbnz	r3, 80040da <quorem+0xae>
 80040b6:	9a01      	ldr	r2, [sp, #4]
 80040b8:	1f13      	subs	r3, r2, #4
 80040ba:	459a      	cmp	sl, r3
 80040bc:	d20c      	bcs.n	80040d8 <quorem+0xac>
 80040be:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80040c2:	b94b      	cbnz	r3, 80040d8 <quorem+0xac>
 80040c4:	f1a2 0308 	sub.w	r3, r2, #8
 80040c8:	e002      	b.n	80040d0 <quorem+0xa4>
 80040ca:	681a      	ldr	r2, [r3, #0]
 80040cc:	3b04      	subs	r3, #4
 80040ce:	b91a      	cbnz	r2, 80040d8 <quorem+0xac>
 80040d0:	459a      	cmp	sl, r3
 80040d2:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80040d6:	d3f8      	bcc.n	80040ca <quorem+0x9e>
 80040d8:	6107      	str	r7, [r0, #16]
 80040da:	4604      	mov	r4, r0
 80040dc:	f002 f944 	bl	8006368 <__mcmp>
 80040e0:	2800      	cmp	r0, #0
 80040e2:	db2d      	blt.n	8004140 <quorem+0x114>
 80040e4:	f108 0801 	add.w	r8, r8, #1
 80040e8:	4655      	mov	r5, sl
 80040ea:	2300      	movs	r3, #0
 80040ec:	f859 1b04 	ldr.w	r1, [r9], #4
 80040f0:	6828      	ldr	r0, [r5, #0]
 80040f2:	b28a      	uxth	r2, r1
 80040f4:	1a9a      	subs	r2, r3, r2
 80040f6:	0c0b      	lsrs	r3, r1, #16
 80040f8:	fa12 f280 	uxtah	r2, r2, r0
 80040fc:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004100:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004104:	b292      	uxth	r2, r2
 8004106:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800410a:	45cb      	cmp	fp, r9
 800410c:	f845 2b04 	str.w	r2, [r5], #4
 8004110:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004114:	d2ea      	bcs.n	80040ec <quorem+0xc0>
 8004116:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 800411a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 800411e:	b97a      	cbnz	r2, 8004140 <quorem+0x114>
 8004120:	1f1a      	subs	r2, r3, #4
 8004122:	4592      	cmp	sl, r2
 8004124:	d20b      	bcs.n	800413e <quorem+0x112>
 8004126:	f853 2c04 	ldr.w	r2, [r3, #-4]
 800412a:	b942      	cbnz	r2, 800413e <quorem+0x112>
 800412c:	3b08      	subs	r3, #8
 800412e:	e002      	b.n	8004136 <quorem+0x10a>
 8004130:	681a      	ldr	r2, [r3, #0]
 8004132:	3b04      	subs	r3, #4
 8004134:	b91a      	cbnz	r2, 800413e <quorem+0x112>
 8004136:	459a      	cmp	sl, r3
 8004138:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800413c:	d3f8      	bcc.n	8004130 <quorem+0x104>
 800413e:	6127      	str	r7, [r4, #16]
 8004140:	4640      	mov	r0, r8
 8004142:	b003      	add	sp, #12
 8004144:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004148:	2000      	movs	r0, #0
 800414a:	b003      	add	sp, #12
 800414c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004150 <_dtoa_r>:
 8004150:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004154:	ec55 4b10 	vmov	r4, r5, d0
 8004158:	b09b      	sub	sp, #108	; 0x6c
 800415a:	6c06      	ldr	r6, [r0, #64]	; 0x40
 800415c:	9102      	str	r1, [sp, #8]
 800415e:	4681      	mov	r9, r0
 8004160:	9207      	str	r2, [sp, #28]
 8004162:	9305      	str	r3, [sp, #20]
 8004164:	e9cd 4500 	strd	r4, r5, [sp]
 8004168:	b156      	cbz	r6, 8004180 <_dtoa_r+0x30>
 800416a:	6c42      	ldr	r2, [r0, #68]	; 0x44
 800416c:	6072      	str	r2, [r6, #4]
 800416e:	2301      	movs	r3, #1
 8004170:	4093      	lsls	r3, r2
 8004172:	60b3      	str	r3, [r6, #8]
 8004174:	4631      	mov	r1, r6
 8004176:	f001 ff07 	bl	8005f88 <_Bfree>
 800417a:	2300      	movs	r3, #0
 800417c:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004180:	f1b5 0800 	subs.w	r8, r5, #0
 8004184:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004186:	bfb4      	ite	lt
 8004188:	2301      	movlt	r3, #1
 800418a:	2300      	movge	r3, #0
 800418c:	6013      	str	r3, [r2, #0]
 800418e:	4b76      	ldr	r3, [pc, #472]	; (8004368 <_dtoa_r+0x218>)
 8004190:	bfbc      	itt	lt
 8004192:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8004196:	f8cd 8004 	strlt.w	r8, [sp, #4]
 800419a:	ea33 0308 	bics.w	r3, r3, r8
 800419e:	f000 80a6 	beq.w	80042ee <_dtoa_r+0x19e>
 80041a2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80041a6:	2200      	movs	r2, #0
 80041a8:	2300      	movs	r3, #0
 80041aa:	4630      	mov	r0, r6
 80041ac:	4639      	mov	r1, r7
 80041ae:	f7fc ff2b 	bl	8001008 <__aeabi_dcmpeq>
 80041b2:	4605      	mov	r5, r0
 80041b4:	b178      	cbz	r0, 80041d6 <_dtoa_r+0x86>
 80041b6:	9a05      	ldr	r2, [sp, #20]
 80041b8:	2301      	movs	r3, #1
 80041ba:	6013      	str	r3, [r2, #0]
 80041bc:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80041be:	2b00      	cmp	r3, #0
 80041c0:	f000 80c0 	beq.w	8004344 <_dtoa_r+0x1f4>
 80041c4:	4b69      	ldr	r3, [pc, #420]	; (800436c <_dtoa_r+0x21c>)
 80041c6:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80041c8:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80041cc:	6013      	str	r3, [r2, #0]
 80041ce:	4658      	mov	r0, fp
 80041d0:	b01b      	add	sp, #108	; 0x6c
 80041d2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80041d6:	aa18      	add	r2, sp, #96	; 0x60
 80041d8:	a919      	add	r1, sp, #100	; 0x64
 80041da:	ec47 6b10 	vmov	d0, r6, r7
 80041de:	4648      	mov	r0, r9
 80041e0:	f002 f954 	bl	800648c <__d2b>
 80041e4:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80041e8:	4682      	mov	sl, r0
 80041ea:	f040 80a0 	bne.w	800432e <_dtoa_r+0x1de>
 80041ee:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80041f2:	442c      	add	r4, r5
 80041f4:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80041f8:	2b20      	cmp	r3, #32
 80041fa:	f340 842c 	ble.w	8004a56 <_dtoa_r+0x906>
 80041fe:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004202:	fa08 f803 	lsl.w	r8, r8, r3
 8004206:	9b00      	ldr	r3, [sp, #0]
 8004208:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800420c:	fa23 f000 	lsr.w	r0, r3, r0
 8004210:	ea48 0000 	orr.w	r0, r8, r0
 8004214:	f7fc fc16 	bl	8000a44 <__aeabi_ui2d>
 8004218:	2301      	movs	r3, #1
 800421a:	4606      	mov	r6, r0
 800421c:	3c01      	subs	r4, #1
 800421e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004222:	930f      	str	r3, [sp, #60]	; 0x3c
 8004224:	4630      	mov	r0, r6
 8004226:	4639      	mov	r1, r7
 8004228:	2200      	movs	r2, #0
 800422a:	4b51      	ldr	r3, [pc, #324]	; (8004370 <_dtoa_r+0x220>)
 800422c:	f7fc facc 	bl	80007c8 <__aeabi_dsub>
 8004230:	a347      	add	r3, pc, #284	; (adr r3, 8004350 <_dtoa_r+0x200>)
 8004232:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004236:	f7fc fc7f 	bl	8000b38 <__aeabi_dmul>
 800423a:	a347      	add	r3, pc, #284	; (adr r3, 8004358 <_dtoa_r+0x208>)
 800423c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004240:	f7fc fac4 	bl	80007cc <__adddf3>
 8004244:	4606      	mov	r6, r0
 8004246:	4620      	mov	r0, r4
 8004248:	460f      	mov	r7, r1
 800424a:	f7fc fc0b 	bl	8000a64 <__aeabi_i2d>
 800424e:	a344      	add	r3, pc, #272	; (adr r3, 8004360 <_dtoa_r+0x210>)
 8004250:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004254:	f7fc fc70 	bl	8000b38 <__aeabi_dmul>
 8004258:	4602      	mov	r2, r0
 800425a:	460b      	mov	r3, r1
 800425c:	4630      	mov	r0, r6
 800425e:	4639      	mov	r1, r7
 8004260:	f7fc fab4 	bl	80007cc <__adddf3>
 8004264:	4606      	mov	r6, r0
 8004266:	460f      	mov	r7, r1
 8004268:	f7fc ff16 	bl	8001098 <__aeabi_d2iz>
 800426c:	2200      	movs	r2, #0
 800426e:	9006      	str	r0, [sp, #24]
 8004270:	2300      	movs	r3, #0
 8004272:	4630      	mov	r0, r6
 8004274:	4639      	mov	r1, r7
 8004276:	f7fc fed1 	bl	800101c <__aeabi_dcmplt>
 800427a:	2800      	cmp	r0, #0
 800427c:	f040 8273 	bne.w	8004766 <_dtoa_r+0x616>
 8004280:	9e06      	ldr	r6, [sp, #24]
 8004282:	2e16      	cmp	r6, #22
 8004284:	f200 825d 	bhi.w	8004742 <_dtoa_r+0x5f2>
 8004288:	4b3a      	ldr	r3, [pc, #232]	; (8004374 <_dtoa_r+0x224>)
 800428a:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 800428e:	e9d3 0100 	ldrd	r0, r1, [r3]
 8004292:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004296:	f7fc fedf 	bl	8001058 <__aeabi_dcmpgt>
 800429a:	2800      	cmp	r0, #0
 800429c:	f000 83d7 	beq.w	8004a4e <_dtoa_r+0x8fe>
 80042a0:	1e73      	subs	r3, r6, #1
 80042a2:	9306      	str	r3, [sp, #24]
 80042a4:	2300      	movs	r3, #0
 80042a6:	930d      	str	r3, [sp, #52]	; 0x34
 80042a8:	1b2c      	subs	r4, r5, r4
 80042aa:	f1b4 0801 	subs.w	r8, r4, #1
 80042ae:	f100 8254 	bmi.w	800475a <_dtoa_r+0x60a>
 80042b2:	2300      	movs	r3, #0
 80042b4:	9308      	str	r3, [sp, #32]
 80042b6:	9b06      	ldr	r3, [sp, #24]
 80042b8:	2b00      	cmp	r3, #0
 80042ba:	f2c0 8245 	blt.w	8004748 <_dtoa_r+0x5f8>
 80042be:	4498      	add	r8, r3
 80042c0:	930c      	str	r3, [sp, #48]	; 0x30
 80042c2:	2300      	movs	r3, #0
 80042c4:	930b      	str	r3, [sp, #44]	; 0x2c
 80042c6:	9b02      	ldr	r3, [sp, #8]
 80042c8:	2b09      	cmp	r3, #9
 80042ca:	d85b      	bhi.n	8004384 <_dtoa_r+0x234>
 80042cc:	2b05      	cmp	r3, #5
 80042ce:	f340 83c0 	ble.w	8004a52 <_dtoa_r+0x902>
 80042d2:	3b04      	subs	r3, #4
 80042d4:	9302      	str	r3, [sp, #8]
 80042d6:	2500      	movs	r5, #0
 80042d8:	9b02      	ldr	r3, [sp, #8]
 80042da:	3b02      	subs	r3, #2
 80042dc:	2b03      	cmp	r3, #3
 80042de:	f200 8498 	bhi.w	8004c12 <_dtoa_r+0xac2>
 80042e2:	e8df f013 	tbh	[pc, r3, lsl #1]
 80042e6:	03df      	.short	0x03df
 80042e8:	03e803bf 	.word	0x03e803bf
 80042ec:	04f5      	.short	0x04f5
 80042ee:	9a05      	ldr	r2, [sp, #20]
 80042f0:	f242 730f 	movw	r3, #9999	; 0x270f
 80042f4:	6013      	str	r3, [r2, #0]
 80042f6:	9b00      	ldr	r3, [sp, #0]
 80042f8:	b983      	cbnz	r3, 800431c <_dtoa_r+0x1cc>
 80042fa:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80042fe:	b96b      	cbnz	r3, 800431c <_dtoa_r+0x1cc>
 8004300:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004302:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004378 <_dtoa_r+0x228>
 8004306:	2b00      	cmp	r3, #0
 8004308:	f43f af61 	beq.w	80041ce <_dtoa_r+0x7e>
 800430c:	f10b 0308 	add.w	r3, fp, #8
 8004310:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004312:	4658      	mov	r0, fp
 8004314:	6013      	str	r3, [r2, #0]
 8004316:	b01b      	add	sp, #108	; 0x6c
 8004318:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800431c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800431e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 800437c <_dtoa_r+0x22c>
 8004322:	2b00      	cmp	r3, #0
 8004324:	f43f af53 	beq.w	80041ce <_dtoa_r+0x7e>
 8004328:	f10b 0303 	add.w	r3, fp, #3
 800432c:	e7f0      	b.n	8004310 <_dtoa_r+0x1c0>
 800432e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004332:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004336:	950f      	str	r5, [sp, #60]	; 0x3c
 8004338:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 800433c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004340:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004342:	e76f      	b.n	8004224 <_dtoa_r+0xd4>
 8004344:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004380 <_dtoa_r+0x230>
 8004348:	4658      	mov	r0, fp
 800434a:	b01b      	add	sp, #108	; 0x6c
 800434c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004350:	636f4361 	.word	0x636f4361
 8004354:	3fd287a7 	.word	0x3fd287a7
 8004358:	8b60c8b3 	.word	0x8b60c8b3
 800435c:	3fc68a28 	.word	0x3fc68a28
 8004360:	509f79fb 	.word	0x509f79fb
 8004364:	3fd34413 	.word	0x3fd34413
 8004368:	7ff00000 	.word	0x7ff00000
 800436c:	080071b9 	.word	0x080071b9
 8004370:	3ff80000 	.word	0x3ff80000
 8004374:	08007218 	.word	0x08007218
 8004378:	080071dc 	.word	0x080071dc
 800437c:	080071e8 	.word	0x080071e8
 8004380:	080071b8 	.word	0x080071b8
 8004384:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004388:	2501      	movs	r5, #1
 800438a:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 800438e:	2300      	movs	r3, #0
 8004390:	9302      	str	r3, [sp, #8]
 8004392:	9307      	str	r3, [sp, #28]
 8004394:	2100      	movs	r1, #0
 8004396:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800439a:	940e      	str	r4, [sp, #56]	; 0x38
 800439c:	4648      	mov	r0, r9
 800439e:	f001 fdcd 	bl	8005f3c <_Balloc>
 80043a2:	2c0e      	cmp	r4, #14
 80043a4:	4683      	mov	fp, r0
 80043a6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80043aa:	f200 80fb 	bhi.w	80045a4 <_dtoa_r+0x454>
 80043ae:	2d00      	cmp	r5, #0
 80043b0:	f000 80f8 	beq.w	80045a4 <_dtoa_r+0x454>
 80043b4:	ed9d 7b00 	vldr	d7, [sp]
 80043b8:	9906      	ldr	r1, [sp, #24]
 80043ba:	2900      	cmp	r1, #0
 80043bc:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80043c0:	f340 83e5 	ble.w	8004b8e <_dtoa_r+0xa3e>
 80043c4:	4b9d      	ldr	r3, [pc, #628]	; (800463c <_dtoa_r+0x4ec>)
 80043c6:	f001 020f 	and.w	r2, r1, #15
 80043ca:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80043ce:	ed93 7b00 	vldr	d7, [r3]
 80043d2:	110c      	asrs	r4, r1, #4
 80043d4:	06e2      	lsls	r2, r4, #27
 80043d6:	ed8d 7b00 	vstr	d7, [sp]
 80043da:	f140 849e 	bpl.w	8004d1a <_dtoa_r+0xbca>
 80043de:	4b98      	ldr	r3, [pc, #608]	; (8004640 <_dtoa_r+0x4f0>)
 80043e0:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80043e4:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80043e8:	f7fc fcd0 	bl	8000d8c <__aeabi_ddiv>
 80043ec:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80043f0:	f004 040f 	and.w	r4, r4, #15
 80043f4:	2603      	movs	r6, #3
 80043f6:	b17c      	cbz	r4, 8004418 <_dtoa_r+0x2c8>
 80043f8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80043fc:	4d90      	ldr	r5, [pc, #576]	; (8004640 <_dtoa_r+0x4f0>)
 80043fe:	07e3      	lsls	r3, r4, #31
 8004400:	d504      	bpl.n	800440c <_dtoa_r+0x2bc>
 8004402:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004406:	f7fc fb97 	bl	8000b38 <__aeabi_dmul>
 800440a:	3601      	adds	r6, #1
 800440c:	1064      	asrs	r4, r4, #1
 800440e:	f105 0508 	add.w	r5, r5, #8
 8004412:	d1f4      	bne.n	80043fe <_dtoa_r+0x2ae>
 8004414:	e9cd 0100 	strd	r0, r1, [sp]
 8004418:	e9dd 2300 	ldrd	r2, r3, [sp]
 800441c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004420:	f7fc fcb4 	bl	8000d8c <__aeabi_ddiv>
 8004424:	e9cd 0100 	strd	r0, r1, [sp]
 8004428:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800442a:	b143      	cbz	r3, 800443e <_dtoa_r+0x2ee>
 800442c:	2200      	movs	r2, #0
 800442e:	4b85      	ldr	r3, [pc, #532]	; (8004644 <_dtoa_r+0x4f4>)
 8004430:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004434:	f7fc fdf2 	bl	800101c <__aeabi_dcmplt>
 8004438:	2800      	cmp	r0, #0
 800443a:	f040 84ff 	bne.w	8004e3c <_dtoa_r+0xcec>
 800443e:	4630      	mov	r0, r6
 8004440:	f7fc fb10 	bl	8000a64 <__aeabi_i2d>
 8004444:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004448:	f7fc fb76 	bl	8000b38 <__aeabi_dmul>
 800444c:	4b7e      	ldr	r3, [pc, #504]	; (8004648 <_dtoa_r+0x4f8>)
 800444e:	2200      	movs	r2, #0
 8004450:	f7fc f9bc 	bl	80007cc <__adddf3>
 8004454:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004456:	4606      	mov	r6, r0
 8004458:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800445c:	2b00      	cmp	r3, #0
 800445e:	f000 841c 	beq.w	8004c9a <_dtoa_r+0xb4a>
 8004462:	9b06      	ldr	r3, [sp, #24]
 8004464:	9316      	str	r3, [sp, #88]	; 0x58
 8004466:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004468:	9312      	str	r3, [sp, #72]	; 0x48
 800446a:	e9dd 0100 	ldrd	r0, r1, [sp]
 800446e:	f7fc fe13 	bl	8001098 <__aeabi_d2iz>
 8004472:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004474:	4b71      	ldr	r3, [pc, #452]	; (800463c <_dtoa_r+0x4ec>)
 8004476:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800447a:	ed13 7b02 	vldr	d7, [r3, #-8]
 800447e:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004482:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004486:	f7fc faed 	bl	8000a64 <__aeabi_i2d>
 800448a:	460b      	mov	r3, r1
 800448c:	4602      	mov	r2, r0
 800448e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004492:	e9cd 6700 	strd	r6, r7, [sp]
 8004496:	f7fc f997 	bl	80007c8 <__aeabi_dsub>
 800449a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800449c:	b2ed      	uxtb	r5, r5
 800449e:	4606      	mov	r6, r0
 80044a0:	460f      	mov	r7, r1
 80044a2:	f10b 0401 	add.w	r4, fp, #1
 80044a6:	2b00      	cmp	r3, #0
 80044a8:	f000 8458 	beq.w	8004d5c <_dtoa_r+0xc0c>
 80044ac:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80044b0:	2000      	movs	r0, #0
 80044b2:	4966      	ldr	r1, [pc, #408]	; (800464c <_dtoa_r+0x4fc>)
 80044b4:	f7fc fc6a 	bl	8000d8c <__aeabi_ddiv>
 80044b8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80044bc:	f7fc f984 	bl	80007c8 <__aeabi_dsub>
 80044c0:	f88b 5000 	strb.w	r5, [fp]
 80044c4:	4632      	mov	r2, r6
 80044c6:	463b      	mov	r3, r7
 80044c8:	e9cd 0100 	strd	r0, r1, [sp]
 80044cc:	f7fc fdc4 	bl	8001058 <__aeabi_dcmpgt>
 80044d0:	2800      	cmp	r0, #0
 80044d2:	f040 8502 	bne.w	8004eda <_dtoa_r+0xd8a>
 80044d6:	4632      	mov	r2, r6
 80044d8:	463b      	mov	r3, r7
 80044da:	2000      	movs	r0, #0
 80044dc:	4959      	ldr	r1, [pc, #356]	; (8004644 <_dtoa_r+0x4f4>)
 80044de:	f7fc f973 	bl	80007c8 <__aeabi_dsub>
 80044e2:	4602      	mov	r2, r0
 80044e4:	460b      	mov	r3, r1
 80044e6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80044ea:	f7fc fdb5 	bl	8001058 <__aeabi_dcmpgt>
 80044ee:	2800      	cmp	r0, #0
 80044f0:	f040 84fb 	bne.w	8004eea <_dtoa_r+0xd9a>
 80044f4:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80044f6:	2a01      	cmp	r2, #1
 80044f8:	d050      	beq.n	800459c <_dtoa_r+0x44c>
 80044fa:	445a      	add	r2, fp
 80044fc:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004500:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004504:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004508:	4692      	mov	sl, r2
 800450a:	46cb      	mov	fp, r9
 800450c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004510:	e00c      	b.n	800452c <_dtoa_r+0x3dc>
 8004512:	2000      	movs	r0, #0
 8004514:	494b      	ldr	r1, [pc, #300]	; (8004644 <_dtoa_r+0x4f4>)
 8004516:	f7fc f957 	bl	80007c8 <__aeabi_dsub>
 800451a:	4642      	mov	r2, r8
 800451c:	464b      	mov	r3, r9
 800451e:	f7fc fd7d 	bl	800101c <__aeabi_dcmplt>
 8004522:	2800      	cmp	r0, #0
 8004524:	f040 84dc 	bne.w	8004ee0 <_dtoa_r+0xd90>
 8004528:	4554      	cmp	r4, sl
 800452a:	d030      	beq.n	800458e <_dtoa_r+0x43e>
 800452c:	4640      	mov	r0, r8
 800452e:	4649      	mov	r1, r9
 8004530:	2200      	movs	r2, #0
 8004532:	4b47      	ldr	r3, [pc, #284]	; (8004650 <_dtoa_r+0x500>)
 8004534:	f7fc fb00 	bl	8000b38 <__aeabi_dmul>
 8004538:	2200      	movs	r2, #0
 800453a:	4b45      	ldr	r3, [pc, #276]	; (8004650 <_dtoa_r+0x500>)
 800453c:	4680      	mov	r8, r0
 800453e:	4689      	mov	r9, r1
 8004540:	4630      	mov	r0, r6
 8004542:	4639      	mov	r1, r7
 8004544:	f7fc faf8 	bl	8000b38 <__aeabi_dmul>
 8004548:	460f      	mov	r7, r1
 800454a:	4606      	mov	r6, r0
 800454c:	f7fc fda4 	bl	8001098 <__aeabi_d2iz>
 8004550:	4605      	mov	r5, r0
 8004552:	f7fc fa87 	bl	8000a64 <__aeabi_i2d>
 8004556:	4602      	mov	r2, r0
 8004558:	460b      	mov	r3, r1
 800455a:	4630      	mov	r0, r6
 800455c:	4639      	mov	r1, r7
 800455e:	f7fc f933 	bl	80007c8 <__aeabi_dsub>
 8004562:	3530      	adds	r5, #48	; 0x30
 8004564:	b2ed      	uxtb	r5, r5
 8004566:	4642      	mov	r2, r8
 8004568:	464b      	mov	r3, r9
 800456a:	f804 5b01 	strb.w	r5, [r4], #1
 800456e:	4606      	mov	r6, r0
 8004570:	460f      	mov	r7, r1
 8004572:	f7fc fd53 	bl	800101c <__aeabi_dcmplt>
 8004576:	4632      	mov	r2, r6
 8004578:	463b      	mov	r3, r7
 800457a:	2800      	cmp	r0, #0
 800457c:	d0c9      	beq.n	8004512 <_dtoa_r+0x3c2>
 800457e:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004580:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004584:	9306      	str	r3, [sp, #24]
 8004586:	46d9      	mov	r9, fp
 8004588:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800458c:	e236      	b.n	80049fc <_dtoa_r+0x8ac>
 800458e:	46d9      	mov	r9, fp
 8004590:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004594:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004598:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800459c:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80045a0:	e9cd 3400 	strd	r3, r4, [sp]
 80045a4:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80045a6:	2b00      	cmp	r3, #0
 80045a8:	f2c0 80ae 	blt.w	8004708 <_dtoa_r+0x5b8>
 80045ac:	9a06      	ldr	r2, [sp, #24]
 80045ae:	2a0e      	cmp	r2, #14
 80045b0:	f300 80aa 	bgt.w	8004708 <_dtoa_r+0x5b8>
 80045b4:	4b21      	ldr	r3, [pc, #132]	; (800463c <_dtoa_r+0x4ec>)
 80045b6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80045ba:	ed93 7b00 	vldr	d7, [r3]
 80045be:	9b07      	ldr	r3, [sp, #28]
 80045c0:	2b00      	cmp	r3, #0
 80045c2:	ed8d 7b02 	vstr	d7, [sp, #8]
 80045c6:	f2c0 82be 	blt.w	8004b46 <_dtoa_r+0x9f6>
 80045ca:	e9dd 6700 	ldrd	r6, r7, [sp]
 80045ce:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80045d2:	4630      	mov	r0, r6
 80045d4:	4639      	mov	r1, r7
 80045d6:	f7fc fbd9 	bl	8000d8c <__aeabi_ddiv>
 80045da:	f7fc fd5d 	bl	8001098 <__aeabi_d2iz>
 80045de:	4605      	mov	r5, r0
 80045e0:	f7fc fa40 	bl	8000a64 <__aeabi_i2d>
 80045e4:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80045e8:	f7fc faa6 	bl	8000b38 <__aeabi_dmul>
 80045ec:	460b      	mov	r3, r1
 80045ee:	4602      	mov	r2, r0
 80045f0:	4639      	mov	r1, r7
 80045f2:	4630      	mov	r0, r6
 80045f4:	f7fc f8e8 	bl	80007c8 <__aeabi_dsub>
 80045f8:	f105 0330 	add.w	r3, r5, #48	; 0x30
 80045fc:	f88b 3000 	strb.w	r3, [fp]
 8004600:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004602:	2b01      	cmp	r3, #1
 8004604:	4606      	mov	r6, r0
 8004606:	460f      	mov	r7, r1
 8004608:	f10b 0401 	add.w	r4, fp, #1
 800460c:	d053      	beq.n	80046b6 <_dtoa_r+0x566>
 800460e:	2200      	movs	r2, #0
 8004610:	4b0f      	ldr	r3, [pc, #60]	; (8004650 <_dtoa_r+0x500>)
 8004612:	f7fc fa91 	bl	8000b38 <__aeabi_dmul>
 8004616:	2200      	movs	r2, #0
 8004618:	2300      	movs	r3, #0
 800461a:	4606      	mov	r6, r0
 800461c:	460f      	mov	r7, r1
 800461e:	f7fc fcf3 	bl	8001008 <__aeabi_dcmpeq>
 8004622:	2800      	cmp	r0, #0
 8004624:	f040 81ea 	bne.w	80049fc <_dtoa_r+0x8ac>
 8004628:	f8cd a000 	str.w	sl, [sp]
 800462c:	f8cd 901c 	str.w	r9, [sp, #28]
 8004630:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004634:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004638:	e017      	b.n	800466a <_dtoa_r+0x51a>
 800463a:	bf00      	nop
 800463c:	08007218 	.word	0x08007218
 8004640:	080071f0 	.word	0x080071f0
 8004644:	3ff00000 	.word	0x3ff00000
 8004648:	401c0000 	.word	0x401c0000
 800464c:	3fe00000 	.word	0x3fe00000
 8004650:	40240000 	.word	0x40240000
 8004654:	f7fc fa70 	bl	8000b38 <__aeabi_dmul>
 8004658:	2200      	movs	r2, #0
 800465a:	2300      	movs	r3, #0
 800465c:	4606      	mov	r6, r0
 800465e:	460f      	mov	r7, r1
 8004660:	f7fc fcd2 	bl	8001008 <__aeabi_dcmpeq>
 8004664:	2800      	cmp	r0, #0
 8004666:	f040 833d 	bne.w	8004ce4 <_dtoa_r+0xb94>
 800466a:	464a      	mov	r2, r9
 800466c:	4653      	mov	r3, sl
 800466e:	4630      	mov	r0, r6
 8004670:	4639      	mov	r1, r7
 8004672:	f7fc fb8b 	bl	8000d8c <__aeabi_ddiv>
 8004676:	f7fc fd0f 	bl	8001098 <__aeabi_d2iz>
 800467a:	4605      	mov	r5, r0
 800467c:	f7fc f9f2 	bl	8000a64 <__aeabi_i2d>
 8004680:	464a      	mov	r2, r9
 8004682:	4653      	mov	r3, sl
 8004684:	f7fc fa58 	bl	8000b38 <__aeabi_dmul>
 8004688:	4602      	mov	r2, r0
 800468a:	460b      	mov	r3, r1
 800468c:	4630      	mov	r0, r6
 800468e:	4639      	mov	r1, r7
 8004690:	f7fc f89a 	bl	80007c8 <__aeabi_dsub>
 8004694:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004698:	f804 cb01 	strb.w	ip, [r4], #1
 800469c:	eba4 0c0b 	sub.w	ip, r4, fp
 80046a0:	45e0      	cmp	r8, ip
 80046a2:	4606      	mov	r6, r0
 80046a4:	460f      	mov	r7, r1
 80046a6:	f04f 0200 	mov.w	r2, #0
 80046aa:	4bc1      	ldr	r3, [pc, #772]	; (80049b0 <_dtoa_r+0x860>)
 80046ac:	d1d2      	bne.n	8004654 <_dtoa_r+0x504>
 80046ae:	f8dd a000 	ldr.w	sl, [sp]
 80046b2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80046b6:	4632      	mov	r2, r6
 80046b8:	463b      	mov	r3, r7
 80046ba:	4630      	mov	r0, r6
 80046bc:	4639      	mov	r1, r7
 80046be:	f7fc f885 	bl	80007cc <__adddf3>
 80046c2:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80046c6:	4606      	mov	r6, r0
 80046c8:	460f      	mov	r7, r1
 80046ca:	f7fc fcc5 	bl	8001058 <__aeabi_dcmpgt>
 80046ce:	b958      	cbnz	r0, 80046e8 <_dtoa_r+0x598>
 80046d0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80046d4:	4630      	mov	r0, r6
 80046d6:	4639      	mov	r1, r7
 80046d8:	f7fc fc96 	bl	8001008 <__aeabi_dcmpeq>
 80046dc:	2800      	cmp	r0, #0
 80046de:	f000 818d 	beq.w	80049fc <_dtoa_r+0x8ac>
 80046e2:	07e9      	lsls	r1, r5, #31
 80046e4:	f140 818a 	bpl.w	80049fc <_dtoa_r+0x8ac>
 80046e8:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80046ec:	e005      	b.n	80046fa <_dtoa_r+0x5aa>
 80046ee:	459b      	cmp	fp, r3
 80046f0:	f000 8373 	beq.w	8004dda <_dtoa_r+0xc8a>
 80046f4:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 80046f8:	461c      	mov	r4, r3
 80046fa:	2d39      	cmp	r5, #57	; 0x39
 80046fc:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004700:	d0f5      	beq.n	80046ee <_dtoa_r+0x59e>
 8004702:	3501      	adds	r5, #1
 8004704:	701d      	strb	r5, [r3, #0]
 8004706:	e179      	b.n	80049fc <_dtoa_r+0x8ac>
 8004708:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800470a:	2a00      	cmp	r2, #0
 800470c:	d03b      	beq.n	8004786 <_dtoa_r+0x636>
 800470e:	9a02      	ldr	r2, [sp, #8]
 8004710:	2a01      	cmp	r2, #1
 8004712:	f340 820b 	ble.w	8004b2c <_dtoa_r+0x9dc>
 8004716:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004718:	1e5f      	subs	r7, r3, #1
 800471a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800471c:	42bb      	cmp	r3, r7
 800471e:	f2c0 82e6 	blt.w	8004cee <_dtoa_r+0xb9e>
 8004722:	1bdf      	subs	r7, r3, r7
 8004724:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004726:	2b00      	cmp	r3, #0
 8004728:	f2c0 830b 	blt.w	8004d42 <_dtoa_r+0xbf2>
 800472c:	9a08      	ldr	r2, [sp, #32]
 800472e:	4614      	mov	r4, r2
 8004730:	441a      	add	r2, r3
 8004732:	4498      	add	r8, r3
 8004734:	9208      	str	r2, [sp, #32]
 8004736:	2101      	movs	r1, #1
 8004738:	4648      	mov	r0, r9
 800473a:	f001 fcbf 	bl	80060bc <__i2b>
 800473e:	4605      	mov	r5, r0
 8004740:	e024      	b.n	800478c <_dtoa_r+0x63c>
 8004742:	2301      	movs	r3, #1
 8004744:	930d      	str	r3, [sp, #52]	; 0x34
 8004746:	e5af      	b.n	80042a8 <_dtoa_r+0x158>
 8004748:	9a08      	ldr	r2, [sp, #32]
 800474a:	9b06      	ldr	r3, [sp, #24]
 800474c:	1ad2      	subs	r2, r2, r3
 800474e:	425b      	negs	r3, r3
 8004750:	930b      	str	r3, [sp, #44]	; 0x2c
 8004752:	2300      	movs	r3, #0
 8004754:	9208      	str	r2, [sp, #32]
 8004756:	930c      	str	r3, [sp, #48]	; 0x30
 8004758:	e5b5      	b.n	80042c6 <_dtoa_r+0x176>
 800475a:	f1c4 0301 	rsb	r3, r4, #1
 800475e:	9308      	str	r3, [sp, #32]
 8004760:	f04f 0800 	mov.w	r8, #0
 8004764:	e5a7      	b.n	80042b6 <_dtoa_r+0x166>
 8004766:	f8dd 8018 	ldr.w	r8, [sp, #24]
 800476a:	4640      	mov	r0, r8
 800476c:	f7fc f97a 	bl	8000a64 <__aeabi_i2d>
 8004770:	4632      	mov	r2, r6
 8004772:	463b      	mov	r3, r7
 8004774:	f7fc fc48 	bl	8001008 <__aeabi_dcmpeq>
 8004778:	2800      	cmp	r0, #0
 800477a:	f47f ad81 	bne.w	8004280 <_dtoa_r+0x130>
 800477e:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004782:	9306      	str	r3, [sp, #24]
 8004784:	e57c      	b.n	8004280 <_dtoa_r+0x130>
 8004786:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004788:	9c08      	ldr	r4, [sp, #32]
 800478a:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 800478c:	2c00      	cmp	r4, #0
 800478e:	dd0c      	ble.n	80047aa <_dtoa_r+0x65a>
 8004790:	f1b8 0f00 	cmp.w	r8, #0
 8004794:	dd09      	ble.n	80047aa <_dtoa_r+0x65a>
 8004796:	4544      	cmp	r4, r8
 8004798:	9a08      	ldr	r2, [sp, #32]
 800479a:	4623      	mov	r3, r4
 800479c:	bfa8      	it	ge
 800479e:	4643      	movge	r3, r8
 80047a0:	1ad2      	subs	r2, r2, r3
 80047a2:	9208      	str	r2, [sp, #32]
 80047a4:	1ae4      	subs	r4, r4, r3
 80047a6:	eba8 0803 	sub.w	r8, r8, r3
 80047aa:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80047ac:	b16b      	cbz	r3, 80047ca <_dtoa_r+0x67a>
 80047ae:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80047b0:	2a00      	cmp	r2, #0
 80047b2:	f000 8290 	beq.w	8004cd6 <_dtoa_r+0xb86>
 80047b6:	1bde      	subs	r6, r3, r7
 80047b8:	2f00      	cmp	r7, #0
 80047ba:	f040 819b 	bne.w	8004af4 <_dtoa_r+0x9a4>
 80047be:	4651      	mov	r1, sl
 80047c0:	4632      	mov	r2, r6
 80047c2:	4648      	mov	r0, r9
 80047c4:	f001 fd2a 	bl	800621c <__pow5mult>
 80047c8:	4682      	mov	sl, r0
 80047ca:	2101      	movs	r1, #1
 80047cc:	4648      	mov	r0, r9
 80047ce:	f001 fc75 	bl	80060bc <__i2b>
 80047d2:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80047d4:	4606      	mov	r6, r0
 80047d6:	2a00      	cmp	r2, #0
 80047d8:	f040 8125 	bne.w	8004a26 <_dtoa_r+0x8d6>
 80047dc:	9b02      	ldr	r3, [sp, #8]
 80047de:	2b01      	cmp	r3, #1
 80047e0:	f340 816c 	ble.w	8004abc <_dtoa_r+0x96c>
 80047e4:	2001      	movs	r0, #1
 80047e6:	4440      	add	r0, r8
 80047e8:	f010 001f 	ands.w	r0, r0, #31
 80047ec:	f000 8119 	beq.w	8004a22 <_dtoa_r+0x8d2>
 80047f0:	f1c0 0320 	rsb	r3, r0, #32
 80047f4:	2b04      	cmp	r3, #4
 80047f6:	f340 83ac 	ble.w	8004f52 <_dtoa_r+0xe02>
 80047fa:	f1c0 001c 	rsb	r0, r0, #28
 80047fe:	9b08      	ldr	r3, [sp, #32]
 8004800:	4403      	add	r3, r0
 8004802:	9308      	str	r3, [sp, #32]
 8004804:	4404      	add	r4, r0
 8004806:	4480      	add	r8, r0
 8004808:	9b08      	ldr	r3, [sp, #32]
 800480a:	2b00      	cmp	r3, #0
 800480c:	dd05      	ble.n	800481a <_dtoa_r+0x6ca>
 800480e:	4651      	mov	r1, sl
 8004810:	461a      	mov	r2, r3
 8004812:	4648      	mov	r0, r9
 8004814:	f001 fd52 	bl	80062bc <__lshift>
 8004818:	4682      	mov	sl, r0
 800481a:	f1b8 0f00 	cmp.w	r8, #0
 800481e:	dd05      	ble.n	800482c <_dtoa_r+0x6dc>
 8004820:	4631      	mov	r1, r6
 8004822:	4642      	mov	r2, r8
 8004824:	4648      	mov	r0, r9
 8004826:	f001 fd49 	bl	80062bc <__lshift>
 800482a:	4606      	mov	r6, r0
 800482c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800482e:	2b00      	cmp	r3, #0
 8004830:	d177      	bne.n	8004922 <_dtoa_r+0x7d2>
 8004832:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004834:	2b00      	cmp	r3, #0
 8004836:	f340 8209 	ble.w	8004c4c <_dtoa_r+0xafc>
 800483a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800483c:	2b00      	cmp	r3, #0
 800483e:	f000 8089 	beq.w	8004954 <_dtoa_r+0x804>
 8004842:	2c00      	cmp	r4, #0
 8004844:	f300 816b 	bgt.w	8004b1e <_dtoa_r+0x9ce>
 8004848:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800484a:	2b00      	cmp	r3, #0
 800484c:	f040 81cd 	bne.w	8004bea <_dtoa_r+0xa9a>
 8004850:	46a8      	mov	r8, r5
 8004852:	9a00      	ldr	r2, [sp, #0]
 8004854:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004858:	f002 0201 	and.w	r2, r2, #1
 800485c:	920a      	str	r2, [sp, #40]	; 0x28
 800485e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004860:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004864:	441a      	add	r2, r3
 8004866:	465f      	mov	r7, fp
 8004868:	9209      	str	r2, [sp, #36]	; 0x24
 800486a:	46b3      	mov	fp, r6
 800486c:	4659      	mov	r1, fp
 800486e:	4650      	mov	r0, sl
 8004870:	f7ff fbdc 	bl	800402c <quorem>
 8004874:	4629      	mov	r1, r5
 8004876:	4604      	mov	r4, r0
 8004878:	4650      	mov	r0, sl
 800487a:	f001 fd75 	bl	8006368 <__mcmp>
 800487e:	4659      	mov	r1, fp
 8004880:	4606      	mov	r6, r0
 8004882:	4642      	mov	r2, r8
 8004884:	4648      	mov	r0, r9
 8004886:	f001 fd8b 	bl	80063a0 <__mdiff>
 800488a:	f104 0330 	add.w	r3, r4, #48	; 0x30
 800488e:	9300      	str	r3, [sp, #0]
 8004890:	68c3      	ldr	r3, [r0, #12]
 8004892:	4601      	mov	r1, r0
 8004894:	2b00      	cmp	r3, #0
 8004896:	f040 81d4 	bne.w	8004c42 <_dtoa_r+0xaf2>
 800489a:	9008      	str	r0, [sp, #32]
 800489c:	4650      	mov	r0, sl
 800489e:	f001 fd63 	bl	8006368 <__mcmp>
 80048a2:	9a08      	ldr	r2, [sp, #32]
 80048a4:	9007      	str	r0, [sp, #28]
 80048a6:	4611      	mov	r1, r2
 80048a8:	4648      	mov	r0, r9
 80048aa:	f001 fb6d 	bl	8005f88 <_Bfree>
 80048ae:	9b07      	ldr	r3, [sp, #28]
 80048b0:	b933      	cbnz	r3, 80048c0 <_dtoa_r+0x770>
 80048b2:	9a02      	ldr	r2, [sp, #8]
 80048b4:	b922      	cbnz	r2, 80048c0 <_dtoa_r+0x770>
 80048b6:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80048b8:	2b00      	cmp	r3, #0
 80048ba:	f000 8319 	beq.w	8004ef0 <_dtoa_r+0xda0>
 80048be:	9b02      	ldr	r3, [sp, #8]
 80048c0:	2e00      	cmp	r6, #0
 80048c2:	f2c0 821c 	blt.w	8004cfe <_dtoa_r+0xbae>
 80048c6:	d105      	bne.n	80048d4 <_dtoa_r+0x784>
 80048c8:	9a02      	ldr	r2, [sp, #8]
 80048ca:	b91a      	cbnz	r2, 80048d4 <_dtoa_r+0x784>
 80048cc:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80048ce:	2a00      	cmp	r2, #0
 80048d0:	f000 8215 	beq.w	8004cfe <_dtoa_r+0xbae>
 80048d4:	2b00      	cmp	r3, #0
 80048d6:	f107 0401 	add.w	r4, r7, #1
 80048da:	f300 8225 	bgt.w	8004d28 <_dtoa_r+0xbd8>
 80048de:	9b00      	ldr	r3, [sp, #0]
 80048e0:	703b      	strb	r3, [r7, #0]
 80048e2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80048e4:	42bb      	cmp	r3, r7
 80048e6:	f000 8230 	beq.w	8004d4a <_dtoa_r+0xbfa>
 80048ea:	4651      	mov	r1, sl
 80048ec:	2300      	movs	r3, #0
 80048ee:	220a      	movs	r2, #10
 80048f0:	4648      	mov	r0, r9
 80048f2:	f001 fb53 	bl	8005f9c <__multadd>
 80048f6:	4545      	cmp	r5, r8
 80048f8:	4682      	mov	sl, r0
 80048fa:	4629      	mov	r1, r5
 80048fc:	f04f 0300 	mov.w	r3, #0
 8004900:	f04f 020a 	mov.w	r2, #10
 8004904:	4648      	mov	r0, r9
 8004906:	f000 8196 	beq.w	8004c36 <_dtoa_r+0xae6>
 800490a:	f001 fb47 	bl	8005f9c <__multadd>
 800490e:	4641      	mov	r1, r8
 8004910:	4605      	mov	r5, r0
 8004912:	2300      	movs	r3, #0
 8004914:	220a      	movs	r2, #10
 8004916:	4648      	mov	r0, r9
 8004918:	f001 fb40 	bl	8005f9c <__multadd>
 800491c:	4627      	mov	r7, r4
 800491e:	4680      	mov	r8, r0
 8004920:	e7a4      	b.n	800486c <_dtoa_r+0x71c>
 8004922:	4631      	mov	r1, r6
 8004924:	4650      	mov	r0, sl
 8004926:	f001 fd1f 	bl	8006368 <__mcmp>
 800492a:	2800      	cmp	r0, #0
 800492c:	da81      	bge.n	8004832 <_dtoa_r+0x6e2>
 800492e:	9f06      	ldr	r7, [sp, #24]
 8004930:	4651      	mov	r1, sl
 8004932:	2300      	movs	r3, #0
 8004934:	220a      	movs	r2, #10
 8004936:	4648      	mov	r0, r9
 8004938:	3f01      	subs	r7, #1
 800493a:	9706      	str	r7, [sp, #24]
 800493c:	f001 fb2e 	bl	8005f9c <__multadd>
 8004940:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004942:	4682      	mov	sl, r0
 8004944:	2b00      	cmp	r3, #0
 8004946:	f040 82eb 	bne.w	8004f20 <_dtoa_r+0xdd0>
 800494a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800494c:	2b00      	cmp	r3, #0
 800494e:	f340 82f3 	ble.w	8004f38 <_dtoa_r+0xde8>
 8004952:	9309      	str	r3, [sp, #36]	; 0x24
 8004954:	465c      	mov	r4, fp
 8004956:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800495a:	e002      	b.n	8004962 <_dtoa_r+0x812>
 800495c:	f001 fb1e 	bl	8005f9c <__multadd>
 8004960:	4682      	mov	sl, r0
 8004962:	4631      	mov	r1, r6
 8004964:	4650      	mov	r0, sl
 8004966:	f7ff fb61 	bl	800402c <quorem>
 800496a:	f100 0730 	add.w	r7, r0, #48	; 0x30
 800496e:	f804 7b01 	strb.w	r7, [r4], #1
 8004972:	eba4 030b 	sub.w	r3, r4, fp
 8004976:	4598      	cmp	r8, r3
 8004978:	f04f 020a 	mov.w	r2, #10
 800497c:	f04f 0300 	mov.w	r3, #0
 8004980:	4651      	mov	r1, sl
 8004982:	4648      	mov	r0, r9
 8004984:	dcea      	bgt.n	800495c <_dtoa_r+0x80c>
 8004986:	2300      	movs	r3, #0
 8004988:	9700      	str	r7, [sp, #0]
 800498a:	9302      	str	r3, [sp, #8]
 800498c:	4651      	mov	r1, sl
 800498e:	2201      	movs	r2, #1
 8004990:	4648      	mov	r0, r9
 8004992:	f001 fc93 	bl	80062bc <__lshift>
 8004996:	4631      	mov	r1, r6
 8004998:	4682      	mov	sl, r0
 800499a:	f001 fce5 	bl	8006368 <__mcmp>
 800499e:	2800      	cmp	r0, #0
 80049a0:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 80049a4:	dc14      	bgt.n	80049d0 <_dtoa_r+0x880>
 80049a6:	d108      	bne.n	80049ba <_dtoa_r+0x86a>
 80049a8:	9b00      	ldr	r3, [sp, #0]
 80049aa:	07db      	lsls	r3, r3, #31
 80049ac:	d410      	bmi.n	80049d0 <_dtoa_r+0x880>
 80049ae:	e004      	b.n	80049ba <_dtoa_r+0x86a>
 80049b0:	40240000 	.word	0x40240000
 80049b4:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 80049b8:	461c      	mov	r4, r3
 80049ba:	2a30      	cmp	r2, #48	; 0x30
 80049bc:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80049c0:	d0f8      	beq.n	80049b4 <_dtoa_r+0x864>
 80049c2:	e00b      	b.n	80049dc <_dtoa_r+0x88c>
 80049c4:	459b      	cmp	fp, r3
 80049c6:	f000 814e 	beq.w	8004c66 <_dtoa_r+0xb16>
 80049ca:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80049ce:	461c      	mov	r4, r3
 80049d0:	2a39      	cmp	r2, #57	; 0x39
 80049d2:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80049d6:	d0f5      	beq.n	80049c4 <_dtoa_r+0x874>
 80049d8:	3201      	adds	r2, #1
 80049da:	701a      	strb	r2, [r3, #0]
 80049dc:	4631      	mov	r1, r6
 80049de:	4648      	mov	r0, r9
 80049e0:	f001 fad2 	bl	8005f88 <_Bfree>
 80049e4:	b155      	cbz	r5, 80049fc <_dtoa_r+0x8ac>
 80049e6:	9902      	ldr	r1, [sp, #8]
 80049e8:	b121      	cbz	r1, 80049f4 <_dtoa_r+0x8a4>
 80049ea:	42a9      	cmp	r1, r5
 80049ec:	d002      	beq.n	80049f4 <_dtoa_r+0x8a4>
 80049ee:	4648      	mov	r0, r9
 80049f0:	f001 faca 	bl	8005f88 <_Bfree>
 80049f4:	4629      	mov	r1, r5
 80049f6:	4648      	mov	r0, r9
 80049f8:	f001 fac6 	bl	8005f88 <_Bfree>
 80049fc:	4651      	mov	r1, sl
 80049fe:	4648      	mov	r0, r9
 8004a00:	f001 fac2 	bl	8005f88 <_Bfree>
 8004a04:	2200      	movs	r2, #0
 8004a06:	9b06      	ldr	r3, [sp, #24]
 8004a08:	7022      	strb	r2, [r4, #0]
 8004a0a:	9a05      	ldr	r2, [sp, #20]
 8004a0c:	3301      	adds	r3, #1
 8004a0e:	6013      	str	r3, [r2, #0]
 8004a10:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004a12:	2b00      	cmp	r3, #0
 8004a14:	f43f abdb 	beq.w	80041ce <_dtoa_r+0x7e>
 8004a18:	4658      	mov	r0, fp
 8004a1a:	601c      	str	r4, [r3, #0]
 8004a1c:	b01b      	add	sp, #108	; 0x6c
 8004a1e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004a22:	201c      	movs	r0, #28
 8004a24:	e6eb      	b.n	80047fe <_dtoa_r+0x6ae>
 8004a26:	4601      	mov	r1, r0
 8004a28:	4648      	mov	r0, r9
 8004a2a:	f001 fbf7 	bl	800621c <__pow5mult>
 8004a2e:	9b02      	ldr	r3, [sp, #8]
 8004a30:	2b01      	cmp	r3, #1
 8004a32:	4606      	mov	r6, r0
 8004a34:	f340 80d4 	ble.w	8004be0 <_dtoa_r+0xa90>
 8004a38:	2300      	movs	r3, #0
 8004a3a:	930c      	str	r3, [sp, #48]	; 0x30
 8004a3c:	6933      	ldr	r3, [r6, #16]
 8004a3e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004a42:	6918      	ldr	r0, [r3, #16]
 8004a44:	f001 faea 	bl	800601c <__hi0bits>
 8004a48:	f1c0 0020 	rsb	r0, r0, #32
 8004a4c:	e6cb      	b.n	80047e6 <_dtoa_r+0x696>
 8004a4e:	900d      	str	r0, [sp, #52]	; 0x34
 8004a50:	e42a      	b.n	80042a8 <_dtoa_r+0x158>
 8004a52:	2501      	movs	r5, #1
 8004a54:	e440      	b.n	80042d8 <_dtoa_r+0x188>
 8004a56:	f1c3 0820 	rsb	r8, r3, #32
 8004a5a:	9b00      	ldr	r3, [sp, #0]
 8004a5c:	fa03 f008 	lsl.w	r0, r3, r8
 8004a60:	f7ff bbd8 	b.w	8004214 <_dtoa_r+0xc4>
 8004a64:	2300      	movs	r3, #0
 8004a66:	930a      	str	r3, [sp, #40]	; 0x28
 8004a68:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004a6c:	4413      	add	r3, r2
 8004a6e:	930e      	str	r3, [sp, #56]	; 0x38
 8004a70:	3301      	adds	r3, #1
 8004a72:	2b01      	cmp	r3, #1
 8004a74:	461e      	mov	r6, r3
 8004a76:	9309      	str	r3, [sp, #36]	; 0x24
 8004a78:	bfb8      	it	lt
 8004a7a:	2601      	movlt	r6, #1
 8004a7c:	2100      	movs	r1, #0
 8004a7e:	2e17      	cmp	r6, #23
 8004a80:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004a84:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004a86:	f77f ac89 	ble.w	800439c <_dtoa_r+0x24c>
 8004a8a:	2201      	movs	r2, #1
 8004a8c:	2304      	movs	r3, #4
 8004a8e:	005b      	lsls	r3, r3, #1
 8004a90:	f103 0014 	add.w	r0, r3, #20
 8004a94:	42b0      	cmp	r0, r6
 8004a96:	4611      	mov	r1, r2
 8004a98:	f102 0201 	add.w	r2, r2, #1
 8004a9c:	d9f7      	bls.n	8004a8e <_dtoa_r+0x93e>
 8004a9e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004aa2:	e47b      	b.n	800439c <_dtoa_r+0x24c>
 8004aa4:	2300      	movs	r3, #0
 8004aa6:	930a      	str	r3, [sp, #40]	; 0x28
 8004aa8:	9e07      	ldr	r6, [sp, #28]
 8004aaa:	2e00      	cmp	r6, #0
 8004aac:	f340 80e2 	ble.w	8004c74 <_dtoa_r+0xb24>
 8004ab0:	960e      	str	r6, [sp, #56]	; 0x38
 8004ab2:	9609      	str	r6, [sp, #36]	; 0x24
 8004ab4:	e7e2      	b.n	8004a7c <_dtoa_r+0x92c>
 8004ab6:	2301      	movs	r3, #1
 8004ab8:	930a      	str	r3, [sp, #40]	; 0x28
 8004aba:	e7f5      	b.n	8004aa8 <_dtoa_r+0x958>
 8004abc:	9b00      	ldr	r3, [sp, #0]
 8004abe:	2b00      	cmp	r3, #0
 8004ac0:	f47f ae90 	bne.w	80047e4 <_dtoa_r+0x694>
 8004ac4:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004ac8:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004acc:	2b00      	cmp	r3, #0
 8004ace:	f040 8192 	bne.w	8004df6 <_dtoa_r+0xca6>
 8004ad2:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004ad6:	0d1b      	lsrs	r3, r3, #20
 8004ad8:	051b      	lsls	r3, r3, #20
 8004ada:	b12b      	cbz	r3, 8004ae8 <_dtoa_r+0x998>
 8004adc:	9b08      	ldr	r3, [sp, #32]
 8004ade:	3301      	adds	r3, #1
 8004ae0:	9308      	str	r3, [sp, #32]
 8004ae2:	f108 0801 	add.w	r8, r8, #1
 8004ae6:	2301      	movs	r3, #1
 8004ae8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004aea:	930c      	str	r3, [sp, #48]	; 0x30
 8004aec:	2a00      	cmp	r2, #0
 8004aee:	f43f ae79 	beq.w	80047e4 <_dtoa_r+0x694>
 8004af2:	e7a3      	b.n	8004a3c <_dtoa_r+0x8ec>
 8004af4:	463a      	mov	r2, r7
 8004af6:	4629      	mov	r1, r5
 8004af8:	4648      	mov	r0, r9
 8004afa:	f001 fb8f 	bl	800621c <__pow5mult>
 8004afe:	4652      	mov	r2, sl
 8004b00:	4601      	mov	r1, r0
 8004b02:	4605      	mov	r5, r0
 8004b04:	4648      	mov	r0, r9
 8004b06:	f001 fae3 	bl	80060d0 <__multiply>
 8004b0a:	4651      	mov	r1, sl
 8004b0c:	4607      	mov	r7, r0
 8004b0e:	4648      	mov	r0, r9
 8004b10:	f001 fa3a 	bl	8005f88 <_Bfree>
 8004b14:	46ba      	mov	sl, r7
 8004b16:	2e00      	cmp	r6, #0
 8004b18:	f43f ae57 	beq.w	80047ca <_dtoa_r+0x67a>
 8004b1c:	e64f      	b.n	80047be <_dtoa_r+0x66e>
 8004b1e:	4629      	mov	r1, r5
 8004b20:	4622      	mov	r2, r4
 8004b22:	4648      	mov	r0, r9
 8004b24:	f001 fbca 	bl	80062bc <__lshift>
 8004b28:	4605      	mov	r5, r0
 8004b2a:	e68d      	b.n	8004848 <_dtoa_r+0x6f8>
 8004b2c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004b2e:	2a00      	cmp	r2, #0
 8004b30:	f000 815d 	beq.w	8004dee <_dtoa_r+0xc9e>
 8004b34:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004b38:	9a08      	ldr	r2, [sp, #32]
 8004b3a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004b3c:	4614      	mov	r4, r2
 8004b3e:	441a      	add	r2, r3
 8004b40:	4498      	add	r8, r3
 8004b42:	9208      	str	r2, [sp, #32]
 8004b44:	e5f7      	b.n	8004736 <_dtoa_r+0x5e6>
 8004b46:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b48:	2b00      	cmp	r3, #0
 8004b4a:	f73f ad3e 	bgt.w	80045ca <_dtoa_r+0x47a>
 8004b4e:	f040 80bc 	bne.w	8004cca <_dtoa_r+0xb7a>
 8004b52:	ec51 0b17 	vmov	r0, r1, d7
 8004b56:	2200      	movs	r2, #0
 8004b58:	4bb2      	ldr	r3, [pc, #712]	; (8004e24 <_dtoa_r+0xcd4>)
 8004b5a:	f7fb ffed 	bl	8000b38 <__aeabi_dmul>
 8004b5e:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004b62:	f7fc fa6f 	bl	8001044 <__aeabi_dcmpge>
 8004b66:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004b68:	4635      	mov	r5, r6
 8004b6a:	2800      	cmp	r0, #0
 8004b6c:	d176      	bne.n	8004c5c <_dtoa_r+0xb0c>
 8004b6e:	9a06      	ldr	r2, [sp, #24]
 8004b70:	2331      	movs	r3, #49	; 0x31
 8004b72:	3201      	adds	r2, #1
 8004b74:	9206      	str	r2, [sp, #24]
 8004b76:	f88b 3000 	strb.w	r3, [fp]
 8004b7a:	f10b 0401 	add.w	r4, fp, #1
 8004b7e:	4631      	mov	r1, r6
 8004b80:	4648      	mov	r0, r9
 8004b82:	f001 fa01 	bl	8005f88 <_Bfree>
 8004b86:	2d00      	cmp	r5, #0
 8004b88:	f47f af34 	bne.w	80049f4 <_dtoa_r+0x8a4>
 8004b8c:	e736      	b.n	80049fc <_dtoa_r+0x8ac>
 8004b8e:	f000 8142 	beq.w	8004e16 <_dtoa_r+0xcc6>
 8004b92:	9b06      	ldr	r3, [sp, #24]
 8004b94:	425c      	negs	r4, r3
 8004b96:	4ba4      	ldr	r3, [pc, #656]	; (8004e28 <_dtoa_r+0xcd8>)
 8004b98:	f004 020f 	and.w	r2, r4, #15
 8004b9c:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004ba0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004ba4:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004ba8:	f7fb ffc6 	bl	8000b38 <__aeabi_dmul>
 8004bac:	1124      	asrs	r4, r4, #4
 8004bae:	e9cd 0100 	strd	r0, r1, [sp]
 8004bb2:	f000 81c6 	beq.w	8004f42 <_dtoa_r+0xdf2>
 8004bb6:	4d9d      	ldr	r5, [pc, #628]	; (8004e2c <_dtoa_r+0xcdc>)
 8004bb8:	2300      	movs	r3, #0
 8004bba:	2602      	movs	r6, #2
 8004bbc:	07e7      	lsls	r7, r4, #31
 8004bbe:	d505      	bpl.n	8004bcc <_dtoa_r+0xa7c>
 8004bc0:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004bc4:	f7fb ffb8 	bl	8000b38 <__aeabi_dmul>
 8004bc8:	3601      	adds	r6, #1
 8004bca:	2301      	movs	r3, #1
 8004bcc:	1064      	asrs	r4, r4, #1
 8004bce:	f105 0508 	add.w	r5, r5, #8
 8004bd2:	d1f3      	bne.n	8004bbc <_dtoa_r+0xa6c>
 8004bd4:	2b00      	cmp	r3, #0
 8004bd6:	f43f ac27 	beq.w	8004428 <_dtoa_r+0x2d8>
 8004bda:	e9cd 0100 	strd	r0, r1, [sp]
 8004bde:	e423      	b.n	8004428 <_dtoa_r+0x2d8>
 8004be0:	9b00      	ldr	r3, [sp, #0]
 8004be2:	2b00      	cmp	r3, #0
 8004be4:	f43f af6e 	beq.w	8004ac4 <_dtoa_r+0x974>
 8004be8:	e726      	b.n	8004a38 <_dtoa_r+0x8e8>
 8004bea:	6869      	ldr	r1, [r5, #4]
 8004bec:	4648      	mov	r0, r9
 8004bee:	f001 f9a5 	bl	8005f3c <_Balloc>
 8004bf2:	692b      	ldr	r3, [r5, #16]
 8004bf4:	3302      	adds	r3, #2
 8004bf6:	009a      	lsls	r2, r3, #2
 8004bf8:	4604      	mov	r4, r0
 8004bfa:	f105 010c 	add.w	r1, r5, #12
 8004bfe:	300c      	adds	r0, #12
 8004c00:	f7fb fc7e 	bl	8000500 <memcpy>
 8004c04:	4621      	mov	r1, r4
 8004c06:	2201      	movs	r2, #1
 8004c08:	4648      	mov	r0, r9
 8004c0a:	f001 fb57 	bl	80062bc <__lshift>
 8004c0e:	4680      	mov	r8, r0
 8004c10:	e61f      	b.n	8004852 <_dtoa_r+0x702>
 8004c12:	2400      	movs	r4, #0
 8004c14:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004c18:	4621      	mov	r1, r4
 8004c1a:	4648      	mov	r0, r9
 8004c1c:	f001 f98e 	bl	8005f3c <_Balloc>
 8004c20:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004c24:	930e      	str	r3, [sp, #56]	; 0x38
 8004c26:	9309      	str	r3, [sp, #36]	; 0x24
 8004c28:	2301      	movs	r3, #1
 8004c2a:	4683      	mov	fp, r0
 8004c2c:	9407      	str	r4, [sp, #28]
 8004c2e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004c32:	930a      	str	r3, [sp, #40]	; 0x28
 8004c34:	e4b6      	b.n	80045a4 <_dtoa_r+0x454>
 8004c36:	f001 f9b1 	bl	8005f9c <__multadd>
 8004c3a:	4627      	mov	r7, r4
 8004c3c:	4605      	mov	r5, r0
 8004c3e:	4680      	mov	r8, r0
 8004c40:	e614      	b.n	800486c <_dtoa_r+0x71c>
 8004c42:	4648      	mov	r0, r9
 8004c44:	f001 f9a0 	bl	8005f88 <_Bfree>
 8004c48:	2301      	movs	r3, #1
 8004c4a:	e639      	b.n	80048c0 <_dtoa_r+0x770>
 8004c4c:	9b02      	ldr	r3, [sp, #8]
 8004c4e:	2b02      	cmp	r3, #2
 8004c50:	f77f adf3 	ble.w	800483a <_dtoa_r+0x6ea>
 8004c54:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c56:	2b00      	cmp	r3, #0
 8004c58:	f000 80cf 	beq.w	8004dfa <_dtoa_r+0xcaa>
 8004c5c:	9b07      	ldr	r3, [sp, #28]
 8004c5e:	43db      	mvns	r3, r3
 8004c60:	9306      	str	r3, [sp, #24]
 8004c62:	465c      	mov	r4, fp
 8004c64:	e78b      	b.n	8004b7e <_dtoa_r+0xa2e>
 8004c66:	9a06      	ldr	r2, [sp, #24]
 8004c68:	2331      	movs	r3, #49	; 0x31
 8004c6a:	3201      	adds	r2, #1
 8004c6c:	9206      	str	r2, [sp, #24]
 8004c6e:	f88b 3000 	strb.w	r3, [fp]
 8004c72:	e6b3      	b.n	80049dc <_dtoa_r+0x88c>
 8004c74:	2401      	movs	r4, #1
 8004c76:	9409      	str	r4, [sp, #36]	; 0x24
 8004c78:	9407      	str	r4, [sp, #28]
 8004c7a:	f7ff bb8b 	b.w	8004394 <_dtoa_r+0x244>
 8004c7e:	4630      	mov	r0, r6
 8004c80:	f7fb fef0 	bl	8000a64 <__aeabi_i2d>
 8004c84:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004c88:	f7fb ff56 	bl	8000b38 <__aeabi_dmul>
 8004c8c:	2200      	movs	r2, #0
 8004c8e:	4b68      	ldr	r3, [pc, #416]	; (8004e30 <_dtoa_r+0xce0>)
 8004c90:	f7fb fd9c 	bl	80007cc <__adddf3>
 8004c94:	4606      	mov	r6, r0
 8004c96:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004c9a:	2200      	movs	r2, #0
 8004c9c:	4b61      	ldr	r3, [pc, #388]	; (8004e24 <_dtoa_r+0xcd4>)
 8004c9e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004ca2:	f7fb fd91 	bl	80007c8 <__aeabi_dsub>
 8004ca6:	4632      	mov	r2, r6
 8004ca8:	463b      	mov	r3, r7
 8004caa:	4604      	mov	r4, r0
 8004cac:	460d      	mov	r5, r1
 8004cae:	f7fc f9d3 	bl	8001058 <__aeabi_dcmpgt>
 8004cb2:	2800      	cmp	r0, #0
 8004cb4:	d14f      	bne.n	8004d56 <_dtoa_r+0xc06>
 8004cb6:	4632      	mov	r2, r6
 8004cb8:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004cbc:	4620      	mov	r0, r4
 8004cbe:	4629      	mov	r1, r5
 8004cc0:	f7fc f9ac 	bl	800101c <__aeabi_dcmplt>
 8004cc4:	2800      	cmp	r0, #0
 8004cc6:	f43f ac69 	beq.w	800459c <_dtoa_r+0x44c>
 8004cca:	2600      	movs	r6, #0
 8004ccc:	4635      	mov	r5, r6
 8004cce:	e7c5      	b.n	8004c5c <_dtoa_r+0xb0c>
 8004cd0:	2301      	movs	r3, #1
 8004cd2:	930a      	str	r3, [sp, #40]	; 0x28
 8004cd4:	e6c8      	b.n	8004a68 <_dtoa_r+0x918>
 8004cd6:	4651      	mov	r1, sl
 8004cd8:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004cda:	4648      	mov	r0, r9
 8004cdc:	f001 fa9e 	bl	800621c <__pow5mult>
 8004ce0:	4682      	mov	sl, r0
 8004ce2:	e572      	b.n	80047ca <_dtoa_r+0x67a>
 8004ce4:	f8dd a000 	ldr.w	sl, [sp]
 8004ce8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004cec:	e686      	b.n	80049fc <_dtoa_r+0x8ac>
 8004cee:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004cf0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004cf2:	1afb      	subs	r3, r7, r3
 8004cf4:	441a      	add	r2, r3
 8004cf6:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004cfa:	2700      	movs	r7, #0
 8004cfc:	e512      	b.n	8004724 <_dtoa_r+0x5d4>
 8004cfe:	2b00      	cmp	r3, #0
 8004d00:	9402      	str	r4, [sp, #8]
 8004d02:	465e      	mov	r6, fp
 8004d04:	f107 0401 	add.w	r4, r7, #1
 8004d08:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d0c:	f300 80ba 	bgt.w	8004e84 <_dtoa_r+0xd34>
 8004d10:	9b00      	ldr	r3, [sp, #0]
 8004d12:	9502      	str	r5, [sp, #8]
 8004d14:	703b      	strb	r3, [r7, #0]
 8004d16:	4645      	mov	r5, r8
 8004d18:	e660      	b.n	80049dc <_dtoa_r+0x88c>
 8004d1a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004d1e:	2602      	movs	r6, #2
 8004d20:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004d24:	f7ff bb67 	b.w	80043f6 <_dtoa_r+0x2a6>
 8004d28:	9b00      	ldr	r3, [sp, #0]
 8004d2a:	2b39      	cmp	r3, #57	; 0x39
 8004d2c:	465e      	mov	r6, fp
 8004d2e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d32:	f000 80b9 	beq.w	8004ea8 <_dtoa_r+0xd58>
 8004d36:	9b00      	ldr	r3, [sp, #0]
 8004d38:	9502      	str	r5, [sp, #8]
 8004d3a:	3301      	adds	r3, #1
 8004d3c:	703b      	strb	r3, [r7, #0]
 8004d3e:	4645      	mov	r5, r8
 8004d40:	e64c      	b.n	80049dc <_dtoa_r+0x88c>
 8004d42:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004d46:	1a9c      	subs	r4, r3, r2
 8004d48:	e4f5      	b.n	8004736 <_dtoa_r+0x5e6>
 8004d4a:	465e      	mov	r6, fp
 8004d4c:	9502      	str	r5, [sp, #8]
 8004d4e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d52:	4645      	mov	r5, r8
 8004d54:	e61a      	b.n	800498c <_dtoa_r+0x83c>
 8004d56:	2600      	movs	r6, #0
 8004d58:	4635      	mov	r5, r6
 8004d5a:	e708      	b.n	8004b6e <_dtoa_r+0xa1e>
 8004d5c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004d60:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d64:	f7fb fee8 	bl	8000b38 <__aeabi_dmul>
 8004d68:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004d6a:	f88b 5000 	strb.w	r5, [fp]
 8004d6e:	2b01      	cmp	r3, #1
 8004d70:	e9cd 0100 	strd	r0, r1, [sp]
 8004d74:	d020      	beq.n	8004db8 <_dtoa_r+0xc68>
 8004d76:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004d78:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004d7c:	445b      	add	r3, fp
 8004d7e:	4698      	mov	r8, r3
 8004d80:	2200      	movs	r2, #0
 8004d82:	4b2c      	ldr	r3, [pc, #176]	; (8004e34 <_dtoa_r+0xce4>)
 8004d84:	4630      	mov	r0, r6
 8004d86:	4639      	mov	r1, r7
 8004d88:	f7fb fed6 	bl	8000b38 <__aeabi_dmul>
 8004d8c:	460f      	mov	r7, r1
 8004d8e:	4606      	mov	r6, r0
 8004d90:	f7fc f982 	bl	8001098 <__aeabi_d2iz>
 8004d94:	4605      	mov	r5, r0
 8004d96:	f7fb fe65 	bl	8000a64 <__aeabi_i2d>
 8004d9a:	3530      	adds	r5, #48	; 0x30
 8004d9c:	4602      	mov	r2, r0
 8004d9e:	460b      	mov	r3, r1
 8004da0:	4630      	mov	r0, r6
 8004da2:	4639      	mov	r1, r7
 8004da4:	f7fb fd10 	bl	80007c8 <__aeabi_dsub>
 8004da8:	f804 5b01 	strb.w	r5, [r4], #1
 8004dac:	4544      	cmp	r4, r8
 8004dae:	4606      	mov	r6, r0
 8004db0:	460f      	mov	r7, r1
 8004db2:	d1e5      	bne.n	8004d80 <_dtoa_r+0xc30>
 8004db4:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004db8:	4b1f      	ldr	r3, [pc, #124]	; (8004e38 <_dtoa_r+0xce8>)
 8004dba:	2200      	movs	r2, #0
 8004dbc:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004dc0:	f7fb fd04 	bl	80007cc <__adddf3>
 8004dc4:	4632      	mov	r2, r6
 8004dc6:	463b      	mov	r3, r7
 8004dc8:	f7fc f928 	bl	800101c <__aeabi_dcmplt>
 8004dcc:	2800      	cmp	r0, #0
 8004dce:	d070      	beq.n	8004eb2 <_dtoa_r+0xd62>
 8004dd0:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004dd2:	9306      	str	r3, [sp, #24]
 8004dd4:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004dd8:	e48f      	b.n	80046fa <_dtoa_r+0x5aa>
 8004dda:	2330      	movs	r3, #48	; 0x30
 8004ddc:	f88b 3000 	strb.w	r3, [fp]
 8004de0:	9b06      	ldr	r3, [sp, #24]
 8004de2:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004de6:	3301      	adds	r3, #1
 8004de8:	9306      	str	r3, [sp, #24]
 8004dea:	465b      	mov	r3, fp
 8004dec:	e489      	b.n	8004702 <_dtoa_r+0x5b2>
 8004dee:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004df0:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004df4:	e6a0      	b.n	8004b38 <_dtoa_r+0x9e8>
 8004df6:	2300      	movs	r3, #0
 8004df8:	e676      	b.n	8004ae8 <_dtoa_r+0x998>
 8004dfa:	4631      	mov	r1, r6
 8004dfc:	2205      	movs	r2, #5
 8004dfe:	4648      	mov	r0, r9
 8004e00:	f001 f8cc 	bl	8005f9c <__multadd>
 8004e04:	4601      	mov	r1, r0
 8004e06:	4606      	mov	r6, r0
 8004e08:	4650      	mov	r0, sl
 8004e0a:	f001 faad 	bl	8006368 <__mcmp>
 8004e0e:	2800      	cmp	r0, #0
 8004e10:	f73f aead 	bgt.w	8004b6e <_dtoa_r+0xa1e>
 8004e14:	e722      	b.n	8004c5c <_dtoa_r+0xb0c>
 8004e16:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004e1a:	2602      	movs	r6, #2
 8004e1c:	ed8d 7b00 	vstr	d7, [sp]
 8004e20:	f7ff bb02 	b.w	8004428 <_dtoa_r+0x2d8>
 8004e24:	40140000 	.word	0x40140000
 8004e28:	08007218 	.word	0x08007218
 8004e2c:	080071f0 	.word	0x080071f0
 8004e30:	401c0000 	.word	0x401c0000
 8004e34:	40240000 	.word	0x40240000
 8004e38:	3fe00000 	.word	0x3fe00000
 8004e3c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e3e:	2b00      	cmp	r3, #0
 8004e40:	f43f af1d 	beq.w	8004c7e <_dtoa_r+0xb2e>
 8004e44:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004e46:	2c00      	cmp	r4, #0
 8004e48:	f77f aba8 	ble.w	800459c <_dtoa_r+0x44c>
 8004e4c:	2200      	movs	r2, #0
 8004e4e:	4b45      	ldr	r3, [pc, #276]	; (8004f64 <_dtoa_r+0xe14>)
 8004e50:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e54:	f7fb fe70 	bl	8000b38 <__aeabi_dmul>
 8004e58:	e9cd 0100 	strd	r0, r1, [sp]
 8004e5c:	1c70      	adds	r0, r6, #1
 8004e5e:	f7fb fe01 	bl	8000a64 <__aeabi_i2d>
 8004e62:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e66:	f7fb fe67 	bl	8000b38 <__aeabi_dmul>
 8004e6a:	4b3f      	ldr	r3, [pc, #252]	; (8004f68 <_dtoa_r+0xe18>)
 8004e6c:	2200      	movs	r2, #0
 8004e6e:	f7fb fcad 	bl	80007cc <__adddf3>
 8004e72:	9b06      	ldr	r3, [sp, #24]
 8004e74:	9412      	str	r4, [sp, #72]	; 0x48
 8004e76:	3b01      	subs	r3, #1
 8004e78:	4606      	mov	r6, r0
 8004e7a:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004e7e:	9316      	str	r3, [sp, #88]	; 0x58
 8004e80:	f7ff baf3 	b.w	800446a <_dtoa_r+0x31a>
 8004e84:	4651      	mov	r1, sl
 8004e86:	2201      	movs	r2, #1
 8004e88:	4648      	mov	r0, r9
 8004e8a:	f001 fa17 	bl	80062bc <__lshift>
 8004e8e:	4631      	mov	r1, r6
 8004e90:	4682      	mov	sl, r0
 8004e92:	f001 fa69 	bl	8006368 <__mcmp>
 8004e96:	2800      	cmp	r0, #0
 8004e98:	dd3b      	ble.n	8004f12 <_dtoa_r+0xdc2>
 8004e9a:	9b00      	ldr	r3, [sp, #0]
 8004e9c:	2b39      	cmp	r3, #57	; 0x39
 8004e9e:	d003      	beq.n	8004ea8 <_dtoa_r+0xd58>
 8004ea0:	9b02      	ldr	r3, [sp, #8]
 8004ea2:	3331      	adds	r3, #49	; 0x31
 8004ea4:	9300      	str	r3, [sp, #0]
 8004ea6:	e733      	b.n	8004d10 <_dtoa_r+0xbc0>
 8004ea8:	2239      	movs	r2, #57	; 0x39
 8004eaa:	9502      	str	r5, [sp, #8]
 8004eac:	703a      	strb	r2, [r7, #0]
 8004eae:	4645      	mov	r5, r8
 8004eb0:	e58e      	b.n	80049d0 <_dtoa_r+0x880>
 8004eb2:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004eb6:	2000      	movs	r0, #0
 8004eb8:	492c      	ldr	r1, [pc, #176]	; (8004f6c <_dtoa_r+0xe1c>)
 8004eba:	f7fb fc85 	bl	80007c8 <__aeabi_dsub>
 8004ebe:	4632      	mov	r2, r6
 8004ec0:	463b      	mov	r3, r7
 8004ec2:	f7fc f8c9 	bl	8001058 <__aeabi_dcmpgt>
 8004ec6:	b910      	cbnz	r0, 8004ece <_dtoa_r+0xd7e>
 8004ec8:	f7ff bb68 	b.w	800459c <_dtoa_r+0x44c>
 8004ecc:	4614      	mov	r4, r2
 8004ece:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004ed2:	2b30      	cmp	r3, #48	; 0x30
 8004ed4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004ed8:	d0f8      	beq.n	8004ecc <_dtoa_r+0xd7c>
 8004eda:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004edc:	9306      	str	r3, [sp, #24]
 8004ede:	e58d      	b.n	80049fc <_dtoa_r+0x8ac>
 8004ee0:	46d9      	mov	r9, fp
 8004ee2:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004ee6:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004eea:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004eec:	9306      	str	r3, [sp, #24]
 8004eee:	e404      	b.n	80046fa <_dtoa_r+0x5aa>
 8004ef0:	9b00      	ldr	r3, [sp, #0]
 8004ef2:	2b39      	cmp	r3, #57	; 0x39
 8004ef4:	4621      	mov	r1, r4
 8004ef6:	4632      	mov	r2, r6
 8004ef8:	f107 0401 	add.w	r4, r7, #1
 8004efc:	465e      	mov	r6, fp
 8004efe:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004f02:	d0d1      	beq.n	8004ea8 <_dtoa_r+0xd58>
 8004f04:	2a00      	cmp	r2, #0
 8004f06:	f77f af03 	ble.w	8004d10 <_dtoa_r+0xbc0>
 8004f0a:	460b      	mov	r3, r1
 8004f0c:	3331      	adds	r3, #49	; 0x31
 8004f0e:	9300      	str	r3, [sp, #0]
 8004f10:	e6fe      	b.n	8004d10 <_dtoa_r+0xbc0>
 8004f12:	f47f aefd 	bne.w	8004d10 <_dtoa_r+0xbc0>
 8004f16:	9b00      	ldr	r3, [sp, #0]
 8004f18:	07da      	lsls	r2, r3, #31
 8004f1a:	f57f aef9 	bpl.w	8004d10 <_dtoa_r+0xbc0>
 8004f1e:	e7bc      	b.n	8004e9a <_dtoa_r+0xd4a>
 8004f20:	4629      	mov	r1, r5
 8004f22:	2300      	movs	r3, #0
 8004f24:	220a      	movs	r2, #10
 8004f26:	4648      	mov	r0, r9
 8004f28:	f001 f838 	bl	8005f9c <__multadd>
 8004f2c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f2e:	2b00      	cmp	r3, #0
 8004f30:	4605      	mov	r5, r0
 8004f32:	dd09      	ble.n	8004f48 <_dtoa_r+0xdf8>
 8004f34:	9309      	str	r3, [sp, #36]	; 0x24
 8004f36:	e484      	b.n	8004842 <_dtoa_r+0x6f2>
 8004f38:	9b02      	ldr	r3, [sp, #8]
 8004f3a:	2b02      	cmp	r3, #2
 8004f3c:	dc0e      	bgt.n	8004f5c <_dtoa_r+0xe0c>
 8004f3e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f40:	e507      	b.n	8004952 <_dtoa_r+0x802>
 8004f42:	2602      	movs	r6, #2
 8004f44:	f7ff ba70 	b.w	8004428 <_dtoa_r+0x2d8>
 8004f48:	9b02      	ldr	r3, [sp, #8]
 8004f4a:	2b02      	cmp	r3, #2
 8004f4c:	dc06      	bgt.n	8004f5c <_dtoa_r+0xe0c>
 8004f4e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f50:	e7f0      	b.n	8004f34 <_dtoa_r+0xde4>
 8004f52:	f43f ac59 	beq.w	8004808 <_dtoa_r+0x6b8>
 8004f56:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004f5a:	e450      	b.n	80047fe <_dtoa_r+0x6ae>
 8004f5c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f5e:	9309      	str	r3, [sp, #36]	; 0x24
 8004f60:	e678      	b.n	8004c54 <_dtoa_r+0xb04>
 8004f62:	bf00      	nop
 8004f64:	40240000 	.word	0x40240000
 8004f68:	401c0000 	.word	0x401c0000
 8004f6c:	3fe00000 	.word	0x3fe00000

08004f70 <__sflush_r>:
 8004f70:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004f74:	b29a      	uxth	r2, r3
 8004f76:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004f7a:	460c      	mov	r4, r1
 8004f7c:	0711      	lsls	r1, r2, #28
 8004f7e:	4680      	mov	r8, r0
 8004f80:	d444      	bmi.n	800500c <__sflush_r+0x9c>
 8004f82:	6862      	ldr	r2, [r4, #4]
 8004f84:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004f88:	2a00      	cmp	r2, #0
 8004f8a:	81a3      	strh	r3, [r4, #12]
 8004f8c:	dd59      	ble.n	8005042 <__sflush_r+0xd2>
 8004f8e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004f90:	2d00      	cmp	r5, #0
 8004f92:	d053      	beq.n	800503c <__sflush_r+0xcc>
 8004f94:	2200      	movs	r2, #0
 8004f96:	b29b      	uxth	r3, r3
 8004f98:	f8d8 6000 	ldr.w	r6, [r8]
 8004f9c:	69e1      	ldr	r1, [r4, #28]
 8004f9e:	f8c8 2000 	str.w	r2, [r8]
 8004fa2:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8004fa6:	f040 8083 	bne.w	80050b0 <__sflush_r+0x140>
 8004faa:	2301      	movs	r3, #1
 8004fac:	4640      	mov	r0, r8
 8004fae:	47a8      	blx	r5
 8004fb0:	1c42      	adds	r2, r0, #1
 8004fb2:	d04a      	beq.n	800504a <__sflush_r+0xda>
 8004fb4:	89a3      	ldrh	r3, [r4, #12]
 8004fb6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004fb8:	69e1      	ldr	r1, [r4, #28]
 8004fba:	075b      	lsls	r3, r3, #29
 8004fbc:	d505      	bpl.n	8004fca <__sflush_r+0x5a>
 8004fbe:	6862      	ldr	r2, [r4, #4]
 8004fc0:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8004fc2:	1a80      	subs	r0, r0, r2
 8004fc4:	b10b      	cbz	r3, 8004fca <__sflush_r+0x5a>
 8004fc6:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8004fc8:	1ac0      	subs	r0, r0, r3
 8004fca:	4602      	mov	r2, r0
 8004fcc:	2300      	movs	r3, #0
 8004fce:	4640      	mov	r0, r8
 8004fd0:	47a8      	blx	r5
 8004fd2:	1c47      	adds	r7, r0, #1
 8004fd4:	d045      	beq.n	8005062 <__sflush_r+0xf2>
 8004fd6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004fda:	6922      	ldr	r2, [r4, #16]
 8004fdc:	6022      	str	r2, [r4, #0]
 8004fde:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8004fe2:	2200      	movs	r2, #0
 8004fe4:	81a3      	strh	r3, [r4, #12]
 8004fe6:	04db      	lsls	r3, r3, #19
 8004fe8:	6062      	str	r2, [r4, #4]
 8004fea:	d500      	bpl.n	8004fee <__sflush_r+0x7e>
 8004fec:	6520      	str	r0, [r4, #80]	; 0x50
 8004fee:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004ff0:	f8c8 6000 	str.w	r6, [r8]
 8004ff4:	b311      	cbz	r1, 800503c <__sflush_r+0xcc>
 8004ff6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004ffa:	4299      	cmp	r1, r3
 8004ffc:	d002      	beq.n	8005004 <__sflush_r+0x94>
 8004ffe:	4640      	mov	r0, r8
 8005000:	f000 f95e 	bl	80052c0 <_free_r>
 8005004:	2000      	movs	r0, #0
 8005006:	6320      	str	r0, [r4, #48]	; 0x30
 8005008:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800500c:	6926      	ldr	r6, [r4, #16]
 800500e:	b1ae      	cbz	r6, 800503c <__sflush_r+0xcc>
 8005010:	6825      	ldr	r5, [r4, #0]
 8005012:	6026      	str	r6, [r4, #0]
 8005014:	0792      	lsls	r2, r2, #30
 8005016:	bf0c      	ite	eq
 8005018:	6963      	ldreq	r3, [r4, #20]
 800501a:	2300      	movne	r3, #0
 800501c:	1bad      	subs	r5, r5, r6
 800501e:	60a3      	str	r3, [r4, #8]
 8005020:	e00a      	b.n	8005038 <__sflush_r+0xc8>
 8005022:	462b      	mov	r3, r5
 8005024:	4632      	mov	r2, r6
 8005026:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005028:	69e1      	ldr	r1, [r4, #28]
 800502a:	4640      	mov	r0, r8
 800502c:	47b8      	blx	r7
 800502e:	2800      	cmp	r0, #0
 8005030:	eba5 0500 	sub.w	r5, r5, r0
 8005034:	4406      	add	r6, r0
 8005036:	dd2b      	ble.n	8005090 <__sflush_r+0x120>
 8005038:	2d00      	cmp	r5, #0
 800503a:	dcf2      	bgt.n	8005022 <__sflush_r+0xb2>
 800503c:	2000      	movs	r0, #0
 800503e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005042:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005044:	2a00      	cmp	r2, #0
 8005046:	dca2      	bgt.n	8004f8e <__sflush_r+0x1e>
 8005048:	e7f8      	b.n	800503c <__sflush_r+0xcc>
 800504a:	f8d8 3000 	ldr.w	r3, [r8]
 800504e:	2b00      	cmp	r3, #0
 8005050:	d0b0      	beq.n	8004fb4 <__sflush_r+0x44>
 8005052:	2b1d      	cmp	r3, #29
 8005054:	d001      	beq.n	800505a <__sflush_r+0xea>
 8005056:	2b16      	cmp	r3, #22
 8005058:	d12c      	bne.n	80050b4 <__sflush_r+0x144>
 800505a:	f8c8 6000 	str.w	r6, [r8]
 800505e:	2000      	movs	r0, #0
 8005060:	e7ed      	b.n	800503e <__sflush_r+0xce>
 8005062:	f8d8 1000 	ldr.w	r1, [r8]
 8005066:	291d      	cmp	r1, #29
 8005068:	d81a      	bhi.n	80050a0 <__sflush_r+0x130>
 800506a:	4b15      	ldr	r3, [pc, #84]	; (80050c0 <__sflush_r+0x150>)
 800506c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005070:	40cb      	lsrs	r3, r1
 8005072:	43db      	mvns	r3, r3
 8005074:	f013 0301 	ands.w	r3, r3, #1
 8005078:	d114      	bne.n	80050a4 <__sflush_r+0x134>
 800507a:	6925      	ldr	r5, [r4, #16]
 800507c:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005080:	e9c4 5300 	strd	r5, r3, [r4]
 8005084:	04d5      	lsls	r5, r2, #19
 8005086:	81a2      	strh	r2, [r4, #12]
 8005088:	d5b1      	bpl.n	8004fee <__sflush_r+0x7e>
 800508a:	2900      	cmp	r1, #0
 800508c:	d1af      	bne.n	8004fee <__sflush_r+0x7e>
 800508e:	e7ad      	b.n	8004fec <__sflush_r+0x7c>
 8005090:	89a3      	ldrh	r3, [r4, #12]
 8005092:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005096:	81a3      	strh	r3, [r4, #12]
 8005098:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800509c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80050a0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80050a4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80050a8:	81a2      	strh	r2, [r4, #12]
 80050aa:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80050ae:	e7c6      	b.n	800503e <__sflush_r+0xce>
 80050b0:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80050b2:	e782      	b.n	8004fba <__sflush_r+0x4a>
 80050b4:	89a3      	ldrh	r3, [r4, #12]
 80050b6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80050ba:	81a3      	strh	r3, [r4, #12]
 80050bc:	e7bf      	b.n	800503e <__sflush_r+0xce>
 80050be:	bf00      	nop
 80050c0:	20400001 	.word	0x20400001

080050c4 <_fflush_r>:
 80050c4:	b538      	push	{r3, r4, r5, lr}
 80050c6:	460d      	mov	r5, r1
 80050c8:	4604      	mov	r4, r0
 80050ca:	b108      	cbz	r0, 80050d0 <_fflush_r+0xc>
 80050cc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80050ce:	b1a3      	cbz	r3, 80050fa <_fflush_r+0x36>
 80050d0:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80050d4:	b1b8      	cbz	r0, 8005106 <_fflush_r+0x42>
 80050d6:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80050d8:	07db      	lsls	r3, r3, #31
 80050da:	d401      	bmi.n	80050e0 <_fflush_r+0x1c>
 80050dc:	0581      	lsls	r1, r0, #22
 80050de:	d51a      	bpl.n	8005116 <_fflush_r+0x52>
 80050e0:	4620      	mov	r0, r4
 80050e2:	4629      	mov	r1, r5
 80050e4:	f7ff ff44 	bl	8004f70 <__sflush_r>
 80050e8:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80050ea:	07da      	lsls	r2, r3, #31
 80050ec:	4604      	mov	r4, r0
 80050ee:	d402      	bmi.n	80050f6 <_fflush_r+0x32>
 80050f0:	89ab      	ldrh	r3, [r5, #12]
 80050f2:	059b      	lsls	r3, r3, #22
 80050f4:	d50a      	bpl.n	800510c <_fflush_r+0x48>
 80050f6:	4620      	mov	r0, r4
 80050f8:	bd38      	pop	{r3, r4, r5, pc}
 80050fa:	f000 f83f 	bl	800517c <__sinit>
 80050fe:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005102:	2800      	cmp	r0, #0
 8005104:	d1e7      	bne.n	80050d6 <_fflush_r+0x12>
 8005106:	4604      	mov	r4, r0
 8005108:	4620      	mov	r0, r4
 800510a:	bd38      	pop	{r3, r4, r5, pc}
 800510c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 800510e:	f000 fb87 	bl	8005820 <__retarget_lock_release_recursive>
 8005112:	4620      	mov	r0, r4
 8005114:	bd38      	pop	{r3, r4, r5, pc}
 8005116:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005118:	f000 fb80 	bl	800581c <__retarget_lock_acquire_recursive>
 800511c:	e7e0      	b.n	80050e0 <_fflush_r+0x1c>
 800511e:	bf00      	nop

08005120 <std>:
 8005120:	b510      	push	{r4, lr}
 8005122:	2300      	movs	r3, #0
 8005124:	4604      	mov	r4, r0
 8005126:	8181      	strh	r1, [r0, #12]
 8005128:	81c2      	strh	r2, [r0, #14]
 800512a:	e9c0 3300 	strd	r3, r3, [r0]
 800512e:	6083      	str	r3, [r0, #8]
 8005130:	6643      	str	r3, [r0, #100]	; 0x64
 8005132:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005136:	6183      	str	r3, [r0, #24]
 8005138:	4619      	mov	r1, r3
 800513a:	2208      	movs	r2, #8
 800513c:	305c      	adds	r0, #92	; 0x5c
 800513e:	f7fd f8c9 	bl	80022d4 <memset>
 8005142:	4807      	ldr	r0, [pc, #28]	; (8005160 <std+0x40>)
 8005144:	4907      	ldr	r1, [pc, #28]	; (8005164 <std+0x44>)
 8005146:	4a08      	ldr	r2, [pc, #32]	; (8005168 <std+0x48>)
 8005148:	4b08      	ldr	r3, [pc, #32]	; (800516c <std+0x4c>)
 800514a:	62e3      	str	r3, [r4, #44]	; 0x2c
 800514c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005150:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005154:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005158:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800515c:	f000 bb5a 	b.w	8005814 <__retarget_lock_init_recursive>
 8005160:	08006939 	.word	0x08006939
 8005164:	0800695d 	.word	0x0800695d
 8005168:	08006999 	.word	0x08006999
 800516c:	080069b9 	.word	0x080069b9

08005170 <_cleanup_r>:
 8005170:	4901      	ldr	r1, [pc, #4]	; (8005178 <_cleanup_r+0x8>)
 8005172:	f000 bb17 	b.w	80057a4 <_fwalk_reent>
 8005176:	bf00      	nop
 8005178:	08006c29 	.word	0x08006c29

0800517c <__sinit>:
 800517c:	b510      	push	{r4, lr}
 800517e:	4604      	mov	r4, r0
 8005180:	4812      	ldr	r0, [pc, #72]	; (80051cc <__sinit+0x50>)
 8005182:	f000 fb4b 	bl	800581c <__retarget_lock_acquire_recursive>
 8005186:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005188:	b9d2      	cbnz	r2, 80051c0 <__sinit+0x44>
 800518a:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 800518e:	4810      	ldr	r0, [pc, #64]	; (80051d0 <__sinit+0x54>)
 8005190:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8005194:	2103      	movs	r1, #3
 8005196:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 800519a:	63e0      	str	r0, [r4, #60]	; 0x3c
 800519c:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80051a0:	6860      	ldr	r0, [r4, #4]
 80051a2:	2104      	movs	r1, #4
 80051a4:	f7ff ffbc 	bl	8005120 <std>
 80051a8:	2201      	movs	r2, #1
 80051aa:	2109      	movs	r1, #9
 80051ac:	68a0      	ldr	r0, [r4, #8]
 80051ae:	f7ff ffb7 	bl	8005120 <std>
 80051b2:	2202      	movs	r2, #2
 80051b4:	2112      	movs	r1, #18
 80051b6:	68e0      	ldr	r0, [r4, #12]
 80051b8:	f7ff ffb2 	bl	8005120 <std>
 80051bc:	2301      	movs	r3, #1
 80051be:	63a3      	str	r3, [r4, #56]	; 0x38
 80051c0:	4802      	ldr	r0, [pc, #8]	; (80051cc <__sinit+0x50>)
 80051c2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80051c6:	f000 bb2b 	b.w	8005820 <__retarget_lock_release_recursive>
 80051ca:	bf00      	nop
 80051cc:	20000b04 	.word	0x20000b04
 80051d0:	08005171 	.word	0x08005171

080051d4 <__sfp_lock_acquire>:
 80051d4:	4801      	ldr	r0, [pc, #4]	; (80051dc <__sfp_lock_acquire+0x8>)
 80051d6:	f000 bb21 	b.w	800581c <__retarget_lock_acquire_recursive>
 80051da:	bf00      	nop
 80051dc:	20000b18 	.word	0x20000b18

080051e0 <__sfp_lock_release>:
 80051e0:	4801      	ldr	r0, [pc, #4]	; (80051e8 <__sfp_lock_release+0x8>)
 80051e2:	f000 bb1d 	b.w	8005820 <__retarget_lock_release_recursive>
 80051e6:	bf00      	nop
 80051e8:	20000b18 	.word	0x20000b18

080051ec <__libc_fini_array>:
 80051ec:	b538      	push	{r3, r4, r5, lr}
 80051ee:	4c0a      	ldr	r4, [pc, #40]	; (8005218 <__libc_fini_array+0x2c>)
 80051f0:	4d0a      	ldr	r5, [pc, #40]	; (800521c <__libc_fini_array+0x30>)
 80051f2:	1b64      	subs	r4, r4, r5
 80051f4:	10a4      	asrs	r4, r4, #2
 80051f6:	d00a      	beq.n	800520e <__libc_fini_array+0x22>
 80051f8:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80051fc:	3b01      	subs	r3, #1
 80051fe:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005202:	3c01      	subs	r4, #1
 8005204:	f855 3904 	ldr.w	r3, [r5], #-4
 8005208:	4798      	blx	r3
 800520a:	2c00      	cmp	r4, #0
 800520c:	d1f9      	bne.n	8005202 <__libc_fini_array+0x16>
 800520e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005212:	f001 befd 	b.w	8007010 <_fini>
 8005216:	bf00      	nop
 8005218:	08007414 	.word	0x08007414
 800521c:	08007410 	.word	0x08007410

08005220 <_malloc_trim_r>:
 8005220:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005222:	4f24      	ldr	r7, [pc, #144]	; (80052b4 <_malloc_trim_r+0x94>)
 8005224:	460c      	mov	r4, r1
 8005226:	4606      	mov	r6, r0
 8005228:	f000 fe7c 	bl	8005f24 <__malloc_lock>
 800522c:	68bb      	ldr	r3, [r7, #8]
 800522e:	685d      	ldr	r5, [r3, #4]
 8005230:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005234:	310f      	adds	r1, #15
 8005236:	f025 0503 	bic.w	r5, r5, #3
 800523a:	4429      	add	r1, r5
 800523c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005240:	f021 010f 	bic.w	r1, r1, #15
 8005244:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005248:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800524c:	db07      	blt.n	800525e <_malloc_trim_r+0x3e>
 800524e:	2100      	movs	r1, #0
 8005250:	4630      	mov	r0, r6
 8005252:	f001 fb5f 	bl	8006914 <_sbrk_r>
 8005256:	68bb      	ldr	r3, [r7, #8]
 8005258:	442b      	add	r3, r5
 800525a:	4298      	cmp	r0, r3
 800525c:	d004      	beq.n	8005268 <_malloc_trim_r+0x48>
 800525e:	4630      	mov	r0, r6
 8005260:	f000 fe66 	bl	8005f30 <__malloc_unlock>
 8005264:	2000      	movs	r0, #0
 8005266:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005268:	4261      	negs	r1, r4
 800526a:	4630      	mov	r0, r6
 800526c:	f001 fb52 	bl	8006914 <_sbrk_r>
 8005270:	3001      	adds	r0, #1
 8005272:	d00d      	beq.n	8005290 <_malloc_trim_r+0x70>
 8005274:	4b10      	ldr	r3, [pc, #64]	; (80052b8 <_malloc_trim_r+0x98>)
 8005276:	68ba      	ldr	r2, [r7, #8]
 8005278:	6819      	ldr	r1, [r3, #0]
 800527a:	1b2d      	subs	r5, r5, r4
 800527c:	f045 0501 	orr.w	r5, r5, #1
 8005280:	4630      	mov	r0, r6
 8005282:	1b09      	subs	r1, r1, r4
 8005284:	6055      	str	r5, [r2, #4]
 8005286:	6019      	str	r1, [r3, #0]
 8005288:	f000 fe52 	bl	8005f30 <__malloc_unlock>
 800528c:	2001      	movs	r0, #1
 800528e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005290:	2100      	movs	r1, #0
 8005292:	4630      	mov	r0, r6
 8005294:	f001 fb3e 	bl	8006914 <_sbrk_r>
 8005298:	68ba      	ldr	r2, [r7, #8]
 800529a:	1a83      	subs	r3, r0, r2
 800529c:	2b0f      	cmp	r3, #15
 800529e:	ddde      	ble.n	800525e <_malloc_trim_r+0x3e>
 80052a0:	4c06      	ldr	r4, [pc, #24]	; (80052bc <_malloc_trim_r+0x9c>)
 80052a2:	4905      	ldr	r1, [pc, #20]	; (80052b8 <_malloc_trim_r+0x98>)
 80052a4:	6824      	ldr	r4, [r4, #0]
 80052a6:	f043 0301 	orr.w	r3, r3, #1
 80052aa:	1b00      	subs	r0, r0, r4
 80052ac:	6053      	str	r3, [r2, #4]
 80052ae:	6008      	str	r0, [r1, #0]
 80052b0:	e7d5      	b.n	800525e <_malloc_trim_r+0x3e>
 80052b2:	bf00      	nop
 80052b4:	2000045c 	.word	0x2000045c
 80052b8:	20000a7c 	.word	0x20000a7c
 80052bc:	20000864 	.word	0x20000864

080052c0 <_free_r>:
 80052c0:	2900      	cmp	r1, #0
 80052c2:	d053      	beq.n	800536c <_free_r+0xac>
 80052c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80052c6:	460c      	mov	r4, r1
 80052c8:	4606      	mov	r6, r0
 80052ca:	f000 fe2b 	bl	8005f24 <__malloc_lock>
 80052ce:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80052d2:	4f71      	ldr	r7, [pc, #452]	; (8005498 <_free_r+0x1d8>)
 80052d4:	f02c 0101 	bic.w	r1, ip, #1
 80052d8:	f1a4 0508 	sub.w	r5, r4, #8
 80052dc:	186b      	adds	r3, r5, r1
 80052de:	68b8      	ldr	r0, [r7, #8]
 80052e0:	685a      	ldr	r2, [r3, #4]
 80052e2:	4298      	cmp	r0, r3
 80052e4:	f022 0203 	bic.w	r2, r2, #3
 80052e8:	d053      	beq.n	8005392 <_free_r+0xd2>
 80052ea:	f01c 0f01 	tst.w	ip, #1
 80052ee:	605a      	str	r2, [r3, #4]
 80052f0:	eb03 0002 	add.w	r0, r3, r2
 80052f4:	d13b      	bne.n	800536e <_free_r+0xae>
 80052f6:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80052fa:	6840      	ldr	r0, [r0, #4]
 80052fc:	eba5 050c 	sub.w	r5, r5, ip
 8005300:	f107 0e08 	add.w	lr, r7, #8
 8005304:	68ac      	ldr	r4, [r5, #8]
 8005306:	4574      	cmp	r4, lr
 8005308:	4461      	add	r1, ip
 800530a:	f000 0001 	and.w	r0, r0, #1
 800530e:	d075      	beq.n	80053fc <_free_r+0x13c>
 8005310:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005314:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005318:	f8cc 4008 	str.w	r4, [ip, #8]
 800531c:	b360      	cbz	r0, 8005378 <_free_r+0xb8>
 800531e:	f041 0301 	orr.w	r3, r1, #1
 8005322:	606b      	str	r3, [r5, #4]
 8005324:	5069      	str	r1, [r5, r1]
 8005326:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800532a:	d350      	bcc.n	80053ce <_free_r+0x10e>
 800532c:	0a4b      	lsrs	r3, r1, #9
 800532e:	2b04      	cmp	r3, #4
 8005330:	d870      	bhi.n	8005414 <_free_r+0x154>
 8005332:	098b      	lsrs	r3, r1, #6
 8005334:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005338:	00e4      	lsls	r4, r4, #3
 800533a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 800533e:	1938      	adds	r0, r7, r4
 8005340:	593b      	ldr	r3, [r7, r4]
 8005342:	3808      	subs	r0, #8
 8005344:	4298      	cmp	r0, r3
 8005346:	d078      	beq.n	800543a <_free_r+0x17a>
 8005348:	685a      	ldr	r2, [r3, #4]
 800534a:	f022 0203 	bic.w	r2, r2, #3
 800534e:	428a      	cmp	r2, r1
 8005350:	d971      	bls.n	8005436 <_free_r+0x176>
 8005352:	689b      	ldr	r3, [r3, #8]
 8005354:	4298      	cmp	r0, r3
 8005356:	d1f7      	bne.n	8005348 <_free_r+0x88>
 8005358:	68c3      	ldr	r3, [r0, #12]
 800535a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 800535e:	609d      	str	r5, [r3, #8]
 8005360:	60c5      	str	r5, [r0, #12]
 8005362:	4630      	mov	r0, r6
 8005364:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005368:	f000 bde2 	b.w	8005f30 <__malloc_unlock>
 800536c:	4770      	bx	lr
 800536e:	6840      	ldr	r0, [r0, #4]
 8005370:	f000 0001 	and.w	r0, r0, #1
 8005374:	2800      	cmp	r0, #0
 8005376:	d1d2      	bne.n	800531e <_free_r+0x5e>
 8005378:	6898      	ldr	r0, [r3, #8]
 800537a:	4c48      	ldr	r4, [pc, #288]	; (800549c <_free_r+0x1dc>)
 800537c:	4411      	add	r1, r2
 800537e:	42a0      	cmp	r0, r4
 8005380:	f041 0201 	orr.w	r2, r1, #1
 8005384:	d062      	beq.n	800544c <_free_r+0x18c>
 8005386:	68db      	ldr	r3, [r3, #12]
 8005388:	60c3      	str	r3, [r0, #12]
 800538a:	6098      	str	r0, [r3, #8]
 800538c:	606a      	str	r2, [r5, #4]
 800538e:	5069      	str	r1, [r5, r1]
 8005390:	e7c9      	b.n	8005326 <_free_r+0x66>
 8005392:	f01c 0f01 	tst.w	ip, #1
 8005396:	440a      	add	r2, r1
 8005398:	d107      	bne.n	80053aa <_free_r+0xea>
 800539a:	f854 3c08 	ldr.w	r3, [r4, #-8]
 800539e:	1aed      	subs	r5, r5, r3
 80053a0:	441a      	add	r2, r3
 80053a2:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80053a6:	60cb      	str	r3, [r1, #12]
 80053a8:	6099      	str	r1, [r3, #8]
 80053aa:	4b3d      	ldr	r3, [pc, #244]	; (80054a0 <_free_r+0x1e0>)
 80053ac:	681b      	ldr	r3, [r3, #0]
 80053ae:	f042 0101 	orr.w	r1, r2, #1
 80053b2:	4293      	cmp	r3, r2
 80053b4:	6069      	str	r1, [r5, #4]
 80053b6:	60bd      	str	r5, [r7, #8]
 80053b8:	d804      	bhi.n	80053c4 <_free_r+0x104>
 80053ba:	4b3a      	ldr	r3, [pc, #232]	; (80054a4 <_free_r+0x1e4>)
 80053bc:	4630      	mov	r0, r6
 80053be:	6819      	ldr	r1, [r3, #0]
 80053c0:	f7ff ff2e 	bl	8005220 <_malloc_trim_r>
 80053c4:	4630      	mov	r0, r6
 80053c6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80053ca:	f000 bdb1 	b.w	8005f30 <__malloc_unlock>
 80053ce:	08c9      	lsrs	r1, r1, #3
 80053d0:	6878      	ldr	r0, [r7, #4]
 80053d2:	1c4a      	adds	r2, r1, #1
 80053d4:	2301      	movs	r3, #1
 80053d6:	1089      	asrs	r1, r1, #2
 80053d8:	408b      	lsls	r3, r1
 80053da:	4303      	orrs	r3, r0
 80053dc:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80053e0:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80053e4:	607b      	str	r3, [r7, #4]
 80053e6:	3908      	subs	r1, #8
 80053e8:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80053ec:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80053f0:	60c5      	str	r5, [r0, #12]
 80053f2:	4630      	mov	r0, r6
 80053f4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80053f8:	f000 bd9a 	b.w	8005f30 <__malloc_unlock>
 80053fc:	2800      	cmp	r0, #0
 80053fe:	d145      	bne.n	800548c <_free_r+0x1cc>
 8005400:	440a      	add	r2, r1
 8005402:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005406:	f042 0001 	orr.w	r0, r2, #1
 800540a:	60cb      	str	r3, [r1, #12]
 800540c:	6099      	str	r1, [r3, #8]
 800540e:	6068      	str	r0, [r5, #4]
 8005410:	50aa      	str	r2, [r5, r2]
 8005412:	e7d7      	b.n	80053c4 <_free_r+0x104>
 8005414:	2b14      	cmp	r3, #20
 8005416:	d908      	bls.n	800542a <_free_r+0x16a>
 8005418:	2b54      	cmp	r3, #84	; 0x54
 800541a:	d81e      	bhi.n	800545a <_free_r+0x19a>
 800541c:	0b0b      	lsrs	r3, r1, #12
 800541e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005422:	00e4      	lsls	r4, r4, #3
 8005424:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005428:	e789      	b.n	800533e <_free_r+0x7e>
 800542a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 800542e:	00e4      	lsls	r4, r4, #3
 8005430:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005434:	e783      	b.n	800533e <_free_r+0x7e>
 8005436:	4618      	mov	r0, r3
 8005438:	e78e      	b.n	8005358 <_free_r+0x98>
 800543a:	1093      	asrs	r3, r2, #2
 800543c:	6879      	ldr	r1, [r7, #4]
 800543e:	2201      	movs	r2, #1
 8005440:	fa02 f303 	lsl.w	r3, r2, r3
 8005444:	430b      	orrs	r3, r1
 8005446:	607b      	str	r3, [r7, #4]
 8005448:	4603      	mov	r3, r0
 800544a:	e786      	b.n	800535a <_free_r+0x9a>
 800544c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005450:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005454:	606a      	str	r2, [r5, #4]
 8005456:	5069      	str	r1, [r5, r1]
 8005458:	e7b4      	b.n	80053c4 <_free_r+0x104>
 800545a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800545e:	d806      	bhi.n	800546e <_free_r+0x1ae>
 8005460:	0bcb      	lsrs	r3, r1, #15
 8005462:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005466:	00e4      	lsls	r4, r4, #3
 8005468:	f103 0277 	add.w	r2, r3, #119	; 0x77
 800546c:	e767      	b.n	800533e <_free_r+0x7e>
 800546e:	f240 5254 	movw	r2, #1364	; 0x554
 8005472:	4293      	cmp	r3, r2
 8005474:	d806      	bhi.n	8005484 <_free_r+0x1c4>
 8005476:	0c8b      	lsrs	r3, r1, #18
 8005478:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 800547c:	00e4      	lsls	r4, r4, #3
 800547e:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005482:	e75c      	b.n	800533e <_free_r+0x7e>
 8005484:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005488:	227e      	movs	r2, #126	; 0x7e
 800548a:	e758      	b.n	800533e <_free_r+0x7e>
 800548c:	f041 0201 	orr.w	r2, r1, #1
 8005490:	606a      	str	r2, [r5, #4]
 8005492:	6019      	str	r1, [r3, #0]
 8005494:	e796      	b.n	80053c4 <_free_r+0x104>
 8005496:	bf00      	nop
 8005498:	2000045c 	.word	0x2000045c
 800549c:	20000464 	.word	0x20000464
 80054a0:	20000868 	.word	0x20000868
 80054a4:	20000aac 	.word	0x20000aac

080054a8 <__sfvwrite_r>:
 80054a8:	6893      	ldr	r3, [r2, #8]
 80054aa:	2b00      	cmp	r3, #0
 80054ac:	f000 80e4 	beq.w	8005678 <__sfvwrite_r+0x1d0>
 80054b0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80054b4:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80054b8:	b29b      	uxth	r3, r3
 80054ba:	460c      	mov	r4, r1
 80054bc:	0719      	lsls	r1, r3, #28
 80054be:	b083      	sub	sp, #12
 80054c0:	4682      	mov	sl, r0
 80054c2:	4690      	mov	r8, r2
 80054c4:	d535      	bpl.n	8005532 <__sfvwrite_r+0x8a>
 80054c6:	6922      	ldr	r2, [r4, #16]
 80054c8:	b39a      	cbz	r2, 8005532 <__sfvwrite_r+0x8a>
 80054ca:	f013 0202 	ands.w	r2, r3, #2
 80054ce:	f8d8 6000 	ldr.w	r6, [r8]
 80054d2:	d03d      	beq.n	8005550 <__sfvwrite_r+0xa8>
 80054d4:	2700      	movs	r7, #0
 80054d6:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80054da:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80054de:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 80057a0 <__sfvwrite_r+0x2f8>
 80054e2:	463d      	mov	r5, r7
 80054e4:	454d      	cmp	r5, r9
 80054e6:	462b      	mov	r3, r5
 80054e8:	463a      	mov	r2, r7
 80054ea:	bf28      	it	cs
 80054ec:	464b      	movcs	r3, r9
 80054ee:	4661      	mov	r1, ip
 80054f0:	4650      	mov	r0, sl
 80054f2:	b1d5      	cbz	r5, 800552a <__sfvwrite_r+0x82>
 80054f4:	47d8      	blx	fp
 80054f6:	2800      	cmp	r0, #0
 80054f8:	f340 80c6 	ble.w	8005688 <__sfvwrite_r+0x1e0>
 80054fc:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005500:	1a1b      	subs	r3, r3, r0
 8005502:	4407      	add	r7, r0
 8005504:	1a2d      	subs	r5, r5, r0
 8005506:	f8c8 3008 	str.w	r3, [r8, #8]
 800550a:	2b00      	cmp	r3, #0
 800550c:	f000 80b0 	beq.w	8005670 <__sfvwrite_r+0x1c8>
 8005510:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005514:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005518:	454d      	cmp	r5, r9
 800551a:	462b      	mov	r3, r5
 800551c:	463a      	mov	r2, r7
 800551e:	bf28      	it	cs
 8005520:	464b      	movcs	r3, r9
 8005522:	4661      	mov	r1, ip
 8005524:	4650      	mov	r0, sl
 8005526:	2d00      	cmp	r5, #0
 8005528:	d1e4      	bne.n	80054f4 <__sfvwrite_r+0x4c>
 800552a:	e9d6 7500 	ldrd	r7, r5, [r6]
 800552e:	3608      	adds	r6, #8
 8005530:	e7d8      	b.n	80054e4 <__sfvwrite_r+0x3c>
 8005532:	4621      	mov	r1, r4
 8005534:	4650      	mov	r0, sl
 8005536:	f7fe fd03 	bl	8003f40 <__swsetup_r>
 800553a:	2800      	cmp	r0, #0
 800553c:	f040 812a 	bne.w	8005794 <__sfvwrite_r+0x2ec>
 8005540:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005544:	f8d8 6000 	ldr.w	r6, [r8]
 8005548:	b29b      	uxth	r3, r3
 800554a:	f013 0202 	ands.w	r2, r3, #2
 800554e:	d1c1      	bne.n	80054d4 <__sfvwrite_r+0x2c>
 8005550:	f013 0901 	ands.w	r9, r3, #1
 8005554:	d15d      	bne.n	8005612 <__sfvwrite_r+0x16a>
 8005556:	68a7      	ldr	r7, [r4, #8]
 8005558:	6820      	ldr	r0, [r4, #0]
 800555a:	464d      	mov	r5, r9
 800555c:	2d00      	cmp	r5, #0
 800555e:	d054      	beq.n	800560a <__sfvwrite_r+0x162>
 8005560:	059a      	lsls	r2, r3, #22
 8005562:	f140 809b 	bpl.w	800569c <__sfvwrite_r+0x1f4>
 8005566:	42af      	cmp	r7, r5
 8005568:	46bb      	mov	fp, r7
 800556a:	f200 80d8 	bhi.w	800571e <__sfvwrite_r+0x276>
 800556e:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005572:	d02f      	beq.n	80055d4 <__sfvwrite_r+0x12c>
 8005574:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005578:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 800557c:	eba0 0b01 	sub.w	fp, r0, r1
 8005580:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005584:	1c68      	adds	r0, r5, #1
 8005586:	107f      	asrs	r7, r7, #1
 8005588:	4458      	add	r0, fp
 800558a:	42b8      	cmp	r0, r7
 800558c:	463a      	mov	r2, r7
 800558e:	bf84      	itt	hi
 8005590:	4607      	movhi	r7, r0
 8005592:	463a      	movhi	r2, r7
 8005594:	055b      	lsls	r3, r3, #21
 8005596:	f140 80d3 	bpl.w	8005740 <__sfvwrite_r+0x298>
 800559a:	4611      	mov	r1, r2
 800559c:	4650      	mov	r0, sl
 800559e:	f000 f9b9 	bl	8005914 <_malloc_r>
 80055a2:	2800      	cmp	r0, #0
 80055a4:	f000 80f0 	beq.w	8005788 <__sfvwrite_r+0x2e0>
 80055a8:	465a      	mov	r2, fp
 80055aa:	6921      	ldr	r1, [r4, #16]
 80055ac:	9001      	str	r0, [sp, #4]
 80055ae:	f7fa ffa7 	bl	8000500 <memcpy>
 80055b2:	89a2      	ldrh	r2, [r4, #12]
 80055b4:	9b01      	ldr	r3, [sp, #4]
 80055b6:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80055ba:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80055be:	81a2      	strh	r2, [r4, #12]
 80055c0:	eba7 020b 	sub.w	r2, r7, fp
 80055c4:	eb03 000b 	add.w	r0, r3, fp
 80055c8:	6167      	str	r7, [r4, #20]
 80055ca:	6123      	str	r3, [r4, #16]
 80055cc:	6020      	str	r0, [r4, #0]
 80055ce:	60a2      	str	r2, [r4, #8]
 80055d0:	462f      	mov	r7, r5
 80055d2:	46ab      	mov	fp, r5
 80055d4:	465a      	mov	r2, fp
 80055d6:	4649      	mov	r1, r9
 80055d8:	f000 fc40 	bl	8005e5c <memmove>
 80055dc:	68a2      	ldr	r2, [r4, #8]
 80055de:	6823      	ldr	r3, [r4, #0]
 80055e0:	1bd2      	subs	r2, r2, r7
 80055e2:	445b      	add	r3, fp
 80055e4:	462f      	mov	r7, r5
 80055e6:	60a2      	str	r2, [r4, #8]
 80055e8:	6023      	str	r3, [r4, #0]
 80055ea:	2500      	movs	r5, #0
 80055ec:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80055f0:	1bdb      	subs	r3, r3, r7
 80055f2:	44b9      	add	r9, r7
 80055f4:	f8c8 3008 	str.w	r3, [r8, #8]
 80055f8:	2b00      	cmp	r3, #0
 80055fa:	d039      	beq.n	8005670 <__sfvwrite_r+0x1c8>
 80055fc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005600:	68a7      	ldr	r7, [r4, #8]
 8005602:	6820      	ldr	r0, [r4, #0]
 8005604:	b29b      	uxth	r3, r3
 8005606:	2d00      	cmp	r5, #0
 8005608:	d1aa      	bne.n	8005560 <__sfvwrite_r+0xb8>
 800560a:	e9d6 9500 	ldrd	r9, r5, [r6]
 800560e:	3608      	adds	r6, #8
 8005610:	e7a4      	b.n	800555c <__sfvwrite_r+0xb4>
 8005612:	4633      	mov	r3, r6
 8005614:	4691      	mov	r9, r2
 8005616:	4610      	mov	r0, r2
 8005618:	4617      	mov	r7, r2
 800561a:	464e      	mov	r6, r9
 800561c:	469b      	mov	fp, r3
 800561e:	2f00      	cmp	r7, #0
 8005620:	d06b      	beq.n	80056fa <__sfvwrite_r+0x252>
 8005622:	2800      	cmp	r0, #0
 8005624:	d071      	beq.n	800570a <__sfvwrite_r+0x262>
 8005626:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 800562a:	6820      	ldr	r0, [r4, #0]
 800562c:	45b9      	cmp	r9, r7
 800562e:	464b      	mov	r3, r9
 8005630:	bf28      	it	cs
 8005632:	463b      	movcs	r3, r7
 8005634:	4288      	cmp	r0, r1
 8005636:	d903      	bls.n	8005640 <__sfvwrite_r+0x198>
 8005638:	68a5      	ldr	r5, [r4, #8]
 800563a:	4415      	add	r5, r2
 800563c:	42ab      	cmp	r3, r5
 800563e:	dc71      	bgt.n	8005724 <__sfvwrite_r+0x27c>
 8005640:	429a      	cmp	r2, r3
 8005642:	f300 8093 	bgt.w	800576c <__sfvwrite_r+0x2c4>
 8005646:	4613      	mov	r3, r2
 8005648:	6a65      	ldr	r5, [r4, #36]	; 0x24
 800564a:	69e1      	ldr	r1, [r4, #28]
 800564c:	4632      	mov	r2, r6
 800564e:	4650      	mov	r0, sl
 8005650:	47a8      	blx	r5
 8005652:	1e05      	subs	r5, r0, #0
 8005654:	dd18      	ble.n	8005688 <__sfvwrite_r+0x1e0>
 8005656:	ebb9 0905 	subs.w	r9, r9, r5
 800565a:	d00f      	beq.n	800567c <__sfvwrite_r+0x1d4>
 800565c:	2001      	movs	r0, #1
 800565e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005662:	1b5b      	subs	r3, r3, r5
 8005664:	442e      	add	r6, r5
 8005666:	1b7f      	subs	r7, r7, r5
 8005668:	f8c8 3008 	str.w	r3, [r8, #8]
 800566c:	2b00      	cmp	r3, #0
 800566e:	d1d6      	bne.n	800561e <__sfvwrite_r+0x176>
 8005670:	2000      	movs	r0, #0
 8005672:	b003      	add	sp, #12
 8005674:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005678:	2000      	movs	r0, #0
 800567a:	4770      	bx	lr
 800567c:	4621      	mov	r1, r4
 800567e:	4650      	mov	r0, sl
 8005680:	f7ff fd20 	bl	80050c4 <_fflush_r>
 8005684:	2800      	cmp	r0, #0
 8005686:	d0ea      	beq.n	800565e <__sfvwrite_r+0x1b6>
 8005688:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800568c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005690:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005694:	81a3      	strh	r3, [r4, #12]
 8005696:	b003      	add	sp, #12
 8005698:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800569c:	6923      	ldr	r3, [r4, #16]
 800569e:	4283      	cmp	r3, r0
 80056a0:	d315      	bcc.n	80056ce <__sfvwrite_r+0x226>
 80056a2:	6961      	ldr	r1, [r4, #20]
 80056a4:	42a9      	cmp	r1, r5
 80056a6:	d812      	bhi.n	80056ce <__sfvwrite_r+0x226>
 80056a8:	4b3c      	ldr	r3, [pc, #240]	; (800579c <__sfvwrite_r+0x2f4>)
 80056aa:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80056ac:	429d      	cmp	r5, r3
 80056ae:	bf94      	ite	ls
 80056b0:	462b      	movls	r3, r5
 80056b2:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80056b6:	464a      	mov	r2, r9
 80056b8:	fb93 f3f1 	sdiv	r3, r3, r1
 80056bc:	4650      	mov	r0, sl
 80056be:	fb01 f303 	mul.w	r3, r1, r3
 80056c2:	69e1      	ldr	r1, [r4, #28]
 80056c4:	47b8      	blx	r7
 80056c6:	1e07      	subs	r7, r0, #0
 80056c8:	ddde      	ble.n	8005688 <__sfvwrite_r+0x1e0>
 80056ca:	1bed      	subs	r5, r5, r7
 80056cc:	e78e      	b.n	80055ec <__sfvwrite_r+0x144>
 80056ce:	42af      	cmp	r7, r5
 80056d0:	bf28      	it	cs
 80056d2:	462f      	movcs	r7, r5
 80056d4:	463a      	mov	r2, r7
 80056d6:	4649      	mov	r1, r9
 80056d8:	f000 fbc0 	bl	8005e5c <memmove>
 80056dc:	68a3      	ldr	r3, [r4, #8]
 80056de:	6822      	ldr	r2, [r4, #0]
 80056e0:	1bdb      	subs	r3, r3, r7
 80056e2:	443a      	add	r2, r7
 80056e4:	60a3      	str	r3, [r4, #8]
 80056e6:	6022      	str	r2, [r4, #0]
 80056e8:	2b00      	cmp	r3, #0
 80056ea:	d1ee      	bne.n	80056ca <__sfvwrite_r+0x222>
 80056ec:	4621      	mov	r1, r4
 80056ee:	4650      	mov	r0, sl
 80056f0:	f7ff fce8 	bl	80050c4 <_fflush_r>
 80056f4:	2800      	cmp	r0, #0
 80056f6:	d0e8      	beq.n	80056ca <__sfvwrite_r+0x222>
 80056f8:	e7c6      	b.n	8005688 <__sfvwrite_r+0x1e0>
 80056fa:	f10b 0308 	add.w	r3, fp, #8
 80056fe:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005702:	469b      	mov	fp, r3
 8005704:	3308      	adds	r3, #8
 8005706:	2f00      	cmp	r7, #0
 8005708:	d0f9      	beq.n	80056fe <__sfvwrite_r+0x256>
 800570a:	463a      	mov	r2, r7
 800570c:	210a      	movs	r1, #10
 800570e:	4630      	mov	r0, r6
 8005710:	f7fb f806 	bl	8000720 <memchr>
 8005714:	b338      	cbz	r0, 8005766 <__sfvwrite_r+0x2be>
 8005716:	3001      	adds	r0, #1
 8005718:	eba0 0906 	sub.w	r9, r0, r6
 800571c:	e783      	b.n	8005626 <__sfvwrite_r+0x17e>
 800571e:	462f      	mov	r7, r5
 8005720:	46ab      	mov	fp, r5
 8005722:	e757      	b.n	80055d4 <__sfvwrite_r+0x12c>
 8005724:	4631      	mov	r1, r6
 8005726:	462a      	mov	r2, r5
 8005728:	f000 fb98 	bl	8005e5c <memmove>
 800572c:	6823      	ldr	r3, [r4, #0]
 800572e:	442b      	add	r3, r5
 8005730:	6023      	str	r3, [r4, #0]
 8005732:	4621      	mov	r1, r4
 8005734:	4650      	mov	r0, sl
 8005736:	f7ff fcc5 	bl	80050c4 <_fflush_r>
 800573a:	2800      	cmp	r0, #0
 800573c:	d08b      	beq.n	8005656 <__sfvwrite_r+0x1ae>
 800573e:	e7a3      	b.n	8005688 <__sfvwrite_r+0x1e0>
 8005740:	4650      	mov	r0, sl
 8005742:	f000 ff05 	bl	8006550 <_realloc_r>
 8005746:	4603      	mov	r3, r0
 8005748:	2800      	cmp	r0, #0
 800574a:	f47f af39 	bne.w	80055c0 <__sfvwrite_r+0x118>
 800574e:	6921      	ldr	r1, [r4, #16]
 8005750:	4650      	mov	r0, sl
 8005752:	f7ff fdb5 	bl	80052c0 <_free_r>
 8005756:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800575a:	220c      	movs	r2, #12
 800575c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005760:	f8ca 2000 	str.w	r2, [sl]
 8005764:	e792      	b.n	800568c <__sfvwrite_r+0x1e4>
 8005766:	f107 0901 	add.w	r9, r7, #1
 800576a:	e75c      	b.n	8005626 <__sfvwrite_r+0x17e>
 800576c:	461a      	mov	r2, r3
 800576e:	4631      	mov	r1, r6
 8005770:	9301      	str	r3, [sp, #4]
 8005772:	f000 fb73 	bl	8005e5c <memmove>
 8005776:	9b01      	ldr	r3, [sp, #4]
 8005778:	68a1      	ldr	r1, [r4, #8]
 800577a:	6822      	ldr	r2, [r4, #0]
 800577c:	1ac9      	subs	r1, r1, r3
 800577e:	441a      	add	r2, r3
 8005780:	60a1      	str	r1, [r4, #8]
 8005782:	6022      	str	r2, [r4, #0]
 8005784:	461d      	mov	r5, r3
 8005786:	e766      	b.n	8005656 <__sfvwrite_r+0x1ae>
 8005788:	230c      	movs	r3, #12
 800578a:	f8ca 3000 	str.w	r3, [sl]
 800578e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005792:	e77b      	b.n	800568c <__sfvwrite_r+0x1e4>
 8005794:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005798:	e76b      	b.n	8005672 <__sfvwrite_r+0x1ca>
 800579a:	bf00      	nop
 800579c:	7ffffffe 	.word	0x7ffffffe
 80057a0:	7ffffc00 	.word	0x7ffffc00

080057a4 <_fwalk_reent>:
 80057a4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80057a8:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80057ac:	d01f      	beq.n	80057ee <_fwalk_reent+0x4a>
 80057ae:	4688      	mov	r8, r1
 80057b0:	4606      	mov	r6, r0
 80057b2:	f04f 0900 	mov.w	r9, #0
 80057b6:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 80057ba:	3d01      	subs	r5, #1
 80057bc:	d411      	bmi.n	80057e2 <_fwalk_reent+0x3e>
 80057be:	89a3      	ldrh	r3, [r4, #12]
 80057c0:	2b01      	cmp	r3, #1
 80057c2:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 80057c6:	4621      	mov	r1, r4
 80057c8:	4630      	mov	r0, r6
 80057ca:	d906      	bls.n	80057da <_fwalk_reent+0x36>
 80057cc:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80057d0:	3301      	adds	r3, #1
 80057d2:	d002      	beq.n	80057da <_fwalk_reent+0x36>
 80057d4:	47c0      	blx	r8
 80057d6:	ea49 0900 	orr.w	r9, r9, r0
 80057da:	1c6b      	adds	r3, r5, #1
 80057dc:	f104 0468 	add.w	r4, r4, #104	; 0x68
 80057e0:	d1ed      	bne.n	80057be <_fwalk_reent+0x1a>
 80057e2:	683f      	ldr	r7, [r7, #0]
 80057e4:	2f00      	cmp	r7, #0
 80057e6:	d1e6      	bne.n	80057b6 <_fwalk_reent+0x12>
 80057e8:	4648      	mov	r0, r9
 80057ea:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80057ee:	46b9      	mov	r9, r7
 80057f0:	4648      	mov	r0, r9
 80057f2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80057f6:	bf00      	nop

080057f8 <_localeconv_r>:
 80057f8:	4a04      	ldr	r2, [pc, #16]	; (800580c <_localeconv_r+0x14>)
 80057fa:	4b05      	ldr	r3, [pc, #20]	; (8005810 <_localeconv_r+0x18>)
 80057fc:	6812      	ldr	r2, [r2, #0]
 80057fe:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005800:	2800      	cmp	r0, #0
 8005802:	bf08      	it	eq
 8005804:	4618      	moveq	r0, r3
 8005806:	30f0      	adds	r0, #240	; 0xf0
 8005808:	4770      	bx	lr
 800580a:	bf00      	nop
 800580c:	2000002c 	.word	0x2000002c
 8005810:	2000086c 	.word	0x2000086c

08005814 <__retarget_lock_init_recursive>:
 8005814:	4770      	bx	lr
 8005816:	bf00      	nop

08005818 <__retarget_lock_close_recursive>:
 8005818:	4770      	bx	lr
 800581a:	bf00      	nop

0800581c <__retarget_lock_acquire_recursive>:
 800581c:	4770      	bx	lr
 800581e:	bf00      	nop

08005820 <__retarget_lock_release_recursive>:
 8005820:	4770      	bx	lr
 8005822:	bf00      	nop

08005824 <__swhatbuf_r>:
 8005824:	b570      	push	{r4, r5, r6, lr}
 8005826:	460c      	mov	r4, r1
 8005828:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800582c:	2900      	cmp	r1, #0
 800582e:	b096      	sub	sp, #88	; 0x58
 8005830:	4615      	mov	r5, r2
 8005832:	461e      	mov	r6, r3
 8005834:	da0f      	bge.n	8005856 <__swhatbuf_r+0x32>
 8005836:	89a2      	ldrh	r2, [r4, #12]
 8005838:	2300      	movs	r3, #0
 800583a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 800583e:	6033      	str	r3, [r6, #0]
 8005840:	d104      	bne.n	800584c <__swhatbuf_r+0x28>
 8005842:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005846:	602b      	str	r3, [r5, #0]
 8005848:	b016      	add	sp, #88	; 0x58
 800584a:	bd70      	pop	{r4, r5, r6, pc}
 800584c:	2240      	movs	r2, #64	; 0x40
 800584e:	4618      	mov	r0, r3
 8005850:	602a      	str	r2, [r5, #0]
 8005852:	b016      	add	sp, #88	; 0x58
 8005854:	bd70      	pop	{r4, r5, r6, pc}
 8005856:	466a      	mov	r2, sp
 8005858:	f001 fad0 	bl	8006dfc <_fstat_r>
 800585c:	2800      	cmp	r0, #0
 800585e:	dbea      	blt.n	8005836 <__swhatbuf_r+0x12>
 8005860:	9b01      	ldr	r3, [sp, #4]
 8005862:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005866:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 800586a:	fab3 f383 	clz	r3, r3
 800586e:	095b      	lsrs	r3, r3, #5
 8005870:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005874:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005878:	6033      	str	r3, [r6, #0]
 800587a:	602a      	str	r2, [r5, #0]
 800587c:	b016      	add	sp, #88	; 0x58
 800587e:	bd70      	pop	{r4, r5, r6, pc}

08005880 <__smakebuf_r>:
 8005880:	898a      	ldrh	r2, [r1, #12]
 8005882:	0792      	lsls	r2, r2, #30
 8005884:	460b      	mov	r3, r1
 8005886:	d506      	bpl.n	8005896 <__smakebuf_r+0x16>
 8005888:	f101 0243 	add.w	r2, r1, #67	; 0x43
 800588c:	2101      	movs	r1, #1
 800588e:	601a      	str	r2, [r3, #0]
 8005890:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005894:	4770      	bx	lr
 8005896:	b570      	push	{r4, r5, r6, lr}
 8005898:	b082      	sub	sp, #8
 800589a:	ab01      	add	r3, sp, #4
 800589c:	466a      	mov	r2, sp
 800589e:	460c      	mov	r4, r1
 80058a0:	4605      	mov	r5, r0
 80058a2:	f7ff ffbf 	bl	8005824 <__swhatbuf_r>
 80058a6:	9900      	ldr	r1, [sp, #0]
 80058a8:	4606      	mov	r6, r0
 80058aa:	4628      	mov	r0, r5
 80058ac:	f000 f832 	bl	8005914 <_malloc_r>
 80058b0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80058b4:	b1d8      	cbz	r0, 80058ee <__smakebuf_r+0x6e>
 80058b6:	4916      	ldr	r1, [pc, #88]	; (8005910 <__smakebuf_r+0x90>)
 80058b8:	63e9      	str	r1, [r5, #60]	; 0x3c
 80058ba:	9a01      	ldr	r2, [sp, #4]
 80058bc:	9900      	ldr	r1, [sp, #0]
 80058be:	6020      	str	r0, [r4, #0]
 80058c0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80058c4:	81a3      	strh	r3, [r4, #12]
 80058c6:	e9c4 0104 	strd	r0, r1, [r4, #16]
 80058ca:	b91a      	cbnz	r2, 80058d4 <__smakebuf_r+0x54>
 80058cc:	4333      	orrs	r3, r6
 80058ce:	81a3      	strh	r3, [r4, #12]
 80058d0:	b002      	add	sp, #8
 80058d2:	bd70      	pop	{r4, r5, r6, pc}
 80058d4:	4628      	mov	r0, r5
 80058d6:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80058da:	f001 faa3 	bl	8006e24 <_isatty_r>
 80058de:	b1a0      	cbz	r0, 800590a <__smakebuf_r+0x8a>
 80058e0:	89a3      	ldrh	r3, [r4, #12]
 80058e2:	f023 0303 	bic.w	r3, r3, #3
 80058e6:	f043 0301 	orr.w	r3, r3, #1
 80058ea:	b21b      	sxth	r3, r3
 80058ec:	e7ee      	b.n	80058cc <__smakebuf_r+0x4c>
 80058ee:	059a      	lsls	r2, r3, #22
 80058f0:	d4ee      	bmi.n	80058d0 <__smakebuf_r+0x50>
 80058f2:	f023 0303 	bic.w	r3, r3, #3
 80058f6:	f104 0243 	add.w	r2, r4, #67	; 0x43
 80058fa:	f043 0302 	orr.w	r3, r3, #2
 80058fe:	2101      	movs	r1, #1
 8005900:	81a3      	strh	r3, [r4, #12]
 8005902:	6022      	str	r2, [r4, #0]
 8005904:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005908:	e7e2      	b.n	80058d0 <__smakebuf_r+0x50>
 800590a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800590e:	e7dd      	b.n	80058cc <__smakebuf_r+0x4c>
 8005910:	08005171 	.word	0x08005171

08005914 <_malloc_r>:
 8005914:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005918:	f101 050b 	add.w	r5, r1, #11
 800591c:	2d16      	cmp	r5, #22
 800591e:	b083      	sub	sp, #12
 8005920:	4606      	mov	r6, r0
 8005922:	d823      	bhi.n	800596c <_malloc_r+0x58>
 8005924:	2910      	cmp	r1, #16
 8005926:	f200 80b9 	bhi.w	8005a9c <_malloc_r+0x188>
 800592a:	f000 fafb 	bl	8005f24 <__malloc_lock>
 800592e:	2510      	movs	r5, #16
 8005930:	2318      	movs	r3, #24
 8005932:	2002      	movs	r0, #2
 8005934:	4fc5      	ldr	r7, [pc, #788]	; (8005c4c <_malloc_r+0x338>)
 8005936:	443b      	add	r3, r7
 8005938:	f1a3 0208 	sub.w	r2, r3, #8
 800593c:	685c      	ldr	r4, [r3, #4]
 800593e:	4294      	cmp	r4, r2
 8005940:	f000 8166 	beq.w	8005c10 <_malloc_r+0x2fc>
 8005944:	6863      	ldr	r3, [r4, #4]
 8005946:	f023 0303 	bic.w	r3, r3, #3
 800594a:	4423      	add	r3, r4
 800594c:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005950:	685a      	ldr	r2, [r3, #4]
 8005952:	60e9      	str	r1, [r5, #12]
 8005954:	f042 0201 	orr.w	r2, r2, #1
 8005958:	608d      	str	r5, [r1, #8]
 800595a:	4630      	mov	r0, r6
 800595c:	605a      	str	r2, [r3, #4]
 800595e:	f000 fae7 	bl	8005f30 <__malloc_unlock>
 8005962:	3408      	adds	r4, #8
 8005964:	4620      	mov	r0, r4
 8005966:	b003      	add	sp, #12
 8005968:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800596c:	f035 0507 	bics.w	r5, r5, #7
 8005970:	f100 8094 	bmi.w	8005a9c <_malloc_r+0x188>
 8005974:	42a9      	cmp	r1, r5
 8005976:	f200 8091 	bhi.w	8005a9c <_malloc_r+0x188>
 800597a:	f000 fad3 	bl	8005f24 <__malloc_lock>
 800597e:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005982:	f0c0 8183 	bcc.w	8005c8c <_malloc_r+0x378>
 8005986:	0a6b      	lsrs	r3, r5, #9
 8005988:	f000 808f 	beq.w	8005aaa <_malloc_r+0x196>
 800598c:	2b04      	cmp	r3, #4
 800598e:	f200 8146 	bhi.w	8005c1e <_malloc_r+0x30a>
 8005992:	09ab      	lsrs	r3, r5, #6
 8005994:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005998:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 800599c:	00c3      	lsls	r3, r0, #3
 800599e:	4fab      	ldr	r7, [pc, #684]	; (8005c4c <_malloc_r+0x338>)
 80059a0:	443b      	add	r3, r7
 80059a2:	f1a3 0108 	sub.w	r1, r3, #8
 80059a6:	685c      	ldr	r4, [r3, #4]
 80059a8:	42a1      	cmp	r1, r4
 80059aa:	d106      	bne.n	80059ba <_malloc_r+0xa6>
 80059ac:	e00c      	b.n	80059c8 <_malloc_r+0xb4>
 80059ae:	2a00      	cmp	r2, #0
 80059b0:	f280 811d 	bge.w	8005bee <_malloc_r+0x2da>
 80059b4:	68e4      	ldr	r4, [r4, #12]
 80059b6:	42a1      	cmp	r1, r4
 80059b8:	d006      	beq.n	80059c8 <_malloc_r+0xb4>
 80059ba:	6863      	ldr	r3, [r4, #4]
 80059bc:	f023 0303 	bic.w	r3, r3, #3
 80059c0:	1b5a      	subs	r2, r3, r5
 80059c2:	2a0f      	cmp	r2, #15
 80059c4:	ddf3      	ble.n	80059ae <_malloc_r+0x9a>
 80059c6:	4660      	mov	r0, ip
 80059c8:	693c      	ldr	r4, [r7, #16]
 80059ca:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005c60 <_malloc_r+0x34c>
 80059ce:	4564      	cmp	r4, ip
 80059d0:	d071      	beq.n	8005ab6 <_malloc_r+0x1a2>
 80059d2:	6863      	ldr	r3, [r4, #4]
 80059d4:	f023 0303 	bic.w	r3, r3, #3
 80059d8:	1b5a      	subs	r2, r3, r5
 80059da:	2a0f      	cmp	r2, #15
 80059dc:	f300 8144 	bgt.w	8005c68 <_malloc_r+0x354>
 80059e0:	2a00      	cmp	r2, #0
 80059e2:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 80059e6:	f280 8126 	bge.w	8005c36 <_malloc_r+0x322>
 80059ea:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80059ee:	f080 8169 	bcs.w	8005cc4 <_malloc_r+0x3b0>
 80059f2:	08db      	lsrs	r3, r3, #3
 80059f4:	1c59      	adds	r1, r3, #1
 80059f6:	687a      	ldr	r2, [r7, #4]
 80059f8:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 80059fc:	f8c4 8008 	str.w	r8, [r4, #8]
 8005a00:	f04f 0e01 	mov.w	lr, #1
 8005a04:	109b      	asrs	r3, r3, #2
 8005a06:	fa0e f303 	lsl.w	r3, lr, r3
 8005a0a:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005a0e:	4313      	orrs	r3, r2
 8005a10:	f1ae 0208 	sub.w	r2, lr, #8
 8005a14:	60e2      	str	r2, [r4, #12]
 8005a16:	607b      	str	r3, [r7, #4]
 8005a18:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005a1c:	f8c8 400c 	str.w	r4, [r8, #12]
 8005a20:	1082      	asrs	r2, r0, #2
 8005a22:	2401      	movs	r4, #1
 8005a24:	4094      	lsls	r4, r2
 8005a26:	429c      	cmp	r4, r3
 8005a28:	d84b      	bhi.n	8005ac2 <_malloc_r+0x1ae>
 8005a2a:	421c      	tst	r4, r3
 8005a2c:	d106      	bne.n	8005a3c <_malloc_r+0x128>
 8005a2e:	f020 0003 	bic.w	r0, r0, #3
 8005a32:	0064      	lsls	r4, r4, #1
 8005a34:	421c      	tst	r4, r3
 8005a36:	f100 0004 	add.w	r0, r0, #4
 8005a3a:	d0fa      	beq.n	8005a32 <_malloc_r+0x11e>
 8005a3c:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005a40:	46ce      	mov	lr, r9
 8005a42:	4680      	mov	r8, r0
 8005a44:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005a48:	459e      	cmp	lr, r3
 8005a4a:	d107      	bne.n	8005a5c <_malloc_r+0x148>
 8005a4c:	e122      	b.n	8005c94 <_malloc_r+0x380>
 8005a4e:	2a00      	cmp	r2, #0
 8005a50:	f280 8129 	bge.w	8005ca6 <_malloc_r+0x392>
 8005a54:	68db      	ldr	r3, [r3, #12]
 8005a56:	459e      	cmp	lr, r3
 8005a58:	f000 811c 	beq.w	8005c94 <_malloc_r+0x380>
 8005a5c:	6859      	ldr	r1, [r3, #4]
 8005a5e:	f021 0103 	bic.w	r1, r1, #3
 8005a62:	1b4a      	subs	r2, r1, r5
 8005a64:	2a0f      	cmp	r2, #15
 8005a66:	ddf2      	ble.n	8005a4e <_malloc_r+0x13a>
 8005a68:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005a6c:	195c      	adds	r4, r3, r5
 8005a6e:	f045 0501 	orr.w	r5, r5, #1
 8005a72:	605d      	str	r5, [r3, #4]
 8005a74:	f042 0501 	orr.w	r5, r2, #1
 8005a78:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005a7c:	4630      	mov	r0, r6
 8005a7e:	f8ce 8008 	str.w	r8, [lr, #8]
 8005a82:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005a86:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005a8a:	6065      	str	r5, [r4, #4]
 8005a8c:	505a      	str	r2, [r3, r1]
 8005a8e:	9301      	str	r3, [sp, #4]
 8005a90:	f000 fa4e 	bl	8005f30 <__malloc_unlock>
 8005a94:	9b01      	ldr	r3, [sp, #4]
 8005a96:	f103 0408 	add.w	r4, r3, #8
 8005a9a:	e763      	b.n	8005964 <_malloc_r+0x50>
 8005a9c:	2400      	movs	r4, #0
 8005a9e:	230c      	movs	r3, #12
 8005aa0:	4620      	mov	r0, r4
 8005aa2:	6033      	str	r3, [r6, #0]
 8005aa4:	b003      	add	sp, #12
 8005aa6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005aaa:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005aae:	2040      	movs	r0, #64	; 0x40
 8005ab0:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005ab4:	e773      	b.n	800599e <_malloc_r+0x8a>
 8005ab6:	687b      	ldr	r3, [r7, #4]
 8005ab8:	1082      	asrs	r2, r0, #2
 8005aba:	2401      	movs	r4, #1
 8005abc:	4094      	lsls	r4, r2
 8005abe:	429c      	cmp	r4, r3
 8005ac0:	d9b3      	bls.n	8005a2a <_malloc_r+0x116>
 8005ac2:	68bc      	ldr	r4, [r7, #8]
 8005ac4:	6863      	ldr	r3, [r4, #4]
 8005ac6:	f023 0903 	bic.w	r9, r3, #3
 8005aca:	45a9      	cmp	r9, r5
 8005acc:	d303      	bcc.n	8005ad6 <_malloc_r+0x1c2>
 8005ace:	eba9 0305 	sub.w	r3, r9, r5
 8005ad2:	2b0f      	cmp	r3, #15
 8005ad4:	dc7b      	bgt.n	8005bce <_malloc_r+0x2ba>
 8005ad6:	4b5e      	ldr	r3, [pc, #376]	; (8005c50 <_malloc_r+0x33c>)
 8005ad8:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005c64 <_malloc_r+0x350>
 8005adc:	681a      	ldr	r2, [r3, #0]
 8005ade:	f8da 3000 	ldr.w	r3, [sl]
 8005ae2:	3301      	adds	r3, #1
 8005ae4:	eb05 0802 	add.w	r8, r5, r2
 8005ae8:	f000 8148 	beq.w	8005d7c <_malloc_r+0x468>
 8005aec:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005af0:	f108 080f 	add.w	r8, r8, #15
 8005af4:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005af8:	f028 080f 	bic.w	r8, r8, #15
 8005afc:	4641      	mov	r1, r8
 8005afe:	4630      	mov	r0, r6
 8005b00:	f000 ff08 	bl	8006914 <_sbrk_r>
 8005b04:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005b08:	4683      	mov	fp, r0
 8005b0a:	f000 8104 	beq.w	8005d16 <_malloc_r+0x402>
 8005b0e:	eb04 0009 	add.w	r0, r4, r9
 8005b12:	4558      	cmp	r0, fp
 8005b14:	f200 80fd 	bhi.w	8005d12 <_malloc_r+0x3fe>
 8005b18:	4a4e      	ldr	r2, [pc, #312]	; (8005c54 <_malloc_r+0x340>)
 8005b1a:	6813      	ldr	r3, [r2, #0]
 8005b1c:	4443      	add	r3, r8
 8005b1e:	6013      	str	r3, [r2, #0]
 8005b20:	f000 814d 	beq.w	8005dbe <_malloc_r+0x4aa>
 8005b24:	f8da 1000 	ldr.w	r1, [sl]
 8005b28:	3101      	adds	r1, #1
 8005b2a:	bf1b      	ittet	ne
 8005b2c:	ebab 0000 	subne.w	r0, fp, r0
 8005b30:	181b      	addne	r3, r3, r0
 8005b32:	f8ca b000 	streq.w	fp, [sl]
 8005b36:	6013      	strne	r3, [r2, #0]
 8005b38:	f01b 0307 	ands.w	r3, fp, #7
 8005b3c:	f000 8134 	beq.w	8005da8 <_malloc_r+0x494>
 8005b40:	f1c3 0108 	rsb	r1, r3, #8
 8005b44:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005b48:	448b      	add	fp, r1
 8005b4a:	3308      	adds	r3, #8
 8005b4c:	44d8      	add	r8, fp
 8005b4e:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005b52:	eba3 0808 	sub.w	r8, r3, r8
 8005b56:	4641      	mov	r1, r8
 8005b58:	4630      	mov	r0, r6
 8005b5a:	9201      	str	r2, [sp, #4]
 8005b5c:	f000 feda 	bl	8006914 <_sbrk_r>
 8005b60:	1c43      	adds	r3, r0, #1
 8005b62:	9a01      	ldr	r2, [sp, #4]
 8005b64:	f000 8146 	beq.w	8005df4 <_malloc_r+0x4e0>
 8005b68:	eba0 010b 	sub.w	r1, r0, fp
 8005b6c:	4441      	add	r1, r8
 8005b6e:	f041 0101 	orr.w	r1, r1, #1
 8005b72:	6813      	ldr	r3, [r2, #0]
 8005b74:	f8c7 b008 	str.w	fp, [r7, #8]
 8005b78:	4443      	add	r3, r8
 8005b7a:	42bc      	cmp	r4, r7
 8005b7c:	f8cb 1004 	str.w	r1, [fp, #4]
 8005b80:	6013      	str	r3, [r2, #0]
 8005b82:	d015      	beq.n	8005bb0 <_malloc_r+0x29c>
 8005b84:	f1b9 0f0f 	cmp.w	r9, #15
 8005b88:	f240 8130 	bls.w	8005dec <_malloc_r+0x4d8>
 8005b8c:	6860      	ldr	r0, [r4, #4]
 8005b8e:	f1a9 010c 	sub.w	r1, r9, #12
 8005b92:	f021 0107 	bic.w	r1, r1, #7
 8005b96:	f000 0001 	and.w	r0, r0, #1
 8005b9a:	eb04 0c01 	add.w	ip, r4, r1
 8005b9e:	4308      	orrs	r0, r1
 8005ba0:	f04f 0e05 	mov.w	lr, #5
 8005ba4:	290f      	cmp	r1, #15
 8005ba6:	6060      	str	r0, [r4, #4]
 8005ba8:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005bac:	f200 813a 	bhi.w	8005e24 <_malloc_r+0x510>
 8005bb0:	4a29      	ldr	r2, [pc, #164]	; (8005c58 <_malloc_r+0x344>)
 8005bb2:	482a      	ldr	r0, [pc, #168]	; (8005c5c <_malloc_r+0x348>)
 8005bb4:	6811      	ldr	r1, [r2, #0]
 8005bb6:	68bc      	ldr	r4, [r7, #8]
 8005bb8:	428b      	cmp	r3, r1
 8005bba:	6801      	ldr	r1, [r0, #0]
 8005bbc:	bf88      	it	hi
 8005bbe:	6013      	strhi	r3, [r2, #0]
 8005bc0:	6862      	ldr	r2, [r4, #4]
 8005bc2:	428b      	cmp	r3, r1
 8005bc4:	f022 0203 	bic.w	r2, r2, #3
 8005bc8:	bf88      	it	hi
 8005bca:	6003      	strhi	r3, [r0, #0]
 8005bcc:	e0a7      	b.n	8005d1e <_malloc_r+0x40a>
 8005bce:	1962      	adds	r2, r4, r5
 8005bd0:	f043 0301 	orr.w	r3, r3, #1
 8005bd4:	f045 0501 	orr.w	r5, r5, #1
 8005bd8:	6065      	str	r5, [r4, #4]
 8005bda:	4630      	mov	r0, r6
 8005bdc:	60ba      	str	r2, [r7, #8]
 8005bde:	6053      	str	r3, [r2, #4]
 8005be0:	f000 f9a6 	bl	8005f30 <__malloc_unlock>
 8005be4:	3408      	adds	r4, #8
 8005be6:	4620      	mov	r0, r4
 8005be8:	b003      	add	sp, #12
 8005bea:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005bee:	4423      	add	r3, r4
 8005bf0:	68e1      	ldr	r1, [r4, #12]
 8005bf2:	685a      	ldr	r2, [r3, #4]
 8005bf4:	68a5      	ldr	r5, [r4, #8]
 8005bf6:	f042 0201 	orr.w	r2, r2, #1
 8005bfa:	60e9      	str	r1, [r5, #12]
 8005bfc:	4630      	mov	r0, r6
 8005bfe:	608d      	str	r5, [r1, #8]
 8005c00:	605a      	str	r2, [r3, #4]
 8005c02:	f000 f995 	bl	8005f30 <__malloc_unlock>
 8005c06:	3408      	adds	r4, #8
 8005c08:	4620      	mov	r0, r4
 8005c0a:	b003      	add	sp, #12
 8005c0c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c10:	68dc      	ldr	r4, [r3, #12]
 8005c12:	42a3      	cmp	r3, r4
 8005c14:	bf08      	it	eq
 8005c16:	3002      	addeq	r0, #2
 8005c18:	f43f aed6 	beq.w	80059c8 <_malloc_r+0xb4>
 8005c1c:	e692      	b.n	8005944 <_malloc_r+0x30>
 8005c1e:	2b14      	cmp	r3, #20
 8005c20:	d971      	bls.n	8005d06 <_malloc_r+0x3f2>
 8005c22:	2b54      	cmp	r3, #84	; 0x54
 8005c24:	f200 80ad 	bhi.w	8005d82 <_malloc_r+0x46e>
 8005c28:	0b2b      	lsrs	r3, r5, #12
 8005c2a:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005c2e:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005c32:	00c3      	lsls	r3, r0, #3
 8005c34:	e6b3      	b.n	800599e <_malloc_r+0x8a>
 8005c36:	4423      	add	r3, r4
 8005c38:	4630      	mov	r0, r6
 8005c3a:	685a      	ldr	r2, [r3, #4]
 8005c3c:	f042 0201 	orr.w	r2, r2, #1
 8005c40:	605a      	str	r2, [r3, #4]
 8005c42:	3408      	adds	r4, #8
 8005c44:	f000 f974 	bl	8005f30 <__malloc_unlock>
 8005c48:	e68c      	b.n	8005964 <_malloc_r+0x50>
 8005c4a:	bf00      	nop
 8005c4c:	2000045c 	.word	0x2000045c
 8005c50:	20000aac 	.word	0x20000aac
 8005c54:	20000a7c 	.word	0x20000a7c
 8005c58:	20000aa4 	.word	0x20000aa4
 8005c5c:	20000aa8 	.word	0x20000aa8
 8005c60:	20000464 	.word	0x20000464
 8005c64:	20000864 	.word	0x20000864
 8005c68:	1961      	adds	r1, r4, r5
 8005c6a:	f045 0e01 	orr.w	lr, r5, #1
 8005c6e:	f042 0501 	orr.w	r5, r2, #1
 8005c72:	f8c4 e004 	str.w	lr, [r4, #4]
 8005c76:	4630      	mov	r0, r6
 8005c78:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005c7c:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005c80:	604d      	str	r5, [r1, #4]
 8005c82:	50e2      	str	r2, [r4, r3]
 8005c84:	f000 f954 	bl	8005f30 <__malloc_unlock>
 8005c88:	3408      	adds	r4, #8
 8005c8a:	e66b      	b.n	8005964 <_malloc_r+0x50>
 8005c8c:	08e8      	lsrs	r0, r5, #3
 8005c8e:	f105 0308 	add.w	r3, r5, #8
 8005c92:	e64f      	b.n	8005934 <_malloc_r+0x20>
 8005c94:	f108 0801 	add.w	r8, r8, #1
 8005c98:	f018 0f03 	tst.w	r8, #3
 8005c9c:	f10e 0e08 	add.w	lr, lr, #8
 8005ca0:	f47f aed0 	bne.w	8005a44 <_malloc_r+0x130>
 8005ca4:	e052      	b.n	8005d4c <_malloc_r+0x438>
 8005ca6:	4419      	add	r1, r3
 8005ca8:	461c      	mov	r4, r3
 8005caa:	684a      	ldr	r2, [r1, #4]
 8005cac:	68db      	ldr	r3, [r3, #12]
 8005cae:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005cb2:	f042 0201 	orr.w	r2, r2, #1
 8005cb6:	604a      	str	r2, [r1, #4]
 8005cb8:	4630      	mov	r0, r6
 8005cba:	60eb      	str	r3, [r5, #12]
 8005cbc:	609d      	str	r5, [r3, #8]
 8005cbe:	f000 f937 	bl	8005f30 <__malloc_unlock>
 8005cc2:	e64f      	b.n	8005964 <_malloc_r+0x50>
 8005cc4:	0a5a      	lsrs	r2, r3, #9
 8005cc6:	2a04      	cmp	r2, #4
 8005cc8:	d935      	bls.n	8005d36 <_malloc_r+0x422>
 8005cca:	2a14      	cmp	r2, #20
 8005ccc:	d86f      	bhi.n	8005dae <_malloc_r+0x49a>
 8005cce:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005cd2:	00c9      	lsls	r1, r1, #3
 8005cd4:	325b      	adds	r2, #91	; 0x5b
 8005cd6:	eb07 0e01 	add.w	lr, r7, r1
 8005cda:	5879      	ldr	r1, [r7, r1]
 8005cdc:	f1ae 0e08 	sub.w	lr, lr, #8
 8005ce0:	458e      	cmp	lr, r1
 8005ce2:	d058      	beq.n	8005d96 <_malloc_r+0x482>
 8005ce4:	684a      	ldr	r2, [r1, #4]
 8005ce6:	f022 0203 	bic.w	r2, r2, #3
 8005cea:	429a      	cmp	r2, r3
 8005cec:	d902      	bls.n	8005cf4 <_malloc_r+0x3e0>
 8005cee:	6889      	ldr	r1, [r1, #8]
 8005cf0:	458e      	cmp	lr, r1
 8005cf2:	d1f7      	bne.n	8005ce4 <_malloc_r+0x3d0>
 8005cf4:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005cf8:	687b      	ldr	r3, [r7, #4]
 8005cfa:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005cfe:	f8ce 4008 	str.w	r4, [lr, #8]
 8005d02:	60cc      	str	r4, [r1, #12]
 8005d04:	e68c      	b.n	8005a20 <_malloc_r+0x10c>
 8005d06:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005d0a:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005d0e:	00c3      	lsls	r3, r0, #3
 8005d10:	e645      	b.n	800599e <_malloc_r+0x8a>
 8005d12:	42bc      	cmp	r4, r7
 8005d14:	d072      	beq.n	8005dfc <_malloc_r+0x4e8>
 8005d16:	68bc      	ldr	r4, [r7, #8]
 8005d18:	6862      	ldr	r2, [r4, #4]
 8005d1a:	f022 0203 	bic.w	r2, r2, #3
 8005d1e:	4295      	cmp	r5, r2
 8005d20:	eba2 0305 	sub.w	r3, r2, r5
 8005d24:	d802      	bhi.n	8005d2c <_malloc_r+0x418>
 8005d26:	2b0f      	cmp	r3, #15
 8005d28:	f73f af51 	bgt.w	8005bce <_malloc_r+0x2ba>
 8005d2c:	4630      	mov	r0, r6
 8005d2e:	f000 f8ff 	bl	8005f30 <__malloc_unlock>
 8005d32:	2400      	movs	r4, #0
 8005d34:	e616      	b.n	8005964 <_malloc_r+0x50>
 8005d36:	099a      	lsrs	r2, r3, #6
 8005d38:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005d3c:	00c9      	lsls	r1, r1, #3
 8005d3e:	3238      	adds	r2, #56	; 0x38
 8005d40:	e7c9      	b.n	8005cd6 <_malloc_r+0x3c2>
 8005d42:	f8d9 9000 	ldr.w	r9, [r9]
 8005d46:	4599      	cmp	r9, r3
 8005d48:	f040 8083 	bne.w	8005e52 <_malloc_r+0x53e>
 8005d4c:	f010 0f03 	tst.w	r0, #3
 8005d50:	f1a9 0308 	sub.w	r3, r9, #8
 8005d54:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005d58:	d1f3      	bne.n	8005d42 <_malloc_r+0x42e>
 8005d5a:	687b      	ldr	r3, [r7, #4]
 8005d5c:	ea23 0304 	bic.w	r3, r3, r4
 8005d60:	607b      	str	r3, [r7, #4]
 8005d62:	0064      	lsls	r4, r4, #1
 8005d64:	429c      	cmp	r4, r3
 8005d66:	f63f aeac 	bhi.w	8005ac2 <_malloc_r+0x1ae>
 8005d6a:	b91c      	cbnz	r4, 8005d74 <_malloc_r+0x460>
 8005d6c:	e6a9      	b.n	8005ac2 <_malloc_r+0x1ae>
 8005d6e:	0064      	lsls	r4, r4, #1
 8005d70:	f108 0804 	add.w	r8, r8, #4
 8005d74:	421c      	tst	r4, r3
 8005d76:	d0fa      	beq.n	8005d6e <_malloc_r+0x45a>
 8005d78:	4640      	mov	r0, r8
 8005d7a:	e65f      	b.n	8005a3c <_malloc_r+0x128>
 8005d7c:	f108 0810 	add.w	r8, r8, #16
 8005d80:	e6bc      	b.n	8005afc <_malloc_r+0x1e8>
 8005d82:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005d86:	d826      	bhi.n	8005dd6 <_malloc_r+0x4c2>
 8005d88:	0beb      	lsrs	r3, r5, #15
 8005d8a:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005d8e:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005d92:	00c3      	lsls	r3, r0, #3
 8005d94:	e603      	b.n	800599e <_malloc_r+0x8a>
 8005d96:	687b      	ldr	r3, [r7, #4]
 8005d98:	1092      	asrs	r2, r2, #2
 8005d9a:	f04f 0801 	mov.w	r8, #1
 8005d9e:	fa08 f202 	lsl.w	r2, r8, r2
 8005da2:	4313      	orrs	r3, r2
 8005da4:	607b      	str	r3, [r7, #4]
 8005da6:	e7a8      	b.n	8005cfa <_malloc_r+0x3e6>
 8005da8:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005dac:	e6ce      	b.n	8005b4c <_malloc_r+0x238>
 8005dae:	2a54      	cmp	r2, #84	; 0x54
 8005db0:	d829      	bhi.n	8005e06 <_malloc_r+0x4f2>
 8005db2:	0b1a      	lsrs	r2, r3, #12
 8005db4:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005db8:	00c9      	lsls	r1, r1, #3
 8005dba:	326e      	adds	r2, #110	; 0x6e
 8005dbc:	e78b      	b.n	8005cd6 <_malloc_r+0x3c2>
 8005dbe:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005dc2:	2900      	cmp	r1, #0
 8005dc4:	f47f aeae 	bne.w	8005b24 <_malloc_r+0x210>
 8005dc8:	eb09 0208 	add.w	r2, r9, r8
 8005dcc:	68b9      	ldr	r1, [r7, #8]
 8005dce:	f042 0201 	orr.w	r2, r2, #1
 8005dd2:	604a      	str	r2, [r1, #4]
 8005dd4:	e6ec      	b.n	8005bb0 <_malloc_r+0x29c>
 8005dd6:	f240 5254 	movw	r2, #1364	; 0x554
 8005dda:	4293      	cmp	r3, r2
 8005ddc:	d81c      	bhi.n	8005e18 <_malloc_r+0x504>
 8005dde:	0cab      	lsrs	r3, r5, #18
 8005de0:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005de4:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005de8:	00c3      	lsls	r3, r0, #3
 8005dea:	e5d8      	b.n	800599e <_malloc_r+0x8a>
 8005dec:	2301      	movs	r3, #1
 8005dee:	f8cb 3004 	str.w	r3, [fp, #4]
 8005df2:	e79b      	b.n	8005d2c <_malloc_r+0x418>
 8005df4:	2101      	movs	r1, #1
 8005df6:	f04f 0800 	mov.w	r8, #0
 8005dfa:	e6ba      	b.n	8005b72 <_malloc_r+0x25e>
 8005dfc:	4a16      	ldr	r2, [pc, #88]	; (8005e58 <_malloc_r+0x544>)
 8005dfe:	6813      	ldr	r3, [r2, #0]
 8005e00:	4443      	add	r3, r8
 8005e02:	6013      	str	r3, [r2, #0]
 8005e04:	e68e      	b.n	8005b24 <_malloc_r+0x210>
 8005e06:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005e0a:	d814      	bhi.n	8005e36 <_malloc_r+0x522>
 8005e0c:	0bda      	lsrs	r2, r3, #15
 8005e0e:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005e12:	00c9      	lsls	r1, r1, #3
 8005e14:	3277      	adds	r2, #119	; 0x77
 8005e16:	e75e      	b.n	8005cd6 <_malloc_r+0x3c2>
 8005e18:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005e1c:	207f      	movs	r0, #127	; 0x7f
 8005e1e:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005e22:	e5bc      	b.n	800599e <_malloc_r+0x8a>
 8005e24:	f104 0108 	add.w	r1, r4, #8
 8005e28:	4630      	mov	r0, r6
 8005e2a:	9201      	str	r2, [sp, #4]
 8005e2c:	f7ff fa48 	bl	80052c0 <_free_r>
 8005e30:	9a01      	ldr	r2, [sp, #4]
 8005e32:	6813      	ldr	r3, [r2, #0]
 8005e34:	e6bc      	b.n	8005bb0 <_malloc_r+0x29c>
 8005e36:	f240 5154 	movw	r1, #1364	; 0x554
 8005e3a:	428a      	cmp	r2, r1
 8005e3c:	d805      	bhi.n	8005e4a <_malloc_r+0x536>
 8005e3e:	0c9a      	lsrs	r2, r3, #18
 8005e40:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005e44:	00c9      	lsls	r1, r1, #3
 8005e46:	327c      	adds	r2, #124	; 0x7c
 8005e48:	e745      	b.n	8005cd6 <_malloc_r+0x3c2>
 8005e4a:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005e4e:	227e      	movs	r2, #126	; 0x7e
 8005e50:	e741      	b.n	8005cd6 <_malloc_r+0x3c2>
 8005e52:	687b      	ldr	r3, [r7, #4]
 8005e54:	e785      	b.n	8005d62 <_malloc_r+0x44e>
 8005e56:	bf00      	nop
 8005e58:	20000a7c 	.word	0x20000a7c

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

08005f24 <__malloc_lock>:
 8005f24:	4801      	ldr	r0, [pc, #4]	; (8005f2c <__malloc_lock+0x8>)
 8005f26:	f7ff bc79 	b.w	800581c <__retarget_lock_acquire_recursive>
 8005f2a:	bf00      	nop
 8005f2c:	20000b08 	.word	0x20000b08

08005f30 <__malloc_unlock>:
 8005f30:	4801      	ldr	r0, [pc, #4]	; (8005f38 <__malloc_unlock+0x8>)
 8005f32:	f7ff bc75 	b.w	8005820 <__retarget_lock_release_recursive>
 8005f36:	bf00      	nop
 8005f38:	20000b08 	.word	0x20000b08

08005f3c <_Balloc>:
 8005f3c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005f3e:	b570      	push	{r4, r5, r6, lr}
 8005f40:	4605      	mov	r5, r0
 8005f42:	460c      	mov	r4, r1
 8005f44:	b14b      	cbz	r3, 8005f5a <_Balloc+0x1e>
 8005f46:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005f4a:	b180      	cbz	r0, 8005f6e <_Balloc+0x32>
 8005f4c:	6802      	ldr	r2, [r0, #0]
 8005f4e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005f52:	2300      	movs	r3, #0
 8005f54:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005f58:	bd70      	pop	{r4, r5, r6, pc}
 8005f5a:	2221      	movs	r2, #33	; 0x21
 8005f5c:	2104      	movs	r1, #4
 8005f5e:	f000 fe1d 	bl	8006b9c <_calloc_r>
 8005f62:	4603      	mov	r3, r0
 8005f64:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005f66:	2800      	cmp	r0, #0
 8005f68:	d1ed      	bne.n	8005f46 <_Balloc+0xa>
 8005f6a:	2000      	movs	r0, #0
 8005f6c:	bd70      	pop	{r4, r5, r6, pc}
 8005f6e:	2101      	movs	r1, #1
 8005f70:	fa01 f604 	lsl.w	r6, r1, r4
 8005f74:	1d72      	adds	r2, r6, #5
 8005f76:	4628      	mov	r0, r5
 8005f78:	0092      	lsls	r2, r2, #2
 8005f7a:	f000 fe0f 	bl	8006b9c <_calloc_r>
 8005f7e:	2800      	cmp	r0, #0
 8005f80:	d0f3      	beq.n	8005f6a <_Balloc+0x2e>
 8005f82:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005f86:	e7e4      	b.n	8005f52 <_Balloc+0x16>

08005f88 <_Bfree>:
 8005f88:	b131      	cbz	r1, 8005f98 <_Bfree+0x10>
 8005f8a:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005f8c:	684a      	ldr	r2, [r1, #4]
 8005f8e:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005f92:	6008      	str	r0, [r1, #0]
 8005f94:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005f98:	4770      	bx	lr
 8005f9a:	bf00      	nop

08005f9c <__multadd>:
 8005f9c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005f9e:	690c      	ldr	r4, [r1, #16]
 8005fa0:	b083      	sub	sp, #12
 8005fa2:	460d      	mov	r5, r1
 8005fa4:	4606      	mov	r6, r0
 8005fa6:	f101 0c14 	add.w	ip, r1, #20
 8005faa:	2700      	movs	r7, #0
 8005fac:	f8dc 0000 	ldr.w	r0, [ip]
 8005fb0:	b281      	uxth	r1, r0
 8005fb2:	fb02 3301 	mla	r3, r2, r1, r3
 8005fb6:	0c01      	lsrs	r1, r0, #16
 8005fb8:	0c18      	lsrs	r0, r3, #16
 8005fba:	fb02 0101 	mla	r1, r2, r1, r0
 8005fbe:	b29b      	uxth	r3, r3
 8005fc0:	3701      	adds	r7, #1
 8005fc2:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005fc6:	42bc      	cmp	r4, r7
 8005fc8:	f84c 3b04 	str.w	r3, [ip], #4
 8005fcc:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8005fd0:	dcec      	bgt.n	8005fac <__multadd+0x10>
 8005fd2:	b13b      	cbz	r3, 8005fe4 <__multadd+0x48>
 8005fd4:	68aa      	ldr	r2, [r5, #8]
 8005fd6:	42a2      	cmp	r2, r4
 8005fd8:	dd07      	ble.n	8005fea <__multadd+0x4e>
 8005fda:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8005fde:	3401      	adds	r4, #1
 8005fe0:	6153      	str	r3, [r2, #20]
 8005fe2:	612c      	str	r4, [r5, #16]
 8005fe4:	4628      	mov	r0, r5
 8005fe6:	b003      	add	sp, #12
 8005fe8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005fea:	6869      	ldr	r1, [r5, #4]
 8005fec:	9301      	str	r3, [sp, #4]
 8005fee:	3101      	adds	r1, #1
 8005ff0:	4630      	mov	r0, r6
 8005ff2:	f7ff ffa3 	bl	8005f3c <_Balloc>
 8005ff6:	692a      	ldr	r2, [r5, #16]
 8005ff8:	3202      	adds	r2, #2
 8005ffa:	f105 010c 	add.w	r1, r5, #12
 8005ffe:	4607      	mov	r7, r0
 8006000:	0092      	lsls	r2, r2, #2
 8006002:	300c      	adds	r0, #12
 8006004:	f7fa fa7c 	bl	8000500 <memcpy>
 8006008:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 800600a:	6869      	ldr	r1, [r5, #4]
 800600c:	9b01      	ldr	r3, [sp, #4]
 800600e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8006012:	6028      	str	r0, [r5, #0]
 8006014:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006018:	463d      	mov	r5, r7
 800601a:	e7de      	b.n	8005fda <__multadd+0x3e>

0800601c <__hi0bits>:
 800601c:	0c02      	lsrs	r2, r0, #16
 800601e:	0412      	lsls	r2, r2, #16
 8006020:	4603      	mov	r3, r0
 8006022:	b9c2      	cbnz	r2, 8006056 <__hi0bits+0x3a>
 8006024:	0403      	lsls	r3, r0, #16
 8006026:	2010      	movs	r0, #16
 8006028:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 800602c:	bf04      	itt	eq
 800602e:	021b      	lsleq	r3, r3, #8
 8006030:	3008      	addeq	r0, #8
 8006032:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8006036:	bf04      	itt	eq
 8006038:	011b      	lsleq	r3, r3, #4
 800603a:	3004      	addeq	r0, #4
 800603c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006040:	bf04      	itt	eq
 8006042:	009b      	lsleq	r3, r3, #2
 8006044:	3002      	addeq	r0, #2
 8006046:	2b00      	cmp	r3, #0
 8006048:	db04      	blt.n	8006054 <__hi0bits+0x38>
 800604a:	005b      	lsls	r3, r3, #1
 800604c:	d501      	bpl.n	8006052 <__hi0bits+0x36>
 800604e:	3001      	adds	r0, #1
 8006050:	4770      	bx	lr
 8006052:	2020      	movs	r0, #32
 8006054:	4770      	bx	lr
 8006056:	2000      	movs	r0, #0
 8006058:	e7e6      	b.n	8006028 <__hi0bits+0xc>
 800605a:	bf00      	nop

0800605c <__lo0bits>:
 800605c:	6803      	ldr	r3, [r0, #0]
 800605e:	f013 0207 	ands.w	r2, r3, #7
 8006062:	4601      	mov	r1, r0
 8006064:	d007      	beq.n	8006076 <__lo0bits+0x1a>
 8006066:	07da      	lsls	r2, r3, #31
 8006068:	d41f      	bmi.n	80060aa <__lo0bits+0x4e>
 800606a:	0798      	lsls	r0, r3, #30
 800606c:	d51f      	bpl.n	80060ae <__lo0bits+0x52>
 800606e:	085b      	lsrs	r3, r3, #1
 8006070:	600b      	str	r3, [r1, #0]
 8006072:	2001      	movs	r0, #1
 8006074:	4770      	bx	lr
 8006076:	b298      	uxth	r0, r3
 8006078:	b1a0      	cbz	r0, 80060a4 <__lo0bits+0x48>
 800607a:	4610      	mov	r0, r2
 800607c:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006080:	bf04      	itt	eq
 8006082:	0a1b      	lsreq	r3, r3, #8
 8006084:	3008      	addeq	r0, #8
 8006086:	071a      	lsls	r2, r3, #28
 8006088:	bf04      	itt	eq
 800608a:	091b      	lsreq	r3, r3, #4
 800608c:	3004      	addeq	r0, #4
 800608e:	079a      	lsls	r2, r3, #30
 8006090:	bf04      	itt	eq
 8006092:	089b      	lsreq	r3, r3, #2
 8006094:	3002      	addeq	r0, #2
 8006096:	07da      	lsls	r2, r3, #31
 8006098:	d402      	bmi.n	80060a0 <__lo0bits+0x44>
 800609a:	085b      	lsrs	r3, r3, #1
 800609c:	d00b      	beq.n	80060b6 <__lo0bits+0x5a>
 800609e:	3001      	adds	r0, #1
 80060a0:	600b      	str	r3, [r1, #0]
 80060a2:	4770      	bx	lr
 80060a4:	0c1b      	lsrs	r3, r3, #16
 80060a6:	2010      	movs	r0, #16
 80060a8:	e7e8      	b.n	800607c <__lo0bits+0x20>
 80060aa:	2000      	movs	r0, #0
 80060ac:	4770      	bx	lr
 80060ae:	089b      	lsrs	r3, r3, #2
 80060b0:	600b      	str	r3, [r1, #0]
 80060b2:	2002      	movs	r0, #2
 80060b4:	4770      	bx	lr
 80060b6:	2020      	movs	r0, #32
 80060b8:	4770      	bx	lr
 80060ba:	bf00      	nop

080060bc <__i2b>:
 80060bc:	b510      	push	{r4, lr}
 80060be:	460c      	mov	r4, r1
 80060c0:	2101      	movs	r1, #1
 80060c2:	f7ff ff3b 	bl	8005f3c <_Balloc>
 80060c6:	2201      	movs	r2, #1
 80060c8:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80060cc:	bd10      	pop	{r4, pc}
 80060ce:	bf00      	nop

080060d0 <__multiply>:
 80060d0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80060d4:	690e      	ldr	r6, [r1, #16]
 80060d6:	6914      	ldr	r4, [r2, #16]
 80060d8:	42a6      	cmp	r6, r4
 80060da:	b083      	sub	sp, #12
 80060dc:	460f      	mov	r7, r1
 80060de:	4615      	mov	r5, r2
 80060e0:	da04      	bge.n	80060ec <__multiply+0x1c>
 80060e2:	4632      	mov	r2, r6
 80060e4:	462f      	mov	r7, r5
 80060e6:	4626      	mov	r6, r4
 80060e8:	460d      	mov	r5, r1
 80060ea:	4614      	mov	r4, r2
 80060ec:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80060f0:	eb06 0804 	add.w	r8, r6, r4
 80060f4:	4543      	cmp	r3, r8
 80060f6:	bfb8      	it	lt
 80060f8:	3101      	addlt	r1, #1
 80060fa:	f7ff ff1f 	bl	8005f3c <_Balloc>
 80060fe:	f100 0914 	add.w	r9, r0, #20
 8006102:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8006106:	45f1      	cmp	r9, lr
 8006108:	9000      	str	r0, [sp, #0]
 800610a:	d205      	bcs.n	8006118 <__multiply+0x48>
 800610c:	464b      	mov	r3, r9
 800610e:	2200      	movs	r2, #0
 8006110:	f843 2b04 	str.w	r2, [r3], #4
 8006114:	459e      	cmp	lr, r3
 8006116:	d8fb      	bhi.n	8006110 <__multiply+0x40>
 8006118:	f105 0a14 	add.w	sl, r5, #20
 800611c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006120:	f107 0314 	add.w	r3, r7, #20
 8006124:	45a2      	cmp	sl, r4
 8006126:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800612a:	d261      	bcs.n	80061f0 <__multiply+0x120>
 800612c:	1b64      	subs	r4, r4, r5
 800612e:	3c15      	subs	r4, #21
 8006130:	f024 0403 	bic.w	r4, r4, #3
 8006134:	f8cd e004 	str.w	lr, [sp, #4]
 8006138:	44a2      	add	sl, r4
 800613a:	f105 0210 	add.w	r2, r5, #16
 800613e:	469e      	mov	lr, r3
 8006140:	e005      	b.n	800614e <__multiply+0x7e>
 8006142:	0c2d      	lsrs	r5, r5, #16
 8006144:	d12b      	bne.n	800619e <__multiply+0xce>
 8006146:	4592      	cmp	sl, r2
 8006148:	f109 0904 	add.w	r9, r9, #4
 800614c:	d04e      	beq.n	80061ec <__multiply+0x11c>
 800614e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8006152:	fa1f fb85 	uxth.w	fp, r5
 8006156:	f1bb 0f00 	cmp.w	fp, #0
 800615a:	d0f2      	beq.n	8006142 <__multiply+0x72>
 800615c:	4677      	mov	r7, lr
 800615e:	464e      	mov	r6, r9
 8006160:	2000      	movs	r0, #0
 8006162:	e000      	b.n	8006166 <__multiply+0x96>
 8006164:	4626      	mov	r6, r4
 8006166:	f857 1b04 	ldr.w	r1, [r7], #4
 800616a:	6834      	ldr	r4, [r6, #0]
 800616c:	b28b      	uxth	r3, r1
 800616e:	b2a5      	uxth	r5, r4
 8006170:	0c09      	lsrs	r1, r1, #16
 8006172:	0c24      	lsrs	r4, r4, #16
 8006174:	fb0b 5303 	mla	r3, fp, r3, r5
 8006178:	4403      	add	r3, r0
 800617a:	fb0b 4001 	mla	r0, fp, r1, r4
 800617e:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8006182:	4634      	mov	r4, r6
 8006184:	b29b      	uxth	r3, r3
 8006186:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800618a:	45bc      	cmp	ip, r7
 800618c:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006190:	f844 3b04 	str.w	r3, [r4], #4
 8006194:	d8e6      	bhi.n	8006164 <__multiply+0x94>
 8006196:	6070      	str	r0, [r6, #4]
 8006198:	6815      	ldr	r5, [r2, #0]
 800619a:	0c2d      	lsrs	r5, r5, #16
 800619c:	d0d3      	beq.n	8006146 <__multiply+0x76>
 800619e:	f8d9 3000 	ldr.w	r3, [r9]
 80061a2:	4676      	mov	r6, lr
 80061a4:	4618      	mov	r0, r3
 80061a6:	46cb      	mov	fp, r9
 80061a8:	2100      	movs	r1, #0
 80061aa:	e000      	b.n	80061ae <__multiply+0xde>
 80061ac:	46a3      	mov	fp, r4
 80061ae:	8834      	ldrh	r4, [r6, #0]
 80061b0:	0c00      	lsrs	r0, r0, #16
 80061b2:	fb05 0004 	mla	r0, r5, r4, r0
 80061b6:	4401      	add	r1, r0
 80061b8:	b29b      	uxth	r3, r3
 80061ba:	465c      	mov	r4, fp
 80061bc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80061c0:	f844 3b04 	str.w	r3, [r4], #4
 80061c4:	f856 3b04 	ldr.w	r3, [r6], #4
 80061c8:	f8db 0004 	ldr.w	r0, [fp, #4]
 80061cc:	0c1b      	lsrs	r3, r3, #16
 80061ce:	b287      	uxth	r7, r0
 80061d0:	fb05 7303 	mla	r3, r5, r3, r7
 80061d4:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80061d8:	45b4      	cmp	ip, r6
 80061da:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80061de:	d8e5      	bhi.n	80061ac <__multiply+0xdc>
 80061e0:	4592      	cmp	sl, r2
 80061e2:	f8cb 3004 	str.w	r3, [fp, #4]
 80061e6:	f109 0904 	add.w	r9, r9, #4
 80061ea:	d1b0      	bne.n	800614e <__multiply+0x7e>
 80061ec:	f8dd e004 	ldr.w	lr, [sp, #4]
 80061f0:	f1b8 0f00 	cmp.w	r8, #0
 80061f4:	dd0b      	ble.n	800620e <__multiply+0x13e>
 80061f6:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80061fa:	f1ae 0e04 	sub.w	lr, lr, #4
 80061fe:	b11b      	cbz	r3, 8006208 <__multiply+0x138>
 8006200:	e005      	b.n	800620e <__multiply+0x13e>
 8006202:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006206:	b913      	cbnz	r3, 800620e <__multiply+0x13e>
 8006208:	f1b8 0801 	subs.w	r8, r8, #1
 800620c:	d1f9      	bne.n	8006202 <__multiply+0x132>
 800620e:	9800      	ldr	r0, [sp, #0]
 8006210:	f8c0 8010 	str.w	r8, [r0, #16]
 8006214:	b003      	add	sp, #12
 8006216:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800621a:	bf00      	nop

0800621c <__pow5mult>:
 800621c:	f012 0303 	ands.w	r3, r2, #3
 8006220:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006224:	4614      	mov	r4, r2
 8006226:	4607      	mov	r7, r0
 8006228:	d12e      	bne.n	8006288 <__pow5mult+0x6c>
 800622a:	460d      	mov	r5, r1
 800622c:	10a4      	asrs	r4, r4, #2
 800622e:	d01c      	beq.n	800626a <__pow5mult+0x4e>
 8006230:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8006232:	b396      	cbz	r6, 800629a <__pow5mult+0x7e>
 8006234:	07e3      	lsls	r3, r4, #31
 8006236:	f04f 0800 	mov.w	r8, #0
 800623a:	d406      	bmi.n	800624a <__pow5mult+0x2e>
 800623c:	1064      	asrs	r4, r4, #1
 800623e:	d014      	beq.n	800626a <__pow5mult+0x4e>
 8006240:	6830      	ldr	r0, [r6, #0]
 8006242:	b1a8      	cbz	r0, 8006270 <__pow5mult+0x54>
 8006244:	4606      	mov	r6, r0
 8006246:	07e3      	lsls	r3, r4, #31
 8006248:	d5f8      	bpl.n	800623c <__pow5mult+0x20>
 800624a:	4632      	mov	r2, r6
 800624c:	4629      	mov	r1, r5
 800624e:	4638      	mov	r0, r7
 8006250:	f7ff ff3e 	bl	80060d0 <__multiply>
 8006254:	b1b5      	cbz	r5, 8006284 <__pow5mult+0x68>
 8006256:	686a      	ldr	r2, [r5, #4]
 8006258:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800625a:	1064      	asrs	r4, r4, #1
 800625c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006260:	6029      	str	r1, [r5, #0]
 8006262:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006266:	4605      	mov	r5, r0
 8006268:	d1ea      	bne.n	8006240 <__pow5mult+0x24>
 800626a:	4628      	mov	r0, r5
 800626c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006270:	4632      	mov	r2, r6
 8006272:	4631      	mov	r1, r6
 8006274:	4638      	mov	r0, r7
 8006276:	f7ff ff2b 	bl	80060d0 <__multiply>
 800627a:	6030      	str	r0, [r6, #0]
 800627c:	f8c0 8000 	str.w	r8, [r0]
 8006280:	4606      	mov	r6, r0
 8006282:	e7e0      	b.n	8006246 <__pow5mult+0x2a>
 8006284:	4605      	mov	r5, r0
 8006286:	e7d9      	b.n	800623c <__pow5mult+0x20>
 8006288:	3b01      	subs	r3, #1
 800628a:	4a0b      	ldr	r2, [pc, #44]	; (80062b8 <__pow5mult+0x9c>)
 800628c:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006290:	2300      	movs	r3, #0
 8006292:	f7ff fe83 	bl	8005f9c <__multadd>
 8006296:	4605      	mov	r5, r0
 8006298:	e7c8      	b.n	800622c <__pow5mult+0x10>
 800629a:	2101      	movs	r1, #1
 800629c:	4638      	mov	r0, r7
 800629e:	f7ff fe4d 	bl	8005f3c <_Balloc>
 80062a2:	f240 2371 	movw	r3, #625	; 0x271
 80062a6:	6143      	str	r3, [r0, #20]
 80062a8:	2201      	movs	r2, #1
 80062aa:	2300      	movs	r3, #0
 80062ac:	6102      	str	r2, [r0, #16]
 80062ae:	4606      	mov	r6, r0
 80062b0:	64b8      	str	r0, [r7, #72]	; 0x48
 80062b2:	6003      	str	r3, [r0, #0]
 80062b4:	e7be      	b.n	8006234 <__pow5mult+0x18>
 80062b6:	bf00      	nop
 80062b8:	080072e0 	.word	0x080072e0

080062bc <__lshift>:
 80062bc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80062c0:	4691      	mov	r9, r2
 80062c2:	690a      	ldr	r2, [r1, #16]
 80062c4:	460e      	mov	r6, r1
 80062c6:	ea4f 1469 	mov.w	r4, r9, asr #5
 80062ca:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80062ce:	eb04 0802 	add.w	r8, r4, r2
 80062d2:	f108 0501 	add.w	r5, r8, #1
 80062d6:	429d      	cmp	r5, r3
 80062d8:	4607      	mov	r7, r0
 80062da:	dd04      	ble.n	80062e6 <__lshift+0x2a>
 80062dc:	005b      	lsls	r3, r3, #1
 80062de:	429d      	cmp	r5, r3
 80062e0:	f101 0101 	add.w	r1, r1, #1
 80062e4:	dcfa      	bgt.n	80062dc <__lshift+0x20>
 80062e6:	4638      	mov	r0, r7
 80062e8:	f7ff fe28 	bl	8005f3c <_Balloc>
 80062ec:	2c00      	cmp	r4, #0
 80062ee:	f100 0314 	add.w	r3, r0, #20
 80062f2:	dd37      	ble.n	8006364 <__lshift+0xa8>
 80062f4:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80062f8:	2200      	movs	r2, #0
 80062fa:	f843 2b04 	str.w	r2, [r3], #4
 80062fe:	428b      	cmp	r3, r1
 8006300:	d1fb      	bne.n	80062fa <__lshift+0x3e>
 8006302:	6934      	ldr	r4, [r6, #16]
 8006304:	f106 0314 	add.w	r3, r6, #20
 8006308:	f019 091f 	ands.w	r9, r9, #31
 800630c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006310:	d020      	beq.n	8006354 <__lshift+0x98>
 8006312:	f1c9 0e20 	rsb	lr, r9, #32
 8006316:	2200      	movs	r2, #0
 8006318:	e000      	b.n	800631c <__lshift+0x60>
 800631a:	4651      	mov	r1, sl
 800631c:	681c      	ldr	r4, [r3, #0]
 800631e:	468a      	mov	sl, r1
 8006320:	fa04 f409 	lsl.w	r4, r4, r9
 8006324:	4314      	orrs	r4, r2
 8006326:	f84a 4b04 	str.w	r4, [sl], #4
 800632a:	f853 2b04 	ldr.w	r2, [r3], #4
 800632e:	4563      	cmp	r3, ip
 8006330:	fa22 f20e 	lsr.w	r2, r2, lr
 8006334:	d3f1      	bcc.n	800631a <__lshift+0x5e>
 8006336:	604a      	str	r2, [r1, #4]
 8006338:	b10a      	cbz	r2, 800633e <__lshift+0x82>
 800633a:	f108 0502 	add.w	r5, r8, #2
 800633e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006340:	6872      	ldr	r2, [r6, #4]
 8006342:	3d01      	subs	r5, #1
 8006344:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006348:	6105      	str	r5, [r0, #16]
 800634a:	6031      	str	r1, [r6, #0]
 800634c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006350:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006354:	3904      	subs	r1, #4
 8006356:	f853 2b04 	ldr.w	r2, [r3], #4
 800635a:	f841 2f04 	str.w	r2, [r1, #4]!
 800635e:	459c      	cmp	ip, r3
 8006360:	d8f9      	bhi.n	8006356 <__lshift+0x9a>
 8006362:	e7ec      	b.n	800633e <__lshift+0x82>
 8006364:	4619      	mov	r1, r3
 8006366:	e7cc      	b.n	8006302 <__lshift+0x46>

08006368 <__mcmp>:
 8006368:	b430      	push	{r4, r5}
 800636a:	690b      	ldr	r3, [r1, #16]
 800636c:	4605      	mov	r5, r0
 800636e:	6900      	ldr	r0, [r0, #16]
 8006370:	1ac0      	subs	r0, r0, r3
 8006372:	d10f      	bne.n	8006394 <__mcmp+0x2c>
 8006374:	009b      	lsls	r3, r3, #2
 8006376:	3514      	adds	r5, #20
 8006378:	3114      	adds	r1, #20
 800637a:	4419      	add	r1, r3
 800637c:	442b      	add	r3, r5
 800637e:	e001      	b.n	8006384 <__mcmp+0x1c>
 8006380:	429d      	cmp	r5, r3
 8006382:	d207      	bcs.n	8006394 <__mcmp+0x2c>
 8006384:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006388:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 800638c:	4294      	cmp	r4, r2
 800638e:	d0f7      	beq.n	8006380 <__mcmp+0x18>
 8006390:	d302      	bcc.n	8006398 <__mcmp+0x30>
 8006392:	2001      	movs	r0, #1
 8006394:	bc30      	pop	{r4, r5}
 8006396:	4770      	bx	lr
 8006398:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800639c:	e7fa      	b.n	8006394 <__mcmp+0x2c>
 800639e:	bf00      	nop

080063a0 <__mdiff>:
 80063a0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80063a4:	6913      	ldr	r3, [r2, #16]
 80063a6:	690d      	ldr	r5, [r1, #16]
 80063a8:	1aed      	subs	r5, r5, r3
 80063aa:	2d00      	cmp	r5, #0
 80063ac:	460e      	mov	r6, r1
 80063ae:	4690      	mov	r8, r2
 80063b0:	f101 0414 	add.w	r4, r1, #20
 80063b4:	f102 0714 	add.w	r7, r2, #20
 80063b8:	d114      	bne.n	80063e4 <__mdiff+0x44>
 80063ba:	009b      	lsls	r3, r3, #2
 80063bc:	18e2      	adds	r2, r4, r3
 80063be:	443b      	add	r3, r7
 80063c0:	e001      	b.n	80063c6 <__mdiff+0x26>
 80063c2:	42a2      	cmp	r2, r4
 80063c4:	d959      	bls.n	800647a <__mdiff+0xda>
 80063c6:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80063ca:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80063ce:	458c      	cmp	ip, r1
 80063d0:	d0f7      	beq.n	80063c2 <__mdiff+0x22>
 80063d2:	d209      	bcs.n	80063e8 <__mdiff+0x48>
 80063d4:	4622      	mov	r2, r4
 80063d6:	4633      	mov	r3, r6
 80063d8:	463c      	mov	r4, r7
 80063da:	4646      	mov	r6, r8
 80063dc:	4617      	mov	r7, r2
 80063de:	4698      	mov	r8, r3
 80063e0:	2501      	movs	r5, #1
 80063e2:	e001      	b.n	80063e8 <__mdiff+0x48>
 80063e4:	dbf6      	blt.n	80063d4 <__mdiff+0x34>
 80063e6:	2500      	movs	r5, #0
 80063e8:	6871      	ldr	r1, [r6, #4]
 80063ea:	f7ff fda7 	bl	8005f3c <_Balloc>
 80063ee:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80063f2:	6936      	ldr	r6, [r6, #16]
 80063f4:	60c5      	str	r5, [r0, #12]
 80063f6:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80063fa:	46bc      	mov	ip, r7
 80063fc:	f100 0514 	add.w	r5, r0, #20
 8006400:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006404:	2300      	movs	r3, #0
 8006406:	f85c 1b04 	ldr.w	r1, [ip], #4
 800640a:	f854 8b04 	ldr.w	r8, [r4], #4
 800640e:	b28a      	uxth	r2, r1
 8006410:	fa13 f388 	uxtah	r3, r3, r8
 8006414:	0c09      	lsrs	r1, r1, #16
 8006416:	1a9a      	subs	r2, r3, r2
 8006418:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 800641c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006420:	b292      	uxth	r2, r2
 8006422:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006426:	45e6      	cmp	lr, ip
 8006428:	f845 2b04 	str.w	r2, [r5], #4
 800642c:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006430:	d8e9      	bhi.n	8006406 <__mdiff+0x66>
 8006432:	42a7      	cmp	r7, r4
 8006434:	d917      	bls.n	8006466 <__mdiff+0xc6>
 8006436:	46ae      	mov	lr, r5
 8006438:	46a4      	mov	ip, r4
 800643a:	f85c 2b04 	ldr.w	r2, [ip], #4
 800643e:	fa13 f382 	uxtah	r3, r3, r2
 8006442:	1419      	asrs	r1, r3, #16
 8006444:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006448:	b29b      	uxth	r3, r3
 800644a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800644e:	4567      	cmp	r7, ip
 8006450:	f84e 2b04 	str.w	r2, [lr], #4
 8006454:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006458:	d8ef      	bhi.n	800643a <__mdiff+0x9a>
 800645a:	43e4      	mvns	r4, r4
 800645c:	4427      	add	r7, r4
 800645e:	f027 0703 	bic.w	r7, r7, #3
 8006462:	3704      	adds	r7, #4
 8006464:	443d      	add	r5, r7
 8006466:	3d04      	subs	r5, #4
 8006468:	b922      	cbnz	r2, 8006474 <__mdiff+0xd4>
 800646a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800646e:	3e01      	subs	r6, #1
 8006470:	2b00      	cmp	r3, #0
 8006472:	d0fa      	beq.n	800646a <__mdiff+0xca>
 8006474:	6106      	str	r6, [r0, #16]
 8006476:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800647a:	2100      	movs	r1, #0
 800647c:	f7ff fd5e 	bl	8005f3c <_Balloc>
 8006480:	2201      	movs	r2, #1
 8006482:	2300      	movs	r3, #0
 8006484:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006488:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0800648c <__d2b>:
 800648c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006490:	460f      	mov	r7, r1
 8006492:	b083      	sub	sp, #12
 8006494:	2101      	movs	r1, #1
 8006496:	ec55 4b10 	vmov	r4, r5, d0
 800649a:	4616      	mov	r6, r2
 800649c:	f7ff fd4e 	bl	8005f3c <_Balloc>
 80064a0:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80064a4:	4681      	mov	r9, r0
 80064a6:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80064aa:	f1b8 0f00 	cmp.w	r8, #0
 80064ae:	d001      	beq.n	80064b4 <__d2b+0x28>
 80064b0:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80064b4:	2c00      	cmp	r4, #0
 80064b6:	9301      	str	r3, [sp, #4]
 80064b8:	d024      	beq.n	8006504 <__d2b+0x78>
 80064ba:	a802      	add	r0, sp, #8
 80064bc:	f840 4d08 	str.w	r4, [r0, #-8]!
 80064c0:	f7ff fdcc 	bl	800605c <__lo0bits>
 80064c4:	2800      	cmp	r0, #0
 80064c6:	d136      	bne.n	8006536 <__d2b+0xaa>
 80064c8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80064cc:	f8c9 2014 	str.w	r2, [r9, #20]
 80064d0:	2b00      	cmp	r3, #0
 80064d2:	bf0c      	ite	eq
 80064d4:	2101      	moveq	r1, #1
 80064d6:	2102      	movne	r1, #2
 80064d8:	f8c9 3018 	str.w	r3, [r9, #24]
 80064dc:	f8c9 1010 	str.w	r1, [r9, #16]
 80064e0:	f1b8 0f00 	cmp.w	r8, #0
 80064e4:	d11b      	bne.n	800651e <__d2b+0x92>
 80064e6:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80064ea:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80064ee:	6038      	str	r0, [r7, #0]
 80064f0:	6918      	ldr	r0, [r3, #16]
 80064f2:	f7ff fd93 	bl	800601c <__hi0bits>
 80064f6:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80064fa:	6030      	str	r0, [r6, #0]
 80064fc:	4648      	mov	r0, r9
 80064fe:	b003      	add	sp, #12
 8006500:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006504:	a801      	add	r0, sp, #4
 8006506:	f7ff fda9 	bl	800605c <__lo0bits>
 800650a:	9b01      	ldr	r3, [sp, #4]
 800650c:	f8c9 3014 	str.w	r3, [r9, #20]
 8006510:	2101      	movs	r1, #1
 8006512:	3020      	adds	r0, #32
 8006514:	f8c9 1010 	str.w	r1, [r9, #16]
 8006518:	f1b8 0f00 	cmp.w	r8, #0
 800651c:	d0e3      	beq.n	80064e6 <__d2b+0x5a>
 800651e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006522:	eb08 0300 	add.w	r3, r8, r0
 8006526:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 800652a:	603b      	str	r3, [r7, #0]
 800652c:	6030      	str	r0, [r6, #0]
 800652e:	4648      	mov	r0, r9
 8006530:	b003      	add	sp, #12
 8006532:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006536:	e9dd 1300 	ldrd	r1, r3, [sp]
 800653a:	f1c0 0220 	rsb	r2, r0, #32
 800653e:	fa03 f202 	lsl.w	r2, r3, r2
 8006542:	430a      	orrs	r2, r1
 8006544:	40c3      	lsrs	r3, r0
 8006546:	9301      	str	r3, [sp, #4]
 8006548:	f8c9 2014 	str.w	r2, [r9, #20]
 800654c:	e7c0      	b.n	80064d0 <__d2b+0x44>
 800654e:	bf00      	nop

08006550 <_realloc_r>:
 8006550:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006554:	4692      	mov	sl, r2
 8006556:	b083      	sub	sp, #12
 8006558:	2900      	cmp	r1, #0
 800655a:	f000 80a1 	beq.w	80066a0 <_realloc_r+0x150>
 800655e:	460d      	mov	r5, r1
 8006560:	4680      	mov	r8, r0
 8006562:	f10a 040b 	add.w	r4, sl, #11
 8006566:	f7ff fcdd 	bl	8005f24 <__malloc_lock>
 800656a:	f855 2c04 	ldr.w	r2, [r5, #-4]
 800656e:	2c16      	cmp	r4, #22
 8006570:	f022 0603 	bic.w	r6, r2, #3
 8006574:	f1a5 0708 	sub.w	r7, r5, #8
 8006578:	d83e      	bhi.n	80065f8 <_realloc_r+0xa8>
 800657a:	2410      	movs	r4, #16
 800657c:	4621      	mov	r1, r4
 800657e:	45a2      	cmp	sl, r4
 8006580:	d83f      	bhi.n	8006602 <_realloc_r+0xb2>
 8006582:	428e      	cmp	r6, r1
 8006584:	eb07 0906 	add.w	r9, r7, r6
 8006588:	da74      	bge.n	8006674 <_realloc_r+0x124>
 800658a:	4bc7      	ldr	r3, [pc, #796]	; (80068a8 <_realloc_r+0x358>)
 800658c:	6898      	ldr	r0, [r3, #8]
 800658e:	4548      	cmp	r0, r9
 8006590:	f000 80aa 	beq.w	80066e8 <_realloc_r+0x198>
 8006594:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006598:	f020 0301 	bic.w	r3, r0, #1
 800659c:	444b      	add	r3, r9
 800659e:	685b      	ldr	r3, [r3, #4]
 80065a0:	07db      	lsls	r3, r3, #31
 80065a2:	f140 8083 	bpl.w	80066ac <_realloc_r+0x15c>
 80065a6:	07d2      	lsls	r2, r2, #31
 80065a8:	d534      	bpl.n	8006614 <_realloc_r+0xc4>
 80065aa:	4651      	mov	r1, sl
 80065ac:	4640      	mov	r0, r8
 80065ae:	f7ff f9b1 	bl	8005914 <_malloc_r>
 80065b2:	4682      	mov	sl, r0
 80065b4:	b1e0      	cbz	r0, 80065f0 <_realloc_r+0xa0>
 80065b6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80065ba:	f023 0301 	bic.w	r3, r3, #1
 80065be:	443b      	add	r3, r7
 80065c0:	f1a0 0208 	sub.w	r2, r0, #8
 80065c4:	4293      	cmp	r3, r2
 80065c6:	f000 80f9 	beq.w	80067bc <_realloc_r+0x26c>
 80065ca:	1f32      	subs	r2, r6, #4
 80065cc:	2a24      	cmp	r2, #36	; 0x24
 80065ce:	f200 8107 	bhi.w	80067e0 <_realloc_r+0x290>
 80065d2:	2a13      	cmp	r2, #19
 80065d4:	6829      	ldr	r1, [r5, #0]
 80065d6:	f200 80e6 	bhi.w	80067a6 <_realloc_r+0x256>
 80065da:	4603      	mov	r3, r0
 80065dc:	462a      	mov	r2, r5
 80065de:	6019      	str	r1, [r3, #0]
 80065e0:	6851      	ldr	r1, [r2, #4]
 80065e2:	6059      	str	r1, [r3, #4]
 80065e4:	6892      	ldr	r2, [r2, #8]
 80065e6:	609a      	str	r2, [r3, #8]
 80065e8:	4629      	mov	r1, r5
 80065ea:	4640      	mov	r0, r8
 80065ec:	f7fe fe68 	bl	80052c0 <_free_r>
 80065f0:	4640      	mov	r0, r8
 80065f2:	f7ff fc9d 	bl	8005f30 <__malloc_unlock>
 80065f6:	e04f      	b.n	8006698 <_realloc_r+0x148>
 80065f8:	f024 0407 	bic.w	r4, r4, #7
 80065fc:	2c00      	cmp	r4, #0
 80065fe:	4621      	mov	r1, r4
 8006600:	dabd      	bge.n	800657e <_realloc_r+0x2e>
 8006602:	f04f 0a00 	mov.w	sl, #0
 8006606:	230c      	movs	r3, #12
 8006608:	4650      	mov	r0, sl
 800660a:	f8c8 3000 	str.w	r3, [r8]
 800660e:	b003      	add	sp, #12
 8006610:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006614:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006618:	eba7 0b03 	sub.w	fp, r7, r3
 800661c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006620:	f022 0203 	bic.w	r2, r2, #3
 8006624:	18b3      	adds	r3, r6, r2
 8006626:	428b      	cmp	r3, r1
 8006628:	dbbf      	blt.n	80065aa <_realloc_r+0x5a>
 800662a:	46da      	mov	sl, fp
 800662c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006630:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006634:	1f32      	subs	r2, r6, #4
 8006636:	2a24      	cmp	r2, #36	; 0x24
 8006638:	60c1      	str	r1, [r0, #12]
 800663a:	eb0b 0903 	add.w	r9, fp, r3
 800663e:	6088      	str	r0, [r1, #8]
 8006640:	f200 80c6 	bhi.w	80067d0 <_realloc_r+0x280>
 8006644:	2a13      	cmp	r2, #19
 8006646:	6829      	ldr	r1, [r5, #0]
 8006648:	f240 80c0 	bls.w	80067cc <_realloc_r+0x27c>
 800664c:	f8cb 1008 	str.w	r1, [fp, #8]
 8006650:	6869      	ldr	r1, [r5, #4]
 8006652:	f8cb 100c 	str.w	r1, [fp, #12]
 8006656:	2a1b      	cmp	r2, #27
 8006658:	68a9      	ldr	r1, [r5, #8]
 800665a:	f200 80d8 	bhi.w	800680e <_realloc_r+0x2be>
 800665e:	f10b 0210 	add.w	r2, fp, #16
 8006662:	3508      	adds	r5, #8
 8006664:	6011      	str	r1, [r2, #0]
 8006666:	6869      	ldr	r1, [r5, #4]
 8006668:	6051      	str	r1, [r2, #4]
 800666a:	68a9      	ldr	r1, [r5, #8]
 800666c:	6091      	str	r1, [r2, #8]
 800666e:	461e      	mov	r6, r3
 8006670:	465f      	mov	r7, fp
 8006672:	4655      	mov	r5, sl
 8006674:	687b      	ldr	r3, [r7, #4]
 8006676:	1b32      	subs	r2, r6, r4
 8006678:	2a0f      	cmp	r2, #15
 800667a:	f003 0301 	and.w	r3, r3, #1
 800667e:	d822      	bhi.n	80066c6 <_realloc_r+0x176>
 8006680:	4333      	orrs	r3, r6
 8006682:	607b      	str	r3, [r7, #4]
 8006684:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006688:	f043 0301 	orr.w	r3, r3, #1
 800668c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006690:	4640      	mov	r0, r8
 8006692:	f7ff fc4d 	bl	8005f30 <__malloc_unlock>
 8006696:	46aa      	mov	sl, r5
 8006698:	4650      	mov	r0, sl
 800669a:	b003      	add	sp, #12
 800669c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80066a0:	4611      	mov	r1, r2
 80066a2:	b003      	add	sp, #12
 80066a4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80066a8:	f7ff b934 	b.w	8005914 <_malloc_r>
 80066ac:	f020 0003 	bic.w	r0, r0, #3
 80066b0:	1833      	adds	r3, r6, r0
 80066b2:	428b      	cmp	r3, r1
 80066b4:	db61      	blt.n	800677a <_realloc_r+0x22a>
 80066b6:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80066ba:	461e      	mov	r6, r3
 80066bc:	60ca      	str	r2, [r1, #12]
 80066be:	eb07 0903 	add.w	r9, r7, r3
 80066c2:	6091      	str	r1, [r2, #8]
 80066c4:	e7d6      	b.n	8006674 <_realloc_r+0x124>
 80066c6:	1939      	adds	r1, r7, r4
 80066c8:	4323      	orrs	r3, r4
 80066ca:	f042 0201 	orr.w	r2, r2, #1
 80066ce:	607b      	str	r3, [r7, #4]
 80066d0:	604a      	str	r2, [r1, #4]
 80066d2:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80066d6:	f043 0301 	orr.w	r3, r3, #1
 80066da:	3108      	adds	r1, #8
 80066dc:	f8c9 3004 	str.w	r3, [r9, #4]
 80066e0:	4640      	mov	r0, r8
 80066e2:	f7fe fded 	bl	80052c0 <_free_r>
 80066e6:	e7d3      	b.n	8006690 <_realloc_r+0x140>
 80066e8:	6840      	ldr	r0, [r0, #4]
 80066ea:	f020 0903 	bic.w	r9, r0, #3
 80066ee:	44b1      	add	r9, r6
 80066f0:	f104 0010 	add.w	r0, r4, #16
 80066f4:	4581      	cmp	r9, r0
 80066f6:	da77      	bge.n	80067e8 <_realloc_r+0x298>
 80066f8:	07d2      	lsls	r2, r2, #31
 80066fa:	f53f af56 	bmi.w	80065aa <_realloc_r+0x5a>
 80066fe:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006702:	eba7 0b02 	sub.w	fp, r7, r2
 8006706:	f8db 2004 	ldr.w	r2, [fp, #4]
 800670a:	f022 0203 	bic.w	r2, r2, #3
 800670e:	4491      	add	r9, r2
 8006710:	4548      	cmp	r0, r9
 8006712:	dc87      	bgt.n	8006624 <_realloc_r+0xd4>
 8006714:	46da      	mov	sl, fp
 8006716:	f8db 100c 	ldr.w	r1, [fp, #12]
 800671a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800671e:	1f32      	subs	r2, r6, #4
 8006720:	2a24      	cmp	r2, #36	; 0x24
 8006722:	60c1      	str	r1, [r0, #12]
 8006724:	6088      	str	r0, [r1, #8]
 8006726:	f200 80a1 	bhi.w	800686c <_realloc_r+0x31c>
 800672a:	2a13      	cmp	r2, #19
 800672c:	6829      	ldr	r1, [r5, #0]
 800672e:	f240 809b 	bls.w	8006868 <_realloc_r+0x318>
 8006732:	f8cb 1008 	str.w	r1, [fp, #8]
 8006736:	6869      	ldr	r1, [r5, #4]
 8006738:	f8cb 100c 	str.w	r1, [fp, #12]
 800673c:	2a1b      	cmp	r2, #27
 800673e:	68a9      	ldr	r1, [r5, #8]
 8006740:	f200 809b 	bhi.w	800687a <_realloc_r+0x32a>
 8006744:	f10b 0210 	add.w	r2, fp, #16
 8006748:	3508      	adds	r5, #8
 800674a:	6011      	str	r1, [r2, #0]
 800674c:	6869      	ldr	r1, [r5, #4]
 800674e:	6051      	str	r1, [r2, #4]
 8006750:	68a9      	ldr	r1, [r5, #8]
 8006752:	6091      	str	r1, [r2, #8]
 8006754:	eb0b 0104 	add.w	r1, fp, r4
 8006758:	eba9 0204 	sub.w	r2, r9, r4
 800675c:	f042 0201 	orr.w	r2, r2, #1
 8006760:	6099      	str	r1, [r3, #8]
 8006762:	604a      	str	r2, [r1, #4]
 8006764:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006768:	f003 0301 	and.w	r3, r3, #1
 800676c:	431c      	orrs	r4, r3
 800676e:	4640      	mov	r0, r8
 8006770:	f8cb 4004 	str.w	r4, [fp, #4]
 8006774:	f7ff fbdc 	bl	8005f30 <__malloc_unlock>
 8006778:	e78e      	b.n	8006698 <_realloc_r+0x148>
 800677a:	07d3      	lsls	r3, r2, #31
 800677c:	f53f af15 	bmi.w	80065aa <_realloc_r+0x5a>
 8006780:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006784:	eba7 0b03 	sub.w	fp, r7, r3
 8006788:	f8db 2004 	ldr.w	r2, [fp, #4]
 800678c:	f022 0203 	bic.w	r2, r2, #3
 8006790:	4410      	add	r0, r2
 8006792:	1983      	adds	r3, r0, r6
 8006794:	428b      	cmp	r3, r1
 8006796:	f6ff af45 	blt.w	8006624 <_realloc_r+0xd4>
 800679a:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800679e:	46da      	mov	sl, fp
 80067a0:	60ca      	str	r2, [r1, #12]
 80067a2:	6091      	str	r1, [r2, #8]
 80067a4:	e742      	b.n	800662c <_realloc_r+0xdc>
 80067a6:	6001      	str	r1, [r0, #0]
 80067a8:	686b      	ldr	r3, [r5, #4]
 80067aa:	6043      	str	r3, [r0, #4]
 80067ac:	2a1b      	cmp	r2, #27
 80067ae:	d83a      	bhi.n	8006826 <_realloc_r+0x2d6>
 80067b0:	f105 0208 	add.w	r2, r5, #8
 80067b4:	f100 0308 	add.w	r3, r0, #8
 80067b8:	68a9      	ldr	r1, [r5, #8]
 80067ba:	e710      	b.n	80065de <_realloc_r+0x8e>
 80067bc:	f850 3c04 	ldr.w	r3, [r0, #-4]
 80067c0:	f023 0303 	bic.w	r3, r3, #3
 80067c4:	441e      	add	r6, r3
 80067c6:	eb07 0906 	add.w	r9, r7, r6
 80067ca:	e753      	b.n	8006674 <_realloc_r+0x124>
 80067cc:	4652      	mov	r2, sl
 80067ce:	e749      	b.n	8006664 <_realloc_r+0x114>
 80067d0:	4629      	mov	r1, r5
 80067d2:	4650      	mov	r0, sl
 80067d4:	461e      	mov	r6, r3
 80067d6:	465f      	mov	r7, fp
 80067d8:	f7ff fb40 	bl	8005e5c <memmove>
 80067dc:	4655      	mov	r5, sl
 80067de:	e749      	b.n	8006674 <_realloc_r+0x124>
 80067e0:	4629      	mov	r1, r5
 80067e2:	f7ff fb3b 	bl	8005e5c <memmove>
 80067e6:	e6ff      	b.n	80065e8 <_realloc_r+0x98>
 80067e8:	4427      	add	r7, r4
 80067ea:	eba9 0904 	sub.w	r9, r9, r4
 80067ee:	f049 0201 	orr.w	r2, r9, #1
 80067f2:	609f      	str	r7, [r3, #8]
 80067f4:	607a      	str	r2, [r7, #4]
 80067f6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80067fa:	f003 0301 	and.w	r3, r3, #1
 80067fe:	431c      	orrs	r4, r3
 8006800:	4640      	mov	r0, r8
 8006802:	f845 4c04 	str.w	r4, [r5, #-4]
 8006806:	f7ff fb93 	bl	8005f30 <__malloc_unlock>
 800680a:	46aa      	mov	sl, r5
 800680c:	e744      	b.n	8006698 <_realloc_r+0x148>
 800680e:	f8cb 1010 	str.w	r1, [fp, #16]
 8006812:	68e9      	ldr	r1, [r5, #12]
 8006814:	f8cb 1014 	str.w	r1, [fp, #20]
 8006818:	2a24      	cmp	r2, #36	; 0x24
 800681a:	d010      	beq.n	800683e <_realloc_r+0x2ee>
 800681c:	6929      	ldr	r1, [r5, #16]
 800681e:	f10b 0218 	add.w	r2, fp, #24
 8006822:	3510      	adds	r5, #16
 8006824:	e71e      	b.n	8006664 <_realloc_r+0x114>
 8006826:	68ab      	ldr	r3, [r5, #8]
 8006828:	6083      	str	r3, [r0, #8]
 800682a:	68eb      	ldr	r3, [r5, #12]
 800682c:	60c3      	str	r3, [r0, #12]
 800682e:	2a24      	cmp	r2, #36	; 0x24
 8006830:	d010      	beq.n	8006854 <_realloc_r+0x304>
 8006832:	f105 0210 	add.w	r2, r5, #16
 8006836:	f100 0310 	add.w	r3, r0, #16
 800683a:	6929      	ldr	r1, [r5, #16]
 800683c:	e6cf      	b.n	80065de <_realloc_r+0x8e>
 800683e:	692a      	ldr	r2, [r5, #16]
 8006840:	f8cb 2018 	str.w	r2, [fp, #24]
 8006844:	696a      	ldr	r2, [r5, #20]
 8006846:	f8cb 201c 	str.w	r2, [fp, #28]
 800684a:	69a9      	ldr	r1, [r5, #24]
 800684c:	f10b 0220 	add.w	r2, fp, #32
 8006850:	3518      	adds	r5, #24
 8006852:	e707      	b.n	8006664 <_realloc_r+0x114>
 8006854:	692b      	ldr	r3, [r5, #16]
 8006856:	6103      	str	r3, [r0, #16]
 8006858:	696b      	ldr	r3, [r5, #20]
 800685a:	6143      	str	r3, [r0, #20]
 800685c:	69a9      	ldr	r1, [r5, #24]
 800685e:	f105 0218 	add.w	r2, r5, #24
 8006862:	f100 0318 	add.w	r3, r0, #24
 8006866:	e6ba      	b.n	80065de <_realloc_r+0x8e>
 8006868:	4652      	mov	r2, sl
 800686a:	e76e      	b.n	800674a <_realloc_r+0x1fa>
 800686c:	4629      	mov	r1, r5
 800686e:	4650      	mov	r0, sl
 8006870:	9301      	str	r3, [sp, #4]
 8006872:	f7ff faf3 	bl	8005e5c <memmove>
 8006876:	9b01      	ldr	r3, [sp, #4]
 8006878:	e76c      	b.n	8006754 <_realloc_r+0x204>
 800687a:	f8cb 1010 	str.w	r1, [fp, #16]
 800687e:	68e9      	ldr	r1, [r5, #12]
 8006880:	f8cb 1014 	str.w	r1, [fp, #20]
 8006884:	2a24      	cmp	r2, #36	; 0x24
 8006886:	d004      	beq.n	8006892 <_realloc_r+0x342>
 8006888:	6929      	ldr	r1, [r5, #16]
 800688a:	f10b 0218 	add.w	r2, fp, #24
 800688e:	3510      	adds	r5, #16
 8006890:	e75b      	b.n	800674a <_realloc_r+0x1fa>
 8006892:	692a      	ldr	r2, [r5, #16]
 8006894:	f8cb 2018 	str.w	r2, [fp, #24]
 8006898:	696a      	ldr	r2, [r5, #20]
 800689a:	f8cb 201c 	str.w	r2, [fp, #28]
 800689e:	69a9      	ldr	r1, [r5, #24]
 80068a0:	f10b 0220 	add.w	r2, fp, #32
 80068a4:	3518      	adds	r5, #24
 80068a6:	e750      	b.n	800674a <_realloc_r+0x1fa>
 80068a8:	2000045c 	.word	0x2000045c

080068ac <frexp>:
 80068ac:	ec53 2b10 	vmov	r2, r3, d0
 80068b0:	b570      	push	{r4, r5, r6, lr}
 80068b2:	4e16      	ldr	r6, [pc, #88]	; (800690c <frexp+0x60>)
 80068b4:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 80068b8:	2500      	movs	r5, #0
 80068ba:	42b1      	cmp	r1, r6
 80068bc:	4604      	mov	r4, r0
 80068be:	6005      	str	r5, [r0, #0]
 80068c0:	dc21      	bgt.n	8006906 <frexp+0x5a>
 80068c2:	ee10 6a10 	vmov	r6, s0
 80068c6:	430e      	orrs	r6, r1
 80068c8:	d01d      	beq.n	8006906 <frexp+0x5a>
 80068ca:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80068ce:	4618      	mov	r0, r3
 80068d0:	da0c      	bge.n	80068ec <frexp+0x40>
 80068d2:	4619      	mov	r1, r3
 80068d4:	2200      	movs	r2, #0
 80068d6:	ee10 0a10 	vmov	r0, s0
 80068da:	4b0d      	ldr	r3, [pc, #52]	; (8006910 <frexp+0x64>)
 80068dc:	f7fa f92c 	bl	8000b38 <__aeabi_dmul>
 80068e0:	f06f 0535 	mvn.w	r5, #53	; 0x35
 80068e4:	4602      	mov	r2, r0
 80068e6:	4608      	mov	r0, r1
 80068e8:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80068ec:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 80068f0:	1509      	asrs	r1, r1, #20
 80068f2:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 80068f6:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 80068fa:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 80068fe:	4429      	add	r1, r5
 8006900:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006904:	6021      	str	r1, [r4, #0]
 8006906:	ec43 2b10 	vmov	d0, r2, r3
 800690a:	bd70      	pop	{r4, r5, r6, pc}
 800690c:	7fefffff 	.word	0x7fefffff
 8006910:	43500000 	.word	0x43500000

08006914 <_sbrk_r>:
 8006914:	b538      	push	{r3, r4, r5, lr}
 8006916:	4c07      	ldr	r4, [pc, #28]	; (8006934 <_sbrk_r+0x20>)
 8006918:	2300      	movs	r3, #0
 800691a:	4605      	mov	r5, r0
 800691c:	4608      	mov	r0, r1
 800691e:	6023      	str	r3, [r4, #0]
 8006920:	f7fb fc32 	bl	8002188 <_sbrk>
 8006924:	1c43      	adds	r3, r0, #1
 8006926:	d000      	beq.n	800692a <_sbrk_r+0x16>
 8006928:	bd38      	pop	{r3, r4, r5, pc}
 800692a:	6823      	ldr	r3, [r4, #0]
 800692c:	2b00      	cmp	r3, #0
 800692e:	d0fb      	beq.n	8006928 <_sbrk_r+0x14>
 8006930:	602b      	str	r3, [r5, #0]
 8006932:	bd38      	pop	{r3, r4, r5, pc}
 8006934:	20000b1c 	.word	0x20000b1c

08006938 <__sread>:
 8006938:	b510      	push	{r4, lr}
 800693a:	460c      	mov	r4, r1
 800693c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006940:	f000 fabc 	bl	8006ebc <_read_r>
 8006944:	2800      	cmp	r0, #0
 8006946:	db03      	blt.n	8006950 <__sread+0x18>
 8006948:	6d23      	ldr	r3, [r4, #80]	; 0x50
 800694a:	4403      	add	r3, r0
 800694c:	6523      	str	r3, [r4, #80]	; 0x50
 800694e:	bd10      	pop	{r4, pc}
 8006950:	89a3      	ldrh	r3, [r4, #12]
 8006952:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006956:	81a3      	strh	r3, [r4, #12]
 8006958:	bd10      	pop	{r4, pc}
 800695a:	bf00      	nop

0800695c <__swrite>:
 800695c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006960:	4616      	mov	r6, r2
 8006962:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006966:	461f      	mov	r7, r3
 8006968:	05d3      	lsls	r3, r2, #23
 800696a:	460c      	mov	r4, r1
 800696c:	4605      	mov	r5, r0
 800696e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006972:	d507      	bpl.n	8006984 <__swrite+0x28>
 8006974:	2200      	movs	r2, #0
 8006976:	2302      	movs	r3, #2
 8006978:	f000 fa74 	bl	8006e64 <_lseek_r>
 800697c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006980:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006984:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006988:	81a2      	strh	r2, [r4, #12]
 800698a:	463b      	mov	r3, r7
 800698c:	4632      	mov	r2, r6
 800698e:	4628      	mov	r0, r5
 8006990:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006994:	f000 b88c 	b.w	8006ab0 <_write_r>

08006998 <__sseek>:
 8006998:	b510      	push	{r4, lr}
 800699a:	460c      	mov	r4, r1
 800699c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069a0:	f000 fa60 	bl	8006e64 <_lseek_r>
 80069a4:	89a3      	ldrh	r3, [r4, #12]
 80069a6:	1c42      	adds	r2, r0, #1
 80069a8:	bf0e      	itee	eq
 80069aa:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80069ae:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 80069b2:	6520      	strne	r0, [r4, #80]	; 0x50
 80069b4:	81a3      	strh	r3, [r4, #12]
 80069b6:	bd10      	pop	{r4, pc}

080069b8 <__sclose>:
 80069b8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069bc:	f000 b922 	b.w	8006c04 <_close_r>

080069c0 <strncpy>:
 80069c0:	ea40 0301 	orr.w	r3, r0, r1
 80069c4:	079b      	lsls	r3, r3, #30
 80069c6:	b470      	push	{r4, r5, r6}
 80069c8:	d12a      	bne.n	8006a20 <strncpy+0x60>
 80069ca:	2a03      	cmp	r2, #3
 80069cc:	d928      	bls.n	8006a20 <strncpy+0x60>
 80069ce:	460c      	mov	r4, r1
 80069d0:	4603      	mov	r3, r0
 80069d2:	4621      	mov	r1, r4
 80069d4:	f854 6b04 	ldr.w	r6, [r4], #4
 80069d8:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 80069dc:	ea25 0506 	bic.w	r5, r5, r6
 80069e0:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 80069e4:	d106      	bne.n	80069f4 <strncpy+0x34>
 80069e6:	3a04      	subs	r2, #4
 80069e8:	2a03      	cmp	r2, #3
 80069ea:	f843 6b04 	str.w	r6, [r3], #4
 80069ee:	4621      	mov	r1, r4
 80069f0:	d8ef      	bhi.n	80069d2 <strncpy+0x12>
 80069f2:	b19a      	cbz	r2, 8006a1c <strncpy+0x5c>
 80069f4:	780c      	ldrb	r4, [r1, #0]
 80069f6:	701c      	strb	r4, [r3, #0]
 80069f8:	3a01      	subs	r2, #1
 80069fa:	3301      	adds	r3, #1
 80069fc:	b13c      	cbz	r4, 8006a0e <strncpy+0x4e>
 80069fe:	b16a      	cbz	r2, 8006a1c <strncpy+0x5c>
 8006a00:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006a04:	f803 4b01 	strb.w	r4, [r3], #1
 8006a08:	3a01      	subs	r2, #1
 8006a0a:	2c00      	cmp	r4, #0
 8006a0c:	d1f7      	bne.n	80069fe <strncpy+0x3e>
 8006a0e:	b12a      	cbz	r2, 8006a1c <strncpy+0x5c>
 8006a10:	441a      	add	r2, r3
 8006a12:	2100      	movs	r1, #0
 8006a14:	f803 1b01 	strb.w	r1, [r3], #1
 8006a18:	4293      	cmp	r3, r2
 8006a1a:	d1fb      	bne.n	8006a14 <strncpy+0x54>
 8006a1c:	bc70      	pop	{r4, r5, r6}
 8006a1e:	4770      	bx	lr
 8006a20:	4603      	mov	r3, r0
 8006a22:	e7e6      	b.n	80069f2 <strncpy+0x32>

08006a24 <__sprint_r.part.0>:
 8006a24:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006a28:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006a2a:	049c      	lsls	r4, r3, #18
 8006a2c:	4692      	mov	sl, r2
 8006a2e:	d52d      	bpl.n	8006a8c <__sprint_r.part.0+0x68>
 8006a30:	6893      	ldr	r3, [r2, #8]
 8006a32:	6812      	ldr	r2, [r2, #0]
 8006a34:	b343      	cbz	r3, 8006a88 <__sprint_r.part.0+0x64>
 8006a36:	460e      	mov	r6, r1
 8006a38:	4607      	mov	r7, r0
 8006a3a:	f102 0908 	add.w	r9, r2, #8
 8006a3e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006a42:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006a46:	d015      	beq.n	8006a74 <__sprint_r.part.0+0x50>
 8006a48:	3d04      	subs	r5, #4
 8006a4a:	2400      	movs	r4, #0
 8006a4c:	e001      	b.n	8006a52 <__sprint_r.part.0+0x2e>
 8006a4e:	45a0      	cmp	r8, r4
 8006a50:	d00e      	beq.n	8006a70 <__sprint_r.part.0+0x4c>
 8006a52:	4632      	mov	r2, r6
 8006a54:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006a58:	4638      	mov	r0, r7
 8006a5a:	f000 f99d 	bl	8006d98 <_fputwc_r>
 8006a5e:	1c43      	adds	r3, r0, #1
 8006a60:	f104 0401 	add.w	r4, r4, #1
 8006a64:	d1f3      	bne.n	8006a4e <__sprint_r.part.0+0x2a>
 8006a66:	2300      	movs	r3, #0
 8006a68:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006a6c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a70:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006a74:	f02b 0b03 	bic.w	fp, fp, #3
 8006a78:	eba3 030b 	sub.w	r3, r3, fp
 8006a7c:	f8ca 3008 	str.w	r3, [sl, #8]
 8006a80:	f109 0908 	add.w	r9, r9, #8
 8006a84:	2b00      	cmp	r3, #0
 8006a86:	d1da      	bne.n	8006a3e <__sprint_r.part.0+0x1a>
 8006a88:	2000      	movs	r0, #0
 8006a8a:	e7ec      	b.n	8006a66 <__sprint_r.part.0+0x42>
 8006a8c:	f7fe fd0c 	bl	80054a8 <__sfvwrite_r>
 8006a90:	2300      	movs	r3, #0
 8006a92:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006a96:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a9a:	bf00      	nop

08006a9c <__sprint_r>:
 8006a9c:	6893      	ldr	r3, [r2, #8]
 8006a9e:	b10b      	cbz	r3, 8006aa4 <__sprint_r+0x8>
 8006aa0:	f7ff bfc0 	b.w	8006a24 <__sprint_r.part.0>
 8006aa4:	b410      	push	{r4}
 8006aa6:	4618      	mov	r0, r3
 8006aa8:	6053      	str	r3, [r2, #4]
 8006aaa:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006aae:	4770      	bx	lr

08006ab0 <_write_r>:
 8006ab0:	b570      	push	{r4, r5, r6, lr}
 8006ab2:	460d      	mov	r5, r1
 8006ab4:	4c08      	ldr	r4, [pc, #32]	; (8006ad8 <_write_r+0x28>)
 8006ab6:	4611      	mov	r1, r2
 8006ab8:	4606      	mov	r6, r0
 8006aba:	461a      	mov	r2, r3
 8006abc:	4628      	mov	r0, r5
 8006abe:	2300      	movs	r3, #0
 8006ac0:	6023      	str	r3, [r4, #0]
 8006ac2:	f7fb fb4e 	bl	8002162 <_write>
 8006ac6:	1c43      	adds	r3, r0, #1
 8006ac8:	d000      	beq.n	8006acc <_write_r+0x1c>
 8006aca:	bd70      	pop	{r4, r5, r6, pc}
 8006acc:	6823      	ldr	r3, [r4, #0]
 8006ace:	2b00      	cmp	r3, #0
 8006ad0:	d0fb      	beq.n	8006aca <_write_r+0x1a>
 8006ad2:	6033      	str	r3, [r6, #0]
 8006ad4:	bd70      	pop	{r4, r5, r6, pc}
 8006ad6:	bf00      	nop
 8006ad8:	20000b1c 	.word	0x20000b1c

08006adc <__register_exitproc>:
 8006adc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006ae0:	4d2b      	ldr	r5, [pc, #172]	; (8006b90 <__register_exitproc+0xb4>)
 8006ae2:	4606      	mov	r6, r0
 8006ae4:	6828      	ldr	r0, [r5, #0]
 8006ae6:	4698      	mov	r8, r3
 8006ae8:	460f      	mov	r7, r1
 8006aea:	4691      	mov	r9, r2
 8006aec:	f7fe fe96 	bl	800581c <__retarget_lock_acquire_recursive>
 8006af0:	4b28      	ldr	r3, [pc, #160]	; (8006b94 <__register_exitproc+0xb8>)
 8006af2:	681c      	ldr	r4, [r3, #0]
 8006af4:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006af8:	2b00      	cmp	r3, #0
 8006afa:	d03d      	beq.n	8006b78 <__register_exitproc+0x9c>
 8006afc:	685a      	ldr	r2, [r3, #4]
 8006afe:	2a1f      	cmp	r2, #31
 8006b00:	dc0d      	bgt.n	8006b1e <__register_exitproc+0x42>
 8006b02:	f102 0c01 	add.w	ip, r2, #1
 8006b06:	bb16      	cbnz	r6, 8006b4e <__register_exitproc+0x72>
 8006b08:	3202      	adds	r2, #2
 8006b0a:	f8c3 c004 	str.w	ip, [r3, #4]
 8006b0e:	6828      	ldr	r0, [r5, #0]
 8006b10:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006b14:	f7fe fe84 	bl	8005820 <__retarget_lock_release_recursive>
 8006b18:	2000      	movs	r0, #0
 8006b1a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006b1e:	4b1e      	ldr	r3, [pc, #120]	; (8006b98 <__register_exitproc+0xbc>)
 8006b20:	b37b      	cbz	r3, 8006b82 <__register_exitproc+0xa6>
 8006b22:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006b26:	f3af 8000 	nop.w
 8006b2a:	4603      	mov	r3, r0
 8006b2c:	b348      	cbz	r0, 8006b82 <__register_exitproc+0xa6>
 8006b2e:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006b32:	2100      	movs	r1, #0
 8006b34:	e9c0 2100 	strd	r2, r1, [r0]
 8006b38:	f04f 0c01 	mov.w	ip, #1
 8006b3c:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006b40:	460a      	mov	r2, r1
 8006b42:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006b46:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006b4a:	2e00      	cmp	r6, #0
 8006b4c:	d0dc      	beq.n	8006b08 <__register_exitproc+0x2c>
 8006b4e:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006b52:	2401      	movs	r4, #1
 8006b54:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006b58:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006b5c:	4094      	lsls	r4, r2
 8006b5e:	4320      	orrs	r0, r4
 8006b60:	2e02      	cmp	r6, #2
 8006b62:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006b66:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006b6a:	d1cd      	bne.n	8006b08 <__register_exitproc+0x2c>
 8006b6c:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006b70:	430c      	orrs	r4, r1
 8006b72:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006b76:	e7c7      	b.n	8006b08 <__register_exitproc+0x2c>
 8006b78:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006b7c:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006b80:	e7bc      	b.n	8006afc <__register_exitproc+0x20>
 8006b82:	6828      	ldr	r0, [r5, #0]
 8006b84:	f7fe fe4c 	bl	8005820 <__retarget_lock_release_recursive>
 8006b88:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006b8c:	e7c5      	b.n	8006b1a <__register_exitproc+0x3e>
 8006b8e:	bf00      	nop
 8006b90:	20000458 	.word	0x20000458
 8006b94:	08007170 	.word	0x08007170
 8006b98:	00000000 	.word	0x00000000

08006b9c <_calloc_r>:
 8006b9c:	b510      	push	{r4, lr}
 8006b9e:	fb02 f101 	mul.w	r1, r2, r1
 8006ba2:	f7fe feb7 	bl	8005914 <_malloc_r>
 8006ba6:	4604      	mov	r4, r0
 8006ba8:	b1d8      	cbz	r0, 8006be2 <_calloc_r+0x46>
 8006baa:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006bae:	f022 0203 	bic.w	r2, r2, #3
 8006bb2:	3a04      	subs	r2, #4
 8006bb4:	2a24      	cmp	r2, #36	; 0x24
 8006bb6:	d81d      	bhi.n	8006bf4 <_calloc_r+0x58>
 8006bb8:	2a13      	cmp	r2, #19
 8006bba:	d914      	bls.n	8006be6 <_calloc_r+0x4a>
 8006bbc:	2300      	movs	r3, #0
 8006bbe:	2a1b      	cmp	r2, #27
 8006bc0:	e9c0 3300 	strd	r3, r3, [r0]
 8006bc4:	d91b      	bls.n	8006bfe <_calloc_r+0x62>
 8006bc6:	2a24      	cmp	r2, #36	; 0x24
 8006bc8:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006bcc:	bf0a      	itet	eq
 8006bce:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006bd2:	f100 0210 	addne.w	r2, r0, #16
 8006bd6:	f100 0218 	addeq.w	r2, r0, #24
 8006bda:	2300      	movs	r3, #0
 8006bdc:	e9c2 3300 	strd	r3, r3, [r2]
 8006be0:	6093      	str	r3, [r2, #8]
 8006be2:	4620      	mov	r0, r4
 8006be4:	bd10      	pop	{r4, pc}
 8006be6:	4602      	mov	r2, r0
 8006be8:	2300      	movs	r3, #0
 8006bea:	e9c2 3300 	strd	r3, r3, [r2]
 8006bee:	6093      	str	r3, [r2, #8]
 8006bf0:	4620      	mov	r0, r4
 8006bf2:	bd10      	pop	{r4, pc}
 8006bf4:	2100      	movs	r1, #0
 8006bf6:	f7fb fb6d 	bl	80022d4 <memset>
 8006bfa:	4620      	mov	r0, r4
 8006bfc:	bd10      	pop	{r4, pc}
 8006bfe:	f100 0208 	add.w	r2, r0, #8
 8006c02:	e7f1      	b.n	8006be8 <_calloc_r+0x4c>

08006c04 <_close_r>:
 8006c04:	b538      	push	{r3, r4, r5, lr}
 8006c06:	4c07      	ldr	r4, [pc, #28]	; (8006c24 <_close_r+0x20>)
 8006c08:	2300      	movs	r3, #0
 8006c0a:	4605      	mov	r5, r0
 8006c0c:	4608      	mov	r0, r1
 8006c0e:	6023      	str	r3, [r4, #0]
 8006c10:	f7fb fad6 	bl	80021c0 <_close>
 8006c14:	1c43      	adds	r3, r0, #1
 8006c16:	d000      	beq.n	8006c1a <_close_r+0x16>
 8006c18:	bd38      	pop	{r3, r4, r5, pc}
 8006c1a:	6823      	ldr	r3, [r4, #0]
 8006c1c:	2b00      	cmp	r3, #0
 8006c1e:	d0fb      	beq.n	8006c18 <_close_r+0x14>
 8006c20:	602b      	str	r3, [r5, #0]
 8006c22:	bd38      	pop	{r3, r4, r5, pc}
 8006c24:	20000b1c 	.word	0x20000b1c

08006c28 <_fclose_r>:
 8006c28:	b570      	push	{r4, r5, r6, lr}
 8006c2a:	2900      	cmp	r1, #0
 8006c2c:	d048      	beq.n	8006cc0 <_fclose_r+0x98>
 8006c2e:	4605      	mov	r5, r0
 8006c30:	460c      	mov	r4, r1
 8006c32:	b110      	cbz	r0, 8006c3a <_fclose_r+0x12>
 8006c34:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006c36:	2b00      	cmp	r3, #0
 8006c38:	d048      	beq.n	8006ccc <_fclose_r+0xa4>
 8006c3a:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c3c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c40:	07d0      	lsls	r0, r2, #31
 8006c42:	d440      	bmi.n	8006cc6 <_fclose_r+0x9e>
 8006c44:	0599      	lsls	r1, r3, #22
 8006c46:	d530      	bpl.n	8006caa <_fclose_r+0x82>
 8006c48:	4621      	mov	r1, r4
 8006c4a:	4628      	mov	r0, r5
 8006c4c:	f7fe f990 	bl	8004f70 <__sflush_r>
 8006c50:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006c52:	4606      	mov	r6, r0
 8006c54:	b133      	cbz	r3, 8006c64 <_fclose_r+0x3c>
 8006c56:	69e1      	ldr	r1, [r4, #28]
 8006c58:	4628      	mov	r0, r5
 8006c5a:	4798      	blx	r3
 8006c5c:	2800      	cmp	r0, #0
 8006c5e:	bfb8      	it	lt
 8006c60:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006c64:	89a3      	ldrh	r3, [r4, #12]
 8006c66:	061a      	lsls	r2, r3, #24
 8006c68:	d43c      	bmi.n	8006ce4 <_fclose_r+0xbc>
 8006c6a:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006c6c:	b141      	cbz	r1, 8006c80 <_fclose_r+0x58>
 8006c6e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006c72:	4299      	cmp	r1, r3
 8006c74:	d002      	beq.n	8006c7c <_fclose_r+0x54>
 8006c76:	4628      	mov	r0, r5
 8006c78:	f7fe fb22 	bl	80052c0 <_free_r>
 8006c7c:	2300      	movs	r3, #0
 8006c7e:	6323      	str	r3, [r4, #48]	; 0x30
 8006c80:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006c82:	b121      	cbz	r1, 8006c8e <_fclose_r+0x66>
 8006c84:	4628      	mov	r0, r5
 8006c86:	f7fe fb1b 	bl	80052c0 <_free_r>
 8006c8a:	2300      	movs	r3, #0
 8006c8c:	6463      	str	r3, [r4, #68]	; 0x44
 8006c8e:	f7fe faa1 	bl	80051d4 <__sfp_lock_acquire>
 8006c92:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006c94:	2200      	movs	r2, #0
 8006c96:	07db      	lsls	r3, r3, #31
 8006c98:	81a2      	strh	r2, [r4, #12]
 8006c9a:	d51f      	bpl.n	8006cdc <_fclose_r+0xb4>
 8006c9c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c9e:	f7fe fdbb 	bl	8005818 <__retarget_lock_close_recursive>
 8006ca2:	f7fe fa9d 	bl	80051e0 <__sfp_lock_release>
 8006ca6:	4630      	mov	r0, r6
 8006ca8:	bd70      	pop	{r4, r5, r6, pc}
 8006caa:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cac:	f7fe fdb6 	bl	800581c <__retarget_lock_acquire_recursive>
 8006cb0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006cb4:	2b00      	cmp	r3, #0
 8006cb6:	d1c7      	bne.n	8006c48 <_fclose_r+0x20>
 8006cb8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006cba:	f016 0601 	ands.w	r6, r6, #1
 8006cbe:	d016      	beq.n	8006cee <_fclose_r+0xc6>
 8006cc0:	2600      	movs	r6, #0
 8006cc2:	4630      	mov	r0, r6
 8006cc4:	bd70      	pop	{r4, r5, r6, pc}
 8006cc6:	2b00      	cmp	r3, #0
 8006cc8:	d0fa      	beq.n	8006cc0 <_fclose_r+0x98>
 8006cca:	e7bd      	b.n	8006c48 <_fclose_r+0x20>
 8006ccc:	f7fe fa56 	bl	800517c <__sinit>
 8006cd0:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006cd2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006cd6:	07d0      	lsls	r0, r2, #31
 8006cd8:	d4f5      	bmi.n	8006cc6 <_fclose_r+0x9e>
 8006cda:	e7b3      	b.n	8006c44 <_fclose_r+0x1c>
 8006cdc:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cde:	f7fe fd9f 	bl	8005820 <__retarget_lock_release_recursive>
 8006ce2:	e7db      	b.n	8006c9c <_fclose_r+0x74>
 8006ce4:	6921      	ldr	r1, [r4, #16]
 8006ce6:	4628      	mov	r0, r5
 8006ce8:	f7fe faea 	bl	80052c0 <_free_r>
 8006cec:	e7bd      	b.n	8006c6a <_fclose_r+0x42>
 8006cee:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cf0:	f7fe fd96 	bl	8005820 <__retarget_lock_release_recursive>
 8006cf4:	4630      	mov	r0, r6
 8006cf6:	bd70      	pop	{r4, r5, r6, pc}

08006cf8 <__fputwc>:
 8006cf8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006cfc:	b082      	sub	sp, #8
 8006cfe:	4681      	mov	r9, r0
 8006d00:	4688      	mov	r8, r1
 8006d02:	4614      	mov	r4, r2
 8006d04:	f000 f8a0 	bl	8006e48 <__locale_mb_cur_max>
 8006d08:	2801      	cmp	r0, #1
 8006d0a:	d103      	bne.n	8006d14 <__fputwc+0x1c>
 8006d0c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006d10:	2bfe      	cmp	r3, #254	; 0xfe
 8006d12:	d933      	bls.n	8006d7c <__fputwc+0x84>
 8006d14:	4642      	mov	r2, r8
 8006d16:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006d1a:	a901      	add	r1, sp, #4
 8006d1c:	4648      	mov	r0, r9
 8006d1e:	f000 f93b 	bl	8006f98 <_wcrtomb_r>
 8006d22:	1c42      	adds	r2, r0, #1
 8006d24:	4606      	mov	r6, r0
 8006d26:	d02f      	beq.n	8006d88 <__fputwc+0x90>
 8006d28:	b320      	cbz	r0, 8006d74 <__fputwc+0x7c>
 8006d2a:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006d2e:	2500      	movs	r5, #0
 8006d30:	f10d 0a04 	add.w	sl, sp, #4
 8006d34:	e009      	b.n	8006d4a <__fputwc+0x52>
 8006d36:	6823      	ldr	r3, [r4, #0]
 8006d38:	1c5a      	adds	r2, r3, #1
 8006d3a:	6022      	str	r2, [r4, #0]
 8006d3c:	f883 c000 	strb.w	ip, [r3]
 8006d40:	3501      	adds	r5, #1
 8006d42:	42b5      	cmp	r5, r6
 8006d44:	d216      	bcs.n	8006d74 <__fputwc+0x7c>
 8006d46:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006d4a:	68a3      	ldr	r3, [r4, #8]
 8006d4c:	3b01      	subs	r3, #1
 8006d4e:	2b00      	cmp	r3, #0
 8006d50:	60a3      	str	r3, [r4, #8]
 8006d52:	daf0      	bge.n	8006d36 <__fputwc+0x3e>
 8006d54:	69a7      	ldr	r7, [r4, #24]
 8006d56:	42bb      	cmp	r3, r7
 8006d58:	4661      	mov	r1, ip
 8006d5a:	4622      	mov	r2, r4
 8006d5c:	4648      	mov	r0, r9
 8006d5e:	db02      	blt.n	8006d66 <__fputwc+0x6e>
 8006d60:	f1bc 0f0a 	cmp.w	ip, #10
 8006d64:	d1e7      	bne.n	8006d36 <__fputwc+0x3e>
 8006d66:	f000 f8bf 	bl	8006ee8 <__swbuf_r>
 8006d6a:	1c43      	adds	r3, r0, #1
 8006d6c:	d1e8      	bne.n	8006d40 <__fputwc+0x48>
 8006d6e:	b002      	add	sp, #8
 8006d70:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d74:	4640      	mov	r0, r8
 8006d76:	b002      	add	sp, #8
 8006d78:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d7c:	fa5f fc88 	uxtb.w	ip, r8
 8006d80:	4606      	mov	r6, r0
 8006d82:	f88d c004 	strb.w	ip, [sp, #4]
 8006d86:	e7d2      	b.n	8006d2e <__fputwc+0x36>
 8006d88:	89a3      	ldrh	r3, [r4, #12]
 8006d8a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006d8e:	81a3      	strh	r3, [r4, #12]
 8006d90:	b002      	add	sp, #8
 8006d92:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d96:	bf00      	nop

08006d98 <_fputwc_r>:
 8006d98:	b530      	push	{r4, r5, lr}
 8006d9a:	4605      	mov	r5, r0
 8006d9c:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006d9e:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006da2:	07c0      	lsls	r0, r0, #31
 8006da4:	4614      	mov	r4, r2
 8006da6:	b083      	sub	sp, #12
 8006da8:	b29a      	uxth	r2, r3
 8006daa:	d401      	bmi.n	8006db0 <_fputwc_r+0x18>
 8006dac:	0590      	lsls	r0, r2, #22
 8006dae:	d51c      	bpl.n	8006dea <_fputwc_r+0x52>
 8006db0:	0490      	lsls	r0, r2, #18
 8006db2:	d406      	bmi.n	8006dc2 <_fputwc_r+0x2a>
 8006db4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006db6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006dba:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006dbe:	81a3      	strh	r3, [r4, #12]
 8006dc0:	6662      	str	r2, [r4, #100]	; 0x64
 8006dc2:	4628      	mov	r0, r5
 8006dc4:	4622      	mov	r2, r4
 8006dc6:	f7ff ff97 	bl	8006cf8 <__fputwc>
 8006dca:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006dcc:	07da      	lsls	r2, r3, #31
 8006dce:	4605      	mov	r5, r0
 8006dd0:	d402      	bmi.n	8006dd8 <_fputwc_r+0x40>
 8006dd2:	89a3      	ldrh	r3, [r4, #12]
 8006dd4:	059b      	lsls	r3, r3, #22
 8006dd6:	d502      	bpl.n	8006dde <_fputwc_r+0x46>
 8006dd8:	4628      	mov	r0, r5
 8006dda:	b003      	add	sp, #12
 8006ddc:	bd30      	pop	{r4, r5, pc}
 8006dde:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006de0:	f7fe fd1e 	bl	8005820 <__retarget_lock_release_recursive>
 8006de4:	4628      	mov	r0, r5
 8006de6:	b003      	add	sp, #12
 8006de8:	bd30      	pop	{r4, r5, pc}
 8006dea:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006dec:	9101      	str	r1, [sp, #4]
 8006dee:	f7fe fd15 	bl	800581c <__retarget_lock_acquire_recursive>
 8006df2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006df6:	9901      	ldr	r1, [sp, #4]
 8006df8:	b29a      	uxth	r2, r3
 8006dfa:	e7d9      	b.n	8006db0 <_fputwc_r+0x18>

08006dfc <_fstat_r>:
 8006dfc:	b538      	push	{r3, r4, r5, lr}
 8006dfe:	460b      	mov	r3, r1
 8006e00:	4c07      	ldr	r4, [pc, #28]	; (8006e20 <_fstat_r+0x24>)
 8006e02:	4605      	mov	r5, r0
 8006e04:	4611      	mov	r1, r2
 8006e06:	4618      	mov	r0, r3
 8006e08:	2300      	movs	r3, #0
 8006e0a:	6023      	str	r3, [r4, #0]
 8006e0c:	f7fb f9db 	bl	80021c6 <_fstat>
 8006e10:	1c43      	adds	r3, r0, #1
 8006e12:	d000      	beq.n	8006e16 <_fstat_r+0x1a>
 8006e14:	bd38      	pop	{r3, r4, r5, pc}
 8006e16:	6823      	ldr	r3, [r4, #0]
 8006e18:	2b00      	cmp	r3, #0
 8006e1a:	d0fb      	beq.n	8006e14 <_fstat_r+0x18>
 8006e1c:	602b      	str	r3, [r5, #0]
 8006e1e:	bd38      	pop	{r3, r4, r5, pc}
 8006e20:	20000b1c 	.word	0x20000b1c

08006e24 <_isatty_r>:
 8006e24:	b538      	push	{r3, r4, r5, lr}
 8006e26:	4c07      	ldr	r4, [pc, #28]	; (8006e44 <_isatty_r+0x20>)
 8006e28:	2300      	movs	r3, #0
 8006e2a:	4605      	mov	r5, r0
 8006e2c:	4608      	mov	r0, r1
 8006e2e:	6023      	str	r3, [r4, #0]
 8006e30:	f7fb f9ce 	bl	80021d0 <_isatty>
 8006e34:	1c43      	adds	r3, r0, #1
 8006e36:	d000      	beq.n	8006e3a <_isatty_r+0x16>
 8006e38:	bd38      	pop	{r3, r4, r5, pc}
 8006e3a:	6823      	ldr	r3, [r4, #0]
 8006e3c:	2b00      	cmp	r3, #0
 8006e3e:	d0fb      	beq.n	8006e38 <_isatty_r+0x14>
 8006e40:	602b      	str	r3, [r5, #0]
 8006e42:	bd38      	pop	{r3, r4, r5, pc}
 8006e44:	20000b1c 	.word	0x20000b1c

08006e48 <__locale_mb_cur_max>:
 8006e48:	4b04      	ldr	r3, [pc, #16]	; (8006e5c <__locale_mb_cur_max+0x14>)
 8006e4a:	4a05      	ldr	r2, [pc, #20]	; (8006e60 <__locale_mb_cur_max+0x18>)
 8006e4c:	681b      	ldr	r3, [r3, #0]
 8006e4e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006e50:	2b00      	cmp	r3, #0
 8006e52:	bf08      	it	eq
 8006e54:	4613      	moveq	r3, r2
 8006e56:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006e5a:	4770      	bx	lr
 8006e5c:	2000002c 	.word	0x2000002c
 8006e60:	2000086c 	.word	0x2000086c

08006e64 <_lseek_r>:
 8006e64:	b570      	push	{r4, r5, r6, lr}
 8006e66:	460d      	mov	r5, r1
 8006e68:	4c08      	ldr	r4, [pc, #32]	; (8006e8c <_lseek_r+0x28>)
 8006e6a:	4611      	mov	r1, r2
 8006e6c:	4606      	mov	r6, r0
 8006e6e:	461a      	mov	r2, r3
 8006e70:	4628      	mov	r0, r5
 8006e72:	2300      	movs	r3, #0
 8006e74:	6023      	str	r3, [r4, #0]
 8006e76:	f7fb f9ad 	bl	80021d4 <_lseek>
 8006e7a:	1c43      	adds	r3, r0, #1
 8006e7c:	d000      	beq.n	8006e80 <_lseek_r+0x1c>
 8006e7e:	bd70      	pop	{r4, r5, r6, pc}
 8006e80:	6823      	ldr	r3, [r4, #0]
 8006e82:	2b00      	cmp	r3, #0
 8006e84:	d0fb      	beq.n	8006e7e <_lseek_r+0x1a>
 8006e86:	6033      	str	r3, [r6, #0]
 8006e88:	bd70      	pop	{r4, r5, r6, pc}
 8006e8a:	bf00      	nop
 8006e8c:	20000b1c 	.word	0x20000b1c

08006e90 <__ascii_mbtowc>:
 8006e90:	b082      	sub	sp, #8
 8006e92:	b149      	cbz	r1, 8006ea8 <__ascii_mbtowc+0x18>
 8006e94:	b15a      	cbz	r2, 8006eae <__ascii_mbtowc+0x1e>
 8006e96:	b16b      	cbz	r3, 8006eb4 <__ascii_mbtowc+0x24>
 8006e98:	7813      	ldrb	r3, [r2, #0]
 8006e9a:	600b      	str	r3, [r1, #0]
 8006e9c:	7812      	ldrb	r2, [r2, #0]
 8006e9e:	1c10      	adds	r0, r2, #0
 8006ea0:	bf18      	it	ne
 8006ea2:	2001      	movne	r0, #1
 8006ea4:	b002      	add	sp, #8
 8006ea6:	4770      	bx	lr
 8006ea8:	a901      	add	r1, sp, #4
 8006eaa:	2a00      	cmp	r2, #0
 8006eac:	d1f3      	bne.n	8006e96 <__ascii_mbtowc+0x6>
 8006eae:	4610      	mov	r0, r2
 8006eb0:	b002      	add	sp, #8
 8006eb2:	4770      	bx	lr
 8006eb4:	f06f 0001 	mvn.w	r0, #1
 8006eb8:	e7f4      	b.n	8006ea4 <__ascii_mbtowc+0x14>
 8006eba:	bf00      	nop

08006ebc <_read_r>:
 8006ebc:	b570      	push	{r4, r5, r6, lr}
 8006ebe:	460d      	mov	r5, r1
 8006ec0:	4c08      	ldr	r4, [pc, #32]	; (8006ee4 <_read_r+0x28>)
 8006ec2:	4611      	mov	r1, r2
 8006ec4:	4606      	mov	r6, r0
 8006ec6:	461a      	mov	r2, r3
 8006ec8:	4628      	mov	r0, r5
 8006eca:	2300      	movs	r3, #0
 8006ecc:	6023      	str	r3, [r4, #0]
 8006ece:	f7fb f935 	bl	800213c <_read>
 8006ed2:	1c43      	adds	r3, r0, #1
 8006ed4:	d000      	beq.n	8006ed8 <_read_r+0x1c>
 8006ed6:	bd70      	pop	{r4, r5, r6, pc}
 8006ed8:	6823      	ldr	r3, [r4, #0]
 8006eda:	2b00      	cmp	r3, #0
 8006edc:	d0fb      	beq.n	8006ed6 <_read_r+0x1a>
 8006ede:	6033      	str	r3, [r6, #0]
 8006ee0:	bd70      	pop	{r4, r5, r6, pc}
 8006ee2:	bf00      	nop
 8006ee4:	20000b1c 	.word	0x20000b1c

08006ee8 <__swbuf_r>:
 8006ee8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006eea:	460d      	mov	r5, r1
 8006eec:	4614      	mov	r4, r2
 8006eee:	4606      	mov	r6, r0
 8006ef0:	b110      	cbz	r0, 8006ef8 <__swbuf_r+0x10>
 8006ef2:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006ef4:	2b00      	cmp	r3, #0
 8006ef6:	d043      	beq.n	8006f80 <__swbuf_r+0x98>
 8006ef8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006efc:	69a3      	ldr	r3, [r4, #24]
 8006efe:	60a3      	str	r3, [r4, #8]
 8006f00:	b291      	uxth	r1, r2
 8006f02:	0708      	lsls	r0, r1, #28
 8006f04:	d51b      	bpl.n	8006f3e <__swbuf_r+0x56>
 8006f06:	6923      	ldr	r3, [r4, #16]
 8006f08:	b1cb      	cbz	r3, 8006f3e <__swbuf_r+0x56>
 8006f0a:	b2ed      	uxtb	r5, r5
 8006f0c:	0489      	lsls	r1, r1, #18
 8006f0e:	462f      	mov	r7, r5
 8006f10:	d522      	bpl.n	8006f58 <__swbuf_r+0x70>
 8006f12:	6822      	ldr	r2, [r4, #0]
 8006f14:	6961      	ldr	r1, [r4, #20]
 8006f16:	1ad3      	subs	r3, r2, r3
 8006f18:	4299      	cmp	r1, r3
 8006f1a:	dd29      	ble.n	8006f70 <__swbuf_r+0x88>
 8006f1c:	3301      	adds	r3, #1
 8006f1e:	68a1      	ldr	r1, [r4, #8]
 8006f20:	1c50      	adds	r0, r2, #1
 8006f22:	3901      	subs	r1, #1
 8006f24:	60a1      	str	r1, [r4, #8]
 8006f26:	6020      	str	r0, [r4, #0]
 8006f28:	7015      	strb	r5, [r2, #0]
 8006f2a:	6962      	ldr	r2, [r4, #20]
 8006f2c:	429a      	cmp	r2, r3
 8006f2e:	d02a      	beq.n	8006f86 <__swbuf_r+0x9e>
 8006f30:	89a3      	ldrh	r3, [r4, #12]
 8006f32:	07db      	lsls	r3, r3, #31
 8006f34:	d501      	bpl.n	8006f3a <__swbuf_r+0x52>
 8006f36:	2d0a      	cmp	r5, #10
 8006f38:	d025      	beq.n	8006f86 <__swbuf_r+0x9e>
 8006f3a:	4638      	mov	r0, r7
 8006f3c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006f3e:	4621      	mov	r1, r4
 8006f40:	4630      	mov	r0, r6
 8006f42:	f7fc fffd 	bl	8003f40 <__swsetup_r>
 8006f46:	bb20      	cbnz	r0, 8006f92 <__swbuf_r+0xaa>
 8006f48:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f4c:	6923      	ldr	r3, [r4, #16]
 8006f4e:	b291      	uxth	r1, r2
 8006f50:	b2ed      	uxtb	r5, r5
 8006f52:	0489      	lsls	r1, r1, #18
 8006f54:	462f      	mov	r7, r5
 8006f56:	d4dc      	bmi.n	8006f12 <__swbuf_r+0x2a>
 8006f58:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006f5a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006f5e:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006f62:	81a2      	strh	r2, [r4, #12]
 8006f64:	6822      	ldr	r2, [r4, #0]
 8006f66:	6661      	str	r1, [r4, #100]	; 0x64
 8006f68:	6961      	ldr	r1, [r4, #20]
 8006f6a:	1ad3      	subs	r3, r2, r3
 8006f6c:	4299      	cmp	r1, r3
 8006f6e:	dcd5      	bgt.n	8006f1c <__swbuf_r+0x34>
 8006f70:	4621      	mov	r1, r4
 8006f72:	4630      	mov	r0, r6
 8006f74:	f7fe f8a6 	bl	80050c4 <_fflush_r>
 8006f78:	b958      	cbnz	r0, 8006f92 <__swbuf_r+0xaa>
 8006f7a:	6822      	ldr	r2, [r4, #0]
 8006f7c:	2301      	movs	r3, #1
 8006f7e:	e7ce      	b.n	8006f1e <__swbuf_r+0x36>
 8006f80:	f7fe f8fc 	bl	800517c <__sinit>
 8006f84:	e7b8      	b.n	8006ef8 <__swbuf_r+0x10>
 8006f86:	4621      	mov	r1, r4
 8006f88:	4630      	mov	r0, r6
 8006f8a:	f7fe f89b 	bl	80050c4 <_fflush_r>
 8006f8e:	2800      	cmp	r0, #0
 8006f90:	d0d3      	beq.n	8006f3a <__swbuf_r+0x52>
 8006f92:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006f96:	e7d0      	b.n	8006f3a <__swbuf_r+0x52>

08006f98 <_wcrtomb_r>:
 8006f98:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006f9a:	4c11      	ldr	r4, [pc, #68]	; (8006fe0 <_wcrtomb_r+0x48>)
 8006f9c:	6824      	ldr	r4, [r4, #0]
 8006f9e:	b085      	sub	sp, #20
 8006fa0:	4606      	mov	r6, r0
 8006fa2:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006fa4:	461f      	mov	r7, r3
 8006fa6:	b151      	cbz	r1, 8006fbe <_wcrtomb_r+0x26>
 8006fa8:	4d0e      	ldr	r5, [pc, #56]	; (8006fe4 <_wcrtomb_r+0x4c>)
 8006faa:	2c00      	cmp	r4, #0
 8006fac:	bf08      	it	eq
 8006fae:	462c      	moveq	r4, r5
 8006fb0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006fb4:	47a0      	blx	r4
 8006fb6:	1c43      	adds	r3, r0, #1
 8006fb8:	d00c      	beq.n	8006fd4 <_wcrtomb_r+0x3c>
 8006fba:	b005      	add	sp, #20
 8006fbc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006fbe:	4a09      	ldr	r2, [pc, #36]	; (8006fe4 <_wcrtomb_r+0x4c>)
 8006fc0:	2c00      	cmp	r4, #0
 8006fc2:	bf08      	it	eq
 8006fc4:	4614      	moveq	r4, r2
 8006fc6:	460a      	mov	r2, r1
 8006fc8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006fcc:	a901      	add	r1, sp, #4
 8006fce:	47a0      	blx	r4
 8006fd0:	1c43      	adds	r3, r0, #1
 8006fd2:	d1f2      	bne.n	8006fba <_wcrtomb_r+0x22>
 8006fd4:	2200      	movs	r2, #0
 8006fd6:	238a      	movs	r3, #138	; 0x8a
 8006fd8:	603a      	str	r2, [r7, #0]
 8006fda:	6033      	str	r3, [r6, #0]
 8006fdc:	b005      	add	sp, #20
 8006fde:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006fe0:	2000002c 	.word	0x2000002c
 8006fe4:	2000086c 	.word	0x2000086c

08006fe8 <__ascii_wctomb>:
 8006fe8:	b121      	cbz	r1, 8006ff4 <__ascii_wctomb+0xc>
 8006fea:	2aff      	cmp	r2, #255	; 0xff
 8006fec:	d804      	bhi.n	8006ff8 <__ascii_wctomb+0x10>
 8006fee:	700a      	strb	r2, [r1, #0]
 8006ff0:	2001      	movs	r0, #1
 8006ff2:	4770      	bx	lr
 8006ff4:	4608      	mov	r0, r1
 8006ff6:	4770      	bx	lr
 8006ff8:	238a      	movs	r3, #138	; 0x8a
 8006ffa:	6003      	str	r3, [r0, #0]
 8006ffc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007000:	4770      	bx	lr
 8007002:	bf00      	nop

08007004 <_init>:
 8007004:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007006:	bf00      	nop
 8007008:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800700a:	bc08      	pop	{r3}
 800700c:	469e      	mov	lr, r3
 800700e:	4770      	bx	lr

08007010 <_fini>:
 8007010:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007012:	bf00      	nop
 8007014:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007016:	bc08      	pop	{r3}
 8007018:	469e      	mov	lr, r3
 800701a:	4770      	bx	lr
 800701c:	0000      	movs	r0, r0
	...
