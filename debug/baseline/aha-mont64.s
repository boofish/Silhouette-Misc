
aha-mont64.elf:     file format elf32-littlearm


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
 80001e0:	0800772c 	.word	0x0800772c

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
 80001fc:	0800772c 	.word	0x0800772c

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
 80010ee:	f000 f81a 	bl	8001126 <HAL_NVIC_SetPriorityGrouping>
 80010f2:	200f      	movs	r0, #15
 80010f4:	f000 fbc1 	bl	800187a <HAL_InitTick>
 80010f8:	2800      	cmp	r0, #0
 80010fa:	bf1c      	itt	ne
 80010fc:	2001      	movne	r0, #1
 80010fe:	bd80      	popne	{r7, pc}
 8001100:	f000 f96b 	bl	80013da <HAL_MspInit>
 8001104:	2000      	movs	r0, #0
 8001106:	bd80      	pop	{r7, pc}

08001108 <HAL_IncTick>:
 8001108:	f640 20b8 	movw	r0, #2744	; 0xab8
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	f840 1e00 	strt	r1, [r0]
 8001118:	4770      	bx	lr

0800111a <HAL_GetTick>:
 800111a:	f640 20b8 	movw	r0, #2744	; 0xab8
 800111e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001122:	6800      	ldr	r0, [r0, #0]
 8001124:	4770      	bx	lr

08001126 <HAL_NVIC_SetPriorityGrouping>:
 8001126:	f64e 510c 	movw	r1, #60684	; 0xed0c
 800112a:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 800112e:	f2ce 0100 	movt	r1, #57344	; 0xe000
 8001132:	680a      	ldr	r2, [r1, #0]
 8001134:	401a      	ands	r2, r3
 8001136:	f360 220a 	bfi	r2, r0, #8, #3
 800113a:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 800113e:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 8001142:	6008      	str	r0, [r1, #0]
 8001144:	4770      	bx	lr

08001146 <HAL_NVIC_SetPriority>:
 8001146:	b580      	push	{r7, lr}
 8001148:	466f      	mov	r7, sp
 800114a:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 800114e:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 8001152:	2800      	cmp	r0, #0
 8001154:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 8001158:	f000 030f 	and.w	r3, r0, #15
 800115c:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 8001160:	f1a3 0304 	sub.w	r3, r3, #4
 8001164:	4473      	add	r3, lr
 8001166:	bfb8      	it	lt
 8001168:	f103 0c0c 	addlt.w	ip, r3, #12
 800116c:	f8de 0000 	ldr.w	r0, [lr]
 8001170:	f3c0 2002 	ubfx	r0, r0, #8, #3
 8001174:	f100 0e04 	add.w	lr, r0, #4
 8001178:	1ec3      	subs	r3, r0, #3
 800117a:	f080 0007 	eor.w	r0, r0, #7
 800117e:	f1be 0f07 	cmp.w	lr, #7
 8001182:	f04f 0e01 	mov.w	lr, #1
 8001186:	bf38      	it	cc
 8001188:	2300      	movcc	r3, #0
 800118a:	2804      	cmp	r0, #4
 800118c:	bf28      	it	cs
 800118e:	2004      	movcs	r0, #4
 8001190:	fa0e f000 	lsl.w	r0, lr, r0
 8001194:	3801      	subs	r0, #1
 8001196:	4008      	ands	r0, r1
 8001198:	fa0e f103 	lsl.w	r1, lr, r3
 800119c:	310f      	adds	r1, #15
 800119e:	4098      	lsls	r0, r3
 80011a0:	4011      	ands	r1, r2
 80011a2:	4308      	orrs	r0, r1
 80011a4:	0100      	lsls	r0, r0, #4
 80011a6:	f88c 0000 	strb.w	r0, [ip]
 80011aa:	bd80      	pop	{r7, pc}

080011ac <HAL_NVIC_EnableIRQ>:
 80011ac:	f000 011f 	and.w	r1, r0, #31
 80011b0:	2201      	movs	r2, #1
 80011b2:	0940      	lsrs	r0, r0, #5
 80011b4:	fa02 f101 	lsl.w	r1, r2, r1
 80011b8:	f24e 1200 	movw	r2, #57600	; 0xe100
 80011bc:	f2ce 0200 	movt	r2, #57344	; 0xe000
 80011c0:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 80011c4:	4770      	bx	lr

080011c6 <HAL_SYSTICK_IRQHandler>:
 80011c6:	f000 b800 	b.w	80011ca <HAL_SYSTICK_Callback>

080011ca <HAL_SYSTICK_Callback>:
 80011ca:	4770      	bx	lr

080011cc <HAL_GPIO_Init>:
 80011cc:	b085      	sub	sp, #20
 80011ce:	f84d 4e00 	strt	r4, [sp]
 80011d2:	f84d 5e04 	strt	r5, [sp, #4]
 80011d6:	f84d 6e08 	strt	r6, [sp, #8]
 80011da:	f84d 7e0c 	strt	r7, [sp, #12]
 80011de:	f84d ee10 	strt	lr, [sp, #16]
 80011e2:	af03      	add	r7, sp, #12
 80011e4:	b084      	sub	sp, #16
 80011e6:	f84d 8e00 	strt	r8, [sp]
 80011ea:	f84d 9e04 	strt	r9, [sp, #4]
 80011ee:	f84d ae08 	strt	sl, [sp, #8]
 80011f2:	f84d be0c 	strt	fp, [sp, #12]
 80011f6:	b082      	sub	sp, #8
 80011f8:	680e      	ldr	r6, [r1, #0]
 80011fa:	2e00      	cmp	r6, #0
 80011fc:	f000 80e9 	beq.w	80013d2 <HAL_GPIO_Init+0x206>
 8001200:	f641 0200 	movw	r2, #6144	; 0x1800
 8001204:	2507      	movs	r5, #7
 8001206:	f04f 0801 	mov.w	r8, #1
 800120a:	f6c4 0200 	movt	r2, #18432	; 0x4800
 800120e:	4290      	cmp	r0, r2
 8001210:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 8001214:	ea4f 23b2 	mov.w	r3, r2, ror #10
 8001218:	bf08      	it	eq
 800121a:	2506      	moveq	r5, #6
 800121c:	2b06      	cmp	r3, #6
 800121e:	bf38      	it	cc
 8001220:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 8001224:	2200      	movs	r2, #0
 8001226:	f84d 5e00 	strt	r5, [sp]
 800122a:	2500      	movs	r5, #0
 800122c:	f1a8 0a01 	sub.w	sl, r8, #1
 8001230:	2301      	movs	r3, #1
 8001232:	fa03 fb0a 	lsl.w	fp, r3, sl
 8001236:	ea16 090b 	ands.w	r9, r6, fp
 800123a:	f000 80c1 	beq.w	80013c0 <HAL_GPIO_Init+0x1f4>
 800123e:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001242:	f04e 0610 	orr.w	r6, lr, #16
 8001246:	2e12      	cmp	r6, #18
 8001248:	d116      	bne.n	8001278 <HAL_GPIO_Init+0xac>
 800124a:	f005 061c 	and.w	r6, r5, #28
 800124e:	230f      	movs	r3, #15
 8001250:	fa03 fc06 	lsl.w	ip, r3, r6
 8001254:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 8001258:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 800125c:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 8001260:	4404      	add	r4, r0
 8001262:	6a23      	ldr	r3, [r4, #32]
 8001264:	ea23 0c0c 	bic.w	ip, r3, ip
 8001268:	690b      	ldr	r3, [r1, #16]
 800126a:	40b3      	lsls	r3, r6
 800126c:	ea43 030c 	orr.w	r3, r3, ip
 8001270:	f844 3e20 	strt	r3, [r4, #32]
 8001274:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001278:	6806      	ldr	r6, [r0, #0]
 800127a:	2403      	movs	r4, #3
 800127c:	f00e 0c03 	and.w	ip, lr, #3
 8001280:	f1be 0f12 	cmp.w	lr, #18
 8001284:	fa04 f402 	lsl.w	r4, r4, r2
 8001288:	fa0c f302 	lsl.w	r3, ip, r2
 800128c:	ea26 0604 	bic.w	r6, r6, r4
 8001290:	ea43 0306 	orr.w	r3, r3, r6
 8001294:	ea6f 0604 	mvn.w	r6, r4
 8001298:	f840 3e00 	strt	r3, [r0]
 800129c:	d818      	bhi.n	80012d0 <HAL_GPIO_Init+0x104>
 800129e:	2301      	movs	r3, #1
 80012a0:	fa03 f30e 	lsl.w	r3, r3, lr
 80012a4:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 80012a8:	bf1f      	itttt	ne
 80012aa:	6883      	ldrne	r3, [r0, #8]
 80012ac:	4033      	andne	r3, r6
 80012ae:	68cc      	ldrne	r4, [r1, #12]
 80012b0:	4094      	lslne	r4, r2
 80012b2:	bf1f      	itttt	ne
 80012b4:	4323      	orrne	r3, r4
 80012b6:	f840 3e08 	strtne	r3, [r0, #8]
 80012ba:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 80012be:	fa03 f30a 	lslne.w	r3, r3, sl
 80012c2:	bf1f      	itttt	ne
 80012c4:	6844      	ldrne	r4, [r0, #4]
 80012c6:	ea24 040b 	bicne.w	r4, r4, fp
 80012ca:	4323      	orrne	r3, r4
 80012cc:	f840 3e04 	strtne	r3, [r0, #4]
 80012d0:	f1bc 0f03 	cmp.w	ip, #3
 80012d4:	d109      	bne.n	80012ea <HAL_GPIO_Init+0x11e>
 80012d6:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 80012da:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 80012dc:	fa03 f30a 	lsl.w	r3, r3, sl
 80012e0:	ea24 040b 	bic.w	r4, r4, fp
 80012e4:	4323      	orrs	r3, r4
 80012e6:	f840 3e2c 	strt	r3, [r0, #44]
 80012ea:	68c3      	ldr	r3, [r0, #12]
 80012ec:	4033      	ands	r3, r6
 80012ee:	688e      	ldr	r6, [r1, #8]
 80012f0:	4096      	lsls	r6, r2
 80012f2:	4333      	orrs	r3, r6
 80012f4:	f840 3e0c 	strt	r3, [r0, #12]
 80012f8:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 80012fc:	d560      	bpl.n	80013c0 <HAL_GPIO_Init+0x1f4>
 80012fe:	f241 0360 	movw	r3, #4192	; 0x1060
 8001302:	f005 040c 	and.w	r4, r5, #12
 8001306:	f2c4 0302 	movt	r3, #16386	; 0x4002
 800130a:	461e      	mov	r6, r3
 800130c:	6833      	ldr	r3, [r6, #0]
 800130e:	f043 0301 	orr.w	r3, r3, #1
 8001312:	f846 3e00 	strt	r3, [r6]
 8001316:	6833      	ldr	r3, [r6, #0]
 8001318:	f240 4600 	movw	r6, #1024	; 0x400
 800131c:	f2c4 0601 	movt	r6, #16385	; 0x4001
 8001320:	46b6      	mov	lr, r6
 8001322:	f003 0301 	and.w	r3, r3, #1
 8001326:	f84d 3e04 	strt	r3, [sp, #4]
 800132a:	f02a 0303 	bic.w	r3, sl, #3
 800132e:	9e01      	ldr	r6, [sp, #4]
 8001330:	4473      	add	r3, lr
 8001332:	f64f 4608 	movw	r6, #64520	; 0xfc08
 8001336:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 800133a:	46b2      	mov	sl, r6
 800133c:	260f      	movs	r6, #15
 800133e:	f853 c00a 	ldr.w	ip, [r3, sl]
 8001342:	40a6      	lsls	r6, r4
 8001344:	ea2c 0c06 	bic.w	ip, ip, r6
 8001348:	9e00      	ldr	r6, [sp, #0]
 800134a:	fa06 f404 	lsl.w	r4, r6, r4
 800134e:	ea4c 0604 	orr.w	r6, ip, r4
 8001352:	eb03 030a 	add.w	r3, r3, sl
 8001356:	f843 6e00 	strt	r6, [r3]
 800135a:	eba3 030a 	sub.w	r3, r3, sl
 800135e:	f8de 3000 	ldr.w	r3, [lr]
 8001362:	684e      	ldr	r6, [r1, #4]
 8001364:	ea23 0309 	bic.w	r3, r3, r9
 8001368:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 800136c:	bf18      	it	ne
 800136e:	ea43 0309 	orrne.w	r3, r3, r9
 8001372:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 8001376:	f84e 3e00 	strt	r3, [lr]
 800137a:	f8de 3004 	ldr.w	r3, [lr, #4]
 800137e:	ea23 0309 	bic.w	r3, r3, r9
 8001382:	bf18      	it	ne
 8001384:	ea43 0309 	orrne.w	r3, r3, r9
 8001388:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 800138c:	f84e 3e04 	strt	r3, [lr, #4]
 8001390:	f8de 3008 	ldr.w	r3, [lr, #8]
 8001394:	ea23 0309 	bic.w	r3, r3, r9
 8001398:	bf18      	it	ne
 800139a:	ea43 0309 	orrne.w	r3, r3, r9
 800139e:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 80013a2:	f84e 3e08 	strt	r3, [lr, #8]
 80013a6:	f240 430c 	movw	r3, #1036	; 0x40c
 80013aa:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80013ae:	461c      	mov	r4, r3
 80013b0:	6823      	ldr	r3, [r4, #0]
 80013b2:	ea23 0309 	bic.w	r3, r3, r9
 80013b6:	bf18      	it	ne
 80013b8:	ea43 0309 	orrne.w	r3, r3, r9
 80013bc:	f844 3e00 	strt	r3, [r4]
 80013c0:	680e      	ldr	r6, [r1, #0]
 80013c2:	3202      	adds	r2, #2
 80013c4:	3504      	adds	r5, #4
 80013c6:	fa36 f308 	lsrs.w	r3, r6, r8
 80013ca:	f108 0801 	add.w	r8, r8, #1
 80013ce:	f47f af2d 	bne.w	800122c <HAL_GPIO_Init+0x60>
 80013d2:	b002      	add	sp, #8
 80013d4:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80013d8:	bdf0      	pop	{r4, r5, r6, r7, pc}

080013da <HAL_MspInit>:
 80013da:	4770      	bx	lr

080013dc <HAL_RCC_GetSysClockFreq>:
 80013dc:	b082      	sub	sp, #8
 80013de:	f84d 7e00 	strt	r7, [sp]
 80013e2:	f84d ee04 	strt	lr, [sp, #4]
 80013e6:	466f      	mov	r7, sp
 80013e8:	f241 010c 	movw	r1, #4108	; 0x100c
 80013ec:	f241 2e00 	movw	lr, #4608	; 0x1200
 80013f0:	f242 4c00 	movw	ip, #9216	; 0x2400
 80013f4:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80013f8:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 80013fc:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 8001400:	f851 2c04 	ldr.w	r2, [r1, #-4]
 8001404:	6808      	ldr	r0, [r1, #0]
 8001406:	f012 030c 	ands.w	r3, r2, #12
 800140a:	d005      	beq.n	8001418 <HAL_RCC_GetSysClockFreq+0x3c>
 800140c:	2b0c      	cmp	r3, #12
 800140e:	bf04      	itt	eq
 8001410:	f000 0003 	andeq.w	r0, r0, #3
 8001414:	2801      	cmpeq	r0, #1
 8001416:	d118      	bne.n	800144a <HAL_RCC_GetSysClockFreq+0x6e>
 8001418:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 800141c:	f010 0f08 	tst.w	r0, #8
 8001420:	d103      	bne.n	800142a <HAL_RCC_GetSysClockFreq+0x4e>
 8001422:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 8001426:	0a00      	lsrs	r0, r0, #8
 8001428:	e002      	b.n	8001430 <HAL_RCC_GetSysClockFreq+0x54>
 800142a:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 800142e:	0900      	lsrs	r0, r0, #4
 8001430:	f247 7260 	movw	r2, #30560	; 0x7760
 8001434:	f000 000f 	and.w	r0, r0, #15
 8001438:	2b00      	cmp	r3, #0
 800143a:	f6c0 0200 	movt	r2, #2048	; 0x800
 800143e:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 8001442:	4610      	mov	r0, r2
 8001444:	bf18      	it	ne
 8001446:	2000      	movne	r0, #0
 8001448:	e00b      	b.n	8001462 <HAL_RCC_GetSysClockFreq+0x86>
 800144a:	f003 000f 	and.w	r0, r3, #15
 800144e:	2804      	cmp	r0, #4
 8001450:	bf04      	itt	eq
 8001452:	4660      	moveq	r0, ip
 8001454:	bd80      	popeq	{r7, pc}
 8001456:	2808      	cmp	r0, #8
 8001458:	bf04      	itt	eq
 800145a:	4670      	moveq	r0, lr
 800145c:	bd80      	popeq	{r7, pc}
 800145e:	2000      	movs	r0, #0
 8001460:	2200      	movs	r2, #0
 8001462:	2b0c      	cmp	r3, #12
 8001464:	bf18      	it	ne
 8001466:	bd80      	popne	{r7, pc}
 8001468:	6808      	ldr	r0, [r1, #0]
 800146a:	f000 0303 	and.w	r3, r0, #3
 800146e:	6808      	ldr	r0, [r1, #0]
 8001470:	2b03      	cmp	r3, #3
 8001472:	f3c0 1002 	ubfx	r0, r0, #4, #3
 8001476:	f100 0001 	add.w	r0, r0, #1
 800147a:	d003      	beq.n	8001484 <HAL_RCC_GetSysClockFreq+0xa8>
 800147c:	2b02      	cmp	r3, #2
 800147e:	46e6      	mov	lr, ip
 8001480:	bf18      	it	ne
 8001482:	4696      	movne	lr, r2
 8001484:	680a      	ldr	r2, [r1, #0]
 8001486:	fbbe f0f0 	udiv	r0, lr, r0
 800148a:	f3c2 2206 	ubfx	r2, r2, #8, #7
 800148e:	6809      	ldr	r1, [r1, #0]
 8001490:	4350      	muls	r0, r2
 8001492:	2202      	movs	r2, #2
 8001494:	f3c1 6141 	ubfx	r1, r1, #25, #2
 8001498:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 800149c:	fbb0 f0f1 	udiv	r0, r0, r1
 80014a0:	bd80      	pop	{r7, pc}

080014a2 <HAL_RCC_GetPCLK1Freq>:
 80014a2:	f240 0014 	movw	r0, #20
 80014a6:	f241 0108 	movw	r1, #4104	; 0x1008
 80014aa:	f247 7258 	movw	r2, #30552	; 0x7758
 80014ae:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80014b2:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80014b6:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014ba:	6800      	ldr	r0, [r0, #0]
 80014bc:	6809      	ldr	r1, [r1, #0]
 80014be:	f3c1 2102 	ubfx	r1, r1, #8, #3
 80014c2:	5c51      	ldrb	r1, [r2, r1]
 80014c4:	f001 011f 	and.w	r1, r1, #31
 80014c8:	40c8      	lsrs	r0, r1
 80014ca:	4770      	bx	lr

080014cc <HAL_RCC_GetPCLK2Freq>:
 80014cc:	f240 0014 	movw	r0, #20
 80014d0:	f241 0108 	movw	r1, #4104	; 0x1008
 80014d4:	f247 7258 	movw	r2, #30552	; 0x7758
 80014d8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80014dc:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80014e0:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014e4:	6800      	ldr	r0, [r0, #0]
 80014e6:	6809      	ldr	r1, [r1, #0]
 80014e8:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 80014ec:	5c51      	ldrb	r1, [r2, r1]
 80014ee:	f001 011f 	and.w	r1, r1, #31
 80014f2:	40c8      	lsrs	r0, r1
 80014f4:	4770      	bx	lr

080014f6 <HAL_RCC_GetClockConfig>:
 80014f6:	220f      	movs	r2, #15
 80014f8:	6002      	str	r2, [r0, #0]
 80014fa:	f241 0208 	movw	r2, #4104	; 0x1008
 80014fe:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8001502:	6813      	ldr	r3, [r2, #0]
 8001504:	f003 0303 	and.w	r3, r3, #3
 8001508:	6043      	str	r3, [r0, #4]
 800150a:	6813      	ldr	r3, [r2, #0]
 800150c:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8001510:	6083      	str	r3, [r0, #8]
 8001512:	6813      	ldr	r3, [r2, #0]
 8001514:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 8001518:	60c3      	str	r3, [r0, #12]
 800151a:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 800151e:	6812      	ldr	r2, [r2, #0]
 8001520:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 8001524:	6102      	str	r2, [r0, #16]
 8001526:	f242 0000 	movw	r0, #8192	; 0x2000
 800152a:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800152e:	6800      	ldr	r0, [r0, #0]
 8001530:	f000 0007 	and.w	r0, r0, #7
 8001534:	6008      	str	r0, [r1, #0]
 8001536:	4770      	bx	lr

08001538 <HAL_TIM_Base_Init>:
 8001538:	b5d0      	push	{r4, r6, r7, lr}
 800153a:	af02      	add	r7, sp, #8
 800153c:	4604      	mov	r4, r0
 800153e:	2c00      	cmp	r4, #0
 8001540:	bf04      	itt	eq
 8001542:	2001      	moveq	r0, #1
 8001544:	bdd0      	popeq	{r4, r6, r7, pc}
 8001546:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8001548:	b920      	cbnz	r0, 8001554 <HAL_TIM_Base_Init+0x1c>
 800154a:	2000      	movs	r0, #0
 800154c:	63e0      	str	r0, [r4, #60]	; 0x3c
 800154e:	4620      	mov	r0, r4
 8001550:	f000 f892 	bl	8001678 <HAL_TIM_Base_MspInit>
 8001554:	2002      	movs	r0, #2
 8001556:	f640 32ff 	movw	r2, #3071	; 0xbff
 800155a:	6420      	str	r0, [r4, #64]	; 0x40
 800155c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001560:	6820      	ldr	r0, [r4, #0]
 8001562:	6801      	ldr	r1, [r0, #0]
 8001564:	4290      	cmp	r0, r2
 8001566:	dc0f      	bgt.n	8001588 <HAL_TIM_Base_Init+0x50>
 8001568:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 800156c:	bf1e      	ittt	ne
 800156e:	f240 4200 	movwne	r2, #1024	; 0x400
 8001572:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 8001576:	4290      	cmpne	r0, r2
 8001578:	d018      	beq.n	80015ac <HAL_TIM_Base_Init+0x74>
 800157a:	f640 0200 	movw	r2, #2048	; 0x800
 800157e:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001582:	4290      	cmp	r0, r2
 8001584:	d012      	beq.n	80015ac <HAL_TIM_Base_Init+0x74>
 8001586:	e015      	b.n	80015b4 <HAL_TIM_Base_Init+0x7c>
 8001588:	f640 4200 	movw	r2, #3072	; 0xc00
 800158c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001590:	4290      	cmp	r0, r2
 8001592:	bf1e      	ittt	ne
 8001594:	f243 4200 	movwne	r2, #13312	; 0x3400
 8001598:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 800159c:	4290      	cmpne	r0, r2
 800159e:	d005      	beq.n	80015ac <HAL_TIM_Base_Init+0x74>
 80015a0:	f642 4200 	movw	r2, #11264	; 0x2c00
 80015a4:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015a8:	4290      	cmp	r0, r2
 80015aa:	d103      	bne.n	80015b4 <HAL_TIM_Base_Init+0x7c>
 80015ac:	68a2      	ldr	r2, [r4, #8]
 80015ae:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 80015b2:	4311      	orrs	r1, r2
 80015b4:	f642 32ff 	movw	r2, #11263	; 0x2bff
 80015b8:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015bc:	4290      	cmp	r0, r2
 80015be:	dd14      	ble.n	80015ea <HAL_TIM_Base_Init+0xb2>
 80015c0:	f643 72ff 	movw	r2, #16383	; 0x3fff
 80015c4:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015c8:	4290      	cmp	r0, r2
 80015ca:	dd1a      	ble.n	8001602 <HAL_TIM_Base_Init+0xca>
 80015cc:	f244 0200 	movw	r2, #16384	; 0x4000
 80015d0:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015d4:	4290      	cmp	r0, r2
 80015d6:	bf1e      	ittt	ne
 80015d8:	f644 0200 	movwne	r2, #18432	; 0x4800
 80015dc:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 80015e0:	4290      	cmpne	r0, r2
 80015e2:	d027      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 80015e4:	f244 4200 	movw	r2, #17408	; 0x4400
 80015e8:	e013      	b.n	8001612 <HAL_TIM_Base_Init+0xda>
 80015ea:	f240 72ff 	movw	r2, #2047	; 0x7ff
 80015ee:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015f2:	4290      	cmp	r0, r2
 80015f4:	dc12      	bgt.n	800161c <HAL_TIM_Base_Init+0xe4>
 80015f6:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80015fa:	d01b      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 80015fc:	f240 4200 	movw	r2, #1024	; 0x400
 8001600:	e014      	b.n	800162c <HAL_TIM_Base_Init+0xf4>
 8001602:	f642 4200 	movw	r2, #11264	; 0x2c00
 8001606:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800160a:	4290      	cmp	r0, r2
 800160c:	d012      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 800160e:	f243 4200 	movw	r2, #13312	; 0x3400
 8001612:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001616:	4290      	cmp	r0, r2
 8001618:	d00c      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 800161a:	e00f      	b.n	800163c <HAL_TIM_Base_Init+0x104>
 800161c:	f640 0200 	movw	r2, #2048	; 0x800
 8001620:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001624:	4290      	cmp	r0, r2
 8001626:	d005      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 8001628:	f640 4200 	movw	r2, #3072	; 0xc00
 800162c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001630:	4290      	cmp	r0, r2
 8001632:	d103      	bne.n	800163c <HAL_TIM_Base_Init+0x104>
 8001634:	6922      	ldr	r2, [r4, #16]
 8001636:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 800163a:	4311      	orrs	r1, r2
 800163c:	69a2      	ldr	r2, [r4, #24]
 800163e:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 8001642:	4311      	orrs	r1, r2
 8001644:	6001      	str	r1, [r0, #0]
 8001646:	68e1      	ldr	r1, [r4, #12]
 8001648:	62c1      	str	r1, [r0, #44]	; 0x2c
 800164a:	6861      	ldr	r1, [r4, #4]
 800164c:	6281      	str	r1, [r0, #40]	; 0x28
 800164e:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 8001652:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 8001656:	ea4f 21b1 	mov.w	r1, r1, ror #10
 800165a:	2907      	cmp	r1, #7
 800165c:	d807      	bhi.n	800166e <HAL_TIM_Base_Init+0x136>
 800165e:	2201      	movs	r2, #1
 8001660:	fa02 f101 	lsl.w	r1, r2, r1
 8001664:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 8001668:	bf1c      	itt	ne
 800166a:	6961      	ldrne	r1, [r4, #20]
 800166c:	6301      	strne	r1, [r0, #48]	; 0x30
 800166e:	2101      	movs	r1, #1
 8001670:	6141      	str	r1, [r0, #20]
 8001672:	2000      	movs	r0, #0
 8001674:	6421      	str	r1, [r4, #64]	; 0x40
 8001676:	bdd0      	pop	{r4, r6, r7, pc}

08001678 <HAL_TIM_Base_MspInit>:
 8001678:	4770      	bx	lr

0800167a <HAL_TIM_Base_Start_IT>:
 800167a:	6800      	ldr	r0, [r0, #0]
 800167c:	68c1      	ldr	r1, [r0, #12]
 800167e:	f041 0101 	orr.w	r1, r1, #1
 8001682:	60c1      	str	r1, [r0, #12]
 8001684:	2107      	movs	r1, #7
 8001686:	6882      	ldr	r2, [r0, #8]
 8001688:	f2c0 0101 	movt	r1, #1
 800168c:	400a      	ands	r2, r1
 800168e:	2a06      	cmp	r2, #6
 8001690:	d008      	beq.n	80016a4 <HAL_TIM_Base_Start_IT+0x2a>
 8001692:	6882      	ldr	r2, [r0, #8]
 8001694:	4011      	ands	r1, r2
 8001696:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 800169a:	bf1e      	ittt	ne
 800169c:	6801      	ldrne	r1, [r0, #0]
 800169e:	f041 0101 	orrne.w	r1, r1, #1
 80016a2:	6001      	strne	r1, [r0, #0]
 80016a4:	2000      	movs	r0, #0
 80016a6:	4770      	bx	lr

080016a8 <HAL_TIM_IRQHandler>:
 80016a8:	b084      	sub	sp, #16
 80016aa:	f84d 4e00 	strt	r4, [sp]
 80016ae:	f84d 6e04 	strt	r6, [sp, #4]
 80016b2:	f84d 7e08 	strt	r7, [sp, #8]
 80016b6:	f84d ee0c 	strt	lr, [sp, #12]
 80016ba:	af02      	add	r7, sp, #8
 80016bc:	4604      	mov	r4, r0
 80016be:	6820      	ldr	r0, [r4, #0]
 80016c0:	6901      	ldr	r1, [r0, #16]
 80016c2:	f011 0f02 	tst.w	r1, #2
 80016c6:	bf1c      	itt	ne
 80016c8:	68c1      	ldrne	r1, [r0, #12]
 80016ca:	f011 0f02 	tstne.w	r1, #2
 80016ce:	d018      	beq.n	8001702 <HAL_TIM_IRQHandler+0x5a>
 80016d0:	f06f 0102 	mvn.w	r1, #2
 80016d4:	f840 1e10 	strt	r1, [r0, #16]
 80016d8:	2101      	movs	r1, #1
 80016da:	f844 1e1c 	strt	r1, [r4, #28]
 80016de:	6980      	ldr	r0, [r0, #24]
 80016e0:	f010 0f03 	tst.w	r0, #3
 80016e4:	d003      	beq.n	80016ee <HAL_TIM_IRQHandler+0x46>
 80016e6:	4620      	mov	r0, r4
 80016e8:	f000 f8c0 	bl	800186c <HAL_TIM_IC_CaptureCallback>
 80016ec:	e005      	b.n	80016fa <HAL_TIM_IRQHandler+0x52>
 80016ee:	4620      	mov	r0, r4
 80016f0:	f000 f8bd 	bl	800186e <HAL_TIM_OC_DelayElapsedCallback>
 80016f4:	4620      	mov	r0, r4
 80016f6:	f000 f8bb 	bl	8001870 <HAL_TIM_PWM_PulseFinishedCallback>
 80016fa:	2000      	movs	r0, #0
 80016fc:	f844 0e1c 	strt	r0, [r4, #28]
 8001700:	6820      	ldr	r0, [r4, #0]
 8001702:	6901      	ldr	r1, [r0, #16]
 8001704:	f011 0f04 	tst.w	r1, #4
 8001708:	bf1c      	itt	ne
 800170a:	68c1      	ldrne	r1, [r0, #12]
 800170c:	f011 0f04 	tstne.w	r1, #4
 8001710:	d018      	beq.n	8001744 <HAL_TIM_IRQHandler+0x9c>
 8001712:	f06f 0104 	mvn.w	r1, #4
 8001716:	f840 1e10 	strt	r1, [r0, #16]
 800171a:	2102      	movs	r1, #2
 800171c:	f844 1e1c 	strt	r1, [r4, #28]
 8001720:	6980      	ldr	r0, [r0, #24]
 8001722:	f410 7f40 	tst.w	r0, #768	; 0x300
 8001726:	d003      	beq.n	8001730 <HAL_TIM_IRQHandler+0x88>
 8001728:	4620      	mov	r0, r4
 800172a:	f000 f89f 	bl	800186c <HAL_TIM_IC_CaptureCallback>
 800172e:	e005      	b.n	800173c <HAL_TIM_IRQHandler+0x94>
 8001730:	4620      	mov	r0, r4
 8001732:	f000 f89c 	bl	800186e <HAL_TIM_OC_DelayElapsedCallback>
 8001736:	4620      	mov	r0, r4
 8001738:	f000 f89a 	bl	8001870 <HAL_TIM_PWM_PulseFinishedCallback>
 800173c:	2000      	movs	r0, #0
 800173e:	f844 0e1c 	strt	r0, [r4, #28]
 8001742:	6820      	ldr	r0, [r4, #0]
 8001744:	6901      	ldr	r1, [r0, #16]
 8001746:	f011 0f08 	tst.w	r1, #8
 800174a:	bf1c      	itt	ne
 800174c:	68c1      	ldrne	r1, [r0, #12]
 800174e:	f011 0f08 	tstne.w	r1, #8
 8001752:	d018      	beq.n	8001786 <HAL_TIM_IRQHandler+0xde>
 8001754:	f06f 0108 	mvn.w	r1, #8
 8001758:	f840 1e10 	strt	r1, [r0, #16]
 800175c:	2104      	movs	r1, #4
 800175e:	f844 1e1c 	strt	r1, [r4, #28]
 8001762:	69c0      	ldr	r0, [r0, #28]
 8001764:	f010 0f03 	tst.w	r0, #3
 8001768:	d003      	beq.n	8001772 <HAL_TIM_IRQHandler+0xca>
 800176a:	4620      	mov	r0, r4
 800176c:	f000 f87e 	bl	800186c <HAL_TIM_IC_CaptureCallback>
 8001770:	e005      	b.n	800177e <HAL_TIM_IRQHandler+0xd6>
 8001772:	4620      	mov	r0, r4
 8001774:	f000 f87b 	bl	800186e <HAL_TIM_OC_DelayElapsedCallback>
 8001778:	4620      	mov	r0, r4
 800177a:	f000 f879 	bl	8001870 <HAL_TIM_PWM_PulseFinishedCallback>
 800177e:	2000      	movs	r0, #0
 8001780:	f844 0e1c 	strt	r0, [r4, #28]
 8001784:	6820      	ldr	r0, [r4, #0]
 8001786:	6901      	ldr	r1, [r0, #16]
 8001788:	f011 0f10 	tst.w	r1, #16
 800178c:	bf1c      	itt	ne
 800178e:	68c1      	ldrne	r1, [r0, #12]
 8001790:	f011 0f10 	tstne.w	r1, #16
 8001794:	d018      	beq.n	80017c8 <HAL_TIM_IRQHandler+0x120>
 8001796:	f06f 0110 	mvn.w	r1, #16
 800179a:	f840 1e10 	strt	r1, [r0, #16]
 800179e:	2108      	movs	r1, #8
 80017a0:	f844 1e1c 	strt	r1, [r4, #28]
 80017a4:	69c0      	ldr	r0, [r0, #28]
 80017a6:	f410 7f40 	tst.w	r0, #768	; 0x300
 80017aa:	d003      	beq.n	80017b4 <HAL_TIM_IRQHandler+0x10c>
 80017ac:	4620      	mov	r0, r4
 80017ae:	f000 f85d 	bl	800186c <HAL_TIM_IC_CaptureCallback>
 80017b2:	e005      	b.n	80017c0 <HAL_TIM_IRQHandler+0x118>
 80017b4:	4620      	mov	r0, r4
 80017b6:	f000 f85a 	bl	800186e <HAL_TIM_OC_DelayElapsedCallback>
 80017ba:	4620      	mov	r0, r4
 80017bc:	f000 f858 	bl	8001870 <HAL_TIM_PWM_PulseFinishedCallback>
 80017c0:	2000      	movs	r0, #0
 80017c2:	f844 0e1c 	strt	r0, [r4, #28]
 80017c6:	6820      	ldr	r0, [r4, #0]
 80017c8:	6901      	ldr	r1, [r0, #16]
 80017ca:	f011 0f01 	tst.w	r1, #1
 80017ce:	bf1c      	itt	ne
 80017d0:	68c1      	ldrne	r1, [r0, #12]
 80017d2:	f011 0f01 	tstne.w	r1, #1
 80017d6:	d007      	beq.n	80017e8 <HAL_TIM_IRQHandler+0x140>
 80017d8:	f06f 0101 	mvn.w	r1, #1
 80017dc:	f840 1e10 	strt	r1, [r0, #16]
 80017e0:	4620      	mov	r0, r4
 80017e2:	f000 f898 	bl	8001916 <HAL_TIM_PeriodElapsedCallback>
 80017e6:	6820      	ldr	r0, [r4, #0]
 80017e8:	6901      	ldr	r1, [r0, #16]
 80017ea:	f011 0f80 	tst.w	r1, #128	; 0x80
 80017ee:	bf1c      	itt	ne
 80017f0:	68c1      	ldrne	r1, [r0, #12]
 80017f2:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80017f6:	d007      	beq.n	8001808 <HAL_TIM_IRQHandler+0x160>
 80017f8:	f06f 0180 	mvn.w	r1, #128	; 0x80
 80017fc:	f840 1e10 	strt	r1, [r0, #16]
 8001800:	4620      	mov	r0, r4
 8001802:	f000 f838 	bl	8001876 <HAL_TIMEx_BreakCallback>
 8001806:	6820      	ldr	r0, [r4, #0]
 8001808:	6901      	ldr	r1, [r0, #16]
 800180a:	f411 7f80 	tst.w	r1, #256	; 0x100
 800180e:	bf1c      	itt	ne
 8001810:	68c1      	ldrne	r1, [r0, #12]
 8001812:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001816:	d007      	beq.n	8001828 <HAL_TIM_IRQHandler+0x180>
 8001818:	f46f 7180 	mvn.w	r1, #256	; 0x100
 800181c:	f840 1e10 	strt	r1, [r0, #16]
 8001820:	4620      	mov	r0, r4
 8001822:	f000 f829 	bl	8001878 <HAL_TIMEx_Break2Callback>
 8001826:	6820      	ldr	r0, [r4, #0]
 8001828:	6901      	ldr	r1, [r0, #16]
 800182a:	f011 0f40 	tst.w	r1, #64	; 0x40
 800182e:	bf1c      	itt	ne
 8001830:	68c1      	ldrne	r1, [r0, #12]
 8001832:	f011 0f40 	tstne.w	r1, #64	; 0x40
 8001836:	d007      	beq.n	8001848 <HAL_TIM_IRQHandler+0x1a0>
 8001838:	f06f 0140 	mvn.w	r1, #64	; 0x40
 800183c:	f840 1e10 	strt	r1, [r0, #16]
 8001840:	4620      	mov	r0, r4
 8001842:	f000 f816 	bl	8001872 <HAL_TIM_TriggerCallback>
 8001846:	6820      	ldr	r0, [r4, #0]
 8001848:	6901      	ldr	r1, [r0, #16]
 800184a:	f011 0f20 	tst.w	r1, #32
 800184e:	bf1c      	itt	ne
 8001850:	68c1      	ldrne	r1, [r0, #12]
 8001852:	f011 0f20 	tstne.w	r1, #32
 8001856:	d100      	bne.n	800185a <HAL_TIM_IRQHandler+0x1b2>
 8001858:	bdd0      	pop	{r4, r6, r7, pc}
 800185a:	f06f 0120 	mvn.w	r1, #32
 800185e:	f840 1e10 	strt	r1, [r0, #16]
 8001862:	4620      	mov	r0, r4
 8001864:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001868:	f000 b804 	b.w	8001874 <HAL_TIMEx_CommutationCallback>

0800186c <HAL_TIM_IC_CaptureCallback>:
 800186c:	4770      	bx	lr

0800186e <HAL_TIM_OC_DelayElapsedCallback>:
 800186e:	4770      	bx	lr

08001870 <HAL_TIM_PWM_PulseFinishedCallback>:
 8001870:	4770      	bx	lr

08001872 <HAL_TIM_TriggerCallback>:
 8001872:	4770      	bx	lr

08001874 <HAL_TIMEx_CommutationCallback>:
 8001874:	4770      	bx	lr

08001876 <HAL_TIMEx_BreakCallback>:
 8001876:	4770      	bx	lr

08001878 <HAL_TIMEx_Break2Callback>:
 8001878:	4770      	bx	lr

0800187a <HAL_InitTick>:
 800187a:	b5b0      	push	{r4, r5, r7, lr}
 800187c:	af02      	add	r7, sp, #8
 800187e:	b086      	sub	sp, #24
 8001880:	4601      	mov	r1, r0
 8001882:	2036      	movs	r0, #54	; 0x36
 8001884:	2200      	movs	r2, #0
 8001886:	2400      	movs	r4, #0
 8001888:	f7ff fc5d 	bl	8001146 <HAL_NVIC_SetPriority>
 800188c:	2036      	movs	r0, #54	; 0x36
 800188e:	f7ff fc8d 	bl	80011ac <HAL_NVIC_EnableIRQ>
 8001892:	f241 0058 	movw	r0, #4184	; 0x1058
 8001896:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800189a:	6801      	ldr	r1, [r0, #0]
 800189c:	f041 0110 	orr.w	r1, r1, #16
 80018a0:	6001      	str	r1, [r0, #0]
 80018a2:	4669      	mov	r1, sp
 80018a4:	6800      	ldr	r0, [r0, #0]
 80018a6:	f000 0010 	and.w	r0, r0, #16
 80018aa:	9001      	str	r0, [sp, #4]
 80018ac:	9801      	ldr	r0, [sp, #4]
 80018ae:	a801      	add	r0, sp, #4
 80018b0:	f7ff fe21 	bl	80014f6 <HAL_RCC_GetClockConfig>
 80018b4:	9d04      	ldr	r5, [sp, #16]
 80018b6:	f7ff fdf4 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 80018ba:	2d00      	cmp	r5, #0
 80018bc:	f640 21bc 	movw	r1, #2748	; 0xabc
 80018c0:	f241 0200 	movw	r2, #4096	; 0x1000
 80018c4:	f240 33e7 	movw	r3, #999	; 0x3e7
 80018c8:	bf18      	it	ne
 80018ca:	2501      	movne	r5, #1
 80018cc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80018d0:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80018d4:	40a8      	lsls	r0, r5
 80018d6:	f64d 6583 	movw	r5, #56963	; 0xde83
 80018da:	618c      	str	r4, [r1, #24]
 80018dc:	f2c4 351b 	movt	r5, #17179	; 0x431b
 80018e0:	fba0 0505 	umull	r0, r5, r0, r5
 80018e4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80018e8:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 80018ec:	e9c1 2000 	strd	r2, r0, [r1]
 80018f0:	4608      	mov	r0, r1
 80018f2:	e9c1 4302 	strd	r4, r3, [r1, #8]
 80018f6:	610c      	str	r4, [r1, #16]
 80018f8:	f7ff fe1e 	bl	8001538 <HAL_TIM_Base_Init>
 80018fc:	2800      	cmp	r0, #0
 80018fe:	bf1e      	ittt	ne
 8001900:	2001      	movne	r0, #1
 8001902:	b006      	addne	sp, #24
 8001904:	bdb0      	popne	{r4, r5, r7, pc}
 8001906:	f640 20bc 	movw	r0, #2748	; 0xabc
 800190a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800190e:	f7ff feb4 	bl	800167a <HAL_TIM_Base_Start_IT>
 8001912:	b006      	add	sp, #24
 8001914:	bdb0      	pop	{r4, r5, r7, pc}

08001916 <HAL_TIM_PeriodElapsedCallback>:
 8001916:	f7ff bbf7 	b.w	8001108 <HAL_IncTick>

0800191a <TIM6_DAC_IRQHandler>:
 800191a:	f640 20bc 	movw	r0, #2748	; 0xabc
 800191e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001922:	f7ff bec1 	b.w	80016a8 <HAL_TIM_IRQHandler>

08001926 <HAL_UART_Init>:
 8001926:	b084      	sub	sp, #16
 8001928:	f84d 4e00 	strt	r4, [sp]
 800192c:	f84d 6e04 	strt	r6, [sp, #4]
 8001930:	f84d 7e08 	strt	r7, [sp, #8]
 8001934:	f84d ee0c 	strt	lr, [sp, #12]
 8001938:	af02      	add	r7, sp, #8
 800193a:	4604      	mov	r4, r0
 800193c:	b1ac      	cbz	r4, 800196a <HAL_UART_Init+0x44>
 800193e:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001940:	b928      	cbnz	r0, 800194e <HAL_UART_Init+0x28>
 8001942:	2000      	movs	r0, #0
 8001944:	f844 0e70 	strt	r0, [r4, #112]
 8001948:	4620      	mov	r0, r4
 800194a:	f000 f82b 	bl	80019a4 <HAL_UART_MspInit>
 800194e:	2024      	movs	r0, #36	; 0x24
 8001950:	f844 0e74 	strt	r0, [r4, #116]
 8001954:	6820      	ldr	r0, [r4, #0]
 8001956:	6801      	ldr	r1, [r0, #0]
 8001958:	f021 0101 	bic.w	r1, r1, #1
 800195c:	f840 1e00 	strt	r1, [r0]
 8001960:	4620      	mov	r0, r4
 8001962:	f000 f821 	bl	80019a8 <UART_SetConfig>
 8001966:	2801      	cmp	r0, #1
 8001968:	d101      	bne.n	800196e <HAL_UART_Init+0x48>
 800196a:	2001      	movs	r0, #1
 800196c:	bdd0      	pop	{r4, r6, r7, pc}
 800196e:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8001970:	2800      	cmp	r0, #0
 8001972:	bf1c      	itt	ne
 8001974:	4620      	movne	r0, r4
 8001976:	f000 f956 	blne	8001c26 <UART_AdvFeatureConfig>
 800197a:	6820      	ldr	r0, [r4, #0]
 800197c:	6841      	ldr	r1, [r0, #4]
 800197e:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 8001982:	f840 1e04 	strt	r1, [r0, #4]
 8001986:	6881      	ldr	r1, [r0, #8]
 8001988:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 800198c:	f840 1e08 	strt	r1, [r0, #8]
 8001990:	6801      	ldr	r1, [r0, #0]
 8001992:	f041 0101 	orr.w	r1, r1, #1
 8001996:	f840 1e00 	strt	r1, [r0]
 800199a:	4620      	mov	r0, r4
 800199c:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 80019a0:	f000 b9b7 	b.w	8001d12 <UART_CheckIdleState>

080019a4 <HAL_UART_MspInit>:
 80019a4:	4770      	bx	lr
	...

080019a8 <UART_SetConfig>:
 80019a8:	b084      	sub	sp, #16
 80019aa:	f84d 4e00 	strt	r4, [sp]
 80019ae:	f84d 5e04 	strt	r5, [sp, #4]
 80019b2:	f84d 7e08 	strt	r7, [sp, #8]
 80019b6:	f84d ee0c 	strt	lr, [sp, #12]
 80019ba:	af02      	add	r7, sp, #8
 80019bc:	4604      	mov	r4, r0
 80019be:	f646 15f3 	movw	r5, #27123	; 0x69f3
 80019c2:	f248 0e00 	movw	lr, #32768	; 0x8000
 80019c6:	f241 0c88 	movw	ip, #4232	; 0x1088
 80019ca:	6821      	ldr	r1, [r4, #0]
 80019cc:	68a0      	ldr	r0, [r4, #8]
 80019ce:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 80019d2:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 80019d6:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 80019da:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 80019de:	4310      	orrs	r0, r2
 80019e0:	69e2      	ldr	r2, [r4, #28]
 80019e2:	4571      	cmp	r1, lr
 80019e4:	ea40 0003 	orr.w	r0, r0, r3
 80019e8:	680b      	ldr	r3, [r1, #0]
 80019ea:	ea40 0002 	orr.w	r0, r0, r2
 80019ee:	ea03 0305 	and.w	r3, r3, r5
 80019f2:	f04f 0510 	mov.w	r5, #16
 80019f6:	ea40 0003 	orr.w	r0, r0, r3
 80019fa:	f841 0e00 	strt	r0, [r1]
 80019fe:	6848      	ldr	r0, [r1, #4]
 8001a00:	68e3      	ldr	r3, [r4, #12]
 8001a02:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001a06:	ea40 0003 	orr.w	r0, r0, r3
 8001a0a:	f841 0e04 	strt	r0, [r1, #4]
 8001a0e:	69a0      	ldr	r0, [r4, #24]
 8001a10:	bf1c      	itt	ne
 8001a12:	6a23      	ldrne	r3, [r4, #32]
 8001a14:	4318      	orrne	r0, r3
 8001a16:	688b      	ldr	r3, [r1, #8]
 8001a18:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001a1c:	4318      	orrs	r0, r3
 8001a1e:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001a22:	f841 0e08 	strt	r0, [r1, #8]
 8001a26:	f242 4000 	movw	r0, #9216	; 0x2400
 8001a2a:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a2e:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001a32:	4299      	cmp	r1, r3
 8001a34:	dc15      	bgt.n	8001a62 <UART_SetConfig+0xba>
 8001a36:	f244 4300 	movw	r3, #17408	; 0x4400
 8001a3a:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a3e:	4299      	cmp	r1, r3
 8001a40:	d024      	beq.n	8001a8c <UART_SetConfig+0xe4>
 8001a42:	f644 0300 	movw	r3, #18432	; 0x4800
 8001a46:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a4a:	4299      	cmp	r1, r3
 8001a4c:	d022      	beq.n	8001a94 <UART_SetConfig+0xec>
 8001a4e:	f644 4300 	movw	r3, #19456	; 0x4c00
 8001a52:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a56:	4299      	cmp	r1, r3
 8001a58:	d131      	bne.n	8001abe <UART_SetConfig+0x116>
 8001a5a:	f8dc 3000 	ldr.w	r3, [ip]
 8001a5e:	099d      	lsrs	r5, r3, #6
 8001a60:	e023      	b.n	8001aaa <UART_SetConfig+0x102>
 8001a62:	f245 0300 	movw	r3, #20480	; 0x5000
 8001a66:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a6a:	4299      	cmp	r1, r3
 8001a6c:	d016      	beq.n	8001a9c <UART_SetConfig+0xf4>
 8001a6e:	4571      	cmp	r1, lr
 8001a70:	d018      	beq.n	8001aa4 <UART_SetConfig+0xfc>
 8001a72:	f643 0300 	movw	r3, #14336	; 0x3800
 8001a76:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001a7a:	4299      	cmp	r1, r3
 8001a7c:	d11f      	bne.n	8001abe <UART_SetConfig+0x116>
 8001a7e:	f8dc 5000 	ldr.w	r5, [ip]
 8001a82:	f247 7390 	movw	r3, #30608	; 0x7790
 8001a86:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a8a:	e012      	b.n	8001ab2 <UART_SetConfig+0x10a>
 8001a8c:	f8dc 3000 	ldr.w	r3, [ip]
 8001a90:	089d      	lsrs	r5, r3, #2
 8001a92:	e00a      	b.n	8001aaa <UART_SetConfig+0x102>
 8001a94:	f8dc 3000 	ldr.w	r3, [ip]
 8001a98:	091d      	lsrs	r5, r3, #4
 8001a9a:	e006      	b.n	8001aaa <UART_SetConfig+0x102>
 8001a9c:	f8dc 3000 	ldr.w	r3, [ip]
 8001aa0:	0a1d      	lsrs	r5, r3, #8
 8001aa2:	e002      	b.n	8001aaa <UART_SetConfig+0x102>
 8001aa4:	f8dc 3000 	ldr.w	r3, [ip]
 8001aa8:	0a9d      	lsrs	r5, r3, #10
 8001aaa:	f247 73a0 	movw	r3, #30624	; 0x77a0
 8001aae:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001ab2:	f005 0503 	and.w	r5, r5, #3
 8001ab6:	f085 0502 	eor.w	r5, r5, #2
 8001aba:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001abe:	4571      	cmp	r1, lr
 8001ac0:	d012      	beq.n	8001ae8 <UART_SetConfig+0x140>
 8001ac2:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001ac6:	d11d      	bne.n	8001b04 <UART_SetConfig+0x15c>
 8001ac8:	f005 001f 	and.w	r0, r5, #31
 8001acc:	2101      	movs	r1, #1
 8001ace:	2808      	cmp	r0, #8
 8001ad0:	f200 80a0 	bhi.w	8001c14 <UART_SetConfig+0x26c>
 8001ad4:	e8df f000 	tbb	[pc, r0]
 8001ad8:	9e434005 	.word	0x9e434005
 8001adc:	9e9e9e49 	.word	0x9e9e9e49
 8001ae0:	004f      	.short	0x004f
 8001ae2:	f7ff fcde 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 8001ae6:	e042      	b.n	8001b6e <UART_SetConfig+0x1c6>
 8001ae8:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001aec:	2101      	movs	r1, #1
 8001aee:	2d04      	cmp	r5, #4
 8001af0:	f200 8090 	bhi.w	8001c14 <UART_SetConfig+0x26c>
 8001af4:	e8df f005 	tbb	[pc, r5]
 8001af8:	8e161c03 	.word	0x8e161c03
 8001afc:	001a      	.short	0x001a
 8001afe:	f7ff fcd0 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 8001b02:	e011      	b.n	8001b28 <UART_SetConfig+0x180>
 8001b04:	f005 021f 	and.w	r2, r5, #31
 8001b08:	2101      	movs	r1, #1
 8001b0a:	2a08      	cmp	r2, #8
 8001b0c:	f200 8082 	bhi.w	8001c14 <UART_SetConfig+0x26c>
 8001b10:	e8df f002 	tbb	[pc, r2]
 8001b14:	80464305 	.word	0x80464305
 8001b18:	80808048 	.word	0x80808048
 8001b1c:	004e      	.short	0x004e
 8001b1e:	f7ff fcc0 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 8001b22:	e041      	b.n	8001ba8 <UART_SetConfig+0x200>
 8001b24:	f7ff fc5a 	bl	80013dc <HAL_RCC_GetSysClockFreq>
 8001b28:	b910      	cbnz	r0, 8001b30 <UART_SetConfig+0x188>
 8001b2a:	e072      	b.n	8001c12 <UART_SetConfig+0x26a>
 8001b2c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b30:	6862      	ldr	r2, [r4, #4]
 8001b32:	2101      	movs	r1, #1
 8001b34:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001b38:	4298      	cmp	r0, r3
 8001b3a:	d36b      	bcc.n	8001c14 <UART_SetConfig+0x26c>
 8001b3c:	0313      	lsls	r3, r2, #12
 8001b3e:	4298      	cmp	r0, r3
 8001b40:	bf9c      	itt	ls
 8001b42:	2101      	movls	r1, #1
 8001b44:	2d04      	cmpls	r5, #4
 8001b46:	d865      	bhi.n	8001c14 <UART_SetConfig+0x26c>
 8001b48:	e8df f005 	tbb	[pc, r5]
 8001b4c:	64453e03 	.word	0x64453e03
 8001b50:	0052      	.short	0x0052
 8001b52:	f7ff fca6 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 8001b56:	e040      	b.n	8001bda <UART_SetConfig+0x232>
 8001b58:	f7ff fcb8 	bl	80014cc <HAL_RCC_GetPCLK2Freq>
 8001b5c:	e007      	b.n	8001b6e <UART_SetConfig+0x1c6>
 8001b5e:	6861      	ldr	r1, [r4, #4]
 8001b60:	f644 0200 	movw	r2, #18432	; 0x4800
 8001b64:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001b68:	e008      	b.n	8001b7c <UART_SetConfig+0x1d4>
 8001b6a:	f7ff fc37 	bl	80013dc <HAL_RCC_GetSysClockFreq>
 8001b6e:	6861      	ldr	r1, [r4, #4]
 8001b70:	0040      	lsls	r0, r0, #1
 8001b72:	084a      	lsrs	r2, r1, #1
 8001b74:	e003      	b.n	8001b7e <UART_SetConfig+0x1d6>
 8001b76:	6861      	ldr	r1, [r4, #4]
 8001b78:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001b7c:	0848      	lsrs	r0, r1, #1
 8001b7e:	4410      	add	r0, r2
 8001b80:	fbb0 f0f1 	udiv	r0, r0, r1
 8001b84:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001b88:	4001      	ands	r1, r0
 8001b8a:	2910      	cmp	r1, #16
 8001b8c:	d303      	bcc.n	8001b96 <UART_SetConfig+0x1ee>
 8001b8e:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001b92:	4308      	orrs	r0, r1
 8001b94:	e03a      	b.n	8001c0c <UART_SetConfig+0x264>
 8001b96:	2101      	movs	r1, #1
 8001b98:	e03c      	b.n	8001c14 <UART_SetConfig+0x26c>
 8001b9a:	f7ff fc97 	bl	80014cc <HAL_RCC_GetPCLK2Freq>
 8001b9e:	e003      	b.n	8001ba8 <UART_SetConfig+0x200>
 8001ba0:	6862      	ldr	r2, [r4, #4]
 8001ba2:	e008      	b.n	8001bb6 <UART_SetConfig+0x20e>
 8001ba4:	f7ff fc1a 	bl	80013dc <HAL_RCC_GetSysClockFreq>
 8001ba8:	6862      	ldr	r2, [r4, #4]
 8001baa:	4601      	mov	r1, r0
 8001bac:	0850      	lsrs	r0, r2, #1
 8001bae:	e003      	b.n	8001bb8 <UART_SetConfig+0x210>
 8001bb0:	6862      	ldr	r2, [r4, #4]
 8001bb2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001bb6:	0851      	lsrs	r1, r2, #1
 8001bb8:	4408      	add	r0, r1
 8001bba:	fbb0 f0f2 	udiv	r0, r0, r2
 8001bbe:	b280      	uxth	r0, r0
 8001bc0:	2810      	cmp	r0, #16
 8001bc2:	d223      	bcs.n	8001c0c <UART_SetConfig+0x264>
 8001bc4:	2101      	movs	r1, #1
 8001bc6:	e025      	b.n	8001c14 <UART_SetConfig+0x26c>
 8001bc8:	2000      	movs	r0, #0
 8001bca:	2100      	movs	r1, #0
 8001bcc:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001bd0:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001bd4:	e006      	b.n	8001be4 <UART_SetConfig+0x23c>
 8001bd6:	f7ff fc01 	bl	80013dc <HAL_RCC_GetSysClockFreq>
 8001bda:	6862      	ldr	r2, [r4, #4]
 8001bdc:	0e01      	lsrs	r1, r0, #24
 8001bde:	0853      	lsrs	r3, r2, #1
 8001be0:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001be4:	f141 0100 	adc.w	r1, r1, #0
 8001be8:	2300      	movs	r3, #0
 8001bea:	f7fe fb09 	bl	8000200 <__aeabi_uldivmod>
 8001bee:	e005      	b.n	8001bfc <UART_SetConfig+0x254>
 8001bf0:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001bf4:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001bf8:	fbb0 f0f2 	udiv	r0, r0, r2
 8001bfc:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001c00:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001c04:	f2c0 020f 	movt	r2, #15
 8001c08:	4291      	cmp	r1, r2
 8001c0a:	d80a      	bhi.n	8001c22 <UART_SetConfig+0x27a>
 8001c0c:	6821      	ldr	r1, [r4, #0]
 8001c0e:	f841 0e0c 	strt	r0, [r1, #12]
 8001c12:	2100      	movs	r1, #0
 8001c14:	2000      	movs	r0, #0
 8001c16:	f844 0e60 	strt	r0, [r4, #96]
 8001c1a:	f844 0e64 	strt	r0, [r4, #100]
 8001c1e:	4608      	mov	r0, r1
 8001c20:	bdb0      	pop	{r4, r5, r7, pc}
 8001c22:	2101      	movs	r1, #1
 8001c24:	e7f6      	b.n	8001c14 <UART_SetConfig+0x26c>

08001c26 <UART_AdvFeatureConfig>:
 8001c26:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001c28:	f011 0f01 	tst.w	r1, #1
 8001c2c:	d009      	beq.n	8001c42 <UART_AdvFeatureConfig+0x1c>
 8001c2e:	6802      	ldr	r2, [r0, #0]
 8001c30:	6853      	ldr	r3, [r2, #4]
 8001c32:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001c36:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001c3a:	ea43 030c 	orr.w	r3, r3, ip
 8001c3e:	f842 3e04 	strt	r3, [r2, #4]
 8001c42:	078a      	lsls	r2, r1, #30
 8001c44:	d509      	bpl.n	8001c5a <UART_AdvFeatureConfig+0x34>
 8001c46:	6802      	ldr	r2, [r0, #0]
 8001c48:	6853      	ldr	r3, [r2, #4]
 8001c4a:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001c4e:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001c52:	ea43 030c 	orr.w	r3, r3, ip
 8001c56:	f842 3e04 	strt	r3, [r2, #4]
 8001c5a:	074a      	lsls	r2, r1, #29
 8001c5c:	d509      	bpl.n	8001c72 <UART_AdvFeatureConfig+0x4c>
 8001c5e:	6802      	ldr	r2, [r0, #0]
 8001c60:	6853      	ldr	r3, [r2, #4]
 8001c62:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001c66:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001c6a:	ea43 030c 	orr.w	r3, r3, ip
 8001c6e:	f842 3e04 	strt	r3, [r2, #4]
 8001c72:	070a      	lsls	r2, r1, #28
 8001c74:	d509      	bpl.n	8001c8a <UART_AdvFeatureConfig+0x64>
 8001c76:	6802      	ldr	r2, [r0, #0]
 8001c78:	6853      	ldr	r3, [r2, #4]
 8001c7a:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001c7e:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001c82:	ea43 030c 	orr.w	r3, r3, ip
 8001c86:	f842 3e04 	strt	r3, [r2, #4]
 8001c8a:	06ca      	lsls	r2, r1, #27
 8001c8c:	d509      	bpl.n	8001ca2 <UART_AdvFeatureConfig+0x7c>
 8001c8e:	6802      	ldr	r2, [r0, #0]
 8001c90:	6893      	ldr	r3, [r2, #8]
 8001c92:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001c96:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001c9a:	ea43 030c 	orr.w	r3, r3, ip
 8001c9e:	f842 3e08 	strt	r3, [r2, #8]
 8001ca2:	068a      	lsls	r2, r1, #26
 8001ca4:	d509      	bpl.n	8001cba <UART_AdvFeatureConfig+0x94>
 8001ca6:	6802      	ldr	r2, [r0, #0]
 8001ca8:	6893      	ldr	r3, [r2, #8]
 8001caa:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001cae:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001cb2:	ea43 030c 	orr.w	r3, r3, ip
 8001cb6:	f842 3e08 	strt	r3, [r2, #8]
 8001cba:	b082      	sub	sp, #8
 8001cbc:	f84d 7e00 	strt	r7, [sp]
 8001cc0:	f84d ee04 	strt	lr, [sp, #4]
 8001cc4:	466f      	mov	r7, sp
 8001cc6:	064a      	lsls	r2, r1, #25
 8001cc8:	d515      	bpl.n	8001cf6 <UART_AdvFeatureConfig+0xd0>
 8001cca:	f8d0 e000 	ldr.w	lr, [r0]
 8001cce:	f8de c004 	ldr.w	ip, [lr, #4]
 8001cd2:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001cd4:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001cd8:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001cdc:	ea42 0203 	orr.w	r2, r2, r3
 8001ce0:	f84e 2e04 	strt	r2, [lr, #4]
 8001ce4:	d107      	bne.n	8001cf6 <UART_AdvFeatureConfig+0xd0>
 8001ce6:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001cea:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001cec:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001cf0:	431a      	orrs	r2, r3
 8001cf2:	f84e 2e04 	strt	r2, [lr, #4]
 8001cf6:	0609      	lsls	r1, r1, #24
 8001cf8:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001cfc:	bf58      	it	pl
 8001cfe:	4770      	bxpl	lr
 8001d00:	6801      	ldr	r1, [r0, #0]
 8001d02:	684a      	ldr	r2, [r1, #4]
 8001d04:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001d06:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001d0a:	4310      	orrs	r0, r2
 8001d0c:	f841 0e04 	strt	r0, [r1, #4]
 8001d10:	4770      	bx	lr

08001d12 <UART_CheckIdleState>:
 8001d12:	b085      	sub	sp, #20
 8001d14:	f84d 4e00 	strt	r4, [sp]
 8001d18:	f84d 5e04 	strt	r5, [sp, #4]
 8001d1c:	f84d 6e08 	strt	r6, [sp, #8]
 8001d20:	f84d 7e0c 	strt	r7, [sp, #12]
 8001d24:	f84d ee10 	strt	lr, [sp, #16]
 8001d28:	af03      	add	r7, sp, #12
 8001d2a:	b081      	sub	sp, #4
 8001d2c:	f84d be00 	strt	fp, [sp]
 8001d30:	4604      	mov	r4, r0
 8001d32:	2000      	movs	r0, #0
 8001d34:	f844 0e7c 	strt	r0, [r4, #124]
 8001d38:	f7ff f9ef 	bl	800111a <HAL_GetTick>
 8001d3c:	4605      	mov	r5, r0
 8001d3e:	6820      	ldr	r0, [r4, #0]
 8001d40:	6801      	ldr	r1, [r0, #0]
 8001d42:	f011 0f08 	tst.w	r1, #8
 8001d46:	d00f      	beq.n	8001d68 <UART_CheckIdleState+0x56>
 8001d48:	69c1      	ldr	r1, [r0, #28]
 8001d4a:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d4e:	d10b      	bne.n	8001d68 <UART_CheckIdleState+0x56>
 8001d50:	2600      	movs	r6, #0
 8001d52:	f7ff f9e2 	bl	800111a <HAL_GetTick>
 8001d56:	1b41      	subs	r1, r0, r5
 8001d58:	6820      	ldr	r0, [r4, #0]
 8001d5a:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d5e:	d11b      	bne.n	8001d98 <UART_CheckIdleState+0x86>
 8001d60:	69c1      	ldr	r1, [r0, #28]
 8001d62:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d66:	d0f4      	beq.n	8001d52 <UART_CheckIdleState+0x40>
 8001d68:	6801      	ldr	r1, [r0, #0]
 8001d6a:	f011 0f04 	tst.w	r1, #4
 8001d6e:	d101      	bne.n	8001d74 <UART_CheckIdleState+0x62>
 8001d70:	2600      	movs	r6, #0
 8001d72:	e01c      	b.n	8001dae <UART_CheckIdleState+0x9c>
 8001d74:	69c0      	ldr	r0, [r0, #28]
 8001d76:	2600      	movs	r6, #0
 8001d78:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d7c:	d117      	bne.n	8001dae <UART_CheckIdleState+0x9c>
 8001d7e:	f7ff f9cc 	bl	800111a <HAL_GetTick>
 8001d82:	1b41      	subs	r1, r0, r5
 8001d84:	6820      	ldr	r0, [r4, #0]
 8001d86:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d8a:	d105      	bne.n	8001d98 <UART_CheckIdleState+0x86>
 8001d8c:	69c0      	ldr	r0, [r0, #28]
 8001d8e:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d92:	d0f4      	beq.n	8001d7e <UART_CheckIdleState+0x6c>
 8001d94:	2600      	movs	r6, #0
 8001d96:	e00a      	b.n	8001dae <UART_CheckIdleState+0x9c>
 8001d98:	6801      	ldr	r1, [r0, #0]
 8001d9a:	2603      	movs	r6, #3
 8001d9c:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001da0:	f840 1e00 	strt	r1, [r0]
 8001da4:	6881      	ldr	r1, [r0, #8]
 8001da6:	f021 0101 	bic.w	r1, r1, #1
 8001daa:	f840 1e08 	strt	r1, [r0, #8]
 8001dae:	2020      	movs	r0, #32
 8001db0:	f844 0e74 	strt	r0, [r4, #116]
 8001db4:	f844 0e78 	strt	r0, [r4, #120]
 8001db8:	2000      	movs	r0, #0
 8001dba:	f844 0e70 	strt	r0, [r4, #112]
 8001dbe:	4630      	mov	r0, r6
 8001dc0:	f85d bb04 	ldr.w	fp, [sp], #4
 8001dc4:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001dc6 <HAL_UART_Transmit>:
 8001dc6:	b085      	sub	sp, #20
 8001dc8:	f84d 4e00 	strt	r4, [sp]
 8001dcc:	f84d 5e04 	strt	r5, [sp, #4]
 8001dd0:	f84d 6e08 	strt	r6, [sp, #8]
 8001dd4:	f84d 7e0c 	strt	r7, [sp, #12]
 8001dd8:	f84d ee10 	strt	lr, [sp, #16]
 8001ddc:	af03      	add	r7, sp, #12
 8001dde:	b084      	sub	sp, #16
 8001de0:	f84d 8e00 	strt	r8, [sp]
 8001de4:	f84d 9e04 	strt	r9, [sp, #4]
 8001de8:	f84d ae08 	strt	sl, [sp, #8]
 8001dec:	f84d be0c 	strt	fp, [sp, #12]
 8001df0:	b081      	sub	sp, #4
 8001df2:	4604      	mov	r4, r0
 8001df4:	461d      	mov	r5, r3
 8001df6:	4616      	mov	r6, r2
 8001df8:	4689      	mov	r9, r1
 8001dfa:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001dfc:	2820      	cmp	r0, #32
 8001dfe:	d109      	bne.n	8001e14 <HAL_UART_Transmit+0x4e>
 8001e00:	f1b9 0f00 	cmp.w	r9, #0
 8001e04:	f04f 0001 	mov.w	r0, #1
 8001e08:	bf18      	it	ne
 8001e0a:	2e00      	cmpne	r6, #0
 8001e0c:	d003      	beq.n	8001e16 <HAL_UART_Transmit+0x50>
 8001e0e:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001e10:	2801      	cmp	r0, #1
 8001e12:	d104      	bne.n	8001e1e <HAL_UART_Transmit+0x58>
 8001e14:	2002      	movs	r0, #2
 8001e16:	b001      	add	sp, #4
 8001e18:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001e1c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001e1e:	2001      	movs	r0, #1
 8001e20:	f844 0e70 	strt	r0, [r4, #112]
 8001e24:	2000      	movs	r0, #0
 8001e26:	f844 0e7c 	strt	r0, [r4, #124]
 8001e2a:	2021      	movs	r0, #33	; 0x21
 8001e2c:	f844 0e74 	strt	r0, [r4, #116]
 8001e30:	f7ff f973 	bl	800111a <HAL_GetTick>
 8001e34:	f824 6e50 	strht	r6, [r4, #80]
 8001e38:	f824 6e52 	strht	r6, [r4, #82]
 8001e3c:	4680      	mov	r8, r0
 8001e3e:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001e42:	f8d4 b000 	ldr.w	fp, [r4]
 8001e46:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001e4a:	2900      	cmp	r1, #0
 8001e4c:	d046      	beq.n	8001edc <HAL_UART_Transmit+0x116>
 8001e4e:	f105 0a01 	add.w	sl, r5, #1
 8001e52:	0600      	lsls	r0, r0, #24
 8001e54:	d410      	bmi.n	8001e78 <HAL_UART_Transmit+0xb2>
 8001e56:	465e      	mov	r6, fp
 8001e58:	f1ba 0f00 	cmp.w	sl, #0
 8001e5c:	d007      	beq.n	8001e6e <HAL_UART_Transmit+0xa8>
 8001e5e:	b345      	cbz	r5, 8001eb2 <HAL_UART_Transmit+0xec>
 8001e60:	f7ff f95b 	bl	800111a <HAL_GetTick>
 8001e64:	6826      	ldr	r6, [r4, #0]
 8001e66:	eba0 0008 	sub.w	r0, r0, r8
 8001e6a:	42a8      	cmp	r0, r5
 8001e6c:	d822      	bhi.n	8001eb4 <HAL_UART_Transmit+0xee>
 8001e6e:	69f0      	ldr	r0, [r6, #28]
 8001e70:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001e74:	d0f0      	beq.n	8001e58 <HAL_UART_Transmit+0x92>
 8001e76:	e000      	b.n	8001e7a <HAL_UART_Transmit+0xb4>
 8001e78:	465e      	mov	r6, fp
 8001e7a:	68a0      	ldr	r0, [r4, #8]
 8001e7c:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001e80:	bf04      	itt	eq
 8001e82:	6920      	ldreq	r0, [r4, #16]
 8001e84:	2800      	cmpeq	r0, #0
 8001e86:	d002      	beq.n	8001e8e <HAL_UART_Transmit+0xc8>
 8001e88:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001e8c:	e003      	b.n	8001e96 <HAL_UART_Transmit+0xd0>
 8001e8e:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001e92:	f36f 205f 	bfc	r0, #9, #23
 8001e96:	f826 0e28 	strht	r0, [r6, #40]
 8001e9a:	46b3      	mov	fp, r6
 8001e9c:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001ea0:	3801      	subs	r0, #1
 8001ea2:	f824 0e52 	strht	r0, [r4, #82]
 8001ea6:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001eaa:	69f0      	ldr	r0, [r6, #28]
 8001eac:	2900      	cmp	r1, #0
 8001eae:	d1d0      	bne.n	8001e52 <HAL_UART_Transmit+0x8c>
 8001eb0:	e015      	b.n	8001ede <HAL_UART_Transmit+0x118>
 8001eb2:	465e      	mov	r6, fp
 8001eb4:	6830      	ldr	r0, [r6, #0]
 8001eb6:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001eba:	f846 0e00 	strt	r0, [r6]
 8001ebe:	68b0      	ldr	r0, [r6, #8]
 8001ec0:	f020 0001 	bic.w	r0, r0, #1
 8001ec4:	f846 0e08 	strt	r0, [r6, #8]
 8001ec8:	2020      	movs	r0, #32
 8001eca:	f844 0e74 	strt	r0, [r4, #116]
 8001ece:	f844 0e78 	strt	r0, [r4, #120]
 8001ed2:	2000      	movs	r0, #0
 8001ed4:	f844 0e70 	strt	r0, [r4, #112]
 8001ed8:	2003      	movs	r0, #3
 8001eda:	e79c      	b.n	8001e16 <HAL_UART_Transmit+0x50>
 8001edc:	465e      	mov	r6, fp
 8001ede:	0640      	lsls	r0, r0, #25
 8001ee0:	d411      	bmi.n	8001f06 <HAL_UART_Transmit+0x140>
 8001ee2:	f105 0901 	add.w	r9, r5, #1
 8001ee6:	4630      	mov	r0, r6
 8001ee8:	f1b9 0f00 	cmp.w	r9, #0
 8001eec:	d007      	beq.n	8001efe <HAL_UART_Transmit+0x138>
 8001eee:	b18d      	cbz	r5, 8001f14 <HAL_UART_Transmit+0x14e>
 8001ef0:	f7ff f913 	bl	800111a <HAL_GetTick>
 8001ef4:	eba0 0108 	sub.w	r1, r0, r8
 8001ef8:	6820      	ldr	r0, [r4, #0]
 8001efa:	42a9      	cmp	r1, r5
 8001efc:	d80b      	bhi.n	8001f16 <HAL_UART_Transmit+0x150>
 8001efe:	69c1      	ldr	r1, [r0, #28]
 8001f00:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001f04:	d0f0      	beq.n	8001ee8 <HAL_UART_Transmit+0x122>
 8001f06:	2020      	movs	r0, #32
 8001f08:	f844 0e74 	strt	r0, [r4, #116]
 8001f0c:	2000      	movs	r0, #0
 8001f0e:	f844 0e70 	strt	r0, [r4, #112]
 8001f12:	e780      	b.n	8001e16 <HAL_UART_Transmit+0x50>
 8001f14:	4630      	mov	r0, r6
 8001f16:	6801      	ldr	r1, [r0, #0]
 8001f18:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001f1c:	f840 1e00 	strt	r1, [r0]
 8001f20:	6881      	ldr	r1, [r0, #8]
 8001f22:	f021 0101 	bic.w	r1, r1, #1
 8001f26:	f840 1e08 	strt	r1, [r0, #8]
 8001f2a:	e7cd      	b.n	8001ec8 <HAL_UART_Transmit+0x102>

08001f2c <BSP_COM_Init>:
 8001f2c:	b085      	sub	sp, #20
 8001f2e:	f84d 4e00 	strt	r4, [sp]
 8001f32:	f84d 5e04 	strt	r5, [sp, #4]
 8001f36:	f84d 6e08 	strt	r6, [sp, #8]
 8001f3a:	f84d 7e0c 	strt	r7, [sp, #12]
 8001f3e:	f84d ee10 	strt	lr, [sp, #16]
 8001f42:	af03      	add	r7, sp, #12
 8001f44:	b083      	sub	sp, #12
 8001f46:	f84d 8e00 	strt	r8, [sp]
 8001f4a:	f84d 9e04 	strt	r9, [sp, #4]
 8001f4e:	f84d be08 	strt	fp, [sp, #8]
 8001f52:	b086      	sub	sp, #24
 8001f54:	4605      	mov	r5, r0
 8001f56:	4688      	mov	r8, r1
 8001f58:	bb25      	cbnz	r5, 8001fa4 <BSP_COM_Init+0x78>
 8001f5a:	f241 004c 	movw	r0, #4172	; 0x104c
 8001f5e:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001f62:	6801      	ldr	r1, [r0, #0]
 8001f64:	f041 0102 	orr.w	r1, r1, #2
 8001f68:	f840 1e00 	strt	r1, [r0]
 8001f6c:	6801      	ldr	r1, [r0, #0]
 8001f6e:	f001 0102 	and.w	r1, r1, #2
 8001f72:	f84d 1e04 	strt	r1, [sp, #4]
 8001f76:	9901      	ldr	r1, [sp, #4]
 8001f78:	6801      	ldr	r1, [r0, #0]
 8001f7a:	f041 0102 	orr.w	r1, r1, #2
 8001f7e:	f840 1e00 	strt	r1, [r0]
 8001f82:	6801      	ldr	r1, [r0, #0]
 8001f84:	f001 0102 	and.w	r1, r1, #2
 8001f88:	f84d 1e04 	strt	r1, [sp, #4]
 8001f8c:	9901      	ldr	r1, [sp, #4]
 8001f8e:	6941      	ldr	r1, [r0, #20]
 8001f90:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001f94:	f840 1e14 	strt	r1, [r0, #20]
 8001f98:	6940      	ldr	r0, [r0, #20]
 8001f9a:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001f9e:	f84d 0e04 	strt	r0, [sp, #4]
 8001fa2:	9801      	ldr	r0, [sp, #4]
 8001fa4:	2040      	movs	r0, #64	; 0x40
 8001fa6:	2402      	movs	r4, #2
 8001fa8:	ae01      	add	r6, sp, #4
 8001faa:	f04f 0907 	mov.w	r9, #7
 8001fae:	f84d 0e04 	strt	r0, [sp, #4]
 8001fb2:	2000      	movs	r0, #0
 8001fb4:	f84d 4e08 	strt	r4, [sp, #8]
 8001fb8:	f84d 4e10 	strt	r4, [sp, #16]
 8001fbc:	4631      	mov	r1, r6
 8001fbe:	f84d 0e0c 	strt	r0, [sp, #12]
 8001fc2:	f240 000c 	movw	r0, #12
 8001fc6:	f84d 9e14 	strt	r9, [sp, #20]
 8001fca:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fce:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001fd2:	f7ff f8fb 	bl	80011cc <HAL_GPIO_Init>
 8001fd6:	2080      	movs	r0, #128	; 0x80
 8001fd8:	4631      	mov	r1, r6
 8001fda:	f84d 0e04 	strt	r0, [sp, #4]
 8001fde:	f84d 4e08 	strt	r4, [sp, #8]
 8001fe2:	f240 0010 	movw	r0, #16
 8001fe6:	f84d 9e14 	strt	r9, [sp, #20]
 8001fea:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fee:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001ff2:	f7ff f8eb 	bl	80011cc <HAL_GPIO_Init>
 8001ff6:	f240 0008 	movw	r0, #8
 8001ffa:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ffe:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8002002:	f848 0e00 	strt	r0, [r8]
 8002006:	4640      	mov	r0, r8
 8002008:	f7ff fc8d 	bl	8001926 <HAL_UART_Init>
 800200c:	b006      	add	sp, #24
 800200e:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8002012:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002014 <__io_putchar>:
 8002014:	b082      	sub	sp, #8
 8002016:	f84d 7e00 	strt	r7, [sp]
 800201a:	f84d ee04 	strt	lr, [sp, #4]
 800201e:	466f      	mov	r7, sp
 8002020:	b082      	sub	sp, #8
 8002022:	f84d 0e04 	strt	r0, [sp, #4]
 8002026:	f640 10e4 	movw	r0, #2532	; 0x9e4
 800202a:	a901      	add	r1, sp, #4
 800202c:	2201      	movs	r2, #1
 800202e:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002032:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002036:	f7ff fec6 	bl	8001dc6 <HAL_UART_Transmit>
 800203a:	9801      	ldr	r0, [sp, #4]
 800203c:	b002      	add	sp, #8
 800203e:	bd80      	pop	{r7, pc}

08002040 <main>:
 8002040:	b084      	sub	sp, #16
 8002042:	f84d 4e00 	strt	r4, [sp]
 8002046:	f84d 5e04 	strt	r5, [sp, #4]
 800204a:	f84d 7e08 	strt	r7, [sp, #8]
 800204e:	f84d ee0c 	strt	lr, [sp, #12]
 8002052:	af02      	add	r7, sp, #8
 8002054:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8002058:	f643 0000 	movw	r0, #14336	; 0x3800
 800205c:	220c      	movs	r2, #12
 800205e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002062:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002066:	f841 0e00 	strt	r0, [r1]
 800206a:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 800206e:	f841 0e04 	strt	r0, [r1, #4]
 8002072:	2000      	movs	r0, #0
 8002074:	f841 0e08 	strt	r0, [r1, #8]
 8002078:	f841 0e0c 	strt	r0, [r1, #12]
 800207c:	f841 0e10 	strt	r0, [r1, #16]
 8002080:	f841 0e24 	strt	r0, [r1, #36]
 8002084:	f841 0e1c 	strt	r0, [r1, #28]
 8002088:	f841 0e20 	strt	r0, [r1, #32]
 800208c:	f841 2e14 	strt	r2, [r1, #20]
 8002090:	f841 0e18 	strt	r0, [r1, #24]
 8002094:	2000      	movs	r0, #0
 8002096:	f7ff ff49 	bl	8001f2c <BSP_COM_Init>
 800209a:	f000 fb9e 	bl	80027da <initialise_benchmark>
 800209e:	f247 70b0 	movw	r0, #30640	; 0x77b0
 80020a2:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020a6:	f000 fcf3 	bl	8002a90 <printf>
 80020aa:	f647 005d 	movw	r0, #30813	; 0x785d
 80020ae:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020b2:	f000 fd4f 	bl	8002b54 <puts>
 80020b6:	f7ff f817 	bl	80010e8 <HAL_Init>
 80020ba:	f7ff f82e 	bl	800111a <HAL_GetTick>
 80020be:	4604      	mov	r4, r0
 80020c0:	f000 f81e 	bl	8002100 <benchmark>
 80020c4:	4605      	mov	r5, r0
 80020c6:	f7ff f828 	bl	800111a <HAL_GetTick>
 80020ca:	1b04      	subs	r4, r0, r4
 80020cc:	4628      	mov	r0, r5
 80020ce:	f000 fb98 	bl	8002802 <verify_benchmark>
 80020d2:	1c41      	adds	r1, r0, #1
 80020d4:	d006      	beq.n	80020e4 <main+0xa4>
 80020d6:	2801      	cmp	r0, #1
 80020d8:	d109      	bne.n	80020ee <main+0xae>
 80020da:	f247 70c9 	movw	r0, #30665	; 0x77c9
 80020de:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020e2:	e008      	b.n	80020f6 <main+0xb6>
 80020e4:	f247 70ed 	movw	r0, #30701	; 0x77ed
 80020e8:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020ec:	e003      	b.n	80020f6 <main+0xb6>
 80020ee:	f647 0022 	movw	r0, #30754	; 0x7822
 80020f2:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020f6:	4621      	mov	r1, r4
 80020f8:	f000 fcca 	bl	8002a90 <printf>
 80020fc:	2000      	movs	r0, #0
 80020fe:	bdb0      	pop	{r4, r5, r7, pc}

08002100 <benchmark>:
 8002100:	b085      	sub	sp, #20
 8002102:	f84d 4e00 	strt	r4, [sp]
 8002106:	f84d 5e04 	strt	r5, [sp, #4]
 800210a:	f84d 6e08 	strt	r6, [sp, #8]
 800210e:	f84d 7e0c 	strt	r7, [sp, #12]
 8002112:	f84d ee10 	strt	lr, [sp, #16]
 8002116:	af03      	add	r7, sp, #12
 8002118:	b084      	sub	sp, #16
 800211a:	f84d 8e00 	strt	r8, [sp]
 800211e:	f84d 9e04 	strt	r9, [sp, #4]
 8002122:	f84d ae08 	strt	sl, [sp, #8]
 8002126:	f84d be0c 	strt	fp, [sp, #12]
 800212a:	b08f      	sub	sp, #60	; 0x3c
 800212c:	f640 2070 	movw	r0, #2672	; 0xa70
 8002130:	2200      	movs	r2, #0
 8002132:	f04f 0a00 	mov.w	sl, #0
 8002136:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800213a:	7806      	ldrb	r6, [r0, #0]
 800213c:	f640 2078 	movw	r0, #2680	; 0xa78
 8002140:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002144:	2e00      	cmp	r6, #0
 8002146:	4631      	mov	r1, r6
 8002148:	bf1c      	itt	ne
 800214a:	f240 5173 	movwne	r1, #1395	; 0x573
 800214e:	f6cb 1133 	movtne	r1, #47411	; 0xb933
 8002152:	7805      	ldrb	r5, [r0, #0]
 8002154:	2d00      	cmp	r5, #0
 8002156:	462b      	mov	r3, r5
 8002158:	bf1c      	itt	ne
 800215a:	f647 73ef 	movwne	r3, #32751	; 0x7fef
 800215e:	f2c8 7323 	movtne	r3, #34595	; 0x8723
 8002162:	bf1c      	itt	ne
 8002164:	f243 7521 	movwne	r5, #14113	; 0x3721
 8002168:	f2c0 5549 	movtne	r5, #1353	; 0x549
 800216c:	2e00      	cmp	r6, #0
 800216e:	f84d 1e20 	strt	r1, [sp, #32]
 8002172:	bf1c      	itt	ne
 8002174:	f646 56ef 	movwne	r6, #28143	; 0x6def
 8002178:	f2c1 4673 	movtne	r6, #5235	; 0x1473
 800217c:	fba3 8001 	umull	r8, r0, r3, r1
 8002180:	f84d 3e18 	strt	r3, [sp, #24]
 8002184:	f84d 5e1c 	strt	r5, [sp, #28]
 8002188:	fbe5 0201 	umlal	r0, r2, r5, r1
 800218c:	fba3 1306 	umull	r1, r3, r3, r6
 8002190:	f84d 6e0c 	strt	r6, [sp, #12]
 8002194:	eb10 0e01 	adds.w	lr, r0, r1
 8002198:	f640 2068 	movw	r0, #2664	; 0xa68
 800219c:	f04f 0101 	mov.w	r1, #1
 80021a0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021a4:	f143 0300 	adc.w	r3, r3, #0
 80021a8:	f890 c000 	ldrb.w	ip, [r0]
 80021ac:	fbe5 2366 	umaal	r2, r3, r5, r6
 80021b0:	f1bc 0f00 	cmp.w	ip, #0
 80021b4:	46e3      	mov	fp, ip
 80021b6:	bf1f      	itttt	ne
 80021b8:	f644 1b27 	movwne	fp, #18727	; 0x4927
 80021bc:	f6cf 2be8 	movtne	fp, #64232	; 0xfae8
 80021c0:	f64f 0c9f 	movwne	ip, #63647	; 0xf89f
 80021c4:	f6c3 1c28 	movtne	ip, #14632	; 0x3928
 80021c8:	0058      	lsls	r0, r3, #1
 80021ca:	ea40 74d2 	orr.w	r4, r0, r2, lsr #31
 80021ce:	ea4f 70de 	mov.w	r0, lr, lsr #31
 80021d2:	ea40 0642 	orr.w	r6, r0, r2, lsl #1
 80021d6:	ea44 75e3 	orr.w	r5, r4, r3, asr #31
 80021da:	ebb6 020c 	subs.w	r2, r6, ip
 80021de:	ea46 73e3 	orr.w	r3, r6, r3, asr #31
 80021e2:	eb64 000b 	sbc.w	r0, r4, fp
 80021e6:	ebb3 030c 	subs.w	r3, r3, ip
 80021ea:	eb75 030b 	sbcs.w	r3, r5, fp
 80021ee:	f04f 0500 	mov.w	r5, #0
 80021f2:	f04f 0300 	mov.w	r3, #0
 80021f6:	bf28      	it	cs
 80021f8:	2301      	movcs	r3, #1
 80021fa:	bf38      	it	cc
 80021fc:	2501      	movcc	r5, #1
 80021fe:	2d00      	cmp	r5, #0
 8002200:	bf1c      	itt	ne
 8002202:	4620      	movne	r0, r4
 8002204:	4632      	movne	r2, r6
 8002206:	ea43 0448 	orr.w	r4, r3, r8, lsl #1
 800220a:	ea4f 034e 	mov.w	r3, lr, lsl #1
 800220e:	3101      	adds	r1, #1
 8002210:	ea43 7ed8 	orr.w	lr, r3, r8, lsr #31
 8002214:	f14a 0a00 	adc.w	sl, sl, #0
 8002218:	f1b1 0341 	subs.w	r3, r1, #65	; 0x41
 800221c:	46a0      	mov	r8, r4
 800221e:	f17a 0300 	sbcs.w	r3, sl, #0
 8002222:	4603      	mov	r3, r0
 8002224:	dbd0      	blt.n	80021c8 <benchmark+0xc8>
 8002226:	fba2 8102 	umull	r8, r1, r2, r2
 800222a:	2500      	movs	r5, #0
 800222c:	4664      	mov	r4, ip
 800222e:	46d9      	mov	r9, fp
 8002230:	f04f 0c00 	mov.w	ip, #0
 8002234:	fbe2 1500 	umlal	r1, r5, r2, r0
 8002238:	fba2 2300 	umull	r2, r3, r2, r0
 800223c:	46a3      	mov	fp, r4
 800223e:	f84d 9e24 	strt	r9, [sp, #36]
 8002242:	eb11 0e02 	adds.w	lr, r1, r2
 8002246:	f04f 0201 	mov.w	r2, #1
 800224a:	f143 0300 	adc.w	r3, r3, #0
 800224e:	fbe0 5360 	umaal	r5, r3, r0, r0
 8002252:	0058      	lsls	r0, r3, #1
 8002254:	2600      	movs	r6, #0
 8002256:	ea40 71d5 	orr.w	r1, r0, r5, lsr #31
 800225a:	ea4f 70de 	mov.w	r0, lr, lsr #31
 800225e:	ea40 0445 	orr.w	r4, r0, r5, lsl #1
 8002262:	ea41 7ae3 	orr.w	sl, r1, r3, asr #31
 8002266:	ebb4 050b 	subs.w	r5, r4, fp
 800226a:	ea44 73e3 	orr.w	r3, r4, r3, asr #31
 800226e:	eb61 0009 	sbc.w	r0, r1, r9
 8002272:	ebb3 030b 	subs.w	r3, r3, fp
 8002276:	f8dd 9024 	ldr.w	r9, [sp, #36]	; 0x24
 800227a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800227c:	eb7a 0303 	sbcs.w	r3, sl, r3
 8002280:	f04f 0300 	mov.w	r3, #0
 8002284:	bf28      	it	cs
 8002286:	2301      	movcs	r3, #1
 8002288:	bf38      	it	cc
 800228a:	2601      	movcc	r6, #1
 800228c:	2e00      	cmp	r6, #0
 800228e:	bf1c      	itt	ne
 8002290:	4608      	movne	r0, r1
 8002292:	4625      	movne	r5, r4
 8002294:	ea43 0148 	orr.w	r1, r3, r8, lsl #1
 8002298:	ea4f 034e 	mov.w	r3, lr, lsl #1
 800229c:	3201      	adds	r2, #1
 800229e:	ea43 7ed8 	orr.w	lr, r3, r8, lsr #31
 80022a2:	f14c 0c00 	adc.w	ip, ip, #0
 80022a6:	f1b2 0341 	subs.w	r3, r2, #65	; 0x41
 80022aa:	4688      	mov	r8, r1
 80022ac:	f17c 0300 	sbcs.w	r3, ip, #0
 80022b0:	4603      	mov	r3, r0
 80022b2:	dbce      	blt.n	8002252 <benchmark+0x152>
 80022b4:	fba5 8105 	umull	r8, r1, r5, r5
 80022b8:	2600      	movs	r6, #0
 80022ba:	fba5 2300 	umull	r2, r3, r5, r0
 80022be:	2400      	movs	r4, #0
 80022c0:	fbe5 1600 	umlal	r1, r6, r5, r0
 80022c4:	2501      	movs	r5, #1
 80022c6:	eb11 0c02 	adds.w	ip, r1, r2
 80022ca:	f143 0300 	adc.w	r3, r3, #0
 80022ce:	fbe0 6360 	umaal	r6, r3, r0, r0
 80022d2:	0058      	lsls	r0, r3, #1
 80022d4:	ea4f 72dc 	mov.w	r2, ip, lsr #31
 80022d8:	ea40 70d6 	orr.w	r0, r0, r6, lsr #31
 80022dc:	ea42 0246 	orr.w	r2, r2, r6, lsl #1
 80022e0:	ebb2 060b 	subs.w	r6, r2, fp
 80022e4:	ea40 71e3 	orr.w	r1, r0, r3, asr #31
 80022e8:	ea42 73e3 	orr.w	r3, r2, r3, asr #31
 80022ec:	eb60 0e09 	sbc.w	lr, r0, r9
 80022f0:	ebb3 030b 	subs.w	r3, r3, fp
 80022f4:	eb71 0109 	sbcs.w	r1, r1, r9
 80022f8:	f04f 0300 	mov.w	r3, #0
 80022fc:	f04f 0100 	mov.w	r1, #0
 8002300:	bf28      	it	cs
 8002302:	2101      	movcs	r1, #1
 8002304:	bf38      	it	cc
 8002306:	2301      	movcc	r3, #1
 8002308:	2b00      	cmp	r3, #0
 800230a:	bf1c      	itt	ne
 800230c:	4686      	movne	lr, r0
 800230e:	4616      	movne	r6, r2
 8002310:	ea41 0048 	orr.w	r0, r1, r8, lsl #1
 8002314:	ea4f 014c 	mov.w	r1, ip, lsl #1
 8002318:	3501      	adds	r5, #1
 800231a:	ea41 7cd8 	orr.w	ip, r1, r8, lsr #31
 800231e:	f144 0400 	adc.w	r4, r4, #0
 8002322:	f1b5 0141 	subs.w	r1, r5, #65	; 0x41
 8002326:	4673      	mov	r3, lr
 8002328:	4680      	mov	r8, r0
 800232a:	f174 0100 	sbcs.w	r1, r4, #0
 800232e:	dbd0      	blt.n	80022d2 <benchmark+0x1d2>
 8002330:	f84d ee10 	strt	lr, [sp, #16]
 8002334:	f84d 6e14 	strt	r6, [sp, #20]
 8002338:	2500      	movs	r5, #0
 800233a:	2401      	movs	r4, #1
 800233c:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 8002340:	2600      	movs	r6, #0
 8002342:	2100      	movs	r1, #0
 8002344:	f04f 0800 	mov.w	r8, #0
 8002348:	f04f 4a00 	mov.w	sl, #2147483648	; 0x80000000
 800234c:	ea5f 0a5a 	movs.w	sl, sl, lsr #1
 8002350:	ea4f 0838 	mov.w	r8, r8, rrx
 8002354:	07e0      	lsls	r0, r4, #31
 8002356:	d10b      	bne.n	8002370 <benchmark+0x270>
 8002358:	ea5f 0656 	movs.w	r6, r6, lsr #1
 800235c:	ea4f 0535 	mov.w	r5, r5, rrx
 8002360:	ea5f 0151 	movs.w	r1, r1, lsr #1
 8002364:	ea4f 0434 	mov.w	r4, r4, rrx
 8002368:	ea58 000a 	orrs.w	r0, r8, sl
 800236c:	d1ee      	bne.n	800234c <benchmark+0x24c>
 800236e:	e016      	b.n	800239e <benchmark+0x29e>
 8002370:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002372:	ea84 000b 	eor.w	r0, r4, fp
 8002376:	ea81 0203 	eor.w	r2, r1, r3
 800237a:	4019      	ands	r1, r3
 800237c:	ea04 030b 	and.w	r3, r4, fp
 8002380:	ea5f 0252 	movs.w	r2, r2, lsr #1
 8002384:	ea4f 0030 	mov.w	r0, r0, rrx
 8002388:	18c4      	adds	r4, r0, r3
 800238a:	4151      	adcs	r1, r2
 800238c:	ea5f 0056 	movs.w	r0, r6, lsr #1
 8002390:	ea4f 0535 	mov.w	r5, r5, rrx
 8002394:	ea40 060c 	orr.w	r6, r0, ip
 8002398:	ea58 000a 	orrs.w	r0, r8, sl
 800239c:	d1d6      	bne.n	800234c <benchmark+0x24c>
 800239e:	f84d 4e30 	strt	r4, [sp, #48]
 80023a2:	f84d 1e34 	strt	r1, [sp, #52]
 80023a6:	f84d 6e2c 	strt	r6, [sp, #44]
 80023aa:	f84d 5e28 	strt	r5, [sp, #40]
 80023ae:	46d9      	mov	r9, fp
 80023b0:	2601      	movs	r6, #1
 80023b2:	f04f 0c00 	mov.w	ip, #0
 80023b6:	980c      	ldr	r0, [sp, #48]	; 0x30
 80023b8:	980d      	ldr	r0, [sp, #52]	; 0x34
 80023ba:	980a      	ldr	r0, [sp, #40]	; 0x28
 80023bc:	990b      	ldr	r1, [sp, #44]	; 0x2c
 80023be:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80023c2:	fba0 320b 	umull	r3, r2, r0, fp
 80023c6:	fb00 2008 	mla	r0, r0, r8, r2
 80023ca:	f84d 3e08 	strt	r3, [sp, #8]
 80023ce:	fb01 000b 	mla	r0, r1, fp, r0
 80023d2:	f04f 0b00 	mov.w	fp, #0
 80023d6:	2100      	movs	r1, #0
 80023d8:	f84d 0e04 	strt	r0, [sp, #4]
 80023dc:	e9dd 4506 	ldrd	r4, r5, [sp, #24]
 80023e0:	ea4f 73dc 	mov.w	r3, ip, lsr #31
 80023e4:	006a      	lsls	r2, r5, #1
 80023e6:	ea43 0344 	orr.w	r3, r3, r4, lsl #1
 80023ea:	ea42 72d4 	orr.w	r2, r2, r4, lsr #31
 80023ee:	ebb3 0409 	subs.w	r4, r3, r9
 80023f2:	ea42 7ae5 	orr.w	sl, r2, r5, asr #31
 80023f6:	eb62 0e08 	sbc.w	lr, r2, r8
 80023fa:	ea43 78e5 	orr.w	r8, r3, r5, asr #31
 80023fe:	2500      	movs	r5, #0
 8002400:	ebb8 0009 	subs.w	r0, r8, r9
 8002404:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8002408:	9809      	ldr	r0, [sp, #36]	; 0x24
 800240a:	eb7a 0000 	sbcs.w	r0, sl, r0
 800240e:	f04f 0000 	mov.w	r0, #0
 8002412:	bf28      	it	cs
 8002414:	2001      	movcs	r0, #1
 8002416:	bf38      	it	cc
 8002418:	2501      	movcc	r5, #1
 800241a:	2d00      	cmp	r5, #0
 800241c:	ea40 0041 	orr.w	r0, r0, r1, lsl #1
 8002420:	bf1c      	itt	ne
 8002422:	4696      	movne	lr, r2
 8002424:	461c      	movne	r4, r3
 8002426:	ea4f 024c 	mov.w	r2, ip, lsl #1
 800242a:	3601      	adds	r6, #1
 800242c:	ea42 7cd1 	orr.w	ip, r2, r1, lsr #31
 8002430:	f14b 0b00 	adc.w	fp, fp, #0
 8002434:	f1b6 0141 	subs.w	r1, r6, #65	; 0x41
 8002438:	4675      	mov	r5, lr
 800243a:	f17b 0100 	sbcs.w	r1, fp, #0
 800243e:	4601      	mov	r1, r0
 8002440:	dbce      	blt.n	80023e0 <benchmark+0x2e0>
 8002442:	f84d 9e1c 	strt	r9, [sp, #28]
 8002446:	f84d 4e18 	strt	r4, [sp, #24]
 800244a:	9908      	ldr	r1, [sp, #32]
 800244c:	9c03      	ldr	r4, [sp, #12]
 800244e:	f8dd c024 	ldr.w	ip, [sp, #36]	; 0x24
 8002452:	f04f 0a00 	mov.w	sl, #0
 8002456:	f04f 0b01 	mov.w	fp, #1
 800245a:	2200      	movs	r2, #0
 800245c:	2000      	movs	r0, #0
 800245e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002462:	0fc6      	lsrs	r6, r0, #31
 8002464:	0063      	lsls	r3, r4, #1
 8002466:	f84d 0e20 	strt	r0, [sp, #32]
 800246a:	ea46 0541 	orr.w	r5, r6, r1, lsl #1
 800246e:	ea43 73d1 	orr.w	r3, r3, r1, lsr #31
 8002472:	ebb5 0109 	subs.w	r1, r5, r9
 8002476:	ea45 70e4 	orr.w	r0, r5, r4, asr #31
 800247a:	ea43 78e4 	orr.w	r8, r3, r4, asr #31
 800247e:	f04f 0400 	mov.w	r4, #0
 8002482:	eb63 060c 	sbc.w	r6, r3, ip
 8002486:	ebb0 0009 	subs.w	r0, r0, r9
 800248a:	eb78 000c 	sbcs.w	r0, r8, ip
 800248e:	f04f 0000 	mov.w	r0, #0
 8002492:	bf28      	it	cs
 8002494:	2001      	movcs	r0, #1
 8002496:	bf38      	it	cc
 8002498:	2401      	movcc	r4, #1
 800249a:	2c00      	cmp	r4, #0
 800249c:	bf1c      	itt	ne
 800249e:	461e      	movne	r6, r3
 80024a0:	4629      	movne	r1, r5
 80024a2:	ea40 0542 	orr.w	r5, r0, r2, lsl #1
 80024a6:	9808      	ldr	r0, [sp, #32]
 80024a8:	f11b 0b01 	adds.w	fp, fp, #1
 80024ac:	f14a 0a00 	adc.w	sl, sl, #0
 80024b0:	4634      	mov	r4, r6
 80024b2:	0043      	lsls	r3, r0, #1
 80024b4:	ea43 70d2 	orr.w	r0, r3, r2, lsr #31
 80024b8:	f1bb 0241 	subs.w	r2, fp, #65	; 0x41
 80024bc:	f17a 0200 	sbcs.w	r2, sl, #0
 80024c0:	462a      	mov	r2, r5
 80024c2:	dbce      	blt.n	8002462 <benchmark+0x362>
 80024c4:	9b06      	ldr	r3, [sp, #24]
 80024c6:	2400      	movs	r4, #0
 80024c8:	f04f 0c00 	mov.w	ip, #0
 80024cc:	fba1 8003 	umull	r8, r0, r1, r3
 80024d0:	fba6 3503 	umull	r3, r5, r6, r3
 80024d4:	fbe1 040e 	umlal	r0, r4, r1, lr
 80024d8:	18c1      	adds	r1, r0, r3
 80024da:	f84d 1e18 	strt	r1, [sp, #24]
 80024de:	f145 0300 	adc.w	r3, r5, #0
 80024e2:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80024e4:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
 80024e8:	fbe6 436e 	umaal	r4, r3, r6, lr
 80024ec:	461e      	mov	r6, r3
 80024ee:	fba5 2008 	umull	r2, r0, r5, r8
 80024f2:	fb05 0001 	mla	r0, r5, r1, r0
 80024f6:	f64f 059f 	movw	r5, #63647	; 0xf89f
 80024fa:	4621      	mov	r1, r4
 80024fc:	fb09 0b08 	mla	fp, r9, r8, r0
 8002500:	9807      	ldr	r0, [sp, #28]
 8002502:	f6c3 1528 	movt	r5, #14632	; 0x3928
 8002506:	4691      	mov	r9, r2
 8002508:	4028      	ands	r0, r5
 800250a:	fba2 a500 	umull	sl, r5, r2, r0
 800250e:	2200      	movs	r2, #0
 8002510:	f84d 0e20 	strt	r0, [sp, #32]
 8002514:	fbeb 5200 	umlal	r5, r2, fp, r0
 8002518:	9809      	ldr	r0, [sp, #36]	; 0x24
 800251a:	fbeb 1600 	umlal	r1, r6, fp, r0
 800251e:	eb11 0e02 	adds.w	lr, r1, r2
 8002522:	f146 0b00 	adc.w	fp, r6, #0
 8002526:	fba9 6100 	umull	r6, r1, r9, r0
 800252a:	4681      	mov	r9, r0
 800252c:	19ad      	adds	r5, r5, r6
 800252e:	f141 0000 	adc.w	r0, r1, #0
 8002532:	9906      	ldr	r1, [sp, #24]
 8002534:	eb1a 0608 	adds.w	r6, sl, r8
 8002538:	4169      	adcs	r1, r5
 800253a:	ebb6 060a 	subs.w	r6, r6, sl
 800253e:	41a9      	sbcs	r1, r5
 8002540:	f04f 0100 	mov.w	r1, #0
 8002544:	bf38      	it	cc
 8002546:	2101      	movcc	r1, #1
 8002548:	eb1e 0200 	adds.w	r2, lr, r0
 800254c:	f14b 0600 	adc.w	r6, fp, #0
 8002550:	1c55      	adds	r5, r2, #1
 8002552:	f146 0000 	adc.w	r0, r6, #0
 8002556:	2900      	cmp	r1, #0
 8002558:	bf08      	it	eq
 800255a:	4630      	moveq	r0, r6
 800255c:	bf08      	it	eq
 800255e:	4615      	moveq	r5, r2
 8002560:	1b2a      	subs	r2, r5, r4
 8002562:	ea80 0e03 	eor.w	lr, r0, r3
 8002566:	ea85 0604 	eor.w	r6, r5, r4
 800256a:	eb70 0203 	sbcs.w	r2, r0, r3
 800256e:	f04f 0200 	mov.w	r2, #0
 8002572:	bf38      	it	cc
 8002574:	2201      	movcc	r2, #1
 8002576:	ea56 030e 	orrs.w	r3, r6, lr
 800257a:	f04f 0300 	mov.w	r3, #0
 800257e:	bf08      	it	eq
 8002580:	2301      	moveq	r3, #1
 8002582:	4019      	ands	r1, r3
 8002584:	4311      	orrs	r1, r2
 8002586:	9a07      	ldr	r2, [sp, #28]
 8002588:	1aab      	subs	r3, r5, r2
 800258a:	f04f 0200 	mov.w	r2, #0
 800258e:	eb70 0609 	sbcs.w	r6, r0, r9
 8002592:	bf28      	it	cs
 8002594:	2201      	movcs	r2, #1
 8002596:	4311      	orrs	r1, r2
 8002598:	bf04      	itt	eq
 800259a:	4606      	moveq	r6, r0
 800259c:	462b      	moveq	r3, r5
 800259e:	2500      	movs	r5, #0
 80025a0:	fba3 8003 	umull	r8, r0, r3, r3
 80025a4:	fbe3 0506 	umlal	r0, r5, r3, r6
 80025a8:	fba3 3106 	umull	r3, r1, r3, r6
 80025ac:	18c0      	adds	r0, r0, r3
 80025ae:	f141 0b00 	adc.w	fp, r1, #0
 80025b2:	f84d 0e18 	strt	r0, [sp, #24]
 80025b6:	fbe6 5b66 	umaal	r5, fp, r6, r6
 80025ba:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80025bc:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80025be:	4629      	mov	r1, r5
 80025c0:	fba8 a206 	umull	sl, r2, r8, r6
 80025c4:	fb08 2203 	mla	r2, r8, r3, r2
 80025c8:	465b      	mov	r3, fp
 80025ca:	fb00 2406 	mla	r4, r0, r6, r2
 80025ce:	9a08      	ldr	r2, [sp, #32]
 80025d0:	9e09      	ldr	r6, [sp, #36]	; 0x24
 80025d2:	2000      	movs	r0, #0
 80025d4:	fbaa 9e02 	umull	r9, lr, sl, r2
 80025d8:	fbe4 1306 	umlal	r1, r3, r4, r6
 80025dc:	fbe4 e002 	umlal	lr, r0, r4, r2
 80025e0:	1840      	adds	r0, r0, r1
 80025e2:	f143 0100 	adc.w	r1, r3, #0
 80025e6:	fbaa 2306 	umull	r2, r3, sl, r6
 80025ea:	eb1e 0602 	adds.w	r6, lr, r2
 80025ee:	f143 0200 	adc.w	r2, r3, #0
 80025f2:	eb10 0a02 	adds.w	sl, r0, r2
 80025f6:	9806      	ldr	r0, [sp, #24]
 80025f8:	f141 0100 	adc.w	r1, r1, #0
 80025fc:	eb19 0e08 	adds.w	lr, r9, r8
 8002600:	f04f 0800 	mov.w	r8, #0
 8002604:	eb46 0400 	adc.w	r4, r6, r0
 8002608:	f11a 0201 	adds.w	r2, sl, #1
 800260c:	f141 0300 	adc.w	r3, r1, #0
 8002610:	ebbe 0009 	subs.w	r0, lr, r9
 8002614:	eb74 0006 	sbcs.w	r0, r4, r6
 8002618:	f04f 0000 	mov.w	r0, #0
 800261c:	bf38      	it	cc
 800261e:	2001      	movcc	r0, #1
 8002620:	2800      	cmp	r0, #0
 8002622:	bf04      	itt	eq
 8002624:	460b      	moveq	r3, r1
 8002626:	4652      	moveq	r2, sl
 8002628:	ea82 0105 	eor.w	r1, r2, r5
 800262c:	ea83 060b 	eor.w	r6, r3, fp
 8002630:	4331      	orrs	r1, r6
 8002632:	f04f 0100 	mov.w	r1, #0
 8002636:	bf08      	it	eq
 8002638:	2101      	moveq	r1, #1
 800263a:	1b56      	subs	r6, r2, r5
 800263c:	eb73 060b 	sbcs.w	r6, r3, fp
 8002640:	ea00 0001 	and.w	r0, r0, r1
 8002644:	f04f 0600 	mov.w	r6, #0
 8002648:	bf38      	it	cc
 800264a:	2601      	movcc	r6, #1
 800264c:	9907      	ldr	r1, [sp, #28]
 800264e:	4330      	orrs	r0, r6
 8002650:	1a56      	subs	r6, r2, r1
 8002652:	9909      	ldr	r1, [sp, #36]	; 0x24
 8002654:	eb73 0501 	sbcs.w	r5, r3, r1
 8002658:	f04f 0100 	mov.w	r1, #0
 800265c:	bf28      	it	cs
 800265e:	2101      	movcs	r1, #1
 8002660:	4308      	orrs	r0, r1
 8002662:	bf04      	itt	eq
 8002664:	461d      	moveq	r5, r3
 8002666:	4616      	moveq	r6, r2
 8002668:	fba6 9006 	umull	r9, r0, r6, r6
 800266c:	fbe6 0805 	umlal	r0, r8, r6, r5
 8002670:	fba6 3605 	umull	r3, r6, r6, r5
 8002674:	18c0      	adds	r0, r0, r3
 8002676:	f84d 0e18 	strt	r0, [sp, #24]
 800267a:	f146 0a00 	adc.w	sl, r6, #0
 800267e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8002680:	fbe5 8a65 	umaal	r8, sl, r5, r5
 8002684:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 8002686:	4641      	mov	r1, r8
 8002688:	4653      	mov	r3, sl
 800268a:	fba9 4206 	umull	r4, r2, r9, r6
 800268e:	fb09 2205 	mla	r2, r9, r5, r2
 8002692:	2500      	movs	r5, #0
 8002694:	fb00 2e06 	mla	lr, r0, r6, r2
 8002698:	9808      	ldr	r0, [sp, #32]
 800269a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800269c:	fba4 b600 	umull	fp, r6, r4, r0
 80026a0:	fbee 1302 	umlal	r1, r3, lr, r2
 80026a4:	fbee 6500 	umlal	r6, r5, lr, r0
 80026a8:	1949      	adds	r1, r1, r5
 80026aa:	f143 0e00 	adc.w	lr, r3, #0
 80026ae:	fba4 0302 	umull	r0, r3, r4, r2
 80026b2:	1835      	adds	r5, r6, r0
 80026b4:	f143 0000 	adc.w	r0, r3, #0
 80026b8:	1809      	adds	r1, r1, r0
 80026ba:	9806      	ldr	r0, [sp, #24]
 80026bc:	f14e 0200 	adc.w	r2, lr, #0
 80026c0:	eb1b 0e09 	adds.w	lr, fp, r9
 80026c4:	eb45 0400 	adc.w	r4, r5, r0
 80026c8:	1c48      	adds	r0, r1, #1
 80026ca:	f142 0300 	adc.w	r3, r2, #0
 80026ce:	ebbe 060b 	subs.w	r6, lr, fp
 80026d2:	eb74 0605 	sbcs.w	r6, r4, r5
 80026d6:	f04f 0500 	mov.w	r5, #0
 80026da:	f04f 0600 	mov.w	r6, #0
 80026de:	bf38      	it	cc
 80026e0:	2601      	movcc	r6, #1
 80026e2:	2e00      	cmp	r6, #0
 80026e4:	bf04      	itt	eq
 80026e6:	4613      	moveq	r3, r2
 80026e8:	4608      	moveq	r0, r1
 80026ea:	ea80 0108 	eor.w	r1, r0, r8
 80026ee:	ea83 020a 	eor.w	r2, r3, sl
 80026f2:	4311      	orrs	r1, r2
 80026f4:	f04f 0100 	mov.w	r1, #0
 80026f8:	bf08      	it	eq
 80026fa:	2101      	moveq	r1, #1
 80026fc:	ebb0 0208 	subs.w	r2, r0, r8
 8002700:	eb73 020a 	sbcs.w	r2, r3, sl
 8002704:	ea01 0106 	and.w	r1, r1, r6
 8002708:	f04f 0200 	mov.w	r2, #0
 800270c:	bf38      	it	cc
 800270e:	2201      	movcc	r2, #1
 8002710:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8002714:	f8dd b024 	ldr.w	fp, [sp, #36]	; 0x24
 8002718:	4311      	orrs	r1, r2
 800271a:	ebb0 020a 	subs.w	r2, r0, sl
 800271e:	eb73 060b 	sbcs.w	r6, r3, fp
 8002722:	bf28      	it	cs
 8002724:	2501      	movcs	r5, #1
 8002726:	4329      	orrs	r1, r5
 8002728:	bf04      	itt	eq
 800272a:	461e      	moveq	r6, r3
 800272c:	4602      	moveq	r2, r0
 800272e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002730:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 8002732:	2000      	movs	r0, #0
 8002734:	fba2 9503 	umull	r9, r5, r2, r3
 8002738:	fba2 2e04 	umull	r2, lr, r2, r4
 800273c:	fbe6 5003 	umlal	r5, r0, r6, r3
 8002740:	eb15 0802 	adds.w	r8, r5, r2
 8002744:	f04f 0501 	mov.w	r5, #1
 8002748:	f14e 0200 	adc.w	r2, lr, #0
 800274c:	46d6      	mov	lr, sl
 800274e:	46da      	mov	sl, fp
 8002750:	fbe6 0264 	umaal	r0, r2, r6, r4
 8002754:	0056      	lsls	r6, r2, #1
 8002756:	ea46 74d0 	orr.w	r4, r6, r0, lsr #31
 800275a:	ea4f 76d8 	mov.w	r6, r8, lsr #31
 800275e:	ea46 0340 	orr.w	r3, r6, r0, lsl #1
 8002762:	ea44 71e2 	orr.w	r1, r4, r2, asr #31
 8002766:	ebb3 000e 	subs.w	r0, r3, lr
 800276a:	ea43 72e2 	orr.w	r2, r3, r2, asr #31
 800276e:	eb64 060a 	sbc.w	r6, r4, sl
 8002772:	ebb2 020e 	subs.w	r2, r2, lr
 8002776:	eb71 010a 	sbcs.w	r1, r1, sl
 800277a:	f04f 0200 	mov.w	r2, #0
 800277e:	f04f 0100 	mov.w	r1, #0
 8002782:	bf28      	it	cs
 8002784:	2101      	movcs	r1, #1
 8002786:	bf38      	it	cc
 8002788:	2201      	movcc	r2, #1
 800278a:	2a00      	cmp	r2, #0
 800278c:	ea4f 0248 	mov.w	r2, r8, lsl #1
 8002790:	ea41 0149 	orr.w	r1, r1, r9, lsl #1
 8002794:	bf1c      	itt	ne
 8002796:	4626      	movne	r6, r4
 8002798:	4618      	movne	r0, r3
 800279a:	3501      	adds	r5, #1
 800279c:	ea42 78d9 	orr.w	r8, r2, r9, lsr #31
 80027a0:	4689      	mov	r9, r1
 80027a2:	f14c 0c00 	adc.w	ip, ip, #0
 80027a6:	f1b5 0241 	subs.w	r2, r5, #65	; 0x41
 80027aa:	f17c 0200 	sbcs.w	r2, ip, #0
 80027ae:	4632      	mov	r2, r6
 80027b0:	dbd0      	blt.n	8002754 <benchmark+0x654>
 80027b2:	9905      	ldr	r1, [sp, #20]
 80027b4:	4048      	eors	r0, r1
 80027b6:	9904      	ldr	r1, [sp, #16]
 80027b8:	4071      	eors	r1, r6
 80027ba:	4308      	orrs	r0, r1
 80027bc:	bf18      	it	ne
 80027be:	2001      	movne	r0, #1
 80027c0:	e9dd 2101 	ldrd	r2, r1, [sp, #4]
 80027c4:	4011      	ands	r1, r2
 80027c6:	3101      	adds	r1, #1
 80027c8:	f04f 0100 	mov.w	r1, #0
 80027cc:	bf18      	it	ne
 80027ce:	2101      	movne	r1, #1
 80027d0:	4308      	orrs	r0, r1
 80027d2:	b00f      	add	sp, #60	; 0x3c
 80027d4:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80027d8:	bdf0      	pop	{r4, r5, r6, r7, pc}

080027da <initialise_benchmark>:
 80027da:	f640 2068 	movw	r0, #2664	; 0xa68
 80027de:	2101      	movs	r1, #1
 80027e0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80027e4:	f800 1e00 	strbt	r1, [r0]
 80027e8:	f640 2070 	movw	r0, #2672	; 0xa70
 80027ec:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80027f0:	f800 1e00 	strbt	r1, [r0]
 80027f4:	f640 2078 	movw	r0, #2680	; 0xa78
 80027f8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80027fc:	f800 1e00 	strbt	r1, [r0]
 8002800:	4770      	bx	lr

08002802 <verify_benchmark>:
 8002802:	2100      	movs	r1, #0
 8002804:	2800      	cmp	r0, #0
 8002806:	bf08      	it	eq
 8002808:	2101      	moveq	r1, #1
 800280a:	4608      	mov	r0, r1
 800280c:	4770      	bx	lr

0800280e <SysTick_Handler>:
 800280e:	b082      	sub	sp, #8
 8002810:	f84d 7e00 	strt	r7, [sp]
 8002814:	f84d ee04 	strt	lr, [sp, #4]
 8002818:	466f      	mov	r7, sp
 800281a:	f7fe fc75 	bl	8001108 <HAL_IncTick>
 800281e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002822:	f7fe bcd0 	b.w	80011c6 <HAL_SYSTICK_IRQHandler>

08002826 <_read>:
 8002826:	b085      	sub	sp, #20
 8002828:	f84d 4e00 	strt	r4, [sp]
 800282c:	f84d 5e04 	strt	r5, [sp, #4]
 8002830:	f84d 6e08 	strt	r6, [sp, #8]
 8002834:	f84d 7e0c 	strt	r7, [sp, #12]
 8002838:	f84d ee10 	strt	lr, [sp, #16]
 800283c:	af03      	add	r7, sp, #12
 800283e:	b081      	sub	sp, #4
 8002840:	f84d be00 	strt	fp, [sp]
 8002844:	4614      	mov	r4, r2
 8002846:	460d      	mov	r5, r1
 8002848:	2c01      	cmp	r4, #1
 800284a:	db08      	blt.n	800285e <_read+0x38>
 800284c:	4626      	mov	r6, r4
 800284e:	f3af 8000 	nop.w
 8002852:	f805 0e00 	strbt	r0, [r5]
 8002856:	bfe8      	it	al
 8002858:	3501      	addal	r5, #1
 800285a:	3e01      	subs	r6, #1
 800285c:	d1f7      	bne.n	800284e <_read+0x28>
 800285e:	4620      	mov	r0, r4
 8002860:	f85d bb04 	ldr.w	fp, [sp], #4
 8002864:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002866 <_write>:
 8002866:	b085      	sub	sp, #20
 8002868:	f84d 4e00 	strt	r4, [sp]
 800286c:	f84d 5e04 	strt	r5, [sp, #4]
 8002870:	f84d 6e08 	strt	r6, [sp, #8]
 8002874:	f84d 7e0c 	strt	r7, [sp, #12]
 8002878:	f84d ee10 	strt	lr, [sp, #16]
 800287c:	af03      	add	r7, sp, #12
 800287e:	b081      	sub	sp, #4
 8002880:	f84d be00 	strt	fp, [sp]
 8002884:	4614      	mov	r4, r2
 8002886:	460d      	mov	r5, r1
 8002888:	2c01      	cmp	r4, #1
 800288a:	db06      	blt.n	800289a <_write+0x34>
 800288c:	4626      	mov	r6, r4
 800288e:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002892:	f7ff fbbf 	bl	8002014 <__io_putchar>
 8002896:	3e01      	subs	r6, #1
 8002898:	d1f9      	bne.n	800288e <_write+0x28>
 800289a:	4620      	mov	r0, r4
 800289c:	f85d bb04 	ldr.w	fp, [sp], #4
 80028a0:	bdf0      	pop	{r4, r5, r6, r7, pc}

080028a2 <_sbrk>:
 80028a2:	f640 2280 	movw	r2, #2688	; 0xa80
 80028a6:	4601      	mov	r1, r0
 80028a8:	466b      	mov	r3, sp
 80028aa:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80028ae:	6810      	ldr	r0, [r2, #0]
 80028b0:	2800      	cmp	r0, #0
 80028b2:	bf02      	ittt	eq
 80028b4:	f640 3028 	movweq	r0, #2856	; 0xb28
 80028b8:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80028bc:	f842 0e00 	strteq	r0, [r2]
 80028c0:	4401      	add	r1, r0
 80028c2:	4299      	cmp	r1, r3
 80028c4:	bf9c      	itt	ls
 80028c6:	f842 1e00 	strtls	r1, [r2]
 80028ca:	4770      	bxls	lr
 80028cc:	b082      	sub	sp, #8
 80028ce:	f84d 7e00 	strt	r7, [sp]
 80028d2:	f84d ee04 	strt	lr, [sp, #4]
 80028d6:	466f      	mov	r7, sp
 80028d8:	f000 f866 	bl	80029a8 <__errno>
 80028dc:	210c      	movs	r1, #12
 80028de:	f840 1e00 	strt	r1, [r0]
 80028e2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80028e6:	bd80      	pop	{r7, pc}

080028e8 <_close>:
 80028e8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80028ec:	4770      	bx	lr

080028ee <_fstat>:
 80028ee:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80028f2:	f841 0e04 	strt	r0, [r1, #4]
 80028f6:	2000      	movs	r0, #0
 80028f8:	4770      	bx	lr

080028fa <_isatty>:
 80028fa:	2001      	movs	r0, #1
 80028fc:	4770      	bx	lr

080028fe <_lseek>:
 80028fe:	2000      	movs	r0, #0
 8002900:	4770      	bx	lr

08002902 <SystemInit>:
 8002902:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002906:	f04f 0c00 	mov.w	ip, #0
 800290a:	f2ce 0000 	movt	r0, #57344	; 0xe000
 800290e:	6801      	ldr	r1, [r0, #0]
 8002910:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002914:	6001      	str	r1, [r0, #0]
 8002916:	f241 0100 	movw	r1, #4096	; 0x1000
 800291a:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800291e:	680a      	ldr	r2, [r1, #0]
 8002920:	f042 0201 	orr.w	r2, r2, #1
 8002924:	600a      	str	r2, [r1, #0]
 8002926:	f8c1 c008 	str.w	ip, [r1, #8]
 800292a:	f64f 72ff 	movw	r2, #65535	; 0xffff
 800292e:	680b      	ldr	r3, [r1, #0]
 8002930:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002934:	401a      	ands	r2, r3
 8002936:	600a      	str	r2, [r1, #0]
 8002938:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 800293c:	60ca      	str	r2, [r1, #12]
 800293e:	680a      	ldr	r2, [r1, #0]
 8002940:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002944:	600a      	str	r2, [r1, #0]
 8002946:	f8c1 c018 	str.w	ip, [r1, #24]
 800294a:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 800294e:	f840 1c80 	str.w	r1, [r0, #-128]
 8002952:	4770      	bx	lr

08002954 <Reset_Handler>:
 8002954:	f8df d034 	ldr.w	sp, [pc, #52]	; 800298c <LoopForever+0x2>
 8002958:	2100      	movs	r1, #0
 800295a:	e003      	b.n	8002964 <LoopCopyDataInit>

0800295c <CopyDataInit>:
 800295c:	4b0c      	ldr	r3, [pc, #48]	; (8002990 <LoopForever+0x6>)
 800295e:	585b      	ldr	r3, [r3, r1]
 8002960:	5043      	str	r3, [r0, r1]
 8002962:	3104      	adds	r1, #4

08002964 <LoopCopyDataInit>:
 8002964:	480b      	ldr	r0, [pc, #44]	; (8002994 <LoopForever+0xa>)
 8002966:	4b0c      	ldr	r3, [pc, #48]	; (8002998 <LoopForever+0xe>)
 8002968:	1842      	adds	r2, r0, r1
 800296a:	429a      	cmp	r2, r3
 800296c:	d3f6      	bcc.n	800295c <CopyDataInit>
 800296e:	4a0b      	ldr	r2, [pc, #44]	; (800299c <LoopForever+0x12>)
 8002970:	e002      	b.n	8002978 <LoopFillZerobss>

08002972 <FillZerobss>:
 8002972:	2300      	movs	r3, #0
 8002974:	f842 3b04 	str.w	r3, [r2], #4

08002978 <LoopFillZerobss>:
 8002978:	4b09      	ldr	r3, [pc, #36]	; (80029a0 <LoopForever+0x16>)
 800297a:	429a      	cmp	r2, r3
 800297c:	d3f9      	bcc.n	8002972 <FillZerobss>
 800297e:	f7ff ffc0 	bl	8002902 <SystemInit>
 8002982:	f000 f817 	bl	80029b4 <__libc_init_array>
 8002986:	f7ff fb5b 	bl	8002040 <main>

0800298a <LoopForever>:
 800298a:	e7fe      	b.n	800298a <LoopForever>
 800298c:	20018000 	.word	0x20018000
 8002990:	08007b08 	.word	0x08007b08
 8002994:	20000000 	.word	0x20000000
 8002998:	200009c8 	.word	0x200009c8
 800299c:	200009c8 	.word	0x200009c8
 80029a0:	20000b28 	.word	0x20000b28

080029a4 <ADC1_2_IRQHandler>:
 80029a4:	e7fe      	b.n	80029a4 <ADC1_2_IRQHandler>
	...

080029a8 <__errno>:
 80029a8:	4b01      	ldr	r3, [pc, #4]	; (80029b0 <__errno+0x8>)
 80029aa:	6818      	ldr	r0, [r3, #0]
 80029ac:	4770      	bx	lr
 80029ae:	bf00      	nop
 80029b0:	20000018 	.word	0x20000018

080029b4 <__libc_init_array>:
 80029b4:	b570      	push	{r4, r5, r6, lr}
 80029b6:	4e0d      	ldr	r6, [pc, #52]	; (80029ec <__libc_init_array+0x38>)
 80029b8:	4d0d      	ldr	r5, [pc, #52]	; (80029f0 <__libc_init_array+0x3c>)
 80029ba:	1b76      	subs	r6, r6, r5
 80029bc:	10b6      	asrs	r6, r6, #2
 80029be:	d006      	beq.n	80029ce <__libc_init_array+0x1a>
 80029c0:	2400      	movs	r4, #0
 80029c2:	3401      	adds	r4, #1
 80029c4:	f855 3b04 	ldr.w	r3, [r5], #4
 80029c8:	4798      	blx	r3
 80029ca:	42a6      	cmp	r6, r4
 80029cc:	d1f9      	bne.n	80029c2 <__libc_init_array+0xe>
 80029ce:	4e09      	ldr	r6, [pc, #36]	; (80029f4 <__libc_init_array+0x40>)
 80029d0:	4d09      	ldr	r5, [pc, #36]	; (80029f8 <__libc_init_array+0x44>)
 80029d2:	1b76      	subs	r6, r6, r5
 80029d4:	f004 feaa 	bl	800772c <_init>
 80029d8:	10b6      	asrs	r6, r6, #2
 80029da:	d006      	beq.n	80029ea <__libc_init_array+0x36>
 80029dc:	2400      	movs	r4, #0
 80029de:	3401      	adds	r4, #1
 80029e0:	f855 3b04 	ldr.w	r3, [r5], #4
 80029e4:	4798      	blx	r3
 80029e6:	42a6      	cmp	r6, r4
 80029e8:	d1f9      	bne.n	80029de <__libc_init_array+0x2a>
 80029ea:	bd70      	pop	{r4, r5, r6, pc}
 80029ec:	08007af8 	.word	0x08007af8
 80029f0:	08007af8 	.word	0x08007af8
 80029f4:	08007b00 	.word	0x08007b00
 80029f8:	08007af8 	.word	0x08007af8

080029fc <memset>:
 80029fc:	b4f0      	push	{r4, r5, r6, r7}
 80029fe:	0786      	lsls	r6, r0, #30
 8002a00:	d043      	beq.n	8002a8a <memset+0x8e>
 8002a02:	1e54      	subs	r4, r2, #1
 8002a04:	2a00      	cmp	r2, #0
 8002a06:	d03e      	beq.n	8002a86 <memset+0x8a>
 8002a08:	b2ca      	uxtb	r2, r1
 8002a0a:	4603      	mov	r3, r0
 8002a0c:	e002      	b.n	8002a14 <memset+0x18>
 8002a0e:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002a12:	d338      	bcc.n	8002a86 <memset+0x8a>
 8002a14:	f803 2b01 	strb.w	r2, [r3], #1
 8002a18:	079d      	lsls	r5, r3, #30
 8002a1a:	d1f8      	bne.n	8002a0e <memset+0x12>
 8002a1c:	2c03      	cmp	r4, #3
 8002a1e:	d92b      	bls.n	8002a78 <memset+0x7c>
 8002a20:	b2cd      	uxtb	r5, r1
 8002a22:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002a26:	2c0f      	cmp	r4, #15
 8002a28:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002a2c:	d916      	bls.n	8002a5c <memset+0x60>
 8002a2e:	f1a4 0710 	sub.w	r7, r4, #16
 8002a32:	093f      	lsrs	r7, r7, #4
 8002a34:	f103 0620 	add.w	r6, r3, #32
 8002a38:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002a3c:	f103 0210 	add.w	r2, r3, #16
 8002a40:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002a44:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002a48:	3210      	adds	r2, #16
 8002a4a:	42b2      	cmp	r2, r6
 8002a4c:	d1f8      	bne.n	8002a40 <memset+0x44>
 8002a4e:	f004 040f 	and.w	r4, r4, #15
 8002a52:	3701      	adds	r7, #1
 8002a54:	2c03      	cmp	r4, #3
 8002a56:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002a5a:	d90d      	bls.n	8002a78 <memset+0x7c>
 8002a5c:	461e      	mov	r6, r3
 8002a5e:	4622      	mov	r2, r4
 8002a60:	3a04      	subs	r2, #4
 8002a62:	2a03      	cmp	r2, #3
 8002a64:	f846 5b04 	str.w	r5, [r6], #4
 8002a68:	d8fa      	bhi.n	8002a60 <memset+0x64>
 8002a6a:	1f22      	subs	r2, r4, #4
 8002a6c:	f022 0203 	bic.w	r2, r2, #3
 8002a70:	3204      	adds	r2, #4
 8002a72:	4413      	add	r3, r2
 8002a74:	f004 0403 	and.w	r4, r4, #3
 8002a78:	b12c      	cbz	r4, 8002a86 <memset+0x8a>
 8002a7a:	b2c9      	uxtb	r1, r1
 8002a7c:	441c      	add	r4, r3
 8002a7e:	f803 1b01 	strb.w	r1, [r3], #1
 8002a82:	429c      	cmp	r4, r3
 8002a84:	d1fb      	bne.n	8002a7e <memset+0x82>
 8002a86:	bcf0      	pop	{r4, r5, r6, r7}
 8002a88:	4770      	bx	lr
 8002a8a:	4614      	mov	r4, r2
 8002a8c:	4603      	mov	r3, r0
 8002a8e:	e7c5      	b.n	8002a1c <memset+0x20>

08002a90 <printf>:
 8002a90:	b40f      	push	{r0, r1, r2, r3}
 8002a92:	b500      	push	{lr}
 8002a94:	4907      	ldr	r1, [pc, #28]	; (8002ab4 <printf+0x24>)
 8002a96:	b083      	sub	sp, #12
 8002a98:	ab04      	add	r3, sp, #16
 8002a9a:	6808      	ldr	r0, [r1, #0]
 8002a9c:	f853 2b04 	ldr.w	r2, [r3], #4
 8002aa0:	6881      	ldr	r1, [r0, #8]
 8002aa2:	9301      	str	r3, [sp, #4]
 8002aa4:	f000 f860 	bl	8002b68 <_vfprintf_r>
 8002aa8:	b003      	add	sp, #12
 8002aaa:	f85d eb04 	ldr.w	lr, [sp], #4
 8002aae:	b004      	add	sp, #16
 8002ab0:	4770      	bx	lr
 8002ab2:	bf00      	nop
 8002ab4:	20000018 	.word	0x20000018

08002ab8 <_puts_r>:
 8002ab8:	b570      	push	{r4, r5, r6, lr}
 8002aba:	4605      	mov	r5, r0
 8002abc:	b088      	sub	sp, #32
 8002abe:	4608      	mov	r0, r1
 8002ac0:	460c      	mov	r4, r1
 8002ac2:	f7fd fdbd 	bl	8000640 <strlen>
 8002ac6:	4a22      	ldr	r2, [pc, #136]	; (8002b50 <_puts_r+0x98>)
 8002ac8:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002aca:	9404      	str	r4, [sp, #16]
 8002acc:	2601      	movs	r6, #1
 8002ace:	1c44      	adds	r4, r0, #1
 8002ad0:	a904      	add	r1, sp, #16
 8002ad2:	9206      	str	r2, [sp, #24]
 8002ad4:	2202      	movs	r2, #2
 8002ad6:	9403      	str	r4, [sp, #12]
 8002ad8:	9005      	str	r0, [sp, #20]
 8002ada:	68ac      	ldr	r4, [r5, #8]
 8002adc:	9607      	str	r6, [sp, #28]
 8002ade:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002ae2:	b31b      	cbz	r3, 8002b2c <_puts_r+0x74>
 8002ae4:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002ae6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002aea:	07ce      	lsls	r6, r1, #31
 8002aec:	b29a      	uxth	r2, r3
 8002aee:	d401      	bmi.n	8002af4 <_puts_r+0x3c>
 8002af0:	0590      	lsls	r0, r2, #22
 8002af2:	d525      	bpl.n	8002b40 <_puts_r+0x88>
 8002af4:	0491      	lsls	r1, r2, #18
 8002af6:	d406      	bmi.n	8002b06 <_puts_r+0x4e>
 8002af8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8002afa:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002afe:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002b02:	81a3      	strh	r3, [r4, #12]
 8002b04:	6662      	str	r2, [r4, #100]	; 0x64
 8002b06:	4628      	mov	r0, r5
 8002b08:	aa01      	add	r2, sp, #4
 8002b0a:	4621      	mov	r1, r4
 8002b0c:	f003 f860 	bl	8005bd0 <__sfvwrite_r>
 8002b10:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002b12:	2800      	cmp	r0, #0
 8002b14:	bf0c      	ite	eq
 8002b16:	250a      	moveq	r5, #10
 8002b18:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002b1c:	07da      	lsls	r2, r3, #31
 8002b1e:	d402      	bmi.n	8002b26 <_puts_r+0x6e>
 8002b20:	89a3      	ldrh	r3, [r4, #12]
 8002b22:	059b      	lsls	r3, r3, #22
 8002b24:	d506      	bpl.n	8002b34 <_puts_r+0x7c>
 8002b26:	4628      	mov	r0, r5
 8002b28:	b008      	add	sp, #32
 8002b2a:	bd70      	pop	{r4, r5, r6, pc}
 8002b2c:	4628      	mov	r0, r5
 8002b2e:	f002 feb9 	bl	80058a4 <__sinit>
 8002b32:	e7d7      	b.n	8002ae4 <_puts_r+0x2c>
 8002b34:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002b36:	f003 fa07 	bl	8005f48 <__retarget_lock_release_recursive>
 8002b3a:	4628      	mov	r0, r5
 8002b3c:	b008      	add	sp, #32
 8002b3e:	bd70      	pop	{r4, r5, r6, pc}
 8002b40:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002b42:	f003 f9ff 	bl	8005f44 <__retarget_lock_acquire_recursive>
 8002b46:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002b4a:	b29a      	uxth	r2, r3
 8002b4c:	e7d2      	b.n	8002af4 <_puts_r+0x3c>
 8002b4e:	bf00      	nop
 8002b50:	08007864 	.word	0x08007864

08002b54 <puts>:
 8002b54:	4b02      	ldr	r3, [pc, #8]	; (8002b60 <puts+0xc>)
 8002b56:	4601      	mov	r1, r0
 8002b58:	6818      	ldr	r0, [r3, #0]
 8002b5a:	f7ff bfad 	b.w	8002ab8 <_puts_r>
 8002b5e:	bf00      	nop
 8002b60:	20000018 	.word	0x20000018
 8002b64:	00000000 	.word	0x00000000

08002b68 <_vfprintf_r>:
 8002b68:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002b6c:	b0d7      	sub	sp, #348	; 0x15c
 8002b6e:	461c      	mov	r4, r3
 8002b70:	4689      	mov	r9, r1
 8002b72:	4617      	mov	r7, r2
 8002b74:	4605      	mov	r5, r0
 8002b76:	9003      	str	r0, [sp, #12]
 8002b78:	f003 f9d2 	bl	8005f20 <_localeconv_r>
 8002b7c:	6803      	ldr	r3, [r0, #0]
 8002b7e:	9316      	str	r3, [sp, #88]	; 0x58
 8002b80:	4618      	mov	r0, r3
 8002b82:	f7fd fd5d 	bl	8000640 <strlen>
 8002b86:	9408      	str	r4, [sp, #32]
 8002b88:	9015      	str	r0, [sp, #84]	; 0x54
 8002b8a:	b11d      	cbz	r5, 8002b94 <_vfprintf_r+0x2c>
 8002b8c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002b8e:	2b00      	cmp	r3, #0
 8002b90:	f000 8107 	beq.w	8002da2 <_vfprintf_r+0x23a>
 8002b94:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002b98:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002b9c:	07c8      	lsls	r0, r1, #31
 8002b9e:	b293      	uxth	r3, r2
 8002ba0:	d402      	bmi.n	8002ba8 <_vfprintf_r+0x40>
 8002ba2:	0599      	lsls	r1, r3, #22
 8002ba4:	f140 811f 	bpl.w	8002de6 <_vfprintf_r+0x27e>
 8002ba8:	049e      	lsls	r6, r3, #18
 8002baa:	d40a      	bmi.n	8002bc2 <_vfprintf_r+0x5a>
 8002bac:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002bb0:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002bb4:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002bb8:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002bbc:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002bc0:	b29b      	uxth	r3, r3
 8002bc2:	071d      	lsls	r5, r3, #28
 8002bc4:	f140 80b2 	bpl.w	8002d2c <_vfprintf_r+0x1c4>
 8002bc8:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002bcc:	2a00      	cmp	r2, #0
 8002bce:	f000 80ad 	beq.w	8002d2c <_vfprintf_r+0x1c4>
 8002bd2:	f003 021a 	and.w	r2, r3, #26
 8002bd6:	2a0a      	cmp	r2, #10
 8002bd8:	f000 80c9 	beq.w	8002d6e <_vfprintf_r+0x206>
 8002bdc:	2300      	movs	r3, #0
 8002bde:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002df8 <_vfprintf_r+0x290>
 8002be2:	9310      	str	r3, [sp, #64]	; 0x40
 8002be4:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002be8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002bea:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002bee:	931b      	str	r3, [sp, #108]	; 0x6c
 8002bf0:	9318      	str	r3, [sp, #96]	; 0x60
 8002bf2:	9305      	str	r3, [sp, #20]
 8002bf4:	ab2d      	add	r3, sp, #180	; 0xb4
 8002bf6:	932a      	str	r3, [sp, #168]	; 0xa8
 8002bf8:	469b      	mov	fp, r3
 8002bfa:	783b      	ldrb	r3, [r7, #0]
 8002bfc:	f8cd 901c 	str.w	r9, [sp, #28]
 8002c00:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002c04:	2b00      	cmp	r3, #0
 8002c06:	f000 8259 	beq.w	80030bc <_vfprintf_r+0x554>
 8002c0a:	2b25      	cmp	r3, #37	; 0x25
 8002c0c:	463c      	mov	r4, r7
 8002c0e:	d102      	bne.n	8002c16 <_vfprintf_r+0xae>
 8002c10:	e01d      	b.n	8002c4e <_vfprintf_r+0xe6>
 8002c12:	2b25      	cmp	r3, #37	; 0x25
 8002c14:	d003      	beq.n	8002c1e <_vfprintf_r+0xb6>
 8002c16:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002c1a:	2b00      	cmp	r3, #0
 8002c1c:	d1f9      	bne.n	8002c12 <_vfprintf_r+0xaa>
 8002c1e:	1be5      	subs	r5, r4, r7
 8002c20:	b18d      	cbz	r5, 8002c46 <_vfprintf_r+0xde>
 8002c22:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002c26:	3301      	adds	r3, #1
 8002c28:	442a      	add	r2, r5
 8002c2a:	2b07      	cmp	r3, #7
 8002c2c:	f8cb 7000 	str.w	r7, [fp]
 8002c30:	f8cb 5004 	str.w	r5, [fp, #4]
 8002c34:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002c38:	f300 80ca 	bgt.w	8002dd0 <_vfprintf_r+0x268>
 8002c3c:	f10b 0b08 	add.w	fp, fp, #8
 8002c40:	9b05      	ldr	r3, [sp, #20]
 8002c42:	442b      	add	r3, r5
 8002c44:	9305      	str	r3, [sp, #20]
 8002c46:	7823      	ldrb	r3, [r4, #0]
 8002c48:	2b00      	cmp	r3, #0
 8002c4a:	f000 8237 	beq.w	80030bc <_vfprintf_r+0x554>
 8002c4e:	2300      	movs	r3, #0
 8002c50:	7866      	ldrb	r6, [r4, #1]
 8002c52:	9306      	str	r3, [sp, #24]
 8002c54:	4698      	mov	r8, r3
 8002c56:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002c5a:	f104 0a01 	add.w	sl, r4, #1
 8002c5e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002c62:	252b      	movs	r5, #43	; 0x2b
 8002c64:	f10a 0a01 	add.w	sl, sl, #1
 8002c68:	f1a6 0320 	sub.w	r3, r6, #32
 8002c6c:	2b5a      	cmp	r3, #90	; 0x5a
 8002c6e:	f200 842a 	bhi.w	80034c6 <_vfprintf_r+0x95e>
 8002c72:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002c76:	03aa      	.short	0x03aa
 8002c78:	04280428 	.word	0x04280428
 8002c7c:	0428029c 	.word	0x0428029c
 8002c80:	04280428 	.word	0x04280428
 8002c84:	042802a7 	.word	0x042802a7
 8002c88:	02c60428 	.word	0x02c60428
 8002c8c:	042802d2 	.word	0x042802d2
 8002c90:	02dc02d7 	.word	0x02dc02d7
 8002c94:	02f60428 	.word	0x02f60428
 8002c98:	026d026d 	.word	0x026d026d
 8002c9c:	026d026d 	.word	0x026d026d
 8002ca0:	026d026d 	.word	0x026d026d
 8002ca4:	026d026d 	.word	0x026d026d
 8002ca8:	0428026d 	.word	0x0428026d
 8002cac:	04280428 	.word	0x04280428
 8002cb0:	04280428 	.word	0x04280428
 8002cb4:	04280428 	.word	0x04280428
 8002cb8:	042802fb 	.word	0x042802fb
 8002cbc:	03f3033c 	.word	0x03f3033c
 8002cc0:	02fb02fb 	.word	0x02fb02fb
 8002cc4:	042802fb 	.word	0x042802fb
 8002cc8:	04280428 	.word	0x04280428
 8002ccc:	03ee0428 	.word	0x03ee0428
 8002cd0:	04280428 	.word	0x04280428
 8002cd4:	0428009a 	.word	0x0428009a
 8002cd8:	04280428 	.word	0x04280428
 8002cdc:	04280350 	.word	0x04280350
 8002ce0:	04280379 	.word	0x04280379
 8002ce4:	03900428 	.word	0x03900428
 8002ce8:	04280428 	.word	0x04280428
 8002cec:	04280428 	.word	0x04280428
 8002cf0:	04280428 	.word	0x04280428
 8002cf4:	04280428 	.word	0x04280428
 8002cf8:	042802fb 	.word	0x042802fb
 8002cfc:	00c5033c 	.word	0x00c5033c
 8002d00:	02fb02fb 	.word	0x02fb02fb
 8002d04:	03d102fb 	.word	0x03d102fb
 8002d08:	007000c5 	.word	0x007000c5
 8002d0c:	03b50428 	.word	0x03b50428
 8002d10:	03c20428 	.word	0x03c20428
 8002d14:	03de009c 	.word	0x03de009c
 8002d18:	04280070 	.word	0x04280070
 8002d1c:	00720350 	.word	0x00720350
 8002d20:	0428022c 	.word	0x0428022c
 8002d24:	027c0428 	.word	0x027c0428
 8002d28:	00720428 	.word	0x00720428
 8002d2c:	4649      	mov	r1, r9
 8002d2e:	9803      	ldr	r0, [sp, #12]
 8002d30:	f001 fc9a 	bl	8004668 <__swsetup_r>
 8002d34:	b1a0      	cbz	r0, 8002d60 <_vfprintf_r+0x1f8>
 8002d36:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002d3a:	07d8      	lsls	r0, r3, #31
 8002d3c:	d404      	bmi.n	8002d48 <_vfprintf_r+0x1e0>
 8002d3e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002d42:	0599      	lsls	r1, r3, #22
 8002d44:	f140 83b7 	bpl.w	80034b6 <_vfprintf_r+0x94e>
 8002d48:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002d4c:	9305      	str	r3, [sp, #20]
 8002d4e:	9805      	ldr	r0, [sp, #20]
 8002d50:	b057      	add	sp, #348	; 0x15c
 8002d52:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002d56:	f048 0820 	orr.w	r8, r8, #32
 8002d5a:	f89a 6000 	ldrb.w	r6, [sl]
 8002d5e:	e781      	b.n	8002c64 <_vfprintf_r+0xfc>
 8002d60:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002d64:	f003 021a 	and.w	r2, r3, #26
 8002d68:	2a0a      	cmp	r2, #10
 8002d6a:	f47f af37 	bne.w	8002bdc <_vfprintf_r+0x74>
 8002d6e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002d72:	2a00      	cmp	r2, #0
 8002d74:	f6ff af32 	blt.w	8002bdc <_vfprintf_r+0x74>
 8002d78:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002d7c:	07d2      	lsls	r2, r2, #31
 8002d7e:	d405      	bmi.n	8002d8c <_vfprintf_r+0x224>
 8002d80:	059b      	lsls	r3, r3, #22
 8002d82:	d403      	bmi.n	8002d8c <_vfprintf_r+0x224>
 8002d84:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002d88:	f003 f8de 	bl	8005f48 <__retarget_lock_release_recursive>
 8002d8c:	4623      	mov	r3, r4
 8002d8e:	463a      	mov	r2, r7
 8002d90:	4649      	mov	r1, r9
 8002d92:	9803      	ldr	r0, [sp, #12]
 8002d94:	f001 fc26 	bl	80045e4 <__sbprintf>
 8002d98:	9005      	str	r0, [sp, #20]
 8002d9a:	9805      	ldr	r0, [sp, #20]
 8002d9c:	b057      	add	sp, #348	; 0x15c
 8002d9e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002da2:	9803      	ldr	r0, [sp, #12]
 8002da4:	f002 fd7e 	bl	80058a4 <__sinit>
 8002da8:	e6f4      	b.n	8002b94 <_vfprintf_r+0x2c>
 8002daa:	f048 0810 	orr.w	r8, r8, #16
 8002dae:	f018 0f20 	tst.w	r8, #32
 8002db2:	f000 836c 	beq.w	800348e <_vfprintf_r+0x926>
 8002db6:	9c08      	ldr	r4, [sp, #32]
 8002db8:	3407      	adds	r4, #7
 8002dba:	f024 0307 	bic.w	r3, r4, #7
 8002dbe:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002dc2:	f103 0208 	add.w	r2, r3, #8
 8002dc6:	9208      	str	r2, [sp, #32]
 8002dc8:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002dcc:	2200      	movs	r2, #0
 8002dce:	e18c      	b.n	80030ea <_vfprintf_r+0x582>
 8002dd0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002dd2:	9907      	ldr	r1, [sp, #28]
 8002dd4:	9803      	ldr	r0, [sp, #12]
 8002dd6:	f004 f9f5 	bl	80071c4 <__sprint_r>
 8002dda:	2800      	cmp	r0, #0
 8002ddc:	f041 8376 	bne.w	80044cc <_vfprintf_r+0x1964>
 8002de0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002de4:	e72c      	b.n	8002c40 <_vfprintf_r+0xd8>
 8002de6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002dea:	f003 f8ab 	bl	8005f44 <__retarget_lock_acquire_recursive>
 8002dee:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002df2:	b293      	uxth	r3, r2
 8002df4:	e6d8      	b.n	8002ba8 <_vfprintf_r+0x40>
 8002df6:	bf00      	nop
	...
 8002e00:	4643      	mov	r3, r8
 8002e02:	069f      	lsls	r7, r3, #26
 8002e04:	f140 832f 	bpl.w	8003466 <_vfprintf_r+0x8fe>
 8002e08:	9c08      	ldr	r4, [sp, #32]
 8002e0a:	3407      	adds	r4, #7
 8002e0c:	f024 0407 	bic.w	r4, r4, #7
 8002e10:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002e14:	f104 0208 	add.w	r2, r4, #8
 8002e18:	9208      	str	r2, [sp, #32]
 8002e1a:	4604      	mov	r4, r0
 8002e1c:	460d      	mov	r5, r1
 8002e1e:	2800      	cmp	r0, #0
 8002e20:	f171 0200 	sbcs.w	r2, r1, #0
 8002e24:	da05      	bge.n	8002e32 <_vfprintf_r+0x2ca>
 8002e26:	222d      	movs	r2, #45	; 0x2d
 8002e28:	4264      	negs	r4, r4
 8002e2a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002e2e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002e32:	aa56      	add	r2, sp, #344	; 0x158
 8002e34:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002e38:	9204      	str	r2, [sp, #16]
 8002e3a:	f000 84b2 	beq.w	80037a2 <_vfprintf_r+0xc3a>
 8002e3e:	2201      	movs	r2, #1
 8002e40:	ea54 0105 	orrs.w	r1, r4, r5
 8002e44:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002e48:	f040 8159 	bne.w	80030fe <_vfprintf_r+0x596>
 8002e4c:	f1b9 0f00 	cmp.w	r9, #0
 8002e50:	f040 8619 	bne.w	8003a86 <_vfprintf_r+0xf1e>
 8002e54:	2a00      	cmp	r2, #0
 8002e56:	f040 8508 	bne.w	800386a <_vfprintf_r+0xd02>
 8002e5a:	f013 0301 	ands.w	r3, r3, #1
 8002e5e:	af56      	add	r7, sp, #344	; 0x158
 8002e60:	9309      	str	r3, [sp, #36]	; 0x24
 8002e62:	d002      	beq.n	8002e6a <_vfprintf_r+0x302>
 8002e64:	2330      	movs	r3, #48	; 0x30
 8002e66:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002e6a:	2300      	movs	r3, #0
 8002e6c:	930a      	str	r3, [sp, #40]	; 0x28
 8002e6e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002e70:	9314      	str	r3, [sp, #80]	; 0x50
 8002e72:	9311      	str	r3, [sp, #68]	; 0x44
 8002e74:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002e76:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002e7a:	454b      	cmp	r3, r9
 8002e7c:	bfb8      	it	lt
 8002e7e:	464b      	movlt	r3, r9
 8002e80:	9304      	str	r3, [sp, #16]
 8002e82:	b112      	cbz	r2, 8002e8a <_vfprintf_r+0x322>
 8002e84:	9b04      	ldr	r3, [sp, #16]
 8002e86:	3301      	adds	r3, #1
 8002e88:	9304      	str	r3, [sp, #16]
 8002e8a:	f018 0302 	ands.w	r3, r8, #2
 8002e8e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002e90:	d002      	beq.n	8002e98 <_vfprintf_r+0x330>
 8002e92:	9b04      	ldr	r3, [sp, #16]
 8002e94:	3302      	adds	r3, #2
 8002e96:	9304      	str	r3, [sp, #16]
 8002e98:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002e9c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002e9e:	930e      	str	r3, [sp, #56]	; 0x38
 8002ea0:	d13f      	bne.n	8002f22 <_vfprintf_r+0x3ba>
 8002ea2:	9b06      	ldr	r3, [sp, #24]
 8002ea4:	9904      	ldr	r1, [sp, #16]
 8002ea6:	1a5d      	subs	r5, r3, r1
 8002ea8:	2d00      	cmp	r5, #0
 8002eaa:	dd3a      	ble.n	8002f22 <_vfprintf_r+0x3ba>
 8002eac:	2d10      	cmp	r5, #16
 8002eae:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002eb0:	dd29      	ble.n	8002f06 <_vfprintf_r+0x39e>
 8002eb2:	4659      	mov	r1, fp
 8002eb4:	4620      	mov	r0, r4
 8002eb6:	9620      	str	r6, [sp, #128]	; 0x80
 8002eb8:	2310      	movs	r3, #16
 8002eba:	9c03      	ldr	r4, [sp, #12]
 8002ebc:	9e07      	ldr	r6, [sp, #28]
 8002ebe:	46bb      	mov	fp, r7
 8002ec0:	e004      	b.n	8002ecc <_vfprintf_r+0x364>
 8002ec2:	3d10      	subs	r5, #16
 8002ec4:	2d10      	cmp	r5, #16
 8002ec6:	f101 0108 	add.w	r1, r1, #8
 8002eca:	dd18      	ble.n	8002efe <_vfprintf_r+0x396>
 8002ecc:	3201      	adds	r2, #1
 8002ece:	4fba      	ldr	r7, [pc, #744]	; (80031b8 <_vfprintf_r+0x650>)
 8002ed0:	3010      	adds	r0, #16
 8002ed2:	2a07      	cmp	r2, #7
 8002ed4:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002ed8:	e9c1 7300 	strd	r7, r3, [r1]
 8002edc:	ddf1      	ble.n	8002ec2 <_vfprintf_r+0x35a>
 8002ede:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ee0:	4631      	mov	r1, r6
 8002ee2:	4620      	mov	r0, r4
 8002ee4:	930c      	str	r3, [sp, #48]	; 0x30
 8002ee6:	f004 f96d 	bl	80071c4 <__sprint_r>
 8002eea:	2800      	cmp	r0, #0
 8002eec:	f040 843d 	bne.w	800376a <_vfprintf_r+0xc02>
 8002ef0:	3d10      	subs	r5, #16
 8002ef2:	2d10      	cmp	r5, #16
 8002ef4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002ef8:	a92d      	add	r1, sp, #180	; 0xb4
 8002efa:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002efc:	dce6      	bgt.n	8002ecc <_vfprintf_r+0x364>
 8002efe:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002f00:	465f      	mov	r7, fp
 8002f02:	4604      	mov	r4, r0
 8002f04:	468b      	mov	fp, r1
 8002f06:	3201      	adds	r2, #1
 8002f08:	4bab      	ldr	r3, [pc, #684]	; (80031b8 <_vfprintf_r+0x650>)
 8002f0a:	442c      	add	r4, r5
 8002f0c:	2a07      	cmp	r2, #7
 8002f0e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002f12:	e9cb 3500 	strd	r3, r5, [fp]
 8002f16:	f300 84ff 	bgt.w	8003918 <_vfprintf_r+0xdb0>
 8002f1a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002f1e:	f10b 0b08 	add.w	fp, fp, #8
 8002f22:	b172      	cbz	r2, 8002f42 <_vfprintf_r+0x3da>
 8002f24:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002f26:	3201      	adds	r2, #1
 8002f28:	3401      	adds	r4, #1
 8002f2a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002f2e:	2101      	movs	r1, #1
 8002f30:	2a07      	cmp	r2, #7
 8002f32:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002f36:	e9cb 0100 	strd	r0, r1, [fp]
 8002f3a:	f300 8418 	bgt.w	800376e <_vfprintf_r+0xc06>
 8002f3e:	f10b 0b08 	add.w	fp, fp, #8
 8002f42:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002f44:	b16b      	cbz	r3, 8002f62 <_vfprintf_r+0x3fa>
 8002f46:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f48:	3301      	adds	r3, #1
 8002f4a:	3402      	adds	r4, #2
 8002f4c:	a923      	add	r1, sp, #140	; 0x8c
 8002f4e:	2202      	movs	r2, #2
 8002f50:	2b07      	cmp	r3, #7
 8002f52:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002f56:	e9cb 1200 	strd	r1, r2, [fp]
 8002f5a:	f300 8415 	bgt.w	8003788 <_vfprintf_r+0xc20>
 8002f5e:	f10b 0b08 	add.w	fp, fp, #8
 8002f62:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002f64:	2b80      	cmp	r3, #128	; 0x80
 8002f66:	f000 8331 	beq.w	80035cc <_vfprintf_r+0xa64>
 8002f6a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002f6c:	eba9 0503 	sub.w	r5, r9, r3
 8002f70:	2d00      	cmp	r5, #0
 8002f72:	dd37      	ble.n	8002fe4 <_vfprintf_r+0x47c>
 8002f74:	2d10      	cmp	r5, #16
 8002f76:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002f78:	4b90      	ldr	r3, [pc, #576]	; (80031bc <_vfprintf_r+0x654>)
 8002f7a:	dd28      	ble.n	8002fce <_vfprintf_r+0x466>
 8002f7c:	4659      	mov	r1, fp
 8002f7e:	4620      	mov	r0, r4
 8002f80:	46bb      	mov	fp, r7
 8002f82:	f04f 0910 	mov.w	r9, #16
 8002f86:	4637      	mov	r7, r6
 8002f88:	461c      	mov	r4, r3
 8002f8a:	9e07      	ldr	r6, [sp, #28]
 8002f8c:	e004      	b.n	8002f98 <_vfprintf_r+0x430>
 8002f8e:	3d10      	subs	r5, #16
 8002f90:	2d10      	cmp	r5, #16
 8002f92:	f101 0108 	add.w	r1, r1, #8
 8002f96:	dd15      	ble.n	8002fc4 <_vfprintf_r+0x45c>
 8002f98:	3201      	adds	r2, #1
 8002f9a:	3010      	adds	r0, #16
 8002f9c:	2a07      	cmp	r2, #7
 8002f9e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002fa2:	e9c1 4900 	strd	r4, r9, [r1]
 8002fa6:	ddf2      	ble.n	8002f8e <_vfprintf_r+0x426>
 8002fa8:	aa2a      	add	r2, sp, #168	; 0xa8
 8002faa:	4631      	mov	r1, r6
 8002fac:	9803      	ldr	r0, [sp, #12]
 8002fae:	f004 f909 	bl	80071c4 <__sprint_r>
 8002fb2:	2800      	cmp	r0, #0
 8002fb4:	f040 83d9 	bne.w	800376a <_vfprintf_r+0xc02>
 8002fb8:	3d10      	subs	r5, #16
 8002fba:	2d10      	cmp	r5, #16
 8002fbc:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002fc0:	a92d      	add	r1, sp, #180	; 0xb4
 8002fc2:	dce9      	bgt.n	8002f98 <_vfprintf_r+0x430>
 8002fc4:	463e      	mov	r6, r7
 8002fc6:	4623      	mov	r3, r4
 8002fc8:	465f      	mov	r7, fp
 8002fca:	4604      	mov	r4, r0
 8002fcc:	468b      	mov	fp, r1
 8002fce:	3201      	adds	r2, #1
 8002fd0:	442c      	add	r4, r5
 8002fd2:	2a07      	cmp	r2, #7
 8002fd4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002fd8:	e9cb 3500 	strd	r3, r5, [fp]
 8002fdc:	f300 83ef 	bgt.w	80037be <_vfprintf_r+0xc56>
 8002fe0:	f10b 0b08 	add.w	fp, fp, #8
 8002fe4:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002fe8:	f040 8280 	bne.w	80034ec <_vfprintf_r+0x984>
 8002fec:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002fee:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002ff0:	f8cb 7000 	str.w	r7, [fp]
 8002ff4:	3301      	adds	r3, #1
 8002ff6:	4414      	add	r4, r2
 8002ff8:	2b07      	cmp	r3, #7
 8002ffa:	942c      	str	r4, [sp, #176]	; 0xb0
 8002ffc:	f8cb 2004 	str.w	r2, [fp, #4]
 8003000:	932b      	str	r3, [sp, #172]	; 0xac
 8003002:	f300 8392 	bgt.w	800372a <_vfprintf_r+0xbc2>
 8003006:	f10b 0b08 	add.w	fp, fp, #8
 800300a:	f018 0f04 	tst.w	r8, #4
 800300e:	d03b      	beq.n	8003088 <_vfprintf_r+0x520>
 8003010:	9b06      	ldr	r3, [sp, #24]
 8003012:	9a04      	ldr	r2, [sp, #16]
 8003014:	1a9d      	subs	r5, r3, r2
 8003016:	2d00      	cmp	r5, #0
 8003018:	dd36      	ble.n	8003088 <_vfprintf_r+0x520>
 800301a:	2d10      	cmp	r5, #16
 800301c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800301e:	dd21      	ble.n	8003064 <_vfprintf_r+0x4fc>
 8003020:	2610      	movs	r6, #16
 8003022:	9f03      	ldr	r7, [sp, #12]
 8003024:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8003028:	e004      	b.n	8003034 <_vfprintf_r+0x4cc>
 800302a:	3d10      	subs	r5, #16
 800302c:	2d10      	cmp	r5, #16
 800302e:	f10b 0b08 	add.w	fp, fp, #8
 8003032:	dd17      	ble.n	8003064 <_vfprintf_r+0x4fc>
 8003034:	3301      	adds	r3, #1
 8003036:	4a60      	ldr	r2, [pc, #384]	; (80031b8 <_vfprintf_r+0x650>)
 8003038:	3410      	adds	r4, #16
 800303a:	2b07      	cmp	r3, #7
 800303c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003040:	e9cb 2600 	strd	r2, r6, [fp]
 8003044:	ddf1      	ble.n	800302a <_vfprintf_r+0x4c2>
 8003046:	aa2a      	add	r2, sp, #168	; 0xa8
 8003048:	4641      	mov	r1, r8
 800304a:	4638      	mov	r0, r7
 800304c:	f004 f8ba 	bl	80071c4 <__sprint_r>
 8003050:	2800      	cmp	r0, #0
 8003052:	f040 856c 	bne.w	8003b2e <_vfprintf_r+0xfc6>
 8003056:	3d10      	subs	r5, #16
 8003058:	2d10      	cmp	r5, #16
 800305a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800305e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003062:	dce7      	bgt.n	8003034 <_vfprintf_r+0x4cc>
 8003064:	3301      	adds	r3, #1
 8003066:	4a54      	ldr	r2, [pc, #336]	; (80031b8 <_vfprintf_r+0x650>)
 8003068:	442c      	add	r4, r5
 800306a:	2b07      	cmp	r3, #7
 800306c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003070:	e9cb 2500 	strd	r2, r5, [fp]
 8003074:	dd08      	ble.n	8003088 <_vfprintf_r+0x520>
 8003076:	aa2a      	add	r2, sp, #168	; 0xa8
 8003078:	9907      	ldr	r1, [sp, #28]
 800307a:	9803      	ldr	r0, [sp, #12]
 800307c:	f004 f8a2 	bl	80071c4 <__sprint_r>
 8003080:	2800      	cmp	r0, #0
 8003082:	f040 82e9 	bne.w	8003658 <_vfprintf_r+0xaf0>
 8003086:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003088:	9904      	ldr	r1, [sp, #16]
 800308a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 800308e:	428a      	cmp	r2, r1
 8003090:	bfac      	ite	ge
 8003092:	189b      	addge	r3, r3, r2
 8003094:	185b      	addlt	r3, r3, r1
 8003096:	9305      	str	r3, [sp, #20]
 8003098:	2c00      	cmp	r4, #0
 800309a:	f040 82d5 	bne.w	8003648 <_vfprintf_r+0xae0>
 800309e:	2300      	movs	r3, #0
 80030a0:	932b      	str	r3, [sp, #172]	; 0xac
 80030a2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80030a4:	b11b      	cbz	r3, 80030ae <_vfprintf_r+0x546>
 80030a6:	990a      	ldr	r1, [sp, #40]	; 0x28
 80030a8:	9803      	ldr	r0, [sp, #12]
 80030aa:	f002 fc9d 	bl	80059e8 <_free_r>
 80030ae:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030b2:	4657      	mov	r7, sl
 80030b4:	783b      	ldrb	r3, [r7, #0]
 80030b6:	2b00      	cmp	r3, #0
 80030b8:	f47f ada7 	bne.w	8002c0a <_vfprintf_r+0xa2>
 80030bc:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80030be:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80030c2:	2b00      	cmp	r3, #0
 80030c4:	f041 80e7 	bne.w	8004296 <_vfprintf_r+0x172e>
 80030c8:	2300      	movs	r3, #0
 80030ca:	932b      	str	r3, [sp, #172]	; 0xac
 80030cc:	e2cb      	b.n	8003666 <_vfprintf_r+0xafe>
 80030ce:	4643      	mov	r3, r8
 80030d0:	069a      	lsls	r2, r3, #26
 80030d2:	f140 814e 	bpl.w	8003372 <_vfprintf_r+0x80a>
 80030d6:	9c08      	ldr	r4, [sp, #32]
 80030d8:	3407      	adds	r4, #7
 80030da:	f024 0207 	bic.w	r2, r4, #7
 80030de:	f102 0108 	add.w	r1, r2, #8
 80030e2:	e9d2 4500 	ldrd	r4, r5, [r2]
 80030e6:	9108      	str	r1, [sp, #32]
 80030e8:	2201      	movs	r2, #1
 80030ea:	2100      	movs	r1, #0
 80030ec:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 80030f0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80030f4:	a956      	add	r1, sp, #344	; 0x158
 80030f6:	9104      	str	r1, [sp, #16]
 80030f8:	f47f aea2 	bne.w	8002e40 <_vfprintf_r+0x2d8>
 80030fc:	4698      	mov	r8, r3
 80030fe:	2a01      	cmp	r2, #1
 8003100:	f000 8350 	beq.w	80037a4 <_vfprintf_r+0xc3c>
 8003104:	2a02      	cmp	r2, #2
 8003106:	f000 831b 	beq.w	8003740 <_vfprintf_r+0xbd8>
 800310a:	a956      	add	r1, sp, #344	; 0x158
 800310c:	e000      	b.n	8003110 <_vfprintf_r+0x5a8>
 800310e:	4639      	mov	r1, r7
 8003110:	08e2      	lsrs	r2, r4, #3
 8003112:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8003116:	08e8      	lsrs	r0, r5, #3
 8003118:	f004 0307 	and.w	r3, r4, #7
 800311c:	4605      	mov	r5, r0
 800311e:	4614      	mov	r4, r2
 8003120:	3330      	adds	r3, #48	; 0x30
 8003122:	ea54 0205 	orrs.w	r2, r4, r5
 8003126:	f801 3c01 	strb.w	r3, [r1, #-1]
 800312a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 800312e:	d1ee      	bne.n	800310e <_vfprintf_r+0x5a6>
 8003130:	f018 0f01 	tst.w	r8, #1
 8003134:	f000 8314 	beq.w	8003760 <_vfprintf_r+0xbf8>
 8003138:	2b30      	cmp	r3, #48	; 0x30
 800313a:	f000 8311 	beq.w	8003760 <_vfprintf_r+0xbf8>
 800313e:	9a04      	ldr	r2, [sp, #16]
 8003140:	3902      	subs	r1, #2
 8003142:	2330      	movs	r3, #48	; 0x30
 8003144:	1a52      	subs	r2, r2, r1
 8003146:	f807 3c01 	strb.w	r3, [r7, #-1]
 800314a:	9209      	str	r2, [sp, #36]	; 0x24
 800314c:	460f      	mov	r7, r1
 800314e:	e68c      	b.n	8002e6a <_vfprintf_r+0x302>
 8003150:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003154:	2200      	movs	r2, #0
 8003156:	f81a 6b01 	ldrb.w	r6, [sl], #1
 800315a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 800315e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8003162:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003166:	2b09      	cmp	r3, #9
 8003168:	d9f5      	bls.n	8003156 <_vfprintf_r+0x5ee>
 800316a:	9206      	str	r2, [sp, #24]
 800316c:	e57c      	b.n	8002c68 <_vfprintf_r+0x100>
 800316e:	4b14      	ldr	r3, [pc, #80]	; (80031c0 <_vfprintf_r+0x658>)
 8003170:	9317      	str	r3, [sp, #92]	; 0x5c
 8003172:	f018 0f20 	tst.w	r8, #32
 8003176:	f000 8114 	beq.w	80033a2 <_vfprintf_r+0x83a>
 800317a:	9c08      	ldr	r4, [sp, #32]
 800317c:	3407      	adds	r4, #7
 800317e:	f024 0307 	bic.w	r3, r4, #7
 8003182:	e9d3 4500 	ldrd	r4, r5, [r3]
 8003186:	f103 0208 	add.w	r2, r3, #8
 800318a:	9208      	str	r2, [sp, #32]
 800318c:	f018 0f01 	tst.w	r8, #1
 8003190:	d009      	beq.n	80031a6 <_vfprintf_r+0x63e>
 8003192:	ea54 0305 	orrs.w	r3, r4, r5
 8003196:	d006      	beq.n	80031a6 <_vfprintf_r+0x63e>
 8003198:	2330      	movs	r3, #48	; 0x30
 800319a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 800319e:	f048 0802 	orr.w	r8, r8, #2
 80031a2:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80031a6:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80031aa:	2202      	movs	r2, #2
 80031ac:	e79d      	b.n	80030ea <_vfprintf_r+0x582>
 80031ae:	f048 0801 	orr.w	r8, r8, #1
 80031b2:	f89a 6000 	ldrb.w	r6, [sl]
 80031b6:	e555      	b.n	8002c64 <_vfprintf_r+0xfc>
 80031b8:	080078ac 	.word	0x080078ac
 80031bc:	080078bc 	.word	0x080078bc
 80031c0:	08007878 	.word	0x08007878
 80031c4:	9e03      	ldr	r6, [sp, #12]
 80031c6:	4630      	mov	r0, r6
 80031c8:	f002 feaa 	bl	8005f20 <_localeconv_r>
 80031cc:	6843      	ldr	r3, [r0, #4]
 80031ce:	9318      	str	r3, [sp, #96]	; 0x60
 80031d0:	4618      	mov	r0, r3
 80031d2:	f7fd fa35 	bl	8000640 <strlen>
 80031d6:	901b      	str	r0, [sp, #108]	; 0x6c
 80031d8:	4604      	mov	r4, r0
 80031da:	4630      	mov	r0, r6
 80031dc:	f002 fea0 	bl	8005f20 <_localeconv_r>
 80031e0:	6883      	ldr	r3, [r0, #8]
 80031e2:	931a      	str	r3, [sp, #104]	; 0x68
 80031e4:	2c00      	cmp	r4, #0
 80031e6:	f43f adb8 	beq.w	8002d5a <_vfprintf_r+0x1f2>
 80031ea:	f89a 6000 	ldrb.w	r6, [sl]
 80031ee:	2b00      	cmp	r3, #0
 80031f0:	f43f ad38 	beq.w	8002c64 <_vfprintf_r+0xfc>
 80031f4:	781b      	ldrb	r3, [r3, #0]
 80031f6:	2b00      	cmp	r3, #0
 80031f8:	f43f ad34 	beq.w	8002c64 <_vfprintf_r+0xfc>
 80031fc:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8003200:	e530      	b.n	8002c64 <_vfprintf_r+0xfc>
 8003202:	9b08      	ldr	r3, [sp, #32]
 8003204:	f89a 6000 	ldrb.w	r6, [sl]
 8003208:	681a      	ldr	r2, [r3, #0]
 800320a:	9206      	str	r2, [sp, #24]
 800320c:	2a00      	cmp	r2, #0
 800320e:	f103 0304 	add.w	r3, r3, #4
 8003212:	f2c0 8697 	blt.w	8003f44 <_vfprintf_r+0x13dc>
 8003216:	9308      	str	r3, [sp, #32]
 8003218:	e524      	b.n	8002c64 <_vfprintf_r+0xfc>
 800321a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 800321e:	f89a 6000 	ldrb.w	r6, [sl]
 8003222:	e51f      	b.n	8002c64 <_vfprintf_r+0xfc>
 8003224:	f89a 6000 	ldrb.w	r6, [sl]
 8003228:	f048 0804 	orr.w	r8, r8, #4
 800322c:	e51a      	b.n	8002c64 <_vfprintf_r+0xfc>
 800322e:	f89a 6000 	ldrb.w	r6, [sl]
 8003232:	2e2a      	cmp	r6, #42	; 0x2a
 8003234:	f10a 0201 	add.w	r2, sl, #1
 8003238:	f001 81b0 	beq.w	800459c <_vfprintf_r+0x1a34>
 800323c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003240:	2b09      	cmp	r3, #9
 8003242:	4692      	mov	sl, r2
 8003244:	f04f 0900 	mov.w	r9, #0
 8003248:	f63f ad0e 	bhi.w	8002c68 <_vfprintf_r+0x100>
 800324c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003250:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8003254:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8003258:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800325c:	2b09      	cmp	r3, #9
 800325e:	d9f5      	bls.n	800324c <_vfprintf_r+0x6e4>
 8003260:	e502      	b.n	8002c68 <_vfprintf_r+0x100>
 8003262:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8003266:	f89a 6000 	ldrb.w	r6, [sl]
 800326a:	e4fb      	b.n	8002c64 <_vfprintf_r+0xfc>
 800326c:	9c08      	ldr	r4, [sp, #32]
 800326e:	3407      	adds	r4, #7
 8003270:	f024 0407 	bic.w	r4, r4, #7
 8003274:	ed94 7b00 	vldr	d7, [r4]
 8003278:	ec52 1b17 	vmov	r1, r2, d7
 800327c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8003280:	931d      	str	r3, [sp, #116]	; 0x74
 8003282:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8003286:	3408      	adds	r4, #8
 8003288:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800328c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003290:	4bba      	ldr	r3, [pc, #744]	; (800357c <_vfprintf_r+0xa14>)
 8003292:	9408      	str	r4, [sp, #32]
 8003294:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003298:	f7fd fee8 	bl	800106c <__aeabi_dcmpun>
 800329c:	2800      	cmp	r0, #0
 800329e:	f040 846f 	bne.w	8003b80 <_vfprintf_r+0x1018>
 80032a2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80032a6:	4bb5      	ldr	r3, [pc, #724]	; (800357c <_vfprintf_r+0xa14>)
 80032a8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80032ac:	f7fd fec0 	bl	8001030 <__aeabi_dcmple>
 80032b0:	2800      	cmp	r0, #0
 80032b2:	f040 8465 	bne.w	8003b80 <_vfprintf_r+0x1018>
 80032b6:	2200      	movs	r2, #0
 80032b8:	2300      	movs	r3, #0
 80032ba:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80032be:	f7fd fead 	bl	800101c <__aeabi_dcmplt>
 80032c2:	2800      	cmp	r0, #0
 80032c4:	f040 855b 	bne.w	8003d7e <_vfprintf_r+0x1216>
 80032c8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80032cc:	4fac      	ldr	r7, [pc, #688]	; (8003580 <_vfprintf_r+0xa18>)
 80032ce:	4bad      	ldr	r3, [pc, #692]	; (8003584 <_vfprintf_r+0xa1c>)
 80032d0:	2000      	movs	r0, #0
 80032d2:	2103      	movs	r1, #3
 80032d4:	9104      	str	r1, [sp, #16]
 80032d6:	900a      	str	r0, [sp, #40]	; 0x28
 80032d8:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 80032dc:	2e47      	cmp	r6, #71	; 0x47
 80032de:	bfd8      	it	le
 80032e0:	461f      	movle	r7, r3
 80032e2:	9109      	str	r1, [sp, #36]	; 0x24
 80032e4:	4681      	mov	r9, r0
 80032e6:	900f      	str	r0, [sp, #60]	; 0x3c
 80032e8:	9014      	str	r0, [sp, #80]	; 0x50
 80032ea:	9011      	str	r0, [sp, #68]	; 0x44
 80032ec:	e5c9      	b.n	8002e82 <_vfprintf_r+0x31a>
 80032ee:	9808      	ldr	r0, [sp, #32]
 80032f0:	2300      	movs	r3, #0
 80032f2:	6801      	ldr	r1, [r0, #0]
 80032f4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80032f8:	461a      	mov	r2, r3
 80032fa:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 80032fe:	2301      	movs	r3, #1
 8003300:	1d01      	adds	r1, r0, #4
 8003302:	9304      	str	r3, [sp, #16]
 8003304:	920a      	str	r2, [sp, #40]	; 0x28
 8003306:	4691      	mov	r9, r2
 8003308:	920f      	str	r2, [sp, #60]	; 0x3c
 800330a:	9214      	str	r2, [sp, #80]	; 0x50
 800330c:	9211      	str	r2, [sp, #68]	; 0x44
 800330e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8003312:	af3d      	add	r7, sp, #244	; 0xf4
 8003314:	e5b9      	b.n	8002e8a <_vfprintf_r+0x322>
 8003316:	9b08      	ldr	r3, [sp, #32]
 8003318:	681f      	ldr	r7, [r3, #0]
 800331a:	2500      	movs	r5, #0
 800331c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003320:	1d1c      	adds	r4, r3, #4
 8003322:	2f00      	cmp	r7, #0
 8003324:	f000 8639 	beq.w	8003f9a <_vfprintf_r+0x1432>
 8003328:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800332c:	f000 8711 	beq.w	8004152 <_vfprintf_r+0x15ea>
 8003330:	464a      	mov	r2, r9
 8003332:	4629      	mov	r1, r5
 8003334:	4638      	mov	r0, r7
 8003336:	f7fd f9f3 	bl	8000720 <memchr>
 800333a:	900a      	str	r0, [sp, #40]	; 0x28
 800333c:	2800      	cmp	r0, #0
 800333e:	f000 85e7 	beq.w	8003f10 <_vfprintf_r+0x13a8>
 8003342:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003344:	1bdb      	subs	r3, r3, r7
 8003346:	9309      	str	r3, [sp, #36]	; 0x24
 8003348:	46a9      	mov	r9, r5
 800334a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800334e:	9408      	str	r4, [sp, #32]
 8003350:	9304      	str	r3, [sp, #16]
 8003352:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003356:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 800335a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 800335e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8003362:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003366:	e58c      	b.n	8002e82 <_vfprintf_r+0x31a>
 8003368:	f048 0310 	orr.w	r3, r8, #16
 800336c:	069a      	lsls	r2, r3, #26
 800336e:	f53f aeb2 	bmi.w	80030d6 <_vfprintf_r+0x56e>
 8003372:	9a08      	ldr	r2, [sp, #32]
 8003374:	06df      	lsls	r7, r3, #27
 8003376:	f102 0104 	add.w	r1, r2, #4
 800337a:	f100 837e 	bmi.w	8003a7a <_vfprintf_r+0xf12>
 800337e:	065d      	lsls	r5, r3, #25
 8003380:	9a08      	ldr	r2, [sp, #32]
 8003382:	f100 84e4 	bmi.w	8003d4e <_vfprintf_r+0x11e6>
 8003386:	059c      	lsls	r4, r3, #22
 8003388:	f140 8377 	bpl.w	8003a7a <_vfprintf_r+0xf12>
 800338c:	7814      	ldrb	r4, [r2, #0]
 800338e:	9108      	str	r1, [sp, #32]
 8003390:	2500      	movs	r5, #0
 8003392:	2201      	movs	r2, #1
 8003394:	e6a9      	b.n	80030ea <_vfprintf_r+0x582>
 8003396:	4b7c      	ldr	r3, [pc, #496]	; (8003588 <_vfprintf_r+0xa20>)
 8003398:	9317      	str	r3, [sp, #92]	; 0x5c
 800339a:	f018 0f20 	tst.w	r8, #32
 800339e:	f47f aeec 	bne.w	800317a <_vfprintf_r+0x612>
 80033a2:	9a08      	ldr	r2, [sp, #32]
 80033a4:	f018 0f10 	tst.w	r8, #16
 80033a8:	f102 0304 	add.w	r3, r2, #4
 80033ac:	f040 8354 	bne.w	8003a58 <_vfprintf_r+0xef0>
 80033b0:	f018 0f40 	tst.w	r8, #64	; 0x40
 80033b4:	9a08      	ldr	r2, [sp, #32]
 80033b6:	f040 84d0 	bne.w	8003d5a <_vfprintf_r+0x11f2>
 80033ba:	f418 7f00 	tst.w	r8, #512	; 0x200
 80033be:	f000 834b 	beq.w	8003a58 <_vfprintf_r+0xef0>
 80033c2:	7814      	ldrb	r4, [r2, #0]
 80033c4:	9308      	str	r3, [sp, #32]
 80033c6:	2500      	movs	r5, #0
 80033c8:	e6e0      	b.n	800318c <_vfprintf_r+0x624>
 80033ca:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 80033ce:	f89a 6000 	ldrb.w	r6, [sl]
 80033d2:	2b00      	cmp	r3, #0
 80033d4:	f47f ac46 	bne.w	8002c64 <_vfprintf_r+0xfc>
 80033d8:	2320      	movs	r3, #32
 80033da:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80033de:	e441      	b.n	8002c64 <_vfprintf_r+0xfc>
 80033e0:	f89a 6000 	ldrb.w	r6, [sl]
 80033e4:	2e6c      	cmp	r6, #108	; 0x6c
 80033e6:	bf03      	ittte	eq
 80033e8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80033ec:	f048 0820 	orreq.w	r8, r8, #32
 80033f0:	f10a 0a01 	addeq.w	sl, sl, #1
 80033f4:	f048 0810 	orrne.w	r8, r8, #16
 80033f8:	e434      	b.n	8002c64 <_vfprintf_r+0xfc>
 80033fa:	9a08      	ldr	r2, [sp, #32]
 80033fc:	f018 0f20 	tst.w	r8, #32
 8003400:	f852 3b04 	ldr.w	r3, [r2], #4
 8003404:	9208      	str	r2, [sp, #32]
 8003406:	f000 83a1 	beq.w	8003b4c <_vfprintf_r+0xfe4>
 800340a:	9a05      	ldr	r2, [sp, #20]
 800340c:	4610      	mov	r0, r2
 800340e:	17d1      	asrs	r1, r2, #31
 8003410:	e9c3 0100 	strd	r0, r1, [r3]
 8003414:	4657      	mov	r7, sl
 8003416:	e64d      	b.n	80030b4 <_vfprintf_r+0x54c>
 8003418:	f89a 6000 	ldrb.w	r6, [sl]
 800341c:	2e68      	cmp	r6, #104	; 0x68
 800341e:	bf03      	ittte	eq
 8003420:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8003424:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003428:	f10a 0a01 	addeq.w	sl, sl, #1
 800342c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8003430:	e418      	b.n	8002c64 <_vfprintf_r+0xfc>
 8003432:	9908      	ldr	r1, [sp, #32]
 8003434:	4b55      	ldr	r3, [pc, #340]	; (800358c <_vfprintf_r+0xa24>)
 8003436:	680c      	ldr	r4, [r1, #0]
 8003438:	9317      	str	r3, [sp, #92]	; 0x5c
 800343a:	f647 0230 	movw	r2, #30768	; 0x7830
 800343e:	3104      	adds	r1, #4
 8003440:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8003444:	f048 0302 	orr.w	r3, r8, #2
 8003448:	9108      	str	r1, [sp, #32]
 800344a:	2500      	movs	r5, #0
 800344c:	2202      	movs	r2, #2
 800344e:	2678      	movs	r6, #120	; 0x78
 8003450:	e64b      	b.n	80030ea <_vfprintf_r+0x582>
 8003452:	f048 0808 	orr.w	r8, r8, #8
 8003456:	f89a 6000 	ldrb.w	r6, [sl]
 800345a:	e403      	b.n	8002c64 <_vfprintf_r+0xfc>
 800345c:	f048 0310 	orr.w	r3, r8, #16
 8003460:	069f      	lsls	r7, r3, #26
 8003462:	f53f acd1 	bmi.w	8002e08 <_vfprintf_r+0x2a0>
 8003466:	9908      	ldr	r1, [sp, #32]
 8003468:	06dd      	lsls	r5, r3, #27
 800346a:	f101 0204 	add.w	r2, r1, #4
 800346e:	f100 82fd 	bmi.w	8003a6c <_vfprintf_r+0xf04>
 8003472:	065c      	lsls	r4, r3, #25
 8003474:	9908      	ldr	r1, [sp, #32]
 8003476:	f100 8475 	bmi.w	8003d64 <_vfprintf_r+0x11fc>
 800347a:	0598      	lsls	r0, r3, #22
 800347c:	f140 82f6 	bpl.w	8003a6c <_vfprintf_r+0xf04>
 8003480:	f991 4000 	ldrsb.w	r4, [r1]
 8003484:	9208      	str	r2, [sp, #32]
 8003486:	17e5      	asrs	r5, r4, #31
 8003488:	4620      	mov	r0, r4
 800348a:	4629      	mov	r1, r5
 800348c:	e4c7      	b.n	8002e1e <_vfprintf_r+0x2b6>
 800348e:	9a08      	ldr	r2, [sp, #32]
 8003490:	f018 0f10 	tst.w	r8, #16
 8003494:	f102 0304 	add.w	r3, r2, #4
 8003498:	f040 82e3 	bne.w	8003a62 <_vfprintf_r+0xefa>
 800349c:	f018 0f40 	tst.w	r8, #64	; 0x40
 80034a0:	9a08      	ldr	r2, [sp, #32]
 80034a2:	f040 8467 	bne.w	8003d74 <_vfprintf_r+0x120c>
 80034a6:	f418 7f00 	tst.w	r8, #512	; 0x200
 80034aa:	f000 82da 	beq.w	8003a62 <_vfprintf_r+0xefa>
 80034ae:	7814      	ldrb	r4, [r2, #0]
 80034b0:	9308      	str	r3, [sp, #32]
 80034b2:	2500      	movs	r5, #0
 80034b4:	e488      	b.n	8002dc8 <_vfprintf_r+0x260>
 80034b6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80034ba:	f002 fd45 	bl	8005f48 <__retarget_lock_release_recursive>
 80034be:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80034c2:	9305      	str	r3, [sp, #20]
 80034c4:	e443      	b.n	8002d4e <_vfprintf_r+0x1e6>
 80034c6:	2e00      	cmp	r6, #0
 80034c8:	f43f adf8 	beq.w	80030bc <_vfprintf_r+0x554>
 80034cc:	2300      	movs	r3, #0
 80034ce:	2101      	movs	r1, #1
 80034d0:	461a      	mov	r2, r3
 80034d2:	9104      	str	r1, [sp, #16]
 80034d4:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 80034d8:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80034dc:	930a      	str	r3, [sp, #40]	; 0x28
 80034de:	4699      	mov	r9, r3
 80034e0:	930f      	str	r3, [sp, #60]	; 0x3c
 80034e2:	9314      	str	r3, [sp, #80]	; 0x50
 80034e4:	9311      	str	r3, [sp, #68]	; 0x44
 80034e6:	9109      	str	r1, [sp, #36]	; 0x24
 80034e8:	af3d      	add	r7, sp, #244	; 0xf4
 80034ea:	e4ce      	b.n	8002e8a <_vfprintf_r+0x322>
 80034ec:	2e65      	cmp	r6, #101	; 0x65
 80034ee:	f340 80ca 	ble.w	8003686 <_vfprintf_r+0xb1e>
 80034f2:	2200      	movs	r2, #0
 80034f4:	2300      	movs	r3, #0
 80034f6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80034fa:	f7fd fd85 	bl	8001008 <__aeabi_dcmpeq>
 80034fe:	2800      	cmp	r0, #0
 8003500:	f000 8169 	beq.w	80037d6 <_vfprintf_r+0xc6e>
 8003504:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003506:	4a22      	ldr	r2, [pc, #136]	; (8003590 <_vfprintf_r+0xa28>)
 8003508:	f8cb 2000 	str.w	r2, [fp]
 800350c:	3301      	adds	r3, #1
 800350e:	3401      	adds	r4, #1
 8003510:	2201      	movs	r2, #1
 8003512:	2b07      	cmp	r3, #7
 8003514:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003518:	f8cb 2004 	str.w	r2, [fp, #4]
 800351c:	f300 8406 	bgt.w	8003d2c <_vfprintf_r+0x11c4>
 8003520:	f10b 0b08 	add.w	fp, fp, #8
 8003524:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003526:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003528:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800352a:	4293      	cmp	r3, r2
 800352c:	db03      	blt.n	8003536 <_vfprintf_r+0x9ce>
 800352e:	f018 0f01 	tst.w	r8, #1
 8003532:	f43f ad6a 	beq.w	800300a <_vfprintf_r+0x4a2>
 8003536:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003538:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800353a:	f8cb 2000 	str.w	r2, [fp]
 800353e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003540:	f8cb 2004 	str.w	r2, [fp, #4]
 8003544:	3301      	adds	r3, #1
 8003546:	4414      	add	r4, r2
 8003548:	2b07      	cmp	r3, #7
 800354a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800354e:	f300 8517 	bgt.w	8003f80 <_vfprintf_r+0x1418>
 8003552:	f10b 0b08 	add.w	fp, fp, #8
 8003556:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003558:	1e5d      	subs	r5, r3, #1
 800355a:	2d00      	cmp	r5, #0
 800355c:	f77f ad55 	ble.w	800300a <_vfprintf_r+0x4a2>
 8003560:	2d10      	cmp	r5, #16
 8003562:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003564:	4b0b      	ldr	r3, [pc, #44]	; (8003594 <_vfprintf_r+0xa2c>)
 8003566:	f340 82e7 	ble.w	8003b38 <_vfprintf_r+0xfd0>
 800356a:	4619      	mov	r1, r3
 800356c:	2610      	movs	r6, #16
 800356e:	4623      	mov	r3, r4
 8003570:	9f03      	ldr	r7, [sp, #12]
 8003572:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003576:	460c      	mov	r4, r1
 8003578:	e014      	b.n	80035a4 <_vfprintf_r+0xa3c>
 800357a:	bf00      	nop
 800357c:	7fefffff 	.word	0x7fefffff
 8003580:	0800786c 	.word	0x0800786c
 8003584:	08007868 	.word	0x08007868
 8003588:	0800788c 	.word	0x0800788c
 800358c:	08007878 	.word	0x08007878
 8003590:	080078a8 	.word	0x080078a8
 8003594:	080078bc 	.word	0x080078bc
 8003598:	f10b 0b08 	add.w	fp, fp, #8
 800359c:	3d10      	subs	r5, #16
 800359e:	2d10      	cmp	r5, #16
 80035a0:	f340 82c7 	ble.w	8003b32 <_vfprintf_r+0xfca>
 80035a4:	3201      	adds	r2, #1
 80035a6:	3310      	adds	r3, #16
 80035a8:	2a07      	cmp	r2, #7
 80035aa:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80035ae:	e9cb 4600 	strd	r4, r6, [fp]
 80035b2:	ddf1      	ble.n	8003598 <_vfprintf_r+0xa30>
 80035b4:	aa2a      	add	r2, sp, #168	; 0xa8
 80035b6:	4649      	mov	r1, r9
 80035b8:	4638      	mov	r0, r7
 80035ba:	f003 fe03 	bl	80071c4 <__sprint_r>
 80035be:	2800      	cmp	r0, #0
 80035c0:	d14c      	bne.n	800365c <_vfprintf_r+0xaf4>
 80035c2:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80035c6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035ca:	e7e7      	b.n	800359c <_vfprintf_r+0xa34>
 80035cc:	9b06      	ldr	r3, [sp, #24]
 80035ce:	9a04      	ldr	r2, [sp, #16]
 80035d0:	1a9d      	subs	r5, r3, r2
 80035d2:	2d00      	cmp	r5, #0
 80035d4:	f77f acc9 	ble.w	8002f6a <_vfprintf_r+0x402>
 80035d8:	2d10      	cmp	r5, #16
 80035da:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035dc:	4bbc      	ldr	r3, [pc, #752]	; (80038d0 <_vfprintf_r+0xd68>)
 80035de:	dd27      	ble.n	8003630 <_vfprintf_r+0xac8>
 80035e0:	4659      	mov	r1, fp
 80035e2:	4620      	mov	r0, r4
 80035e4:	46bb      	mov	fp, r7
 80035e6:	461c      	mov	r4, r3
 80035e8:	4637      	mov	r7, r6
 80035ea:	9e07      	ldr	r6, [sp, #28]
 80035ec:	e004      	b.n	80035f8 <_vfprintf_r+0xa90>
 80035ee:	3d10      	subs	r5, #16
 80035f0:	2d10      	cmp	r5, #16
 80035f2:	f101 0108 	add.w	r1, r1, #8
 80035f6:	dd16      	ble.n	8003626 <_vfprintf_r+0xabe>
 80035f8:	3201      	adds	r2, #1
 80035fa:	3010      	adds	r0, #16
 80035fc:	2310      	movs	r3, #16
 80035fe:	2a07      	cmp	r2, #7
 8003600:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003604:	600c      	str	r4, [r1, #0]
 8003606:	604b      	str	r3, [r1, #4]
 8003608:	ddf1      	ble.n	80035ee <_vfprintf_r+0xa86>
 800360a:	aa2a      	add	r2, sp, #168	; 0xa8
 800360c:	4631      	mov	r1, r6
 800360e:	9803      	ldr	r0, [sp, #12]
 8003610:	f003 fdd8 	bl	80071c4 <__sprint_r>
 8003614:	2800      	cmp	r0, #0
 8003616:	f040 80a8 	bne.w	800376a <_vfprintf_r+0xc02>
 800361a:	3d10      	subs	r5, #16
 800361c:	2d10      	cmp	r5, #16
 800361e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003622:	a92d      	add	r1, sp, #180	; 0xb4
 8003624:	dce8      	bgt.n	80035f8 <_vfprintf_r+0xa90>
 8003626:	463e      	mov	r6, r7
 8003628:	4623      	mov	r3, r4
 800362a:	465f      	mov	r7, fp
 800362c:	4604      	mov	r4, r0
 800362e:	468b      	mov	fp, r1
 8003630:	3201      	adds	r2, #1
 8003632:	442c      	add	r4, r5
 8003634:	2a07      	cmp	r2, #7
 8003636:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800363a:	e9cb 3500 	strd	r3, r5, [fp]
 800363e:	f300 8292 	bgt.w	8003b66 <_vfprintf_r+0xffe>
 8003642:	f10b 0b08 	add.w	fp, fp, #8
 8003646:	e490      	b.n	8002f6a <_vfprintf_r+0x402>
 8003648:	aa2a      	add	r2, sp, #168	; 0xa8
 800364a:	9907      	ldr	r1, [sp, #28]
 800364c:	9803      	ldr	r0, [sp, #12]
 800364e:	f003 fdb9 	bl	80071c4 <__sprint_r>
 8003652:	2800      	cmp	r0, #0
 8003654:	f43f ad23 	beq.w	800309e <_vfprintf_r+0x536>
 8003658:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800365c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800365e:	b111      	cbz	r1, 8003666 <_vfprintf_r+0xafe>
 8003660:	9803      	ldr	r0, [sp, #12]
 8003662:	f002 f9c1 	bl	80059e8 <_free_r>
 8003666:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800366a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800366e:	07d0      	lsls	r0, r2, #31
 8003670:	d402      	bmi.n	8003678 <_vfprintf_r+0xb10>
 8003672:	0599      	lsls	r1, r3, #22
 8003674:	f140 81d0 	bpl.w	8003a18 <_vfprintf_r+0xeb0>
 8003678:	065a      	lsls	r2, r3, #25
 800367a:	f53f ab65 	bmi.w	8002d48 <_vfprintf_r+0x1e0>
 800367e:	9805      	ldr	r0, [sp, #20]
 8003680:	b057      	add	sp, #348	; 0x15c
 8003682:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003686:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003688:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800368a:	2a01      	cmp	r2, #1
 800368c:	f104 0401 	add.w	r4, r4, #1
 8003690:	f103 0501 	add.w	r5, r3, #1
 8003694:	f10b 0608 	add.w	r6, fp, #8
 8003698:	f340 811c 	ble.w	80038d4 <_vfprintf_r+0xd6c>
 800369c:	2301      	movs	r3, #1
 800369e:	2d07      	cmp	r5, #7
 80036a0:	f8cb 7000 	str.w	r7, [fp]
 80036a4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80036a8:	f8cb 3004 	str.w	r3, [fp, #4]
 80036ac:	f300 81bb 	bgt.w	8003a26 <_vfprintf_r+0xebe>
 80036b0:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80036b2:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80036b4:	1c69      	adds	r1, r5, #1
 80036b6:	441c      	add	r4, r3
 80036b8:	2907      	cmp	r1, #7
 80036ba:	910b      	str	r1, [sp, #44]	; 0x2c
 80036bc:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80036c0:	e9c6 2300 	strd	r2, r3, [r6]
 80036c4:	f300 81bb 	bgt.w	8003a3e <_vfprintf_r+0xed6>
 80036c8:	3608      	adds	r6, #8
 80036ca:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80036cc:	1c53      	adds	r3, r2, #1
 80036ce:	461d      	mov	r5, r3
 80036d0:	9509      	str	r5, [sp, #36]	; 0x24
 80036d2:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80036d4:	930e      	str	r3, [sp, #56]	; 0x38
 80036d6:	2200      	movs	r2, #0
 80036d8:	2300      	movs	r3, #0
 80036da:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80036de:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80036e2:	f106 0b08 	add.w	fp, r6, #8
 80036e6:	f7fd fc8f 	bl	8001008 <__aeabi_dcmpeq>
 80036ea:	2800      	cmp	r0, #0
 80036ec:	f040 80c2 	bne.w	8003874 <_vfprintf_r+0xd0c>
 80036f0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80036f2:	f8c6 9004 	str.w	r9, [r6, #4]
 80036f6:	3701      	adds	r7, #1
 80036f8:	444c      	add	r4, r9
 80036fa:	2d07      	cmp	r5, #7
 80036fc:	6037      	str	r7, [r6, #0]
 80036fe:	942c      	str	r4, [sp, #176]	; 0xb0
 8003700:	952b      	str	r5, [sp, #172]	; 0xac
 8003702:	f300 80f9 	bgt.w	80038f8 <_vfprintf_r+0xd90>
 8003706:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003708:	f106 0310 	add.w	r3, r6, #16
 800370c:	3202      	adds	r2, #2
 800370e:	465e      	mov	r6, fp
 8003710:	9209      	str	r2, [sp, #36]	; 0x24
 8003712:	469b      	mov	fp, r3
 8003714:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003716:	6072      	str	r2, [r6, #4]
 8003718:	4414      	add	r4, r2
 800371a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800371c:	942c      	str	r4, [sp, #176]	; 0xb0
 800371e:	ab26      	add	r3, sp, #152	; 0x98
 8003720:	2a07      	cmp	r2, #7
 8003722:	922b      	str	r2, [sp, #172]	; 0xac
 8003724:	6033      	str	r3, [r6, #0]
 8003726:	f77f ac70 	ble.w	800300a <_vfprintf_r+0x4a2>
 800372a:	aa2a      	add	r2, sp, #168	; 0xa8
 800372c:	9907      	ldr	r1, [sp, #28]
 800372e:	9803      	ldr	r0, [sp, #12]
 8003730:	f003 fd48 	bl	80071c4 <__sprint_r>
 8003734:	2800      	cmp	r0, #0
 8003736:	d18f      	bne.n	8003658 <_vfprintf_r+0xaf0>
 8003738:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800373a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800373e:	e464      	b.n	800300a <_vfprintf_r+0x4a2>
 8003740:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003742:	af56      	add	r7, sp, #344	; 0x158
 8003744:	0923      	lsrs	r3, r4, #4
 8003746:	f004 010f 	and.w	r1, r4, #15
 800374a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800374e:	092a      	lsrs	r2, r5, #4
 8003750:	461c      	mov	r4, r3
 8003752:	4615      	mov	r5, r2
 8003754:	5c43      	ldrb	r3, [r0, r1]
 8003756:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800375a:	ea54 0305 	orrs.w	r3, r4, r5
 800375e:	d1f1      	bne.n	8003744 <_vfprintf_r+0xbdc>
 8003760:	9b04      	ldr	r3, [sp, #16]
 8003762:	1bdb      	subs	r3, r3, r7
 8003764:	9309      	str	r3, [sp, #36]	; 0x24
 8003766:	f7ff bb80 	b.w	8002e6a <_vfprintf_r+0x302>
 800376a:	46b1      	mov	r9, r6
 800376c:	e776      	b.n	800365c <_vfprintf_r+0xaf4>
 800376e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003770:	9907      	ldr	r1, [sp, #28]
 8003772:	9803      	ldr	r0, [sp, #12]
 8003774:	f003 fd26 	bl	80071c4 <__sprint_r>
 8003778:	2800      	cmp	r0, #0
 800377a:	f47f af6d 	bne.w	8003658 <_vfprintf_r+0xaf0>
 800377e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003780:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003784:	f7ff bbdd 	b.w	8002f42 <_vfprintf_r+0x3da>
 8003788:	aa2a      	add	r2, sp, #168	; 0xa8
 800378a:	9907      	ldr	r1, [sp, #28]
 800378c:	9803      	ldr	r0, [sp, #12]
 800378e:	f003 fd19 	bl	80071c4 <__sprint_r>
 8003792:	2800      	cmp	r0, #0
 8003794:	f47f af60 	bne.w	8003658 <_vfprintf_r+0xaf0>
 8003798:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800379a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800379e:	f7ff bbe0 	b.w	8002f62 <_vfprintf_r+0x3fa>
 80037a2:	4698      	mov	r8, r3
 80037a4:	2d00      	cmp	r5, #0
 80037a6:	bf08      	it	eq
 80037a8:	2c0a      	cmpeq	r4, #10
 80037aa:	f080 8170 	bcs.w	8003a8e <_vfprintf_r+0xf26>
 80037ae:	af56      	add	r7, sp, #344	; 0x158
 80037b0:	3430      	adds	r4, #48	; 0x30
 80037b2:	2301      	movs	r3, #1
 80037b4:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80037b8:	9309      	str	r3, [sp, #36]	; 0x24
 80037ba:	f7ff bb56 	b.w	8002e6a <_vfprintf_r+0x302>
 80037be:	aa2a      	add	r2, sp, #168	; 0xa8
 80037c0:	9907      	ldr	r1, [sp, #28]
 80037c2:	9803      	ldr	r0, [sp, #12]
 80037c4:	f003 fcfe 	bl	80071c4 <__sprint_r>
 80037c8:	2800      	cmp	r0, #0
 80037ca:	f47f af45 	bne.w	8003658 <_vfprintf_r+0xaf0>
 80037ce:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80037d0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80037d4:	e406      	b.n	8002fe4 <_vfprintf_r+0x47c>
 80037d6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80037d8:	2b00      	cmp	r3, #0
 80037da:	f340 8273 	ble.w	8003cc4 <_vfprintf_r+0x115c>
 80037de:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80037e2:	4293      	cmp	r3, r2
 80037e4:	bfa8      	it	ge
 80037e6:	4613      	movge	r3, r2
 80037e8:	2b00      	cmp	r3, #0
 80037ea:	461d      	mov	r5, r3
 80037ec:	dd0d      	ble.n	800380a <_vfprintf_r+0xca2>
 80037ee:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80037f0:	f8cb 7000 	str.w	r7, [fp]
 80037f4:	3301      	adds	r3, #1
 80037f6:	442c      	add	r4, r5
 80037f8:	2b07      	cmp	r3, #7
 80037fa:	942c      	str	r4, [sp, #176]	; 0xb0
 80037fc:	f8cb 5004 	str.w	r5, [fp, #4]
 8003800:	932b      	str	r3, [sp, #172]	; 0xac
 8003802:	f300 82c1 	bgt.w	8003d88 <_vfprintf_r+0x1220>
 8003806:	f10b 0b08 	add.w	fp, fp, #8
 800380a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800380c:	2d00      	cmp	r5, #0
 800380e:	bfa8      	it	ge
 8003810:	1b5b      	subge	r3, r3, r5
 8003812:	2b00      	cmp	r3, #0
 8003814:	461d      	mov	r5, r3
 8003816:	f340 8099 	ble.w	800394c <_vfprintf_r+0xde4>
 800381a:	2d10      	cmp	r5, #16
 800381c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800381e:	4b2c      	ldr	r3, [pc, #176]	; (80038d0 <_vfprintf_r+0xd68>)
 8003820:	f340 83db 	ble.w	8003fda <_vfprintf_r+0x1472>
 8003824:	4618      	mov	r0, r3
 8003826:	4621      	mov	r1, r4
 8003828:	465b      	mov	r3, fp
 800382a:	2610      	movs	r6, #16
 800382c:	46bb      	mov	fp, r7
 800382e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003832:	9c07      	ldr	r4, [sp, #28]
 8003834:	4607      	mov	r7, r0
 8003836:	e004      	b.n	8003842 <_vfprintf_r+0xcda>
 8003838:	3308      	adds	r3, #8
 800383a:	3d10      	subs	r5, #16
 800383c:	2d10      	cmp	r5, #16
 800383e:	f340 83c7 	ble.w	8003fd0 <_vfprintf_r+0x1468>
 8003842:	3201      	adds	r2, #1
 8003844:	3110      	adds	r1, #16
 8003846:	2a07      	cmp	r2, #7
 8003848:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800384c:	e9c3 7600 	strd	r7, r6, [r3]
 8003850:	ddf2      	ble.n	8003838 <_vfprintf_r+0xcd0>
 8003852:	aa2a      	add	r2, sp, #168	; 0xa8
 8003854:	4621      	mov	r1, r4
 8003856:	4648      	mov	r0, r9
 8003858:	f003 fcb4 	bl	80071c4 <__sprint_r>
 800385c:	2800      	cmp	r0, #0
 800385e:	f040 84a5 	bne.w	80041ac <_vfprintf_r+0x1644>
 8003862:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003866:	ab2d      	add	r3, sp, #180	; 0xb4
 8003868:	e7e7      	b.n	800383a <_vfprintf_r+0xcd2>
 800386a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800386e:	af56      	add	r7, sp, #344	; 0x158
 8003870:	f7ff bafb 	b.w	8002e6a <_vfprintf_r+0x302>
 8003874:	f1b9 0f00 	cmp.w	r9, #0
 8003878:	f77f af4c 	ble.w	8003714 <_vfprintf_r+0xbac>
 800387c:	f1b9 0f10 	cmp.w	r9, #16
 8003880:	4b13      	ldr	r3, [pc, #76]	; (80038d0 <_vfprintf_r+0xd68>)
 8003882:	f340 8659 	ble.w	8004538 <_vfprintf_r+0x19d0>
 8003886:	4619      	mov	r1, r3
 8003888:	4622      	mov	r2, r4
 800388a:	4633      	mov	r3, r6
 800388c:	2710      	movs	r7, #16
 800388e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003892:	9c07      	ldr	r4, [sp, #28]
 8003894:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003896:	460e      	mov	r6, r1
 8003898:	e007      	b.n	80038aa <_vfprintf_r+0xd42>
 800389a:	3308      	adds	r3, #8
 800389c:	f1a9 0910 	sub.w	r9, r9, #16
 80038a0:	f1b9 0f10 	cmp.w	r9, #16
 80038a4:	f340 8353 	ble.w	8003f4e <_vfprintf_r+0x13e6>
 80038a8:	3501      	adds	r5, #1
 80038aa:	3210      	adds	r2, #16
 80038ac:	2d07      	cmp	r5, #7
 80038ae:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80038b2:	e9c3 6700 	strd	r6, r7, [r3]
 80038b6:	ddf0      	ble.n	800389a <_vfprintf_r+0xd32>
 80038b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80038ba:	4621      	mov	r1, r4
 80038bc:	4658      	mov	r0, fp
 80038be:	f003 fc81 	bl	80071c4 <__sprint_r>
 80038c2:	2800      	cmp	r0, #0
 80038c4:	f040 8472 	bne.w	80041ac <_vfprintf_r+0x1644>
 80038c8:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80038cc:	ab2d      	add	r3, sp, #180	; 0xb4
 80038ce:	e7e5      	b.n	800389c <_vfprintf_r+0xd34>
 80038d0:	080078bc 	.word	0x080078bc
 80038d4:	f018 0f01 	tst.w	r8, #1
 80038d8:	f47f aee0 	bne.w	800369c <_vfprintf_r+0xb34>
 80038dc:	2201      	movs	r2, #1
 80038de:	2d07      	cmp	r5, #7
 80038e0:	f8cb 7000 	str.w	r7, [fp]
 80038e4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80038e8:	f8cb 2004 	str.w	r2, [fp, #4]
 80038ec:	dc04      	bgt.n	80038f8 <_vfprintf_r+0xd90>
 80038ee:	3302      	adds	r3, #2
 80038f0:	9309      	str	r3, [sp, #36]	; 0x24
 80038f2:	f10b 0b10 	add.w	fp, fp, #16
 80038f6:	e70d      	b.n	8003714 <_vfprintf_r+0xbac>
 80038f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80038fa:	9907      	ldr	r1, [sp, #28]
 80038fc:	9803      	ldr	r0, [sp, #12]
 80038fe:	f003 fc61 	bl	80071c4 <__sprint_r>
 8003902:	2800      	cmp	r0, #0
 8003904:	f47f aea8 	bne.w	8003658 <_vfprintf_r+0xaf0>
 8003908:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800390c:	3301      	adds	r3, #1
 800390e:	9309      	str	r3, [sp, #36]	; 0x24
 8003910:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003914:	ae2d      	add	r6, sp, #180	; 0xb4
 8003916:	e6fd      	b.n	8003714 <_vfprintf_r+0xbac>
 8003918:	aa2a      	add	r2, sp, #168	; 0xa8
 800391a:	9907      	ldr	r1, [sp, #28]
 800391c:	9803      	ldr	r0, [sp, #12]
 800391e:	f003 fc51 	bl	80071c4 <__sprint_r>
 8003922:	2800      	cmp	r0, #0
 8003924:	f47f ae98 	bne.w	8003658 <_vfprintf_r+0xaf0>
 8003928:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800392c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800392e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003932:	f7ff baf6 	b.w	8002f22 <_vfprintf_r+0x3ba>
 8003936:	aa2a      	add	r2, sp, #168	; 0xa8
 8003938:	9907      	ldr	r1, [sp, #28]
 800393a:	9803      	ldr	r0, [sp, #12]
 800393c:	f003 fc42 	bl	80071c4 <__sprint_r>
 8003940:	2800      	cmp	r0, #0
 8003942:	f47f ae89 	bne.w	8003658 <_vfprintf_r+0xaf0>
 8003946:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003948:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800394c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800394e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003952:	443b      	add	r3, r7
 8003954:	4699      	mov	r9, r3
 8003956:	f040 8357 	bne.w	8004008 <_vfprintf_r+0x14a0>
 800395a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800395c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800395e:	4293      	cmp	r3, r2
 8003960:	db49      	blt.n	80039f6 <_vfprintf_r+0xe8e>
 8003962:	f018 0f01 	tst.w	r8, #1
 8003966:	d146      	bne.n	80039f6 <_vfprintf_r+0xe8e>
 8003968:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800396a:	18bd      	adds	r5, r7, r2
 800396c:	eba5 0509 	sub.w	r5, r5, r9
 8003970:	1ad3      	subs	r3, r2, r3
 8003972:	429d      	cmp	r5, r3
 8003974:	bfa8      	it	ge
 8003976:	461d      	movge	r5, r3
 8003978:	2d00      	cmp	r5, #0
 800397a:	dd0d      	ble.n	8003998 <_vfprintf_r+0xe30>
 800397c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800397e:	f8cb 9000 	str.w	r9, [fp]
 8003982:	3201      	adds	r2, #1
 8003984:	442c      	add	r4, r5
 8003986:	2a07      	cmp	r2, #7
 8003988:	942c      	str	r4, [sp, #176]	; 0xb0
 800398a:	f8cb 5004 	str.w	r5, [fp, #4]
 800398e:	922b      	str	r2, [sp, #172]	; 0xac
 8003990:	f300 8462 	bgt.w	8004258 <_vfprintf_r+0x16f0>
 8003994:	f10b 0b08 	add.w	fp, fp, #8
 8003998:	2d00      	cmp	r5, #0
 800399a:	bfac      	ite	ge
 800399c:	1b5d      	subge	r5, r3, r5
 800399e:	461d      	movlt	r5, r3
 80039a0:	2d00      	cmp	r5, #0
 80039a2:	f77f ab32 	ble.w	800300a <_vfprintf_r+0x4a2>
 80039a6:	2d10      	cmp	r5, #16
 80039a8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80039aa:	4bc5      	ldr	r3, [pc, #788]	; (8003cc0 <_vfprintf_r+0x1158>)
 80039ac:	f340 80c4 	ble.w	8003b38 <_vfprintf_r+0xfd0>
 80039b0:	4619      	mov	r1, r3
 80039b2:	2610      	movs	r6, #16
 80039b4:	4623      	mov	r3, r4
 80039b6:	9f03      	ldr	r7, [sp, #12]
 80039b8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80039bc:	460c      	mov	r4, r1
 80039be:	e005      	b.n	80039cc <_vfprintf_r+0xe64>
 80039c0:	f10b 0b08 	add.w	fp, fp, #8
 80039c4:	3d10      	subs	r5, #16
 80039c6:	2d10      	cmp	r5, #16
 80039c8:	f340 80b3 	ble.w	8003b32 <_vfprintf_r+0xfca>
 80039cc:	3201      	adds	r2, #1
 80039ce:	3310      	adds	r3, #16
 80039d0:	2a07      	cmp	r2, #7
 80039d2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80039d6:	e9cb 4600 	strd	r4, r6, [fp]
 80039da:	ddf1      	ble.n	80039c0 <_vfprintf_r+0xe58>
 80039dc:	aa2a      	add	r2, sp, #168	; 0xa8
 80039de:	4649      	mov	r1, r9
 80039e0:	4638      	mov	r0, r7
 80039e2:	f003 fbef 	bl	80071c4 <__sprint_r>
 80039e6:	2800      	cmp	r0, #0
 80039e8:	f47f ae38 	bne.w	800365c <_vfprintf_r+0xaf4>
 80039ec:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80039f0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039f4:	e7e6      	b.n	80039c4 <_vfprintf_r+0xe5c>
 80039f6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80039f8:	9916      	ldr	r1, [sp, #88]	; 0x58
 80039fa:	f8cb 1000 	str.w	r1, [fp]
 80039fe:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003a00:	f8cb 1004 	str.w	r1, [fp, #4]
 8003a04:	3201      	adds	r2, #1
 8003a06:	440c      	add	r4, r1
 8003a08:	2a07      	cmp	r2, #7
 8003a0a:	942c      	str	r4, [sp, #176]	; 0xb0
 8003a0c:	922b      	str	r2, [sp, #172]	; 0xac
 8003a0e:	f300 828c 	bgt.w	8003f2a <_vfprintf_r+0x13c2>
 8003a12:	f10b 0b08 	add.w	fp, fp, #8
 8003a16:	e7a7      	b.n	8003968 <_vfprintf_r+0xe00>
 8003a18:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003a1c:	f002 fa94 	bl	8005f48 <__retarget_lock_release_recursive>
 8003a20:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003a24:	e628      	b.n	8003678 <_vfprintf_r+0xb10>
 8003a26:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a28:	9907      	ldr	r1, [sp, #28]
 8003a2a:	9803      	ldr	r0, [sp, #12]
 8003a2c:	f003 fbca 	bl	80071c4 <__sprint_r>
 8003a30:	2800      	cmp	r0, #0
 8003a32:	f47f ae11 	bne.w	8003658 <_vfprintf_r+0xaf0>
 8003a36:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003a3a:	ae2d      	add	r6, sp, #180	; 0xb4
 8003a3c:	e638      	b.n	80036b0 <_vfprintf_r+0xb48>
 8003a3e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a40:	9907      	ldr	r1, [sp, #28]
 8003a42:	9803      	ldr	r0, [sp, #12]
 8003a44:	f003 fbbe 	bl	80071c4 <__sprint_r>
 8003a48:	2800      	cmp	r0, #0
 8003a4a:	f47f ae05 	bne.w	8003658 <_vfprintf_r+0xaf0>
 8003a4e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003a52:	ae2d      	add	r6, sp, #180	; 0xb4
 8003a54:	930b      	str	r3, [sp, #44]	; 0x2c
 8003a56:	e638      	b.n	80036ca <_vfprintf_r+0xb62>
 8003a58:	6814      	ldr	r4, [r2, #0]
 8003a5a:	9308      	str	r3, [sp, #32]
 8003a5c:	2500      	movs	r5, #0
 8003a5e:	f7ff bb95 	b.w	800318c <_vfprintf_r+0x624>
 8003a62:	6814      	ldr	r4, [r2, #0]
 8003a64:	9308      	str	r3, [sp, #32]
 8003a66:	2500      	movs	r5, #0
 8003a68:	f7ff b9ae 	b.w	8002dc8 <_vfprintf_r+0x260>
 8003a6c:	680c      	ldr	r4, [r1, #0]
 8003a6e:	9208      	str	r2, [sp, #32]
 8003a70:	17e5      	asrs	r5, r4, #31
 8003a72:	4620      	mov	r0, r4
 8003a74:	4629      	mov	r1, r5
 8003a76:	f7ff b9d2 	b.w	8002e1e <_vfprintf_r+0x2b6>
 8003a7a:	6814      	ldr	r4, [r2, #0]
 8003a7c:	9108      	str	r1, [sp, #32]
 8003a7e:	2201      	movs	r2, #1
 8003a80:	2500      	movs	r5, #0
 8003a82:	f7ff bb32 	b.w	80030ea <_vfprintf_r+0x582>
 8003a86:	2a01      	cmp	r2, #1
 8003a88:	f47f ab3c 	bne.w	8003104 <_vfprintf_r+0x59c>
 8003a8c:	e68f      	b.n	80037ae <_vfprintf_r+0xc46>
 8003a8e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003a92:	2200      	movs	r2, #0
 8003a94:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003a98:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003a9c:	af56      	add	r7, sp, #344	; 0x158
 8003a9e:	4692      	mov	sl, r2
 8003aa0:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003aa4:	461e      	mov	r6, r3
 8003aa6:	e00a      	b.n	8003abe <_vfprintf_r+0xf56>
 8003aa8:	2300      	movs	r3, #0
 8003aaa:	4620      	mov	r0, r4
 8003aac:	4629      	mov	r1, r5
 8003aae:	220a      	movs	r2, #10
 8003ab0:	f7fc fba6 	bl	8000200 <__aeabi_uldivmod>
 8003ab4:	4604      	mov	r4, r0
 8003ab6:	460d      	mov	r5, r1
 8003ab8:	ea54 0305 	orrs.w	r3, r4, r5
 8003abc:	d029      	beq.n	8003b12 <_vfprintf_r+0xfaa>
 8003abe:	220a      	movs	r2, #10
 8003ac0:	2300      	movs	r3, #0
 8003ac2:	4620      	mov	r0, r4
 8003ac4:	4629      	mov	r1, r5
 8003ac6:	f7fc fb9b 	bl	8000200 <__aeabi_uldivmod>
 8003aca:	3230      	adds	r2, #48	; 0x30
 8003acc:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003ad0:	f10a 0a01 	add.w	sl, sl, #1
 8003ad4:	3f01      	subs	r7, #1
 8003ad6:	2e00      	cmp	r6, #0
 8003ad8:	d0e6      	beq.n	8003aa8 <_vfprintf_r+0xf40>
 8003ada:	f898 3000 	ldrb.w	r3, [r8]
 8003ade:	459a      	cmp	sl, r3
 8003ae0:	d1e2      	bne.n	8003aa8 <_vfprintf_r+0xf40>
 8003ae2:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003ae6:	d0df      	beq.n	8003aa8 <_vfprintf_r+0xf40>
 8003ae8:	2d00      	cmp	r5, #0
 8003aea:	bf08      	it	eq
 8003aec:	2c0a      	cmpeq	r4, #10
 8003aee:	d3db      	bcc.n	8003aa8 <_vfprintf_r+0xf40>
 8003af0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003af2:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003af4:	1aff      	subs	r7, r7, r3
 8003af6:	461a      	mov	r2, r3
 8003af8:	4638      	mov	r0, r7
 8003afa:	f003 faf5 	bl	80070e8 <strncpy>
 8003afe:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003b02:	2b00      	cmp	r3, #0
 8003b04:	f000 8496 	beq.w	8004434 <_vfprintf_r+0x18cc>
 8003b08:	f108 0801 	add.w	r8, r8, #1
 8003b0c:	f04f 0a00 	mov.w	sl, #0
 8003b10:	e7ca      	b.n	8003aa8 <_vfprintf_r+0xf40>
 8003b12:	9b04      	ldr	r3, [sp, #16]
 8003b14:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003b18:	1bdb      	subs	r3, r3, r7
 8003b1a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003b1e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003b20:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003b24:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003b28:	9309      	str	r3, [sp, #36]	; 0x24
 8003b2a:	f7ff b99e 	b.w	8002e6a <_vfprintf_r+0x302>
 8003b2e:	46c1      	mov	r9, r8
 8003b30:	e594      	b.n	800365c <_vfprintf_r+0xaf4>
 8003b32:	4621      	mov	r1, r4
 8003b34:	461c      	mov	r4, r3
 8003b36:	460b      	mov	r3, r1
 8003b38:	3201      	adds	r2, #1
 8003b3a:	442c      	add	r4, r5
 8003b3c:	2a07      	cmp	r2, #7
 8003b3e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003b42:	e9cb 3500 	strd	r3, r5, [fp]
 8003b46:	f77f aa5e 	ble.w	8003006 <_vfprintf_r+0x49e>
 8003b4a:	e5ee      	b.n	800372a <_vfprintf_r+0xbc2>
 8003b4c:	f018 0f10 	tst.w	r8, #16
 8003b50:	f040 80f8 	bne.w	8003d44 <_vfprintf_r+0x11dc>
 8003b54:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003b58:	f000 8351 	beq.w	80041fe <_vfprintf_r+0x1696>
 8003b5c:	9a05      	ldr	r2, [sp, #20]
 8003b5e:	801a      	strh	r2, [r3, #0]
 8003b60:	4657      	mov	r7, sl
 8003b62:	f7ff baa7 	b.w	80030b4 <_vfprintf_r+0x54c>
 8003b66:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b68:	9907      	ldr	r1, [sp, #28]
 8003b6a:	9803      	ldr	r0, [sp, #12]
 8003b6c:	f003 fb2a 	bl	80071c4 <__sprint_r>
 8003b70:	2800      	cmp	r0, #0
 8003b72:	f47f ad71 	bne.w	8003658 <_vfprintf_r+0xaf0>
 8003b76:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b78:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b7c:	f7ff b9f5 	b.w	8002f6a <_vfprintf_r+0x402>
 8003b80:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003b84:	4602      	mov	r2, r0
 8003b86:	460b      	mov	r3, r1
 8003b88:	f7fd fa70 	bl	800106c <__aeabi_dcmpun>
 8003b8c:	2800      	cmp	r0, #0
 8003b8e:	f040 8491 	bne.w	80044b4 <_vfprintf_r+0x194c>
 8003b92:	2e61      	cmp	r6, #97	; 0x61
 8003b94:	f000 8111 	beq.w	8003dba <_vfprintf_r+0x1252>
 8003b98:	2e41      	cmp	r6, #65	; 0x41
 8003b9a:	f000 8377 	beq.w	800428c <_vfprintf_r+0x1724>
 8003b9e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003ba2:	f026 0220 	bic.w	r2, r6, #32
 8003ba6:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003baa:	930e      	str	r3, [sp, #56]	; 0x38
 8003bac:	9204      	str	r2, [sp, #16]
 8003bae:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003bb0:	f000 842d 	beq.w	800440e <_vfprintf_r+0x18a6>
 8003bb4:	2a47      	cmp	r2, #71	; 0x47
 8003bb6:	f000 8424 	beq.w	8004402 <_vfprintf_r+0x189a>
 8003bba:	2b00      	cmp	r3, #0
 8003bbc:	f2c0 82f9 	blt.w	80041b2 <_vfprintf_r+0x164a>
 8003bc0:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003bc4:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003bc8:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003bcc:	2e66      	cmp	r6, #102	; 0x66
 8003bce:	f000 83eb 	beq.w	80043a8 <_vfprintf_r+0x1840>
 8003bd2:	2e46      	cmp	r6, #70	; 0x46
 8003bd4:	f000 847e 	beq.w	80044d4 <_vfprintf_r+0x196c>
 8003bd8:	9b04      	ldr	r3, [sp, #16]
 8003bda:	9803      	ldr	r0, [sp, #12]
 8003bdc:	2b45      	cmp	r3, #69	; 0x45
 8003bde:	bf0c      	ite	eq
 8003be0:	f109 0501 	addeq.w	r5, r9, #1
 8003be4:	464d      	movne	r5, r9
 8003be6:	aa28      	add	r2, sp, #160	; 0xa0
 8003be8:	ab25      	add	r3, sp, #148	; 0x94
 8003bea:	e9cd 3200 	strd	r3, r2, [sp]
 8003bee:	2102      	movs	r1, #2
 8003bf0:	ab24      	add	r3, sp, #144	; 0x90
 8003bf2:	462a      	mov	r2, r5
 8003bf4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003bf8:	f000 fe3e 	bl	8004878 <_dtoa_r>
 8003bfc:	2e67      	cmp	r6, #103	; 0x67
 8003bfe:	4607      	mov	r7, r0
 8003c00:	f040 849c 	bne.w	800453c <_vfprintf_r+0x19d4>
 8003c04:	f018 0f01 	tst.w	r8, #1
 8003c08:	f040 83f9 	bne.w	80043fe <_vfprintf_r+0x1896>
 8003c0c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003c0e:	4640      	mov	r0, r8
 8003c10:	1bdb      	subs	r3, r3, r7
 8003c12:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003c16:	9310      	str	r3, [sp, #64]	; 0x40
 8003c18:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003c1a:	9311      	str	r3, [sp, #68]	; 0x44
 8003c1c:	9b04      	ldr	r3, [sp, #16]
 8003c1e:	2b47      	cmp	r3, #71	; 0x47
 8003c20:	f000 81e7 	beq.w	8003ff2 <_vfprintf_r+0x148a>
 8003c24:	9b04      	ldr	r3, [sp, #16]
 8003c26:	2b46      	cmp	r3, #70	; 0x46
 8003c28:	f000 8300 	beq.w	800422c <_vfprintf_r+0x16c4>
 8003c2c:	9904      	ldr	r1, [sp, #16]
 8003c2e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c30:	b2f2      	uxtb	r2, r6
 8003c32:	2941      	cmp	r1, #65	; 0x41
 8003c34:	bf08      	it	eq
 8003c36:	320f      	addeq	r2, #15
 8003c38:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003c3c:	bf06      	itte	eq
 8003c3e:	b2d2      	uxtbeq	r2, r2
 8003c40:	2101      	moveq	r1, #1
 8003c42:	2100      	movne	r1, #0
 8003c44:	2b00      	cmp	r3, #0
 8003c46:	9324      	str	r3, [sp, #144]	; 0x90
 8003c48:	bfb8      	it	lt
 8003c4a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003c4c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003c50:	bfba      	itte	lt
 8003c52:	f1c3 0301 	rsblt	r3, r3, #1
 8003c56:	222d      	movlt	r2, #45	; 0x2d
 8003c58:	222b      	movge	r2, #43	; 0x2b
 8003c5a:	2b09      	cmp	r3, #9
 8003c5c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003c60:	f300 83f9 	bgt.w	8004456 <_vfprintf_r+0x18ee>
 8003c64:	2900      	cmp	r1, #0
 8003c66:	f040 8487 	bne.w	8004578 <_vfprintf_r+0x1a10>
 8003c6a:	2230      	movs	r2, #48	; 0x30
 8003c6c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003c70:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003c74:	3330      	adds	r3, #48	; 0x30
 8003c76:	7013      	strb	r3, [r2, #0]
 8003c78:	1c53      	adds	r3, r2, #1
 8003c7a:	aa26      	add	r2, sp, #152	; 0x98
 8003c7c:	1a9b      	subs	r3, r3, r2
 8003c7e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003c80:	9319      	str	r3, [sp, #100]	; 0x64
 8003c82:	2a01      	cmp	r2, #1
 8003c84:	4413      	add	r3, r2
 8003c86:	9309      	str	r3, [sp, #36]	; 0x24
 8003c88:	f340 8442 	ble.w	8004510 <_vfprintf_r+0x19a8>
 8003c8c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003c8e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003c90:	4413      	add	r3, r2
 8003c92:	9309      	str	r3, [sp, #36]	; 0x24
 8003c94:	2300      	movs	r3, #0
 8003c96:	930f      	str	r3, [sp, #60]	; 0x3c
 8003c98:	9314      	str	r3, [sp, #80]	; 0x50
 8003c9a:	9311      	str	r3, [sp, #68]	; 0x44
 8003c9c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003c9e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003ca2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003ca6:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003caa:	9304      	str	r3, [sp, #16]
 8003cac:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003cae:	2b00      	cmp	r3, #0
 8003cb0:	f040 8275 	bne.w	800419e <_vfprintf_r+0x1636>
 8003cb4:	4699      	mov	r9, r3
 8003cb6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003cba:	f7ff b8e2 	b.w	8002e82 <_vfprintf_r+0x31a>
 8003cbe:	bf00      	nop
 8003cc0:	080078bc 	.word	0x080078bc
 8003cc4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003cc6:	49bd      	ldr	r1, [pc, #756]	; (8003fbc <_vfprintf_r+0x1454>)
 8003cc8:	f8cb 1000 	str.w	r1, [fp]
 8003ccc:	3201      	adds	r2, #1
 8003cce:	3401      	adds	r4, #1
 8003cd0:	2101      	movs	r1, #1
 8003cd2:	2a07      	cmp	r2, #7
 8003cd4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003cd8:	f8cb 1004 	str.w	r1, [fp, #4]
 8003cdc:	dc60      	bgt.n	8003da0 <_vfprintf_r+0x1238>
 8003cde:	f10b 0b08 	add.w	fp, fp, #8
 8003ce2:	b92b      	cbnz	r3, 8003cf0 <_vfprintf_r+0x1188>
 8003ce4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003ce6:	b91a      	cbnz	r2, 8003cf0 <_vfprintf_r+0x1188>
 8003ce8:	f018 0f01 	tst.w	r8, #1
 8003cec:	f43f a98d 	beq.w	800300a <_vfprintf_r+0x4a2>
 8003cf0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003cf2:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003cf4:	f8cb 1000 	str.w	r1, [fp]
 8003cf8:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003cfa:	f8cb 1004 	str.w	r1, [fp, #4]
 8003cfe:	3201      	adds	r2, #1
 8003d00:	440c      	add	r4, r1
 8003d02:	2a07      	cmp	r2, #7
 8003d04:	942c      	str	r4, [sp, #176]	; 0xb0
 8003d06:	922b      	str	r2, [sp, #172]	; 0xac
 8003d08:	f300 8282 	bgt.w	8004210 <_vfprintf_r+0x16a8>
 8003d0c:	f10b 0b08 	add.w	fp, fp, #8
 8003d10:	2b00      	cmp	r3, #0
 8003d12:	f2c0 82e7 	blt.w	80042e4 <_vfprintf_r+0x177c>
 8003d16:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003d18:	3201      	adds	r2, #1
 8003d1a:	441c      	add	r4, r3
 8003d1c:	2a07      	cmp	r2, #7
 8003d1e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003d22:	e9cb 7300 	strd	r7, r3, [fp]
 8003d26:	f77f a96e 	ble.w	8003006 <_vfprintf_r+0x49e>
 8003d2a:	e4fe      	b.n	800372a <_vfprintf_r+0xbc2>
 8003d2c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d2e:	9907      	ldr	r1, [sp, #28]
 8003d30:	9803      	ldr	r0, [sp, #12]
 8003d32:	f003 fa47 	bl	80071c4 <__sprint_r>
 8003d36:	2800      	cmp	r0, #0
 8003d38:	f47f ac8e 	bne.w	8003658 <_vfprintf_r+0xaf0>
 8003d3c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d40:	f7ff bbf0 	b.w	8003524 <_vfprintf_r+0x9bc>
 8003d44:	9a05      	ldr	r2, [sp, #20]
 8003d46:	601a      	str	r2, [r3, #0]
 8003d48:	4657      	mov	r7, sl
 8003d4a:	f7ff b9b3 	b.w	80030b4 <_vfprintf_r+0x54c>
 8003d4e:	8814      	ldrh	r4, [r2, #0]
 8003d50:	9108      	str	r1, [sp, #32]
 8003d52:	2500      	movs	r5, #0
 8003d54:	2201      	movs	r2, #1
 8003d56:	f7ff b9c8 	b.w	80030ea <_vfprintf_r+0x582>
 8003d5a:	8814      	ldrh	r4, [r2, #0]
 8003d5c:	9308      	str	r3, [sp, #32]
 8003d5e:	2500      	movs	r5, #0
 8003d60:	f7ff ba14 	b.w	800318c <_vfprintf_r+0x624>
 8003d64:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003d68:	9208      	str	r2, [sp, #32]
 8003d6a:	17e5      	asrs	r5, r4, #31
 8003d6c:	4620      	mov	r0, r4
 8003d6e:	4629      	mov	r1, r5
 8003d70:	f7ff b855 	b.w	8002e1e <_vfprintf_r+0x2b6>
 8003d74:	8814      	ldrh	r4, [r2, #0]
 8003d76:	9308      	str	r3, [sp, #32]
 8003d78:	2500      	movs	r5, #0
 8003d7a:	f7ff b825 	b.w	8002dc8 <_vfprintf_r+0x260>
 8003d7e:	222d      	movs	r2, #45	; 0x2d
 8003d80:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003d84:	f7ff baa2 	b.w	80032cc <_vfprintf_r+0x764>
 8003d88:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d8a:	9907      	ldr	r1, [sp, #28]
 8003d8c:	9803      	ldr	r0, [sp, #12]
 8003d8e:	f003 fa19 	bl	80071c4 <__sprint_r>
 8003d92:	2800      	cmp	r0, #0
 8003d94:	f47f ac60 	bne.w	8003658 <_vfprintf_r+0xaf0>
 8003d98:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003d9a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d9e:	e534      	b.n	800380a <_vfprintf_r+0xca2>
 8003da0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003da2:	9907      	ldr	r1, [sp, #28]
 8003da4:	9803      	ldr	r0, [sp, #12]
 8003da6:	f003 fa0d 	bl	80071c4 <__sprint_r>
 8003daa:	2800      	cmp	r0, #0
 8003dac:	f47f ac54 	bne.w	8003658 <_vfprintf_r+0xaf0>
 8003db0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003db2:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003db4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003db8:	e793      	b.n	8003ce2 <_vfprintf_r+0x117a>
 8003dba:	2330      	movs	r3, #48	; 0x30
 8003dbc:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003dc0:	2378      	movs	r3, #120	; 0x78
 8003dc2:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003dc6:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003dca:	f048 0402 	orr.w	r4, r8, #2
 8003dce:	f300 82b0 	bgt.w	8004332 <_vfprintf_r+0x17ca>
 8003dd2:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003dd6:	930e      	str	r3, [sp, #56]	; 0x38
 8003dd8:	f026 0320 	bic.w	r3, r6, #32
 8003ddc:	9304      	str	r3, [sp, #16]
 8003dde:	2200      	movs	r2, #0
 8003de0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003de2:	920a      	str	r2, [sp, #40]	; 0x28
 8003de4:	46a0      	mov	r8, r4
 8003de6:	af3d      	add	r7, sp, #244	; 0xf4
 8003de8:	2b00      	cmp	r3, #0
 8003dea:	f2c0 81e3 	blt.w	80041b4 <_vfprintf_r+0x164c>
 8003dee:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003df2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003df6:	2300      	movs	r3, #0
 8003df8:	930b      	str	r3, [sp, #44]	; 0x2c
 8003dfa:	2e61      	cmp	r6, #97	; 0x61
 8003dfc:	f000 8255 	beq.w	80042aa <_vfprintf_r+0x1742>
 8003e00:	2e41      	cmp	r6, #65	; 0x41
 8003e02:	f47f aee3 	bne.w	8003bcc <_vfprintf_r+0x1064>
 8003e06:	a824      	add	r0, sp, #144	; 0x90
 8003e08:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003e0c:	f003 f8e2 	bl	8006fd4 <frexp>
 8003e10:	2200      	movs	r2, #0
 8003e12:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003e16:	ec51 0b10 	vmov	r0, r1, d0
 8003e1a:	f7fc fe8d 	bl	8000b38 <__aeabi_dmul>
 8003e1e:	2200      	movs	r2, #0
 8003e20:	2300      	movs	r3, #0
 8003e22:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003e26:	f7fd f8ef 	bl	8001008 <__aeabi_dcmpeq>
 8003e2a:	2800      	cmp	r0, #0
 8003e2c:	f040 8305 	bne.w	800443a <_vfprintf_r+0x18d2>
 8003e30:	4b63      	ldr	r3, [pc, #396]	; (8003fc0 <_vfprintf_r+0x1458>)
 8003e32:	9309      	str	r3, [sp, #36]	; 0x24
 8003e34:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003e38:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003e3c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003e40:	9721      	str	r7, [sp, #132]	; 0x84
 8003e42:	46b9      	mov	r9, r7
 8003e44:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003e48:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003e4c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003e50:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003e54:	e003      	b.n	8003e5e <_vfprintf_r+0x12f6>
 8003e56:	f7fd f8d7 	bl	8001008 <__aeabi_dcmpeq>
 8003e5a:	bb20      	cbnz	r0, 8003ea6 <_vfprintf_r+0x133e>
 8003e5c:	46a9      	mov	r9, r5
 8003e5e:	2200      	movs	r2, #0
 8003e60:	4b58      	ldr	r3, [pc, #352]	; (8003fc4 <_vfprintf_r+0x145c>)
 8003e62:	4630      	mov	r0, r6
 8003e64:	4639      	mov	r1, r7
 8003e66:	f7fc fe67 	bl	8000b38 <__aeabi_dmul>
 8003e6a:	460f      	mov	r7, r1
 8003e6c:	4606      	mov	r6, r0
 8003e6e:	f7fd f913 	bl	8001098 <__aeabi_d2iz>
 8003e72:	4680      	mov	r8, r0
 8003e74:	f7fc fdf6 	bl	8000a64 <__aeabi_i2d>
 8003e78:	4602      	mov	r2, r0
 8003e7a:	460b      	mov	r3, r1
 8003e7c:	4630      	mov	r0, r6
 8003e7e:	4639      	mov	r1, r7
 8003e80:	f7fc fca2 	bl	80007c8 <__aeabi_dsub>
 8003e84:	464d      	mov	r5, r9
 8003e86:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003e8a:	f805 cb01 	strb.w	ip, [r5], #1
 8003e8e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003e92:	46a3      	mov	fp, r4
 8003e94:	4606      	mov	r6, r0
 8003e96:	460f      	mov	r7, r1
 8003e98:	f04f 0200 	mov.w	r2, #0
 8003e9c:	f04f 0300 	mov.w	r3, #0
 8003ea0:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003ea4:	d1d7      	bne.n	8003e56 <_vfprintf_r+0x12ee>
 8003ea6:	4630      	mov	r0, r6
 8003ea8:	4639      	mov	r1, r7
 8003eaa:	2200      	movs	r2, #0
 8003eac:	4b46      	ldr	r3, [pc, #280]	; (8003fc8 <_vfprintf_r+0x1460>)
 8003eae:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003eb2:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003eb4:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003eb8:	4644      	mov	r4, r8
 8003eba:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003ebe:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003ec2:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003ec6:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003eca:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003ecc:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003ed0:	f7fd f8c2 	bl	8001058 <__aeabi_dcmpgt>
 8003ed4:	2800      	cmp	r0, #0
 8003ed6:	f040 8176 	bne.w	80041c6 <_vfprintf_r+0x165e>
 8003eda:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003ede:	2200      	movs	r2, #0
 8003ee0:	4b39      	ldr	r3, [pc, #228]	; (8003fc8 <_vfprintf_r+0x1460>)
 8003ee2:	f7fd f891 	bl	8001008 <__aeabi_dcmpeq>
 8003ee6:	b110      	cbz	r0, 8003eee <_vfprintf_r+0x1386>
 8003ee8:	07e2      	lsls	r2, r4, #31
 8003eea:	f100 816c 	bmi.w	80041c6 <_vfprintf_r+0x165e>
 8003eee:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ef0:	2b00      	cmp	r3, #0
 8003ef2:	db07      	blt.n	8003f04 <_vfprintf_r+0x139c>
 8003ef4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ef6:	3301      	adds	r3, #1
 8003ef8:	442b      	add	r3, r5
 8003efa:	2230      	movs	r2, #48	; 0x30
 8003efc:	f805 2b01 	strb.w	r2, [r5], #1
 8003f00:	42ab      	cmp	r3, r5
 8003f02:	d1fb      	bne.n	8003efc <_vfprintf_r+0x1394>
 8003f04:	1beb      	subs	r3, r5, r7
 8003f06:	4640      	mov	r0, r8
 8003f08:	9310      	str	r3, [sp, #64]	; 0x40
 8003f0a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003f0e:	e683      	b.n	8003c18 <_vfprintf_r+0x10b0>
 8003f10:	f8cd 9010 	str.w	r9, [sp, #16]
 8003f14:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003f18:	9408      	str	r4, [sp, #32]
 8003f1a:	4681      	mov	r9, r0
 8003f1c:	900f      	str	r0, [sp, #60]	; 0x3c
 8003f1e:	9014      	str	r0, [sp, #80]	; 0x50
 8003f20:	9011      	str	r0, [sp, #68]	; 0x44
 8003f22:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003f26:	f7fe bfac 	b.w	8002e82 <_vfprintf_r+0x31a>
 8003f2a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f2c:	9907      	ldr	r1, [sp, #28]
 8003f2e:	9803      	ldr	r0, [sp, #12]
 8003f30:	f003 f948 	bl	80071c4 <__sprint_r>
 8003f34:	2800      	cmp	r0, #0
 8003f36:	f47f ab8f 	bne.w	8003658 <_vfprintf_r+0xaf0>
 8003f3a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003f3c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003f3e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f42:	e511      	b.n	8003968 <_vfprintf_r+0xe00>
 8003f44:	4252      	negs	r2, r2
 8003f46:	9206      	str	r2, [sp, #24]
 8003f48:	9308      	str	r3, [sp, #32]
 8003f4a:	f7ff b96d 	b.w	8003228 <_vfprintf_r+0x6c0>
 8003f4e:	4614      	mov	r4, r2
 8003f50:	4632      	mov	r2, r6
 8003f52:	461e      	mov	r6, r3
 8003f54:	4613      	mov	r3, r2
 8003f56:	462a      	mov	r2, r5
 8003f58:	3201      	adds	r2, #1
 8003f5a:	9209      	str	r2, [sp, #36]	; 0x24
 8003f5c:	f106 0208 	add.w	r2, r6, #8
 8003f60:	e9c6 3900 	strd	r3, r9, [r6]
 8003f64:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003f66:	932b      	str	r3, [sp, #172]	; 0xac
 8003f68:	444c      	add	r4, r9
 8003f6a:	2b07      	cmp	r3, #7
 8003f6c:	942c      	str	r4, [sp, #176]	; 0xb0
 8003f6e:	f73f acc3 	bgt.w	80038f8 <_vfprintf_r+0xd90>
 8003f72:	3301      	adds	r3, #1
 8003f74:	9309      	str	r3, [sp, #36]	; 0x24
 8003f76:	f102 0b08 	add.w	fp, r2, #8
 8003f7a:	4616      	mov	r6, r2
 8003f7c:	f7ff bbca 	b.w	8003714 <_vfprintf_r+0xbac>
 8003f80:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f82:	9907      	ldr	r1, [sp, #28]
 8003f84:	9803      	ldr	r0, [sp, #12]
 8003f86:	f003 f91d 	bl	80071c4 <__sprint_r>
 8003f8a:	2800      	cmp	r0, #0
 8003f8c:	f47f ab64 	bne.w	8003658 <_vfprintf_r+0xaf0>
 8003f90:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003f92:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f96:	f7ff bade 	b.w	8003556 <_vfprintf_r+0x9ee>
 8003f9a:	464b      	mov	r3, r9
 8003f9c:	2b06      	cmp	r3, #6
 8003f9e:	bf28      	it	cs
 8003fa0:	2306      	movcs	r3, #6
 8003fa2:	46b9      	mov	r9, r7
 8003fa4:	970f      	str	r7, [sp, #60]	; 0x3c
 8003fa6:	9714      	str	r7, [sp, #80]	; 0x50
 8003fa8:	9711      	str	r7, [sp, #68]	; 0x44
 8003faa:	970a      	str	r7, [sp, #40]	; 0x28
 8003fac:	463a      	mov	r2, r7
 8003fae:	9304      	str	r3, [sp, #16]
 8003fb0:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003fb4:	4f05      	ldr	r7, [pc, #20]	; (8003fcc <_vfprintf_r+0x1464>)
 8003fb6:	f7fe bf64 	b.w	8002e82 <_vfprintf_r+0x31a>
 8003fba:	bf00      	nop
 8003fbc:	080078a8 	.word	0x080078a8
 8003fc0:	0800788c 	.word	0x0800788c
 8003fc4:	40300000 	.word	0x40300000
 8003fc8:	3fe00000 	.word	0x3fe00000
 8003fcc:	080078a0 	.word	0x080078a0
 8003fd0:	460c      	mov	r4, r1
 8003fd2:	4639      	mov	r1, r7
 8003fd4:	465f      	mov	r7, fp
 8003fd6:	469b      	mov	fp, r3
 8003fd8:	460b      	mov	r3, r1
 8003fda:	3201      	adds	r2, #1
 8003fdc:	442c      	add	r4, r5
 8003fde:	2a07      	cmp	r2, #7
 8003fe0:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003fe4:	e9cb 3500 	strd	r3, r5, [fp]
 8003fe8:	f73f aca5 	bgt.w	8003936 <_vfprintf_r+0xdce>
 8003fec:	f10b 0b08 	add.w	fp, fp, #8
 8003ff0:	e4ac      	b.n	800394c <_vfprintf_r+0xde4>
 8003ff2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ff4:	1cda      	adds	r2, r3, #3
 8003ff6:	db02      	blt.n	8003ffe <_vfprintf_r+0x1496>
 8003ff8:	4599      	cmp	r9, r3
 8003ffa:	f280 80b5 	bge.w	8004168 <_vfprintf_r+0x1600>
 8003ffe:	3e02      	subs	r6, #2
 8004000:	f026 0320 	bic.w	r3, r6, #32
 8004004:	9304      	str	r3, [sp, #16]
 8004006:	e611      	b.n	8003c2c <_vfprintf_r+0x10c4>
 8004008:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800400a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 800400e:	465a      	mov	r2, fp
 8004010:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8004014:	18fb      	adds	r3, r7, r3
 8004016:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 800401a:	970c      	str	r7, [sp, #48]	; 0x30
 800401c:	4eaf      	ldr	r6, [pc, #700]	; (80042dc <_vfprintf_r+0x1774>)
 800401e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8004022:	9309      	str	r3, [sp, #36]	; 0x24
 8004024:	464f      	mov	r7, r9
 8004026:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800402a:	4621      	mov	r1, r4
 800402c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800402e:	2b00      	cmp	r3, #0
 8004030:	d05b      	beq.n	80040ea <_vfprintf_r+0x1582>
 8004032:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004034:	2b00      	cmp	r3, #0
 8004036:	d154      	bne.n	80040e2 <_vfprintf_r+0x157a>
 8004038:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800403a:	3b01      	subs	r3, #1
 800403c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8004040:	9314      	str	r3, [sp, #80]	; 0x50
 8004042:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004044:	9818      	ldr	r0, [sp, #96]	; 0x60
 8004046:	6010      	str	r0, [r2, #0]
 8004048:	3301      	adds	r3, #1
 800404a:	4459      	add	r1, fp
 800404c:	2b07      	cmp	r3, #7
 800404e:	912c      	str	r1, [sp, #176]	; 0xb0
 8004050:	f8c2 b004 	str.w	fp, [r2, #4]
 8004054:	932b      	str	r3, [sp, #172]	; 0xac
 8004056:	dc68      	bgt.n	800412a <_vfprintf_r+0x15c2>
 8004058:	3208      	adds	r2, #8
 800405a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800405c:	f898 3000 	ldrb.w	r3, [r8]
 8004060:	1bc5      	subs	r5, r0, r7
 8004062:	429d      	cmp	r5, r3
 8004064:	bfa8      	it	ge
 8004066:	461d      	movge	r5, r3
 8004068:	2d00      	cmp	r5, #0
 800406a:	dd0b      	ble.n	8004084 <_vfprintf_r+0x151c>
 800406c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800406e:	6017      	str	r7, [r2, #0]
 8004070:	3301      	adds	r3, #1
 8004072:	4429      	add	r1, r5
 8004074:	2b07      	cmp	r3, #7
 8004076:	912c      	str	r1, [sp, #176]	; 0xb0
 8004078:	6055      	str	r5, [r2, #4]
 800407a:	932b      	str	r3, [sp, #172]	; 0xac
 800407c:	dc5e      	bgt.n	800413c <_vfprintf_r+0x15d4>
 800407e:	f898 3000 	ldrb.w	r3, [r8]
 8004082:	3208      	adds	r2, #8
 8004084:	2d00      	cmp	r5, #0
 8004086:	bfac      	ite	ge
 8004088:	1b5d      	subge	r5, r3, r5
 800408a:	461d      	movlt	r5, r3
 800408c:	2d00      	cmp	r5, #0
 800408e:	dd26      	ble.n	80040de <_vfprintf_r+0x1576>
 8004090:	2d10      	cmp	r5, #16
 8004092:	982b      	ldr	r0, [sp, #172]	; 0xac
 8004094:	dd3c      	ble.n	8004110 <_vfprintf_r+0x15a8>
 8004096:	2410      	movs	r4, #16
 8004098:	e003      	b.n	80040a2 <_vfprintf_r+0x153a>
 800409a:	3208      	adds	r2, #8
 800409c:	3d10      	subs	r5, #16
 800409e:	2d10      	cmp	r5, #16
 80040a0:	dd36      	ble.n	8004110 <_vfprintf_r+0x15a8>
 80040a2:	3001      	adds	r0, #1
 80040a4:	3110      	adds	r1, #16
 80040a6:	2807      	cmp	r0, #7
 80040a8:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80040ac:	e9c2 6400 	strd	r6, r4, [r2]
 80040b0:	ddf3      	ble.n	800409a <_vfprintf_r+0x1532>
 80040b2:	aa2a      	add	r2, sp, #168	; 0xa8
 80040b4:	4651      	mov	r1, sl
 80040b6:	4648      	mov	r0, r9
 80040b8:	f003 f884 	bl	80071c4 <__sprint_r>
 80040bc:	2800      	cmp	r0, #0
 80040be:	d150      	bne.n	8004162 <_vfprintf_r+0x15fa>
 80040c0:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 80040c4:	aa2d      	add	r2, sp, #180	; 0xb4
 80040c6:	e7e9      	b.n	800409c <_vfprintf_r+0x1534>
 80040c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80040ca:	4651      	mov	r1, sl
 80040cc:	4648      	mov	r0, r9
 80040ce:	f003 f879 	bl	80071c4 <__sprint_r>
 80040d2:	2800      	cmp	r0, #0
 80040d4:	d145      	bne.n	8004162 <_vfprintf_r+0x15fa>
 80040d6:	f898 3000 	ldrb.w	r3, [r8]
 80040da:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80040dc:	aa2d      	add	r2, sp, #180	; 0xb4
 80040de:	441f      	add	r7, r3
 80040e0:	e7a4      	b.n	800402c <_vfprintf_r+0x14c4>
 80040e2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80040e4:	3b01      	subs	r3, #1
 80040e6:	930f      	str	r3, [sp, #60]	; 0x3c
 80040e8:	e7ab      	b.n	8004042 <_vfprintf_r+0x14da>
 80040ea:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80040ec:	2b00      	cmp	r3, #0
 80040ee:	d1f8      	bne.n	80040e2 <_vfprintf_r+0x157a>
 80040f0:	46b9      	mov	r9, r7
 80040f2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80040f4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 80040f6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80040fa:	18fb      	adds	r3, r7, r3
 80040fc:	4599      	cmp	r9, r3
 80040fe:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8004102:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8004106:	4693      	mov	fp, r2
 8004108:	460c      	mov	r4, r1
 800410a:	bf28      	it	cs
 800410c:	4699      	movcs	r9, r3
 800410e:	e424      	b.n	800395a <_vfprintf_r+0xdf2>
 8004110:	3001      	adds	r0, #1
 8004112:	4429      	add	r1, r5
 8004114:	2807      	cmp	r0, #7
 8004116:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800411a:	e9c2 6500 	strd	r6, r5, [r2]
 800411e:	dcd3      	bgt.n	80040c8 <_vfprintf_r+0x1560>
 8004120:	f898 3000 	ldrb.w	r3, [r8]
 8004124:	3208      	adds	r2, #8
 8004126:	441f      	add	r7, r3
 8004128:	e780      	b.n	800402c <_vfprintf_r+0x14c4>
 800412a:	aa2a      	add	r2, sp, #168	; 0xa8
 800412c:	4651      	mov	r1, sl
 800412e:	4648      	mov	r0, r9
 8004130:	f003 f848 	bl	80071c4 <__sprint_r>
 8004134:	b9a8      	cbnz	r0, 8004162 <_vfprintf_r+0x15fa>
 8004136:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004138:	aa2d      	add	r2, sp, #180	; 0xb4
 800413a:	e78e      	b.n	800405a <_vfprintf_r+0x14f2>
 800413c:	aa2a      	add	r2, sp, #168	; 0xa8
 800413e:	4651      	mov	r1, sl
 8004140:	4648      	mov	r0, r9
 8004142:	f003 f83f 	bl	80071c4 <__sprint_r>
 8004146:	b960      	cbnz	r0, 8004162 <_vfprintf_r+0x15fa>
 8004148:	f898 3000 	ldrb.w	r3, [r8]
 800414c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800414e:	aa2d      	add	r2, sp, #180	; 0xb4
 8004150:	e798      	b.n	8004084 <_vfprintf_r+0x151c>
 8004152:	4638      	mov	r0, r7
 8004154:	f7fc fa74 	bl	8000640 <strlen>
 8004158:	46a9      	mov	r9, r5
 800415a:	4603      	mov	r3, r0
 800415c:	9009      	str	r0, [sp, #36]	; 0x24
 800415e:	f7ff b8f4 	b.w	800334a <_vfprintf_r+0x7e2>
 8004162:	46d1      	mov	r9, sl
 8004164:	f7ff ba7a 	b.w	800365c <_vfprintf_r+0xaf4>
 8004168:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800416a:	4619      	mov	r1, r3
 800416c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800416e:	4299      	cmp	r1, r3
 8004170:	f300 8082 	bgt.w	8004278 <_vfprintf_r+0x1710>
 8004174:	07c4      	lsls	r4, r0, #31
 8004176:	f140 816b 	bpl.w	8004450 <_vfprintf_r+0x18e8>
 800417a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800417c:	4413      	add	r3, r2
 800417e:	9309      	str	r3, [sp, #36]	; 0x24
 8004180:	0541      	lsls	r1, r0, #21
 8004182:	d503      	bpl.n	800418c <_vfprintf_r+0x1624>
 8004184:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004186:	2b00      	cmp	r3, #0
 8004188:	f300 80e6 	bgt.w	8004358 <_vfprintf_r+0x17f0>
 800418c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800418e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004192:	9304      	str	r3, [sp, #16]
 8004194:	2667      	movs	r6, #103	; 0x67
 8004196:	2300      	movs	r3, #0
 8004198:	930f      	str	r3, [sp, #60]	; 0x3c
 800419a:	9314      	str	r3, [sp, #80]	; 0x50
 800419c:	e586      	b.n	8003cac <_vfprintf_r+0x1144>
 800419e:	222d      	movs	r2, #45	; 0x2d
 80041a0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80041a4:	f04f 0900 	mov.w	r9, #0
 80041a8:	f7fe be6c 	b.w	8002e84 <_vfprintf_r+0x31c>
 80041ac:	46a1      	mov	r9, r4
 80041ae:	f7ff ba55 	b.w	800365c <_vfprintf_r+0xaf4>
 80041b2:	900a      	str	r0, [sp, #40]	; 0x28
 80041b4:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 80041b8:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 80041bc:	931f      	str	r3, [sp, #124]	; 0x7c
 80041be:	232d      	movs	r3, #45	; 0x2d
 80041c0:	911e      	str	r1, [sp, #120]	; 0x78
 80041c2:	930b      	str	r3, [sp, #44]	; 0x2c
 80041c4:	e619      	b.n	8003dfa <_vfprintf_r+0x1292>
 80041c6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80041c8:	9328      	str	r3, [sp, #160]	; 0xa0
 80041ca:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80041cc:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 80041d0:	7bd9      	ldrb	r1, [r3, #15]
 80041d2:	4291      	cmp	r1, r2
 80041d4:	462b      	mov	r3, r5
 80041d6:	d109      	bne.n	80041ec <_vfprintf_r+0x1684>
 80041d8:	2030      	movs	r0, #48	; 0x30
 80041da:	f803 0c01 	strb.w	r0, [r3, #-1]
 80041de:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80041e0:	1e5a      	subs	r2, r3, #1
 80041e2:	9228      	str	r2, [sp, #160]	; 0xa0
 80041e4:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80041e8:	4291      	cmp	r1, r2
 80041ea:	d0f6      	beq.n	80041da <_vfprintf_r+0x1672>
 80041ec:	2a39      	cmp	r2, #57	; 0x39
 80041ee:	bf0b      	itete	eq
 80041f0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 80041f2:	3201      	addne	r2, #1
 80041f4:	7a92      	ldrbeq	r2, [r2, #10]
 80041f6:	b2d2      	uxtbne	r2, r2
 80041f8:	f803 2c01 	strb.w	r2, [r3, #-1]
 80041fc:	e682      	b.n	8003f04 <_vfprintf_r+0x139c>
 80041fe:	f418 7f00 	tst.w	r8, #512	; 0x200
 8004202:	f43f ad9f 	beq.w	8003d44 <_vfprintf_r+0x11dc>
 8004206:	9a05      	ldr	r2, [sp, #20]
 8004208:	701a      	strb	r2, [r3, #0]
 800420a:	4657      	mov	r7, sl
 800420c:	f7fe bf52 	b.w	80030b4 <_vfprintf_r+0x54c>
 8004210:	aa2a      	add	r2, sp, #168	; 0xa8
 8004212:	9907      	ldr	r1, [sp, #28]
 8004214:	9803      	ldr	r0, [sp, #12]
 8004216:	f002 ffd5 	bl	80071c4 <__sprint_r>
 800421a:	2800      	cmp	r0, #0
 800421c:	f47f aa1c 	bne.w	8003658 <_vfprintf_r+0xaf0>
 8004220:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004222:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004226:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800422a:	e571      	b.n	8003d10 <_vfprintf_r+0x11a8>
 800422c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800422e:	2b00      	cmp	r3, #0
 8004230:	f340 8164 	ble.w	80044fc <_vfprintf_r+0x1994>
 8004234:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004236:	f1b9 0f00 	cmp.w	r9, #0
 800423a:	f040 8103 	bne.w	8004444 <_vfprintf_r+0x18dc>
 800423e:	07c6      	lsls	r6, r0, #31
 8004240:	f100 8100 	bmi.w	8004444 <_vfprintf_r+0x18dc>
 8004244:	9309      	str	r3, [sp, #36]	; 0x24
 8004246:	2666      	movs	r6, #102	; 0x66
 8004248:	0543      	lsls	r3, r0, #21
 800424a:	f100 8086 	bmi.w	800435a <_vfprintf_r+0x17f2>
 800424e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004250:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004254:	9304      	str	r3, [sp, #16]
 8004256:	e79e      	b.n	8004196 <_vfprintf_r+0x162e>
 8004258:	aa2a      	add	r2, sp, #168	; 0xa8
 800425a:	9907      	ldr	r1, [sp, #28]
 800425c:	9803      	ldr	r0, [sp, #12]
 800425e:	f002 ffb1 	bl	80071c4 <__sprint_r>
 8004262:	2800      	cmp	r0, #0
 8004264:	f47f a9f8 	bne.w	8003658 <_vfprintf_r+0xaf0>
 8004268:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800426a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800426c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800426e:	1ad3      	subs	r3, r2, r3
 8004270:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004274:	f7ff bb90 	b.w	8003998 <_vfprintf_r+0xe30>
 8004278:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800427a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800427c:	4413      	add	r3, r2
 800427e:	9309      	str	r3, [sp, #36]	; 0x24
 8004280:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004282:	2b00      	cmp	r3, #0
 8004284:	f340 8149 	ble.w	800451a <_vfprintf_r+0x19b2>
 8004288:	2667      	movs	r6, #103	; 0x67
 800428a:	e7dd      	b.n	8004248 <_vfprintf_r+0x16e0>
 800428c:	2330      	movs	r3, #48	; 0x30
 800428e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004292:	2358      	movs	r3, #88	; 0x58
 8004294:	e595      	b.n	8003dc2 <_vfprintf_r+0x125a>
 8004296:	9803      	ldr	r0, [sp, #12]
 8004298:	aa2a      	add	r2, sp, #168	; 0xa8
 800429a:	4649      	mov	r1, r9
 800429c:	f002 ff92 	bl	80071c4 <__sprint_r>
 80042a0:	2800      	cmp	r0, #0
 80042a2:	f47f a9e0 	bne.w	8003666 <_vfprintf_r+0xafe>
 80042a6:	f7fe bf0f 	b.w	80030c8 <_vfprintf_r+0x560>
 80042aa:	a824      	add	r0, sp, #144	; 0x90
 80042ac:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80042b0:	f002 fe90 	bl	8006fd4 <frexp>
 80042b4:	2200      	movs	r2, #0
 80042b6:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80042ba:	ec51 0b10 	vmov	r0, r1, d0
 80042be:	f7fc fc3b 	bl	8000b38 <__aeabi_dmul>
 80042c2:	2200      	movs	r2, #0
 80042c4:	2300      	movs	r3, #0
 80042c6:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80042ca:	f7fc fe9d 	bl	8001008 <__aeabi_dcmpeq>
 80042ce:	b108      	cbz	r0, 80042d4 <_vfprintf_r+0x176c>
 80042d0:	2301      	movs	r3, #1
 80042d2:	9324      	str	r3, [sp, #144]	; 0x90
 80042d4:	4b02      	ldr	r3, [pc, #8]	; (80042e0 <_vfprintf_r+0x1778>)
 80042d6:	9309      	str	r3, [sp, #36]	; 0x24
 80042d8:	e5ac      	b.n	8003e34 <_vfprintf_r+0x12cc>
 80042da:	bf00      	nop
 80042dc:	080078bc 	.word	0x080078bc
 80042e0:	08007878 	.word	0x08007878
 80042e4:	425d      	negs	r5, r3
 80042e6:	3310      	adds	r3, #16
 80042e8:	4bb9      	ldr	r3, [pc, #740]	; (80045d0 <_vfprintf_r+0x1a68>)
 80042ea:	f280 8097 	bge.w	800441c <_vfprintf_r+0x18b4>
 80042ee:	4619      	mov	r1, r3
 80042f0:	2610      	movs	r6, #16
 80042f2:	4623      	mov	r3, r4
 80042f4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80042f8:	460c      	mov	r4, r1
 80042fa:	e005      	b.n	8004308 <_vfprintf_r+0x17a0>
 80042fc:	f10b 0b08 	add.w	fp, fp, #8
 8004300:	3d10      	subs	r5, #16
 8004302:	2d10      	cmp	r5, #16
 8004304:	f340 8087 	ble.w	8004416 <_vfprintf_r+0x18ae>
 8004308:	3201      	adds	r2, #1
 800430a:	3310      	adds	r3, #16
 800430c:	2a07      	cmp	r2, #7
 800430e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8004312:	e9cb 4600 	strd	r4, r6, [fp]
 8004316:	ddf1      	ble.n	80042fc <_vfprintf_r+0x1794>
 8004318:	aa2a      	add	r2, sp, #168	; 0xa8
 800431a:	9907      	ldr	r1, [sp, #28]
 800431c:	4648      	mov	r0, r9
 800431e:	f002 ff51 	bl	80071c4 <__sprint_r>
 8004322:	2800      	cmp	r0, #0
 8004324:	f47f a998 	bne.w	8003658 <_vfprintf_r+0xaf0>
 8004328:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 800432c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004330:	e7e6      	b.n	8004300 <_vfprintf_r+0x1798>
 8004332:	f109 0101 	add.w	r1, r9, #1
 8004336:	9803      	ldr	r0, [sp, #12]
 8004338:	f001 fe80 	bl	800603c <_malloc_r>
 800433c:	4607      	mov	r7, r0
 800433e:	2800      	cmp	r0, #0
 8004340:	f000 813b 	beq.w	80045ba <_vfprintf_r+0x1a52>
 8004344:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004348:	930e      	str	r3, [sp, #56]	; 0x38
 800434a:	f026 0320 	bic.w	r3, r6, #32
 800434e:	9304      	str	r3, [sp, #16]
 8004350:	46a0      	mov	r8, r4
 8004352:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004354:	900a      	str	r0, [sp, #40]	; 0x28
 8004356:	e547      	b.n	8003de8 <_vfprintf_r+0x1280>
 8004358:	2667      	movs	r6, #103	; 0x67
 800435a:	981a      	ldr	r0, [sp, #104]	; 0x68
 800435c:	2200      	movs	r2, #0
 800435e:	920f      	str	r2, [sp, #60]	; 0x3c
 8004360:	9214      	str	r2, [sp, #80]	; 0x50
 8004362:	7803      	ldrb	r3, [r0, #0]
 8004364:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8004366:	2bff      	cmp	r3, #255	; 0xff
 8004368:	d00c      	beq.n	8004384 <_vfprintf_r+0x181c>
 800436a:	4293      	cmp	r3, r2
 800436c:	da0a      	bge.n	8004384 <_vfprintf_r+0x181c>
 800436e:	7841      	ldrb	r1, [r0, #1]
 8004370:	1ad2      	subs	r2, r2, r3
 8004372:	b1a9      	cbz	r1, 80043a0 <_vfprintf_r+0x1838>
 8004374:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004376:	3301      	adds	r3, #1
 8004378:	9314      	str	r3, [sp, #80]	; 0x50
 800437a:	460b      	mov	r3, r1
 800437c:	2bff      	cmp	r3, #255	; 0xff
 800437e:	f100 0001 	add.w	r0, r0, #1
 8004382:	d1f2      	bne.n	800436a <_vfprintf_r+0x1802>
 8004384:	9211      	str	r2, [sp, #68]	; 0x44
 8004386:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004388:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800438a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800438c:	901a      	str	r0, [sp, #104]	; 0x68
 800438e:	4413      	add	r3, r2
 8004390:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8004392:	fb02 1303 	mla	r3, r2, r3, r1
 8004396:	9309      	str	r3, [sp, #36]	; 0x24
 8004398:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800439c:	9304      	str	r3, [sp, #16]
 800439e:	e485      	b.n	8003cac <_vfprintf_r+0x1144>
 80043a0:	990f      	ldr	r1, [sp, #60]	; 0x3c
 80043a2:	3101      	adds	r1, #1
 80043a4:	910f      	str	r1, [sp, #60]	; 0x3c
 80043a6:	e7de      	b.n	8004366 <_vfprintf_r+0x17fe>
 80043a8:	aa28      	add	r2, sp, #160	; 0xa0
 80043aa:	ab25      	add	r3, sp, #148	; 0x94
 80043ac:	e9cd 3200 	strd	r3, r2, [sp]
 80043b0:	2103      	movs	r1, #3
 80043b2:	ab24      	add	r3, sp, #144	; 0x90
 80043b4:	464a      	mov	r2, r9
 80043b6:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80043ba:	9803      	ldr	r0, [sp, #12]
 80043bc:	f000 fa5c 	bl	8004878 <_dtoa_r>
 80043c0:	464d      	mov	r5, r9
 80043c2:	4607      	mov	r7, r0
 80043c4:	eb00 0409 	add.w	r4, r0, r9
 80043c8:	783b      	ldrb	r3, [r7, #0]
 80043ca:	2b30      	cmp	r3, #48	; 0x30
 80043cc:	f000 80be 	beq.w	800454c <_vfprintf_r+0x19e4>
 80043d0:	9d24      	ldr	r5, [sp, #144]	; 0x90
 80043d2:	442c      	add	r4, r5
 80043d4:	2200      	movs	r2, #0
 80043d6:	2300      	movs	r3, #0
 80043d8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80043dc:	f7fc fe14 	bl	8001008 <__aeabi_dcmpeq>
 80043e0:	b108      	cbz	r0, 80043e6 <_vfprintf_r+0x187e>
 80043e2:	4623      	mov	r3, r4
 80043e4:	e413      	b.n	8003c0e <_vfprintf_r+0x10a6>
 80043e6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80043e8:	42a3      	cmp	r3, r4
 80043ea:	f4bf ac10 	bcs.w	8003c0e <_vfprintf_r+0x10a6>
 80043ee:	2130      	movs	r1, #48	; 0x30
 80043f0:	1c5a      	adds	r2, r3, #1
 80043f2:	9228      	str	r2, [sp, #160]	; 0xa0
 80043f4:	7019      	strb	r1, [r3, #0]
 80043f6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80043f8:	429c      	cmp	r4, r3
 80043fa:	d8f9      	bhi.n	80043f0 <_vfprintf_r+0x1888>
 80043fc:	e407      	b.n	8003c0e <_vfprintf_r+0x10a6>
 80043fe:	197c      	adds	r4, r7, r5
 8004400:	e7e8      	b.n	80043d4 <_vfprintf_r+0x186c>
 8004402:	f1b9 0f00 	cmp.w	r9, #0
 8004406:	f000 8092 	beq.w	800452e <_vfprintf_r+0x19c6>
 800440a:	900a      	str	r0, [sp, #40]	; 0x28
 800440c:	e4ec      	b.n	8003de8 <_vfprintf_r+0x1280>
 800440e:	900a      	str	r0, [sp, #40]	; 0x28
 8004410:	f04f 0906 	mov.w	r9, #6
 8004414:	e4e8      	b.n	8003de8 <_vfprintf_r+0x1280>
 8004416:	4621      	mov	r1, r4
 8004418:	461c      	mov	r4, r3
 800441a:	460b      	mov	r3, r1
 800441c:	3201      	adds	r2, #1
 800441e:	442c      	add	r4, r5
 8004420:	2a07      	cmp	r2, #7
 8004422:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004426:	e9cb 3500 	strd	r3, r5, [fp]
 800442a:	f300 80a9 	bgt.w	8004580 <_vfprintf_r+0x1a18>
 800442e:	f10b 0b08 	add.w	fp, fp, #8
 8004432:	e470      	b.n	8003d16 <_vfprintf_r+0x11ae>
 8004434:	469a      	mov	sl, r3
 8004436:	f7ff bb37 	b.w	8003aa8 <_vfprintf_r+0xf40>
 800443a:	2301      	movs	r3, #1
 800443c:	9324      	str	r3, [sp, #144]	; 0x90
 800443e:	4b65      	ldr	r3, [pc, #404]	; (80045d4 <_vfprintf_r+0x1a6c>)
 8004440:	9309      	str	r3, [sp, #36]	; 0x24
 8004442:	e4f7      	b.n	8003e34 <_vfprintf_r+0x12cc>
 8004444:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004446:	4413      	add	r3, r2
 8004448:	444b      	add	r3, r9
 800444a:	9309      	str	r3, [sp, #36]	; 0x24
 800444c:	2666      	movs	r6, #102	; 0x66
 800444e:	e6fb      	b.n	8004248 <_vfprintf_r+0x16e0>
 8004450:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004452:	9309      	str	r3, [sp, #36]	; 0x24
 8004454:	e694      	b.n	8004180 <_vfprintf_r+0x1618>
 8004456:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 800445a:	4664      	mov	r4, ip
 800445c:	4d5e      	ldr	r5, [pc, #376]	; (80045d8 <_vfprintf_r+0x1a70>)
 800445e:	e000      	b.n	8004462 <_vfprintf_r+0x18fa>
 8004460:	4614      	mov	r4, r2
 8004462:	fba5 1203 	umull	r1, r2, r5, r3
 8004466:	08d2      	lsrs	r2, r2, #3
 8004468:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800446c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004470:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004474:	4613      	mov	r3, r2
 8004476:	2b09      	cmp	r3, #9
 8004478:	f804 1c01 	strb.w	r1, [r4, #-1]
 800447c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004480:	dcee      	bgt.n	8004460 <_vfprintf_r+0x18f8>
 8004482:	3330      	adds	r3, #48	; 0x30
 8004484:	3c02      	subs	r4, #2
 8004486:	b2db      	uxtb	r3, r3
 8004488:	45a4      	cmp	ip, r4
 800448a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800448e:	f240 8090 	bls.w	80045b2 <_vfprintf_r+0x1a4a>
 8004492:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004496:	4611      	mov	r1, r2
 8004498:	e001      	b.n	800449e <_vfprintf_r+0x1936>
 800449a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800449e:	f804 3b01 	strb.w	r3, [r4], #1
 80044a2:	458c      	cmp	ip, r1
 80044a4:	d1f9      	bne.n	800449a <_vfprintf_r+0x1932>
 80044a6:	ab2a      	add	r3, sp, #168	; 0xa8
 80044a8:	1a9b      	subs	r3, r3, r2
 80044aa:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80044ae:	4413      	add	r3, r2
 80044b0:	f7ff bbe3 	b.w	8003c7a <_vfprintf_r+0x1112>
 80044b4:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80044b6:	4f49      	ldr	r7, [pc, #292]	; (80045dc <_vfprintf_r+0x1a74>)
 80044b8:	2b00      	cmp	r3, #0
 80044ba:	bfb6      	itet	lt
 80044bc:	222d      	movlt	r2, #45	; 0x2d
 80044be:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80044c2:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80044c6:	4b46      	ldr	r3, [pc, #280]	; (80045e0 <_vfprintf_r+0x1a78>)
 80044c8:	f7fe bf02 	b.w	80032d0 <_vfprintf_r+0x768>
 80044cc:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80044d0:	f7ff b8c9 	b.w	8003666 <_vfprintf_r+0xafe>
 80044d4:	aa28      	add	r2, sp, #160	; 0xa0
 80044d6:	ab25      	add	r3, sp, #148	; 0x94
 80044d8:	e9cd 3200 	strd	r3, r2, [sp]
 80044dc:	2103      	movs	r1, #3
 80044de:	ab24      	add	r3, sp, #144	; 0x90
 80044e0:	464a      	mov	r2, r9
 80044e2:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80044e6:	9803      	ldr	r0, [sp, #12]
 80044e8:	f000 f9c6 	bl	8004878 <_dtoa_r>
 80044ec:	464d      	mov	r5, r9
 80044ee:	4607      	mov	r7, r0
 80044f0:	2e46      	cmp	r6, #70	; 0x46
 80044f2:	eb07 0405 	add.w	r4, r7, r5
 80044f6:	f43f af67 	beq.w	80043c8 <_vfprintf_r+0x1860>
 80044fa:	e76b      	b.n	80043d4 <_vfprintf_r+0x186c>
 80044fc:	f1b9 0f00 	cmp.w	r9, #0
 8004500:	d131      	bne.n	8004566 <_vfprintf_r+0x19fe>
 8004502:	07c5      	lsls	r5, r0, #31
 8004504:	d42f      	bmi.n	8004566 <_vfprintf_r+0x19fe>
 8004506:	2301      	movs	r3, #1
 8004508:	9304      	str	r3, [sp, #16]
 800450a:	9309      	str	r3, [sp, #36]	; 0x24
 800450c:	2666      	movs	r6, #102	; 0x66
 800450e:	e642      	b.n	8004196 <_vfprintf_r+0x162e>
 8004510:	07c3      	lsls	r3, r0, #31
 8004512:	f57f abbf 	bpl.w	8003c94 <_vfprintf_r+0x112c>
 8004516:	f7ff bbb9 	b.w	8003c8c <_vfprintf_r+0x1124>
 800451a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800451c:	f1c3 0301 	rsb	r3, r3, #1
 8004520:	441a      	add	r2, r3
 8004522:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8004526:	9209      	str	r2, [sp, #36]	; 0x24
 8004528:	9304      	str	r3, [sp, #16]
 800452a:	2667      	movs	r6, #103	; 0x67
 800452c:	e633      	b.n	8004196 <_vfprintf_r+0x162e>
 800452e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8004532:	f04f 0901 	mov.w	r9, #1
 8004536:	e457      	b.n	8003de8 <_vfprintf_r+0x1280>
 8004538:	465a      	mov	r2, fp
 800453a:	e511      	b.n	8003f60 <_vfprintf_r+0x13f8>
 800453c:	2e47      	cmp	r6, #71	; 0x47
 800453e:	f47f af5e 	bne.w	80043fe <_vfprintf_r+0x1896>
 8004542:	f018 0f01 	tst.w	r8, #1
 8004546:	f43f ab61 	beq.w	8003c0c <_vfprintf_r+0x10a4>
 800454a:	e7d1      	b.n	80044f0 <_vfprintf_r+0x1988>
 800454c:	2200      	movs	r2, #0
 800454e:	2300      	movs	r3, #0
 8004550:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004554:	f7fc fd58 	bl	8001008 <__aeabi_dcmpeq>
 8004558:	2800      	cmp	r0, #0
 800455a:	f47f af39 	bne.w	80043d0 <_vfprintf_r+0x1868>
 800455e:	f1c5 0501 	rsb	r5, r5, #1
 8004562:	9524      	str	r5, [sp, #144]	; 0x90
 8004564:	e735      	b.n	80043d2 <_vfprintf_r+0x186a>
 8004566:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004568:	3301      	adds	r3, #1
 800456a:	444b      	add	r3, r9
 800456c:	9309      	str	r3, [sp, #36]	; 0x24
 800456e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004572:	9304      	str	r3, [sp, #16]
 8004574:	2666      	movs	r6, #102	; 0x66
 8004576:	e60e      	b.n	8004196 <_vfprintf_r+0x162e>
 8004578:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800457c:	f7ff bb7a 	b.w	8003c74 <_vfprintf_r+0x110c>
 8004580:	aa2a      	add	r2, sp, #168	; 0xa8
 8004582:	9907      	ldr	r1, [sp, #28]
 8004584:	9803      	ldr	r0, [sp, #12]
 8004586:	f002 fe1d 	bl	80071c4 <__sprint_r>
 800458a:	2800      	cmp	r0, #0
 800458c:	f47f a864 	bne.w	8003658 <_vfprintf_r+0xaf0>
 8004590:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004594:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004598:	f7ff bbbd 	b.w	8003d16 <_vfprintf_r+0x11ae>
 800459c:	9908      	ldr	r1, [sp, #32]
 800459e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 80045a2:	680b      	ldr	r3, [r1, #0]
 80045a4:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 80045a8:	1d0b      	adds	r3, r1, #4
 80045aa:	4692      	mov	sl, r2
 80045ac:	9308      	str	r3, [sp, #32]
 80045ae:	f7fe bb59 	b.w	8002c64 <_vfprintf_r+0xfc>
 80045b2:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 80045b6:	f7ff bb60 	b.w	8003c7a <_vfprintf_r+0x1112>
 80045ba:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80045be:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80045c2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80045c6:	f8a9 300c 	strh.w	r3, [r9, #12]
 80045ca:	f7ff b84c 	b.w	8003666 <_vfprintf_r+0xafe>
 80045ce:	bf00      	nop
 80045d0:	080078bc 	.word	0x080078bc
 80045d4:	0800788c 	.word	0x0800788c
 80045d8:	cccccccd 	.word	0xcccccccd
 80045dc:	08007874 	.word	0x08007874
 80045e0:	08007870 	.word	0x08007870

080045e4 <__sbprintf>:
 80045e4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80045e8:	460c      	mov	r4, r1
 80045ea:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 80045ee:	8989      	ldrh	r1, [r1, #12]
 80045f0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80045f2:	89e5      	ldrh	r5, [r4, #14]
 80045f4:	9619      	str	r6, [sp, #100]	; 0x64
 80045f6:	f021 0102 	bic.w	r1, r1, #2
 80045fa:	4606      	mov	r6, r0
 80045fc:	69e0      	ldr	r0, [r4, #28]
 80045fe:	f8ad 100c 	strh.w	r1, [sp, #12]
 8004602:	4617      	mov	r7, r2
 8004604:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004608:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800460a:	f8ad 500e 	strh.w	r5, [sp, #14]
 800460e:	4698      	mov	r8, r3
 8004610:	ad1a      	add	r5, sp, #104	; 0x68
 8004612:	2300      	movs	r3, #0
 8004614:	9007      	str	r0, [sp, #28]
 8004616:	a816      	add	r0, sp, #88	; 0x58
 8004618:	9209      	str	r2, [sp, #36]	; 0x24
 800461a:	9306      	str	r3, [sp, #24]
 800461c:	9500      	str	r5, [sp, #0]
 800461e:	9504      	str	r5, [sp, #16]
 8004620:	9102      	str	r1, [sp, #8]
 8004622:	9105      	str	r1, [sp, #20]
 8004624:	f001 fc8a 	bl	8005f3c <__retarget_lock_init_recursive>
 8004628:	4643      	mov	r3, r8
 800462a:	463a      	mov	r2, r7
 800462c:	4669      	mov	r1, sp
 800462e:	4630      	mov	r0, r6
 8004630:	f7fe fa9a 	bl	8002b68 <_vfprintf_r>
 8004634:	1e05      	subs	r5, r0, #0
 8004636:	db07      	blt.n	8004648 <__sbprintf+0x64>
 8004638:	4630      	mov	r0, r6
 800463a:	4669      	mov	r1, sp
 800463c:	f001 f8d6 	bl	80057ec <_fflush_r>
 8004640:	2800      	cmp	r0, #0
 8004642:	bf18      	it	ne
 8004644:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004648:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 800464c:	065b      	lsls	r3, r3, #25
 800464e:	d503      	bpl.n	8004658 <__sbprintf+0x74>
 8004650:	89a3      	ldrh	r3, [r4, #12]
 8004652:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004656:	81a3      	strh	r3, [r4, #12]
 8004658:	9816      	ldr	r0, [sp, #88]	; 0x58
 800465a:	f001 fc71 	bl	8005f40 <__retarget_lock_close_recursive>
 800465e:	4628      	mov	r0, r5
 8004660:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004664:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004668 <__swsetup_r>:
 8004668:	b538      	push	{r3, r4, r5, lr}
 800466a:	4b31      	ldr	r3, [pc, #196]	; (8004730 <__swsetup_r+0xc8>)
 800466c:	681b      	ldr	r3, [r3, #0]
 800466e:	4605      	mov	r5, r0
 8004670:	460c      	mov	r4, r1
 8004672:	b113      	cbz	r3, 800467a <__swsetup_r+0x12>
 8004674:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004676:	2a00      	cmp	r2, #0
 8004678:	d03a      	beq.n	80046f0 <__swsetup_r+0x88>
 800467a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800467e:	b293      	uxth	r3, r2
 8004680:	0718      	lsls	r0, r3, #28
 8004682:	d50c      	bpl.n	800469e <__swsetup_r+0x36>
 8004684:	6920      	ldr	r0, [r4, #16]
 8004686:	b1a8      	cbz	r0, 80046b4 <__swsetup_r+0x4c>
 8004688:	f013 0201 	ands.w	r2, r3, #1
 800468c:	d020      	beq.n	80046d0 <__swsetup_r+0x68>
 800468e:	6963      	ldr	r3, [r4, #20]
 8004690:	2200      	movs	r2, #0
 8004692:	425b      	negs	r3, r3
 8004694:	61a3      	str	r3, [r4, #24]
 8004696:	60a2      	str	r2, [r4, #8]
 8004698:	b300      	cbz	r0, 80046dc <__swsetup_r+0x74>
 800469a:	2000      	movs	r0, #0
 800469c:	bd38      	pop	{r3, r4, r5, pc}
 800469e:	06d9      	lsls	r1, r3, #27
 80046a0:	d53e      	bpl.n	8004720 <__swsetup_r+0xb8>
 80046a2:	0758      	lsls	r0, r3, #29
 80046a4:	d428      	bmi.n	80046f8 <__swsetup_r+0x90>
 80046a6:	6920      	ldr	r0, [r4, #16]
 80046a8:	f042 0308 	orr.w	r3, r2, #8
 80046ac:	81a3      	strh	r3, [r4, #12]
 80046ae:	b29b      	uxth	r3, r3
 80046b0:	2800      	cmp	r0, #0
 80046b2:	d1e9      	bne.n	8004688 <__swsetup_r+0x20>
 80046b4:	f403 7220 	and.w	r2, r3, #640	; 0x280
 80046b8:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 80046bc:	d0e4      	beq.n	8004688 <__swsetup_r+0x20>
 80046be:	4628      	mov	r0, r5
 80046c0:	4621      	mov	r1, r4
 80046c2:	f001 fc71 	bl	8005fa8 <__smakebuf_r>
 80046c6:	89a3      	ldrh	r3, [r4, #12]
 80046c8:	6920      	ldr	r0, [r4, #16]
 80046ca:	f013 0201 	ands.w	r2, r3, #1
 80046ce:	d1de      	bne.n	800468e <__swsetup_r+0x26>
 80046d0:	0799      	lsls	r1, r3, #30
 80046d2:	bf58      	it	pl
 80046d4:	6962      	ldrpl	r2, [r4, #20]
 80046d6:	60a2      	str	r2, [r4, #8]
 80046d8:	2800      	cmp	r0, #0
 80046da:	d1de      	bne.n	800469a <__swsetup_r+0x32>
 80046dc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80046e0:	061a      	lsls	r2, r3, #24
 80046e2:	d5db      	bpl.n	800469c <__swsetup_r+0x34>
 80046e4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80046e8:	81a3      	strh	r3, [r4, #12]
 80046ea:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80046ee:	bd38      	pop	{r3, r4, r5, pc}
 80046f0:	4618      	mov	r0, r3
 80046f2:	f001 f8d7 	bl	80058a4 <__sinit>
 80046f6:	e7c0      	b.n	800467a <__swsetup_r+0x12>
 80046f8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80046fa:	b151      	cbz	r1, 8004712 <__swsetup_r+0xaa>
 80046fc:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004700:	4299      	cmp	r1, r3
 8004702:	d004      	beq.n	800470e <__swsetup_r+0xa6>
 8004704:	4628      	mov	r0, r5
 8004706:	f001 f96f 	bl	80059e8 <_free_r>
 800470a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800470e:	2300      	movs	r3, #0
 8004710:	6323      	str	r3, [r4, #48]	; 0x30
 8004712:	2300      	movs	r3, #0
 8004714:	6920      	ldr	r0, [r4, #16]
 8004716:	6063      	str	r3, [r4, #4]
 8004718:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 800471c:	6020      	str	r0, [r4, #0]
 800471e:	e7c3      	b.n	80046a8 <__swsetup_r+0x40>
 8004720:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004724:	2309      	movs	r3, #9
 8004726:	602b      	str	r3, [r5, #0]
 8004728:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800472c:	81a2      	strh	r2, [r4, #12]
 800472e:	bd38      	pop	{r3, r4, r5, pc}
 8004730:	20000018 	.word	0x20000018

08004734 <register_fini>:
 8004734:	4b02      	ldr	r3, [pc, #8]	; (8004740 <register_fini+0xc>)
 8004736:	b113      	cbz	r3, 800473e <register_fini+0xa>
 8004738:	4802      	ldr	r0, [pc, #8]	; (8004744 <register_fini+0x10>)
 800473a:	f000 b805 	b.w	8004748 <atexit>
 800473e:	4770      	bx	lr
 8004740:	00000000 	.word	0x00000000
 8004744:	08005915 	.word	0x08005915

08004748 <atexit>:
 8004748:	2300      	movs	r3, #0
 800474a:	4601      	mov	r1, r0
 800474c:	461a      	mov	r2, r3
 800474e:	4618      	mov	r0, r3
 8004750:	f002 bd58 	b.w	8007204 <__register_exitproc>

08004754 <quorem>:
 8004754:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004758:	6903      	ldr	r3, [r0, #16]
 800475a:	690f      	ldr	r7, [r1, #16]
 800475c:	42bb      	cmp	r3, r7
 800475e:	b083      	sub	sp, #12
 8004760:	f2c0 8086 	blt.w	8004870 <quorem+0x11c>
 8004764:	3f01      	subs	r7, #1
 8004766:	f101 0914 	add.w	r9, r1, #20
 800476a:	f100 0a14 	add.w	sl, r0, #20
 800476e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004772:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004776:	00bc      	lsls	r4, r7, #2
 8004778:	3201      	adds	r2, #1
 800477a:	fbb3 f8f2 	udiv	r8, r3, r2
 800477e:	eb0a 0304 	add.w	r3, sl, r4
 8004782:	9400      	str	r4, [sp, #0]
 8004784:	eb09 0b04 	add.w	fp, r9, r4
 8004788:	9301      	str	r3, [sp, #4]
 800478a:	f1b8 0f00 	cmp.w	r8, #0
 800478e:	d038      	beq.n	8004802 <quorem+0xae>
 8004790:	2500      	movs	r5, #0
 8004792:	462e      	mov	r6, r5
 8004794:	46ce      	mov	lr, r9
 8004796:	46d4      	mov	ip, sl
 8004798:	f85e 4b04 	ldr.w	r4, [lr], #4
 800479c:	f8dc 3000 	ldr.w	r3, [ip]
 80047a0:	b2a2      	uxth	r2, r4
 80047a2:	fb08 5502 	mla	r5, r8, r2, r5
 80047a6:	0c22      	lsrs	r2, r4, #16
 80047a8:	0c2c      	lsrs	r4, r5, #16
 80047aa:	fb08 4202 	mla	r2, r8, r2, r4
 80047ae:	b2ad      	uxth	r5, r5
 80047b0:	1b75      	subs	r5, r6, r5
 80047b2:	b296      	uxth	r6, r2
 80047b4:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80047b8:	fa15 f383 	uxtah	r3, r5, r3
 80047bc:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80047c0:	b29b      	uxth	r3, r3
 80047c2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80047c6:	45f3      	cmp	fp, lr
 80047c8:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80047cc:	f84c 3b04 	str.w	r3, [ip], #4
 80047d0:	ea4f 4626 	mov.w	r6, r6, asr #16
 80047d4:	d2e0      	bcs.n	8004798 <quorem+0x44>
 80047d6:	9b00      	ldr	r3, [sp, #0]
 80047d8:	f85a 3003 	ldr.w	r3, [sl, r3]
 80047dc:	b98b      	cbnz	r3, 8004802 <quorem+0xae>
 80047de:	9a01      	ldr	r2, [sp, #4]
 80047e0:	1f13      	subs	r3, r2, #4
 80047e2:	459a      	cmp	sl, r3
 80047e4:	d20c      	bcs.n	8004800 <quorem+0xac>
 80047e6:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80047ea:	b94b      	cbnz	r3, 8004800 <quorem+0xac>
 80047ec:	f1a2 0308 	sub.w	r3, r2, #8
 80047f0:	e002      	b.n	80047f8 <quorem+0xa4>
 80047f2:	681a      	ldr	r2, [r3, #0]
 80047f4:	3b04      	subs	r3, #4
 80047f6:	b91a      	cbnz	r2, 8004800 <quorem+0xac>
 80047f8:	459a      	cmp	sl, r3
 80047fa:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80047fe:	d3f8      	bcc.n	80047f2 <quorem+0x9e>
 8004800:	6107      	str	r7, [r0, #16]
 8004802:	4604      	mov	r4, r0
 8004804:	f002 f944 	bl	8006a90 <__mcmp>
 8004808:	2800      	cmp	r0, #0
 800480a:	db2d      	blt.n	8004868 <quorem+0x114>
 800480c:	f108 0801 	add.w	r8, r8, #1
 8004810:	4655      	mov	r5, sl
 8004812:	2300      	movs	r3, #0
 8004814:	f859 1b04 	ldr.w	r1, [r9], #4
 8004818:	6828      	ldr	r0, [r5, #0]
 800481a:	b28a      	uxth	r2, r1
 800481c:	1a9a      	subs	r2, r3, r2
 800481e:	0c0b      	lsrs	r3, r1, #16
 8004820:	fa12 f280 	uxtah	r2, r2, r0
 8004824:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004828:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800482c:	b292      	uxth	r2, r2
 800482e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004832:	45cb      	cmp	fp, r9
 8004834:	f845 2b04 	str.w	r2, [r5], #4
 8004838:	ea4f 4323 	mov.w	r3, r3, asr #16
 800483c:	d2ea      	bcs.n	8004814 <quorem+0xc0>
 800483e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004842:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004846:	b97a      	cbnz	r2, 8004868 <quorem+0x114>
 8004848:	1f1a      	subs	r2, r3, #4
 800484a:	4592      	cmp	sl, r2
 800484c:	d20b      	bcs.n	8004866 <quorem+0x112>
 800484e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004852:	b942      	cbnz	r2, 8004866 <quorem+0x112>
 8004854:	3b08      	subs	r3, #8
 8004856:	e002      	b.n	800485e <quorem+0x10a>
 8004858:	681a      	ldr	r2, [r3, #0]
 800485a:	3b04      	subs	r3, #4
 800485c:	b91a      	cbnz	r2, 8004866 <quorem+0x112>
 800485e:	459a      	cmp	sl, r3
 8004860:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004864:	d3f8      	bcc.n	8004858 <quorem+0x104>
 8004866:	6127      	str	r7, [r4, #16]
 8004868:	4640      	mov	r0, r8
 800486a:	b003      	add	sp, #12
 800486c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004870:	2000      	movs	r0, #0
 8004872:	b003      	add	sp, #12
 8004874:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004878 <_dtoa_r>:
 8004878:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800487c:	ec55 4b10 	vmov	r4, r5, d0
 8004880:	b09b      	sub	sp, #108	; 0x6c
 8004882:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004884:	9102      	str	r1, [sp, #8]
 8004886:	4681      	mov	r9, r0
 8004888:	9207      	str	r2, [sp, #28]
 800488a:	9305      	str	r3, [sp, #20]
 800488c:	e9cd 4500 	strd	r4, r5, [sp]
 8004890:	b156      	cbz	r6, 80048a8 <_dtoa_r+0x30>
 8004892:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004894:	6072      	str	r2, [r6, #4]
 8004896:	2301      	movs	r3, #1
 8004898:	4093      	lsls	r3, r2
 800489a:	60b3      	str	r3, [r6, #8]
 800489c:	4631      	mov	r1, r6
 800489e:	f001 ff07 	bl	80066b0 <_Bfree>
 80048a2:	2300      	movs	r3, #0
 80048a4:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80048a8:	f1b5 0800 	subs.w	r8, r5, #0
 80048ac:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80048ae:	bfb4      	ite	lt
 80048b0:	2301      	movlt	r3, #1
 80048b2:	2300      	movge	r3, #0
 80048b4:	6013      	str	r3, [r2, #0]
 80048b6:	4b76      	ldr	r3, [pc, #472]	; (8004a90 <_dtoa_r+0x218>)
 80048b8:	bfbc      	itt	lt
 80048ba:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80048be:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80048c2:	ea33 0308 	bics.w	r3, r3, r8
 80048c6:	f000 80a6 	beq.w	8004a16 <_dtoa_r+0x19e>
 80048ca:	e9dd 6700 	ldrd	r6, r7, [sp]
 80048ce:	2200      	movs	r2, #0
 80048d0:	2300      	movs	r3, #0
 80048d2:	4630      	mov	r0, r6
 80048d4:	4639      	mov	r1, r7
 80048d6:	f7fc fb97 	bl	8001008 <__aeabi_dcmpeq>
 80048da:	4605      	mov	r5, r0
 80048dc:	b178      	cbz	r0, 80048fe <_dtoa_r+0x86>
 80048de:	9a05      	ldr	r2, [sp, #20]
 80048e0:	2301      	movs	r3, #1
 80048e2:	6013      	str	r3, [r2, #0]
 80048e4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80048e6:	2b00      	cmp	r3, #0
 80048e8:	f000 80c0 	beq.w	8004a6c <_dtoa_r+0x1f4>
 80048ec:	4b69      	ldr	r3, [pc, #420]	; (8004a94 <_dtoa_r+0x21c>)
 80048ee:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80048f0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80048f4:	6013      	str	r3, [r2, #0]
 80048f6:	4658      	mov	r0, fp
 80048f8:	b01b      	add	sp, #108	; 0x6c
 80048fa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80048fe:	aa18      	add	r2, sp, #96	; 0x60
 8004900:	a919      	add	r1, sp, #100	; 0x64
 8004902:	ec47 6b10 	vmov	d0, r6, r7
 8004906:	4648      	mov	r0, r9
 8004908:	f002 f954 	bl	8006bb4 <__d2b>
 800490c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004910:	4682      	mov	sl, r0
 8004912:	f040 80a0 	bne.w	8004a56 <_dtoa_r+0x1de>
 8004916:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800491a:	442c      	add	r4, r5
 800491c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004920:	2b20      	cmp	r3, #32
 8004922:	f340 842c 	ble.w	800517e <_dtoa_r+0x906>
 8004926:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800492a:	fa08 f803 	lsl.w	r8, r8, r3
 800492e:	9b00      	ldr	r3, [sp, #0]
 8004930:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004934:	fa23 f000 	lsr.w	r0, r3, r0
 8004938:	ea48 0000 	orr.w	r0, r8, r0
 800493c:	f7fc f882 	bl	8000a44 <__aeabi_ui2d>
 8004940:	2301      	movs	r3, #1
 8004942:	4606      	mov	r6, r0
 8004944:	3c01      	subs	r4, #1
 8004946:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800494a:	930f      	str	r3, [sp, #60]	; 0x3c
 800494c:	4630      	mov	r0, r6
 800494e:	4639      	mov	r1, r7
 8004950:	2200      	movs	r2, #0
 8004952:	4b51      	ldr	r3, [pc, #324]	; (8004a98 <_dtoa_r+0x220>)
 8004954:	f7fb ff38 	bl	80007c8 <__aeabi_dsub>
 8004958:	a347      	add	r3, pc, #284	; (adr r3, 8004a78 <_dtoa_r+0x200>)
 800495a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800495e:	f7fc f8eb 	bl	8000b38 <__aeabi_dmul>
 8004962:	a347      	add	r3, pc, #284	; (adr r3, 8004a80 <_dtoa_r+0x208>)
 8004964:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004968:	f7fb ff30 	bl	80007cc <__adddf3>
 800496c:	4606      	mov	r6, r0
 800496e:	4620      	mov	r0, r4
 8004970:	460f      	mov	r7, r1
 8004972:	f7fc f877 	bl	8000a64 <__aeabi_i2d>
 8004976:	a344      	add	r3, pc, #272	; (adr r3, 8004a88 <_dtoa_r+0x210>)
 8004978:	e9d3 2300 	ldrd	r2, r3, [r3]
 800497c:	f7fc f8dc 	bl	8000b38 <__aeabi_dmul>
 8004980:	4602      	mov	r2, r0
 8004982:	460b      	mov	r3, r1
 8004984:	4630      	mov	r0, r6
 8004986:	4639      	mov	r1, r7
 8004988:	f7fb ff20 	bl	80007cc <__adddf3>
 800498c:	4606      	mov	r6, r0
 800498e:	460f      	mov	r7, r1
 8004990:	f7fc fb82 	bl	8001098 <__aeabi_d2iz>
 8004994:	2200      	movs	r2, #0
 8004996:	9006      	str	r0, [sp, #24]
 8004998:	2300      	movs	r3, #0
 800499a:	4630      	mov	r0, r6
 800499c:	4639      	mov	r1, r7
 800499e:	f7fc fb3d 	bl	800101c <__aeabi_dcmplt>
 80049a2:	2800      	cmp	r0, #0
 80049a4:	f040 8273 	bne.w	8004e8e <_dtoa_r+0x616>
 80049a8:	9e06      	ldr	r6, [sp, #24]
 80049aa:	2e16      	cmp	r6, #22
 80049ac:	f200 825d 	bhi.w	8004e6a <_dtoa_r+0x5f2>
 80049b0:	4b3a      	ldr	r3, [pc, #232]	; (8004a9c <_dtoa_r+0x224>)
 80049b2:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80049b6:	e9d3 0100 	ldrd	r0, r1, [r3]
 80049ba:	e9dd 2300 	ldrd	r2, r3, [sp]
 80049be:	f7fc fb4b 	bl	8001058 <__aeabi_dcmpgt>
 80049c2:	2800      	cmp	r0, #0
 80049c4:	f000 83d7 	beq.w	8005176 <_dtoa_r+0x8fe>
 80049c8:	1e73      	subs	r3, r6, #1
 80049ca:	9306      	str	r3, [sp, #24]
 80049cc:	2300      	movs	r3, #0
 80049ce:	930d      	str	r3, [sp, #52]	; 0x34
 80049d0:	1b2c      	subs	r4, r5, r4
 80049d2:	f1b4 0801 	subs.w	r8, r4, #1
 80049d6:	f100 8254 	bmi.w	8004e82 <_dtoa_r+0x60a>
 80049da:	2300      	movs	r3, #0
 80049dc:	9308      	str	r3, [sp, #32]
 80049de:	9b06      	ldr	r3, [sp, #24]
 80049e0:	2b00      	cmp	r3, #0
 80049e2:	f2c0 8245 	blt.w	8004e70 <_dtoa_r+0x5f8>
 80049e6:	4498      	add	r8, r3
 80049e8:	930c      	str	r3, [sp, #48]	; 0x30
 80049ea:	2300      	movs	r3, #0
 80049ec:	930b      	str	r3, [sp, #44]	; 0x2c
 80049ee:	9b02      	ldr	r3, [sp, #8]
 80049f0:	2b09      	cmp	r3, #9
 80049f2:	d85b      	bhi.n	8004aac <_dtoa_r+0x234>
 80049f4:	2b05      	cmp	r3, #5
 80049f6:	f340 83c0 	ble.w	800517a <_dtoa_r+0x902>
 80049fa:	3b04      	subs	r3, #4
 80049fc:	9302      	str	r3, [sp, #8]
 80049fe:	2500      	movs	r5, #0
 8004a00:	9b02      	ldr	r3, [sp, #8]
 8004a02:	3b02      	subs	r3, #2
 8004a04:	2b03      	cmp	r3, #3
 8004a06:	f200 8498 	bhi.w	800533a <_dtoa_r+0xac2>
 8004a0a:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004a0e:	03df      	.short	0x03df
 8004a10:	03e803bf 	.word	0x03e803bf
 8004a14:	04f5      	.short	0x04f5
 8004a16:	9a05      	ldr	r2, [sp, #20]
 8004a18:	f242 730f 	movw	r3, #9999	; 0x270f
 8004a1c:	6013      	str	r3, [r2, #0]
 8004a1e:	9b00      	ldr	r3, [sp, #0]
 8004a20:	b983      	cbnz	r3, 8004a44 <_dtoa_r+0x1cc>
 8004a22:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004a26:	b96b      	cbnz	r3, 8004a44 <_dtoa_r+0x1cc>
 8004a28:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004a2a:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004aa0 <_dtoa_r+0x228>
 8004a2e:	2b00      	cmp	r3, #0
 8004a30:	f43f af61 	beq.w	80048f6 <_dtoa_r+0x7e>
 8004a34:	f10b 0308 	add.w	r3, fp, #8
 8004a38:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004a3a:	4658      	mov	r0, fp
 8004a3c:	6013      	str	r3, [r2, #0]
 8004a3e:	b01b      	add	sp, #108	; 0x6c
 8004a40:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004a44:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004a46:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004aa4 <_dtoa_r+0x22c>
 8004a4a:	2b00      	cmp	r3, #0
 8004a4c:	f43f af53 	beq.w	80048f6 <_dtoa_r+0x7e>
 8004a50:	f10b 0303 	add.w	r3, fp, #3
 8004a54:	e7f0      	b.n	8004a38 <_dtoa_r+0x1c0>
 8004a56:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004a5a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004a5e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004a60:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004a64:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004a68:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004a6a:	e76f      	b.n	800494c <_dtoa_r+0xd4>
 8004a6c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004aa8 <_dtoa_r+0x230>
 8004a70:	4658      	mov	r0, fp
 8004a72:	b01b      	add	sp, #108	; 0x6c
 8004a74:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004a78:	636f4361 	.word	0x636f4361
 8004a7c:	3fd287a7 	.word	0x3fd287a7
 8004a80:	8b60c8b3 	.word	0x8b60c8b3
 8004a84:	3fc68a28 	.word	0x3fc68a28
 8004a88:	509f79fb 	.word	0x509f79fb
 8004a8c:	3fd34413 	.word	0x3fd34413
 8004a90:	7ff00000 	.word	0x7ff00000
 8004a94:	080078a9 	.word	0x080078a9
 8004a98:	3ff80000 	.word	0x3ff80000
 8004a9c:	08007908 	.word	0x08007908
 8004aa0:	080078cc 	.word	0x080078cc
 8004aa4:	080078d8 	.word	0x080078d8
 8004aa8:	080078a8 	.word	0x080078a8
 8004aac:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004ab0:	2501      	movs	r5, #1
 8004ab2:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004ab6:	2300      	movs	r3, #0
 8004ab8:	9302      	str	r3, [sp, #8]
 8004aba:	9307      	str	r3, [sp, #28]
 8004abc:	2100      	movs	r1, #0
 8004abe:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004ac2:	940e      	str	r4, [sp, #56]	; 0x38
 8004ac4:	4648      	mov	r0, r9
 8004ac6:	f001 fdcd 	bl	8006664 <_Balloc>
 8004aca:	2c0e      	cmp	r4, #14
 8004acc:	4683      	mov	fp, r0
 8004ace:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004ad2:	f200 80fb 	bhi.w	8004ccc <_dtoa_r+0x454>
 8004ad6:	2d00      	cmp	r5, #0
 8004ad8:	f000 80f8 	beq.w	8004ccc <_dtoa_r+0x454>
 8004adc:	ed9d 7b00 	vldr	d7, [sp]
 8004ae0:	9906      	ldr	r1, [sp, #24]
 8004ae2:	2900      	cmp	r1, #0
 8004ae4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004ae8:	f340 83e5 	ble.w	80052b6 <_dtoa_r+0xa3e>
 8004aec:	4b9d      	ldr	r3, [pc, #628]	; (8004d64 <_dtoa_r+0x4ec>)
 8004aee:	f001 020f 	and.w	r2, r1, #15
 8004af2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004af6:	ed93 7b00 	vldr	d7, [r3]
 8004afa:	110c      	asrs	r4, r1, #4
 8004afc:	06e2      	lsls	r2, r4, #27
 8004afe:	ed8d 7b00 	vstr	d7, [sp]
 8004b02:	f140 849e 	bpl.w	8005442 <_dtoa_r+0xbca>
 8004b06:	4b98      	ldr	r3, [pc, #608]	; (8004d68 <_dtoa_r+0x4f0>)
 8004b08:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004b0c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004b10:	f7fc f93c 	bl	8000d8c <__aeabi_ddiv>
 8004b14:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004b18:	f004 040f 	and.w	r4, r4, #15
 8004b1c:	2603      	movs	r6, #3
 8004b1e:	b17c      	cbz	r4, 8004b40 <_dtoa_r+0x2c8>
 8004b20:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004b24:	4d90      	ldr	r5, [pc, #576]	; (8004d68 <_dtoa_r+0x4f0>)
 8004b26:	07e3      	lsls	r3, r4, #31
 8004b28:	d504      	bpl.n	8004b34 <_dtoa_r+0x2bc>
 8004b2a:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004b2e:	f7fc f803 	bl	8000b38 <__aeabi_dmul>
 8004b32:	3601      	adds	r6, #1
 8004b34:	1064      	asrs	r4, r4, #1
 8004b36:	f105 0508 	add.w	r5, r5, #8
 8004b3a:	d1f4      	bne.n	8004b26 <_dtoa_r+0x2ae>
 8004b3c:	e9cd 0100 	strd	r0, r1, [sp]
 8004b40:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004b44:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004b48:	f7fc f920 	bl	8000d8c <__aeabi_ddiv>
 8004b4c:	e9cd 0100 	strd	r0, r1, [sp]
 8004b50:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004b52:	b143      	cbz	r3, 8004b66 <_dtoa_r+0x2ee>
 8004b54:	2200      	movs	r2, #0
 8004b56:	4b85      	ldr	r3, [pc, #532]	; (8004d6c <_dtoa_r+0x4f4>)
 8004b58:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004b5c:	f7fc fa5e 	bl	800101c <__aeabi_dcmplt>
 8004b60:	2800      	cmp	r0, #0
 8004b62:	f040 84ff 	bne.w	8005564 <_dtoa_r+0xcec>
 8004b66:	4630      	mov	r0, r6
 8004b68:	f7fb ff7c 	bl	8000a64 <__aeabi_i2d>
 8004b6c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004b70:	f7fb ffe2 	bl	8000b38 <__aeabi_dmul>
 8004b74:	4b7e      	ldr	r3, [pc, #504]	; (8004d70 <_dtoa_r+0x4f8>)
 8004b76:	2200      	movs	r2, #0
 8004b78:	f7fb fe28 	bl	80007cc <__adddf3>
 8004b7c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b7e:	4606      	mov	r6, r0
 8004b80:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004b84:	2b00      	cmp	r3, #0
 8004b86:	f000 841c 	beq.w	80053c2 <_dtoa_r+0xb4a>
 8004b8a:	9b06      	ldr	r3, [sp, #24]
 8004b8c:	9316      	str	r3, [sp, #88]	; 0x58
 8004b8e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b90:	9312      	str	r3, [sp, #72]	; 0x48
 8004b92:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004b96:	f7fc fa7f 	bl	8001098 <__aeabi_d2iz>
 8004b9a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004b9c:	4b71      	ldr	r3, [pc, #452]	; (8004d64 <_dtoa_r+0x4ec>)
 8004b9e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004ba2:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004ba6:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004baa:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004bae:	f7fb ff59 	bl	8000a64 <__aeabi_i2d>
 8004bb2:	460b      	mov	r3, r1
 8004bb4:	4602      	mov	r2, r0
 8004bb6:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004bba:	e9cd 6700 	strd	r6, r7, [sp]
 8004bbe:	f7fb fe03 	bl	80007c8 <__aeabi_dsub>
 8004bc2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004bc4:	b2ed      	uxtb	r5, r5
 8004bc6:	4606      	mov	r6, r0
 8004bc8:	460f      	mov	r7, r1
 8004bca:	f10b 0401 	add.w	r4, fp, #1
 8004bce:	2b00      	cmp	r3, #0
 8004bd0:	f000 8458 	beq.w	8005484 <_dtoa_r+0xc0c>
 8004bd4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004bd8:	2000      	movs	r0, #0
 8004bda:	4966      	ldr	r1, [pc, #408]	; (8004d74 <_dtoa_r+0x4fc>)
 8004bdc:	f7fc f8d6 	bl	8000d8c <__aeabi_ddiv>
 8004be0:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004be4:	f7fb fdf0 	bl	80007c8 <__aeabi_dsub>
 8004be8:	f88b 5000 	strb.w	r5, [fp]
 8004bec:	4632      	mov	r2, r6
 8004bee:	463b      	mov	r3, r7
 8004bf0:	e9cd 0100 	strd	r0, r1, [sp]
 8004bf4:	f7fc fa30 	bl	8001058 <__aeabi_dcmpgt>
 8004bf8:	2800      	cmp	r0, #0
 8004bfa:	f040 8502 	bne.w	8005602 <_dtoa_r+0xd8a>
 8004bfe:	4632      	mov	r2, r6
 8004c00:	463b      	mov	r3, r7
 8004c02:	2000      	movs	r0, #0
 8004c04:	4959      	ldr	r1, [pc, #356]	; (8004d6c <_dtoa_r+0x4f4>)
 8004c06:	f7fb fddf 	bl	80007c8 <__aeabi_dsub>
 8004c0a:	4602      	mov	r2, r0
 8004c0c:	460b      	mov	r3, r1
 8004c0e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004c12:	f7fc fa21 	bl	8001058 <__aeabi_dcmpgt>
 8004c16:	2800      	cmp	r0, #0
 8004c18:	f040 84fb 	bne.w	8005612 <_dtoa_r+0xd9a>
 8004c1c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004c1e:	2a01      	cmp	r2, #1
 8004c20:	d050      	beq.n	8004cc4 <_dtoa_r+0x44c>
 8004c22:	445a      	add	r2, fp
 8004c24:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004c28:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004c2c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004c30:	4692      	mov	sl, r2
 8004c32:	46cb      	mov	fp, r9
 8004c34:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004c38:	e00c      	b.n	8004c54 <_dtoa_r+0x3dc>
 8004c3a:	2000      	movs	r0, #0
 8004c3c:	494b      	ldr	r1, [pc, #300]	; (8004d6c <_dtoa_r+0x4f4>)
 8004c3e:	f7fb fdc3 	bl	80007c8 <__aeabi_dsub>
 8004c42:	4642      	mov	r2, r8
 8004c44:	464b      	mov	r3, r9
 8004c46:	f7fc f9e9 	bl	800101c <__aeabi_dcmplt>
 8004c4a:	2800      	cmp	r0, #0
 8004c4c:	f040 84dc 	bne.w	8005608 <_dtoa_r+0xd90>
 8004c50:	4554      	cmp	r4, sl
 8004c52:	d030      	beq.n	8004cb6 <_dtoa_r+0x43e>
 8004c54:	4640      	mov	r0, r8
 8004c56:	4649      	mov	r1, r9
 8004c58:	2200      	movs	r2, #0
 8004c5a:	4b47      	ldr	r3, [pc, #284]	; (8004d78 <_dtoa_r+0x500>)
 8004c5c:	f7fb ff6c 	bl	8000b38 <__aeabi_dmul>
 8004c60:	2200      	movs	r2, #0
 8004c62:	4b45      	ldr	r3, [pc, #276]	; (8004d78 <_dtoa_r+0x500>)
 8004c64:	4680      	mov	r8, r0
 8004c66:	4689      	mov	r9, r1
 8004c68:	4630      	mov	r0, r6
 8004c6a:	4639      	mov	r1, r7
 8004c6c:	f7fb ff64 	bl	8000b38 <__aeabi_dmul>
 8004c70:	460f      	mov	r7, r1
 8004c72:	4606      	mov	r6, r0
 8004c74:	f7fc fa10 	bl	8001098 <__aeabi_d2iz>
 8004c78:	4605      	mov	r5, r0
 8004c7a:	f7fb fef3 	bl	8000a64 <__aeabi_i2d>
 8004c7e:	4602      	mov	r2, r0
 8004c80:	460b      	mov	r3, r1
 8004c82:	4630      	mov	r0, r6
 8004c84:	4639      	mov	r1, r7
 8004c86:	f7fb fd9f 	bl	80007c8 <__aeabi_dsub>
 8004c8a:	3530      	adds	r5, #48	; 0x30
 8004c8c:	b2ed      	uxtb	r5, r5
 8004c8e:	4642      	mov	r2, r8
 8004c90:	464b      	mov	r3, r9
 8004c92:	f804 5b01 	strb.w	r5, [r4], #1
 8004c96:	4606      	mov	r6, r0
 8004c98:	460f      	mov	r7, r1
 8004c9a:	f7fc f9bf 	bl	800101c <__aeabi_dcmplt>
 8004c9e:	4632      	mov	r2, r6
 8004ca0:	463b      	mov	r3, r7
 8004ca2:	2800      	cmp	r0, #0
 8004ca4:	d0c9      	beq.n	8004c3a <_dtoa_r+0x3c2>
 8004ca6:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004ca8:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004cac:	9306      	str	r3, [sp, #24]
 8004cae:	46d9      	mov	r9, fp
 8004cb0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004cb4:	e236      	b.n	8005124 <_dtoa_r+0x8ac>
 8004cb6:	46d9      	mov	r9, fp
 8004cb8:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004cbc:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004cc0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004cc4:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004cc8:	e9cd 3400 	strd	r3, r4, [sp]
 8004ccc:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004cce:	2b00      	cmp	r3, #0
 8004cd0:	f2c0 80ae 	blt.w	8004e30 <_dtoa_r+0x5b8>
 8004cd4:	9a06      	ldr	r2, [sp, #24]
 8004cd6:	2a0e      	cmp	r2, #14
 8004cd8:	f300 80aa 	bgt.w	8004e30 <_dtoa_r+0x5b8>
 8004cdc:	4b21      	ldr	r3, [pc, #132]	; (8004d64 <_dtoa_r+0x4ec>)
 8004cde:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004ce2:	ed93 7b00 	vldr	d7, [r3]
 8004ce6:	9b07      	ldr	r3, [sp, #28]
 8004ce8:	2b00      	cmp	r3, #0
 8004cea:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004cee:	f2c0 82be 	blt.w	800526e <_dtoa_r+0x9f6>
 8004cf2:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004cf6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004cfa:	4630      	mov	r0, r6
 8004cfc:	4639      	mov	r1, r7
 8004cfe:	f7fc f845 	bl	8000d8c <__aeabi_ddiv>
 8004d02:	f7fc f9c9 	bl	8001098 <__aeabi_d2iz>
 8004d06:	4605      	mov	r5, r0
 8004d08:	f7fb feac 	bl	8000a64 <__aeabi_i2d>
 8004d0c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004d10:	f7fb ff12 	bl	8000b38 <__aeabi_dmul>
 8004d14:	460b      	mov	r3, r1
 8004d16:	4602      	mov	r2, r0
 8004d18:	4639      	mov	r1, r7
 8004d1a:	4630      	mov	r0, r6
 8004d1c:	f7fb fd54 	bl	80007c8 <__aeabi_dsub>
 8004d20:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004d24:	f88b 3000 	strb.w	r3, [fp]
 8004d28:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d2a:	2b01      	cmp	r3, #1
 8004d2c:	4606      	mov	r6, r0
 8004d2e:	460f      	mov	r7, r1
 8004d30:	f10b 0401 	add.w	r4, fp, #1
 8004d34:	d053      	beq.n	8004dde <_dtoa_r+0x566>
 8004d36:	2200      	movs	r2, #0
 8004d38:	4b0f      	ldr	r3, [pc, #60]	; (8004d78 <_dtoa_r+0x500>)
 8004d3a:	f7fb fefd 	bl	8000b38 <__aeabi_dmul>
 8004d3e:	2200      	movs	r2, #0
 8004d40:	2300      	movs	r3, #0
 8004d42:	4606      	mov	r6, r0
 8004d44:	460f      	mov	r7, r1
 8004d46:	f7fc f95f 	bl	8001008 <__aeabi_dcmpeq>
 8004d4a:	2800      	cmp	r0, #0
 8004d4c:	f040 81ea 	bne.w	8005124 <_dtoa_r+0x8ac>
 8004d50:	f8cd a000 	str.w	sl, [sp]
 8004d54:	f8cd 901c 	str.w	r9, [sp, #28]
 8004d58:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004d5c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004d60:	e017      	b.n	8004d92 <_dtoa_r+0x51a>
 8004d62:	bf00      	nop
 8004d64:	08007908 	.word	0x08007908
 8004d68:	080078e0 	.word	0x080078e0
 8004d6c:	3ff00000 	.word	0x3ff00000
 8004d70:	401c0000 	.word	0x401c0000
 8004d74:	3fe00000 	.word	0x3fe00000
 8004d78:	40240000 	.word	0x40240000
 8004d7c:	f7fb fedc 	bl	8000b38 <__aeabi_dmul>
 8004d80:	2200      	movs	r2, #0
 8004d82:	2300      	movs	r3, #0
 8004d84:	4606      	mov	r6, r0
 8004d86:	460f      	mov	r7, r1
 8004d88:	f7fc f93e 	bl	8001008 <__aeabi_dcmpeq>
 8004d8c:	2800      	cmp	r0, #0
 8004d8e:	f040 833d 	bne.w	800540c <_dtoa_r+0xb94>
 8004d92:	464a      	mov	r2, r9
 8004d94:	4653      	mov	r3, sl
 8004d96:	4630      	mov	r0, r6
 8004d98:	4639      	mov	r1, r7
 8004d9a:	f7fb fff7 	bl	8000d8c <__aeabi_ddiv>
 8004d9e:	f7fc f97b 	bl	8001098 <__aeabi_d2iz>
 8004da2:	4605      	mov	r5, r0
 8004da4:	f7fb fe5e 	bl	8000a64 <__aeabi_i2d>
 8004da8:	464a      	mov	r2, r9
 8004daa:	4653      	mov	r3, sl
 8004dac:	f7fb fec4 	bl	8000b38 <__aeabi_dmul>
 8004db0:	4602      	mov	r2, r0
 8004db2:	460b      	mov	r3, r1
 8004db4:	4630      	mov	r0, r6
 8004db6:	4639      	mov	r1, r7
 8004db8:	f7fb fd06 	bl	80007c8 <__aeabi_dsub>
 8004dbc:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004dc0:	f804 cb01 	strb.w	ip, [r4], #1
 8004dc4:	eba4 0c0b 	sub.w	ip, r4, fp
 8004dc8:	45e0      	cmp	r8, ip
 8004dca:	4606      	mov	r6, r0
 8004dcc:	460f      	mov	r7, r1
 8004dce:	f04f 0200 	mov.w	r2, #0
 8004dd2:	4bc1      	ldr	r3, [pc, #772]	; (80050d8 <_dtoa_r+0x860>)
 8004dd4:	d1d2      	bne.n	8004d7c <_dtoa_r+0x504>
 8004dd6:	f8dd a000 	ldr.w	sl, [sp]
 8004dda:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004dde:	4632      	mov	r2, r6
 8004de0:	463b      	mov	r3, r7
 8004de2:	4630      	mov	r0, r6
 8004de4:	4639      	mov	r1, r7
 8004de6:	f7fb fcf1 	bl	80007cc <__adddf3>
 8004dea:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004dee:	4606      	mov	r6, r0
 8004df0:	460f      	mov	r7, r1
 8004df2:	f7fc f931 	bl	8001058 <__aeabi_dcmpgt>
 8004df6:	b958      	cbnz	r0, 8004e10 <_dtoa_r+0x598>
 8004df8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004dfc:	4630      	mov	r0, r6
 8004dfe:	4639      	mov	r1, r7
 8004e00:	f7fc f902 	bl	8001008 <__aeabi_dcmpeq>
 8004e04:	2800      	cmp	r0, #0
 8004e06:	f000 818d 	beq.w	8005124 <_dtoa_r+0x8ac>
 8004e0a:	07e9      	lsls	r1, r5, #31
 8004e0c:	f140 818a 	bpl.w	8005124 <_dtoa_r+0x8ac>
 8004e10:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004e14:	e005      	b.n	8004e22 <_dtoa_r+0x5aa>
 8004e16:	459b      	cmp	fp, r3
 8004e18:	f000 8373 	beq.w	8005502 <_dtoa_r+0xc8a>
 8004e1c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004e20:	461c      	mov	r4, r3
 8004e22:	2d39      	cmp	r5, #57	; 0x39
 8004e24:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004e28:	d0f5      	beq.n	8004e16 <_dtoa_r+0x59e>
 8004e2a:	3501      	adds	r5, #1
 8004e2c:	701d      	strb	r5, [r3, #0]
 8004e2e:	e179      	b.n	8005124 <_dtoa_r+0x8ac>
 8004e30:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004e32:	2a00      	cmp	r2, #0
 8004e34:	d03b      	beq.n	8004eae <_dtoa_r+0x636>
 8004e36:	9a02      	ldr	r2, [sp, #8]
 8004e38:	2a01      	cmp	r2, #1
 8004e3a:	f340 820b 	ble.w	8005254 <_dtoa_r+0x9dc>
 8004e3e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e40:	1e5f      	subs	r7, r3, #1
 8004e42:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004e44:	42bb      	cmp	r3, r7
 8004e46:	f2c0 82e6 	blt.w	8005416 <_dtoa_r+0xb9e>
 8004e4a:	1bdf      	subs	r7, r3, r7
 8004e4c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e4e:	2b00      	cmp	r3, #0
 8004e50:	f2c0 830b 	blt.w	800546a <_dtoa_r+0xbf2>
 8004e54:	9a08      	ldr	r2, [sp, #32]
 8004e56:	4614      	mov	r4, r2
 8004e58:	441a      	add	r2, r3
 8004e5a:	4498      	add	r8, r3
 8004e5c:	9208      	str	r2, [sp, #32]
 8004e5e:	2101      	movs	r1, #1
 8004e60:	4648      	mov	r0, r9
 8004e62:	f001 fcbf 	bl	80067e4 <__i2b>
 8004e66:	4605      	mov	r5, r0
 8004e68:	e024      	b.n	8004eb4 <_dtoa_r+0x63c>
 8004e6a:	2301      	movs	r3, #1
 8004e6c:	930d      	str	r3, [sp, #52]	; 0x34
 8004e6e:	e5af      	b.n	80049d0 <_dtoa_r+0x158>
 8004e70:	9a08      	ldr	r2, [sp, #32]
 8004e72:	9b06      	ldr	r3, [sp, #24]
 8004e74:	1ad2      	subs	r2, r2, r3
 8004e76:	425b      	negs	r3, r3
 8004e78:	930b      	str	r3, [sp, #44]	; 0x2c
 8004e7a:	2300      	movs	r3, #0
 8004e7c:	9208      	str	r2, [sp, #32]
 8004e7e:	930c      	str	r3, [sp, #48]	; 0x30
 8004e80:	e5b5      	b.n	80049ee <_dtoa_r+0x176>
 8004e82:	f1c4 0301 	rsb	r3, r4, #1
 8004e86:	9308      	str	r3, [sp, #32]
 8004e88:	f04f 0800 	mov.w	r8, #0
 8004e8c:	e5a7      	b.n	80049de <_dtoa_r+0x166>
 8004e8e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004e92:	4640      	mov	r0, r8
 8004e94:	f7fb fde6 	bl	8000a64 <__aeabi_i2d>
 8004e98:	4632      	mov	r2, r6
 8004e9a:	463b      	mov	r3, r7
 8004e9c:	f7fc f8b4 	bl	8001008 <__aeabi_dcmpeq>
 8004ea0:	2800      	cmp	r0, #0
 8004ea2:	f47f ad81 	bne.w	80049a8 <_dtoa_r+0x130>
 8004ea6:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004eaa:	9306      	str	r3, [sp, #24]
 8004eac:	e57c      	b.n	80049a8 <_dtoa_r+0x130>
 8004eae:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004eb0:	9c08      	ldr	r4, [sp, #32]
 8004eb2:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004eb4:	2c00      	cmp	r4, #0
 8004eb6:	dd0c      	ble.n	8004ed2 <_dtoa_r+0x65a>
 8004eb8:	f1b8 0f00 	cmp.w	r8, #0
 8004ebc:	dd09      	ble.n	8004ed2 <_dtoa_r+0x65a>
 8004ebe:	4544      	cmp	r4, r8
 8004ec0:	9a08      	ldr	r2, [sp, #32]
 8004ec2:	4623      	mov	r3, r4
 8004ec4:	bfa8      	it	ge
 8004ec6:	4643      	movge	r3, r8
 8004ec8:	1ad2      	subs	r2, r2, r3
 8004eca:	9208      	str	r2, [sp, #32]
 8004ecc:	1ae4      	subs	r4, r4, r3
 8004ece:	eba8 0803 	sub.w	r8, r8, r3
 8004ed2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004ed4:	b16b      	cbz	r3, 8004ef2 <_dtoa_r+0x67a>
 8004ed6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004ed8:	2a00      	cmp	r2, #0
 8004eda:	f000 8290 	beq.w	80053fe <_dtoa_r+0xb86>
 8004ede:	1bde      	subs	r6, r3, r7
 8004ee0:	2f00      	cmp	r7, #0
 8004ee2:	f040 819b 	bne.w	800521c <_dtoa_r+0x9a4>
 8004ee6:	4651      	mov	r1, sl
 8004ee8:	4632      	mov	r2, r6
 8004eea:	4648      	mov	r0, r9
 8004eec:	f001 fd2a 	bl	8006944 <__pow5mult>
 8004ef0:	4682      	mov	sl, r0
 8004ef2:	2101      	movs	r1, #1
 8004ef4:	4648      	mov	r0, r9
 8004ef6:	f001 fc75 	bl	80067e4 <__i2b>
 8004efa:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004efc:	4606      	mov	r6, r0
 8004efe:	2a00      	cmp	r2, #0
 8004f00:	f040 8125 	bne.w	800514e <_dtoa_r+0x8d6>
 8004f04:	9b02      	ldr	r3, [sp, #8]
 8004f06:	2b01      	cmp	r3, #1
 8004f08:	f340 816c 	ble.w	80051e4 <_dtoa_r+0x96c>
 8004f0c:	2001      	movs	r0, #1
 8004f0e:	4440      	add	r0, r8
 8004f10:	f010 001f 	ands.w	r0, r0, #31
 8004f14:	f000 8119 	beq.w	800514a <_dtoa_r+0x8d2>
 8004f18:	f1c0 0320 	rsb	r3, r0, #32
 8004f1c:	2b04      	cmp	r3, #4
 8004f1e:	f340 83ac 	ble.w	800567a <_dtoa_r+0xe02>
 8004f22:	f1c0 001c 	rsb	r0, r0, #28
 8004f26:	9b08      	ldr	r3, [sp, #32]
 8004f28:	4403      	add	r3, r0
 8004f2a:	9308      	str	r3, [sp, #32]
 8004f2c:	4404      	add	r4, r0
 8004f2e:	4480      	add	r8, r0
 8004f30:	9b08      	ldr	r3, [sp, #32]
 8004f32:	2b00      	cmp	r3, #0
 8004f34:	dd05      	ble.n	8004f42 <_dtoa_r+0x6ca>
 8004f36:	4651      	mov	r1, sl
 8004f38:	461a      	mov	r2, r3
 8004f3a:	4648      	mov	r0, r9
 8004f3c:	f001 fd52 	bl	80069e4 <__lshift>
 8004f40:	4682      	mov	sl, r0
 8004f42:	f1b8 0f00 	cmp.w	r8, #0
 8004f46:	dd05      	ble.n	8004f54 <_dtoa_r+0x6dc>
 8004f48:	4631      	mov	r1, r6
 8004f4a:	4642      	mov	r2, r8
 8004f4c:	4648      	mov	r0, r9
 8004f4e:	f001 fd49 	bl	80069e4 <__lshift>
 8004f52:	4606      	mov	r6, r0
 8004f54:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004f56:	2b00      	cmp	r3, #0
 8004f58:	d177      	bne.n	800504a <_dtoa_r+0x7d2>
 8004f5a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f5c:	2b00      	cmp	r3, #0
 8004f5e:	f340 8209 	ble.w	8005374 <_dtoa_r+0xafc>
 8004f62:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004f64:	2b00      	cmp	r3, #0
 8004f66:	f000 8089 	beq.w	800507c <_dtoa_r+0x804>
 8004f6a:	2c00      	cmp	r4, #0
 8004f6c:	f300 816b 	bgt.w	8005246 <_dtoa_r+0x9ce>
 8004f70:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004f72:	2b00      	cmp	r3, #0
 8004f74:	f040 81cd 	bne.w	8005312 <_dtoa_r+0xa9a>
 8004f78:	46a8      	mov	r8, r5
 8004f7a:	9a00      	ldr	r2, [sp, #0]
 8004f7c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004f80:	f002 0201 	and.w	r2, r2, #1
 8004f84:	920a      	str	r2, [sp, #40]	; 0x28
 8004f86:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004f88:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004f8c:	441a      	add	r2, r3
 8004f8e:	465f      	mov	r7, fp
 8004f90:	9209      	str	r2, [sp, #36]	; 0x24
 8004f92:	46b3      	mov	fp, r6
 8004f94:	4659      	mov	r1, fp
 8004f96:	4650      	mov	r0, sl
 8004f98:	f7ff fbdc 	bl	8004754 <quorem>
 8004f9c:	4629      	mov	r1, r5
 8004f9e:	4604      	mov	r4, r0
 8004fa0:	4650      	mov	r0, sl
 8004fa2:	f001 fd75 	bl	8006a90 <__mcmp>
 8004fa6:	4659      	mov	r1, fp
 8004fa8:	4606      	mov	r6, r0
 8004faa:	4642      	mov	r2, r8
 8004fac:	4648      	mov	r0, r9
 8004fae:	f001 fd8b 	bl	8006ac8 <__mdiff>
 8004fb2:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004fb6:	9300      	str	r3, [sp, #0]
 8004fb8:	68c3      	ldr	r3, [r0, #12]
 8004fba:	4601      	mov	r1, r0
 8004fbc:	2b00      	cmp	r3, #0
 8004fbe:	f040 81d4 	bne.w	800536a <_dtoa_r+0xaf2>
 8004fc2:	9008      	str	r0, [sp, #32]
 8004fc4:	4650      	mov	r0, sl
 8004fc6:	f001 fd63 	bl	8006a90 <__mcmp>
 8004fca:	9a08      	ldr	r2, [sp, #32]
 8004fcc:	9007      	str	r0, [sp, #28]
 8004fce:	4611      	mov	r1, r2
 8004fd0:	4648      	mov	r0, r9
 8004fd2:	f001 fb6d 	bl	80066b0 <_Bfree>
 8004fd6:	9b07      	ldr	r3, [sp, #28]
 8004fd8:	b933      	cbnz	r3, 8004fe8 <_dtoa_r+0x770>
 8004fda:	9a02      	ldr	r2, [sp, #8]
 8004fdc:	b922      	cbnz	r2, 8004fe8 <_dtoa_r+0x770>
 8004fde:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004fe0:	2b00      	cmp	r3, #0
 8004fe2:	f000 8319 	beq.w	8005618 <_dtoa_r+0xda0>
 8004fe6:	9b02      	ldr	r3, [sp, #8]
 8004fe8:	2e00      	cmp	r6, #0
 8004fea:	f2c0 821c 	blt.w	8005426 <_dtoa_r+0xbae>
 8004fee:	d105      	bne.n	8004ffc <_dtoa_r+0x784>
 8004ff0:	9a02      	ldr	r2, [sp, #8]
 8004ff2:	b91a      	cbnz	r2, 8004ffc <_dtoa_r+0x784>
 8004ff4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004ff6:	2a00      	cmp	r2, #0
 8004ff8:	f000 8215 	beq.w	8005426 <_dtoa_r+0xbae>
 8004ffc:	2b00      	cmp	r3, #0
 8004ffe:	f107 0401 	add.w	r4, r7, #1
 8005002:	f300 8225 	bgt.w	8005450 <_dtoa_r+0xbd8>
 8005006:	9b00      	ldr	r3, [sp, #0]
 8005008:	703b      	strb	r3, [r7, #0]
 800500a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800500c:	42bb      	cmp	r3, r7
 800500e:	f000 8230 	beq.w	8005472 <_dtoa_r+0xbfa>
 8005012:	4651      	mov	r1, sl
 8005014:	2300      	movs	r3, #0
 8005016:	220a      	movs	r2, #10
 8005018:	4648      	mov	r0, r9
 800501a:	f001 fb53 	bl	80066c4 <__multadd>
 800501e:	4545      	cmp	r5, r8
 8005020:	4682      	mov	sl, r0
 8005022:	4629      	mov	r1, r5
 8005024:	f04f 0300 	mov.w	r3, #0
 8005028:	f04f 020a 	mov.w	r2, #10
 800502c:	4648      	mov	r0, r9
 800502e:	f000 8196 	beq.w	800535e <_dtoa_r+0xae6>
 8005032:	f001 fb47 	bl	80066c4 <__multadd>
 8005036:	4641      	mov	r1, r8
 8005038:	4605      	mov	r5, r0
 800503a:	2300      	movs	r3, #0
 800503c:	220a      	movs	r2, #10
 800503e:	4648      	mov	r0, r9
 8005040:	f001 fb40 	bl	80066c4 <__multadd>
 8005044:	4627      	mov	r7, r4
 8005046:	4680      	mov	r8, r0
 8005048:	e7a4      	b.n	8004f94 <_dtoa_r+0x71c>
 800504a:	4631      	mov	r1, r6
 800504c:	4650      	mov	r0, sl
 800504e:	f001 fd1f 	bl	8006a90 <__mcmp>
 8005052:	2800      	cmp	r0, #0
 8005054:	da81      	bge.n	8004f5a <_dtoa_r+0x6e2>
 8005056:	9f06      	ldr	r7, [sp, #24]
 8005058:	4651      	mov	r1, sl
 800505a:	2300      	movs	r3, #0
 800505c:	220a      	movs	r2, #10
 800505e:	4648      	mov	r0, r9
 8005060:	3f01      	subs	r7, #1
 8005062:	9706      	str	r7, [sp, #24]
 8005064:	f001 fb2e 	bl	80066c4 <__multadd>
 8005068:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800506a:	4682      	mov	sl, r0
 800506c:	2b00      	cmp	r3, #0
 800506e:	f040 82eb 	bne.w	8005648 <_dtoa_r+0xdd0>
 8005072:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005074:	2b00      	cmp	r3, #0
 8005076:	f340 82f3 	ble.w	8005660 <_dtoa_r+0xde8>
 800507a:	9309      	str	r3, [sp, #36]	; 0x24
 800507c:	465c      	mov	r4, fp
 800507e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8005082:	e002      	b.n	800508a <_dtoa_r+0x812>
 8005084:	f001 fb1e 	bl	80066c4 <__multadd>
 8005088:	4682      	mov	sl, r0
 800508a:	4631      	mov	r1, r6
 800508c:	4650      	mov	r0, sl
 800508e:	f7ff fb61 	bl	8004754 <quorem>
 8005092:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8005096:	f804 7b01 	strb.w	r7, [r4], #1
 800509a:	eba4 030b 	sub.w	r3, r4, fp
 800509e:	4598      	cmp	r8, r3
 80050a0:	f04f 020a 	mov.w	r2, #10
 80050a4:	f04f 0300 	mov.w	r3, #0
 80050a8:	4651      	mov	r1, sl
 80050aa:	4648      	mov	r0, r9
 80050ac:	dcea      	bgt.n	8005084 <_dtoa_r+0x80c>
 80050ae:	2300      	movs	r3, #0
 80050b0:	9700      	str	r7, [sp, #0]
 80050b2:	9302      	str	r3, [sp, #8]
 80050b4:	4651      	mov	r1, sl
 80050b6:	2201      	movs	r2, #1
 80050b8:	4648      	mov	r0, r9
 80050ba:	f001 fc93 	bl	80069e4 <__lshift>
 80050be:	4631      	mov	r1, r6
 80050c0:	4682      	mov	sl, r0
 80050c2:	f001 fce5 	bl	8006a90 <__mcmp>
 80050c6:	2800      	cmp	r0, #0
 80050c8:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 80050cc:	dc14      	bgt.n	80050f8 <_dtoa_r+0x880>
 80050ce:	d108      	bne.n	80050e2 <_dtoa_r+0x86a>
 80050d0:	9b00      	ldr	r3, [sp, #0]
 80050d2:	07db      	lsls	r3, r3, #31
 80050d4:	d410      	bmi.n	80050f8 <_dtoa_r+0x880>
 80050d6:	e004      	b.n	80050e2 <_dtoa_r+0x86a>
 80050d8:	40240000 	.word	0x40240000
 80050dc:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 80050e0:	461c      	mov	r4, r3
 80050e2:	2a30      	cmp	r2, #48	; 0x30
 80050e4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80050e8:	d0f8      	beq.n	80050dc <_dtoa_r+0x864>
 80050ea:	e00b      	b.n	8005104 <_dtoa_r+0x88c>
 80050ec:	459b      	cmp	fp, r3
 80050ee:	f000 814e 	beq.w	800538e <_dtoa_r+0xb16>
 80050f2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80050f6:	461c      	mov	r4, r3
 80050f8:	2a39      	cmp	r2, #57	; 0x39
 80050fa:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80050fe:	d0f5      	beq.n	80050ec <_dtoa_r+0x874>
 8005100:	3201      	adds	r2, #1
 8005102:	701a      	strb	r2, [r3, #0]
 8005104:	4631      	mov	r1, r6
 8005106:	4648      	mov	r0, r9
 8005108:	f001 fad2 	bl	80066b0 <_Bfree>
 800510c:	b155      	cbz	r5, 8005124 <_dtoa_r+0x8ac>
 800510e:	9902      	ldr	r1, [sp, #8]
 8005110:	b121      	cbz	r1, 800511c <_dtoa_r+0x8a4>
 8005112:	42a9      	cmp	r1, r5
 8005114:	d002      	beq.n	800511c <_dtoa_r+0x8a4>
 8005116:	4648      	mov	r0, r9
 8005118:	f001 faca 	bl	80066b0 <_Bfree>
 800511c:	4629      	mov	r1, r5
 800511e:	4648      	mov	r0, r9
 8005120:	f001 fac6 	bl	80066b0 <_Bfree>
 8005124:	4651      	mov	r1, sl
 8005126:	4648      	mov	r0, r9
 8005128:	f001 fac2 	bl	80066b0 <_Bfree>
 800512c:	2200      	movs	r2, #0
 800512e:	9b06      	ldr	r3, [sp, #24]
 8005130:	7022      	strb	r2, [r4, #0]
 8005132:	9a05      	ldr	r2, [sp, #20]
 8005134:	3301      	adds	r3, #1
 8005136:	6013      	str	r3, [r2, #0]
 8005138:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800513a:	2b00      	cmp	r3, #0
 800513c:	f43f abdb 	beq.w	80048f6 <_dtoa_r+0x7e>
 8005140:	4658      	mov	r0, fp
 8005142:	601c      	str	r4, [r3, #0]
 8005144:	b01b      	add	sp, #108	; 0x6c
 8005146:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800514a:	201c      	movs	r0, #28
 800514c:	e6eb      	b.n	8004f26 <_dtoa_r+0x6ae>
 800514e:	4601      	mov	r1, r0
 8005150:	4648      	mov	r0, r9
 8005152:	f001 fbf7 	bl	8006944 <__pow5mult>
 8005156:	9b02      	ldr	r3, [sp, #8]
 8005158:	2b01      	cmp	r3, #1
 800515a:	4606      	mov	r6, r0
 800515c:	f340 80d4 	ble.w	8005308 <_dtoa_r+0xa90>
 8005160:	2300      	movs	r3, #0
 8005162:	930c      	str	r3, [sp, #48]	; 0x30
 8005164:	6933      	ldr	r3, [r6, #16]
 8005166:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 800516a:	6918      	ldr	r0, [r3, #16]
 800516c:	f001 faea 	bl	8006744 <__hi0bits>
 8005170:	f1c0 0020 	rsb	r0, r0, #32
 8005174:	e6cb      	b.n	8004f0e <_dtoa_r+0x696>
 8005176:	900d      	str	r0, [sp, #52]	; 0x34
 8005178:	e42a      	b.n	80049d0 <_dtoa_r+0x158>
 800517a:	2501      	movs	r5, #1
 800517c:	e440      	b.n	8004a00 <_dtoa_r+0x188>
 800517e:	f1c3 0820 	rsb	r8, r3, #32
 8005182:	9b00      	ldr	r3, [sp, #0]
 8005184:	fa03 f008 	lsl.w	r0, r3, r8
 8005188:	f7ff bbd8 	b.w	800493c <_dtoa_r+0xc4>
 800518c:	2300      	movs	r3, #0
 800518e:	930a      	str	r3, [sp, #40]	; 0x28
 8005190:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8005194:	4413      	add	r3, r2
 8005196:	930e      	str	r3, [sp, #56]	; 0x38
 8005198:	3301      	adds	r3, #1
 800519a:	2b01      	cmp	r3, #1
 800519c:	461e      	mov	r6, r3
 800519e:	9309      	str	r3, [sp, #36]	; 0x24
 80051a0:	bfb8      	it	lt
 80051a2:	2601      	movlt	r6, #1
 80051a4:	2100      	movs	r1, #0
 80051a6:	2e17      	cmp	r6, #23
 80051a8:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80051ac:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80051ae:	f77f ac89 	ble.w	8004ac4 <_dtoa_r+0x24c>
 80051b2:	2201      	movs	r2, #1
 80051b4:	2304      	movs	r3, #4
 80051b6:	005b      	lsls	r3, r3, #1
 80051b8:	f103 0014 	add.w	r0, r3, #20
 80051bc:	42b0      	cmp	r0, r6
 80051be:	4611      	mov	r1, r2
 80051c0:	f102 0201 	add.w	r2, r2, #1
 80051c4:	d9f7      	bls.n	80051b6 <_dtoa_r+0x93e>
 80051c6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80051ca:	e47b      	b.n	8004ac4 <_dtoa_r+0x24c>
 80051cc:	2300      	movs	r3, #0
 80051ce:	930a      	str	r3, [sp, #40]	; 0x28
 80051d0:	9e07      	ldr	r6, [sp, #28]
 80051d2:	2e00      	cmp	r6, #0
 80051d4:	f340 80e2 	ble.w	800539c <_dtoa_r+0xb24>
 80051d8:	960e      	str	r6, [sp, #56]	; 0x38
 80051da:	9609      	str	r6, [sp, #36]	; 0x24
 80051dc:	e7e2      	b.n	80051a4 <_dtoa_r+0x92c>
 80051de:	2301      	movs	r3, #1
 80051e0:	930a      	str	r3, [sp, #40]	; 0x28
 80051e2:	e7f5      	b.n	80051d0 <_dtoa_r+0x958>
 80051e4:	9b00      	ldr	r3, [sp, #0]
 80051e6:	2b00      	cmp	r3, #0
 80051e8:	f47f ae90 	bne.w	8004f0c <_dtoa_r+0x694>
 80051ec:	e9dd 1200 	ldrd	r1, r2, [sp]
 80051f0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 80051f4:	2b00      	cmp	r3, #0
 80051f6:	f040 8192 	bne.w	800551e <_dtoa_r+0xca6>
 80051fa:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80051fe:	0d1b      	lsrs	r3, r3, #20
 8005200:	051b      	lsls	r3, r3, #20
 8005202:	b12b      	cbz	r3, 8005210 <_dtoa_r+0x998>
 8005204:	9b08      	ldr	r3, [sp, #32]
 8005206:	3301      	adds	r3, #1
 8005208:	9308      	str	r3, [sp, #32]
 800520a:	f108 0801 	add.w	r8, r8, #1
 800520e:	2301      	movs	r3, #1
 8005210:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005212:	930c      	str	r3, [sp, #48]	; 0x30
 8005214:	2a00      	cmp	r2, #0
 8005216:	f43f ae79 	beq.w	8004f0c <_dtoa_r+0x694>
 800521a:	e7a3      	b.n	8005164 <_dtoa_r+0x8ec>
 800521c:	463a      	mov	r2, r7
 800521e:	4629      	mov	r1, r5
 8005220:	4648      	mov	r0, r9
 8005222:	f001 fb8f 	bl	8006944 <__pow5mult>
 8005226:	4652      	mov	r2, sl
 8005228:	4601      	mov	r1, r0
 800522a:	4605      	mov	r5, r0
 800522c:	4648      	mov	r0, r9
 800522e:	f001 fae3 	bl	80067f8 <__multiply>
 8005232:	4651      	mov	r1, sl
 8005234:	4607      	mov	r7, r0
 8005236:	4648      	mov	r0, r9
 8005238:	f001 fa3a 	bl	80066b0 <_Bfree>
 800523c:	46ba      	mov	sl, r7
 800523e:	2e00      	cmp	r6, #0
 8005240:	f43f ae57 	beq.w	8004ef2 <_dtoa_r+0x67a>
 8005244:	e64f      	b.n	8004ee6 <_dtoa_r+0x66e>
 8005246:	4629      	mov	r1, r5
 8005248:	4622      	mov	r2, r4
 800524a:	4648      	mov	r0, r9
 800524c:	f001 fbca 	bl	80069e4 <__lshift>
 8005250:	4605      	mov	r5, r0
 8005252:	e68d      	b.n	8004f70 <_dtoa_r+0x6f8>
 8005254:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8005256:	2a00      	cmp	r2, #0
 8005258:	f000 815d 	beq.w	8005516 <_dtoa_r+0xc9e>
 800525c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005260:	9a08      	ldr	r2, [sp, #32]
 8005262:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005264:	4614      	mov	r4, r2
 8005266:	441a      	add	r2, r3
 8005268:	4498      	add	r8, r3
 800526a:	9208      	str	r2, [sp, #32]
 800526c:	e5f7      	b.n	8004e5e <_dtoa_r+0x5e6>
 800526e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005270:	2b00      	cmp	r3, #0
 8005272:	f73f ad3e 	bgt.w	8004cf2 <_dtoa_r+0x47a>
 8005276:	f040 80bc 	bne.w	80053f2 <_dtoa_r+0xb7a>
 800527a:	ec51 0b17 	vmov	r0, r1, d7
 800527e:	2200      	movs	r2, #0
 8005280:	4bb2      	ldr	r3, [pc, #712]	; (800554c <_dtoa_r+0xcd4>)
 8005282:	f7fb fc59 	bl	8000b38 <__aeabi_dmul>
 8005286:	e9dd 2300 	ldrd	r2, r3, [sp]
 800528a:	f7fb fedb 	bl	8001044 <__aeabi_dcmpge>
 800528e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8005290:	4635      	mov	r5, r6
 8005292:	2800      	cmp	r0, #0
 8005294:	d176      	bne.n	8005384 <_dtoa_r+0xb0c>
 8005296:	9a06      	ldr	r2, [sp, #24]
 8005298:	2331      	movs	r3, #49	; 0x31
 800529a:	3201      	adds	r2, #1
 800529c:	9206      	str	r2, [sp, #24]
 800529e:	f88b 3000 	strb.w	r3, [fp]
 80052a2:	f10b 0401 	add.w	r4, fp, #1
 80052a6:	4631      	mov	r1, r6
 80052a8:	4648      	mov	r0, r9
 80052aa:	f001 fa01 	bl	80066b0 <_Bfree>
 80052ae:	2d00      	cmp	r5, #0
 80052b0:	f47f af34 	bne.w	800511c <_dtoa_r+0x8a4>
 80052b4:	e736      	b.n	8005124 <_dtoa_r+0x8ac>
 80052b6:	f000 8142 	beq.w	800553e <_dtoa_r+0xcc6>
 80052ba:	9b06      	ldr	r3, [sp, #24]
 80052bc:	425c      	negs	r4, r3
 80052be:	4ba4      	ldr	r3, [pc, #656]	; (8005550 <_dtoa_r+0xcd8>)
 80052c0:	f004 020f 	and.w	r2, r4, #15
 80052c4:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80052c8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80052cc:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80052d0:	f7fb fc32 	bl	8000b38 <__aeabi_dmul>
 80052d4:	1124      	asrs	r4, r4, #4
 80052d6:	e9cd 0100 	strd	r0, r1, [sp]
 80052da:	f000 81c6 	beq.w	800566a <_dtoa_r+0xdf2>
 80052de:	4d9d      	ldr	r5, [pc, #628]	; (8005554 <_dtoa_r+0xcdc>)
 80052e0:	2300      	movs	r3, #0
 80052e2:	2602      	movs	r6, #2
 80052e4:	07e7      	lsls	r7, r4, #31
 80052e6:	d505      	bpl.n	80052f4 <_dtoa_r+0xa7c>
 80052e8:	e9d5 2300 	ldrd	r2, r3, [r5]
 80052ec:	f7fb fc24 	bl	8000b38 <__aeabi_dmul>
 80052f0:	3601      	adds	r6, #1
 80052f2:	2301      	movs	r3, #1
 80052f4:	1064      	asrs	r4, r4, #1
 80052f6:	f105 0508 	add.w	r5, r5, #8
 80052fa:	d1f3      	bne.n	80052e4 <_dtoa_r+0xa6c>
 80052fc:	2b00      	cmp	r3, #0
 80052fe:	f43f ac27 	beq.w	8004b50 <_dtoa_r+0x2d8>
 8005302:	e9cd 0100 	strd	r0, r1, [sp]
 8005306:	e423      	b.n	8004b50 <_dtoa_r+0x2d8>
 8005308:	9b00      	ldr	r3, [sp, #0]
 800530a:	2b00      	cmp	r3, #0
 800530c:	f43f af6e 	beq.w	80051ec <_dtoa_r+0x974>
 8005310:	e726      	b.n	8005160 <_dtoa_r+0x8e8>
 8005312:	6869      	ldr	r1, [r5, #4]
 8005314:	4648      	mov	r0, r9
 8005316:	f001 f9a5 	bl	8006664 <_Balloc>
 800531a:	692b      	ldr	r3, [r5, #16]
 800531c:	3302      	adds	r3, #2
 800531e:	009a      	lsls	r2, r3, #2
 8005320:	4604      	mov	r4, r0
 8005322:	f105 010c 	add.w	r1, r5, #12
 8005326:	300c      	adds	r0, #12
 8005328:	f7fb f8ea 	bl	8000500 <memcpy>
 800532c:	4621      	mov	r1, r4
 800532e:	2201      	movs	r2, #1
 8005330:	4648      	mov	r0, r9
 8005332:	f001 fb57 	bl	80069e4 <__lshift>
 8005336:	4680      	mov	r8, r0
 8005338:	e61f      	b.n	8004f7a <_dtoa_r+0x702>
 800533a:	2400      	movs	r4, #0
 800533c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8005340:	4621      	mov	r1, r4
 8005342:	4648      	mov	r0, r9
 8005344:	f001 f98e 	bl	8006664 <_Balloc>
 8005348:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800534c:	930e      	str	r3, [sp, #56]	; 0x38
 800534e:	9309      	str	r3, [sp, #36]	; 0x24
 8005350:	2301      	movs	r3, #1
 8005352:	4683      	mov	fp, r0
 8005354:	9407      	str	r4, [sp, #28]
 8005356:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800535a:	930a      	str	r3, [sp, #40]	; 0x28
 800535c:	e4b6      	b.n	8004ccc <_dtoa_r+0x454>
 800535e:	f001 f9b1 	bl	80066c4 <__multadd>
 8005362:	4627      	mov	r7, r4
 8005364:	4605      	mov	r5, r0
 8005366:	4680      	mov	r8, r0
 8005368:	e614      	b.n	8004f94 <_dtoa_r+0x71c>
 800536a:	4648      	mov	r0, r9
 800536c:	f001 f9a0 	bl	80066b0 <_Bfree>
 8005370:	2301      	movs	r3, #1
 8005372:	e639      	b.n	8004fe8 <_dtoa_r+0x770>
 8005374:	9b02      	ldr	r3, [sp, #8]
 8005376:	2b02      	cmp	r3, #2
 8005378:	f77f adf3 	ble.w	8004f62 <_dtoa_r+0x6ea>
 800537c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800537e:	2b00      	cmp	r3, #0
 8005380:	f000 80cf 	beq.w	8005522 <_dtoa_r+0xcaa>
 8005384:	9b07      	ldr	r3, [sp, #28]
 8005386:	43db      	mvns	r3, r3
 8005388:	9306      	str	r3, [sp, #24]
 800538a:	465c      	mov	r4, fp
 800538c:	e78b      	b.n	80052a6 <_dtoa_r+0xa2e>
 800538e:	9a06      	ldr	r2, [sp, #24]
 8005390:	2331      	movs	r3, #49	; 0x31
 8005392:	3201      	adds	r2, #1
 8005394:	9206      	str	r2, [sp, #24]
 8005396:	f88b 3000 	strb.w	r3, [fp]
 800539a:	e6b3      	b.n	8005104 <_dtoa_r+0x88c>
 800539c:	2401      	movs	r4, #1
 800539e:	9409      	str	r4, [sp, #36]	; 0x24
 80053a0:	9407      	str	r4, [sp, #28]
 80053a2:	f7ff bb8b 	b.w	8004abc <_dtoa_r+0x244>
 80053a6:	4630      	mov	r0, r6
 80053a8:	f7fb fb5c 	bl	8000a64 <__aeabi_i2d>
 80053ac:	e9dd 2300 	ldrd	r2, r3, [sp]
 80053b0:	f7fb fbc2 	bl	8000b38 <__aeabi_dmul>
 80053b4:	2200      	movs	r2, #0
 80053b6:	4b68      	ldr	r3, [pc, #416]	; (8005558 <_dtoa_r+0xce0>)
 80053b8:	f7fb fa08 	bl	80007cc <__adddf3>
 80053bc:	4606      	mov	r6, r0
 80053be:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80053c2:	2200      	movs	r2, #0
 80053c4:	4b61      	ldr	r3, [pc, #388]	; (800554c <_dtoa_r+0xcd4>)
 80053c6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80053ca:	f7fb f9fd 	bl	80007c8 <__aeabi_dsub>
 80053ce:	4632      	mov	r2, r6
 80053d0:	463b      	mov	r3, r7
 80053d2:	4604      	mov	r4, r0
 80053d4:	460d      	mov	r5, r1
 80053d6:	f7fb fe3f 	bl	8001058 <__aeabi_dcmpgt>
 80053da:	2800      	cmp	r0, #0
 80053dc:	d14f      	bne.n	800547e <_dtoa_r+0xc06>
 80053de:	4632      	mov	r2, r6
 80053e0:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 80053e4:	4620      	mov	r0, r4
 80053e6:	4629      	mov	r1, r5
 80053e8:	f7fb fe18 	bl	800101c <__aeabi_dcmplt>
 80053ec:	2800      	cmp	r0, #0
 80053ee:	f43f ac69 	beq.w	8004cc4 <_dtoa_r+0x44c>
 80053f2:	2600      	movs	r6, #0
 80053f4:	4635      	mov	r5, r6
 80053f6:	e7c5      	b.n	8005384 <_dtoa_r+0xb0c>
 80053f8:	2301      	movs	r3, #1
 80053fa:	930a      	str	r3, [sp, #40]	; 0x28
 80053fc:	e6c8      	b.n	8005190 <_dtoa_r+0x918>
 80053fe:	4651      	mov	r1, sl
 8005400:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005402:	4648      	mov	r0, r9
 8005404:	f001 fa9e 	bl	8006944 <__pow5mult>
 8005408:	4682      	mov	sl, r0
 800540a:	e572      	b.n	8004ef2 <_dtoa_r+0x67a>
 800540c:	f8dd a000 	ldr.w	sl, [sp]
 8005410:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005414:	e686      	b.n	8005124 <_dtoa_r+0x8ac>
 8005416:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005418:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800541a:	1afb      	subs	r3, r7, r3
 800541c:	441a      	add	r2, r3
 800541e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8005422:	2700      	movs	r7, #0
 8005424:	e512      	b.n	8004e4c <_dtoa_r+0x5d4>
 8005426:	2b00      	cmp	r3, #0
 8005428:	9402      	str	r4, [sp, #8]
 800542a:	465e      	mov	r6, fp
 800542c:	f107 0401 	add.w	r4, r7, #1
 8005430:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005434:	f300 80ba 	bgt.w	80055ac <_dtoa_r+0xd34>
 8005438:	9b00      	ldr	r3, [sp, #0]
 800543a:	9502      	str	r5, [sp, #8]
 800543c:	703b      	strb	r3, [r7, #0]
 800543e:	4645      	mov	r5, r8
 8005440:	e660      	b.n	8005104 <_dtoa_r+0x88c>
 8005442:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005446:	2602      	movs	r6, #2
 8005448:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800544c:	f7ff bb67 	b.w	8004b1e <_dtoa_r+0x2a6>
 8005450:	9b00      	ldr	r3, [sp, #0]
 8005452:	2b39      	cmp	r3, #57	; 0x39
 8005454:	465e      	mov	r6, fp
 8005456:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800545a:	f000 80b9 	beq.w	80055d0 <_dtoa_r+0xd58>
 800545e:	9b00      	ldr	r3, [sp, #0]
 8005460:	9502      	str	r5, [sp, #8]
 8005462:	3301      	adds	r3, #1
 8005464:	703b      	strb	r3, [r7, #0]
 8005466:	4645      	mov	r5, r8
 8005468:	e64c      	b.n	8005104 <_dtoa_r+0x88c>
 800546a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800546e:	1a9c      	subs	r4, r3, r2
 8005470:	e4f5      	b.n	8004e5e <_dtoa_r+0x5e6>
 8005472:	465e      	mov	r6, fp
 8005474:	9502      	str	r5, [sp, #8]
 8005476:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800547a:	4645      	mov	r5, r8
 800547c:	e61a      	b.n	80050b4 <_dtoa_r+0x83c>
 800547e:	2600      	movs	r6, #0
 8005480:	4635      	mov	r5, r6
 8005482:	e708      	b.n	8005296 <_dtoa_r+0xa1e>
 8005484:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005488:	e9dd 0100 	ldrd	r0, r1, [sp]
 800548c:	f7fb fb54 	bl	8000b38 <__aeabi_dmul>
 8005490:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005492:	f88b 5000 	strb.w	r5, [fp]
 8005496:	2b01      	cmp	r3, #1
 8005498:	e9cd 0100 	strd	r0, r1, [sp]
 800549c:	d020      	beq.n	80054e0 <_dtoa_r+0xc68>
 800549e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80054a0:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 80054a4:	445b      	add	r3, fp
 80054a6:	4698      	mov	r8, r3
 80054a8:	2200      	movs	r2, #0
 80054aa:	4b2c      	ldr	r3, [pc, #176]	; (800555c <_dtoa_r+0xce4>)
 80054ac:	4630      	mov	r0, r6
 80054ae:	4639      	mov	r1, r7
 80054b0:	f7fb fb42 	bl	8000b38 <__aeabi_dmul>
 80054b4:	460f      	mov	r7, r1
 80054b6:	4606      	mov	r6, r0
 80054b8:	f7fb fdee 	bl	8001098 <__aeabi_d2iz>
 80054bc:	4605      	mov	r5, r0
 80054be:	f7fb fad1 	bl	8000a64 <__aeabi_i2d>
 80054c2:	3530      	adds	r5, #48	; 0x30
 80054c4:	4602      	mov	r2, r0
 80054c6:	460b      	mov	r3, r1
 80054c8:	4630      	mov	r0, r6
 80054ca:	4639      	mov	r1, r7
 80054cc:	f7fb f97c 	bl	80007c8 <__aeabi_dsub>
 80054d0:	f804 5b01 	strb.w	r5, [r4], #1
 80054d4:	4544      	cmp	r4, r8
 80054d6:	4606      	mov	r6, r0
 80054d8:	460f      	mov	r7, r1
 80054da:	d1e5      	bne.n	80054a8 <_dtoa_r+0xc30>
 80054dc:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 80054e0:	4b1f      	ldr	r3, [pc, #124]	; (8005560 <_dtoa_r+0xce8>)
 80054e2:	2200      	movs	r2, #0
 80054e4:	e9dd 0100 	ldrd	r0, r1, [sp]
 80054e8:	f7fb f970 	bl	80007cc <__adddf3>
 80054ec:	4632      	mov	r2, r6
 80054ee:	463b      	mov	r3, r7
 80054f0:	f7fb fd94 	bl	800101c <__aeabi_dcmplt>
 80054f4:	2800      	cmp	r0, #0
 80054f6:	d070      	beq.n	80055da <_dtoa_r+0xd62>
 80054f8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80054fa:	9306      	str	r3, [sp, #24]
 80054fc:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005500:	e48f      	b.n	8004e22 <_dtoa_r+0x5aa>
 8005502:	2330      	movs	r3, #48	; 0x30
 8005504:	f88b 3000 	strb.w	r3, [fp]
 8005508:	9b06      	ldr	r3, [sp, #24]
 800550a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800550e:	3301      	adds	r3, #1
 8005510:	9306      	str	r3, [sp, #24]
 8005512:	465b      	mov	r3, fp
 8005514:	e489      	b.n	8004e2a <_dtoa_r+0x5b2>
 8005516:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005518:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 800551c:	e6a0      	b.n	8005260 <_dtoa_r+0x9e8>
 800551e:	2300      	movs	r3, #0
 8005520:	e676      	b.n	8005210 <_dtoa_r+0x998>
 8005522:	4631      	mov	r1, r6
 8005524:	2205      	movs	r2, #5
 8005526:	4648      	mov	r0, r9
 8005528:	f001 f8cc 	bl	80066c4 <__multadd>
 800552c:	4601      	mov	r1, r0
 800552e:	4606      	mov	r6, r0
 8005530:	4650      	mov	r0, sl
 8005532:	f001 faad 	bl	8006a90 <__mcmp>
 8005536:	2800      	cmp	r0, #0
 8005538:	f73f aead 	bgt.w	8005296 <_dtoa_r+0xa1e>
 800553c:	e722      	b.n	8005384 <_dtoa_r+0xb0c>
 800553e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005542:	2602      	movs	r6, #2
 8005544:	ed8d 7b00 	vstr	d7, [sp]
 8005548:	f7ff bb02 	b.w	8004b50 <_dtoa_r+0x2d8>
 800554c:	40140000 	.word	0x40140000
 8005550:	08007908 	.word	0x08007908
 8005554:	080078e0 	.word	0x080078e0
 8005558:	401c0000 	.word	0x401c0000
 800555c:	40240000 	.word	0x40240000
 8005560:	3fe00000 	.word	0x3fe00000
 8005564:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005566:	2b00      	cmp	r3, #0
 8005568:	f43f af1d 	beq.w	80053a6 <_dtoa_r+0xb2e>
 800556c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800556e:	2c00      	cmp	r4, #0
 8005570:	f77f aba8 	ble.w	8004cc4 <_dtoa_r+0x44c>
 8005574:	2200      	movs	r2, #0
 8005576:	4b45      	ldr	r3, [pc, #276]	; (800568c <_dtoa_r+0xe14>)
 8005578:	e9dd 0100 	ldrd	r0, r1, [sp]
 800557c:	f7fb fadc 	bl	8000b38 <__aeabi_dmul>
 8005580:	e9cd 0100 	strd	r0, r1, [sp]
 8005584:	1c70      	adds	r0, r6, #1
 8005586:	f7fb fa6d 	bl	8000a64 <__aeabi_i2d>
 800558a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800558e:	f7fb fad3 	bl	8000b38 <__aeabi_dmul>
 8005592:	4b3f      	ldr	r3, [pc, #252]	; (8005690 <_dtoa_r+0xe18>)
 8005594:	2200      	movs	r2, #0
 8005596:	f7fb f919 	bl	80007cc <__adddf3>
 800559a:	9b06      	ldr	r3, [sp, #24]
 800559c:	9412      	str	r4, [sp, #72]	; 0x48
 800559e:	3b01      	subs	r3, #1
 80055a0:	4606      	mov	r6, r0
 80055a2:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80055a6:	9316      	str	r3, [sp, #88]	; 0x58
 80055a8:	f7ff baf3 	b.w	8004b92 <_dtoa_r+0x31a>
 80055ac:	4651      	mov	r1, sl
 80055ae:	2201      	movs	r2, #1
 80055b0:	4648      	mov	r0, r9
 80055b2:	f001 fa17 	bl	80069e4 <__lshift>
 80055b6:	4631      	mov	r1, r6
 80055b8:	4682      	mov	sl, r0
 80055ba:	f001 fa69 	bl	8006a90 <__mcmp>
 80055be:	2800      	cmp	r0, #0
 80055c0:	dd3b      	ble.n	800563a <_dtoa_r+0xdc2>
 80055c2:	9b00      	ldr	r3, [sp, #0]
 80055c4:	2b39      	cmp	r3, #57	; 0x39
 80055c6:	d003      	beq.n	80055d0 <_dtoa_r+0xd58>
 80055c8:	9b02      	ldr	r3, [sp, #8]
 80055ca:	3331      	adds	r3, #49	; 0x31
 80055cc:	9300      	str	r3, [sp, #0]
 80055ce:	e733      	b.n	8005438 <_dtoa_r+0xbc0>
 80055d0:	2239      	movs	r2, #57	; 0x39
 80055d2:	9502      	str	r5, [sp, #8]
 80055d4:	703a      	strb	r2, [r7, #0]
 80055d6:	4645      	mov	r5, r8
 80055d8:	e58e      	b.n	80050f8 <_dtoa_r+0x880>
 80055da:	e9dd 2300 	ldrd	r2, r3, [sp]
 80055de:	2000      	movs	r0, #0
 80055e0:	492c      	ldr	r1, [pc, #176]	; (8005694 <_dtoa_r+0xe1c>)
 80055e2:	f7fb f8f1 	bl	80007c8 <__aeabi_dsub>
 80055e6:	4632      	mov	r2, r6
 80055e8:	463b      	mov	r3, r7
 80055ea:	f7fb fd35 	bl	8001058 <__aeabi_dcmpgt>
 80055ee:	b910      	cbnz	r0, 80055f6 <_dtoa_r+0xd7e>
 80055f0:	f7ff bb68 	b.w	8004cc4 <_dtoa_r+0x44c>
 80055f4:	4614      	mov	r4, r2
 80055f6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80055fa:	2b30      	cmp	r3, #48	; 0x30
 80055fc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8005600:	d0f8      	beq.n	80055f4 <_dtoa_r+0xd7c>
 8005602:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005604:	9306      	str	r3, [sp, #24]
 8005606:	e58d      	b.n	8005124 <_dtoa_r+0x8ac>
 8005608:	46d9      	mov	r9, fp
 800560a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800560e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005612:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005614:	9306      	str	r3, [sp, #24]
 8005616:	e404      	b.n	8004e22 <_dtoa_r+0x5aa>
 8005618:	9b00      	ldr	r3, [sp, #0]
 800561a:	2b39      	cmp	r3, #57	; 0x39
 800561c:	4621      	mov	r1, r4
 800561e:	4632      	mov	r2, r6
 8005620:	f107 0401 	add.w	r4, r7, #1
 8005624:	465e      	mov	r6, fp
 8005626:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800562a:	d0d1      	beq.n	80055d0 <_dtoa_r+0xd58>
 800562c:	2a00      	cmp	r2, #0
 800562e:	f77f af03 	ble.w	8005438 <_dtoa_r+0xbc0>
 8005632:	460b      	mov	r3, r1
 8005634:	3331      	adds	r3, #49	; 0x31
 8005636:	9300      	str	r3, [sp, #0]
 8005638:	e6fe      	b.n	8005438 <_dtoa_r+0xbc0>
 800563a:	f47f aefd 	bne.w	8005438 <_dtoa_r+0xbc0>
 800563e:	9b00      	ldr	r3, [sp, #0]
 8005640:	07da      	lsls	r2, r3, #31
 8005642:	f57f aef9 	bpl.w	8005438 <_dtoa_r+0xbc0>
 8005646:	e7bc      	b.n	80055c2 <_dtoa_r+0xd4a>
 8005648:	4629      	mov	r1, r5
 800564a:	2300      	movs	r3, #0
 800564c:	220a      	movs	r2, #10
 800564e:	4648      	mov	r0, r9
 8005650:	f001 f838 	bl	80066c4 <__multadd>
 8005654:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005656:	2b00      	cmp	r3, #0
 8005658:	4605      	mov	r5, r0
 800565a:	dd09      	ble.n	8005670 <_dtoa_r+0xdf8>
 800565c:	9309      	str	r3, [sp, #36]	; 0x24
 800565e:	e484      	b.n	8004f6a <_dtoa_r+0x6f2>
 8005660:	9b02      	ldr	r3, [sp, #8]
 8005662:	2b02      	cmp	r3, #2
 8005664:	dc0e      	bgt.n	8005684 <_dtoa_r+0xe0c>
 8005666:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005668:	e507      	b.n	800507a <_dtoa_r+0x802>
 800566a:	2602      	movs	r6, #2
 800566c:	f7ff ba70 	b.w	8004b50 <_dtoa_r+0x2d8>
 8005670:	9b02      	ldr	r3, [sp, #8]
 8005672:	2b02      	cmp	r3, #2
 8005674:	dc06      	bgt.n	8005684 <_dtoa_r+0xe0c>
 8005676:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005678:	e7f0      	b.n	800565c <_dtoa_r+0xde4>
 800567a:	f43f ac59 	beq.w	8004f30 <_dtoa_r+0x6b8>
 800567e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005682:	e450      	b.n	8004f26 <_dtoa_r+0x6ae>
 8005684:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005686:	9309      	str	r3, [sp, #36]	; 0x24
 8005688:	e678      	b.n	800537c <_dtoa_r+0xb04>
 800568a:	bf00      	nop
 800568c:	40240000 	.word	0x40240000
 8005690:	401c0000 	.word	0x401c0000
 8005694:	3fe00000 	.word	0x3fe00000

08005698 <__sflush_r>:
 8005698:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800569c:	b29a      	uxth	r2, r3
 800569e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80056a2:	460c      	mov	r4, r1
 80056a4:	0711      	lsls	r1, r2, #28
 80056a6:	4680      	mov	r8, r0
 80056a8:	d444      	bmi.n	8005734 <__sflush_r+0x9c>
 80056aa:	6862      	ldr	r2, [r4, #4]
 80056ac:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80056b0:	2a00      	cmp	r2, #0
 80056b2:	81a3      	strh	r3, [r4, #12]
 80056b4:	dd59      	ble.n	800576a <__sflush_r+0xd2>
 80056b6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80056b8:	2d00      	cmp	r5, #0
 80056ba:	d053      	beq.n	8005764 <__sflush_r+0xcc>
 80056bc:	2200      	movs	r2, #0
 80056be:	b29b      	uxth	r3, r3
 80056c0:	f8d8 6000 	ldr.w	r6, [r8]
 80056c4:	69e1      	ldr	r1, [r4, #28]
 80056c6:	f8c8 2000 	str.w	r2, [r8]
 80056ca:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80056ce:	f040 8083 	bne.w	80057d8 <__sflush_r+0x140>
 80056d2:	2301      	movs	r3, #1
 80056d4:	4640      	mov	r0, r8
 80056d6:	47a8      	blx	r5
 80056d8:	1c42      	adds	r2, r0, #1
 80056da:	d04a      	beq.n	8005772 <__sflush_r+0xda>
 80056dc:	89a3      	ldrh	r3, [r4, #12]
 80056de:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80056e0:	69e1      	ldr	r1, [r4, #28]
 80056e2:	075b      	lsls	r3, r3, #29
 80056e4:	d505      	bpl.n	80056f2 <__sflush_r+0x5a>
 80056e6:	6862      	ldr	r2, [r4, #4]
 80056e8:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80056ea:	1a80      	subs	r0, r0, r2
 80056ec:	b10b      	cbz	r3, 80056f2 <__sflush_r+0x5a>
 80056ee:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80056f0:	1ac0      	subs	r0, r0, r3
 80056f2:	4602      	mov	r2, r0
 80056f4:	2300      	movs	r3, #0
 80056f6:	4640      	mov	r0, r8
 80056f8:	47a8      	blx	r5
 80056fa:	1c47      	adds	r7, r0, #1
 80056fc:	d045      	beq.n	800578a <__sflush_r+0xf2>
 80056fe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005702:	6922      	ldr	r2, [r4, #16]
 8005704:	6022      	str	r2, [r4, #0]
 8005706:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 800570a:	2200      	movs	r2, #0
 800570c:	81a3      	strh	r3, [r4, #12]
 800570e:	04db      	lsls	r3, r3, #19
 8005710:	6062      	str	r2, [r4, #4]
 8005712:	d500      	bpl.n	8005716 <__sflush_r+0x7e>
 8005714:	6520      	str	r0, [r4, #80]	; 0x50
 8005716:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005718:	f8c8 6000 	str.w	r6, [r8]
 800571c:	b311      	cbz	r1, 8005764 <__sflush_r+0xcc>
 800571e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005722:	4299      	cmp	r1, r3
 8005724:	d002      	beq.n	800572c <__sflush_r+0x94>
 8005726:	4640      	mov	r0, r8
 8005728:	f000 f95e 	bl	80059e8 <_free_r>
 800572c:	2000      	movs	r0, #0
 800572e:	6320      	str	r0, [r4, #48]	; 0x30
 8005730:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005734:	6926      	ldr	r6, [r4, #16]
 8005736:	b1ae      	cbz	r6, 8005764 <__sflush_r+0xcc>
 8005738:	6825      	ldr	r5, [r4, #0]
 800573a:	6026      	str	r6, [r4, #0]
 800573c:	0792      	lsls	r2, r2, #30
 800573e:	bf0c      	ite	eq
 8005740:	6963      	ldreq	r3, [r4, #20]
 8005742:	2300      	movne	r3, #0
 8005744:	1bad      	subs	r5, r5, r6
 8005746:	60a3      	str	r3, [r4, #8]
 8005748:	e00a      	b.n	8005760 <__sflush_r+0xc8>
 800574a:	462b      	mov	r3, r5
 800574c:	4632      	mov	r2, r6
 800574e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005750:	69e1      	ldr	r1, [r4, #28]
 8005752:	4640      	mov	r0, r8
 8005754:	47b8      	blx	r7
 8005756:	2800      	cmp	r0, #0
 8005758:	eba5 0500 	sub.w	r5, r5, r0
 800575c:	4406      	add	r6, r0
 800575e:	dd2b      	ble.n	80057b8 <__sflush_r+0x120>
 8005760:	2d00      	cmp	r5, #0
 8005762:	dcf2      	bgt.n	800574a <__sflush_r+0xb2>
 8005764:	2000      	movs	r0, #0
 8005766:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800576a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800576c:	2a00      	cmp	r2, #0
 800576e:	dca2      	bgt.n	80056b6 <__sflush_r+0x1e>
 8005770:	e7f8      	b.n	8005764 <__sflush_r+0xcc>
 8005772:	f8d8 3000 	ldr.w	r3, [r8]
 8005776:	2b00      	cmp	r3, #0
 8005778:	d0b0      	beq.n	80056dc <__sflush_r+0x44>
 800577a:	2b1d      	cmp	r3, #29
 800577c:	d001      	beq.n	8005782 <__sflush_r+0xea>
 800577e:	2b16      	cmp	r3, #22
 8005780:	d12c      	bne.n	80057dc <__sflush_r+0x144>
 8005782:	f8c8 6000 	str.w	r6, [r8]
 8005786:	2000      	movs	r0, #0
 8005788:	e7ed      	b.n	8005766 <__sflush_r+0xce>
 800578a:	f8d8 1000 	ldr.w	r1, [r8]
 800578e:	291d      	cmp	r1, #29
 8005790:	d81a      	bhi.n	80057c8 <__sflush_r+0x130>
 8005792:	4b15      	ldr	r3, [pc, #84]	; (80057e8 <__sflush_r+0x150>)
 8005794:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005798:	40cb      	lsrs	r3, r1
 800579a:	43db      	mvns	r3, r3
 800579c:	f013 0301 	ands.w	r3, r3, #1
 80057a0:	d114      	bne.n	80057cc <__sflush_r+0x134>
 80057a2:	6925      	ldr	r5, [r4, #16]
 80057a4:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80057a8:	e9c4 5300 	strd	r5, r3, [r4]
 80057ac:	04d5      	lsls	r5, r2, #19
 80057ae:	81a2      	strh	r2, [r4, #12]
 80057b0:	d5b1      	bpl.n	8005716 <__sflush_r+0x7e>
 80057b2:	2900      	cmp	r1, #0
 80057b4:	d1af      	bne.n	8005716 <__sflush_r+0x7e>
 80057b6:	e7ad      	b.n	8005714 <__sflush_r+0x7c>
 80057b8:	89a3      	ldrh	r3, [r4, #12]
 80057ba:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80057be:	81a3      	strh	r3, [r4, #12]
 80057c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80057c4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80057c8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80057cc:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80057d0:	81a2      	strh	r2, [r4, #12]
 80057d2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80057d6:	e7c6      	b.n	8005766 <__sflush_r+0xce>
 80057d8:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80057da:	e782      	b.n	80056e2 <__sflush_r+0x4a>
 80057dc:	89a3      	ldrh	r3, [r4, #12]
 80057de:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80057e2:	81a3      	strh	r3, [r4, #12]
 80057e4:	e7bf      	b.n	8005766 <__sflush_r+0xce>
 80057e6:	bf00      	nop
 80057e8:	20400001 	.word	0x20400001

080057ec <_fflush_r>:
 80057ec:	b538      	push	{r3, r4, r5, lr}
 80057ee:	460d      	mov	r5, r1
 80057f0:	4604      	mov	r4, r0
 80057f2:	b108      	cbz	r0, 80057f8 <_fflush_r+0xc>
 80057f4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80057f6:	b1a3      	cbz	r3, 8005822 <_fflush_r+0x36>
 80057f8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80057fc:	b1b8      	cbz	r0, 800582e <_fflush_r+0x42>
 80057fe:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005800:	07db      	lsls	r3, r3, #31
 8005802:	d401      	bmi.n	8005808 <_fflush_r+0x1c>
 8005804:	0581      	lsls	r1, r0, #22
 8005806:	d51a      	bpl.n	800583e <_fflush_r+0x52>
 8005808:	4620      	mov	r0, r4
 800580a:	4629      	mov	r1, r5
 800580c:	f7ff ff44 	bl	8005698 <__sflush_r>
 8005810:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005812:	07da      	lsls	r2, r3, #31
 8005814:	4604      	mov	r4, r0
 8005816:	d402      	bmi.n	800581e <_fflush_r+0x32>
 8005818:	89ab      	ldrh	r3, [r5, #12]
 800581a:	059b      	lsls	r3, r3, #22
 800581c:	d50a      	bpl.n	8005834 <_fflush_r+0x48>
 800581e:	4620      	mov	r0, r4
 8005820:	bd38      	pop	{r3, r4, r5, pc}
 8005822:	f000 f83f 	bl	80058a4 <__sinit>
 8005826:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800582a:	2800      	cmp	r0, #0
 800582c:	d1e7      	bne.n	80057fe <_fflush_r+0x12>
 800582e:	4604      	mov	r4, r0
 8005830:	4620      	mov	r0, r4
 8005832:	bd38      	pop	{r3, r4, r5, pc}
 8005834:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005836:	f000 fb87 	bl	8005f48 <__retarget_lock_release_recursive>
 800583a:	4620      	mov	r0, r4
 800583c:	bd38      	pop	{r3, r4, r5, pc}
 800583e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005840:	f000 fb80 	bl	8005f44 <__retarget_lock_acquire_recursive>
 8005844:	e7e0      	b.n	8005808 <_fflush_r+0x1c>
 8005846:	bf00      	nop

08005848 <std>:
 8005848:	b510      	push	{r4, lr}
 800584a:	2300      	movs	r3, #0
 800584c:	4604      	mov	r4, r0
 800584e:	8181      	strh	r1, [r0, #12]
 8005850:	81c2      	strh	r2, [r0, #14]
 8005852:	e9c0 3300 	strd	r3, r3, [r0]
 8005856:	6083      	str	r3, [r0, #8]
 8005858:	6643      	str	r3, [r0, #100]	; 0x64
 800585a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800585e:	6183      	str	r3, [r0, #24]
 8005860:	4619      	mov	r1, r3
 8005862:	2208      	movs	r2, #8
 8005864:	305c      	adds	r0, #92	; 0x5c
 8005866:	f7fd f8c9 	bl	80029fc <memset>
 800586a:	4807      	ldr	r0, [pc, #28]	; (8005888 <std+0x40>)
 800586c:	4907      	ldr	r1, [pc, #28]	; (800588c <std+0x44>)
 800586e:	4a08      	ldr	r2, [pc, #32]	; (8005890 <std+0x48>)
 8005870:	4b08      	ldr	r3, [pc, #32]	; (8005894 <std+0x4c>)
 8005872:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005874:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005878:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800587c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005880:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005884:	f000 bb5a 	b.w	8005f3c <__retarget_lock_init_recursive>
 8005888:	08007061 	.word	0x08007061
 800588c:	08007085 	.word	0x08007085
 8005890:	080070c1 	.word	0x080070c1
 8005894:	080070e1 	.word	0x080070e1

08005898 <_cleanup_r>:
 8005898:	4901      	ldr	r1, [pc, #4]	; (80058a0 <_cleanup_r+0x8>)
 800589a:	f000 bb17 	b.w	8005ecc <_fwalk_reent>
 800589e:	bf00      	nop
 80058a0:	08007351 	.word	0x08007351

080058a4 <__sinit>:
 80058a4:	b510      	push	{r4, lr}
 80058a6:	4604      	mov	r4, r0
 80058a8:	4812      	ldr	r0, [pc, #72]	; (80058f4 <__sinit+0x50>)
 80058aa:	f000 fb4b 	bl	8005f44 <__retarget_lock_acquire_recursive>
 80058ae:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80058b0:	b9d2      	cbnz	r2, 80058e8 <__sinit+0x44>
 80058b2:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80058b6:	4810      	ldr	r0, [pc, #64]	; (80058f8 <__sinit+0x54>)
 80058b8:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80058bc:	2103      	movs	r1, #3
 80058be:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80058c2:	63e0      	str	r0, [r4, #60]	; 0x3c
 80058c4:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80058c8:	6860      	ldr	r0, [r4, #4]
 80058ca:	2104      	movs	r1, #4
 80058cc:	f7ff ffbc 	bl	8005848 <std>
 80058d0:	2201      	movs	r2, #1
 80058d2:	2109      	movs	r1, #9
 80058d4:	68a0      	ldr	r0, [r4, #8]
 80058d6:	f7ff ffb7 	bl	8005848 <std>
 80058da:	2202      	movs	r2, #2
 80058dc:	2112      	movs	r1, #18
 80058de:	68e0      	ldr	r0, [r4, #12]
 80058e0:	f7ff ffb2 	bl	8005848 <std>
 80058e4:	2301      	movs	r3, #1
 80058e6:	63a3      	str	r3, [r4, #56]	; 0x38
 80058e8:	4802      	ldr	r0, [pc, #8]	; (80058f4 <__sinit+0x50>)
 80058ea:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80058ee:	f000 bb2b 	b.w	8005f48 <__retarget_lock_release_recursive>
 80058f2:	bf00      	nop
 80058f4:	20000b0c 	.word	0x20000b0c
 80058f8:	08005899 	.word	0x08005899

080058fc <__sfp_lock_acquire>:
 80058fc:	4801      	ldr	r0, [pc, #4]	; (8005904 <__sfp_lock_acquire+0x8>)
 80058fe:	f000 bb21 	b.w	8005f44 <__retarget_lock_acquire_recursive>
 8005902:	bf00      	nop
 8005904:	20000b20 	.word	0x20000b20

08005908 <__sfp_lock_release>:
 8005908:	4801      	ldr	r0, [pc, #4]	; (8005910 <__sfp_lock_release+0x8>)
 800590a:	f000 bb1d 	b.w	8005f48 <__retarget_lock_release_recursive>
 800590e:	bf00      	nop
 8005910:	20000b20 	.word	0x20000b20

08005914 <__libc_fini_array>:
 8005914:	b538      	push	{r3, r4, r5, lr}
 8005916:	4c0a      	ldr	r4, [pc, #40]	; (8005940 <__libc_fini_array+0x2c>)
 8005918:	4d0a      	ldr	r5, [pc, #40]	; (8005944 <__libc_fini_array+0x30>)
 800591a:	1b64      	subs	r4, r4, r5
 800591c:	10a4      	asrs	r4, r4, #2
 800591e:	d00a      	beq.n	8005936 <__libc_fini_array+0x22>
 8005920:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005924:	3b01      	subs	r3, #1
 8005926:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800592a:	3c01      	subs	r4, #1
 800592c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005930:	4798      	blx	r3
 8005932:	2c00      	cmp	r4, #0
 8005934:	d1f9      	bne.n	800592a <__libc_fini_array+0x16>
 8005936:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800593a:	f001 befd 	b.w	8007738 <_fini>
 800593e:	bf00      	nop
 8005940:	08007b04 	.word	0x08007b04
 8005944:	08007b00 	.word	0x08007b00

08005948 <_malloc_trim_r>:
 8005948:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800594a:	4f24      	ldr	r7, [pc, #144]	; (80059dc <_malloc_trim_r+0x94>)
 800594c:	460c      	mov	r4, r1
 800594e:	4606      	mov	r6, r0
 8005950:	f000 fe7c 	bl	800664c <__malloc_lock>
 8005954:	68bb      	ldr	r3, [r7, #8]
 8005956:	685d      	ldr	r5, [r3, #4]
 8005958:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800595c:	310f      	adds	r1, #15
 800595e:	f025 0503 	bic.w	r5, r5, #3
 8005962:	4429      	add	r1, r5
 8005964:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005968:	f021 010f 	bic.w	r1, r1, #15
 800596c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005970:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005974:	db07      	blt.n	8005986 <_malloc_trim_r+0x3e>
 8005976:	2100      	movs	r1, #0
 8005978:	4630      	mov	r0, r6
 800597a:	f001 fb5f 	bl	800703c <_sbrk_r>
 800597e:	68bb      	ldr	r3, [r7, #8]
 8005980:	442b      	add	r3, r5
 8005982:	4298      	cmp	r0, r3
 8005984:	d004      	beq.n	8005990 <_malloc_trim_r+0x48>
 8005986:	4630      	mov	r0, r6
 8005988:	f000 fe66 	bl	8006658 <__malloc_unlock>
 800598c:	2000      	movs	r0, #0
 800598e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005990:	4261      	negs	r1, r4
 8005992:	4630      	mov	r0, r6
 8005994:	f001 fb52 	bl	800703c <_sbrk_r>
 8005998:	3001      	adds	r0, #1
 800599a:	d00d      	beq.n	80059b8 <_malloc_trim_r+0x70>
 800599c:	4b10      	ldr	r3, [pc, #64]	; (80059e0 <_malloc_trim_r+0x98>)
 800599e:	68ba      	ldr	r2, [r7, #8]
 80059a0:	6819      	ldr	r1, [r3, #0]
 80059a2:	1b2d      	subs	r5, r5, r4
 80059a4:	f045 0501 	orr.w	r5, r5, #1
 80059a8:	4630      	mov	r0, r6
 80059aa:	1b09      	subs	r1, r1, r4
 80059ac:	6055      	str	r5, [r2, #4]
 80059ae:	6019      	str	r1, [r3, #0]
 80059b0:	f000 fe52 	bl	8006658 <__malloc_unlock>
 80059b4:	2001      	movs	r0, #1
 80059b6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80059b8:	2100      	movs	r1, #0
 80059ba:	4630      	mov	r0, r6
 80059bc:	f001 fb3e 	bl	800703c <_sbrk_r>
 80059c0:	68ba      	ldr	r2, [r7, #8]
 80059c2:	1a83      	subs	r3, r0, r2
 80059c4:	2b0f      	cmp	r3, #15
 80059c6:	ddde      	ble.n	8005986 <_malloc_trim_r+0x3e>
 80059c8:	4c06      	ldr	r4, [pc, #24]	; (80059e4 <_malloc_trim_r+0x9c>)
 80059ca:	4905      	ldr	r1, [pc, #20]	; (80059e0 <_malloc_trim_r+0x98>)
 80059cc:	6824      	ldr	r4, [r4, #0]
 80059ce:	f043 0301 	orr.w	r3, r3, #1
 80059d2:	1b00      	subs	r0, r0, r4
 80059d4:	6053      	str	r3, [r2, #4]
 80059d6:	6008      	str	r0, [r1, #0]
 80059d8:	e7d5      	b.n	8005986 <_malloc_trim_r+0x3e>
 80059da:	bf00      	nop
 80059dc:	2000044c 	.word	0x2000044c
 80059e0:	20000a84 	.word	0x20000a84
 80059e4:	20000854 	.word	0x20000854

080059e8 <_free_r>:
 80059e8:	2900      	cmp	r1, #0
 80059ea:	d053      	beq.n	8005a94 <_free_r+0xac>
 80059ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80059ee:	460c      	mov	r4, r1
 80059f0:	4606      	mov	r6, r0
 80059f2:	f000 fe2b 	bl	800664c <__malloc_lock>
 80059f6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80059fa:	4f71      	ldr	r7, [pc, #452]	; (8005bc0 <_free_r+0x1d8>)
 80059fc:	f02c 0101 	bic.w	r1, ip, #1
 8005a00:	f1a4 0508 	sub.w	r5, r4, #8
 8005a04:	186b      	adds	r3, r5, r1
 8005a06:	68b8      	ldr	r0, [r7, #8]
 8005a08:	685a      	ldr	r2, [r3, #4]
 8005a0a:	4298      	cmp	r0, r3
 8005a0c:	f022 0203 	bic.w	r2, r2, #3
 8005a10:	d053      	beq.n	8005aba <_free_r+0xd2>
 8005a12:	f01c 0f01 	tst.w	ip, #1
 8005a16:	605a      	str	r2, [r3, #4]
 8005a18:	eb03 0002 	add.w	r0, r3, r2
 8005a1c:	d13b      	bne.n	8005a96 <_free_r+0xae>
 8005a1e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005a22:	6840      	ldr	r0, [r0, #4]
 8005a24:	eba5 050c 	sub.w	r5, r5, ip
 8005a28:	f107 0e08 	add.w	lr, r7, #8
 8005a2c:	68ac      	ldr	r4, [r5, #8]
 8005a2e:	4574      	cmp	r4, lr
 8005a30:	4461      	add	r1, ip
 8005a32:	f000 0001 	and.w	r0, r0, #1
 8005a36:	d075      	beq.n	8005b24 <_free_r+0x13c>
 8005a38:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005a3c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005a40:	f8cc 4008 	str.w	r4, [ip, #8]
 8005a44:	b360      	cbz	r0, 8005aa0 <_free_r+0xb8>
 8005a46:	f041 0301 	orr.w	r3, r1, #1
 8005a4a:	606b      	str	r3, [r5, #4]
 8005a4c:	5069      	str	r1, [r5, r1]
 8005a4e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005a52:	d350      	bcc.n	8005af6 <_free_r+0x10e>
 8005a54:	0a4b      	lsrs	r3, r1, #9
 8005a56:	2b04      	cmp	r3, #4
 8005a58:	d870      	bhi.n	8005b3c <_free_r+0x154>
 8005a5a:	098b      	lsrs	r3, r1, #6
 8005a5c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005a60:	00e4      	lsls	r4, r4, #3
 8005a62:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005a66:	1938      	adds	r0, r7, r4
 8005a68:	593b      	ldr	r3, [r7, r4]
 8005a6a:	3808      	subs	r0, #8
 8005a6c:	4298      	cmp	r0, r3
 8005a6e:	d078      	beq.n	8005b62 <_free_r+0x17a>
 8005a70:	685a      	ldr	r2, [r3, #4]
 8005a72:	f022 0203 	bic.w	r2, r2, #3
 8005a76:	428a      	cmp	r2, r1
 8005a78:	d971      	bls.n	8005b5e <_free_r+0x176>
 8005a7a:	689b      	ldr	r3, [r3, #8]
 8005a7c:	4298      	cmp	r0, r3
 8005a7e:	d1f7      	bne.n	8005a70 <_free_r+0x88>
 8005a80:	68c3      	ldr	r3, [r0, #12]
 8005a82:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005a86:	609d      	str	r5, [r3, #8]
 8005a88:	60c5      	str	r5, [r0, #12]
 8005a8a:	4630      	mov	r0, r6
 8005a8c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005a90:	f000 bde2 	b.w	8006658 <__malloc_unlock>
 8005a94:	4770      	bx	lr
 8005a96:	6840      	ldr	r0, [r0, #4]
 8005a98:	f000 0001 	and.w	r0, r0, #1
 8005a9c:	2800      	cmp	r0, #0
 8005a9e:	d1d2      	bne.n	8005a46 <_free_r+0x5e>
 8005aa0:	6898      	ldr	r0, [r3, #8]
 8005aa2:	4c48      	ldr	r4, [pc, #288]	; (8005bc4 <_free_r+0x1dc>)
 8005aa4:	4411      	add	r1, r2
 8005aa6:	42a0      	cmp	r0, r4
 8005aa8:	f041 0201 	orr.w	r2, r1, #1
 8005aac:	d062      	beq.n	8005b74 <_free_r+0x18c>
 8005aae:	68db      	ldr	r3, [r3, #12]
 8005ab0:	60c3      	str	r3, [r0, #12]
 8005ab2:	6098      	str	r0, [r3, #8]
 8005ab4:	606a      	str	r2, [r5, #4]
 8005ab6:	5069      	str	r1, [r5, r1]
 8005ab8:	e7c9      	b.n	8005a4e <_free_r+0x66>
 8005aba:	f01c 0f01 	tst.w	ip, #1
 8005abe:	440a      	add	r2, r1
 8005ac0:	d107      	bne.n	8005ad2 <_free_r+0xea>
 8005ac2:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005ac6:	1aed      	subs	r5, r5, r3
 8005ac8:	441a      	add	r2, r3
 8005aca:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8005ace:	60cb      	str	r3, [r1, #12]
 8005ad0:	6099      	str	r1, [r3, #8]
 8005ad2:	4b3d      	ldr	r3, [pc, #244]	; (8005bc8 <_free_r+0x1e0>)
 8005ad4:	681b      	ldr	r3, [r3, #0]
 8005ad6:	f042 0101 	orr.w	r1, r2, #1
 8005ada:	4293      	cmp	r3, r2
 8005adc:	6069      	str	r1, [r5, #4]
 8005ade:	60bd      	str	r5, [r7, #8]
 8005ae0:	d804      	bhi.n	8005aec <_free_r+0x104>
 8005ae2:	4b3a      	ldr	r3, [pc, #232]	; (8005bcc <_free_r+0x1e4>)
 8005ae4:	4630      	mov	r0, r6
 8005ae6:	6819      	ldr	r1, [r3, #0]
 8005ae8:	f7ff ff2e 	bl	8005948 <_malloc_trim_r>
 8005aec:	4630      	mov	r0, r6
 8005aee:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005af2:	f000 bdb1 	b.w	8006658 <__malloc_unlock>
 8005af6:	08c9      	lsrs	r1, r1, #3
 8005af8:	6878      	ldr	r0, [r7, #4]
 8005afa:	1c4a      	adds	r2, r1, #1
 8005afc:	2301      	movs	r3, #1
 8005afe:	1089      	asrs	r1, r1, #2
 8005b00:	408b      	lsls	r3, r1
 8005b02:	4303      	orrs	r3, r0
 8005b04:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005b08:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005b0c:	607b      	str	r3, [r7, #4]
 8005b0e:	3908      	subs	r1, #8
 8005b10:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005b14:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005b18:	60c5      	str	r5, [r0, #12]
 8005b1a:	4630      	mov	r0, r6
 8005b1c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005b20:	f000 bd9a 	b.w	8006658 <__malloc_unlock>
 8005b24:	2800      	cmp	r0, #0
 8005b26:	d145      	bne.n	8005bb4 <_free_r+0x1cc>
 8005b28:	440a      	add	r2, r1
 8005b2a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005b2e:	f042 0001 	orr.w	r0, r2, #1
 8005b32:	60cb      	str	r3, [r1, #12]
 8005b34:	6099      	str	r1, [r3, #8]
 8005b36:	6068      	str	r0, [r5, #4]
 8005b38:	50aa      	str	r2, [r5, r2]
 8005b3a:	e7d7      	b.n	8005aec <_free_r+0x104>
 8005b3c:	2b14      	cmp	r3, #20
 8005b3e:	d908      	bls.n	8005b52 <_free_r+0x16a>
 8005b40:	2b54      	cmp	r3, #84	; 0x54
 8005b42:	d81e      	bhi.n	8005b82 <_free_r+0x19a>
 8005b44:	0b0b      	lsrs	r3, r1, #12
 8005b46:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005b4a:	00e4      	lsls	r4, r4, #3
 8005b4c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005b50:	e789      	b.n	8005a66 <_free_r+0x7e>
 8005b52:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005b56:	00e4      	lsls	r4, r4, #3
 8005b58:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005b5c:	e783      	b.n	8005a66 <_free_r+0x7e>
 8005b5e:	4618      	mov	r0, r3
 8005b60:	e78e      	b.n	8005a80 <_free_r+0x98>
 8005b62:	1093      	asrs	r3, r2, #2
 8005b64:	6879      	ldr	r1, [r7, #4]
 8005b66:	2201      	movs	r2, #1
 8005b68:	fa02 f303 	lsl.w	r3, r2, r3
 8005b6c:	430b      	orrs	r3, r1
 8005b6e:	607b      	str	r3, [r7, #4]
 8005b70:	4603      	mov	r3, r0
 8005b72:	e786      	b.n	8005a82 <_free_r+0x9a>
 8005b74:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005b78:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005b7c:	606a      	str	r2, [r5, #4]
 8005b7e:	5069      	str	r1, [r5, r1]
 8005b80:	e7b4      	b.n	8005aec <_free_r+0x104>
 8005b82:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005b86:	d806      	bhi.n	8005b96 <_free_r+0x1ae>
 8005b88:	0bcb      	lsrs	r3, r1, #15
 8005b8a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005b8e:	00e4      	lsls	r4, r4, #3
 8005b90:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005b94:	e767      	b.n	8005a66 <_free_r+0x7e>
 8005b96:	f240 5254 	movw	r2, #1364	; 0x554
 8005b9a:	4293      	cmp	r3, r2
 8005b9c:	d806      	bhi.n	8005bac <_free_r+0x1c4>
 8005b9e:	0c8b      	lsrs	r3, r1, #18
 8005ba0:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005ba4:	00e4      	lsls	r4, r4, #3
 8005ba6:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005baa:	e75c      	b.n	8005a66 <_free_r+0x7e>
 8005bac:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005bb0:	227e      	movs	r2, #126	; 0x7e
 8005bb2:	e758      	b.n	8005a66 <_free_r+0x7e>
 8005bb4:	f041 0201 	orr.w	r2, r1, #1
 8005bb8:	606a      	str	r2, [r5, #4]
 8005bba:	6019      	str	r1, [r3, #0]
 8005bbc:	e796      	b.n	8005aec <_free_r+0x104>
 8005bbe:	bf00      	nop
 8005bc0:	2000044c 	.word	0x2000044c
 8005bc4:	20000454 	.word	0x20000454
 8005bc8:	20000858 	.word	0x20000858
 8005bcc:	20000ab4 	.word	0x20000ab4

08005bd0 <__sfvwrite_r>:
 8005bd0:	6893      	ldr	r3, [r2, #8]
 8005bd2:	2b00      	cmp	r3, #0
 8005bd4:	f000 80e4 	beq.w	8005da0 <__sfvwrite_r+0x1d0>
 8005bd8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005bdc:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005be0:	b29b      	uxth	r3, r3
 8005be2:	460c      	mov	r4, r1
 8005be4:	0719      	lsls	r1, r3, #28
 8005be6:	b083      	sub	sp, #12
 8005be8:	4682      	mov	sl, r0
 8005bea:	4690      	mov	r8, r2
 8005bec:	d535      	bpl.n	8005c5a <__sfvwrite_r+0x8a>
 8005bee:	6922      	ldr	r2, [r4, #16]
 8005bf0:	b39a      	cbz	r2, 8005c5a <__sfvwrite_r+0x8a>
 8005bf2:	f013 0202 	ands.w	r2, r3, #2
 8005bf6:	f8d8 6000 	ldr.w	r6, [r8]
 8005bfa:	d03d      	beq.n	8005c78 <__sfvwrite_r+0xa8>
 8005bfc:	2700      	movs	r7, #0
 8005bfe:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005c02:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005c06:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005ec8 <__sfvwrite_r+0x2f8>
 8005c0a:	463d      	mov	r5, r7
 8005c0c:	454d      	cmp	r5, r9
 8005c0e:	462b      	mov	r3, r5
 8005c10:	463a      	mov	r2, r7
 8005c12:	bf28      	it	cs
 8005c14:	464b      	movcs	r3, r9
 8005c16:	4661      	mov	r1, ip
 8005c18:	4650      	mov	r0, sl
 8005c1a:	b1d5      	cbz	r5, 8005c52 <__sfvwrite_r+0x82>
 8005c1c:	47d8      	blx	fp
 8005c1e:	2800      	cmp	r0, #0
 8005c20:	f340 80c6 	ble.w	8005db0 <__sfvwrite_r+0x1e0>
 8005c24:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005c28:	1a1b      	subs	r3, r3, r0
 8005c2a:	4407      	add	r7, r0
 8005c2c:	1a2d      	subs	r5, r5, r0
 8005c2e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005c32:	2b00      	cmp	r3, #0
 8005c34:	f000 80b0 	beq.w	8005d98 <__sfvwrite_r+0x1c8>
 8005c38:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005c3c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005c40:	454d      	cmp	r5, r9
 8005c42:	462b      	mov	r3, r5
 8005c44:	463a      	mov	r2, r7
 8005c46:	bf28      	it	cs
 8005c48:	464b      	movcs	r3, r9
 8005c4a:	4661      	mov	r1, ip
 8005c4c:	4650      	mov	r0, sl
 8005c4e:	2d00      	cmp	r5, #0
 8005c50:	d1e4      	bne.n	8005c1c <__sfvwrite_r+0x4c>
 8005c52:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005c56:	3608      	adds	r6, #8
 8005c58:	e7d8      	b.n	8005c0c <__sfvwrite_r+0x3c>
 8005c5a:	4621      	mov	r1, r4
 8005c5c:	4650      	mov	r0, sl
 8005c5e:	f7fe fd03 	bl	8004668 <__swsetup_r>
 8005c62:	2800      	cmp	r0, #0
 8005c64:	f040 812a 	bne.w	8005ebc <__sfvwrite_r+0x2ec>
 8005c68:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c6c:	f8d8 6000 	ldr.w	r6, [r8]
 8005c70:	b29b      	uxth	r3, r3
 8005c72:	f013 0202 	ands.w	r2, r3, #2
 8005c76:	d1c1      	bne.n	8005bfc <__sfvwrite_r+0x2c>
 8005c78:	f013 0901 	ands.w	r9, r3, #1
 8005c7c:	d15d      	bne.n	8005d3a <__sfvwrite_r+0x16a>
 8005c7e:	68a7      	ldr	r7, [r4, #8]
 8005c80:	6820      	ldr	r0, [r4, #0]
 8005c82:	464d      	mov	r5, r9
 8005c84:	2d00      	cmp	r5, #0
 8005c86:	d054      	beq.n	8005d32 <__sfvwrite_r+0x162>
 8005c88:	059a      	lsls	r2, r3, #22
 8005c8a:	f140 809b 	bpl.w	8005dc4 <__sfvwrite_r+0x1f4>
 8005c8e:	42af      	cmp	r7, r5
 8005c90:	46bb      	mov	fp, r7
 8005c92:	f200 80d8 	bhi.w	8005e46 <__sfvwrite_r+0x276>
 8005c96:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005c9a:	d02f      	beq.n	8005cfc <__sfvwrite_r+0x12c>
 8005c9c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005ca0:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005ca4:	eba0 0b01 	sub.w	fp, r0, r1
 8005ca8:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005cac:	1c68      	adds	r0, r5, #1
 8005cae:	107f      	asrs	r7, r7, #1
 8005cb0:	4458      	add	r0, fp
 8005cb2:	42b8      	cmp	r0, r7
 8005cb4:	463a      	mov	r2, r7
 8005cb6:	bf84      	itt	hi
 8005cb8:	4607      	movhi	r7, r0
 8005cba:	463a      	movhi	r2, r7
 8005cbc:	055b      	lsls	r3, r3, #21
 8005cbe:	f140 80d3 	bpl.w	8005e68 <__sfvwrite_r+0x298>
 8005cc2:	4611      	mov	r1, r2
 8005cc4:	4650      	mov	r0, sl
 8005cc6:	f000 f9b9 	bl	800603c <_malloc_r>
 8005cca:	2800      	cmp	r0, #0
 8005ccc:	f000 80f0 	beq.w	8005eb0 <__sfvwrite_r+0x2e0>
 8005cd0:	465a      	mov	r2, fp
 8005cd2:	6921      	ldr	r1, [r4, #16]
 8005cd4:	9001      	str	r0, [sp, #4]
 8005cd6:	f7fa fc13 	bl	8000500 <memcpy>
 8005cda:	89a2      	ldrh	r2, [r4, #12]
 8005cdc:	9b01      	ldr	r3, [sp, #4]
 8005cde:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005ce2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005ce6:	81a2      	strh	r2, [r4, #12]
 8005ce8:	eba7 020b 	sub.w	r2, r7, fp
 8005cec:	eb03 000b 	add.w	r0, r3, fp
 8005cf0:	6167      	str	r7, [r4, #20]
 8005cf2:	6123      	str	r3, [r4, #16]
 8005cf4:	6020      	str	r0, [r4, #0]
 8005cf6:	60a2      	str	r2, [r4, #8]
 8005cf8:	462f      	mov	r7, r5
 8005cfa:	46ab      	mov	fp, r5
 8005cfc:	465a      	mov	r2, fp
 8005cfe:	4649      	mov	r1, r9
 8005d00:	f000 fc40 	bl	8006584 <memmove>
 8005d04:	68a2      	ldr	r2, [r4, #8]
 8005d06:	6823      	ldr	r3, [r4, #0]
 8005d08:	1bd2      	subs	r2, r2, r7
 8005d0a:	445b      	add	r3, fp
 8005d0c:	462f      	mov	r7, r5
 8005d0e:	60a2      	str	r2, [r4, #8]
 8005d10:	6023      	str	r3, [r4, #0]
 8005d12:	2500      	movs	r5, #0
 8005d14:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005d18:	1bdb      	subs	r3, r3, r7
 8005d1a:	44b9      	add	r9, r7
 8005d1c:	f8c8 3008 	str.w	r3, [r8, #8]
 8005d20:	2b00      	cmp	r3, #0
 8005d22:	d039      	beq.n	8005d98 <__sfvwrite_r+0x1c8>
 8005d24:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005d28:	68a7      	ldr	r7, [r4, #8]
 8005d2a:	6820      	ldr	r0, [r4, #0]
 8005d2c:	b29b      	uxth	r3, r3
 8005d2e:	2d00      	cmp	r5, #0
 8005d30:	d1aa      	bne.n	8005c88 <__sfvwrite_r+0xb8>
 8005d32:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005d36:	3608      	adds	r6, #8
 8005d38:	e7a4      	b.n	8005c84 <__sfvwrite_r+0xb4>
 8005d3a:	4633      	mov	r3, r6
 8005d3c:	4691      	mov	r9, r2
 8005d3e:	4610      	mov	r0, r2
 8005d40:	4617      	mov	r7, r2
 8005d42:	464e      	mov	r6, r9
 8005d44:	469b      	mov	fp, r3
 8005d46:	2f00      	cmp	r7, #0
 8005d48:	d06b      	beq.n	8005e22 <__sfvwrite_r+0x252>
 8005d4a:	2800      	cmp	r0, #0
 8005d4c:	d071      	beq.n	8005e32 <__sfvwrite_r+0x262>
 8005d4e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005d52:	6820      	ldr	r0, [r4, #0]
 8005d54:	45b9      	cmp	r9, r7
 8005d56:	464b      	mov	r3, r9
 8005d58:	bf28      	it	cs
 8005d5a:	463b      	movcs	r3, r7
 8005d5c:	4288      	cmp	r0, r1
 8005d5e:	d903      	bls.n	8005d68 <__sfvwrite_r+0x198>
 8005d60:	68a5      	ldr	r5, [r4, #8]
 8005d62:	4415      	add	r5, r2
 8005d64:	42ab      	cmp	r3, r5
 8005d66:	dc71      	bgt.n	8005e4c <__sfvwrite_r+0x27c>
 8005d68:	429a      	cmp	r2, r3
 8005d6a:	f300 8093 	bgt.w	8005e94 <__sfvwrite_r+0x2c4>
 8005d6e:	4613      	mov	r3, r2
 8005d70:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005d72:	69e1      	ldr	r1, [r4, #28]
 8005d74:	4632      	mov	r2, r6
 8005d76:	4650      	mov	r0, sl
 8005d78:	47a8      	blx	r5
 8005d7a:	1e05      	subs	r5, r0, #0
 8005d7c:	dd18      	ble.n	8005db0 <__sfvwrite_r+0x1e0>
 8005d7e:	ebb9 0905 	subs.w	r9, r9, r5
 8005d82:	d00f      	beq.n	8005da4 <__sfvwrite_r+0x1d4>
 8005d84:	2001      	movs	r0, #1
 8005d86:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005d8a:	1b5b      	subs	r3, r3, r5
 8005d8c:	442e      	add	r6, r5
 8005d8e:	1b7f      	subs	r7, r7, r5
 8005d90:	f8c8 3008 	str.w	r3, [r8, #8]
 8005d94:	2b00      	cmp	r3, #0
 8005d96:	d1d6      	bne.n	8005d46 <__sfvwrite_r+0x176>
 8005d98:	2000      	movs	r0, #0
 8005d9a:	b003      	add	sp, #12
 8005d9c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005da0:	2000      	movs	r0, #0
 8005da2:	4770      	bx	lr
 8005da4:	4621      	mov	r1, r4
 8005da6:	4650      	mov	r0, sl
 8005da8:	f7ff fd20 	bl	80057ec <_fflush_r>
 8005dac:	2800      	cmp	r0, #0
 8005dae:	d0ea      	beq.n	8005d86 <__sfvwrite_r+0x1b6>
 8005db0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005db4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005db8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005dbc:	81a3      	strh	r3, [r4, #12]
 8005dbe:	b003      	add	sp, #12
 8005dc0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005dc4:	6923      	ldr	r3, [r4, #16]
 8005dc6:	4283      	cmp	r3, r0
 8005dc8:	d315      	bcc.n	8005df6 <__sfvwrite_r+0x226>
 8005dca:	6961      	ldr	r1, [r4, #20]
 8005dcc:	42a9      	cmp	r1, r5
 8005dce:	d812      	bhi.n	8005df6 <__sfvwrite_r+0x226>
 8005dd0:	4b3c      	ldr	r3, [pc, #240]	; (8005ec4 <__sfvwrite_r+0x2f4>)
 8005dd2:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005dd4:	429d      	cmp	r5, r3
 8005dd6:	bf94      	ite	ls
 8005dd8:	462b      	movls	r3, r5
 8005dda:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005dde:	464a      	mov	r2, r9
 8005de0:	fb93 f3f1 	sdiv	r3, r3, r1
 8005de4:	4650      	mov	r0, sl
 8005de6:	fb01 f303 	mul.w	r3, r1, r3
 8005dea:	69e1      	ldr	r1, [r4, #28]
 8005dec:	47b8      	blx	r7
 8005dee:	1e07      	subs	r7, r0, #0
 8005df0:	ddde      	ble.n	8005db0 <__sfvwrite_r+0x1e0>
 8005df2:	1bed      	subs	r5, r5, r7
 8005df4:	e78e      	b.n	8005d14 <__sfvwrite_r+0x144>
 8005df6:	42af      	cmp	r7, r5
 8005df8:	bf28      	it	cs
 8005dfa:	462f      	movcs	r7, r5
 8005dfc:	463a      	mov	r2, r7
 8005dfe:	4649      	mov	r1, r9
 8005e00:	f000 fbc0 	bl	8006584 <memmove>
 8005e04:	68a3      	ldr	r3, [r4, #8]
 8005e06:	6822      	ldr	r2, [r4, #0]
 8005e08:	1bdb      	subs	r3, r3, r7
 8005e0a:	443a      	add	r2, r7
 8005e0c:	60a3      	str	r3, [r4, #8]
 8005e0e:	6022      	str	r2, [r4, #0]
 8005e10:	2b00      	cmp	r3, #0
 8005e12:	d1ee      	bne.n	8005df2 <__sfvwrite_r+0x222>
 8005e14:	4621      	mov	r1, r4
 8005e16:	4650      	mov	r0, sl
 8005e18:	f7ff fce8 	bl	80057ec <_fflush_r>
 8005e1c:	2800      	cmp	r0, #0
 8005e1e:	d0e8      	beq.n	8005df2 <__sfvwrite_r+0x222>
 8005e20:	e7c6      	b.n	8005db0 <__sfvwrite_r+0x1e0>
 8005e22:	f10b 0308 	add.w	r3, fp, #8
 8005e26:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005e2a:	469b      	mov	fp, r3
 8005e2c:	3308      	adds	r3, #8
 8005e2e:	2f00      	cmp	r7, #0
 8005e30:	d0f9      	beq.n	8005e26 <__sfvwrite_r+0x256>
 8005e32:	463a      	mov	r2, r7
 8005e34:	210a      	movs	r1, #10
 8005e36:	4630      	mov	r0, r6
 8005e38:	f7fa fc72 	bl	8000720 <memchr>
 8005e3c:	b338      	cbz	r0, 8005e8e <__sfvwrite_r+0x2be>
 8005e3e:	3001      	adds	r0, #1
 8005e40:	eba0 0906 	sub.w	r9, r0, r6
 8005e44:	e783      	b.n	8005d4e <__sfvwrite_r+0x17e>
 8005e46:	462f      	mov	r7, r5
 8005e48:	46ab      	mov	fp, r5
 8005e4a:	e757      	b.n	8005cfc <__sfvwrite_r+0x12c>
 8005e4c:	4631      	mov	r1, r6
 8005e4e:	462a      	mov	r2, r5
 8005e50:	f000 fb98 	bl	8006584 <memmove>
 8005e54:	6823      	ldr	r3, [r4, #0]
 8005e56:	442b      	add	r3, r5
 8005e58:	6023      	str	r3, [r4, #0]
 8005e5a:	4621      	mov	r1, r4
 8005e5c:	4650      	mov	r0, sl
 8005e5e:	f7ff fcc5 	bl	80057ec <_fflush_r>
 8005e62:	2800      	cmp	r0, #0
 8005e64:	d08b      	beq.n	8005d7e <__sfvwrite_r+0x1ae>
 8005e66:	e7a3      	b.n	8005db0 <__sfvwrite_r+0x1e0>
 8005e68:	4650      	mov	r0, sl
 8005e6a:	f000 ff05 	bl	8006c78 <_realloc_r>
 8005e6e:	4603      	mov	r3, r0
 8005e70:	2800      	cmp	r0, #0
 8005e72:	f47f af39 	bne.w	8005ce8 <__sfvwrite_r+0x118>
 8005e76:	6921      	ldr	r1, [r4, #16]
 8005e78:	4650      	mov	r0, sl
 8005e7a:	f7ff fdb5 	bl	80059e8 <_free_r>
 8005e7e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005e82:	220c      	movs	r2, #12
 8005e84:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005e88:	f8ca 2000 	str.w	r2, [sl]
 8005e8c:	e792      	b.n	8005db4 <__sfvwrite_r+0x1e4>
 8005e8e:	f107 0901 	add.w	r9, r7, #1
 8005e92:	e75c      	b.n	8005d4e <__sfvwrite_r+0x17e>
 8005e94:	461a      	mov	r2, r3
 8005e96:	4631      	mov	r1, r6
 8005e98:	9301      	str	r3, [sp, #4]
 8005e9a:	f000 fb73 	bl	8006584 <memmove>
 8005e9e:	9b01      	ldr	r3, [sp, #4]
 8005ea0:	68a1      	ldr	r1, [r4, #8]
 8005ea2:	6822      	ldr	r2, [r4, #0]
 8005ea4:	1ac9      	subs	r1, r1, r3
 8005ea6:	441a      	add	r2, r3
 8005ea8:	60a1      	str	r1, [r4, #8]
 8005eaa:	6022      	str	r2, [r4, #0]
 8005eac:	461d      	mov	r5, r3
 8005eae:	e766      	b.n	8005d7e <__sfvwrite_r+0x1ae>
 8005eb0:	230c      	movs	r3, #12
 8005eb2:	f8ca 3000 	str.w	r3, [sl]
 8005eb6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005eba:	e77b      	b.n	8005db4 <__sfvwrite_r+0x1e4>
 8005ebc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005ec0:	e76b      	b.n	8005d9a <__sfvwrite_r+0x1ca>
 8005ec2:	bf00      	nop
 8005ec4:	7ffffffe 	.word	0x7ffffffe
 8005ec8:	7ffffc00 	.word	0x7ffffc00

08005ecc <_fwalk_reent>:
 8005ecc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005ed0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005ed4:	d01f      	beq.n	8005f16 <_fwalk_reent+0x4a>
 8005ed6:	4688      	mov	r8, r1
 8005ed8:	4606      	mov	r6, r0
 8005eda:	f04f 0900 	mov.w	r9, #0
 8005ede:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005ee2:	3d01      	subs	r5, #1
 8005ee4:	d411      	bmi.n	8005f0a <_fwalk_reent+0x3e>
 8005ee6:	89a3      	ldrh	r3, [r4, #12]
 8005ee8:	2b01      	cmp	r3, #1
 8005eea:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005eee:	4621      	mov	r1, r4
 8005ef0:	4630      	mov	r0, r6
 8005ef2:	d906      	bls.n	8005f02 <_fwalk_reent+0x36>
 8005ef4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005ef8:	3301      	adds	r3, #1
 8005efa:	d002      	beq.n	8005f02 <_fwalk_reent+0x36>
 8005efc:	47c0      	blx	r8
 8005efe:	ea49 0900 	orr.w	r9, r9, r0
 8005f02:	1c6b      	adds	r3, r5, #1
 8005f04:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005f08:	d1ed      	bne.n	8005ee6 <_fwalk_reent+0x1a>
 8005f0a:	683f      	ldr	r7, [r7, #0]
 8005f0c:	2f00      	cmp	r7, #0
 8005f0e:	d1e6      	bne.n	8005ede <_fwalk_reent+0x12>
 8005f10:	4648      	mov	r0, r9
 8005f12:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005f16:	46b9      	mov	r9, r7
 8005f18:	4648      	mov	r0, r9
 8005f1a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005f1e:	bf00      	nop

08005f20 <_localeconv_r>:
 8005f20:	4a04      	ldr	r2, [pc, #16]	; (8005f34 <_localeconv_r+0x14>)
 8005f22:	4b05      	ldr	r3, [pc, #20]	; (8005f38 <_localeconv_r+0x18>)
 8005f24:	6812      	ldr	r2, [r2, #0]
 8005f26:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005f28:	2800      	cmp	r0, #0
 8005f2a:	bf08      	it	eq
 8005f2c:	4618      	moveq	r0, r3
 8005f2e:	30f0      	adds	r0, #240	; 0xf0
 8005f30:	4770      	bx	lr
 8005f32:	bf00      	nop
 8005f34:	20000018 	.word	0x20000018
 8005f38:	2000085c 	.word	0x2000085c

08005f3c <__retarget_lock_init_recursive>:
 8005f3c:	4770      	bx	lr
 8005f3e:	bf00      	nop

08005f40 <__retarget_lock_close_recursive>:
 8005f40:	4770      	bx	lr
 8005f42:	bf00      	nop

08005f44 <__retarget_lock_acquire_recursive>:
 8005f44:	4770      	bx	lr
 8005f46:	bf00      	nop

08005f48 <__retarget_lock_release_recursive>:
 8005f48:	4770      	bx	lr
 8005f4a:	bf00      	nop

08005f4c <__swhatbuf_r>:
 8005f4c:	b570      	push	{r4, r5, r6, lr}
 8005f4e:	460c      	mov	r4, r1
 8005f50:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005f54:	2900      	cmp	r1, #0
 8005f56:	b096      	sub	sp, #88	; 0x58
 8005f58:	4615      	mov	r5, r2
 8005f5a:	461e      	mov	r6, r3
 8005f5c:	da0f      	bge.n	8005f7e <__swhatbuf_r+0x32>
 8005f5e:	89a2      	ldrh	r2, [r4, #12]
 8005f60:	2300      	movs	r3, #0
 8005f62:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005f66:	6033      	str	r3, [r6, #0]
 8005f68:	d104      	bne.n	8005f74 <__swhatbuf_r+0x28>
 8005f6a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005f6e:	602b      	str	r3, [r5, #0]
 8005f70:	b016      	add	sp, #88	; 0x58
 8005f72:	bd70      	pop	{r4, r5, r6, pc}
 8005f74:	2240      	movs	r2, #64	; 0x40
 8005f76:	4618      	mov	r0, r3
 8005f78:	602a      	str	r2, [r5, #0]
 8005f7a:	b016      	add	sp, #88	; 0x58
 8005f7c:	bd70      	pop	{r4, r5, r6, pc}
 8005f7e:	466a      	mov	r2, sp
 8005f80:	f001 fad0 	bl	8007524 <_fstat_r>
 8005f84:	2800      	cmp	r0, #0
 8005f86:	dbea      	blt.n	8005f5e <__swhatbuf_r+0x12>
 8005f88:	9b01      	ldr	r3, [sp, #4]
 8005f8a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005f8e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005f92:	fab3 f383 	clz	r3, r3
 8005f96:	095b      	lsrs	r3, r3, #5
 8005f98:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005f9c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005fa0:	6033      	str	r3, [r6, #0]
 8005fa2:	602a      	str	r2, [r5, #0]
 8005fa4:	b016      	add	sp, #88	; 0x58
 8005fa6:	bd70      	pop	{r4, r5, r6, pc}

08005fa8 <__smakebuf_r>:
 8005fa8:	898a      	ldrh	r2, [r1, #12]
 8005faa:	0792      	lsls	r2, r2, #30
 8005fac:	460b      	mov	r3, r1
 8005fae:	d506      	bpl.n	8005fbe <__smakebuf_r+0x16>
 8005fb0:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005fb4:	2101      	movs	r1, #1
 8005fb6:	601a      	str	r2, [r3, #0]
 8005fb8:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005fbc:	4770      	bx	lr
 8005fbe:	b570      	push	{r4, r5, r6, lr}
 8005fc0:	b082      	sub	sp, #8
 8005fc2:	ab01      	add	r3, sp, #4
 8005fc4:	466a      	mov	r2, sp
 8005fc6:	460c      	mov	r4, r1
 8005fc8:	4605      	mov	r5, r0
 8005fca:	f7ff ffbf 	bl	8005f4c <__swhatbuf_r>
 8005fce:	9900      	ldr	r1, [sp, #0]
 8005fd0:	4606      	mov	r6, r0
 8005fd2:	4628      	mov	r0, r5
 8005fd4:	f000 f832 	bl	800603c <_malloc_r>
 8005fd8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005fdc:	b1d8      	cbz	r0, 8006016 <__smakebuf_r+0x6e>
 8005fde:	4916      	ldr	r1, [pc, #88]	; (8006038 <__smakebuf_r+0x90>)
 8005fe0:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005fe2:	9a01      	ldr	r2, [sp, #4]
 8005fe4:	9900      	ldr	r1, [sp, #0]
 8005fe6:	6020      	str	r0, [r4, #0]
 8005fe8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005fec:	81a3      	strh	r3, [r4, #12]
 8005fee:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005ff2:	b91a      	cbnz	r2, 8005ffc <__smakebuf_r+0x54>
 8005ff4:	4333      	orrs	r3, r6
 8005ff6:	81a3      	strh	r3, [r4, #12]
 8005ff8:	b002      	add	sp, #8
 8005ffa:	bd70      	pop	{r4, r5, r6, pc}
 8005ffc:	4628      	mov	r0, r5
 8005ffe:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006002:	f001 faa3 	bl	800754c <_isatty_r>
 8006006:	b1a0      	cbz	r0, 8006032 <__smakebuf_r+0x8a>
 8006008:	89a3      	ldrh	r3, [r4, #12]
 800600a:	f023 0303 	bic.w	r3, r3, #3
 800600e:	f043 0301 	orr.w	r3, r3, #1
 8006012:	b21b      	sxth	r3, r3
 8006014:	e7ee      	b.n	8005ff4 <__smakebuf_r+0x4c>
 8006016:	059a      	lsls	r2, r3, #22
 8006018:	d4ee      	bmi.n	8005ff8 <__smakebuf_r+0x50>
 800601a:	f023 0303 	bic.w	r3, r3, #3
 800601e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8006022:	f043 0302 	orr.w	r3, r3, #2
 8006026:	2101      	movs	r1, #1
 8006028:	81a3      	strh	r3, [r4, #12]
 800602a:	6022      	str	r2, [r4, #0]
 800602c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8006030:	e7e2      	b.n	8005ff8 <__smakebuf_r+0x50>
 8006032:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006036:	e7dd      	b.n	8005ff4 <__smakebuf_r+0x4c>
 8006038:	08005899 	.word	0x08005899

0800603c <_malloc_r>:
 800603c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006040:	f101 050b 	add.w	r5, r1, #11
 8006044:	2d16      	cmp	r5, #22
 8006046:	b083      	sub	sp, #12
 8006048:	4606      	mov	r6, r0
 800604a:	d823      	bhi.n	8006094 <_malloc_r+0x58>
 800604c:	2910      	cmp	r1, #16
 800604e:	f200 80b9 	bhi.w	80061c4 <_malloc_r+0x188>
 8006052:	f000 fafb 	bl	800664c <__malloc_lock>
 8006056:	2510      	movs	r5, #16
 8006058:	2318      	movs	r3, #24
 800605a:	2002      	movs	r0, #2
 800605c:	4fc5      	ldr	r7, [pc, #788]	; (8006374 <_malloc_r+0x338>)
 800605e:	443b      	add	r3, r7
 8006060:	f1a3 0208 	sub.w	r2, r3, #8
 8006064:	685c      	ldr	r4, [r3, #4]
 8006066:	4294      	cmp	r4, r2
 8006068:	f000 8166 	beq.w	8006338 <_malloc_r+0x2fc>
 800606c:	6863      	ldr	r3, [r4, #4]
 800606e:	f023 0303 	bic.w	r3, r3, #3
 8006072:	4423      	add	r3, r4
 8006074:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8006078:	685a      	ldr	r2, [r3, #4]
 800607a:	60e9      	str	r1, [r5, #12]
 800607c:	f042 0201 	orr.w	r2, r2, #1
 8006080:	608d      	str	r5, [r1, #8]
 8006082:	4630      	mov	r0, r6
 8006084:	605a      	str	r2, [r3, #4]
 8006086:	f000 fae7 	bl	8006658 <__malloc_unlock>
 800608a:	3408      	adds	r4, #8
 800608c:	4620      	mov	r0, r4
 800608e:	b003      	add	sp, #12
 8006090:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006094:	f035 0507 	bics.w	r5, r5, #7
 8006098:	f100 8094 	bmi.w	80061c4 <_malloc_r+0x188>
 800609c:	42a9      	cmp	r1, r5
 800609e:	f200 8091 	bhi.w	80061c4 <_malloc_r+0x188>
 80060a2:	f000 fad3 	bl	800664c <__malloc_lock>
 80060a6:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80060aa:	f0c0 8183 	bcc.w	80063b4 <_malloc_r+0x378>
 80060ae:	0a6b      	lsrs	r3, r5, #9
 80060b0:	f000 808f 	beq.w	80061d2 <_malloc_r+0x196>
 80060b4:	2b04      	cmp	r3, #4
 80060b6:	f200 8146 	bhi.w	8006346 <_malloc_r+0x30a>
 80060ba:	09ab      	lsrs	r3, r5, #6
 80060bc:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80060c0:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80060c4:	00c3      	lsls	r3, r0, #3
 80060c6:	4fab      	ldr	r7, [pc, #684]	; (8006374 <_malloc_r+0x338>)
 80060c8:	443b      	add	r3, r7
 80060ca:	f1a3 0108 	sub.w	r1, r3, #8
 80060ce:	685c      	ldr	r4, [r3, #4]
 80060d0:	42a1      	cmp	r1, r4
 80060d2:	d106      	bne.n	80060e2 <_malloc_r+0xa6>
 80060d4:	e00c      	b.n	80060f0 <_malloc_r+0xb4>
 80060d6:	2a00      	cmp	r2, #0
 80060d8:	f280 811d 	bge.w	8006316 <_malloc_r+0x2da>
 80060dc:	68e4      	ldr	r4, [r4, #12]
 80060de:	42a1      	cmp	r1, r4
 80060e0:	d006      	beq.n	80060f0 <_malloc_r+0xb4>
 80060e2:	6863      	ldr	r3, [r4, #4]
 80060e4:	f023 0303 	bic.w	r3, r3, #3
 80060e8:	1b5a      	subs	r2, r3, r5
 80060ea:	2a0f      	cmp	r2, #15
 80060ec:	ddf3      	ble.n	80060d6 <_malloc_r+0x9a>
 80060ee:	4660      	mov	r0, ip
 80060f0:	693c      	ldr	r4, [r7, #16]
 80060f2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8006388 <_malloc_r+0x34c>
 80060f6:	4564      	cmp	r4, ip
 80060f8:	d071      	beq.n	80061de <_malloc_r+0x1a2>
 80060fa:	6863      	ldr	r3, [r4, #4]
 80060fc:	f023 0303 	bic.w	r3, r3, #3
 8006100:	1b5a      	subs	r2, r3, r5
 8006102:	2a0f      	cmp	r2, #15
 8006104:	f300 8144 	bgt.w	8006390 <_malloc_r+0x354>
 8006108:	2a00      	cmp	r2, #0
 800610a:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 800610e:	f280 8126 	bge.w	800635e <_malloc_r+0x322>
 8006112:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8006116:	f080 8169 	bcs.w	80063ec <_malloc_r+0x3b0>
 800611a:	08db      	lsrs	r3, r3, #3
 800611c:	1c59      	adds	r1, r3, #1
 800611e:	687a      	ldr	r2, [r7, #4]
 8006120:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8006124:	f8c4 8008 	str.w	r8, [r4, #8]
 8006128:	f04f 0e01 	mov.w	lr, #1
 800612c:	109b      	asrs	r3, r3, #2
 800612e:	fa0e f303 	lsl.w	r3, lr, r3
 8006132:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8006136:	4313      	orrs	r3, r2
 8006138:	f1ae 0208 	sub.w	r2, lr, #8
 800613c:	60e2      	str	r2, [r4, #12]
 800613e:	607b      	str	r3, [r7, #4]
 8006140:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8006144:	f8c8 400c 	str.w	r4, [r8, #12]
 8006148:	1082      	asrs	r2, r0, #2
 800614a:	2401      	movs	r4, #1
 800614c:	4094      	lsls	r4, r2
 800614e:	429c      	cmp	r4, r3
 8006150:	d84b      	bhi.n	80061ea <_malloc_r+0x1ae>
 8006152:	421c      	tst	r4, r3
 8006154:	d106      	bne.n	8006164 <_malloc_r+0x128>
 8006156:	f020 0003 	bic.w	r0, r0, #3
 800615a:	0064      	lsls	r4, r4, #1
 800615c:	421c      	tst	r4, r3
 800615e:	f100 0004 	add.w	r0, r0, #4
 8006162:	d0fa      	beq.n	800615a <_malloc_r+0x11e>
 8006164:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8006168:	46ce      	mov	lr, r9
 800616a:	4680      	mov	r8, r0
 800616c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8006170:	459e      	cmp	lr, r3
 8006172:	d107      	bne.n	8006184 <_malloc_r+0x148>
 8006174:	e122      	b.n	80063bc <_malloc_r+0x380>
 8006176:	2a00      	cmp	r2, #0
 8006178:	f280 8129 	bge.w	80063ce <_malloc_r+0x392>
 800617c:	68db      	ldr	r3, [r3, #12]
 800617e:	459e      	cmp	lr, r3
 8006180:	f000 811c 	beq.w	80063bc <_malloc_r+0x380>
 8006184:	6859      	ldr	r1, [r3, #4]
 8006186:	f021 0103 	bic.w	r1, r1, #3
 800618a:	1b4a      	subs	r2, r1, r5
 800618c:	2a0f      	cmp	r2, #15
 800618e:	ddf2      	ble.n	8006176 <_malloc_r+0x13a>
 8006190:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8006194:	195c      	adds	r4, r3, r5
 8006196:	f045 0501 	orr.w	r5, r5, #1
 800619a:	605d      	str	r5, [r3, #4]
 800619c:	f042 0501 	orr.w	r5, r2, #1
 80061a0:	f8c8 e00c 	str.w	lr, [r8, #12]
 80061a4:	4630      	mov	r0, r6
 80061a6:	f8ce 8008 	str.w	r8, [lr, #8]
 80061aa:	e9c7 4404 	strd	r4, r4, [r7, #16]
 80061ae:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80061b2:	6065      	str	r5, [r4, #4]
 80061b4:	505a      	str	r2, [r3, r1]
 80061b6:	9301      	str	r3, [sp, #4]
 80061b8:	f000 fa4e 	bl	8006658 <__malloc_unlock>
 80061bc:	9b01      	ldr	r3, [sp, #4]
 80061be:	f103 0408 	add.w	r4, r3, #8
 80061c2:	e763      	b.n	800608c <_malloc_r+0x50>
 80061c4:	2400      	movs	r4, #0
 80061c6:	230c      	movs	r3, #12
 80061c8:	4620      	mov	r0, r4
 80061ca:	6033      	str	r3, [r6, #0]
 80061cc:	b003      	add	sp, #12
 80061ce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80061d2:	f44f 7300 	mov.w	r3, #512	; 0x200
 80061d6:	2040      	movs	r0, #64	; 0x40
 80061d8:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 80061dc:	e773      	b.n	80060c6 <_malloc_r+0x8a>
 80061de:	687b      	ldr	r3, [r7, #4]
 80061e0:	1082      	asrs	r2, r0, #2
 80061e2:	2401      	movs	r4, #1
 80061e4:	4094      	lsls	r4, r2
 80061e6:	429c      	cmp	r4, r3
 80061e8:	d9b3      	bls.n	8006152 <_malloc_r+0x116>
 80061ea:	68bc      	ldr	r4, [r7, #8]
 80061ec:	6863      	ldr	r3, [r4, #4]
 80061ee:	f023 0903 	bic.w	r9, r3, #3
 80061f2:	45a9      	cmp	r9, r5
 80061f4:	d303      	bcc.n	80061fe <_malloc_r+0x1c2>
 80061f6:	eba9 0305 	sub.w	r3, r9, r5
 80061fa:	2b0f      	cmp	r3, #15
 80061fc:	dc7b      	bgt.n	80062f6 <_malloc_r+0x2ba>
 80061fe:	4b5e      	ldr	r3, [pc, #376]	; (8006378 <_malloc_r+0x33c>)
 8006200:	f8df a188 	ldr.w	sl, [pc, #392]	; 800638c <_malloc_r+0x350>
 8006204:	681a      	ldr	r2, [r3, #0]
 8006206:	f8da 3000 	ldr.w	r3, [sl]
 800620a:	3301      	adds	r3, #1
 800620c:	eb05 0802 	add.w	r8, r5, r2
 8006210:	f000 8148 	beq.w	80064a4 <_malloc_r+0x468>
 8006214:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8006218:	f108 080f 	add.w	r8, r8, #15
 800621c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8006220:	f028 080f 	bic.w	r8, r8, #15
 8006224:	4641      	mov	r1, r8
 8006226:	4630      	mov	r0, r6
 8006228:	f000 ff08 	bl	800703c <_sbrk_r>
 800622c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8006230:	4683      	mov	fp, r0
 8006232:	f000 8104 	beq.w	800643e <_malloc_r+0x402>
 8006236:	eb04 0009 	add.w	r0, r4, r9
 800623a:	4558      	cmp	r0, fp
 800623c:	f200 80fd 	bhi.w	800643a <_malloc_r+0x3fe>
 8006240:	4a4e      	ldr	r2, [pc, #312]	; (800637c <_malloc_r+0x340>)
 8006242:	6813      	ldr	r3, [r2, #0]
 8006244:	4443      	add	r3, r8
 8006246:	6013      	str	r3, [r2, #0]
 8006248:	f000 814d 	beq.w	80064e6 <_malloc_r+0x4aa>
 800624c:	f8da 1000 	ldr.w	r1, [sl]
 8006250:	3101      	adds	r1, #1
 8006252:	bf1b      	ittet	ne
 8006254:	ebab 0000 	subne.w	r0, fp, r0
 8006258:	181b      	addne	r3, r3, r0
 800625a:	f8ca b000 	streq.w	fp, [sl]
 800625e:	6013      	strne	r3, [r2, #0]
 8006260:	f01b 0307 	ands.w	r3, fp, #7
 8006264:	f000 8134 	beq.w	80064d0 <_malloc_r+0x494>
 8006268:	f1c3 0108 	rsb	r1, r3, #8
 800626c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8006270:	448b      	add	fp, r1
 8006272:	3308      	adds	r3, #8
 8006274:	44d8      	add	r8, fp
 8006276:	f3c8 080b 	ubfx	r8, r8, #0, #12
 800627a:	eba3 0808 	sub.w	r8, r3, r8
 800627e:	4641      	mov	r1, r8
 8006280:	4630      	mov	r0, r6
 8006282:	9201      	str	r2, [sp, #4]
 8006284:	f000 feda 	bl	800703c <_sbrk_r>
 8006288:	1c43      	adds	r3, r0, #1
 800628a:	9a01      	ldr	r2, [sp, #4]
 800628c:	f000 8146 	beq.w	800651c <_malloc_r+0x4e0>
 8006290:	eba0 010b 	sub.w	r1, r0, fp
 8006294:	4441      	add	r1, r8
 8006296:	f041 0101 	orr.w	r1, r1, #1
 800629a:	6813      	ldr	r3, [r2, #0]
 800629c:	f8c7 b008 	str.w	fp, [r7, #8]
 80062a0:	4443      	add	r3, r8
 80062a2:	42bc      	cmp	r4, r7
 80062a4:	f8cb 1004 	str.w	r1, [fp, #4]
 80062a8:	6013      	str	r3, [r2, #0]
 80062aa:	d015      	beq.n	80062d8 <_malloc_r+0x29c>
 80062ac:	f1b9 0f0f 	cmp.w	r9, #15
 80062b0:	f240 8130 	bls.w	8006514 <_malloc_r+0x4d8>
 80062b4:	6860      	ldr	r0, [r4, #4]
 80062b6:	f1a9 010c 	sub.w	r1, r9, #12
 80062ba:	f021 0107 	bic.w	r1, r1, #7
 80062be:	f000 0001 	and.w	r0, r0, #1
 80062c2:	eb04 0c01 	add.w	ip, r4, r1
 80062c6:	4308      	orrs	r0, r1
 80062c8:	f04f 0e05 	mov.w	lr, #5
 80062cc:	290f      	cmp	r1, #15
 80062ce:	6060      	str	r0, [r4, #4]
 80062d0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 80062d4:	f200 813a 	bhi.w	800654c <_malloc_r+0x510>
 80062d8:	4a29      	ldr	r2, [pc, #164]	; (8006380 <_malloc_r+0x344>)
 80062da:	482a      	ldr	r0, [pc, #168]	; (8006384 <_malloc_r+0x348>)
 80062dc:	6811      	ldr	r1, [r2, #0]
 80062de:	68bc      	ldr	r4, [r7, #8]
 80062e0:	428b      	cmp	r3, r1
 80062e2:	6801      	ldr	r1, [r0, #0]
 80062e4:	bf88      	it	hi
 80062e6:	6013      	strhi	r3, [r2, #0]
 80062e8:	6862      	ldr	r2, [r4, #4]
 80062ea:	428b      	cmp	r3, r1
 80062ec:	f022 0203 	bic.w	r2, r2, #3
 80062f0:	bf88      	it	hi
 80062f2:	6003      	strhi	r3, [r0, #0]
 80062f4:	e0a7      	b.n	8006446 <_malloc_r+0x40a>
 80062f6:	1962      	adds	r2, r4, r5
 80062f8:	f043 0301 	orr.w	r3, r3, #1
 80062fc:	f045 0501 	orr.w	r5, r5, #1
 8006300:	6065      	str	r5, [r4, #4]
 8006302:	4630      	mov	r0, r6
 8006304:	60ba      	str	r2, [r7, #8]
 8006306:	6053      	str	r3, [r2, #4]
 8006308:	f000 f9a6 	bl	8006658 <__malloc_unlock>
 800630c:	3408      	adds	r4, #8
 800630e:	4620      	mov	r0, r4
 8006310:	b003      	add	sp, #12
 8006312:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006316:	4423      	add	r3, r4
 8006318:	68e1      	ldr	r1, [r4, #12]
 800631a:	685a      	ldr	r2, [r3, #4]
 800631c:	68a5      	ldr	r5, [r4, #8]
 800631e:	f042 0201 	orr.w	r2, r2, #1
 8006322:	60e9      	str	r1, [r5, #12]
 8006324:	4630      	mov	r0, r6
 8006326:	608d      	str	r5, [r1, #8]
 8006328:	605a      	str	r2, [r3, #4]
 800632a:	f000 f995 	bl	8006658 <__malloc_unlock>
 800632e:	3408      	adds	r4, #8
 8006330:	4620      	mov	r0, r4
 8006332:	b003      	add	sp, #12
 8006334:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006338:	68dc      	ldr	r4, [r3, #12]
 800633a:	42a3      	cmp	r3, r4
 800633c:	bf08      	it	eq
 800633e:	3002      	addeq	r0, #2
 8006340:	f43f aed6 	beq.w	80060f0 <_malloc_r+0xb4>
 8006344:	e692      	b.n	800606c <_malloc_r+0x30>
 8006346:	2b14      	cmp	r3, #20
 8006348:	d971      	bls.n	800642e <_malloc_r+0x3f2>
 800634a:	2b54      	cmp	r3, #84	; 0x54
 800634c:	f200 80ad 	bhi.w	80064aa <_malloc_r+0x46e>
 8006350:	0b2b      	lsrs	r3, r5, #12
 8006352:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8006356:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 800635a:	00c3      	lsls	r3, r0, #3
 800635c:	e6b3      	b.n	80060c6 <_malloc_r+0x8a>
 800635e:	4423      	add	r3, r4
 8006360:	4630      	mov	r0, r6
 8006362:	685a      	ldr	r2, [r3, #4]
 8006364:	f042 0201 	orr.w	r2, r2, #1
 8006368:	605a      	str	r2, [r3, #4]
 800636a:	3408      	adds	r4, #8
 800636c:	f000 f974 	bl	8006658 <__malloc_unlock>
 8006370:	e68c      	b.n	800608c <_malloc_r+0x50>
 8006372:	bf00      	nop
 8006374:	2000044c 	.word	0x2000044c
 8006378:	20000ab4 	.word	0x20000ab4
 800637c:	20000a84 	.word	0x20000a84
 8006380:	20000aac 	.word	0x20000aac
 8006384:	20000ab0 	.word	0x20000ab0
 8006388:	20000454 	.word	0x20000454
 800638c:	20000854 	.word	0x20000854
 8006390:	1961      	adds	r1, r4, r5
 8006392:	f045 0e01 	orr.w	lr, r5, #1
 8006396:	f042 0501 	orr.w	r5, r2, #1
 800639a:	f8c4 e004 	str.w	lr, [r4, #4]
 800639e:	4630      	mov	r0, r6
 80063a0:	e9c7 1104 	strd	r1, r1, [r7, #16]
 80063a4:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 80063a8:	604d      	str	r5, [r1, #4]
 80063aa:	50e2      	str	r2, [r4, r3]
 80063ac:	f000 f954 	bl	8006658 <__malloc_unlock>
 80063b0:	3408      	adds	r4, #8
 80063b2:	e66b      	b.n	800608c <_malloc_r+0x50>
 80063b4:	08e8      	lsrs	r0, r5, #3
 80063b6:	f105 0308 	add.w	r3, r5, #8
 80063ba:	e64f      	b.n	800605c <_malloc_r+0x20>
 80063bc:	f108 0801 	add.w	r8, r8, #1
 80063c0:	f018 0f03 	tst.w	r8, #3
 80063c4:	f10e 0e08 	add.w	lr, lr, #8
 80063c8:	f47f aed0 	bne.w	800616c <_malloc_r+0x130>
 80063cc:	e052      	b.n	8006474 <_malloc_r+0x438>
 80063ce:	4419      	add	r1, r3
 80063d0:	461c      	mov	r4, r3
 80063d2:	684a      	ldr	r2, [r1, #4]
 80063d4:	68db      	ldr	r3, [r3, #12]
 80063d6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 80063da:	f042 0201 	orr.w	r2, r2, #1
 80063de:	604a      	str	r2, [r1, #4]
 80063e0:	4630      	mov	r0, r6
 80063e2:	60eb      	str	r3, [r5, #12]
 80063e4:	609d      	str	r5, [r3, #8]
 80063e6:	f000 f937 	bl	8006658 <__malloc_unlock>
 80063ea:	e64f      	b.n	800608c <_malloc_r+0x50>
 80063ec:	0a5a      	lsrs	r2, r3, #9
 80063ee:	2a04      	cmp	r2, #4
 80063f0:	d935      	bls.n	800645e <_malloc_r+0x422>
 80063f2:	2a14      	cmp	r2, #20
 80063f4:	d86f      	bhi.n	80064d6 <_malloc_r+0x49a>
 80063f6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 80063fa:	00c9      	lsls	r1, r1, #3
 80063fc:	325b      	adds	r2, #91	; 0x5b
 80063fe:	eb07 0e01 	add.w	lr, r7, r1
 8006402:	5879      	ldr	r1, [r7, r1]
 8006404:	f1ae 0e08 	sub.w	lr, lr, #8
 8006408:	458e      	cmp	lr, r1
 800640a:	d058      	beq.n	80064be <_malloc_r+0x482>
 800640c:	684a      	ldr	r2, [r1, #4]
 800640e:	f022 0203 	bic.w	r2, r2, #3
 8006412:	429a      	cmp	r2, r3
 8006414:	d902      	bls.n	800641c <_malloc_r+0x3e0>
 8006416:	6889      	ldr	r1, [r1, #8]
 8006418:	458e      	cmp	lr, r1
 800641a:	d1f7      	bne.n	800640c <_malloc_r+0x3d0>
 800641c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8006420:	687b      	ldr	r3, [r7, #4]
 8006422:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8006426:	f8ce 4008 	str.w	r4, [lr, #8]
 800642a:	60cc      	str	r4, [r1, #12]
 800642c:	e68c      	b.n	8006148 <_malloc_r+0x10c>
 800642e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8006432:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8006436:	00c3      	lsls	r3, r0, #3
 8006438:	e645      	b.n	80060c6 <_malloc_r+0x8a>
 800643a:	42bc      	cmp	r4, r7
 800643c:	d072      	beq.n	8006524 <_malloc_r+0x4e8>
 800643e:	68bc      	ldr	r4, [r7, #8]
 8006440:	6862      	ldr	r2, [r4, #4]
 8006442:	f022 0203 	bic.w	r2, r2, #3
 8006446:	4295      	cmp	r5, r2
 8006448:	eba2 0305 	sub.w	r3, r2, r5
 800644c:	d802      	bhi.n	8006454 <_malloc_r+0x418>
 800644e:	2b0f      	cmp	r3, #15
 8006450:	f73f af51 	bgt.w	80062f6 <_malloc_r+0x2ba>
 8006454:	4630      	mov	r0, r6
 8006456:	f000 f8ff 	bl	8006658 <__malloc_unlock>
 800645a:	2400      	movs	r4, #0
 800645c:	e616      	b.n	800608c <_malloc_r+0x50>
 800645e:	099a      	lsrs	r2, r3, #6
 8006460:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8006464:	00c9      	lsls	r1, r1, #3
 8006466:	3238      	adds	r2, #56	; 0x38
 8006468:	e7c9      	b.n	80063fe <_malloc_r+0x3c2>
 800646a:	f8d9 9000 	ldr.w	r9, [r9]
 800646e:	4599      	cmp	r9, r3
 8006470:	f040 8083 	bne.w	800657a <_malloc_r+0x53e>
 8006474:	f010 0f03 	tst.w	r0, #3
 8006478:	f1a9 0308 	sub.w	r3, r9, #8
 800647c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8006480:	d1f3      	bne.n	800646a <_malloc_r+0x42e>
 8006482:	687b      	ldr	r3, [r7, #4]
 8006484:	ea23 0304 	bic.w	r3, r3, r4
 8006488:	607b      	str	r3, [r7, #4]
 800648a:	0064      	lsls	r4, r4, #1
 800648c:	429c      	cmp	r4, r3
 800648e:	f63f aeac 	bhi.w	80061ea <_malloc_r+0x1ae>
 8006492:	b91c      	cbnz	r4, 800649c <_malloc_r+0x460>
 8006494:	e6a9      	b.n	80061ea <_malloc_r+0x1ae>
 8006496:	0064      	lsls	r4, r4, #1
 8006498:	f108 0804 	add.w	r8, r8, #4
 800649c:	421c      	tst	r4, r3
 800649e:	d0fa      	beq.n	8006496 <_malloc_r+0x45a>
 80064a0:	4640      	mov	r0, r8
 80064a2:	e65f      	b.n	8006164 <_malloc_r+0x128>
 80064a4:	f108 0810 	add.w	r8, r8, #16
 80064a8:	e6bc      	b.n	8006224 <_malloc_r+0x1e8>
 80064aa:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80064ae:	d826      	bhi.n	80064fe <_malloc_r+0x4c2>
 80064b0:	0beb      	lsrs	r3, r5, #15
 80064b2:	f103 0078 	add.w	r0, r3, #120	; 0x78
 80064b6:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 80064ba:	00c3      	lsls	r3, r0, #3
 80064bc:	e603      	b.n	80060c6 <_malloc_r+0x8a>
 80064be:	687b      	ldr	r3, [r7, #4]
 80064c0:	1092      	asrs	r2, r2, #2
 80064c2:	f04f 0801 	mov.w	r8, #1
 80064c6:	fa08 f202 	lsl.w	r2, r8, r2
 80064ca:	4313      	orrs	r3, r2
 80064cc:	607b      	str	r3, [r7, #4]
 80064ce:	e7a8      	b.n	8006422 <_malloc_r+0x3e6>
 80064d0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80064d4:	e6ce      	b.n	8006274 <_malloc_r+0x238>
 80064d6:	2a54      	cmp	r2, #84	; 0x54
 80064d8:	d829      	bhi.n	800652e <_malloc_r+0x4f2>
 80064da:	0b1a      	lsrs	r2, r3, #12
 80064dc:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 80064e0:	00c9      	lsls	r1, r1, #3
 80064e2:	326e      	adds	r2, #110	; 0x6e
 80064e4:	e78b      	b.n	80063fe <_malloc_r+0x3c2>
 80064e6:	f3c0 010b 	ubfx	r1, r0, #0, #12
 80064ea:	2900      	cmp	r1, #0
 80064ec:	f47f aeae 	bne.w	800624c <_malloc_r+0x210>
 80064f0:	eb09 0208 	add.w	r2, r9, r8
 80064f4:	68b9      	ldr	r1, [r7, #8]
 80064f6:	f042 0201 	orr.w	r2, r2, #1
 80064fa:	604a      	str	r2, [r1, #4]
 80064fc:	e6ec      	b.n	80062d8 <_malloc_r+0x29c>
 80064fe:	f240 5254 	movw	r2, #1364	; 0x554
 8006502:	4293      	cmp	r3, r2
 8006504:	d81c      	bhi.n	8006540 <_malloc_r+0x504>
 8006506:	0cab      	lsrs	r3, r5, #18
 8006508:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 800650c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8006510:	00c3      	lsls	r3, r0, #3
 8006512:	e5d8      	b.n	80060c6 <_malloc_r+0x8a>
 8006514:	2301      	movs	r3, #1
 8006516:	f8cb 3004 	str.w	r3, [fp, #4]
 800651a:	e79b      	b.n	8006454 <_malloc_r+0x418>
 800651c:	2101      	movs	r1, #1
 800651e:	f04f 0800 	mov.w	r8, #0
 8006522:	e6ba      	b.n	800629a <_malloc_r+0x25e>
 8006524:	4a16      	ldr	r2, [pc, #88]	; (8006580 <_malloc_r+0x544>)
 8006526:	6813      	ldr	r3, [r2, #0]
 8006528:	4443      	add	r3, r8
 800652a:	6013      	str	r3, [r2, #0]
 800652c:	e68e      	b.n	800624c <_malloc_r+0x210>
 800652e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8006532:	d814      	bhi.n	800655e <_malloc_r+0x522>
 8006534:	0bda      	lsrs	r2, r3, #15
 8006536:	f102 0178 	add.w	r1, r2, #120	; 0x78
 800653a:	00c9      	lsls	r1, r1, #3
 800653c:	3277      	adds	r2, #119	; 0x77
 800653e:	e75e      	b.n	80063fe <_malloc_r+0x3c2>
 8006540:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8006544:	207f      	movs	r0, #127	; 0x7f
 8006546:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 800654a:	e5bc      	b.n	80060c6 <_malloc_r+0x8a>
 800654c:	f104 0108 	add.w	r1, r4, #8
 8006550:	4630      	mov	r0, r6
 8006552:	9201      	str	r2, [sp, #4]
 8006554:	f7ff fa48 	bl	80059e8 <_free_r>
 8006558:	9a01      	ldr	r2, [sp, #4]
 800655a:	6813      	ldr	r3, [r2, #0]
 800655c:	e6bc      	b.n	80062d8 <_malloc_r+0x29c>
 800655e:	f240 5154 	movw	r1, #1364	; 0x554
 8006562:	428a      	cmp	r2, r1
 8006564:	d805      	bhi.n	8006572 <_malloc_r+0x536>
 8006566:	0c9a      	lsrs	r2, r3, #18
 8006568:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 800656c:	00c9      	lsls	r1, r1, #3
 800656e:	327c      	adds	r2, #124	; 0x7c
 8006570:	e745      	b.n	80063fe <_malloc_r+0x3c2>
 8006572:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8006576:	227e      	movs	r2, #126	; 0x7e
 8006578:	e741      	b.n	80063fe <_malloc_r+0x3c2>
 800657a:	687b      	ldr	r3, [r7, #4]
 800657c:	e785      	b.n	800648a <_malloc_r+0x44e>
 800657e:	bf00      	nop
 8006580:	20000a84 	.word	0x20000a84

08006584 <memmove>:
 8006584:	4288      	cmp	r0, r1
 8006586:	b4f0      	push	{r4, r5, r6, r7}
 8006588:	d90d      	bls.n	80065a6 <memmove+0x22>
 800658a:	188b      	adds	r3, r1, r2
 800658c:	4283      	cmp	r3, r0
 800658e:	d90a      	bls.n	80065a6 <memmove+0x22>
 8006590:	1884      	adds	r4, r0, r2
 8006592:	b132      	cbz	r2, 80065a2 <memmove+0x1e>
 8006594:	4622      	mov	r2, r4
 8006596:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800659a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800659e:	4299      	cmp	r1, r3
 80065a0:	d1f9      	bne.n	8006596 <memmove+0x12>
 80065a2:	bcf0      	pop	{r4, r5, r6, r7}
 80065a4:	4770      	bx	lr
 80065a6:	2a0f      	cmp	r2, #15
 80065a8:	d949      	bls.n	800663e <memmove+0xba>
 80065aa:	ea40 0301 	orr.w	r3, r0, r1
 80065ae:	079b      	lsls	r3, r3, #30
 80065b0:	d147      	bne.n	8006642 <memmove+0xbe>
 80065b2:	f1a2 0310 	sub.w	r3, r2, #16
 80065b6:	091b      	lsrs	r3, r3, #4
 80065b8:	f101 0720 	add.w	r7, r1, #32
 80065bc:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 80065c0:	f101 0410 	add.w	r4, r1, #16
 80065c4:	f100 0510 	add.w	r5, r0, #16
 80065c8:	f854 6c10 	ldr.w	r6, [r4, #-16]
 80065cc:	f845 6c10 	str.w	r6, [r5, #-16]
 80065d0:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 80065d4:	f845 6c0c 	str.w	r6, [r5, #-12]
 80065d8:	f854 6c08 	ldr.w	r6, [r4, #-8]
 80065dc:	f845 6c08 	str.w	r6, [r5, #-8]
 80065e0:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80065e4:	f845 6c04 	str.w	r6, [r5, #-4]
 80065e8:	3410      	adds	r4, #16
 80065ea:	42bc      	cmp	r4, r7
 80065ec:	f105 0510 	add.w	r5, r5, #16
 80065f0:	d1ea      	bne.n	80065c8 <memmove+0x44>
 80065f2:	3301      	adds	r3, #1
 80065f4:	f002 050f 	and.w	r5, r2, #15
 80065f8:	011b      	lsls	r3, r3, #4
 80065fa:	2d03      	cmp	r5, #3
 80065fc:	4419      	add	r1, r3
 80065fe:	4403      	add	r3, r0
 8006600:	d921      	bls.n	8006646 <memmove+0xc2>
 8006602:	1f1f      	subs	r7, r3, #4
 8006604:	460e      	mov	r6, r1
 8006606:	462c      	mov	r4, r5
 8006608:	3c04      	subs	r4, #4
 800660a:	f856 cb04 	ldr.w	ip, [r6], #4
 800660e:	f847 cf04 	str.w	ip, [r7, #4]!
 8006612:	2c03      	cmp	r4, #3
 8006614:	d8f8      	bhi.n	8006608 <memmove+0x84>
 8006616:	1f2c      	subs	r4, r5, #4
 8006618:	f024 0403 	bic.w	r4, r4, #3
 800661c:	3404      	adds	r4, #4
 800661e:	4423      	add	r3, r4
 8006620:	4421      	add	r1, r4
 8006622:	f002 0203 	and.w	r2, r2, #3
 8006626:	2a00      	cmp	r2, #0
 8006628:	d0bb      	beq.n	80065a2 <memmove+0x1e>
 800662a:	3b01      	subs	r3, #1
 800662c:	440a      	add	r2, r1
 800662e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8006632:	f803 4f01 	strb.w	r4, [r3, #1]!
 8006636:	4291      	cmp	r1, r2
 8006638:	d1f9      	bne.n	800662e <memmove+0xaa>
 800663a:	bcf0      	pop	{r4, r5, r6, r7}
 800663c:	4770      	bx	lr
 800663e:	4603      	mov	r3, r0
 8006640:	e7f1      	b.n	8006626 <memmove+0xa2>
 8006642:	4603      	mov	r3, r0
 8006644:	e7f1      	b.n	800662a <memmove+0xa6>
 8006646:	462a      	mov	r2, r5
 8006648:	e7ed      	b.n	8006626 <memmove+0xa2>
 800664a:	bf00      	nop

0800664c <__malloc_lock>:
 800664c:	4801      	ldr	r0, [pc, #4]	; (8006654 <__malloc_lock+0x8>)
 800664e:	f7ff bc79 	b.w	8005f44 <__retarget_lock_acquire_recursive>
 8006652:	bf00      	nop
 8006654:	20000b10 	.word	0x20000b10

08006658 <__malloc_unlock>:
 8006658:	4801      	ldr	r0, [pc, #4]	; (8006660 <__malloc_unlock+0x8>)
 800665a:	f7ff bc75 	b.w	8005f48 <__retarget_lock_release_recursive>
 800665e:	bf00      	nop
 8006660:	20000b10 	.word	0x20000b10

08006664 <_Balloc>:
 8006664:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006666:	b570      	push	{r4, r5, r6, lr}
 8006668:	4605      	mov	r5, r0
 800666a:	460c      	mov	r4, r1
 800666c:	b14b      	cbz	r3, 8006682 <_Balloc+0x1e>
 800666e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8006672:	b180      	cbz	r0, 8006696 <_Balloc+0x32>
 8006674:	6802      	ldr	r2, [r0, #0]
 8006676:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800667a:	2300      	movs	r3, #0
 800667c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006680:	bd70      	pop	{r4, r5, r6, pc}
 8006682:	2221      	movs	r2, #33	; 0x21
 8006684:	2104      	movs	r1, #4
 8006686:	f000 fe1d 	bl	80072c4 <_calloc_r>
 800668a:	4603      	mov	r3, r0
 800668c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800668e:	2800      	cmp	r0, #0
 8006690:	d1ed      	bne.n	800666e <_Balloc+0xa>
 8006692:	2000      	movs	r0, #0
 8006694:	bd70      	pop	{r4, r5, r6, pc}
 8006696:	2101      	movs	r1, #1
 8006698:	fa01 f604 	lsl.w	r6, r1, r4
 800669c:	1d72      	adds	r2, r6, #5
 800669e:	4628      	mov	r0, r5
 80066a0:	0092      	lsls	r2, r2, #2
 80066a2:	f000 fe0f 	bl	80072c4 <_calloc_r>
 80066a6:	2800      	cmp	r0, #0
 80066a8:	d0f3      	beq.n	8006692 <_Balloc+0x2e>
 80066aa:	e9c0 4601 	strd	r4, r6, [r0, #4]
 80066ae:	e7e4      	b.n	800667a <_Balloc+0x16>

080066b0 <_Bfree>:
 80066b0:	b131      	cbz	r1, 80066c0 <_Bfree+0x10>
 80066b2:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80066b4:	684a      	ldr	r2, [r1, #4]
 80066b6:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 80066ba:	6008      	str	r0, [r1, #0]
 80066bc:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80066c0:	4770      	bx	lr
 80066c2:	bf00      	nop

080066c4 <__multadd>:
 80066c4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80066c6:	690c      	ldr	r4, [r1, #16]
 80066c8:	b083      	sub	sp, #12
 80066ca:	460d      	mov	r5, r1
 80066cc:	4606      	mov	r6, r0
 80066ce:	f101 0c14 	add.w	ip, r1, #20
 80066d2:	2700      	movs	r7, #0
 80066d4:	f8dc 0000 	ldr.w	r0, [ip]
 80066d8:	b281      	uxth	r1, r0
 80066da:	fb02 3301 	mla	r3, r2, r1, r3
 80066de:	0c01      	lsrs	r1, r0, #16
 80066e0:	0c18      	lsrs	r0, r3, #16
 80066e2:	fb02 0101 	mla	r1, r2, r1, r0
 80066e6:	b29b      	uxth	r3, r3
 80066e8:	3701      	adds	r7, #1
 80066ea:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80066ee:	42bc      	cmp	r4, r7
 80066f0:	f84c 3b04 	str.w	r3, [ip], #4
 80066f4:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80066f8:	dcec      	bgt.n	80066d4 <__multadd+0x10>
 80066fa:	b13b      	cbz	r3, 800670c <__multadd+0x48>
 80066fc:	68aa      	ldr	r2, [r5, #8]
 80066fe:	42a2      	cmp	r2, r4
 8006700:	dd07      	ble.n	8006712 <__multadd+0x4e>
 8006702:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8006706:	3401      	adds	r4, #1
 8006708:	6153      	str	r3, [r2, #20]
 800670a:	612c      	str	r4, [r5, #16]
 800670c:	4628      	mov	r0, r5
 800670e:	b003      	add	sp, #12
 8006710:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006712:	6869      	ldr	r1, [r5, #4]
 8006714:	9301      	str	r3, [sp, #4]
 8006716:	3101      	adds	r1, #1
 8006718:	4630      	mov	r0, r6
 800671a:	f7ff ffa3 	bl	8006664 <_Balloc>
 800671e:	692a      	ldr	r2, [r5, #16]
 8006720:	3202      	adds	r2, #2
 8006722:	f105 010c 	add.w	r1, r5, #12
 8006726:	4607      	mov	r7, r0
 8006728:	0092      	lsls	r2, r2, #2
 800672a:	300c      	adds	r0, #12
 800672c:	f7f9 fee8 	bl	8000500 <memcpy>
 8006730:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006732:	6869      	ldr	r1, [r5, #4]
 8006734:	9b01      	ldr	r3, [sp, #4]
 8006736:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800673a:	6028      	str	r0, [r5, #0]
 800673c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006740:	463d      	mov	r5, r7
 8006742:	e7de      	b.n	8006702 <__multadd+0x3e>

08006744 <__hi0bits>:
 8006744:	0c02      	lsrs	r2, r0, #16
 8006746:	0412      	lsls	r2, r2, #16
 8006748:	4603      	mov	r3, r0
 800674a:	b9c2      	cbnz	r2, 800677e <__hi0bits+0x3a>
 800674c:	0403      	lsls	r3, r0, #16
 800674e:	2010      	movs	r0, #16
 8006750:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006754:	bf04      	itt	eq
 8006756:	021b      	lsleq	r3, r3, #8
 8006758:	3008      	addeq	r0, #8
 800675a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800675e:	bf04      	itt	eq
 8006760:	011b      	lsleq	r3, r3, #4
 8006762:	3004      	addeq	r0, #4
 8006764:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006768:	bf04      	itt	eq
 800676a:	009b      	lsleq	r3, r3, #2
 800676c:	3002      	addeq	r0, #2
 800676e:	2b00      	cmp	r3, #0
 8006770:	db04      	blt.n	800677c <__hi0bits+0x38>
 8006772:	005b      	lsls	r3, r3, #1
 8006774:	d501      	bpl.n	800677a <__hi0bits+0x36>
 8006776:	3001      	adds	r0, #1
 8006778:	4770      	bx	lr
 800677a:	2020      	movs	r0, #32
 800677c:	4770      	bx	lr
 800677e:	2000      	movs	r0, #0
 8006780:	e7e6      	b.n	8006750 <__hi0bits+0xc>
 8006782:	bf00      	nop

08006784 <__lo0bits>:
 8006784:	6803      	ldr	r3, [r0, #0]
 8006786:	f013 0207 	ands.w	r2, r3, #7
 800678a:	4601      	mov	r1, r0
 800678c:	d007      	beq.n	800679e <__lo0bits+0x1a>
 800678e:	07da      	lsls	r2, r3, #31
 8006790:	d41f      	bmi.n	80067d2 <__lo0bits+0x4e>
 8006792:	0798      	lsls	r0, r3, #30
 8006794:	d51f      	bpl.n	80067d6 <__lo0bits+0x52>
 8006796:	085b      	lsrs	r3, r3, #1
 8006798:	600b      	str	r3, [r1, #0]
 800679a:	2001      	movs	r0, #1
 800679c:	4770      	bx	lr
 800679e:	b298      	uxth	r0, r3
 80067a0:	b1a0      	cbz	r0, 80067cc <__lo0bits+0x48>
 80067a2:	4610      	mov	r0, r2
 80067a4:	f013 0fff 	tst.w	r3, #255	; 0xff
 80067a8:	bf04      	itt	eq
 80067aa:	0a1b      	lsreq	r3, r3, #8
 80067ac:	3008      	addeq	r0, #8
 80067ae:	071a      	lsls	r2, r3, #28
 80067b0:	bf04      	itt	eq
 80067b2:	091b      	lsreq	r3, r3, #4
 80067b4:	3004      	addeq	r0, #4
 80067b6:	079a      	lsls	r2, r3, #30
 80067b8:	bf04      	itt	eq
 80067ba:	089b      	lsreq	r3, r3, #2
 80067bc:	3002      	addeq	r0, #2
 80067be:	07da      	lsls	r2, r3, #31
 80067c0:	d402      	bmi.n	80067c8 <__lo0bits+0x44>
 80067c2:	085b      	lsrs	r3, r3, #1
 80067c4:	d00b      	beq.n	80067de <__lo0bits+0x5a>
 80067c6:	3001      	adds	r0, #1
 80067c8:	600b      	str	r3, [r1, #0]
 80067ca:	4770      	bx	lr
 80067cc:	0c1b      	lsrs	r3, r3, #16
 80067ce:	2010      	movs	r0, #16
 80067d0:	e7e8      	b.n	80067a4 <__lo0bits+0x20>
 80067d2:	2000      	movs	r0, #0
 80067d4:	4770      	bx	lr
 80067d6:	089b      	lsrs	r3, r3, #2
 80067d8:	600b      	str	r3, [r1, #0]
 80067da:	2002      	movs	r0, #2
 80067dc:	4770      	bx	lr
 80067de:	2020      	movs	r0, #32
 80067e0:	4770      	bx	lr
 80067e2:	bf00      	nop

080067e4 <__i2b>:
 80067e4:	b510      	push	{r4, lr}
 80067e6:	460c      	mov	r4, r1
 80067e8:	2101      	movs	r1, #1
 80067ea:	f7ff ff3b 	bl	8006664 <_Balloc>
 80067ee:	2201      	movs	r2, #1
 80067f0:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80067f4:	bd10      	pop	{r4, pc}
 80067f6:	bf00      	nop

080067f8 <__multiply>:
 80067f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80067fc:	690e      	ldr	r6, [r1, #16]
 80067fe:	6914      	ldr	r4, [r2, #16]
 8006800:	42a6      	cmp	r6, r4
 8006802:	b083      	sub	sp, #12
 8006804:	460f      	mov	r7, r1
 8006806:	4615      	mov	r5, r2
 8006808:	da04      	bge.n	8006814 <__multiply+0x1c>
 800680a:	4632      	mov	r2, r6
 800680c:	462f      	mov	r7, r5
 800680e:	4626      	mov	r6, r4
 8006810:	460d      	mov	r5, r1
 8006812:	4614      	mov	r4, r2
 8006814:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006818:	eb06 0804 	add.w	r8, r6, r4
 800681c:	4543      	cmp	r3, r8
 800681e:	bfb8      	it	lt
 8006820:	3101      	addlt	r1, #1
 8006822:	f7ff ff1f 	bl	8006664 <_Balloc>
 8006826:	f100 0914 	add.w	r9, r0, #20
 800682a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800682e:	45f1      	cmp	r9, lr
 8006830:	9000      	str	r0, [sp, #0]
 8006832:	d205      	bcs.n	8006840 <__multiply+0x48>
 8006834:	464b      	mov	r3, r9
 8006836:	2200      	movs	r2, #0
 8006838:	f843 2b04 	str.w	r2, [r3], #4
 800683c:	459e      	cmp	lr, r3
 800683e:	d8fb      	bhi.n	8006838 <__multiply+0x40>
 8006840:	f105 0a14 	add.w	sl, r5, #20
 8006844:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006848:	f107 0314 	add.w	r3, r7, #20
 800684c:	45a2      	cmp	sl, r4
 800684e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006852:	d261      	bcs.n	8006918 <__multiply+0x120>
 8006854:	1b64      	subs	r4, r4, r5
 8006856:	3c15      	subs	r4, #21
 8006858:	f024 0403 	bic.w	r4, r4, #3
 800685c:	f8cd e004 	str.w	lr, [sp, #4]
 8006860:	44a2      	add	sl, r4
 8006862:	f105 0210 	add.w	r2, r5, #16
 8006866:	469e      	mov	lr, r3
 8006868:	e005      	b.n	8006876 <__multiply+0x7e>
 800686a:	0c2d      	lsrs	r5, r5, #16
 800686c:	d12b      	bne.n	80068c6 <__multiply+0xce>
 800686e:	4592      	cmp	sl, r2
 8006870:	f109 0904 	add.w	r9, r9, #4
 8006874:	d04e      	beq.n	8006914 <__multiply+0x11c>
 8006876:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800687a:	fa1f fb85 	uxth.w	fp, r5
 800687e:	f1bb 0f00 	cmp.w	fp, #0
 8006882:	d0f2      	beq.n	800686a <__multiply+0x72>
 8006884:	4677      	mov	r7, lr
 8006886:	464e      	mov	r6, r9
 8006888:	2000      	movs	r0, #0
 800688a:	e000      	b.n	800688e <__multiply+0x96>
 800688c:	4626      	mov	r6, r4
 800688e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006892:	6834      	ldr	r4, [r6, #0]
 8006894:	b28b      	uxth	r3, r1
 8006896:	b2a5      	uxth	r5, r4
 8006898:	0c09      	lsrs	r1, r1, #16
 800689a:	0c24      	lsrs	r4, r4, #16
 800689c:	fb0b 5303 	mla	r3, fp, r3, r5
 80068a0:	4403      	add	r3, r0
 80068a2:	fb0b 4001 	mla	r0, fp, r1, r4
 80068a6:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80068aa:	4634      	mov	r4, r6
 80068ac:	b29b      	uxth	r3, r3
 80068ae:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80068b2:	45bc      	cmp	ip, r7
 80068b4:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80068b8:	f844 3b04 	str.w	r3, [r4], #4
 80068bc:	d8e6      	bhi.n	800688c <__multiply+0x94>
 80068be:	6070      	str	r0, [r6, #4]
 80068c0:	6815      	ldr	r5, [r2, #0]
 80068c2:	0c2d      	lsrs	r5, r5, #16
 80068c4:	d0d3      	beq.n	800686e <__multiply+0x76>
 80068c6:	f8d9 3000 	ldr.w	r3, [r9]
 80068ca:	4676      	mov	r6, lr
 80068cc:	4618      	mov	r0, r3
 80068ce:	46cb      	mov	fp, r9
 80068d0:	2100      	movs	r1, #0
 80068d2:	e000      	b.n	80068d6 <__multiply+0xde>
 80068d4:	46a3      	mov	fp, r4
 80068d6:	8834      	ldrh	r4, [r6, #0]
 80068d8:	0c00      	lsrs	r0, r0, #16
 80068da:	fb05 0004 	mla	r0, r5, r4, r0
 80068de:	4401      	add	r1, r0
 80068e0:	b29b      	uxth	r3, r3
 80068e2:	465c      	mov	r4, fp
 80068e4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80068e8:	f844 3b04 	str.w	r3, [r4], #4
 80068ec:	f856 3b04 	ldr.w	r3, [r6], #4
 80068f0:	f8db 0004 	ldr.w	r0, [fp, #4]
 80068f4:	0c1b      	lsrs	r3, r3, #16
 80068f6:	b287      	uxth	r7, r0
 80068f8:	fb05 7303 	mla	r3, r5, r3, r7
 80068fc:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006900:	45b4      	cmp	ip, r6
 8006902:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006906:	d8e5      	bhi.n	80068d4 <__multiply+0xdc>
 8006908:	4592      	cmp	sl, r2
 800690a:	f8cb 3004 	str.w	r3, [fp, #4]
 800690e:	f109 0904 	add.w	r9, r9, #4
 8006912:	d1b0      	bne.n	8006876 <__multiply+0x7e>
 8006914:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006918:	f1b8 0f00 	cmp.w	r8, #0
 800691c:	dd0b      	ble.n	8006936 <__multiply+0x13e>
 800691e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006922:	f1ae 0e04 	sub.w	lr, lr, #4
 8006926:	b11b      	cbz	r3, 8006930 <__multiply+0x138>
 8006928:	e005      	b.n	8006936 <__multiply+0x13e>
 800692a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800692e:	b913      	cbnz	r3, 8006936 <__multiply+0x13e>
 8006930:	f1b8 0801 	subs.w	r8, r8, #1
 8006934:	d1f9      	bne.n	800692a <__multiply+0x132>
 8006936:	9800      	ldr	r0, [sp, #0]
 8006938:	f8c0 8010 	str.w	r8, [r0, #16]
 800693c:	b003      	add	sp, #12
 800693e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006942:	bf00      	nop

08006944 <__pow5mult>:
 8006944:	f012 0303 	ands.w	r3, r2, #3
 8006948:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800694c:	4614      	mov	r4, r2
 800694e:	4607      	mov	r7, r0
 8006950:	d12e      	bne.n	80069b0 <__pow5mult+0x6c>
 8006952:	460d      	mov	r5, r1
 8006954:	10a4      	asrs	r4, r4, #2
 8006956:	d01c      	beq.n	8006992 <__pow5mult+0x4e>
 8006958:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800695a:	b396      	cbz	r6, 80069c2 <__pow5mult+0x7e>
 800695c:	07e3      	lsls	r3, r4, #31
 800695e:	f04f 0800 	mov.w	r8, #0
 8006962:	d406      	bmi.n	8006972 <__pow5mult+0x2e>
 8006964:	1064      	asrs	r4, r4, #1
 8006966:	d014      	beq.n	8006992 <__pow5mult+0x4e>
 8006968:	6830      	ldr	r0, [r6, #0]
 800696a:	b1a8      	cbz	r0, 8006998 <__pow5mult+0x54>
 800696c:	4606      	mov	r6, r0
 800696e:	07e3      	lsls	r3, r4, #31
 8006970:	d5f8      	bpl.n	8006964 <__pow5mult+0x20>
 8006972:	4632      	mov	r2, r6
 8006974:	4629      	mov	r1, r5
 8006976:	4638      	mov	r0, r7
 8006978:	f7ff ff3e 	bl	80067f8 <__multiply>
 800697c:	b1b5      	cbz	r5, 80069ac <__pow5mult+0x68>
 800697e:	686a      	ldr	r2, [r5, #4]
 8006980:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006982:	1064      	asrs	r4, r4, #1
 8006984:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006988:	6029      	str	r1, [r5, #0]
 800698a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800698e:	4605      	mov	r5, r0
 8006990:	d1ea      	bne.n	8006968 <__pow5mult+0x24>
 8006992:	4628      	mov	r0, r5
 8006994:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006998:	4632      	mov	r2, r6
 800699a:	4631      	mov	r1, r6
 800699c:	4638      	mov	r0, r7
 800699e:	f7ff ff2b 	bl	80067f8 <__multiply>
 80069a2:	6030      	str	r0, [r6, #0]
 80069a4:	f8c0 8000 	str.w	r8, [r0]
 80069a8:	4606      	mov	r6, r0
 80069aa:	e7e0      	b.n	800696e <__pow5mult+0x2a>
 80069ac:	4605      	mov	r5, r0
 80069ae:	e7d9      	b.n	8006964 <__pow5mult+0x20>
 80069b0:	3b01      	subs	r3, #1
 80069b2:	4a0b      	ldr	r2, [pc, #44]	; (80069e0 <__pow5mult+0x9c>)
 80069b4:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80069b8:	2300      	movs	r3, #0
 80069ba:	f7ff fe83 	bl	80066c4 <__multadd>
 80069be:	4605      	mov	r5, r0
 80069c0:	e7c8      	b.n	8006954 <__pow5mult+0x10>
 80069c2:	2101      	movs	r1, #1
 80069c4:	4638      	mov	r0, r7
 80069c6:	f7ff fe4d 	bl	8006664 <_Balloc>
 80069ca:	f240 2371 	movw	r3, #625	; 0x271
 80069ce:	6143      	str	r3, [r0, #20]
 80069d0:	2201      	movs	r2, #1
 80069d2:	2300      	movs	r3, #0
 80069d4:	6102      	str	r2, [r0, #16]
 80069d6:	4606      	mov	r6, r0
 80069d8:	64b8      	str	r0, [r7, #72]	; 0x48
 80069da:	6003      	str	r3, [r0, #0]
 80069dc:	e7be      	b.n	800695c <__pow5mult+0x18>
 80069de:	bf00      	nop
 80069e0:	080079d0 	.word	0x080079d0

080069e4 <__lshift>:
 80069e4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80069e8:	4691      	mov	r9, r2
 80069ea:	690a      	ldr	r2, [r1, #16]
 80069ec:	460e      	mov	r6, r1
 80069ee:	ea4f 1469 	mov.w	r4, r9, asr #5
 80069f2:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80069f6:	eb04 0802 	add.w	r8, r4, r2
 80069fa:	f108 0501 	add.w	r5, r8, #1
 80069fe:	429d      	cmp	r5, r3
 8006a00:	4607      	mov	r7, r0
 8006a02:	dd04      	ble.n	8006a0e <__lshift+0x2a>
 8006a04:	005b      	lsls	r3, r3, #1
 8006a06:	429d      	cmp	r5, r3
 8006a08:	f101 0101 	add.w	r1, r1, #1
 8006a0c:	dcfa      	bgt.n	8006a04 <__lshift+0x20>
 8006a0e:	4638      	mov	r0, r7
 8006a10:	f7ff fe28 	bl	8006664 <_Balloc>
 8006a14:	2c00      	cmp	r4, #0
 8006a16:	f100 0314 	add.w	r3, r0, #20
 8006a1a:	dd37      	ble.n	8006a8c <__lshift+0xa8>
 8006a1c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006a20:	2200      	movs	r2, #0
 8006a22:	f843 2b04 	str.w	r2, [r3], #4
 8006a26:	428b      	cmp	r3, r1
 8006a28:	d1fb      	bne.n	8006a22 <__lshift+0x3e>
 8006a2a:	6934      	ldr	r4, [r6, #16]
 8006a2c:	f106 0314 	add.w	r3, r6, #20
 8006a30:	f019 091f 	ands.w	r9, r9, #31
 8006a34:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006a38:	d020      	beq.n	8006a7c <__lshift+0x98>
 8006a3a:	f1c9 0e20 	rsb	lr, r9, #32
 8006a3e:	2200      	movs	r2, #0
 8006a40:	e000      	b.n	8006a44 <__lshift+0x60>
 8006a42:	4651      	mov	r1, sl
 8006a44:	681c      	ldr	r4, [r3, #0]
 8006a46:	468a      	mov	sl, r1
 8006a48:	fa04 f409 	lsl.w	r4, r4, r9
 8006a4c:	4314      	orrs	r4, r2
 8006a4e:	f84a 4b04 	str.w	r4, [sl], #4
 8006a52:	f853 2b04 	ldr.w	r2, [r3], #4
 8006a56:	4563      	cmp	r3, ip
 8006a58:	fa22 f20e 	lsr.w	r2, r2, lr
 8006a5c:	d3f1      	bcc.n	8006a42 <__lshift+0x5e>
 8006a5e:	604a      	str	r2, [r1, #4]
 8006a60:	b10a      	cbz	r2, 8006a66 <__lshift+0x82>
 8006a62:	f108 0502 	add.w	r5, r8, #2
 8006a66:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006a68:	6872      	ldr	r2, [r6, #4]
 8006a6a:	3d01      	subs	r5, #1
 8006a6c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006a70:	6105      	str	r5, [r0, #16]
 8006a72:	6031      	str	r1, [r6, #0]
 8006a74:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006a78:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006a7c:	3904      	subs	r1, #4
 8006a7e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006a82:	f841 2f04 	str.w	r2, [r1, #4]!
 8006a86:	459c      	cmp	ip, r3
 8006a88:	d8f9      	bhi.n	8006a7e <__lshift+0x9a>
 8006a8a:	e7ec      	b.n	8006a66 <__lshift+0x82>
 8006a8c:	4619      	mov	r1, r3
 8006a8e:	e7cc      	b.n	8006a2a <__lshift+0x46>

08006a90 <__mcmp>:
 8006a90:	b430      	push	{r4, r5}
 8006a92:	690b      	ldr	r3, [r1, #16]
 8006a94:	4605      	mov	r5, r0
 8006a96:	6900      	ldr	r0, [r0, #16]
 8006a98:	1ac0      	subs	r0, r0, r3
 8006a9a:	d10f      	bne.n	8006abc <__mcmp+0x2c>
 8006a9c:	009b      	lsls	r3, r3, #2
 8006a9e:	3514      	adds	r5, #20
 8006aa0:	3114      	adds	r1, #20
 8006aa2:	4419      	add	r1, r3
 8006aa4:	442b      	add	r3, r5
 8006aa6:	e001      	b.n	8006aac <__mcmp+0x1c>
 8006aa8:	429d      	cmp	r5, r3
 8006aaa:	d207      	bcs.n	8006abc <__mcmp+0x2c>
 8006aac:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006ab0:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006ab4:	4294      	cmp	r4, r2
 8006ab6:	d0f7      	beq.n	8006aa8 <__mcmp+0x18>
 8006ab8:	d302      	bcc.n	8006ac0 <__mcmp+0x30>
 8006aba:	2001      	movs	r0, #1
 8006abc:	bc30      	pop	{r4, r5}
 8006abe:	4770      	bx	lr
 8006ac0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006ac4:	e7fa      	b.n	8006abc <__mcmp+0x2c>
 8006ac6:	bf00      	nop

08006ac8 <__mdiff>:
 8006ac8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006acc:	6913      	ldr	r3, [r2, #16]
 8006ace:	690d      	ldr	r5, [r1, #16]
 8006ad0:	1aed      	subs	r5, r5, r3
 8006ad2:	2d00      	cmp	r5, #0
 8006ad4:	460e      	mov	r6, r1
 8006ad6:	4690      	mov	r8, r2
 8006ad8:	f101 0414 	add.w	r4, r1, #20
 8006adc:	f102 0714 	add.w	r7, r2, #20
 8006ae0:	d114      	bne.n	8006b0c <__mdiff+0x44>
 8006ae2:	009b      	lsls	r3, r3, #2
 8006ae4:	18e2      	adds	r2, r4, r3
 8006ae6:	443b      	add	r3, r7
 8006ae8:	e001      	b.n	8006aee <__mdiff+0x26>
 8006aea:	42a2      	cmp	r2, r4
 8006aec:	d959      	bls.n	8006ba2 <__mdiff+0xda>
 8006aee:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006af2:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006af6:	458c      	cmp	ip, r1
 8006af8:	d0f7      	beq.n	8006aea <__mdiff+0x22>
 8006afa:	d209      	bcs.n	8006b10 <__mdiff+0x48>
 8006afc:	4622      	mov	r2, r4
 8006afe:	4633      	mov	r3, r6
 8006b00:	463c      	mov	r4, r7
 8006b02:	4646      	mov	r6, r8
 8006b04:	4617      	mov	r7, r2
 8006b06:	4698      	mov	r8, r3
 8006b08:	2501      	movs	r5, #1
 8006b0a:	e001      	b.n	8006b10 <__mdiff+0x48>
 8006b0c:	dbf6      	blt.n	8006afc <__mdiff+0x34>
 8006b0e:	2500      	movs	r5, #0
 8006b10:	6871      	ldr	r1, [r6, #4]
 8006b12:	f7ff fda7 	bl	8006664 <_Balloc>
 8006b16:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006b1a:	6936      	ldr	r6, [r6, #16]
 8006b1c:	60c5      	str	r5, [r0, #12]
 8006b1e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006b22:	46bc      	mov	ip, r7
 8006b24:	f100 0514 	add.w	r5, r0, #20
 8006b28:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006b2c:	2300      	movs	r3, #0
 8006b2e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006b32:	f854 8b04 	ldr.w	r8, [r4], #4
 8006b36:	b28a      	uxth	r2, r1
 8006b38:	fa13 f388 	uxtah	r3, r3, r8
 8006b3c:	0c09      	lsrs	r1, r1, #16
 8006b3e:	1a9a      	subs	r2, r3, r2
 8006b40:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006b44:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006b48:	b292      	uxth	r2, r2
 8006b4a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006b4e:	45e6      	cmp	lr, ip
 8006b50:	f845 2b04 	str.w	r2, [r5], #4
 8006b54:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006b58:	d8e9      	bhi.n	8006b2e <__mdiff+0x66>
 8006b5a:	42a7      	cmp	r7, r4
 8006b5c:	d917      	bls.n	8006b8e <__mdiff+0xc6>
 8006b5e:	46ae      	mov	lr, r5
 8006b60:	46a4      	mov	ip, r4
 8006b62:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006b66:	fa13 f382 	uxtah	r3, r3, r2
 8006b6a:	1419      	asrs	r1, r3, #16
 8006b6c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006b70:	b29b      	uxth	r3, r3
 8006b72:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006b76:	4567      	cmp	r7, ip
 8006b78:	f84e 2b04 	str.w	r2, [lr], #4
 8006b7c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006b80:	d8ef      	bhi.n	8006b62 <__mdiff+0x9a>
 8006b82:	43e4      	mvns	r4, r4
 8006b84:	4427      	add	r7, r4
 8006b86:	f027 0703 	bic.w	r7, r7, #3
 8006b8a:	3704      	adds	r7, #4
 8006b8c:	443d      	add	r5, r7
 8006b8e:	3d04      	subs	r5, #4
 8006b90:	b922      	cbnz	r2, 8006b9c <__mdiff+0xd4>
 8006b92:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006b96:	3e01      	subs	r6, #1
 8006b98:	2b00      	cmp	r3, #0
 8006b9a:	d0fa      	beq.n	8006b92 <__mdiff+0xca>
 8006b9c:	6106      	str	r6, [r0, #16]
 8006b9e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006ba2:	2100      	movs	r1, #0
 8006ba4:	f7ff fd5e 	bl	8006664 <_Balloc>
 8006ba8:	2201      	movs	r2, #1
 8006baa:	2300      	movs	r3, #0
 8006bac:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006bb0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006bb4 <__d2b>:
 8006bb4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006bb8:	460f      	mov	r7, r1
 8006bba:	b083      	sub	sp, #12
 8006bbc:	2101      	movs	r1, #1
 8006bbe:	ec55 4b10 	vmov	r4, r5, d0
 8006bc2:	4616      	mov	r6, r2
 8006bc4:	f7ff fd4e 	bl	8006664 <_Balloc>
 8006bc8:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8006bcc:	4681      	mov	r9, r0
 8006bce:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006bd2:	f1b8 0f00 	cmp.w	r8, #0
 8006bd6:	d001      	beq.n	8006bdc <__d2b+0x28>
 8006bd8:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006bdc:	2c00      	cmp	r4, #0
 8006bde:	9301      	str	r3, [sp, #4]
 8006be0:	d024      	beq.n	8006c2c <__d2b+0x78>
 8006be2:	a802      	add	r0, sp, #8
 8006be4:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006be8:	f7ff fdcc 	bl	8006784 <__lo0bits>
 8006bec:	2800      	cmp	r0, #0
 8006bee:	d136      	bne.n	8006c5e <__d2b+0xaa>
 8006bf0:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006bf4:	f8c9 2014 	str.w	r2, [r9, #20]
 8006bf8:	2b00      	cmp	r3, #0
 8006bfa:	bf0c      	ite	eq
 8006bfc:	2101      	moveq	r1, #1
 8006bfe:	2102      	movne	r1, #2
 8006c00:	f8c9 3018 	str.w	r3, [r9, #24]
 8006c04:	f8c9 1010 	str.w	r1, [r9, #16]
 8006c08:	f1b8 0f00 	cmp.w	r8, #0
 8006c0c:	d11b      	bne.n	8006c46 <__d2b+0x92>
 8006c0e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006c12:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006c16:	6038      	str	r0, [r7, #0]
 8006c18:	6918      	ldr	r0, [r3, #16]
 8006c1a:	f7ff fd93 	bl	8006744 <__hi0bits>
 8006c1e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006c22:	6030      	str	r0, [r6, #0]
 8006c24:	4648      	mov	r0, r9
 8006c26:	b003      	add	sp, #12
 8006c28:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006c2c:	a801      	add	r0, sp, #4
 8006c2e:	f7ff fda9 	bl	8006784 <__lo0bits>
 8006c32:	9b01      	ldr	r3, [sp, #4]
 8006c34:	f8c9 3014 	str.w	r3, [r9, #20]
 8006c38:	2101      	movs	r1, #1
 8006c3a:	3020      	adds	r0, #32
 8006c3c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006c40:	f1b8 0f00 	cmp.w	r8, #0
 8006c44:	d0e3      	beq.n	8006c0e <__d2b+0x5a>
 8006c46:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006c4a:	eb08 0300 	add.w	r3, r8, r0
 8006c4e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006c52:	603b      	str	r3, [r7, #0]
 8006c54:	6030      	str	r0, [r6, #0]
 8006c56:	4648      	mov	r0, r9
 8006c58:	b003      	add	sp, #12
 8006c5a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006c5e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006c62:	f1c0 0220 	rsb	r2, r0, #32
 8006c66:	fa03 f202 	lsl.w	r2, r3, r2
 8006c6a:	430a      	orrs	r2, r1
 8006c6c:	40c3      	lsrs	r3, r0
 8006c6e:	9301      	str	r3, [sp, #4]
 8006c70:	f8c9 2014 	str.w	r2, [r9, #20]
 8006c74:	e7c0      	b.n	8006bf8 <__d2b+0x44>
 8006c76:	bf00      	nop

08006c78 <_realloc_r>:
 8006c78:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006c7c:	4692      	mov	sl, r2
 8006c7e:	b083      	sub	sp, #12
 8006c80:	2900      	cmp	r1, #0
 8006c82:	f000 80a1 	beq.w	8006dc8 <_realloc_r+0x150>
 8006c86:	460d      	mov	r5, r1
 8006c88:	4680      	mov	r8, r0
 8006c8a:	f10a 040b 	add.w	r4, sl, #11
 8006c8e:	f7ff fcdd 	bl	800664c <__malloc_lock>
 8006c92:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006c96:	2c16      	cmp	r4, #22
 8006c98:	f022 0603 	bic.w	r6, r2, #3
 8006c9c:	f1a5 0708 	sub.w	r7, r5, #8
 8006ca0:	d83e      	bhi.n	8006d20 <_realloc_r+0xa8>
 8006ca2:	2410      	movs	r4, #16
 8006ca4:	4621      	mov	r1, r4
 8006ca6:	45a2      	cmp	sl, r4
 8006ca8:	d83f      	bhi.n	8006d2a <_realloc_r+0xb2>
 8006caa:	428e      	cmp	r6, r1
 8006cac:	eb07 0906 	add.w	r9, r7, r6
 8006cb0:	da74      	bge.n	8006d9c <_realloc_r+0x124>
 8006cb2:	4bc7      	ldr	r3, [pc, #796]	; (8006fd0 <_realloc_r+0x358>)
 8006cb4:	6898      	ldr	r0, [r3, #8]
 8006cb6:	4548      	cmp	r0, r9
 8006cb8:	f000 80aa 	beq.w	8006e10 <_realloc_r+0x198>
 8006cbc:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006cc0:	f020 0301 	bic.w	r3, r0, #1
 8006cc4:	444b      	add	r3, r9
 8006cc6:	685b      	ldr	r3, [r3, #4]
 8006cc8:	07db      	lsls	r3, r3, #31
 8006cca:	f140 8083 	bpl.w	8006dd4 <_realloc_r+0x15c>
 8006cce:	07d2      	lsls	r2, r2, #31
 8006cd0:	d534      	bpl.n	8006d3c <_realloc_r+0xc4>
 8006cd2:	4651      	mov	r1, sl
 8006cd4:	4640      	mov	r0, r8
 8006cd6:	f7ff f9b1 	bl	800603c <_malloc_r>
 8006cda:	4682      	mov	sl, r0
 8006cdc:	b1e0      	cbz	r0, 8006d18 <_realloc_r+0xa0>
 8006cde:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006ce2:	f023 0301 	bic.w	r3, r3, #1
 8006ce6:	443b      	add	r3, r7
 8006ce8:	f1a0 0208 	sub.w	r2, r0, #8
 8006cec:	4293      	cmp	r3, r2
 8006cee:	f000 80f9 	beq.w	8006ee4 <_realloc_r+0x26c>
 8006cf2:	1f32      	subs	r2, r6, #4
 8006cf4:	2a24      	cmp	r2, #36	; 0x24
 8006cf6:	f200 8107 	bhi.w	8006f08 <_realloc_r+0x290>
 8006cfa:	2a13      	cmp	r2, #19
 8006cfc:	6829      	ldr	r1, [r5, #0]
 8006cfe:	f200 80e6 	bhi.w	8006ece <_realloc_r+0x256>
 8006d02:	4603      	mov	r3, r0
 8006d04:	462a      	mov	r2, r5
 8006d06:	6019      	str	r1, [r3, #0]
 8006d08:	6851      	ldr	r1, [r2, #4]
 8006d0a:	6059      	str	r1, [r3, #4]
 8006d0c:	6892      	ldr	r2, [r2, #8]
 8006d0e:	609a      	str	r2, [r3, #8]
 8006d10:	4629      	mov	r1, r5
 8006d12:	4640      	mov	r0, r8
 8006d14:	f7fe fe68 	bl	80059e8 <_free_r>
 8006d18:	4640      	mov	r0, r8
 8006d1a:	f7ff fc9d 	bl	8006658 <__malloc_unlock>
 8006d1e:	e04f      	b.n	8006dc0 <_realloc_r+0x148>
 8006d20:	f024 0407 	bic.w	r4, r4, #7
 8006d24:	2c00      	cmp	r4, #0
 8006d26:	4621      	mov	r1, r4
 8006d28:	dabd      	bge.n	8006ca6 <_realloc_r+0x2e>
 8006d2a:	f04f 0a00 	mov.w	sl, #0
 8006d2e:	230c      	movs	r3, #12
 8006d30:	4650      	mov	r0, sl
 8006d32:	f8c8 3000 	str.w	r3, [r8]
 8006d36:	b003      	add	sp, #12
 8006d38:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006d3c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006d40:	eba7 0b03 	sub.w	fp, r7, r3
 8006d44:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006d48:	f022 0203 	bic.w	r2, r2, #3
 8006d4c:	18b3      	adds	r3, r6, r2
 8006d4e:	428b      	cmp	r3, r1
 8006d50:	dbbf      	blt.n	8006cd2 <_realloc_r+0x5a>
 8006d52:	46da      	mov	sl, fp
 8006d54:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006d58:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006d5c:	1f32      	subs	r2, r6, #4
 8006d5e:	2a24      	cmp	r2, #36	; 0x24
 8006d60:	60c1      	str	r1, [r0, #12]
 8006d62:	eb0b 0903 	add.w	r9, fp, r3
 8006d66:	6088      	str	r0, [r1, #8]
 8006d68:	f200 80c6 	bhi.w	8006ef8 <_realloc_r+0x280>
 8006d6c:	2a13      	cmp	r2, #19
 8006d6e:	6829      	ldr	r1, [r5, #0]
 8006d70:	f240 80c0 	bls.w	8006ef4 <_realloc_r+0x27c>
 8006d74:	f8cb 1008 	str.w	r1, [fp, #8]
 8006d78:	6869      	ldr	r1, [r5, #4]
 8006d7a:	f8cb 100c 	str.w	r1, [fp, #12]
 8006d7e:	2a1b      	cmp	r2, #27
 8006d80:	68a9      	ldr	r1, [r5, #8]
 8006d82:	f200 80d8 	bhi.w	8006f36 <_realloc_r+0x2be>
 8006d86:	f10b 0210 	add.w	r2, fp, #16
 8006d8a:	3508      	adds	r5, #8
 8006d8c:	6011      	str	r1, [r2, #0]
 8006d8e:	6869      	ldr	r1, [r5, #4]
 8006d90:	6051      	str	r1, [r2, #4]
 8006d92:	68a9      	ldr	r1, [r5, #8]
 8006d94:	6091      	str	r1, [r2, #8]
 8006d96:	461e      	mov	r6, r3
 8006d98:	465f      	mov	r7, fp
 8006d9a:	4655      	mov	r5, sl
 8006d9c:	687b      	ldr	r3, [r7, #4]
 8006d9e:	1b32      	subs	r2, r6, r4
 8006da0:	2a0f      	cmp	r2, #15
 8006da2:	f003 0301 	and.w	r3, r3, #1
 8006da6:	d822      	bhi.n	8006dee <_realloc_r+0x176>
 8006da8:	4333      	orrs	r3, r6
 8006daa:	607b      	str	r3, [r7, #4]
 8006dac:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006db0:	f043 0301 	orr.w	r3, r3, #1
 8006db4:	f8c9 3004 	str.w	r3, [r9, #4]
 8006db8:	4640      	mov	r0, r8
 8006dba:	f7ff fc4d 	bl	8006658 <__malloc_unlock>
 8006dbe:	46aa      	mov	sl, r5
 8006dc0:	4650      	mov	r0, sl
 8006dc2:	b003      	add	sp, #12
 8006dc4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006dc8:	4611      	mov	r1, r2
 8006dca:	b003      	add	sp, #12
 8006dcc:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006dd0:	f7ff b934 	b.w	800603c <_malloc_r>
 8006dd4:	f020 0003 	bic.w	r0, r0, #3
 8006dd8:	1833      	adds	r3, r6, r0
 8006dda:	428b      	cmp	r3, r1
 8006ddc:	db61      	blt.n	8006ea2 <_realloc_r+0x22a>
 8006dde:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006de2:	461e      	mov	r6, r3
 8006de4:	60ca      	str	r2, [r1, #12]
 8006de6:	eb07 0903 	add.w	r9, r7, r3
 8006dea:	6091      	str	r1, [r2, #8]
 8006dec:	e7d6      	b.n	8006d9c <_realloc_r+0x124>
 8006dee:	1939      	adds	r1, r7, r4
 8006df0:	4323      	orrs	r3, r4
 8006df2:	f042 0201 	orr.w	r2, r2, #1
 8006df6:	607b      	str	r3, [r7, #4]
 8006df8:	604a      	str	r2, [r1, #4]
 8006dfa:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006dfe:	f043 0301 	orr.w	r3, r3, #1
 8006e02:	3108      	adds	r1, #8
 8006e04:	f8c9 3004 	str.w	r3, [r9, #4]
 8006e08:	4640      	mov	r0, r8
 8006e0a:	f7fe fded 	bl	80059e8 <_free_r>
 8006e0e:	e7d3      	b.n	8006db8 <_realloc_r+0x140>
 8006e10:	6840      	ldr	r0, [r0, #4]
 8006e12:	f020 0903 	bic.w	r9, r0, #3
 8006e16:	44b1      	add	r9, r6
 8006e18:	f104 0010 	add.w	r0, r4, #16
 8006e1c:	4581      	cmp	r9, r0
 8006e1e:	da77      	bge.n	8006f10 <_realloc_r+0x298>
 8006e20:	07d2      	lsls	r2, r2, #31
 8006e22:	f53f af56 	bmi.w	8006cd2 <_realloc_r+0x5a>
 8006e26:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006e2a:	eba7 0b02 	sub.w	fp, r7, r2
 8006e2e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006e32:	f022 0203 	bic.w	r2, r2, #3
 8006e36:	4491      	add	r9, r2
 8006e38:	4548      	cmp	r0, r9
 8006e3a:	dc87      	bgt.n	8006d4c <_realloc_r+0xd4>
 8006e3c:	46da      	mov	sl, fp
 8006e3e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006e42:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006e46:	1f32      	subs	r2, r6, #4
 8006e48:	2a24      	cmp	r2, #36	; 0x24
 8006e4a:	60c1      	str	r1, [r0, #12]
 8006e4c:	6088      	str	r0, [r1, #8]
 8006e4e:	f200 80a1 	bhi.w	8006f94 <_realloc_r+0x31c>
 8006e52:	2a13      	cmp	r2, #19
 8006e54:	6829      	ldr	r1, [r5, #0]
 8006e56:	f240 809b 	bls.w	8006f90 <_realloc_r+0x318>
 8006e5a:	f8cb 1008 	str.w	r1, [fp, #8]
 8006e5e:	6869      	ldr	r1, [r5, #4]
 8006e60:	f8cb 100c 	str.w	r1, [fp, #12]
 8006e64:	2a1b      	cmp	r2, #27
 8006e66:	68a9      	ldr	r1, [r5, #8]
 8006e68:	f200 809b 	bhi.w	8006fa2 <_realloc_r+0x32a>
 8006e6c:	f10b 0210 	add.w	r2, fp, #16
 8006e70:	3508      	adds	r5, #8
 8006e72:	6011      	str	r1, [r2, #0]
 8006e74:	6869      	ldr	r1, [r5, #4]
 8006e76:	6051      	str	r1, [r2, #4]
 8006e78:	68a9      	ldr	r1, [r5, #8]
 8006e7a:	6091      	str	r1, [r2, #8]
 8006e7c:	eb0b 0104 	add.w	r1, fp, r4
 8006e80:	eba9 0204 	sub.w	r2, r9, r4
 8006e84:	f042 0201 	orr.w	r2, r2, #1
 8006e88:	6099      	str	r1, [r3, #8]
 8006e8a:	604a      	str	r2, [r1, #4]
 8006e8c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006e90:	f003 0301 	and.w	r3, r3, #1
 8006e94:	431c      	orrs	r4, r3
 8006e96:	4640      	mov	r0, r8
 8006e98:	f8cb 4004 	str.w	r4, [fp, #4]
 8006e9c:	f7ff fbdc 	bl	8006658 <__malloc_unlock>
 8006ea0:	e78e      	b.n	8006dc0 <_realloc_r+0x148>
 8006ea2:	07d3      	lsls	r3, r2, #31
 8006ea4:	f53f af15 	bmi.w	8006cd2 <_realloc_r+0x5a>
 8006ea8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006eac:	eba7 0b03 	sub.w	fp, r7, r3
 8006eb0:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006eb4:	f022 0203 	bic.w	r2, r2, #3
 8006eb8:	4410      	add	r0, r2
 8006eba:	1983      	adds	r3, r0, r6
 8006ebc:	428b      	cmp	r3, r1
 8006ebe:	f6ff af45 	blt.w	8006d4c <_realloc_r+0xd4>
 8006ec2:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006ec6:	46da      	mov	sl, fp
 8006ec8:	60ca      	str	r2, [r1, #12]
 8006eca:	6091      	str	r1, [r2, #8]
 8006ecc:	e742      	b.n	8006d54 <_realloc_r+0xdc>
 8006ece:	6001      	str	r1, [r0, #0]
 8006ed0:	686b      	ldr	r3, [r5, #4]
 8006ed2:	6043      	str	r3, [r0, #4]
 8006ed4:	2a1b      	cmp	r2, #27
 8006ed6:	d83a      	bhi.n	8006f4e <_realloc_r+0x2d6>
 8006ed8:	f105 0208 	add.w	r2, r5, #8
 8006edc:	f100 0308 	add.w	r3, r0, #8
 8006ee0:	68a9      	ldr	r1, [r5, #8]
 8006ee2:	e710      	b.n	8006d06 <_realloc_r+0x8e>
 8006ee4:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006ee8:	f023 0303 	bic.w	r3, r3, #3
 8006eec:	441e      	add	r6, r3
 8006eee:	eb07 0906 	add.w	r9, r7, r6
 8006ef2:	e753      	b.n	8006d9c <_realloc_r+0x124>
 8006ef4:	4652      	mov	r2, sl
 8006ef6:	e749      	b.n	8006d8c <_realloc_r+0x114>
 8006ef8:	4629      	mov	r1, r5
 8006efa:	4650      	mov	r0, sl
 8006efc:	461e      	mov	r6, r3
 8006efe:	465f      	mov	r7, fp
 8006f00:	f7ff fb40 	bl	8006584 <memmove>
 8006f04:	4655      	mov	r5, sl
 8006f06:	e749      	b.n	8006d9c <_realloc_r+0x124>
 8006f08:	4629      	mov	r1, r5
 8006f0a:	f7ff fb3b 	bl	8006584 <memmove>
 8006f0e:	e6ff      	b.n	8006d10 <_realloc_r+0x98>
 8006f10:	4427      	add	r7, r4
 8006f12:	eba9 0904 	sub.w	r9, r9, r4
 8006f16:	f049 0201 	orr.w	r2, r9, #1
 8006f1a:	609f      	str	r7, [r3, #8]
 8006f1c:	607a      	str	r2, [r7, #4]
 8006f1e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006f22:	f003 0301 	and.w	r3, r3, #1
 8006f26:	431c      	orrs	r4, r3
 8006f28:	4640      	mov	r0, r8
 8006f2a:	f845 4c04 	str.w	r4, [r5, #-4]
 8006f2e:	f7ff fb93 	bl	8006658 <__malloc_unlock>
 8006f32:	46aa      	mov	sl, r5
 8006f34:	e744      	b.n	8006dc0 <_realloc_r+0x148>
 8006f36:	f8cb 1010 	str.w	r1, [fp, #16]
 8006f3a:	68e9      	ldr	r1, [r5, #12]
 8006f3c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006f40:	2a24      	cmp	r2, #36	; 0x24
 8006f42:	d010      	beq.n	8006f66 <_realloc_r+0x2ee>
 8006f44:	6929      	ldr	r1, [r5, #16]
 8006f46:	f10b 0218 	add.w	r2, fp, #24
 8006f4a:	3510      	adds	r5, #16
 8006f4c:	e71e      	b.n	8006d8c <_realloc_r+0x114>
 8006f4e:	68ab      	ldr	r3, [r5, #8]
 8006f50:	6083      	str	r3, [r0, #8]
 8006f52:	68eb      	ldr	r3, [r5, #12]
 8006f54:	60c3      	str	r3, [r0, #12]
 8006f56:	2a24      	cmp	r2, #36	; 0x24
 8006f58:	d010      	beq.n	8006f7c <_realloc_r+0x304>
 8006f5a:	f105 0210 	add.w	r2, r5, #16
 8006f5e:	f100 0310 	add.w	r3, r0, #16
 8006f62:	6929      	ldr	r1, [r5, #16]
 8006f64:	e6cf      	b.n	8006d06 <_realloc_r+0x8e>
 8006f66:	692a      	ldr	r2, [r5, #16]
 8006f68:	f8cb 2018 	str.w	r2, [fp, #24]
 8006f6c:	696a      	ldr	r2, [r5, #20]
 8006f6e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006f72:	69a9      	ldr	r1, [r5, #24]
 8006f74:	f10b 0220 	add.w	r2, fp, #32
 8006f78:	3518      	adds	r5, #24
 8006f7a:	e707      	b.n	8006d8c <_realloc_r+0x114>
 8006f7c:	692b      	ldr	r3, [r5, #16]
 8006f7e:	6103      	str	r3, [r0, #16]
 8006f80:	696b      	ldr	r3, [r5, #20]
 8006f82:	6143      	str	r3, [r0, #20]
 8006f84:	69a9      	ldr	r1, [r5, #24]
 8006f86:	f105 0218 	add.w	r2, r5, #24
 8006f8a:	f100 0318 	add.w	r3, r0, #24
 8006f8e:	e6ba      	b.n	8006d06 <_realloc_r+0x8e>
 8006f90:	4652      	mov	r2, sl
 8006f92:	e76e      	b.n	8006e72 <_realloc_r+0x1fa>
 8006f94:	4629      	mov	r1, r5
 8006f96:	4650      	mov	r0, sl
 8006f98:	9301      	str	r3, [sp, #4]
 8006f9a:	f7ff faf3 	bl	8006584 <memmove>
 8006f9e:	9b01      	ldr	r3, [sp, #4]
 8006fa0:	e76c      	b.n	8006e7c <_realloc_r+0x204>
 8006fa2:	f8cb 1010 	str.w	r1, [fp, #16]
 8006fa6:	68e9      	ldr	r1, [r5, #12]
 8006fa8:	f8cb 1014 	str.w	r1, [fp, #20]
 8006fac:	2a24      	cmp	r2, #36	; 0x24
 8006fae:	d004      	beq.n	8006fba <_realloc_r+0x342>
 8006fb0:	6929      	ldr	r1, [r5, #16]
 8006fb2:	f10b 0218 	add.w	r2, fp, #24
 8006fb6:	3510      	adds	r5, #16
 8006fb8:	e75b      	b.n	8006e72 <_realloc_r+0x1fa>
 8006fba:	692a      	ldr	r2, [r5, #16]
 8006fbc:	f8cb 2018 	str.w	r2, [fp, #24]
 8006fc0:	696a      	ldr	r2, [r5, #20]
 8006fc2:	f8cb 201c 	str.w	r2, [fp, #28]
 8006fc6:	69a9      	ldr	r1, [r5, #24]
 8006fc8:	f10b 0220 	add.w	r2, fp, #32
 8006fcc:	3518      	adds	r5, #24
 8006fce:	e750      	b.n	8006e72 <_realloc_r+0x1fa>
 8006fd0:	2000044c 	.word	0x2000044c

08006fd4 <frexp>:
 8006fd4:	ec53 2b10 	vmov	r2, r3, d0
 8006fd8:	b570      	push	{r4, r5, r6, lr}
 8006fda:	4e16      	ldr	r6, [pc, #88]	; (8007034 <frexp+0x60>)
 8006fdc:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006fe0:	2500      	movs	r5, #0
 8006fe2:	42b1      	cmp	r1, r6
 8006fe4:	4604      	mov	r4, r0
 8006fe6:	6005      	str	r5, [r0, #0]
 8006fe8:	dc21      	bgt.n	800702e <frexp+0x5a>
 8006fea:	ee10 6a10 	vmov	r6, s0
 8006fee:	430e      	orrs	r6, r1
 8006ff0:	d01d      	beq.n	800702e <frexp+0x5a>
 8006ff2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006ff6:	4618      	mov	r0, r3
 8006ff8:	da0c      	bge.n	8007014 <frexp+0x40>
 8006ffa:	4619      	mov	r1, r3
 8006ffc:	2200      	movs	r2, #0
 8006ffe:	ee10 0a10 	vmov	r0, s0
 8007002:	4b0d      	ldr	r3, [pc, #52]	; (8007038 <frexp+0x64>)
 8007004:	f7f9 fd98 	bl	8000b38 <__aeabi_dmul>
 8007008:	f06f 0535 	mvn.w	r5, #53	; 0x35
 800700c:	4602      	mov	r2, r0
 800700e:	4608      	mov	r0, r1
 8007010:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8007014:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8007018:	1509      	asrs	r1, r1, #20
 800701a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 800701e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8007022:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8007026:	4429      	add	r1, r5
 8007028:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800702c:	6021      	str	r1, [r4, #0]
 800702e:	ec43 2b10 	vmov	d0, r2, r3
 8007032:	bd70      	pop	{r4, r5, r6, pc}
 8007034:	7fefffff 	.word	0x7fefffff
 8007038:	43500000 	.word	0x43500000

0800703c <_sbrk_r>:
 800703c:	b538      	push	{r3, r4, r5, lr}
 800703e:	4c07      	ldr	r4, [pc, #28]	; (800705c <_sbrk_r+0x20>)
 8007040:	2300      	movs	r3, #0
 8007042:	4605      	mov	r5, r0
 8007044:	4608      	mov	r0, r1
 8007046:	6023      	str	r3, [r4, #0]
 8007048:	f7fb fc2b 	bl	80028a2 <_sbrk>
 800704c:	1c43      	adds	r3, r0, #1
 800704e:	d000      	beq.n	8007052 <_sbrk_r+0x16>
 8007050:	bd38      	pop	{r3, r4, r5, pc}
 8007052:	6823      	ldr	r3, [r4, #0]
 8007054:	2b00      	cmp	r3, #0
 8007056:	d0fb      	beq.n	8007050 <_sbrk_r+0x14>
 8007058:	602b      	str	r3, [r5, #0]
 800705a:	bd38      	pop	{r3, r4, r5, pc}
 800705c:	20000b24 	.word	0x20000b24

08007060 <__sread>:
 8007060:	b510      	push	{r4, lr}
 8007062:	460c      	mov	r4, r1
 8007064:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007068:	f000 fabc 	bl	80075e4 <_read_r>
 800706c:	2800      	cmp	r0, #0
 800706e:	db03      	blt.n	8007078 <__sread+0x18>
 8007070:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8007072:	4403      	add	r3, r0
 8007074:	6523      	str	r3, [r4, #80]	; 0x50
 8007076:	bd10      	pop	{r4, pc}
 8007078:	89a3      	ldrh	r3, [r4, #12]
 800707a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 800707e:	81a3      	strh	r3, [r4, #12]
 8007080:	bd10      	pop	{r4, pc}
 8007082:	bf00      	nop

08007084 <__swrite>:
 8007084:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007088:	4616      	mov	r6, r2
 800708a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 800708e:	461f      	mov	r7, r3
 8007090:	05d3      	lsls	r3, r2, #23
 8007092:	460c      	mov	r4, r1
 8007094:	4605      	mov	r5, r0
 8007096:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800709a:	d507      	bpl.n	80070ac <__swrite+0x28>
 800709c:	2200      	movs	r2, #0
 800709e:	2302      	movs	r3, #2
 80070a0:	f000 fa74 	bl	800758c <_lseek_r>
 80070a4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80070a8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80070ac:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 80070b0:	81a2      	strh	r2, [r4, #12]
 80070b2:	463b      	mov	r3, r7
 80070b4:	4632      	mov	r2, r6
 80070b6:	4628      	mov	r0, r5
 80070b8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80070bc:	f000 b88c 	b.w	80071d8 <_write_r>

080070c0 <__sseek>:
 80070c0:	b510      	push	{r4, lr}
 80070c2:	460c      	mov	r4, r1
 80070c4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80070c8:	f000 fa60 	bl	800758c <_lseek_r>
 80070cc:	89a3      	ldrh	r3, [r4, #12]
 80070ce:	1c42      	adds	r2, r0, #1
 80070d0:	bf0e      	itee	eq
 80070d2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80070d6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 80070da:	6520      	strne	r0, [r4, #80]	; 0x50
 80070dc:	81a3      	strh	r3, [r4, #12]
 80070de:	bd10      	pop	{r4, pc}

080070e0 <__sclose>:
 80070e0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80070e4:	f000 b922 	b.w	800732c <_close_r>

080070e8 <strncpy>:
 80070e8:	ea40 0301 	orr.w	r3, r0, r1
 80070ec:	079b      	lsls	r3, r3, #30
 80070ee:	b470      	push	{r4, r5, r6}
 80070f0:	d12a      	bne.n	8007148 <strncpy+0x60>
 80070f2:	2a03      	cmp	r2, #3
 80070f4:	d928      	bls.n	8007148 <strncpy+0x60>
 80070f6:	460c      	mov	r4, r1
 80070f8:	4603      	mov	r3, r0
 80070fa:	4621      	mov	r1, r4
 80070fc:	f854 6b04 	ldr.w	r6, [r4], #4
 8007100:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8007104:	ea25 0506 	bic.w	r5, r5, r6
 8007108:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 800710c:	d106      	bne.n	800711c <strncpy+0x34>
 800710e:	3a04      	subs	r2, #4
 8007110:	2a03      	cmp	r2, #3
 8007112:	f843 6b04 	str.w	r6, [r3], #4
 8007116:	4621      	mov	r1, r4
 8007118:	d8ef      	bhi.n	80070fa <strncpy+0x12>
 800711a:	b19a      	cbz	r2, 8007144 <strncpy+0x5c>
 800711c:	780c      	ldrb	r4, [r1, #0]
 800711e:	701c      	strb	r4, [r3, #0]
 8007120:	3a01      	subs	r2, #1
 8007122:	3301      	adds	r3, #1
 8007124:	b13c      	cbz	r4, 8007136 <strncpy+0x4e>
 8007126:	b16a      	cbz	r2, 8007144 <strncpy+0x5c>
 8007128:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 800712c:	f803 4b01 	strb.w	r4, [r3], #1
 8007130:	3a01      	subs	r2, #1
 8007132:	2c00      	cmp	r4, #0
 8007134:	d1f7      	bne.n	8007126 <strncpy+0x3e>
 8007136:	b12a      	cbz	r2, 8007144 <strncpy+0x5c>
 8007138:	441a      	add	r2, r3
 800713a:	2100      	movs	r1, #0
 800713c:	f803 1b01 	strb.w	r1, [r3], #1
 8007140:	4293      	cmp	r3, r2
 8007142:	d1fb      	bne.n	800713c <strncpy+0x54>
 8007144:	bc70      	pop	{r4, r5, r6}
 8007146:	4770      	bx	lr
 8007148:	4603      	mov	r3, r0
 800714a:	e7e6      	b.n	800711a <strncpy+0x32>

0800714c <__sprint_r.part.0>:
 800714c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007150:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8007152:	049c      	lsls	r4, r3, #18
 8007154:	4692      	mov	sl, r2
 8007156:	d52d      	bpl.n	80071b4 <__sprint_r.part.0+0x68>
 8007158:	6893      	ldr	r3, [r2, #8]
 800715a:	6812      	ldr	r2, [r2, #0]
 800715c:	b343      	cbz	r3, 80071b0 <__sprint_r.part.0+0x64>
 800715e:	460e      	mov	r6, r1
 8007160:	4607      	mov	r7, r0
 8007162:	f102 0908 	add.w	r9, r2, #8
 8007166:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 800716a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 800716e:	d015      	beq.n	800719c <__sprint_r.part.0+0x50>
 8007170:	3d04      	subs	r5, #4
 8007172:	2400      	movs	r4, #0
 8007174:	e001      	b.n	800717a <__sprint_r.part.0+0x2e>
 8007176:	45a0      	cmp	r8, r4
 8007178:	d00e      	beq.n	8007198 <__sprint_r.part.0+0x4c>
 800717a:	4632      	mov	r2, r6
 800717c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8007180:	4638      	mov	r0, r7
 8007182:	f000 f99d 	bl	80074c0 <_fputwc_r>
 8007186:	1c43      	adds	r3, r0, #1
 8007188:	f104 0401 	add.w	r4, r4, #1
 800718c:	d1f3      	bne.n	8007176 <__sprint_r.part.0+0x2a>
 800718e:	2300      	movs	r3, #0
 8007190:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8007194:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007198:	f8da 3008 	ldr.w	r3, [sl, #8]
 800719c:	f02b 0b03 	bic.w	fp, fp, #3
 80071a0:	eba3 030b 	sub.w	r3, r3, fp
 80071a4:	f8ca 3008 	str.w	r3, [sl, #8]
 80071a8:	f109 0908 	add.w	r9, r9, #8
 80071ac:	2b00      	cmp	r3, #0
 80071ae:	d1da      	bne.n	8007166 <__sprint_r.part.0+0x1a>
 80071b0:	2000      	movs	r0, #0
 80071b2:	e7ec      	b.n	800718e <__sprint_r.part.0+0x42>
 80071b4:	f7fe fd0c 	bl	8005bd0 <__sfvwrite_r>
 80071b8:	2300      	movs	r3, #0
 80071ba:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80071be:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80071c2:	bf00      	nop

080071c4 <__sprint_r>:
 80071c4:	6893      	ldr	r3, [r2, #8]
 80071c6:	b10b      	cbz	r3, 80071cc <__sprint_r+0x8>
 80071c8:	f7ff bfc0 	b.w	800714c <__sprint_r.part.0>
 80071cc:	b410      	push	{r4}
 80071ce:	4618      	mov	r0, r3
 80071d0:	6053      	str	r3, [r2, #4]
 80071d2:	f85d 4b04 	ldr.w	r4, [sp], #4
 80071d6:	4770      	bx	lr

080071d8 <_write_r>:
 80071d8:	b570      	push	{r4, r5, r6, lr}
 80071da:	460d      	mov	r5, r1
 80071dc:	4c08      	ldr	r4, [pc, #32]	; (8007200 <_write_r+0x28>)
 80071de:	4611      	mov	r1, r2
 80071e0:	4606      	mov	r6, r0
 80071e2:	461a      	mov	r2, r3
 80071e4:	4628      	mov	r0, r5
 80071e6:	2300      	movs	r3, #0
 80071e8:	6023      	str	r3, [r4, #0]
 80071ea:	f7fb fb3c 	bl	8002866 <_write>
 80071ee:	1c43      	adds	r3, r0, #1
 80071f0:	d000      	beq.n	80071f4 <_write_r+0x1c>
 80071f2:	bd70      	pop	{r4, r5, r6, pc}
 80071f4:	6823      	ldr	r3, [r4, #0]
 80071f6:	2b00      	cmp	r3, #0
 80071f8:	d0fb      	beq.n	80071f2 <_write_r+0x1a>
 80071fa:	6033      	str	r3, [r6, #0]
 80071fc:	bd70      	pop	{r4, r5, r6, pc}
 80071fe:	bf00      	nop
 8007200:	20000b24 	.word	0x20000b24

08007204 <__register_exitproc>:
 8007204:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8007208:	4d2b      	ldr	r5, [pc, #172]	; (80072b8 <__register_exitproc+0xb4>)
 800720a:	4606      	mov	r6, r0
 800720c:	6828      	ldr	r0, [r5, #0]
 800720e:	4698      	mov	r8, r3
 8007210:	460f      	mov	r7, r1
 8007212:	4691      	mov	r9, r2
 8007214:	f7fe fe96 	bl	8005f44 <__retarget_lock_acquire_recursive>
 8007218:	4b28      	ldr	r3, [pc, #160]	; (80072bc <__register_exitproc+0xb8>)
 800721a:	681c      	ldr	r4, [r3, #0]
 800721c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8007220:	2b00      	cmp	r3, #0
 8007222:	d03d      	beq.n	80072a0 <__register_exitproc+0x9c>
 8007224:	685a      	ldr	r2, [r3, #4]
 8007226:	2a1f      	cmp	r2, #31
 8007228:	dc0d      	bgt.n	8007246 <__register_exitproc+0x42>
 800722a:	f102 0c01 	add.w	ip, r2, #1
 800722e:	bb16      	cbnz	r6, 8007276 <__register_exitproc+0x72>
 8007230:	3202      	adds	r2, #2
 8007232:	f8c3 c004 	str.w	ip, [r3, #4]
 8007236:	6828      	ldr	r0, [r5, #0]
 8007238:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 800723c:	f7fe fe84 	bl	8005f48 <__retarget_lock_release_recursive>
 8007240:	2000      	movs	r0, #0
 8007242:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8007246:	4b1e      	ldr	r3, [pc, #120]	; (80072c0 <__register_exitproc+0xbc>)
 8007248:	b37b      	cbz	r3, 80072aa <__register_exitproc+0xa6>
 800724a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 800724e:	f3af 8000 	nop.w
 8007252:	4603      	mov	r3, r0
 8007254:	b348      	cbz	r0, 80072aa <__register_exitproc+0xa6>
 8007256:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 800725a:	2100      	movs	r1, #0
 800725c:	e9c0 2100 	strd	r2, r1, [r0]
 8007260:	f04f 0c01 	mov.w	ip, #1
 8007264:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8007268:	460a      	mov	r2, r1
 800726a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 800726e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8007272:	2e00      	cmp	r6, #0
 8007274:	d0dc      	beq.n	8007230 <__register_exitproc+0x2c>
 8007276:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 800727a:	2401      	movs	r4, #1
 800727c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8007280:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8007284:	4094      	lsls	r4, r2
 8007286:	4320      	orrs	r0, r4
 8007288:	2e02      	cmp	r6, #2
 800728a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 800728e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8007292:	d1cd      	bne.n	8007230 <__register_exitproc+0x2c>
 8007294:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8007298:	430c      	orrs	r4, r1
 800729a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 800729e:	e7c7      	b.n	8007230 <__register_exitproc+0x2c>
 80072a0:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 80072a4:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 80072a8:	e7bc      	b.n	8007224 <__register_exitproc+0x20>
 80072aa:	6828      	ldr	r0, [r5, #0]
 80072ac:	f7fe fe4c 	bl	8005f48 <__retarget_lock_release_recursive>
 80072b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80072b4:	e7c5      	b.n	8007242 <__register_exitproc+0x3e>
 80072b6:	bf00      	nop
 80072b8:	20000448 	.word	0x20000448
 80072bc:	08007860 	.word	0x08007860
 80072c0:	00000000 	.word	0x00000000

080072c4 <_calloc_r>:
 80072c4:	b510      	push	{r4, lr}
 80072c6:	fb02 f101 	mul.w	r1, r2, r1
 80072ca:	f7fe feb7 	bl	800603c <_malloc_r>
 80072ce:	4604      	mov	r4, r0
 80072d0:	b1d8      	cbz	r0, 800730a <_calloc_r+0x46>
 80072d2:	f850 2c04 	ldr.w	r2, [r0, #-4]
 80072d6:	f022 0203 	bic.w	r2, r2, #3
 80072da:	3a04      	subs	r2, #4
 80072dc:	2a24      	cmp	r2, #36	; 0x24
 80072de:	d81d      	bhi.n	800731c <_calloc_r+0x58>
 80072e0:	2a13      	cmp	r2, #19
 80072e2:	d914      	bls.n	800730e <_calloc_r+0x4a>
 80072e4:	2300      	movs	r3, #0
 80072e6:	2a1b      	cmp	r2, #27
 80072e8:	e9c0 3300 	strd	r3, r3, [r0]
 80072ec:	d91b      	bls.n	8007326 <_calloc_r+0x62>
 80072ee:	2a24      	cmp	r2, #36	; 0x24
 80072f0:	e9c0 3302 	strd	r3, r3, [r0, #8]
 80072f4:	bf0a      	itet	eq
 80072f6:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 80072fa:	f100 0210 	addne.w	r2, r0, #16
 80072fe:	f100 0218 	addeq.w	r2, r0, #24
 8007302:	2300      	movs	r3, #0
 8007304:	e9c2 3300 	strd	r3, r3, [r2]
 8007308:	6093      	str	r3, [r2, #8]
 800730a:	4620      	mov	r0, r4
 800730c:	bd10      	pop	{r4, pc}
 800730e:	4602      	mov	r2, r0
 8007310:	2300      	movs	r3, #0
 8007312:	e9c2 3300 	strd	r3, r3, [r2]
 8007316:	6093      	str	r3, [r2, #8]
 8007318:	4620      	mov	r0, r4
 800731a:	bd10      	pop	{r4, pc}
 800731c:	2100      	movs	r1, #0
 800731e:	f7fb fb6d 	bl	80029fc <memset>
 8007322:	4620      	mov	r0, r4
 8007324:	bd10      	pop	{r4, pc}
 8007326:	f100 0208 	add.w	r2, r0, #8
 800732a:	e7f1      	b.n	8007310 <_calloc_r+0x4c>

0800732c <_close_r>:
 800732c:	b538      	push	{r3, r4, r5, lr}
 800732e:	4c07      	ldr	r4, [pc, #28]	; (800734c <_close_r+0x20>)
 8007330:	2300      	movs	r3, #0
 8007332:	4605      	mov	r5, r0
 8007334:	4608      	mov	r0, r1
 8007336:	6023      	str	r3, [r4, #0]
 8007338:	f7fb fad6 	bl	80028e8 <_close>
 800733c:	1c43      	adds	r3, r0, #1
 800733e:	d000      	beq.n	8007342 <_close_r+0x16>
 8007340:	bd38      	pop	{r3, r4, r5, pc}
 8007342:	6823      	ldr	r3, [r4, #0]
 8007344:	2b00      	cmp	r3, #0
 8007346:	d0fb      	beq.n	8007340 <_close_r+0x14>
 8007348:	602b      	str	r3, [r5, #0]
 800734a:	bd38      	pop	{r3, r4, r5, pc}
 800734c:	20000b24 	.word	0x20000b24

08007350 <_fclose_r>:
 8007350:	b570      	push	{r4, r5, r6, lr}
 8007352:	2900      	cmp	r1, #0
 8007354:	d048      	beq.n	80073e8 <_fclose_r+0x98>
 8007356:	4605      	mov	r5, r0
 8007358:	460c      	mov	r4, r1
 800735a:	b110      	cbz	r0, 8007362 <_fclose_r+0x12>
 800735c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800735e:	2b00      	cmp	r3, #0
 8007360:	d048      	beq.n	80073f4 <_fclose_r+0xa4>
 8007362:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007364:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007368:	07d0      	lsls	r0, r2, #31
 800736a:	d440      	bmi.n	80073ee <_fclose_r+0x9e>
 800736c:	0599      	lsls	r1, r3, #22
 800736e:	d530      	bpl.n	80073d2 <_fclose_r+0x82>
 8007370:	4621      	mov	r1, r4
 8007372:	4628      	mov	r0, r5
 8007374:	f7fe f990 	bl	8005698 <__sflush_r>
 8007378:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800737a:	4606      	mov	r6, r0
 800737c:	b133      	cbz	r3, 800738c <_fclose_r+0x3c>
 800737e:	69e1      	ldr	r1, [r4, #28]
 8007380:	4628      	mov	r0, r5
 8007382:	4798      	blx	r3
 8007384:	2800      	cmp	r0, #0
 8007386:	bfb8      	it	lt
 8007388:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 800738c:	89a3      	ldrh	r3, [r4, #12]
 800738e:	061a      	lsls	r2, r3, #24
 8007390:	d43c      	bmi.n	800740c <_fclose_r+0xbc>
 8007392:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007394:	b141      	cbz	r1, 80073a8 <_fclose_r+0x58>
 8007396:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800739a:	4299      	cmp	r1, r3
 800739c:	d002      	beq.n	80073a4 <_fclose_r+0x54>
 800739e:	4628      	mov	r0, r5
 80073a0:	f7fe fb22 	bl	80059e8 <_free_r>
 80073a4:	2300      	movs	r3, #0
 80073a6:	6323      	str	r3, [r4, #48]	; 0x30
 80073a8:	6c61      	ldr	r1, [r4, #68]	; 0x44
 80073aa:	b121      	cbz	r1, 80073b6 <_fclose_r+0x66>
 80073ac:	4628      	mov	r0, r5
 80073ae:	f7fe fb1b 	bl	80059e8 <_free_r>
 80073b2:	2300      	movs	r3, #0
 80073b4:	6463      	str	r3, [r4, #68]	; 0x44
 80073b6:	f7fe faa1 	bl	80058fc <__sfp_lock_acquire>
 80073ba:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80073bc:	2200      	movs	r2, #0
 80073be:	07db      	lsls	r3, r3, #31
 80073c0:	81a2      	strh	r2, [r4, #12]
 80073c2:	d51f      	bpl.n	8007404 <_fclose_r+0xb4>
 80073c4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80073c6:	f7fe fdbb 	bl	8005f40 <__retarget_lock_close_recursive>
 80073ca:	f7fe fa9d 	bl	8005908 <__sfp_lock_release>
 80073ce:	4630      	mov	r0, r6
 80073d0:	bd70      	pop	{r4, r5, r6, pc}
 80073d2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80073d4:	f7fe fdb6 	bl	8005f44 <__retarget_lock_acquire_recursive>
 80073d8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80073dc:	2b00      	cmp	r3, #0
 80073de:	d1c7      	bne.n	8007370 <_fclose_r+0x20>
 80073e0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80073e2:	f016 0601 	ands.w	r6, r6, #1
 80073e6:	d016      	beq.n	8007416 <_fclose_r+0xc6>
 80073e8:	2600      	movs	r6, #0
 80073ea:	4630      	mov	r0, r6
 80073ec:	bd70      	pop	{r4, r5, r6, pc}
 80073ee:	2b00      	cmp	r3, #0
 80073f0:	d0fa      	beq.n	80073e8 <_fclose_r+0x98>
 80073f2:	e7bd      	b.n	8007370 <_fclose_r+0x20>
 80073f4:	f7fe fa56 	bl	80058a4 <__sinit>
 80073f8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80073fa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80073fe:	07d0      	lsls	r0, r2, #31
 8007400:	d4f5      	bmi.n	80073ee <_fclose_r+0x9e>
 8007402:	e7b3      	b.n	800736c <_fclose_r+0x1c>
 8007404:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007406:	f7fe fd9f 	bl	8005f48 <__retarget_lock_release_recursive>
 800740a:	e7db      	b.n	80073c4 <_fclose_r+0x74>
 800740c:	6921      	ldr	r1, [r4, #16]
 800740e:	4628      	mov	r0, r5
 8007410:	f7fe faea 	bl	80059e8 <_free_r>
 8007414:	e7bd      	b.n	8007392 <_fclose_r+0x42>
 8007416:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007418:	f7fe fd96 	bl	8005f48 <__retarget_lock_release_recursive>
 800741c:	4630      	mov	r0, r6
 800741e:	bd70      	pop	{r4, r5, r6, pc}

08007420 <__fputwc>:
 8007420:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007424:	b082      	sub	sp, #8
 8007426:	4681      	mov	r9, r0
 8007428:	4688      	mov	r8, r1
 800742a:	4614      	mov	r4, r2
 800742c:	f000 f8a0 	bl	8007570 <__locale_mb_cur_max>
 8007430:	2801      	cmp	r0, #1
 8007432:	d103      	bne.n	800743c <__fputwc+0x1c>
 8007434:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007438:	2bfe      	cmp	r3, #254	; 0xfe
 800743a:	d933      	bls.n	80074a4 <__fputwc+0x84>
 800743c:	4642      	mov	r2, r8
 800743e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8007442:	a901      	add	r1, sp, #4
 8007444:	4648      	mov	r0, r9
 8007446:	f000 f93b 	bl	80076c0 <_wcrtomb_r>
 800744a:	1c42      	adds	r2, r0, #1
 800744c:	4606      	mov	r6, r0
 800744e:	d02f      	beq.n	80074b0 <__fputwc+0x90>
 8007450:	b320      	cbz	r0, 800749c <__fputwc+0x7c>
 8007452:	f89d c004 	ldrb.w	ip, [sp, #4]
 8007456:	2500      	movs	r5, #0
 8007458:	f10d 0a04 	add.w	sl, sp, #4
 800745c:	e009      	b.n	8007472 <__fputwc+0x52>
 800745e:	6823      	ldr	r3, [r4, #0]
 8007460:	1c5a      	adds	r2, r3, #1
 8007462:	6022      	str	r2, [r4, #0]
 8007464:	f883 c000 	strb.w	ip, [r3]
 8007468:	3501      	adds	r5, #1
 800746a:	42b5      	cmp	r5, r6
 800746c:	d216      	bcs.n	800749c <__fputwc+0x7c>
 800746e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8007472:	68a3      	ldr	r3, [r4, #8]
 8007474:	3b01      	subs	r3, #1
 8007476:	2b00      	cmp	r3, #0
 8007478:	60a3      	str	r3, [r4, #8]
 800747a:	daf0      	bge.n	800745e <__fputwc+0x3e>
 800747c:	69a7      	ldr	r7, [r4, #24]
 800747e:	42bb      	cmp	r3, r7
 8007480:	4661      	mov	r1, ip
 8007482:	4622      	mov	r2, r4
 8007484:	4648      	mov	r0, r9
 8007486:	db02      	blt.n	800748e <__fputwc+0x6e>
 8007488:	f1bc 0f0a 	cmp.w	ip, #10
 800748c:	d1e7      	bne.n	800745e <__fputwc+0x3e>
 800748e:	f000 f8bf 	bl	8007610 <__swbuf_r>
 8007492:	1c43      	adds	r3, r0, #1
 8007494:	d1e8      	bne.n	8007468 <__fputwc+0x48>
 8007496:	b002      	add	sp, #8
 8007498:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800749c:	4640      	mov	r0, r8
 800749e:	b002      	add	sp, #8
 80074a0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80074a4:	fa5f fc88 	uxtb.w	ip, r8
 80074a8:	4606      	mov	r6, r0
 80074aa:	f88d c004 	strb.w	ip, [sp, #4]
 80074ae:	e7d2      	b.n	8007456 <__fputwc+0x36>
 80074b0:	89a3      	ldrh	r3, [r4, #12]
 80074b2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80074b6:	81a3      	strh	r3, [r4, #12]
 80074b8:	b002      	add	sp, #8
 80074ba:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80074be:	bf00      	nop

080074c0 <_fputwc_r>:
 80074c0:	b530      	push	{r4, r5, lr}
 80074c2:	4605      	mov	r5, r0
 80074c4:	6e50      	ldr	r0, [r2, #100]	; 0x64
 80074c6:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 80074ca:	07c0      	lsls	r0, r0, #31
 80074cc:	4614      	mov	r4, r2
 80074ce:	b083      	sub	sp, #12
 80074d0:	b29a      	uxth	r2, r3
 80074d2:	d401      	bmi.n	80074d8 <_fputwc_r+0x18>
 80074d4:	0590      	lsls	r0, r2, #22
 80074d6:	d51c      	bpl.n	8007512 <_fputwc_r+0x52>
 80074d8:	0490      	lsls	r0, r2, #18
 80074da:	d406      	bmi.n	80074ea <_fputwc_r+0x2a>
 80074dc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80074de:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80074e2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80074e6:	81a3      	strh	r3, [r4, #12]
 80074e8:	6662      	str	r2, [r4, #100]	; 0x64
 80074ea:	4628      	mov	r0, r5
 80074ec:	4622      	mov	r2, r4
 80074ee:	f7ff ff97 	bl	8007420 <__fputwc>
 80074f2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80074f4:	07da      	lsls	r2, r3, #31
 80074f6:	4605      	mov	r5, r0
 80074f8:	d402      	bmi.n	8007500 <_fputwc_r+0x40>
 80074fa:	89a3      	ldrh	r3, [r4, #12]
 80074fc:	059b      	lsls	r3, r3, #22
 80074fe:	d502      	bpl.n	8007506 <_fputwc_r+0x46>
 8007500:	4628      	mov	r0, r5
 8007502:	b003      	add	sp, #12
 8007504:	bd30      	pop	{r4, r5, pc}
 8007506:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007508:	f7fe fd1e 	bl	8005f48 <__retarget_lock_release_recursive>
 800750c:	4628      	mov	r0, r5
 800750e:	b003      	add	sp, #12
 8007510:	bd30      	pop	{r4, r5, pc}
 8007512:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007514:	9101      	str	r1, [sp, #4]
 8007516:	f7fe fd15 	bl	8005f44 <__retarget_lock_acquire_recursive>
 800751a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800751e:	9901      	ldr	r1, [sp, #4]
 8007520:	b29a      	uxth	r2, r3
 8007522:	e7d9      	b.n	80074d8 <_fputwc_r+0x18>

08007524 <_fstat_r>:
 8007524:	b538      	push	{r3, r4, r5, lr}
 8007526:	460b      	mov	r3, r1
 8007528:	4c07      	ldr	r4, [pc, #28]	; (8007548 <_fstat_r+0x24>)
 800752a:	4605      	mov	r5, r0
 800752c:	4611      	mov	r1, r2
 800752e:	4618      	mov	r0, r3
 8007530:	2300      	movs	r3, #0
 8007532:	6023      	str	r3, [r4, #0]
 8007534:	f7fb f9db 	bl	80028ee <_fstat>
 8007538:	1c43      	adds	r3, r0, #1
 800753a:	d000      	beq.n	800753e <_fstat_r+0x1a>
 800753c:	bd38      	pop	{r3, r4, r5, pc}
 800753e:	6823      	ldr	r3, [r4, #0]
 8007540:	2b00      	cmp	r3, #0
 8007542:	d0fb      	beq.n	800753c <_fstat_r+0x18>
 8007544:	602b      	str	r3, [r5, #0]
 8007546:	bd38      	pop	{r3, r4, r5, pc}
 8007548:	20000b24 	.word	0x20000b24

0800754c <_isatty_r>:
 800754c:	b538      	push	{r3, r4, r5, lr}
 800754e:	4c07      	ldr	r4, [pc, #28]	; (800756c <_isatty_r+0x20>)
 8007550:	2300      	movs	r3, #0
 8007552:	4605      	mov	r5, r0
 8007554:	4608      	mov	r0, r1
 8007556:	6023      	str	r3, [r4, #0]
 8007558:	f7fb f9cf 	bl	80028fa <_isatty>
 800755c:	1c43      	adds	r3, r0, #1
 800755e:	d000      	beq.n	8007562 <_isatty_r+0x16>
 8007560:	bd38      	pop	{r3, r4, r5, pc}
 8007562:	6823      	ldr	r3, [r4, #0]
 8007564:	2b00      	cmp	r3, #0
 8007566:	d0fb      	beq.n	8007560 <_isatty_r+0x14>
 8007568:	602b      	str	r3, [r5, #0]
 800756a:	bd38      	pop	{r3, r4, r5, pc}
 800756c:	20000b24 	.word	0x20000b24

08007570 <__locale_mb_cur_max>:
 8007570:	4b04      	ldr	r3, [pc, #16]	; (8007584 <__locale_mb_cur_max+0x14>)
 8007572:	4a05      	ldr	r2, [pc, #20]	; (8007588 <__locale_mb_cur_max+0x18>)
 8007574:	681b      	ldr	r3, [r3, #0]
 8007576:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8007578:	2b00      	cmp	r3, #0
 800757a:	bf08      	it	eq
 800757c:	4613      	moveq	r3, r2
 800757e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8007582:	4770      	bx	lr
 8007584:	20000018 	.word	0x20000018
 8007588:	2000085c 	.word	0x2000085c

0800758c <_lseek_r>:
 800758c:	b570      	push	{r4, r5, r6, lr}
 800758e:	460d      	mov	r5, r1
 8007590:	4c08      	ldr	r4, [pc, #32]	; (80075b4 <_lseek_r+0x28>)
 8007592:	4611      	mov	r1, r2
 8007594:	4606      	mov	r6, r0
 8007596:	461a      	mov	r2, r3
 8007598:	4628      	mov	r0, r5
 800759a:	2300      	movs	r3, #0
 800759c:	6023      	str	r3, [r4, #0]
 800759e:	f7fb f9ae 	bl	80028fe <_lseek>
 80075a2:	1c43      	adds	r3, r0, #1
 80075a4:	d000      	beq.n	80075a8 <_lseek_r+0x1c>
 80075a6:	bd70      	pop	{r4, r5, r6, pc}
 80075a8:	6823      	ldr	r3, [r4, #0]
 80075aa:	2b00      	cmp	r3, #0
 80075ac:	d0fb      	beq.n	80075a6 <_lseek_r+0x1a>
 80075ae:	6033      	str	r3, [r6, #0]
 80075b0:	bd70      	pop	{r4, r5, r6, pc}
 80075b2:	bf00      	nop
 80075b4:	20000b24 	.word	0x20000b24

080075b8 <__ascii_mbtowc>:
 80075b8:	b082      	sub	sp, #8
 80075ba:	b149      	cbz	r1, 80075d0 <__ascii_mbtowc+0x18>
 80075bc:	b15a      	cbz	r2, 80075d6 <__ascii_mbtowc+0x1e>
 80075be:	b16b      	cbz	r3, 80075dc <__ascii_mbtowc+0x24>
 80075c0:	7813      	ldrb	r3, [r2, #0]
 80075c2:	600b      	str	r3, [r1, #0]
 80075c4:	7812      	ldrb	r2, [r2, #0]
 80075c6:	1c10      	adds	r0, r2, #0
 80075c8:	bf18      	it	ne
 80075ca:	2001      	movne	r0, #1
 80075cc:	b002      	add	sp, #8
 80075ce:	4770      	bx	lr
 80075d0:	a901      	add	r1, sp, #4
 80075d2:	2a00      	cmp	r2, #0
 80075d4:	d1f3      	bne.n	80075be <__ascii_mbtowc+0x6>
 80075d6:	4610      	mov	r0, r2
 80075d8:	b002      	add	sp, #8
 80075da:	4770      	bx	lr
 80075dc:	f06f 0001 	mvn.w	r0, #1
 80075e0:	e7f4      	b.n	80075cc <__ascii_mbtowc+0x14>
 80075e2:	bf00      	nop

080075e4 <_read_r>:
 80075e4:	b570      	push	{r4, r5, r6, lr}
 80075e6:	460d      	mov	r5, r1
 80075e8:	4c08      	ldr	r4, [pc, #32]	; (800760c <_read_r+0x28>)
 80075ea:	4611      	mov	r1, r2
 80075ec:	4606      	mov	r6, r0
 80075ee:	461a      	mov	r2, r3
 80075f0:	4628      	mov	r0, r5
 80075f2:	2300      	movs	r3, #0
 80075f4:	6023      	str	r3, [r4, #0]
 80075f6:	f7fb f916 	bl	8002826 <_read>
 80075fa:	1c43      	adds	r3, r0, #1
 80075fc:	d000      	beq.n	8007600 <_read_r+0x1c>
 80075fe:	bd70      	pop	{r4, r5, r6, pc}
 8007600:	6823      	ldr	r3, [r4, #0]
 8007602:	2b00      	cmp	r3, #0
 8007604:	d0fb      	beq.n	80075fe <_read_r+0x1a>
 8007606:	6033      	str	r3, [r6, #0]
 8007608:	bd70      	pop	{r4, r5, r6, pc}
 800760a:	bf00      	nop
 800760c:	20000b24 	.word	0x20000b24

08007610 <__swbuf_r>:
 8007610:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007612:	460d      	mov	r5, r1
 8007614:	4614      	mov	r4, r2
 8007616:	4606      	mov	r6, r0
 8007618:	b110      	cbz	r0, 8007620 <__swbuf_r+0x10>
 800761a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800761c:	2b00      	cmp	r3, #0
 800761e:	d043      	beq.n	80076a8 <__swbuf_r+0x98>
 8007620:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007624:	69a3      	ldr	r3, [r4, #24]
 8007626:	60a3      	str	r3, [r4, #8]
 8007628:	b291      	uxth	r1, r2
 800762a:	0708      	lsls	r0, r1, #28
 800762c:	d51b      	bpl.n	8007666 <__swbuf_r+0x56>
 800762e:	6923      	ldr	r3, [r4, #16]
 8007630:	b1cb      	cbz	r3, 8007666 <__swbuf_r+0x56>
 8007632:	b2ed      	uxtb	r5, r5
 8007634:	0489      	lsls	r1, r1, #18
 8007636:	462f      	mov	r7, r5
 8007638:	d522      	bpl.n	8007680 <__swbuf_r+0x70>
 800763a:	6822      	ldr	r2, [r4, #0]
 800763c:	6961      	ldr	r1, [r4, #20]
 800763e:	1ad3      	subs	r3, r2, r3
 8007640:	4299      	cmp	r1, r3
 8007642:	dd29      	ble.n	8007698 <__swbuf_r+0x88>
 8007644:	3301      	adds	r3, #1
 8007646:	68a1      	ldr	r1, [r4, #8]
 8007648:	1c50      	adds	r0, r2, #1
 800764a:	3901      	subs	r1, #1
 800764c:	60a1      	str	r1, [r4, #8]
 800764e:	6020      	str	r0, [r4, #0]
 8007650:	7015      	strb	r5, [r2, #0]
 8007652:	6962      	ldr	r2, [r4, #20]
 8007654:	429a      	cmp	r2, r3
 8007656:	d02a      	beq.n	80076ae <__swbuf_r+0x9e>
 8007658:	89a3      	ldrh	r3, [r4, #12]
 800765a:	07db      	lsls	r3, r3, #31
 800765c:	d501      	bpl.n	8007662 <__swbuf_r+0x52>
 800765e:	2d0a      	cmp	r5, #10
 8007660:	d025      	beq.n	80076ae <__swbuf_r+0x9e>
 8007662:	4638      	mov	r0, r7
 8007664:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007666:	4621      	mov	r1, r4
 8007668:	4630      	mov	r0, r6
 800766a:	f7fc fffd 	bl	8004668 <__swsetup_r>
 800766e:	bb20      	cbnz	r0, 80076ba <__swbuf_r+0xaa>
 8007670:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007674:	6923      	ldr	r3, [r4, #16]
 8007676:	b291      	uxth	r1, r2
 8007678:	b2ed      	uxtb	r5, r5
 800767a:	0489      	lsls	r1, r1, #18
 800767c:	462f      	mov	r7, r5
 800767e:	d4dc      	bmi.n	800763a <__swbuf_r+0x2a>
 8007680:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007682:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007686:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800768a:	81a2      	strh	r2, [r4, #12]
 800768c:	6822      	ldr	r2, [r4, #0]
 800768e:	6661      	str	r1, [r4, #100]	; 0x64
 8007690:	6961      	ldr	r1, [r4, #20]
 8007692:	1ad3      	subs	r3, r2, r3
 8007694:	4299      	cmp	r1, r3
 8007696:	dcd5      	bgt.n	8007644 <__swbuf_r+0x34>
 8007698:	4621      	mov	r1, r4
 800769a:	4630      	mov	r0, r6
 800769c:	f7fe f8a6 	bl	80057ec <_fflush_r>
 80076a0:	b958      	cbnz	r0, 80076ba <__swbuf_r+0xaa>
 80076a2:	6822      	ldr	r2, [r4, #0]
 80076a4:	2301      	movs	r3, #1
 80076a6:	e7ce      	b.n	8007646 <__swbuf_r+0x36>
 80076a8:	f7fe f8fc 	bl	80058a4 <__sinit>
 80076ac:	e7b8      	b.n	8007620 <__swbuf_r+0x10>
 80076ae:	4621      	mov	r1, r4
 80076b0:	4630      	mov	r0, r6
 80076b2:	f7fe f89b 	bl	80057ec <_fflush_r>
 80076b6:	2800      	cmp	r0, #0
 80076b8:	d0d3      	beq.n	8007662 <__swbuf_r+0x52>
 80076ba:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80076be:	e7d0      	b.n	8007662 <__swbuf_r+0x52>

080076c0 <_wcrtomb_r>:
 80076c0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80076c2:	4c11      	ldr	r4, [pc, #68]	; (8007708 <_wcrtomb_r+0x48>)
 80076c4:	6824      	ldr	r4, [r4, #0]
 80076c6:	b085      	sub	sp, #20
 80076c8:	4606      	mov	r6, r0
 80076ca:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80076cc:	461f      	mov	r7, r3
 80076ce:	b151      	cbz	r1, 80076e6 <_wcrtomb_r+0x26>
 80076d0:	4d0e      	ldr	r5, [pc, #56]	; (800770c <_wcrtomb_r+0x4c>)
 80076d2:	2c00      	cmp	r4, #0
 80076d4:	bf08      	it	eq
 80076d6:	462c      	moveq	r4, r5
 80076d8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80076dc:	47a0      	blx	r4
 80076de:	1c43      	adds	r3, r0, #1
 80076e0:	d00c      	beq.n	80076fc <_wcrtomb_r+0x3c>
 80076e2:	b005      	add	sp, #20
 80076e4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80076e6:	4a09      	ldr	r2, [pc, #36]	; (800770c <_wcrtomb_r+0x4c>)
 80076e8:	2c00      	cmp	r4, #0
 80076ea:	bf08      	it	eq
 80076ec:	4614      	moveq	r4, r2
 80076ee:	460a      	mov	r2, r1
 80076f0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80076f4:	a901      	add	r1, sp, #4
 80076f6:	47a0      	blx	r4
 80076f8:	1c43      	adds	r3, r0, #1
 80076fa:	d1f2      	bne.n	80076e2 <_wcrtomb_r+0x22>
 80076fc:	2200      	movs	r2, #0
 80076fe:	238a      	movs	r3, #138	; 0x8a
 8007700:	603a      	str	r2, [r7, #0]
 8007702:	6033      	str	r3, [r6, #0]
 8007704:	b005      	add	sp, #20
 8007706:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007708:	20000018 	.word	0x20000018
 800770c:	2000085c 	.word	0x2000085c

08007710 <__ascii_wctomb>:
 8007710:	b121      	cbz	r1, 800771c <__ascii_wctomb+0xc>
 8007712:	2aff      	cmp	r2, #255	; 0xff
 8007714:	d804      	bhi.n	8007720 <__ascii_wctomb+0x10>
 8007716:	700a      	strb	r2, [r1, #0]
 8007718:	2001      	movs	r0, #1
 800771a:	4770      	bx	lr
 800771c:	4608      	mov	r0, r1
 800771e:	4770      	bx	lr
 8007720:	238a      	movs	r3, #138	; 0x8a
 8007722:	6003      	str	r3, [r0, #0]
 8007724:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007728:	4770      	bx	lr
 800772a:	bf00      	nop

0800772c <_init>:
 800772c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800772e:	bf00      	nop
 8007730:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007732:	bc08      	pop	{r3}
 8007734:	469e      	mov	lr, r3
 8007736:	4770      	bx	lr

08007738 <_fini>:
 8007738:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800773a:	bf00      	nop
 800773c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800773e:	bc08      	pop	{r3}
 8007740:	469e      	mov	lr, r3
 8007742:	4770      	bx	lr
 8007744:	0000      	movs	r0, r0
	...
